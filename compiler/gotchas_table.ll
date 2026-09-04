source_filename = "script.nx"
target triple = "x86_64-pc-linux-gnu"

@.str0 = private unnamed_addr constant [1 x i8] c"\00"
@.str0.c = internal global %nyx_string* null
@.str1 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str1.c = internal global %nyx_string* null
@.str2 = private unnamed_addr constant [3 x i8] c"  \00"
@.str2.c = internal global %nyx_string* null
@.str3 = private unnamed_addr constant [2 x i8] c" \00"
@.str3.c = internal global %nyx_string* null
@.str4 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str4.c = internal global %nyx_string* null
@.str5 = private unnamed_addr constant [1379 x i8] c"// Trims what a TEXTUAL match must not see: the first // outside quotes (and\0a// everything after it), plus the contents of every double-quoted literal\0a// (each byte blanked to a space, quotes and positions kept, so line and\0a// column numbers never move). A backslash-escaped quote inside a literal does\0a// not close it. Deliberate scope: only // and double quotes — Nyx has no\0a// block comments today; if it ever gets them, extend this.\0a// charAt() returns an int: 34 is a double quote, 92 a backslash, 47 a slash.\0apub fn gotcha_scan_line(line: String) -> String {\0a    var out: String = \22\22\0a    let n: int = line.length()\0a    var in_str: bool = false\0a    var i: int = 0\0a    while i < n {\0a        let c: int = line.charAt(i)\0a        if in_str {\0a            if c == 34 {\0a                out = out + \22\5c\22\22\0a                in_str = false\0a                i = i + 1\0a            } else if c == 92 and i + 1 < n {\0a                out = out + \22  \22\0a                i = i + 2\0a            } else {\0a                out = out + \22 \22\0a                i = i + 1\0a            }\0a        } else if c == 34 {\0a            out = out + \22\5c\22\22\0a            in_str = true\0a            i = i + 1\0a        } else if c == 47 and i + 1 < n and line.charAt(i + 1) == 47 {\0a            return out\0a        } else {\0a            out = out + line.substring(i, i + 1)\0a            i = i + 1\0a        }\0a    }\0a    return out\0a}\0a\00"
@.str5.c = internal global %nyx_string* null
@.str6 = private unnamed_addr constant [21 x i8] c"nested-map-from-call\00"
@.str6.c = internal global %nyx_string* null
@.str7 = private unnamed_addr constant [5 x i8] c"trap\00"
@.str7.c = internal global %nyx_string* null
@.str8 = private unnamed_addr constant [13 x i8] c"silent-wrong\00"
@.str8.c = internal global %nyx_string* null
@.str9 = private unnamed_addr constant [8 x i8] c"0.22.18\00"
@.str9.c = internal global %nyx_string* null
@.str10 = private unnamed_addr constant [1 x i8] c"\00"
@.str10.c = internal global %nyx_string* null
@.str11 = private unnamed_addr constant [1 x i8] c"\00"
@.str11.c = internal global %nyx_string* null
@.str12 = private unnamed_addr constant [1 x i8] c"\00"
@.str12.c = internal global %nyx_string* null
@.str13 = private unnamed_addr constant [11 x i8] c"user::name\00"
@.str13.c = internal global %nyx_string* null
@.str14 = private unnamed_addr constant [1 x i8] c"\00"
@.str14.c = internal global %nyx_string* null
@.str15 = private unnamed_addr constant [38 x i8] c"tests/ai-first/13-map-literal-keys.nx\00"
@.str15.c = internal global %nyx_string* null
@.str16 = private unnamed_addr constant [161 x i8] c"Nested Maps: OK for a variable or an inline literal, CRASHES for a function's return value — when in doubt use flat keys: `map.insert(\22user::name\22, \22alice\22)`.\00"
@.str16.c = internal global %nyx_string* null
@.str17 = private unnamed_addr constant [179 x i8] c"Maps anidados: funciona con una variable o un literal inline, pero CRASHEA con el retorno de una función — ante la duda usa claves planas: `map.insert(\22user::name\22, \22alice\22)`.\00"
@.str17.c = internal global %nyx_string* null
@.str18 = private unnamed_addr constant [30 x i8] c"option-struct-multifield-link\00"
@.str18.c = internal global %nyx_string* null
@.str19 = private unnamed_addr constant [5 x i8] c"trap\00"
@.str19.c = internal global %nyx_string* null
@.str20 = private unnamed_addr constant [5 x i8] c"loud\00"
@.str20.c = internal global %nyx_string* null
@.str21 = private unnamed_addr constant [8 x i8] c"0.22.21\00"
@.str21.c = internal global %nyx_string* null
@.str22 = private unnamed_addr constant [1 x i8] c"\00"
@.str22.c = internal global %nyx_string* null
@.str23 = private unnamed_addr constant [1 x i8] c"\00"
@.str23.c = internal global %nyx_string* null
@.str24 = private unnamed_addr constant [1 x i8] c"\00"
@.str24.c = internal global %nyx_string* null
@.str25 = private unnamed_addr constant [14 x i8] c"Option<Array>\00"
@.str25.c = internal global %nyx_string* null
@.str26 = private unnamed_addr constant [1 x i8] c"\00"
@.str26.c = internal global %nyx_string* null
@.str27 = private unnamed_addr constant [36 x i8] c"tests/ai-first/15-http-items-api.nx\00"
@.str27.c = internal global %nyx_string* null
@.str28 = private unnamed_addr constant [181 x i8] c"`Option<Struct>`/`Result<Struct, E>` with a 2+-field struct as the payload fails to LINK — return `Option<Array>`/`Result<Array, E>` with the fields packed into an Array instead.\00"
@.str28.c = internal global %nyx_string* null
@.str29 = private unnamed_addr constant [179 x i8] c"`Option<Struct>`/`Result<Struct, E>` con un struct de 2+ campos como payload rompe el LINK — retorna `Option<Array>`/`Result<Array, E>` con los campos empaquetados en un Array.\00"
@.str29.c = internal global %nyx_string* null
@.str30 = private unnamed_addr constant [23 x i8] c"small-channel-deadlock\00"
@.str30.c = internal global %nyx_string* null
@.str31 = private unnamed_addr constant [5 x i8] c"trap\00"
@.str31.c = internal global %nyx_string* null
@.str32 = private unnamed_addr constant [13 x i8] c"silent-wrong\00"
@.str32.c = internal global %nyx_string* null
@.str33 = private unnamed_addr constant [8 x i8] c"0.22.21\00"
@.str33.c = internal global %nyx_string* null
@.str34 = private unnamed_addr constant [1 x i8] c"\00"
@.str34.c = internal global %nyx_string* null
@.str35 = private unnamed_addr constant [1 x i8] c"\00"
@.str35.c = internal global %nyx_string* null
@.str36 = private unnamed_addr constant [1 x i8] c"\00"
@.str36.c = internal global %nyx_string* null
@.str37 = private unnamed_addr constant [9 x i8] c"deadlock\00"
@.str37.c = internal global %nyx_string* null
@.str38 = private unnamed_addr constant [1 x i8] c"\00"
@.str38.c = internal global %nyx_string* null
@.str39 = private unnamed_addr constant [37 x i8] c"tests/ai-first/16-worker-channels.nx\00"
@.str39.c = internal global %nyx_string* null
@.str40 = private unnamed_addr constant [210 x i8] c"A small `channel_new(N)` can deadlock a producer/consumer if you send everything before you start draining a second bounded channel — size each channel to at least the total number of messages it will carry.\00"
@.str40.c = internal global %nyx_string* null
@.str41 = private unnamed_addr constant [218 x i8] c"Un `channel_new(N)` chico puede deadlockear un productor/consumidor si envías todo antes de empezar a drenar un segundo canal acotado — dimensiona cada canal para al menos el total de mensajes que va a transportar.\00"
@.str41.c = internal global %nyx_string* null
@.str42 = private unnamed_addr constant [25 x i8] c"ffi-c-int-no-sign-extend\00"
@.str42.c = internal global %nyx_string* null
@.str43 = private unnamed_addr constant [5 x i8] c"trap\00"
@.str43.c = internal global %nyx_string* null
@.str44 = private unnamed_addr constant [13 x i8] c"silent-wrong\00"
@.str44.c = internal global %nyx_string* null
@.str45 = private unnamed_addr constant [7 x i8] c"0.30.0\00"
@.str45.c = internal global %nyx_string* null
@.str46 = private unnamed_addr constant [1 x i8] c"\00"
@.str46.c = internal global %nyx_string* null
@.str47 = private unnamed_addr constant [1 x i8] c"\00"
@.str47.c = internal global %nyx_string* null
@.str48 = private unnamed_addr constant [1 x i8] c"\00"
@.str48.c = internal global %nyx_string* null
@.str49 = private unnamed_addr constant [12 x i8] c"sign-extend\00"
@.str49.c = internal global %nyx_string* null
@.str50 = private unnamed_addr constant [1 x i8] c"\00"
@.str50.c = internal global %nyx_string* null
@.str51 = private unnamed_addr constant [40 x i8] c"tests/ai-first/22-ffi-int-truncation.nx\00"
@.str51.c = internal global %nyx_string* null
@.str52 = private unnamed_addr constant [188 x i8] c"A C `int` (32 bits) returned by an `extern \22C\22` function does NOT sign-extend into a Nyx `int` (64 bits) — a negative C value crosses as a huge positive number, never as a negative one.\00"
@.str52.c = internal global %nyx_string* null
@.str53 = private unnamed_addr constant [199 x i8] c"Un `int` de C (32 bits) retornado por una función `extern \22C\22` NO hace sign-extend a un `int` de Nyx (64 bits) — un valor negativo de C cruza como un número positivo enorme, nunca como negativo.\00"
@.str53.c = internal global %nyx_string* null
@.str54 = private unnamed_addr constant [18 x i8] c"fn-callback-typed\00"
@.str54.c = internal global %nyx_string* null
@.str55 = private unnamed_addr constant [5 x i8] c"rule\00"
@.str55.c = internal global %nyx_string* null
@.str56 = private unnamed_addr constant [4 x i8] c"n/a\00"
@.str56.c = internal global %nyx_string* null
@.str57 = private unnamed_addr constant [7 x i8] c"0.17.1\00"
@.str57.c = internal global %nyx_string* null
@.str58 = private unnamed_addr constant [1 x i8] c"\00"
@.str58.c = internal global %nyx_string* null
@.str59 = private unnamed_addr constant [1 x i8] c"\00"
@.str59.c = internal global %nyx_string* null
@.str60 = private unnamed_addr constant [1 x i8] c"\00"
@.str60.c = internal global %nyx_string* null
@.str61 = private unnamed_addr constant [9 x i8] c"Fn(Type)\00"
@.str61.c = internal global %nyx_string* null
@.str62 = private unnamed_addr constant [1 x i8] c"\00"
@.str62.c = internal global %nyx_string* null
@.str63 = private unnamed_addr constant [39 x i8] c"tests/ai-first/25-fn-callback-typed.nx\00"
@.str63.c = internal global %nyx_string* null
@.str64 = private unnamed_addr constant [36 x i8] c"Callbacks: prefer `Fn(Type) -> Ret`\00"
@.str64.c = internal global %nyx_string* null
@.str65 = private unnamed_addr constant [47 x i8] c"Callbacks: conviene preferir `Fn(Type) -> Ret`\00"
@.str65.c = internal global %nyx_string* null
@.str66 = private unnamed_addr constant [18 x i8] c"await-float-gated\00"
@.str66.c = internal global %nyx_string* null
@.str67 = private unnamed_addr constant [5 x i8] c"rule\00"
@.str67.c = internal global %nyx_string* null
@.str68 = private unnamed_addr constant [5 x i8] c"loud\00"
@.str68.c = internal global %nyx_string* null
@.str69 = private unnamed_addr constant [7 x i8] c"0.18.2\00"
@.str69.c = internal global %nyx_string* null
@.str70 = private unnamed_addr constant [1 x i8] c"\00"
@.str70.c = internal global %nyx_string* null
@.str71 = private unnamed_addr constant [1 x i8] c"\00"
@.str71.c = internal global %nyx_string* null
@.str72 = private unnamed_addr constant [1 x i8] c"\00"
@.str72.c = internal global %nyx_string* null
@.str73 = private unnamed_addr constant [8 x i8] c"NYX1021\00"
@.str73.c = internal global %nyx_string* null
@.str74 = private unnamed_addr constant [1 x i8] c"\00"
@.str74.c = internal global %nyx_string* null
@.str75 = private unnamed_addr constant [49 x i8] c"tests/compiler/errors/test-async-float-return.nx\00"
@.str75.c = internal global %nyx_string* null
@.str76 = private unnamed_addr constant [59 x i8] c"`await` of a `float`-returning function is gated (NYX1021)\00"
@.str76.c = internal global %nyx_string* null
@.str77 = private unnamed_addr constant [73 x i8] c"El `await` de una función que retorna `float` está bloqueado (NYX1021)\00"
@.str77.c = internal global %nyx_string* null
@.str78 = private unnamed_addr constant [15 x i8] c"channel-is-map\00"
@.str78.c = internal global %nyx_string* null
@.str79 = private unnamed_addr constant [5 x i8] c"rule\00"
@.str79.c = internal global %nyx_string* null
@.str80 = private unnamed_addr constant [5 x i8] c"loud\00"
@.str80.c = internal global %nyx_string* null
@.str81 = private unnamed_addr constant [8 x i8] c"0.22.18\00"
@.str81.c = internal global %nyx_string* null
@.str82 = private unnamed_addr constant [1 x i8] c"\00"
@.str82.c = internal global %nyx_string* null
@.str83 = private unnamed_addr constant [25 x i8] c": *int *= *channel_new\5c(\00"
@.str83.c = internal global %nyx_string* null
@.str84 = private unnamed_addr constant [5 x i8] c"W104\00"
@.str84.c = internal global %nyx_string* null
@.str85 = private unnamed_addr constant [12 x i8] c"channel_new\00"
@.str85.c = internal global %nyx_string* null
@.str86 = private unnamed_addr constant [1 x i8] c"\00"
@.str86.c = internal global %nyx_string* null
@.str87 = private unnamed_addr constant [36 x i8] c"tests/ai-first/14-language-rules.nx\00"
@.str87.c = internal global %nyx_string* null
@.str88 = private unnamed_addr constant [85 x i8] c"Channels must be Map, not int: `let ch: Map = channel_new(10)`, never `let ch: int`.\00"
@.str88.c = internal global %nyx_string* null
@.str89 = private unnamed_addr constant [90 x i8] c"Los channels deben ser Map, no int: `let ch: Map = channel_new(10)`, nunca `let ch: int`.\00"
@.str89.c = internal global %nyx_string* null
@.str90 = private unnamed_addr constant [19 x i8] c"charat-returns-int\00"
@.str90.c = internal global %nyx_string* null
@.str91 = private unnamed_addr constant [5 x i8] c"rule\00"
@.str91.c = internal global %nyx_string* null
@.str92 = private unnamed_addr constant [5 x i8] c"loud\00"
@.str92.c = internal global %nyx_string* null
@.str93 = private unnamed_addr constant [8 x i8] c"0.22.18\00"
@.str93.c = internal global %nyx_string* null
@.str94 = private unnamed_addr constant [1 x i8] c"\00"
@.str94.c = internal global %nyx_string* null
@.str95 = private unnamed_addr constant [23 x i8] c"charAt\5c([^)]*\5c) *== *\22\00"
@.str95.c = internal global %nyx_string* null
@.str96 = private unnamed_addr constant [5 x i8] c"W103\00"
@.str96.c = internal global %nyx_string* null
@.str97 = private unnamed_addr constant [7 x i8] c"charAt\00"
@.str97.c = internal global %nyx_string* null
@.str98 = private unnamed_addr constant [1 x i8] c"\00"
@.str98.c = internal global %nyx_string* null
@.str99 = private unnamed_addr constant [36 x i8] c"tests/ai-first/14-language-rules.nx\00"
@.str99.c = internal global %nyx_string* null
@.str100 = private unnamed_addr constant [93 x i8] c"`charAt()` returns int (ASCII/codepoint), NOT String — compare with numbers: `if c == 65`.\00"
@.str100.c = internal global %nyx_string* null
@.str101 = private unnamed_addr constant [104 x i8] c"`charAt()` retorna int (ASCII/codepoint), NO String — hay que comparar contra números: `if c == 65`.\00"
@.str101.c = internal global %nyx_string* null
@.str102 = private unnamed_addr constant [20 x i8] c"enum-dot-not-colons\00"
@.str102.c = internal global %nyx_string* null
@.str103 = private unnamed_addr constant [5 x i8] c"rule\00"
@.str103.c = internal global %nyx_string* null
@.str104 = private unnamed_addr constant [5 x i8] c"loud\00"
@.str104.c = internal global %nyx_string* null
@.str105 = private unnamed_addr constant [8 x i8] c"0.22.18\00"
@.str105.c = internal global %nyx_string* null
@.str106 = private unnamed_addr constant [1 x i8] c"\00"
@.str106.c = internal global %nyx_string* null
@.str107 = private unnamed_addr constant [26 x i8] c"[A-Z][A-Za-z0-9_]*::[A-Z]\00"
@.str107.c = internal global %nyx_string* null
@.str108 = private unnamed_addr constant [5 x i8] c"W101\00"
@.str108.c = internal global %nyx_string* null
@.str109 = private unnamed_addr constant [13 x i8] c"Shape.Circle\00"
@.str109.c = internal global %nyx_string* null
@.str110 = private unnamed_addr constant [1 x i8] c"\00"
@.str110.c = internal global %nyx_string* null
@.str111 = private unnamed_addr constant [36 x i8] c"tests/ai-first/14-language-rules.nx\00"
@.str111.c = internal global %nyx_string* null
@.str112 = private unnamed_addr constant [78 x i8] c"Enum variants use `.`, not `::`: `Shape.Circle(5)`, never `Shape::Circle(5)`.\00"
@.str112.c = internal global %nyx_string* null
@.str113 = private unnamed_addr constant [86 x i8] c"Las variantes de enum usan `.`, no `::`: `Shape.Circle(5)`, nunca `Shape::Circle(5)`.\00"
@.str113.c = internal global %nyx_string* null
@.str114 = private unnamed_addr constant [24 x i8] c"map-literal-string-keys\00"
@.str114.c = internal global %nyx_string* null
@.str115 = private unnamed_addr constant [5 x i8] c"rule\00"
@.str115.c = internal global %nyx_string* null
@.str116 = private unnamed_addr constant [5 x i8] c"loud\00"
@.str116.c = internal global %nyx_string* null
@.str117 = private unnamed_addr constant [8 x i8] c"0.22.18\00"
@.str117.c = internal global %nyx_string* null
@.str118 = private unnamed_addr constant [1 x i8] c"\00"
@.str118.c = internal global %nyx_string* null
@.str119 = private unnamed_addr constant [27 x i8] c"= *\5c{ *[a-z_][a-z0-9_]* *:\00"
@.str119.c = internal global %nyx_string* null
@.str120 = private unnamed_addr constant [5 x i8] c"W102\00"
@.str120.c = internal global %nyx_string* null
@.str121 = private unnamed_addr constant [8 x i8] c"NYX0106\00"
@.str121.c = internal global %nyx_string* null
@.str122 = private unnamed_addr constant [32 x i8] c"map literal {} is NOT supported\00"
@.str122.c = internal global %nyx_string* null
@.str123 = private unnamed_addr constant [38 x i8] c"tests/ai-first/13-map-literal-keys.nx\00"
@.str123.c = internal global %nyx_string* null
@.str124 = private unnamed_addr constant [139 x i8] c"Map literal keys must be STRINGS: `{\22k\22: 1}` and `{}` work (v0.16), but `{ident: 1}` is NOT a map literal and fails loudly with `NYX0106`.\00"
@.str124.c = internal global %nyx_string* null
@.str125 = private unnamed_addr constant [159 x i8] c"Las claves de un map literal deben ser STRINGS: `{\22k\22: 1}` y `{}` funcionan (v0.16), pero `{ident: 1}` NO es un map literal y falla en voz alta con `NYX0106`.\00"
@.str125.c = internal global %nyx_string* null
@.str126 = private unnamed_addr constant [18 x i8] c"strings-are-bytes\00"
@.str126.c = internal global %nyx_string* null
@.str127 = private unnamed_addr constant [5 x i8] c"rule\00"
@.str127.c = internal global %nyx_string* null
@.str128 = private unnamed_addr constant [13 x i8] c"silent-wrong\00"
@.str128.c = internal global %nyx_string* null
@.str129 = private unnamed_addr constant [8 x i8] c"0.22.18\00"
@.str129.c = internal global %nyx_string* null
@.str130 = private unnamed_addr constant [1 x i8] c"\00"
@.str130.c = internal global %nyx_string* null
@.str131 = private unnamed_addr constant [1 x i8] c"\00"
@.str131.c = internal global %nyx_string* null
@.str132 = private unnamed_addr constant [1 x i8] c"\00"
@.str132.c = internal global %nyx_string* null
@.str133 = private unnamed_addr constant [6 x i8] c"BYTES\00"
@.str133.c = internal global %nyx_string* null
@.str134 = private unnamed_addr constant [1 x i8] c"\00"
@.str134.c = internal global %nyx_string* null
@.str135 = private unnamed_addr constant [36 x i8] c"tests/ai-first/14-language-rules.nx\00"
@.str135.c = internal global %nyx_string* null
@.str136 = private unnamed_addr constant [176 x i8] c"String API is byte-based (v0.14): `length()`, `substring()`, `indexOf()` and `charAt()` all operate on BYTES — for *character* counts use `char_length()` (UTF-8 codepoints).\00"
@.str136.c = internal global %nyx_string* null
@.str137 = private unnamed_addr constant [197 x i8] c"La API de String opera sobre BYTES (v0.14): `length()`, `substring()`, `indexOf()` y `charAt()` operan todas sobre BYTES — para conteos de *caracteres* se usa `char_length()` (codepoints UTF-8).\00"
@.str137.c = internal global %nyx_string* null
@.str138 = private unnamed_addr constant [18 x i8] c"check-bind-return\00"
@.str138.c = internal global %nyx_string* null
@.str139 = private unnamed_addr constant [5 x i8] c"rule\00"
@.str139.c = internal global %nyx_string* null
@.str140 = private unnamed_addr constant [13 x i8] c"silent-wrong\00"
@.str140.c = internal global %nyx_string* null
@.str141 = private unnamed_addr constant [7 x i8] c"0.24.3\00"
@.str141.c = internal global %nyx_string* null
@.str142 = private unnamed_addr constant [1 x i8] c"\00"
@.str142.c = internal global %nyx_string* null
@.str143 = private unnamed_addr constant [38 x i8] c"^ *(http_serve|tcp_listen|udp_bind)\5c(\00"
@.str143.c = internal global %nyx_string* null
@.str144 = private unnamed_addr constant [5 x i8] c"W107\00"
@.str144.c = internal global %nyx_string* null
@.str145 = private unnamed_addr constant [11 x i8] c"tcp_listen\00"
@.str145.c = internal global %nyx_string* null
@.str146 = private unnamed_addr constant [1 x i8] c"\00"
@.str146.c = internal global %nyx_string* null
@.str147 = private unnamed_addr constant [39 x i8] c"tests/ai-first/21-bind-failure-loud.nx\00"
@.str147.c = internal global %nyx_string* null
@.str148 = private unnamed_addr constant [151 x i8] c"Check the return of `http_serve`/`tcp_listen`/`udp_bind`: a failed bind (port taken) returns `-1` — `if http_serve(8080, handler) < 0 { return 1 }`.\00"
@.str148.c = internal global %nyx_string* null
@.str149 = private unnamed_addr constant [170 x i8] c"Hay que chequear el retorno de `http_serve`/`tcp_listen`/`udp_bind`: un bind que falla (puerto ocupado) retorna `-1` — `if http_serve(8080, handler) < 0 { return 1 }`.\00"
@.str149.c = internal global %nyx_string* null
@.str150 = private unnamed_addr constant [22 x i8] c"assert-aborts-process\00"
@.str150.c = internal global %nyx_string* null
@.str151 = private unnamed_addr constant [5 x i8] c"rule\00"
@.str151.c = internal global %nyx_string* null
@.str152 = private unnamed_addr constant [5 x i8] c"loud\00"
@.str152.c = internal global %nyx_string* null
@.str153 = private unnamed_addr constant [7 x i8] c"0.31.0\00"
@.str153.c = internal global %nyx_string* null
@.str154 = private unnamed_addr constant [1 x i8] c"\00"
@.str154.c = internal global %nyx_string* null
@.str155 = private unnamed_addr constant [1 x i8] c"\00"
@.str155.c = internal global %nyx_string* null
@.str156 = private unnamed_addr constant [1 x i8] c"\00"
@.str156.c = internal global %nyx_string* null
@.str157 = private unnamed_addr constant [8 x i8] c"exit(1)\00"
@.str157.c = internal global %nyx_string* null
@.str158 = private unnamed_addr constant [1 x i8] c"\00"
@.str158.c = internal global %nyx_string* null
@.str159 = private unnamed_addr constant [40 x i8] c"tests/ai-first/24-bare-return-assert.nx\00"
@.str159.c = internal global %nyx_string* null
@.str160 = private unnamed_addr constant [63 x i8] c"`assert()` aborts the process (`exit(1)`) on the first failure\00"
@.str160.c = internal global %nyx_string* null
@.str161 = private unnamed_addr constant [61 x i8] c"`assert()` aborta el proceso (`exit(1)`) en la primera falla\00"
@.str161.c = internal global %nyx_string* null
@.str162 = private unnamed_addr constant [17 x i8] c"bare-return-void\00"
@.str162.c = internal global %nyx_string* null
@.str163 = private unnamed_addr constant [5 x i8] c"rule\00"
@.str163.c = internal global %nyx_string* null
@.str164 = private unnamed_addr constant [5 x i8] c"loud\00"
@.str164.c = internal global %nyx_string* null
@.str165 = private unnamed_addr constant [7 x i8] c"0.31.0\00"
@.str165.c = internal global %nyx_string* null
@.str166 = private unnamed_addr constant [1 x i8] c"\00"
@.str166.c = internal global %nyx_string* null
@.str167 = private unnamed_addr constant [1 x i8] c"\00"
@.str167.c = internal global %nyx_string* null
@.str168 = private unnamed_addr constant [1 x i8] c"\00"
@.str168.c = internal global %nyx_string* null
@.str169 = private unnamed_addr constant [7 x i8] c"`void`\00"
@.str169.c = internal global %nyx_string* null
@.str170 = private unnamed_addr constant [1 x i8] c"\00"
@.str170.c = internal global %nyx_string* null
@.str171 = private unnamed_addr constant [40 x i8] c"tests/ai-first/24-bare-return-assert.nx\00"
@.str171.c = internal global %nyx_string* null
@.str172 = private unnamed_addr constant [64 x i8] c"A bare `return` (no value) works in a `void`-returning function\00"
@.str172.c = internal global %nyx_string* null
@.str173 = private unnamed_addr constant [66 x i8] c"Un `return` sin valor funciona en una función que retorna `void`\00"
@.str173.c = internal global %nyx_string* null
@.str174 = private unnamed_addr constant [19 x i8] c"fork-gc-child-exec\00"
@.str174.c = internal global %nyx_string* null
@.str175 = private unnamed_addr constant [6 x i8] c"limit\00"
@.str175.c = internal global %nyx_string* null
@.str176 = private unnamed_addr constant [6 x i8] c"crash\00"
@.str176.c = internal global %nyx_string* null
@.str177 = private unnamed_addr constant [7 x i8] c"0.17.0\00"
@.str177.c = internal global %nyx_string* null
@.str178 = private unnamed_addr constant [1 x i8] c"\00"
@.str178.c = internal global %nyx_string* null
@.str179 = private unnamed_addr constant [1 x i8] c"\00"
@.str179.c = internal global %nyx_string* null
@.str180 = private unnamed_addr constant [1 x i8] c"\00"
@.str180.c = internal global %nyx_string* null
@.str181 = private unnamed_addr constant [7 x i8] c"execvp\00"
@.str181.c = internal global %nyx_string* null
@.str182 = private unnamed_addr constant [1 x i8] c"\00"
@.str182.c = internal global %nyx_string* null
@.str183 = private unnamed_addr constant [1 x i8] c"\00"
@.str183.c = internal global %nyx_string* null
@.str184 = private unnamed_addr constant [14 x i8] c"`fork() + GC`\00"
@.str184.c = internal global %nyx_string* null
@.str185 = private unnamed_addr constant [14 x i8] c"`fork() + GC`\00"
@.str185.c = internal global %nyx_string* null
@.str186 = private unnamed_addr constant [30 x i8] c"global-struct-zeroinitializer\00"
@.str186.c = internal global %nyx_string* null
@.str187 = private unnamed_addr constant [6 x i8] c"limit\00"
@.str187.c = internal global %nyx_string* null
@.str188 = private unnamed_addr constant [4 x i8] c"n/a\00"
@.str188.c = internal global %nyx_string* null
@.str189 = private unnamed_addr constant [7 x i8] c"0.17.0\00"
@.str189.c = internal global %nyx_string* null
@.str190 = private unnamed_addr constant [1 x i8] c"\00"
@.str190.c = internal global %nyx_string* null
@.str191 = private unnamed_addr constant [1 x i8] c"\00"
@.str191.c = internal global %nyx_string* null
@.str192 = private unnamed_addr constant [1 x i8] c"\00"
@.str192.c = internal global %nyx_string* null
@.str193 = private unnamed_addr constant [1 x i8] c"\00"
@.str193.c = internal global %nyx_string* null
@.str194 = private unnamed_addr constant [1 x i8] c"\00"
@.str194.c = internal global %nyx_string* null
@.str195 = private unnamed_addr constant [1 x i8] c"\00"
@.str195.c = internal global %nyx_string* null
@.str196 = private unnamed_addr constant [47 x i8] c"Global structs need `zeroinitializer`, not `0`\00"
@.str196.c = internal global %nyx_string* null
@.str197 = private unnamed_addr constant [57 x i8] c"Los structs globales necesitan `zeroinitializer`, no `0`\00"
@.str197.c = internal global %nyx_string* null
@.str198 = private unnamed_addr constant [24 x i8] c"prelude-frozen-snapshot\00"
@.str198.c = internal global %nyx_string* null
@.str199 = private unnamed_addr constant [6 x i8] c"limit\00"
@.str199.c = internal global %nyx_string* null
@.str200 = private unnamed_addr constant [5 x i8] c"loud\00"
@.str200.c = internal global %nyx_string* null
@.str201 = private unnamed_addr constant [7 x i8] c"0.27.0\00"
@.str201.c = internal global %nyx_string* null
@.str202 = private unnamed_addr constant [1 x i8] c"\00"
@.str202.c = internal global %nyx_string* null
@.str203 = private unnamed_addr constant [1 x i8] c"\00"
@.str203.c = internal global %nyx_string* null
@.str204 = private unnamed_addr constant [1 x i8] c"\00"
@.str204.c = internal global %nyx_string* null
@.str205 = private unnamed_addr constant [8 x i8] c"prelude\00"
@.str205.c = internal global %nyx_string* null
@.str206 = private unnamed_addr constant [1 x i8] c"\00"
@.str206.c = internal global %nyx_string* null
@.str207 = private unnamed_addr constant [1 x i8] c"\00"
@.str207.c = internal global %nyx_string* null
@.str208 = private unnamed_addr constant [128 x i8] c"`std/prelude.nx` is a frozen copy of `std/file`/`math`/`io`/`array`/`map` (since v0.12.0), pre-registered as \22already imported\22\00"
@.str208.c = internal global %nyx_string* null
@.str209 = private unnamed_addr constant [132 x i8] c"`std/prelude.nx` es una copia congelada de `std/file`/`math`/`io`/`array`/`map` (desde v0.12.0), pre-registrada como \22ya importada\22\00"
@.str209.c = internal global %nyx_string* null
@.str210 = private unnamed_addr constant [20 x i8] c"hkt-gats-parse-only\00"
@.str210.c = internal global %nyx_string* null
@.str211 = private unnamed_addr constant [6 x i8] c"limit\00"
@.str211.c = internal global %nyx_string* null
@.str212 = private unnamed_addr constant [13 x i8] c"silent-wrong\00"
@.str212.c = internal global %nyx_string* null
@.str213 = private unnamed_addr constant [7 x i8] c"0.31.0\00"
@.str213.c = internal global %nyx_string* null
@.str214 = private unnamed_addr constant [1 x i8] c"\00"
@.str214.c = internal global %nyx_string* null
@.str215 = private unnamed_addr constant [1 x i8] c"\00"
@.str215.c = internal global %nyx_string* null
@.str216 = private unnamed_addr constant [1 x i8] c"\00"
@.str216.c = internal global %nyx_string* null
@.str217 = private unnamed_addr constant [4 x i8] c"HKT\00"
@.str217.c = internal global %nyx_string* null
@.str218 = private unnamed_addr constant [1 x i8] c"\00"
@.str218.c = internal global %nyx_string* null
@.str219 = private unnamed_addr constant [1 x i8] c"\00"
@.str219.c = internal global %nyx_string* null
@.str220 = private unnamed_addr constant [91 x i8] c"HKT (higher-kinded types) and GATs (generic associated types) parse but do not instantiate\00"
@.str220.c = internal global %nyx_string* null
@.str221 = private unnamed_addr constant [97 x i8] c"Los HKT (tipos de orden superior) y GATs (tipos asociados genéricos) parsean pero no instancian\00"
@.str221.c = internal global %nyx_string* null
@.str222 = private unnamed_addr constant [33 x i8] c"implicit-monomorphization-nested\00"
@.str222.c = internal global %nyx_string* null
@.str223 = private unnamed_addr constant [6 x i8] c"fixed\00"
@.str223.c = internal global %nyx_string* null
@.str224 = private unnamed_addr constant [4 x i8] c"n/a\00"
@.str224.c = internal global %nyx_string* null
@.str225 = private unnamed_addr constant [7 x i8] c"0.16.1\00"
@.str225.c = internal global %nyx_string* null
@.str226 = private unnamed_addr constant [7 x i8] c"0.16.1\00"
@.str226.c = internal global %nyx_string* null
@.str227 = private unnamed_addr constant [1 x i8] c"\00"
@.str227.c = internal global %nyx_string* null
@.str228 = private unnamed_addr constant [1 x i8] c"\00"
@.str228.c = internal global %nyx_string* null
@.str229 = private unnamed_addr constant [17 x i8] c"monomorphization\00"
@.str229.c = internal global %nyx_string* null
@.str230 = private unnamed_addr constant [1 x i8] c"\00"
@.str230.c = internal global %nyx_string* null
@.str231 = private unnamed_addr constant [1 x i8] c"\00"
@.str231.c = internal global %nyx_string* null
@.str232 = private unnamed_addr constant [49 x i8] c"Implicit monomorphization works nested (v0.16.1)\00"
@.str232.c = internal global %nyx_string* null
@.str233 = private unnamed_addr constant [58 x i8] c"La monomorfización implícita funciona anidada (v0.16.1)\00"
@.str233.c = internal global %nyx_string* null
@.str234 = private unnamed_addr constant [21 x i8] c"and-or-short-circuit\00"
@.str234.c = internal global %nyx_string* null
@.str235 = private unnamed_addr constant [6 x i8] c"fixed\00"
@.str235.c = internal global %nyx_string* null
@.str236 = private unnamed_addr constant [4 x i8] c"n/a\00"
@.str236.c = internal global %nyx_string* null
@.str237 = private unnamed_addr constant [7 x i8] c"0.17.0\00"
@.str237.c = internal global %nyx_string* null
@.str238 = private unnamed_addr constant [7 x i8] c"0.17.0\00"
@.str238.c = internal global %nyx_string* null
@.str239 = private unnamed_addr constant [1 x i8] c"\00"
@.str239.c = internal global %nyx_string* null
@.str240 = private unnamed_addr constant [1 x i8] c"\00"
@.str240.c = internal global %nyx_string* null
@.str241 = private unnamed_addr constant [14 x i8] c"short-circuit\00"
@.str241.c = internal global %nyx_string* null
@.str242 = private unnamed_addr constant [1 x i8] c"\00"
@.str242.c = internal global %nyx_string* null
@.str243 = private unnamed_addr constant [1 x i8] c"\00"
@.str243.c = internal global %nyx_string* null
@.str244 = private unnamed_addr constant [28 x i8] c"`and`/`or` DO short-circuit\00"
@.str244.c = internal global %nyx_string* null
@.str245 = private unnamed_addr constant [35 x i8] c"`and`/`or` SÍ hacen cortocircuito\00"
@.str245.c = internal global %nyx_string* null
@.str246 = private unnamed_addr constant [19 x i8] c"nested-arrays-work\00"
@.str246.c = internal global %nyx_string* null
@.str247 = private unnamed_addr constant [6 x i8] c"fixed\00"
@.str247.c = internal global %nyx_string* null
@.str248 = private unnamed_addr constant [4 x i8] c"n/a\00"
@.str248.c = internal global %nyx_string* null
@.str249 = private unnamed_addr constant [7 x i8] c"0.17.0\00"
@.str249.c = internal global %nyx_string* null
@.str250 = private unnamed_addr constant [7 x i8] c"0.17.0\00"
@.str250.c = internal global %nyx_string* null
@.str251 = private unnamed_addr constant [1 x i8] c"\00"
@.str251.c = internal global %nyx_string* null
@.str252 = private unnamed_addr constant [1 x i8] c"\00"
@.str252.c = internal global %nyx_string* null
@.str253 = private unnamed_addr constant [14 x i8] c"nested arrays\00"
@.str253.c = internal global %nyx_string* null
@.str254 = private unnamed_addr constant [1 x i8] c"\00"
@.str254.c = internal global %nyx_string* null
@.str255 = private unnamed_addr constant [1 x i8] c"\00"
@.str255.c = internal global %nyx_string* null
@.str256 = private unnamed_addr constant [37 x i8] c"Nested arrays `Array<Array<T>>` work\00"
@.str256.c = internal global %nyx_string* null
@.str257 = private unnamed_addr constant [48 x i8] c"Los arrays anidados `Array<Array<T>>` funcionan\00"
@.str257.c = internal global %nyx_string* null
@.str258 = private unnamed_addr constant [20 x i8] c"map-remove-on-field\00"
@.str258.c = internal global %nyx_string* null
@.str259 = private unnamed_addr constant [6 x i8] c"fixed\00"
@.str259.c = internal global %nyx_string* null
@.str260 = private unnamed_addr constant [4 x i8] c"n/a\00"
@.str260.c = internal global %nyx_string* null
@.str261 = private unnamed_addr constant [7 x i8] c"0.22.0\00"
@.str261.c = internal global %nyx_string* null
@.str262 = private unnamed_addr constant [7 x i8] c"0.22.0\00"
@.str262.c = internal global %nyx_string* null
@.str263 = private unnamed_addr constant [1 x i8] c"\00"
@.str263.c = internal global %nyx_string* null
@.str264 = private unnamed_addr constant [1 x i8] c"\00"
@.str264.c = internal global %nyx_string* null
@.str265 = private unnamed_addr constant [7 x i8] c"remove\00"
@.str265.c = internal global %nyx_string* null
@.str266 = private unnamed_addr constant [50 x i8] c"map.remove(k) on a struct field is a silent no-op\00"
@.str266.c = internal global %nyx_string* null
@.str267 = private unnamed_addr constant [60 x i8] c"tests/compiler/language/test-274-map-remove-field-access.nx\00"
@.str267.c = internal global %nyx_string* null
@.str268 = private unnamed_addr constant [95 x i8] c"`obj.field.remove(k)` on a Map struct field DOES mutate the field (fixed 2026-07-21, test-274)\00"
@.str268.c = internal global %nyx_string* null
@.str269 = private unnamed_addr constant [105 x i8] c"`obj.campo.remove(k)` sobre un campo Map de un struct SÍ muta el campo (arreglado 2026-07-21, test-274)\00"
@.str269.c = internal global %nyx_string* null
@.str270 = private unnamed_addr constant [28 x i8] c"gc-exhaustion-ordered-error\00"
@.str270.c = internal global %nyx_string* null
@.str271 = private unnamed_addr constant [6 x i8] c"fixed\00"
@.str271.c = internal global %nyx_string* null
@.str272 = private unnamed_addr constant [4 x i8] c"n/a\00"
@.str272.c = internal global %nyx_string* null
@.str273 = private unnamed_addr constant [7 x i8] c"0.22.4\00"
@.str273.c = internal global %nyx_string* null
@.str274 = private unnamed_addr constant [7 x i8] c"0.22.4\00"
@.str274.c = internal global %nyx_string* null
@.str275 = private unnamed_addr constant [1 x i8] c"\00"
@.str275.c = internal global %nyx_string* null
@.str276 = private unnamed_addr constant [1 x i8] c"\00"
@.str276.c = internal global %nyx_string* null
@.str277 = private unnamed_addr constant [18 x i8] c"GC heap exhausted\00"
@.str277.c = internal global %nyx_string* null
@.str278 = private unnamed_addr constant [1 x i8] c"\00"
@.str278.c = internal global %nyx_string* null
@.str279 = private unnamed_addr constant [1 x i8] c"\00"
@.str279.c = internal global %nyx_string* null
@.str280 = private unnamed_addr constant [73 x i8] c"GC exhaustion is now an ORDERED error, not a raw SEGV (fixed 2026-07-24)\00"
@.str280.c = internal global %nyx_string* null
@.str281 = private unnamed_addr constant [90 x i8] c"El agotamiento del GC ahora es un error ORDENADO, no un SEGV crudo (arreglado 2026-07-24)\00"
@.str281.c = internal global %nyx_string* null
@.str282 = private unnamed_addr constant [18 x i8] c"chr-zero-nul-byte\00"
@.str282.c = internal global %nyx_string* null
@.str283 = private unnamed_addr constant [6 x i8] c"fixed\00"
@.str283.c = internal global %nyx_string* null
@.str284 = private unnamed_addr constant [4 x i8] c"n/a\00"
@.str284.c = internal global %nyx_string* null
@.str285 = private unnamed_addr constant [8 x i8] c"0.22.12\00"
@.str285.c = internal global %nyx_string* null
@.str286 = private unnamed_addr constant [8 x i8] c"0.22.12\00"
@.str286.c = internal global %nyx_string* null
@.str287 = private unnamed_addr constant [1 x i8] c"\00"
@.str287.c = internal global %nyx_string* null
@.str288 = private unnamed_addr constant [1 x i8] c"\00"
@.str288.c = internal global %nyx_string* null
@.str289 = private unnamed_addr constant [7 x i8] c"chr(0)\00"
@.str289.c = internal global %nyx_string* null
@.str290 = private unnamed_addr constant [1 x i8] c"\00"
@.str290.c = internal global %nyx_string* null
@.str291 = private unnamed_addr constant [34 x i8] c"tests/ai-first/11-chr-nul-safe.nx\00"
@.str291.c = internal global %nyx_string* null
@.str292 = private unnamed_addr constant [63 x i8] c"`chr(0)` builds the real NUL byte (v0.22.x+, fixed 2026-07-25)\00"
@.str292.c = internal global %nyx_string* null
@.str293 = private unnamed_addr constant [69 x i8] c"`chr(0)` construye el byte NUL real (v0.22.x+, arreglado 2026-07-25)\00"
@.str293.c = internal global %nyx_string* null
@.str294 = private unnamed_addr constant [27 x i8] c"array-elem-method-chaining\00"
@.str294.c = internal global %nyx_string* null
@.str295 = private unnamed_addr constant [6 x i8] c"fixed\00"
@.str295.c = internal global %nyx_string* null
@.str296 = private unnamed_addr constant [4 x i8] c"n/a\00"
@.str296.c = internal global %nyx_string* null
@.str297 = private unnamed_addr constant [8 x i8] c"0.22.18\00"
@.str297.c = internal global %nyx_string* null
@.str298 = private unnamed_addr constant [8 x i8] c"0.22.18\00"
@.str298.c = internal global %nyx_string* null
@.str299 = private unnamed_addr constant [1 x i8] c"\00"
@.str299.c = internal global %nyx_string* null
@.str300 = private unnamed_addr constant [1 x i8] c"\00"
@.str300.c = internal global %nyx_string* null
@.str301 = private unnamed_addr constant [8 x i8] c"chained\00"
@.str301.c = internal global %nyx_string* null
@.str302 = private unnamed_addr constant [28 x i8] c"arr[i].method() causes SEGV\00"
@.str302.c = internal global %nyx_string* null
@.str303 = private unnamed_addr constant [1 x i8] c"\00"
@.str303.c = internal global %nyx_string* null
@.str304 = private unnamed_addr constant [81 x i8] c"Methods chained on a user function's `Array` return (FIXED v0.22.x+, 2026-07-26)\00"
@.str304.c = internal global %nyx_string* null
@.str305 = private unnamed_addr constant [120 x i8] c"Los métodos encadenados sobre el retorno `Array` de una función de usuario FUNCIONAN (arreglado v0.22.x+, 2026-07-26)\00"
@.str305.c = internal global %nyx_string* null
@.str306 = private unnamed_addr constant [22 x i8] c"closure-capture-works\00"
@.str306.c = internal global %nyx_string* null
@.str307 = private unnamed_addr constant [6 x i8] c"fixed\00"
@.str307.c = internal global %nyx_string* null
@.str308 = private unnamed_addr constant [4 x i8] c"n/a\00"
@.str308.c = internal global %nyx_string* null
@.str309 = private unnamed_addr constant [8 x i8] c"0.22.19\00"
@.str309.c = internal global %nyx_string* null
@.str310 = private unnamed_addr constant [8 x i8] c"0.22.19\00"
@.str310.c = internal global %nyx_string* null
@.str311 = private unnamed_addr constant [1 x i8] c"\00"
@.str311.c = internal global %nyx_string* null
@.str312 = private unnamed_addr constant [1 x i8] c"\00"
@.str312.c = internal global %nyx_string* null
@.str313 = private unnamed_addr constant [9 x i8] c"closures\00"
@.str313.c = internal global %nyx_string* null
@.str314 = private unnamed_addr constant [54 x i8] c"closure capture of locals is broken|capture is BROKEN\00"
@.str314.c = internal global %nyx_string* null
@.str315 = private unnamed_addr constant [43 x i8] c"tests/ai-first/12-closure-capture-paths.nx\00"
@.str315.c = internal global %nyx_string* null
@.str316 = private unnamed_addr constant [92 x i8] c"Closure capture of locals WORKS — including a lambda and a nested fn in the same function\00"
@.str316.c = internal global %nyx_string* null
@.str317 = private unnamed_addr constant [105 x i8] c"La captura de locals en closures FUNCIONA — incluyendo un lambda y una fn anidada en la misma función\00"
@.str317.c = internal global %nyx_string* null
@.str318 = private unnamed_addr constant [27 x i8] c"tcp-write-loops-until-sent\00"
@.str318.c = internal global %nyx_string* null
@.str319 = private unnamed_addr constant [6 x i8] c"fixed\00"
@.str319.c = internal global %nyx_string* null
@.str320 = private unnamed_addr constant [4 x i8] c"n/a\00"
@.str320.c = internal global %nyx_string* null
@.str321 = private unnamed_addr constant [8 x i8] c"0.22.19\00"
@.str321.c = internal global %nyx_string* null
@.str322 = private unnamed_addr constant [8 x i8] c"0.22.19\00"
@.str322.c = internal global %nyx_string* null
@.str323 = private unnamed_addr constant [1 x i8] c"\00"
@.str323.c = internal global %nyx_string* null
@.str324 = private unnamed_addr constant [1 x i8] c"\00"
@.str324.c = internal global %nyx_string* null
@.str325 = private unnamed_addr constant [10 x i8] c"tcp_write\00"
@.str325.c = internal global %nyx_string* null
@.str326 = private unnamed_addr constant [1 x i8] c"\00"
@.str326.c = internal global %nyx_string* null
@.str327 = private unnamed_addr constant [1 x i8] c"\00"
@.str327.c = internal global %nyx_string* null
@.str328 = private unnamed_addr constant [62 x i8] c"`tcp_write`/`tls_write` already loop until everything is sent\00"
@.str328.c = internal global %nyx_string* null
@.str329 = private unnamed_addr constant [58 x i8] c"`tcp_write`/`tls_write` ya hacen loop hasta enviarlo todo\00"
@.str329.c = internal global %nyx_string* null
@.str330 = private unnamed_addr constant [26 x i8] c"udp-binary-payload-intact\00"
@.str330.c = internal global %nyx_string* null
@.str331 = private unnamed_addr constant [6 x i8] c"fixed\00"
@.str331.c = internal global %nyx_string* null
@.str332 = private unnamed_addr constant [4 x i8] c"n/a\00"
@.str332.c = internal global %nyx_string* null
@.str333 = private unnamed_addr constant [7 x i8] c"0.23.0\00"
@.str333.c = internal global %nyx_string* null
@.str334 = private unnamed_addr constant [7 x i8] c"0.23.0\00"
@.str334.c = internal global %nyx_string* null
@.str335 = private unnamed_addr constant [1 x i8] c"\00"
@.str335.c = internal global %nyx_string* null
@.str336 = private unnamed_addr constant [1 x i8] c"\00"
@.str336.c = internal global %nyx_string* null
@.str337 = private unnamed_addr constant [11 x i8] c"udp_sendto\00"
@.str337.c = internal global %nyx_string* null
@.str338 = private unnamed_addr constant [1 x i8] c"\00"
@.str338.c = internal global %nyx_string* null
@.str339 = private unnamed_addr constant [40 x i8] c"tests/ai-first/20-udp-binary-payload.nx\00"
@.str339.c = internal global %nyx_string* null
@.str340 = private unnamed_addr constant [76 x i8] c"`udp_sendto`/`udp_recvfrom` carry binary payloads intact (fixed 2026-07-30)\00"
@.str340.c = internal global %nyx_string* null
@.str341 = private unnamed_addr constant [90 x i8] c"`udp_sendto`/`udp_recvfrom` transportan payloads binarios intactos (arreglado 2026-07-30)\00"
@.str341.c = internal global %nyx_string* null
@.str342 = private unnamed_addr constant [28 x i8] c"tls-peer-cert-introspection\00"
@.str342.c = internal global %nyx_string* null
@.str343 = private unnamed_addr constant [6 x i8] c"fixed\00"
@.str343.c = internal global %nyx_string* null
@.str344 = private unnamed_addr constant [4 x i8] c"n/a\00"
@.str344.c = internal global %nyx_string* null
@.str345 = private unnamed_addr constant [7 x i8] c"0.23.1\00"
@.str345.c = internal global %nyx_string* null
@.str346 = private unnamed_addr constant [7 x i8] c"0.23.1\00"
@.str346.c = internal global %nyx_string* null
@.str347 = private unnamed_addr constant [1 x i8] c"\00"
@.str347.c = internal global %nyx_string* null
@.str348 = private unnamed_addr constant [1 x i8] c"\00"
@.str348.c = internal global %nyx_string* null
@.str349 = private unnamed_addr constant [14 x i8] c"tls_peer_cert\00"
@.str349.c = internal global %nyx_string* null
@.str350 = private unnamed_addr constant [1 x i8] c"\00"
@.str350.c = internal global %nyx_string* null
@.str351 = private unnamed_addr constant [39 x i8] c"tests/ai-first/19-tls-introspection.nx\00"
@.str351.c = internal global %nyx_string* null
@.str352 = private unnamed_addr constant [78 x i8] c"You CAN inspect the peer's TLS certificate — no C bindings needed (v0.23.1)\00"
@.str352.c = internal global %nyx_string* null
@.str353 = private unnamed_addr constant [85 x i8] c"SÍ se puede inspeccionar el certificado TLS del peer — sin bindings a C (v0.23.1)\00"
@.str353.c = internal global %nyx_string* null
@.str354 = private unnamed_addr constant [29 x i8] c"missing-method-compile-error\00"
@.str354.c = internal global %nyx_string* null
@.str355 = private unnamed_addr constant [6 x i8] c"fixed\00"
@.str355.c = internal global %nyx_string* null
@.str356 = private unnamed_addr constant [4 x i8] c"n/a\00"
@.str356.c = internal global %nyx_string* null
@.str357 = private unnamed_addr constant [7 x i8] c"0.24.0\00"
@.str357.c = internal global %nyx_string* null
@.str358 = private unnamed_addr constant [7 x i8] c"0.24.0\00"
@.str358.c = internal global %nyx_string* null
@.str359 = private unnamed_addr constant [1 x i8] c"\00"
@.str359.c = internal global %nyx_string* null
@.str360 = private unnamed_addr constant [1 x i8] c"\00"
@.str360.c = internal global %nyx_string* null
@.str361 = private unnamed_addr constant [8 x i8] c"NYX1022\00"
@.str361.c = internal global %nyx_string* null
@.str362 = private unnamed_addr constant [1 x i8] c"\00"
@.str362.c = internal global %nyx_string* null
@.str363 = private unnamed_addr constant [1 x i8] c"\00"
@.str363.c = internal global %nyx_string* null
@.str364 = private unnamed_addr constant [98 x i8] c"A method that doesn't exist for the receiver's type is now a compile error, not garbage (v0.24.0)\00"
@.str364.c = internal global %nyx_string* null
@.str365 = private unnamed_addr constant [106 x i8] c"Un método que no existe para el tipo del receiver ahora es un error de compilación, no basura (v0.24.0)\00"
@.str365.c = internal global %nyx_string* null
@.str366 = private unnamed_addr constant [21 x i8] c"repl-declared-subset\00"
@.str366.c = internal global %nyx_string* null
@.str367 = private unnamed_addr constant [6 x i8] c"fixed\00"
@.str367.c = internal global %nyx_string* null
@.str368 = private unnamed_addr constant [4 x i8] c"n/a\00"
@.str368.c = internal global %nyx_string* null
@.str369 = private unnamed_addr constant [7 x i8] c"0.24.3\00"
@.str369.c = internal global %nyx_string* null
@.str370 = private unnamed_addr constant [7 x i8] c"0.24.3\00"
@.str370.c = internal global %nyx_string* null
@.str371 = private unnamed_addr constant [1 x i8] c"\00"
@.str371.c = internal global %nyx_string* null
@.str372 = private unnamed_addr constant [1 x i8] c"\00"
@.str372.c = internal global %nyx_string* null
@.str373 = private unnamed_addr constant [6 x i8] c"NYX30\00"
@.str373.c = internal global %nyx_string* null
@.str374 = private unnamed_addr constant [1 x i8] c"\00"
@.str374.c = internal global %nyx_string* null
@.str375 = private unnamed_addr constant [1 x i8] c"\00"
@.str375.c = internal global %nyx_string* null
@.str376 = private unnamed_addr constant [68 x i8] c"The REPL evaluates a declared SUBSET and says so loudly (v0.24.2-3)\00"
@.str376.c = internal global %nyx_string* null
@.str377 = private unnamed_addr constant [75 x i8] c"El REPL evalúa un SUBCONJUNTO declarado y lo dice en voz alta (v0.24.2-3)\00"
@.str377.c = internal global %nyx_string* null
@.str378 = private unnamed_addr constant [18 x i8] c"bind-failure-loud\00"
@.str378.c = internal global %nyx_string* null
@.str379 = private unnamed_addr constant [6 x i8] c"fixed\00"
@.str379.c = internal global %nyx_string* null
@.str380 = private unnamed_addr constant [4 x i8] c"n/a\00"
@.str380.c = internal global %nyx_string* null
@.str381 = private unnamed_addr constant [7 x i8] c"0.24.4\00"
@.str381.c = internal global %nyx_string* null
@.str382 = private unnamed_addr constant [7 x i8] c"0.24.4\00"
@.str382.c = internal global %nyx_string* null
@.str383 = private unnamed_addr constant [1 x i8] c"\00"
@.str383.c = internal global %nyx_string* null
@.str384 = private unnamed_addr constant [1 x i8] c"\00"
@.str384.c = internal global %nyx_string* null
@.str385 = private unnamed_addr constant [17 x i8] c"cannot bind port\00"
@.str385.c = internal global %nyx_string* null
@.str386 = private unnamed_addr constant [1 x i8] c"\00"
@.str386.c = internal global %nyx_string* null
@.str387 = private unnamed_addr constant [39 x i8] c"tests/ai-first/21-bind-failure-loud.nx\00"
@.str387.c = internal global %nyx_string* null
@.str388 = private unnamed_addr constant [36 x i8] c"A failed bind is LOUD now (v0.24.4)\00"
@.str388.c = internal global %nyx_string* null
@.str389 = private unnamed_addr constant [45 x i8] c"Un bind que falla ahora es RUIDOSO (v0.24.4)\00"
@.str389.c = internal global %nyx_string* null
@.str390 = private unnamed_addr constant [15 x i8] c"file-api-names\00"
@.str390.c = internal global %nyx_string* null
@.str391 = private unnamed_addr constant [6 x i8] c"fixed\00"
@.str391.c = internal global %nyx_string* null
@.str392 = private unnamed_addr constant [4 x i8] c"n/a\00"
@.str392.c = internal global %nyx_string* null
@.str393 = private unnamed_addr constant [7 x i8] c"0.24.4\00"
@.str393.c = internal global %nyx_string* null
@.str394 = private unnamed_addr constant [7 x i8] c"0.24.4\00"
@.str394.c = internal global %nyx_string* null
@.str395 = private unnamed_addr constant [1 x i8] c"\00"
@.str395.c = internal global %nyx_string* null
@.str396 = private unnamed_addr constant [1 x i8] c"\00"
@.str396.c = internal global %nyx_string* null
@.str397 = private unnamed_addr constant [10 x i8] c"file_open\00"
@.str397.c = internal global %nyx_string* null
@.str398 = private unnamed_addr constant [23 x i8] c"open_file(|close_file(\00"
@.str398.c = internal global %nyx_string* null
@.str399 = private unnamed_addr constant [1 x i8] c"\00"
@.str399.c = internal global %nyx_string* null
@.str400 = private unnamed_addr constant [138 x i8] c"The real buffered file API is `file_open()`/`file_write_string()`/`file_close()` — not `open_file()` or `close_file()` (invented names)\00"
@.str400.c = internal global %nyx_string* null
@.str401 = private unnamed_addr constant [149 x i8] c"La API real de archivos con buffer es `file_open()`/`file_write_string()`/`file_close()` — no `open_file()` ni `close_file()` (nombres inventados)\00"
@.str401.c = internal global %nyx_string* null
@.str402 = private unnamed_addr constant [24 x i8] c"array-index-float-write\00"
@.str402.c = internal global %nyx_string* null
@.str403 = private unnamed_addr constant [6 x i8] c"fixed\00"
@.str403.c = internal global %nyx_string* null
@.str404 = private unnamed_addr constant [4 x i8] c"n/a\00"
@.str404.c = internal global %nyx_string* null
@.str405 = private unnamed_addr constant [8 x i8] c"0.24.10\00"
@.str405.c = internal global %nyx_string* null
@.str406 = private unnamed_addr constant [8 x i8] c"0.24.10\00"
@.str406.c = internal global %nyx_string* null
@.str407 = private unnamed_addr constant [1 x i8] c"\00"
@.str407.c = internal global %nyx_string* null
@.str408 = private unnamed_addr constant [1 x i8] c"\00"
@.str408.c = internal global %nyx_string* null
@.str409 = private unnamed_addr constant [1 x i8] c"\00"
@.str409.c = internal global %nyx_string* null
@.str410 = private unnamed_addr constant [36 x i8] c"corrupts the value on the next read\00"
@.str410.c = internal global %nyx_string* null
@.str411 = private unnamed_addr constant [76 x i8] c"tests/ai-first/17-csv-aggregator.nx,tests/ai-first/18-http-client-filter.nx\00"
@.str411.c = internal global %nyx_string* null
@.str412 = private unnamed_addr constant [46 x i8] c"`arr[i] = <float>` on an existing Array WORKS\00"
@.str412.c = internal global %nyx_string* null
@.str413 = private unnamed_addr constant [53 x i8] c"`arr[i] = <float>` sobre un Array existente FUNCIONA\00"
@.str413.c = internal global %nyx_string* null
@.str414 = private unnamed_addr constant [26 x i8] c"sync-global-init-reliable\00"
@.str414.c = internal global %nyx_string* null
@.str415 = private unnamed_addr constant [6 x i8] c"fixed\00"
@.str415.c = internal global %nyx_string* null
@.str416 = private unnamed_addr constant [4 x i8] c"n/a\00"
@.str416.c = internal global %nyx_string* null
@.str417 = private unnamed_addr constant [8 x i8] c"0.24.27\00"
@.str417.c = internal global %nyx_string* null
@.str418 = private unnamed_addr constant [8 x i8] c"0.24.27\00"
@.str418.c = internal global %nyx_string* null
@.str419 = private unnamed_addr constant [1 x i8] c"\00"
@.str419.c = internal global %nyx_string* null
@.str420 = private unnamed_addr constant [1 x i8] c"\00"
@.str420.c = internal global %nyx_string* null
@.str421 = private unnamed_addr constant [10 x i8] c"mutex_new\00"
@.str421.c = internal global %nyx_string* null
@.str422 = private unnamed_addr constant [1 x i8] c"\00"
@.str422.c = internal global %nyx_string* null
@.str423 = private unnamed_addr constant [50 x i8] c"tests/ai-first/23-sync-global-mutex-wg-timeout.nx\00"
@.str423.c = internal global %nyx_string* null
@.str424 = private unnamed_addr constant [132 x i8] c"Stateful handles (`mutex_new()`, `sem_new()`, `wg_new()`) are RELIABLE as global initializers (since v0.24.27; measured 2026-08-21)\00"
@.str424.c = internal global %nyx_string* null
@.str425 = private unnamed_addr constant [145 x i8] c"Los handles con estado (`mutex_new()`, `sem_new()`, `wg_new()`) son CONFIABLES como inicializadores globales (desde v0.24.27; medido 2026-08-21)\00"
@.str425.c = internal global %nyx_string* null
@.str426 = private unnamed_addr constant [3 x i8] c"id\00"
@.str426.c = internal global %nyx_string* null
@.str427 = private unnamed_addr constant [5 x i8] c"kind\00"
@.str427.c = internal global %nyx_string* null
@.str428 = private unnamed_addr constant [9 x i8] c"severity\00"
@.str428.c = internal global %nyx_string* null
@.str429 = private unnamed_addr constant [6 x i8] c"since\00"
@.str429.c = internal global %nyx_string* null
@.str430 = private unnamed_addr constant [9 x i8] c"fixed_in\00"
@.str430.c = internal global %nyx_string* null
@.str431 = private unnamed_addr constant [8 x i8] c"pattern\00"
@.str431.c = internal global %nyx_string* null
@.str432 = private unnamed_addr constant [9 x i8] c"vet_code\00"
@.str432.c = internal global %nyx_string* null
@.str433 = private unnamed_addr constant [7 x i8] c"anchor\00"
@.str433.c = internal global %nyx_string* null
@.str434 = private unnamed_addr constant [5 x i8] c"lies\00"
@.str434.c = internal global %nyx_string* null
@.str435 = private unnamed_addr constant [5 x i8] c"test\00"
@.str435.c = internal global %nyx_string* null
@.str436 = private unnamed_addr constant [9 x i8] c"title_en\00"
@.str436.c = internal global %nyx_string* null
@.str437 = private unnamed_addr constant [9 x i8] c"title_es\00"
@.str437.c = internal global %nyx_string* null
@.str438 = private unnamed_addr constant [1 x i8] c"\00"
@.str438.c = internal global %nyx_string* null
@__nyx_test_failed = external global i64
@__nyx_test_mode = external global i64
; Nyx Compiler Bootstrap v3.0
; Generated from: script.nx

%nyx_string = type { i64, i64, i8* }
%ASTNode = type { %nyx_string*, { i64, i8* }*, i64, i64 }
declare %nyx_string* @nyx_string_from_cstr(i8*)
declare %nyx_string* @nyx_intern_cstr(%nyx_string**, i8*)
declare %nyx_string* @nyx_intern_ptr(%nyx_string**, i8*, i64)
declare %nyx_string* @nyx_string_from_ptr(i8*, i64)
declare i8*           @nyx_string_to_cstr(%nyx_string*)
declare %nyx_string* @nyx_string_concat(%nyx_string*, %nyx_string*)
declare %nyx_string* @nyx_string_from_int(i64)
declare %nyx_string* @nyx_string_from_char(i8)
declare %nyx_string* @nyx_string_from_bool(i64)

declare void @nyx_print_int(i64)
declare void @nyx_print_float(double)
declare void @nyx_print_string(i8*)
declare void @nyx_print_bool(i1)
declare %nyx_string* @nyx_string_from_float(double)
declare %nyx_string* @nyx_read_file(i8*)
declare i1 @nyx_write_file(i8*, i8*)
declare i1 @nyx_file_exists(i8*)
declare i8* @nyx_file_open(i8*, i8*)
declare void @nyx_file_close(i8*)
declare %nyx_string* @nyx_file_read_line(i8*)
declare { i64, i8* }* @nyx_file_read_bytes(i8*, i64)
declare i64 @nyx_file_write_string(i8*, %nyx_string*)
declare i64 @nyx_file_write_bytes(i8*, { i64, i8* }*)
declare i64 @nyx_file_seek(i8*, i64, i64)
declare i64 @nyx_file_tell(i8*)
declare void @nyx_file_flush(i8*)
declare i64 @nyx_mkdir(i8*)
declare { i64, i8* }* @nyx_readdir(i8*)
declare i64 @nyx_remove(i8*)
declare i64 @nyx_rename_file(i8*, i8*)
declare i64 @nyx_crc32_bytes({ i64, i8* }*)
declare %nyx_string* @nyx_string_from_bytes({ i64, i8* }*, i64, i64)
declare void @nyx_setup_shutdown_handler(i8*)
declare i64 @nyx_tcp_listen(i8*, i64)
declare i64 @nyx_tcp_accept(i64)
declare %nyx_string* @nyx_getpeername(i64)
declare i64 @nyx_tcp_connect(i8*, i64)
declare %nyx_string* @nyx_tcp_read(i64, i64)
declare %nyx_string* @nyx_tcp_read_partial(i64, i64)
declare %nyx_string* @nyx_tcp_read_exact(i64, i64)
declare %nyx_string* @nyx_tcp_read_line(i64)
declare i64 @nyx_tcp_write(i64, %nyx_string*)
declare i64 @nyx_tcp_set_timeout(i64, i64)
declare void @nyx_tcp_close(i64)
declare i64 @nyx_tcp_shutdown(i64, i64)
declare { i64, i8* }* @nyx_http_parse_request_fast(i64)
declare { i64, i8* }* @nyx_resp_read_command(i64)
declare i64 @nyx_resp_write_bulk(i64, %nyx_string*)
declare i64 @nyx_udp_bind(i8*, i64)
declare i64 @nyx_udp_sendto(i64, %nyx_string*, i8*, i64)
declare %nyx_string* @nyx_udp_recvfrom(i64, i64)
declare %nyx_string* @nyx_resolve(i8*)
declare %nyx_string* @nyx_resolve_ptr(i8*)
declare { i64, i8* }* @nyx_net_interfaces()
declare i64 @nyx_thread_spawn(i8*)
declare i64 @nyx_thread_join(i64)
declare void @nyx_task_cancel(i64)
declare i64 @nyx_task_race(i64, i64)
declare i8* @nyx_mutex_new()
declare void @nyx_mutex_lock(i8*)
declare void @nyx_mutex_unlock(i8*)
declare void @nyx_mutex_destroy(i8*)
declare i8* @nyx_condvar_new()
declare void @nyx_condvar_wait(i8*, i8*)
declare void @nyx_condvar_signal(i8*)
declare void @nyx_condvar_broadcast(i8*)
declare i64 @nyx_condvar_timedwait(i8*, i8*, i64)
declare i8* @nyx_rwlock_new()
declare void @nyx_rwlock_rdlock(i8*)
declare void @nyx_rwlock_wrlock(i8*)
declare i64 @nyx_rwlock_tryrdlock(i8*)
declare i64 @nyx_rwlock_trywrlock(i8*)
declare void @nyx_rwlock_unlock(i8*)
declare void @nyx_rwlock_destroy(i8*)
declare { i64, i8* }* @nyx_map_scan_page(i8*, i64)
declare i8* @nyx_channel_new(i64)
declare void @nyx_channel_send(i8*, i64)
declare i64 @nyx_channel_recv(i8*)
declare i64 @nyx_channel_try_recv(i8*)
declare void @nyx_channel_destroy(i8*)
declare void @nyx_yield()
declare i64 @nyx_goroutine_spawn_closure(i8*)
declare i64 @nyx_goroutine_join(i64)
declare void @nyx_goroutine_sleep(i64)
declare i64 @nyx_goroutine_spawn_closure_detached(i8*)
declare void @llvm.memset.p0i8.i64(i8*, i8, i64, i1)
declare i8* @llvm.stacksave()
declare void @llvm.stackrestore(i8*)
declare %nyx_string* @nyx_exec(i8*)
declare i64 @nyx_exec_code(i8*)
declare %nyx_string* @nyx_getenv(i8*)
declare %nyx_string* @nyx_getenv_default(i8*, %nyx_string*)
declare void @nyx_setenv(i8*, i8*)
declare void @nyx_exit(i64)
declare { i64, i8* }* @nyx_get_args()
declare void @nyx_set_args(i32, i8**)
declare i64 @nyx_fork()
declare i64 @nyx_execvp(%nyx_string*, { i64, i8* }*)
declare i64 @nyx_waitpid(i64, i64)
declare i64 @nyx_dup2(i64, i64)
declare i64 @nyx_chdir(%nyx_string*)
declare %nyx_string* @nyx_getcwd()
declare { i64, i8* }* @nyx_stat(%nyx_string*)
declare i64 @nyx_isatty(i64)
declare i64 @nyx_close_fd(i64)
declare { i64, i8* }* @nyx_pipe()
declare i64 @nyx_getpid()
declare i64 @nyx_kill(i64, i64)
declare i64 @nyx_open_fd(%nyx_string*, i64)
declare i64 @nyx_fsync(i64)
declare i64 @nyx_fdatasync(i64)
declare void @nyx_sleep(i64)
declare i64 @nyx_time()
declare i64 @nyx_time_ms()
declare i64 @nyx_time_us()
declare double @nyx_math_log(double)
declare double @nyx_math_log2(double)
declare double @nyx_math_log10(double)
declare double @nyx_math_exp(double)
declare double @nyx_math_sin(double)
declare double @nyx_math_cos(double)
declare double @nyx_math_tan(double)
declare double @nyx_math_asin(double)
declare double @nyx_math_acos(double)
declare double @nyx_math_atan(double)
declare double @nyx_math_atan2(double, double)
declare double @nyx_math_sqrt(double)
declare double @nyx_math_ceil(double)
declare double @nyx_math_floor(double)
declare double @nyx_math_round(double)
declare double @nyx_math_fabs(double)
declare double @nyx_math_fmod(double, double)
declare void @nyx_signal_handle(i64, i8*)
declare void @nyx_signal_reset(i64)
declare void @nyx_signal_ignore(i64)
declare %nyx_string* @nyx_regex_match(%nyx_string*, %nyx_string*)
declare i64 @nyx_regex_is_match(%nyx_string*, %nyx_string*)
declare %nyx_string* @nyx_regex_replace(%nyx_string*, %nyx_string*, %nyx_string*)
declare %nyx_string* @nyx_regex_replace_all(%nyx_string*, %nyx_string*, %nyx_string*)
declare %nyx_string* @nyx_datetime_now()
declare %nyx_string* @nyx_datetime_format(%nyx_string*)
declare %nyx_string* @nyx_datetime_format_epoch(i64, %nyx_string*)
declare i64 @nyx_time_epoch()
declare %nyx_string* @nyx_datetime_from_epoch(i64)
declare i64 @nyx_datetime_parse(%nyx_string*, %nyx_string*)
declare i64 @nyx_datetime_year(i64)
declare i64 @nyx_datetime_month(i64)
declare i64 @nyx_datetime_day(i64)
declare i64 @nyx_datetime_hour(i64)
declare i64 @nyx_datetime_minute(i64)
declare i64 @nyx_datetime_second(i64)
declare i64 @nyx_datetime_weekday(i64)
declare %nyx_string* @nyx_sha256(%nyx_string*)
declare %nyx_string* @nyx_md5(%nyx_string*)
declare %nyx_string* @nyx_hmac_sha256(%nyx_string*, %nyx_string*)
declare %nyx_string* @nyx_https_get(%nyx_string*)
declare %nyx_string* @nyx_https_post(%nyx_string*, %nyx_string*, %nyx_string*)
declare i64 @nyx_tls_connect(%nyx_string*, i64)
declare %nyx_string* @nyx_tls_read(i64, i64)
declare %nyx_string* @nyx_tls_read_partial(i64, i64)
declare i64 @nyx_tls_write(i64, %nyx_string*)
declare i64 @nyx_tls_wait_readable(i64, i64)
declare %nyx_string* @nyx_tls_read_nonblock(i64, i64)
declare void @nyx_tls_close(i64)
declare i64 @nyx_tls_server_init(%nyx_string*, %nyx_string*)
declare i64 @nyx_tls_server_add_cert(%nyx_string*, %nyx_string*, %nyx_string*)
declare i64 @nyx_tls_accept(i64)
declare %nyx_string* @nyx_tls_read_line(i64)
declare i64 @nyx_tls_write_conn(i64, %nyx_string*)
declare void @nyx_tls_close_conn(i64)
declare i8* @nyx_map_new(i32)
declare void @nyx_map_insert_str(i8*, i8*, i8*)
declare i8* @nyx_map_get_str(i8*, i8*)
declare void @nyx_map_insert_int(i8*, i8*, i64)
declare i64 @nyx_map_get_int(i8*, i8*)
declare i8* @nyx_map_get_str_or(i8*, i8*, i8*)
declare i64 @nyx_map_get_int_or(i8*, i8*, i64)
declare i1 @nyx_map_contains_str(i8*, i8*)
declare { i64, i8* }* @nyx_map_keys_array(i8*)
declare { i64, i8* }* @nyx_map_values_array(i8*)
declare i64 @nyx_map_length(i8*)
declare i64 @nyx_map_remove_str(i8*, i8*)
declare void @nyx_map_clear(i8*)
declare i64 @nyx_array_length({ i64, i8* }*)
declare void @nyx_array_push({ i64, i8* }*, i64)
declare i64 @nyx_array_pop({ i64, i8* }*)
declare void @nyx_array_unshift({ i64, i8* }*, i64)
declare i64 @nyx_array_shift({ i64, i8* }*)
declare i64 @nyx_array_contains({ i64, i8* }*, i64)
declare void @nyx_array_push_tagged({ i64, i8* }*, i64, i64)
declare void @nyx_array_set_tagged({ i64, i8* }*, i64, i64, i64)
declare i64 @nyx_array_contains_tagged({ i64, i8* }*, i64, i64)
declare i64 @nyx_array_index_of_tagged({ i64, i8* }*, i64, i64)
declare i64 @nyx_array_get_checked({ i64, i8* }*, i64, i64)
declare double @nyx_slot_as_float_checked({ i64, i8* }*, i64)
declare double @nyx_slot_as_float_st({ i64, i8* }*, i64, i64)
declare void @nyx_array_retag_unknown({ i64, i8* }*, i64)
declare i64 @nyx_array_get_tag({ i64, i8* }*, i64)
declare %nyx_string* @nyx_string_from_tagged(i64, i64, i64)
declare void @nyx_array_insert({ i64, i8* }*, i64, i64)
declare i64 @nyx_array_remove({ i64, i8* }*, i64)
declare void @nyx_array_set({ i64, i8* }*, i64, i64)
declare i64 @nyx_array_get({ i64, i8* }*, i64)
declare i64 @nyx_array_get_or_zero({ i64, i8* }*, i64)
declare { i64, i8* }* @nyx_array_new_ptr()
declare void @nyx_array_push_ptr({ i64, i8* }*, i8*)
declare i8* @nyx_array_get_ptr({ i64, i8* }*, i64)
declare void @nyx_array_set_ptr({ i64, i8* }*, i64, i8*)
declare i64 @nyx_string_length(%nyx_string*)
declare i64 @nyx_string_length_utf8(%nyx_string*)
declare i64 @nyx_string_byte_length(%nyx_string*)
declare i8 @nyx_string_char_at(%nyx_string*, i64)
declare %nyx_string* @nyx_string_substring(%nyx_string*, i64, i64)
declare %nyx_string* @nyx_string_char_substring(%nyx_string*, i64, i64)
declare i1 @nyx_string_contains(%nyx_string*, %nyx_string*)
declare i1 @nyx_string_equals(%nyx_string*, %nyx_string*)
declare { i64, i8* }* @nyx_string_split(%nyx_string*, %nyx_string*)
declare %nyx_string* @nyx_read_line()
declare i64 @nyx_stdin_eof()
declare void @nyx_raw_mode_enter()
declare void @nyx_raw_mode_exit()
declare i64 @nyx_read_byte()
declare i64 @nyx_read_byte_timeout(i64)
declare i64 @nyx_term_cols()
declare i64 @nyx_term_rows()
declare void @nyx_print_no_newline(%nyx_string*)
declare void @nyx_term_write(%nyx_string*)
declare void @nyx_term_flush()
declare i64 @nyx_string_to_int(%nyx_string*)
declare double @nyx_string_to_float(%nyx_string*)
declare i64 @nyx_string_to_int_or(%nyx_string*, i64)
declare double @nyx_string_to_float_or(%nyx_string*, double)
declare %nyx_string* @nyx_string_trim(%nyx_string*)
declare %nyx_string* @nyx_string_to_upper(%nyx_string*)
declare %nyx_string* @nyx_string_to_lower(%nyx_string*)
declare %nyx_string* @nyx_string_replace(%nyx_string*, %nyx_string*, %nyx_string*)
declare %nyx_string* @nyx_string_repeat(%nyx_string*, i64)
declare i1 @nyx_string_starts_with(%nyx_string*, %nyx_string*)
declare i1 @nyx_string_ends_with(%nyx_string*, %nyx_string*)
declare i64 @nyx_string_index_of(%nyx_string*, %nyx_string*)
declare i64 @nyx_string_index_of_from(%nyx_string*, %nyx_string*, i64)
declare i8* @nyx_sb_new(i64)
declare void @nyx_sb_append(i8*, %nyx_string*)
declare void @nyx_sb_append_char(i8*, i8)
declare void @nyx_sb_append_cstr(i8*, i8*)
declare void @nyx_sb_append_int(i8*, i64)
declare %nyx_string* @nyx_sb_to_string(i8*)
declare void @nyx_sb_clear(i8*)
declare { i64, i8* }* @nyx_array_slice({ i64, i8* }*, i64, i64)
declare void @nyx_array_reverse({ i64, i8* }*)
declare i64 @nyx_array_index_of({ i64, i8* }*, i64)
declare %nyx_string* @nyx_string_join({ i64, i8* }*, %nyx_string*)
declare i8* @GC_malloc(i64)
declare i8* @malloc(i64)
declare void @free(i8*)
declare i32 @strcmp(i8*, i8*)
declare double @pow(double, double)
declare void @nyx_assert_fail(i8*)
declare void @nyx_assert_eq_int(i64, i64, i8*)
declare void @nyx_assert_eq_str(%nyx_string*, %nyx_string*, i8*)
declare void @exit(i32)
declare void @nyx_panic(%nyx_string*)
declare i8* @nyx_try_push()
declare void @nyx_try_pop()
declare void @nyx_throw(%nyx_string*)
declare %nyx_string* @nyx_get_exception()
declare i32 @setjmp(i8*) #0
declare void @nyx_var_anchor(i8*)
declare %nyx_string* @nyx_format(%nyx_string*, { i64, i8* }*)
declare %nyx_string* @nyx_int_to_hex(i64)
declare %nyx_string* @nyx_int_to_hex_upper(i64)
declare %nyx_string* @nyx_int_to_oct(i64)
declare %nyx_string* @nyx_int_to_bin(i64)
declare %nyx_string* @nyx_float_to_prec(double, %nyx_string*)
declare %nyx_string* @nyx_int_to_width(i64, %nyx_string*)
declare i8* @nyx_iter_from_array({ i64, i8* }*)
declare i8* @nyx_iter_from_range(i64, i64, i64)
declare i8* @nyx_iter_next(i8*)
declare i8* @nyx_option_some_val(i64)
declare i8* @nyx_option_none_val()
declare i8* @nyx_iter_map(i8*, i8*)
declare i8* @nyx_iter_filter(i8*, i8*)
declare i8* @nyx_iter_take(i8*, i64)
declare i8* @nyx_iter_skip(i8*, i64)
declare i8* @nyx_iter_enumerate(i8*)
declare i8* @nyx_iter_chain(i8*, i8*)
declare { i64, i8* }* @nyx_iter_collect(i8*)
declare i64 @nyx_iter_fold(i8*, i64, i8*)
declare i64 @nyx_iter_sum(i8*)
declare i64 @nyx_iter_count(i8*)
declare i64 @nyx_iter_any(i8*, i8*)
declare i64 @nyx_iter_all(i8*, i8*)


define %nyx_string* @gotcha_scan_line(
%nyx_string* %line.param) {
  %line.ptr = alloca %nyx_string*
  store %nyx_string* %line.param, %nyx_string** %line.ptr
  %1 = getelementptr [1 x i8], [1 x i8]* @.str0, i32 0, i32 0
  %2 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str0.c, i8* %1, i64 0)
  %3 = alloca %nyx_string*
  store %nyx_string* %2, %nyx_string** %3
  %4 = load %nyx_string*, %nyx_string** %line.ptr
  %5 = call i64 @nyx_string_byte_length(%nyx_string* %4)
  %6 = alloca i64
  store i64 %5, i64* %6
  %7 = alloca i1
  store i1 0, i1* %7
  %8 = alloca i64
  store i64 0, i64* %8
  %9 = call i8* @llvm.stacksave()
  br label %while_cond0
while_cond0:
  %10 = load i64, i64* %8
  %11 = load i64, i64* %6
  %12 = icmp slt i64 %10, %11
  br i1 %12, label %while_body1, label %while_end2
while_body1:
  call void @llvm.stackrestore(i8* %9)
  %13 = load %nyx_string*, %nyx_string** %line.ptr
  %14 = load i64, i64* %8
  %15 = call i8 @nyx_string_char_at(%nyx_string* %13, i64 %14)
  %16 = zext i8 %15 to i64
  %17 = alloca i64
  store i64 %16, i64* %17
  %18 = load i1, i1* %7
  br i1 %18, label %then3, label %else4
then3:
  %19 = load i64, i64* %17
  %20 = icmp eq i64 %19, 34
  br i1 %20, label %then6, label %else7
then6:
  %21 = load %nyx_string*, %nyx_string** %3
  %22 = getelementptr [2 x i8], [2 x i8]* @.str1, i32 0, i32 0
  %23 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1.c, i8* %22, i64 1)
  %24 = call %nyx_string* @nyx_string_concat(%nyx_string* %21, %nyx_string* %23)
  store %nyx_string* %24, %nyx_string** %3
  store i1 0, i1* %7
  %25 = load i64, i64* %8
  %26 = add i64 %25, 1
  store i64 %26, i64* %8
  br label %merge8
else7:
  %27 = alloca i1
  store i1 false, i1* %27
  %28 = load i64, i64* %17
  %29 = icmp eq i64 %28, 92
  br i1 %29, label %sc_and_rhs9, label %sc_and_end10
sc_and_rhs9:
  %30 = load i64, i64* %8
  %31 = add i64 %30, 1
  %32 = load i64, i64* %6
  %33 = icmp slt i64 %31, %32
  store i1 %33, i1* %27
  br label %sc_and_end10
sc_and_end10:
  %34 = load i1, i1* %27
  br i1 %34, label %then11, label %else12
then11:
  %35 = load %nyx_string*, %nyx_string** %3
  %36 = getelementptr [3 x i8], [3 x i8]* @.str2, i32 0, i32 0
  %37 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str2.c, i8* %36, i64 2)
  %38 = call %nyx_string* @nyx_string_concat(%nyx_string* %35, %nyx_string* %37)
  store %nyx_string* %38, %nyx_string** %3
  %39 = load i64, i64* %8
  %40 = add i64 %39, 2
  store i64 %40, i64* %8
  br label %merge13
else12:
  %41 = load %nyx_string*, %nyx_string** %3
  %42 = getelementptr [2 x i8], [2 x i8]* @.str3, i32 0, i32 0
  %43 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str3.c, i8* %42, i64 1)
  %44 = call %nyx_string* @nyx_string_concat(%nyx_string* %41, %nyx_string* %43)
  store %nyx_string* %44, %nyx_string** %3
  %45 = load i64, i64* %8
  %46 = add i64 %45, 1
  store i64 %46, i64* %8
  br label %merge13
merge13:
  br label %merge8
merge8:
  br label %merge5
else4:
  %47 = load i64, i64* %17
  %48 = icmp eq i64 %47, 34
  br i1 %48, label %then14, label %else15
then14:
  %49 = load %nyx_string*, %nyx_string** %3
  %50 = getelementptr [2 x i8], [2 x i8]* @.str4, i32 0, i32 0
  %51 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str4.c, i8* %50, i64 1)
  %52 = call %nyx_string* @nyx_string_concat(%nyx_string* %49, %nyx_string* %51)
  store %nyx_string* %52, %nyx_string** %3
  store i1 1, i1* %7
  %53 = load i64, i64* %8
  %54 = add i64 %53, 1
  store i64 %54, i64* %8
  br label %merge16
else15:
  %55 = alloca i1
  store i1 false, i1* %55
  %56 = alloca i1
  store i1 false, i1* %56
  %57 = load i64, i64* %17
  %58 = icmp eq i64 %57, 47
  br i1 %58, label %sc_and_rhs17, label %sc_and_end18
sc_and_rhs17:
  %59 = load i64, i64* %8
  %60 = add i64 %59, 1
  %61 = load i64, i64* %6
  %62 = icmp slt i64 %60, %61
  store i1 %62, i1* %56
  br label %sc_and_end18
sc_and_end18:
  %63 = load i1, i1* %56
  br i1 %63, label %sc_and_rhs19, label %sc_and_end20
sc_and_rhs19:
  %64 = load %nyx_string*, %nyx_string** %line.ptr
  %65 = load i64, i64* %8
  %66 = add i64 %65, 1
  %67 = call i8 @nyx_string_char_at(%nyx_string* %64, i64 %66)
  %68 = zext i8 %67 to i64
  %69 = icmp eq i64 %68, 47
  store i1 %69, i1* %55
  br label %sc_and_end20
sc_and_end20:
  %70 = load i1, i1* %55
  br i1 %70, label %then21, label %else22
then21:
  %71 = load %nyx_string*, %nyx_string** %3
  ret %nyx_string* %71
else22:
  %72 = load %nyx_string*, %nyx_string** %3
  %73 = load %nyx_string*, %nyx_string** %line.ptr
  %74 = load i64, i64* %8
  %75 = load i64, i64* %8
  %76 = add i64 %75, 1
  %77 = call %nyx_string* @nyx_string_substring(%nyx_string* %73, i64 %74, i64 %76)
  %78 = call %nyx_string* @nyx_string_concat(%nyx_string* %72, %nyx_string* %77)
  store %nyx_string* %78, %nyx_string** %3
  %79 = load i64, i64* %8
  %80 = add i64 %79, 1
  store i64 %80, i64* %8
  br label %merge23
merge23:
  br label %merge16
merge16:
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %81 = load %nyx_string*, %nyx_string** %3
  ret %nyx_string* %81
}

define %nyx_string* @gotcha_scan_src(
) {
  %82 = getelementptr [1379 x i8], [1379 x i8]* @.str5, i32 0, i32 0
  %83 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str5.c, i8* %82, i64 1378)
  %84 = alloca %nyx_string*
  store %nyx_string* %83, %nyx_string** %84
  %85 = load %nyx_string*, %nyx_string** %84
  ret %nyx_string* %85
}

define { i64, i8* }* @gotchas_table(
) {
  %86 = call { i64, i8* }* @nyx_array_new_ptr()
  %87 = alloca { i64, i8* }*
  store { i64, i8* }* %86, { i64, i8* }** %87
  %88 = load { i64, i8* }*, { i64, i8* }** %87
  %89 = call { i64, i8* }* @nyx_array_new_ptr()
  %90 = getelementptr [21 x i8], [21 x i8]* @.str6, i32 0, i32 0
  %91 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str6.c, i8* %90, i64 20)
  %92 = ptrtoint %nyx_string* %91 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %89, i64 %92, i64 2)
  %93 = getelementptr [5 x i8], [5 x i8]* @.str7, i32 0, i32 0
  %94 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str7.c, i8* %93, i64 4)
  %95 = ptrtoint %nyx_string* %94 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %89, i64 %95, i64 2)
  %96 = getelementptr [13 x i8], [13 x i8]* @.str8, i32 0, i32 0
  %97 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str8.c, i8* %96, i64 12)
  %98 = ptrtoint %nyx_string* %97 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %89, i64 %98, i64 2)
  %99 = getelementptr [8 x i8], [8 x i8]* @.str9, i32 0, i32 0
  %100 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str9.c, i8* %99, i64 7)
  %101 = ptrtoint %nyx_string* %100 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %89, i64 %101, i64 2)
  %102 = getelementptr [1 x i8], [1 x i8]* @.str10, i32 0, i32 0
  %103 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str10.c, i8* %102, i64 0)
  %104 = ptrtoint %nyx_string* %103 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %89, i64 %104, i64 2)
  %105 = getelementptr [1 x i8], [1 x i8]* @.str11, i32 0, i32 0
  %106 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str11.c, i8* %105, i64 0)
  %107 = ptrtoint %nyx_string* %106 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %89, i64 %107, i64 2)
  %108 = getelementptr [1 x i8], [1 x i8]* @.str12, i32 0, i32 0
  %109 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str12.c, i8* %108, i64 0)
  %110 = ptrtoint %nyx_string* %109 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %89, i64 %110, i64 2)
  %111 = getelementptr [11 x i8], [11 x i8]* @.str13, i32 0, i32 0
  %112 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str13.c, i8* %111, i64 10)
  %113 = ptrtoint %nyx_string* %112 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %89, i64 %113, i64 2)
  %114 = getelementptr [1 x i8], [1 x i8]* @.str14, i32 0, i32 0
  %115 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str14.c, i8* %114, i64 0)
  %116 = ptrtoint %nyx_string* %115 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %89, i64 %116, i64 2)
  %117 = getelementptr [38 x i8], [38 x i8]* @.str15, i32 0, i32 0
  %118 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str15.c, i8* %117, i64 37)
  %119 = ptrtoint %nyx_string* %118 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %89, i64 %119, i64 2)
  %120 = getelementptr [161 x i8], [161 x i8]* @.str16, i32 0, i32 0
  %121 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str16.c, i8* %120, i64 160)
  %122 = ptrtoint %nyx_string* %121 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %89, i64 %122, i64 2)
  %123 = getelementptr [179 x i8], [179 x i8]* @.str17, i32 0, i32 0
  %124 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str17.c, i8* %123, i64 178)
  %125 = ptrtoint %nyx_string* %124 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %89, i64 %125, i64 2)
  %126 = ptrtoint { i64, i8* }* %89 to i64
  call void @nyx_array_push({ i64, i8* }* %88, i64 %126)
  %127 = load { i64, i8* }*, { i64, i8* }** %87
  %128 = call { i64, i8* }* @nyx_array_new_ptr()
  %129 = getelementptr [30 x i8], [30 x i8]* @.str18, i32 0, i32 0
  %130 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str18.c, i8* %129, i64 29)
  %131 = ptrtoint %nyx_string* %130 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %128, i64 %131, i64 2)
  %132 = getelementptr [5 x i8], [5 x i8]* @.str19, i32 0, i32 0
  %133 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str19.c, i8* %132, i64 4)
  %134 = ptrtoint %nyx_string* %133 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %128, i64 %134, i64 2)
  %135 = getelementptr [5 x i8], [5 x i8]* @.str20, i32 0, i32 0
  %136 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str20.c, i8* %135, i64 4)
  %137 = ptrtoint %nyx_string* %136 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %128, i64 %137, i64 2)
  %138 = getelementptr [8 x i8], [8 x i8]* @.str21, i32 0, i32 0
  %139 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str21.c, i8* %138, i64 7)
  %140 = ptrtoint %nyx_string* %139 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %128, i64 %140, i64 2)
  %141 = getelementptr [1 x i8], [1 x i8]* @.str22, i32 0, i32 0
  %142 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str22.c, i8* %141, i64 0)
  %143 = ptrtoint %nyx_string* %142 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %128, i64 %143, i64 2)
  %144 = getelementptr [1 x i8], [1 x i8]* @.str23, i32 0, i32 0
  %145 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str23.c, i8* %144, i64 0)
  %146 = ptrtoint %nyx_string* %145 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %128, i64 %146, i64 2)
  %147 = getelementptr [1 x i8], [1 x i8]* @.str24, i32 0, i32 0
  %148 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str24.c, i8* %147, i64 0)
  %149 = ptrtoint %nyx_string* %148 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %128, i64 %149, i64 2)
  %150 = getelementptr [14 x i8], [14 x i8]* @.str25, i32 0, i32 0
  %151 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str25.c, i8* %150, i64 13)
  %152 = ptrtoint %nyx_string* %151 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %128, i64 %152, i64 2)
  %153 = getelementptr [1 x i8], [1 x i8]* @.str26, i32 0, i32 0
  %154 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str26.c, i8* %153, i64 0)
  %155 = ptrtoint %nyx_string* %154 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %128, i64 %155, i64 2)
  %156 = getelementptr [36 x i8], [36 x i8]* @.str27, i32 0, i32 0
  %157 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str27.c, i8* %156, i64 35)
  %158 = ptrtoint %nyx_string* %157 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %128, i64 %158, i64 2)
  %159 = getelementptr [181 x i8], [181 x i8]* @.str28, i32 0, i32 0
  %160 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str28.c, i8* %159, i64 180)
  %161 = ptrtoint %nyx_string* %160 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %128, i64 %161, i64 2)
  %162 = getelementptr [179 x i8], [179 x i8]* @.str29, i32 0, i32 0
  %163 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str29.c, i8* %162, i64 178)
  %164 = ptrtoint %nyx_string* %163 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %128, i64 %164, i64 2)
  %165 = ptrtoint { i64, i8* }* %128 to i64
  call void @nyx_array_push({ i64, i8* }* %127, i64 %165)
  %166 = load { i64, i8* }*, { i64, i8* }** %87
  %167 = call { i64, i8* }* @nyx_array_new_ptr()
  %168 = getelementptr [23 x i8], [23 x i8]* @.str30, i32 0, i32 0
  %169 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str30.c, i8* %168, i64 22)
  %170 = ptrtoint %nyx_string* %169 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %167, i64 %170, i64 2)
  %171 = getelementptr [5 x i8], [5 x i8]* @.str31, i32 0, i32 0
  %172 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str31.c, i8* %171, i64 4)
  %173 = ptrtoint %nyx_string* %172 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %167, i64 %173, i64 2)
  %174 = getelementptr [13 x i8], [13 x i8]* @.str32, i32 0, i32 0
  %175 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str32.c, i8* %174, i64 12)
  %176 = ptrtoint %nyx_string* %175 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %167, i64 %176, i64 2)
  %177 = getelementptr [8 x i8], [8 x i8]* @.str33, i32 0, i32 0
  %178 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str33.c, i8* %177, i64 7)
  %179 = ptrtoint %nyx_string* %178 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %167, i64 %179, i64 2)
  %180 = getelementptr [1 x i8], [1 x i8]* @.str34, i32 0, i32 0
  %181 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str34.c, i8* %180, i64 0)
  %182 = ptrtoint %nyx_string* %181 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %167, i64 %182, i64 2)
  %183 = getelementptr [1 x i8], [1 x i8]* @.str35, i32 0, i32 0
  %184 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str35.c, i8* %183, i64 0)
  %185 = ptrtoint %nyx_string* %184 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %167, i64 %185, i64 2)
  %186 = getelementptr [1 x i8], [1 x i8]* @.str36, i32 0, i32 0
  %187 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str36.c, i8* %186, i64 0)
  %188 = ptrtoint %nyx_string* %187 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %167, i64 %188, i64 2)
  %189 = getelementptr [9 x i8], [9 x i8]* @.str37, i32 0, i32 0
  %190 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str37.c, i8* %189, i64 8)
  %191 = ptrtoint %nyx_string* %190 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %167, i64 %191, i64 2)
  %192 = getelementptr [1 x i8], [1 x i8]* @.str38, i32 0, i32 0
  %193 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str38.c, i8* %192, i64 0)
  %194 = ptrtoint %nyx_string* %193 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %167, i64 %194, i64 2)
  %195 = getelementptr [37 x i8], [37 x i8]* @.str39, i32 0, i32 0
  %196 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str39.c, i8* %195, i64 36)
  %197 = ptrtoint %nyx_string* %196 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %167, i64 %197, i64 2)
  %198 = getelementptr [210 x i8], [210 x i8]* @.str40, i32 0, i32 0
  %199 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str40.c, i8* %198, i64 209)
  %200 = ptrtoint %nyx_string* %199 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %167, i64 %200, i64 2)
  %201 = getelementptr [218 x i8], [218 x i8]* @.str41, i32 0, i32 0
  %202 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str41.c, i8* %201, i64 217)
  %203 = ptrtoint %nyx_string* %202 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %167, i64 %203, i64 2)
  %204 = ptrtoint { i64, i8* }* %167 to i64
  call void @nyx_array_push({ i64, i8* }* %166, i64 %204)
  %205 = load { i64, i8* }*, { i64, i8* }** %87
  %206 = call { i64, i8* }* @nyx_array_new_ptr()
  %207 = getelementptr [25 x i8], [25 x i8]* @.str42, i32 0, i32 0
  %208 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str42.c, i8* %207, i64 24)
  %209 = ptrtoint %nyx_string* %208 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %206, i64 %209, i64 2)
  %210 = getelementptr [5 x i8], [5 x i8]* @.str43, i32 0, i32 0
  %211 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str43.c, i8* %210, i64 4)
  %212 = ptrtoint %nyx_string* %211 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %206, i64 %212, i64 2)
  %213 = getelementptr [13 x i8], [13 x i8]* @.str44, i32 0, i32 0
  %214 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str44.c, i8* %213, i64 12)
  %215 = ptrtoint %nyx_string* %214 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %206, i64 %215, i64 2)
  %216 = getelementptr [7 x i8], [7 x i8]* @.str45, i32 0, i32 0
  %217 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str45.c, i8* %216, i64 6)
  %218 = ptrtoint %nyx_string* %217 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %206, i64 %218, i64 2)
  %219 = getelementptr [1 x i8], [1 x i8]* @.str46, i32 0, i32 0
  %220 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str46.c, i8* %219, i64 0)
  %221 = ptrtoint %nyx_string* %220 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %206, i64 %221, i64 2)
  %222 = getelementptr [1 x i8], [1 x i8]* @.str47, i32 0, i32 0
  %223 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str47.c, i8* %222, i64 0)
  %224 = ptrtoint %nyx_string* %223 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %206, i64 %224, i64 2)
  %225 = getelementptr [1 x i8], [1 x i8]* @.str48, i32 0, i32 0
  %226 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str48.c, i8* %225, i64 0)
  %227 = ptrtoint %nyx_string* %226 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %206, i64 %227, i64 2)
  %228 = getelementptr [12 x i8], [12 x i8]* @.str49, i32 0, i32 0
  %229 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str49.c, i8* %228, i64 11)
  %230 = ptrtoint %nyx_string* %229 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %206, i64 %230, i64 2)
  %231 = getelementptr [1 x i8], [1 x i8]* @.str50, i32 0, i32 0
  %232 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str50.c, i8* %231, i64 0)
  %233 = ptrtoint %nyx_string* %232 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %206, i64 %233, i64 2)
  %234 = getelementptr [40 x i8], [40 x i8]* @.str51, i32 0, i32 0
  %235 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str51.c, i8* %234, i64 39)
  %236 = ptrtoint %nyx_string* %235 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %206, i64 %236, i64 2)
  %237 = getelementptr [188 x i8], [188 x i8]* @.str52, i32 0, i32 0
  %238 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str52.c, i8* %237, i64 187)
  %239 = ptrtoint %nyx_string* %238 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %206, i64 %239, i64 2)
  %240 = getelementptr [199 x i8], [199 x i8]* @.str53, i32 0, i32 0
  %241 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str53.c, i8* %240, i64 198)
  %242 = ptrtoint %nyx_string* %241 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %206, i64 %242, i64 2)
  %243 = ptrtoint { i64, i8* }* %206 to i64
  call void @nyx_array_push({ i64, i8* }* %205, i64 %243)
  %244 = load { i64, i8* }*, { i64, i8* }** %87
  %245 = call { i64, i8* }* @nyx_array_new_ptr()
  %246 = getelementptr [18 x i8], [18 x i8]* @.str54, i32 0, i32 0
  %247 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str54.c, i8* %246, i64 17)
  %248 = ptrtoint %nyx_string* %247 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %245, i64 %248, i64 2)
  %249 = getelementptr [5 x i8], [5 x i8]* @.str55, i32 0, i32 0
  %250 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str55.c, i8* %249, i64 4)
  %251 = ptrtoint %nyx_string* %250 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %245, i64 %251, i64 2)
  %252 = getelementptr [4 x i8], [4 x i8]* @.str56, i32 0, i32 0
  %253 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str56.c, i8* %252, i64 3)
  %254 = ptrtoint %nyx_string* %253 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %245, i64 %254, i64 2)
  %255 = getelementptr [7 x i8], [7 x i8]* @.str57, i32 0, i32 0
  %256 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str57.c, i8* %255, i64 6)
  %257 = ptrtoint %nyx_string* %256 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %245, i64 %257, i64 2)
  %258 = getelementptr [1 x i8], [1 x i8]* @.str58, i32 0, i32 0
  %259 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str58.c, i8* %258, i64 0)
  %260 = ptrtoint %nyx_string* %259 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %245, i64 %260, i64 2)
  %261 = getelementptr [1 x i8], [1 x i8]* @.str59, i32 0, i32 0
  %262 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str59.c, i8* %261, i64 0)
  %263 = ptrtoint %nyx_string* %262 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %245, i64 %263, i64 2)
  %264 = getelementptr [1 x i8], [1 x i8]* @.str60, i32 0, i32 0
  %265 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str60.c, i8* %264, i64 0)
  %266 = ptrtoint %nyx_string* %265 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %245, i64 %266, i64 2)
  %267 = getelementptr [9 x i8], [9 x i8]* @.str61, i32 0, i32 0
  %268 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str61.c, i8* %267, i64 8)
  %269 = ptrtoint %nyx_string* %268 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %245, i64 %269, i64 2)
  %270 = getelementptr [1 x i8], [1 x i8]* @.str62, i32 0, i32 0
  %271 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str62.c, i8* %270, i64 0)
  %272 = ptrtoint %nyx_string* %271 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %245, i64 %272, i64 2)
  %273 = getelementptr [39 x i8], [39 x i8]* @.str63, i32 0, i32 0
  %274 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str63.c, i8* %273, i64 38)
  %275 = ptrtoint %nyx_string* %274 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %245, i64 %275, i64 2)
  %276 = getelementptr [36 x i8], [36 x i8]* @.str64, i32 0, i32 0
  %277 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str64.c, i8* %276, i64 35)
  %278 = ptrtoint %nyx_string* %277 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %245, i64 %278, i64 2)
  %279 = getelementptr [47 x i8], [47 x i8]* @.str65, i32 0, i32 0
  %280 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str65.c, i8* %279, i64 46)
  %281 = ptrtoint %nyx_string* %280 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %245, i64 %281, i64 2)
  %282 = ptrtoint { i64, i8* }* %245 to i64
  call void @nyx_array_push({ i64, i8* }* %244, i64 %282)
  %283 = load { i64, i8* }*, { i64, i8* }** %87
  %284 = call { i64, i8* }* @nyx_array_new_ptr()
  %285 = getelementptr [18 x i8], [18 x i8]* @.str66, i32 0, i32 0
  %286 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str66.c, i8* %285, i64 17)
  %287 = ptrtoint %nyx_string* %286 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %284, i64 %287, i64 2)
  %288 = getelementptr [5 x i8], [5 x i8]* @.str67, i32 0, i32 0
  %289 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str67.c, i8* %288, i64 4)
  %290 = ptrtoint %nyx_string* %289 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %284, i64 %290, i64 2)
  %291 = getelementptr [5 x i8], [5 x i8]* @.str68, i32 0, i32 0
  %292 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str68.c, i8* %291, i64 4)
  %293 = ptrtoint %nyx_string* %292 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %284, i64 %293, i64 2)
  %294 = getelementptr [7 x i8], [7 x i8]* @.str69, i32 0, i32 0
  %295 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str69.c, i8* %294, i64 6)
  %296 = ptrtoint %nyx_string* %295 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %284, i64 %296, i64 2)
  %297 = getelementptr [1 x i8], [1 x i8]* @.str70, i32 0, i32 0
  %298 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str70.c, i8* %297, i64 0)
  %299 = ptrtoint %nyx_string* %298 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %284, i64 %299, i64 2)
  %300 = getelementptr [1 x i8], [1 x i8]* @.str71, i32 0, i32 0
  %301 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str71.c, i8* %300, i64 0)
  %302 = ptrtoint %nyx_string* %301 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %284, i64 %302, i64 2)
  %303 = getelementptr [1 x i8], [1 x i8]* @.str72, i32 0, i32 0
  %304 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str72.c, i8* %303, i64 0)
  %305 = ptrtoint %nyx_string* %304 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %284, i64 %305, i64 2)
  %306 = getelementptr [8 x i8], [8 x i8]* @.str73, i32 0, i32 0
  %307 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str73.c, i8* %306, i64 7)
  %308 = ptrtoint %nyx_string* %307 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %284, i64 %308, i64 2)
  %309 = getelementptr [1 x i8], [1 x i8]* @.str74, i32 0, i32 0
  %310 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str74.c, i8* %309, i64 0)
  %311 = ptrtoint %nyx_string* %310 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %284, i64 %311, i64 2)
  %312 = getelementptr [49 x i8], [49 x i8]* @.str75, i32 0, i32 0
  %313 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str75.c, i8* %312, i64 48)
  %314 = ptrtoint %nyx_string* %313 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %284, i64 %314, i64 2)
  %315 = getelementptr [59 x i8], [59 x i8]* @.str76, i32 0, i32 0
  %316 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str76.c, i8* %315, i64 58)
  %317 = ptrtoint %nyx_string* %316 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %284, i64 %317, i64 2)
  %318 = getelementptr [73 x i8], [73 x i8]* @.str77, i32 0, i32 0
  %319 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str77.c, i8* %318, i64 72)
  %320 = ptrtoint %nyx_string* %319 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %284, i64 %320, i64 2)
  %321 = ptrtoint { i64, i8* }* %284 to i64
  call void @nyx_array_push({ i64, i8* }* %283, i64 %321)
  %322 = load { i64, i8* }*, { i64, i8* }** %87
  %323 = call { i64, i8* }* @nyx_array_new_ptr()
  %324 = getelementptr [15 x i8], [15 x i8]* @.str78, i32 0, i32 0
  %325 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str78.c, i8* %324, i64 14)
  %326 = ptrtoint %nyx_string* %325 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %323, i64 %326, i64 2)
  %327 = getelementptr [5 x i8], [5 x i8]* @.str79, i32 0, i32 0
  %328 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str79.c, i8* %327, i64 4)
  %329 = ptrtoint %nyx_string* %328 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %323, i64 %329, i64 2)
  %330 = getelementptr [5 x i8], [5 x i8]* @.str80, i32 0, i32 0
  %331 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str80.c, i8* %330, i64 4)
  %332 = ptrtoint %nyx_string* %331 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %323, i64 %332, i64 2)
  %333 = getelementptr [8 x i8], [8 x i8]* @.str81, i32 0, i32 0
  %334 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str81.c, i8* %333, i64 7)
  %335 = ptrtoint %nyx_string* %334 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %323, i64 %335, i64 2)
  %336 = getelementptr [1 x i8], [1 x i8]* @.str82, i32 0, i32 0
  %337 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str82.c, i8* %336, i64 0)
  %338 = ptrtoint %nyx_string* %337 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %323, i64 %338, i64 2)
  %339 = getelementptr [25 x i8], [25 x i8]* @.str83, i32 0, i32 0
  %340 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str83.c, i8* %339, i64 24)
  %341 = ptrtoint %nyx_string* %340 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %323, i64 %341, i64 2)
  %342 = getelementptr [5 x i8], [5 x i8]* @.str84, i32 0, i32 0
  %343 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str84.c, i8* %342, i64 4)
  %344 = ptrtoint %nyx_string* %343 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %323, i64 %344, i64 2)
  %345 = getelementptr [12 x i8], [12 x i8]* @.str85, i32 0, i32 0
  %346 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str85.c, i8* %345, i64 11)
  %347 = ptrtoint %nyx_string* %346 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %323, i64 %347, i64 2)
  %348 = getelementptr [1 x i8], [1 x i8]* @.str86, i32 0, i32 0
  %349 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str86.c, i8* %348, i64 0)
  %350 = ptrtoint %nyx_string* %349 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %323, i64 %350, i64 2)
  %351 = getelementptr [36 x i8], [36 x i8]* @.str87, i32 0, i32 0
  %352 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str87.c, i8* %351, i64 35)
  %353 = ptrtoint %nyx_string* %352 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %323, i64 %353, i64 2)
  %354 = getelementptr [85 x i8], [85 x i8]* @.str88, i32 0, i32 0
  %355 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str88.c, i8* %354, i64 84)
  %356 = ptrtoint %nyx_string* %355 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %323, i64 %356, i64 2)
  %357 = getelementptr [90 x i8], [90 x i8]* @.str89, i32 0, i32 0
  %358 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str89.c, i8* %357, i64 89)
  %359 = ptrtoint %nyx_string* %358 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %323, i64 %359, i64 2)
  %360 = ptrtoint { i64, i8* }* %323 to i64
  call void @nyx_array_push({ i64, i8* }* %322, i64 %360)
  %361 = load { i64, i8* }*, { i64, i8* }** %87
  %362 = call { i64, i8* }* @nyx_array_new_ptr()
  %363 = getelementptr [19 x i8], [19 x i8]* @.str90, i32 0, i32 0
  %364 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str90.c, i8* %363, i64 18)
  %365 = ptrtoint %nyx_string* %364 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %362, i64 %365, i64 2)
  %366 = getelementptr [5 x i8], [5 x i8]* @.str91, i32 0, i32 0
  %367 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str91.c, i8* %366, i64 4)
  %368 = ptrtoint %nyx_string* %367 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %362, i64 %368, i64 2)
  %369 = getelementptr [5 x i8], [5 x i8]* @.str92, i32 0, i32 0
  %370 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str92.c, i8* %369, i64 4)
  %371 = ptrtoint %nyx_string* %370 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %362, i64 %371, i64 2)
  %372 = getelementptr [8 x i8], [8 x i8]* @.str93, i32 0, i32 0
  %373 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str93.c, i8* %372, i64 7)
  %374 = ptrtoint %nyx_string* %373 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %362, i64 %374, i64 2)
  %375 = getelementptr [1 x i8], [1 x i8]* @.str94, i32 0, i32 0
  %376 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str94.c, i8* %375, i64 0)
  %377 = ptrtoint %nyx_string* %376 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %362, i64 %377, i64 2)
  %378 = getelementptr [23 x i8], [23 x i8]* @.str95, i32 0, i32 0
  %379 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str95.c, i8* %378, i64 22)
  %380 = ptrtoint %nyx_string* %379 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %362, i64 %380, i64 2)
  %381 = getelementptr [5 x i8], [5 x i8]* @.str96, i32 0, i32 0
  %382 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str96.c, i8* %381, i64 4)
  %383 = ptrtoint %nyx_string* %382 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %362, i64 %383, i64 2)
  %384 = getelementptr [7 x i8], [7 x i8]* @.str97, i32 0, i32 0
  %385 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str97.c, i8* %384, i64 6)
  %386 = ptrtoint %nyx_string* %385 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %362, i64 %386, i64 2)
  %387 = getelementptr [1 x i8], [1 x i8]* @.str98, i32 0, i32 0
  %388 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str98.c, i8* %387, i64 0)
  %389 = ptrtoint %nyx_string* %388 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %362, i64 %389, i64 2)
  %390 = getelementptr [36 x i8], [36 x i8]* @.str99, i32 0, i32 0
  %391 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str99.c, i8* %390, i64 35)
  %392 = ptrtoint %nyx_string* %391 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %362, i64 %392, i64 2)
  %393 = getelementptr [93 x i8], [93 x i8]* @.str100, i32 0, i32 0
  %394 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str100.c, i8* %393, i64 92)
  %395 = ptrtoint %nyx_string* %394 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %362, i64 %395, i64 2)
  %396 = getelementptr [104 x i8], [104 x i8]* @.str101, i32 0, i32 0
  %397 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str101.c, i8* %396, i64 103)
  %398 = ptrtoint %nyx_string* %397 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %362, i64 %398, i64 2)
  %399 = ptrtoint { i64, i8* }* %362 to i64
  call void @nyx_array_push({ i64, i8* }* %361, i64 %399)
  %400 = load { i64, i8* }*, { i64, i8* }** %87
  %401 = call { i64, i8* }* @nyx_array_new_ptr()
  %402 = getelementptr [20 x i8], [20 x i8]* @.str102, i32 0, i32 0
  %403 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str102.c, i8* %402, i64 19)
  %404 = ptrtoint %nyx_string* %403 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %401, i64 %404, i64 2)
  %405 = getelementptr [5 x i8], [5 x i8]* @.str103, i32 0, i32 0
  %406 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str103.c, i8* %405, i64 4)
  %407 = ptrtoint %nyx_string* %406 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %401, i64 %407, i64 2)
  %408 = getelementptr [5 x i8], [5 x i8]* @.str104, i32 0, i32 0
  %409 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str104.c, i8* %408, i64 4)
  %410 = ptrtoint %nyx_string* %409 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %401, i64 %410, i64 2)
  %411 = getelementptr [8 x i8], [8 x i8]* @.str105, i32 0, i32 0
  %412 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str105.c, i8* %411, i64 7)
  %413 = ptrtoint %nyx_string* %412 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %401, i64 %413, i64 2)
  %414 = getelementptr [1 x i8], [1 x i8]* @.str106, i32 0, i32 0
  %415 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str106.c, i8* %414, i64 0)
  %416 = ptrtoint %nyx_string* %415 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %401, i64 %416, i64 2)
  %417 = getelementptr [26 x i8], [26 x i8]* @.str107, i32 0, i32 0
  %418 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str107.c, i8* %417, i64 25)
  %419 = ptrtoint %nyx_string* %418 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %401, i64 %419, i64 2)
  %420 = getelementptr [5 x i8], [5 x i8]* @.str108, i32 0, i32 0
  %421 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str108.c, i8* %420, i64 4)
  %422 = ptrtoint %nyx_string* %421 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %401, i64 %422, i64 2)
  %423 = getelementptr [13 x i8], [13 x i8]* @.str109, i32 0, i32 0
  %424 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str109.c, i8* %423, i64 12)
  %425 = ptrtoint %nyx_string* %424 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %401, i64 %425, i64 2)
  %426 = getelementptr [1 x i8], [1 x i8]* @.str110, i32 0, i32 0
  %427 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str110.c, i8* %426, i64 0)
  %428 = ptrtoint %nyx_string* %427 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %401, i64 %428, i64 2)
  %429 = getelementptr [36 x i8], [36 x i8]* @.str111, i32 0, i32 0
  %430 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str111.c, i8* %429, i64 35)
  %431 = ptrtoint %nyx_string* %430 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %401, i64 %431, i64 2)
  %432 = getelementptr [78 x i8], [78 x i8]* @.str112, i32 0, i32 0
  %433 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str112.c, i8* %432, i64 77)
  %434 = ptrtoint %nyx_string* %433 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %401, i64 %434, i64 2)
  %435 = getelementptr [86 x i8], [86 x i8]* @.str113, i32 0, i32 0
  %436 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str113.c, i8* %435, i64 85)
  %437 = ptrtoint %nyx_string* %436 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %401, i64 %437, i64 2)
  %438 = ptrtoint { i64, i8* }* %401 to i64
  call void @nyx_array_push({ i64, i8* }* %400, i64 %438)
  %439 = load { i64, i8* }*, { i64, i8* }** %87
  %440 = call { i64, i8* }* @nyx_array_new_ptr()
  %441 = getelementptr [24 x i8], [24 x i8]* @.str114, i32 0, i32 0
  %442 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str114.c, i8* %441, i64 23)
  %443 = ptrtoint %nyx_string* %442 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %440, i64 %443, i64 2)
  %444 = getelementptr [5 x i8], [5 x i8]* @.str115, i32 0, i32 0
  %445 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str115.c, i8* %444, i64 4)
  %446 = ptrtoint %nyx_string* %445 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %440, i64 %446, i64 2)
  %447 = getelementptr [5 x i8], [5 x i8]* @.str116, i32 0, i32 0
  %448 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str116.c, i8* %447, i64 4)
  %449 = ptrtoint %nyx_string* %448 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %440, i64 %449, i64 2)
  %450 = getelementptr [8 x i8], [8 x i8]* @.str117, i32 0, i32 0
  %451 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str117.c, i8* %450, i64 7)
  %452 = ptrtoint %nyx_string* %451 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %440, i64 %452, i64 2)
  %453 = getelementptr [1 x i8], [1 x i8]* @.str118, i32 0, i32 0
  %454 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str118.c, i8* %453, i64 0)
  %455 = ptrtoint %nyx_string* %454 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %440, i64 %455, i64 2)
  %456 = getelementptr [27 x i8], [27 x i8]* @.str119, i32 0, i32 0
  %457 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str119.c, i8* %456, i64 26)
  %458 = ptrtoint %nyx_string* %457 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %440, i64 %458, i64 2)
  %459 = getelementptr [5 x i8], [5 x i8]* @.str120, i32 0, i32 0
  %460 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str120.c, i8* %459, i64 4)
  %461 = ptrtoint %nyx_string* %460 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %440, i64 %461, i64 2)
  %462 = getelementptr [8 x i8], [8 x i8]* @.str121, i32 0, i32 0
  %463 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str121.c, i8* %462, i64 7)
  %464 = ptrtoint %nyx_string* %463 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %440, i64 %464, i64 2)
  %465 = getelementptr [32 x i8], [32 x i8]* @.str122, i32 0, i32 0
  %466 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str122.c, i8* %465, i64 31)
  %467 = ptrtoint %nyx_string* %466 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %440, i64 %467, i64 2)
  %468 = getelementptr [38 x i8], [38 x i8]* @.str123, i32 0, i32 0
  %469 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str123.c, i8* %468, i64 37)
  %470 = ptrtoint %nyx_string* %469 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %440, i64 %470, i64 2)
  %471 = getelementptr [139 x i8], [139 x i8]* @.str124, i32 0, i32 0
  %472 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str124.c, i8* %471, i64 138)
  %473 = ptrtoint %nyx_string* %472 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %440, i64 %473, i64 2)
  %474 = getelementptr [159 x i8], [159 x i8]* @.str125, i32 0, i32 0
  %475 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str125.c, i8* %474, i64 158)
  %476 = ptrtoint %nyx_string* %475 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %440, i64 %476, i64 2)
  %477 = ptrtoint { i64, i8* }* %440 to i64
  call void @nyx_array_push({ i64, i8* }* %439, i64 %477)
  %478 = load { i64, i8* }*, { i64, i8* }** %87
  %479 = call { i64, i8* }* @nyx_array_new_ptr()
  %480 = getelementptr [18 x i8], [18 x i8]* @.str126, i32 0, i32 0
  %481 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str126.c, i8* %480, i64 17)
  %482 = ptrtoint %nyx_string* %481 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %479, i64 %482, i64 2)
  %483 = getelementptr [5 x i8], [5 x i8]* @.str127, i32 0, i32 0
  %484 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str127.c, i8* %483, i64 4)
  %485 = ptrtoint %nyx_string* %484 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %479, i64 %485, i64 2)
  %486 = getelementptr [13 x i8], [13 x i8]* @.str128, i32 0, i32 0
  %487 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str128.c, i8* %486, i64 12)
  %488 = ptrtoint %nyx_string* %487 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %479, i64 %488, i64 2)
  %489 = getelementptr [8 x i8], [8 x i8]* @.str129, i32 0, i32 0
  %490 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str129.c, i8* %489, i64 7)
  %491 = ptrtoint %nyx_string* %490 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %479, i64 %491, i64 2)
  %492 = getelementptr [1 x i8], [1 x i8]* @.str130, i32 0, i32 0
  %493 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str130.c, i8* %492, i64 0)
  %494 = ptrtoint %nyx_string* %493 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %479, i64 %494, i64 2)
  %495 = getelementptr [1 x i8], [1 x i8]* @.str131, i32 0, i32 0
  %496 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str131.c, i8* %495, i64 0)
  %497 = ptrtoint %nyx_string* %496 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %479, i64 %497, i64 2)
  %498 = getelementptr [1 x i8], [1 x i8]* @.str132, i32 0, i32 0
  %499 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str132.c, i8* %498, i64 0)
  %500 = ptrtoint %nyx_string* %499 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %479, i64 %500, i64 2)
  %501 = getelementptr [6 x i8], [6 x i8]* @.str133, i32 0, i32 0
  %502 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str133.c, i8* %501, i64 5)
  %503 = ptrtoint %nyx_string* %502 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %479, i64 %503, i64 2)
  %504 = getelementptr [1 x i8], [1 x i8]* @.str134, i32 0, i32 0
  %505 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str134.c, i8* %504, i64 0)
  %506 = ptrtoint %nyx_string* %505 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %479, i64 %506, i64 2)
  %507 = getelementptr [36 x i8], [36 x i8]* @.str135, i32 0, i32 0
  %508 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str135.c, i8* %507, i64 35)
  %509 = ptrtoint %nyx_string* %508 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %479, i64 %509, i64 2)
  %510 = getelementptr [176 x i8], [176 x i8]* @.str136, i32 0, i32 0
  %511 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str136.c, i8* %510, i64 175)
  %512 = ptrtoint %nyx_string* %511 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %479, i64 %512, i64 2)
  %513 = getelementptr [197 x i8], [197 x i8]* @.str137, i32 0, i32 0
  %514 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str137.c, i8* %513, i64 196)
  %515 = ptrtoint %nyx_string* %514 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %479, i64 %515, i64 2)
  %516 = ptrtoint { i64, i8* }* %479 to i64
  call void @nyx_array_push({ i64, i8* }* %478, i64 %516)
  %517 = load { i64, i8* }*, { i64, i8* }** %87
  %518 = call { i64, i8* }* @nyx_array_new_ptr()
  %519 = getelementptr [18 x i8], [18 x i8]* @.str138, i32 0, i32 0
  %520 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str138.c, i8* %519, i64 17)
  %521 = ptrtoint %nyx_string* %520 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %518, i64 %521, i64 2)
  %522 = getelementptr [5 x i8], [5 x i8]* @.str139, i32 0, i32 0
  %523 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str139.c, i8* %522, i64 4)
  %524 = ptrtoint %nyx_string* %523 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %518, i64 %524, i64 2)
  %525 = getelementptr [13 x i8], [13 x i8]* @.str140, i32 0, i32 0
  %526 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str140.c, i8* %525, i64 12)
  %527 = ptrtoint %nyx_string* %526 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %518, i64 %527, i64 2)
  %528 = getelementptr [7 x i8], [7 x i8]* @.str141, i32 0, i32 0
  %529 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str141.c, i8* %528, i64 6)
  %530 = ptrtoint %nyx_string* %529 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %518, i64 %530, i64 2)
  %531 = getelementptr [1 x i8], [1 x i8]* @.str142, i32 0, i32 0
  %532 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str142.c, i8* %531, i64 0)
  %533 = ptrtoint %nyx_string* %532 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %518, i64 %533, i64 2)
  %534 = getelementptr [38 x i8], [38 x i8]* @.str143, i32 0, i32 0
  %535 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str143.c, i8* %534, i64 37)
  %536 = ptrtoint %nyx_string* %535 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %518, i64 %536, i64 2)
  %537 = getelementptr [5 x i8], [5 x i8]* @.str144, i32 0, i32 0
  %538 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str144.c, i8* %537, i64 4)
  %539 = ptrtoint %nyx_string* %538 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %518, i64 %539, i64 2)
  %540 = getelementptr [11 x i8], [11 x i8]* @.str145, i32 0, i32 0
  %541 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str145.c, i8* %540, i64 10)
  %542 = ptrtoint %nyx_string* %541 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %518, i64 %542, i64 2)
  %543 = getelementptr [1 x i8], [1 x i8]* @.str146, i32 0, i32 0
  %544 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str146.c, i8* %543, i64 0)
  %545 = ptrtoint %nyx_string* %544 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %518, i64 %545, i64 2)
  %546 = getelementptr [39 x i8], [39 x i8]* @.str147, i32 0, i32 0
  %547 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str147.c, i8* %546, i64 38)
  %548 = ptrtoint %nyx_string* %547 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %518, i64 %548, i64 2)
  %549 = getelementptr [151 x i8], [151 x i8]* @.str148, i32 0, i32 0
  %550 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str148.c, i8* %549, i64 150)
  %551 = ptrtoint %nyx_string* %550 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %518, i64 %551, i64 2)
  %552 = getelementptr [170 x i8], [170 x i8]* @.str149, i32 0, i32 0
  %553 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str149.c, i8* %552, i64 169)
  %554 = ptrtoint %nyx_string* %553 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %518, i64 %554, i64 2)
  %555 = ptrtoint { i64, i8* }* %518 to i64
  call void @nyx_array_push({ i64, i8* }* %517, i64 %555)
  %556 = load { i64, i8* }*, { i64, i8* }** %87
  %557 = call { i64, i8* }* @nyx_array_new_ptr()
  %558 = getelementptr [22 x i8], [22 x i8]* @.str150, i32 0, i32 0
  %559 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str150.c, i8* %558, i64 21)
  %560 = ptrtoint %nyx_string* %559 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %557, i64 %560, i64 2)
  %561 = getelementptr [5 x i8], [5 x i8]* @.str151, i32 0, i32 0
  %562 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str151.c, i8* %561, i64 4)
  %563 = ptrtoint %nyx_string* %562 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %557, i64 %563, i64 2)
  %564 = getelementptr [5 x i8], [5 x i8]* @.str152, i32 0, i32 0
  %565 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str152.c, i8* %564, i64 4)
  %566 = ptrtoint %nyx_string* %565 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %557, i64 %566, i64 2)
  %567 = getelementptr [7 x i8], [7 x i8]* @.str153, i32 0, i32 0
  %568 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str153.c, i8* %567, i64 6)
  %569 = ptrtoint %nyx_string* %568 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %557, i64 %569, i64 2)
  %570 = getelementptr [1 x i8], [1 x i8]* @.str154, i32 0, i32 0
  %571 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str154.c, i8* %570, i64 0)
  %572 = ptrtoint %nyx_string* %571 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %557, i64 %572, i64 2)
  %573 = getelementptr [1 x i8], [1 x i8]* @.str155, i32 0, i32 0
  %574 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str155.c, i8* %573, i64 0)
  %575 = ptrtoint %nyx_string* %574 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %557, i64 %575, i64 2)
  %576 = getelementptr [1 x i8], [1 x i8]* @.str156, i32 0, i32 0
  %577 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str156.c, i8* %576, i64 0)
  %578 = ptrtoint %nyx_string* %577 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %557, i64 %578, i64 2)
  %579 = getelementptr [8 x i8], [8 x i8]* @.str157, i32 0, i32 0
  %580 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str157.c, i8* %579, i64 7)
  %581 = ptrtoint %nyx_string* %580 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %557, i64 %581, i64 2)
  %582 = getelementptr [1 x i8], [1 x i8]* @.str158, i32 0, i32 0
  %583 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str158.c, i8* %582, i64 0)
  %584 = ptrtoint %nyx_string* %583 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %557, i64 %584, i64 2)
  %585 = getelementptr [40 x i8], [40 x i8]* @.str159, i32 0, i32 0
  %586 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str159.c, i8* %585, i64 39)
  %587 = ptrtoint %nyx_string* %586 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %557, i64 %587, i64 2)
  %588 = getelementptr [63 x i8], [63 x i8]* @.str160, i32 0, i32 0
  %589 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str160.c, i8* %588, i64 62)
  %590 = ptrtoint %nyx_string* %589 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %557, i64 %590, i64 2)
  %591 = getelementptr [61 x i8], [61 x i8]* @.str161, i32 0, i32 0
  %592 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str161.c, i8* %591, i64 60)
  %593 = ptrtoint %nyx_string* %592 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %557, i64 %593, i64 2)
  %594 = ptrtoint { i64, i8* }* %557 to i64
  call void @nyx_array_push({ i64, i8* }* %556, i64 %594)
  %595 = load { i64, i8* }*, { i64, i8* }** %87
  %596 = call { i64, i8* }* @nyx_array_new_ptr()
  %597 = getelementptr [17 x i8], [17 x i8]* @.str162, i32 0, i32 0
  %598 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str162.c, i8* %597, i64 16)
  %599 = ptrtoint %nyx_string* %598 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %596, i64 %599, i64 2)
  %600 = getelementptr [5 x i8], [5 x i8]* @.str163, i32 0, i32 0
  %601 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str163.c, i8* %600, i64 4)
  %602 = ptrtoint %nyx_string* %601 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %596, i64 %602, i64 2)
  %603 = getelementptr [5 x i8], [5 x i8]* @.str164, i32 0, i32 0
  %604 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str164.c, i8* %603, i64 4)
  %605 = ptrtoint %nyx_string* %604 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %596, i64 %605, i64 2)
  %606 = getelementptr [7 x i8], [7 x i8]* @.str165, i32 0, i32 0
  %607 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str165.c, i8* %606, i64 6)
  %608 = ptrtoint %nyx_string* %607 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %596, i64 %608, i64 2)
  %609 = getelementptr [1 x i8], [1 x i8]* @.str166, i32 0, i32 0
  %610 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str166.c, i8* %609, i64 0)
  %611 = ptrtoint %nyx_string* %610 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %596, i64 %611, i64 2)
  %612 = getelementptr [1 x i8], [1 x i8]* @.str167, i32 0, i32 0
  %613 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str167.c, i8* %612, i64 0)
  %614 = ptrtoint %nyx_string* %613 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %596, i64 %614, i64 2)
  %615 = getelementptr [1 x i8], [1 x i8]* @.str168, i32 0, i32 0
  %616 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str168.c, i8* %615, i64 0)
  %617 = ptrtoint %nyx_string* %616 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %596, i64 %617, i64 2)
  %618 = getelementptr [7 x i8], [7 x i8]* @.str169, i32 0, i32 0
  %619 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str169.c, i8* %618, i64 6)
  %620 = ptrtoint %nyx_string* %619 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %596, i64 %620, i64 2)
  %621 = getelementptr [1 x i8], [1 x i8]* @.str170, i32 0, i32 0
  %622 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str170.c, i8* %621, i64 0)
  %623 = ptrtoint %nyx_string* %622 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %596, i64 %623, i64 2)
  %624 = getelementptr [40 x i8], [40 x i8]* @.str171, i32 0, i32 0
  %625 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str171.c, i8* %624, i64 39)
  %626 = ptrtoint %nyx_string* %625 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %596, i64 %626, i64 2)
  %627 = getelementptr [64 x i8], [64 x i8]* @.str172, i32 0, i32 0
  %628 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str172.c, i8* %627, i64 63)
  %629 = ptrtoint %nyx_string* %628 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %596, i64 %629, i64 2)
  %630 = getelementptr [66 x i8], [66 x i8]* @.str173, i32 0, i32 0
  %631 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str173.c, i8* %630, i64 65)
  %632 = ptrtoint %nyx_string* %631 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %596, i64 %632, i64 2)
  %633 = ptrtoint { i64, i8* }* %596 to i64
  call void @nyx_array_push({ i64, i8* }* %595, i64 %633)
  %634 = load { i64, i8* }*, { i64, i8* }** %87
  %635 = call { i64, i8* }* @nyx_array_new_ptr()
  %636 = getelementptr [19 x i8], [19 x i8]* @.str174, i32 0, i32 0
  %637 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str174.c, i8* %636, i64 18)
  %638 = ptrtoint %nyx_string* %637 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %635, i64 %638, i64 2)
  %639 = getelementptr [6 x i8], [6 x i8]* @.str175, i32 0, i32 0
  %640 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str175.c, i8* %639, i64 5)
  %641 = ptrtoint %nyx_string* %640 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %635, i64 %641, i64 2)
  %642 = getelementptr [6 x i8], [6 x i8]* @.str176, i32 0, i32 0
  %643 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str176.c, i8* %642, i64 5)
  %644 = ptrtoint %nyx_string* %643 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %635, i64 %644, i64 2)
  %645 = getelementptr [7 x i8], [7 x i8]* @.str177, i32 0, i32 0
  %646 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str177.c, i8* %645, i64 6)
  %647 = ptrtoint %nyx_string* %646 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %635, i64 %647, i64 2)
  %648 = getelementptr [1 x i8], [1 x i8]* @.str178, i32 0, i32 0
  %649 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str178.c, i8* %648, i64 0)
  %650 = ptrtoint %nyx_string* %649 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %635, i64 %650, i64 2)
  %651 = getelementptr [1 x i8], [1 x i8]* @.str179, i32 0, i32 0
  %652 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str179.c, i8* %651, i64 0)
  %653 = ptrtoint %nyx_string* %652 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %635, i64 %653, i64 2)
  %654 = getelementptr [1 x i8], [1 x i8]* @.str180, i32 0, i32 0
  %655 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str180.c, i8* %654, i64 0)
  %656 = ptrtoint %nyx_string* %655 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %635, i64 %656, i64 2)
  %657 = getelementptr [7 x i8], [7 x i8]* @.str181, i32 0, i32 0
  %658 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str181.c, i8* %657, i64 6)
  %659 = ptrtoint %nyx_string* %658 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %635, i64 %659, i64 2)
  %660 = getelementptr [1 x i8], [1 x i8]* @.str182, i32 0, i32 0
  %661 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str182.c, i8* %660, i64 0)
  %662 = ptrtoint %nyx_string* %661 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %635, i64 %662, i64 2)
  %663 = getelementptr [1 x i8], [1 x i8]* @.str183, i32 0, i32 0
  %664 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str183.c, i8* %663, i64 0)
  %665 = ptrtoint %nyx_string* %664 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %635, i64 %665, i64 2)
  %666 = getelementptr [14 x i8], [14 x i8]* @.str184, i32 0, i32 0
  %667 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str184.c, i8* %666, i64 13)
  %668 = ptrtoint %nyx_string* %667 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %635, i64 %668, i64 2)
  %669 = getelementptr [14 x i8], [14 x i8]* @.str185, i32 0, i32 0
  %670 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str185.c, i8* %669, i64 13)
  %671 = ptrtoint %nyx_string* %670 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %635, i64 %671, i64 2)
  %672 = ptrtoint { i64, i8* }* %635 to i64
  call void @nyx_array_push({ i64, i8* }* %634, i64 %672)
  %673 = load { i64, i8* }*, { i64, i8* }** %87
  %674 = call { i64, i8* }* @nyx_array_new_ptr()
  %675 = getelementptr [30 x i8], [30 x i8]* @.str186, i32 0, i32 0
  %676 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str186.c, i8* %675, i64 29)
  %677 = ptrtoint %nyx_string* %676 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %674, i64 %677, i64 2)
  %678 = getelementptr [6 x i8], [6 x i8]* @.str187, i32 0, i32 0
  %679 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str187.c, i8* %678, i64 5)
  %680 = ptrtoint %nyx_string* %679 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %674, i64 %680, i64 2)
  %681 = getelementptr [4 x i8], [4 x i8]* @.str188, i32 0, i32 0
  %682 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str188.c, i8* %681, i64 3)
  %683 = ptrtoint %nyx_string* %682 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %674, i64 %683, i64 2)
  %684 = getelementptr [7 x i8], [7 x i8]* @.str189, i32 0, i32 0
  %685 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str189.c, i8* %684, i64 6)
  %686 = ptrtoint %nyx_string* %685 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %674, i64 %686, i64 2)
  %687 = getelementptr [1 x i8], [1 x i8]* @.str190, i32 0, i32 0
  %688 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str190.c, i8* %687, i64 0)
  %689 = ptrtoint %nyx_string* %688 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %674, i64 %689, i64 2)
  %690 = getelementptr [1 x i8], [1 x i8]* @.str191, i32 0, i32 0
  %691 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str191.c, i8* %690, i64 0)
  %692 = ptrtoint %nyx_string* %691 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %674, i64 %692, i64 2)
  %693 = getelementptr [1 x i8], [1 x i8]* @.str192, i32 0, i32 0
  %694 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str192.c, i8* %693, i64 0)
  %695 = ptrtoint %nyx_string* %694 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %674, i64 %695, i64 2)
  %696 = getelementptr [1 x i8], [1 x i8]* @.str193, i32 0, i32 0
  %697 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str193.c, i8* %696, i64 0)
  %698 = ptrtoint %nyx_string* %697 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %674, i64 %698, i64 2)
  %699 = getelementptr [1 x i8], [1 x i8]* @.str194, i32 0, i32 0
  %700 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str194.c, i8* %699, i64 0)
  %701 = ptrtoint %nyx_string* %700 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %674, i64 %701, i64 2)
  %702 = getelementptr [1 x i8], [1 x i8]* @.str195, i32 0, i32 0
  %703 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str195.c, i8* %702, i64 0)
  %704 = ptrtoint %nyx_string* %703 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %674, i64 %704, i64 2)
  %705 = getelementptr [47 x i8], [47 x i8]* @.str196, i32 0, i32 0
  %706 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str196.c, i8* %705, i64 46)
  %707 = ptrtoint %nyx_string* %706 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %674, i64 %707, i64 2)
  %708 = getelementptr [57 x i8], [57 x i8]* @.str197, i32 0, i32 0
  %709 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str197.c, i8* %708, i64 56)
  %710 = ptrtoint %nyx_string* %709 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %674, i64 %710, i64 2)
  %711 = ptrtoint { i64, i8* }* %674 to i64
  call void @nyx_array_push({ i64, i8* }* %673, i64 %711)
  %712 = load { i64, i8* }*, { i64, i8* }** %87
  %713 = call { i64, i8* }* @nyx_array_new_ptr()
  %714 = getelementptr [24 x i8], [24 x i8]* @.str198, i32 0, i32 0
  %715 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str198.c, i8* %714, i64 23)
  %716 = ptrtoint %nyx_string* %715 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %713, i64 %716, i64 2)
  %717 = getelementptr [6 x i8], [6 x i8]* @.str199, i32 0, i32 0
  %718 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str199.c, i8* %717, i64 5)
  %719 = ptrtoint %nyx_string* %718 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %713, i64 %719, i64 2)
  %720 = getelementptr [5 x i8], [5 x i8]* @.str200, i32 0, i32 0
  %721 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str200.c, i8* %720, i64 4)
  %722 = ptrtoint %nyx_string* %721 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %713, i64 %722, i64 2)
  %723 = getelementptr [7 x i8], [7 x i8]* @.str201, i32 0, i32 0
  %724 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str201.c, i8* %723, i64 6)
  %725 = ptrtoint %nyx_string* %724 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %713, i64 %725, i64 2)
  %726 = getelementptr [1 x i8], [1 x i8]* @.str202, i32 0, i32 0
  %727 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str202.c, i8* %726, i64 0)
  %728 = ptrtoint %nyx_string* %727 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %713, i64 %728, i64 2)
  %729 = getelementptr [1 x i8], [1 x i8]* @.str203, i32 0, i32 0
  %730 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str203.c, i8* %729, i64 0)
  %731 = ptrtoint %nyx_string* %730 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %713, i64 %731, i64 2)
  %732 = getelementptr [1 x i8], [1 x i8]* @.str204, i32 0, i32 0
  %733 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str204.c, i8* %732, i64 0)
  %734 = ptrtoint %nyx_string* %733 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %713, i64 %734, i64 2)
  %735 = getelementptr [8 x i8], [8 x i8]* @.str205, i32 0, i32 0
  %736 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str205.c, i8* %735, i64 7)
  %737 = ptrtoint %nyx_string* %736 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %713, i64 %737, i64 2)
  %738 = getelementptr [1 x i8], [1 x i8]* @.str206, i32 0, i32 0
  %739 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str206.c, i8* %738, i64 0)
  %740 = ptrtoint %nyx_string* %739 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %713, i64 %740, i64 2)
  %741 = getelementptr [1 x i8], [1 x i8]* @.str207, i32 0, i32 0
  %742 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str207.c, i8* %741, i64 0)
  %743 = ptrtoint %nyx_string* %742 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %713, i64 %743, i64 2)
  %744 = getelementptr [128 x i8], [128 x i8]* @.str208, i32 0, i32 0
  %745 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str208.c, i8* %744, i64 127)
  %746 = ptrtoint %nyx_string* %745 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %713, i64 %746, i64 2)
  %747 = getelementptr [132 x i8], [132 x i8]* @.str209, i32 0, i32 0
  %748 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str209.c, i8* %747, i64 131)
  %749 = ptrtoint %nyx_string* %748 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %713, i64 %749, i64 2)
  %750 = ptrtoint { i64, i8* }* %713 to i64
  call void @nyx_array_push({ i64, i8* }* %712, i64 %750)
  %751 = load { i64, i8* }*, { i64, i8* }** %87
  %752 = call { i64, i8* }* @nyx_array_new_ptr()
  %753 = getelementptr [20 x i8], [20 x i8]* @.str210, i32 0, i32 0
  %754 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str210.c, i8* %753, i64 19)
  %755 = ptrtoint %nyx_string* %754 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %752, i64 %755, i64 2)
  %756 = getelementptr [6 x i8], [6 x i8]* @.str211, i32 0, i32 0
  %757 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str211.c, i8* %756, i64 5)
  %758 = ptrtoint %nyx_string* %757 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %752, i64 %758, i64 2)
  %759 = getelementptr [13 x i8], [13 x i8]* @.str212, i32 0, i32 0
  %760 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str212.c, i8* %759, i64 12)
  %761 = ptrtoint %nyx_string* %760 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %752, i64 %761, i64 2)
  %762 = getelementptr [7 x i8], [7 x i8]* @.str213, i32 0, i32 0
  %763 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str213.c, i8* %762, i64 6)
  %764 = ptrtoint %nyx_string* %763 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %752, i64 %764, i64 2)
  %765 = getelementptr [1 x i8], [1 x i8]* @.str214, i32 0, i32 0
  %766 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str214.c, i8* %765, i64 0)
  %767 = ptrtoint %nyx_string* %766 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %752, i64 %767, i64 2)
  %768 = getelementptr [1 x i8], [1 x i8]* @.str215, i32 0, i32 0
  %769 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str215.c, i8* %768, i64 0)
  %770 = ptrtoint %nyx_string* %769 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %752, i64 %770, i64 2)
  %771 = getelementptr [1 x i8], [1 x i8]* @.str216, i32 0, i32 0
  %772 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str216.c, i8* %771, i64 0)
  %773 = ptrtoint %nyx_string* %772 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %752, i64 %773, i64 2)
  %774 = getelementptr [4 x i8], [4 x i8]* @.str217, i32 0, i32 0
  %775 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str217.c, i8* %774, i64 3)
  %776 = ptrtoint %nyx_string* %775 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %752, i64 %776, i64 2)
  %777 = getelementptr [1 x i8], [1 x i8]* @.str218, i32 0, i32 0
  %778 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str218.c, i8* %777, i64 0)
  %779 = ptrtoint %nyx_string* %778 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %752, i64 %779, i64 2)
  %780 = getelementptr [1 x i8], [1 x i8]* @.str219, i32 0, i32 0
  %781 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str219.c, i8* %780, i64 0)
  %782 = ptrtoint %nyx_string* %781 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %752, i64 %782, i64 2)
  %783 = getelementptr [91 x i8], [91 x i8]* @.str220, i32 0, i32 0
  %784 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str220.c, i8* %783, i64 90)
  %785 = ptrtoint %nyx_string* %784 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %752, i64 %785, i64 2)
  %786 = getelementptr [97 x i8], [97 x i8]* @.str221, i32 0, i32 0
  %787 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str221.c, i8* %786, i64 96)
  %788 = ptrtoint %nyx_string* %787 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %752, i64 %788, i64 2)
  %789 = ptrtoint { i64, i8* }* %752 to i64
  call void @nyx_array_push({ i64, i8* }* %751, i64 %789)
  %790 = load { i64, i8* }*, { i64, i8* }** %87
  %791 = call { i64, i8* }* @nyx_array_new_ptr()
  %792 = getelementptr [33 x i8], [33 x i8]* @.str222, i32 0, i32 0
  %793 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str222.c, i8* %792, i64 32)
  %794 = ptrtoint %nyx_string* %793 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %791, i64 %794, i64 2)
  %795 = getelementptr [6 x i8], [6 x i8]* @.str223, i32 0, i32 0
  %796 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str223.c, i8* %795, i64 5)
  %797 = ptrtoint %nyx_string* %796 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %791, i64 %797, i64 2)
  %798 = getelementptr [4 x i8], [4 x i8]* @.str224, i32 0, i32 0
  %799 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str224.c, i8* %798, i64 3)
  %800 = ptrtoint %nyx_string* %799 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %791, i64 %800, i64 2)
  %801 = getelementptr [7 x i8], [7 x i8]* @.str225, i32 0, i32 0
  %802 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str225.c, i8* %801, i64 6)
  %803 = ptrtoint %nyx_string* %802 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %791, i64 %803, i64 2)
  %804 = getelementptr [7 x i8], [7 x i8]* @.str226, i32 0, i32 0
  %805 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str226.c, i8* %804, i64 6)
  %806 = ptrtoint %nyx_string* %805 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %791, i64 %806, i64 2)
  %807 = getelementptr [1 x i8], [1 x i8]* @.str227, i32 0, i32 0
  %808 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str227.c, i8* %807, i64 0)
  %809 = ptrtoint %nyx_string* %808 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %791, i64 %809, i64 2)
  %810 = getelementptr [1 x i8], [1 x i8]* @.str228, i32 0, i32 0
  %811 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str228.c, i8* %810, i64 0)
  %812 = ptrtoint %nyx_string* %811 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %791, i64 %812, i64 2)
  %813 = getelementptr [17 x i8], [17 x i8]* @.str229, i32 0, i32 0
  %814 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str229.c, i8* %813, i64 16)
  %815 = ptrtoint %nyx_string* %814 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %791, i64 %815, i64 2)
  %816 = getelementptr [1 x i8], [1 x i8]* @.str230, i32 0, i32 0
  %817 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str230.c, i8* %816, i64 0)
  %818 = ptrtoint %nyx_string* %817 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %791, i64 %818, i64 2)
  %819 = getelementptr [1 x i8], [1 x i8]* @.str231, i32 0, i32 0
  %820 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str231.c, i8* %819, i64 0)
  %821 = ptrtoint %nyx_string* %820 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %791, i64 %821, i64 2)
  %822 = getelementptr [49 x i8], [49 x i8]* @.str232, i32 0, i32 0
  %823 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str232.c, i8* %822, i64 48)
  %824 = ptrtoint %nyx_string* %823 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %791, i64 %824, i64 2)
  %825 = getelementptr [58 x i8], [58 x i8]* @.str233, i32 0, i32 0
  %826 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str233.c, i8* %825, i64 57)
  %827 = ptrtoint %nyx_string* %826 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %791, i64 %827, i64 2)
  %828 = ptrtoint { i64, i8* }* %791 to i64
  call void @nyx_array_push({ i64, i8* }* %790, i64 %828)
  %829 = load { i64, i8* }*, { i64, i8* }** %87
  %830 = call { i64, i8* }* @nyx_array_new_ptr()
  %831 = getelementptr [21 x i8], [21 x i8]* @.str234, i32 0, i32 0
  %832 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str234.c, i8* %831, i64 20)
  %833 = ptrtoint %nyx_string* %832 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %830, i64 %833, i64 2)
  %834 = getelementptr [6 x i8], [6 x i8]* @.str235, i32 0, i32 0
  %835 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str235.c, i8* %834, i64 5)
  %836 = ptrtoint %nyx_string* %835 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %830, i64 %836, i64 2)
  %837 = getelementptr [4 x i8], [4 x i8]* @.str236, i32 0, i32 0
  %838 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str236.c, i8* %837, i64 3)
  %839 = ptrtoint %nyx_string* %838 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %830, i64 %839, i64 2)
  %840 = getelementptr [7 x i8], [7 x i8]* @.str237, i32 0, i32 0
  %841 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str237.c, i8* %840, i64 6)
  %842 = ptrtoint %nyx_string* %841 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %830, i64 %842, i64 2)
  %843 = getelementptr [7 x i8], [7 x i8]* @.str238, i32 0, i32 0
  %844 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str238.c, i8* %843, i64 6)
  %845 = ptrtoint %nyx_string* %844 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %830, i64 %845, i64 2)
  %846 = getelementptr [1 x i8], [1 x i8]* @.str239, i32 0, i32 0
  %847 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str239.c, i8* %846, i64 0)
  %848 = ptrtoint %nyx_string* %847 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %830, i64 %848, i64 2)
  %849 = getelementptr [1 x i8], [1 x i8]* @.str240, i32 0, i32 0
  %850 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str240.c, i8* %849, i64 0)
  %851 = ptrtoint %nyx_string* %850 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %830, i64 %851, i64 2)
  %852 = getelementptr [14 x i8], [14 x i8]* @.str241, i32 0, i32 0
  %853 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str241.c, i8* %852, i64 13)
  %854 = ptrtoint %nyx_string* %853 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %830, i64 %854, i64 2)
  %855 = getelementptr [1 x i8], [1 x i8]* @.str242, i32 0, i32 0
  %856 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str242.c, i8* %855, i64 0)
  %857 = ptrtoint %nyx_string* %856 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %830, i64 %857, i64 2)
  %858 = getelementptr [1 x i8], [1 x i8]* @.str243, i32 0, i32 0
  %859 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str243.c, i8* %858, i64 0)
  %860 = ptrtoint %nyx_string* %859 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %830, i64 %860, i64 2)
  %861 = getelementptr [28 x i8], [28 x i8]* @.str244, i32 0, i32 0
  %862 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str244.c, i8* %861, i64 27)
  %863 = ptrtoint %nyx_string* %862 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %830, i64 %863, i64 2)
  %864 = getelementptr [35 x i8], [35 x i8]* @.str245, i32 0, i32 0
  %865 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str245.c, i8* %864, i64 34)
  %866 = ptrtoint %nyx_string* %865 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %830, i64 %866, i64 2)
  %867 = ptrtoint { i64, i8* }* %830 to i64
  call void @nyx_array_push({ i64, i8* }* %829, i64 %867)
  %868 = load { i64, i8* }*, { i64, i8* }** %87
  %869 = call { i64, i8* }* @nyx_array_new_ptr()
  %870 = getelementptr [19 x i8], [19 x i8]* @.str246, i32 0, i32 0
  %871 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str246.c, i8* %870, i64 18)
  %872 = ptrtoint %nyx_string* %871 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %869, i64 %872, i64 2)
  %873 = getelementptr [6 x i8], [6 x i8]* @.str247, i32 0, i32 0
  %874 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str247.c, i8* %873, i64 5)
  %875 = ptrtoint %nyx_string* %874 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %869, i64 %875, i64 2)
  %876 = getelementptr [4 x i8], [4 x i8]* @.str248, i32 0, i32 0
  %877 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str248.c, i8* %876, i64 3)
  %878 = ptrtoint %nyx_string* %877 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %869, i64 %878, i64 2)
  %879 = getelementptr [7 x i8], [7 x i8]* @.str249, i32 0, i32 0
  %880 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str249.c, i8* %879, i64 6)
  %881 = ptrtoint %nyx_string* %880 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %869, i64 %881, i64 2)
  %882 = getelementptr [7 x i8], [7 x i8]* @.str250, i32 0, i32 0
  %883 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str250.c, i8* %882, i64 6)
  %884 = ptrtoint %nyx_string* %883 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %869, i64 %884, i64 2)
  %885 = getelementptr [1 x i8], [1 x i8]* @.str251, i32 0, i32 0
  %886 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str251.c, i8* %885, i64 0)
  %887 = ptrtoint %nyx_string* %886 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %869, i64 %887, i64 2)
  %888 = getelementptr [1 x i8], [1 x i8]* @.str252, i32 0, i32 0
  %889 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str252.c, i8* %888, i64 0)
  %890 = ptrtoint %nyx_string* %889 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %869, i64 %890, i64 2)
  %891 = getelementptr [14 x i8], [14 x i8]* @.str253, i32 0, i32 0
  %892 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str253.c, i8* %891, i64 13)
  %893 = ptrtoint %nyx_string* %892 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %869, i64 %893, i64 2)
  %894 = getelementptr [1 x i8], [1 x i8]* @.str254, i32 0, i32 0
  %895 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str254.c, i8* %894, i64 0)
  %896 = ptrtoint %nyx_string* %895 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %869, i64 %896, i64 2)
  %897 = getelementptr [1 x i8], [1 x i8]* @.str255, i32 0, i32 0
  %898 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str255.c, i8* %897, i64 0)
  %899 = ptrtoint %nyx_string* %898 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %869, i64 %899, i64 2)
  %900 = getelementptr [37 x i8], [37 x i8]* @.str256, i32 0, i32 0
  %901 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str256.c, i8* %900, i64 36)
  %902 = ptrtoint %nyx_string* %901 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %869, i64 %902, i64 2)
  %903 = getelementptr [48 x i8], [48 x i8]* @.str257, i32 0, i32 0
  %904 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str257.c, i8* %903, i64 47)
  %905 = ptrtoint %nyx_string* %904 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %869, i64 %905, i64 2)
  %906 = ptrtoint { i64, i8* }* %869 to i64
  call void @nyx_array_push({ i64, i8* }* %868, i64 %906)
  %907 = load { i64, i8* }*, { i64, i8* }** %87
  %908 = call { i64, i8* }* @nyx_array_new_ptr()
  %909 = getelementptr [20 x i8], [20 x i8]* @.str258, i32 0, i32 0
  %910 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str258.c, i8* %909, i64 19)
  %911 = ptrtoint %nyx_string* %910 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %908, i64 %911, i64 2)
  %912 = getelementptr [6 x i8], [6 x i8]* @.str259, i32 0, i32 0
  %913 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str259.c, i8* %912, i64 5)
  %914 = ptrtoint %nyx_string* %913 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %908, i64 %914, i64 2)
  %915 = getelementptr [4 x i8], [4 x i8]* @.str260, i32 0, i32 0
  %916 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str260.c, i8* %915, i64 3)
  %917 = ptrtoint %nyx_string* %916 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %908, i64 %917, i64 2)
  %918 = getelementptr [7 x i8], [7 x i8]* @.str261, i32 0, i32 0
  %919 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str261.c, i8* %918, i64 6)
  %920 = ptrtoint %nyx_string* %919 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %908, i64 %920, i64 2)
  %921 = getelementptr [7 x i8], [7 x i8]* @.str262, i32 0, i32 0
  %922 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str262.c, i8* %921, i64 6)
  %923 = ptrtoint %nyx_string* %922 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %908, i64 %923, i64 2)
  %924 = getelementptr [1 x i8], [1 x i8]* @.str263, i32 0, i32 0
  %925 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str263.c, i8* %924, i64 0)
  %926 = ptrtoint %nyx_string* %925 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %908, i64 %926, i64 2)
  %927 = getelementptr [1 x i8], [1 x i8]* @.str264, i32 0, i32 0
  %928 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str264.c, i8* %927, i64 0)
  %929 = ptrtoint %nyx_string* %928 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %908, i64 %929, i64 2)
  %930 = getelementptr [7 x i8], [7 x i8]* @.str265, i32 0, i32 0
  %931 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str265.c, i8* %930, i64 6)
  %932 = ptrtoint %nyx_string* %931 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %908, i64 %932, i64 2)
  %933 = getelementptr [50 x i8], [50 x i8]* @.str266, i32 0, i32 0
  %934 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str266.c, i8* %933, i64 49)
  %935 = ptrtoint %nyx_string* %934 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %908, i64 %935, i64 2)
  %936 = getelementptr [60 x i8], [60 x i8]* @.str267, i32 0, i32 0
  %937 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str267.c, i8* %936, i64 59)
  %938 = ptrtoint %nyx_string* %937 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %908, i64 %938, i64 2)
  %939 = getelementptr [95 x i8], [95 x i8]* @.str268, i32 0, i32 0
  %940 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str268.c, i8* %939, i64 94)
  %941 = ptrtoint %nyx_string* %940 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %908, i64 %941, i64 2)
  %942 = getelementptr [105 x i8], [105 x i8]* @.str269, i32 0, i32 0
  %943 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str269.c, i8* %942, i64 104)
  %944 = ptrtoint %nyx_string* %943 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %908, i64 %944, i64 2)
  %945 = ptrtoint { i64, i8* }* %908 to i64
  call void @nyx_array_push({ i64, i8* }* %907, i64 %945)
  %946 = load { i64, i8* }*, { i64, i8* }** %87
  %947 = call { i64, i8* }* @nyx_array_new_ptr()
  %948 = getelementptr [28 x i8], [28 x i8]* @.str270, i32 0, i32 0
  %949 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str270.c, i8* %948, i64 27)
  %950 = ptrtoint %nyx_string* %949 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %947, i64 %950, i64 2)
  %951 = getelementptr [6 x i8], [6 x i8]* @.str271, i32 0, i32 0
  %952 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str271.c, i8* %951, i64 5)
  %953 = ptrtoint %nyx_string* %952 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %947, i64 %953, i64 2)
  %954 = getelementptr [4 x i8], [4 x i8]* @.str272, i32 0, i32 0
  %955 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str272.c, i8* %954, i64 3)
  %956 = ptrtoint %nyx_string* %955 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %947, i64 %956, i64 2)
  %957 = getelementptr [7 x i8], [7 x i8]* @.str273, i32 0, i32 0
  %958 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str273.c, i8* %957, i64 6)
  %959 = ptrtoint %nyx_string* %958 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %947, i64 %959, i64 2)
  %960 = getelementptr [7 x i8], [7 x i8]* @.str274, i32 0, i32 0
  %961 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str274.c, i8* %960, i64 6)
  %962 = ptrtoint %nyx_string* %961 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %947, i64 %962, i64 2)
  %963 = getelementptr [1 x i8], [1 x i8]* @.str275, i32 0, i32 0
  %964 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str275.c, i8* %963, i64 0)
  %965 = ptrtoint %nyx_string* %964 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %947, i64 %965, i64 2)
  %966 = getelementptr [1 x i8], [1 x i8]* @.str276, i32 0, i32 0
  %967 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str276.c, i8* %966, i64 0)
  %968 = ptrtoint %nyx_string* %967 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %947, i64 %968, i64 2)
  %969 = getelementptr [18 x i8], [18 x i8]* @.str277, i32 0, i32 0
  %970 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str277.c, i8* %969, i64 17)
  %971 = ptrtoint %nyx_string* %970 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %947, i64 %971, i64 2)
  %972 = getelementptr [1 x i8], [1 x i8]* @.str278, i32 0, i32 0
  %973 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str278.c, i8* %972, i64 0)
  %974 = ptrtoint %nyx_string* %973 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %947, i64 %974, i64 2)
  %975 = getelementptr [1 x i8], [1 x i8]* @.str279, i32 0, i32 0
  %976 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str279.c, i8* %975, i64 0)
  %977 = ptrtoint %nyx_string* %976 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %947, i64 %977, i64 2)
  %978 = getelementptr [73 x i8], [73 x i8]* @.str280, i32 0, i32 0
  %979 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str280.c, i8* %978, i64 72)
  %980 = ptrtoint %nyx_string* %979 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %947, i64 %980, i64 2)
  %981 = getelementptr [90 x i8], [90 x i8]* @.str281, i32 0, i32 0
  %982 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str281.c, i8* %981, i64 89)
  %983 = ptrtoint %nyx_string* %982 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %947, i64 %983, i64 2)
  %984 = ptrtoint { i64, i8* }* %947 to i64
  call void @nyx_array_push({ i64, i8* }* %946, i64 %984)
  %985 = load { i64, i8* }*, { i64, i8* }** %87
  %986 = call { i64, i8* }* @nyx_array_new_ptr()
  %987 = getelementptr [18 x i8], [18 x i8]* @.str282, i32 0, i32 0
  %988 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str282.c, i8* %987, i64 17)
  %989 = ptrtoint %nyx_string* %988 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %986, i64 %989, i64 2)
  %990 = getelementptr [6 x i8], [6 x i8]* @.str283, i32 0, i32 0
  %991 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str283.c, i8* %990, i64 5)
  %992 = ptrtoint %nyx_string* %991 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %986, i64 %992, i64 2)
  %993 = getelementptr [4 x i8], [4 x i8]* @.str284, i32 0, i32 0
  %994 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str284.c, i8* %993, i64 3)
  %995 = ptrtoint %nyx_string* %994 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %986, i64 %995, i64 2)
  %996 = getelementptr [8 x i8], [8 x i8]* @.str285, i32 0, i32 0
  %997 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str285.c, i8* %996, i64 7)
  %998 = ptrtoint %nyx_string* %997 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %986, i64 %998, i64 2)
  %999 = getelementptr [8 x i8], [8 x i8]* @.str286, i32 0, i32 0
  %1000 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str286.c, i8* %999, i64 7)
  %1001 = ptrtoint %nyx_string* %1000 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %986, i64 %1001, i64 2)
  %1002 = getelementptr [1 x i8], [1 x i8]* @.str287, i32 0, i32 0
  %1003 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str287.c, i8* %1002, i64 0)
  %1004 = ptrtoint %nyx_string* %1003 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %986, i64 %1004, i64 2)
  %1005 = getelementptr [1 x i8], [1 x i8]* @.str288, i32 0, i32 0
  %1006 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str288.c, i8* %1005, i64 0)
  %1007 = ptrtoint %nyx_string* %1006 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %986, i64 %1007, i64 2)
  %1008 = getelementptr [7 x i8], [7 x i8]* @.str289, i32 0, i32 0
  %1009 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str289.c, i8* %1008, i64 6)
  %1010 = ptrtoint %nyx_string* %1009 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %986, i64 %1010, i64 2)
  %1011 = getelementptr [1 x i8], [1 x i8]* @.str290, i32 0, i32 0
  %1012 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str290.c, i8* %1011, i64 0)
  %1013 = ptrtoint %nyx_string* %1012 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %986, i64 %1013, i64 2)
  %1014 = getelementptr [34 x i8], [34 x i8]* @.str291, i32 0, i32 0
  %1015 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str291.c, i8* %1014, i64 33)
  %1016 = ptrtoint %nyx_string* %1015 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %986, i64 %1016, i64 2)
  %1017 = getelementptr [63 x i8], [63 x i8]* @.str292, i32 0, i32 0
  %1018 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str292.c, i8* %1017, i64 62)
  %1019 = ptrtoint %nyx_string* %1018 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %986, i64 %1019, i64 2)
  %1020 = getelementptr [69 x i8], [69 x i8]* @.str293, i32 0, i32 0
  %1021 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str293.c, i8* %1020, i64 68)
  %1022 = ptrtoint %nyx_string* %1021 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %986, i64 %1022, i64 2)
  %1023 = ptrtoint { i64, i8* }* %986 to i64
  call void @nyx_array_push({ i64, i8* }* %985, i64 %1023)
  %1024 = load { i64, i8* }*, { i64, i8* }** %87
  %1025 = call { i64, i8* }* @nyx_array_new_ptr()
  %1026 = getelementptr [27 x i8], [27 x i8]* @.str294, i32 0, i32 0
  %1027 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str294.c, i8* %1026, i64 26)
  %1028 = ptrtoint %nyx_string* %1027 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1025, i64 %1028, i64 2)
  %1029 = getelementptr [6 x i8], [6 x i8]* @.str295, i32 0, i32 0
  %1030 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str295.c, i8* %1029, i64 5)
  %1031 = ptrtoint %nyx_string* %1030 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1025, i64 %1031, i64 2)
  %1032 = getelementptr [4 x i8], [4 x i8]* @.str296, i32 0, i32 0
  %1033 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str296.c, i8* %1032, i64 3)
  %1034 = ptrtoint %nyx_string* %1033 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1025, i64 %1034, i64 2)
  %1035 = getelementptr [8 x i8], [8 x i8]* @.str297, i32 0, i32 0
  %1036 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str297.c, i8* %1035, i64 7)
  %1037 = ptrtoint %nyx_string* %1036 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1025, i64 %1037, i64 2)
  %1038 = getelementptr [8 x i8], [8 x i8]* @.str298, i32 0, i32 0
  %1039 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str298.c, i8* %1038, i64 7)
  %1040 = ptrtoint %nyx_string* %1039 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1025, i64 %1040, i64 2)
  %1041 = getelementptr [1 x i8], [1 x i8]* @.str299, i32 0, i32 0
  %1042 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str299.c, i8* %1041, i64 0)
  %1043 = ptrtoint %nyx_string* %1042 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1025, i64 %1043, i64 2)
  %1044 = getelementptr [1 x i8], [1 x i8]* @.str300, i32 0, i32 0
  %1045 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str300.c, i8* %1044, i64 0)
  %1046 = ptrtoint %nyx_string* %1045 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1025, i64 %1046, i64 2)
  %1047 = getelementptr [8 x i8], [8 x i8]* @.str301, i32 0, i32 0
  %1048 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str301.c, i8* %1047, i64 7)
  %1049 = ptrtoint %nyx_string* %1048 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1025, i64 %1049, i64 2)
  %1050 = getelementptr [28 x i8], [28 x i8]* @.str302, i32 0, i32 0
  %1051 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str302.c, i8* %1050, i64 27)
  %1052 = ptrtoint %nyx_string* %1051 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1025, i64 %1052, i64 2)
  %1053 = getelementptr [1 x i8], [1 x i8]* @.str303, i32 0, i32 0
  %1054 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str303.c, i8* %1053, i64 0)
  %1055 = ptrtoint %nyx_string* %1054 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1025, i64 %1055, i64 2)
  %1056 = getelementptr [81 x i8], [81 x i8]* @.str304, i32 0, i32 0
  %1057 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str304.c, i8* %1056, i64 80)
  %1058 = ptrtoint %nyx_string* %1057 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1025, i64 %1058, i64 2)
  %1059 = getelementptr [120 x i8], [120 x i8]* @.str305, i32 0, i32 0
  %1060 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str305.c, i8* %1059, i64 119)
  %1061 = ptrtoint %nyx_string* %1060 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1025, i64 %1061, i64 2)
  %1062 = ptrtoint { i64, i8* }* %1025 to i64
  call void @nyx_array_push({ i64, i8* }* %1024, i64 %1062)
  %1063 = load { i64, i8* }*, { i64, i8* }** %87
  %1064 = call { i64, i8* }* @nyx_array_new_ptr()
  %1065 = getelementptr [22 x i8], [22 x i8]* @.str306, i32 0, i32 0
  %1066 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str306.c, i8* %1065, i64 21)
  %1067 = ptrtoint %nyx_string* %1066 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1064, i64 %1067, i64 2)
  %1068 = getelementptr [6 x i8], [6 x i8]* @.str307, i32 0, i32 0
  %1069 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str307.c, i8* %1068, i64 5)
  %1070 = ptrtoint %nyx_string* %1069 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1064, i64 %1070, i64 2)
  %1071 = getelementptr [4 x i8], [4 x i8]* @.str308, i32 0, i32 0
  %1072 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str308.c, i8* %1071, i64 3)
  %1073 = ptrtoint %nyx_string* %1072 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1064, i64 %1073, i64 2)
  %1074 = getelementptr [8 x i8], [8 x i8]* @.str309, i32 0, i32 0
  %1075 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str309.c, i8* %1074, i64 7)
  %1076 = ptrtoint %nyx_string* %1075 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1064, i64 %1076, i64 2)
  %1077 = getelementptr [8 x i8], [8 x i8]* @.str310, i32 0, i32 0
  %1078 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str310.c, i8* %1077, i64 7)
  %1079 = ptrtoint %nyx_string* %1078 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1064, i64 %1079, i64 2)
  %1080 = getelementptr [1 x i8], [1 x i8]* @.str311, i32 0, i32 0
  %1081 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str311.c, i8* %1080, i64 0)
  %1082 = ptrtoint %nyx_string* %1081 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1064, i64 %1082, i64 2)
  %1083 = getelementptr [1 x i8], [1 x i8]* @.str312, i32 0, i32 0
  %1084 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str312.c, i8* %1083, i64 0)
  %1085 = ptrtoint %nyx_string* %1084 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1064, i64 %1085, i64 2)
  %1086 = getelementptr [9 x i8], [9 x i8]* @.str313, i32 0, i32 0
  %1087 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str313.c, i8* %1086, i64 8)
  %1088 = ptrtoint %nyx_string* %1087 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1064, i64 %1088, i64 2)
  %1089 = getelementptr [54 x i8], [54 x i8]* @.str314, i32 0, i32 0
  %1090 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str314.c, i8* %1089, i64 53)
  %1091 = ptrtoint %nyx_string* %1090 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1064, i64 %1091, i64 2)
  %1092 = getelementptr [43 x i8], [43 x i8]* @.str315, i32 0, i32 0
  %1093 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str315.c, i8* %1092, i64 42)
  %1094 = ptrtoint %nyx_string* %1093 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1064, i64 %1094, i64 2)
  %1095 = getelementptr [92 x i8], [92 x i8]* @.str316, i32 0, i32 0
  %1096 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str316.c, i8* %1095, i64 91)
  %1097 = ptrtoint %nyx_string* %1096 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1064, i64 %1097, i64 2)
  %1098 = getelementptr [105 x i8], [105 x i8]* @.str317, i32 0, i32 0
  %1099 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str317.c, i8* %1098, i64 104)
  %1100 = ptrtoint %nyx_string* %1099 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1064, i64 %1100, i64 2)
  %1101 = ptrtoint { i64, i8* }* %1064 to i64
  call void @nyx_array_push({ i64, i8* }* %1063, i64 %1101)
  %1102 = load { i64, i8* }*, { i64, i8* }** %87
  %1103 = call { i64, i8* }* @nyx_array_new_ptr()
  %1104 = getelementptr [27 x i8], [27 x i8]* @.str318, i32 0, i32 0
  %1105 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str318.c, i8* %1104, i64 26)
  %1106 = ptrtoint %nyx_string* %1105 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1103, i64 %1106, i64 2)
  %1107 = getelementptr [6 x i8], [6 x i8]* @.str319, i32 0, i32 0
  %1108 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str319.c, i8* %1107, i64 5)
  %1109 = ptrtoint %nyx_string* %1108 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1103, i64 %1109, i64 2)
  %1110 = getelementptr [4 x i8], [4 x i8]* @.str320, i32 0, i32 0
  %1111 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str320.c, i8* %1110, i64 3)
  %1112 = ptrtoint %nyx_string* %1111 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1103, i64 %1112, i64 2)
  %1113 = getelementptr [8 x i8], [8 x i8]* @.str321, i32 0, i32 0
  %1114 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str321.c, i8* %1113, i64 7)
  %1115 = ptrtoint %nyx_string* %1114 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1103, i64 %1115, i64 2)
  %1116 = getelementptr [8 x i8], [8 x i8]* @.str322, i32 0, i32 0
  %1117 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str322.c, i8* %1116, i64 7)
  %1118 = ptrtoint %nyx_string* %1117 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1103, i64 %1118, i64 2)
  %1119 = getelementptr [1 x i8], [1 x i8]* @.str323, i32 0, i32 0
  %1120 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str323.c, i8* %1119, i64 0)
  %1121 = ptrtoint %nyx_string* %1120 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1103, i64 %1121, i64 2)
  %1122 = getelementptr [1 x i8], [1 x i8]* @.str324, i32 0, i32 0
  %1123 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str324.c, i8* %1122, i64 0)
  %1124 = ptrtoint %nyx_string* %1123 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1103, i64 %1124, i64 2)
  %1125 = getelementptr [10 x i8], [10 x i8]* @.str325, i32 0, i32 0
  %1126 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str325.c, i8* %1125, i64 9)
  %1127 = ptrtoint %nyx_string* %1126 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1103, i64 %1127, i64 2)
  %1128 = getelementptr [1 x i8], [1 x i8]* @.str326, i32 0, i32 0
  %1129 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str326.c, i8* %1128, i64 0)
  %1130 = ptrtoint %nyx_string* %1129 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1103, i64 %1130, i64 2)
  %1131 = getelementptr [1 x i8], [1 x i8]* @.str327, i32 0, i32 0
  %1132 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str327.c, i8* %1131, i64 0)
  %1133 = ptrtoint %nyx_string* %1132 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1103, i64 %1133, i64 2)
  %1134 = getelementptr [62 x i8], [62 x i8]* @.str328, i32 0, i32 0
  %1135 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str328.c, i8* %1134, i64 61)
  %1136 = ptrtoint %nyx_string* %1135 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1103, i64 %1136, i64 2)
  %1137 = getelementptr [58 x i8], [58 x i8]* @.str329, i32 0, i32 0
  %1138 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str329.c, i8* %1137, i64 57)
  %1139 = ptrtoint %nyx_string* %1138 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1103, i64 %1139, i64 2)
  %1140 = ptrtoint { i64, i8* }* %1103 to i64
  call void @nyx_array_push({ i64, i8* }* %1102, i64 %1140)
  %1141 = load { i64, i8* }*, { i64, i8* }** %87
  %1142 = call { i64, i8* }* @nyx_array_new_ptr()
  %1143 = getelementptr [26 x i8], [26 x i8]* @.str330, i32 0, i32 0
  %1144 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str330.c, i8* %1143, i64 25)
  %1145 = ptrtoint %nyx_string* %1144 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1142, i64 %1145, i64 2)
  %1146 = getelementptr [6 x i8], [6 x i8]* @.str331, i32 0, i32 0
  %1147 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str331.c, i8* %1146, i64 5)
  %1148 = ptrtoint %nyx_string* %1147 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1142, i64 %1148, i64 2)
  %1149 = getelementptr [4 x i8], [4 x i8]* @.str332, i32 0, i32 0
  %1150 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str332.c, i8* %1149, i64 3)
  %1151 = ptrtoint %nyx_string* %1150 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1142, i64 %1151, i64 2)
  %1152 = getelementptr [7 x i8], [7 x i8]* @.str333, i32 0, i32 0
  %1153 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str333.c, i8* %1152, i64 6)
  %1154 = ptrtoint %nyx_string* %1153 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1142, i64 %1154, i64 2)
  %1155 = getelementptr [7 x i8], [7 x i8]* @.str334, i32 0, i32 0
  %1156 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str334.c, i8* %1155, i64 6)
  %1157 = ptrtoint %nyx_string* %1156 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1142, i64 %1157, i64 2)
  %1158 = getelementptr [1 x i8], [1 x i8]* @.str335, i32 0, i32 0
  %1159 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str335.c, i8* %1158, i64 0)
  %1160 = ptrtoint %nyx_string* %1159 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1142, i64 %1160, i64 2)
  %1161 = getelementptr [1 x i8], [1 x i8]* @.str336, i32 0, i32 0
  %1162 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str336.c, i8* %1161, i64 0)
  %1163 = ptrtoint %nyx_string* %1162 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1142, i64 %1163, i64 2)
  %1164 = getelementptr [11 x i8], [11 x i8]* @.str337, i32 0, i32 0
  %1165 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str337.c, i8* %1164, i64 10)
  %1166 = ptrtoint %nyx_string* %1165 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1142, i64 %1166, i64 2)
  %1167 = getelementptr [1 x i8], [1 x i8]* @.str338, i32 0, i32 0
  %1168 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str338.c, i8* %1167, i64 0)
  %1169 = ptrtoint %nyx_string* %1168 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1142, i64 %1169, i64 2)
  %1170 = getelementptr [40 x i8], [40 x i8]* @.str339, i32 0, i32 0
  %1171 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str339.c, i8* %1170, i64 39)
  %1172 = ptrtoint %nyx_string* %1171 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1142, i64 %1172, i64 2)
  %1173 = getelementptr [76 x i8], [76 x i8]* @.str340, i32 0, i32 0
  %1174 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str340.c, i8* %1173, i64 75)
  %1175 = ptrtoint %nyx_string* %1174 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1142, i64 %1175, i64 2)
  %1176 = getelementptr [90 x i8], [90 x i8]* @.str341, i32 0, i32 0
  %1177 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str341.c, i8* %1176, i64 89)
  %1178 = ptrtoint %nyx_string* %1177 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1142, i64 %1178, i64 2)
  %1179 = ptrtoint { i64, i8* }* %1142 to i64
  call void @nyx_array_push({ i64, i8* }* %1141, i64 %1179)
  %1180 = load { i64, i8* }*, { i64, i8* }** %87
  %1181 = call { i64, i8* }* @nyx_array_new_ptr()
  %1182 = getelementptr [28 x i8], [28 x i8]* @.str342, i32 0, i32 0
  %1183 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str342.c, i8* %1182, i64 27)
  %1184 = ptrtoint %nyx_string* %1183 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1181, i64 %1184, i64 2)
  %1185 = getelementptr [6 x i8], [6 x i8]* @.str343, i32 0, i32 0
  %1186 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str343.c, i8* %1185, i64 5)
  %1187 = ptrtoint %nyx_string* %1186 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1181, i64 %1187, i64 2)
  %1188 = getelementptr [4 x i8], [4 x i8]* @.str344, i32 0, i32 0
  %1189 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str344.c, i8* %1188, i64 3)
  %1190 = ptrtoint %nyx_string* %1189 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1181, i64 %1190, i64 2)
  %1191 = getelementptr [7 x i8], [7 x i8]* @.str345, i32 0, i32 0
  %1192 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str345.c, i8* %1191, i64 6)
  %1193 = ptrtoint %nyx_string* %1192 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1181, i64 %1193, i64 2)
  %1194 = getelementptr [7 x i8], [7 x i8]* @.str346, i32 0, i32 0
  %1195 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str346.c, i8* %1194, i64 6)
  %1196 = ptrtoint %nyx_string* %1195 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1181, i64 %1196, i64 2)
  %1197 = getelementptr [1 x i8], [1 x i8]* @.str347, i32 0, i32 0
  %1198 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str347.c, i8* %1197, i64 0)
  %1199 = ptrtoint %nyx_string* %1198 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1181, i64 %1199, i64 2)
  %1200 = getelementptr [1 x i8], [1 x i8]* @.str348, i32 0, i32 0
  %1201 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str348.c, i8* %1200, i64 0)
  %1202 = ptrtoint %nyx_string* %1201 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1181, i64 %1202, i64 2)
  %1203 = getelementptr [14 x i8], [14 x i8]* @.str349, i32 0, i32 0
  %1204 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str349.c, i8* %1203, i64 13)
  %1205 = ptrtoint %nyx_string* %1204 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1181, i64 %1205, i64 2)
  %1206 = getelementptr [1 x i8], [1 x i8]* @.str350, i32 0, i32 0
  %1207 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str350.c, i8* %1206, i64 0)
  %1208 = ptrtoint %nyx_string* %1207 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1181, i64 %1208, i64 2)
  %1209 = getelementptr [39 x i8], [39 x i8]* @.str351, i32 0, i32 0
  %1210 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str351.c, i8* %1209, i64 38)
  %1211 = ptrtoint %nyx_string* %1210 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1181, i64 %1211, i64 2)
  %1212 = getelementptr [78 x i8], [78 x i8]* @.str352, i32 0, i32 0
  %1213 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str352.c, i8* %1212, i64 77)
  %1214 = ptrtoint %nyx_string* %1213 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1181, i64 %1214, i64 2)
  %1215 = getelementptr [85 x i8], [85 x i8]* @.str353, i32 0, i32 0
  %1216 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str353.c, i8* %1215, i64 84)
  %1217 = ptrtoint %nyx_string* %1216 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1181, i64 %1217, i64 2)
  %1218 = ptrtoint { i64, i8* }* %1181 to i64
  call void @nyx_array_push({ i64, i8* }* %1180, i64 %1218)
  %1219 = load { i64, i8* }*, { i64, i8* }** %87
  %1220 = call { i64, i8* }* @nyx_array_new_ptr()
  %1221 = getelementptr [29 x i8], [29 x i8]* @.str354, i32 0, i32 0
  %1222 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str354.c, i8* %1221, i64 28)
  %1223 = ptrtoint %nyx_string* %1222 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1220, i64 %1223, i64 2)
  %1224 = getelementptr [6 x i8], [6 x i8]* @.str355, i32 0, i32 0
  %1225 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str355.c, i8* %1224, i64 5)
  %1226 = ptrtoint %nyx_string* %1225 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1220, i64 %1226, i64 2)
  %1227 = getelementptr [4 x i8], [4 x i8]* @.str356, i32 0, i32 0
  %1228 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str356.c, i8* %1227, i64 3)
  %1229 = ptrtoint %nyx_string* %1228 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1220, i64 %1229, i64 2)
  %1230 = getelementptr [7 x i8], [7 x i8]* @.str357, i32 0, i32 0
  %1231 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str357.c, i8* %1230, i64 6)
  %1232 = ptrtoint %nyx_string* %1231 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1220, i64 %1232, i64 2)
  %1233 = getelementptr [7 x i8], [7 x i8]* @.str358, i32 0, i32 0
  %1234 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str358.c, i8* %1233, i64 6)
  %1235 = ptrtoint %nyx_string* %1234 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1220, i64 %1235, i64 2)
  %1236 = getelementptr [1 x i8], [1 x i8]* @.str359, i32 0, i32 0
  %1237 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str359.c, i8* %1236, i64 0)
  %1238 = ptrtoint %nyx_string* %1237 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1220, i64 %1238, i64 2)
  %1239 = getelementptr [1 x i8], [1 x i8]* @.str360, i32 0, i32 0
  %1240 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str360.c, i8* %1239, i64 0)
  %1241 = ptrtoint %nyx_string* %1240 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1220, i64 %1241, i64 2)
  %1242 = getelementptr [8 x i8], [8 x i8]* @.str361, i32 0, i32 0
  %1243 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str361.c, i8* %1242, i64 7)
  %1244 = ptrtoint %nyx_string* %1243 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1220, i64 %1244, i64 2)
  %1245 = getelementptr [1 x i8], [1 x i8]* @.str362, i32 0, i32 0
  %1246 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str362.c, i8* %1245, i64 0)
  %1247 = ptrtoint %nyx_string* %1246 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1220, i64 %1247, i64 2)
  %1248 = getelementptr [1 x i8], [1 x i8]* @.str363, i32 0, i32 0
  %1249 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str363.c, i8* %1248, i64 0)
  %1250 = ptrtoint %nyx_string* %1249 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1220, i64 %1250, i64 2)
  %1251 = getelementptr [98 x i8], [98 x i8]* @.str364, i32 0, i32 0
  %1252 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str364.c, i8* %1251, i64 97)
  %1253 = ptrtoint %nyx_string* %1252 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1220, i64 %1253, i64 2)
  %1254 = getelementptr [106 x i8], [106 x i8]* @.str365, i32 0, i32 0
  %1255 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str365.c, i8* %1254, i64 105)
  %1256 = ptrtoint %nyx_string* %1255 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1220, i64 %1256, i64 2)
  %1257 = ptrtoint { i64, i8* }* %1220 to i64
  call void @nyx_array_push({ i64, i8* }* %1219, i64 %1257)
  %1258 = load { i64, i8* }*, { i64, i8* }** %87
  %1259 = call { i64, i8* }* @nyx_array_new_ptr()
  %1260 = getelementptr [21 x i8], [21 x i8]* @.str366, i32 0, i32 0
  %1261 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str366.c, i8* %1260, i64 20)
  %1262 = ptrtoint %nyx_string* %1261 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1259, i64 %1262, i64 2)
  %1263 = getelementptr [6 x i8], [6 x i8]* @.str367, i32 0, i32 0
  %1264 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str367.c, i8* %1263, i64 5)
  %1265 = ptrtoint %nyx_string* %1264 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1259, i64 %1265, i64 2)
  %1266 = getelementptr [4 x i8], [4 x i8]* @.str368, i32 0, i32 0
  %1267 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str368.c, i8* %1266, i64 3)
  %1268 = ptrtoint %nyx_string* %1267 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1259, i64 %1268, i64 2)
  %1269 = getelementptr [7 x i8], [7 x i8]* @.str369, i32 0, i32 0
  %1270 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str369.c, i8* %1269, i64 6)
  %1271 = ptrtoint %nyx_string* %1270 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1259, i64 %1271, i64 2)
  %1272 = getelementptr [7 x i8], [7 x i8]* @.str370, i32 0, i32 0
  %1273 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str370.c, i8* %1272, i64 6)
  %1274 = ptrtoint %nyx_string* %1273 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1259, i64 %1274, i64 2)
  %1275 = getelementptr [1 x i8], [1 x i8]* @.str371, i32 0, i32 0
  %1276 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str371.c, i8* %1275, i64 0)
  %1277 = ptrtoint %nyx_string* %1276 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1259, i64 %1277, i64 2)
  %1278 = getelementptr [1 x i8], [1 x i8]* @.str372, i32 0, i32 0
  %1279 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str372.c, i8* %1278, i64 0)
  %1280 = ptrtoint %nyx_string* %1279 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1259, i64 %1280, i64 2)
  %1281 = getelementptr [6 x i8], [6 x i8]* @.str373, i32 0, i32 0
  %1282 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str373.c, i8* %1281, i64 5)
  %1283 = ptrtoint %nyx_string* %1282 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1259, i64 %1283, i64 2)
  %1284 = getelementptr [1 x i8], [1 x i8]* @.str374, i32 0, i32 0
  %1285 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str374.c, i8* %1284, i64 0)
  %1286 = ptrtoint %nyx_string* %1285 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1259, i64 %1286, i64 2)
  %1287 = getelementptr [1 x i8], [1 x i8]* @.str375, i32 0, i32 0
  %1288 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str375.c, i8* %1287, i64 0)
  %1289 = ptrtoint %nyx_string* %1288 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1259, i64 %1289, i64 2)
  %1290 = getelementptr [68 x i8], [68 x i8]* @.str376, i32 0, i32 0
  %1291 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str376.c, i8* %1290, i64 67)
  %1292 = ptrtoint %nyx_string* %1291 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1259, i64 %1292, i64 2)
  %1293 = getelementptr [75 x i8], [75 x i8]* @.str377, i32 0, i32 0
  %1294 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str377.c, i8* %1293, i64 74)
  %1295 = ptrtoint %nyx_string* %1294 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1259, i64 %1295, i64 2)
  %1296 = ptrtoint { i64, i8* }* %1259 to i64
  call void @nyx_array_push({ i64, i8* }* %1258, i64 %1296)
  %1297 = load { i64, i8* }*, { i64, i8* }** %87
  %1298 = call { i64, i8* }* @nyx_array_new_ptr()
  %1299 = getelementptr [18 x i8], [18 x i8]* @.str378, i32 0, i32 0
  %1300 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str378.c, i8* %1299, i64 17)
  %1301 = ptrtoint %nyx_string* %1300 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1298, i64 %1301, i64 2)
  %1302 = getelementptr [6 x i8], [6 x i8]* @.str379, i32 0, i32 0
  %1303 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str379.c, i8* %1302, i64 5)
  %1304 = ptrtoint %nyx_string* %1303 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1298, i64 %1304, i64 2)
  %1305 = getelementptr [4 x i8], [4 x i8]* @.str380, i32 0, i32 0
  %1306 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str380.c, i8* %1305, i64 3)
  %1307 = ptrtoint %nyx_string* %1306 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1298, i64 %1307, i64 2)
  %1308 = getelementptr [7 x i8], [7 x i8]* @.str381, i32 0, i32 0
  %1309 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str381.c, i8* %1308, i64 6)
  %1310 = ptrtoint %nyx_string* %1309 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1298, i64 %1310, i64 2)
  %1311 = getelementptr [7 x i8], [7 x i8]* @.str382, i32 0, i32 0
  %1312 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str382.c, i8* %1311, i64 6)
  %1313 = ptrtoint %nyx_string* %1312 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1298, i64 %1313, i64 2)
  %1314 = getelementptr [1 x i8], [1 x i8]* @.str383, i32 0, i32 0
  %1315 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str383.c, i8* %1314, i64 0)
  %1316 = ptrtoint %nyx_string* %1315 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1298, i64 %1316, i64 2)
  %1317 = getelementptr [1 x i8], [1 x i8]* @.str384, i32 0, i32 0
  %1318 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str384.c, i8* %1317, i64 0)
  %1319 = ptrtoint %nyx_string* %1318 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1298, i64 %1319, i64 2)
  %1320 = getelementptr [17 x i8], [17 x i8]* @.str385, i32 0, i32 0
  %1321 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str385.c, i8* %1320, i64 16)
  %1322 = ptrtoint %nyx_string* %1321 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1298, i64 %1322, i64 2)
  %1323 = getelementptr [1 x i8], [1 x i8]* @.str386, i32 0, i32 0
  %1324 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str386.c, i8* %1323, i64 0)
  %1325 = ptrtoint %nyx_string* %1324 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1298, i64 %1325, i64 2)
  %1326 = getelementptr [39 x i8], [39 x i8]* @.str387, i32 0, i32 0
  %1327 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str387.c, i8* %1326, i64 38)
  %1328 = ptrtoint %nyx_string* %1327 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1298, i64 %1328, i64 2)
  %1329 = getelementptr [36 x i8], [36 x i8]* @.str388, i32 0, i32 0
  %1330 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str388.c, i8* %1329, i64 35)
  %1331 = ptrtoint %nyx_string* %1330 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1298, i64 %1331, i64 2)
  %1332 = getelementptr [45 x i8], [45 x i8]* @.str389, i32 0, i32 0
  %1333 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str389.c, i8* %1332, i64 44)
  %1334 = ptrtoint %nyx_string* %1333 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1298, i64 %1334, i64 2)
  %1335 = ptrtoint { i64, i8* }* %1298 to i64
  call void @nyx_array_push({ i64, i8* }* %1297, i64 %1335)
  %1336 = load { i64, i8* }*, { i64, i8* }** %87
  %1337 = call { i64, i8* }* @nyx_array_new_ptr()
  %1338 = getelementptr [15 x i8], [15 x i8]* @.str390, i32 0, i32 0
  %1339 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str390.c, i8* %1338, i64 14)
  %1340 = ptrtoint %nyx_string* %1339 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1337, i64 %1340, i64 2)
  %1341 = getelementptr [6 x i8], [6 x i8]* @.str391, i32 0, i32 0
  %1342 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str391.c, i8* %1341, i64 5)
  %1343 = ptrtoint %nyx_string* %1342 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1337, i64 %1343, i64 2)
  %1344 = getelementptr [4 x i8], [4 x i8]* @.str392, i32 0, i32 0
  %1345 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str392.c, i8* %1344, i64 3)
  %1346 = ptrtoint %nyx_string* %1345 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1337, i64 %1346, i64 2)
  %1347 = getelementptr [7 x i8], [7 x i8]* @.str393, i32 0, i32 0
  %1348 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str393.c, i8* %1347, i64 6)
  %1349 = ptrtoint %nyx_string* %1348 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1337, i64 %1349, i64 2)
  %1350 = getelementptr [7 x i8], [7 x i8]* @.str394, i32 0, i32 0
  %1351 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str394.c, i8* %1350, i64 6)
  %1352 = ptrtoint %nyx_string* %1351 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1337, i64 %1352, i64 2)
  %1353 = getelementptr [1 x i8], [1 x i8]* @.str395, i32 0, i32 0
  %1354 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str395.c, i8* %1353, i64 0)
  %1355 = ptrtoint %nyx_string* %1354 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1337, i64 %1355, i64 2)
  %1356 = getelementptr [1 x i8], [1 x i8]* @.str396, i32 0, i32 0
  %1357 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str396.c, i8* %1356, i64 0)
  %1358 = ptrtoint %nyx_string* %1357 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1337, i64 %1358, i64 2)
  %1359 = getelementptr [10 x i8], [10 x i8]* @.str397, i32 0, i32 0
  %1360 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str397.c, i8* %1359, i64 9)
  %1361 = ptrtoint %nyx_string* %1360 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1337, i64 %1361, i64 2)
  %1362 = getelementptr [23 x i8], [23 x i8]* @.str398, i32 0, i32 0
  %1363 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str398.c, i8* %1362, i64 22)
  %1364 = ptrtoint %nyx_string* %1363 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1337, i64 %1364, i64 2)
  %1365 = getelementptr [1 x i8], [1 x i8]* @.str399, i32 0, i32 0
  %1366 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str399.c, i8* %1365, i64 0)
  %1367 = ptrtoint %nyx_string* %1366 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1337, i64 %1367, i64 2)
  %1368 = getelementptr [138 x i8], [138 x i8]* @.str400, i32 0, i32 0
  %1369 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str400.c, i8* %1368, i64 137)
  %1370 = ptrtoint %nyx_string* %1369 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1337, i64 %1370, i64 2)
  %1371 = getelementptr [149 x i8], [149 x i8]* @.str401, i32 0, i32 0
  %1372 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str401.c, i8* %1371, i64 148)
  %1373 = ptrtoint %nyx_string* %1372 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1337, i64 %1373, i64 2)
  %1374 = ptrtoint { i64, i8* }* %1337 to i64
  call void @nyx_array_push({ i64, i8* }* %1336, i64 %1374)
  %1375 = load { i64, i8* }*, { i64, i8* }** %87
  %1376 = call { i64, i8* }* @nyx_array_new_ptr()
  %1377 = getelementptr [24 x i8], [24 x i8]* @.str402, i32 0, i32 0
  %1378 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str402.c, i8* %1377, i64 23)
  %1379 = ptrtoint %nyx_string* %1378 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1376, i64 %1379, i64 2)
  %1380 = getelementptr [6 x i8], [6 x i8]* @.str403, i32 0, i32 0
  %1381 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str403.c, i8* %1380, i64 5)
  %1382 = ptrtoint %nyx_string* %1381 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1376, i64 %1382, i64 2)
  %1383 = getelementptr [4 x i8], [4 x i8]* @.str404, i32 0, i32 0
  %1384 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str404.c, i8* %1383, i64 3)
  %1385 = ptrtoint %nyx_string* %1384 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1376, i64 %1385, i64 2)
  %1386 = getelementptr [8 x i8], [8 x i8]* @.str405, i32 0, i32 0
  %1387 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str405.c, i8* %1386, i64 7)
  %1388 = ptrtoint %nyx_string* %1387 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1376, i64 %1388, i64 2)
  %1389 = getelementptr [8 x i8], [8 x i8]* @.str406, i32 0, i32 0
  %1390 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str406.c, i8* %1389, i64 7)
  %1391 = ptrtoint %nyx_string* %1390 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1376, i64 %1391, i64 2)
  %1392 = getelementptr [1 x i8], [1 x i8]* @.str407, i32 0, i32 0
  %1393 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str407.c, i8* %1392, i64 0)
  %1394 = ptrtoint %nyx_string* %1393 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1376, i64 %1394, i64 2)
  %1395 = getelementptr [1 x i8], [1 x i8]* @.str408, i32 0, i32 0
  %1396 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str408.c, i8* %1395, i64 0)
  %1397 = ptrtoint %nyx_string* %1396 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1376, i64 %1397, i64 2)
  %1398 = getelementptr [1 x i8], [1 x i8]* @.str409, i32 0, i32 0
  %1399 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str409.c, i8* %1398, i64 0)
  %1400 = ptrtoint %nyx_string* %1399 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1376, i64 %1400, i64 2)
  %1401 = getelementptr [36 x i8], [36 x i8]* @.str410, i32 0, i32 0
  %1402 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str410.c, i8* %1401, i64 35)
  %1403 = ptrtoint %nyx_string* %1402 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1376, i64 %1403, i64 2)
  %1404 = getelementptr [76 x i8], [76 x i8]* @.str411, i32 0, i32 0
  %1405 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str411.c, i8* %1404, i64 75)
  %1406 = ptrtoint %nyx_string* %1405 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1376, i64 %1406, i64 2)
  %1407 = getelementptr [46 x i8], [46 x i8]* @.str412, i32 0, i32 0
  %1408 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str412.c, i8* %1407, i64 45)
  %1409 = ptrtoint %nyx_string* %1408 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1376, i64 %1409, i64 2)
  %1410 = getelementptr [53 x i8], [53 x i8]* @.str413, i32 0, i32 0
  %1411 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str413.c, i8* %1410, i64 52)
  %1412 = ptrtoint %nyx_string* %1411 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1376, i64 %1412, i64 2)
  %1413 = ptrtoint { i64, i8* }* %1376 to i64
  call void @nyx_array_push({ i64, i8* }* %1375, i64 %1413)
  %1414 = load { i64, i8* }*, { i64, i8* }** %87
  %1415 = call { i64, i8* }* @nyx_array_new_ptr()
  %1416 = getelementptr [26 x i8], [26 x i8]* @.str414, i32 0, i32 0
  %1417 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str414.c, i8* %1416, i64 25)
  %1418 = ptrtoint %nyx_string* %1417 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1415, i64 %1418, i64 2)
  %1419 = getelementptr [6 x i8], [6 x i8]* @.str415, i32 0, i32 0
  %1420 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str415.c, i8* %1419, i64 5)
  %1421 = ptrtoint %nyx_string* %1420 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1415, i64 %1421, i64 2)
  %1422 = getelementptr [4 x i8], [4 x i8]* @.str416, i32 0, i32 0
  %1423 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str416.c, i8* %1422, i64 3)
  %1424 = ptrtoint %nyx_string* %1423 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1415, i64 %1424, i64 2)
  %1425 = getelementptr [8 x i8], [8 x i8]* @.str417, i32 0, i32 0
  %1426 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str417.c, i8* %1425, i64 7)
  %1427 = ptrtoint %nyx_string* %1426 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1415, i64 %1427, i64 2)
  %1428 = getelementptr [8 x i8], [8 x i8]* @.str418, i32 0, i32 0
  %1429 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str418.c, i8* %1428, i64 7)
  %1430 = ptrtoint %nyx_string* %1429 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1415, i64 %1430, i64 2)
  %1431 = getelementptr [1 x i8], [1 x i8]* @.str419, i32 0, i32 0
  %1432 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str419.c, i8* %1431, i64 0)
  %1433 = ptrtoint %nyx_string* %1432 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1415, i64 %1433, i64 2)
  %1434 = getelementptr [1 x i8], [1 x i8]* @.str420, i32 0, i32 0
  %1435 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str420.c, i8* %1434, i64 0)
  %1436 = ptrtoint %nyx_string* %1435 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1415, i64 %1436, i64 2)
  %1437 = getelementptr [10 x i8], [10 x i8]* @.str421, i32 0, i32 0
  %1438 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str421.c, i8* %1437, i64 9)
  %1439 = ptrtoint %nyx_string* %1438 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1415, i64 %1439, i64 2)
  %1440 = getelementptr [1 x i8], [1 x i8]* @.str422, i32 0, i32 0
  %1441 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str422.c, i8* %1440, i64 0)
  %1442 = ptrtoint %nyx_string* %1441 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1415, i64 %1442, i64 2)
  %1443 = getelementptr [50 x i8], [50 x i8]* @.str423, i32 0, i32 0
  %1444 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str423.c, i8* %1443, i64 49)
  %1445 = ptrtoint %nyx_string* %1444 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1415, i64 %1445, i64 2)
  %1446 = getelementptr [132 x i8], [132 x i8]* @.str424, i32 0, i32 0
  %1447 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str424.c, i8* %1446, i64 131)
  %1448 = ptrtoint %nyx_string* %1447 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1415, i64 %1448, i64 2)
  %1449 = getelementptr [145 x i8], [145 x i8]* @.str425, i32 0, i32 0
  %1450 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str425.c, i8* %1449, i64 144)
  %1451 = ptrtoint %nyx_string* %1450 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1415, i64 %1451, i64 2)
  %1452 = ptrtoint { i64, i8* }* %1415 to i64
  call void @nyx_array_push({ i64, i8* }* %1414, i64 %1452)
  %1453 = load { i64, i8* }*, { i64, i8* }** %87
  ret { i64, i8* }* %1453
}

define %nyx_string* @gotcha_field(
{ i64, i8* }* %row.param, %nyx_string* %name.param) {
  %row.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %row.param, { i64, i8* }** %row.ptr
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %1454 = sub i64 0, 1
  %1455 = alloca i64
  store i64 %1454, i64* %1455
  %1456 = load %nyx_string*, %nyx_string** %name.ptr
  %1457 = getelementptr [3 x i8], [3 x i8]* @.str426, i32 0, i32 0
  %1458 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str426.c, i8* %1457, i64 2)
  %1459 = call i1 @nyx_string_equals(%nyx_string* %1456, %nyx_string* %1458)
  br i1 %1459, label %then24, label %else25
then24:
  store i64 0, i64* %1455
  br label %merge26
else25:
  br label %merge26
merge26:
  %1460 = load %nyx_string*, %nyx_string** %name.ptr
  %1461 = getelementptr [5 x i8], [5 x i8]* @.str427, i32 0, i32 0
  %1462 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str427.c, i8* %1461, i64 4)
  %1463 = call i1 @nyx_string_equals(%nyx_string* %1460, %nyx_string* %1462)
  br i1 %1463, label %then27, label %else28
then27:
  store i64 1, i64* %1455
  br label %merge29
else28:
  br label %merge29
merge29:
  %1464 = load %nyx_string*, %nyx_string** %name.ptr
  %1465 = getelementptr [9 x i8], [9 x i8]* @.str428, i32 0, i32 0
  %1466 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str428.c, i8* %1465, i64 8)
  %1467 = call i1 @nyx_string_equals(%nyx_string* %1464, %nyx_string* %1466)
  br i1 %1467, label %then30, label %else31
then30:
  store i64 2, i64* %1455
  br label %merge32
else31:
  br label %merge32
merge32:
  %1468 = load %nyx_string*, %nyx_string** %name.ptr
  %1469 = getelementptr [6 x i8], [6 x i8]* @.str429, i32 0, i32 0
  %1470 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str429.c, i8* %1469, i64 5)
  %1471 = call i1 @nyx_string_equals(%nyx_string* %1468, %nyx_string* %1470)
  br i1 %1471, label %then33, label %else34
then33:
  store i64 3, i64* %1455
  br label %merge35
else34:
  br label %merge35
merge35:
  %1472 = load %nyx_string*, %nyx_string** %name.ptr
  %1473 = getelementptr [9 x i8], [9 x i8]* @.str430, i32 0, i32 0
  %1474 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str430.c, i8* %1473, i64 8)
  %1475 = call i1 @nyx_string_equals(%nyx_string* %1472, %nyx_string* %1474)
  br i1 %1475, label %then36, label %else37
then36:
  store i64 4, i64* %1455
  br label %merge38
else37:
  br label %merge38
merge38:
  %1476 = load %nyx_string*, %nyx_string** %name.ptr
  %1477 = getelementptr [8 x i8], [8 x i8]* @.str431, i32 0, i32 0
  %1478 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str431.c, i8* %1477, i64 7)
  %1479 = call i1 @nyx_string_equals(%nyx_string* %1476, %nyx_string* %1478)
  br i1 %1479, label %then39, label %else40
then39:
  store i64 5, i64* %1455
  br label %merge41
else40:
  br label %merge41
merge41:
  %1480 = load %nyx_string*, %nyx_string** %name.ptr
  %1481 = getelementptr [9 x i8], [9 x i8]* @.str432, i32 0, i32 0
  %1482 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str432.c, i8* %1481, i64 8)
  %1483 = call i1 @nyx_string_equals(%nyx_string* %1480, %nyx_string* %1482)
  br i1 %1483, label %then42, label %else43
then42:
  store i64 6, i64* %1455
  br label %merge44
else43:
  br label %merge44
merge44:
  %1484 = load %nyx_string*, %nyx_string** %name.ptr
  %1485 = getelementptr [7 x i8], [7 x i8]* @.str433, i32 0, i32 0
  %1486 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str433.c, i8* %1485, i64 6)
  %1487 = call i1 @nyx_string_equals(%nyx_string* %1484, %nyx_string* %1486)
  br i1 %1487, label %then45, label %else46
then45:
  store i64 7, i64* %1455
  br label %merge47
else46:
  br label %merge47
merge47:
  %1488 = load %nyx_string*, %nyx_string** %name.ptr
  %1489 = getelementptr [5 x i8], [5 x i8]* @.str434, i32 0, i32 0
  %1490 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str434.c, i8* %1489, i64 4)
  %1491 = call i1 @nyx_string_equals(%nyx_string* %1488, %nyx_string* %1490)
  br i1 %1491, label %then48, label %else49
then48:
  store i64 8, i64* %1455
  br label %merge50
else49:
  br label %merge50
merge50:
  %1492 = load %nyx_string*, %nyx_string** %name.ptr
  %1493 = getelementptr [5 x i8], [5 x i8]* @.str435, i32 0, i32 0
  %1494 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str435.c, i8* %1493, i64 4)
  %1495 = call i1 @nyx_string_equals(%nyx_string* %1492, %nyx_string* %1494)
  br i1 %1495, label %then51, label %else52
then51:
  store i64 9, i64* %1455
  br label %merge53
else52:
  br label %merge53
merge53:
  %1496 = load %nyx_string*, %nyx_string** %name.ptr
  %1497 = getelementptr [9 x i8], [9 x i8]* @.str436, i32 0, i32 0
  %1498 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str436.c, i8* %1497, i64 8)
  %1499 = call i1 @nyx_string_equals(%nyx_string* %1496, %nyx_string* %1498)
  br i1 %1499, label %then54, label %else55
then54:
  store i64 10, i64* %1455
  br label %merge56
else55:
  br label %merge56
merge56:
  %1500 = load %nyx_string*, %nyx_string** %name.ptr
  %1501 = getelementptr [9 x i8], [9 x i8]* @.str437, i32 0, i32 0
  %1502 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str437.c, i8* %1501, i64 8)
  %1503 = call i1 @nyx_string_equals(%nyx_string* %1500, %nyx_string* %1502)
  br i1 %1503, label %then57, label %else58
then57:
  store i64 11, i64* %1455
  br label %merge59
else58:
  br label %merge59
merge59:
  %1504 = load i64, i64* %1455
  %1505 = icmp slt i64 %1504, 0
  br i1 %1505, label %then60, label %else61
then60:
  %1506 = getelementptr [1 x i8], [1 x i8]* @.str438, i32 0, i32 0
  %1507 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str438.c, i8* %1506, i64 0)
  ret %nyx_string* %1507
else61:
  br label %merge62
merge62:
  %1508 = load { i64, i8* }*, { i64, i8* }** %row.ptr
  %1509 = load i64, i64* %1455
  %1510 = call i64 @nyx_array_get_checked({ i64, i8* }* %1508, i64 %1509, i64 2)
  %1511 = inttoptr i64 %1510 to %nyx_string*
  %1512 = alloca %nyx_string*
  store %nyx_string* %1511, %nyx_string** %1512
  %1513 = load %nyx_string*, %nyx_string** %1512
  ret %nyx_string* %1513
}


attributes #0 = { returns_twice }

