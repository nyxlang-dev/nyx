# Nyx Project

This is a Nyx project. Nyx is a multiparadigm language with gradual typing that compiles to native code via LLVM. Files use `.nx` extension.

## Syntax Reference

```nyx
// Types: int, float, bool, char, String, Array, Map, Fn
let x: int = 42          // immutable
var y = 0                 // mutable
const MAX = 100           // compile-time constant

// String interpolation
print("value = ${x * 2}")

// Functions
fn add(a: int, b: int) -> int { return a + b }

// Structs + methods
struct Point { x: int, y: int }
impl Point {
    fn dist(self) -> int { return self.x + self.y }
}

// Enums — use DOT syntax (NOT ::)
enum Shape { Circle(int), Rect(int, int) }
let s = Shape.Circle(5)

// Pattern matching (exhaustive)
return match s {
    Shape.Circle(r) => r * r * 3,
    Shape.Rect(w, h) => w * h
}

// Generics (monomorphized)
fn identity<T>(x: T) -> T { return x }

// Traits
trait Display { fn to_string(self) -> String }
impl Display for Point {
    fn to_string(self) -> String { return "(${self.x}, ${self.y})" }
}

// Option and Result are built-in
enum Option<T> { Some(T), None }
enum Result<T, E> { Ok(T), Err(E) }
let val = risky_call()?   // try operator

// Closures
fn make_counter() -> Fn {
    var n = 0
    fn inc() -> int { n = n + 1; return n }
    return inc
}

// Iterators (lazy, chainable)
let evens = [1,2,3,4].iter()
    .filter(fn(x: int) -> bool { return x % 2 == 0 })
    .collect()

// Modules
export fn helper() -> int { return 1 }
import { helper } from "my_module"

// Control flow
if x > 0 { } else { }
while i < 10 { i = i + 1 }
for i in 0..10 { }
for item: String in names { }

// Collections
var arr = [1, 2, 3]
arr.push(4); arr.pop(); arr.length()

var m = Map.new()
m.insert("key", "value")
let v: String = m.get("key")

// Error handling
try { risky() } catch e { print(e) }
if let Option.Some(v) = maybe { print(v) }

// File I/O
let content = read_file("file.txt")
write_file("out.txt", data)

// JSON
let data: Map = json_parse(text)
let json: String = json_stringify(obj)

// HTTP
import "std/http" as http
pub fn on_request(req: Map) -> String {
    return http.http_response(200, "Hello!")
}
fn main() -> int { http.http_serve(8080, on_request); return 0 }

// Concurrency
let t = thread_spawn(worker_fn)
let result = thread_join(t)
spawn { /* goroutine */ }

// Process
let output: String = exec("echo hello")
let args: Array = get_args()
```

## Critical Traps

1. **`and`/`or` do NOT short-circuit** — both sides always evaluate. Nest conditions instead.
2. **`arr[i].method()` causes SEGV** — store `arr[i]` in a typed variable first.
3. **`charAt()` returns int** (ASCII code), not char. Compare with numbers: `if c == 65`.
4. **`for-in` on mixed-type arrays** causes infinite loop. Use `while` + index.
5. **Enum syntax uses `.`** not `::` — `Color.Red`, not `Color::Red`.
6. **Bare `return`** without value doesn't work. Use `return 0`.
7. **`handler` as function name** crashes codegen. Use any other name.
8. **Map literal `{}`** not supported. Use `Map.new()` + `.insert()`.
9. **HTTP Content-Length**: use `str_byte_length(body)`, not `.length()`.

## Build Commands

```bash
nyx run src/main.nx    # compile and run a file
nyx build              # build project (reads nyx.toml)
nyx build --release    # build with optimizations
nyx run                # build and run project
nyx add <pkg>          # add dependency
nyx info               # show project info
```
