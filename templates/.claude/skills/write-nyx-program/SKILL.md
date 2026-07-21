---
name: write-nyx-program
description: Guía para escribir código Nyx idiomático y correcto. Usar cuando hay que crear o revisar un programa .nx. Cubre estructura, Result/Option, closures, traits, genéricos, concurrencia, y los gotchas que causan SEGV o errores de compilación silenciosos.
---

# write-nyx-program — Escribir Nyx idiomático

## Referencia densa completa

Antes de escribir código no trivial, leer `LLM.md` en la raíz de ESTE proyecto
(sembrado por `nyx init`; refrescable con `nyx update --sync-docs`) — referencia
densa de builtins, métodos, gotchas y patrones idiomáticos.

## Verificar que compila

**SIEMPRE** verificar con:

```bash
nyx build          # compila el proyecto (lee nyx.toml)
nyx run            # compila y ejecuta
NYX_DIAG=json nyx build   # diagnósticos JSON por línea (para agentes)
```

No asumir que el código es correcto sin compilarlo. Nyx tiene gotchas reales que no
dan errores de compilación pero crashean en runtime.

---

## 1. Estructura básica de un programa

```nyx
// Comentario de módulo
import std/http        // stdlib
import std/json

fn main() -> int {
    // código aquí
    return 0
}
```

- `fn main() -> int` es el entry point canónico.
- `import` sin comillas; paths relativos al proyecto (resueltos vía nyx.toml).
- Top-level: `fn`, `struct`, `enum`, `trait`, `impl`, `type`, `const`, `let` (global), `var` (mutable global).

## 2. Tipos primitivos y literales

```nyx
let x: int = 42          // i64
let y: float = 3.14      // double
let b: bool = true
let c: char = 'a'        // i8 en store, i64 en expresión
let s: String = "hola"   // %nyx_string* — BYTES, no codepoints
let arr: Array<int> = [1, 2, 3]
let m: Map<String, int> = {"clave": 1, "otra": 2}   // claves SOLO string
let vacio: Map<String, int> = {}
```

## 3. Result y Option — manejo de errores idiomático

```nyx
// Option
fn buscar(arr: Array<int>, val: int) -> Option<int> {
    let i: int = 0
    while i < arr.length() {
        if arr[i] == val { return Some(i) }
        i = i + 1
    }
    return None
}

// Consumir Option
let res = buscar([1,2,3], 2)
if res.is_some() {
    println(res.unwrap().to_string())
}
// O con match:
match res {
    Some(idx) => { println(idx.to_string()) }
    None      => { println("no encontrado") }
}

// Result
fn dividir(a: int, b: int) -> Result<int, String> {
    if b == 0 { return Err("división por cero") }
    return Ok(a / b)
}

// Operador ? — propaga el error (en funciones que retornan Result)
fn calcular() -> Result<int, String> {
    let r = dividir(10, 2)?    // si Err, retorna Err inmediatamente
    return Ok(r * 2)
}
```

## 4. Closures

```nyx
// Closure captura por referencia (SharedEnv)
let factor: int = 3
let triplicar: Fn<int, int> = fn(x: int) -> int { x * factor }
println(triplicar(4).to_string())    // 12

// Pasar closure como argumento
fn aplicar(arr: Array<int>, f: Fn<int, int>) -> Array<int> {
    let result: Array<int> = []
    let i: int = 0
    while i < arr.length() {
        result.push(f(arr[i]))
        i = i + 1
    }
    return result
}

let dobles = aplicar([1,2,3], fn(x: int) -> int { x * 2 })
```

## 5. Structs, traits, dispatch estático y dinámico

```nyx
struct Punto {
    x: float,
    y: float,
}

trait Distancia {
    fn desde_origen(self) -> float
}

impl Distancia for Punto {
    fn desde_origen(self) -> float {
        // sqrt no builtin — usar math
        let d = self.x * self.x + self.y * self.y
        return d    // simplificado
    }
}

// Dispatch estático (monomorfización)
fn medir<T: Distancia>(obj: T) -> float {
    return obj.desde_origen()
}

// Dispatch dinámico (fat pointer {data*, vtable*})
fn medir_dyn(obj: dyn Distancia) -> float {
    return obj.desde_origen()
}

fn main() -> int {
    let p = Punto { x: 3.0, y: 4.0 }
    let d1 = medir(p)        // static — T=Punto
    let d2 = medir_dyn(p)    // dynamic
    return 0
}
```

## 6. Genéricos con monomorfización implícita (v0.16+)

```nyx
// No necesita turbofish — el compilador infiere T del argumento
fn identidad<T>(x: T) -> T { return x }

fn main() -> int {
    let n: int = identidad(42)          // T=int inferido
    let s: String = identidad("hola")   // T=String inferido
    return 0
}
```

## 7. Enums y pattern matching

```nyx
// Enum usa . no ::
enum Forma {
    Circulo(float),
    Rectangulo(float, float),
    Punto,
}

fn area(f: Forma) -> float {
    match f {
        Forma.Circulo(r)          => { return 3.14159 * r * r }
        Forma.Rectangulo(w, h)    => { return w * h }
        Forma.Punto               => { return 0.0 }
    }
}
```

## 8. Concurrencia — spawn y channels

```nyx
// Channel se declara como Map (channel_new retorna i8*)
let ch: Map = channel_new()

// Spawn un goroutine
spawn {
    let resultado: int = calcular_algo()
    channel_send(ch, resultado.to_string())
}

// Recibir (bloquea hasta que haya mensaje)
let msg: String = channel_recv(ch)
println("Resultado: " + msg)

// select — esperar en múltiples canales
let ch1: Map = channel_new()
let ch2: Map = channel_new()
select {
    msg1 = channel_recv(ch1) => { println("canal 1: " + msg1) }
    msg2 = channel_recv(ch2) => { println("canal 2: " + msg2) }
}
```

---

## Gotchas críticos — memorizarlos antes de escribir

| Síntoma | Causa | Fix |
|---------|-------|-----|
| SEGV en `arr[i].method()` | Acceso indexado + método en la misma expresión | `let elem: Tipo = arr[i]` primero, luego `elem.method()` |
| SEGV con Map anidado | `Map<String, Map<...>>` no funciona | Usar claves planas con separador: `"usuario:nombre"` |
| `length()` retorna bytes, no chars | Strings son bytes en Nyx | Para codepoints: `char_length()` |
| `charAt(i)` retorna `int` | Contrato de tipos | Castear: `let c: char = charAt(i)` |
| `{"ident": v}` OK, `{ident: v}` error | Map literal solo acepta claves string | Usar comillas: `{"clave": v}` |
| Enums con `::` dan error de parse | Nyx usa `.` no `::` | `Enum.Variant`, nunca `Enum::Variant` |
| Channel da error de tipo | Se declara como `Map` | `let ch: Map = channel_new()` |
| `and`/`or` no evalúan el segundo operando si no hace falta | Cortocircuitan igual que `&&`/`\|\|` | Comportamiento correcto — no es bug |
| `defer f()` sin bloque | Soportado desde v0.16 | `defer f()` funciona; no requiere `defer { f() }` |
| `const MSG: String = "..."` falla en v0.15- | Resuelto en v0.16 | Usar v0.16; const String funciona top-level y local |
| `fork()` + GC cuelga en child | Child no puede alocar memoria GC | Child debe llamar `execvp()` inmediatamente |

---

## Patrones frecuentes

### HTTP server multi-thread
```nyx
import std/http

fn main() -> int {
    // NUNCA ejecutar directamente en Claude Code — es bloqueante
    // Solo compilar: make compile FILE=...
    http_serve_mt(8080, 4, fn(req: Map, res: Map) {
        response_text(res, "hola mundo")
    })
    return 0
}
```

### JSON
```nyx
import std/json

fn main() -> int {
    let data: Map = json_parse("{\"nombre\": \"Nyx\", \"version\": 16}")
    let nombre: String = map_get(data, "nombre")
    let out: String = json_stringify(data)
    println(out)
    return 0
}
```

### Leer archivo
```nyx
import std/fs

fn main() -> int {
    let contenido: String = file_read("datos.txt")
    println(contenido)
    return 0
}
```
