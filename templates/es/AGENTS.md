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
   retroalimentación más rápida que tienes, y sale con código distinto de cero ante un error,
   así que `nyx check && nyx run` se puede encadenar sin riesgo. `nyx vet` caza variables sin
   usar y código muerto, y marca las trampas grep-ables de más abajo con
   `warning[W1NN] <archivo>:<línea>` — así recibes la trampa por su nombre en vez de un error
   del parser. Los dos usan `src/main.nx` por defecto.
6. **Ejecútalo:** `nyx run` (o `nyx build`). Lee la salida del compilador.
7. **Pruébalo:** `nyx test` corre `tests/*.nx`. Las pruebas TIENEN que usar bloques
   `test "nombre" { ... }` — un archivo con funciones llamadas `test_*` se SALTEA EN SILENCIO
   («No files with test blocks found»), así que creerías que tu código está probado cuando no
   lo está.
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
<!-- gen:ids nested-map-from-call,option-struct-multifield-link,small-channel-deadlock,ffi-c-int-no-sign-extend,fn-callback-typed,await-float-gated,channel-is-map,charat-returns-int,enum-dot-not-colons,map-literal-string-keys,strings-are-bytes,check-bind-return,assert-aborts-process,bare-return-void -->

1. **Maps anidados: funciona con una variable o un literal inline, pero CRASHEA con el retorno de una
función — ante la duda usa claves planas: `map.insert("user::name", "alice")`.**
2. **`Option<Struct>`/`Result<Struct, E>` con un struct de 2+ campos como payload rompe el LINK — retorna
`Option<Array>`/`Result<Array, E>` con los campos empaquetados en un Array.**
3. **Un `channel_new(N)` chico puede deadlockear un productor/consumidor si envías todo antes de empezar
a drenar un segundo canal acotado — dimensiona cada canal para al menos el total de mensajes que va a
transportar.**
4. **Un `int` de C (32 bits) retornado por una función `extern "C"` NO hace sign-extend a un `int` de Nyx
(64 bits) — un valor negativo de C cruza como un número positivo enorme, nunca como negativo.**
5. **Callbacks: conviene preferir `Fn(Type) -> Ret`**
6. **El `await` de una función que retorna `float` está bloqueado (NYX1021)**
7. **Los channels deben ser Map, no int: `let ch: Map = channel_new(10)`, nunca `let ch: int`.**
8. **`charAt()` retorna int (ASCII/codepoint), NO String — hay que comparar contra números:
`if c == 65`.**
9. **Las variantes de enum usan `.`, no `::`: `Shape.Circle(5)`, nunca `Shape::Circle(5)`.**
10. **Las claves de un map literal deben ser STRINGS: `{"k": 1}` y `{}` funcionan (v0.16), pero
`{ident: 1}` NO es un map literal y falla en voz alta con `NYX0106`.**
11. **La API de String opera sobre BYTES (v0.14): `length()`, `substring()`, `indexOf()` y `charAt()`
operan todas sobre BYTES — para conteos de *caracteres* se usa `char_length()` (codepoints UTF-8).**
12. **Hay que chequear el retorno de `http_serve`/`tcp_listen`/`udp_bind`: un bind que falla (puerto
ocupado) retorna `-1` — `if http_serve(8080, handler) < 0 { return 1 }`.**
13. **`assert()` aborta el proceso (`exit(1)`) en la primera falla**
14. **Un `return` sin valor funciona en una función que retorna `void`**

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
