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

# Stack: sin esto, lexer.nx muere con SIGSEGV en x86_64 y el módulo queda
# «sin medir» — que desde 2026-09-18 es ROJO, no verde (ver lib_stack.sh).
. "$(dirname "$0")/../lib_stack.sh"; nyx_raise_stack
source scripts/testing/lib_testroot_lock.sh
nyx_testroot_lock_acquire

if [ ! -x ./nyx_bootstrap ]; then
    echo "  ✗ falta ./nyx_bootstrap — correr 'make bootstrap' primero"
    exit 1
fi

MODULOS="lexer parser types semantic borrow licm resolve codegen nyx"
FAIL=0
STALE=()
MEDIDOS=0
SIN_MEDIR=()
SIN_MEDIR_STACK=()

trap 'rm -f script.nx script.ll' EXIT

for m in $MODULOS; do
    printf "  %-10s " "$m"
    cp "compiler/$m.nx" script.nx
    # El rc se captura ANTES de cualquier test: dentro de `if ! cmd; then`,
    # $? es el estado de la NEGACIÓN, no el del comando, y siempre da 0.
    ./nyx_bootstrap > /dev/null 2>&1
    rc=$?
    if [ "$rc" -ne 0 ]; then
        # Un OOM no es una semilla vieja: se dice distinto, en vez de acusar
        # un problema que no se midió. Pero TAMPOCO es verde — ver el cierre.
        #
        # Y «no compiló» tiene DOS causas con remedios opuestos, así que no se
        # pregunta «¿memoria?» a ciegas: se mira el rc. 139 = SIGSEGV = el
        # codegen desbordó el stack (es recursivo y en x86_64 los 8 MB default
        # no alcanzan para lexer.nx); un OOM llega como 137 (SIGKILL del OOM
        # killer) o como rc de error común. Mandar a liberar memoria a quien
        # tiene un desborde de stack lo hace correr en círculos.
        if [ "$rc" -eq 139 ]; then
            echo "⚠️  SIGSEGV (desborde de stack) — sin medir"
            SIN_MEDIR_STACK+=("$m")
        else
            echo "⚠️  no compiló (rc=$rc, ¿memoria?) — sin medir"
        fi
        SIN_MEDIR+=("$m")
        continue
    fi
    MEDIDOS=$((MEDIDOS + 1))
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
# «Sin medir» NO es verde. Hasta 2026-09-18 un módulo que no compilaba hacía
# `continue` sin tocar FAIL: el script imprimía «✓ las 9 semillas están en punto
# fijo» y salía con rc=0 habiendo medido 8 — y el consumidor de ese rc es
# release-check.sh, o sea la puerta de publicar. En una máquina donde el OOM es
# rutina (2 cores, 3.8 GB, earlyoom, y una compilación de codegen que pica
# ~1.5 GB) eso no es hipotético: el mismo día, el sistema mató un release-check
# a mitad por memoria. Lo encontró la máquina B del reparto de carga, que lo
# disparó de verdad en su primera corrida x86_64.
TOTAL=$(printf '%s\n' $MODULOS | wc -l)
if [ "${#SIN_MEDIR[@]}" -gt 0 ]; then
    echo "  ✗ SIN MEDIR ${#SIN_MEDIR[@]} de $TOTAL: ${SIN_MEDIR[*]}"
    echo "    No es «están en punto fijo»: es que no se sabe."
    if [ "${#SIN_MEDIR_STACK[@]}" -gt 0 ]; then
        echo "    ${SIN_MEDIR_STACK[*]}: SIGSEGV por DESBORDE DE STACK, no por memoria."
        echo "      El codegen es recursivo y en x86_64 los 8 MB default no alcanzan."
        echo "      Reintentar así:   bash -c 'ulimit -s 65536; make seeds-check'"
    fi
    if [ "${#SIN_MEDIR[@]}" -gt "${#SIN_MEDIR_STACK[@]}" ]; then
        echo "    El resto suele ser memoria — liberar la máquina y volver a correr, o"
        echo "    medir en otra (docs/CONTRIBUTING.md §Segunda máquina)."
    fi
    echo "    Publicar con esto en rojo entrega semillas sin verificar."
    exit 1
fi
echo "  ✓ las $MEDIDOS semillas están en punto fijo"
