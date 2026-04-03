#!/bin/bash

# Script para ejecutar tests uno por uno y capturar resultados
# Este script ejecuta los tests secuencialmente

cd "$(dirname "$0")/.." 

echo "╔════════════════════════════════════════════════════════════╗"
echo "║     🧬 NYX BOOTSTRAP TEST SUITE - Ejecución Manual     ║"
echo "╚════════════════════════════════════════════════════════════╝"
echo ""

# Ejecutar cada test
for i in {01..20}; do
    TEST_FILE=$(ls tests/test-${i}-*.nx 2>/dev/null | head -1)
    
    if [ -f "$TEST_FILE" ]; then
        TEST_NAME=$(basename "$TEST_FILE" .nx)
        echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
        echo "🧪 Test #${i}: ${TEST_NAME}"
        echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
        echo ""
        echo "Ejecutando: racket main.rkt $TEST_FILE"
        echo ""
        
        # Ejecutar y mostrar resultado
        racket main.rkt "$TEST_FILE"
        
        if [ $? -eq 0 ]; then
            echo ""
            echo "✅ Test #${i} PASÓ"
        else
            echo ""
            echo "❌ Test #${i} FALLÓ"
        fi
        
        echo ""
        echo ""
        
        # Pausa para poder ver cada resultado
        # read -p "Presiona Enter para continuar al siguiente test..."
    fi
done

echo "╔════════════════════════════════════════════════════════════╗"
echo "║              📊 Ejecución Completada                      ║"
echo "╚════════════════════════════════════════════════════════════╝"
