# Contributing to Nyx / Guía de Contribución

## How to Contribute / Cómo contribuir

### Report bugs / Reportar bugs

Open a GitHub issue with:
- Minimal Nyx code that reproduces the problem
- Expected output vs actual output
- Version of `nyx_bootstrap` and `clang`

### Propose features / Proponer features

Open an issue tagged `enhancement` with:
- Description and example Nyx code
- Justification: why it improves the language

---

## Development Flow / Flujo de desarrollo

### Prerequisites / Prerrequisitos

```bash
clang --version          # LLVM 14+
pkg-config --libs bdw-gc # libgc installed
pkg-config --modversion bdw-gc # must be >= 8.2 (older: GC_set_sp_corrector unavailable,
                                # M:N scheduler collector can crash under goroutine load —
                                # runtime warns loudly on stderr, never fails silently)
```

### Initial setup / Setup inicial

```bash
git clone https://github.com/ocavallina/NyxLang
cd NyxLang
make bootstrap   # Build nyx_bootstrap from .ll seed files
make test        # Regression suite: must be 100%
bash tests/advanced/run_advanced_tests.sh  # Advanced suite: must be 100%
# Canonical counts for EVERY suite live in docs/TESTS.md — the single source of
# truth. Don't hardcode numbers here: they rot. One test file is x86_64-only
# (inline asm), so the ARM64 total is one less; docs/TESTS.md says which.
```

### Working on the compiler / Trabajar en el compilador

The compiler lives in `compiler/*.nx`. Modules:

| File | Responsibility |
|------|---------------|
| `lexer.nx` | Tokenization |
| `parser.nx` | Parser + AST construction |
| `semantic.nx` | Semantic analysis and type checking |
| `codegen.nx` | LLVM IR code generation (555K, largest module) |
| `nyx.nx` | Main driver (args, orchestration) |
| `interpreter.nx` | Interpreter (for REPL) |
| `fmt.nx` | Code formatter |
| `nyx_check.nx` | LSP driver |
| `doc.nx` | Documentation generator |
| `vet.nx` | Static analyzer |
| `build.nx` | Build system (nyx.toml) |
| `bindgen.nx` | C header binding generator |
| `repl.nx` | REPL interface |

### Work cycle / Ciclo de trabajo

```bash
# 1. Edit the module / Editar el módulo
$EDITOR compiler/codegen.nx

# 2. Recompile that module / Recompilar el módulo
make recompile MODULE=codegen

# 3. Rebuild the binary / Reconstruir el binario
make bootstrap

# 4. Verify / Verificar
make test                                     # 225/225 required (ARM64) / 226/226 (x86_64)
bash tests/advanced/run_advanced_tests.sh     # 30/30 required
make test-errors                              # 67/67 required (parse + semantic errors)
# See docs/TESTS.md for canonical counts across all suites
```

### Commit criteria / Criterio para commitear

- `make test` passes 225/225 ARM64 (226/226 x86_64) — see docs/TESTS.md for canonical counts
- One commit per fix/feature (don't accumulate)
- Descriptive message: what changed and why

---

## Adding a regression test / Añadir un test de regresión

1. Create the test under `tests/compiler/<category>/` (see existing structure for the right category)
2. Compile: `make compile FILE=tests/test-NNN-name.nx`
3. Run: `make run FILE=tests/test-NNN-name.nx`
4. Save expected output: `tests/expected/test-NNN-name.expected`
5. Verify: `make test` detects the new test

---

## Tools / Herramientas

```bash
make build-fmt && make fmt FILE=prog.nx       # Formatter
make build-check && make check FILE=prog.nx   # LSP checker
make build-vet && make vet FILE=prog.nx       # Static analyzer
make build-doc && make doc FILE=prog.nx       # Doc generator
make build-repl && make repl                  # Interactive REPL
make build-bindgen && make bindgen FILE=h.h   # C binding generator
```

---

## Code conventions / Convenciones de código

- Function and variable names: `snake_case`
- Types and structs: `PascalCase`
- Explicit type annotations on public functions
- Comments in English or Spanish, consistent per file

---

## Segunda máquina / Second machine (x86_64 · WSL2 · Windows)

*(Castellano: esta sección es operativa del proyecto, no de contribución externa.)*

Desde el **2026-09-17** el repo del lenguaje vive en dos máquinas con roles distintos.
Solo el lenguaje se clona en la segunda: `products/`, `web/` y `ops/` viven únicamente en el servidor.

| | **A — servidor (aarch64)** | **B — laptop (WSL2 x86_64 · Windows MSVC)** |
|---|---|---|
| Rol | coordinador SDD · producción · gate ARM64 · **dueño del candado del core** | verificación pesada · cobertura x86_64 · lado nativo de los arcos W |
| Escribe | `compiler/`, `runtime/`, `std/`, `compiler/*.ll`, archivos raíz | **solo** `docs/design/briefs/<plan>/task-N-report.md` |
| Corre | `make test` ARM64, `install-local`, `test-stacks`, deploys | `make seeds-check`, `make test-all`, `make test-load`, gate x86_64 |

**Por qué existe el reparto:** A es el servidor de producción (gateway `:443` más nueve servicios)
con dos cores, ~1.2 GB de RAM libre y `earlyoom` activo, mientras una compilación de `codegen.nx`
pica ~1.5 GB y `make seeds-check` son **nueve** de ésas. Además A es aarch64 y el CI no tiene
presupuesto: desde entonces nadie corre los gates x86_64, y `test-123-full-asm` se salta por
arquitectura (`scripts/testing/run_bootstrap_tests.sh`). B resuelve las dos cosas a la vez.

### Preparación — lo hace Ottavio a mano, una sola vez

1. **RAM de WSL2.** En Windows, `%UserProfile%\.wslconfig`:
   ```ini
   [wsl2]
   memory=8GB
   swap=4GB
   ```
   Después `wsl --shutdown` para que tome efecto. Sin esto, `make seeds-check` reporta
   `⚠️ no compiló (¿memoria?)`, que significa **«sin medir»**, no verde.
2. **Toolchain**, dentro de WSL2:
   ```bash
   sudo apt install clang lld llvm libgc-dev libssl-dev zlib1g-dev pkg-config make git
   pkg-config --modversion bdw-gc     # debe ser >= 8.2 — ver §Prerequisites
   ```
3. **Llave SSH** para `git@github.com:ocavallina/NyxLang.git`, más `git config --global user.name`
   y `user.email`. No hay remote compartido entre las máquinas: **todo el reparto viaja por GitHub**.
4. **Clonar con el mismo layout que el servidor** — los docs del repo citan rutas `~/nyx/...`:
   ```bash
   mkdir -p ~/nyx && git clone git@github.com:ocavallina/NyxLang.git ~/nyx/lang
   ```
5. **Opcional**, solo si B va a construir stacks: `bash ~/nyx/lang/scripts/install.sh` (crea `~/.nyx`;
   `make install-local` aborta si no existe). Recordá que `~/.nyx` es **local a cada máquina**.
6. **Solo para los arcos W** (Windows nativo): MSVC Build Tools, `clang`/`lld-link`, vcpkg con bdwgc
   y `llvm-nm` en el PATH.
7. **Arrancar la sesión**: `cd ~/nyx/lang && claude`.

No hace falta token de nyx-kv: el canal de encargos es git.

### Ciclo del encargo — lo hace la sesión de B

El coordinador emite el encargo con `bash scripts/sdd/brief <plan> N --remote`, que lo deja
**commiteado** en `docs/design/briefs/<plan-basename>/task-N.md` con su cabecera fija (GO, rama, sha
base, quién ejecuta, dónde va el reporte). Del lado de B:

```bash
cd ~/nyx/lang
git fetch origin && git checkout <rama-del-arco> && git pull --rebase
cat docs/design/briefs/<plan-basename>/task-N.md      # el encargo entero
# ... ejecutar ...
$EDITOR docs/design/briefs/<plan-basename>/task-N-report.md
git add docs/design/briefs/<plan-basename>/task-N-report.md
git commit -m "sdd(<slug>): reporte task-N [arco: <slug>]"
git pull --rebase && git push
```

Estructura obligatoria del reporte, para que A lo consuma sin ida y vuelta:
`## Entorno` (`uname -a`, `clang --version`, `pkg-config --modversion bdw-gc`, `git rev-parse HEAD`)
· `## Resultado` · `## Salidas verbatim` · `## Hallazgos clasificados` · `## Para los archivos raíz (aplica A)`.

### Las tres reglas que no se negocian

1. **El candado del core.** `compiler/`, `runtime/`, `std/` y `compiler/*.ll` solo los escribe la
   máquina que nombre la línea `Candado del core:` de `PLAN.md`. Quien no lo tiene **reporta el
   hallazgo y sigue**, ni siquiera «para un arreglito».
2. **Los archivos raíz** (`PLAN.md`, `TASKS.md`, `PROJECT_STATE.md`, `CHANGELOG.md`, `docs/TESTS.md`,
   `docs/design/INDEX.md`, `VERSION`, `README.md`, `LLM.md`, `CLAUDE.md`) los escribe solo esa misma
   máquina. La otra los propone como texto en `## Para los archivos raíz (aplica A)`.
   Autochequeo antes de pushear: `git diff --name-only origin/main...HEAD` no lista ninguno.
3. **Nada por chat.** Un encargo que no está commiteado en la rama no existe — un relay perdido costó
   una task entera en W3 (2026-08-30) y `~/nyx/ops/handoff/` murió por vivir fuera del repo.

### Rojos en x86_64: esperados, y no siempre regresiones

`compiler/codegen.nx` **hardcodea** `target triple = "x86_64-pc-linux-gnu"` y lo escribe en el header
de todo módulo. O sea que el servidor viene compilando en aarch64 un IR que declara x86_64: ese triple
se está ignorando o sobrescribiendo con el default del host. En B **coincide con el host por primera
vez**, y eso puede destapar diferencias legítimas de ABI, alineación u optimización. Clasificá cada
rojo como **(A)** regresión real, **(B)** cobertura nueva de x86_64 o **(C)** entorno/toolchain, y
adjuntá el `.nx` mínimo con el `.ll` emitido. La clase B es el hallazgo valioso — no se arregla desde
B, se reporta.

Por la misma razón, `make seeds-check` corrido en B vale más que en A: ahí deja de significar «las
semillas describen al compilador actual» y pasa a significar **«el compilador es determinista e
independiente de la arquitectura del host»**. El criterio es `✓ las 9 semillas están en punto fijo`
**y** `git diff --stat -- compiler/` vacío.
