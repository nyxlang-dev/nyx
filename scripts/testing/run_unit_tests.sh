#!/usr/bin/env bash
# ============================================================
# run_unit_tests.sh — tests/verify + tests/compiler-unit con nyx_bootstrap
# ------------------------------------------------------------
# Reemplaza al runner racket retirado (main.rkt ya no existe).
#   - tests/verify/test-verify-*.nx: cada uno imprime "TEST-VERIFY-NN: OK"
#     y sale 0 solo si sus checks internos pasan → se compara contra
#     tests/verify/expected/<name>.expected (una línea, grep exacto).
#     verify_lib.nx es un helper de módulo, NO un test (excluido por glob).
#   - tests/compiler-unit/test-*.nx: assert()-based (portados del formato
#     print-based); importan internals (compiler/lexer, etc.) y compilan
#     desde la raíz del repo (resolución local de imports).
#
# OJO: usa el script.nx compartido del root — SIEMPRE en serie, nunca en
# paralelo con make test / test-wasm.
# ============================================================
set -u
cd "$(dirname "$0")/../.." || exit 1
# Los compiler-unit compilan módulos del compilador con NYX_INLINE_COMPILER=1,
# así que pagan el mismo stack que seeds-check (ver scripts/lib_stack.sh).
. "$(dirname "$0")/../lib_stack.sh"; nyx_raise_stack

# Serializa contra otros runners: todos comparten script.nx/script.ll/
# script_bin en la raíz del repo (ver lib_testroot_lock.sh).
source scripts/testing/lib_testroot_lock.sh
nyx_testroot_lock_acquire

RED='\033[0;31m'; GREEN='\033[0;32m'; CYAN='\033[0;36m'; YELLOW='\033[0;33m'; NC='\033[0m'

PASS=0
FAIL=0
FAILED_TESTS=""

echo -e "${CYAN}=== Nyx unit tests (verify + compiler-unit) ===${NC}"

# ── tests/verify: expected-output + exit code ──
for t in tests/verify/test-verify-*.nx; do
    name=$(basename "$t" .nx)
    exp="tests/verify/expected/$name.expected"
    if [ ! -f "$exp" ]; then
        echo -e "${RED}x ${name}: sin .expected${NC}"
        FAIL=$((FAIL + 1)); FAILED_TESTS="$FAILED_TESTS $name"
        continue
    fi
    out=$(timeout 120 make run FILE="$t" 2>&1)
    rc=$?
    expline=$(head -1 "$exp")
    if [ "$rc" -eq 0 ] && printf '%s' "$out" | grep -qF "$expline"; then
        echo -e "${GREEN}ok ${name}${NC}"
        PASS=$((PASS + 1))
    else
        echo -e "${RED}x ${name}: exit=$rc / esperaba '${expline}'${NC}"
        printf '%s\n' "$out" | tail -5 | sed 's/^/    /'
        FAIL=$((FAIL + 1)); FAILED_TESTS="$FAILED_TESTS $name"
    fi
done

# ── tests/compiler-unit: reactivado parcialmente (P0, 2026-07-08) ──
# Causa raíz (ya arreglada): compiler/nyx.nx excluía DELIBERADAMENTE los
# imports "compiler/..." (is_user_import/is_module_import/resolve_source) —
# protege la auto-compilación del propio driver (build_bootstrap.sh compila
# cada módulo compiler/*.nx por separado y los linkea). NYX_INLINE_COMPILER=1
# (env-gated, path default byte-idéntico) desactiva esa exclusión SOLO para
# este programa, permitiendo inlinear e importar internals del compilador
# con inputs armados (unit-testing real en vez de solo end-to-end).
#
# test-lexer.nx: reactivado, assert()-based, corre solo — verde.
#
# test-parser/test-semantic/test-interpreter.nx: la colisión de "nested fns
# homónimas" (lexer.nx tenía un `fn peek()` anidado en tokenize() y parser.nx
# su PROPIO `fn peek()` en parse() → "invalid redefinition of function 'peek'"
# al inlinearse en un módulo) quedó RESUELTA (2026-07-23): codegen.nx manglea
# las nested como `<outer>__<inner>` (tokenize__peek / parse__peek) de punta a
# punta → `parse OK`, sin redefinición.
# SIGUEN SKIP por un blocker DISTINTO y preexistente (NO de nested fns): al
# inlinear lexer+parser+semantic el checker semántico no resuelve el named type
# `Token` — "unknown type 'Token'" en get_token_type/value/line y
# "expected Token, got char" en advance/expect. Follow-up separado en
# semantic.nx (registro de tipos de módulos compiler/ inlineados). El dedup de
# structs homónimos (strip_duplicate_structs en nyx.nx) ya corre, pero el
# checker no reconoce el struct resultante como el tipo `Token`.
for t in test-parser test-semantic test-interpreter; do
    echo -e "${YELLOW}- compiler-unit/${t}: SKIP — colisión de nested homónimas RESUELTA (mangle); bloqueo restante = tipo 'Token' sin resolver al inlinear lexer+parser+semantic (blocker distinto, ver comentario)${NC}"
done
name="compiler-unit/test-lexer"
out=$(NYX_INLINE_COMPILER=1 timeout 120 make run FILE="tests/compiler-unit/test-lexer.nx" 2>&1)
rc=$?
if [ "$rc" -eq 0 ] && printf '%s' "$out" | grep -qF "TEST-LEXER: OK"; then
    echo -e "${GREEN}ok ${name}${NC}"
    PASS=$((PASS + 1))
else
    echo -e "${RED}x ${name}: exit=$rc${NC}"
    printf '%s\n' "$out" | tail -5 | sed 's/^/    /'
    FAIL=$((FAIL + 1)); FAILED_TESTS="$FAILED_TESTS $name"
fi

# test-parser-declline.nx: arco nyx-test-cobertura (D-A, 2026-09-15). Fija que
# parse_function / parse_async_function (y las variantes #[...] fn, #[...] pub
# fn y safe fn) dejan ["__declline__", N] con la línea del `fn`, y que node[2]
# sigue en la `}`. Control negativo medido: con el parser anterior da
# "plano: __declline__ = -1".
# NYX_SKIP_SEMANTIC=1 SOLO para este programa de prueba: importa lexer+parser y
# choca con el bloqueo preexistente del checker descrito arriba (tipo 'Token'
# sin resolver al inlinearlos, el mismo que deja en SKIP a test-parser). Lo que
# se prueba es la forma del AST, no tipos; el compilador en sí sigue
# compilándose con el checker encendido.
name="compiler-unit/test-parser-declline"
out=$(NYX_INLINE_COMPILER=1 NYX_SKIP_SEMANTIC=1 timeout 300 make run FILE="tests/compiler-unit/test-parser-declline.nx" 2>&1)
rc=$?
if [ "$rc" -eq 0 ] && printf '%s' "$out" | grep -qF "TEST-PARSER-DECLLINE: OK"; then
    echo -e "${GREEN}ok ${name}${NC}"
    PASS=$((PASS + 1))
else
    echo -e "${RED}x ${name}: exit=$rc${NC}"
    printf '%s\n' "$out" | tail -5 | sed 's/^/    /'
    FAIL=$((FAIL + 1)); FAILED_TESTS="$FAILED_TESTS $name"
fi

# test-types-unify.nx: Fase 1a — motor de unificación por-id (TyVar,
# subst_new/subst_resolve, occurs_check, unify_var, freshen_params) en
# compiler/types.nx. Infra ADITIVA, no cableada al pipeline existente —
# ver docs/design/plans/2026-07-08-type-system-real-borrow-async.md.
# GOTCHA descubierto acá: el import multi-línea `import { a, b, ... }
# from "x"` partido en varias líneas NO resuelve — is_user_import/
# is_module_import (compiler/nyx.nx) escanean línea por línea buscando
# el patrón completo; el import de este test va en UNA sola línea.
# Sentinel check (no solo exit 0) para detectar link failures, no solo
# errores de IR.
name="compiler-unit/test-types-unify"
out=$(NYX_INLINE_COMPILER=1 timeout 120 make run FILE="tests/compiler-unit/test-types-unify.nx" 2>&1)
rc=$?
if [ "$rc" -eq 0 ] && printf '%s' "$out" | grep -qF "TEST-TYPES-UNIFY: OK"; then
    echo -e "${GREEN}ok ${name}${NC}"
    PASS=$((PASS + 1))
else
    echo -e "${RED}x ${name}: exit=$rc${NC}"
    printf '%s\n' "$out" | tail -5 | sed 's/^/    /'
    FAIL=$((FAIL + 1)); FAILED_TESTS="$FAILED_TESTS $name"
fi

# test-borrow-classify.nx: Fase 2 S2 — clasificación move/copy (is_copy_type),
# identificación de places (place_of) y el contenedor de estado threadeado
# (state_new/place_ensure/mark_moved/is_moved/revive/set_borrow/get_borrow/
# state_copy/state_join) en compiler/borrow.nx. Infra ADITIVA, NO cableada a
# bc_walk/borrow_check todavía (eso es S3) — ver
# docs/design/plans/2026-07-08-type-system-real-borrow-async.md.
# Mismo GOTCHA que test-types-unify: import en UNA sola línea.
name="compiler-unit/test-borrow-classify"
out=$(NYX_INLINE_COMPILER=1 timeout 120 make run FILE="tests/compiler-unit/test-borrow-classify.nx" 2>&1)
rc=$?
if [ "$rc" -eq 0 ] && printf '%s' "$out" | grep -qF "TEST-BORROW-CLASSIFY: OK"; then
    echo -e "${GREEN}ok ${name}${NC}"
    PASS=$((PASS + 1))
else
    echo -e "${RED}x ${name}: exit=$rc${NC}"
    printf '%s\n' "$out" | tail -5 | sed 's/^/    /'
    FAIL=$((FAIL + 1)); FAILED_TESTS="$FAILED_TESTS $name"
fi

# test-emit-bytes-global.nx: arco include-bytes, Task 1 — emisor lineal de
# globales de bytes (emit_bytes_global, compiler/codegen.nx, justo después
# de escape_string). Inlinea SOLO codegen.nx (~21K líneas, no importa nada —
# no pisa el bloqueo de tipo `Token` que afecta a combinar lexer+parser+
# semantic). timeout MUCHO más alto que los de arriba (600s, no 120s):
# medido en esta máquina compartida, el ciclo completo (lex+parse+check+gen
# de todo codegen.nx inlineado + clang) tarda ~5 min — codegen.nx es ~17x
# lexer.nx en líneas, así que no es la cuadrática bajo prueba, es el costo
# de inlinear un módulo grande. Verifica: 3 controles positivos contra
# escape_string como oráculo (256 valores×4 con NUL, dos globales en el
# mismo ctx sin estado cruzado, contenido vacío) + un umbral de 1 MiB en
# 2000 ms (medido ~54-67 ms, ~30x de margen — ver el comentario del test).
name="compiler-unit/test-emit-bytes-global"
out=$(NYX_INLINE_COMPILER=1 timeout 600 make run FILE="tests/compiler-unit/test-emit-bytes-global.nx" 2>&1)
rc=$?
if [ "$rc" -eq 0 ] && printf '%s' "$out" | grep -qF "TEST-EMIT-BYTES-GLOBAL: OK"; then
    echo -e "${GREEN}ok ${name}${NC}"
    PASS=$((PASS + 1))
else
    echo -e "${RED}x ${name}: exit=$rc${NC}"
    printf '%s\n' "$out" | tail -5 | sed 's/^/    /'
    FAIL=$((FAIL + 1)); FAILED_TESTS="$FAILED_TESTS $name"
fi


# ── tests/fmt: nyx fmt (compiler/fmt.nx) golden/property tests ──
# Runner propio (necesita levantar nyx_fmt + comparar/idempotencia/compile,
# no encaja en el patrón expected-output de arriba) — ver
# scripts/testing/run_fmt_tests.sh para el detalle.
if bash scripts/testing/run_fmt_tests.sh > /tmp/nyx_fmt_tests.log 2>&1; then
    # Los "ok <fixture>" del sub-runner van coloreados (escape ANSI antes de
    # "ok") — stripear antes de contar.
    fmt_pass=$(sed -E 's/\x1b\[[0-9;]*m//g' /tmp/nyx_fmt_tests.log | grep -c '^ok ')
    PASS=$((PASS + fmt_pass))
    echo -e "${GREEN}ok fmt (${fmt_pass} fixtures)${NC}"
else
    echo -e "${RED}x fmt: run_fmt_tests.sh falló${NC}"
    tail -20 /tmp/nyx_fmt_tests.log | sed 's/^/    /'
    FAIL=$((FAIL + 1)); FAILED_TESTS="$FAILED_TESTS fmt"
fi

echo ""
echo -e "${CYAN}=== unit tests ===${NC}"
echo -e "  Passed: ${GREEN}${PASS}${NC}  Failed: ${RED}${FAIL}${NC}"
if [ "$FAIL" -gt 0 ]; then
    echo -e "${RED}  Failed:${FAILED_TESTS}${NC}"
    exit 1
fi
echo -e "${GREEN}  All unit tests passed${NC}"
exit 0
