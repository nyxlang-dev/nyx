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
VOSEO_DENY_RE='\b(sos|tenés|podés|querés|sabés|hacé|seguí|ofrecé|leé|probá|declará|borrá|usá|corré|mirá|fijate|acordate|vos|vosotros|tenéis|podéis|sabéis|ejecutá|agregá|revisá|instalá|escribí|elegí|poné|dejá|decí|tené|asegurate|necesitás|debés|hacés|abrí|cambiá|verificá|renombrá|calificá|convertí|manejá|quitá|exportá|reinstalá|anotá|pasá|corrélo|movelo|ejecutalo|citalo|regenerá|reconstruí|sincronizá|agregalos|pasalo|usalo|decilo|inicializalo|reportalo|importá|reemplazá|sacá|separá|definí|cerrá|llamá|evitá|volvé|accedé|envolvé|resolvé|subí|sacala)\b'

# REGLA GENERAL para el imperativo voseante en -á (2026-09-15)
#
# La lista de arriba es de palabras sueltas, y se escapaban las que nadie había
# anotado: «Completá las secciones» salió en la plantilla de `nyx report` y en
# tres mensajes de build.nx, y al medir aparecieron además «bindeá», «accedé»,
# «asigná», «tipá», «procesá», «ajustá», «reintentá», «actualizá», «bajá»,
# «preguntá», «CHEQUEÁ» en texto que ve un usuario. Esa clase no se cierra
# agregando palabras de a una.
#
# Toda palabra terminada en -á es sospechosa, salvo dos familias que en español
# neutro son legítimas y cerradas:
#   - el FUTURO (hará, podrá, tendrá, habrá, dirá, usará, fallará…): termina en
#     vocal/b/d + «rá». Los imperativos voseantes de verbos en -rar (declará,
#     separá, mirá) comparten esa forma y por eso siguen en la lista explícita;
#     los de -rrar/-trar (borrá, cerrá, registrá) sí los caza la regla.
#   - un puñado de adverbios: acá, allá, está, quizá.
# Medido sobre compilador, runtime, std, scripts, templates y tests: cero falsos
# positivos con esta exclusión.
#
# Por qué solo -á y no -é/-í: «corré», «accedé», «subí» coinciden letra por
# letra con el pretérito de primera persona («probé», «importé», «olvidé»,
# «subí»), que es español neutro y aparece en comentarios. Una regla general ahí
# acusaría texto correcto; esas formas van en la lista explícita.
VOSEO_TILDE_A_RE='\b[[:alpha:]]+á\b'
VOSEO_TILDE_A_ALLOW_RE='\b(acá|allá|está|quizá|[[:alpha:]]*[aeiíbd]rá)\b'

# voseo_filter — lee líneas por stdin y reimprime, en orden, las que tienen
# voseo según la lista explícita O la regla general en -á. Sin distinguir
# mayúsculas («Completá», «CHEQUEÁ»). Las dos guardas pasan todo por acá, así
# que no hay forma de que una aplique una regla y la otra no.
voseo_filter() {
    local t
    t="$(mktemp)" || return 2
    cat > "$t"
    {
        LC_ALL=C.UTF-8 grep -niE -- "$VOSEO_DENY_RE" "$t" | cut -d: -f1
        LC_ALL=C.UTF-8 sed -E "s/$VOSEO_TILDE_A_ALLOW_RE//gI" "$t" \
            | LC_ALL=C.UTF-8 grep -niE -- "$VOSEO_TILDE_A_RE" | cut -d: -f1
    } | sort -un > "$t.idx"
    awk 'NR==FNR { want[$1] = 1; next } (FNR in want)' "$t.idx" "$t"
    rm -f "$t" "$t.idx"
}
