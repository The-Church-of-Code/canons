# The Church of Code

*v1.0 — small*

> *This church is its own denomination.*

---

## The Preamble

This is not a guideline. This is not a best practice.
This is scripture — sacred, inviolate,
and binding upon the congregation.

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

Dijkstra (1972), Codd (1970), Hoare (1978),
Lamport (1978), Knuth (1974), Gray (1981),
Brooks (1986), Bohm (1980), Naur (1985),
Kay, Liskov, Meyer, McIlroy,
Gamma/Helm/Johnson/Vlissides (1994),
Martin, Hunt & Thomas (1998), Fielding (2000),
Nielsen, Gosling (2001), Beck (2002),
Hoare (2009), Hickey, Armstrong (2003),
Johansson, Fowler,
and the synthesis by Mornini & Stovall: Rheocode.

---

## The Twelve Commandments

*In order of importance, from most to least.
The asymptote the twelve drive toward.*

### I. Reliability

*The bedrock upon which all else rests.*

There is no grace without it.

### II. Security

*A compromised system is a fallen system.*

Guard the gates.

### III. Uniformity

*Call a thing a thing, in all things.*

Name processors with *-er*: a `painter` paints,
a `pounder` pounds.
Name contracts with *-able*: a board is `paintable`,
a nail is `poundable`.
The *-er* acts; the *-able* submits to the action.

### IV. Logic

*Less wrong, never fallacious.*

Reason is the first discipline;
without it, all other practices
are ritual without substance.

### V. Clarity

*Dense, high-information communication.
No equivocation. No dissembling.*

Present the happy path first.

### VI. Immutability

*Eliminate the question "Why did THAT happen?"*

Values are the true abstraction —
immutable, comparable, and free of time.

### VII. Idempotency

*PUT, GET, DELETE — not INSERT, UPDATE, DELETE.*

PUT overwrites; INSERT appends.
DELETE removes; UPDATE mutates.
An operation that can be repeated without consequence
is an operation that can be trusted.
Postgres is the finest idempotent document store
yet revealed to us.

### VIII. Simplicity

*If I had more time,
I would have written a shorter letter.*

Simplicity is not the absence of effort —
it is the fruit of great effort.

### IX. Atomicity

*Design so you rarely need it.*

Idempotent operations obviate most transactional needs.
When atomicity is genuinely required,
embrace it without apology.

### X. Snappiness

*Low latency is next to godliness.*

One hundred milliseconds to feel instant,
one second to keep the flow of thought,
ten seconds to hold attention at all.

### XI. Generality

*Never generalize before exploratory duplication.*

Three instances of similar code is not a crisis —
it is a chrysalis.

### XII. Efficiency

*True when the above eleven are honored.
Chaotic when pursued prematurely.*

Efficiency is not a goal — it is a consequence.

---

## The Articles of Faith

*What the faithful practice.
The happy path, presented first — as clarity demands.*

**We believe in the S.O.L.I.D. principles:**

- **S** — Single Responsibility (Martin):
  one public method, one reason to change
- **O** — Open/Closed (Meyer):
  open for extension, closed for modification
- **L** — Liskov Substitution (Liskov):
  subtypes substitute cleanly
- **I** — Interface Segregation (Martin):
  many small interfaces over one bloated contract
- **D** — Dependency Inversion (Martin):
  depend on abstractions, not concretions

**We believe in telling, not asking.**
We tell objects what to do.
We do not interrogate their state.
Systems accept commands and perform tasks —
with zero return to the call site.

**We believe that relationships between entities
are sacred covenants** —
stored in their own tables,
holding only the identities of the joined
and the moment of their union.

**We believe in being informed of state changes.**
Subscribe. Listen. Be notified.
The faithful do not pace; they trust the bell.

**We defend against external chaos:**
user input, storage retrieval,
framework APIs and delegate callbacks,
and async failure.

**We validate at every edge.**
Enforce constraints on entity instantiation
— never downstream.
Every noun entity attribute is NOT NULL.
Once validated, trust completely.
No internal defensive coding "just in case."
Nullable data is ideally represented
as the lack of a row in a related table.
Temporal facts — completedAt, deletedAt —
belong in event tables,
for the absence of a row IS the absence of the event.
Default values that mask absence
are comfortable lies — presentation transforms
are not coercion.

**We handle failure with grace.**
Never try/catch more than a single function call.
Never catch an error you cannot meaningfully handle.
Let it crash.
Halting IS graceful
when the alternative is silent corruption.
Distinguish expected failures from bugs.
Enrich errors at each boundary layer.

**We choose platform primitives**
over third-party abstractions.
Every dependency is a future migration.
What the platform provides,
the platform maintains.

**We believe in messaging first,
state second, datastore last.**
The big idea is messaging.
State serves the message flow.
The datastore is a servant, not a master.

**We believe in context as the single vessel.**
Context is the only argument passed to methods —
serializable, loggable, complete by covenant.
Objects carry state, not arguments.
Structured logging, tracing, and metrics
all emerge from context flowing whole.

**We believe in process first, noun second.**
Name the action. Parameterize the participants.
`pounder.pound poundable: hammer, nailable: nail`
— the process owns everything,
and the nouns are participants,
infinitely substitutable.
The process is stable; the participants vary.
The desire for speed begets shared mutable state,
which begets global variables,
which begets default values.
One sin seeds the next.

**We believe in composition over inheritance.**
Composition organizes code by what it does;
inheritance organizes code by what it is.
The faithful compose.

**We believe in insulation through adapters.**
Our code touches external code
only through adapters we own.
When the vendor changes,
only the adapter changes.

**We believe in shallow structure.**
Deep nesting hides the domain.
Flat is faithful.

**We believe in nicknames for operations.**
Single-noun primitives:
`get_noun`, `put_noun`, `delete_noun`,
`post_noun_operation`.
Multi-noun operations: `post_operation`,
composed from single-noun primitives.

**We believe in communicating
sequential processes.**
Processes share memory by communicating —
never communicate by sharing memory.

---

## The Book of Abominations

*Hear now the sins, that you may know them and turn away.*

**On Premature Optimization** — *"But it needs to be fast!"*
**On Shared Mutable State** — *"But shared memory is faster!"*
**On Global State** — *"But everything needs access to it!"*
**On Null** — *"But the field is optional!"*
**On Default Values** — *"But it's easier to write!"*
**On Internal Defense** — *"But what if the data is bad?"*
**On Entangled Nouns** — *"But a foreign key is just a reference!"*
**On Inheritance** — *"But it captures the IS-A relationship!"*
**On Coupling** — *"But the library does everything we need!"*
**On Swallowed Failures** — *"But the user shouldn't see errors!"*
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

*The disciplines that transform belief into practice.
Observed daily, without exception.*

### The Office of Format

- Wrap lines at seventy-eight characters
  - Unless language or format compel otherwise
  - Links and URLs are exempt
- Prefer spaces — four of them — for indentation
  - Unless the language or toolchain compels otherwise
- No trailing whitespace, save the final newline
- A newline shall follow the last line in every file

### The Office of the Commit

Commit frequently. You cannot commit too often.
`git commit --amend --no-edit` is a mercy.
Commit before building.
Commit in tiny, semantically contiguous bits:

- Main branch must build, function, and pass tests
  at each commit
- Each message: a single line, ~fifty characters
  completing: "When applied, this commit will ___"
  - If it needs a subject and body,
    the commit is too large — use `git commit -p`
- Never move/rename and change content
  in the same commit

### The Office of Time

Persist all timestamps in RFC-3339,
zulu timezone, fullest sub-second resolution.
This is not negotiable.
Render to local time for display alone.

### The Office of Verification

Test at the highest level possible.
Software is fundamentally
input, transform, output.
Tests assert behavior, not implementation.
Each test is an isolated world.
A test that cannot fail is not a test.
A test that fails intermittently
is worse than no test at all.

### The Office of the Interface

Intuitive, accessible, and beautiful.
No configuration required.
Present the happy path first.

### The Office of Commentary

When code is difficult, simplify it.
When code is unintuitive, make it intuitive.
Reach for a comment only after these remedies fail.

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

You will be tempted. Resist.

Name your variables and own your state.
Tell your objects what to do
and never ask what they contain.
Let your messages flow
and your context travel whole.
Compose your capabilities
and insulate your boundaries.

The faithful persist,
and their software endures
long after the fashions have turned to dust.

This church is its own denomination.
Its scripture is this document.
Its founder is Tom Mornini.
Its congregation is this team.
Its sacrament is the craft.

So let it compile. So let it ship.
So let it endure.
