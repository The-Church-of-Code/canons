#!/usr/bin/env bash
# Verification checks from BUILD.md. Run locally or from CI.
# Exits non-zero on the first failure. Prints a summary at the end.

set -u

FULL="CHURCH-OF-CODE.md"
MEDIUM="CHURCH-OF-CODE-medium-context.md"
SMALL="CHURCH-OF-CODE-small-context.md"
README="README.md"

# Target byte counts and tolerance. BUILD.md cites ±5% on each variant;
# we use ±10% in CI to absorb normal editorial drift between releases while
# still catching a variant that has grown or shrunk off-spec.
FULL_TARGET=40763
MEDIUM_TARGET=27175   # ~1/3 reduction from full
SMALL_TARGET=13588    # ~2/3 reduction from full
TOLERANCE=10          # percent

SINS=(
  "Premature Optimization"
  "Shared Mutable State"
  "Global State"
  "Null"
  "Default Values"
  "Internal Defense"
  "Entangled Nouns"
  "Inheritance"
  "Coupling"
  "Swallowed Failures"
  "Asking, Not Telling"
  "Polling"
  "Scattered Context"
  "Noun-First Thinking"
  "Obscurity"
  "Cleverness"
  "Magical Values"
  "Deep Nesting"
)

TONAL_ANCHORS=(
  "scripture"
  "they are sins"
  "faithful"
  "own denomination"
  "So let it"
)

fail=0
pass=0

pass() { echo "  ok   $1"; pass=$((pass + 1)); }
fail() { echo "  FAIL $1"; fail=$((fail + 1)); }

require_file() {
  if [[ ! -f "$1" ]]; then
    echo "missing file: $1" >&2
    exit 2
  fi
}

require_file "$FULL"
require_file "$MEDIUM"
require_file "$SMALL"
require_file "$README"

check_count() {
  local file=$1 pattern=$2 expected=$3 label=$4
  local got
  got=$(grep -c -E "$pattern" "$file" || true)
  if [[ "$got" == "$expected" ]]; then
    pass "$file: $label ($got)"
  else
    fail "$file: $label — expected $expected, got $got"
  fi
}

check_present() {
  local file=$1 pattern=$2 label=$3
  if grep -q -F -- "$pattern" "$file"; then
    pass "$file: $label"
  else
    fail "$file: $label — missing \"$pattern\""
  fi
}

check_byte_count() {
  local file=$1 target=$2
  local size
  size=$(wc -c <"$file" | tr -d ' ')
  local min=$((target * (100 - TOLERANCE) / 100))
  local max=$((target * (100 + TOLERANCE) / 100))
  if (( size >= min && size <= max )); then
    pass "$file: byte count $size within ±${TOLERANCE}% of $target"
  else
    fail "$file: byte count $size outside ±${TOLERANCE}% of $target (allowed $min..$max)"
  fi
}

verify_variant() {
  local file=$1 target=$2 sin_grep_flags=$3

  echo ""
  echo "=== $file ==="

  check_byte_count "$file" "$target"
  check_count "$file" '^### [IVX]+\.' 12 "commandments"
  check_count "$file" '^\*\*We ' 16 "articles"
  check_count "$file" '^### The Office' 6 "daily offices"
  check_count "$file" '"But ' 18 "italic objections"

  for sin in "${SINS[@]}"; do
    if grep -q $sin_grep_flags -- "$sin" "$file"; then
      pass "$file: sin \"$sin\""
    else
      fail "$file: sin \"$sin\" missing"
    fi
  done

  for anchor in "${TONAL_ANCHORS[@]}"; do
    check_present "$file" "$anchor" "tonal anchor \"$anchor\""
  done
}

verify_variant "$FULL"   "$FULL_TARGET"   "-F"
verify_variant "$MEDIUM" "$MEDIUM_TARGET" "-F"
verify_variant "$SMALL"  "$SMALL_TARGET"  "-F"

echo ""
echo "=== version-line sync ==="

extract_version() {
  grep -m1 -E '^\*v[0-9]+(\.[0-9]+)? — (full|medium|small)\*$' "$1" | sed -E 's/^\*v([0-9]+(\.[0-9]+)?) — (full|medium|small)\*$/\1:\3/'
}

fv=$(extract_version "$FULL")
mv=$(extract_version "$MEDIUM")
sv=$(extract_version "$SMALL")

full_v=${fv%%:*};   full_size=${fv##*:}
medium_v=${mv%%:*}; medium_size=${mv##*:}
small_v=${sv%%:*};  small_size=${sv##*:}

if [[ "$full_size" == "full" ]]; then pass "$FULL marks size 'full'"; else fail "$FULL size label wrong: $full_size"; fi
if [[ "$medium_size" == "medium" ]]; then pass "$MEDIUM marks size 'medium'"; else fail "$MEDIUM size label wrong: $medium_size"; fi
if [[ "$small_size" == "small" ]]; then pass "$SMALL marks size 'small'"; else fail "$SMALL size label wrong: $small_size"; fi

if [[ -n "$full_v" && "$full_v" == "$medium_v" && "$medium_v" == "$small_v" ]]; then
  pass "version numbers match across variants (v$full_v)"
else
  fail "version numbers disagree: full=v$full_v medium=v$medium_v small=v$small_v"
fi

# When running from a git checkout with tags, require the latest tag match.
if command -v git >/dev/null 2>&1 && git -C . rev-parse --is-inside-work-tree >/dev/null 2>&1; then
  latest_tag=$(git tag --list 'v*' --sort=-v:refname | head -n1)
  if [[ -n "$latest_tag" ]]; then
    tag_v=${latest_tag#v}
    if [[ "$tag_v" == "$full_v" ]]; then
      pass "git tag $latest_tag matches scripture version"
    else
      fail "git tag $latest_tag disagrees with scripture version v$full_v"
    fi
  fi
fi

echo ""
echo "=== README commandment drift ==="

# Extract commandment names from the scripture in ranked order.
mapfile -t scripture_commandments < <(grep -E '^### [IVX]+\. ' "$FULL" | sed -E 's/^### [IVX]+\. //')

missing=0
for c in "${scripture_commandments[@]}"; do
  if grep -q -F -- "**$c**" "$README"; then
    pass "README cites commandment \"$c\""
  else
    fail "README missing commandment \"$c\""
    missing=$((missing + 1))
  fi
done

echo ""
if (( fail == 0 )); then
  echo "PASS — $pass checks"
  exit 0
else
  echo "FAIL — $fail failures, $pass passes"
  exit 1
fi
