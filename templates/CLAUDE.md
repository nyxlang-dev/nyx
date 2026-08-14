# Nyx Project

> **Read `AGENTS.md` FIRST.** It is the playbook for writing Nyx here: what to do, how,
> which stdlib modules to use (see `CAPABILITIES.md`), the gotchas, and how to report a
> problem. Do not read `std/`/`compiler/` source to "figure things out".

This is a Nyx project. Nyx is a multiparadigm language with gradual typing that compiles to native code via LLVM. Files use `.nx` extension.

## Syntax Reference

```nyx
// Types: int, float, bool, char, String, Array, Map, Fn
let x: int = 42          // immutable
var y = 0                 // mutable
const MAX = 100           // compile-time constant

// String interpolation
print("value = ${x * 2}")

// Functions
fn add(a: int, b: int) -> int { return a + b }

// Structs + methods
struct Point { x: int, y: int }
impl Point {
    fn dist(self) -> int { return self.x + self.y }
}

// Enums — use DOT syntax (NOT ::)
enum Shape { Circle(int), Rect(int, int) }
let s = Shape.Circle(5)

// Pattern matching (exhaustive)
return match s {
    Shape.Circle(r) => r * r * 3,
    Shape.Rect(w, h) => w * h
}

// Generics (monomorphized)
fn identity<T>(x: T) -> T { return x }

// Traits
trait Display { fn to_string(self) -> String }
impl Display for Point {
    fn to_string(self) -> String { return "(${self.x}, ${self.y})" }
}

// Option and Result are built-in
enum Option<T> { Some(T), None }
enum Result<T, E> { Ok(T), Err(E) }
let val = risky_call()?   // try operator

// Closures
fn make_counter() -> Fn {
    var n = 0
    fn inc() -> int { n = n + 1; return n }
    return inc
}

// Iterators (lazy, chainable)
let evens = [1,2,3,4].iter()
    .filter(fn(x: int) -> bool { return x % 2 == 0 })
    .collect()

// Modules — local imports use the src/ path, not a bare name
// src/my_module.nx:  export fn helper() -> int { return 1 }
import "src/my_module"   // in src/main.nx; bare "my_module" is silently ignored

// Control flow
if x > 0 { } else { }
while i < 10 { i = i + 1 }
for i in 0..10 { }
for item: String in names { }

// Collections
var arr = [1, 2, 3]
arr.push(4); arr.pop(); arr.length()

var m = Map.new()
m.insert("key", "value")
let v: String = m.get("key")

// Error handling
try { risky() } catch e { print(e) }
if let Option.Some(v) = maybe { print(v) }

// File I/O
let content = read_file("file.txt")
write_file("out.txt", data)
// New code: prefer the try_ Result-returning pair over the sentinels above
// (import "std/fs"; import "std/error") — try_read_file/try_write_file
// distinguish empty-file from error and never abort the process.

// JSON — values are tagged Arrays, not Map (JSON is recursive; see nested-Maps trap below)
let data: Array = json_parse(text)
let name: String = json_as_string(json_get(data, "name"))
let body: String = json_stringify(json_object(["k"], [json_string("v")]))

// HTTP — the handler gets the request as an ARRAY (NOT Map):
//   ["request", method, path, headers_pairs, body, err] → req[1]=method, req[2]=path,
//   req[5]=err (0 ok; 413 = body over NYX_HTTP_MAX_BODY cap, auto-replied by http_serve)
import "std/http" as http
pub fn on_request(req: Array) -> String {
    let path: String = req[2]
    return http.http_response(200, "Hello!")
}
// http_serve retorna -1 si el bind falla (puerto ocupado) — chequealo o el
// programa "corre" sin servidor:
fn main() -> int { if http.http_serve(8080, on_request) < 0 { return 1 } return 0 }

// Concurrency
let t = thread_spawn(worker_fn)
let result = thread_join(t)
spawn { /* goroutine */ }

// Process
let output: String = exec("echo hello")
let args: Array = get_args()
```

## Critical Traps

1. **`charAt()` returns int** (ASCII/codepoint), not char. Compare with numbers: `if c == 65`.
2. **String API is byte-based** — `length()`, `substring()`, `indexOf()`, `charAt()` all
   operate on BYTES, so they compose: `s.substring(0, s.length())` is the identity. For
   user-visible character counts use `char_length()` (UTF-8 codepoints). HTTP
   `Content-Length` = `length()` directly.
3. **`for-in` on mixed-type arrays** causes infinite loop. Use `while` + index.
4. **Enum syntax uses `.`** not `::` — `Color.Red`, not `Color::Red`.
5. **Map literal keys must be STRINGS** — `{"k": v}` and `{}` work; `{ident: v}` is NOT a
   map literal. For non-string keys use `Map.new()` + `.insert()`.
6. **Nested Maps: OK for a variable or an inline literal, SEGVs for a function's return
   value** — `outer.insert("k", inner)` with `let inner: Map = {...}` (or an inline
   `{"a":"b"}`) works; `outer.insert("k", make_map())` still SEGVs on read. When in doubt
   use flat keys: `m.insert("user::name", "alice")`.
7. **Channels must be `Map`, not `int`** — `let ch: Map = channel_new(10)`.
8. **`Option<Struct>`/`Result<Struct, E>` with a 2+-field struct payload fails to LINK** —
   boxing reserves one word. Return `Option<Array>`/`Result<Array, E>` with the struct's
   fields packed into an Array instead.
9. **A small `channel_new(N)` can deadlock a producer/consumer** — size each channel to
   the total number of messages it will carry, or interleave sends and receives.
11. **A missing method on a typed receiver is a compile error (NYX1022)** — e.g.
    `m.length()` on a `Map` fails with a did-you-mean, not silent garbage. Use `size()` on
    Map, `length()` on String/Array.

`and`/`or` **do** short-circuit. Closure capture of locals fully works (lambda, nested fn,
and both coexisting in the same function). `defer expr()` (no block), `const` with
`String`, bare `return` in void functions, and `handler` as a function name all work. For
the full gotcha list and stdlib reference see `LLM.md` in this project (or `~/.nyx/LLM.md`).

## Build Commands

```bash
nyx run src/main.nx    # compile and run a file
nyx build              # build project (reads nyx.toml)
nyx build --release    # build with optimizations
nyx run                # build and run project
nyx add <pkg>          # add dependency
nyx info               # show project info
```


## In-place mutation & WebAssembly (v0.17+)

```nyx
// &mut self mutates the CALLER's struct (Go-style, no borrow checker):
impl Counter { fn bump(&mut self) { self.n = self.n + 1 } }
// Raw-pointer auto-deref: p.field works on p: *Counter (NOT (*p).field)
```

WebAssembly to the BROWSER: `nyx build --target wasm32-wasi` (or `[build]
target = "wasm32-wasi"` in nyx.toml) → `<name>.wasm`. `extern "js" fn` calls
JS; `#[export_name = "f"]` lets JS call Nyx (events re-enter). Use `std/dom`
(DOM + current-event accessors ev_*) and `std/browser` (fetch/timers/geo/
localStorage) — both wasm-only. For long-lived pages enable the per-event
arena (`runNyxWasm(bytes, { arena: true })` in the JS shim).

Closure capture of locals works — a lambda, a nested fn, and both coexisting in the same
function all mutate captured locals correctly. If you need handler state to survive across
separate wasm events (not just within one function), module GLOBALS (`var g_count: int = 0`)
are still the simplest option.

## AI-first workflow

- `NYX_DIAG=json nyx build` — JSON diagnostics (parse lines starting with `{`).
- `nyx update --sync-docs` — refresh LLM.md/skills in this project after a
  toolchain update (new features + fixed gotchas).
- `nyx report` — found a compiler bug or lying docs? Generate and send a
  friction report (see the report-nyx-friction skill).
