# Issue #1: Scope and Color for Valid Criticisms

## Context

GitHub issue #1 contains Claude's critique of the Church of Code scripture,
raised by user vintrepid. Several criticisms identify genuine ambiguity where
the doctrine is correct but the text lacks scope (when it applies) or color
(why it applies). This design addresses five specific criticisms through
inline expansion of existing text, preserving the scripture's voice and
structure.

**Not addressed**: foreign-key-free noun tables (by design choice) and the
religious framing itself (the commandment hierarchy IS the conflict-resolution
mechanism).

## Approach

Minimal inline expansion — add 2-10 lines of scriptural prose directly into
each affected section. No new structural sections. Same prophetic voice and
cadence throughout.

## Changes

### Change 1: Tell-Don't-Ask — Noun/Verb Distinction

**Problem**: "Systems accept commands...with zero return to the call site"
reads as absolutist. The critic says `{:ok, result}` is the Elixir way and
you need return values. The text conflates tell-don't-ask with all return
values.

**Fix**: Distinguish functions on nouns (calculation/transformation — return
naturally) from methods on verbs (actions/commands — begin async processes,
pass results through CSPs, never return to call site).

**Files**: CHURCH-OF-CODE.md — Article "We believe in telling, not asking"
(~line 392) and Sin "On the Sin of Asking, Not Telling" (~line 857)

**Article addition** (after "the eleventh commandment made manifest"):

```
Mark the distinction:
functions upon nouns — calculation, transformation —
return what they produce, for that is their nature.
Methods upon verbs begin asynchronous processes
that pass signals and results
to communicating sequential processes —
never returning to the call site.
```

**Sin revision** (replace lines 861-870):

```
You *need* it. Do you?
A function upon a noun returns what it produces.
But a method upon a verb begins a process —
passing results to communicating sequential processes,
not back to the call site.
To reach into an object for its internal state
is to violate its sovereignty.
An object is not a filing cabinet
to be rummaged through.
It is an agent... to be directed.
```

### Change 2: Context as Pipeline Vessel — ISP + Write-Once

**Problem**: "Context is the only argument passed to methods" sounds like a
god object that violates Interface Segregation. The critic conflates a data
vessel with a service interface.

**Fix**: Clarify that context is the baton in a relay — each pipeline step IS
the small focused interface ISP demands. Add write-once field semantics with
HTTP pipeline examples.

**Files**: CHURCH-OF-CODE.md — Article "We believe in context as the single
vessel" (~line 489)

**Addition** (after "complete by covenant", before "Objects carry state"):

```
Context is not a god-object with a bloated interface —
it is the baton in a relay.
Each step in the pipeline is the interface,
small and focused as the Segregation Principle demands.
The context flows; the steps serve.
Each field is set exactly once, in exactly one place —
the attributes immutable
even as the vessel itself is enriched.
Authentication resolves the identity.
Authorization resolves the roles.
Deserialization resolves the body.
The request UUID resolves the trace.
No field is written twice. No step revisits another's work.
```

### Change 3: Office of Format — Formatter Deference

**Problem**: The formatting exceptions ("unless language/toolchain compels
otherwise") exist but are easy to miss. The critic claims these rules fight
every language's formatter.

**Fix**: Broaden formatter examples, state the deference principle explicitly.

**Files**: CHURCH-OF-CODE.md — "The Office of Format" (~line 1029)

**Revision** (expand the indentation exception):

```
- Prefer spaces — four of them — for indentation
  - Unless the language or toolchain compels otherwise:
    Go's `gofmt` has spoken; Makefiles have their syntax;
    `mix format` is the voice of Elixir;
    `prettier` the voice of JavaScript.
    When the formatter has spoken, obey the formatter —
    collateral chaos in service of preference is vanity
  - When the choice is yours, choose spaces
```

### Change 4: Commit Before Building — Reproducibility

**Problem**: "Commit before building, for the build demands a clean working
directory" states the what but not the why. The critic calls this unusual.

**Fix**: Add the reproducibility argument — a build from uncommitted state
cannot be traced, reproduced, verified, or trusted.

**Files**: CHURCH-OF-CODE.md — "The Office of the Commit" (~line 1044)

**Revision** (replace the two-line original):

```
Commit before building.
A build from uncommitted state
cannot be traced to a specific commit —
cannot be reproduced,
cannot be verified,
cannot be trusted beyond
"it worked on my machine."
The build may alter the working directory itself;
without the commit, the source is lost.
Commit first. Build from known state.
The reflog forgives; entropy does not.
```

### Change 5: Amend Safety + Force-Push Warning

**Problem**: `git commit --amend --no-edit` encouragement doesn't explicitly
scope to unpublished work. No mention of force-push dangers.

**Fix**: Add explicit local-only boundary and force-push prohibition.

**Files**: CHURCH-OF-CODE.md — "The Office of the Commit" (~line 1038)

**Revision** (expand the amend passage):

```
Commit frequently.
`git commit --amend --no-edit` is a mercy
granted to the diligent —
but only upon unpublished work.
What has been pushed has been witnessed;
to rewrite witnessed history is to bear false witness.
`git push --force` is the nuclear option —
to be avoided in all but the most desperate circumstances.
The reflog remembers what you have forgotten.
You cannot commit too often. *You cannot.*
```

## Post-Edit Steps

After editing CHURCH-OF-CODE.md:

1. Rebuild both variants per BUILD.md (medium from full, then small from
   medium)
2. Run verification checklist on all three files:
   - `wc -c` within +/- 5% of target
   - `grep -c '^### [IVX]'` = 12 commandments
   - `grep -c '^\*\*We '` = 16 articles
   - All 18 sin names present
   - `grep -c '^### The Office'` = 6 offices
   - `grep -c '"But '` = 18 italic objections
   - Tonal anchors preserved
3. Update version in all three files if warranted
4. Commit all three files together
5. Tag if releasing
