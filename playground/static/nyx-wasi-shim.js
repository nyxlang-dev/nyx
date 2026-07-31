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
        callClosure(pairPtr, ...args) {
            if (!state.table) {
                throw new Error("callClosure: __indirect_function_table no exportada (linkear con -Wl,--export-table)");
            }
            const fnIdx = mem().getUint32(pairPtr, true);
            const envPtr = mem().getUint32(pairPtr + 4, true);
            return state.table.get(fnIdx)(envPtr, ...args);
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
            el.addEventListener(event, (ev) => {
                if (!ref.exports || !ref.exports[handler]) {
                    throw new Error(`dom_on: export Nyx '${handler}' no encontrado (¿#[export_name = "${handler}"]? ¿ref.exports seteado?)`);
                }
                ref.currentEvent = ev || null;
                try { ref.exports[handler](); }
                finally {
                    ref.currentEvent = null;
                    if (ref.afterEvent) ref.afterEvent();
                }
            });
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
            // pairPtr queda vivo post-main (GC=calloc nunca libera en wasm)
            const el = d.querySelector(sel);
            if (!el) return;
            el.addEventListener(event, (ev) => {
                ref.currentEvent = ev || null;
                try { nyx.callClosure(pairPtr); }
                finally {
                    ref.currentEvent = null;
                    if (ref.afterEvent) ref.afterEvent();
                }
            });
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
    const fetchImpl = opts.fetch ||
        (globalThis.fetch ? globalThis.fetch.bind(globalThis) : null);
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
    let timerSeq = 0;
    const callExport = (name, ...args) => {
        if (!ref.exports || !ref.exports[name]) {
            throw new Error(`browser: export Nyx '${name}' no encontrado (¿#[export_name]? ¿ref.exports seteado?)`);
        }
        try { return ref.exports[name](...args); }
        finally { if (ref.afterEvent) ref.afterEvent(); }
    };
    const imports = (nyx) => ({
        js_browser_fetch(urlPtr, methodPtr, bodyPtr, handlerPtr) {
            const url = nyx.readString(urlPtr);
            const method = nyx.readString(methodPtr);
            const body = nyx.readString(bodyPtr);
            const handler = nyx.readString(handlerPtr);
            if (!fetchImpl) { callExport(handler, 0n, nyx.makeString("fetch no disponible")); return; }
            Promise.resolve(fetchImpl(url, { method: method || "GET", body: body === "" ? undefined : body }))
                .then(async (r) => {
                    const text = await r.text();
                    callExport(handler, BigInt(r.status), nyx.makeString(text));
                })
                .catch((e) => { callExport(handler, 0n, nyx.makeString(String(e))); });
        },
        js_browser_interval(ms, handlerPtr) {
            const handler = nyx.readString(handlerPtr);
            const id = ++timerSeq;
            timers.set(id, setInterval(() => callExport(handler), Number(ms)));
            return BigInt(id);
        },
        js_browser_timeout(ms, handlerPtr) {
            const handler = nyx.readString(handlerPtr);
            const id = ++timerSeq;
            timers.set(id, setTimeout(() => { timers.delete(id); callExport(handler); }, Number(ms)));
            return BigInt(id);
        },
        js_browser_clear_timer(id) {
            const h = timers.get(Number(id));
            if (h !== undefined) { clearInterval(h); clearTimeout(h); timers.delete(Number(id)); }
        },
        js_browser_geo(handlerPtr) {
            const handler = nyx.readString(handlerPtr);
            // lat/lon son float Nyx (f64) → cruzan como Number, sin BigInt
            geoImpl((lat, lon) => callExport(handler, lat, lon));
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
    let exitCode = 0;
    try {
        instance.exports._start();
    } catch (e) {
        if (e instanceof NyxExit) { exitCode = e.code; } else { throw e; }
    }
    // Arena por evento (opt-in, handoff #2): lo alocado durante _start queda
    // PERSISTENTE; lo de cada re-entrada se descarta llamando
    // exports.nyx_arena_event_reset() tras cada evento (los bindings lo hacen
    // solos si seteás ref.afterEvent = arenaReset). DISCIPLINA: un handler no
    // debe guardar en globals punteros a Strings/Arrays creados en el evento.
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
    return { exitCode, stdout: state.stdout, stderr: state.stderr,
             exports: instance.exports, nyx: helpers, arenaReset };
}
