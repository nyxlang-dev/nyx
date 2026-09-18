#!/usr/bin/env bash
# lib_stack.sh — sube el límite de stack antes de compilar módulos del compilador.
#
# POR QUÉ: compilar `compiler/lexer.nx` necesita ~9 MB de stack en x86_64 y el
# default de Linux son 8. La máquina B del reparto de carga lo midió el
# 2026-09-18: SIGSEGV determinista 3/3, umbral entre 8704 y 9216 KB — se pasa por
# ~12%. No es memoria (había 6.4 GB libres, y codegen.nx, mucho más grande,
# compila bien): es el ABI. x86-64 System V tiene 16 registros de propósito
# general contra los 31 de AArch64, así que la misma función spillea más al
# stack; con `codegen_call_expr` y `codegen_method_call` reservando ~512 KB de
# frame CADA UNA (medido con objdump) y siendo mutuamente recursivas, ese factor
# es la diferencia entre entrar en 8 MB y no entrar. `lexer.nx` lo dispara por
# PROFUNDIDAD, no por tamaño: es el módulo con más anidamiento del repo (120
# espacios de indentación máxima, el triple del siguiente) por el árbol de
# operadores multi-carácter de lexer.nx:1040-1070. En aarch64 pasa por debajo del
# límite, y por eso el servidor nunca lo vio.
#
# ESTO NO ES EL ARREGLO DE FONDO. Medio megabyte de frame por función sigue ahí,
# y el próximo módulo que anide treinta niveles vuelve a chocar. El arreglo real
# —correr el main en un hilo con `pthread_attr_setstacksize`, como rustc y clang,
# o achicar esos frames— toca el codegen: rompe el punto fijo y cambia dónde
# corre el `main` de TODO programa Nyx, incluidos los once servicios en
# producción. Va como arco propio (ficha en TASKS.md). Esto de acá destraba el
# camino real —compilar el compilador en x86_64— sin tocar un solo binario que
# esté sirviendo.
#
# Es best-effort a propósito: si el hard limit no alcanza o setrlimit falla, no
# se aborta nada. En la arquitectura donde el límite no se cruza (aarch64) esto
# es un no-op, y donde se cruza, sin esto el fallo es un SIGSEGV sin explicación.

# nyx_raise_stack [KB] — sube RLIMIT_STACK al valor pedido (default 65536 KB).
nyx_raise_stack() {
    local want="${1:-65536}"
    # `ulimit -s` puede no existir (shells restringidos) o no poder subir.
    local cur
    cur=$(ulimit -s 2>/dev/null) || return 0
    [ "$cur" = "unlimited" ] && return 0
    case "$cur" in ''|*[!0-9]*) return 0 ;; esac
    [ "$cur" -ge "$want" ] && return 0
    ulimit -s "$want" 2>/dev/null || true
}
