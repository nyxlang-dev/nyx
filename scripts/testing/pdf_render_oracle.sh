#!/usr/bin/env bash
# pdf_render_oracle.sh — std/pdf_render contra poppler (pdftoppm) sobre el corpus
# sintético (arco pdf-a-imagen). Es la verificación que respalda las huellas de
# tests/compiler/stdlib-suite/test-503-pdf-render.nx: si una huella cambia, se
# corre esto ANTES de actualizarla.
#
# No va dentro de `make test`: necesita poppler-utils, que el CI no garantiza.
# Sin pdftoppm hace SKIP limpio (exit 0).
#
# Uso: bash scripts/testing/pdf_render_oracle.sh [PPP] [DIR_PNG]
#   DIR_PNG (opcional): deja ahí un PNG por PDF (nyx | poppler | diferencia).
# Umbral: PSNR >= 20 dB y < 5 % de píxeles muy distintos en cada PDF.
set -u
cd "$(dirname "$0")/../.."
command -v pdftoppm >/dev/null || { echo "  SKIP pdf_render_oracle: falta pdftoppm (poppler-utils)"; exit 0; }
DPI="${1:-72}"
PNG="${2:-}"
T=$(mktemp -d)
trap 'rm -rf "$T"' EXIT
python3 -I tests/pdf-corpus/gen_corpus.py "$T/corpus" >/dev/null || exit 1
mkdir -p "$T/proj/src" "$T/nyx" "$T/pop"
printf '[package]\nname = "render_ppm"\nversion = "0.1.0"\n' > "$T/proj/nyx.toml"
cp tests/pdf-corpus/render_ppm.nx "$T/proj/src/main.nx"
( cd "$T/proj" && NYX_HOME="$OLDPWD" nyx build --release >/dev/null 2>&1 ) || { echo "  ✗ no compila render_ppm"; exit 1; }
"$T/proj/render_ppm" "$DPI" "$T/nyx" "$T"/corpus/*.pdf || { echo "  ✗ std/pdf_render falló en algún PDF"; exit 1; }
fallas=0
for f in "$T"/corpus/*.pdf; do
    b=$(basename "$f" .pdf)
    pdftoppm -cropbox -r "$DPI" -f 1 -l 1 -singlefile "$f" "$T/pop/$b" 2>/dev/null
    extra=""
    [ -n "$PNG" ] && { mkdir -p "$PNG"; extra="$PNG/$b.png"; }
    r=$(python3 -I tests/pdf-corpus/compare_ppm.py "$T/nyx/$b.ppm" "$T/pop/$b.ppm" $extra)
    psnr=$(echo "$r" | sed -n 's/.*PSNR \([0-9.]*\) dB.*/\1/p')
    pct=$(echo "$r" | sed -n 's/.*distintos \([0-9.]*\)%.*/\1/p')
    if python3 -c "import sys; sys.exit(0 if float('$psnr') >= 20 and float('$pct') < 5 else 1)"; then
        echo "  ✓ $b: $r"
    else
        echo "  ✗ $b: $r"
        fallas=$((fallas + 1))
    fi
done
[ "$fallas" -eq 0 ] && echo "  pdf_render_oracle: PASS" || { echo "  pdf_render_oracle: $fallas fuera de umbral"; exit 1; }
