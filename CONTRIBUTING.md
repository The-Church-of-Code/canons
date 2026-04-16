# Contributing to the Church of Code

Amendments to scripture are proposed through GitHub pull
requests. This document is a short pointer; the load-bearing
specifications live in [BUILD.md](BUILD.md) and
[CLAUDE.md](CLAUDE.md).

## Amendment Process

1. **Edit the full scripture first.** All changes start in
   [CHURCH-OF-CODE.md](CHURCH-OF-CODE.md). Never edit the
   medium or small variant directly.
2. **Rebuild both variants** per [BUILD.md](BUILD.md).
   Order matters: medium from full, then small from medium.
3. **Update the version line** `*v{N} — {size}*` in all
   three files to the next version.
4. **Run the verification script** — `bash scripts/verify.sh`
   — and confirm it prints `PASS`.
5. **Commit all three scripture files together** so the
   variants remain in sync at every commit.
6. **Open a PR** against `master`. CI will re-run the
   verification checks.

## What CI Checks

The [`verify`](.github/workflows/verify.yml) workflow runs
[`scripts/verify.sh`](scripts/verify.sh) on every PR. It
enforces:

- Byte counts within ±10% of the target for each variant
- Exactly 12 commandments, 16 articles, 6 daily offices,
  18 italic objections, and all 18 named sins in each file
- Tonal anchors preserved (scripture, they are sins,
  faithful, own denomination, So let it)
- Version lines agree across the three variants
- The latest `v*` git tag matches the scripture version
- README names every commandment in the scripture

If CI fails, read the log — each failure names the file
and the missing element.

## Release Process

After a PR is merged to `master`:

1. `git tag v{N}` on the merge commit
2. `git push --tags`

The tag marks the commit where all three files are in
sync at version N.

## Scope of Amendments

Reductions trim elaboration; they never remove topics.
Every commandment, article, sin, and office must remain
present in all three variants. Structural invariants
(ordering of the Twelve Commandments, creedal openings
for Articles, italic objections for Abominations) are
not negotiable within a single amendment — propose such
changes deliberately and in isolation.
