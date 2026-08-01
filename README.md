# Nyx

**A self-hosting, gradually-typed systems language that compiles to native code via LLVM — one language from bare metal to the browser.**

[![version](https://img.shields.io/github/v/tag/nyxlang-dev/nyx?label=version&color=blue)](https://github.com/nyxlang-dev/nyx/tags)
[![license](https://img.shields.io/badge/license-Apache_2.0-green)](LICENSE)
[![tests](https://img.shields.io/badge/tests-passing-brightgreen)](docs/TESTS.md)
![self-hosting](https://img.shields.io/badge/self--hosting-verified-8A2BE2)

> 🌎 Léelo en español: [docs/README.es.md](docs/README.es.md)

Nyx is a multi-paradigm language whose compiler is **written in Nyx and compiles itself** to byte-identical output (fixed point verified). It aims to cover the whole stack — systems code, backend, and a frontend running in the browser via WebAssembly — in a single language, with a developer experience built for humans and AI assistants alike (structured JSON diagnostics, LLM-oriented docs, `nyx report`).

```nyx
trait Display {
    fn to_string(self) -> String
}

struct Point { x: int, y: int }

impl Display for Point {
    fn to_string(self) -> String {
        return "(" + int_to_string(self.x) + ", " + int_to_string(self.y) + ")"
    }
}

fn main() {
    let p: Point = Point { x: 3, y: 4 }
    print(p.to_string())   // (3, 4)
}
```

## Why Nyx

- **Self-hosting, verified.** The compiler recompiles itself to identical LLVM IR — a real fixed point, not a marketing claim.
- **Full stack, one language.** Native binaries, HTTP/TLS servers, SQLite, a reverse proxy, and a browser frontend (wasm32-wasi) — all written in Nyx.
- **Real guarantees (v0.19–v0.20).** A working type system (unification with occurs-check, real generic monomorphization), real async (stackful goroutines on an M:N scheduler + epoll event loop), and a borrow checker: sound use-after-free / double-free detection on manual memory, plus opt-in `#[affine]` types with deterministic RAII `drop`.
- **AI-first.** Structured JSON diagnostics (`NYX_DIAG=json`, stable codes, line:column), bilingual messages, and `nyx report` / `nyx update` — designed so LLMs write correct Nyx on the first try.
- **Native speed.** Compiles through LLVM to fast machine code, with an optional no-GC mode for bare metal.

## Install

```bash
curl -sSf https://nyxlang.com/install.sh | sh   # installs the toolchain to ~/.nyx

nyx init my-app && cd my-app
nyx build && ./my-app
```

Or try it with zero setup at the **[web playground](https://nyxlang.com/playground)** — Nyx compiles to WebAssembly and runs in your browser.

## Features

| Area | What you get |
|------|--------------|
| **Core** | Generics (monomorphization), traits (static + dynamic dispatch, inheritance, associated types, `impl Trait`), closures, enums/ADTs with exhaustive pattern matching, iterators (lazy, chainable), operator overloading, derive macros |
| **Systems** | FFI (`repr(C)`, inline asm), unsafe/raw pointers, no-GC mode, sized types (i8–u64, f32), process control (fork/exec/pipes/signals), function attributes (`#[naked]`, `#[interrupt]`, `#[link_section]`) |
| **Concurrency** | Real goroutines (`spawn`, `await`) on an M:N work-stealing scheduler + epoll event loop, channels, `select`, mutex, WaitGroup, atomics |
| **Web & Net** | TCP/UDP, TLS/HTTPS (OpenSSL), HTTP/1.1 + HTTP/2 server & client, WebSocket (RFC 6455), reverse proxy, web framework |
| **Data** | JSON, MessagePack, TOML, CSV, SQLite3 (transactions, migrations), zlib, Base64, BTreeMap, graphs (BFS/DFS/Dijkstra) |
| **Safety** | Borrow checker (`NYX_BORROW=warn\|error`): use-after-free / double-free on manual memory, `#[affine]` move-checking + deterministic drop, `&mut` exclusivity |
| **Tooling** | `nyx fmt`, `nyx vet`, `nyx doc`, `nyx test`, package manager (`nyx.toml`), LSP + VS Code extension, REPL, C bindgen, cross-compilation, WASM target |

## Performance*

| Benchmark | Nyx/C ratio (lower = closer to C) |
|-----------|-----------------------------------|
| primes (100K) | **0.80× C** (Nyx beats C) |
| fibonacci(40) | **~1.02× C** (~parity) |
| map (100K ops) | **~1.0× C** (parity) |
| strings (100K concat) | **~1.1× C** (~parity — string-literal interning + LICM) |

<sub>*Core benchmarks re-measured on v0.20.1+LICM with fair measurement (aarch64, 2 cores, 2026-07-15): one-time Boehm GC lazy-init (~7.5ms) is excluded via warmup — it used to be counted inside the timed region, which is why strings was historically misreported as "~11-18× C". The **ratio is the portable metric** — absolute times are hardware-specific. Product benchmarks (HTTP 73K req/s, KV 21.57M ops/s) are from v0.12–0.13 and pending re-measurement in their extracted stacks. Full methodology in [docs/BENCHMARKS.md](docs/BENCHMARKS.md).</sub>

## In the browser (WebAssembly)

`make wasm FILE=prog.nx` produces a real `wasm32-wasi` binary — no 700 MB SDK, just plain `clang` + `wasi-libc` + `lld`. It runs under `wasmtime` or in the browser via a ~100-line shim. `extern "js" fn` imports host functions, `#[export_name]` lets JS call back into live Nyx (module memory and globals persist across events), and `std/dom` / `std/browser` provide DOM manipulation, `fetch`, timers, and `localStorage`. A production site already runs a Nyx→WASM frontend end to end.

## Documentation

- [Language Specification](docs/SPEC.md)
- [Getting Started](docs/GETTING_STARTED.md)
- [Language Comparison](docs/COMPARISON.md) — vs 15 languages
- [Roadmap](docs/ROADMAP.md) · [Changelog](CHANGELOG.md) · [Test suite](docs/TESTS.md)
- [Web playground](https://nyxlang.com/playground)

## Building from source

```bash
sudo apt install clang libgc-dev libssl-dev zlib1g-dev   # Ubuntu/Debian
git clone https://github.com/nyxlang-dev/nyx && cd nyx
make bootstrap          # build the self-hosting compiler
make test               # regression suite, 100% (ARM64) — counts in docs/TESTS.md
```

Linux (x86_64 / ARM64) is fully supported. macOS is experimental; Windows is not supported.

## License

[Apache 2.0](LICENSE).
