# Building the Church of Code Scripture Variants

This document describes how to rebuild the medium and small
context summaries from the full CHURCH-OF-CODE.md.

When the full scripture changes, both summaries must be
regenerated following this process.

---

## Build Principle

**Each rebuild is from scratch.** The medium and small variants
are not edited incrementally from their previous versions — they
are derived freshly from the current canonical source
(`CHURCH-OF-CODE.md`) every time the full changes.

Using a previous variant (e.g., the v1.N-1 medium) as a
compression template risks carrying stale trim decisions
forward. A cut that was right for v1.N-1 may be wrong for v1.N
if the full document has changed around it. Every rebuild
starts from the current full, applies the Medium Context
Strategy below to produce the new medium, then applies the
Small Context Strategy to the new medium to produce the new
small.

The prior variants exist only as git history — they are
reference points for byte-count targets and tonal consistency,
never as templates for the next rebuild.

---

## The Three Files

| File | Size Variant | Target |
|------|-------------|--------|
| CHURCH-OF-CODE.md | full | Canonical source |
| CHURCH-OF-CODE-medium-context.md | medium | 1/3 byte reduction |
| CHURCH-OF-CODE-small-context.md | small | 2/3 byte reduction |

All three carry an internal identification line immediately
below the `# The Church of Code` title and above the epigraph:

```
*v{version} — {size}*
```

Where `{size}` is one of: `full`, `medium`, `small`.
These lines must stay in sync across all three files.

Both summaries must represent the **complete breadth** of beliefs
and practices. Every doctrine, commandment, article, sin, and
office must be present. Reductions come from trimming elaboration,
never from removing topics.

---

## The Key Structural Insight

The document follows a **positive-negative-practical** pattern:

1. **Commandments** declare ranked virtues
2. **Articles of Faith** state operational beliefs (21 in v1.16)
3. **Book of Abominations** diagnoses most as sins (25 in v1.16)
4. **Daily Offices** operationalize the beliefs (8 in v1.16)

The Abominations section uses **dual-channel pedagogy** — virtue
stated positively in the Article, sin diagnosed negatively in
its corresponding Abomination. **Articles teach belief; Abominations
teach diagnosis.** Each Abomination focuses on what the sin looks
like in committed code (symptoms, tells); the Article carries the
doctrine. This division of labor is the primary teaching mechanism
and the primary lever for both reductions.

### The hoisted teachings (v1.8+, refined v1.11, extended v1.13)

Doctrine that historically lived in the Abominations is **hoisted**
into the Articles of Faith. The Abominations focus on diagnosis;
the Articles carry the belief.

- **Premature Optimization**: the family framing —
  premature optimization, shared mutable state, global state,
  default values, and unmeasured caches are children of impatience,
  not links in a causal chain.
  Hoisted into: **"We measure before we optimize"**.
- **Null**: row-absence data modeling — nullable data
  represented as absence of a row in a related table.
  Temporal facts (completedAt, deletedAt) in event tables;
  removal as TOMBSTONE.
  Hoisted into: **"We validate at every edge"**.
- **Default Values**: the presentation-transforms distinction —
  formatting for display is service, not coercion.
  Hoisted into: **"We validate at every edge"**.
- **Cache** *(v1.13)*: the ledger-vs-cache framing — where an
  authoritative event ledger exists, derived caches are
  duplication, not optimization.
  Hoisted into: **"We derive from the ledger"**.
- **Foreign Tongues** *(v1.13)*: the cross-layer naming distinction —
  vocabulary native to one idiom does not belong in code that
  speaks another. The adapter is the divorce point of vocabulary.
  Hoisted into: **"We speak our own idiom"**.

In v1.11, the Abominations on Premature Optimization, Null, and
Default Values were trimmed to *diagnostic only* — symptoms and
tells in code — while the Article carries the doctrine. The Sin
of the Cache and Sin of Foreign Tongues (both v1.13) follow the
same pattern. In the small variant, where Abominations collapse
to header-only form, the Articles become the sole home for the
doctrine.

### Sins with partially unique content

- **Obscurity**: Naur's theory-building insight
- **Cleverness**: K&R's debugging-vs-cleverness teaching
- **Asking, Not Telling**: "zero return to the call site"

### Sins with unique prophetic witnesses

Most sins cite a different prophet than their corresponding
Article or Commandment. The doctrinal topic is shared; the
supporting argument is unique. The witness elaboration is the
content trimmed during reductions — the sin's topic is always
preserved.

Example: The Article on CSP cites Hoare;
the Sin of Shared Mutable State cites Lamport.

---

## Medium Context Strategy

**Goal**: ~1/3 byte reduction from original.

Preserve the full literary voice. Every metaphor that
earns its keep survives. Cuts are surgical.

### Section-by-section

| Section | Strategy |
|---------|----------|
| Title + Epigraph | Verbatim |
| Preamble | Verbatim |
| Twelve Commandments | Keep all 12 headings + italic summaries. Trim elaboration to 2-3 lines per commandment. Cut extended metaphors, keep declarative doctrine and specific rules (-er/-able naming, HTTP verbs, Luu latency thresholds, mistake/fallacy distinction). |
| Articles of Faith | Keep all 21 Article openings verbatim (most begin with "We"; one with "Every"). Trim the longest articles (Handle-failure, Threshold-of-trust, Process-first, Context-vessel, Validate-at-every-edge) by ~30%. Keep the pounder.pound example once. |
| Book of Abominations | Keep all 25 titles + italic objections. Articles teach belief; Abominations teach diagnosis. Sins with diagnostic content get 4-6 lines (symptoms, tells) — the v1.16 sins (Unbidden Helper Code, Test Weakening, Resource Abandonment) are diagnostic-style. Sins with partial unique content get title + italic + 1 distinctive sentence. Sins with unique prophetic witnesses get title + italic + 1-2 sentences preserving the prophet attribution and core argument. |
| Daily Offices | Keep all 8 offices and all specific rules (78 chars, 4 spaces, RFC-3339, ~50 char commits, force-push as catastrophe-only, commit-before-build workflow, structured-log fields, etc.). Trim metaphorical flourishes only. |
| Unwritten Scrolls | Verbatim |
| Practice of Revision | Trim direct-address flourishes; keep all doctrine. |
| Sacred Scrolls | The source section is a single relative link to SACRED-SCROLLS.md. Carry the heading + link through verbatim. |

---

## Small Context Strategy

**Goal**: ~2/3 byte reduction from original.

The small version is not merely shorter — it collapses the
Abominations section to a compact roster. The three teachings
historically migrated from sins to Articles are already in the
source Articles of Faith (hoisted in v1.8+), so no build-time
migration is required. The reduction is a natural consequence
of the source structure.

### Section-by-section

| Section | Strategy |
|---------|----------|
| Title + Epigraph | Verbatim |
| Preamble | Condense the confessional retrospective to essentials. Keep "This is scripture" framing, "Violations are not bugs — they are sins," and the prefigurative images (the tangled state, the silent corruption). Cut the framework/language negative creed. |
| Twelve Commandments | All 12 headings + italic summaries. 0-1 sentences of elaboration per commandment — only when the italic alone is insufficient (e.g., III needs the -er/-able rule, VII needs the verb semantics, IV benefits from the mistake/fallacy distinction). |
| Articles of Faith | All 21 Article opening sentences + 1-2 essential operational sentences each. |
| Book of Abominations | Section heading + intro + all 25 sins as compact single lines: `**On [Name]** — *"[italic objection]"*` No body text. The section must exist because the document self-references it ("the Articles of Faith precede the Book of Abominations"). |
| Daily Offices | All 8 offices, all specific rules preserved. Strip all metaphor (load-bearing metaphors that carry doctrine, like the vessel, survive). |
| Unwritten Scrolls | Verbatim |
| Practice of Revision | Trim direct-address flourishes; keep all doctrine. |
| Sacred Scrolls | Section heading + the single relative link to SACRED-SCROLLS.md, verbatim. |

### Unique teachings — where they live in v1.8+

The three teachings previously migrated during the small build
are now in the source Articles of Faith (hoisted in v1.8):

| Doctrine | Article |
|----------|---------|
| Cascade narrative (speed → mutable state → globals → defaults) | **We measure before we optimize** |
| Row-absence modeling, temporal facts in event tables | **We validate at every edge** |
| Presentation transforms vs. coercion distinction | **We validate at every edge** |

In the full and medium variants, these teachings also remain
in the corresponding Abominations (Premature Optimization, Null,
Default Values) as the dual-channel negative framing. The small
build does not need to perform any migration — the doctrine
flows naturally from the source into all three variants.

---

## Trimming Principles

**Cut prophetic elaboration, keep declarative doctrinal
statements.** Each sin uses a different prophet than its
corresponding Article. The prophet's supporting argument
is elaboration; the doctrinal conclusion is load-bearing.

When a concept appears in both the Articles and the
Abominations, the Articles version is canonical.
The Abominations version — though citing a different
prophet — exists for rhetorical reinforcement
and is the first to be trimmed.

### Tonal anchors (must survive at both sizes)

- "This is scripture" (Preamble)
- "Violations are not bugs — they are sins" (Preamble)
- "The faithful" / "the congregation" (throughout)
- All 22 italic objections ("But it's elegant!" etc.)
- "let it crash" (Sin: Swallowed Failures in full/medium;
  Article: Handle-failure in small, since sins are header-only)
- Dijkstra epigraph: "Simplicity is prerequisite for reliability." (all three sizes)
- Roman numeral commandment format
- Article creedal openings — most begin with "We", one with "Every"

---

## Build Order

1. **Medium context first** — work from the full, section by section
2. **Small context second** — work from the medium version,
   applying further cuts (Abominations collapse to headers)

Within each file, process sections in this order:

1. Book of Abominations (largest cut, most complex)
2. Sacred Scrolls (carry the link through verbatim)
3. Twelve Commandments (trim elaboration)
4. Articles of Faith (trim)
5. Daily Offices (trim metaphor, preserve rules)
6. Preamble last (ensures proportion with interior)
7. Byte-count check and final adjustment

---

## Verification Checklist

After creating each file:

1. `wc -c` — verify byte count is within target (±5%)
2. Grep for `^### [IVX]` — confirm 12 commandments
3. Article count — confirm 21. Use awk-piped grep since one
   Article begins with "Every" rather than "We":
   ```bash
   awk '/^## The Articles of Faith/,/^## The Book of Abominations/' \
     CHURCH-OF-CODE.md | grep -c '^\*\*'
   ```
4. Grep for all 25 sin names — confirm present
5. Grep for `^### The Office` — confirm 8 offices
6. Grep for `"But ` — confirm 25 italic objections
7. Grep for tonal anchors: scripture, "they are sins",
   faithful, "let it crash"
8. Reverse-drift check — the derivation chain must hold:
   every sentence in small descends from medium, and every
   sentence in medium descends from full, modulo permitted
   condensation. Sections marked Verbatim are compared
   exactly. A variant must never contain doctrine its
   parent lacks.
9. Read the complete file to verify natural flow
   and consistent scriptural voice

---

## Version Tagging

Each release of the scripture is identified by:

1. An **internal version line** in each file: `*v{N} — {size}*`
2. A **git tag** on the commit: `v{N}`

### Release process

1. Update the full CHURCH-OF-CODE.md as needed
2. Rebuild both summaries following this BUILD process
3. Update the `*v{N} — {size}*` line in all three files
   to the new version number
4. Commit the scripture work (no tag yet):
   - `git add CHURCH-OF-CODE*.md`
   - `git commit -m "Release v{N} scripture"`
5. Package the skill: `./package-skill` — propagates
   the new version into `.claude-plugin/plugin.json`
   and `.claude-plugin/marketplace.json` and copies
   the scripture files into `skills/church-of-code/`
   (including SACRED-SCROLLS.md, bundled beside the scripture
   so the Sacred Scrolls relative link resolves there too)
6. Commit the package output:
   - `git add .claude-plugin/ skills/church-of-code/`
   - `git commit -m "Package v{N}"`
7. Tag the commit: `git tag v{N}`
8. Push the commits and tag: `git push && git push --tags`

The git tag and the internal version lines must agree.
The tag marks the commit where scripture, plugin metadata,
and packaged skill files are all in sync — which is the
second (package) commit, not the first (scripture) commit.
