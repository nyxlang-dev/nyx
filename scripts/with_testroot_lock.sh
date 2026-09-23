#!/usr/bin/env bash
# with_testroot_lock.sh — corre un comando con el lock de los artefactos
# compartidos de la raíz del repo (script.nx / script.ll / script_bin) tomado.
#
# POR QUÉ EXISTE: todos los runners de test toman ese lock (ver
# scripts/testing/lib_testroot_lock.sh), pero las recetas del Makefile que
# usan el MISMO scratch no lo tomaban. MEDIDO el 2026-09-09: con un
# `make test-examples` corriendo en paralelo, el `cp script.ll
# compiler/codegen.ll` de `make recompile` copió el IR de OTRO programa a la
# semilla (66 KB en vez de 7,2 MB) y el enlace del bootstrap murió con
# «multiple definition of main». Se recuperó con `git checkout compiler/*.ll`,
# pero una semilla corrupta commiteada deja el bootstrap IRRECONSTRUIBLE
# (CLAUDE.md: «No borrar los compiler/*.ll — semilla del bootstrap»).
#
# USO desde el Makefile (variable TESTROOT_LOCK). Una sola invocación por
# sección crítica: el lock se suelta cuando ESTE proceso termina, así que el
# `cp` de entrada, el `nyx_bootstrap` y el `cp` de salida tienen que ir en el
# MISMO comando — si van en líneas de receta separadas, make abre un shell por
# línea y queda una ventana entre ellas justo donde se pisa:
#
#   $(TESTROOT_LOCK) bash -c 'cp compiler/x.nx script.nx && ./nyx_bootstrap && cp script.ll compiler/x.ll'
#
# USO desde la línea de comandos:
#   bash scripts/with_testroot_lock.sh ./nyx_bootstrap
#
# REENTRANCIA: si el proceso padre ya tomó el lock (bandera de entorno
# NYX_TESTROOT_LOCK_HELD=1 — por ejemplo un runner de test que invoca
# `make build-vet`), la lib no vuelve a pedirlo. Pedirlo sería un deadlock
# contra el propio padre: flock es por open file description, no por proceso
# (ver el comentario CRITICAL de lib_testroot_lock.sh).
#
# Overrides: NYX_TESTROOT_LOCK / NYX_TESTROOT_LOCK_TIMEOUT (los define la lib).

set -euo pipefail

if [ $# -eq 0 ]; then
    echo "uso: bash scripts/with_testroot_lock.sh <comando> [args...]" >&2
    exit 2
fi

_lock_lib="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/testing/lib_testroot_lock.sh"
if [ ! -f "$_lock_lib" ]; then
    echo "✗ no se encontró $_lock_lib (¿árbol incompleto?)" >&2
    exit 1
fi
# shellcheck source=scripts/testing/lib_testroot_lock.sh
source "$_lock_lib"

# Aviso de contención ANTES de bloquear: sin esto, un `make recompile` lanzado
# con un `make test` en curso se queda mudo hasta el timeout de la lib (60 min)
# y parece colgado — el repo ya tiene fichada esa clase de espera invisible.
# Sonda no bloqueante sobre un fd propio (208; la lib usa el 209) que se libera
# en el acto: solo sirve para decidir si imprimir el aviso.
if [ -z "${NYX_TESTROOT_LOCK_HELD:-}" ] && command -v flock >/dev/null 2>&1; then
    exec 208>"$NYX_TESTROOT_LOCK"
    if flock -n 208; then
        flock -u 208
    else
        echo "⏳ esperando el lock de artefactos de la raíz ($NYX_TESTROOT_LOCK):" >&2
        echo "   otro runner o receta está usando script.nx/script.ll/script_bin." >&2
    fi
    exec 208>&-
fi

nyx_testroot_lock_acquire

# Pila del compilador: TODA receta que corre nyx_bootstrap pasa por acá, así que
# es el único lugar donde subirla las cubre a todas. nyx_bootstrap se enlaza en
# -O0 y codegen apila ~151 KB por nivel de expresión (spec
# docs/design/specs/2026-09-23-pila-del-compilador-design.md): `recompile-all`
# ya no podía compilar lexer.nx en 8 MB, y `build-nyx-build` murió con SIGSEGV
# al crecer una concatenación de compiler/build.nx. `recompile` y
# `build-interpreter` lo hacían cada uno por su cuenta; las demás, no.
# shellcheck source=scripts/lib_stack.sh
source "$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/lib_stack.sh"
nyx_raise_stack

"$@"
