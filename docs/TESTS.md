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
| Regression | `make test` | **401 archivos / 400 ARM64** | `test-123-full-asm` se salta en ARM64 (arquitectura) |
| Error paths (parse+semantic) | `make test-errors` | **256** | verificado con corrida real 2026-08-30 |
| M-08 happy types | `make test-m08-types` | **18** | verificado con corrida real 2026-08-30 |
| Advanced | (dentro de `make test-all`, `tests/advanced/`) | **30** | A01–A30, stress + algoritmos |
| Stdlib | `make test-stdlib` | **5** | std/math + std/array + integración + std/template + std/multipart (absorción de serve al core, 2026-08-31) |
| Runtime C unit (B4) | `make test-runtime` | **34 suites / 1587 asserts** | verificado con corrida real 2026-08-30; discrepancia vs. el `1444` documentado el 2026-08-29 (main avanzó con W3 Task 2/3 antes del corte de esta rama) — el número real gana |
| AI-first (objetivo) | `make test-ai-first` | **25 programas + 18 guardas** | corre 19 scripts: `run_ai_first_tests.sh` (25 `.nx`) + 17 scripts de guardas (18 guardas — `run_templates_parity.sh` trae dos) + `scripts/sdd/selftest`; ver las 9 filas siguientes |
| Coherencia de manuales | (dentro de `make test-ai-first`) `run_template_coherence.sh` | **4 checks** | mentiras resucitadas + anclas de trampas/reglas vivas + imports sin comillas + ids de gotcha citados, sobre lo sembrado en ambos idiomas; ANCLAS/MENTIRAS de `gotchas_generated.sh` |
| Bloques sembrados compilan | (dentro de `make test-ai-first`) `run_seeded_blocks_compile.sh` | **1 check** | cada bloque ` ```nyx ` sembrado (ambos idiomas) compila con bootstrap semántico + clang; sin `fn main` debe ser ` ```nyx-fragment ` o falla |
| Paridad EN/ES + español neutro | (dentro de `make test-ai-first`) `run_templates_parity.sh` | **2 checks** | twins EN/ES coherentes (marca de template, encabezados `##`, `gen:ids`) + denylist de voseo/vosotros (regla 9) en `## es` de los gotchas, `templates/es/**` y los adaptadores ES |
| Listado dorado de `nyx init` | (dentro de `make test-ai-first`) `run_init_golden.sh` | **7 checks** | listado exacto por idioma vs `tests/ai-first/golden/init-default-{en,es}.txt`, neutralidad de proveedor, sello con `nyx-lang`, `--lang`/`NYX_LANG`, adaptadores opt-in, `--agent=foo` con exit 1 |
| Andamiaje SDD (`--sdd`) | (dentro de `make test-ai-first`) `run_sdd_init.sh` | **33 checks** (4 autotests + 10 x 2 idiomas + 4 de `sdd init` sobre proyecto existente + 2 de `sdd evidence` + 3 con `nyx test`) | listado dorado, default intacto, marcador + 7 secciones, disparador, idempotencia |
| Migración de `--sync-docs` | (dentro de `make test-ai-first`) `run_sync_docs_migration.sh` | **5 escenarios + 2 checks estáticos** | layout viejo CON/SIN sello, idempotencia, copia real de `nyxlang.com` (SKIP si no clonado), purga de `templates/` legacy, wiring de `nyx_gendocs fixed-since` |
| Capabilities index | (dentro de `make test-ai-first`) `run_capabilities_test.sh` | **3 checks + frescura** | balance de paréntesis en firmas extraídas + chequeo de mtime `build.nx` vs `nyx_build` |
| Generador gendocs | (dentro de `make test-ai-first`) `run_gendocs_test.sh` + `run_gendocs_noop.sh` | **23 asserts + 4 checks** | fixture de 2 gotchas de juguete (regiones, tabla, arrays, `--check`, `fixed-since`) + no-op de regenerar + smoke de `gotchas_table.nx` |
| Lint de gotchas de `nyx vet` | (dentro de `make test-ai-first`) `run_vet_gotchas.sh` | **5 casos + auditoría de 161 archivos** | código Y línea exactos por cada `pattern:` vivo (W101–W104, W107) en `tests/vet/gotchas_fixture.nx`; 0 W1xx en `clean.nx` y en by-example (102) + std (59) |
| Dispatch matrix | `make test-dispatch-matrix` | **17/29 celdas (piso 17)** | invariancia por forma del receptor; celdas no verificables = rechazo ruidoso correcto, no hueco |
| REPL / intérprete | `make test-repl` | **15 checks** | tree-walking interpreter, subconjunto declarado (ver LLM.md §5.4) |
| Stacks extraídos | `make test-stacks` | **5 stacks** (db 7+Python, queue 17, edit 41, shell 2, proxy 3) | canario del compilador; SKIP limpio si un stack no está clonado en `~/nyx/products/*`. serve salió el 2026-09-03 (absorbido al core: su smoke vive en integration) |
| Integration E2E | `make test-integration` | **9 sub-suites** (WS proxy 6 + FFI 3 + slots 9 + llm stub 3 + HTTP/2 1 + body cap 6 + std/serve contrato 10 + smoke 63 + serve+kv 10) | smoke 63 = el de nyx-serve, portado al congelarlo; serve+kv SKIPea sin el daemon kv |
| Load gate | `make test-load` | **8 corridas** (5 normales + 3 con `GC_ENABLE_INCREMENTAL=1`) | verificado con corrida real 2026-08-30; compara la línea `LOAD_OK sum=...`, no solo el rc |
| WASM (wasm32-wasi) | `make test-wasm` | **22** | SKIP limpio sin toolchain; 1 falla pre-existente no relacionada (ver TASKS.md) |
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
