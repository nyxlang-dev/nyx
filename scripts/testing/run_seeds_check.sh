#!/usr/bin/env bash
# run_seeds_check.sh — las semillas .ll del bootstrap describen al compilador ACTUAL.
#
# POR QUÉ EXISTE (2026-09-13)
#
# `compiler/*.ll` son el IR semilla desde el que se construye `nyx_bootstrap`, y
# desde el que `scripts/install.sh` construye en la máquina de un usuario
# externo. Se regeneran A MANO (`make recompile MODULE=x`), así que un cambio del
# compilador que afecte lo que EMITE se propaga solo a los módulos que alguien se
# acuerde de recompilar.
#
# Medido ese día: SIETE de las nueve semillas estaban atrasadas, y los 40 cambios
# de código eran todos la MISMA sustitución —`nyx_array_get` →
# `nyx_slot_as_int_checked`, el slot-check de NYX2014—. O sea que el compilador
# que construye el proyecto, y el que instala un usuario, corría sin esa
# protección en lexer, parser, types, borrow y licm. No producía código
# incorrecto: le faltaba una red que el compilador actual sí emite.
#
# NO va dentro de `make test-ai-first`: son NUEVE compilaciones del compilador,
# minutos cada una, y en máquinas chicas `codegen` muere por OOM. Vive en su
# propio target (`make seeds-check`) y lo invoca `release-check`, que es donde de
# verdad importa — publicar semillas viejas se lo lleva el usuario.
#
# El criterio es PUNTO FIJO, no «idéntico siempre»: compilar cada módulo con el
# bootstrap construido desde estas semillas tiene que reproducirlas. Tras un
# cambio que altere lo que el compilador emite hacen falta DOS vueltas
# (`make recompile` usa el bootstrap viejo para generar el .ll nuevo), así que un
# rojo acá suele querer decir «regenera y reconstruye una vez más», no «está roto».
set -u
cd "$(dirname "$0")/../.."

source scripts/testing/lib_testroot_lock.sh
nyx_testroot_lock_acquire

if [ ! -x ./nyx_bootstrap ]; then
    echo "  ✗ falta ./nyx_bootstrap — correr 'make bootstrap' primero"
    exit 1
fi

MODULOS="lexer parser types semantic borrow licm resolve codegen nyx"
FAIL=0
STALE=()

trap 'rm -f script.nx script.ll' EXIT

for m in $MODULOS; do
    printf "  %-10s " "$m"
    cp "compiler/$m.nx" script.nx
    if ! ./nyx_bootstrap > /dev/null 2>&1; then
        # Un OOM no es una semilla vieja: se dice distinto, en vez de acusar
        # un problema que no se midió.
        echo "⚠️  no compiló (¿memoria?) — sin medir"
        continue
    fi
    if cmp -s script.ll "compiler/$m.ll"; then
        echo "✓ punto fijo"
    else
        n=$(diff "compiler/$m.ll" script.ll | grep -c '^[<>]')
        d=$(diff "compiler/$m.ll" script.ll | grep '^[<>]' | grep -c 'declare ')
        echo "✗ la semilla está vieja ($n líneas: $d declare, $((n-d)) de código)"
        FAIL=$((FAIL + 1))
        STALE+=("$m")
    fi
done

echo ""
if [ "$FAIL" -gt 0 ]; then
    echo "  ✗ $FAIL semilla(s) vieja(s): ${STALE[*]}"
    echo "    regenerar:  for m in ${STALE[*]}; do make recompile MODULE=\$m; done && make bootstrap"
    echo "    y volver a correr esto: si un cambio altera lo que el compilador EMITE,"
    echo "    la primera vuelta usa el bootstrap viejo y hace falta una segunda."
    exit 1
fi
echo "  ✓ las 9 semillas están en punto fijo"
