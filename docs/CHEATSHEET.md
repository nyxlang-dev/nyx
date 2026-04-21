# Nyx Language Cheat Sheet

> Quick reference for humans and AI assistants. For the full specification, see [SPEC.md](../SPEC.md).

## Basics

```nyx
// Single-line comment
/* Multi-line comment */

// Entry point
fn main() {
    print("Hello, world!")
}
```

## Types

```nyx
let x: int = 42              // 64-bit integer
let pi: float = 3.14         // 64-bit float (f64)
let active: bool = true       // boolean
let ch: char = 'A'            // character (i8)
let name: String = "Nyx"      // heap string
let nums: Array = [1, 2, 3]   // dynamic array (heterogeneous)
let m = Map.new()              // hash map
let f: Fn = some_function     // function value
```

## Variables

```nyx
let x = 10          // immutable
var y = 20           // mutable
y = 30
const MAX = 100      // compile-time constant
```

## String Interpolation

```nyx
let name = "Nyx"
let ver = 12
print("Hello ${name} v${ver}!")       // Hello Nyx v12!
print("${10 + 20}")                   // 30
```

## Operators

```nyx
// Arithmetic: + - * / % ** (power)
// Comparison: == != < > <= >=
// Logical: and or not (also && || !)
// Bitwise: & | ^ ~ << >>
// Assignment: = += -= *= /= %= &= |= ^= <<= >>=
```

## Control Flow

```nyx
// If / else
if x > 10 {
    print("big")
} else if x == 10 {
    print("ten")
} else {
    print("small")
}

// While
var i = 0
while i < 10 {
    i = i + 1
}

// For with range
for i in 0..10 { }       // [0, 10) exclusive
for i in 0..=10 { }      // [0, 10] inclusive

// For with array
for item in [1, 2, 3] {
    print(item)
}

// For with type annotation (needed for struct/string arrays)
for p: Point in points { print(p.x) }

// Break and continue work inside loops
```

## Functions

```nyx
fn add(a: int, b: int) -> int {
    return a + b
}

// Default parameters
fn greet(name: String, greeting: String = "Hello") -> String {
    return "${greeting}, ${name}!"
}

// Functions as values
fn apply(f: Fn, x: int) -> int { return f(x) }
let double = fn(x: int) -> int { return x * 2 }
print(apply(double, 5))  // 10
```

## Closures

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

## Arrays

```nyx
var arr = [1, 2, 3]
arr.push(4)              // append
let last = arr.pop()     // remove last
let len = arr.length()   // size
arr[0] = 99              // modify

// Nested arrays
var matrix = [[1, 2], [3, 4]]
let row: Array = matrix[0]
```

## Strings

```nyx
let s = "Hello" + " World"
let len = s.length()
let sub = s.substring(0, 5)         // "Hello"
let upper = s.toUpper()
let lower = s.toLower()
let parts: Array = s.split(" ")     // ["Hello", "World"]
let trimmed = s.trim()
let has = s.contains("World")       // true
let idx = s.indexOf("World")        // 6
let c = s.charAt(0)                 // returns int (ASCII code)
```

## Maps

```nyx
var m = Map.new()
m.insert("key", "value")
let v: String = m.get("key")
let keys: Array = m.keys()
// Note: map literal {} is NOT supported (ambiguity with blocks)
```

## Structs

```nyx
struct Point { x: int, y: int }

let p = Point { x: 10, y: 20 }
print(p.x)

// Methods via impl
impl Point {
    fn manhattan(self) -> int {
        return self.x + self.y
    }
}
print(p.manhattan())
```

## Enums & Pattern Matching

```nyx
enum Color { Red, Green, Blue }
enum Shape { Circle(int), Rect(int, int) }

// Construction uses DOT syntax (not ::)
let c = Color.Red
let s = Shape.Circle(5)

// Pattern matching (exhaustive)
fn area(s: Shape) -> int {
    return match s {
        Shape.Circle(r) => r * r * 3,
        Shape.Rect(w, h) => w * h
    }
}

// Match as statement
match color {
    Color.Red => print("red"),
    _ => print("other")
}
```

## Generic Enums: Option & Result

```nyx
// Both are built-in (from std/prelude.nx)
enum Option<T> { Some(T), None }
enum Result<T, E> { Ok(T), Err(E) }

let x: Option<int> = Option.Some(42)
let val = match x {
    Option.Some(v) => v,
    Option.None => 0
}

fn safe_div(a: int, b: int) -> Result<int, String> {
    if b == 0 { return Result.Err("division by zero") }
    return Result.Ok(a / b)
}

// Try operator
let result = safe_div(10, 0)?   // returns Err early if error
```

## Traits

```nyx
trait Display {
    fn to_string(self) -> String
}

trait Greeter {
    fn name(self) -> String
    // Default method
    fn greet(self) -> String {
        return "Hello, " + self.name()
    }
}

impl Display for Point {
    fn to_string(self) -> String {
        return "(${self.x}, ${self.y})"
    }
}

// Trait inheritance
trait Animal : Named + Printable {
    fn species(self) -> String
}
```

## Generics

```nyx
fn identity<T>(x: T) -> T { return x }
let a = identity<int>(42)

struct Pair<A, B> { first: A, second: B }
let p = Pair<int, String> { first: 1, second: "hi" }

// Trait bounds
fn show<T: Display>(x: T) -> String { return x.to_string() }
```

## Iterators

```nyx
let result = [1, 2, 3, 4, 5]
    .iter()
    .filter(fn(x: int) -> bool { return x % 2 == 0 })
    .map(fn(x: int) -> int { return x * x })
    .take(3)
    .collect()
// [4, 16]

// Other terminals: .sum(), .count(), .fold(), .any(), .all()
// Other adapters: .skip(), .enumerate(), .chain()
```

## Modules

```nyx
// math_utils.nx
export fn cube(x: int) -> int { return x * x * x }

// main.nx
import { cube } from "math_utils"
print(cube(3))  // 27

// Import with namespace
import "std/json" as json
let data = json.json_parse(text)
```

## Error Handling

```nyx
// Try-catch
try {
    let result = risky_operation()
} catch e {
    print("Error: ${e}")
}

// If-let for Option/Result
if let Option.Some(val) = maybe_value {
    print(val)
}

// While-let
while let Option.Some(item) = iterator.next() {
    print(item)
}
```

## Concurrency

```nyx
// Threads
let t = thread_spawn(worker_fn)
let result: int = thread_join(t)

// Mutex
let m = mutex_new()
mutex_lock(m)
// critical section
mutex_unlock(m)

// Channels
let ch = channel_new()
channel_send(ch, 42)
let val: int = channel_recv(ch)

// Goroutines (M:N scheduler)
spawn { print("hello from goroutine") }

// Select
select {
    case ch1 => { print("ch1") }
    case ch2 => { print("ch2") }
    default => { print("none") }
}
```

## HTTP & Networking

```nyx
import "std/http" as http

// Server
pub fn my_handler(req: Map) -> String {
    let path: String = req.get("path")
    return http.http_response(200, "Hello!")
}
fn main() -> int {
    http.http_serve(8080, my_handler)
    return 0
}

// Client
let resp: String = http_get("http://example.com/api")
let resp2: String = http_post("http://example.com/api", body)
```

## JSON

```nyx
// Parse
let data: Map = json_parse("{\"name\": \"nyx\"}")
let name: String = data.get("name")

// Stringify
var obj = Map.new()
obj.insert("key", "value")
let json: String = json_stringify(obj)
```

## File I/O

```nyx
let content: String = read_file("data.txt")
write_file("output.txt", "hello")
let exists: bool = file_exists("data.txt")
```

## Process & OS

```nyx
let output: String = exec("echo hello")
setenv("MY_VAR", "value")
let val: String = getenv("MY_VAR")
let args: Array = get_args()
exit(0)
```

## Derive Macros

```nyx
#[derive(Clone, PartialEq, Debug, Display, Default)]
struct Point { x: int, y: int }
```

## Defer

```nyx
fn process_file() {
    let f = open_file("data.txt")
    defer close_file(f)    // runs when function exits
    // work with f...
}
```

## Build Commands

```bash
nyx run hello.nx           # compile and run a file
nyx init                   # create project in current dir
nyx init myapp             # create project in myapp/
nyx build                  # build project (reads nyx.toml)
nyx build --release        # build with optimizations
nyx run                    # build and run project
nyx add <pkg>              # add dependency from registry
nyx info                   # show project info
nyx update                 # update Nyx to latest version
nyx uninstall              # remove Nyx from system
```

## Project Structure (nyx.toml)

```toml
[package]
name = "myapp"
version = "0.1.0"
main = "src/main.nx"

[dependencies]
```

---

## Known Traps (IMPORTANT)

These are language-level gotchas that cause crashes or unexpected behavior:

### 1. `and`/`or` do NOT short-circuit
Both sides are always evaluated. Nest conditions instead.
```nyx
// WRONG — crashes if pos >= len
while pos < len and is_digit(input.charAt(pos)) { }

// CORRECT
while pos < len {
    if not is_digit(input.charAt(pos)) { break }
}
```

### 2. `arr[i].method()` causes SEGV — use intermediate variable
```nyx
// WRONG — segfault
let name: String = cmd[0].toUpper()

// CORRECT
let raw: String = cmd[0]
let name: String = raw.toUpper()
```

### 3. `charAt()` returns int, not char
Compare with ASCII values, not string/char literals.
```nyx
let c: int = s.charAt(0)
if c == 65 { }   // 'A' = 65
```

### 4. `for-in` on heterogeneous arrays causes infinite loop
Use `while` with index for arrays with mixed types.
```nyx
// WRONG — infinite loop on [int, Array, Array]
for row: Array in mixed_array { }

// CORRECT
var i = 0
while i < mixed_array.length() {
    let row: Array = mixed_array[i]
    i = i + 1
}
```

### 5. Enum syntax uses `.` not `::`
```nyx
Color.Red      // correct
Color::Red     // WRONG
```

### 6. Bare `return` without value doesn't work
```nyx
return       // WRONG
return 0     // correct
```

### 7. `handler` as function name crashes codegen
Use any other name.

### 8. Map literal `{}` is not supported
Use `Map.new()` + `.insert()` instead.

### 9. HTTP Content-Length needs byte length
Use `str_byte_length(body)`, not `.length()` (which counts UTF-8 codepoints).
