# Nyx Language Specification v0.12.0

> Current version: v0.12.0 (stable). 220 tests (190 regression + 30 advanced), self-hosting with verified fixed point.

Especificacion completa de sintaxis y caracteristicas del lenguaje Nyx.

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
- [Try-Catch Exception Handling](#try-catch-exception-handling)
- [FFI (Foreign Function Interface)](#ffi-foreign-function-interface)
- [Const Declarations](#const-declarations)
- [Typed For-In](#typed-for-in)
- [Test Framework](#test-framework)
- [Modulos e Imports](#modulos-e-imports)
- [Bitwise Operators](#bitwise-operators)
- [String Methods](#string-methods)
- [Array Methods](#array-methods)
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
- [Limitaciones Conocidas](#limitaciones-conocidas)

---

## Comentarios

### Comentarios de linea
```nyx
// Esto es un comentario de linea
let x = 42  // Comentario al final de la linea
```

### Comentarios de bloque (v1.1)
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

Desde v1.1, se pueden definir aliases de tipos con `type`:

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

### For con Type Annotation (v1.4)
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

### Default Parameters (v6.2)

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

Desde v6.4, las funciones soportan varargs como último parámetro:

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

---

## Multiline y Raw Strings

Desde v1.1, Nyx soporta strings multilinea y raw strings.

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

Desde v1.2, Nyx soporta tuples como tipo compuesto anonimo.

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

Desde v1.2, los enums soportan type parameters via monomorphization:

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

Desde v6.3, los traits pueden heredar de otros traits:

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

## Try-Catch Exception Handling

Desde v6.3, Nyx soporta exception handling via `try-catch` blocks:

```nyx
try {
    let result = risky_operation()
    print(result)
} catch(e: String) {
    print("Error: " + e)
}
```

### Throw

```nyx
fn divide(a: int, b: int) -> int {
    if b == 0 { throw("division by zero") }
    return a / b
}

try {
    let result = divide(10, 0)
} catch(e: String) {
    print(e)  // "division by zero"
}
```

### Panic es Catchable

```nyx
try {
    panic("something went wrong")
} catch(e: String) {
    print("Caught panic: " + e)
}
```

Sin `try-catch`, `panic()` aborta el programa. Dentro de un `try-catch`, es catchable como una excepcion normal.

### Implementacion

- Via `setjmp`/`longjmp` en el runtime C
- Try blocks crean un try-catch frame en el stack
- `throw()` ejecuta `longjmp` al frame mas cercano
- LIFO ordering: blockes anidados funcionan como expected

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

Desde v1.4, se pueden declarar funciones externas de C directamente en Nyx:

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

Desde v1.4, se pueden declarar constantes evaluadas en compile-time:

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

Desde v1.4, el loop `for-in` acepta una type annotation opcional para el elemento:

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

Desde v1.3, Nyx incluye un framework de testing integrado:

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

### Resolucion de paths (v1.4)

El compilador busca modulos en este orden:
1. Directorio local: `path.nx`
2. Standard library: `std/path.nx`
3. Paquetes instalados: `~/.nyx/packages/path.nx`

Los imports duplicados se detectan y se cargan una sola vez.

### Package Manager (v1.4)

```bash
# Instalar un paquete desde GitHub
./scripts/nyx-pkg-install.sh myuser/my-nyx-lib

# El paquete se clona en ~/.nyx/packages/my-nyx-lib/
# Luego se puede importar normalmente:
import { foo } from "my-nyx-lib/module"
```

> **Nota**: Imports de un solo nivel (sin resolucion recursiva). No hay namespaces.

---

## Bitwise Operators

Desde v1.5, Nyx soporta operadores bit a bit con precedencia C-style:

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

Desde v1.5, los strings exponen metodos adicionales:

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

Desde v1.5, los arrays exponen metodos adicionales:

```nyx
let arr = [10, 20, 30, 40, 50]

arr.slice(1, 3)            // [20, 30]
arr.reverse()              // [50, 40, 30, 20, 10]
arr.indexOf(30)            // 2
arr.join(", ")             // "10, 20, 30, 40, 50"
```

---

## Sized Numeric Types

Desde v1.6, Nyx soporta tipos numericos de ancho fijo:

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

Desde v1.6, el operador `as` permite conversiones explicitas entre tipos:

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

Desde v1.6, se pueden consultar tamaños y alineamientos de tipos en compile-time:

```nyx
let size = sizeof(int)       // 8 (bytes)
let align = alignof(int)     // 8
let ps = sizeof(Point)       // suma de campos
```

Ambos se evaluan en compile-time y se insertan como constantes.

---

## Raw Pointers & Unsafe

Desde v1.6, Nyx soporta raw pointers y bloques unsafe:

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

Desde v1.6, se puede gestionar memoria manualmente:

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

Desde v1.6, los structs pueden tener layout compatible con C:

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

Desde v1.6, se puede emitir ensamblador inline:

```nyx
unsafe {
    asm("nop")
    asm("mov $42, %rax")
}
```

Se compila a LLVM inline assembly. Requiere bloque `unsafe`.

---

## Volatile & Atomic

Desde v1.6, se soportan operaciones volatile y atomicas:

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

Desde v2.0, las closures pueden tener type annotations completas:

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

Desde v2.0.1, los arrays soportan type parameters:

```nyx
let nums: Array<int> = [1, 2, 3]
let names: Array<String> = ["alice", "bob"]
```

El compilador trackea el tipo del elemento en compile-time y hace auto-coercion en acceso por indice y en for-in loops.

---

## Dynamic Dispatch

Desde v2.0.2, Nyx soporta dynamic dispatch via `dyn Trait`:

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

Desde v2.0.3, el pattern matching soporta features avanzadas:

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

Desde v2.1, `pub` es sinonimo de `export`:

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

Desde v2.1, se pueden importar modulos con alias para acceso calificado:

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

Desde v2.2, `panic()` aborta la ejecucion con un mensaje:

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

Desde v2.2, `Result<T,E>` y `Option<T>` tienen metodos builtin:

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
```

---

## Iterators

Desde v3.0, Nyx soporta iterators lazy y chainables:

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

Desde v3.1, los traits pueden tener metodos con implementacion por defecto:

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

Desde v3.1, los type params genericos soportan multiples trait bounds:

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

Desde v3.1, los traits pueden declarar tipos asociados:

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

Desde v3.1, las funciones genericas soportan `where` clauses:

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

Desde v4.3, los operadores se pueden sobrecargar via traits:

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

Desde v4.5, los raw pointers soportan aritmetica:

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

Desde v4.6, Nyx soporta I/O con buffers (ademas del simple read_file/write_file):

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

Desde v4.6, los Maps soportan iteracion sobre keys y values:

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

Desde v5.0, Nyx soporta networking TCP y UDP:

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

Desde v5.1, Nyx soporta threads, mutexes y channels:

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

Desde v5.2, Nyx puede interactuar con el sistema operativo:

```nyx
// Ejecutar comando shell
let output: String = exec("echo hello")
print(output)  // "hello\n"

// Variables de entorno
setenv("MY_VAR", "hello")
let val: String = getenv("MY_VAR")  // "hello"

// Argumentos de linea de comandos
let args: Array = get_args()

// Terminar con codigo de salida
exit(0)
```

---

## JSON

Desde v5.2, Nyx incluye un parser/serializer JSON puro (en `std/json.nx`):

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

Desde v5.2, Nyx incluye una libreria HTTP pura (en `std/http.nx`) construida sobre TCP:

### HTTP Server
```nyx
import "std/http" as http

pub fn handler(req: Map) -> String {
    let method: String = req.get("method")
    let path: String = req.get("path")
    if path == "/" {
        return http.http_response(200, "Hello from Nyx!")
    }
    return http.http_response(404, "Not Found")
}

fn main() -> int {
    http.http_serve(8080, handler)
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

Desde v6.2, Nyx soporta operaciones de date/time:

```nyx
let now: int = datetime_now()  // timestamp en segundos
let epoch: int = time_epoch(2026, 3, 18)  // construir epoch timestamp
let formatted: String = datetime_format(now, "%Y-%m-%d %H:%M:%S")

let dt: int = datetime_from_epoch(1234567890)
let year: int = datetime_year(dt)
let month: int = datetime_month(dt)
let day: int = datetime_day(dt)
let hour: int = datetime_hour(dt)
let minute: int = datetime_minute(dt)
let second: int = datetime_second(dt)
let weekday: int = datetime_weekday(dt)  // 0=Sunday, 6=Saturday

let parsed: int = datetime_parse("2026-03-18", "%Y-%m-%d")
```

---

## Crypto

Desde v6.2, Nyx incluye funciones criptograficas:

```nyx
let data = "hello world"
let sha = sha256(data)     // hex string
let md = md5(data)         // hex string

print(sha)  // "b94d27b9934d3e08a52e52d7da7dabfac484efe37a5380ee9088f7ace2efcde9"
print(md)   // "5eb63bbbe01eeed093cb22bb8f5acdc3"
```

Implementacion pura en C, sin dependencias externas para SHA256/MD5.

---

## TLS/HTTPS

Desde v6.2, Nyx soporta HTTPS via OpenSSL:

```nyx
let response: String = https_get("https://example.com/api")
let resp2: String = https_post("https://example.com/api", "{\"key\":\"value\"}")

// Conexion manual
let tls_sock = tls_connect("example.com", 443)
tls_write(tls_sock, "GET / HTTP/1.1\r\nHost: example.com\r\n\r\n")
let data: String = tls_read(tls_sock, 4096)
tls_close(tls_sock)
```

Requiere OpenSSL instalado (`libssl-dev`, `libcrypto`).

---

## Logging

Desde v6.1, Nyx incluye un framework de logging (`std/log.nx`):

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

Desde v6.1, `std/collections.nx` proporciona operaciones de Set:

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

Desde v6.1, Nyx soporta expresiones regulares POSIX:

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

Desde v6.0, `format()` proporciona template strings:

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

Desde v6.0, Nyx soporta funciones de tiempo:

```nyx
sleep(1000)  // pausa 1000 ms

let t1 = time()      // timestamp en segundos
let t2 = time_ms()   // timestamp en milisegundos
let t3 = time_us()   // timestamp en microsegundos
```

---

## Math Functions

Desde v6.0, Nyx expone 17 funciones mathematicas via libm:

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

Desde v6.0, Nyx puede manejar señales POSIX:

```nyx
extern "C" fn my_handler()

signal_handle(2, my_handler)  // SIGINT
signal_reset(2)               // resetear a default
signal_ignore(2)              // ignorar signal
```

---

## Defer Statement

Desde v6.0, `defer` ejecuta codigo al salir del scope:

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

> **Status: SYNTACTIC ONLY** — async/await compiles but does NOT provide real parallelism. It is desugared to closure pairs.

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
- `async fn` generates a closure factory returning `{fn_ptr, env_ptr}*`
- `await` invokes that closure synchronously
- No futures, no polling, no task scheduling
- For real parallelism, use `spawn` or threads

### Async Executor [UNVERIFIED]

```nyx
// spawn_task, task_await, task_cancel, task_race
// These exist in tests but use pthreads under the hood
let task = spawn_task(async_fn)
let result = task_await(task)
```

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

**Limitation:** `spawn` blocks cannot capture variables from the outer scope directly. Use channels for communication.

### Select

Multiplexes over channels:

```nyx
let ch1: Map = channel_new(4)
let ch2: Map = channel_new(4)

channel_send(ch1, 42)

select {
    case ch1 => { print("ch1 received") }
    case ch2 => { print("ch2 received") }
    default => { print("nothing ready") }
}
```

Channels are created with `channel_new(buffer_size)`, sent to with `channel_send(ch, value)`, and received from via `select`.

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
```

### std/websocket.nx
```
ws_handshake(key), ws_encode_frame(payload, opcode)
ws_decode_frame(data), ws_ping_frame(), ws_pong_frame(data)
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
base64_encode(data), base64_decode(data)
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
| Dynamic dispatch | Soportado (v1.0) | vtables, `dyn Trait` como fat pointer |
| Closures 3+ niveles | Soportado (v0.28) | Flattened environment inheritance |
| `check_has_return` | Soportado (v0.28) | Detecta return en if/else/match |
| Block comments `/* */` | Soportado (v1.1) | Anidados con tracking de profundidad |
| Multiline strings | Soportado (v1.1) | `"""..."""` preserva newlines |
| Raw strings | Soportado (v1.1) | `r"..."` sin escape sequences |
| Polymorphic Maps | Soportado (v1.1) | Dispatch correcto a get_str/get_int |
| Parser error recovery | Soportado (v1.1) | `synchronize()`, acumula errores |
| Type inference | Soportado (v1.1) | Desde return types de funciones |
| Type aliases | Soportado (v1.1) | `type Integer = int` |
| Generic enums | Soportado (v1.2) | `enum Option<T>`, monomorphization |
| Option/Result builtins | Soportado (v1.2) | En std/prelude.nx |
| Tuples | Soportado (v1.2) | `(int, String)`, destructuring, `t.0` |
| Test framework | Soportado (v1.3) | `test "name" { assert(expr) }` |
| Formatter | Soportado (v1.3) | `nyx fmt` — AST pretty-printer |
| LSP tooling | Soportado (v1.3) | go-to-def, hover, document symbols |
| FFI (`extern "C" fn`) | Soportado (v1.4) | Declaraciones de funciones C |
| Const evaluation | Soportado (v1.4) | `const MAX = 100` — compile-time inline |
| Typed for-in | Soportado (v1.4) | `for p: Point in points` |
| Package manager | Soportado (v1.4) | Multi-path import resolution |
| Bitwise operators | Soportado (v1.5) | `&`, `|`, `^`, `<<`, `>>`, `~` |
| Compound assignment | Soportado (v1.5) | `+=`, `-=`, `*=`, `/=`, `%=`, `&=`, `|=`, `^=`, `<<=`, `>>=` |
| String methods | Soportado (v1.5) | trim, toUpper, toLower, replace, repeat, etc. |
| Array methods | Soportado (v1.5) | slice, reverse, indexOf, join |
| Sized numeric types | Soportado (v1.6) | i8, i16, i32, u8, u16, u32, u64, f32, usize |
| `as` cast | Soportado (v1.6) | `x as i32`, `y as float` |
| sizeof/alignof | Soportado (v1.6) | `sizeof(Type)`, `alignof(Type)` |
| Raw pointers + unsafe | Soportado (v1.6) | `*int`, `&x`, `*ptr`, `unsafe { ... }` |
| Manual memory | Soportado (v1.6) | `alloc(n)`, `free(ptr)`, `static var` |
| FFI structs | Soportado (v1.6) | `#[repr(C)]` |
| Inline assembly | Soportado (v1.6) | `asm("...")` |
| Volatile/atomic | Soportado (v1.6) | `volatile_read/write`, `atomic_load/store` |
| Typed closures | Soportado (v2.0) | `Fn(int) -> int` |
| Typed arrays | Soportado (v2.0.1) | `Array<int>`, `Array<String>` |
| Dynamic dispatch | Soportado (v2.0.2) | `dyn Trait` fat pointers |
| Match guards | Soportado (v2.0.3) | `Pattern if cond => body` |
| OR patterns | Soportado (v2.0.3) | `A | B => body` |
| Struct patterns | Soportado (v2.0.3) | `Point { x, y }` |
| Nested patterns | Soportado (v2.0.3) | `Some(Some(x))` |
| `pub` keyword | Soportado (v2.1) | Sinonimo de `export` |
| Module imports | Soportado (v2.1) | `import "mod" as alias` |
| panic() | Soportado (v2.2) | Runtime abort |
| Result/Option methods | Soportado (v2.2) | is_ok, unwrap, map, and_then, etc. |
| Iterators | Soportado (v3.0) | Lazy, chainable, for-in desugaring |
| Default methods | Soportado (v3.1) | Trait methods con body |
| Multi-bounds | Soportado (v3.1) | `T: A + B` |
| Associated types | Soportado (v3.1) | `type Item` en traits |
| Where clauses | Soportado (v3.1) | `where T: Display` |
| Operator overloading | Soportado (v4.3) | Via traits Add, Sub, Mul, etc. |
| Pointer arithmetic | Soportado (v4.5) | `ptr + n`, `ptr - ptr` |
| Buffered I/O | Soportado (v4.6) | file_open, file_read_line, etc. |
| Map iteration | Soportado (v4.6) | `map.keys()`, `map.values()` |
| Networking | Soportado (v5.0) | TCP, UDP, DNS |
| Threading | Soportado (v5.1) | Threads, mutexes, channels |
| Process/OS | Soportado (v5.2) | exec, getenv, setenv, exit, get_args |
| JSON | Soportado (v5.2) | json_parse, json_stringify |
| HTTP | Soportado (v5.2) | Server + client library |
| Spawn/Select | Soportado | M:N scheduler, channels, work-stealing |
| Async/Await | Sintáctico | Compila pero NO es paralelismo real |
| Event Loop | Soportado | epoll real en runtime/event_loop.c |
| Clone/Derive | Soportado | #[derive(Clone, PartialEq, Debug, Display, Default)] |
| Fixed-size arrays | Soportado | `[int: 5]` stack-allocated |
| HKT/GATs | Decorativo | Parseados, sin enforcement semántico |
| Lifetime annotations | Decorativo | Parseados (`'a`), sin borrow checker |
| impl Trait | Soportado | Sugar para dyn Trait |
| Tuple structs | Soportado | `struct Point(int, int)` → `_0`, `_1` |
| Union types | Soportado | `type V = int \| String` → enum |
| Declarative macros | Soportado | `macro name { (params) => { body } }` |
| if-let / while-let | Soportado | Pattern binding constructs |
| Literal patterns | Soportado | `match n { 0 => ..., 1 => ... }` |
| GCC inline asm | Soportado | Full constraint mapping |
| No-GC mode | Soportado | `make compile-no-gc` |
| Cross-compilation | Soportado | `make cross TARGET=...` |
| WASM target | Soportado | `make wasm` via wasi-sdk |
| Shebang | Soportado | `#!/usr/bin/env nyx` |
| Box/Rc/MoveOnly | Wrapper | Library-level, no compiler enforcement |
| `&T`/`&mut T` | Decorativo | Parsed, no borrow checking |
| `::` para enums | No soportado | Usar `.` (ej: `Color.Red`, no `Color::Red`) |
| Bare `return` | No soportado | Usar `return 0` en vez de `return` |
| Variable shadowing | No soportado | Re-declaration in same scope is an error |
| Default params | No soportado | `fn f(x: int = 5)` parsed but arity not reduced |
| `.length` property | Bug | Returns 0 on arrays/strings. Use `.length()` method |
| Generic 1-param struct | Bug | `Box<T>` causes GEP sizing error. Use 2+ params |
| u8/u16 print | Bug | Small types don't print correctly via print() |
| Nested struct access | Bug | Second nested field may return wrong value |
| Map.size()/has() | Bug | Always return 0/false |
| Lambda capture | Limitado | Lambdas can't capture outer scope; use inner fn pattern |
