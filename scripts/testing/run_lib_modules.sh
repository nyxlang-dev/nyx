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
#   6. `nyx test` enlaza los mismos objetos (no inlinea el cierre en cada archivo de
#      prueba), los reutiliza, y probar un módulo de biblioteca no choca con su objeto;
#   7. errores del manifiesto: una clave desconocida en [lib] y un módulo con .nx.
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

# Huella por INTERFAZ (2026-09-24, fricción nyxerp 150024): geo importa util,
# pero de util solo genera `declare`; su .o depende de la interfaz de util, no de
# los cuerpos ni de los comentarios.
# (1) Un cambio de CUERPO en util: util se recompila, geo se REUTILIZA, y la
#     salida igual cambia (geo llama a duplicar a través del .o de util).
sed -i 's/return x \* 2/return x * 3/' src/util.nx
out=$("$NB" build 2>&1); run=$(./libp 2>&1)
if echo "$out" | grep -q "compiling src/util (lib)" && echo "$out" | grep -q "reusing src/geo" && [ "$run" = "hola mundo 63 31 30 7" ]; then
    ok "cuerpo de util: se recompila util, geo se reutiliza y la salida cambia (63 31 30)"
else mal "cuerpo de util: $(echo "$out" | grep -E 'reusing|compiling' | tr '\n' ' ') → '$run'"; fi
# (2) Un comentario: no recompila a nadie que importe util.
printf '// solo un comentario\n' >> src/util.nx
out=$("$NB" build 2>&1)
if echo "$out" | grep -q "reusing src/geo"; then ok "un comentario en util no recompila a geo"
else mal "comentario en util recompiló geo: $(echo "$out" | grep -E 'reusing|compiling' | tr '\n' ' ')"; fi
# (3) La INTERFAZ cambia (una constante que geo usa en un cuerpo): geo se
#     recompila y la salida refleja el valor nuevo.
printf 'const SUMA_EXTRA: int = 0\n' >> src/util.nx
sed -i 's/export fn suma(p: Punto) -> int { return p.x + p.y }/export fn suma(p: Punto) -> int { return p.x + p.y + SUMA_EXTRA }/' src/geo.nx
# Sin llaves (la forma de nyx init): `import { duplicar, SUMA_EXTRA }` choca
# con la propia declaración de la constante (NYX1013, también sin [lib]; ficha
# en TASKS).
sed -i 's/^import { duplicar } from "src\/util"/import "src\/util"/' src/geo.nx
"$NB" build >/dev/null 2>&1
sed -i 's/const SUMA_EXTRA: int = 0/const SUMA_EXTRA: int = 100/' src/util.nx
out=$("$NB" build 2>&1); run=$(./libp 2>&1)
if echo "$out" | grep -q "compiling src/geo (lib)" && [ "$run" = "hola mundo 63 131 30 7" ]; then
    ok "cambia una constante de util: geo se recompila y ve el valor nuevo (131)"
else mal "constante de util: $(echo "$out" | grep -E 'reusing|compiling' | tr '\n' ' ') → '$run'"; fi
# geo vuelve a como estaba: la prueba de nyx test de abajo importa util con
# alias ANTES que geo, y eso deja a geo sin ver las constantes de util (bug del
# resolvedor anterior a [lib], ficha en TASKS).
sed -i 's/const SUMA_EXTRA: int = 100/const SUMA_EXTRA: int = 0/' src/util.nx
sed -i 's/ + SUMA_EXTRA }/ }/; s/^import "src\/util"$/import { duplicar } from "src\/util"/' src/geo.nx
"$NB" build >/dev/null 2>&1

# Layout: un campo NUEVO delante. Con un objeto de geo viejo, main leería p.x
# del offset equivocado; con la huella por cierre, geo se recompila.
sed -i 's/export struct Punto { x: int, y: int }/export struct Punto { z: int, x: int, y: int }/; s/return Punto { x: duplicar(x), y: y }/return Punto { z: 999, x: duplicar(x), y: y }/' src/geo.nx
out=$("$NB" build 2>&1); run=$(./libp 2>&1)
if [ "$run" = "hola mundo 63 31 30 7" ] && echo "$out" | grep -q "compiling src/geo (lib)"; then ok "cambio de layout: geo se recompila y main lee el campo correcto"
else mal "layout: '$run' ($(echo "$out" | grep -E 'compiling' | tr '\n' ' '))"; fi

echo "── [lib] modules: nyx test ──"
NT="$ROOT/nyx_test"
if [ -x "$NT" ]; then
    mkdir -p tests
    cat > tests/geo_test.nx <<'EOF2'
import { nuevo, suma, Punto } from "src/geo"
import "src/util" as u

test "geo por la interfaz" {
    let p: Punto = nuevo(10, 1)
    assert(suma(p) == 31)
    assert(u.duplicar(2) == 6)
}
EOF2
    out=$("$NT" 2>&1); rc=$?
    if [ "$rc" -eq 0 ] && echo "$out" | grep -q "\[lib\] modules:" && echo "$out" | grep -q "ALL TESTS PASSED"; then
        ok "nyx test enlaza las bibliotecas en vez de inlinearlas"
    else mal "nyx test con [lib] (rc=$rc): $(echo "$out" | tail -4 | tr '\n' ' ')"; fi
    if echo "$out" | grep -q "0 compilada(s)"; then ok "nyx test reutiliza los objetos que dejó nyx build"
    else mal "nyx test recompiló bibliotecas sin cambios: $(echo "$out" | grep 'lib\]')"; fi
    # El archivo probado ES una biblioteca con bloques test: se compila entero
    # y su objeto no se enlaza (si no, sus fns estarían definidas dos veces).
    printf '\ntest "util interno" {\n    assert(duplicar(2) == 6)\n}\n' >> src/util.nx
    out=$("$NT" src/util.nx 2>&1); rc=$?
    if [ "$rc" -eq 0 ] && echo "$out" | grep -q "1 passed"; then ok "probar el propio módulo de biblioteca no choca con su objeto"
    else mal "probar src/util.nx (rc=$rc): $(echo "$out" | tail -3 | tr '\n' ' ')"; fi
else
    mal "falta $NT — make build-test"
fi

echo "── [lib] modules: misma semántica que el inlining (fricción nyxerp 040001-team-1) ──"
# Regla: declarar un módulo en [lib] cambia CÓMO se compila, no QUÉ nombres ve
# quien lo importa. Hasta 2026-09-24 la forma sin llaves (`import "src/x"`, la de
# `nyx init` y la de 3.372 de los 3.373 imports de nyxerp) daba NYX1002 en cada
# llamada. El mismo proyecto se construye SIN y CON [lib] (todos sus módulos) y
# la salida tiene que ser idéntica: forma sin llaves, con alias, con llaves y un
# nombre NO listado, transitividad (main llama a hoja() sin importarla) y un
# struct SIN pub que devuelve una pub fn.
Q="$T/sem"; mkdir -p "$Q/src"; cd "$Q" || exit 1
cat > src/hoja.nx <<'EOF2'
import "std/error"
struct Caja { v: int }
#[derive(Fields)]
pub struct Fila { a: int, b: String }
pub fn hoja() -> int { return 5 }
pub fn caja(v: int) -> Caja { return Caja { v: v * 10 } }
pub fn etiqueta() -> int { return 200 }
pub fn aplicar(
    f: Fn(int) -> int,
    x: int
) -> Result<Caja, Error> {
    return Result.Ok(Caja { v: f(x) })
}
EOF2
cat > src/medio.nx <<'EOF2'
import "src/hoja"
fn etiqueta() -> int { return 100 }
pub fn medio() -> int { return hoja() + 1 + etiqueta() }
EOF2
cat > src/alias.nx <<'EOF2'
pub fn con_alias() -> int { return 7 }
EOF2
cat > src/llaves.nx <<'EOF2'
pub fn listada() -> int { return 1 }
pub fn no_listada() -> int { return 2 }
EOF2
cat > src/main.nx <<'EOF2'
import "src/medio"
import "src/alias" as al
import { listada } from "src/llaves"
fn main() -> int {
    let c: Caja = caja(3)
    println(int_to_string(medio()) + " " + int_to_string(hoja()) + " " + int_to_string(c.v) + " " + int_to_string(con_alias()) + " " + int_to_string(al.con_alias()) + " " + int_to_string(listada()) + " " + int_to_string(no_listada()))
    let campos: Array = Fila_campos()
    var ap: int = -1
    match aplicar(mas_uno, 4) {
        Result.Ok(k) => { ap = k.v }
        Result.Err(e) => { ap = -2 }
    }
    println(int_to_string(campos.length()) + " " + int_to_string(ap))
    return 0
}

fn mas_uno(n: int) -> int { return n + 1 }
EOF2
printf '[package]\nname = "sem"\nversion = "0.1.0"\n' > nyx.toml
"$NB" build >/dev/null 2>&1; sin=$(./sem 2>&1)
printf '[package]\nname = "sem"\nversion = "0.1.0"\n\n[lib]\nmodules = ["src/hoja", "src/medio", "src/alias", "src/llaves"]\n' > nyx.toml
rm -f sem   # que un build fallido no deje comparar contra el binario anterior
out=$("$NB" build 2>&1); rc=$?; con=$(./sem 2>&1)
# 106 = hoja()+1+etiqueta() PROPIA de medio (100), no la pública de hoja (200);
# 2 = campos de Fila por #[derive(Fields)] cruzando; 5 = aplicar(mas_uno, 4) con
# firma en varias líneas, parámetro Fn(int) -> int y retorno Result<Caja, Error>.
if [ "$sin" = "$(printf '106 5 30 7 7 1 2\n2 5')" ] && [ "$rc" -eq 0 ] && [ "$con" = "$sin" ]; then
    ok "con y sin [lib], la misma salida: formas de import, transitiva, struct privado, derive, Fn + Result en firma multilínea, propia gana"
else mal "semántica [lib] vs inlining: sin='$sin' con='$con' (rc=$rc) $(echo "$out" | grep -E 'error' | head -2 | tr '\n' ' ')"; fi
if [ "$(echo "$out" | grep -c '(lib)')" -eq 4 ]; then ok "los cuatro módulos se compilaron como bibliotecas (no cayó al inlining)"
else mal "no se compilaron los cuatro como bibliotecas: $(echo "$out" | grep compiling | tr '\n' ' ')"; fi
cd "$P" || exit 1

echo "── [lib] modules: tipos en la frontera y globales (fricción nyxerp 150024) ──"
# (a) Un String donde va un int, llamando a una fn de biblioteca: hasta
# 2026-09-24 `nyx build` salía en VERDE y el int recibía el puntero del texto
# (nyxerp: «expected 7, got 187650718645104»). Ahora el módulo llega entero a
# semantic y es NYX1005, como sin [lib]. (b) Regresión: un global de biblioteca
# con inicialización no constante (Map.new()) sigue funcionando —desde que el
# texto llega entero, su declaración es `external` y lo inicializa el programa—.
Z="$T/tipos"; mkdir -p "$Z/src"; cd "$Z" || exit 1
printf '[package]\nname = "tz"\nversion = "0.1.0"\n\n[lib]\nmodules = ["src/calc"]\n' > nyx.toml
cat > src/calc.nx <<'EOF2'
var tabla: Map = Map.new()
pub fn doble(n: int) -> int { return n * 2 }
pub fn poner(k: String) -> int {
    tabla.insert(k, 1)
    return tabla.keys().length()
}
EOF2
printf 'import "src/calc"\nfn main() -> int {\n    println(int_to_string(doble(21)) + " " + int_to_string(poner("a")) + " " + int_to_string(poner("b")))\n    return 0\n}\n' > src/main.nx
out=$("$NB" build 2>&1); rc=$?; run=$(./tz 2>&1)
if [ "$rc" -eq 0 ] && [ "$run" = "42 1 2" ]; then ok "global de biblioteca inicializado por el programa (42 1 2)"
else mal "global de biblioteca (rc=$rc): '$run' $(echo "$out" | grep -E 'error' | head -2 | tr '\n' ' ')"; fi
printf 'import "src/calc"\nfn main() -> int {\n    println(int_to_string(doble("7")))\n    return 0\n}\n' > src/main.nx
rm -f tz
out=$("$NB" build 2>&1); rc=$?
if [ "$rc" -ne 0 ] && echo "$out" | grep -q "NYX1005" && [ ! -x ./tz ]; then ok "String donde va int hacia una biblioteca: NYX1005 en el build, sin binario"
else mal "hueco de tipos en la frontera: rc=$rc, sin NYX1005 o con binario ($(echo "$out" | grep -E 'NYX|error' | head -1))"; fi
cd "$P" || exit 1

echo "── [lib] modules: una privada importada no le gana a la propia (nyxerp 220014) ──"
# Regresión de a408ff5f: desde que [lib] inlinea el módulo entero, su fn
# PRIVADA `ayuda` competía con la `ayuda` propia del archivo que lo importa
# (NYX2010 «AMBIGUA» en 8 archivos de pruebas de nyxerp). Además `nyx test`
# atribuía todo archivo de pruebas a un «módulo» tests/… aunque no estuviera en
# [lib]. Una privada ajena nunca le gana a una visible.
H="$T/homonima"; mkdir -p "$H/src" "$H/tests"; cd "$H" || exit 1
printf '[package]\nname = "hm"\nversion = "0.1.0"\n\n[lib]\nmodules = ["src/a"]\n' > nyx.toml
printf 'fn ayuda(x: int) -> int { return x + 1 }\npub fn usar() -> int { return ayuda(1) }\n' > src/a.nx
printf 'import "src/a"\n\nfn ayuda(texto: String) -> int { return texto.length() }\n\ntest "la local gana" {\n    assert(ayuda("hola") == 4, "")\n    assert(usar() == 2, "")\n}\n' > tests/a_test.nx
printf 'import "src/a"\nfn ayuda(texto: String) -> int { return texto.length() }\nfn main() -> int {\n    println(int_to_string(ayuda("hola")) + " " + int_to_string(usar()))\n    return 0\n}\n' > src/main.nx
out=$("$ROOT/nyx_test" 2>&1); rc=$?
if [ "$rc" -eq 0 ] && echo "$out" | grep -q "ALL TESTS PASSED"; then ok "nyx test: la fn propia del archivo de pruebas gana a la privada homónima importada"
else mal "privada homónima en nyx test (rc=$rc): $(echo "$out" | grep -E 'NYX|FAIL' | head -2 | tr '\n' ' ')"; fi
rm -f hm; out=$("$NB" build 2>&1); run=$(./hm 2>&1)
if [ "$run" = "4 2" ]; then ok "nyx build: la fn propia del programa gana a la privada homónima importada (4 2)"
else mal "privada homónima en nyx build: '$run' $(echo "$out" | grep -E 'NYX|error' | head -2 | tr '\n' ' ')"; fi
cd "$P" || exit 1

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
