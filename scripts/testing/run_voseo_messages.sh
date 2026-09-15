#!/usr/bin/env bash
# run_voseo_messages.sh — español neutro en lo que imprime el TOOLCHAIN
# (compilador, runtime, std, scripts, runners de tests y templates/gitignore — el
# resto de templates/ lo vigila run_templates_parity.sh).
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
# 2026-09-15 (fricción nyxerp, plantilla de `nyx report`): «Completá las
# secciones» pasó esta guarda porque la palabra no estaba en la lista y el grep
# distinguía mayúsculas. Ahora las dos guardas filtran con voseo_filter (lista +
# regla general en -á, sin distinguir mayúsculas), y esta mira también los
# runners de tests/ — `run_error_tests.sh` imprimía «corré 'make build-check'».
#
# Uso: run_voseo_messages.sh [RAIZ]   (RAIZ = repo por defecto; sirve para probar
#      la guarda contra una copia sin tocar el árbol)
set -u
AQUI="$(cd "$(dirname "$0")" && pwd)"
RAIZ="${1:-$(cd "$AQUI/../.." && pwd)}"
source "$AQUI/lib_voseo.sh"

# ── Autotest del instrumento (primero: sin esto, verde no prueba nada) ──
AUTO_OK=1
n="$(printf '%s\n' '> Completá las secciones.' 'Corré la suite otra vez' 'y después CHEQUEÁ el log' \
    | voseo_filter | wc -l)"
if [ "$n" -ne 3 ]; then
    echo "  ✗ autotest ROTO — «Completá», «Corré» y «CHEQUEÁ» dieron $n hit(s), se esperaban 3"
    AUTO_OK=0
fi
n="$(printf '%s\n' 'Está acá y allá; quizá lo hará o podrá, ESTÁ ACÁ' \
    'lo probé y lo importé ayer' '> Completa las secciones.' \
    | voseo_filter | wc -l)"
if [ "$n" -ne 0 ]; then
    echo "  ✗ autotest ROTO — $n falso(s) positivo(s) sobre español neutro"
    AUTO_OK=0
fi
[ "$AUTO_OK" -eq 1 ] || exit 1

cd "$RAIZ" || exit 2
HITS=0
while IFS= read -r f; do
    case "$f" in
        # la lista y las guardas que la citan contienen esas palabras a propósito
        */lib_voseo.sh|*/run_templates_parity.sh|*/run_voseo_messages.sh) continue ;;
    esac
    [ -f "$f" ] || continue
    out="$(grep -n '' "$f" 2>/dev/null | voseo_filter)"
    [ -n "$out" ] || continue
    while IFS= read -r l; do
        printf "  ✗ %s:%s\n" "$f" "$(printf '%s' "$l" | cut -c1-140)"
        HITS=$((HITS + 1))
    done <<< "$out"
done < <(ls compiler/*.nx runtime/*.c runtime/*.h runtime/os/*.c runtime/os/*.h std/*.nx scripts/nyx scripts/*.sh scripts/testing/*.sh scripts/sdd/* templates/gitignore 2>/dev/null; find tests -name '*.sh' 2>/dev/null | sort)

if [ "$HITS" -gt 0 ]; then
    echo "  ✗ $HITS línea(s) con voseo en texto del toolchain — usar español neutro (tú)"
    exit 1
fi
echo "  ✓ español neutro en compilador, runtime, std, scripts y runners de tests"
