#!/usr/bin/env bash
# ============================================================
#  Matriz de invariancia por forma del receptor
# ============================================================
# La propiedad, y la única que se verifica acá: el mismo método sobre el
# mismo dato da el MISMO resultado sin importar cómo se nombre el receptor
# (variable local, campo de struct, retorno de función, elemento de array,
# global, referencia). Cualquier discrepancia entre formas es un bug de la
# familia silently-wrong POR DEFINICIÓN — no hace falta escribir el valor
# esperado a mano, y por eso la matriz no puede volverse un verificador que
# no puede fallar por tener el oráculo mal.
#
# Segunda propiedad, del mismo tipo (mecánica, sin oráculo escrito a mano):
# invariancia por paréntesis. `x.length` (propiedad) debe dar lo mismo que
# `x.length()` (llamada) PARA LA MISMA FORMA. El valor esperado sale de la
# corrida de métodos de esa misma celda, no de una constante. Esta forma
# resultó una superficie de bugs propia (Tarea 4): semantic no la cubre
# porque NYX1022 solo inspecciona LLAMADAS.
#
# El receptor se INLINEA como expresión (`s.v.length()`, `mk()[0]`, ...) en
# vez de copiarse a un local. Copiarlo a un local convertiría todas las
# formas en la forma "local" y la matriz sería verde y vacía.
#
# Celdas inaplicables o rechazadas: no toda forma existe para todo tipo. Se
# listan EXPLÍCITAMENTE al final. Una celda omitida en silencio sería
# exactamente el modo de fallo que esta matriz existe para eliminar.
#
# Veredictos y cuáles ponen roja la matriz:
#   OK          la forma coincide con la referencia            -> verde
#   DIVERGE     compila, corre, y da OTRO resultado            -> ROJO
#   MUDO        compila con rc=0 pero el compilador imprimió
#               un error y siguió (firma exacta de silently-wrong) -> ROJO
#   RUNTIME     el binario aborta / exit != 0                  -> ROJO
#   RECHAZADA   error de compilación RUIDOSO (NYX1022/NYX2007) -> listada
#   IR_INVALIDO clang rechaza el IR emitido (ruidoso)          -> listada
#
# RECHAZADA/IR_INVALIDO no ponen roja la matriz: son fallos ruidosos, que es
# el objetivo de esta campaña. Pero se listan porque son huecos de cobertura
# reales. Con NYX_MATRIX_STRICT=1 también ponen roja la matriz.
set -uo pipefail
cd "$(dirname "$0")/../.."
ROOT="$PWD"

OUT=tests/compiler/dispatch-matrix
mkdir -p "$OUT"
rm -f "$OUT"/*.nx "$OUT"/*.ll "$OUT"/*.out "$OUT"/*.log "$OUT"/*.bin

STRICT="${NYX_MATRIX_STRICT:-0}"
FAILED=0

# ------------------------------------------------------------------
#  Piso de celdas verificadas
# ------------------------------------------------------------------
# Sin este piso la matriz sale VERDE con CERO celdas verificadas, que es la
# variante degradada del "verificador que no puede fallar": si el runtime no
# compila (los clang de abajo llevan 2>/dev/null y `ar rcs` tiene éxito con
# los .o que sí salieron), cada celda falla al LINKEAR → veredicto
# IR_INVALIDO, que por diseño no rompe el gate → `Celdas verificadas: 0/29`
# y `✓ todas las formas coinciden`, exit 0. Lo mismo si una regresión de
# codegen hiciera rechazar todas las celdas.
#
# El número es el que se verifica HOY. Si mañana una celda pasa
# legítimamente a rechazo ruidoso, bajar el piso es un acto consciente y
# revisable (igual que el ratchet de prints-mudos), no una degradación muda.
CELDAS_MINIMAS=17
declare -a OMITIDAS=()
declare -a DIVERGENCIAS=()
declare -a CONOCIDAS_VISTAS=()
CELDAS_OK=0
CELDAS_TOTAL=0

# ------------------------------------------------------------------
#  Divergencias CONOCIDAS, con ficha y repro
# ------------------------------------------------------------------
# Mismo patrón que KNOWN_OUTPUT_FAILURES en run_bootstrap_tests.sh: son bugs
# con ficha abierta, se cuentan e imprimen APARTE, y no rompen el exit code.
# La matriz NO se ajusta para que pasen: la celda sigue generándose y
# midiéndose igual, y si la divergencia DEJA de ocurrir la matriz lo grita
# (XPASS) para que la entrada se pode. Una lista de excepciones que nadie
# poda es la alfombra bajo la que se barre todo.
#
# Cada entrada: una clave "tipo/forma (grupo)" en CONOCIDAS_CLAVES y su ficha
# + repro en la MISMA posición de CONOCIDAS_FICHAS.
# (Vacías desde el cierre del residuo, post-v0.24.0: "map/local (propiedad)"
#  — `m.length` sobre una VARIABLE Map — ahora aborta con NYX2007 en el camino
#  de identificador de codegen_field_access, igual que la forma anidada desde
#  la Tarea 4. La celda pasa a rechazo ruidoso y se lista en OMITIDAS.)
CONOCIDAS_CLAVES=()
CONOCIDAS_FICHAS=()

# es_conocida <clave> -> 0 si está en la lista; deja la ficha en FICHA_CONOCIDA
FICHA_CONOCIDA=""
es_conocida() {
    local k=$1 i
    for i in "${!CONOCIDAS_CLAVES[@]}"; do
        if [ "$k" = "${CONOCIDAS_CLAVES[$i]}" ]; then
            FICHA_CONOCIDA="${CONOCIDAS_FICHAS[$i]}"
            return 0
        fi
    done
    FICHA_CONOCIDA=""
    return 1
}

# registrar_divergencia <clave> <detalle>: rompe la matriz salvo que la celda
# esté en la lista de conocidas.
registrar_divergencia() {
    local k=$1 detalle=$2
    if es_conocida "$k"; then
        CONOCIDAS_VISTAS+=("$k")
        echo "  ⚠ $k — divergencia CONOCIDA (no rompe el gate): $detalle"
        return
    fi
    DIVERGENCIAS+=("$k: $detalle")
    FAILED=1
}

# marcar_no_divergente <clave>: la celda NO divergió. Si estaba en la lista de
# conocidas es un XPASS — hay que podarla a mano.
marcar_no_divergente() {
    local k=$1
    if es_conocida "$k"; then
        CONOCIDAS_VISTAS+=("$k")
        XPASS+=("$k")
    fi
}
declare -a XPASS=()

RT="runtime/runtime.c runtime/strings.c runtime/runtime-arrays.c runtime/maps.c \
runtime/file-io.c runtime/iterators.c runtime/net.c runtime/thread.c runtime/regex.c \
runtime/time.c runtime/crypto.c runtime/tls.c runtime/scheduler.c runtime/event_loop.c \
runtime/sqlite_adapter.c runtime/compress.c runtime/random.c runtime/url.c \
runtime/msgpack.c runtime/websocket.c runtime/persist.c runtime/http2.c runtime/process.c \
runtime/llama_adapter.c runtime/os/os_posix.c"
LIBS="-lgc -lpthread -ldl -lm -lssl -lcrypto -lz"

if [ ! -x ./nyx_bootstrap ]; then
    echo "✗ falta ./nyx_bootstrap — corré 'make bootstrap' primero"
    exit 1
fi

# El costo real de una celda es compilar los 23 .c del runtime. Se compilan
# UNA vez a un archivo estático y cada celda solo linkea: ~4s -> ~0.3s.
RTLIB="$OUT/libnyxrt.a"
echo "· precompilando runtime (una vez)..."
mkdir -p "$OUT/obj"
# -P 4 y no "todos a la vez": 24 clang -O2 en paralelo son un pico de memoria
# que en una caja chica (1.8 GB) manda el sistema a swap. 4 mantiene el
# beneficio (el cuello es CPU, no concurrencia) sin el pico.
printf '%s\n' $RT | xargs -P 4 -I{} sh -c 'clang -O2 -c "$1" -o "'"$OUT"'/obj/$(basename "$1" .c).o" 2>/dev/null' _ {}
ar rcs "$RTLIB" "$OUT"/obj/*.o 2>/dev/null || { echo "✗ no se pudo armar el runtime"; exit 1; }

FORMAS=(local campo retorno elemento global referencia)
TIPOS=(string array map)

# ---------- probes por tipo (el receptor entra como @R@) ----------
probes_metodos() {
    case $1 in
    string) cat <<'P'
    print("len=" + int_to_string(@R@.length()))
    print("chars=" + int_to_string(@R@.char_length()))
    print("idx=" + int_to_string(@R@.indexOf("mundo")))
    print("sub=" + @R@.substring(0, 4))
    print("up=" + @R@.toUpper())
    print("trim=" + @R@.trim())
    if @R@.contains("mun") { print("has=si") } else { print("has=no") }
    if @R@.startsWith("hola") { print("pre=si") } else { print("pre=no") }
P
    ;;
    array) cat <<'P'
    print("len=" + int_to_string(@R@.length()))
    print("idx=" + int_to_string(@R@.indexOf(2)))
    if @R@.contains(3) { print("has=si") } else { print("has=no") }
P
    ;;
    map) cat <<'P'
    print("len=" + int_to_string(@R@.size()))
    if @R@.contains("a") { print("has=si") } else { print("has=no") }
    print("get=" + @R@.get("b"))
    print("keys=" + int_to_string(@R@.keys().length()))
P
    ;;
    esac
}

# Forma "propiedad sin paréntesis": el par mecánico de `length()`.
probes_propiedad() {
    case $1 in
    string|array) echo '    print("len=" + int_to_string(@R@.length))' ;;
    map)          echo '    print("len=" + int_to_string(@R@.length))' ;;
    esac
}

# ---------- literales y tipos por tipo ----------
# El mapa es Map<String,String> y no Map<String,int> a propósito: con valor
# int, `int_to_string(m.get(k))` emite IR inválido (get devuelve ptr y no se
# desempaqueta a i64) y clang rechaza el módulo ENTERO, lo que borraría la
# fila de map completa. Ese bug es RUIDOSO (no de esta familia) y queda
# catalogado en el reporte de la Tarea 5, no escondido acá.
nyx_tipo()  { case $1 in string) echo 'String';; array) echo 'Array<int>';; map) echo 'Map<String, String>';; esac; }
nyx_lit()   { case $1 in string) echo '"hola mundo"';; array) echo '[3, 1, 2]';; map) echo '{"a": "uno", "b": "dos"}';; esac; }

# ---------- generador de una celda ----------
# gen <tipo> <forma> <grupo> <archivo>; devuelve 1 si la forma no es
# representable en el lenguaje para ese tipo (celda omitida a propósito).
gen() {
    local tipo=$1 forma=$2 grupo=$3 f=$4
    local T; T=$(nyx_tipo "$tipo")
    local LIT; LIT=$(nyx_lit "$tipo")
    local body
    if [ "$grupo" = metodos ]; then body=$(probes_metodos "$tipo"); else body=$(probes_propiedad "$tipo"); fi

    : > "$f"
    case $forma in
    local)
        {   echo "fn main() -> int {"
            echo "    var r: $T = $LIT"
            echo "${body//@R@/r}"
            echo "    return 0"; echo "}"; } >> "$f" ;;
    campo)
        {   echo "struct Caja { v: $T }"
            echo "fn main() -> int {"
            echo "    let s: Caja = Caja { v: $LIT }"
            echo "${body//@R@/s.v}"
            echo "    return 0"; echo "}"; } >> "$f" ;;
    retorno)
        {   echo "fn mk() -> $T { return $LIT }"
            echo "fn main() -> int {"
            echo "${body//@R@/mk()}"
            echo "    return 0"; echo "}"; } >> "$f" ;;
    elemento)
        {   echo "fn main() -> int {"
            echo "    let arr: Array<$T> = [$LIT]"
            echo "${body//@R@/arr[0]}"
            echo "    return 0"; echo "}"; } >> "$f" ;;
    global)
        {   echo "const G: $T = $LIT"
            echo "fn main() -> int {"
            echo "${body//@R@/G}"
            echo "    return 0"; echo "}"; } >> "$f" ;;
    referencia)
        {   echo "fn probe(r: &$T) -> int {"
            echo "${body//@R@/r}"
            echo "    return 0"; echo "}"
            echo "fn main() -> int {"
            echo "    var base: $T = $LIT"
            echo "    probe(&base)"
            echo "    return 0"; echo "}"; } >> "$f" ;;
    *)  return 1 ;;
    esac
    return 0
}

# ---------- ejecutor de una celda ----------
# Deja el veredicto en CELL_VERDICT y la salida en CELL_OUT.
CELL_VERDICT=""; CELL_OUT=""; CELL_INFO=""
corre_celda() {
    local f=$1
    local ll="${f%.nx}.ll" bin="${f%.nx}.bin" clog="${f%.nx}.nyx.log" cclog="${f%.nx}.clang.log"
    CELL_OUT=""; CELL_INFO=""
    if ! NYX_SRC="$f" ./nyx_bootstrap > "$clog" 2>&1; then
        CELL_VERDICT=RECHAZADA
        CELL_INFO=$(grep -oE 'NYX[0-9]{4}[^"]*' "$clog" | head -1)
        [ -z "$CELL_INFO" ] && CELL_INFO=$(grep -iE 'error' "$clog" | head -1)
        return
    fi
    # rc=0 PERO el compilador imprimió un error y siguió: firma exacta de
    # silently-wrong (el caso `m.length`, print mudo + i64 0 + exit 0).
    # El ` *` antes de `[:\[]` NO es opcional: el formato canónico del
    # compilador es `error [NYX2007]: ...`, con un ESPACIO antes del corchete.
    # Sin él el patrón sólo matcheaba `Error: ...` (los 8 sitios actuales del
    # ratchet de prints-mudos) y cualquier print mudo futuro que usara la
    # convención NYXnnnn con rc=0 se escapaba — justo la firma que la matriz
    # existe para cazar.
    if grep -qE '^ *[Ee]rror *[:\[]' "$clog"; then
        CELL_VERDICT=MUDO
        CELL_INFO=$(grep -E '^ *[Ee]rror *[:\[]' "$clog" | head -1 | sed 's/^ *//')
        return
    fi
    if ! clang -O2 "$ll" "$RTLIB" $LIBS -o "$bin" > "$cclog" 2>&1; then
        CELL_VERDICT=IR_INVALIDO
        CELL_INFO=$(grep -E 'error:' "$cclog" | head -1)
        return
    fi
    local out ec
    out=$(timeout 60 "$bin" 2>&1); ec=$?
    if [ $ec -ne 0 ]; then
        CELL_VERDICT=RUNTIME; CELL_INFO="exit=$ec ${out}"; return
    fi
    CELL_OUT="$out"; CELL_VERDICT=CORRIO
}

# ---------- matriz A: invariancia por forma ----------
declare -A LEN_DE_FORMA=()   # "$tipo/$forma" -> valor de len= medido con LLAMADA

echo
echo "=== A. Invariancia por forma del receptor (métodos) ==="
for tipo in "${TIPOS[@]}"; do
    echo "[$tipo]"
    ref=""; ref_forma=""
    for forma in "${FORMAS[@]}"; do
        f="$OUT/${tipo}_${forma}_metodos.nx"
        if ! gen "$tipo" "$forma" metodos "$f"; then
            OMITIDAS+=("$tipo/$forma (métodos): forma no representable para este tipo")
            continue
        fi
        CELDAS_TOTAL=$((CELDAS_TOTAL+1))
        corre_celda "$f"
        case $CELL_VERDICT in
        RECHAZADA)
            echo "  ⊘ $tipo/$forma — RECHAZADA (ruidoso): $CELL_INFO"
            OMITIDAS+=("$tipo/$forma (métodos): el compilador la rechaza ruidosamente — $CELL_INFO")
            marcar_no_divergente "$tipo/$forma (métodos)"
            [ "$STRICT" = 1 ] && FAILED=1 ;;
        IR_INVALIDO)
            echo "  ⊘ $tipo/$forma — IR INVÁLIDO (ruidoso, clang): $CELL_INFO"
            OMITIDAS+=("$tipo/$forma (métodos): el IR emitido no compila — $CELL_INFO")
            marcar_no_divergente "$tipo/$forma (métodos)"
            [ "$STRICT" = 1 ] && FAILED=1 ;;
        MUDO)
            registrar_divergencia "$tipo/$forma (métodos)" "MUDO — compiló con rc=0 tras imprimir «$CELL_INFO»" ;;
        RUNTIME)
            registrar_divergencia "$tipo/$forma (métodos)" "fallo en runtime — $CELL_INFO" ;;
        CORRIO)
            LEN_DE_FORMA["$tipo/$forma"]=$(printf '%s\n' "$CELL_OUT" | grep '^len=' | head -1 | cut -d= -f2)
            if [ -z "$ref" ]; then
                ref="$CELL_OUT"; ref_forma="$forma"
                echo "  · $tipo/$forma (referencia)"
                CELDAS_OK=$((CELDAS_OK+1))
                marcar_no_divergente "$tipo/$forma (métodos)"
            elif [ "$CELL_OUT" == "$ref" ]; then
                echo "  ✓ $tipo/$forma == $tipo/$ref_forma"
                CELDAS_OK=$((CELDAS_OK+1))
                marcar_no_divergente "$tipo/$forma (métodos)"
            else
                echo "  ✗ $tipo/$forma DIFIERE de $tipo/$ref_forma"
                diff <(printf '%s\n' "$ref") <(printf '%s\n' "$CELL_OUT") | sed 's/^/      /'
                registrar_divergencia "$tipo/$forma (métodos)" "difiere de $tipo/$ref_forma"
            fi ;;
        esac
    done
done

# ---------- matriz B: invariancia por paréntesis ----------
echo
echo "=== B. Invariancia por paréntesis (x.length vs x.length()) ==="
for tipo in "${TIPOS[@]}"; do
    echo "[$tipo]"
    for forma in "${FORMAS[@]}"; do
        esperado="${LEN_DE_FORMA[$tipo/$forma]:-}"
        if [ -z "$esperado" ]; then
            OMITIDAS+=("$tipo/$forma (propiedad): sin valor de referencia — la celda de métodos no corrió")
            continue
        fi
        f="$OUT/${tipo}_${forma}_propiedad.nx"
        if ! gen "$tipo" "$forma" propiedad "$f"; then
            OMITIDAS+=("$tipo/$forma (propiedad): forma no representable para este tipo")
            continue
        fi
        CELDAS_TOTAL=$((CELDAS_TOTAL+1))
        corre_celda "$f"
        case $CELL_VERDICT in
        RECHAZADA)
            echo "  ⊘ $tipo/$forma.length — RECHAZADA (ruidoso): $CELL_INFO"
            OMITIDAS+=("$tipo/$forma (propiedad): el compilador la rechaza ruidosamente — $CELL_INFO")
            marcar_no_divergente "$tipo/$forma (propiedad)"
            [ "$STRICT" = 1 ] && FAILED=1 ;;
        IR_INVALIDO)
            echo "  ⊘ $tipo/$forma.length — IR INVÁLIDO (ruidoso, clang): $CELL_INFO"
            OMITIDAS+=("$tipo/$forma (propiedad): el IR emitido no compila — $CELL_INFO")
            marcar_no_divergente "$tipo/$forma (propiedad)"
            [ "$STRICT" = 1 ] && FAILED=1 ;;
        MUDO)
            registrar_divergencia "$tipo/$forma (propiedad)" "MUDO en \`$tipo/$forma.length\` — compiló con rc=0 tras imprimir «$CELL_INFO»" ;;
        RUNTIME)
            registrar_divergencia "$tipo/$forma (propiedad)" "fallo en runtime — $CELL_INFO" ;;
        CORRIO)
            medido=$(printf '%s\n' "$CELL_OUT" | grep '^len=' | head -1 | cut -d= -f2)
            if [ "$medido" == "$esperado" ]; then
                echo "  ✓ $tipo/$forma.length == .length() ($medido)"
                CELDAS_OK=$((CELDAS_OK+1))
                marcar_no_divergente "$tipo/$forma (propiedad)"
            else
                echo "  ✗ $tipo/$forma.length = $medido pero .length() = $esperado"
                registrar_divergencia "$tipo/$forma (propiedad)" ".length=$medido vs .length()=$esperado"
            fi ;;
        esac
    done
done

# ---------- cierre ----------
echo
echo "────────────────────────────────────────────────────────"
echo "Celdas verificadas: $CELDAS_OK/$CELDAS_TOTAL (piso: $CELDAS_MINIMAS)"
echo
echo "Celdas omitidas o no verificables (${#OMITIDAS[@]}) — listadas a propósito:"
if [ ${#OMITIDAS[@]} -eq 0 ]; then
    echo "  (ninguna)"
else
    for s in "${OMITIDAS[@]}"; do echo "  - $s"; done
fi

# Las conocidas se imprimen SIEMPRE, con ficha y repro, aunque el gate pase.
# Si se volvieran invisibles al estar verde el exit code, la lista dejaría de
# podarse y sería exactamente la alfombra que este bloque existe para evitar.
echo
echo "Divergencias CONOCIDAS con ficha (${#CONOCIDAS_VISTAS[@]}/${#CONOCIDAS_CLAVES[@]} observadas) — no rompen el gate:"
if [ ${#CONOCIDAS_CLAVES[@]} -eq 0 ]; then
    echo "  (ninguna — la lista está vacía, que es el objetivo)"
else
    for i in "${!CONOCIDAS_CLAVES[@]}"; do
        echo "  - ${CONOCIDAS_CLAVES[$i]}"
        printf '    %s\n' "${CONOCIDAS_FICHAS[$i]}"
    done
fi

# XPASS: una conocida que dejó de divergir. No rompe el exit code (es buena
# noticia) pero tiene que ser imposible de ignorar: hay que podarla a mano, o
# la exención queda permanente y se traga cualquier regresión futura.
if [ ${#XPASS[@]} -gt 0 ]; then
    echo
    echo "⚠⚠ XPASS (${#XPASS[@]}): estas divergencias CONOCIDAS ya NO ocurren."
    echo "   Sacalas de CONOCIDAS_CLAVES/CONOCIDAS_FICHAS en este script:"
    for x in "${XPASS[@]}"; do echo "   - $x"; done
fi

if [ ${#DIVERGENCIAS[@]} -gt 0 ]; then
    echo
    echo "Divergencias NUEVAS, sin ficha (${#DIVERGENCIAS[@]}):"
    for d in "${DIVERGENCIAS[@]}"; do echo "  - $d"; done
fi

# Piso: verificar menos de lo que se verificaba ayer NO puede salir verde.
if [ "$CELDAS_OK" -lt "$CELDAS_MINIMAS" ]; then
    echo
    echo "✗ PISO ROTO: se verificaron $CELDAS_OK celdas y el piso es $CELDAS_MINIMAS."
    echo "  La matriz verifica MENOS que antes. Causas típicas, en orden:"
    echo "    1. el runtime no compiló → toda celda falla al linkear (IR_INVALIDO)"
    echo "    2. una regresión de codegen hace rechazar celdas que antes corrían"
    echo "    3. una celda pasó legítimamente a rechazo ruidoso → bajá"
    echo "       CELDAS_MINIMAS a conciencia, en un commit que lo explique"
    echo "  Sin este piso la matriz saldría VERDE con 0 celdas verificadas."
    FAILED=1
fi

rm -rf "$OUT/obj" "$RTLIB"

echo
if [ "$FAILED" -ne 0 ]; then
    echo "✗ la matriz falló (divergencias sin ficha abierta y/o piso roto)"
    echo "  (los .nx generados quedan en $OUT/ para reproducir)"
    exit 1
fi
echo "✓ todas las formas verificadas coinciden (${#CONOCIDAS_VISTAS[@]} divergencia(s) conocida(s) con ficha, arriba)"
