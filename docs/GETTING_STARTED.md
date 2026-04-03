# Getting Started with Nyx / Primeros pasos con Nyx

## Install dependencies / Instalar dependencias

```bash
# Ubuntu / Debian
sudo apt install clang libgc-dev libssl-dev zlib1g-dev

# macOS
brew install llvm bdw-gc openssl zlib
```

## Build the compiler / Construir el compilador

```bash
git clone https://github.com/ocavallina/NyxLang
cd NyxLang
make bootstrap
```

This generates `nyx_bootstrap` from the IR seed files included in the repository.
Esto genera `nyx_bootstrap` a partir de los archivos IR semilla incluidos en el repositorio.

## Your first program / Tu primer programa

Create a file `hello.nx`:

```nyx
fn main() {
    print("Hello, world!")
}
```

Compile and run / Compilar y ejecutar:

```bash
make run FILE=hello.nx
```

## Variables and types / Variables y tipos

```nyx
fn main() {
    let name: String = "Nyx"   // immutable
    var counter: int = 0       // mutable
    const MAX: int = 100       // constant

    counter = counter + 1
    print(name)
    print(counter)
}
```

## Functions / Funciones

```nyx
fn add(a: int, b: int) -> int {
    return a + b
}

fn greet(name: String) -> String {
    return "Hello, " + name + "!"
}

fn main() {
    print(add(3, 4))
    print(greet("world"))
}
```

## Control flow / Control de flujo

```nyx
fn main() {
    // if/else
    let x: int = 10
    if x > 5 {
        print("greater")
    } else {
        print("less or equal")
    }

    // while
    var i: int = 0
    while i < 5 {
        print(i)
        i = i + 1
    }

    // for with range
    for j in 0..5 {
        print(j)
    }
}
```

## Arrays

```nyx
fn main() {
    var nums: Array = [1, 2, 3, 4, 5]
    nums.push(6)

    for n in nums {
        print(n)
    }

    // Iterator chaining
    let evens = nums.iter()
        .filter(fn(x: int) -> bool { return x % 2 == 0 })
        .collect()
}
```

## Structs

```nyx
struct Point {
    x: int,
    y: int
}

impl Point {
    fn distance_sq(self) -> int {
        return self.x * self.x + self.y * self.y
    }
}

fn main() {
    let p = Point { x: 3, y: 4 }
    print(p.distance_sq())  // 25
}
```

## Enums and pattern matching

```nyx
enum Shape {
    Circle(int),
    Rect(int, int),
    Empty
}

fn describe(s: Shape) -> String {
    match s {
        Shape.Circle(r) => { return "circle" }
        Shape.Rect(w, h) => { return "rect" }
        Shape.Empty => { return "empty" }
    }
}

fn main() {
    let c = Shape.Circle(5)
    print(describe(c))
}
```

## Traits

```nyx
trait Describable {
    fn describe(self) -> String
}

struct Cat { name: String }

impl Describable for Cat {
    fn describe(self) -> String {
        return self.name + " the cat"
    }
}

fn print_desc(d: dyn Describable) {
    print(d.describe())
}

fn main() {
    let c = Cat { name: "Whiskers" }
    print_desc(c)  // "Whiskers the cat"
}
```

## Next steps / Siguiente paso

- See [SPEC.md](../SPEC.md) for the complete language reference
- See [examples/](../examples/) for more complex programs
- See [docs/COMPARISON.md](COMPARISON.md) for how Nyx compares to other languages
- Run `make test` to see all 218 tests pass
