#!/bin/bash

# ============================================
# NYX SINGLE TEST RUNNER
# ============================================
# Ejecuta un test individual de bootstrap

if [ $# -eq 0 ]; then
    echo "Uso: ./run_single_test.sh <numero_de_test>"
    echo ""
    echo "Ejemplo: ./run_single_test.sh 01"
    echo "         ./run_single_test.sh 15"
    echo ""
    echo "Tests disponibles:"
    ls tests/test-*.nx | sed 's/tests\/bootstrap\/test-/  /' | sed 's/.nx//'
    exit 1
fi

TEST_NUM=$(printf "%02d" $1)
TEST_FILE=$(ls tests/test-${TEST_NUM}-*.nx 2>/dev/null | head -1)

if [ -z "$TEST_FILE" ]; then
    echo "❌ No se encontró el test ${TEST_NUM}"
    echo ""
    echo "Tests disponibles:"
    ls tests/test-*.nx | sed 's/tests\/bootstrap\/test-/  /' | sed 's/.nx//'
    exit 1
fi

TEST_NAME=$(basename "$TEST_FILE" .nx)

echo "╔════════════════════════════════════════════════════════════╗"
echo "║  🧪 Ejecutando Test Individual                            ║"
echo "╚════════════════════════════════════════════════════════════╝"
echo ""
echo "Test: $TEST_NAME"
echo "Archivo: $TEST_FILE"
echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

# Ejecutar el test
racket main.rkt "$TEST_FILE"

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
