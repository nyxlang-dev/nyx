# Getting Started with Nyx / Primeros pasos con Nyx

## Installation (recommended) / Instalación (recomendada)

Install the Nyx toolchain with a single command. It installs to `~/.nyx/` and adds `nyx` to your PATH.

Instala el toolchain de Nyx con un solo comando. Se instala en `~/.nyx/` y agrega `nyx` a tu PATH.

```bash
# Install Nyx toolchain (installs to ~/.nyx/)
curl -sSf https://nyxlang.com/install.sh | sh

# Verify / Verificar
nyx --version

# Create a project / Crear un proyecto
nyx init my-app
cd my-app
nyx build
./my-app
```

The `nyx` binary gives you the full toolchain: `nyx build`, `nyx run`, `nyx init`, `nyx test`, `nyx fmt`, `nyx vet`.

El binario `nyx` incluye el toolchain completo: `nyx build`, `nyx run`, `nyx init`, `nyx test`, `nyx fmt`, `nyx vet`.

`nyx init` seeds a provider-neutral scaffold — `AGENTS.md`, `CAPABILITIES.md`, `docs/nyx/`
(reference + guides) — with nothing tied to a specific AI provider. Pick a language with
`--lang en|es` (or `NYX_LANG`); add thin per-provider adapters with
`--agent=claude,cursor,copilot`; and layer on the optional spec-driven-development scaffold
with `--sdd` (or, on an existing project, `nyx sdd init`).

`nyx init` siembra un scaffold neutral de proveedor — `AGENTS.md`, `CAPABILITIES.md`,
`docs/nyx/` (referencia + guías) — sin nada atado a un proveedor de IA en particular. Elige el
idioma con `--lang en|es` (o `NYX_LANG`); agrega adaptadores finos por proveedor con
`--agent=claude,cursor,copilot`; y suma el andamiaje opcional de spec-driven development con
`--sdd` (o, sobre un proyecto existente, `nyx sdd init`).

---

## Building from source / Compilar desde el código fuente

> This section is for compiler developers who want to build Nyx from the monorepo.
> Esta sección es para quienes quieren compilar el compilador desde el monorepo.

### Install dependencies / Instalar dependencias

```bash
# Ubuntu / Debian
sudo apt install clang libgc-dev libssl-dev zlib1g-dev

# macOS
brew install llvm bdw-gc openssl zlib
```

> **libgc/bdwgc >= 8.2 is required for healthy concurrency under load.** Below 8.2, `GC_set_sp_corrector` (`runtime/scheduler.c`) is unavailable and the M:N scheduler's collector can crash under concurrent goroutines — the runtime still builds and runs, it just warns loudly on stderr at startup instead of failing silently. `sudo apt install clang libgc-dev ...` on a current distro already satisfies this; only relevant on an older system or a pinned package.
>
> **Se requiere libgc/bdwgc >= 8.2 para concurrencia sana bajo carga.** Por debajo de 8.2 falta `GC_set_sp_corrector` (`runtime/scheduler.c`) y el colector del scheduler M:N puede crashear bajo goroutines concurrentes — el runtime igual compila y corre, solo avisa fuerte por stderr al arrancar en vez de degradar en silencio. `sudo apt install clang libgc-dev ...` en una distro actual ya cumple esto; solo importa en un sistema viejo o un paquete pineado.

### Build the compiler / Construir el compilador

```bash
git clone https://github.com/ocavallina/NyxLang
cd NyxLang
make bootstrap
```

This generates `nyx_bootstrap` from the IR seed files included in the repository.
Esto genera `nyx_bootstrap` a partir de los archivos IR semilla incluidos en el repositorio.

---

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

- See [SPEC.md](SPEC.md) for the complete language reference
- See [examples/](../examples/) for more complex programs
- See [docs/COMPARISON.md](COMPARISON.md) for how Nyx compares to other languages
- Run `make test` to run regression tests: 204/204 on ARM64 (205/205 on x86_64 — one x86 asm test is skipped on ARM64)
