#!/usr/bin/env bash
# ===== run_bootstrap_unit_tests.sh =====
# Ejecuta los tests unitarios de cada componente del compilador bootstrap.
# Uso: bash scripts/testing/run_bootstrap_unit_tests.sh
#
# Tests cubiertos:
#   - test-lexer.nx      → tokenizador
#   - test-parser.nx     → construcción de AST
#   - test-semantic.nx   → análisis semántico
#   - test-interpreter.nx → evaluación de programas

cd "$(dirname "$0")/../.." || exit 1

PASS=0
FAIL=0

for t in tests/bootstrap-unit/test-*.nx; do
    echo ""
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    echo "  ▶ $t"
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    if racket main.rkt "$t" 2>&1; then
        PASS=$((PASS + 1))
    else
        FAIL=$((FAIL + 1))
        echo "  ❌ FALLÓ: $t"
    fi
done

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "  RESULTADO BOOTSTRAP UNIT TESTS"
echo "  ✅ Pasaron: $PASS"
echo "  ❌ Fallaron: $FAIL"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
