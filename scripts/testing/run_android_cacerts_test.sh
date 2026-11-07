#!/bin/bash
# Prueba del camino de CAs de Android (runtime/tls.c, tls_android_roots): genera una CA y un
# certificado de servidor con el openssl del host, deja la CA en un directorio con nombre
# estilo Android («abcd1234.0», con texto antes del PEM), levanta `openssl s_server` en
# loopback y verifica que el estatico bionic (aarch64-linux-android24) conecta con
# verificacion SOLO si NYX_ANDROID_CACERTS_DIR apunta a ese directorio. SKIP limpio sin deps.
set -u
ROOT="$(cd "$(dirname "$0")/../.." && pwd)"
D=${NYX_ANDROID_DEPS:-$HOME/.cache/nyx-android-deps}
if [ ! -d "$D/sysroot" ] || ! command -v clang >/dev/null || ! command -v openssl >/dev/null; then
    echo "SKIP: faltan deps de Android"; exit 0
fi
if [ "$(uname -m)" != aarch64 ]; then echo "SKIP: el estatico bionic solo corre en aarch64"; exit 0; fi
W=$(mktemp -d); SP=""
trap '[ -n "$SP" ] && kill $SP 2>/dev/null; rm -rf "$W"' EXIT
CF="--target=aarch64-linux-android24 --sysroot=$D/sysroot -fno-emulated-tls -fPIC -I$D/include -iquote $ROOT/runtime -w"
SRCS="runtime.c strings.c runtime-arrays.c maps.c file-io.c iterators.c net.c thread.c regex.c time.c crypto.c tls.c scheduler.c event_loop.c sqlite_adapter.c compress.c random.c url.c msgpack.c csv.c websocket.c persist.c http2.c process.c llama_adapter.c os/os_posix.c"
OBJS=""
for s in $SRCS; do
    o=$W/$(echo $s | tr / _).o
    clang $CF -c $ROOT/runtime/$s -o $o || exit 1
    OBJS="$OBJS $o"
done
clang $CF -c $ROOT/tests/android/cacerts_main.c -o $W/main.o || exit 1
clang --target=aarch64-linux-android24 --sysroot=$D/sysroot -fuse-ld=lld -nodefaultlibs -static $OBJS $W/main.o \
    -L$D/lib -lgc -lz -lssl -lcrypto -lm -lc -ldl \
    $D/clang-rt/libclang_rt.builtins-aarch64-android.a $D/clang-rt/libunwind.a -o $W/t || exit 1
cd "$W" || exit 1
# PT_TLS alineado a 64 (centinela de os_posix.c); sin eso bionic aborta al arrancar el estatico.
if command -v readelf >/dev/null; then
    readelf -lW t | grep -E '^ *TLS ' | grep -q '0x40$' && echo "ok: PT_TLS Align 0x40" || { echo "FALLA: PT_TLS no esta alineado a 0x40"; exit 1; }
fi
openssl req -x509 -newkey rsa:2048 -nodes -keyout ca.key -out ca.pem -subj "/CN=Nyx Test CA" -days 2 >/dev/null 2>&1
openssl req -newkey rsa:2048 -nodes -keyout s.key -out s.csr -subj "/CN=127.0.0.1" >/dev/null 2>&1
echo "subjectAltName=IP:127.0.0.1" > ext
openssl x509 -req -in s.csr -CA ca.pem -CAkey ca.key -CAcreateserial -out s.pem -days 2 -extfile ext >/dev/null 2>&1
mkdir cacerts
{ echo "Nyx Test CA texto previo al PEM"; openssl x509 -in ca.pem -text -noout | head -3; cat ca.pem; } > cacerts/abcd1234.0
PORT=$((20000 + RANDOM % 20000))
timeout 60 openssl s_server -accept $PORT -cert s.pem -key s.key -quiet >/dev/null 2>&1 &
SP=$!
sleep 1
fail=0
r=$(./t $PORT 2>/dev/null)
if [ "$r" = FAIL ]; then echo "ok: sin CA configurada, rechaza"; else echo "FALLA control negativo: $r"; fail=1; fi
r=$(NYX_ANDROID_CACERTS_DIR="$W/cacerts" ./t $PORT 2>/dev/null)
if [ "$r" = OK ]; then echo "ok: con directorio de CAs estilo Android, verifica"; else echo "FALLA directorio: $r"; fail=1; fi
exit $fail
