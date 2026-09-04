# Write a Nyx program

<!-- template: 1 -->

How to write idiomatic, correct Nyx. Read this before creating or reviewing a `.nx`
program. It covers structure, `Result`/`Option`, closures, traits, generics and
concurrency. The footguns are NOT repeated here: they live once in `AGENTS.md`
(section «Gotchas»), and this guide points at them by id.

## The dense reference

Before writing anything non-trivial, read `docs/nyx/LLM.md` in THIS project (seeded by
`nyx init`, refreshed with `nyx update --sync-docs`) — the dense reference of builtins,
methods, gotchas and idiomatic patterns. If this guide and `AGENTS.md`/`LLM.md` ever
disagree, they win.

## Verify that it compiles

**ALWAYS** verify:

```bash
nyx check          # parse + type-check only, no linking, no run — fastest feedback
nyx build          # compiles the project (reads nyx.toml)
nyx run            # compiles and runs
NYX_DIAG=json nyx build   # machine-readable diagnostics, one JSON line per error
```

Do not assume the code is correct without compiling it. Nyx has real traps that produce no
compile error and fail at run time.

## 1. Program structure

```nyx
// Module comment
import "std/http"        // stdlib — ALWAYS quoted
import "std/json"

fn main() -> int {
    // your code here
    return 0
}
```

- `fn main() -> int` is the canonical entry point.
- `import "path"` — the path is ALWAYS quoted: `import "std/http"`, `import "src/my_module"`
  (local, with the `src/` prefix; a bare name is silently ignored). Alias:
  `import "std/http" as http`.
- Top level: `fn`, `struct`, `enum`, `trait`, `impl`, `type`, `const`, `let` (global),
  `var` (mutable global).

## 2. Primitive types and literals

```nyx
fn main() -> int {
    let x: int = 42          // i64
    let y: float = 3.14      // double
    let b: bool = true
    let c: int = "a".charAt(0)   // charAt returns int (byte), NOT char
    let s: String = "hello"  // %nyx_string* — BYTES, not codepoints
    let arr: Array<int> = [1, 2, 3]
    let m: Map<String, int> = {"key": 1, "other": 2}   // string keys only
    let empty: Map<String, int> = {}
    return 0
}
```

## 3. Result and Option — idiomatic error handling

```nyx
// Option
fn find(arr: Array<int>, val: int) -> Option<int> {
    var i: int = 0                      // var: mutated in the loop (let is immutable)
    while i < arr.length() {
        if arr[i] == val { return Option.Some(i) }
        i = i + 1
    }
    return Option.None
}

// Result
fn divide(a: int, b: int) -> Result<int, String> {
    if b == 0 { return Result.Err("division by zero") }
    return Result.Ok(a / b)
}

// The ? operator — propagates the error (in functions returning Result)
fn compute() -> Result<int, String> {
    let r = divide(10, 2)?    // on Err, returns Err immediately
    return Result.Ok(r * 2)
}

fn main() -> int {
    // Consuming an Option
    let res = find([1, 2, 3], 2)
    if res.is_some() {
        println(res.unwrap().to_string())
    }
    // Or with match:
    match res {
        Option.Some(idx) => { println(idx.to_string()) }
        Option.None      => { println("not found") }
    }
    return 0
}
```

## 4. Closures

```nyx
// A function type is Fn(params) -> ret  (NOT Fn<...>)
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
    // A closure captures locals from its scope (works for lambdas and nested fns)
    let factor: int = 3
    let triple = fn(x: int) -> int { return x * factor }
    println(triple(4).to_string())    // 12

    let doubles = apply([1, 2, 3], fn(x: int) -> int { return x * 2 })
    println(doubles.length().to_string())
    return 0
}
```

## 5. Structs, traits, static and dynamic dispatch

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
        return d    // simplified (no sqrt)
    }
}

// Static dispatch (monomorphization)
fn measure<T: Distance>(obj: T) -> float {
    return obj.from_origin()
}

// Dynamic dispatch (fat pointer {data*, vtable*})
fn measure_dyn(obj: dyn Distance) -> float {
    return obj.from_origin()
}

fn main() -> int {
    let p = Point { x: 3.0, y: 4.0 }
    let d1 = measure(p)        // static — T=Point
    let d2 = measure_dyn(p)    // dynamic
    return 0
}
```

## 6. Generics with implicit monomorphization

```nyx
// No turbofish needed — the compiler infers T from the argument
fn identity<T>(x: T) -> T { return x }

fn main() -> int {
    let n: int = identity(42)          // T=int inferred
    let s: String = identity("hello")  // T=String inferred
    return 0
}
```

## 7. Enums and pattern matching

```nyx
// Enum variants use . not ::
enum Shape {
    Circle(float),
    Rect(float, float),
    Dot,
}

fn area(f: Shape) -> float {
    // Assign to a var and return at the end (do NOT `return` inside every arm) —
    // a match with `return` in ALL arms and a float return type trips a codegen
    // bug in the dead exhaustiveness branch (repro 2026-09-04).
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

## 8. Concurrency — spawn, channels and select

```nyx
fn compute_something() -> int { return 41 + 1 }

fn main() -> int {
    // Channel: the capacity is MANDATORY, and it is declared as Map (opaque handle)
    let ch: Map = channel_new(10)

    // Spawn a goroutine
    spawn {
        let result: int = compute_something()
        channel_send(ch, result)
    }

    // Receive (blocks until a message arrives)
    let msg: int = channel_recv(ch)
    println("Result: " + msg.to_string())

    // select — the real syntax is `case <channel> => block`, with an optional default
    let ch1: Map = channel_new(4)
    let ch2: Map = channel_new(4)
    channel_send(ch1, 7)
    select {
        case ch1 => { println("channel 1 ready") }
        case ch2 => { println("channel 2 ready") }
        default  => { println("none ready") }
    }
    return 0
}
```

## Gotchas

The canonical list lives in `AGENTS.md` (section «Gotchas»), generated from the language
data — it is never copied here, so it can never go stale here. The ones that bite most
often while writing a new program, by id:

| id | What it costs you |
|---|---|
| `nested-map-from-call` | A Map that came from a function's return value, inserted into another Map |
| `channel-is-map` | Declaring a channel as `int`, or calling `channel_new()` without a capacity |
| `charat-returns-int` | Comparing `charAt(i)` against a one-character String |
| `strings-are-bytes` | Counting characters with `length()` on UTF-8 text |
| `map-literal-string-keys` | Writing `{key: 1}` instead of `{"key": 1}` |
| `enum-dot-not-colons` | Writing `Enum::Variant` |
| `check-bind-return` | Ignoring the return value of `http_serve`/`tcp_listen`/`udp_bind` |
| `option-struct-multifield-link` | Returning `Option<Struct>` with a 2+-field struct payload |
| `fork-gc-child-exec` | Allocating in the child of `fork()` before `execvp()` — a *limit*, so it is not in the AGENTS.md list: it lives in `docs/nyx/LLM.md` |
| `assert-aborts-process` | Expecting `assert()` to keep going after a failure |

`nyx vet` flags the grep-able ones by name and gives you `<file>:<line>`.

## Common patterns

### HTTP server

```nyx
// NEVER run this directly in an agent session — it blocks. Only compile it
// (nyx build). The handler receives the request as an ARRAY:
//   ["request", method, path, headers_pairs, body, err]
import "std/http" as http

pub fn on_request(req: Array) -> String {
    let path: String = req[2]
    return http.http_response(200, "hello world")
}

fn main() -> int {
    // http_serve returns -1 if the bind fails — always check it
    if http.http_serve(8080, on_request) < 0 { return 1 }
    return 0
}
```

### JSON

```nyx
// json_parse returns a tagged ARRAY (JSON is recursive), not a Map
import "std/json"

fn main() -> int {
    let data: Array = json_parse("{\"name\": \"Nyx\", \"version\": 16}")
    let name: String = json_as_string(json_get(data, "name"))
    println(name)
    let out: String = json_stringify(data)
    println(out)
    return 0
}
```

### Reading a file

```nyx
// Builtin: read_file (sentinel "" on error). For new code prefer the try_ family,
// which returns a Result and tells an empty file apart from an error:
import "std/fs"
import "std/error"

fn main() -> int {
    match try_read_file("data.txt") {
        Result.Ok(content) => { println(content) }
        Result.Err(e)      => { println("error: " + error_to_string(e)) }
    }
    return 0
}
```
