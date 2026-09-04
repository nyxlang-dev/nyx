# Nyx — Comparativa con Otros Lenguajes

> Comparativa honesta. **La versión NORMATIVA es [COMPARISON.md](COMPARISON.md) (inglés)** —
> esta traducción se sincroniza a mano y puede atrasarse en la prosa.
> Sync: 2026-08-30.
> Última actualización de fondo: 2026-07-15 en la normativa (Seguridad de memoria 2→3 por el
> borrow checker; Concurrencia 3→4 por async real v0.19-v0.20; Rendimiento 3→4 por paridad
> de cómputo con C bajo medición justa + internado + LICM). Auditoría original: 2026-03-24.
> Scoring 1-5: 1=inexistente, 2=básico, 3=funcional, 4=bueno, 5=excelente/líder.
> Los scores de Nyx están basados en features **verificadas compilando y ejecutando**, no en documentación.

---

## Dimensiones

| Dimensión | Qué mide |
|-----------|----------|
| **Rendimiento** | Velocidad de ejecución, optimización, overhead |
| **Seguridad de memoria** | Prevención de use-after-free, buffer overflow, data races |
| **Expresividad** | Poder del sistema de tipos, abstracciones, ergonomía |
| **Ecosistema** | Librerías, comunidad, herramientas, documentación |
| **Concurrencia** | Modelo de concurrencia, facilidad, rendimiento |
| **Full-Stack nativo** | Capacidad de cubrir proxy/backend/frontend/DB/playground |
| **Curva de aprendizaje** | Facilidad para ser productivo rápidamente |
| **Self-hosting** | Capacidad de compilarse a sí mismo |
| **AI-Verificabilidad** | Qué tan completamente detecta el compilador errores generados por IA y qué tan mecánicamente puede una IA consumir sus diagnósticos (errores estructurados, posición en fuente, sugerencias de fix, feedback rápido) |

---

## Scores Globales

| Lenguaje | Rend. | Seg.Mem. | Express. | Ecosist. | Concurr. | Full-Stack | Curva | Self-host | AI-Verif. | **Media** |
|----------|-------|----------|----------|----------|----------|------------|-------|-----------|-----------|-----------|
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

## Justificación de Scores de Nyx

### AI-Verificabilidad: 4 (objetivo: 5) — actualizado 2026-06-13
- **Disponible**: type checker semántico gradual end-to-end (M-08 — anotaciones, límites de función,
  binops con mapeo de traits, llamadas a métodos, inferencia genérica, inicialización de structs,
  escaneo cross-module, validación de `dyn Trait`), mensajes bilingües, Levenshtein "did you mean?",
  compilaciones rápidas.
- **Entregado en v0.14.0** (cerró los gaps que justificaban el 3 anterior):
  `NYX_DIAG=json` con diagnósticos machine-readable (NDJSON, códigos estables NYX1001–NYX1019,
  campo `suggestion` crudo), `line:column` en cada error apuntando al archivo fuente ORIGINAL,
  contrato unificado de bytes en strings (`length()` = bytes, `char_length()` = codepoints —
  el footgun de truncación silenciosa eliminado por diseño), `assert()` abortivo (exit 1 —
  suites fallidas ya no pueden verse verdes).
- **En v0.16.0**: monomorfización implícita (`id(42)` sin turbofish compila y corre), parser
  robusto con budget de 20 errores + recovery entre statements (nunca se cuelga),
  códigos NYX0101–NYX0105 para errores de parse en `NYX_DIAG=json`.
- **Falta para 5**: suggested-fix payloads en diagnósticos, turbofish en llamadas a métodos.
- **Puntos de referencia**: Rust=5 (diagnósticos best-in-class + `--message-format=json`),
  TypeScript=4 (verificación rica, API programática), Go=4 (rápido, claro, vet),
  JavaScript=1 (errores emergen en runtime). La apuesta de Nyx: esta columna es donde un
  lenguaje self-hosted pequeño puede superar a los incumbentes — el checker y el pipeline de
  diagnósticos son ~3.7K líneas de Nyx que controlamos completamente.

### Rendimiento: 4 — subido 2026-07-15 (normativa)
- Compila a código nativo vía LLVM IR; **medido en paridad o mejor que C (-O2) en todos los
  benchmarks de cómputo puro medidos** (primes 0.80x, fib ~1.02x, map ~1.0x, strings ~1.1x —
  medición justa, init one-time del GC excluido)
- Primeros optimization passes propios shippeados y verificados: interning de string literals
  (`nyx_intern_cstr`) + LICM (`compiler/licm.nx`)
- Sin embargo: GC Boehm cuesta en allocación masiva (~∞ vs C optimizado) + init one-time
  (~7.5ms); sin SIMD/intrinsics; sin evidencia de rendimiento real bajo carga (re-medición de
  benchmarks de producto pendiente)

### Seguridad de memoria: 3 — subido 2026-07 (borrow checker)
- GC Boehm previene memory leaks simples
- **Borrow checker real** (`compiler/borrow.nx`, `NYX_BORROW=off|warn|error`): detección SOUND
  de use-after-free/double-free sobre memoria manual (NYX1220/1221, flow-sensitive), move-checking
  de tipos `#[affine]` (NYX1230), detección de dangling-refs vía `return` (NYX1222) + lifetimes
  inter-procedurales (NYX1223), exclusividad de `&mut` (NYX1210/1211)
- `#[affine]` + `impl Drop` = drop RAII determinista (una vez, al salir del frame dueño);
  `Box<T>`/`Rc<T>`/`MoveOnly<T>` (`std/owned`) son **tipos afines reales con enforcement**
- Sin embargo: sobre código GC normal el borrow checker es un lint opt-in (el GC ya garantiza
  no-UAF); los lifetimes se parsean pero la inferencia de regiones completa es un subconjunto
  de la de Rust; el aliasing de `&mut` baja a `T*` sin `noalias`
- Mejor que C/Go, por debajo de Rust/Haskell (GC por defecto, borrow checker es un subconjunto)

### Expresividad: 4
- Traits con dispatch estático+dinámico, inheritance, default methods, associated types
- Pattern matching exhaustivo con guards, OR, nested, literals
- Closures retornables, iteradores lazy, operator overloading, derive macros
- Generics (monomorphization), varargs, tuples, enums ADT
- Monomorfización implícita: `id(42)` sin turbofish desde v0.16.0
- Penalizado por: lambda capture limitada, turbofish en métodos no implementado

### Ecosistema: 2
- Un solo desarrollador, sin comunidad
- Toolchain portable instalable via `curl -sSf https://nyxlang.com/install.sh | sh` (se instala en `~/.nyx/`)
- Package manager funcional: `nyx init`, `nyx build`, `nyx run`, `nyx test` funcionan desde cualquier directorio
- 8 paquetes publicados como librerías PM (kv, serve, proxy, queue, db, http2, edit, shell)
- CI público, playground en nyxlang.com, VS Code extension
- Todavía: un solo desarrollador, sin adopción externa, SPEC parcialmente desactualizado

### Concurrencia: 4 — subido 2026-07 (async real)
- M:N scheduler con work-stealing REAL (ucontext_t)
- Channels, mutex, WaitGroup, Semaphore, Once, AtomicCounter
- Event loop epoll REAL
- **Async real** (v0.19): `await` corre una goroutine stackful real con join cooperativo y
  `spawn { }` lanza una goroutine detached sobre el scheduler M:N + event loop epoll —
  concurrencia real, ya no azúcar sintáctica (`await` de un float está gateado, NYX1021,
  hazard de ABI)
- Sin embargo: `spawn` no puede capturar variables del scope externo directamente
  (limitación de closure-capture)

### Full-Stack nativo: 4
- 8 productos como librerías PM: nyx-kv, nyx-serve, nyx-proxy, nyx-queue, nyx-db, nyx-http2, nyx-edit, nyx-shell
- 2 servicios en producción: gateway (HTTPS :443, routing SNI), nyxkv (RESP2 :6380 con TLS)
- 4 landing sites bilingues (sites/*.com/) consumiendo nyx-serve como paquete
- Benchmarks documentados: HTTP 73K req/s (multi-threaded), KV 6.76M SET ops/s / 21.57M GET ops/s
- fibonacci(40) a 0.87x C (Nyx supera a C en cómputo puro)
- Web playground vivo en nyxlang.com/playground
- Gap restante: sin browser target, sin sandboxing, async/await es sintáctico (no paralelismo real)

### Curva de aprendizaje: 3
- Sintaxis familiar (C/Rust-like)
- Documentación incompleta y contradictoria
- Errores del compilador legibles (estilo Rust)
- Pero: muchas sutilezas (SharedEnv, inner fn vs lambda, .length vs .length())
- Sin tutorial, sin community support; playground disponible en nyxlang.com/playground

### Self-hosting: 5
- Compilador escrito en sí mismo con fixed-point verificado
- 13 módulos del compilador, todos auto-compilados
- Esto es raro y notable — pocos lenguajes lo logran tan temprano

---

## Comparativas Detalladas

---

### Nyx vs C (1972)

**Dónde Nyx ya es mejor:**
- GC automático (Boehm) vs malloc/free manual
- Pattern matching, closures, traits, iteradores — C no tiene nada de esto
- Strings como tipo nativo vs char arrays
- try/catch vs errno checking manual
- Enums con datos (ADTs) vs enums numéricos

**Dónde Nyx es comparable:**
- Compilación a código nativo via LLVM
- FFI con C directo (repr(C), extern)
- Inline assembly
- Self-hosting
- Unsafe mode para low-level

**Dónde Nyx está por detrás:**
- C tiene 50+ años de ecosistema, tooling, y conocimiento acumulado
- C está en todo: kernels, embedded, drivers, bases de datos
- Rendimiento de C es benchmark de la industria
- Nyx tiene bugs en tipos primitivos (u8, u16, char) que C maneja perfectamente

**Qué se necesita para superarlo:** Ecosistema (alto), benchmarks demostrables (medio), fix bugs de tipos (bajo)

---

### Nyx vs C++ (1985)

**Dónde Nyx ya es mejor:**
- Sintaxis mucho más limpia — C++ es notoriamente complejo
- Pattern matching, ADTs, closures retornables con captura
- GC automático vs RAII + smart pointers manuales
- Trait system más limpio que virtual functions + templates

**Dónde Nyx es comparable:**
- Generics (monomorphization, similar a templates)
- Operator overloading
- Self-hosting

**Dónde Nyx está por detrás:**
- C++ tiene STL, Boost, y miles de librerías
- RAII/smart pointers son más eficientes que GC
- Templates de C++ son Turing-complete (más poderosas que generics de Nyx)
- C++ tiene constexpr, concepts, módulos C++20
- IDE support, debuggers, profilers maduros

**Qué se necesita para superarlo:** Ecosistema (alto), RAII real o ownership (alto), performance (medio)

---

### Nyx vs Rust (2015)

**Dónde Nyx ya es mejor:**
- Curva de aprendizaje — Nyx no pelea con el borrow checker
- Sintaxis más concisa para closures y pattern matching
- try/catch vs Result propagation (más familiar para la mayoría)
- Self-hosting con 555K de codegen vs Rust que necesitó LLVM + cranelift

**Dónde Nyx es comparable:**
- Traits (dispatch estático+dinámico, inheritance, associated types)
- Pattern matching exhaustivo
- Enums ADT
- Compile-to-native via LLVM

**Dónde Nyx está por detrás:**
- Rust tiene **borrow checker real** — Nyx no
- Rust tiene lifetimes enforced — Nyx son decorativos
- Rust tiene ownership real — Box/Rc de Nyx son wrappers Array
- Rust tiene cargo (el mejor package manager del ecosistema)
- Rust tiene async real con tokio/async-std
- Ecosystem inmenso (crates.io: 150K+ crates)
- Unsafe de Rust es auditable; en Nyx no hay verificación

**Qué se necesita para superarlo:** Borrow checker real (muy alto), ecosystem (muy alto), async real (alto). Rust es probablemente el competidor más difícil de superar.

---

### Nyx vs Go (2009)

**Dónde Nyx ya es mejor:**
- Generics con traits (Go recién tiene generics desde 1.18, más limitados)
- Pattern matching, ADTs, operator overloading — Go no tiene
- Closures retornables con captura
- Derive macros, inline assembly

**Dónde Nyx es comparable:**
- Goroutines (M:N scheduler) — ambos tienen modelos similares
- Compilación rápida a nativo
- GC automático

**Dónde Nyx está por detrás:**
- Go tiene goroutines + channels pulidos por 15 años
- Go tiene stdlib masiva y estable (net/http, encoding/json, database/sql)
- Go tiene go build, go test, go vet integrados y confiables
- Cross-compilation trivial en Go
- Docker, Kubernetes, Terraform escritos en Go — ecosistema probado en producción
- async/await de Nyx es falso; goroutines de Go son reales

**Qué se necesita para superarlo:** async real (alto), stdlib probada en producción (alto), ecosystem (muy alto)

---

### Nyx vs Java (1995)

**Dónde Nyx ya es mejor:**
- Compilación nativa (no necesita JVM)
- Sintaxis más concisa — Java es verbose
- Pattern matching, ADTs, closures, operator overloading
- Inline assembly, unsafe mode, FFI directo

**Dónde Nyx es comparable:**
- GC automático
- Traits (≈ interfaces de Java)
- Self-hosting

**Dónde Nyx está por detrás:**
- JVM es el runtime más optimizado del mundo (JIT, GC generacional, etc.)
- Maven/Gradle + miles de librerías
- Java es usado por billones de líneas de código en producción
- Spring, Jakarta EE — full-stack real y probado
- IDE support (IntelliJ) es insuperable
- Java tiene concurrencia madura (virtual threads en Java 21)

**Qué se necesita para superarlo:** Ecosystem (muy alto), optimizaciones (alto), adopción (muy alto)

---

### Nyx vs Python (1991)

**Dónde Nyx ya es mejor:**
- Rendimiento nativo (100-1000x más rápido en cómputo puro)
- Tipado estático (gradual) vs dinámico
- Pattern matching más poderoso
- Concurrencia real (M:N) vs GIL de Python

**Dónde Nyx es comparable:**
- Expresividad general
- try/catch
- Closures

**Dónde Nyx está por detrás:**
- pip + PyPI: 500K+ paquetes
- NumPy, pandas, scikit-learn, TensorFlow — domina ML/data science
- Django, Flask, FastAPI — web frameworks maduros
- REPL interactivo maduro
- Documentación exhaustiva
- Curva de aprendizaje mínima de Python

**Qué se necesita para superarlo:** Ecosystem (muy alto), documentación (alto), ergonomía (medio)

---

### Nyx vs JavaScript (1995)

**Dónde Nyx ya es mejor:**
- Tipado estático vs caos de tipos
- Compilación nativa vs interpretado/JIT
- Pattern matching, ADTs, traits
- Concurrencia real vs event loop single-threaded

**Dónde Nyx es comparable:**
- Closures
- JSON handling

**Dónde Nyx está por detrás:**
- npm: 2M+ paquetes
- Corre en todos los browsers
- Node.js domina backend (Express, Fastify)
- React, Vue, Angular — domina frontend
- Full-stack (Next.js, Remix) es realidad, no aspiración
- Developer tools maduros (Chrome DevTools, etc.)

**Qué se necesita para superarlo:** Browser target (muy alto), ecosystem (muy alto), WASM polished (alto)

---

### Nyx vs TypeScript (2012)

**Dónde Nyx ya es mejor:**
- Compilación nativa (no transpila a JS)
- Tipos enforced en runtime (TS borra tipos en compilación)
- Pattern matching, ADTs, traits con dispatch
- Concurrencia M:N real

**Dónde Nyx es comparable:**
- Sistema de tipos gradual
- Expresividad

**Dónde Nyx está por detrás:**
- Todo lo de JavaScript + sistema de tipos sofisticado
- TypeScript tiene el mejor ecosystem web
- IDE support (VSCode + TS = perfecto)
- Adopción masiva en la industria

**Qué se necesita para superarlo:** Ecosystem web (muy alto), IDE integration (alto)

---

### Nyx vs Haskell (1990)

**Dónde Nyx ya es mejor:**
- Curva de aprendizaje mucho menor
- Mutabilidad cuando la necesitas (var)
- FFI más directo, unsafe mode
- Self-hosting (GHC es enorme y complejo)

**Dónde Nyx es comparable:**
- Pattern matching
- Traits ≈ Type classes
- ADTs

**Dónde Nyx está por detrás:**
- Sistema de tipos de Haskell es el más poderoso (HKT real, type families, GADTs)
- Pureza + monads permiten razonamiento formal
- Lazy evaluation como default
- GHC optimiza agresivamente
- HKT/GATs de Nyx son decorativos; los de Haskell son reales

**Qué se necesita para superarlo:** HKT/GATs reales (alto), type system más profundo (muy alto)

---

### Nyx vs Erlang/OTP (1986)

**Dónde Nyx ya es mejor:**
- Compilación nativa (Erlang usa BEAM VM)
- Sistema de tipos estático (Erlang es dinámico)
- Sintaxis más convencional
- FFI directo con C

**Dónde Nyx es comparable:**
- Concurrencia (M:N scheduler, channels)
- Pattern matching
- Spawn + message passing

**Dónde Nyx está por detrás:**
- OTP framework: 30+ años de supervisors, gen_servers, releases
- Hot code loading en producción
- "Let it crash" philosophy probada en telecom
- BEAM VM: millones de procesos livianos sin problema
- Distribuido de forma transparente
- WhatsApp, RabbitMQ, ejabberd — producción real

**Qué se necesita para superarlo:** Supervisor trees (alto), hot reload (muy alto), distribución (muy alto)

---

### Nyx vs Swift (2014)

**Dónde Nyx ya es mejor:**
- Cross-platform nativo (Swift es Apple-first)
- FFI más directo (Swift-C bridge es complejo)
- Inline assembly

**Dónde Nyx es comparable:**
- Pattern matching
- Closures
- Enums con datos
- Traits ≈ Protocols
- Compilación LLVM

**Dónde Nyx está por detrás:**
- Swift tiene ARC (reference counting automático, sin GC)
- SwiftUI, UIKit — ecosistema Apple
- Structured concurrency (async/await real)
- IDE support (Xcode)
- Ecosystem maduro para mobile

**Qué se necesita para superarlo:** ARC o ownership (alto), ecosystem (alto)

---

### Nyx vs Kotlin (2011)

**Dónde Nyx ya es mejor:**
- Compilación nativa sin JVM
- Pattern matching más poderoso
- Inline assembly, unsafe mode, FFI directo
- Self-hosting (Kotlin depende de JVM/LLVM externo)

**Dónde Nyx es comparable:**
- Expresividad general
- Null safety (Option<T> ≈ nullable types)
- Extension functions ≈ impl methods

**Dónde Nyx está por detrás:**
- Kotlin tiene JVM ecosystem completo
- Kotlin Multiplatform: JVM, JS, Native
- Coroutines maduras (async real)
- Jetpack Compose, Ktor, Spring Boot support
- IDE support (JetBrains = creadores)
- Android first-class language

**Qué se necesita para superarlo:** Async real (alto), ecosystem (muy alto), multi-target (alto)

---

### Nyx vs Zig (2016)

**Dónde Nyx ya es mejor:**
- Expresividad: traits, closures, pattern matching, ADTs
- GC automático (Zig no tiene GC ni manejo automático)
- Strings como tipo nativo
- try/catch vs error handling manual
- Stdlib más completa (JSON, HTTP, WebSocket, SQLite)

**Dónde Nyx es comparable:**
- Compilación a nativo via LLVM
- Self-hosting
- FFI con C
- Low-level access (unsafe, pointers)

**Dónde Nyx está por detrás:**
- Zig tiene comptime (compile-time execution): más poderoso que macros
- Zig es un C replacement real: usado en producción (Bun runtime)
- Cross-compilation trivial
- Sin overhead de GC
- Allocator-aware: control total de memoria

**Qué se necesita para superarlo:** No-GC mode más maduro (medio), comptime-like (alto)

---

### Nyx vs COBOL (1959)

**Dónde Nyx ya es mejor:**
- Todo excepto legacy banking support
- Expresividad, tipos, concurrencia, web, FFI
- Sintaxis moderna vs COBOL verbose/arcaico

**Dónde Nyx es comparable:**
- Ambos pueden procesar datos estructurados
- Nada más es comparable

**Dónde Nyx está por detrás:**
- COBOL corre trillones de dólares en transacciones bancarias diarias
- 220 billones de líneas en producción
- Reemplazar COBOL es un proyecto de décadas

**Qué se necesita para superarlo:** Nyx ya es técnicamente superior. El problema es adopción e inercia institucional.

---

### Nyx vs Lisp/Common Lisp (1958)

**Dónde Nyx ya es mejor:**
- Sintaxis convencional (no S-expressions)
- Compilación nativa consistente
- Sistema de tipos estático
- Pattern matching nativo, traits, enums ADT

**Dónde Nyx es comparable:**
- Macros (Nyx tiene macros declarativas; Lisp tiene macros más poderosas)
- REPL interactivo
- Closures

**Dónde Nyx está por detrás:**
- Homoiconicity de Lisp: código = datos (macros infinitamente más poderosas)
- CLOS (Common Lisp Object System): multi-dispatch
- Lisp condition system > try/catch
- Interactividad (SLIME/Sly): modificar código en caliente
- Macros de Lisp pueden transformar el lenguaje completamente

**Qué se necesita para superarlo:** Macros más poderosas (alto), metaprogramación (alto)

---

## Resumen: Posición de Nyx en el Ecosistema

### Fortalezas únicas de Nyx:
1. **Self-hosting con fixed-point** — raro para un lenguaje tan joven
2. **Amplitud de features** — cubre desde inline asm hasta JSON/HTTP/WebSocket
3. **Compilación nativa** con expresividad alta (traits + ADTs + closures + iteradores)
4. **Ambición full-stack** — ningún otro lenguaje compilado intenta cubrir proxy→backend→frontend→DB→playground

### Debilidades honestas:
1. **Ecosistema mínimo** — sigue siendo el problema #1 (un solo desarrollador, sin adopción externa)
2. **Seguridad de memoria** no enforced (lifetimes/borrow checking decorativos)
3. **async/await falso** — promesa no cumplida (es reescritura sintáctica)
4. **Sin browser target** — WASM existe pero sin integración browser completa
5. **Turbofish en métodos** — no implementado (genéricos implícitos funcionan en llamadas de función, no en métodos)

### ¿Dónde puede ganar Nyx?
- **Nicho educativo**: lenguaje que muestra cómo funciona un compilador completo
- **Prototipado full-stack**: si las piezas se integran y prueban
- **Sistemas con expresividad**: entre Go (simple pero limitado) y Rust (poderoso pero difícil)
- **Self-hosting showcase**: demostración técnica impresionante

### ¿Qué falta para v1.0.0?
1. Fix bugs críticos (tipos, .length, generics, nested structs)
2. Documentación consistente y completa
3. async/await real o documentar honestamente que es sintáctico
4. Adopción externa (comunidad, usuarios reales, Stripe/dashboard)
5. Enforcement de tiers (features Pro/Enterprise con gate real)
