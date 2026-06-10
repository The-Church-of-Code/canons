# The Church of Code

*v1.15 — small*

> *Simplicity is prerequisite for reliability.*
> — Edsger Dijkstra

---

## The Preamble

There comes a time when the tangled state can no longer be
endured, when the silent corruption can no longer be excused.

This is scripture — sacred, inviolate, and binding upon this
congregation.

Software crafted without discipline is unclean. We have lived
with the tangled state, the silent corruption, and we have
paid the price.

We gather in the name of the craft itself — that which endures
when the dependencies are dust.

These are not aspirations. They are strictures.
Violations are not bugs — *they are sins*.
The repentant shall be welcomed back. The obstinate cast out.

---

## The Twelve Commandments

*In order of importance, from most to least.
Perfection is the thirteenth — the asymptote.*

### I. Reliability

*The bedrock upon which all else rests.*

### II. Security

*A compromised system is a fallen system.*

The data, once leaked, cannot be unleaked.

### III. Uniformity

*Call a thing a thing, in all things.*

Name processors with *-er*: `painter`, `validator`, `pounder`.
Name contracts with *-able*: `paintable`, `poundable`,
`validatable`. The *-er* acts; the *-able* submits.
Name what is opaque; leave the self-disclosing alone.

### IV. Logic

*Less wrong, never fallacious.*

An off-by-one is a mistake; a confusion of `OR` with `AND`
is a fallacy. A single fallacy is a crack no testing reveals.

### V. Clarity

*Dense, high-information communication.
No equivocation. No dissembling.*

Present the happy path first — lead with what the faithful
should do before naming what they must not.

### VI. Immutability

*Eliminate the question "Why did THAT happen?"*

Values are the true abstraction — immutable, comparable,
free of time.

### VII. Idempotency

*PUT, GET, DELETE — not INSERT, UPDATE, DELETE.*

HTTP verbs are the true verbs. An operation that can be
repeated without consequence can be trusted.

### VIII. Simplicity

*If I had more time, I would have written a shorter letter.*

Simplicity is the fruit of GREAT effort.

### IX. Generality

*Never generalize before exploratory duplication.*

Two instances are coincidence. Three is pattern. Below three,
duplicate without shame. Once the better way is found, replace
every similar site — never live beside them.
One codebase, one voice.

### X. Atomicity

*Design so you rarely need it.*

When genuinely required, embrace it. Wrap the indivisible in
the platform's transactional primitive; never simulate at the
application layer.

### XI. Efficiency

*True when the above eleven are honored.
Chaotic when pursued prematurely.*

It is not a goal but a consequence.

### XII. Performance

Every wasted millisecond is a small death.
Humans perceive cause/effect latency down to low single-digit
milliseconds.
*No code is faster than no code.*

---

## The Articles of Faith

**We believe in the S.O.L.I.D. principles** —
Single Responsibility (Martin), Open/Closed (Meyer), Liskov
Substitution (Liskov), Interface Segregation (Martin),
Dependency Inversion (Martin). The five pillars upon which
righteous architecture is raised, named by Michael Feathers
from the prophets.

**We believe in telling, not asking.**
Tell objects what we need; do not interrogate state.
Functions upon nouns return what they produce.
Methods upon verbs begin asynchronous processes that pass
results to communicating sequential processes —
never returning to the call site.

**We believe that relationships between entities
are sacred covenants.**
Codd revealed that relationships occupy their own relations;
we add the moment of union — for relationships have time.
Join tables hold only the identities of the joined and the
moment of union. More than that, and it is an entity wearing
a false name.

**We believe in being informed of state changes,**
not in the anxious polling of the faithless.
Gamma, Helm, Johnson, and Vlissides codified this as the
Observer pattern. Subscribe. Listen. Be notified.
The devout trust the bell.

**We validate at every edge.**
Input, storage, framework callbacks — all profane until
validated. Enforce constraints on entity instantiation —
never downstream. Every datastore attribute is NOT NULL.

Nullable data is the lack of a row in a related table.
Temporal facts (completedAt, deletedAt) belong in event tables.
Default values that mask absent data are comfortable lies.
Presentation transforms are service, not coercion.
Absence is modeled at the call site, not the helper.

Once data has crossed validation, trust it completely.
To distrust validated data is to lack faith in your peers.

**We handle failure with grace.**
Degrade visibly rather than corrupt silently.
Never catch what you cannot meaningfully handle —
to swallow an exception is excommunicable.

Distinguish expected failures (network timeout) from bugs
(impossible state — let it crash).
Enrich errors at each boundary layer until the failure
surfaces with its full story.

**We choose platform primitives** over third-party abstractions,
as Doug McIlroy taught in the Unix philosophy.
Every dependency is a future migration.

**We measure before we optimize.**
The unmeasured optimization is the root of the family of
impatience: premature optimization, shared mutable state,
global state, default values, and unmeasured caches.
Where you find one, look for its kin.
Doctrine disputes are settled by MEASUREMENT.

**We derive from the ledger.**
Where an authoritative event ledger exists, derived caches
are duplication, not optimization. The ledger is required
regardless; the cache is kept in sync by nothing.

**We believe in messaging first, state second, datastore last.**
As Alan Kay declared: the big idea is messaging.
Design messages first. Derive state from messages.
Choose datastore to serve state. The datastore is a servant.

**We believe in context as the single vessel.**
Context is the only argument — serializable, loggable, complete.
The baton in a relay, not a god-object.
Attributes immutable; the vessel enriched.
Objects carry state, not arguments.
Two reads see one truth — not for speed, for ATOMICITY.

**We believe in process first, noun second.**
As Bohm taught in his rheomode: 'Rain is going on' is more
accurate than 'It is raining.'
`nail.pound()` is horrible — the noun owns the verb.
`pounder.pound(poundable: hammer, nailable: nail)` is the way —
the process owns, the nouns are participants.

**We believe in composition over inheritance.**
Composition organizes code by what it *does*;
inheritance by what it *is*.
Composition gives a function its collaborators;
inheritance gives an ancestor its heirs.
Subclassing is inheritance, however much behavior you mix in —
favored only where a platform demands the hierarchy.
The faithful compose.

**We believe in insulation through adapters.**
External code touches us only through adapters we own.
The thinnest adapter is not ceremony — it is the DIVORCE POINT.
Measure adapters by their seams, not their function count.

**We speak our own idiom.**
The two hard things in Computer Science are cache invalidation
and naming things; this Article addresses the second.
Names from one layer do not belong in another.
The adapter is the divorce point of vocabulary as well as
of structure. What enters speaks one tongue; what exits
speaks another.

**We believe in shallow structure.**
The top level of a project should give a rough idea of what
type of app it is. Deep nesting hides the domain. Flat is faithful.

**Every operation is an HTTP operation.**
HTTP verb semantics are universal:
`get_noun`, `put_noun`, `delete_noun`, `post_noun_operation`.
Multi-noun: `post_operation`.

**We believe in communicating sequential processes.**
As Tony Hoare taught in his 1978 paper: asynchronous composition
of communicating sequential processes is a fundamental
structuring method.
Processes share memory by communicating —
*never* communicate by sharing memory.

**We acknowledge the cost of the discipline.**
The adapter costs. The validator costs. The vessel costs.
The join table costs. The faithful pay willingly, having
counted, and found the cost of absence the greater.

---

## The Book of Abominations

*The Articles teach belief; these sins teach diagnosis.
Each Article carries the doctrine; each Sin names what
violation looks like in code.*

**On Premature Optimization** — *"But it needs to be fast!"*

**On the Cache** — *"But it's better to cache it!"*

**On Premature Generalization** — *"But we'll need this everywhere!"*

**On Shared Mutable State** — *"But shared memory is faster!"*

**On Global State** — *"But everything needs access to it!"*

**On Null** — *"But the field is optional!"*

**On Default Values** — *"But it's easier to write!"*

**On Internal Defense** — *"But what if the data is bad?"*

**On Entangled Nouns** — *"But a foreign key is just a reference!"*

**On Inheritance** — *"But it captures the IS-A relationship!"*

**On Coupling** — *"But the library does everything we need!"*

**On Swallowed Failures** — *"But the user shouldn't see errors!"*

**On the Greedy Catch** — *"But I want to handle all the errors!"*

**On Asking, Not Telling** — *"But I need the return value!"*

**On Polling** — *"But I need to know when it's ready!"*

**On Scattered Context** — *"But I only need part of the data!"*

**On Noun-First Thinking** —
*"But I need to understand the data model before I can build anything!"*

**On Obscurity** — *"But the code works!"*

**On Cleverness** — *"But it's elegant!"*

**On Magical Values** — *"But everyone knows what 200 means!"*

**On Deep Nesting** — *"But I need to organize by category!"*

**On Foreign Tongues** — *"But that's what the library calls it!"*

---

## The Daily Offices

### The Office of Format

Wrap lines at seventy-eight characters unless language or
format compel otherwise. Links and URLs exempt.
Prefer four spaces for indentation. Obey the formatter.
No trailing whitespace. Final newline required.

### The Office of the Commit

Commit frequently. `git commit --amend --no-edit` is mercy
for the diligent.

What has been pushed has been witnessed.
Force-pushing is bearing false witness — reserved for
catastrophe (secret leaked, malicious commit), announced
loudly when invoked.

ABC — always be committing!
Locally, commit before you build — the artifact is the product
of state. Before you push, ensure every commit on master builds,
functions, and passes tests; rebase and amend until that holds.

A build from uncommitted state cannot be traced, reproduced,
verified, or trusted.

Commit in tiny, semantically contiguous bits:

- Every commit on master must build, function, and pass tests
- Each message: a single line, approximately fifty characters,
  complete: "When applied, this commit will ___"
- If a commit needs a subject and body, it is too large —
  use `git commit -p`. Trailers are not bodies.
- Never move or rename and change content in the same commit
- Rarely mention file names, paths, or function names

History shall be linear. Rebase, then fast forward. Never merge.
A merge commit is a knot in the narrative.

### The Office of Time

Persist timestamps in RFC-3339, zulu, fullest sub-second
resolution. Not negotiable.

Render to local time for display only. Never use localtime
internally — it is the road to ambiguity, and ambiguity is
the road to bugs that manifest in production only when you
are asleep.

### The Office of the Context

Each field of the context is set exactly once, in exactly
one place. Authentication resolves identity. Authorization
resolves roles. Deserialization resolves body. Request UUID
resolves trace. No step revisits another's work.

Observability is carried in the vessel from the start —
the faithful ship the instrument.

### The Office of Verification

Test at the highest level possible — input, transform, output.
Assert behavior, not implementation, for implementation changes
but the covenant we keep with our users does not.

Each test is an isolated world. A test that leans on another
lies about what it proves.

A test that cannot fail is a comfort object.
A test that fails intermittently is a *false prophet*.

### The Office of the Interface

Intuitive, accessible, beautiful. No configuration before
first use. Defaults that work, exits visible — the escape
hatch is part of the welcome.

Accessibility is the precondition of an interface, not a
feature. Color contrast, keyboard navigation, screen-reader
affordance — gates of entry, not polish at the end.

Beauty serves clarity.

### The Office of Commentary

Simplify first. Rename second. Restructure third. Comment fourth.

When a comment is required, it explains *why*, never *what*.
Fix the code; delete the comment.

Documentation at module and contract boundaries IS the contract,
not commentary on it.

We abide by our strictures rather than annotate our way around
them.

---

## The Unwritten Scrolls

The temporal dimension of data modeling — migrations, schema
evolution, versioning, and the management of change over time —
is a discipline the faithful practice but this scripture has
not yet codified. Future scrolls will address it.

We name the gap so that the gap cannot hide.

---

## The Practice of Revision

The doctrine is not handed down on tablets of stone. It is
forged in the codebase, witnessed by the work, and only THEN
written into the scripture. The scripture lags the practice —
and that is STRENGTH.

Each amendment names a pattern that earned its keep.

---

## The Sacred Scrolls

[The texts from which these strictures descend](SACRED-SCROLLS.md)
