// nyx-wasi-shim.js — polyfill WASI preview1 mínimo para correr módulos Nyx
// (compilados con `make wasm`, target wasm32-wasi) en el NAVEGADOR o en Node,
// sin wasmtime. Cubre los imports que el runtime esencial de Nyx realmente usa
// (fd_write/fd_read/proc_exit/args/fd_* stubs) + random/clock/environ por
// robustez. Sin filesystem: fd_read de stdin devuelve EOF y no hay preopens.
//
// EN: minimal WASI preview1 polyfill to run Nyx wasm32-wasi modules in the
// browser or Node without wasmtime. Covers the imports the essential Nyx
// runtime actually uses; no filesystem (stdin is EOF, no preopens).
//
// Uso / usage:
//   import { runNyxWasm } from "./nyx-wasi-shim.js"
//   const { exitCode, stdout, stderr } = await runNyxWasm(bytes, { args: ["prog"] })

const ERRNO_SUCCESS = 0;
const ERRNO_BADF = 8;

class NyxExit {
    constructor(code) { this.code = code; }
}

export function makeWasiImports(state) {
    const td = new TextDecoder();
    const te = new TextEncoder();

    const mem = () => new DataView(state.memory.buffer);
    const bytes = () => new Uint8Array(state.memory.buffer);

    const writeToSink = (fd, chunk) => {
        const text = td.decode(chunk, { stream: true });
        if (fd === 2) { state.stderr += text; } else { state.stdout += text; }
        if (state.onOutput) state.onOutput(fd, text);
    };

    return {
        wasi_snapshot_preview1: {
            args_sizes_get(argcPtr, argvBufSizePtr) {
                const enc = state.args.map(a => te.encode(a + "\0"));
                mem().setUint32(argcPtr, enc.length, true);
                mem().setUint32(argvBufSizePtr, enc.reduce((n, a) => n + a.length, 0), true);
                return ERRNO_SUCCESS;
            },
            args_get(argvPtr, argvBufPtr) {
                let bufOff = argvBufPtr;
                let ptrOff = argvPtr;
                for (const a of state.args) {
                    const enc = te.encode(a + "\0");
                    mem().setUint32(ptrOff, bufOff, true);
                    bytes().set(enc, bufOff);
                    bufOff += enc.length;
                    ptrOff += 4;
                }
                return ERRNO_SUCCESS;
            },
            environ_sizes_get(countPtr, bufSizePtr) {
                mem().setUint32(countPtr, 0, true);
                mem().setUint32(bufSizePtr, 0, true);
                return ERRNO_SUCCESS;
            },
            environ_get() { return ERRNO_SUCCESS; },
            fd_write(fd, iovsPtr, iovsLen, nwrittenPtr) {
                let written = 0;
                for (let i = 0; i < iovsLen; i++) {
                    const base = mem().getUint32(iovsPtr + i * 8, true);
                    const len = mem().getUint32(iovsPtr + i * 8 + 4, true);
                    writeToSink(fd, bytes().subarray(base, base + len));
                    written += len;
                }
                mem().setUint32(nwrittenPtr, written, true);
                return ERRNO_SUCCESS;
            },
            fd_read(fd, iovsPtr, iovsLen, nreadPtr) {
                // stdin = EOF (sin input interactivo en esta fase)
                mem().setUint32(nreadPtr, 0, true);
                return ERRNO_SUCCESS;
            },
            fd_close() { return ERRNO_SUCCESS; },
            fd_seek(fd, offLo, offHi, whence, newOffPtr) {
                mem().setBigUint64(newOffPtr, 0n, true);
                return ERRNO_SUCCESS;
            },
            fd_fdstat_get(fd, statPtr) {
                // fs_filetype=2 (character_device), flags/rights en cero
                bytes().fill(0, statPtr, statPtr + 24);
                bytes()[statPtr] = 2;
                return ERRNO_SUCCESS;
            },
            // Sin preopens: BADF corta el descubrimiento de directorios de wasi-libc
            fd_prestat_get() { return ERRNO_BADF; },
            fd_prestat_dir_name() { return ERRNO_BADF; },
            random_get(bufPtr, bufLen) {
                const view = bytes().subarray(bufPtr, bufPtr + bufLen);
                if (globalThis.crypto && globalThis.crypto.getRandomValues) {
                    // getRandomValues acepta máx 64KB por llamada
                    for (let off = 0; off < view.length; off += 65536) {
                        globalThis.crypto.getRandomValues(view.subarray(off, Math.min(off + 65536, view.length)));
                    }
                } else {
                    for (let i = 0; i < view.length; i++) view[i] = (Math.random() * 256) | 0;
                }
                return ERRNO_SUCCESS;
            },
            clock_time_get(id, precision, timePtr) {
                mem().setBigUint64(timePtr, BigInt(Date.now()) * 1000000n, true);
                return ERRNO_SUCCESS;
            },
            proc_exit(code) { throw new NyxExit(code); },
        },
    };
}

// Helpers de marshalling para el FFI extern "js" (fase 1 Escenario B).
// Layout de String Nyx en memoria lineal (ABI int64 del runtime):
//   { i64 length @0, i64 capacity @8, u32 data_ptr @16 }  (wasm32: ptr=4 bytes)
// int Nyx = i64 → llega/sale de JS como BigInt.
// EN: marshalling helpers for the extern "js" FFI. Nyx String layout in linear
// memory is {i64 len, i64 cap, u32 ptr}; Nyx int is i64 (JS BigInt).
export function makeNyxHelpers(state) {
    const td = new TextDecoder();
    const te = new TextEncoder();
    const mem = () => new DataView(state.memory.buffer);
    const bytes = () => new Uint8Array(state.memory.buffer);
    // Lee un String Nyx (puntero i32 a nyx_string) → string JS
    const readString = (ptr) => {
        const len = Number(mem().getBigUint64(ptr, true));
        const dataPtr = mem().getUint32(ptr + 16, true);
        return td.decode(bytes().subarray(dataPtr, dataPtr + len));
    };
    // Invoca un closure Nyx (par {fn_ptr, env_ptr}) por la function table.
    // Definido acá arriba —y no solo como método— para que anchorClosure lo
    // use sin depender de `this` (los bindings destructuran los helpers).
    const callClosureImpl = (pairPtr, ...args) => {
        if (!state.table) {
            throw new Error("callClosure: __indirect_function_table no exportada (linkear con -Wl,--export-table)");
        }
        const fnIdx = mem().getUint32(pairPtr, true);
        const envPtr = mem().getUint32(pairPtr + 4, true);
        // Por enterWasm: un cierre que llega a un import #[suspends] devuelve
        // una Promise en vez del valor (y rebobina con los mismos argumentos).
        return enterWasm(() => state.table.get(fnIdx)(envPtr, ...args));
    };

    // ── Asyncify: una pila wasm que ESPERA al anfitrión (arco async-real-wasm) ──
    //
    // Solo existe si el módulo pasó por `wasm-opt --asyncify` —lo hace el build
    // cuando el programa usa un import `#[suspends]`— y por lo tanto exporta
    // asyncify_*. Sin eso `state.asy` es null y cada helper de abajo es la
    // llamada directa de siempre: un módulo sin await sigue EXACTAMENTE igual.
    //
    // El ciclo, medido a mano antes de escribir esto (ledger del arco):
    //   1. JS entra a wasm (_start, un export o un cierre) por enterWasm.
    //   2. Nyx llama a un import que suspende; el import (vía `suspend`) arranca
    //      la Promise, llama asyncify_start_unwind y vuelve. Asyncify desenrolla
    //      la pila wasm guardando los locals en un buffer de memoria lineal.
    //   3. enterWasm ve el estado «unwinding», lo detiene y espera la Promise.
    //   4. Al resolver: convierte el resultado a valor wasm (p.ej. makeString,
    //      EN ESTE turno), asyncify_start_rewind y vuelve a llamar la MISMA
    //      entrada. Asyncify rebobina hasta el import, que ahora entrega el valor.
    //   5. Nyx sigue en la línea siguiente. Puede volver a suspender (bucle).
    //
    // UNA SOLA PILA SUSPENDIDA (D-3). Asyncify tiene un estado global y un solo
    // buffer, y la pila sombra de C (__stack_pointer) es compartida: una
    // segunda computación suspendida pisaría a la primera. Por eso los eventos
    // que llegan mientras hay una suspensión se ENCOLAN (`turn`) y se entregan
    // en orden al terminar, y un import que suspende alcanzado desde una
    // entrada anidada (JS→wasm→JS→wasm) es un error ruidoso: Asyncify no puede
    // desenrollar a través de un marco JS.
    //
    // ARENA. La pila suspendida guarda punteros a memoria del turno en que
    // corría. Si algo resetea la arena durante la espera, al rebobinar lee
    // basura EN SILENCIO (medido: «antes-107» donde iba «antes-7»). Por eso al
    // desenrollar se ancla el turno vivo (nyx_arena_pin_turn) y se suelta
    // cuando la entrada termina de verdad. Medido: 1000 ciclos sin crecer la
    // memoria y sin turnos retenidos.
    //
    // NO TOCAR el puntero actual del buffer entre stop_unwind y start_rewind:
    // rewind lee desde la CIMA de lo guardado. Reiniciarlo rebobina con índices
    // vacíos y trapea «unreachable» lejos de la causa (en fputs).
    const resetAsyncify = (a) => {
        const s = a.ex.asyncify_get_state();
        if (s === 1) a.ex.asyncify_stop_unwind();
        else if (s === 2) a.ex.asyncify_stop_rewind();
    };
    // Un trap DURANTE el desenrollado casi siempre es el buffer de Asyncify
    // desbordado (medido: con menos bytes de los que la pila necesita,
    // «unreachable» sin más). Se dice la causa en vez de dejar el trap pelado.
    const explainUnwindTrap = (a, e) => {
        if (e instanceof WebAssembly.RuntimeError && a.ex.asyncify_get_state() === 1) {
            e.message += ` — ocurrió mientras Asyncify desenrollaba la pila: probablemente desbordó ` +
                `su buffer (${a.dataBytes} bytes; una pila suspendida demasiado profunda)`;
        }
        return e;
    };
    const callCounted = (a, fn) => {
        a.depth++;
        try { return fn(); }
        catch (e) { explainUnwindTrap(a, e); resetAsyncify(a); throw e; }
        finally { a.depth--; }
    };
    const resumeSuspended = async (a, fn) => {
        const tokens = [];
        try {
            for (;;) {
                a.suspended = true;
                if (state.pinTurn) tokens.push(state.pinTurn());
                const { promise, toWasm } = a.pending;
                a.pending = null;
                try { a.value = toWasm(await promise); a.error = null; }
                catch (e) { a.value = undefined; a.error = e; }
                a.suspended = false;
                a.ex.asyncify_start_rewind(a.dataPtr);
                const r = callCounted(a, fn);
                if (a.ex.asyncify_get_state() !== 1) return r;
                a.ex.asyncify_stop_unwind();
            }
        } finally {
            a.suspended = false;
            if (state.unpinTurn) for (const t of tokens) state.unpinTurn(t);
        }
    };
    // Entrar a wasm. Devuelve el valor, o una Promise si la llamada suspendió.
    const enterWasm = (fn) => {
        const a = state.asy;
        if (!a) return fn();
        const r = callCounted(a, fn);
        if (a.ex.asyncify_get_state() !== 1) return r;
        a.ex.asyncify_stop_unwind();
        return resumeSuspended(a, fn);
    };
    // Cuerpo de un import que suspende. `start()` corre YA (leer los punteros
    // de los argumentos acá, no después) y devuelve una Promise; `toWasm`
    // convierte su resultado al valor que el import devuelve, en el turno de
    // la reanudación. `zero` es lo que se devuelve mientras desenrolla: tiene
    // que tener el tipo del retorno (0n para un `int` Nyx, que es i64).
    const suspend = (start, toWasm, zero) => {
        const a = state.asy;
        if (!a) {
            throw new Error("import que suspende: el módulo no pasó por wasm-opt --asyncify " +
                "(declarar el extern con #[suspends] y construir con nyx build --target wasm32-wasi)");
        }
        if (a.ex.asyncify_get_state() === 2) {
            a.ex.asyncify_stop_rewind();
            if (a.error) { const e = a.error; a.error = null; throw e; }
            const v = a.value;
            a.value = undefined;
            return v;
        }
        if (a.suspended || a.pending) {
            throw new Error("wasm: ya hay una pila suspendida esperando al anfitrión; una segunda " +
                "suspensión la pisaría (una sola pila suspendida a la vez)");
        }
        if (a.depth !== 1) {
            throw new Error("wasm: un import que suspende se alcanzó desde una entrada anidada " +
                "(JS→wasm→JS→wasm); Asyncify no desenrolla a través de un marco JS");
        }
        a.pending = { promise: Promise.resolve(start()), toWasm: toWasm || ((v) => v) };
        a.ex.asyncify_start_unwind(a.dataPtr);
        return zero;
    };
    // `try { thunk() } finally { fin() }` que respeta la suspensión: si thunk
    // devolvió una Promise, fin corre cuando termina, no cuando desenrolla.
    // Los bindings sueltan anclajes y resetean la arena en `fin`.
    const finish = (thunk, fin) => {
        let r;
        try { r = thunk(); }
        catch (e) { fin(); throw e; }
        if (r instanceof Promise) {
            return r.then((v) => { fin(); return v; }, (e) => { fin(); throw e; });
        }
        fin();
        return r;
    };
    // Un TURNO de evento: todo lo que un binding hace al dispararse (armar
    // Strings, llamar, resetear) va adentro, para que un evento encolado arme
    // sus argumentos cuando le toca y no en un turno que ya se reseteó.
    // Anidado síncrono (dentro de otro turno o con wasm en la pila): corre ya.
    const drainTurns = (a) => {
        while (!a.busy && a.queue.length > 0) {
            const { body, res, rej } = a.queue.shift();
            try {
                const r = runTurn(a, body);
                if (r instanceof Promise) r.then(res, rej); else res(r);
            } catch (e) { rej(e); }
        }
    };
    const runTurn = (a, body) => {
        let r;
        a.turnDepth++;
        try { r = body(); } finally { a.turnDepth--; }
        if (!(r instanceof Promise)) return r;
        a.busy = true;
        return r.finally(() => { a.busy = false; drainTurns(a); });
    };
    const turn = (body) => {
        const a = state.asy;
        if (!a || a.turnDepth > 0 || a.depth > 0) return body();
        if (a.busy) return new Promise((res, rej) => a.queue.push({ body, res, rej }));
        return runTurn(a, body);
    };
    // Construye un String Nyx en memoria wasm (vía nyx_wasi_malloc exportado)
    // → puntero i32 usable como retorno `-> String` de un extern "js"
    const makeString = (jsStr) => {
        if (!state.malloc) throw new Error("makeString: el módulo no exporta nyx_wasi_malloc");
        const data = te.encode(String(jsStr));
        const dataPtr = state.malloc(data.length + 1); // +1 NUL (calloc → ya en cero)
        bytes().set(data, dataPtr);
        const strPtr = state.malloc(24); // {i64,i64,ptr} = 20 en wasm32; 24 con margen
        mem().setBigUint64(strPtr, BigInt(data.length), true);
        mem().setBigUint64(strPtr + 8, BigInt(data.length), true);
        mem().setUint32(strPtr + 16, dataPtr, true);
        return strPtr;
    };
    return {
        readString,
        makeString,
        // — Marshalling de Array (handoff #4) — layout {i64 len, i64 cap, ptr}
        // con slots de 8 bytes: int = i64 (BigInt), float = f64 bitcast en el
        // slot (se lee directo como Float64), String = puntero como i64.
        // kind: "int" | "float" | "string"
        readArray(ptr, kind = "int") {
            const len = Number(mem().getBigUint64(ptr, true));
            const dataPtr = mem().getUint32(ptr + 16, true);
            const out = [];
            for (let i = 0; i < len; i++) {
                const off = dataPtr + i * 8;
                if (kind === "float") {
                    out.push(mem().getFloat64(off, true));
                } else if (kind === "string") {
                    const raw = mem().getBigUint64(off, true);
                    out.push(readString(Number(BigInt.asUintN(32, raw))));
                } else {
                    out.push(mem().getBigInt64(off, true)); // BigInt
                }
            }
            return out;
        },
        // Construye un Array Nyx en memoria wasm → puntero usable como
        // retorno `-> Array` de un extern "js"
        makeArray(values, kind = "int") {
            if (!state.malloc) throw new Error("makeArray: el módulo no exporta nyx_wasi_malloc");
            const n = values.length;
            const dataPtr = state.malloc(Math.max(n, 1) * 8);
            for (let i = 0; i < n; i++) {
                const off = dataPtr + i * 8;
                if (kind === "float") {
                    mem().setFloat64(off, Number(values[i]), true);
                } else if (kind === "string") {
                    mem().setBigUint64(off, BigInt(makeString(values[i])), true);
                } else {
                    mem().setBigInt64(off, BigInt(values[i]), true);
                }
            }
            const arrPtr = state.malloc(24); // {i64 len, i64 cap, u32 data}
            mem().setBigUint64(arrPtr, BigInt(n), true);
            mem().setBigUint64(arrPtr + 8, BigInt(n), true);
            mem().setUint32(arrPtr + 16, dataPtr, true);
            return arrPtr;
        },
        // Escribe al stdout capturado del shim (state.stdout + onOutput) —
        // console.log iría al proceso host, FUERA del capture de runNyxWasm.
        writeStdout(text) {
            state.stdout += text;
            if (state.onOutput) state.onOutput(1, text);
        },
        // Invoca un CLOSURE Nyx (par {fn_ptr, env_ptr}, wasm32: 2×u32) vía la
        // function table exportada. fn_ptr en wasm ES un índice de tabla.
        // Requiere link con -Wl,--export-table (make wasm ya lo hace).
        callClosure: callClosureImpl,
        // Asyncify (ver arriba). Para bindings: `suspend` en un import
        // #[suspends], `turn` alrededor de todo lo que un evento hace, `finish`
        // en vez de try/finally. `enterWasm` lo usa runNyxWasm en las entradas.
        suspend,
        turn,
        finish,
        enterWasm,
        // Ancla un CLOSURE que se va a disparar en OTRO turno de evento
        // (fetch en vuelo, listener, timer). Sin esto el entorno del cierre
        // —memoria de turno— muere en el nyx_arena_event_reset() siguiente y
        // el cierre lee basura o trapea. Ver runtime/wasi/nyx_arena.c.
        //
        // Devuelve { call(...args), release() }. REGLA: el release() lo hace
        // el BINDING, nunca el usuario — un disparo único libera al disparar,
        // uno multi-disparo libera en su cancelación. Un cierre anclado que
        // nadie libera retiene el turno entero: la fuga es ruidosa a propósito.
        //
        // Con la arena apagada pinTurn devuelve 0 y esto es un envoltorio sin
        // costo: nada se libera nunca, no hay qué anclar.
        //
        // release() DURANTE el propio disparo se POSTERGA hasta que la llamada
        // vuelve. Es el caso normal de una interfaz, no uno raro: un click que
        // llama a update() y el VDOM re-registra el listener de ese mismo botón,
        // un interval que se apaga a sí mismo, un SSE que se cierra al recibir
        // «fin», un router que re-suscribe hashchange. Los cinco bindings
        // desanclan el cierre viejo en ese momento, y el cierre SIGUE CORRIENDO:
        // si el unpin soltara ya el turno, lo que el cierre lea después de
        // re-registrarse está en memoria liberada. Medido 2026-09-14: trap
        // «memory access out of bounds» en nyx_string_concat dentro del cierre
        // (test-wasm-29). `depth` y no un booleano: un cierre puede dispararse
        // a sí mismo de forma síncrona (un handler que dispara el mismo evento).
        // EN: anchors a closure fired in a LATER event turn; the binding owns
        // release(), never user code. A release() while the closure is running
        // is deferred until the outermost call returns.
        anchorClosure(pairPtr) {
            const tok = state.pinTurn ? state.pinTurn() : 0;
            let live = true;
            let depth = 0;          // llamadas en curso de ESTE cierre
            let pending = false;    // release() pedido mientras corría
            const unpin = () => { if (tok && state.unpinTurn) state.unpinTurn(tok); };
            return {
                get alive() { return live; },
                call: (...args) => {
                    if (!live) return undefined;
                    depth++;
                    // finish y no try/finally: un cierre que suspende SIGUE
                    // corriendo hasta que su Promise termina, y su entorno
                    // tiene que seguir anclado hasta entonces.
                    return finish(() => callClosureImpl(pairPtr, ...args), () => {
                        depth--;
                        if (depth === 0 && pending) { pending = false; unpin(); }
                    });
                },
                release() {
                    if (!live) return;
                    live = false;
                    if (depth > 0) { pending = true; return; }
                    unpin();
                },
            };
        },
        // Escapes crudos por si un import necesita más
        memoryBytes: bytes,
        memoryView: mem,
    };
}

// Implementación estándar de los imports js_dom_* de std/dom.nx sobre un DOM
// real (browser) o un mock (tests node: pasá un objeto con querySelector).
// Los eventos llaman fns Nyx EXPORTADAS por nombre → hace falta cerrar el
// círculo post-instanciación: usá el `ref` devuelto.
//   const dom = domBindings();
//   const r = await runNyxWasm(bytes, { js: dom.imports });
//   dom.ref.exports = r.exports;   // habilita los listeners
// EN: standard js_dom_* implementation for std/dom.nx over a real DOM or a
// mock; set ref.exports after runNyxWasm so event listeners can re-enter Nyx.
export function domBindings(doc) {
    const d = doc || globalThis.document;
    // currentEvent: el Event mientras corre un handler de dom_on — los
    // accesores js_ev_* de std/dom leen de acá (handoff #3a: Event sin
    // closures ni marshalling de objetos).
    const ref = { exports: null, currentEvent: null };
    // Tabla de handles (Task 2 del framework VDOM): un `int` Nyx identifica
    // un nodo DOM sin cruzar selectores CSS por el FFI. handles[0]=null a
    // propósito — el índice 0 es el handle "nulo" (nodo no encontrado).
    // Cada nodo recibe UN SOLO handle estable (memoizado en __nyxHandle) así
    // dom_child_at/dom_query_handle devuelven el mismo entero para el mismo
    // nodo en llamadas repetidas.
    const handles = [null];
    const put = (n) => { handles.push(n); return handles.length - 1; };
    const handleOf = (n) => {
        if (n == null) return 0;
        if (n.__nyxHandle === undefined) n.__nyxHandle = put(n);
        return n.__nyxHandle;
    };
    const imports = (nyx) => ({
        js_dom_set_text(selPtr, textPtr) {
            const el = d.querySelector(nyx.readString(selPtr));
            if (el) el.textContent = nyx.readString(textPtr);
        },
        js_dom_set_html(selPtr, htmlPtr) {
            const el = d.querySelector(nyx.readString(selPtr));
            if (el) el.innerHTML = nyx.readString(htmlPtr);
        },
        js_dom_get_value(selPtr) {
            const el = d.querySelector(nyx.readString(selPtr));
            return nyx.makeString(el && el.value !== undefined ? el.value : "");
        },
        js_dom_on(selPtr, eventPtr, handlerPtr) {
            // Leer EAGER (los punteros son válidos ahora; el listener corre después)
            const sel = nyx.readString(selPtr);
            const event = nyx.readString(eventPtr);
            const handler = nyx.readString(handlerPtr);
            const el = d.querySelector(sel);
            if (!el) return;
            el.addEventListener(event, (ev) => nyx.turn(() => {
                if (!ref.exports || !ref.exports[handler]) {
                    throw new Error(`dom_on: export Nyx '${handler}' no encontrado (¿#[export_name = "${handler}"]? ¿ref.exports seteado?)`);
                }
                ref.currentEvent = ev || null;
                return nyx.finish(() => ref.exports[handler](), () => {
                    ref.currentEvent = null;
                    if (ref.afterEvent) ref.afterEvent();
                });
            }));
        },
        js_console_log(msgPtr) {
            console.log(nyx.readString(msgPtr));
        },
        // — Ampliación handoff #5 (2026-07-02): atributos, clases, value, count —
        js_dom_get_attr(selPtr, namePtr) {
            const el = d.querySelector(nyx.readString(selPtr));
            const v = el ? el.getAttribute(nyx.readString(namePtr)) : null;
            return nyx.makeString(v == null ? "" : v);
        },
        js_dom_set_attr(selPtr, namePtr, valPtr) {
            const el = d.querySelector(nyx.readString(selPtr));
            if (el) el.setAttribute(nyx.readString(namePtr), nyx.readString(valPtr));
        },
        js_dom_remove_attr(selPtr, namePtr) {
            const el = d.querySelector(nyx.readString(selPtr));
            if (el) el.removeAttribute(nyx.readString(namePtr));
        },
        js_dom_class_add(selPtr, clsPtr) {
            const el = d.querySelector(nyx.readString(selPtr));
            if (el) el.classList.add(nyx.readString(clsPtr));
        },
        js_dom_class_remove(selPtr, clsPtr) {
            const el = d.querySelector(nyx.readString(selPtr));
            if (el) el.classList.remove(nyx.readString(clsPtr));
        },
        js_dom_class_toggle(selPtr, clsPtr) {
            const el = d.querySelector(nyx.readString(selPtr));
            if (el) el.classList.toggle(nyx.readString(clsPtr));
        },
        js_dom_set_value(selPtr, valPtr) {
            const el = d.querySelector(nyx.readString(selPtr));
            if (el) el.value = nyx.readString(valPtr);
        },
        // int Nyx = i64 → BigInt hacia wasm
        js_dom_count(selPtr) {
            return BigInt(d.querySelectorAll(nyx.readString(selPtr)).length);
        },
        js_dom_get_attr_all(selPtr, namePtr) {
            const name = nyx.readString(namePtr);
            const els = d.querySelectorAll(nyx.readString(selPtr));
            const vals = [];
            for (const el of els) {
                const v = el.getAttribute ? el.getAttribute(name) : null;
                vals.push(v == null ? "" : v);
            }
            return nyx.makeArray(vals, "string");
        },
        // — Evento actual (handoff #3a) — válidos solo durante un handler —
        js_ev_type() {
            const ev = ref.currentEvent;
            return nyx.makeString(ev && ev.type ? String(ev.type) : "");
        },
        js_ev_key() {
            const ev = ref.currentEvent;
            return nyx.makeString(ev && ev.key ? String(ev.key) : "");
        },
        js_ev_target_attr(namePtr) {
            const t = ref.currentEvent && ref.currentEvent.target;
            const v = t && t.getAttribute ? t.getAttribute(nyx.readString(namePtr)) : null;
            return nyx.makeString(v == null ? "" : v);
        },
        js_ev_target_value() {
            const t = ref.currentEvent && ref.currentEvent.target;
            return nyx.makeString(t && t.value !== undefined ? String(t.value) : "");
        },
        js_ev_client_x() {
            const ev = ref.currentEvent;
            return BigInt(Math.round(ev && ev.clientX !== undefined ? ev.clientX : 0));
        },
        js_ev_client_y() {
            const ev = ref.currentEvent;
            return BigInt(Math.round(ev && ev.clientY !== undefined ? ev.clientY : 0));
        },
        js_ev_prevent_default() {
            const ev = ref.currentEvent;
            if (ev && ev.preventDefault) ev.preventDefault();
        },
        // — Handler closure (handoff #3b): par {fn_ptr, env_ptr} + table —
        js_dom_on_fn(selPtr, eventPtr, pairPtr) {
            const sel = nyx.readString(selPtr);
            const event = nyx.readString(eventPtr);
            const el = d.querySelector(sel);
            if (!el) return;
            // dedupe por (nodo, evento): sin esto cada llamada (p.ej. re-bind de
            // diff_handlers en cada update() del VDOM) AGREGA otro listener en vez
            // de reemplazar el anterior — un handler terminaría disparando N veces
            // tras N updates. Mismo mecanismo que js_dom_on_h.
            el.__nyxHandlers = el.__nyxHandlers || {};
            if (el.__nyxHandlers[event]) {
                el.removeEventListener(event, el.__nyxHandlers[event]);
                // el listener viejo es multi-disparo: acá está SU cancelación,
                // y por lo tanto acá va su desanclaje. El comentario que decía
                // «pairPtr queda vivo post-main (GC=calloc nunca libera)» era
                // falso bajo arena: un listener registrado DURANTE un evento
                // moría en el reset siguiente. Ver nyx.anchorClosure.
                if (el.__nyxHandlers[event].__anchor) el.__nyxHandlers[event].__anchor.release();
            }
            const anchor = nyx.anchorClosure(pairPtr);
            const cb = (ev) => nyx.turn(() => {
                ref.currentEvent = ev || null;
                return nyx.finish(() => anchor.call(), () => {
                    ref.currentEvent = null;
                    if (ref.afterEvent) ref.afterEvent();
                });
            });
            cb.__anchor = anchor;
            el.__nyxHandlers[event] = cb;
            el.addEventListener(event, cb);
        },
        // — Creación/composición de nodos POR HANDLE (Task 2, framework VDOM) —
        // std/dom.nx: dom_create/dom_append/dom_child_at/... El handle es un
        // índice en `handles` (int Nyx = i64 → BigInt en la frontera wasm).
        js_dom_create(tagPtr) {
            const el = d.createElement(nyx.readString(tagPtr));
            return BigInt(put(el));
        },
        js_dom_create_text(sPtr) {
            const t = d.createTextNode(nyx.readString(sPtr));
            return BigInt(put(t));
        },
        js_dom_append(parentH, childH) {
            const p = handles[Number(parentH)];
            const c = handles[Number(childH)];
            if (p && c && p.appendChild) p.appendChild(c);
        },
        js_dom_remove_at(parentH, idx) {
            const p = handles[Number(parentH)];
            if (!p || !p.childNodes) return;
            const node = p.childNodes[Number(idx)];
            if (node && node.remove) node.remove();
        },
        js_dom_replace(parentH, newH, oldH) {
            const p = handles[Number(parentH)];
            const n = handles[Number(newH)];
            const o = handles[Number(oldH)];
            if (p && n && o && p.replaceChild) p.replaceChild(n, o);
        },
        js_dom_insert_before(parentH, newH, refH) {
            const p = handles[Number(parentH)];
            const n = handles[Number(newH)];
            const r = handles[Number(refH)];
            if (p && n && p.insertBefore) p.insertBefore(n, r || null);
        },
        js_dom_child_at(parentH, idx) {
            const p = handles[Number(parentH)];
            if (!p || !p.childNodes) return 0n;
            const node = p.childNodes[Number(idx)];
            return node ? BigInt(handleOf(node)) : 0n;
        },
        // Adición Task 2 (router): cantidad de hijos directos (0 si el
        // handle no existe o no tiene childNodes).
        js_dom_child_count(h) {
            const n = handles[Number(h)];
            if (!n || !n.childNodes) return 0n;
            return BigInt(n.childNodes.length);
        },
        js_dom_set_text_h(h, sPtr) {
            const n = handles[Number(h)];
            if (n) n.textContent = nyx.readString(sPtr);
        },
        js_dom_set_attr_h(h, kPtr, vPtr) {
            const n = handles[Number(h)];
            if (n && n.setAttribute) n.setAttribute(nyx.readString(kPtr), nyx.readString(vPtr));
        },
        js_dom_remove_attr_h(h, kPtr) {
            const n = handles[Number(h)];
            if (n && n.removeAttribute) n.removeAttribute(nyx.readString(kPtr));
        },
        js_dom_query_handle(selPtr) {
            const el = d.querySelector(nyx.readString(selPtr));
            return el ? BigInt(handleOf(el)) : 0n;
        },
        js_dom_on_h(hPtr, eventPtr, pairPtr) {
            const n = handles[Number(hPtr)];
            const event = nyx.readString(eventPtr);
            if (!n || !n.addEventListener) return;
            // dedupe por (nodo, evento): `diff_handlers` (std/vdom.nx) re-emite
            // SetHandler en CADA update() aunque el handler no haya cambiado —
            // sin esto cada update() agregaría otro listener y un click dispararía
            // N veces tras N updates. Guardamos el callback actual por evento y lo
            // reemplazamos en vez de apilarlo.
            n.__nyxHandlers = n.__nyxHandlers || {};
            if (n.__nyxHandlers[event]) {
                n.removeEventListener(event, n.__nyxHandlers[event]);
                // reemplazar el listener ES cancelarlo → desanclar su entorno
                if (n.__nyxHandlers[event].__anchor) n.__nyxHandlers[event].__anchor.release();
            }
            const anchor = nyx.anchorClosure(pairPtr);
            const cb = (ev) => nyx.turn(() => {
                ref.currentEvent = ev || null;
                return nyx.finish(() => anchor.call(), () => {
                    ref.currentEvent = null;
                    if (ref.afterEvent) ref.afterEvent();
                });
            });
            cb.__anchor = anchor;
            n.__nyxHandlers[event] = cb;
            n.addEventListener(event, cb);
        },
    });
    return { imports, ref };
}

// Implementación estándar de los imports js_browser_*/js_ls_*/js_tz_offset/
// js_match_media de std/browser.nx (handoff #6). Igual que domBindings:
// callback-por-nombre-de-export → setear ref.exports tras runNyxWasm.
// opts permite inyectar mocks en tests: { fetch, storage, geo, matchMedia, now }.
//   const br = browserBindings();
//   const r = await runNyxWasm(bytes, { js: (nyx) => ({ ...br.imports(nyx) }) });
//   br.ref.exports = r.exports;
// EN: standard std/browser.nx bindings (fetch/timers/geo/localStorage/tz/
// matchMedia) over the real browser or injected mocks; callback-by-export-name.
export function browserBindings(opts = {}) {
    const ref = { exports: null };
    // Canales SSE vivos: id → { closed, abort, anchor }. El anchor se suelta al
    // cerrar, o si el stream termina/falla — nunca se deja anclado.
    const sseChannels = new Map();
    let sseSeq = 0;
    // Resultado de la última operación que suspendió (js_browser_*_await). UNO
    // alcanza: hay una sola pila suspendida a la vez (D-3).
    const ultimoAwait = { status: 0, kind: "", msg: "" };
    const fetchImpl = opts.fetch ||
        (globalThis.fetch ? globalThis.fetch.bind(globalThis) : null);
    // window/location: inyectables por opts (tests) — default al browser
    // real. Task 2 (router): js_browser_get_hash lee locationImpl.hash;
    // js_browser_on_hashchange_fn escucha sobre windowImpl.
    const windowImpl = opts.window ||
        (typeof window !== "undefined" ? window : globalThis);
    const locationImpl = opts.location ||
        (typeof location !== "undefined" ? location : { hash: "" });
    // storage: localStorage-like (getItem/setItem) o Map fallback (Node)
    const mapStore = new Map();
    const storage = opts.storage || globalThis.localStorage || {
        getItem: (k) => (mapStore.has(k) ? mapStore.get(k) : null),
        setItem: (k, v) => { mapStore.set(k, String(v)); },
    };
    const geoImpl = opts.geo || ((cb) => {
        const g = globalThis.navigator && globalThis.navigator.geolocation;
        if (g) g.getCurrentPosition((p) => cb(p.coords.latitude, p.coords.longitude), () => {});
    });
    const matchMediaImpl = opts.matchMedia || globalThis.matchMedia || null;
    const tzOffsetImpl = (opts.tzOffset !== undefined)
        ? () => opts.tzOffset
        : () => -(new Date().getTimezoneOffset());
    // Los handles de timer JS no caben en un i64 portable → tabla propia
    const timers = new Map();
    // anclajes de los timers con CLOSURE, por id: browser_clear_timer es la
    // cancelación y por lo tanto el punto de desanclaje (ver *_fn abajo).
    const timerAnchors = new Map();
    let timerSeq = 0;
    // `args` es una FUNCIÓN que arma los argumentos, y corre DENTRO del turno:
    // un evento encolado detrás de una pila suspendida (D-3) arma sus Strings
    // cuando le toca, no en un turno que para entonces ya se reseteó.
    const callExport = (nyx, name, args) => nyx.turn(() => {
        if (!ref.exports || !ref.exports[name]) {
            throw new Error(`browser: export Nyx '${name}' no encontrado (¿#[export_name]? ¿ref.exports seteado?)`);
        }
        return nyx.finish(() => ref.exports[name](...args()), () => { if (ref.afterEvent) ref.afterEvent(); });
    });
    const imports = (nyx) => ({
        js_browser_fetch(urlPtr, methodPtr, bodyPtr, handlerPtr) {
            const url = nyx.readString(urlPtr);
            const method = nyx.readString(methodPtr);
            const body = nyx.readString(bodyPtr);
            const handler = nyx.readString(handlerPtr);
            if (!fetchImpl) { callExport(nyx, handler, () => [0n, nyx.makeString("fetch no disponible")]); return; }
            Promise.resolve(fetchImpl(url, { method: method || "GET", body: body === "" ? undefined : body }))
                .then(async (r) => {
                    const text = await r.text();
                    callExport(nyx, handler, () => [BigInt(r.status), nyx.makeString(text)]);
                })
                .catch((e) => { callExport(nyx, handler, () => [0n, nyx.makeString(String(e))]); });
        },
        // — Variantes con CLOSURE (el entorno viaja: qué línea de la pantalla
        //   era) — mismo transporte {fn_ptr, env_ptr} que js_dom_on_fn.
        //   El desanclaje vive ACÁ, no en el código del usuario:
        //     fetch/timeout disparan UNA vez  → release al disparar;
        //     interval es multi-disparo       → release en clear_timer.
        js_browser_fetch_fn(urlPtr, methodPtr, bodyPtr, pairPtr) {
            const url = nyx.readString(urlPtr);
            const method = nyx.readString(methodPtr);
            const body = nyx.readString(bodyPtr);
            const anchor = nyx.anchorClosure(pairPtr);
            // un solo disparo: se llame como se llame (ok, error, sin fetch),
            // el cierre corre a lo sumo una vez y el entorno se suelta ahí.
            const fire = (status, text) => nyx.turn(() => nyx.finish(
                () => anchor.call(BigInt(status), nyx.makeString(text)),
                () => {
                    if (ref.afterEvent) ref.afterEvent();
                    anchor.release();
                }));
            if (!fetchImpl) { fire(0, "fetch no disponible"); return; }
            Promise.resolve(fetchImpl(url, { method: method || "GET", body: body === "" ? undefined : body }))
                .then(async (r) => { fire(r.status, await r.text()); })
                .catch((e) => { fire(0, String(e)); });
        },
        js_browser_timeout_fn(ms, pairPtr) {
            const anchor = nyx.anchorClosure(pairPtr);
            const id = ++timerSeq;
            timers.set(id, setTimeout(() => {
                timers.delete(id);
                nyx.turn(() => nyx.finish(() => anchor.call(), () => {
                    if (ref.afterEvent) ref.afterEvent();
                    anchor.release();          // un solo disparo
                    timerAnchors.delete(id);   // no dejar el anclaje muerto en la tabla
                }));
            }, Number(ms)));
            timerAnchors.set(id, anchor);      // por si lo cancelan antes de disparar
            return BigInt(id);
        },
        js_browser_interval_fn(ms, pairPtr) {
            const anchor = nyx.anchorClosure(pairPtr);
            const id = ++timerSeq;
            // Con una pila suspendida (D-3) cada tick se encola: un interval corto
            // durante un fetch lento entrega sus ticks juntos al terminar.
            timers.set(id, setInterval(() => {
                nyx.turn(() => nyx.finish(() => anchor.call(), () => {
                    if (ref.afterEvent) ref.afterEvent();
                }));
            }, Number(ms)));
            timerAnchors.set(id, anchor);      // multi-disparo: libera clear_timer
            return BigInt(id);
        },
        js_browser_interval(ms, handlerPtr) {
            const handler = nyx.readString(handlerPtr);
            const id = ++timerSeq;
            timers.set(id, setInterval(() => callExport(nyx, handler, () => []), Number(ms)));
            return BigInt(id);
        },
        js_browser_timeout(ms, handlerPtr) {
            const handler = nyx.readString(handlerPtr);
            const id = ++timerSeq;
            timers.set(id, setTimeout(() => { timers.delete(id); callExport(nyx, handler, () => []); }, Number(ms)));
            return BigInt(id);
        },
        js_browser_clear_timer(id) {
            const h = timers.get(Number(id));
            if (h !== undefined) { clearInterval(h); clearTimeout(h); timers.delete(Number(id)); }
            // cancelar un timer con cierre ES su desanclaje (release es
            // idempotente: un timeout que ya disparó y liberó no se rompe).
            const a = timerAnchors.get(Number(id));
            if (a) { a.release(); timerAnchors.delete(Number(id)); }
        },
        js_browser_geo(handlerPtr) {
            const handler = nyx.readString(handlerPtr);
            // lat/lon son float Nyx (f64) → cruzan como Number, sin BigInt
            geoImpl((lat, lon) => callExport(nyx, handler, () => [lat, lon]));
        },
        js_browser_geo_fn(pairPtr) {
            // Un solo disparo: si el permiso falla, geoImpl no llama y el
            // entorno quedaría anclado para siempre — por eso el release va en
            // un `fire` que corre a lo sumo una vez, y también en el camino de
            // error. Mismo patrón que js_browser_fetch_fn.
            const anchor = nyx.anchorClosure(pairPtr);
            let done = false;
            const fire = (lat, lon) => {
                if (done) return;
                done = true;
                nyx.turn(() => nyx.finish(() => anchor.call(lat, lon), () => {
                    if (ref.afterEvent) ref.afterEvent();
                    anchor.release();
                }));
            };
            try {
                geoImpl((lat, lon) => fire(lat, lon));
            } catch (e) {
                if (!done) { done = true; anchor.release(); }
            }
        },
        // ── SSE: eventos enviados por el servidor ────────────────────────
        //
        // Va sobre fetch con el cuerpo en STREAMING, no sobre EventSource. Dos
        // razones, y las dos se midieron antes de elegir:
        //   1. EventSource exige registrar cada nombre de evento de antemano
        //      (addEventListener por nombre); no tiene catch-all. El contrato
        //      que pidió el reporte es fn(evento, datos) con nombres
        //      arbitrarios — «stock», «factura»—, así que hay que parsear.
        //   2. node 20 no trae EventSource, pero sí fetch y ReadableStream.
        //      Sobre fetch esto se puede TESTEAR bajo node con el mismo
        //      opts.fetch que ya inyectan los tests; sobre EventSource no.
        //
        // MULTI-DISPARO: el entorno queda anclado hasta js_browser_sse_close.
        // Se suelta ahí, y también si el stream termina o falla — un canal que
        // se cae no puede dejar el cierre anclado para siempre.
        js_browser_sse_fn(urlPtr, pairPtr) {
            const url = nyx.readString(urlPtr);
            const anchor = nyx.anchorClosure(pairPtr);
            const id = ++sseSeq;
            const ctl = { closed: false, abort: null, anchor };
            sseChannels.set(id, ctl);
            const soltar = () => {
                if (ctl.closed) return;
                ctl.closed = true;
                sseChannels.delete(id);
                anchor.release();
            };
            if (!fetchImpl) { soltar(); return 0n; }

            // El parser del protocolo: líneas, y un frame por línea en blanco.
            // `data:` puede venir repetido y se une con \n, que es lo que dice
            // el estándar; `event:` da el nombre, ausente = "message". Las
            // líneas que empiezan con ':' son comentarios (keep-alive) y los
            // campos `id:`/`retry:` se ignoran a propósito: reconectar es otra
            // decisión y no se toma acá sin pedirla.
            let buf = "";
            let evento = "";
            let datos = [];
            const despachar = () => {
                if (datos.length === 0 && evento === "") return;
                const nombre = evento === "" ? "message" : evento;
                const cuerpo = datos.join("\n");
                evento = ""; datos = [];
                if (ctl.closed) return;
                // Con una pila suspendida el frame se encola (D-3): al tocarle
                // puede ser que el canal ya se haya cerrado, y ahí no se entrega.
                nyx.turn(() => {
                    if (ctl.closed) return undefined;
                    return nyx.finish(() => anchor.call(nyx.makeString(nombre), nyx.makeString(cuerpo)),
                        () => { if (ref.afterEvent) ref.afterEvent(); });
                });
            };
            const consumir = (texto) => {
                buf += texto;
                let corte;
                while ((corte = buf.indexOf("\n")) >= 0) {
                    let linea = buf.slice(0, corte);
                    buf = buf.slice(corte + 1);
                    if (linea.endsWith("\r")) linea = linea.slice(0, -1);
                    if (linea === "") { despachar(); continue; }
                    if (linea.startsWith(":")) continue;          // comentario
                    const i = linea.indexOf(":");
                    const campo = i < 0 ? linea : linea.slice(0, i);
                    let valor = i < 0 ? "" : linea.slice(i + 1);
                    if (valor.startsWith(" ")) valor = valor.slice(1);
                    if (campo === "event") evento = valor;
                    else if (campo === "data") datos.push(valor);
                }
            };

            Promise.resolve(fetchImpl(url, { method: "GET" }))
                .then(async (r) => {
                    const body = r && r.body;
                    if (!body || typeof body.getReader !== "function") {
                        // Sin streaming no hay SSE: se consume lo que haya y se
                        // cierra, en vez de fingir un canal abierto.
                        if (r && typeof r.text === "function") consumir(await r.text());
                        despachar();
                        soltar();
                        return;
                    }
                    const reader = body.getReader();
                    ctl.abort = () => { try { reader.cancel(); } catch (e) {} };
                    const dec = new TextDecoder();
                    for (;;) {
                        const { done, value } = await reader.read();
                        if (done || ctl.closed) break;
                        consumir(dec.decode(value, { stream: true }));
                    }
                    soltar();
                })
                .catch(() => { soltar(); });
            return BigInt(id);
        },
        js_browser_sse_close(id) {
            const ctl = sseChannels.get(Number(id));
            if (!ctl) return;
            if (ctl.abort) ctl.abort();
            if (!ctl.closed) {
                ctl.closed = true;
                sseChannels.delete(Number(id));
                ctl.anchor.release();
            }
        },
        // ── Operaciones que SUSPENDEN (imports #[suspends], arco async-real-wasm) ──
        //
        // `await browser_fetch_await(...)` en Nyx llega acá: el import arranca la
        // Promise y la pila wasm se desenrolla (nyx.suspend); al resolver, la
        // función Nyx sigue en la línea siguiente con el valor. Sin callbacks.
        //
        // El import devuelve SOLO el cuerpo. status, kind y msg quedan en
        // `ultimoAwait` y std/browser_await los lee con los imports de abajo justo
        // después de reanudar: con una sola pila suspendida (D-3) no corre nada
        // entre la reanudación y esas lecturas. Así no hay que armar un
        // Result<HttpResp, Error> de Nyx desde JS.
        //
        // Errores (vocabulario cerrado de std/error): "connection" si no hubo
        // respuesta, "timeout" si venció timeout_ms. El status HTTP NO es error.
        js_browser_fetch_await(urlPtr, methodPtr, bodyPtr, timeoutMs) {
            return nyx.suspend(() => {
                const url = nyx.readString(urlPtr);
                const method = nyx.readString(methodPtr);
                const body = nyx.readString(bodyPtr);
                const ms = Number(timeoutMs);
                if (!fetchImpl) {
                    return { status: 0, text: "", kind: "connection", msg: "fetch no disponible" };
                }
                const init = { method: method || "GET", body: body === "" ? undefined : body };
                const ctl = ms > 0 && typeof AbortController !== "undefined" ? new AbortController() : null;
                if (ctl) init.signal = ctl.signal;
                const pedido = Promise.resolve()
                    .then(() => fetchImpl(url, init))
                    .then(async (r) => ({ status: r.status, text: await r.text(), kind: "", msg: "" }))
                    .catch((e) => ({ status: 0, text: "", kind: "connection",
                                     msg: String(e && e.message ? e.message : e) }));
                if (!(ms > 0)) return pedido;
                let reloj = null;
                const plazo = new Promise((res) => {
                    reloj = setTimeout(() => {
                        if (ctl) ctl.abort();
                        res({ status: 0, text: "", kind: "timeout", msg: `sin respuesta en ${ms} ms` });
                    }, ms);
                });
                return Promise.race([pedido, plazo]).finally(() => clearTimeout(reloj));
            }, (res) => {
                ultimoAwait.status = res.status;
                ultimoAwait.kind = res.kind;
                ultimoAwait.msg = res.msg;
                return nyx.makeString(res.text);
            }, 0);
        },
        js_browser_sleep_await(ms) {
            return nyx.suspend(() => new Promise((r) => setTimeout(r, Number(ms))), () => undefined, undefined);
        },
        js_browser_await_status() {
            return BigInt(ultimoAwait.status);
        },
        js_browser_await_error_kind() {
            return nyx.makeString(ultimoAwait.kind);
        },
        js_browser_await_error_msg() {
            return nyx.makeString(ultimoAwait.msg);
        },
        js_ls_get(keyPtr) {
            const v = storage.getItem(nyx.readString(keyPtr));
            return nyx.makeString(v == null ? "" : v);
        },
        js_ls_set(keyPtr, valPtr) {
            storage.setItem(nyx.readString(keyPtr), nyx.readString(valPtr));
        },
        js_tz_offset() {
            // minutos al ESTE de UTC (Caracas = -240)
            return BigInt(tzOffsetImpl());
        },
        js_match_media(queryPtr) {
            if (!matchMediaImpl) return 0n;
            return matchMediaImpl(nyx.readString(queryPtr)).matches ? 1n : 0n;
        },
        // — Router (Task 2): hash actual + suscripción a hashchange —
        js_browser_get_hash() {
            return nyx.makeString(locationImpl && locationImpl.hash ? String(locationImpl.hash) : "");
        },
        // Par {fn_ptr, env_ptr} vía function table (mismo mecanismo que
        // js_dom_on_fn/js_dom_on_h). Dedupe sobre windowImpl.__nyxHandlers:
        // sin esto, cada llamada a browser_on_hashchange (p.ej. si
        // router_start se invocara más de una vez) apilaría otro listener
        // en vez de reemplazar el anterior.
        js_browser_on_hashchange_fn(pairPtr) {
            if (!windowImpl || !windowImpl.addEventListener) return;
            windowImpl.__nyxHandlers = windowImpl.__nyxHandlers || {};
            if (windowImpl.__nyxHandlers["hashchange"]) {
                windowImpl.removeEventListener("hashchange", windowImpl.__nyxHandlers["hashchange"]);
                if (windowImpl.__nyxHandlers["hashchange"].__anchor) {
                    windowImpl.__nyxHandlers["hashchange"].__anchor.release();
                }
            }
            const anchor = nyx.anchorClosure(pairPtr);
            const cb = () => nyx.turn(() => nyx.finish(() => anchor.call(), () => {
                if (ref.afterEvent) ref.afterEvent();
            }));
            cb.__anchor = anchor;
            windowImpl.__nyxHandlers["hashchange"] = cb;
            windowImpl.addEventListener("hashchange", cb);
        },
    });
    return { imports, ref };
}

// Corre un módulo Nyx wasm32-wasi. bytes: ArrayBuffer|Uint8Array del .wasm.
// opts.args: argv (default ["nyx"]); opts.onOutput(fd, text): callback streaming.
// opts.js: imports del FFI extern "js" — un objeto { nombre: fn } o una función
//          (nyx) => ({ nombre: fn }) que recibe los helpers de marshalling
//          (nyx.readString / nyx.makeString). Los imports js que el módulo
//          declara y no fueron provistos tiran Error con el nombre exacto.
export async function runNyxWasm(wasmBytes, opts = {}) {
    const state = {
        memory: null,
        malloc: null,
        table: null,
        pinTurn: null,
        unpinTurn: null,
        args: opts.args || ["nyx"],
        stdout: "",
        stderr: "",
        onOutput: opts.onOutput || null,
    };

    const module = await WebAssembly.compile(wasmBytes);
    const helpers = makeNyxHelpers(state);
    const userJs = typeof opts.js === "function" ? opts.js(helpers) : (opts.js || {});

    // Imports del namespace "js" que el módulo realmente declara: los no
    // provistos se stubbean con un error claro (mejor que el críptico
    // "LinkError: import object field ... is not a Function").
    const jsImports = {};
    for (const imp of WebAssembly.Module.imports(module)) {
        if (imp.module !== "js") continue;
        jsImports[imp.name] = userJs[imp.name] ||
            (() => { throw new Error(`import js::${imp.name} no provisto (pasalo en opts.js)`); });
    }

    const instance = await WebAssembly.instantiate(module, {
        ...makeWasiImports(state),
        js: jsImports,
    });
    state.memory = instance.exports.memory;
    state.table = instance.exports.__indirect_function_table || null;
    if (instance.exports.nyx_wasi_malloc) {
        state.malloc = (n) => instance.exports.nyx_wasi_malloc(BigInt(n));
    }
    // Anclaje del entorno de los cierres asíncronos (nyx.anchorClosure).
    // Un módulo viejo, compilado sin estos exports, sigue corriendo: sin
    // arena no hay nada que anclar, y con arena se comporta como antes.
    if (instance.exports.nyx_arena_pin_turn) {
        state.pinTurn = () => instance.exports.nyx_arena_pin_turn();
        state.unpinTurn = (t) => instance.exports.nyx_arena_unpin_turn(t);
    }
    // Asyncify (arco async-real-wasm): el módulo pasó por wasm-opt --asyncify
    // porque usa imports #[suspends]. El buffer donde Asyncify guarda la pila
    // suspendida se aloca ACÁ, antes de _start y de la arena: es memoria
    // persistente y la reusan todas las suspensiones (hay una sola a la vez).
    // 1 MB, como la pila sombra (-z stack-size): desbordarlo es un trap ruidoso.
    if (instance.exports.asyncify_get_state) {
        if (!state.malloc) throw new Error("asyncify: el módulo no exporta nyx_wasi_malloc");
        const bytesAsyncify = 1 << 20;
        const dataPtr = state.malloc(16 + bytesAsyncify);
        const dv = new DataView(state.memory.buffer);
        dv.setUint32(dataPtr, dataPtr + 16, true);                   // posición actual
        dv.setUint32(dataPtr + 4, dataPtr + 16 + bytesAsyncify, true); // fin
        state.asy = {
            ex: instance.exports, dataPtr, dataBytes: bytesAsyncify,
            pending: null, value: undefined, error: null, suspended: false,
            depth: 0, turnDepth: 0, busy: false, queue: [],
        };
    }
    let exitCode = 0;
    try {
        // Con Asyncify, main puede esperar al anfitrión: runNyxWasm resuelve
        // cuando _start termina DE VERDAD. Sin Asyncify es la llamada síncrona
        // de siempre, sin un solo tick de más (un await extra cambiaría el
        // orden en que corren los callbacks que main dejó registrados).
        const r = helpers.turn(() => helpers.enterWasm(() => instance.exports._start()));
        if (r instanceof Promise) await r;
    } catch (e) {
        if (e instanceof NyxExit) { exitCode = e.code; } else { throw e; }
    }
    // Arena por evento (opt-in, handoff #2): lo alocado durante _start queda
    // PERSISTENTE; lo de cada re-entrada se descarta llamando
    // exports.nyx_arena_event_reset() tras cada evento (los bindings lo hacen
    // solos si seteás ref.afterEvent = arenaReset). DISCIPLINA: un handler no
    // debe guardar en globals punteros a Strings/Arrays creados en el evento.
    // Los CIERRES asíncronos (dom_on_fn, browser_fetch_fn, ...) sí sobreviven:
    // sus bindings los anclan con nyx.anchorClosure y liberan solos.
    if (opts.arena) {
        if (!instance.exports.nyx_arena_begin) {
            throw new Error("opts.arena: el módulo no exporta nyx_arena_begin (recompilar con runtime/wasi/nyx_arena.c)");
        }
        instance.exports.nyx_arena_begin();
    }
    // exports + nyx: para RE-ENTRADA post-_start (fase 2 — callbacks/eventos).
    // Las fns Nyx marcadas #[export_name = "x"] quedan en exports.x; la memoria
    // y el estado del módulo persisten tras _start, así que JS puede llamarlas
    // (listeners de eventos, ticks). Marshalling: mismos helpers (readString/
    // makeString); int = BigInt.
    // EN: exports + marshalling helpers for post-_start re-entry (phase-2
    // callbacks) — module state persists after _start.
    const arenaReset = instance.exports.nyx_arena_event_reset
        ? () => instance.exports.nyx_arena_event_reset()
        : () => {};
    // Con Asyncify, cada fn exportada por el programa es una ENTRADA que puede
    // suspender: devuelve una Promise si espera al anfitrión, y se encola si ya
    // hay una pila suspendida (D-3). Los exports internos quedan crudos: el shim
    // y los drivers los llaman DURANTE una suspensión (malloc, arena). Sin
    // Asyncify, `exports` es el objeto de siempre, sin envoltorio.
    let exports = instance.exports;
    if (state.asy) {
        const internos = /^(_start|nyx_wasi_malloc|nyx_arena_\w+|asyncify_\w+)$/;
        exports = {};
        for (const [k, v] of Object.entries(instance.exports)) {
            exports[k] = typeof v === "function" && !internos.test(k)
                ? (...args) => helpers.turn(() => helpers.enterWasm(() => v(...args)))
                : v;
        }
    }
    return { exitCode, stdout: state.stdout, stderr: state.stderr,
             exports, nyx: helpers, arenaReset };
}
