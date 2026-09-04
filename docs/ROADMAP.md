# Roadmap — Nyx

**Misión**: el primer lenguaje capaz de hospedarse a sí mismo como plataforma web completa
(proxy inverso, backend, frontend, base de datos, playground), operable por igual por humanos
y por IAs.

---

## 1. Cómo se lee este roadmap

Este documento trabaja **por arcos**, no por versiones futuras.

- Un **arco** = un objetivo + un **criterio de cierre verificable**. Nada más.
- La **versión la asigna el cierre**, no la planificación: cuando un arco cierra se decide qué
  número le corresponde según `docs/VERSIONING.md`. Acá no se reserva ningún número.
- Un arco puede abarcar varios MINOR (el de errores tipados tomó cinco) o un solo PATCH.
- Lo que está **en curso** vive en `PLAN.md`; lo que está **hecho**, en `CHANGELOG.md`; el
  **presente** (arcos activos, layout, decisiones vigentes) en `PROJECT_STATE.md`; el **backlog
  ficha por ficha** en `TASKS.md`; los **conteos de tests** solo en `docs/TESTS.md`. Este
  archivo no duplica ninguno de los cuatro: los ordena en el tiempo.

### La lección que originó esta reescritura

Entre junio y agosto de 2026 este archivo prometió, con número de versión y checklist:

| Prometido acá | Lo que realmente salió con ese número |
|---|---|
| v0.18.0 — Package Registry (`nyx publish`/`install`, servidor, paquetes externos) | Onboarding AI-first (2026-07-03). `nyx publish` **no existe** |
| v0.19.0 — Cross-Platform (macOS ARM64, Docker, WSL, matriz de CI) | Type system real + async real + borrow checker (2026-07-10) |
| v0.20.0 — Language Polish (macro hygiene, `match` anidado, `const N: int`) | Borrow checker completo + cripto Web Push (2026-07-13) |
| v0.21.0 — Compiler perf + stdlib (ALPN/h2 real, speedup del bootstrap) | Primitivos de runtime + `std/llm` (2026-07-21) |
| v0.22.0 — Pre-1.0 Freeze (audit de SPEC, API stability, migration guide, security audit) | Campaña SCAN + borrow (2026-07-22). Los 4 ítems del freeze siguen sin empezar |

Cinco de cinco. Además, la sección `Non-goals` declaraba fuera de alcance el **borrow checker**
y el **rediseño de async** — las dos cosas se construyeron pocas semanas después (§7).

El problema no fue el plan: fue **pinear features a versiones futuras**. Este documento dejó de
hacerlo. Si acá aparece un número de versión, es porque ya se publicó.

### Dos líneas de versión

Desde v0.13 el proyecto tiene dos líneas independientes, y esta regla sigue vigente:

- **Lenguaje** — este archivo: compilador, runtime, stdlib, tooling, playground. Es lo único
  que vive en este repo desde el split del monorepo (2026-07-06).
- **Productos** — kv, serve, proxy, db, queue, edit, shell viven cada uno en su repo, con su
  versión y su roadmap propios. Taxonomía canónica: `docs/PRODUCTS.md`.

Un producto puede pinnear cualquier tag del lenguaje ≥ su mínimo declarado; el lenguaje nunca
frena un release de producto ni al revés. El canario de que un cambio del lenguaje no rompe a
nadie es `make test-stacks` (los 6 stacks). Advertencia: `docs/archive/PRODUCTS_ROADMAP.md` quedó
congelado en julio y **no es fuente confiable del estado de los productos** — para eso, el repo
de cada uno.

---

## 2. Dónde estamos — arcos cerrados en 2026

Los arcos que efectivamente ocurrieron, con la versión que les tocó **al cerrar**:

| Arco | Qué cerró | Versiones | Cierre |
|---|---|---|---|
| **Garantías reales** | Type system real (TyVar, occurs-check, monomorfización real de impl-methods genéricos) + async real (goroutines stackful, scheduler M:N, event loop epoll) + borrow checker (free-safety, `#[affine]`, drop determinista, dangling refs inter-procedurales, Box/Rc/MoveOnly) | v0.19.0 → v0.20.1 | 2026-07-14 |
| **Primitivos de runtime + LLM** | Strings binary-safe, `c_fn_ptr` (callback C→Nyx), `std/llm` (bindings llama.cpp), VDOM + router de frontend | v0.21.0 | 2026-07-21 ⚠️ |
| **Primer intento verde** | Que un LLM escriba Nyx que compila a la primera: banco medido, atribución clang, did-you-mean de imports, `CAPABILITIES.md` fiel, la verdad de los gotchas | v0.22.x | 2026-07-29 |
| **Campaña de corrección** | Heap overflows del runtime (WS/msgpack/HPACK/RESP), corrección de stdlib, la red de verificación (el runner compara contra `expected/`), muerte de fallos silenciosos del compilador | v0.23.0 → v0.23.1 | 2026-07-31 |
| **Dispatch honesto** | Un método sobre un receptor que no lo tiene = error en las 3 capas (NYX1022 / NYX2007 / NYX3001), serie NYX30xx del intérprete, tag estático de fallback (NYX2008), ceguera gradual visible (`NYX_STRICT=warn`) | v0.24.x (32 patches) | 2026-08-11 |
| **Multi-arco S1-S4** | Literales binary-safe, señales allocation-safe (self-pipe), resolución de funciones POR MÓDULO, stacks de goroutine con guard page | v0.24.31 → v0.26.0 | 2026-08-12 |
| **Errores tipados E1-E5** | `Result<T,E>` real de punta a punta + la familia `try_` de `std/{error,fs,net,http,json,sqlite}` bajo la regla de dos niveles | v0.27.0 → v0.31.0 | 2026-08-20 |
| **Absorción de serve al core** | El framework web entra a la stdlib (`std/serve` + `std/template` + `std/multipart`, byte-idénticos a nyx-serve 0.7.1, API intacta), los 5 sitios de producción migran de vendoring a `import`, dogfooding de `std/template` en serve.nyxlang.com, producto congelado, smoke de 63 checks al monorepo | sin release propio (viaja con el próximo MINOR) | 2026-09-03 |

⚠️ **Residuo declarado**: el sub-proyecto de bindings LLM **no está cerrado** — falta validarlo
contra `llama.cpp` REAL (hoy la CI valida contra un stub determinista). Pendiente desde el
17-jul, es acción de Ottavio en máquina local (`scripts/llm-real-demo.sh`).

### Ritmo real

- **18 MINOR entre junio y agosto de 2026** (v0.14.0 … v0.31.0): junio 3, julio 8, agosto 7.
  Los 7 de agosto salieron todos entre el 12 y el 20.
- **Desde el 20 de agosto no se publicó ninguna versión.** El motivo es estructural, no una
  pausa: el arco Windows es explícitamente **todo-o-nada** — no entrega valor publicable hasta
  W6 — y todo lo mergeado desde entonces entra al `[Unreleased]` marcado como interno.
- La regla de gobernanza sigue siendo ≤1 MINOR por sesión y MAJOR solo por decisión de Ottavio.

---

## 3. Arco en curso — Windows nativo (W0-W6)

**Objetivo**: Nyx compila y corre nativo en Windows (x64 y ARM64), MSVC-puro, sin WSL ni MinGW,
con self-hosting verificado en la propia plataforma.
**Criterio de cierre (todo-o-nada, spec §4)**: suite completa verde en Windows x64 vía CI +
fixed point EN Windows + binarios ARM64 generados y verificados con smoke manual + `make test`
Linux intacto + los 6 stacks verdes.
Diseño: `docs/design/specs/2026-08-19-windows-nativo-design.md` ·
plan de la etapa actual: `docs/design/plans/2026-08-27-w3-threads-scheduler-windows.md`.

| Etapa | Alcance | Estado |
|---|---|---|
| **W0** | Triples `*-pc-windows-msvc`, auditoría ABI Win64 medida, `\r\n` y paths, hello world que linkea y corre | ✅ mergeado (interno, en v0.31.0) |
| **W1** | Capa `nyx_os_*` con impl POSIX — 7 dominios, header único sin `#ifdef`, ratchet de includes prohibidos | ✅ completo (2026-08-26, 8 incrementos) |
| **W2** | `os_win32.c` (vm/tiempo/dl) + GC Boehm win32 + file-io + build con clang-cl | ✅ completo — 26 programas corriendo en Windows x64 **y ARM64 real** |
| **W3** | Threads + scheduler M:N sobre Fibers + guard pages VEH | 🔄 **en curso**: Tasks 1-3 ✅ mergeadas (el bloqueante GC+Fibers RESUELTO: roots por rango COMITEADO + parche de ~10 líneas a bdwgc 8.2.12; ablación 5/~140 muertes sin parche vs **0/120** con parche). Task 4 (linkear `thread.c`+`scheduler.c`, primer spawn, ablación n=50) corriendo en la laptop Windows. Tasks 5 (13 tests de concurrencia + CI) y 6 (fichar la cosecha GC-Windows) pendientes |
| **W4** | Red e IOCP; la familia `try_` de E5 con errno mapeados desde `WSA*` | ⬜ pendiente — **riesgo técnico #1** |
| **W5** | TLS, procesos, señales; se vacían los guards temporales | ⬜ pendiente |
| **W6** | Toolchain nativa, seeds `.ll` x64+ARM64, `install.ps1`, CI completo, **anuncio** | ⬜ pendiente |

### Restricciones vivas del arco

- **Sin presupuesto de GitHub Actions** (billing de la cuenta): `main` está en rojo cosmético y
  los gates Windows/ARM64 del CI están bloqueados. Hoy el gate real es la laptop Windows de
  Ottavio + las corridas locales Linux ARM64. Es el riesgo de infraestructura más cercano al
  arco.
- **Modo de trabajo validado**: la laptop es «manos win32» (compila, corre, pushea a la rama);
  esta sesión coordina (briefs, reviews, gates Linux). Los encargos van **commiteados en git**,
  nunca por chat.
- **macOS NO está en el arco** (la capa lo facilita, no lo incluye). Tampoco los 6 stacks en
  Windows, ni instalador MSI/winget, ni CI automatizado de ARM64-Windows (no hay runner).

### Sub-decisiones abiertas dentro del arco

- **W4 — el destino del API readiness.** IOCP invierte el modelo (readiness → completion) y es
  el riesgo técnico #1 del arco. **Converge con una ficha del core descubierta el 30-ago**: el
  netpoller del scheduler **nunca se cableó** — `nyx_goroutine_block_on_fd` existe en
  `runtime/scheduler.c` y no tiene ningún llamador, así que hoy una goroutine que hace I/O de
  red **bloquea su worker entero** (ficha ALTA, sección «Runtime, concurrencia y red» de
  `TASKS.md`). Los dos problemas se resuelven juntos o se resuelven dos veces.
- **W5 — TLS: SChannel.** **[DECIDIDO 2026-08-31]** SChannel, por coherencia con la decisión MSVC-puro (cero
  deps). La spec ya lo recomendaba por coherencia con la decisión MSVC-puro (cero deps), con el costo dicho:
  reescribe `tls.c` entero y cambia la introspección de certificados de `std/tls`. OpenSSL-MSVC
  conserva `tls.c` casi intacto pero agrega la dependencia que el purismo quería evitar.
- **Estrategia bdwgc.** **[DECIDIDO 2026-08-31]** Los TRES niveles: build local vendoreado (ya activo en la
  laptop) + overlay port de vcpkg cuando vuelva el CI (fichado) + PR a upstream ivmai/bdwgc
  (el texto lo prepara el coordinador — `docs/design/spikes/2026-08-31-bdwgc-upstream-pr.md`
  —; el envío lo hace Ottavio desde su cuenta).
- **Seeds `.ll` multi-plataforma.** **[DECIDIDO 2026-08-31]** DIFERIDO a W6 con la información en la mano
  (tamaños reales medidos). La matriz pasa de 1 a 3 juegos
  (~+100-200 MB de `.ll`): tracked en el repo vs comprimidos vs release-assets. El disco del
  repo público también cuenta. Decisión de W6.
- **W6 — el anuncio.** **[DECIDIDO 2026-08-31]** Al cierre de W5, revisable — el todo-o-nada se mantiene, y la spec
  §7.6 le reserva explícitamente ese derecho: si en el camino algo publicable ya funciona (una
  consola Windows usable, por ejemplo), **es su criterio el que se revierte**, no el de nadie
  más. Incluye la decisión pre-anuncio del contrato de paths absolutos (`/tmp/x` no es absoluto
  en Windows — ficha ALTA en `TASKS.md`).
- **Agrupamiento del próximo MINOR.** **[DECIDIDO 2026-08-31]** UN solo MINOR al cierre de W6, con todo el arco
  Windows como contenido. Hasta entonces todo corre sin versión sobre la vigente (mergear no es
  releasear).

---

## 4. Después de Windows — candidatos

> **[DECIDIDO 2026-08-31]** **El próximo arco tras W6: fix de la captura de closures** (el mayor ratio
> desbloqueo/costo — destraba frontend WASM, GPU y `spawn`), **con el package registry como el
> norte siguiente** (lo que más acerca la misión «plataforma web completa»). El resto del
> inventario queda como candidatos para re-decidir al cerrar cada arco.
> **Nada más de acá está comprometido.**

### Arco CERRADO (2026-09-03): absorción de serve al core

**[DECIDIDO 2026-08-31]** El framework web es necesario; el repo separado no
(un mantenedor, cero terceros, vocabulario ya migrado, vendoring manual ×5,
rescates a destiempo con cada cambio del runtime). Forma final: `std/web`
(vocabulario, ya está) + **`std/serve`** (ejecutor: keep-alive, drain SIGTERM,
dispatcher de App, static con ETag, WS rooms) + **`std/template`** (el motor
Flask-like: módulo propio, motor puro sin HTTP) + **`std/multipart`** (uploads).
Los 5 sitios migran de vendoring a `import`; el producto se congela con README
al estilo nyx-http2; test-stacks pasa a 5. Condición de dogfooding: una página
real migra a `std/template` al absorber. **Driver externo**: el proyecto ERP
(aparte, en Nyx) necesita el framework bien definido — es el primer consumidor
tercero del stack web, y la razón de que esto sea arco decidido y no candidato.
Re-separación futura solo con registry + terceros que exijan ciclo propio.
**CERRADO 2026-09-03** `[arco: absorcion-serve]`: los 3 módulos en `std/` con E2E propio
(contrato 10 + smoke 63 portado del producto + serve+kv 10), los 5 sitios en `import "std/serve"`,
el índice `/docs/` de serve.nyxlang.com renderizado con `std/template` (dogfooding), el producto
congelado (README → core, v0.7.1 última) y `make test-stacks` 6→5. Plan y cosecha:
`docs/design/plans/2026-08-31-absorcion-serve.md`.
 Es el inventario honesto de lo que existe para elegir
> cuando W6 cierre, con su costo y su desbloqueo en una línea. El orden de esta lista **no** es
> una recomendación de prioridad salvo donde se dice explícitamente.

### 4.1 Las 5 direcciones estratégicas (síntesis del 2026-07-15, decisión nunca ejecutada)

`docs/design/specs/2026-07-15-strategic-synthesis.md` cerró cinco estudios de factibilidad
y propuso un orden. **La decisión nunca se tomó** y las tres fichas de GPU están paradas desde
el 17-jul.

| Dirección | Costo | Qué desbloquea |
|---|---|---|
| **Fix de captura de closures** (precondición, no dirección) | S-M, acotado | El mayor ratio desbloqueo/costo de toda la lista: destraba **frontend WASM** (signals), **GPU** y **`spawn`** de una sola vez. La síntesis lo pone primero por eso |
| **Frontend WASM maduro** | M (100% stdlib, sin tocar el compilador) | VDOM y router ya existen (v0.21.0); faltan **signals** — bloqueados por la captura de closures. Es la pata «frontend» de la misión declarada |
| **GPU / tensores** | M | `c_fn_ptr` ya está hecho; falta bindings ggml. 3 fichas paradas desde 2026-07-17, incluida la validación contra `llama.cpp` real que mantiene abierto el arco de v0.21.0 |
| **no_std stdlib** (P0: allocator + String afín) | L, multi-versión | Precondición de freestanding y de cualquier target embebido. Hallazgo vivo: **`NYX_NO_GC=1` es engañoso** — String/Array/Map llaman `GC_malloc` hardcodeado en 74 sitios de 11 archivos |
| **Freestanding** (kernel de juguete) | L | Depende de no_std P0. Es el extremo «bare metal» de la misión |
| **Optimización del compilador / vectorización** | S para el diagnóstico, L para el trabajo | Nadie midió la auto-vectorización actual. SIMD es condición para cualquier cosa de ML |

### 4.2 Direcciones mayores sin arco asignado

| Candidato | Costo | Qué desbloquea / por qué importa |
|---|---|---|
| **Package registry** (`nyx publish`/`nyx install`, servidor self-hosted) | L | **El hueco más grande frente a la misión.** Hay package manager con vendoring; **no hay distribución**. Prometido para v0.18.0, marcado ✅ falsamente durante meses en `docs/VERSIONING.md`, hoy sin dueño. Sin esto no hay ecosistema externo |
| **Netpoller / async-IO real** | M-L | Hoy el async es real para cómputo y falso para red: los builtins de red bloquean el worker. Converge con W4 (§3). Ficha ALTA nueva |
| **LSP** | M | Existe `nyx_check` con protocolo crudo (`DIAG:`/`DEF:`/`SYM:`). Falta hover, go-to-definition y meterlo detrás de `--lsp`. Es la diferencia entre «se puede escribir» y «da gusto escribirlo» |
| **Streaming / SSE / chunked** | L | `Response = String` entero es un **límite de diseño, no un bug**: sin esto no hay SSE, ni descargas grandes, ni backpressure. Requiere sesión dedicada |
| **GC tail latency** | M-L | p99/max medidos peor que Redis en el dogfooding de nyx-kv. Es lo que separa «rápido en benchmark» de «usable en producción» |
| **Épica de dispatch** | L | El dispatch de métodos está reimplementado por **forma del receptor** en varios sitios. La unificación estructural sigue cortada; es deuda estructural del compilador, no un bug |
| **Canal de fricción propio** (POST a `nyxlang.com/api/friction`) | S | **[DECISIÓN OTTAVIO — sigue pospuesta]** Plan completo escrito y aprobado técnicamente desde 2026-08-04: `docs/design/plans/2026-08-05-friccion-propia-nyxlang-api.md`. Hoy el canal monta sobre nyx-kv con TTL 24 h que ya perdió reportes |
| **Cross-platform más allá de Windows** | M | macOS ARM64 pre-compilado (el job de CI está **desactivado** por decisión propia), imagen Docker, matriz de CI. Fuera del arco Windows por diseño |
| **DX: REPL, `nyx fmt`, `nyx vet`** | S cada uno | Backlog de años sin tocar: multilínea e historial en el REPL, trailing commas y orden de imports en `fmt`, variables sin usar y código inalcanzable en `vet` |
| **HTTP/2 real sobre TLS (ALPN)** | M | Hoy solo h2c. Heredado del ex-producto absorbido al core; ver `docs/HTTP2.md` |
| **Auditoría FFI int-32** | S-M | Barrido de todos los `extern "C" ... -> int`. Destapada por E5.5 y **agravada por LLP64 en Windows** (spec §9.3) |
| **Debugger** | L | **Cero menciones en todo el repo.** Ausencia total, dicha acá por primera vez |

---

## 5. Camino a 1.0

Hasta hoy los criterios de 1.0 vivían en **dos listas que no coincidían** (`docs/VERSIONING.md`
y este archivo). Esta tabla es ahora la **única fuente**; `docs/VERSIONING.md` apunta acá.

| Criterio | Estado real | Qué falta |
|---|---|---|
| Cobertura de tests (el criterio viejo decía «250+») | ✅ **superado con holgura** | Nada. Conteos canónicos en `docs/TESTS.md` — el criterio numérico quedó obsoleto por bajo |
| Self-hosting auditado | ✅ fixed point verificado como gate por commit | Auditoría formal escrita (hoy es un gate, no un documento) |
| **100 usuarios reales en playground o KV** | ❌ **NO INSTRUMENTADO** — nadie mide eso | **[DECIDIDO 2026-08-31]** **INSTRUMENTAR**: un contador simple de usuarios reales en playground/KV (ficha nueva en `TASKS.md`, sección OPS). El criterio se mantiene y pasa a ser medible |
| **Productos desplegados 30+ días** | ⚠️ **sin medición** | Los productos viven en repos aparte desde el split; no hay monitoreo de uptime. Mismo problema que el anterior: criterio sin instrumento |
| **SPEC cubre 100% de las features estables** | ❌ | La fase mínima de SPEC («que deje de mentir») está fichada en la campaña de docs. El audit **stable vs experimental** sigue sin empezar |
| **Sin crashes conocidos / ASAN clean** | ❌ | Hay fichas de SEGV abiertas en `TASKS.md` (Maps anidados desde retorno de función, `dyn Trait` como parámetro de fn de módulo, entre otras). Falta además una corrida ASAN sistemática |
| Documentación completa | ⚠️ criterio a reformular | `VERSIONING.md` decía «documentación bilingüe completa». La política cambió a **bilingüe por clases** (CLAUDE.md §8): solo los públicos de entrada llevan par EN+ES sincronizado. El criterio de 1.0 tiene que decir eso |
| **Pre-1.0 freeze**: audit de SPEC (stable/experimental) + garantía de API de `std/` + guía de migración v0.x→v1.0 + security audit | ❌ **EN CERO** — los 4 ítems | **Ninguna de las ~190 fichas abiertas apunta a este escalón.** Propuesta: convertirlo en un arco propio **post-W6** — es el único trabajo que 1.0 no puede saltear |
| Aprobación explícita de Ottavio | — | Regla #6 de `docs/VERSIONING.md`, no negociable. v1.0.0 ya fue declarada prematuramente una vez (24-mar-2026) y revertida |

**Después de 1.0** no hay escalera comprometida. Los candidatos de §4 que no entren antes son los
que quedan; el LSP era el contenido tentativo de un v1.1 en la lista vieja.

---

## 6. Backlog

El backlog real, ficha por ficha, con prioridad y contexto, vive en **`TASKS.md`** — es la
fuente, esto es solo la foto (medida sobre el archivo vivo):

- **~190 fichas abiertas** (+1 línea de plantilla del formato); lo cerrado ya no se acumula ahí
  — se poda y su narración va al `CHANGELOG.md`.
- **9 marcadas ALTA** (una de ellas MEDIA-ALTA): W3, paths absolutos pre-anuncio, adapters `dl`,
  `std/prelude.nx` congelado, sub-patrón literal en patrón de enum, splitter de type-args,
  parser JSON sin posición, el netpoller nunca cableado, y el shutdown handler de `persist.c`
  en contexto de señal.
- Por área: compilador y lenguaje 44 · errores tipados E1-E5 (cola de pulido) 46 · runtime,
  concurrencia y red 27 · arco Windows 14 · tooling/tests/proceso 21 · stdlib 9 · OPS 8 ·
  WASM 3 · GPU/LLM 3 · dogfooding 1 · docs/release 11 · aspiracional 3.
- **Sesgo medido**: el proyecto drena lo que toca el arco en curso y acumula el resto. La
  auditoría del 30-ago contó **~36 fichas (19%) sin un solo movimiento desde julio** — bloques
  enteros congelados: residuo del tagueo de slots (17, incluida la épica de dispatch), cosecha
  del banco de primer intento (5), WASM/VDOM (4), fricción sqlite+netsec (4), GPU (3).

**[DECIDIDO 2026-08-31]** **Re-triage de las 36 fichas de julio AL CIERRE DE W6** (re-triage
adelantado 2026-09-03 por el arco poda-changelog-tasks: 0 NO-SE-HACE, todas a [BAJA]). Un tercio
del backlog lleva más de un mes sin tocarse; algunas ya no aplican y otras subieron de gravedad
en silencio. La propuesta es una pasada explícita al cerrar el arco Windows: cada ficha se
promueve, se re-fecha o se cierra por obsolescencia — no se deja envejecer otra vez.

---

## 7. Non-goals reales

Fuera de alcance, con la razón dicha:

- **Compilación JIT** — LLVM AOT alcanza para los objetivos de rendimiento de Nyx (paridad o
  mejor que C en cómputo, ver `docs/archive/BENCHMARKS.md`).
- **Toolkit de GUI** — fuera del alcance de un lenguaje de sistemas con misión web.
- **IDE propio** — el camino es LSP + editores existentes (§4.2), no un editor nuevo.
  *(propuesto en esta reescritura; no venía de la lista vieja — tu veredicto)*
- **Compatibilidad hacia atrás durante 0.x** — declarado en `docs/VERSIONING.md`: los MINOR
  pueden romper. Eso termina en 1.0, no antes.
- **macOS, instalador MSI/winget y los 6 stacks en Windows** — no-goals **del arco Windows**
  (spec §8), no del proyecto: son candidatos de §4.2.

**Lo que se sacó de esta lista, y por qué importa**: el **borrow checker** y el **rediseño de
async** estuvieron acá declarados como no-objetivos de 1.x, y se construyeron ambos en las
semanas siguientes (v0.19-v0.20). Declarar non-goal lo que después se construye es la misma
enfermedad que pinear features a versiones futuras: un non-goal se escribe cuando hay una razón
para no hacerlo, no cuando todavía no se sabe cómo.

---

## Historia

Historial completo por versión: `CHANGELOG.md`. Narración por sesión: `docs/SESSION_LOG.md`.
Estados, campañas y tareas cerradas ya archivados: `docs/archive/` — índice en
`docs/archive/INDEX.md`.

La escalera de versiones que este documento reemplaza (las secciones fantasma v0.18-v0.22 y la
tabla «Development History» de sprints) **no se archivó en `docs/archive/`**: vive en el
historial de git de este archivo, hasta el commit anterior a esta reescritura. Si Ottavio la
quiere preservada por corte literal como el resto, es una ficha de cierre de la campaña de
docs.
