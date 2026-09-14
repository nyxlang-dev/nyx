# lib_voseo.sh — LA lista de español no neutro, una sola vez. Se sourcea.
#
# POR QUÉ ES UN ARCHIVO APARTE (2026-09-13)
#
# La denylist vivía adentro de run_templates_parity.sh y solo vigilaba templates
# y gotchas. Nadie miraba los mensajes que imprime el COMPILADOR ni el runtime, y
# al barrerlos aparecieron ~100 formas de voseo en diagnósticos que ve un usuario
# («usá», «revisá», «corré», «renombrá el tuyo», «corrélo vos») — varias de ellas
# escritas la misma semana en que la guarda de templates ya existía.
#
# Una segunda guarda con su PROPIA copia de la lista habría repetido la trampa
# que este repo pisó cuatro veces esa semana (builtins void, módulos del prelude,
# builtins globales, tabla de booleanos): dos copias que derivan. Por eso la
# lista vive acá y las dos guardas la sourcean.
#
# Formas: conjugaciones rioplatenses de 2da persona (voseo), sus imperativos con
# enclítico, y el plural peninsular (vosotros). \b...\b para no cazar «usa»
# adentro de «usamos» ni «vos» adentro de «vosotros»; grep -E con -w no alcanza
# porque trata las vocales acentuadas como no-palabra.
VOSEO_DENY_RE='\b(sos|tenés|podés|querés|sabés|hacé|seguí|ofrecé|leé|probá|declará|borrá|usá|corré|mirá|fijate|acordate|vos|vosotros|tenéis|podéis|sabéis|ejecutá|agregá|revisá|instalá|escribí|elegí|poné|dejá|decí|tené|asegurate|necesitás|debés|hacés|abrí|cambiá|verificá|renombrá|calificá|convertí|manejá|quitá|exportá|reinstalá|anotá|pasá|corrélo|movelo|ejecutalo|citalo|regenerá|reconstruí|sincronizá|agregalos|pasalo|usalo|decilo|inicializalo|reportalo|importá|reemplazá|sacá|separá|definí|cerrá|llamá|evitá|volvé)\b'
