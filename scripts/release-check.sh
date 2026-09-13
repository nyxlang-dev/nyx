#!/bin/bash
# scripts/release-check.sh — Verifica que VERSION coincida en los fallbacks
# hardcodeados del repo, para no depender de la memoria (docs/VERSIONING.md
# tenía una checklist manual que se pudrió: nombraba compiler/nyx.nx ×2 y
# README.md como sitios a bumpear, pero ambos ya leen VERSION dinámicamente
# desde B3 2026-07-25 — SONDA 2026-09-02 lo confirmó). Los únicos fallbacks
# hardcodeados REALES hoy son scripts/nyx (--version) y compiler/build.nx
# (toolchain_version()); scripts/build-release.sh dejó de hardcodear con
# este mismo cambio (ahora lee VERSION también).
#
# Uso:
#   bash scripts/release-check.sh            # modo release: exige "## [VERSION]" en CHANGELOG.md
#   bash scripts/release-check.sh --pre       # modo pre-release: exige un solo "[Unreleased]"
#   bash scripts/release-check.sh --selftest  # el checker se verifica a sí mismo (detecta drift)
set -u

ROOT="${RELEASE_CHECK_ROOT:-$(cd "$(dirname "$0")/.." && pwd)}"
MODE="${1:-}"

if [ "$MODE" = "--selftest" ]; then
    TMP=$(mktemp -d)
    trap 'rm -rf "$TMP"' EXIT
    mkdir -p "$TMP/scripts" "$TMP/compiler"
    echo "9.9.9" > "$TMP/VERSION"
    echo 'echo "nyx 9.9.9"' > "$TMP/scripts/nyx"
    echo 'return "9.9.9"' > "$TMP/compiler/build.nx"
    printf '## [Unreleased]\n' > "$TMP/CHANGELOG.md"
    if ! RELEASE_CHECK_ROOT="$TMP" bash "$0" --pre >/dev/null 2>&1; then
        echo "✗ selftest: el caso sano debería pasar" >&2
        exit 1
    fi
    echo 'echo "nyx 1.1.1"' > "$TMP/scripts/nyx"
    if RELEASE_CHECK_ROOT="$TMP" bash "$0" --pre >/dev/null 2>&1; then
        echo "✗ selftest: el drift en scripts/nyx no se detectó" >&2
        exit 1
    fi
    echo "✓ selftest: drift detectado correctamente"
    exit 0
fi

V=$(cat "$ROOT/VERSION")
FAIL=0

# grep -F (cadena literal): $V es un valor de archivo, no un patrón — con -E
# los puntos de "0.31.0" matchean CUALQUIER caracter (falso positivo posible
# contra p.ej. "0X31X0"). Fix round 1 de Task 6 (review del coordinador).
for f in scripts/nyx compiler/build.nx; do
    if ! grep -qF -- "$V" "$ROOT/$f" 2>/dev/null; then
        echo "✗ $f: esperaba $V" >&2
        FAIL=1
    fi
done

if [ "$MODE" = "--pre" ]; then
    N=$(grep -cF -- "[Unreleased]" "$ROOT/CHANGELOG.md" 2>/dev/null)
    N="${N:-0}"
    if [ "$N" != "1" ]; then
        echo "✗ CHANGELOG.md: esperaba exactamente un [Unreleased] (encontrados: $N)" >&2
        FAIL=1
    fi
else
    # Este sitio SÍ necesita regex (ancla ^ + literal "## [...]"), así que $V
    # se escapa para regex antes de interpolarlo (el único metacaracter que
    # puede traer un VERSION real es el punto de X.Y.Z).
    V_RE=$(printf '%s' "$V" | sed 's/[.[\*^$()+?{}|\\]/\\&/g')
    if ! grep -qE -- "^## \[$V_RE\]" "$ROOT/CHANGELOG.md" 2>/dev/null; then
        echo "✗ CHANGELOG.md: esperaba \"## [$V]\"" >&2
        FAIL=1
    fi
fi

# ── Seeds .ll trackeadas ────────────────────────────────────────────
# Las seeds compiler/*.ll son de las que construyen los instaladores externos
# (scripts/install.sh parte de ellas). Una seed stale es un fallo SILENCIOSO
# para quien clona el repo público: compila, corre, y reporta la versión vieja.
#
# Pasó de verdad: `make build-nyx-build` enlazaba directo desde script.ll y
# nunca copiaba a compiler/build.ll, así que la seed quedó en 0.22.10 mientras
# build.nx ya decía 0.31.0 (2026-09-09). El target se arregló; esta guarda
# existe para que la próxima vez se note acá y no en el instalador de alguien.
#
# Se busca el patrón de versión X.Y.Z en los literales de cada seed: si aparece
# una versión de toolchain que NO es la actual, la seed está vieja.
for seed in "$ROOT"/compiler/build.ll "$ROOT"/compiler/nyx.ll; do
    [ -f "$seed" ] || continue
    # Solo literales que parecen versión de toolchain (0.X.Y con X >= 1): el
    # 0.1.0 de un nyx.toml de ejemplo no es la versión del compilador.
    stale=$(grep -oE '"?0\.[0-9]{1,2}\.[0-9]+' "$seed" 2>/dev/null | tr -d '"' \
            | grep -vE "^0\.[0-9]\.[0-9]$" | sort -u | grep -vF "$V" | head -3)
    if [ -n "$stale" ]; then
        echo "✗ $(basename "$seed"): seed con versión distinta de VERSION ($V): $(printf '%s' "$stale" | tr '\n' ' ')" >&2
        echo "  regenerar con: make build-nyx-build (build.ll) / make recompile MODULE=nyx (nyx.ll)" >&2
        FAIL=1
    fi
done

if [ "$FAIL" = "1" ]; then
    exit 1
fi
echo "✓ VERSION ($V) coincide en todos los sitios (incluidas las seeds .ll)"

# Las semillas .ll tienen que describir al compilador ACTUAL, no a uno viejo.
# Acá y no en test-ai-first porque son NUEVE compilaciones del compilador; y acá
# sí, porque `scripts/install.sh` construye desde estas semillas en la máquina
# del usuario: publicarlas atrasadas le entrega un compilador distinto del que
# este repo probó. Medido el 2026-09-13: siete de las nueve estaban viejas, y los
# 40 cambios de código eran todos el slot-check de NYX2014 sin propagar.
#
# Se puede saltear con NYX_SKIP_SEEDS_CHECK=1 para una corrida rápida del resto
# —es lo más caro de este script—, pero saltearlo antes de publicar es
# exactamente lo que dejó las semillas atrasadas durante meses.
if [ "${NYX_SKIP_SEEDS_CHECK:-0}" = "1" ]; then
    echo "⚠️  seeds-check SALTEADO (NYX_SKIP_SEEDS_CHECK=1) — no publicar así"
else
    echo ""
    echo "— semillas del bootstrap —"
    if ! bash scripts/testing/run_seeds_check.sh; then
        exit 1
    fi
fi
exit 0
