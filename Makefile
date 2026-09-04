RUNTIME_SRCS = runtime/runtime.c runtime/strings.c runtime/runtime-arrays.c \
               runtime/maps.c runtime/file-io.c runtime/iterators.c \
               runtime/net.c runtime/thread.c runtime/regex.c \
               runtime/time.c runtime/crypto.c runtime/tls.c runtime/scheduler.c \
               runtime/event_loop.c runtime/sqlite_adapter.c runtime/compress.c \
               runtime/random.c runtime/url.c runtime/msgpack.c runtime/websocket.c \
               runtime/persist.c runtime/http2.c runtime/process.c \
               runtime/llama_adapter.c runtime/os/os_posix.c
LIBS         = -lgc -lpthread -ldl -lm -lssl -lcrypto -lz
NO_GC_LIBS   = -lpthread -ldl -lm -lssl -lcrypto

# Seeds .ll del bootstrap, en orden de link — DEBE coincidir con
# scripts/build_bootstrap.sh (el enlazado real de nyx_bootstrap) y con el
# for-loop de verificación de compiler/*.ll en bootstrap: arriba.
BOOTSTRAP_LL := compiler/lexer.ll compiler/parser.ll compiler/types.ll \
                compiler/semantic.ll compiler/borrow.ll compiler/licm.ll \
                compiler/codegen.ll compiler/nyx.ll

# ── WASM (wasm32-wasi) — toolchain liviano Debian, sin wasi-sdk ──
# Requiere: sudo apt install wasi-libc libclang-rt-19-dev-wasm32 lld-19
# Para ejecutar: wasmtime (binario release, no está en apt)
WASI_SYSROOT      ?= /usr
WASI_LIBC         := $(WASI_SYSROOT)/lib/wasm32-wasi/libc.a
WASM_CLANG        ?= clang
# Subset esencial portable del runtime. Excluidos: net/tls/thread/scheduler/
# event_loop/process/websocket/http2/sqlite/compress/crypto/regex/msgpack/
# persist (sockets/pthread/ucontext/fork/OpenSSL/zlib/regex POSIX no existen
# en wasi). runtime/wasi/: shim GC→malloc (gc.h) + puente de entry (main_shim.c).
# runtime/os/os_wasm.c: stub de la capa nyx_os_* (W1) — el link no falla si
# algo referencia sus símbolos; los dominios 1-7 son no-op/ENOSYS (wasi es
# single-thread), tiempo es real vía clock_gettime/nanosleep de wasi-libc.
WASM_RUNTIME_SRCS = runtime/runtime.c runtime/strings.c runtime/runtime-arrays.c \
                    runtime/maps.c runtime/iterators.c runtime/file-io.c \
                    runtime/time.c runtime/random.c runtime/url.c \
                    runtime/wasi/main_shim.c runtime/wasi/nyx_arena.c \
                    runtime/os/os_wasm.c
# stack de 1MB: el default de wasm-ld (64KB) es chico para recursión
# --export-table: expone __indirect_function_table para que JS pueda llamar
# closures Nyx (table.get(fn_idx)(env_ptr) — handlers de eventos, handoff #3b)
WASM_CFLAGS       = --target=wasm32-wasi --sysroot=$(WASI_SYSROOT) -O2 \
                    -Iruntime/wasi -Wl,-z,stack-size=1048576 -Wl,--export-table

# ─────────────────────────────────────────────
#  Platform-specific flags
#  macOS: brew installs bdw-gc and openssl@3 outside the default clang paths,
#  and runtime/os/os_posix.c uses ucontext_t (capa nyx_os_*, W1 inc 2 — antes
#  vivía en scheduler.c) which the macOS 15 SDK gates behind _XOPEN_SOURCE.
#  Linux: no extra flags needed.
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

## Sincronizar el toolchain local (~/.nyx o NYX_HOME) con los artefactos
## del repo: bootstrap + nyx_build + runtime C + std. Correr al final de
## toda sesión que toque compiler/, runtime/ o std/ — los productos y
## services compilan con el toolchain instalado, no con el del repo.
install-local:
	@NYX_HOME_DIR="$${NYX_HOME:-$$HOME/.nyx}"; \
	if [ ! -d "$$NYX_HOME_DIR/bin" ]; then \
		echo "✗ $$NYX_HOME_DIR no existe — correr scripts/install.sh primero"; exit 1; \
	fi; \
	cp nyx_bootstrap "$$NYX_HOME_DIR/bin/nyx"; \
	if [ -f nyx_build ]; then cp nyx_build "$$NYX_HOME_DIR/bin/nyx_build"; fi; \
	if [ -f nyx_check ]; then cp nyx_check "$$NYX_HOME_DIR/nyx_check"; fi; \
	if [ -f nyx_test ]; then cp nyx_test "$$NYX_HOME_DIR/nyx_test"; fi; \
	if [ -f nyx_vet ]; then cp nyx_vet "$$NYX_HOME_DIR/nyx_vet"; fi; \
	if [ -f nyx_fmt ]; then cp nyx_fmt "$$NYX_HOME_DIR/nyx_fmt"; fi; \
	if [ -f nyx_gendocs ]; then cp nyx_gendocs "$$NYX_HOME_DIR/nyx_gendocs"; fi; \
	if [ -f "$$NYX_HOME_DIR/nyx_bootstrap" ]; then cp nyx_bootstrap "$$NYX_HOME_DIR/nyx_bootstrap"; fi; \
	if [ -f "$$NYX_HOME_DIR/nyx_build" ] && [ -f nyx_build ]; then cp nyx_build "$$NYX_HOME_DIR/nyx_build"; fi; \
	cp runtime/*.c runtime/*.h "$$NYX_HOME_DIR/runtime/"; \
	mkdir -p "$$NYX_HOME_DIR/runtime/wasi" && cp -r runtime/wasi/* "$$NYX_HOME_DIR/runtime/wasi/"; \
	mkdir -p "$$NYX_HOME_DIR/runtime/os" && cp runtime/os/*.c runtime/os/*.h "$$NYX_HOME_DIR/runtime/os/"; \
	cp VERSION "$$NYX_HOME_DIR/VERSION" 2>/dev/null || true; \
	cp std/*.nx "$$NYX_HOME_DIR/std/"; \
	if [ -f "$$NYX_HOME_DIR/scripts/nyx" ]; then cp scripts/nyx "$$NYX_HOME_DIR/scripts/nyx"; fi; \
	cp LLM.md "$$NYX_HOME_DIR/LLM.md" 2>/dev/null || true; \
	mkdir -p "$$NYX_HOME_DIR/templates"; \
	cp -r templates/. "$$NYX_HOME_DIR/templates/"; \
	mkdir -p "$$NYX_HOME_DIR/templates/en/docs/nyx"; \
	cp LLM.md "$$NYX_HOME_DIR/templates/en/docs/nyx/LLM.md"; \
	bash scripts/install_purge_legacy_templates.sh "$$NYX_HOME_DIR"; \
	echo "✓ Toolchain sincronizado en $$NYX_HOME_DIR (bin + runtime + std + wrapper + LLM.md + templates, sin restos pre-ADR-1)"

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
	@for mod in lexer parser types semantic borrow licm codegen nyx; do \
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

## Ejecutar suite de regresión (217 en ARM64 — test-123-asm skipped; 218 en x86_64)
## M-08 S13: semantic activo end-to-end (sin NYX_SKIP_SEMANTIC).
## Conteos canónicos de todas las suites: docs/TESTS.md
test:
	bash scripts/testing/run_bootstrap_tests.sh

## M-08 error tests (semantic checker runs without NYX_SKIP_SEMANTIC)
test-errors:
	bash tests/compiler/errors/run_error_tests.sh

## M-08 types happy-path tests (semantic activo — end-to-end)
test-m08-types:
	bash tests/compiler/types/run_m08_types_tests.sh

## Runtime C unit tests (B4): exercises the C runtime directly (no nyx_bootstrap)
test-runtime:
	bash scripts/testing/run_runtime_tests.sh

## Tests del target WASM (wasm32-wasi) — SKIP limpio si falta el toolchain
test-wasm:
	bash scripts/testing/run_wasm_tests.sh

## Gate de carga permanente [arco:W3-paso0b]: 300 goroutines × Array<int> de
## 20k, N corridas normales + M con GC_ENABLE_INCREMENTAL=1 (override
## LOAD_GATE_RUNS/LOAD_GATE_RUNS_INC). Caza la clase de bug "colector ×
## stacks de goroutine" end-to-end — ver docs/TESTS.md y
## scripts/testing/run_load_gate.sh para la receta completa.
test-load:
	bash scripts/testing/run_load_gate.sh

## AI-FIRST: valida que la doc sembrada basta para escribir Nyx correcto al 1er intento
test-ai-first:
	bash scripts/testing/run_gotchas_schema.sh
	bash scripts/testing/run_gendocs_test.sh
	bash scripts/testing/run_gendocs_noop.sh
	bash scripts/testing/run_gotcha_coverage.sh
	bash scripts/testing/run_vet_gotchas.sh
	bash scripts/testing/run_ai_first_tests.sh
	bash scripts/testing/run_silent_failure_checks.sh
	bash scripts/testing/run_codegen_mute_audit.sh
	bash scripts/testing/run_capabilities_test.sh
	bash scripts/testing/run_toolchain_recipe_audit.sh
	bash scripts/testing/run_os_layer_ratchet.sh
	bash scripts/testing/run_template_coherence.sh
	bash scripts/testing/run_seeded_blocks_compile.sh
	bash scripts/testing/run_templates_parity.sh
	bash scripts/testing/run_init_golden.sh
	bash scripts/testing/run_sdd_init.sh
	bash scripts/testing/run_sync_docs_migration.sh
	bash scripts/testing/run_docs_health.sh
	bash scripts/sdd/selftest

## Matriz de invariancia por forma del receptor (gate propio: genera y compila
## decenas de programas). Verifica UNA propiedad — el mismo método sobre el
## mismo dato da el mismo resultado sin importar cómo se nombre el receptor —
## más la invariancia por paréntesis (x.length vs x.length()).
## NYX_MATRIX_STRICT=1 también falla ante formas rechazadas ruidosamente.
test-dispatch-matrix:
	bash scripts/testing/run_dispatch_matrix.sh

## Todas las suites automatizadas (ver tabla canónica en docs/TESTS.md)
test-all:
	@echo "=== Running all automated test suites ==="
	$(MAKE) test
	@echo ""
	bash tests/advanced/run_advanced_tests.sh
	@echo ""
	$(MAKE) test-stdlib
	@echo ""
	$(MAKE) test-errors
	@echo ""
	$(MAKE) test-m08-types
	@echo ""
	$(MAKE) test-runtime
	@echo ""
	$(MAKE) test-unit
	@echo ""
	$(MAKE) test-dispatch-matrix
	@echo ""
	$(MAKE) test-integration
	@echo ""
	$(MAKE) test-wasm
	@echo ""
	$(MAKE) test-examples
	@echo ""
	$(MAKE) test-load
	@echo ""
	$(MAKE) test-ai-first
	@echo ""
	$(MAKE) test-repl
	@echo ""
	$(MAKE) test-stacks
	@echo ""
	@echo "=== All automated suites passed ==="

## Suites de los stacks extraídos locales (db, queue, edit, shell, serve,
## proxy) — CANARIO de regresiones del compilador (los tests de db cazaron
## la regresión v0.18). Correr tras cambios de compiler/runtime/std.
## SKIP limpio si falta un stack.
## (Absorbe a test-product-units: las 3 suites .nx del proxy viven en su
##  stack desde el split #7, 2026-07-06 — make test-proxy allí.)
test-stacks:
	bash scripts/testing/run_stack_tests.sh

## Tests de integración end-to-end (serve + kv)
test-integration:
	bash scripts/testing/run_integration_tests.sh

## Build nyx_test (integrated test runner)
## build-test funciona en DOS layouts: el repo privado (compila test.nx y
## refresca el seed) y el clon público (test.nx es fuente privada que no
## viaja — usa el seed test.ll, mismo patrón que build.ll). Sin esto,
## install.sh estuvo ROTO para todo instalador externo del 29/07 al 02/08
## («make build-test failed» — los CI de nyx-proxy/nyx-serve lo gritaban
## y nadie los miraba). El guard de completitud del sync cubre la clase.
build-test:
	@if [ -f compiler/test.nx ]; then \
		cp compiler/test.nx script.nx && \
		NYX_SKIP_SEMANTIC=1 ./nyx_bootstrap && \
		cp script.ll compiler/test.ll; \
	fi
	$(CLANG) compiler/test.ll $(RUNTIME_SRCS) $(LIBS) -o nyx_test
	@echo "✓ nyx_test listo"

## (build-shell retirado — nyx-shell extraído a ~/nyx-shell-stack, 2026-07-05)

## Tests de la Standard Library
test-stdlib:
	bash scripts/run_stdlib_tests.sh

## Verifica que los ejemplos de "Nyx by Example" compilan (cookbook público)
test-examples:
	bash scripts/test-examples.sh

## Tests unitarios de componentes — RUNNER RETIRADO (era racket pre-self-hosting)
## Los .nx en tests/compiler-unit/ y tests/verify/ son programas Nyx válidos pero
## el runner viejo invocaba `racket main.rkt` (ya no existe). Portarlos a un runner
## basado en nyx_bootstrap está en TASKS.md. La cobertura del compilador hoy:
## make test + test-errors + test-m08-types + test-ai-first.
## Unit tests: tests/verify (expected-output); compiler-unit bloqueado (ver TASKS.md)
test-unit:
	bash scripts/testing/run_unit_tests.sh

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
	  $(BOOTSTRAP_LL) \
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
	@if [ -f compiler/fmt.nx ]; then \
		cp compiler/fmt.nx script.nx && \
		NYX_SKIP_SEMANTIC=1 ./nyx_bootstrap && \
		cp script.ll compiler/fmt.ll; \
	fi
	$(CLANG) compiler/fmt.ll compiler/lexer.ll compiler/parser.ll $(RUNTIME_SRCS) $(LIBS) -o nyx_fmt
	@echo "✓ nyx_fmt listo"

## Format a Nyx source file
## Uso: make fmt FILE=examples/hello.nx
fmt:
	@test -n "$(FILE)" || (echo "Uso: make fmt FILE=<archivo.nx>"; exit 1)
	@test -f nyx_fmt || (echo "Primero ejecuta: make build-fmt"; exit 1)
	cp $(FILE) script.nx
	./nyx_fmt

## Build the REPL
## se compilan desde .nx con el bootstrap; no llevan seed .ll
build-repl:
	cp compiler/repl.nx script.nx
	./nyx_bootstrap
	$(CLANG) script.ll compiler/lexer.ll compiler/parser.ll compiler/interpreter.ll $(RUNTIME_SRCS) $(LIBS) -o nyx_repl
	@echo "✓ nyx_repl listo"

## Run the REPL
repl:
	@test -f nyx_repl || (echo "Primero ejecuta: make build-repl"; exit 1)
	./nyx_repl

## Smoke E2E del REPL/intérprete (NYX3001 ruidoso + la sesión sobrevive +
## control negativo). Construye nyx_repl SIEMPRE: un smoke contra un binario
## stale certificaría el pasado (la clase de fallo de los seeds stale).
test-repl: build-repl
	bash scripts/testing/run_repl_smoke.sh

## Build nyx_check (LSP driver)
# Espejo de build-test (C4, 2026-08-11): compila desde la fuente SI está
# (árbol dev) y refresca el seed; en el árbol público instalado (solo seeds
# .ll) linkea el seed directo. Sin esto, install.sh público moría en
# build-check — el guard de completitud de sync_to_public.sh lo cazó ANTES
# de publicar (la vez de test.nx nadie lo cazó y el install estuvo roto 4 días).
build-check:
	@if [ -f compiler/nyx_check.nx ]; then \
		cp compiler/nyx_check.nx script.nx && \
		NYX_SKIP_SEMANTIC=1 ./nyx_bootstrap && \
		cp script.ll compiler/nyx_check.ll; \
	fi
	$(CLANG) compiler/nyx_check.ll compiler/lexer.ll compiler/parser.ll compiler/types.ll compiler/semantic.ll $(RUNTIME_SRCS) $(LIBS) -o nyx_check
	@echo "✓ nyx_check listo"

## Run nyx_check on a file
check:
	@test -n "$(FILE)" || (echo "Uso: make check FILE=<archivo.nx>"; exit 1)
	cp $(FILE) script.nx
	./nyx_check

## Build nyx_build (build system, v1.9.0)
## build.nx importa gotchas_table.nx (declaration-only, igual que vet.nx): el
## andamiaje SDD genera la evidencia y el test de constitución DESDE la tabla.
## Se compila COMO UN MODULO MAS y se linkea — un `import` pelado no serviria
## (nyx.nx no inlinea paths "compiler/"). La tabla solo se recompila si esta la
## fuente: el clon publico trae el .ll semilla y no el .nx.
build-nyx-build:
	@if [ -f compiler/gotchas_table.nx ]; then \
		cp compiler/gotchas_table.nx script.nx && \
		NYX_SKIP_SEMANTIC=1 ./nyx_bootstrap && \
		cp script.ll compiler/gotchas_table.ll; \
	fi
	cp compiler/build.nx script.nx
	NYX_SKIP_SEMANTIC=1 ./nyx_bootstrap
	$(CLANG) script.ll compiler/gotchas_table.ll $(RUNTIME_SRCS) $(LIBS) -o nyx_build
	@echo "✓ nyx_build listo"

## Use nyx_build to build a project (v1.9.0)
## Uso: make nyx-build (desde directorio con nyx.toml)
nyx-build:
	@test -f nyx_build || (echo "Primero ejecuta: make build-nyx-build"; exit 1)
	./nyx_build build

## Build nyx_vet (static analyzer, v1.8.0)
## Los avisos W1xx salen de compiler/gotchas_table.nx, que se compila COMO UN
## MODULO MAS y se linkea (el import de vet.nx es declaration-only, igual que
## lexer/parser: nyx.nx no inlinea paths "compiler/"). Ambos .nx se compilan
## sólo si están — el clon público trae los .ll semilla y no las fuentes.
build-vet:
	@if [ -f compiler/gotchas_table.nx ]; then \
		cp compiler/gotchas_table.nx script.nx && \
		NYX_SKIP_SEMANTIC=1 ./nyx_bootstrap && \
		cp script.ll compiler/gotchas_table.ll; \
	fi
	@if [ -f compiler/vet.nx ]; then \
		cp compiler/vet.nx script.nx && \
		NYX_SKIP_SEMANTIC=1 ./nyx_bootstrap && \
		cp script.ll compiler/vet.ll; \
	fi
	$(CLANG) compiler/vet.ll compiler/lexer.ll compiler/parser.ll compiler/gotchas_table.ll $(RUNTIME_SRCS) $(LIBS) -o nyx_vet
	@echo "✓ nyx_vet listo"

## Run static analysis on a Nyx source file (v1.8.0)
## Uso: make vet FILE=mi_programa.nx
## NYX_SRC y NO `cp $(FILE) script.nx`: nyx_vet imprime el path que recibe, y
## con la copia todo aviso salia como `script.nx:<linea>` — templates/en/AGENTS.md
## le promete al usuario `<file>:<line>` con SU archivo. De paso deja de pisar
## el script.nx de la raiz (el que serializa el lock de los runners).
vet:
	@test -n "$(FILE)" || (echo "Uso: make vet FILE=<archivo.nx>"; exit 1)
	@test -f nyx_vet || (echo "Primero ejecuta: make build-vet"; exit 1)
	NYX_SRC=$(FILE) ./nyx_vet

## Build nyx_gendocs (generador de la capa de información del lenguaje)
## Mismo patrón que build-vet, pero gendocs.nx no usa módulos del compilador:
## sólo runtime (read_file/write_file/readdir/regex).
build-gendocs:
	cp compiler/gendocs.nx script.nx
	NYX_SKIP_SEMANTIC=1 ./nyx_bootstrap
	cp script.ll compiler/gendocs.ll
	$(CLANG) compiler/gendocs.ll $(RUNTIME_SRCS) $(LIBS) -o nyx_gendocs
	@echo "✓ nyx_gendocs listo"

## Regenerar TODO lo que se deriva de docs/gotchas/: las regiones
## <!-- gen:gotchas … --> de LLM.md y templates/{en,es}/AGENTS.md, la tabla
## compiler/gotchas_table.nx y los arrays de scripts/testing/gotchas_generated.sh.
## Correr después de tocar cualquier docs/gotchas/<id>.md (la guardia
## run_gendocs_noop.sh falla si queda algo stale).
gen-agent-docs: build-gendocs
	./nyx_gendocs

## Build nyx_doc (documentation generator, v1.8.0)
## se compilan desde .nx con el bootstrap; no llevan seed .ll
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

## Compilar a WASM (wasm32-wasi) con el clang del sistema + wasi-libc de Debian
## Requiere: sudo apt install wasi-libc libclang-rt-19-dev-wasm32 lld-19
## Uso: make wasm FILE=prog.nx  →  prog.wasm (correr con: wasmtime prog.wasm)
## Multi-archivo: los imports se resuelven RELATIVOS AL DIR del FILE
## (NYX_PROJECT_DIR) — `import "util"` busca <dir>/util.nx; "std/X" sigue
## resolviendo a la stdlib. OJO: la resolución es project-relative, no
## relativa-al-importador. Usa script.nx/script.ll del root como scratch
## (compartido con el build nativo — no correr en paralelo con make run).
## Limitaciones: sin GC (leak-by-design, cómputo batch), sin red/threads/procesos.
wasm:
	@test -n "$(FILE)" || (echo "Uso: make wasm FILE=<archivo.nx>"; exit 1)
	@test -f $(WASI_LIBC) || (echo "wasi-libc no encontrado en $(WASI_LIBC) — sudo apt install wasi-libc libclang-rt-19-dev-wasm32 lld-19"; exit 1)
	cp $(FILE) script.nx
	NYX_PROJECT_DIR=$(abspath $(dir $(FILE))) NYX_TARGET=wasm32-wasi NYX_NO_GC=1 ./nyx_bootstrap
	$(WASM_CLANG) $(WASM_CFLAGS) script.ll $(WASM_RUNTIME_SRCS) -o $(notdir $(basename $(FILE))).wasm
	@echo "✓ WASM: $(notdir $(basename $(FILE))).wasm — correr con: wasmtime $(notdir $(basename $(FILE))).wasm"

## Emitir IR con triple Windows (arco W0 — solo COMPILE, el link+run vive
## en CI windows-latest: .github/workflows/windows.yml). ARCH=x64 (default)
## o arm64. Salida: <archivo>.win.ll / <archivo>.arm64.win.ll junto al .nx.
## Usa script.nx/script.ll del root como scratch (mismo caveat que wasm).
win-compile:
	@test -n "$(FILE)" || (echo "Uso: make win-compile FILE=<archivo.nx> [ARCH=x64|arm64]"; exit 1)
	cp $(FILE) script.nx
	NYX_PROJECT_DIR=$(abspath $(dir $(FILE))) NYX_TARGET=$(if $(filter arm64,$(ARCH)),aarch64-pc-windows-msvc,x86_64-pc-windows-msvc) ./nyx_bootstrap
	cp script.ll $(basename $(FILE))$(if $(filter arm64,$(ARCH)),.arm64,).win.ll
	@echo "✓ IR Windows: $(basename $(FILE))$(if $(filter arm64,$(ARCH)),.arm64,).win.ll"

## Install nyx wrapper script to /usr/local/bin (v1.8.0)
## Requiere sudo. Permite usar #!/usr/bin/env nyx en scripts .nx
install:
	install -m 755 scripts/nyx /usr/local/bin/nyx
	@echo "✓ nyx instalado en /usr/local/bin/nyx"
	@echo "  Uso: nyx mi_programa.nx"
	@echo "  Shebang: #!/usr/bin/env nyx"

## Build nyx_bindgen (C header binding generator, v2.4.0)
## se compilan desde .nx con el bootstrap; no llevan seed .ll
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

## Guardas documentales (run_docs_health.sh) — también corre dentro de test-ai-first
docs-health:
	bash scripts/testing/run_docs_health.sh

## Selftest del método SDD-nyx (scripts/sdd/selftest) — también dentro de test-ai-first
sdd-check:
	bash scripts/sdd/selftest

## Verifica que VERSION coincide en los fallbacks (scripts/release-check.sh --pre)
release-check:
	bash scripts/release-check.sh --pre

.PHONY: bootstrap install-local recompile recompile-all run compile compile-no-gc run-no-gc compile-debug run-debug test test-all test-stdlib test-unit test-one test-errors test-dispatch-matrix test-repl test-stacks test-integration test-runtime test-wasm build-test bootstrap-asan run-asan build-fmt fmt build-check check install build-doc doc build-vet vet build-gendocs gen-agent-docs cross wasm win-compile build-nyx-build nyx-build build-bindgen bindgen playground docs-health sdd-check test-m08-types test-load test-ai-first test-examples build-repl repl release-check
