#!/usr/bin/env bash
# ============================================================
#  run_build_win_cross.sh — `nyx build --target x86_64-pc-windows-msvc` desde Linux
# ============================================================
# Arco win-cross (Task 3). Necesita el sysroot de xwin (NYX_WIN_SYSROOT) y los
# deps estáticos (NYX_WIN_DEPS, scripts/build_win_deps.sh); sin ellos, SKIP y rc 0.
# Comprueba, sin ejecutar nada: el .exe existe; importa solo DLL de Windows
# (sin gc.dll / VCRUNTIME / api-ms-win-crt); no lleva rutas del host; y dos builds
# seguidos del mismo proyecto dan el mismo sha256 (/Brepro). La caché del runtime
# NO se borra entre los dos builds: lo que se mide es el enlace.
set -u
cd "$(dirname "$0")/../.."
ROOT="$(pwd)"

if [ -z "${NYX_WIN_SYSROOT:-}" ] || [ -z "${NYX_WIN_DEPS:-}" ]; then
    echo "SKIP run_build_win_cross: faltan NYX_WIN_SYSROOT y NYX_WIN_DEPS (xwin splat y scripts/build_win_deps.sh)"
    exit 0
fi
if [ ! -x "$ROOT/nyx_build" ] || [ "$ROOT/compiler/build.nx" -nt "$ROOT/nyx_build" ]; then
    echo "  ✗ ./nyx_build falta o es más viejo que compiler/build.nx — corre 'make build-nyx-build'"
    exit 1
fi
LLVM_READOBJ="$(command -v llvm-readobj || command -v llvm-readobj-19 || command -v llvm-readobj-18 || true)"
if [ -z "$LLVM_READOBJ" ]; then
    echo "SKIP run_build_win_cross: no hay llvm-readobj en PATH"
    exit 0
fi

PASS=0; FAIL=0
ok()  { echo "  ✓ $1"; PASS=$((PASS + 1)); }
bad() { echo "  ✗ $1"; FAIL=$((FAIL + 1)); }
TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT

echo "╔════════════════════════════════════════════════╗"
echo "║   nyx build cruzado a Windows (desde Linux)     ║"
echo "╚════════════════════════════════════════════════╝"

for proj in red-min serve-serie; do
    src="$ROOT/tests/build-win/$proj"
    if [ ! -d "$src" ]; then bad "$proj — falta el fixture $src"; continue; fi
    P="$TMP/$proj"
    cp -r "$src" "$P"
    name="$(sed -n 's/^name *= *"\(.*\)"/\1/p' "$P/nyx.toml" | head -1)"
    exe="$P/target/$name.exe"
    build() { ( cd "$P" && NYX_HOME="$ROOT" timeout 580 "$ROOT/nyx_build" build --target x86_64-pc-windows-msvc ) > "$TMP/$proj.out" 2>&1; }
    if ! build || [ ! -f "$exe" ]; then
        bad "$proj — el build falló o no dejó target/$name.exe"; tail -20 "$TMP/$proj.out"; continue
    fi
    ok "$proj — target/$name.exe existe ($(wc -c < "$exe") bytes)"
    dlls="$("$LLVM_READOBJ" --coff-imports "$exe" | sed -n 's/^ *Name: \(.*\.dll\)$/\1/Ip' | sort -u | tr '\n' ' ')"
    if echo "$dlls" | grep -qiE 'gc\.dll|vcruntime|msvcp|api-ms-win-crt|ucrtbase' || [ -z "$dlls" ]; then
        bad "$proj — imports no válidos: ${dlls:-(ninguno)}"
    else
        ok "$proj — solo DLL de Windows: $dlls"
    fi
    n="$(grep -a -c -E '/home|/tmp|scratchpad' "$exe")"
    if [ "$n" = "0" ]; then ok "$proj — sin rutas del host en el .exe"; else bad "$proj — $n líneas con rutas del host (/home|/tmp|scratchpad)"; fi
    h1="$(sha256sum "$exe" | cut -d' ' -f1)"
    rm -rf "$P/target"
    if build && [ -f "$exe" ] && [ "$(sha256sum "$exe" | cut -d' ' -f1)" = "$h1" ]; then
        ok "$proj — dos builds, mismo sha256 (${h1:0:16}…)"
    else
        bad "$proj — el segundo build no repite el sha256 $h1"
    fi
done

echo ""
echo "win-cross: $PASS ok, $FAIL fallos"
[ "$FAIL" -eq 0 ]
