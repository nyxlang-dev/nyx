# Changelog — Nyx Language

Todos los cambios notables de este proyecto se documentan aquí.
Formato basado en [Keep a Changelog](https://keepachangelog.com/es/1.0.0/).

> **Note**: current version = the top entry below (source of truth: `VERSION` file). Versions v0.2.0-v5.4.0 were assigned during rapid development before a formal versioning policy was adopted. The version was reset to v0.9.0 and then progressed through v0.10.0-v0.17.x. See [docs/VERSIONING.md](docs/VERSIONING.md) for details.

---

## [Unreleased]

> Lo que está en `main` sin publicar. **La enorme mayoría es INTERNO**: el arco Windows
> (capa de portabilidad `nyx_os_*`, `os_win32.c`, GC + Fibers) es refactor y CI — **no
> anuncia soporte Windows** y no cambia el comportamiento observable de un programa Nyx,
> salvo lo listado en Added/Fixed/Docs. Cada arco tiene su bitácora en `docs/SESSION_LOG.md`
> y su narración larga archivada en `docs/archive/2026-campaigns-plan.md`.
>
> **Convención**: cada sección `### Interno — …` de abajo es un arco SIN cambio observable para
> un programa Nyx (refactor, portabilidad, CI). Nada de eso anuncia soporte de Windows — el
> anuncio es una decisión de Ottavio (W6).

### Added
- **Andamiaje SDD opcional: `nyx init --sdd` y `nyx sdd init`** `[arco: andamiaje-sdd]`. Un
  segundo nivel, **opt-in y reversible**, para proyectos donde lo caro no es teclear sino
  decidir: siembra `docs/constitution.md` (7 secciones vacías con el marcador
  `SDD_INCOMPLETE` y una nota de qué va y qué no en cada una), `docs/glossary.md`,
  `docs/adr/0000-template.md`, `specs/README.md` (el ciclo constitución → spec → plan →
  tasks, con los nombres de Spec Kit) y `docs/sdd/onboarding.md` (la guía que le dice al
  agente que **ofrezca** las 7 preguntas —una por sección, respuestas textuales, sin
  inventar ni sugerir defaults— y que quite el marcador solo con las 7 completas). Dos
  piezas son **GENERADAS** desde la misma tabla de gotchas que alimenta `AGENTS.md`,
  `LLM.md` y `nyx vet`: `docs/evidence/nyx-<ver>.md` (las trampas y reglas vivas de la
  toolchain instalada, con ancla y test, más los retirados) y `tests/constitution_test.nx`
  (un bloque `test` por gotcha grep-able, que falla con `archivo:línea`, más un test que
  caza archivos en `tests/` sin bloques `test`). El único archivo existente que se toca es
  `AGENTS.md`, con **2 líneas** marcadas (`<!-- sdd:trigger -->`) que disparan la oferta.
  `nyx init` sin la bandera **no cambia en nada** (el listado dorado por defecto sigue
  intacto), correrlo dos veces no modifica un byte, nada de lo sembrado nombra un proveedor
  de IA, y el comando imprime al terminar qué borrar para volver a un init normal.
  `nyx update` regenera las dos piezas generadas del proyecto desde el que se llama.
  Guardia: `scripts/testing/run_sdd_init.sh` (10 checks por idioma + `nyx test` real, verde
  en el proyecto sembrado y rojo citando `src/bad.nx:1` con un `Shape::Circle(1)` plantado).
- **`sync.wg_wait_timeout(wg, ms) -> bool`** (`std/sync`): como `wg_wait` pero con techo —
  `true` = el contador llegó a 0 (quiesció), `false` = timeout con workers pendientes.
  Deadline absoluto re-calculado por vuelta (los despertares espurios re-esperan el
  REMANENTE). Es el idiom de drain/shutdown: salir al quiescer, con el deadline como mero
  techo — antes el drain de nyx-serve dormía el deadline COMPLETO (10 s muertos por restart).
  test-380 + ai-first 23.
- **`std/serve` + `std/template` + `std/multipart` entran al core**: el framework web deja de
  ser un producto vendorizado repo por repo y pasa a la stdlib. Los cuerpos son
  **byte-idénticos** a los de nyx-serve v0.7.1 (los diffs son solo comentarios) y la **API
  pública queda INTACTA** — los 5 sitios y el ERP externo que dependen de esos nombres no
  cambian una línea. `std/serve` fusiona server + files + ws (keep-alive, drain con SIGTERM,
  dispatcher de App, static con ETag/304, traversal 403, rooms de WS); `std/template` es el
  motor Flask-like (`{{}}`, `#if`, `#each`, partials) como módulo propio; `std/multipart`
  parsea los form-data. E2E de contrato 10/10 y `make test-stdlib` 3→5.
- **Los 5 ejemplos serve de `examples/by-example/` ARRANCAN servidores reales** —
  auto-verificados (server + self-request + shutdown, sin dejar nada bloqueante) en vez de
  imprimir texto que fingía ser un servidor; y `102-template-flask-style` nuevo para el motor
  de templates.
- **Absorción de serve al core CERRADA** `[arco: absorcion-serve]` (2026-09-03): los 5 sitios
  de producción (`~/nyx/web/sites` ×4 + venezuelainfo) pasan de vendorizar `packages/nyx-serve/`
  a `import "std/serve"` (sin deploy: los binarios se regeneran en el próximo deploy normal); el
  índice `/docs/` de serve.nyxlang.com se renderiza con `std/template` (`{{#each}}`, render
  byte-idéntico al estático); el producto `~/nyx/products/serve` queda **congelado** (README →
  core, v0.7.1 última) y su smoke de **63 checks** se porta al monorepo como
  `tests/integration/test_serve_std_smoke.py` (`make test-integration`: 8→9 sub-suites; el E2E
  serve+kv vuelve a correr — llevaba meses en SKIP por rutas del layout viejo — contra el fixture
  de `std/serve` y el daemon de `~/nyx/products/kv`); `make test-stacks` 6→5. Hallazgo con
  ruling: «sin deploy» no protege `static/` servido en vivo (PROJECT_STATE, error #20).

### Fixed
- **Sello de versión en lo que siembra `nyx init`** (F3 del informe de fricción del scaffold,
  hallazgo A2 «cero marcas»): cada archivo de contexto IA (AGENTS.md, CLAUDE.md, .cursorrules,
  CHEATSHEET.md, LLM.md, copilot-instructions y las 3 skills) termina con
  `<!-- nyx-version: X -->` — el mismo marcador que CAPABILITIES.md — puesto al FINAL para no
  tocar la línea 1 ni el frontmatter de las skills. `nyx build`/`nyx run` avisan en stderr (WARN,
  nunca fatal, sin tocar el archivo) cuando AGENTS.md no lleva el sello de la toolchain instalada;
  `nyx update --sync-docs` resiembra con el sello nuevo. Antes un proyecto creado con una versión
  vieja seguía guiando al agente con manuales desactualizados para siempre, en silencio. Guarda
  `seed-version-stamp` en `run_silent_failure_checks.sh` con control positivo (sello viejo/ausente
  → WARN; vigente → silencio).
- **`nyx init` siembra `.gitignore`** (F4 del informe de fricción del scaffold, hallazgo A1,
  confirmado empíricamente): plantilla `templates/gitignore` con el binario de `nyx build`
  (`/{{binary}}` = `[package].name`), `packages/` (con la nota para quien prefiera vendorizar
  commiteado), `*.ll`, `*.o` y los `.bak` de `--sync-docs`. Nunca pisa un `.gitignore` existente y
  NO corre `git init` (decisión del usuario). Antes el primer `git add .` se llevaba el binario y
  las dependencias clonadas. Guarda `seed-gitignore` en `run_silent_failure_checks.sh`.
- **Gotchas renumerados en los manuales sembrados** (F5 del informe de fricción, hallazgo A6):
  `templates/AGENTS.md` (12/13/14 → 11/12/13) y `templates/CLAUDE.md` (11/12 → 10/11) tenían un
  hueco por un borrado sin renumerar — el informe lo leyó como contenido perdido; no se perdió
  nada (el gotcha borrado, `arr[i] = float`, estaba arreglado y documentado). Solo cambian los
  números.
- **`nyx init` ya no siembra CERO archivos en silencio** (F6 del informe de fricción, hallazgo
  nuevo #3): el scaffold resolvía `NYX_HOME` con un `getenv` pelado — vacío, buscaba
  `/templates/…`, nada existía y el proyecto quedaba sin AGENTS.md ni CAPABILITIES.md sin decir
  una palabra. Ahora `resolve_seed_home` cae a `~/.nyx` (si trae `templates/`) o al monorepo, y
  si no hay toolchain imprime un error ruidoso (no fatal: `nyx.toml` y `src/main.nx` se crean
  igual) con la receta (`NYX_HOME` o `install.sh`, luego `nyx update --sync-docs`). Guarda
  `seed-home-fallback` en `run_silent_failure_checks.sh` (3 escenarios).
- **`nyx init` deja de sembrar `.vscode/extensions.json`** (F6 del informe de fricción, hallazgo
  nuevo #4, decisión de Ottavio): recomendaba la extensión `nyxlang.nyx-language`, que no existe
  en el marketplace (404), y la plantilla estaba gitignored — solo se sembraba en instalaciones
  hechas desde el disco de desarrollo. Ficha en `TASKS.md` para resembrarla cuando haya una
  extensión publicada; `sync_to_public.sh` ya no copia esa carpeta.
- **`nyx_sleep()` reintenta `EINTR`** (vía `os_sleep_ms`): antes una señal a mitad de sleep lo
  cortaba antes de tiempo; ahora duerme lo pedido. Única diferencia observable del arco W1 —
  mejora estricta.
- **Los DOS flakies históricos de `test_tls` MUERTOS, con causa real medida** (5/20 corridas
  rojas con el host OCIOSO → 40/40 verde): ninguno era de `runtime/tls.c` ni tenía que ver con
  la carga. (a) `large_write`: el server pedía más bytes de los que faltaban y `nyx_tls_read` no
  retorna corto → dependía de una carrera de teardown; y el cliente cerraba sin leer los
  `NewSessionTicket` de TLS 1.3, así que `close(2)` mandaba **RST** y el kernel del server
  descartaba lo encolado (reintentar hasta un deadline era imposible por diseño). (b)
  `eof_after_nonblock`: el drenaje cortaba en el primer `""` de `read_nonblock`, que significa
  tanto WANT_READ como muerte. Las 3 hipótesis viejas («contención de CPU») quedaron
  DESMENTIDAS en `TASKS.md`. Fichado aparte el footgun de producción: `nyx_tls_close` sin
  drenar emite RST — es el patrón exacto de `nyx report --send`.
- **Los threads crudos de los tests se registran en Boehm** (`GC_THREADS` en `test_tls.c` /
  `test_thread.c`): cerraba un agujero engañoso del arnés.
- **`examples/57-mutex` al contrato vigente de handles**: usaba la convención vieja
  (`let m: int = mutex_new()`), que trunca el puntero y hoy es el error NYX1003 a propósito →
  `let m: Map`. 101/101.
- **`nyx update --sync-docs` migra el layout viejo y ahora sí refresca los adaptadores** (Task 6
  del arco andamiaje-sdd, spec §2 «Migración de proyectos existentes»): un proyecto sembrado
  antes de ADR-1 (LLM.md/CHEATSHEET.md en la raíz, CLAUDE.md/.cursorrules/copilot-instructions
  con marca, `.claude/skills/`) se quedaba con ese layout para siempre — `--sync-docs` sabía
  resembrar AGENTS.md/docs/nyx/** pero nunca tocaba lo viejo. `_migrate_seeded_layout()` en
  `scripts/nyx` migra CADA archivo que lleve NUESTRO sello (`.bak` siempre antes de mover,
  reemplazar o borrar) y deja intacto — con un aviso — cualquiera sin sello (lo escribió el
  usuario). Idempotente: la segunda corrida no migra nada. Cierra la ficha de `TASKS.md` «`nyx
  update --sync-docs` no refresca CLAUDE.md, .cursorrules ni copilot-instructions». Guarda
  `run_sync_docs_migration.sh` (5 escenarios, incluida una copia real de
  `~/nyx/web/sites/nyxlang.com`).
- **What's new de gotchas arreglados tras `nyx update`**: además del extracto del CHANGELOG,
  ahora imprime «Gotchas que ya no hace falta esquivar» vía `nyx_gendocs fixed-since
  $OLD_VERSION` (Task 2) — la lista de trampas que documentaba `LLM.md`/`AGENTS.md` y que la
  nueva versión ya arregló, para que el agente deje de esquivarlas. `install-local` instala
  `nyx_gendocs` junto a `nyx_vet`/`nyx_check`.
- **`make install-local` purga los restos de `templates/` pre-ADR-1**: copiar `templates/.` sin
  purgar dejaba `CLAUDE.md`, `CHEATSHEET.md`, `LLM.md`, `.cursorrules`, `.github/` y `.claude/`
  muertos al lado del árbol nuevo (`templates/{en,es}/`, `templates/adapters/`) en toda
  instalación hecha antes de esta rama. `scripts/install_purge_legacy_templates.sh` es la ÚNICA
  fuente de esa lista de rutas — la usa `install-local` Y la guardia, sin duplicar la lógica.

### Changed
- **`nyx init` cambia lo que siembra por defecto (ADR-1, decisión de Ottavio 2026-09-04)**
  `[arco: andamiaje-sdd]`. Un proyecto nuevo recibe ahora **`AGENTS.md` + `CAPABILITIES.md` +
  `docs/nyx/`** (la referencia densa `docs/nyx/LLM.md` y tres guías neutrales:
  `guides/write-a-program.md`, `guides/fix-a-compile-error.md`, `guides/report-friction.md`).
  **Dejan de sembrarse** `CLAUDE.md`, `.cursorrules`, `.github/copilot-instructions.md`,
  `.claude/skills/` y `CHEATSHEET.md` (que muere), y `LLM.md` deja de ir en la raíz del
  proyecto. *Por qué*: eran seis archivos con marca comercial que repetían el mismo núcleo
  con distinta redacción, arrastraban trampas ya arregladas y ninguna guardia los cruzaba;
  el default de un lenguaje no puede estar atado a un proveedor de IA. *Cómo recuperar los
  archivos por proveedor*: `nyx init --agent=claude,cursor,copilot` (también
  `nyx init --agent claude`), que siembra **adaptadores de 3 líneas** — quién eres, «lee
  `AGENTS.md`», «las guías están en `docs/nyx/guides/`» — sin contenido propio; para Claude,
  solo `CLAUDE.md` (nada bajo `.claude/`). Un valor inválido (`--agent=foo`) falla con exit 1.
  *Idioma*: un proyecto es monolingüe — `nyx init --lang es` (o `NYX_LANG=es`) siembra el
  juego castellano completo, en español neutro; sin bandera, inglés. El sello de lo sembrado
  pasa a `<!-- nyx-version: X nyx-lang: xx -->` y `nyx update --sync-docs` resiembra desde el
  juego del idioma del proyecto (deja `.bak`). Los proyectos ya existentes NO se tocan hasta
  que corran `--sync-docs`; la migración del layout viejo llega en el mismo arco.
  Guardia nueva: `scripts/testing/run_init_golden.sh` (listado dorado por idioma, neutralidad,
  adaptadores, `--lang`/`--agent`), dentro de `make test-ai-first`.

### Docs
- **`LLM.md` §std/serve documenta los 9 campos de `Request`** (F7 del informe de fricción,
  hallazgo A3c): `method`, `path` (sin la query string), `query` (decodificada), `headers_flat`
  (+ `http_find_header` es exact-case; `http_find_headers` para case-insensitive/repetidos),
  `body` (crudo; 413 por el cap antes del handler), `form` (solo urlencoded), `cookies`, `params`
  y `ctx` (scratch por request), más el contrato `get_or`/`contains` de los Map.
- **Mutex global: `var MU: Map = mutex_new()` FUNCIONA — MEDIDO** (4 threads × 10000 incrementos
  lockeados = 40000 exacto, 5/5): los inicializadores globales corren single-threaded antes de
  `main`. El patrón lazy-init con flag READY es innecesario y UB (3 modos de fallo trazados en
  `LLM.md` §Threading; el ejemplo 62 gana la nota).
- **`tcp_write` no tiene timeout por default** (un peer stalled bloquea para siempre →
  `tcp_set_timeout` primero en write-paths que no pueden colgarse) y **`tcp_close` NO despierta
  un `recv()` de otro thread — `tcp_shutdown` sí** (patrón reader-ownership, incl. el modo de
  fallo del fd reciclado): ambos en `LLM.md` §Networking y en los `///` de `try_tcp_write` /
  `try_tcp_shutdown`, que alimentan el CAPABILITIES generado.
- **`std/sync` es descubrible desde `LLM.md` §Threading** — el reporte de fricción pedía un
  waitgroup que YA existía: el gap real era visibilidad.
- **Piso mínimo `libgc`/bdwgc >= 8.2** documentado en la instalación, con aviso NO-fatal en
  `install.sh` y `build_bootstrap.sh` (probado con 5 versiones simuladas; el build siempre
  completa).
- **`docs/TESTS.md` reconciliado con la realidad** (34 suites / 1444 asserts): la celda de
  resumen estaba congelada desde E5.2b, con corrida real de respaldo.
- **Campaña de reestructuración documental CERRADA (2026-08-31, 9 merges)**: cada historia se
  cuenta UNA sola vez y hay guardas que lo sostienen. `docs/archive/` con extracción LITERAL de
  la historia; el cuarteto `PROJECT_STATE`/`PLAN`/`TASKS`/`CHANGELOG` repartido por ROLES (foto
  del presente / campañas activas / backlog / historia por release); `docs/TESTS.md` en una
  tabla de ≤150 líneas; `docs/SPEC.md` sin las mentiras sobre async, borrow checker y Box/Rc, y
  sin numeración muerta; `docs/design/INDEX.md` como índice de todo el diseño; `docs/ROADMAP.md`
  reescrito por arcos; `docs/VERSIONING.md` con los criterios de 1.0 unificados. Todo verificado
  por `scripts/testing/run_docs_health.sh`, enganchado a `make test-ai-first`.
  `[arco: campana-docs-restructura]`
- **El método de trabajo deja de llevar el nombre del plugin**: los documentos de diseño viven
  en `docs/design/` y el ledger de ejecución de cada arco en su propio directorio gitignored
  (338 citas reescritas — rutas, nunca contenido). Al cerrar un arco, el ledger se COSECHA a
  `docs/archive/sdd/`: 15 arcos históricos (E1-E2, E5.5, W0, W1 inc 0-7, W2, W3 pasos 0 y 0b, la
  campaña de docs) pasaron de vivir en un scratch gitignored a ser evidencia trackeada.
- **`docs/TESTS.md`**: ai-first cuenta 24 programas (el 24, `24-bare-return-assert.nx`, entró el
  2026-08-31 sin actualizar el conteo); `test-all` lista sus 15 suites.
- **Campaña SDD-nyx CERRADA (2026-09-02/03; 11 tasks, 53 commits, 34 rulings)** — el método de
  trabajo pasa a ser del proyecto y deja de depender del plugin: `docs/design/` (specs, plans,
  briefs, spikes, reviews; banner de estado en línea 1; `INDEX.md` GENERADO) + un ledger de
  ejecución efímero por plan (ruta derivable, nunca citada; se COSECHA a `docs/archive/sdd/` al cerrar) + `scripts/sdd/` (10 scripts,
  selftest de 70 casos) + `run_docs_health.sh` 11/11 checks (8 por generador, 10 duro, 11 =
  `state-check`). 113 banners canónicos, 15 ledgers históricos cosechados (45 rulings rescatados),
  cuarteto sincronizado al presente. Saneamiento: mueren 14 skills OFF y los 6 agentes
  (`runtime/CLAUDE.md` rescata lo no derivable), `scripts/testing/bench/`, 4 scripts huérfanos,
  `nyx-vscode/`, `benchmarks/`, 19 examples muertos, `.cursorrules` raíz, `templates/product-ci.yml`;
  `.archive/` y 6 docs históricos a `docs/archive/`; CHEATSHEET único en `templates/`. Tooling:
  `make test-all` cubre las 15 suites, `bootstrap-asan` linkea `licm.ll`, `scripts/release-check.sh`
  (2 fallbacks reales de VERSION; `compiler/build.nx` anunciaba 0.22.10), `templates/LLM.md` viaja al
  mirror (antes `nyx init` fallaba en silencio en instalaciones públicas), `ci.yml` honesto,
  `CLAUDE.md` reescrito. `[arco: sdd-nyx]`
- **Poda de CHANGELOG.md y TASKS.md (2026-09-03)** — primer arco nacido con `arc-new`. El CHANGELOG
  cortó en `[0.20.0]` por extracción literal: 176 KB (0.20.0→0.9.0 + la «Pre-reset development
  history» v1–v6) a `docs/archive/CHANGELOG-2026H1.md`; el vivo pasa de 333 a 161 KB. TASKS: triage de
  las 205 fichas con veredicto y evidencia (spike `2026-09-03-tasks-triage`, aprobado por Ottavio):
  10 HECHAS verificadas con sha o repro compilado (entre ellas las dos ALTA del arco de errores
  tipados: la clave base `Result:Ok:0` y el camino `Err` de `?`, que SÍ corre `defer` y el drop afín),
  1 duplicada, 2 MAL UBICADAS que van al repo de nyx-kv (`~/nyx/products/kv`: el truncado de `\n` al
  guardar y el vaciado del namespace admin), más las fichas del propio archivado y de la poda;
  36 fichas de julio sin prioridad pasan a `[BAJA]` (re-triage adelantado, 0 NO-SE-HACE); 205→190
  fichas, 1620→1502 líneas; conteos reales en ROADMAP §5/§6. Hallazgo: `docs/SPEC.md` §Typed Errors
  sigue afirmando que `?` no corre `defer` (ficha acotada, se corrige a continuación). La rama
  `feat/errores-tipados-e1-e2` (mergeada en `6b3ec2b`) perdió su marcador «NO MERGEAR» con la ficha 240.
  `[arco: poda-changelog-tasks]`
- **`docs/SPEC.md` §Typed Errors deja de mentir sobre `?`**: la nota del 2026-08-31 afirmaba que el camino
  `Err` de `?` no corría `defer` ni liberaba tipos afines; era falsa desde su redacción (fix real en
  v0.27.0, `9ef30fa`). Repro compilado 2026-09-03 durante el triage de TASKS; ficha cerrada.

### Interno — arco Windows W1: nace la capa `nyx_os_*` (8 incrementos, 2026-08-20 → 26)
- **`runtime/os/`**: `nyx_os.h` (header único SIN un solo `#ifdef` de plataforma) +
  `os_posix.c` + `os_wasm.c` (stub single-thread: sync no-op, threads `-ENOSYS`). W2-W5
  escriben `os_win32.c` contra ese mismo header.
- **Dominio threads/sync/tiempo** (inc 0+1): threads, mutex, condvar, rwlock, once, TLS, tiempo
  monotónico, sleep, yield. `os_posix.c` es el ÚNICO lugar que define `GC_THREADS` (o sea el
  redirect `pthread_create`→`GC_pthread_create` de Boehm). `thread.c`, `tls.c`, `event_loop.c`,
  `runtime.c` y `scheduler.c` migrados sin tocar la máquina de estados del scheduler M:N.
- **Spike `os_ev` THROWAWAY** (inc 0): el contrato de event loop completion-style quedó FIRMADO
  por evidencia (echo TCP ×16 conexiones, timers cross-thread, cancel en vuelo, EAGAIN re-arm,
  partial write de 4 MiB; 20/20 + 3/3 bajo ThreadSanitizer). Hallazgo medido:
  `nyx_goroutine_block_on_fd` (readiness) no tenía NINGÚN caller.
- **Dominios vm+ctx** (inc 2): `os_vm_map`/`os_vm_protect_none`/`os_vm_release` y
  `os_ctx_t`/`os_ctx_make`/`os_ctx_swap` (POSIX ucontext; win32 será Fibers). El hack hi/lo de
  `makecontext` queda como detalle interno de `os_posix.c`.
- **Dominio sockets** (inc 3): la superficie más grande — `net.c` entero (~100 sitios), el
  connect/poll de `tls.c` y el `writev` de `http2.c`. `os_addr_t` opaco de 128 B, resolución con
  espacio de códigos propio (`OS_RES_*`, porque los `EAI_*` de glibc colisionan con `-errno`),
  `os_sock_poll1` con revents reales, `os_addr_resolve_any` (AF_UNSPEC) + `os_sock_stream_for`.
  Fidelidad verificada con sonda diferencial byte-idéntica sobre las 26 funciones públicas.
- **Dominio evloop** (inc 4): `os_ev_*` implementado sobre epoll + eventfd (timers one-shot
  monotónicos, wake cross-thread, read/write completion-style, cancel, run_once). El spike muere,
  propósito cumplido. `test_os_ev` con 86 asserts.
- **Dominio proc** (inc 5): `exec()`/`exec_code()` pasan a `os_proc_run_capture`/`_run_status`;
  **muere el `#ifdef __wasi__` de `runtime.c`**. Contrato preservado letra por letra (sondas: 100k
  cruzando el growth, 10k NULs binary-safe, tabla de exit codes en vivo).
- **Dominio dl** (inc 6): los 3 adapters (zlib/sqlite/llama) sobre `os_dl_open/sym/error/close`,
  con la semántica `RTLD_LOCAL` de la que depende el esquive de la colisión `inflate` reproducida
  exacta (18/18 dlsym verificados hunk por hunk).
- **Dominio señales + fault-guard** (inc 7, cierra W1): `os_sig_install` vs
  `os_sig_install_no_restart` (la distinción `SA_RESTART` es real y medida), constantes `OS_SIG*`
  incluidas las síncronas (cierra el agujero F15 de macOS), `os_fault_guard_install/thread_init`
  (sigaltstack + `SA_ONSTACK` + `si_addr`) con el mensaje del scheduler byte-exacto.
- **Ratchet `run_os_layer_ratchet.sh`**: 12 headers POSIX prohibidos fuera de `runtime/os/`
  (crece un dominio por merge) + una regla dormida: si existe `os_win32.c`, el stub W0
  `win_w0_hello.c` debe haber muerto. Engancha en `make test-ai-first`.
- **Superficies PINEADAS documentadas con destino**: `process.c` (builtins fork/execvp → W5) y
  `event_loop.c` (API readiness Nyx-facing, pineada por test-161 → W4+).
- **Los reviews adversariales pagaron 10+ hallazgos mayores con los gates en verde**:
  `os_ctx_t` sub-alineado (8 vs los 16 que `ucontext_t` aarch64 exige — UB confirmado con UBSan),
  `os_ev_write` con `write()` crudo que mataba EL PROCESO por SIGPIPE, un `Err` que se volvía
  `Ok` en `tcp_write_result`, un fd fantasma, la síntesis de `poll1` que rompía la
  discriminación de EOF, y **una regresión IPv6 real en TLS/HTTPS** (la capa era IPv4-only).
- **El audit de recetas descubre en vez de listar**: cualquier archivo trackeado que linkee el
  runtime debe llevar `os_posix.c`/`os_wasm.c`; aparecieron 18 listas de fuentes donde el plan
  había mapeado 7, y 4 recetas rotas EN VERDE por un glob que no desciende a subdirectorios.

### Interno — arco Windows W2 y W2-ARM64: 26 programas Nyx CORREN en Windows
- **Hito de ejecución**: el subset de regresión (26 tests reales de strings/formateo/arrays/
  maps/json/file-I/O/lenguaje) se compila en Linux con el triple MSVC, se linkea en
  `windows-latest` contra el runtime real y **se ejecuta**, con salida comparada byte a byte
  (CRLF normalizado, `rc==0` exigido, piso de 26 en el gate).
- **Fórmula honesta**: subset MENOS sqlite-runtime (sqlite compila y linkea; su ejecución llega
  en W5 con los nombres `.dll` de los 3 adapters — ficha ALTA). Threads gateados por
  `win_forbidden_builtin` hasta W3.
- **`os_win32.c`** (~100 fns, `-Werror` como gate, LLP64 limpio): SRWLOCK + CONDITION_VARIABLE
  (elegidos sobre CRITICAL_SECTION porque su init estático en ceros es UB), `GC_beginthreadex`,
  QPC/FILETIME, VirtualAlloc, LoadLibrary, VEH con 3 códigos de excepción, consola, `_pipe`/`_commit`.
- **Fase A**: dominios fs (`os_fs_stat`/`mkdir`/`listdir`) y term+fd (raw mode, winsize,
  self-pipe, fsync) en la capa; `file-io.c` y `runtime.c` quedan SIN headers POSIX (ratchet 12→15).
  Residuo cerrado: `os_env_set` + `os_time_parse`.
- **La regla dormida del ratchet se cobró su pieza**: `win_w0_hello.c` MURIÓ.
- **W2-ARM64**: el mismo manifiesto en runner `windows-11-arm` hosteado — EJECUCIÓN real, no
  cross-compile. **CERO deltas de ABI**: el IR de ambos triples es byte-idéntico salvo la línea
  `target triple`, 26/26 en ambas arquitecturas en la misma corrida, `-Werror` limpio en aarch64
  y Boehm GC funcionando en ARM64-Windows (su escaneo de stack es por-arquitectura).
- **Gotchas del runner documentados**: Git Bash del runner ARM64 reporta AMD64 (emulación) y su
  workspace vive en `C:` — ese job solo jamás habría cazado el hallazgo del drive.
- **16 hallazgos de review en 4 rondas**, entre ellos el silently-wrong de SIGTERM (el CRT win32
  NUNCA lo genera: `persist` habría creído tener shutdown), el last-error pisado por `free()`, el
  gate ciego al exit code, y el hallazgo estrella: **`/tmp` es drive-relativo en Windows** (deuda
  de LENGUAJE, decisión pre-anuncio fichada ALTA). 7 carries fichados con destino W3/W4/W5.

### Interno — arco Windows W3 pasos 0 y 0b: mueren los DOS bloqueantes del scheduler
- **Paso 0** — el fault-guard de la capa **ENCADENA** al handler previo (snapshot atómico
  release/acquire, instalación once-only): muere el SEGV **determinista** de `test_scheduler` y se
  cierra el kill-switch de `GC_ENABLE_INCREMENTAL` (Boehm MPROTECT_VDB es dueño legítimo de
  SIGSEGV; pisarlo sin encadenar rompía el write-barrier).
- **Paso 0b** — root cause del «`GC_push_all_eager` faultea sobre una guard page bajo carga,
  ~50%»: con un worker suspendido corriendo una goroutine, el colector escaneaba
  `[sp_goroutine, stack_end_NATIVO)`, un rango de VA arbitrario que cruza guards `PROT_NONE`
  (sonda decisiva: gap de 136 MB vía `GC_get_my_stackbottom`).
- **Las 2 hipótesis de la ficha quedaron REFUTADAS**: en Linux libgc NO fusiona roots adyacentes
  (ese merge es código Windows-only) y `stack_pool_put` nunca libera con un root vivo.
- **Fix**: `GC_set_sp_corrector` POR DIRECCIÓN (la alternativa de swapear `stack_end` tenía
  ventana de carrera). Gate de carga: 30/30 y 15/15-incremental contra 6/12 y 10/12 muertes de
  base.
- **Review adversarial con matriz 2×2 de mutaciones**: el corrector carga TODO el peso; la
  `sa_mask` heredada se queda por CONTRATO (mecanismo de `os_dep.c` verificado con sonda, y la
  atribución se corrigió con reword de historia). Fix round: pin de máscaras no-vacuo,
  invariantes escritos en el código, `test_gc_goroutine_stack` determinista.

### Interno — cosecha del paso 0b: la infraestructura de tests deja de mentir
- **`make test-load`** (y en `test-all`): `tests/stress/gc_goroutine_load.nx` (300 goroutines ×
  Array de 20k, oráculo determinista) + `run_load_gate.sh` (5 corridas + 3 incrementales por
  default; `LOAD_GATE_RUNS`/`_INC` para los ×30 de investigación). Anti-vacuidad probada: la
  variante rota da 0/3 y `rc=1`.
- **Los runners del repo NO eran paralelizables**: `flock` en 12 runners vía
  `lib_testroot_lock.sh` (timeout medido de 3600 s). La contención se probó con conteos EXACTOS
  donde antes había fantasmas (256/256 y 18/18 contra 256/254, 2/242, 14). El review cazó un
  CRITICAL de composición (self-deadlock anidado: `flock` no es reentrante entre fds) →
  `NYX_TESTROOT_LOCK_HELD`. Después se extendió a los 4 scripts fuera de `scripts/testing/`.
- **Red de seguridad M5** en `nyx_gc_sp_corrector`, 100% bajo `#ifdef NYX_RUNTIME_TESTING` (cero
  producción), con `write(2)` crudo porque corre con el GC lock tomado y el mundo parado. Tests
  en ambas direcciones (sp bogus grita / sp válido calla).
- **«goroutine stack overflow» como diagnóstico potencialmente MENTIROSO**: barrido read-only de
  todo el histórico con resultado NEGATIVO — el bug 2 era INOBSERVABLE antes del paso 0, así que
  no hubo ventana para mal-etiquetarlo. Los 3 overflows reales del histórico siguen válidos.

### Interno — arco Windows W3 Tasks 1-3: GC + Fibers RESUELTO en win32
- **Modo de trabajo nuevo**: la laptop Windows de Ottavio como «manos win32» y esta sesión como
  coordinador, sincronizados POR GIT (los encargos se commitean; un relay de chat se pierde).
  Iteración local en minutos contra ~35 min de CI facturado.
- **Task 1 (spike)** — la Opción E original quedó REFUTADA por el spike (`GC_gcollect` colgaba con
  Fibers) y el root cause NO eran las Fibers: era un root con páginas `MEM_RESERVE`, porque
  `GetCurrentThreadStackLimits` devuelve la RESERVA (el kernel clampea commit==reserve). Esa
  función queda **PROHIBIDA para roots**.
- **E′**: roots por rango **COMITEADO**, medido con walk de `VirtualQuery` y verificación página
  por página. Las muertes residuales de 4-6% se SIMBOLIZARON a `GC_mark_from` (mark.c:716/726):
  es el bug de Linux del paso 0b, en win32, por el camino `thread->id==me` (`may_be_in_stack`
  sondea el sp de la fiber y esquiva todos los clamps).
- **Parche B a bdwgc 8.2.12** (~10 líneas, en el repo bajo `docs/design/spikes/`,
  upstream-able) + **ablación estadística**: 5/~140 muertes sin parche contra **0/120** con
  parche y el corrector activo (~25k correcciones por corrida).
- **Techo real de root sets ~2033** → el build vendoreado lleva `enable_large_config=ON`
  (~8150 goroutines); el O(n²) de `GC_add_roots` en win32 quedó medido como inmaterial.
- **Task 2 — `os_ctx_*` v2 (POSIX)**: el contexto es DUEÑO de su stack
  (make/remake/stack/guard/free/thread_init; mmap + guard adentro). Scheduler migrado sin tocar
  la máquina de estados; pool por puntero (struct 4896→96 B, spawn+join 378→217 ms); el camino
  diferido de `GC_add_roots` ya escrito para que win32 lo herede. Review 21/21 + re-review con
  mutación reproducida independiente.
- **Task 3 — Fibers win32**: `os_ctx_*` v2 real sobre `CreateFiberEx`, con el rango comiteado
  medido y el root publicado desde `goroutine_entry` ADENTRO de la fiber (ruling de la laptop
  aceptado en review), corrector de sp **POR EXCLUSIÓN** (sp fuera del rango nativo cacheado →
  `native_hi`; 3 reglas de decisión testeadas), header `nyx_os_win32.h`, y la estrategia bdwgc en
  3 niveles (build local / overlay vcpkg para el CI / PR upstream = decisión de Ottavio).
  Review Approved sin Critical + re-review 11/11; Linux verificado (regresión 100%, scheduler
  270/270).
- **El falso «S3 con canarios corruptos» no era real**: era el VEH del propio spike matando AVs
  first-chance que el SEH de `GC_mark_some` maneja rutinariamente (los VEH corren ANTES que el
  SEH). Hazard fichado: el fault-guard real de `os_win32` tiene el MISMO patrón.
- **Residuo**: los jobs del spike quedaron gateados a `feat/w3-**` (no queman runner en `main`) y
  el re-run verde de la matriz espera el billing de GitHub Actions.

### Interno — arco Windows W3 Task 4: el primer `spawn` de Nyx CORRE en Windows
- **`runtime/thread.c` + `runtime/scheduler.c` linkean en win32** y el primer `spawn` corre:
  **25/25 fixtures** de concurrencia verdes en la laptop.
- **Ablación n=50 sobre la implementación REAL** (no sobre el spike): **0/50** muertes con el
  parche a bdwgc + el corrector de sp (5k-53k correcciones por corrida) contra **2/50** stock,
  que además grita 50/50 con el aviso ruidoso. Es la evidencia de que el fix es el fix.
- **`scheduler.c` posix-limpio**: los `unistd.h`/`fcntl.h` muertos salen vía la capa `nyx_os_*`,
  con la equivalencia verificada 1:1 en review (incluido el caso de páginas de 64K).
- **`event_loop_win32.c` timers-only por link** (IOCP queda para W4), con la advertencia del
  cuelgue de `block_on_fd` escrita donde se va a leer.

---

## [0.31.0] — 2026-08-20 — E5 completo: `http` + `json` + `sqlite` en la regla de dos niveles (+ W0 Windows interno)

> MINOR agrupado autorizado explícitamente por Ottavio (2026-08-20,
> «confirmado v0.31.0»). Cierra el arco E5 de la spec de errores tipados
> §4.2 de punta a punta: `file` (E4, v0.28.0) → `net` (E5.1/E5.2/E5.2b,
> v0.29.0-v0.30.0) → `http` + `json` + `sqlite` (este release). Tres
> ramas paralelas sobre v0.30.0 (E5.3/E5.4/E5.5) + el arco W0 de Windows
> (INTERNO — nada de esto anuncia soporte Windows, decisión todo-o-nada
> §1.3 de la spec: la sección W0 documenta ingeniería en construcción).
> Gates del merge: regression 400 archivos / 399 ejecutados ARM64 100%,
> errors 256/0, ai-first 22, fixed point ×2, stacks 6/6, CI de main
> verde (Nyx CI + Nyx Windows W0). En el merge se aplicó la enmienda
> LLP64: la receta FFI de LLM.md §5.1 ítem 4 es `int64_t` ÚNICA (NO
> `long` — Win64 es LLP64, 32 bits).

### W0: fundaciones del target Windows (INTERNO — esto NO anuncia soporte Windows)

> Rama `feat/w0-windows-target` sobre `main` v0.30.0, MERGEADA 2026-08-20. Primera
> etapa del arco Windows nativo (spec
> `docs/design/specs/2026-08-19-windows-nativo-design.md`, decisión
> todo-o-nada §1.3: nada se publica como soportado hasta W6).

### Added
- **`NYX_TARGET=x86_64-pc-windows-msvc` / `aarch64-pc-windows-msvc`**: el
  triple se emite tal cual en el .ll (sin forzar `no_gc` — Boehm soporta
  win32/win64, a diferencia de wasm32). Un `NYX_TARGET` NO reconocido es
  ahora error fatal bilingüe que nombra los targets válidos — antes caía
  MUDO al triple linux (silently-wrong de toolchain).
- **`win_forbidden_builtin` (guard TEMPORAL W0-W5)**: los builtins de
  net/scheduler/process/tls/señales fallan fast con error bilingüe «aún
  no está portado a Windows» bajo un target windows, en vez de un
  `unresolved external symbol` críptico del linker. La capa `nyx_os_*`
  (W1+) lo vacía etapa por etapa.
- **`make win-compile FILE=x.nx [ARCH=arm64]`** → `x.win.ll` /
  `x.arm64.win.ll`.
- **CI `windows.yml` — el primer .exe Nyx nativo CORRIÓ en CI** (run real
  verde, la evidencia ejecutada que pide la spec §4-W0): fixture-freshness
  en ubuntu (reconstruye el bootstrap desde seeds, re-emite el IR del
  hello y lo diffea contra el fixture commiteado), hello-x64 en
  windows-latest (vcpkg bdwgc + clang→MSVC + lld-link + ejecución con
  salida assertada), hello-arm64 cross (compile+link + artefacto; no hay
  runner ARM64-Windows público). Subset de runtime W0: `strings.c` +
  `runtime-arrays.c` + `maps.c` + `runtime/os/win_w0_hello.c` (stub W0-TEMP
  de 6 símbolos que W1 borra).
- Tests: errors 253→256 (builtin prohibido con control positivo nativo,
  target desconocido, triple emitido ×2 archs). Auditoría ABI Win64
  MEDIDA en la spec §9 (c_fn_ptr por-triple, struct by-value sin
  byval/sret, LLP64 — `long` C es de 32 bits en Win64 —, paths/HOME del
  driver) con 4 fichas en TASKS.md, cosecha `[arco:W0-windows]`.

### E5.5: `std/sqlite` — el canal lateral muere dentro del Error

> Rama `feat/e5-5-sqlite-try` sobre `main` v0.30.0, MERGEADA 2026-08-20 —
> cuarta hermana de la migración E5 (junto a E5.2b `std/net`, E5.3
> `std/http`, E5.4 `std/json`).

### Added
- **`std/sqlite.nx`**: `try_sqlite_open(path) -> Result<*int, Error>` /
  `try_sqlite_exec(db, sql) -> Result<int, Error>` (`Ok(affected)` real) /
  `try_sqlite_query(db, sql) -> Result<Array, Error>` /
  `try_sqlite_query_named(db, sql) -> Result<Array, Error>` — reemplazan
  el patrón NULL/-1/bool mudo + `sqlite_error(db)` a mano de las
  centinelas viejas (`sqlite_open`/`sqlite_exec`/`sqlite_query`/
  `sqlite_query_named`, intactas). Nyx puro, CERO cambios en
  `runtime/sqlite_adapter.c`. `begin`/`commit`/`rollback`/`exec_int`/
  `exec_str`/`query_int` quedan sin hermana `try_` (ficha `E5.5b`,
  TASKS.md, cosecha `[arco:E5.5-sqlite]`).
- **Kind `"db"`** en el vocabulario cerrado de `std/error.nx` — los result
  codes de sqlite (1-27) colisionan con el espacio errno (rc 2 =
  SQLITE_INTERNAL ≠ ENOENT); espacio de código propio, mismo precedente
  que `"eof"` (E5.2b).
- Tests: regression +test-379-try-sqlite (open/exec/query Ok, SQL
  malformado vía exec y vía query, tabla inexistente, PK duplicada vía
  query, open de path imposible — todos con expected MEDIDO); ai-first
  +22-ffi-int-truncation (blindaje del hallazgo 2, ver abajo).

### Found (documentado, NO arreglado — fuera de alcance de esta rama)
- **La centinela `sqlite_query`/`sqlite_query_named` se come en silencio
  un error de STEP real** (ej. `SQLITE_CONSTRAINT` de un `INSERT` con
  conflicto de PRIMARY KEY): su loop trata cualquier rc no-`SQLITE_ROW`
  como "query terminada" y devuelve las filas parciales como si nada
  hubiese fallado. Impacto bajo (un `SELECT` normal nunca dispara esto)
  pero real para `INSERT`/`UPDATE` corridos por esas funciones. Las
  hermanas `try_` distinguen correctamente. Ficha `[arco:E5.5-sqlite]`
  en TASKS.md.
- **Clase de FFI nueva**: varias funciones de `runtime/sqlite_adapter.c`
  (`nyx_sqlite_step`/`nyx_sqlite_exec`/`nyx_sqlite_column_count`/
  `nyx_sqlite_bind_str/int/double`) declaran retorno C `int` (32 bits)
  contra un `extern "C"` Nyx de 64 bits — un valor negativo cruza
  ZERO-extendido, no sign-extendido (`-1` llega como `4294967295`). La
  clase potencialmente afecta a CUALQUIER `extern "C" fn ... -> int` del
  repo, no solo sqlite (`runtime/net.c` ya se cubre declarando
  `int64_t` explícito). Auditoría del resto de los adapters fichada
  `[arco:E5.5-sqlite]` en TASKS.md. Visible en LLM.md §5.1 item 4.

### E5.4: `std/json` — el `null` ambiguo muere

> Rama `feat/e5-4-json-try` sobre `main` v0.30.0, MERGEADA 2026-08-20 —
> paralela a `feat/e5-3-http-try` (ambas parten del mismo v0.30.0).
> CERO C, CERO `compiler/` — `std/json.nx` es Nyx puro.

### Added
- **`std/json.nx`**: `try_json_parse(input) -> Result<Array, Error>` /
  `try_json_get(obj, key) -> Result<Array, Error>` /
  `try_json_array_get(arr, i) -> Result<Array, Error>` — hermanas
  `Result`-returning de `json_parse`/`json_get`/`json_array_get`. Las
  centinelas viejas quedan INTACTAS (sin cambios, sin deprecar).
- **La desambiguación EXACTA del `null`**: `json_parse`/`json_get`/
  `json_array_get` devuelven el mismo `["null"]` centinela tanto para un
  `null` JSON legítimo como para "no había nada que parsear" / "clave
  ausente" / "índice fuera de rango" — indistinguibles mirando solo el
  valor. `try_json_parse` resuelve la ambigüedad de parseo comparando el
  input recortado contra el literal `"null"` (no delegando en el tag del
  resultado); `try_json_get` la resuelve re-recorriendo las keys del
  objeto en vez de llamar a `json_get` (clave presente con valor `null` →
  `Ok`; clave ausente → `Err{2,"not_found"}`); `try_json_array_get` hace
  lo análogo con el índice (`Err{22,"invalid"}` fuera de rango).
- **`json_trim` (helper interno, fix de review)**: la desambiguación de
  `try_json_parse` recorta el input con un helper propio que espeja el
  set de whitespace de `skip_whitespace` (espacio/`\t`/`\n`/`\r`, RFC 8259
  §2) — NO con `.trim()` del runtime, que delega en `isspace()` de libc y
  también considera whitespace a `\v`/`\f`, dos bytes que JSON no
  reconoce. Con `.trim()` genérico, un input con VT/FF pegado a `null`
  colaba como `Ok(null)` legítimo cuando debía ser `Err` — hallado en
  review, no en el diseño original (`.trim()` estaba documentado como
  "alcanza sin helper" y era falso).
- **Límite estructural conocido, fichado, NO resuelto acá**: basura
  ESTRUCTURAL dentro de un objeto/array sin cerrar (`"{oops"`) NO activa
  la desambiguación — `parse_object`/`parse_array` siempre sintetizan
  alguna estructura (parcial/corrupta) en vez de propagar tag `"null"`,
  así que ese tipo de basura pasa como `Ok` con contenido corrupto.
  Detectarlo requiere que el parser trackee posición/buena formación
  end-to-end — arco propio (`TASKS.md`, ficha `[MEDIA-ALTA] parser con
  posición`).
- Test `test-378-try-json` (regression, 398 archivos): parse válido con
  navegación de dos niveles, `"null"` con/sin whitespace JSON alrededor
  (incl. `\t`/`\n`), basura pura y vacío → `Err "parse"`, `"{oops"` → `Ok`
  corrupto (pin de comportamiento actual), trailing garbage tras `"null"`
  (`Err`, gratis) vs. tras un valor válido (`Ok`, leniente heredado),
  clave presente con valor `null` (`Ok`, EL assert central) vs. clave
  ausente (`Err "not_found"`), receptor que no es objeto/array
  (`Err "invalid"`), índice fuera de rango, VT (`chr(11)`, sin escape
  literal en Nyx) delante de `"null"` → `Err` (fija el fix de
  `json_trim`), no-regresión de las 3 centinelas viejas.

### E5.3: `std/http` — cliente HTTP tipado, el primer consumer real de `std/net`

> Rama `feat/e5-3-http-try` sobre `main` v0.30.0, MERGEADA 2026-08-20.
> CERO C, CERO `compiler/` — `std/http.nx` es Nyx puro sobre la familia
> `try_` de `std/net`.

### Added
- **`std/http.nx`**: `try_http_get(url)` / `try_http_post(url, body)` /
  `try_http_request(method, url, headers, body) -> Result<Array, Error>`
  — cliente HTTP tipado que mata el status `-1` centinela de las viejas
  `http_get`/`http_post`/`http_request` (INTACTAS, sin cambios). Helper
  interno compartido `try_http_exec` centraliza el pipeline parse→
  connect→timeout→write→read→close sobre `try_tcp_connect`/
  `try_tcp_write`/`try_tcp_set_timeout` de `std/net` (E5.1/E5.2) — el
  primer consumer real de esa familia.
- **Contrato de dos niveles**: CUALQUIER respuesta HTTP bien formada —
  200, 404, 500 incluidos — es `Ok(response)`: el servidor respondió, eso
  es éxito de transporte; un status es información de aplicación, no un
  fallo de red. `Err` es exclusivo de fallos de transporte reales: URL
  sin host parseable (`Err{22, "invalid"}`, detectado por `host == ""` de
  `http_parse_url`), connect rechazado/timeout/DNS (el `Error` real de
  `try_tcp_connect`), o una "respuesta" que no es HTTP válido con la
  conexión abierta (`Err{5, "parse"}`, `status <= 0`).
- **TLS degradado honesto**: `http_tls_request` (canal propio del
  runtime) no expone errno real, solo un centinela `-1` con mensaje libre
  — las `try_` lo mapean a `Err{5, "connection", msg}` en vez de fingir un
  errno que el canal no da (ficha para un canal `nyx_tls_connect_result`
  tipado en `TASKS.md`).
- Test `test-377-try-http` (regression): URL inválida, connect rechazado
  (kind `"connection"`, code 111), camino feliz canned local (`Ok`,
  status 200, body), 404 canned (sigue siendo `Ok` — el assert central del
  contrato), smoke de `try_http_post`/`try_http_request`. No-regresión:
  `test-374`/`test-375`/`test-376` y la centinela `http_get` intactos.

---

## [0.30.0] — 2026-08-14 — E5.2+E5.2b: `std/net` — la familia try_ completa (E/S, resolución, y las 7 restantes)

> MINOR agrupado autorizado explícitamente por Ottavio (2026-08-14,
> «sigue con E5.2b y luego release agrupado»).

> Rama `feat/e5-2-net-io` (E5.2) + `feat/e5-2b-net-resto` (E5.2b) sobre
> `main` v0.29.0 (E5.1), sin mergear. `VERSION` sin tocar, sin tag —
> release AGRUPADO E5.2+E5.2b autorizado por Ottavio por adelantado.

### Added
- **`nyx_tcp_accept_result`/`nyx_tcp_read_result`/`nyx_tcp_write_result`/
  `nyx_udp_sendto_result`/`nyx_udp_recvfrom_result`/`nyx_resolve_result`**
  (runtime, `runtime/net.c`, E5.2): espejo de mecánica de las 6 centinelas
  correspondientes (accept/read/write/sendto/recvfrom/resolve), sin
  stderr, `-errno` (fd/bytes) o `[errno, datos]` (read/recvfrom/resolve)
  en vez de abortar.
- **`nyx_tcp_read_line_result`/`nyx_tcp_read_partial_result`/
  `nyx_tcp_read_exact_result`/`nyx_tcp_shutdown_result`/
  `nyx_tcp_set_timeout_result`/`nyx_getpeername_result`/
  `nyx_resolve_ptr_result`** (runtime, `runtime/net.c`, E5.2b): las 7
  centinelas de red restantes ganan su versión `_result`. `runtime/net.h`
  ganó las 16 declaraciones `_result` en total (E5.1+E5.2+E5.2b) más
  `#define NYX_NET_EOF 1000` — código fuera del rango de errno de Linux
  (todos <1000) para el EOF limpio de read_line/read_exact, traducido por
  la capa Nyx antes de llegar al caller (nunca ve el 1000 crudo).
- **`std/net.nx`**: `try_tcp_accept(listen_fd)` / `try_tcp_read(fd, max)`
  / `try_tcp_write(fd, data)` / `try_udp_sendto(fd, data, host, port)` /
  `try_udp_recvfrom(fd, max)` / `try_resolve(host)` (E5.2) +
  `try_tcp_read_line(fd)` / `try_tcp_read_partial(fd, max)` /
  `try_tcp_read_exact(fd, n)` / `try_tcp_shutdown(fd, mode)` /
  `try_tcp_set_timeout(fd, secs)` / `try_getpeername(fd)` /
  `try_resolve_ptr(ip)` (E5.2b), las 13 `-> Result<..., Error>` —
  completan la familia `try_` de `std/net` junto al trío E5.1 (16
  funciones en total).
- **`std/error.nx`**: kind nuevo `"eof"` (code 0) en el vocabulario
  cerrado — fin de stream ESPERADO, NO un fallo (precedente `io.EOF` de
  Go); `errno_to_kind` no lo mapea, lo arma el caller directo vía
  `err_new(0, "eof", ...)`.
- Tests E5.2: regression +test-375-try-net-io; runtime `test_net_result`
  +11 tests / 48 asserts totales (loopback TCP/UDP real,
  `make_loopback_pair`/`make_udp_socket_bound`).
- Tests E5.2b: regression +test-376-try-net-lines (397 archivos); runtime
  `test_net_result` 48→**99 asserts** totales (línea vacía real vs EOF
  distinguidos, read_exact feliz y cortado, getpeername, resolve_ptr
  inválido, shutdown+set_timeout, EOF real cerrando el peer, fragmento sin
  `\n` descartado).

### Semánticas contractuales (decididas en el plan, auditadas en review)
- `try_tcp_accept`: BLOQUEA hasta que llegue una conexión — semántica
  normal de `accept(2)`, sin timeout.
- `try_tcp_read`: `Ok("")` = EOF limpio (el peer cerró) — NO es error.
  Con la conexión abierta, pedir `max` mayor a lo disponible BLOQUEA
  (loopea `recv()` hasta juntar `max` bytes exactos, sin short-read).
- `try_tcp_write`: `Ok(bytes)` reales (nunca un placeholder); short-write
  con fallo a mitad de camino reporta los bytes ya escritos (criterio
  POSIX `write(2)`), no un Err que perdería esa información.
- `try_udp_sendto`: `host` debe ser IP numérica (mismo guard `inet_pton`
  que el trío E5.1 — no resuelve DNS).
- `try_udp_recvfrom`: mismo contrato Ok/Err que `try_tcp_read`, pero UN
  SOLO `recvfrom()` — nunca loopea hasta `max`, devuelve el datagrama que
  llegue. El remitente no viaja en el resultado (ficha futura).
- `try_resolve`: mapea `EAI_*` a kinds propios vía `err_new` explícito —
  `not_found` (code 113, EAI_NONAME/EAI_NODATA/resto) y `timeout` (code
  110, EAI_AGAIN) — sin tocar `errno_to_kind` (el trío E5.1 sigue viendo
  113 → `"io"` en su propio contexto).
- **La asimetría EOF (E5.2b, EL gotcha de este arco)**: `try_tcp_read`/
  `try_tcp_read_partial` devuelven `Ok("")` en EOF — un `""` de bytes
  crudos nunca es ambiguo. `try_tcp_read_line`/`try_tcp_read_exact`
  devuelven `Err{code:0, kind:"eof"}` en EOF, NO `Ok("")` — ahí `Ok("")`
  YA significa algo real (una línea vacía real, o `n<=0`), y reusarlo para
  EOF haría indistinguibles "terminador de headers HTTP" de "conexión
  cortada" — exactamente el bug que `try_tcp_read_line` existe para
  prevenir (precedente `io.EOF` de Go). `try_tcp_read_line` es la forma
  CANÓNICA de leer una línea en código nuevo: la centinela vieja
  `tcp_read_line` (con su `""` ambiguo entre línea vacía y EOF) queda
  legacy, solo por compatibilidad hacia atrás.
- `try_tcp_read_exact`: éxito = EXACTAMENTE `n` bytes; si el peer cierra
  antes, los bytes parciales se DESCARTAN (`Err{0,"eof"}`, no un `Ok`
  truncado) — mismo criterio que el fragmento sin `\n` de read_line.
- `try_tcp_shutdown`: `mode` 0=SHUT_RD, 1=SHUT_WR, cualquier otro valor
  (MEDIDO) cae a SHUT_RDWR. `try_tcp_set_timeout`: segundos enteros
  (SO_RCVTIMEO+SO_SNDTIMEO), 0 o negativo = sin timeout.
- `try_resolve_ptr`: mismo patrón de kinds no-estándar que `try_resolve`
  — code 113 (sin PTR) → `"not_found"` vía `err_new` explícito; IP
  inválida → code 22 (EINVAL) → `"invalid"` vía `errno_to_kind` normal.

### Scope
- Las 16 funciones de la spec §4.2.2 de `std/net` (trío E5.1
  connect/listen/bind + 6 de E/S y resolución de E5.2 + 7 restantes de
  E5.2b) tienen su hermana `try_` — familia `std/net` CERRADA. Próximo
  módulo del arco E5, por orden de la spec §4.2: `http` (E5.3).

---

## [0.29.0] — 2026-08-14 — E5.1: `std/net` — la familia try_ de conexión/bind

> MINOR autorizado explícitamente por Ottavio (2026-08-14, «sigue 1 luego 2»).

> Candidato a release futuro — rama `feat/e5-net-try` sobre `main` v0.28.0,
> sin mergear. `VERSION` sin tocar, sin tag.

### Added
- **`nyx_tcp_connect_result`/`nyx_tcp_listen_result`/`nyx_udp_bind_result`**
  (runtime): mismo mecanismo que las centinelas `tcp_connect`/`tcp_listen`/
  `udp_bind` (getaddrinfo/socket/connect/bind/listen), pero sin stderr y
  devolviendo `-errno` en vez de abortar — el errno real llega al llamador.
- **`std/net.nx`** (módulo nuevo): `try_tcp_connect(host, port)` /
  `try_tcp_listen(host, port)` / `try_udp_bind(host, port)`, las tres
  `-> Result<int, Error>` — las primeras hermanas Result-returning de red,
  conviven con las centinelas viejas (`tcp_connect`/`tcp_listen`/
  `tcp_close`/`udp_bind`, builtins intactos).
- **Kind `"in_use"`** en el vocabulario cerrado de `std/error.nx`
  (EADDRINUSE, 98) — sin este kind, un listen duplicado caía en `"io"`
  genérico, indistinguible de cualquier otro fallo de bind/listen.
- Tests: regression +test-374-try-net; runtime `test_net_result`
  (14 asserts, `tests/runtime-unit/test_net_result.c`).

### Scope
- Piloto deliberadamente CHICO (mismo criterio que E4/file): solo el trío
  que abre un socket y devuelve el fd, donde errno más importa
  (ECONNREFUSED, EADDRINUSE, ETIMEDOUT, EACCES). Las familias
  accept/read/write/sendto/recvfrom/resolve quedan para E5.2 (fichado en
  `TASKS.md`, cosecha `[arco:E5-net]`) — `accept` en particular tiene
  semántica distinta (bloquea en vez de fallar con errno), no es un
  simple espejo del trío.

---

## [0.28.0] — 2026-08-14 — E4: piloto de errores tipados de E/S (`std/error` + `std/fs`)

> MINOR autorizado explícitamente por Ottavio (2026-08-14, segundo de la
> sesión — autorización del dueño de la política).

**Candidato MINOR v0.28.0 — decisión de release PENDIENTE de Ottavio** (política:
1 MINOR por sesión, v0.27.0 ya salió). Rama `feat/e4-std-error-file`, sin
mergear a `main`. `VERSION` sin tocar, sin tag.

### Added
- **`std/error.nx`**: `Error { code, kind, msg }` — UN solo shape para toda
  fn falible de la stdlib, con `Result<T, Error>` como firma estándar
  (`Option<T>` queda para ausencia-sin-causa). `err_new`/`errno_to_kind`/
  `error_to_string`; `kind` usa vocabulario CERRADO v1 de 8 valores
  (`not_found`, `permission`, `connection`, `parse`, `timeout`, `io`,
  `invalid`, `oom`).
- **`nyx_file_read_result`/`nyx_file_write_result`** (runtime): E/S con
  errno real, binary-safe, nunca abortan el proceso.
- **`std/fs.nx`**: `try_read_file(path) -> Result<String, Error>` /
  `try_write_file(path, content) -> Result<int, Error>` — las primeras
  hermanas Result-returning de I/O, conviven con la centinela vieja
  (`read_file`/`write_file` de `std/file.nx`, intacta).
- Receta `examples/by-example/101-file-errors-two-tier.nx` (la regla de
  dos niveles: `Result` cuando el caller reacciona, panic cuando morir es
  correcto) + sección nueva en `LLM.md` (§2 y §5.3).
- Tests: regression +test-372-std-error, +test-373-try-file; runtime
  `test_file_result` (15 asserts).

### Hallazgo (no bloqueante, catalogado)
- `std/prelude.nx` es una copia física congelada de `std/file`/`math`/
  `io`/`array`/`map` (desde v0.12.0), pre-registrada como "ya importada"
  para todo programa — `import "std/file"` es un no-op para cualquier
  función agregada a ese archivo después de esa foto. Por eso las
  hermanas `try_*` viven en `std/fs.nx` (módulo nuevo), no en
  `std/file.nx`. Detalle de los 4 caminos explorados y la recomendación:
  `TASKS.md`, ficha `[arco:E4-std-error]`.

---

## [0.27.0] — 2026-08-13 — Errores tipados E1+E2: Result<T,E> real de punta a punta

**MINOR autorizado por Ottavio (2026-08-13).** Cambio de
política incluido: NYX1023 (el `?` exige fn que devuelva Result o un enum
declarado del usuario) convierte en error programas que antes compilaban mal.

### Added
- **NYX1023**: el operador `?` fuera de una fn que devuelve `Result` es error
  bilingüe con hint; enums declarados del usuario reciben free pass VISIBLE
  (`NYX_STRICT=warn`). **NYX2012**: variante de enum irresoluble en `match`
  es diagnóstico bilingüe (antes: panic del runtime de Maps del compilador).
- Tests de regresión 355-365 y 367-371 (+16 netos) cubriendo payload struct,
  clases de payload en `?`, familia unwrap, bindings de match/while-let,
  convivencia de instanciaciones, defer en el camino Err, tuplas degradadas,
  sujetos no-identifier y aridad de la mono implícita.

### Fixed
- **`Result<Struct,E>`/`Option<Struct>` end-to-end**: construcción boxea por
  `coerce_to_i64` (GC-safe medido) y TODA extracción decodifica por
  `decode_payload`, inverso exacto del encoder con whitelist por clase —
  `?`, `unwrap`/`unwrap_or`/`unwrap_err`, los 4 sitios de binding de
  match/while-let. Antes: link error o corrupción silenciosa.
- El binding de `match` COPIA el payload (mutarlo ya no escribe dentro del
  enum); `while let` con payload struct ya no segfaultea.
- `monomorphize_enum` ya no registra tipos bajo la clave base global
  (último-escritor-gana): dos instanciaciones de `Result` conviven y el
  resultado no depende del orden de monomorfización.
- Inferencia de sujeto compartida (`infer_enum_subject_type`): `match f()`,
  `while let Option.Some(x) = f()` y `x.metodo()?` resuelven el tipo real
  (antes: puntero impreso como número, exit 0).
- El constructor coerciona a la clase DECLARADA del slot (`Result<float,E>`
  con `Ok(3)` da `3.0`, no bits); el camino Err del `?` pasa por
  `defer_cleanup` (defer y drop de `#[affine]` corren en el early-return) y
  una fn sin anotación con `defer`+`?` vuelve a ser error ruidoso.
- La mono implícita respeta la aridad del template (fin del crash "Índice 1
  fuera de rango" del compilador); payload tupla degrada a i64 seguro en vez
  de romper el IR.

### Notas
- 16 residuos catalogados con causa raíz en TASKS.md
  (`[arco:errores-tipados-E1E2]`); los preexistentes D2/D3 del review
  original siguen abiertos a propósito (gated por decisiones E7/spec).
- Fixed point global byte-idéntico (6 módulos); suites completas verdes.

## [0.26.0] — 2026-08-12 — S4: stacks de goroutine con guard page (Track 5c inc.1)

Cierre de la campaña multi-arco. Spec deliberada con Ottavio
(`docs/design/specs/2026-08-11-stacks-growables-design.md`).

### Arreglado
- **Un overflow de stack de goroutine ya no corrompe memoria en silencio**:
  los stacks pasan de `malloc(64KB)` fijo SIN detección a `mmap` RW con
  **guard multi-página** (16 páginas `PROT_NONE`, coste RSS cero). Tocarla
  reporta `[nyx] goroutine stack overflow — subí NYX_GOROUTINE_STACK_KB
  (actual: N KB)` y sale con 1; antes era un SIGSEGV mudo (exit 139) o,
  peor, escritura silenciosa sobre el mapeo vecino. test-354 + check en
  errors.
- **`signal_reset`/`signal_ignore` rechazan las señales síncronas** (agujero
  adyacente hallado en el review): `signal_ignore(11)` ponía SIG_IGN en
  SIGSEGV — UB con bucle infinito de faults.

### Cambiado
- **Default de stack 64KB → 256KB**, tuneable con `NYX_GOROUTINE_STACK_KB`
  (clamp [64, 8192] KB CON aviso — antes un valor fuera de rango se
  ignoraba en silencio).
- **Pool de stacks reciclados**: el A/B mostró que mmap+mprotect+munmap
  costaba 1.8× en spawn (58→103 ms/4000 spawns) y que el costo era 100%
  syscalls (idéntico con 64KB y con 1024KB). Con el pool el spawn vuelve a
  52-58 ms: **4× de headroom y detección de overflow a costo cero**.

### Alcance honesto
La detección cubre stacks de GOROUTINE. Una recursión infinita en el thread
principal sigue muriendo con SIGSEGV mudo (sin regresión, pero sin cubrir).
El crecimiento on-demand real (PROT_NONE + commit en el fault) NO entra: el
escaneo conservador de Boehm sobre rangos no comiteados es un crux que
exige spike propio — incremento 2, catalogado.

Gates: regression 375/375, errors 252/252, m08 18/18, ai-first, unit 21/21,
stacks 6/6, integración (incl. serve+kv real), WASM 23/23.

## [0.25.0] — 2026-08-12 — S3: las funciones resuelven POR MÓDULO

MINOR de la campaña multi-arco (spec:
`docs/design/specs/2026-08-11-namespacing-modulos-spec.md`).
Autorizado por Ottavio: "resolver por módulo".

### Arreglado (silently-wrong, dos reportes)
- **La llamada calificada ejecutaba la función de OTRO módulo**: con dos
  módulos exportando `set`, `moda.set(2, 99)` corría `modb.set()` — el
  prefijo se ignoraba al resolver, ganaba la última definición y ni la
  aridad frenaba. En el proyecto real del reporte (raycaster):
  `render.px(x,y,c)` vs `player.px()` → todas las escrituras de píxel
  no-ops, pantalla negra SIN error. test-353.
- Las fns de módulo se emiten como `<path>__<fn>`; el archivo principal y
  el prelude conservan nombres pelados (programas de un archivo: cero
  cambio de IR). Espeja el mecanismo A2 de globales homónimas.
- **Inferencia por alias** (TASKS.md:880): `let x = alias.fn()` sin
  anotación ya infiere el tipo de retorno real (antes caía a i64 y el
  concat corrompía).

### Agregado
- **NYX2010**: llamada NO calificada ambigua entre dos módulos importados
  → error nombrando ambos y sugiriendo la forma calificada (antes: se
  resolvía en silencio a la última definición).
- **NYX2011**: template genérico ausente en `generic_call` → error con
  contexto en vez del panic crudo del Map.

### Notas
- `pub` sigue siendo cosmético: este arco cambió CÓMO se resuelven los
  nombres, no qué es visible (enforcement de privacidad = arco futuro).
- La prueba de fuego fueron los propios consumidores: el canario de
  stacks y las suites cazaron tres caminos que el diseño inicial no
  cubría (genéricos de módulo, imports con llaves sin alias, y las fns
  del pipeline bajo NYX_INLINE_COMPILER).

## [0.24.32] — 2026-08-11 — S2 de la campaña multi-arco: señales allocation-safe

### Cambiado
- **Signal handlers vía self-pipe**: el closure de `signal_handle` corre
  en un thread drenador dedicado (contexto normal — **puede alocar,
  printear, leer env**); el trampolín de señal es async-signal-safe puro
  (un write de 1 byte). Señales síncronas (SEGV/BUS/FPE/ILL) rechazadas
  con warning (reservadas para el arco de stacks). test-352.
- **Semántica**: el closure corre en OTRO thread y la entrega es
  asíncrona. Regla para consumidores (aprendida del E2E, que refutó la
  spec inicial): para despertar a otro thread bloqueado en I/O usar
  `tcp_shutdown(fd, 2)`, NO `tcp_close` — en Linux close() de otro
  thread no despierta un accept() bloqueado. serve y edit migrados
  (63/63 y 41/41).

## [0.24.31] — 2026-08-11 — S1 de la campaña multi-arco: literales binary-safe

Primera sesión de la campaña multi-arco (plan
`docs/design/plans/2026-08-11-campana-namespacing-stacks-escapes-signals.md`,
orquestada con agentes de exploración + diseño + review).

### Arreglado
- **Literales con NUL embebido**: `"a\0b"` emitía el byte crudo → IR
  inválido; y el interning (strlen) habría truncado a length 1 en
  silencio. escape_string con tabla completa (\XX para <0x20, `"`, `\`,
  DEL) + `nyx_intern_ptr` length-aware en los 3 sitios cstr-based.
  El patrón de match con NUL también es binary-safe ahora. test-350.
- **Nombres de test escapados en el runner**: `test "con \"comillas\""`
  o UTF-8 rompían el .ll del runner (texto de usuario interpolado
  crudo). E2E verificado.

### Agregado
- **`request_with(method, path)`** en std/web: requests sintéticos para
  tests de handlers en una línea (fricción ERP; request_new era
  0-args). test-351.
- **Spec de errores tipados** (S∥, agente redactor):
  `docs/design/specs/2026-08-11-errores-tipados-design.md` —
  recomendación híbrido Result+panic; PENDIENTE de review de Ottavio,
  nada se implementa sin su OK.

Review de agente aplicado (3 sitios unificados a str_byte_length).
Refutado por evidencia: `\r` crudo y el global no-ASCII ya compilaban.
Gates: regression 372/372, errors 250, m08 18, ai-first, unit 21,
stacks 6/6, fixed point global ×2.

## [0.24.30] — 2026-08-11 — cierre de la campaña del inbox: float×entero + vet/fmt instalados

Cierre de la campaña de fricciones (Tandas D-E + un reporte nuevo que
llegó post-triage, 20260810-220013).

### Arreglado
- **float×entero en binops promueve con sitofp**: `vel() * 10` (literal
  entero) pasaba el check y emitía `fmul double %x, 10` — IR inválido
  que moría en clang sin file:line; mismo bug en ambas posiciones, con
  variables int, y en comparaciones mixtas (`vel() > 2`). Normalización
  única pre-dispatch en codegen_binop. test-349.
- **`nyx vet` y `nyx fmt` se construyen e instalan** (extensión de C4
  por el reporte nuevo): seeds compiler/vet.ll (nuevo) y fmt.ll;
  install.sh + nyx update + install-local cablean los tres tools.

### Docs (Tanda D)
- LLM.md: contrato empírico de `std/sqlite` (celdas String incluidas
  INTEGER, query_named N+1 con headers, params String, NULL → "NULL"),
  handles de concurrencia como Map opaco (NOT int!), y
  term_write/term_flush como vía MT con flush. El ítem "campos Map
  necesitan binding tipado" quedó OBSOLETO: req.ctx.insert(...) ya
  compila y corre (verificado — el gap de v0.24.25 se cerró por trabajo
  intermedio).

### Catalogado (Tanda E, TASKS.md)
- Namespacing/privacidad de módulos — gravedad SUBIDA: la llamada
  calificada `moda.set()` ejecuta la homónima de OTRO módulo
  (silently-wrong, reporte raycaster). request_new(method, path).
  Signal handler allocation-safe (self-pipe). Literal `"\0"` → IR
  inválido. serve_app → -1 en bind fallido (repo serve).

Los 6 reportes del inbox de fricción quedaron respondidos en el archivo
y archivados a resolved/. Gates: regression 370/370 (121 comparadas),
errors 250/250, m08 18/18, ai-first verde, unit 21/21, stacks 6/6,
fixed point global ×2.

## [0.24.29] — 2026-08-11 — Tanda C del inbox ERP: el ciclo de test funciona

Cuatro fricciones P2 del triage (baratas, alto impacto AI-first). Dos de
los diagnósticos de los reportes eran incorrectos y se corrigieron con
evidencia.

### Arreglado
- **`nyx test` mentía tres veces** (el reporte decía una): el volcado de
  stdout estaba invertido (mostraba el de los que PASAN, nunca el de los
  que FALLAN), los errores de compilación iban a /dev/null (FAIL sin
  explicación), y un archivo caído daba "ALL TESTS PASSED" + exit 0 (CI
  verde con la suite rota). Los tres cerrados.
- **`assert(a == b)` dice "expected X, got Y" + línea**:
  `nyx_assert_eq_int/_str` eran código muerto desde siempre; conectadas
  con decisión POR AST (inferencia conservadora, camino genérico
  intacto) y el mensaje default lleva "assert @ line N". `eq_str` pasó
  de strcmp a longitud+memcmp (binary-safe). test-348 + check en errors.
- **`nyx check` se construye e instala** (install.sh + nyx update +
  install-local): AGENTS.md lo promociona como paso 5 y el binario nunca
  se construía — mismo bug y misma solución que tuvo `nyx test`.

### Aclarado con medición
- **"print no es line-atomic" REFUTADO**: la fn citada
  (nyx_print_hstring) es código muerto; el camino real es un solo
  printf("%s\n") y el stress MT dio 4000/4000 líneas intactas. La fn
  muerta quedó single-write igual. Lo real del reporte: print no
  flushea — term_write+term_flush es la vía MT con flush (docs en D).

Colateral descubierto (catalogado, pendiente): el literal `"\0"` emite
el NUL crudo en la constante del .ll → IR inválido.

Gates por commit: regression 368→369 (120 comparadas), errors 249→250,
m08 18/18, ai-first verde, unit 21/21, stacks 6/6, fixed point global
×2 (seeds regenerados dos veces en C2: la 1ª ronda llevaba un fast path
con 3 defectos que el propio gate cazó).

## [0.24.28] — 2026-08-11 — Tanda B del inbox ERP: compila, o decí por qué

Cuatro fricciones P1 (IR inválido / lexer descarrilado) del mismo triage.

### Arreglado
- **Handle de builtin capturado en closure → IR inválido**: `mutex_new()`
  capturado por un closure tipaba el campo del SharedEnv como i64 con el
  registro real i8*. `pre_scan_closure_env` gana el fallback de handles y
  `builtin_fn_ret` los declara como `Map` opaco — el `*int` que el plan
  proponía fue REFUTADO por la evidencia (std/sync tipa `mutex: Map //
  handle (opaque)` y Map baja a i8*, el tipo real). Anotar
  `let m: int = mutex_new()` ahora es NYX1003. test-345.
- **`datetime_*` sin diagnóstico**: la familia entera entró a
  `builtin_fn_ret` con sus tipos reales — `let now: int = datetime_now()`
  (lo que el SPEC viejo enseñaba) es NYX1003 en vez de checker mudo → IR
  inválido. test-datetime-now-int-annotation (errors 249).
- **`get_or` sobre campo de struct** (DOS reportes): existía solo en el
  cluster de receptor variable; ahora ambos clusters comparten
  `emit_map_get_or` — la duplicación de clusters causó el gap. test-346.
- **`\"` dentro de `${...}` descarrilaba el lexer**: el `\` caía al
  fallback mudo del dispatcher ("String sin cerrar" sin ubicación, o 15
  NYX0101 en cascada lejos del problema). Un string abierto con `\"`
  dentro de una interpolación ahora se cierra con `\"`; la comilla pelada
  sigue igual. test-347.

Gates por commit: regression 366→368, errors 248→249, m08 18/18,
ai-first verde, unit 21/21, stacks 6/6, fixed point ×2 por módulo tocado
(semantic, codegen, lexer) byte-idéntico.

## [0.24.27] — 2026-08-11 — Tanda A del inbox ERP: no corrompas datos

Tres fricciones P0 del reporte real de un ERP greenfield (triage en
`docs/design/plans/2026-08-10-plan-fricciones-erp.md`).

### Arreglado
- **Globales/const sin store → 0 mudo**: `__nyx_init_globals` solo emitía
  store para 4 formas (call/method_call/array/string) — `const NEG = -1`
  (unop), binop, char, cast y var/let globales quedaban en su
  zeroinitializer EN SILENCIO. Ahora todo global no-literal emite store, y
  una forma no emitible al arranque aborta con NYX2009 nombrando la
  constante (nunca más un 0 mudo). test-342.
- **`Map.get` de clave ausente es capturable**: antes `exit(1)` directo —
  un servidor moría porque una request no traía una cookie y el try/catch
  no podía hacer nada. Los tres gets (genérico/str/int) pasan por
  `nyx_panic` → throw capturable con try activo; sin try, mismo contrato
  de siempre (mensaje con hint de `get_or` + exit 1). test-343.

### Agregado
- **`datetime_format_epoch(epoch, fmt)`**: la format de 2 args que el SPEC
  prometía y no existía. Hallazgo colateral del triage (nadie lo reportó):
  `datetime_format(fmt)` IGNORA el instante — siempre formatea `time(NULL)`
  — y quedó documentada como lo que hace ("formatea AHORA"). SPEC §DateTime
  reescrito contra el runtime real. test-344.

Gates por commit: regression 363→365 (116 comparadas), errors 248/248,
m08 18/18, ai-first verde, unit 21/21, stacks 6/6, fixed point global
byte-idéntico (seeds .ll regenerados: el declare nuevo aparece en todo
programa generado).

## [0.24.26] — 2026-08-10 — App.access_log en std/web

### Agregado
- **`std/web` gana `App.access_log` + `app_access_log(&mut app)`**: flag
  booleano en `App` (default `false`) para habilitar el access-log built-in
  de nyx-serve v0.6.0. test-341-access-log-field fija el contrato del campo
  y del setter.

Gates: test-341 PASS, test-runtime 19/20 (test_tls flake catalogado).

## [0.24.25] — 2026-08-10 — Request.ctx + request_new en std/web

### Agregado
- **`std/web` gana `Request.ctx`**: estado por-request (referencia compartida
  entre copias del struct — mutar `req.ctx` en un middleware es visible en el
  handler y en middlewares posteriores). `request_new()` construye un `Request`
  con campos vacíos (ctx incluido) para tests y helpers que arman requests
  sintéticos. test-340-request-ctx fija el contrato de referencia compartida;
  los 4 `fake_req` de la suite (test-290, test-334, test-338, test-339) migrados
  a `request_new()`.

Gates: 361/361, test-runtime 20/20. Fixed point ×2.

## [0.24.24] — 2026-08-09 — Router montable + contrato wrap en std/web

### Agregado
- **`std/web` gana vocabulario Router/Mount**: struct `Router` (routes/middlewares/
  wraps) + `Mount`, `App` gana `wraps`/`mounts`, registro `router_*`/`app_wrap`/
  `app_mount` (todo push por valor — los Arrays son referencias). Contrato wrap:
  `Fn(Request, Fn) -> Response` con `next: Fn(Request) -> Response`. Vocabulario
  del bloqueador 2 de nyx-serve (router montable + middleware con `next()`).
  test-338-router-vocabulary + test-339-wrap-next-closure, este último fija el
  patrón next-como-closure (captura array+int+Fn en SharedEnv + recursión vía fn
  de módulo).

Gates: 360/360, test-runtime 20/20 (re-run; el fallo del primer run fue el flake
catalogado test_tls_large_write). Fixed point ×2.

## [0.24.23] — 2026-08-07 — Un `Fn` pelado ya puede devolver structs

### Corregido
- **`let f: Fn = fn_que_devuelve_struct` + llamada indirecta era SEGV**: el emisor de
  llamada saca el retorno de la anotación `Fn(...) -> T`; con `Fn` pelado asumía `i64`
  y el consumidor hacía `inttoptr` sobre un struct devuelto POR VALOR. Ahora el slot se
  REFINA con la firma real de la función asignada. (El diagnóstico original culpaba al
  argumento struct — el bisect mostró que ese caso siempre funcionó: era el retorno.)
  test-337 con las 3 formas, incluido el control de no-regresión.

Gates: 358/358 (109 comparadas, 0 conocidos), errors 248/0. Fixed point ×2.

## [0.24.22] — 2026-08-06 — Red introspectable: reverse DNS + interfaces

### Agregado
- **`resolve_ptr(ip) -> String`**: reverse DNS (hostname de una IPv4; "" si no hay
  PTR o la IP es inválida — NI_NAMEREQD evita el falso nombre).
- **`net_interfaces() -> Array`**: interfaces IPv4 locales como tripletas planas
  `[nombre, ip, máscara, ...]` (stride 3) — autodetectar la red a escanear sin
  `exec("ip addr")`.

Con esto el reporte de fricción de red queda 6/6: EOF de stdin (v0.24.21), reverse
DNS e interfaces (hoy), introspección TLS (ya existía), connect-timeout y
udp-binary-safe (catalogadas). test-336 con invariantes deterministas.

Gates: 357/357, errors 248/0. Fixed point gen2==gen3.

## [0.24.21] — 2026-08-06 — stdin_eof(): los servidores stdio terminan limpio

### Agregado
- **`stdin_eof() -> bool`**: la señal INEQUÍVOCA de fin de stdin (fricción del
  servidor MCP — el sentinel `":EOF:"` de read_line es ambiguo con una línea
  literal). Patrón: leer, después preguntar. E2E con pipe real en la suite de
  errores; LLM.md enseña ambas vías.

Gates: 356/356, errors 248/0, ai-first, stacks. Fixed point gen2==gen3.

## [0.24.20] — 2026-08-06 — try/catch cuenta como retorno

### Corregido
- **NYX1008 reconoce try/catch exhaustivo**: una función que termina en
  `try { return X } catch(e) { return Y }` ya no exige un `return` inalcanzable
  (fricción del dispatcher de serve, reportada y arreglada el mismo día). Un `throw`
  que escapa del try no rompe la exhaustividad. try-sin-return sigue siendo NYX1008
  (check doble en errors). test-335 cubre el patrón real con throw condicional.

Gates: 356/356 (107 comparadas, 0 conocidos), errors 247/0. Fixed point ×2.

## [0.24.19] — 2026-08-06 — Ronda de fricción: serve v0.4.0 destrabado

Los 2 reportes del inbox procesados de punta a punta.

### Corregido (reporte de nyx-serve — sus DOS bloqueadores)
- **try-stack thread-local**: `__nyx_try_depth`/`__nyx_try_stack`/`__nyx_exception_msg`
  eran globals compartidos — con threads concurrentes un throw podía saltar al jmp_buf
  de OTRO thread (UB reproducido). `_Thread_local` los tres; test-333 (4 threads ×
  1000 try/throw/catch) + runtime C 20/20. LIMITACIÓN documentada: un try no debe
  cruzar un yield de goroutine (el scheduler es work-stealing).
- **std/web: error handlers registrables**: `App.not_found_handler`/`error_handler`
  con defaults reales desde `app_new` (el 500 NO ecoa el mensaje interno al cliente) +
  `app_not_found`/`app_error`. El TEST refutó la premisa del plan dos veces: el
  registro es **`&mut App`** (un campo escalar vía parámetro por valor muta la copia —
  y de paso `serve_static` de nyx-serve está rota en silencio, ficha para su repo) y
  los handlers se leen con **anotación tipada** `Fn(Request) -> Response` (el `Fn`
  pelado con arg struct SEGVea — gap catalogado).

### Documentado (reporte anónimo — servidor MCP stdio)
- **El contrato EOF de `read_line()`**: devuelve el sentinel `":EOF:"` (legacy
  load-bearing) — estaba sin documentar y el reporte loopeaba infinito. LLM.md lo
  documenta con el caveat de ambigüedad y la alternativa binary-safe (`read_byte()<0`).
  Fichas nuevas: `stdin_eof()` builtin, reverse DNS, enumeración de interfaces.
  La introspección TLS que pedía YA EXISTE (el reporte venía de v0.24.6).

Gates: 355/355 (106 comparadas, 0 conocidos), errors 246/0, ai-first, stacks.

## [0.24.18] — 2026-08-06 — ty_eq estricto: el arco gradual CIERRA

La última ficha del arco "la anotación manda" (v0.24.9 → v0.24.18, diez releases).

### Agregado
- **ty_eq estricto v1** — dientes quirúrgicos donde la anotación es inequívoca, sin
  tocar el ty_eq global (la lección de julio): `let f: Fn = "texto"` es NYX1003
  (antes mudo, explotaba al llamar; int sigue permitido — slot nulo y fn pointers) y
  `let c: dyn Trait = 42` es NYX1012 accionable (los traits no se implementan sobre
  primitivos; el mensaje sugiere el wrapper). 2 checks con controles negativos
  (errors 246/0).

### El arco completo, en una línea por release
dispatch honesto en 3 capas → la anotación manda (structs cortos, mono on-demand,
match float) → tag estático de fallback (NYX2008) → ceguera visible (NYX_STRICT) →
runtime que no mata (get_or, decompress) → iteradores que tipan (-53%) → heurística
por-nombre muerta con medición → un solo motor de unificación → ty_eq estricto.

Gates: 354/354, errors 246/0, m08, ai-first, stacks. Fixed point ×2.

## [0.24.17] — 2026-08-05 — Un solo motor de unificación

Arco gradual, migración unify→por-id 2/2 — COMPLETA.

### Cambiado
- Los 2 sitios VALIDANTES (args de llamada genérica y de métodos de impl) migran al
  motor por-id. `uv_pairs` proyecta la subst de TyVars a los pares legacy: mensajes
  NYX1005 con bindings acumulados y bounds NYX1020 **byte-idénticos** (verificados
  contra los tests autoritativos). El `unify` string-based queda con CERO call-sites
  en el checker — el motor real de v0.19.0 (TyVar + occurs-check) es el único camino.

Fixed point ×2. Gates: 354/354 (105 comparadas, 0 conocidos), errors 244/0, m08,
ai-first, stacks.

## [0.24.16] — 2026-08-05 — El motor por-id absorbe la unificación de inferencia

Arco gradual, incremento de migración unify→por-id (1 de 2).

### Cambiado
- Los 3 sitios de REPLAY de `ty_of_expr` (fn genérica libre, método de struct, método
  de enum) migran del `unify` string-based legacy al **motor por-id real** de v0.19.0
  (TyVar + occurs-check) vía el helper `replay_ret_by_id` — con residuo
  legacy-equivalente (params sin bindear vuelven como TyGeneric; ningún TyVar se
  filtra). De 5 call-sites legacy quedan 2 (los validantes, que gatean NYX1005 —
  incremento final con mensajes idénticos, ficha [~]).

Fixed point ×2. Gates: 354/354 (105 comparadas, 0 conocidos), errors 244/0, m08,
ai-first, stacks.

## [0.24.15] — 2026-08-05 — Renombrar una variable ya no cambia tu programa

Sesión C del arco gradual: retiro MEDIDO de la última adivinanza léxica.

### Corregido
- **Las heurísticas por NOMBRE de variable de `nyx_type_to_llvm_for_env` fueron
  RETIRADAS**: una variable llamada `tokens` en un closure se tipaba `Array` por el
  nombre; llamarla `toks` cambiaba el programa. Medición previa (patrón v0.22.14):
  660 archivos + los 10 módulos del compilador → UN hit legítimo (`var done = false`
  del lexer), con control positivo del instrumento verificado antes de confiar en los
  ceros. La inferencia A9 del pre-scan de closures aprendió LITERALES (bool/int/float/
  String) — el único usuario real quedó cubierto por inferencia, y
  `SharedEnv_tokenize` es byte-idéntico como prueba de equivalencia.

### Mantenimiento
- Los 10 seeds `.ll` refrescados coherentemente (arrastraban declares stale de varios
  releases — la clase de drift que ya mordió con fmt.ll) + binarios derivados
  reconstruidos.

Fixed point ×2. Gates: 354/354 (105 comparadas, 0 conocidos), errors 244/0, m08,
ai-first, repl, stacks.

## [0.24.14] — 2026-08-05 — Los iteradores tipan: -53% de ceguera gradual

Sesión B del plan post-auditoría — la palanca MEDIDA del dato NYX_STRICT.

### Agregado
- **La cadena de iteradores TIPA end-to-end**: `iter()` sobre `Array<T>` da
  `Iterator[T]`; `filter`/`take`/`skip`/`chain` preservan el elemento; `map(f)` con f
  de firma registrada da `Iterator[ret(f)]`; `collect()` da `Array<T>`. Y muerde:
  `let s: String = nums.iter().map(doble).collect()` es NYX1003 «expected String, got
  Array<int>» donde antes compilaba mudo (test en errors).
- **Firmas de retorno de builtins**: `int_to_string`/`string_to_int`/`read_file`/etc.
  ya no dan TyUnknown (envenenaban cada binop que los consumía).
- **Refinamiento de anotación `Array` pelada** cuando el valor es una cadena de método.

### MÉTRICA (100 recetas by-example, NYX_STRICT=warn)
- **482 → 226 chequeos salteados (-53%)**; archivos afectados 60 → 51; el peor
  (29-iterator-map-filter) **24 → 0**.

### La lección que el gate cazó (documentada en la spec)
- La 1ª versión del refinamiento aceptaba array literales → 20 tests rojos: el patrón
  de arrays etiquetados (`["bool", v]` de std/json) se infiere `Array<String>` por
  PRIMER elemento → NYX1005 espurio en cada push. Tercera aparición del principio:
  **la inferencia por primer elemento NUNCA endurece chequeos**. Restringido a
  method_call. (Y el comparador de salidas cazó mi propio expected/ con la aritmética
  mal — la red funciona en ambas direcciones.)

Residuo catalogado: next()/for-in sobre Iterator, lambdas inline en map/filter,
colisión de nombre con struct `Iterator` de usuario. Fixed point ×2. Gates: 354/354
(105 comparadas, 0 conocidos), errors 244/0, m08, ai-first, stacks.

## [0.24.13] — 2026-08-05 — El runtime no te mata: decompress resucita y Map.get gana salida segura

Sesión A del plan post-auditoría — los dos P1 de runtime para código de usuario.

### Corregido
- **`decompress()` devolvía `""` SIEMPRE** (sp3-bug-1, desde su creación): la llamada
  interna de zlib a `inflate` resolvía contra la `pub fn inflate` de std/compress
  (colisión de símbolos ELF). Ahora delega en el camino streaming con dlopen (patrón
  D1), inmune a la colisión. `test-169-compress` volvió a verde SOLO — como promete el
  mecanismo — y **KNOWN_OUTPUT_FAILURES queda VACÍO por primera vez** (352/352, 103
  salidas comparadas, 0 fallos conocidos). El fix de raíz (mangle de `pub fn`) sigue
  catalogado.

### Agregado
- **`Map.get_or(k, default)`**: la lectura SEGURA — clave ausente (o Map NULL)
  devuelve el default en vez de matar el proceso. Runtime (str/int) + dispatch de
  codegen (selección por tipo del default) + catálogo de semantic + test-331. El
  abort de `get` ahora nombra la clave Y sugiere `contains`/`get_or` (check con
  ejecución real en errors → 243). Alcance v1: receptor variable; campo catalogado.

Fixed point gen2==gen3 en codegen y semantic. Gates completos verdes.

## [0.24.12] — 2026-08-05 — La verdad de los docs: auditoría integral

Auditoría de todo el proyecto (3 agentes: fichas-vs-código, coherencia documental,
higiene) + primera cosecha real de NYX_STRICT=warn.

### El dato del eje IA
- **60/100 recetas by-example tienen puntos ciegos del gradual** (482 chequeos
  salteados; las peores son cadenas de iteradores) y el código de producción
  disciplinado da 0 → la palanca es inferencia de elemento en iteradores/closures,
  NO endurecer gates. Ahora encabeza TASKS.md como prioridad medida.

### Corregido (docs — 21 contradicciones)
- LLM.md declaraba v0.21.0; CHANGELOG "current v0.22.0"; ROADMAP/VERSIONING/SPEC/
  COMPARISON pineaban v0.16-v0.20 — la versión ya NO vive en ningún doc (puntero a
  VERSION). El "Package registry ✅" de VERSIONING era FALSO (nyx publish no existe).
- PLAN.md tenía una campaña "EN CURSO sin mergear" publicada 6 días antes.
- SPEC.md omitía los 10 códigos de la serie borrow (NYX1021/1201/1210-11/1220-23/1230).
- CLAUDE.md: limitaciones despineadas de versión + los arcos v0.22-v0.24.
- COMPARISON.es sincronizada (memoria 3, concurrencia 4, rendimiento 4).

### Higiene
- 237 MB (.sdd) + logrotate roto + fixture binario des-trackeado +
  seed fmt.ll regenerado (único par stale) + 9 skills/agentes con paths fósiles
  (~/NyxLang y compañía, muertos desde la migración de layout 2026-07-22).
- Skill write-nyx-program: enseñaba `Some()`/`Ok()` pelados que NO compilan —
  reescrito con las formas calificadas + el gotcha de payload multi-campo.

### TASKS.md depurado
- 9 fichas cerradas con evidencia (3 verificadas con repro serial), 3 fusionadas,
  2 degradadas, sección "Ruta A+" (280 líneas de trabajo hecho) archivada, sección
  ⭐ AHORA con las 5 de mayor valor. 96 → 87 abiertas y las de arriba son las reales.

Gates: 351/351, errors 242/0, ai-first (guardia de coherencia verde tras cada manual).

## [0.24.11] — 2026-08-04 — Modo ceguera visible: la degradación del gradual ya no es invisible

### Agregado
- **`NYX_STRICT=warn`**: tras una compilación limpia, el compilador reporta cuántas
  validaciones semánticas se saltearon por tipos desconocidos, con los primeros 6
  puntos (función + línea, bilingüe) — «anotar tipos en esos puntos enciende los
  chequeos apagados». 14 sitios de alta señal instrumentados (binop ×8, unop,
  retorno ×2, args de llamada ×2, let anotado, objetivo de llamada). SOLO cuenta el
  código del usuario: el prelude va rebasado a línea 1000001+ y los módulos
  inlineados se excluyen vía los `module_marker` existentes. Con todo anotado:
  silencio. Instrumentación pura — el exit code no cambia y NINGÚN gate se endurece
  (la lección de las 5 regresiones de julio). Es el dato que decide si vale la pena
  endurecer los ~40 gates de leniencia en una campaña futura.

### Mantenimiento
- Disco de la máquina de dev: 96% → 90% (versiones viejas del CLI, transcripts +21d,
  journal, git gc).
- `PLAN.md` refrescado (slots-tag y match-float ya no figuran como pendientes);
  `docs/TESTS.md` reconciliado (regression **351**, errors **242** — estaba stale
  desde v0.24.9).

Gates: 351/351 (101 salidas comparadas), errors 242/0, m08, ai-first, stacks.
Fixed point ×2 en semantic y nyx.

## [0.24.10] — 2026-08-03 — Tag estático de fallback: la familia que corrompía slots está muerta

Implementación completa de la spec del tag estático (el Incremento C de "la anotación
manda"). Regla estructural en todos los sitios: **el tag estático SOLO gana cuando el
tag runtime es UNKNOWN** — nunca pisa evidencia real. Con eso no hay quinta ronda de
precedencias posible: todo cambio es corrección de un silently-wrong o un abort
diagnosticado, nunca un valor distinto en silencio.

### Corregido
- **`arr[i] = 5.5` releía `4.61788e+18`** (con o sin anotación del receptor): la
  escritura indexada ahora taguea el slot con el tipo del VALOR (double → bits + tag
  FLOAT); un int escrito en un `Array<float>` anotado se PROMUEVE (sitofp). La trampa
  §5.1.3 de LLM.md pasó a "Already fixed" y la guardia de coherencia la vigila como
  mentira resucitable (test-328).
- **`a.unshift(a[1])` imprimía la dirección del puntero**: los 5 sitios de
  unshift/insert resolvían el tag DESPUÉS de emitir la mutación (slots corridos);
  ahora antes, como siempre hizo push (test-329).
- **`push` de un índice sin tag propagable + `let v = src[1]; b.push(v)`** con receptor
  ANOTADO heredan el tag de la anotación (las 4 formas espejo del residuo); un select
  en runtime garantiza que el tag propagado conocido siga mandando (test-329).
- **Literal con destino anotado** (`var b: Array<String> = [src[1]]`) hereda el tag en
  sus slots UNKNOWN vía `nyx_array_retag_unknown` — solo literales, solo UNKNOWN
  (test-330).

### Runtime (C1, commit previo 93f8736)
- `nyx_slot_as_float_st(arr, i, static_tag)`: tabla rt/st completa; slot puntero leído
  como float → abort **NYX2008** (documentado en SPEC/SPEC.es); rt INT/BOOL conserva el
  widening numérico. `nyx_array_retag_unknown(arr, tag)`. TDD con test_arrays 63/63.

### Diseño (la decisión que evita la recaída)
- El registro `annotated_elem_tags` se alimenta EXCLUSIVAMENTE de anotaciones
  explícitas — let/var anotados, params de fn, campos de struct — nunca del tipo de
  `ctx.variables`, que incluye la inferencia por primer elemento (`[1,"dos"]` →
  `Array<int>` transportando un String: la falla probada del round 3).

### Verificación
- Gates: 351/351 (101 salidas comparadas), errors 241/0, m08, ai-first 17✓ (guardia
  re-pineada), runtime C 20/20, stacks 6/6. Fixed point ×2 (gen2==gen3 — el compilador
  taguea sus propias escrituras). El bootstrap se recompiló ×2 con el tagueo nuevo sin
  un solo aborto espurio (el canario de los 9/11 falsos positivos).

## [0.24.9] — 2026-08-03 — La anotación manda (ronda 1): mueren tres adivinanzas

Arco de endurecimiento del tipado gradual. Principio rector: donde el usuario ANOTÓ,
el compilador obedece la anotación — nunca la adivinanza. Plan aprobado por Ottavio;
spec del incremento restante incluida.

### Corregido
- **Struct de nombre corto ES un struct (A1)**: la heurística "≤2 chars = parámetro de
  tipo" hacía que `struct Q` bypaseara NYX1020/NYX2004 y el compilador emitiera IR
  inválido con exit 0 (clang lo cazaba recién al linkear). Registro
  `g_concrete_type_names` + wrapper `sem_ty_parse` (18 call-sites): si el nombre corto
  está registrado como struct/enum, es CONCRETO. Ahora: NYX2004 nombrando la firma
  faltante. Cerró también a su gemela de semantic (`pub struct St` validaba distinto
  que `pub struct Sto`). Test: `codegen-nyx2004-short-struct-bound` (errors → 241).
- **Monomorfización de structs genéricos ON-DEMAND (B1, sp4-bug-3)**: una fn declarada
  ANTES del literal genérico leía campos de un tipo sin registrar → print mudo y el
  binario devolvía 0 en vez del valor, con exit 0. La rama de `nyx_type_to_llvm` que
  manglea `Base<Args>` ahora monomorfiza por MENCIÓN de tipo — el orden de declaración
  dejó de importar. test-326 fija el orden que antes rompía; el comentario de test-321
  que vendía el workaround como "estilo" quedó saneado.
- **`match` float preserva el valor (B2)**: `let x: float = match v { 1 => 1.5, _ => 2.5 }`
  imprimía 1.0 — `match_arm_store` hacía fptosi incondicional. Cuando el match infiere
  float, el slot pasa a modo BITS simétrico (bitcast store/load, como `coerce_to_i64`)
  y los arms enteros se promueven (sitofp); `codegen_match` retorna `double` tipado.
  Con y sin anotación, block-arms incluidos; arms mixtos int-primero conservan el
  legacy. test-327 cubre los 5 bordes con salida comparada.

### Verificado sin cambio (A2)
- El orden de fuentes de `nyx_type_to_llvm_for_env` (anotación → inferencia →
  heurística por-nombre → i64) se AUDITÓ correcto: la heurística léxica solo corre como
  último recurso. Documentado sobre la fn con la evidencia; su retiro total queda como
  ficha de medición (patrón v0.22.14).

### Spec (Incremento C — sin implementación)
- **Tag de fallback ESTÁTICO para slots de Array**
  (`docs/design/specs/2026-08-03-static-tag-fallback-spec.md`): el tipo DECLARADO
  del receptor como tercera fuente de verdad — solo gana cuando el tag runtime es
  UNKNOWN, mismatch → NYX2008 ruidoso. Mata de raíz la familia `arr[i] = 5.5`
  corrupto + los 4 espejos SEGV del push. Implementación en sesión propia.

### Catalogado
- 4 fichas nuevas en TASKS.md: retiro medido de la heurística por-nombre, migración de
  call-sites legacy al unify por-id, `ty_eq` estricto, y "modo ceguera visible"
  (contador de validaciones apagadas por TyUnknown, candidato `NYX_STRICT=warn`).

Gates: 348/348 (98 salidas comparadas), errors 241/0, m08, ai-first, stacks.
Fixed point ×2 en semantic y codegen.

## [0.24.8] — 2026-08-03 — Los diagnósticos humanos llevan su código

Dos menores de la cola, cerrados con la disciplina completa:

### Corregido
- **El formato humano de semantic lleva el código NYX**: `sem_diag` construía
  «error in 'main' (line N): ...» descartando el código que ya tenía — `nyx_check`
  (y cualquier consumidor del canal humano) recibía prosa sin identificador estable.
  Ahora: `error [NYX1002] in 'main' (line N): ...`, también en el protocolo `DIAG:`
  del LSP. La audiencia AI-first matchea códigos, no prosa (lo destapó el scorer del
  banco). `NYX0000` (sin código asignado) se omite para no inventar identificadores.
  Fixed point ×2 byte-idéntico; blindado con `check-diag-carries-code` (errors → 240).
- **`run_case` en el smoke del REPL**: 14 bloques de boilerplate colapsados a un helper
  con `timeout 20` (que faltaba — un REPL colgado ya no cuelga la suite). 15/15
  intactos, control positivo del refactor verificado.

### Catalogado
- `nyx_check` vía `NYX_SRC` directa reporta la línea corrida por el prelude (la vía del
  wrapper rebasea bien) — ficha nueva.

## [0.24.7] — 2026-08-03 — El error del intérprete corta la evaluación (nil-cascade resuelto)

El residuo de diseño declarado en v0.24.3: tras un NYX30xx, la expresión contenedora
seguía computando con nil — `print(a[9] + 1)` emitía el error y DESPUÉS imprimía `1`
(un valor fabricado presentado como resultado), y un nil raíz podía cascadear errores
espurios. Ahora existe el Value `"error"` propagable (mismo canal de control que el
`"return"` de eval_block): los 15 sitios de error lo devuelven, 29 guardas en los
combinadores lo propagan, los bloques y loops lo burbujean, y `repl_eval` corta el
input restante sin mostrar nada fabricado. El cuerpo de una función aborta tras el
error — paridad con el binario compilado (que aborta el proceso); la sesión del REPL
sobrevive. Smoke `make test-repl`: 12 → **15 checks**, RED verificado por caso.
También: la guardia de coherencia LLM.md↔manuales sembrados (7ª línea de test-ai-first,
2026-08-03) — ratchet de 9 mentiras resucitadas + anclas de trampas vivas + pin de §5.1.

## [0.24.6] — 2026-08-02 — El install público estuvo roto 4 días; ahora no puede volver a pasar

`curl install.sh | sh` moría para TODO usuario externo desde el 29/07: `make build-test`
(paso agregado en v0.22.20) necesita `compiler/test.nx`, fuente privada que no viaja al
mirror — y no existía seed. Los gates internos, todos verdes; los CI de nyx-proxy y
nyx-serve lo gritaban en rojo y nadie los miraba.

### Corregido
- Seed `compiler/test.ll` trackeado + `build-test` dual: con la fuente compila y
  refresca el seed; sin ella (clon público) construye desde el seed — patrón `build.ll`.
- **Guard de completitud del install en el sync** (espejo del guard anti-fugas): todo
  target de `install.sh` que necesite un `compiler/*.nx` debe tener fuente o seed en el
  mirror, o el sync no commitea. Verificado con control positivo. La clase entera de
  "feature interna verde / instalador externo muerto" queda cerrada estructuralmente.
- Ficha meta: los CI de los repos públicos como verificadores-que-nadie-mira (el rojo
  de nyx-serve llevaba 2+ días visible).

## [0.24.5] — 2026-08-01 — La métrica AI-first re-medida: 4/4 al primer intento

Ottavio pidió "poner a prueba bien el lenguaje y aclarar los manuales". Se hizo ambas.

### El banco de primer intento, contra v0.24.4
Mismo protocolo del baseline (agente sonnet headless, contexto limpio, SOLO la doc que
`nyx init` siembra, acceptance a ciegas): **4/4 ACCEPT PASS** — el baseline v0.22.21 era
7/8. `first_green_attempt = 1` en las cuatro tareas (el PRIMER build de cada proyecto fue
verde), cero incidentes de silencio, cero fallos sin diagnóstico. La tarea 4 — el único
FAIL del baseline — ahora pasa: `float_to_fixed` existe, y el examinado que escribió
`println` recibió el did-you-mean de `nyx check` y corrigió en una invocación. Detalle y
advertencias honestas (n=1 por tarea) en `docs/BENCH-FIRST-ATTEMPT.md`. **Scorer v2**: el
instrumento contaba como "fallos mudos" los diagnósticos de `nyx_check` (van por stdout,
sin código NYX — ficha abierta); corregido con caso de control en el selftest.

### Los manuales dejan de mentir (auditoría completa contra LLM.md)
Los 3 manuales que `nyx init` siembra en cada proyecto arrastraban falsedades: closures
"rotos" (arreglados hace 5 días de eso... desde 2026-07-27), la trampa `arr[i].method()`
muerta desde abril, el CHEATSHEET contradiciéndose a sí mismo dos veces, API inventada
(`open_file`), `http_get` tipado `String` (retorna `Array`), e import local con sintaxis
de dependencia. Todo corregido hacia el core; los 3 ganan las 3 trampas vivas de §5.1 que
les faltaban, NYX1022 y el check del bind. `std/kvclient` gana sus 5 contratos de retorno
(la lección http_serve generalizada — el resto de las familias de riesgo ya los tenía).
LLM.md documenta el subconjunto del REPL (§5.4.12).

## [0.24.4] — 2026-08-01 — Dos reportes de fricción: el bind mudo y la feature que no linkeaba

Ciclo de fricción completo (skill kv-friction-pull): dos reportes de usuarios reales,
ambos reproducidos ANTES de tocar nada, ambos blindados con guardia permanente.

### Corregido — el bind fallido es RUIDOSO (reporte 2026-08-01, usuario en v0.24.1)
`http_serve(8080, handler)` con el puerto ocupado devolvía -1 **sin un solo mensaje**, y
el ejemplo canónico de la doc descartaba el retorno: el programa "arrancaba" con exit 0
y sin servidor (el usuario debuggeó contra el proceso ajeno que ocupaba su puerto).
- `nyx_tcp_listen` (bind Y listen) + `nyx_udp_bind` (misma familia): fallo → mensaje a
  **stderr** con puerto y `strerror(errno)` (capturado antes del `close`, que puede
  pisarlo). El retorno -1 se mantiene (ABI).
- Los 5 ejemplos canónicos (LLM.md, templates/CLAUDE.md, CHEATSHEET ×2, SPEC) ahora
  chequean el retorno; docstrings de `http_serve`/`http_serve_mt` documentan el contrato.
- Blindaje: `tests/ai-first/21-bind-failure-loud.nx` + check `silent-bind-failure`
  (stderr capturado aparte, control negativo: un bind exitoso NO emite).
- La IDEA del reporte (`Result<int,String>`) queda catalogada — cambio de firma.

### Corregido — `std/llm` linkea para usuarios (A10 del reporte 2026-07-31)
Todo `import "std/llm"` moría en el link (`undefined reference to nyx_llm_*`) con el
toolchain instalado **desde v0.20.x**: `llama_adapter.c` estaba en el Makefile del
monorepo (gates internos verdes) pero faltaba en las DOS recetas de usuarios
(`scripts/nyx` y `compiler/build.nx`). Verificado vivo en v0.24.3; agregado a ambas
(dlopen-lazy, cero dependencia dura). Post-fix el repro linkea y da el error runtime
accionable. Lección estructural: `run_toolchain_recipe_audit.sh` (6ª línea de
`make test-ai-first`) exige TODO `runtime/*.c` en ambas recetas — con control positivo.
Seeds regenerados (`build.ll` + `make build-nyx-build`).

Del resto del reporte 2026-07-31 (navegador): C1 (SIGWINCH) ya era verdad desde
v0.22.18, C3 (regex en CAPABILITIES) ya resuelto, A1-A9/B/C2/C4 cerrados en v0.22.x.
Ambos reportes archivados; inbox vacío.

## [0.24.3] — 2026-08-01 — La serie NYX30xx completa, y el bug que el mojibake escondía

La campaña de prints mudos del intérprete (residuo declarado de v0.24.2) terminó
encontrando algo mejor que ruido: un bug de **datos** silently-wrong presente desde
siempre.

### Corregido
- **`eval_array` construía `[nil]` para TODO literal de array**: iteraba `node_data` en
  vez de `node_data[0]` (el parser emite `make_astnode("array", [elements])`), así que
  evaluaba como "elemento" a la lista entera — un no-astnode. `[10, 20, 30]` en el REPL
  medía `length() == 1` con `a[0] == nil`, y el famoso «Expresión no soportada: <bytes
  basura>» era la lista de elementos impresa como String. Diagnóstico por sondas mínimas
  (cualquier literal lo disparaba; `let a = 1` no), fix de raíz de una línea.
- **Los 14 sitios print-mudo del intérprete migrados a la serie NYX30xx** vía helper
  `interp_err()` (bilingüe + contador `interp_error_count()`): **NYX3002** expresión/
  operador/feature fuera del subconjunto (catch-all de eval_expr, binop, unop,
  compound-assign, field_assign), **NYX3003** variable no definida (×3 caminos),
  **NYX3004** llamada a no-función, **NYX3005** errores de runtime del programa
  (división por cero ×2, índice fuera de rango ×2, index_assign sobre no-array — el
  binario compilado aborta en estos; el REPL reporta y sobrevive). Catálogo completo en
  SPEC.md/SPEC.es.md.

### Corregido (2ª ronda — hallazgos del /code-review pre-release, todos reproducidos)
- **`for x in [array]` SEGFAULTEABA el REPL** (exit 139, desde siempre): el parser guarda
  el nombre de la variable del for como String plana en `data[0]`; `eval_for` lo trataba
  como astnode y leía `[0]` de la String — memoria reinterpretada como puntero.
- **`5 % 0` devolvía 5 en silencio**: módulo sin el guard que división sí tenía — en
  ARM64 el udiv-por-cero no trapea (da 0) y el msub deja `a`, un artefacto de hardware
  disfrazado de resultado. Ahora NYX3005.
- **Aridad incorrecta (`f(1)` sobre fn de 2 params) MATABA la sesión** (exit 1): el
  índice fuera de rango de `args[i]` disparaba el abort del binario compilado. Ahora
  **NYX3006** antes de bindear, y la sesión sobrevive.
- **`eval_compound_assign` removido**: código muerto inalcanzable — el parser desugarea
  `x += e` a `x = x + e` y nunca emite ese nodo (la rama tenía el mismo bug latente de
  eval_for adentro como prueba de que jamás corrió). El bloque NYX3001 ahora usa el
  helper `interp_err` (hallazgo de reuse de la review).

### Corregido (3ª ronda — reporte final del /code-review)
- **Bare `return` en fn void emitía NYX3002 sobre código VÁLIDO**: el parser sintetiza
  el nodo `"integer"` (parser.nx:2831) y el intérprete no tenía rama — la misma lección
  de NYX2001 (los catch-alls son load-bearing para nodos sintéticos), ahora aplicada acá.
- **Indexar un no-array reportaba un falso "índice fuera de rango"** (NYX3005): `s[0]`
  sobre String —que el binario compilado SÍ soporta por bytes— es limitación del
  subconjunto → NYX3002 honesto, con chequeo de `value_type` (eval_index_assign ya lo
  tenía; eval_index quedó simétrico).
- **Llamar un nombre indefinido emitía DOS errores** (NYX3003 + un NYX3004 falso) y el
  contador subía 2: `env_has` nuevo + pre-check en eval_call — un error, contador +1.
- Dos guards vacuos del propio smoke (cazados por la review): el grep de length matcheaba
  por substring (`"nyx> 3"` ⊂ `"nyx> 30"`) y el guard anti-catch-all grepeaba texto en
  español con el binario emitiendo inglés. Anclado y migrado a códigos neutros.
- Comentario stale de eval_field_assign («silenciamos silenciosamente» sobre código ya
  ruidoso).

### Residuo catalogado (ficha en TASKS.md, documentado en el helper)
- **nil-cascade**: tras un NYX30xx la expresión contenedora sigue computando con nil —
  `print(a[9] + 1)` emite NYX3005 y después imprime `1`. El error nunca es silencioso,
  pero puede venir seguido de un valor fabricado. Fix de diseño (value_type "error"
  propagable) en ficha.

### Tests
- `run_repl_smoke.sh` 3 → **12 checks** (array literal con datos reales, NYX3003,
  NYX3004, for-in sin segfault, NYX3005 módulo, NYX3006 aridad con sesión viva, bare
  return sintético, NYX3002 en indexado de no-array, 1-solo-error en llamada indefinida),
  todos con RED verificado contra el binario previo.

## [0.24.2] — 2026-08-01 — El intérprete deja de mentir en silencio

La última pata de la familia silently-wrong, declarada como brecha propia en el cierre de
v0.24.0: `compiler/interpreter.nx` (el evaluador del REPL) despachaba métodos con un
fallback **print mudo + nil** — el mismo programa daba OTRO resultado que el binario
compilado, con la sesión en verde. El inventario midió el subconjunto real: String 12
métodos, Array 3, y **Map cero** — mientras el comentario de cabecera prometía
`Map: insert, get, contains, length` (ficción pura, desde siempre).

### Corregido
- **NYX3001** (serie nueva NYX30xx = interpreter-phase, catalogada en SPEC.md/es): método
  fuera del subconjunto declarado → error bilingüe ruidoso que además dice la verdad útil
  («el binario compilado sí lo soporta si el lenguaje lo tiene»). La sesión del REPL
  **sobrevive** (es interactiva; abortar mataría la sesión) y `interp_error_count()`
  (export nuevo) registra el error para consumidores no interactivos.
- El comentario de cabecera de interpreter.nx ahora declara el subconjunto REAL.
- **Drift reparado de paso**: NYX2007 (v0.24.0) faltaba en las tablas de códigos de
  SPEC.md Y SPEC.es.md.

### Añadido
- `make test-repl` (dentro de `test-all`): smoke E2E `run_repl_smoke.sh` — NYX3001
  ruidoso, sesión viva tras el error, control negativo (`s.length()`==4). RED verificado
  contra el binario previo; el target reconstruye nyx_repl SIEMPRE (un smoke contra
  binario stale certificaría el pasado).

### Residuo catalogado (ficha en TASKS.md)
- Quedan prints mudos en el intérprete FUERA del dispatch de métodos (el smoke destapó
  «Expresión no soportada: <bytes basura>» — mudo y con mojibake — y el «no es una
  función» + nil de eval_call). Migrarlos a NYX30xx es campaña propia.

## [0.24.1] — 2026-07-31 — El residuo declarado de v0.24.0, cerrado

v0.24.0 dejó UN caso silently-wrong catalogado a conciencia: `m.length` (propiedad, sin
paréntesis) sobre una **variable** Map local compilaba con rc=0 tras un print mudo («Error:
campo no encontrado: Map:length») y devolvía 0 — un Map de 2 elementos medía 0. La forma
anidada (`s.m.length`) ya abortaba desde la campaña; faltaba el camino de identificador.

### Corregido
- **NYX2007 en el camino de identificador de `codegen_field_access`**: un Map no expone
  ninguna propiedad — ahora aborta nombrando la propiedad y sugiriendo los métodos
  (`m.size()`, `m.keys()`, `m.values()`), bilingüe. El guard es SOLO para receptor Map
  (match exacto o `Map<` sobre el símbolo declarado, resuelto de alias y PRE-mangle): el
  print mudo general sigue vivo a propósito — es el fallback load-bearing del bootstrap
  (parser.nx dispara "Array:node_type" al auto-compilarse) — y un struct de usuario llamado
  `MapEntry` no cae en el guard (control negativo ejecutado).
- La **matriz de dispatch quedó con la lista de divergencias conocidas VACÍA** — que es el
  objetivo declarado del mecanismo: la celda `map/local (propiedad)` pasó a rechazo ruidoso.

Test: `codegen-nyx2007-map-local-length-property` (RED verificado; corre SIN
`NYX_SKIP_SEMANTIC` — NYX1022 mira llamadas, la forma-propiedad es camino normal de codegen).
Gates: fixed point global ×2 byte-idéntico (recompile-all; cero módulos del compilador caen
en el guard), regression 346/346, errors 239/0, m08 18/18, ai-first, stacks 6/6, matriz
17/29 (piso 17).

## [0.24.0] — 2026-07-31 — Un método aplica al tipo de su receptor, o es error

> Cambio de política del compilador (programas que antes compilaban ahora son error) →
> **MINOR autorizado por Ottavio (2026-07-31)**.

La familia "silently-wrong" del despacho de métodos tenía **dos causas**, y solo una estaba
muerta. El catch-all mudo (método *no reconocido* → `0` en silencio) se convirtió en error en
v0.22.14. Esta campaña mata la segunda: **método reconocido pero despachado a la rama del tipo
equivocado** — `length` sí existe, pero sobre un `Map` entraba a la rama de Array y emitía un
`nyx_array_length` válido sobre un puntero que no es un array. Nadie preguntaba por el tipo.

La causa raíz estaba en semantic: `check_builtin_method_args` validaba los argumentos de los
métodos que reconocía y terminaba en `return true` — **nunca validaba que el método existiera
para ese tipo**. Los cuatro bugs que lo evidenciaban, reproducidos ejecutando:

| Antes | Ahora |
|---|---|
| `m.length()` sobre `Map` imprimía `281473395465504` (un puntero como entero, silencioso) | error NYX1022 con sugerencia (*¿quisiste decir 'size'?*) |
| `s.f.length` (propiedad) sobre campo `String` daba `0`; con paréntesis daba `4` | ambas formas dan la longitud real (test-324) |
| `s.m.push(x)` sobre campo `Map` compilaba y **segfaulteaba** | error de compilación |
| `s.f.contains(x)` sobre campo `Array` emitía IR inválido | funciona; invariancia por forma (test-325) |

### Añadido
- **NYX1022** (semantic): catálogo `methods_for_kind` por tipo de receptor (String/Array/Map/
  Option/Result) — un método que no está en el catálogo de su tipo es error, con did-you-mean.
  Regla de oro del tipado gradual intacta: receptor `TyUnknown`/`TyVar`/`TyDyn`/`TyGeneric`
  nunca produce este error. Catálogo medido contra el corpus real (regresión + errors + stacks
  + el propio compilador), no derivado por lectura.
- **NYX2007** (codegen): backstop de tipo de receptor en los sitios que despachaban por nombre
  sin consultar el tipo que ya tenían (S1 globales, S3 length/contains, S9 push sobre campo,
  receptores `&String`/`&Array`/`&Map`). Es la única capa que cubre código sin anotaciones y
  sobrevive a `NYX_SKIP_SEMANTIC=1`.
- **Matriz de invariancia por forma del receptor** (`make test-dispatch-matrix`): la propiedad
  única — el mismo método sobre el mismo dato da el mismo resultado sin importar cómo se nombre
  el receptor (local, campo, retorno, elemento, global). Celdas inaplicables listadas, nunca
  omitidas en silencio; piso de celdas verificadas (17) para que la matriz no pueda ponerse
  verde degradada.
- **Ratchet de divergencia** (`run_codegen_mute_audit.sh`): NYX2007 no puede desaparecer y el
  catálogo de `methods_for_kind` no puede volverse ilegible sin que `make test-ai-first` falle.
  Verificado con control positivo.

### Corregido
- Los 4 bugs de la tabla, como tests de regresión reales (test-324/325 + 8 tests de error).
- `contains` con la forma de `length` sobre campo: la forma conjunta abría un SEGV.
- El bloque de acceso anidado de `codegen_field_access` atendía el print mudo «campo no
  encontrado» y devolvía `i64 0` con exit 0; ahora atiende las propiedades builtin y aborta
  ruidoso lo que no resuelve (ratchet de prints-mudos: 9 → 8).

### Residuo catalogado (fichas en TASKS.md)
- `m.length` (propiedad, sin paréntesis) sobre una **variable** Map local: sigue el print mudo
  con rc=0 y devuelve 0 — divergencia conocida de la matriz, sitio del ratchet.
- El tagging asimétrico de `f().push(42)` no es de esta familia (el par método/tipo es
  correcto; se perdió el tipo de *elemento*).
- El intérprete (`interpreter.nx`) queda fuera del alcance, como brecha propia.

## [0.23.1] — 2026-07-31 — Un usuario reportó lo mismo dos veces

**Alguien está escribiendo una herramienta de seguridad de red en Nyx.** Reportó el 28 y el
29 de julio, y el segundo reporte solo fue posible porque el primero se había atendido: el 28
no podía usar UDP porque la documentación no traía las firmas; documentadas esas, encontró el
bug real.

### `udp_sendto` truncaba el payload en el primer byte nulo

Su repro: `"AB" + char_to_string(0) + "CDE"` — seis bytes — salían dos. Eso hace **imposible**
escribir probes de DNS, NTP o SNMP, porque los tres llevan nulos en sus cabeceras. La causa
era `strlen` sobre un `String` que ya sabe su longitud, con el error espejado en `udp_recvfrom`
(reconstruía con `from_cstr` teniendo el largo real en la mano).

El bug estaba **catalogado** por la auditoría de v0.23.0 como "resto de la campaña de
binary-safety". Que un usuario lo encontrara solo confirma que esa lista de residuos describe
problemas que la gente sí se cruza, no deuda teórica. Así que se cerró la familia entera:

- `udp_sendto` / `udp_recvfrom` — el reporte del usuario. **No existía ni un solo test de UDP
  en el repo**; ahora hay round-trip de los 256 valores de byte.
- `file_write_string` — un blob binario se truncaba al escribirlo a disco.
- `https_post` — truncaba el cuerpo **y** mandaba un `Content-Length` que mentía sobre su
  tamaño; además el `SSL_write` no loopeaba, un bug latente en cuerpos grandes.
- `ev_write_pipe` / `ev_read_pipe` — el mismo par en el event loop.

### Introspección TLS: `import "std/tls"`

También pidió dos veces poder mirar el certificado del peer para detectar "TLS débil o
certificado vencido", y dijo que no podía implementarlo. Ahora son una línea:
**`cert_is_expired(cert)`** y **`tls_is_weak(h)`**.

`tls_peer_cert(h)` devuelve subject, issuer, fechas de validez, serial, algoritmo, huella
SHA-256 y SANs; más la cadena, el PEM y los accessors de sesión (`tls_version`, `tls_cipher`,
`tls_cipher_bits`). Todo con accessors con nombre para que nadie escriba índices a mano, y
totales sobre un array vacío: un handshake fallido nunca rompe a un caller descuidado.

La **verificación** de certificados es aparte y opt-in — `tls_connect_ex(host, port, mode)`:

- **modo 0** — el comportamiento actual, idéntico.
- **modo 1 "checked"** — el handshake **siempre** completa y después preguntás si habría
  fallado. Es el modo que un escáner necesita: quiere alcanzar la máquina con el certificado
  vencido y *reportarla*, no que se la rechacen.
- **modo 2 "strict"** — verifica cadena y hostname.

Vive en un **`SSL_CTX` separado**: el contexto por el que pasa todo el tráfico saliente en
producción no se toca, así que ningún camino que hoy funciona lee un byte que este cambio
escriba. Un guardián de regresión lo confirma en cada corrida.

### Notas

Las funciones TLS se exponen con `extern "C"` desde `std/tls.nx`, sin tocar el compilador —
por eso este release **no necesitó fixed point**. Se descartó explícitamente que una variable
de entorno global cambiara el contexto compartido a verificar: es acción a distancia, y su
modo de fallo (`https_get` devolviendo `""`) es indistinguible de un error de red.

`write_file`/`read_file` (el par simple por path) **siguen sin ser binary-safe** — para
contenido que no sea texto conocido, usar `file_open`/`file_write_string`/`file_close`.

---

## [0.23.0] — 2026-07-30 — La campaña de corrección: lo que estaba roto y nadie veía

**Una auditoría general de seis frentes preguntó qué hay realmente mal en este proyecto.**
La respuesta ocupó cuatro sub-proyectos y 66 commits. El hilo común: casi todo lo que se
encontró llevaba mucho tiempo ahí, tapado por otra cosa.

### Seguridad — cinco rutas de desbordamiento alcanzables desde red

- **WebSocket**: la longitud de 64 bits del frame **envolvía el chequeo de límites**. Catorce
  bytes en el socket bastaban para una escritura de heap ilimitada. Ahora toda validación de
  longitud se escribe como resta sobre el lado conocido, nunca como suma que pueda envolver.
- **msgpack**: se copiaba la longitud anunciada en la cabecera sin compararla nunca con el
  buffer real. Dos bytes de entrada leían 255 bytes de heap ajeno **y los devolvían al
  programa como String** — divulgación de memoria, no solo un crash.
- **HPACK (encoder)**: presupuesto fijo de 128 bytes por header con `memcpy` del valor
  completo. Un `set-cookie` de 4 KB escribía kilobytes fuera del bloque. Ahora el buffer se
  dimensiona por el tamaño real y los guards rebobinan a frontera de header, para no dejar un
  header a medio escribir (HPACK mantiene estado entre frames).
- **HPACK (decoder)**: el varint acumulaba sin tope, con desplazamiento indefinido y valor
  negativo. El fix incluye `consumed == 0` en los ocho call-sites: sin eso, topar el varint
  convertía el desbordamiento en un bucle infinito que agotaba el heap.
- **RESP**: cotas de bulk y de conteo de array del lado C. `$2147483647` desbordaba la suma a
  `INT_MIN`; `*2000000000` forzaba una reserva de ~16 GB con catorce bytes, y si fallaba,
  `exit(1)` — un peer no autenticado podía matar el proceso.

### Corrección de la stdlib

- **`json_stringify` no escapaba nada**, ni en valores ni en claves de objeto. Cualquier texto
  con una comilla o un salto de línea producía JSON inválido. El parser sí decodificaba, así
  que el round-trip estaba roto en una sola dirección.
- **`remove()` no removía** en `std/collections` ni en `std/btreemap`: insertaban un centinela
  y `has()` seguía diciendo `true`. El mismo set reportaba `has(x) == true` y `size() == 0`.
  Arreglarlo destapó que **`Map.get` de una clave ausente mata el proceso** — oculto porque el
  borrado falso impedía llegar a ese caso.
- **`json_parse` decidía los literales por su primera letra**: `"tomato"` parseaba como `true`.
- **`float_to_fixed`** en `std/math_ext`, con su límite documentado: el redondeo puede fallar
  en el último dígito cuando la representación binaria cae del lado equivocado del `.5`.

### La red de verificación

- **El runner de regresión nunca comparó la salida de ningún test.** Había **95 archivos
  `expected/` escritos que ningún runner consumía**. Ahora compara, una diferencia falla la
  suite, y el resumen informa cuántos tests siguen **sin ninguna red** (249 de 344) — el número
  que faltaba para que el problema fuera visible.
- Marcador `__ANY__` para salida no determinista, con conteo de líneas exacto.
- Tests que pasaron de decorativos a verificar: punteros crudos y FFI (el área por donde entró
  un P1 de esta misma campaña), concurrencia, y `test-192-http-mt`, que **decía probar el
  servidor HTTP multithread y nunca lo llamaba**.

### El compilador

- **Los errores del lexer no se contaban** en ninguno de sus cinco sitios: una comilla sin
  cerrar se tragaba el resto del archivo y podía emitir binario.
- **Un `pub struct` no se registraba como tipo**, así que `import { parse } from "std/semver"`
  usando `Version` **no compilaba**. 67 falsos positivos en siete módulos de la stdlib.
- **`a.b.c = x` imprimía una línea y descartaba la asignación**: el binario corría con el valor
  viejo y el build retornaba 0. Ahora la cadena se recorre por dirección, y los casos no
  soportados abortan con diagnóstico (NYX2005/NYX2006) en vez de evaporarse.
- **El `inttoptr` decidía por el nombre del método**: `nums[0].contains("x")` sobre un entero
  segfaulteaba, y con arrays anidados devolvía `false` leyendo la estructura como texto.

### Notas de esta versión

`nyx_type_to_llvm` y `field_assign` comparten ahora un único helper de normalización, cerrando
la familia de "campo no encontrado" que venía de cuatro derivaciones distintas del nombre de
struct.

Lo que **no** entró y está catalogado con repro en `TASKS.md`: la épica de unificación del
dispatch de métodos (con alcance y regla de corte), el residuo del tagueo de slots —donde se
cortó tras cuatro rondas, porque la evidencia estática no alcanza para decidir algo que solo
se sabe en runtime— y trece fichas de bugs preexistentes que la campaña destapó sin poder
cerrar en su alcance, incluido un segfault por alias de tipo cíclico y la descompresión rota
por secuestro del símbolo `inflate`.

**Gate**: regresión 344/344, error paths 228/0, m08 18/18, ai-first, runtime 20 suites, los
seis stacks extraídos verdes, y fixed point global byte-idéntico.

---

## [0.22.23] — 2026-07-29 — El error te dice de quién es la culpa: cierre de "Primer intento verde"

**Fases 4 y 5, las últimas de la campaña.** Cuando algo falla, el agente necesita saber dos cosas:
de quién es la culpa (¿su código o el compilador?) y cómo se llama de verdad lo que quiere llamar.
Estas dos fases atacan exactamente eso. Con esto, las 6 fases (F0-F5) del plan quedan completas.

### Fixed
- **Atribución de fallos de clang/link (F4.1, `compiler/build.nx:436`)**: cuando clang falla
  contra el IR generado (`use of undefined value`, `invalid redefinition`, `undefined reference`,
  …), `nyx build` antepone al log crudo un bloque bilingüe que dice que es casi seguro un **bug
  del compilador Nyx, no del código del usuario**, nombra el archivo en curso y apunta a
  `nyx report`. Antes se volcaba el log de clang tal cual y el agente editaba su código al azar
  (≥4 incidentes históricos confirmados; los IR inválidos de `Option<Struct>` del banco de F1 son
  exactamente esta clase).
- **Did-you-mean real en import no resuelto (F4.2, `compiler/nyx.nx`)**: el error de import dejó
  el hint fijo `src/<path>` y ahora corre Levenshtein contra los módulos **reales** de `std/` y
  `src/` del proyecto — con pools por prefijo explícito (pedir `std/x` no sugiere módulos de
  `src/` ajenos al namespace elegido) y supresión de sugerencias idénticas al path pedido.
  Código nuevo **NYX0301** (serie resolver, `phase:"resolve"`, catalogado en docs/SPEC.md).
  Es el error de más alta frecuencia del banco: el agente inventa nombres de módulos de std.
- **CAPABILITIES.md ya no trunca firmas multi-línea (F5.1, `compiler/build.nx:619`)**: el
  extractor cortaba en el primer `{` de la misma línea, así que toda firma partida en varias
  líneas quedaba truncada a medio parámetro (confirmado en `std/proptest.nx`,
  `std/webpush.nx`) — un documento que le enseña a un agente a llamar MAL. Ahora
  `capabilities_module_section` junta líneas hasta balancear `(`/`)` antes de cortar en el `{`
  del cuerpo.
- **`run_capabilities_test.sh` endurecido y cableado (F5.2)**: solo comparaba nombres (por eso
  nunca cazó la truncación) — suma balance de paréntesis por firma extraída + spot-check textual
  de las 3 firmas multi-línea confirmadas + chequeo de frescura de `nyx_build` (mtime vs
  `build.nx`, FAIL accionable en vez de diff confuso), y pasa de guard manual a **5ª línea de
  `make test-ai-first`** — un guard que nadie corre es el mismo agujero que la campaña vino
  tapando cinco fases.

### Tests / seeds
- errors 215→217 (`test-import-not-found-suggests-std` texto+NDJSON); ai-first +1 check
  (`clang-link-failure-attribution-ir-bug`, repro real del banco vía `nyx_build`); capabilities
  1→3 checks + frescura. Fórmula canónica: 604 compiler tests (`docs/TESTS.md`).
- Seed `compiler/build.ll` regenerado (los dos fixes de `build.nx` no habían llegado al seed —
  `install.sh` construye desde él; fixed point de `nyx.ll` verificado byte-idéntico).

---

## [0.22.22] — 2026-07-28 — El banco de primer intento: la doc sembrada, medida

**Un modelo con contexto limpio, solo la doc sembrada, escribiendo un proyecto real de cero. ¿Le
sale al primer intento?** Eso es lo único que esta fase mide, y la única pregunta que importa
después de tres releases (v0.22.19-v0.22.21) matando fallos silenciosos por capa.

### Added
- **Banco de primer intento** (`scripts/testing/bench/`): arnés con 4 specs de tareas reales
  verificables a ciegas — API HTTP JSON, workers con canales, CLI CSV, cliente HTTP. Sandbox con
  wrapper de logging NDJSON por invocación, acceptance byte-exacta con timeouts, scorer con
  selftest. Bug de instrumento cazado en su propia review: el acceptance contaminaba el log del
  examinado, dejando `silent_incident` siempre en false; corregido (grading vía
  `.bench/toolchain`, sin tocar el log medido).
- **4 casos de referencia en `tests/ai-first/`** (14→18): control positivo mutation-tested para
  cada tarea del banco. HTTP y concurrencia, que tenían cobertura 0 en la suite ai-first, pasan a
  tener control real.

### Resultados
- **8 runs reales** (claude -p sonnet headless, contexto limpio, solo doc sembrada + TASK.md;
  arms v0.22.21 vs v0.22.19/f6f6f3e): **7/8 ACCEPT PASS al primer intento, sin ayuda humana, en
  ≤7 min por proyecto**.
- **0 incidentes de silencio causados por el lenguaje** en ambos arms — ninguna de las tres
  fases de fallos-silenciosos-a-cero de esta campaña se disparó durante el banco.
- **El único FAIL fue un hallazgo de stdlib, no del compilador**: el examinado agotó 80 turnos
  fabricando a mano el formato de floats a 2 decimales (no existe una función así en `std`) y
  dejó `print`s de depuración en el entregable; sus datos de salida eran, de hecho,
  byte-correctos. Baseline honesto (n=1, sin generalizar) documentado en
  `docs/BENCH-FIRST-ATTEMPT.md`; instrumento reproducible commiteado (`examinee-prompt.txt` +
  `run_examinee.sh`) para volver a correrlo en cualquier release futuro.

### Known / cosecha [dogfooding:bench]
- `float_to_fixed` (u homólogo) no existe en `std` — forzó 80 turnos de formato manual a mano.
- El formato humano de errores de `semantic.nx` no incluye snippet de código NYX, a diferencia
  del parser que sí lo muestra.
- `nyx check` vuelca el protocolo LSP crudo en vez de un formato legible en modo normal.
- `Option`/`Result` con struct de múltiples campos como payload genera IR inválido.
- `arr[i] = float_value` corrompe el slot cuando el array no fue tagueado como float desde el
  literal.
- Un deadlock de canales mal diagnosticado cuelga el proceso sin pista de causa.
- El skill `write-nyx-program` está desactualizado respecto al estado real del lenguaje.
- Falta una métrica de "primera build verde" instrumentable de forma continua (no solo ad-hoc
  como este banco).

## [0.22.21] — 2026-07-28

**Ningún codegen devuelve 0 en silencio.**

Segundo gate caro de la campaña "primer intento verde": el mismo principio de la 0.22.20
(ningún fallo silencioso en semantic) aplicado a la última capa que quedaba, codegen. El
catch-all maestro de `codegen_expr` devolvía `i64 0` ante un node_type no reconocido SIN
imprimir una sola palabra — un binario compilaba y corría con basura silenciosa por un
camino del AST que el compilador simplemente no sabía bajar. Serie nueva `NYX20xx`
(codegen-phase; a diferencia de semantic, codegen no tiene registry de diagnósticos —
el código va en el texto del mensaje, documentado en `docs/SPEC.md`).

### Fixed
- **codegen (NYX2001)**: el catch-all maestro de `codegen_expr` aborta ahora bilingüe,
  nombrando el node_type no reconocido + "es casi seguro un bug del compilador, reportalo
  con `nyx report`". La ronda de review cazó un Critical antes de mergear: el nodo
  `"integer"` que el parser **sintetiza** para el bare `return` de funciones void caía en
  este mismo catch-all, y el `i64 0` que devolvía era la bajada **correcta** — sin una
  rama propia documentada para ese caso, NYX2001 rompía el bare `return` y el compilador
  dejaba de auto-compilarse (`licm.nx`/`borrow.nx` fallaban). Lección de la fase (misma
  familia que el catch-all de `codegen.nx:6445` de la fase anterior): un catch-all puede
  ser load-bearing para nodos **sintéticos** del parser — barrido de corpus obligatorio
  antes de volver fatal un fallback. Colateral: `let r = 0..n` usado fuera de un `for`
  ahora rechaza en vez de devolver `0`; `examples/test-dynamic-arrays.nx` (que dependía
  del `range` fuera de `for`, antes segfault en runtime, luego NYX2001) se migró a
  `.slice()`.
- **codegen (NYX2002)**: método no soportado sobre una global — el caso real alcanzable
  es un `const` de primitivo (`const N: int = 5; N.foo()`); las globales `var`/`let` ya
  estaban registradas y no se veían afectadas.
- **codegen (NYX2003)**: `field_access` sobre una expresión compleja (`f().campo`,
  `a[i].campo`, `Point{...}.campo`) emitía Warning + `0` mudo — **incluso con un campo
  válido**. Ahora es error duro con hint de binding intermedio (`let p = f(); p.campo`).
- **codegen (NYX2004) — cambio de comportamiento deliberado**: un bound de trait violado
  en la monomorfización (`fn f<T: Trait>` con turbofish explícito, o implícito sobre un
  tipo sin impls locales) imprimía un warning y **seguía monomorfizando** — generando LLVM
  potencialmente inválido río abajo. Ahora aborta, nombrando la **firma completa** del
  método que falta implementar (`missing: fn area(self) -> float`, multi-bound incluido)
  vía el helper nuevo `trait_method_sig_str`. La ronda de review confirmó que este NO es
  solo un backstop de emergencia: es el camino **normal** con turbofish explícito, o
  implícito cuando el tipo no tiene impls locales — la heurística de `semantic` (NYX1020)
  sólo es estricta cuando SÍ hay impls locales del tipo, así que NYX2004 es la única
  defensa real en esos casos.
  > **Breaking (comportamiento, no firma)**: un generic call cuyo type-arg no satisface el
  > trait bound, que antes compilaba con un warning impreso, ahora **aborta la
  > compilación**. Radio medido ≈ 0 en este repo: barrido de 476 tests de
  > `tests/compiler/` + `compiler/`, `std/`, `products/`, `web/` sin ningún hit de bound
  > de trait violado en un generic call — el cambio es puramente correctivo (un programa
  > que hoy compilaba bajo este patrón ya estaba generando LLVM potencialmente inválido).

### Added
- **Auditoría-ratchet** `scripts/testing/run_codegen_mute_audit.sh` (4ª línea de
  `make test-ai-first`): los 4 marcadores NYX20xx no pueden desaparecer del código, y los
  prints-mudos que quedan (baseline = 10, familia "campo no encontrado" — fallback
  load-bearing del bootstrap) no pueden crecer. Autotest propio + controles negativos.
- Tests: 4 fixtures nuevas de `NYX20xx` en `tests/compiler/errors/` + bloques custom +
  chequeo de NYX2004 en `run_silent_failure_checks.sh` (errors 211→215).
- `docs/SPEC.md`/`docs/SPEC.es.md`: tabla nueva "Codegen-phase codes" (`phase:"codegen"`,
  alcanzada solo cuando semantic ya pasó limpio — todo lo que llega ahí es o bien un bug
  del compilador, o bien un bound de trait que la capa de tipos no pudo cazar sola).

### Known
- **Limitación declarada del ratchet**: caza el patrón print-y-sigue conocido, NO un
  catch-all nuevo totalmente mudo (return-default sin print) ni prefijos de mensaje
  distintos — `grep` no caza silencio absoluto. La promesa completa la sostienen los
  tests por rama + el barrido de corpus como práctica, no el ratchet solo.
- 5 hallazgos del review final catalogados en `TASKS.md` (sin resolver en esta versión):
  bound sobre un trait **inexistente** no dice "trait desconocido" (NYX2004 sugiere
  implementar un trait que no existe); hint de NYX2004 no accionable sobre primitivos
  (`impl Display for int` no es sintaxis válida en Nyx); el canal NDJSON (`NYX_DIAG=json`)
  no cubre los códigos NYX20xx todavía; `NYX1011`/`NYX1012`/`NYX1020` (semantic) nombran
  trait+tipo pero no la firma del método faltante como sí hace NYX2004; y un hallazgo de
  composición — un struct con nombre de ≤2 caracteres bypasea tanto NYX1020 como NYX2004
  (la heurística de type-param corto lo confunde con `T`/`U`), produciendo `.ll` inválido
  con exit 0 que sólo `clang` detecta al linkear.

## [0.22.20] — 2026-07-28

**El fallo silencioso #1 está muerto: un campo inexistente ya no compila mudo.**

`user.name` cuando el struct declara `nombre` COMPILABA, CORRÍA y evaluaba a `0` sin decir una
palabra. No hacía fracasar el primer intento de un agente escribiendo Nyx — lo peor posible:
le hacía *creer* que tuvo éxito y entregar un programa que da números plausibles y mal. Toda la
maquinaria para atajarlo ya existía (`validate_struct_init` la usa hace tiempo para construcción
de structs); sólo faltaba cablearla al camino de *acceso* a un campo.

### Fixed
- **semantic**: `validate_field_access`/`validate_field_assign` (`compiler/semantic.nx`) validan
  ahora la existencia del campo vía un helper compartido, `check_field_exists`: si
  `ty_of_expr(objeto)` resuelve a un struct conocido y ese struct tiene campos registrados, un
  campo que no existe emite `NYX1017` bilingüe con sugerencia "did you mean" (Levenshtein) — en
  vez de compilar y devolver `0`. Cubre `u.campo`, `u.campo = v`, `f().campo` (por el tipo de
  retorno declarado de `f`) y, tras la ronda de review, `self.campo` dentro de un `impl` (el
  self-type se bindea explícitamente para eso; los `impl` genéricos quedan fuera a propósito —
  miss seguro, no falso positivo). Salvaguarda de cero-falsos-positivos: tipo desconocido o
  struct sin campos registrados → no valida nada, el tipado gradual queda intacto.
- **semantic**: los warnings dejaban de existir bajo `NYX_DIAG=json` — se suprimían enteros,
  así que el mejor mensaje del compilador (el nuevo NYX1017 incluido) era invisible para
  cualquier agente que consumiera el diagnóstico estructurado. Ahora salen como NDJSON con
  `"severity":"warning"` (sin campo `code`, a diferencia de los errores), mismo esquema y
  escapes; el modo texto queda bit-a-bit idéntico, y sólo se emiten en compilaciones válidas,
  como antes.
- **parser**: el catch-all de `parse_primary` emitía `print("ERROR: token inesperado en
  primary")` sin contarlo — un binario que compilaba mudo con exit 0. Ahora es `NYX0107`,
  contado, bilingüe, con el token real (valor y tipo) y línea/columna exactas vía `peek()`
  (mismo patrón que el `NYX0105` vecino, más preciso que el `g_last_*` stale del `NYX0106` de al
  lado). `docs/SPEC.md` ganó las filas `NYX0106` (faltaba en el catálogo) y `NYX0107`, y la doc
  de `severity` dejó de afirmar "always error today".

### Added
- Tests: 5 nuevos en `tests/compiler/errors/` (field-access-typo, field-access-typo-fncall,
  field-assign-typo, self-field-typo, parse-primary-unexpected) + una entrada NDJSON que fija
  `NYX1017` bajo `NYX_DIAG=json` (errors 203→211).
- Script nuevo `scripts/testing/run_silent_failure_checks.sh`: 3 checks con control positivo
  real (campo alucinado por dos vías + warning visible en NDJSON), cableado a
  `make test-ai-first`.

### Known
- Una función libre (no método de `impl`) con parámetro llamado `self` Y una anotación de tipo
  real (`fn toma(self: Usuario)`) no queda cubierta: la rama nueva bindea al self-type
  top-level en vez de resolver la anotación explícita, así que `self.campo_malo` ahí sigue
  pasando `semantic` mudo. No es una regresión — antes de esta versión tampoco se validaba
  nada en ese camino. Catalogado en `TASKS.md` junto con el miss documentado de `impl`
  genéricos sin self-type binding.

## [0.22.19] — 2026-07-27

**La verdad de los gotchas**: de 21 advertencias a 1 trampa real.

`LLM.md` es lo único que una IA sabe de Nyx — el lenguaje no existe en ningún corpus de
entrenamiento — así que una advertencia falsa cuesta tanto como un bug. Una auditoría con
sonda ejecutable por gotcha midió que de los 21 documentados, **4 mentían** (describían
fallas que ya no ocurrían), **6 no eran advertencias** sino aclaraciones de que algo
funciona, y sólo **3 eran bugs vivos**. Un quinto falso apareció al intentar escribir su
test. Los tres bugs reales se arreglaron.

### Fixed
- **parser**: `let m: Map = {1: "uno"}` (clave no-string en map literal) compilaba con exit 0
  y producía un binario que **no ejecutaba nada**, ni el `print` siguiente. `parse_primary`
  sólo reconocía el map literal con lookahead STRING+COLON y el resto caía a un fallback que
  imprimía el error **sin contarlo**. Ahora es `NYX0106`, contado y accionable.
- **codegen**: los Maps anidados daban **SEGV al leerlos**, un gotcha documentado desde hacía
  meses como "usá claves planas" y nunca investigado. La causa no era de memoria sino de
  tipos: un Map como valor baja al mismo `i8*` que un String ya convertido a cstring, y el
  `get` lo pasaba por `nyx_string_from_cstr`, leyendo memoria de struct como texto.
- **codegen**: una lambda-que-captura y una nested-fn-que-captura **no podían coexistir** en
  la misma función; la segunda perdía su entorno. Causa de una línea: `pre_scan_closure_env`
  cortaba el scan de locals en la primera nested fn, con un comentario que declaraba la
  limitación como intencional. Este gotcha, sobre-generalizado como "capture is BROKEN", le
  costó a un usuario escribir un navegador de 2.400 líneas **sin un solo callback**.
- **codegen**: un `float` sin anotar en una función con closure dejaba de compilar tras el
  fix anterior — `infer_nyx_type_from_ast` ahora deduce el tipo de un binop aritmético.
- **make**: `install-local` no copiaba `LLM.md`, así que la doc corregida **nunca llegaba** a
  `~/.nyx` ni a los proyectos creados con `nyx init`.

### Added
- **Guardia anti-mentira**: `make test-ai-first` falla si un ítem de `LLM.md` §5.1-5.2 no
  cita el test que lo respalda, si la cita apunta a un archivo inexistente, o si queda un
  test huérfano. Los tres modos verificados con control positivo — más la guarda de que sin
  `LLM.md` legible no puede reportar éxito.
- Tests: `test-314` (Maps anidados), `test-315` (coexistencia de capturas),
  `test-map-literal-nonstring-key`, y los ai-first `13`/`14`.

### Changed
- `LLM.md` §5 pasa de una lista plana de 21 a cuatro secciones con semántica distinta:
  **1 trampa**, 6 reglas del lenguaje, 2 límites de plataforma, 8 ya-arreglados.

### Known
- Maps anidados: el fix es heurístico. Un Map que viene del **retorno de una función** no se
  detecta y sigue rompiendo; el map externo debe ser homogéneo y el interno exige binding
  tipado. Documentado con esa precisión.

## [0.22.18] — 2026-07-26

Los arrays que arma el **runtime C** llevan tag, y el tag **se propaga** entre arrays.

### Fixed
- **runtime (7 archivos C, 50 sitios)**: `split`, la request de `http_serve`, `stat`, `pipe`,
  las claves de Map, `read_dir`, `read_bytes` y los headers/frames de HTTP/2 construían arrays
  con todos los slots **sin tipo** — `"x " + partes[0]` imprimía el **puntero**. El workaround
  (anotar `Array<String>`) no servía para los layouts heterogéneos: `stat` devuelve
  `[int,int,int,bool,bool]`. Ahora cada constructor escribe el tag que ya conocía.
- **codegen**: `dest.push(src[i])` **propaga el tag** del slot de origen en runtime — re-pushear
  un String a otro array perdía el tipo. Restringido a índices sin efectos secundarios (literal
  o identificador); con `src[f()]` no se propaga antes que evaluar `f()` dos veces.
- **codegen**: `unshift` e `insert` no tagueaban (solo `push` lo hacía) — `unshift("s")` sobre un
  Array vacío quedaba sin tipo. Ahora re-escriben el slot con `set_tagged`.

### Changed
- **semantic**: el warning E1 se **re-acota por tercera vez**, ahora al residuo medido: un slot
  que vino de indexar una **expresión** (`dest.push(gen()[0])`), único caso donde propagar el tag
  exigiría re-evaluar la llamada. El mensaje lo dice explícitamente en vez de culpar al runtime C.
- **Sin tag a propósito** (documentado en el código): los valores de Map y los slots del iterador
  son `i64` opacos — su tipo vive en el origen, afirmarlo ahí sería adivinar.

### Docs
- **`LLM.md` gotcha 19 corregido** (fricción C4, ciclo `nyx report --send`): decía que la captura
  de locals estaba "BROKEN outside the happy path" y empujaba a guardar el estado de los callbacks
  en globales — un usuario escribió un navegador de terminal entero **sin un solo callback** por
  ese consejo. Los cuatro caminos que citaba funcionan. El límite real, medido y ahora
  documentado: una lambda-que-captura y una nested-fn-que-captura **no coexisten** en la misma
  función (la segunda pierde su entorno; es simétrico, y da error de compilación, no resultado
  silencioso). Blindado en `tests/ai-first/12-closure-capture-paths.nx`.

### Known
- `dest.push(gen()[0])` sigue perdiendo el tipo (es lo que E1 avisa). Cerrarlo requiere que
  `codegen_index` devuelva valor+tag juntos — cambio de contrato de retorno, catalogado.
- **Maps anidados siguen dando SEGV al leerlos** (`outer.get("i")` de un Map insertado) — estaba
  en LLM.md como gotcha 15 pero nunca catalogado; ahora sí, con repro. Workaround: claves planas.


## [0.22.17] — 2026-07-26

Lectura tipada de slots CHEQUEADA — cierra el último criterio de la spec de slots-tag
("lectura de slot con tipo equivocado diagnosticada").

### Fixed
- **codegen + runtime**: `print(a[i])` inline sobre un Array sin tipo de elemento consultaba el
  slot como i64 crudo — un float imprimía su **bit-pattern** (`4.6e18` para 1.5) y un String el
  **puntero**. Ahora consulta el tag (mismo mecanismo que la concatenación de la Etapa 3).
- **codegen + runtime**: `let f: float = a[i]` de un slot que guarda bits de double los pasaba por
  `sitofp` (basura). Ahora el runtime decide por tag: FLOAT → bits; INT/BOOL/UNKNOWN → **widening
  numérico histórico** (`1` → `1.0`, se preserva — NO es error); String → abort diagnosticado.
- **codegen + runtime**: `let s: String = a[i]` de un slot int era **SEGV** (inttoptr del entero).
  Ahora un mismatch definido (slot int/float/bool leído como String) **aborta ordenado** con
  mensaje accionable (slot, tipo real, valor, sugerencia de conversión). `NYX_SLOT_CHECK=off`
  lo desactiva (escape hatch, espejo de NYX_BORROW).

### Changed
- **Política de tagueo MEDIDA, no especulada**: un `i64` solo se taguea INT cuando el elemento es
  un **literal numérico** en el AST (literales de array y push). La política previa (todo i64 →
  INT) tagueaba punteros re-empacados (`[node.data[0], x]`) y hacía abortar en falso la lectura
  chequeada — **medido: 9 de los 11 módulos del compilador abortaban al recompilarse**; con la
  política conservadora el fixed point ×2 es byte-idéntico con el gating activo.

### Known
- El chequeo cubre `let` anotado (String/float) sobre receiver identificador; `var x: String =
  a[i]` y receivers de expresión siguen por el camino histórico (catalogado).
- Un int que viaja por una VARIABLE (`let n = 42; a.push(n)`) queda UNKNOWN → una lectura String
  de ese slot sigue siendo el SEGV histórico (el tag no puede afirmarse sin riesgo de falso
  positivo; ficha raíz en TASKS.md).


## [0.22.16] — 2026-07-26

Cierre de **slots-tag**: Etapas 4 y 5 de 5 (spec:
`docs/design/specs/2026-07-26-array-slots-tag-design.md`).

### Fixed
- **runtime + codegen**: `contains`/`indexOf` con un needle **String** comparan por **CONTENIDO**
  (`nyx_string_equals`) los slots tagueados como String — antes comparaban punteros, así que dos
  strings iguales construidas por vías distintas no matcheaban. La identidad cruda se chequea
  primero (ints intactos, mismo puntero sigue matcheando) y un slot sin tag jamás se dereferencia.
  Funciona en el camino bindeado Y encadenado, y en arrays heterogéneos. (test-312)
- **codegen**: `f().indexOf(s)` (encadenado) con needle String emitía **IR inválido** — ese camino
  ni coercionaba el puntero. Cazado por el TDD de la etapa.
- **runtime**: invariante nuevo — **"tags[i] describe siempre a data[i]"**. `insert`/`remove`/
  `shift`/`unshift`/`reverse` movían los datos SIN mover los tags, y `push`/`set` no limpiaban el
  tag del slot que escribían: un tag String huérfano sobre un slot int era un **SEGV latente**
  desde la Etapa 3. Ahora los movimientos llevan los tags en paralelo y toda escritura sin tipo
  resetea a UNKNOWN.

### Added
- **codegen**: `push` con argumento estáticamente String **taguea el slot** — pieza de la Etapa 2
  que faltaba; sin ella la comparación por contenido solo funcionaba en arrays nacidos de literal.

### Changed
- **semantic**: el warning E1 (`"s" + arr[i]` con Array pelado) pasó de certeza a **condicional
  honesto**: desde las Etapas 1-4 el caso común funciona (slots tagueados); el residuo son los
  arrays armados por el runtime C (slots sin tag). Se retirará cuando esos constructores tagueen
  (catalogado en TASKS.md).

### Known
- La **lectura tipada** de un slot con tipo equivocado sigue sin diagnóstico (verificado contra
  este HEAD): `a.push(42); let s: String = a[0]` → SEGV; `a.push(1.5); print(a[0])` → bit-pattern.
  Cerrarlo = extender el consumo del tag a esos contextos + push tagueando float/bool/int
  (ficha raíz en TASKS.md, sesión propia).
- `http_parse_url` ya retorna slots tagueados (literal Nyx) — la migración a struct real queda
  como follow-up de ergonomía, no de corrección.


## [0.22.15] — 2026-07-26

Arranque de **slots-tag**: los slots de Array llevan etiqueta de tipo. Etapas 1-3 de 5
(spec: `docs/design/specs/2026-07-26-array-slots-tag-design.md`).

### Fixed
- **codegen + runtime**: `"x" + a[1]` imprimía el **puntero como número** mientras `a[1] + "y"`
  funcionaba — el mismo valor con dos resultados según el orden de los operandos, porque el
  compilador *adivinaba* qué contenía cada slot y adivinaba distinto de cada lado. Ahora cada slot
  lleva su tipo y la conversión lo consulta. Un array heterogéneo (`[1, "dos", 3.5, true]`) se lee
  correctamente en sus cuatro elementos. (f16fbeb, test-311)
- **runtime**: la familia `_ptr` de `runtime.c` era una **segunda implementación de arrays** que
  construía el struct a mano y hacía su propio resize; ahora delega en la única, así que no puede
  volver a desalinearse con ella. Los literales de array se construyen por esa vía.

### Added
- **runtime**: buffer de tags **paralelo** a los datos (`push_tagged`/`set_tagged`/`get_tag`).
  `data` no cambia de layout, así que siguen válidos los accesos crudos de `maps.c`/`persist.c`/
  `file-io.c` y los serializadores. Un slot sin taguear conserva el comportamiento previo.

### Known
- `contains`/`index_of` sobre arrays de String siguen comparando punteros (lo cierra la Etapa 4).
- `"x" + m["k"]` (concatenar con índice de **Map**) no compila — **preexistente**, verificado
  retrocediendo 3 commits; esta etapa lo destapó, no lo causó. Catalogado.
- La inferencia de `Array<T>` mira **solo el primer elemento** del literal, así que `[1,"dos"]` se
  registra como `Array<int>`. Es la causa próxima del gotcha; los tags le ganan en la concatenación,
  pero la inferencia sigue siendo incorrecta en otros caminos. Catalogado con propuesta de fix.


## [0.22.14] — 2026-07-26

### Changed (cambio de contrato del compilador)
- **codegen**: un método NO reconocido sobre un receiver ya no compila devolviendo `0` en
  silencio — ahora es un error de compilación con diagnóstico accionable (nombra el método y el
  tipo del receiver, aclara que antes evaluaba a 0, sugiere bindear el receiver y apunta a
  CAPABILITIES.md). Era la causa **estructural** de una familia de bugs silently-wrong con al
  menos 3 apariciones en el repo: `f(x).length()` sobre Array (v0.22.13), `obj.campo.remove(k)`
  como no-op (test-274) y `to_string` sobre primitivos (dogfooding WASM).
  **Medido antes de aplicarlo**: con el error activo, regresión 330/330, errors y los 6 stacks
  quedan verdes — cero rutas legítimas del corpus dependían del fallback. Si tu código deja de
  compilar por esto, antes estaba evaluando a 0 sin avisarte.

### Known
- `contains` sobre un `Array` está roto en ambos caminos (hallazgo colateral del experimento): el
  codegen lo despacha por la rama de Map y emite IR inválido, pese a que el runtime ya tiene
  `nyx_array_contains`. Catalogado en TASKS.md con el diagnóstico completo.


## [0.22.13] — 2026-07-26

### Fixed
- **codegen**: los métodos de `Array` encadenados sobre el retorno de una función
  (`f(args).length()`) compilaban sin error y devolvían 0 — el camino de receiver-expresión no
  tenía ninguna rama de Array y caía a un catch-all mudo. Ahora funcionan `length`, `indexOf`,
  `join`, `reverse`, `slice`, `push`, `pop`, `shift` y `unshift`, igual que sobre una variable
  bindeada. `reverse`/`push` conservan su contrato void + mutación in-place para no divergir
  según cómo se los invoque. (f68fde4, test-309)

### Known
- `contains` encadenado sobre un retorno `Array` sigue devolviendo 0 — bindear primero (gotcha 24
  de LLM.md). El catch-all mudo que causa esta familia de bugs queda catalogado para una sesión
  dedicada, con el método de medición correcto anotado en TASKS.md.


## [0.22.12] — 2026-07-25

Cosecha [dogfooding:friction-portscan] — los 2 P1 del escáner de red.

### Fixed
- **resolver**: `import "std/prelude" as p` dentro de un submódulo daba link error
  `use of undefined value '@p'`. No era codegen: `resolve_source` tiene dos loops que procesan
  imports y no eran simétricos — el del archivo principal emite el `module <alias> = [...]`
  siempre, el transitivo solo lo hacía para módulos no importados, y prelude viene auto-cargado
  y pre-registrado, así que el alias nunca se declaraba. (5873f51, test-308)
- **pm**: `nyx run` en modo proyecto descartaba los argumentos del programa — ejecutaba el
  binario pelado, así que `get_args()` solo veía argv[0] ni con `--`. Ahora los reenvía,
  consumiendo los flags propios del PM y tratando como literal todo lo posterior a `--`. Los
  args se citan en comillas simples POSIX: `exec_code` va por `system()`, así que sin citado un
  arg con espacios se partía y uno con `;` se ejecutaba. (b06000a)

### Changed
- **pm/wrapper**: `nyx run --help` muestra la ayuda del comando sin compilar (convención
  cargo/npm; `nyx run -- --help` se lo pasa al programa) y `nyx help [cmd]` dejó de buscar un
  archivo llamado "help".


## [0.22.11] — 2026-07-25

Cosecha [dogfooding:friction-browser] A2 + A3 + B3 — **cierra la cosecha completa del navegador**
(A, B, C y D).

### Fixed
- **compiler (nyx/lexer/parser/semantic/codegen)**: dos módulos con una global homónima (`var g` en
  cada uno) no linkeaban. El link error era la mitad visible: el registro de globales se keyea por
  nombre pelado, así que el segundo módulo inlineado PISABA al primero y las fns del módulo A
  leían/escribían la global de B (scoping roto y silencioso). Como `resolve_source` inlina los
  imports y el AST no conservaba el módulo de origen, el fix propaga un marcador nuevo por el
  pipeline: `//#module <path>` → token `MODULE_MARKER` → nodo `module_marker` (contrato ASTNode
  intacto) → codegen emite `@<modulo>__<global>` y re-afirma por módulo al entrar a cada función.
  Las globales del archivo principal quedan peladas: cero cambio de IR para lo no importado.
  (6b9d08e, test-306)
- **semantic + codegen**: el literal `0` es ahora la constante de puntero nulo, asignable a
  cualquier `*T` — antes NO había forma de expresar un puntero nulo (ni global ni local), así que un
  handle no podía vivir en una global vacía y abrirse después. Solo el 0 exacto: cualquier otro
  entero sigue siendo NYX1003. (test-307)
- **driver**: el banner imprimía "v0.21.0" hardcodeado con toolchain v0.22.x — el usuario no sabía
  qué versión citar al reportar. Ahora lee el archivo `VERSION`, como el resto del toolchain. (B3)


## [0.22.10] — 2026-07-25

Cosecha [dogfooding:friction-browser] D6 — cliente HTTP: headers repetidos + docs. Cierra la
cosecha del navegador (D1-D6).

### Added
- **std/http**: `http_find_headers(headers, name) -> Array` — TODOS los valores de un header
  en orden de aparición, matching case-insensitive (RFC 9110; los servers HTTP/2 mandan
  `set-cookie` en minúscula). Set-Cookie repetido ya no pierde cookies (Wikipedia manda 6; el
  singular devolvía solo la primera). El singular `http_find_header` queda intacto
  (exact-match, primer valor — contrato legacy ahora documentado). (test-305)

### Docs
- **std/http**: `http_get`/`http_request` documentan que NO siguen redirects 3xx (el caller
  decide con Location); `http_parse_url` documenta su layout Array MIXTO con tipos por slot
  (leer port/secure como String = SEGV — el fix real sigue siendo Array-slots-tag, diferido).

### Known (colateral cazado escribiendo el test, catalogado P1)
- `f(args).length()` encadenado sobre el retorno `Array` de una user fn devuelve 0 SILENCIOSO
  — bindear a una variable primero. TASKS.md + gotcha 24 de LLM.md. Familia slots-sin-tag.


## [0.22.9] — 2026-07-25

Cosecha [dogfooding:friction-browser] D4 + D5 — columnas de terminal y encodings legacy.

### Added
- **std/unicode**: `wcwidth(codepoint)` (contrato wcwidth(3)/Kuhn: NUL→0, controles→-1,
  combinantes/zero-width→0, East Asian Wide/Fullwidth + emoji→2, resto→1; tablas curadas —
  rangos raros degradan a 1, nunca crash) y `display_width(s)` (columnas de terminal de un
  String: decodificador UTF-8 propio + suma de wcwidth; controles 0, bytes malformados 1
  columna por byte). `char_length()` cuenta codepoints; esto cuenta COLUMNAS — las TUIs con
  CJK/emoji dejan de desalinear. (0093dc4, test-303)
- **std/unicode**: `latin1_to_utf8` (ISO-8859-1 → UTF-8, byte→codepoint 1:1, total) y
  `windows1252_to_utf8` (tabla cp1252 en 0x80-0x9F — comillas tipográficas, guiones, €, ™;
  slots indefinidos pasan como C1, semántica WHATWG de browsers). Páginas legacy dejan de
  verse como mojibake. (test-304)


## [0.22.8] — 2026-07-25

Cosecha [dogfooding:friction-browser] D2 + D3 — codepoints y entidades HTML de punta a punta.

### Added
- **std/unicode** (módulo NUEVO): `utf8_encode(codepoint) -> String` — codifica cualquier
  codepoint Unicode a sus 1-4 bytes UTF-8 (`chr()` es byte-level; esta es la mitad codepoint
  que faltaba). Función total: negativo / > U+10FFFF / surrogates → U+FFFD, la semántica que
  HTML da a referencias numéricas inválidas. Hogar futuro de wcwidth (D4) y conversiones de
  encoding (D5). (94419b8, test-301)

### Fixed
- **std/url**: `html_unescape` reescrito como scanner de pasada única — el encadenado de
  `replace()` anterior doble-decodificaba (`&amp;lt;` → `<` en vez de `&lt;`) y no soportaba
  referencias numéricas (`&#233;` / `&#xE9;` quedaban crudas, la fricción real del navegador).
  Ahora: numéricas dec/hex vía `utf8_encode` (inválidas → U+FFFD, clamp anti-overflow), tabla
  curada de ~50 entidades nombradas (antes 7), y lo malformado/desconocido queda literal como
  en los browsers. `std/url` importa `std/unicode`. (test-302)


## [0.22.7] — 2026-07-25

Cosecha [dogfooding:friction-browser] D1 — descompresión gzip/deflate para HTTP.

### Added
- **std/compress**: `inflate(data)` (auto-detecta zlib/gzip), `gunzip(data)` (gzip explícito,
  para `Content-Encoding: gzip`) e `inflate_raw(data)` (raw deflate) — descompresión por
  streaming vía zlib (`inflateInit2`, sin necesidad del tamaño original, binary-safe, "" si
  falla). Desbloquea clientes HTTP reales; el usuario del navegador puede jubilar su inflate
  propio de ~400 líneas. (aa66abd)

### Fixed
- **runtime/compress**: la llamada a `inflate` de zlib desde el runtime colisionaba con el
  símbolo global sin mangle `@inflate` que el codegen emite para `pub fn inflate` → el stub Nyx
  ganaba el link y `nyx_inflate` se llamaba a sí mismo (parecía loop infinito). Resuelto vía
  `dlopen("libz.so.1")` + `dlsym` (patrón sqlite_adapter). Landmine general de símbolos
  catalogada para fix a nivel compilador. (aa66abd)


## [0.22.6] — 2026-07-25

Cosecha [dogfooding:friction-browser] A7 + A8 — dos fallos SILENCIOSOS de tipos/aridad.

### Fixed
- **codegen**: `let r = match v { ... => "str" }` SIN anotación de tipo imprimía el puntero del
  String como número — `infer_nyx_type_from_ast` no tenía caso para `match`, así que el destino
  caía a int. Ahora infiere el tipo de la expresión match por sus ramas (primera rama inferible,
  block-arm por su última sentencia). Fixed point global. (580593b, test-298)
- **semantic**: los métodos builtin de String aceptaban argumentos DE MÁS en silencio
  (`s.startsWith("hola", 99)` → true ignorando el 99; `s.trim(42)` → sin error). Ahora una tabla
  de aridad máxima rechaza el exceso con NYX1006 (mismo código que las user-fns), preservando el
  overload legítimo `indexOf(needle)`/`indexOf(needle, from)`. (6070dba, test-299 + 3 error tests)


## [0.22.5] — 2026-07-25

### Fixed
- **codegen (P0, afecta a TODO programa Nyx)**: `alloca` de un `let`/`var`/variable de `for-in`
  declarado DENTRO del cuerpo de un loop se emitía en el bloque del cuerpo, no en el entry —
  LLVM solo lo libera al retornar la función → ~16 bytes de stack filtrados por iteración →
  **stack overflow / SIGSEGV** en loops largos (~500k vueltas con stack de 8MB; solo a -O0,
  que es como linkea `nyx run` — por eso las suites -O2 nunca lo vieron). Diagnosticado como
  "corrupción de heap" en el reporte (A9 friction-browser); resultó ser el stack. Fix:
  `llvm.stacksave`/`llvm.stackrestore` reclaman los allocas de cada vuelta en while/for
  (range/iterator/array)/while-let. Sound: los valores que escapan del loop se copian al heap
  GC antes de guardarse (verificado en IR) → stackrestore nunca cuelga un escape bien-definido.
  Inerte a -O2 (mem2reg elimina el par). Fixed point global byte-idéntico. (61b9821, test-297)

- **runtime (SIGWINCH)**: `read_byte_timeout(-1)` ahora despierta con SIGWINCH — `raw_mode_enter`
  instala un handler no-op señal-safe (sin pisar el del usuario, sin SA_RESTART) → poll()
  recibe EINTR y retorna -2 en resize. La promesa de LLM.md §4 se vuelve verdad. (c668a78, C1)

### Changed
- **pm**: el AGENTS.md que genera `nyx init` apunta a https://nyxlang.com/by-example/ (el
  directorio local no existía) con salida offline vía `nyx capabilities`. (8fcda34, C2)
- **pm**: `nyx capabilities` ahora indexa `std/regex` (sus fns son builtins — se agregaron
  wrappers de índice pub); `map_size` retirado del índice hasta arreglar su bug de tamaño.
  (dddc9cd/e230267, C3)


## [0.22.4] — 2026-07-25

Cosecha [dogfooding:friction-browser] A1 + B1 + B2 — los dos P1 AI-first del reporte del
navegador y la ambigüedad de parser que los disparaba.

### Fixed
- **parser**: struct-literal ya no se parsea en posición de cabecera (`if`/`while`/`for`/
  `if let`/`while let`, estilo Rust/Go) — `if b { }` con then vacío se comía el bloque como
  struct-init (`b {}`) y moría con NYX0101 en el else. El flag se apaga dentro de los 4 grupos
  delimitados (parens, call-args, índice, array-literal). (0a2a768, test-296)
- **pm/wrapper**: `nyx run archivo.nx` YA NO traga los diagnósticos — el wrapper redirigía
  compilador+clang a /dev/null; ahora el log fluye a stderr (texto y NYX_DIAG=json NDJSON,
  espejo de nyx build) con exit≠0 conservado. Era "el problema que más tiempo consumió" del
  reporte. (a77b317, 3 tests del wrapper real)

### Added
- **pm/wrapper**: `nyx run archivo.nx` deduce el proyecto subiendo hasta nyx.toml (como
  nyx build) — los `import "src/..."` resuelven sin NYX_PROJECT_DIR; nunca pisa un env
  explícito; fuera de proyecto sigue igual. (eb78979)

### Notas
- Catalogados: `match p {}` vacío hereda la ambigüedad struct-init (pre-existente);
  field-access sobre struct-literal temporal devuelve 0 (gap de codegen).


## [0.22.3] — 2026-07-25

Cosecha [dogfooding:friction-browser] A4-A6 — los 3 bugs de compilador/runtime del reporte
del navegador de terminal (usuario anónimo, ~2.400 líneas de Nyx), resueltos en <48h.

### Fixed
- **parser**: el lookahead del turbofish cruzaba límites de sentencia — `while i < xs.length()`
  seguido de CUALQUIER `>` posterior en el archivo se parseaba como type-args fantasma
  (NYX0101 "en línea lejana"). Bound monotónico: el escaneo aborta ante el primer token
  ilegal en una lista de tipos (whitelist verificada token a token contra la gramática;
  por construcción no puede romper turbofish legítimo). (885cf65, test-294)
- **runtime**: `chr(0)` colapsaba a `""` (path C-string) — construir Strings binarios por
  concatenación perdía los NUL en silencio. `nyx_string_from_char` ahora construye con
  longitud explícita; cubre `chr()` y `String + i8/u8`. (5076734, test-295 + ai-first/11)
- **runtime/GC**: agotar el heap de Boehm producía SIGSEGV seco (GC_malloc → NULL → deref sin
  check en strings.c, probado por core dump). Ahora `GC_set_oom_fn` (instalado por constructor)
  aborta ORDENADO con mensaje bilingüe y exit(1) — cualquier alloc site queda cubierto.
  Shim wasi actualizado (no-op). Test determinista por fork con cap de heap. (46bbc3a)

### Notas
- Hallazgo separado catalogado: `nyx_runtime_init` es código muerto — el cap de 512MB del GC
  nunca estuvo activo en ningún binario; activar un techo = decisión aparte (tuning disponible
  hoy vía env `GC_MAXIMUM_HEAP_SIZE`).
- `write_file` no es binary-safe (ABI char*) — catalogado (hallazgo colateral de A5).


## [0.22.2] — 2026-07-24

### Fixed
- **exec() honra su contrato String** (fricción de usuario real, reportada 3 veces): capturaba
  NADA y devolvía el exit code como i64 tipado String → SEGV con exit≠0, "" silencioso con
  exit 0. Ahora `exec(cmd) -> String` captura stdout vía popen (binary-safe, strip de newlines
  finales estilo `$()`, "" si no se pudo ejecutar, stderr pasa a la terminal) y el nuevo
  `exec_code(cmd) -> int` devuelve el exit code (comportamiento previo). Callers del toolchain
  migrados (build/test/playground); `let x: int = exec(...)` ahora es ERROR de compilación
  accionable (antes miscompile silencioso). Tests: ai-first nuevo + regression + 58 asserts C.
  (9d60422)


## [0.22.1] — 2026-07-23

Campaña "revisión de pendientes 2026-07-23" — bug fixes del core + saneamiento documental.

### Fixed
- **std/web**: `req_json` leía un shape de `json_parse` que nunca existió (lista de pares vs
  arrays paralelos keys/vals) → "Array es NULL"/SEGV en runtime desde su creación. Reescrito
  sobre `parsed[1]`/`parsed[2]` (patrón `json_get`). Primer test que lo ejercita (test-290). (2ac3064)
- **driver**: el binario crudo ignoraba argv y compilaba un fuente ausente/vacío como "✓" exit 0.
  Ahora: argumento desconocido → error bilingüe + hint del CLI wrapper + exit(1); fuente
  inexistente o vacía → error bilingüe + exit(1). Tests test-driver-unknown-arg /
  test-driver-missing-source (errors 188→190). (df886b9)
- **fmt**: `fmt_trait` leía d[1] (supertraits) como si fueran las firmas — **segfault** con
  cualquier trait con supertrait — y dropeaba los bodies de default methods; `fmt_impl_trait`
  perdía los assoc types. Ahora: supertraits en el header, `type X = C` emitidos, bodies de
  default methods, filtrado de __assoc_type__ (GAT params preservados). 2 fixtures round-trip
  nuevos (idempotencia + recompilación). (e38a56b)
- **parser**: `#[affine] pub struct` caía a un error-node SILENCIOSO (sin p_diag) → el struct
  desaparecía y el drop determinista se perdía sin diagnóstico (gap catalogado 2026-07-17,
  esquivado por std/llm). Rama PUB en el dispatcher de atributos (emite export+attr, codegen/
  borrow ya lo consumían) + fallback contado. (5cb21e5)
- **codegen**: nested fns homónimas en outers distintos colisionaban al linkear
  ("invalid redefinition"). Mangle transversal `<outer>__<inner>` en define/registro/resolución.
  (2acfd7c; scope: la colisión — captura de Fn-value fuera del outer sigue catalogada)

### Removed
- **codegen**: `ctx.meta_buffer` (metadata DWARF huérfana — nunca emitida ni referenciada;
  los attribute-groups reales ya se emiten inline). IR de usuario byte-idéntico. (a6d59f9)

### Docs / proceso
- TASKS.md saneado: cerradas con evidencia char_substring (E2), cripto Web Push (0.20.0),
  sig_lookup O(1) (D4); el follow-up del warning E1 investigado y DESCARTADO con evidencia
  (los contextos tipados ya post-coercionan; FP permanente vía prelude); colas stale de
  deploys/PERSIST actualizadas; 4 ítems grandes anotados como sesión dedicada. (5ccdafa)
- CLAUDE.md 78K→37K (bitácoras → docs/SESSION_LOG.md restaurado y fusionado); agentes y
  skills de .claude/ reparados (frontmatter/formato directorio). (93f7609, f6bc5e7, 47a1229)
- Paths de la migración de layout ~/nyx/ en deploy/ y scripts/. (d840977)


## [0.22.0] — 2026-07-22 — MINOR: campaña integral — SCAN cursor-estable + borrow sin deuda + warnings + codepoints

Campaña integral de pendientes (fases A–F, autorizada por Ottavio; plan
`docs/design/plans/2026-07-21-campana-integral-pendientes.md`). Temas: la garantía
de iteración de Redis hecha real en el core, el borrow checker sin casos unsound ni FP
conocidos, la primera infraestructura de warnings del semantic, y substring por
codepoints sin romper el contrato bytes.

### Added — runtime / builtins
- **`map_scan(m, cursor)` — iteración cursor-ESTABLE ante resize** (dictScan de Redis,
  reverse-binary por HOME bucket, adaptado a Robin Hood open addressing): una key
  presente durante todo el scan aparece ≥ 1 vez aunque el Map se redimensione a mitad.
  `nyx_map_scan`/`nyx_map_scan_page` + builtin; base del SCAN Redis-equivalente de
  nyx-kv (criterio verificado: 100/100 corridas de `scan_iter` con writer concurrente
  forzando resizes, 0 keys perdidas). (be5ff7a)
- **`s.char_substring(from, to)` — substring por CODEPOINTS UTF-8** (aditiva; el
  contrato "strings = bytes" v0.14 NO cambia): [from, to) en codepoints con clamps,
  espejo de `substring`. (48e1c74)

### Added — semantic
- **Primera infraestructura de WARNINGS no-fatales** (`sem_warn`; modo texto — bajo
  `NYX_DIAG=json` se suprimen). Primer usuario: concatenar `arr[i]` de un `Array` SIN
  tipo de elemento con un String avisa (el slot i64 crudo se lee sin tag y codegen
  adivina) y sugiere el idiom `Array<T>` / binding tipado. (9810b98)

### Fixed — borrow checker / T4c (FASE D: sin deuda conocida)
- **Doble-drop de `x.drop()` explícito RESUELTO** — era el ÚNICO caso unsound de T4c:
  un método de receiver `self` PLANO sobre un local afín-con-Drop apaga el drop flag
  del caller en el call-site (semántica de move, igual que un arg by-value); `&self`
  es el modo nuevo "ref" (presta, no consume). (189fbf5)
- **`&mut self.f = &x` ahora marca NYX1222** (el receiver viaja por puntero) y
  **`*p = &x` a través de un ptr-param** gana el check del vector B en `deref_assign`.
  `self` plano/`&self` no marcan (bajan a copia). (f1b3b90)
- **FP de capturas en lambdas MUERTO**: las capturas son una tercera categoría de
  lifetime (slot 6 del tmap — viven en el SharedEnv: ni sobreviven-al-frame ni
  frame-bound), heredadas SOLO fn→fn-anidada. **`while_let` ganó handler**: su body
  ahora se borrow-checkea. (8736676)
- **Registro de firmas inter-proc Array→Map** — `sig_lookup` O(1) por call-site. (0849de8)
- **Gate de auto-conformidad v1.0 VERDE**: `NYX_BORROW=error` sobre los 16 módulos del
  compilador + std/owned/llm/arena → 0 diagnósticos.

### Fixed — codegen (FASE A, sesión 2026-07-21)
- Backlog completo de bugs con repro: `Map.remove()` sobre field-access, coerción
  let-enum, match block-arm que perdía el valor, combinators Option/Result con payloads
  tipados, bindings `Fn` de patrones match, fn nombrada cross-module como arg Fn,
  `fn run()` de usuario vs desugar de spawn, pre_scan de structs capturados. El
  framework VDOM (std/vdom, std/component) quedó SIN workarounds. (test-274..281)

### Stacks (repos propios, mismos días)
- **nyx-kv**: SCAN cursor-estable adoptado; follow-ups del review (cap de bytes en
  MULTI, TTLs inválidos → error como Redis, fsync del dir padre post-rename, métricas
  sin inflar); política PERSIST cerrada; pestaña Friction del dashboard; backup diario
  rotado del namespace admin; fix del login (vendor stale). DESPLEGADO.
- **nyx-serve**: flaky WS resuelto (era del harness — coalescing TCP) + `req[5]==413`
  adoptado en el keep-alive.
- **nyx-db**: lock global del executor → RWLock — lecturas concurrentes 232→390 q/s
  (~1.68x, medido).

### Tests
- Regression **305** (ARM64) · errors **185/0** · runtime **18 suites / 772 asserts** ·
  compiler **539**. Fixed point verificado en cada commit de compilador.

---

## [0.21.0] — 2026-07-21 — MINOR: primitivos de runtime + strings binary-safe + LLM bindings + frontend VDOM/router

121 commits desde v0.20.1, agrupados (autorizado por Ottavio). Temas: primitivos de
concurrencia/durabilidad/red que los stacks venían pidiendo por dogfooding, el contrato
"strings = bytes" hecho REAL en toda la familia de búsqueda, la primera ruta de
inferencia LLM (llama.cpp), y el frontend WASM completo (VDOM + router + SPA).

### Added — runtime / builtins
- **Condition variables**: `condvar_new/wait/signal/broadcast/timedwait` (pthread,
  CLOCK_MONOTONIC; timedwait → 0 señalado / 1 timeout). (e7ead96)
- **RWLock** multi-reader/single-writer: `rwlock_new/rdlock/wrlock/tryrdlock/trywrlock/
  unlock/destroy` (try* → 0/1; NULL-safe). Habilita lecturas concurrentes en nyx-db
  (adopción = sesión del stack). (5c87329)
- **`fsync(fd)` / `fdatasync(fd)`**: durabilidad real de I/O — sin esto el WAL/snapshot
  de los stacks era ilusorio ante corte. (0a5a052)
- **TLS no-bloqueante**: `tls_wait_readable(h, ms)` (SSL_pending + poll; POLLIN antes
  que HUP) y `tls_read_nonblock(h, n)`; EOF real detectado vía flag `h->eof` → cierra el
  busy-spin del túnel WS de nyx-proxy. (26ea0ee, 50d74a3, 6e32786)
- **`indexOf(needle, from)`**: overload con offset (índice absoluto o -1; clamps;
  needle vacío estilo JS; binary-safe). El 2º arg antes se DESCARTABA en silencio;
  semantic ahora tipa el `from` como int (NYX1005). (cd8aa1c)
- **Cap de body HTTP configurable**: `NYX_HTTP_MAX_BODY` (default 1MiB inclusivo) +
  slot 6 ADITIVO de error en el request (`0` ok / `413` sobre el cap — antes body ""
  SILENCIOSO); `http_serve`/`http_serve_mt` responden 413 solos; el parser de std/http
  gana el cap que NO tenía (allocación dictada por el peer). E2E nuevo
  `tests/integration/http_body_cap/`. (1538ed2)
- **`string_to_int_or` / `string_to_float_or`**: parseo seguro con default — un dato de
  red corrupto ya no mata el proceso (incidente venezuelainfo 2026-07-16). (4f4bcce)

### Added — FFI / LLM (dirección GPU/tensores, sub-proyecto 1)
- **`c_fn_ptr(fn) -> *i8`**: puntero C-callable crudo de una fn Nyx top-level (closures
  rechazadas compile-time) + **`string_from_cstr(*i8) -> String`**. Contrato ABI =
  responsabilidad del usuario. (29541c9, 72090c8)
- **`std/llm` + `runtime/llama_adapter.c`**: `llm_load` (LLM afín + Drop determinista),
  `llm_generate(&l, ...)`, `llm_generate_stream` (tokens C→Nyx vía c_fn_ptr). dlopen
  lazy de libllama.so (tag b4689), structs opacas 512B, CI contra stub determinista.
  ⚠️ Validación con lib+modelo REALES pendiente (`scripts/llm-real-demo.sh`, máquina
  local). (f646d53, 52784be)

### Added — frontend WASM (VDOM + router + SPA)
- **`std/vdom`** (VNode/Patch/vdiff, data pura testeable nativo), **`std/dom`** por
  handles, **`std/component`** (mount/update con diff quirúrgico), **`std/routematch`**
  + **router cliente hash** (+externs hashchange), demo contador y **todo-spa** de
  referencia. Suite wasm → 22 checks. (8579c5c..e3a7dd3)
- **Parser: lambdas capturan locals** (y `spawn` captura scope) — las pending_lambdas se
  insertan en el punto de uso, no en posición 0. Desbloqueaba callbacks/handlers con
  estado. (789c881, c692a6b)

### Fixed — contrato "strings = bytes" REAL (binary-safe)
- **TODA la familia de búsqueda/comparación sobre `nyx_string*`** operaba con
  strcmp/strstr y cortaba en el primer NUL embebido: `equals`/`compare`/`contains`/
  `indexOf`/`startsWith`/`endsWith`/`replace`/`split` migrados a longitud
  (helper `nyx_memmem` propio, portable a wasi). El `==`/`!=` de Strings NO pasaba por
  el runtime (codegen emitía strcmp sobre cstr en 4 sitios) → `nyx_string_equals`.
  Repro real: el multipart de nyx-serve parseaba 24B de más. (b04fff2)
- **Aliases snake_case** `starts_with`/`ends_with`/`to_upper`/`to_lower` devolvían 0 EN
  SILENCIO (semantic los tipaba, codegen no los despachaba). (612fdd7)
- **`https_get`/`https_post` des-chunkean** `Transfer-Encoding: chunked` (runtime/tls.c
  — el comentario que lo declaraba innecesario era falso y tiró un servicio en
  producción). (fa69192)

### Fixed — codegen / tooling
- Carrera de builds concurrentes: `NYX_SRC` — `script.nx`/`.ll` únicos por invocación
  en `scripts/nyx` y `nyx build` (el Makefile queda serial a propósito). (f2a2445)
- `fmt_impl` re-emite `<T>` del header y target del impl genérico (el output volvía a
  no compilar); primer harness de tests de fmt. (8f55bb7)
- Literal float / negativo / bool / struct en **array GLOBAL** (rework del handler vía
  `codegen_array_literal`); `infer_nyx_type_from_ast` maneja `unop`. (96d3c38, 61cb870)
- Campos del SharedEnv tipados para locals capturados struct/method-call; struct
  GENÉRICO capturado tipa `%Wrapper_int`; user-fns ganan sobre builtins homónimos;
  diagnóstico de extern colisionante con hint accionable. (63be2cb, e54aa69, 096a7e5)
- Gotcha "arr[i] inline en concat da puntero crudo" ACOTADO: idiom `Array<String>` en
  params (la inferencia ya tipa el read — test-272); raíz re-ruteada a "slots sin tag".
  (9c64b19)

### Performance
- **Internado de literales de String** (`nyx_intern_cstr`, un global de caché por
  literal) + **LICM** de literales fuera de loops (`compiler/licm.nx`, gate
  `NYX_LICM=off`). Con medición justa (GC warmup): strings ~1.1× C — el "~11-18×"
  histórico era la init lazy de Boehm dentro de la región medida. (0d0509b..483a5ad,
  f11a45e)
- `test-integration` precompila el runtime UNA vez (libnyxrt.a). (684c9cd)

### Docs / especificaciones
- Spec de diseño: **cursor de Map estable ante resize** (SCAN Redis-equivalente,
  dictScan adaptado a Robin Hood) — implementación en sesión dedicada. (62b7d8a)
- Cosecha dogfooding catalogada: GC tail-latency medida vs Redis, Map sin cursor
  estable, y follow-ups del arco kv↔Redis #1.

### Tests
- Regression 272→293 ARM64 (+test-254..272), test-errors 173→177, runtime 16→18 suites
  / 616→729 asserts, wasm 18→22, integration +http_body_cap. Conteos canónicos:
  `docs/TESTS.md`. Fixed point verificado en cada cambio de compilador.

---

## [0.20.1] — 2026-07-14 — PATCH: dedup de `extern "C"` duplicados entre módulos

Bug fix de codegen destapado por el dashboard de nyx-kv-stack (no compilaba).

### Fixed
- **codegen**: dos módulos que declaran el MISMO `extern "C"` (caso real: `std/web` y
  `std/url` declaran ambos `nyx_url_decode`) emitían dos `declare` homónimos en el IR
  → clang rechazaba el módulo con "invalid redefinition of function". Rompía cualquier
  programa que importara web+url juntos (latente desde ebf266f, 2026-07-01). Fix en
  `codegen_extern_fn`: dedup por nombre vía `ctx.extern_fn_params` — la primera
  declaración gana (criterio de C para redeclaraciones). Los `define` de funciones Nyx
  homónimas ya se dedupeaban; el gap era solo extern. (d06ee9c)

### Tests
- Nuevo `test-251-dup-extern-imports` (ecosystem): regression 271→272 ARM64 (492 compiler).
- make test 272/272, fixed point byte-idéntico, `make test-stacks` 6/6 verdes.

---

## Historia anterior a 0.20.0

Archivada por corte literal el 2026-09-03 en el repo de desarrollo (`docs/archive/CHANGELOG-2026H1.md`, no se publica al mirror; el historial git del mirror la conserva).

## Próximas versiones

Ver [docs/ROADMAP.md](docs/ROADMAP.md).
