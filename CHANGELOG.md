# Changelog — Nyx Language

Todos los cambios notables de este proyecto se documentan aquí.
Formato basado en [Keep a Changelog](https://keepachangelog.com/es/1.0.0/).

> **Note**: current version = the top entry below (source of truth: `VERSION` file). Versions v0.2.0-v5.4.0 were assigned during rapid development before a formal versioning policy was adopted. The version was reset to v0.9.0 and then progressed through v0.10.0-v0.17.x. See [docs/VERSIONING.md](docs/VERSIONING.md) for details.

---

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
- 237 MB (.superpowers/sdd) + logrotate roto + fixture binario des-trackeado +
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
  (`docs/superpowers/specs/2026-08-03-static-tag-fallback-spec.md`): el tipo DECLARADO
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
`docs/superpowers/specs/2026-07-26-array-slots-tag-design.md`).

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
(spec: `docs/superpowers/specs/2026-07-26-array-slots-tag-design.md`).

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
`docs/superpowers/plans/2026-07-21-campana-integral-pendientes.md`). Temas: la garantía
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

## [0.20.0] — 2026-07-13 — Borrow checker completo (dangling refs) + ownership types reales + cripto Web Push

MINOR que consolida el borrow checker como analizador real (dangling references inter-procedurales),
convierte Box/Rc/MoveOnly en tipos afines verdaderos con drop determinista, y agrega la criptografía
necesaria para Web Push (89 commits desde v0.19.0).

### Added

**Borrow checker — dangling references (Track 3, `NYX_BORROW=off|warn|error`)**
- Escape de `&<local del frame>` por `return` — directo, propagado por binding, a través de agregados
  (`return [&x]`, `return Struct{f:&x}`) o de stores a destinos que sobreviven (global, out-param) →
  **NYX1222** (gating/sound dentro de su scope).
- **Inter-procedural**: elisión (1 param-ref + retorno ref → el retorno presta de ese arg) = **NYX1223**
  lint; `'a` explícito (`fn dup<'a>(x:&'a int)->&'a int`) = **NYX1222** gating con índice de param
  preciso. Multi-source outlives (`longest<'a>(a:&'a,b:&'a)`), structs con lifetime
  (`struct Ref<'a>{r:&'a}`) y multi-lifetime.
- **Taint transitivo**: un contenedor/struct local que recibe `&x` y luego escapa se marca.
- **Flow-sensitive con MAX**: NYX1220/1221 (free/double-free) y NYX1230 (use-after-move) ahora cazan
  free/move CONDICIONALES (`if c { free(p) }; *p` → NYX1220), antes un miss.

**Ownership types reales (inc 4) — `std/owned.nx`**
- `MoveOnly<T>`, `Box<T>` y `Rc<T>` pasan de wrappers sobre Array a tipos `#[affine]` reales con
  enforcement compile-time (use-after-move → NYX1230).
- `Box<T> { ptr: *T }` = afín + `impl Drop` (free real de `*T`): owner de heap manual con drop
  determinista/RAII. `Rc<T>` = afín + refcount compartido + drop refcount-aware. API: `box_new`/
  `box_get`/`box_into`; `rc_new`/`rc_clone`/`rc_get`/`rc_count`.

**Criptografía Web Push (VAPID RFC 8292 + aes128gcm RFC 8291)**
- 7 primitivas en `runtime/crypto.c` sobre OpenSSL: CSPRNG, byte crudo NUL-safe, EC P-256
  keypair/ECDH/ECDSA sign+verify, HKDF-SHA256, AES-128-GCM. Expuestas por `std/webpushcrypto.nx`
  (extern "C", sin cambios de compilador). Validadas con known-answer tests (RFC 5869 HKDF, McGrew GCM).
- `std/webpush.nx`: `vapid_jwt` (JWT ES256), `webpush_encrypt`/`webpush_send` (aes128gcm) — reproduce
  el vector oficial **RFC 8291 §5 byte-exacto**.

**Networking / stdlib**
- `tcp_set_timeout(fd, seconds)` (builtin) + timeout de 30s en los clientes de `std/http`.
- `http_request(method, url, headers, body)` como la API HTTP(S) con headers; de-chunking en
  `http_read_response`; `json_array_get`/`json_array_len`.

### Fixed
- **codegen**: `ctx.variables` se limpia entre funciones — arregla IR inválido por colisión de nombre
  entre una función (p.ej. un handler) y un `let` homónimo de la stdlib (afectaba `http_serve` con
  handler nombrado, que emitía un `use of undefined value`).
- **std/base64**: `base64_decode`/`base64url_decode` ahora son binary-safe (`string_from_bytes` en vez
  de `char_to_string`, que truncaba en el primer byte NUL).

### Docs
- La request de `http_serve` es un `Array` (`["request", method, path, headers, body]`), no un `Map` —
  corregido en CHEATSHEET/SPEC/LLM/templates.

---

## [0.19.0] — 2026-07-10 — Ruta A+: type system real + async real + borrow checker (free-safety + drop determinista afín)

MINOR que consolida el arco "lenguaje serio de verdad" (63 commits desde v0.18.2): las tres
garantías que estaban sintácticamente presentes y semánticamente vacías empiezan a ser reales.

### Type system real (Fase 1)
- Motor de unificación por-id con `TyVar` + occurs-check en `types.nx` (`unify_var`/`freshen_params`/
  `subst_resolve_deep`), cableado a la monomorfización implícita.
- **Monomorfización REAL de impl-methods genéricos**: `impl Vec<int>` y `impl Vec<String>` producen
  2 `define` LLVM con layouts distintos (antes colapsaban).
- `< > <= >=` sobre custom types exigen `PartialOrd` (espejo del check aritmético de S20).

### Async real (Fase 3)
- Runtime foundation en C: registry + `join` real + GC-roots de stacks de goroutine + reaper/detach;
  event loop epoll completo (timers/modify); puente scheduler↔event-loop.
- Codegen: `await` → goroutine + `join` cooperativo; `spawn { }` → goroutine detached. Nyx corre
  concurrencia real sobre el scheduler M:N + epoll (antes `async`/`await` era azúcar 100% síncrono).

### Borrow checker (Ruta A+, Tracks 1-4) — `compiler/borrow.nx`, modo `NYX_BORROW=off|warn|error`
- **Free-safety SOUND y gating** (Track 3a): use-after-free `NYX1220` + double-free `NYX1221` sobre
  memoria manual (`alloc`/`free`/`*T`). Cero falsos positivos (el código GC no llama `free`).
- **Move-checking de tipos `#[affine]` SOUND y gating** (Track 4 T4b): single-owner por contrato →
  use-after-move `NYX1230`.
- **Drop determinista / RAII para `#[affine]` (Track 4 T4c)**: un tipo `#[affine]` con
  `impl Drop { fn drop(self) }` ejecuta su destructor **exactamente una vez** al salir de la función
  dueña (todos los caminos; function-scoped, reusa la maquinaria de `defer`; drop flags al entry
  estilo Rust), salvo que el valor se mueva afuera. El `trait Drop` deja de ser decorativo. Opt-in
  incremental sin reescribir el ecosistema GC. Tests: test-240..244.
- Superficie: `&mut expr` (nodo `addr_of_mut`), `struct S<'a>` end-to-end, exclusividad de `&mut`
  statement-scoped (`NYX1210`/`NYX1211`, lint).
- Separación de modos por soundness: `NYX_BORROW=error` = gate LIMPIO (solo diagnósticos sound gatean).

### Limitación conocida (T4c, opt-in v1)
- ÚNICO caso unsound: `x.drop()` explícito / método que consume `self` → doble-drop (double-free si
  el destructor libera un puntero raw). Todos los demás límites degradan a leak seguro. Ver CLAUDE.md.

### Notas
- Fixed point del bootstrap verificado byte-idéntico tras cada sub-fase. `make test` 265/265 (ARM64).
- El compilador no usa `#[affine]` → toda la maquinaria de drop es inerte en el self-host.

## [0.18.2] — 2026-07-04 — Fix regresión codegen: tracking de value-type de Maps globales cross-función (nyx-db B-tree/WAL)

> Descubierto en pruebas de productos: los 4 tests de nyx-db (test_btree, test_db_btree, test_db_vacuum, test_db_wal) fallaban con v0.18.0.

### Fixed

- **[codegen] Tracking de value-type de Maps globales se perdía al entrar a funciones** (nuevo commit): el commit `f7fd491` (Bug 2b, v0.18.0) introdujo una re-afirmación de `global_var_entries` al entrar a cada función para que un parámetro no pisara un global homónimo. Esa re-afirmación re-insertaba en `ctx.variables` una entrada de 2 elementos `[@gname, "Map"]`, **destruyendo el 3er elemento** que rastrea el tipo de valor del Map ("String"/"int"), aprendido en cada `.insert`. Sin él, `.get` caía a un hint frágil (`expected_type`): en `string_to_int(g_bti_roots.get(tk))` el `expected_type="int"` despachaba `nyx_map_get_int` sobre un Map de valores String → el `char*` se devolvía como `i64` crudo → `string_to_int` hacía `inttoptr` sobre un puntero basura → `0` → clave `bt::1::0` no encontrada → abort. El "412 TB" del WAL era el mismo bug en dirección inversa (int leído como puntero).
  
  Fix (compiler/codegen.nx): (1) nuevo helper `track_global_map_vtype` que, cuando un Map global aprende su tipo de valor en un `.insert`, lo persiste en el snapshot `global_var_entries` (iterando `global_var_names` manualmente — no con `.contains`, que sobre un Array trataría el `{i64,i8*}*` como un Map i8* → SEGV). (2) `string_to_int` ahora fija `expected_type="String"` mientras codegenea su argumento, restaurándolo después. Fixed point de codegen.ll verificado (recompilación byte-idéntica).

  Test nuevo: `tests/compiler/systems/test-238-global-map-vtype-crossfn.nx` — regresión auto-verificable con assert() que cubre ambos caminos (String map vía string_to_int cross-función, e int map cross-función). Regression 249→250 ARM64. `make test-product-units` = 10 suites verdes; nyx-db 4 tests pasan.

---

## [0.18.1] — 2026-07-04 — Fix regresión: __nyx_init_globals numeración SSA (nyx-serve no compilaba)

> Descubierto en la inspección de productos: nyx-serve no compilaba con v0.18.0.

### Fixed

- **[codegen] `__nyx_init_globals` mezclaba `init_temp` y `fresh_temp` → IR SSA inválido**
  (eb8673d): el fallback general de init de globales (Bug 2b, v0.17.1) usa `codegen_expr`
  (fresh_temp, números altos) mientras los casos especiales (`map_new`/`Map.new`/array/string)
  usaban un contador chico `init_temp`. Un global especial emitido DESPUÉS de uno general ponía
  `%10` tras `%4563` → LLVM exige numeración SSA monótona → `instruction expected to be numbered
  %N or greater`. Rompía cualquier proyecto que mezclara ambos tipos de global init (p.ej.
  nyx-serve: `app_new()` general + `map_new()` especial). Fix: todos los registros SSA de
  `__nyx_init_globals` usan `fresh_temp`; `init_str_id` numera solo nombres de constante.
  Regresión test-237-global-init-mixed. make test 249/249 ARM64, fixed point verificado.

---

## [0.18.0] — 2026-07-03 — Onboarding AI-first "sobre rieles" (AGENTS.md + nyx capabilities)

> Spec: `docs/superpowers/specs/2026-07-03-ai-first-llm-onboarding-design.md`. Objetivo: que
> cualquier LLM (incluso débil) escriba Nyx sabiendo qué/cómo/con-qué, sin reinventar ni salirse
> a leer `std/`, reportando (no hackeando) a un archivo local. Feature MINOR autorizado por Ottavio.

### Added

- **`templates/AGENTS.md`** — playbook único que la LLM lee primero: regla de oro (no leer
  `std/`/`compiler/`), procedimiento de decisión de 7 pasos, rieles duros, gotchas destilados
  vigentes, y cómo reportar. Punteros "leé AGENTS.md primero" en CLAUDE.md/.cursorrules/copilot.
- **`nyx capabilities`** — genera `CAPABILITIES.md`, el índice por-tarea de la stdlib (468 pub fn
  de 38 módulos en el monorepo). Self-contained en build.nx (extrae TODAS las `pub fn`, no solo
  las documentadas). Sello de versión para detectar staleness. Test: `run_capabilities_test.sh`.
- **Auto self-heal**: `nyx build`/`nyx run` regenera `CAPABILITIES.md` si falta o quedó de una
  versión vieja (barato, sin red) — la LLM nunca lee un índice desactualizado.

### Changed

- **`nyx init`** siembra `AGENTS.md` + genera `CAPABILITIES.md` inicial.
- **`nyx update --sync-docs`** refresca `AGENTS.md` (con `.bak`) + regenera `CAPABILITIES.md`.
- **`nyx report`** ahora escribe un `FRICTION.md` **local** por defecto (que el usuario administra);
  el envío al canal del equipo (cola pública q:friction) pasa a opt-in con `nyx report --send`.

---

## [0.17.1] — 2026-07-03 — Friction report: puntero vs null + global puntero FFI + truncación TLS + nested fn captura *int

> Friction report de q:friction/nyxkv.com — dogfooding de usuario con servidor web + SQLite en Intel i7.
> Los 4 bugs del friction report quedan RESUELTOS (Bug 1, Bug 2a, Bug 2b, Bug 3). La variante
> AND_AND/OR_OR se investigó y se cerró como NO-BUG (el semantic checker ya rechaza el patrón
> antes de llegar a codegen). Regression 245→248 (ARM64). Solo queda pendiente una tarea OPS
> (rebuild + redeploy del server nyxkv en el repo aparte `nyx-kv-stack` con el runtime TLS
> arreglado, para que `nyx report` deje de truncar payloads largos).

### Fixed

- **[codegen] Puntero vs literal 0 → normalización a null**: comparar un puntero (`*T`/`i64*`) contra
  el literal `0` (ej. `if db != 0`) emitía `icmp ne i64* %p, 0` → clang aborta "integer constant must have
  integer type". Fix: ramas `EQUAL_EQUAL`/`NOT_EQUAL` en codegen.nx (~1528, ~1582) detectan tipo puntero +
  RHS literal 0 → normalizan a `null` (LLVM IR válido). test-234-ptr-cmp-null.nx (systems/).
- **[codegen] Global de tipo puntero inicializado a 0**: `var db: *int = ...` emitía `@db = global i64* 0`
  (mismo error). El bloque de init de globales (codegen.nx ~13190) ahora usa `null` para cualquier tipo
  puntero. Cubre globales `*T` sin inicializador explícito.
- **[codegen] Bug 2b — global puntero con init FFI + lectura cross-función (f7fd491)**: `var db: *int =
  sqlite_open(...)` no funcionaba end-to-end. Dos causas: (1) `__nyx_init_globals` solo materializaba
  `map_new`/`nyx_array_new_ptr` por nombre — cualquier otro call (ej. `sqlite_open`) no se emitía y el
  global quedaba `null`; fix: fallback general que corre `codegen_expr` sobre la expresión y storea el
  resultado en `@gname`. (2) Leer el global `*T` desde una función resolvía a `%<name>.ptr` (patrón de
  alloca de parámetro) en vez de `@<name>` — `ctx.variables` arrastra params entre funciones, y un
  parámetro `db: *int` de `std/sqlite` pisaba la entrada del global `db`; fix: campo nuevo
  `global_var_entries` en `CodegenContext` (snapshot de globales, inicializado en los 3 constructores),
  re-afirmado al entrar a CADA función antes de procesar sus params. test-235-global-ptr-sqlite.nx
  (systems/, patrón real con `:memory:`). Regression 246→247 ARM64.
- **[runtime/tls] `nyx_tls_read_line` truncaba líneas > 1023 bytes (8e9b519)**: causa raíz de la
  truncación de `nyx report` (payloads ~1900B llegaban a 1023B a la cola q:friction). El buffer fijo
  (`cap = 1024`, loop acotado por `pos + 1 < cap`) cortaba la línea Y dejaba el resto sin leer en el
  socket (desync). El server nyxkv lee el bulk RESP con `tls_read_line` → ahí truncaba el reporte.
  Fix: buffer que crece dinámicamente hasta leer la línea completa (`\n` incluido). Bonus:
  `nyx_tls_write` hacía un único `SSL_write` ignorando el retorno parcial (y usaba `strlen`, no
  binary-safe) → ahora hace loop sobre `data->length` igual que `nyx_tls_write_conn`. Tests nuevos:
  `test_tls_read_line_long` (línea de 5000B) y `test_tls_large_write` (100KB); runtime-unit 16/16
  suites, test_tls 18/18. **Pendiente de operación**: el server nyxkv en producción (repo aparte
  `nyx-kv-stack`) necesita rebuild + redeploy con este runtime para que los reportes dejen de
  truncarse.
- **[codegen] Bug 3 — nested fn que captura un `*int` local y se pasa como valor (8cde85d)**: último
  bug pendiente del friction report. Patrón: `let db = sqlite_open(); fn handler(){ usa db };
  http_serve(handler)` — una función anidada que captura un `*int` local y se pasa como valor
  generaba IR inválido. Tres sub-problemas: (P1, resolución) pasar la nested fn `handler` como
  valor emitía `load %handler.ptr` INDEFINIDO — el param `handler: Fn` de `http_serve` dejaba una
  entrada stale en `ctx.variables` (no se limpia entre funciones) que ganaba sobre la construcción
  del closure pair `{fn_ptr, env_ptr}` en `codegen_identifier`. (P2B, captura) `db` nunca se
  guardaba en el `SharedEnv` — el mismo bleed (`db` es param de `sqlite_exec`) hacía fallar el
  guard `not contains` del env-store en `codegen_let`. (P2A, tipo) el campo del env se tipaba
  `i64` en vez de `i64*` porque el tipo salía solo de la anotación; `let db = sqlite_open()` sin
  `: *int` → `i64`. Fix con 2 mecanismos en `codegen.nx`: (1) `pre_scan_closure_env` infiere el
  tipo del local capturado sin anotación desde el retorno del callee
  (`function_return_types`), scoped ahí sin tocar `infer_nyx_type_from_ast`. (2)
  `codegen_function` (pre-registración de closures) purga de `ctx.variables` las entradas stale
  de nombres de nested fns y de locals capturados. GOTCHA: `Map.remove` sobre un field-access es
  un no-op silencioso (el dispatch de field-access no lo implementa) — se bindea `let cf_vars =
  ctx.variables` y se remueve sobre el local (Map es i8* → muta el mismo hash table). Solo corre
  en fns top-level con closures; el compilador no usa closures → fixed point intacto. Test:
  test-236-nested-fn-capture-ptr.nx (systems/, self-contained con `:memory:`, sin `http_serve`).
  Regression 247→248 ARM64 (100%). SharedEnv ahora `{ i64* }` y `db` se storea en el env; clang
  compila el repro. **Con este fix, los 4 bugs del friction report quedan resueltos.**

### Cerrado sin fix (no era un bug)

- **[codegen] Variante AND_AND/OR_OR con patrón puntero-vs-0**: se sospechaba que las ramas
  ~1744/~1750 emitían `icmp ne <ptr>, 0` sin normalizar. Verificado: NO es alcanzable — el semantic
  checker ya rechaza `p && x` con "left operand of '&&' must be bool, got *int" antes de llegar a
  codegen. El guard correcto vive en la capa semántica. Descartado, sin fix ni test.

### Pendientes (diagnosticado, diferido)

- **[codegen] Bug 3**: closure/nested-fn que captura un `*int` local (ej.
  `let db=sqlite_open(); fn handler(req){uses db}; http_serve(handler)`) rompe codegen. Tres
  sub-problemas interconectados en la maquinaria de closures: (1) `%handler.ptr` indefinido — el mismo
  bleed de `ctx.variables` (un param `handler` de las funciones http pisa la nested fn); (2a) el tipo
  de la var capturada sale de la anotación (`stmt.data[3]`), no del inicializador — `let db =
  sqlite_open()` sin `: *int` se captura como `i64` en el SharedEnv, no `i64*`; (2b) falta el `store`
  de `db` en el env (se aloca el SharedEnv pero la var local capturada nunca se escribe en su campo).
  Cambio estructural de 3 partes; diferido a sesión dedicada. **Workarounds que sí funcionan**:
  (a) abrir la db DENTRO del handler (cubierto por el fix de Bug 1), o (b) usar un global
  `var db: *int = sqlite_open(...)` (cubierto por Bug 2b).

---

## [0.17.0] — 2026-07-02 — WASM hasta el browser + mutación in-place + WebSocket proxying + tooling AI-first

> MINOR autorizado por Ottavio 2026-07-02.
> Regression 229→245. Stdlib 39→43 módulos. Suite WASM 8→18 checks.

### Added (tooling AI-first + release — 2026-07-02 noche)

- **Versión centralizada**: archivo `VERSION` (raíz → `~/.nyx/VERSION`);
  `nyx --version` y el banner del PM lo leen. Muere el banner stale
  "Build System v1.9.0".
- **`nyx build --target wasm32-wasi`** (o `[build] target` en nyx.toml):
  el PM genera el build wasm completo — sin exportar NYX_TARGET a mano.
- **`nyx update` AI-first**: limpieza canónica compartida (dist-clean.sh),
  compara por VERSION, conserva CHANGELOG e imprime el "What's new";
  `nyx update --sync-docs` refresca LLM.md/CHEATSHEET/skills del proyecto.
- **`nyx report`**: loop de feedback proyecto→equipo (FRICTION_REPORT.md +
  cola q:friction de nyx-kv; anónimo con aviso o token). `std/kvclient.nx`
  nuevo (stdlib 44).
- **Skills sembradas por `nyx init`**: write-nyx-program, fix-compile-error,
  report-nyx-friction (+ .vscode/extensions.json; templates v0.17).
- **by-example en español** (101 páginas) + docs reconciliados + LLM.md v0.17
  con la sección WebAssembly/browser completa.
- docs/REPO_SPLIT_PLAN.md: plan de extracción de productos a stacks.

### Added (backlog completo — 2026-07-02 tarde/noche)

- **HANDOFF WASM de venezuelainfo COMPLETO (las 7 tareas)**: std/dom ampliado
  (attrs/clases/value/count/get_attr_all), **std/browser** nuevo (fetch/timers/
  geo/localStorage/tz_offset/matchMedia por callback-por-nombre), Event actual
  sin closures (accesores ev_*), **closures como handlers** vía function table
  (-Wl,--export-table + dom_on_fn), **arena por evento** (allocador two-region
  en runtime/wasi/nyx_arena.c — 10k re-entradas con memoria estable, desbloquea
  páginas de larga vida), marshalling de float (f64↔Number) y Array
  (readArray/makeArray), y `make wasm` multi-archivo (NYX_PROJECT_DIR).
  Tests wasm 06–13 + fixture multifile.
- **X-Forwarded-For / X-Real-IP**: `inject_forwarded_headers` en nyx-proxy +
  gateway (TLS/WS/plano) — rate-limit por IP en backends. test_proxy_xff.
- **make test-unit reactivado**: runner nuevo para tests/verify (12 tests);
  compiler-unit sigue bloqueado por bug de imports de compiler/ (TASKS.md).
- **by-example en español**: /es/by-example/ (traducción de las 100 recetas +
  índice; código byte-idéntico) + ruta en sites/nyxlang.com.
- **nyx-edit v0.2.0** (sesión de la tarde): fundamentos Etapa 1 — ver
  docs/PRODUCTS_ROADMAP.md y products/edit/PROJECT_STATE.md.

### Fixed (backlog — 2026-07-02 tarde/noche)

- **[codegen] setjmp/longjmp clobbering en try/catch (-O2)**: las mutaciones de
  locals ESCALARES hechas dentro de un try se PERDÍAN al entrar al catch
  (mem2reg los promueve a registro y longjmp restaura registros; returns_twice
  no alcanza). Fix: nyx_var_anchor (escape opaco) + anclaje de escalares vivos
  antes del setjmp, validados contra el IR de la función actual. Destapado por
  test-verify-07 al reactivar make test-unit.
- **[semantic] métodos de impl eclipsados por builtins**: `Vec2.length() ->
  float` se infería como int (tabla de builtins primero) → falso positivo
  NYX1005. El lookup de impl del usuario ahora va primero. (test-verify-04)
- **[codegen] arrays anidados `Array<Array<T>>`**: inferencia recursiva del tipo
  de elemento — `grid[0][0]`, fila extraída y fila como arg. test-232.
- **[codegen] `#[naked]` emitía IR inválido**: el attribute group iba a
  meta_buffer (nunca volcado). test-231.
- **[codegen] `arr[i] = x` sobre array global/capturado**: coerción i64→ptr en
  el path de escritura (espejo del de lectura).
- **[codegen] guard bilingüe `&mut self` vía dyn Trait** (fuera de scope v1):
  fail-fast en vez de mutación perdida en silencio. test-dyn-mutref (errors 72).
- Gap S10-variante (genérico con `Array` bare) verificado YA RESUELTO por F2 —
  fijado con test-233.

### Fixed (code-review del arco WASM — 2026-07-02)

- **[compiler] async fn + alloc/atomic/guard crasheaba el compilador**: el clone
  `body_ctx` del cuerpo de un `async fn` no heredaba `ctx.target` (quedaba NULL);
  emit_alloc/codegen_target_guard lo leen → abort "Array es NULL" al compilar
  cualquier async fn que alocara. body_ctx ahora hereda target. test-229.
- **[runtime] substring con índice negativo → lectura OOB (nativo)**: el cambio
  size_t→int64_t dejó pasar índices negativos (antes envolvían a SIZE_MAX y
  clampeaban). Agregado clamp inferior a 0 en nyx_string_substring. test-227.
- **[codegen] Map.get de int + literal string inline → SEGV**: el hint
  expected_type="String" enrutaba maps de int a nyx_map_get_str (i64→char*→SEGV);
  el value-type trackeado del map ahora manda sobre el hint (var y campo de
  struct). test-228.
- **[codegen] to_string sobre bool/f32 devolvía 0**: el fix previo cubría solo
  int/double; helper compartido codegen_to_string_prim cubre i64/double/float/i1
  en ambos caminos del method_call. test-230.
- **[codegen] builtins no portables sin guard bajo wasm**: tcp_/tls_/thread_/
  spawn/sha256/... bajo NYX_TARGET=wasm32-wasi ahora fallan con error bilingüe
  fail-fast (helper wasm_forbidden_builtin) en vez del undefined-symbol críptico
  de wasm-ld. test-wasm-forbidden-builtin (errors 70→71).
- **[runtime] array push_ptr stride en wasm32**: nyx_array_push_ptr/get_ptr/
  set_ptr/new_ptr usaban stride sizeof(void*) (4B en wasm32) vs nyx_array_get
  (int64, 8B). Unificado a int64 (bit-idéntico en LP64). Nota: los arrays
  anidados siguen bloqueados por un bug de codegen aparte (type mismatch en el
  segundo índice), catalogado en TASKS.md.
- **[gateway] el upgrade WebSocket bypaseaba el rate limit**: proxy_check_rate
  se movió ANTES del despacho, cubriendo tanto WS como request normal (un flood
  de Upgrade abría túneles de 2 threads sin límite).
- **[proxy] ws_proxy no validaba el 101**: si el upstream rechazaba el handshake
  (4xx/5xx keep-alive) el worker TLS quedaba colgado; ahora solo tuneliza si la
  status line es 101, si no relaya la respuesta y cierra.
- **[docs/landing] editorial**: la landing anunciaba features de v0.17 como
  "Release v0.16" → cambiado a "Coming next / Próximamente v0.17" (respeta la
  política de versiones, MINOR pendiente de autorización). Conteos canónicos
  reconciliados (docs/TESTS.md, PROJECT_STATE, CLAUDE 241/71).
>
> ⚠️ Candidato MINOR confirmado por tres features de lenguaje/plataforma acumuladas:
> (1) Camino B — `&mut self` por puntero + auto-deref `*Struct` (features de lenguaje);
> (2) WebSocket proxying end-to-end en el gateway (feature de infraestructura + nuevos
> builtins `tcp_read_partial`/`tls_read_partial`/`tcp_shutdown` en el runtime);
> (3) target WebAssembly real — `make wasm` produce `.wasm` que corre en wasmtime.
> Pendiente decisión/autorización de Ottavio.

### Added

- **[wasm] Target wasm32-wasi real — Escenario A del WASM_ROADMAP** (2026-07-01):
  `make wasm FILE=prog.nx` produce un `.wasm` funcional que corre bajo wasmtime —
  strings, arrays, maps, iterators, closures y recursión verificados end-to-end.
  EN: `make wasm` now produces a working `.wasm` (it used to be decorative:
  it linked no runtime and required a wasi-sdk that was never installed).
  - **[codegen] `NYX_TARGET=wasm32-wasi`**: emite `target triple = "wasm32-wasi"`,
    fuerza `no_gc=1` (Boehm no existe en WASM — no hay combinación válida wasm+GC)
    y falla limpio bilingüe ante features no portables: inline asm y
    `atomic_add`/`atomic_sub`/`atomic_cas` (helper `codegen_target_guard`).
    Env-gated: el IR por defecto es byte-idéntico (fixed point verificado).
  - **[runtime/wasi] Shim GC→malloc** (`runtime/wasi/gc.h` + `gc/gc.h`): eclipsa
    el `gc.h` del sistema vía `-Iruntime/wasi`. `GC_malloc → calloc` (Boehm
    devuelve memoria EN CERO y maps/strings dependen de eso);
    `GC_malloc_atomic → malloc`. Leak-by-design (cómputo batch).
  - **[runtime/wasi] Puente de entry** (`main_shim.c`): el crt1 de wasi-libc llama
    `__main_argc_argv` (i32); el IR de Nyx define `@main` i64 — asm-label puentea.
  - **[runtime] ABI fijado a int64**: `nyx_string.length/capacity` y firmas con
    `size_t` → `int64_t` (bit-idéntico en LP64; en wasm32 `size_t`=4 bytes rompía
    el layout `{i64,i64,i8*}` del IR). `%ld` → `PRId64` en printf de int64
    (en wasm32 `long` es de 32 bits — `nyx_print_int` imprimía basura).
  - **[runtime] Guards `__wasi__` en runtime.c**: señales/termios/ioctl/system()
    aislados; try/catch (setjmp, sin sjlj estándar en wasm) fail-fast con mensaje claro.
  - **[build] Toolchain liviano Debian** (sin wasi-sdk de ~700MB): clang del
    sistema + `wasi-libc` + `libclang-rt-19-dev-wasm32` + `lld-19`
    (`--sysroot=/usr`). Ejecutar con wasmtime (binario release).
  - **[tests] `make test-wasm`**: 3 tests con `.expected` bajo wasmtime + los
    mismos 3 bajo el shim del navegador vía node (6 checks; runner
    `scripts/testing/run_wasm_tests.sh` con SKIP limpio exit 0 si falta el
    toolchain). Ejemplo: `examples/wasm-hello.nx`.

- **[wasm/dom] Eventos + std/dom.nx — Nyx interactivo en el browser (Escenario B fase 2)** (2026-07-02):
  Los eventos del DOM RE-ENTRAN al módulo wasm: `#[export_name = "x"]` bajo el
  target wasm ahora además exporta la fn del módulo (attribute
  `wasm-export-name` + linkage externo — wasm-ld descarta el export de
  símbolos `internal`, ese era el gotcha) → JS la llama vía
  `instance.exports.x` después de `_start`, con el estado del módulo
  (globals) persistiendo entre llamadas (verificado: contador acumulando y
  round-trip de String en re-entrada). Nuevo `std/dom.nx` (stdlib 41→42,
  SOLO-wasm): `dom_set_text/set_html/get_value`, `dom_on(sel, event,
  handler)` — handler = nombre del export — y `console_log`. Shim:
  `domBindings()` (implementación estándar de js_dom_* sobre DOM real o mock)
  y `runNyxWasm` devuelve `{exports, nyx}`; `run-node.mjs` gana el hook
  `afterStart` para testear re-entrada. Demo interactivo: botón que re-entra
  a Nyx (contador de clicks + releer input + fib). Test: test-wasm-05-exports
  (make test-wasm 7→8 checks).
  EN: DOM events re-enter the wasm module — `#[export_name]` fns become wasm
  exports callable from JS with persistent module state; new wasm-only
  std/dom.nx plus standard DOM bindings in the shim.

- **[wasm/ffi] `extern "js" fn` — FFI de imports JS (Escenario B fase 1)** (2026-07-02):
  Nyx declara funciones JS y el compilador las emite como wasm imports del
  namespace `js`. `extern "js" fn js_set_text(sel: String, text: String)` →
  `declare ... #N` + `attributes #N = { "wasm-import-module"="js"
  "wasm-import-name"="..." }` (wasm-ld lo convierte en import `js::<name>`).
  La sintaxis `extern "ABI" fn` ya existía en el parser (abi en data[3], antes
  ignorado por codegen). En target NATIVO: error fatal bilingüe fail-fast
  (test-extern-js-native-target; errors 69→70). Shim del browser: `runNyxWasm(
  bytes, { js: (nyx) => ({...}) })` con marshalling — `nyx.readString(ptr)`
  (String Nyx → JS, layout {i64,i64,ptr}), `nyx.makeString(str)` (JS → String
  Nyx vía el export nuevo `nyx_wasi_malloc`), `int` = i64 ↔ BigInt. Demo:
  `examples/browser/dom-demo.nx` (Nyx lee un input y escribe en la página).
  Test: test-wasm-04-js-ffi + `.imports.mjs` (make test-wasm 6→7 checks;
  wasmtime se saltea para tests js-ffi). Alcance fase 1: one-shot Nyx→JS;
  eventos/callbacks JS→Nyx = fase 2 (WASM_ROADMAP).
  EN: `extern "js" fn` compiles to wasm imports in the `js` namespace with
  full String/int marshalling in the browser shim; native target fails fast.

- **[wasm/browser] Nyx corre en el NAVEGADOR — Escenario B fase 0** (2026-07-01):
  `examples/browser/` — polyfill WASI preview1 de ~100 líneas
  (`nyx-wasi-shim.js`, ESM browser+Node; los `.wasm` de Nyx solo importan 10
  funciones wasi), demo `index.html` (carga y corre wasm-hello.wasm mostrando
  el stdout en la página, sin servidor de app ni wasmtime) y `run-node.mjs`
  (test headless del shim, integrado a `make test-wasm`). Insight de diseño:
  no hace falta un target wasm32-unknown para empezar el browser — wasi +
  polyfill cubre cómputo-en-página; el FFI JS/DOM (fase 1, propuesta
  `extern "js" fn` en WASM_ROADMAP) es la próxima decisión de diseño.
  EN: Nyx now runs in the browser via a ~100-line WASI polyfill; JS/DOM FFI
  is the next design step (proposal pending author decision).

### Fixed

- **[codegen] `n.to_string()` sobre int/float devolvía 0 en silencio** (2026-07-01):
  `codegen_method_call` no tenía branch `to_string` para receivers `i64`/`double`
  — ni en el camino identificador ni en el de expresión (`fib(20).to_string()`) —
  y caía al fallback mudo. Bug NATIVO pre-existente, destapado por el dogfooding
  WASM del mismo día. Ambos caminos ahora llaman `nyx_string_from_int`/`_from_float`.
  Los impls de struct no se ven afectados (sus receivers son `%Struct*`).
  EN: `to_string()` on int/float primitives silently returned 0 — no codegen
  branch existed for i64/double receivers on either dispatch path.
  Test: `tests/compiler/language/test-226-int-to-string.nx` (regression 237→238).

- **[std/web] `url_decode` decodifica percent-encoding `%XX`** (ebf266f):
  La función solo convertía `+`→espacio y dejaba intactos los secuencias `%XX` —
  corrompía silenciosamente parámetros de forms y query strings con caracteres reservados
  o no-ASCII. Ahora delega en el extern C `nyx_url_decode` del runtime, que maneja el
  rango completo de codificación percent-encoding conforme a RFC 3986.
  Test: `tests/compiler/ecosystem/test-223-web-url-decode.nx`.

- **[codegen] `Map.get()`/`arr[i]` String usado INLINE en binop causaba SEGV** (29c15a4):
  Una expresión del tipo `assert(m.get("k") == "literal")` (o cualquier binop donde el
  resultado de `Map.get`/`arr[i]` de tipo String se usaba directamente sin pasar por un
  `let` tipado) generaba una SEGV en runtime. Causa: el i64 crudo que devuelve
  `nyx_array_get`/`nyx_map_get` llegaba a `codegen_binop` sin la coerción i64→`%nyx_string*`,
  y se comparaba como entero. Fix: `codegen_binop` detecta que un operando es literal string
  y propaga `expected_type="String"` al otro, forzando la coerción.
  Test: `tests/compiler/language/test-224-map-get-string-inline.nx`.

- **[codegen] `Map.get()`/`arr[i]` String como ARGUMENTO de función causaba GC-OOM** (817eba1):
  extensión del fix anterior. `shout(req.query.get("k"))` — un `Map.get` String pasado
  directo como argumento, sin `let` tipado ni literal que fijara el hint — caía al fallback
  i64 → puntero basura → GC Out of Memory + SEGV. Fue el crash real de venezuelainfo
  (`req.query.get()` del handler de chat). Fix: `codegen_call_expr` propaga el tipo del
  parámetro del callee como `expected_type` al generar cada argumento. Cubre Map local y
  Map campo de struct. Test: `tests/compiler/language/test-225-map-get-string-arg.nx`.

- **[parser] Frontera de sentencia: `(` en línea nueva ya no se fusiona con identificador anterior** (a583816):
  Un `(` al inicio de una línea nueva se interpretaba como llamada al identificador de la línea
  previa (footgun de estilo ASI, como Go/Swift lo evitan). Rompía `(*p) = x` escrito en la línea
  siguiente a `let v = ...n`. Fix de 1 línea en `parse_postfix` usando el helper existente
  `is_on_new_line()`. Test: `tests/compiler/language/test-218-newline-paren-stmt.nx`.

### Added

- **[std/arena] Arena/bump allocator sin GC** (6b2907d): nuevo módulo `std/arena.nx` que
  implementa un allocator de región sobre un buffer de bytes crudo. Usa `alloc<u8>`,
  aritmética de punteros, bitcast `as` y alineación bitwise. El estado mutable se gestiona
  vía el idiom holder-Array (sin `&mut self`). Valida que los primitivos de bajo nivel de
  Nyx (punteros crudos, aritmética, bitcast) son sólidos para código sin GC.
  Test: `tests/compiler/systems/test-219-arena.nx`.

- **[parser] Receiver `&self`/`&mut self` en métodos** (9a656ae): el parser acepta
  `fn method(&self)` y `fn method(&mut self)` sin error de sintaxis. Paso inerte (no
  cambiaba la semántica generada hasta el commit de codegen siguiente).

- **[codegen] `&mut self` pasa self por puntero — mutación persiste al caller** (62e29e9):
  un método declarado con receiver `&mut self` recibe `self` como `%Type*` en lugar de
  una copia by-value. Las asignaciones `self.campo = x` dentro del método escriben
  directamente en la struct del caller y son visibles tras la llamada. Incluye:
  registry de modo del receiver, firma diferenciada, prólogo sin copia de self, dispatch
  correcto en `codegen_method_call`. Fuera de scope: `dyn Trait`, closures capturando el
  método, `&self` (inmutable) sin `mut` sigue siendo by-value.
  Test: `tests/compiler/iterators-traits/test-220-mut-self.nx`.

- **[codegen] Auto-deref `p.campo` sobre `*Struct` — read y write directos** (f11c54d):
  acceder o asignar `p.campo` sobre una variable de tipo `*Struct` emite un GEP sobre el
  puntero directamente (estilo Go), tanto en lectura como en escritura. La mutación persiste
  al caller sin necesidad de `(*p).campo` explícito (que tampoco funciona — usar `p.campo`).
  Test: `tests/compiler/systems/test-221-ptr-struct-field.nx`.

- **[runtime] Builtins `tcp_read_partial` / `tls_read_partial` / `tcp_shutdown`** (a3149d1):
  `tcp_read_partial` y `tls_read_partial` retornan tras el primer `recv`/`SSL_read` (sin
  loop hasta N bytes), habilitando relays de túnel donde bloquear indefinidamente rompería
  la bidireccionalidad. `tcp_shutdown` emite `shutdown(SHUT_WR)` real sobre el descriptor,
  desbloqueando un `recv` en espera en otro thread sin cerrar el socket. Cableados en
  `compiler/semantic.nx` y `compiler/codegen.nx`. Test: `tests/runtime-unit/test_net`
  suites 17–18 (16→18 asserts de red).

- **[proxy,gateway] WebSocket proxying end-to-end** (30ceaa5 + 4344371):
  El gateway HTTPS ahora tuneliza WebSocket real-time. Cuando `tls_worker` detecta
  `Upgrade: websocket` en los headers entrantes, llama `ws_proxy` (nyx-proxy/src/router.nx)
  en lugar del flujo normal request/response.
  Nuevas funciones en `products/proxy/src/router.nx`:
  - `resolve_upstream_idx(host)` — routing explícito por nombre de vhost.
  - `ws_proxy(client_ssl, host, path, headers)` — resuelve backend, abre conexión TCP
    dedicada (sin pool), reenvía el handshake HTTP crudo preservando `Upgrade`,
    `Connection` y `Sec-WebSocket-*`, relaya el `101 Switching Protocols` y entra en
    túnel.
  - `ws_tunnel(client_ssl, upstream_fd)` — túnel bidireccional 2 threads: relay
    upstream→cliente con closure-capture en un thread; inline cliente→upstream en el
    thread actual. Teardown: `tcp_shutdown` + `thread_join`.
  `services/gateway/src/main.nx` — detección de `Upgrade: websocket` en `tls_worker`
  y despacho a `ws_proxy`.
  Test E2E: `tests/integration/test_ws_proxy.py` con fixture
  `tests/integration/ws_gateway/` (gateway TLS mínimo en puerto no privilegiado).
  Verificado: compilación, relay 101, echo bidireccional + 2do round-trip (6/6 checks).
  Integrado a `scripts/testing/run_integration_tests.sh`.
  Motivación: el chat en tiempo real de venezuelainfo.org caía a polling cada 3 s porque
  el gateway no gestionaba el Upgrade → con esta implementación usa WebSocket real.
  ⚠️ Limitación de piloto: `SSL_read` (inline) y `SSL_write` (thread relay) son
  concurrentes sobre el mismo `SSL*` sin lock — funciona sin renegociación (protocolo WS
  estándar), pero no está protegido formalmente. Teardown TLS best-effort: si el upstream
  cierra primero, el read TLS inline puede quedar colgado hasta que el cliente envíe algo.

---

## [0.16.2] — 2026-06-30 — Dogfooding venezuelainfo.org: PM + codegen + stdlib

> PATCH autorizado (lote de fricción hallado construyendo venezuelainfo.org, un sitio
> full-stack en Nyx fuera del monorepo). Regression 225→229, errors 67→69.

### Fixed

- **[driver/PM] Imports internos de paquetes vendoreados no resolvían** (51e8bf2):
  `import "src/X"` dentro de un paquete en `packages/` tiraba "could not resolve import",
  rompiendo el rebuild de todos los sites/services. Causa raíz: `detect_package_name`
  usaba `marker_len = 14` para el marcador `"packages/"` (9 bytes) — regresión de
  `cb40734` que renombró `nyx_packages/`→`packages/` sin actualizar el largo → la
  reescritura `import "src/X"` → `import "PKG/src/X"` nunca se ejecutaba. Más un off-by-1
  latente en `rewrite_package_imports` (marcador `"src/` de 5 bytes vs slices de 4). Fix
  de raíz con `marker.length()` / `src_marker.length()`. Test positivo
  `resolve-vendored-pkg-src-import`.
- **[codegen] Array global con elementos String se inicializaba VACÍO** (fd262f2):
  `var g: Array = ["a","b"]` top-level → `length()==0`. `__nyx_init_globals` solo emitía
  `nyx_array_push` para elementos `number`. Fix: maneja también `string` materializando
  `%nyx_string*` + push. test-214.
- **[codegen] Coerción i64→ptr al leer String de Array/Map global o de campo de struct**
  (745b706): `arr[i]`/`map.get(k)` crudo (sin bind a `let` tipado) en concat/arg devolvía
  el puntero como i64 → `nyx_string_from_int` (número gigante). El hint de tipo de
  elemento/valor solo se poblaba para locales. Fix en 3 partes: globales infieren
  `Array<T>` del literal; `register_struct_fields` preserva el tipo Nyx en un 2º slot;
  `map.get`/`arr[i]` sobre campo leen ese tipo. Caveat: campo `Map` sin `<V>` no es
  inferible. test-215.

### Added

- **[std/json] Parseo de floats** (423ca97): `parse_number` consume fracción y exponente
  (`-10.5`, `4.2e1`) y emite `["float", texto]` (guarda el texto original — round-trip
  exacto, evita el footgun de almacenar un double en un Array i64). Nuevos `json_float` /
  `json_as_float`; `json_stringify` re-emite el texto. test-216.
- **[std/http] HTTPS transparente en `http_get`/`http_post`/`http_request`** (00b6c76):
  `http_parse_url` detecta `https://` (puerto 443) + flag `secure`; el camino TLS
  (`http_tls_request`) lee la respuesta completa y la parsea a la misma forma
  `["response", code, headers, body]` que el camino TCP. Verificado contra example.com y
  httpbin.org. test-217.

---

## [0.16.1] — 2026-06-15 — Bugfixes de dogfooding: driver + semantic + codegen

> PATCH autorizado (bugs hallados dogfooding 2026-06-13..15). test-errors 67→68.

### Fixed

- **[driver] Import local no resuelto se ignoraba en silencio** (ddd32f6):
  `import "mymod"` sin el prefijo `src/` no resolvía a `src/mymod.nx` y el
  driver lo descartaba sin avisar — producía `undefined reference` críptico
  en el linker o build verde engañoso. Ahora emite un error bilingüe con hint
  `src/<path>` y exit(1). Test nuevo: `test-import-unresolved` (texto).
  test-errors: 51 texto + 16 json → **52 texto + 16 json = 68**.

- **[semantic] Monomorfización implícita en calls genéricos anidados en assert** (7facbfe):
  el nodo `assert` en `validate_node` era un stub que no validaba su expresión
  — un call genérico anidado en `assert(id(42) == 42)` nunca disparaba la
  promoción F2 → codegen emitía `call @id` sin define (`undefined value @id`).
  Fix: assert valida su expresión. Los casos `if id(x)==y` y binop suelto ya
  funcionaban. Hallado dogfooding 2026-06-13; casos 07-generics y
  08-array-element-binding de la suite ai-first ampliados.

- **[codegen] Coerción arr[i] opaco a puntero fuera del let tipado** (218a0e1):
  un elemento de Array sale de `nyx_array_get` como i64; `codegen_let` ya
  emitía el `inttoptr` a `%nyx_string*`, pero `codegen_assign`, el loop de
  args de `codegen_call_expr` y el builtin `string_to_int` no — reasignar
  `var String = arr[i]`, pasar `arr[i]` inline a una fn que espera String, o
  a `string_to_int` rompía el IR (clang: `i64 vs ptr`). Fix: post-coerción
  en los 3 sitios. Caveat: method call sobre `arr[i]` (`points[i].dist()`)
  sigue sin reparar. Hallado dogfooding 2026-06-14.

### Changed (post-v0.16.0, incluido en este PATCH)

- **Fricciones de expresividad — Tesis 2 AI-first lista cerrada** (2026-06-12):
  - **Map literals** (F-C): `let m = {"a": 1, "b": 2}` y `{}` — claves SOLO
    strings (JSON-style). Sin ambigüedad con structs (`{ident: v}` no es map).
    Sección nueva en docs/SPEC.md.
  - **`const` con String** (F-B): top-level ya no crashea (dos bugs en global
    tipado + init del nodo const; el local ya funcionaba). Inmutabilidad intacta.
  - **`defer expr()`** (F-A): forma sin bloque funciona (block sintético en parser).
  - **Docs desactualizados corregidos**: crash de `handler` resuelto desde
    v0.13.1; `charAt`→int zanjado por contrato de bytes v0.14; LLM.md afirmaba
    que `and`/`or` no cortocircuitan — SÍ lo hacen desde abril 2026.
  - Tests nuevos: test-211 (defer bare), test-212 (const string), test-213
    (map literals). Regression: 222 → 225.
- **Repo público sin regression tests** (2026-06-12): sync_to_public.sh copiaba
  el layout muerto de v0.13; ahora copia las 7 categorías + errors/ + test-modules/.

## [0.16.0] — 2026-06-12 — "Compilador blindado": parser robusto + monomorfización implícita

> MINOR autorizado por Ottavio (2026-06-12). Cierra los 2 gaps estructurales
> del compilador: el parser nunca cuelga y reporta multi-error con códigos
> NYX01xx + JSON (la fase parse entra al contrato AI-first), y los genéricos
> funcionan sin turbofish (gap S10). Incluye además la limpieza de headers
> fósiles de compiler/*.nx (versiones pre-reset v0.7.4, refs a racket, etc.).

### "Compilador blindado" F2 — monomorfización implícita (2026-06-12)

- **El gap S10 está CERRADO**: los calls genéricos sin turbofish funcionan.
  `fn id<T>(x: T) -> T` + `id(42)` / `id("hola")` / `boxit(Point{...})`
  compilan y corren — antes emitían IR roto (`call i64 @id(...)` a una
  función inexistente; el caso struct corrompía el tipo del call).
- Mecanismo: tras un unify exitoso (con bounds B8 OK), el semantic reescribe
  el callee a un `generic_call` SINTÉTICO con los type args inferidos — la
  misma shape del turbofish del parser más un marcador `"inferred"` (slot
  aditivo). **El codegen no cambió ni una línea**: su maquinaria existente
  (mangle + pending_mono + monomorphize_function + dedup) procesa el nodo.
  Turbofish explícito e implícito de la misma instancia convergen al mismo
  nombre mangled (un solo `define`).
- Gates conservadores (patrón S18/S20): solo si el nombre resuelve a una fn
  top-level (excluye builtins como `alloc<T>` y variables que sombrean),
  todos los type params bindeados, y cada binding concreto (`ty_is_concrete`/
  `ty_to_call_ann` nuevos en types.nx). Ante cualquier duda, no transforma.
- `ty_of_expr` reconoce el nodo sintético y devuelve el return type ya
  sustituido — `let s: String = first(["a"])` sigue tipando correcto.
- Limitación documentada: con `NYX_SKIP_SEMANTIC=1` no hay transformación
  (comportamiento previo: turbofish requerido).

### "Compilador blindado" F1 — multi-error de parse + códigos NYX01xx + JSON (2026-06-12)

- **La fase parse entra al contrato AI-first**: códigos estables NYX0101–NYX0105
  (catálogo en docs/SPEC.md §Structured Diagnostics), `NYX_DIAG=json` emite
  NDJSON con `phase:"parse"` y line:column del archivo original, mensajes
  bilingües vía NYX_LANG (default inglés — **cambio visible**: antes los
  mensajes del parser eran español hardcodeado). Diagnóstico dedicado
  NYX0102 para keyword usada como identificador.
- **Multi-error con recovery**: el parser reporta todos los statements
  hermanos rotos en una sola compilación (espejo de B8-F3 en semantic).
- **El driver ya no miente**: con errores de parse, `nyx` imprime
  `parse FAILED` y sale con exit 1 — antes "parse OK" salía incondicional y
  el AST roto seguía a semantic/codegen. nyx_check (LSP) emite DIAG y corta.
- **`pub type` / `pub trait` / `export type` / `export trait` ahora son formas
  legales**: existían de facto (std y tests las usan) pero el parser las
  descartaba con un error espurio — funcionaban solo porque el scan textual
  cross-module las registraba. NYX0105 actualizado.
- **Snippet de código eliminado de los errores de parse**: mostraba SIEMPRE la
  línea equivocada (indexaba el source resuelto con números rebasados al
  archivo original). La posición line:col es exacta.
- Suite de errores: 55 → 67 entradas (7 parse texto + 5 parse JSON).

### "Compilador blindado" F0 — el parse nunca cuelga (2026-06-11)

- **Loop infinito del parser ELIMINADO**: `let match: String = "x"` colgaba el
  compilador 11+ minutos (cascada de errores sin progreso). Tres mecanismos
  nuevos en parser.nx: (1) presupuesto de 20 errores de parse → "too many parse
  errors, aborting"; (2) `expect()` fallido saltea el token ofensor (panic-mode
  con progreso garantizado; nunca consume cierres ni EOF); (3) en estado
  abortado `check()` simula estar en un cierre → todos los loops del parser
  salen solos. Guards de progreso adicionales en el main loop y `parse_block`
  (que además ya no gira para siempre ante un bloque sin cerrar).
- **Idiom "soft-expect" erradicado**: match arms, struct defs, struct inits y
  enum variants toleraban la coma ausente vía un `expect("COMMA")` cuyo fallo
  IMPRIMÍA un error espurio en código válido (nadie lo veía — el runner no mira
  el output de compilación). Ahora el separador es explícitamente opcional
  (coma o newline). Barrido verificado: 350 archivos de tests/ejemplos
  compilan sin un solo error espurio (antes: 6+ archivos lo emitían).

### Fixed (2026-06-11, post-v0.15.0 — CI de repos públicos)

- **install.sh symlinkeaba el driver crudo**: `setup_path()` apuntaba
  `~/.local/bin/nyx` a `bin/nyx` (el binario del compilador) en vez de
  `scripts/nyx` (el wrapper que rutea `build`/`init`/`run` a `nyx_build` y
  maneja `--version`). Resultado en CI de productos: `nyx build` compilaba un
  `script.nx` inexistente, salía 0 y no producía binario — el step "Build
  product" pasaba en falso y "Verify binary produced" fallaba en los 7 repos.
- **Wrapper `scripts/nyx`**: versión stale `nyx 0.14.0` → `0.15.0`.
- **sync_to_public.sh (core)**: no copiaba `scripts/test-examples.sh` ni
  `examples/by-example/*.nx`, pero el workflow `examples.yml` del repo público
  corre `make test-examples` — fallaba siempre. Ambos agregados al sync.
- **3 recetas by-example no compilaban** (descubierto al correr `make
  test-examples` localmente): 17-regex usaba `match` (keyword) como nombre de
  variable — y destapó un **loop infinito del parser en error recovery**
  (registrado en TASKS.md); 55-sqlite y 93-db-transactions anotaban el handle
  como `int` pero `sqlite_open` retorna `*int` (el checker M-08 ahora lo
  detecta) y usaban un check `db < 0` sin sentido para un puntero NULL-en-fallo.
  Corregidas (.nx + .html del sitio).

## [0.15.0] — 2026-06-11 — Type checker M-08 cerrado (B8) + tooling

> MINOR autorizado por Ottavio (2026-06-11). Cierra el item 5 (último) de la
> Tesis 1 del plan AI-first (docs/AI-FIRST.md): los gaps del type checker M-08.

### B8 — gaps del type checker M-08 (2026-06-11)

- **Trait bounds reales (B8-F1)**: `fn f<T: Display>(x: T)` ahora valida que el
  tipo bindeado a `T` implemente `Display` — antes el bound se parseaba y
  descartaba. Cubre fns libres, async, exportadas e impl methods (F1b).
  Diagnóstico nuevo **NYX1020** (catálogo en docs/SPEC.md). Patrón conservador:
  estricto solo si el tipo tiene impls locales/escaneados.
- **Payloads de enum variants (B8-F2)**: `Color.Rgb(255, "x")` y
  `Color.Rgb(255)` ahora reportan error (NYX1005 tipo / NYX1006 aridad) —
  antes la construcción `Enum.Variant(args)` no tenía ningún check. Funciona
  para enums locales (tipos desde el AST) e importados (scan textual
  cross-module). Payloads genéricos (`Option<T>`) quedan wildcard.
- **Multi-error recovery (B8-F3)**: el checker ya no corta al primer error —
  valida todos los statements hermanos y reporta todos los errores top-level
  en una sola compilación (los checks internos siguen cortando su subárbol,
  sin cascadas).
- Tests: suite de errores 45 → 55 (44 texto + 11 JSON), happy types 11 → 13.

### Tooling (2026-06-11)

- **`nyx build` muestra la causa al fallar** (item 7 Tesis 1 AI-first): el script
  generado por build.nx silenciaba compilador y clang (`>/dev/null 2>&1`) — un
  build fallido solo decía exit=1. Ahora el output va a un log temporal que se
  vuelca a stderr solo en fallo (`error: nyx compile failed:` / `error: clang
  link failed:` + diagnóstico completo con line:column). El éxito sigue silencioso.

### Tests (2026-06-11)

- **test_proxy_metrics.nx reintegrado**: el test estaba excluido del runner como
  "roto ('metrics_init' not declared)" — la causa no era el producto sino el
  runner: el test usa imports relativos al proyecto (`import "src/metrics"`) y
  se compilaba desde el root sin `NYX_PROJECT_DIR=products/proxy`. El runner
  ahora setea la variable por test. Product units: 7 suites/91 casos → 8/95.

## [0.14.0] — 2026-06-10 — AI-first: diagnósticos estructurados + contrato de strings

> MINOR autorizado por Ottavio (2026-06-10). Cierra los items 1–4 de la Tesis 1
> del plan AI-first (docs/AI-FIRST.md): NYX_DIAG=json, line:column, contrato de
> strings unificado, assert abortivo. AI-Verifiability en COMPARISON.md: 3→4.

### Fixed
- **Pseudo-imports del driver** (fcc1600): `is_user_import`/`is_module_import`
  matcheaban por substring — código como `imported.insert("std/math", 1)` se trataba
  como import real, inlineando módulos espurios. Origen del warning histórico
  "⚠ import: archivo no encontrado: import.nx" (eliminado) y de un const MATH_PI
  duplicado al compilar nyx.nx. Ahora la línea debe EMPEZAR con `import `.
- **Deudas latentes del self-check** (fcc1600): 7 casts `: Array` sobre Tokens en
  parser.nx y 10 funciones de codegen.nx sin return en todos los paths — expuestas
  al recompilar módulos que no pasaban por el checker endurecido desde abril.

### Added
- **v0.14 line:column en cada diagnóstico semántico** (fcc1600): los errores traen
  la posición exacta del archivo fuente original — `error in 'main' (line 4): ...`
  en humano, `"line":4,"column":23` en `NYX_DIAG=json`. El ASTNode lleva la posición
  de su último token (slots aditivos [2]/[3]; `%ASTNode` pasa de 2 a 4 campos);
  marcadores `//#line N` rebasean el corrimiento del prelude/imports inlined
  (resolve_source los emite, el lexer los interpreta). Nuevo
  `nyx_array_get_or_zero` en runtime (OOB tolerante para nodos sintéticos).
- **B6 — Diagnósticos estructurados `NYX_DIAG=json`** (bb14718): con la variable de
  entorno seteada, cada error semántico sale como una línea JSON (NDJSON) con `code`
  estable (catálogo NYX1001–NYX1019 en docs/SPEC.md), `severity`, `phase`, `function`,
  `message` (bilingüe vía NYX_LANG) y `suggestion` (identificador crudo del
  did-you-mean). Primer item de la Tesis 1 AI-first (docs/AI-FIRST.md): cierra el bucle
  generar→compilar→corregir sin scraping de texto. Los 35 callsites de error del
  semantic migrados al catálogo; `suggest_similar` dividido en nombre crudo + frase.
  9 tests JSON nuevos en `run_error_tests.sh` (45 total, con asserts de línea).
- **Contrato unificado de strings — `length()` = BYTES** (b3455b1, BREAKING):
  decisión de diseño pre-1.0. Toda la API opera sobre bytes (`length()` =
  `byte_length()`; `substring`/`indexOf`/`charAt` ya lo eran) — `substring(0,
  s.length())` pasa de footgun a identidad. Nuevo `char_length()` para codepoints
  UTF-8 (anchos de UI, conteos de caracteres). Todas las suites pasaron sin tocar
  ningún sitio más — confirmación de que el código asumía bytes.
- **`assert()` abortivo** (6f21d1e): exit(1) en el primer fallo; los `assert_eq_*`
  ahora también marcan el fallo. Dentro del runner `nyx test` (nuevo flag
  `__nyx_test_mode`) no aborta: reporta PASS/FAIL por test y exit 1 al final.
  Suites .nx rotas ya no pueden verse verdes.
- **`make install-local`** (8535049): sincroniza bootstrap + nyx_build + runtime C
  + std al toolchain `~/.nyx` (o `NYX_HOME`) — el toolchain ya no queda
  desactualizado tras sesiones de lenguaje.

---

## [0.13.1] — 2026-06-10 — Auditoría "bugs profundos": B1-B5 + off-by-8 + suite consolidada

### Fixed
- **Off-by-8 del cache del proxy** (6d519cb): `length()` cuenta codepoints UTF-8 pero
  `substring()`/`indexOf()` operan sobre bytes — `cache_mark_hit` rebanaba con `length()`
  y el cache HIT perdía los últimos bytes de bodies multi-byte con Content-Length intacto.
  Fix: `byte_length()` en los 3 slicings de `products/proxy/src/cache.nx` + test de
  integridad de bytes. **Cache reactivado en producción** (a982faa) tras ~7 semanas
  deshabilitado; 4 dominios verificados byte a byte vía gateway.
- **B1 — Colisión de builtins con funciones de usuario** (1dda16f, 0e8caa8, f6ba44f): el
  histórico "cross-module return bug" no era de inferencia — codegen despachaba `read_byte`
  (y term_cols/term_rows/read_line) al builtin aridad-0 sin guarda de aridad, pisando
  funciones de usuario homónimas. Guardas agregadas; workaround de `wal.nx` revertido.
- **B2 — Forward-ref de globales cross-module** (6905949): `register_declarations` ahora
  pre-registra `let`/`var` top-level; importar módulos en cualquier orden ya no produce
  "not declared" sobre globales. Test-207. El proxy lee `g_cache_enabled` directo.
- Integration E2E revivido tras la extracción de nyx-kv: el binario de kv se resuelve en
  `~/nyx-kv-stack` (override `NYX_KV_BIN`); `--port` restituido en el standalone de
  nyx-serve (vivía en el daemon retirado en v0.13).

### Added
- **B4 — Batería unitaria C del runtime** (antes cero tests directos): 16 suites /
  294 asserts (`make test-runtime`), harness header-only `tests/runtime-unit/nyx_test.h`.
  Fase 1 puros (strings/arrays/maps/crypto/url/base64/random/msgpack, vectores FIPS/RFC),
  fase 2 I/O (websocket/http2/thread/process/net vía socketpair), fase 3 frágiles
  (event_loop/scheduler/tls con cert X509 in-process).
- **Runner product-units** (`make test-product-units`): integra 7 tests .nx huérfanos de
  nyx-db y nyx-proxy (91 casos) sin servidores; detecta fallos vía grep "ASSERTION FAILED"
  porque `assert()` no aborta. `test-errors` agregado a `make test-all`.
- Test de regresión de integridad de bytes en cache HIT con body multi-byte.

### Changed
- **B3 — Hardening runtime C** (fdfdb0f): eliminados todos los `strcpy`/`strcat` crudos
  (→ memcpy/append acotado); contrato de seguridad de `nyx_exec` documentado.
- **B5 — Helpers atómicos en semantic.nx** (ba10bfc, bf61bc1): `register_struct`/
  `register_trait_impl`/`register_enum` — los 6 registries de arrays paralelos con
  invariante por construcción.
- `make test-products` cubre queue + db (nyx-kv extraído a nyx-kv-stack con sus tests).

### Docs
- Consolidación total: conteos canónicos únicos en `docs/TESTS.md`; semántica UTF-8 de
  strings documentada en SPEC/LLM.md/CLAUDE.md; `docs/AI-FIRST.md` nuevo (posicionamiento
  3 tesis); referencias a nyx-kv extraído corregidas en todo el repo.

### Known issues (TASKS.md)
- Contrato chars/bytes de la API de strings pendiente de decisión (134 sitios con
  `substring(_, x.length())`).
- `assert()` no abortivo; `nyx build` silencia errores de compilación; `make test-unit`
  legacy (runner racket) roto.

---

## [0.13.0] — 2026-04-20 — M-08 type system + product library refactor

### Milestone
- Full semantic type checker on top of M-01/M-02/M-03/M-04 diagnostic layers.
- Products refactored to libraries (Package Manager consumers): `kv`, `serve`,
  `proxy`, `queue`, `http2`, `db` now importable via `nyx.toml`. Daemons for
  `queue`, `http2`, `db` retired as services; `nyx-edit` and `nyx-shell`
  remain as CLI apps.
- New top-level directories: `services/` (production consumers of libs —
  `gateway`, `nyxkv`) and `sites/` (4 bilingual landing pages as PM projects
  consuming `nyx-serve`).
- Portable toolchain: `install.sh` lays down `~/.nyx/{bin,runtime,std}`; no
  monorepo dependency at runtime.
- Bilingual compiler diagnostics via `NYX_LANG=es|en`.
- Tests (ARM64): **215/215** regression + 36/36 M-08 error paths + 11/11
  M-08 happy-types + 30/30 advanced + 3/3 stdlib. Fixed point verified on
  lexer, parser, types, semantic, codegen, nyx.

### Added — M-08 type system (sessions 1 – 23a)
- **S1**: New `compiler/types.nx` — formal Type AST as arrays (`["TyInt"]`,
  `["TyArray", inner]`, `["TyFn", params, ret]`, `["TyStruct", name, args]`…);
  `ty_parse`, `ty_eq`, `ty_to_str`, `ty_of_literal`, `ty_is_unknown`.
  `semantic.nx` validates type annotations on `let`/`var` with bilingual
  messages and Levenshtein "did you mean" on unknown types. Parallel
  `g_var_types` registry.
- **S2**: Function signatures typed end-to-end. `g_fn_sigs` registry;
  `validate_call`/`validate_return` compare against signatures. Type aliases
  (`type Score = int`) resolved via `resolve_type`. `Array` bare ↔ `Array<T>`
  compatible. `TyInt ↔ TySized (i8..u64, usize)` and `TyFloat ↔ TySized("f32")`
  coerced in `ty_eq`.
- **S3**: Typed binops / unops via `ty_of_binop`. Arithmetic coerces
  int/float; String concat via PLUS; comparison → bool; logical requires
  bool+bool; bitwise requires int+int. Unary NOT / MINUS / TILDE strict.
- **S4**: Method-call return type inference for ~30 built-ins
  (`length`→int, `is_some`→bool, `toUpper`→String, …).
- **S5**: Impl method arg + return type checking. `g_impl_method_*` registry
  populated from `impl T { fn m(…) }` and `impl Trait for T`.
- **S6**: Built-in method arg type checking for String / StringBuilder
  (~13 non-parametric methods).
- **S7**: Parametric builtin method args: `Array<T>.push/contains/indexOf(T)`,
  `Map<K,V>.get/has/delete(K)`, `Option/Result.unwrap_or(T)`, etc.
- **S8 (= M-04)**: Non-callable detection — `validate_call` rejects `x(…)`
  when `x` is a bound value whose type is not `TyFn/TyGeneric/TyPtr/TyStruct("Fn")`.
- **S9**: Let inference extended to `struct_init`, `field_access`
  (via new `g_struct_reg_field_types`), `index` (Array<T>→T, Map<K,V>→V,
  String→char). `validate_for` propagates iterable type to the iteration
  variable.
- **S10**: Generic inference in calls via `subst_apply` + `unify` in
  `types.nx`. `fn id<T>(x: T) -> T; let s: String = id(42)` detects the
  return mismatch. Cross-arg unification catches `max(1, "x")`.
- **S11**: Return-type inference for functions without `-> T`. Walker
  `collect_return_types` + reducer `infer_fn_return_type` (LUB with
  conflict detection, bilingual error) + mutator
  `update_fn_sig_return_by_name` hooked post-body in `validate_function`.
- **S12**: Impl-generics (unify within impl methods) + codegen-aware
  return types (`ty_to_type_ann` back-fills `node.data[2]` so codegen
  emits the correct LLVM signature for inferred returns).
- **S13**: Cross-module type tolerance. `validate_type_ann` treats tuple
  `(...)` and fixed-array `[T:N]` as wildcards (not in Type AST yet).
  `g_has_imports` flag downgrades unknown types to silent wildcard when
  the file has imports. Regression suite now runs with semantic active
  end-to-end (no `NYX_SKIP_SEMANTIC`).
- **S14**: Cross-module struct scanning. New `scan_module_types(path)`
  loads the imported `.nx`, scans for top-level `struct`/`enum`/`type`
  (with optional `pub`), registers names. Invoked from
  `register_declarations` on `import_module`.
- **S15**: Deep scan of fields + variants. `scan_module_types` reads body
  between `{` and `}` and extracts each `field: Type,` (name before `:`)
  and each `Variant` of enums (first identifier per line). Imported
  structs now participate in the "field does not exist" check with
  Levenshtein hint.
- **S16**: Field types cross-module + field-type validation in
  `validate_struct_init` — compares each assigned value against the
  field's registered type, emits
  `type mismatch in field 'Struct.field': expected X, got Y`.
- **S17**: Type alias targets cross-module. Imported `pub type Score = int`
  now resolves to `TyInt`, so `let s: Score = "x"` detects mismatch.
- **S18**: Trait impl tracking. `g_trait_impl_types` / `g_trait_impl_traits`
  arrays populated from `impl Trait for T` blocks. Helpers
  `type_implements_trait` and `type_has_any_local_impl`. `validate_unop`
  strict for structs/enums: MINUS → Neg, NOT → Not, TILDE → BitNot.
- **S19**: Cross-module impl scanning. `scan_module_types` captures
  `impl Trait for Type` lines from imported modules and merges them into
  the impl registry.
- **S20**: Binop trait mapping on custom types. PLUS → Add, MINUS → Sub,
  STAR → Mul, SLASH → Div, PERCENT → Rem — if the operand has local impls
  but not the required trait, emit strict error.
- **S21**: `dyn Trait` validation via `ty_check_dyn_compat(declared, actual,
  context)` hooked into `validate_let`, `validate_call`, `validate_return`.
- **S22**: Impl header generics via `strip_generic_args("Vec<T>") → "Vec"`
  applied in `impl`/`impl_trait` branches of `register_declarations`.
- **S23a**: rhs check in `validate_binop` — symmetric to the lhs check of
  S20, catches `1 + point` where the RHS lacks the arithmetic trait.

### Added — M-01 / M-02 / M-03 diagnostic layers
- **M-01**: Levenshtein "did you mean" for unknown method / variable /
  field names.
- **M-02**: Struct field validation —
  `Point { x: 10, z: 20 }` → "field 'z' does not exist in struct 'Point'
  (did you mean 'x'?)" with bilingual message.
- **M-03**: Missing-return detection for functions whose annotated return
  type is not `unit`.
- **NYX_LANG** env var switches compiler messages between English and
  Spanish (default: en).
- **NYX_VERBOSE** flag for extra compiler diagnostic output.

### Added — M-04 non-callable detection
- Delivered as S8 of M-08. `validate_call` rejects `x(…)` for non-callable
  bindings with message `"'x' is not callable (type: int)"`.

### Added — Product refactor v0.13 (libraries + services + sites)
- `products/kv`, `products/serve`, `products/proxy`, `products/queue`,
  `products/http2`, `products/db` now ship as PM libraries with
  `nyx.toml`.
- `services/gateway` — HTTPS :443 + SNI via `nyx-proxy` as a dep.
- `services/nyxkv` — RESP2 :6380 with TLS via `nyx-kv` as a dep.
- `sites/nyxlang.com`, `sites/nyxkv.com`, `sites/serve.nyxlang.com`,
  `sites/proxy.nyxlang.com` — 4 bilingual landings as PM projects
  consuming `nyx-serve`. `website/` removed; content migrated.
- Daemon binaries for `queue`, `http2`, `db` retired as persistent
  services. Libraries remain available for embedding.

### Added — Developer documentation & ecosystem
- **`LLM.md`** — 580-line dense context file for AI assistants (Claude,
  GPT, Cursor, Copilot) working with Nyx code.
- **By-Example cookbook** — 100 recipes (C.1 – C.4, `.nx` + `.html`) in
  `examples/by-example/` and published at
  `sites/nyxlang.com/static/by-example/`.
- **`PLAN.md`** — session handoff document for long-running compiler
  initiatives.
- **Integrated test runner** `nyx test` (`compiler/test.nx`).

### Added — Portable toolchain
- `install.sh` installs to `~/.nyx/{bin,runtime,std}`; self-contained
  runtime with no monorepo dependency.
- `scripts/build-release.sh` packages `nyx-vX.Y.Z-linux-ARCH.tar.gz`.
- CI green for 8 public repos (GitHub Actions, Linux x86_64 + ARM64).
  macOS disabled (brew paths + `ucontext_t` incompatibility).

### Changed
- Default compiler error messages now route through bilingual tables
  (`NYX_LANG`).
- `scripts/build_bootstrap.sh` and `Makefile` build and link
  `compiler/types.ll` in the correct order
  (`lexer parser types semantic codegen nyx`).
- `codegen_import` in `compiler/codegen.nx` knows the signatures of
  every function exported by `compiler/types.nx`.
- Lexer recognizes `#!` shebang lines without looping; parser tolerates
  trailing comma in struct literals without warnings; driver shebang
  strip now uses `byte_length()` (fixes UTF-8 multi-byte truncation).



### Added — Products
- **nyx-kv** (`products/kv/`) — Redis-compatible key-value store
  - 52 RESP2 commands, 4 data types (strings, lists, sets, hashes)
  - C-level RESP parser (`nyx_resp_read_command` in runtime/net.c)
  - 128 workers, channel-based fd dispatch, port 6380
  - Performance: 82K req/s SET, 85K req/s GET, 253K pipelined
- **nyx-serve** (`products/serve/`) — HTTP framework
  - `server.nx` — Connects std/web.nx App framework with http_serve_mt
  - `files.nx` — Static file serving with MIME type detection (14 types)
  - Port 3000, middleware chain, JSON helpers, cookie sessions
- **nyx-proxy** (`products/proxy/`) — HTTPS reverse proxy
  - SNI multi-domain (4 domains), virtual host routing, connection pooling
  - Health checks (TCP, threshold configurable), access logs, rate limiting
  - Port 443, TLS via Let's Encrypt
- **nyx-queue** (`products/queue/`) — Persistent message queue (Sprint 5)
  - ENQUEUE/DEQUEUE/ACK, redelivery, round-robin multi-consumer
  - Rate limiting per-IP, port 6381
- **nyx-http2** (`products/http2/`) — HTTP/2 server (Sprint 6)
  - HPACK static table, frame parser, stream multiplexing, h2c mode
  - `std/http2.nx` + `runtime/http2.c`, port 3004
- **nyx-db** (`products/db/`) — SQL database engine (Sprint 7)
  - SQL parser, B-tree storage, persistence, port 6382

### Added — Sprint 1: AUTH + Infrastructure
- **AUTH multi-tenant** — `AUTH <token>`, `WHOAMI`, namespace isolation
- **TOKEN_CREATE/TOKEN_REVOKE/TOKEN_LIST** — admin commands (localhost only)
- **Free tier limits** — 100 req/s, 1000 keys, 100KB, 72h TTL
- **deploy.sh** fixes — persist.c added to RUNTIME_SRCS, landing pages
- **TLS hardened** — min TLS 1.2, modern ciphers

### Added — Sprint 2: Middleware + JSON + Docs
- **Middleware chain** (`std/web.nx`) — `app_use()`, `mw_logging()`, `mw_cors()`, `cors_configure()`
- **JSON API helpers** — `response_json_map()`, `req_json()`, `json_escape()`
- **nyx-kv docs** — COMMANDS.md with 49 commands documented

### Added — Sprint 3: Health Checks + Crypto
- **Health checks** (`products/proxy/health.nx`) — TCP check, threshold, auto-recovery
- **Access logs** (`products/proxy/logger.nx`) — timestamp method path status latency
- **HMAC-SHA256** (`runtime/crypto.c`) — `hmac_sha256(key, data)` builtin
- **Base64URL** (`std/base64.nx`) — `base64url_encode()`, `base64url_decode()`
- **getenv_default** — builtin with fallback value

### Added — Sprint 4: Pub/Sub + Sessions + Package Manager
- **Pub/Sub** — SUBSCRIBE, PUBLISH, UNSUBSCRIBE with mutex-protected subscriber list
- **Rate limiting** (`products/proxy/ratelimit.nx`) — per-IP sliding window, HTTP 429
- **Cookie sessions** (`std/session.nx`) — backed by nyx-kv via RESP, configurable TTL
- **Package manager** (`compiler/build.nx`) — `nyx init`, `nyx build`, `nyx run`, `nyx.toml`/`nyx.lock`

### Added — Sprint 8: Cleanup + Consolidation
- **std/resp.nx** — shared RESP parser (DRY: removed duplicates from kv/queue/db)
- **.gitignore** — script.nx, script.ll, product binaries, __pycache__
- **Service files** — nyx-queue.service (:6381), nyx-http2.service (:3004), nyx-db.service (:6382)
- **Unified sync script** — `sync_to_public.sh` accepts parameter (kv, serve, proxy)
- **Unified landing server** — `website/landing-server.nx` with SITE_DIR env var

### Added — Sprint 9: Security + Robustness
- **TLS for nyx-kv** — encrypted connections on port 6380
- **Token expiration** — TOKEN_CREATE accepts optional TTL, expired tokens rejected
- **Token revocation** — TOKEN_REVOKE invalidates immediately
- **Rate limiting** — added to nyx-queue and nyx-db
- **Backup** — nyx-backup.service, logrotate, scripts/backup.sh

### Added — Sprint 10 + Post-Sprint: Documentation + Website
- **The Nyx Book** — 31 chapters + 5 appendices, bilingual EN/ES, sidebar TOC
  - Part 1: Basics (1-11), Part 2: Advanced (12-19), Part 3: Systems (20-25), Part 4: Production (26-31)
  - Dynamic sidebar via `book-sidebar.js` injected in 74 HTML files
- **NyxKV Book** — 14 chapters, bilingual EN/ES, beginner to pro
  - Covers all 49 commands, patterns, client libraries, pricing
- **Landing pages** — 4 bilingual pages (nyxlang.com, nyxkv.com, serve, proxy)
- **Design system v2.1** — light-only, `website/shared/nyx-design-system.css`
- **NyxKV pricing** — 3 tiers (Free/Pro $3/mo/Enterprise $10/mo) with comparison table
- **docs/SPEC.md** — added WebSocket, Middleware/Sessions, HMAC-SHA256, Base64URL, Package Manager sections
- **Test organization** — 7 subdirectories (bootstrap-unit, stdlib-unit, integration, products, stress, advanced, expected)
- **254 tests** — 205 regression + 30 advanced + 19 other
- **334 tests total** — 254 compiler + 80 product/integration

### Added — Sprint 11: Test Infrastructure (April 2026)
- **`make test-products`** — automated product tests (69: kv 41 + queue 17 + db 11)
- **`make test-integration`** — E2E tests (11: serve+kv together)
- **`--port` flag** for nyx-kv and nyx-serve (configurable test ports)
- **tests/products/test_nyx_queue.py** — 17 RESP tests for nyx-queue
- **tests/integration/test_serve_kv.py** — 11 HTTP+RESP E2E tests

### Added — Sprint 12: Process Control + Tooling (April 2026)
- **`nyx test`** — integrated test runner (`compiler/test.nx`), project discovery, `--filter`, `--verbose`, `--timeout`
- **runtime/process.c** — 13 POSIX process control builtins:
  fork, execvp, waitpid, dup2, pipe_new, close_fd, open_fd, getcwd, chdir, stat, isatty, getpid, kill_process
- **nyx-shell** (`products/shell/`) — POSIX interactive shell
  Pipes, redirects (>/>>/<), &&/||, $VAR/${VAR}/$?/$$ expansion, quoting, history (~/.nyx_history), raw mode line editing
- **test-205-process-builtins** — regression test for all process builtins
- Bootstrap seeds recompiled with 13 new builtins

### Compiler fixes (April 6)
- **Short-circuit `and`/`or`** — proper lazy evaluation using alloca+branch pattern
- **`arr[i].method()`** — coerce i64 index result to `%nyx_string*` for string methods
- **Bare `return`** — works in void functions (synthesizes `return 0` at parse time)
- **Terminal I/O builtins** — `raw_mode_enter/exit`, `read_byte`, `term_cols`, `term_rows`, `chr`
- **Array insert/remove** — `arr.insert(idx, val)`, `arr.remove(idx)` with Map conflict guard

### New product
- **nyx-edit** — terminal text editor (1091 lines) with syntax highlighting, selection, undo, search, defer cleanup

### Fixed
- **Compiler: global struct types** — Pre-pass registers struct names before global variable pass
- **Compiler: zeroinitializer** — Struct-typed globals use `zeroinitializer` instead of `0`
- **Compiler: Fn return type** — `Fn(T) -> R` annotations propagate return type to indirect call IR
- **Compiler: !dbg warnings** — removed incomplete debug metadata from codegen
- **Bootstrap ARM64** — .ll seeds recompiled (crc32_bytes undefined), fixed point verified
- **scripts/nyx** — added 9 missing runtime sources (persist.c, scheduler.c, event_loop.c, etc.)
- **nyx-kv: charAt() comparisons** — RESP parser using ASCII values instead of string literals
- **Map.remove(key)** and **Map.clear()** — new HashMap methods (runtime/maps.c)
- **Map.get() field_access** — read_file binary mode, array_unshift/shift, TLS server builtins

---

## [0.12.0] — 2026-03-24 — Reverse Proxy

### Added
- **Reverse proxy library** (`std/proxy.nx`) — HTTP reverse proxy with round-robin load balancing
- Backend management: `proxy_new()`, `proxy_add_backend()`, `proxy_start()`
- Health checks: `proxy_check_health()`, `proxy_set_unhealthy()`, `proxy_set_healthy()`
- Round-robin selection skipping unhealthy backends
- Request forwarding with header rewriting (X-Forwarded-Proto, X-Proxy)
- Content-Length-aware response body reading
- Test: test-190-proxy (config, round-robin, health marking)

---

## [0.11.0] — 2026-03-24 — Enhanced Database

### Added
- **Transactions** — `sqlite_begin()`, `sqlite_commit()`, `sqlite_rollback()`
- **Typed queries** — `sqlite_query_int()`, `sqlite_query_one_int()`, `sqlite_query_one_str()`
- **Parameterized queries** — `sqlite_exec_params()`, `sqlite_query_params()` with array binding
- **Schema migrations** — `sqlite_migrate_init()`, `sqlite_migrate()`, `sqlite_migrate_version()`
- **Table introspection** — `sqlite_tables()`, `sqlite_table_exists()`, `sqlite_count()`
- **Float binding** — `nyx_sqlite_bind_double()` in runtime C
- Test: test-189-sqlite-transactions (transactions, migrations, typed queries, introspection)

---

## [0.10.0] — 2026-03-24 — Web Playground

### Added
- **Web Playground** (`playground/server.nx`) — browser-based code editor powered by Nyx
- HTTP server in Nyx serving static files + compilation API (`/api/run`)
- 3 example snippets (hello, fibonacci, structs) with loader dropdown
- `make playground` target — compiles and starts server on port 8080
- Ctrl+Enter shortcut, Tab indentation, dark theme (Catppuccin)
- Compilation timeout (10s) for safety against infinite loops

---

## [0.9.0] — 2026-03-24 — Version Reset + Audit

### Changed
- Version reset from v5.4.0 to v0.9.0 (see docs/VERSIONING.md for rationale)
- All documentation updated to reflect v0.9.0

### Added
- Feature audit — 136 PASS, 8 PARTIAL, 14 FAIL, 5 DECORATIVE
- Language comparison (docs/COMPARISON.md) — vs 15 languages, honest scoring
- Bilingual README.md rewrite
- Updated CONTRIBUTING.md (209 tests, all tools documented)
- Updated GETTING_STARTED.md with verified code examples

---

## Pre-reset development history

## [5.4.0] — 2026-03-24 — Observable/Event Bus

### Added
- **Event Bus** (`std/events.nx`) — Pub/sub event emitter with history tracking
  - **API**: `event_bus_new()`, `event_on(bus, event, handler)`, `event_emit(bus, event, payload)`, `event_off(bus, event)`
  - **History**: `event_history(bus)`, `event_history_count(bus)`, `event_was_emitted(bus, event)`
  - **Implementation**: Maps `String → Array<handler>`, history Array tracking emitted events with payload
  - **Multi-subscriber**: Each event can have multiple handlers; handlers invoked in registration order
  - **Return value**: `event_emit` returns count of handlers invoked

- **Observable** (`std/events.nx`) — Reactive value with watchers and computed properties
  - **API**: `observable_new(initial)`, `observable_get(obs)`, `observable_set(obs, val)`
  - **Watchers**: `observable_watch(obs, handler)` — register watcher `Fn(int)->bool` (returns whether to keep watching)
  - **History**: `observable_history(obs)` — returns Array of all set values
  - **Computed**: `observable_computed(source, transform)` — create derived observable from source via transform function
  - **Notification**: `observable_set` triggers all watchers, supports conditional unsubscribe via return value

- **179/179 regression tests** — test-179 nuevo
  - **test-179-events**: Event Bus (multi-subscriber, history), Observable (watch, watcher removal, history), Observable Computed with chaining

### Fixed
- **Fn type inference from type annotation** — When `type_ann` is `Fn(...)` and value extracted from Array as i64, convert via `inttoptr i64 ... to i8*` to enable indirect call codegen
  - Before: Closure type annotation on Array-extracted value lost during codegen
  - After: Type annotation explicitly casts extracted value to proper closure pointer type

### Changed
- `compiler/codegen.nx`:
  - Added Fn type annotation handling in codegen_let for Array-extracted closures
  - `inttoptr` cast emitted when type_ann indicates closure type

- `scripts/testing/run_bootstrap_tests.sh`: Test range extended to 179

### Design Notes
- **Event Bus**: Simple pub/sub with String event names, String payloads for flexibility
- **Observable watchers**: Return bool to allow conditional unsubscribe (true = keep watching)
- **Computed observables**: Lazy evaluation via transform function, no memoization
- **Closure type preservation**: Critical for callbacks in event handlers and watchers

### Verified
- 179/179 regression tests
- 30/30 advanced tests
- Bootstrap chain stable (fixed point verified)

---

## [4.0.0] — 2026-03-23 — Collections + Event Loop + SQLite

### Added
- **BTreeMap** (`std/btreemap.nx`) — Sorted map with insertion sort
  - **API**: `btreemap_new()`, `btreemap_insert()`, `btreemap_get()`, `btreemap_range()`, `btreemap_keys()`, `btreemap_delete()`
  - **Implementation**: Insertion sort in Array of tuples `[(key, val), ...]`
  - **Performance**: O(n) insert/delete, O(log n) get via binary search — acceptable para < 1000 items
  - **Type-safe**: Parámetros `Map<String>` soportados con proper dispatch

- **Deque + LinkedList + PriorityQueue** (`std/linkedlist.nx`) — Standard data structures
  - **Deque (Circular Buffer)**: O(1) push/pop at both ends
    - **API**: `dq_push_back()`, `dq_push_front()`, `dq_pop_back()`, `dq_pop_front()`, `dq_peek()`
    - **Implementation**: Circular buffer with wraparound, dynamic resizing
  - **LinkedList (Indexed)**: `O(1)` append/prepend, `O(n)` random access
    - **Structure**: Parallel arrays for values and next pointers
    - **API**: `ll_append()`, `ll_prepend()`, `ll_get()`, `ll_at()`
  - **PriorityQueue (Min-Heap)**: `O(log n)` insert/extract_min
    - **API**: `pq_insert()`, `pq_extract_min()`, `pq_peek_min()`
    - **Implementation**: Array-based heap with sift_up/sift_down

- **Async I/O Event Loop** (`runtime/event_loop.c`) — Non-blocking multiplexing
  - **Backend**: epoll (Linux), fallback poll (macOS/BSD)
  - **API**: `nyx_event_loop_new()`, `nyx_event_register()`, `nyx_event_wait()`, `nyx_event_loop_run()`
  - **Callback Model**: nyx_closure* invoked on fd readiness
  - **Scalability**: O(n) fd count, suitable para 10k+ connections
  - **Non-blocking**: O_NONBLOCK required on registered sockets

- **SQLite3 Bindings** (`runtime/sqlite_adapter.c` + `std/sqlite.nx`) — Relational database access
  - **Dynamic Loading**: `dlopen("libsqlite3.so")` at runtime — no header dependency
  - **ABI**: `nyx_string*` for SQL strings, `Array<String>` for results
  - **Features**: In-memory (`:memory:`), file-based, full SQL support
  - **API**: `sqlite_open()`, `sqlite_execute()`, `sqlite_query()`, `sqlite_close()`

- **162/162 regression tests** — test-158 through test-162 nuevos
  - **test-158-btreemap**: Insert, get, range queries, key enumeration
  - **test-159-deque-linkedlist**: Deque push/pop, LinkedList traversal
  - **test-160-priorityqueue**: PriorityQueue insert, extract_min, heap property
  - **test-161-event-loop**: Event registration, callback dispatch, multiplexing
  - **test-162-sqlite**: Open database, execute statements, query results

### Fixed
- **Map<String> parameter registration** — 3-element registration `[ptr, "Map", "String"]` for proper dispatch
  - Before: Lost type info for String value maps
  - After: `nyx_map_get_str` invoked correctly in codegen

- **Type annotation clobbering in codegen_let** — moved type_ann check to top of else-if chain
  - Before: `let m: Map<String> = identifier` clobbered by "identifier → function" case
  - After: Type annotation preserved across all assignment paths

### Changed
- `compiler/codegen.nx`:
  - Map type parameter registration with full 3-element info
  - codegen_let reorganized to prioritize type annotations

- `runtime/Makefile`:
  - Link against `event_loop.o`, `sqlite_adapter.o`
  - GCC flags for dlopen support

- `scripts/testing/run_bootstrap_tests.sh`: Test range {100..162}

### Design Notes
- **BTreeMap vs B-tree**: Simpler sorted array implementation, sufficient for most use cases
- **Deque as circular buffer**: Standard C data structure, natural Nyx adaptation
- **Event loop callbacks**: Direct nyx_closure invocation, no separate callback registry
- **SQLite dynamic linking**: Avoids build-time dependency, enables optional runtime loading

### Verified
- 162/162 regression tests
- 30/30 advanced tests
- Bootstrap chain stable (fixed point verificado)

---

## [3.1.0] — 2026-03-23 — impl Trait + Tuple Structs + Phantom Types

### Added
- **impl Trait syntax** — Dynamic dispatch sugar for cleaner function signatures
  - **Sintaxis**: `fn foo(x: impl Display)` — cleaner than `dyn Display`
  - **Desugaring**: Parser converts to `"dyn Display"` AST node immediately
  - **Codegen**: Uses existing fat pointer `{data_ptr, vtable_ptr}*` ABI
  - **Benefit**: Rust-compatible syntax, zero cost abstraction

- **Tuple structs (newtype pattern)** — Single-line struct declarations
  - **Sintaxis**: `struct Point(int, int)` → desugars to `struct Point { _0: int, _1: int }`
  - **Access**: Via synthetic field names `p._0`, `p._1`
  - **Pattern matching**: `Point(x, y)` deconstructs via field names
  - **Constructor**: `Point(10, 20)` creates instance naturally
  - **Codegen**: No special handling — layout identical to named-field structs

- **Phantom type pattern** — Type-safe wrappers with zero runtime overhead
  - **Uso**: `struct TypedId<T>(int)` — generic param `T` compile-time only
  - **Seguridad**: `TypedId<User>` ≠ `TypedId<Admin>` en type system
  - **Cero overhead**: `T` not monomorphized, only type checking
  - **Patrón idiomatic**: marker structs para compile-time type tags

- **157/157 regression tests** — test-155, test-156, test-157 nuevos
  - **test-155-impl-trait**: impl Trait desugar → function accepts impl Display
  - **test-156-newtype-structs**: Tuple struct creation, field access, pattern matching
  - **test-157-phantom-types**: Generic newtype para type-safe IDs con markers

### Changed
- `compiler/parser.nx`:
  - `parse_type_annotation()` — IMPL keyword detection → desugar to `dyn`
  - `parse_struct()` — support `(T1, T2, ...)` tuple syntax → synthetic field names

- `compiler/codegen.nx`:
  - `newtype_structs: Map<String, bool>` — registry de structs desugared
  - Field access: synthetic names `_0`, `_1` treated as normal fields

- `compiler/lexer.ll`, `compiler/parser.ll`, `compiler/codegen.ll`: regenerados
- `scripts/testing/run_bootstrap_tests.sh`: Test range {100..157}

### Design Notes
- **impl Trait desugaring**: Immediate parser conversion to dyn syntax
- **Tuple struct field naming**: `_0`, `_1` unlikely to conflict with user code
- **Phantom types**: Pure compile-time type parameter, zero-cost
- **Backward compatible**: Código sin nuevas features compila idénticamente

### Verified
- 157/157 regression tests
- 30/30 advanced tests
- Bootstrap chain stable (fixed point verificado)

---

## [3.0.0] — 2026-03-23 — HKT + GATs + Lifetime Annotations

### Added
- **LIFETIME tokens in lexer** — Lifetime syntax support
  - **Sintaxis**: `'a`, `'b`, `'static` — lifetimes como tokens distintos de char literals
  - **Lexer detection**: `scan_lifetime()` nuevo — checks `'` seguida de letter (no closing `'`)
  - **Discriminación**: `'a` (lifetime) vs `'x'` (char) distinguido por presencia de closing quote
  - **Token**: LIFETIME con value igual al string lifetime (ej: `"'a"`)

- **Lifetime annotations in function signatures** — Funciones pueden ser parametrizadas por lifetime
  - **Sintaxis**: `fn foo<'a>(x: &'a T) -> &'a T { ... }` — lifetime params en generic list
  - **Mixed params**: `fn bar<'a, T>(x: &'a T)` — lifetime + type params juntos
  - **&'a T syntax**: Lifetime stripped en type resolution, `&T` processed normalmente
  - **Parser**: `parse_function()` consume lifetime tokens en generic section

- **Generic Associated Types (GATs)** — Tipos asociados con parámetros genéricos
  - **Trait syntax**: `type Item<T>;` o `type Item<T, U>;` — asociated type con generics
  - **Impl syntax**: `type Item<T> = Concrete<T>;` — concrete type binding en impl blocks
  - **Parser**: `parse_trait_body()` y `parse_impl()` reconocen `type` + generic params
  - **Codegen**: Parsed pero constraints unevaluated — lazy evaluation v3.1.0+
  - **Test 152**: GAT trait definitions compile

- **HKT-style trait support (shallow)** — Higher-Kinded Types sintácticamente soportados
  - **Sintaxis**: `trait Functor<F> { fn map<A, B>(...) -> F<B> }`
  - **Trait-level generics**: `impl<'a, T> Trait for Type` parsed/skipped
  - **Method generics**: `fn method<X, Y>(...)` en trait methods
  - **Design note**: Parsing solo — no type system enforcement de kind correctness en v3.0.0
  - **Test 154**: HKT trait definitions compile

- **154/154 regression tests** — test-152, test-153, test-154 nuevos
  - **test-152-gats**: Generic Associated Types — trait method returns `Self.Item<T>`
  - **test-153-lifetimes**: Lifetime annotations — function signatures con lifetimes parse
  - **test-154-hkt**: HKT traits — Functor-style traits con type methods

### Changed
- `compiler/lexer.nx`:
  - `scan_lifetime()` nueva función — recogniza lifetime tokens
  - Lexer preamble extendida para LIFETIME keyword
  - Char literal detection mejorada para evitar collision con lifetimes

- `compiler/parser.nx`:
  - `parse_type_annotation()` extendida para `&'a T` pattern (lifetime stripped)
  - `parse_function()` consume lifetime params en generic list
  - `parse_trait()` y `parse_impl()` soportan lifetime + type params
  - `parse_trait_body()` reconoce `type Name<T> { ... }` GAT syntax

- `compiler/codegen.nx`:
  - `monomorphize_function()` — skips type params que empiezan con `'` (lifetimes)
  - Generic function detection — ignora functions con SOLO lifetime params
  - Exported functions check updated para lifetime awareness

- `compiler/lexer.ll`, `compiler/parser.ll`, `compiler/codegen.ll`: regenerados
- `scripts/testing/run_bootstrap_tests.sh`: Test range {100..154}

### Design Notes
- **Lifetime parsing**: Distinct from string literals via closing quote discrimination
- **Lifetime-only functions**: `fn foo<'a>() -> int` compila como regular function (no monomorphization)
- **GAT constraints**: Parsed pero no validated — evaluación de well-formedness en v3.1.0+
- **HKT shallow**: Sintáctico parsing sin kind system — semantic checking deferred
- **Backward compatible**: Código sin lifetimes/GATs/HKT compila idénticamente

### Verified
- 154/154 regression tests
- 30/30 advanced tests
- Bootstrap chain stable (fixed point verificado)

---

## [2.3.0] — 2026-03-23 — Fixed-Size Arrays `[T: N]`

### Added
- **Fixed-size arrays** — Stack-allocated arrays con tamaño en tiempo de compilación
  - **Sintaxis**: `var arr: [int: 5] = [10, 20, 30, 40, 50]` — `[T: N]` type annotation
  - **LLVM IR**: Mapeado a `[N x LlvmT]*` (pointer a array en stack via alloca)
  - **Inicialización**: Con literal de array `[a, b, c, ...]`, zero-init vía `@llvm.memset.p0i8.i64`
  - **Acceso**: `arr[i]` — load via GEP, `arr[i] = val` — store via GEP
  - **Parser enhancement**: `parse_type_annotation()` extendida para `[T: N]` con COLON separador (evita conflicto con SEMICOLON)
  - **Design note**: COLON elegido en lugar de SEMICOLON para claridad sintáctica
  - **Test 150**: test-150-fixed-arrays.nx verifica creación, lectura, escritura

### Changed
- `compiler/parser.nx`:
  - `parse_type_annotation()` extendida para reconocer `[` `type` `:` `int` `]` pattern
  - Token COLON ahora válido en contexto de array type annotation
- `compiler/codegen.nx`:
  - `nyx_type_to_llvm()` agregada mapping `[T:N]` → `[N x LlvmT]*`
  - `codegen_let()` early return para fixed-size arrays con alloca + optional init
  - `codegen_index()` GEP + load para fixed-size arrays, con verificación de length() guard
  - `codegen_index_assign()` GEP + store para fixed-size arrays, con verificación de length() guard
  - Preamble: `declare void @llvm.memset.p0i8.i64(i8*, i8, i64, i1)` declarado en codegen_preamble()
- `scripts/testing/run_bootstrap_tests.sh`:
  - Rango de tests extendido a {01..99} {100..150}
- `compiler/parser.ll`, `compiler/codegen.ll`: regenerados

### Bugs Fixed
- **Brace anidada faltante en `codegen_index`**: Bloque `if array.node_type == "identifier"` no tenía cierre `}`, haciendo que resto de función quedara dentro. Fix: añadir cierre `}` correcto.
- **Short-circuit evaluation ausente**: `if x.length() > 2 and x.charAt(0)` evaluaba AMBOS operandos. Para `x = ""`, `charAt(0)` crasheaba. Fix: separar en `if` anidados en `codegen_let`, `codegen_index`, `codegen_index_assign`.

### Design Notes
- **Separador COLON**: `[T:N]` usa `:` no `;` para evitar confusión con terminador de declaraciones en parser
- **Stack allocation**: alloca emite pointer a array en stack (no heap)
- **GEP indexing**: Acceso a elementos via `getelementptr [N x T]* ptr, i64 0, i64 idx` (two-level GEP)
- **Límites**: No hay array bounds checking en runtime (diseño de seguridad: responsabilidad del usuario)

### Verified
- 150/150 regression tests
- 30/30 advanced tests
- Bootstrap chain stable (fixed point verificado tras recompilación)

---

## [2.2.0] — 2026-03-23 — Multi-Trait Derive + Debug + PartialEq

### Added
- **Multi-trait `#[derive(...)]` support** — Soporte para múltiples traits en una sola derivación
  - **Sintaxis**: `#[derive(Clone, PartialEq, Debug)]` — lista separada por comas
  - **Parser**: `while check("COMMA")` loop para acumular múltiples traits
  - **Output**: `attr_str = "derive(Clone,PartialEq,Debug)"` en AST
  - **Test 149**: test-149-derive-macros.nx verifica multi-trait derivación

- **`#[derive(PartialEq)]` macro** — Auto-generar método `eq()`
  - **Codegen**: `emit_derived_partial_eq(name, fields, ctx)` genera implementación
  - **Semántica**: Compara todos los campos via `extractvalue` + `icmp eq` + `and i1`
  - **ABI**: Retorna `i1` (bool)
  - **Usage**: `p1.eq(p2)` retorna `true` si todos los campos son iguales
  - **Registro**: Agrega entrada en `impl_methods` como `StructName:eq → StructName_eq`

- **`#[derive(Debug)]` macro** — Auto-generar método `debug_str()`
  - **Codegen**: `emit_derived_debug(name, fields, ctx)` genera implementación
  - **Semántica**: Construye String con formato `StructName { field1: val1, field2: val2, ... }`
  - **ABI**: Retorna `%nyx_string*`
  - **Usage**: `let s = p1.debug_str()` retorna `"Point { x: 3, y: 4 }"`
  - **Campos**: Usa `nyx_string_from_int()` y `nyx_string_from_float()` para conversión de valores
  - **Acumulación**: SSA-safe string concatenation vía variable acumuladora con fresh temporals

- **`trait Debug` and `trait Copy`** — Nuevos traits en std/prelude.nx
  - **Debug**: Single method `fn debug_str(self) -> String`
  - **Copy**: Marker trait (sin métodos)
  - **Purpose**: Foundation para derived implementations

- **`dispatch_derives()` function** — Central dispatch para todas las derivaciones
  - **Parser**: Parsea `"derive(Clone,PartialEq,Debug)"` → split por coma
  - **Codegen**: Llama `emit_derived_clone`, `emit_derived_partial_eq`, `emit_derived_debug`
  - **Extensibilidad**: Fácil agregar nuevas derivaciones futuras (Ord, Hash, etc.)

- **149/149 regression tests** — test-149 nuevo
  - **test-149-derive-macros**: #[derive(Clone, PartialEq, Debug)] en múltiples structs

### Changed
- `std/prelude.nx`: Agregadas traits Debug y Copy
- `compiler/parser.nx`:
  - `parse_attribute()` extendida para soportar comma-separated derive traits
- `compiler/codegen.nx`:
  - `emit_derived_partial_eq(name, fields, ctx)` nueva función
  - `emit_derived_debug(name, fields, ctx)` nueva función
  - `dispatch_derives(name, fields, attr, ctx)` nueva función central
  - `codegen_struct_definition()` actualizado para usar `dispatch_derives()`
- `compiler/parser.ll`, `compiler/codegen.ll`: regenerados

### Design Notes
- **SSA numbering**: Fresh temporals generados DESPUÉS de computar field values para evitar numbering conflicts
- **Field values**: Extraídos via `extractvalue` para structs en heap; valores primitivos convertidos a String via runtime functions
- **Copy trait**: Marker trait sin implementación lógica — preparación para future Copy semantics
- **Enum support**: `#[derive(...)]` también soportado en enums (desde v2.1.0), no requiere cambios

### Verified
- 149/149 regression tests
- 30/30 advanced tests
- Bootstrap chain stable (fixed point verificado tras recompilación)

---

## [2.1.0] — 2026-03-23 — Clone + Move Semantics (Opt-in)

### Added
- **`Clone` trait** — Soporte para clonación de valores
  - **Definición**: `trait Clone { fn clone(self) -> Self }` en std/prelude.nx
  - **Propósito**: Opt-in cloning semantics para valores que residen en heap (structs con referencias)
  - **Use case**: Copiar structs sin ownership transfer, permitir ownership patterns

- **`#[derive(Clone)]` macro** — Auto-generar implementación Clone para structs
  - **Parser**: Soporte `#[...]` attribute syntax antes de `enum` (además de fn/struct)
  - **Codegen**: `emit_derived_clone(name, fields, ctx)` genera método Clone automático
  - **Semántica**: Toma struct por valor, alloca nuevo struct en heap vía GC_malloc, copia cada campo
  - **ABI**: Retorna `%StructName*` (pointer al nuevo struct en heap)
  - **Test 148**: test-148-clone.nx verifica #[derive(Clone)] en structs

- **`&T` / `&mut T` reference types** — Anotación de tipos para referencias
  - **Sintaxis**: `let ref_x: &int = &p1.x` — reference annotation en type position
  - **Semántica**: `&T` es alias de `*T` en IR LLVM (raw pointer), `&mut T` similar
  - **Codegen**: `nyx_type_to_llvm("&int") = "i64*"`, preserve type_symbol para carga correcta
  - **Auto-deref**: `codegen_let` auto-desreferencia cuando `clone()` retorna `%Point*` pero anotación dice `Point`
  - **Use case**: Type-safe references sin ownership transfer, borrow checker preparation

- **`safe fn` keyword** — Contextual forward hook para borrow checker
  - **Sintaxis**: `safe fn foo(x: int) -> int { ... }` — opcional, sin efecto en v2.1.0
  - **Propósito**: Marcar funciones como "safe" para futuro análisis de borrowing
  - **Parser**: Detecta IDENTIFIER "safe" antes de FN, pasa attr_str="safe"
  - **Runtime effect**: ninguno en v2.1.0 — preparación para v3.0 borrow checker

- **148/148 regression tests** — test-148 nuevo
  - **test-148-clone**: Clone trait, #[derive(Clone)], &T reference types, safe fn, auto-deref en codegen_let

### Changed
- `std/prelude.nx`: Agregada trait Clone
- `compiler/parser.nx`:
  - `parse_type_annotation()` soporta `&T` y `&mut T` (AMP token handling)
  - Detecta contextual "safe" keyword antes de FN
  - `#[...]` soportado antes de enum además de fn/struct
- `compiler/codegen.nx`:
  - `nyx_type_to_llvm("&T")` → mapea a `T*`
  - `emit_derived_clone(name, fields, ctx)` nueva función — emite Clone method automático
  - `codegen_let`: auto-deref cuando `clone()` retorna pointer pero anotación sin pointer
  - `type_symbol` preservado cuando `type_ann.charAt(0) == '&'` para carga correcta como `i64*`
- `compiler/parser.ll`, `compiler/codegen.ll`: regenerados

### Design Notes
- **Clone vs Copy**: Clone es opt-in (explícito), vía derivación o impl manual. Copy (auto-copy de valores pequeños) no implementado en v2.1.0
- **Reference types**: `&T` es syntax sugar para `*T` en IR — no hay tracking de borrow lifetime en v2.1.0
- **Auto-deref en codegen_let**: Cuando `clone()` retorna `%Point*` pero variable anotada como `Point`, cargar: `load %Point, %Point* %clone_result`
- **Safe fn hook**: Contextual keyword sin implementación lógica, preparación para borrow checker

### Verified
- 148/148 regression tests
- 30/30 advanced tests
- Bootstrap chain stable (fixed point verificado tras recompilación)

---

## [2.0.0] — 2026-03-23 — M:N Goroutines + Work-Stealing Scheduler + Select Statement

### Added
- **`spawn { }` syntax** — Goroutine spawning
  - **Parser**: `parse_spawn_stmt()` hoists block body as `__spawn_N` function
  - **Desugaring**: `spawn { body }` → `thread_spawn(__spawn_N)`
  - **Use case**: Lightweight goroutine creation without explicit function definitions
  - **Test 145**: test-145-spawn.nx verifica spawn syntax correctamente desugared

- **`select { case ch => body; default => body }` statement** — Channel multiplexing
  - **Parser**: `parse_select_stmt()` — AST node with cases, default_body, has_default flag
  - **Codegen**: `codegen_select_stmt()` emits non-blocking polling via `nyx_channel_try_recv`
  - **Semantics**: Evaluates all channels in order, executes first ready case, or default if none ready
  - **Runtime**: `nyx_channel_try_recv()` in runtime/thread.c returns value if available, -1 if empty
  - **Test 147**: test-147-select.nx verifica select statement correctamente implementado

- **Work-stealing scheduler** — M:N concurrency runtime
  - **Components**: `NyxGoroutine`, `NyxRunQueue`, `NyxWorker`, `NyxScheduler` structs in runtime/scheduler.c
  - **Context switching**: `ucontext_t` for stack switching and resumption
  - **API**: `nyx_scheduler_init`, `nyx_scheduler_start`, `nyx_scheduler_stop`, `nyx_goroutine_spawn`, `nyx_goroutine_yield`, `nyx_goroutine_join`
  - **Scheduling**: Work-stealing algorithm for load balancing across worker threads
  - **Test 146**: test-146-scheduler.nx verifica scheduler correctamente funciona

- **std/sync.nx** — Synchronization primitives
  - **WaitGroup**: Contador de goroutines activas, `wait()` blocks hasta completarse todas
  - **Semaphore**: Binary semaphore con `acquire()` / `release()`
  - **Once**: Execute-once primitive para one-time initialization
  - **MutexGuard**: Guard pattern para mutex escoped locking
  - **AtomicCounter**: Atomic counter con operaciones thread-safe
  - **Test 144**: test-144-sync.nx verifica sync primitives correctamente funcionan

- **147/147 regression tests** — test-144 through test-147 nuevos
  - **test-144-sync**: WaitGroup, Semaphore, Once, MutexGuard, AtomicCounter
  - **test-145-spawn**: spawn { } syntax desugaring
  - **test-146-scheduler**: Work-stealing scheduler with goroutine spawning
  - **test-147-select**: select statement channel multiplexing

### Changed
- `compiler/parser.nx`: `parse_spawn_stmt()` and `parse_select_stmt()` nuevas funciones
- `compiler/codegen.nx`: `codegen_select_stmt()` nueva función, declaraciones de `nyx_channel_try_recv` y `nyx_yield`
- `runtime/thread.c`: `nyx_channel_try_recv()` implementada (non-blocking channel read)
- `runtime/thread.h`: declaración de `nyx_channel_try_recv`
- `runtime/scheduler.c`: NUEVO — work-stealing scheduler implementation
- `runtime/scheduler.h`: NUEVO — scheduler header
- `std/sync.nx`: NUEVO — synchronization primitives library
- `compiler/parser.ll`, `compiler/codegen.ll`: regenerados
- `scripts/testing/run_bootstrap_tests.sh`: rango actualizado a {100..147}

### Design Notes
- **Spawn desugaring**: Preserva scoping — variables capturadas automáticamente en closure
- **Select statement**: Non-blocking polling respects fairness — cada case evaluado en orden
- **Work-stealing**: Reduces lock contention comparado con centralized work queue
- **Scheduler integration**: Runtime opaque a compilador — compiled code emits `thread_spawn` calls
- **std/sync.nx**: Pure Nyx primitives leveraging runtime mutexes/conditions

### Verified
- 147/147 regression tests
- 30/30 advanced tests
- Bootstrap chain stable (fixed point preservado)

---

## [1.9.0] — 2026-03-22 — Package Registry + Build System

### Added
- **std/args.nx** — CLI argument parser module (150 líneas)
  - **ArgParser struct**: CLI argument definition y parsing
  - **Methods**: `arg_parser_new`, `parser_add_flag`, `parser_add_option`, `parser_parse`, `parsed_args_get_*`, `parsed_args_has_*`
  - **Support**: flags (`-v`), options (`--output=file`), positional arguments, error reporting
  - **Example**: `nyx prog.nx -v --output=result.txt input.txt`

- **std/csv.nx** — CSV parser/serializer module (200 líneas)
  - **CsvDoc struct**: Documento CSV con headers y rows
  - **Methods**: `csv_parse`, `csv_parse_delim`, `csv_headers`, `csv_data_rows`, `csv_get_row`, `csv_get_field`, `csv_get_by_name`, `csv_stringify`, `csv_new_doc`, `csv_add_row`
  - **Support**: custom delimiters, header-based field access, round-trip serialization
  - **Example**: `csv_parse(content)` → CsvDoc, `csv_get_by_name(doc, 0, "name")` → String

- **std/semver.nx** — Semantic versioning module (250 líneas)
  - **Version struct**: major, minor, patch, prerelease, metadata
  - **Methods**: `semver_parse`, `semver_compare`, `semver_satisfies`, `semver_resolve`, `version_to_string`
  - **Constraints**: `^1.2.3` (caret), `~1.2.3` (tilde), `>=`, `<=`, `>`, `<`, `=`, `*`
  - **Resolution**: `semver_resolve(versions, constraint)` → best matching version
  - **Example**: `semver_parse("1.2.3")`, `semver_satisfies(v, "^1.0.0")` → bool

- **compiler/build.nx** — Build system extension (300 líneas)
  - **nyx.toml parsing**: [dependencies] section con `name = "constraint"`
  - **nyx.lock generation**: Lock file con versiones exactas resueltas
  - **Comando `nyx_build add <pkg> [--from <url>]`**: Agregar dependencia + resolver version
  - **Dependency resolution**: Usa semver para best match contra available versions
  - **Version querying**: Package registry querying (mock en v1.9.0)
  - **Vendorizing**: Descarga/almacena sources de dependencias localmente

- **143/143 regression tests** — tests 140-143 nuevos
  - **test-140-args**: ArgParser con flags, options, positional args
  - **test-141-csv**: CSV parsing, headers, field access, serialization
  - **test-142-nyx-add**: nyx.toml + nyx.lock generation, dependency resolution
  - **test-143-semver**: Version parsing, compare, satisfies, resolve

### Fixed
- **Map<String> type info en struct fields**: Workaround implementado — usar variable local con type annotation
- **int + String concatenation order**: Recomendación — siempre empezar con String: `"" + 5 + "..."` en lugar de `5 + "..."`
- **Semver constraint evaluation**: Caret (`^`) y tilde (`~`) ahora evaluadas correctamente según spec npm

### Changed
- std/prelude.nx: actualizado para incluir `std/args.nx`, `std/csv.nx`, `std/semver.nx`
- Makefile: targets `build-args`, `build-csv`, `build-semver`, `build-build` (opcional)
- scripts/testing/run_bootstrap_tests.sh: range extendido a 143

### Design Notes
- **ArgParser**: Reutiliza Map de runtime para almacenar flags/options — sin sintaxis especial
- **CSV**: Parser puro en Nyx (no FFI) — soporta RFC 4180 con header-based access
- **Semver**: Implementación completa de constraint resolution — compatible con npm versioning
- **Build system**: Modular — `compiler/build.nx` puede ser reemplazado por versión C en v2.0.0

### Verified
- 143/143 regression tests
- 30/30 advanced tests
- Bootstrap chain stable (fixed point preservado)

### Known Issues
- **Map<T> type info propagation**: struct fields no retienen type info en field_access — v2.0.0
- **Bidirectional concat**: `int + String` order matters — v2.0.0 operator overloading fix

---

## [1.8.0] — 2026-03-22 — macOS/ARM64 + Toolchain (COMPLETO — Pasos 1-6)

### Paso 1: Shebang Support (COMPLETADO)
- **Shebang support**: `#!/usr/bin/env nyx` — strip de línea shebang en driver antes de parsing
  - **Implementation**: En `compiler/nyx.nx` `main()`, detecta shebang con `startsWith("#!")`, escanea hasta `\n`, trunca con `substring()`
  - **Wrapper script**: `scripts/nyx` nuevo shell script que permite `nyx mi_programa.nx` y soporta execution de archivos con shebang
  - **Installation**: `make install` instala `scripts/nyx` en `/usr/local/bin/nyx`
  - **Test 135**: test-135-shebang.nx verifica shebang ignorado correctamente

### Paso 2: `nyx doc` — Generador de Documentación (COMPLETADO)
- **Documentation generator**: `nyx doc FILE=modulo.nx` genera documentación markdown
  - **Module**: `compiler/doc.nx` nuevo — parser de comentarios `///` sobre items públicos
  - **Extraction**: Extrae `pub fn`, `pub struct`, `pub enum` con comentarios de documentación
  - **Output**: `modulo.md` con signatures y docstrings formateados
  - **Makefile target**: `make build-doc` compila `nyx_doc` binary
  - **Test 136**: test-136-doc-gen.nx verifica generación de docs
  - **Use case**: Auto-documentation de módulos sin escribir markdown manualmente

### Paso 3: `bench "name" { body }` — Benchmark Framework (COMPLETADO)
- **Benchmark declarations**: `bench "name" { body }` o `bench "name" N { body }` para N iterations
  - **Parser**: contextual keyword `bench` en `parse_bench_decl()` — no colisiona con `bench` como identifier
  - **Codegen**: Pass 2.6 emite funciones `__bench_N()` con timing via `@nyx_time_us`
  - **Runner**: Auto-generated benchmark runner en `main()` cuando no hay `main` usuario
  - **Iterations**: Default 100000, override con literal numérico `bench "name" 10000 { ... }`
  - **Helper**: `add_string_constant()` nuevo en codegen para constantes string inline
  - **Test 137**: test-137-bench-framework.nx verifica timing y output correcto
  - **Output**: "name: XXX μs/iter" para cada benchmark
  - **Use case**: Performance testing integrado sin dependencias externas

### Paso 4: `nyx vet` — Analizador Estático (COMPLETADO)
- **Static analyzer**: `nyx vet FILE=prog.nx` analiza código y reporta warnings
  - **Module**: `compiler/vet.nx` nuevo — walk de AST detectando problemas comunes
  - **Checks**:
    - **W001**: Unused variables — `let x = ...` pero nunca usado
    - **W002**: Unused imports — `import "mod" as m` pero nunca usado
    - **W003**: Dead code — statements después de `return` no reachable
  - **Makefile target**: `make build-vet` compila `nyx_vet` binary
  - **Test 138**: test-138-vet-analysis.nx verifica detection de unused/dead code
  - **Output**: `FILE:line:col: Wxxx: message` formato compatible con editores
  - **Use case**: Lint checks sin correr el compilador completo

### Paso 5: CI macOS + Cross-compilation (COMPLETADO)
- **macOS continuous integration**: `.github/workflows/ci.yml` añadido job `test-macos`
  - **Platform**: `runs-on: macos-latest`
  - **Dependencies**: `brew install bdw-gc openssl llvm` para deps nativas
  - **OpenSSL paths**: configurados via `$GITHUB_ENV` para `LDFLAGS` y `CPPFLAGS`
  - **Tests**: Corre regression tests (138/138) + advanced tests (30/30) en macOS
  - **Artifacts**: Binarios nativos macOS cacheados para reuso en PRs
  - **Cross-compilation targets**:
    - `make cross TARGET=aarch64-linux-gnu FILE=prog.nx` — ARM64 Linux via aarch64-linux-gnu-gcc
    - `make cross TARGET=x86_64-w64-mingw32 FILE=prog.nx` — Windows via MinGW
    - `make wasm FILE=prog.nx` — WebAssembly via wasi-sdk (requiere `/opt/wasi-sdk`)
  - **Makefile**: Nuevos targets para cross-compilation con soporte de toolchains

### Paso 6: Bootstrap Recompilación + Verificación (COMPLETADO)
- **Bootstrap reconstrucción**: `make recompile-all && make bootstrap` regenera todos los módulos
  - **Modified modules**: `parser.nx`, `codegen.nx` actualizados con nuevas features
  - **Seeds**: `parser.ll`, `codegen.ll` regenerados desde Nyx puro
  - **Fixed point**: Verificado — dos pasadas de `recompile-all` producen IR idéntico
  - **All tests**: 138/138 regression + 30/30 advanced pasan en bootstrap reconstruido

### Changed
- `compiler/nyx.nx`: shebang strip logic en `main()` antes de `resolve_source()`
- `compiler/parser.nx`: contextual keyword `bench`, `parse_bench_decl()` nueva función
- `compiler/codegen.nx`: Pass 2.6 para bench declarations, `add_string_constant()` helper
- `compiler/doc.nx`: nuevo módulo — documentation generator
- `compiler/vet.nx`: nuevo módulo — static analyzer
- `compiler/parser.ll`, `compiler/codegen.ll`: regenerados
- `scripts/nyx`: nuevo wrapper script
- `.github/workflows/ci.yml`: macOS job agregado
- `Makefile`: targets `install`, `build-doc`, `build-vet`, `cross`, `wasm` agregados
- `scripts/testing/run_bootstrap_tests.sh`: rango extendido a 138
- Tests 135-138: nuevos tests que verifican cada paso

### Design Notes
- **Shebang**: Strip en driver (nyx.nx), no en lexer — separación clara de responsabilidades
- **Doc generator**: Standalone module que reutiliza lexer/parser — generación rápida
- **Bench framework**: Contextual keyword evita conflicto con `bench` como identifier — parse-time detection
- **Vet analyzer**: Lightweight static analysis sin type tracking — rápido para use interactivo
- **Cross-compilation**: Makefile delegación a externos toolchains, no cambios en compilador core
- **Bootstrap stability**: Fixed point preservado — v1.8.0 completamente bootstrappable

### Verified
- **138/138 regression tests** (test-135 shebang, test-136 doc, test-137 bench, test-138 vet)
- **30/30 advanced tests**
- **macOS CI**: Todos los tests pasan en macOS
- **Bootstrap chain stable**: fixed point verificado tras recompilación completa
- **Toolchain integration**: nyx_doc, nyx_vet, nyx_fmt, nyx_check, nyx_repl todos bootstrappables

---

## [1.7.2] — 2026-03-22 — Map<T> Type Annotations + Inline Lambda Args + Gap Analysis

### Added
- **Map<String> y Map<int> type annotations**: `let m: Map<String> = ...` registra Map con type info para dispatch correcto
  - **Type preservation**: Variables Map almacenan 3 elementos `[ptr, "Map", "String"]` o `[ptr, "Map", "int"]`
  - **Closure env fix**: Map variables en closure environments también capturan type info correctamente
  - **Polymorphic dispatch**: Methods map.get(key) usa nyx_map_get_str o nyx_map_get_int según type
  - **134/134 regression tests** — test-134-inline-lambda-args.nx nuevo

- **Gap Analysis — Roadmap v1.8.0-v3.0.0 definido** (22 Marzo 2026)
  - **Gaps Críticos (12)**: Identificadas brechas respecto a C, C++, Lisp, COBOL, Java, Rust, Go, Python, TypeScript
  - **Versioning**:
    - **v1.8.0** (H1 2026): macOS/ARM64 + toolchain (nyx doc, nyx bench, nyx vet, shebang)
    - **v1.9.0** (H1 2026): Package registry (nyx.toml, nyx add, nyx publish, benchmarks)
    - **v2.0.0** (H2 2026): M:N concurrencia (goroutines, select, work-stealing scheduler)
    - **v2.1.0** (H2 2026): Borrow checker opt-in (Clone, &T, &mut T, Send+Sync)
    - **v2.2.0** (2027): WASM + proc macros + #[derive]
    - **v2.3.0** (2027): const fn + stdlib depth (SQLite, BTreeMap, async I/O epoll)
    - **v2.4.0** (2027): Bindgen + Python bindings
    - **v3.0.0** (2028): HKT + GATs + lifetimes completos
  - **Competitiveness score**: 10/10 en features de lenguaje, 7/10 en ecosistema + tooling

### Changed
- compiler/codegen.nx: `codegen_let()` manejo de `Map<T>` type annotations en conversión i64→i8*
- compiler/codegen.ll: regenerado
- docs/ROADMAP.md: actualizado completamente con tabla de gaps y timeline v1.8.0-v3.0.0
- tests/test-134-inline-lambda-args.nx: nuevo test — inline lambdas como argumentos de funciones
- tests/expected/test-134-inline-lambda-args.expected: expected output (15, 7, 1, 2, 4, 5, 8, 20, 40, 60)
- scripts/testing/run_bootstrap_tests.sh: range extendido a 134

### Verified
- 134/134 regression tests
- 30/30 advanced tests
- Bootstrap chain stable (fixed point preservado)
- Gap analysis completado — roadmap futuro definido

---

## [1.7.1] — 2026-03-22 — std/web.nx Map API

### Added
- **Web framework rewrite**: `std/web.nx` con Map API real
  - **parse_query_string(qs)** → `Map<String>` con query params extraídos
  - **parse_form_data(body, ct)** → `Map<String>` con form fields extraídos
  - **parse_cookies(header)** → `Map<String>` con cookie values
  - **route_match(pattern, path)** → `Map<String>` con route params, o Map vacío si no-match
  - **Route struct**: definición de ruta con patrón y handler
  - **App struct**: aplicación HTTP con routes, before_hooks, after_hooks, static_dir
  - **App API**: `app_new()`, `app_route()`, `app_get/post/put/delete()`, `app_before/after()`
  - **Response API**: `response_new()`, `response_html()`, `response_json()`, `response_redirect()`, `response_text()`

### Changed
- std/web.nx: reescritura completa con Map<String> retorno en lugar de String serializado
- tests/test-133-web-framework.nx: actualizado a nuevo Map API
- tests/expected/test-133-web-framework.expected: output actualizado (12 líneas)
- scripts/testing/run_bootstrap_tests.sh: range confirmado a 133

### Fixed
- **test-133 expected output**: test 3 (exact match) ahora retorna Map con sentinel `_matched = "true"` → imprime "1"

### Verified
- 133/133 regression tests
- 30/30 advanced tests
- Bootstrap chain stable

---

## [1.6.0] — 2026-03-22 — Literal Patterns en Match

### Added
- **Literal patterns en match** (v1.6.0): `match n { 0 => {...}, 1 => {...}, _ => {...} }` — literals in pattern position
  - **Syntax**: `0`, `3.14`, `"hello"`, `true`, negativos `-5` como patterns
  - **Implementation**: Parser extension en `parse_single_pattern()`, nuevo AST node `literal_pattern`
  - **Codegen**: Función `codegen_literal_pattern_cmp()` genera comparaciones según tipo (icmp, fcmp, nyx_string_equal, etc.)
  - **OR patterns**: Múltiples literals en OR patterns — `0 | 1 | 2 => {...}`
  - **131/131 regression tests** — test-131-literal-patterns.nx nuevo

### Changed
- compiler/parser.nx: `parse_single_pattern()` extendido para NUMBER, STRING, TRUE, FALSE tokens
- compiler/codegen.nx: `codegen_literal_pattern_cmp()` nueva función, dispatch en `codegen_match()` para value matching
- compiler/parser.ll, codegen.ll: recompilados
- scripts/testing/run_bootstrap_tests.sh: range extended to 131
- tests/test-131-literal-patterns.nx: nuevo test
- tests/expected/test-131-literal-patterns.expected: expected output

### Design Notes
- **Value matching**: Literals como alternativa a if-let para escalares — más idiomático en algunos casos
- **Type-aware comparison**: INT→icmp, FLOAT→fcmp, STRING→nyx_string_equal, BOOL→icmp
- **Negatives**: MINUS + NUMBER en parser genera literal_pattern con valor negativo

### Verified
- 131/131 regression tests
- 30/30 advanced tests
- Bootstrap chain stable (fixed point preservado)

---

## [1.5.0] — 2026-03-22 — if-let / while-let

### Added
- **if-let pattern binding**: `if let Pattern = expr { ... } else { ... }` — desugared to `match` in parser, zero codegen overhead
  - **Syntax**: `if let Option.Some(x) = opt { use_x(x) } else { fallback() }`
  - **Implementation**: Parser extension in `parse_if()`, desugars to 2-arm match with pattern + wildcard `_`
  - **Codegen**: Completely reuses existing `codegen_match` — no new codegen logic required
  - **Pattern support**: All existing patterns work — `Some(x)`, `Ok(x)`, struct patterns, nested patterns, wildcards
  - **130/130 regression tests** — test-130-if-let.nx nuevo

- **while-let pattern binding**: `while let Pattern = expr { body }` — re-evaluates expression each iteration
  - **Syntax**: `while let Option.Some(x) = next_item() { process(x) }`
  - **Implementation**: New AST node `while_let = [pattern, expr, body]`, function `codegen_while_let()`
  - **Re-evaluation**: Expression re-evaluated on each loop iteration (unlike Rust while-let which re-evaluates assignment)
  - **Pattern matching**: Supports nested_match_pattern (with bindings) and match_pattern (simple patterns)
  - **Loop semantics**: Exits on pattern mismatch (Option.None, etc.)

### Changed
- compiler/parser.nx: `parse_if()` extended to detect LET token → calls `parse_if_let()`, `parse_while()` extended → calls `parse_while_let()`
- compiler/codegen.nx: `codegen_while_let()` new function, dispatch in `codegen_statement()` for `while_let` node
- compiler/parser.ll, codegen.ll: recompilados
- scripts/testing/run_bootstrap_tests.sh: range extended to 130
- tests/test-130-if-let.nx: nuevo test con output 42/none/10

### Design Notes
- **if-let**: Syntactic sugar for 2-arm match pattern — zero runtime overhead
- **while-let**: New AST node required because re-evaluation behavior differs from single-assignment Rust pattern
- **Pattern binding**: Both constructs support all existing pattern forms (enums, structs, nested, wildcards)
- **Parser-level desugaring**: if-let desugared at parse time to match, reducing codegen complexity

### Verified
- 130/130 regression tests
- 30/30 advanced tests
- Bootstrap chain stable (fixed point preservado)

---

## [1.4.2] — 2026-03-22 — Declarative Macros

### Added
- **Declarative macros** (v1.4.2): `macro name { (params) => { body } }` — token-range re-parse con sustitución de parámetros
  - **Syntax**: `macro log! { (msg) => { print(msg) } }`, invocación `log!("hello")`
  - **Implementation**: Parallel Arrays en parser scope `macro_names`, `macro_body_starts`, `macro_params_strs` evitan type tracking issues
  - **Re-parsing**: `parse_macro_invocation()` vuelve a parsear body con substitución textual de parámetros
  - **Codegen**: `macro_def` nodo → no-op (retorna 0)
  - **129/129 regression tests** — test-129-macros.nx nuevo

### Fixed
- **Parser-level macro registration**: Parallel Arrays en lugar de Maps para evitar type tracking issues con String values en closures
- **Function scope Map operations**: Corrección de `map_new()` builtin vs `Map.new()` método (ambigüedad resuelta)
- **Type annotation for inttoptr**: `let mname: String = macro_names[mli]` force correcta coerción en array access

### Changed
- compiler/parser.nx: `parse_macro_def()`, `parse_macro_invocation()` nuevas funciones internas, `parse_primary()` y `parse_statement()` dispatch para macros
- compiler/codegen.nx: `codegen_macro_def()` → no-op
- compiler/parser.ll, codegen.ll: regenerados
- scripts/testing/run_bootstrap_tests.sh: range extended to 129
- tests/test-129-macros.nx: nuevo test

### Design Notes
- Macros almacenadas como rangos de tokens en parser, no como AST nodes
- Sustitución textual de parámetros — no type-aware
- Reutiliza infraestructura de parser existente — sin cambios en semantic/codegen

### Verified
- 129/129 regression tests
- 30/30 advanced tests
- Bootstrap chain stable (fixed point preservado)

---

## [1.4.1] — 2026-03-22 — Union Types

### Added
- **Union types** (v1.4.1): `type Name = A | B | C` desugared a `enum_def` AST node
  - **Syntax**: `type Result = Ok | Err`, `type Value = int | String | bool`
  - **Implementation**: Parser extension en `parse_type_alias()`, 15-line change
  - **Codegen**: Completamente sin cambios — reutiliza infraestructura de enums
  - **128/128 regression tests** — test-128-union-types.nx nuevo

### Changed
- compiler/parser.nx: `parse_type_alias()` detecta `|` y desugars a `enum_def` AST
- compiler/parser.ll: regenerado
- tests/test-128-union-types.nx: nuevo test
- scripts/testing/run_bootstrap_tests.sh: range extended to 128

### Design Notes
- Union types son syntactic sugar para enums simples (sin datos asociados)
- Pattern matching idéntico a enums
- Sin breaking changes — reutiliza infraestructura existente

### Verified
- 128/128 regression tests
- 30/30 advanced tests
- Bootstrap chain stable (fixed point preservado)

---

## [Unreleased] — Examples: Console Text Editor + File I/O Fixes + grep clone + Global Bool Bug Fix

### Fixed
- **Global bool initialization bug** (v1.7.1 patch)
  - **Archivo**: `compiler/codegen.nx` línea ~10094 (Pass -1, inicialización de globals)
  - **Bug**: `var g_running: bool = true` emitía `global i1 0` (false) en LLVM IR
  - **Root cause**: Codegen no tenía case especial para `gtype == "i1"` con `value.node_type == "bool"`, siempre defaulteaba a `"0"`
  - **Fix**: Agregado bloque condicional para manejo explícito de bool values
  - **Impacto**: `examples/editor.nx` salía inmediatamente debido a `g_running = true` leído como false; `examples/grep.nx` ignoraba modo regex por defecto
  - **Archivos modificados**: `compiler/codegen.nx`, `compiler/codegen.ll` (regenerado)
  - **Tests**: 123/123 regression ✅
  - **Nota**: Bugfix dentro de v1.7.0 (sin nuevo número de versión)

### Added
- **examples/editor.nx** — Editor de texto de consola estilo nano, ~545 líneas, 100% en Nyx
  - **FFI**: `extern "C" fn putchar(c: i64)`, `extern "C" fn getchar() -> i64` para I/O de caracteres
  - **Terminal modes**: raw mode via `exec("stty raw -echo")`, cooked mode restaurado on exit
  - **Navegación**: flechas (arriba/abajo/izquierda/derecha), Home/End, PgUp/PgDn
  - **Edición**: insertar carácter, Backspace (merge con línea anterior), Del (merge con siguiente), Enter (partir línea), Ctrl+K (borrar línea)
  - **Archivo**: Ctrl+S (guardar), Ctrl+Q (salir), `get_args()` para abrir archivo inicial
  - **UI**: números de línea dim (columna 4+1+pipe), status bar en reverse video (ANSI escape codes), barra de mensajes, scroll automático
  - **Features demostrables**:
    - Global structs implícitos (variables globales, stack de undo)
    - Arrays dinámicos y manipulación de strings (substring, length, concatenation)
    - File I/O via `file_open/read_line/write_string/close/exists`
    - Signal handling para restaurar terminal on Ctrl+C
    - ANSI escape codes generados via `putchar(27)` + `print_no_newline`
    - `format()` builtin para status bar
  - **Tamaño de pantalla**: 22×80 hardcoded (seguro para cualquier terminal)
  - **Test status**: 123/123 regression tests sin cambios

- **examples/grep.nx** — Clon funcional de grep en Nyx puro, ~280 líneas
  - **Flags**: `-v` (invert), `-c` (count), `-n` (line numbers), `-i` (case-insensitive), `-l` (list files), `-E` (regex), `-F` (literal), `-q` (quiet)
  - **Features**:
    - Colores ANSI para filename (magenta) y números de línea (verde)
    - Soporta múltiples archivos y fallback a stdin
    - Usa regex POSIX via `regex_is_match()`
  - **Ejemplo de uso**: `nyx_bootstrap ./examples/grep.nx -- -n "pattern" file.txt`

### Fixed
- **`nyx_file_read_line` returns `:EOF:` on EOF** (v1.7.1)
  - **Archivo**: `runtime/file-io.c` línea 132
  - **Cambio**: `return NULL` → `return nyx_string_from_cstr(":EOF:")`
  - **Razón**: Editor y otros programas que leen archivos usaban `if line == ":EOF:"` para detectar EOF, pero `NULL != ":EOF:"` causaba loops infinitos
  - **Tests**: 123/123 regression tests verifican funcionalidad sin regresiones

- **`@main` ahora recibe `argc`/`argv` y llama `nyx_set_args`** (v1.7.1)
  - **Archivo**: `compiler/codegen.nx`
  - **Cambios**:
    - Firma de `@main` ahora es `define i64 @main(i32 %argc, i8** %argv)`
    - Al inicio del body emite `call void @nyx_set_args(i32 %argc, i8** %argv)`
    - Declaración `declare void @nyx_set_args(i32, i8**)` añadida
    - Ambos mains sintéticos (test runner y no-main) también actualizados
  - **Razón**: `get_args()` siempre retornaba array vacío porque `nyx_set_args` nunca era llamada — el editor abría "unnamed.txt" incluso cuando se pasaba `ARGS=archivo.nx`
  - **Tests**: 123/123 regression tests verifican funcionalidad sin regresiones

---

## [1.3.0] — 2026-03-22 — Inline Lambda Expressions

### Added
- **Inline Lambda Expressions** (v1.3.0 L2 priority)
  - **Feature**: `fn(params) -> rettype { body }` expressions en cualquier expression context
  - **Syntax**: `let add = fn(a: int, b: int) -> int { a + b }`
  - **Parsing**: lambda expressions se hoizan a top-level como `__lambda_N` functions, retorna `identifier("__lambda_N")`
  - **Hoisting mechanism**: `pending_lambdas` queue en parser acumula lambdas, se prependen al programa al final
  - **Type inference**: `codegen_let` detecta `identifier("__lambda_N")` que resuelve a función conocida → setea `type_symbol = "Fn"`
  - **Bug fixes aplicados**:
    - `all_stmts.push(pl)` donde `pl: ASTNode` empujaba pointer en lugar de Array Nyx → removida type annotation
    - `let add = fn(...)` no reconocía que `identifier("__lambda_N")` es función → agregado check en codegen_let
  - **Archivos modificados**: `compiler/parser.nx`, `compiler/codegen.nx`, `compiler/parser.ll` (recompiled), `compiler/codegen.ll` (recompiled)
  - **Test**: `tests/test-127-inline-lambdas.nx` verifica lambda expressions y función assignment
  - **127/127 regression tests** — test-127 pasa sin regresiones

### Changed
- compiler/parser.nx: `parse_lambda_expression()` new function, `pending_lambdas` queue in parser
- compiler/codegen.nx: Fn type detection for identifier results in codegen_let, hoisting of pending lambdas
- compiler/parser.ll, codegen.ll: regenerados con `make recompile-all`
- scripts/testing/run_bootstrap_tests.sh: range extendido a 127
- tests/test-127-inline-lambdas.nx: nuevo test
- tests/expected/test-127-inline-lambdas.expected: nueva expected output

### Design Notes
- Lambda hoisting mantiene order: lambdas parseadas en source order, definidas antes que se usen
- Sin cambios a AST node signature — lambdas son funciones normales después del hoisting
- Reutiliza infraestructura de function definitions — codegen trivial

### Verified
- 127/127 regression tests
- 30/30 advanced tests (sin cambios)
- Bootstrap chain stable (fixed point preservado)

---

## [1.2.0] — 2026-03-22 — Hex Literals + Bootstrap Chain Fix + Global Map Init + format() Escaping + Result Type Inference

### Added
- **Result/Option type inference** (v1.2.0 L4 priority)
  - **Shorthand syntax**: `Result.Ok(x)` and `Result.Err(e)` now work WITHOUT explicit type parameters
  - **Option shorthand**: `Option.Some(x)` and `Option.None` now work without explicit type parameters
  - **Type inference context**: inferred from (1) current function's return type, (2) LHS type annotation in let binding
  - **New CodegenContext field**: `expected_type: Array` for type context propagation during expression evaluation
  - **Helper function**: `extract_type_args_from_str()` parses generic type strings like "Result<int, String>" → ["int", "String"]
  - **Match pattern resolution fix**: when bare generic enum name used (e.g. "Result"), resolved to mangled name using match subject's Nyx type
  - **Return type context**: `codegen_return` sets `ctx.expected_type[0] = ctx.current_return_type[0]` before evaluating return expression
  - **Let binding context**: `codegen_let` sets `ctx.expected_type[0] = type_ann` before evaluating value expression
  - **126/126 regression tests** — test-126-result-inference.nx nuevo
  - **Impacto**: `Result.Ok(5)` sin anotación ahora infiere tipo desde contexto correctamente

- **Hex, binary, and octal literals** (v1.2.0 L1 priority)
  - **Syntax**: `0xFF`, `0XFF`, `0b1010`, `0B1010`, `0o77`, `0O77` — case-insensitive
  - **Lexer**: `scan_number()` extendido para detectar prefijos `0x`, `0b`, `0o` y parsear dígitos correspondientes
  - **Conversion**: en el lexer — conversión a decimal durante scanning, no requiere cambios en codegen
  - **Helper functions**: `is_hex_digit()`, `hex_digit_val()`, `bin_to_int()`, `oct_to_int()`, `hex_to_int()` en lexer.nx
  - **String utilities**: `digit_to_string()`, `int_to_dec_string()` para conversión de resultados
  - **125/125 regression tests** — test-125-hex-literals.nx nuevo

### Fixed
- **Bootstrap chain stability — lexer byte-based access** (v1.2.0 root cause discovery)
  - **Archivo**: `compiler/lexer.nx` — todas las referencias a `.length()` reemplazadas por `.byte_length()`
  - **Problema**: `.length()` en v1.0.0+ retorna codepoints UTF-8, pero lexer necesita byte indices para character access
  - **Síntoma**: After recompiling, `lexer.ll` regresaba a comportamiento byte-based pero codegen emitía `nyx_string_length_utf8` (codepoint-based), causaba mismatch
  - **Fix**: `source.length()` → `source.byte_length()`, `s.length()` → `s.byte_length()` en todo lexer.nx
  - **Impacto**: Ahora `recompile-all && bootstrap` genera `lexer.ll` correcto; bootstrap chain regenerable sin inconsistencias
  - **Archivos modificados**: `compiler/lexer.nx`, `compiler/lexer.ll` (regenerado)
  - **Verificación**: Fixed point estable — regenerar `lexer.ll` dos veces produce IR idéntico

- **Global Map initialization with map_new()** (v1.2.0 L3 priority)
  - **Archivo**: `compiler/codegen.nx` — función `__nyx_init_globals()` mejorada
  - **Problema**: `var g: Map = map_new()` a nivel módulo no funcionaba correctamente
  - **Root cause**: `call` nodes de `map_new()` se agregaban a `global_inits` pero no había handler específico en `__nyx_init_globals()`
  - **Fix**: Añadido handler para `call` nodes que detecta `map_new()` como función directa (diferente de `Map.new()` como método)
  - **Bonus**: También soporta `nyx_array_new_ptr()` como global init para completitud
  - **Impacto**: Globals con Map inicializadas funcionan correctamente ahora
  - **Archivos modificados**: `compiler/codegen.nx`, `compiler/codegen.ll` (regenerado)

- **format() multi-placeholder con escaping de {{ }}** (v1.2.0 L5 priority)
  - **Archivo**: `runtime/runtime.c` — función `nyx_format()` extendida
  - **Problema**: `format("{{\"key\": {}}}", val)` crasheaba o producía salida incorrecta (JSON con llaves literales no funcionaba)
  - **Síntoma**: No había soporte para `{{` → `{` literal en templates, imposible usar JSON inline
  - **Fix en runtime**: Template parsing mejorado — `{{` se interpreta como `{` literal, `}}` como `}` literal
  - **Fix en codegen**: Parser compile-time de format strings en `compiler/codegen.nx` — `{{` no cuenta como placeholder
  - **Impacto**: `format("{{\"key\": {}}}", val)` ahora funciona — permite JSON inline sin construcción manual
  - **Archivos modificados**: `runtime/runtime.c`, `compiler/codegen.nx`, `compiler/codegen.ll` (regenerado)

### Changed
- compiler/lexer.nx: nuevas helper functions para hex/bin/oct parsing, `.length()` → `.byte_length()` conversión
- compiler/lexer.ll: regenerado con nuevo lexer
- tests/test-125-hex-literals.nx: nuevo test
- tests/expected/test-125-hex-literals.expected: nueva expected output
- scripts/testing/run_bootstrap_tests.sh: rango extendido a 125

### Design Notes
- Hex/bin/oct literals convertidos a decimal en lexer → rest of compiler no afectado
- `.byte_length()` requerido en lexer para correct byte-based scanning (lexer es byte-oriented)
- `.length()` en strings retorna codepoints UTF-8 (v1.0.0+ semántica) — correcto para user code
- Bootstrap chain ahora correctamente separado: lexer/parser/etc. use `.byte_length()` internamente, user code usa `.length()`

### Verified
- 126/126 regression tests
- 30/30 advanced tests (sin cambios)
- Bootstrap chain stable (fixed point preservado)

---

## [1.1.0] — 2026-03-21 — Developer Experience: Error Messages + Type Inference

### Added
- **Rust-style error messages** (v1.1.0): función `show_parse_error()` en `compiler/parser.nx`
  - **Formato**: `error: mensaje\n  --> línea N:col\nN | código fuente\n  |   ^^^`
  - **Parser signature change**: `parse(tokens: Array, source: String) -> Array` — requiere source para mostrar línea
  - **All callers updated**: `nyx.nx`, `nyx_check.nx`, `repl.nx`, `fmt.nx` — todos pasan source
  - **Declaración LLVM**: `declare { i64, i8* }* @parse({ i64, i8* }*, %nyx_string*)`
  - **Impacto**: mensajes de error más legibles con contexto de código fuente

- **Improved type inference for split()** (v1.1.0): `Array<String>` ahora inferido automáticamente
  - **Cambios en `compiler/codegen.nx`**:
    - En `codegen_index`: caso `method_call` con nombre "split" → `elem_type = "String"`
    - En `codegen_let` (type inference): caso `method_call` con nombre "split" → `lit_elem_type = "String"`
  - **Impacto**: `split()` ya no requiere anotación de tipo, la mayoría de usos tipo String es obvio
  - **Test**: `test-124-split-inference.nx` verifica split sin anotación funciona

- **124/124 regression tests** — test-124-split-inference.nx nuevo

### Changed
- compiler/parser.nx: nueva función `show_parse_error()`, parámetro source en `parse()`
- compiler/nyx.nx: `parse(tokens, source)` con source del archivo
- compiler/nyx_check.nx: `parse(tokens, source)` — fuente pasada explícitamente
- compiler/repl.nx: `parse(tokens, src)` — source como segundo parámetro
- compiler/fmt.nx: `parse(tokens, source)` — formato normalizado
- compiler/codegen.nx: declaración de parse actualizada + inferencia de split()
- compiler/parser.ll, codegen.ll, nyx.ll: regenerados con `make recompile-all`
- scripts/testing/run_bootstrap_tests.sh: rango extendido a 124

### Design Notes
- `show_parse_error()` escribe a stderr con formato Rust estándar — compatible con IDE parsers
- Type inference para split() es local: casos específicos de métodos, sin refactorización general de inferencia
- Parser no rupture semántica: cambio de signature es interno, no afecta semantics de AST

### Verified
- 124/124 regression tests
- 30/30 advanced tests (sin cambios)
- Bootstrap chain stable (fixed point preservado)

---

## [1.7.0] — 2026-03-21 — Systems Mode: Full Inline Asm (GCC-style)

### Added
- **GCC-style inline asm**: `asm("tmpl" : outputs : inputs : clobbers)` — sintaxis completa con constraints
- **`asm volatile`** keyword: previene optimizaciones agresivas en inline asm blocks
- **Output assignments**: `"=r"(var)` — resultado asignado a variable Nyx, con constraint mapping
- **Constraint mapping** GCC → LLVM: `a`→`{rax}`, `b`→`{rbx}`, `c`→`{rcx}`, `d`→`{rdx}`, `S`→`{rsi}`, `D`→`{rdi}`, `r`→elige registro, `m`→memoria, `i`→inmediato
- **Multi-output support**: struct return via `extractvalue` para múltiples outputs en un solo call
- **Input constraints**: restricciones de operandos de entrada via constraint syntax
- **Backward compatibility**: sintaxis original `asm("inline_code")` sigue funcionando
- **Nodo AST `inline_asm_gcc`**: parser + semantic + codegen support
- **123/123 regression tests** — test-123-full-asm.nx verifica GCC-style asm functionality

### Changed
- compiler/parser.nx: new `parse_gcc_style_inline_asm()` branch en parse_primary
- compiler/parser.nx: detecta `:` después del template → GCC-style; `volatile` antes de `(` → asm volatile
- compiler/codegen.nx: `gcc_constraint_to_llvm()` helper para mapeo GCC → LLVM notation
- compiler/codegen.nx: función `codegen_inline_asm_gcc()` para generar LLVM inline asm con outputs/inputs
- compiler/codegen.nx: dispatch en `codegen_expr` y `codegen_stmt` para nodo `inline_asm_gcc`
- compiler/semantic.nx: fallthrough a `return true` para nodo `inline_asm_gcc` (validación mínima)
- compiler/codegen.ll: regenerado con `make recompile MODULE=codegen`
- scripts/testing/run_bootstrap_tests.sh: range extendido a 123

### Design Notes
- Sintaxis GCC es estándar en industria (gcc, clang), más portable que intrínsecas LLVM
- Output assignments mapean resultado de operandos de salida directamente a variables Nyx
- Multi-output soportado via struct return anónimo + extractvalue en codegen
- Backward compat: sintaxis original (sin colones) sigue parseable como asm simple

### Verified
- 123/123 regression tests
- 30/30 advanced tests (sin cambios)
- Bootstrap chain stable (fixed point preservado)

---

## [1.6.0] — 2026-03-21 — Systems Mode: Low-Level Function Attributes

### Added
- **Low-level function attributes**: parser soporte para `#[attr]`, `#[attr(val)]`, `#[attr = "val"]` ante de `fn`
- **`#[naked]` attribute**: función sin prólogo/epílogo — emite `attributes #N = { naked nounwind }` en LLVM IR
- **`#[interrupt]` attribute**: calling convention de interrupt handler — emite `x86_interrupt` calling conv en LLVM
- **`#[link_section(".name")]` attribute**: coloca función/variable en sección ELF específica — emite `section ".name"` en define
- **`#[export_name = "sym"]` attribute**: sobreescribe el nombre del símbolo en IR — para custom entry points y linkage
- **122/122 regression tests** — tests 121-122 para link_section y export_name

### Changed
- compiler/parser.nx: `parse_attributes()` extrae attributes antes de `fn`, `parse_function()` actualizado
- compiler/codegen.nx: `codegen_function()` lee `fn_attr` de `node.data[5]`, defensivo con length() check
- compiler/codegen.nx: emite `attributes #N`, `calling_conv`, `section` en function define basado en attributes presentes

### Design Notes
- Attributes son partes de la firma de función en AST (node.data[5]), no interrumpen otras partes
- Codegen defensivo: chequea length > 5 antes de acceder fn_attr
- Multiplos attributes posibles: `#[naked] #[link_section(".text")] fn entry() { ... }`
- No soporte para expression-based attributes en v1.6.0 (solo literal values)

### Verified
- 122/122 regression tests
- 30/30 advanced tests (sin cambios)
- Bootstrap chain stable

---

## [1.5.0] — 2026-03-21 — Systems Mode: No-GC Mode

### Added
- **No-GC compilation mode**: compilar con `NYX_NO_GC=1` env var deshabilita Boehm GC
- **emit_alloc(ctx, size_var) helper**: emite `@malloc` en no-GC mode, `@GC_malloc` en GC mode (17 sitios en codegen)
- **CodegenContext.no_gc field**: Array[1] para estado mutable, `make_context()` inicializa desde env var
- **Conditional preamble**: `declare i8* @GC_malloc(i64)` solo emitido si NO en no-GC mode
- **Makefile targets**: `compile-no-gc` y `run-no-gc` con `NO_GC_LIBS` para evitar `-lgc` flag
- **121/121 regression tests** — test 120 verifica no-GC mode funciona

### Changed
- compiler/codegen.nx: 17 reemplazos de `@GC_malloc` por `emit_alloc(ctx, size_var)` call
- compiler/codegen.nx: `generate_llvm()` lee `NYX_NO_GC` env var, setta `ctx.no_gc[0]`
- compiler/codegen.nx: preamble condicional para GC_malloc declaration
- Makefile: targets `compile-no-gc`, `run-no-gc` con `NO_GC_LIBS=""` (omite `-lgc`)
- runtime/runtime.c: no cambios (malloc/free ya disponibles en libc)

### Limitations (v1.5.0)
- No hay custom allocator trait — solo malloc/free
- No hay diagnóstico en compile-time si código usa GC en no-GC mode (runtime error solo)
- `#[no_std]` feature no implementado — prelude sigue linkado

### Verified
- 121/121 regression tests
- 30/30 advanced tests (sin cambios)
- Bootstrap chain stable

---

## [1.0.0] — 2026-03-20 — Production Release: Unicode Real + v0.9.0 DWARF

### v1.0.0 — Unicode Real

#### Added
- **String.length() Unicode-aware**: retorna codepoints UTF-8 via `@nyx_string_length_utf8`, no bytes
- **String.byte_length() method**: nuevo, retorna byte count via `@nyx_string_byte_length` para acceso a bytes crudos
- **str_byte_length(s) builtin**: función para acceso interno en bootstrap (lexer/parser internos)
- **119/119 regression tests** — nuevo test-119-unicode.nx valida string handling UTF-8

#### Changed
- compiler/codegen.nx: `.length` para strings emite `nyx_string_length_utf8` (codepoint count)
- compiler/lexer.nx: actualizaciones internas para usar `str_byte_length()` en lugar de `.length`
- compiler/semantic.nx: nuevo builtin `str_byte_length` registrado
- runtime/strings.c: `nyx_string_byte_length` implementado como función
- scripts/testing/run_bootstrap_tests.sh: rango extendido a 119

#### Breaking Changes
- `.length()` en strings ahora retorna codepoints (UTF-8), no bytes — código que esperaba byte count debe usar `.byte_length()`
- Bootstrap chain: todos los 6 módulos recompilados con nueva semántica

#### Design Notes
- Soporte correcto de Unicode: un caracter es un codepoint, no un byte
- Byte access sigue disponible via `.byte_length()` para syscalls, file I/O, etc.
- Lexer/parser internos actualizados para usar `str_byte_length()` donde necesitan indices de bytes
- v1.0.0 marca transición de "pre-release" a "production" en esquema de versionado

#### Verified
- 119/119 regression tests (v1.0.0)
- 30/30 advanced tests (sin cambios)
- Bootstrap chain fixed point estable

---

## [0.9.0] — 2026-03-20 — DWARF Debug Info

### Added
- **DWARF metadata generation**: emitido en LLVM IR cuando se compila con `-g`
- **source_filename y target triple**: metadatos en módulo LLVM
- **!DICompileUnit**: compile unit metadata (archivo, lenguaje "Nyx", version)
- **!DIFile**: información del archivo fuente
- **!llvm.module.flags**: DWARF version config
- **!DISubprogram y !DISubroutineType**: metadatos de función (nombre, tipo, línea)
- **Function definitions anotadas**: cada `define` incluye `!dbg !N` referencia
- **GDB/LLDB integration**: nombres de funciones y backtraces correctos en debugger

### Changed
- compiler/codegen.nx: CodegenContext con `meta_counter` y `meta_buffer` para DINode IDs
- compiler/codegen.nx: `generate_llvm` emite bloque DWARF al final
- compiler/codegen.nx: `codegen_function` emite !DISubprogram anotaciones
- Makefile: targets `compile-debug` y `run-debug` para compilación con `-g`
- compiler/codegen.ll: regenerado con `make recompile MODULE=codegen`

### Design Notes
- DWARF es estándar de debug info — permite introspección en gdb/lldb
- Metadatos emitidos al final del IR para mantener compatibilidad con LLVM
- No afecta semántica del código compilado (solo debug info)
- DINode IDs generados via contador secuencial en codegen

### Verified
- 118/118 regression tests (sin cambios semánticos)
- 30/30 advanced tests (sin cambios semánticos)
- Bootstrap chain fixed point estable (v0.8.0 → v0.9.0 → v1.0.0)

---

## [0.8.0] — 2026-03-20 — Bootstrap Chain Stabilization + UTF-8 String Consistency

### Fixed
- **Bootstrap chain UTF-8 inconsistency**: `recompile-all` ahora produce fixed point estable — problema anterior donde `nyx_string_char_at` y `nyx_string_substring` eran codepoint-based pero codegen emitía `nyx_string_length_utf8` para `.length`/`len()`, causaba que el lexer recién compilado leyera bytes incorrectamente
- **String char_at/substring revertidas a byte-based**: `nyx_string_char_at(str, idx)` → `str->data[idx]` (byte), `nyx_string_substring(str, start, end)` → copia bytes [start, end)
- **Codegen string methods corregidas**: `.length` y `.len()` en strings ahora emiten call a `nyx_string_length` (byte-based) en lugar de `nyx_string_length_utf8`
- **Seed IR corregidas**: 16 constantes string en compiler/*.ll ahora con tamaños correctos en bytes (lexer, parser, semantic, codegen, interpreter modules)
- **Fixed point verificado**: dos pasadas de `recompile-all` + `bootstrap` producen IR idéntico, 118/118 tests estables

### Changed
- runtime/strings.c: `nyx_string_char_at`, `nyx_string_substring` vuelven a byte-based access
- compiler/codegen.nx: `.length` y `.len()` para strings emiten `nyx_string_length` (byte-based) en codegen_method_call
- compiler/codegen.ll: regenerado con constantes string byte-count correctas

### Design Notes
- Strings en Nyx son secuencias de bytes (i8*), no de codepoints
- `.length` y `len()` retornan byte count, no codepoint count
- `nyx_string_length_utf8()` sigue disponible en runtime para código de usuario via FFI si se necesita codepoint counting
- Lexer/parser/semantic siempre operan sobre bytes (índices en bytes)
- Esta decisión es anterior a v1.0.0; eventual Unicode support en v1.0.0+ puede cambiar esto

### Verified
- 118/118 regression tests
- 30/30 advanced tests
- Bootstrap chain fixed point estable tras dos recompilaciones

---

## [0.7.4] — 2026-03-19 — Task Cancellation & Race

### Added
- **task_cancel(handle)**: cancela una task de forma asíncrona via `pthread_cancel`
- **task_race(t1, t2) -> int**: retorna el resultado de la primera de dos tasks en completar, usando `pthread_timedjoin_np` con polling de 1ms
- **118/118 regression tests** — task cancellation/race feature tested in test-118

### Changed
- compiler/semantic.nx: `scope_declare_fn("task_cancel", "builtin", 1)` y `scope_declare_fn("task_race", "builtin", 2)`
- compiler/codegen.nx: cases `task_cancel` y `task_race` en dispatch de builtins, declaraciones `declare void @nyx_task_cancel(i64)` y `declare i64 @nyx_task_race(i64, i64)`
- runtime/thread.h: declaraciones de `nyx_task_cancel(int64_t)` y `nyx_task_race(int64_t, int64_t)`, typedef `nyx_thread_handle_t` a nivel de archivo
- runtime/thread.c: implementación de las dos funciones, `_GNU_SOURCE` para `pthread_cancel` y `pthread_timedjoin_np`, polling de 1ms en task_race
- scripts/testing/run_bootstrap_tests.sh: range extended to 118

### Limitations (v0.7.4)
- `task_race` solo acepta 2 handles — N-way race en v0.7.5
- `task_cancel` no hace join — no hacer `task_await` después de `task_cancel`
- Polling busy en `task_race` — consume CPU mientras espera
- `task_await` sigue retornando int

---

## [0.7.3] — 2026-03-19 — Async Executor (Thread-per-Task)

### Added
- **Async Executor via pthreads**: `spawn_task(future)` lanza el closure pair de un `async fn` en thread separado via `nyx_thread_spawn`, retorna handle `int`
- **task_await(handle)**: espera el thread con `nyx_thread_join`, retorna resultado `int`
- **Concurrencia real**: múltiples async tasks en paralelo via pthreads — no requierió nuevo runtime C
- **spawn_task / task_await builtins**: aridad 1 cada uno, solo bindings C a thread runtime existente
- **117/117 regression tests** — async executor tested in test-117

### Changed
- compiler/semantic.nx: builtins `spawn_task`, `task_await` (aridad 1 each)
- compiler/codegen.nx: cases `spawn_task` (→ `nyx_thread_spawn`) y `task_await` (→ `nyx_thread_join`)
- scripts/testing/run_bootstrap_tests.sh: range extended to 117

### Limitations (v0.7.3)
- Resultado de `task_await` siempre `int` (i64) — tipos solo supportados via boxing/casting manual
- Sin cancellation: tasks una vez lanzadas corren hasta terminar
- Sin select/race: no hay primitiva para esperar el primero de múltiples tasks

---

## [0.7.2] — 2026-03-19 — Async/Await

### Added
- **Async/Await via closure desugaring**: `async fn name(params) -> T { body }` desugaras en función que retorna closure `Fn() -> T`
- **await expression**: `await expr` llama al closure (indirect call del closure pair i8*)
- **run() builtin**: `run(future)` ejecuta el future — llama al closure
- **Reutilización de infraestructura**: sin nuevo runtime C — aprovecha closures existentes
- **Ejecución secuencial**: v0.7.2 no tiene concurrencia real, ejecutor event-loop en v0.7.3
- **Lexer**: Keywords `async`, `await`
- **Parser**: `parse_async_function()`, `parse_await()`, nodos AST `async_fn` y `await_expr`
- **Semantic**: Validación de async_fn, await_expr, builtin run
- **Codegen**: `codegen_async_fn()`, `codegen_await_expr()`, `codegen_call_async_closure()`, builtin run
- **116/116 regression tests** — async/await feature tested in test-116

### Changed
- compiler/lexer.nx: `async`, `await` keywords
- compiler/parser.nx: `parse_async_function()`, `parse_await()` en postfix
- compiler/semantic.nx: async_fn validation, await_expr validation
- compiler/codegen.nx: async_fn codegen (returns closure), await_expr codegen (calls closure), run builtin
- scripts/testing/run_bootstrap_tests.sh: range extended to 116

### Design Notes
- Async functions return `Fn() -> T` (closure pair)
- Await is just a function call with closure pair dispatch
- No state machines, no generators in v0.7.2
- Sequential execution only — real concurrency in v0.7.3 with event loop

---

## [0.6.4] — 2026-03-18 — Varargs

### Added
- **Varargs tipados**: `fn foo(a: int, ...args: String)` — varargs como último parámetro
- **Estrategia de colección**: args extra colectados en Array en call site, función recibe Array normal
- **Lexer**: Token `ELLIPSIS` para `...`
- **Parser**: Detecta `...name: Type` en lista de parámetros, genera `[name, "...Type"]`
- **Codegen**: `nyx_type_to_llvm` mapea `"...T"` → `{ i64, i8* }*`; Pass 0.7 registra vararg functions; call site colecta extras con `nyx_array_new_ptr`/`nyx_array_push_ptr`
- **Semantic**: Arity check ajustado para vararg functions (aridad = normal_count, check `<` en vez de `!=`)
- **114/114 regression tests** — varargs feature tested in test-114

### Changed
- compiler/lexer.nx: `ELLIPSIS` token
- compiler/parser.nx: vararg parameter detection in `parse_function_params`
- compiler/codegen.nx: vararg type mapping, Pass 0.7 vararg registration, call site array collection
- compiler/semantic.nx: arity validation for vararg functions
- scripts/testing/run_bootstrap_tests.sh: range extended to 114

### Limitations (v0.6.4)
- Varargs solo como último parámetro
- Elementos boxed como i8* — tipos no-String requieren cast manual dentro función
- Sin introspección de tipos en runtime

---

## [0.6.3] — 2026-03-18 — Try-Catch, Trait Inheritance

### Added
- **try-catch exception handling**: `try { throw("error") } catch(e: String) { print(e) }` — via setjmp/longjmp in runtime
- **throw() builtin**: explicit exception throwing, catchable by try-catch
- **panic() catchable**: `panic()` inside try blocks is caught instead of aborting
- **Trait inheritance**: `trait Animal : Named { }` — subtrait inherits supertrait methods
- **Multi-supertrait**: `trait Animal : Named + Describable { }` — multiple supertrait bounds
- **Transitive trait bounds**: `impl Animal for Dog` automatically satisfies `Named` bounds
- test-112-try-catch, test-113-trait-inheritance

### Changed
- compiler/lexer.nx: `try`, `catch`, `throw` keywords
- compiler/parser.nx: `parse_try_catch`, `parse_throw`, supertrait syntax in `parse_trait`
- compiler/codegen.nx: `codegen_try_catch` (setjmp branching), `codegen_throw`, `trait_supers` Map, transitive impl registration
- compiler/semantic.nx: `try_catch` and `throw` node validation
- runtime/runtime.c: setjmp/longjmp try-catch stack, `nyx_try_push/pop`, `nyx_throw`, `nyx_get_exception`, `nyx_panic` routes through try-catch

---

## [0.6.2] — 2026-03-18 — DateTime, Crypto, TLS/HTTPS, Default Params

### Added
- **DateTime builtins** (`runtime/time.c`): `datetime_now`, `datetime_format`, `time_epoch`, `datetime_from_epoch`, `datetime_parse`, `datetime_year/month/day/hour/minute/second/weekday`
- **Crypto builtins** (`runtime/crypto.c`): `sha256(data)` → hex string, `md5(data)` → hex string — pure C implementation (no OpenSSL dependency)
- **TLS/HTTPS** (`runtime/tls.c`): `https_get(url)`, `https_post(url, body, content_type)`, `tls_connect/read/write/close` — via OpenSSL
- **Default parameters**: `fn greet(name: String = "World")` — omitted args filled with defaults at call site
- test-108-datetime, test-109-crypto, test-110-tls, test-111-default-params

### Changed
- compiler/parser.nx: `= default_value` in function parameter syntax
- compiler/codegen.nx: datetime/crypto/tls/default-params builtins, `fn_defaults` Map in CodegenContext
- Makefile, scripts/*: time.c, crypto.c, tls.c added to RUNTIME_SRCS; `-lssl -lcrypto` added to LIBS

---

## [0.6.1] — 2026-03-18 — Stdlib + Regex + Language Features

### Added
- **Tuple return types**: `fn swap(a: int, b: int) -> (int, int)` — functions returning tuples with destructuring
- **sort_by(arr, cmp)**: custom comparator sorting (insertion sort, stable)
- **sort_str(arr)**: string sorting via lexicographic comparison
- **str_compare(a, b)**: lexicographic string comparison returning int
- **Logging framework** (`std/log.nx`): `log_debug/info/warn/error`, configurable level via `log_set_level`
- **Collections** (`std/collections.nx`): Set operations — `set_new`, `set_add`, `set_has`, `set_remove`, `set_size`, `set_union`, `set_intersection`, `set_to_array`
- **Regex** (`runtime/regex.c`): POSIX regex via `regex_match`, `regex_is_match`, `regex_replace`, `regex_replace_all`
- **NYX_SKIP_SEMANTIC**: env var to skip semantic analysis for compiler module self-compilation
- test-103-tuple-return, test-104-sort-by, test-105-logging, test-106-collections, test-107-regex

### Changed
- compiler/parser.nx: tuple type annotation `(int, String)` in parse_type_annotation
- compiler/codegen.nx: tuple return type support, tuple struct registration, regex builtins
- compiler/nyx.nx: NYX_SKIP_SEMANTIC support
- std/array.nx, std/prelude.nx: sort_by, sort_str, str_compare
- Makefile, scripts/*: regex.c added to RUNTIME_SRCS
- test-98-http-client simplified (URL parsing only, no network dependency)

### Fixed
- Test runner brace expansion: `{01..102}` zero-pads to 3 digits — now uses `{01..99} {100..N}`

---

## [0.6.0] — 2026-03-18 — Fase 0 Quick Wins

### Added
- **`defer` statement**: LIFO cleanup — `defer { expr }` ejecuta al salir del scope, implementado via cleanup section antes de cada return/end
- **`format()` builtin**: `format("template {}", val)` — runtime C `nyx_format` soporta String/int/float/bool/char con `{}` placeholders
- **`sleep(ms)`**: pausa de ejecucion en milisegundos via `usleep`
- **`time()`**: epoch timestamp en segundos (i64)
- **`time_ms()`**: epoch timestamp en milisegundos (i64)
- **`time_us()`**: epoch timestamp en microsegundos (i64)
- **Math FFI**: 17 funciones matematicas via libm — `log`, `log2`, `log10`, `exp`, `exp2`, `sin`, `cos`, `tan`, `asin`, `acos`, `atan`, `atan2`, `sqrt`, `cbrt`, `ceil`, `floor`, `round`
- **Signal handling**: `signal_handle(sig, handler)`, `signal_reset(sig)`, `signal_ignore(sig)` — POSIX signal management
- **Enum methods**: `impl MyEnum { fn method(self) }` — impl blocks sobre enums, no solo structs
- test-99-time-math, test-100-enum-methods, test-101-defer, test-102-format

### Fixed
- `-lm` faltante en `run_stdlib_tests.sh` — ahora linkea libm correctamente

### Changed
- compiler/codegen.nx: defer statement (cleanup sections), format builtin, time/sleep builtins, math FFI declares, signal handling builtins, enum method dispatch
- compiler/parser.nx: `defer` keyword parsing
- compiler/lexer.nx: `defer` keyword token
- compiler/semantic.nx: defer validation
- runtime/runtime.c: `nyx_format`, `nyx_sleep`, `nyx_time`, `nyx_time_ms`, `nyx_time_us`, `nyx_signal_handle/reset/ignore`
- std/math.nx: 17 math FFI wrappers
- scripts/testing/run_bootstrap_tests.sh: range extended to 102

---

## [0.5.2.1] — 2026-03-18 — HTTP + Trait Extensions

### Added
- **HTTP server library** (`std/http.nx`): request parsing, response building, `http_serve(port, handler)` loop
- **HTTP client**: `http_get(url)`, `http_post(url, body)`, `http_request(method, url, body)`, `http_parse_url(url)`
- **Associated types** en traits: `type Item` en trait definitions, `Self.Item` en return types
- **Where clauses**: `fn foo<T>(x: T) where T: Display` — equivalente a inline bounds
- **Connect timeout** (3s) en `tcp_connect` via `runtime/net.c` — evita hang en tests
- **Test runner timeout** (30s per test) en `run_bootstrap_tests.sh`
- test-95-http, test-96-assoc-types, test-97-where-clauses, test-98-http-client

### Changed
- compiler/codegen.nx, compiler/parser.nx, compiler/semantic.nx: associated types + where clauses
- runtime/net.c: non-blocking connect with 3s timeout
- scripts/testing/run_bootstrap_tests.sh: range {01..98}, 30s timeout per test

---

## [0.5.2] — 2026-03-17 — Process/OS + JSON

### Added
- **`exec(cmd)`**: ejecuta comando shell, retorna output como String
- **`getenv(name)`**, **`setenv(name, value)`**: variables de entorno
- **`exit(code)`**: terminar proceso con codigo de salida
- **`get_args()`**: argumentos de linea de comandos como Array
- **`json_parse(str)`**: parser JSON recursivo puro en Nyx → Map/Array/String/int/float/bool
- **`json_stringify(val)`**: serializar valores Nyx a JSON string
- `std/json.nx` — standard library module, pure Nyx (no FFI)
- test-93-process, test-94-json

### Changed
- runtime/runtime.c: `nyx_exec`, `nyx_getenv`, `nyx_setenv`, `nyx_get_args` functions
- compiler/codegen.nx, compiler/semantic.nx: builtins para process/OS y JSON

---

## [0.5.1] — 2026-03-17 — Threading

### Added
- **`thread_spawn(fn)`**: crear thread, retorna handle
- **`thread_join(t)`**: esperar resultado de thread
- **`mutex_new()`**, **`mutex_lock(m)`**, **`mutex_unlock(m)`**, **`mutex_destroy(m)`**: mutual exclusion
- **`channel_new()`**, **`channel_send(ch, val)`**, **`channel_recv(ch)`**, **`channel_destroy(ch)`**: message passing
- `runtime/thread.c`, `runtime/thread.h` — pthreads-based runtime
- test-90-thread-basic, test-91-mutex, test-92-channel

### Changed
- compiler/codegen.nx: declares y dispatch para threading builtins
- Makefile: `thread.c` en RUNTIME_SRCS

---

## [0.5.0] — 2026-03-17 — Networking

### Added
- **TCP**: `tcp_listen(port)`, `tcp_accept(sock)`, `tcp_connect(host, port)`, `tcp_read(sock, n)`, `tcp_write(sock, data)`, `tcp_close(sock)`
- **UDP**: `udp_bind(port)`, `udp_sendto(sock, data, host, port)`, `udp_recvfrom(sock, n)`
- **DNS**: `resolve(hostname)` → IP address string
- `runtime/net.c`, `runtime/net.h` — POSIX sockets runtime
- test-89-tcp-basic

### Changed
- compiler/codegen.nx: declares y dispatch para networking builtins
- Makefile: `net.c` en RUNTIME_SRCS

---

## [0.4.6] — 2026-03-17 — Buffered I/O + Map Iteration

### Added
- **Buffered I/O**: `file_open(path, mode)`, `file_close(f)`, `file_read_line(f)`, `file_write_string(f, s)`, `file_seek(f, pos)`, `file_tell(f)`, `file_flush(f)`
- **Filesystem**: `mkdir(path)`, `readdir(path)` → Array, `remove_file(path)`
- **`File` type**: opaque `i8*` handle en codegen
- **Map iteration**: `map.keys()` → Array, `map.values()` → Array
- test-87-map-iteration, test-88-buffered-io

### Changed
- runtime/file-io.c: buffered I/O functions via stdio
- runtime/maps.c: `nyx_map_keys_array`, `nyx_map_values_array`
- compiler/codegen.nx: File type, buffered I/O builtins, map.keys()/values() dispatch

---

## [0.4.5] — 2026-03-17 — Pointer Arithmetic

### Added
- **Pointer arithmetic**: `ptr + n`, `ptr - n` via GEP, `ptr - ptr` → element distance
- **Pointer comparisons**: `==`, `!=`, `<`, `>`, `<=`, `>=` entre raw pointers
- test-86-pointer-arithmetic

### Changed
- compiler/codegen.nx: pointer add/sub via GEP, pointer diff via ptrtoint+sub+sdiv, pointer cmp via icmp
- compiler/parser.nx: pointer subtraction parsing fix

---

## [0.4.4] — 2026-03-17 — Bug Fixes & Stabilization

### Fixed
- **Nested generic enum construction**: `Option.Some(Option.Some(42))` — codegen monomorphizes inner generic enum before outer constructor lookup
- **Float printing**: formato que preserva `.0` para enteros (`42.0` ya no se muestra como `42`)
- test-85-nested-generic-enum

---

## [0.2.0.3] — 2026-03-17 — Pattern Matching Avanzado

### Added
- **OR patterns**: `Color.Red | Color.Blue => "warm"` — multiple patterns sharing the same arm
- **Struct patterns**: `Point { x, y }` and `Point { x: px, y: py }` — field extraction with optional renaming
- **Nested patterns**: `Outer.Some(Inner.Some(x))` — recursive inner tag checks with mismatch fallthrough
- **`parse_single_pattern()`**: refactored pattern parsing into reusable recursive function
- Tests: test-82-or-patterns, test-83-struct-patterns, test-84-nested-patterns

### Technical
- Parser: `or_pattern`, `struct_pattern`, `nested_match_pattern` AST nodes
- Codegen: OR patterns expand each sub-pattern as separate switch case to same label
- Codegen: struct patterns use GEP with temp alloca for by-value structs
- Codegen: nested patterns use inline `nested_fail`/`nested_ok` labels for inner tag checks
- Semantic: OR pattern variants contribute to exhaustiveness check
- Semantic: struct_pattern/nested_match_pattern treated as wildcard for exhaustiveness

---

## [0.2.1.2] — 2026-03-17 — Visibility Enforcement

### Added
- **Visibility enforcement**: `import "module" as alias` now only exposes `pub`/`export` items via `alias.fn()`
- **Membership check in codegen**: namespace dispatch verifies member is in the public list, emits error otherwise
- **`pub` in prelude**: all stdlib functions marked `pub` for namespace accessibility
- **`array_contains_str` helper**: utility function in codegen for string array membership checks
- Test: test-81-visibility

### Fixed
- **Test framework + exports**: test runner main generation no longer blocked by `has_export` from inlined prelude

---

## [0.4.3] — 2026-03-16 — Operator Overloading

### Added
- **Operator traits in prelude**: `Add`, `Sub`, `Mul`, `Div`, `Rem`, `Neg`, `PartialEq`, `PartialOrd`
- **Binary operator dispatch**: `+`, `-`, `*`, `/`, `%`, `==`, `!=`, `<`, `>`, `<=`, `>=` check for trait impl on struct types
- **Unary Neg dispatch**: `-x` checks for `Neg` trait impl on struct types
- **Chained operators**: `a + b + c` work naturally
- Tests: test-78-operator-overload, test-79-operator-advanced, test-80-default-multi-operator

---

## [0.3.1] — 2026-03-16 — Trait Extensions

### Added
- **Default methods in traits**: traits can now have method bodies that serve as default implementations
- **Multi-bounds**: generic type params support `T: A + B + C` syntax for multiple trait bounds
- Tests: test-76-default-methods, test-77-multi-bounds

---

## [0.3.0] — 2026-03-16 — Iterators

### Added
- **Iterator type**: `Iterator` como tipo opaco (`i8*`) respaldado por `NyxIterator` struct en runtime C
- **`arr.iter()`**: crea un Iterator desde un Array
- **Adapters**: `.map(f)`, `.filter(f)`, `.take(n)`, `.skip(n)`, `.enumerate()`, `.chain(other)` — composables
- **Terminals**: `.collect()`, `.fold(init, f)`, `.sum()`, `.count()`, `.any(f)`, `.all(f)`
- **for-in desugaring**: `for x in arr.iter().filter(f)` usa el protocolo de iteradores (nyx_iter_next + Option check)
- **Bool-safe closure caller**: `nyx_call_closure_bool` — masks i1 return to handle LLVM ABI mismatch
- runtime/iterators.c, runtime/iterators.h (nuevos)
- Tests: test-71 a test-75

### Changed
- compiler/codegen.nx: `nyx_type_to_llvm("Iterator")`, declares, method dispatch para Iterator, `codegen_for_is_iterator`, for-in desugaring
- Makefile: iterators.c agregado a RUNTIME_SRCS
- scripts/testing/run_bootstrap_tests.sh: rango extendido a 75
- scripts/run_stdlib_tests.sh, tests/advanced/run_advanced_tests.sh: iterators.c en link

---

## [0.2.1] — 2026-03-16 — Module System

### Added
- **`pub` keyword** (v2.1.0): `pub fn`, `pub struct`, `pub enum` como sinonimo de `export`
- **Module imports** (v2.1.1): `import "module" as alias` — module imports con namespace dispatch
- **Module declarations**: `module alias = [names]` — declaraciones de namespace internas
- **Acceso calificado**: `alias.fn()`, `alias.field` — namespace-aware dispatch en codegen
- test-64-pub-keyword, test-65-module-import

### Changed
- compiler/lexer.nx: keywords `pub`, `module`
- compiler/parser.nx: parse_pub, parse_module_decl, parse_import extension para `as alias`
- compiler/codegen.nx: module_namespaces Map, namespace-aware method_call y field_access
- compiler/semantic.nx: import_module y module_decl registrados en scope
- compiler/nyx.nx: is_module_import, extract_exports, resolve_source extension
- scripts/testing/run_bootstrap_tests.sh: rango extendido a 65

---

## [0.2.0.1] — 2026-03-16 — Typed Arrays

### Added
- **Typed arrays**: `Array<int>`, `Array<String>` — compile-time element type tracking
- Auto-coercion en index y for-in
- test-63-typed-arrays

---

## [0.2.0.0] — 2026-03-16 — Typed Closures & Dynamic Dispatch

### Added
- **Typed closures**: `Fn(int, String) -> bool` — type annotations para closures con verificacion de aridad/tipos
- **Match guards**: `Pattern if condition => body` — guards condicionales en match arms
- **Dynamic dispatch** (v2.0.2): `dyn Trait` fat pointers, vtables, thunks, auto-upcasting
- **Empty struct construction fix**: `Name{}` ahora parsea correctamente
- test-61-match-guards, test-62-typed-fn

---

## [0.1.6] — 2026-03-16 — Systems Programming

### Added
- **Sized numeric types** (F.1): `i8`, `i16`, `i32`, `u8`, `u16`, `u32`, `u64`, `f32`, `usize` — tipos de ancho fijo con representacion LLVM nativa
- **`as` cast operator** (F.2): `x as i32` — conversiones entre int, float, y sized types con trunc/zext/sext/fptrunc/fpext
- **sizeof/alignof** (F.3): `sizeof(Type)`, `alignof(Type)` — compile-time queries de tamaño y alineamiento
- **Raw pointers + unsafe** (F.4): `*int` (pointer type), `&x` (address-of), `*ptr` (dereference), `unsafe { ... }` blocks
- **Manual memory** (F.5): `alloc(n)`, `free(ptr)`, `static var` — gestion manual de memoria sin GC
- **FFI structs** (F.6): `#[repr(C)]` en structs para layout compatible con C, stack allocation, generic extern fn types
- **Inline asm** (F.7): `asm("...")` blocks — ensamblador inline via LLVM inline asm
- **Volatile/atomic** (F.8): `volatile_read(ptr)`, `volatile_write(ptr, val)`, `atomic_load(ptr)`, `atomic_store(ptr, val)`
- test-53-numeric-types, test-54-as-cast, test-55-sizeof, test-56-raw-pointers, test-57-manual-memory, test-58-ffi-structs, test-59-inline-asm, test-60-volatile-atomic

### Changed
- compiler/lexer.nx: keywords `unsafe`, `as`, `static`, `asm` + tokens HASH, SIZEOF, ALIGNOF
- compiler/parser.nx: parse_unsafe, parse_as_cast, parse_sizeof, parse_alignof, parse_raw_pointer_type, parse_address_of, parse_deref, parse_alloc, parse_free, parse_static_var, parse_repr_c, parse_inline_asm, parse_volatile/atomic builtins
- compiler/semantic.nx: validacion de unsafe blocks, sized types, raw pointer ops
- compiler/codegen.nx: codegen para sized types (i8/i16/i32/u8-u64/f32/usize), as cast, sizeof/alignof, raw pointers (alloca/load/store), alloc/free, static globals, repr(C) structs, inline asm, volatile load/store, atomic load/store
- Seeds recompilados: todos los compiler/*.ll

---

## [0.1.5] — 2026-03-15 — Low-Level & Ergonomics

### Added
- **Bitwise operators**: `&` (AND), `|` (OR), `^` (XOR), `<<` (shift left), `>>` (shift right), `~` (NOT) — C-style precedence
- **Compound assignment**: `+=`, `-=`, `*=`, `/=`, `%=`, `&=`, `|=`, `^=`, `<<=`, `>>=` — desugared en parser
- **String methods**: `trim()`, `toUpper()`, `toLower()`, `replace()`, `repeat()`, `startsWith()`, `endsWith()`, `indexOf()` — runtime C ya existia, ahora expuestos
- **Array methods**: `slice(start, end)`, `reverse()`, `indexOf(val)`, `join(sep)` — 2 funciones C nuevas + 2 existentes expuestas
- test-50-bitwise, test-51-string-methods, test-52-array-methods

### Changed
- compiler/lexer.nx: 11 tokens nuevos (AMP, PIPE, CARET, TILDE, SHIFT_LEFT, SHIFT_RIGHT + 5 compound)
- compiler/parser.nx: 4 niveles de precedencia nuevos (bitwise_or/xor/and, shift), compound assignment desugaring, TILDE en unary
- compiler/codegen.nx: binop/unop para 6 operadores, method dispatch para 12 nuevos metodos, runtime declarations
- runtime/runtime-arrays.c: nyx_array_reverse(), nyx_array_index_of()
- Seeds recompilados: todos los compiler/*.ll

---

## [0.1.4] — 2026-03-15 — Ecosistema

### Added
- **FFI Avanzado**: `extern "C" fn abs(x: int) -> int` — declaraciones de funciones externas C con mapping de tipos automatico
- **Const Evaluation**: `const MAX: int = 100` — constantes evaluadas en compile-time, inlined en uso (sin alloca)
- **Typed for-in**: `for p: Point in points { ... }` — type annotation en elementos de for-in, conversion automatica (inttoptr para structs/strings, bitcast para floats)
- **Package Manager**: resolucion de imports multi-path (local → std/ → ~/.nyx/packages/), deduplicacion de imports
- **Script installer**: `scripts/nyx-pkg-install.sh` para instalar paquetes desde GitHub
- test-47-ffi, test-48-const, test-49-typed-for

### Fixed
- **Structs en array literals**: codegen_array_literal ahora maneja tipos struct via GC_malloc+store+ptrtoint
- **Const data layout**: manejo separado de `const` vs `let` en globals, implicit main, y closure env scan

### Changed
- compiler/lexer.nx: keyword `extern`
- compiler/parser.nx: parse_extern_fn, const con type annotation, for con element type annotation
- compiler/semantic.nx: registro y validacion de extern_fn
- compiler/codegen.nx: codegen_extern_fn, codegen_const_decl, typed for-in, extern fn calls con String→cstr conversion
- compiler/nyx.nx: resolve_module_path multi-path, import deduplication
- compiler/nyx_check.nx: misma logica de resolucion de imports
- Seeds recompilados: todos los compiler/*.ll

---

## [0.1.3] — 2026-03-15 — Tooling

### Added
- **Test framework**: `test "name" { assert(expr) }` — keyword `test`/`assert`, auto-generated test runner en main, `@__nyx_test_failed` global
- **Formatter**: `nyx fmt` — AST pretty-printer standalone (`compiler/fmt.nx`)
- **LSP go-to-def/hover**: DEF:kind:name:line:col en nyx_check, VS Code extension con DefinitionProvider, HoverProvider, DocumentSymbolProvider
- **Semantic exports**: get_errors, get_sym_names, get_sym_kinds, get_sym_count en semantic.nx
- test-46-test-framework

### Changed
- compiler/lexer.nx: keywords `test`, `assert`
- compiler/parser.nx: parse_test_decl, parse_assert
- compiler/codegen.nx: codegen_test_decl, codegen_assert, auto-generated test runner
- compiler/semantic.nx: symbol export functions
- compiler/nyx_check.nx: token-based definition scanner con prelude offset
- nyx-vscode/: VS Code extension con syntax highlighting y diagnostics

---

## [0.1.2] — 2026-03-15 — Advanced Types

### Added
- **Generic Enums**: `enum Option<T> { Some(T), None }`, `enum Result<T, E> { Ok(T), Err(E) }` via monomorphization — match funciona con nombre base del enum
- **Option type builtin**: `Option<T>` y `Result<T,E>` agregados a `std/prelude.nx`
- **Tuples**: `(int, String, bool)`, destructuring `let (a, b, c) = t`, acceso por indice `t.0` — internamente como anonymous structs `%__Tuple_...`
- test-44-generic-enums, test-45-tuples

### Changed
- parser.nx: soporte para generic enums y tuples (literales, destructuring, acceso por indice)
- codegen.nx: generic enum monomorphization, tuple codegen con anonymous struct types
- std/prelude.nx: `Option<T>` y `Result<T,E>` como builtins

---

## [0.1.1] — 2026-03-15 — Fundamentals

### Added
- **Block comments `/* */`**: anidados con tracking de profundidad en el lexer
- **Multiline strings `"""..."""`**: preservan newlines; raw strings `r"..."` sin escape sequences
- **Polymorphic Maps**: track de value type como 3er elemento en variables, dispatch correcto a `nyx_map_get_str`
- **Parser error recovery**: funcion `synchronize()`, acumula errores en vez de abortar al primero
- **Type inference from function return types**: infiere tipo de `let x = f()` desde el return type de `f`
- **Type aliases**: `type Integer = int` — keyword contextual (no colisiona con campos de structs)
- test-40-block-comments, test-41-multiline-strings, test-42-map-polymorphic, test-43-type-aliases

### Fixed
- `type` keyword colisionaba con nombres de campo en structs — resuelto como keyword contextual (parser-only)

---

## [0.1.0] — 2026-03-15 — Release Estable

Nyx v0.1.0: compilador self-hosting completo con generics, traits, import system, closures sin limite, y 61 tests verificados.

Todos los criterios del ROADMAP cumplidos:
- Generics basicos (functions + structs) via monomorphization
- Traits basicos (static dispatch) con bounds
- Import system con auto-prelude
- 61 tests (38 regresion + 20 avanzados + 3 stdlib)
- Documentacion actualizada

---

## [0.28] — 2026-03-15 — Tooling y Estabilizacion

### Added
- **Closures 3+ niveles**: flattened environment inheritance — closures anidadas arbitrariamente acceden a variables de cualquier ancestor
- **CI/CD**: GitHub Actions workflow para tests automaticos en push/PR
- test-37-return-in-branches, test-38-closures-deep

### Fixed
- **`check_has_return()`**: ahora detecta `return` dentro de `if`/`else`/`match` — solo marca como "has return" si TODOS los branches retornan
- **IR invalido con branches terminados**: `codegen_if` y `codegen_match` emiten `unreachable` en merge blocks muertos; `codegen_block` deja de emitir statements despues de un terminador
- `interpreter.nx` ya compilable nativamente (marcado como completo)

### Changed
- codegen.nx: `pre_scan_closure_env()` hereda campos del parent env para nested-within-nested closures
- codegen.nx: `codegen_nested_function()` detecta sub-nested functions, crea propio SharedEnv, copia campos del parent
- Seeds recompilados: codegen.ll (fixed point verificado)

---

## [0.27] — 2026-03-15 — Traits (Static Dispatch)

### Added
- **Traits**: `trait Display { fn to_string(self) -> String }` — definicion de contratos de metodos
- **impl Trait for Type**: `impl Display for Point { ... }` — implementacion de traits con static dispatch
- **Trait bounds**: `fn print_it<T: Display>(x: T) -> String` — type params con restricciones
- **Self substitution**: `Self` en params/return se sustituye por tipo concreto en impl
- **Coexistencia**: bare `impl Type` y `impl Trait for Type` coexisten sin conflicto
- **Bound validation**: error en compile-time si tipo no implementa trait requerido
- test-36-traits-basic

### Changed
- lexer.nx: keyword `trait` → token `TRAIT`
- parser.nx: `parse_trait()`, `parse_impl()` soporta `impl Trait for Type`, trait bounds en type params
- semantic.nx: registro de `trait_def`/`impl_trait`, `validate_impl_trait()`
- codegen.nx: `trait_methods`/`trait_impls`/`type_traits` Maps, `codegen_trait_def`, `codegen_impl_trait_register/functions`, bound stripping en monomorphization, `method_call` en `substitute_types_in_node`
- Seeds recompilados: lexer.ll, parser.ll, semantic.ll, codegen.ll

---

## [0.26] — 2026-03-15 — Generics (Functions + Structs)

### Added
- **Generic functions**: `fn identity<T>(x: T) -> T` via monomorphization
- **Generic structs**: `struct Pair<A, B> { first: A, second: B }` via monomorphization
- test-34-generics-basic, test-35-generics-structs

---

## [0.25] — 2026-03-14 — Import System + Closures Completas

### Added
- **Import system real**: driver auto-load de `std/prelude.nx`, `import { foo } from "module"` con inlining de modulos
- **Impl blocks**: `impl Point { fn distance(self) -> int { ... } }`, dispatch `p.distance()` → `Point_distance(p)`
- **Closures retornables**: `fn make_adder(n) -> Fn { fn add(x) { n + x }; return add }` — SharedEnv heap-allocated, closure pair `{fn_ptr, env_ptr}`
- **Exhaustive pattern matching**: error si match sobre enum no cubre todos los variantes
- **Error messages con linea/columna**: `Error [42:5]: se esperaba X, encontrado Y` en parser
- **String methods en variables conocidas**: fix dispatch de `contains`, `split`, `charAt`, `substring` para variables String
- **Inferencia de tipo Fn**: auto-deteccion cuando una funcion retorna `Fn`
- test-30-impl-methods, test-32-exhaustive-match, test-33-returnable-closures

### Changed
- Makefile: `make run` usa `cp` en vez de `cat prelude + user` (prelude auto-loaded)
- Driver (nyx.nx): `resolve_source()` auto-carga prelude y resuelve imports
- codegen.nx: Fn representado como closure pair `{i8*, i8*}*` con GC_malloc
- codegen.nx: indirect call via branch en env null/not-null
- Scripts de test actualizados para auto-prelude

### Fixed
- `String.contains()` en variables se despachaba como `Map.contains()` — crash en runtime
- `String.split()`, `charAt()`, `substring()` misma correccion de dispatch

---

## [0.24] — 2026-03-14 — Enum Avanzados + String Interpolation + Try Operator

### Added
- **String interpolation**: `"hello ${name}"` desugared en lexer a concatenacion
- **Enum params no-int**: String, float, bool como params de variantes de enum
- **Operador `?` (try)**: `let val = expr?` — extrae Ok o retorna Err
- **Bool-to-string**: `nyx_string_from_bool()` en runtime
- **Result pattern mejorado**: `Result.Err("division by zero")` con String params
- test-27-string-interpolation, test-28-enum-string-params, test-29-result-pattern, test-31-try-operator

### Changed
- lexer.nx: string interpolation via `scan_string_chars()` + `scan_string_rest()`
- parser.nx: postfix `?` como `try_op` node, `impl` keyword
- codegen.nx: `enum_param_types` Map, match bindings con tipos correctos
- semantic.nx: validacion de `impl` blocks y `try_op` nodes

---

## [0.23] — 2026-03-13 — Floats + Match statement

### Added
- **Floats (f64)**: tipo `float`, literales decimales (`3.14`), aritmetica completa (`fadd/fsub/fmul/fdiv/frem`), comparaciones (`fcmp`), negacion (`fneg`)
- **Operador `**` (POWER)**: potenciacion para int y float via `@pow` de libm
- **print() de floats**: `nyx_print_float(double)` en codegen
- **Builtins de conversion**: `int_to_float()`, `float_to_int()`, `float_to_string()`
- **String + float concatenacion**: `"x = " + 3.14` funciona
- **Match como statement**: `match x { ... }` sin `return`, fix para void arms
- test-25-floats, test-26-match-stmt

### Changed
- Makefile: `-lm` agregado a LIBS para linkear `pow()`

### Fixed
- `codegen_match`: crash con arms de tipo void (print, etc.) — ahora ignora resultado

---

## [0.22] — 2026-03-13 — First-Class Functions

### Added
- **Tipo `Fn`**: funciones como valores de primera clase, representadas como `i8*`
- Pasar funciones como argumentos: `fn apply(f: Fn, x: int) -> int`
- Asignar funciones a variables: `let f: Fn = double`, `var op: Fn = double`
- map/filter/reduce sobre arrays
- Composicion de funciones: `compose(f, g, x)`
- test-22-first-class-fn, test-23-map-filter-reduce, test-24-fn-as-value

---

## [0.21] — 2026-03-13 — Standard Library + Bootstrap Chain

### Added
- **Standard Library v0.21**: `std/math.nx`, `std/array.nx`, `std/io.nx`, `std/file.nx`, `std/map.nx`, `std/prelude.nx`
- **Bootstrap chain completo**: codegen.ll self-compiled con fixed point verificado
- Suite avanzada: 20 tests de capacidades del lenguaje
- 3 tests de stdlib

---

## [0.20.5] — 2026-03-10 — Release inicial del repositorio autonomo

### Punto de partida
Este es el primer release del repositorio independiente de Nyx.
El compilador es completamente autonomo: se compila a si mismo sin dependencias externas.

---

## Proximas versiones

Ver [docs/ROADMAP.md](docs/ROADMAP.md) para el plan de desarrollo.
