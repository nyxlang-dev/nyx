# Nyx Language Specification

> Current version: see the `VERSION` file; canonical test counts: `docs/TESTS.md`
> (this header carried "v0.16.2, 347 tests" for months — numbers do not live here).
> Self-hosting with verified fixed point. Semantic type checker active end-to-end (M-08 complete, incl. trait bounds + enum variant payloads + multi-error recovery).

Especificacion completa de sintaxis y caracteristicas del lenguaje Nyx.

> **Cobertura**: este documento especifica lo que está LISTADO en la Tabla de
> Contenidos de abajo (sintaxis core, tipos, traits/generics, concurrencia
> M:N real, borrow checker, Box/Rc/MoveOnly, WASM, stdlib, etc.). **Todavía
> NO especificado acá**: errores tipados E1-E5 (`std/error`, la familia
> `try_*` — ver el stub más abajo), resolución de imports por módulo, y el
> target Windows (arco W en curso). Referencia provisional para esas tres
> áreas: `LLM.md` (Option/Result en §2, gotchas en §5, Modules en §2) y
> `CHANGELOG.md`. La especificación completa de estas áreas queda fichada
> como parte del pre-1.0 freeze (`docs/VERSIONING.md`).

## Tabla de Contenidos

- [Comentarios](#comentarios)
- [Tipos de Datos](#tipos-de-datos)
- [Variables](#variables)
- [Type Aliases](#type-aliases)
- [Operadores](#operadores)
- [Control de Flujo](#control-de-flujo)
- [Funciones](#funciones)
- [Varargs Tipados](#varargs-tipados)
- [First-Class Functions](#first-class-functions)
- [Closures](#closures)
- [Arrays](#arrays)
- [Strings](#strings)
- [Semantic Type Checker (M-08)](#semantic-type-checker-m-08)
- [Structured Diagnostics (`NYX_DIAG=json`)](#structured-diagnostics-nyx_diagjson)
- [Multiline y Raw Strings](#multiline-y-raw-strings)
- [Tuples](#tuples)
- [Hash Maps](#hash-maps)
- [Structs](#structs)
- [Enums y Pattern Matching](#enums-y-pattern-matching)
- [Generic Enums](#generic-enums)
- [File I/O](#file-io)
- [String Interpolation](#string-interpolation)
- [Impl Blocks (Methods)](#impl-blocks-methods)
- [Traits](#traits)
- [Trait Inheritance](#trait-inheritance)
- [Generics](#generics)
- [Try Operator](#try-operator)
- [Typed Errors (Result/try_*)](#typed-errors-resulttry_)
- [Try-Catch Exception Handling](#try-catch-exception-handling)
- [Conversiones de Tipo](#conversiones-de-tipo)
- [FFI (Foreign Function Interface)](#ffi-foreign-function-interface)
- [Const Declarations](#const-declarations)
- [Typed For-In](#typed-for-in)
- [Test Framework](#test-framework)
- [Modulos e Imports](#modulos-e-imports)
- [Bitwise Operators](#bitwise-operators)
- [String Methods](#string-methods)
- [Array Methods](#array-methods)
- [Terminal I/O](#terminal-io)
- [Sized Numeric Types](#sized-numeric-types)
- [Cast Operator](#cast-operator)
- [sizeof/alignof](#sizeofalignof)
- [Raw Pointers & Unsafe](#raw-pointers--unsafe)
- [Manual Memory](#manual-memory)
- [FFI Structs](#ffi-structs)
- [Inline Assembly](#inline-assembly)
- [Volatile & Atomic](#volatile--atomic)
- [Typed Closures](#typed-closures)
- [Typed Arrays](#typed-arrays)
- [Dynamic Dispatch](#dynamic-dispatch)
- [Advanced Pattern Matching](#advanced-pattern-matching)
- [pub Keyword](#pub-keyword)
- [Module Imports with Namespaces](#module-imports-with-namespaces)
- [panic](#panic)
- [Result/Option Methods](#resultoption-methods)
- [Iterators](#iterators)
- [Default Methods](#default-methods)
- [Multi-Bounds](#multi-bounds)
- [Associated Types](#associated-types)
- [Where Clauses](#where-clauses)
- [Operator Overloading](#operator-overloading)
- [Pointer Arithmetic](#pointer-arithmetic)
- [Buffered I/O](#buffered-io)
- [Map Iteration](#map-iteration)
- [Networking](#networking)
- [Threading](#threading)
- [Process/OS](#processos)
- [JSON](#json)
- [HTTP](#http)
- [DateTime](#datetime)
- [Crypto](#crypto)
- [TLS/HTTPS](#tlshttps)
- [Logging](#logging)
- [Collections](#collections)
- [Regex](#regex)
- [Format String](#format-string)
- [Sleep and Time](#sleep-and-time)
- [Math Functions](#math-functions)
- [Signal Handling](#signal-handling)
- [Defer Statement](#defer-statement)
- [Standard Library](#standard-library)
- [Async/Await](#asyncawait)
- [Spawn and Select](#spawn-and-select)
- [M:N Scheduler](#mn-scheduler)
- [Event Loop](#event-loop)
- [Clone and Move Semantics](#clone-and-move-semantics)
- [Derive Macros](#derive-macros)
- [Fixed-Size Arrays](#fixed-size-arrays)
- [Higher-Kinded Types and GATs](#higher-kinded-types-and-gats)
- [Lifetime Annotations](#lifetime-annotations)
- [impl Trait Syntax](#impl-trait-syntax)
- [Tuple Structs](#tuple-structs)
- [Union Types](#union-types)
- [Declarative Macros](#declarative-macros)
- [If-Let and While-Let](#if-let-and-while-let)
- [Literal Patterns in Match](#literal-patterns-in-match)
- [GCC-Style Inline Assembly](#gcc-style-inline-assembly)
- [Function Attributes](#function-attributes)
- [No-GC Mode](#no-gc-mode)
- [Cross-Compilation](#cross-compilation)
- [Shebang Support](#shebang-support)
- [Linear Types (Box, Rc, MoveOnly)](#linear-types-box-rc-moveonly)
- [Additional Standard Library Modules](#additional-standard-library-modules)
- [Tooling](#tooling)
- [WebSocket](#websocket)
- [Middleware and Sessions](#middleware-and-sessions)
- [Base64 and Base64URL](#base64-and-base64url)
- [Limitaciones Conocidas](#limitaciones-conocidas)

---

## Comentarios

### Comentarios de linea
```nyx
// Esto es un comentario de linea
let x = 42  // Comentario al final de la linea
```

### Comentarios de bloque
```nyx
/* Comentario de bloque simple */

/*
  Comentario de bloque
  multilinea
*/

/* Comentarios /* anidados */ son soportados */

/*
  Nivel 1
  /* Nivel 2
     /* Nivel 3 */
  */
*/
```

Los comentarios de bloque soportan anidamiento arbitrario con tracking de profundidad en el lexer.

---

## Tipos de Datos

```nyx
// Enteros (i64)
let x: int = 42

// Flotantes (double / f64)
let pi: float = 3.14159

// Booleanos (i1)
let active: bool = true

// Caracteres (i8)
let letra: char = 'A'

// Strings (%nyx_string*)
let nombre: String = "Nyx"

// Arrays ({ i64, i8* }* — heterogeneos)
let numeros: Array = [1, 2, 3, 4, 5]

// Hash Maps (i8*)
let mapa = Map.new()

// Structs (definidos por usuario)
struct Point { x: int, y: int }

// Funciones como valores (i8*)
let f: Fn = my_function
```

---

## Variables

```nyx
// Inmutable (no puede cambiar)
let x = 10

// Mutable (puede cambiar)
var y = 20
y = 30

// Constante (evaluada en compile-time)
const MAX = 100
const PI: float = 3.14

// Tipado gradual
let sin_tipo = 42              // Inferido como int
let con_tipo: int = 100        // Explicito
let decimal: float = 3.14      // Float explicito
```

---

## Type Aliases

Se pueden definir aliases de tipos con `type`:

```nyx
type Integer = int
type Text = String
type FloatPair = Pair<float, float>

let x: Integer = 42
let name: Text = "Nyx"
```

Los aliases son transparentes: el compilador los resuelve al tipo subyacente en todas las fases (semantic, codegen). `type` es un keyword contextual — solo se reconoce al inicio de un statement, por lo que puede usarse como nombre de campo en structs sin conflicto.

---

## Operadores

### Aritmeticos
```nyx
2 + 3      // Suma: 5
10 - 5     // Resta: 5
4 * 7      // Multiplicacion: 28
20 / 4     // Division entera: 5
10 % 3     // Modulo: 1
2 ** 10    // Potencia: 1024
```

Todos los operadores aritmeticos funcionan con `int` y `float`:
```nyx
3.14 + 2.0     // fadd: 5.14
10.5 - 3.2     // fsub: 7.3
2.0 * 3.5      // fmul: 7.0
10.0 / 3.0     // fdiv: 3.333...
10.5 % 3.0     // frem: 1.5
2.0 ** 0.5     // pow: 1.414... (raiz cuadrada)
-3.14          // fneg: -3.14
```

### Overflow

La aritmética de `int` (`+`, `-`, `*`) se emite como `add`/`sub`/`mul i64` sin las banderas `nsw`/`nuw`
de LLVM: al desbordar el resultado envuelve en silencio en complemento a dos (wraparound), sin excepción,
sin abortar y sin ningún aviso — no hay flag del compilador para activar un chequeo automático, ni un
tipo de 128 bits para ampliar el rango del propio `int`. La división (`sdiv i64`) tampoco lleva guarda:
dividir el `int` más chico representable por `-1`, o dividir por cero, es comportamiento indefinido a
nivel del IR de LLVM (en ARM64 el hardware envuelve o devuelve 0; en x86_64 el mismo IR puede terminar en
`SIGFPE`). El caso más peligroso en código real es el financiero: un cálculo como
`monto * tasa_ppm / 1_000_000` (una tasa expresada en partes por millón) desborda apenas `monto` supera
unas 9.2×10¹² unidades mínimas, y el resultado sale NEGATIVO sin que nada lo señale.

`std/math` ofrece dos familias de funciones para esto. Las cuatro `checked_*` (globales vía el
prelude, sin `import`) DETECTAN el overflow antes de que ocurra:

```nyx
checked_add(a: int, b: int) -> Option<int>
checked_sub(a: int, b: int) -> Option<int>
checked_mul(a: int, b: int) -> Option<int>
checked_div(a: int, b: int) -> Option<int>
```

Cada una devuelve `None` si la operación desborda, `Some(v)` si no; `checked_div` además da `None` con
`b == 0` y con `INT_MIN / -1` — los dos casos UB de la división de arriba, que con `checked_div` nunca
llegan a ejecutarse.

Para el patrón `a * b / c` — el que más muerde en código financiero, porque el producto intermedio
`a * b` puede desbordar aunque el resultado final entre en `int` — `mul_div_round` calcula ese producto
EXACTO en 128 bits (`__int128` en el runtime C) antes de dividir:

```nyx
enum RoundMode { Truncate, Floor, Ceil, HalfUp, HalfEven }

// global vía el prelude, sin import; panica con c == 0 o un cociente que no entra en int
mul_div_round(a: int, b: int, c: int, mode: RoundMode) -> int

// misma cuenta, sin panicar — import "std/math_ext"
try_mul_div_round(a: int, b: int, c: int, mode: RoundMode) -> Result<int, Error>
```

`try_mul_div_round` vive en `std/math_ext` y no en `std/math` porque `std/prelude.nx` es una foto
congelada (`compiler/nyx.nx::resolve_source` la antepone CRUDA a todo programa) que no puede nombrar
`Error`/`err_new` de `std/error` sin romper cualquier programa que no lo importe — el mismo motivo por
el que `std/fs` existe aparte de `std/file`. `enum RoundMode`, `mul_div_round` y las cuatro `checked_*` sí
viven en el prelude, sin `import`.

`mode` decide cómo redondear el cociente exacto `a*b/c` cuando no es entero:

| Modo | Regla | `5/2` | `-5/2` | `7/2` | `-13/5` |
|---|---|---|---|---|---|
| `RoundMode.Truncate` | hacia cero | 2 | -2 | 3 | -2 |
| `RoundMode.Floor` | hacia -infinito | 2 | -3 | 3 | -3 |
| `RoundMode.Ceil` | hacia +infinito | 3 | -2 | 4 | -2 |
| `RoundMode.HalfUp` | al más cercano, empates ALEJÁNDOSE de cero | 3 | -3 | 4 | -3 |
| `RoundMode.HalfEven` | al más cercano, empates al PAR (bancario) | 2 | -2 | 4 | -3 |

`float` no es un sustituto válido para dinero: pierde precisión entera en silencio a partir de 2⁵³.
Detalle, repro completo y la nota histórica de la mitigación previa a estas funciones (split manual
en dos pasos): `docs/gotchas/int-wraps-silently.md`.

### Asignacion Compuesta
```nyx
x += 5     // x = x + 5
x -= 3     // x = x - 3
x *= 2     // x = x * 2
x /= 4     // x = x / 4
x %= 5     // x = x % 5
x &= 0x0F  // x = x & 0x0F
x |= 0xF0  // x = x | 0xF0
x ^= 0xFF  // x = x ^ 0xFF
x <<= 2    // x = x << 2
x >>= 1    // x = x >> 1
```

### Comparacion
```nyx
5 == 5     // Igual: true
5 != 3     // Diferente: true
10 > 5     // Mayor: true
3 < 7      // Menor: true
5 >= 5     // Mayor o igual: true
4 <= 8     // Menor o igual: true
```

Las comparaciones funcionan con `int`, `float`, `bool` y `String`.

### Logicos
```nyx
true and false    // AND: false
true or false     // OR: true
not true          // NOT: false

// Alias C-style:
true && false     // AND
true || false     // OR
!true             // NOT
```

---

## Control de Flujo

### If / Else
```nyx
if x > 10 {
    print("Mayor que 10")
} else if x == 10 {
    print("Igual a 10")
} else {
    print("Menor que 10")
}
```

### While
```nyx
var i = 0
while i < 10 {
    print(i)
    i = i + 1
}
```

### For con Ranges
```nyx
// Range exclusivo [0, 10)
for i in 0..10 {
    print(i)  // 0 a 9
}

// Range inclusivo [0, 10]
for i in 0..=10 {
    print(i)  // 0 a 10
}
```

### For con Arrays
```nyx
let numeros = [10, 20, 30]
for num in numeros {
    print(num)
}
```

### For con Type Annotation
```nyx
struct Point { x: int, y: int }
let points: Array = [Point{x: 1, y: 2}, Point{x: 3, y: 4}]
for p: Point in points {
    print(p.x + p.y)
}

let names: Array = ["alice", "bob"]
for name: String in names {
    print(name)
}
```

La type annotation permite al codegen hacer la conversion correcta del elemento (inttoptr para structs/strings, bitcast para floats). Sin annotation, los elementos se tratan como `i64` crudo.

### Break y Continue
```nyx
for i in 0..100 {
    if i % 2 == 0 {
        continue  // Saltar pares
    }
    if i > 50 {
        break  // Salir del loop
    }
    print(i)
}
```

---

## Funciones

### Declaracion Basica
```nyx
fn suma(a: int, b: int) -> int {
    return a + b
}

let resultado = suma(5, 3)  // 8
```

### Default Parameters

```nyx
fn greet(name: String = "World") -> String {
    return "Hello " + name
}

print(greet())           // "Hello World"
print(greet("Nyx"))      // "Hello Nyx"
```

### Sin tipos (inferidos)
```nyx
fn doble(n) {
    return n * 2
}
```

### Con floats
```nyx
fn circle_area(radius: float) -> float {
    return 3.14159 * radius * radius
}
```

### Recursion
```nyx
fn factorial(n: int) -> int {
    if n == 0 { return 1 }
    return n * factorial(n - 1)
}
```

### Recursion mutua
```nyx
fn my_is_even(n: int) -> bool {
    if n == 0 { return true }
    return my_is_odd(n - 1)
}

fn my_is_odd(n: int) -> bool {
    if n == 0 { return false }
    return my_is_even(n - 1)
}
```

---

## Varargs Tipados

Las funciones soportan varargs como último parámetro:

```nyx
fn print_all(sep: String, ...args: String) {
    var i = 0
    while i < args.length() {
        print(args[i])
        if i < args.length() - 1 { print(sep) }
        i = i + 1
    }
}

print_all(", ", "Hello", "World", "Nyx")
// Output: Hello, World, Nyx
```

### Semantica

- Varargs debe ser el **último parámetro** de la función
- Sintaxis: `...name: Type` en la lista de parámetros
- Argumento extra en el call site se colecta automáticamente en un `Array` del tipo especificado
- La función recibe el varargs como un Array normal

### Limitaciones

- Solo un parámetro varargs por función (debe ser el último)
- Elementos se boxean como `i8*` en el runtime — algunos tipos pueden requerir cast manual dentro de la función

---

## First-Class Functions

Desde v0.22, Nyx soporta funciones como valores de primera clase usando el tipo `Fn`.

### Pasar funciones como argumentos
```nyx
fn double(n: int) -> int { return n * 2 }
fn triple(n: int) -> int { return n * 3 }

fn apply(f: Fn, x: int) -> int {
    return f(x)
}

print(apply(double, 5))  // 10
print(apply(triple, 5))  // 15
```

### Asignar funciones a variables
```nyx
let f: Fn = double
print(f(4))  // 8

var op: Fn = double
op = triple
print(op(4))  // 12
```

### Higher-order: map, filter, reduce
```nyx
fn map_array(arr: Array, f: Fn) -> Array {
    var result = []
    var i = 0
    while i < arr.length() {
        result.push(f(arr[i]))
        i = i + 1
    }
    return result
}

fn filter_array(arr: Array, pred: Fn) -> Array {
    var result = []
    var i = 0
    while i < arr.length() {
        if pred(arr[i]) {
            result.push(arr[i])
        }
        i = i + 1
    }
    return result
}

let nums = [1, 2, 3, 4, 5]
let doubled = map_array(nums, double)    // [2, 4, 6, 8, 10]
```

### Composicion
```nyx
fn compose(f: Fn, g: Fn, x: int) -> int {
    return f(g(x))
}

print(compose(double, triple, 5))  // 30
```

### Closures retornables (v0.25)
```nyx
fn make_adder(n: int) -> Fn {
    fn add(x: int) -> int {
        return n + x
    }
    return add
}

let add5 = make_adder(5)
print(add5(3))   // 8
print(add5(10))  // 15
```

Las closures retornadas mantienen su environment via GC (heap-allocated).

---

## Closures

Nyx soporta funciones anidadas que capturan variables del scope exterior.

```nyx
fn accumulate(n: int) -> int {
    var total = 0
    fn add_to_total(x: int) {
        total = total + x  // captura 'total' del scope exterior
    }
    var i = 1
    while i <= n {
        add_to_total(i)
        i = i + 1
    }
    return total
}

print(accumulate(10))  // 55
```

### Multiples closures compartiendo estado
```nyx
fn counter_test() -> int {
    var count = 0
    fn increment() { count = count + 1 }
    fn get_count() -> int { return count }
    increment()
    increment()
    increment()
    return get_count()  // 3
}
```

### Counter factory (retornable)
```nyx
fn make_counter(start: int) -> Fn {
    var count = start
    fn increment() -> int {
        count = count + 1
        return count
    }
    return increment
}

let c = make_counter(0)
print(c())  // 1
print(c())  // 2
```

> Soporta anidacion arbitraria (3+ niveles) via flattened environment inheritance.

---

## Arrays

### Creacion y Acceso
```nyx
let arr = [1, 2, 3, 4, 5]
let primero = arr[0]        // 1
let ultimo = arr[4]         // 5
```

### Modificacion
```nyx
var arr = [10, 20, 30]
arr[1] = 99                 // [10, 99, 30]
```

### Metodos
```nyx
var lista = []
lista.push(100)             // agregar al final
lista.push(200)
let ultimo = lista.pop()    // quitar del final: 200
let tamano = lista.length() // 1
```

### Arrays anidados (matrices)
```nyx
var matrix = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
let row: Array = matrix[1]
print(row[2])  // 6
```

### Iteracion
```nyx
for elem in [10, 20, 30] {
    print(elem)
}
```

---

## Strings

### Creacion y Concatenacion
```nyx
let s1 = "Hola"
let s2 = " Mundo"
let completo = s1 + s2      // "Hola Mundo"

// String + int/float se concatenan automaticamente
let msg = "Valor: " + 42           // "Valor: 42"
let pi_msg = "Pi = " + 3.14159    // "Pi = 3.14159"
```

### Metodos
```nyx
let texto = "Nyx Language"
texto.length()              // 12
texto.charAt(0)             // 'N'
texto.substring(0, 3)       // "Nyx"
texto.contains("Lang")      // true
texto.split(" ")            // ["Nyx", "Language"]
```

### Conversiones
```nyx
int_to_string(42)           // "42"
float_to_string(3.14)       // "3.14"
char_to_string('A')         // "A"
```

### UTF-8 semantics: one contract, bytes / Semántica UTF-8: un contrato, bytes

**EN** — Nyx strings are UTF-8 byte sequences. Since v0.14 the entire string API
operates on **one unit — bytes**; codepoints are the explicit, opt-in case:

| Operation | Unit |
|-----------|------|
| `s.length()` | **bytes** |
| `s.byte_length()` / `str_byte_length(s)` | **bytes** (alias of `length()`) |
| `s.char_length()` | **codepoints** (UTF-8 characters) |
| `s.substring(start, end)` | **byte offsets** |
| `s.indexOf(needle)` | **byte offset** |
| `s.charAt(i)` | **byte** at index i |

Consequences:
- `s.substring(0, s.length())` is the identity — safe for any content. (Before
  v0.14, `length()` counted codepoints and this pattern silently truncated
  multi-byte content; it caused a production outage in the proxy cache.)
- `indexOf` results compose safely with `substring` and `length()`.
- HTTP `Content-Length` and wire protocols use `length()` directly.
- Use `char_length()` only when you mean *characters*: UI widths, user-visible
  counts, column math. Note `substring`/`charAt` still take byte offsets — for
  full codepoint-wise iteration, walk bytes and decode (stdlib helpers planned).

**ES** — Los strings de Nyx son secuencias de bytes UTF-8. Desde v0.14 toda la API
opera sobre **una sola unidad — bytes**; los codepoints son el caso explícito:
`length()` = bytes (= `byte_length()`), `char_length()` = codepoints,
`substring()`/`indexOf()`/`charAt()` = bytes. `s.substring(0, s.length())` es la
identidad — seguro para cualquier contenido (antes de v0.14 truncaba multi-byte;
causó la caída del cache del proxy). `Content-Length` usa `length()` directo. Usar
`char_length()` solo cuando se quiere contar *caracteres* (anchos de UI, conteos
visibles al usuario).

---

## Semantic Type Checker (M-08)

**EN** — Since v0.13.0 the compiler runs a gradual semantic type checker end-to-end
(no `NYX_SKIP_SEMANTIC` needed). It is *gradual*: unknown types (`TyUnknown`) act as
wildcards, so unannotated code keeps compiling while annotated code gets checked.

What it validates today:
- **Annotations** on `let`/`var` (`let x: int = "a"` → bilingual type-mismatch error,
  Levenshtein "did you mean" on unknown type names).
- **Function boundaries**: argument types and return types against registered signatures;
  return-type inference for functions without `-> T` (LUB with conflict detection), with
  codegen-aware signature mutation.
- **Binops/unops**: arithmetic coercion int/float, String concat via `+`, comparisons →
  bool, logical/bitwise strict; for custom types, operators map to traits
  (`+`→Add, `-`→Sub, `*`→Mul, `/`→Div, `%`→Rem, unary `-`→Neg, `!`→Not, `~`→BitNot) and
  a local impl registry is consulted.
- **Method calls**: builtin return-type table (~30 methods), parametric arg checking
  (`Array<T>.push(T)`, `Map<K,V>.get(K)`…), user `impl` methods with arg/return checking
  and impl-generics via `unify`/`subst_apply`.
- **Generic inference in calls**: `fn id<T>(x: T) -> T; let s: String = id(42)` detects
  the mismatch; cross-arg conflicts (`max(1, "x")`) are caught.
- **Struct init**: unknown fields (with did-you-mean) and per-field type mismatches.
- **Cross-module**: imported modules are scanned (`scan_module_types`) for structs,
  fields + field types, enums + variants, type-alias targets and `impl Trait for Type`,
  so checks work across imports. Top-level globals are pre-registered (order-independent
  forward refs).
- **dyn Trait**: `let d: dyn Show = NotShow{}` validated via the trait-impl registry.
- **Callability**: calling a non-function value (`let x = 10; x()`) is rejected.

Known gaps (roadmap v0.18): enum variant payloads cross-module, real trait-bound
validation (`T: Display` parses but isn't enforced), inference outside calls, full HM.

**ES** — Desde v0.13.0 el compilador corre un type checker semántico gradual de punta a
punta. Es *gradual*: los tipos desconocidos actúan como wildcards, así el código sin
anotar sigue compilando mientras el anotado se chequea. Valida: anotaciones en let/var
(con did-you-mean), fronteras de función (args + returns, inferencia de return), binops/
unops (con mapeo operador→trait para tipos custom), method calls (builtins + impl
methods + genéricos vía unify), inferencia de generics en calls, struct init (campos y
tipos), escaneo cross-module (structs/fields/aliases/impls importados), dyn Trait y
llamadas a valores no-función. Gaps conocidos: payloads de enums cross-module, trait
bounds reales, inferencia fuera de calls, HM completo (roadmap v0.18).

---

## Structured Diagnostics (`NYX_DIAG=json`)

**EN** — With `NYX_DIAG=json`, parse and semantic errors are emitted as one JSON
object per line (NDJSON) instead of human-readable text, so AI agents and tooling can
consume them mechanically — the generate→compile→correct loop without scraping text:

```bash
NYX_DIAG=json nyx build
# {"code":"NYX1016","severity":"error","phase":"semantic","function":"main",
#  "message":"method 'psh' not recognized (typo?) (did you mean 'push'?)",
#  "suggestion":"push"}
```

Fields: `code` (stable identifier, see catalog), `severity` (`error` or `warning`;
warning lines omit `code`),
`phase` (`parse`, `semantic`, or `resolve`), `line`/`column` (1-based position in the ORIGINAL source file —
the compiler rebases past the inlined prelude/imports via `//#line` markers; omitted
when unknown, e.g. synthetic nodes), `function` (enclosing function, omitted at top
level), `message` (in the active `NYX_LANG` language), `suggestion` (raw "did you
mean" identifier, omitted when there is none). The position is that of the LAST token
of the offending node — exact for single-line statements (the vast majority of
diagnostics); for multi-line blocks it points at the closing token. Human-readable
output carries the same position: `error in 'main' (line 4): ...`.

Parse-phase codes (`phase:"parse"`, since v0.16-dev). The parser recovers and keeps
reporting sibling statements (multi-error); after 20 errors it aborts with NYX0103.
A compilation with parse errors always stops before semantic analysis (exit 1):

| Code | Meaning |
|------|---------|
| NYX0101 | unexpected token (`expected 'X', found 'Y'`) |
| NYX0102 | keyword used as an identifier (`let match = ...`) |
| NYX0103 | too many parse errors, parse aborted |
| NYX0104 | unexpected end of file (unclosed block) |
| NYX0105 | invalid construct (`export`/`pub` before something not exportable) |
| NYX0106 | map literal key is not a String (`{1: v}`/`{ident: v}`) |
| NYX0107 | unexpected token in expression (`parse_primary` catch-all) |

Semantic-phase codes (`phase:"semantic"`):

| Code | Meaning |
|------|---------|
| NYX1001 | unknown type |
| NYX1002 | identifier/variable not declared |
| NYX1003 | type mismatch in `let`/`var` |
| NYX1004 | return type mismatch |
| NYX1005 | argument type mismatch (call/method) |
| NYX1006 | arity mismatch |
| NYX1007 | value is not callable |
| NYX1008 | not all paths return a value |
| NYX1009 | conflicting inferred return types |
| NYX1010 | invalid operand type for operator |
| NYX1011 | operator trait not implemented (Add/Sub/Neg/…) |
| NYX1012 | type does not implement required `dyn Trait` |
| NYX1013 | already declared in scope |
| NYX1014 | assignment to immutable (`let`/`const`) |
| NYX1015 | `return`/`break`/`continue` outside valid context |
| NYX1016 | unknown method (typo) |
| NYX1017 | unknown struct field |
| NYX1018 | struct field type mismatch |
| NYX1019 | non-exhaustive match |
| NYX1020 | trait bound not satisfied (`fn f<T: Display>` with a `T` lacking the impl) |
| NYX1021 | `await` of a float expression is gated (ABI hazard in the goroutine join — annotate through an int-returning wrapper) |
| NYX1022 | receiver-type method lookup failure (`m.length()` on a `Map`, or any method the checker knows the receiver type doesn't have) |
| NYX1023 | `?` used outside a function that returns `Result` or `Option` (v0.31.0: message widened from `Result`-only) |
| NYX1024 | reservado — namespacing (llamada no calificada homónima; `docs/design/specs/2026-08-11-namespacing-modulos-spec.md`) |
| NYX1025 | `?` propagates an `Err` whose `E` differs from the function's declared `E` (no `From`-conversion in v1 — same type or compile error) |
| NYX1026 | `throw`/`panic` payload is not `String` or `int` |
| NYX1027 | `catch (e: T)` annotation is not `String` (`catch` is untyped; the annotation is reserved, not a promise of a future typed catch) |
| NYX1028 | `?` mixes `Option` and `Result` across the operand and the function's return type (v0.31.0) — `Option` operand in a `Result`-returning fn: hint `.ok_or(e)?`; `Result` operand in an `Option`-returning fn: hint `match`/`unwrap_or` |
| NYX1029 | unknown `#[derive(...)]` on a struct — an unrecognized derive used to be ignored silently, and the error only surfaced as NYX1002 at the call site of the function it would have generated; includes a did-you-mean over the eight valid derives (`Clone`, `PartialEq`, `Debug`, `Display`, `Default`, `Fields`, `Copy`, `Hash`) |
| NYX1030 | `#[derive(...)]` on a **generic** struct — codegen does not emit derives for a template, but the symbol was declared anyway: `nyx check` passed and the program failed at LINK time with «undefined symbol» |
| NYX1201 | borrow: use-after-move of a moved value (move-tracking, `NYX_BORROW`) |
| NYX1210 | borrow: `&mut` exclusivity violation (statement-scoped lint) |
| NYX1211 | borrow: `&mut` aliasing with an active `&` borrow (lint, sibling of NYX1210) |
| NYX1220 | borrow: use-after-free on manual memory (SOUND/gating, flow-sensitive) |
| NYX1221 | borrow: double-free on manual memory (SOUND/gating) |
| NYX1222 | borrow: dangling reference escape with explicit `'a` (GATING) |
| NYX1223 | borrow: dangling reference escape by elision (LINT — `NYX_BORROW=warn` default) |
| NYX1230 | borrow: use-after-move of an `#[affine]` type (move-checking) |
| NYX0000 | uncoded diagnostic (fallback) |

**Visible gradual-typing blindness** (`NYX_STRICT=warn`, v0.24.11): after a clean
compile, reports how many semantic checks were skipped because a type was unknown,
with the first 6 spots (function + line). Counts only user code (prelude and inlined
imports excluded). Fully annotated programs: silence. Instrumentation only — the
exit code never changes.

Resolve-phase codes (`phase:"resolve"` — the driver's import resolver,
`compiler/nyx.nx`, before parse/semantic even run; only NYX_DIAG=json gets
the JSON line, the human-readable path prints bilingual text instead):

| Code | Meaning |
|------|---------|
| NYX0301 | import path does not resolve (not found in std/, local, or packages/) — `suggestion` carries the did-you-mean candidate (Levenshtein against std/ module names + project src/ basenames) when one clears the threshold, else the `src/<path>` fallback hint |

Codegen-phase codes (`phase:"codegen"` — reached only when semantic already
said `check OK`; these are gaps in code *generation*, not in the program's
types. Codegen has no diagnostics registry — the code lives only in the
message text, e.g. `error [NYX2001]: ...`, not as an NDJSON `code` field):

| Code | Meaning |
|------|---------|
| NYX2001 | codegen_expr master catch-all — unrecognized `node_type` reaches the bottom of `codegen_expr` (e.g. a `range` used outside a `for`; NOT `"integer"`, the synthetic bare-`return` node, which has its own branch) |
| NYX2002 | unrecognized method call on a global variable not tracked in `ctx.variables` (e.g. a file-scope `const` of a literal, registered only in `const_values`) |
| NYX2003 | `field_access` on a receiver that is a complex expression rather than a simple identifier — covers `f().campo` (call), `a[0].campo` (index), and `Type{...}.campo` (struct-literal) |
| NYX2004 | generic call trait bound not satisfied (`fn f<T: Display>(x: T)` called with a `T` lacking the impl) — normal path for calls with explicit turbofish (`f<Point>(p)`, which semantic's bound check never covers) and for the implicit form when the concrete type has no local impls (semantic's conservative NYX1020 heuristic is strict only when the type has at least one local `impl`; wildcard otherwise). Semantic only preempts this with NYX1020 for the implicit form when the type has a local impl (of *any* trait). Names the trait's method signature(s) from `ctx.trait_methods` when the trait was already defined earlier in the module |
| NYX2005 | nested field assignment (`a.b.c = x`) whose receiver chain has a link that is not a struct known to codegen (e.g. an intermediate field typed `Map`/`Array`, or a generic not yet monomorphized). The supported chains DO lower now (a chain of GEPs over the root struct's real memory, see test-322); this code is the residue that used to be dropped silently with exit 0 |
| NYX2006 | field assignment whose receiver is neither a simple identifier nor a field chain — `f().field = v` (call), `a[0].field = v` (index). Write-side counterpart of NYX2003 |
| NYX2007 | receiver-type backstop in method dispatch (v0.24.0): a recognized method dispatched to a receiver whose type doesn't have it (`m.length()`/`m.length` on a `Map`, methods on `&String`/`&Array`/`&Map` receivers). The codegen twin of semantic's NYX1022 — the only layer that covers unannotated code and `NYX_SKIP_SEMANTIC=1` |
| NYX2008 | RUNTIME slot-type mismatch (static-tag spec 2026-08-03): an Array slot whose runtime tag names a pointer type (String/Array/Map/pointer) read as float — pointer bits as double are guaranteed garbage. Orderly abort instead of silently-wrong; `NYX_SLOT_CHECK=off` disables it |
| NYX2009 | a file-scope `global`/`const` whose initializer cannot be evaluated at startup — the constant-folding path of globals accepts literals and a closed set of expressions; anything else (the offending `node_type` is named in the message) used to be dropped silently |
| NYX2010 | AMBIGUOUS unqualified call: the same function name is exported by several imported modules and none of them is the current one. The message lists the modules that define it — qualify the call instead of letting the resolver pick one (it used to pick silently) |
| NYX2011 | `generic_call` with no registered generic template for the base name (turbofish over a name that is not a generic function in scope) |
| NYX2012 | unknown enum variant in a **pattern** — the variant named in a `match` arm is not registered for that enum (enum not defined/imported, or the variant misspelled) |
| NYX2013 | `#[derive(Fields)]` on a struct with a field the derive cannot convert. Only `int`, `bool`, `float` and `String` are supported; an `Array`/`Map`/nested-struct field aborts compilation on purpose, because inheriting `Display`'s `"ptr"` fallback would write false data into a database column (see the `Fields` row in [Derive Macros](#derive-macros)) |

**Interpreter-phase errors (NYX30xx series)** — emitted by `compiler/interpreter.nx`
(the REPL's evaluator), printed in the message text like the NYX20xx series. The
interpreter covers a declared SUBSET of the language; these errors are loud instead
of the old silent print-and-nil, and since v0.24.7 they PROPAGATE: an error kills the
expression/statement being evaluated (no fabricated values downstream — `print(a[9] + 1)`
no longer prints `1` after the error) while the REPL session survives:

| Code | Meaning |
|------|---------|
| NYX3001 | method not supported by the interpreter for that value type (v0.24.2). The REPL session survives (interactive); `interp_error_count()` records it for non-interactive consumers. The compiled binary may well support the method — the error text says so |
| NYX3002 | expression, operator or feature not supported by the interpreter's subset (v0.24.3) — unsupported node types, binary/unary/compound-assign operators, `field_assign` |
| NYX3003 | undefined variable (v0.24.3) — read, assign or compound-assign of a name not in the environment |
| NYX3004 | calling a value that is not a function (v0.24.3) |
| NYX3005 | program runtime error surfaced by the interpreter (v0.24.3) — division by zero, modulo by zero, index out of range, `index_assign` on a non-array. The compiled binary aborts on these; the REPL reports and survives |
| NYX3006 | wrong number of arguments in a call (v0.24.3) — checked before binding; the out-of-range read used to kill the whole REPL session |

**ES** — Con `NYX_DIAG=json`, los errores de parse y semánticos salen como un objeto
JSON por línea (NDJSON) en lugar de texto humano, para que agentes AI y tooling los
consuman mecánicamente. Campos: `code` (identificador estable, ver catálogo arriba),
`severity` (`error` o `warning`; las líneas de warning omiten `code`), `phase` (`parse`, `semantic` o `resolve`), `line`/`column` (posición 1-based en el
archivo ORIGINAL — el compilador rebasea el corrimiento del prelude/imports inlined
con marcadores `//#line`; omitidos si se desconocen), `function` (función contenedora,
omitido en top-level), `message` (en el idioma activo de `NYX_LANG`), `suggestion`
(el identificador crudo del did-you-mean, omitido si no hay). La posición es la del
ÚLTIMO token del nodo — exacta para statements de una línea; en bloques multi-línea
apunta al token de cierre. El output humano lleva la misma posición:
`error en 'main' (línea 4): ...`.

---

## Multiline y Raw Strings

Nyx soporta strings multilinea y raw strings.

### Multiline strings
```nyx
let texto = """
  Esta es una string
  que ocupa varias lineas.
  Los newlines se preservan.
"""
```

Las multiline strings se delimitan con `"""` (triple comillas). Los saltos de linea internos se preservan tal cual.

### Raw strings
```nyx
let path = r"C:\Users\nyx\file.txt"
let regex = r"^\d+\.\d+"
```

Las raw strings se prefijan con `r` y no procesan escape sequences: `\n`, `\t`, `\\` se mantienen como texto literal. Utiles para paths de Windows, expresiones regulares, y texto que contenga backslashes.

---

## Tuples

Nyx soporta tuples como tipo compuesto anonimo.

### Creacion
```nyx
let t = (42, "hello", true)
let par: (int, String) = (1, "uno")
```

### Acceso por indice
```nyx
let t = (10, "nyx", false)
print(t.0)   // 10
print(t.1)   // "nyx"
print(t.2)   // false
```

### Destructuring
```nyx
let t = (1, "hello", true)
let (a, b, c) = t
print(a)  // 1
print(b)  // "hello"
print(c)  // true
```

Internamente, los tuples se representan como anonymous structs con nombres mangled (`%__Tuple_int_String_bool`), generados automaticamente por el compilador.

---

## Hash Maps

### Map literals (v0.16)
```nyx
// Claves SOLO strings (estilo JSON). Valores: int o String.
let nums = {"a": 1, "b": 2}
let saludos = {"es": "hola", "en": "hello"}
let vacio = {}                       // map vacío

print(int_to_string(nums.get("a")))  // 1
print(saludos.get("es"))             // hola
```
`{ident: valor}` NO es un map literal (las claves deben ser literales string) —
ese espacio gramatical queda reservado y no hay ambigüedad con la construcción
de structs (`Point { x: 1 }`), que requiere el nombre del struct antes de la
llave. / Map literals use STRING keys only (JSON-style); `{ident: v}` is not a
map literal, avoiding ambiguity with struct construction.

### Creacion y Uso
```nyx
var mapa = Map.new()

// Insertar
mapa.insert("nombre", "Alice")
mapa.insert("edad", 25)

// Obtener
let edad = mapa.get("edad")    // 25

// Verificar existencia
if mapa.contains("nombre") {
    print("Clave existe")
}

// Tamano
let size = mapa.length()        // 2
```

### Ejemplo: conteo de frecuencias
```nyx
var freq = Map.new()
let data = [1, 2, 3, 1, 2, 1]
var i = 0
while i < data.length() {
    let key = int_to_string(data[i])
    if freq.contains(key) {
        freq.insert(key, freq.get(key) + 1)
    } else {
        freq.insert(key, 1)
    }
    i = i + 1
}
// freq.get("1") == 3
```

---

## Structs

### Definicion y Construccion
```nyx
struct Point { x: int, y: int }

let p = Point { x: 10, y: 20 }
print(p.x)  // 10
```

### Structs Anidados
```nyx
struct Rect {
    origin: Point,
    size: Point
}

let r = Rect {
    origin: Point { x: 0, y: 0 },
    size: Point { x: 100, y: 50 }
}
print(r.origin.x)  // 0
```

### Funciones con Structs
```nyx
fn rect_area(r: Rect) -> int {
    return r.size.x * r.size.y
}
```

---

## Enums y Pattern Matching

### Definicion
```nyx
enum Color { Red, Green, Blue }

enum Shape {
    Circle(int),
    Rect(int, int)
}
```

### Construccion (usa `.` no `::`)
```nyx
let c = Color.Red
let s = Shape.Circle(5)
```

### Match como expresion (con `return`)
```nyx
fn area(s: Shape) -> int {
    return match s {
        Shape.Circle(r) => r * r * 3,
        Shape.Rect(w, h) => w * h
    }
}
```

### Match como statement (v0.23)
```nyx
let color = Color.Red
match color {
    Color.Red => print("Rojo"),
    Color.Green => print("Verde"),
    Color.Blue => print("Azul")
}
```

Match como statement soporta arms con side effects (print, asignaciones) y bloques:
```nyx
match shape {
    Shape.Circle(r) => {
        let area = r * r * 3
        print("Area: " + int_to_string(area))
    },
    Shape.Rect(w, h) => {
        print("Rectangulo: " + int_to_string(w) + "x" + int_to_string(h))
    }
}
```

### Wildcard
```nyx
fn describe(c: Color) -> int {
    return match c {
        Color.Red => 1,
        Color.Green => 2,
        _ => 3
    }
}
```

### Result pattern con String errors (v0.24)
```nyx
enum Result { Ok(int), Err(String) }

fn safe_divide(a: int, b: int) -> Result {
    if b == 0 { return Result.Err("division by zero") }
    return Result.Ok(a / b)
}

fn unwrap_or(r: Result, default_val: int) -> int {
    return match r {
        Result.Ok(val) => val,
        Result.Err(msg) => default_val
    }
}
```

### Exhaustive match (v0.25)
El compilador verifica que todos los variantes de un enum esten cubiertos:
```nyx
enum Color { Red, Green, Blue }

// Error: match no exhaustivo sobre 'Color': falta Color.Blue
match c {
    Color.Red => print("red"),
    Color.Green => print("green")
}

// OK: wildcard cubre el resto
match c {
    Color.Red => print("red"),
    _ => print("other")
}
```

Los parametros de variantes soportan `int`, `String`, `float` y `bool`.

---

## Generic Enums

Los enums soportan type parameters via monomorphization:

### Option<T>
```nyx
enum Option<T> { Some(T), None }

let x: Option<int> = Option.Some(42)
let y: Option<String> = Option.None

let val = match x {
    Option.Some(v) => v,
    Option.None => 0
}
```

### Result<T, E>
```nyx
enum Result<T, E> { Ok(T), Err(E) }

fn safe_divide(a: int, b: int) -> Result<int, String> {
    if b == 0 { return Result.Err("division by zero") }
    return Result.Ok(a / b)
}

let r = safe_divide(10, 3)
let val = match r {
    Result.Ok(v) => v,
    Result.Err(msg) => 0
}
```

### Builtins
`Option<T>` y `Result<T,E>` estan predefinidos en `std/prelude.nx` y disponibles automaticamente en todos los programas.

El compilador genera versiones especializadas via monomorphization (`Option_int`, `Result_int_String`, etc.). En match, se puede usar el nombre base del enum (`Option.Some`, `Result.Ok`) sin los type arguments.

### `?` sobre `Option` (v0.31.0)

Dentro de una función que devuelve `Option<U>`, el operador `?` sobre un
`Option<T>` extrae el `T` de `Some` o retorna `None` de inmediato — la misma
mecánica que `?` sobre `Result`, sin conversión de tipo (`None` no lleva
payload):

```nyx
fn buscar(k: int) -> Option<int> {
    if k == 1 { return Option.Some(42) }
    return Option.None
}

fn duplicar(k: int) -> Option<int> {
    let v = buscar(k)?          // Some(42) -> v=42; None -> return None
    return Option.Some(v * 2)
}
```

Mezclar `Option` y `Result` a traves de `?` es **NYX1028**, no una degradacion
muda: un `?` sobre `Option` dentro de una función que devuelve `Result` diria
que el `None` se propagaria como un `Err` sin error adentro (el puente
explicito es `.ok_or(e)?`, ver `ok_or` en §Result/Option Methods); un `?`
sobre `Result` dentro de una función que devuelve `Option` diria que el `Err`
se perderia (el puente es `match` o `unwrap_or`). Ver la tabla de codigos y
§Try-Catch/`?` para el detalle completo.

---

## String Interpolation

Desde v0.24, Nyx soporta interpolacion de strings con `${}`:

```nyx
let name = "Nyx"
let version = 25
print("Hello ${name} v0.${version}!")  // Hello Nyx v0.25!

// Expresiones dentro de ${}
let x = 10
print("${x} * 2 = ${x * 2}")  // 10 * 2 = 20

// Funciona con int, float, bool, String
let pi: float = 3.14
print("pi = ${pi}")  // pi = 3.14
```

La interpolacion se desugarea en el lexer a concatenacion con `+`.

---

## Impl Blocks (Methods)

Desde v0.25, se pueden definir metodos en tipos usando `impl`:

```nyx
struct Point { x: int, y: int }

impl Point {
    fn manhattan(self) -> int {
        return self.x + self.y
    }

    fn add(self, other: Point) -> Point {
        return Point { x: self.x + other.x, y: self.y + other.y }
    }

    fn scale(self, factor: int) -> Point {
        return Point { x: self.x * factor, y: self.y * factor }
    }
}

let p = Point { x: 3, y: 4 }
print(p.manhattan())  // 7

let q = p.scale(2)
print(q.x)  // 6
```

Los metodos se compilan como funciones regulares: `p.method(args)` -> `TypeName_method(p, args)`.

---

## Traits

Desde v0.27, se pueden definir contratos de metodos con `trait` e implementarlos con `impl Trait for Type`:

```nyx
trait Display {
    fn to_string(self) -> String
}

trait Eq {
    fn equals(self, other: Self) -> bool
}

struct Point { x: int, y: int }

impl Display for Point {
    fn to_string(self) -> String {
        return "(" + int_to_string(self.x) + ", " + int_to_string(self.y) + ")"
    }
}

impl Eq for Point {
    fn equals(self, other: Point) -> bool {
        return self.x == other.x and self.y == other.y
    }
}

let p = Point { x: 3, y: 4 }
print(p.to_string())  // (3, 4)
```

### Trait Bounds

Los type params de funciones genericas pueden tener trait bounds:

```nyx
fn print_it<T: Display>(x: T) -> String {
    return x.to_string()
}

let s = print_it<Point>(p)  // "(3, 4)"
```

Si un tipo no implementa el trait requerido, el compilador emite un error.

### Self en Traits

`Self` en parametros y return types se sustituye por el tipo concreto al implementar:

```nyx
trait Eq {
    fn equals(self, other: Self) -> bool  // Self = Point en impl
}
```

### Coexistencia con bare impl

Un tipo puede tener tanto `impl Trait for Type` como bare `impl Type`:

```nyx
impl Point {
    fn manhattan(self) -> int { return self.x + self.y }
}
impl Display for Point {
    fn to_string(self) -> String { ... }
}
```

**Nota**: v0.27 usa static dispatch (no vtables). Dynamic dispatch planificado para v0.28+.

---

## Trait Inheritance

Los traits pueden heredar de otros traits:

```nyx
trait Named {
    fn name(self) -> String
}

trait Describable : Named {
    fn describe(self) -> String {
        return "Object: " + self.name()
    }
}

struct Person { n: String }

impl Describable for Person {
    fn name(self) -> String { return self.n }
    // describe() hereda del trait
}

let p = Person { n: "Alice" }
print(p.describe())  // "Object: Alice"
```

### Multi-Supertrait

```nyx
trait Animal : Named + Printable {
    fn species(self) -> String
}
```

Las bounds de supertrait se heredan transitivamente. Implementar `Animal` automaticamente satisface `Named` y `Printable` bounds.

---

## Generics

Desde v0.26, se soportan funciones y structs genericos via monomorphization:

```nyx
fn identity<T>(x: T) -> T {
    return x
}

let a = identity<int>(42)        // 42
let b = identity<String>("hi")   // "hi"
```

### Generic Structs

```nyx
struct Pair<A, B> {
    first: A,
    second: B
}

let p = Pair<int, String> { first: 42, second: "hello" }
print(int_to_string(p.first))   // 42
print(p.second)                  // hello
```

El compilador genera versiones especializadas (monomorphization): `identity_int`, `Pair_int_String`, etc.

---

## Try Operator

El operador `?` extrae el valor Ok de un Result o retorna Err inmediatamente:

```nyx
enum Result { Ok(int), Err(String) }

fn safe_divide(a: int, b: int) -> Result {
    if b == 0 { return Result.Err("division by zero") }
    return Result.Ok(a / b)
}

fn compute(x: int, y: int) -> Result {
    let a = safe_divide(x, y)?    // extrae Ok o retorna Err
    let b = safe_divide(a, 2)?
    return Result.Ok(b)
}
```

---

## Typed Errors (Result/try_*)

> **Stub honesto** — esta sección cubre el contrato ESENCIAL y verificado, no
> una especificación completa (esa queda fichada para el pre-1.0 freeze).
> Fuente: `LLM.md` §2/§5 y `docs/design/specs/2026-08-11-errores-tipados-design.md`.

`Result<T, E>` es un enum genérico real (builtin en `std/prelude.nx`), no una
convención por módulo: cualquier tipo de payload (`int`, `String`, un struct
propio) funciona de punta a punta en la construcción, el operador `?` y los
métodos (`unwrap`, `unwrap_or`, `map`, `and_then`, etc.).

**La familia `try_*`** es la forma recomendada, en migración módulo por
módulo, para las funciones de la stdlib que antes fallaban con centinelas
mudos (`""`, `-1`, `NULL`) o abortando el proceso. Cubre hoy `std/fs`
(`try_read_file`/`try_write_file`), `std/net` (conexión, E/S y resolución),
`std/http` (`try_http_get`/`try_http_post`/`try_http_request`), `std/json`
(`try_json_parse`), `std/sqlite` (`try_sqlite_open`/`try_sqlite_exec`/
`try_sqlite_query`/`try_sqlite_query_named`) y `std/postgres`, que nace
entero en esta forma (`try_pg_connect`/`try_pg_exec`/`try_pg_query`/…: no
tiene familia vieja con centinelas). Las funciones viejas
equivalentes (`read_file`, `tcp_connect`, `http_get`, etc.) siguen existiendo
por compatibilidad hacia atrás — no tienen `try_*` retirado, conviven.

**`std/error`** provee el shape único para todo error de la stdlib:
`Error { code, kind, msg }`, con `kind` de vocabulario cerrado (`not_found`,
`permission`, `connection`, `parse`, `timeout`, `in_use`, `io`, `invalid`,
`oom`, `eof`, `db`) y `error_to_string(e)` como formato humano.

**La regla de dos niveles**: si quien llama puede razonablemente hacer algo
distinto de loguear y morir, la función devuelve `Result<T, Error>`; si no,
aborta (`unwrap()`, `panic()`).

**Limpieza de scope y `?`**: el camino `Err` del operador `?` pasa por la misma
limpieza de scope que un `return` explícito — `defer` corre y un tipo `#[affine]`
con `impl Drop` (`Box`/`Rc` de `std/owned.nx`) libera — desde v0.27.0 (el emisor
de `?` salta a la etiqueta de cleanup de la función). Verificado por repro el
2026-09-03: `defer { println("cleanup") }` + `let v = fails()?` imprime `cleanup`
antes de devolver `Err`. La nota anterior de esta sección, que afirmaba lo
contrario, era falsa desde su redacción (2026-08-31).

---

## Try-Catch Exception Handling

Nyx soporta manejo de excepciones con bloques `try`/`catch`:

```nyx
try {
    let result = risky_operation()
    print(result)
} catch (e) {
    print("Error: " + e)
}
```

El valor capturado por `catch (e)` es siempre un `String` (ver «`catch (e: T)`: solo `String`» abajo).

### Throw (deprecado — alias de panic)

> **Deprecado desde v0.31.0.** `throw(x)` es un alias de `panic(x)`: mismo canal (`nyx_panic` hace
> `nyx_throw` si hay un `try` activo), mismo `catch`, los mismos límites. `nyx vet` lo marca con
> **W108** (`docs/gotchas/throw-deprecated.md`). Sigue compilando — retirar la sintaxis sería un
> cambio MAJOR — pero el código nuevo debería usar `panic()` para lo irrecuperable y
> `Result<T, E>` para lo esperable.

```nyx
fn divide(a: int, b: int) -> int {
    if b == 0 { throw("division by zero") }
    return a / b
}

try {
    let result = divide(10, 0)
} catch (e) {
    print(e)  // "division by zero"
}
```

### El payload de `throw`/`panic`: `String` o `int` (NYX1026)

El runtime solo transporta un `nyx_string*` — un único slot `_Thread_local`
(`__nyx_exception_msg`, `runtime/runtime.c:359-415`): no hay tag de tipo ni dispatch por tipo.
`throw`/`panic` aceptan `String` (tal cual) o `int` (convertido con `nyx_string_from_int`, como
siempre); cualquier otro tipo de payload — `float`, un struct, o un enum nombrado en el propio call
site, con payload (`throw(Shape.Circle(1))`) o unitario (`throw(Color.Red)`) — es **NYX1026** en
tiempo de compilación:

```
error [NYX1026] in 'main' (line 11): the 'throw' payload must be String or int, got float
```

Antes de NYX1026 (v0.31.0 y anteriores) esto compilaba sin avisar: un payload `float` producía IR
mal tipado que `clang` rechazaba con un error sin línea de usuario (`floating point constant
invalid for type`); `panic(Shape.Circle(1))` era peor — el struct del enum pasaba por el slot
`%nyx_string*` bajo punteros opacos, `clang` no objetaba nada, y el runtime leía el buffer del enum
como si fuera un `nyx_string`: **corrupción de memoria silenciosa**. NYX1026 cierra los dos casos en
semantic, antes de que exista IR.

Un payload cuyo tipo el checker no puede inferir (genérico sin instanciar, `dyn Trait`, o un entero
con tamaño — `i8`..`u64`, el emisor solo convierte `i64`) conserva el free-pass histórico como
`sem_blind` (ceguera VISIBLE bajo `NYX_STRICT=warn`), nunca como aprobado mudo.

### `catch (e: T)`: solo `String` (NYX1027)

La sintaxis de la anotación existe desde siempre, pero el parser la descartaba en silencio y el
catch siempre bindeaba `String` — la anotación era fantasma. Desde v0.31.0, cualquier anotación
distinta de `String` es un diagnóstico:

```
error [NYX1027] in 'main' (line 15): 'catch' only accepts the annotation 'String', got 'MiError'
```

No es una limitación temporal a resolver después: el runtime solo transporta un `String`, y esta
spec **no promete** un catch tipado futuro — es la Opción C de
`docs/design/specs/2026-08-11-errores-tipados-design.md` (excepciones para lo irrecuperable, sin
dispatch por tipo). Para distinguir errores por tipo, usá `Result<T, E>` con `match`.

La anotación del `catch` se limita a un **identificador simple** (`String`): una forma calificada o
genérica (`catch (e: mod.Error)`, `catch (e: Result<int, E>)`) es error de SINTAXIS (NYX0101), no
NYX1027.

### Panic es Catchable

```nyx
try {
    panic("something went wrong")
} catch (e) {
    print("Caught panic: " + e)
}
```

Sin `try-catch`, `panic()` aborta el programa (`exit(1)`). Dentro de un `try-catch`, es atrapable
como cualquier excepción — `nyx_panic` hace `nyx_throw` si hay un try activo
(`runtime/runtime.c:418-425`).

### wasm32-wasi: fail-fast por contrato

`wasi-libc` no tiene `setjmp`/`longjmp`, así que `try`/`catch` no existe en ese target — es una
decisión de diseño (D5 del arco E6), no una limitación temporal: en wasm lo esperable va por
`Result<T, E>` (es un valor, funciona idéntico en ambos targets) y lo irrecuperable mata la
instancia, el modelo estándar de wasm. Dos capas independientes lo garantizan:

- **Compile-time**: `codegen_target_guard(ctx, "try/catch")` rechaza cualquier `try` bajo `make wasm`.
- **Runtime**: si igual se linkea (código viejo, FFI directa), `nyx_try_push()` bajo `__wasi__`
  imprime `error: try/catch is not supported on wasm32-wasi` y hace `exit(1)`, en vez de ofrecer un
  try-catch roto a medias.

### Frontera try-como-aislamiento: el leak de afines bajo `longjmp`

`try`/`catch` es una frontera de **aislamiento de grano grueso** (top-level de un server, un
worker, un test) — no un mecanismo de recuperación *sound*. La implementación es `setjmp`/`longjmp`
puro: un `throw()`/`panic()` catcheado hace `longjmp` directo al `try` más cercano, y `longjmp`
**salta** cualquier código intermedio — incluidos los `defer` y los drops deterministas de T4c que
correrían en una salida normal de función. Consecuencia: **todo valor `#[affine]` con `impl Drop`
(`Box`/`Rc` de `std/owned.nx`) que esté vivo entre el `throw` y el `catch` LEAKEA** — su `Drop`
nunca corre. Es un trade-off documentado, no un bug pendiente: hacerlo *sound* exigiría unwinding
real (landing pads o tablas de cleanup por frame), un proyecto de compilador comparable a T4 entero
(catalogado como T4c en `docs/design/specs/2026-08-11-errores-tipados-design.md` §1.1).

**Contraste con `?`**: el camino `Err` de `?` **no** usa `longjmp` — es un `return` temprano que
pasa por la misma limpieza de scope que un `return` explícito, así que `defer` corre y los afines
con `Drop` se liberan (desde v0.27.0; ver «Typed Errors» arriba). Por eso la regla de dos niveles
importa en la práctica: `Result<T, E>` + `?` para lo esperable (limpieza determinista garantizada) y
`try`/`panic` reservados para lo irrecuperable, donde una frontera de grano grueso alcanza y el leak
es aceptable (el proceso está por morir, o por reiniciar ese worker, de todos modos).

`?` además exige que el `E` del `Result` interno sea el mismo que el `E` de la función que lo usa —
**NYX1025**, ver la tabla de códigos: no hay conversión (`From`) en v1 mientras `Error` sea el
struct único de la std. El puente es explícito: `expr.map_err(f)?` convierte el `E`, con el
receptor bindeado a una variable primero (`let r: Result<T, E1> = expr(); r.map_err(f)?` — la
misma limitación de todo método builtin de Option/Result, ver «el receptor debe ser una variable»
en §Result/Option Methods).

### `?` sobre `Option` y las mezclas (NYX1023/NYX1028, v0.31.0)

`?` funciona igual sobre `Option<T>` dentro de una función que devuelve `Option<U>`: propaga `None`
y entrega el `T` de `Some` (ver §Option<T> arriba para el ejemplo). El operador exige que el
operando y el retorno de la función sean de la MISMA familia (`Result` con `Result`, `Option` con
`Option`) — mezclarlas es un error de compilación, no una degradación silenciosa:

- `Option` operando dentro de una función `-> Result<T, E>` → **NYX1028**, hint `.ok_or(e)?`.
- `Result` operando dentro de una función `-> Option<T>` → **NYX1028**, hint `match` o `unwrap_or`.
- `?` fuera de una función que devuelve `Result` u `Option` → **NYX1023** (mensaje ampliado desde
  v0.31.0: antes solo mencionaba `Result`).

Cuando el tipo del operando o del retorno es desconocido (genérico sin instanciar, `dyn Trait`,
firma sin anotar) el chequeo se apaga (`sem_blind`, ceguera VISIBLE bajo `NYX_STRICT=warn`) — cero
falsos positivos. El arco que agregó esto es E7 (`docs/design/specs/2026-08-11-errores-tipados-design.md`
§5-§6): se ejecutó en su forma mínima (`?` sobre `Option` + `ok_or`); `trait From<T>` para
conversión implícita de `E` heterogéneos sigue fuera de alcance, y solo se retoma si algún dominio
de error diverge del `Error` único.

### Implementacion

- Via `setjmp`/`longjmp` en el runtime C (no disponible en wasm32-wasi, ver arriba)
- Los bloques `try` crean un try-catch frame en una pila `_Thread_local` de 64 niveles
- `throw()`/`panic()` catcheado ejecutan `longjmp` al frame mas cercano — LIFO ordering: bloques
  anidados funcionan como se espera
- `catch (e)` bindea siempre un `String` (`nyx_get_exception()`)

---

## Conversiones de Tipo

```nyx
// int <-> float
let f = int_to_float(42)     // 42.0
let i = float_to_int(3.99)   // 3 (trunca)

// int/float/char -> String
let s1 = int_to_string(42)       // "42"
let s2 = float_to_string(3.14)   // "3.14"
let s3 = char_to_string('A')     // "A"
```

---

## File I/O

```nyx
// Escribir
write_file("output.txt", "Hola Nyx!")

// Leer
let contenido = read_file("input.txt")

// Verificar existencia
if file_exists("archivo.txt") {
    print("Existe")
}
```

---

## FFI (Foreign Function Interface)

Se pueden declarar funciones externas de C directamente en Nyx:

```nyx
extern "C" fn abs(x: int) -> int
extern "C" fn sqrt(x: float) -> float
extern "C" fn puts(s: String) -> int
```

### Uso
```nyx
extern "C" fn llabs(x: int) -> int

fn main() -> int {
    let result: int = llabs(-42)
    print(result)  // 42
    return 0
}
```

### Mapping de tipos
| Nyx | C / LLVM |
|-----|----------|
| `int` | `i64` |
| `float` | `double` |
| `bool` | `i1` |
| `String` | `i8*` (via `nyx_string_to_cstr`) |
| `void` | `void` |

Para parametros `String`, el compilador automaticamente convierte `%nyx_string*` a `i8*` via `nyx_string_to_cstr` antes de la llamada.

El compilador emite `declare <ret> @<name>(<params>)` en el IR y registra la funcion para que pueda ser llamada normalmente.

---

## Const Declarations

Se pueden declarar constantes evaluadas en compile-time:

```nyx
const MAX = 100
const PI: float = 3.14159
const DEBUG: bool = true
const GREETING = "hello"
```

### Semantica
- Los valores literales (int, float, bool, string) se evaluan en compile-time
- En uso, los valores se insertan directamente (inline) sin generar `alloca`
- Se pueden declarar tanto en scope global como local
- Type annotation es opcional (se infiere del literal)

```nyx
const MAX: int = 100

fn main() -> int {
    const LOCAL_VAL = 42
    print(MAX + LOCAL_VAL)  // 142
    return 0
}
```

### Nota
Para expresiones complejas (llamadas a funciones, etc.), el compilador hace fallback a evaluacion en runtime con `alloca`, pero el valor sigue siendo inmutable.

---

## Typed For-In

El loop `for-in` acepta una type annotation opcional para el elemento:

```nyx
struct Point { x: int, y: int }
let points: Array = [Point{x: 1, y: 2}, Point{x: 3, y: 4}]

var sum = 0
for p: Point in points {
    sum = sum + p.x + p.y
}
print(sum)  // 10
```

Esto resuelve el problema de que sin annotation, los elementos de arrays se tratan como `i64` crudo. Con type annotation, el codegen hace la conversion correcta:
- Structs/Strings/Arrays: `inttoptr i64 → %Type*`, luego load
- Floats: `bitcast i64 → double`
- Int/Bool: uso directo

---

## Test Framework

Nyx incluye un framework de testing integrado:

```nyx
test "arithmetic" {
    assert(2 + 2 == 4)
    assert(10 - 3 == 7)
}

test "strings" {
    let s = "hello"
    assert(s.length() == 5, "length should be 5")
}
```

### Sintaxis
- `test "name" { body }` — declara un test con nombre y cuerpo
- `assert(condition)` — verifica que la condicion sea true
- `assert(condition, "message")` — assert con mensaje custom

### Ejecucion
Cuando un archivo contiene bloques `test`, el compilador genera automaticamente:
- Una funcion `__test_N()` por cada test
- Un `main()` auto-generated que ejecuta todos los tests y reporta resultados
- La variable global `@__nyx_test_failed` (definida en runtime.c) se usa para tracking

### Uso
```bash
make run FILE=tests/test-46-test-framework.nx
```

---

## Modulos e Imports

### Exportar
```nyx
// my_math.nx
export fn cube(x: int) -> int {
    return x * x * x
}

export fn factorial(n: int) -> int {
    if n <= 1 { return 1 }
    return n * factorial(n - 1)
}
```

### Importar
```nyx
import { cube, factorial } from "my_math"

fn main() {
    print(cube(3))       // 27
    print(factorial(5))  // 120
}
```

El driver auto-carga `std/prelude.nx` para programas de usuario. Los imports se resuelven leyendo e inlineando el modulo importado.

### Resolucion de paths

El compilador busca modulos en este orden:
1. Project-relative: `NYX_PROJECT_DIR/path.nx`
2. Installed packages: `packages/pkg-name/rest.nx` (cuando el primer componente del path no es `std/`, `src/`, o `compiler/`)
3. CWD-relative: `path.nx`
4. Standard library: `std/path.nx`

Los imports duplicados se detectan y se cargan una sola vez. Cuando un archivo proviene de `packages/PKG/`, sus imports internos como `import "src/foo"` se reescriben automaticamente a `import "PKG/src/foo"` para resolucion transitiva correcta.

### Package Manager

```bash
# Initialize a new project
nyx init my-project
# Creates: nyx.toml, src/main.nx

# Build project (reads nyx.toml, resolves deps)
nyx build

# Run project
nyx run

# Add a dependency
nyx add nyx-db
```

Project configuration in `nyx.toml`:
```toml
[package]
name = "my-project"
version = "0.1.0"
main = "src/main.nx"

[dependencies]
nyx-db = "*"
```

Dependencies are cloned to `packages/` (project-local) from `github.com/nyxlang-dev/<name>` by default. Lock file `nyx.lock` is generated for reproducible builds.

```nyx
// After: nyx add nyx-db
import "nyx-db/src/query"

fn main() {
    db_query("CREATE TABLE t (id INT PRIMARY KEY, name TEXT)")
}
```

---

## Bitwise Operators

Nyx soporta operadores bit a bit con precedencia C-style:

### Operadores
```nyx
let a = 0xFF
let b = 0x0F

a & b      // AND: 0x0F
a | b      // OR: 0xFF
a ^ b      // XOR: 0xF0
~a         // NOT (bitwise complement)
a << 4     // Shift left: 0xFF0
a >> 4     // Shift right: 0x0F
```

### Compound Assignment
```nyx
var x = 0xFF
x &= 0x0F     // x = x & 0x0F
x |= 0xF0     // x = x | 0xF0
x ^= 0xFF     // x = x ^ 0xFF
x <<= 2       // x = x << 2
x >>= 1       // x = x >> 1
```

Los operadores bitwise tienen precedencia entre comparacion y aritmetica, siguiendo el estandar C.

---

## String Methods

Los strings exponen metodos adicionales:

```nyx
let s = "  Hello World  "

s.trim()                    // "Hello World"
s.toUpper()                 // "  HELLO WORLD  "
s.toLower()                 // "  hello world  "

let t = "hello world"
t.replace("world", "nyx")  // "hello nyx"
t.repeat(3)                 // "hello worldhello worldhello world"
t.startsWith("hello")       // true
t.endsWith("world")         // true
t.indexOf("world")          // 6
```

Estos metodos se implementan en el runtime C y se despachan via `codegen_method_call`.

---

## Array Methods

Los arrays exponen metodos adicionales:

```nyx
let arr = [10, 20, 30, 40, 50]

arr.slice(1, 3)            // [20, 30]
arr.reverse()              // [50, 40, 30, 20, 10]
arr.indexOf(30)            // 2
arr.join(", ")             // "10, 20, 30, 40, 50"
arr.insert(2, 25)          // inserts 25 at index 2
let removed = arr.remove(0) // removes and returns element at index 0
```

---

## Terminal I/O

Built-in functions for terminal interaction (raw mode, byte-level I/O, terminal size detection):

```nyx
raw_mode_enter()              // activate raw mode (disables line buffering, echo)
defer { raw_mode_exit() }     // restore terminal on function exit (LIFO)

let byte = read_byte()        // read single byte from stdin (-1 on EOF)
let b = read_byte_timeout(50) // poll()-based: byte, -1 EOF/error, -2 timeout or
                              // signal (EINTR). ms < 0 = infinite. Unlike a blocking
                              // read (restarted by SA_RESTART), poll() wakes on
                              // signals — enables SIGWINCH-driven live resize.
let ch = chr(65)              // int to String: "A" (inverse of charAt)

let cols = term_cols()         // terminal width (ioctl TIOCGWINSZ, default 80)
let rows = term_rows()         // terminal height (ioctl TIOCGWINSZ, default 24)

term_write(s)                  // write to stdout WITHOUT flush (buffered rendering:
term_flush()                   // build a frame, emit once, flush once)
```

These builtins are implemented in `runtime/runtime.c` and declared in the compiler's semantic analysis.

---

## Sized Numeric Types

Nyx soporta tipos numericos de ancho fijo:

```nyx
let a: i8 = 127
let b: i16 = 32767
let c: i32 = 2147483647
let d: u8 = 255
let e: u16 = 65535
let f: u32 = 4294967295
let g: u64 = 18446744073709551615
let h: f32 = 3.14
let i: usize = 42
```

| Nyx Type | LLVM Type | Rango |
|----------|-----------|-------|
| `i8` | `i8` | -128 a 127 |
| `i16` | `i16` | -32768 a 32767 |
| `i32` | `i32` | -2^31 a 2^31-1 |
| `u8` | `i8` | 0 a 255 |
| `u16` | `i16` | 0 a 65535 |
| `u32` | `i32` | 0 a 2^32-1 |
| `u64` | `i64` | 0 a 2^64-1 |
| `f32` | `float` | IEEE 754 single |
| `usize` | `i64` | Platform pointer size |

---

## Cast Operator

El operador `as` permite conversiones explicitas entre tipos:

```nyx
let x: int = 42
let y: i32 = x as i32        // truncate i64 -> i32
let z: float = x as float    // sitofp i64 -> double
let w: i8 = 200 as i8        // truncate to i8

let f: float = 3.14
let i: int = f as int         // fptosi double -> i64
let g: f32 = f as f32         // fptrunc double -> float
```

El compilador selecciona la instruccion LLVM correcta (trunc, zext, sext, fptrunc, fpext, sitofp, fptosi) segun los tipos de origen y destino.

---

## sizeof/alignof

Se pueden consultar tamaños y alineamientos de tipos en compile-time:

```nyx
let size = sizeof(int)       // 8 (bytes)
let align = alignof(int)     // 8
let ps = sizeof(Point)       // suma de campos
```

Ambos se evaluan en compile-time y se insertan como constantes.

---

## Raw Pointers & Unsafe

Nyx soporta raw pointers y bloques unsafe:

```nyx
var x: int = 42
let ptr: *int = &x           // address-of
let val: int = *ptr           // dereference

unsafe {
    let p: *int = alloc(8)    // allocate 8 bytes
    *p = 100                  // write via pointer
    let v: int = *p           // read via pointer
    free(p)                   // deallocate
}
```

### Pointer Types
```nyx
*int      // pointer to int
*String   // pointer to String
*Point    // pointer to struct
```

Las operaciones de raw pointer (`&x`, `*ptr`, `alloc`, `free`) requieren estar dentro de un bloque `unsafe`.

---

## Manual Memory

Se puede gestionar memoria manualmente:

```nyx
unsafe {
    let ptr: *int = alloc(8)   // malloc(8)
    *ptr = 42
    print(*ptr)                // 42
    free(ptr)                  // free()
}
```

### Static Variables
```nyx
static var counter: int = 0

fn increment() -> int {
    counter = counter + 1
    return counter
}
```

Las `static var` se compilan como globals LLVM con initializer. Persisten durante toda la ejecucion del programa.

---

## FFI Structs

Los structs pueden tener layout compatible con C:

```nyx
#[repr(C)]
struct TimeVal {
    tv_sec: i64,
    tv_usec: i64
}
```

Los structs con `#[repr(C)]` se alocan en el stack (no en el heap con GC) y tienen layout identico al de C.

---

## Inline Assembly

Se puede emitir ensamblador inline:

```nyx
unsafe {
    asm("nop")
    asm("mov $42, %rax")
}
```

Se compila a LLVM inline assembly. Requiere bloque `unsafe`.

---

## Volatile & Atomic

Se soportan operaciones volatile y atomicas:

```nyx
unsafe {
    let ptr: *int = alloc(8)
    volatile_write(ptr, 42)
    let v: int = volatile_read(ptr)

    atomic_store(ptr, 100)
    let a: int = atomic_load(ptr)
    free(ptr)
}
```

- `volatile_read/write`: load/store con flag volatile (no se reordenan ni eliminan)
- `atomic_load/store`: operaciones atomicas con ordering seq_cst

---

## Typed Closures

Las closures pueden tener type annotations completas:

```nyx
let add: Fn(int, int) -> int = fn(a: int, b: int) -> int { return a + b }

fn apply(f: Fn(int) -> int, x: int) -> int {
    return f(x)
}

fn map_ints(arr: Array, f: Fn(int) -> int) -> Array {
    var result = []
    for i in 0..arr.length() {
        result.push(f(arr[i]))
    }
    return result
}
```

El compilador verifica aridad y tipos de los argumentos en las llamadas indirectas. El tipo bare `Fn` sigue funcionando como `i8*` sin verificacion.

---

## Typed Arrays

Los arrays soportan type parameters:

```nyx
let nums: Array<int> = [1, 2, 3]
let names: Array<String> = ["alice", "bob"]
```

El compilador trackea el tipo del elemento en compile-time y hace auto-coercion en acceso por indice y en for-in loops.

---

## Dynamic Dispatch

Nyx soporta dynamic dispatch via `dyn Trait`:

```nyx
trait Shape {
    fn area(self) -> int
}

struct Circle { radius: int }
struct Rect { w: int, h: int }

impl Shape for Circle {
    fn area(self) -> int { return self.radius * self.radius * 3 }
}

impl Shape for Rect {
    fn area(self) -> int { return self.w * self.h }
}

fn print_area(s: dyn Shape) {
    print(s.area())
}

let c = Circle { radius: 5 }
print_area(c)  // auto-upcasting: Circle -> dyn Shape
```

Internamente, `dyn Trait` es un fat pointer `{data_ptr, vtable_ptr}`. El compilador genera vtables con thunks para cada `impl Trait for Type` y hace auto-upcasting en los call sites.

---

## Advanced Pattern Matching

El pattern matching soporta features avanzadas:

### Match Guards
```nyx
fn classify(n: int) -> String {
    return match n {
        x if x < 0 => "negative",
        0 => "zero",
        x if x > 100 => "large",
        _ => "normal"
    }
}
```

### OR Patterns
```nyx
enum Color { Red, Green, Blue, Yellow }

fn is_warm(c: Color) -> bool {
    return match c {
        Color.Red | Color.Yellow => true,
        _ => false
    }
}
```

### Struct Patterns
```nyx
struct Point { x: int, y: int }

fn describe(p: Point) -> String {
    return match p {
        Point { x: 0, y: 0 } => "origin",
        Point { x, y } => "(" + int_to_string(x) + ", " + int_to_string(y) + ")"
    }
}
```

### Nested Patterns
```nyx
fn unwrap_nested(o: Option<Option<int>>) -> int {
    return match o {
        Option.Some(Option.Some(v)) => v,
        _ => 0
    }
}
```

---

## pub Keyword

`pub` es sinonimo de `export`:

```nyx
pub fn greet(name: String) -> String {
    return "Hello " + name
}

pub struct Config {
    debug: bool,
    verbose: bool
}

pub enum Level { Info, Warn, Error }
```

---

## Module Imports with Namespaces

Se pueden importar modulos con alias para acceso calificado:

```nyx
import "mylib" as lib

fn main() -> int {
    let result = lib.compute(42)
    print(lib.VERSION)
    return 0
}
```

Solo los items marcados con `pub` o `export` son accesibles via namespace dispatch. Las variables locales tienen precedencia sobre los aliases de namespace.

---

## panic

`panic()` aborta la ejecucion con un mensaje:

```nyx
fn divide(a: int, b: int) -> int {
    if b == 0 {
        panic("division by zero")
    }
    return a / b
}
```

Imprime el mensaje a stderr y termina con `exit(1)`.

---

## Result/Option Methods

`Result<T,E>` y `Option<T>` tienen metodos builtin:

### Result Methods
```nyx
let r: Result<int, String> = Result.Ok(42)

r.is_ok()                    // true
r.is_err()                   // false
r.unwrap()                   // 42
r.unwrap_or(0)               // 42
r.unwrap_err()               // panic si es Ok
r.map(fn(x: int) -> int { return x * 2 })    // Ok(84)
r.map_err(fn(e: String) -> String { return "Error: " + e })
r.and_then(fn(x: int) -> Result<int, String> { return Result.Ok(x + 1) })
```

### Option Methods
```nyx
let o: Option<int> = Option.Some(42)

o.is_some()                  // true
o.is_none()                  // false
o.unwrap()                   // 42
o.unwrap_or(0)               // 42
o.map(fn(x: int) -> int { return x * 2 })     // Some(84)
o.and_then(fn(x: int) -> Option<int> { return Option.Some(x + 1) })
o.ok_or("sin valor")         // Result<int, String>: Ok(42) — None daria Err("sin valor")
```

`ok_or(e)` (v0.31.0) existe SOLO en `Option` y es el puente explicito a
`Result`: `Some(x).ok_or(e)` = `Ok(x)`, `None.ok_or(e)` = `Err(e)`, con `e` de
cualquier tipo `E` — el resultado se tipa `Result<T, E>`. Es la forma de
propagar una ausencia desde una funcion que devuelve `Result`, donde `?` sobre
un `Option` es error (NYX1028):

```nyx
fn leer(k: int) -> Result<int, Error> {
    let o: Option<int> = buscar(k)
    let v = o.ok_or(err_new(2, "not_found", "sin clave"))?
    return Result.Ok(v * 2)
}
```

`T` puede ser cualquier tipo — `int`, `String`, un struct — y el `?` lo entrega
decodificado tanto encadenado (`o.ok_or(e)?`) como en dos pasos (`let r:
Result<T, E> = o.ok_or(e)` y despues `r?`).

Como todo metodo builtin de `Option`/`Result`, el receptor tiene que ser una
VARIABLE (`let o: Option<int> = ...`), no el resultado directo de una llamada.

---

## Iterators

Nyx soporta iterators lazy y chainables:

### Crear un Iterator
```nyx
let arr = [1, 2, 3, 4, 5]
let it: Iterator = arr.iter()
```

### Adapters (lazy, no ejecutan hasta un terminal)
```nyx
arr.iter().map(fn(x: int) -> int { return x * 2 })
arr.iter().filter(fn(x: int) -> bool { return x > 2 })
arr.iter().take(3)
arr.iter().skip(2)
arr.iter().enumerate()       // yields (index, value) pairs
arr.iter().chain(other.iter())
```

### Terminals (ejecutan la cadena)
```nyx
arr.iter().collect()         // -> Array
arr.iter().sum()             // -> int
arr.iter().count()           // -> int
arr.iter().fold(0, fn(acc: int, x: int) -> int { return acc + x })
arr.iter().any(fn(x: int) -> bool { return x > 3 })
arr.iter().all(fn(x: int) -> bool { return x > 0 })
```

### For-in con iterators
```nyx
for x in arr.iter().filter(fn(x: int) -> bool { return x > 2 }).map(fn(x: int) -> int { return x * 10 }) {
    print(x)  // 30, 40, 50
}
```

### Chaining completo
```nyx
let result = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    .iter()
    .filter(fn(x: int) -> bool { return x % 2 == 0 })
    .map(fn(x: int) -> int { return x * x })
    .take(3)
    .collect()
// result = [4, 16, 36]
```

---

## Default Methods

Los traits pueden tener metodos con implementacion por defecto:

```nyx
trait Greeter {
    fn name(self) -> String

    fn greeting(self) -> String {
        return "Hello, " + self.name() + "!"
    }
}

struct Person { n: String }

impl Greeter for Person {
    fn name(self) -> String { return self.n }
    // greeting() usa la implementacion por defecto
}

let p = Person { n: "Alice" }
print(p.greeting())  // "Hello, Alice!"
```

Los impls pueden sobreescribir metodos default o heredar la implementacion del trait.

---

## Multi-Bounds

Los type params genericos soportan multiples trait bounds:

```nyx
trait Display {
    fn to_string(self) -> String
}

trait Printable {
    fn print_self(self)
}

fn show<T: Display + Printable>(x: T) {
    x.print_self()
    print(x.to_string())
}
```

---

## Associated Types

Los traits pueden declarar tipos asociados:

```nyx
trait Container {
    type Item

    fn get(self, index: int) -> Self.Item
}

struct IntList { data: Array }

impl Container for IntList {
    type Item = int

    fn get(self, index: int) -> int {
        let val: int = self.data[index]
        return val
    }
}
```

---

## Where Clauses

Las funciones genericas soportan `where` clauses:

```nyx
fn print_all<T>(items: Array) where T: Display {
    for i in 0..items.length() {
        let item: T = items[i]
        print(item.to_string())
    }
}
```

Las `where` clauses son equivalentes a inline bounds (`T: Display`) pero mejoran la legibilidad cuando hay multiples constraints.

---

## Operator Overloading

Los operadores se pueden sobrecargar via traits:

```nyx
struct Vec2 { x: int, y: int }

impl Add for Vec2 {
    fn add(self, other: Vec2) -> Vec2 {
        return Vec2 { x: self.x + other.x, y: self.y + other.y }
    }
}

impl PartialEq for Vec2 {
    fn eq(self, other: Vec2) -> bool {
        return self.x == other.x and self.y == other.y
    }
}

impl Neg for Vec2 {
    fn neg(self) -> Vec2 {
        return Vec2 { x: -self.x, y: -self.y }
    }
}

let a = Vec2 { x: 1, y: 2 }
let b = Vec2 { x: 3, y: 4 }
let c = a + b              // Vec2 { x: 4, y: 6 }
let d = -a                 // Vec2 { x: -1, y: -2 }
print(a == b)              // false
```

### Traits disponibles en prelude
| Trait | Metodo | Operador |
|-------|--------|----------|
| `Add` | `add(self, other: Self) -> Self` | `+` |
| `Sub` | `sub(self, other: Self) -> Self` | `-` |
| `Mul` | `mul(self, other: Self) -> Self` | `*` |
| `Div` | `div(self, other: Self) -> Self` | `/` |
| `Rem` | `rem(self, other: Self) -> Self` | `%` |
| `Neg` | `neg(self) -> Self` | unary `-` |
| `PartialEq` | `eq(self, other: Self) -> bool` | `==`, `!=` |
| `PartialOrd` | `lt(self, other: Self) -> bool` | `<`, `>`, `<=`, `>=` |

---

## Pointer Arithmetic

Los raw pointers soportan aritmetica:

```nyx
unsafe {
    let arr: *int = alloc(24)   // 3 * sizeof(int)
    *arr = 10
    let p1 = arr + 1
    *p1 = 20
    let p2 = arr + 2
    *p2 = 30

    let diff = p2 - arr         // 2 (distancia en elementos)
    print(p1 == p2)             // false
    print(arr < p2)             // true
}
```

- `ptr + n` / `ptr - n`: avanza/retrocede n elementos via GEP
- `ptr - ptr`: distancia en elementos (ptrtoint + sub + sdiv)
- `==`, `!=`, `<`, `>`, `<=`, `>=`: comparaciones de punteros

---

## Buffered I/O

Nyx soporta I/O con buffers (ademas del simple read_file/write_file):

```nyx
let f: File = file_open("data.txt", "w")
file_write_string(f, "line 1\n")
file_write_string(f, "line 2\n")
file_flush(f)
file_close(f)

let f2: File = file_open("data.txt", "r")
let line1: String = file_read_line(f2)
let line2: String = file_read_line(f2)
file_close(f2)
```

### Funciones
| Funcion | Descripcion |
|---------|-------------|
| `file_open(path, mode)` | Abre archivo, retorna `File` handle |
| `file_close(f)` | Cierra archivo |
| `file_read_line(f)` | Lee una linea |
| `file_write_string(f, s)` | Escribe string |
| `file_seek(f, pos)` | Mueve cursor a posicion |
| `file_tell(f)` | Retorna posicion actual |
| `file_flush(f)` | Flush del buffer |
| `mkdir(path)` | Crea directorio |
| `readdir(path)` | Lista directorio -> Array |
| `remove_file(path)` | Elimina archivo |

---

## Map Iteration

Los Maps soportan iteracion sobre keys y values:

```nyx
var m = Map.new()
m.insert("a", 1)
m.insert("b", 2)
m.insert("c", 3)

let keys: Array = m.keys()       // ["a", "b", "c"]
let vals: Array = m.values()     // [1, 2, 3]

for k: String in keys {
    print(k)
}
```

---

## Networking

Nyx soporta networking TCP y UDP:

### TCP Server
```nyx
let server = tcp_listen(8080)
let client = tcp_accept(server)
let data: String = tcp_read(client, 1024)
tcp_write(client, "HTTP/1.1 200 OK\r\n\r\nHello!")
tcp_close(client)
tcp_close(server)
```

### TCP Client
```nyx
let sock = tcp_connect("example.com", 80)
tcp_write(sock, "GET / HTTP/1.1\r\nHost: example.com\r\n\r\n")
let response: String = tcp_read(sock, 4096)
tcp_close(sock)
```

### UDP
```nyx
let sock = udp_bind(9090)
udp_sendto(sock, "hello", "127.0.0.1", 9091)
let data: String = udp_recvfrom(sock, 1024)
tcp_close(sock)
```

### DNS
```nyx
let ip: String = resolve("example.com")    // "93.184.216.34"
```

---

## Threading

Nyx soporta threads, mutexes y channels:

### Threads
```nyx
fn worker() -> int {
    return 42
}

let t = thread_spawn(worker)
let result: int = thread_join(t)
print(result)  // 42
```

### Mutex
```nyx
let m = mutex_new()
mutex_lock(m)
// seccion critica
mutex_unlock(m)
mutex_destroy(m)
```

### Channels
```nyx
let ch = channel_new()
channel_send(ch, 42)
let val: int = channel_recv(ch)
channel_destroy(ch)
```

---

## Process/OS

Nyx puede interactuar con el sistema operativo:

```nyx
// Ejecutar comando shell — captura stdout, strip de los '\n' finales
// (semántica $( ) de shell). stderr NO se captura (va a la terminal).
let output: String = exec("echo hello")
print(output)  // "hello"

// Exit code del comando (no captura stdout)
let code: int = exec_code("some_cmd")

// Variables de entorno
setenv("MY_VAR", "hello")
let val: String = getenv("MY_VAR")  // "hello"

// Argumentos de linea de comandos
let args: Array = get_args()

// Terminar con codigo de salida
exit(0)
```

### Process Control (v0.12.0)

Primitivas POSIX para control de procesos, pipes y file descriptors:

```nyx
// Fork + exec
let pid: int = fork()
if pid == 0 {
    // Child process
    execvp("/usr/bin/ls", ["ls", "-la"])
    exit(126)
}
let status: int = waitpid(pid, 0)  // 0=block, 1=WNOHANG

// Pipes
let fds: Array = pipe_new()  // [read_fd, write_fd]
close_fd(fds[0])
close_fd(fds[1])

// File descriptors
let fd: int = open_fd("/tmp/out.txt", 1)  // 0=read, 1=write, 2=append
dup2(fd, 1)  // redirect stdout to fd
close_fd(fd)

// Filesystem
let cwd: String = getcwd()
chdir("/tmp")
let info: Array = stat("/tmp")  // [size, mode, mtime, is_dir, is_file]

// Process info
let my_pid: int = getpid()
let is_tty: int = isatty(0)  // 1=terminal, 0=not
kill_process(pid, 15)  // send signal (15=SIGTERM)
```

| Builtin | Firma | Descripcion |
|---------|-------|-------------|
| `fork()` | `-> int` | Fork proceso. Child=0, parent=pid, error=-1 |
| `execvp(prog, args)` | `(String, Array) -> int` | Reemplaza proceso con programa |
| `waitpid(pid, opts)` | `(int, int) -> int` | Espera hijo. opts: 0=block, 1=WNOHANG |
| `dup2(old_fd, new_fd)` | `(int, int) -> int` | Redirige file descriptor |
| `pipe_new()` | `-> Array` | Crea pipe [read_fd, write_fd] |
| `close_fd(fd)` | `(int) -> int` | Cierra file descriptor |
| `open_fd(path, mode)` | `(String, int) -> int` | Abre archivo raw (0=r, 1=w, 2=a) |
| `getcwd()` | `-> String` | Directorio actual |
| `chdir(path)` | `(String) -> int` | Cambiar directorio |
| `stat(path)` | `(String) -> Array` | [size, mode, mtime, is_dir, is_file] |
| `isatty(fd)` | `(int) -> int` | 1 si es terminal, 0 si no |
| `getpid()` | `-> int` | PID del proceso |
| `kill_process(pid, sig)` | `(int, int) -> int` | Enviar signal |

> **GC Safety**: After `fork()`, the child must call `execvp()` immediately without allocating GC memory. The fork+exec pattern is safe.

---

## JSON

Nyx incluye un parser/serializer JSON puro (en `std/json.nx`):

```nyx
// Parse
let data: Map = json_parse("{\"name\": \"nyx\", \"version\": 5}")
let name: String = data.get("name")    // "nyx"

// Stringify
var obj = Map.new()
obj.insert("language", "nyx")
obj.insert("version", 52)
let json: String = json_stringify(obj)
print(json)  // {"language":"nyx","version":52}
```

Soporta: strings, numeros (int/float), booleans, null, arrays y objetos anidados.

---

## HTTP

Nyx incluye una libreria HTTP pura (en `std/http.nx`) construida sobre TCP:

### HTTP Server
```nyx
import "std/http" as http

// The handler receives the request as an ARRAY (NOT a Map):
//   ["request", method, path, headers_pairs, body]
//   req[1]=method, req[2]=path, req[3]=headers (as [k,v] pairs), req[4]=body
pub fn handler(req: Array) -> String {
    let method: String = req[1]
    let path: String = req[2]
    if path == "/" {
        return http.http_response(200, "Hello from Nyx!")
    }
    return http.http_response(404, "Not Found")
}

fn main() -> int {
    // Returns -1 if the bind fails (port taken); never returns on success
    if http.http_serve(8080, handler) < 0 {
        return 1
    }
    return 0
}
```

### HTTP Client
```nyx
let resp: String = http_get("http://example.com/api")
let resp2: String = http_post("http://example.com/api", "{\"key\":\"value\"}")

let url: Map = http_parse_url("http://example.com:8080/path?q=1")
// url.get("host") = "example.com", url.get("port") = "8080", url.get("path") = "/path?q=1"
```

---

## DateTime

El contrato (reescrito 2026-08-11 contra el runtime real — la versión
anterior documentaba una API que no existía): los **productores de epoch**
son `time_epoch()` y `datetime_parse()`; los **accesores y formatters
toman ese epoch** (int, segundos); las funciones que devuelven fechas
legibles devuelven **String**.

```nyx
// Productores de epoch (int, segundos desde 1970)
let epoch: int = time_epoch()                              // ahora
let parsed: int = datetime_parse("2026-03-18", "%Y-%m-%d") // -1 si no parsea

// Formatters (devuelven String)
let now_s: String = datetime_now()                    // "YYYY-MM-DD HH:MM:SS" de ahora
let hoy: String = datetime_format("%Y-%m-%d")         // formatea AHORA (ignora todo instante previo)
let s: String = datetime_format_epoch(parsed, "%d/%m/%Y")  // formatea EL EPOCH DADO
let s2: String = datetime_from_epoch(1234567890)      // "YYYY-MM-DD HH:MM:SS" del epoch

// Accesores (toman epoch int)
let year: int = datetime_year(epoch)
let month: int = datetime_month(epoch)    // 1-12
let day: int = datetime_day(epoch)
let hour: int = datetime_hour(epoch)
let minute: int = datetime_minute(epoch)
let second: int = datetime_second(epoch)
let weekday: int = datetime_weekday(epoch)  // 0=Sunday, 6=Saturday
```

---

## Crypto

Nyx incluye funciones criptograficas:

```nyx
let data = "hello world"
let sha = sha256(data)     // hex string
let md = md5(data)         // hex string

print(sha)  // "b94d27b9934d3e08a52e52d7da7dabfac484efe37a5380ee9088f7ace2efcde9"
print(md)   // "5eb63bbbe01eeed093cb22bb8f5acdc3"
```

Implementacion pura en C, sin dependencias externas para SHA256/MD5.

### HMAC-SHA256

```nyx
let key = "my-secret-key"
let message = "data to sign"
let signature: String = hmac_sha256(key, message)  // hex string

print(signature)  // 64-char hex digest
```

Used for JWT signing, API authentication, and webhook verification. Implemented in `runtime/crypto.c`.

### Primitivas en bytes crudos y comparacion en tiempo constante (v0.31.0)

`sha256`/`hmac_sha256` devuelven **hex**, que es lo que hace falta para imprimir o
firmar una cabecera. Un protocolo que **compone** hashes (SCRAM-SHA-256, HKDF, PBKDF2)
opera sobre los 32 **bytes** del digest: pasarle el hex produce un resultado que el otro
extremo rechaza sin explicar por que. Para eso estan las variantes `_raw`, builtins
globales (sin `import`), todas en `runtime/crypto.c`:

```nyx
let d: String = sha256_raw(data)                 // los 32 bytes del digest, no hex
let m: String = hmac_sha256_raw(key, data)       // los 32 bytes del HMAC, no hex

// PBKDF2-HMAC-SHA256 (RFC 2898 5.2): coste configurable, dklen bytes crudos.
let dk: String = pbkdf2_hmac_sha256(password, salt, 4096, 32)

// Compara SIEMPRE todos los bytes, sin cortar en la primera diferencia.
if constant_time_eq(hash_guardado, hash_calculado) { ... }
```

| Builtin | Firma | Nota |
|---------|-------|------|
| `sha256_raw` | `(input: String) -> String` | 32 bytes crudos |
| `hmac_sha256_raw` | `(key: String, data: String) -> String` | 32 bytes crudos |
| `pbkdf2_hmac_sha256` | `(pw: String, salt: String, iters: int, dklen: int) -> String` | `dklen` bytes crudos; `iters <= 0`, `dklen <= 0` o `dklen > 1 MiB` devuelven `""` |
| `constant_time_eq` | `(a: String, b: String) -> bool` | La diferencia de LARGO si se filtra (inevitable sin padding) y no es el secreto |

`constant_time_eq` existe porque un `==` normal corta en la primera diferencia y filtra
por timing cuanto prefijo coincide — justo lo que hace falta para adivinar un hash o un
token byte por byte. Usarlo para comparar cualquier secreto (hash de contrasena, token
de sesion, firma de webhook).

> El material aleatorio de estas primitivas (salts, nonces) sale de `csprng_bytes`
> (`std/webpushcrypto`, envoltorio sobre `RAND_bytes` de OpenSSL), NO de `random_bytes`
> (`std/random`), que es un PRNG `xorshift64` de 64 bits de estado y no resiste la
> reconstruccion del estado a partir de unas pocas salidas observadas.

---

## TLS/HTTPS

Nyx soporta HTTPS via OpenSSL:

```nyx
// GET/POST simples (sin cabeceras custom). https_get devuelve el body como String.
let response: String = https_get("https://example.com/api")
let resp2: String = https_post("https://example.com/api", "{\"key\":\"value\"}", "application/json")

// Con cabeceras / metodo custom (HTTP o HTTPS) — usar std/http http_request
// (p.ej. un User-Agent obligatorio). Devuelve ["response", status, headers, body].
import "std/http" as http
let r: Array = http.http_request("GET", "https://example.com/api",
                                 ["User-Agent", "myapp/1.0"], "")
let body: String = http.http_body(r)

// Conexion manual
let tls_sock = tls_connect("example.com", 443)
tls_write(tls_sock, "GET / HTTP/1.1\r\nHost: example.com\r\n\r\n")
let data: String = tls_read(tls_sock, 4096)
tls_close(tls_sock)
```

Requiere OpenSSL instalado (`libssl-dev`, `libcrypto`).

---

## Logging

Nyx incluye un framework de logging (`std/log.nx`):

```nyx
log_debug("debug message")
log_info("info message")
log_warn("warning message")
log_error("error message")

log_set_level(LOG_WARN)  // cambiar nivel minimo
```

Niveles: `LOG_DEBUG`, `LOG_INFO`, `LOG_WARN`, `LOG_ERROR`.

---

## Collections

`std/collections.nx` proporciona operaciones de Set:

```nyx
var s = set_new()
set_add(s, "apple")
set_add(s, "banana")
set_add(s, "apple")  // duplicado

set_has(s, "apple")   // true
set_has(s, "orange")  // false

set_remove(s, "apple")
let size = set_size(s)  // 1

var s2 = set_new()
set_add(s2, "banana")
set_add(s2, "cherry")

let union = set_union(s, s2)        // {banana, cherry}
let inter = set_intersection(s, s2) // {banana}
let arr = set_to_array(union)
```

---

## Regex

Nyx soporta expresiones regulares POSIX:

```nyx
let text = "Hello 2026 World"

if regex_is_match(text, "[0-9]+") {
    print("Contiene numero")
}

let result: String = regex_match(text, "[0-9]+")  // "2026"
let replaced: String = regex_replace(text, "[0-9]+", "YYYY")  // "Hello YYYY World"
let all: String = regex_replace_all(text, "[a-z]", "X")  // "HeXXo 2026 WorXd"
```

---

## Format String

`format()` proporciona template strings:

```nyx
let name = "Nyx"
let version = 64
let msg = format("Language {} v0.{}", name, version)
// msg = "Language Nyx v0.64"

// Soporta int, float, bool, String, char
let f = 3.14
let b = true
print(format("Pi={}, Valid={}", f, b))  // "Pi=3.14, Valid=true"
```

---

## Sleep and Time

Nyx soporta funciones de tiempo:

```nyx
sleep(1000)  // pausa 1000 ms

let t1 = time()      // timestamp en segundos
let t2 = time_ms()   // timestamp en milisegundos
let t3 = time_us()   // timestamp en microsegundos
```

---

## Math Functions

Nyx expone 17 funciones mathematicas via libm:

```nyx
abs(-42)          // valor absoluto
sqrt(16.0)        // raiz cuadrada
pow_int(2, 10)    // potencia (int)

sin(0.5), cos(0.5), tan(0.5)
asin(0.5), acos(0.5), atan(0.5), atan2(1.0, 1.0)

log(10.0), log2(10.0), log10(10.0)
exp(1.0), exp2(2.0)

cbrt(27.0)        // raiz cubica
ceil(3.2), floor(3.8), round(3.5)
```

---

## Signal Handling

Nyx puede manejar señales POSIX:

```nyx
extern "C" fn my_handler()

signal_handle(2, my_handler)  // SIGINT
signal_reset(2)               // resetear a default
signal_ignore(2)              // ignorar signal
```

---

## Defer Statement

`defer` ejecuta codigo al salir del scope:

```nyx
fn cleanup_example() {
    var f = file_open("data.txt", "w")
    defer { file_close(f) }

    file_write_string(f, "line 1\n")
    file_write_string(f, "line 2\n")
    // file_close ejecuta automaticamente aqui
}
```

Multiple `defer` blocks se ejecutan en LIFO order.

---

### Funciones
| Funcion | Descripcion |
|---------|-------------|
| `http_response(status, body)` | Construye HTTP response string |
| `http_serve(port, handler)` | Inicia servidor HTTP (blocking) |
| `http_get(url)` | HTTP GET request |
| `http_post(url, body)` | HTTP POST request |
| `http_request(method, url, body)` | HTTP request generico |
| `http_parse_url(url)` | Parsea URL en Map |
| `http_status_text(code)` | Codigo -> texto de status |

---

## Standard Library

La stdlib se carga automaticamente con `make run` y `make compile`.

### std/math.nx
```
abs(n) min(a, b) max(a, b) clamp(n, lo, hi)
pow_int(base, exp) gcd(a, b) lcm(a, b)
is_even(n) is_odd(n) sqrt_int(n)
```

### std/array.nx
```
array_sum(arr) array_min(arr) array_max(arr)
array_reverse(arr) array_contains_int(arr, val)
array_index_of(arr, val) sort_int(arr)
```

### std/io.nx
```
println(s)
```

### std/file.nx
```
read_text(path) write_text(path, content)
```

### std/map.nx
```
map_new() map_put(m, k, v) map_get_int(m, k)
map_has(m, k) map_size(m)
```

### std/json.nx
```
json_parse(str) json_stringify(val)
```

### std/http.nx
```
http_response(status, body) http_serve(port, handler)
http_get(url) http_post(url, body) http_request(method, url, body)
http_parse_url(url) http_status_text(code)
```

---

## Async/Await

> **Status: real concurrency since v0.19.0** — `await` runs a real goroutine on
> the M:N scheduler and joins it; it is no longer synchronous sugar.

```nyx
async fn fetch_data() -> String {
    return "data"
}

fn main() {
    let result: String = await fetch_data()
    print(result)
}
```

**How it works internally:**
- `async fn NAME` lowers to two symbols: a body function `__async_body_NAME`
  and a factory that returns a closure pair `{fn_ptr, env_ptr}*`.
- `await expr` evaluates `expr` to that closure pair, then calls
  `nyx_goroutine_spawn_closure` + `nyx_goroutine_join` — the body runs as a
  **stackful goroutine** on the M:N work-stealing scheduler
  (`runtime/scheduler.c`), and the caller joins it.
- The join has two paths: called from inside another goroutine it yields back
  to the scheduler and retries (cooperative, never blocks the OS thread);
  called from `main` it blocks on a condvar woken when the goroutine finishes.
- `go_sleep(ms)` inside a goroutine suspends it on an event-loop timer, so its
  worker keeps scheduling other goroutines (plain `sleep(ms)` is a real OS
  sleep and does block the worker).

**Limits (by design, today):**
- An `async fn` whose body contains no `await` is still plain synchronous
  sugar — there is nothing to suspend on.
- `async fn` returning `float`/`f32` is rejected at compile time with
  **NYX1021**: the join returns the body result in an `i64` register, so a
  double would be corrupted. Return an int/String/struct, or box the float.
- `await` is an expression, not a scheduling primitive: there is no
  `select`-over-futures. Multiplex with channels (see **Select** below).
- Socket I/O still uses blocking syscalls: a goroutine that reads from a socket
  occupies its worker for the duration. The runtime already has the primitive
  to park a goroutine on an fd (`nyx_goroutine_block_on_fd` in
  `runtime/scheduler.c`), but the networking builtins do not route through it
  yet.

### Async Executor (OS threads)

`spawn_task` / `task_await` / `task_cancel` / `task_race` are a separate,
**OS-thread** based family — not goroutines. They map directly onto
`runtime/thread.c`:

```nyx
let task: int = spawn_task(fn() { return work() })   // → nyx_thread_spawn
let result: int = task_await(task)                   // → nyx_thread_join
task_cancel(other)                                   // → nyx_task_cancel
let first: int = task_race(t1, t2)                   // → nyx_task_race (first to finish)
```

Use `spawn` / `await` for lightweight concurrency (thousands of goroutines on
a few OS threads); use this family only when you need a real OS thread handle
(cancellation, racing two blocking calls).

---

## Spawn and Select

### Spawn

Spawns a goroutine on the M:N scheduler:

```nyx
spawn {
    print("hello from goroutine")
}
sleep(50)  // wait for goroutine to complete
```

A `spawn` block **does capture** locals from the enclosing scope (the block is
desugared to a hoisted closure that shares the function's environment), so this
works:

```nyx
fn main() {
    let c: int = 40
    let ch: Map = channel_new(8)
    spawn {
        channel_send(ch, c + 3)   // captures both `ch` and `c`
    }
    print(int_to_string(channel_recv(ch)))   // 43
}
```

Channels remain the recommended way to get a *result* back out, since the
spawned goroutine is detached (nothing to join).

### Select

Multiplexes over channels:

```nyx
let ch1: Map = channel_new(4)
let ch2: Map = channel_new(4)

channel_send(ch1, 42)

select {
    case v = ch1 => { print("ch1 recibió " + int_to_string(v)) }
    case w = ch2 => { print("ch2 recibió " + int_to_string(w)) }
    default => { print("nada listo") }
}
```

`case v = ch =>` **liga el valor recibido** a `v`. La forma sin binding
(`case ch => { … }`) sigue siendo válida cuando solo interesa saber que llegó
algo, pero **no se puede recuperar el valor después**: `select` ya lo sacó del
canal, y un `channel_recv(ch)` dentro del cuerpo bloquearía esperando un dato
que ya no está. Si el valor importa, se liga (2026-09-09).

Los canales se crean con `channel_new(buffer_size)`, se escriben con
`channel_send(ch, value)` y se leen con `select` o `channel_recv`.

---

## M:N Scheduler

The M:N work-stealing scheduler maps N goroutines onto M OS threads.

```c
// Implementation in runtime/scheduler.c
// Uses ucontext_t for context switching
// Work-stealing: idle workers steal from other workers' queues
```

```nyx
// Nyx API
spawn { /* goroutine body */ }
yield()  // yield current goroutine
sleep(ms)  // sleep in milliseconds
```

**Verified:** Real work-stealing via `rq_steal()`. Uses `ucontext_t` for lightweight context switching.

---

## Event Loop

Real epoll-based async I/O (Linux only):

```c
// Implementation in runtime/event_loop.c
// Uses epoll_create1, epoll_ctl, epoll_wait
```

**Verified:** Uses actual `epoll` syscalls, not a poll loop.

---

## Clone and Move Semantics

### Clone Trait

```nyx
#[derive(Clone)]
struct Point { x: int, y: int }

let p1 = Point { x: 3, y: 4 }
let p2: Point = p1.clone()
```

`#[derive(Clone)]` generates a `clone(self) -> T` method that copies all fields.

### Move Semantics [NOT ENFORCED]

Move semantics are not enforced by the compiler. `MoveOnly<T>` in std/owned.nx is a library convention, not a language guarantee.

---

## Derive Macros

Automatically generate trait implementations:

```nyx
#[derive(Clone, PartialEq, Debug, Display, Default)]
struct Color {
    r: int,
    g: int,
    b: int
}

let c1 = Color { r: 255, g: 0, b: 0 }
let c2: Color = c1.clone()
print(c1.eq(c2))         // true (PartialEq)
print(c1.debug_str())    // "Color { r: 255, g: 0, b: 0 }" (Debug)
print(c1.display_str())  // "Color(255, 0, 0)" (Display)
let c3 = Color.default() // Color { r: 0, g: 0, b: 0 } (Default)
```

| Derive | Generated Method | Description |
|--------|-----------------|-------------|
| `Clone` | `clone(self) -> T` | Field-by-field copy |
| `PartialEq` | `eq(self, other: T) -> bool` | Field-by-field equality |
| `Debug` | `debug_str(self) -> String` | Struct name + fields |
| `Display` | `display_str(self) -> String` | Compact representation |
| `Default` | `T.default() -> T` | All fields zeroed/empty |
| `Fields` | `T_campos()`, `T_valores(self)`, `T_desde_fila(row)` | The struct describes its own schema (v0.31.0+) |
| `Copy` | — | Marker only: accepted by the checker, emits no code |
| `Hash` | — | Marker only: accepted by the checker, emits no code |

Anything outside those eight names is **NYX1029** (with a did-you-mean), and any derive
on a *generic* struct is **NYX1030** — codegen does not emit derives for a template, so
the program used to fail at link time instead.

### `#[derive(Fields)]` — the struct describes itself

Generates three **free functions** (not methods) named after the struct, all resolved at
compile time — there is no runtime reflection:

```nyx
#[derive(Fields)]
struct Contacto {
    nombre: String,
    rif: String,
    activo: bool,
    saldo: int
}

let c = Contacto { nombre: "El Tornillo", rif: "J-29643190-6", activo: true, saldo: 1500 }

Contacto_campos()
// ["nombre:String", "rif:String", "activo:bool", "saldo:int"]

Contacto_valores(c)
// ["El Tornillo", "J-29643190-6", "true", "1500"]

let back: Contacto = Contacto_desde_fila(["El Tornillo", "J-29643190-6", "true", "1500"])
```

| Function | Signature | Returns |
|----------|-----------|---------|
| `T_campos` | `() -> Array` | `"name:type"` per field, in **declaration order**; the type is the text the user wrote (`String`, not `%nyx_string*`) |
| `T_valores` | `(self: T) -> Array` | Every field as `String`, **index-aligned with `T_campos()`** |
| `T_desde_fila` | `(row: Array) -> T` | Rebuilds the struct from a row of `String` cells, consuming the same positions |

Declaration order is the contract between the three: `valores()[i]` is the value of the
field described by `campos()[i]`, and `desde_fila` reads that same index. This is what
lets a model be written **once** — an ORM can build its `CREATE TABLE`, its column list
and its `INSERT` placeholders straight from `campos()`, so renaming a field changes the
SQL by itself. Worked example: `examples/by-example/103-orm-sin-mapeo.nx`.

**Supported field types: `int`, `bool`, `float` and `String` — and nothing else.** An
`Array`, `Map` or nested-struct field **aborts compilation** with **NYX2013**. The limit
is deliberate: `#[derive(Display)]` flattens a non-primitive to the literal string
`"ptr"`, and inheriting that fallback here would write `"ptr"` into a real database
column — a value that compiles, links, runs, and is simply false. There is no per-field
escape hatch; move the non-primitive field out of the derived struct.

Two conversion details that matter when the rows come from a database:

- `T_valores` renders a `bool` as `"true"`/`"false"`.
- `T_desde_fila` reads a `bool` by comparing the cell against the exact string `"true"`;
  anything else becomes `false`. PostgreSQL's text format for `boolean` is `t`/`f`, so a
  row read from `try_pg_query` must be normalized before it is handed to `desde_fila`
  (gotcha `derive-fields-pg-bool-text`).

Reading a row shorter than the struct aborts rather than reading garbage
(`nyx_array_get_checked`).

---

## Fixed-Size Arrays

Stack-allocated arrays with compile-time known size:

```nyx
var arr: [int: 5] = [1, 2, 3, 4, 5]
print(arr[0])    // 1
arr[2] = 99
print(arr[2])    // 99
```

Uses GEP (getelementptr) indexing instead of runtime array access. Allocated on the stack, not the heap.

---

## Higher-Kinded Types and GATs

> **Status: PARSED, NOT ENFORCED** — HKT and GAT syntax is accepted by the parser but has no semantic enforcement or real instantiation.

### GATs (Generic Associated Types)

```nyx
trait Container {
    type Item<T>
    fn wrap<T>(val: T) -> Self.Item<T>
}
```

### HKT-style Traits

```nyx
trait Functor {
    type Mapped<B>
    fn fmap<A, B>(self, f: Fn(A) -> B) -> Self.Mapped<B>
}
```

These are parsed and stored in the AST but do not affect code generation.

---

## Lifetime Annotations

> **Status: PARSED, NOT ENFORCED** — Lifetime syntax is accepted but there is no borrow checker.

```nyx
fn longest<'a>(a: &'a String, b: &'a String) -> &'a String {
    if a.length() > b.length() { return a }
    return b
}
```

Lifetimes are parsed as generic parameters (prefixed with `'`) and ignored during semantic analysis and code generation.

---

## impl Trait Syntax

Sugar for `dyn Trait`:

```nyx
trait Printable {
    fn to_str(self) -> String
}

fn show(x: impl Printable) -> String {
    return x.to_str()
}
// Equivalent to: fn show(x: dyn Printable) -> String
```

The compiler desugars `impl Trait` to `dyn Trait` (dynamic dispatch via fat pointers).

---

## Tuple Structs

Structs with positional fields:

```nyx
struct Point(int, int)

// Desugars to:
// struct Point { _0: int, _1: int }

let p = Point(3, 4)
print(p._0)  // 3
print(p._1)  // 4
```

---

## Union Types

Type-level union syntax desugared to enums:

```nyx
type Value = int | String | bool

// Desugars to:
// enum Value { int(int), String(String), bool(bool) }

let v: Value = Value.int(42)
match v {
    Value.int(n)    => { print("int") }
    Value.String(s) => { print("str") }
    Value.bool(b)   => { print("bool") }
}
```

---

## Declarative Macros

Token-range re-parsing macros:

```nyx
macro log_msg {
    (msg) => {
        print("[LOG] " + msg)
    }
}

log_msg!("hello")  // expands to: print("[LOG] " + "hello")
```

Macros capture a token range and re-parse it with parameter substitution. They are not hygienic.

---

## If-Let and While-Let

Pattern binding constructs:

```nyx
enum Option { Some(int), None }

let opt = Option.Some(42)

// if-let: desugars to match
if let Option.Some(x) = opt {
    print(x)  // 42
}

// while-let: loops while pattern matches
var current = Option.Some(1)
while let Option.Some(n) = current {
    print(n)
    if n >= 3 { current = Option.None }
    else { current = Option.Some(n + 1) }
}
```

---

## Literal Patterns in Match

Match directly on literal values:

```nyx
let n: int = 2
match n {
    0 => { print("zero") }
    1 => { print("one") }
    2 => { print("two") }
    _ => { print("other") }
}
```

Supports int, float, String, and bool literals in pattern position.

---

## GCC-Style Inline Assembly

Full GCC-style inline assembly with constraint mapping:

```nyx
unsafe {
    var result: int = 0
    asm("mov $1, %0" : "=r"(result) : : )
    print(result)  // 1

    // With inputs and clobbers
    var x: int = 5
    var y: int = 0
    asm("mov %1, %0" : "=r"(y) : "r"(x) : )
    print(y)  // 5
}
```

Syntax: `asm("template" : outputs : inputs : clobbers)`

Constraint mapping: `"=r"` (output register), `"r"` (input register), `"m"` (memory), `"i"` (immediate).

---

## Function Attributes

```nyx
#[naked]
fn bare_function() { /* no prologue/epilogue */ }

#[interrupt]
fn irq_handler() { /* interrupt handler */ }

#[link_section(".text.boot")]
fn boot_entry() { /* placed in specific section */ }

#[export_name("my_entry")]
fn entry_point() { /* exported with custom name */ }
```

---

## No-GC Mode

Compile without Boehm GC for bare-metal / embedded:

```bash
make compile-no-gc FILE=prog.nx
# IR uses @malloc instead of @GC_malloc
```

```nyx
// In no-GC mode, manual memory management required
unsafe {
    let buf: *int = alloc<int>(10)
    // ... use buf ...
    free(buf)
}
```

---

## Cross-Compilation

```bash
# ARM64 Linux
make cross FILE=prog.nx TARGET=aarch64-linux-gnu

# WASM (requires wasi-sdk)
make wasm FILE=prog.nx
```

---

## Shebang Support

```nyx
#!/usr/bin/env nyx
fn main() {
    print("script mode!")
}
```

The driver strips `#!` lines before lexing.

---

## Linear Types (Box, Rc, MoveOnly)

> **Status: LIBRARY WRAPPERS** — Implemented as Array-based wrappers in std/owned.nx. Not enforced by the compiler.

```nyx
import "std/owned"

// Box<T> — owned heap value
let b = box_new(42)
print(box_get(b))  // 42
box_drop(b)

// Rc<T> — reference counted
let r = rc_new(10)
let r2 = rc_clone(r)
print(rc_get(r2))  // 10
rc_release(r)
rc_release(r2)

// MoveOnly<T> — single-owner semantics (convention only)
let m = move_new(99)
print(move_take(m))  // 99, marks as consumed
```

---

## Additional Standard Library Modules

### std/sync.nx
```
WaitGroup: wg_new(), wg_add(wg, n), wg_done(wg), wg_wait(wg)
Semaphore: sem_new(n), sem_acquire(sem), sem_release(sem)
Once: once_new(), once_do(once, fn)
AtomicCounter: atomic_new(n), atomic_inc(a), atomic_get(a)
```

### std/btreemap.nx
```
btree_new(), btree_insert(bt, k, v), btree_get(bt, k)
btree_min(bt), btree_max(bt), btree_keys(bt)
```

### std/linkedlist.nx
```
deque_new(), deque_push_front(d, v), deque_push_back(d, v)
deque_pop_front(d), deque_pop_back(d)
pq_new(), pq_push(pq, priority, value), pq_pop(pq)
```

### std/sqlite.nx
```
// Core
sqlite_open(path), sqlite_close(db), sqlite_exec(db, sql)
sqlite_query(db, sql), sqlite_query_named(db, sql)
sqlite_last_id(db), sqlite_affected(db), sqlite_error(db)

// Typed queries (v0.11.0)
sqlite_query_int(db, sql), sqlite_query_one_int(db, sql)
sqlite_query_one_str(db, sql)

// Parameterized queries (v0.11.0)
sqlite_exec_params(db, sql, params), sqlite_query_params(db, sql, params)
sqlite_exec_int(db, sql, val), sqlite_exec_str(db, sql, val)

// Transactions (v0.11.0)
sqlite_begin(db), sqlite_commit(db), sqlite_rollback(db)

// Migrations (v0.11.0)
sqlite_migrate_init(db), sqlite_migrate_version(db)
sqlite_migrate(db, version, name, sql)

// Introspection (v0.11.0)
sqlite_tables(db), sqlite_table_exists(db, name), sqlite_count(db, table)

// NULL: centinela explicito (v0.31.0)
sqlite_null(), sqlite_is_null(valor)
```

Dos correcciones de datos de v0.31.0, ambas silently-wrong reportadas desde un ERP:

- **NULL con centinela.** Una celda SQL `NULL` volvia como la cadena `"NULL"`,
  indistinguible de un TEXT que dijera literalmente `NULL`. Ahora vuelve como
  `sqlite_null()` (un String de un byte `0x00`, la **misma** representacion que
  `pg_null` en `std/postgres`) y se pregunta con `sqlite_is_null(v)`, nunca con
  `== ""` — comparar a mano confunde un NULL real con un texto vacio, y viceversa.
  El centinela viaja tambien de ida: pasar `sqlite_null()` como parametro liga un
  NULL de verdad. Arista conocida: un BLOB/TEXT que contenga exactamente ese byte
  y nada mas se lee como NULL.
- **La via tipada ya no trunca a 32 bits.** `sqlite_query_int`/`sqlite_query_one_int`
  y el binding de enteros usaban `sqlite3_column_int`/`bind_int`: `5000000000` volvia
  como `705032704`, sin ninguna senal. Ahora usan las variantes `_int64`, y son int de
  64 bits reales.

Recordar que en la via NO tipada **toda celda es `String`**, incluidas las columnas
INTEGER: hay que convertir con `string_to_int()` o pedir la columna por la via tipada.

### std/postgres.nx

Cliente PostgreSQL **nativo**: el protocolo wire v3 hablado en Nyx puro sobre `std/net`.
Sin `libpq` y sin ninguna otra dependencia externa (v0.31.0).

```
// Conexion (cadena con el formato de libpq) y cierre
try_pg_connect(conninfo) -> Result<PgConn, Error>
try_pg_close(conn)

// Consultas: las filas son Array de Array de String (formato text del protocolo)
try_pg_exec(conn, sql)                    // -> filas afectadas
try_pg_query(conn, sql)
try_pg_exec_params(conn, sql, params)     // params por VALOR en el mensaje Bind
try_pg_query_params(conn, sql, params)

// NULL: centinela explicito, NUNCA `== ""`
pg_null(), pg_is_null(valor)

// Transacciones
try_pg_begin(conn), try_pg_commit(conn), try_pg_rollback(conn)

// Migraciones (el estado vive en una tabla del servidor)
pg_migrate_init(conn), pg_migrate_version(conn), pg_migrate(conn, version, name, sql)

// Pool de conexiones
pg_pool_new(conninfo, size), try_pg_pool_get(pool), pg_pool_put(pool, conn), pg_pool_close(pool)

// TLS: parte del conninfo, como en libpq (v0.31.1)
//   sslmode=disable       (default) sin cifrar
//   sslmode=require       cifra, NO verifica el certificado (igual que libpq)
//   sslmode=verify-ca     la CA cargada con tls_set_ca_file() tiene que firmar
//   sslmode=verify-full   eso, y ademas el nombre del host tiene que coincidir
// sslmode=prefer y sslmode=allow se RECHAZAN con Err a proposito: caen a texto
// plano si el servidor rechaza TLS, lo que con SCRAM significa mandar la
// contrasena en claro creyendo que va cifrada.
```

Decisiones que importan y no se ven en las firmas:

- **TLS se negocia DESPUES de conectarse en claro**, no desde el primer byte como HTTPS: el
  cliente manda un `SSLRequest` de 8 bytes y solo si el servidor responde `'S'` se hace el
  handshake sobre ese mismo socket, antes del StartupMessage — el unico punto posible, porque
  despues las credenciales de SCRAM ya viajaron. Un servidor que responde `'N'` con un modo que
  exige cifrado da `Err`, nunca una conexion en claro silenciosa.
- **`require` no verifica el certificado** (gotcha `pg-require-no-verifica`): cifra contra un
  impostor sin chistar, igual que libpq. Para fijar el servidor hay que usar `verify-ca` o
  `verify-full`. Ojo: `verify-full` contra un literal IP falla salvo que el certificado traiga un
  SAN de tipo IP, y eso es la verificacion funcionando.

- **Autenticacion SCRAM-SHA-256**, que es lo que exige cualquier PostgreSQL moderno. La
  firma del servidor se verifica en tiempo constante (`constant_time_eq`) — saltearla es
  aceptar un servidor impostor — y el nonce del cliente sale de `csprng_bytes`, no de
  `random_bytes`.
- **Los parametros van por VALOR en el mensaje Bind, nunca interpolados en el SQL**: el
  E2E pasa `'; DROP TABLE t_par; --` como valor y verifica despues que la tabla sigue ahi.
- **NULL con centinela** (`pg_is_null`): un NULL y un string vacio son valores distintos.
  Es la misma representacion que `sqlite_null`/`sqlite_is_null`.
- **Un error del servidor deja la conexion USABLE**: el lector consume hasta
  `ReadyForQuery` en vez de cortar y desincronizar el socket.
- La forma de los errores es la de `std/sqlite`: `Result<_, Error>` con `kind: "db"`,
  conservando el SQLSTATE en el mensaje.

Combinado con `#[derive(Fields)]` alcanza para un ORM sin escribir el mapeo a mano — ver
`examples/by-example/103-orm-sin-mapeo.nx`.

### std/websocket.nx
```
ws_accept_key(key), ws_handshake_response(ws_key)
ws_extract_key(headers), ws_frame(payload), ws_parse(data)
ws_is_close(data), ws_close(), ws_is_upgrade(request)
```

### std/graph.nx
```
graph_new(), graph_add_edge(g, from, to, weight)
graph_bfs(g, start), graph_dfs(g, start)
graph_dijkstra(g, start, end_node), graph_has_cycle(g)
graph_topological_sort(g)
```

### std/statemachine.nx
```
fsm_new(initial_state, transitions), fsm_send(fsm, event)
fsm_state(fsm), fsm_history(fsm)
```

### std/events.nx
```
event_bus_new(), event_on(bus, event, handler)
event_emit(bus, event, payload), event_off(bus, event)
observable_new(value), observable_set(obs, value)
observable_get(obs), observable_watch(obs, handler)
```

### std/proptest.nx
```
prop_test(name, gen, property_fn)
gen_int(min, max), gen_string(len), gen_bool()
gen_array(gen, count)
```

### std/compress.nx
```
deflate(data), inflate(data)
```

### std/base64.nx
```
base64_encode(data), base64_decode(data)
base64url_encode(data), base64url_decode(data)
```

### std/msgpack.nx
```
msgpack_encode(value), msgpack_decode(data)
```

### std/toml.nx
```
toml_parse(str), toml_get(doc, key)
```

### std/csv.nx
```
csv_parse(str), csv_get(row, field)
csv_stringify(data)
```

### std/args.nx
```
ArgParser: argparse_new(name), argparse_flag(p, name, desc)
argparse_option(p, name, desc, default), argparse_parse(p, args)
```

### std/semver.nx
```
semver_parse(str), semver_compare(a, b)
semver_satisfies(version, constraint)
```

### std/random.nx
```
random_seed(s), random_int(min, max)
random_float(), random_bool(), random_choice(arr)
```

### std/uuid.nx
```
uuid_v4()
```

### std/pool.nx
```
pool_new(factory, max_size), pool_acquire(pool)
pool_release(pool, conn)
```

### std/proxy.nx (v0.12.0)
```
// Config
proxy_new(port), proxy_add_backend(config, host, port)
proxy_start(config)

// Health
proxy_check_health(config), proxy_set_unhealthy(config, idx)
proxy_set_healthy(config, idx)

// Internal: round-robin selection, request forwarding, header rewriting
```

---

## Tooling

### Formatter (nyx fmt)
```bash
make build-fmt && make fmt FILE=prog.nx
```
AST pretty-printer. Reformats Nyx source code.

### LSP (nyx_check)
```bash
make build-check && make check FILE=prog.nx
```
Language server protocol driver. Provides go-to-definition, hover, and document symbols via VS Code extension.

### Static Analyzer (nyx vet)
```bash
make build-vet && make vet FILE=prog.nx
```
Detects unused variables, dead code, and style issues.

### Documentation Generator (nyx doc)
```bash
make build-doc && make doc FILE=prog.nx
```
Generates markdown documentation from `pub` items.

### REPL
```bash
make build-repl && make repl
```
Interactive read-eval-print loop using the interpreter.

### Build System (nyx build)
```bash
make build-nyx-build && make nyx-build
```
Reads `nyx.toml` for project configuration and dependencies.

### C Binding Generator (nyx bindgen)
```bash
make build-bindgen && make bindgen FILE=header.h
```
Generates Nyx FFI bindings from C header files.

### Web Playground
```bash
make playground
```
Browser-based code editor at `http://localhost:8080`. Written entirely in Nyx using `std/http.nx`. Compiles and executes user code server-side with a 10-second timeout. Endpoints: `GET /` (editor UI), `POST /api/run` (compile+execute), `GET /api/examples` (list snippets), `GET /api/example/:name` (load snippet).

---

## WebSocket

Nyx supports WebSocket (RFC 6455) via `std/websocket.nx` with SHA-1 handshake and frame encoding/decoding implemented in `runtime/websocket.c`.

### Handshake
```nyx
import "std/websocket"

// Check if an HTTP request is a WebSocket upgrade
if ws_is_upgrade(request_str) {
    let key: String = ws_extract_key(request_str)
    let response: String = ws_handshake_response(key)
    tcp_write(client_fd, response)
}
```

### Sending and Receiving Frames
```nyx
// Send a text frame (server → client, unmasked)
let frame: String = ws_frame("Hello from Nyx!")
tcp_write(client_fd, frame)

// Parse a received frame
let payload: String = ws_parse(received_data)

// Check for close frame
if ws_is_close(received_data) {
    let close: String = ws_close()
    tcp_write(client_fd, close)
}
```

### Functions
| Function | Description |
|----------|-------------|
| `ws_accept_key(key)` | Compute Sec-WebSocket-Accept from client key |
| `ws_handshake_response(key)` | Generate full HTTP 101 Upgrade response |
| `ws_extract_key(headers)` | Extract Sec-WebSocket-Key from request |
| `ws_frame(payload)` | Build a text frame for sending |
| `ws_parse(data)` | Parse received frame, return payload |
| `ws_is_close(data)` | Check if data is a close frame |
| `ws_close()` | Build a close frame |
| `ws_is_upgrade(request)` | Check if request is a WebSocket upgrade |

---

## Middleware and Sessions

### Middleware (`std/web.nx`)

The web framework supports middleware chains via `app_use()`. Each middleware receives a `Request` and returns a `Response`. Return status `0` to continue to the next handler; return a non-zero status to short-circuit.

```nyx
import "std/web"

let app: App = app_new()

// Add built-in middleware
app_use(app, mw_logging)   // Logs: METHOD PATH -> STATUS (latency_ms)
app_use(app, mw_cors)       // Handles CORS preflight and headers

// Configure CORS
cors_configure("https://example.com", "GET, POST", "Content-Type, Authorization")

// Custom middleware
fn auth_check(req: Request) -> Response {
    if req.headers.get("Authorization") == "" {
        return Response { status: 401, headers_flat: [], body: "Unauthorized" }
    }
    // Return status 0 to continue to route handler
    let hdrs: Array = []
    return Response { status: 0, headers_flat: hdrs, body: "" }
}
app_use(app, auth_check)
```

### Sessions (`std/session.nx`)

Cookie-based sessions backed by nyx-kv via RESP protocol over TCP.

```nyx
import "std/session"

// Configure session backend (defaults: 127.0.0.1:6380, TTL 3600s)
session_configure("127.0.0.1", 6380, 7200)

fn handle_login(req: Request) -> Response {
    // Start or resume a session (reads/sets "nyx_session" cookie)
    let sid: String = session_start(req, resp)

    // Store data in session
    session_set(req, "user_id", "42")
    session_set(req, "role", "admin")

    // Read session data
    let user: String = session_get(req, "user_id")

    return response_html(200, "Logged in as " + user)
}
```

| Function | Description |
|----------|-------------|
| `session_configure(host, port, ttl)` | Configure nyx-kv backend |
| `session_start(req, resp)` | Start or resume session, returns session ID |
| `session_get(req, key)` | Get value from current session |
| `session_set(req, key, value)` | Set value in current session |

---

## Base64 and Base64URL

Nyx provides RFC 4648 Base64 encoding in both standard and URL-safe variants via `std/base64.nx`.

```nyx
import "std/base64"

// Standard Base64 (with padding)
let encoded: String = base64_encode("Hello, World!")
let decoded: String = base64_decode(encoded)

// URL-safe Base64 (no padding, - and _ instead of + and /)
let url_safe: String = base64url_encode("data with special chars")
let original: String = base64url_decode(url_safe)
```

| Function | Alphabet | Padding |
|----------|----------|---------|
| `base64_encode(input)` | `A-Za-z0-9+/` | Yes (`=`) |
| `base64_decode(input)` | `A-Za-z0-9+/` | Tolerant |
| `base64url_encode(input)` | `A-Za-z0-9-_` | No |
| `base64url_decode(input)` | `A-Za-z0-9-_` | Tolerant |

---

## Limitaciones Conocidas

| Feature | Estado | Notas |
|---------|--------|-------|
| First-class functions | Soportado (v0.22) | Funciones top-level y closures como `Fn` |
| Floats (f64) | Soportado (v0.23) | Aritmetica, comparaciones, conversiones, print |
| Match como statement | Soportado (v0.23) | Arms con side effects y bloques |
| Operador `**` (power) | Soportado (v0.23) | Int y float via `@pow` |
| String interpolation | Soportado (v0.24) | `"hello ${name}"` |
| Enum params no-int | Soportado (v0.24) | String, float, bool en variantes |
| Operador `?` (try) | Soportado (v0.24) | Early return de Err |
| Impl blocks | Soportado (v0.25) | Metodos en tipos |
| Closures retornables | Soportado (v0.25) | `make_adder` pattern |
| Import system | Soportado (v0.25) | Auto-prelude + inlining de modulos |
| Exhaustive match | Soportado (v0.25) | Error si faltan variantes |
| Generics | Soportado (v0.26) | Functions y structs via monomorphization |
| Generic structs | Soportado (v0.26b) | `struct Pair<A,B>` |
| Traits (static) | Soportado (v0.27) | `trait Display`, `impl Display for Point`, bounds |
| Dynamic dispatch | Soportado | vtables, `dyn Trait` como fat pointer; dispatch honesto (ver nota 1) |
| Closures 3+ niveles | Soportado (v0.28) | Flattened environment inheritance |
| `check_has_return` | Soportado (v0.28) | Detecta return en if/else/match |
| Block comments `/* */` | Soportado | Anidados con tracking de profundidad |
| Multiline strings | Soportado | `"""..."""` preserva newlines |
| Raw strings | Soportado | `r"..."` sin escape sequences |
| Polymorphic Maps | Soportado | Dispatch correcto a get_str/get_int |
| Parser error recovery | Soportado | `synchronize()`, acumula errores |
| Type inference | Soportado | Desde return types de funciones |
| Type aliases | Soportado | `type Integer = int` |
| Generic enums | Soportado | `enum Option<T>`, monomorphization |
| Option/Result builtins | Soportado | En std/prelude.nx |
| Tuples | Soportado | `(int, String)`, destructuring, `t.0` |
| Test framework | Soportado | `test "name" { assert(expr) }` |
| Formatter | Soportado | `nyx fmt` — AST pretty-printer |
| LSP tooling | Soportado | go-to-def, hover, document symbols |
| FFI (`extern "C" fn`) | Soportado | Declaraciones de funciones C |
| Const evaluation | Soportado | `const MAX = 100` — compile-time inline |
| Typed for-in | Soportado | `for p: Point in points` |
| Package manager | Parcial | `nyx init`/`build`/`run`/`add` + `nyx.toml`/`nyx.lock` + resolucion multi-path. **`nyx publish` y el registry NO existen** (deps por path o git URL) |
| Bitwise operators | Soportado | `&`, `|`, `^`, `<<`, `>>`, `~` |
| Compound assignment | Soportado | `+=`, `-=`, `*=`, `/=`, `%=`, `&=`, `|=`, `^=`, `<<=`, `>>=` |
| String methods | Soportado | trim, toUpper, toLower, replace, repeat, etc. |
| Array methods | Soportado | slice, reverse, indexOf, join |
| Sized numeric types | Soportado | i8, i16, i32, u8, u16, u32, u64, f32, usize |
| `as` cast | Soportado | `x as i32`, `y as float` |
| sizeof/alignof | Soportado | `sizeof(Type)`, `alignof(Type)` |
| Raw pointers + unsafe | Soportado | `*int`, `&x`, `*ptr`, `unsafe { ... }` |
| Manual memory | Soportado | `alloc(n)`, `free(ptr)`, `static var` |
| FFI structs | Soportado | `#[repr(C)]` |
| Inline assembly | Soportado | `asm("...")` |
| Volatile/atomic | Soportado | `volatile_read/write`, `atomic_load/store` |
| Typed closures | Soportado | `Fn(int) -> int` |
| Typed arrays | Soportado | `Array<int>`, `Array<String>` |
| Match guards | Soportado | `Pattern if cond => body` |
| OR patterns | Soportado | `A | B => body` |
| Struct patterns | Soportado | `Point { x, y }` |
| Nested patterns | Soportado | `Some(Some(x))` |
| `pub` keyword | Soportado | Sinonimo de `export` |
| Module imports | Soportado | `import "mod" as alias` |
| panic() | Soportado | Runtime abort |
| Result/Option methods | Soportado | is_ok, unwrap, map, and_then, etc. |
| Iterators | Soportado | Lazy, chainable, for-in desugaring |
| Default methods | Soportado | Trait methods con body |
| Multi-bounds | Soportado | `T: A + B` |
| Associated types | Soportado | `type Item` en traits |
| Where clauses | Soportado | `where T: Display` |
| Operator overloading | Soportado | Via traits Add, Sub, Mul, etc. |
| Pointer arithmetic | Soportado | `ptr + n`, `ptr - ptr` |
| Buffered I/O | Soportado | file_open, file_read_line, etc. |
| Map iteration | Soportado | `map.keys()`, `map.values()` |
| Networking | Soportado | TCP, UDP, DNS |
| Threading | Soportado | Threads, mutexes, channels |
| Process/OS | Soportado (v0.12.0) | exec, getenv, setenv, exit, get_args, fork, execvp, waitpid, dup2, pipe_new, close_fd, open_fd, getcwd, chdir, stat, isatty, getpid, kill_process |
| nyx test | Soportado (v0.12.0) | Integrated test runner: `nyx test file.nx`, `nyx test` (project discovery) |
| JSON | Soportado | json_parse, json_stringify |
| HTTP | Soportado | Server + client library |
| Spawn/Select | Soportado | M:N scheduler, channels, work-stealing |
| Async/Await | Soportado | `await` = goroutine real + join cooperativo sobre el scheduler M:N (ver nota 2) |
| Event Loop | Soportado | epoll real en runtime/event_loop.c |
| Clone/Derive | Soportado | #[derive(Clone, PartialEq, Debug, Display, Default, Fields)] — `Copy`/`Hash` se aceptan como marcadores sin codegen; cualquier otro nombre es NYX1029 |
| Fixed-size arrays | Soportado | `[int: 5]` stack-allocated |
| HKT/GATs | Decorativo | Parseados, sin enforcement semántico |
| Lifetime annotations | Parcial | Se parsean end-to-end (incl. `struct S<'a>`) y los consulta el chequeo de dangling refs (NYX1222 gating / NYX1223 lint); NO hay sistema de regiones verificado — la inferencia inter-procedural es follow-up (ver nota 3) |
| impl Trait | Soportado | Sugar para dyn Trait |
| Tuple structs | Soportado | `struct Point(int, int)` → `_0`, `_1` |
| Union types | Soportado | `type V = int \| String` → enum |
| Declarative macros | Soportado | `macro name { (params) => { body } }` |
| if-let / while-let | Soportado | Pattern binding constructs |
| Literal patterns | Soportado | `match n { 0 => ..., 1 => ... }` |
| GCC inline asm | Soportado | Full constraint mapping |
| No-GC mode | Soportado | `make compile-no-gc` |
| Cross-compilation | Soportado | `make cross TARGET=...` |
| WASM target | Soportado | `make wasm` → wasm32-wasi real bajo wasmtime; toolchain liviano (clang del sistema + `wasi-libc` + `lld`), **sin wasi-sdk** |
| Shebang | Soportado | `#!/usr/bin/env nyx` |
| Box/Rc/MoveOnly | Soportado | Tipos `#[affine]` REALES en `std/owned.nx` con enforcement del compilador: drop determinista/RAII + use-after-move NYX1230 (ver nota 4) |
| `&T`/`&mut T` | Soportado | Bajan a alias de punteros (`T*`); `&mut self` en metodos SI muta y persiste al caller. Chequeo de aliasing = lint opt-in (ver nota 3) |
| Bare `return` | Soportado (v0.12.0) | `return` in void functions synthesizes `return 0` |
| Defer | Soportado (v0.12.0) | `defer { expr() }` — LIFO cleanup at function exit |
| Short-circuit and/or | Soportado (v0.12.0) | Lazy evaluation; second operand skipped if unnecessary |
| Terminal I/O | Soportado (v0.12.0) | `raw_mode_enter/exit`, `read_byte`, `term_cols/rows`, `chr` |
| arr.insert/remove | Soportado (v0.12.0) | `arr.insert(idx, val)`, `arr.remove(idx)` |
| arr[i].method() | Soportado (v0.12.0) | Direct method calls on indexed array elements |
| `::` para enums | No soportado | Usar `.` (ej: `Color.Red`, no `Color::Red`) |
| Variable shadowing | No soportado | Re-declaration in same scope is an error |
| Default params | Soportado | `fn f(x: int = 5)`; los faltantes se rellenan en el call-site, override parcial o total |
| u8/u16 print | Bug | Small types don't print correctly via print() |
| Lambda capture | Soportado | Lambdas y fns anidadas capturan locals del scope exterior (ver nota 5) |

### Notas del cuadro

**Nota 1 — dispatch honesto.** Llamar un metodo o leer una propiedad sobre un
receptor que no la tiene es un **error**, no basura silenciosa, en las tres
capas: `NYX1022` (checker semantico), `NYX2007` (codegen) y `NYX3001`
(interprete). Antes esos casos compilaban y devolvian un valor sin sentido.

**Nota 2 — async/await.** `await` corre el cuerpo del `async fn` como goroutine
real sobre el scheduler M:N y lo joinea (cooperativo si el llamador ya es una
goroutine, condvar si es `main`); `spawn { }` lanza una goroutine detached. Ver
la seccion **Async/Await**. Dos limites vigentes: un `async fn` sin ningun
`await` adentro sigue siendo azucar sincrona, y un `async fn` que retorna
`float` se rechaza en compile-time con **NYX1021** (hazard de ABI en el join).

**Nota 3 — borrow checker.** Existe y es real: `compiler/borrow.nx`, controlado
por `NYX_BORROW=off|warn|error` (**default `off`** — sobre codigo GC normal es
un lint, porque el GC ya garantiza no-use-after-free). Codigos:

| Codigo | Que caza | Clase |
|--------|----------|-------|
| `NYX1210` / `NYX1211` | Exclusividad de `&mut` violada | Lint (statement-scoped) |
| `NYX1220` | Use-after-free sobre memoria manual, flow-sensitive | **Gating** (sound) |
| `NYX1221` | Double-free | **Gating** (sound) |
| `NYX1222` | Referencia colgante (`&local` que escapa) con `'a` explicito | **Gating** |
| `NYX1223` | Misma forma pero inferida por elision | Lint |
| `NYX1230` | Use-after-move de un valor `#[affine]` | **Gating** (sound) |

Bajo `NYX_BORROW=error` solo los gating fallan el build (gate limpio, sin falsos
positivos sobre codigo GC). El aliasing de `&mut` **no es UB**: baja a `T*` sin
`noalias`. Lo que **no** hay todavia: un sistema de regiones/lifetimes
verificado inter-procedural, field-sensitivity y `return &self`.

**Nota 4 — tipos afines.** Un tipo marcado `#[affine]` solo puede usarse una vez
(moverlo invalida el binding original). Si ademas tiene `impl Drop`, su
destructor corre **exactamente una vez** al salir la funcion dueña (return
temprano, fall-through, break/continue — function-scoped, estilo Go/defer),
salvo que el valor se haya movido afuera. El drop determinista lo emite el
codegen siempre; el use-after-move (`NYX1230`) requiere `NYX_BORROW=warn|error`.
`std/owned.nx` trae los tres listos: `MoveOnly<T>` (afin puro), `Box<T>` (dueño
de un `*T` manual, libera al dropear) y `Rc<T>` (refcount compartido). Fuera de
alcance hoy: drop block-scoped, afines dentro de contenedores GC, loops (solo
dropea el binding de la ultima iteracion) y afines cross-modulo.

**Nota 5 — captura de closures.** Funcionan todas las formas: lambda literal
pasada inline (`ejecutar(fn() { c[0] = c[0] + 1 })`), lambda ligada a un `let`,
fn anidada que muta un local del scope exterior, `spawn { }` / `thread_spawn`
con captura, y una lambda capturadora y una fn anidada capturadora **coexistiendo
en la misma funcion** (en cualquier orden). Todo esto es codigo nativo; en el
target wasm32-wasi los handlers de eventos DOM (`dom_on_fn`) tambien aceptan
closures, pero si un handler se comporta raro el fallback seguro sigue siendo
estado en globals del modulo.
