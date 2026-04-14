# Building the Church of Code Scripture Variants

This document describes how to rebuild the medium and small
context summaries from the full CHURCH-OF-CODE.md.

When the full scripture changes, both summaries must be
regenerated following this process.

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
2. **Articles of Faith** state operational beliefs (17 in v1.8)
3. **Book of Abominations** restates most of the above as sins
4. **Daily Offices** operationalize the beliefs

The Abominations section is **conceptually redundant** — 15 of 18
sins address the same doctrinal topics as a Commandment or
Article. Each sin uses a **different prophetic witness** (a
different prophet or teaching) to support the same conclusion.
This **dual-channel pedagogy** — virtue stated positively in the
Article, trap named negatively in the Sin — is the scripture's
primary teaching mechanism, and the conceptual redundancy
remains the primary lever for both reductions.

### The hoisted teachings (v1.8+)

Three sins historically carried unique doctrine not found
anywhere else. In v1.8, that doctrine was **hoisted** into the
Articles of Faith:

- **Premature Optimization**: the cascade narrative —
  speed begets shared mutable state, which begets global
  variables, which begets default values. Also the structural
  inversion note (XII is the least virtue, its corruption
  is the first sin).
  Hoisted into: **"We measure before we optimize"** (article 17).
- **Null**: row-absence data modeling — nullable data
  represented as absence of a row in a related table.
  Temporal facts (completedAt, deletedAt) in event tables.
  Hoisted into: **"We validate at every edge"**.
- **Default Values**: the presentation-transforms distinction —
  formatting for display is service, not coercion.
  Hoisted into: **"We validate at every edge"**.

In the full and medium variants, these teachings remain in both
the Abominations and the Articles — intentional redundancy,
dual-channel pedagogy. In the small variant, where Abominations
collapse to header-only form, the Articles become the sole home
for the doctrine. This is a natural inheritance from the source,
not a build-time migration.

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
| Twelve Commandments | Keep all 12 headings + italic summaries. Trim elaboration to 2-3 lines per commandment. Cut extended metaphors, keep declarative doctrine and specific rules (-er/-able naming, HTTP verbs, Luu latency thresholds). |
| Articles of Faith | Keep all 17 "We believe..." openings verbatim. Trim the 3 longest articles (Handle-failure, Process-first, Context-vessel) by ~30%. Keep the pounder.pound example once. |
| Book of Abominations | Keep all 18 titles + italic objections. Sins with unique doctrine get 4-6 lines. Sins with partial unique content get title + italic + 1 distinctive sentence. Sins with unique prophetic witnesses get title + italic + 1-2 sentences preserving the prophet attribution and core argument. |
| Daily Offices | Keep all 6 offices and all specific rules (78 chars, 4 spaces, RFC-3339, ~50 char commits, etc.). Trim metaphorical flourishes only. |
| Unwritten Scrolls | Verbatim |
| Sacred Scrolls | Remove the URL reference-link block at the end of the section. Convert `[text][ref]` markdown links to plain text. Keep all annotated entries with author, title, and description. |
| Benediction | Verbatim |

---

## Small Context Strategy

**Goal**: ~2/3 byte reduction from original.

This requires a **structural transformation**, not just trimming.
The small version is not merely shorter — it reorganizes content
so that unique doctrine from 3 Abominations migrates into the
Articles where it logically belongs, and the Abominations section
collapses to a compact roster.

### Section-by-section

| Section | Strategy |
|---------|----------|
| Title + Epigraph | Verbatim |
| Preamble | Condense the confessional retrospective to essentials. Keep "This is scripture" framing, "Violations are not bugs — they are sins," and the three prefigurative images (tangled state, silent corruption, null where conviction should stand). Cut the framework/language negative creed. |
| Twelve Commandments | All 12 headings + italic summaries. 0-1 sentences of elaboration per commandment — only when the italic alone is insufficient (e.g., III needs the -er/-able rule, VII needs the verb semantics). |
| Articles of Faith | All 17 "We believe..." sentences + 1-2 essential operational sentences each. |
| Book of Abominations | Section heading + intro + all 18 sins as compact single lines: `**On [Name]** — *"[italic objection]"*` No body text. The section must exist because the document self-references it ("the Articles of Faith precede the Book of Abominations"). |
| Daily Offices | All 6 offices, all specific rules preserved. Strip all metaphor. |
| Unwritten Scrolls | Verbatim |
| Sacred Scrolls | Section heading + intro + compact author roster: names and years in paragraph form, no annotations, no URLs. |
| Benediction | Keep: commissioning line, "Resist.", positive-practice summary (trimmed), identity block, closing incantation. Cut temptation litany and prophet enumeration. |

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
- All 18 italic objections ("But it's elegant!" etc.)
- "let it crash" (Sin: Swallowed Failures in full/medium;
  Article: Handle-failure in small, since sins are header-only)
- "This church is its own denomination" (Benediction)
- Dijkstra telescopes epigraph (all three sizes)
- "So let it compile. So let it deploy. So let it run smoothly. So you can rest." (closing)
- Roman numeral commandment format
- "We believe in..." creedal openings for all Articles

---

## Build Order

1. **Medium context first** — work from the full, section by section
2. **Small context second** — work from the medium version,
   applying further cuts (Abominations collapse to headers)

Within each file, process sections in this order:

1. Book of Abominations (largest cut, most complex)
2. Sacred Scrolls (clean mechanical operation)
3. Twelve Commandments (trim elaboration)
4. Articles of Faith (trim)
5. Daily Offices (trim metaphor, preserve rules)
6. Preamble and Benediction last (ensures proportion with interior)
7. Byte-count check and final adjustment

---

## Verification Checklist

After creating each file:

1. `wc -c` — verify byte count is within target (±5%)
2. Grep for `^### [IVX]` — confirm 12 commandments
3. Grep for `^\*\*We ` — confirm 17 articles
4. Grep for all 18 sin names — confirm present
5. Grep for `^### The Office` — confirm 6 offices
6. Grep for `"But ` — confirm 18 italic objections
7. Grep for tonal anchors: scripture, "they are sins",
   faithful, "let it crash", "own denomination",
   "So let it"
8. Read the complete file to verify natural flow
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
6. Commit the package output:
   - `git add .claude-plugin/ skills/church-of-code/`
   - `git commit -m "Package v{N}"`
7. Tag the commit: `git tag v{N}`
8. Push the commits and tag: `git push && git push --tags`

The git tag and the internal version lines must agree.
The tag marks the commit where scripture, plugin metadata,
and packaged skill files are all in sync — which is the
second (package) commit, not the first (scripture) commit.
