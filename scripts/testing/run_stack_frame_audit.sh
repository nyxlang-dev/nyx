#!/usr/bin/env bash
# run_stack_frame_audit.sh — guarda de la pila del compilador (arco
# pila-del-compilador, Task 1; spec docs/design/specs/2026-09-23-pila-del-compilador-design.md).
#
# POR QUÉ EXISTE: el toolchain se enlaza en -O0, y ahí cada valor de una función
# tiene su propia ranura de pila. codegen.nx tiene funciones de cientos de
# líneas en el camino RECURSIVO de una expresión (codegen_expr → codegen_binop →
# codegen_expr…), y cada nivel apilaba ~151 KB: 53 operandos `+` agotaban los
# 8 MB por omisión y el compilador moría con SIGSEGV mudo (fricción nyxerp
# 20260920-200024). Nada avisaba cuando una función de ese camino engordaba: se
# enteraba un usuario, o el build del propio compilador (build.nx, 2026-09-23).
#
# QUÉ MIDE, en dos mitades que se cubren entre sí:
#   (1) El marco -O0 de cada función del camino recursivo, con
#       `clang -O0 -fstack-usage` sobre compiler/codegen.ll, contra un TECHO
#       declarado abajo. Es un RATCHET: el techo es el valor medido hoy y cada
#       task del arco lo baja; subirlo exige decir por qué en el commit.
#   (2) Que una expresión de OPERANDOS operandos compile con `ulimit -S -s 8192`
#       llamando a nyx_bootstrap DIRECTO —sin la subida a 64 MB de los
#       lanzadores, que es la mitigación y no el arreglo—. El número sube con
#       cada task (objetivo del arco: 500).
#
# --self-test: le da a la mitad (1) un .su fabricado con un marco inflado y
# exige que la guarda falle. Una guarda que nunca se vio fallar no prueba nada.
#
# Override para el self-test: NYX_FRAME_AUDIT_SU=<archivo .su> salta la
# compilación y audita ese archivo.
set -u
ROOT="$(cd "$(dirname "$0")/../.." && pwd)"
cd "$ROOT" || exit 1

# ── Techos (bytes de marco en -O0). Ratchet: solo bajan. ──────────────────────
# Historia del ratchet (clang 19, aarch64):
#   2026-09-23 Task 1 (9791b284): expr 18112, binop 132880, por nivel 150992; 40 operandos (techo real 52).
#   2026-09-23 Task 2: binop partido (emitir + logico) y ramas de expr afuera →
#     expr 14496, binop 8544, por nivel 23040; 250 operandos (techo real 322).
# codegen_binop_logico está en el camino recursivo de `a and b and …`.
declare -A TECHO=(
    [codegen_expr]=14496
    [codegen_binop]=8544
    [codegen_binop_logico]=21680
    [codegen_call_expr]=471120
    [codegen_method_call]=474912
)
# Costo de UN nivel de `a + b + …`: codegen_expr + codegen_binop.
TECHO_NIVEL=23040
# Operandos que tienen que compilar con 8 MB, sin la subida de los lanzadores.
# Techo real medido por bisección: 322; se deja margen.
OPERANDOS=250

fallos=0

auditar_su() {  # auditar_su <archivo .su>
    local su="$1" f v techo nivel=0
    for f in "${!TECHO[@]}"; do
        v=$(awk -F'\t' -v fn="$f" '{ n=split($1, a, ":"); if (a[n] == fn) { print $2; exit } }' "$su")
        techo=${TECHO[$f]}
        if [ -z "$v" ]; then
            echo "  ✗ marco de $f: no aparece en el .su (¿se renombró? actualizar la guarda)"
            fallos=$((fallos + 1)); continue
        fi
        if [ "$v" -gt "$techo" ]; then
            echo "  ✗ marco de $f: $v B > techo $techo B — la recursión de una expresión engordó"
            fallos=$((fallos + 1))
        else
            echo "  ✓ marco de $f: $v B (techo $techo)"
        fi
        case "$f" in codegen_expr|codegen_binop) nivel=$((nivel + v)) ;; esac
    done
    if [ "$nivel" -gt "$TECHO_NIVEL" ]; then
        echo "  ✗ costo por nivel de expresión: $nivel B > techo $TECHO_NIVEL B"
        fallos=$((fallos + 1))
    else
        echo "  ✓ costo por nivel de expresión: $nivel B (techo $TECHO_NIVEL)"
    fi
}

if [ "${1:-}" = "--self-test" ]; then
    tmp=$(mktemp -d); trap 'rm -rf "$tmp"' EXIT
    printf 'x.ll:codegen_expr\t1\tdynamic\nx.ll:codegen_binop\t999999\tdynamic\nx.ll:codegen_binop_logico\t1\tstatic\nx.ll:codegen_call_expr\t1\tstatic\nx.ll:codegen_method_call\t1\tstatic\n' > "$tmp/inflado.su"
    salida=$(NYX_FRAME_AUDIT_SU="$tmp/inflado.su" bash "$0" --solo-marcos 2>&1); rc=$?
    if [ "$rc" -ne 0 ] && echo "$salida" | grep -qF "codegen_binop: 999999"; then
        echo "  ✓ self-test: un marco inflado hace caer la guarda"
        exit 0
    fi
    echo "  ✗ self-test: la guarda NO cayó con un marco inflado"; echo "$salida" | sed 's/^/      /'
    exit 1
fi

echo "── Pila del compilador: marcos -O0 del camino recursivo ──"
if [ -n "${NYX_FRAME_AUDIT_SU:-}" ]; then
    auditar_su "$NYX_FRAME_AUDIT_SU"
else
    tmp=$(mktemp -d); trap 'rm -rf "$tmp"' EXIT
    if ! clang -O0 -c -fstack-usage -Wno-override-module compiler/codegen.ll -o "$tmp/codegen.o" 2> "$tmp/clang.log"; then
        echo "  ✗ clang no pudo compilar compiler/codegen.ll"; tail -3 "$tmp/clang.log"
        exit 1
    fi
    auditar_su "$tmp/codegen.su"
fi

if [ "${1:-}" != "--solo-marcos" ] && [ -z "${NYX_FRAME_AUDIT_SU:-}" ]; then
    echo "── Pila del compilador: $OPERANDOS operandos con 8 MB, sin la subida de los lanzadores ──"
    src="$tmp/largo.nx"
    { printf 'fn hoja() -> String {\n    return "a"'
      for i in $(seq 2 "$OPERANDOS"); do printf ' + "a"'; done
      printf '\n}\nfn main() -> int {\n    println(int_to_string(hoja().length()))\n    return 0\n}\n'; } > "$src"
    if ( ulimit -S -s 8192; NYX_SRC="$src" ./nyx_bootstrap > "$tmp/largo.log" 2>&1 ) && [ -f "$tmp/largo.ll" ]; then
        echo "  ✓ $OPERANDOS operandos compilan con 8 MB"
    else
        echo "  ✗ $OPERANDOS operandos NO compilan con 8 MB (el compilador se quedó sin pila)"
        tail -3 "$tmp/largo.log" | sed 's/^/      /'
        fallos=$((fallos + 1))
    fi
fi

if [ "$fallos" -gt 0 ]; then
    echo "  pila del compilador: FALLÓ ($fallos)"
    exit 1
fi
echo "  pila del compilador: PASS"
