# Escribir un programa Nyx

<!-- template: 1 -->

Cómo escribir Nyx idiomático y correcto. Lee esto antes de crear o revisar un programa
`.nx`. Cubre estructura, `Result`/`Option`, closures, traits, genéricos y concurrencia.
Las trampas NO se repiten acá: viven una sola vez en `AGENTS.md` (sección «Trampas») y
esta guía las señala por id.

## La referencia densa

Antes de escribir código no trivial, lee `docs/nyx/LLM.md` en ESTE proyecto (sembrado por
`nyx init`, refrescable con `nyx update --sync-docs`) — la referencia densa de builtins,
métodos, trampas y patrones idiomáticos. Ante cualquier conflicto entre esta guía y
`AGENTS.md`/`LLM.md`, mandan ellos.

## Verificar que compila

**SIEMPRE** verifica con:

```bash
nyx check          # parse + chequeo de tipos, sin linkear ni ejecutar — lo más rápido
nyx build          # compila el proyecto (lee nyx.toml)
nyx run            # compila y ejecuta
NYX_DIAG=json nyx build   # diagnósticos legibles por máquina, un JSON por error
```

No des por correcto el código sin compilarlo. Nyx tiene trampas reales que no dan error de
compilación y fallan en tiempo de ejecución.

## 1. Estructura de un programa

```nyx
// Comentario de módulo
import "std/http"        // stdlib — SIEMPRE con comillas
import "std/json"

fn main() -> int {
    // tu código acá
    return 0
}
```

- `fn main() -> int` es el entry point canónico.
- `import "ruta"` — la ruta va SIEMPRE entre comillas: `import "std/http"`,
  `import "src/mi_modulo"` (local, con el prefijo `src/`; un nombre pelado se ignora en
  silencio). Alias: `import "std/http" as http`.
- Nivel superior: `fn`, `struct`, `enum`, `trait`, `impl`, `type`, `const`, `let` (global),
  `var` (global mutable).

## 2. Tipos primitivos y literales

```nyx
fn main() -> int {
    let x: int = 42          // i64
    let y: float = 3.14      // double
    let b: bool = true
    let c: int = "a".charAt(0)   // charAt retorna int (byte), NO char
    let s: String = "hola"   // %nyx_string* — BYTES, no codepoints
    let arr: Array<int> = [1, 2, 3]
    let m: Map<String, int> = {"clave": 1, "otra": 2}   // claves solo string
    let vacio: Map<String, int> = {}
    return 0
}
```

## 3. Result y Option — manejo de errores idiomático

```nyx
// Option
fn find(arr: Array<int>, val: int) -> Option<int> {
    var i: int = 0                      // var: se muta en el loop (let es inmutable)
    while i < arr.length() {
        if arr[i] == val { return Option.Some(i) }
        i = i + 1
    }
    return Option.None
}

// Result
fn divide(a: int, b: int) -> Result<int, String> {
    if b == 0 { return Result.Err("división por cero") }
    return Result.Ok(a / b)
}

// El operador ? — propaga el error (en funciones que retornan Result)
fn compute() -> Result<int, String> {
    let r = divide(10, 2)?    // si es Err, retorna Err de inmediato
    return Result.Ok(r * 2)
}

fn main() -> int {
    // Consumir un Option
    let res = find([1, 2, 3], 2)
    if res.is_some() {
        println(res.unwrap().to_string())
    }
    // O con match:
    match res {
        Option.Some(idx) => { println(idx.to_string()) }
        Option.None      => { println("no encontrado") }
    }
    return 0
}
```

## 4. Closures

```nyx
// El tipo de una función es Fn(params) -> ret  (NO Fn<...>)
fn apply(arr: Array<int>, f: Fn(int) -> int) -> Array<int> {
    var result: Array<int> = []
    var i: int = 0
    while i < arr.length() {
        result.push(f(arr[i]))
        i = i + 1
    }
    return result
}

fn main() -> int {
    // Un closure captura los locales de su scope (funciona con lambdas y fns anidadas)
    let factor: int = 3
    let triple = fn(x: int) -> int { return x * factor }
    println(triple(4).to_string())    // 12

    let doubles = apply([1, 2, 3], fn(x: int) -> int { return x * 2 })
    println(doubles.length().to_string())
    return 0
}
```

## 5. Structs, traits, dispatch estático y dinámico

```nyx
struct Point {
    x: float,
    y: float,
}

trait Distance {
    fn from_origin(self) -> float
}

impl Distance for Point {
    fn from_origin(self) -> float {
        let d = self.x * self.x + self.y * self.y
        return d    // simplificado (sin sqrt)
    }
}

// Dispatch estático (monomorfización)
fn measure<T: Distance>(obj: T) -> float {
    return obj.from_origin()
}

// Dispatch dinámico (fat pointer {data*, vtable*})
fn measure_dyn(obj: dyn Distance) -> float {
    return obj.from_origin()
}

fn main() -> int {
    let p = Point { x: 3.0, y: 4.0 }
    let d1 = measure(p)        // estático — T=Point
    let d2 = measure_dyn(p)    // dinámico
    return 0
}
```

## 6. Genéricos con monomorfización implícita

```nyx
// No hace falta turbofish — el compilador infiere T del argumento
fn identity<T>(x: T) -> T { return x }

fn main() -> int {
    let n: int = identity(42)          // T=int inferido
    let s: String = identity("hola")   // T=String inferido
    return 0
}
```

## 7. Enums y pattern matching

```nyx
// Las variantes de enum usan . no ::
enum Shape {
    Circle(float),
    Rect(float, float),
    Dot,
}

fn area(f: Shape) -> float {
    // Asigna a una var y retorna al final (NO pongas `return` en cada brazo) —
    // un match con `return` en TODOS sus brazos y tipo de retorno float dispara
    // un bug de codegen en la rama muerta de exhaustividad (repro 2026-09-04).
    var result: float = 0.0
    match f {
        Shape.Circle(r)   => { result = 3.14159 * r * r }
        Shape.Rect(w, h)  => { result = w * h }
        Shape.Dot         => { result = 0.0 }
    }
    return result
}

fn main() -> int {
    println(area(Shape.Circle(2.0)).to_string())
    return 0
}
```

## 8. Concurrencia — spawn, channels y select

```nyx
fn compute_something() -> int { return 41 + 1 }

fn main() -> int {
    // Channel: la capacidad es OBLIGATORIA, y se declara como Map (handle opaco)
    let ch: Map = channel_new(10)

    // Lanzar una goroutine
    spawn {
        let result: int = compute_something()
        channel_send(ch, result)
    }

    // Recibir (bloquea hasta que haya mensaje)
    let msg: int = channel_recv(ch)
    println("Resultado: " + msg.to_string())

    // select — la sintaxis real es `case <canal> => bloque`, con default opcional
    let ch1: Map = channel_new(4)
    let ch2: Map = channel_new(4)
    channel_send(ch1, 7)
    select {
        case ch1 => { println("canal 1 listo") }
        case ch2 => { println("canal 2 listo") }
        default  => { println("ninguno listo") }
    }
    return 0
}
```

## Trampas

La lista canónica vive en `AGENTS.md` (sección «Trampas»), generada desde los datos del
lenguaje — acá nunca se copia, así que acá nunca puede quedar vieja. Las que más muerden
mientras escribes un programa nuevo, por id:

| id | Qué te cuesta |
|---|---|
| `nested-map-from-call` | Un Map que vino del retorno de una función, insertado en otro Map |
| `channel-is-map` | Declarar un canal como `int`, o llamar a `channel_new()` sin capacidad |
| `charat-returns-int` | Comparar `charAt(i)` contra un String de un carácter |
| `strings-are-bytes` | Contar caracteres con `length()` sobre texto UTF-8 |
| `map-literal-string-keys` | Escribir `{clave: 1}` en vez de `{"clave": 1}` |
| `enum-dot-not-colons` | Escribir `Enum::Variant` |
| `check-bind-return` | Ignorar el retorno de `http_serve`/`tcp_listen`/`udp_bind` |
| `option-struct-multifield-link` | Retornar `Option<Struct>` con un struct de 2+ campos como payload |
| `fork-gc-child-exec` | Alocar en el hijo de `fork()` antes del `execvp()` — es un *límite*, así que no está en la lista de AGENTS.md: vive en `docs/nyx/LLM.md` |
| `assert-aborts-process` | Esperar que `assert()` siga adelante después de una falla |

`nyx vet` marca por nombre las que son grep-ables y te da `<archivo>:<línea>`.

## Patrones frecuentes

### Servidor HTTP

```nyx
// NUNCA lo ejecutes directamente en una sesión de agente — es bloqueante. Solo
// compílalo (nyx build). El handler recibe la request como ARRAY:
//   ["request", method, path, headers_pairs, body, err]
import "std/http" as http

pub fn on_request(req: Array) -> String {
    let path: String = req[2]
    return http.http_response(200, "hola mundo")
}

fn main() -> int {
    // http_serve retorna -1 si el bind falla — chequéalo siempre
    if http.http_serve(8080, on_request) < 0 { return 1 }
    return 0
}
```

### JSON

```nyx
// json_parse devuelve un ARRAY taggeado (JSON es recursivo), no un Map
import "std/json"

fn main() -> int {
    let data: Array = json_parse("{\"nombre\": \"Nyx\", \"version\": 16}")
    let nombre: String = json_as_string(json_get(data, "nombre"))
    println(nombre)
    let out: String = json_stringify(data)
    println(out)
    return 0
}
```

### Leer un archivo

```nyx
// Builtin: read_file (sentinela "" en error). Para código nuevo, prefiere la familia
// try_, que devuelve Result y distingue un archivo vacío de un error:
import "std/fs"
import "std/error"

fn main() -> int {
    match try_read_file("datos.txt") {
        Result.Ok(contenido) => { println(contenido) }
        Result.Err(e)        => { println("error: " + error_to_string(e)) }
    }
    return 0
}
```
