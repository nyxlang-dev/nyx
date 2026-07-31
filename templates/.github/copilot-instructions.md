# Nyx Language

**Read `AGENTS.md` FIRST** — it is the playbook (what to do, which stdlib to use via
`CAPABILITIES.md`, the gotchas, how to report). Do not read `std/`/`compiler/` source.

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

- `arr[i].method()` crashes — store in typed variable first
- `charAt()` returns int (ASCII/codepoint) — compare with numbers
- String API is byte-based — `length()`/`substring()`/`charAt()` count bytes; use
  `char_length()` for user-visible character counts
- `for-in` on mixed-type arrays = infinite loop — use while + index
- Enum uses `.` not `::`
- Map literal keys must be strings — `{"k": v}` and `{}` work; other keys via `Map.new()`
- Nested Maps cause SEGV — use flat keys
- Channels must be `Map`, not `int`

`and`/`or` DO short-circuit; `defer expr()`, `const String`, bare `return` in void
functions, and `handler` as a name all work. Full reference: `LLM.md`.
