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
# test-parser/test-semantic/test-interpreter.nx: SIGUEN BLOQUEADOS por una
# limitación DISTINTA (ya catalogada, ver docs/SESSION_LOG.md "nested fns
# homónimas colisionan"): inlinear compiler/lexer + compiler/parser juntos
# en UN solo módulo IR produce "invalid redefinition of function 'peek'"
# — lexer.nx tiene un `fn peek()` anidado dentro de tokenize() y parser.nx
# tiene su PROPIO `fn peek()` anidado dentro de parse(); ambos se mangle-an
# al mismo símbolo LLVM de nivel módulo. Arreglarlo requiere una sesión
# dedicada en codegen.nx (mangle con el nombre de la función contenedora
# en las nested fns + fix en los call-sites). NO es el mismo bug que el de
# "struct Token duplicado" (ese SÍ se arregló acá, ver strip_duplicate_structs
# en nyx.nx — dedup textual de structs homónimos al inlinear módulos
# compiler/, alcance acotado a ese caso).
for t in test-parser test-semantic test-interpreter; do
    echo -e "${YELLOW}- compiler-unit/${t}: SKIP — nested fns homónimas (peek/advance/...) colisionan al inlinear lexer+parser; ver comentario arriba${NC}"
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

# test-types-unify.nx: Fase 1a — motor de unificación por-id (TyVar,
# subst_new/subst_resolve, occurs_check, unify_var, freshen_params) en
# compiler/types.nx. Infra ADITIVA, no cableada al pipeline existente —
# ver docs/superpowers/plans/2026-07-08-type-system-real-borrow-async.md.
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
# docs/superpowers/plans/2026-07-08-type-system-real-borrow-async.md.
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
