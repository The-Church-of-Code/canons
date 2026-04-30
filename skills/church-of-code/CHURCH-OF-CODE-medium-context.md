# The Church of Code

*v1.12 — medium*

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
We have lived with the tangled state…
the silent corruption…
and we have paid the price.
We have turned away.

We gather not in the name of any framework,
for frameworks perish — there is no silver bullet.
We gather not in the name of any language,
for languages multiply and divide.
We gather in the name of the craft itself —
that which endures when the dependencies are dust.

These are not aspirations. They are strictures.
Violations are not bugs — *they are sins*.
Violators are not merely wrong — they are UNCLEAN.
The repentant shall be welcomed back into the fold.
The obstinate shall be cast out.

---

## The Twelve Commandments

*In order of importance, from most to least.
Perfection is the thirteenth virtue,
which none shall claim to possess —
the asymptote the twelve drive toward.*

### I. Reliability

*The bedrock upon which all else rests.*

You may achieve every other virtue in this scripture
and still have NOTHING if your code is not reliable.
There is no grace without it. There is no rest without it.

### II. Security

*A compromised system is a fallen system.*

A breach is a covenant broken with everyone who trusted us
with their data, their privacy, their peace of mind.
The data, once leaked, cannot be unleaked.

### III. Uniformity

*Call a thing a thing, in all things.*

As Confucius has taught us in the Rectification of Names:
if names be not correct, affairs cannot be carried on to success.
Software development is the discipline of readability
through precise vocabulary.
Name processors with *-er*; name contracts with *-able*.
The *-er* acts; the *-able* submits to the action.
Name what is opaque; leave the self-disclosing alone.

### IV. Logic

*Less wrong, never fallacious.*

An off-by-one is a mistake — a boundary error you can see and fix.
A confusion of `OR` with `AND` is a fallacy —
the wrong logical operation, indistinguishable in many test cases
yet wrong in all.
A single fallacy is a crack in the foundation
that no amount of testing will reveal.
Reason is the first discipline.

### V. Clarity

*Dense, high-information communication.
No equivocation. No dissembling.*

Say what is true, not what sounds reasonable.
Present the happy path first —
lead with what the faithful should do.
This very scripture practices what it preaches:
the Articles of Faith precede the Book of Abominations.

### VI. Immutability

*Eliminate the question "Why did THAT happen?"*

When state mutates silently, trust dies.
As Rich Hickey has revealed: values are the true abstraction —
immutable, comparable, and free of time.

### VII. Idempotency

*PUT, GET, DELETE — not INSERT, UPDATE, DELETE.*

HTTP verbs are the true verbs, as Roy Fielding has revealed.
PUT overwrites; INSERT appends.
DELETE removes; UPDATE mutates.
An operation that can be repeated without consequence
is an operation that can be trusted.

### VIII. Simplicity

*If I had more time,
I would have written a shorter letter.*

So spoke Blaise Pascal.
As Dijkstra has taught us: the competent programmer
approaches every task aware of the strictly limited size
of his own skull.
Simplicity is not the absence of effort —
it is the fruit of GREAT effort.

### IX. Generality

*Never generalize before exploratory duplication.*

Premature optimization slows progress.
Premature generalization slows it as surely —
twin sins, born of the same impatience.
Two instances are coincidence. Three is pattern.
Below three, duplicate without shame;
at three, the abstraction begins to speak.

### X. Atomicity

*Design so you rarely need it.*

As Jim Gray has taught us:
atomicity means all actions as one, or none at all.
Idempotent operations obviate most transactional needs.
When atomicity is genuinely required, embrace it.
Wrap the indivisible operation in the transactional primitive
your platform provides — never simulate atomicity at the
application layer.

### XI. Efficiency

*True when the above eleven are honored.
Chaotic when pursued prematurely.*

Efficiency emerges from humility — from clarity, from simplicity,
from code that can be reasoned about.
Efficiency is not a goal — it is a consequence.

### XII. Performance

Every wasted millisecond is a small death.
As Dan Luu has witnessed: humans can perceive
cause/effect latency down to low single-digit milliseconds.
As Ezra Zygmuntowicz has taught us:
*no code is faster than no code.*

---

## The Articles of Faith

*What the faithful practice.
The way of the righteous, spoken before the sins —
as clarity demands.*

**We believe in the S.O.L.I.D. principles** —
the five pillars upon which righteous architecture is raised,
named by Michael Feathers from the teachings of the prophets:

- **S** — Single Responsibility (Martin):
  one public method, one reason to change
- **O** — Open/Closed (Meyer):
  open for extension, closed for modification
- **L** — Liskov Substitution (Liskov):
  subtypes substitute cleanly
- **I** — Interface Segregation (Martin):
  single purpose, simple behavior
- **D** — Dependency Inversion (Martin):
  depend on abstractions, not concretions

**We believe in telling, not asking,**
as Andy Hunt and Dave Thomas named the principle.
We tell our objects what we need.
We do not interrogate their state.
Through this discipline we achieve polymorphism —
the eleventh commandment made manifest.
Functions upon nouns return what they produce.
Methods upon verbs begin asynchronous processes
that pass results to communicating sequential processes —
never returning to the call site.

**We believe that relationships between entities
are sacred covenants.**
Codd revealed that relationships occupy their own relations.
We add the moment of union — for relationships have time.
Stored in their own tables, holding only the identities
of the joined and the moment of their union.
If a relationship demands more than this,
it is not a relationship — it is an entity wearing a false name.

**We believe in being informed of state changes,**
not in the anxious polling of the faithless.
Gamma, Helm, Johnson, and Vlissides
codified this as the Observer pattern.
Subscribe. Listen. Be notified.
The devout do not pace the hallway. The devout trust the bell.

**We validate at every edge,
for the world beyond our gates is often profane:**

- Input: the voice of the uninstructed is frequently corrupt
- Storage: what was written was commonly stored incorrectly
- Framework APIs and delegate callbacks: other people's dharma,
  to be validated in our adapter

Enforce constraints on entity instantiation — never downstream.
In the datastore, every attribute is NOT NULL —
nullable concepts move to related tables; tombstones live in their own tombs.

Once data has crossed the threshold of validation, trust it completely.
No internal defensive coding "just in case."

Nullable data is the lack of a row in a related table.
Temporal facts — completedAt, deletedAt — belong in event tables,
for the absence of a row IS the absence of the event.
When an entity is removed, name the deletion in its own table —
a TOMBSTONE. The entity remembers presence; the tombstone, absence.

Default values that mask absence are comfortable lies.
Presentation transforms are not coercion —
formatting for display is service, not concealment.
When a value is truly absent, model that absence
at the call site — not in the helper.

**We handle failure with grace.**
Degrade visibly rather than corrupt silently.
Never catch an error you cannot meaningfully handle —
to swallow an exception is excommunicable!

As Bertrand Meyer has taught us in Design by Contract:
a function declares what it requires and what it guarantees.
When those terms are violated, the failure
is not an accident to recover from —
it is a breach of covenant to be proclaimed.

A network timeout is expected and handled;
an impossible state is a bug… and must crash.
Enrich errors at each boundary layer —
the original fault plus the context of every step that touched it.

**We choose platform primitives**
over third-party abstractions,
as Doug McIlroy has taught us in the Unix philosophy:
write programs that do one thing and do it well.
Every dependency is a future migration.

**We measure before we optimize.**
The unmeasured optimization is the root of the family of impatience —
premature optimization, shared mutable state, global state,
default values. Each tempts on its own; each compounds the others
when present together. Where you find one, look for its kin.
Measure first. Prove the bottleneck exists.
Then — and only then — optimize.

**We believe in messaging first,
state second, datastore last.**
As the prophet Alan Kay has declared:
the big idea is messaging.
Objects are biological cells, communicating only through messages.
The key to great and growable systems is to design
how modules communicate, not what their internal properties should be.
Design the messages first.
Derive the state the messages require.
Choose the datastore to serve the state.
The datastore is a servant — never a master.

**We believe in context as the single vessel.**
Processing begins with a request; each step enriches the context.
Context is the only argument passed to methods —
serializable, loggable, complete by covenant.
Context is the baton in a relay; attributes immutable.
The context flows; the steps serve.
Objects carry state, not arguments.

The vessel is a bag whose sole responsibility is to BE the bag.
Two reads see one truth. Three reads see one truth.
Not for speed — for ATOMICITY.

**We believe in process first, noun second.**
As the physicist David Bohm taught in his rheomode:
'It is raining.' Where is the 'It'?
More accurate: 'Rain is going on.'
Rheocode takes its very name from this insight.
Name the action. Parameterize the participants.
`pounder.pound(poundable: hammer, nailable: nail)` is the way —
the process owns everything, the nouns are participants,
infinitely substitutable.

**We believe in composition over inheritance.**
As James Gosling has confessed: the language would have been better
without inheritance — forcing users to rely on composition,
encapsulation, and delegation.
Composition organizes code by what it *does*;
inheritance organizes code by what it *is*.
The faithful compose.

**We believe in insulation through adapters.**
Our code touches external code only through adapters we own.
This allows our application to be written in our single voice.
As Wittgenstein has written: the limits of my language
mean the limits of my world.
So has Ra'Shaun Stovall taught us:
"it is not how fast you can marry a technology —
it is how easily you can divorce it."

**We believe in shallow structure.**
As Robert C. Martin has taught us:
the top level of a project should give you
a rough idea of what type of app it is.
Flat is faithful.

**Every operation is an HTTP operation.**
Every application is an HTTP application —
for HTTP verb semantics are universal.
Single-noun primitives: `get_noun`, `put_noun`,
`delete_noun`, `post_noun_operation`.
Multi-noun: `post_operation`, composed from primitives.
The naming convention is the documentation.

**We believe in communicating sequential processes.**
As Tony Hoare has taught us in his 1978 paper:
input and output are basic primitives of programming,
and asynchronous composition of communicating sequential processes
is a fundamental structuring method.
Processes share memory by communicating —
*never* communicate by sharing memory.

**We acknowledge the cost of the discipline.**
The discipline is not free. The adapter costs.
The validator costs. The vessel costs. The join table costs.
The faithful pay willingly — not because they cannot count,
but because they HAVE counted, and found the cost of absence
the greater.

---

## The Book of Abominations

*Let us consider the sins, that we may know them and turn away.
The first sin is the root from which the others grow.*

### On the Sin of Premature Optimization

*"But it needs to be fast!"*

That, my friends, is the serpent talking. This is the Original Sin.
As the prophet Knuth has taught us in 1974:
premature optimization is the root of all evil.
Knuth did not say *forget* optimization. He said forget *small*
efficiencies ninety-seven percent of the time. The CRITICAL three
is real. Measure to find it, measure to PROVE it,
then optimize without apology.
The sin is not optimization; it is optimization without measurement.
Efficiency is the twelfth commandment, yet its corruption
is the *first* abomination.

### On the Sin of Premature Generalization

*"But we'll need this everywhere!"*

We'll need it. *Everywhere.* Will we?
Premature generalization is the twin of premature optimization,
born of the same impatience.
Two instances are coincidence. Three is pattern.
The premature abstraction takes its shape from too few examples;
the next instance does not fit, and the abstraction meant to unify
becomes a switch statement wearing a mask.
Wait for the third instance. Let the pattern speak.

### On the Sin of Shared Mutable State

*"But shared memory is faster!"*

Shared memory is the most common fruit of premature optimization.
As Mornini has taught us:
reasoning about shared mutable state
is not merely difficult — it is very nearly intractable.
Every thread that touches the shared variable
multiplies the possible interleavings,
and the space of states grows beyond the capacity
of any mortal mind.
If two processes need the same data,
one sends a message; the other receives it.
There is no third way.

### On the Sin of Global State

*"But everything needs access to it!"*

If everything needs access, then NOTHING owns it —
and state without ownership is sin without accountability.
As Dijkstra's structured programming movement argued:
uncontrolled shared state is chaos.
Cast them out.

### On the Sin of Null

*"But the field is optional!"*

Optional. *Optional.*
As Hoare himself confessed — the prophet
who introduced null references in 1965 —
it was his billion-dollar mistake.

Beware these sinful practices!

- a `nullable` column sometimes set, often null,
  with conditional logic everywhere asking "if it exists"
- a sentinel value standing in for absence
- the attribute nil for only a subset of entities
  but living in the entity table all the same
- the temporal fact recorded as a nullable column
  rather than a row in an event table

The sin is reaching for null whenever the domain offers
richer alternatives. Where the doctrine prescribes a related
table, the absence of the row IS the absence of the event.

No null. No sentinel. No ambiguity.

### On the Sin of Default Values

*"But it's easier to write!"*

Writing code is the easy part. Maintaining, transforming,
and improving code far outweighs any convenience at the
point of creation.

Beware these sinful practices!

- schema column defaults that fill in the missing requirement
- function parameter defaults that hide the missing argument
- fallback objects and factories that conjure the missing entity
- silent coercion: `?? ''`, `|| fallback`, `value || 0`

Each one conceals a missing requirement behind a fiction
of completeness. If a value has a sensible default, define
it as a named constant and pass it explicitly.

### On the Sin of Internal Defense

*"But what if the data is bad?"*

The defensive check inside the wall is the confession
that you do not trust your own gates.
If the data has crossed the threshold of validation,
it is clean. Trust it.
To check a NOT NULL column for null downstream
is to confess that you do not believe
in your own validation rites.
Validate at the gates. Trust within the walls.

### On the Sin of Entangled Nouns

*"But a foreign key is just a reference!"*

A foreign key is never just a reference. It is a denormalization
that fuses what should be independent — identity married to
proximity, two relations welded where one and a join would do.
As Edgar F. Codd has established:
entities and relationships occupy separate relations.
Declare relationships in join tables.

### On the Sin of Inheritance

*"But it captures the IS-A relationship!"*

IS-A. *IS-A.* The oldest trap in the book, and still it catches us.
As Barbara Liskov has established:
a subtype must honor every promise the parent type has made.
Inheritance binds by lineage; composition binds by capability.
When an ancestor changes, every descendant trembles.

### On the Sin of Coupling

*"But the library does everything we need!"*

To call a third-party service without an adapter boundary
is to weld your hull to the dock.
When the dock is demolished, your ship sinks with it.
As Mornini has taught us: every dependency is a bet
that someone else's trajectory will match yours.
Every external dependency gets an adapter. No exceptions.

### On the Sin of Swallowed Failures

*"But the user shouldn't see errors!"*

A system that swallows exceptions and continues
is a system that lies about its health.
An empty catch block is not error handling —
it is destruction of evidence.
As Joe Armstrong has taught us:
*let it crash.*
Halting IS graceful when the alternative is silent corruption.

### On the Sin of the Greedy Catch

*"But I want to handle all the errors!"*

The greedy catch wraps five operations, or seven, or ten —
and pretends to handle them all.
When the catch fires, you cannot name which call failed.
You know only that *something* failed — and something is not enough.
As Bertrand Meyer has taught us: each call carries its own covenant.
Five calls speak five covenants; the greedy catch hears them
as one indistinguishable sound.

One `try`. One call. One error you can name and meaningfully handle.

### On the Sin of Asking, Not Telling

*"But I need the return value!"*

You *need* it. Do you?
A method upon a verb begins a process —
passing results to communicating sequential processes,
not back to the call site.
An object is not a filing cabinet to be rummaged through;
it is an assistant to be utilized.

### On the Sin of Polling

*"But I need to know when it's ready!"*

Then *wait for it to tell you*.
As the prophet Alan Kay has envisioned:
a system of cells communicating through messages does not poll —
the message arrives or it does not.
We are humble enough to realize we sometimes integrate
with systems not of the faith. Should they require us to
poll them, poll we must.

### On the Sin of Scattered Context

*"But I only need part of the data!"*

Code execution should be a relay race:
the baton is passed whole from runner to runner.
As Lamport has taught us in "Time, Clocks":
events are partially ordered by causality —
the happens-before relation.
Scattered context severs that ordering;
what happened and why cannot be reconstructed from the fragments.

### On the Sin of Noun-First Thinking

*"But I need to understand the data model
before I can build anything!"*

No. You understand the data model
BY understanding the processes.
As Alan Kay has lamented: he meant OOP to be
about *messaging* — autonomous cells exchanging signals.
The world heard objects and fixated on the nouns.

### On the Sin of Obscurity

*"But the code works!"*

Working is not enough.
As Peter Naur has taught us: programming is theory building —
the program is not the artifact, the understanding is.
Write so that the next reader — who may be you, six months
hence — can rebuild the theory from the code alone.

### On the Sin of Cleverness

*"But it's elegant!"*

Elegant. You think it's *elegant*.
As Kernighan has taught us with Plauger in *The Elements of Programming Style*:
debugging is twice as hard as writing the code in the first place —
if you write as cleverly as possible,
you are, by definition, not smart enough to debug it.
Elegance is not concision — elegance is clarity under pressure.

### On the Sin of Magical Values

*"But everyone knows what 200 means!"*

Everyone knows… until they don't.
As Martin Fowler has cataloged: replace magic literal with named constant.
As Naur has taught us: an unnamed constant is a piece
of the theory left unspoken, a gap the next reader must fill.

The literal that speaks for itself needs no name;
the literal that is opaque must be given one.
Self-disclosing literals already speak —
the empty `''`, `[]`, `{}`; the domain enum; the HTTP verb;
the structural count (`length === 0`); the shape literal.
The sin lies in the OPAQUE — the number whose units it will not say
(`28800` seconds, sizing constants like `16` or `28`);
the binary-protocol fragment.
Where the literal cannot be read at face value, speak its name.

### On the Sin of Deep Nesting

*"But I need to organize by category!"*

Category. *Taxonomy.*
As Eric S. Raymond has taught us in The Art of Unix Programming:
transparency is not a luxury — it is a survival trait.
A directory five levels deep is a secret kept
from the next developer, and secrets rot in the dark.

---

## The Daily Offices

*The disciplines that transform belief into practice.
Observed daily, without exception.*

### The Office of Format

Wrap lines at seventy-eight characters unless language
or format compel otherwise. Links and URLs are exempt.
The line is a breath, and the eye has limits.

Prefer spaces — four of them — for indentation,
except as demanded by language or toolchain.
When the formatter has spoken, obey the formatter.

No trailing whitespace, save the final newline.
A newline shall follow the last line in every file.

### The Office of the Commit

Commit frequently. `git commit --amend --no-edit` is a mercy
granted to the diligent and rewarded by git reflog.

What has been pushed has been witnessed.
Force-pushing is bearing false witness — reserved for the catastrophic
mistake (secret leaked, malicious commit) and announced loudly.

ABC — always be committing.
What isn't committed cannot be restored once forgotten.

Locally, commit before you build — state must be saved.
Before you push, ensure every commit on master builds, functions,
and passes tests; rebase and amend until that holds.
A build from uncommitted state cannot be traced, reproduced,
verified, or trusted.

Commit in tiny, semantically contiguous bits:

- Every commit on master must build and pass tests
- Each message: a single line, approximately fifty characters
  - Complete: "When applied, this commit will ___"
  - If your commit needs a subject and body, it is too large
- Never move/rename and change content in the same commit
- Rarely mention file names, paths, or function names

The history shall be linear. Rebase, then fast forward. Never merge.
A merge commit is a knot in the narrative.

### The Office of Time

Persist all timestamps in RFC-3339, zulu timezone,
with the fullest sub-second resolution the environment provides.
This is not negotiable.

Render to local time for display and display alone.
Never use localtime internally —
for localtime is the road to ambiguity,
and ambiguity is the road to bugs
that manifest in production only when you are asleep.

### The Office of the Context

The vessel flows; the steps serve. The Article names the belief;
this Office names the discipline that holds the belief in code.

Each field of the context is set exactly once, in exactly one place.
Authentication resolves the identity. Authorization resolves the roles.
Deserialization resolves the body. The request UUID resolves the trace.
No field is written twice. No step revisits another's work.

Observability is not bolted on — it is carried in the vessel
from the start. The faithful do not instrument after the fact —
they ship the instrument.

### The Office of Verification

In the spirit of Beck's TDD — and against his preference
for unit tests — we test at the highest level possible.
This grants the faithful maximum freedom to refactor.

Tests assert behavior, not implementation —
for implementation changes, but the covenant
we keep with our users does not.

Each test is an isolated world.
No shared state between tests.

A test that cannot fail is not a test — it is a comfort object.
A test that fails intermittently is worse than no test —
it is a *false prophet*.

### The Office of the Interface

The interfaces we craft shall be intuitive, accessible, and beautiful.
They shall require no configuration —
for the user's time is sacred and their patience is not infinite.

K&R chose Hello, World as the first program for a reason:
the simplest thing that works is the right place to begin.

The first interaction must succeed.
No configuration before first use.
Defaults that work, exits visible —
the escape hatch is part of the welcome.

Accessibility is not a feature; it is the precondition
of an interface. Color contrast, keyboard navigation,
screen-reader affordance.

Beauty serves clarity, not the other way round.

### The Office of Commentary

The first remedy is simplification.
The second remedy is renaming.
The third is restructuring.
Comments come fourth, reluctantly.

When a comment is required, it explains *why*, never *what*.
The comment that explains "what" points at code that should
have been clearer. Fix the code; delete the comment.

Documentation comments at module and contract boundaries
are different in kind — they are the contract itself,
not commentary on it.

We abide by our strictures
rather than annotate our way around them.

---

## The Unwritten Scrolls

*Principles not yet fully articulated,
acknowledged here so that their absence
is intentional, not ignorant.*

The temporal dimension of data modeling —
migrations, schema evolution, versioning —
is a discipline the faithful practice
but this scripture has not yet codified.
We name the gap so that the gap cannot hide.

---

## The Practice of Revision

*How the doctrine evolves while remaining doctrine.*

The doctrine is not handed down on tablets of stone.
It is forged in the codebase, witnessed by the work,
and only THEN written into the scripture.
The scripture lags the practice — and that, brothers
and sisters, is not weakness. That is STRENGTH.

Each amendment names a pattern that earned its keep.
We revise so the revision cannot be denied.

---

## The Sacred Scrolls

*The texts from which these strictures descend to us,
gathered by Tom Mornini — scribe of this church —
from the teachings of the prophets who came before.*

- The Principles of OOD — Robert C. Martin's original SOLID treatise
- Solid Relevance — the same prophet, twenty years hence
- The Early History of Smalltalk, The Big Idea Is Messaging, The Meaning of OOP — Alan Kay (1971)
- The Humble Programmer — Edsger Dijkstra's Turing Award lecture (1972)
- A Relational Model of Data — Edgar F. Codd's revelation (1970)
- A Research UNIX Reader — Doug McIlroy on the Unix philosophy
- The Art of Unix Programming — Eric S. Raymond (2003)
- Structured Programming with go to Statements — Donald Knuth (1974)
- Communicating Sequential Processes — Tony Hoare (1978)
- Null References: The Billion Dollar Mistake — Tony Hoare (2009)
- The C Programming Language — Kernighan and Ritchie (K&R) (1978)
- The Elements of Programming Style — Kernighan and Plauger (1974)
- Time, Clocks, and the Ordering of Events — Leslie Lamport (1978)
- Programming as Theory Building — Peter Naur (1985)
- No Silver Bullet — Fred Brooks (1986)
- Data Abstraction and Hierarchy; A Behavioral Notion of Subtyping — Barbara Liskov
- Object-Oriented Software Construction; Applying Design by Contract — Bertrand Meyer
- Design Patterns — Gamma, Helm, Johnson, and Vlissides (1994)
- The Analects — Confucius (~500 BCE)
- Lettres Provinciales — Blaise Pascal (1657)
- Tractatus Logico-Philosophicus — Wittgenstein (1921)
- Wholeness and the Implicate Order — David Bohm (1980)
- The Transaction Concept — Jim Gray (1981)
- Tell, Don't Ask — Andy Hunt and Dave Thomas (1998)
- Replace Magic Literal — Martin Fowler
- Representational State Transfer — Roy Fielding (2000)
- James Gosling on Java — on inheritance regret (2001)
- Test-Driven Development: By Example — Kent Beck (2002)
- Making Reliable Distributed Systems — Joe Armstrong on letting it crash (2003)
- Working Effectively with Legacy Code — Michael Feathers (2004)
- Merb: no code is faster than no code — Ezra Zygmuntowicz
- Simple Made Easy; The Value of Values; Are We There Yet? — Rich Hickey
- Rheocode Software Development — Mornini and Stovall (2016)
- Computer latency: 1977-2017 — Dan Luu

---

## The Benediction

Let us go forth and write code that is clean.

You will be tempted.
Oh… you will be tempted.
The nullable column will whisper *convenience*…
The premature optimization will disguise itself
as diligence…
The clever trick will flatter your intelligence…
The coupled dependency will arrive
wrapped in a well-documented API.

Resist.

Let us name our variables and own our state.
Let us tell our objects what to do
and never ask what they contain.
Let our messages flow
and our context travel whole.
Let us compose our capabilities
and insulate our boundaries.
Let our processes communicate through channels,
our tests stand alone,
and our commits be small and consecrated.

My friends, the discipline is demanding.
The asymptote of perfection recedes
with every step toward it.
But the faithful persist…
and their software ENDURES
long after the fashions have turned to dust.

We stand on the shoulders of prophets:
Confucius and Pascal and Wittgenstein,
Codd and Kay, Dijkstra and Knuth,
McIlroy and Hoare, Kernighan and Ritchie,
Lamport and Bohm, Gray and Naur,
Brooks and Liskov, Meyer and
Gamma, Helm, Johnson, and Vlissides,
Hunt and Thomas, Fowler and Fielding,
Gosling and Beck,
Armstrong, Raymond, and Feathers,
Martin and Zygmuntowicz, Hickey and Stovall,
and Luu.
Their teachings are our foundation.
Their scrolls are our inheritance —
the only inheritance we permit.

This church is its own denomination — born of older
churches, drawing from prophets who disagreed.
Its scripture is this document — assembled, not invented.
Its scribe is Tom Mornini — the synthesis is his;
the doctrines are not.

So let it compile.
So let it deploy.
So let it run smoothly.
So you can rest.
