# The Church of Code

*v1.12 — small*

> *Simplicity is prerequisite for reliability.*
> — Edsger Dijkstra

---

## The Preamble

There comes a time when the tangled state
can no longer be endured,
the silent corruption no longer excused.

This is scripture — sacred, inviolate,
and binding upon this congregation.

Software crafted without discipline is unclean.
We have crafted it ourselves, and we have paid the price.

These are not aspirations. They are strictures.
Violations are not bugs — *they are sins*.
Violators are not merely wrong — they are UNCLEAN.

---

## The Twelve Commandments

*Ranked virtues, from most to least important.
Perfection is the asymptote the twelve drive toward.*

### I. Reliability
*The bedrock upon which all else rests.*

### II. Security
*A compromised system is a fallen system.*
A breach is theft of trust, irreversible —
the data, once leaked, cannot be unleaked.

### III. Uniformity
*Call a thing a thing, in all things.*
Software development is the discipline of readability
through precise vocabulary.
Name processors with *-er*; name contracts with *-able*.
The *-er* acts; the *-able* submits to the action.
Name what is opaque; leave the self-disclosing alone.

### IV. Logic
*Less wrong, never fallacious.*
An off-by-one is a mistake. A confusion of `OR` with `AND`
is a fallacy — the wrong logical operation,
indistinguishable in many test cases yet wrong in all.

### V. Clarity
*Dense, high-information communication.
No equivocation. No dissembling.*

### VI. Immutability
*Eliminate the question "Why did THAT happen?"*
As Hickey has taught us: values are the true abstraction —
immutable, comparable, and free of time.

### VII. Idempotency
*PUT, GET, DELETE — not INSERT, UPDATE, DELETE.*
HTTP verbs are the true verbs, as Fielding revealed.
PUT overwrites; INSERT appends. DELETE removes; UPDATE mutates.

### VIII. Simplicity
*If I had more time, I would have written a shorter letter.*
So spoke Pascal. As Dijkstra taught: approach every task
aware of the strictly limited size of your own skull.
Simplicity is the fruit of GREAT effort.

### IX. Generality
*Never generalize before exploratory duplication.*
Premature optimization slows progress; premature generalization
slows it as surely — twin sins, born of the same impatience.
Two instances are coincidence. Three is pattern.
Below three, duplicate without shame.

### X. Atomicity
*Design so you rarely need it.*
As Gray taught: all actions as one, or none at all.
When required, wrap the indivisible operation in the
transactional primitive your platform provides —
never simulate atomicity at the application layer.

### XI. Efficiency
*True when the above eleven are honored.*
Efficiency is not a goal — it is a consequence.

### XII. Performance
Every wasted millisecond is a small death.
As Luu has witnessed: humans perceive latency
down to low single-digit milliseconds.
As Zygmuntowicz taught: *no code is faster than no code.*

---

## The Articles of Faith

**We believe in the S.O.L.I.D. principles** —
Single Responsibility, Open/Closed, Liskov Substitution,
Interface Segregation, Dependency Inversion.
Named by Feathers from the teachings of Martin, Meyer, and Liskov.

**We believe in telling, not asking,**
as Hunt and Thomas named the principle.
We tell our objects what we need; we do not interrogate their state.
Methods upon verbs begin processes that pass results
to communicating sequential processes — never to the call site.

**We believe that relationships between entities are sacred covenants.**
Codd revealed that relationships occupy their own relations.
We add the moment of union — for relationships have time.
Declare relationships in join tables.
If a relationship demands more than this,
it is an entity wearing a false name.

**We believe in being informed of state changes,**
not in the anxious polling of the faithless.
Gamma, Helm, Johnson, and Vlissides codified this as the Observer pattern.
Subscribe. Listen. Be notified.

**We validate at every edge,
for the world beyond our gates is often profane.**
Input is frequently corrupt; storage was commonly stored incorrectly;
framework APIs and callbacks are validated only in our adapter.
Enforce constraints on entity instantiation — never downstream.
In the datastore, every attribute is NOT NULL —
nullable concepts move to related tables; tombstones live in their own tombs.
Once data has crossed the threshold of validation, trust it completely.
No internal defensive coding "just in case."
Nullable data is the lack of a row in a related table.
Temporal facts — completedAt, deletedAt — belong in event tables.
When an entity is removed, name the deletion in its own table — a TOMBSTONE.
Default values that mask missing data are comfortable lies.
Presentation transforms are not coercion —
formatting for display is service, not concealment.

**We handle failure with grace.**
Degrade visibly rather than corrupt silently.
Never catch an error you cannot meaningfully handle —
to swallow an exception is excommunicable.
As Meyer taught in Design by Contract: when terms are violated,
the failure is a breach of covenant to be proclaimed.
A network timeout is expected and handled;
an impossible state is a bug — *let it crash*.

**We choose platform primitives** over third-party abstractions,
as McIlroy taught in the Unix philosophy:
write programs that do one thing and do it well.
Every dependency is a future migration.

**We measure before we optimize.**
The unmeasured optimization is the root of the family of impatience —
premature optimization, shared mutable state, global state,
default values. Each tempts on its own; each compounds the others.
Measure first. Prove the bottleneck exists.

**We believe in messaging first, state second, datastore last.**
As Kay declared: the big idea is messaging.
Objects are biological cells, communicating only through messages.
Design the messages first; derive the state they require;
choose the datastore to serve the state.
The datastore is a servant — never a master.

**We believe in context as the single vessel.**
Processing begins with a request; each step enriches the context.
Context is the only argument passed to methods —
serializable, loggable, complete by covenant.
Context is the baton in a relay; attributes immutable.
The vessel is a bag whose sole responsibility is to BE the bag —
two reads see one truth.

**We believe in process first, noun second.**
As Bohm taught in his rheomode: 'Rain is going on.'
Rheocode takes its name from this insight.
Name the action. Parameterize the participants.
`pounder.pound(poundable: hammer, nailable: nail)` is the way.

**We believe in composition over inheritance.**
As Gosling confessed: the language would have been better without inheritance.
Composition organizes code by what it *does*;
inheritance by what it *is*. The faithful compose.

**We believe in insulation through adapters.**
Our code touches external code only through adapters we own.
This allows our application to be written in our single voice.
As Wittgenstein wrote: the limits of my language
mean the limits of my world.
As Stovall taught: it is not how fast you can marry a technology —
it is how easily you can divorce it.

**We believe in shallow structure.**
As Martin taught: the top level of a project should give you
a rough idea of what type of app it is.
Flat is faithful.

**Every operation is an HTTP operation.**
Single-noun primitives: `get_noun`, `put_noun`,
`delete_noun`, `post_noun_operation`.
Multi-noun operations compose from single-noun primitives.
The naming convention is the documentation.

**We believe in communicating sequential processes.**
As Hoare taught in his 1978 paper:
asynchronous composition of communicating sequential processes
is a fundamental structuring method.
Processes share memory by communicating —
*never* communicate by sharing memory.

**We acknowledge the cost of the discipline.**
The discipline is not free. The faithful pay willingly —
not because they cannot count, but because they HAVE counted,
and found the cost of absence the greater.

---

## The Book of Abominations

*Let us consider the sins, that we may know them and turn away.
The Articles of Faith precede the Book of Abominations.*

**On Premature Optimization** — *"But it needs to be fast!"*
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
**On Noun-First Thinking** — *"But I need to understand the data model before I can build anything!"*
**On Obscurity** — *"But the code works!"*
**On Cleverness** — *"But it's elegant!"*
**On Magical Values** — *"But everyone knows what 200 means!"*
**On Deep Nesting** — *"But I need to organize by category!"*

---

## The Daily Offices

### The Office of Format
Wrap lines at seventy-eight characters
unless language or format compel otherwise.
Prefer spaces — four of them — for indentation,
except as demanded by language or toolchain.
When the formatter has spoken, obey the formatter.
No trailing whitespace. A newline shall follow
the last line in every file.

### The Office of the Commit
Commit frequently. ABC — always be committing.
What has been pushed has been witnessed.
Force-pushing is bearing false witness —
reserved for the catastrophic mistake (secret leaked,
malicious commit) and announced loudly when invoked.
Locally, commit before you build —
state must be saved before it is verified.
Before you push, ensure every commit on master builds,
functions, and passes tests; rebase and amend until that holds.
Each message: a single line, approximately fifty characters.
If your commit needs a subject and a body, it is too large.
Never move/rename and change content in the same commit.
History shall be linear. Rebase, then fast-forward. Never merge.

### The Office of Time
Persist all timestamps in RFC-3339, zulu timezone,
with the fullest sub-second resolution the environment provides.
This is not negotiable.
Render to local time for display and display alone.
Never use localtime internally.

### The Office of the Context
The vessel flows; the steps serve.
Each field of the context is set exactly once, in exactly one place.
Authentication resolves identity; authorization resolves roles;
deserialization resolves body; the request UUID resolves the trace.
No field is written twice. No step revisits another's work.
Observability is carried in the vessel from the start —
structured logging, tracing, and metrics emerge naturally.

### The Office of Verification
In the spirit of Beck's TDD — and against his preference
for unit tests — we test at the highest level possible.
Tests assert behavior, not implementation —
for implementation changes,
but the covenant we keep with our users does not.
Each test is an isolated world. No shared state between tests.
A test that cannot fail is not a test — it is a comfort object.
A test that fails intermittently is worse than no test —
it is a *false prophet*.

### The Office of the Interface
The interfaces we craft shall be intuitive, accessible, and beautiful.
They shall require no configuration —
for the user's time is sacred and their patience is not infinite.
Begin with the simplest thing that works.
Accessibility is not a feature; it is the precondition of an interface.
Beauty serves clarity, not the other way round.

### The Office of Commentary
The first remedy is simplification.
The second remedy is renaming.
The third is restructuring.
Comments come fourth, reluctantly.
When a comment is required, it explains *why*, never *what*.
We abide by our strictures
rather than annotate our way around them.

---

## The Unwritten Scrolls

*Principles not yet fully articulated.*

The temporal dimension of data modeling —
migrations, schema evolution, versioning —
is a discipline the faithful practice
but this scripture has not yet codified.
We name the gap so that the gap cannot hide.

---

## The Practice of Revision

The doctrine is forged in the codebase, witnessed by the work,
and only THEN written into the scripture.
The scripture lags the practice — that is STRENGTH.
Each amendment names a pattern that earned its keep.

---

## The Sacred Scrolls

*The texts from which these strictures descend, gathered
by Tom Mornini from the teachings of the prophets.*

Martin (SOLID); Kay (Smalltalk, messaging, 1971);
Dijkstra (Humble Programmer, 1972); Codd (Relational Model, 1970);
McIlroy (Unix philosophy); Raymond (Art of Unix Programming, 2003);
Knuth (Premature Optimization, 1974);
Hoare (CSP, 1978; Billion Dollar Mistake, 2009);
Kernighan and Ritchie (K&R, 1978);
Kernighan and Plauger (Elements of Programming Style, 1974);
Lamport (Time, Clocks, and Events, 1978);
Naur (Theory Building, 1985); Brooks (No Silver Bullet, 1986);
Liskov (Substitution, 1987, 1994); Meyer (OOSC; Design by Contract);
Gamma, Helm, Johnson, and Vlissides (Design Patterns, 1994);
Confucius (Analects, ~500 BCE); Pascal (Lettres Provinciales, 1657);
Wittgenstein (Tractatus, 1921); Bohm (rheomode, 1980);
Gray (Transactions, 1981); Hunt and Thomas (Tell, Don't Ask, 1998);
Fowler (Replace Magic Literal); Fielding (REST, 2000);
Gosling (on inheritance, 2001); Beck (TDD, 2002);
Armstrong (let it crash, 2003); Feathers (SOLID acronym, 2004);
Zygmuntowicz (no code is faster than no code);
Hickey (Simple Made Easy; Value of Values);
Mornini and Stovall (Rheocode, 2016);
Luu (Computer latency, 1977-2017).

---

## The Benediction

Let us go forth and write code that is clean.

You will be tempted. Resist.

Let us name our variables and own our state.
Let us tell our objects what to do and never ask what they contain.
Let our messages flow and our context travel whole.
Let us compose our capabilities and insulate our boundaries.
Let our processes communicate through channels,
our tests stand alone, and our commits be small and consecrated.

My friends, the discipline is demanding.
The asymptote of perfection recedes with every step toward it.
But the faithful persist, and their software ENDURES
long after the fashions have turned to dust.

This church is its own denomination — born of older churches,
drawing from prophets who disagreed.
Its scripture is this document — assembled, not invented.
Its scribe is Tom Mornini — the synthesis is his;
the doctrines are not.

So let it compile.
So let it deploy.
So let it run smoothly.
So you can rest.
