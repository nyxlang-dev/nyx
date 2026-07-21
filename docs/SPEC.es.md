# Especificación del Lenguaje Nyx v0.16.2 — Resumen en Castellano

> **Traducción parcial — la referencia normativa es [SPEC.md](SPEC.md).**
> Este documento es un puntero útil para hispanohablantes: incluye el índice
> traducido al castellano y las secciones introductorias clave. Para el
> texto completo con ejemplos de código, consúltese SPEC.md (inglés).
>
> Última actualización: 2026-06-30 (v0.16.2).

---

## Qué es Nyx

Nyx es un lenguaje de programación multiparadigma con tipado gradual que
compila a código nativo vía LLVM. El compilador está escrito en Nyx y se
compila a sí mismo — **self-hosting con fixed point verificado**.

**Versión**: v0.16.2 (pre-release). 347 tests del compilador (229 regression
ARM64 + 30 avanzados + 69 tests de errores parse+semánticos + 16 happy-path
de tipos M-08 + 3 stdlib; test-56 contado en ambos runners). Type checker
semántico activo end-to-end (M-08 completo: bounds de trait, payloads de enum
variant, multi-error recovery). Monomorfización implícita (genéricos sin
turbofish).

---

## Filosofía y diseño

Nyx toma lo mejor de C, Rust, Go, Python, Haskell y Erlang, con estas
prioridades:

- **Corrección antes que velocidad** — no se sacrifica corrección por rendimiento.
- **Tipado gradual** — las anotaciones de tipo son opcionales; el type checker
  infiere y verifica progresivamente. El código puede crecer de scripts rápidos
  a sistemas tipados estrictamente sin reescribirse.
- **Self-hosting** — el compilador se compila a sí mismo; esto valida que el
  lenguaje es suficientemente expresivo para software de sistemas no trivial.
- **Full-stack nativo** — un solo lenguaje cubre proxy inverso, backend,
  frontend, base de datos y playground, compilando a binarios nativos.
- **AI-first** — diagnósticos estructurados (`NYX_DIAG=json`), códigos de error
  estables (NYX0101–NYX0105 en parse, NYX1001–NYX1020 en semántica), mensajes
  bilingües (inglés/castellano vía `NYX_LANG`), sugerencias "did you mean?" con
  Levenshtein, y posición de fuente exacta (`line:column`) — diseñado para que
  asistentes AI consuman y reporten errores mecánicamente.

---

## Índice de SPEC.md (traducido al castellano)

Las anclas de los títulos corresponden a las secciones en SPEC.md.

| Sección en SPEC.md | Tema |
|--------------------|------|
| Comentarios | Comentarios de línea y bloque |
| Tipos de Datos | `int`, `float`, `bool`, `char`, `String`, `void` |
| Variables | `let` (inmutable), `var` (mutable) |
| Type Aliases | `type Score = int` |
| Operadores | Aritméticos, comparación, lógicos, bitwise, asignación compuesta |
| Control de Flujo | `if`/`else`, `while`, `for`, `match`, `break`, `continue` |
| Funciones | Declaración, retorno, recursión |
| Varargs Tipados | `fn f(args: ...int)` |
| First-Class Functions | Funciones como valores |
| Closures | Closures con captura de entorno, retornables |
| Arrays | Arrays dinámicos tipados |
| Strings | API de strings (contrato bytes — ver abajo) |
| Multiline y Raw Strings | Strings multilínea y crudas |
| Tuples | Tuplas `(a, b, c)` |
| Hash Maps | `Map<K, V>`, map literals `{"k": v}` |
| Structs | Definición, inicialización, fields |
| Enums y Pattern Matching | ADTs, match exhaustivo, guards, OR patterns |
| Generic Enums | `Option<T>`, `Result<T, E>`, enums parametrizados |
| File I/O | Lectura y escritura de archivos |
| String Interpolation | `"Hola, {nombre}!"` |
| Impl Blocks (Methods) | `impl Struct { fn method(...) }` |
| Traits | Dispatch estático y dinámico, implementación |
| Trait Inheritance | `trait B: A` |
| Generics | Monomorfización, `fn f<T>(x: T)` con inferencia implícita |
| Try Operator | `expr?` — propagación de errores |
| Try-Catch Exception Handling | `try { } catch e { }` |
| FFI (Foreign Function Interface) | Bindings C, `extern "C"` |
| Const Declarations | `const N: int = 42` (top-level y local) |
| Typed For-In | `for x: int in arr` |
| Test Framework | `nyx test`, `#[test]` |
| Módulos e Imports | `import "std/http"`, `import as ns` |
| Bitwise Operators | `&`, `|`, `^`, `~`, `<<`, `>>` |
| String Methods | `length()`, `substring()`, `indexOf()`, `toUpper()`, etc. |
| Array Methods | `push()`, `pop()`, `len()`, `map()`, `filter()`, etc. |
| Sized Numeric Types | `i8`–`i64`, `u8`–`u64`, `f32`, `usize` |
| Cast Operator | `x as int` |
| sizeof/alignof | `sizeof(T)`, `alignof(T)` |
| Raw Pointers & Unsafe | `*T`, bloques `unsafe { }` |
| Manual Memory | `alloc(n)`, `free(p)` |
| FFI Structs | `#[repr(C)] struct` |
| Inline Assembly | Assembly inline estilo GCC |
| Volatile & Atomic | Acceso volátil y operaciones atómicas |
| Typed Closures | `Fn(A, B) -> C` |
| Typed Arrays | `[T:N]` arrays de tamaño fijo |
| Dynamic Dispatch | `dyn Trait`, fat pointers |
| Advanced Pattern Matching | Nested, struct patterns, literal patterns |
| pub Keyword | Exportación de símbolos (`pub fn`, `pub struct`) |
| Module Imports with Namespaces | `import "mod" as m; m.fn()` |
| panic | `panic("mensaje")` — aborta el proceso |
| Result/Option Methods | `unwrap()`, `unwrap_or()`, `map()`, `is_some()`, etc. |
| Iterators | Iteradores lazy, encadenables |
| Default Methods | Métodos por defecto en traits |
| Multi-Bounds | `T: Display + Clone` |
| Associated Types | `type Item` en traits |
| Where Clauses | `where T: Display` |
| Operator Overloading | `impl Add for T { fn add(...) }` |
| Pointer Arithmetic | Aritmética de punteros en modo unsafe |
| Buffered I/O | Lectura/escritura con buffer |
| Map Iteration | `for k, v in map` |
| Networking | TCP, UDP, DNS |
| Threading | Threads POSIX, Mutex, WaitGroup, Semaphore |
| Process/OS | `fork`, `execvp`, `waitpid`, `pipe`, `dup2`, `stat` |
| JSON | Parser y serializador JSON |
| HTTP | Servidor y cliente HTTP (single-thread y multi-thread) |
| DateTime | Fechas, horas, formateo |
| Crypto | SHA-256, MD5, HMAC-SHA-256 |
| TLS/HTTPS | OpenSSL — servidor y cliente TLS |
| Logging | Logging estructurado |
| Collections | `Set`, `BTreeMap`, `Deque`, `LinkedList`, `PriorityQueue` |
| Regex | POSIX regex |
| Format String | `format("texto {}", val)` |
| Sleep and Time | `sleep_ms()`, temporizadores |
| Math Functions | `sqrt`, `pow`, `sin`, `cos`, etc. |
| Signal Handling | `signal(SIGINT, handler)` |
| Defer Statement | `defer expr()` — se ejecuta al salir del bloque |
| Standard Library | Lista completa de módulos de stdlib (39 módulos) |
| Async/Await | Reescritura sintáctica (no paralelismo real) |
| Spawn and Select | Goroutines (`spawn`), `select` entre canales |
| M:N Scheduler | Work-stealing real (ucontext_t) |
| Event Loop | epoll real |
| Clone and Move Semantics | `clone()`, semántica move con `MoveOnly` |
| Derive Macros | `#[derive(Clone, PartialEq, Debug, Display, Default)]` |
| Fixed-Size Arrays | `[T:N]` estilo C |
| Higher-Kinded Types and GATs | HKT/GATs — se parsean, sin instanciación real |
| Lifetime Annotations | Lifetimes — decorativos, sin enforcement |
| impl Trait Syntax | `fn f(x: impl Display)` |
| Tuple Structs | `struct Point(int, int)` |
| Union Types | `union U { a: int, b: float }` |
| Declarative Macros | `macro_rules!` estilo |
| If-Let and While-Let | `if let Some(x) = opt { }` |
| Literal Patterns in Match | `match x { 1 => ..., "ok" => ... }` |
| GCC-Style Inline Assembly | Assembly inline completo estilo GCC |
| Function Attributes | `#[naked]`, `#[interrupt]`, `#[link_section]`, `#[export_name]` |
| No-GC Mode | Compilación sin Boehm GC |
| Cross-Compilation | `make cross TARGET=aarch64-linux-gnu` |
| Shebang Support | `#!/usr/bin/env nyx` en scripts |
| Linear Types (Box, Rc, MoveOnly) | Wrappers de librería sobre Arrays |
| Additional Standard Library Modules | Módulos extra: sqlite, websocket, compress, msgpack, toml, csv, etc. |
| Tooling | `nyx fmt`, `nyx check`, `nyx vet`, `nyx doc`, REPL, `nyx build` |
| WebSocket | RFC 6455, framing, SHA-1 handshake |
| Middleware and Sessions | Middleware HTTP, sesiones con cookie+nyx-kv |
| Base64 and Base64URL | Codificación Base64 y URL-safe |
| Limitaciones Conocidas | Gaps y decisiones de diseño conocidos en v0.16.2 |
| Semantic Type Checker (M-08) | Qué valida el checker hoy y sus límites |
| Structured Diagnostics (NYX_DIAG=json) | Formato NDJSON, códigos NYX0101–NYX1020 |
| String Semantics (v0.14) | Contrato bytes: `length()` = bytes = `byte_length()` |

---

## Secciones introductorias clave (resumen)

### Contrato de Strings (v0.14) — importante

Toda la API de strings opera sobre **bytes**, no codepoints Unicode:

- `s.length()` = número de bytes (= `byte_length()`)
- `s.char_length()` = número de codepoints UTF-8
- `s.substring(i, j)` = slice de bytes `[i, j)`
- `s.indexOf("x")` = posición en bytes
- `s.charAt(i)` = byte en posición `i`
- `s.substring(0, s.length())` es la identidad (no hay off-by-one)

Para texto ASCII, bytes = codepoints y no hay diferencia. Para texto UTF-8
multibyte, usar `char_length()` para contar caracteres y tener cuidado de
no cortar en medio de un codepoint.

### assert() aborta (v0.14)

`assert(cond)` llama `exit(1)` en el primer fallo. Dentro del runner
`nyx test`, los fallos se reportan por test y el proceso termina con
exit 1 al final de la suite.

### Diagnósticos estructurados

Con `NYX_DIAG=json`, el compilador emite una línea NDJSON por error:

```json
{"code":"NYX1001","severity":"error","phase":"semantic","line":10,"column":5,"message":"...","suggestion":"..."}
```

Códigos de parse: NYX0101–NYX0105. Códigos semánticos: NYX1001–NYX1020.
El campo `message` es bilingüe (inglés por defecto; castellano con `NYX_LANG=es`).

### Limitaciones conocidas (v0.16.2)

- Enum syntax: `.` no `::` (`Shape.Circle`, no `Shape::Circle`)
- `async`/`await` es reescritura sintáctica, no paralelismo real
- Lifetime annotations y `&T`/`&mut T` decorativos (sin borrow checker). EXCEPCIÓN (v0.17): `&mut self` en métodos SÍ muta y persiste al caller (receiver por puntero, estilo Go), y `p.campo` sobre `p: *Struct` auto-dereferencia en lectura y escritura; `(*p).campo` explícito no está soportado
- `Box`/`Rc`/`MoveOnly` son wrappers de librería, sin enforcement
- HKT/GATs se parsean, sin instanciación real
- Map literals: claves SOLO strings (`{"k": v}` y `{}`); `{ident: v}` no es map
- `fork()` + GC: el child debe llamar `execvp()` inmediatamente

### E/S de terminal

Funciones built-in para interacción con la terminal (modo raw, I/O a nivel
byte, detección de tamaño de terminal):

```nyx
raw_mode_enter()              // activa el modo raw (desactiva buffering de línea y echo)
defer { raw_mode_exit() }     // restaura la terminal al salir de la función (LIFO)

let byte = read_byte()        // lee un byte de stdin (-1 en EOF)
let b = read_byte_timeout(50) // basado en poll(): byte, -1 EOF/error, -2 timeout o
                              // señal (EINTR). ms < 0 = infinito. A diferencia de un
                              // read bloqueante (reiniciado por SA_RESTART), poll()
                              // se despierta ante señales — habilita resize en vivo
                              // manejado por SIGWINCH.
let ch = chr(65)              // int a String: "A" (inversa de charAt)

let cols = term_cols()         // ancho de terminal (ioctl TIOCGWINSZ, default 80)
let rows = term_rows()         // alto de terminal (ioctl TIOCGWINSZ, default 24)

term_write(s)                  // escribe a stdout SIN flush (renderizado con buffer:
term_flush()                   // arma un frame, lo emite una vez, flushea una vez)
```

Estos builtins están implementados en `runtime/runtime.c` y declarados en el
análisis semántico del compilador.

---

## Referencia normativa

El documento completo con todos los ejemplos de código, API de cada módulo,
y secciones técnicas es:

**[SPEC.md](SPEC.md)** — Especificación completa (inglés, ~90KB)
