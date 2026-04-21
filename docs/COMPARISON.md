# Nyx v0.13.0 — Language Comparison

> Honest comparison. Last updated: 2026-04-13 (post-v0.13 refactor). Original audit: 2026-03-24.
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

---

## Global Scores

| Language | Perf. | Mem.Saf. | Express. | Ecosys. | Concurr. | Full-Stack | Learn. | Self-host | **Avg** |
|----------|-------|----------|----------|---------|----------|------------|--------|-----------|---------|
| **Nyx** | **3** | **2** | **4** | **2** | **3** | **4** | **3** | **5** | **3.3** |
| C | 5 | 1 | 2 | 4 | 2 | 2 | 2 | 5 | 2.9 |
| C++ | 5 | 2 | 4 | 5 | 3 | 2 | 1 | 5 | 3.4 |
| Rust | 5 | 5 | 5 | 4 | 5 | 2 | 1 | 5 | 4.0 |
| Go | 4 | 3 | 3 | 4 | 5 | 3 | 5 | 5 | 4.0 |
| Java | 4 | 4 | 3 | 5 | 4 | 4 | 3 | 5 | 4.0 |
| Python | 2 | 4 | 4 | 5 | 2 | 3 | 5 | 3 | 3.5 |
| JavaScript | 3 | 3 | 3 | 5 | 3 | 5 | 4 | 2 | 3.5 |
| TypeScript | 3 | 3 | 4 | 5 | 3 | 5 | 4 | 2 | 3.6 |
| Haskell | 4 | 5 | 5 | 3 | 4 | 1 | 1 | 5 | 3.5 |
| Erlang | 3 | 4 | 3 | 3 | 5 | 2 | 2 | 4 | 3.3 |
| Swift | 4 | 4 | 4 | 3 | 4 | 2 | 3 | 5 | 3.6 |
| Kotlin | 4 | 4 | 4 | 4 | 4 | 3 | 4 | 3 | 3.8 |
| Zig | 5 | 3 | 3 | 2 | 3 | 1 | 2 | 5 | 3.0 |
| COBOL | 2 | 3 | 1 | 2 | 1 | 1 | 3 | 2 | 1.9 |
| Lisp (CL) | 3 | 4 | 5 | 2 | 2 | 2 | 2 | 4 | 3.0 |

---

## Nyx Score Justification

### Performance: 3
- Compiles to native code via LLVM IR — theoretical performance comparable to C/Rust
- However: no benchmarks exist, optimization passes not verified, Boehm GC adds overhead
- No evidence of real-world performance under load

### Memory Safety: 2
- Boehm GC prevents simple memory leaks
- However: no borrow checker, lifetimes are decorative, &T/&mut T are pointer aliases, Box/Rc have no enforcement
- Unsafe blocks exist with no correctness verification
- Better than C (has GC), worse than everything else

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
- 8 packages published as PM libraries (kv, serve, proxy, queue, db, http2, edit, shell)
- Public CI, playground at nyxlang.com, VS Code extension
- Still: single developer, no external adoption, SPEC partially outdated

### Concurrency: 3
- M:N scheduler with REAL work-stealing (ucontext_t)
- Channels, mutex, WaitGroup, Semaphore, Once, AtomicCounter
- REAL epoll-based event loop
- However: async/await is syntactic rewrite (not real parallelism)
- spawn cannot directly capture outer scope variables

### Native Full-Stack: 4
- 8 products as PM libraries: nyx-kv, nyx-serve, nyx-proxy, nyx-queue, nyx-db, nyx-http2, nyx-edit, nyx-shell
- 2 services running in production: gateway (HTTPS :443, SNI routing), nyxkv (RESP2 :6380 with TLS)
- 4 bilingual landing sites (sites/*.com/) consuming nyx-serve as a package
- Benchmarks documented: HTTP 73K req/s (multi-threaded), KV 6.76M SET ops/s / 21.57M GET ops/s
- fibonacci(40) at 0.87x C (Nyx outperforms C on pure computation)
- Web playground live at nyxlang.com/playground
- Remaining gap: no browser target, no sandboxing, async/await is syntactic (not real parallelism)

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
- Rust has a **real borrow checker** — Nyx doesn't
- Rust has enforced lifetimes — Nyx's are decorative
- Rust has real ownership — Nyx's Box/Rc are Array wrappers
- Rust has cargo (best package manager in the ecosystem)
- Rust has real async with tokio/async-std
- Massive ecosystem (crates.io: 150K+ crates)
- Rust's unsafe is auditable; Nyx has no verification

**What's needed to surpass it:** Real borrow checker (very high), ecosystem (very high), real async (high). Rust is probably the hardest competitor to surpass.

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
2. **Memory safety** not enforced (lifetimes/borrow checking are decorative)
3. **Bugs in primitives** (u8, u16, char, .length, 1-param generics, nested structs)
4. **Fake async/await** — unfulfilled promise
5. **Inconsistent documentation** — SPEC partially outdated
6. **No browser target** — WASM exists but no full browser integration

### Where Nyx can win:
- **Educational niche**: language that shows how a complete compiler works
- **Full-stack prototyping**: if pieces are integrated and tested
- **Systems with expressiveness**: between Go (simple but limited) and Rust (powerful but hard)
- **Self-hosting showcase**: impressive technical demonstration

### What's needed for v1.0.0:
1. Fix critical bugs (types, .length, generics, nested structs)
2. Consistent and complete documentation
3. Real async/await or honestly document it's syntactic
4. External adoption (community, public users, Stripe/dashboard)
5. Tier enforcement (Pro/Enterprise features gated)
