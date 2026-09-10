#!/usr/bin/env bash
# run_testroot_lock_ratchet.sh — guarda: NINGUNA receta del Makefile puede
# tocar los artefactos compartidos de la raíz (script.nx / script.ll /
# script_bin / script_path.txt) sin pasar por $(TESTROOT_LOCK).
#
# POR QUÉ: los runners de test se serializan con flock sobre esos archivos
# (scripts/testing/lib_testroot_lock.sh), pero las recetas del Makefile no lo
# hacían. MEDIDO el 2026-09-09: con un `make test-examples` en paralelo, el
# `cp script.ll compiler/codegen.ll` de `make recompile` copió el IR de OTRO
# programa a la semilla (66 KB en vez de 7,2 MB) y el enlace del bootstrap
# murió con «multiple definition of main». Una semilla corrupta commiteada
# deja el bootstrap IRRECONSTRUIBLE, así que la clase entera necesita ratchet:
# el arreglo de hoy se pierde con la próxima receta que copie y pegue el
# patrón viejo de tres líneas.
#
# Cómo lee el Makefile: junta las continuaciones (`\` al final) en una línea
# lógica, borra el texto de los `echo` (los mensajes citan script.ll sin
# tocarlo) y los comentarios de receta (`@#`), y exige TESTROOT_LOCK en toda
# línea lógica que quede mencionando los artefactos.
#
# set -u sin pipefail (regla del repo).
set -u
cd "$(dirname "$0")/../.."

MAKEFILE="${1:-Makefile}"

if [ ! -f "$MAKEFILE" ]; then
    echo "✗ no existe $MAKEFILE"
    exit 1
fi

FAIL=$(awk '
    # Solo líneas de receta (empiezan con TAB). Junta continuaciones.
    /^\t/ {
        line = $0
        sub(/^\t/, "", line)
        buf = buf line
        if (buf ~ /\\$/) { sub(/\\$/, " ", buf); next }   # sigue en la próxima
        logical = buf
        buf = ""
        lineno = NR

        # Comentario de receta (@# …): no ejecuta nada.
        if (logical ~ /^[ \t]*@?#/) next

        # Borra el texto citado de los echo: "✓ IR generado en script.ll" es
        # un mensaje, no un acceso al archivo.
        gsub(/echo[ \t]+"[^"]*"/, "echo", logical)
        gsub(/echo[ \t]+'"'"'[^'"'"']*'"'"'/, "echo", logical)

        if (logical ~ /script\.nx|script\.ll|script_bin|script_path/) {
            if (logical !~ /TESTROOT_LOCK|with_testroot_lock\.sh/) {
                printf "  ✗ %s:%d toca el scratch de la raíz sin $(TESTROOT_LOCK)\n", FILENAME, lineno
                printf "      %s\n", substr(logical, 1, 160)
                bad++
            }
        }
        next
    }
    # Fuera de receta: nada que auditar (variables y comentarios).
    { buf = "" }
    END { if (bad) exit 1 }
' "$MAKEFILE"; echo "rc=$?")

OUT=${FAIL%rc=*}
RC=${FAIL##*rc=}

if [ "$RC" != "0" ]; then
    printf '%s' "$OUT"
    echo "✗ ratchet del lock de la raíz: hay recetas sin serializar en $MAKEFILE."
    echo "  Arreglo: envolver la sección crítica ENTERA en una sola invocación —"
    echo "    \$(TESTROOT_LOCK) bash -c 'cp x script.nx && ./nyx_bootstrap && cp script.ll y'"
    echo "  (make abre un shell por línea de receta: partirla deja una ventana sin lock)."
    exit 1
fi

echo "✓ ratchet del lock de la raíz: toda receta de $MAKEFILE que toca script.nx/script.ll/script_bin pasa por \$(TESTROOT_LOCK)"
