#!/bin/bash

# Hacer los scripts ejecutables
chmod +x run_bootstrap_tests.sh
chmod +x run_single_test.sh

echo "✅ Scripts de prueba creados y configurados"
echo ""
echo "Scripts disponibles:"
echo "  ./run_bootstrap_tests.sh  - Ejecuta los 20 tests automáticamente"
echo "  ./run_single_test.sh N    - Ejecuta un test individual (N = 01-20)"
echo ""
echo "Ejemplos:"
echo "  ./run_single_test.sh 01"
echo "  ./run_single_test.sh 15"
echo ""
