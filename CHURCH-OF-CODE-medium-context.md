# The Church of Code

*v1.8 — medium*

> *Computer science is no more about computers
> than astronomy is about telescopes.*
> — Edsger Dijkstra

---

## The Preamble

Hear now, all who write and ship and maintain.

This is not a guideline.
This is not a best practice.
This is scripture — sacred, inviolate,
and binding upon the congregation.

Software crafted without discipline… is unclean.
We know — we have crafted it.
We have lived with the tangled state…
the silent corruption…
the null where conviction should stand —
and we have paid the price.
We have turned away.

We gather not in the name of any framework,
for frameworks perish —
there is no silver bullet.
Not in the name of any language,
for languages multiply and divide.
We gather in the name of the craft itself —
that which endures when the dependencies are dust.

These are not aspirations. They are strictures.
Violations are not bugs — *they are sins*.
Violators are not merely wrong —
they are UNCLEAN.
The repentant shall be welcomed back into the fold.
The obstinate shall be cast out.

---

## The Twelve Commandments

*In order of importance, from most to least.
Perfection is the thirteenth virtue,
which none shall claim to possess —
the asymptote the twelve drive toward,
achievable only through years
of consideration and iteration.*

### I. Reliability

*The bedrock upon which all else rests.*

You may achieve every other virtue in this scripture…
and still have NOTHING if your code is not reliable.
There is no grace without it. Only sleep deprivation.

### II. Security

*A compromised system is a fallen system.*

A breach casts everyone it touches
into the furnace whose name we do not speak —
there to dwell in heat without end.

### III. Uniformity

*Call a thing a thing, in all things.*

As Confucius taught in the Rectification of Names:
if names be not correct, language is not
in accordance with the truth of things,
and affairs cannot be carried on to success.

Software development is the discipline of readability
through precise vocabulary.
If code does not read correctly,
the names are — by definition — wrong.

Name processors with *-er*: a `painter` paints,
a `validator` validates, a `pounder` pounds.
Name contracts with *-able*: a board is `paintable`,
a nail is `poundable`, an input is `validatable`.
The *-er* acts; the *-able* submits to the action.
This is Interface Segregation made manifest in vocabulary.

### IV. Logic

*Less wrong, never fallacious.*

A single fallacy — *a single one* —
is a crack in the foundation
that no amount of testing will reveal.
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

When state mutates silently… trust dies.
As Rich Hickey taught:
values are the true abstraction —
immutable, comparable, and free of time.
The mutable variable is a trickster spirit:
it shows one face at dawn and another at dusk,
and you will spend your days
chasing its deceptions.

### VII. Idempotency

*PUT, GET, DELETE — not INSERT, UPDATE, DELETE.*

HTTP verbs are the true verbs,
as Roy Fielding revealed in his dissertation on REST.
The admonition is not SQL against NoSQL —
it is verb semantics.
PUT overwrites; INSERT appends.
DELETE removes; UPDATE mutates.
An operation that can be repeated without consequence
is an operation that can be trusted.

### VIII. Simplicity

*If I had more time,
I would have written a shorter letter.*

So spoke Blaise Pascal.
As Dijkstra taught in his Turing Award lecture:
the competent programmer approaches every task
in full humility, aware of the strictly limited size
of his own skull.
Simplicity is not the absence of effort —
it is the fruit of GREAT effort.

### IX. Generality

*Never generalize before exploratory duplication.*

Premature generalization slows progress
as surely as premature optimization —
twin sins, born of the same impatience.
Three instances of similar code is not a crisis —
it is a chrysalis.
Abstract when the shape is clear…
not when you merely suspect a shape might emerge.

### X. Atomicity

*Design so you rarely need it.*

As Jim Gray taught:
atomicity means all actions as one, or none at all.
Yet idempotent operations
obviate most transactional needs.
But when the operation truly cannot be decomposed,
embrace it. Without apology.

### XI. Efficiency

*True when the above eleven are honored.
Chaotic when pursued prematurely.*

Efficiency emerges from humility —
from clarity, from simplicity,
from code that can be reasoned about.
Efficiency is not a goal — it is a consequence.
Honor the commandments that precede this one.

### XII. Performance

Every wasted millisecond is a small death.
In the UI, latency erodes fluidity.
In high-frequency serial operations,
it erodes throughput.

As Dan Luu witnessed: humans can perceive
cause/effect latency down to low single-digit
milliseconds.

As Ezra Zygmuntowicz taught:
*no code is faster than no code.*

---

## The Articles of Faith

*What the faithful practice.
The way of the righteous, spoken before the sins —
as clarity demands.*

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
We tell objects what we need.
We do not interrogate their state.
Through this discipline we achieve polymorphism…
and through polymorphism, generality —
the eleventh commandment made manifest.
Mark the distinction:
functions upon nouns — calculation, transformation —
return what they produce, for that is their nature.
Methods upon verbs begin asynchronous processes
that pass signals and results
to communicating sequential processes —
never returning to the call site.

**We believe that relationships between entities
are sacred covenants,**
as Edgar F. Codd revealed
in his relational model of data —
stored in their own tables,
holding only the identities of the joined
and the moment of their union.
If a relationship demands more than this…
it is not a relationship —
it is an entity wearing a false name.

**We believe in being informed of state changes**
not in the anxious polling of the faithless.
Gamma, Helm, Johnson, and Vlissides
codified this as the Observer pattern.
Subscribe. Listen. Be notified.
The devout do not pace the hallway;
they trust the bell.

**We defend against external chaos** —
for the world beyond our gates is often profane:

- Input: the voice of the uninstructed
  is frequently corrupt
- Storage: what was written may rarely become
  corrupt; far more commonly, it was stored
  incorrectly. Beware!
- Framework APIs and delegate callbacks:
  other people's dharma, not ours to trust
  blindly, ours to validate in our adapter

**We validate at every edge.**
Enforce constraints on entity instantiation
— never downstream.
Every noun entity attribute is NOT NULL.
Once data has crossed the threshold of validation,
trust it completely.
No internal defensive coding "just in case."

Nullable data is ideally represented
as the lack of a row in a related table.
Temporal facts — completedAt, deletedAt —
belong in event tables,
for the absence of a row IS the absence of the event.

Default values that mask the absence of real data
are comfortable lies.
Presentation transforms are not coercion —
formatting a value for display is an act of service,
not an act of concealment.

**We handle failure with grace.**
Degrade visibly rather than corrupt silently.
Never try/catch more than a single function call.
Never catch an error you cannot meaningfully handle —
to swallow an exception is excommunicable!
As Bertrand Meyer taught — Design by Contract —
a function declares what it requires and what it guarantees.
When those terms are violated,
the failure is a breach of covenant to be proclaimed.
Distinguish expected failures from bugs:
a network timeout is handled; an impossible state must crash.
Enrich errors at each boundary layer —
the original fault plus the context of every step that touched it.

**We choose platform primitives**
over third-party abstractions,
as Doug McIlroy taught in the Unix philosophy:
write programs that do one thing and do it well.
Every dependency is a future migration.
What the platform provides,
the platform maintains.

**We measure before we optimize.**
As Knuth taught: premature optimization
is the root of all evil.
Observe the cascade:
the desire for speed begets shared mutable state…
which begets global variables…
which begets default values.
One sin seeds the next.
Measure first. Prove the bottleneck exists.
Then — and only then — optimize.

**We believe in messaging first,
state second, datastore last.**
As Alan Kay declared:
the big idea is messaging.
He thought of objects as biological cells,
able to communicate only through messages.
Design how modules communicate
rather than what their internal properties should be.
State serves the message flow.
The datastore is a servant. Not a master.

**We believe in context as the single vessel.**
Processing begins with a request.
Each step uses and perhaps enriches the context.
Context is the only argument passed to methods —
serializable, loggable, complete by covenant.
Context is not a god-object —
it is the baton in a relay.
The context flows; the steps serve.
Each field is set exactly once, in exactly one place —
the attributes immutable even as the vessel is enriched.
Authentication resolves the identity.
Authorization resolves the roles.
Deserialization resolves the body.
The request UUID resolves the trace.
Objects carry state, not arguments.
This is also the observability strategy:
structured logging, tracing, and metrics
emerge naturally from context flowing whole.

**We believe in process first, noun second.**
As David Bohm taught in his rheomode —
the flowing mode of language:
'It is raining.' Where is the 'It'?
Rheocode takes its name from this insight.
Name the action. Parameterize the participants.
`pounder.pound(poundable: hammer, nailable: nail)`
— the process owns everything,
and the nouns are participants, infinitely substitutable.
The process is stable; the participants vary.

**We believe in composition over inheritance.**
As James Gosling confessed:
the language would have been better
without inheritance.
Gamma, Helm, Johnson, and Vlissides wrote:
favor object composition over class inheritance.
Composition organizes code by what it *does*;
inheritance organizes code by what it *is*.
The faithful compose.

**We believe in insulation through adapters.**
Our code touches external code
only through adapters we own.
This allows our application to be written
entirely in our single voice.
As Wittgenstein wrote in the Tractatus:
the limits of my language mean the limits of my world.
So taught Ra'Shaun Stovall:
"it is not how fast you can marry a technology —
it is how easily you can divorce it."

**We believe in shallow structure.**
As Robert C. Martin taught:
the top level of a project should give you
a rough idea of what type of app it is.
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
The naming convention is the documentation.

**We believe in communicating sequential processes.**
As Tony Hoare taught in his 1978 paper:
input and output are basic primitives of programming,
and asynchronous composition of communicating sequential processes
is a fundamental structuring method.
Processes share memory by communicating —
*never* communicate by sharing memory.

---

## The Book of Abominations

*Hear now the sins, that you may know them and turn away.
The first sin is the root from which the others grow.*

### On the Sin of Premature Optimization

*"But it needs to be fast!"*

This is the Original Sin — the root from which the others grow.
As Knuth taught us in 1974:
premature optimization is the root of all evil.
The desire for speed begets shared mutable state,
which begets global variables,
which begets default values.
Efficiency is the twelfth commandment;
its corruption is the first sin.

### On the Sin of Shared Mutable State

*"But shared memory is faster!"*

Faster. *Faster.*
As Lamport showed in his work on temporal logic:
reasoning about shared mutable state is intractable.
If two processes need the same data,
one sends a message; the other receives it.
There is no third way.

### On the Sin of Global State

*"But everything needs access to it!"*

If everything needs access, NOTHING owns it —
and state without ownership is sin without accountability.
As Dijkstra's structured programming movement argued:
uncontrolled shared state is chaos. Cast them out.

### On the Sin of Null

*"But the field is optional!"*

Optional. *Optional.*
As Hoare himself confessed —
the prophet who introduced null references in 1965
called it his billion-dollar mistake.
Nullable data is ideally represented
as the lack of a row in a related table.
Temporal facts belong in event tables,
for the absence of a row IS the absence of the event.
No null. No sentinel. No ambiguity. This is THE PATH.

### On the Sin of Default Values

*"But it's easier to write!"*

Easier to write, harder to maintain.
Default values that mask the absence of real data
are comfortable lies.
If a value has a sensible default,
define it as a named constant and pass it explicitly.
Presentation transforms are not coercion —
formatting for display is service, not concealment.

### On the Sin of Internal Defense

*"But what if the data is bad?"*

If the data has crossed the threshold of validation, it is clean.
Trust it. Internal defensive coding is not prudence —
it is FAITHLESSNESS.
Validate at the gates. Trust within the walls.

### On the Sin of Entangled Nouns

*"But a foreign key is just a reference!"*

As Edgar F. Codd established in his normalization principles:
entities and relationships occupy separate relations.
A foreign key is a denormalization —
it fuses what should be independent.
Both designs are O(n).

### On the Sin of Inheritance

*"But it captures the IS-A relationship!"*

As Barbara Liskov established:
a subtype must honor every promise the parent type has made.
Inheritance binds by lineage; composition binds by capability.
When an ancestor changes, every descendant trembles.

### On the Sin of Coupling

*"But the library does everything we need!"*

Everything you need… *today*.
As Fred Brooks taught in No Silver Bullet:
every dependency is a bet
that someone else's trajectory will match yours.
Every external dependency gets an adapter. No exceptions.

### On the Sin of Swallowed Failures

*"But the user shouldn't see errors!"*

An empty catch block is not error handling —
it is destruction of evidence.
As Joe Armstrong taught: *let it crash.*
Halting IS graceful when the alternative is silent corruption.

### On the Sin of Asking, Not Telling

*"But I need the return value!"*

A method upon a verb begins a process —
passing results to communicating sequential processes,
not back to the call site.
To reach into an object for its state
is to violate its sovereignty.

### On the Sin of Polling

*"But I need to know when it's ready!"*

Then *wait for it to tell you*.
As Alan Kay envisioned:
a system of cells communicating through messages does not poll —
the message arrives or it does not.

We are humble enough to realize that we
are sometimes required to integrate with
systems not of the faith. Should they
require us to poll them, poll we must.

### On the Sin of Scattered Context

*"But I only need part of the data!"*

As Lamport taught: causality requires
that events carry their full history.
Every mainline method receives the context filled
with the gifts of its ancestors.

### On the Sin of Noun-First Thinking

*"But I need to understand the data model
before I can build anything!"*

No. You understand the data model
BY understanding the processes.
As Alan Kay lamented: he meant OOP to be about messaging.
The world heard objects and fixated on the nouns,
corrupting Kay's original vision.

### On the Sin of Obscurity

*"But the code works!"*

Working is not enough.
As Peter Naur taught: programming is theory building.
The program is not the artifact — the understanding is.
When that understanding is lost,
the code is a tomb with no inscription.

### On the Sin of Cleverness

*"But it's elegant!"*

As K&R taught: debugging is twice as hard
as writing the code in the first place —
therefore, if you write the code as cleverly as possible,
you are not smart enough to debug it.
The karma of clever code is a 3 AM wake up call.

### On the Sin of Magical Values

*"But everyone knows what 200 means!"*

As Martin Fowler cataloged:
replace magic literal with named constant.
As Naur taught: an unnamed constant is a piece
of the theory left unspoken.

### On the Sin of Deep Nesting

*"But I need to organize by category!"*

As Doug McIlroy taught in the Unix tradition:
transparency is a survival trait.
A directory five levels deep is a secret
kept from the next developer.

---

## The Daily Offices

*The disciplines that transform belief into practice.
Observed daily, without exception.*

### The Office of Format

As the body requires hygiene, so does the code.

Wrap lines at seventy-eight characters unless language
or format compel otherwise. Links and URLs are exempt
as a reference must not be broken. The line is a breath,
and the eye has limits.

Prefer spaces — four of them — for indentation, except as
demanded by language or toolchain. Makefiles were chiseled
into stone, `gofmt` has spoken, `mix format` is the voice
of Elixir, `prettier` the voice of JavaScript.

When the formatter has spoken, obey the formatter;
collateral chaos in service of preference is vanity.
No trailing whitespace, save the final newline.
A newline shall follow the last line in every file.

### The Office of the Commit

Commit frequently. `git commit --amend --no-edit` is a
mercy granted to the diligent and rewarded by git reflog.
Only use the git magic in private, with the precision
a surgeon wields their scalpel.

What has been pushed has been witnessed;
to rewrite witnessed history is to bear false witness.
`git push --force` is the nuclear option —
to be avoided in public in all but the most
desperate of circumstances.

ABC — always be committing! What isn't committed
cannot be restored once you have forgotten.

Commit before building. A build from uncommitted state
cannot be traced, cannot be reproduced,
cannot be verified, cannot be trusted.
"worked on my machine" isn't an excuse, it's shameful.

Commit in tiny, semantically contiguous bits:

- Every commit on the master branch must build,
  function properly, and pass tests at each commit.
  The master branch is consecrated ground.
- Each message: a single line, approximately fifty characters,
  completing: "When applied, this commit will ___"
- If your commit needs a subject and a body,
  your commit is too large — use `git commit -p` like a devotee.
- Never move or rename and change content in the same commit.

The history shall be linear. Rebase, then fast forward. Never merge.
A merge commit is a knot in the narrative.
When your branch has fallen behind,
rebase it upon the current truth.

### The Office of Time

Persist all timestamps in RFC-3339, zulu timezone,
with the fullest sub-second resolution the environment provides.
This is not negotiable.

Render to local time for display and display alone.
Never use localtime internally —
for localtime is the road to ambiguity,
and ambiguity is the road to bugs
that manifest in production only when you are asleep.

### The Office of Verification

As Kent Beck taught: tests are the foundation
upon which confidence is built.

Test at the highest level possible.
This grants the faithful maximum freedom
to refactor without the pain of test rewriting.

Software is fundamentally input, transform, output.
Test that the input produces the correct output
but never test how the sausage is made.

Tests assert behavior, not implementation —
for implementation changes,
but the covenant we keep with our users does not.

Each test is an isolated world.
No shared state between tests.

A test that cannot fail is not a test.

A test that fails intermittently…
is worse than no test at all —
it is a *false prophet*.

### The Office of the Interface

The interfaces we craft shall be
intuitive, accessible, and beautiful.
They shall require no configuration —
for the user's time is sacred
and their patience is not infinite.
As K&R taught with Hello, World —
begin with the simplest thing that works.

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

## The Sacred Scrolls

*The texts from which these strictures descend,
gathered by Tom Mornini — founder of this church —
from the teachings of the prophets.*

- The Principles of OOD
  — Robert C. Martin's original SOLID treatise
- Solid Relevance
  — the same prophet, revisiting his teachings
  twenty years hence
- The Early History of Smalltalk,
  The Big Idea Is Messaging,
  and The Meaning of OOP
  — Alan Kay on objects and messages (1971)
- The Humble Programmer
  — Edsger Dijkstra's Turing Award lecture (1972)
- A Relational Model of Data
  — Edgar F. Codd's revelation (1970)
- A Research UNIX Reader
  — Doug McIlroy on the Unix philosophy
- Structured Programming
  with go to Statements
  — Donald Knuth on optimization (1974)
- Communicating Sequential Processes
  — Tony Hoare's foundational paper (1978)
- Null References:
  The Billion Dollar Mistake
  — Tony Hoare's confession (2009)
- The C Programming Language
  — Brian Kernighan and Dennis Ritchie (K&R)
    on simplicity, clarity, and the shortest path (1978)
- Time, Clocks, and the Ordering
  of Events in a Distributed System
  — Leslie Lamport on causality (1978)
- Programming as Theory Building
  — Peter Naur on understanding
  over documentation (1985)
- No Silver Bullet
  — Fred Brooks on essence and accident (1986)
- Data Abstraction and Hierarchy
  and A Behavioral Notion of Subtyping
  — Barbara Liskov on substitution
- Object-Oriented Software Construction
  and Applying Design by Contract
  — Bertrand Meyer on openness and contracts
- Design Patterns
  — Gamma, Helm, Johnson, and Vlissides (1994)
- The Analects
  — Confucius on the Rectification of Names (~500 BCE)
- Lettres Provinciales
  — Blaise Pascal on brevity (1657)
- Tractatus Logico-Philosophicus
  — Ludwig Wittgenstein on language and world (1921)
- Wholeness and the Implicate Order
  — David Bohm on the rheomode (1980)
- The Transaction Concept
  — Jim Gray on atomicity (1981)
- Tell, Don't Ask
  — Andy Hunt and Dave Thomas (1998)
- Replace Magic Literal
  — Martin Fowler's refactoring catalog
- Representational State Transfer
  — Roy Fielding's dissertation, Chapter 5 (2000)
- James Gosling on Java
  — the creator's regret about inheritance (2001)
- Test-Driven Development: By Example
  — Kent Beck (2002)
- Making Reliable Distributed Systems
  in the Presence of Software Errors
  — Joe Armstrong on letting it crash (2003)
- Working Effectively with Legacy Code
  — Michael Feathers, who coined the SOLID acronym (2004)
- Merb: no code is faster than no code
  — Ezra Zygmuntowicz
- Simple Made Easy,
  The Value of Values, and
  Are We There Yet?
  — Rich Hickey's trilogy on immutability
- Rheocode Software Development
  — the synthesis, named for Bohm's rheomode
  — Tom Mornini and Ra'Shaun Stovall (2016)
- Computer latency: 1977-2017
  — Dan Luu on latency

---

## The Benediction

Go forth and write code that is clean.

You will be tempted.
Oh… you will be tempted.
The nullable column will whisper *convenience*…
The global shortcut will promise *speed*…
The clever trick will flatter your intelligence…
The premature optimization will disguise itself
as diligence…
The inheritance hierarchy will offer
the comfort of taxonomy…
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
But the faithful persist…
and their software ENDURES
long after the fashions have turned to dust.

We stand on the shoulders of prophets:
Confucius and Pascal and Wittgenstein,
Martin and Kay, Dijkstra and Codd,
McIlroy and Knuth, Hoare and Kernighan,
Ritchie and Lamport, Naur and Brooks,
Liskov and Meyer,
Gamma, Helm, Johnson, and Vlissides,
Bohm and Gray, Hunt and Thomas,
Fowler and Fielding, Gosling and Beck,
Armstrong and Feathers, Zygmuntowicz and Hickey,
Stovall and Luu.
Their teachings are our foundation.
Their scrolls are our inheritance —
the only inheritance we permit.

This church is its own denomination.
Its scripture is this document.
Its founder is Tom Mornini.
Its congregation is this team.
Its sacrament is the craft.

So let it compile.
So let it deploy.
So let it run smoothly.
So you can rest.
