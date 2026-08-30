#!/usr/bin/env bash
# lib_testroot_lock.sh — helper compartido para serializar el acceso al
# script.nx / script.ll / script_bin de la raíz del repo.
#
# [Cosecha TASKS.md arco:W3-paso0b, ficha BAJA "las suites del repo no son
# paralelizables"]: TODOS los runners de test compilan copiando el .nx del
# caso a `script.nx`, corriendo `./nyx_bootstrap` (que sobreescribe
# `script.ll`) y linkeando a `script_bin` — todo en la raíz del repo, sin
# aislamiento por corrida. Dos runners simultáneos (ej. `make test` en una
# terminal y `make test-errors` en otra) se pisan esos tres archivos a mitad
# de compilación y dan conteos fantasma: medido en la investigación del
# paso 0b, la MISMA suite de errores dio 256 / 254+2 / 242+14 según qué
# corría en paralelo — sin ningún cambio real en el árbol.
#
# Fix mínimo (decisión del coordinador): un lock de proceso vía `flock`
# sobre un lockfile compartido FUERA del repo (así no hace falta
# gitignorarlo y sobrevive a `git clean`). Cada runner lo adquiere una vez,
# cerca del principio, ANTES de tocar script.nx por primera vez — el lock
# vive hasta que el proceso termina (el FD se cierra solo al exit, no hace
# falta un `trap` explícito) y cubre TODA la corrida, no compilación por
# compilación: alcanza para que dos runners no se entrelacen, y es la forma
# más simple de no dejar una ventana entre "cp script.nx" y "leer script.ll"
# sin instrumentar cada punto de uso por separado.
#
# Uso (cerca del principio del runner, antes del primer cp a script.nx):
#   source "$(dirname "${BASH_SOURCE[0]}")/lib_testroot_lock.sh"   # si el
#     runner vive en scripts/testing/ junto a este archivo
#   # o, si el runner ya hizo cd a la raíz del repo:
#   source scripts/testing/lib_testroot_lock.sh
#   nyx_testroot_lock_acquire
#
# Overrides (para debug o para correr deliberadamente en paralelo con otro
# lockfile, ej. en CI con matrices que sí aíslan el árbol):
#   NYX_TESTROOT_LOCK          — path del lockfile (default: /tmp/nyx-lang-testroot.lock)
#   NYX_TESTROOT_LOCK_TIMEOUT  — segundos de espera antes de rendirse (default: 3600 = 60 min).
#                                 MEDIDO (2026-08-28, verificación de contención de esta ficha):
#                                 `make test` SOLO tarda ~18 min en este host (400 tests, cada
#                                 uno linkea el runtime completo) — un timeout de 600s (el valor
#                                 inicial de este archivo) hace que cualquier runner más liviano
#                                 que quede atrás de un `make test` en curso se rinda ANTES de que
#                                 termine, en vez de esperarlo (se vio en vivo: run_error_tests.sh
#                                 esperó los 600s completos y salió con este mismo mensaje mientras
#                                 run_bootstrap_tests.sh seguía corriendo — el lock funcionó
#                                 correctamente, cero interleaving, pero el timeout quedó corto).
#                                 60 min deja margen para hosts más lentos (EC2 t4g.micro con
#                                 retries de low-mem, ver run_bootstrap_tests.sh).

NYX_TESTROOT_LOCK="${NYX_TESTROOT_LOCK:-/tmp/nyx-lang-testroot.lock}"
NYX_TESTROOT_LOCK_TIMEOUT="${NYX_TESTROOT_LOCK_TIMEOUT:-3600}"

# fd 209: arbitrario pero fijo, elegido para no chocar con redirecciones que
# ya usan los runners (todos usan descriptores bajos: 0-2 estándar, algún
# 3-9 ocasional para logs).
#
# CRITICAL (fix round tras review, 2026-08-28): flock es por open file
# description, NO por proceso — un runner que invoca ANIDADO a otro runner
# de esta misma lista (ej. run_unit_tests.sh -> bash run_fmt_tests.sh) hace
# que el hijo, al correr `exec 209>...` sobre su PROPIO fd 209, abra una
# open file description NUEVA y pida flock sobre ELLA, no sobre la del
# padre. El padre sigue teniendo el lock tomado (su fd sigue vivo) y el
# hijo bloquea contra su propio padre hasta el timeout — reproducido en
# vivo por el reviewer con `NYX_TESTROOT_LOCK_TIMEOUT=5`: run_unit_tests.sh
# nunca hereda el lock a bash run_fmt_tests.sh, y `make test-unit` quedaba
# roto 100% determinista (fmt siempre fallaba).
#
# Fix: reentrancia por bandera de entorno. `NYX_TESTROOT_LOCK_HELD=1` se
# exporta recién DESPUÉS de tomar el flock real, así que solo un HIJO de
# ESTE proceso (que sí hereda el entorno) la ve seteada — dos runners
# independientes lanzados en paralelo (el caso que este archivo existe para
# serializar) arrancan cada uno con su propio entorno limpio, sin la
# variable, y sí compiten por el flock real como corresponde. Un runner
# anidado que ve la bandera ya sabe que el fd 209 de su padre sigue abierto
# y cubriéndolo — no hace falta (ni se puede) tomar el lock de nuevo.
nyx_testroot_lock_acquire() {
    if [ -n "${NYX_TESTROOT_LOCK_HELD:-}" ]; then
        return 0   # el lock del padre ya cubre a este runner anidado
    fi
    exec 209>"$NYX_TESTROOT_LOCK"
    if ! flock -w "$NYX_TESTROOT_LOCK_TIMEOUT" 209; then
        echo "✗ No se pudo tomar el lock de artefactos compartidos ($NYX_TESTROOT_LOCK) tras ${NYX_TESTROOT_LOCK_TIMEOUT}s." >&2
        echo "  ¿Otro runner de test corriendo o colgado? Los runners de este repo comparten" >&2
        echo "  script.nx/script.ll/script_bin en la raíz y NO son paralelizables entre sí." >&2
        echo "  (override: NYX_TESTROOT_LOCK / NYX_TESTROOT_LOCK_TIMEOUT)" >&2
        exit 1
    fi
    export NYX_TESTROOT_LOCK_HELD=1
}
