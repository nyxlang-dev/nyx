#!/usr/bin/env bash
# =============================================================================
# bench_test_cache.sh — Banco de re-medición: ¿cuánto ahorraría una caché
#                       de binarios de prueba por hash del cierre?
#
# POR QUÉ EXISTE
#   La ficha de TASKS.md «nyx test/nyx build no cachean nada» (fricción nyxerp
#   20260918-000022-team-2) se justificaba con un desglose medido en v0.31.0:
#   el front-end era el 96% del costo de compilar una prueba. Ese 96% era en su
#   mayor parte el bug CUADRÁTICO de `emit`, arreglado en v0.32.2 (exponente
#   1,98 -> 1,03; la suite de nyxerp pasó de 2h14 a 13 min). Abrir el arco con
#   la cuenta vieja sería construir sobre un número que ya no existe.
#   Este banco vuelve a medir el desglose con el compilador de hoy.
#
# QUÉ MIDE
#   Replica EXACTAMENTE las fases que `compiler/test.nx` ejecuta por archivo de
#   prueba (ver el `script` que arma compile_and_run) y las cronometra por
#   separado, sobre proyectos sintéticos de cierre creciente:
#
#     front     nyx_bootstrap: resolver + inlinear + tipar + semantic + codegen -> .ll
#     clang_ll  clang -c del .ll -> .o          (sin -O: `nyx test` solo usa -O2 con --release)
#     link      clang del .o + libnyxrt.a -> binario
#     run       ejecutar el binario de prueba
#     hash      sha256 del cierre (lo que una caché PAGA en cada acierto)
#     rt_src    los 24 .c del runtime compilados desde fuente (lo que cuesta
#               NO tener NYX_RT_ARCHIVE; se reporta aparte porque ya es evitable)
#
#   Una caché por hash del cierre que ACIERTA se lleva front + clang_ll + link
#   y deja hash + run. Ese cociente es la respuesta que la ficha pide.
#
# QUÉ NO MIDE (a propósito)
#   La TASA DE ACIERTOS de una suite real: depende de qué toca cada equipo entre
#   dos corridas y de la topología de sus imports, no del compilador. El informe
#   deja el ahorro como función de esa tasa en vez de inventarle un número.
#
# USO
#   bash scripts/testing/bench_test_cache.sh [--sizes 8,30,88] [--reps 3]
#                                            [--workdir DIR] [--tsv ARCHIVO]
#                                            [--quick] [--keep]
# =============================================================================

set -uo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
ROOT="$(cd "$SCRIPT_DIR/../.." && pwd)"

SIZES="8,30,88"
REPS=3
WORKDIR=""
TSV=""
KEEP=0

while [ $# -gt 0 ]; do
    case "$1" in
        --sizes)   SIZES="$2"; shift 2 ;;
        --reps)    REPS="$2"; shift 2 ;;
        --workdir) WORKDIR="$2"; shift 2 ;;
        --tsv)     TSV="$2"; shift 2 ;;
        --quick)   SIZES="8,30"; REPS=1; shift ;;
        --keep)    KEEP=1; shift ;;
        -h|--help) sed -n '2,40p' "$0"; exit 0 ;;
        *) echo "argumento desconocido: $1" >&2; exit 2 ;;
    esac
done

if [ -t 1 ]; then BOLD='\033[1m'; GREEN='\033[0;32m'; YELLOW='\033[0;33m'; NC='\033[0m'
else BOLD=''; GREEN=''; YELLOW=''; NC=''; fi

# ── Guardas de entorno ────────────────────────────────────────────────────────
NYX_HOME_DIR="${NYX_HOME:-$HOME/.nyx}"
if [ ! -x "$NYX_HOME_DIR/nyx_bootstrap" ]; then
    echo "SKIP: no hay toolchain instalado en $NYX_HOME_DIR (corre 'make install-local')."
    exit 0
fi
command -v clang >/dev/null 2>&1 || { echo "SKIP: clang no está en el PATH."; exit 0; }
command -v sha256sum >/dev/null 2>&1 || { echo "SKIP: sha256sum no está en el PATH."; exit 0; }

# El pico de memoria del front-end era ~1.9 GB antes del fix de `emit` y ~234 MB
# después. Si la máquina no tiene margen, el earlyoom del servidor mata el
# bootstrap a mitad y el número sale mentiroso (o no sale).
MEM_AVAIL_MB=$(awk '/MemAvailable/ {print int($2/1024)}' /proc/meminfo 2>/dev/null || echo 99999)
if [ "$MEM_AVAIL_MB" -lt 600 ]; then
    echo "SKIP: solo ${MEM_AVAIL_MB} MB disponibles; el banco necesita >=600 MB para no medir swap."
    exit 0
fi

if [ -z "$WORKDIR" ]; then
    WORKDIR="$(mktemp -d "${TMPDIR:-/tmp}/nyx-bench-cache.XXXXXX")"
    [ "$KEEP" -eq 1 ] || trap 'rm -rf "$WORKDIR"' EXIT
fi
mkdir -p "$WORKDIR"

now_ms() { date +%s%3N; }

# ── Ventana tranquila ─────────────────────────────────────────────────────────
# Esta máquina tiene 2 núcleos y la comparten varias sesiones. El 2026-09-21 la
# línea de base del arco `semantic-indice-simbolos` salió **9% alta** porque la
# sesión de nyxerp estaba corriendo su suite (`verificar.sh --afectados`) al 99%
# de un núcleo: un número así no se puede comparar contra la medición de después
# del arreglo, que es para lo único que existe una línea de base.
#
# El chequeo es posible porque el banco lanza sus procesos de forma SÍNCRONA: en
# el instante en que se mide, ninguno de los propios está vivo, así que cualquier
# compilador que se vea es de otra sesión.
COMPETIDORES="nyx_bootstrap nyx_test nyx_build nyx_check cc1 cc1plus clang lld"
quien_compite() {
    local p
    for p in $COMPETIDORES; do pgrep -a -x "$p" 2>/dev/null; done
    # clang-19, clang-17…: el nombre del binario lleva la versión mayor.
    pgrep -a -x -f 'clang-[0-9]+' 2>/dev/null
}

esperar_ventana_tranquila() {
    local espera="${NYX_BENCH_WAIT:-1800}" t0 ahora quien
    t0=$(date +%s)
    while :; do
        quien=$(quien_compite | head -3)
        [ -z "$quien" ] && return 0
        ahora=$(date +%s)
        if [ $(( ahora - t0 )) -ge "$espera" ]; then
            echo ""
            echo "  ABORTA: otra sesión lleva $(( ahora - t0 ))s compilando en esta máquina."
            printf '    %s\n' "$quien"
            echo "  Medir contra un núcleo ocupado da un número que no se puede comparar."
            echo "  Sube NYX_BENCH_WAIT (segundos) si quieres esperar más."
            exit 1
        fi
        printf '\r  esperando una ventana tranquila (%ss)… ocupa: %s' \
               "$(( ahora - t0 ))" "$(printf '%s' "$quien" | head -1 | cut -c1-60)"
        sleep 10
    done
}

# ── Generador del proyecto sintético ──────────────────────────────────────────
# Topología en TRES CAPAS con reuso, no una lista plana: es la forma que tiene
# un proyecto real (una prueba toca unos pocos módulos de API, que arrastran
# dominio, que arrastra utilidades) y además ejercita el dedup del resolvedor —
# un módulo importado por varios tiene que inlinearse UNA vez.
#   capa util     60% de N, sin imports
#   capa dominio  30% de N, importa 3 utils cada uno
#   capa api      10% de N, importa 3 dominios cada uno
# La prueba importa toda la capa api y llama a cada módulo, así NINGÚN módulo
# del cierre es código muerto que codegen pueda descartar: el .ll crece con N.

emit_module() {
    local id="$1" deps="$2" out="$3"
    {
        echo "// modulo sintetico $id — generado por bench_test_cache.sh (NO editar a mano)"
        local d
        for d in $deps; do echo "import \"src/mod_$d\" as m$d"; done
        echo ""
        echo "pub struct Reg$id {"
        echo "    id: int,"
        echo "    nombre: String,"
        echo "    valor: float,"
        echo "}"
        echo ""
        echo "pub fn crear_$id(n: int) -> Reg$id {"
        echo "    return Reg$id { id: n, nombre: \"reg-$id\", valor: 1.5 }"
        echo "}"
        echo ""
        # 10 funciones con formas distintas de IR (aritmética, strings, arrays,
        # Option, condicionales) para que el cuerpo del módulo no sea una sola
        # forma repetida que el optimizador trate uniforme.
        local k
        for k in 0 1 2 3 4 5 6 7 8 9; do
            echo "pub fn calc_${id}_$k(a: int, b: int) -> int {"
            echo "    var acc: int = 0"
            echo "    var i: int = 0"
            echo "    while i < 8 {"
            echo "        acc = acc + (a * i) + b + $k"
            echo "        if acc > 1000 { acc = acc - 500 }"
            echo "        i = i + 1"
            echo "    }"
            echo "    return acc"
            echo "}"
            echo ""
        done
        echo "pub fn texto_$id(n: int) -> String {"
        echo "    var s: String = \"m$id\""
        echo "    var i: int = 0"
        echo "    while i < 4 {"
        echo "        s = s + \":\" + (n + i).to_string()"
        echo "        i = i + 1"
        echo "    }"
        echo "    return s"
        echo "}"
        echo ""
        echo "pub fn lista_$id(n: int) -> Array<int> {"
        echo "    var out: Array<int> = []"
        echo "    var i: int = 0"
        echo "    while i < n {"
        echo "        out.push(calc_${id}_0(i, 1))"
        echo "        i = i + 1"
        echo "    }"
        echo "    return out"
        echo "}"
        echo ""
        echo "pub fn buscar_$id(arr: Array<int>, val: int) -> Option<int> {"
        echo "    var i: int = 0"
        echo "    while i < arr.length() {"
        echo "        if arr[i] == val { return Option.Some(i) }"
        echo "        i = i + 1"
        echo "    }"
        echo "    return Option.None"
        echo "}"
        echo ""
        # Agregadora: llama a lo propio Y a cada dependencia, para que el cierre
        # entero esté vivo desde la raíz.
        echo "pub fn total_$id() -> int {"
        echo "    var acc: int = 0"
        for k in 0 1 2 3 4 5 6 7 8 9; do
            echo "    acc = acc + calc_${id}_$k(2, 3)"
        done
        echo "    let r: Reg$id = crear_$id(7)"
        echo "    acc = acc + r.id"
        echo "    acc = acc + texto_$id(1).length()"
        echo "    acc = acc + lista_$id(4).length()"
        for d in $deps; do
            echo "    acc = acc + m$d.total_$d()"
        done
        echo "    return acc"
        echo "}"
    } > "$out"
}

# Dependencias de un módulo de la capa `pfx`, por PARTICIÓN EN BLOQUES y no por
# round-robin. El round-robin dejaba módulos que nadie importaba: con N=88, 38 de
# los 88 quedaban fuera del cierre y la tabla decía «88». Acá el padre `i` se
# queda con su bloque de hijos —la partición cubre a TODOS— más el primer hijo del
# bloque siguiente, que es lo que produce el reuso (un hijo importado por dos
# padres) sin el cual no se ejercita el dedup del resolvedor.
pick_deps() {
    local i="$1" pool="$2" parents="$3" pfx="$4"
    local lo=$(( (i - 1) * pool / parents + 1 ))
    local hi=$(( i * pool / parents ))
    local out="" j
    for j in $(seq "$lo" "$hi"); do
        out="$out $(printf "%s%03d" "$pfx" "$j")"
    done
    # Solapamiento con el bloque de al lado (si existe): reuso real.
    local nxt=$(( hi + 1 ))
    [ "$nxt" -le "$pool" ] && out="$out $(printf "%s%03d" "$pfx" "$nxt")"
    echo "$out"
}

gen_project() {
    local n="$1" dir="$2"
    rm -rf "$dir"
    mkdir -p "$dir/src" "$dir/tests"

    cat > "$dir/nyx.toml" <<TOML
[package]
name = "bench_cache"
version = "0.1.0"
main = "src/main.nx"
TOML
    printf 'fn main() -> int {\n    return 0\n}\n' > "$dir/src/main.nx"

    local n_api=$(( n / 10 )); [ "$n_api" -lt 1 ] && n_api=1
    local n_dom=$(( n * 3 / 10 )); [ "$n_dom" -lt 1 ] && n_dom=1
    local n_util=$(( n - n_api - n_dom )); [ "$n_util" -lt 1 ] && n_util=1

    local i j d deps id
    # utils: sin dependencias
    for i in $(seq 1 "$n_util"); do
        id=$(printf "u%03d" "$i")
        emit_module "$id" "" "$dir/src/mod_$id.nx"
    done
    # dominio: 3 utils cada uno (round-robin, así hay reuso real)
    for i in $(seq 1 "$n_dom"); do
        id=$(printf "d%03d" "$i")
        deps=$(pick_deps "$i" "$n_util" "$n_dom" u)
        emit_module "$id" "$deps" "$dir/src/mod_$id.nx"
    done
    # api: 3 dominios cada uno
    for i in $(seq 1 "$n_api"); do
        id=$(printf "a%03d" "$i")
        deps=$(pick_deps "$i" "$n_dom" "$n_api" d)
        emit_module "$id" "$deps" "$dir/src/mod_$id.nx"
    done

    # La prueba: importa toda la capa api y la ejerce.
    {
        for i in $(seq 1 "$n_api"); do
            id=$(printf "a%03d" "$i")
            echo "import \"src/mod_$id\" as x$i"
        done
        echo ""
        echo "test \"cierre completo\" {"
        echo "    var acc: int = 0"
        for i in $(seq 1 "$n_api"); do
            id=$(printf "a%03d" "$i")
            echo "    acc = acc + x$i.total_$id()"
        done
        echo "    assert(acc > 0, \"el cierre produce un total positivo\")"
        echo "}"
    } > "$dir/tests/cierre_test.nx"
}

# ── libnyxrt.a: UNA vez para todo el banco ────────────────────────────────────
# Es exactamente lo que hace run_integration_tests.sh. Se construye acá para que
# la fase `link` mida el link y no la recompilación del runtime; el costo de NO
# tenerlo se mide aparte, en rt_src.
RT_DIR="$WORKDIR/rt"
mkdir -p "$RT_DIR"
build_rt_archive() {
    local c
    for c in "$NYX_HOME_DIR"/runtime/*.c "$NYX_HOME_DIR"/runtime/os/os_posix.c; do
        clang -O2 -c "$c" -o "$RT_DIR/$(basename "${c%.c}").o" 2>/dev/null || return 1
    done
    ar rcs "$RT_DIR/libnyxrt.a" "$RT_DIR"/*.o 2>/dev/null || return 1
    return 0
}

LIBS="-lgc -lpthread -ldl -lm -lssl -lcrypto -lz"
RT_SRCS="runtime/runtime.c runtime/strings.c runtime/runtime-arrays.c runtime/maps.c runtime/file-io.c runtime/iterators.c runtime/net.c runtime/thread.c runtime/regex.c runtime/time.c runtime/crypto.c runtime/tls.c runtime/scheduler.c runtime/event_loop.c runtime/sqlite_adapter.c runtime/compress.c runtime/random.c runtime/url.c runtime/msgpack.c runtime/websocket.c runtime/persist.c runtime/http2.c runtime/process.c runtime/os/os_posix.c"

# ── Una medición completa de un archivo de prueba ─────────────────────────────
# Deja en las globales M_* los milisegundos de cada fase. Devuelve 1 si algo
# falló (y deja el log en $WORKDIR/last-error.log) para que el banco no reporte
# tiempos de una compilación que no terminó.
measure_once() {
    local proj="$1" tag="$2"
    local src="$WORKDIR/src_$tag"
    local log="$WORKDIR/last-error.log"
    cp "$proj/tests/cierre_test.nx" "$src.nx"
    rm -f "$src.ll" "$src.o" "$src.bin"

    local t0 t1 t2 t3 t4 t5
    # El candado COMPARTIDO del toolchain, igual que nyx test: si alguien corre
    # `make install-local` a mitad del banco, las fases medirían dos compiladores
    # distintos.
    exec 9>"$NYX_HOME_DIR/.toolchain.lock"
    command -v flock >/dev/null 2>&1 && flock -s 9

    t0=$(now_ms)
    ( cd "$NYX_HOME_DIR" && env -u NYX_SKIP_SEMANTIC \
        NYX_PROJECT_DIR="$proj" NYX_SRC="$src.nx" NYX_SRC_DISPLAY="tests/cierre_test.nx" \
        ./nyx_bootstrap ) > "$log" 2>&1
    local rc=$?
    t1=$(now_ms)
    if [ $rc -ne 0 ] || [ ! -f "$src.ll" ]; then exec 9>&-; return 1; fi

    clang -Wno-deprecated-declarations -c "$src.ll" -o "$src.o" >> "$log" 2>&1 || { exec 9>&-; return 1; }
    t2=$(now_ms)

    clang "$src.o" "$RT_DIR/libnyxrt.a" $LIBS -o "$src.bin" >> "$log" 2>&1 || { exec 9>&-; return 1; }
    t3=$(now_ms)

    exec 9>&-

    # GUARDA 1 — el cierre entró ENTERO. Cada módulo aporta exactamente una
    # `total_<id>`; si codegen descartara módulos como código muerto, el banco
    # estaría midiendo un cierre más chico del que dice en la tabla.
    # Ojo con el nombre: codegen MANGLA las funciones de los módulos
    # transitivos (@src_mod_u001__total_u001) y deja pelado el resto, así que
    # se cuentan los sufijos total_<id> DISTINTOS, no el prefijo.
    local defs want
    defs=$(grep '^define ' "$src.ll" | grep -oE '@[A-Za-z0-9_]*total_[a-z][0-9]{3}\(' \
           | grep -oE 'total_[a-z][0-9]{3}' | sort -u | wc -l)
    want=$(ls "$proj"/src/mod_*.nx | wc -l)
    if [ "$defs" -ne "$want" ]; then
        echo "el .ll define $defs funciones total_* pero el proyecto tiene $want módulos" > "$log"
        return 1
    fi

    "$src.bin" > "$WORKDIR/run.log" 2>&1
    local run_rc=$?
    t4=$(now_ms)

    # GUARDA 2 — la prueba PASÓ. `assert` aborta el proceso al primer fallo, así
    # que un binario roto daría un `run` ridículamente corto y un ahorro inflado.
    if [ $run_rc -ne 0 ] || ! grep -q "PASS: cierre completo" "$WORKDIR/run.log"; then
        cp "$WORKDIR/run.log" "$log"
        return 1
    fi

    # El hash del cierre. Una implementación real recibe la lista de fuentes del
    # resolvedor (ya las lee una por una para inlinearlas) y la identidad del
    # compilador del string de versión, no hasheando el binario de 40 MB.
    cat "$proj"/src/*.nx "$proj"/tests/cierre_test.nx "$NYX_HOME_DIR/std/prelude.nx" 2>/dev/null \
        | sha256sum > /dev/null
    t5=$(now_ms)

    M_FRONT=$(( t1 - t0 ))
    M_CLANG=$(( t2 - t1 ))
    M_LINK=$(( t3 - t2 ))
    M_RUN=$(( t4 - t3 ))
    M_HASH=$(( t5 - t4 ))
    M_LL_LINES=$(wc -l < "$src.ll")
    return 0
}

# Pico de RSS del front-end, en una pasada APARTE de las cronometradas: el
# wrapper que mide la memoria (acá python + getrusage, porque esta máquina no
# trae /usr/bin/time) suma su propio arranque, y contaminar el cronómetro con
# eso sería peor que no tener el dato.
#
# Por qué el dato importa: la ficha vieja daba el pico por estructural en
# ~1,75 GB — «lo que impide correr dos compilaciones a la vez en 3,8 GB» — y
# resultó ser el bug cuadrático de `emit`. Sin medirlo no se puede afirmar que
# dejó de serlo, ni descartar que la superlinealidad que queda sea presión de
# memoria en vez de cómputo.
measure_rss_mb() {
    local proj="$1" tag="$2"
    local src="$WORKDIR/rss_src_$tag"
    cp "$proj/tests/cierre_test.nx" "$src.nx"
    ( cd "$NYX_HOME_DIR" && env -u NYX_SKIP_SEMANTIC \
        NYX_PROJECT_DIR="$proj" NYX_SRC="$src.nx" NYX_SRC_DISPLAY="tests/cierre_test.nx" \
        python3 -c 'import resource,subprocess,sys
subprocess.run(["./nyx_bootstrap"], stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
# ru_maxrss viene en KB en Linux
print(resource.getrusage(resource.RUSAGE_CHILDREN).ru_maxrss // 1024)' ) 2>/dev/null || echo 0
    rm -f "$src.nx" "$src.ll"
}

# Lo que cuesta compilar los 24 .c del runtime desde fuente: el precio de NO
# usar NYX_RT_ARCHIVE. Se mide una sola vez (no depende del tamaño del cierre).
measure_rt_sources() {
    local t0 t1
    t0=$(now_ms)
    ( cd "$NYX_HOME_DIR" && clang -c $RT_SRCS >/dev/null 2>&1; rm -f ./*.o ) 
    t1=$(now_ms)
    echo $(( t1 - t0 ))
}

median() { printf '%s\n' "$@" | sort -n | awk '{v[NR]=$1} END {print v[int((NR+1)/2)]}'; }

# ── Corrida ───────────────────────────────────────────────────────────────────
echo -e "\n${BOLD}=====================================================${NC}"
echo -e "${BOLD}  Banco de re-medición — caché por hash del cierre${NC}"
echo -e "${BOLD}=====================================================${NC}\n"
echo "  toolchain : $NYX_HOME_DIR"
"$ROOT/scripts/nyx" --version 2>/dev/null | head -1 | sed 's/^/  version   : /' || true
echo "  máquina   : $(uname -m), $(nproc) núcleos, ${MEM_AVAIL_MB} MB disponibles"
echo "  tamaños   : $SIZES módulos · $REPS repetición(es), se reporta la MEDIANA"
echo "  workdir   : $WORKDIR"
echo ""

esperar_ventana_tranquila
echo -n "  Construyendo libnyxrt.a (una vez)... "
if build_rt_archive; then echo -e "${GREEN}ok${NC}"; else echo "FALLÓ"; exit 1; fi

echo -n "  Midiendo el runtime desde fuente (precio de no usar NYX_RT_ARCHIVE)... "
RT_SRC_MS=$(measure_rt_sources)
echo -e "${GREEN}${RT_SRC_MS} ms${NC}\n"

[ -n "$TSV" ] && echo -e "modulos\tlineas_nx\tlineas_ll\tfront_ms\tclang_ms\tlink_ms\trun_ms\thash_ms\trss_mb" > "$TSV"

printf "  %-8s %9s %10s %9s %9s %8s %8s %8s %11s %9s %8s\n" \
       "módulos" "líneas nx" "líneas ll" "front" "clang_ll" "link" "run" "hash" "TOTAL" "cacheable" "RSS pico"
printf "  %s\n" "-------------------------------------------------------------------------------------------------"

SUMMARY=""
IFS=',' read -ra SIZE_LIST <<< "$SIZES"
for N in "${SIZE_LIST[@]}"; do
    PROJ="$WORKDIR/proj_$N"
    gen_project "$N" "$PROJ"
    NX_LINES=$(cat "$PROJ"/src/*.nx "$PROJ"/tests/*.nx | wc -l)

    FRONTS=(); CLANGS=(); LINKS=(); RUNS=(); HASHES=(); LL=0; SUCIAS=0
    ok=1
    for r in $(seq 1 "$REPS"); do
        esperar_ventana_tranquila
        if ! measure_once "$PROJ" "n${N}_r${r}"; then
            echo ""
            echo -e "  ${YELLOW}FALLÓ la compilación con N=$N (rep $r). Últimas líneas:${NC}"
            tail -15 "$WORKDIR/last-error.log" | sed 's/^/    /'
            ok=0; break
        fi
        # ¿Alguien entró a compilar MIENTRAS corría la rep? Entonces el número
        # mide dos cosas. Se descarta y se repite, hasta 2 veces.
        if [ -n "$(quien_compite)" ]; then
            SUCIAS=$(( SUCIAS + 1 ))
            if [ "$SUCIAS" -le 2 ]; then
                echo ""
                echo "  rep $r de N=$N descartada: otra sesión entró a compilar a mitad. Se repite."
                r=$(( r - 1 ))
                continue
            fi
            echo ""
            echo "  ⚠ N=$N: la máquina no se queda quieta; el número lleva ruido ajeno."
        fi
        FRONTS+=("$M_FRONT"); CLANGS+=("$M_CLANG"); LINKS+=("$M_LINK")
        RUNS+=("$M_RUN"); HASHES+=("$M_HASH"); LL="$M_LL_LINES"
    done
    [ "$ok" -eq 0 ] && { echo "  (se aborta el banco: un número de una compilación rota no sirve)"; exit 1; }

    F=$(median "${FRONTS[@]}"); C=$(median "${CLANGS[@]}"); L=$(median "${LINKS[@]}")
    R=$(median "${RUNS[@]}");   H=$(median "${HASHES[@]}")
    RSS=$(measure_rss_mb "$PROJ" "n$N")
    TOTAL=$(( F + C + L + R ))
    CACHEABLE=$(( F + C + L ))
    PCT=$(awk -v c="$CACHEABLE" -v t="$TOTAL" 'BEGIN{ printf "%.1f", (t>0 ? 100*c/t : 0) }')

    printf "  %-8s %9s %10s %7s ms %7s ms %6s ms %6s ms %6s ms %8s ms %8s%% %6s MB\n" \
           "$N" "$NX_LINES" "$LL" "$F" "$C" "$L" "$R" "$H" "$TOTAL" "$PCT" "$RSS"
    [ -n "$TSV" ] && echo -e "$N\t$NX_LINES\t$LL\t$F\t$C\t$L\t$R\t$H\t$RSS" >> "$TSV"
    SUMMARY="$SUMMARY$N|$LL|$F|$C|$L|$R|$H|$TOTAL|$CACHEABLE|$PCT
"
done

# ── Lectura ───────────────────────────────────────────────────────────────────
echo ""
echo -e "  ${BOLD}Qué se lleva una caché que ACIERTA${NC}"
echo "  (acierto = ningún fuente del cierre cambió: se corre el binario guardado)"
echo ""
printf "  %-8s %14s %14s %14s %12s\n" "módulos" "hoy (ms)" "con acierto" "ahorro" "ahorro %"
printf "  %s\n" "----------------------------------------------------------------------"
while IFS='|' read -r n ll f c l r h total cacheable pct; do
    [ -z "$n" ] && continue
    HIT=$(( r + h ))
    SAVED=$(( total - HIT ))
    printf "  %-8s %14s %14s %14s %11s%%\n" "$n" "$total" "$HIT" "$SAVED" "$pct"
done <<< "$SUMMARY"

echo ""
echo "  El runtime desde fuente (${RT_SRC_MS} ms) NO está en esas cuentas: ya es evitable"
echo "  hoy con NYX_RT_ARCHIVE, que nyx test honra desde el 2026-09-17. Quien no lo"
echo "  use paga esos ${RT_SRC_MS} ms por archivo de prueba, cache o no cache."
echo ""
echo "  Ahorro de una suite = aciertos × (total − run − hash). La tasa de aciertos"
echo "  depende de qué tocó el equipo entre dos corridas, no del compilador: este"
echo "  banco no la inventa."
echo ""
