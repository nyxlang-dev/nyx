# Nyx Test Suite — Canonical Counts / Conteos canónicos

> Last updated: 2026-07-19 (+test_tls_wait_readable_eof_after_nonblock_read, review final pre-push: FIX 1
> CRITICAL — `tls_wait_readable` detecta EOF real vía el flag `h->eof` que setea `tls_read_nonblock` al ver
> close_notify/error fatal, cerrando el busy-spin del túnel WS de nyx-proxy tras FIN del peer; 14 asserts
> nuevos, runtime-unit 647→661) | (previo: +tls_read_nonblock en el runtime — companion no-bloqueante de tls_wait_readable
> para el patrón poll-then-lock del túnel WS de nyx-proxy: 31 asserts nuevos en tests/runtime-unit/test_tls.c
> (handle inválido, max_bytes<=0, sin data devuelve inmediato sin bloquear, data lista + flag O_NONBLOCK
> restaurado via fcntl, buffer interno servido sin tocar el socket, caso exacto del caveat NewSessionTicket
> de tls_wait_readable — wait_readable=1 + read_nonblock="" sin bloquear); conteo de runtime-unit corregido
> por corrida real de `make test-runtime` — el "345 asserts" previo tenía drift acumulado (scheduler/webpush
> ya no sumaban), la baseline real pre-cambio era 616, ahora 647) | Nyx v0.21.0 | **This table is the single source of truth
> for test counts** — every other doc (CLAUDE.md, README, landings) references it.
> Esta tabla es la única fuente de verdad de conteos — el resto de docs la referencia.

## Summary / Resumen

| Suite | Target | Runner | Count | Status |
|-------|--------|--------|-------|--------|
| Regression | `make test` | `scripts/testing/run_bootstrap_tests.sh` | **293** (ARM64; 294 x86_64 — +test-272 inferencia de elemento vía anotación Array<String> en params/locales (fija el idiom del gotcha "arr[i] inline en concat da puntero crudo"; el Array PELADO queda acotado a "slots sin tag"); +test-271 rwlock (multi-reader/single-writer pthread_rwlock: try* 0/1, writers serializados entre threads); +test-270 indexOf(needle, from) con offset (nyx_string_index_of_from; antes el 2º arg se descartaba en silencio; semantic tipa el from como int → NYX1005); +test-269 aliases snake_case de métodos String (starts_with/ends_with/to_upper/to_lower despachan igual que sus camelCase; antes devolvían 0 EN SILENCIO); +test-268 strings binary-safe (==/indexOf/contains/split/replace/startsWith/endsWith sobre bytes con NUL embebido — nyx_memmem en runtime/strings.c + `==`/`!=` de codegen_binop migrados de strcmp a nyx_string_equals); — +test-267 fsync/fdatasync (durabilidad de I/O — builtins `fsync(fd)`/`fdatasync(fd)`, runtime/file-io.c, consumidor: snapshot durable del daemon nyx-kv T2b); — +test-266 condvar (mutex+condvar con predicado, 2 threads OS, verificado real `make test` 287/287); — +test-264 user-fns ganan sobre builtins homónimos (c_fn_ptr/string_from_cstr/string_from_bytes con guard) + test-265 struct GENÉRICO capturado en SharedEnv (campo %Wrapper_int monomorfizado textual, antes invalid-cast i64); — +test-262 rework handler array global (negativos/bool/struct via codegen_array_literal) + test-261 literal float en array global (bitcast en __nyx_init_globals); — +test-260 string_to_int_or/float_or (variantes seguras, no abortan); — +test-259 route_match/route_resolve del router hash, data pura sin WASM (std/routematch, router+SPA Task 1); +test-258 vdiff de std/vdom, data pura sin WASM (framework VDOM del frontend, Task 1); +test-256 lambda captura locals + test-257 spawn captura scope (fix parser: insertar lambdas hoisteadas en el punto de uso); — test-123-asm skipped on ARM64; +test-254 internado de literales de String (nyx_intern_cstr) + test-255 LICM de literales (hoisting fuera de loops, incl. trampa de patrón de match en loop); incluye +test-240..244 T4c drop determinista + test-245 drop-mono de afín GENÉRICO (Box, inc 4 Etapa 4) + test-246 Rc refcount (inc 4 Etapa 5) + test-247 colisión fn-nombrada/local homónimo (ctx.variables limpiado entre fns) + test-248/249/250 cripto Web Push (webpushcrypto round-trip, vapid_jwt, RFC 8291 §5 vector) + test-251 dedup de extern "C" duplicados entre módulos (std/web+std/url) + test-252 resp_parse_len (parseo RESP sin exit(1)) + test-253 resp_read_command length-based; el 250 canónico previo tenía drift) | ✅ |
| Error paths (parse + semantic) | `make test-errors` | `tests/compiler/errors/run_error_tests.sh` | **177** (passed autoritativo del runner — reconciliado 2026-07-17: +test-c-fn-ptr-notfn/closure (callback Task 1, no volcados en su momento) + test-c-fn-ptr-shadow (local que shadowea fn top-level → error, antes silently-wrong), incl. NYX_DIAG=json; incluye 12 de fase parse F1 + test-import-unresolved + test-extern-js-native-target + test-dyn-mutref + resolve-vendored-pkg-src-import + borrow checker: use-after-move T1a, free-safety NYX1220/1221 T3a, exclusividad &mut NYX1210/1211, move-checking afín NYX1230 T4a/T4b, dangling refs vía `return` NYX1222 T3 inc1 (+9: 3 casos POS × 2 [gate+off-silent] + 3 NEG de exclusión) + flow-merge (+3: branch-oneside POS × 2 + branch-clear-ok/match-clear-ok NEG + freed-revive-branch guard NYX1221 + dangling-while POS + impl-double-free guard NYX1221 dentro de método), **T3 inc2 (2026-07-11, +10): return-de-agregado (agg-return/agg-struct) + store a destino que sobrevive — global (global-store) o out-param (outparam), 4 casos POS × 2 [gate+off-silent] + 2 NEG (agg-neg: elemento no frame-bound; local-struct-neg: destino no sobrevive)**; **T3 inc3a (2026-07-11): taint transitivo de contenedores locales (`v[i]=&x`/`s.f=&x`) — taint-index-return/taint-field-return POS + taint-local-noescape NEG**; **T3 inc3b (2026-07-11): dangling INTER-PROCEDURAL — elisión NYX1223 lint (interproc-elision/chain/agg + soft-hard, warn/error/off) + `'a` explícito NYX1222 gating (interproc-lifetime/lifetime-pick/join-hard) + NEG global/ambig**; **T3 inc3c-1 (2026-07-12): multi-source outlives — interproc-multisrc/multisrc2 POS gating (×2 con off-silent) + multisrc-neg**; **T3 inc3c-2a (2026-07-12): struct-con-lifetime elisión — interproc-struct POS (warn/error/off) NYX1223 lint + struct-neg/struct-glob-neg**; **T3 inc3c-2b (2026-07-12): struct `'a` explícito → GATING — interproc-struct-hard POS (gate+off-silent) NYX1222 + struct-hard-neg**; **T3 multi-lifetime (2026-07-12): structs con varios `'a` (`Holder<'a,'b>`) matchean TODOS los lifetimes del ret-type — multi-lt POS (gate+off-silent) + multi-lt-neg**; **T3 cross-módulo (2026-07-12): passthrough a través de una fn IMPORTADA (funciona por inlining — interproc-xmodule POS warn/error/off NYX1223 + xmodule-neg)**; **inc4/pre-2 (2026-07-12): move-checking de #[affine] struct X<T> GENÉRICO — affine-generic POS (gate+off-silent) NYX1230 + affine-generic-ok NEG**; **inc4 Etapa 3 (2026-07-12): MoveOnly<T> afín REAL desde std/owned — moveonly POS (gate+off-silent) NYX1230 + moveonly-ok NEG (single consume)**; conteo reconciliado 2026-07-12 al total autoritativo del runner (`make test-errors` = **171 passed**); el "126"/"72" previos estaban stale — nunca se habían volcado a la tabla los checks de borrow de inc 3a/3b/3c; **+test-extern-conflict (2026-07-14, sección codegen exit≠0): extern duplicado con firma/ABI conflictiva → error, no miscompile silencioso**; **+FP fix borrow (2026-07-14): place_path field-sensitive — free(self.a)+free(self.b) de campos DISTINTOS ya NO es NYX1221 double-free (rompía el drop de Rc<T>); test-borrow-moveonly-ok VERDE + test-borrow-drop-two-fields-ok nuevo**) | ✅ 177 passed / 0 failed |
| M-08 happy types | `make test-m08-types` | `tests/compiler/types/run_m08_types_tests.sh` | **16** | ✅ |
| Advanced | (in `test-all`) | `tests/advanced/run_advanced_tests.sh` | **30** | ✅ |
| Stdlib | `make test-stdlib` | `scripts/run_stdlib_tests.sh` | **3** | ✅ |
| Runtime C unit (B4) | `make test-runtime` | `scripts/testing/run_runtime_tests.sh` | **18 suites / 729 asserts** (+9 test_thread: rwlock — readers comparten/writer excluye vía try*, NULL guards, serialización 4×5000; +15 test_net: cap de body HTTP configurable NYX_HTTP_MAX_BODY + slot 6 de error 0/413 — body ok, too-large sin drenar, env override/inclusivo/inválido; +10 test_index_of_from: indexOf con offset, clamps y binary-safe; +21 test_strings binary-safe: familia equals/compare/contains/index_of/starts_with/ends_with/split/replace por longitud con NUL embebido; +test_file_io: fsync/fdatasync — 13 asserts) | ✅ |
| AI-first (objetivo) | `make test-ai-first` | `scripts/testing/run_ai_first_tests.sh` | **7** (valida que la doc sembrada basta para escribir Nyx correcto al 1er intento) | ✅ |
| Capabilities index | (manual) | `scripts/testing/run_capabilities_test.sh` | **1** (cada `pub fn` de std/ aparece en el `CAPABILITIES.md` generado por `nyx capabilities`) | ✅ |
| Stacks extraídos | `make test-stacks` | `scripts/testing/run_stack_tests.sh` | db (7 .nx + Python) + queue 17 + edit 41 + shell 2 + serve 7 (smoke HTTP) + proxy 3 (.nx cache/metrics/xff — split #7) — canario del compilador | ✅ |
| Integration E2E | `make test-integration` | `scripts/testing/run_integration_tests.sh` | **10 serve+kv + WS proxy (6 checks) + HTTP/2 (1 suite) + FFI callback C→Nyx (3 checks) + std/llm stub (3 checks)** | ✅ |
| WASM (wasm32-wasi) | `make test-wasm` | `scripts/testing/run_wasm_tests.sh` | **22** (17 tests .nx: wasmtime cuando aplica + shim WASI del navegador vía node; incluye json-floats, float/Array FFI, dom-extendido, std/browser, eventos, closures-por-tabla, arena 10k re-entradas, fixture multi-archivo de make wasm y el framework VDOM — test-wasm-19-dom-handles (Task 2 VDOM, 12 wrappers por-handle), test-wasm-20-component (Task 3 VDOM, mount/update quirúrgico), test-wasm-21-fn-indirect-ptr (cobertura de `Fn(Array)->VNode` tipado en llamada indirecta), test-wasm-22-router (router+SPA Task 2: router_new/router_start resuelve la ruta actual por hash, monta y re-navega en hashchange); SKIP limpio exit 0 sin toolchain — no entra en test-all; ⚠️ test-wasm-12-arena (browser-shim) FALLA pre-existente, no relacionado al framework VDOM — ver TASKS.md) | ⚠️ 22 passed / 1 failed (pre-existente) |
| Verify (unit) | `make test-unit` | `scripts/testing/run_unit_tests.sh` (2026-07-02) | **19** (13 verify expected-output/exit-code (incl. test-verify-12: carrera de builds concurrentes vía NYX_SRC, 2026-07-18) + 3 compiler-unit: test-lexer, test-types-unify (incl. región TyRef 3c-full), test-borrow-classify + 3 fmt (`run_fmt_tests.sh`: impl genérico RED→GREEN, idempotencia, no-genérico)) | ✅ |
| Compiler unit | (en `make test-unit`, SKIP) | — | 4 files | ⛔ bloqueado: import de módulos compiler/ no aporta funciones al IR (TASKS.md) |

**Compiler tests**: 293 + 30 + 177 + 16 + 3 = 519 (506 únicos — test-46..58 + test-208..210 + test-238 cuentan en regression y m08-types; el conteo de errors incluye las entradas multi-fragmento (B8-F3 semantic y F1 parse), las re-corridas JSON, y los checks pareados gate+off-silent del borrow checker, como siempre).
**`make test-all`** corre: regression + advanced + stdlib + errors + m08-types + runtime + ai-first + **test-stacks** (canario de los 6 stacks; SKIP con aviso si un stack no está clonado).
(`test-product-units` se retiró en el split #7: las 3 suites del proxy viven en `~/nyx-proxy-stack` y entran por `make test-stacks`.)

> **nyx-kv**: extraído del monorepo (2026-04-27) a `~/nyx-kv-stack` (repo nyxlang-dev/nyx-kv-stack).
> Sus ~41 tests RESP corren en ese repo. **nyx-serve**: extraído (2026-07-06, split #6) a
> `~/nyx-serve-stack`. El E2E serve+kv del monorepo usa los binarios de ambos stacks
> (`NYX_KV_BIN` / `NYX_SERVE_BIN` para override; skip con aviso si falta alguno).

---

## Suite 1: Regression (`make test`)

**Total: 293 (ARM64) / 294 (x86_64)** — test-123-asm se salta en ARM64 (número de
línea histórico en esta suite tiene drift acumulado documentado — la tabla-resumen
arriba es la fuente autoritativa; este total se reconcilió con el runner real 2026-07-18;
+test-267 fsync/fdatasync 2026-07-20; +test-268 strings binary-safe, +test-269
aliases snake_case, +test-270 indexOf con offset, +test-271 rwlock y +test-272
Array<T>-annot 2026-07-21).
**Runner:** `scripts/testing/run_bootstrap_tests.sh` — compila cada test con `nyx_bootstrap`
(semantic checker activo end-to-end desde M-08 S13), linkea el runtime completo y compara
exit code / expected output.

| Directory | Range | Area | Example |
|-----------|-------|------|---------|
| `tests/compiler/basics/` | 01–20 | Primitives, arithmetic, logic, variables, conditionals, while, for, functions, arrays, strings, scope | test-10-fibonacci |
| `tests/compiler/types/` | 21–58, 208–210, 213–215 | Enums, closures, generics, generic structs, traits, dynamic dispatch, tuples, type aliases, M-08 happy types, implicit mono (F2), global array string init, String coercion global/field | test-36-traits-basic |
| `tests/compiler/systems/` | 46–70, 219, 221, 240–244 | FFI, const, bitwise, raw pointers, unsafe, manual memory, inline asm, module import, panic, arena allocator, auto-deref *Struct field, drop determinista #[affine] (T4c) | test-56-raw-pointers |
| `tests/compiler/iterators-traits/` | 71–100, 216–217, 220, 266 | Iterators, trait advanced, operator overloading, visibility, pattern matching, networking, threading, json floats, http url scheme, &mut self mutation, condvar (mutex+condvar con predicado, 2 threads OS) | test-75-iter-chain |
| `tests/compiler/stdlib-suite/` | 101–130, 222, 252–253, 258–259 | HTTP, time, crypto, datetime, TLS, async, unicode, macros, build system, Stack LIFO (&mut self), resp_parse_len, resp_read_command length-based, vdiff del framework VDOM (data pura), route_match/route_resolve del router hash (data pura, std/routematch) | test-252-resp-parse-len |
| `tests/compiler/language/` | 131–160, 218, 224–230 | Union types, macros, if-let, web framework, build, CLI, CSV, spawn, derive, HKT, lifetimes, ASI newline-paren, Map.get String inline/arg, to_string int/float/bool/f32, substring índice negativo, Map.get int + literal, async+alloc | test-133-web-framework |
| `tests/compiler/ecosystem/` | 161–207, 223, 248–251 | SQLite, event loop, compress, WebSocket, proptest, TOML, FSM, StringBuilder, HTTP MT, TLS server, builtins, process builtins, builtin-collision (B1), cross-module global forward-ref (B2), url decode percent-encoding, cripto Web Push, dedup extern "C" entre módulos | test-251-dup-extern-imports |

---

## Suite 2: Error paths — parse + semantic (`make test-errors`)

**Total: ver tabla-resumen** (passed autoritativo del runner = **173**, incl. 16 NYX_DIAG=json + los checks pareados
gate+off-silent del borrow checker T1a/T3a/T3-inc1..3c/inc4 + el FP-fix de 2026-07-14: `test-borrow-moveonly-ok` VERDE
+ `test-borrow-drop-two-fields-ok`) | `tests/compiler/errors/` — programas que DEBEN fallar
con el mensaje esperado. Semantic (M-08): type mismatches, trait faltante, dyn incompat,
call non-function, did-you-mean, trait bounds B8-F1, enum payloads B8-F2; el archivo
multi-error (B8-F3) entra 3 veces, una por fragmento. Parse (F1, nuevo 2026-06-12):
keyword como identificador (NYX0102), multi-error de parse (3 fragmentos), presupuesto
NYX0103, EOF inesperado NYX0104, paréntesis sin cerrar NYX0101 — grepean "parse FAILED".
Driver (v0.16.1): `test-import-unresolved` — import local que no resuelve a ningún
archivo emite error bilingüe + exit(1) (antes silencioso).
Codegen target (2026-07-02): `test-extern-js-native-target` — `extern "js" fn`
(FFI WASM) compilado sin NYX_TARGET=wasm32-wasi emite error bilingüe + exit(1).
`test-wasm-forbidden-builtin` — un builtin no portable (tcp_connect/net.c)
bajo NYX_TARGET=wasm32-wasi emite error bilingüe + exit(1) (guard de codegen).
Los 16 casos JSON re-corren una muestra con `NYX_DIAG=json` y validan con python3
que cada línea sea JSON válido con el `code` estable, `phase` correcta (parse/semantic),
`suggestion` y línea donde aplica.

**Borrow checker** (v0.19.0, tracks 1/3/4 — el runner los corre con `NYX_BORROW=warn|error`
y también en modo OFF para probar silencio; el número de checks por caso NO es uniforme —
depende de cuántos modos/variantes ejercita cada test, no de una regla fija "pareado = 2"; el
desglose exacto está en cada bullet de abajo, y suma al total de la suite (ver tabla-resumen: 173):
`test-borrow-use-after-move` (T1a, NYX1201 hint no-gating, se suprime en error — 3 checks:
warn-hint + error-suppressed + off-silent) + `test-borrow-use-after-free`/
`test-borrow-double-free`/`test-borrow-free-ok` (T3a, NYX1220/1221 SOUND — 1 check cada uno) +
`test-borrow-mut-exclusive`/`-ok` (NYX1210/1211, lint no-gating — 1 check cada uno) +
`test-borrow-affine-move`/`-ok` (T4a/T4b, NYX1230 SOUND — 1 check cada uno) +
`test-borrow-dangling-return`/`-propagate`/`-reassign`/`-neg-passthrough`/`-neg-self`/
`-neg-deref` (Track 3 inc 1, 2026-07-10: NYX1222 GATING — escape de
`&<local del frame>` por `return`, directo o propagado vía `let`/reasignación; excluye
`&self.campo`, `&arr[i]`, `&*p` y `return` de un puntero recibido; +9 checks: 3 casos POS
× 2 [gate + off-silent] + 3 casos NEG × 1 [sin falso positivo]). Sound dentro de su scope
(sin falsos negativos de escape-por-return); ver limitación conservadora de flow-merge
compartida con toda la familia gating en `TASKS.md`.
**Track 3 inc 2** (nuevo 2026-07-11): dos vectores de escape nuevos, mismo NYX1222, mensaje
distinto pero ambos con el prefijo común `reference to local '<x>' escapes` (por eso el runner
grepea ese substring en vez del sufijo completo). (A) **return de un agregado** con un ref
frame-bound adentro — `test-borrow-dangling-agg-return` (`return [&x]`) y
`test-borrow-dangling-agg-struct` (`return Holder { r: &x }`); mensaje "...escapes the function
that owns it". (B) **store a un destino que sobrevive** — `test-borrow-dangling-global-store`
(`g = &x` sobre global) y `test-borrow-dangling-outparam` (`out.f = &x` con `out: *T` parámetro);
mensaje "...escapes into a longer-lived location". NEG: `test-borrow-dangling-agg-neg`
(`return [&p.x]` con `p: *Point` parámetro — el elemento no es frame-bound, no marca) y
`test-borrow-dangling-local-struct-neg` (`h.r = &x` con `h` struct frame-local — el destino
NO sobrevive a la función, no marca). +10 checks: 4 casos POS × 2 [gate+off-silent] + 2 NEG × 1.
Spec: `docs/superpowers/specs/2026-07-10-track3-dangling-refs-design.md` (inc 1) y
`docs/superpowers/specs/2026-07-11-track3-inc2-escape-vectors-design.md` (inc 2).

## Suite 3: M-08 happy types (`make test-m08-types`)

**Total: 16** | `tests/compiler/types/test-NN-m08-*.nx` — happy paths del type checker
end-to-end (parse → semantic → codegen → run) sin `NYX_SKIP_SEMANTIC`.
Incluye test-46..58 (M-08 S1–B8) + test-208..210 (F2 monomorfización implícita).

## Suite 4: Advanced (`tests/advanced/`)

**Total: 30** (A01–A30) — stress tests y algoritmos complejos para capability assessment:
recursión profunda, structs anidados, HOFs, sorting, matrices, closures con estado,
linked lists, trait polymorphism, expression trees, state machines, integration stress.

## Suite 5: Stdlib (`make test-stdlib`)

**Total: 3** — std/math.nx, std/array.nx, integración (primes/sort/gcd/lcm/clamp).

## Suite 6: Runtime C unit (`make test-runtime`) — B4, nuevo 2026-06-10

**Total: 18 suites / 729 asserts** (+9 rwlock en test_thread.c 2026-07-21: readers comparten/writer excluye vía try*, NULL guards, serialización real 4 threads × 5000; +15 test_net 2026-07-21: cap de body HTTP `NYX_HTTP_MAX_BODY` + slot 6 de error del request (0 ok / 413 too-large, sin drenar el socket sobre el cap); +10 test_index_of_from en test_strings.c 2026-07-21: indexOf(needle, from) — offset absoluto, clamps de borde, needle vacío estilo JS, búsqueda tras NUL; +21 test_binary_safe en test_strings.c 2026-07-21: familia de búsqueda/comparación binary-safe por longitud — equals/compare/contains/index_of/starts_with/ends_with/split/replace con NUL embebido (contrato "strings=bytes" v0.14; antes strcmp/strstr cortaban en el primer NUL); +test_file_io.c nuevo 2026-07-20: fsync/fdatasync — 13 asserts (fd válido con datos escritos, fd inválido/-1/cerrado -> -1, ida vía `nyx_open_fd`); +14 tls_wait_readable_eof_after_nonblock_read, review final pre-push FIX 1: EOF real (close_notify tras el último frame) observado vía `tls_read_nonblock` marca `h->eof` → `tls_wait_readable` deja de reportar POLLIN para siempre y devuelve -1 DETERMINÍSTICO (antes: busy-spin, el fd queda "legible" por EOF sin cota); +31 tls_wait_readable: handle inválido, timeout sin data, data lista+read posterior, data+HUP en la misma vuelta de poll — regresión POLLIN-antes-que-POLLERR/HUP, buffer interno legible sin poll; +31 tls_read_nonblock: handle inválido, max_bytes<=0, sin data no bloquea, data lista + O_NONBLOCK restaurado, buffered sin tocar el socket, caveat NewSessionTicket real — wait_readable=1 + read_nonblock="" sin bloquear) | `tests/runtime-unit/` — harness header-only (test_webpush_crypto: cripto Web Push, 16 asserts, KAT RFC 5869 + McGrew GCM + round-trips ECDH/ECDSA)
`nyx_test.h`; ejercita el runtime C directamente (sin `nyx_bootstrap`).

| Fase | Suites | Cobertura |
|------|--------|-----------|
| 1 — puros | strings, arrays, maps, crypto, url, base64, random, msgpack | Vectores de valor conocido (FIPS/RFC) |
| 2 — I/O | websocket, http2, thread, process, net | accept_key RFC6455, HPACK, channels/mutex cross-thread, fork+exec+wait, parsers HTTP/RESP vía socketpair |
| 3 — frágiles | event_loop, scheduler, tls | fd readiness, 50 goroutines work-stealing, loopback TLS con cert X509 in-process |

Gotchas del toolchain documentados en el header del runner (`-iquote` vs `-I` por
`runtime/time.h`; `-D_DEFAULT_SOURCE`).

## Suite 7: Stacks extraídos (`make test-stacks`) — CANARIO del compilador

`scripts/testing/run_stack_tests.sh` corre las suites de los stacks locales
(SKIP limpio si no están clonados). Los tests de producto cazaron la
regresión de codegen v0.18 — este runner preserva ese early-warning tras
cambios de compiler/runtime/std.

| Stack | Target | Suite |
|-------|--------|-------|
| ~/nyx-db-stack | `make test-db` | 7 suites .nx (92 casos) + Python RESP2 con persistencia |
| ~/nyx-queue-stack | `make test-queue` | 17 tests Python RESP2 |
| ~/nyx-edit-stack | `make test-edit` | harness PTY 41 checks |
| ~/nyx-shell-stack | `make test-shell` | smoke 2 checks |
| ~/nyx-serve-stack | `make test-serve` | smoke HTTP 7 checks |
| ~/nyx-proxy-stack | `make test-proxy` | 3 suites .nx: cache (LRU/TTL/singleflight + integridad de bytes), metrics (histograms Prometheus), xff — movidas de tests/products/ en el split #7 (2026-07-06); el viejo `make test-product-units` se retiró |

(nyx-kv-stack se testea desde su propio repo — flujo TLS/daemon propio;
sus 41 tests viven en `~/nyx-kv-stack`. El viejo `make test-products` se
retiró con la extracción de db.)

## Suite 8: Integration E2E (`make test-integration`)

**Total: 10 serve+kv + WS proxy + HTTP/2 + FFI callback C→Nyx + std/llm stub** |
`tests/integration/test_serve_kv.py` — HTTP health, landing, 404, KV CRUD
directo, keep-alive (+1 test de CSS que se salta si el archivo no está).
Ports: KV=13380 (binario de `~/nyx-kv-stack`, override `NYX_KV_BIN`), SERVE=13000.
`tests/integration/test_ws_proxy.py` — WebSocket proxying (6 checks, fixture
ws_gateway; vendoriza la lib desde `~/nyx-proxy-stack`, override `NYX_PROXY_SRC`).
`tests/integration/test_http2.py` — frames HTTP/2 contra `examples/http2-server.nx`
en :13004 (movido de tests/products/ al absorber nyx-http2 al core, 2026-07-05;
modo lib `h2` o fallback raw-socket sin deps).
`tests/integration/test_ffi_callback.py` — callback C→Nyx (3 checks): compila
`ffi_callback/main.nx` con el bootstrap, linkea con `ffi_callback/toy_lib.c`
(stand-in de libllama) + runtime, corre y compara stdout. Prueba `c_fn_ptr` +
`string_from_cstr` end-to-end (escalar 42 / logging / streaming tok 0..2).
`tests/integration/test_llm_stub.py` — bindings llama.cpp contra stub (3 checks):
compila `libllama_stub.so` (firmas reales, eco determinista), corre `llm_stub/main.nx`
via std/llm — generate + streaming c_fn_ptr + `STUB_FREES model=1 ctx=1` (drop afín
exactamente 1 vez) + caso negativo sin .so (error limpio, no SEGV).

---

## Legacy (sin runner funcional)

- **`tests/compiler-unit/`** (4 files): el runner racket (`run_bootstrap_unit_tests.sh`,
  invocaba `racket main.rkt` — ya no existe) fue RETIRADO 2026-06-17 y `make test-unit`
  neutralizado. Los .nx son programas Nyx válidos (importan `compiler/lexer`, etc.) pero
  print-based — pendiente portarlos a un runner nyx_bootstrap con asserts (TASKS.md).
- **`tests/verify/`** (12 files): suite exhaustiva pre-v0.13 sin runner tras la
  reorganización. Programas Nyx válidos (sized types, bitwise, casts) — mismo destino
  que compiler-unit (portar a nyx_bootstrap, TASKS.md).

---

## Integrated Test Runner (`nyx test`)

Nyx incluye un test runner integrado (`compiler/test.nx`) para proyectos con bloques
`test "name" { ... }`:

```bash
nyx test my_test.nx           # un archivo
nyx test                      # descubre por nyx.toml
nyx test --filter "string" --verbose --timeout 60
```

Build: `make build-test`

---

## How to Run

```bash
make test                # regression (ARM64) — requerido antes de cada commit (conteo: tabla-resumen arriba)
make test-all            # todas las suites automatizadas (regression + advanced + stdlib
                         #   + errors + m08-types + runtime + ai-first)
make test-errors         # error paths parse + semantic (conteo: tabla-resumen arriba)
make test-m08-types      # 16 happy types
make test-stdlib         # 3 stdlib
make test-runtime        # 18 suites C / 729 asserts
make test-stacks         # suites de los stacks extraídos incl. proxy (canario del compilador)
make test-integration    # 10 E2E serve+kv (usa ~/nyx-serve-stack y ~/nyx-kv-stack)
```

## Adding New Tests

```bash
# Regression: crear en el subdirectorio temático y correr make test
cat > tests/compiler/ecosystem/test-211-my-feature.nx << 'EOF'
fn main() {
    print("expected output")
}
EOF
make test
```

- Error test: `tests/compiler/errors/test-m08-*.nx` + entrada en su runner.
- Product unit .nx (proxy): crear el archivo en `~/nyx-proxy-stack/tests/` y agregar su nombre a `TESTS` en `~/nyx-proxy-stack/scripts/run_unit_tests.sh`; el monorepo lo corre vía `make test-stacks`.
  Recordar: verificar con asserts + el runner detecta "ASSERTION FAILED".

## Notes

- **assert() no aborta** (runtime.c `nyx_assert_fail`): cualquier runner de tests .nx debe
  grepear "ASSERTION FAILED" en el output — el exit code solo no alcanza.
- **Strings**: `length()` = codepoints UTF-8; `substring()`/`indexOf()` = bytes. Para
  slicing usar `byte_length()` (ver Limitaciones en CLAUDE.md).
- **RUNTIME_SRCS**: todos los runners linkean el runtime completo de 23 archivos.
- **Support files**: `tests/support/mylib.nx`, `tests/support/vislib.nx` (test-65, test-81);
  `tests/test-modules/*.nx` — fixtures de tests cross-module (alias_demo, display_only_demo).
