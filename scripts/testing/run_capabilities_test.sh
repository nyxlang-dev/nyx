#!/bin/bash
# run_capabilities_test.sh — verifica que `nyx capabilities` genera un
# CAPABILITIES.md consistente con la stdlib: cada `pub fn`/`export fn` de
# std/*.nx debe aparecer en el índice, Y con su firma COMPLETA (no solo el
# nombre). Falla si falta alguna función o si una firma quedó truncada.
#
# Contexto (campaña "Primer intento verde", F5 task 11): el extractor de
# compiler/build.nx cortaba la firma en el primer '{' de la MISMA línea —
# una firma cuyos params se parten en varias líneas (std/proptest.nx::prop_int,
# std/webpush.nx::webpush_encrypt_with_keys) quedaba TRUNCADA a medio parámetro.
# El chequeo viejo (solo nombres) no lo cazaba. Este script ahora valida firmas.
set -u
cd "$(dirname "$0")/../.." || exit 1

NYX_BUILD="./nyx_build"
if [ ! -x "$NYX_BUILD" ]; then
    # Se salta limpio (exit 0), no falla: nyx_build es un artefacto SECUNDARIO
    # (make bootstrap no lo construye) y test-ai-first no lo exige para sus
    # otros checks — mismo criterio que clang-link-failure-attribution-ir-bug
    # en run_silent_failure_checks.sh (Fase 4 Task 10).
    echo "⚠️  nyx_build no existe — corré 'make build-nyx-build' primero (se salta este check)"
    exit 0
fi

# --- Chequeo de frescura (barato: solo mtime) ---
# Este script corre el nyx_build del REPO (./nyx_build), no el instalado en
# ~/.nyx — si compiler/build.nx (fuente del extractor de firmas) es MÁS NUEVO
# que el binario, el binario es un build STALE: puede fallar de formas
# confusas (ej. el gotcha catalogado de atribución de fallos de link) en vez
# de decir claramente "reconstruime". make bootstrap NO reconstruye
# nyx_build (gotcha del repo) — el olvido es fácil, así que lo diagnosticamos
# acá en vez de dejar que el resto del script falle con un diff críptico.
if [ "compiler/build.nx" -nt "$NYX_BUILD" ]; then
    echo "❌ nyx_build está STALE: compiler/build.nx es más nuevo que el binario."
    echo "   Corré 'make build-nyx-build' y reintentá (make bootstrap NO lo reconstruye)."
    exit 1
fi

OUT="$(mktemp /tmp/nyx_caps.XXXXXX.md)"
trap 'rm -f "$OUT" /tmp/caps_real.$$ /tmp/caps_idx.$$' EXIT

NYX_HOME="$(pwd)" "$NYX_BUILD" capabilities "$OUT" >/dev/null 2>&1 || { echo "❌ nyx capabilities falló"; exit 1; }

# --- (a) Nombres de pub/export fn reales vs los del índice ---
grep -hoE "^[[:space:]]*(pub|export) fn [a-zA-Z_][a-zA-Z0-9_]*" std/*.nx | sed -E 's/.*fn //' | sort -u > "/tmp/caps_real.$$"
grep -oE '`(pub|export) fn [a-zA-Z_][a-zA-Z0-9_]*' "$OUT" | sed -E 's/.*fn //' | sort -u > "/tmp/caps_idx.$$"

MISSING="$(comm -23 "/tmp/caps_real.$$" "/tmp/caps_idx.$$")"
REAL_N=$(wc -l < "/tmp/caps_real.$$")
IDX_N=$(wc -l < "/tmp/caps_idx.$$")

if [ -n "$MISSING" ]; then
    echo "❌ pub fn de la stdlib que faltan en CAPABILITIES.md:"
    echo "$MISSING"
    exit 1
fi

# --- (b) Balance de paréntesis en cada firma extraída ---
# Una firma cortada a media línea (bug del extractor multi-línea) deja un '('
# sin su ')' — lo cazamos contando ambos por firma. Sin pipefail+grep -q:
# awk hace el conteo y decide, el resultado se captura por command substitution.
UNBALANCED="$(awk -F'`' '
  /^- `(pub|export) fn / {
    sig = $2
    o = gsub(/\(/, "(", sig)
    c = gsub(/\)/, ")", sig)
    if (o != c) print $2
  }
' "$OUT")"

if [ -n "$UNBALANCED" ]; then
    echo "❌ firmas con paréntesis sin balancear en CAPABILITIES.md (corte multi-línea):"
    echo "$UNBALANCED"
    exit 1
fi

# --- (c) Spot-check de firmas multi-línea conocidas contra el texto completo
# esperado (no solo "balanceado" — el texto real, palabra por palabra). Si el
# extractor volviera a truncar, (b) ya fallaría, pero esto además confirma que
# el join no perdió/rearmó mal ningún parámetro. Si alguna de estas 3 fns
# cambia de firma en su .nx fuente, actualizar el string esperado acá.
EXPECTED_1='pub fn prop_int(property: Fn(int) -> bool, min: int, max: int, num_runs: int ) -> Array'
EXPECTED_2='pub fn prop_int2(property: Fn(int, int) -> bool, min: int, max: int, num_runs: int ) -> Array'
EXPECTED_3='pub fn webpush_encrypt_with_keys(payload: String, client_p256dh: String, auth: String, salt: String, as_priv: String, as_pub: String) -> String'

for EXPECTED in "$EXPECTED_1" "$EXPECTED_2" "$EXPECTED_3"; do
    if ! grep -F -- "$EXPECTED" "$OUT" >/dev/null; then
        echo "❌ firma multi-línea esperada no encontrada completa en CAPABILITIES.md:"
        echo "   $EXPECTED"
        exit 1
    fi
done

echo "✅ CAPABILITIES.md consistente: $REAL_N/$IDX_N funciones públicas de la stdlib presentes, firmas balanceadas, spot-check multi-línea ok"
exit 0
