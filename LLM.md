# Nyx — LLM Context File

> Dense reference for AI assistants (Claude, GPT, Cursor, Copilot, etc.)
> working with Nyx code. Load this file as context on first contact with
> the language. For the full spec, see [docs/SPEC.md](docs/SPEC.md).

**Version**: v0.13.0 (pre-release). **Self-hosting**: compiler written in Nyx,
compiles itself to native code via LLVM. Tests: 215/215 ARM64, semantic type
checker active end-to-end (M-08 sessions 1 – 23a).

---

## 1. Install & run

```bash
curl -sSf https://nyxlang.com/install.sh | sh   # installs ~/.nyx/
nyx --version                                    # verify
nyx init my-app && cd my-app                    # create project
nyx build                                         # compile
nyx run                                           # build and run
nyx test                                          # run tests
```

Files use `.nx` extension. Entry point: `fn main() -> int { return 0 }`.

---

## 2. Core syntax

### Variables

```nyx
let x: int = 42          // immutable
var y = 0                 // mutable (type inferred)
const MAX = 100           // compile-time constant (int/float/bool only — NOT strings)
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

```nyx
// file: my_module.nx
export fn helper() -> int { return 1 }

// consumer
import { helper } from "my_module"
import "std/http" as http
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
defer { raw_mode_exit() }    // NOTE: needs braces, not `defer fn_call()`
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
| `indexOf(val)` | 1 | int | -1 if not found |
| `join(sep)` | 1 | String | — |
| `iter()` | 0 | Iterator | for chainable ops |

### String

| Method | Args | Returns | Notes |
|--------|------|---------|-------|
| `length()` | 0 | int | **UTF-8 codepoints** (not bytes) |
| `byte_length()` | 0 | int | **Use this for HTTP Content-Length** |
| `charAt(idx)` | 1 | int | **Returns int (ASCII/codepoint), NOT String** |
| `substring(s, e)` | 2 | String | — |
| `split(sep)` | 1 | Array | — |
| `contains(s)` | 1 | bool | — |
| `trim()` | 0 | String | — |
| `toUpper()` / `toLower()` | 0 | String | (aliases: `to_upper`, `to_lower`) |
| `startsWith(p)` / `endsWith(s)` | 1 | bool | (aliases: `starts_with`, `ends_with`) |
| `replace(old, new)` | 2 | String | — |
| `repeat(n)` | 1 | String | — |
| `indexOf(s)` | 1 | int | -1 if not found |

### Map

| Method | Args | Returns | Notes |
|--------|------|---------|-------|
| `Map.new()` | 0 | Map | constructor (literal `{}` NOT supported) |
| `insert(k, v)` | 2 | — | — |
| `get(k)` | 1 | any | — |
| `has(k)` / `contains(k)` | 1 | bool | — |
| `size()` | 0 | int | — |
| `keys()` / `values()` | 0 | Array | — |
| `remove(k)` | 1 | — | — |
| `clear()` | 0 | — | — |

**Warning**: Nested Maps cause SEGV — use flat key encoding `"key::field"`.

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
- `string_to_int(s)`, `string_to_float(s)`
- `int_to_float(n)`, `float_to_int(n)`
- `str_byte_length(s)` — byte length (for HTTP headers)

### JSON
- `json_parse(s)` → Map or Array
- `json_stringify(obj)` → String

### Process / Environment
- `get_args()` → Array — CLI args
- `exec(cmd)` → String — run shell command
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
- `udp_bind`, `udp_sendto`, `udp_recvfrom`, `resolve(host)`

### TLS / HTTPS
- `https_get(url)`, `https_post(url, body, headers)`
- `tls_connect(host, port)`, `tls_read`, `tls_write`, `tls_close`
- Server: `tls_server_init(cert, key)`, `tls_server_add_cert`,
  `tls_accept`, `tls_read_line`, `tls_write_conn`, `tls_close_conn`

### Threading / Concurrency
- `thread_spawn(fn)`, `thread_join(tid)`
- `mutex_new()`, `mutex_lock(m)`, `mutex_unlock(m)`, `mutex_destroy(m)`
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

### Crypto
- `sha256(s)`, `md5(s)`, `hmac_sha256(key, data)`

### Terminal (for CLI apps)
- `raw_mode_enter()`, `raw_mode_exit()`
- `read_byte()` — from stdin in raw mode
- `term_cols()`, `term_rows()`, `chr(code)`

---

## 5. Critical gotchas — READ THIS SECTION

These will cause silent failures or cryptic errors. All are documented.

### Syntax / language

1. **Enum syntax uses `.` not `::`** — `Shape.Circle(5)`, not `Shape::Circle(5)`
2. **Map literal `{}` is NOT supported** — use `Map.new()` + `.insert()`
3. **Bare `return`** without value doesn't work in typed functions — use `return 0`
4. **`defer` requires a block** — `defer { cleanup() }`, not `defer cleanup()`
5. **`handler` as function name CRASHES codegen** — use any other name
6. **`const` with String CRASHES codegen** — use `let NAME: String = "value"`

### Operators / evaluation

7. **`and`/`or` do NOT short-circuit** — both sides always evaluate. Nest conditions if you need short-circuit semantics.

### Method / field access

8. **`arr[i].method()` causes SEGV** — store `arr[i]` in a typed variable first:
   ```nyx
   let p: Point = points[i]    // WRONG: points[i].dist()
   print(p.dist())
   ```

9. **`for-in` over mixed-type arrays** causes infinite loop — use `while` + index

### Type-specific surprises

10. **`charAt()` returns int (ASCII/codepoint), NOT String** — compare with numbers: `if c == 65`
11. **`.length()` on String returns UTF-8 codepoints** — for HTTP `Content-Length`, use `str_byte_length()`. Wrong usage caused 68K read errors in the past.
12. **`Fn` generic vs typed** — for callbacks, prefer `Fn(Type) -> RetType` over bare `Fn`. Bare `Fn` may fail type-check in callback slots.

### Runtime quirks

13. **Channels must be Map, not int** — `let ch: Map = channel_new(10)`, never `let ch: int`
14. **Nested Maps cause SEGV** — use flat keys: `map.insert("user::name", "alice")`
15. **Global structs need `zeroinitializer`**, not `0` — handled by codegen, but worth knowing if you write FFI
16. **`tcp_write` and `tls_write` can do short writes** — loop until all bytes sent
17. **`fork() + GC`** — the child MUST call `execvp()` immediately, cannot allocate GC memory (Boehm is inconsistent in child process)

---

## 6. Idiomatic patterns

### HTTP server

```nyx
import "std/web"
import "std/http"

fn on_request(req: Request) -> Response {
    return response_html(200, "<h1>Hello!</h1>")
}

fn main() {
    let app = app_new()
    app_get(app, "/", on_request)
    app_use(app, mw_logging)     // middleware
    serve_app(app, 8080)
}
```

### HTTP client

```nyx
let response: String = https_get("https://api.example.com/data")
let data: Map = json_parse(response)
```

### KV with nyxkv (Redis-compatible)

```nyx
import "std/resp"

let fd = tcp_connect("localhost", 6380)
resp_write_bulk(fd, "SET foo bar")
let reply: String = resp_read_line(fd)
tcp_close(fd)
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

## 7. Package Manager

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
nyx add nyx-kv           # adds to [dependencies] + clones to packages/
nyx build                # compiles, emitting binary named after package
nyx build --release      # optimized (-O2)
nyx run                  # build + execute
```

Imports from dependencies: `import { something } from "nyx-kv/src/commands"`.

---

## 8. Compiler environment variables

- `NYX_LANG=es` — error messages in Spanish (default: English)
- `NYX_VERBOSE=1` — detailed compiler output (default: compact)
- `NYX_SKIP_SEMANTIC=1` — skip semantic checks (only for debugging the compiler itself)
- `NYX_NO_GC=1` — build without Boehm GC (bare-metal / embedded)
- `NYX_HOME` — toolchain location (default: `~/.nyx/`)
- `NYX_PROJECT_DIR` — project root for imports (set by `nyx build`)

---

## 9. Ecosystem (8 products as PM libraries)

| Package | Purpose |
|---------|---------|
| `nyx-kv` | Redis-compatible key-value store (52 RESP2 commands) |
| `nyx-serve` | HTTP framework (middleware, JSON, sessions) |
| `nyx-proxy` | HTTPS reverse proxy (SNI, health checks, rate limit) |
| `nyx-queue` | Persistent message queue |
| `nyx-db` | SQL engine (B-tree, parser, transactions) |
| `nyx-http2` | HTTP/2 server (HPACK, h2c) |
| `nyx-edit` | Terminal text editor (CLI app) |
| `nyx-shell` | POSIX shell (CLI app) |

Public repos: `https://github.com/nyxlang-dev/nyx-<name>`.

---

## 10. References

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
4. **Check gotchas section 5 before writing** — many bugs come from missing one of those 17 items.
5. **Prefer existing stdlib modules** — `std/http`, `std/web`, `std/json`, `std/resp`, etc. Don't reimplement.
6. **Errors are informative** — the compiler now suggests corrections for typos (e.g., "method 'psh' not recognized (did you mean 'push'?)"). Use that feedback.
7. **If something doesn't work** — the issue is most likely one of the 17 gotchas, not your logic. Re-read them.
