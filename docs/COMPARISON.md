# Nyx v0.20.1 — Language Comparison

> Honest comparison. Last updated: 2026-07-15 (Memory Safety 2→3, Concurrency 3→4 — borrow checker + real async v0.19-v0.20; Performance 3→4 — compute at C parity under fair measurement, interning + LICM passes). Prior: 2026-06-10 (AI-Verifiability dimension; see docs/AI-FIRST.md). Original audit: 2026-03-24.
> Scoring 1-5: 1=nonexistent, 2=basic, 3=functional, 4=good, 5=excellent/leader.
> Nyx scores are based on features **verified by compiling and running**, not documentation claims.

---

## Dimensions

| Dimension | What it measures |
|-----------|-----------------|
| **Performance** | Execution speed, optimization, overhead |
| **Memory Safety** | Prevention of use-after-free, buffer overflow, data races |
| **Expressiveness** | Type system power, abstractions, ergonomics |
| **Ecosystem** | Libraries, community, tools, documentation |
| **Concurrency** | Concurrency model, ease of use, performance |
| **Native Full-Stack** | Ability to cover proxy/backend/frontend/DB/playground |
| **Learning Curve** | Ease of becoming productive quickly |
| **Self-hosting** | Ability to compile itself |
| **AI-Verifiability** | How completely the compiler catches AI-generated mistakes and how mechanically an AI can consume its diagnostics (structured errors, spans, suggested fixes, fast feedback) |

---

## Global Scores

| Language | Perf. | Mem.Saf. | Express. | Ecosys. | Concurr. | Full-Stack | Learn. | Self-host | AI-Verif. | **Avg** |
|----------|-------|----------|----------|---------|----------|------------|--------|-----------|-----------|---------|
| **Nyx** | **4** | **3** | **4** | **2** | **4** | **4** | **3** | **5** | **4** | **3.7** |
| C | 5 | 1 | 2 | 4 | 2 | 2 | 2 | 5 | 2 | 2.8 |
| C++ | 5 | 2 | 4 | 5 | 3 | 2 | 1 | 5 | 2 | 3.2 |
| Rust | 5 | 5 | 5 | 4 | 5 | 2 | 1 | 5 | 5 | 4.1 |
| Go | 4 | 3 | 3 | 4 | 5 | 3 | 5 | 5 | 4 | 4.0 |
| Java | 4 | 4 | 3 | 5 | 4 | 4 | 3 | 5 | 3 | 3.9 |
| Python | 2 | 4 | 4 | 5 | 2 | 3 | 5 | 3 | 2 | 3.3 |
| JavaScript | 3 | 3 | 3 | 5 | 3 | 5 | 4 | 2 | 1 | 3.2 |
| TypeScript | 3 | 3 | 4 | 5 | 3 | 5 | 4 | 2 | 4 | 3.7 |
| Haskell | 4 | 5 | 5 | 3 | 4 | 1 | 1 | 5 | 4 | 3.6 |
| Erlang | 3 | 4 | 3 | 3 | 5 | 2 | 2 | 4 | 2 | 3.1 |
| Swift | 4 | 4 | 4 | 3 | 4 | 2 | 3 | 5 | 4 | 3.7 |
| Kotlin | 4 | 4 | 4 | 4 | 4 | 3 | 4 | 3 | 4 | 3.8 |
| Zig | 5 | 3 | 3 | 2 | 3 | 1 | 2 | 5 | 3 | 3.0 |
| COBOL | 2 | 3 | 1 | 2 | 1 | 1 | 3 | 2 | 1 | 1.8 |
| Lisp (CL) | 3 | 4 | 5 | 2 | 2 | 2 | 2 | 4 | 2 | 2.9 |

---

## Nyx Score Justification

### AI-Verifiability: 4 (target: 5) — upgraded 2026-06-10
- Have: gradual semantic type checker end-to-end (M-08 — annotations, fn boundaries,
  binops with trait mapping, method calls, generic inference, struct init, cross-module
  scanning, dyn Trait), bilingual messages, Levenshtein "did you mean", fast compiles.
- **Shipped 2026-06-10** (closed the gaps that justified the previous 3):
  `NYX_DIAG=json` machine-readable diagnostics (NDJSON, stable codes NYX1001–NYX1019,
  raw `suggestion` field), `line:column` in every error pointing at the ORIGINAL
  source file, one bytes-based string contract (`length()` = bytes, `char_length()` =
  codepoints — the silent-truncation footgun is gone by design), abortive `assert()`
  (exit 1 — failing suites can no longer look green).
- Missing for 5: real trait-bound validation (`T: Display` parses but isn't enforced,
  B8), suggested-fix payloads in diagnostics, multi-error recovery (the checker often
  stops at the first error), `nyx build` surfacing compile errors (today /dev/null).
- Reference points: Rust=5 (best-in-class diagnostics + `--message-format=json`),
  TypeScript=4 (rich checking, programmatic API), Go=4 (fast, clear, vet),
  JavaScript=1 (errors surface at runtime). Nyx's bet: this column is the one where a
  small self-hosted language can out-design incumbents — the checker and the diagnostics
  pipeline are ~3.7K lines of Nyx we fully control.

### Performance: 4 — upgraded 2026-07-15
- Compiles to native code via LLVM IR; **measured at parity or better than C (-O2) on all measured pure-compute core benchmarks** (primes 0.80x, fib ~1.02x, map ~1.0x, strings ~1.1x — fair measurement, one-time GC init excluded)
- First own optimization passes shipped and verified: string-literal interning (`nyx_intern_cstr`) + LICM (`compiler/licm.nx`)
- However: Boehm GC costs on mass allocation (~∞ vs C's optimized-away) + one-time init (~7.5ms); no SIMD/intrinsics; no evidence of real-world performance under load (product benchmarks pending re-measurement)

### Memory Safety: 3
- Boehm GC prevents simple memory leaks
- **Real borrow checker** (`compiler/borrow.nx`, `NYX_BORROW=off|warn|error`): SOUND use-after-free / double-free detection on manual memory (NYX1220/1221, flow-sensitive), move-checking of `#[affine]` types (NYX1230), dangling-ref detection via `return` (NYX1222) + inter-procedural lifetimes (NYX1223), `&mut` exclusivity (NYX1210/1211)
- `#[affine]` + `impl Drop` = deterministic RAII drop (once, at owner-frame exit); `Box<T>`/`Rc<T>`/`MoveOnly<T>` (`std/owned`) are **real affine types with enforcement**
- However: on normal GC code the borrow checker is an opt-in lint (the GC already guarantees no-UAF); lifetimes parse but full region inference is a subset of Rust's; `&mut` aliasing lowers to `T*` without `noalias`
- Better than C/Go, below Rust/Haskell (GC-backed by default, borrow checker is a subset)

### Expressiveness: 4
- Traits with static+dynamic dispatch, inheritance, default methods, associated types
- Exhaustive pattern matching with guards, OR, nested, literal patterns
- Returnable closures, lazy iterators, operator overloading, derive macros
- Generics (monomorphization), varargs, tuples, ADT enums
- Penalized for: 1-param generics broken, no shadowing, limited lambda capture

### Ecosystem: 2
- Single developer, no community
- Portable toolchain installable via `curl -sSf https://nyxlang.com/install.sh | sh` (installs to `~/.nyx/`)
- Package manager functional: `nyx init`, `nyx build`, `nyx run`, `nyx test` work from any directory
- 7 packages published as PM libraries (kv, serve, proxy, queue, db, edit, shell), each in its own repo; http2 absorbed into the core as `std/http2`
- Public CI, playground at nyxlang.com, VS Code extension
- Still: single developer, no external adoption, SPEC partially outdated

### Concurrency: 4
- M:N scheduler with REAL work-stealing (ucontext_t)
- Channels, mutex, WaitGroup, Semaphore, Once, AtomicCounter
- REAL epoll-based event loop
- **Real async** (v0.19): `await` runs a real stackful goroutine with cooperative join and `spawn { }` launches a detached goroutine on the M:N scheduler + epoll loop — real concurrency, no longer syntactic sugar (`await` of a float is gated, NYX1021, ABI hazard)
- However: `spawn` cannot directly capture outer-scope variables (closure-capture limitation)

### Native Full-Stack: 4
- 7 products as PM libraries (extracted to their own repos ~/nyx-*-stack): nyx-kv, nyx-serve, nyx-proxy, nyx-queue, nyx-db, nyx-edit, nyx-shell; http2 absorbed into the core (`std/http2`)
- 2 services running in production: gateway (HTTPS :443, SNI routing), nyxkv (RESP2 :6380 with TLS)
- Bilingual landing sites (repo ~/nyx-sites) consuming nyx-serve as a package
- Benchmarks documented: HTTP 73K req/s (multi-threaded), KV 6.76M SET ops/s / 21.57M GET ops/s
- Core benchmarks re-measured v0.20.1+LICM with fair measurement (one-time GC lazy-init excluded via warmup): primes 0.80x C (Nyx faster), fibonacci ~1.02x, map ~1.0x, strings ~1.1x — **parity or better on all measured compute benchmarks** (the historical "~11-18x strings" was mostly the GC-init artifact inside the timed region)
- Web playground live at nyxlang.com/playground; real wasm32-wasi browser target (extern "js", std/dom, std/browser)
- Remaining gap: no sandboxing; async/await is now real (stackful goroutines), browser target shipped

### Learning Curve: 3
- Familiar syntax (C/Rust-like)
- Incomplete and contradictory documentation
- Readable compiler errors (Rust-style)
- However: many subtleties (SharedEnv, inner fn vs lambda, .length vs .length())
- No tutorial, no community support; playground live at nyxlang.com/playground

### Self-hosting: 5
- Compiler written in itself with verified fixed-point
- 13 compiler modules, all self-compiled
- This is rare and notable — few languages achieve this so early

---

## Detailed Comparisons

---

### Nyx vs C (1972)

**Where Nyx is already better:**
- Automatic GC (Boehm) vs manual malloc/free
- Pattern matching, closures, traits, iterators — C has none of these
- Native String type vs char arrays
- try/catch vs manual errno checking
- ADT enums vs numeric enums

**Where Nyx is comparable:**
- Native code compilation via LLVM
- Direct C FFI (repr(C), extern)
- Inline assembly
- Self-hosting
- Unsafe mode for low-level work

**Where Nyx falls behind:**
- C has 50+ years of ecosystem, tooling, and accumulated knowledge
- C is everywhere: kernels, embedded, drivers, databases
- C performance is the industry benchmark
- Nyx has bugs in primitive types (u8, u16, char) that C handles flawlessly

**What's needed to surpass it:** Ecosystem (high), demonstrable benchmarks (medium), fix type bugs (low)

---

### Nyx vs C++ (1985)

**Where Nyx is already better:**
- Much cleaner syntax — C++ is notoriously complex
- Pattern matching, ADTs, returnable closures with capture
- Automatic GC vs manual RAII + smart pointers
- Cleaner trait system than virtual functions + templates

**Where Nyx is comparable:**
- Generics (monomorphization, similar to templates)
- Operator overloading
- Self-hosting

**Where Nyx falls behind:**
- C++ has STL, Boost, and thousands of libraries
- RAII/smart pointers are more efficient than GC
- C++ templates are Turing-complete (more powerful than Nyx generics)
- C++ has constexpr, concepts, C++20 modules
- Mature IDE support, debuggers, profilers

**What's needed to surpass it:** Ecosystem (high), real RAII or ownership (high), performance (medium)

---

### Nyx vs Rust (2015)

**Where Nyx is already better:**
- Learning curve — Nyx doesn't fight with the borrow checker
- More concise syntax for closures and pattern matching
- try/catch vs Result propagation (more familiar to most developers)
- Self-hosting with 555K codegen vs Rust needing LLVM + cranelift

**Where Nyx is comparable:**
- Traits (static+dynamic dispatch, inheritance, associated types)
- Exhaustive pattern matching
- ADT enums
- Compile-to-native via LLVM

**Where Nyx falls behind:**
- Rust's borrow checker enforces everything at compile time on all code; Nyx's is SOUND on manual memory (free-safety, affine move-checking) but an opt-in lint over GC code, and a subset (no full region/lifetime inference)
- Rust has full lifetime inference (NLL) — Nyx's regions are a subset (inter-procedural lifetimes are annotated, not fully inferred)
- Rust's ownership is pervasive; Nyx's `Box`/`Rc`/`MoveOnly` are real affine types now, but only where you opt into them (GC is the default)
- Rust has cargo (best package manager in the ecosystem)
- Rust's async ecosystem (tokio/async-std) is far larger, though Nyx now has real stackful async
- Massive ecosystem (crates.io: 150K+ crates)
- Rust's unsafe is auditable; Nyx has no verification

**What's needed to surpass it:** full lifetime inference + gating over GC code (high), ecosystem (very high). Nyx closed the "real borrow checker" and "real async" gaps in v0.19–v0.20; Rust is still the hardest competitor to surpass.

---

### Nyx vs Go (2009)

**Where Nyx is already better:**
- Generics with traits (Go only has generics since 1.18, more limited)
- Pattern matching, ADTs, operator overloading — Go has none
- Returnable closures with capture
- Derive macros, inline assembly

**Where Nyx is comparable:**
- Goroutines (M:N scheduler) — both have similar models
- Fast native compilation
- Automatic GC

**Where Nyx falls behind:**
- Go's goroutines + channels have been polished for 15 years
- Go has massive, stable stdlib (net/http, encoding/json, database/sql)
- Go has integrated, reliable go build, go test, go vet
- Trivial cross-compilation in Go
- Docker, Kubernetes, Terraform written in Go — production-proven ecosystem
- Nyx's async/await is fake; Go's goroutines are real

**What's needed to surpass it:** Real async (high), production-tested stdlib (high), ecosystem (very high)

---

### Nyx vs Java (1995)

**Where Nyx is already better:**
- Native compilation (no JVM needed)
- More concise syntax — Java is verbose
- Pattern matching, ADTs, closures, operator overloading
- Inline assembly, unsafe mode, direct FFI

**Where Nyx is comparable:**
- Automatic GC
- Traits (≈ Java interfaces)
- Self-hosting

**Where Nyx falls behind:**
- JVM is the world's most optimized runtime (JIT, generational GC, etc.)
- Maven/Gradle + thousands of libraries
- Java is used in billions of lines of production code
- Spring, Jakarta EE — real, proven full-stack
- Unbeatable IDE support (IntelliJ)
- Mature concurrency (virtual threads in Java 21)

**What's needed to surpass it:** Ecosystem (very high), optimizations (high), adoption (very high)

---

### Nyx vs Python (1991)

**Where Nyx is already better:**
- Native performance (100-1000x faster in pure computation)
- Static typing (gradual) vs dynamic
- More powerful pattern matching
- Real concurrency (M:N) vs Python's GIL

**Where Nyx is comparable:**
- General expressiveness
- try/catch
- Closures

**Where Nyx falls behind:**
- pip + PyPI: 500K+ packages
- NumPy, pandas, scikit-learn, TensorFlow — dominates ML/data science
- Django, Flask, FastAPI — mature web frameworks
- Mature interactive REPL
- Exhaustive documentation
- Minimal learning curve

**What's needed to surpass it:** Ecosystem (very high), documentation (high), ergonomics (medium)

---

### Nyx vs JavaScript (1995)

**Where Nyx is already better:**
- Static typing vs type chaos
- Native compilation vs interpreted/JIT
- Pattern matching, ADTs, traits
- Real concurrency vs single-threaded event loop

**Where Nyx is comparable:**
- Closures
- JSON handling

**Where Nyx falls behind:**
- npm: 2M+ packages
- Runs in all browsers
- Node.js dominates backend (Express, Fastify)
- React, Vue, Angular — dominates frontend
- Full-stack (Next.js, Remix) is reality, not aspiration
- Mature developer tools (Chrome DevTools, etc.)

**What's needed to surpass it:** Browser target (very high), ecosystem (very high), polished WASM (high)

---

### Nyx vs TypeScript (2012)

**Where Nyx is already better:**
- Native compilation (doesn't transpile to JS)
- Types enforced at runtime (TS erases types at compile time)
- Pattern matching, ADTs, traits with dispatch
- Real M:N concurrency

**Where Nyx is comparable:**
- Gradual type system
- Expressiveness

**Where Nyx falls behind:**
- Everything from JavaScript + sophisticated type system
- TypeScript has the best web ecosystem
- IDE support (VSCode + TS = perfect)
- Massive industry adoption

**What's needed to surpass it:** Web ecosystem (very high), IDE integration (high)

---

### Nyx vs Haskell (1990)

**Where Nyx is already better:**
- Much lower learning curve
- Mutability when you need it (var)
- More direct FFI, unsafe mode
- Self-hosting (GHC is enormous and complex)

**Where Nyx is comparable:**
- Pattern matching
- Traits ≈ Type classes
- ADTs

**Where Nyx falls behind:**
- Haskell's type system is the most powerful (real HKT, type families, GADTs)
- Purity + monads enable formal reasoning
- Lazy evaluation by default
- GHC optimizes aggressively
- Nyx's HKT/GATs are decorative; Haskell's are real

**What's needed to surpass it:** Real HKT/GATs (high), deeper type system (very high)

---

### Nyx vs Erlang/OTP (1986)

**Where Nyx is already better:**
- Native compilation (Erlang uses BEAM VM)
- Static type system (Erlang is dynamic)
- More conventional syntax
- Direct C FFI

**Where Nyx is comparable:**
- Concurrency (M:N scheduler, channels)
- Pattern matching
- Spawn + message passing

**Where Nyx falls behind:**
- OTP framework: 30+ years of supervisors, gen_servers, releases
- Hot code loading in production
- "Let it crash" philosophy proven in telecom
- BEAM VM: millions of lightweight processes without issue
- Transparent distribution
- WhatsApp, RabbitMQ, ejabberd — real production use

**What's needed to surpass it:** Supervisor trees (high), hot reload (very high), distribution (very high)

---

### Nyx vs Swift (2014)

**Where Nyx is already better:**
- Cross-platform native (Swift is Apple-first)
- More direct FFI (Swift-C bridge is complex)
- Inline assembly

**Where Nyx is comparable:**
- Pattern matching
- Closures
- Enums with data
- Traits ≈ Protocols
- LLVM compilation

**Where Nyx falls behind:**
- Swift has ARC (automatic reference counting, no GC)
- SwiftUI, UIKit — Apple ecosystem
- Structured concurrency (real async/await)
- IDE support (Xcode)
- Mature mobile ecosystem

**What's needed to surpass it:** ARC or ownership (high), ecosystem (high)

---

### Nyx vs Kotlin (2011)

**Where Nyx is already better:**
- Native compilation without JVM
- More powerful pattern matching
- Inline assembly, unsafe mode, direct FFI
- Self-hosting (Kotlin depends on external JVM/LLVM)

**Where Nyx is comparable:**
- General expressiveness
- Null safety (Option<T> ≈ nullable types)
- Extension functions ≈ impl methods

**Where Nyx falls behind:**
- Kotlin has full JVM ecosystem
- Kotlin Multiplatform: JVM, JS, Native
- Mature coroutines (real async)
- Jetpack Compose, Ktor, Spring Boot support
- IDE support (JetBrains = creators)
- Android first-class language

**What's needed to surpass it:** Real async (high), ecosystem (very high), multi-target (high)

---

### Nyx vs Zig (2016)

**Where Nyx is already better:**
- Expressiveness: traits, closures, pattern matching, ADTs
- Automatic GC (Zig has no GC or automatic memory management)
- Native String type
- try/catch vs manual error handling
- More complete stdlib (JSON, HTTP, WebSocket, SQLite)

**Where Nyx is comparable:**
- Native compilation via LLVM
- Self-hosting
- C FFI
- Low-level access (unsafe, pointers)

**Where Nyx falls behind:**
- Zig has comptime (compile-time execution): more powerful than macros
- Zig is a real C replacement: used in production (Bun runtime)
- Trivial cross-compilation
- No GC overhead
- Allocator-aware: total memory control

**What's needed to surpass it:** More mature no-GC mode (medium), comptime-like features (high)

---

### Nyx vs COBOL (1959)

**Where Nyx is already better:**
- Everything except legacy banking support
- Expressiveness, types, concurrency, web, FFI
- Modern syntax vs verbose/archaic COBOL

**Where Nyx is comparable:**
- Both can process structured data
- Nothing else is comparable

**Where Nyx falls behind:**
- COBOL runs trillions of dollars in daily banking transactions
- 220 billion lines in production
- Replacing COBOL is a decades-long project

**What's needed to surpass it:** Nyx is already technically superior. The issue is adoption and institutional inertia.

---

### Nyx vs Lisp/Common Lisp (1958)

**Where Nyx is already better:**
- Conventional syntax (no S-expressions)
- Consistent native compilation
- Static type system
- Native pattern matching, traits, ADT enums

**Where Nyx is comparable:**
- Macros (Nyx has declarative macros; Lisp has more powerful macros)
- Interactive REPL
- Closures

**Where Nyx falls behind:**
- Lisp homoiconicity: code = data (infinitely more powerful macros)
- CLOS (Common Lisp Object System): multi-dispatch
- Lisp condition system > try/catch
- Interactivity (SLIME/Sly): modify running code
- Lisp macros can completely transform the language

**What's needed to surpass it:** More powerful macros (high), metaprogramming (high)

---

## Summary: Nyx's Position in the Ecosystem

### Unique strengths:
1. **Self-hosting with fixed-point** — rare for such a young language
2. **Feature breadth** — covers from inline asm to JSON/HTTP/WebSocket
3. **Native compilation** with high expressiveness (traits + ADTs + closures + iterators)
4. **Full-stack ambition** — no other compiled language attempts to cover proxy→backend→frontend→DB→playground

### Honest weaknesses:
1. **Minimal ecosystem** — this is still problem #1 (single developer, no external adoption)
2. **Borrow checker is a subset** — SOUND on manual memory (free-safety, affine move-checking) but opt-in over GC code and without full lifetime/region inference (not Rust-level)
3. **Bugs in primitives** — some remain in the long tail (u8/u16/char edge cases, nested structs); the `.length`/bytes contract and implicit monomorphization are resolved
4. **SPEC partially outdated** — inconsistent documentation vs the shipped compiler
5. **One-time GC init + mass allocation** — with fair measurement (GC lazy-init warmup) compute is at parity with C across the board (strings ~1.1x after literal interning + LICM); the remaining structural GC costs are the one-time Boehm init (~7.5ms) and mass allocation (bench-04). Product benchmarks (HTTP/KV) still pending re-measurement in their stacks
6. **No sandboxing** — the wasm32-wasi browser target shipped (extern "js", std/dom, std/browser), but there's no execution sandbox

### Where Nyx can win:
- **Educational niche**: language that shows how a complete compiler works
- **Full-stack prototyping**: if pieces are integrated and tested
- **Systems with expressiveness**: between Go (simple but limited) and Rust (powerful but hard)
- **Self-hosting showcase**: impressive technical demonstration

### What's needed for v1.0.0:
1. Fix remaining primitive bugs (u8/u16/char edge cases, nested structs); `.length`/bytes contract, generics monomorphization and real async are done
2. Consistent and complete documentation (SPEC vs shipped compiler)
3. Borrow checker: full lifetime inference + gating over GC code (currently a sound subset, opt-in lint)
4. External adoption (community, public users, Stripe/dashboard)
5. Tier enforcement (Pro/Enterprise features gated)
