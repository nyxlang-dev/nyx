# Arranque guiado — completar la constitución

<!-- sdd-template: 1 -->

Esta guía es para quien abre este proyecto y encuentra `docs/constitution.md` todavía con
el marcador `SDD_INCOMPLETE`: una persona, o un agente de cualquier tipo. Es una
**oferta**, nunca una obligación. Un proyecto se puede construir sin constitución — solo
que se construye adivinando más.

## Cuándo aplica

El marcador `SDD_INCOMPLETE` está en `docs/constitution.md`. Eso significa que nadie dijo
todavía para qué existe este proyecto, quién lo usa ni qué nunca debe pasar. Todo lo que
se escriba sin eso es una suposición disfrazada de decisión.

## Qué ofrecer

Antes de escribir código, dilo una vez, claro:

> La constitución de este proyecto está vacía. ¿Te hago 7 preguntas, una por sección?
> Lleva un par de minutos y es lo que evita que yo invente.

Después espera la respuesta. No empieces a preguntar antes de que el usuario acepte.

## Las siete preguntas

De a una, en este orden, esperando cada respuesta antes de hacer la siguiente.

1. **Propósito** — ¿Para qué existe este proyecto y qué problema resuelve?
2. **Usuarios** — ¿Quién lo usa y qué necesita cada uno de él?
3. **Alcance y no-objetivos** — ¿Qué cubre y qué NO va a hacer explícitamente?
4. **Invariantes** — ¿Qué nunca debe pasar, pase lo que pase?
5. **Qué significa «terminado»** — ¿Qué tiene que ser cierto para que un cambio cuente
   como terminado?
6. **Restricciones técnicas** — ¿Qué versión de Nyx, qué política de dependencias, qué
   reglas de estilo o plataformas debe respetar el código?
7. **Cómo se decide** — ¿Quién decide, qué necesita un ADR y qué puedo decidir yo solo?

## Reglas mientras preguntas

- **Una pregunta por vez.** Una lista de siete preguntas recibe una sola respuesta vaga.
- **«Saltar» y «no aplica» son respuestas válidas.** Anótalas tal cual y sigue: una
  sección marcada «no aplica todavía» es honesta; una sección rellenada con un valor por
  defecto plausible es una mentira en la que todos van a confiar después.
- **Anota las respuestas textuales**, con las palabras del usuario. No las pulas, no las
  amplíes, no sugieras valores por defecto, no ofrezcas ejemplos para elegir — en cuanto
  propones el contenido, la respuesta deja de ser del usuario.
- **Pregunta, no deduzcas.** Lo que el código parece hacer no es para qué existe el
  proyecto.
- Manténlo corto en cada sección. Tres líneas verdaderas valen más que doce plausibles.

## Cierre: quitar el marcador

Cuando las siete secciones tengan al menos una línea VERDADERA — una respuesta, o un «no
aplica» explícito — borra el párrafo `SDD_INCOMPLETE` del principio de
`docs/constitution.md` y dile al usuario qué secciones quedaron vacías a propósito. Si
queda aunque sea una sección sin responder, el marcador SE QUEDA: una constitución
incompleta que lo dice vale más que una que parece completa porque inventó el resto.

## Si el usuario declina

Sigue con lo que pidió de verdad. Dilo **una vez**, sin repetirlo en cada mensaje
posterior:

> Entendido — trabajo sin constitución. Voy a preguntarte cuando una decisión no se pueda
> tomar con lo que ya me dijiste.

De ahí en adelante, pregunta solo lo imprescindible para el pedido que tienes entre manos,
y vuelve a ofrecer las siete preguntas solo si el usuario menciona la constitución. La
oferta se hace una vez, no se impone.
