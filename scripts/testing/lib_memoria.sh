# lib_memoria.sh — esperar memoria antes de un build pesado y reintentar si el
# sistema lo mata. Se SOURCEA: `. scripts/testing/lib_memoria.sh`.
#
# Por qué existe: el servidor tiene poca RAM y la comparten varias sesiones.
# `earlyoom` mata al proceso más grande cuando la memoria libre baja de su
# umbral, y prefiere justamente a `nyx_bootstrap`, `clang` y `ld` (ver su
# línea de comandos en `ps`). Un build pesado que arranca mientras otra sesión
# compila muere con 143 (SIGTERM) sin haber fallado de verdad.
#
# HISTORIA: esta lógica vivía en `~/nyx/ops/handoff/2026-09-14-lang/guardas/
# guarda_v2.sh`, medida contra earlyoom en este servidor. Ese archivo se borró
# el 2026-11-11 junto con el canal handoff sin haberla rescatado antes (había
# una ficha en TASKS.md que lo pedía). Lo que sigue es una REESCRITURA a partir
# de los parámetros que la ficha conservaba; los umbrales son los medidos, el
# código no es el original y no se ha vuelto a medir contra earlyoom.
#
#   ventana_tranquila   espera a que haya memoria y a que ningún compilador
#                       ajeno esté gordo, de forma sostenida
#   pesado <cmd…>       corre el comando; si muere con 143, espera la ventana y
#                       reintenta
#
# Umbrales (los de la medición original; se pueden pisar por entorno):
#   NYX_MEM_LIBRE_MB    2000   MB disponibles mínimos (MemAvailable)
#   NYX_MEM_AJENO_MB     400   RSS máximo de un nyx_bootstrap de otra sesión
#   NYX_MEM_SOSTENIDO_S   30   segundos seguidos que deben cumplirse las dos
#   NYX_MEM_ESPERA_S    1800   tope de espera antes de rendirse (rc 1)
#   NYX_MEM_REINTENTOS     3   reintentos de `pesado` ante un 143

# MB disponibles según el kernel (MemAvailable ya descuenta caché recuperable).
mem_libre_mb() {
    awk '/^MemAvailable:/ { printf "%d\n", $2 / 1024 }' /proc/meminfo
}

# RSS en MB del nyx_bootstrap AJENO más grande (0 si no hay ninguno). «Ajeno» =
# que no desciende de este shell: los propios todavía no arrancaron cuando se
# pregunta, pero un `pesado` anidado no debe esperarse a sí mismo.
mem_bootstrap_ajeno_mb() {
    local pid rss max=0 p propio
    for pid in $(pgrep -x nyx_bootstrap 2>/dev/null); do
        propio=0; p="$pid"
        while [ -n "$p" ] && [ "$p" != "1" ] && [ "$p" != "0" ]; do
            [ "$p" = "$$" ] && { propio=1; break; }
            p="$(awk '/^PPid:/ { print $2 }' "/proc/$p/status" 2>/dev/null)"
        done
        [ "$propio" = "1" ] && continue
        rss="$(awk '/^VmRSS:/ { printf "%d\n", $2 / 1024 }' "/proc/$pid/status" 2>/dev/null)"
        [ -n "$rss" ] && [ "$rss" -gt "$max" ] && max="$rss"
    done
    echo "$max"
}

# Espera a que la máquina esté tranquila DE FORMA SOSTENIDA. rc 0 = hay ventana;
# rc 1 = se agotó NYX_MEM_ESPERA_S (el llamador decide si sigue igual).
ventana_tranquila() {
    local libre_min="${NYX_MEM_LIBRE_MB:-2000}" ajeno_max="${NYX_MEM_AJENO_MB:-400}"
    local sostenido="${NYX_MEM_SOSTENIDO_S:-30}" espera="${NYX_MEM_ESPERA_S:-1800}"
    local paso=5 t0 ahora bien=0 libre ajeno
    [ "$sostenido" -lt "$paso" ] && paso=1
    t0=$(date +%s)
    while :; do
        libre="$(mem_libre_mb)"; ajeno="$(mem_bootstrap_ajeno_mb)"
        if [ "${libre:-0}" -ge "$libre_min" ] && [ "${ajeno:-0}" -le "$ajeno_max" ]; then
            [ "$bien" -ge "$sostenido" ] && return 0
            bien=$((bien + paso))
        else
            bien=0
        fi
        ahora=$(date +%s)
        if [ $((ahora - t0)) -ge "$espera" ]; then
            echo "  lib_memoria: sin ventana tras $((ahora - t0)) s (libres ${libre} MB, mínimo ${libre_min}; nyx_bootstrap ajeno ${ajeno} MB, máximo ${ajeno_max})" >&2
            return 1
        fi
        sleep "$paso"
    done
}

# Corre un comando pesado. Un 143 (SIGTERM: casi siempre earlyoom) no es un
# fallo del comando: se espera la ventana y se reintenta. Cualquier otro código
# se devuelve tal cual, sin reintentar — un build que falla de verdad no mejora
# por repetirlo.
pesado() {
    local max="${NYX_MEM_REINTENTOS:-3}" n=0 rc
    ventana_tranquila || echo "  lib_memoria: se arranca igual, sin ventana" >&2
    while :; do
        "$@"; rc=$?
        [ "$rc" -ne 143 ] && return "$rc"
        n=$((n + 1))
        if [ "$n" -gt "$max" ]; then
            echo "  lib_memoria: el comando murió con 143 las $n veces; no se reintenta más" >&2
            return 143
        fi
        echo "  lib_memoria: murió con 143 (¿earlyoom?), reintento $n de $max" >&2
        ventana_tranquila || true
    done
}

# Autotest: `bash scripts/testing/lib_memoria.sh --self-test`. No compila nada.
if [ "${1:-}" = "--self-test" ]; then
    fallos=0
    ok()  { echo "  ✓ $1"; }
    mal() { echo "  ✗ $1"; fallos=$((fallos + 1)); }
    m="$(mem_libre_mb)"
    [ -n "$m" ] && [ "$m" -gt 0 ] && ok "mem_libre_mb lee /proc/meminfo ($m MB)" || mal "mem_libre_mb no devolvió un número: '$m'"
    a="$(mem_bootstrap_ajeno_mb)"
    case "$a" in ''|*[!0-9]*) mal "mem_bootstrap_ajeno_mb no devolvió un número: '$a'" ;; *) ok "mem_bootstrap_ajeno_mb devuelve un número ($a MB)" ;; esac
    # Umbral imposible: tiene que rendirse con rc 1 al agotar la espera.
    NYX_MEM_LIBRE_MB=99999999 NYX_MEM_ESPERA_S=2 NYX_MEM_SOSTENIDO_S=1 ventana_tranquila 2>/dev/null \
        && mal "ventana_tranquila dio ventana con un umbral imposible" || ok "ventana_tranquila se rinde (rc 1) si no hay ventana"
    # Umbral trivial: ventana enseguida.
    NYX_MEM_LIBRE_MB=1 NYX_MEM_AJENO_MB=99999999 NYX_MEM_SOSTENIDO_S=1 NYX_MEM_ESPERA_S=20 ventana_tranquila \
        && ok "ventana_tranquila da ventana con umbrales triviales" || mal "ventana_tranquila no dio ventana con umbrales triviales"
    # pesado: un comando que muere con 143 dos veces y después sale bien.
    cnt="$(mktemp)"; echo 0 > "$cnt"
    frágil() { local n; n=$(($(cat "$cnt") + 1)); echo "$n" > "$cnt"; [ "$n" -lt 3 ] && return 143; return 0; }
    NYX_MEM_LIBRE_MB=1 NYX_MEM_AJENO_MB=99999999 NYX_MEM_SOSTENIDO_S=1 NYX_MEM_ESPERA_S=20 pesado frágil 2>/dev/null
    rc=$?
    [ "$rc" -eq 0 ] && [ "$(cat "$cnt")" = "3" ] && ok "pesado reintenta tras un 143 y termina bien al tercer intento" \
        || mal "pesado: rc=$rc tras $(cat "$cnt") intentos (esperado 0 tras 3)"
    # pesado: otro código de salida no se reintenta.
    echo 0 > "$cnt"
    roto() { echo $(($(cat "$cnt") + 1)) > "$cnt"; return 7; }
    NYX_MEM_LIBRE_MB=1 NYX_MEM_AJENO_MB=99999999 NYX_MEM_SOSTENIDO_S=1 NYX_MEM_ESPERA_S=20 pesado roto 2>/dev/null
    rc=$?
    [ "$rc" -eq 7 ] && [ "$(cat "$cnt")" = "1" ] && ok "pesado devuelve tal cual un fallo que no es 143, sin reintentar" \
        || mal "pesado: rc=$rc tras $(cat "$cnt") intentos (esperado 7 tras 1)"
    # pesado: se rinde tras NYX_MEM_REINTENTOS.
    echo 0 > "$cnt"
    siempre() { echo $(($(cat "$cnt") + 1)) > "$cnt"; return 143; }
    NYX_MEM_REINTENTOS=2 NYX_MEM_LIBRE_MB=1 NYX_MEM_AJENO_MB=99999999 NYX_MEM_SOSTENIDO_S=1 NYX_MEM_ESPERA_S=20 pesado siempre 2>/dev/null
    rc=$?
    [ "$rc" -eq 143 ] && [ "$(cat "$cnt")" = "3" ] && ok "pesado se rinde con 143 tras agotar los reintentos" \
        || mal "pesado: rc=$rc tras $(cat "$cnt") intentos (esperado 143 tras 3)"
    rm -f "$cnt"
    [ "$fallos" -eq 0 ] && { echo "  lib_memoria: PASS"; exit 0; } || { echo "  lib_memoria: FALLÓ ($fallos)"; exit 1; }
fi
