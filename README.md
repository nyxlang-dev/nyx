# Nyx

**Nyx** is a multi-paradigm, gradually-typed programming language that compiles to native code via LLVM.
The compiler is written in Nyx and **compiles itself** — a fully self-hosting compiler with a verified fixed point.

**Version**: v0.12.0 | **Status**: Pre-release | **Tests**: 220 (190 regression + 30 advanced)

---

**Nyx** es un lenguaje de programación multiparadigma con tipado gradual que compila a código nativo via LLVM.
El compilador está escrito en Nyx y **se compila a sí mismo** — self-hosting con fixed point verificado.

**Versión**: v0.12.0 | **Estado**: Pre-release | **Tests**: 220 (190 regresión + 30 avanzados)

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
# Ubuntu / Debian
sudo apt install clang libgc-dev libssl-dev zlib1g-dev

# macOS
brew install llvm bdw-gc openssl zlib
```

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
make test                                       # 190 regression tests
bash tests/advanced/run_advanced_tests.sh       # 30 advanced tests
# Total: 220 tests, all passing

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
make test                       # Verify (220/220 required)
```

---

## Project Structure

```
compiler/     — self-hosting compiler in Nyx (13 modules + IR seed files)
runtime/      — C runtime (GC, strings, arrays, maps, networking, threading, crypto, etc.)
std/          — standard library (35 modules: math, json, http, sync, sqlite, proxy, etc.)
playground/   — web playground (server.nx + static HTML/CSS/JS)
tests/        — 190 regression + 30 advanced = 220 tests
examples/     — example programs
docs/         — documentation (comparison, audit, contributing)
scripts/      — build and test automation
nyx-vscode/   — VS Code extension
```

---

## Products

| Product | Description | Status |
|---------|-------------|--------|
| **nyx-kv** | Redis-compatible key-value store, 44 commands, 4 data types | Managed service at [nyxlang.com](https://nyxlang.com) |
| **nyx-serve** | HTTP framework for APIs and websites | [Open source](https://github.com/nyxlang-dev/nyx/tree/main/products/serve) |
| **nyx-proxy** | HTTPS reverse proxy with TLS 1.3 | [Open source](https://github.com/nyxlang-dev/nyx/tree/main/products/proxy) |

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

- [Language Specification / Especificación](SPEC.md)
- [Roadmap](ROADMAP.md)
- [Changelog](CHANGELOG.md)
- [Versioning Policy / Política de versiones](VERSIONING.md)
- [Contributing / Contribuir](docs/CONTRIBUTING.md)
- [Getting Started / Primeros pasos](docs/GETTING_STARTED.md)
- [Language Comparison / Comparativa](docs/COMPARISON.md) — vs 15 languages
- [Feature Audit / Auditoría](docs/AUDIT_PHASE1.md)

---

## Known Limitations (v0.12.0) / Limitaciones conocidas

- Enum syntax uses `.` not `::` (`Shape.Circle`, not `Shape::Circle`)
- Bare `return` without value doesn't work — use `return 0`
- Lifetime annotations and &T/&mut T are parsed but not enforced (no borrow checker)
- async/await is syntactic desugaring, not real parallelism
- Map literal syntax `{}` not supported (use `Map.new()`)
- HKT/GATs are parsed but not fully instantiated

---

## Road to v1.0.0 / Camino a v1.0.0

See [VERSIONING.md](VERSIONING.md) for the complete roadmap:
```
v0.9.0  — Version reset + audit ✅
v0.10.0 — Web Playground ✅
v0.11.0 — Enhanced Database ✅
v0.12.0 ← NOW / AHORA — Reverse Proxy ✅
v0.13.0 — Real async/await + non-blocking I/O
v0.14.0 — Package manager with public registry
v0.15.0 — Real borrow checker
v1.0.0  — First stable public release (requires author approval)
```

---

## License

MIT — see [LICENSE](LICENSE)
