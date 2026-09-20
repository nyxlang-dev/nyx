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
| Regression | `make test` | **449 archivos / 448 ARM64** | medido 2026-09-18 (+1 `test-430-include-bytes`, arco include-bytes; antes +1 `test-429-sse-frame`). `test-123-full-asm` se salta en ARM64 (arquitectura). Altas del 2026-09-08 al 15 en `CHANGELOG.md` |
| Error paths (parse+semantic) | `make test-errors` | **309** | +8 el 2026-09-20 (NYX1037: los tres contextos que revientan × 2 capas, el `Fn` que viene de un campo de struct, y el control positivo de los siete tipos que sí viajan); 301 tras include-bytes |
| M-08 happy types | `make test-m08-types` | **18** | verificado con corrida real 2026-08-30 |
| Advanced | (dentro de `make test-all`, `tests/advanced/`) | **30** | A01–A30, stress + algoritmos |
| Stdlib | `make test-stdlib` | **5** | std/math + std/array + integración + std/template + std/multipart (absorción de serve al core, 2026-08-31) |
| Runtime C unit (B4) | `make test-runtime` | **35 suites / 1756 asserts** | verificado con corrida real 2026-09-20; +8 del fix de SIGPIPE en TLS (`test_tls_write_to_gone_peer_no_sigpipe`, `test_tls` 261 → 268) sobre los 1748 del arco `http-tls-cliente`; detalle en `CHANGELOG.md` |
| AI-first (objetivo) | `make test-ai-first` | **30 programas + 6 casos stdin (x2 targets) + 67 guardas** | 27 scripts: ai_first + stdin_io + 24 de guardas (67: templates 2, tooling 15, coverage 9, build_manifest 20, no_compiler_rt 2, voseo 1) + selftest |
| STDIN-IO (`read_line`/`stdin_eof`/`read_stdin_all`) | (dentro de `make test-ai-first`) `run_stdin_io_tests.sh` | **6 casos × 2 targets** | `tests/ai-first/stdin/`, self-asserting, nativo + wasm32-wasi (SKIP limpio sin toolchain); fix 2026-09-14 (detalle en `CHANGELOG.md`) |
| Español neutro (mensajes del toolchain) | (dentro de `make test-ai-first`) `run_voseo_messages.sh` | **1 check** + autotest | `voseo_filter` (`lib_voseo.sh`: lista + regla general en -á) sobre `compiler/`, `runtime/`, `std/`, `scripts/`, `templates/gitignore` y `tests/**/*.sh` |
| Coherencia de manuales | (dentro de `make test-ai-first`) `run_template_coherence.sh` | **4 checks** | mentiras resucitadas + anclas de trampas/reglas vivas + imports sin comillas + ids de gotcha citados, sobre lo sembrado en ambos idiomas; ANCLAS/MENTIRAS de `gotchas_generated.sh` |
| Bloques sembrados compilan | (dentro de `make test-ai-first`) `run_seeded_blocks_compile.sh` | **1 check** | cada bloque ` ```nyx ` sembrado (ambos idiomas) compila con bootstrap semántico + clang; sin `fn main` debe ser ` ```nyx-fragment ` o falla |
| Paridad EN/ES + español neutro | (dentro de `make test-ai-first`) `run_templates_parity.sh` | **2 checks** | twins EN/ES coherentes (marca de template, encabezados `##`, `gen:ids`) + denylist de voseo/vosotros (regla 9) en `## es` de los gotchas, `templates/es/**` y los adaptadores ES |
| Listado dorado de `nyx init` | (dentro de `make test-ai-first`) `run_init_golden.sh` | **7 checks** | listado exacto por idioma vs `tests/ai-first/golden/init-default-{en,es}.txt`, neutralidad de proveedor, sello con `nyx-lang`, `--lang`/`NYX_LANG`, adaptadores opt-in, `--agent=foo` con exit 1 |
| Andamiaje SDD (`--sdd`) | (dentro de `make test-ai-first`) `run_sdd_init.sh` | **33 checks** (4 autotests + 10 x 2 idiomas + 4 de `sdd init` sobre proyecto existente + 2 de `sdd evidence` + 3 con `nyx test`) | listado dorado, default intacto, marcador + 7 secciones, disparador, idempotencia |
| Migración de `--sync-docs` | (dentro de `make test-ai-first`) `run_sync_docs_migration.sh` | **5 escenarios + 2 checks estáticos** | layout viejo CON/SIN sello, idempotencia, copia real de `nyxlang.com` (SKIP si no clonado), purga de `templates/` legacy, wiring de `nyx_gendocs fixed-since` |
| Capabilities index | (dentro de `make test-ai-first`) `run_capabilities_test.sh` | **6 checks + frescura** | balance de paréntesis en firmas extraídas + mtime `build.nx` vs `nyx_build` + los 191 builtins globales (catálogo al día, secciones emitidas, y los del reporte por nombre) |
| Generador gendocs | (dentro de `make test-ai-first`) `run_gendocs_test.sh` + `run_gendocs_noop.sh` | **23 asserts + 4 checks** | fixture de 2 gotchas de juguete (regiones, tabla, arrays, `--check`, `fixed-since`) + no-op de regenerar + smoke de `gotchas_table.nx` |
| Lint de `nyx vet` (gotchas + W004) | (en `make test-ai-first`) `run_vet_gotchas.sh` | **9 casos + auditoría de 173 archivos** | código y línea exactos por `pattern:` vivo (W101–W104, W107–W110) y por W004 (`Fn` sin firma con resultado usado); 0 avisos en `clean.nx` y en by-example + std |
| Puertas de tipos del tooling | (dentro de `make test-ai-first`) `run_tooling_gates.sh` | **15 checks** (7 negativos + 8 positivos) | check/test/build acusan el error de tipos; opción desconocida de `nyx test` (`--cover` sí, `--coverage` ya no); fns privadas homónimas por módulo |
| Cobertura de `nyx test` | (dentro de `make test-ai-first`) `run_coverage_tests.sh` | **9 checks** | fixture `tests/tooling/coverage/`: tabla + IR idéntico, informe, lcov, sin llvm-profdata, `--target` (2), prueba colgada, sin `--coverage`; SKIP sin llvm-profdata |
| Manifiesto de `nyx build` | (dentro de `make test-ai-first`) `run_build_manifest.sh` | **20 checks** (9 negativos + 11 positivos) | `[build]`/`--main` (errores previos; no pisa el principal); +6 (2026-09-15): `--main` no reescribe `nyx.lock` (nativo/wasm) ni contradice el manifiesto |
| Autochequeo del compilador | (dentro de `make test-ai-first`) `run_self_check.sh` | **20 módulos + control positivo** | cada `compiler/*.nx` pasa el checker del propio compilador; el bootstrap usa `NYX_SKIP_SEMANTIC=1`, así que sin esto un módulo deja de chequear sin que nadie lo note |
| Semillas del bootstrap | `make seeds-check` (y dentro de `release-check`) | **9 módulos en punto fijo** | compila cada `compiler/*.nx` y exige reproducir su `.ll`; fuera de `test-all` a propósito: son 9 compilaciones del compilador |
| Recetas by-example | `make test-examples` | **119** (106 ejecutan, 13 solo compilan+enlazan) | +1 `112-include-bytes`; compila, ENLAZA y CORRE cada receta con exit 0; motivo listado en el script. +1 `109-await-fetch-wasm`; +1 `111-nyx-test-coverage` |
| Dispatch matrix | `make test-dispatch-matrix` | **17/29 celdas (piso 17)** | invariancia por forma del receptor; celdas no verificables = rechazo ruidoso correcto, no hueco |
| REPL / intérprete | `make test-repl` | **26 checks** | +1 el 2026-09-20 (NYX3007: `include_bytes` no existe al interpretar); tree-walking interpreter, subconjunto declarado (ver LLM.md §5.4); rangos, `break`/`continue` y `return` dentro de bucles desde el 2026-09-14 |
| Stacks extraídos | `make test-stacks` | **5 stacks** (db 7+Python, queue 17, edit 41, shell 2, proxy 3) | canario del compilador; SKIP limpio si un stack no está clonado en `~/nyx/products/*`. serve salió el 2026-09-03 (absorbido al core: su smoke vive en integration) |
| PostgreSQL E2E | (dentro de `make test-integration`, enganchado el 2026-09-14) `run_postgres_tests.sh` | **7 programas** | contra un PostgreSQL real con scram-sha-256; SKIP limpio con la receta si no hay servidor |
| Integration E2E | `make test-integration` | **10 sub-suites** (WS proxy 6 + FFI 3 + slots 9 + llm 3 + HTTP/2 1 + body cap 6 + serve contrato 10 + serve bind 6-9 + smoke 103 + serve+kv 10) | detalle de las altas en `CHANGELOG.md` |
| Load gate | `make test-load` | **8 corridas** (5 normales + 3 con `GC_ENABLE_INCREMENTAL=1`) | verificado con corrida real 2026-08-30; compara la línea `LOAD_OK sum=...`, no solo el rc |
| WASM (wasm32-wasi) | `make test-wasm` | **39** | SKIP sin toolchain (salvo guards); +2 el 2026-09-20 (`include_bytes` con paridad nativo↔wasm: largo, suma y los 256 valores); +4 el 09-17 (arco async-real-wasm, 0 SKIP async); +5 el 09-14. Detalle en `CHANGELOG.md` |
| Verify + compiler-unit + fmt | `make test-unit` | **23** (13 verify + 5 compiler-unit + 5 fmt) | 5 de 7 compiler-unit activos (resto SKIP, ver abajo); la fila decía 4 hasta que la máquina B del reparto lo midió: `test-emit-bytes-global` ya corría en el runner |

`make test-all` corre las 15 suites, en el orden del `Makefile`: regression +
advanced + stdlib + errors + m08-types + runtime + unit + dispatch-matrix +
integration + wasm + examples + load + ai-first + repl + stacks.

## Compiler-unit — detalle (`tests/compiler-unit/`, 7 archivos)

Corridos por `scripts/testing/run_unit_tests.sh` vía `NYX_INLINE_COMPILER=1`
(inlinea internals del compilador para testing real, path default intacto).
**Activos (4)**: `test-lexer`, `test-parser-declline`, `test-types-unify`, `test-borrow-classify`.
`test-parser-declline` corre con `NYX_SKIP_SEMANTIC=1` SOLO para ese programa: importa
lexer+parser y choca con el mismo bloqueo del tipo `Token` que tiene en SKIP a `test-parser`;
lo que prueba es la forma del AST.
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
