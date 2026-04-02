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
2. **Articles of Faith** state operational beliefs
3. **Book of Abominations** restates most of the above as sins
4. **Daily Offices** operationalize the beliefs

The Abominations section (~30% of the full document) is
**conceptually** redundant — 15 of 18 sins address the same
doctrinal topics as a Commandment or Article. However, each
sin uses a **different prophetic witness** (a different
prophet or teaching) to support the same conclusion. No text
is duplicated between sections. This conceptual redundancy
remains the primary lever for both reductions: the sins'
elaboration can be trimmed because the doctrine is covered
in the positive-form sections, even though the specific
supporting arguments are unique.

### Sins with unique doctrine (must be preserved)

These three contain content not found elsewhere:

- **Premature Optimization**: the cascade narrative —
  speed begets shared mutable state, which begets global
  variables, which begets default values. Also the structural
  inversion note (XII is the least virtue, its corruption
  is the first sin). Also the Knuth/Hoare authorship
  dispute and "root of all evil" quote.
- **Null**: row-absence data modeling — nullable data
  represented as absence of a row in a related table.
  Temporal facts (completedAt, deletedAt) in event tables.
- **Default Values**: the presentation-transforms distinction —
  formatting for display is service, not coercion.

### Sins with partially unique content

- **Obscurity**: Naur's theory-building insight
- **Cleverness**: K&R's debugging-vs-cleverness teaching;
  "The karma of clever code is a 3 AM page"
- **Asking, Not Telling**: "zero return to the call site"

### Sins with unique prophetic witnesses (12 of 18)

Each of these sins cites a different prophet than
its corresponding Article or Commandment. The doctrinal
topic is shared; the supporting argument is unique.
The witness elaboration is the content trimmed during
reductions — the sin's topic is always preserved.

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
| Sacred Scrolls | Remove the URL reference-link block at the end of the section. Convert `[text][ref]` markdown links to plain text. Keep all annotated entries with author, title, and description. |
| Twelve Commandments | Keep all 12 headings + italic summaries. Trim elaboration to 2-3 lines per commandment. Cut extended metaphors, keep declarative doctrine and specific rules (-er/-able naming, HTTP verbs, Nielsen thresholds). |
| Articles of Faith | Keep all 16 "We believe..." openings verbatim. Trim the 3 longest articles (Handle-failure, Process-first, Context-vessel) by ~30%. Keep the pounder.pound example once. |
| Book of Abominations | Keep all 18 titles + italic objections. Sins with unique doctrine get 4-6 lines. Sins with partial unique content get title + italic + 1 distinctive sentence. Sins with unique prophetic witnesses get title + italic + 1-2 sentences preserving the prophet attribution and core argument. |
| Daily Offices | Keep all 6 offices and all specific rules (78 chars, 4 spaces, RFC-3339, ~50 char commits, etc.). Trim metaphorical flourishes only. |
| Unwritten Scrolls | Verbatim |
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
| Preamble | Condense to authority-establishing essentials. Keep "This is scripture" framing and "Violations are not bugs — they are sins." Cut the middle paragraphs about frameworks and heathens. |
| Sacred Scrolls | Section heading + intro + compact author roster: names and years in paragraph form, no annotations, no URLs. |
| Twelve Commandments | All 12 headings + italic summaries. 0-1 sentences of elaboration per commandment — only when the italic alone is insufficient (e.g., III needs the -er/-able rule, VII needs the verb semantics). |
| Articles of Faith | All 16 "We believe..." sentences + 1-2 essential operational sentences each. **Absorb unique abomination content here** (see migration table below). |
| Book of Abominations | Section heading + intro + all 18 sins as compact single lines: `**On [Name]** — *"[italic objection]"*` No body text. The section must exist because the document self-references it ("the Articles of Faith precede the Book of Abominations"). |
| Daily Offices | All 6 offices, all specific rules preserved. Strip all metaphor. |
| Unwritten Scrolls | Verbatim |
| Benediction | Keep: commissioning line, "Resist.", positive-practice summary (trimmed), identity block, closing incantation. Cut temptation litany and prophet enumeration. |

### Unique abomination content migration (small only)

| Doctrine | Source Sin | Target Article |
|----------|-----------|----------------|
| Cascade narrative (speed → mutable state → globals → defaults) | Premature Optimization | Process First (at end) |
| Row-absence modeling, temporal facts in event tables | Null | Validate at Every Edge |
| Presentation transforms vs. coercion distinction | Default Values | Validate at Every Edge |

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
- "So let it compile. So let it ship. So let it endure." (closing)
- Roman numeral commandment format
- "We believe in..." creedal openings for all Articles

---

## Build Order

1. **Medium context first** — work from the full, section by section
2. **Small context second** — work from the medium version,
   applying further cuts + structural changes (abomination migration)

Within each file, process sections in this order:

1. Book of Abominations (largest cut, most complex)
2. Sacred Scrolls (clean mechanical operation)
3. Twelve Commandments (trim elaboration)
4. Articles of Faith (trim; absorb abomination content for small)
5. Daily Offices (trim metaphor, preserve rules)
6. Preamble and Benediction last (ensures proportion with interior)
7. Byte-count check and final adjustment

---

## Verification Checklist

After creating each file:

1. `wc -c` — verify byte count is within target (±5%)
2. Grep for `^### [IVX]` — confirm 12 commandments
3. Grep for `^\*\*We ` — confirm 16 articles
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
4. Commit all three files together
5. Tag the commit: `git tag v{N}`

The git tag and the internal version lines must agree.
The tag marks the commit where all three files are in sync.
