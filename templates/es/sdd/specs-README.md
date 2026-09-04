# specs/ — una carpeta por funcionalidad

<!-- sdd-template: 1 -->

Una funcionalidad no nace como código: nace como una spec que dice QUÉ y POR QUÉ, después
un plan que dice CÓMO y después una lista de tareas. Esta carpeta guarda un directorio
numerado por funcionalidad, `specs/NNN-feature/`, con los nombres de archivo de Spec Kit
— fijos en inglés para que cualquier agente los reconozca, sea cual sea el idioma en el
que esté escrito el contenido.

## El ciclo

1. **`docs/constitution.md`** — se lee primero. Manda sobre toda spec: una spec que
   contradice a la constitución está equivocada, no al revés.
2. **`specs/NNN-feature/spec.md`** — el QUÉ y el POR QUÉ. Sin implementación, sin nombres
   de archivo, sin elección de bibliotecas. Si una pregunta no se puede responder con lo
   que dijo el usuario, va a *Preguntas abiertas* — nunca se adivina.
3. **`specs/NNN-feature/plan.md`** — el CÓMO: la forma de la solución, los archivos que
   toca, el orden de los pasos y qué se verifica después de cada uno.
4. **`specs/NNN-feature/tasks.md`** — el plan partido en tareas lo bastante chicas como
   para terminarlas y verificarlas de a una. Cada tarea dice cómo se prueba que está lista.
5. **`specs/NNN-feature/research.md`** — opcional: mediciones, antecedentes, experimentos
   chicos. Existe cuando una decisión necesita evidencia en vez de una opinión.

La numeración es creciente (`001-`, `002-`, …) y una carpeta no se renumera nunca. Una
decisión tomada al escribir la spec que va a sobrevivir a la funcionalidad va a
`docs/adr/`; una palabra que hubo que definir va a `docs/glossary.md`.

## La plantilla de spec

Copia esto en `specs/NNN-feature/spec.md`. Las secciones se mantienen aunque sean cortas;
una sección realmente vacía lo dice («ninguno») en vez de desaparecer.

```markdown
# <nombre de la funcionalidad>

## Problema
Qué duele hoy, a quién y cómo se nota. Medido si se puede medir.

## Usuarios
A quién afecta y qué necesita cada uno de la funcionalidad.

## Alcance
Qué cubre esta funcionalidad, en la forma útil más chica.

## No-objetivos
Qué NO cubre explícitamente, para que nadie lo agregue «de paso» más adelante.

## Aceptación
Cómo vamos a saber que funciona: comportamiento observable, en forma de chequeos que se
puedan correr.

## Riesgos
Qué puede salir mal y qué se perdería si sale mal.

## Preguntas abiertas
Todo lo que hay que preguntarle al usuario. Nunca se responde adivinando.
```
