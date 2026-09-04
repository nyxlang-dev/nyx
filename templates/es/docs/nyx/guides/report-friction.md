# Reportar fricción

<!-- template: 1 -->

Nyx está optimizado para agentes de IA y tiene un lazo de retroalimentación: lo que te frena
a ti frena a todos los agentes. Reportar fricción REAL es parte del flujo de trabajo, no una
molestia. Usa esta guía cuando el compilador se comporta distinto de lo que dice la
documentación, cuando un caso mínimo reproducible sigue fallando después de revisar las
trampas de `AGENTS.md`, o cuando la documentación miente o falta.

## Cuándo reportar

1. **LENGUAJE**: un caso mínimo reproducible compila mal, crashea o falla al linkear — y NO
   es una de las trampas listadas en `AGENTS.md` / `docs/nyx/LLM.md`.
2. **DOC**: la documentación (`AGENTS.md`, `docs/nyx/LLM.md`, la especificación) dice algo
   que el compilador contradice, o tu caso no está documentado en absoluto.
3. **IDEA**: una fricción de ergonomía que una feature resolvería.

NO reportes: errores propios de tipos o sintaxis que el compilador explica bien (lee antes
`NYX_DIAG=json`), ni trampas ya documentadas.

## Cómo reportar

```bash
nyx report          # 1) crea FRICTION.md (una plantilla) en el proyecto — NO envía nada
# 2) completa la plantilla: objetivo, CÓDIGO MÍNIMO que reproduce, el error literal,
#    qué decía la documentación y la clasificación DOC/LENGUAJE/IDEA
# 3) AVÍSALE A LA PERSONA USUARIA: «dejé un FRICTION.md, revísalo». Ella lo administra.
nyx report --send   # OPCIONAL: enviarlo al canal del equipo de Nyx (cola pública)
```

Lo que importa es el **`FRICTION.md` local** que la persona usuaria ve. Enviarlo (`--send`)
es opcional. En vez de inventar un workaround para «salir del paso», deja un reporte claro:
vale muchísimo más.

## Reglas de calidad

- El código mínimo tiene que ser EL MÁS CHICO que reproduce el problema (bisecta por mitades).
- Pega el error LITERAL (o el JSON de `NYX_DIAG=json nyx build`).
- Indica la versión (`nyx --version`).

## Privacidad

Sin token (`~/.nyx-kv-token`), el envío es ANÓNIMO por un canal públicamente legible:
**nunca incluyas código propietario ni secretos** — esa es otra razón por la que el reporte
pide un caso MÍNIMO. Alternativa: <https://github.com/nyxlang-dev/nyx/issues>.

## Qué pasa después

El equipo drena la cola en cada sesión de desarrollo y clasifica cada reporte (DOC → se
corrige la documentación; LENGUAJE → bug con test de regresión; IDEA → backlog). Los
arreglos te llegan por `nyx update`, cuyo «What's new» lista lo corregido.
