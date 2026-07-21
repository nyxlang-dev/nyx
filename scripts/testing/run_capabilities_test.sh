#!/bin/bash
# run_capabilities_test.sh — verifica que `nyx capabilities` genera un
# CAPABILITIES.md consistente con la stdlib: cada `pub fn`/`export fn` de
# std/*.nx debe aparecer en el índice. Falla si falta alguna.
set -u
cd "$(dirname "$0")/../.." || exit 1

NYX_BUILD="./nyx_build"
if [ ! -x "$NYX_BUILD" ]; then
    echo "⚠️  nyx_build no existe — corré 'make build-nyx-build' primero"; exit 1
fi

OUT="$(mktemp /tmp/nyx_caps.XXXXXX.md)"
trap 'rm -f "$OUT" /tmp/caps_real.$$ /tmp/caps_idx.$$' EXIT

NYX_HOME="$(pwd)" "$NYX_BUILD" capabilities "$OUT" >/dev/null 2>&1 || { echo "❌ nyx capabilities falló"; exit 1; }

# Nombres de pub/export fn reales vs los del índice
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
echo "✅ CAPABILITIES.md consistente: $REAL_N/$IDX_N funciones públicas de la stdlib presentes"
exit 0
