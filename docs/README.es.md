# Nyx

**Un lenguaje de sistemas self-hosting y con tipado gradual que compila a código nativo vía LLVM — un solo lenguaje, del bare metal al navegador.**

![version](https://img.shields.io/github/v/tag/nyxlang-dev/nyx?label=version&color=blue)
[![license](https://img.shields.io/badge/license-Apache_2.0-green)](../LICENSE)
[![tests](https://img.shields.io/badge/tests-passing-brightgreen)](TESTS.md)
![self-hosting](https://img.shields.io/badge/self--hosting-verified-8A2BE2)

> 🌎 Read in English: [../README.md](../README.md)

Nyx es un lenguaje multiparadigma cuyo compilador está **escrito en Nyx y se compila a sí mismo** con salida byte-idéntica (fixed point verificado). Busca cubrir todo el stack — código de sistemas, backend y un frontend corriendo en el navegador vía WebAssembly — en un solo lenguaje, con una developer experience pensada para humanos y asistentes de IA por igual (diagnósticos JSON estructurados, docs para LLMs, `nyx report`).

```nyx
trait Display {
    fn to_string(self) -> String
}

struct Point { x: int, y: int }

impl Display for Point {
    fn to_string(self) -> String {
        return "(" + int_to_string(self.x) + ", " + int_to_string(self.y) + ")"
    }
}

fn main() {
    let p: Point = Point { x: 3, y: 4 }
    print(p.to_string())   // (3, 4)
}
```

## Por qué Nyx

- **Self-hosting, verificado.** El compilador se recompila a sí mismo a LLVM IR idéntico — un fixed point real, no una promesa de marketing.
- **Todo el stack, un lenguaje.** Binarios nativos, servidores HTTP/TLS, SQLite, un reverse proxy y un frontend en el navegador (wasm32-wasi) — todo escrito en Nyx.
- **Garantías reales (v0.19).** Un type system que funciona (unificación con occurs-check, monomorfización real de genéricos), async real (goroutines stackful sobre un scheduler M:N + event loop epoll) y un borrow checker: detección SOUND de use-after-free / double-free sobre memoria manual, más tipos opt-in `#[affine]` con `drop` determinista (RAII).
- **AI-first.** Diagnósticos JSON estructurados (`NYX_DIAG=json`, códigos estables, line:column), mensajes bilingües y `nyx report` / `nyx update` — para que los LLMs escriban Nyx correcto al primer intento.
- **Velocidad nativa.** Compila vía LLVM a código máquina rápido, con un modo no-GC opcional para bare metal.

## Instalación

```bash
curl -sSf https://nyxlang.com/install.sh | sh   # instala el toolchain en ~/.nyx

nyx init mi-app && cd mi-app
nyx build && ./mi-app
```

`nyx init` siembra un scaffold neutral de proveedor (`AGENTS.md`, `CAPABILITIES.md`,
`docs/nyx/`) — sin archivos atados a un proveedor de IA en particular. Agrega `--lang en|es`,
`--agent=claude,cursor,copilot` para adaptadores finos por proveedor, o `--sdd` para el
andamiaje opcional de spec-driven development.

O probalo sin instalar nada en el **[playground web](https://nyxlang.com/playground)** — Nyx compila a WebAssembly y corre en tu navegador.

## Features

| Área | Qué obtenés |
|------|-------------|
| **Core** | Genéricos (monomorfización), traits (dispatch estático + dinámico, herencia, associated types, `impl Trait`), closures, enums/ADTs con pattern matching exhaustivo, iterators (lazy, encadenables), sobrecarga de operadores, derive macros |
| **Sistemas** | FFI (`repr(C)`, inline asm), unsafe/punteros raw, modo no-GC, tipos con tamaño (i8–u64, f32), control de procesos (fork/exec/pipes/señales), atributos de función (`#[naked]`, `#[interrupt]`, `#[link_section]`) |
| **Concurrencia** | Goroutines reales (`spawn`, `await`) sobre un scheduler M:N work-stealing + event loop epoll, channels, `select`, mutex, WaitGroup, atómicos |
| **Web y Red** | TCP/UDP, TLS/HTTPS (OpenSSL), servidor y cliente HTTP/1.1 + HTTP/2, WebSocket (RFC 6455), reverse proxy, web framework |
| **Datos** | JSON, MessagePack, TOML, CSV, SQLite3 (transacciones, migraciones), zlib, Base64, BTreeMap, grafos (BFS/DFS/Dijkstra) |
| **Safety** | Borrow checker (`NYX_BORROW=warn\|error`): use-after-free / double-free sobre memoria manual, move-checking de `#[affine]` + drop determinista, exclusividad de `&mut` |
| **Tooling** | `nyx fmt`, `nyx vet`, `nyx doc`, `nyx test`, package manager (`nyx.toml`), LSP + extensión de VS Code, REPL, C bindgen, cross-compilación, target WASM |

## Rendimiento*

| Benchmark | Resultado |
|-----------|-----------|
| fibonacci(40) | 166 ms — **0.87× C** (más rápido que C) |
| strings (100K ops) | **10.4× C** |
| HTTP hello (wrk, multi-thread) | 73.863 req/s |
| KV GET (500K) | 21,57M ops/s (supera a Redis) |

<sub>*Última medición en v0.12–0.13 (mar 2026); re-medición en v0.19 pendiente. Metodología completa en [archive/BENCHMARKS.md](archive/BENCHMARKS.md).</sub>

## En el navegador (WebAssembly)

`make wasm FILE=prog.nx` produce un binario `wasm32-wasi` real — sin SDK de 700 MB, solo `clang` + `wasi-libc` + `lld`. Corre bajo `wasmtime` o en el navegador vía un shim de ~100 líneas. `extern "js" fn` importa funciones del host, `#[export_name]` deja que JS vuelva a entrar a Nyx en vivo (la memoria y los globals del módulo persisten entre eventos), y `std/dom` / `std/browser` dan manipulación del DOM, `fetch`, timers y `localStorage`. Ya hay un sitio en producción con un frontend Nyx→WASM funcionando de punta a punta.

## Documentación

- [Especificación del lenguaje](SPEC.es.md) ([English](SPEC.md))
- [Primeros pasos](GETTING_STARTED.md)
- [Guía paso a paso](https://nyxlang.com/es/docs/)
- [Comparativa](COMPARISON.es.md) — vs 15 lenguajes
- [Roadmap](ROADMAP.md) · [Changelog](../CHANGELOG.md) · [Suite de tests](TESTS.md)
- [Playground web](https://nyxlang.com/playground)

## Compilar desde el código fuente

```bash
sudo apt install clang libgc-dev libssl-dev zlib1g-dev   # Ubuntu/Debian
git clone https://github.com/nyxlang-dev/nyx && cd nyx
make bootstrap          # construir el compilador self-hosting
make test               # suite de regresión, 100% (ARM64) — conteos en TESTS.md
```

> **Se requiere libgc/bdwgc >= 8.2 para concurrencia sana bajo carga.** Con versiones anteriores falta `GC_set_sp_corrector`; el runtime igual compila y corre, pero el colector del scheduler M:N puede crashear bajo goroutines concurrentes (avisa fuerte por stderr al arrancar cuando esto pasa — nunca degrada en silencio).

Linux (x86_64 / ARM64) tiene soporte completo. macOS y Windows no están soportados.

## Licencia

[Apache 2.0](../LICENSE).
