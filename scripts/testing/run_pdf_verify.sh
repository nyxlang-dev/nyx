#!/usr/bin/env bash
# run_pdf_verify.sh — verificación EXTERNA de std/pdf (spec std-pdf, D-6 terciario).
#
# Arma con Nyx los PDF de tests/fixtures/pdf/verify-gen.nx y los pasa por
# scripts/testing/pdf_verify.py: pypdf en modo estricto (con sus avisos de
# «reparé algo» contados como falla), pdfminer.six (texto extraído idéntico y
# bordes derechos), pdfium (el motor de PDF de Chrome: texto, bordes y un
# render comparado contra Pillow en cada imagen).
#
# NO es parte de make test: esas herramientas no están en todas las máquinas
# del repo. SKIP limpio (exit 0) si no hay un python con pypdf, pdfminer,
# pypdfium2 y Pillow. El python se elige con NYX_PDF_VERIFY_PY (un venv, p. ej.
# `python3 -m venv /tmp/pdfv && /tmp/pdfv/bin/pip install pypdf pdfminer.six
# pypdfium2 pillow`); sin la variable se prueba el python3 del sistema.
#
# Uso: bash scripts/testing/run_pdf_verify.sh [--render DIR]
#   --render DIR  deja además un PNG por página en DIR, para mirarlo.
#
# Compila en un directorio temporal propio (NYX_SRC), sin tocar el script.nx
# compartido de la raíz: no necesita el candado de los runners.
set -u
cd "$(dirname "$0")/../.."
ROOT="$PWD"

PY="${NYX_PDF_VERIFY_PY:-python3}"
if ! "$PY" -c "import pypdf, pdfminer, pypdfium2, PIL" > /dev/null 2>&1; then
    echo "SKIP: $PY no tiene pypdf + pdfminer.six + pypdfium2 + pillow (NYX_PDF_VERIFY_PY apunta a un venv que los tenga)"
    exit 0
fi
if [ ! -x ./nyx_bootstrap ]; then
    echo "error: falta ./nyx_bootstrap (make bootstrap)"
    exit 1
fi

TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT
OUT="$TMP/out"
mkdir -p "$OUT"
cp tests/fixtures/pdf/verify-gen.nx "$TMP/gen.nx"

RT="$(ls runtime/*.c | tr '\n' ' ')runtime/os/os_posix.c"
LIBS="-lgc -lpthread -ldl -lm -lssl -lcrypto -lz"
if ! NYX_SRC="$TMP/gen.nx" NYX_PROJECT_DIR="$ROOT" ./nyx_bootstrap > "$TMP/compile.log" 2>&1; then
    echo "FALLA: verify-gen.nx no compila"
    grep -iE "error|NYX[0-9]" "$TMP/compile.log" | head -5
    exit 1
fi
if ! clang -O1 -w "$TMP/gen.ll" $RT $LIBS -o "$TMP/gen" > "$TMP/link.log" 2>&1; then
    echo "FALLA: verify-gen.nx no enlaza"
    head -5 "$TMP/link.log"
    exit 1
fi
if ! PDF_VERIFY_OUT="$OUT" "$TMP/gen"; then
    echo "FALLA: verify-gen.nx no generó los PDF"
    exit 1
fi

# La receta de la factura, tal cual la ve un usuario, con lo que tiene que
# dejar en el PDF en tests/fixtures/pdf/factura.expect.
cp examples/by-example/118-pdf-invoice.nx "$TMP/factura.nx"
if ! NYX_SRC="$TMP/factura.nx" NYX_PROJECT_DIR="$ROOT" ./nyx_bootstrap > "$TMP/compile-f.log" 2>&1 \
   || ! clang -O1 -w "$TMP/factura.ll" $RT $LIBS -o "$TMP/factura" > "$TMP/link-f.log" 2>&1 \
   || ! "$TMP/factura" "$OUT/factura.pdf" > /dev/null; then
    echo "FALLA: la receta 118-pdf-invoice no compiló o no escribió su PDF"
    exit 1
fi
cp tests/fixtures/pdf/factura.expect "$OUT/factura.expect"

ARGS=("$OUT")
if [ "${1:-}" = "--render" ] && [ -n "${2:-}" ]; then
    mkdir -p "$2"
    ARGS+=(--render "$2")
fi
"$PY" scripts/testing/pdf_verify.py "${ARGS[@]}"
