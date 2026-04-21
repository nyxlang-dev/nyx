RUNTIME_SRCS = runtime/runtime.c runtime/strings.c runtime/runtime-arrays.c \
               runtime/maps.c runtime/file-io.c runtime/iterators.c \
               runtime/net.c runtime/thread.c runtime/regex.c \
               runtime/time.c runtime/crypto.c runtime/tls.c runtime/scheduler.c \
               runtime/event_loop.c runtime/sqlite_adapter.c runtime/compress.c \
               runtime/random.c runtime/url.c runtime/msgpack.c runtime/websocket.c \
               runtime/persist.c runtime/http2.c runtime/process.c
LIBS         = -lgc -lpthread -ldl -lm -lssl -lcrypto -lz
NO_GC_LIBS   = -lpthread -ldl -lm -lssl -lcrypto

# ─────────────────────────────────────────────
#  Platform-specific flags
#  macOS: brew installs bdw-gc and openssl@3 outside the default clang paths,
#  and runtime/scheduler.c uses ucontext_t which the macOS 15 SDK gates behind
#  _XOPEN_SOURCE. Linux: no extra flags needed.
# ─────────────────────────────────────────────
UNAME_S := $(shell uname -s)
ifeq ($(UNAME_S),Darwin)
    BREW_GC   := $(shell brew --prefix bdw-gc 2>/dev/null)
    BREW_SSL  := $(shell brew --prefix openssl@3 2>/dev/null)
    EXTRA_CFLAGS  := -I$(BREW_GC)/include -I$(BREW_SSL)/include -D_XOPEN_SOURCE=700
    EXTRA_LDFLAGS := -L$(BREW_GC)/lib -L$(BREW_SSL)/lib
else
    EXTRA_CFLAGS  :=
    EXTRA_LDFLAGS :=
endif

CLANG        = clang $(EXTRA_CFLAGS) $(EXTRA_LDFLAGS)
STD_PRELUDE  = std/prelude.nx

# ─────────────────────────────────────────────
#  BUILD
# ─────────────────────────────────────────────

## Construir nyx_bootstrap desde los .ll semilla
bootstrap:
	bash scripts/build_bootstrap.sh

## Recompilar un módulo específico con el bootstrap actual
## Uso: make recompile MODULE=lexer
recompile:
	@test -n "$(MODULE)" || (echo "Uso: make recompile MODULE=<nombre>"; exit 1)
	cp compiler/$(MODULE).nx script.nx
	./nyx_bootstrap
	cp script.ll compiler/$(MODULE).ll
	@echo "✓ compiler/$(MODULE).ll actualizado"

## Recompilar todos los módulos y reconstruir el bootstrap
recompile-all:
	@for mod in lexer parser types semantic codegen nyx; do \
	  echo "→ Compilando $$mod.nx ..."; \
	  cp compiler/$$mod.nx script.nx && NYX_SKIP_SEMANTIC=1 ./nyx_bootstrap && cp script.ll compiler/$$mod.ll; \
	done
	bash scripts/build_bootstrap.sh
	@echo "✓ Nuevo nyx_bootstrap generado"

# ─────────────────────────────────────────────
#  USO
# ─────────────────────────────────────────────

## Compilar y ejecutar un programa Nyx (prelude auto-loaded por el driver)
## Uso: make run FILE=examples/hello.nx
run:
	@test -n "$(FILE)" || (echo "Uso: make run FILE=<archivo.nx>"; exit 1)
	cp $(FILE) script.nx
	./nyx_bootstrap
	$(CLANG) -O2 script.ll $(RUNTIME_SRCS) $(LIBS) -o script_bin
	./script_bin $(ARGS)

## Solo compilar a LLVM IR (sin ejecutar, prelude auto-loaded por el driver)
## Uso: make compile FILE=examples/hello.nx
compile:
	@test -n "$(FILE)" || (echo "Uso: make compile FILE=<archivo.nx>"; exit 1)
	cp $(FILE) script.nx
	./nyx_bootstrap
	@echo "✓ IR generado en script.ll"

## Compilar y ejecutar sin GC (v1.5.0 — Systems Mode)
## Uso: make compile-no-gc FILE=examples/hello.nx
compile-no-gc:
	@test -n "$(FILE)" || (echo "Uso: make compile-no-gc FILE=<archivo.nx>"; exit 1)
	cp $(FILE) script.nx
	NYX_NO_GC=1 ./nyx_bootstrap
	@echo "✓ IR generado en script.ll (sin GC)"

## Compilar y ejecutar sin GC en el IR (el runtime C aún necesita -lgc para strings/arrays)
## El IR del programa de usuario no usará @GC_malloc — usa @malloc directamente
## Uso: make run-no-gc FILE=examples/hello.nx
run-no-gc:
	@test -n "$(FILE)" || (echo "Uso: make run-no-gc FILE=<archivo.nx>"; exit 1)
	cp $(FILE) script.nx
	NYX_NO_GC=1 ./nyx_bootstrap
	$(CLANG) -O2 script.ll $(RUNTIME_SRCS) $(LIBS) -o script_bin
	./script_bin

# ─────────────────────────────────────────────
#  TESTS
# ─────────────────────────────────────────────

## Ejecutar suite completa de tests (214 regression, 1 skipped on ARM64)
## M-08 S13: semantic activo end-to-end (sin NYX_SKIP_SEMANTIC).
test:
	bash scripts/testing/run_bootstrap_tests.sh

## M-08 error tests (semantic checker runs without NYX_SKIP_SEMANTIC)
test-errors:
	bash tests/compiler/errors/run_error_tests.sh

## M-08 types happy-path tests (semantic activo — end-to-end)
test-m08-types:
	bash tests/compiler/types/run_m08_types_tests.sh

## Todas las suites automatizadas (205 regression + 30 advanced + 3 stdlib = 238)
test-all:
	@echo "=== Running all automated test suites ==="
	$(MAKE) test
	@echo ""
	bash tests/advanced/run_advanced_tests.sh
	@echo ""
	$(MAKE) test-stdlib
	@echo ""
	$(MAKE) test-m08-types
	@echo ""
	@echo "=== All automated suites passed ==="

## Tests de integración de productos (nyx-kv, nyx-queue, nyx-db)
## Levanta cada servidor, ejecuta tests Python, y lo para
test-products:
	bash scripts/testing/run_product_tests.sh

## Tests de integración end-to-end (serve + kv)
test-integration:
	bash scripts/testing/run_integration_tests.sh

## Build nyx_test (integrated test runner)
build-test:
	cp compiler/test.nx script.nx
	NYX_SKIP_SEMANTIC=1 ./nyx_bootstrap
	$(CLANG) script.ll $(RUNTIME_SRCS) $(LIBS) -o nyx_test
	@echo "✓ nyx_test listo"

## Build nyx-shell
build-shell:
	cd products/shell && make build

## Tests de la Standard Library
test-stdlib:
	bash scripts/run_stdlib_tests.sh

## Verifica que los ejemplos de "Nyx by Example" compilan (cookbook público)
test-examples:
	bash scripts/test-examples.sh

## Tests unitarios de componentes (4/4)
test-unit:
	bash scripts/testing/run_bootstrap_unit_tests.sh

## Test individual
## Uso: make test-one N=05
test-one:
	@test -n "$(N)" || (echo "Uso: make test-one N=<NN>"; exit 1)
	bash scripts/testing/run_single_test.sh $(N)

# ─────────────────────────────────────────────
#  DEBUG
# ─────────────────────────────────────────────

## Compilar con debug info DWARF para gdb (v0.9.0)
## Uso: make compile-debug FILE=examples/hello.nx
compile-debug:
	@test -n "$(FILE)" || (echo "Uso: make compile-debug FILE=<archivo.nx>"; exit 1)
	cp $(FILE) script.nx
	./nyx_bootstrap
	$(CLANG) -O2 -g script.ll $(RUNTIME_SRCS) $(LIBS) -o $(notdir $(basename $(FILE)))_dbg
	@echo "✓ $(notdir $(basename $(FILE)))_dbg compilado con debug info"

## Compilar con debug info y lanzar gdb
## Uso: make run-debug FILE=examples/hello.nx
run-debug: compile-debug
	gdb ./$(notdir $(basename $(FILE)))_dbg

## Compilar nyx_bootstrap con AddressSanitizer
bootstrap-asan:
	$(CLANG) -fsanitize=address -g \
	  compiler/lexer.ll compiler/parser.ll compiler/types.ll compiler/semantic.ll \
	  compiler/codegen.ll compiler/nyx.ll \
	  $(RUNTIME_SRCS) $(LIBS) -o nyx_bootstrap_dbg
	@echo "✓ nyx_bootstrap_dbg listo (ASAN)"

## Ejecutar con ASAN
run-asan:
	@test -n "$(FILE)" || (echo "Uso: make run-asan FILE=<archivo.nx>"; exit 1)
	cp $(FILE) script.nx
	ASAN_OPTIONS=halt_on_error=1 ./nyx_bootstrap_dbg 2>&1 | head -80

# ─────────────────────────────────────────────
#  TOOLS
# ─────────────────────────────────────────────

## Build the formatter tool
build-fmt:
	cp compiler/fmt.nx script.nx
	./nyx_bootstrap
	$(CLANG) script.ll compiler/lexer.ll compiler/parser.ll $(RUNTIME_SRCS) $(LIBS) -o nyx_fmt
	@echo "✓ nyx_fmt listo"

## Format a Nyx source file
## Uso: make fmt FILE=examples/hello.nx
fmt:
	@test -n "$(FILE)" || (echo "Uso: make fmt FILE=<archivo.nx>"; exit 1)
	@test -f nyx_fmt || (echo "Primero ejecuta: make build-fmt"; exit 1)
	cp $(FILE) script.nx
	./nyx_fmt

## Build the REPL
build-repl:
	cp compiler/repl.nx script.nx
	./nyx_bootstrap
	$(CLANG) script.ll compiler/lexer.ll compiler/parser.ll compiler/interpreter.ll $(RUNTIME_SRCS) $(LIBS) -o nyx_repl
	@echo "✓ nyx_repl listo"

## Run the REPL
repl:
	@test -f nyx_repl || (echo "Primero ejecuta: make build-repl"; exit 1)
	./nyx_repl

## Build nyx_check (LSP driver)
build-check:
	cp compiler/nyx_check.nx script.nx
	./nyx_bootstrap
	$(CLANG) script.ll compiler/lexer.ll compiler/parser.ll compiler/types.ll compiler/semantic.ll $(RUNTIME_SRCS) $(LIBS) -o nyx_check
	@echo "✓ nyx_check listo"

## Run nyx_check on a file
check:
	@test -n "$(FILE)" || (echo "Uso: make check FILE=<archivo.nx>"; exit 1)
	cp $(FILE) script.nx
	./nyx_check

## Build nyx_build (build system, v1.9.0)
build-nyx-build:
	cp compiler/build.nx script.nx
	NYX_SKIP_SEMANTIC=1 ./nyx_bootstrap
	$(CLANG) script.ll $(RUNTIME_SRCS) $(LIBS) -o nyx_build
	@echo "✓ nyx_build listo"

## Use nyx_build to build a project (v1.9.0)
## Uso: make nyx-build (desde directorio con nyx.toml)
nyx-build:
	@test -f nyx_build || (echo "Primero ejecuta: make build-nyx-build"; exit 1)
	./nyx_build build

## Build nyx_vet (static analyzer, v1.8.0)
build-vet:
	cp compiler/vet.nx script.nx
	NYX_SKIP_SEMANTIC=1 ./nyx_bootstrap
	$(CLANG) script.ll compiler/lexer.ll compiler/parser.ll $(RUNTIME_SRCS) $(LIBS) -o nyx_vet
	@echo "✓ nyx_vet listo"

## Run static analysis on a Nyx source file (v1.8.0)
## Uso: make vet FILE=mi_programa.nx
vet:
	@test -n "$(FILE)" || (echo "Uso: make vet FILE=<archivo.nx>"; exit 1)
	@test -f nyx_vet || (echo "Primero ejecuta: make build-vet"; exit 1)
	cp $(FILE) script.nx
	./nyx_vet

## Build nyx_doc (documentation generator, v1.8.0)
build-doc:
	cp compiler/doc.nx script.nx
	NYX_SKIP_SEMANTIC=1 ./nyx_bootstrap
	$(CLANG) script.ll compiler/lexer.ll compiler/parser.ll $(RUNTIME_SRCS) $(LIBS) -o nyx_doc
	@echo "✓ nyx_doc listo"

## Generate documentation for a Nyx source file (v1.8.0)
## Uso: make doc FILE=std/math.nx
doc:
	@test -n "$(FILE)" || (echo "Uso: make doc FILE=<archivo.nx>"; exit 1)
	@test -f nyx_doc || (echo "Primero ejecuta: make build-doc"; exit 1)
	cp $(FILE) script.nx
	echo "$(FILE)" > script_path.txt
	./nyx_doc
	@rm -f script_path.txt

## Cross-compile a Nyx program for a specific target (v1.8.0)
## Uso: make cross FILE=prog.nx TARGET=aarch64-linux-gnu
## Requiere: clang con soporte cross-compilation y sysroot para el target
## Targets comunes: aarch64-linux-gnu, arm-linux-gnueabihf, x86_64-apple-darwin
cross:
	@test -n "$(FILE)" || (echo "Uso: make cross FILE=<archivo.nx> TARGET=<triple>"; exit 1)
	@test -n "$(TARGET)" || (echo "Uso: make cross FILE=<archivo.nx> TARGET=<triple>"; exit 1)
	cp $(FILE) script.nx
	./nyx_bootstrap
	$(CLANG) -O2 --target=$(TARGET) script.ll $(RUNTIME_SRCS) $(LIBS) -o $(notdir $(basename $(FILE)))_$(TARGET)_bin
	@echo "✓ Cross-compiled: $(notdir $(basename $(FILE)))_$(TARGET)_bin"

## Cross-compile para WASM (wasm32-wasi) via wasi-sdk (v1.8.0+)
## Requiere: wasi-sdk en /opt/wasi-sdk
## Uso: make wasm FILE=prog.nx
wasm:
	@test -n "$(FILE)" || (echo "Uso: make wasm FILE=<archivo.nx>"; exit 1)
	@test -d /opt/wasi-sdk || (echo "wasi-sdk no encontrado en /opt/wasi-sdk — instalar desde https://github.com/WebAssembly/wasi-sdk"; exit 1)
	cp $(FILE) script.nx
	./nyx_bootstrap
	/opt/wasi-sdk/bin/clang --target=wasm32-wasi --sysroot=/opt/wasi-sdk/share/wasi-sysroot script.ll -o $(notdir $(basename $(FILE))).wasm
	@echo "✓ WASM: $(notdir $(basename $(FILE))).wasm"

## Install nyx wrapper script to /usr/local/bin (v1.8.0)
## Requiere sudo. Permite usar #!/usr/bin/env nyx en scripts .nx
install:
	install -m 755 scripts/nyx /usr/local/bin/nyx
	@echo "✓ nyx instalado en /usr/local/bin/nyx"
	@echo "  Uso: nyx mi_programa.nx"
	@echo "  Shebang: #!/usr/bin/env nyx"

## Build nyx_bindgen (C header binding generator, v2.4.0)
build-bindgen:
	cp compiler/bindgen.nx script.nx
	NYX_SKIP_SEMANTIC=1 ./nyx_bootstrap
	$(CLANG) script.ll $(RUNTIME_SRCS) $(LIBS) -o nyx_bindgen
	@echo "✓ nyx_bindgen listo"

## Genera bindings Nyx desde un header C (v2.4.0)
## Uso: make bindgen FILE=<header.h>
bindgen:
	@test -n "$(FILE)" || (echo "Uso: make bindgen FILE=<header.h>"; exit 1)
	@test -f nyx_bindgen || (echo "Primero ejecuta: make build-bindgen"; exit 1)
	cp $(FILE) script.nx
	./nyx_bindgen

## Build and run the Nyx Playground web server (v0.10.0)
## Compiles playground/server.nx and starts on port 8080
playground:
	cp playground/server.nx script.nx
	NYX_SKIP_SEMANTIC=1 ./nyx_bootstrap
	$(CLANG) -O2 script.ll $(RUNTIME_SRCS) $(LIBS) -o nyx_playground
	@echo "✓ nyx_playground compilado"
	./nyx_playground

.PHONY: bootstrap recompile recompile-all run compile compile-no-gc run-no-gc compile-debug run-debug test test-all test-stdlib test-unit test-one test-errors test-products test-integration build-test build-shell bootstrap-asan run-asan build-fmt fmt build-check check install build-doc doc build-vet vet cross wasm build-nyx-build nyx-build build-bindgen bindgen playground
