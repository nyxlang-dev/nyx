#!/usr/bin/env bash
# run_voseo_messages.sh — español neutro en lo que imprime el TOOLCHAIN
# (compilador, runtime, std, scripts y templates/gitignore — el resto de
# templates/ lo vigila run_templates_parity.sh).
#
# POR QUÉ EXISTE (2026-09-13)
#
# La guarda de español neutro (run_templates_parity.sh) vigilaba templates y
# gotchas. Nadie miraba los diagnósticos del compilador, los mensajes del runtime
# ni los scripts: al barrerlos aparecieron cerca de cien formas de voseo en texto
# que ve un usuario, varias escritas la misma semana en que esa guarda ya existía.
# Una regla sin guarda en el lugar donde se escribe es una regla que se olvida.
#
# La lista NO vive acá: se sourcea de lib_voseo.sh, la misma que usa la guarda de
# templates. Dos copias de una lista es la trampa que este repo pisó cuatro veces
# en una semana.
#
# Uso: run_voseo_messages.sh [RAIZ]   (RAIZ = repo por defecto; sirve para probar
#      la guarda contra una copia sin tocar el árbol)
set -u
AQUI="$(cd "$(dirname "$0")" && pwd)"
RAIZ="${1:-$(cd "$AQUI/../.." && pwd)}"
source "$AQUI/lib_voseo.sh"

cd "$RAIZ" || exit 2
HITS=0
while IFS= read -r f; do
    case "$f" in
        # la lista y las guardas que la citan contienen esas palabras a propósito
        */lib_voseo.sh|*/run_templates_parity.sh|*/run_voseo_messages.sh) continue ;;
    esac
    [ -f "$f" ] || continue
    out="$(grep -nE "$VOSEO_DENY_RE" "$f" 2>/dev/null)" || continue
    while IFS= read -r l; do
        printf "  ✗ %s:%s\n" "$f" "$(printf '%s' "$l" | cut -c1-140)"
        HITS=$((HITS + 1))
    done <<< "$out"
done < <(ls compiler/*.nx runtime/*.c runtime/*.h runtime/os/*.c runtime/os/*.h std/*.nx scripts/nyx scripts/*.sh scripts/testing/*.sh scripts/sdd/* templates/gitignore 2>/dev/null)

if [ "$HITS" -gt 0 ]; then
    echo "  ✗ $HITS línea(s) con voseo en texto del toolchain — usar español neutro (tú)"
    exit 1
fi
echo "  ✓ español neutro en compilador, runtime, std y scripts"
