# Especificación del Lenguaje Nyx v0.9.0

> Este archivo es la versión en castellano de la especificación. El documento principal es [SPEC.md](SPEC.md), que contiene la referencia completa bilingüe (inglés/castellano).

## Estado

- **Versión**: v0.9.0 (pre-release)
- **Cobertura**: Features verificadas hasta v0.7.4 documentadas en detalle. Features v0.8.0-v0.9.0 agregadas con secciones nuevas.
- **Auditoría**: Ver [docs/AUDIT_PHASE1.md](docs/AUDIT_PHASE1.md) para el estado verificado de cada feature.

## Contenido

SPEC.md ya está escrito mayormente en castellano e incluye:

### Secciones verificadas (v0.7.4 y anteriores)
- Comentarios, Tipos de Datos, Variables, Type Aliases
- Operadores (aritméticos, comparación, lógicos, bitwise, asignación compuesta)
- Control de Flujo (if/else, while, for, match, break, continue)
- Funciones, Varargs, First-class functions, Closures
- Arrays, Strings, Tuples, Hash Maps
- Structs, Enums + Pattern Matching, Generics
- Traits (static, dynamic, inheritance, default methods, multi-bounds, associated types, where clauses)
- FFI, Unsafe, Raw Pointers, Inline Assembly, Volatile/Atomic
- Iteradores, Operator Overloading, Módulos
- Networking, Threading, JSON, HTTP, Crypto, TLS, Regex, DateTime
- Standard Library completa

### Secciones nuevas (v0.8.0-v0.9.0)
- Async/Await (sintáctico — NO paralelismo real)
- Spawn/Select + M:N Scheduler + Event Loop (epoll real)
- Clone/Move Semantics + Derive Macros
- Fixed-Size Arrays, HKT/GATs (decorativos), Lifetime Annotations (decorativas)
- impl Trait, Tuple Structs, Union Types, Declarative Macros
- if-let/while-let, Literal Patterns
- GCC-Style Inline Assembly, Function Attributes
- No-GC Mode, Cross-Compilation, Shebang Support
- Linear Types (Box/Rc/MoveOnly — wrappers de librería)
- Módulos adicionales de stdlib (sync, btreemap, linkedlist, sqlite, websocket, graph, FSM, events, proptest, compress, msgpack, toml, csv, args, semver, random, uuid, pool)
- Tooling (fmt, check, vet, doc, REPL, build, bindgen)

### Limitaciones conocidas
- Enum syntax usa `.` no `::` (`Shape.Circle`, no `Shape::Circle`)
- `return` sin valor no funciona — usar `return 0`
- `.length` propiedad en arrays/strings retorna 0 — usar `.length()` método
- Generic structs con 1 parámetro de tipo pueden dar error de IR
- Lifetime annotations y `&T`/`&mut T` se parsean pero no se enforzan (no hay borrow checker)
- async/await es reescritura sintáctica, no paralelismo real
- Variable shadowing no soportado
- Default params no funcionan
- Map.size() y Map.has() siempre retornan 0/false
- Lambdas no pueden capturar variables del scope externo (usar inner fn pattern)

## Referencia

El documento principal con todos los ejemplos de código y API de cada módulo es:
**[SPEC.md](SPEC.md)**
