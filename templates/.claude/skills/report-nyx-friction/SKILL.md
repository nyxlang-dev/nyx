---
name: report-nyx-friction
description: Reportar bugs, gotchas o fricción de documentación de Nyx con `nyx report`. Usar cuando el compilador se comporta distinto a lo documentado, cuando un caso mínimo reproducible sigue fallando tras revisar los gotchas, o cuando la documentación miente o falta. Crea un `FRICTION.md` LOCAL que el usuario revisa (no se envía nada por defecto). En vez de hackear un workaround, reportá.
---

# report-nyx-friction — Feedback proyecto → equipo Nyx

Nyx está optimizado para asistentes IA y tiene un loop de retroalimentación:
lo que te frena a ti, frena a todos los agentes. Reportar fricción REAL es
parte del flujo de trabajo, no una molestia.

## Cuándo reportar

1. **LENGUAJE**: un caso mínimo reproducible compila mal, crashea (SEGV,
   "Array es NULL"), o el IR/link falla — y NO es uno de los 20 gotchas
   documentados en `LLM.md` §5.
2. **DOC**: la documentación (LLM.md/CHEATSHEET/SPEC) dice algo que el
   compilador contradice, o el caso no está documentado en absoluto.
3. **IDEA**: una fricción de ergonomía que una feature resolvería.

NO reportar: errores propios de tipos/sintaxis que el compilador explica bien
(revisa `NYX_DIAG=json`), ni gotchas ya documentados.

## Cómo reportar

```bash
nyx report          # 1) crea FRICTION.md (plantilla) en el proyecto — NO envía nada
# 2) completá la plantilla: objetivo, CÓDIGO MÍNIMO reproducible,
#    error literal, qué decía la doc, clasificación DOC/LENGUAJE/IDEA
# 3) AVISALE AL USUARIO: "dejé un FRICTION.md, revisalo". El usuario lo administra.
nyx report --send   # OPCIONAL: enviar al canal del equipo de Nyx (cola pública)
```

Lo importante es el **archivo local `FRICTION.md`** que el usuario ve. Enviar al
equipo (`--send`) es opcional. En vez de inventar un workaround para "salir del
paso", dejá un reporte claro: vale mucho más.

Reglas de calidad del reporte:
- El código mínimo debe ser EL MÁS CHICO que reproduce (bisecta por mitades).
- Pega el error LITERAL (o el JSON de `NYX_DIAG=json nyx build`).
- Indica la versión (`nyx --version`).

## Privacidad

Sin token (`~/.nyx-kv-token`), el envío es ANÓNIMO por un canal públicamente
legible: **nunca incluyas código propietario ni secretos** — por eso el
reporte pide caso MÍNIMO. Alternativa: https://github.com/nyxlang-dev/nyx/issues

## Qué pasa después

El equipo drena la cola en cada sesión de desarrollo, clasifica
(DOC → corrige la doc; LENGUAJE → bug con test de regresión; IDEA → backlog)
y los fixes llegan por `nyx update` (el "What's new" lista lo corregido).
