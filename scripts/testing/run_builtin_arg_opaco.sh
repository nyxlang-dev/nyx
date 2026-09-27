#!/usr/bin/env bash
# run_builtin_arg_opaco.sh — un valor OPACO se puede pasar directo a cualquier builtin
# (arco builtins-arg-opaco, docs/design/plans/2026-09-27-builtins-arg-opaco.md).
#
# POR QUÉ EXISTE: cada handler de builtin de compiler/codegen.nx evalúa sus argumentos
# y los pega en una llamada con el tipo del parámetro escrito a mano. Un elemento de un
# Array sin tipo (`get_args()[i]`, un Array que vino de una fn) llega como i64, y nadie
# lo convertía: `read_file(args[2])` bajaba a `call @nyx_read_file(i8* %<i64>)`. Medido
# el 2026-09-27: 74 builtins emitían IR inválido así, con `nyx check` en verde — clang
# lo rechazaba al enlazar, sin la línea del usuario.
#
# QUÉ HACE: recorre los `declare` de @nyx_* que emite codegen con algún parámetro
# puntero (`%nyx_string*`, `i8*`, `{ i64, i8* }*`), arma por cada uno
#     let xs: Array = get_args()
#     <builtin>(xs[0], 1, …)
# (xs[0] en cada parámetro puntero, 1 / 1.0 en los numéricos) y exige que TODO builtin
# que semantic acepta produzca IR válido (`clang -c -x ir`). Los nombres que semantic
# no conoce (funciones internas del runtime, NYX1002) no son builtins: se saltean.
#
# NYX_OPACO_BOOTSTRAP=<binario> audita OTRO compilador en vez de ./nyx_bootstrap: así
# se ve la guarda en rojo contra uno anterior al arreglo (autotest a mano; medido el
# 2026-09-27 con el de 0.34.0+2800e1a1: rojo).
set -u
ROOT="$(cd "$(dirname "$0")/../.." && pwd)"
cd "$ROOT" || exit 1
BOOT="${NYX_OPACO_BOOTSTRAP:-./nyx_bootstrap}"
[ -x "$BOOT" ] || { echo "  ✗ falta $BOOT (make bootstrap)"; exit 1; }

W="$(mktemp -d)"
trap 'rm -rf "$W"' EXIT
cp "$BOOT" "$W/nyx_bootstrap"
ln -s "$ROOT/std" "$W/std"

grep -o 'emit(ctx, "declare [^"]*@nyx_[a-z0-9_]*([^)]*)' compiler/codegen.nx \
    | sed 's/emit(ctx, "declare //' | sort -u > "$W/decls.txt"

python3 - "$W/decls.txt" > "$W/casos.txt" <<'EOF'
import re, sys
for l in open(sys.argv[1]):
    m = re.match(r'.*@nyx_([a-z0-9_]+)\((.*)\)\s*$', l.strip())
    if not m:
        continue
    name, params = m.group(1), m.group(2).strip()
    ps = [p.strip() for p in re.split(r',(?![^{]*\})', params)] if params else []
    if not any(p.endswith('*') for p in ps):
        continue
    args = []
    ok = True
    for p in ps:
        if p.endswith('*'):
            args.append('xs[0]')
        elif p in ('i64', 'i32', 'i8', 'i1'):
            args.append('1')
        elif p == 'double':
            args.append('1.0')
        else:
            ok = False
    if ok:
        print(name + '|' + ', '.join(args))
EOF

total=0; malos=0; lista=""
cd "$W" || exit 1
while IFS='|' read -r n a; do
    # Como SENTENCIA, no `let r = …`: ligar el resultado de un builtin void es otro
    # problema (gotcha void-builtin-no-bind) y ensuciaría la medición.
    printf 'fn main() -> int {\n    let xs: Array = get_args()\n    %s(%s)\n    return 0\n}\n' "$n" "$a" > script.nx
    rm -f script.ll
    out="$(timeout 60 ./nyx_bootstrap 2>&1)"
    if [ ! -f script.ll ]; then
        # NYX1002 = no es un builtin (fn interna del runtime); NYX0107/aridad = el
        # builtin tiene otra firma que el runtime: los dos quedan fuera del sondeo.
        continue
    fi
    total=$((total + 1))
    if ! clang -c -x ir script.ll -o /dev/null 2>/dev/null; then
        malos=$((malos + 1)); lista="$lista $n"
    fi
done < casos.txt
cd "$ROOT" || exit 1

if [ "$malos" -eq 0 ]; then
    echo "  ✓ $total builtins aceptan un argumento opaco (xs[i] de un Array sin tipo) con IR válido"
    exit 0
fi
echo "  ✗ $malos de $total builtins emiten IR inválido con un argumento opaco:"
echo "   $lista" | fold -s -w 100 | sed 's/^/      /'
exit 1
