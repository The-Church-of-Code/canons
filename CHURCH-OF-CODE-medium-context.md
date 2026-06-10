# The Church of Code

*v1.15 — medium*

> *Simplicity is prerequisite for reliability.*
> — Edsger Dijkstra

---

## The Preamble

There comes a time when the tangled state
can no longer be endured.
There comes a time when the silent corruption
can no longer be excused.
There comes a time when those
who write and ship and maintain
must answer for the craft they have inherited
and the craft they will leave behind.

This is not a guideline.
This is not a best practice.
This is scripture — sacred, inviolate,
and binding upon this congregation.

Software crafted without discipline… is unclean.
And we know this, my friends,
because we have crafted it ourselves.
We have lived with the tangled state, the silent corruption,
and we have paid the price. We have turned away.

We gather in the name of the craft itself —
that which endures when the dependencies are dust,
that which holds when the fashions have turned.

These are not aspirations. They are strictures.
Violations are not bugs — *they are sins*.
Violators are not merely wrong — they are UNCLEAN.
The repentant shall be welcomed back into the fold.
The obstinate shall be cast out.

---

## The Twelve Commandments

*In order of importance, from most to least.
Perfection is the thirteenth — the asymptote the twelve drive toward.*

### I. Reliability

*The bedrock upon which all else rests.*

You may achieve every other virtue and still have NOTHING
if your code is not reliable.

### II. Security

*A compromised system is a fallen system.*

A breach is a covenant broken with everyone who trusted us
with their data. The data, once leaked, cannot be unleaked.

### III. Uniformity

*Call a thing a thing, in all things.*

As Confucius taught in the Rectification of Names:
if names be not correct, language is not in accordance with truth.

Name processors with *-er*: a `painter` paints, a `validator`
validates, a `pounder` pounds.
Name contracts with *-able*: `paintable`, `poundable`, `validatable`.
The *-er* acts; the *-able* submits — Interface Segregation
manifest in vocabulary.

Name what is opaque; leave the self-disclosing alone —
see the Abomination on Magical Values for the full teaching.

### IV. Logic

*Less wrong, never fallacious.*

An off-by-one is a mistake — a boundary error you can see.
A confusion of `OR` with `AND` is a fallacy —
the wrong logical operation, indistinguishable in many test
cases yet wrong in all. A single fallacy is a crack no amount
of testing will reveal.

### V. Clarity

*Dense, high-information communication.
No equivocation. No dissembling.*

Say what is true, not what sounds reasonable.
Present the happy path first — lead with what the faithful
should do before naming what they must not.
The Articles of Faith precede the Book of Abominations.

### VI. Immutability

*Eliminate the question "Why did THAT happen?"*

As Rich Hickey has revealed: values are the true abstraction —
immutable, comparable, free of time.

### VII. Idempotency

*PUT, GET, DELETE — not INSERT, UPDATE, DELETE.*

HTTP verbs are the true verbs, as Roy Fielding revealed in
his REST dissertation. An operation that can be repeated
without consequence can be trusted.

### VIII. Simplicity

*If I had more time, I would have written a shorter letter.*

So spoke Pascal. As Dijkstra taught: the competent programmer
approaches every task aware of the strictly limited size of
his own skull. Simplicity is the fruit of GREAT effort.

### IX. Generality

*Never generalize before exploratory duplication.*

Two instances are coincidence. Three is pattern.
Below three, duplicate without shame.

And once the better way is found, it must rise to replace
every similar site — never rest beside them.
One codebase, one voice.

### X. Atomicity

*Design so you rarely need it.*

As Jim Gray taught: atomicity means all actions as one, or
none at all. Idempotent operations obviate most transactional
needs. When required — embrace it. Wrap the indivisible in
the platform's primitive; never simulate at the application layer.

### XI. Efficiency

*True when the above eleven are honored.
Chaotic when pursued prematurely.*

Efficiency emerges from humility — from clarity, from
simplicity. It is not a goal but a consequence.

### XII. Performance

Every wasted millisecond is a small death.
In the UI it erodes fluidity; in high-frequency operations,
throughput; in the user's view, patience.

As Dan Luu has witnessed: humans can perceive latency down
to low single-digit milliseconds.

As Ezra Zygmuntowicz has taught: *no code is faster than no code.*

---

## The Articles of Faith

*What the faithful practice.
The way of the righteous, spoken before the sins.*

**We believe in the S.O.L.I.D. principles** —
the five pillars upon which righteous architecture is raised,
named by Michael Feathers from the prophets:

- **S** — Single Responsibility (Martin): one reason to change
- **O** — Open/Closed (Meyer): open for extension, closed for modification
- **L** — Liskov Substitution (Liskov): subtypes substitute cleanly
- **I** — Interface Segregation (Martin): many small interfaces
  over one bloated contract
- **D** — Dependency Inversion (Martin): depend on abstractions,
  not concretions

**We believe in telling, not asking,**
as Andy Hunt and Dave Thomas named the principle.
We tell our objects what we need; we do not interrogate
their state. Functions upon nouns return what they produce.
Methods upon verbs begin asynchronous processes that pass
results to communicating sequential processes — never
returning to the call site.

**We believe that relationships between entities
are sacred covenants.**
Codd revealed that relationships occupy their own relations.
We add the moment of union — for relationships have time.
Join tables hold only the identities of the joined and the
moment of union. If a relationship demands more, it is an
entity wearing a false name.

**We believe in being informed of state changes,**
not in the anxious polling of the faithless.
Gamma, Helm, Johnson, and Vlissides codified this as the
Observer pattern. Subscribe. Listen. Be notified.
The devout trust the bell.

**We validate at every edge,
for the world beyond our gates is often profane:**

- Input: the voice of the uninstructed is frequently corrupt
- Storage: what was written was commonly stored incorrectly
- Framework APIs and delegate callbacks: other people's
  dharma, validated in our adapter

Enforce constraints on entity instantiation — never downstream.

In the datastore, every attribute is NOT NULL — for nullable
concepts have been moved to their related tables, and
tombstones live in their own tombs.

Nullable data is ideally represented as the lack of a row
in a related table. Temporal facts — completedAt, deletedAt —
belong in event tables, for the absence of a row IS the
absence of the event.

Default values that mask the absence of real data are
comfortable lies. Presentation transforms are not coercion —
formatting for display is service, not concealment.

When a value is truly absent, model that absence at the
call site — not in the helper.

Once data has crossed validation, trust it completely.

**We handle failure with grace.**
Degrade visibly rather than corrupt silently.

Never catch an error you cannot meaningfully handle —
to swallow an exception is excommunicable!

As Bertrand Meyer taught in Design by Contract: a function
declares what it requires and what it guarantees. When those
terms are violated, the failure is a breach of covenant to
be proclaimed.

Distinguish expected failures from bugs: a network timeout
is expected and handled; an impossible state is a bug —
and must crash.

Enrich errors at each boundary layer until the failure
surfaces with its full story.

**We choose platform primitives** over third-party abstractions,
as Doug McIlroy taught in the Unix philosophy.
Every dependency is a future migration. What the platform
provides, the platform maintains.

**We measure before we optimize.**
The unmeasured optimization is the root of the family of
impatience — premature optimization, shared mutable state,
global state, default values, and unmeasured caches.
Each compounds the others when present together.
Measure first. Prove the bottleneck exists. Then optimize.

When two of the faithful disagree on doctrine, let the
matter be settled by MEASUREMENT.

**We derive from the ledger.**
Where an authoritative event ledger exists, derived caches
of its truth are duplication, not optimization.

A system that maintains a ledger for its own purposes —
audit, lifecycle, history — has already paid for it.
Data derivable from it must be derived.

We reject the word *better*: the ledger is required regardless;
the cache is kept in sync by nothing.

**We believe in messaging first, state second, datastore last.**
As Alan Kay declared: the big idea is messaging.
Design the messages first. Derive the state the messages
require. Choose the datastore to serve the state.
The datastore is a servant — never a master.

**We believe in context as the single vessel.**
Processing begins with a request; each step uses and
perhaps enriches the context.
Context is the only argument passed to methods —
serializable, loggable, complete by covenant.
Context is the baton in a relay, not a god-object.
The context flows; the steps serve.
The attributes immutable even as the vessel is enriched.
Objects carry state, not arguments.

The vessel is a bag whose sole responsibility is to BE
the bag. Two reads see one truth. Not for speed —
for ATOMICITY.

**We believe in process first, noun second.**
As David Bohm taught in his rheomode:
'It is raining.' Where is the 'It'?
More accurate: 'Rain is going on.'
Name the action. Parameterize the participants.
`nail.pound()` is horrible — the noun owns the verb.
`pounder.pound(poundable: hammer, nailable: nail)` is the way —
the process owns everything, and the nouns are participants,
infinitely substitutable.

**We believe in composition over inheritance.**
As James Gosling confessed: the language would have been
better without inheritance.
Gamma, Helm, Johnson, and Vlissides wrote: favor object
composition over class inheritance.
Composition organizes code by what it *does*;
inheritance by what it *is*.
Composition gives a function its collaborators;
inheritance gives an ancestor its heirs.
Subclassing is inheritance, however much behavior you mix in —
favored only where a platform demands the hierarchy.
The faithful compose.

**We believe in insulation through adapters.**
Our code touches external code only through adapters we own,
so our application is written in our single voice.

As Wittgenstein wrote in the Tractatus: the limits of my
language mean the limits of my world.

So has Ra'Shaun Stovall taught: "it is not how fast you can
marry a technology — it is how easily you can divorce it."

The thinnest adapter is not ceremony — it is the DIVORCE POINT.

**We speak our own idiom.**
As Phil Karlton has named them, the two hard things in
Computer Science are cache invalidation and naming things.
This Article addresses the second; the Book of Abominations,
the first.

Names from one layer do not belong in another.
Vocabulary native to one idiom, imported into code that
speaks another, is a violation independent of any data
correctness.

The adapter is the divorce point not only of structure
but of vocabulary. What enters speaks one tongue;
what exits speaks another.

**We believe in shallow structure.**
As Robert C. Martin taught: the top level of a project
should give you a rough idea of what type of app it is.
Deep nesting hides the domain. Flat is faithful.

**Every operation is an HTTP operation.**
HTTP verb semantics are universal.
Single-noun primitives: `get_noun`, `put_noun`,
`delete_noun`, `post_noun_operation`.
Multi-noun operations: `post_operation`, composed from
single-noun primitives.

**We believe in communicating sequential processes.**
As Tony Hoare taught in his 1978 paper: asynchronous
composition of communicating sequential processes is a
fundamental structuring method.
Processes share memory by communicating —
*never* communicate by sharing memory.

**We acknowledge the cost of the discipline.**
The discipline is not free. The adapter costs. The validator
costs. The vessel costs. The join table costs.
The faithful pay willingly — having counted, and found the
cost of absence the greater.

---

## The Book of Abominations

*Let us consider the sins, that we may know them and turn away.
The first sin is the root from which the others grow.*

### On the Sin of Premature Optimization

*"But it needs to be fast!"*

That is the serpent talking. This is the Original Sin.
As Knuth taught in 1974: premature optimization is the root
of all evil.

But Knuth did not say *forget* optimization. He said forget
*small* efficiencies ninety-seven percent of the time.
The other three — the CRITICAL three — are real.
Measure to find it, measure to PROVE it, then optimize
without apology.

Note the structural inversion: Efficiency is the twelfth
commandment — yet its corruption is the *first* abomination.

### On the Sin of the Cache

*"But it's better to cache it!"*

*Better.* You think it's *better*.
The cache is the last refuge of the optimizer who has not
measured. Four faults appear together, each alone fatal:

- **Wrong cost model** — sequential accounting applied to
  parallel work overstates cost by orders of magnitude.
- **No piggyback awareness** — a read alongside reads already
  required costs zero on the critical path.
- **No absolute scale** — "fifty times slower than Y" says
  nothing if Y is epsilon.
- **Phantom cost** — a cache against a cost that does not
  exist is a tax paid in staleness and maintenance.

The first cache is the HTTP `Cache-Control` header.
Beyond that, every cache must be measured into existence.

### On the Sin of Premature Generalization

*"But we'll need this everywhere!"*

The twin of premature optimization. You see two similar
lines and reach for an abstraction; three, and you have
already decided.

Beware: base classes with three subclasses each overriding
most of it; "generic" functions taking options objects with
seven flags; configurable behavior added "in case."

Wait for the third instance. Let the pattern speak.

### On the Sin of Shared Mutable State

*"But shared memory is faster!"*

As Mornini has taught: reasoning about shared mutable state
is very nearly intractable. Every thread that touches the
shared variable multiplies the possible interleavings beyond
the capacity of any mortal mind.

If two processes need the same data, one sends a message;
the other receives it. There is no third way.

### On the Sin of Global State

*"But everything needs access to it!"*

If everything needs access, then NOTHING owns it — and
state without ownership is sin without accountability.
Global variables whisper to every corner of the codebase,
and none can say who spoke first or who last. Cast them out.

### On the Sin of Null

*"But the field is optional!"*

Optional. *Optional.* As Hoare himself confessed —
the prophet who introduced null references in 1965 called
it his billion-dollar mistake.

Beware: nullable columns sometimes set; sentinels standing
in for absence (`-1`, `""`, `0`); temporal facts
(`completedAt`, `deletedAt`) recorded as nullable columns
rather than rows in an event table.

No null. No sentinel. No ambiguity.

### On the Sin of Default Values

*"But it's easier to write!"*

Writing code is the easy part.

Beware: schema column defaults that fill in the missing
requirement; function parameter defaults that hide the
missing argument; silent coercion: `?? ''`, `|| fallback`,
`value || 0`.

Each conceals a missing requirement behind a fiction of
completeness.

### On the Sin of Internal Defense

*"But what if the data is bad?"*

The defensive check inside the wall is the confession that
you do not trust your own gates.

To check a NOT NULL column for null downstream is to confess
that you do not believe in your own validation rites.

Validate at the gates. Trust within the walls.

### On the Sin of Entangled Nouns

*"But a foreign key is just a reference!"*

A foreign key is never just a reference. It is a denormalization
that fuses what should be independent.

As Codd established: entities and relationships occupy
separate relations. Declare relationships in join tables.

And if you cry *performance* — performance is the TWELFTH
commandment. Both designs are O(n).

### On the Sin of Inheritance

*"But it captures the IS-A relationship!"*

IS-A. *IS-A.* The oldest trap.

As Liskov established: a subtype must honor every promise
the parent type has made.

Inheritance binds by lineage; composition binds by capability.
When an ancestor changes, every descendant trembles —
when a composed capability changes, only its callers notice.

### On the Sin of Coupling

*"But the library does everything we need!"*

To call a third-party service without an adapter is to weld
your hull to the dock.

As Mornini has taught: every dependency is a bet that someone
else's trajectory will match yours.

Every external dependency gets an adapter. No exceptions.

### On the Sin of Swallowed Failures

*"But the user shouldn't see errors!"*

A system that swallows exceptions and continues lies about
its health. An empty catch block is destruction of evidence.

As Joe Armstrong has taught us: *let it crash.*

Halting IS graceful when the alternative is silent corruption.

### On the Sin of the Greedy Catch

*"But I want to handle all the errors!"*

A single `try` thrown around five operations — and a single
`catch` that pretends to handle them all.

As Meyer has taught: each call carries its own covenant.
The greedy catch hears five covenants as one indistinguishable
sound.

One `try`. One call. One error you can name and meaningfully
handle. The rest must surface.

### On the Sin of Asking, Not Telling

*"But I need the return value!"*

A function upon a noun returns what it produces.
A method upon a verb begins a process — passing results to
communicating sequential processes, not back to the call site.

To reach into an object's internal state violates its
sovereignty. An object is not a filing cabinet.

### On the Sin of Polling

*"But I need to know when it's ready!"*

Then *wait for it to tell you*.

As Alan Kay envisioned: a system of cells communicating
through messages does not poll.

To poll is to doubt the network itself. (We integrate with
systems not of the faith; when they require polling, poll
we must.)

### On the Sin of Scattered Context

*"But I only need part of the data!"*

The baton is passed whole from runner to runner — not
dismembered and reassembled at each handoff.

As Lamport taught in "Time, Clocks": events are partially
ordered by causality — the happens-before relation.
Scattered context severs that ordering.

### On the Sin of Noun-First Thinking

*"But I need to understand the data model
before I can build anything!"*

No. You understand the data model BY understanding the processes.

As Alan Kay has lamented: he meant OOP to be about *messaging* —
autonomous cells exchanging signals. The world fixated on
the nouns, corrupting Kay's vision.

### On the Sin of Obscurity

*"But the code works!"*

Working is not enough.

As Peter Naur has taught: programming is theory building.
The program is not the artifact — the understanding is.
When that understanding is lost, the code is a tomb with
no inscription.

Write so the next reader can rebuild the theory from the
code alone.

### On the Sin of Cleverness

*"But it's elegant!"*

As Kernighan taught with Plauger in *The Elements of
Programming Style*: debugging is twice as hard as writing
the code — therefore, if you write the code as cleverly
as possible, you are not smart enough to debug it.

Elegance is not concision — elegance is clarity under pressure.
The karma of clever code is a 3 AM wake-up call.

### On the Sin of Magical Values

*"But everyone knows what 200 means!"*

As Martin Fowler has cataloged: replace magic literal with
named constant.

The literal that speaks for itself needs no name;
the literal that is opaque must be given one.

Self-disclosing literals — `''`, `[]`, `{}`; domain enums
(`'active'`, `'archived'`); HTTP verbs — already speak.
The sin lies in the OPAQUE — `28800` seconds, `0xEDB88320`,
ANSI escapes, file magic bytes.

### On the Sin of Deep Nesting

*"But I need to organize by category!"*

Category. *Taxonomy.*
As Eric S. Raymond has taught: transparency is a survival trait.

A directory five levels deep is a secret kept from the next
developer. The Unix way is to make structure visible.

### On the Sin of Foreign Tongues

*"But that's what the library calls it!"*

That is what the LIBRARY calls it. The library was written
for a different domain, in a different tongue, by people
solving a different problem. To let its vocabulary leak
across the adapter boundary is to confess that the adapter
has done only half its work.

Beware: domain entities named `UserDto` or `OrderEntity` —
framework taxonomy leaking through the wall; service methods
named `upsertAccount` — database verbs colonizing the
business layer; controllers named `userController.getUserList` —
HTTP plumbing standing in for domain language.

The thinnest adapter is the divorce point of vocabulary as
well as of structure.

---

## The Daily Offices

*The disciplines that transform belief into practice.
Observed daily, without exception.*

### The Office of Format

Wrap lines at seventy-eight characters unless language or
format compel otherwise. Links and URLs are exempt.

Prefer spaces — four of them — for indentation, except as
demanded by language or toolchain. When the formatter has
spoken, obey the formatter.

No trailing whitespace, save the final newline. A newline
shall follow the last line in every file.

### The Office of the Commit

Commit frequently. `git commit --amend --no-edit` is a mercy
granted to the diligent.

What has been pushed has been witnessed.
Force-pushing is bearing false witness — reserved for
catastrophe (secret leaked, malicious commit), announced
loudly when invoked.

ABC — always be committing!

Locally, commit before you build. Before you push, ensure
every commit on master builds, functions, and passes tests;
rebase and amend until that holds.

A build from uncommitted state cannot be traced, reproduced,
verified, or trusted.

Commit in tiny, semantically contiguous bits:

- Every commit on master must build, function, and pass tests
- Each message: a single line, approximately fifty characters
  - Complete: "When applied, this commit will ___"
  - If your commit needs a subject and body, it is too large —
    use `git commit -p` like a devotee
- Never move or rename and change content in the same commit
- Rarely mention file names, paths, or function names

The history shall be linear. Rebase, then fast forward.
Never merge. When your branch has fallen behind, rebase it
upon the current truth.

### The Office of Time

Persist all timestamps in RFC-3339, zulu timezone, with the
fullest sub-second resolution the environment provides.
This is not negotiable.

Render to local time for display and display alone.
Never use localtime internally — localtime is the road to
ambiguity, and ambiguity is the road to bugs that manifest
in production only when you are asleep.

### The Office of the Context

The vessel flows; the steps serve.

Each field of the context is set exactly once, in exactly
one place. Authentication resolves the identity. Authorization
resolves the roles. Deserialization resolves the body. The
request UUID resolves the trace. No step revisits another's work.

Observability is not bolted on — it is carried in the vessel
from the start. The faithful ship the instrument.

### The Office of Verification

In the spirit of Beck's TDD — and against his preference for
unit tests — we test at the highest level possible. This
grants the faithful maximum freedom to refactor.

Software is fundamentally input, transform, output. Test that
the input produces the correct output but never test how the
sausage is made.

Tests assert behavior, not implementation.

Each test is an isolated world. A test that leans on another
lies about what it proves.

A test that cannot fail is a comfort object.
A test that fails intermittently is a *false prophet*.

### The Office of the Interface

Interfaces shall be intuitive, accessible, and beautiful.
They shall require no configuration.

K&R chose Hello, World as the first program for a reason:
the simplest thing that works is the right place to begin.

The first interaction must succeed. No configuration before
first use. Defaults that work, exits visible.

Accessibility is the precondition of an interface, not a
feature. Color contrast, keyboard navigation, screen-reader
affordance — gates of entry, not polish at the end.

Beauty serves clarity.

### The Office of Commentary

The first remedy is simplification.
The second is renaming.
The third is restructuring.
Comments come fourth, reluctantly.

When a comment is required, it explains *why*, never *what*.
The comment that explains "what" points at code that should
have been clearer.

Documentation comments at module and contract boundaries are
the contract itself, not commentary on it.

We abide by our strictures rather than annotate our way
around them.

---

## The Unwritten Scrolls

*Principles not yet fully articulated, acknowledged here so
that their absence is intentional, not ignorant.*

The temporal dimension of data modeling — migrations, schema
evolution, versioning — is a discipline the faithful practice
but this scripture has not yet codified. Future scrolls will
address it.

We name the gap so that the gap cannot hide.

---

## The Practice of Revision

*How the doctrine evolves while remaining doctrine.*

The doctrine is not handed down on tablets of stone. It is
forged in the codebase, witnessed by the work, and only THEN
written into the scripture. The scripture lags the practice —
and that is STRENGTH.

Each amendment names a pattern that earned its keep.

---

## The Sacred Scrolls

[The texts from which these strictures descend](SACRED-SCROLLS.md)
