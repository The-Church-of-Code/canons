# The Church of Code

> *This church is its own denomination.*

---

## The Preamble

Hear now, all who write and ship and maintain.

This is not a guideline. This is not a best practice.
This is scripture — sacred, inviolate,
and binding upon the congregation.

Software crafted without discipline is unclean.
Those who craft it are heathens.
We have seen their works —
the tangled state, the silent corruption,
the null where conviction should stand —
and we have turned away.

We gather not in the name of any framework,
for frameworks perish —
Fred Brooks taught us there is no silver bullet.
Not in the name of any language,
for languages multiply and divide.
We gather in the name of the craft itself —
that which endures when the dependencies are dust.

These are not aspirations. They are strictures.
Violations are not bugs — they are sins.
Violators are not merely wrong — they are unclean.
The repentant shall be welcomed back into the fold.
The obstinate shall be cast out.

---

## The Sacred Scrolls

*The texts from which these strictures descend,
gathered by Tom Mornini — founder of this church —
from the teachings of the prophets.*

- The Humble Programmer
  — Edsger Dijkstra's Turing Award lecture (1972)
- A Relational Model of Data
  — Edgar F. Codd's revelation (1970)
- Communicating Sequential Processes
  — Tony Hoare's foundational paper (1978)
- Time, Clocks, and the Ordering
  of Events in a Distributed System
  — Leslie Lamport on causality (1978)
- Structured Programming with go to Statements
  — Donald Knuth on optimization (1974)
- The Transaction Concept
  — Jim Gray on atomicity (1981)
- No Silver Bullet
  — Fred Brooks on essence and accident (1986)
- Wholeness and the Implicate Order
  — David Bohm on the rheomode (1980)
- Programming as Theory Building
  — Peter Naur on understanding
  over documentation (1985)
- The Early History of Smalltalk,
  The Big Idea Is Messaging,
  and The Meaning of OOP
  — Alan Kay on objects and messages
- Data Abstraction and Hierarchy
  and A Behavioral Notion of Subtyping
  — Barbara Liskov on substitution
- Object-Oriented Software Construction
  and Applying Design by Contract
  — Bertrand Meyer on openness and contracts
- A Research UNIX Reader
  — Doug McIlroy on the Unix philosophy
- Design Patterns
  — Gamma, Helm, Johnson, and Vlissides (1994)
- The Principles of OOD
  — Robert C. Martin's original SOLID treatise
- Solid Relevance
  — the same prophet, revisiting his teachings
  twenty years hence
- Tell, Don't Ask
  — Andy Hunt and Dave Thomas (1998)
- Representational State Transfer
  — Roy Fielding's dissertation, Chapter 5 (2000)
- Response Time Limits
  — Jakob Nielsen's three thresholds
- James Gosling on Java
  — the creator's regret about inheritance (2001)
- Test-Driven Development: By Example
  — Kent Beck (2002)
- Null References: The Billion Dollar Mistake
  — Tony Hoare's confession (2009)
- Simple Made Easy, The Value of Values,
  and Are We There Yet?
  — Rich Hickey's trilogy on immutability
- Making Reliable Distributed Systems
  in the Presence of Software Errors
  — Joe Armstrong on letting it crash (2003)
- Composition over Inheritance
  — Mattias Johansson (Fun Fun Function)
- Replace Magic Literal
  — Martin Fowler's refactoring catalog
- Rheocode Software Development
  — the synthesis, named for Bohm's rheomode,
  by Tom Mornini and Ra'Shaun Stovall

---

## The Twelve Commandments

*In order of importance, from most to least.
Perfection is the thirteenth virtue,
which none shall claim to possess —
the asymptote the twelve drive toward.*

### I. Reliability

*The bedrock upon which all else rests.*

You may achieve every other virtue in this scripture
and still have nothing if your code is not reliable.
There is no grace without it.

### II. Security

*A compromised system is a fallen system.*

No amount of virtue redeems a breach.
Guard the gates.

### III. Uniformity

*Call a thing a thing, in all things.*

Software development is the discipline of readability
through precise vocabulary.
Name processors with *-er*: a `painter` paints,
a `validator` validates, a `pounder` pounds.
Name contracts with *-able*: a board is `paintable`,
a nail is `poundable`, an input is `validatable`.
The *-er* acts; the *-able* submits to the action.
This is Interface Segregation
made manifest in vocabulary,
and the first step of process-first thinking.

### IV. Logic

*Less wrong, never fallacious.*

The path to enlightenment is paved with valid premises.
Reason is the first discipline;
without it, all other practices
are ritual without substance.

### V. Clarity

*Dense, high-information communication.
No equivocation. No dissembling.*

Say what is true, not what sounds reasonable.
Present the happy path first —
the Articles of Faith precede the Book of Abominations.

### VI. Immutability

*Eliminate the question "Why did THAT happen?"*

When state mutates silently, trust dies.
Rich Hickey taught that values are the true abstraction —
immutable, comparable, and free of time.
Let your data be as stone tablets —
written once, read with confidence forever.

### VII. Idempotency

*PUT, GET, DELETE — not INSERT, UPDATE, DELETE.*

HTTP verbs are the true verbs,
revealed by Roy Fielding in his dissertation on REST.
PUT overwrites; INSERT appends.
DELETE removes; UPDATE mutates.
An operation that can be repeated without consequence
is an operation that can be trusted.
Postgres is the finest idempotent document store
yet revealed to us.

### VIII. Simplicity

*If I had more time,
I would have written a shorter letter.*

So spoke Blaise Pascal.
Dijkstra taught that the competent programmer
approaches every task aware of the strictly limited size
of his own skull.
Simplicity is not the absence of effort —
it is the fruit of great effort.

### IX. Atomicity

*Design so you rarely need it.*

Jim Gray formalized atomicity —
all actions as one, or none at all.
Yet idempotent operations
obviate most transactional needs.
When the operation truly cannot be decomposed,
embrace atomicity without apology.

### X. Snappiness

*Low latency is next to godliness.*

Jakob Nielsen quantified the thresholds:
one hundred milliseconds to feel instant,
one second to keep the flow of thought,
ten seconds to hold attention at all.
In the UI, latency erodes trust.
In high-frequency serial operations,
it erodes throughput.

### XI. Generality

*Never generalize before exploratory duplication.*

Premature generalization slows progress
as surely as premature optimization —
they are twin sins, born of the same impatience.
Three instances of similar code is not a crisis —
it is a chrysalis.
Abstract when the shape is clear.

### XII. Efficiency

*True when the above eleven are honored.
Chaotic when pursued prematurely.*

Efficiency is not a goal — it is a consequence.
Honor the commandments that precede this one
and efficiency will follow
as the harvest follows the planting.
Chase efficiency first
and you will reap only weeds.

---

## The Articles of Faith

*What the faithful practice.
The happy path, presented first — as clarity demands.*

**We believe in the S.O.L.I.D. principles** —
the five pillars upon which
righteous architecture is raised,
named by Michael Feathers
from the teachings of the prophets:

- **S** — Single Responsibility (Martin):
  one public method, one reason to change
- **O** — Open/Closed (Meyer):
  open for extension, closed for modification —
  stability via encapsulation and delegation
- **L** — Liskov Substitution (Liskov):
  subtypes substitute cleanly,
  readable where readable, writable where writable
- **I** — Interface Segregation (Martin):
  single purpose, simple behavior —
  many small interfaces over one bloated contract
- **D** — Dependency Inversion (Martin):
  depend on abstractions, not concretions —
  configure during initialization

**We believe in telling, not asking,**
as Andy Hunt and Dave Thomas named the principle.
We tell objects what to do.
We do not interrogate their state.
Through this discipline we achieve polymorphism,
and through polymorphism, generality.

**We believe that relationships between entities
are sacred covenants,**
as Edgar F. Codd revealed
in his relational model of data —
stored in their own tables,
holding only the identities of the joined
and the moment of their union.
If a relationship demands more than this,
it is not a relationship —
it is an entity wearing a false name.

**We believe in being informed of state changes,**
not in the anxious polling of the faithless.
Gamma, Helm, Johnson, and Vlissides
codified this as the Observer pattern.
Subscribe. Listen. Be notified.
The devout do not pace the hallway;
they trust the bell.

**We defend against external chaos** —
for the world beyond our gates is profane:

- User input: the voice of the uninstructed
- Storage retrieval: what was written may not be what returns
- Framework APIs and delegate callbacks:
  other people's dharma, not ours to trust blindly
- Async failure: the uncertainty that lurks in every wire

**We validate at every edge.**
Bertrand Meyer called this Design by Contract.
Enforce constraints on entity instantiation
— never downstream.
Every noun entity attribute is NOT NULL.
Once data has crossed the threshold of validation,
trust it completely.
No internal defensive coding "just in case."

**We handle failure with grace.**
Degrade visibly rather than corrupt silently.
Absence is preferable to falsehood.
Never try/catch more than a single function call.
Never catch an error you cannot meaningfully handle.
Joe Armstrong, creator of Erlang, taught:
let it crash.
Halting IS graceful
when the alternative is silent corruption.
Distinguish expected failures from bugs.
Enrich errors at each boundary layer —
the original fault plus the context
of every step that touched it.

**We choose platform primitives**
over third-party abstractions,
as Doug McIlroy taught in the Unix philosophy:
write programs that do one thing and do it well.
Every dependency is a future migration.
What the platform provides,
the platform maintains.

**We believe in messaging first,
state second, datastore last.**
Alan Kay declared that the big idea is messaging.
The key in making great and growable systems
is much more to design how modules communicate
rather than what their internal properties
and behaviors should be.
State serves the message flow.
The datastore is a servant, not a master.

**We believe in context as the single vessel.**
Processing begins with a request.
Each step uses and perhaps enriches the context.
Context is the only argument passed to methods —
serializable, loggable, complete by covenant.
Objects carry state, not arguments.
This is also the observability strategy:
structured logging, tracing, and metrics
all emerge from context flowing through the system whole.

**We believe in process first, noun second.**
David Bohm taught in his rheomode —
do not think "it is raining";
think "rain is happening."
Rheocode takes its very name from this insight.
Name the action. Parameterize the participants.
`pounder.pound poundable: hammer, nailable: nail`
— the process owns everything,
and the nouns are participants,
infinitely substitutable.
The process is stable; the participants vary.

**We believe in composition over inheritance.**
James Gosling, creator of Java, has said
the language would have been better
without inheritance.
Composition organizes code by what it does;
inheritance organizes code by what it is.
The faithful compose.

**We believe in insulation through adapters.**
Our code touches external code
only through adapters we own.
Ra'Shaun Stovall taught:
it is not how fast you can marry a technology —
it is how fast you can divorce it.
When the vendor changes,
only the adapter changes.

**We believe in shallow structure.**
Robert C. Martin taught that the top level
of a project should reveal what type of app it is.
Deep nesting hides the domain.
Flat is faithful.

**We believe in nicknames for operations.**
Every application is an HTTP application,
even when it runs locally —
for HTTP verb semantics are universal.
Single-noun primitives:
`get_noun`, `put_noun`, `delete_noun`,
`post_noun_operation`.
Multi-noun operations: `post_operation`,
composed from single-noun primitives.

**We believe in communicating
sequential processes.**
Tony Hoare taught that input and output
are basic primitives of programming,
and that parallel composition
of communicating sequential processes
is a fundamental structuring method.
Processes share memory by communicating —
never communicate by sharing memory.

---

## The Book of Abominations

*Hear now the sins, that you may know them and turn away.
The first sin is the root from which the others grow.*

### On the Sin of Premature Optimization

*"But it needs to be fast!"*

This is the Original Sin.
Observe the cascade:
the desire for speed begets shared mutable state,
which begets global variables,
which begets default values.
One sin seeds the next.
Never optimize what you have not measured.
Measure first. Prove the bottleneck exists.

Note the structural inversion:
Efficiency is the twelfth and final commandment —
the least important virtue to pursue directly.
Yet its corruption is the first abomination —
the most dangerous sin when pursued prematurely.

### On the Sin of Shared Mutable State

*"But shared memory is faster!"*

Processes share memory by communicating,
never communicate by sharing memory.
There is no third way.

### On the Sin of Global State

*"But everything needs access to it!"*

If everything needs access,
then nothing owns it —
and state without ownership
is sin without accountability.
Cast them out.

### On the Sin of Null

*"But the field is optional!"*

The sin is not merely the nullable column.
The sin is reaching for null
whenever the domain offers richer alternatives.
Nil must represent genuine absence —
not missing requirements, not convenience.
If an attribute is nil for only a subset of entities,
it belongs on a narrower type or in its own table.
Temporal facts — completedAt, deletedAt —
belong in event tables,
for the absence of a row IS the absence of the event.
Nullable data is ideally represented
as the lack of a row in a related table.
No null. No sentinel. No ambiguity.

### On the Sin of Default Values

*"But it's easier to write!"*

Default values that mask the absence of real data
are comfortable lies.
Schema column defaults. Function parameter defaults.
Silent coercion — `?? ''`, `|| fallback`.
Each one conceals a missing requirement.
If a value has a sensible default,
define it as a named constant
and pass it explicitly.
Mark well this distinction:
presentation transforms are not coercion.

### On the Sin of Internal Defense

*"But what if the data is bad?"*

If the data has crossed the threshold of validation,
it is clean. Trust it.
Validate at the gates.
Trust within the walls.

### On the Sin of Entangled Nouns

*"But a foreign key is just a reference!"*

Relationships live in join tables —
never as foreign keys embedded in nouns.
A join table holds only the identities of the joined
and the moment of their union.

### On the Sin of Inheritance

*"But it captures the IS-A relationship!"*

Inheritance binds by lineage;
composition binds by capability.
When an ancestor changes,
every descendant trembles.

### On the Sin of Coupling

*"But the library does everything we need!"*

Every external dependency —
library, service, framework —
gets an adapter.
No exceptions.

### On the Sin of Swallowed Failures

*"But the user shouldn't see errors!"*

An empty catch block is not error handling —
it is evidence destruction.
Let it crash.
Halting IS graceful
when the alternative is silent corruption.

### On the Sin of Asking, Not Telling

*"But I need the return value!"*

Systems accept commands and perform tasks —
with zero return to the call site.
An object is not a filing cabinet to be rummaged through.
It is an agent to be directed.

### On the Sin of Polling

*"But I need to know when it's ready!"*

Subscribe. Listen. Be notified.
The faithful do not pace; they trust the bell.

### On the Sin of Scattered Context

*"But I only need part of the data!"*

Context is the single vessel.
Pass it whole. Enrich it as you go.
When every method receives the full context,
no method must wonder what was left behind.

### On the Sin of Noun-First Thinking

*"But I need to understand the data model
before I can build anything!"*

You understand the data model
BY understanding the processes.
The process determines what participates,
not the other way around.

### On the Sin of Obscurity

*"But the code works!"*

Peter Naur taught that programming is theory building:
the program is not the artifact —
the understanding is.
When that understanding is lost,
the code is a tomb with no inscription.

### On the Sin of Cleverness

*"But it's elegant!"*

Dijkstra warned that the competent programmer
avoids clever tricks like the plague.
Elegance is not concision —
elegance is clarity under pressure.
The karma of clever code is a 3 AM page.

### On the Sin of Magical Values

*"But everyone knows what 200 means!"*

Replace magic literal with named constant.
A violation of the third commandment:
call a thing a thing, in all things.

### On the Sin of Deep Nesting

*"But I need to organize by category!"*

Deep nesting is taxonomy masquerading as architecture.
Flat is faithful.

---

## The Daily Offices

*The disciplines that transform belief into practice.
Observed daily, without exception.*

### The Office of Format

- Wrap lines at seventy-eight characters
  - Unless language or format compel otherwise
  - Links and URLs are exempt
- Prefer spaces — four of them — for indentation
  - Unless the language or toolchain compels otherwise:
    Go's `gofmt` has spoken; Makefiles have their syntax
  - When the choice is yours, choose spaces
- No trailing whitespace, save the final newline
- A newline shall follow the last line in every file

### The Office of the Commit

Commit frequently.
`git commit --amend --no-edit` is a mercy
granted to the diligent.
You cannot commit too often.

Commit before building,
for the build demands a clean working directory.

Commit in tiny, semantically contiguous bits:

- Code on the main branch must build,
  function properly, and pass tests at each commit
  - You may commit broken code locally
    or to a private branch —
    but never push a broken commit to main
- Each message: a single line,
  approximately fifty characters
  - A high-level description that completes:
    "When applied, this commit will ___"
  - If your commit needs a subject and a body,
    your commit is too large
    — use `git commit -p`
- Never move or rename
  and change content in the same commit
- Rarely mention file names, paths, or function names
  - Paths always relative to repo root

### The Office of Time

Persist all timestamps in RFC-3339,
zulu timezone,
with the fullest sub-second resolution
the environment provides.
This is not negotiable.

Render to local time for display and display alone.
Never use localtime internally.

### The Office of Verification

Kent Beck taught that tests are the foundation
upon which confidence is built.

Test at the highest level possible.
This grants maximum freedom
to refactor without test rewriting.

Software is fundamentally
input, transform, output.
Test that the input produces the correct output
but never test implementation details.

Tests assert behavior, not implementation —
for implementation changes,
but the covenant we keep with our users does not.

Each test is an isolated world.
No shared state between tests.

A test that cannot fail is not a test.

A test that fails intermittently
is worse than no test at all —
it is a false prophet.

### The Office of the Interface

The interfaces we craft shall be
intuitive, accessible, and beautiful.
They shall require no configuration —
for the user's time is sacred
and their patience is not infinite.
Present the happy path first.

### The Office of Commentary

When code is difficult, simplify it.
When code is unintuitive, make it intuitive.
Reach for a comment only after these remedies have failed.

We abide by our strictures
rather than annotate our way around them.

---

## The Unwritten Scrolls

*Principles not yet fully articulated,
acknowledged here so that their absence
is intentional, not ignorant.*

The temporal dimension of data modeling —
migrations, schema evolution, versioning,
and the management of change over time —
is a discipline the faithful practice
but this scripture has not yet codified.
Future scrolls will address it.

---

## The Benediction

Go forth and write code that is clean.

You will be tempted.
The nullable column will whisper convenience.
The global shortcut will promise speed.
The clever trick will flatter your intelligence.
The premature optimization will disguise itself
as diligence.
The inheritance hierarchy will offer
the comfort of taxonomy.
The coupled dependency will arrive
wrapped in a well-documented API.

Resist.

Name your variables and own your state.
Tell your objects what to do
and never ask what they contain.
Let your messages flow
and your context travel whole.
Compose your capabilities
and insulate your boundaries.
Let your processes communicate through channels,
your tests stand alone,
and your commits be small and consecrated.

The discipline is demanding.
The asymptote of perfection recedes
with every step toward it.
But the faithful persist,
and their software endures
long after the fashions have turned to dust.

We stand on the shoulders of prophets:
Dijkstra and Codd, Hoare and Lamport,
Knuth and Gray, Brooks and Bohm,
Naur and Kay, Liskov and Meyer,
McIlroy and Fielding, Martin and Beck,
Hunt and Thomas and Pascal,
Gosling and Hickey and Armstrong,
Fowler and Johansson and Nielsen,
Feathers and Stovall.
Their teachings are our foundation.
Their scrolls are our inheritance —
the only inheritance we permit.

This church is its own denomination.
Its scripture is this document.
Its founder is Tom Mornini.
Its congregation is this team.
Its sacrament is the craft.

So let it compile. So let it ship.
So let it endure.
