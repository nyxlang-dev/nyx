# Nyx — LLM Context File

> Dense reference for AI assistants (Claude, GPT, Cursor, Copilot, etc.)
> working with Nyx code. Load this file as context on first contact with
> the language. For the full spec, see [docs/SPEC.md](docs/SPEC.md).

**Version**: v0.21.0. **Self-hosting**: compiler written in Nyx, compiles
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

### Self-check loop — use it before claiming anything works

You cannot run a program in your head, and Nyx is not in your training data.
These four commands are your feedback loop. `check` is the fastest: it type-checks
without linking or executing, and **exits non-zero when something is wrong**, so
`nyx check && nyx test` is safe to chain.

```bash
nyx check [file.nx]    # parse + type-check only. No linking, no execution. Exit 1 on error.
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

// LLM inference (v0.20.x): Nyx orchestrates llama.cpp via dlopen (std/llm).
// let l: LLM = llm_load("model.gguf")   // affine — ALWAYS annotate the type
// llm_generate(&l, "prompt", 64)         // borrows; drop frees model once at scope end
// llm_generate_stream(&l, p, 64, c_fn_ptr(on_piece))  // fn on_piece(p: *i8) per token
// Env: NYX_LLAMA_SO=/path/libllama.so (or the CI stub). Never call l.drop() manually.
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
```

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

### Error handling

```nyx
try {
    risky_call()
} catch e {
    print("failed: ${e}")
}
```

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
| `get(k)` | 1 | any | — |
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

### Iterator (chainable)

`next`, `map`, `filter`, `take`, `skip`, `enumerate`, `chain`, `collect`,
`fold(init, f)`, `sum`, `count`, `any(pred)`, `all(pred)`

---

## 4. Global builtins (no import needed)

### I/O
- `print(x)` / `print_no_newline(x)` — to stdout
- `read_line()` — read from stdin
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
- `mutex_new()`, `mutex_lock(m)`, `mutex_unlock(m)`, `mutex_destroy(m)`
- `condvar_new()`, `condvar_wait(cv, m)` (hold m locked), `condvar_signal(cv)`, `condvar_broadcast(cv)`, `condvar_timedwait(cv, m, ms)` → 0 signaled / 1 timeout
- `rwlock_new()`, `rwlock_rdlock(l)` / `rwlock_wrlock(l)`, `rwlock_tryrdlock(l)` / `rwlock_trywrlock(l)` → 0 acquired / 1 busy, `rwlock_unlock(l)`, `rwlock_destroy(l)` — multi-reader/single-writer; blocks the OS thread (like mutex — goroutines should prefer channels)
- `channel_new(size)` → Map (NOT int!)
- `channel_send(ch, val)`, `channel_recv(ch)`, `channel_destroy(ch)`
- `spawn_task(fn)`, `task_await(t)`, `task_cancel(t)`, `task_race(t1, t2)`

### Time
- `time()` / `time_ms()` / `time_us()` — Unix timestamp
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

### Crypto
- `sha256(s)`, `md5(s)`, `hmac_sha256(key, data)`

### Terminal (for CLI apps)
- `raw_mode_enter()`, `raw_mode_exit()`
- `read_byte()` — from stdin in raw mode
- `read_byte_timeout(ms)` — poll()-based: byte, -1 EOF, -2 timeout/signal (EINTR);
  ms<0 = infinite. Wakes on SIGWINCH (poll is exempt from SA_RESTART) — use for
  live-resize input loops. `raw_mode_enter()` installs a no-op SIGWINCH handler
  automatically (only if the process hasn't installed its own) so this wakeup
  works out of the box; if you register your own handler via `signal_handle`
  (any order relative to `raw_mode_enter`), yours wins and still fires.
- `term_write(s)`, `term_flush()` — stdout without per-call flush (buffered frames)
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

1. **Nested Maps: works for a variable or an inline literal, SEGVs for a
   function's return value** — `outer.insert("i", inner)` where `inner` is
   `let inner: Map = {...}`, or `outer.insert("i", {"k": "v"})` inline, both
   work: `outer.get("i")` correctly reconstitutes the nested Map. But
   `outer.insert("i", make_map())` (the value comes from calling a function
   that returns a Map) is NOT detected and still SEGVs on read — the fix
   (2026-07-27) checks the argument's AST shape (identifier tracked as Map,
   or a map-literal), not its real type. If you can't guarantee the value is
   a variable or literal, use flat keys instead:
   `map.insert("user::name", "alice")`. Two more limits on the working case:
   the OUTER map must be homogeneous — its value-type is tracked once in
   `ctx.variables` and the LAST `insert()` wins, so `o.insert("i", inner);
   o.insert("s", "texto"); let g: Map = o.get("i")` SEGVs (the outer map
   mixed a nested Map with a String value). And reading the INNER map
   requires a typed binding: `let g: Map = o.get("i"); print(g.get("k"))`
   prints a raw pointer as a number (e.g. `187651464825712`), not the value —
   only `let v: String = g.get("k")` returns the real content. [test: 13-map-literal-keys]

2. **`Option<Struct>`/`Result<Struct, E>` with a 2+-field struct as the
   payload breaks the LINK, not the compile** (found 2026-07-28, campaign
   "Primer intento verde" Fase 1 Task 8, writing an HTTP JSON API reference).
   Boxing a generic payload always `GC_malloc`s exactly 8 bytes and stores it
   as a single `i64` — fine for `int`/`bool`/`String`/`Array`/pointers (all
   one word), but a multi-field struct like `Item { id: int, name: String,
   price: Array }` needs 3 words, so `Option.Some(it)`/`Result.Ok(it)`
   produces `%Item = type { i64, ptr, ptr }` where the boxing site expects
   `i64` — `clang` refuses to link it (`'%N' defined with type '%Item = ...'
   but expected 'i64'`), so this NEVER reaches runtime — every affected
   program fails 100% of the time at build, not intermittently. Workaround:
   don't put a raw multi-field struct through `Option`/`Result` — return
   `Option<Array>`/`Result<Array, E>` with the struct's fields packed into an
   Array (a JSON object value works great if you already need JSON) instead
   of the struct itself. [test: 15-http-items-api]

3. **`arr[i] = <float>` on an already-existing `Array`/`Array<float>`
   corrupts the value on the next read** (found 2026-07-28, same campaign,
   writing a CSV aggregator and an HTTP client that sort by a float field).
   `codegen_index_assign` (`compiler/codegen.nx`) always calls
   `nyx_array_set`, which *intentionally* leaves the slot's type tag as
   UNKNOWN (that's `nyx_array_set_tagged`'s job, called right after — by
   design — everywhere else in the codegen) — but the `arr[i] = x` codegen
   path never calls `nyx_array_set_tagged`. A later read that needs the tag
   to reinterpret the bits as a `double` gets garbage (`~4.6e18` from
   `a[0] = 5.5`). `arr[i] = <int>` and `arr[i] = <String>` do NOT have this
   bug (verified) — pointers and raw integers don't need the tag to read back
   correctly. Minimal repro: `var a: Array = [0.0]; a[0] = 5.5; let g: float
   = a[0]; print(g.to_string())` prints garbage, not `5.5`. Workaround: never
   reassign a float into an existing Array slot by index — accumulate in
   integer cents instead (multiply by 100, round, `Array` of `int`), or only
   ever `.push()` new floats into a fresh Array (append-only) and sort an
   `Array` of `int` **indices** instead of swapping the float values
   in place. [test: 17-csv-aggregator] [test: 18-http-client-filter]

4. **A fixed small channel capacity (e.g. `channel_new(64)`) can deadlock a
   producer/consumer pattern under enough load** — not a compiler bug, a
   concurrency design trap worth knowing before reaching for `channel_new`.
   If the main goroutine sends M jobs on a bounded jobs channel and only
   starts draining a separate bounded results channel AFTER it finishes
   sending, workers can fill the results channel and block trying to push
   more, while main is simultaneously blocked trying to push the remaining
   jobs (channel full, waiting for a worker to consume) — a real deadlock,
   reproducible with N=4 workers and M=200 jobs against a 64-slot channel.
   Fix: size each channel to at least the total number of messages it will
   carry (`channel_new(m + n)` for the jobs channel, `channel_new(m)` for
   results), or interleave sends and receives instead of doing all sends
   before any receive. [test: 16-worker-channels]

### 5.2 Language rules — not bugs, just how Nyx works

These are deliberate design decisions. Knowing them is like knowing that
Python indents. They fail LOUDLY (compile error) if you get them wrong.

1. **Enum syntax uses `.` not `::`** — `Shape.Circle(5)`, not `Shape::Circle(5)` [test: 14-language-rules]
2. **`charAt()` returns int (ASCII/codepoint), NOT String** — compare with numbers: `if c == 65` [test: 14-language-rules]
3. **String API is byte-based (v0.14)** — `length()`, `substring()`, `indexOf()`, `charAt()` all operate on BYTES, so they compose safely: `s.substring(0, s.length())` is the identity. For *character* counts use `char_length()` (UTF-8 codepoints). For *terminal columns* (TUI alignment — CJK/fullwidth/emoji take 2 columns, combining marks 0) codepoints are NOT enough: use `display_width(s)` / `wcwidth(cp)` from `import "std/unicode"` (v0.22.x+, wcwidth(3)/Kuhn contract). HTTP `Content-Length` = `length()` directly. (Before v0.14, `length()` counted codepoints — the mismatch caused a production outage; the contract is now unified.) [test: 14-language-rules]
4. **Channels must be Map, not int** — `let ch: Map = channel_new(10)`, never `let ch: int` [test: 14-language-rules]
5. **`await` of a `float`-returning function is gated (NYX1021)** — an ABI [test: compiler/errors/test-async-float-return]
   hazard in the goroutine join. `await` of int/bool/String/struct is fine.
6. **Map literal keys must be STRINGS** — `{"k": 1}` and `{}` work (v0.16);
   `{ident: 1}` is NOT a map literal and fails loudly with `error [NYX0106]:
   map literal keys must be String — use {"key": value}` (compile error, not
   a silent trap). `defer cleanup()` (bare) and `const` with String both
   work since v0.16. [test: 13-map-literal-keys]

### 5.3 Known limits — inherited from the platform

Not Nyx bugs: these come from POSIX, from the Boehm GC, or from codegen
internals you never touch directly.

1. **Global structs need `zeroinitializer`**, not `0` — handled by codegen, but worth knowing if you write FFI
2. **`fork() + GC`** — the child MUST call `execvp()` immediately, cannot allocate GC memory (Boehm is inconsistent in child process)

### 5.4 Already fixed — you can use these

Older docs (and older model contexts) warn against these. They work now.
Listed so you don't avoid a construct that is perfectly fine.

1. **Closure capture of locals WORKS — including a lambda and a nested fn in the
   same function** (fixed 2026-07-27) [test: 12-closure-capture-paths]. Every form works: a lambda literal
   capturing a local passed inline (`ejecutar(fn() { c[0] = c[0]+1 })`), a lambda
   bound to a `let`, a named nested fn that mutates a local and is called through
   a `Fn` parameter, `thread_spawn` with capture, and — this is the part that was
   broken — a capturing lambda and a capturing nested fn **coexisting in the same
   function**, in either order. The cause was in `pre_scan_closure_env`: the scan
   of locals stopped at the first nested fn, so anything declared after it never
   entered the shared environment. This gotcha previously read "capture is BROKEN
   outside the happy path", and that over-generalization cost a real user a
   2,400-line terminal browser written without a single callback — which is why
   the whole section now demands an executable case per item.
2. **`and`/`or` DO short-circuit** (since the April 2026 compiler fixes) —
   the right side is not evaluated when the left side decides the result.
3. **Implicit monomorphization works nested (v0.16.1)** — `id(42)` (a generic call with no turbofish) monomorphizes in `let`/`var`/statement position AND when nested inside another expression: `assert(id(42) == 42)`, `if id(x) == y`, binop operands. (Turbofish on *method* calls — `b.conv<T>(x)` — still doesn't parse; annotate or bind to drive inference there.)
4. **Nested arrays `Array<Array<T>>` work** (`grid[0][0]`, extracted rows,
   rows as args). If you saw the old "'%N' i64 but expected ptr" error,
   update your toolchain (`nyx update`).
5. **`chr(0)` builds the real NUL byte (v0.22.x+, fixed 2026-07-25)** —
    `chr(code)` is byte-level (not UTF-8, see 5.2.3) and now length-explicit
    end to end: `chr(65) + chr(0) + chr(66)` has `length() == 3`. Before this
    fix, `chr(0)` collapsed to the empty String (a C-string/`strlen` path
    truncated it), so binary buffers built byte-by-byte with `chr()` silently
    lost NULs. **Still open**: `write_file(path, content)`/`read_file(path)` (the
    simple path-based pair) are NOT binary-safe — `write_file` truncates content
    at the first NUL (its `char*` ABI, not a `chr()` problem) — don't round-trip
    NUL-containing Strings through them yet. **`file_write_string(handle, s)`
    (the buffered `file_open`/`file_write_string`/`file_close` API) IS binary-safe
    (fixed 2026-07-30)** — it writes `s`'s real byte length, not `strlen`, so a
    blob with embedded NULs (`"AB" + char_to_string(0) + "CDE"`) round-trips
    intact; prefer it over `write_file` for any content that isn't known-text.
    For codepoints beyond a byte, use `utf8_encode(codepoint)` from
    `import "std/unicode"` (v0.22.x+): encodes any Unicode codepoint to its
    1-4 UTF-8 bytes; invalid input (negative, > 0x10FFFF, surrogates
    U+D800..U+DFFF) yields U+FFFD instead of aborting — HTML numeric-entity
    semantics, so it composes directly with entity decoding.
6. **GC exhaustion is now an ORDERED error, not a raw SEGV (fixed 2026-07-24)** —
    holding a very large number of tiny allocations live at once (e.g. ~272k
    one-char Strings per round, repeated) used to exhaust the Boehm heap and
    SIGSEGV silently (the string runtime dereferenced a NULL from `GC_malloc`).
    Now any exhaustion aborts with `💥 Runtime Error: out of memory (GC heap
    exhausted)` and `exit 1`. Two practical levers: (a) **process in blocks** —
    don't keep hundreds of thousands of tiny objects reachable simultaneously;
    chunk the work (e.g. 4 KB blocks) so most become collectable each round;
    (b) **`GC_MAXIMUM_HEAP_SIZE`** (Boehm env var, in bytes) caps/raises the heap
    and, with a small value, makes exhaustion deterministic for testing.
7. **Methods chained on a user function's `Array` return (FIXED v0.22.x+,
    2026-07-26)** — `f(args).length()` used to compile and silently return 0
    (the expression-receiver path had no Array branches and fell through to a
    mute `return 0`). Now `length`, `indexOf`, `join`, `reverse`, `slice`,
    `push`, `pop`, `shift` and `unshift` all work chained, matching the bound
    form. Indexing (`f()[0]`) and String methods (`g().length()`) were never
    affected. `contains` works in both paths too (fixed v0.22.14; and since the
    slots-tag work, `contains`/`indexOf` with a String needle compare by
    CONTENT on tagged slots, not by pointer). Chained `reverse`/`push`
    mutate in place and return void, same contract as on a variable, so on a
    temporary the effect is discarded.
8. **`tcp_write`/`tls_write` already loop until everything is sent** —
    `nyx_tcp_write` (`runtime/net.c`) and `nyx_tls_write_conn`
    (`runtime/tls.c`) both `while (total < len)` around `send()`/`SSL_write()`
    internally, retrying on a benign partial write. A single call returns the
    full length up to 512 MiB tested (SDD 2026-07-27 Task 2 report); you do
    NOT need an application-level retry loop for a normal blocking socket.
    The one real exception: both loops `break` early if the underlying call
    returns `<= 0`, so on a **non-blocking fd** an `EAGAIN`/`EWOULDBLOCK` can
    still make the call return short — only non-blocking sockets need the
    caller to check the return value and retry.
9. **`udp_sendto`/`udp_recvfrom` carry binary payloads intact (fixed
    2026-07-30)** [test: 20-udp-binary-payload]. They used to truncate at the
    first NUL byte (`strlen` on the way out, `from_cstr` on the way back), so
    `"AB" + char_to_string(0) + "CDE"` left as 2 bytes instead of 6 — which made
    DNS, NTP and SNMP probes impossible to write, since all three put NULs in
    their headers. Both now use the `String`'s real byte length. See §4 for the
    signatures.
10. **You CAN inspect the peer's TLS certificate — no C bindings needed
    (v0.23.1)** [test: 19-tls-introspection]. `import "std/tls"` gives
    `tls_peer_cert(h)` (subject, issuer, validity dates, serial, algorithm,
    SHA-256 fingerprint, SANs), the session accessors (`tls_version`,
    `tls_cipher`, `tls_cipher_bits`), and two one-line answers for scanners:
    **`cert_is_expired(cert)`** and **`tls_is_weak(h)`**. Certificate
    *verification* is opt-in and separate — `tls_connect_ex(host, port, mode)`,
    where mode 1 ("checked") always completes the handshake and lets you ask
    whether it *would* have failed. That is the mode a scanner wants: it needs
    to reach the broken machine and report it, not be protected from it. See §4.
11. **A method that doesn't exist for the receiver's type is now a compile
    error, not garbage (v0.24.0)**. `m.length()` on a `Map` used to
    print a pointer read as an integer (`281473395465504`), silently;
    `s.m.push(x)` on a `Map` field segfaulted; `s.f.contains(x)` on an `Array`
    field emitted invalid IR. All are now compile errors: **NYX1022** from
    semantic when the receiver's type is annotated (with a suggestion — *did
    you mean 'size'?*), and a **NYX2007** backstop in codegen for what gradual
    typing leaves unannotated. One rule, no aliases: use `size()` on Map,
    `length()` on String/Array. `s.f.length` (property form, no parens) on a
    String or Array field now returns the real length instead of 0. The last
    residue fell in v0.24.1: `m.length` (property form) on a *local* Map
    variable used to print a mute error and return 0 with rc=0 — now it's
    NYX2007 too. A Map exposes no properties; use the methods (`m.size()`,
    `m.keys()`, `m.values()`).
12. **The REPL evaluates a declared SUBSET and says so loudly (v0.24.2-3)**.
    `make repl` runs a tree-walking interpreter, NOT the compiler: it covers
    basic types, control flow, functions, arrays and 15 builtin methods
    (12 String, 3 Array — no Map values, no structs-with-methods, no
    generics). Anything outside the subset raises a loud `NYX30xx` error and
    the session survives. Until v0.24.3 it was worse than limited — it was
    wrong: every array literal evaluated to `[nil]`, `for x in [...]`
    segfaulted, `5 % 0` returned 5. All fixed and guarded (`make test-repl`).
    Trust the compiled binary (`nyx build`/`nyx run`) as ground truth; use
    the REPL for quick arithmetic/string exploration only.
13. **A failed bind is LOUD now (v0.24.4)** [test: 21-bind-failure-loud].
    `http_serve`/`tcp_listen`/`udp_bind` on a taken port used to fail in
    complete silence: return -1, no message — and since the old canonical
    example discarded the return, the program "started" with exit 0 and no
    server (a real user debugged against the unrelated process squatting
    their port). The runtime now prints `nyx: tcp_listen: cannot bind port
    N: <cause>` to stderr. Still CHECK the return (`if http_serve(...) < 0`)
    — the -1 contract is unchanged and the error stream may not be visible
    in every deployment.

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
// NOTE: the app-based router (app_new/app_get/serve_app, Request/Response types)
// lives in the nyx-serve framework (extracted to nyx-serve-stack), NOT the core.
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
make wasm FILE=app/main.nx    # → main.wasm; multi-file: imports resolve
                              #   PROJECT-relative to the FILE's dir
                              #   (import "util" → app/util.nx; "std/X" → stdlib)
wasmtime main.wasm            # or: node examples/browser/run-node.mjs main.wasm
```

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
- **Cheat sheet for humans**: [docs/CHEATSHEET.md](docs/CHEATSHEET.md)
- **The Book** (31 chapters + appendices): `https://nyxlang.com/learn/`
- **Playground**: `https://nyxlang.com/playground`
- **Benchmarks**: [docs/BENCHMARKS.md](docs/BENCHMARKS.md)
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
