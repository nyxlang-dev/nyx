# Nyx — LLM Context File

> Dense reference for any AI agent working with Nyx code, whatever the
> provider. Load this file as context on first contact with the language.
> For the full spec, see [docs/SPEC.md](docs/SPEC.md).
>
> **Invariant**: this file is seeded into every project as docs/nyx/LLM.md, so it must
> never name an AI provider — the neutrality check of `scripts/testing/run_init_golden.sh`
> greps the seeded project and fails if it does.

**Version**: see the `VERSION` file (source of truth — this line does NOT carry a number on purpose: it went 4 minors stale once). **Self-hosting**: compiler written in Nyx, compiles
itself to native code via LLVM (fixed-point verified). Canonical test counts:
[docs/TESTS.md](docs/TESTS.md) — do not hardcode numbers from this file, they
go stale. Semantic type checker active end-to-end (real `TyVar`/occurs-check
unification, real monomorphization of generic impl-methods), a **borrow
checker** (`compiler/borrow.nx`, opt-in via `NYX_BORROW`, §5b), and **real
async** (stackful goroutines + M:N scheduler + epoll event loop — `await`/
`spawn` run actual concurrency, not sugar). Nyx spans bare-metal (raw
pointers, inline asm, no-GC) to full-stack web (reverse proxy, backend,
browser front-end via WASM, SQL) in ONE language, with a developer experience
designed for AI agents: this file, JSON diagnostics (`NYX_DIAG=json`), and a
friction-report loop (`nyx report`).

**Monorepo scope**: this repo is the LANGUAGE ONLY (compiler/ runtime/ std/
tooling + playground). All products (nyx-kv, nyx-serve, nyx-proxy, nyx-db,
nyx-queue, nyx-edit, nyx-shell) live in their own `nyx-*-stack` repos and are
consumed as Package Manager dependencies (§8, §10) — do not look for
`products/` or `services/` directories, they don't exist here anymore.

---

## 1. Install & run

```bash
curl -sSf https://nyxlang.com/install.sh | sh   # installs ~/.nyx/
nyx --version                                    # verify
nyx init my-app && cd my-app                    # create project
nyx build                                         # compile
nyx run [args...]                                 # build and run (args reach the program;
                                                  #   use `nyx run -- --flag` for flag-looking args)
nyx test                                          # run tests
```

Files use `.nx` extension. Entry point: `fn main() -> int { return 0 }`.

**What `nyx init` seeds** (ADR-1, 2026-09-04 — provider-neutral by default, one language
per project):

```
my-app/
├── AGENTS.md            # the playbook an agent reads FIRST: decision procedure,
│                        #   hard rails, the gotchas (generated), map of docs/nyx/
├── CAPABILITIES.md      # generated index of the stdlib — refreshed on every nyx build
├── docs/nyx/LLM.md      # this file (English only; the Spanish set links to it)
├── docs/nyx/guides/     # write-a-program.md, fix-a-compile-error.md, report-friction.md
├── nyx.toml             # [package] name/version/main + [dependencies]
├── src/main.nx
└── .gitignore
```

Flags: `nyx init --lang es` seeds the Spanish set (default: `NYX_LANG` if it is `es`, else
English) — the choice is recorded in the seed stamp of every seeded file
(`<!-- nyx-version: X nyx-lang: xx -->`). `nyx init --agent=<tool>[,<tool>]` additionally
seeds one 3-line adapter file per named AI tool, for tools that do not read `AGENTS.md` on
their own; each adapter does nothing but point at `AGENTS.md` and `docs/nyx/guides/`, and
the accepted tool names are in the usage line that `nyx init` prints (they also name the
files in `templates/adapters/` of the toolchain). `nyx update --sync-docs` re-seeds
AGENTS.md and docs/nyx/ from the installed toolchain, in the project's language, leaving
.bak copies.

**Optional SDD scaffolding** — `nyx init --sdd` (new project) or `nyx sdd init` (a project
that already exists) adds a second, reversible layer for work where deciding costs more
than typing:

```
docs/constitution.md          # 7 empty sections + the marker SDD_INCOMPLETE
docs/glossary.md              # term · meaning · source, empty
docs/adr/0000-template.md     # one decision per file
docs/sdd/onboarding.md        # the guide: OFFER 7 questions, one per section, never invent
docs/evidence/nyx-<ver>.md    # GENERATED: live traps/rules of the installed toolchain
specs/README.md               # the cycle: constitution → spec.md → plan.md → tasks.md
tests/constitution_test.nx    # GENERATED: one test block per grep-able gotcha (file:line)
AGENTS.md                     # +2 marked lines that trigger the offer
```

While the marker `SDD_INCOMPLETE` is still in the constitution, the agreed behaviour is:
offer to fill it in, ask one question per section, write the answers verbatim, accept
"skip"/"not applicable", and remove the marker only when all seven sections have at least
one true line — never by inventing content. Nothing else in the project is touched, a
second run changes nothing, and deleting those paths (the command prints the list when it
finishes) returns the project to a plain `nyx init`. `nyx update` regenerates the two
generated pieces so they never describe an older toolchain than the installed one.

### Self-check loop — use it before claiming anything works

You cannot run a program in your head, and Nyx is not in your training data.
These four commands are your feedback loop. `check` is the fastest: it type-checks
without linking or executing and **exits non-zero when something is wrong**. It resolves
`import "src/..."`, `import "std/..."` and the prelude the same way `nyx build` does, and
`nyx test` type-checks each test too, so `nyx check && nyx test` holds as the type gate of a
multi-module project.

```bash
nyx check [file.nx]    # parse + type-check (resolves project and std imports). No linking, no execution. Exit 1 on error.
nyx fmt   [file.nx]    # canonical formatting (prints to stdout)
nyx vet   [file.nx]    # unused vars, dead code after return/break, unused imports
nyx test               # run tests/*.nx
```

With no argument they use `src/main.nx` (the project entry point). All four
honour `NYX_SRC=path` too.

**Tests must use `test` blocks, not functions named `test_*`.** A file whose
tests are plain functions is silently skipped — `nyx test` reports "No files
with test blocks found" and you would wrongly conclude your code is tested:

```nyx
// tests/test_math.nx
test "addition works" {
    assert(1 + 1 == 2)
}

test "strings are bytes" {
    let s = "hola"
    assert(s.length() == 4)
}
```

---

## 2. Core syntax

### Variables

```nyx
let x: int = 42          // immutable
var y = 0                 // mutable (type inferred)
const MAX = 100           // compile-time constant (int/float/bool/String since v0.16)
```

### Types

```nyx
// Primitive: int (i64), float (f64), bool, char (i8), String
// Collections: Array (heterogeneous dynamic), Map (hash map), Fn (function value)
// Sized ints: i8, i16, i32, i64, u8, u16, u32, u64, usize
// Floats: f32 (float is f64 by default)
// Raw: *T, &T, &mut T (pointer/reference syntax, no borrow check)
```

### String interpolation

```nyx
let name = "Nyx"
let ver = 12
print("Hello ${name} v${ver}!")   // "Hello Nyx v12!"
print("${10 + 20}")                // "30"
```

### Control flow

```nyx
if x > 10 { print("big") } else if x == 10 { print("ten") } else { print("small") }

while i < 10 { i = i + 1 }

for i in 0..10 { }         // exclusive
for i in 0..=10 { }        // inclusive
for item in [1,2,3] { }
for p: Point in points { print(p.x) }   // type hint needed for struct/string arrays
```

### Functions

```nyx
fn add(a: int, b: int) -> int { return a + b }

// Default parameters
fn greet(name: String, greeting: String = "Hello") -> String {
    return "${greeting}, ${name}!"
}

// Varargs
fn sum(...nums: int) -> int { ... }

// Function values
let f: Fn = some_fn
let fn_typed: Fn(int, int) -> int = add    // preferred for callbacks
```

### Structs

```nyx
struct Point { x: int, y: int }

impl Point {
    fn distance(self) -> float {
        return math_sqrt(to_float(self.x * self.x + self.y * self.y))
    }
}

let p = Point { x: 3, y: 4 }
print(p.distance())
```

**Struct literals are forbidden in `if`/`while`/`for`/`if let`/`while let` HEADERS
without parens** (Go/Rust style): `if b { }` treats `{` as the block, never as an
empty struct-init. To build a struct inside a condition, wrap it in parens or a call:
`if (Point { x: 1 } == p) { }`, `if takes_point(Point { x: 1 }) { }`.

**In-place mutation (v0.17, Go-style):** a method taking `&mut self` receives the
struct BY POINTER — field assignments persist in the caller. `&self`/plain `self`
remain by-value (mutations are lost).

```nyx
struct Counter { n: int }
impl Counter {
    fn bump(&mut self) { self.n = self.n + 1 }   // mutates the caller's struct
}
var c = Counter { n: 0 }
c.bump()
print(c.n)                    // 1

// Raw pointer auto-deref (Go-style, NO explicit (*p).field):
fn reset(p: *Counter) { p.n = 0 }   // p.field reads/writes through the pointer

// C→Nyx callback (v0.20.x): pass a top-level Nyx fn to a C lib as a raw
// C-callable pointer. c_fn_ptr(fn) -> *i8 (bitcast of @fn; closures rejected).
// string_from_cstr(*i8) -> String wraps a const char* handed back from C.
extern "C" fn c_apply(cb: *i8, x: int) -> int
fn on_tick(x: int) -> int { return x * 2 }
// c_apply(c_fn_ptr(on_tick), 21) -> 42
// ABI is YOUR responsibility (like any extern "C"): the callback fn's declared
// types must match the C signature EXACTLY. Gotcha: C `int` = 32 bits but Nyx
// `int` = i64 -> use `i32`, or 64-bit callbacks (`long`/`int64_t` <-> Nyx `int`).
// A void Nyx fn lowers to an i64-0 return, harmlessly ignored by a C
// `void(*)(...)` callback. Calling convention follows NYX_TARGET's triple
// (SysV/AAPCS on linux, Win64 under *-pc-windows-msvc) — callback and callee
// share the triple, so LLVM emits the matching CC on both sides for free.

// LLM inference (v0.20.x): Nyx orchestrates llama.cpp via dlopen (std/llm).
// let l: LLM = llm_load("model.gguf")   // affine — ALWAYS annotate the type
// llm_generate(&l, "prompt", 64)         // borrows; drop frees model once at scope end
// llm_generate_stream(&l, p, 64, c_fn_ptr(on_piece))  // fn on_piece(p: *i8) per token
// Env: NYX_LLAMA_SO=/path/libllama.so (or the CI stub). Never call l.drop() manually.
// One generate call at a time per handle. CI validates against a stub .so
// (deterministic); validation against a real llama.cpp build + model is a
// tracked follow-up (TASKS.md, scripts/llm-real-demo.sh) — not yet done.
```

Out of scope v1 (compiler rejects or ignores): `&mut self` dispatched via
`dyn Trait` (bilingual fail-fast error), `&mut self` captured as a closure.
See also `std/stack` (first stdlib data structure built on `&mut self`).

### Enums + pattern matching (exhaustive)

```nyx
enum Shape { Circle(int), Rect(int, int), Square(int) }

let s = Shape.Circle(5)    // Note: USES `.` NOT `::`

let area = match s {
    Shape.Circle(r) => r * r * 3,
    Shape.Rect(w, h) => w * h,
    Shape.Square(n) => n * n
}
```

### Traits

```nyx
trait Display { fn to_string(self) -> String }

impl Display for Point {
    fn to_string(self) -> String { return "(${self.x}, ${self.y})" }
}

// Derive macros
#[derive(Clone, PartialEq, Debug, Default, Display)]
struct User { name: String, age: int }
```

Los ocho derives válidos son `Clone`, `PartialEq`, `Debug`, `Display`, `Default`,
`Fields`, `Copy` y `Hash` (los dos últimos son marcadores: se aceptan y no emiten
código). Cualquier otro nombre es **NYX1029** con did-you-mean, y un derive sobre un
struct **genérico** es **NYX1030** (el codegen no emite derives para un template).

**`#[derive(Fields)]`** (v0.31.0) hace que el struct se describa a sí mismo. Emite tres
**funciones libres** —no métodos— resueltas en compilación, sin reflexión en runtime:

```nyx
#[derive(Fields)]
struct Contacto { nombre: String, rif: String, activo: bool, saldo: int }

Contacto_campos()      // ["nombre:String", "rif:String", "activo:bool", "saldo:int"]
Contacto_valores(c)    // ["El Tornillo", "J-29643190-6", "true", "1500"]
Contacto_desde_fila(f) // -> Contacto, desde un Array de String
```

El **orden de declaración** es el contrato entre las tres: `valores()[i]` es el valor del
campo que describe `campos()[i]`, y `desde_fila` lee esa misma posición. Es lo que
permite escribir un ORM sin repetir el modelo dos veces: el `CREATE TABLE`, la lista de
columnas y los placeholders del `INSERT` salen todos de `campos()`, así que renombrar un
campo cambia el SQL solo. Receta completa: `examples/by-example/103-orm-sin-mapeo.nx`.

Dos límites que hay que saber ANTES de usarlo:
- Solo convierte `int`, `bool`, `float` y `String`. Un campo `Array`/`Map`/struct anidado
  **aborta la compilación** con **NYX2013** (gotcha `derive-fields-solo-primitivos`, §5.3).
- `desde_fila` acepta TODAS las formas booleanas que emiten sus dos productores:
  `true`/`false` (que es lo que escribe `valores()`), `t`/`f` (el formato text de
  PostgreSQL) y `1`/`0`. Una fila de `try_pg_query` **no hay que normalizarla**.
  Cualquier otro texto ABORTA nombrando el valor, en vez de asumir `false` — un booleano
  ininteligible no es `false`. (Esta línea decía lo contrario hasta el 2026-09-11: que
  solo se reconocía `"true"` y que había que normalizar a mano. Era falso desde que el
  conversor pasó al runtime, y hacía que un ORM escribiera una pasada de normalización
  por cada lectura de cada modelo. Lo reportó nyxerp midiéndolo. Ver gotcha
  `derive-fields-pg-bool-text`, §5.1, que ya decía lo correcto — la mentira vivía acá, en
  la parte NO generada de este archivo.)

### Generics (monomorphized)

```nyx
fn identity<T>(x: T) -> T { return x }
fn max<T>(a: T, b: T) -> T { if a > b { return a }; return b }
```

### Option and Result (built-in)

```nyx
enum Option<T> { Some(T), None }
enum Result<T, E> { Ok(T), Err(E) }

let maybe: Option = Option.Some(42)
if let Option.Some(v) = maybe { print(v) }

// Try operator
fn may_fail() -> Result { return Result.Err("oops") }
let val = may_fail()?    // early-returns Err

// ? also works on Option, inside a fn that returns Option (v0.31.0)
fn buscar(k: int) -> Option<int> { if k == 1 { return Option.Some(42) }; return Option.None }
fn duplicar(k: int) -> Option<int> {
    let v = buscar(k)?    // Some(42) -> v=42; None -> early-returns None
    return Option.Some(v * 2)
}
```

Mixing `Option` and `Result` through `?` is a compile error, not a silent
degradation — see NYX1028 in §Option/Result below.

**Errors = the two-tier rule (E4, `std/error`)**: if the caller can
reasonably do something other than log-and-die → `Result<T, Error>`; if
not → panic (`unwrap()`, an aborting builtin). `Error { code, kind, msg }`
(`import "std/error"`) is the ONE shape for every fallible stdlib
function going forward — `kind` is a closed vocabulary (`not_found`,
`permission`, `connection`, `parse`, `timeout`, `in_use`, `io`, `invalid`,
`oom`, `eof`, `db`), built from errno via `errno_to_kind(code)` — except `eof`
(code 0, expected end-of-stream, NEVER an errno; `errno_to_kind` never
maps it, callers build it directly via `err_new(0, "eof", ...)`) and `db`
(E5.5, sqlite's OWN result-code space — sqlite's rc values 1-27 COLLIDE
with errno, e.g. rc 2 is SQLITE_INTERNAL not ENOENT, so mapping them via
`errno_to_kind` would lie; same precedent as `eof`);
`error_to_string(e)`
is the one human format. For files, `try_read_file(path) -> Result<String,
Error>` / `try_write_file(path, content) -> Result<int, Error>`
(`import "std/fs"`) are the canonical Result-returning I/O for new code —
prefer them over the old `read_file`/`write_file` sentinels (`""` for
both empty-file and error; `write_file` aborts the process on any
failure). See `examples/by-example/101-file-errors-two-tier.nx`.
Gotcha: `let w = try_write_file(...)` WITHOUT a type annotation loses the
generic `Result<T,E>` (opaque `i8*` to the checker) — `w.unwrap()` then
fails with "method 'unwrap' is not available on a receiver of type
'i8*'"; annotate `let w: Result<int, Error> = try_write_file(...)`. For
sockets (E5.1+E5.2+E5.2b, `import "std/net"`), `try_tcp_connect(host,
port)` / `try_tcp_listen(host, port)` / `try_udp_bind(host, port)` /
`try_tcp_accept(listen_fd)` / `try_tcp_read(fd, max)` /
`try_tcp_write(fd, data)` / `try_udp_sendto(fd, data, host, port)` /
`try_udp_recvfrom(fd, max)` / `try_resolve(host)` / `try_tcp_read_line(fd)`
/ `try_tcp_read_partial(fd, max)` / `try_tcp_read_exact(fd, n)` /
`try_tcp_shutdown(fd, mode)` / `try_tcp_set_timeout(fd, secs)` /
`try_getpeername(fd)` / `try_resolve_ptr(ip)` are the full
Result-returning family over the old `tcp_connect`/`tcp_listen`/
`tcp_accept`/`tcp_read`/`tcp_write`/`udp_bind`/`udp_sendto`/
`udp_recvfrom`/`resolve`/`tcp_read_line`/`tcp_read_partial`/
`tcp_read_exact`/`tcp_shutdown`/`tcp_set_timeout`/`getpeername`/
`resolve_ptr` builtins, which abort or print to stderr on failure instead
of returning a typed error (e.g. `EADDRINUSE` surfaces as `kind ==
"in_use"`, `code == 98`). Three measured gotchas from the I/O half
(E5.2+E5.2b):
1. **EOF vs. blocking is asymmetric between TCP and UDP.**
   `try_tcp_read(fd, max)` returns `Ok("")` when the peer closed cleanly
   — that's EOF, not an error, same rule as `try_read_file` on an empty
   file. But with the connection still OPEN, asking for `max` bytes when
   fewer are available BLOCKS until `max` bytes arrive (it loops `recv()`
   to fill `max` exactly, no short-read) — a `max=4096` "just in case"
   buffer over a 4-byte message hangs the process with no error, UNLESS
   the caller previously called the builtin `tcp_set_timeout(fd, s)`
   (SO_RCVTIMEO) on that same fd — that IS the escape from the block, not
   a parameter of `try_tcp_read` itself. With the timeout active
   (measured in the unit test): partial data already gathered when
   `recv()` times out returns `Ok(partial)` (a real short-read, despite
   "no short-read" above — that only holds without a timeout); no data at
   all returns `Err{code:11 EAGAIN, kind:"io"}` (11 isn't in
   `errno_to_kind`'s closed vocabulary, falls to the "io" catch-all — open
   question in TASKS.md on whether it deserves its own "timeout" kind).
   `try_udp_recvfrom(fd, max)` shares the same timeout escape
   (`Err{code:11, kind:"io"}`) but not the short-read subtlety: it makes a
   single `recvfrom()` and returns whatever datagram arrives, even if
   shorter than `max` — never waits to accumulate `max` bytes across
   datagrams, so there's no partial-then-fail case to lose errno from.
2. **`try_resolve(host)` uses its own error kinds, not `errno_to_kind`.**
   `getaddrinfo()` failures map to `kind == "not_found"` (unresolvable
   host) or `kind == "timeout"` (resolver busy, EAI_AGAIN) via an
   explicit `err_new` call in `try_resolve` itself — `errno_to_kind`
   stays untouched (the E5.1 trio still sees code 113 as generic `"io"`
   in its own context).
3. **The EOF asymmetry (E5.2b) — `Ok("")` vs. `Err{0, "eof"}` depends on
   whether `""` would be ambiguous.** `try_tcp_read(fd, max)` and
   `try_tcp_read_partial(fd, max)` return `Ok("")` for EOF — a `""` of raw
   bytes is NEVER ambiguous, there's no "empty line" or "n exact bytes"
   reading to confuse it with. `try_tcp_read_line(fd)` and
   `try_tcp_read_exact(fd, n)` do NOT: a real empty line (a lone `\n`) IS a
   legitimate `Ok("")`, and reusing that same shape for EOF would make the
   two indistinguishable — the exact bug `try_tcp_read_line` exists to
   prevent. So those two reserve `Err(err_new(0, "eof", ...))` for clean
   EOF instead (Go's `io.EOF` precedent), keeping `Ok("")` for the real
   empty-line/zero-length case. `kind == "eof"` is control flow, not
   failure — a caller looping on `try_tcp_read_line` breaks the loop on
   `kind == "eof"`, not on `Ok("")`. `try_tcp_read_line` is the canonical
   way to read a line in new code: the old `tcp_read_line` builtin
   (sentinel `""` for both empty-line and EOF) is legacy, kept for
   backward compat only — prefer the `try_` version whenever the caller
   needs to tell "blank line" from "connection closed" apart. Same
   sentinel-vs-Result split for `try_tcp_read_exact`: a peer that closes
   mid-read discards the partial bytes already received (documented,
   can't do anything useful with a short prefix when the contract is
   "exactly n") and returns `Err{0, "eof"}`, never a truncated `Ok`.

For HTTP clients (E5.3, `import "std/http"`), `try_http_get(url)` /
`try_http_post(url, body)` / `try_http_request(method, url, headers,
body) -> Result<Array, Error>` are the canonical typed family — Nyx-pure,
built entirely on the `std/net` `try_` family above (`try_tcp_connect`/
`try_tcp_write`/`try_tcp_set_timeout` + the raw `http_parse_url`/
`http_build_request`/`http_read_response` helpers), the family's first
real consumer. The old `http_get`/`http_post`/`http_request` sentinels
(centinela `-1` status mixed in with real status codes) stay untouched
for backward compat. **The two-tier rule applied to HTTP: a status code
is application data, not a transport failure.** ANY well-formed HTTP
response — 200, 404, 500 — is `Ok(response)`: the server answered, that's
transport success. `Err` is exclusive to real transport failures: a URL
with no parseable host (`Err{22, "invalid"}`), connect refused/timeout/DNS
failure (the real `Error` from `try_tcp_connect`, e.g. `kind:
"connection", code: 111` for ECONNREFUSED), or a "response" that isn't
valid HTTP with the connection still open (`Err{5, "parse"}` — `status ==
0`, the never-a-real-HTTP-code sentinel `http_read_response` leaves
unparsed). A caller who wants 4xx/5xx treated as failure must check
`http_status(r) >= 400` explicitly after unwrapping `Ok` — the function
never decides that for you. TLS (`https://` URLs) degrades honestly
instead of faking an errno the channel doesn't have: `http_tls_request`
(the runtime's own `tls_connect`/`tls_read`/`tls_write` channel) has no
errno path, only a `-1` status sentinel with a free-text message, so the
`try_` wrapper maps that sentinel to `Err{5, "connection", msg}` (5 =
generic EIO, not a measured errno) — ficha open in TASKS.md for a typed
`nyx_tls_connect_result` channel that would replace it with a real one.
Gotcha: `http_parse_url` never fails with an explicit flag, so URL-invalid
detection is `host == ""` (measured: `""`, `"http://"`, `"http:///path"`
all give `host == ""`) — a non-empty but nonsensical host like
`"not-a-url"` is NOT caught here, it falls through and fails later as a
real connect/DNS error instead. Gotcha #2: the response read still runs
over the sentinel `tcp_read_line`/`tcp_read` channel underneath (not the
`try_` family), so a peer that accepts but never responds surfaces as
`Err{5, "parse"}` instead of a real timeout kind — misattributed, not a
bug, until the typed-read follow-up (ficha in TASKS.md) lands.

For an embedded SQL database (E5.5, `import "std/sqlite"`),
`try_sqlite_open(path)` / `try_sqlite_exec(db, sql)` / `try_sqlite_query(db,
sql)` / `try_sqlite_query_named(db, sql)` are the Result-returning family
over the old `sqlite_open`/`sqlite_exec`/`sqlite_query`/`sqlite_query_named`
sentinels (NULL db handle / bare `bool` / a raw `Array`, with no way to
learn WHY without a second manual call to `sqlite_error(db)`).
`begin`/`commit`/`rollback`/`exec_int`/`exec_str`/`query_int` don't have a
`try_` sibling yet — same mechanical pattern, tracked in TASKS.md
(cosecha `E5.5-sqlite`). `code` in the `Err` is usually `0`: the C adapter
(`runtime/sqlite_adapter.c`, untouched by this family) collapses several of
its own functions to boolean/NULL before Nyx ever sees sqlite's granular
rc, so there's nothing more precise available today (see the SONDA
comments inline in `std/sqlite.nx`) — `msg` always carries the real
`sqlite3_errmsg(db)` text whenever a db handle is alive to ask it. Two
things measured while building this family, both worth knowing even if
you never touch `std/sqlite.nx` yourself:
1. **The OLD `sqlite_query`/`sqlite_query_named` sentinels swallow a real
   mid-query error in silence.** Their step loop treats ANY non-`SQLITE_ROW`
   result as "the query is done" — but a genuine step-level failure (e.g.
   `SQLITE_CONSTRAINT` from a PRIMARY KEY conflict on an `INSERT` run
   through `sqlite_query`) collapses to that same "done" branch, so the
   sentinel returns the rows gathered so far as if the query had finished
   cleanly, with no signal that something failed partway through. Low blast
   radius (a plain `SELECT` never triggers a step error) but real for
   `INSERT`/`UPDATE` statements run through the query functions — a
   non-conventional but valid use. The `try_` siblings distinguish this
   correctly (`Err{kind:"db", ...}`); the old sentinels are NOT being
   patched (out of scope for this arc, catalogued in TASKS.md).
2. **A negative C `int` doesn't survive the FFI boundary as `-1` unless the
   C signature says so — see the general trap in §5.1.** This is the class
   that let finding 1 hide: naive Nyx code that compares an `extern "C"`
   return against the exact sentinel `-1` silently never matches.

### Closures

```nyx
fn make_counter() -> Fn {
    var n = 0
    fn inc() -> int { n = n + 1; return n }
    return inc
}

let counter = make_counter()
print(counter())    // 1
print(counter())    // 2
```

### Iterators (lazy, chainable)

```nyx
let evens = [1,2,3,4].iter()
    .filter(fn(x: int) -> bool { return x % 2 == 0 })
    .map(fn(x: int) -> int { return x * 10 })
    .collect()
```

### Modules

Local modules import by their **path relative to the project root** (with the `src/`
prefix), NOT by bare name. An unresolved import is a **compile error with a
`src/<path>` hint** (since v0.16.1 — it used to be silently ignored). Build with
`nyx build` inside a project (`nyx.toml`).

```nyx
// file: src/my_module.nx
export fn helper() -> int { return 1 }

// file: src/main.nx — consumer (use the src/ path)
import "src/my_module"          // brings in the module's exported fns
import "std/http" as http       // stdlib modules import by std/ path
fn main() { print("${helper()}") }
```

**Functions resolve PER MODULE (v0.25.0)** — before that, two modules
exporting the same fn name collided silently and the LAST definition won,
even for a QUALIFIED call (`render.px(x,y,c)` executed `player.px()`: no
error, wrong function, blank screen). Now:

- `alias.fn(...)` calls the fn of THAT module, always.
- An unqualified call to a name that exists in the caller's own module
  resolves there first (a module's own fns see each other without
  qualifying).
- An unqualified call ambiguous between two imported modules is an error
  (**NYX2010**) naming both modules — qualify it or rename.
- Module fns are emitted as `<module_path>__<fn>` in the IR; the main file
  and the prelude keep bare names (single-file programs: zero change).
- Note `pub` is still cosmetic — this arc changed HOW names resolve, not
  what is visible.

### Error handling

```nyx
try {
    risky_call()
} catch (e) {
    print("failed: ${e}")
}
```

`catch (e)` needs the parens (`catch e { ... }` is a parse error — `LEFT_PAREN` is mandatory).
`catch` always binds `e` as a `String`; `catch (e: T)` for any `T` other than `String` is
**NYX1027** — the annotation is reserved, not a promise of a future typed catch (see §5.2
`throw-deprecated` below: `throw(x)` is a deprecated alias of `panic(x)`, same channel, same
`catch`). New in v0.31.0:

| Code | What |
|---|---|
| NYX1025 | `?` propagates an `Err` whose `E` differs from the function's declared `E` — no `From`-conversion in v1, same `E` on both sides or compile error |
| NYX1026 | `throw`/`panic` payload is not `String` or `int` (a struct/enum/float payload used to produce untyped IR or, worse, silently corrupt memory — see docs/SPEC.md §Try-Catch) |
| NYX1027 | `catch (e: T)` annotation is not `String` |
| NYX1028 | `?` mixes `Option` and `Result`: an `Option` operand inside a fn returning `Result` (hint `.ok_or(e)?`), or a `Result` operand inside a fn returning `Option` (hint `match`/`unwrap_or`) |

`Map.get(k)` (aborts if missing) and `get_or(k, default)` (never aborts) coexist — no migration
to `Option<T>` planned (would be a breaking MAJOR change to a builtin).

### Defer (always runs at scope exit)

```nyx
defer { raw_mode_exit() }    // block form
defer cleanup()               // bare-expression form also works (v0.16+)
```

---

## 3. Built-in type methods

### Array

| Method | Args | Returns | Notes |
|--------|------|---------|-------|
| `length()` | 0 | int | — |
| `push(val)` | 1 | — | append |
| `pop()` | 0 | any | **Buggy in some codegen paths** — prefer `length() - 1` + `remove` |
| `unshift(val)` | 1 | — | prepend |
| `shift()` | 0 | any | remove first |
| `insert(idx, val)` | 2 | — | — |
| `remove(idx)` | 1 | — | — |
| `slice(start, end)` | 2 | Array | — |
| `reverse()` | 0 | Array | — |
| `indexOf(val)` | 1 | int | -1 if not found; String needle matches by CONTENT on tagged slots (v0.22.16 slots-tag) |
| `contains(val)` | 1 | bool | String needle matches by CONTENT on tagged slots (v0.22.16 slots-tag); ints by value |
| `join(sep)` | 1 | String | — |
| `iter()` | 0 | Iterator | for chainable ops |

### String

| Method | Args | Returns | Notes |
|--------|------|---------|-------|
| `length()` | 0 | int | **BYTES** (v0.14 unified contract — same unit as substring/indexOf/charAt) |
| `byte_length()` | 0 | int | alias of `length()` |
| `char_length()` | 0 | int | **UTF-8 codepoints** — use for UI widths / character counts |
| `charAt(idx)` | 1 | int | **Returns int (byte at idx), NOT String** |
| `substring(s, e)` | 2 | String | byte offsets — `substring(0, length())` is the identity |
| `split(sep)` | 1 | Array | — |
| `contains(s)` | 1 | bool | — |
| `trim()` | 0 | String | — |
| `toUpper()` / `toLower()` | 0 | String | (aliases: `to_upper`, `to_lower`) |
| `startsWith(p)` / `endsWith(s)` | 1 | bool | (aliases: `starts_with`, `ends_with`) |
| `replace(old, new)` | 2 | String | — |
| `repeat(n)` | 1 | String | — |
| `indexOf(s)` / `indexOf(s, from)` | 1-2 | int | -1 if not found; `from` = byte offset to start from (absolute result; clamps `from<0` to 0) |

`indexOf` is the ONLY String method with a real overload (1 or 2 args). Every
other method above rejects extra args as a compile error (A8, v0.22.x+) —
`s.startsWith("x", 99)` and `s.trim(42)` are `NYX1006` errors now, not silent
no-ops that ignored the extra argument.

### Map

| Method | Args | Returns | Notes |
|--------|------|---------|-------|
| `Map.new()` | 0 | Map | constructor (literal `{}` NOT supported) |
| `insert(k, v)` | 2 | — | — |
| `get(k)` | 1 | any | **ABORTS the process if the key is missing** (exit 1, names the key) — for optional reads use `get_or` |
| `get_or(k, default)` | 2 | any | v0.24.13: safe read — missing key returns `default`, never aborts. Type follows the default (String default → String, int default → int). Receiver must be a local Map var (field receiver: catalogued) |
| `has(k)` / `contains(k)` | 1 | bool | — |
| `size()` | 0 | int | — |
| `keys()` / `values()` | 0 | Array | — |
| `remove(k)` | 1 | — | **only on a local Map var, NOT on a field** (see warning) |
| `clear()` | 0 | — | — |

**Warning**: Nested Maps work when the value being inserted is a tracked local
`Map` variable or an inline map-literal (`outer.insert("i", inner)` with
`let inner: Map = {...}`, or `outer.insert("i", {"k": "v"})`) — `outer.get("i")`
correctly reconstitutes the nested Map. But a Map returned directly from a
function call as the insert value is NOT detected (the fix is a static check
on the argument's AST shape, not on its real type) and still SEGVs on read.
When you can't guarantee the value is a variable or literal, use flat key
encoding instead: `"key::field"`.

**Warning**: `map.remove(k)` on a Map accessed via a struct **field** (`obj.my_map.remove(k)`)
is a silent NO-OP (the field-access method dispatch doesn't implement Map remove). Bind to a
local first: `let m = obj.my_map; m.remove(k)` (Maps are references, so it mutates the same map).

### Option / Result

| Method | Notes |
|--------|-------|
| `is_some()` / `is_none()` | Option |
| `is_ok()` / `is_err()` | Result |
| `unwrap()` | panics on None/Err |
| `unwrap_or(default)` | — |
| `map(f)` / `and_then(f)` | both |
| `map_err(f)` | Result only |
| `ok_or(e)` | Option only — `Some(x)` → `Ok(x)`, `None` → `Err(e)`, with `e` of any type `E` (result: `Result<T, E>`) |

**Option → Result bridge** (v0.31.0): `?` on an `Option` inside a function that
returns `Result` is a compile error (NYX1028) — the `None` would arrive as an
`Err` with nothing inside. Convert the absence into an error first:
`let v = opt.ok_or(err_new(2, "not_found", "no key"))?`. `T` can be anything —
`int`, `String`, a struct — and `?` hands it back decoded, both chained and in
two steps. The receiver must be a variable (`let o: Option<int> = ...` then
`o.ok_or(e)`), like every other Option/Result builtin method. The reverse mix
— a `Result` operand inside a fn returning `Option` — is also NYX1028, bridged
with `match` or `unwrap_or` (there's no `ok()` on `Result`, YAGNI).

**Converting `E`**: the idiom is `.map_err(f)?`, with the receiver bound to a
variable first (same limitation as above — `expr().map_err(f)?` chained on a
direct call fails with "method 'map_err' is not available on a receiver of
type 'i8*'"):
```nyx
let r: Result<int, String> = parse_num(s)
let v = r.map_err(convertir)?    // E: String -> String (or any other E)
```
There is no `From`-conversion in v1 (NYX1025 if the `E`s differ and neither
side maps them) — E7 shipped `?` on `Option` + `ok_or` in its minimal form;
`From` stays out of scope unless an error domain actually diverges from the
single `Error` struct.

### Iterator (chainable)

`next`, `map`, `filter`, `take`, `skip`, `enumerate`, `chain`, `collect`,
`fold(init, f)`, `sum`, `count`, `any(pred)`, `all(pred)`

---

## 4. Global builtins (no import needed)

### I/O
- `print(x)` / `print_no_newline(x)` — to stdout
- `read_line()` — read a line from stdin. **EOF contract (documented 2026-08-06,
  friction report)**: at EOF it returns the SENTINEL string `":EOF:"` (legacy,
  load-bearing — editor/grep examples compare against it). A stdio-server loop is
  `while true { let l = read_line()  if l == ":EOF:" { break } ... }`. Caveat: a
  real input line containing exactly `:EOF:` is indistinguishable — for binary-safe
  detection use `read_byte()`, which returns < 0 at EOF (build your own line loop
  on top). Or use `stdin_eof() -> bool` (v0.24.21): the UNAMBIGUOUS signal — read, then ask (`feof` activates after the read that hit EOF): `while true { let l = read_line()  if stdin_eof() { break }  ... }`.
- `read_file(path)` → String
- `write_file(path, content)` → bool
- `file_exists(path)` → bool

### Conversion
- `int_to_string(n)`, `float_to_string(n)`, `char_to_string(c)`
- `string_to_int(s)`, `string_to_float(s)` — **abortan el proceso (exit 1)** si `s` es vacío o no numérico
- `string_to_int_or(s, def)`, `string_to_float_or(s, def)` — variantes SEGURAS: devuelven `def` en vez de abortar (usar para datos de red/usuario no confiables)
- `int_to_float(n)`, `float_to_int(n)`
- `str_byte_length(s)` — byte length (for HTTP headers)

### JSON — values are tagged Arrays, NOT Map (JSON is recursive; nested Map support is only heuristic — see §5.1)
- `json_parse(s)` → JSON value as a tagged Array: `["object", keys, vals]` |
  `["array", items]` | `["string", s]` | `["number", n]` | `["bool", b]` | `["null"]`
- read a field: `json_get(obj, key)` → value (or json_null); `json_as_string(v)` / `json_as_int(v)` extract
- build: `json_object(keys, vals)`, `json_string(s)`, `json_number(n)`, `json_array(items)`, `json_bool(b)`, `json_null()`
- `json_stringify(v)` → String — takes the tagged-Array value, NOT a Map
- `try_json_parse(s) -> Result<Array, Error>` / `try_json_get(obj, key) -> Result<Array,
  Error>` / `try_json_array_get(arr, i) -> Result<Array, Error>` (E5.4, `import "std/json"`)
  are the Result-returning siblings of `json_parse`/`json_get`/`json_array_get` — same
  `import "std/error"` two-tier rule as everywhere else. **Gotcha (the reason they
  exist)**: the sentinel functions return the SAME `["null"]` for two different
  situations, and callers can't tell them apart from the value alone —
  `json_parse("garbage")` and `json_parse("null")` both give `["null"]`;
  `json_get(obj, "missing_key")` and `json_get(obj, "key_with_null_value")` both give
  `["null"]`. The `try_` versions disambiguate by construction, not by re-parsing:
  `try_json_parse` only treats input as legitimate `Ok(null)` if the trimmed input is
  LITERALLY the word `null` — anything else that falls through to `["null"]` (empty
  input, unrecognized keyword/prefix) is `Err{5,"parse"}`. Trimming uses an internal
  `json_trim` helper that mirrors the parser's own whitespace set (space/`\t`/`\n`/`\r`,
  RFC 8259 §2) — NOT the generic `.trim()` String method, which delegates to libc
  `isspace()` and also eats `\v`/`\f`, whitespace JSON doesn't recognize (found in
  review; `.trim()` would have let `\v`-padded garbage masquerade as the `null`
  literal). `try_json_get` disambiguates by re-walking the object's key list itself
  (never delegates to `json_get`, which would lose the distinction): key present with
  a `null` value → `Ok(["null"])` (a real value); key absent → `Err{2,"not_found"}`.
  `try_json_array_get` does the analogous thing for out-of-range vs. a legitimate
  `null` element → `Err{22,"invalid"}` for out-of-range/non-array. **Known structural
  limit (ficha, not fixed here)**: `try_json_parse("{oops")` (an unclosed object) does
  NOT hit the disambiguation — `parse_object`/`parse_array` always synthesize SOME
  structure (partial/corrupt but never tag `"null"`), so malformed-but-started JSON
  passes as `Ok` with corrupt content instead of `Err`. Catching that needs the parser
  to track position/well-formedness end-to-end — a separate arc (TASKS.md). See
  `tests/compiler/types/test-378-try-json.nx` for the full behavior matrix (incl. the
  trailing-garbage asymmetry: `"null xyz"` → `Err` for free from the same trim
  mechanism, but `"5 xyz"` → `Ok(5)`, lenient, inherited from `parse_value` never
  checking that the read position reached the end of input).

### Process / Environment
- `get_args()` → Array — CLI args
- `exec(cmd)` → String — run shell command, capture its stdout (binary-safe,
  strips trailing `\n`s only). stderr is NOT captured (goes to the terminal —
  redirect `2>&1` inside `cmd` to capture it too). `popen()` failure → `""`.
  Does not crash regardless of exit code.
- `exec_code(cmd)` → int — run shell command, return its exit code (-1 on
  error/signal). Does not capture stdout (goes to the terminal).
- `getenv(name)` → String
- `getenv_default(name, default)` → String
- `setenv(name, val)`
- `exit(code)`
- Process control: `fork()`, `execvp(prog, args)`, `waitpid(pid, opts)`,
  `dup2(old, new)`, `pipe_new()`, `close_fd(fd)`, `open_fd(path, mode)`,
  `getcwd()`, `chdir(path)`, `stat(path)`, `isatty(fd)`, `getpid()`, `kill_process(pid, sig)`

### Networking
- `tcp_listen(host, port)`, `tcp_accept(fd)`, `tcp_connect(host, port)`
- `tcp_read(fd, n)`, `tcp_write(fd, data)`, `tcp_close(fd)`
  - **`tcp_write` has NO timeout by default**: it loops `send()` to completion,
    so a stalled peer (zero window — e.g. a sleeping device with backlog)
    blocks the write FOREVER. Any write path that must not hang (shutdown
    drains, broadcasts to many clients) needs `tcp_set_timeout(fd, s)` first.
  - **`tcp_close(fd)` does NOT wake a `recv()` blocked in another thread —
    `tcp_shutdown(fd)` does.** Worse: after close the fd number can be
    recycled, and the still-blocked reader can steal bytes from an unrelated
    new connection. Pattern: the non-owner calls `tcp_shutdown(fd)` to wake
    the reader; only the reader (owner) calls `tcp_close(fd)`.
- `tcp_set_timeout(fd, seconds)` — SO_RCVTIMEO/SO_SNDTIMEO en un socket cliente (0 = sin
  timeout). `std/http` ya lo aplica (30s) en http_get/post/request; el camino TLS/HTTPS trae 10s.
- UDP — **ojo con el orden de los args de sendto (data ANTES que destino)**:
  `udp_bind(host, port) -> int` (fd, o -1; `host` "" = INADDR_ANY, `port` 0 = efímero),
  `udp_sendto(fd, data: String, host, port) -> int` (bytes enviados, o -1),
  `udp_recvfrom(fd, max_bytes) -> String` (bloqueante; "" en error/EOF; `max_bytes` 0 → 4096).
  **Ambas son binary-safe** — operan por longitud real del `String`, no por NUL-termination
  (un payload con byte `\0` en el medio, p.ej. `"AB" + char_to_string(0) + "CDE"`, viaja
  entero). `udp_recvfrom` sigue sin devolver el remitente.
  `tcp_set_timeout(fd, s)` y `tcp_close(fd)` funcionan sobre el fd de UDP.
- `resolve(host) -> String` (IPv4 del hostname, "" si no resuelve)
- `resolve_ptr(ip) -> String` — reverse DNS (v0.24.22): hostname de una IPv4, "" si
  no hay PTR o la IP es inválida
- `net_interfaces() -> Array` — interfaces IPv4 locales (v0.24.22): Array PLANO de
  tripletas String `[nombre, ip, máscara, ...]` (stride 3, loopback incluida)

### TLS / HTTPS
- `https_get(url)` — simple GET, NO custom headers, returns the body as a `String`.
  `https_post(url, body, content_type)` — the 3rd arg is the Content-Type, NOT headers.
  **Both are binary-safe (fixed 2026-07-30)**: `https_post` sends `body`'s real byte
  length as `Content-Length` (not `strlen`) and loops `SSL_write` until the whole body
  is on the wire, so a body with embedded NULs no longer lies about its own size or
  gets truncated mid-write.
- For custom headers / methods over HTTP **or** HTTPS use `std/http`:
  `http_request(method, url, headers, body)` (headers = flat `[k, v, k, v]`; returns
  `["response", status, headers, body]` — use `http_status`/`http_body`). This is how you
  send a `User-Agent` (Wikipedia and other APIs require one).
- `tls_connect(host, port)`, `tls_read`, `tls_write`, `tls_close`
- Server: `tls_server_init(cert, key)`, `tls_server_add_cert`,
  `tls_accept`, `tls_read_line`, `tls_write_conn`, `tls_close_conn`

### `std/tls` — introspección del peer y verificación de certificados (opt-in)
`tls_connect`/`tls_read`/`tls_write`/`tls_close` de arriba son builtins, sin import.
Todo lo de acá abajo **requiere `import "std/tls"`** — es la mitad que no viene gratis.

- **Certificado como Array de 8 slots, con accessors con nombre — nunca indexar a mano**:
  `tls_peer_cert(h) -> Array` (vacío si el handle no sirve o el peer no presentó
  certificado) da `[subject, issuer, not_before, not_after, serial, sig_alg,
  fingerprint_sha256, sans]`. Leerlo con `cert_subject(cert)`, `cert_issuer(cert)`,
  `cert_not_before(cert)`/`cert_not_after(cert)` (epoch), `cert_serial(cert)`,
  `cert_sig_alg(cert)`, `cert_fingerprint_sha256(cert)`, `cert_sans(cert)`. Todos
  totales sobre un Array vacío (`""`/`0`).
  También: `tls_version(h)`, `tls_cipher(h)`, `tls_cipher_bits(h)`,
  `tls_peer_chain(h)`, `tls_peer_cert_pem(h)`, `tls_verify_result(h)`/`tls_verify_error(code)`.
- **Las dos recetas de una línea** (lo que un escáner de red necesita y antes no
  se podía hacer sin bajar a FFI):
  - `cert_is_expired(cert) -> bool` — true si `not_after` ya pasó. Un certificado
    ausente (`not_after == 0`) da `false`, no `true` — "no sé" no es "vencido".
  - `tls_is_weak(h) -> bool` — true si la versión negociada es anterior a TLS 1.2
    o la suite usa menos de 128 bits simétricos.
- **Tres modos de conexión, mismo `tls_read`/`tls_write`/`tls_close` de siempre**:
  - `tls_connect(host, port)` (builtin) — sin verificar, como siempre fue.
  - `tls_connect_checked(host, port) -> int` — **modo BLANDO, el que quiere un
    escáner**: el handshake SIEMPRE tiene éxito aunque el cert esté vencido, sea de
    una CA desconocida o el nombre no matchee; después preguntás `tls_verify_result(h)
    == 0` para saber si HABRÍA verificado. Devuelve 0 solo si la conexión falló de
    verdad (red, TLS roto) — nunca por un certificado malo. Un escáner que usa el
    modo estricto se queda sin ver justo las máquinas que quiere reportar.
  - `tls_connect_verified(host, port) -> int` — modo ESTRICTO: cadena + hostname
    tienen que validar contra las CAs cargadas, si no devuelve 0.
- **Footgun real**: `tls_connect_verified` sin haber llamado `tls_set_ca_file` antes
  no tiene ninguna CA cargada → devuelve 0 contra absolutamente todo internet, y eso
  se lee fácil como "no hay red" en vez de "no configuré el trust store". Llegar al
  almacén de CAs del sistema es **opt-in**: `tls_set_ca_file("")` (path vacío).
  Llamarlo antes del primer `tls_connect_checked`/`tls_connect_verified`.

### Threading / Concurrency
- `thread_spawn(fn)`, `thread_join(tid)`
- `mutex_new()` → Map (opaque handle, NOT int! — `let m: int = mutex_new()` is NYX1003 since v0.24.28; unannotated `let m = mutex_new()` is fine, incl. captured by closures), `mutex_lock(m)`, `mutex_unlock(m)`, `mutex_destroy(m)`
  - **Global mutex: `var MU: Map = mutex_new()` at global scope WORKS — use it
    directly, never lazy-init.** (Measured 2026-08-21: 4 threads × 10000
    locked increments = 40000 exact, 5/5 runs — global initializers run
    single-threaded before `main` since the globals arc, v0.24.27.) The
    old placeholder pattern `var MU: Map = Map.new()` + `if READY == 0 { MU = mutex_new(); READY = 1 }`
    is UNNECESSARY and UB with three concrete failure modes: (a) two threads
    racing the first call → TWO live mutexes → broken critical section;
    (b) thread A locks M1, B overwrites the global with M2, A unlocks
    re-reading the global → `unlock` of a mutex it doesn't own = UB (default
    mutex, no ERRORCHECK); (c) on arm64, without a barrier another core can
    see `READY == 1` while `MU` still points at the placeholder → lock on a
    plain Map = UB. If init must be deferred for some other reason, do it
    eagerly from `main` BEFORE any `thread_spawn`, or use `sync.once_do`.
- **`import "std/sync"` — high-level primitives (don't hand-roll these)**:
  `wg_new()/wg_add(wg, n)/wg_done(wg)/wg_wait(wg)` (WaitGroup, real
  condvar-based — no busy-poll) + **`wg_wait_timeout(wg, ms) -> bool`**
  (true = quiesced, false = timeout; the shutdown/drain idiom — exit as soon
  as workers finish, the deadline is only a ceiling), `sem_new/acquire/release`,
  `once_new/once_do`.
- `condvar_new()` → Map (opaque handle), `condvar_wait(cv, m)` (hold m locked), `condvar_signal(cv)`, `condvar_broadcast(cv)`, `condvar_timedwait(cv, m, ms)` → 0 signaled / 1 timeout
- `rwlock_new()` → Map (opaque handle), `rwlock_rdlock(l)` / `rwlock_wrlock(l)`, `rwlock_tryrdlock(l)` / `rwlock_trywrlock(l)` → 0 acquired / 1 busy, `rwlock_unlock(l)`, `rwlock_destroy(l)` — multi-reader/single-writer; blocks the OS thread (like mutex — goroutines should prefer channels)
- `channel_new(size)` → Map (NOT int!)
- `channel_send(ch, val)`, `channel_recv(ch)`, `channel_destroy(ch)`
- `spawn_task(fn)`, `task_await(t)`, `task_cancel(t)`, `task_race(t1, t2)`

### Time
**Two clocks, and the name says which** (see gotcha `time-clock-names-deprecated`):
- `time_epoch()` — WALL clock, seconds since the Unix epoch. For anything absolute: a timestamp you
  store, log, send, or compare against a date.
- `monotonic_ms()` / `monotonic_us()` — MONOTONIC clock, counting from when the MACHINE booted. A
  single reading is an uptime, NOT a date. Use them only for DURATIONS, as a difference between two
  readings (`monotonic_us() - inicio`), which is where they win: an NTP step cannot make elapsed
  time jump or go backwards.
- DEPRECATED (`nyx vet` W110), exact aliases, migration is mechanical: `time()` → `time_epoch()`,
  `time_ms()` → `monotonic_ms()`, `time_us()` → `monotonic_us()`. The old line here read
  "`time()` / `time_ms()` / `time_us()` — Unix timestamp", which is false for two of the three and
  is how six sites in four codebases got written wrong.
- `sleep(ms)`
- `datetime_now()`, `datetime_format(dt)`, `datetime_from_epoch(n)`
- `datetime_{year, month, day, hour, minute, second, weekday}(dt)`

### Math
- `math_sqrt`, `math_sin`, `math_cos`, `math_tan`, `math_asin`,
  `math_acos`, `math_atan`, `math_atan2`, `math_exp`, `math_log`,
  `math_log2`, `math_log10`, `math_ceil`, `math_floor`, `math_round`,
  `math_fabs`, `math_fmod`
- `float_to_fixed(x: float, decimals: int) -> String` (`import "std/math_ext"`,
  NOT a global builtin) — formato con decimales fijos, redondeo half-up:
  `float_to_fixed(8.5, 2)` → `"8.50"`. Es la forma correcta de emitir precios
  o promedios; `{:.2f}` solo funciona con format string **literal** — si el
  spec viene de una variable se descarta en silencio. Ojo con la frontera
  `.xx5`: `float` es IEEE 754 double, y `float_to_fixed(1.015, 2)` da
  `"1.01"`, no `"1.02"`, porque 1.015 no tiene representación binaria exacta
  (mismo fenómeno que `round()` en Python o `toFixed()` en JS) — no es un bug,
  el error queda acotado al último dígito.
- `checked_add(a: int, b: int) -> Option<int>`, `checked_sub`, `checked_mul`,
  `checked_div` (`std/math`, en el prelude — no necesitan `import`) —
  aritmética SIN el wraparound silencioso de `+`/`-`/`*` (gotcha
  `int-wraps-silently`, §5.1): `None` en overflow, `Some(v)` si no.
  `checked_div` también da `None` con `b == 0` y con `INT_MIN / -1` (los dos
  casos UB de la división a nivel de IR — nunca se ejecutan).
- `mul_div_round(a: int, b: int, c: int, mode: RoundMode) -> int` (`std/math`, en
  el prelude — sin `import`) — `a*b/c` con el producto intermedio EXACTO en 128
  bits (`__int128` en el runtime C): calcula bien aunque `a*b` no entre en
  `int`, que es el caso de la fórmula financiera `monto * tasa / escala`
  (`9300000000000 * 1234567 / 1000000` = `11481473100000`, mientras que
  `a*b` a secas envuelve). PANICA con `c == 0` («mul_div_round: division by
  zero») y con un cociente fuera de `int` («… result overflows int»).
- `try_mul_div_round(a, b, c, mode) -> Result<int, Error>` — la hermana que
  NO panica; vive en `std/math_ext` (`import "std/math_ext"`), no en
  `std/math`, porque el prelude congelado no puede nombrar `Error` (mismo
  motivo por el que `std/fs` existe aparte de `std/file`). Devuelve
  `Err(invalid, code 22)` con los MISMOS mensajes que el `panic`.
- `enum RoundMode` (en el prelude, sin `import`) — el modo de redondeo del
  cociente exacto `a*b/c`, con `.` no `::`:

  | Modo | Regla | `5/2` | `-5/2` | `7/2` | `-13/5` |
  |---|---|---|---|---|---|
  | `RoundMode.Truncate` | hacia cero | 2 | -2 | 3 | -2 |
  | `RoundMode.Floor` | hacia -infinito | 2 | -3 | 3 | -3 |
  | `RoundMode.Ceil` | hacia +infinito | 3 | -2 | 4 | -2 |
  | `RoundMode.HalfUp` | al más cercano, empates ALEJÁNDOSE de cero | 3 | -3 | 4 | -3 |
  | `RoundMode.HalfEven` | al más cercano, empates al PAR (bancario) | 2 | -2 | 4 | -3 |

- Nombres globales que el prelude RESERVA (sin `import`): `INT_MIN`, `INT_MAX`, `RoundMode`,
  `checked_add/sub/mul/div`, `mul_div_round`. Redeclararlos tiene TRES conductas distintas: una
  `const INT_MAX` propia da NYX1013; un `enum RoundMode` propio REEMPLAZA al del prelude y el error
  apunta a `round_mode_code` en una línea del prelude (≥ 1000000); una `fn checked_add` (o
  `mul_div_round`) propia PISA a la del prelude EN SILENCIO — compila sin aviso y gana la tuya.
  Renombra lo tuyo (p. ej. `my_checked_add`).

### Crypto
- `sha256(s)`, `md5(s)`, `hmac_sha256(key, data)` — devuelven **hex**.
- `sha256_raw(s)`, `hmac_sha256_raw(key, data)` — los **32 bytes** del digest, sin
  formatear. Un protocolo que COMPONE hashes (SCRAM, HKDF, PBKDF2) opera sobre bytes:
  pasarle el hex da un resultado que el otro extremo rechaza sin decir por qué.
- `pbkdf2_hmac_sha256(pw, salt, iters, dklen) -> String` — PBKDF2-HMAC-SHA256 (RFC 2898),
  `dklen` bytes crudos. Es la KDF de contraseñas con coste configurable; `iters <= 0`,
  `dklen <= 0` o `dklen > 1 MiB` devuelven `""`.
- `constant_time_eq(a, b) -> bool` — compara SIEMPRE todos los bytes. Un `==` normal corta
  en la primera diferencia y filtra por timing cuánto prefijo coincide, que es justo lo que
  hace falta para adivinar un hash o un token byte por byte. Usarlo para comparar cualquier
  secreto. La diferencia de LARGO sí se filtra (inevitable sin padding) y no es el secreto.
- Los cuatro son **builtins globales** (sin `import`), en `runtime/crypto.c`.
- El material aleatorio (salts, nonces) sale de `csprng_bytes`, NO de `random_bytes` —
  ver el gotcha 13 de §5.1.

### `std/sqlite` — el contrato empírico (verificado contra el runtime 2026-08-11; NULL e int64 al 2026-09-09)
`import "std/sqlite"`. Lo que las firmas no dicen y cuesta horas descubrir:
- `sqlite_query(db, sql) -> Array` de filas; cada fila es `Array` y **toda
  celda es `String` — incluidas las columnas INTEGER**. Pasar por
  `string_to_int`. Leer una celda como `int` sin convertir NO da error:
  devuelve el puntero del String como número (silencioso y venenoso).
- `sqlite_query_named` **antepone una fila de headers** → `N+1` elementos;
  la fila 0 son los nombres de columna.
- `sqlite_exec_params(db, sql, params)`: **todos los params como `String`**
  (también los numéricos — el binding es textual).
- Una celda SQL `NULL` vuelve como `sqlite_null()` (un String de un byte `0x00`,
  la MISMA representación que `pg_null` en `std/postgres`) y se pregunta con
  **`sqlite_is_null(v)`**, nunca con `== ""`. Para PASAR un NULL, `sqlite_null()`
  en esa posición del array de params. Hasta v0.31.0 volvía como la cadena
  `"NULL"`, indistinguible de un TEXT que dijera literalmente `NULL` — ver el
  gotcha `sqlite-null-sentinel` en §5.2.
- La **vía tipada** (`sqlite_query_int`, `sqlite_query_one_int`, y el binding de
  enteros) da int de **64 bits reales** desde v0.31.0: antes truncaba a 32
  (`5000000000` volvía como `705032704`, sin ninguna señal). Una columna no
  numérica da `0`, y un NULL también: para distinguirlos hay que leer esa columna
  con `sqlite_query` y `sqlite_is_null()`.
- `sqlite_open(path) -> *int` — handle real de puntero; capturarlo en
  closures funciona (fn de std con retorno declarado).

### `std/postgres` — cliente PostgreSQL nativo, sin libpq (v0.31.0)
`import "std/postgres"`. El protocolo wire v3 hablado en **Nyx puro** sobre
`std/net`: no hay `libpq` ni ninguna otra dependencia externa. La forma es la de
`std/sqlite`: `Result<T, Error>` con `kind: "db"`, conservando el SQLSTATE en el
mensaje.

```nyx
import "std/postgres"

// La cadena tiene el formato de libpq.
match try_pg_connect("host=127.0.0.1 port=5432 dbname=d user=u password=p") {
    Result.Err(e) => { print("no conecta: " + e.msg) }
    Result.Ok(conn) => {
        let _ = try_pg_exec(conn, "CREATE TABLE IF NOT EXISTS t (id int, nombre text)")
        // Los params van por VALOR en el mensaje Bind, NUNCA interpolados en el SQL.
        let _ = try_pg_exec_params(conn, "INSERT INTO t VALUES ($1, $2)",
                                   [pg_int(1), pg_text("ana")])
        // Por nombre de columna, sin escribir el orden a mano:
        match try_pg_query_cols(conn, "SELECT nombre, id FROM t") {
            Result.Ok(r) => {
                let cols: Array = r[0]
                let filas: Array = r[1]
                let i_id: int = pg_col(cols, "id")   // aborta si no existe
                let f: Array = filas[0]
                print(int_to_string(pg_row_int(f, i_id)))  // aborta si es NULL
            }
            Result.Err(e) => { print(e.msg) }
        }
        let _ = try_pg_close(conn)
    }
}
```

- **Consultas**: `try_pg_exec` / `try_pg_exec_params` (→ filas afectadas),
  `try_pg_query` / `try_pg_query_params` (→ `Array` de filas, cada fila `Array` de
  `String` en formato **text** — igual que sqlite, toda celda es String, incluidas
  las numéricas).
- **Nombres de columnas**: `try_pg_query_cols(conn, sql) -> Result<Array, Error>`
  devuelve **`[columnas, filas]`** — `r[0]` es un `Array` de `String` con los
  nombres, `r[1]` las filas de siempre. NO cuesta un viaje extra: el
  `RowDescription` ya venía en la respuesta y se descartaba. Los nombres son los
  del **SELECT**, no los del `CREATE TABLE`. `try_pg_query` no cambió.
  `pg_col(columnas, nombre) -> int` da el índice; si el nombre no existe
  **ABORTA** listando los que sí — devolver `-1` haría que el accesor de al lado
  leyera otra columna, y un typo en un nombre es un bug del programa.
- **Lectura tipada**: `pg_row_str` / `pg_row_int` / `pg_row_float` /
  `pg_row_bool(fila, i)`. Es **ergonomía, no corrección** (toda celda es `String`
  en formato text; convertir a mano da lo mismo). Lo que aportan es lo que a mano
  se olvida: **un NULL leído como número NO es `0` — ABORTA**, y un índice mayor
  que el largo de la fila tampoco es una celda vacía — ABORTA nombrando la
  posición. Para no abortar, `pg_is_null(fila[i])` ANTES. `pg_row_bool` acepta
  `t`/`f` (lo que manda PostgreSQL), `true`/`false` y `1`/`0`, y cualquier otra
  cosa aborta en vez de asumir `false`.
- **Ligado tipado de parámetros**: `pg_int(n)`, `pg_text(s)`, `pg_float(f)`,
  `pg_bool(b)` — todos devuelven `String`, porque los params siguen viajando como
  `Array` de `String`. **No cambian el valor que viaja** (formato text del
  protocolo, exacto para enteros, sin configuración regional en el medio): existen
  porque Nyx no tiene `Array` heterogéneo tipado y `[7, "ana"]` no se puede
  escribir, así que hacen que el código DIGA qué es cada parámetro. `pg_float`
  tiene un matiz: un float en text pierde lo que ya perdió al ser float — para
  dinero, enteros en unidades mínimas.
- **NULL**: centinela explícito. `pg_is_null(v)` es la ÚNICA forma correcta de
  preguntarlo; `pg_null()` para pasar un NULL como parámetro. Ver el gotcha
  `pg-null-sentinel` en §5.2.
- **Transacciones**: `try_pg_begin` / `try_pg_commit` / `try_pg_rollback`.
- **Migraciones**: `pg_migrate_init`, `pg_migrate_version`, `pg_migrate(conn,
  version, name, sql)` — el estado vive en una tabla del servidor.
- **Pool**: `pg_pool_new(conninfo, size)`, `try_pg_pool_get`, `pg_pool_put`,
  `pg_pool_close`.
- **Autenticación SCRAM-SHA-256** (lo que exige cualquier PostgreSQL moderno), con
  la firma del servidor verificada en tiempo constante y el nonce sacado de
  `csprng_bytes`.
- Un error del servidor deja la conexión **USABLE**: el lector consume hasta
  `ReadyForQuery` en vez de cortar y desincronizar el socket.
- **`bool` en filas leídas del servidor**: PostgreSQL manda `t`/`f` en formato
  text, no `true`/`false`. Importa al combinar con `#[derive(Fields)]` — gotcha
  `derive-fields-pg-bool-text` en §5.1.
- Lo que NO hay todavía: **decodificación por OID** (toda celda vuelve como
  `String` en formato text — los `pg_row_*` convierten, no decodifican el formato
  binario) y **`COPY`/streaming**. TLS SÍ existe, ver abajo.

**TLS (v0.31.1)**: va en el `conninfo`, como libpq. `sslmode=disable` (default),
`require` (cifra pero NO verifica el certificado — gotcha `pg-require-no-verifica`),
`verify-ca` (la CA de `tls_set_ca_file()` tiene que firmar) y `verify-full` (eso más el
nombre del host). **`prefer` y `allow` se rechazan con `Err`**: caen a texto plano si el
servidor rechaza TLS, y con SCRAM eso es mandar la contraseña en claro creyendo que va
cifrada. `verify-full` contra un literal IP falla salvo que el certificado traiga SAN de
tipo IP — es la verificación funcionando, no un bug.

### Terminal (for CLI apps)
- `raw_mode_enter()`, `raw_mode_exit()`
- `read_byte()` — from stdin in raw mode
- `read_byte_timeout(ms)` — poll()-based: byte, -1 EOF, -2 timeout/signal (EINTR);
  ms<0 = infinite. Wakes on SIGWINCH (poll is exempt from SA_RESTART) — use for
  live-resize input loops. `raw_mode_enter()` installs a no-op SIGWINCH handler
  automatically (only if the process hasn't installed its own) so this wakeup
  works out of the box; if you register your own handler via `signal_handle`
  (any order relative to `raw_mode_enter`), yours wins and still fires.
- `term_write(s)`, `term_flush()` — stdout without per-call flush (buffered
  frames). Also the MT-safe path for structured output (access logs, NDJSON):
  build the line WITH `\n` included and `term_write(s)` emits ONE fwrite
  (line-atomic under the stream lock); `term_flush()` when stdout is a pipe
  (systemd/journald buffers ~4KB — lines show up late and die on SIGKILL
  without it). Note `print(s)` IS line-atomic too (single printf, measured
  4000/4000 under 8 threads) but does NOT flush — the flush is what
  term_write/term_flush buy you.
- `term_cols()`, `term_rows()`, `chr(code)`

---

## 5. Critical gotchas — READ THIS SECTION

§5.1 is the short list that bites silently or crashes. §5.2 are deliberate
language rules that fail LOUDLY (compile error) if you get them wrong —
not bugs. §5.3 are limits inherited from the platform. §5.4 are gotchas
that used to be real and are now fixed.

### 5.1 Traps — these bite silently or crash (READ THESE)

These are the ones that can hurt you without saying so. Everything else in
this section is either a language rule or an external limitation.

<!-- gen:gotchas kinds=trap lang=en form=long -->
<!-- gen:ids nested-map-from-call,small-channel-deadlock,ffi-c-int-no-sign-extend,clock-domain-time-builtins,int-wraps-silently,pg-require-no-verifica -->

1. **Nested Maps: OK for a variable or an inline literal, CRASHES for a function's return value — when in
doubt use flat keys: `map.insert("user::name", "alice")`.** `outer.insert("i", inner)` where `inner`
is `let inner: Map = {...}`, or `outer.insert("i", {"k": "v"})`
inline, both work: `outer.get("i")` correctly reconstitutes the nested Map. But
`outer.insert("i", make_map())` (the value comes from calling a function that returns a Map) is NOT
detected and still SEGVs on read — the fix (2026-07-27) checks the argument's AST shape (identifier
tracked as Map, or a map-literal), not its real type. If you can't guarantee the value is a variable
or literal, use flat keys. Two more limits on the working
case: the OUTER map must be homogeneous — its value-type is tracked once in `ctx.variables` and the
LAST `insert()` wins, so `o.insert("i", inner); o.insert("s", "texto"); let g: Map = o.get("i")` SEGVs
(the outer map mixed a nested Map with a String value). And reading the INNER map requires a typed
binding: `let g: Map = o.get("i"); print(g.get("k"))` prints a raw pointer as a number (e.g.
`187651464825712`), not the value — only `let v: String = g.get("k")` returns the real content. [test: 13-map-literal-keys]

2. **A small `channel_new(N)` can deadlock a producer/consumer if you send everything before you start
draining a second bounded channel — size each channel to at least the total number of messages it will
carry.** Not a compiler bug, a concurrency design trap worth knowing before reaching for
`channel_new`. If the main goroutine sends M jobs on a bounded jobs channel and only starts
draining a separate bounded results channel AFTER it finishes sending, workers can fill the results
channel and block trying to push more, while main is simultaneously blocked trying to push the
remaining jobs (channel full, waiting for a worker to consume) — a real deadlock, reproducible with N=4
workers and M=200 jobs against a 64-slot channel. Fix: size each channel to at least the total number
of messages it will carry (`channel_new(m + n)` for the jobs channel, `channel_new(m)` for results), or
interleave sends and receives instead of doing all sends before any receive. [test: 16-worker-channels]

3. **A C `int` (32 bits) returned by an `extern "C"` function does NOT sign-extend into a Nyx `int` (64
bits) — a negative C value crosses as a huge positive number, never as a negative one.** Found in
`runtime/sqlite_adapter.c` (E5.5): `nyx_sqlite_step`/`nyx_sqlite_exec`/`nyx_sqlite_column_count`/
`nyx_sqlite_bind_str/int/double` all declare a plain C `int` return against a Nyx
`extern "C" fn ... -> int` — sqlite's `-1` arrives on the Nyx side as `4294967295` (measured), because
the 32-bit bit pattern gets zero-extended, not sign-extended, across the boundary. Code that compares
`rc == -1` never matches; the safe fix used by `try_sqlite_query` (`std/sqlite.nx`) is to test the
condition you actually know (`rc != 0` — "not the success value" — instead of guessing the exact
failure sentinel). `runtime/net.c` sidesteps the whole class by declaring its `*_result` functions
`int64_t` explicitly (see `std/net.nx`); several `sqlite_adapter.c` functions don't (audit tracked in
TASKS.md, cosecha `E5.5-sqlite`). This is a GENERAL trap, not sqlite-specific — it bites ANY
`extern "C" fn ... -> int` you write yourself against a C function that returns plain `int`: either
declare the C side `int64_t` when you control it (NOT `long` — Win64 is LLP64: C `long` is 32-bit
there and re-truncates; measured in the W0 audit, spec Windows §9.3), or on the Nyx side never compare
a raw FFI return against an exact negative sentinel. [test: 22-ffi-int-truncation]

4. **`time_epoch()` (and its exact alias `time()`) is the wall clock (seconds since the Unix epoch);
`time_ms()` and `time_us()` are the MONOTONIC clock (since the machine booted) — four names for two
clocks, and the shared `time_` prefix hides which is which, so dividing any of them is almost always
the bug.** `time_epoch()` is
`time(NULL)`, so it already returns seconds: dividing it produces neither seconds nor milliseconds
nor anything else — `time_epoch() / 1000000` advances once every 11.6 days, and `time_epoch() / 1000`
once every 16.7 minutes. `time_ms()` and `time_us()` are `os_monotonic_ns()` scaled, so an absolute
reading of either is "how long this machine has been up", never a date; scaling it down to seconds
(`time_us() / 1000000`) turns it into something that LOOKS like a timestamp and is not. The rule that
sorts it out: use `time_epoch()` for anything absolute — a timestamp you store, log, send, or compare
against a date — and `time_ms()`/`time_us()` only for DURATIONS, always as a difference between two
readings (`fin - inicio`), never divided on their own. Durations are exactly where the monotonic
clock wins: an NTP step or a manual clock change cannot make the elapsed time jump or go backwards.
The failure is silent in the worst way — the value keeps growing, so nothing crashes and no log
complains; it just grows at the wrong rate or from the wrong origin. Real cases found on 2026-09-10,
six sites across four codebases written by different hands: a rate limiter whose one-second window
advanced once every 11.6 days (every request for almost two weeks landed in the same bucket, so an IP
that hit the limit stayed blocked); an access log that wrote `1789` instead of `1789048733` on every
line; an uptime gauge stuck at 0 until the process had been running 11.6 days; auth tokens whose
expiry was computed on the monotonic clock and then PERSISTED, so a host reboot (not a service
restart — `CLOCK_MONOTONIC` survives that) left 24-hour tokens valid for years; and a snapshot file
whose "timestamp" field held an uptime. Two lints split the job so neither shouts twice on one line: **W109** here flags a division applied
directly to `time_epoch()` (the wall clock is already in seconds — there is no legitimate divisor),
and **W110** (`time-clock-names-deprecated`) flags every use of the old names `time()`, `time_ms()`
and `time_us()`, which covers their divisions too. Between them, every site listed above is flagged.
One shape from the same sweep is NOT covered, on purpose: a client-supplied epoch stored into a field compared
against the monotonic clock has no textual shape — that one is a typing problem, and pretending a
regex catches it would be worse than saying so. [test: compiler/systems/test-410-clock-domain]

5. **`int` arithmetic (`+`/`-`/`*`) overflows into silent wraparound (two's complement) — use
`checked_add`/`checked_sub`/`checked_mul`/`checked_div` to DETECT it, and `mul_div_round(a, b, c,
mode)` for the `a*b/c` shape, which computes the intermediate product in 128 bits.** Both are global
via the prelude, so neither needs an `import`. (An out-of-range integer LITERAL is a different case
and no longer silent: since NYX2015 it is a compile error instead of being truncated.) `codegen.nx` emits plain
`add i64`/`sub i64`/`mul i64` with no `nsw`/`nuw` (`compiler/codegen.nx:1988`, `:2056`, the `mul i64`
branch under `:2070`), so the largest representable `int` (`9223372036854775807`) plus `1` silently
becomes the smallest one (`-9223372036854775808`), and a square like `3037000500 * 3037000500` also
wraps to a negative number — nothing in `runtime`/`std` catches it.
Division (`sdiv i64`, `codegen.nx:2098`) has no guard either: `INT_MIN / -1` and division by zero are
UB at the LLVM IR level — on ARM64 the hardware wraps or returns 0, on x86_64 the same IR can SIGFPE.
The financial shape bites hardest: `monto * tasa_ppm / 1_000_000` (a rate expressed in
parts-per-million) overflows once `monto` passes roughly 9.2e12 minimum units — a perfectly ordinary
accounting amount comes out NEGATIVE, in silence. `std/math` now ships two real mitigations. To
DETECT overflow, use `checked_add`/`checked_sub`/`checked_mul`/`checked_div(a, b) ->
Option<int>` (global via the prelude, no `import` needed): `None` on overflow, `Some(v)` otherwise —
`checked_div` also turns the two UB division cases (`b == 0`, `INT_MIN / -1`) into `None` instead of
undefined behavior. For the `a * b / c` shape specifically, use `mul_div_round(a, b, c, mode)` (also
global) or its non-panicking twin `try_mul_div_round(a, b, c, mode) -> Result<int, Error>` (needs
`import "std/math_ext"` — the prelude is a frozen snapshot that can't name `Error`/`err_new`, gotcha
`prelude-frozen-snapshot`, so the `try_` variant lives in a separate importable module, the same
reason `std/fs` exists apart from `std/file`): both compute the intermediate product `a * b` EXACTLY
in 128 bits (`__int128` in the runtime), so `monto * tasa_ppm` never wraps before the division runs,
and the `mode: RoundMode` argument (`Truncate`/`Floor`/`Ceil`/`HalfUp`/`HalfEven`) makes the rounding
explicit instead of leaving it to truncation. `mul_div_round` panics on `c == 0` or a quotient that
doesn't fit in `int`; `try_mul_div_round` returns `Err(invalid, …)` for the same two cases instead.
(Historical note: before these functions existed, the only workaround for a ppm-scale rate was a
manual two-step split with the remainder — `(monto / 1_000_000) * tasa + ((monto % 1_000_000) *
tasa) / 1_000_000` — still arithmetically correct, but `mul_div_round` supersedes it: one call,
exact 128-bit product, explicit rounding.) `float` is not a substitute for money either: it silently
loses integer precision starting at 2^53. [test: compiler/language/test-385-int-wraparound]

6. **`sslmode=require` encrypts the connection but does NOT verify the server's certificate — it will
happily complete a TLS handshake with an impostor.** This is exactly libpq's behavior, kept on purpose
so a `conninfo` string means the same thing in Nyx as everywhere else, but it is the guarantee most
people believe they have and don't: `require` protects against a passive eavesdropper on the wire, not
against a man-in-the-middle holding any certificate at all. To actually pin the server, use
`sslmode=verify-ca` (the certificate must be signed by a CA you loaded with `tls_set_ca_file`) or
`sslmode=verify-full` (that, plus the hostname must match the certificate's SAN). Note that
`verify-full` against an IP literal like `127.0.0.1` fails unless the certificate carries a SAN of
type IP — which the default snakeoil certificate does not — and that is the check working, not a
bug. The two libpq modes that fall back to plaintext when the server refuses TLS (`prefer`, `allow`)
are **rejected** in Nyx: with SCRAM, silently downgrading means sending the password in clear while
believing it is encrypted. [test: postgres/06-tls]

<!-- /gen:gotchas -->

### 5.2 Language rules — not bugs, just how Nyx works

These are deliberate design decisions. Knowing them is like knowing that
Python indents. They fail LOUDLY (compile error) if you get them wrong.

<!-- gen:gotchas kinds=rule lang=en form=long -->
<!-- gen:ids fn-callback-typed,await-float-gated,channel-is-map,charat-returns-int,enum-dot-not-colons,map-literal-string-keys,strings-are-bytes,check-bind-return,assert-aborts-process,bare-return-void,derive-fields-pg-bool-text,dyn-trait-needs-annotation,pg-null-sentinel,prelude-module-list-contract,prelude-names-are-global,random-bytes-not-crypto,sqlite-null-sentinel,string-order-is-bytewise,throw-deprecated,time-clock-names-deprecated,void-builtin-no-bind -->

1. **Callbacks: prefer `Fn(Type) -> Ret`** over bare `Fn`. A fully typed callback parameter — a named
function, a `let`-bound lambda, or an inline lambda literal — lets the checker validate the arity and
the argument/return types of the callback at the call site, not just that something callable was
passed. This applies to comparator-style callbacks too: `sort_by(arr, cmp: Fn(int, int) -> int)`.
This one is a *preference*, not a defect, so it is NOT grep-able and has no `nyx vet` code: a bare
`Fn` is legal and the stdlib itself writes it in ~49 places, so the obvious pattern (`: *Fn[ ,)]`)
fired on every one of them — noise, not signal (audited 2026-09-04 by `run_vet_gotchas.sh`). [test: 25-fn-callback-typed]

2. **`await` of a `float`-returning function is gated (NYX1021)** — an ABI hazard in the goroutine join.
`await` of int/bool/String/struct is fine. [test: compiler/errors/test-async-float-return]

3. **Channels must be Map, not int: `let ch: Map = channel_new(10)`, never `let ch: int`.** This is a
deliberate design decision, not a bug — it fails loudly (compile error) if you get it wrong. [test: 14-language-rules]

4. **`charAt()` returns int (ASCII/codepoint), NOT String — compare with numbers: `if c == 65`.** This is
a deliberate design decision, not a bug — it fails loudly (compile error) if you get it wrong. [test: 14-language-rules]

5. **Enum variants use `.`, not `::`: `Shape.Circle(5)`, never `Shape::Circle(5)`.** This is a deliberate
design decision, not a bug — it fails loudly (compile error) if you get it wrong, the same way Python
enforces indentation. [test: 14-language-rules]

6. **Map literal keys must be STRINGS: `{"k": 1}` and `{}` work (v0.16), but `{ident: 1}` is NOT a map
literal and fails loudly with `NYX0106`.** The full message is `error [NYX0106]: map literal keys must
be String — use {"key": value}` (a compile error, not a silent trap). `defer cleanup()` (bare) and
`const` with String both work since v0.16. [test: 13-map-literal-keys]

7. **String API is byte-based (v0.14): `length()`, `substring()`, `indexOf()` and `charAt()` all operate
on BYTES — for *character* counts use `char_length()` (UTF-8 codepoints).** Because they all agree on
bytes they compose safely: `s.substring(0, s.length())` is the identity. For *terminal columns*
(TUI alignment — CJK/fullwidth/emoji
take 2 columns, combining marks 0) codepoints are NOT enough: use `display_width(s)` / `wcwidth(cp)`
from `import "std/unicode"` (v0.22.x+, wcwidth(3)/Kuhn contract). HTTP `Content-Length` = `length()`
directly. (Before v0.14, `length()` counted codepoints — the mismatch caused a production outage; the
contract is now unified.) [test: 14-language-rules]

8. **Check the return of `http_serve`/`tcp_listen`/`udp_bind`: a failed bind (port taken) returns `-1` —
`if http_serve(8080, handler) < 0 { return 1 }`.** It also prints to stderr since v0.24.4 (see
`bind-failure-loud`), but without the check your program "runs" with no server. Discarding the
return is what made a
real production incident silent — the process "started" (exit 0) while some other process squatted the
port, and the person debugging it had no signal that the bind never happened. [test: 21-bind-failure-loud]

9. **`assert()` aborts the process (`exit(1)`) on the first failure** — this is true everywhere EXCEPT
inside `nyx test`'s `test { }` blocks, where the runner catches each failure, reports it per-test, and
only exits non-zero at the very end (so one failing test doesn't hide the rest). Outside `nyx test`,
treat `assert()` as fatal, not recoverable. [test: 24-bare-return-assert]

10. **A bare `return` (no value) works in a `void`-returning function** — the compiler synthesizes
`return 0` under the hood, so `fn f() { return }` is valid and behaves like `fn f() { return 0 }`.
Only meaningful in `void` functions; a non-void function still needs an explicit value. [test: 24-bare-return-assert]

11. **`<Struct>_desde_fila()` accepts every boolean spelling its two producers emit — `true`/`false`,
`t`/`f` and `1`/`0` — and ABORTS naming the value on anything else.** This matters because the rows it
consumes come from two sources that disagree: `<Struct>_valores()` writes `"true"`/`"false"`, while
PostgreSQL's text format for `boolean` is `t`/`f`. Until 0.31.1 the generated code compared the cell
against the literal `"true"` and anything else silently became `false`, so a live row read through
`try_pg_query` came back with every `true` flipped — no error, no crash, just a wrong value that
compiled and ran. The conversion now lives in the runtime (`nyx_bool_from_text`), and an
unrecognized text aborts instead of assuming `false`: a boolean nobody can read is not `false`, and
assuming it would write a wrong decision into a system that bills people. Verified end to end against
a real PostgreSQL server in `tests/postgres/05-orm-fields.nx`, with rows in both states. [test: postgres/05-orm-fields] [test: compiler/ecosystem/test-405-derive-fields]

12. **To store trait objects in a collection, type the collection: `Array<dyn Trait>`** — pushing a bare
struct into an untyped `Array` and then reading it back with `for x: dyn Trait in arr` crashes with a
SIGSEGV. Converting to `dyn` changes the REPRESENTATION (a pointer to the struct becomes a fat pointer
`{ data, vtable }`), so it has to happen when the value is WRITTEN: once it is in the array every
element is an indistinguishable `i64`, and the reader cannot tell a struct from a fat pointer. With
`Array<dyn Trait>` each element is upcast to its own vtable as it goes in, which is what makes a
heterogeneous list — several impls in the same collection — work. Annotating the value first
(`let d: dyn Trait = x` and pushing `d`) works too. What does NOT work, and crashes at runtime rather
than failing to compile, is pushing the concrete struct into an untyped `Array` and reading it as
`dyn`. [test: compiler/language/test-391-dyn-trait-array]

13. **A NULL column from `std/postgres` is NOT an empty string — ask with `pg_is_null(v)`** —
`try_pg_query` returns every value as text, and SQL NULL comes back as a one-byte sentinel, not
as `""`. Comparing with `== ""` treats a real NULL as an empty string and, worse, treats a
genuinely empty column as if it were NULL: two different values collapse into one. Always use
`pg_is_null(v)`, never a comparison by hand — the day the representation needs to change, it
changes in one place. The one edge: a `bytea` column holding exactly one zero byte and nothing
else reads as NULL; that is the price of keeping rows as `Array` of String instead of
`Option<String>`. [test: postgres/02-query]

14. **The list of modules the prelude carries lives INSIDE the prelude, on the `//#prelude-modules:`
line — never hardcoded in the compiler.** The compiler reads that line to know which `std/` modules
to pre-register as "already imported"; a module in the prelude that is NOT pre-registered gets
re-inlined by an explicit `import`, and the IR then defines its types twice (`redefinition of type`,
clang rejects the whole program). Keeping a second copy of the list in `compiler/resolve.nx` is what
made that possible: the compiler is a BINARY and the prelude is a FILE under `$NYX_HOME/std`, they
install separately, and a new prelude read by an older compiler breaks every program that imports
the new module — with nothing changed on the user's side. Two guards refuse to let the copy come
back (`gen_prelude.sh`, `run_prelude_divergence.sh`). [test: compiler/types/test-372-std-error]

15. **The prelude's names are GLOBAL: declaring one of your own with the same name is NYX1013.** The
prelude is concatenated into every program, so `Error`, `err_new`, `errno_to_kind`, `sort_int`,
`checked_add`, `RoundMode` and the rest of `std/io`/`math`/`array`/`file`/`map`/`error` already
occupy the namespace. `struct Error { codigo: int }` of your own does not shadow the prelude's — it
collides, and the error names the prelude and tells you to rename yours. Until 2026-09-12 the
prelude's declaration won SILENTLY and the errors that followed described fields you never wrote
(`field 'codigo' does not exist in struct 'Error'`, pointing at YOUR line), which sent you to debug
the wrong program. Pick a qualified name (`ErrorDeNegocio`, `AppError`) for anything domain-specific. [test: compiler/errors/test-nyx1013-colision-con-el-prelude]

16. **`random_bytes` (`std/random`) is a PRNG, not a CSPRNG — never use it for salts, tokens, keys,
nonces, or any other cryptographic material; use `csprng_bytes` instead.** `random_bytes` is backed
by `nyx_random_bytes` (`runtime/random.c`), which draws from a single `xorshift64` generator seeded
once from `/dev/urandom` (`rng_init`, `runtime/random.c`) — fine for simulation, sampling, jitter, or
IDs that only need to be unpredictable-by-accident, but not for anything that needs to be
unpredictable-by-an-attacker. The generator carries just 64 bits of internal state, and each output
word leaks that state directly: an attacker who observes a handful of consecutive outputs (e.g. a
salt or token exposed in a database, a URL, or a timing side channel) can reconstruct the internal
state and predict every future and past output — xorshift is explicitly not cryptographically secure
by design, it optimizes for speed and statistical distribution, not unpredictability. The real CSPRNG
is `csprng_bytes`, which despite living in `std/webpushcrypto` (a module nobody would think to search
for "random bytes") is a thin wrapper over `nyx_csprng_bytes` (`runtime/crypto.c`), which calls
OpenSSL's `RAND_bytes` — the primitive actually designed to resist this kind of state-recovery attack.
Use `random_bytes`/`random_int`/`random_float` for anything where predictability is merely annoying;
use `csprng_bytes` for anything where predictability is a security breach (password salts, session
tokens, API keys, encryption nonces/IVs, CSRF tokens). [test: compiler/ecosystem/test-170-random-uuid] [test: compiler/ecosystem/test-248-webpushcrypto]

17. **A NULL column from `std/sqlite` is NOT an empty string — ask with `sqlite_is_null(v)`** —
`sqlite_query`/`sqlite_query_named` and their `Result`-returning twins return every value as
text, and SQL NULL comes back as a one-byte sentinel, not as `""`. Comparing with `== ""` treats
a real NULL as an empty string and, worse, treats a genuinely empty column as if it were NULL:
two different values collapse into one. Always use `sqlite_is_null(v)`, never a comparison by
hand — the day the representation needs to change, it changes in one place. The one edge: a BLOB
or TEXT column holding exactly one zero byte and nothing else reads as NULL; that is the price of
keeping rows as `Array` of String instead of `Option<String>`. [test: compiler/stdlib-suite/test-406-sqlite-tipos-null]

18. **`<` `<=` `>` `>=` between Strings compare BYTES, not codepoints or locale** — the common prefix
decides, and on an equal prefix the shorter string wins. That makes ASCII uppercase sort before
lowercase (`"Z" < "a"`), and it means canonical `YYYY-MM-DD` dates sort chronologically as plain text,
which is the idiomatic way to order them. It also means this is NOT human-language collation: `"á"`
does not sort next to `"a"`. Same rule as everywhere else in Nyx — strings are bytes. [test: 26-string-order-dates] [test: compiler/language/test-389-string-order-compare]

19. **`throw(x)` is a deprecated alias of `panic(x)`: same channel, same `catch`, same limits.** Use `panic`
for the unrecoverable and `Result` for the expected; `throw` keeps compiling but `nyx vet` flags it. [test: compiler/language/test-382-throw-is-panic-alias]

20. **`time()`, `time_ms()` and `time_us()` are deprecated names: use `time_epoch()` for the wall clock
and `monotonic_ms()` / `monotonic_us()` for the monotonic one — same runtime call, a name that says
WHICH clock.** The three old names still compile (removing them would be a MAJOR change) but `nyx
vet` flags them with W110. The problem was never the behaviour, it was that four names described two
clocks and none of them said which: `time()` and `time_epoch()` are both `time(NULL)`, while
`time_ms()` and `time_us()` are `os_monotonic_ns()` scaled and count from when the MACHINE booted.
A reader seeing `time_ms()` next to `time_epoch()` reasonably concludes they are the same clock in
different units, and that conclusion is wrong in a way nothing reports: the value keeps growing, so
no crash, no log, just a wrong rate or a wrong origin. Six sites in four codebases were written that
way before the rename (see `clock-domain-time-builtins` for what each one did). The migration is
mechanical and safe, because the aliases are exact: `time()` → `time_epoch()`, `time_ms()` →
`monotonic_ms()`, `time_us()` → `monotonic_us()`. Doing it also makes the code say out loud which
clock it meant, which is the whole point — a duration measured as `monotonic_us() - inicio` is
self-evidently right, whereas `time_us() - inicio` still needs the reader to know. [test: compiler/systems/test-410-clock-domain]

21. **Some builtins return NOTHING — binding their result is an error (NYX1003, `expected T, got ()`).**
`let x: int = sleep(1)` used to pass `check OK` and die in clang with `void type only allowed for
function results`, pointing at a temporary `.ll` you never see; since 0.31.0 the checker names your
file, function and line. Call them as a statement. The full list (35):
`channel_destroy channel_send condvar_broadcast condvar_signal condvar_wait exit file_close file_flush free go_sleep mutex_destroy mutex_lock mutex_unlock panic print print_no_newline raw_mode_enter raw_mode_exit rwlock_destroy rwlock_rdlock rwlock_unlock rwlock_wrlock setenv signal_handle signal_ignore signal_reset sleep task_cancel tcp_close term_flush term_write throw tls_close tls_close_conn volatile_store`.
Note this cuts against the habit of always binding a call's result (the rule that exists because a
`?` call in statement position does not run): that rule is for calls that RETURN something. [test: compiler/errors/test-nyx1003-builtin-void-ligado]

<!-- /gen:gotchas -->

### 5.3 Known limits — inherited from the platform

Not Nyx bugs: these come from POSIX, from the Boehm GC, or from codegen
internals you never touch directly.

<!-- gen:gotchas kinds=limit lang=en form=long -->
<!-- gen:ids fork-gc-child-exec,global-struct-zeroinitializer,prelude-frozen-snapshot,derive-fields-solo-primitivos,hkt-gats-parse-only,wasm-arena-closure-env -->

1. **`fork() + GC`** — the child MUST call `execvp()` immediately, cannot allocate GC memory (Boehm is
inconsistent in child process). Not a Nyx bug: this comes from how the Boehm GC interacts with POSIX
`fork()`, not from Nyx's own codegen.

2. **Global structs need `zeroinitializer`, not `0`** — handled by codegen, but worth knowing if you
write FFI. Not a Nyx bug: this comes from LLVM IR internals, not something a Nyx program can trigger
by accident.

3. **`std/prelude.nx` is concatenated into EVERY program and its modules are pre-registered as
"already imported"** — a driver-level detail, not a per-program bug. Two consequences that do reach
you. (1) The prelude is GENERATED from `std/io`, `math`, `array`, `file`, `map` and `error`
(`scripts/gen_prelude.sh`, since 2026-09-09; `make prelude` regenerates it and `make prelude-check`
fails if it is stale) — it stopped being a hand-maintained frozen copy, so a function added to
`std/math.nx` is visible after regenerating, and `import "std/math"` runs the prelude's copy, never
the file. (2) The checker validates the prelude COMPLETE whether you use it or not, so nothing
inside it may name anything outside it: that is why only self-contained modules can join. `std/error`
qualified (80 lines, no imports) and was added on 2026-09-12, which is what lets a prelude module
return `Result<T, Error>` at all. See `prelude-names-are-global` for the cost.

4. **`#[derive(Fields)]` only converts `int`, `bool`, `float` and `String` — an `Array`, `Map`, or nested
struct field aborts compilation with `NYX2013`.** The limit is deliberate, not an oversight:
`#[derive(Display)]` flattens any non-primitive field to the literal string `"ptr"`, and if the fields
derive inherited that same fallback, an ORM built on `campos()`/`valores()`/`desde_fila()` would
silently write `"ptr"` into a real database column — a value that compiles, links, and runs, and is
simply false. Rather than emit that approximation, all three generated functions
(`compiler/codegen.nx`, `fields_abort_tipo`) refuse together at compile time, naming the offending
field, its struct and its type. There is no per-field escape hatch (`#[column(...)]`/`#[skip]` are out
of scope for this derive): to model a struct with a non-primitive field, either describe that one
field by hand outside the derive, or pull it out into its own struct that only holds the four
supported primitive types and derive `Fields` there. [test: compiler/ecosystem/test-405-derive-fields]

5. **HKT (higher-kinded types) and GATs (generic associated types) parse but do not instantiate** — the
syntax is accepted so code using it won't fail at parse time, but the compiler doesn't do the actual
type-level machinery. Don't rely on either for real generic-over-container code yet.

6. **Under the wasm arena, an async closure can READ what it captured but must not STORE a
String/Array into its environment during a fire.** Since 0.31.0 a closure handed to `dom_on_fn`,
`browser_fetch_fn`, `browser_timeout_fn` or `browser_interval_fn` keeps everything it captured at
CREATION time: the shim binding pins the whole turn the closure was born in
(`nyx_arena_pin_turn`, `runtime/wasi/nyx_arena.c`), so a captured `String` or `Array` survives the
`nyx_arena_event_reset()` at the end of that turn and arrives intact whenever the closure fires.
What is NOT covered is memory allocated during the FIRE and written back into the environment:
`fn() { ultimo = "visita-" + int_to_string(n) }` stores a String belonging to the *firing* turn,
which dies in that turn's reset, and the next fire reads whatever overwrote it — measured
`ultimo previo=zzzzzzzz0` instead of `visita-1`, silently, with no trap. This is the arena's
existing contract ("a handler must not store pointers to turn memory in globals", documented at
the top of `nyx_arena.c`) applied to closure environments, and only a tracing GC — which wasm does
not have — would lift it. Mutating captured `int`/`float` by value is always safe, so counters,
flags and ids work; keep anything string-shaped outside the environment (a module global built in
`_start`, or re-derive it on each fire). Note this only applies with the arena on: without
`nyx_arena_begin()` nothing is ever freed and the question does not arise. [test: wasm/test-wasm-23-closure-lifetime] [test: wasm/test-wasm-24-dom-on-fn-turnos]

<!-- /gen:gotchas -->

### 5.4 Already fixed — you can use these

Older docs (and older model contexts) warn against these. They work now.
Listed so you don't avoid a construct that is perfectly fine.

<!-- gen:gotchas kinds=fixed lang=en form=long -->
<!-- gen:ids implicit-monomorphization-nested,and-or-short-circuit,nested-arrays-work,map-remove-on-field,gc-exhaustion-ordered-error,chr-zero-nul-byte,array-elem-method-chaining,closure-capture-works,tcp-write-loops-until-sent,option-struct-multifield-link,udp-binary-payload-intact,tls-peer-cert-introspection,missing-method-compile-error,repl-declared-subset,bind-failure-loud,file-api-names,array-index-float-write,sync-global-init-reliable,nested-fn-sees-module -->

1. **Implicit monomorphization works nested (v0.16.1)** — `id(42)` (a generic call with no turbofish)
monomorphizes in `let`/`var`/statement position AND when nested inside another expression:
`assert(id(42) == 42)`, `if id(x) == y`, binop operands. (Turbofish on *method* calls —
`b.conv<T>(x)` — still doesn't parse; annotate or bind to drive inference there.)

2. **`and`/`or` DO short-circuit** (since the April 2026 compiler fixes) — the right side is not
evaluated when the left side decides the result.

3. **Nested arrays `Array<Array<T>>` work** (`grid[0][0]`, extracted rows, rows as args). If you saw the
old "'%N' i64 but expected ptr" error, update your toolchain (`nyx update`).

4. **`obj.field.remove(k)` on a Map struct field DOES mutate the field (fixed 2026-07-21, test-274)** —
method dispatch on a field-access receiver implemented `contains`/`get`/`insert`/`size` for Map but not
`remove`, so `obj.the_map.remove(k)` used to compile as a silent no-op: the key looked untouched on the
next `contains()` check. Fixed as part of the same codegen backlog that killed the mute
method-not-found fallback (v0.22.0). Binding the field to a local first (`let m = obj.the_map;
m.remove(k)`) still works too — Maps are references, so both paths mutate the same underlying Map —
but it is no longer required. [test: compiler/language/test-274-map-remove-field-access]

5. **GC exhaustion is now an ORDERED error, not a raw SEGV (fixed 2026-07-24)** — holding a very large
number of tiny allocations live at once (e.g. ~272k one-char Strings per round, repeated) used to
exhaust the Boehm heap and SIGSEGV silently (the string runtime dereferenced a NULL from
`GC_malloc`). Now any exhaustion aborts with `💥 Runtime Error: out of memory (GC heap exhausted)` and
`exit 1`. Two practical levers: (a) **process in blocks** — don't keep hundreds of thousands of tiny
objects reachable simultaneously; chunk the work (e.g. 4 KB blocks) so most become collectable each
round; (b) **`GC_MAXIMUM_HEAP_SIZE`** (Boehm env var, in bytes) caps/raises the heap and, with a small
value, makes exhaustion deterministic for testing.

6. **`chr(0)` builds the real NUL byte (v0.22.x+, fixed 2026-07-25)** — `chr(code)` is byte-level (not
UTF-8 — see the byte-based String API rule, `strings-are-bytes`) and now length-explicit end to end:
`chr(65) + chr(0) + chr(66)` has `length() == 3`. Before
this fix, `chr(0)` collapsed to the empty String (a C-string/`strlen` path truncated it), so binary
buffers built byte-by-byte with `chr()` silently lost NULs. **Still open**: `write_file(path,
content)`/`read_file(path)` (the simple path-based pair) are NOT binary-safe — `write_file` truncates
content at the first NUL (its `char*` ABI, not a `chr()` problem) — don't round-trip NUL-containing
Strings through them yet. **`file_write_string(handle, s)` (the buffered
`file_open`/`file_write_string`/`file_close` API) IS binary-safe (fixed 2026-07-30)** — it writes `s`'s
real byte length, not `strlen`, so a blob with embedded NULs (`"AB" + char_to_string(0) + "CDE"`)
round-trips intact; prefer it over `write_file` for any content that isn't known-text. For codepoints
beyond a byte, use `utf8_encode(codepoint)` from `import "std/unicode"` (v0.22.x+): encodes any
Unicode codepoint to its 1-4 UTF-8 bytes; invalid input (negative, > 0x10FFFF, surrogates
U+D800..U+DFFF) yields U+FFFD instead of aborting — HTML numeric-entity semantics, so it composes
directly with entity decoding. [test: 11-chr-nul-safe]

7. **Methods chained on a user function's `Array` return (FIXED v0.22.x+, 2026-07-26)** —
`f(args).length()` used to compile and silently return 0 (the expression-receiver path had no Array
branches and fell through to a mute `return 0`). Now `length`, `indexOf`, `join`, `reverse`, `slice`,
`push`, `pop`, `shift` and `unshift` all work chained, matching the bound form. Indexing (`f()[0]`) and
String methods (`g().length()`) were never affected. `contains` works in both paths too (fixed
v0.22.14; and since the slots-tag work, `contains`/`indexOf` with a String needle compare by CONTENT
on tagged slots, not by pointer). Chained `reverse`/`push` mutate in place and return void, same
contract as on a variable, so on a temporary the effect is discarded.

8. **Closure capture of locals WORKS — including a lambda and a nested fn in the same function** (fixed
2026-07-27). Every form works: a lambda literal capturing a local passed inline
(`ejecutar(fn() { c[0] = c[0]+1 })`), a lambda bound to a `let`, a named nested fn that mutates a local
and is called through a `Fn` parameter, `thread_spawn` with capture, and — this is the part that was
broken — a capturing lambda and a capturing nested fn **coexisting in the same function**, in either
order. The cause was in `pre_scan_closure_env`: the scan of locals stopped at the first nested fn, so
anything declared after it never entered the shared environment. This gotcha previously read "capture
is BROKEN outside the happy path", and that over-generalization cost a real user a 2,400-line terminal
browser written without a single callback — which is why the whole section now demands an executable
case per item. [test: 12-closure-capture-paths]

9. **`tcp_write`/`tls_write` already loop until everything is sent** — `nyx_tcp_write` (`runtime/net.c`)
and `nyx_tls_write_conn` (`runtime/tls.c`) both `while (total < len)` around `send()`/`SSL_write()`
internally, retrying on a benign partial write. A single call returns the full length up to 512 MiB
tested (SDD 2026-07-27 Task 2 report); you do NOT need an application-level retry loop for a normal
blocking socket. The one real exception: both loops `break` early if the underlying call returns
`<= 0`, so on a **non-blocking fd** an `EAGAIN`/`EWOULDBLOCK` can still make the call return short —
only non-blocking sockets need the caller to check the return value and retry.

10. **`Option<Struct>`/`Result<Struct, E>` with a 2+-field struct as the payload WORKS — return the
struct directly, no Array packing needed.** Boxing used to assume a generic payload always fit in one
`GC_malloc`ed word (`i64`), so a multi-field struct like `Item { id: int, name: String, price: Array }`
produced a mismatched LLVM type at the boxing site (`%Item = type { i64, ptr, ptr }` where an `i64` was
expected) and `clang` refused to link the binary — every time, at build, never intermittently at
runtime. The exact commit that fixed the boxing site is not known (found already working during the
final review of the E7 arc, 2026-09-08, on both `main` and the arc's earlier base commit — the fix
predates both); confirmed on v0.31.0 with `Option<Item>` and `Result<Item, String>`, all four paths
(`Some`/`None`, `Ok`/`Err`). If a link error still mentions your `Option`/`Result` type, update the
toolchain (`nyx update`) first. The old workaround — repacking the struct's fields into
`Option<Array>`/`Result<Array, E>` — is no longer needed; return the struct itself. [test: compiler/language/test-386-option-struct-multifield] [test: 15-http-items-api]

11. **`udp_sendto`/`udp_recvfrom` carry binary payloads intact (fixed 2026-07-30)**. They used to truncate
at the first NUL byte (`strlen` on the way out, `from_cstr` on the way back), so `"AB" +
char_to_string(0) + "CDE"` left as 2 bytes instead of 6 — which made DNS, NTP and SNMP probes
impossible to write, since all three put NULs in their headers. Both now use the `String`'s real byte
length. See the Networking section of LLM.md for the signatures. [test: 20-udp-binary-payload]

12. **You CAN inspect the peer's TLS certificate — no C bindings needed (v0.23.1)**. `import "std/tls"`
gives `tls_peer_cert(h)` (subject, issuer, validity dates, serial, algorithm, SHA-256 fingerprint,
SANs), the session accessors (`tls_version`, `tls_cipher`, `tls_cipher_bits`), and two one-line
answers for scanners: **`cert_is_expired(cert)`** and **`tls_is_weak(h)`**. Certificate *verification*
is opt-in and separate — `tls_connect_ex(host, port, mode)`, where mode 1 ("checked") always completes
the handshake and lets you ask whether it *would* have failed. That is the mode a scanner wants: it
needs to reach the broken machine and report it, not be protected from it. See the TLS/HTTPS section
of LLM.md for the signatures. [test: 19-tls-introspection]

13. **A method that doesn't exist for the receiver's type is now a compile error, not garbage
(v0.24.0)**. `m.length()` on a `Map` used to print a pointer read as an integer (`281473395465504`),
silently; `s.m.push(x)` on a `Map` field segfaulted; `s.f.contains(x)` on an `Array` field emitted
invalid IR. All are now compile errors: **NYX1022** from semantic when the receiver's type is
annotated (with a suggestion — *did you mean 'size'?*), and a **NYX2007** backstop in codegen for what
gradual typing leaves unannotated. One rule, no aliases: use `size()` on Map, `length()` on
String/Array. `s.f.length` (property form, no parens) on a String or Array field now returns the real
length instead of 0. The last residue fell in v0.24.1: `m.length` (property form) on a *local* Map
variable used to print a mute error and return 0 with rc=0 — now it's NYX2007 too. A Map exposes no
properties; use the methods (`m.size()`, `m.keys()`, `m.values()`).

14. **The REPL evaluates a declared SUBSET and says so loudly (v0.24.2-3)**. `make repl` runs a
tree-walking interpreter, NOT the compiler: it covers basic types, control flow, functions, arrays and
15 builtin methods (12 String, 3 Array — no Map values, no structs-with-methods, no generics). Anything
outside the subset raises a loud `NYX30xx` error and the session survives. Until v0.24.3 it was worse
than limited — it was wrong: every array literal evaluated to `[nil]`, `for x in [...]` segfaulted,
`5 % 0` returned 5. All fixed and guarded (`make test-repl`). Trust the compiled binary (`nyx
build`/`nyx run`) as ground truth; use the REPL for quick arithmetic/string exploration only.

15. **A failed bind is LOUD now (v0.24.4)**. `http_serve`/`tcp_listen`/`udp_bind` on a taken port used to
fail in complete silence: return -1, no message — and since the old canonical example discarded the
return, the program "started" with exit 0 and no server (a real user debugged against the unrelated
process squatting their port). The runtime now prints `nyx: tcp_listen: cannot bind port N: <cause>`
to stderr. Still CHECK the return (`if http_serve(...) < 0`) — the -1 contract is unchanged and the
error stream may not be visible in every deployment. [test: 21-bind-failure-loud]

16. **The real buffered file API is `file_open()`/`file_write_string()`/`file_close()` — not `open_file()`
or `close_file()` (invented names)**. The core `CHEATSHEET.md` taught the invented names until an
audit caught the mismatch (2026-08-01, same audit that also killed the resurrected "capture is
BROKEN" and "arr[i].method() causes SEGV" lies): `open_file()`/`close_file()` never existed in the
stdlib. If a doc, template or generated manual shows those names, it is teaching a function that will
fail to compile — use `file_open`/`file_write_string`/`file_close` (see `chr-zero-nul-byte` for the
binary-safety contract of this API).

17. **`arr[i] = <float>` on an existing Array WORKS** (fixed 2026-08-03, static-tag spec, v0.24.10). The
indexed write now tags the slot with the VALUE's type (a double is stored as bits + FLOAT tag), and an
int written into an annotated `Array<float>` is promoted (sitofp) — the annotation wins. The old
workaround (integer cents / append-only) is no longer needed. `push`/`unshift`/`insert` with an
annotated receiver also inherit the static tag when the runtime tag is unreadable. [test: 17-csv-aggregator] [test: 18-http-client-filter]

18. **Stateful handles (`mutex_new()`, `sem_new()`, `wg_new()`) are RELIABLE as global initializers
(since v0.24.27; measured 2026-08-21)**. `var MU: Map = mutex_new()` at global scope runs
single-threaded before `main` — 4 threads × 10000 locked increments = 40000 exact, 5/5 runs. The old
lazy-init placeholder pattern (`if READY == 0 { MU = mutex_new(); READY = 1 }`) is unnecessary and a
data race — see the Threading section of LLM.md for its three failure modes. The same guarantee also
covers `sync.wg_wait_timeout(wg, ms)` (both outcomes: quiesced
early-exit and timeout). [test: 23-sync-global-mutex-wg-timeout]

19. **A nested function — and an `async fn` body — sees everything its module sees (fixed 2026-09-11)**:
trait methods, generic calls, constants, `extern`, `static`, `repr(C)` structs. Before the fix the
codegen context of a nested function shared only part of the module's tables with its parent, and
the symptom was misleading rather than clear: a trait method reported `method 'm' is not available
on a receiver of type '%T'` — **false**, the `impl` existed — and a generic call aborted code
generation with exit 1 and **no message at all** (no Nyx error, no LLVM error, no `.ll`). If you
learned to hoist such calls out of nested functions, you no longer need to. [test: compiler/language/test-413-fn-anidada-ve-traits-y-genericos]

<!-- /gen:gotchas -->

---

## 6. Ownership & the borrow checker

The borrow checker (`compiler/borrow.nx`) is **opt-in**, controlled by
`NYX_BORROW=off|warn|error` (default `off` — on plain GC-backed code the rest
of the checker is a lint, since the GC already prevents use-after-free). Turn
it on for code that does manual memory (`alloc`/`free`, raw `*T`) or uses the
`#[affine]` ownership types below.

| Code | Meaning |
|------|---------|
| `NYX1210` / `NYX1211` | `&mut` exclusivity violated (borrowed mutable more than once, or mutable+immutable at once) — statement-scoped lint |
| `NYX1220` | use of a freed value (use-after-free), flow-sensitive (catches conditional frees) |
| `NYX1221` | double free |
| `NYX1222` | dangling reference: a `&local` escapes its owning function via `return` (direct, through an aggregate, or inter-procedural with an explicit `'a`) — **gating** |
| `NYX1223` | same dangling-reference shape but inferred via elision (no explicit `'a`) — **lint only**, not gating |
| `NYX1230` | use-after-move of a `#[affine]` value |

```nyx
let p: *int = alloc<int>(1)
free(p)
print(*p)          // NYX1220 use-after-free under NYX_BORROW=error
```

Known false positive in the dangling-ref checker (NYX1222/1223, conservative
by design): slot-overwrite-then-escape — `v[0] = &x; v[0] = 42; return v`
still flags, even though the dangling reference was overwritten before the
return. Safe to ignore or silence per-site; not unsound (over-flagging, not
under-flagging).

**`#[affine]` types + `impl Drop` = deterministic drop (RAII, Go/defer-style)**:
a value of a type marked `#[affine]` can only be used once — moving it
(rebinding, passing by value) invalidates the original binding (use-after-move
→ `NYX1230`). If the type also has `impl Drop { fn drop(self) { ... } }`, the
destructor runs exactly once when the owning function exits (return, fall-
through, break/continue), unless the value was moved out (returned or passed
by value, in which case the new owner drops it).

```nyx
#[affine]
struct Res { fd: int }
impl Drop for Res {
    fn drop(self) { close_fd(self.fd) }
}
```

⚠️ **Known footgun (the one unsound case)**: calling `.drop()` explicitly, or
any method that consumes `self` by value and drops it internally, does NOT
clear the receiver's drop flag — the owning function's exit will drop it
AGAIN (double-drop; UB if the destructor does manual `free()`). Don't call the
destructor by hand.

**`std/owned`** ships three ready-made affine ownership wrappers:
- `MoveOnly<T>` — pure affine, single-use, `move_new(v)` / `move_consume(m)`.
- `Box<T>` — owns a manual heap `*T`; `box_new(v)`, `box_get(&b) -> T`
  (borrow, doesn't consume), `box_into(b) -> T` (consumes, frees).
- `Rc<T>` — reference-counted manual heap value; `rc_new(v)`, `rc_clone(&r)`
  (borrow, increments refcount, returns an independent owner),
  `rc_get(&r) -> T`, `rc_count(&r) -> int`. Drop decrements and frees at 0.

Out of scope v1: block-scoped drop (today the value dies at function exit,
not at the end of its lexical block), affine values inside GC containers,
loops (only the last iteration's binding drops), cross-module affine types.
Lifetime annotations (`'a`) parse and are consulted by the dangling-ref
checker (NYX1222/1223) but aren't independently verified as a full region
system — inter-procedural region inference is still a follow-up.

`&T`/`&mut T` lower to plain pointer aliases (`T*`) — `&mut` aliasing is not
UB in codegen (no `noalias`); exclusivity is enforced only by the opt-in
lint above.

---

## 7. Async & concurrency (real, not sugar)

`spawn { ... }` launches a detached **goroutine** on Nyx's M:N work-stealing
scheduler; `await expr` runs a real goroutine with cooperative join. Both use
the epoll-based event loop for I/O — this is actual concurrency, not
synchronous sugar dressed up as async syntax.

```nyx
async fn fetch_one(url: String) -> String { return https_get(url) }

fn main() {
    spawn { print("background work") }     // detached goroutine
    let body: String = await fetch_one("https://example.com")
}
```

Gotcha: `await` of a function returning `float` is compile-rejected
(`NYX1021`) — an ABI hazard in the join path. `async fn` without any `await`
inside stays synchronous sugar.

---

## 8. Idiomatic patterns

### HTTP server

```nyx
import "std/http" as http

// The handler gets the request as an ARRAY (NOT a Map, NOT a Request struct):
//   ["request", method, path, headers_pairs, body, err]
//   req[1]=method, req[2]=path, req[3]=headers (as [k,v] pairs), req[4]=body,
//   req[5]=err (0 ok; 413 = body over NYX_HTTP_MAX_BODY cap, default 1MiB —
//   http_serve/http_serve_mt auto-reply 413 and skip the handler)
pub fn on_request(req: Array) -> String {
    let path: String = req[2]
    if path == "/" {
        return http.http_response_with_headers(200, ["Content-Type", "text/html"], "<h1>Hello!</h1>")
    }
    return http.http_response(404, "not found")
}

fn main() -> int {
    // http_serve never returns on success; it returns -1 if the bind fails
    // (port taken / permission) — CHECK it, or the program "runs" with no
    // server (the runtime also prints `nyx: tcp_listen: cannot bind...` to
    // stderr since v0.24.4).
    if http.http_serve(8080, on_request) < 0 {
        print("bind failed — is the port taken?")
        return 1
    }
    return 0
}
// NOTE: this is the LOW-LEVEL server (array-based request, single handler
// fn). For routing, middleware, static files and templates, use
// `std/serve` below — it's the batteries-included framework, in the core.
```

### HTTP client

```nyx
// Simple GET (HTTPS, no custom headers) — returns the body as a String:
let response: String = https_get("https://api.example.com/data")
let data: Array = json_parse(response)                       // tagged JSON value, not a Map
let title: String = json_as_string(json_get(data, "title"))

// With custom headers / method (e.g. a required User-Agent) — use std/http:
import "std/http" as http
let resp: Array = http.http_request("GET", "https://api.example.com/data",
                                    ["User-Agent", "myapp/1.0"], "")
let body: String = http.http_body(resp)     // http.http_status(resp) for the code
```

### std/serve — the web framework

`std/serve` is the executor absorbed into the core from `nyx-serve` v0.7.1
(2026-08-31): routing, middleware, static files with ETag/Cache-Control,
WebSocket rooms, and a graceful-shutdown drain, on top of the `App`/
`Request`/`Response` vocabulary that already lives in `std/web`. Public
names are unchanged from the product (`serve_app`, `app_static_cached`,
`ws_broadcast`, `serve_on_shutdown`...) — it is NOT part of the frozen
prelude, so it needs an explicit `import`.

```nyx
import "std/http"      // http_get/http_status/http_body — client + Request/Response
import "std/web"       // App, Request, Response, app_new/app_get/app_post/...
import "std/serve"     // the executor: serve_app

fn hello(req: Request) -> Response {
    let name: String = req.params.get_or("name", "world")
    return response_text(200, "hola " + name)
}

fn main() -> int {
    let app: App = app_new()
    app_get(app, "/hi/{name}", hello)

    // serve_app BLOCKS (runs the accept loop) until SIGTERM triggers the
    // drain — it returns 0 only after draining cleanly. Never call it from
    // main() in a test/example that must terminate on its own; run it in a
    // `spawn { ... }` goroutine instead and let the rest of main() drive
    // the process's lifetime (see examples/by-example/78-serve-routes.nx).
    return serve_app(app, 8080, 4)   // (port, worker threads)
}
```

- **`Request` — the 9 fields, all filled by the `std/serve` dispatcher BEFORE
  your handler runs** (the struct lives in `std/web`; `request_with(method,
  path)` builds a synthetic one for tests):
  - `method: String` — `"GET"`, `"POST"`… as received.
  - `path: String` — the path WITHOUT the query string (`/users?id=3` →
    `"/users"`; the `?…` part lands in `query`).
  - `query: Map` — the parsed query string, percent-decoded (`?a=1&b=x` →
    `{"a": "1", "b": "x"}`); empty `Map` when there is none.
  - `headers_flat: Array` — flat `[name, value, name, value, …]`. Read it with
    `http_find_header(req.headers_flat, "Content-Type")` (`""` if absent;
    the match is EXACT-case — use `http_find_headers` for case-insensitive /
    repeated headers such as `Set-Cookie`). Never index it by hand.
  - `body: String` — the raw bytes (binary-safe); JSON → parse it yourself
    (`std/json`). A body over `NYX_HTTP_MAX_BODY` (1 MiB default) gets a
    413 from the server before any handler runs.
  - `form: Map` — the `application/x-www-form-urlencoded` fields, decoded;
    stays empty for any other content type (multipart → `std/multipart`,
    JSON → `body`).
  - `cookies: Map` — the parsed `Cookie:` header, name → value.
  - `params: Map` — the `{name}` captures of the matched route
    (`/hi/{name}` → `{"name": "…"}`).
  - `ctx: Map` — per-request scratch shared by wraps, the handler and the
    after-hooks (request ids, timings); fresh and empty on every request.

  All the `Map` fields follow the Map contract: `get` on a missing key
  ABORTS — use `get_or(k, default)` or `contains(k)` first.
- **Static files**: `app_static(app, prefix, dir)` serves any file under
  `dir` at `prefix` (no caching headers); `app_static_cached(app, prefix,
  dir, max_age_secs)` adds a weak ETag + `Cache-Control: public,
  max-age=N` and honors `If-None-Match` (→ 304 with no body). Both guard
  `..`/`~` in the prefix and the resolved path (path traversal → 403).
- **Templates** (`std/template`, pure — no networking): `tpl_render(tmpl,
  ctx: Map)` renders `{{key}}` (HTML-escaped), `{{{key}}}` (raw, XSS risk —
  trusted content only), `{{#if key}}...{{else}}...{{/if}}` (falsy = `""`
  or `"0"`), `{{#each key}}...{{/each}}` (`key` → `Array<Map>`, body
  rendered once per element), and `{{> name}}` after `tpl_partial(name,
  tmpl)`. `ctx` is a flat `Map<String>` (or `Map<String|Array<Map>>` for
  the `#each` key) — see `examples/by-example/102-template-flask-style.nx`.
- **Multipart uploads** (`std/multipart`): `multipart_parse(body, boundary)`
  — boundary comes from the `Content-Type: multipart/form-data;
  boundary=...` request header.
- **Graceful shutdown**: `serve_on_shutdown(fn() -> int)` registers a hook
  that runs during the SIGTERM drain, after in-flight requests finish and
  before `serve_app` returns 0. `NYX_SERVE_DRAIN_SECS` overrides the
  10s default deadline (`0` = no wait).
- **Windows**: the network builtins `std/serve` depends on (`tcp_listen`,
  `tcp_accept`, ...) don't exist yet on that target (arc W in progress) —
  importing `std/serve` on Windows fails loud at the existing builtin
  guard, not silently.

### RESP protocol (used by nyx-kv and RESP-speaking servers)

`std/resp` is the shared, binary-safe RESP2 frame reader used to BUILD a
RESP-speaking server (it reads exact-length bulk strings, not line-based —
avoids truncating values that contain raw newlines). To talk to `nyx-kv` as a
*client*, use the `nyx-kv` package's client (`import { kv_cmd } from
"nyx-kv/src/kv_client"`), don't hand-roll the protocol.

```nyx
import "std/resp"

fn handle_conn(fd: int) {
    let cmd: Array = resp_read_framed(fd, false)   // false = plain TCP, true = TLS
    // cmd is the parsed argv of one RESP command, e.g. ["SET", "foo", "bar"]
    tcp_write(fd, "+OK\r\n")
}
```

### Concurrency with channels

```nyx
let ch: Map = channel_new(10)

fn producer() {
    var i = 0
    while i < 10 {
        channel_send(ch, i)
        i = i + 1
    }
}

thread_spawn(producer)
var total = 0
var n = 0
while n < 10 {
    total = total + channel_recv(ch)
    n = n + 1
}
```

### Iterator chains

```nyx
let result = [1,2,3,4,5,6,7,8,9,10].iter()
    .filter(fn(x: int) -> bool { return x % 2 == 0 })
    .map(fn(x: int) -> int { return x * x })
    .fold(0, fn(acc: int, x: int) -> int { return acc + x })
```

### Pattern matching with Result

```nyx
fn parse_age(s: String) -> Result {
    let n: int = string_to_int(s)
    if n < 0 { return Result.Err("negative") }
    if n > 150 { return Result.Err("too old") }
    return Result.Ok(n)
}

match parse_age("42") {
    Result.Ok(age) => print("age: ${age}"),
    Result.Err(msg) => print("error: ${msg}")
}
```

### Process: fork + exec

```nyx
let pid: int = fork()
if pid == 0 {
    // child — must execvp immediately, no GC allocations
    let args: Array = ["ls", "-la"]
    execvp("ls", args)
    exit(127)
}
waitpid(pid, 0)
```

### Defer for cleanup

```nyx
fn read_and_process(path: String) -> String {
    let f = file_open(path, "r")
    defer { file_close(f) }

    let content: String = file_read_all(f)
    return process(content)     // file_close runs automatically
}
```

---

## 9. WebAssembly & the browser (wasm32-wasi)

Nyx compiles to real `.wasm` that runs under wasmtime OR in the browser (a
~100-line WASI polyfill ships in `examples/browser/nyx-wasi-shim.js`). A
production site already runs its front-end in Nyx→WASM.

```bash
# Desde un PROYECTO (lo normal): lee nyx.toml — main, nombre, dependencias
nyx build --target wasm32-wasi   # → target/wasm32-wasi/<name>.wasm
nyx run --target wasm32-wasi     # lo construye y lo ejecuta con wasmtime
# De UN archivo suelto:
make wasm FILE=app/main.nx    # → main.wasm; multi-file: imports resolve
                              #   PROJECT-relative to the FILE's dir
                              #   (import "util" → app/util.nx; "std/X" → stdlib)
wasmtime main.wasm            # or: node examples/browser/run-node.mjs main.wasm
```

**Toolchain** (no wasi-sdk, ~700MB): system clang + Debian `wasi-libc` +
`libclang-rt-19-dev-wasm32` + `lld-19` (`--sysroot=/usr`) + `wasmtime` (release
binary, not in apt). Tests: `make test-wasm` — SKIPs clean (exit 0) if that
toolchain is missing, never breaks CI on machines without it.

**2 backend gotchas that bite silently**: `GC_malloc` must map to `calloc`, not
`malloc` — Boehm GC guarantees zero-init and `maps.c`/`strings.c` depend on it
(fix lives in `runtime/wasi/gc.h`). A `#[export_name]` fn left with `internal`
linkage is silently dropped by wasm-ld from `instance.exports` (codegen forces
`wasm-export-name` + external linkage). Full gotcha table: `docs/archive/WASM_ROADMAP.md`.

**Calling JS from Nyx** — `extern "js" fn` (compile-time error on native target):
```nyx
extern "js" fn js_alerta(msg: String)
extern "js" fn js_hipoten(a: float, b: float) -> float   // float = f64 = JS Number
```
**Calling Nyx from JS** (events, re-entry after `_start` — module state persists):
```nyx
#[export_name = "al_click"]
fn al_click() { ... }         // JS: instance.exports.al_click()
```
**Marshalling at the boundary**: `int` = i64 ↔ **BigInt**; `float` = f64 ↔ Number;
`String` ↔ `nyx.readString(ptr)` / `nyx.makeString(s)`; `Array` of int/float/String
↔ `nyx.readArray(ptr, kind)` / `nyx.makeArray(vals, kind)`. Annotate `Array<T>` on
the receiving `let` so element reads coerce.

**std/dom** (wasm-only): `dom_set_text/set_html/get_value/set_value`,
`dom_get_attr/set_attr/remove_attr`, `dom_class_add/remove/toggle`, `dom_count`,
`dom_get_attr_all -> Array`, `dom_on(sel, event, "export_name")` and
`dom_on_fn(sel, event, fn() { ... })` (closure handler via the wasm function
table). Inside a handler, the CURRENT event is readable: `ev_type()`, `ev_key()`,
`ev_target_attr(name)`, `ev_target_value()`, `ev_client_x()/ev_client_y()`,
`ev_prevent_default()`.

**std/browser** (wasm-only, callback-by-export-name until real async lands):
`browser_fetch(url, method, body, "handler")` → handler gets `(status: int,
body: String)`; `browser_interval(ms, "h") -> id`, `browser_timeout`,
`browser_clear_timer(id)`; `browser_geo("h")` → `(lat: float, lon: float)`;
`ls_get/ls_set` (localStorage); `tz_offset()` (minutes east of UTC);
`match_media(query) -> int`.

**Memory**: wasm has no Boehm GC. Default = calloc, leak-by-design (fine for
short-lived pages). For long-lived pages opt into the **per-event arena**:
`runNyxWasm(bytes, { arena: true })` — everything allocated during `_start` is
persistent; per-event allocations are discarded by `nyx_arena_event_reset()`
(the shim's dom/browser bindings call it automatically via `ref.afterEvent`).
DISCIPLINE: handlers must NOT store pointers to event-time Strings/Arrays in
globals (store ints/floats by value, or build persistent state in `_start`).

**Handler state**: closure capture of locals WORKS since 2026-07-27 (see §5.4)
— that gotcha is gone. It was verified on the native target; the wasm path
reuses the same codegen pass but has not been re-verified end to end, so if a
DOM handler misbehaves, module globals remain the safe fallback:
```nyx
var g_count: int = 0
dom_on_fn("#btn", "click", fn() { g_count = g_count + 1 })   // always OK
```
Independently of capture, the **arena discipline above still applies**: a
handler must not stash pointers to event-time Strings/Arrays in globals.

---

## 10. Package Manager

```toml
# nyx.toml
[package]
name = "my-app"
version = "0.1.0"
main = "src/main.nx"
description = "What this does"

[dependencies]
nyx-kv = "*"
nyx-serve = "*"
```

```bash
nyx init my-project              # scaffold nyx.toml, src/main.nx, AGENTS.md, CAPABILITIES.md
nyx add nyx-kv                   # adds to [dependencies] + clones to packages/
nyx build                        # compiles (reads nyx.toml, resolves deps, self-heals CAPABILITIES.md)
nyx build --release              # optimized (-O2)
nyx run [args...]                # build + execute (args forwarded to the binary;
                                 #   `--` ends nyx flags: nyx run -- --release)
nyx test                         # run project tests
nyx capabilities [out.md]        # regenerate CAPABILITIES.md — per-task stdlib index, for LLMs
nyx report [--send]              # write FRICTION.md locally (--send opts in to the team channel)
```

**GOTCHA — `packages/<dep>` es caché de existencia, no de versión**: si el
dir ya existe, `nyx build` nunca clona de nuevo ni hace `git pull`/chequea
versión. `rm -rf packages/<dep>` fuerza re-fetch, y vendorear una lib local
ahí es un override de dev válido. Ojo con el `.gitignore`: `nyx init` NO
siembra uno, así que en tu proyecto agrega `packages/` al tuyo a mano — el
repo del lenguaje ignora `**/packages/nyx-*/`, pero ese patrón vale solo acá.

Imports from dependencies: `import { something } from "nyx-kv/src/commands"`.

**AI-first onboarding files** seeded by `nyx init` (read these in a fresh
project before reading `std/` source): `AGENTS.md` (playbook — what/how/with-
what + guardrails + gotchas) and `CAPABILITIES.md` (generated index of what
the stdlib offers, auto-regenerated on `nyx build`).

---

## 11. Compiler environment variables

- `NYX_LANG=es` — error messages in Spanish (default: English)
- `NYX_DIAG=json` — **machine-readable diagnostics**: one JSON object per error,
  BOTH phases (NDJSON on stdout). Fields: `code` (stable — parse phase
  NYX0101–NYX0105, semantic NYX1001–NYX1020; catalog in docs/SPEC.md
  §Structured Diagnostics), `severity`, `phase`, `line`/`column`
  (1-based, in the ORIGINAL source file — position of the node's last token),
  `function`, `message`, `suggestion` (raw did-you-mean identifier, e.g. `"push"`
  for `arr.psh(...)`). **If you are an AI agent compiling Nyx, set this** and parse
  lines starting with `{` instead of scraping error text. The raw driver writes the
  NDJSON to stdout; `nyx run` and `nyx build` capture the driver output and re-emit
  it (JSON included) to **stderr** on a failed compile, followed by a final
  `error: compilation failed` / `error: nyx compile failed` line.
- `NYX_STRICT=warn` — **visible gradual-typing blindness** (v0.24.11): after a
  clean compile, prints how many semantic checks were SKIPPED because a type
  was unknown, with the first 6 spots (function + line) so you know exactly
  where annotating enables checking. Counts ONLY your own code (prelude and
  inlined imports excluded). Silent when everything is annotated. If you are
  an AI agent, set this to find the highest-value annotations to add.
- `NYX_VERBOSE=1` — detailed compiler output (default: compact)
- `NYX_SKIP_SEMANTIC=1` — skip semantic checks (only for debugging the compiler itself)
- `NYX_NO_GC=1` — build without Boehm GC (bare-metal / embedded)
- `NYX_TARGET=wasm32-wasi` — WebAssembly target (forces no_gc; `make wasm` sets it)
- `NYX_BORROW=off|warn|error` — borrow checker mode (default `off`; see §6). `warn`
  prints diagnostics without failing the build, `error` fails on gating codes
  (NYX1220/1221/1222/1230; NYX1223 and NYX1210/1211 stay lint-only even under `error`)
- `NYX_HOME` — toolchain location (default: `~/.nyx/`)
- `NYX_PROJECT_DIR` — project root for imports. Auto-detected by `nyx build` and
  `nyx run` (both walk up from the CWD to the nearest `nyx.toml`); set it explicitly
  to override, e.g. running a project file from an unusual directory.

---

## 12. Ecosystem (products as PM libraries, extracted from this monorepo)

| Package | Purpose |
|---------|---------|
| `nyx-kv` | Redis-compatible key-value store (RESP2 commands) |
| `nyx-serve` | HTTP framework (middleware, JSON, sessions) |
| `nyx-proxy` | HTTPS reverse proxy (SNI, health checks, rate limit) |
| `nyx-queue` | Persistent message queue |
| `nyx-db` | SQL engine (B-tree, parser, transactions) |
| `nyx-edit` | Terminal text editor (CLI app) |
| `nyx-shell` | POSIX shell (CLI app) |

Each lives in its own `nyx-<name>-stack` repo and is consumed via `nyx add
nyx-<name>` — none of this code is in the monorepo (`products/`/`services/`
don't exist here; canonical taxonomy: `docs/PRODUCTS.md`). HTTP/2 is the one
exception: it was absorbed into the core as `std/http2` (no separate package).
Public repos: `https://github.com/nyxlang-dev/nyx-<name>`.

---

## 13. References

- **Full language spec**: [docs/SPEC.md](docs/SPEC.md) (3500+ lines, bilingual)
- **Cookbook (~100 worked recipes, EN/ES)**: `https://nyxlang.com/by-example/`
- **Step-by-step guide (EN/ES)**: `https://nyxlang.com/docs/` / `https://nyxlang.com/es/docs/`
- **Playground**: `https://nyxlang.com/playground`
- **Benchmarks**: [docs/archive/BENCHMARKS.md](docs/archive/BENCHMARKS.md)
- **Roadmap**: [docs/ROADMAP.md](docs/ROADMAP.md)

---

## Tips for AI assistants writing Nyx code

1. **Read this file first** — it has 90% of what you need. Only consult SPEC.md for specific edge cases.
2. **When in doubt, be explicit with types** — `let x: int = ...` is always safer than `let x = ...`, especially for structs and strings.
3. **Run the code before claiming it works** — use `nyx build` + execute, or the playground API. Do not trust your output blindly.
4. **Check gotchas section 5 before writing** — many bugs come from missing one of those items.
5. **Prefer existing stdlib modules** — `std/http`, `std/web`, `std/json`, `std/resp`, etc. Don't reimplement.
6. **Errors are informative** — the compiler now suggests corrections for typos (e.g., "method 'psh' not recognized (did you mean 'push'?)"). Use that feedback.
7. **If something doesn't work** — the issue is most likely one of the gotchas in section 5, not your logic. Re-read them.
