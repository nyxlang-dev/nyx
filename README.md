# Nyx

**Nyx** is a multi-paradigm, gradually-typed programming language that compiles to native code via LLVM.
The compiler is written in Nyx and **compiles itself** — a fully self-hosting compiler with a verified fixed point.

**Version**: v0.13.0 | **Status**: Pre-release | **Tests**: 292 compiler (215 regression + 30 advanced + 36 M-08 error + 11 M-08 happy-types + 3 stdlib; test-56 counted in both runners) + 80 product/integration

---

**Nyx** es un lenguaje de programación multiparadigma con tipado gradual que compila a código nativo via LLVM.
El compilador está escrito en Nyx y **se compila a sí mismo** — self-hosting con fixed point verificado.

**Versión**: v0.13.0 | **Estado**: Pre-release | **Tests**: 292 compiler (215 regresión + 30 avanzados + 36 M-08 errores + 11 M-08 happy-types + 3 stdlib; test-56 contado en ambos runners) + 80 product/integration

---

## Features

- **Self-hosting compiler** — compiles itself to identical output (fixed point verified)
- **Native compilation** — fast binaries via LLVM IR
- **Gradual typing** — add type annotations where you want
- **Automatic memory management** — Boehm GC (with optional no-GC mode)
- **Traits** — static + dynamic dispatch, inheritance, default methods, associated types, impl Trait syntax
- **Generics** — monomorphization, trait bounds, where clauses
- **Enums (ADTs)** — pattern matching with guards, OR, nested, literal, struct patterns
- **Closures** — returnable, scope capture via SharedEnv, typed Fn(T)->R
- **Iterators** — lazy, chainable (map/filter/take/skip/enumerate/chain/fold/collect)
- **Operator overloading** — Add, Sub, Mul, Div, Rem, Neg, PartialEq, PartialOrd
- **Derive macros** — #[derive(Clone, PartialEq, Debug, Display, Default)]
- **Concurrency** — M:N work-stealing scheduler, spawn, select, channels, mutex
- **Networking** — TCP/UDP, TLS/HTTPS, HTTP server/client, WebSocket
- **Systems programming** — raw pointers, unsafe blocks, FFI, inline asm (GCC-style), volatile/atomic
- **Data** — JSON, MessagePack, TOML, CSV, SQLite3, compression (zlib)
- **Process control** — fork, exec, pipes, signals, file descriptors
- **Integrated test runner** — `nyx test` for project-wide test discovery
- **Tooling** — formatter, LSP, static analyzer, doc generator, REPL, build system, C bindgen
- **Cross-compilation** — target triples, WASM via wasi-sdk
- **Web Playground** — browser-based code editor (`make playground`)

---

## Quick Example

```nyx
struct Point { x: int, y: int }

impl Add for Point {
    fn add(self, other: Point) -> Point {
        return Point { x: self.x + other.x, y: self.y + other.y }
    }
}

fn main() {
    let a = Point { x: 3, y: 4 }
    let b = Point { x: 1, y: 2 }
    let c = a + b  // operator overloading via trait

    let evens = [1, 2, 3, 4, 5, 6]
        .iter()
        .filter(fn(x: int) -> bool { return x % 2 == 0 })
        .collect()
    // evens = [2, 4, 6]

    match c {
        Point { x: 4, y: 6 } => { print("match!") }
        _ => { print("no match") }
    }
}
```

---

## Requirements / Requisitos

- `clang` (LLVM toolchain)
- `libgc` (Boehm Garbage Collector)
- `libssl-dev` (OpenSSL, for TLS/HTTPS)
- `zlib` (for compression)

```bash
# Ubuntu / Debian (primary supported platform)
sudo apt install clang libgc-dev libssl-dev zlib1g-dev

# macOS (experimental — build issues being tracked, see below)
brew install llvm bdw-gc openssl zlib
```

**Platform support** / **Soporte de plataformas**:

- Linux (Ubuntu/Debian) on x86_64 and ARM64 — **fully supported**, CI green.
- macOS — **experimental**. Two known issues prevent clean builds:
  (1) Makefile does not use `brew --prefix` header paths; (2) `runtime/scheduler.c`
  uses `ucontext_t` APIs deprecated on macOS 15 SDK. macOS CI disabled until fixed.
- Windows — not supported.

---

## Getting Started / Primeros Pasos

```bash
git clone https://github.com/ocavallina/NyxLang
cd NyxLang

# Build the compiler / Construir el compilador
make bootstrap

# Compile and run / Compilar y ejecutar
make run FILE=examples/hello.nx

# Run tests / Ejecutar tests
make test                                       # 204/204 regression tests (ARM64)
bash tests/advanced/run_advanced_tests.sh       # 30 advanced tests
make test-stdlib                                # 3 stdlib tests
make test-products                              # 69 product tests (kv+queue+db — as library tests)
make test-integration                           # 11 E2E tests (serve+kv)
make test-all                                   # all suites (238 compiler + 80 product/integration)

# Start web playground / Iniciar playground web
make playground                                 # http://localhost:8080
```

---

## What Nyx Can Do (verified by compilation and execution)

| Category | Capabilities |
|----------|-------------|
| **Core** | Generics (monomorphization), traits (static+dynamic dispatch, inheritance), closures (returnable, SharedEnv), enums (ADTs, exhaustive matching), iterators (lazy, chainable), tuples, varargs |
| **Types** | int, float, bool, String, char, i8-i32, u8-u64, f32, usize, raw pointers, fixed-size arrays [T:N] |
| **Patterns** | Guards, OR patterns, nested, literal, struct patterns, if-let, while-let |
| **Concurrency** | M:N work-stealing scheduler (real), spawn/select, threads, mutex, channels, WaitGroup, Semaphore, AtomicCounter |
| **Systems** | FFI (repr(C), extern), unsafe blocks, raw pointers, inline asm (GCC-style), volatile/atomic, alloc/free, no-GC mode |
| **Networking** | TCP/UDP, DNS, TLS/HTTPS (OpenSSL), HTTP server+client, WebSocket (RFC 6455) |
| **Data** | JSON parser/serializer, SQLite3 (transactions, migrations), MessagePack, TOML, CSV, zlib compression, Base64 |
| **Stdlib** | Math, collections (BTreeMap, Deque, PriorityQueue, Graph), regex, crypto (SHA256, MD5), logging, random/UUID, connection pool, FSM, Observable/Event Bus |
| **Tooling** | Formatter (nyx fmt), LSP (nyx_check), static analyzer (nyx vet), doc generator (nyx doc), REPL, build system (nyx.toml), C bindgen, cross-compilation, WASM |
| **Web** | HTTP server, reverse proxy (round-robin, health checks), web playground, template engine |
| **Meta** | Derive macros, declarative macros, operator overloading, union types, type aliases |

---

## Language Overview

### Variables and Types
```nyx
let x = 42                  // immutable, type inferred
var y: int = 10             // mutable, explicit type
const MAX = 100             // constant
```

### Functions and Closures
```nyx
fn add(a: int, b: int) -> int { return a + b }

fn make_counter(start: int) -> Fn {
    var count = start
    fn increment() -> int {
        count = count + 1
        return count
    }
    return increment
}
```

### Structs, Enums, and Traits
```nyx
struct Point { x: int, y: int }

enum Shape { Circle(int), Rect(int, int) }

trait Describable {
    fn describe(self) -> String
}

impl Describable for Point {
    fn describe(self) -> String {
        return format("({}, {})", self.x, self.y)
    }
}
```

### Arrays, Maps, and Iterators
```nyx
var nums = [1, 2, 3, 4, 5]
let doubled = nums.iter().map(fn(x: int) -> int { return x * 2 }).collect()

var m = Map.new()
m.insert("key", 42)
print(m.get("key"))  // 42
```

### Concurrency
```nyx
spawn {
    print("hello from goroutine")
}

let ch = channel_new(4)
channel_send(ch, 42)
select {
    case ch => { print("received") }
    default => { print("nothing ready") }
}
```

---

## Compiler Development

The compiler is self-hosting. To modify it:

```bash
$EDITOR compiler/codegen.nx     # Edit
make recompile MODULE=codegen   # Recompile module
make bootstrap                  # Rebuild binary
make test                       # Verify (200/200 required)
```

---

## Project Structure

```
compiler/     — self-hosting compiler in Nyx (13 modules + IR seed files)
runtime/      — C runtime (GC, strings, arrays, maps, networking, threading, crypto, etc.)
std/          — standard library (39 modules: math, json, http, sync, sqlite, proxy, etc.)
playground/   — web playground (server.nx + static HTML/CSS/JS)
products/     — 8 library products (kv, serve, proxy, queue, http2, db, edit, shell)
services/     — production consumers: gateway/ (HTTPS :443) + nyxkv/ (RESP2 :6380)
sites/        — 4 landing pages (nyxlang.com, nyxkv.com, serve.nyxlang.com, proxy.nyxlang.com)
tests/        — 204 regression + 30 advanced + 3 stdlib = 238 compiler tests + 80 product/integration
examples/     — example programs
docs/         — documentation (comparison, audit, contributing)
scripts/      — build and test automation
nyx-vscode/   — VS Code extension
```

---

## Products

| Product | Type | Description | Active daemon |
|---------|------|-------------|---------------|
| **nyx-kv** | Library (PM) | Redis-compatible KV store, 52 commands, 4 data types, Pub/Sub, AUTH | `services/nyxkv` → [nyxkv.com](https://nyxkv.com) |
| **nyx-serve** | Library (PM) | HTTP framework with middleware, sessions, static serving | `sites/*.com` (4 consumers) |
| **nyx-proxy** | Library (PM) | HTTPS reverse proxy with SNI, health checks, rate limiting | `services/gateway` → :443 |
| **nyx-queue** | Library (PM) | Persistent message queue with ACK, redelivery, multi-consumer | None (daemon retired in v0.13) |
| **nyx-http2** | Library (PM) | HTTP/2 server with HPACK, stream multiplexing | None (daemon retired in v0.13) |
| **nyx-db** | Library (PM) | SQL database engine with B-tree storage, persistence | None (daemon retired in v0.13) |
| **nyx-edit** | CLI app | Terminal text editor with syntax highlighting, undo, search | — |
| **nyx-shell** | CLI app | POSIX interactive shell with pipes, redirects, history | — |

---

## Standard Library

| Module | Description |
|--------|-------------|
| `std/prelude.nx` | Auto-loaded: Option, Result, operator traits (Add, Sub, Mul, Div, PartialEq, PartialOrd) |
| `std/math.nx` | abs, min, max, pow_int, gcd, lcm, sqrt_int, sin, cos, log, exp |
| `std/array.nx` | sort_int, sort_by, sort_str, array_sum, array_min, array_max, array_reverse |
| `std/json.nx` | json_parse, json_stringify, json_object, json_array |
| `std/http.nx` | http_response, http_serve, http_get, http_post |
| `std/proxy.nx` | Reverse proxy: round-robin, health checks, header rewriting |
| `std/sync.nx` | WaitGroup, Semaphore, Once, MutexGuard, AtomicCounter |
| `std/sqlite.nx` | SQLite3 wrapper (open, exec, query, transactions, migrations) |
| `std/websocket.nx` | WebSocket RFC 6455 (handshake, framing) |
| `std/graph.nx` | BFS, DFS, Dijkstra, graph algorithms |
| `std/collections.nx` | Set operations (union, intersection, membership) |
| `std/btreemap.nx` | Sorted map (B-tree) |
| `std/linkedlist.nx` | Deque, LinkedList, PriorityQueue |
| `std/compress.nx` | zlib deflate/inflate, Base64 |
| `std/proptest.nx` | Property-based testing (QuickCheck-style) |
| `std/events.nx` | Observable/Event Bus |
| `std/statemachine.nx` | FSM<S,E> generic state machine |

---

## Documentation / Documentación

- [Language Specification / Especificación](docs/SPEC.md)
- [Roadmap](docs/ROADMAP.md)
- [Changelog](CHANGELOG.md)
- [Versioning Policy / Política de versiones](docs/VERSIONING.md)
- [Contributing / Contribuir](docs/CONTRIBUTING.md)
- [Getting Started / Primeros pasos](docs/GETTING_STARTED.md)
- [Language Comparison / Comparativa](docs/COMPARISON.md) — vs 15 languages


---

## Known Limitations (v0.13.0) / Limitaciones conocidas

- Enum syntax uses `.` not `::` (`Shape.Circle`, not `Shape::Circle`)
- Bare `return` works in void functions (synthesizes `return 0`)
- Lifetime annotations and &T/&mut T are parsed but not enforced (no borrow checker)
- async/await is syntactic desugaring, not real parallelism
- Map literal syntax `{}` not supported (use `Map.new()`)
- HKT/GATs are parsed but not fully instantiated

---

## Road to v1.0.0 / Camino a v1.0.0

See [docs/VERSIONING.md](docs/VERSIONING.md) for the complete roadmap:
```
v0.9.0  — Version reset + audit ✅
v0.10.0 — Web Playground ✅
v0.11.0 — Enhanced Database ✅
v0.12.0 — 8 products, package manager, nyx test, nyx-shell ✅
v0.13.0 ← NOW / AHORA — products→libraries refactor, services/ + sites/, portable toolchain
           (install.sh), bilingual compiler (NYX_LANG), M-01/M-02/M-03/M-04 + M-08 S1–S23a
           semantic type checker, cookbook 100/100, LLM.md ✅
v0.14.0 — Stripe integration, user dashboard, public package registry (TBD)
v1.0.0  — First stable public release (requires author approval)
```

---

## License

Apache 2.0 — see [LICENSE](LICENSE)
