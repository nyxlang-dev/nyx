#!/usr/bin/env bash
# =============================================================================
# run_wasm_tests.sh — WASM (wasm32-wasi) target tests
#
# Compila cada tests/wasm/test-wasm-*.nx a .wasm con el toolchain liviano
# Debian (clang del sistema + wasi-libc), lo corre bajo wasmtime y compara el
# output contra el .expected correspondiente.
#
# EN: compiles each tests/wasm/test-wasm-*.nx to .wasm (system clang +
#     Debian wasi-libc), runs it under wasmtime, diffs against .expected.
#
# SKIP limpio (exit 0) si falta el toolchain — no es un fallo del monorepo:
#   sudo apt install wasi-libc libclang-rt-19-dev-wasm32 lld-19
#   wasmtime: https://github.com/bytecodealliance/wasmtime/releases
#
# OJO: usa el script.nx compartido del root (como los demás runners) —
# suites SIEMPRE en serie, nunca en paralelo con make test.
# =============================================================================

set -uo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
ROOT="$(cd "$SCRIPT_DIR/../.." && pwd)"
cd "$ROOT"

# Serializa contra otros runners: todos comparten script.nx/script.ll/
# script_bin en la raíz del repo (ver lib_testroot_lock.sh).
source "$SCRIPT_DIR/lib_testroot_lock.sh"
nyx_testroot_lock_acquire

if [ -t 1 ]; then
    GREEN='\033[0;32m'
    RED='\033[0;31m'
    YELLOW='\033[0;33m'
    BOLD='\033[1m'
    NC='\033[0m'
else
    GREEN='' RED='' YELLOW='' BOLD='' NC=''
fi

PASSED=0
FAILED=0
# Sale con 1 si algo de lo que SÍ corrió falló, aunque después se salte el resto.
salida_parcial() { [ "$FAILED" -eq 0 ] && echo 0 || echo 1; }

# ── Guard de target con ubicación (NO necesita el toolchain wasm) ──────────
# El error «'X' is not supported on target 'wasm32-wasi'» sale del codegen,
# antes de clang, así que se prueba aunque falten wasi-libc o wasmtime. El
# fixture tiene tres usos no soportados en tres archivos: el driver tiene que
# listarlos TODOS (acumulados, sin duplicar), cada uno con archivo:línea y la
# función que lo contiene, salir con rc != 0 y NO escribir el .ll. Control
# positivo: un programa wasm válido no emite el error.
if [ -x ./nyx_bootstrap ]; then
    printf "  %-32s" "[guard] usos con archivo:línea"
    GT_FIX="tests/wasm/fixtures/target-guard"
    GT_DIR="$(mktemp -d)"
    cp "$GT_FIX/main.nx" "$GT_DIR/principal.nx"
    NYX_LANG=en NYX_TARGET=wasm32-wasi NYX_NO_GC=1 NYX_SRC="$GT_DIR/principal.nx" \
        NYX_SRC_DISPLAY="main.nx" NYX_PROJECT_DIR="$ROOT/$GT_FIX" ./nyx_bootstrap > "$GT_DIR/guard.log" 2>&1
    gt_rc=$?
    gt_why=""
    gt_n=$(grep -c "is not supported on target 'wasm32-wasi'" "$GT_DIR/guard.log")
    if [ "$gt_rc" -eq 0 ]; then
        gt_why="rc 0: el driver no abortó ante usos no soportados"
    elif [ -f "$GT_DIR/principal.ll" ]; then
        gt_why="escribió el .ll pese al error (PROJECT_STATE #25)"
    elif [ "$gt_n" -ne 3 ]; then
        gt_why="esperaba 3 usos no soportados (acumulados y sin duplicar), hubo $gt_n"
    else
        for esperado in "--> main.nx:8, in function 'servir'" \
                        "--> modulo_a.nx:3, in function 'leer_linea'" \
                        "--> modulo_b.nx:3, in function 'contar'"; do
            grep -qF -- "$esperado" "$GT_DIR/guard.log" || gt_why="falta «$esperado»"
        done
    fi
    if [ -z "$gt_why" ]; then
        cp tests/wasm/test-wasm-03-fib.nx "$GT_DIR/fib.nx"
        if ! NYX_LANG=en NYX_TARGET=wasm32-wasi NYX_NO_GC=1 NYX_SRC="$GT_DIR/fib.nx" ./nyx_bootstrap > "$GT_DIR/fib.log" 2>&1; then
            gt_why="control positivo: test-wasm-03-fib no compiló para wasm32-wasi"
        elif grep -q "not supported on target" "$GT_DIR/fib.log"; then
            gt_why="control positivo: un programa wasm válido emitió «not supported»"
        fi
    fi
    if [ -z "$gt_why" ]; then
        echo -e "${GREEN}PASS${NC}"; PASSED=$((PASSED + 1))
    else
        echo -e "${RED}FAIL${NC}"
        echo "      $gt_why"
        grep -v '^\s*$' "$GT_DIR/guard.log" | head -12 | sed 's/^/      /'
        FAILED=$((FAILED + 1))
    fi
    rm -rf "$GT_DIR"
fi

# ── Guard de target: concurrencia (NO necesita el toolchain wasm) ──────────
# spawn/await/select/go_sleep/spawn_task/task_* no tienen runtime en wasm (sin
# thread.c ni scheduler.c en runtime/wasm.srcs). Hasta el 2026-09-14 pasaban
# codegen y morían en wasm-ld con `undefined symbol: nyx_goroutine_*`, sin
# archivo ni línea. Tienen que frenarse en el codegen, cada uno con su
# ubicación, más UNA nota con la alternativa del navegador (std/browser).
if [ -x ./nyx_bootstrap ]; then
    printf "  %-32s" "[guard] concurrencia en wasm"
    GC_FIX="tests/wasm/fixtures/target-guard-concurrencia"
    GC_DIR="$(mktemp -d)"
    cp "$GC_FIX/main.nx" "$GC_DIR/principal.nx"
    NYX_LANG=en NYX_TARGET=wasm32-wasi NYX_NO_GC=1 NYX_SRC="$GC_DIR/principal.nx" \
        NYX_SRC_DISPLAY="main.nx" NYX_PROJECT_DIR="$ROOT/$GC_FIX" ./nyx_bootstrap > "$GC_DIR/guard.log" 2>&1
    gc_rc=$?
    gc_why=""
    gc_n=$(grep -c "is not supported on target 'wasm32-wasi'" "$GC_DIR/guard.log")
    gc_nota=$(grep -c "has no threads or goroutine scheduler" "$GC_DIR/guard.log")
    if [ "$gc_rc" -eq 0 ]; then
        gc_why="rc 0: spawn/await/select no se frenaron en el codegen"
    elif [ -f "$GC_DIR/principal.ll" ]; then
        gc_why="escribió el .ll pese al error (PROJECT_STATE #25)"
    elif [ "$gc_n" -ne 5 ]; then
        gc_why="esperaba 5 usos no soportados, hubo $gc_n"
    elif [ "$gc_nota" -ne 1 ]; then
        gc_why="esperaba UNA nota con la alternativa de std/browser, hubo $gc_nota"
    elif grep -qF "'await' is not supported" "$GC_DIR/guard.log"; then
        # Arco async-real-wasm: `await doble(21)` (main.nx:15) ya NO es un uso no
        # soportado — en wasm baja a llamada directa. spawn y compañía siguen.
        gc_why="'await' de una async fn por nombre se reportó como no soportado"
    else
        for esperado in "'spawn' is not supported" \
                        "'select' is not supported" "'go_sleep' is not supported" \
                        "--> main.nx:15, in function 'main'" \
                        "--> main.nx:16, in function 'main'" \
                        "--> main.nx:17, in function 'main'" \
                        "--> main.nx:6, in function 'escuchar'"; do
            grep -qF -- "$esperado" "$GC_DIR/guard.log" || gc_why="falta «$esperado»"
        done
    fi
    if [ -z "$gc_why" ]; then
        echo -e "${GREEN}PASS${NC}"; PASSED=$((PASSED + 1))
    else
        echo -e "${RED}FAIL${NC}"
        echo "      $gc_why"
        grep -v '^\s*$' "$GC_DIR/guard.log" | head -14 | sed 's/^/      /'
        FAILED=$((FAILED + 1))
    fi
    rm -rf "$GC_DIR"
fi

WASI_SYSROOT="${WASI_SYSROOT:-/usr}"
WASI_LIBC="$WASI_SYSROOT/lib/wasm32-wasi/libc.a"
WASMTIME="$(command -v wasmtime || true)"
[ -z "$WASMTIME" ] && [ -x "$HOME/.local/bin/wasmtime" ] && WASMTIME="$HOME/.local/bin/wasmtime"
# binaryen: solo lo necesitan los programas con imports que suspenden (Asyncify,
# arco async-real-wasm). NYX_WASM_OPT gana sobre el PATH: binaryen extraído sin
# root (apt-get download + dpkg -x) se usa con un wrapper que setea LD_LIBRARY_PATH.
WASM_OPT="${NYX_WASM_OPT:-$(command -v wasm-opt || true)}"
if [ -n "$WASM_OPT" ] && [ ! -x "$WASM_OPT" ]; then
    echo "AVISO: NYX_WASM_OPT=$WASM_OPT no es ejecutable; los tests que suspenden se saltan"
    WASM_OPT=""
fi
SKIPPED=0

# ── Skip limpio si falta el toolchain (patrón run_integration_tests.sh) ──
if [ ! -f "$WASI_LIBC" ]; then
    echo "SKIP: wasi-libc no encontrado en $WASI_LIBC"
    echo "      (sudo apt install wasi-libc libclang-rt-19-dev-wasm32 lld-19)"
    exit $(salida_parcial)
fi
if [ -z "$WASMTIME" ] || [ ! -x "$WASMTIME" ]; then
    echo "SKIP: wasmtime no encontrado (PATH ni ~/.local/bin)"
    exit $(salida_parcial)
fi
if [ ! -x ./nyx_bootstrap ]; then
    echo "SKIP: nyx_bootstrap no compilado (make bootstrap)"
    exit 0
fi

# La lista viene de runtime/wasm.srcs: fuente ÚNICA. El comentario que estaba
# acá decía «mantener en sync con WASM_RUNTIME_SRCS del Makefile», que era la
# prueba de que se mantenía a mano.
WASM_RUNTIME_SRCS="$(grep -v '^#' runtime/wasm.srcs | grep -v '^$' | tr '\n' ' ')"
WASM_CFLAGS="--target=wasm32-wasi --sysroot=$WASI_SYSROOT -O2 -Iruntime/wasi -Wl,-z,stack-size=1048576 -Wl,--export-table"

TMP_DIR="$(mktemp -d)"
trap 'rm -rf "$TMP_DIR"' EXIT

echo -e "\n${BOLD}=======================================${NC}"
echo -e "${BOLD}   Nyx WASM Tests (wasm32-wasi)${NC}"
echo -e "${BOLD}=======================================${NC}\n"

for t in tests/wasm/test-wasm-*.nx; do
    name="$(basename "$t" .nx)"
    expected="tests/wasm/$name.expected"
    imports_mjs="tests/wasm/$name.imports.mjs"
    printf "  %-32s" "$name"

    if [ ! -f "$expected" ]; then
        echo -e "${RED}FAIL (sin .expected)${NC}"
        FAILED=$((FAILED + 1))
        continue
    fi

    # Tests con FFI extern "js": wasmtime no tiene los imports js:: → esa
    # pasada se SALTEA y el test corre solo bajo el shim node/browser.
    # EN: extern "js" tests only run under the node/browser shim.
    uses_js_ffi=0
    if grep -q 'extern "js"' "$t"; then uses_js_ffi=1; fi
    # std/dom y std/browser son SOLO-js (declaran extern "js" adentro):
    # importar cualquiera implica FFI aunque el test no tenga el literal.
    if grep -qE 'import .*"std/(dom|browser|browser_await)"' "$t"; then uses_js_ffi=1; fi
    # Tests de RE-ENTRADA (afterStart en su .imports.mjs): el output esperado
    # incluye lo que pasa post-_start — wasmtime no tiene ese hook.
    if [ -f "$imports_mjs" ] && grep -q "afterStart" "$imports_mjs"; then uses_js_ffi=1; fi

    cp "$t" script.nx
    if ! NYX_TARGET=wasm32-wasi NYX_NO_GC=1 ./nyx_bootstrap > "$TMP_DIR/compile.log" 2>&1; then
        echo -e "${RED}FAIL (nyx compile)${NC}"
        tail -3 "$TMP_DIR/compile.log" | sed 's/^/      /'
        FAILED=$((FAILED + 1))
        continue
    fi

    # Imports que SUSPENDEN (arco async-real-wasm): la lista sale del .ll, donde
    # la escribe el compilador, o de un archivo lateral del test que ejerce el
    # shim sin la sintaxis. Sin lista, el .wasm es el de siempre, sin wasm-opt.
    asy_list="$(grep -m1 '^; nyx-asyncify-imports: ' script.ll 2>/dev/null | sed 's/^; nyx-asyncify-imports: //')"
    if [ -z "$asy_list" ] && [ -f "tests/wasm/$name.asyncify-imports" ]; then
        asy_list="$(grep -v '^#' "tests/wasm/$name.asyncify-imports" | grep -v '^$' | sed 's/^/js./' | paste -sd, -)"
    fi
    if [ -n "$asy_list" ] && [ -z "$WASM_OPT" ]; then
        # SKIP y no PASS: sin wasm-opt no se verificó nada del camino async.
        echo -e "${YELLOW}SKIP (sin wasm-opt: usa imports que suspenden — apt install binaryen, o NYX_WASM_OPT)${NC}"
        SKIPPED=$((SKIPPED + 1))
        continue
    fi

    if ! clang $WASM_CFLAGS script.ll $WASM_RUNTIME_SRCS -o "$TMP_DIR/$name.wasm" > "$TMP_DIR/link.log" 2>&1; then
        echo -e "${RED}FAIL (wasm link)${NC}"
        tail -3 "$TMP_DIR/link.log" | sed 's/^/      /'
        FAILED=$((FAILED + 1))
        continue
    fi

    if [ -n "$asy_list" ]; then
        if ! "$WASM_OPT" "$TMP_DIR/$name.wasm" --asyncify --pass-arg=asyncify-imports@"$asy_list" -O2 \
               -o "$TMP_DIR/$name.async.wasm" > "$TMP_DIR/opt.log" 2>&1; then
            echo -e "${RED}FAIL (wasm-opt --asyncify)${NC}"
            tail -3 "$TMP_DIR/opt.log" | sed 's/^/      /'
            FAILED=$((FAILED + 1))
            continue
        fi
        mv "$TMP_DIR/$name.async.wasm" "$TMP_DIR/$name.wasm"
    fi

    if [ "$uses_js_ffi" -eq 1 ]; then
        echo "(wasmtime SKIP: usa extern \"js\")"
    else
        if ! timeout 30 "$WASMTIME" "$TMP_DIR/$name.wasm" > "$TMP_DIR/actual.txt" 2>&1; then
            echo -e "${RED}FAIL (wasmtime run)${NC}"
            tail -3 "$TMP_DIR/actual.txt" | sed 's/^/      /'
            FAILED=$((FAILED + 1))
            continue
        fi

        if diff -q "$TMP_DIR/actual.txt" "$expected" > /dev/null 2>&1; then
            echo -e "${GREEN}PASS${NC}"
            PASSED=$((PASSED + 1))
        else
            echo -e "${RED}FAIL (output)${NC}"
            diff "$TMP_DIR/actual.txt" "$expected" | head -6 | sed 's/^/      /'
            FAILED=$((FAILED + 1))
            continue
        fi
    fi

    # Segunda pasada (si hay node): mismo .wasm bajo el shim WASI del NAVEGADOR
    # (examples/browser/nyx-wasi-shim.js vía run-node.mjs) — test headless del
    # polyfill browser. Los tests js-ffi pasan su .imports.mjs si existe.
    # EN: same .wasm through the browser WASI shim under node.
    if command -v node > /dev/null 2>&1; then
        printf "  %-32s" "$name (browser-shim)"
        shim_args=("$TMP_DIR/$name.wasm")
        [ -f "$imports_mjs" ] && shim_args+=("$imports_mjs")
        if timeout 30 node examples/browser/run-node.mjs "${shim_args[@]}" > "$TMP_DIR/actual-shim.txt" 2>&1 \
           && diff -q "$TMP_DIR/actual-shim.txt" "$expected" > /dev/null 2>&1; then
            echo -e "${GREEN}PASS${NC}"
            PASSED=$((PASSED + 1))
        else
            echo -e "${RED}FAIL (node shim)${NC}"
            diff "$TMP_DIR/actual-shim.txt" "$expected" 2>/dev/null | head -6 | sed 's/^/      /'
            FAILED=$((FAILED + 1))
        fi
    elif [ "$uses_js_ffi" -eq 1 ]; then
        echo "  (sin node: test js-ffi no verificado)"
    fi
done

# ==============================================================
# make wasm multi-archivo (handoff #7): el import local "util" del fixture
# debe resolver relativo al dir del FILE (NYX_PROJECT_DIR). Corre bajo
# wasmtime si está; si no, bajo el shim node.
# ==============================================================
MF="tests/wasm/fixtures/multifile"
printf "  %-32s" "multifile (make wasm)"
if make wasm FILE="$MF/main.nx" > "$TMP_DIR/multifile-build.log" 2>&1 && [ -f main.wasm ]; then
    mf_ok=0
    if [ -n "$WASMTIME" ]; then
        if timeout 30 "$WASMTIME" main.wasm > "$TMP_DIR/multifile-out.txt" 2>&1            && diff -q "$TMP_DIR/multifile-out.txt" "$MF/main.expected" > /dev/null 2>&1; then
            mf_ok=1
        fi
    elif command -v node > /dev/null 2>&1; then
        if timeout 30 node examples/browser/run-node.mjs main.wasm > "$TMP_DIR/multifile-out.txt" 2>&1            && diff -q "$TMP_DIR/multifile-out.txt" "$MF/main.expected" > /dev/null 2>&1; then
            mf_ok=1
        fi
    fi
    if [ "$mf_ok" -eq 1 ]; then
        echo -e "${GREEN}PASS${NC}"
        PASSED=$((PASSED + 1))
    else
        echo -e "${RED}FAIL${NC}"
        diff "$TMP_DIR/multifile-out.txt" "$MF/main.expected" 2>/dev/null | head -6 | sed 's/^/      /'
        FAILED=$((FAILED + 1))
    fi
    rm -f main.wasm
else
    echo -e "${RED}FAIL (build)${NC}"
    tail -3 "$TMP_DIR/multifile-build.log" | sed 's/^/      /'
    FAILED=$((FAILED + 1))
fi

# ── Proyecto completo por el CLI: `nyx build --target wasm32-wasi` ──────
#
# Hasta el 2026-09-10 NINGUNA suite cubría este camino: se probaba `make wasm`
# (que compila UN archivo) y nunca el del CLI, así que la ruta que usa un
# proyecto real pudo estar rota meses sin que nadie se enterara — y de hecho
# tenía tres fallas mudas cuando se la fue a mirar.
#
# La aserción es la que pidió el equipo de nyxerp y no podía automatizar: **el
# mismo código produce la misma salida en nativo y en wasm**. Contra una salida
# esperada escrita a mano probaría mi idea de lo que hace el programa; contra el
# nativo prueba lo único que importa, que los dos coinciden.
echo -n "  [proyecto] nyx build --target wasm32-wasi ... "
PROJ_SRC="tests/wasm/fixtures/project"
if [ ! -d "$PROJ_SRC" ]; then
    echo -e "${YELLOW}SKIP (sin fixture)${NC}"
else
    PROJ_TMP="$TMP_DIR/proj"
    rm -rf "$PROJ_TMP"; mkdir -p "$PROJ_TMP"
    cp -r "$PROJ_SRC"/. "$PROJ_TMP"/
    NYX_BIN=""
    for cand in "$ROOT/nyx_build" "$HOME/.nyx/nyx_build" "$HOME/.nyx/bin/nyx_build"; do
        [ -x "$cand" ] && NYX_BIN="$cand" && break
    done
    if [ -z "$NYX_BIN" ]; then
        echo -e "${YELLOW}SKIP (sin nyx_build)${NC}"
    else
        proj_ok=0
        # Nativo primero: es la referencia contra la que se compara.
        if (cd "$PROJ_TMP" && NYX_HOME="$ROOT" "$NYX_BIN" build > build-nat.log 2>&1) \
           && (cd "$PROJ_TMP" && ./wasmproj > out-nativo.txt 2>&1); then
            if (cd "$PROJ_TMP" && NYX_HOME="$ROOT" "$NYX_BIN" build --target wasm32-wasi > build-wasm.log 2>&1) \
               && [ -f "$PROJ_TMP/target/wasm32-wasi/wasmproj.wasm" ]; then
                if command -v wasmtime > /dev/null 2>&1; then
                    if (cd "$PROJ_TMP" && timeout 30 wasmtime target/wasm32-wasi/wasmproj.wasm > out-wasm.txt 2>&1) \
                       && diff -q "$PROJ_TMP/out-nativo.txt" "$PROJ_TMP/out-wasm.txt" > /dev/null 2>&1; then
                        proj_ok=1
                    fi
                else
                    # Sin runtime de wasm no se puede comparar la salida. Que el
                    # .wasm se haya construido igual vale —es la mitad del camino
                    # y es la que estaba sin cubrir—, pero se REPORTA DISTINTO.
                    #
                    # Antes esta rama también decía «PASS», idéntico al caso
                    # completo: quien leyera la salida en una máquina sin wasmtime
                    # creería que la paridad nativo↔wasm se verificó, cuando lo
                    # único verificado fue que el archivo se generó. Un verde que
                    # no distingue qué midió es la clase de cosa que después se
                    # cita como evidencia de algo que nadie comprobó.
                    proj_ok=2
                fi
            fi
        fi
        if [ "$proj_ok" -eq 1 ]; then
            echo -e "${GREEN}PASS${NC}"; PASSED=$((PASSED + 1))
        elif [ "$proj_ok" -eq 2 ]; then
            echo -e "${GREEN}PASS${NC} ${YELLOW}(solo build — sin wasmtime no se comparó la salida)${NC}"
            PASSED=$((PASSED + 1))
        else
            echo -e "${RED}FAIL${NC}"
            echo "      nativo vs wasm:"
            diff "$PROJ_TMP/out-nativo.txt" "$PROJ_TMP/out-wasm.txt" 2>/dev/null | head -6 | sed 's/^/      /'
            tail -3 "$PROJ_TMP/build-wasm.log" 2>/dev/null | sed 's/^/      /'
            FAILED=$((FAILED + 1))
        fi
    fi
fi

# ── Otro punto de entrada: `nyx build --target wasm32-wasi --main <archivo>` ──
#
# Fricción nyxerp 2026-09-14: el main del proyecto dibuja (puro) Y sirve
# (sockets), así que el proyecto entero no compila a wasm, y no había forma de
# llevar solo la parte pura. El fixture reproduce eso: src/main.nx usa
# tcp_read_line; src/navegador.nx solo llama al dibujante.
#
# Tres aserciones, en este orden:
#   1. CONTROL NEGATIVO: sin --main el build wasm falla por `not supported` —
#      si pasara, el fixture no estaría probando nada y el verde de abajo
#      no demostraría que --main hace falta.
#   2. `--main` en nativo produce target/<nombre>-navegador y NO pisa el binario <nombre>.
#   3. `--target wasm32-wasi --main` produce target/wasm32-wasi/<nombre>-navegador.wasm
#      y, con un argumento, su salida es idéntica a la del nativo.
echo -n "  [proyecto] nyx build --target wasm32-wasi --main ... "
PM_SRC="tests/wasm/fixtures/project-main"
if [ ! -d "$PM_SRC" ] || [ -z "${NYX_BIN:-}" ]; then
    echo -e "${YELLOW}SKIP (sin fixture o sin nyx_build)${NC}"
else
    PM_TMP="$TMP_DIR/proj-main"
    rm -rf "$PM_TMP"; mkdir -p "$PM_TMP"
    cp -r "$PM_SRC"/. "$PM_TMP"/
    pm_ok=0; pm_why=""
    (cd "$PM_TMP" && NYX_HOME="$ROOT" "$NYX_BIN" build --target wasm32-wasi > build-sin-main.log 2>&1)
    pm_rc=$?
    # El guard imprime en castellano con NYX_LANG=es: se aceptan los dos textos.
    if [ "$pm_rc" -eq 0 ] || ! grep -qE "(is not supported on target|no está soportado en el target) 'wasm32-wasi'" "$PM_TMP/build-sin-main.log"; then
        pm_why="control negativo caído: sin --main el build wasm dio rc $pm_rc sin «not supported»"
    elif ! (cd "$PM_TMP" && NYX_HOME="$ROOT" "$NYX_BIN" build --main src/navegador.nx > build-nat.log 2>&1) \
         || [ ! -x "$PM_TMP/target/dosentradas-navegador" ]; then
        pm_why="el build nativo con --main no produjo ./target/dosentradas-navegador"
    elif [ -e "$PM_TMP/dosentradas" ]; then
        pm_why="--main pisó el binario principal ./dosentradas"
    elif ! (cd "$PM_TMP" && ./target/dosentradas-navegador portada > out-nativo.txt 2>&1); then
        pm_why="el binario nativo de --main no corrió"
    elif ! (cd "$PM_TMP" && NYX_HOME="$ROOT" "$NYX_BIN" build --target wasm32-wasi --main src/navegador.nx > build-wasm.log 2>&1) \
         || [ ! -f "$PM_TMP/target/wasm32-wasi/dosentradas-navegador.wasm" ]; then
        pm_why="el build wasm con --main no produjo target/wasm32-wasi/dosentradas-navegador.wasm"
    elif command -v wasmtime > /dev/null 2>&1; then
        if (cd "$PM_TMP" && timeout 30 wasmtime target/wasm32-wasi/dosentradas-navegador.wasm portada > out-wasm.txt 2>&1) \
           && diff -q "$PM_TMP/out-nativo.txt" "$PM_TMP/out-wasm.txt" > /dev/null 2>&1; then
            pm_ok=1
        else
            pm_why="la salida wasm difiere de la nativa"
        fi
    else
        pm_ok=2
    fi
    if [ "$pm_ok" -eq 1 ]; then
        echo -e "${GREEN}PASS${NC}"; PASSED=$((PASSED + 1))
    elif [ "$pm_ok" -eq 2 ]; then
        echo -e "${GREEN}PASS${NC} ${YELLOW}(solo build — sin wasmtime no se comparó la salida)${NC}"
        PASSED=$((PASSED + 1))
    else
        echo -e "${RED}FAIL${NC}"
        echo "      $pm_why"
        diff "$PM_TMP/out-nativo.txt" "$PM_TMP/out-wasm.txt" 2>/dev/null | head -6 | sed 's/^/      /'
        # El error de compilación sale por stderr ANTES de lo que nyx_build
        # imprime por stdout: con pocas líneas de cola se ve el banner y no la causa.
        for lg in build-sin-main.log build-nat.log build-wasm.log; do
            [ -f "$PM_TMP/$lg" ] && grep -v '^\s*$' "$PM_TMP/$lg" | head -8 | sed "s/^/      $lg: /"
        done
        FAILED=$((FAILED + 1))
    fi
fi

echo ""
if [ "$SKIPPED" -gt 0 ]; then
    echo -e "  ${GREEN}$PASSED passed${NC}, ${RED}$FAILED failed${NC}, ${YELLOW}$SKIPPED skipped (sin wasm-opt)${NC}"
    # Un verde con saltos no es el verde completo: el camino que espera al
    # anfitrión (Asyncify) quedó SIN verificar, y así se dice.
    [ "$FAILED" -eq 0 ] && echo -e "  ${YELLOW}Sin fallos, pero $SKIPPED test(s) async NO se verificaron (falta binaryen)${NC}"
else
    echo -e "  ${GREEN}$PASSED passed${NC}, ${RED}$FAILED failed${NC}"
    [ "$FAILED" -eq 0 ] && echo -e "  ${GREEN}All WASM tests passed${NC}"
fi
exit $([ "$FAILED" -eq 0 ] && echo 0 || echo 1)
