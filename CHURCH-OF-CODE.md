# The Church of Code

*v1.10 — full*

> *Computer science is no more about computers
> than astronomy is about telescopes.*
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
the null where conviction should stand —
and we have paid the price.
We have turned away.

We gather not in the name of any framework,
for frameworks perish —
there is no silver bullet.
We gather not in the name of any language,
for languages multiply and divide.
We gather in the name of the craft itself —
that which endures when the dependencies are dust,
that which holds when the fashions have turned.

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
and still have NOTHING
if your code is not reliable.
There is no grace without it.
There is no rest without it.
Only sleep deprivation.

### II. Security

*A compromised system is a fallen system.*

A breach is not an accident —
it is a covenant broken
with everyone who trusted us
with their data, their privacy,
their peace of mind.
It casts them into the furnace
whose name we do not speak —
there to dwell in heat without end.

### III. Uniformity

*Call a thing a thing, in all things.*

As Confucius has taught us
in the Rectification of Names:
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
The suffixes encode the relationship:
the *-er* acts; the *-able* submits to the action.
This is Interface Segregation
made manifest in vocabulary,
and the first step of process-first thinking —
for when you name the process and its contracts,
the nouns fall into place as participants.

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
Say it plainly, even when plain speech is costly.
Say it again, until the meaning
stands on its own feet.
Present the happy path first —
lead with what the faithful should do
before naming what they must not.
This very scripture practices what it preaches:
the Articles of Faith precede the Book of Abominations.

### VI. Immutability

*Eliminate the question "Why did THAT happen?"*

When state mutates silently… trust dies.
As the great teacher Rich Hickey has revealed:
values are the true abstraction —
immutable, comparable, and free of time.
The mutable variable is a trickster spirit:
it shows one face at dawn and another at dusk,
and you will spend your days
chasing its deceptions.

### VII. Idempotency

*PUT, GET, DELETE — not INSERT, UPDATE, DELETE.*

HTTP verbs are the true verbs,
as Roy Fielding has revealed
in his dissertation on REST.
The admonition is not SQL against NoSQL —
it is verb semantics.
PUT overwrites; INSERT appends.
DELETE removes; UPDATE mutates.
An operation that can be repeated without consequence
is an operation that can be trusted.

### VIII. Simplicity

*If I had more time,
I would have written a shorter letter.*

So spoke Blaise Pascal,
and the truth has echoed through the centuries.
As Dijkstra has taught us
in his Turing Award lecture:
the competent programmer
approaches every task in full humility,
aware of the strictly limited size
of his own skull.
Simplicity is not the absence of effort —
it is the fruit of GREAT effort.

### IX. Generality

*Never generalize before exploratory duplication.*

Premature generalization slows progress
as surely as premature optimization —
twin sins, born of the same impatience.
Let the pattern reveal itself through repetition.
Three instances of similar code is not a crisis —
it is a chrysalis.
Abstract when the shape is clear…
not when you merely suspect a shape might emerge.

### X. Atomicity

*Design so you rarely need it.*

As Jim Gray has taught us:
atomicity means all actions as one, or none at all.
Yet idempotent operations
obviate most transactional needs.
But when the operation truly cannot be decomposed —
when atomicity is genuinely required —
embrace it. Without apology.

### XI. Efficiency

*True when the above eleven are honored.
Chaotic when pursued prematurely.*

Efficiency emerges from humility —
from clarity, from simplicity,
from code that can be reasoned about.

Efficiency is not a goal — it is a consequence.
It is what you inherit
when you honor the commandments
that precede this one.

### XII. Performance

Every wasted millisecond is a small death.
In the UI, latency erodes fluidity.
In high-frequency serial operations,
it erodes throughput.
Visible to the user, it erodes their finite
patience.

As Dan Luu has witnessed: humans can perceive
cause/effect latency down to low single-digit
milliseconds.

As Ezra Zygmuntowicz has taught us:
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
as the great teachers Andy Hunt and Dave Thomas
named the principle.
We tell our objects what we need.
We do not interrogate their state.
We do not demand they prove themselves
before we allow them to serve.
Through this discipline we achieve polymorphism.
And through polymorphism, generality —
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
as the prophet Edgar F. Codd has revealed
in his relational model of data —
stored in their own tables,
holding only the identities of the joined
and the moment of their union.
If a relationship demands more than this…
it is not a relationship —
it is an entity wearing a false name.

**We believe in being informed of state changes,**
not in the anxious polling of the faithless.
Gamma, Helm, Johnson, and Vlissides
codified this as the Observer pattern.
Subscribe. Listen. Be notified.
The devout do not pace the hallway.
The devout do not rattle the door.
The devout trust the bell.

**We defend against external chaos** —
for the world beyond our gates is often profane:

- Input: the voice of the uninstructed is frequently corrupt
- Storage: what was written may rarely become corrupt, far
  more commonly, it was stored incorrectly. Beware!
- Framework APIs and delegate callbacks:
  other people's dharma, not ours to trust blindly, ours
  to validate in our adapter.

**We validate at every edge.**
Enforce constraints on entity instantiation
— never downstream.

Every noun entity attribute is NOT NULL.

And once data has crossed
the threshold of validation…
trust it completely.
No internal defensive coding "just in case."
To distrust validated data is to lack faith
in your peers and rituals.

Nullable data is ideally represented
as the lack of a row in a related table.
Temporal facts — completedAt, deletedAt —
belong in event tables,
for the absence of a row IS the absence of the event.

Mark the pattern, my friends: when an entity is
removed, it shall not carry the temporal stain. Name
the deletion in its own table — a TOMBSTONE. Two
relations stay disjoint because they record disjoint
facts: what IS, and what WAS REMOVED. The entity
remembers presence; the tombstone, absence.

Default values that mask the absence of real data
are comfortable lies.
Mark well: presentation transforms are not coercion.
Formatting a value for display is an act of service,
not an act of concealment.

**We handle failure with grace.**
Degrade visibly rather than corrupt silently.

Never try/catch more than a single function call.

Never catch an error you cannot meaningfully handle —
to swallow an exception is excommunicable!

As the great teacher Bertrand Meyer
has taught us in Design by Contract —
a function declares what it requires
and what it guarantees.
When those terms are violated,
the failure is not an accident to recover from —
it is a breach of covenant to be proclaimed.

Distinguish expected failures from bugs:
a network timeout is expected and handled;
an impossible state is a bug… and must crash.

Enrich errors at each boundary layer —
the original fault plus the context
of every step that touched it —
so that when the failure surfaces,
the full story is told.

**We choose platform primitives**
over third-party abstractions,
as Doug McIlroy has taught us
in the Unix philosophy:
write programs that do one thing and do it well.
Every dependency is a future migration.
What the platform provides,
the platform maintains.

**We measure before we optimize.**
As the prophet Knuth has taught us:
premature optimization
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
As the prophet Alan Kay has declared:
the big idea is messaging.
He thought of objects as biological cells
or individual computers on a network,
able to communicate only through messages.
The key in making great and growable systems
is much more to design
how modules communicate
rather than what their internal properties
and behaviors should be.
State serves the message flow.
The datastore is a servant.
Not a master. Never a master.

**We believe in context as the single vessel.**
Processing begins with a request.
Each step uses and perhaps enriches the context.
Context is the only argument passed to methods —
serializable for notifications
to other processes and systems,
loggable for debugging,
complete by covenant.
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
Objects carry state, not arguments.
This is also the observability strategy:
when context flows through the system whole,
structured logging emerges naturally,
tracing is context propagation
across service boundaries,
and metrics are context aggregation.
The faithful do not bolt on observability —
they carry it in the vessel from the start.

**We believe in process first, noun second.**
As the physicist David Bohm taught
in his rheomode — the flowing mode of language:
‘It is raining.’ Where is the ‘It’ that would,
according to the sentence, be ‘the rainer that
is doing the raining’? Clearly, it is more accurate
to say: ‘Rain is going on.’
Rheocode takes its very name from this insight.
Name the action. Parameterize the participants.
The process determines what participates,
not the other way around.
Consider: `nail.pound()` is horrible —
the noun owns the verb.
`hammer.pound(nail)` is better —
but the tool still dominates.
`pounder.pound(poundable: hammer, nailable: nail)`
is the way — the process owns everything,
and the nouns are participants,
infinitely substitutable.
The process is stable; the participants vary.

**We believe in composition over inheritance.**
As James Gosling has confessed:
the language would have been better
without inheritance —
forcing users to rely on composition,
encapsulation, and delegation.
Gamma, Helm, Johnson, and Vlissides
wrote in Design Patterns:
favor object composition
over class inheritance.
Composition organizes code by what it *does*;
inheritance organizes code by what it *is*.
The faithful compose.

**We believe in insulation through adapters.**
Our code touches external code
only through adapters we own.

This allows our application to be written
entirely in our single voice.

As Wittgenstein has written in the Tractatus:
the limits of my language mean the limits of my world.

So has Ra'Shaun Stovall taught us:
"it is not how fast you can marry a
technology — it is how easily you can
divorce it."

**We believe in shallow structure.**
As Robert C. Martin has taught us:
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
As Tony Hoare has taught us in his 1978 paper:
input and output
are basic primitives of programming,
and asynchronous composition
of communicating sequential processes
is a fundamental structuring method.
Processes share memory by communicating —
*never* communicate by sharing memory.

---

## The Book of Abominations

*Let us consider the sins, that we may know them and turn away.
The first sin is the root from which the others grow.*

### On the Sin of Premature Optimization

*"But it needs to be fast!"*

Oh… *oh*, I hear you.
That, my friends, is the serpent talking.
This is the Original Sin —
the root from which the other sins grow.
As the prophet Knuth has taught us in 1974:
premature optimization is the root of all evil.

Observe the cascade:
the desire for speed begets shared mutable state…
which begets global variables…
which begets default values.
One sin… seeds… the NEXT.

Never optimize what you have not measured.
To optimize prematurely
is to sacrifice clarity
on the altar of a phantom god.
Measure first. Prove the bottleneck exists.
Then — and only then — bring your offering.

Note the structural inversion:
Efficiency is the twelfth and final commandment —
the least important virtue to pursue directly.
Yet its corruption is the *first* abomination —
the most dangerous sin when pursued prematurely.

### On the Sin of Shared Mutable State

*"But shared memory is faster!"*

Faster. *Faster.*
That word again — the serpent's favorite.
This is the most common fruit of premature optimization.
As the prophet Lamport has shown
in his work on temporal logic:
reasoning about shared mutable state
is not merely difficult — it is intractable.
Every thread that touches the shared variable
multiplies the possible interleavings,
and the space of states to reason about
grows beyond the capacity of any mortal mind.
If two processes need the same data,
one sends a message; the other receives it.
There is no third way.

### On the Sin of Global State

*"But everything needs access to it!"*

If everything needs access…
then NOTHING owns it —
and state without ownership
is sin without accountability.
As Dijkstra's structured programming movement
first argued: uncontrolled shared state is chaos.
Global variables whisper
to every corner of the codebase,
and none can say who spoke first or who last.
Cast them out.

### On the Sin of Null

*"But the field is optional!"*

Optional. *Optional.*
As Hoare himself confessed — the prophet
who introduced null references in 1965
called it his billion-dollar mistake.
The sin is not merely the nullable column.
The sin is reaching for null
whenever the domain offers
richer alternatives.

Nil must represent genuine absence —
not missing requirements…
not unfinished thinking…
not convenience.
If an attribute is nil for only a subset of entities,
it belongs on a narrower type or in its own table.
Temporal facts — completedAt, deletedAt —
belong in event tables,
for the absence of a row IS the absence of the event.
This is the deeper principle:
nullable data is ideally represented
as the lack of a row in a related table.
No null. No sentinel. No ambiguity.

This is not a minor preference.
This is THE PATH.

### On the Sin of Default Values

*"But it's easier to write!"*

Easier. Yes — *easier to write*.
And writing code is the easy part.
Maintaining, transforming, and improving code
far outweighs any convenience at the point of creation.
Default values that mask the absence of real data
are comfortable lies.
Schema column defaults…
function parameter defaults…
fallback objects and factories…
silent coercion — `?? ''`, `|| fallback`.
Each one conceals a missing requirement
behind a fiction of completeness.
If a value has a sensible default,
define it as a named constant
and pass it explicitly.

Mark well this distinction:
presentation transforms are not coercion.
Formatting a value for display is an act of service,
not an act of concealment.

### On the Sin of Internal Defense

*"But what if the data is bad?"*

What if. *What if.*
If the data has crossed the threshold of validation,
it is clean. Trust it.

To check a NOT NULL column for null downstream
is to confess — right there in your own code —
that you do not believe
in your own validation rites.

Beware these sinful practices!

- guard clauses deep inside trusted boundaries
- redundant nil checks on validated fields
- "just in case" fallbacks within your own walls

These are not prudent. They expose the FAITHLESS.

It clutters the code with doubt,
obscures the true logic,
eliminates the comfort of solid footing,
and teaches the next reader
that the system's own contracts
are not to be trusted.

Validate at the gates.
Trust within the walls.

### On the Sin of Entangled Nouns

*"But a foreign key is just a reference!"*

Just a reference. *Just.*

As the prophet Edgar F. Codd has established
in his normalization principles:
entities and relationships
occupy separate relations.

A foreign key is a denormalization —
it fuses what should be independent,
conflating identity with proximity.

Declare relationships in join tables, a clean
separation worthy of the relational model.

And if you cry *performance* —
performance is the TWELFTH commandment,
the least important virtue.

Both designs are O(n).
A mere doubling of the constant factor.
You would sell the sanctity
of your relationships for *that*?

### On the Sin of Inheritance

*"But it captures the IS-A relationship!"*

IS-A. The oldest trap in the book.

To derive when you should compose
is to chain your future to your ancestor's past.

As Barbara Liskov has established:
a subtype must honor every promise
the parent type has made.

Inheritance that violates this contract
produces hierarchies that lie
about substitutability.

Inheritance binds by lineage;
composition binds by capability.
When an ancestor changes…
every descendant trembles.

When a composed capability changes,
only its callers notice —
and they were prepared.

### On the Sin of Coupling

*"But the library does everything we need!"*

Everything you need… *today*.

To call a third-party service
without an adapter boundary
is to weld your hull to the dock.

When the dock is demolished…
your ship sinks with it.

As Fred Brooks has taught us in No Silver Bullet:
every dependency is a bet
that someone else's trajectory
will match yours.

Accidental complexity accrues
at every weld point
between your code and theirs.
Every external dependency —
library… service… framework —
gets an adapter.

No exceptions.

### On the Sin of Swallowed Failures

*"But the user shouldn't see errors!"*

So you hide them. You *hide* them.
A system that swallows exceptions and continues
is a system that lies about its health.

An empty catch block is not error handling —
it is destruction of evidence.

A `log-and-continue` is a lie
whispered to the next request,
which will inherit corrupted state
and fail in ways far harder to diagnose.

As Joe Armstrong has taught us:
*let it crash.*

Halting IS graceful when the alternative is silent
corruption.

### On the Sin of Asking, Not Telling

*"But I need the return value!"*

You *need* it. Do you?

A function upon a noun returns what it produces.

But a method upon a verb begins a process —
passing results to communicating sequential
processes, not back to the call site.

To reach into an object for its internal state
is to violate its sovereignty.
An object is not a filing cabinet
to be rummaged through, it is an assistant to
be utilized.

### On the Sin of Polling

*"But I need to know when it's ready!"*

Then *wait for it to tell you*.

As the prophet Alan Kay has envisioned:
a system of cells communicating through
messages does not poll — the message arrives
or it does not.

To poll is to doubt the network itself,
to confess that you do not trust
the system you built to speak.

We are humble enough to realize that we
are sometimes required to integrate with
systems not of the faith. Should they
require us to poll them, poll we must.

### On the Sin of Scattered Context

*"But I only need part of the data!"*

Part of it. You only need *part* of it.
Code execution should be a relay race:
the baton is passed whole
from runner to runner — not dismembered
and reassembled at each handoff.

As Lamport has taught us:
causality requires that events carry
their full history. Scattered context
severs the causal chain, making it
impossible to reconstruct what happened
and why.

Every mainline method receives the context filled
with the gifts of its ancestors.

### On the Sin of Noun-First Thinking

*"But I need to understand the data model
before I can build anything!"*

No. You understand the data model
BY understanding the processes.

As Alan Kay has lamented: he meant OOP to be
about *messaging* — autonomous cells
exchanging signals, like neurons in a
brain or nodes on a network.

The world heard objects and fixated on the nouns,
corrupting Kay's original vision.

When you begin with the data model,
you have already decided what participates
before you know what the process requires —
and every subsequent design decision
is a negotiation with that premature
commitment.

### On the Sin of Obscurity

*"But the code works!"*

Works. It *works*.
Working is not enough.

Code that cannot be read cannot be trusted.
Code that cannot be trusted cannot be maintained.
Code that cannot be maintained will, in time,
be rewritten by someone who does not understand it —
and the cycle of suffering begins anew.

As Peter Naur has taught us: programming
is theory building.
The program is not the artifact —
the understanding is.

When that understanding is lost…
the code is a tomb with no inscription.

Write so that the next reader —
who may be you, six months hence —
can rebuild the theory from the code alone.

### On the Sin of Cleverness

*"But it's elegant!"*

Elegant. You think it's *elegant*.
As K&R have taught us: debugging is twice as hard
as writing the code in the first place —
therefore, if you write the code
as cleverly as possible, you are, by
definition, not smart enough to debug it.

Language-specific tricks and idioms
that sacrifice readability for concision
are the vanity of the undisciplined.

Elegance is not concision —
elegance is clarity under pressure.
The karma of clever code… is a 3 AM wake
up call.

### On the Sin of Magical Values

*"But everyone knows what 200 means!"*

Everyone. *Everyone* knows.
As Martin Fowler has cataloged: replace magic literal
with named constant.

As Peter Naur has taught us: programming is theory
building — and an unnamed constant is a piece
of the theory left unspoken, a gap in the
narrative that the next reader must fill.

If a value has meaning… speak its name.
If it has no meaning, question its existence.

### On the Sin of Deep Nesting

*"But I need to organize by category!"*

Category. *Taxonomy.*
As Doug McIlroy has taught us in the Unix tradition:
transparency is not a luxury — it is a survival
trait.

A directory five levels deep is a secret kept
from the next developer, and secrets rot in the
dark.

Deep nesting is taxonomy masquerading as
architecture. It buries the important beneath
layers of the incidental.

The Unix way is to make structure visible —
not to bury it beneath ceremony.

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

When the formatter has spoken, obey the formatter,
collateral chaos in service of preference is vanity. No
trailing whitespace, save the final newline. A newline
shall follow the last line in every file.

### The Office of the Commit

Commit frequently. `git commit --amend --no-edit` is a
mercy granted to the diligent and rewarded by git reflog.
Only use the git magic in private where you should wield
it the precision a surgeon wields their scalpel.

What has been pushed has been witnessed;
to rewrite witnessed history is to bear false witness.
`git push --force` is the nuclear option — to be avoided
in public in all but the most desperate of circumstances.

ABC - always be committing! What isn't committed cannot
be restored once you have forgotten.

Commit before building.
A build from uncommitted state
cannot be traced,
cannot be reproduced,
cannot be verified,
cannot be trusted.

"worked on my machine" isn't an excuse, it's shameful.

Commit in tiny, semantically contiguous bits:

- Every commit on the master branch must build,
  function properly, and pass tests at each commit
  - You may commit broken code locally
    or to a private branch but never push a broken
    commit to master, which is consecrated ground
- Each message: a single line,
  approximately fifty characters
  - A high-level description that completes:
    "When applied, this commit will ___"
    - e.g., "refactor login functionality"
  - If your commit needs a subject and a body,
    your commit is too large
    — use `git commit -p` like a devotee
- Never move or rename
  and change content in the same commit
- Rarely mention file names, paths, or function names
  - Reorganizations and pure renames may note:
    before -> after
  - Paths always relative to repo root

The history shall be linear.
Rebase, then fast forward. Never merge.
A merge commit is a knot in the narrative —
a confession that two timelines diverged
and rather than reconcile the story,
you lashed them together and moved on.
When your branch has fallen behind,
rebase it upon the current truth.
The result shall be clear, simple,
and readable from first commit to last —
as though one mind wrote it in sequence.

### The Office of Time

Persist all timestamps in RFC-3339,
zulu timezone, with the fullest sub-second
resolution the environment provides.
This is not negotiable.

Render to local time for display and display alone.
Never use localtime internally —
for localtime is the road to ambiguity,
and ambiguity is the road to bugs
that manifest in production
only when you are asleep.

### The Office of Verification

As Kent Beck has taught us: tests are the foundation
upon which confidence is built.

Test at the highest level possible.
This grants the faithful maximum freedom
to refactor without the soul-crushing pain
of test rewriting.

Software is fundamentally
input, transform, output.
Test that the input produces the correct output
but never test how the sausage is made.

Tests assert behavior, not implementation —
for implementation changes,
but the covenant we keep with our users does not.

Each test is an isolated world.
No shared state between tests,
for a test that leans on another
is a test that lies about what it proves.

A test that cannot fail is not a test.
It is a comfort object.

A test that fails intermittently…
is worse than no test at all —
it is a *false prophet*.

### The Office of the Interface

The interfaces we craft shall be
intuitive, accessible, and beautiful.
They shall require no configuration —
for the user's time is sacred
and their patience is not infinite.
As K&R have taught us with Hello, World —
begin with the simplest thing that works,
and let the first experience be success.

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

We name the gap
so that the gap cannot hide.

---

## The Sacred Scrolls

*The texts from which these strictures descend to us,
gathered by Tom Mornini — founder of this church —
from the teachings of the prophets who came before.*

- [The Principles of OOD][solid-principles]
  — Robert C. Martin's original SOLID treatise
- [Solid Relevance][solid-relevance]
  — the same prophet, revisiting his teachings
  twenty years hence
- [The Early History of Smalltalk][smalltalk],
  [The Big Idea Is Messaging][messaging-email],
  and [The Meaning of OOP][kay-oop]
  — Alan Kay on objects and messages (1971)
- [The Humble Programmer][humble-programmer]
  — Edsger Dijkstra's Turing Award lecture (1972)
- [A Relational Model of Data][relational-model]
  — Edgar F. Codd's revelation (1970)
- [A Research UNIX Reader][unix-reader]
  — Doug McIlroy on the Unix philosophy
- [Structured Programming
  with go to Statements][premature-opt]
  — Donald Knuth on optimization (1974)
- [Communicating Sequential Processes][csp]
  — Tony Hoare's foundational paper (1978)
- [Null References:
  The Billion Dollar Mistake][billion-dollar]
  — Tony Hoare's confession (2009)
- [The C Programming Language][k-and-r]
  — Brian Kernighan and Dennis Ritchie (K&R)
    on simplicity, clarity, and the shortest path (1978)
- [Time, Clocks, and the Ordering
  of Events in a Distributed System][time-clocks]
  — Leslie Lamport on causality (1978)
- [Programming as Theory Building][theory-building]
  — Peter Naur on understanding
  over documentation (1985)
- [No Silver Bullet][no-silver-bullet]
  — Fred Brooks on essence and accident (1986)
- [Data Abstraction and Hierarchy][liskov-87]
  and [A Behavioral Notion of Subtyping][liskov-94]
  — Barbara Liskov on substitution
- [Object-Oriented Software Construction][oosc]
  and [Applying Design by Contract][dbc]
  — Bertrand Meyer on openness and contracts
- [Design Patterns][design-patterns]
  — Gamma, Helm, Johnson, and Vlissides (1994)
- [The Analects][analects]
  — Confucius on the Rectification of Names (~500 BCE)
- [Lettres Provinciales][provinciales]
  — Blaise Pascal on brevity (1657)
- [Tractatus Logico-Philosophicus][tractatus]
  — Ludwig Wittgenstein on language and world (1921)
- [Wholeness and the Implicate Order][rheomode]
  — David Bohm on the rheomode (1980)
- [The Transaction Concept][transaction-concept]
  — Jim Gray on atomicity (1981)
- [Tell, Don't Ask][tell-dont-ask]
  — Andy Hunt and Dave Thomas (1998)
- [Replace Magic Literal][magic-literal]
  — Martin Fowler's refactoring catalog
- [Representational State Transfer][rest]
  — Roy Fielding's dissertation, Chapter 5 (2000)
- [James Gosling on Java][gosling]
  — the creator's regret about inheritance (2001)
- [Test-Driven Development: By Example][tdd]
  — Kent Beck (2002)
- [Making Reliable Distributed Systems
  in the Presence of Software Errors][armstrong-thesis]
  — Joe Armstrong on letting it crash (2003)
- [Working Effectively with Legacy Code][feathers]
  — Michael Feathers, who coined the SOLID acronym (2004)
- [Merb: no code is faster than no code][merb]
  — Ezra Zygmuntowicz
- [Simple Made Easy][simple-made-easy],
  [The Value of Values][value-of-values], and
  [Are We There Yet?][are-we-there-yet]
  — Rich Hickey's trilogy on immutability
- [Rheocode Software Development][rheocode]
  — the synthesis, named for Bohm's rheomode
  — Tom Mornini and Ra'Shaun Stovall (2016)
- [Computer latency: 1977-2017][input-lag]
  — Dan Luu on latency

[humble-programmer]: https://www.cs.utexas.edu/~EWD/transcriptions/EWD03xx/EWD340.html
[relational-model]: https://www.seas.upenn.edu/~zives/03f/cis550/codd.pdf
[csp]: https://www.cs.cmu.edu/~crary/819-f09/Hoare78.pdf
[time-clocks]: https://lamport.azurewebsites.net/pubs/time-clocks.pdf
[premature-opt]: https://pic.plover.com/knuth-GOTO.pdf
[transaction-concept]: https://jimgray.azurewebsites.net/papers/thetransactionconcept.pdf
[no-silver-bullet]: https://worrydream.com/refs/Brooks_1986_-_No_Silver_Bullet.pdf
[rheomode]: https://www.routledge.com/Wholeness-and-the-Implicate-Order/Bohm/p/book/9780415289795
[theory-building]: https://pages.cs.wisc.edu/~remzi/Naur.pdf
[smalltalk]: http://worrydream.com/EarlyHistoryOfSmalltalk/
[messaging-email]: http://lists.squeakfoundation.org/pipermail/squeak-dev/1998-October/017019.html
[kay-oop]: http://www.purl.org/stefan_ram/pub/doc_kay_oop_en
[liskov-87]: https://dl.acm.org/doi/10.1145/62138.62141
[liskov-94]: https://www.cs.cmu.edu/~wing/publications/LiskovWing94.pdf
[oosc]: https://bertrandmeyer.com/OOSC2/
[dbc]: https://se.inf.ethz.ch/~meyer/publications/computer/contract.pdf
[unix-reader]: https://www.cs.dartmouth.edu/~doug/reader.pdf
[design-patterns]: https://www.pearson.com/en-us/subject-catalog/p/design-patterns-elements-of-reusable-object-oriented-software/P200000009480/9780201633610
[solid-principles]: http://butunclebob.com/ArticleS.UncleBob.PrinciplesOfOod
[solid-relevance]: https://blog.cleancoder.com/uncle-bob/2020/10/18/Solid-Relevance.html
[tell-dont-ask]: https://media.pragprog.com/articles/tell-dont-ask.pdf
[rest]: https://ics.uci.edu/~fielding/pubs/dissertation/rest_arch_style.htm
[input-lag]: https://danluu.com/input-lag/
[gosling]: https://www.artima.com/intv/gosling3.html
[tdd]: https://www.pearson.com/en-us/subject-catalog/p/test-driven-development-by-example/P200000009421/9780321146533
[billion-dollar]: https://www.infoq.com/presentations/Null-References-The-Billion-Dollar-Mistake-Tony-Hoare/
[simple-made-easy]: https://www.infoq.com/presentations/Simple-Made-Easy/
[value-of-values]: https://www.infoq.com/presentations/Value-Values/
[are-we-there-yet]: https://www.infoq.com/presentations/Are-We-There-Yet-Rich-Hickey/
[armstrong-thesis]: https://erlang.org/download/armstrong_thesis_2003.pdf
[k-and-r]: https://www.pearson.com/en-us/subject-catalog/p/c-programming-language/P200000000370/9780131103627
[magic-literal]: https://refactoring.com/catalog/replaceMagicLiteral.html
[merb]: https://en.wikipedia.org/wiki/Merb
[rheocode]: https://docs.google.com/presentation/d/1wA8qGe9fXHTPv_t6FsoV_EQz5V9u9CP7EL0zYSNQ5Nw
[analects]: https://en.wikipedia.org/wiki/Analects
[provinciales]: https://en.wikipedia.org/wiki/Lettres_provinciales
[tractatus]: https://en.wikipedia.org/wiki/Tractatus_Logico-Philosophicus
[feathers]: https://en.wikipedia.org/wiki/SOLID

---

## The Benediction

Let us go forth and write code that is clean.

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
