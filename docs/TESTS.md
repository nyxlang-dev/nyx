# Nyx Test Suite — Canonical Counts / Conteos canónicos

> **Rol**: esta tabla es la ÚNICA fuente de conteos vigentes de tests. La
> historia de cómo llegó cada número a su valor actual (42 fechas, ~830
> líneas) vive en `docs/archive/2026-tests-history.md` — PROHIBIDO narrar acá.
> **Regla de mantenimiento**: al cambiar un conteo, actualizar el número en
> la tabla de abajo + un bullet en `CHANGELOG.md` — nada más. Presupuesto:
> ≤150 líneas totales, ≤300 chars por línea (guarda `run_docs_health.sh`
> check 6).

## Suites

| Suite | Comando | Conteo | Nota |
|-------|---------|--------|------|
| Regression | `make test` | **447 archivos / 446 ARM64** | medido 2026-09-15: 446/445 tras `http-tls-cliente`, +1 `test-431-try-salida-temprana-pop`. `test-123-full-asm` se salta en ARM64 (arquitectura). Altas del 2026-09-08 al 15 en `CHANGELOG.md` |
| Error paths (parse+semantic) | `make test-errors` | **282** | +5 el 2026-09-15 (NYX2003/NYX2006 con línea, `nyx check`, positivo), medido 2026-09-15; 277 medido 2026-09-12 (NYX1032, NYX1003/builtin void y NYX1013/colisión con el prelude, cada uno con su control positivo) |
| M-08 happy types | `make test-m08-types` | **18** | verificado con corrida real 2026-08-30 |
| Advanced | (dentro de `make test-all`, `tests/advanced/`) | **30** | A01–A30, stress + algoritmos |
| Stdlib | `make test-stdlib` | **5** | std/math + std/array + integración + std/template + std/multipart (absorción de serve al core, 2026-08-31) |
| Runtime C unit (B4) | `make test-runtime` | **35 suites / 1748 asserts** | verificado con corrida real 2026-09-15; +68 del arco `http-tls-cliente` (`test_tls` 13 casos, `test_net_result` 3) sobre los 1680 de `test_write_file_binary_safe`; detalle en `CHANGELOG.md` |
| AI-first (objetivo) | `make test-ai-first` | **29 programas + 6 casos stdin (x2 targets) + 54 guardas** | 26 scripts: ai_first + stdin_io + 23 de guardas (54: templates 2, tooling 11, build_manifest 20, no_compiler_rt 2, voseo 1) + selftest |
| STDIN-IO (`read_line`/`stdin_eof`/`read_stdin_all`) | (dentro de `make test-ai-first`) `run_stdin_io_tests.sh` | **6 casos × 2 targets** | `tests/ai-first/stdin/`, self-asserting, nativo + wasm32-wasi (SKIP limpio sin toolchain); fix 2026-09-14 (detalle en `CHANGELOG.md`) |
| Español neutro (mensajes del toolchain) | (dentro de `make test-ai-first`) `run_voseo_messages.sh` | **1 check** | denylist de voseo compartida con `run_templates_parity.sh` (`lib_voseo.sh`) sobre `compiler/`, `runtime/`, `std/`, `scripts/` y `templates/gitignore` |
| Coherencia de manuales | (dentro de `make test-ai-first`) `run_template_coherence.sh` | **4 checks** | mentiras resucitadas + anclas de trampas/reglas vivas + imports sin comillas + ids de gotcha citados, sobre lo sembrado en ambos idiomas; ANCLAS/MENTIRAS de `gotchas_generated.sh` |
| Bloques sembrados compilan | (dentro de `make test-ai-first`) `run_seeded_blocks_compile.sh` | **1 check** | cada bloque ` ```nyx ` sembrado (ambos idiomas) compila con bootstrap semántico + clang; sin `fn main` debe ser ` ```nyx-fragment ` o falla |
| Paridad EN/ES + español neutro | (dentro de `make test-ai-first`) `run_templates_parity.sh` | **2 checks** | twins EN/ES coherentes (marca de template, encabezados `##`, `gen:ids`) + denylist de voseo/vosotros (regla 9) en `## es` de los gotchas, `templates/es/**` y los adaptadores ES |
| Listado dorado de `nyx init` | (dentro de `make test-ai-first`) `run_init_golden.sh` | **7 checks** | listado exacto por idioma vs `tests/ai-first/golden/init-default-{en,es}.txt`, neutralidad de proveedor, sello con `nyx-lang`, `--lang`/`NYX_LANG`, adaptadores opt-in, `--agent=foo` con exit 1 |
| Andamiaje SDD (`--sdd`) | (dentro de `make test-ai-first`) `run_sdd_init.sh` | **33 checks** (4 autotests + 10 x 2 idiomas + 4 de `sdd init` sobre proyecto existente + 2 de `sdd evidence` + 3 con `nyx test`) | listado dorado, default intacto, marcador + 7 secciones, disparador, idempotencia |
| Migración de `--sync-docs` | (dentro de `make test-ai-first`) `run_sync_docs_migration.sh` | **5 escenarios + 2 checks estáticos** | layout viejo CON/SIN sello, idempotencia, copia real de `nyxlang.com` (SKIP si no clonado), purga de `templates/` legacy, wiring de `nyx_gendocs fixed-since` |
| Capabilities index | (dentro de `make test-ai-first`) `run_capabilities_test.sh` | **6 checks + frescura** | balance de paréntesis en firmas extraídas + mtime `build.nx` vs `nyx_build` + los 191 builtins globales (catálogo al día, secciones emitidas, y los del reporte por nombre) |
| Generador gendocs | (dentro de `make test-ai-first`) `run_gendocs_test.sh` + `run_gendocs_noop.sh` | **23 asserts + 4 checks** | fixture de 2 gotchas de juguete (regiones, tabla, arrays, `--check`, `fixed-since`) + no-op de regenerar + smoke de `gotchas_table.nx` |
| Lint de gotchas de `nyx vet` | (dentro de `make test-ai-first`) `run_vet_gotchas.sh` | **8 casos + auditoría de 168 archivos** | código Y línea exactos por cada `pattern:` vivo (W101–W104, W107–W110) en `tests/vet/gotchas_fixture.nx`; 0 W1xx en `clean.nx` y en by-example (107) + std (61) |
| Puertas de tipos del tooling | (dentro de `make test-ai-first`) `run_tooling_gates.sh` | **11 checks** (6 negativos + 5 positivos) | `nyx check`/`nyx test`/`nyx build` acusan el error de tipos y salen limpios sobre un proyecto correcto; +3 (2026-09-14): opción desconocida de `nyx test` da rc!=0 |
| Manifiesto de `nyx build` | (dentro de `make test-ai-first`) `run_build_manifest.sh` | **20 checks** (9 negativos + 11 positivos) | `[build]`/`--main` (errores previos; no pisa el principal); +6 (2026-09-15): `--main` no reescribe `nyx.lock` (nativo/wasm) ni contradice el manifiesto |
| Autochequeo del compilador | (dentro de `make test-ai-first`) `run_self_check.sh` | **20 módulos + control positivo** | cada `compiler/*.nx` pasa el checker del propio compilador; el bootstrap usa `NYX_SKIP_SEMANTIC=1`, así que sin esto un módulo deja de chequear sin que nadie lo note |
| Semillas del bootstrap | `make seeds-check` (y dentro de `release-check`) | **9 módulos en punto fijo** | compila cada `compiler/*.nx` y exige reproducir su `.ll`; fuera de `test-all` a propósito: son 9 compilaciones del compilador |
| Recetas by-example | `make test-examples` | **115** (103 ejecutan, 12 solo compilan+enlazan) | compila, ENLAZA y CORRE cada receta con exit 0; los 10 que necesitan servidor/red/entrada están listados con su motivo en el script. Hasta el 2026-09-09 solo emitía el `.ll` y ni linkeaba |
| Dispatch matrix | `make test-dispatch-matrix` | **17/29 celdas (piso 17)** | invariancia por forma del receptor; celdas no verificables = rechazo ruidoso correcto, no hueco |
| REPL / intérprete | `make test-repl` | **25 checks** | tree-walking interpreter, subconjunto declarado (ver LLM.md §5.4); rangos, `break`/`continue` y `return` dentro de bucles desde el 2026-09-14 |
| Stacks extraídos | `make test-stacks` | **5 stacks** (db 7+Python, queue 17, edit 41, shell 2, proxy 3) | canario del compilador; SKIP limpio si un stack no está clonado en `~/nyx/products/*`. serve salió el 2026-09-03 (absorbido al core: su smoke vive en integration) |
| PostgreSQL E2E | (dentro de `make test-integration`, enganchado el 2026-09-14) `run_postgres_tests.sh` | **7 programas** | contra un PostgreSQL real con scram-sha-256; SKIP limpio con la receta si no hay servidor |
| Integration E2E | `make test-integration` | **10 sub-suites** (WS proxy 6 + FFI 3 + slots 9 + llm 3 + HTTP/2 1 + body cap 6 + serve contrato 10 + serve bind 6-9 + smoke 70 + serve+kv 10) | detalle de las altas del 2026-09-14 en `CHANGELOG.md` |
| Load gate | `make test-load` | **8 corridas** (5 normales + 3 con `GC_ENABLE_INCREMENTAL=1`) | verificado con corrida real 2026-08-30; compara la línea `LOAD_OK sum=...`, no solo el rc |
| WASM (wasm32-wasi) | `make test-wasm` | **33** | SKIP sin toolchain (salvo los guards); +5 el 2026-09-14 (`--main`; guard con archivo:línea; guard de concurrencia; autocancelación con y sin arena); +1 el 09-13 (SSE); +4 el 09-10 (CLI; cierres). Detalle en `CHANGELOG.md` |
| Verify + compiler-unit + fmt | `make test-unit` | **21** (13 verify + 3 compiler-unit + 5 fmt) | compiler-unit activos: test-lexer, test-types-unify, test-borrow-classify (3 de 6; resto SKIP, ver abajo) |

`make test-all` corre las 15 suites, en el orden del `Makefile`: regression +
advanced + stdlib + errors + m08-types + runtime + unit + dispatch-matrix +
integration + wasm + examples + load + ai-first + repl + stacks.

## Compiler-unit — detalle (`tests/compiler-unit/`, 6 archivos)

Corridos por `scripts/testing/run_unit_tests.sh` vía `NYX_INLINE_COMPILER=1`
(inlinea internals del compilador para testing real, path default intacto).
**Activos (3)**: `test-lexer`, `test-types-unify`, `test-borrow-classify`.
**SKIP (3)**: `test-parser`/`test-semantic`/`test-interpreter` — bloqueadas
por un tipo `Token` sin resolver al inlinear lexer+parser+semantic juntos
(la colisión de nested fns homónimas que las bloqueaba antes ya está
resuelta); follow-up en `TASKS.md`.

## Cómo se verifica

```bash
make test                    # regression — requerido antes de cada commit
make test-errors              # error paths parse + semantic
make test-m08-types           # M-08 happy types
make test-stdlib               # stdlib
make test-runtime              # runtime C unit
make test-load                 # load gate (gc × goroutine stacks)
make test-ai-first              # ai-first + guardias + docs-health
make test-dispatch-matrix        # invariancia de dispatch por forma
make test-repl                    # smoke del intérprete
make test-stacks                   # canario de los 5 stacks (SKIP si faltan)
make test-integration                # E2E serve+kv+WS+HTTP2+FFI+llm
make test-unit                        # verify + compiler-unit + fmt
make test-wasm                         # wasm32-wasi (SKIP sin toolchain)
make test-all                           # todo lo de arriba salvo integration/wasm
```

`assert()` aborta el proceso (`exit(1)`) en el primer fallo salvo dentro de
`nyx test` (el runner integrado, que reporta por-test y sale con código 1 al
final) — cualquier runner de tests `.nx` propio debe grepear
`ASSERTION FAILED` en el output además del exit code. Los runners de
`scripts/testing/` serializan contra `script.nx`/`script.ll`/`script_bin` de
la raíz (ver `lib_testroot_lock.sh`) — no correr dos en paralelo.

## Adding new tests

```bash
# Regression: crear en el subdirectorio temático correspondiente y correr make test
cat > tests/compiler/ecosystem/test-XXX-my-feature.nx << 'EOF'
fn main() {
    print("expected output")
}
EOF
make test
```

Error test: agregar en `tests/compiler/errors/` + entrada en su runner.
Producto (stack extraído): agregar el archivo en `~/nyx/products/<stack>/tests/`
y su nombre al runner de ese repo; `make test-stacks` lo recoge solo.

## Referencias

- Historia completa de conteos 2026-04→2026-08: `docs/archive/2026-tests-history.md`
- Detalle de directorios de regression (`tests/compiler/basics/` 01–20, etc.): explorar con `ls tests/compiler/`
- Gotchas de testing/toolchain: `LLM.md` §5
