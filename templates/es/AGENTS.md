# AGENTS.md — Cómo escribir Nyx en este proyecto (lee esto PRIMERO)

<!-- template: 1 -->

Estás escribiendo un programa en **Nyx**. Todo lo que necesitas está en **tres lugares**:
este archivo, **`CAPABILITIES.md`** (lo que la biblioteca estándar ya hace — generado
automáticamente, siempre al día) y **`docs/nyx/`** (la referencia densa y las tres guías —
ver el mapa cerca del final de este archivo). Hay una cosa más que NO viaja acá: el
**recetario by-example** en <https://nyxlang.com/by-example/> (~100 recetas resueltas,
EN/ES), que es una página web.

> **REGLA DE ORO — NO leas el fuente del compilador ni de la biblioteca estándar**
> (`std/`, `compiler/`, ni nada bajo tu instalación de Nyx) «para entender cómo funciona».
> No hace falta y te vas a perder. Si buscas una función, búscala en `CAPABILITIES.md`.
> Si buscas un modismo, búscalo en <https://nyxlang.com/by-example/>. **¿Sin acceso a
> internet?** `CAPABILITIES.md` alcanza para encontrar la función correcta — saltea la
> búsqueda del modismo y escribe el código directamente. Eso es todo.

---

## Cómo construir un programa Nyx (procedimiento de decisión)

1. **Enuncia la tarea** en una oración (por ejemplo: «servidor HTTP que guarda formularios
   en SQLite»).
2. **Revisa `CAPABILITIES.md`** — ¿ya hay un módulo de la stdlib que hace esto? Casi siempre
   lo hay (HTTP, SQLite, JSON, archivos, cripto, TCP/TLS…). Si lo hay: `import "std/<módulo>"`
   y llámalo. **NO reimplementes lo que ya existe.**
3. **Busca el modismo** en <https://nyxlang.com/by-example/> para la forma que necesitas
   (saltea este paso si no hay red — `CAPABILITIES.md` alcanza).
4. **Escribe el programa.** Prefiere la cosa más chica que funcione.
5. **Auto-verifica primero:** `nyx check` chequea tipos SIN linkear ni ejecutar — es la
   retroalimentación más rápida que tienes, y sale con código distinto de cero ante un error.
   Resuelve `import "src/..."`, `import "std/..."` y el prelude igual que `nyx build`, así que
   en un proyecto multi-módulo vale como puerta de tipos. `nyx vet` caza variables sin usar
   y código muerto, y marca los gotchas grepeables de abajo con
   `warning[W1NN] <archivo>:<línea>` — recibes el gotcha por nombre en vez de un error del
   parser. Ambos usan `src/main.nx` por defecto.
6. **Ejecútalo:** `nyx run` (o `nyx build`). Lee la salida del compilador.
   Para compilar este proyecto a WebAssembly: `nyx build --target wasm32-wasi`
   (lee `nyx.toml` y escribe `target/wasm32-wasi/<nombre>.wasm`), o
   `nyx run --target wasm32-wasi` para construirlo y ejecutarlo con `wasmtime`.
7. **Pruébalo:** `nyx test` corre `tests/*.nx`. Las pruebas TIENEN que usar bloques
   `test "nombre" { ... }` — un archivo con funciones llamadas `test_*` se SALTA EN SILENCIO
   («No files with test blocks found») y creerías, mal, que tu código está probado. `nyx test`
   SÍ chequea tipos: un error de tipos en un módulo o en una prueba tumba la corrida con su
   diagnóstico NYX, no pasa en verde.
8. **Si no compila:** lee el error (trae archivo:línea y muchas veces un «did you mean»).
   Revisa las trampas de más abajo — la mayoría de las fallas del primer intento son una de
   ellas. Corrige y vuelve a correr.
9. **Si chocas contra una pared de verdad** — el lenguaje o la stdlib genuinamente no pueden,
   o encontraste un bug — **PARA. NO inventes un workaround.** Corre `nyx report` (deja un
   `FRICTION.md` en este proyecto) y avísale a la persona usuaria. Ella se encarga.

---

## Rieles duros (NO hagas esto)

- **NO inventes sintaxis.** Si dudas de que una palabra clave o una feature exista,
  probablemente no exista — revisa `CAPABILITIES.md` (o <https://nyxlang.com/by-example/>)
  en vez de adivinar.
- **NO reinventes lo que ya hace la stdlib.** Si `CAPABILITIES.md` lo lista, úsalo.
- **NO te metas en el fuente de `std/` ni de `compiler/`** para «entenderlo».
- **NO parches una limitación.** Repórtala con `nyx report` y detente.
- **NO salgas del directorio del proyecto** a explorar la toolchain.

---

## Trampas (los errores que más arruinan el primer intento)

<!-- gen:gotchas kinds=trap,rule lang=es form=short -->
<!-- gen:ids nested-map-from-call,small-channel-deadlock,ffi-c-int-no-sign-extend,derive-fields-pg-bool-text,int-wraps-silently,fn-callback-typed,await-float-gated,channel-is-map,charat-returns-int,enum-dot-not-colons,map-literal-string-keys,strings-are-bytes,check-bind-return,assert-aborts-process,bare-return-void,dyn-trait-needs-annotation,pg-null-sentinel,random-bytes-not-crypto,sqlite-null-sentinel,string-order-is-bytewise,throw-deprecated -->

1. **Maps anidados: funciona con una variable o un literal inline, pero CRASHEA con el retorno de una
función — ante la duda usa claves planas: `map.insert("user::name", "alice")`.**
2. **Un `channel_new(N)` chico puede deadlockear un productor/consumidor si envías todo antes de empezar
a drenar un segundo canal acotado — dimensiona cada canal para al menos el total de mensajes que va a
transportar.**
3. **Un `int` de C (32 bits) retornado por una función `extern "C"` NO hace sign-extend a un `int` de Nyx
(64 bits) — un valor negativo de C cruza como un número positivo enorme, nunca como negativo.**
4. **Una fila de `std/postgres` no se le puede pasar directo a `<Struct>_desde_fila()` si tiene una
columna `bool` — el formato text de PostgreSQL para boolean es `t`/`f`, y `desde_fila` solo reconoce la
cadena exacta `"true"`.**
5. **La aritmética de `int` (`+`/`-`/`*`) desborda en wraparound silencioso (complemento a dos) — no hay
función saturada, ni flag del compilador, ni tipo de 128 bits; usa `checked_add`/`checked_sub`/`checked_mul`/`checked_div` para DETECTARLO y `mul_div_round` para `a*b/c`.**
6. **Callbacks: conviene preferir `Fn(Type) -> Ret`**
7. **El `await` de una función que retorna `float` está bloqueado (NYX1021)**
8. **Los channels deben ser Map, no int: `let ch: Map = channel_new(10)`, nunca `let ch: int`.**
9. **`charAt()` retorna int (ASCII/codepoint), NO String — hay que comparar contra números:
`if c == 65`.**
10. **Las variantes de enum usan `.`, no `::`: `Shape.Circle(5)`, nunca `Shape::Circle(5)`.**
11. **Las claves de un map literal deben ser STRINGS: `{"k": 1}` y `{}` funcionan (v0.16), pero
`{ident: 1}` NO es un map literal y falla en voz alta con `NYX0106`.**
12. **La API de String opera sobre BYTES (v0.14): `length()`, `substring()`, `indexOf()` y `charAt()`
operan todas sobre BYTES — para conteos de *caracteres* se usa `char_length()` (codepoints UTF-8).**
13. **Hay que chequear el retorno de `http_serve`/`tcp_listen`/`udp_bind`: un bind que falla (puerto
ocupado) retorna `-1` — `if http_serve(8080, handler) < 0 { return 1 }`.**
14. **`assert()` aborta el proceso (`exit(1)`) en la primera falla**
15. **Un `return` sin valor funciona en una función que retorna `void`**
16. **Para guardar objetos de trait en una colección, tipá la colección: `Array<dyn Trait>`**
17. **Una columna NULL de `std/postgres` NO es un string vacío — se pregunta con `pg_is_null(v)`**
18. **`random_bytes` (`std/random`) es un PRNG, no un CSPRNG — nunca lo uses para salts, tokens, claves,
nonces, ni ningún otro material criptográfico; para eso usa `csprng_bytes`.**
19. **Una columna NULL de `std/sqlite` NO es un string vacío — se pregunta con `sqlite_is_null(v)`**
20. **`<` `<=` `>` `>=` entre Strings comparan BYTES, no codepoints ni locale**
21. **`throw(x)` es un alias deprecado de `panic(x)`: mismo canal, mismo `catch`, los mismos límites.**

<!-- /gen:gotchas -->

Que una trampa te muerda es normal — corrige según la nota, no reescribas todo tu enfoque.

---

## Dónde está el resto (`docs/nyx/`)

Todo lo de abajo lo sembró `nyx init` y lo refresca `nyx update --sync-docs`. Está escrito
para un agente, no para un proveedor: cualquier asistente lee los mismos archivos.

| Archivo | Qué es | Cuándo abrirlo |
|---|---|---|
| `docs/nyx/LLM.md` | Referencia densa: builtins, métodos, tipos, trampas en forma larga, patrones idiomáticos (en inglés: la referencia es monolingüe por ahora) | Antes de escribir algo no trivial, o cuando `CAPABILITIES.md` te dio el nombre pero no la forma |
| `docs/nyx/guides/write-a-program.md` | Cómo escribir Nyx idiomático: estructura, `Result`/`Option`, closures, structs/traits, genéricos, enums, concurrencia | Vas a escribir un programa o un módulo nuevo |
| `docs/nyx/guides/fix-a-compile-error.md` | Leer el diagnóstico y los códigos `NYX`, aislar un caso mínimo, leer el IR generado | Algo no compila, o revienta en tiempo de ejecución |
| `docs/nyx/guides/report-friction.md` | Cuándo y cómo reportar fricción con `nyx report`, privacidad, qué pasa después | Chocaste contra una pared de verdad (paso 9 de arriba) |

`CAPABILITIES.md` vive en la raíz del proyecto y se regenera en cada `nyx build`.

---

## Reportar un problema (para que la persona usuaria y quienes mantienen Nyx lo arreglen)

Si Nyx genuinamente no puede hacer algo, o encontraste un bug, o la documentación estaba
equivocada o faltaba:

```
nyx report
```

Esto crea (o abre) **`FRICTION.md`** en este proyecto. Completa: qué estabas intentando hacer,
el código mínimo que lo reproduce y el error exacto. Después **avísale a la persona usuaria**
que el reporte está listo. No intentes esquivar la limitación — un reporte limpio vale mucho
más que un parche.
