#!/usr/bin/env bash
# run_llvm_tests.sh — Suite de tests LLVM end-to-end para Nyx
# Compila cada test con --compile, ejecuta el binario y compara con .expected
# Uso: bash scripts/testing/run_llvm_tests.sh
set -e
cd "$(dirname "$0")/../.."

TESTS_DIR="tests/llvm"
PASS=0
FAIL=0
ERRORS=()

echo "╔══════════════════════════════════════════════════════╗"
echo "║       Nyx LLVM End-to-End Test Suite               ║"
echo "╚══════════════════════════════════════════════════════╝"
echo ""

for hx_file in "$TESTS_DIR"/test-*.nx; do
    test_name=$(basename "$hx_file" .nx)
    expected_file="$TESTS_DIR/$test_name.expected"
    exe_file="$TESTS_DIR/$test_name"

    # Skip if no .expected file
    if [ ! -f "$expected_file" ]; then
        echo "  ⚠️  $test_name — sin archivo .expected, saltando"
        continue
    fi

    printf "  %-35s" "$test_name"

    # 1. Compile
    compile_out=$(racket main.rkt --compile "$hx_file" 2>&1)
    if [ $? -ne 0 ] || [ ! -f "$exe_file" ]; then
        echo "FAIL (compile error)"
        ERRORS+=("$test_name: compile failed")
        FAIL=$((FAIL + 1))
        continue
    fi

    # 2. Run
    actual_out=$("$exe_file" 2>&1)
    expected_out=$(cat "$expected_file")

    # 3. Compare
    if [ "$actual_out" = "$expected_out" ]; then
        echo "PASS"
        PASS=$((PASS + 1))
    else
        echo "FAIL (output mismatch)"
        ERRORS+=("$test_name: expected:\n$(cat $expected_file)\n  got:\n$actual_out")
        FAIL=$((FAIL + 1))
    fi
done

echo ""
echo "──────────────────────────────────────────────────────"
echo "  Tests Ejecutados: $((PASS + FAIL))"
echo "  Tests Pasados:    $PASS"
echo "  Tests Fallidos:   $FAIL"
echo ""

if [ ${#ERRORS[@]} -gt 0 ]; then
    echo "Errores:"
    for err in "${ERRORS[@]}"; do
        printf "  ✗ %b\n" "$err"
    done
    echo ""
fi

if [ $FAIL -eq 0 ]; then
    echo "  🏆 TODOS LOS TESTS PASARON"
    exit 0
else
    echo "  ❌ ALGUNOS TESTS FALLARON"
    exit 1
fi
