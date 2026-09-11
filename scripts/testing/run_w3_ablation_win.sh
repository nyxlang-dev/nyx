#!/bin/bash
# scripts/testing/run_w3_ablation_win.sh — driver de la ablación W3 sobre la
# implementación REAL del scheduler en win32 (W3 Task 5 P3; el harness es
# tests/runtime-unit/win/test_w3_task4_load.c). Reconstruye, versionado, el
# loop con el que Task 4 midió 0/50 (bdwgc parcheado) vs 2/50 (vcpkg stock).
#
# ES: corre N veces el load contra CADA gc.dll (parcheado y stock) haciendo
# swap del DLL junto al exe — el binario es EL MISMO; solo cambia la libgc
# (el mecanismo exacto de la ablación X4 del spike). Emite una línea por
# corrida y la tabla final con denominadores. Un rc!=0 en el lado stock ES
# el dato (la muerte por GC_mark_from sin el corrector); en el lado parcheado
# es un HALLAZGO que hay que reportar, no re-correr.
# EN: runs the load N times against EACH gc.dll (patched and stock) by
# swapping the DLL next to the exe — same binary, only the libgc changes.
# One line per run + a final table with denominators. rc!=0 on the stock
# side IS the datum; on the patched side it is a FINDING to report.
#
# Uso / usage:
#   run_w3_ablation_win.sh <workdir> [N]
#     <workdir>: dir con test_w3_task4_load.exe (ver receta de build abajo)
#     [N]: corridas por lado (default 50)
#   Env: NYX_W3_GC_PATCHED / NYX_W3_GC_STOCK = rutas a los dos gc.dll
#     (defaults: C:\nyx\bdwgc-patched\build\Release\gc.dll y el de vcpkg).
#
# Build del harness (receta del gate local de Task 4/5):
#   clang --target=x86_64-pc-windows-msvc -O1 -Wall -Werror \
#     -D_CRT_SECURE_NO_WARNINGS -I<vcpkg>/include -fuse-ld=lld-link \
#     tests/runtime-unit/win/test_w3_task4_load.c <objs de los 12 TUs win> \
#     -L<vcpkg>/lib -lgc -o <workdir>/test_w3_task4_load.exe
set -u

WORKDIR="${1:?uso: run_w3_ablation_win.sh <workdir con test_w3_task4_load.exe> [N]}"
N="${2:-50}"
PATCHED="${NYX_W3_GC_PATCHED:-/c/nyx/bdwgc-patched/build/Release/gc.dll}"
STOCK="${NYX_W3_GC_STOCK:-/c/nyx/vcpkg/installed/x64-windows/bin/gc.dll}"

cd "$WORKDIR"
[ -x ./test_w3_task4_load.exe ] || { echo "falta test_w3_task4_load.exe en $WORKDIR"; exit 2; }
[ -f "$PATCHED" ] || { echo "falta gc.dll parcheado: $PATCHED"; exit 2; }
[ -f "$STOCK" ]   || { echo "falta gc.dll stock: $STOCK"; exit 2; }

run_side() {  # $1=tag $2=dll
  local tag="$1" dll="$2"
  local deaths=0 ok=0 aviso=0 i rc line
  cp "$dll" gc.dll
  echo "### lado $tag ($dll) x$N"
  for i in $(seq 1 "$N"); do
    if timeout 120 ./test_w3_task4_load.exe > "abl_${tag}_${i}.log" 2>&1; then rc=0; else rc=$?; fi
    line=$(grep "LOAD_RESULT" "abl_${tag}_${i}.log" | head -1)
    grep -q "no soporta GC_set_sp_corrector" "abl_${tag}_${i}.log" && aviso=$((aviso+1))
    if [ "$rc" -eq 0 ]; then ok=$((ok+1)); else
      deaths=$((deaths+1))
      echo "  [$tag] run $i MUERTA rc=$rc :: $(tail -1 "abl_${tag}_${i}.log")"
    fi
    echo "  [$tag] run $i rc=$rc ${line:-SIN_RESULT}"
  done
  echo "$tag: ok=$ok muertes=$deaths aviso_degradacion=$aviso de $N"
  eval "R_${tag}_OK=$ok; R_${tag}_DEATHS=$deaths; R_${tag}_AVISO=$aviso"
}

run_side patched "$PATCHED"
run_side stock "$STOCK"

echo ""
echo "================== TABLA (denominadores) =================="
echo "parcheado: $R_patched_OK/$N ok, $R_patched_DEATHS muertes, aviso=$R_patched_AVISO/$N"
echo "stock:     $R_stock_OK/$N ok, $R_stock_DEATHS muertes, aviso=$R_stock_AVISO/$N"
echo "==========================================================="
# Criterios (rev3 X3/X4): parcheado 0 muertes Y aviso=0; stock aviso=N
# (la muerte stock es probabilística ~2-6%: su ausencia en N chico NO es
# fallo — documentar el denominador, jamás maquillar).
FAIL=0
[ "$R_patched_DEATHS" -eq 0 ] || { echo "FALLO: muertes con el parche activo — HALLAZGO, reportar"; FAIL=1; }
[ "$R_patched_AVISO" -eq 0 ]  || { echo "FALLO: aviso de degradacion con el gc.dll parcheado (¿DLL equivocado?)"; FAIL=1; }
[ "$R_stock_AVISO" -eq "$N" ] || { echo "FALLO: el lado stock no mostro el aviso en todas (¿DLL equivocado?)"; FAIL=1; }
[ $FAIL -eq 0 ] && echo "ABLACION=COHERENTE" || exit 1
