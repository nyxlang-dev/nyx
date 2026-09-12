#!/usr/bin/env bash
# gen_prelude.sh — genera std/prelude.nx en vez de mantenerlo a mano.
#
# POR QUÉ EXISTE
# `compiler/resolve.nx::resolve_source` concatena std/prelude.nx al fuente de
# TODO programa de usuario y acto seguido pre-registra std/io, std/math,
# std/array, std/file y std/map como YA importados. Consecuencia: un
# `import "std/array"` no vuelve a inlinear el módulo — el usuario ejecuta
# siempre la copia del prelude, nunca el archivo. Mientras el prelude fue una
# copia A MANO, una función nueva en std/array.nx era INVISIBLE hasta que
# alguien se acordaba de copiarla (y nadie avisaba si no lo hacía).
# Con este generador el prelude deja de ser una copia y pasa a ser un
# artefacto derivado: se edita el módulo std/ y se regenera.
#
# QUÉ PRODUCE
#   banner de "archivo generado"
#   + std/io.nx + std/math.nx + std/array.nx + std/file.nx + std/map.nx
#     (verbatim, en el orden que ya tenía el prelude, separados por una línea
#      en blanco)
#   + scripts/prelude_core.nx.in  (el core del lenguaje, escrito a mano)
#
# El CORE va al final, no al principio, porque es el orden que ya tenía el
# prelude commiteado y no hay razón para moverlo (las declaraciones de tipo
# no dependen del orden textual, pero un reordenamiento gratuito es riesgo
# gratuito).
#
# USO
#   bash scripts/gen_prelude.sh            # regenera std/prelude.nx
#   bash scripts/gen_prelude.sh --check    # falla si el commiteado está stale
#   bash scripts/gen_prelude.sh -o FILE    # escribe en otro lado (debug)
#
# set -u sin pipefail (regla del repo: `grep -q` sobre un pipe ya mordió acá
# con rc=141 por SIGPIPE).
set -u
cd "$(dirname "$0")/.."

OUT="std/prelude.nx"
CORE="scripts/prelude_core.nx.in"

# El orden es el que ya tenía el prelude commiteado. NO es libre: tiene que
# cubrir exactamente los `imported.insert("std/...")` de compiler/resolve.nx
# (se verifica más abajo), porque un módulo pre-registrado que no esté en el
# prelude simplemente NO EXISTE para el programa del usuario.
MODULES="io math array file map error"

MODE="generate"
while [ $# -gt 0 ]; do
    case "$1" in
        --check) MODE="check" ;;
        -o|--output) shift; OUT="${1:-}" ;;
        -h|--help) sed -n '2,30p' "$0"; exit 0 ;;
        *) echo "gen_prelude: opción desconocida: $1" >&2; exit 2 ;;
    esac
    shift
done

die() { echo "  ✗ gen_prelude: $*" >&2; exit 1; }

# --- Guardas de entrada -----------------------------------------------------
# Un generador que escribe basura sin quejarse es peor que no tenerlo: si el
# core se perdiera y el generador emitiera igual, el prelude quedaría sin
# Option/Result/traits y NADA compilaría.
[ -f "$CORE" ] || die "falta $CORE — es el core del lenguaje, no se puede regenerar concatenando (recuperarlo de git: git checkout $CORE)"

# Las 13 declaraciones core, verificadas por nombre. Misma lista que
# PRELUDE_CORE_ONLY en scripts/testing/run_prelude_divergence.sh: si un día
# se agrega una 14ª, hay que tocar las dos (el gate lo caza como
# "SOBRA EN EL PRELUDE").
CORE_DECLS="enum:Option enum:Result trait:Add trait:Sub trait:Mul trait:Div \
trait:Rem trait:Neg trait:PartialEq trait:PartialOrd trait:Clone trait:Debug \
trait:Copy"
for d in $CORE_DECLS; do
    kind="${d%%:*}"; name="${d#*:}"
    if ! grep -qE "^(pub |export )?$kind $name[<[:space:]{]" "$CORE"; then
        die "$CORE no declara \`$kind $name\` — el core está incompleto y el prelude generado no compilaría nada"
    fi
done

for m in $MODULES; do
    [ -f "std/$m.nx" ] || die "falta std/$m.nx (módulo del prelude)"
done

# --- La lista de módulos contra la de resolve.nx ----------------------------
# Si alguien pre-registra un 6º módulo en resolve.nx y no lo suma acá, el
# prelude generado no lo incluiría y ese módulo dejaría de existir para los
# programas de usuario, en silencio. Se descartan los comentarios antes de
# grepear: resolve.nx cita `imported.insert("std/math", 1)` como texto.
RESOLVE_MODS=$(grep -v '^[[:space:]]*//' compiler/resolve.nx \
    | grep -oE 'imported\.insert\("std/[a-z_]+"' \
    | sed 's/.*"std\///; s/"//' | grep -v '^prelude$' | LC_ALL=C sort -u | tr '\n' ' ')
GEN_MODS=$(printf '%s\n' $MODULES | LC_ALL=C sort | tr '\n' ' ')
if [ "$RESOLVE_MODS" != "$GEN_MODS" ]; then
    die "la lista de módulos del prelude cambió en compiler/resolve.nx
      resolve.nx pre-registra: $RESOLVE_MODS
      este generador emite:    $GEN_MODS
    (actualizar MODULES en scripts/gen_prelude.sh y en scripts/testing/run_prelude_divergence.sh)"
fi

# --- Generación -------------------------------------------------------------
TMP="$(mktemp)"
trap 'rm -f "$TMP"' EXIT

{
    echo "// ⚠ ARCHIVO GENERADO — NO EDITAR A MANO."
    echo "// Regenerar con:  bash scripts/gen_prelude.sh   (verificar: --check)"
    echo "// Fuentes, en este orden: std/{io,math,array,file,map}.nx + scripts/prelude_core.nx.in"
    echo "// Para agregar algo al prelude se edita el MÓDULO std/ que corresponda"
    echo "// (o el core, si no pertenece a ninguno) y se regenera. Un edit directo"
    echo "// acá lo borra la próxima regeneración, y \`make test-ai-first\` lo caza antes."
    echo ""
    for m in $MODULES; do
        cat "std/$m.nx"
        echo ""
    done
    cat "$CORE"
} > "$TMP"

if [ "$MODE" = "check" ]; then
    if [ ! -f "$OUT" ]; then
        echo "  ✗ falta $OUT (regenerar: bash scripts/gen_prelude.sh)"
        exit 1
    fi
    if diff -q "$OUT" "$TMP" > /dev/null 2>&1; then
        echo "  ✓ $OUT al día con sus fuentes (generado por scripts/gen_prelude.sh)"
        exit 0
    fi
    echo "  ✗ $OUT NO coincide con lo que genera scripts/gen_prelude.sh"
    echo "      (el prelude tapa a los módulos en TODO programa de usuario: mientras"
    echo "       esté stale, lo que se agregó a un std/*.nx no existe para nadie)"
    echo "      arreglo: bash scripts/gen_prelude.sh && git add $OUT"
    diff -u --label "$OUT (commiteado)" "$OUT" --label "generado ahora" "$TMP" \
        | sed -n '3,60p' | sed 's/^/        /'
    exit 1
fi

# Escritura idempotente: si el contenido no cambió NO se reescribe el archivo
# (no se pisa a un lector concurrente ni se dispara un rebuild por contenido),
# solo se le actualiza el mtime para que la regla de make se dé por satisfecha
# y no vuelva a correr en cada build — típico tras un clone, donde los mtimes
# salen en cualquier orden.
if [ -f "$OUT" ] && diff -q "$OUT" "$TMP" > /dev/null 2>&1; then
    touch "$OUT"
    exit 0
fi
# `cat >` y no `cp` a propósito: cp le copiaría al destino el modo 600 del
# mktemp y el prelude quedaría ilegible para otros usuarios (git solo trackea
# el bit de ejecución, así que un `cp std/*.nx` a un toolchain compartido
# fallaría sin que ningún diff lo mostrara). El `chmod a+r` cierra el caso
# también con umask restrictivas.
cat "$TMP" > "$OUT.tmp.$$" && chmod a+r "$OUT.tmp.$$" && mv "$OUT.tmp.$$" "$OUT" \
    || die "no se pudo escribir $OUT"
echo "  ✓ $OUT generado ($(wc -l < "$OUT") líneas: $MODULES + core)"
