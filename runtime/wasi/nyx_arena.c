// runtime/wasi/nyx_arena.c — allocador two-region para wasm32-wasi
// (handoff venezuelainfo #2: GC/arena reseteable por turno de evento).
//
// Modelo: el target wasm ES por eventos (_start + re-entradas cortas).
//   - ANTES de nyx_arena_begin() (típicamente todo _start): memoria
//     PERSISTENTE (globals, estado del módulo), bump sobre bloques calloc
//     geométricos (ver «BLOQUES GEOMÉTRICOS»). Nunca se libera.
//   - DESPUÉS de begin(): bump-allocator sobre bloques malloc'd → memoria
//     DE TURNO. nyx_arena_event_reset() (llamado por el shim tras cada
//     evento) descarta TODO lo alocado desde begin, reusando el bloque.
//
// CONTRATO (disciplina de lifetimes, documentada en el shim):
//   - Estado que debe sobrevivir entre eventos se construye en _start.
//   - Un handler NO debe guardar en globals punteros a memoria alocada
//     durante el evento (String/Array nuevos) — quedan colgando tras el
//     reset. Guardar ints/floats por valor siempre es seguro.
//   - Opt-in: sin nyx_arena_begin() el comportamiento es EXACTAMENTE el
//     previo (calloc leak-by-design).
//   - EXCEPCIÓN: un cierre registrado durante el turno (dom_on_fn,
//     browser_fetch_fn, browser_interval_fn) sobrevive si el binding lo
//     ancla con nyx_arena_pin_turn() — ver «RETENCIÓN POR TURNO» abajo.
//
// Todas las alocaciones llevan un header de 16 bytes con el tamaño y la marca
// de origen → GC_realloc copia conservando la región (persistente o arena).
// 16 mantiene el alineamiento de max_align_t y la paridad "memoria en cero"
// de Boehm.
//   - Hacer CRECER (push, StringBuilder) un Array/String de _start durante un
//     evento es seguro: realloc lo mantiene persistente (fix 2026-09-23).
//
// EN: two-region allocator for wasm32-wasi. calloc before nyx_arena_begin()
// (persistent, _start); bump arena after it (per-event, discarded by
// nyx_arena_event_reset()). 16-byte size+origin header: realloc keeps the
// block's region. Opt-in.
#ifdef __wasi__

#include <stdlib.h>
#include <string.h>
#include <stdint.h>

#define NYX_ARENA_BLOCK   (1u << 20)   /* tope de bloque: 1 MB */
#define NYX_ARENA_BLOCK0  (64u << 10)  /* primer bloque de cada cadena: 64 KB */
#define NYX_HDR           16u          /* header de tamaño, mantiene align 16 */

typedef struct NyxArenaBlock {
    struct NyxArenaBlock* next;
    size_t used;
    size_t cap;
    size_t _pad;                        /* data[] alineado a 16 en wasm32 */
    unsigned char data[];
} NyxArenaBlock;

static NyxArenaBlock* nyx_arena_head = 0;
static int nyx_arena_on = 0;

/* ── RETENCIÓN POR TURNO (pin) ────────────────────────────────────────────
 *
 * POR QUÉ EXISTE. En wasm no hay GC trazador, así que un cierre asíncrono
 * —`dom_on_fn`, y ahora `browser_fetch_fn`/`browser_interval_fn`— es un par
 * {fn_ptr, env_ptr} donde `env_ptr` apunta a memoria DE TURNO. El cierre se
 * registra durante un turno y se dispara en otro: para cuando el fetch
 * responde o el usuario hace click, `nyx_arena_event_reset()` ya recicló su
 * entorno. Medido: los tres pares salen con el MISMO puntero, el cierre lee
 * basura y después trapea con «invalid index into function table». Esto ya
 * rompía `dom_on_fn` antes de que existiera este comentario: un listener que
 * `diff_handlers` del VDOM registra dentro de un `update()` muere en el reset
 * siguiente, y dos listeners distintos colapsan en un mismo entorno.
 *
 * POR QUÉ LA GRANULARIDAD ES EL TURNO Y NO EL OBJETO. Lo obvio sería copiar
 * el par {fn,env} a una región de vida larga (un `alloc_pinned`) o dejar que
 * el shim se lo lleve al heap de JS. Las dos se prototiparon y las dos están
 * MAL, por la misma razón: la copia es SUPERFICIAL. El entorno de un cierre
 * es un struct como `{ i64 linea, %nyx_string* pantalla }` — copiar sus 16
 * bytes preserva el `int` y deja el `String` apuntando a la arena reciclada.
 * Con captura de int anda; con captura de String devuelve `pantalla=7` en vez
 * de `pantalla=factura-70`, en silencio, o trapea. Seguir esos punteros
 * requeriría un clone profundo por tipo de entorno, es decir, tipos en tiempo
 * de ejecución o codegen emitiendo un clone por cierre.
 *
 * La salida es no copiar nada. Todo lo que el cierre capturó se alocó en EL
 * MISMO turno en que el cierre se creó, así que retener el turno entero lo
 * mantiene vivo POR CONSTRUCCIÓN, con los punteros originales intactos y sin
 * saber nada de tipos. Si durante un turno alguien ancló, el reset no recicla
 * la cadena de bloques: la aparta con un refcount y abre una cadena nueva.
 * Al desanclar el último cierre de ese turno, la cadena se libera.
 *
 * EL PRECIO, DICHO CLARO. Se retiene el turno, no el objeto: un turno anclado
 * cuesta sus bloques enteros (mínimo uno) aunque el entorno del cierre pese
 * 16 bytes. Por eso el primer bloque de cada cadena es de 64 KB y crece
 * geométricamente hasta NYX_ARENA_BLOCK — un turno de evento típico usa unos
 * pocos KB, así que el costo de retenerlo es 64 KB y no 1 MB. Medido: 300
 * turnos anclados sin desanclar son 18.75 MB con bloque geométrico contra
 * 300 MB con bloque fijo de 1 MB.
 *
 * A CAMBIO, EL DESANCLAJE TIENE QUE PASAR, y por eso vive en el binding y no
 * en el usuario: `fetch`/`timeout` desanclan al disparar (un solo disparo) e
 * `interval`/listeners desanclan en su `cancel()`. Un turno anclado que nadie
 * desancla es una fuga de 64 KB, no de 16 bytes: ruidosa a propósito, porque
 * la fuga silenciosa es exactamente lo que la arena vino a evitar. Con el
 * desanclaje puesto, la memoria es plana: medido 2000 ciclos de
 * registrar/disparar/desanclar sin crecer un byte.
 *
 * VENTAJA COLATERAL para el VDOM: el refcount es POR TURNO, no por cierre.
 * Un `update()` que registra 50 listeners retiene UN turno con refcount 50.
 *
 * LO QUE ESTO NO ARREGLA: un cierre que GUARDA en su entorno memoria alocada
 * durante el DISPARO (`ultimo = "visita-" + n`). Esa memoria es del turno del
 * disparo, no del turno del registro, y ningún anclaje por turno-de-registro
 * la cubre — es el mismo contrato de arriba («no guardes punteros de turno»)
 * aplicado a los entornos de cierre. Ver docs/gotchas/wasm-arena-closure-env.md
 *
 * EN: per-turn retention. wasm has no tracing GC, so a closure registered in
 * one event turn and fired in another loses its environment to the reset.
 * Copying the {fn,env} pair to a long-lived region is SHALLOW and dangles any
 * pointer inside the env (a captured String), so instead the whole turn is
 * retained: everything the closure captured was allocated in that same turn.
 * Cost is block-granular (hence the 64 KB geometric first block); unpinning
 * lives in the binding, never in user code.
 */
#define NYX_PIN_MAGIC 0x4e595850u       /* "NYXP" — atrapa un desanclaje doble */

typedef struct NyxPinnedTurn {
    unsigned magic;                     /* NYX_PIN_MAGIC mientras el token vive */
    NyxArenaBlock* chain;               /* bloques del turno, apartados en el reset */
    int refs;                           /* cierres anclados de ESE turno */
    struct NyxPinnedTurn* free_next;    /* freelist: el registro se reusa, no se free()a */
} NyxPinnedTurn;

static NyxPinnedTurn* nyx_turn_pin = 0;   /* anclajes del turno EN CURSO (0 = ninguno) */
static NyxPinnedTurn* nyx_pin_free = 0;   /* registros reciclados (ver magic) */
static int nyx_pinned_turns_live = 0;     /* observabilidad: turnos retenidos ahora */

/* ── MEDICIÓN (arco wasm-arena-persistir) ────────────────────────────────
 * Bytes que la región persistente ya entregó. Solo SUMA: la región no libera
 * nunca (leak-by-design), así que el acumulado ES lo que está vivo. Cuenta el
 * tamaño real que ocupa cada bloque (alineado + header), no el pedido: lo que
 * se quiere medir es memoria, no la suma de los `n`.
 * Es ADITIVO a propósito: una línea en la rama calloc y otra en la copia de
 * arena_persist, sin tocar el bump-allocator, el reset ni el anclaje.
 * EN: bytes handed out by the persistent region (never freed, so live). */
static uint64_t nyx_persist_bytes = 0;

static inline size_t nyx_align16(size_t n) { return (n + 15u) & ~(size_t)15u; }

/* ── ORIGEN DEL BLOQUE EN EL HEADER (fix 2026-09-23) ──────────────────────
 *
 * EL BUG. nyx_wasi_gc_realloc alocaba el bloque nuevo por el camino normal,
 * que tras nyx_arena_begin() es la ARENA. Un `g.push(x)` sobre un Array
 * global armado en _start que lo hacía crecer durante un evento movía su
 * buffer (data y tags) a memoria de turno: el reset lo reciclaba y el global
 * quedaba apuntando a basura. Medido: 1000 push de ints a un global, suma
 * basura. Rompía la regla «guardar ints en un global es seguro».
 *
 * EL ARREGLO. realloc CONSERVA EL ORIGEN: bloque persistente -> bloque nuevo
 * persistente; bloque de arena -> arena, como siempre. Cubre a todos los que
 * crecen por GC_REALLOC (bajo wasi todos pasan por acá, gc.h): el push de
 * Array (runtime-arrays.c, data y tags), StringBuilder (strings.c) y los
 * buffers de lectura de runtime.c.
 *
 * CÓMO SE SABE EL ORIGEN: una marca en el header. El header mide 16 bytes
 * por la alineación, pero el tamaño ocupa sizeof(size_t) = 4 en wasm32; los
 * bytes 8..11 estaban libres. La región persistente escribe ahí
 * NYX_ORIGIN_PERSIST; la arena deja 0 (su memset ya lo hace). Así el header
 * NO cambia de tamaño ni de alineación, y la consulta es O(1).
 * Se descartó recorrer la cadena de la arena para ver si el puntero cae en
 * algún bloque: sería O(bloques) por realloc y, peor, incompleto: los
 * bloques de turnos ANCLADOS ya no están en la cadena viva (el reset los
 * aparta), así que un bloque de turno anclado se tomaría por persistente.
 * La marca no tiene ese punto ciego.
 * Una marca «mágica» y no un bit suelto: un 0 (el caso por omisión) sigue la
 * conducta previa (arena), así que solo cambia de camino lo que se sabe
 * persistente con certeza.
 *
 * EN: realloc keeps the block's origin (persistent stays persistent), read
 * from a marker in the spare bytes of the 16-byte header: O(1), no change
 * to header size/alignment, and no blind spot for pinned-turn chains. */
#define NYX_HDR_ORIGIN_OFF  8u          /* bytes libres del header: tras el size_t */
#define NYX_ORIGIN_PERSIST  0x53524550u /* "PERS" */
_Static_assert(sizeof(size_t) <= NYX_HDR_ORIGIN_OFF, "el tamaño pisaría la marca de origen");
_Static_assert(NYX_HDR_ORIGIN_OFF + sizeof(uint32_t) <= NYX_HDR, "la marca no cabe en el header");

/* ── LA REGIÓN PERSISTENTE PIDE MEMORIA EN BLOQUES GEOMÉTRICOS (2026-09-23) ──
 *
 * EL PROBLEMA (fricción de nyxerp, team-2). Cada alocación persistente era un
 * calloc propio. El malloc de wasi-libc (dlmalloc sobre sbrk) agranda la
 * memoria del wasm de a lo que le falta, redondeado a una página de 64 KB: un
 * `json_parse` de 1 MB en _start hacía miles de `memory.grow`. Bajo wasmtime
 * eso es barato; bajo V8 cada grow es caro (y deja un ArrayBuffer viejo al
 * recolector de JS). Medido, catálogo de 5000 registros (1 MB): 6.3 s en node
 * contra 0.33 s en wasmtime, mismo .wasm.
 *
 * EL ARREGLO. Lo chico (<= NYX_PERSIST_BIG) sale de un bump sobre bloques que
 * se piden con calloc y DUPLICAN su tamaño de 64 KB a 8 MB: una región de
 * 190 MB son ~30 pedidos grandes en vez de ~3600 grows de 64 KB. La
 * semántica no cambia: la región persistente nunca libera nada
 * (leak-by-design), así que un bump es exactamente lo que ya era, sin el
 * costo por objeto de dlmalloc. Lo grande va directo a calloc, como antes:
 * no desperdicia la cola de un bloque.
 * El primer bloque es de 64 KB para que un programa chico no pague 8 MB. El
 * tope de 8 MB salió de medir (json_parse, N=5000, node): 16 MB daba 190 ms
 * pero +9 MB de cola sin usar en N=500; 4 MB, 390 ms; 8 MB, ~280 ms y la
 * misma memoria final que antes en N=500.
 * Memoria en cero (contrato Boehm): el bloque sale de calloc y el bump nunca
 * reusa nada. Alineación: `need` es múltiplo de 16 y el bloque viene de
 * malloc (16 en wasm32), igual que el calloc por objeto de antes.
 * El header (tamaño + marca PERS) y nyx_persist_bytes no cambian: la marca va
 * en cada objeto, no en el bloque, así que realloc sigue sabiendo el origen.
 *
 * EN: the persistent region bump-allocates small objects out of calloc'd
 * blocks that double from 64 KB to 8 MB, so the wasm memory grows in big
 * steps instead of one 64 KB page at a time (thousands of memory.grow, very
 * slow under V8). Never freed, same as before; big objects still use calloc. */
#define NYX_PERSIST_CHUNK0    (64u << 10)   /* primer bloque: 64 KB */
#define NYX_PERSIST_CHUNKMAX  (8u << 20)    /* tope de bloque: 8 MB */
#define NYX_PERSIST_BIG       (16u << 10)   /* más grande que esto: calloc directo */

static unsigned char* nyx_pchunk_cur = 0;
static size_t nyx_pchunk_left = 0;
static size_t nyx_pchunk_next = NYX_PERSIST_CHUNK0;

/* Bloque en la región persistente (nunca se libera), con tamaño y marca de
   origen en el header. 0 si no hay memoria. */
static void* nyx_persist_raw(size_t n) {
    size_t need = nyx_align16(n) + NYX_HDR;
    unsigned char* p;
    if (need > NYX_PERSIST_BIG) {
        p = (unsigned char*)calloc(1, need);
        if (!p) return 0;
    } else {
        if (nyx_pchunk_left < need) {
            unsigned char* c = (unsigned char*)calloc(1, nyx_pchunk_next);
            if (!c) return 0;
            nyx_pchunk_cur = c;
            nyx_pchunk_left = nyx_pchunk_next;
            if (nyx_pchunk_next < NYX_PERSIST_CHUNKMAX) nyx_pchunk_next *= 2;
        }
        p = nyx_pchunk_cur;
        nyx_pchunk_cur += need;
        nyx_pchunk_left -= need;
    }
    nyx_persist_bytes += need;
    *(size_t*)p = n;
    *(uint32_t*)(p + NYX_HDR_ORIGIN_OFF) = NYX_ORIGIN_PERSIST;
    return p + NYX_HDR;
}

static inline int nyx_is_persistent(void* p) {
    return *(uint32_t*)((unsigned char*)p - NYX_HDR + NYX_HDR_ORIGIN_OFF) == NYX_ORIGIN_PERSIST;
}

void* nyx_wasi_gc_alloc(size_t n) {
    if (!nyx_arena_on) return nyx_persist_raw(n);
    size_t need = nyx_align16(n) + NYX_HDR;
    if (!nyx_arena_head || nyx_arena_head->cap - nyx_arena_head->used < need) {
        /* El PRIMER bloque de cada cadena es chico y crece ×4 hasta el tope:
           un turno retenido (ver «RETENCIÓN POR TURNO») cuesta 64 KB en vez
           de 1 MB, y un turno normal nunca llega al segundo bloque. */
        size_t grow = nyx_arena_head ? nyx_arena_head->cap * 4 : NYX_ARENA_BLOCK0;
        if (grow > NYX_ARENA_BLOCK) grow = NYX_ARENA_BLOCK;
        size_t cap = need > grow ? need : grow;
        NyxArenaBlock* b = (NyxArenaBlock*)malloc(sizeof(NyxArenaBlock) + cap);
        if (!b) return 0;
        b->next = nyx_arena_head;
        b->used = 0;
        b->cap = cap;
        nyx_arena_head = b;
    }
    unsigned char* p = nyx_arena_head->data + nyx_arena_head->used;
    nyx_arena_head->used += need;
    memset(p, 0, need);                 /* contrato Boehm: memoria EN CERO */
    *(size_t*)p = n;
    return p + NYX_HDR;
}

void* nyx_wasi_gc_realloc(void* p, size_t n) {
    if (!p) return nyx_wasi_gc_alloc(n);
    size_t old = *(size_t*)((unsigned char*)p - NYX_HDR);
    /* Conserva el origen (ver «ORIGEN DEL BLOQUE EN EL HEADER»). */
    void* q = nyx_is_persistent(p) ? nyx_persist_raw(n) : nyx_wasi_gc_alloc(n);
    if (!q) return 0;
    memcpy(q, p, old < n ? old : n);
    /* el origen no se libera: puede ser arena (no liberable) o persistente
       (semántica GC: nunca free). El costo es el mismo leak-by-design previo. */
    return q;
}

/* Activa la arena: todo lo alocado a partir de acá es memoria DE TURNO.
   Llamar UNA vez, después de _start (lo hace el shim con opts.arena). */
__attribute__((export_name("nyx_arena_begin")))
void nyx_arena_begin(void) { nyx_arena_on = 1; }

/* Descarta todo lo alocado desde begin (fin de un turno de evento).
   Conserva un bloque para no pagar malloc/free por evento.
   Si el turno tuvo cierres anclados, su cadena NO se recicla: se aparta
   entera y la próxima alocación abre una cadena nueva. */
__attribute__((export_name("nyx_arena_event_reset")))
void nyx_arena_event_reset(void) {
    if (!nyx_arena_on) return;
    if (nyx_turn_pin) {
        nyx_turn_pin->chain = nyx_arena_head;
        nyx_arena_head = 0;
        nyx_turn_pin = 0;               /* el turno que arranca es otro */
        return;
    }
    while (nyx_arena_head && nyx_arena_head->next) {
        NyxArenaBlock* nx = nyx_arena_head->next;
        free(nyx_arena_head);
        nyx_arena_head = nx;
    }
    if (nyx_arena_head) nyx_arena_head->used = 0;
}

/* Ancla el turno EN CURSO: su memoria no se recicla hasta que se desanclen
   todos sus cierres. Devuelve un token opaco para nyx_arena_unpin_turn().
   Varios anclajes del mismo turno comparten token (refcount) — el caso VDOM.
   Sin arena prendida devuelve 0: nada se libera nunca, no hay qué anclar, y
   un 0 hace que el unpin correspondiente sea un no-op.
   EN: pins the CURRENT turn; returns an opaque token (0 when the arena is off). */
__attribute__((export_name("nyx_arena_pin_turn")))
void* nyx_arena_pin_turn(void) {
    if (!nyx_arena_on) return 0;
    if (!nyx_turn_pin) {
        NyxPinnedTurn* t = nyx_pin_free;
        if (t) { nyx_pin_free = t->free_next; }
        else   { t = (NyxPinnedTurn*)malloc(sizeof(NyxPinnedTurn)); if (!t) return 0; }
        t->magic = NYX_PIN_MAGIC;
        t->chain = 0;
        t->refs = 0;
        t->free_next = 0;
        nyx_turn_pin = t;
        nyx_pinned_turns_live++;
    }
    nyx_turn_pin->refs++;
    return nyx_turn_pin;
}

/* Desancla un cierre. Cuando cae el último del turno, su cadena se libera.
   Idempotente ante un token ya desanclado (magic) y ante 0 — el binding que
   desancla al disparar y además en cancel() no tiene que llevar la cuenta.
   EN: unpins one closure; frees the turn's chain when the last one goes. */
__attribute__((export_name("nyx_arena_unpin_turn")))
void nyx_arena_unpin_turn(void* tok) {
    if (!tok) return;
    NyxPinnedTurn* t = (NyxPinnedTurn*)tok;
    if (t->magic != NYX_PIN_MAGIC) return;   /* doble desanclaje: no-op */
    if (--t->refs > 0) return;
    /* Desanclado DENTRO del mismo turno en que se ancló: la cadena todavía es
       la viva, no hay nada apartado que liberar — solo se suelta el turno. */
    if (t == nyx_turn_pin) nyx_turn_pin = 0;
    while (t->chain) {
        NyxArenaBlock* nx = t->chain->next;
        free(t->chain);
        t->chain = nx;
    }
    t->magic = 0;
    t->free_next = nyx_pin_free;
    nyx_pin_free = t;
    nyx_pinned_turns_live--;
}

/* Turnos retenidos ahora mismo. Existe para que un test pueda afirmar que el
   desanclaje realmente ocurre — sin este número, «no crece la memoria» se
   puede cumplir por casualidad. EN: pinned turns alive (for tests). */
__attribute__((export_name("nyx_arena_pinned_turns")))
int nyx_arena_pinned_turns(void) { return nyx_pinned_turns_live; }

/* ── arena_persist (arco wasm-arena-persistir, fase 1) ────────────────────
 *
 * QUÉ RESUELVE. Un String/Array que nace en un evento y se guarda en un
 * global para leerlo en otro evento (el caso de nyxerp: `al_escanear` guarda,
 * `al_cobrar` lee). Con la arena encendida vive en memoria de turno y el reset
 * lo recicla. `arena_persist(x)` devuelve una COPIA PROFUNDA en la región
 * persistente, que nunca se libera.
 *
 * POR QUÉ ESTO SÍ PUEDE COPIAR Y EL ANCLAJE DE CIERRES NO. El comentario de
 * «RETENCIÓN POR TURNO» descarta copiar el entorno de un cierre porque la copia
 * sería superficial: el runtime no sabe qué hay adentro. Acá sí se sabe: el
 * compilador elige la función por el tipo ESTÁTICO del argumento (String o
 * Array; struct/Map/Fn se rechazan al compilar, NYX1039) y cada slot de un
 * Array trae su tag (runtime-arrays.h). Un slot String se copia con sus bytes;
 * un slot Array, recursivo; int/float/bool, por valor.
 *
 * UN SLOT SIN TAG ABORTA. `NYX_TAG_UNKNOWN` dice «no sé qué hay acá»: copiarlo
 * como int dejaría un puntero de turno adentro de la copia persistente, que es
 * exactamente el silently-wrong que esto viene a evitar. Mismo criterio que
 * nyx_array_get_checked: abortar con diagnóstico. MEDIDO (2026-09-23, 0.33.0,
 * en nativo con nyx_array_get_tag; el codegen es el mismo en wasm):
 *   - String, float y bool llegan tagueados por todas las vías probadas
 *     (literal, push, split, a[i]=x, slice, keys, retorno de fn, expresiones).
 *   - int SOLO lleva tag si es una constante literal (`[1, 2]`) o se empuja a
 *     un `Array<int>` anotado. Un int CALCULADO —una variable, `n * 3`,
 *     `s.length()`, el retorno de una fn— llega UNKNOWN en literal, push y
 *     a[i]=x. O sea: `arena_persist([n, n + 1])` aborta hoy.
 *   - Un slot que contiene OTRO Array llegaba UNKNOWN por todas las vías.
 *     Desde el 2026-09-26 el codegen lo taguea ARRAY en el literal, el push y
 *     a[i]=x (pedido de Ottavio), y se copia en profundidad. Los de
 *     Map.values() siguen UNKNOWN.
 * Lo que siga sin tag aborta con este diagnóstico (ruidoso a propósito,
 * nunca silencioso). (Los enteros calculados se arreglaron en este mismo arco:
 * la nota de arriba es la medición original.)
 * MAP/PTR también abortan: un Map no lleva el tipo de sus valores y un PTR
 * (un struct) no lleva su layout.
 *
 * SIN DETECTAR «YA PERSISTENTE» (D-4): persistir dos veces lo mismo hace dos
 * copias — correcto, y es memoria que no vuelve. Los bytes se suman a
 * nyx_persist_bytes. (Desde el 2026-09-23 el header SÍ lleva la marca de
 * origen, para realloc; no se usa acá para saltear la copia porque un Array
 * persistente puede tener slots String de turno adentro.)
 *
 * EN: deep copy of a String/Array into the persistent region, walking slot
 * tags; an untagged slot aborts instead of copying a turn pointer blindly. */
#include "../strings.h"                 /* nyx_string, nyx_array_t, NYX_TAG_* */
#include <stdio.h>
#include <inttypes.h>

#define NYX_PERSIST_MAX_DEPTH 64        /* un ciclo no se tagea hoy; tope por las dudas */

/* Aloca en la región persistente AUNQUE la arena esté encendida. Es el mismo
   nyx_persist_raw de la rama calloc de nyx_wasi_gc_alloc: lleva la marca de
   origen, así que un push posterior que lo haga crecer sigue persistente. */
static void* nyx_persist_alloc(size_t n) {
    void* p = nyx_persist_raw(n);
    if (!p) {
        fprintf(stderr, "💥 Runtime Error: arena_persist: sin memoria para %zu bytes\n", n);
        exit(1);
    }
    return p;
}

static nyx_string* nyx_persist_string(nyx_string* s) {
    if (!s) return s;
    int64_t len = s->length > 0 ? s->length : 0;
    nyx_string* c = (nyx_string*)nyx_persist_alloc(sizeof(nyx_string));
    char* d = (char*)nyx_persist_alloc((size_t)len + 1);
    if (len > 0) memcpy(d, s->data, (size_t)len);
    d[len] = '\0';
    c->length = len;
    c->capacity = len + 1;
    c->data = d;
    return c;
}

static const char* nyx_persist_tag_name(int t) {
    switch (t) {
        case NYX_TAG_UNKNOWN: return "sin tag (UNKNOWN)";
        case NYX_TAG_MAP:     return "Map";
        case NYX_TAG_PTR:     return "puntero (struct u otro)";
        default:              return "tag desconocido";
    }
}

static nyx_array_t* nyx_persist_array(nyx_array_t* a, int depth) {
    if (!a) return a;
    if (depth > NYX_PERSIST_MAX_DEPTH) {
        fprintf(stderr, "💥 Runtime Error: arena_persist: Array anidado a más de %d niveles"
                        " (¿un ciclo?) — no se persiste\n", NYX_PERSIST_MAX_DEPTH);
        exit(1);
    }
    int64_t n = a->length > 0 ? a->length : 0;
    /* Capacidad = largo (mínimo 8, la de nyx_array_new): la copia no reserva
       de más. Un push que la haga crecer DURANTE un evento realoca el buffer
       con nyx_wasi_gc_realloc, que CONSERVA EL ORIGEN (marca en el header):
       el buffer nuevo sigue persistente. Hasta el 2026-09-23 caía en la arena
       y el global quedaba colgando (medido: 1000 push de int, suma basura);
       blindado por tests/wasm/test-wasm-38-arena-global-push. */
    int64_t cap = n > 8 ? n : 8;
    nyx_array_t* c = (nyx_array_t*)nyx_persist_alloc(sizeof(nyx_array_t));
    c->data = (int64_t*)nyx_persist_alloc(sizeof(int64_t) * (size_t)cap);
    c->tags = (uint8_t*)nyx_persist_alloc(sizeof(uint8_t) * (size_t)cap);
    c->length = n;
    c->capacity = cap;
    for (int64_t i = 0; i < n; i++) {
        int t = a->tags ? (int)a->tags[i] : NYX_TAG_UNKNOWN;
        int64_t v = a->data[i];
        switch (t) {
            case NYX_TAG_INT: case NYX_TAG_FLOAT: case NYX_TAG_BOOL:
                break;                                   /* por valor */
            case NYX_TAG_STRING:
                v = (int64_t)(intptr_t)nyx_persist_string((nyx_string*)(intptr_t)v);
                break;
            case NYX_TAG_ARRAY:
                v = (int64_t)(intptr_t)nyx_persist_array((nyx_array_t*)(intptr_t)v, depth + 1);
                break;
            default:
                fprintf(stderr,
                    "💥 Runtime Error: arena_persist: el slot %" PRId64 " del Array es %s,"
                    " y copiarlo a ciegas dejaría un puntero a memoria del turno."
                    " Llevan tag los slots String/int/float/bool y los Array anidados;"
                    " un valor de Map.values() o un struct, todavía no"
                    " — ver runtime/wasi/nyx_arena.c, «arena_persist»\n",
                    i, nyx_persist_tag_name(t));
                exit(1);
        }
        c->data[i] = v;
        c->tags[i] = (uint8_t)t;
    }
    return c;
}

/* Puntos de entrada del IR: codegen baja `arena_persist(x)` a una de las dos
   según el tipo estático de x. No se exportan al JS: no hay caso de uso y la
   tabla de exports es la superficie pública del módulo. */
nyx_string* nyx_arena_persist_string(nyx_string* s) { return nyx_persist_string(s); }
nyx_array_t* nyx_arena_persist_array(nyx_array_t* a) { return nyx_persist_array(a, 0); }

/* Bytes de la región persistente: todo lo alocado antes de nyx_arena_begin()
   (el _start) más lo que copió arena_persist. Nunca baja. Devuelve int64
   porque del lado Nyx es un `int` (std/wasm_mem.nx: arena_stats).
   EN: persistent-region bytes (monotonic). */
__attribute__((export_name("nyx_arena_persistent_bytes")))
int64_t nyx_arena_persistent_bytes(void) { return (int64_t)nyx_persist_bytes; }

/* Bytes de TURNO en uso ahora: la suma de `used` sobre la cadena viva. Tras un
   nyx_arena_event_reset() vuelve a 0 — eso es lo que un test afirma para saber
   que la arena no crece. NO cuenta las cadenas de turnos anclados (apartadas
   por el reset, ver «RETENCIÓN POR TURNO»): esas se miden por
   nyx_arena_pinned_turns(). La cadena es corta (bloque geométrico), recorrerla
   es barato. Con la arena apagada es 0: todo cae en la región persistente.
   EN: turn bytes in use in the live chain (0 right after a reset). */
__attribute__((export_name("nyx_arena_turn_bytes")))
int64_t nyx_arena_turn_bytes(void) {
    uint64_t total = 0;
    for (NyxArenaBlock* b = nyx_arena_head; b; b = b->next) total += b->used;
    return (int64_t)total;
}

#endif /* __wasi__ */
