#!/usr/bin/env bash
# gen_builtins_index.sh — genera std/builtins.index, el catálogo de los BUILTINS
# GLOBALES (los que no necesitan `import`).
#
# POR QUÉ EXISTE (fricción de nyxerp, 2026-09-11 y 12)
#
# `CAPABILITIES.md` —el índice que `AGENTS.md` le dice a un agente que consulte
# para saber QUÉ EXISTE— se genera escaneando `std/*.nx`. Los builtins globales
# no viven ahí: los declara el compilador. Resultado medido: los 191 builtins
# estaban AUSENTES del índice, entre ellos toda la criptografía
# (`sha256`, `hmac_sha256`, `pbkdf2_hmac_sha256`, `constant_time_eq`).
#
# El costo no fue teórico. Un equipo pidió una KDF de contraseñas, la KDF ya
# existía, no la encontraron, y estuvieron a punto de escribir PBKDF2 a mano
# sobre `hmac_sha256` —con un ADR planificado para justificarlo—. Sus palabras:
# «una primitiva criptográfica que existe y no se puede encontrar es, en la
# práctica, una primitiva que no existe: quien la necesita termina escribiendo
# la suya».
#
# FUENTE DE VERDAD: las llamadas `scope_declare_fn("<nombre>", "builtin", <aridad>)`
# de compiler/semantic.nx. Es lo que el CHECKER conoce, que es exactamente el
# conjunto que un programa puede llamar sin import.
#
# Las descripciones y la categoría salen de LLM.md §4, que ya está curada y
# categorizada. Un builtin sin entrada ahí sale igual —con su aridad y sin
# descripción— porque el índice responde «¿existe?» antes que «¿cómo se usa?»,
# y omitirlo reproduciría el bug que este archivo existe para cerrar.
#
# USO
#   bash scripts/gen_builtins_index.sh           # regenera std/builtins.index
#   bash scripts/gen_builtins_index.sh --check   # falla si el commiteado está stale
set -u
cd "$(dirname "$0")/.."

OUT="std/builtins.index"
MODE="generate"
case "${1:-}" in
    --check) MODE="check" ;;
    "") ;;
    *) echo "gen_builtins_index: opción desconocida: $1" >&2; exit 2 ;;
esac

[ -f compiler/semantic.nx ] || { echo "  ✗ gen_builtins_index: falta compiler/semantic.nx" >&2; exit 1; }
[ -f LLM.md ] || { echo "  ✗ gen_builtins_index: falta LLM.md" >&2; exit 1; }

TMP="$(mktemp)"
trap 'rm -f "$TMP"' EXIT

python3 scripts/gen_builtins_index.py > "$TMP" || exit 1

# Guarda de cordura: un generador que escribe basura sin quejarse es peor que
# no tenerlo. El umbral es holgado a propósito (hoy son ~191): protege del
# caso «la extracción devolvió nada», no fija un número que envejezca.
N=$(grep -c '^builtin\b' "$TMP" || true)
if [ "${N:-0}" -lt 100 ]; then
    echo "  ✗ gen_builtins_index: solo $N builtins extraídos — ¿cambió la forma de scope_declare_fn?" >&2
    exit 1
fi

if [ "$MODE" = "check" ]; then
    if ! diff -q "$TMP" "$OUT" >/dev/null 2>&1; then
        echo "  ✗ $OUT está STALE — regenerar con: bash scripts/gen_builtins_index.sh" >&2
        diff "$OUT" "$TMP" 2>/dev/null | head -10 | sed 's/^/      /' >&2
        exit 1
    fi
    echo "  ✓ $OUT al día ($N builtins)"
    exit 0
fi

cp "$TMP" "$OUT"
echo "  ✓ $OUT generado ($N builtins)"
