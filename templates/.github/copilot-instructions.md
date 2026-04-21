# Nyx Language

Nyx is a multiparadigm language with gradual typing that compiles to native via LLVM. Files use `.nx` extension.

## Quick Syntax

```nyx
let x: int = 42; var y = 0; const MAX = 100
fn add(a: int, b: int) -> int { return a + b }
print("value = ${x}")  // string interpolation

struct Point { x: int, y: int }
impl Point { fn dist(self) -> int { return self.x + self.y } }

// Enums use DOT syntax: Shape.Circle(5), NOT Shape::Circle(5)
enum Shape { Circle(int), Rect(int, int) }
match shape { Shape.Circle(r) => r * r, Shape.Rect(w, h) => w * h }

fn identity<T>(x: T) -> T { return x }  // generics
trait Display { fn to_string(self) -> String }  // traits

// Built-in: Option<T> (Some/None), Result<T,E> (Ok/Err)
let val = might_fail()?  // try operator

for i in 0..10 { }
let evens = [1,2,3,4].iter().filter(fn(x: int) -> bool { return x % 2 == 0 }).collect()

export fn helper() -> int { return 1 }
import { helper } from "module_name"
```

## Traps to Avoid

- `and`/`or` do NOT short-circuit — nest conditions
- `arr[i].method()` crashes — store in typed variable first
- `charAt()` returns int (ASCII) — compare with numbers
- `for-in` on mixed-type arrays = infinite loop — use while + index
- Enum uses `.` not `::`
- Bare `return` doesn't work — use `return 0`
- Never name a function `handler`
- Map literal `{}` not supported — use `Map.new()`
