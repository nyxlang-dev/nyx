#!/bin/bash

# ============================================
# VERIFICACIÓN DE ENTORNO Y TEST RÁPIDO
# ============================================

echo "╔════════════════════════════════════════════════════════════╗"
echo "║  🔍 Verificación de Entorno Nyx                         ║"
echo "╚════════════════════════════════════════════════════════════╝"
echo ""

# Verificar Racket
echo -n "Racket: "
if command -v racket &> /dev/null; then
    RACKET_VERSION=$(racket --version | head -1)
    echo "✅ $RACKET_VERSION"
else
    echo "❌ NO INSTALADO"
    echo "   Instalar con: sudo apt-get install racket"
    exit 1
fi

# Verificar GCC
echo -n "GCC: "
if command -v gcc &> /dev/null; then
    GCC_VERSION=$(gcc --version | head -1)
    echo "✅ $GCC_VERSION"
else
    echo "❌ NO INSTALADO"
    exit 1
fi

# Verificar LLVM
echo -n "LLVM: "
if command -v llc &> /dev/null; then
    LLVM_VERSION=$(llc --version | grep "LLVM version" | head -1)
    echo "✅ $LLVM_VERSION"
else
    echo "⚠️  NO INSTALADO (necesario para compilación nativa)"
fi

# Verificar Boehm GC
echo -n "Boehm GC: "
if ldconfig -p 2>/dev/null | grep -q libgc; then
    echo "✅ INSTALADO"
else
    echo "❌ NO INSTALADO"
    echo "   Instalar con: sudo apt-get install libgc-dev"
    exit 1
fi

echo ""
echo "╔════════════════════════════════════════════════════════════╗"
echo "║  🧪 Test Rápido del Compilador                           ║"
echo "╚════════════════════════════════════════════════════════════╝"
echo ""

# Crear un test simple
cat > /tmp/nyx_quick_test.nx << 'EOF'
fn main() -> int {
    print("¡Nyx funciona!")
    let x = 42
    print(x)
    return 0
}
EOF

echo "Ejecutando test rápido..."
echo ""

if racket main.rkt /tmp/nyx_quick_test.nx 2>&1; then
    echo ""
    echo "✅ Test rápido PASÓ"
    echo ""
    echo "╔════════════════════════════════════════════════════════════╗"
    echo "║  ✅ Sistema listo para ejecutar tests                     ║"
    echo "╚════════════════════════════════════════════════════════════╝"
    echo ""
    echo "Siguiente paso:"
    echo "  ./run_bootstrap_tests.sh     - Ejecutar todos los tests"
    echo "  ./run_single_test.sh 01      - Ejecutar un test individual"
    echo ""
    exit 0
else
    echo ""
    echo "❌ Test rápido FALLÓ"
    echo ""
    echo "Revisar errores arriba"
    exit 1
fi
