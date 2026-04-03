#!/bin/bash

echo "════════════════════════════════════════════════════════════"
echo "  🧬 NYX - Iniciando Suite de Tests de Bootstrap"
echo "════════════════════════════════════════════════════════════"
echo ""
echo "Paso 1: Haciendo scripts ejecutables..."

cd "$(dirname "$0")/.." 
chmod +x verify_environment.sh 2>/dev/null
chmod +x run_bootstrap_tests.sh 2>/dev/null
chmod +x run_single_test.sh 2>/dev/null
chmod +x setup_tests.sh 2>/dev/null
chmod +x start_tests.sh 2>/dev/null

echo "✅ Scripts configurados"
echo ""
echo "Paso 2: Verificando entorno..."
echo ""

# Verificar Racket
if ! command -v racket &> /dev/null; then
    echo "❌ ERROR: Racket no está instalado"
    echo "   Instalar con: sudo apt-get install racket"
    exit 1
fi

echo "✅ Racket encontrado: $(racket --version | head -1)"

# Verificar que main.rkt existe
if [ ! -f "main.rkt" ]; then
    echo "❌ ERROR: No se encuentra main.rkt"
    exit 1
fi

echo "✅ main.rkt encontrado"

# Verificar directorio de tests
if [ ! -d "tests/bootstrap" ]; then
    echo "❌ ERROR: No se encuentra tests/"
    exit 1
fi

# Contar tests disponibles
TEST_COUNT=$(ls tests/test-*.nx 2>/dev/null | wc -l)
echo "✅ $TEST_COUNT tests encontrados en tests/"
echo ""

echo "════════════════════════════════════════════════════════════"
echo "  🧪 Ejecutando Test de Prueba"
echo "════════════════════════════════════════════════════════════"
echo ""
echo "Ejecutando: test-01-primitives.nx"
echo ""

# Ejecutar el primer test
racket main.rkt tests/test-01-primitives.nx

EXIT_CODE=$?

echo ""
echo "════════════════════════════════════════════════════════════"

if [ $EXIT_CODE -eq 0 ]; then
    echo "  ✅ Test de Prueba EXITOSO"
    echo "════════════════════════════════════════════════════════════"
    echo ""
    echo "🎯 Sistema listo para ejecutar tests completos"
    echo ""
    echo "Comandos disponibles:"
    echo "  ./run_bootstrap_tests.sh     Ejecutar los 20 tests"
    echo "  ./run_single_test.sh N       Ejecutar test individual (01-20)"
    echo ""
    echo "Ejemplo:"
    echo "  ./run_single_test.sh 09      # Ejecutar test de factorial"
    echo ""
else
    echo "  ❌ Test de Prueba FALLÓ"
    echo "════════════════════════════════════════════════════════════"
    echo ""
    echo "Revisar los errores arriba para diagnosticar el problema"
    echo ""
fi

exit $EXIT_CODE
