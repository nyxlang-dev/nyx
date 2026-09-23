#!/usr/bin/env bash
# run_lib_modules.sh — `[lib] modules` en nyx.toml: compilación separada con
# reutilización de objetos (arco compilacion-separada, Task 6).
#
# Qué fija, sobre un proyecto chico y real (no el banco sintético):
#   1. las dos formas de import cruzan la frontera: `import { f } from` y
#      `import "m" as a` + `a.f()` (la segunda daba NYX2002 antes de la Task 6);
#   2. un struct viaja por la interfaz y una biblioteca importa a otra;
#   3. un módulo con un genérico cae al inlining (NYX0302) y el aviso SE VE aunque
#      el build salga bien, y su objeto no se enlaza;
#   4. sin cambios, los objetos se REUTILIZAN; tocar una biblioteca la recompila a
#      ella y, en cascada, a las que la importan;
#   5. un cambio de LAYOUT (un campo nuevo delante) se propaga: el objeto viejo no
#      se reutiliza —eso sería leer offsets equivocados en silencio (Task 4)—;
#   6. errores del manifiesto: una clave desconocida en [lib] y un módulo con .nx.
# Usa el nyx_build del repo con NYX_HOME apuntando al repo.
set -u
ROOT="$(cd "$(dirname "$0")/../.." && pwd)"
NB="$ROOT/nyx_build"
[ -x "$NB" ] || { echo "✗ falta $NB — make build-nyx-build"; exit 1; }
export NYX_HOME="$ROOT"
T="$(mktemp -d)"; trap 'rm -rf "$T"' EXIT
fallos=0
ok()  { echo "  ✓ $1"; }
mal() { echo "  ✗ $1"; fallos=$((fallos + 1)); }

echo "── [lib] modules: compilación separada con reutilización ──"
P="$T/proj"; mkdir -p "$P/src"; cd "$P" || exit 1
cat > nyx.toml <<'EOF'
[package]
name = "libp"
version = "0.1.0"

[lib]
modules = ["src/util", "src/geo", "src/gen"]
EOF
cat > src/util.nx <<'EOF'
export fn duplicar(x: int) -> int { return x * 2 }
export fn saluda(n: String) -> String { return "hola " + n }
EOF
cat > src/geo.nx <<'EOF'
import { duplicar } from "src/util"
export struct Punto { x: int, y: int }
export fn nuevo(x: int, y: int) -> Punto { return Punto { x: duplicar(x), y: y } }
export fn suma(p: Punto) -> int { return p.x + p.y }
EOF
cat > src/gen.nx <<'EOF'
export fn identidad<T>(x: T) -> T { return x }
EOF
cat > src/main.nx <<'EOF'
import { saluda } from "src/util"
import "src/util" as u
import { nuevo, suma, Punto } from "src/geo"
import { identidad } from "src/gen"
fn main() -> int {
    let p: Punto = nuevo(10, 1)
    println(saluda("mundo") + " " + int_to_string(u.duplicar(21)) + " " + int_to_string(suma(p)) + " " + int_to_string(p.x) + " " + int_to_string(identidad(7)))
    return 0
}
EOF

out=$("$NB" build 2>&1); rc=$?
run=$(./libp 2>&1)
if [ "$rc" -eq 0 ] && [ "$run" = "hola mundo 42 21 20 7" ]; then ok "build + corrida: las dos formas de import, struct, lib→lib"
else mal "build/corrida (rc=$rc): $(echo "$out" | tail -3 | tr '\n' ' ') → '$run'"; fi
if echo "$out" | grep -q "compiling src/util (lib)" && echo "$out" | grep -q "compiling src/geo (lib)"; then ok "util y geo se compilan como bibliotecas"
else mal "no se compilaron las bibliotecas: $(echo "$out" | grep compiling | tr '\n' ' ')"; fi
if echo "$out" | grep -q "NYX0302" && ls target/nyx-lib/src_gen-*.inline >/dev/null 2>&1 && ! ls target/nyx-lib/src_gen-*.o >/dev/null 2>&1; then
    ok "el genérico cae al inlining con NYX0302 visible y sin objeto"
else mal "fallback del genérico: aviso/marcador/objeto no cuadran"; fi

out=$("$NB" build 2>&1)
if echo "$out" | grep -q "reusing src/util" && echo "$out" | grep -q "reusing src/geo" && ! echo "$out" | grep -q "(lib)$"; then ok "sin cambios: se reutilizan los objetos"
else mal "sin cambios no reutilizó: $(echo "$out" | grep -E 'reusing|compiling' | tr '\n' ' ')"; fi

sed -i 's/return x \* 2/return x * 3/' src/util.nx
out=$("$NB" build 2>&1); run=$(./libp 2>&1)
if echo "$out" | grep -q "compiling src/util (lib)" && echo "$out" | grep -q "compiling src/geo (lib)" && [ "$run" = "hola mundo 63 31 30 7" ]; then
    ok "tocar util recompila util y, en cascada, geo (63 31 30)"
else mal "cascada: $(echo "$out" | grep -E 'reusing|compiling' | tr '\n' ' ') → '$run'"; fi

# Layout: un campo NUEVO delante. Con un objeto de geo viejo, main leería p.x
# del offset equivocado; con la huella por cierre, geo se recompila.
sed -i 's/export struct Punto { x: int, y: int }/export struct Punto { z: int, x: int, y: int }/; s/return Punto { x: duplicar(x), y: y }/return Punto { z: 999, x: duplicar(x), y: y }/' src/geo.nx
out=$("$NB" build 2>&1); run=$(./libp 2>&1)
if [ "$run" = "hola mundo 63 31 30 7" ] && echo "$out" | grep -q "compiling src/geo (lib)"; then ok "cambio de layout: geo se recompila y main lee el campo correcto"
else mal "layout: '$run' ($(echo "$out" | grep -E 'compiling' | tr '\n' ' '))"; fi

echo "── [lib] modules: errores del manifiesto ──"
cp nyx.toml nyx.toml.bien
printf '[package]\nname = "libp"\nversion = "0.1.0"\n\n[lib]\nmodulos = ["src/util"]\n' > nyx.toml
out=$("$NB" build 2>&1); rc=$?
if [ "$rc" -ne 0 ] && echo "$out" | grep -q "clave desconocida en \[lib\]"; then ok "clave desconocida en [lib] es error"
else mal "clave desconocida en [lib] (rc=$rc)"; fi
printf '[package]\nname = "libp"\nversion = "0.1.0"\n\n[lib]\nmodules = ["src/util.nx"]\n' > nyx.toml
out=$("$NB" build 2>&1); rc=$?
if [ "$rc" -ne 0 ] && echo "$out" | grep -q "sin .nx"; then ok "un módulo con .nx es error"
else mal "módulo con .nx (rc=$rc)"; fi
cp nyx.toml.bien nyx.toml

if [ "$fallos" -gt 0 ]; then echo "  [lib] modules: FALLÓ ($fallos)"; exit 1; fi
echo "  [lib] modules: PASS"
