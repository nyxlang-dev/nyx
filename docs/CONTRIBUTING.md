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
```

### Initial setup / Setup inicial

```bash
git clone https://github.com/ocavallina/NyxLang
cd NyxLang
make bootstrap   # Build nyx_bootstrap from .ll seed files
make test        # Must pass 188/188 regression tests
bash tests/advanced/run_advanced_tests.sh  # Must pass 30/30 advanced tests
# Total: 218 tests
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
make test                                     # 188/188 required
bash tests/advanced/run_advanced_tests.sh     # 30/30 required
# Total: 218/218 before committing
```

### Commit criteria / Criterio para commitear

- `make test` passes 218/218 (188 regression + 30 advanced)
- One commit per fix/feature (don't accumulate)
- Descriptive message: what changed and why

---

## Adding a regression test / Añadir un test de regresión

1. Create `tests/test-NNN-name.nx` (next number after test-179)
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
