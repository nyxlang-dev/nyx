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
@.str6 = private unnamed_addr constant [18 x i8] c"fn-callback-typed\00"
@.str6.c = internal global %nyx_string* null
@.str7 = private unnamed_addr constant [5 x i8] c"trap\00"
@.str7.c = internal global %nyx_string* null
@.str8 = private unnamed_addr constant [13 x i8] c"silent-wrong\00"
@.str8.c = internal global %nyx_string* null
@.str9 = private unnamed_addr constant [7 x i8] c"0.17.1\00"
@.str9.c = internal global %nyx_string* null
@.str10 = private unnamed_addr constant [1 x i8] c"\00"
@.str10.c = internal global %nyx_string* null
@.str11 = private unnamed_addr constant [1 x i8] c"\00"
@.str11.c = internal global %nyx_string* null
@.str12 = private unnamed_addr constant [1 x i8] c"\00"
@.str12.c = internal global %nyx_string* null
@.str13 = private unnamed_addr constant [9 x i8] c"Fn(Type)\00"
@.str13.c = internal global %nyx_string* null
@.str14 = private unnamed_addr constant [1 x i8] c"\00"
@.str14.c = internal global %nyx_string* null
@.str15 = private unnamed_addr constant [39 x i8] c"tests/ai-first/25-fn-callback-typed.nx\00"
@.str15.c = internal global %nyx_string* null
@.str16 = private unnamed_addr constant [36 x i8] c"Callbacks: prefer `Fn(Type) -> Ret`\00"
@.str16.c = internal global %nyx_string* null
@.str17 = private unnamed_addr constant [47 x i8] c"Callbacks: conviene preferir `Fn(Type) -> Ret`\00"
@.str17.c = internal global %nyx_string* null
@.str18 = private unnamed_addr constant [21 x i8] c"nested-map-from-call\00"
@.str18.c = internal global %nyx_string* null
@.str19 = private unnamed_addr constant [5 x i8] c"trap\00"
@.str19.c = internal global %nyx_string* null
@.str20 = private unnamed_addr constant [13 x i8] c"silent-wrong\00"
@.str20.c = internal global %nyx_string* null
@.str21 = private unnamed_addr constant [8 x i8] c"0.22.18\00"
@.str21.c = internal global %nyx_string* null
@.str22 = private unnamed_addr constant [1 x i8] c"\00"
@.str22.c = internal global %nyx_string* null
@.str23 = private unnamed_addr constant [1 x i8] c"\00"
@.str23.c = internal global %nyx_string* null
@.str24 = private unnamed_addr constant [1 x i8] c"\00"
@.str24.c = internal global %nyx_string* null
@.str25 = private unnamed_addr constant [11 x i8] c"user::name\00"
@.str25.c = internal global %nyx_string* null
@.str26 = private unnamed_addr constant [1 x i8] c"\00"
@.str26.c = internal global %nyx_string* null
@.str27 = private unnamed_addr constant [38 x i8] c"tests/ai-first/13-map-literal-keys.nx\00"
@.str27.c = internal global %nyx_string* null
@.str28 = private unnamed_addr constant [161 x i8] c"Nested Maps: OK for a variable or an inline literal, CRASHES for a function's return value — when in doubt use flat keys: `map.insert(\22user::name\22, \22alice\22)`.\00"
@.str28.c = internal global %nyx_string* null
@.str29 = private unnamed_addr constant [179 x i8] c"Maps anidados: funciona con una variable o un literal inline, pero CRASHEA con el retorno de una función — ante la duda usa claves planas: `map.insert(\22user::name\22, \22alice\22)`.\00"
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
@.str54 = private unnamed_addr constant [27 x i8] c"clock-domain-time-builtins\00"
@.str54.c = internal global %nyx_string* null
@.str55 = private unnamed_addr constant [5 x i8] c"trap\00"
@.str55.c = internal global %nyx_string* null
@.str56 = private unnamed_addr constant [13 x i8] c"silent-wrong\00"
@.str56.c = internal global %nyx_string* null
@.str57 = private unnamed_addr constant [7 x i8] c"0.31.0\00"
@.str57.c = internal global %nyx_string* null
@.str58 = private unnamed_addr constant [1 x i8] c"\00"
@.str58.c = internal global %nyx_string* null
@.str59 = private unnamed_addr constant [35 x i8] c"(^|[^A-Za-z0-9_])time_epoch\5c(\5c) */\00"
@.str59.c = internal global %nyx_string* null
@.str60 = private unnamed_addr constant [5 x i8] c"W109\00"
@.str60.c = internal global %nyx_string* null
@.str61 = private unnamed_addr constant [11 x i8] c"time_epoch\00"
@.str61.c = internal global %nyx_string* null
@.str62 = private unnamed_addr constant [1 x i8] c"\00"
@.str62.c = internal global %nyx_string* null
@.str63 = private unnamed_addr constant [48 x i8] c"tests/compiler/systems/test-410-clock-domain.nx\00"
@.str63.c = internal global %nyx_string* null
@.str64 = private unnamed_addr constant [308 x i8] c"`time_epoch()` (and its exact alias `time()`) is the wall clock (seconds since the Unix epoch); `time_ms()` and `time_us()` are the MONOTONIC clock (since the machine booted) — four names for two clocks, and the shared `time_` prefix hides which is which, so dividing any of them is almost always the bug.\00"
@.str64.c = internal global %nyx_string* null
@.str65 = private unnamed_addr constant [335 x i8] c"`time_epoch()` (y su alias exacto `time()`) es el reloj de pared (segundos desde el epoch Unix); `time_ms()` y `time_us()` son el reloj MONOTÓNICO (desde que arrancó la máquina) — cuatro nombres para dos relojes, y el prefijo `time_` compartido esconde cuál es cuál, así que dividir cualquiera de ellos es casi siempre el bug.\00"
@.str65.c = internal global %nyx_string* null
@.str66 = private unnamed_addr constant [19 x i8] c"int-wraps-silently\00"
@.str66.c = internal global %nyx_string* null
@.str67 = private unnamed_addr constant [5 x i8] c"trap\00"
@.str67.c = internal global %nyx_string* null
@.str68 = private unnamed_addr constant [13 x i8] c"silent-wrong\00"
@.str68.c = internal global %nyx_string* null
@.str69 = private unnamed_addr constant [7 x i8] c"0.31.0\00"
@.str69.c = internal global %nyx_string* null
@.str70 = private unnamed_addr constant [1 x i8] c"\00"
@.str70.c = internal global %nyx_string* null
@.str71 = private unnamed_addr constant [1 x i8] c"\00"
@.str71.c = internal global %nyx_string* null
@.str72 = private unnamed_addr constant [1 x i8] c"\00"
@.str72.c = internal global %nyx_string* null
@.str73 = private unnamed_addr constant [11 x i8] c"wraparound\00"
@.str73.c = internal global %nyx_string* null
@.str74 = private unnamed_addr constant [1 x i8] c"\00"
@.str74.c = internal global %nyx_string* null
@.str75 = private unnamed_addr constant [51 x i8] c"tests/compiler/language/test-385-int-wraparound.nx\00"
@.str75.c = internal global %nyx_string* null
@.str76 = private unnamed_addr constant [272 x i8] c"`int` arithmetic (`+`/`-`/`*`) overflows into silent wraparound (two's complement) — use `checked_add`/`checked_sub`/`checked_mul`/`checked_div` to DETECT it, and `mul_div_round(a, b, c, mode)` for the `a*b/c` shape, which computes the intermediate product in 128 bits.\00"
@.str76.c = internal global %nyx_string* null
@.str77 = private unnamed_addr constant [277 x i8] c"La aritmética de `int` (`+`/`-`/`*`) desborda en wraparound silencioso (complemento a dos) — usa `checked_add`/`checked_sub`/`checked_mul`/`checked_div` para DETECTARLO, y `mul_div_round(a, b, c, modo)` para la forma `a*b/c`, que calcula el producto intermedio en 128 bits.\00"
@.str77.c = internal global %nyx_string* null
@.str78 = private unnamed_addr constant [23 x i8] c"pg-require-no-verifica\00"
@.str78.c = internal global %nyx_string* null
@.str79 = private unnamed_addr constant [5 x i8] c"trap\00"
@.str79.c = internal global %nyx_string* null
@.str80 = private unnamed_addr constant [13 x i8] c"silent-wrong\00"
@.str80.c = internal global %nyx_string* null
@.str81 = private unnamed_addr constant [7 x i8] c"0.31.0\00"
@.str81.c = internal global %nyx_string* null
@.str82 = private unnamed_addr constant [1 x i8] c"\00"
@.str82.c = internal global %nyx_string* null
@.str83 = private unnamed_addr constant [1 x i8] c"\00"
@.str83.c = internal global %nyx_string* null
@.str84 = private unnamed_addr constant [1 x i8] c"\00"
@.str84.c = internal global %nyx_string* null
@.str85 = private unnamed_addr constant [8 x i8] c"sslmode\00"
@.str85.c = internal global %nyx_string* null
@.str86 = private unnamed_addr constant [1 x i8] c"\00"
@.str86.c = internal global %nyx_string* null
@.str87 = private unnamed_addr constant [25 x i8] c"tests/postgres/06-tls.nx\00"
@.str87.c = internal global %nyx_string* null
@.str88 = private unnamed_addr constant [150 x i8] c"`sslmode=require` encrypts the connection but does NOT verify the server's certificate — it will happily complete a TLS handshake with an impostor.\00"
@.str88.c = internal global %nyx_string* null
@.str89 = private unnamed_addr constant [138 x i8] c"`sslmode=require` cifra la conexión pero NO verifica el certificado del servidor: completa el handshake TLS con un impostor sin chistar.\00"
@.str89.c = internal global %nyx_string* null
@.str90 = private unnamed_addr constant [14 x i8] c"sort-in-place\00"
@.str90.c = internal global %nyx_string* null
@.str91 = private unnamed_addr constant [5 x i8] c"trap\00"
@.str91.c = internal global %nyx_string* null
@.str92 = private unnamed_addr constant [13 x i8] c"silent-wrong\00"
@.str92.c = internal global %nyx_string* null
@.str93 = private unnamed_addr constant [7 x i8] c"0.39.0\00"
@.str93.c = internal global %nyx_string* null
@.str94 = private unnamed_addr constant [1 x i8] c"\00"
@.str94.c = internal global %nyx_string* null
@.str95 = private unnamed_addr constant [1 x i8] c"\00"
@.str95.c = internal global %nyx_string* null
@.str96 = private unnamed_addr constant [1 x i8] c"\00"
@.str96.c = internal global %nyx_string* null
@.str97 = private unnamed_addr constant [9 x i8] c"sort_str\00"
@.str97.c = internal global %nyx_string* null
@.str98 = private unnamed_addr constant [1 x i8] c"\00"
@.str98.c = internal global %nyx_string* null
@.str99 = private unnamed_addr constant [45 x i8] c"tests/ai-first/44-sort-ordena-en-el-lugar.nx\00"
@.str99.c = internal global %nyx_string* null
@.str100 = private unnamed_addr constant [115 x i8] c"`sort_int`, `sort_str` and `sort_by` sort THE ARRAY YOU PASS, in place, and return that same array — not a copy.\00"
@.str100.c = internal global %nyx_string* null
@.str101 = private unnamed_addr constant [125 x i8] c"`sort_int`, `sort_str` y `sort_by` ordenan EL ARREGLO QUE RECIBEN, en el lugar, y devuelven ese mismo arreglo, no una copia.\00"
@.str101.c = internal global %nyx_string* null
@.str102 = private unnamed_addr constant [27 x i8] c"ndarray-copy-shares-buffer\00"
@.str102.c = internal global %nyx_string* null
@.str103 = private unnamed_addr constant [5 x i8] c"trap\00"
@.str103.c = internal global %nyx_string* null
@.str104 = private unnamed_addr constant [13 x i8] c"silent-wrong\00"
@.str104.c = internal global %nyx_string* null
@.str105 = private unnamed_addr constant [7 x i8] c"0.45.0\00"
@.str105.c = internal global %nyx_string* null
@.str106 = private unnamed_addr constant [1 x i8] c"\00"
@.str106.c = internal global %nyx_string* null
@.str107 = private unnamed_addr constant [1 x i8] c"\00"
@.str107.c = internal global %nyx_string* null
@.str108 = private unnamed_addr constant [1 x i8] c"\00"
@.str108.c = internal global %nyx_string* null
@.str109 = private unnamed_addr constant [8 x i8] c"NDArray\00"
@.str109.c = internal global %nyx_string* null
@.str110 = private unnamed_addr constant [1 x i8] c"\00"
@.str110.c = internal global %nyx_string* null
@.str111 = private unnamed_addr constant [36 x i8] c"tests/ai-first/57-ndarray-basico.nx\00"
@.str111.c = internal global %nyx_string* null
@.str112 = private unnamed_addr constant [130 x i8] c"Copying an `NDArray` (passing it to a function, storing it in an `Array`) SHARES its buffer: use `copy()` for an independent one.\00"
@.str112.c = internal global %nyx_string* null
@.str113 = private unnamed_addr constant [127 x i8] c"Copiar un `NDArray` (pasarlo a una función, guardarlo en un `Array`) COMPARTE el buffer: usa `copy()` para uno independiente.\00"
@.str113.c = internal global %nyx_string* null
@.str114 = private unnamed_addr constant [18 x i8] c"await-float-gated\00"
@.str114.c = internal global %nyx_string* null
@.str115 = private unnamed_addr constant [5 x i8] c"rule\00"
@.str115.c = internal global %nyx_string* null
@.str116 = private unnamed_addr constant [5 x i8] c"loud\00"
@.str116.c = internal global %nyx_string* null
@.str117 = private unnamed_addr constant [7 x i8] c"0.18.2\00"
@.str117.c = internal global %nyx_string* null
@.str118 = private unnamed_addr constant [1 x i8] c"\00"
@.str118.c = internal global %nyx_string* null
@.str119 = private unnamed_addr constant [1 x i8] c"\00"
@.str119.c = internal global %nyx_string* null
@.str120 = private unnamed_addr constant [1 x i8] c"\00"
@.str120.c = internal global %nyx_string* null
@.str121 = private unnamed_addr constant [8 x i8] c"NYX1021\00"
@.str121.c = internal global %nyx_string* null
@.str122 = private unnamed_addr constant [1 x i8] c"\00"
@.str122.c = internal global %nyx_string* null
@.str123 = private unnamed_addr constant [49 x i8] c"tests/compiler/errors/test-async-float-return.nx\00"
@.str123.c = internal global %nyx_string* null
@.str124 = private unnamed_addr constant [59 x i8] c"`await` of a `float`-returning function is gated (NYX1021)\00"
@.str124.c = internal global %nyx_string* null
@.str125 = private unnamed_addr constant [73 x i8] c"El `await` de una función que retorna `float` está bloqueado (NYX1021)\00"
@.str125.c = internal global %nyx_string* null
@.str126 = private unnamed_addr constant [15 x i8] c"channel-is-map\00"
@.str126.c = internal global %nyx_string* null
@.str127 = private unnamed_addr constant [5 x i8] c"rule\00"
@.str127.c = internal global %nyx_string* null
@.str128 = private unnamed_addr constant [5 x i8] c"loud\00"
@.str128.c = internal global %nyx_string* null
@.str129 = private unnamed_addr constant [8 x i8] c"0.22.18\00"
@.str129.c = internal global %nyx_string* null
@.str130 = private unnamed_addr constant [1 x i8] c"\00"
@.str130.c = internal global %nyx_string* null
@.str131 = private unnamed_addr constant [25 x i8] c": *int *= *channel_new\5c(\00"
@.str131.c = internal global %nyx_string* null
@.str132 = private unnamed_addr constant [5 x i8] c"W104\00"
@.str132.c = internal global %nyx_string* null
@.str133 = private unnamed_addr constant [12 x i8] c"channel_new\00"
@.str133.c = internal global %nyx_string* null
@.str134 = private unnamed_addr constant [1 x i8] c"\00"
@.str134.c = internal global %nyx_string* null
@.str135 = private unnamed_addr constant [36 x i8] c"tests/ai-first/14-language-rules.nx\00"
@.str135.c = internal global %nyx_string* null
@.str136 = private unnamed_addr constant [85 x i8] c"Channels must be Map, not int: `let ch: Map = channel_new(10)`, never `let ch: int`.\00"
@.str136.c = internal global %nyx_string* null
@.str137 = private unnamed_addr constant [90 x i8] c"Los channels deben ser Map, no int: `let ch: Map = channel_new(10)`, nunca `let ch: int`.\00"
@.str137.c = internal global %nyx_string* null
@.str138 = private unnamed_addr constant [19 x i8] c"charat-returns-int\00"
@.str138.c = internal global %nyx_string* null
@.str139 = private unnamed_addr constant [5 x i8] c"rule\00"
@.str139.c = internal global %nyx_string* null
@.str140 = private unnamed_addr constant [5 x i8] c"loud\00"
@.str140.c = internal global %nyx_string* null
@.str141 = private unnamed_addr constant [8 x i8] c"0.22.18\00"
@.str141.c = internal global %nyx_string* null
@.str142 = private unnamed_addr constant [1 x i8] c"\00"
@.str142.c = internal global %nyx_string* null
@.str143 = private unnamed_addr constant [23 x i8] c"charAt\5c([^)]*\5c) *== *\22\00"
@.str143.c = internal global %nyx_string* null
@.str144 = private unnamed_addr constant [5 x i8] c"W103\00"
@.str144.c = internal global %nyx_string* null
@.str145 = private unnamed_addr constant [7 x i8] c"charAt\00"
@.str145.c = internal global %nyx_string* null
@.str146 = private unnamed_addr constant [1 x i8] c"\00"
@.str146.c = internal global %nyx_string* null
@.str147 = private unnamed_addr constant [36 x i8] c"tests/ai-first/14-language-rules.nx\00"
@.str147.c = internal global %nyx_string* null
@.str148 = private unnamed_addr constant [93 x i8] c"`charAt()` returns int (ASCII/codepoint), NOT String — compare with numbers: `if c == 65`.\00"
@.str148.c = internal global %nyx_string* null
@.str149 = private unnamed_addr constant [104 x i8] c"`charAt()` retorna int (ASCII/codepoint), NO String — hay que comparar contra números: `if c == 65`.\00"
@.str149.c = internal global %nyx_string* null
@.str150 = private unnamed_addr constant [20 x i8] c"enum-dot-not-colons\00"
@.str150.c = internal global %nyx_string* null
@.str151 = private unnamed_addr constant [5 x i8] c"rule\00"
@.str151.c = internal global %nyx_string* null
@.str152 = private unnamed_addr constant [5 x i8] c"loud\00"
@.str152.c = internal global %nyx_string* null
@.str153 = private unnamed_addr constant [8 x i8] c"0.22.18\00"
@.str153.c = internal global %nyx_string* null
@.str154 = private unnamed_addr constant [1 x i8] c"\00"
@.str154.c = internal global %nyx_string* null
@.str155 = private unnamed_addr constant [26 x i8] c"[A-Z][A-Za-z0-9_]*::[A-Z]\00"
@.str155.c = internal global %nyx_string* null
@.str156 = private unnamed_addr constant [5 x i8] c"W101\00"
@.str156.c = internal global %nyx_string* null
@.str157 = private unnamed_addr constant [13 x i8] c"Shape.Circle\00"
@.str157.c = internal global %nyx_string* null
@.str158 = private unnamed_addr constant [1 x i8] c"\00"
@.str158.c = internal global %nyx_string* null
@.str159 = private unnamed_addr constant [36 x i8] c"tests/ai-first/14-language-rules.nx\00"
@.str159.c = internal global %nyx_string* null
@.str160 = private unnamed_addr constant [78 x i8] c"Enum variants use `.`, not `::`: `Shape.Circle(5)`, never `Shape::Circle(5)`.\00"
@.str160.c = internal global %nyx_string* null
@.str161 = private unnamed_addr constant [86 x i8] c"Las variantes de enum usan `.`, no `::`: `Shape.Circle(5)`, nunca `Shape::Circle(5)`.\00"
@.str161.c = internal global %nyx_string* null
@.str162 = private unnamed_addr constant [24 x i8] c"map-literal-string-keys\00"
@.str162.c = internal global %nyx_string* null
@.str163 = private unnamed_addr constant [5 x i8] c"rule\00"
@.str163.c = internal global %nyx_string* null
@.str164 = private unnamed_addr constant [5 x i8] c"loud\00"
@.str164.c = internal global %nyx_string* null
@.str165 = private unnamed_addr constant [8 x i8] c"0.22.18\00"
@.str165.c = internal global %nyx_string* null
@.str166 = private unnamed_addr constant [1 x i8] c"\00"
@.str166.c = internal global %nyx_string* null
@.str167 = private unnamed_addr constant [27 x i8] c"= *\5c{ *[a-z_][a-z0-9_]* *:\00"
@.str167.c = internal global %nyx_string* null
@.str168 = private unnamed_addr constant [5 x i8] c"W102\00"
@.str168.c = internal global %nyx_string* null
@.str169 = private unnamed_addr constant [8 x i8] c"NYX0106\00"
@.str169.c = internal global %nyx_string* null
@.str170 = private unnamed_addr constant [32 x i8] c"map literal {} is NOT supported\00"
@.str170.c = internal global %nyx_string* null
@.str171 = private unnamed_addr constant [38 x i8] c"tests/ai-first/13-map-literal-keys.nx\00"
@.str171.c = internal global %nyx_string* null
@.str172 = private unnamed_addr constant [139 x i8] c"Map literal keys must be STRINGS: `{\22k\22: 1}` and `{}` work (v0.16), but `{ident: 1}` is NOT a map literal and fails loudly with `NYX0106`.\00"
@.str172.c = internal global %nyx_string* null
@.str173 = private unnamed_addr constant [159 x i8] c"Las claves de un map literal deben ser STRINGS: `{\22k\22: 1}` y `{}` funcionan (v0.16), pero `{ident: 1}` NO es un map literal y falla en voz alta con `NYX0106`.\00"
@.str173.c = internal global %nyx_string* null
@.str174 = private unnamed_addr constant [18 x i8] c"strings-are-bytes\00"
@.str174.c = internal global %nyx_string* null
@.str175 = private unnamed_addr constant [5 x i8] c"rule\00"
@.str175.c = internal global %nyx_string* null
@.str176 = private unnamed_addr constant [13 x i8] c"silent-wrong\00"
@.str176.c = internal global %nyx_string* null
@.str177 = private unnamed_addr constant [8 x i8] c"0.22.18\00"
@.str177.c = internal global %nyx_string* null
@.str178 = private unnamed_addr constant [1 x i8] c"\00"
@.str178.c = internal global %nyx_string* null
@.str179 = private unnamed_addr constant [1 x i8] c"\00"
@.str179.c = internal global %nyx_string* null
@.str180 = private unnamed_addr constant [1 x i8] c"\00"
@.str180.c = internal global %nyx_string* null
@.str181 = private unnamed_addr constant [6 x i8] c"BYTES\00"
@.str181.c = internal global %nyx_string* null
@.str182 = private unnamed_addr constant [1 x i8] c"\00"
@.str182.c = internal global %nyx_string* null
@.str183 = private unnamed_addr constant [36 x i8] c"tests/ai-first/14-language-rules.nx\00"
@.str183.c = internal global %nyx_string* null
@.str184 = private unnamed_addr constant [176 x i8] c"String API is byte-based (v0.14): `length()`, `substring()`, `indexOf()` and `charAt()` all operate on BYTES — for *character* counts use `char_length()` (UTF-8 codepoints).\00"
@.str184.c = internal global %nyx_string* null
@.str185 = private unnamed_addr constant [197 x i8] c"La API de String opera sobre BYTES (v0.14): `length()`, `substring()`, `indexOf()` y `charAt()` operan todas sobre BYTES — para conteos de *caracteres* se usa `char_length()` (codepoints UTF-8).\00"
@.str185.c = internal global %nyx_string* null
@.str186 = private unnamed_addr constant [18 x i8] c"check-bind-return\00"
@.str186.c = internal global %nyx_string* null
@.str187 = private unnamed_addr constant [5 x i8] c"rule\00"
@.str187.c = internal global %nyx_string* null
@.str188 = private unnamed_addr constant [13 x i8] c"silent-wrong\00"
@.str188.c = internal global %nyx_string* null
@.str189 = private unnamed_addr constant [7 x i8] c"0.24.3\00"
@.str189.c = internal global %nyx_string* null
@.str190 = private unnamed_addr constant [1 x i8] c"\00"
@.str190.c = internal global %nyx_string* null
@.str191 = private unnamed_addr constant [38 x i8] c"^ *(http_serve|tcp_listen|udp_bind)\5c(\00"
@.str191.c = internal global %nyx_string* null
@.str192 = private unnamed_addr constant [5 x i8] c"W107\00"
@.str192.c = internal global %nyx_string* null
@.str193 = private unnamed_addr constant [11 x i8] c"tcp_listen\00"
@.str193.c = internal global %nyx_string* null
@.str194 = private unnamed_addr constant [1 x i8] c"\00"
@.str194.c = internal global %nyx_string* null
@.str195 = private unnamed_addr constant [39 x i8] c"tests/ai-first/21-bind-failure-loud.nx\00"
@.str195.c = internal global %nyx_string* null
@.str196 = private unnamed_addr constant [151 x i8] c"Check the return of `http_serve`/`tcp_listen`/`udp_bind`: a failed bind (port taken) returns `-1` — `if http_serve(8080, handler) < 0 { return 1 }`.\00"
@.str196.c = internal global %nyx_string* null
@.str197 = private unnamed_addr constant [170 x i8] c"Hay que chequear el retorno de `http_serve`/`tcp_listen`/`udp_bind`: un bind que falla (puerto ocupado) retorna `-1` — `if http_serve(8080, handler) < 0 { return 1 }`.\00"
@.str197.c = internal global %nyx_string* null
@.str198 = private unnamed_addr constant [22 x i8] c"assert-aborts-process\00"
@.str198.c = internal global %nyx_string* null
@.str199 = private unnamed_addr constant [5 x i8] c"rule\00"
@.str199.c = internal global %nyx_string* null
@.str200 = private unnamed_addr constant [5 x i8] c"loud\00"
@.str200.c = internal global %nyx_string* null
@.str201 = private unnamed_addr constant [7 x i8] c"0.31.0\00"
@.str201.c = internal global %nyx_string* null
@.str202 = private unnamed_addr constant [1 x i8] c"\00"
@.str202.c = internal global %nyx_string* null
@.str203 = private unnamed_addr constant [1 x i8] c"\00"
@.str203.c = internal global %nyx_string* null
@.str204 = private unnamed_addr constant [1 x i8] c"\00"
@.str204.c = internal global %nyx_string* null
@.str205 = private unnamed_addr constant [8 x i8] c"exit(1)\00"
@.str205.c = internal global %nyx_string* null
@.str206 = private unnamed_addr constant [1 x i8] c"\00"
@.str206.c = internal global %nyx_string* null
@.str207 = private unnamed_addr constant [40 x i8] c"tests/ai-first/24-bare-return-assert.nx\00"
@.str207.c = internal global %nyx_string* null
@.str208 = private unnamed_addr constant [63 x i8] c"`assert()` aborts the process (`exit(1)`) on the first failure\00"
@.str208.c = internal global %nyx_string* null
@.str209 = private unnamed_addr constant [61 x i8] c"`assert()` aborta el proceso (`exit(1)`) en la primera falla\00"
@.str209.c = internal global %nyx_string* null
@.str210 = private unnamed_addr constant [17 x i8] c"bare-return-void\00"
@.str210.c = internal global %nyx_string* null
@.str211 = private unnamed_addr constant [5 x i8] c"rule\00"
@.str211.c = internal global %nyx_string* null
@.str212 = private unnamed_addr constant [5 x i8] c"loud\00"
@.str212.c = internal global %nyx_string* null
@.str213 = private unnamed_addr constant [7 x i8] c"0.31.0\00"
@.str213.c = internal global %nyx_string* null
@.str214 = private unnamed_addr constant [1 x i8] c"\00"
@.str214.c = internal global %nyx_string* null
@.str215 = private unnamed_addr constant [1 x i8] c"\00"
@.str215.c = internal global %nyx_string* null
@.str216 = private unnamed_addr constant [1 x i8] c"\00"
@.str216.c = internal global %nyx_string* null
@.str217 = private unnamed_addr constant [7 x i8] c"`void`\00"
@.str217.c = internal global %nyx_string* null
@.str218 = private unnamed_addr constant [1 x i8] c"\00"
@.str218.c = internal global %nyx_string* null
@.str219 = private unnamed_addr constant [40 x i8] c"tests/ai-first/24-bare-return-assert.nx\00"
@.str219.c = internal global %nyx_string* null
@.str220 = private unnamed_addr constant [64 x i8] c"A bare `return` (no value) works in a `void`-returning function\00"
@.str220.c = internal global %nyx_string* null
@.str221 = private unnamed_addr constant [66 x i8] c"Un `return` sin valor funciona en una función que retorna `void`\00"
@.str221.c = internal global %nyx_string* null
@.str222 = private unnamed_addr constant [19 x i8] c"case-unicode-scope\00"
@.str222.c = internal global %nyx_string* null
@.str223 = private unnamed_addr constant [5 x i8] c"rule\00"
@.str223.c = internal global %nyx_string* null
@.str224 = private unnamed_addr constant [5 x i8] c"loud\00"
@.str224.c = internal global %nyx_string* null
@.str225 = private unnamed_addr constant [7 x i8] c"0.31.0\00"
@.str225.c = internal global %nyx_string* null
@.str226 = private unnamed_addr constant [1 x i8] c"\00"
@.str226.c = internal global %nyx_string* null
@.str227 = private unnamed_addr constant [1 x i8] c"\00"
@.str227.c = internal global %nyx_string* null
@.str228 = private unnamed_addr constant [1 x i8] c"\00"
@.str228.c = internal global %nyx_string* null
@.str229 = private unnamed_addr constant [17 x i8] c"Latin Extended-A\00"
@.str229.c = internal global %nyx_string* null
@.str230 = private unnamed_addr constant [1 x i8] c"\00"
@.str230.c = internal global %nyx_string* null
@.str231 = private unnamed_addr constant [49 x i8] c"tests/compiler/language/test-415-case-unicode.nx\00"
@.str231.c = internal global %nyx_string* null
@.str232 = private unnamed_addr constant [119 x i8] c"`toUpper()`/`toLower()` cover ASCII + Latin-1 Supplement + Latin Extended-A — Greek and Cyrillic are left untouched.\00"
@.str232.c = internal global %nyx_string* null
@.str233 = private unnamed_addr constant [117 x i8] c"`toUpper()`/`toLower()` cubren ASCII + Latin-1 Supplement + Latin Extended-A — griego y cirílico quedan intactos.\00"
@.str233.c = internal global %nyx_string* null
@.str234 = private unnamed_addr constant [27 x i8] c"derive-fields-pg-bool-text\00"
@.str234.c = internal global %nyx_string* null
@.str235 = private unnamed_addr constant [5 x i8] c"rule\00"
@.str235.c = internal global %nyx_string* null
@.str236 = private unnamed_addr constant [13 x i8] c"silent-wrong\00"
@.str236.c = internal global %nyx_string* null
@.str237 = private unnamed_addr constant [7 x i8] c"0.31.0\00"
@.str237.c = internal global %nyx_string* null
@.str238 = private unnamed_addr constant [7 x i8] c"0.31.1\00"
@.str238.c = internal global %nyx_string* null
@.str239 = private unnamed_addr constant [1 x i8] c"\00"
@.str239.c = internal global %nyx_string* null
@.str240 = private unnamed_addr constant [1 x i8] c"\00"
@.str240.c = internal global %nyx_string* null
@.str241 = private unnamed_addr constant [11 x i8] c"desde_fila\00"
@.str241.c = internal global %nyx_string* null
@.str242 = private unnamed_addr constant [1 x i8] c"\00"
@.str242.c = internal global %nyx_string* null
@.str243 = private unnamed_addr constant [83 x i8] c"tests/postgres/05-orm-fields.nx,tests/compiler/ecosystem/test-405-derive-fields.nx\00"
@.str243.c = internal global %nyx_string* null
@.str244 = private unnamed_addr constant [168 x i8] c"`<Struct>_desde_fila()` accepts every boolean spelling its two producers emit — `true`/`false`, `t`/`f` and `1`/`0` — and ABORTS naming the value on anything else.\00"
@.str244.c = internal global %nyx_string* null
@.str245 = private unnamed_addr constant [180 x i8] c"`<Struct>_desde_fila()` acepta todas las formas de booleano que emiten sus dos productores —`true`/`false`, `t`/`f` y `1`/`0`— y ABORTA nombrando el valor ante cualquier otra.\00"
@.str245.c = internal global %nyx_string* null
@.str246 = private unnamed_addr constant [27 x i8] c"dyn-trait-needs-annotation\00"
@.str246.c = internal global %nyx_string* null
@.str247 = private unnamed_addr constant [5 x i8] c"rule\00"
@.str247.c = internal global %nyx_string* null
@.str248 = private unnamed_addr constant [6 x i8] c"crash\00"
@.str248.c = internal global %nyx_string* null
@.str249 = private unnamed_addr constant [7 x i8] c"0.31.0\00"
@.str249.c = internal global %nyx_string* null
@.str250 = private unnamed_addr constant [1 x i8] c"\00"
@.str250.c = internal global %nyx_string* null
@.str251 = private unnamed_addr constant [1 x i8] c"\00"
@.str251.c = internal global %nyx_string* null
@.str252 = private unnamed_addr constant [1 x i8] c"\00"
@.str252.c = internal global %nyx_string* null
@.str253 = private unnamed_addr constant [10 x i8] c"Array<dyn\00"
@.str253.c = internal global %nyx_string* null
@.str254 = private unnamed_addr constant [1 x i8] c"\00"
@.str254.c = internal global %nyx_string* null
@.str255 = private unnamed_addr constant [52 x i8] c"tests/compiler/language/test-391-dyn-trait-array.nx\00"
@.str255.c = internal global %nyx_string* null
@.str256 = private unnamed_addr constant [80 x i8] c"To store trait objects in a collection, type the collection: `Array<dyn Trait>`\00"
@.str256.c = internal global %nyx_string* null
@.str257 = private unnamed_addr constant [88 x i8] c"Para guardar objetos de trait en una colección, tipa la colección: `Array<dyn Trait>`\00"
@.str257.c = internal global %nyx_string* null
@.str258 = private unnamed_addr constant [30 x i8] c"field-access-complex-receiver\00"
@.str258.c = internal global %nyx_string* null
@.str259 = private unnamed_addr constant [5 x i8] c"rule\00"
@.str259.c = internal global %nyx_string* null
@.str260 = private unnamed_addr constant [5 x i8] c"loud\00"
@.str260.c = internal global %nyx_string* null
@.str261 = private unnamed_addr constant [7 x i8] c"0.31.0\00"
@.str261.c = internal global %nyx_string* null
@.str262 = private unnamed_addr constant [1 x i8] c"\00"
@.str262.c = internal global %nyx_string* null
@.str263 = private unnamed_addr constant [1 x i8] c"\00"
@.str263.c = internal global %nyx_string* null
@.str264 = private unnamed_addr constant [1 x i8] c"\00"
@.str264.c = internal global %nyx_string* null
@.str265 = private unnamed_addr constant [8 x i8] c"NYX2003\00"
@.str265.c = internal global %nyx_string* null
@.str266 = private unnamed_addr constant [1 x i8] c"\00"
@.str266.c = internal global %nyx_string* null
@.str267 = private unnamed_addr constant [145 x i8] c"tests/compiler/errors/fixtures/codegen-field-access-complex-receiver.nx,tests/compiler/errors/fixtures/positive-nyx2003-receptores-soportados.nx\00"
@.str267.c = internal global %nyx_string* null
@.str268 = private unnamed_addr constant [141 x i8] c"A field can only be read from a name or a chain of fields: `f().x`, `a[0].x` and `T{...}.x` are an error (NYX2003; writing them is NYX2006).\00"
@.str268.c = internal global %nyx_string* null
@.str269 = private unnamed_addr constant [135 x i8] c"Un campo solo se lee desde un nombre o una cadena de campos: `f().x`, `a[0].x` y `T{...}.x` son error (NYX2003; escribirlos, NYX2006).\00"
@.str269.c = internal global %nyx_string* null
@.str270 = private unnamed_addr constant [17 x i8] c"pg-null-sentinel\00"
@.str270.c = internal global %nyx_string* null
@.str271 = private unnamed_addr constant [5 x i8] c"rule\00"
@.str271.c = internal global %nyx_string* null
@.str272 = private unnamed_addr constant [13 x i8] c"silent-wrong\00"
@.str272.c = internal global %nyx_string* null
@.str273 = private unnamed_addr constant [7 x i8] c"0.31.0\00"
@.str273.c = internal global %nyx_string* null
@.str274 = private unnamed_addr constant [1 x i8] c"\00"
@.str274.c = internal global %nyx_string* null
@.str275 = private unnamed_addr constant [1 x i8] c"\00"
@.str275.c = internal global %nyx_string* null
@.str276 = private unnamed_addr constant [1 x i8] c"\00"
@.str276.c = internal global %nyx_string* null
@.str277 = private unnamed_addr constant [11 x i8] c"pg_is_null\00"
@.str277.c = internal global %nyx_string* null
@.str278 = private unnamed_addr constant [1 x i8] c"\00"
@.str278.c = internal global %nyx_string* null
@.str279 = private unnamed_addr constant [27 x i8] c"tests/postgres/02-query.nx\00"
@.str279.c = internal global %nyx_string* null
@.str280 = private unnamed_addr constant [86 x i8] c"A NULL column from `std/postgres` is NOT an empty string — ask with `pg_is_null(v)`\00"
@.str280.c = internal global %nyx_string* null
@.str281 = private unnamed_addr constant [94 x i8] c"Una columna NULL de `std/postgres` NO es un string vacío — se pregunta con `pg_is_null(v)`\00"
@.str281.c = internal global %nyx_string* null
@.str282 = private unnamed_addr constant [29 x i8] c"prelude-module-list-contract\00"
@.str282.c = internal global %nyx_string* null
@.str283 = private unnamed_addr constant [5 x i8] c"rule\00"
@.str283.c = internal global %nyx_string* null
@.str284 = private unnamed_addr constant [13 x i8] c"silent-wrong\00"
@.str284.c = internal global %nyx_string* null
@.str285 = private unnamed_addr constant [7 x i8] c"0.31.0\00"
@.str285.c = internal global %nyx_string* null
@.str286 = private unnamed_addr constant [1 x i8] c"\00"
@.str286.c = internal global %nyx_string* null
@.str287 = private unnamed_addr constant [1 x i8] c"\00"
@.str287.c = internal global %nyx_string* null
@.str288 = private unnamed_addr constant [1 x i8] c"\00"
@.str288.c = internal global %nyx_string* null
@.str289 = private unnamed_addr constant [16 x i8] c"prelude-modules\00"
@.str289.c = internal global %nyx_string* null
@.str290 = private unnamed_addr constant [1 x i8] c"\00"
@.str290.c = internal global %nyx_string* null
@.str291 = private unnamed_addr constant [43 x i8] c"tests/compiler/types/test-372-std-error.nx\00"
@.str291.c = internal global %nyx_string* null
@.str292 = private unnamed_addr constant [137 x i8] c"The list of modules the prelude carries lives INSIDE the prelude, on the `//#prelude-modules:` line — never hardcoded in the compiler.\00"
@.str292.c = internal global %nyx_string* null
@.str293 = private unnamed_addr constant [141 x i8] c"La lista de módulos que trae el prelude vive DENTRO del prelude, en la línea `//#prelude-modules:` — nunca hardcodeada en el compilador.\00"
@.str293.c = internal global %nyx_string* null
@.str294 = private unnamed_addr constant [25 x i8] c"prelude-names-are-global\00"
@.str294.c = internal global %nyx_string* null
@.str295 = private unnamed_addr constant [5 x i8] c"rule\00"
@.str295.c = internal global %nyx_string* null
@.str296 = private unnamed_addr constant [5 x i8] c"loud\00"
@.str296.c = internal global %nyx_string* null
@.str297 = private unnamed_addr constant [7 x i8] c"0.31.0\00"
@.str297.c = internal global %nyx_string* null
@.str298 = private unnamed_addr constant [1 x i8] c"\00"
@.str298.c = internal global %nyx_string* null
@.str299 = private unnamed_addr constant [1 x i8] c"\00"
@.str299.c = internal global %nyx_string* null
@.str300 = private unnamed_addr constant [1 x i8] c"\00"
@.str300.c = internal global %nyx_string* null
@.str301 = private unnamed_addr constant [8 x i8] c"NYX1013\00"
@.str301.c = internal global %nyx_string* null
@.str302 = private unnamed_addr constant [1 x i8] c"\00"
@.str302.c = internal global %nyx_string* null
@.str303 = private unnamed_addr constant [62 x i8] c"tests/compiler/errors/test-nyx1013-colision-con-el-prelude.nx\00"
@.str303.c = internal global %nyx_string* null
@.str304 = private unnamed_addr constant [89 x i8] c"The prelude's names are GLOBAL: declaring one of your own with the same name is NYX1013.\00"
@.str304.c = internal global %nyx_string* null
@.str305 = private unnamed_addr constant [90 x i8] c"Los nombres del prelude son GLOBALES: declarar uno propio con el mismo nombre es NYX1013.\00"
@.str305.c = internal global %nyx_string* null
@.str306 = private unnamed_addr constant [24 x i8] c"random-bytes-not-crypto\00"
@.str306.c = internal global %nyx_string* null
@.str307 = private unnamed_addr constant [5 x i8] c"rule\00"
@.str307.c = internal global %nyx_string* null
@.str308 = private unnamed_addr constant [13 x i8] c"silent-wrong\00"
@.str308.c = internal global %nyx_string* null
@.str309 = private unnamed_addr constant [7 x i8] c"0.31.0\00"
@.str309.c = internal global %nyx_string* null
@.str310 = private unnamed_addr constant [1 x i8] c"\00"
@.str310.c = internal global %nyx_string* null
@.str311 = private unnamed_addr constant [1 x i8] c"\00"
@.str311.c = internal global %nyx_string* null
@.str312 = private unnamed_addr constant [1 x i8] c"\00"
@.str312.c = internal global %nyx_string* null
@.str313 = private unnamed_addr constant [13 x i8] c"csprng_bytes\00"
@.str313.c = internal global %nyx_string* null
@.str314 = private unnamed_addr constant [1 x i8] c"\00"
@.str314.c = internal global %nyx_string* null
@.str315 = private unnamed_addr constant [100 x i8] c"tests/compiler/ecosystem/test-170-random-uuid.nx,tests/compiler/ecosystem/test-248-webpushcrypto.nx\00"
@.str315.c = internal global %nyx_string* null
@.str316 = private unnamed_addr constant [169 x i8] c"`random_bytes` (`std/random`) is a PRNG, not a CSPRNG — never use it for salts, tokens, keys, nonces, or any other cryptographic material; use `csprng_bytes` instead.\00"
@.str316.c = internal global %nyx_string* null
@.str317 = private unnamed_addr constant [179 x i8] c"`random_bytes` (`std/random`) es un PRNG, no un CSPRNG — nunca lo uses para salts, tokens, claves, nonces, ni ningún otro material criptográfico; para eso usa `csprng_bytes`.\00"
@.str317.c = internal global %nyx_string* null
@.str318 = private unnamed_addr constant [21 x i8] c"sqlite-null-sentinel\00"
@.str318.c = internal global %nyx_string* null
@.str319 = private unnamed_addr constant [5 x i8] c"rule\00"
@.str319.c = internal global %nyx_string* null
@.str320 = private unnamed_addr constant [13 x i8] c"silent-wrong\00"
@.str320.c = internal global %nyx_string* null
@.str321 = private unnamed_addr constant [7 x i8] c"0.31.0\00"
@.str321.c = internal global %nyx_string* null
@.str322 = private unnamed_addr constant [1 x i8] c"\00"
@.str322.c = internal global %nyx_string* null
@.str323 = private unnamed_addr constant [1 x i8] c"\00"
@.str323.c = internal global %nyx_string* null
@.str324 = private unnamed_addr constant [1 x i8] c"\00"
@.str324.c = internal global %nyx_string* null
@.str325 = private unnamed_addr constant [15 x i8] c"sqlite_is_null\00"
@.str325.c = internal global %nyx_string* null
@.str326 = private unnamed_addr constant [1 x i8] c"\00"
@.str326.c = internal global %nyx_string* null
@.str327 = private unnamed_addr constant [58 x i8] c"tests/compiler/stdlib-suite/test-406-sqlite-tipos-null.nx\00"
@.str327.c = internal global %nyx_string* null
@.str328 = private unnamed_addr constant [88 x i8] c"A NULL column from `std/sqlite` is NOT an empty string — ask with `sqlite_is_null(v)`\00"
@.str328.c = internal global %nyx_string* null
@.str329 = private unnamed_addr constant [96 x i8] c"Una columna NULL de `std/sqlite` NO es un string vacío — se pregunta con `sqlite_is_null(v)`\00"
@.str329.c = internal global %nyx_string* null
@.str330 = private unnamed_addr constant [25 x i8] c"string-order-is-bytewise\00"
@.str330.c = internal global %nyx_string* null
@.str331 = private unnamed_addr constant [5 x i8] c"rule\00"
@.str331.c = internal global %nyx_string* null
@.str332 = private unnamed_addr constant [5 x i8] c"loud\00"
@.str332.c = internal global %nyx_string* null
@.str333 = private unnamed_addr constant [7 x i8] c"0.31.0\00"
@.str333.c = internal global %nyx_string* null
@.str334 = private unnamed_addr constant [1 x i8] c"\00"
@.str334.c = internal global %nyx_string* null
@.str335 = private unnamed_addr constant [1 x i8] c"\00"
@.str335.c = internal global %nyx_string* null
@.str336 = private unnamed_addr constant [1 x i8] c"\00"
@.str336.c = internal global %nyx_string* null
@.str337 = private unnamed_addr constant [6 x i8] c"BYTES\00"
@.str337.c = internal global %nyx_string* null
@.str338 = private unnamed_addr constant [1 x i8] c"\00"
@.str338.c = internal global %nyx_string* null
@.str339 = private unnamed_addr constant [97 x i8] c"tests/ai-first/26-string-order-dates.nx,tests/compiler/language/test-389-string-order-compare.nx\00"
@.str339.c = internal global %nyx_string* null
@.str340 = private unnamed_addr constant [74 x i8] c"`<` `<=` `>` `>=` between Strings compare BYTES, not codepoints or locale\00"
@.str340.c = internal global %nyx_string* null
@.str341 = private unnamed_addr constant [72 x i8] c"`<` `<=` `>` `>=` entre Strings comparan BYTES, no codepoints ni locale\00"
@.str341.c = internal global %nyx_string* null
@.str342 = private unnamed_addr constant [17 x i8] c"throw-deprecated\00"
@.str342.c = internal global %nyx_string* null
@.str343 = private unnamed_addr constant [5 x i8] c"rule\00"
@.str343.c = internal global %nyx_string* null
@.str344 = private unnamed_addr constant [5 x i8] c"loud\00"
@.str344.c = internal global %nyx_string* null
@.str345 = private unnamed_addr constant [7 x i8] c"0.31.0\00"
@.str345.c = internal global %nyx_string* null
@.str346 = private unnamed_addr constant [1 x i8] c"\00"
@.str346.c = internal global %nyx_string* null
@.str347 = private unnamed_addr constant [10 x i8] c"\5cbthrow\5c(\00"
@.str347.c = internal global %nyx_string* null
@.str348 = private unnamed_addr constant [5 x i8] c"W108\00"
@.str348.c = internal global %nyx_string* null
@.str349 = private unnamed_addr constant [7 x i8] c"panic(\00"
@.str349.c = internal global %nyx_string* null
@.str350 = private unnamed_addr constant [1 x i8] c"\00"
@.str350.c = internal global %nyx_string* null
@.str351 = private unnamed_addr constant [57 x i8] c"tests/compiler/language/test-382-throw-is-panic-alias.nx\00"
@.str351.c = internal global %nyx_string* null
@.str352 = private unnamed_addr constant [89 x i8] c"`throw(x)` is a deprecated alias of `panic(x)`: same channel, same `catch`, same limits.\00"
@.str352.c = internal global %nyx_string* null
@.str353 = private unnamed_addr constant [97 x i8] c"`throw(x)` es un alias deprecado de `panic(x)`: mismo canal, mismo `catch`, los mismos límites.\00"
@.str353.c = internal global %nyx_string* null
@.str354 = private unnamed_addr constant [28 x i8] c"time-clock-names-deprecated\00"
@.str354.c = internal global %nyx_string* null
@.str355 = private unnamed_addr constant [5 x i8] c"rule\00"
@.str355.c = internal global %nyx_string* null
@.str356 = private unnamed_addr constant [13 x i8] c"silent-wrong\00"
@.str356.c = internal global %nyx_string* null
@.str357 = private unnamed_addr constant [7 x i8] c"0.31.0\00"
@.str357.c = internal global %nyx_string* null
@.str358 = private unnamed_addr constant [1 x i8] c"\00"
@.str358.c = internal global %nyx_string* null
@.str359 = private unnamed_addr constant [36 x i8] c"(^|[^A-Za-z0-9_])time(_ms|_us)?\5c(\5c)\00"
@.str359.c = internal global %nyx_string* null
@.str360 = private unnamed_addr constant [5 x i8] c"W110\00"
@.str360.c = internal global %nyx_string* null
@.str361 = private unnamed_addr constant [13 x i8] c"monotonic_ms\00"
@.str361.c = internal global %nyx_string* null
@.str362 = private unnamed_addr constant [1 x i8] c"\00"
@.str362.c = internal global %nyx_string* null
@.str363 = private unnamed_addr constant [48 x i8] c"tests/compiler/systems/test-410-clock-domain.nx\00"
@.str363.c = internal global %nyx_string* null
@.str364 = private unnamed_addr constant [213 x i8] c"`time()`, `time_ms()` and `time_us()` are deprecated names: use `time_epoch()` for the wall clock and `monotonic_ms()` / `monotonic_us()` for the monotonic one — same runtime call, a name that says WHICH clock.\00"
@.str364.c = internal global %nyx_string* null
@.str365 = private unnamed_addr constant [229 x i8] c"`time()`, `time_ms()` y `time_us()` son nombres deprecados: usa `time_epoch()` para el reloj de pared y `monotonic_ms()` / `monotonic_us()` para el monotónico — misma llamada al runtime, con un nombre que dice CUÁL reloj es.\00"
@.str365.c = internal global %nyx_string* null
@.str366 = private unnamed_addr constant [21 x i8] c"void-builtin-no-bind\00"
@.str366.c = internal global %nyx_string* null
@.str367 = private unnamed_addr constant [5 x i8] c"rule\00"
@.str367.c = internal global %nyx_string* null
@.str368 = private unnamed_addr constant [5 x i8] c"loud\00"
@.str368.c = internal global %nyx_string* null
@.str369 = private unnamed_addr constant [7 x i8] c"0.31.0\00"
@.str369.c = internal global %nyx_string* null
@.str370 = private unnamed_addr constant [1 x i8] c"\00"
@.str370.c = internal global %nyx_string* null
@.str371 = private unnamed_addr constant [1 x i8] c"\00"
@.str371.c = internal global %nyx_string* null
@.str372 = private unnamed_addr constant [1 x i8] c"\00"
@.str372.c = internal global %nyx_string* null
@.str373 = private unnamed_addr constant [7 x i8] c"got ()\00"
@.str373.c = internal global %nyx_string* null
@.str374 = private unnamed_addr constant [1 x i8] c"\00"
@.str374.c = internal global %nyx_string* null
@.str375 = private unnamed_addr constant [58 x i8] c"tests/compiler/errors/test-nyx1003-builtin-void-ligado.nx\00"
@.str375.c = internal global %nyx_string* null
@.str376 = private unnamed_addr constant [99 x i8] c"Some builtins return NOTHING — binding their result is an error (NYX1003, `expected T, got ()`).\00"
@.str376.c = internal global %nyx_string* null
@.str377 = private unnamed_addr constant [100 x i8] c"Algunas builtins no devuelven NADA — ligar su resultado es error (NYX1003, `expected T, got ()`).\00"
@.str377.c = internal global %nyx_string* null
@.str378 = private unnamed_addr constant [22 x i8] c"type-names-are-global\00"
@.str378.c = internal global %nyx_string* null
@.str379 = private unnamed_addr constant [5 x i8] c"rule\00"
@.str379.c = internal global %nyx_string* null
@.str380 = private unnamed_addr constant [5 x i8] c"loud\00"
@.str380.c = internal global %nyx_string* null
@.str381 = private unnamed_addr constant [7 x i8] c"0.33.0\00"
@.str381.c = internal global %nyx_string* null
@.str382 = private unnamed_addr constant [1 x i8] c"\00"
@.str382.c = internal global %nyx_string* null
@.str383 = private unnamed_addr constant [1 x i8] c"\00"
@.str383.c = internal global %nyx_string* null
@.str384 = private unnamed_addr constant [1 x i8] c"\00"
@.str384.c = internal global %nyx_string* null
@.str385 = private unnamed_addr constant [8 x i8] c"NYX1040\00"
@.str385.c = internal global %nyx_string* null
@.str386 = private unnamed_addr constant [1 x i8] c"\00"
@.str386.c = internal global %nyx_string* null
@.str387 = private unnamed_addr constant [132 x i8] c"tests/compiler/errors/fixtures/tipo-duplicado/reporte/src/main.nx,tests/compiler/errors/fixtures/tipo-duplicado/literal/src/main.nx\00"
@.str387.c = internal global %nyx_string* null
@.str388 = private unnamed_addr constant [123 x i8] c"`struct` and `enum` names are GLOBAL to the program, even without `pub`: the same name declared in two modules is NYX1040.\00"
@.str388.c = internal global %nyx_string* null
@.str389 = private unnamed_addr constant [135 x i8] c"Los nombres de `struct` y `enum` son GLOBALES al programa, aunque no sean `pub`: el mismo nombre declarado en dos módulos es NYX1040.\00"
@.str389.c = internal global %nyx_string* null
@.str390 = private unnamed_addr constant [23 x i8] c"for-in-string-rejected\00"
@.str390.c = internal global %nyx_string* null
@.str391 = private unnamed_addr constant [5 x i8] c"rule\00"
@.str391.c = internal global %nyx_string* null
@.str392 = private unnamed_addr constant [5 x i8] c"loud\00"
@.str392.c = internal global %nyx_string* null
@.str393 = private unnamed_addr constant [7 x i8] c"0.33.1\00"
@.str393.c = internal global %nyx_string* null
@.str394 = private unnamed_addr constant [1 x i8] c"\00"
@.str394.c = internal global %nyx_string* null
@.str395 = private unnamed_addr constant [1 x i8] c"\00"
@.str395.c = internal global %nyx_string* null
@.str396 = private unnamed_addr constant [1 x i8] c"\00"
@.str396.c = internal global %nyx_string* null
@.str397 = private unnamed_addr constant [8 x i8] c"NYX1038\00"
@.str397.c = internal global %nyx_string* null
@.str398 = private unnamed_addr constant [1 x i8] c"\00"
@.str398.c = internal global %nyx_string* null
@.str399 = private unnamed_addr constant [97 x i8] c"tests/compiler/errors/test-nyx1038-for-string.nx,tests/ai-first/31-recorrer-string-por-indice.nx\00"
@.str399.c = internal global %nyx_string* null
@.str400 = private unnamed_addr constant [220 x i8] c"`for c in s` over a `String` is an error (NYX1038): iterate by index — bytes with `for i in 0..s.length() { s.substring(i, i + 1) }`, UTF-8 characters with `for i in 0..s.char_length() { s.char_substring(i, i + 1) }`.\00"
@.str400.c = internal global %nyx_string* null
@.str401 = private unnamed_addr constant [219 x i8] c"`for c in s` sobre un `String` es error (NYX1038): recorre por índice —bytes con `for i in 0..s.length() { s.substring(i, i + 1) }`, caracteres UTF-8 con `for i in 0..s.char_length() { s.char_substring(i, i + 1) }`.\00"
@.str401.c = internal global %nyx_string* null
@.str402 = private unnamed_addr constant [36 x i8] c"string-element-into-scalar-rejected\00"
@.str402.c = internal global %nyx_string* null
@.str403 = private unnamed_addr constant [5 x i8] c"rule\00"
@.str403.c = internal global %nyx_string* null
@.str404 = private unnamed_addr constant [5 x i8] c"loud\00"
@.str404.c = internal global %nyx_string* null
@.str405 = private unnamed_addr constant [7 x i8] c"0.35.0\00"
@.str405.c = internal global %nyx_string* null
@.str406 = private unnamed_addr constant [1 x i8] c"\00"
@.str406.c = internal global %nyx_string* null
@.str407 = private unnamed_addr constant [1 x i8] c"\00"
@.str407.c = internal global %nyx_string* null
@.str408 = private unnamed_addr constant [1 x i8] c"\00"
@.str408.c = internal global %nyx_string* null
@.str409 = private unnamed_addr constant [8 x i8] c"NYX2019\00"
@.str409.c = internal global %nyx_string* null
@.str410 = private unnamed_addr constant [1 x i8] c"\00"
@.str410.c = internal global %nyx_string* null
@.str411 = private unnamed_addr constant [182 x i8] c"tests/compiler/errors/fixtures/escalar-de-string/let-bool.nx,tests/compiler/errors/fixtures/escalar-de-string/let-int.nx,tests/compiler/language/test-456-escalar-de-string-valido.nx\00"
@.str411.c = internal global %nyx_string* null
@.str412 = private unnamed_addr constant [157 x i8] c"An Array element the compiler knows is a `String` does not go into an `int`/`bool` variable (NYX2019): convert it — `let n: int = string_to_int(fila[0])`.\00"
@.str412.c = internal global %nyx_string* null
@.str413 = private unnamed_addr constant [158 x i8] c"Un elemento de Array que el compilador sabe `String` no entra en una variable `int`/`bool` (NYX2019): conviértelo — `let n: int = string_to_int(fila[0])`.\00"
@.str413.c = internal global %nyx_string* null
@.str414 = private unnamed_addr constant [26 x i8] c"http-serve-all-interfaces\00"
@.str414.c = internal global %nyx_string* null
@.str415 = private unnamed_addr constant [5 x i8] c"rule\00"
@.str415.c = internal global %nyx_string* null
@.str416 = private unnamed_addr constant [13 x i8] c"silent-wrong\00"
@.str416.c = internal global %nyx_string* null
@.str417 = private unnamed_addr constant [7 x i8] c"0.37.0\00"
@.str417.c = internal global %nyx_string* null
@.str418 = private unnamed_addr constant [1 x i8] c"\00"
@.str418.c = internal global %nyx_string* null
@.str419 = private unnamed_addr constant [1 x i8] c"\00"
@.str419.c = internal global %nyx_string* null
@.str420 = private unnamed_addr constant [1 x i8] c"\00"
@.str420.c = internal global %nyx_string* null
@.str421 = private unnamed_addr constant [14 x i8] c"http_serve_en\00"
@.str421.c = internal global %nyx_string* null
@.str422 = private unnamed_addr constant [1 x i8] c"\00"
@.str422.c = internal global %nyx_string* null
@.str423 = private unnamed_addr constant [54 x i8] c"tests/compiler/stdlib-suite/test-505-http-serve-en.nx\00"
@.str423.c = internal global %nyx_string* null
@.str424 = private unnamed_addr constant [131 x i8] c"`http_serve`/`http_serve_mt` listen on ALL interfaces (`0.0.0.0`); behind a proxy use `http_serve_en(\22127.0.0.1\22, port, handler)`.\00"
@.str424.c = internal global %nyx_string* null
@.str425 = private unnamed_addr constant [148 x i8] c"`http_serve`/`http_serve_mt` escuchan en TODAS las interfaces (`0.0.0.0`); detrás de un proxy, usar `http_serve_en(\22127.0.0.1\22, puerto, handler)`.\00"
@.str425.c = internal global %nyx_string* null
@.str426 = private unnamed_addr constant [26 x i8] c"mixed-primitive-operators\00"
@.str426.c = internal global %nyx_string* null
@.str427 = private unnamed_addr constant [5 x i8] c"rule\00"
@.str427.c = internal global %nyx_string* null
@.str428 = private unnamed_addr constant [5 x i8] c"loud\00"
@.str428.c = internal global %nyx_string* null
@.str429 = private unnamed_addr constant [7 x i8] c"0.37.0\00"
@.str429.c = internal global %nyx_string* null
@.str430 = private unnamed_addr constant [1 x i8] c"\00"
@.str430.c = internal global %nyx_string* null
@.str431 = private unnamed_addr constant [1 x i8] c"\00"
@.str431.c = internal global %nyx_string* null
@.str432 = private unnamed_addr constant [1 x i8] c"\00"
@.str432.c = internal global %nyx_string* null
@.str433 = private unnamed_addr constant [8 x i8] c"NYX1010\00"
@.str433.c = internal global %nyx_string* null
@.str434 = private unnamed_addr constant [1 x i8] c"\00"
@.str434.c = internal global %nyx_string* null
@.str435 = private unnamed_addr constant [59 x i8] c"tests/compiler/errors/test-nyx1010-int-por-string-mixto.nx\00"
@.str435.c = internal global %nyx_string* null
@.str436 = private unnamed_addr constant [60 x i8] c"Operators between primitives of different kinds are NYX1010\00"
@.str436.c = internal global %nyx_string* null
@.str437 = private unnamed_addr constant [64 x i8] c"Los operadores entre primitivos de clases distintas son NYX1010\00"
@.str437.c = internal global %nyx_string* null
@.str438 = private unnamed_addr constant [15 x i8] c"string-escapes\00"
@.str438.c = internal global %nyx_string* null
@.str439 = private unnamed_addr constant [5 x i8] c"rule\00"
@.str439.c = internal global %nyx_string* null
@.str440 = private unnamed_addr constant [5 x i8] c"loud\00"
@.str440.c = internal global %nyx_string* null
@.str441 = private unnamed_addr constant [7 x i8] c"0.37.0\00"
@.str441.c = internal global %nyx_string* null
@.str442 = private unnamed_addr constant [1 x i8] c"\00"
@.str442.c = internal global %nyx_string* null
@.str443 = private unnamed_addr constant [1 x i8] c"\00"
@.str443.c = internal global %nyx_string* null
@.str444 = private unnamed_addr constant [1 x i8] c"\00"
@.str444.c = internal global %nyx_string* null
@.str445 = private unnamed_addr constant [8 x i8] c"NYX1045\00"
@.str445.c = internal global %nyx_string* null
@.str446 = private unnamed_addr constant [1 x i8] c"\00"
@.str446.c = internal global %nyx_string* null
@.str447 = private unnamed_addr constant [56 x i8] c"tests/compiler/language/test-494-escapes-hex-unicode.nx\00"
@.str447.c = internal global %nyx_string* null
@.str448 = private unnamed_addr constant [94 x i8] c"String escapes: `\5cxNN` and `\5cu{…}` exist since 0.37.0; any other unknown escape is NYX1045.\00"
@.str448.c = internal global %nyx_string* null
@.str449 = private unnamed_addr constant [106 x i8] c"Escapes de String: `\5cxNN` y `\5cu{…}` existen desde 0.37.0; cualquier otro escape desconocido es NYX1045.\00"
@.str449.c = internal global %nyx_string* null
@.str450 = private unnamed_addr constant [26 x i8] c"local-lambda-no-self-name\00"
@.str450.c = internal global %nyx_string* null
@.str451 = private unnamed_addr constant [5 x i8] c"rule\00"
@.str451.c = internal global %nyx_string* null
@.str452 = private unnamed_addr constant [5 x i8] c"loud\00"
@.str452.c = internal global %nyx_string* null
@.str453 = private unnamed_addr constant [7 x i8] c"0.40.0\00"
@.str453.c = internal global %nyx_string* null
@.str454 = private unnamed_addr constant [1 x i8] c"\00"
@.str454.c = internal global %nyx_string* null
@.str455 = private unnamed_addr constant [1 x i8] c"\00"
@.str455.c = internal global %nyx_string* null
@.str456 = private unnamed_addr constant [1 x i8] c"\00"
@.str456.c = internal global %nyx_string* null
@.str457 = private unnamed_addr constant [9 x i8] c"closures\00"
@.str457.c = internal global %nyx_string* null
@.str458 = private unnamed_addr constant [1 x i8] c"\00"
@.str458.c = internal global %nyx_string* null
@.str459 = private unnamed_addr constant [67 x i8] c"tests/compiler/errors/test-nyx1002-let-local-en-su-propio-valor.nx\00"
@.str459.c = internal global %nyx_string* null
@.str460 = private unnamed_addr constant [136 x i8] c"A local `let` is visible from its own line on, not in its own value: a local lambda cannot call itself by name — write a nested `fn`.\00"
@.str460.c = internal global %nyx_string* null
@.str461 = private unnamed_addr constant [145 x i8] c"Un `let` local es visible desde su línea, no en su propio valor: una lambda local no puede llamarse por su nombre — escribe una `fn` anidada.\00"
@.str461.c = internal global %nyx_string* null
@.str462 = private unnamed_addr constant [28 x i8] c"interpolation-uses-nyx-type\00"
@.str462.c = internal global %nyx_string* null
@.str463 = private unnamed_addr constant [5 x i8] c"rule\00"
@.str463.c = internal global %nyx_string* null
@.str464 = private unnamed_addr constant [13 x i8] c"silent-wrong\00"
@.str464.c = internal global %nyx_string* null
@.str465 = private unnamed_addr constant [7 x i8] c"0.44.1\00"
@.str465.c = internal global %nyx_string* null
@.str466 = private unnamed_addr constant [1 x i8] c"\00"
@.str466.c = internal global %nyx_string* null
@.str467 = private unnamed_addr constant [1 x i8] c"\00"
@.str467.c = internal global %nyx_string* null
@.str468 = private unnamed_addr constant [1 x i8] c"\00"
@.str468.c = internal global %nyx_string* null
@.str469 = private unnamed_addr constant [3 x i8] c"u8\00"
@.str469.c = internal global %nyx_string* null
@.str470 = private unnamed_addr constant [1 x i8] c"\00"
@.str470.c = internal global %nyx_string* null
@.str471 = private unnamed_addr constant [109 x i8] c"tests/compiler/language/test-546-interpolar-por-tipo-nyx.nx,tests/compiler/language/test-545-join-por-tag.nx\00"
@.str471.c = internal global %nyx_string* null
@.str472 = private unnamed_addr constant [122 x i8] c"Interpolating a `u8` or `i8` gives the NUMBER, a `char` gives the character: `\22${b}\22` with `b: u8 = 65` is `65`, not `A`.\00"
@.str472.c = internal global %nyx_string* null
@.str473 = private unnamed_addr constant [114 x i8] c"Interpolar un `u8` o un `i8` da el NÚMERO, un `char` da el carácter: `\22${b}\22` con `b: u8 = 65` es `65`, no `A`.\00"
@.str473.c = internal global %nyx_string* null
@.str474 = private unnamed_addr constant [22 x i8] c"narrow-int-arithmetic\00"
@.str474.c = internal global %nyx_string* null
@.str475 = private unnamed_addr constant [5 x i8] c"rule\00"
@.str475.c = internal global %nyx_string* null
@.str476 = private unnamed_addr constant [13 x i8] c"silent-wrong\00"
@.str476.c = internal global %nyx_string* null
@.str477 = private unnamed_addr constant [7 x i8] c"0.44.1\00"
@.str477.c = internal global %nyx_string* null
@.str478 = private unnamed_addr constant [1 x i8] c"\00"
@.str478.c = internal global %nyx_string* null
@.str479 = private unnamed_addr constant [1 x i8] c"\00"
@.str479.c = internal global %nyx_string* null
@.str480 = private unnamed_addr constant [1 x i8] c"\00"
@.str480.c = internal global %nyx_string* null
@.str481 = private unnamed_addr constant [7 x i8] c"narrow\00"
@.str481.c = internal global %nyx_string* null
@.str482 = private unnamed_addr constant [1 x i8] c"\00"
@.str482.c = internal global %nyx_string* null
@.str483 = private unnamed_addr constant [56 x i8] c"tests/compiler/language/test-551-angostos-ancho-fijo.nx\00"
@.str483.c = internal global %nyx_string* null
@.str484 = private unnamed_addr constant [208 x i8] c"Arithmetic between two narrow integers of the SAME type stays in that width and wraps (`u8` 200 + `u8` 100 is 44, 200 * 100 is 32); mixing a narrow integer with an `int` or with another width gives an `int`.\00"
@.str484.c = internal global %nyx_string* null
@.str485 = private unnamed_addr constant [205 x i8] c"La aritmética entre dos enteros angostos del MISMO tipo se queda en ese ancho y envuelve (`u8` 200 + `u8` 100 da 44, 200 * 100 da 32); mezclar un entero angosto con un `int` o con otro ancho da un `int`.\00"
@.str485.c = internal global %nyx_string* null
@.str486 = private unnamed_addr constant [22 x i8] c"ndarray-release-build\00"
@.str486.c = internal global %nyx_string* null
@.str487 = private unnamed_addr constant [5 x i8] c"rule\00"
@.str487.c = internal global %nyx_string* null
@.str488 = private unnamed_addr constant [4 x i8] c"n/a\00"
@.str488.c = internal global %nyx_string* null
@.str489 = private unnamed_addr constant [7 x i8] c"0.45.0\00"
@.str489.c = internal global %nyx_string* null
@.str490 = private unnamed_addr constant [1 x i8] c"\00"
@.str490.c = internal global %nyx_string* null
@.str491 = private unnamed_addr constant [1 x i8] c"\00"
@.str491.c = internal global %nyx_string* null
@.str492 = private unnamed_addr constant [1 x i8] c"\00"
@.str492.c = internal global %nyx_string* null
@.str493 = private unnamed_addr constant [10 x i8] c"--release\00"
@.str493.c = internal global %nyx_string* null
@.str494 = private unnamed_addr constant [1 x i8] c"\00"
@.str494.c = internal global %nyx_string* null
@.str495 = private unnamed_addr constant [36 x i8] c"tests/ai-first/57-ndarray-basico.nx\00"
@.str495.c = internal global %nyx_string* null
@.str496 = private unnamed_addr constant [129 x i8] c"Build numeric code with `nyx build --release`: without it nothing is optimized and `std/ndarray` loops run 4 to 15 times slower.\00"
@.str496.c = internal global %nyx_string* null
@.str497 = private unnamed_addr constant [149 x i8] c"Compila el código numérico con `nyx build --release`: sin eso no se optimiza nada y los bucles de `std/ndarray` van entre 4 y 15 veces más lento.\00"
@.str497.c = internal global %nyx_string* null
@.str498 = private unnamed_addr constant [19 x i8] c"fork-gc-child-exec\00"
@.str498.c = internal global %nyx_string* null
@.str499 = private unnamed_addr constant [6 x i8] c"limit\00"
@.str499.c = internal global %nyx_string* null
@.str500 = private unnamed_addr constant [6 x i8] c"crash\00"
@.str500.c = internal global %nyx_string* null
@.str501 = private unnamed_addr constant [7 x i8] c"0.17.0\00"
@.str501.c = internal global %nyx_string* null
@.str502 = private unnamed_addr constant [1 x i8] c"\00"
@.str502.c = internal global %nyx_string* null
@.str503 = private unnamed_addr constant [1 x i8] c"\00"
@.str503.c = internal global %nyx_string* null
@.str504 = private unnamed_addr constant [1 x i8] c"\00"
@.str504.c = internal global %nyx_string* null
@.str505 = private unnamed_addr constant [7 x i8] c"execvp\00"
@.str505.c = internal global %nyx_string* null
@.str506 = private unnamed_addr constant [1 x i8] c"\00"
@.str506.c = internal global %nyx_string* null
@.str507 = private unnamed_addr constant [1 x i8] c"\00"
@.str507.c = internal global %nyx_string* null
@.str508 = private unnamed_addr constant [14 x i8] c"`fork() + GC`\00"
@.str508.c = internal global %nyx_string* null
@.str509 = private unnamed_addr constant [14 x i8] c"`fork() + GC`\00"
@.str509.c = internal global %nyx_string* null
@.str510 = private unnamed_addr constant [30 x i8] c"global-struct-zeroinitializer\00"
@.str510.c = internal global %nyx_string* null
@.str511 = private unnamed_addr constant [6 x i8] c"limit\00"
@.str511.c = internal global %nyx_string* null
@.str512 = private unnamed_addr constant [4 x i8] c"n/a\00"
@.str512.c = internal global %nyx_string* null
@.str513 = private unnamed_addr constant [7 x i8] c"0.17.0\00"
@.str513.c = internal global %nyx_string* null
@.str514 = private unnamed_addr constant [1 x i8] c"\00"
@.str514.c = internal global %nyx_string* null
@.str515 = private unnamed_addr constant [1 x i8] c"\00"
@.str515.c = internal global %nyx_string* null
@.str516 = private unnamed_addr constant [1 x i8] c"\00"
@.str516.c = internal global %nyx_string* null
@.str517 = private unnamed_addr constant [1 x i8] c"\00"
@.str517.c = internal global %nyx_string* null
@.str518 = private unnamed_addr constant [1 x i8] c"\00"
@.str518.c = internal global %nyx_string* null
@.str519 = private unnamed_addr constant [1 x i8] c"\00"
@.str519.c = internal global %nyx_string* null
@.str520 = private unnamed_addr constant [47 x i8] c"Global structs need `zeroinitializer`, not `0`\00"
@.str520.c = internal global %nyx_string* null
@.str521 = private unnamed_addr constant [57 x i8] c"Los structs globales necesitan `zeroinitializer`, no `0`\00"
@.str521.c = internal global %nyx_string* null
@.str522 = private unnamed_addr constant [24 x i8] c"prelude-frozen-snapshot\00"
@.str522.c = internal global %nyx_string* null
@.str523 = private unnamed_addr constant [6 x i8] c"limit\00"
@.str523.c = internal global %nyx_string* null
@.str524 = private unnamed_addr constant [5 x i8] c"loud\00"
@.str524.c = internal global %nyx_string* null
@.str525 = private unnamed_addr constant [7 x i8] c"0.27.0\00"
@.str525.c = internal global %nyx_string* null
@.str526 = private unnamed_addr constant [1 x i8] c"\00"
@.str526.c = internal global %nyx_string* null
@.str527 = private unnamed_addr constant [1 x i8] c"\00"
@.str527.c = internal global %nyx_string* null
@.str528 = private unnamed_addr constant [1 x i8] c"\00"
@.str528.c = internal global %nyx_string* null
@.str529 = private unnamed_addr constant [8 x i8] c"prelude\00"
@.str529.c = internal global %nyx_string* null
@.str530 = private unnamed_addr constant [1 x i8] c"\00"
@.str530.c = internal global %nyx_string* null
@.str531 = private unnamed_addr constant [1 x i8] c"\00"
@.str531.c = internal global %nyx_string* null
@.str532 = private unnamed_addr constant [109 x i8] c"`std/prelude.nx` is concatenated into EVERY program and its modules are pre-registered as \22already imported\22\00"
@.str532.c = internal global %nyx_string* null
@.str533 = private unnamed_addr constant [105 x i8] c"`std/prelude.nx` se concatena a TODO programa y sus módulos quedan pre-registrados como \22ya importados\22\00"
@.str533.c = internal global %nyx_string* null
@.str534 = private unnamed_addr constant [30 x i8] c"derive-fields-solo-primitivos\00"
@.str534.c = internal global %nyx_string* null
@.str535 = private unnamed_addr constant [6 x i8] c"limit\00"
@.str535.c = internal global %nyx_string* null
@.str536 = private unnamed_addr constant [5 x i8] c"loud\00"
@.str536.c = internal global %nyx_string* null
@.str537 = private unnamed_addr constant [7 x i8] c"0.31.0\00"
@.str537.c = internal global %nyx_string* null
@.str538 = private unnamed_addr constant [1 x i8] c"\00"
@.str538.c = internal global %nyx_string* null
@.str539 = private unnamed_addr constant [1 x i8] c"\00"
@.str539.c = internal global %nyx_string* null
@.str540 = private unnamed_addr constant [1 x i8] c"\00"
@.str540.c = internal global %nyx_string* null
@.str541 = private unnamed_addr constant [8 x i8] c"NYX2013\00"
@.str541.c = internal global %nyx_string* null
@.str542 = private unnamed_addr constant [1 x i8] c"\00"
@.str542.c = internal global %nyx_string* null
@.str543 = private unnamed_addr constant [51 x i8] c"tests/compiler/ecosystem/test-405-derive-fields.nx\00"
@.str543.c = internal global %nyx_string* null
@.str544 = private unnamed_addr constant [151 x i8] c"`#[derive(Fields)]` only converts `int`, `bool`, `float` and `String` — an `Array`, `Map`, or nested struct field aborts compilation with `NYX2013`.\00"
@.str544.c = internal global %nyx_string* null
@.str545 = private unnamed_addr constant [155 x i8] c"`#[derive(Fields)]` solo convierte `int`, `bool`, `float` y `String` — un campo `Array`, `Map` o un struct anidado aborta la compilación con `NYX2013`.\00"
@.str545.c = internal global %nyx_string* null
@.str546 = private unnamed_addr constant [20 x i8] c"hkt-gats-parse-only\00"
@.str546.c = internal global %nyx_string* null
@.str547 = private unnamed_addr constant [6 x i8] c"limit\00"
@.str547.c = internal global %nyx_string* null
@.str548 = private unnamed_addr constant [13 x i8] c"silent-wrong\00"
@.str548.c = internal global %nyx_string* null
@.str549 = private unnamed_addr constant [7 x i8] c"0.31.0\00"
@.str549.c = internal global %nyx_string* null
@.str550 = private unnamed_addr constant [1 x i8] c"\00"
@.str550.c = internal global %nyx_string* null
@.str551 = private unnamed_addr constant [1 x i8] c"\00"
@.str551.c = internal global %nyx_string* null
@.str552 = private unnamed_addr constant [1 x i8] c"\00"
@.str552.c = internal global %nyx_string* null
@.str553 = private unnamed_addr constant [4 x i8] c"HKT\00"
@.str553.c = internal global %nyx_string* null
@.str554 = private unnamed_addr constant [1 x i8] c"\00"
@.str554.c = internal global %nyx_string* null
@.str555 = private unnamed_addr constant [1 x i8] c"\00"
@.str555.c = internal global %nyx_string* null
@.str556 = private unnamed_addr constant [91 x i8] c"HKT (higher-kinded types) and GATs (generic associated types) parse but do not instantiate\00"
@.str556.c = internal global %nyx_string* null
@.str557 = private unnamed_addr constant [97 x i8] c"Los HKT (tipos de orden superior) y GATs (tipos asociados genéricos) parsean pero no instancian\00"
@.str557.c = internal global %nyx_string* null
@.str558 = private unnamed_addr constant [23 x i8] c"wasm-arena-closure-env\00"
@.str558.c = internal global %nyx_string* null
@.str559 = private unnamed_addr constant [6 x i8] c"limit\00"
@.str559.c = internal global %nyx_string* null
@.str560 = private unnamed_addr constant [13 x i8] c"silent-wrong\00"
@.str560.c = internal global %nyx_string* null
@.str561 = private unnamed_addr constant [7 x i8] c"0.31.0\00"
@.str561.c = internal global %nyx_string* null
@.str562 = private unnamed_addr constant [1 x i8] c"\00"
@.str562.c = internal global %nyx_string* null
@.str563 = private unnamed_addr constant [1 x i8] c"\00"
@.str563.c = internal global %nyx_string* null
@.str564 = private unnamed_addr constant [1 x i8] c"\00"
@.str564.c = internal global %nyx_string* null
@.str565 = private unnamed_addr constant [22 x i8] c"nyx_arena_event_reset\00"
@.str565.c = internal global %nyx_string* null
@.str566 = private unnamed_addr constant [1 x i8] c"\00"
@.str566.c = internal global %nyx_string* null
@.str567 = private unnamed_addr constant [137 x i8] c"tests/wasm/test-wasm-23-closure-lifetime.nx,tests/wasm/test-wasm-24-dom-on-fn-turnos.nx,tests/wasm/test-wasm-29-arena-autocancelacion.nx\00"
@.str567.c = internal global %nyx_string* null
@.str568 = private unnamed_addr constant [135 x i8] c"Under the wasm arena, an async closure can READ what it captured but must not STORE a String/Array into its environment during a fire.\00"
@.str568.c = internal global %nyx_string* null
@.str569 = private unnamed_addr constant [143 x i8] c"Bajo la arena de wasm, un cierre asíncrono puede LEER lo que capturó, pero no debe GUARDAR un String/Array en su entorno durante un disparo.\00"
@.str569.c = internal global %nyx_string* null
@.str570 = private unnamed_addr constant [31 x i8] c"wasm-await-one-suspended-stack\00"
@.str570.c = internal global %nyx_string* null
@.str571 = private unnamed_addr constant [6 x i8] c"limit\00"
@.str571.c = internal global %nyx_string* null
@.str572 = private unnamed_addr constant [13 x i8] c"silent-wrong\00"
@.str572.c = internal global %nyx_string* null
@.str573 = private unnamed_addr constant [7 x i8] c"0.31.0\00"
@.str573.c = internal global %nyx_string* null
@.str574 = private unnamed_addr constant [1 x i8] c"\00"
@.str574.c = internal global %nyx_string* null
@.str575 = private unnamed_addr constant [1 x i8] c"\00"
@.str575.c = internal global %nyx_string* null
@.str576 = private unnamed_addr constant [1 x i8] c"\00"
@.str576.c = internal global %nyx_string* null
@.str577 = private unnamed_addr constant [20 x i8] c"browser_fetch_await\00"
@.str577.c = internal global %nyx_string* null
@.str578 = private unnamed_addr constant [1 x i8] c"\00"
@.str578.c = internal global %nyx_string* null
@.str579 = private unnamed_addr constant [80 x i8] c"tests/wasm/test-wasm-31-asyncify-shim.nx,tests/wasm/test-wasm-33-await-fetch.nx\00"
@.str579.c = internal global %nyx_string* null
@.str580 = private unnamed_addr constant [145 x i8] c"In wasm32-wasi only ONE function can be suspended in `await` at a time: events that arrive meanwhile are queued and delivered after it finishes.\00"
@.str580.c = internal global %nyx_string* null
@.str581 = private unnamed_addr constant [156 x i8] c"En wasm32-wasi solo UNA función puede estar suspendida en `await` a la vez: los eventos que llegan mientras tanto se encolan y se entregan cuando termina.\00"
@.str581.c = internal global %nyx_string* null
@.str582 = private unnamed_addr constant [19 x i8] c"cross-compile-arch\00"
@.str582.c = internal global %nyx_string* null
@.str583 = private unnamed_addr constant [6 x i8] c"limit\00"
@.str583.c = internal global %nyx_string* null
@.str584 = private unnamed_addr constant [5 x i8] c"loud\00"
@.str584.c = internal global %nyx_string* null
@.str585 = private unnamed_addr constant [7 x i8] c"0.41.0\00"
@.str585.c = internal global %nyx_string* null
@.str586 = private unnamed_addr constant [1 x i8] c"\00"
@.str586.c = internal global %nyx_string* null
@.str587 = private unnamed_addr constant [1 x i8] c"\00"
@.str587.c = internal global %nyx_string* null
@.str588 = private unnamed_addr constant [1 x i8] c"\00"
@.str588.c = internal global %nyx_string* null
@.str589 = private unnamed_addr constant [1 x i8] c"\00"
@.str589.c = internal global %nyx_string* null
@.str590 = private unnamed_addr constant [1 x i8] c"\00"
@.str590.c = internal global %nyx_string* null
@.str591 = private unnamed_addr constant [50 x i8] c"tests/compiler/errors/test-linux-cross-asm-x86.nx\00"
@.str591.c = internal global %nyx_string* null
@.str592 = private unnamed_addr constant [180 x i8] c"Cross-compiling Linux x86_64 <-> aarch64 (`nyx build --target <triple>`) needs the target's dev libraries installed (multiarch), and the result cannot run on the building machine.\00"
@.str592.c = internal global %nyx_string* null
@.str593 = private unnamed_addr constant [217 x i8] c"La compilación cruzada Linux x86_64 <-> aarch64 (`nyx build --target <triple>`) exige las bibliotecas de desarrollo del destino instaladas (multiarch), y el resultado no se puede ejecutar en la máquina que lo arma.\00"
@.str593.c = internal global %nyx_string* null
@.str594 = private unnamed_addr constant [20 x i8] c"regex-windows-motor\00"
@.str594.c = internal global %nyx_string* null
@.str595 = private unnamed_addr constant [6 x i8] c"limit\00"
@.str595.c = internal global %nyx_string* null
@.str596 = private unnamed_addr constant [13 x i8] c"silent-wrong\00"
@.str596.c = internal global %nyx_string* null
@.str597 = private unnamed_addr constant [7 x i8] c"0.42.1\00"
@.str597.c = internal global %nyx_string* null
@.str598 = private unnamed_addr constant [1 x i8] c"\00"
@.str598.c = internal global %nyx_string* null
@.str599 = private unnamed_addr constant [1 x i8] c"\00"
@.str599.c = internal global %nyx_string* null
@.str600 = private unnamed_addr constant [1 x i8] c"\00"
@.str600.c = internal global %nyx_string* null
@.str601 = private unnamed_addr constant [1 x i8] c"\00"
@.str601.c = internal global %nyx_string* null
@.str602 = private unnamed_addr constant [1 x i8] c"\00"
@.str602.c = internal global %nyx_string* null
@.str603 = private unnamed_addr constant [35 x i8] c"tests/regex-diff/regex_diff_main.c\00"
@.str603.c = internal global %nyx_string* null
@.str604 = private unnamed_addr constant [202 x i8] c"On Windows `std/regex` runs on a vendored engine (musl's TRE in byte mode), not on the libc; for every ERE pattern POSIX defines it gives the same result as Linux, but a few undefined forms can differ.\00"
@.str604.c = internal global %nyx_string* null
@.str605 = private unnamed_addr constant [229 x i8] c"En Windows `std/regex` corre sobre un motor vendorizado (el TRE de musl en modo bytes), no sobre la libc; para todo patrón ERE que POSIX define da el mismo resultado que en Linux, pero algunas formas indefinidas pueden diferir.\00"
@.str605.c = internal global %nyx_string* null
@.str606 = private unnamed_addr constant [26 x i8] c"shared-lib-fatal-mata-app\00"
@.str606.c = internal global %nyx_string* null
@.str607 = private unnamed_addr constant [6 x i8] c"limit\00"
@.str607.c = internal global %nyx_string* null
@.str608 = private unnamed_addr constant [6 x i8] c"crash\00"
@.str608.c = internal global %nyx_string* null
@.str609 = private unnamed_addr constant [7 x i8] c"0.42.2\00"
@.str609.c = internal global %nyx_string* null
@.str610 = private unnamed_addr constant [1 x i8] c"\00"
@.str610.c = internal global %nyx_string* null
@.str611 = private unnamed_addr constant [1 x i8] c"\00"
@.str611.c = internal global %nyx_string* null
@.str612 = private unnamed_addr constant [1 x i8] c"\00"
@.str612.c = internal global %nyx_string* null
@.str613 = private unnamed_addr constant [1 x i8] c"\00"
@.str613.c = internal global %nyx_string* null
@.str614 = private unnamed_addr constant [1 x i8] c"\00"
@.str614.c = internal global %nyx_string* null
@.str615 = private unnamed_addr constant [37 x i8] c"tests/runtime-unit/test_lib_border.c\00"
@.str615.c = internal global %nyx_string* null
@.str616 = private unnamed_addr constant [153 x i8] c"In a `.so` built with `nyx build --shared`, a failed `assert`, a `panic`, an out-of-memory or an NYX2022 kills the whole host app: there is no recovery.\00"
@.str616.c = internal global %nyx_string* null
@.str617 = private unnamed_addr constant [166 x i8] c"En una `.so` armada con `nyx build --shared`, un `assert` fallido, un `panic`, la falta de memoria o un NYX2022 matan la app anfitriona entera: no hay recuperación.\00"
@.str617.c = internal global %nyx_string* null
@.str618 = private unnamed_addr constant [24 x i8] c"serve-large-body-memory\00"
@.str618.c = internal global %nyx_string* null
@.str619 = private unnamed_addr constant [6 x i8] c"limit\00"
@.str619.c = internal global %nyx_string* null
@.str620 = private unnamed_addr constant [5 x i8] c"loud\00"
@.str620.c = internal global %nyx_string* null
@.str621 = private unnamed_addr constant [7 x i8] c"0.44.0\00"
@.str621.c = internal global %nyx_string* null
@.str622 = private unnamed_addr constant [1 x i8] c"\00"
@.str622.c = internal global %nyx_string* null
@.str623 = private unnamed_addr constant [1 x i8] c"\00"
@.str623.c = internal global %nyx_string* null
@.str624 = private unnamed_addr constant [1 x i8] c"\00"
@.str624.c = internal global %nyx_string* null
@.str625 = private unnamed_addr constant [1 x i8] c"\00"
@.str625.c = internal global %nyx_string* null
@.str626 = private unnamed_addr constant [1 x i8] c"\00"
@.str626.c = internal global %nyx_string* null
@.str627 = private unnamed_addr constant [170 x i8] c"tests/integration/test_serve_std_keepalive.py,tests/integration/test_serve_std_chunks.py,tests/integration/test_serve_std_idle_release.py,tests/ai-first/54-gc-release.nx\00"
@.str627.c = internal global %nyx_string* null
@.str628 = private unnamed_addr constant [290 x i8] c"A `std/serve` handler that returns a large body as one `String` keeps all of it in memory, and the memory a large body needed does not go back to the system: a long-lived server stays at its peak. Answer big bodies with `response_from_stream`, `response_file` or `response_chunks` instead.\00"
@.str628.c = internal global %nyx_string* null
@.str629 = private unnamed_addr constant [308 x i8] c"Un handler de `std/serve` que devuelve un cuerpo grande como un solo `String` lo tiene entero en memoria, y la memoria que pidió ese cuerpo no vuelve al sistema: un servidor de larga vida se queda en su pico. Los cuerpos grandes se responden con `response_from_stream`, `response_file` o `response_chunks`.\00"
@.str629.c = internal global %nyx_string* null
@.str630 = private unnamed_addr constant [25 x i8] c"ndarray-scalar-by-method\00"
@.str630.c = internal global %nyx_string* null
@.str631 = private unnamed_addr constant [6 x i8] c"limit\00"
@.str631.c = internal global %nyx_string* null
@.str632 = private unnamed_addr constant [5 x i8] c"loud\00"
@.str632.c = internal global %nyx_string* null
@.str633 = private unnamed_addr constant [7 x i8] c"0.45.0\00"
@.str633.c = internal global %nyx_string* null
@.str634 = private unnamed_addr constant [1 x i8] c"\00"
@.str634.c = internal global %nyx_string* null
@.str635 = private unnamed_addr constant [1 x i8] c"\00"
@.str635.c = internal global %nyx_string* null
@.str636 = private unnamed_addr constant [1 x i8] c"\00"
@.str636.c = internal global %nyx_string* null
@.str637 = private unnamed_addr constant [11 x i8] c"add_scalar\00"
@.str637.c = internal global %nyx_string* null
@.str638 = private unnamed_addr constant [1 x i8] c"\00"
@.str638.c = internal global %nyx_string* null
@.str639 = private unnamed_addr constant [36 x i8] c"tests/ai-first/57-ndarray-basico.nx\00"
@.str639.c = internal global %nyx_string* null
@.str640 = private unnamed_addr constant [115 x i8] c"`std/ndarray`: the scalar goes by method (`a.add_scalar(2.0)`, `a.mul_scalar(2.0)`), never as an operator operand.\00"
@.str640.c = internal global %nyx_string* null
@.str641 = private unnamed_addr constant [121 x i8] c"`std/ndarray`: el escalar va por método (`a.add_scalar(2.0)`, `a.mul_scalar(2.0)`), nunca como operando de un operador.\00"
@.str641.c = internal global %nyx_string* null
@.str642 = private unnamed_addr constant [33 x i8] c"implicit-monomorphization-nested\00"
@.str642.c = internal global %nyx_string* null
@.str643 = private unnamed_addr constant [6 x i8] c"fixed\00"
@.str643.c = internal global %nyx_string* null
@.str644 = private unnamed_addr constant [4 x i8] c"n/a\00"
@.str644.c = internal global %nyx_string* null
@.str645 = private unnamed_addr constant [7 x i8] c"0.16.1\00"
@.str645.c = internal global %nyx_string* null
@.str646 = private unnamed_addr constant [7 x i8] c"0.16.1\00"
@.str646.c = internal global %nyx_string* null
@.str647 = private unnamed_addr constant [1 x i8] c"\00"
@.str647.c = internal global %nyx_string* null
@.str648 = private unnamed_addr constant [1 x i8] c"\00"
@.str648.c = internal global %nyx_string* null
@.str649 = private unnamed_addr constant [17 x i8] c"monomorphization\00"
@.str649.c = internal global %nyx_string* null
@.str650 = private unnamed_addr constant [1 x i8] c"\00"
@.str650.c = internal global %nyx_string* null
@.str651 = private unnamed_addr constant [1 x i8] c"\00"
@.str651.c = internal global %nyx_string* null
@.str652 = private unnamed_addr constant [49 x i8] c"Implicit monomorphization works nested (v0.16.1)\00"
@.str652.c = internal global %nyx_string* null
@.str653 = private unnamed_addr constant [58 x i8] c"La monomorfización implícita funciona anidada (v0.16.1)\00"
@.str653.c = internal global %nyx_string* null
@.str654 = private unnamed_addr constant [21 x i8] c"and-or-short-circuit\00"
@.str654.c = internal global %nyx_string* null
@.str655 = private unnamed_addr constant [6 x i8] c"fixed\00"
@.str655.c = internal global %nyx_string* null
@.str656 = private unnamed_addr constant [4 x i8] c"n/a\00"
@.str656.c = internal global %nyx_string* null
@.str657 = private unnamed_addr constant [7 x i8] c"0.17.0\00"
@.str657.c = internal global %nyx_string* null
@.str658 = private unnamed_addr constant [7 x i8] c"0.17.0\00"
@.str658.c = internal global %nyx_string* null
@.str659 = private unnamed_addr constant [1 x i8] c"\00"
@.str659.c = internal global %nyx_string* null
@.str660 = private unnamed_addr constant [1 x i8] c"\00"
@.str660.c = internal global %nyx_string* null
@.str661 = private unnamed_addr constant [14 x i8] c"short-circuit\00"
@.str661.c = internal global %nyx_string* null
@.str662 = private unnamed_addr constant [1 x i8] c"\00"
@.str662.c = internal global %nyx_string* null
@.str663 = private unnamed_addr constant [1 x i8] c"\00"
@.str663.c = internal global %nyx_string* null
@.str664 = private unnamed_addr constant [28 x i8] c"`and`/`or` DO short-circuit\00"
@.str664.c = internal global %nyx_string* null
@.str665 = private unnamed_addr constant [35 x i8] c"`and`/`or` SÍ hacen cortocircuito\00"
@.str665.c = internal global %nyx_string* null
@.str666 = private unnamed_addr constant [19 x i8] c"nested-arrays-work\00"
@.str666.c = internal global %nyx_string* null
@.str667 = private unnamed_addr constant [6 x i8] c"fixed\00"
@.str667.c = internal global %nyx_string* null
@.str668 = private unnamed_addr constant [4 x i8] c"n/a\00"
@.str668.c = internal global %nyx_string* null
@.str669 = private unnamed_addr constant [7 x i8] c"0.17.0\00"
@.str669.c = internal global %nyx_string* null
@.str670 = private unnamed_addr constant [7 x i8] c"0.17.0\00"
@.str670.c = internal global %nyx_string* null
@.str671 = private unnamed_addr constant [1 x i8] c"\00"
@.str671.c = internal global %nyx_string* null
@.str672 = private unnamed_addr constant [1 x i8] c"\00"
@.str672.c = internal global %nyx_string* null
@.str673 = private unnamed_addr constant [14 x i8] c"nested arrays\00"
@.str673.c = internal global %nyx_string* null
@.str674 = private unnamed_addr constant [1 x i8] c"\00"
@.str674.c = internal global %nyx_string* null
@.str675 = private unnamed_addr constant [1 x i8] c"\00"
@.str675.c = internal global %nyx_string* null
@.str676 = private unnamed_addr constant [37 x i8] c"Nested arrays `Array<Array<T>>` work\00"
@.str676.c = internal global %nyx_string* null
@.str677 = private unnamed_addr constant [48 x i8] c"Los arrays anidados `Array<Array<T>>` funcionan\00"
@.str677.c = internal global %nyx_string* null
@.str678 = private unnamed_addr constant [24 x i8] c"for-untyped-slot-by-tag\00"
@.str678.c = internal global %nyx_string* null
@.str679 = private unnamed_addr constant [6 x i8] c"fixed\00"
@.str679.c = internal global %nyx_string* null
@.str680 = private unnamed_addr constant [13 x i8] c"silent-wrong\00"
@.str680.c = internal global %nyx_string* null
@.str681 = private unnamed_addr constant [7 x i8] c"0.22.0\00"
@.str681.c = internal global %nyx_string* null
@.str682 = private unnamed_addr constant [7 x i8] c"0.42.0\00"
@.str682.c = internal global %nyx_string* null
@.str683 = private unnamed_addr constant [1 x i8] c"\00"
@.str683.c = internal global %nyx_string* null
@.str684 = private unnamed_addr constant [1 x i8] c"\00"
@.str684.c = internal global %nyx_string* null
@.str685 = private unnamed_addr constant [1 x i8] c"\00"
@.str685.c = internal global %nyx_string* null
@.str686 = private unnamed_addr constant [1 x i8] c"\00"
@.str686.c = internal global %nyx_string* null
@.str687 = private unnamed_addr constant [41 x i8] c"tests/ai-first/52-for-casilla-por-tag.nx\00"
@.str687.c = internal global %nyx_string* null
@.str688 = private unnamed_addr constant [98 x i8] c"`for x in xs` over an `Array` without `<T>` reads each slot by its tag, like `xs[i]` already did.\00"
@.str688.c = internal global %nyx_string* null
@.str689 = private unnamed_addr constant [94 x i8] c"`for x in xs` sobre un `Array` sin `<T>` lee cada casilla por su tag, como ya hacía `xs[i]`.\00"
@.str689.c = internal global %nyx_string* null
@.str690 = private unnamed_addr constant [25 x i8] c"map-get-or-default-array\00"
@.str690.c = internal global %nyx_string* null
@.str691 = private unnamed_addr constant [6 x i8] c"fixed\00"
@.str691.c = internal global %nyx_string* null
@.str692 = private unnamed_addr constant [4 x i8] c"n/a\00"
@.str692.c = internal global %nyx_string* null
@.str693 = private unnamed_addr constant [7 x i8] c"0.22.0\00"
@.str693.c = internal global %nyx_string* null
@.str694 = private unnamed_addr constant [7 x i8] c"0.42.0\00"
@.str694.c = internal global %nyx_string* null
@.str695 = private unnamed_addr constant [1 x i8] c"\00"
@.str695.c = internal global %nyx_string* null
@.str696 = private unnamed_addr constant [1 x i8] c"\00"
@.str696.c = internal global %nyx_string* null
@.str697 = private unnamed_addr constant [1 x i8] c"\00"
@.str697.c = internal global %nyx_string* null
@.str698 = private unnamed_addr constant [1 x i8] c"\00"
@.str698.c = internal global %nyx_string* null
@.str699 = private unnamed_addr constant [46 x i8] c"tests/ai-first/51-map-get-or-default-array.nx\00"
@.str699.c = internal global %nyx_string* null
@.str700 = private unnamed_addr constant [143 x i8] c"`m.get_or(k, [])` with an `Array` (or a `Map`, or a struct) stored as the Map value now compiles when the result is used without an annotation\00"
@.str700.c = internal global %nyx_string* null
@.str701 = private unnamed_addr constant [136 x i8] c"`m.get_or(k, [])` con un `Array` (o un `Map`, o un struct) guardado como valor del Map ya compila cuando el resultado se usa sin anotar\00"
@.str701.c = internal global %nyx_string* null
@.str702 = private unnamed_addr constant [20 x i8] c"map-remove-on-field\00"
@.str702.c = internal global %nyx_string* null
@.str703 = private unnamed_addr constant [6 x i8] c"fixed\00"
@.str703.c = internal global %nyx_string* null
@.str704 = private unnamed_addr constant [4 x i8] c"n/a\00"
@.str704.c = internal global %nyx_string* null
@.str705 = private unnamed_addr constant [7 x i8] c"0.22.0\00"
@.str705.c = internal global %nyx_string* null
@.str706 = private unnamed_addr constant [7 x i8] c"0.22.0\00"
@.str706.c = internal global %nyx_string* null
@.str707 = private unnamed_addr constant [1 x i8] c"\00"
@.str707.c = internal global %nyx_string* null
@.str708 = private unnamed_addr constant [1 x i8] c"\00"
@.str708.c = internal global %nyx_string* null
@.str709 = private unnamed_addr constant [7 x i8] c"remove\00"
@.str709.c = internal global %nyx_string* null
@.str710 = private unnamed_addr constant [50 x i8] c"map.remove(k) on a struct field is a silent no-op\00"
@.str710.c = internal global %nyx_string* null
@.str711 = private unnamed_addr constant [60 x i8] c"tests/compiler/language/test-274-map-remove-field-access.nx\00"
@.str711.c = internal global %nyx_string* null
@.str712 = private unnamed_addr constant [95 x i8] c"`obj.field.remove(k)` on a Map struct field DOES mutate the field (fixed 2026-07-21, test-274)\00"
@.str712.c = internal global %nyx_string* null
@.str713 = private unnamed_addr constant [105 x i8] c"`obj.campo.remove(k)` sobre un campo Map de un struct SÍ muta el campo (arreglado 2026-07-21, test-274)\00"
@.str713.c = internal global %nyx_string* null
@.str714 = private unnamed_addr constant [28 x i8] c"gc-exhaustion-ordered-error\00"
@.str714.c = internal global %nyx_string* null
@.str715 = private unnamed_addr constant [6 x i8] c"fixed\00"
@.str715.c = internal global %nyx_string* null
@.str716 = private unnamed_addr constant [4 x i8] c"n/a\00"
@.str716.c = internal global %nyx_string* null
@.str717 = private unnamed_addr constant [7 x i8] c"0.22.4\00"
@.str717.c = internal global %nyx_string* null
@.str718 = private unnamed_addr constant [7 x i8] c"0.22.4\00"
@.str718.c = internal global %nyx_string* null
@.str719 = private unnamed_addr constant [1 x i8] c"\00"
@.str719.c = internal global %nyx_string* null
@.str720 = private unnamed_addr constant [1 x i8] c"\00"
@.str720.c = internal global %nyx_string* null
@.str721 = private unnamed_addr constant [18 x i8] c"GC heap exhausted\00"
@.str721.c = internal global %nyx_string* null
@.str722 = private unnamed_addr constant [1 x i8] c"\00"
@.str722.c = internal global %nyx_string* null
@.str723 = private unnamed_addr constant [1 x i8] c"\00"
@.str723.c = internal global %nyx_string* null
@.str724 = private unnamed_addr constant [73 x i8] c"GC exhaustion is now an ORDERED error, not a raw SEGV (fixed 2026-07-24)\00"
@.str724.c = internal global %nyx_string* null
@.str725 = private unnamed_addr constant [90 x i8] c"El agotamiento del GC ahora es un error ORDENADO, no un SEGV crudo (arreglado 2026-07-24)\00"
@.str725.c = internal global %nyx_string* null
@.str726 = private unnamed_addr constant [18 x i8] c"chr-zero-nul-byte\00"
@.str726.c = internal global %nyx_string* null
@.str727 = private unnamed_addr constant [6 x i8] c"fixed\00"
@.str727.c = internal global %nyx_string* null
@.str728 = private unnamed_addr constant [4 x i8] c"n/a\00"
@.str728.c = internal global %nyx_string* null
@.str729 = private unnamed_addr constant [8 x i8] c"0.22.12\00"
@.str729.c = internal global %nyx_string* null
@.str730 = private unnamed_addr constant [8 x i8] c"0.22.12\00"
@.str730.c = internal global %nyx_string* null
@.str731 = private unnamed_addr constant [1 x i8] c"\00"
@.str731.c = internal global %nyx_string* null
@.str732 = private unnamed_addr constant [1 x i8] c"\00"
@.str732.c = internal global %nyx_string* null
@.str733 = private unnamed_addr constant [7 x i8] c"chr(0)\00"
@.str733.c = internal global %nyx_string* null
@.str734 = private unnamed_addr constant [1 x i8] c"\00"
@.str734.c = internal global %nyx_string* null
@.str735 = private unnamed_addr constant [34 x i8] c"tests/ai-first/11-chr-nul-safe.nx\00"
@.str735.c = internal global %nyx_string* null
@.str736 = private unnamed_addr constant [63 x i8] c"`chr(0)` builds the real NUL byte (v0.22.x+, fixed 2026-07-25)\00"
@.str736.c = internal global %nyx_string* null
@.str737 = private unnamed_addr constant [69 x i8] c"`chr(0)` construye el byte NUL real (v0.22.x+, arreglado 2026-07-25)\00"
@.str737.c = internal global %nyx_string* null
@.str738 = private unnamed_addr constant [14 x i8] c"args-contains\00"
@.str738.c = internal global %nyx_string* null
@.str739 = private unnamed_addr constant [6 x i8] c"fixed\00"
@.str739.c = internal global %nyx_string* null
@.str740 = private unnamed_addr constant [4 x i8] c"n/a\00"
@.str740.c = internal global %nyx_string* null
@.str741 = private unnamed_addr constant [8 x i8] c"0.22.16\00"
@.str741.c = internal global %nyx_string* null
@.str742 = private unnamed_addr constant [7 x i8] c"0.45.2\00"
@.str742.c = internal global %nyx_string* null
@.str743 = private unnamed_addr constant [1 x i8] c"\00"
@.str743.c = internal global %nyx_string* null
@.str744 = private unnamed_addr constant [1 x i8] c"\00"
@.str744.c = internal global %nyx_string* null
@.str745 = private unnamed_addr constant [1 x i8] c"\00"
@.str745.c = internal global %nyx_string* null
@.str746 = private unnamed_addr constant [1 x i8] c"\00"
@.str746.c = internal global %nyx_string* null
@.str747 = private unnamed_addr constant [35 x i8] c"tests/ai-first/59-args-contains.nx\00"
@.str747.c = internal global %nyx_string* null
@.str748 = private unnamed_addr constant [47 x i8] c"`get_args().contains(\22--flag\22)` finds the flag\00"
@.str748.c = internal global %nyx_string* null
@.str749 = private unnamed_addr constant [56 x i8] c"`get_args().contains(\22--bandera\22)` encuentra la bandera\00"
@.str749.c = internal global %nyx_string* null
@.str750 = private unnamed_addr constant [21 x i8] c"contains-direct-slot\00"
@.str750.c = internal global %nyx_string* null
@.str751 = private unnamed_addr constant [6 x i8] c"fixed\00"
@.str751.c = internal global %nyx_string* null
@.str752 = private unnamed_addr constant [4 x i8] c"n/a\00"
@.str752.c = internal global %nyx_string* null
@.str753 = private unnamed_addr constant [8 x i8] c"0.22.16\00"
@.str753.c = internal global %nyx_string* null
@.str754 = private unnamed_addr constant [7 x i8] c"0.41.0\00"
@.str754.c = internal global %nyx_string* null
@.str755 = private unnamed_addr constant [1 x i8] c"\00"
@.str755.c = internal global %nyx_string* null
@.str756 = private unnamed_addr constant [1 x i8] c"\00"
@.str756.c = internal global %nyx_string* null
@.str757 = private unnamed_addr constant [1 x i8] c"\00"
@.str757.c = internal global %nyx_string* null
@.str758 = private unnamed_addr constant [1 x i8] c"\00"
@.str758.c = internal global %nyx_string* null
@.str759 = private unnamed_addr constant [47 x i8] c"tests/ai-first/45-contains-elemento-directo.nx\00"
@.str759.c = internal global %nyx_string* null
@.str760 = private unnamed_addr constant [123 x i8] c"`xs.contains(ys[i])` and `xs.indexOf(ys[i])` compare by CONTENT when the needle is a slot of another `Array` without `<T>`\00"
@.str760.c = internal global %nyx_string* null
@.str761 = private unnamed_addr constant [123 x i8] c"`xs.contains(ys[i])` y `xs.indexOf(ys[i])` comparan por CONTENIDO cuando la aguja es una casilla de otro `Array` sin `<T>`\00"
@.str761.c = internal global %nyx_string* null
@.str762 = private unnamed_addr constant [14 x i8] c"enum-equality\00"
@.str762.c = internal global %nyx_string* null
@.str763 = private unnamed_addr constant [6 x i8] c"fixed\00"
@.str763.c = internal global %nyx_string* null
@.str764 = private unnamed_addr constant [4 x i8] c"n/a\00"
@.str764.c = internal global %nyx_string* null
@.str765 = private unnamed_addr constant [8 x i8] c"0.22.16\00"
@.str765.c = internal global %nyx_string* null
@.str766 = private unnamed_addr constant [7 x i8] c"0.45.2\00"
@.str766.c = internal global %nyx_string* null
@.str767 = private unnamed_addr constant [1 x i8] c"\00"
@.str767.c = internal global %nyx_string* null
@.str768 = private unnamed_addr constant [1 x i8] c"\00"
@.str768.c = internal global %nyx_string* null
@.str769 = private unnamed_addr constant [1 x i8] c"\00"
@.str769.c = internal global %nyx_string* null
@.str770 = private unnamed_addr constant [1 x i8] c"\00"
@.str770.c = internal global %nyx_string* null
@.str771 = private unnamed_addr constant [35 x i8] c"tests/ai-first/60-enum-igualdad.nx\00"
@.str771.c = internal global %nyx_string* null
@.str772 = private unnamed_addr constant [54 x i8] c"`a == b` between two enum values compares the variant\00"
@.str772.c = internal global %nyx_string* null
@.str773 = private unnamed_addr constant [55 x i8] c"`a == b` entre dos valores de enum compara la variante\00"
@.str773.c = internal global %nyx_string* null
@.str774 = private unnamed_addr constant [20 x i8] c"for-over-enum-array\00"
@.str774.c = internal global %nyx_string* null
@.str775 = private unnamed_addr constant [6 x i8] c"fixed\00"
@.str775.c = internal global %nyx_string* null
@.str776 = private unnamed_addr constant [4 x i8] c"n/a\00"
@.str776.c = internal global %nyx_string* null
@.str777 = private unnamed_addr constant [8 x i8] c"0.22.16\00"
@.str777.c = internal global %nyx_string* null
@.str778 = private unnamed_addr constant [7 x i8] c"0.45.2\00"
@.str778.c = internal global %nyx_string* null
@.str779 = private unnamed_addr constant [1 x i8] c"\00"
@.str779.c = internal global %nyx_string* null
@.str780 = private unnamed_addr constant [1 x i8] c"\00"
@.str780.c = internal global %nyx_string* null
@.str781 = private unnamed_addr constant [1 x i8] c"\00"
@.str781.c = internal global %nyx_string* null
@.str782 = private unnamed_addr constant [1 x i8] c"\00"
@.str782.c = internal global %nyx_string* null
@.str783 = private unnamed_addr constant [60 x i8] c"tests/compiler/language/test-561-for-sobre-array-de-enum.nx\00"
@.str783.c = internal global %nyx_string* null
@.str784 = private unnamed_addr constant [49 x i8] c"`for c: Color in cs` over an `Array<Enum>` works\00"
@.str784.c = internal global %nyx_string* null
@.str785 = private unnamed_addr constant [53 x i8] c"`for c: Color in cs` sobre un `Array<Enum>` funciona\00"
@.str785.c = internal global %nyx_string* null
@.str786 = private unnamed_addr constant [21 x i8] c"index-on-call-concat\00"
@.str786.c = internal global %nyx_string* null
@.str787 = private unnamed_addr constant [6 x i8] c"fixed\00"
@.str787.c = internal global %nyx_string* null
@.str788 = private unnamed_addr constant [4 x i8] c"n/a\00"
@.str788.c = internal global %nyx_string* null
@.str789 = private unnamed_addr constant [8 x i8] c"0.22.16\00"
@.str789.c = internal global %nyx_string* null
@.str790 = private unnamed_addr constant [7 x i8] c"0.45.1\00"
@.str790.c = internal global %nyx_string* null
@.str791 = private unnamed_addr constant [1 x i8] c"\00"
@.str791.c = internal global %nyx_string* null
@.str792 = private unnamed_addr constant [1 x i8] c"\00"
@.str792.c = internal global %nyx_string* null
@.str793 = private unnamed_addr constant [1 x i8] c"\00"
@.str793.c = internal global %nyx_string* null
@.str794 = private unnamed_addr constant [1 x i8] c"\00"
@.str794.c = internal global %nyx_string* null
@.str795 = private unnamed_addr constant [55 x i8] c"tests/ai-first/58-indice-de-llamada-concatena-texto.nx\00"
@.str795.c = internal global %nyx_string* null
@.str796 = private unnamed_addr constant [66 x i8] c"`\22text\22 + f()[0]` gives the text when `f` returns `Array<String>`\00"
@.str796.c = internal global %nyx_string* null
@.str797 = private unnamed_addr constant [67 x i8] c"`\22texto\22 + f()[0]` da el texto cuando `f` devuelve `Array<String>`\00"
@.str797.c = internal global %nyx_string* null
@.str798 = private unnamed_addr constant [17 x i8] c"map-has-slot-key\00"
@.str798.c = internal global %nyx_string* null
@.str799 = private unnamed_addr constant [6 x i8] c"fixed\00"
@.str799.c = internal global %nyx_string* null
@.str800 = private unnamed_addr constant [4 x i8] c"n/a\00"
@.str800.c = internal global %nyx_string* null
@.str801 = private unnamed_addr constant [8 x i8] c"0.22.16\00"
@.str801.c = internal global %nyx_string* null
@.str802 = private unnamed_addr constant [7 x i8] c"0.45.3\00"
@.str802.c = internal global %nyx_string* null
@.str803 = private unnamed_addr constant [1 x i8] c"\00"
@.str803.c = internal global %nyx_string* null
@.str804 = private unnamed_addr constant [1 x i8] c"\00"
@.str804.c = internal global %nyx_string* null
@.str805 = private unnamed_addr constant [1 x i8] c"\00"
@.str805.c = internal global %nyx_string* null
@.str806 = private unnamed_addr constant [1 x i8] c"\00"
@.str806.c = internal global %nyx_string* null
@.str807 = private unnamed_addr constant [46 x i8] c"tests/ai-first/61-map-has-clave-de-casilla.nx\00"
@.str807.c = internal global %nyx_string* null
@.str808 = private unnamed_addr constant [60 x i8] c"`m.has(c[0])` compiles when `c` is an `Array` without `<T>`\00"
@.str808.c = internal global %nyx_string* null
@.str809 = private unnamed_addr constant [57 x i8] c"`m.has(c[0])` compila cuando `c` es un `Array` sin `<T>`\00"
@.str809.c = internal global %nyx_string* null
@.str810 = private unnamed_addr constant [13 x i8] c"slot-eq-slot\00"
@.str810.c = internal global %nyx_string* null
@.str811 = private unnamed_addr constant [6 x i8] c"fixed\00"
@.str811.c = internal global %nyx_string* null
@.str812 = private unnamed_addr constant [4 x i8] c"n/a\00"
@.str812.c = internal global %nyx_string* null
@.str813 = private unnamed_addr constant [8 x i8] c"0.22.16\00"
@.str813.c = internal global %nyx_string* null
@.str814 = private unnamed_addr constant [7 x i8] c"0.41.0\00"
@.str814.c = internal global %nyx_string* null
@.str815 = private unnamed_addr constant [1 x i8] c"\00"
@.str815.c = internal global %nyx_string* null
@.str816 = private unnamed_addr constant [1 x i8] c"\00"
@.str816.c = internal global %nyx_string* null
@.str817 = private unnamed_addr constant [1 x i8] c"\00"
@.str817.c = internal global %nyx_string* null
@.str818 = private unnamed_addr constant [1 x i8] c"\00"
@.str818.c = internal global %nyx_string* null
@.str819 = private unnamed_addr constant [43 x i8] c"tests/ai-first/47-casilla-igual-casilla.nx\00"
@.str819.c = internal global %nyx_string* null
@.str820 = private unnamed_addr constant [78 x i8] c"`a[i] == b[j]` between two `Array`s without `<T>` compares Strings by CONTENT\00"
@.str820.c = internal global %nyx_string* null
@.str821 = private unnamed_addr constant [77 x i8] c"`a[i] == b[j]` entre dos `Array` sin `<T>` compara los Strings por CONTENIDO\00"
@.str821.c = internal global %nyx_string* null
@.str822 = private unnamed_addr constant [27 x i8] c"array-elem-method-chaining\00"
@.str822.c = internal global %nyx_string* null
@.str823 = private unnamed_addr constant [6 x i8] c"fixed\00"
@.str823.c = internal global %nyx_string* null
@.str824 = private unnamed_addr constant [4 x i8] c"n/a\00"
@.str824.c = internal global %nyx_string* null
@.str825 = private unnamed_addr constant [8 x i8] c"0.22.18\00"
@.str825.c = internal global %nyx_string* null
@.str826 = private unnamed_addr constant [8 x i8] c"0.22.18\00"
@.str826.c = internal global %nyx_string* null
@.str827 = private unnamed_addr constant [1 x i8] c"\00"
@.str827.c = internal global %nyx_string* null
@.str828 = private unnamed_addr constant [1 x i8] c"\00"
@.str828.c = internal global %nyx_string* null
@.str829 = private unnamed_addr constant [8 x i8] c"chained\00"
@.str829.c = internal global %nyx_string* null
@.str830 = private unnamed_addr constant [28 x i8] c"arr[i].method() causes SEGV\00"
@.str830.c = internal global %nyx_string* null
@.str831 = private unnamed_addr constant [1 x i8] c"\00"
@.str831.c = internal global %nyx_string* null
@.str832 = private unnamed_addr constant [81 x i8] c"Methods chained on a user function's `Array` return (FIXED v0.22.x+, 2026-07-26)\00"
@.str832.c = internal global %nyx_string* null
@.str833 = private unnamed_addr constant [120 x i8] c"Los métodos encadenados sobre el retorno `Array` de una función de usuario FUNCIONAN (arreglado v0.22.x+, 2026-07-26)\00"
@.str833.c = internal global %nyx_string* null
@.str834 = private unnamed_addr constant [22 x i8] c"closure-capture-works\00"
@.str834.c = internal global %nyx_string* null
@.str835 = private unnamed_addr constant [6 x i8] c"fixed\00"
@.str835.c = internal global %nyx_string* null
@.str836 = private unnamed_addr constant [4 x i8] c"n/a\00"
@.str836.c = internal global %nyx_string* null
@.str837 = private unnamed_addr constant [8 x i8] c"0.22.19\00"
@.str837.c = internal global %nyx_string* null
@.str838 = private unnamed_addr constant [8 x i8] c"0.22.19\00"
@.str838.c = internal global %nyx_string* null
@.str839 = private unnamed_addr constant [1 x i8] c"\00"
@.str839.c = internal global %nyx_string* null
@.str840 = private unnamed_addr constant [1 x i8] c"\00"
@.str840.c = internal global %nyx_string* null
@.str841 = private unnamed_addr constant [9 x i8] c"closures\00"
@.str841.c = internal global %nyx_string* null
@.str842 = private unnamed_addr constant [54 x i8] c"closure capture of locals is broken|capture is BROKEN\00"
@.str842.c = internal global %nyx_string* null
@.str843 = private unnamed_addr constant [43 x i8] c"tests/ai-first/12-closure-capture-paths.nx\00"
@.str843.c = internal global %nyx_string* null
@.str844 = private unnamed_addr constant [92 x i8] c"Closure capture of locals WORKS — including a lambda and a nested fn in the same function\00"
@.str844.c = internal global %nyx_string* null
@.str845 = private unnamed_addr constant [105 x i8] c"La captura de locals en closures FUNCIONA — incluyendo un lambda y una fn anidada en la misma función\00"
@.str845.c = internal global %nyx_string* null
@.str846 = private unnamed_addr constant [27 x i8] c"tcp-write-loops-until-sent\00"
@.str846.c = internal global %nyx_string* null
@.str847 = private unnamed_addr constant [6 x i8] c"fixed\00"
@.str847.c = internal global %nyx_string* null
@.str848 = private unnamed_addr constant [4 x i8] c"n/a\00"
@.str848.c = internal global %nyx_string* null
@.str849 = private unnamed_addr constant [8 x i8] c"0.22.19\00"
@.str849.c = internal global %nyx_string* null
@.str850 = private unnamed_addr constant [8 x i8] c"0.22.19\00"
@.str850.c = internal global %nyx_string* null
@.str851 = private unnamed_addr constant [1 x i8] c"\00"
@.str851.c = internal global %nyx_string* null
@.str852 = private unnamed_addr constant [1 x i8] c"\00"
@.str852.c = internal global %nyx_string* null
@.str853 = private unnamed_addr constant [10 x i8] c"tcp_write\00"
@.str853.c = internal global %nyx_string* null
@.str854 = private unnamed_addr constant [1 x i8] c"\00"
@.str854.c = internal global %nyx_string* null
@.str855 = private unnamed_addr constant [1 x i8] c"\00"
@.str855.c = internal global %nyx_string* null
@.str856 = private unnamed_addr constant [62 x i8] c"`tcp_write`/`tls_write` already loop until everything is sent\00"
@.str856.c = internal global %nyx_string* null
@.str857 = private unnamed_addr constant [58 x i8] c"`tcp_write`/`tls_write` ya hacen loop hasta enviarlo todo\00"
@.str857.c = internal global %nyx_string* null
@.str858 = private unnamed_addr constant [30 x i8] c"option-struct-multifield-link\00"
@.str858.c = internal global %nyx_string* null
@.str859 = private unnamed_addr constant [6 x i8] c"fixed\00"
@.str859.c = internal global %nyx_string* null
@.str860 = private unnamed_addr constant [4 x i8] c"n/a\00"
@.str860.c = internal global %nyx_string* null
@.str861 = private unnamed_addr constant [8 x i8] c"0.22.21\00"
@.str861.c = internal global %nyx_string* null
@.str862 = private unnamed_addr constant [7 x i8] c"0.31.0\00"
@.str862.c = internal global %nyx_string* null
@.str863 = private unnamed_addr constant [1 x i8] c"\00"
@.str863.c = internal global %nyx_string* null
@.str864 = private unnamed_addr constant [1 x i8] c"\00"
@.str864.c = internal global %nyx_string* null
@.str865 = private unnamed_addr constant [7 x i8] c"boxing\00"
@.str865.c = internal global %nyx_string* null
@.str866 = private unnamed_addr constant [96 x i8] c"as the payload fails to LINK|rompe el LINK|clang refuses it every time|clang lo rechaza siempre\00"
@.str866.c = internal global %nyx_string* null
@.str867 = private unnamed_addr constant [97 x i8] c"tests/compiler/language/test-386-option-struct-multifield.nx,tests/ai-first/15-http-items-api.nx\00"
@.str867.c = internal global %nyx_string* null
@.str868 = private unnamed_addr constant [138 x i8] c"`Option<Struct>`/`Result<Struct, E>` with a 2+-field struct as the payload WORKS — return the struct directly, no Array packing needed.\00"
@.str868.c = internal global %nyx_string* null
@.str869 = private unnamed_addr constant [152 x i8] c"`Option<Struct>`/`Result<Struct, E>` con un struct de 2+ campos como payload FUNCIONA — retorna el struct directamente, sin empaquetarlo en un Array.\00"
@.str869.c = internal global %nyx_string* null
@.str870 = private unnamed_addr constant [26 x i8] c"udp-binary-payload-intact\00"
@.str870.c = internal global %nyx_string* null
@.str871 = private unnamed_addr constant [6 x i8] c"fixed\00"
@.str871.c = internal global %nyx_string* null
@.str872 = private unnamed_addr constant [4 x i8] c"n/a\00"
@.str872.c = internal global %nyx_string* null
@.str873 = private unnamed_addr constant [7 x i8] c"0.23.0\00"
@.str873.c = internal global %nyx_string* null
@.str874 = private unnamed_addr constant [7 x i8] c"0.23.0\00"
@.str874.c = internal global %nyx_string* null
@.str875 = private unnamed_addr constant [1 x i8] c"\00"
@.str875.c = internal global %nyx_string* null
@.str876 = private unnamed_addr constant [1 x i8] c"\00"
@.str876.c = internal global %nyx_string* null
@.str877 = private unnamed_addr constant [11 x i8] c"udp_sendto\00"
@.str877.c = internal global %nyx_string* null
@.str878 = private unnamed_addr constant [1 x i8] c"\00"
@.str878.c = internal global %nyx_string* null
@.str879 = private unnamed_addr constant [40 x i8] c"tests/ai-first/20-udp-binary-payload.nx\00"
@.str879.c = internal global %nyx_string* null
@.str880 = private unnamed_addr constant [76 x i8] c"`udp_sendto`/`udp_recvfrom` carry binary payloads intact (fixed 2026-07-30)\00"
@.str880.c = internal global %nyx_string* null
@.str881 = private unnamed_addr constant [90 x i8] c"`udp_sendto`/`udp_recvfrom` transportan payloads binarios intactos (arreglado 2026-07-30)\00"
@.str881.c = internal global %nyx_string* null
@.str882 = private unnamed_addr constant [28 x i8] c"tls-peer-cert-introspection\00"
@.str882.c = internal global %nyx_string* null
@.str883 = private unnamed_addr constant [6 x i8] c"fixed\00"
@.str883.c = internal global %nyx_string* null
@.str884 = private unnamed_addr constant [4 x i8] c"n/a\00"
@.str884.c = internal global %nyx_string* null
@.str885 = private unnamed_addr constant [7 x i8] c"0.23.1\00"
@.str885.c = internal global %nyx_string* null
@.str886 = private unnamed_addr constant [7 x i8] c"0.23.1\00"
@.str886.c = internal global %nyx_string* null
@.str887 = private unnamed_addr constant [1 x i8] c"\00"
@.str887.c = internal global %nyx_string* null
@.str888 = private unnamed_addr constant [1 x i8] c"\00"
@.str888.c = internal global %nyx_string* null
@.str889 = private unnamed_addr constant [14 x i8] c"tls_peer_cert\00"
@.str889.c = internal global %nyx_string* null
@.str890 = private unnamed_addr constant [1 x i8] c"\00"
@.str890.c = internal global %nyx_string* null
@.str891 = private unnamed_addr constant [39 x i8] c"tests/ai-first/19-tls-introspection.nx\00"
@.str891.c = internal global %nyx_string* null
@.str892 = private unnamed_addr constant [78 x i8] c"You CAN inspect the peer's TLS certificate — no C bindings needed (v0.23.1)\00"
@.str892.c = internal global %nyx_string* null
@.str893 = private unnamed_addr constant [85 x i8] c"SÍ se puede inspeccionar el certificado TLS del peer — sin bindings a C (v0.23.1)\00"
@.str893.c = internal global %nyx_string* null
@.str894 = private unnamed_addr constant [29 x i8] c"missing-method-compile-error\00"
@.str894.c = internal global %nyx_string* null
@.str895 = private unnamed_addr constant [6 x i8] c"fixed\00"
@.str895.c = internal global %nyx_string* null
@.str896 = private unnamed_addr constant [4 x i8] c"n/a\00"
@.str896.c = internal global %nyx_string* null
@.str897 = private unnamed_addr constant [7 x i8] c"0.24.0\00"
@.str897.c = internal global %nyx_string* null
@.str898 = private unnamed_addr constant [7 x i8] c"0.24.0\00"
@.str898.c = internal global %nyx_string* null
@.str899 = private unnamed_addr constant [1 x i8] c"\00"
@.str899.c = internal global %nyx_string* null
@.str900 = private unnamed_addr constant [1 x i8] c"\00"
@.str900.c = internal global %nyx_string* null
@.str901 = private unnamed_addr constant [8 x i8] c"NYX1022\00"
@.str901.c = internal global %nyx_string* null
@.str902 = private unnamed_addr constant [1 x i8] c"\00"
@.str902.c = internal global %nyx_string* null
@.str903 = private unnamed_addr constant [1 x i8] c"\00"
@.str903.c = internal global %nyx_string* null
@.str904 = private unnamed_addr constant [98 x i8] c"A method that doesn't exist for the receiver's type is now a compile error, not garbage (v0.24.0)\00"
@.str904.c = internal global %nyx_string* null
@.str905 = private unnamed_addr constant [106 x i8] c"Un método que no existe para el tipo del receiver ahora es un error de compilación, no basura (v0.24.0)\00"
@.str905.c = internal global %nyx_string* null
@.str906 = private unnamed_addr constant [21 x i8] c"repl-declared-subset\00"
@.str906.c = internal global %nyx_string* null
@.str907 = private unnamed_addr constant [6 x i8] c"fixed\00"
@.str907.c = internal global %nyx_string* null
@.str908 = private unnamed_addr constant [4 x i8] c"n/a\00"
@.str908.c = internal global %nyx_string* null
@.str909 = private unnamed_addr constant [7 x i8] c"0.24.3\00"
@.str909.c = internal global %nyx_string* null
@.str910 = private unnamed_addr constant [7 x i8] c"0.24.3\00"
@.str910.c = internal global %nyx_string* null
@.str911 = private unnamed_addr constant [1 x i8] c"\00"
@.str911.c = internal global %nyx_string* null
@.str912 = private unnamed_addr constant [1 x i8] c"\00"
@.str912.c = internal global %nyx_string* null
@.str913 = private unnamed_addr constant [6 x i8] c"NYX30\00"
@.str913.c = internal global %nyx_string* null
@.str914 = private unnamed_addr constant [1 x i8] c"\00"
@.str914.c = internal global %nyx_string* null
@.str915 = private unnamed_addr constant [1 x i8] c"\00"
@.str915.c = internal global %nyx_string* null
@.str916 = private unnamed_addr constant [68 x i8] c"The REPL evaluates a declared SUBSET and says so loudly (v0.24.2-3)\00"
@.str916.c = internal global %nyx_string* null
@.str917 = private unnamed_addr constant [75 x i8] c"El REPL evalúa un SUBCONJUNTO declarado y lo dice en voz alta (v0.24.2-3)\00"
@.str917.c = internal global %nyx_string* null
@.str918 = private unnamed_addr constant [18 x i8] c"bind-failure-loud\00"
@.str918.c = internal global %nyx_string* null
@.str919 = private unnamed_addr constant [6 x i8] c"fixed\00"
@.str919.c = internal global %nyx_string* null
@.str920 = private unnamed_addr constant [4 x i8] c"n/a\00"
@.str920.c = internal global %nyx_string* null
@.str921 = private unnamed_addr constant [7 x i8] c"0.24.4\00"
@.str921.c = internal global %nyx_string* null
@.str922 = private unnamed_addr constant [7 x i8] c"0.24.4\00"
@.str922.c = internal global %nyx_string* null
@.str923 = private unnamed_addr constant [1 x i8] c"\00"
@.str923.c = internal global %nyx_string* null
@.str924 = private unnamed_addr constant [1 x i8] c"\00"
@.str924.c = internal global %nyx_string* null
@.str925 = private unnamed_addr constant [17 x i8] c"cannot bind port\00"
@.str925.c = internal global %nyx_string* null
@.str926 = private unnamed_addr constant [1 x i8] c"\00"
@.str926.c = internal global %nyx_string* null
@.str927 = private unnamed_addr constant [39 x i8] c"tests/ai-first/21-bind-failure-loud.nx\00"
@.str927.c = internal global %nyx_string* null
@.str928 = private unnamed_addr constant [36 x i8] c"A failed bind is LOUD now (v0.24.4)\00"
@.str928.c = internal global %nyx_string* null
@.str929 = private unnamed_addr constant [45 x i8] c"Un bind que falla ahora es RUIDOSO (v0.24.4)\00"
@.str929.c = internal global %nyx_string* null
@.str930 = private unnamed_addr constant [15 x i8] c"file-api-names\00"
@.str930.c = internal global %nyx_string* null
@.str931 = private unnamed_addr constant [6 x i8] c"fixed\00"
@.str931.c = internal global %nyx_string* null
@.str932 = private unnamed_addr constant [4 x i8] c"n/a\00"
@.str932.c = internal global %nyx_string* null
@.str933 = private unnamed_addr constant [7 x i8] c"0.24.4\00"
@.str933.c = internal global %nyx_string* null
@.str934 = private unnamed_addr constant [7 x i8] c"0.24.4\00"
@.str934.c = internal global %nyx_string* null
@.str935 = private unnamed_addr constant [1 x i8] c"\00"
@.str935.c = internal global %nyx_string* null
@.str936 = private unnamed_addr constant [1 x i8] c"\00"
@.str936.c = internal global %nyx_string* null
@.str937 = private unnamed_addr constant [10 x i8] c"file_open\00"
@.str937.c = internal global %nyx_string* null
@.str938 = private unnamed_addr constant [23 x i8] c"open_file(|close_file(\00"
@.str938.c = internal global %nyx_string* null
@.str939 = private unnamed_addr constant [1 x i8] c"\00"
@.str939.c = internal global %nyx_string* null
@.str940 = private unnamed_addr constant [138 x i8] c"The real buffered file API is `file_open()`/`file_write_string()`/`file_close()` — not `open_file()` or `close_file()` (invented names)\00"
@.str940.c = internal global %nyx_string* null
@.str941 = private unnamed_addr constant [149 x i8] c"La API real de archivos con buffer es `file_open()`/`file_write_string()`/`file_close()` — no `open_file()` ni `close_file()` (nombres inventados)\00"
@.str941.c = internal global %nyx_string* null
@.str942 = private unnamed_addr constant [24 x i8] c"array-index-float-write\00"
@.str942.c = internal global %nyx_string* null
@.str943 = private unnamed_addr constant [6 x i8] c"fixed\00"
@.str943.c = internal global %nyx_string* null
@.str944 = private unnamed_addr constant [4 x i8] c"n/a\00"
@.str944.c = internal global %nyx_string* null
@.str945 = private unnamed_addr constant [8 x i8] c"0.24.10\00"
@.str945.c = internal global %nyx_string* null
@.str946 = private unnamed_addr constant [8 x i8] c"0.24.10\00"
@.str946.c = internal global %nyx_string* null
@.str947 = private unnamed_addr constant [1 x i8] c"\00"
@.str947.c = internal global %nyx_string* null
@.str948 = private unnamed_addr constant [1 x i8] c"\00"
@.str948.c = internal global %nyx_string* null
@.str949 = private unnamed_addr constant [1 x i8] c"\00"
@.str949.c = internal global %nyx_string* null
@.str950 = private unnamed_addr constant [36 x i8] c"corrupts the value on the next read\00"
@.str950.c = internal global %nyx_string* null
@.str951 = private unnamed_addr constant [76 x i8] c"tests/ai-first/17-csv-aggregator.nx,tests/ai-first/18-http-client-filter.nx\00"
@.str951.c = internal global %nyx_string* null
@.str952 = private unnamed_addr constant [46 x i8] c"`arr[i] = <float>` on an existing Array WORKS\00"
@.str952.c = internal global %nyx_string* null
@.str953 = private unnamed_addr constant [53 x i8] c"`arr[i] = <float>` sobre un Array existente FUNCIONA\00"
@.str953.c = internal global %nyx_string* null
@.str954 = private unnamed_addr constant [26 x i8] c"sync-global-init-reliable\00"
@.str954.c = internal global %nyx_string* null
@.str955 = private unnamed_addr constant [6 x i8] c"fixed\00"
@.str955.c = internal global %nyx_string* null
@.str956 = private unnamed_addr constant [4 x i8] c"n/a\00"
@.str956.c = internal global %nyx_string* null
@.str957 = private unnamed_addr constant [8 x i8] c"0.24.27\00"
@.str957.c = internal global %nyx_string* null
@.str958 = private unnamed_addr constant [8 x i8] c"0.24.27\00"
@.str958.c = internal global %nyx_string* null
@.str959 = private unnamed_addr constant [1 x i8] c"\00"
@.str959.c = internal global %nyx_string* null
@.str960 = private unnamed_addr constant [1 x i8] c"\00"
@.str960.c = internal global %nyx_string* null
@.str961 = private unnamed_addr constant [10 x i8] c"mutex_new\00"
@.str961.c = internal global %nyx_string* null
@.str962 = private unnamed_addr constant [1 x i8] c"\00"
@.str962.c = internal global %nyx_string* null
@.str963 = private unnamed_addr constant [50 x i8] c"tests/ai-first/23-sync-global-mutex-wg-timeout.nx\00"
@.str963.c = internal global %nyx_string* null
@.str964 = private unnamed_addr constant [132 x i8] c"Stateful handles (`mutex_new()`, `sem_new()`, `wg_new()`) are RELIABLE as global initializers (since v0.24.27; measured 2026-08-21)\00"
@.str964.c = internal global %nyx_string* null
@.str965 = private unnamed_addr constant [145 x i8] c"Los handles con estado (`mutex_new()`, `sem_new()`, `wg_new()`) son CONFIABLES como inicializadores globales (desde v0.24.27; medido 2026-08-21)\00"
@.str965.c = internal global %nyx_string* null
@.str966 = private unnamed_addr constant [25 x i8] c"array-row-read-as-string\00"
@.str966.c = internal global %nyx_string* null
@.str967 = private unnamed_addr constant [6 x i8] c"fixed\00"
@.str967.c = internal global %nyx_string* null
@.str968 = private unnamed_addr constant [4 x i8] c"n/a\00"
@.str968.c = internal global %nyx_string* null
@.str969 = private unnamed_addr constant [7 x i8] c"0.30.0\00"
@.str969.c = internal global %nyx_string* null
@.str970 = private unnamed_addr constant [7 x i8] c"0.41.0\00"
@.str970.c = internal global %nyx_string* null
@.str971 = private unnamed_addr constant [1 x i8] c"\00"
@.str971.c = internal global %nyx_string* null
@.str972 = private unnamed_addr constant [1 x i8] c"\00"
@.str972.c = internal global %nyx_string* null
@.str973 = private unnamed_addr constant [1 x i8] c"\00"
@.str973.c = internal global %nyx_string* null
@.str974 = private unnamed_addr constant [1 x i8] c"\00"
@.str974.c = internal global %nyx_string* null
@.str975 = private unnamed_addr constant [45 x i8] c"tests/ai-first/50-fila-array-luego-string.nx\00"
@.str975.c = internal global %nyx_string* null
@.str976 = private unnamed_addr constant [113 x i8] c"`let pn: String = filas[1]`, with `filas` an `Array` of rows (Arrays), now aborts at run time naming both types.\00"
@.str976.c = internal global %nyx_string* null
@.str977 = private unnamed_addr constant [123 x i8] c"`let pn: String = filas[1]`, con `filas` un `Array` de filas (Arrays), ahora aborta en ejecución nombrando los dos tipos.\00"
@.str977.c = internal global %nyx_string* null
@.str978 = private unnamed_addr constant [21 x i8] c"continue-in-for-loop\00"
@.str978.c = internal global %nyx_string* null
@.str979 = private unnamed_addr constant [6 x i8] c"fixed\00"
@.str979.c = internal global %nyx_string* null
@.str980 = private unnamed_addr constant [4 x i8] c"n/a\00"
@.str980.c = internal global %nyx_string* null
@.str981 = private unnamed_addr constant [7 x i8] c"0.31.0\00"
@.str981.c = internal global %nyx_string* null
@.str982 = private unnamed_addr constant [7 x i8] c"0.31.0\00"
@.str982.c = internal global %nyx_string* null
@.str983 = private unnamed_addr constant [1 x i8] c"\00"
@.str983.c = internal global %nyx_string* null
@.str984 = private unnamed_addr constant [1 x i8] c"\00"
@.str984.c = internal global %nyx_string* null
@.str985 = private unnamed_addr constant [1 x i8] c"\00"
@.str985.c = internal global %nyx_string* null
@.str986 = private unnamed_addr constant [1 x i8] c"\00"
@.str986.c = internal global %nyx_string* null
@.str987 = private unnamed_addr constant [55 x i8] c"tests/compiler/language/test-416-continue-en-for-in.nx\00"
@.str987.c = internal global %nyx_string* null
@.str988 = private unnamed_addr constant [85 x i8] c"`continue` inside a `for … in` loop moves to the next iteration (fixed 2026-09-13)\00"
@.str988.c = internal global %nyx_string* null
@.str989 = private unnamed_addr constant [90 x i8] c"`continue` dentro de un `for … in` pasa a la siguiente vuelta (arreglado el 2026-09-13)\00"
@.str989.c = internal global %nyx_string* null
@.str990 = private unnamed_addr constant [22 x i8] c"http-host-header-port\00"
@.str990.c = internal global %nyx_string* null
@.str991 = private unnamed_addr constant [6 x i8] c"fixed\00"
@.str991.c = internal global %nyx_string* null
@.str992 = private unnamed_addr constant [4 x i8] c"n/a\00"
@.str992.c = internal global %nyx_string* null
@.str993 = private unnamed_addr constant [7 x i8] c"0.31.0\00"
@.str993.c = internal global %nyx_string* null
@.str994 = private unnamed_addr constant [7 x i8] c"0.31.0\00"
@.str994.c = internal global %nyx_string* null
@.str995 = private unnamed_addr constant [1 x i8] c"\00"
@.str995.c = internal global %nyx_string* null
@.str996 = private unnamed_addr constant [1 x i8] c"\00"
@.str996.c = internal global %nyx_string* null
@.str997 = private unnamed_addr constant [1 x i8] c"\00"
@.str997.c = internal global %nyx_string* null
@.str998 = private unnamed_addr constant [1 x i8] c"\00"
@.str998.c = internal global %nyx_string* null
@.str999 = private unnamed_addr constant [36 x i8] c"tests/ai-first/28-http-host-port.nx\00"
@.str999.c = internal global %nyx_string* null
@.str1000 = private unnamed_addr constant [102 x i8] c"The `std/http` client sends `Host` with the port when it is not the scheme default (fixed 2026-09-14)\00"
@.str1000.c = internal global %nyx_string* null
@.str1001 = private unnamed_addr constant [118 x i8] c"El cliente de `std/http` manda `Host` con el puerto cuando no es el de omisión del esquema (arreglado el 2026-09-14)\00"
@.str1001.c = internal global %nyx_string* null
@.str1002 = private unnamed_addr constant [24 x i8] c"json-truncated-rejected\00"
@.str1002.c = internal global %nyx_string* null
@.str1003 = private unnamed_addr constant [6 x i8] c"fixed\00"
@.str1003.c = internal global %nyx_string* null
@.str1004 = private unnamed_addr constant [4 x i8] c"n/a\00"
@.str1004.c = internal global %nyx_string* null
@.str1005 = private unnamed_addr constant [7 x i8] c"0.31.0\00"
@.str1005.c = internal global %nyx_string* null
@.str1006 = private unnamed_addr constant [7 x i8] c"0.31.0\00"
@.str1006.c = internal global %nyx_string* null
@.str1007 = private unnamed_addr constant [1 x i8] c"\00"
@.str1007.c = internal global %nyx_string* null
@.str1008 = private unnamed_addr constant [1 x i8] c"\00"
@.str1008.c = internal global %nyx_string* null
@.str1009 = private unnamed_addr constant [1 x i8] c"\00"
@.str1009.c = internal global %nyx_string* null
@.str1010 = private unnamed_addr constant [1 x i8] c"\00"
@.str1010.c = internal global %nyx_string* null
@.str1011 = private unnamed_addr constant [35 x i8] c"tests/ai-first/27-json-truncado.nx\00"
@.str1011.c = internal global %nyx_string* null
@.str1012 = private unnamed_addr constant [77 x i8] c"A truncated JSON document is an `Err`, not a shorter `Ok` (fixed 2026-09-14)\00"
@.str1012.c = internal global %nyx_string* null
@.str1013 = private unnamed_addr constant [78 x i8] c"Un JSON truncado es un `Err`, no un `Ok` más corto (arreglado el 2026-09-14)\00"
@.str1013.c = internal global %nyx_string* null
@.str1014 = private unnamed_addr constant [22 x i8] c"nested-fn-sees-module\00"
@.str1014.c = internal global %nyx_string* null
@.str1015 = private unnamed_addr constant [6 x i8] c"fixed\00"
@.str1015.c = internal global %nyx_string* null
@.str1016 = private unnamed_addr constant [4 x i8] c"n/a\00"
@.str1016.c = internal global %nyx_string* null
@.str1017 = private unnamed_addr constant [7 x i8] c"0.31.0\00"
@.str1017.c = internal global %nyx_string* null
@.str1018 = private unnamed_addr constant [7 x i8] c"0.31.0\00"
@.str1018.c = internal global %nyx_string* null
@.str1019 = private unnamed_addr constant [1 x i8] c"\00"
@.str1019.c = internal global %nyx_string* null
@.str1020 = private unnamed_addr constant [1 x i8] c"\00"
@.str1020.c = internal global %nyx_string* null
@.str1021 = private unnamed_addr constant [1 x i8] c"\00"
@.str1021.c = internal global %nyx_string* null
@.str1022 = private unnamed_addr constant [1 x i8] c"\00"
@.str1022.c = internal global %nyx_string* null
@.str1023 = private unnamed_addr constant [69 x i8] c"tests/compiler/language/test-413-fn-anidada-ve-traits-y-genericos.nx\00"
@.str1023.c = internal global %nyx_string* null
@.str1024 = private unnamed_addr constant [100 x i8] c"A nested function — and an `async fn` body — sees everything its module sees (fixed 2026-09-11)\00"
@.str1024.c = internal global %nyx_string* null
@.str1025 = private unnamed_addr constant [112 x i8] c"Una función anidada —y el cuerpo de una `async fn`— ve todo lo que ve su módulo (arreglado el 2026-09-11)\00"
@.str1025.c = internal global %nyx_string* null
@.str1026 = private unnamed_addr constant [19 x i8] c"try-early-exit-pop\00"
@.str1026.c = internal global %nyx_string* null
@.str1027 = private unnamed_addr constant [6 x i8] c"fixed\00"
@.str1027.c = internal global %nyx_string* null
@.str1028 = private unnamed_addr constant [4 x i8] c"n/a\00"
@.str1028.c = internal global %nyx_string* null
@.str1029 = private unnamed_addr constant [7 x i8] c"0.31.0\00"
@.str1029.c = internal global %nyx_string* null
@.str1030 = private unnamed_addr constant [7 x i8] c"0.31.0\00"
@.str1030.c = internal global %nyx_string* null
@.str1031 = private unnamed_addr constant [1 x i8] c"\00"
@.str1031.c = internal global %nyx_string* null
@.str1032 = private unnamed_addr constant [1 x i8] c"\00"
@.str1032.c = internal global %nyx_string* null
@.str1033 = private unnamed_addr constant [1 x i8] c"\00"
@.str1033.c = internal global %nyx_string* null
@.str1034 = private unnamed_addr constant [1 x i8] c"\00"
@.str1034.c = internal global %nyx_string* null
@.str1035 = private unnamed_addr constant [60 x i8] c"tests/compiler/language/test-431-try-salida-temprana-pop.nx\00"
@.str1035.c = internal global %nyx_string* null
@.str1036 = private unnamed_addr constant [111 x i8] c"Leaving a `try` early with `return`, `?`, `break` or `continue` no longer leaks a try level (fixed 2026-09-15)\00"
@.str1036.c = internal global %nyx_string* null
@.str1037 = private unnamed_addr constant [129 x i8] c"Salir de un `try` antes de tiempo con `return`, `?`, `break` o `continue` ya no pierde un nivel de try (arreglado el 2026-09-15)\00"
@.str1037.c = internal global %nyx_string* null
@.str1038 = private unnamed_addr constant [28 x i8] c"std-private-shadows-builtin\00"
@.str1038.c = internal global %nyx_string* null
@.str1039 = private unnamed_addr constant [6 x i8] c"fixed\00"
@.str1039.c = internal global %nyx_string* null
@.str1040 = private unnamed_addr constant [5 x i8] c"loud\00"
@.str1040.c = internal global %nyx_string* null
@.str1041 = private unnamed_addr constant [7 x i8] c"0.32.0\00"
@.str1041.c = internal global %nyx_string* null
@.str1042 = private unnamed_addr constant [7 x i8] c"0.32.1\00"
@.str1042.c = internal global %nyx_string* null
@.str1043 = private unnamed_addr constant [1 x i8] c"\00"
@.str1043.c = internal global %nyx_string* null
@.str1044 = private unnamed_addr constant [1 x i8] c"\00"
@.str1044.c = internal global %nyx_string* null
@.str1045 = private unnamed_addr constant [14 x i8] c"string_to_int\00"
@.str1045.c = internal global %nyx_string* null
@.str1046 = private unnamed_addr constant [1 x i8] c"\00"
@.str1046.c = internal global %nyx_string* null
@.str1047 = private unnamed_addr constant [53 x i8] c"tests/ai-first/30-std-privada-homonima-de-builtin.nx\00"
@.str1047.c = internal global %nyx_string* null
@.str1048 = private unnamed_addr constant [99 x i8] c"A private function in a `std/` module with the same name as a builtin no longer hijacks your call.\00"
@.str1048.c = internal global %nyx_string* null
@.str1049 = private unnamed_addr constant [112 x i8] c"Una función privada de un módulo de `std/` con el mismo nombre que un builtin ya no se apropia de tu llamada.\00"
@.str1049.c = internal global %nyx_string* null
@.str1050 = private unnamed_addr constant [31 x i8] c"block-shadowing-restores-outer\00"
@.str1050.c = internal global %nyx_string* null
@.str1051 = private unnamed_addr constant [6 x i8] c"fixed\00"
@.str1051.c = internal global %nyx_string* null
@.str1052 = private unnamed_addr constant [13 x i8] c"silent-wrong\00"
@.str1052.c = internal global %nyx_string* null
@.str1053 = private unnamed_addr constant [7 x i8] c"0.35.0\00"
@.str1053.c = internal global %nyx_string* null
@.str1054 = private unnamed_addr constant [7 x i8] c"0.36.0\00"
@.str1054.c = internal global %nyx_string* null
@.str1055 = private unnamed_addr constant [1 x i8] c"\00"
@.str1055.c = internal global %nyx_string* null
@.str1056 = private unnamed_addr constant [1 x i8] c"\00"
@.str1056.c = internal global %nyx_string* null
@.str1057 = private unnamed_addr constant [1 x i8] c"\00"
@.str1057.c = internal global %nyx_string* null
@.str1058 = private unnamed_addr constant [1 x i8] c"\00"
@.str1058.c = internal global %nyx_string* null
@.str1059 = private unnamed_addr constant [97 x i8] c"tests/ai-first/33-sombreado-en-bloque.nx,tests/compiler/language/test-486-defer-con-sombreado.nx\00"
@.str1059.c = internal global %nyx_string* null
@.str1060 = private unnamed_addr constant [159 x i8] c"A name redeclared inside a block is another variable: when the block closes, the name is the outer variable again, with its value and its type (since 0.36.0).\00"
@.str1060.c = internal global %nyx_string* null
@.str1061 = private unnamed_addr constant [166 x i8] c"Un nombre redeclarado dentro de un bloque es otra variable: al cerrar el bloque, el nombre vuelve a ser la variable de afuera, con su valor y su tipo (desde 0.36.0).\00"
@.str1061.c = internal global %nyx_string* null
@.str1062 = private unnamed_addr constant [28 x i8] c"closures-capture-block-vars\00"
@.str1062.c = internal global %nyx_string* null
@.str1063 = private unnamed_addr constant [6 x i8] c"fixed\00"
@.str1063.c = internal global %nyx_string* null
@.str1064 = private unnamed_addr constant [5 x i8] c"loud\00"
@.str1064.c = internal global %nyx_string* null
@.str1065 = private unnamed_addr constant [7 x i8] c"0.35.0\00"
@.str1065.c = internal global %nyx_string* null
@.str1066 = private unnamed_addr constant [7 x i8] c"0.36.0\00"
@.str1066.c = internal global %nyx_string* null
@.str1067 = private unnamed_addr constant [1 x i8] c"\00"
@.str1067.c = internal global %nyx_string* null
@.str1068 = private unnamed_addr constant [1 x i8] c"\00"
@.str1068.c = internal global %nyx_string* null
@.str1069 = private unnamed_addr constant [1 x i8] c"\00"
@.str1069.c = internal global %nyx_string* null
@.str1070 = private unnamed_addr constant [1 x i8] c"\00"
@.str1070.c = internal global %nyx_string* null
@.str1071 = private unnamed_addr constant [149 x i8] c"tests/ai-first/36-closure-captura-bloque.nx,tests/ai-first/48-closure-por-iteracion.nx,tests/compiler/errors/test-nyx1044-captura-nombre-repetido.nx\00"
@.str1071.c = internal global %nyx_string* null
@.str1072 = private unnamed_addr constant [176 x i8] c"A lambda or a named `fn` written inside a block can use that block's `let`/`var` variables — since 0.36.0, as long as the name is unique in the function (NYX1044 otherwise).\00"
@.str1072.c = internal global %nyx_string* null
@.str1073 = private unnamed_addr constant [193 x i8] c"Una lambda o una `fn` con nombre escrita dentro de un bloque puede usar las variables `let`/`var` de ese bloque, desde 0.36.0, siempre que el nombre sea único en la función (si no, NYX1044).\00"
@.str1073.c = internal global %nyx_string* null
@.str1074 = private unnamed_addr constant [25 x i8] c"defer-runs-at-block-exit\00"
@.str1074.c = internal global %nyx_string* null
@.str1075 = private unnamed_addr constant [6 x i8] c"fixed\00"
@.str1075.c = internal global %nyx_string* null
@.str1076 = private unnamed_addr constant [13 x i8] c"silent-wrong\00"
@.str1076.c = internal global %nyx_string* null
@.str1077 = private unnamed_addr constant [7 x i8] c"0.35.0\00"
@.str1077.c = internal global %nyx_string* null
@.str1078 = private unnamed_addr constant [7 x i8] c"0.36.0\00"
@.str1078.c = internal global %nyx_string* null
@.str1079 = private unnamed_addr constant [1 x i8] c"\00"
@.str1079.c = internal global %nyx_string* null
@.str1080 = private unnamed_addr constant [1 x i8] c"\00"
@.str1080.c = internal global %nyx_string* null
@.str1081 = private unnamed_addr constant [1 x i8] c"\00"
@.str1081.c = internal global %nyx_string* null
@.str1082 = private unnamed_addr constant [1 x i8] c"\00"
@.str1082.c = internal global %nyx_string* null
@.str1083 = private unnamed_addr constant [100 x i8] c"tests/ai-first/34-defer-al-cerrar-bloque.nx,tests/compiler/language/test-489-defer-salida-normal.nx\00"
@.str1083.c = internal global %nyx_string* null
@.str1084 = private unnamed_addr constant [228 x i8] c"A `defer` runs when control leaves the block that contains it (fall-through, `return`, `?`, `break`, `continue`) — and since 0.36.0 that holds in every block, nested fn and lambda, not only at the top level of a top-level fn.\00"
@.str1084.c = internal global %nyx_string* null
@.str1085 = private unnamed_addr constant [244 x i8] c"Un `defer` corre cuando el control sale del bloque que lo contiene (caer al final, `return`, `?`, `break`, `continue`), y desde 0.36.0 eso vale en cualquier bloque, fn anidada y lambda, no solo en el nivel superior de una fn de nivel superior.\00"
@.str1085.c = internal global %nyx_string* null
@.str1086 = private unnamed_addr constant [21 x i8] c"drop-per-declaration\00"
@.str1086.c = internal global %nyx_string* null
@.str1087 = private unnamed_addr constant [6 x i8] c"fixed\00"
@.str1087.c = internal global %nyx_string* null
@.str1088 = private unnamed_addr constant [13 x i8] c"silent-wrong\00"
@.str1088.c = internal global %nyx_string* null
@.str1089 = private unnamed_addr constant [7 x i8] c"0.35.0\00"
@.str1089.c = internal global %nyx_string* null
@.str1090 = private unnamed_addr constant [7 x i8] c"0.36.0\00"
@.str1090.c = internal global %nyx_string* null
@.str1091 = private unnamed_addr constant [1 x i8] c"\00"
@.str1091.c = internal global %nyx_string* null
@.str1092 = private unnamed_addr constant [1 x i8] c"\00"
@.str1092.c = internal global %nyx_string* null
@.str1093 = private unnamed_addr constant [1 x i8] c"\00"
@.str1093.c = internal global %nyx_string* null
@.str1094 = private unnamed_addr constant [1 x i8] c"\00"
@.str1094.c = internal global %nyx_string* null
@.str1095 = private unnamed_addr constant [43 x i8] c"tests/ai-first/38-drop-al-cerrar-bloque.nx\00"
@.str1095.c = internal global %nyx_string* null
@.str1096 = private unnamed_addr constant [162 x i8] c"An `#[affine]` value with `impl Drop` is dropped when its BLOCK closes, once per declaration — in a loop once per iteration, on a `throw` too — since 0.36.0.\00"
@.str1096.c = internal global %nyx_string* null
@.str1097 = private unnamed_addr constant [175 x i8] c"Un valor `#[affine]` con `impl Drop` se suelta al cerrar su BLOQUE, una vez por declaración —en un loop, una vez por iteración, y también en un `throw`—, desde 0.36.0.\00"
@.str1097.c = internal global %nyx_string* null
@.str1098 = private unnamed_addr constant [20 x i8] c"for-in-element-type\00"
@.str1098.c = internal global %nyx_string* null
@.str1099 = private unnamed_addr constant [6 x i8] c"fixed\00"
@.str1099.c = internal global %nyx_string* null
@.str1100 = private unnamed_addr constant [13 x i8] c"silent-wrong\00"
@.str1100.c = internal global %nyx_string* null
@.str1101 = private unnamed_addr constant [7 x i8] c"0.35.0\00"
@.str1101.c = internal global %nyx_string* null
@.str1102 = private unnamed_addr constant [7 x i8] c"0.36.0\00"
@.str1102.c = internal global %nyx_string* null
@.str1103 = private unnamed_addr constant [1 x i8] c"\00"
@.str1103.c = internal global %nyx_string* null
@.str1104 = private unnamed_addr constant [1 x i8] c"\00"
@.str1104.c = internal global %nyx_string* null
@.str1105 = private unnamed_addr constant [1 x i8] c"\00"
@.str1105.c = internal global %nyx_string* null
@.str1106 = private unnamed_addr constant [1 x i8] c"\00"
@.str1106.c = internal global %nyx_string* null
@.str1107 = private unnamed_addr constant [39 x i8] c"tests/ai-first/35-for-sobre-literal.nx\00"
@.str1107.c = internal global %nyx_string* null
@.str1108 = private unnamed_addr constant [157 x i8] c"`for x in [...]` over an array literal gives `x` the type of its elements, and an element of type `Array<T>` or `Map` works like any other — since 0.36.0.\00"
@.str1108.c = internal global %nyx_string* null
@.str1109 = private unnamed_addr constant [158 x i8] c"`for x in [...]` sobre un literal de array le da a `x` el tipo de sus elementos, y un elemento `Array<T>` o `Map` funciona como cualquier otro, desde 0.36.0.\00"
@.str1109.c = internal global %nyx_string* null
@.str1110 = private unnamed_addr constant [31 x i8] c"local-fn-var-shadows-global-fn\00"
@.str1110.c = internal global %nyx_string* null
@.str1111 = private unnamed_addr constant [6 x i8] c"fixed\00"
@.str1111.c = internal global %nyx_string* null
@.str1112 = private unnamed_addr constant [5 x i8] c"loud\00"
@.str1112.c = internal global %nyx_string* null
@.str1113 = private unnamed_addr constant [7 x i8] c"0.35.0\00"
@.str1113.c = internal global %nyx_string* null
@.str1114 = private unnamed_addr constant [7 x i8] c"0.36.0\00"
@.str1114.c = internal global %nyx_string* null
@.str1115 = private unnamed_addr constant [1 x i8] c"\00"
@.str1115.c = internal global %nyx_string* null
@.str1116 = private unnamed_addr constant [1 x i8] c"\00"
@.str1116.c = internal global %nyx_string* null
@.str1117 = private unnamed_addr constant [1 x i8] c"\00"
@.str1117.c = internal global %nyx_string* null
@.str1118 = private unnamed_addr constant [1 x i8] c"\00"
@.str1118.c = internal global %nyx_string* null
@.str1119 = private unnamed_addr constant [120 x i8] c"tests/ai-first/32-variable-fn-homonima-de-fn-global.nx,tests/compiler/errors/test-m08-arg-mismatch-fn-local-homonima.nx\00"
@.str1119.c = internal global %nyx_string* null
@.str1120 = private unnamed_addr constant [191 x i8] c"A local `Fn` variable (or parameter) with the same name as a top-level `fn` is what a call to that name reaches — and since 0.36.0 it is also what the type checker checks the call against.\00"
@.str1120.c = internal global %nyx_string* null
@.str1121 = private unnamed_addr constant [198 x i8] c"Una variable local `Fn` (o un parámetro) con el mismo nombre que una `fn` top-level es la que recibe la llamada a ese nombre, y desde 0.36.0 también es contra la que el checker valida la llamada.\00"
@.str1121.c = internal global %nyx_string* null
@.str1122 = private unnamed_addr constant [18 x i8] c"string-index-byte\00"
@.str1122.c = internal global %nyx_string* null
@.str1123 = private unnamed_addr constant [6 x i8] c"fixed\00"
@.str1123.c = internal global %nyx_string* null
@.str1124 = private unnamed_addr constant [4 x i8] c"n/a\00"
@.str1124.c = internal global %nyx_string* null
@.str1125 = private unnamed_addr constant [7 x i8] c"0.35.0\00"
@.str1125.c = internal global %nyx_string* null
@.str1126 = private unnamed_addr constant [7 x i8] c"0.36.0\00"
@.str1126.c = internal global %nyx_string* null
@.str1127 = private unnamed_addr constant [1 x i8] c"\00"
@.str1127.c = internal global %nyx_string* null
@.str1128 = private unnamed_addr constant [1 x i8] c"\00"
@.str1128.c = internal global %nyx_string* null
@.str1129 = private unnamed_addr constant [1 x i8] c"\00"
@.str1129.c = internal global %nyx_string* null
@.str1130 = private unnamed_addr constant [50 x i8] c"returns the wrong character for any index above 0\00"
@.str1130.c = internal global %nyx_string* null
@.str1131 = private unnamed_addr constant [51 x i8] c"tests/compiler/language/test-457-indexar-string.nx\00"
@.str1131.c = internal global %nyx_string* null
@.str1132 = private unnamed_addr constant [78 x i8] c"`s[i]` on a `String` is the byte at `i` (a `char`), the same as `s.charAt(i)`\00"
@.str1132.c = internal global %nyx_string* null
@.str1133 = private unnamed_addr constant [83 x i8] c"`s[i]` sobre un `String` es el byte en `i` (un `char`), lo mismo que `s.charAt(i)`\00"
@.str1133.c = internal global %nyx_string* null
@.str1134 = private unnamed_addr constant [22 x i8] c"closure-per-iteration\00"
@.str1134.c = internal global %nyx_string* null
@.str1135 = private unnamed_addr constant [6 x i8] c"fixed\00"
@.str1135.c = internal global %nyx_string* null
@.str1136 = private unnamed_addr constant [4 x i8] c"n/a\00"
@.str1136.c = internal global %nyx_string* null
@.str1137 = private unnamed_addr constant [7 x i8] c"0.36.0\00"
@.str1137.c = internal global %nyx_string* null
@.str1138 = private unnamed_addr constant [7 x i8] c"0.41.0\00"
@.str1138.c = internal global %nyx_string* null
@.str1139 = private unnamed_addr constant [1 x i8] c"\00"
@.str1139.c = internal global %nyx_string* null
@.str1140 = private unnamed_addr constant [1 x i8] c"\00"
@.str1140.c = internal global %nyx_string* null
@.str1141 = private unnamed_addr constant [1 x i8] c"\00"
@.str1141.c = internal global %nyx_string* null
@.str1142 = private unnamed_addr constant [1 x i8] c"\00"
@.str1142.c = internal global %nyx_string* null
@.str1143 = private unnamed_addr constant [43 x i8] c"tests/ai-first/48-closure-por-iteracion.nx\00"
@.str1143.c = internal global %nyx_string* null
@.str1144 = private unnamed_addr constant [67 x i8] c"A closure created inside a loop sees the variable of ITS iteration\00"
@.str1144.c = internal global %nyx_string* null
@.str1145 = private unnamed_addr constant [70 x i8] c"Una closure creada dentro de un bucle ve la variable de SU iteración\00"
@.str1145.c = internal global %nyx_string* null
@.str1146 = private unnamed_addr constant [19 x i8] c"defer-not-on-throw\00"
@.str1146.c = internal global %nyx_string* null
@.str1147 = private unnamed_addr constant [6 x i8] c"fixed\00"
@.str1147.c = internal global %nyx_string* null
@.str1148 = private unnamed_addr constant [13 x i8] c"silent-wrong\00"
@.str1148.c = internal global %nyx_string* null
@.str1149 = private unnamed_addr constant [7 x i8] c"0.36.0\00"
@.str1149.c = internal global %nyx_string* null
@.str1150 = private unnamed_addr constant [7 x i8] c"0.36.0\00"
@.str1150.c = internal global %nyx_string* null
@.str1151 = private unnamed_addr constant [1 x i8] c"\00"
@.str1151.c = internal global %nyx_string* null
@.str1152 = private unnamed_addr constant [1 x i8] c"\00"
@.str1152.c = internal global %nyx_string* null
@.str1153 = private unnamed_addr constant [1 x i8] c"\00"
@.str1153.c = internal global %nyx_string* null
@.str1154 = private unnamed_addr constant [1 x i8] c"\00"
@.str1154.c = internal global %nyx_string* null
@.str1155 = private unnamed_addr constant [94 x i8] c"tests/ai-first/37-throw-corre-defer.nx,tests/compiler/language/test-492-defer-no-alcanzado.nx\00"
@.str1155.c = internal global %nyx_string* null
@.str1156 = private unnamed_addr constant [191 x i8] c"A `throw` that leaves a block or a function runs the `defer`s it already reached — innermost first — before landing in the `catch`; and a `defer` the function never reached does not run.\00"
@.str1156.c = internal global %nyx_string* null
@.str1157 = private unnamed_addr constant [202 x i8] c"Un `throw` que sale de un bloque o de una función corre los `defer` que ya alcanzó, del más interno al más externo, antes de llegar al `catch`; y un `defer` que la función nunca alcanzó no corre.\00"
@.str1157.c = internal global %nyx_string* null
@.str1158 = private unnamed_addr constant [32 x i8] c"builtin-conversion-untyped-slot\00"
@.str1158.c = internal global %nyx_string* null
@.str1159 = private unnamed_addr constant [6 x i8] c"fixed\00"
@.str1159.c = internal global %nyx_string* null
@.str1160 = private unnamed_addr constant [4 x i8] c"n/a\00"
@.str1160.c = internal global %nyx_string* null
@.str1161 = private unnamed_addr constant [7 x i8] c"0.36.1\00"
@.str1161.c = internal global %nyx_string* null
@.str1162 = private unnamed_addr constant [7 x i8] c"0.36.1\00"
@.str1162.c = internal global %nyx_string* null
@.str1163 = private unnamed_addr constant [1 x i8] c"\00"
@.str1163.c = internal global %nyx_string* null
@.str1164 = private unnamed_addr constant [1 x i8] c"\00"
@.str1164.c = internal global %nyx_string* null
@.str1165 = private unnamed_addr constant [1 x i8] c"\00"
@.str1165.c = internal global %nyx_string* null
@.str1166 = private unnamed_addr constant [1 x i8] c"\00"
@.str1166.c = internal global %nyx_string* null
@.str1167 = private unnamed_addr constant [52 x i8] c"tests/ai-first/39-conversion-de-casilla-sin-tipo.nx\00"
@.str1167.c = internal global %nyx_string* null
@.str1168 = private unnamed_addr constant [123 x i8] c"`int_to_float(arr[i])` and `float_to_int(arr[i])` on an `Array` without `<T>`, bound to a typed `let`, compile and convert\00"
@.str1168.c = internal global %nyx_string* null
@.str1169 = private unnamed_addr constant [127 x i8] c"`int_to_float(arr[i])` y `float_to_int(arr[i])` sobre un `Array` sin `<T>`, ligados a un `let` con tipo, compilan y convierten\00"
@.str1169.c = internal global %nyx_string* null
@.str1170 = private unnamed_addr constant [18 x i8] c"float-slot-assign\00"
@.str1170.c = internal global %nyx_string* null
@.str1171 = private unnamed_addr constant [6 x i8] c"fixed\00"
@.str1171.c = internal global %nyx_string* null
@.str1172 = private unnamed_addr constant [4 x i8] c"n/a\00"
@.str1172.c = internal global %nyx_string* null
@.str1173 = private unnamed_addr constant [7 x i8] c"0.37.0\00"
@.str1173.c = internal global %nyx_string* null
@.str1174 = private unnamed_addr constant [7 x i8] c"0.37.0\00"
@.str1174.c = internal global %nyx_string* null
@.str1175 = private unnamed_addr constant [1 x i8] c"\00"
@.str1175.c = internal global %nyx_string* null
@.str1176 = private unnamed_addr constant [1 x i8] c"\00"
@.str1176.c = internal global %nyx_string* null
@.str1177 = private unnamed_addr constant [1 x i8] c"\00"
@.str1177.c = internal global %nyx_string* null
@.str1178 = private unnamed_addr constant [1 x i8] c"\00"
@.str1178.c = internal global %nyx_string* null
@.str1179 = private unnamed_addr constant [62 x i8] c"tests/compiler/language/test-502-float-de-casilla-asignado.nx\00"
@.str1179.c = internal global %nyx_string* null
@.str1180 = private unnamed_addr constant [146 x i8] c"A `float` read from an `Array` slot without `<T>` keeps its value when ASSIGNED (`x = d[i]`) or pushed with a computed index (`b.push(a[2 * i])`)\00"
@.str1180.c = internal global %nyx_string* null
@.str1181 = private unnamed_addr constant [162 x i8] c"Un `float` leído de una casilla de un `Array` sin `<T>` conserva su valor al ASIGNARLO (`x = d[i]`) o al empujarlo con un índice calculado (`b.push(a[2 * i])`)\00"
@.str1181.c = internal global %nyx_string* null
@.str1182 = private unnamed_addr constant [24 x i8] c"http-header-one-element\00"
@.str1182.c = internal global %nyx_string* null
@.str1183 = private unnamed_addr constant [6 x i8] c"fixed\00"
@.str1183.c = internal global %nyx_string* null
@.str1184 = private unnamed_addr constant [4 x i8] c"n/a\00"
@.str1184.c = internal global %nyx_string* null
@.str1185 = private unnamed_addr constant [7 x i8] c"0.37.0\00"
@.str1185.c = internal global %nyx_string* null
@.str1186 = private unnamed_addr constant [7 x i8] c"0.37.0\00"
@.str1186.c = internal global %nyx_string* null
@.str1187 = private unnamed_addr constant [1 x i8] c"\00"
@.str1187.c = internal global %nyx_string* null
@.str1188 = private unnamed_addr constant [1 x i8] c"\00"
@.str1188.c = internal global %nyx_string* null
@.str1189 = private unnamed_addr constant [1 x i8] c"\00"
@.str1189.c = internal global %nyx_string* null
@.str1190 = private unnamed_addr constant [1 x i8] c"\00"
@.str1190.c = internal global %nyx_string* null
@.str1191 = private unnamed_addr constant [45 x i8] c"tests/ai-first/43-cabecera-en-un-elemento.nx\00"
@.str1191.c = internal global %nyx_string* null
@.str1192 = private unnamed_addr constant [78 x i8] c"A request header written as ONE element, `\22Name: value\22`, reaches the request\00"
@.str1192.c = internal global %nyx_string* null
@.str1193 = private unnamed_addr constant [74 x i8] c"Una cabecera escrita como UN elemento, `\22Nombre: valor\22`, llega al pedido\00"
@.str1193.c = internal global %nyx_string* null
@.str1194 = private unnamed_addr constant [24 x i8] c"http-response-streaming\00"
@.str1194.c = internal global %nyx_string* null
@.str1195 = private unnamed_addr constant [6 x i8] c"fixed\00"
@.str1195.c = internal global %nyx_string* null
@.str1196 = private unnamed_addr constant [4 x i8] c"n/a\00"
@.str1196.c = internal global %nyx_string* null
@.str1197 = private unnamed_addr constant [7 x i8] c"0.37.0\00"
@.str1197.c = internal global %nyx_string* null
@.str1198 = private unnamed_addr constant [7 x i8] c"0.37.0\00"
@.str1198.c = internal global %nyx_string* null
@.str1199 = private unnamed_addr constant [1 x i8] c"\00"
@.str1199.c = internal global %nyx_string* null
@.str1200 = private unnamed_addr constant [1 x i8] c"\00"
@.str1200.c = internal global %nyx_string* null
@.str1201 = private unnamed_addr constant [1 x i8] c"\00"
@.str1201.c = internal global %nyx_string* null
@.str1202 = private unnamed_addr constant [1 x i8] c"\00"
@.str1202.c = internal global %nyx_string* null
@.str1203 = private unnamed_addr constant [93 x i8] c"tests/ai-first/42-http-respuesta-por-partes.nx,tests/ai-first/55-http-stream-cuerpo-crudo.nx\00"
@.str1203.c = internal global %nyx_string* null
@.str1204 = private unnamed_addr constant [119 x i8] c"An HTTP response can be read as it arrives: `try_http_stream` returns an `HttpStream` with `read()` and `read_event()`\00"
@.str1204.c = internal global %nyx_string* null
@.str1205 = private unnamed_addr constant [126 x i8] c"Una respuesta HTTP se puede leer a medida que llega: `try_http_stream` devuelve un `HttpStream` con `read()` y `read_event()`\00"
@.str1205.c = internal global %nyx_string* null
@.str1206 = private unnamed_addr constant [23 x i8] c"map-insert-slot-string\00"
@.str1206.c = internal global %nyx_string* null
@.str1207 = private unnamed_addr constant [6 x i8] c"fixed\00"
@.str1207.c = internal global %nyx_string* null
@.str1208 = private unnamed_addr constant [4 x i8] c"n/a\00"
@.str1208.c = internal global %nyx_string* null
@.str1209 = private unnamed_addr constant [7 x i8] c"0.37.0\00"
@.str1209.c = internal global %nyx_string* null
@.str1210 = private unnamed_addr constant [7 x i8] c"0.41.0\00"
@.str1210.c = internal global %nyx_string* null
@.str1211 = private unnamed_addr constant [1 x i8] c"\00"
@.str1211.c = internal global %nyx_string* null
@.str1212 = private unnamed_addr constant [1 x i8] c"\00"
@.str1212.c = internal global %nyx_string* null
@.str1213 = private unnamed_addr constant [1 x i8] c"\00"
@.str1213.c = internal global %nyx_string* null
@.str1214 = private unnamed_addr constant [1 x i8] c"\00"
@.str1214.c = internal global %nyx_string* null
@.str1215 = private unnamed_addr constant [90 x i8] c"tests/ai-first/46-map-insert-casilla-string.nx,tests/ai-first/49-map-clave-casilla-for.nx\00"
@.str1215.c = internal global %nyx_string* null
@.str1216 = private unnamed_addr constant [128 x i8] c"`m.insert(a[0], a[1])` into a `Map<String>`, with `a` an `Array` without `<T>` filled at run time, stores the value as a String\00"
@.str1216.c = internal global %nyx_string* null
@.str1217 = private unnamed_addr constant [124 x i8] c"`m.insert(a[0], a[1])` en un `Map<String>`, con `a` un `Array` sin `<T>` llenado en ejecución, guarda el valor como String\00"
@.str1217.c = internal global %nyx_string* null
@.str1218 = private unnamed_addr constant [18 x i8] c"pdf-page-to-image\00"
@.str1218.c = internal global %nyx_string* null
@.str1219 = private unnamed_addr constant [6 x i8] c"fixed\00"
@.str1219.c = internal global %nyx_string* null
@.str1220 = private unnamed_addr constant [4 x i8] c"n/a\00"
@.str1220.c = internal global %nyx_string* null
@.str1221 = private unnamed_addr constant [7 x i8] c"0.37.0\00"
@.str1221.c = internal global %nyx_string* null
@.str1222 = private unnamed_addr constant [7 x i8] c"0.37.0\00"
@.str1222.c = internal global %nyx_string* null
@.str1223 = private unnamed_addr constant [1 x i8] c"\00"
@.str1223.c = internal global %nyx_string* null
@.str1224 = private unnamed_addr constant [1 x i8] c"\00"
@.str1224.c = internal global %nyx_string* null
@.str1225 = private unnamed_addr constant [1 x i8] c"\00"
@.str1225.c = internal global %nyx_string* null
@.str1226 = private unnamed_addr constant [24 x i8] c"std/pdf only writes PDF\00"
@.str1226.c = internal global %nyx_string* null
@.str1227 = private unnamed_addr constant [41 x i8] c"tests/ai-first/41-pdf-pagina-a-imagen.nx\00"
@.str1227.c = internal global %nyx_string* null
@.str1228 = private unnamed_addr constant [102 x i8] c"A page of a PDF can be drawn as an `Image`: `pdf_page_to_image(bytes, page, dpi)` in `std/pdf_render`\00"
@.str1228.c = internal global %nyx_string* null
@.str1229 = private unnamed_addr constant [114 x i8] c"Una página de un PDF se puede dibujar como `Image`: `pdf_page_to_image(bytes, página, ppp)` en `std/pdf_render`\00"
@.str1229.c = internal global %nyx_string* null
@.str1230 = private unnamed_addr constant [25 x i8] c"untyped-slot-as-argument\00"
@.str1230.c = internal global %nyx_string* null
@.str1231 = private unnamed_addr constant [6 x i8] c"fixed\00"
@.str1231.c = internal global %nyx_string* null
@.str1232 = private unnamed_addr constant [4 x i8] c"n/a\00"
@.str1232.c = internal global %nyx_string* null
@.str1233 = private unnamed_addr constant [7 x i8] c"0.37.0\00"
@.str1233.c = internal global %nyx_string* null
@.str1234 = private unnamed_addr constant [7 x i8] c"0.37.0\00"
@.str1234.c = internal global %nyx_string* null
@.str1235 = private unnamed_addr constant [1 x i8] c"\00"
@.str1235.c = internal global %nyx_string* null
@.str1236 = private unnamed_addr constant [1 x i8] c"\00"
@.str1236.c = internal global %nyx_string* null
@.str1237 = private unnamed_addr constant [1 x i8] c"\00"
@.str1237.c = internal global %nyx_string* null
@.str1238 = private unnamed_addr constant [1 x i8] c"\00"
@.str1238.c = internal global %nyx_string* null
@.str1239 = private unnamed_addr constant [53 x i8] c"tests/ai-first/40-casilla-sin-tipo-como-argumento.nx\00"
@.str1239.c = internal global %nyx_string* null
@.str1240 = private unnamed_addr constant [104 x i8] c"A slot of an `Array` without `<T>` passed straight to a struct parameter, or used as a `Map` key, works\00"
@.str1240.c = internal global %nyx_string* null
@.str1241 = private unnamed_addr constant [116 x i8] c"Una casilla de un `Array` sin `<T>` pasada directo a un parámetro struct, o usada como clave de un `Map`, funciona\00"
@.str1241.c = internal global %nyx_string* null
@.str1242 = private unnamed_addr constant [36 x i8] c"untyped-slot-to-struct-enum-checked\00"
@.str1242.c = internal global %nyx_string* null
@.str1243 = private unnamed_addr constant [6 x i8] c"fixed\00"
@.str1243.c = internal global %nyx_string* null
@.str1244 = private unnamed_addr constant [13 x i8] c"silent-wrong\00"
@.str1244.c = internal global %nyx_string* null
@.str1245 = private unnamed_addr constant [7 x i8] c"0.37.0\00"
@.str1245.c = internal global %nyx_string* null
@.str1246 = private unnamed_addr constant [7 x i8] c"0.42.0\00"
@.str1246.c = internal global %nyx_string* null
@.str1247 = private unnamed_addr constant [1 x i8] c"\00"
@.str1247.c = internal global %nyx_string* null
@.str1248 = private unnamed_addr constant [1 x i8] c"\00"
@.str1248.c = internal global %nyx_string* null
@.str1249 = private unnamed_addr constant [1 x i8] c"\00"
@.str1249.c = internal global %nyx_string* null
@.str1250 = private unnamed_addr constant [1 x i8] c"\00"
@.str1250.c = internal global %nyx_string* null
@.str1251 = private unnamed_addr constant [52 x i8] c"tests/ai-first/53-casilla-sin-tipo-a-struct-enum.nx\00"
@.str1251.c = internal global %nyx_string* null
@.str1252 = private unnamed_addr constant [87 x i8] c"A slot of an `Array` without `<T>` that goes to a struct or enum is checked by its tag\00"
@.str1252.c = internal global %nyx_string* null
@.str1253 = private unnamed_addr constant [87 x i8] c"Una casilla de un `Array` sin `<T>` que va a un struct o un enum se chequea por su tag\00"
@.str1253.c = internal global %nyx_string* null
@.str1254 = private unnamed_addr constant [21 x i8] c"wasm-method-slot-arg\00"
@.str1254.c = internal global %nyx_string* null
@.str1255 = private unnamed_addr constant [6 x i8] c"fixed\00"
@.str1255.c = internal global %nyx_string* null
@.str1256 = private unnamed_addr constant [4 x i8] c"n/a\00"
@.str1256.c = internal global %nyx_string* null
@.str1257 = private unnamed_addr constant [7 x i8] c"0.37.0\00"
@.str1257.c = internal global %nyx_string* null
@.str1258 = private unnamed_addr constant [7 x i8] c"0.37.0\00"
@.str1258.c = internal global %nyx_string* null
@.str1259 = private unnamed_addr constant [1 x i8] c"\00"
@.str1259.c = internal global %nyx_string* null
@.str1260 = private unnamed_addr constant [1 x i8] c"\00"
@.str1260.c = internal global %nyx_string* null
@.str1261 = private unnamed_addr constant [1 x i8] c"\00"
@.str1261.c = internal global %nyx_string* null
@.str1262 = private unnamed_addr constant [1 x i8] c"\00"
@.str1262.c = internal global %nyx_string* null
@.str1263 = private unnamed_addr constant [42 x i8] c"tests/wasm/test-wasm-58-metodo-casilla.nx\00"
@.str1263.c = internal global %nyx_string* null
@.str1264 = private unnamed_addr constant [93 x i8] c"On wasm32, an untyped `Array` slot passed straight to an `impl` METHOD (`obj.m(a[i])`) works\00"
@.str1264.c = internal global %nyx_string* null
@.str1265 = private unnamed_addr constant [109 x i8] c"En wasm32, una casilla de un `Array` sin tipo pasada directo a un MÉTODO de `impl` (`obj.m(a[i])`) funciona\00"
@.str1265.c = internal global %nyx_string* null
@.str1266 = private unnamed_addr constant [30 x i8] c"local-closure-shadows-private\00"
@.str1266.c = internal global %nyx_string* null
@.str1267 = private unnamed_addr constant [6 x i8] c"fixed\00"
@.str1267.c = internal global %nyx_string* null
@.str1268 = private unnamed_addr constant [5 x i8] c"loud\00"
@.str1268.c = internal global %nyx_string* null
@.str1269 = private unnamed_addr constant [7 x i8] c"0.44.0\00"
@.str1269.c = internal global %nyx_string* null
@.str1270 = private unnamed_addr constant [7 x i8] c"0.44.1\00"
@.str1270.c = internal global %nyx_string* null
@.str1271 = private unnamed_addr constant [1 x i8] c"\00"
@.str1271.c = internal global %nyx_string* null
@.str1272 = private unnamed_addr constant [1 x i8] c"\00"
@.str1272.c = internal global %nyx_string* null
@.str1273 = private unnamed_addr constant [8 x i8] c"NYX1036\00"
@.str1273.c = internal global %nyx_string* null
@.str1274 = private unnamed_addr constant [1 x i8] c"\00"
@.str1274.c = internal global %nyx_string* null
@.str1275 = private unnamed_addr constant [55 x i8] c"tests/ai-first/56-closure-local-homonima-de-privada.nx\00"
@.str1275.c = internal global %nyx_string* null
@.str1276 = private unnamed_addr constant [112 x i8] c"A local closure, variable or parameter named like a private function of another module no longer trips NYX1036.\00"
@.str1276.c = internal global %nyx_string* null
@.str1277 = private unnamed_addr constant [131 x i8] c"Una closure local, una variable o un parámetro que se llama igual que una función privada de otro módulo ya no dispara NYX1036.\00"
@.str1277.c = internal global %nyx_string* null
@.str1278 = private unnamed_addr constant [3 x i8] c"id\00"
@.str1278.c = internal global %nyx_string* null
@.str1279 = private unnamed_addr constant [5 x i8] c"kind\00"
@.str1279.c = internal global %nyx_string* null
@.str1280 = private unnamed_addr constant [9 x i8] c"severity\00"
@.str1280.c = internal global %nyx_string* null
@.str1281 = private unnamed_addr constant [6 x i8] c"since\00"
@.str1281.c = internal global %nyx_string* null
@.str1282 = private unnamed_addr constant [9 x i8] c"fixed_in\00"
@.str1282.c = internal global %nyx_string* null
@.str1283 = private unnamed_addr constant [8 x i8] c"pattern\00"
@.str1283.c = internal global %nyx_string* null
@.str1284 = private unnamed_addr constant [9 x i8] c"vet_code\00"
@.str1284.c = internal global %nyx_string* null
@.str1285 = private unnamed_addr constant [7 x i8] c"anchor\00"
@.str1285.c = internal global %nyx_string* null
@.str1286 = private unnamed_addr constant [5 x i8] c"lies\00"
@.str1286.c = internal global %nyx_string* null
@.str1287 = private unnamed_addr constant [5 x i8] c"test\00"
@.str1287.c = internal global %nyx_string* null
@.str1288 = private unnamed_addr constant [9 x i8] c"title_en\00"
@.str1288.c = internal global %nyx_string* null
@.str1289 = private unnamed_addr constant [9 x i8] c"title_es\00"
@.str1289.c = internal global %nyx_string* null
@.str1290 = private unnamed_addr constant [1 x i8] c"\00"
@.str1290.c = internal global %nyx_string* null
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
declare i64 @nyx_bool_from_text(%nyx_string*)

declare void @nyx_print_int(i64)
declare void @nyx_print_float(double)
declare void @nyx_print_float32(float)
declare void @nyx_print_string(i8*)
declare void @nyx_print_bool(i1)
declare %nyx_string* @nyx_string_from_float(double)
declare %nyx_string* @nyx_string_from_float32(float)
declare %nyx_string* @nyx_read_file(i8*)
declare i1 @nyx_write_file(i8*, i8*)
declare i1 @nyx_write_file_safe(i8*, %nyx_string*)
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
declare i64 @nyx_crc32_string(%nyx_string*)
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
declare i64 @nyx_task_cancelled()
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
declare %nyx_string* @nyx_hmac_sha256_raw(%nyx_string*, %nyx_string*)
declare %nyx_string* @nyx_sha256_raw(%nyx_string*)
declare %nyx_string* @nyx_pbkdf2_hmac_sha256(%nyx_string*, %nyx_string*, i64, i64)
declare i64 @nyx_constant_time_eq(%nyx_string*, %nyx_string*)
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
declare i64 @nyx_slot_eq({ i64, i8* }*, i64, { i64, i8* }*, i64)
declare i64 @nyx_enum_eq(i8*, i8*)
declare i64 @nyx_array_get_checked({ i64, i8* }*, i64, i64)
declare i64 @nyx_slot_as_array_checked({ i64, i8* }*, i64)
declare i64 @nyx_slot_as_value_checked({ i64, i8* }*, i64, i8*)
declare i64 @nyx_row_cell({ i64, i8* }*, i64, i64, i8*, i8*, i64)
declare %nyx_string* @nyx_row_problema({ i64, i8* }*, i64, i8*, i8*, i64)
declare i64 @nyx_bool_text_ok(%nyx_string*)
declare i64 @nyx_int_text_ok(%nyx_string*)
declare double @nyx_slot_as_float_checked({ i64, i8* }*, i64)
declare double @nyx_slot_as_float_st({ i64, i8* }*, i64, i64)
declare i64 @nyx_slot_as_int_checked({ i64, i8* }*, i64)
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
declare i32 @nyx_string_compare(%nyx_string*, %nyx_string*)
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
declare i64 @nyx_string_to_int_range(%nyx_string*, i64, i64, i64)
declare double @nyx_string_to_float_range(%nyx_string*, i64, i64, double)
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
declare i8* @GC_malloc_atomic(i64)
declare i8* @malloc(i64)
declare void @free(i8*)
declare i32 @strcmp(i8*, i8*)
declare double @pow(double, double)
declare void @nyx_assert_fail(i8*)
declare void @nyx_assert_eq_int(i64, i64, i8*)
declare void @nyx_assert_eq_str(%nyx_string*, %nyx_string*, i8*)
declare void @exit(i32)
declare void @nyx_panic(%nyx_string*)
declare void @nyx_panic_unwrap_err(%nyx_string*)
declare void @nyx_panic_unwrap_error(%nyx_string*, %nyx_string*, i64)
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
  %t3 = alloca %nyx_string*
  %t6 = alloca i64
  %t7 = alloca i1
  %t8 = alloca i64
  %t16 = alloca i64
  %t26 = alloca i1
  %t54 = alloca i1
  %t55 = alloca i1
  store %nyx_string* %line.param, %nyx_string** %line.ptr
  %t1 = getelementptr [1 x i8], [1 x i8]* @.str0, i32 0, i32 0
  %t2 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str0.c, i8* %t1, i64 0)
  store %nyx_string* %t2, %nyx_string** %t3
  %t4 = load %nyx_string*, %nyx_string** %line.ptr
  %t5 = call i64 @nyx_string_byte_length(%nyx_string* %t4)
  store i64 %t5, i64* %t6
  store i1 0, i1* %t7
  store i64 0, i64* %t8
  br label %while_cond0
while_cond0:
  %t9 = load i64, i64* %t8
  %t10 = load i64, i64* %t6
  %t11 = icmp slt i64 %t9, %t10
  br i1 %t11, label %while_body1, label %while_end2
while_body1:
  %t12 = load %nyx_string*, %nyx_string** %line.ptr
  %t13 = load i64, i64* %t8
  %t14 = call i8 @nyx_string_char_at(%nyx_string* %t12, i64 %t13)
  %t15 = zext i8 %t14 to i64
  store i64 %t15, i64* %t16
  %t17 = load i1, i1* %t7
  br i1 %t17, label %then3, label %else4
then3:
  %t18 = load i64, i64* %t16
  %t19 = icmp eq i64 %t18, 34
  br i1 %t19, label %then6, label %else7
then6:
  %t20 = load %nyx_string*, %nyx_string** %t3
  %t21 = getelementptr [2 x i8], [2 x i8]* @.str1, i32 0, i32 0
  %t22 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1.c, i8* %t21, i64 1)
  %t23 = call %nyx_string* @nyx_string_concat(%nyx_string* %t20, %nyx_string* %t22)
  store %nyx_string* %t23, %nyx_string** %t3
  store i1 0, i1* %t7
  %t24 = load i64, i64* %t8
  %t25 = add i64 %t24, 1
  store i64 %t25, i64* %t8
  br label %merge8
else7:
  store i1 false, i1* %t26
  %t27 = load i64, i64* %t16
  %t28 = icmp eq i64 %t27, 92
  br i1 %t28, label %sc_and_rhs9, label %sc_and_end10
sc_and_rhs9:
  %t29 = load i64, i64* %t8
  %t30 = add i64 %t29, 1
  %t31 = load i64, i64* %t6
  %t32 = icmp slt i64 %t30, %t31
  store i1 %t32, i1* %t26
  br label %sc_and_end10
sc_and_end10:
  %t33 = load i1, i1* %t26
  br i1 %t33, label %then11, label %else12
then11:
  %t34 = load %nyx_string*, %nyx_string** %t3
  %t35 = getelementptr [3 x i8], [3 x i8]* @.str2, i32 0, i32 0
  %t36 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str2.c, i8* %t35, i64 2)
  %t37 = call %nyx_string* @nyx_string_concat(%nyx_string* %t34, %nyx_string* %t36)
  store %nyx_string* %t37, %nyx_string** %t3
  %t38 = load i64, i64* %t8
  %t39 = add i64 %t38, 2
  store i64 %t39, i64* %t8
  br label %merge13
else12:
  %t40 = load %nyx_string*, %nyx_string** %t3
  %t41 = getelementptr [2 x i8], [2 x i8]* @.str3, i32 0, i32 0
  %t42 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str3.c, i8* %t41, i64 1)
  %t43 = call %nyx_string* @nyx_string_concat(%nyx_string* %t40, %nyx_string* %t42)
  store %nyx_string* %t43, %nyx_string** %t3
  %t44 = load i64, i64* %t8
  %t45 = add i64 %t44, 1
  store i64 %t45, i64* %t8
  br label %merge13
merge13:
  br label %merge8
merge8:
  br label %merge5
else4:
  %t46 = load i64, i64* %t16
  %t47 = icmp eq i64 %t46, 34
  br i1 %t47, label %then14, label %else15
then14:
  %t48 = load %nyx_string*, %nyx_string** %t3
  %t49 = getelementptr [2 x i8], [2 x i8]* @.str4, i32 0, i32 0
  %t50 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str4.c, i8* %t49, i64 1)
  %t51 = call %nyx_string* @nyx_string_concat(%nyx_string* %t48, %nyx_string* %t50)
  store %nyx_string* %t51, %nyx_string** %t3
  store i1 1, i1* %t7
  %t52 = load i64, i64* %t8
  %t53 = add i64 %t52, 1
  store i64 %t53, i64* %t8
  br label %merge16
else15:
  store i1 false, i1* %t54
  store i1 false, i1* %t55
  %t56 = load i64, i64* %t16
  %t57 = icmp eq i64 %t56, 47
  br i1 %t57, label %sc_and_rhs17, label %sc_and_end18
sc_and_rhs17:
  %t58 = load i64, i64* %t8
  %t59 = add i64 %t58, 1
  %t60 = load i64, i64* %t6
  %t61 = icmp slt i64 %t59, %t60
  store i1 %t61, i1* %t55
  br label %sc_and_end18
sc_and_end18:
  %t62 = load i1, i1* %t55
  br i1 %t62, label %sc_and_rhs19, label %sc_and_end20
sc_and_rhs19:
  %t63 = load %nyx_string*, %nyx_string** %line.ptr
  %t64 = load i64, i64* %t8
  %t65 = add i64 %t64, 1
  %t66 = call i8 @nyx_string_char_at(%nyx_string* %t63, i64 %t65)
  %t67 = zext i8 %t66 to i64
  %t68 = icmp eq i64 %t67, 47
  store i1 %t68, i1* %t54
  br label %sc_and_end20
sc_and_end20:
  %t69 = load i1, i1* %t54
  br i1 %t69, label %then21, label %else22
then21:
  %t70 = load %nyx_string*, %nyx_string** %t3
  ret %nyx_string* %t70
else22:
  %t71 = load %nyx_string*, %nyx_string** %t3
  %t72 = load %nyx_string*, %nyx_string** %line.ptr
  %t73 = load i64, i64* %t8
  %t74 = load i64, i64* %t8
  %t75 = add i64 %t74, 1
  %t76 = call %nyx_string* @nyx_string_substring(%nyx_string* %t72, i64 %t73, i64 %t75)
  %t77 = call %nyx_string* @nyx_string_concat(%nyx_string* %t71, %nyx_string* %t76)
  store %nyx_string* %t77, %nyx_string** %t3
  %t78 = load i64, i64* %t8
  %t79 = add i64 %t78, 1
  store i64 %t79, i64* %t8
  br label %merge23
merge23:
  br label %merge16
merge16:
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %t80 = load %nyx_string*, %nyx_string** %t3
  ret %nyx_string* %t80
}

define %nyx_string* @gotcha_scan_src(
) {
  %t83 = alloca %nyx_string*
  %t81 = getelementptr [1379 x i8], [1379 x i8]* @.str5, i32 0, i32 0
  %t82 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str5.c, i8* %t81, i64 1378)
  store %nyx_string* %t82, %nyx_string** %t83
  %t84 = load %nyx_string*, %nyx_string** %t83
  ret %nyx_string* %t84
}

define { i64, i8* }* @gotchas_table(
) {
  %t86 = alloca { i64, i8* }*
  %t85 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t85, { i64, i8* }** %t86
  %t87 = load { i64, i8* }*, { i64, i8* }** %t86
  %t88 = call { i64, i8* }* @nyx_array_new_ptr()
  %t89 = getelementptr [18 x i8], [18 x i8]* @.str6, i32 0, i32 0
  %t90 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str6.c, i8* %t89, i64 17)
  %t91 = ptrtoint %nyx_string* %t90 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t88, i64 %t91, i64 2)
  %t92 = getelementptr [5 x i8], [5 x i8]* @.str7, i32 0, i32 0
  %t93 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str7.c, i8* %t92, i64 4)
  %t94 = ptrtoint %nyx_string* %t93 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t88, i64 %t94, i64 2)
  %t95 = getelementptr [13 x i8], [13 x i8]* @.str8, i32 0, i32 0
  %t96 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str8.c, i8* %t95, i64 12)
  %t97 = ptrtoint %nyx_string* %t96 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t88, i64 %t97, i64 2)
  %t98 = getelementptr [7 x i8], [7 x i8]* @.str9, i32 0, i32 0
  %t99 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str9.c, i8* %t98, i64 6)
  %t100 = ptrtoint %nyx_string* %t99 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t88, i64 %t100, i64 2)
  %t101 = getelementptr [1 x i8], [1 x i8]* @.str10, i32 0, i32 0
  %t102 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str10.c, i8* %t101, i64 0)
  %t103 = ptrtoint %nyx_string* %t102 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t88, i64 %t103, i64 2)
  %t104 = getelementptr [1 x i8], [1 x i8]* @.str11, i32 0, i32 0
  %t105 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str11.c, i8* %t104, i64 0)
  %t106 = ptrtoint %nyx_string* %t105 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t88, i64 %t106, i64 2)
  %t107 = getelementptr [1 x i8], [1 x i8]* @.str12, i32 0, i32 0
  %t108 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str12.c, i8* %t107, i64 0)
  %t109 = ptrtoint %nyx_string* %t108 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t88, i64 %t109, i64 2)
  %t110 = getelementptr [9 x i8], [9 x i8]* @.str13, i32 0, i32 0
  %t111 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str13.c, i8* %t110, i64 8)
  %t112 = ptrtoint %nyx_string* %t111 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t88, i64 %t112, i64 2)
  %t113 = getelementptr [1 x i8], [1 x i8]* @.str14, i32 0, i32 0
  %t114 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str14.c, i8* %t113, i64 0)
  %t115 = ptrtoint %nyx_string* %t114 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t88, i64 %t115, i64 2)
  %t116 = getelementptr [39 x i8], [39 x i8]* @.str15, i32 0, i32 0
  %t117 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str15.c, i8* %t116, i64 38)
  %t118 = ptrtoint %nyx_string* %t117 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t88, i64 %t118, i64 2)
  %t119 = getelementptr [36 x i8], [36 x i8]* @.str16, i32 0, i32 0
  %t120 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str16.c, i8* %t119, i64 35)
  %t121 = ptrtoint %nyx_string* %t120 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t88, i64 %t121, i64 2)
  %t122 = getelementptr [47 x i8], [47 x i8]* @.str17, i32 0, i32 0
  %t123 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str17.c, i8* %t122, i64 46)
  %t124 = ptrtoint %nyx_string* %t123 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t88, i64 %t124, i64 2)
  %t125 = ptrtoint { i64, i8* }* %t88 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t87, i64 %t125, i64 5)
  %t126 = load { i64, i8* }*, { i64, i8* }** %t86
  %t127 = call { i64, i8* }* @nyx_array_new_ptr()
  %t128 = getelementptr [21 x i8], [21 x i8]* @.str18, i32 0, i32 0
  %t129 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str18.c, i8* %t128, i64 20)
  %t130 = ptrtoint %nyx_string* %t129 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t127, i64 %t130, i64 2)
  %t131 = getelementptr [5 x i8], [5 x i8]* @.str19, i32 0, i32 0
  %t132 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str19.c, i8* %t131, i64 4)
  %t133 = ptrtoint %nyx_string* %t132 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t127, i64 %t133, i64 2)
  %t134 = getelementptr [13 x i8], [13 x i8]* @.str20, i32 0, i32 0
  %t135 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str20.c, i8* %t134, i64 12)
  %t136 = ptrtoint %nyx_string* %t135 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t127, i64 %t136, i64 2)
  %t137 = getelementptr [8 x i8], [8 x i8]* @.str21, i32 0, i32 0
  %t138 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str21.c, i8* %t137, i64 7)
  %t139 = ptrtoint %nyx_string* %t138 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t127, i64 %t139, i64 2)
  %t140 = getelementptr [1 x i8], [1 x i8]* @.str22, i32 0, i32 0
  %t141 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str22.c, i8* %t140, i64 0)
  %t142 = ptrtoint %nyx_string* %t141 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t127, i64 %t142, i64 2)
  %t143 = getelementptr [1 x i8], [1 x i8]* @.str23, i32 0, i32 0
  %t144 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str23.c, i8* %t143, i64 0)
  %t145 = ptrtoint %nyx_string* %t144 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t127, i64 %t145, i64 2)
  %t146 = getelementptr [1 x i8], [1 x i8]* @.str24, i32 0, i32 0
  %t147 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str24.c, i8* %t146, i64 0)
  %t148 = ptrtoint %nyx_string* %t147 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t127, i64 %t148, i64 2)
  %t149 = getelementptr [11 x i8], [11 x i8]* @.str25, i32 0, i32 0
  %t150 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str25.c, i8* %t149, i64 10)
  %t151 = ptrtoint %nyx_string* %t150 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t127, i64 %t151, i64 2)
  %t152 = getelementptr [1 x i8], [1 x i8]* @.str26, i32 0, i32 0
  %t153 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str26.c, i8* %t152, i64 0)
  %t154 = ptrtoint %nyx_string* %t153 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t127, i64 %t154, i64 2)
  %t155 = getelementptr [38 x i8], [38 x i8]* @.str27, i32 0, i32 0
  %t156 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str27.c, i8* %t155, i64 37)
  %t157 = ptrtoint %nyx_string* %t156 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t127, i64 %t157, i64 2)
  %t158 = getelementptr [161 x i8], [161 x i8]* @.str28, i32 0, i32 0
  %t159 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str28.c, i8* %t158, i64 160)
  %t160 = ptrtoint %nyx_string* %t159 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t127, i64 %t160, i64 2)
  %t161 = getelementptr [179 x i8], [179 x i8]* @.str29, i32 0, i32 0
  %t162 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str29.c, i8* %t161, i64 178)
  %t163 = ptrtoint %nyx_string* %t162 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t127, i64 %t163, i64 2)
  %t164 = ptrtoint { i64, i8* }* %t127 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t126, i64 %t164, i64 5)
  %t165 = load { i64, i8* }*, { i64, i8* }** %t86
  %t166 = call { i64, i8* }* @nyx_array_new_ptr()
  %t167 = getelementptr [23 x i8], [23 x i8]* @.str30, i32 0, i32 0
  %t168 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str30.c, i8* %t167, i64 22)
  %t169 = ptrtoint %nyx_string* %t168 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t166, i64 %t169, i64 2)
  %t170 = getelementptr [5 x i8], [5 x i8]* @.str31, i32 0, i32 0
  %t171 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str31.c, i8* %t170, i64 4)
  %t172 = ptrtoint %nyx_string* %t171 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t166, i64 %t172, i64 2)
  %t173 = getelementptr [13 x i8], [13 x i8]* @.str32, i32 0, i32 0
  %t174 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str32.c, i8* %t173, i64 12)
  %t175 = ptrtoint %nyx_string* %t174 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t166, i64 %t175, i64 2)
  %t176 = getelementptr [8 x i8], [8 x i8]* @.str33, i32 0, i32 0
  %t177 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str33.c, i8* %t176, i64 7)
  %t178 = ptrtoint %nyx_string* %t177 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t166, i64 %t178, i64 2)
  %t179 = getelementptr [1 x i8], [1 x i8]* @.str34, i32 0, i32 0
  %t180 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str34.c, i8* %t179, i64 0)
  %t181 = ptrtoint %nyx_string* %t180 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t166, i64 %t181, i64 2)
  %t182 = getelementptr [1 x i8], [1 x i8]* @.str35, i32 0, i32 0
  %t183 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str35.c, i8* %t182, i64 0)
  %t184 = ptrtoint %nyx_string* %t183 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t166, i64 %t184, i64 2)
  %t185 = getelementptr [1 x i8], [1 x i8]* @.str36, i32 0, i32 0
  %t186 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str36.c, i8* %t185, i64 0)
  %t187 = ptrtoint %nyx_string* %t186 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t166, i64 %t187, i64 2)
  %t188 = getelementptr [9 x i8], [9 x i8]* @.str37, i32 0, i32 0
  %t189 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str37.c, i8* %t188, i64 8)
  %t190 = ptrtoint %nyx_string* %t189 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t166, i64 %t190, i64 2)
  %t191 = getelementptr [1 x i8], [1 x i8]* @.str38, i32 0, i32 0
  %t192 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str38.c, i8* %t191, i64 0)
  %t193 = ptrtoint %nyx_string* %t192 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t166, i64 %t193, i64 2)
  %t194 = getelementptr [37 x i8], [37 x i8]* @.str39, i32 0, i32 0
  %t195 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str39.c, i8* %t194, i64 36)
  %t196 = ptrtoint %nyx_string* %t195 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t166, i64 %t196, i64 2)
  %t197 = getelementptr [210 x i8], [210 x i8]* @.str40, i32 0, i32 0
  %t198 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str40.c, i8* %t197, i64 209)
  %t199 = ptrtoint %nyx_string* %t198 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t166, i64 %t199, i64 2)
  %t200 = getelementptr [218 x i8], [218 x i8]* @.str41, i32 0, i32 0
  %t201 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str41.c, i8* %t200, i64 217)
  %t202 = ptrtoint %nyx_string* %t201 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t166, i64 %t202, i64 2)
  %t203 = ptrtoint { i64, i8* }* %t166 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t165, i64 %t203, i64 5)
  %t204 = load { i64, i8* }*, { i64, i8* }** %t86
  %t205 = call { i64, i8* }* @nyx_array_new_ptr()
  %t206 = getelementptr [25 x i8], [25 x i8]* @.str42, i32 0, i32 0
  %t207 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str42.c, i8* %t206, i64 24)
  %t208 = ptrtoint %nyx_string* %t207 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t205, i64 %t208, i64 2)
  %t209 = getelementptr [5 x i8], [5 x i8]* @.str43, i32 0, i32 0
  %t210 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str43.c, i8* %t209, i64 4)
  %t211 = ptrtoint %nyx_string* %t210 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t205, i64 %t211, i64 2)
  %t212 = getelementptr [13 x i8], [13 x i8]* @.str44, i32 0, i32 0
  %t213 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str44.c, i8* %t212, i64 12)
  %t214 = ptrtoint %nyx_string* %t213 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t205, i64 %t214, i64 2)
  %t215 = getelementptr [7 x i8], [7 x i8]* @.str45, i32 0, i32 0
  %t216 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str45.c, i8* %t215, i64 6)
  %t217 = ptrtoint %nyx_string* %t216 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t205, i64 %t217, i64 2)
  %t218 = getelementptr [1 x i8], [1 x i8]* @.str46, i32 0, i32 0
  %t219 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str46.c, i8* %t218, i64 0)
  %t220 = ptrtoint %nyx_string* %t219 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t205, i64 %t220, i64 2)
  %t221 = getelementptr [1 x i8], [1 x i8]* @.str47, i32 0, i32 0
  %t222 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str47.c, i8* %t221, i64 0)
  %t223 = ptrtoint %nyx_string* %t222 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t205, i64 %t223, i64 2)
  %t224 = getelementptr [1 x i8], [1 x i8]* @.str48, i32 0, i32 0
  %t225 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str48.c, i8* %t224, i64 0)
  %t226 = ptrtoint %nyx_string* %t225 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t205, i64 %t226, i64 2)
  %t227 = getelementptr [12 x i8], [12 x i8]* @.str49, i32 0, i32 0
  %t228 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str49.c, i8* %t227, i64 11)
  %t229 = ptrtoint %nyx_string* %t228 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t205, i64 %t229, i64 2)
  %t230 = getelementptr [1 x i8], [1 x i8]* @.str50, i32 0, i32 0
  %t231 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str50.c, i8* %t230, i64 0)
  %t232 = ptrtoint %nyx_string* %t231 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t205, i64 %t232, i64 2)
  %t233 = getelementptr [40 x i8], [40 x i8]* @.str51, i32 0, i32 0
  %t234 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str51.c, i8* %t233, i64 39)
  %t235 = ptrtoint %nyx_string* %t234 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t205, i64 %t235, i64 2)
  %t236 = getelementptr [188 x i8], [188 x i8]* @.str52, i32 0, i32 0
  %t237 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str52.c, i8* %t236, i64 187)
  %t238 = ptrtoint %nyx_string* %t237 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t205, i64 %t238, i64 2)
  %t239 = getelementptr [199 x i8], [199 x i8]* @.str53, i32 0, i32 0
  %t240 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str53.c, i8* %t239, i64 198)
  %t241 = ptrtoint %nyx_string* %t240 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t205, i64 %t241, i64 2)
  %t242 = ptrtoint { i64, i8* }* %t205 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t204, i64 %t242, i64 5)
  %t243 = load { i64, i8* }*, { i64, i8* }** %t86
  %t244 = call { i64, i8* }* @nyx_array_new_ptr()
  %t245 = getelementptr [27 x i8], [27 x i8]* @.str54, i32 0, i32 0
  %t246 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str54.c, i8* %t245, i64 26)
  %t247 = ptrtoint %nyx_string* %t246 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t244, i64 %t247, i64 2)
  %t248 = getelementptr [5 x i8], [5 x i8]* @.str55, i32 0, i32 0
  %t249 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str55.c, i8* %t248, i64 4)
  %t250 = ptrtoint %nyx_string* %t249 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t244, i64 %t250, i64 2)
  %t251 = getelementptr [13 x i8], [13 x i8]* @.str56, i32 0, i32 0
  %t252 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str56.c, i8* %t251, i64 12)
  %t253 = ptrtoint %nyx_string* %t252 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t244, i64 %t253, i64 2)
  %t254 = getelementptr [7 x i8], [7 x i8]* @.str57, i32 0, i32 0
  %t255 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str57.c, i8* %t254, i64 6)
  %t256 = ptrtoint %nyx_string* %t255 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t244, i64 %t256, i64 2)
  %t257 = getelementptr [1 x i8], [1 x i8]* @.str58, i32 0, i32 0
  %t258 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str58.c, i8* %t257, i64 0)
  %t259 = ptrtoint %nyx_string* %t258 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t244, i64 %t259, i64 2)
  %t260 = getelementptr [35 x i8], [35 x i8]* @.str59, i32 0, i32 0
  %t261 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str59.c, i8* %t260, i64 34)
  %t262 = ptrtoint %nyx_string* %t261 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t244, i64 %t262, i64 2)
  %t263 = getelementptr [5 x i8], [5 x i8]* @.str60, i32 0, i32 0
  %t264 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str60.c, i8* %t263, i64 4)
  %t265 = ptrtoint %nyx_string* %t264 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t244, i64 %t265, i64 2)
  %t266 = getelementptr [11 x i8], [11 x i8]* @.str61, i32 0, i32 0
  %t267 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str61.c, i8* %t266, i64 10)
  %t268 = ptrtoint %nyx_string* %t267 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t244, i64 %t268, i64 2)
  %t269 = getelementptr [1 x i8], [1 x i8]* @.str62, i32 0, i32 0
  %t270 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str62.c, i8* %t269, i64 0)
  %t271 = ptrtoint %nyx_string* %t270 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t244, i64 %t271, i64 2)
  %t272 = getelementptr [48 x i8], [48 x i8]* @.str63, i32 0, i32 0
  %t273 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str63.c, i8* %t272, i64 47)
  %t274 = ptrtoint %nyx_string* %t273 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t244, i64 %t274, i64 2)
  %t275 = getelementptr [308 x i8], [308 x i8]* @.str64, i32 0, i32 0
  %t276 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str64.c, i8* %t275, i64 307)
  %t277 = ptrtoint %nyx_string* %t276 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t244, i64 %t277, i64 2)
  %t278 = getelementptr [335 x i8], [335 x i8]* @.str65, i32 0, i32 0
  %t279 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str65.c, i8* %t278, i64 334)
  %t280 = ptrtoint %nyx_string* %t279 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t244, i64 %t280, i64 2)
  %t281 = ptrtoint { i64, i8* }* %t244 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t243, i64 %t281, i64 5)
  %t282 = load { i64, i8* }*, { i64, i8* }** %t86
  %t283 = call { i64, i8* }* @nyx_array_new_ptr()
  %t284 = getelementptr [19 x i8], [19 x i8]* @.str66, i32 0, i32 0
  %t285 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str66.c, i8* %t284, i64 18)
  %t286 = ptrtoint %nyx_string* %t285 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t283, i64 %t286, i64 2)
  %t287 = getelementptr [5 x i8], [5 x i8]* @.str67, i32 0, i32 0
  %t288 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str67.c, i8* %t287, i64 4)
  %t289 = ptrtoint %nyx_string* %t288 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t283, i64 %t289, i64 2)
  %t290 = getelementptr [13 x i8], [13 x i8]* @.str68, i32 0, i32 0
  %t291 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str68.c, i8* %t290, i64 12)
  %t292 = ptrtoint %nyx_string* %t291 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t283, i64 %t292, i64 2)
  %t293 = getelementptr [7 x i8], [7 x i8]* @.str69, i32 0, i32 0
  %t294 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str69.c, i8* %t293, i64 6)
  %t295 = ptrtoint %nyx_string* %t294 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t283, i64 %t295, i64 2)
  %t296 = getelementptr [1 x i8], [1 x i8]* @.str70, i32 0, i32 0
  %t297 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str70.c, i8* %t296, i64 0)
  %t298 = ptrtoint %nyx_string* %t297 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t283, i64 %t298, i64 2)
  %t299 = getelementptr [1 x i8], [1 x i8]* @.str71, i32 0, i32 0
  %t300 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str71.c, i8* %t299, i64 0)
  %t301 = ptrtoint %nyx_string* %t300 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t283, i64 %t301, i64 2)
  %t302 = getelementptr [1 x i8], [1 x i8]* @.str72, i32 0, i32 0
  %t303 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str72.c, i8* %t302, i64 0)
  %t304 = ptrtoint %nyx_string* %t303 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t283, i64 %t304, i64 2)
  %t305 = getelementptr [11 x i8], [11 x i8]* @.str73, i32 0, i32 0
  %t306 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str73.c, i8* %t305, i64 10)
  %t307 = ptrtoint %nyx_string* %t306 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t283, i64 %t307, i64 2)
  %t308 = getelementptr [1 x i8], [1 x i8]* @.str74, i32 0, i32 0
  %t309 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str74.c, i8* %t308, i64 0)
  %t310 = ptrtoint %nyx_string* %t309 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t283, i64 %t310, i64 2)
  %t311 = getelementptr [51 x i8], [51 x i8]* @.str75, i32 0, i32 0
  %t312 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str75.c, i8* %t311, i64 50)
  %t313 = ptrtoint %nyx_string* %t312 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t283, i64 %t313, i64 2)
  %t314 = getelementptr [272 x i8], [272 x i8]* @.str76, i32 0, i32 0
  %t315 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str76.c, i8* %t314, i64 271)
  %t316 = ptrtoint %nyx_string* %t315 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t283, i64 %t316, i64 2)
  %t317 = getelementptr [277 x i8], [277 x i8]* @.str77, i32 0, i32 0
  %t318 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str77.c, i8* %t317, i64 276)
  %t319 = ptrtoint %nyx_string* %t318 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t283, i64 %t319, i64 2)
  %t320 = ptrtoint { i64, i8* }* %t283 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t282, i64 %t320, i64 5)
  %t321 = load { i64, i8* }*, { i64, i8* }** %t86
  %t322 = call { i64, i8* }* @nyx_array_new_ptr()
  %t323 = getelementptr [23 x i8], [23 x i8]* @.str78, i32 0, i32 0
  %t324 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str78.c, i8* %t323, i64 22)
  %t325 = ptrtoint %nyx_string* %t324 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t322, i64 %t325, i64 2)
  %t326 = getelementptr [5 x i8], [5 x i8]* @.str79, i32 0, i32 0
  %t327 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str79.c, i8* %t326, i64 4)
  %t328 = ptrtoint %nyx_string* %t327 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t322, i64 %t328, i64 2)
  %t329 = getelementptr [13 x i8], [13 x i8]* @.str80, i32 0, i32 0
  %t330 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str80.c, i8* %t329, i64 12)
  %t331 = ptrtoint %nyx_string* %t330 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t322, i64 %t331, i64 2)
  %t332 = getelementptr [7 x i8], [7 x i8]* @.str81, i32 0, i32 0
  %t333 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str81.c, i8* %t332, i64 6)
  %t334 = ptrtoint %nyx_string* %t333 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t322, i64 %t334, i64 2)
  %t335 = getelementptr [1 x i8], [1 x i8]* @.str82, i32 0, i32 0
  %t336 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str82.c, i8* %t335, i64 0)
  %t337 = ptrtoint %nyx_string* %t336 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t322, i64 %t337, i64 2)
  %t338 = getelementptr [1 x i8], [1 x i8]* @.str83, i32 0, i32 0
  %t339 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str83.c, i8* %t338, i64 0)
  %t340 = ptrtoint %nyx_string* %t339 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t322, i64 %t340, i64 2)
  %t341 = getelementptr [1 x i8], [1 x i8]* @.str84, i32 0, i32 0
  %t342 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str84.c, i8* %t341, i64 0)
  %t343 = ptrtoint %nyx_string* %t342 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t322, i64 %t343, i64 2)
  %t344 = getelementptr [8 x i8], [8 x i8]* @.str85, i32 0, i32 0
  %t345 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str85.c, i8* %t344, i64 7)
  %t346 = ptrtoint %nyx_string* %t345 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t322, i64 %t346, i64 2)
  %t347 = getelementptr [1 x i8], [1 x i8]* @.str86, i32 0, i32 0
  %t348 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str86.c, i8* %t347, i64 0)
  %t349 = ptrtoint %nyx_string* %t348 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t322, i64 %t349, i64 2)
  %t350 = getelementptr [25 x i8], [25 x i8]* @.str87, i32 0, i32 0
  %t351 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str87.c, i8* %t350, i64 24)
  %t352 = ptrtoint %nyx_string* %t351 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t322, i64 %t352, i64 2)
  %t353 = getelementptr [150 x i8], [150 x i8]* @.str88, i32 0, i32 0
  %t354 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str88.c, i8* %t353, i64 149)
  %t355 = ptrtoint %nyx_string* %t354 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t322, i64 %t355, i64 2)
  %t356 = getelementptr [138 x i8], [138 x i8]* @.str89, i32 0, i32 0
  %t357 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str89.c, i8* %t356, i64 137)
  %t358 = ptrtoint %nyx_string* %t357 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t322, i64 %t358, i64 2)
  %t359 = ptrtoint { i64, i8* }* %t322 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t321, i64 %t359, i64 5)
  %t360 = load { i64, i8* }*, { i64, i8* }** %t86
  %t361 = call { i64, i8* }* @nyx_array_new_ptr()
  %t362 = getelementptr [14 x i8], [14 x i8]* @.str90, i32 0, i32 0
  %t363 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str90.c, i8* %t362, i64 13)
  %t364 = ptrtoint %nyx_string* %t363 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t361, i64 %t364, i64 2)
  %t365 = getelementptr [5 x i8], [5 x i8]* @.str91, i32 0, i32 0
  %t366 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str91.c, i8* %t365, i64 4)
  %t367 = ptrtoint %nyx_string* %t366 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t361, i64 %t367, i64 2)
  %t368 = getelementptr [13 x i8], [13 x i8]* @.str92, i32 0, i32 0
  %t369 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str92.c, i8* %t368, i64 12)
  %t370 = ptrtoint %nyx_string* %t369 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t361, i64 %t370, i64 2)
  %t371 = getelementptr [7 x i8], [7 x i8]* @.str93, i32 0, i32 0
  %t372 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str93.c, i8* %t371, i64 6)
  %t373 = ptrtoint %nyx_string* %t372 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t361, i64 %t373, i64 2)
  %t374 = getelementptr [1 x i8], [1 x i8]* @.str94, i32 0, i32 0
  %t375 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str94.c, i8* %t374, i64 0)
  %t376 = ptrtoint %nyx_string* %t375 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t361, i64 %t376, i64 2)
  %t377 = getelementptr [1 x i8], [1 x i8]* @.str95, i32 0, i32 0
  %t378 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str95.c, i8* %t377, i64 0)
  %t379 = ptrtoint %nyx_string* %t378 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t361, i64 %t379, i64 2)
  %t380 = getelementptr [1 x i8], [1 x i8]* @.str96, i32 0, i32 0
  %t381 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str96.c, i8* %t380, i64 0)
  %t382 = ptrtoint %nyx_string* %t381 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t361, i64 %t382, i64 2)
  %t383 = getelementptr [9 x i8], [9 x i8]* @.str97, i32 0, i32 0
  %t384 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str97.c, i8* %t383, i64 8)
  %t385 = ptrtoint %nyx_string* %t384 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t361, i64 %t385, i64 2)
  %t386 = getelementptr [1 x i8], [1 x i8]* @.str98, i32 0, i32 0
  %t387 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str98.c, i8* %t386, i64 0)
  %t388 = ptrtoint %nyx_string* %t387 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t361, i64 %t388, i64 2)
  %t389 = getelementptr [45 x i8], [45 x i8]* @.str99, i32 0, i32 0
  %t390 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str99.c, i8* %t389, i64 44)
  %t391 = ptrtoint %nyx_string* %t390 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t361, i64 %t391, i64 2)
  %t392 = getelementptr [115 x i8], [115 x i8]* @.str100, i32 0, i32 0
  %t393 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str100.c, i8* %t392, i64 114)
  %t394 = ptrtoint %nyx_string* %t393 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t361, i64 %t394, i64 2)
  %t395 = getelementptr [125 x i8], [125 x i8]* @.str101, i32 0, i32 0
  %t396 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str101.c, i8* %t395, i64 124)
  %t397 = ptrtoint %nyx_string* %t396 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t361, i64 %t397, i64 2)
  %t398 = ptrtoint { i64, i8* }* %t361 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t360, i64 %t398, i64 5)
  %t399 = load { i64, i8* }*, { i64, i8* }** %t86
  %t400 = call { i64, i8* }* @nyx_array_new_ptr()
  %t401 = getelementptr [27 x i8], [27 x i8]* @.str102, i32 0, i32 0
  %t402 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str102.c, i8* %t401, i64 26)
  %t403 = ptrtoint %nyx_string* %t402 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t400, i64 %t403, i64 2)
  %t404 = getelementptr [5 x i8], [5 x i8]* @.str103, i32 0, i32 0
  %t405 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str103.c, i8* %t404, i64 4)
  %t406 = ptrtoint %nyx_string* %t405 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t400, i64 %t406, i64 2)
  %t407 = getelementptr [13 x i8], [13 x i8]* @.str104, i32 0, i32 0
  %t408 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str104.c, i8* %t407, i64 12)
  %t409 = ptrtoint %nyx_string* %t408 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t400, i64 %t409, i64 2)
  %t410 = getelementptr [7 x i8], [7 x i8]* @.str105, i32 0, i32 0
  %t411 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str105.c, i8* %t410, i64 6)
  %t412 = ptrtoint %nyx_string* %t411 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t400, i64 %t412, i64 2)
  %t413 = getelementptr [1 x i8], [1 x i8]* @.str106, i32 0, i32 0
  %t414 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str106.c, i8* %t413, i64 0)
  %t415 = ptrtoint %nyx_string* %t414 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t400, i64 %t415, i64 2)
  %t416 = getelementptr [1 x i8], [1 x i8]* @.str107, i32 0, i32 0
  %t417 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str107.c, i8* %t416, i64 0)
  %t418 = ptrtoint %nyx_string* %t417 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t400, i64 %t418, i64 2)
  %t419 = getelementptr [1 x i8], [1 x i8]* @.str108, i32 0, i32 0
  %t420 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str108.c, i8* %t419, i64 0)
  %t421 = ptrtoint %nyx_string* %t420 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t400, i64 %t421, i64 2)
  %t422 = getelementptr [8 x i8], [8 x i8]* @.str109, i32 0, i32 0
  %t423 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str109.c, i8* %t422, i64 7)
  %t424 = ptrtoint %nyx_string* %t423 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t400, i64 %t424, i64 2)
  %t425 = getelementptr [1 x i8], [1 x i8]* @.str110, i32 0, i32 0
  %t426 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str110.c, i8* %t425, i64 0)
  %t427 = ptrtoint %nyx_string* %t426 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t400, i64 %t427, i64 2)
  %t428 = getelementptr [36 x i8], [36 x i8]* @.str111, i32 0, i32 0
  %t429 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str111.c, i8* %t428, i64 35)
  %t430 = ptrtoint %nyx_string* %t429 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t400, i64 %t430, i64 2)
  %t431 = getelementptr [130 x i8], [130 x i8]* @.str112, i32 0, i32 0
  %t432 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str112.c, i8* %t431, i64 129)
  %t433 = ptrtoint %nyx_string* %t432 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t400, i64 %t433, i64 2)
  %t434 = getelementptr [127 x i8], [127 x i8]* @.str113, i32 0, i32 0
  %t435 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str113.c, i8* %t434, i64 126)
  %t436 = ptrtoint %nyx_string* %t435 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t400, i64 %t436, i64 2)
  %t437 = ptrtoint { i64, i8* }* %t400 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t399, i64 %t437, i64 5)
  %t438 = load { i64, i8* }*, { i64, i8* }** %t86
  %t439 = call { i64, i8* }* @nyx_array_new_ptr()
  %t440 = getelementptr [18 x i8], [18 x i8]* @.str114, i32 0, i32 0
  %t441 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str114.c, i8* %t440, i64 17)
  %t442 = ptrtoint %nyx_string* %t441 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t439, i64 %t442, i64 2)
  %t443 = getelementptr [5 x i8], [5 x i8]* @.str115, i32 0, i32 0
  %t444 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str115.c, i8* %t443, i64 4)
  %t445 = ptrtoint %nyx_string* %t444 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t439, i64 %t445, i64 2)
  %t446 = getelementptr [5 x i8], [5 x i8]* @.str116, i32 0, i32 0
  %t447 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str116.c, i8* %t446, i64 4)
  %t448 = ptrtoint %nyx_string* %t447 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t439, i64 %t448, i64 2)
  %t449 = getelementptr [7 x i8], [7 x i8]* @.str117, i32 0, i32 0
  %t450 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str117.c, i8* %t449, i64 6)
  %t451 = ptrtoint %nyx_string* %t450 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t439, i64 %t451, i64 2)
  %t452 = getelementptr [1 x i8], [1 x i8]* @.str118, i32 0, i32 0
  %t453 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str118.c, i8* %t452, i64 0)
  %t454 = ptrtoint %nyx_string* %t453 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t439, i64 %t454, i64 2)
  %t455 = getelementptr [1 x i8], [1 x i8]* @.str119, i32 0, i32 0
  %t456 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str119.c, i8* %t455, i64 0)
  %t457 = ptrtoint %nyx_string* %t456 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t439, i64 %t457, i64 2)
  %t458 = getelementptr [1 x i8], [1 x i8]* @.str120, i32 0, i32 0
  %t459 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str120.c, i8* %t458, i64 0)
  %t460 = ptrtoint %nyx_string* %t459 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t439, i64 %t460, i64 2)
  %t461 = getelementptr [8 x i8], [8 x i8]* @.str121, i32 0, i32 0
  %t462 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str121.c, i8* %t461, i64 7)
  %t463 = ptrtoint %nyx_string* %t462 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t439, i64 %t463, i64 2)
  %t464 = getelementptr [1 x i8], [1 x i8]* @.str122, i32 0, i32 0
  %t465 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str122.c, i8* %t464, i64 0)
  %t466 = ptrtoint %nyx_string* %t465 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t439, i64 %t466, i64 2)
  %t467 = getelementptr [49 x i8], [49 x i8]* @.str123, i32 0, i32 0
  %t468 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str123.c, i8* %t467, i64 48)
  %t469 = ptrtoint %nyx_string* %t468 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t439, i64 %t469, i64 2)
  %t470 = getelementptr [59 x i8], [59 x i8]* @.str124, i32 0, i32 0
  %t471 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str124.c, i8* %t470, i64 58)
  %t472 = ptrtoint %nyx_string* %t471 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t439, i64 %t472, i64 2)
  %t473 = getelementptr [73 x i8], [73 x i8]* @.str125, i32 0, i32 0
  %t474 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str125.c, i8* %t473, i64 72)
  %t475 = ptrtoint %nyx_string* %t474 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t439, i64 %t475, i64 2)
  %t476 = ptrtoint { i64, i8* }* %t439 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t438, i64 %t476, i64 5)
  %t477 = load { i64, i8* }*, { i64, i8* }** %t86
  %t478 = call { i64, i8* }* @nyx_array_new_ptr()
  %t479 = getelementptr [15 x i8], [15 x i8]* @.str126, i32 0, i32 0
  %t480 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str126.c, i8* %t479, i64 14)
  %t481 = ptrtoint %nyx_string* %t480 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t478, i64 %t481, i64 2)
  %t482 = getelementptr [5 x i8], [5 x i8]* @.str127, i32 0, i32 0
  %t483 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str127.c, i8* %t482, i64 4)
  %t484 = ptrtoint %nyx_string* %t483 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t478, i64 %t484, i64 2)
  %t485 = getelementptr [5 x i8], [5 x i8]* @.str128, i32 0, i32 0
  %t486 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str128.c, i8* %t485, i64 4)
  %t487 = ptrtoint %nyx_string* %t486 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t478, i64 %t487, i64 2)
  %t488 = getelementptr [8 x i8], [8 x i8]* @.str129, i32 0, i32 0
  %t489 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str129.c, i8* %t488, i64 7)
  %t490 = ptrtoint %nyx_string* %t489 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t478, i64 %t490, i64 2)
  %t491 = getelementptr [1 x i8], [1 x i8]* @.str130, i32 0, i32 0
  %t492 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str130.c, i8* %t491, i64 0)
  %t493 = ptrtoint %nyx_string* %t492 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t478, i64 %t493, i64 2)
  %t494 = getelementptr [25 x i8], [25 x i8]* @.str131, i32 0, i32 0
  %t495 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str131.c, i8* %t494, i64 24)
  %t496 = ptrtoint %nyx_string* %t495 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t478, i64 %t496, i64 2)
  %t497 = getelementptr [5 x i8], [5 x i8]* @.str132, i32 0, i32 0
  %t498 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str132.c, i8* %t497, i64 4)
  %t499 = ptrtoint %nyx_string* %t498 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t478, i64 %t499, i64 2)
  %t500 = getelementptr [12 x i8], [12 x i8]* @.str133, i32 0, i32 0
  %t501 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str133.c, i8* %t500, i64 11)
  %t502 = ptrtoint %nyx_string* %t501 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t478, i64 %t502, i64 2)
  %t503 = getelementptr [1 x i8], [1 x i8]* @.str134, i32 0, i32 0
  %t504 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str134.c, i8* %t503, i64 0)
  %t505 = ptrtoint %nyx_string* %t504 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t478, i64 %t505, i64 2)
  %t506 = getelementptr [36 x i8], [36 x i8]* @.str135, i32 0, i32 0
  %t507 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str135.c, i8* %t506, i64 35)
  %t508 = ptrtoint %nyx_string* %t507 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t478, i64 %t508, i64 2)
  %t509 = getelementptr [85 x i8], [85 x i8]* @.str136, i32 0, i32 0
  %t510 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str136.c, i8* %t509, i64 84)
  %t511 = ptrtoint %nyx_string* %t510 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t478, i64 %t511, i64 2)
  %t512 = getelementptr [90 x i8], [90 x i8]* @.str137, i32 0, i32 0
  %t513 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str137.c, i8* %t512, i64 89)
  %t514 = ptrtoint %nyx_string* %t513 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t478, i64 %t514, i64 2)
  %t515 = ptrtoint { i64, i8* }* %t478 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t477, i64 %t515, i64 5)
  %t516 = load { i64, i8* }*, { i64, i8* }** %t86
  %t517 = call { i64, i8* }* @nyx_array_new_ptr()
  %t518 = getelementptr [19 x i8], [19 x i8]* @.str138, i32 0, i32 0
  %t519 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str138.c, i8* %t518, i64 18)
  %t520 = ptrtoint %nyx_string* %t519 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t517, i64 %t520, i64 2)
  %t521 = getelementptr [5 x i8], [5 x i8]* @.str139, i32 0, i32 0
  %t522 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str139.c, i8* %t521, i64 4)
  %t523 = ptrtoint %nyx_string* %t522 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t517, i64 %t523, i64 2)
  %t524 = getelementptr [5 x i8], [5 x i8]* @.str140, i32 0, i32 0
  %t525 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str140.c, i8* %t524, i64 4)
  %t526 = ptrtoint %nyx_string* %t525 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t517, i64 %t526, i64 2)
  %t527 = getelementptr [8 x i8], [8 x i8]* @.str141, i32 0, i32 0
  %t528 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str141.c, i8* %t527, i64 7)
  %t529 = ptrtoint %nyx_string* %t528 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t517, i64 %t529, i64 2)
  %t530 = getelementptr [1 x i8], [1 x i8]* @.str142, i32 0, i32 0
  %t531 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str142.c, i8* %t530, i64 0)
  %t532 = ptrtoint %nyx_string* %t531 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t517, i64 %t532, i64 2)
  %t533 = getelementptr [23 x i8], [23 x i8]* @.str143, i32 0, i32 0
  %t534 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str143.c, i8* %t533, i64 22)
  %t535 = ptrtoint %nyx_string* %t534 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t517, i64 %t535, i64 2)
  %t536 = getelementptr [5 x i8], [5 x i8]* @.str144, i32 0, i32 0
  %t537 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str144.c, i8* %t536, i64 4)
  %t538 = ptrtoint %nyx_string* %t537 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t517, i64 %t538, i64 2)
  %t539 = getelementptr [7 x i8], [7 x i8]* @.str145, i32 0, i32 0
  %t540 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str145.c, i8* %t539, i64 6)
  %t541 = ptrtoint %nyx_string* %t540 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t517, i64 %t541, i64 2)
  %t542 = getelementptr [1 x i8], [1 x i8]* @.str146, i32 0, i32 0
  %t543 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str146.c, i8* %t542, i64 0)
  %t544 = ptrtoint %nyx_string* %t543 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t517, i64 %t544, i64 2)
  %t545 = getelementptr [36 x i8], [36 x i8]* @.str147, i32 0, i32 0
  %t546 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str147.c, i8* %t545, i64 35)
  %t547 = ptrtoint %nyx_string* %t546 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t517, i64 %t547, i64 2)
  %t548 = getelementptr [93 x i8], [93 x i8]* @.str148, i32 0, i32 0
  %t549 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str148.c, i8* %t548, i64 92)
  %t550 = ptrtoint %nyx_string* %t549 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t517, i64 %t550, i64 2)
  %t551 = getelementptr [104 x i8], [104 x i8]* @.str149, i32 0, i32 0
  %t552 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str149.c, i8* %t551, i64 103)
  %t553 = ptrtoint %nyx_string* %t552 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t517, i64 %t553, i64 2)
  %t554 = ptrtoint { i64, i8* }* %t517 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t516, i64 %t554, i64 5)
  %t555 = load { i64, i8* }*, { i64, i8* }** %t86
  %t556 = call { i64, i8* }* @nyx_array_new_ptr()
  %t557 = getelementptr [20 x i8], [20 x i8]* @.str150, i32 0, i32 0
  %t558 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str150.c, i8* %t557, i64 19)
  %t559 = ptrtoint %nyx_string* %t558 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t556, i64 %t559, i64 2)
  %t560 = getelementptr [5 x i8], [5 x i8]* @.str151, i32 0, i32 0
  %t561 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str151.c, i8* %t560, i64 4)
  %t562 = ptrtoint %nyx_string* %t561 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t556, i64 %t562, i64 2)
  %t563 = getelementptr [5 x i8], [5 x i8]* @.str152, i32 0, i32 0
  %t564 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str152.c, i8* %t563, i64 4)
  %t565 = ptrtoint %nyx_string* %t564 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t556, i64 %t565, i64 2)
  %t566 = getelementptr [8 x i8], [8 x i8]* @.str153, i32 0, i32 0
  %t567 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str153.c, i8* %t566, i64 7)
  %t568 = ptrtoint %nyx_string* %t567 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t556, i64 %t568, i64 2)
  %t569 = getelementptr [1 x i8], [1 x i8]* @.str154, i32 0, i32 0
  %t570 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str154.c, i8* %t569, i64 0)
  %t571 = ptrtoint %nyx_string* %t570 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t556, i64 %t571, i64 2)
  %t572 = getelementptr [26 x i8], [26 x i8]* @.str155, i32 0, i32 0
  %t573 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str155.c, i8* %t572, i64 25)
  %t574 = ptrtoint %nyx_string* %t573 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t556, i64 %t574, i64 2)
  %t575 = getelementptr [5 x i8], [5 x i8]* @.str156, i32 0, i32 0
  %t576 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str156.c, i8* %t575, i64 4)
  %t577 = ptrtoint %nyx_string* %t576 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t556, i64 %t577, i64 2)
  %t578 = getelementptr [13 x i8], [13 x i8]* @.str157, i32 0, i32 0
  %t579 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str157.c, i8* %t578, i64 12)
  %t580 = ptrtoint %nyx_string* %t579 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t556, i64 %t580, i64 2)
  %t581 = getelementptr [1 x i8], [1 x i8]* @.str158, i32 0, i32 0
  %t582 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str158.c, i8* %t581, i64 0)
  %t583 = ptrtoint %nyx_string* %t582 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t556, i64 %t583, i64 2)
  %t584 = getelementptr [36 x i8], [36 x i8]* @.str159, i32 0, i32 0
  %t585 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str159.c, i8* %t584, i64 35)
  %t586 = ptrtoint %nyx_string* %t585 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t556, i64 %t586, i64 2)
  %t587 = getelementptr [78 x i8], [78 x i8]* @.str160, i32 0, i32 0
  %t588 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str160.c, i8* %t587, i64 77)
  %t589 = ptrtoint %nyx_string* %t588 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t556, i64 %t589, i64 2)
  %t590 = getelementptr [86 x i8], [86 x i8]* @.str161, i32 0, i32 0
  %t591 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str161.c, i8* %t590, i64 85)
  %t592 = ptrtoint %nyx_string* %t591 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t556, i64 %t592, i64 2)
  %t593 = ptrtoint { i64, i8* }* %t556 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t555, i64 %t593, i64 5)
  %t594 = load { i64, i8* }*, { i64, i8* }** %t86
  %t595 = call { i64, i8* }* @nyx_array_new_ptr()
  %t596 = getelementptr [24 x i8], [24 x i8]* @.str162, i32 0, i32 0
  %t597 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str162.c, i8* %t596, i64 23)
  %t598 = ptrtoint %nyx_string* %t597 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t595, i64 %t598, i64 2)
  %t599 = getelementptr [5 x i8], [5 x i8]* @.str163, i32 0, i32 0
  %t600 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str163.c, i8* %t599, i64 4)
  %t601 = ptrtoint %nyx_string* %t600 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t595, i64 %t601, i64 2)
  %t602 = getelementptr [5 x i8], [5 x i8]* @.str164, i32 0, i32 0
  %t603 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str164.c, i8* %t602, i64 4)
  %t604 = ptrtoint %nyx_string* %t603 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t595, i64 %t604, i64 2)
  %t605 = getelementptr [8 x i8], [8 x i8]* @.str165, i32 0, i32 0
  %t606 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str165.c, i8* %t605, i64 7)
  %t607 = ptrtoint %nyx_string* %t606 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t595, i64 %t607, i64 2)
  %t608 = getelementptr [1 x i8], [1 x i8]* @.str166, i32 0, i32 0
  %t609 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str166.c, i8* %t608, i64 0)
  %t610 = ptrtoint %nyx_string* %t609 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t595, i64 %t610, i64 2)
  %t611 = getelementptr [27 x i8], [27 x i8]* @.str167, i32 0, i32 0
  %t612 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str167.c, i8* %t611, i64 26)
  %t613 = ptrtoint %nyx_string* %t612 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t595, i64 %t613, i64 2)
  %t614 = getelementptr [5 x i8], [5 x i8]* @.str168, i32 0, i32 0
  %t615 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str168.c, i8* %t614, i64 4)
  %t616 = ptrtoint %nyx_string* %t615 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t595, i64 %t616, i64 2)
  %t617 = getelementptr [8 x i8], [8 x i8]* @.str169, i32 0, i32 0
  %t618 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str169.c, i8* %t617, i64 7)
  %t619 = ptrtoint %nyx_string* %t618 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t595, i64 %t619, i64 2)
  %t620 = getelementptr [32 x i8], [32 x i8]* @.str170, i32 0, i32 0
  %t621 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str170.c, i8* %t620, i64 31)
  %t622 = ptrtoint %nyx_string* %t621 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t595, i64 %t622, i64 2)
  %t623 = getelementptr [38 x i8], [38 x i8]* @.str171, i32 0, i32 0
  %t624 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str171.c, i8* %t623, i64 37)
  %t625 = ptrtoint %nyx_string* %t624 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t595, i64 %t625, i64 2)
  %t626 = getelementptr [139 x i8], [139 x i8]* @.str172, i32 0, i32 0
  %t627 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str172.c, i8* %t626, i64 138)
  %t628 = ptrtoint %nyx_string* %t627 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t595, i64 %t628, i64 2)
  %t629 = getelementptr [159 x i8], [159 x i8]* @.str173, i32 0, i32 0
  %t630 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str173.c, i8* %t629, i64 158)
  %t631 = ptrtoint %nyx_string* %t630 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t595, i64 %t631, i64 2)
  %t632 = ptrtoint { i64, i8* }* %t595 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t594, i64 %t632, i64 5)
  %t633 = load { i64, i8* }*, { i64, i8* }** %t86
  %t634 = call { i64, i8* }* @nyx_array_new_ptr()
  %t635 = getelementptr [18 x i8], [18 x i8]* @.str174, i32 0, i32 0
  %t636 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str174.c, i8* %t635, i64 17)
  %t637 = ptrtoint %nyx_string* %t636 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t634, i64 %t637, i64 2)
  %t638 = getelementptr [5 x i8], [5 x i8]* @.str175, i32 0, i32 0
  %t639 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str175.c, i8* %t638, i64 4)
  %t640 = ptrtoint %nyx_string* %t639 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t634, i64 %t640, i64 2)
  %t641 = getelementptr [13 x i8], [13 x i8]* @.str176, i32 0, i32 0
  %t642 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str176.c, i8* %t641, i64 12)
  %t643 = ptrtoint %nyx_string* %t642 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t634, i64 %t643, i64 2)
  %t644 = getelementptr [8 x i8], [8 x i8]* @.str177, i32 0, i32 0
  %t645 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str177.c, i8* %t644, i64 7)
  %t646 = ptrtoint %nyx_string* %t645 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t634, i64 %t646, i64 2)
  %t647 = getelementptr [1 x i8], [1 x i8]* @.str178, i32 0, i32 0
  %t648 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str178.c, i8* %t647, i64 0)
  %t649 = ptrtoint %nyx_string* %t648 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t634, i64 %t649, i64 2)
  %t650 = getelementptr [1 x i8], [1 x i8]* @.str179, i32 0, i32 0
  %t651 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str179.c, i8* %t650, i64 0)
  %t652 = ptrtoint %nyx_string* %t651 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t634, i64 %t652, i64 2)
  %t653 = getelementptr [1 x i8], [1 x i8]* @.str180, i32 0, i32 0
  %t654 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str180.c, i8* %t653, i64 0)
  %t655 = ptrtoint %nyx_string* %t654 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t634, i64 %t655, i64 2)
  %t656 = getelementptr [6 x i8], [6 x i8]* @.str181, i32 0, i32 0
  %t657 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str181.c, i8* %t656, i64 5)
  %t658 = ptrtoint %nyx_string* %t657 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t634, i64 %t658, i64 2)
  %t659 = getelementptr [1 x i8], [1 x i8]* @.str182, i32 0, i32 0
  %t660 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str182.c, i8* %t659, i64 0)
  %t661 = ptrtoint %nyx_string* %t660 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t634, i64 %t661, i64 2)
  %t662 = getelementptr [36 x i8], [36 x i8]* @.str183, i32 0, i32 0
  %t663 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str183.c, i8* %t662, i64 35)
  %t664 = ptrtoint %nyx_string* %t663 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t634, i64 %t664, i64 2)
  %t665 = getelementptr [176 x i8], [176 x i8]* @.str184, i32 0, i32 0
  %t666 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str184.c, i8* %t665, i64 175)
  %t667 = ptrtoint %nyx_string* %t666 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t634, i64 %t667, i64 2)
  %t668 = getelementptr [197 x i8], [197 x i8]* @.str185, i32 0, i32 0
  %t669 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str185.c, i8* %t668, i64 196)
  %t670 = ptrtoint %nyx_string* %t669 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t634, i64 %t670, i64 2)
  %t671 = ptrtoint { i64, i8* }* %t634 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t633, i64 %t671, i64 5)
  %t672 = load { i64, i8* }*, { i64, i8* }** %t86
  %t673 = call { i64, i8* }* @nyx_array_new_ptr()
  %t674 = getelementptr [18 x i8], [18 x i8]* @.str186, i32 0, i32 0
  %t675 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str186.c, i8* %t674, i64 17)
  %t676 = ptrtoint %nyx_string* %t675 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t673, i64 %t676, i64 2)
  %t677 = getelementptr [5 x i8], [5 x i8]* @.str187, i32 0, i32 0
  %t678 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str187.c, i8* %t677, i64 4)
  %t679 = ptrtoint %nyx_string* %t678 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t673, i64 %t679, i64 2)
  %t680 = getelementptr [13 x i8], [13 x i8]* @.str188, i32 0, i32 0
  %t681 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str188.c, i8* %t680, i64 12)
  %t682 = ptrtoint %nyx_string* %t681 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t673, i64 %t682, i64 2)
  %t683 = getelementptr [7 x i8], [7 x i8]* @.str189, i32 0, i32 0
  %t684 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str189.c, i8* %t683, i64 6)
  %t685 = ptrtoint %nyx_string* %t684 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t673, i64 %t685, i64 2)
  %t686 = getelementptr [1 x i8], [1 x i8]* @.str190, i32 0, i32 0
  %t687 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str190.c, i8* %t686, i64 0)
  %t688 = ptrtoint %nyx_string* %t687 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t673, i64 %t688, i64 2)
  %t689 = getelementptr [38 x i8], [38 x i8]* @.str191, i32 0, i32 0
  %t690 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str191.c, i8* %t689, i64 37)
  %t691 = ptrtoint %nyx_string* %t690 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t673, i64 %t691, i64 2)
  %t692 = getelementptr [5 x i8], [5 x i8]* @.str192, i32 0, i32 0
  %t693 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str192.c, i8* %t692, i64 4)
  %t694 = ptrtoint %nyx_string* %t693 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t673, i64 %t694, i64 2)
  %t695 = getelementptr [11 x i8], [11 x i8]* @.str193, i32 0, i32 0
  %t696 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str193.c, i8* %t695, i64 10)
  %t697 = ptrtoint %nyx_string* %t696 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t673, i64 %t697, i64 2)
  %t698 = getelementptr [1 x i8], [1 x i8]* @.str194, i32 0, i32 0
  %t699 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str194.c, i8* %t698, i64 0)
  %t700 = ptrtoint %nyx_string* %t699 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t673, i64 %t700, i64 2)
  %t701 = getelementptr [39 x i8], [39 x i8]* @.str195, i32 0, i32 0
  %t702 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str195.c, i8* %t701, i64 38)
  %t703 = ptrtoint %nyx_string* %t702 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t673, i64 %t703, i64 2)
  %t704 = getelementptr [151 x i8], [151 x i8]* @.str196, i32 0, i32 0
  %t705 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str196.c, i8* %t704, i64 150)
  %t706 = ptrtoint %nyx_string* %t705 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t673, i64 %t706, i64 2)
  %t707 = getelementptr [170 x i8], [170 x i8]* @.str197, i32 0, i32 0
  %t708 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str197.c, i8* %t707, i64 169)
  %t709 = ptrtoint %nyx_string* %t708 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t673, i64 %t709, i64 2)
  %t710 = ptrtoint { i64, i8* }* %t673 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t672, i64 %t710, i64 5)
  %t711 = load { i64, i8* }*, { i64, i8* }** %t86
  %t712 = call { i64, i8* }* @nyx_array_new_ptr()
  %t713 = getelementptr [22 x i8], [22 x i8]* @.str198, i32 0, i32 0
  %t714 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str198.c, i8* %t713, i64 21)
  %t715 = ptrtoint %nyx_string* %t714 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t712, i64 %t715, i64 2)
  %t716 = getelementptr [5 x i8], [5 x i8]* @.str199, i32 0, i32 0
  %t717 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str199.c, i8* %t716, i64 4)
  %t718 = ptrtoint %nyx_string* %t717 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t712, i64 %t718, i64 2)
  %t719 = getelementptr [5 x i8], [5 x i8]* @.str200, i32 0, i32 0
  %t720 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str200.c, i8* %t719, i64 4)
  %t721 = ptrtoint %nyx_string* %t720 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t712, i64 %t721, i64 2)
  %t722 = getelementptr [7 x i8], [7 x i8]* @.str201, i32 0, i32 0
  %t723 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str201.c, i8* %t722, i64 6)
  %t724 = ptrtoint %nyx_string* %t723 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t712, i64 %t724, i64 2)
  %t725 = getelementptr [1 x i8], [1 x i8]* @.str202, i32 0, i32 0
  %t726 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str202.c, i8* %t725, i64 0)
  %t727 = ptrtoint %nyx_string* %t726 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t712, i64 %t727, i64 2)
  %t728 = getelementptr [1 x i8], [1 x i8]* @.str203, i32 0, i32 0
  %t729 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str203.c, i8* %t728, i64 0)
  %t730 = ptrtoint %nyx_string* %t729 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t712, i64 %t730, i64 2)
  %t731 = getelementptr [1 x i8], [1 x i8]* @.str204, i32 0, i32 0
  %t732 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str204.c, i8* %t731, i64 0)
  %t733 = ptrtoint %nyx_string* %t732 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t712, i64 %t733, i64 2)
  %t734 = getelementptr [8 x i8], [8 x i8]* @.str205, i32 0, i32 0
  %t735 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str205.c, i8* %t734, i64 7)
  %t736 = ptrtoint %nyx_string* %t735 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t712, i64 %t736, i64 2)
  %t737 = getelementptr [1 x i8], [1 x i8]* @.str206, i32 0, i32 0
  %t738 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str206.c, i8* %t737, i64 0)
  %t739 = ptrtoint %nyx_string* %t738 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t712, i64 %t739, i64 2)
  %t740 = getelementptr [40 x i8], [40 x i8]* @.str207, i32 0, i32 0
  %t741 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str207.c, i8* %t740, i64 39)
  %t742 = ptrtoint %nyx_string* %t741 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t712, i64 %t742, i64 2)
  %t743 = getelementptr [63 x i8], [63 x i8]* @.str208, i32 0, i32 0
  %t744 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str208.c, i8* %t743, i64 62)
  %t745 = ptrtoint %nyx_string* %t744 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t712, i64 %t745, i64 2)
  %t746 = getelementptr [61 x i8], [61 x i8]* @.str209, i32 0, i32 0
  %t747 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str209.c, i8* %t746, i64 60)
  %t748 = ptrtoint %nyx_string* %t747 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t712, i64 %t748, i64 2)
  %t749 = ptrtoint { i64, i8* }* %t712 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t711, i64 %t749, i64 5)
  %t750 = load { i64, i8* }*, { i64, i8* }** %t86
  %t751 = call { i64, i8* }* @nyx_array_new_ptr()
  %t752 = getelementptr [17 x i8], [17 x i8]* @.str210, i32 0, i32 0
  %t753 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str210.c, i8* %t752, i64 16)
  %t754 = ptrtoint %nyx_string* %t753 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t751, i64 %t754, i64 2)
  %t755 = getelementptr [5 x i8], [5 x i8]* @.str211, i32 0, i32 0
  %t756 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str211.c, i8* %t755, i64 4)
  %t757 = ptrtoint %nyx_string* %t756 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t751, i64 %t757, i64 2)
  %t758 = getelementptr [5 x i8], [5 x i8]* @.str212, i32 0, i32 0
  %t759 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str212.c, i8* %t758, i64 4)
  %t760 = ptrtoint %nyx_string* %t759 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t751, i64 %t760, i64 2)
  %t761 = getelementptr [7 x i8], [7 x i8]* @.str213, i32 0, i32 0
  %t762 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str213.c, i8* %t761, i64 6)
  %t763 = ptrtoint %nyx_string* %t762 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t751, i64 %t763, i64 2)
  %t764 = getelementptr [1 x i8], [1 x i8]* @.str214, i32 0, i32 0
  %t765 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str214.c, i8* %t764, i64 0)
  %t766 = ptrtoint %nyx_string* %t765 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t751, i64 %t766, i64 2)
  %t767 = getelementptr [1 x i8], [1 x i8]* @.str215, i32 0, i32 0
  %t768 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str215.c, i8* %t767, i64 0)
  %t769 = ptrtoint %nyx_string* %t768 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t751, i64 %t769, i64 2)
  %t770 = getelementptr [1 x i8], [1 x i8]* @.str216, i32 0, i32 0
  %t771 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str216.c, i8* %t770, i64 0)
  %t772 = ptrtoint %nyx_string* %t771 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t751, i64 %t772, i64 2)
  %t773 = getelementptr [7 x i8], [7 x i8]* @.str217, i32 0, i32 0
  %t774 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str217.c, i8* %t773, i64 6)
  %t775 = ptrtoint %nyx_string* %t774 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t751, i64 %t775, i64 2)
  %t776 = getelementptr [1 x i8], [1 x i8]* @.str218, i32 0, i32 0
  %t777 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str218.c, i8* %t776, i64 0)
  %t778 = ptrtoint %nyx_string* %t777 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t751, i64 %t778, i64 2)
  %t779 = getelementptr [40 x i8], [40 x i8]* @.str219, i32 0, i32 0
  %t780 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str219.c, i8* %t779, i64 39)
  %t781 = ptrtoint %nyx_string* %t780 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t751, i64 %t781, i64 2)
  %t782 = getelementptr [64 x i8], [64 x i8]* @.str220, i32 0, i32 0
  %t783 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str220.c, i8* %t782, i64 63)
  %t784 = ptrtoint %nyx_string* %t783 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t751, i64 %t784, i64 2)
  %t785 = getelementptr [66 x i8], [66 x i8]* @.str221, i32 0, i32 0
  %t786 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str221.c, i8* %t785, i64 65)
  %t787 = ptrtoint %nyx_string* %t786 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t751, i64 %t787, i64 2)
  %t788 = ptrtoint { i64, i8* }* %t751 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t750, i64 %t788, i64 5)
  %t789 = load { i64, i8* }*, { i64, i8* }** %t86
  %t790 = call { i64, i8* }* @nyx_array_new_ptr()
  %t791 = getelementptr [19 x i8], [19 x i8]* @.str222, i32 0, i32 0
  %t792 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str222.c, i8* %t791, i64 18)
  %t793 = ptrtoint %nyx_string* %t792 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t790, i64 %t793, i64 2)
  %t794 = getelementptr [5 x i8], [5 x i8]* @.str223, i32 0, i32 0
  %t795 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str223.c, i8* %t794, i64 4)
  %t796 = ptrtoint %nyx_string* %t795 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t790, i64 %t796, i64 2)
  %t797 = getelementptr [5 x i8], [5 x i8]* @.str224, i32 0, i32 0
  %t798 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str224.c, i8* %t797, i64 4)
  %t799 = ptrtoint %nyx_string* %t798 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t790, i64 %t799, i64 2)
  %t800 = getelementptr [7 x i8], [7 x i8]* @.str225, i32 0, i32 0
  %t801 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str225.c, i8* %t800, i64 6)
  %t802 = ptrtoint %nyx_string* %t801 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t790, i64 %t802, i64 2)
  %t803 = getelementptr [1 x i8], [1 x i8]* @.str226, i32 0, i32 0
  %t804 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str226.c, i8* %t803, i64 0)
  %t805 = ptrtoint %nyx_string* %t804 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t790, i64 %t805, i64 2)
  %t806 = getelementptr [1 x i8], [1 x i8]* @.str227, i32 0, i32 0
  %t807 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str227.c, i8* %t806, i64 0)
  %t808 = ptrtoint %nyx_string* %t807 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t790, i64 %t808, i64 2)
  %t809 = getelementptr [1 x i8], [1 x i8]* @.str228, i32 0, i32 0
  %t810 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str228.c, i8* %t809, i64 0)
  %t811 = ptrtoint %nyx_string* %t810 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t790, i64 %t811, i64 2)
  %t812 = getelementptr [17 x i8], [17 x i8]* @.str229, i32 0, i32 0
  %t813 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str229.c, i8* %t812, i64 16)
  %t814 = ptrtoint %nyx_string* %t813 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t790, i64 %t814, i64 2)
  %t815 = getelementptr [1 x i8], [1 x i8]* @.str230, i32 0, i32 0
  %t816 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str230.c, i8* %t815, i64 0)
  %t817 = ptrtoint %nyx_string* %t816 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t790, i64 %t817, i64 2)
  %t818 = getelementptr [49 x i8], [49 x i8]* @.str231, i32 0, i32 0
  %t819 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str231.c, i8* %t818, i64 48)
  %t820 = ptrtoint %nyx_string* %t819 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t790, i64 %t820, i64 2)
  %t821 = getelementptr [119 x i8], [119 x i8]* @.str232, i32 0, i32 0
  %t822 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str232.c, i8* %t821, i64 118)
  %t823 = ptrtoint %nyx_string* %t822 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t790, i64 %t823, i64 2)
  %t824 = getelementptr [117 x i8], [117 x i8]* @.str233, i32 0, i32 0
  %t825 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str233.c, i8* %t824, i64 116)
  %t826 = ptrtoint %nyx_string* %t825 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t790, i64 %t826, i64 2)
  %t827 = ptrtoint { i64, i8* }* %t790 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t789, i64 %t827, i64 5)
  %t828 = load { i64, i8* }*, { i64, i8* }** %t86
  %t829 = call { i64, i8* }* @nyx_array_new_ptr()
  %t830 = getelementptr [27 x i8], [27 x i8]* @.str234, i32 0, i32 0
  %t831 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str234.c, i8* %t830, i64 26)
  %t832 = ptrtoint %nyx_string* %t831 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t829, i64 %t832, i64 2)
  %t833 = getelementptr [5 x i8], [5 x i8]* @.str235, i32 0, i32 0
  %t834 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str235.c, i8* %t833, i64 4)
  %t835 = ptrtoint %nyx_string* %t834 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t829, i64 %t835, i64 2)
  %t836 = getelementptr [13 x i8], [13 x i8]* @.str236, i32 0, i32 0
  %t837 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str236.c, i8* %t836, i64 12)
  %t838 = ptrtoint %nyx_string* %t837 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t829, i64 %t838, i64 2)
  %t839 = getelementptr [7 x i8], [7 x i8]* @.str237, i32 0, i32 0
  %t840 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str237.c, i8* %t839, i64 6)
  %t841 = ptrtoint %nyx_string* %t840 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t829, i64 %t841, i64 2)
  %t842 = getelementptr [7 x i8], [7 x i8]* @.str238, i32 0, i32 0
  %t843 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str238.c, i8* %t842, i64 6)
  %t844 = ptrtoint %nyx_string* %t843 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t829, i64 %t844, i64 2)
  %t845 = getelementptr [1 x i8], [1 x i8]* @.str239, i32 0, i32 0
  %t846 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str239.c, i8* %t845, i64 0)
  %t847 = ptrtoint %nyx_string* %t846 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t829, i64 %t847, i64 2)
  %t848 = getelementptr [1 x i8], [1 x i8]* @.str240, i32 0, i32 0
  %t849 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str240.c, i8* %t848, i64 0)
  %t850 = ptrtoint %nyx_string* %t849 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t829, i64 %t850, i64 2)
  %t851 = getelementptr [11 x i8], [11 x i8]* @.str241, i32 0, i32 0
  %t852 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str241.c, i8* %t851, i64 10)
  %t853 = ptrtoint %nyx_string* %t852 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t829, i64 %t853, i64 2)
  %t854 = getelementptr [1 x i8], [1 x i8]* @.str242, i32 0, i32 0
  %t855 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str242.c, i8* %t854, i64 0)
  %t856 = ptrtoint %nyx_string* %t855 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t829, i64 %t856, i64 2)
  %t857 = getelementptr [83 x i8], [83 x i8]* @.str243, i32 0, i32 0
  %t858 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str243.c, i8* %t857, i64 82)
  %t859 = ptrtoint %nyx_string* %t858 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t829, i64 %t859, i64 2)
  %t860 = getelementptr [168 x i8], [168 x i8]* @.str244, i32 0, i32 0
  %t861 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str244.c, i8* %t860, i64 167)
  %t862 = ptrtoint %nyx_string* %t861 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t829, i64 %t862, i64 2)
  %t863 = getelementptr [180 x i8], [180 x i8]* @.str245, i32 0, i32 0
  %t864 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str245.c, i8* %t863, i64 179)
  %t865 = ptrtoint %nyx_string* %t864 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t829, i64 %t865, i64 2)
  %t866 = ptrtoint { i64, i8* }* %t829 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t828, i64 %t866, i64 5)
  %t867 = load { i64, i8* }*, { i64, i8* }** %t86
  %t868 = call { i64, i8* }* @nyx_array_new_ptr()
  %t869 = getelementptr [27 x i8], [27 x i8]* @.str246, i32 0, i32 0
  %t870 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str246.c, i8* %t869, i64 26)
  %t871 = ptrtoint %nyx_string* %t870 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t868, i64 %t871, i64 2)
  %t872 = getelementptr [5 x i8], [5 x i8]* @.str247, i32 0, i32 0
  %t873 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str247.c, i8* %t872, i64 4)
  %t874 = ptrtoint %nyx_string* %t873 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t868, i64 %t874, i64 2)
  %t875 = getelementptr [6 x i8], [6 x i8]* @.str248, i32 0, i32 0
  %t876 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str248.c, i8* %t875, i64 5)
  %t877 = ptrtoint %nyx_string* %t876 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t868, i64 %t877, i64 2)
  %t878 = getelementptr [7 x i8], [7 x i8]* @.str249, i32 0, i32 0
  %t879 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str249.c, i8* %t878, i64 6)
  %t880 = ptrtoint %nyx_string* %t879 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t868, i64 %t880, i64 2)
  %t881 = getelementptr [1 x i8], [1 x i8]* @.str250, i32 0, i32 0
  %t882 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str250.c, i8* %t881, i64 0)
  %t883 = ptrtoint %nyx_string* %t882 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t868, i64 %t883, i64 2)
  %t884 = getelementptr [1 x i8], [1 x i8]* @.str251, i32 0, i32 0
  %t885 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str251.c, i8* %t884, i64 0)
  %t886 = ptrtoint %nyx_string* %t885 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t868, i64 %t886, i64 2)
  %t887 = getelementptr [1 x i8], [1 x i8]* @.str252, i32 0, i32 0
  %t888 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str252.c, i8* %t887, i64 0)
  %t889 = ptrtoint %nyx_string* %t888 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t868, i64 %t889, i64 2)
  %t890 = getelementptr [10 x i8], [10 x i8]* @.str253, i32 0, i32 0
  %t891 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str253.c, i8* %t890, i64 9)
  %t892 = ptrtoint %nyx_string* %t891 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t868, i64 %t892, i64 2)
  %t893 = getelementptr [1 x i8], [1 x i8]* @.str254, i32 0, i32 0
  %t894 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str254.c, i8* %t893, i64 0)
  %t895 = ptrtoint %nyx_string* %t894 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t868, i64 %t895, i64 2)
  %t896 = getelementptr [52 x i8], [52 x i8]* @.str255, i32 0, i32 0
  %t897 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str255.c, i8* %t896, i64 51)
  %t898 = ptrtoint %nyx_string* %t897 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t868, i64 %t898, i64 2)
  %t899 = getelementptr [80 x i8], [80 x i8]* @.str256, i32 0, i32 0
  %t900 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str256.c, i8* %t899, i64 79)
  %t901 = ptrtoint %nyx_string* %t900 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t868, i64 %t901, i64 2)
  %t902 = getelementptr [88 x i8], [88 x i8]* @.str257, i32 0, i32 0
  %t903 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str257.c, i8* %t902, i64 87)
  %t904 = ptrtoint %nyx_string* %t903 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t868, i64 %t904, i64 2)
  %t905 = ptrtoint { i64, i8* }* %t868 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t867, i64 %t905, i64 5)
  %t906 = load { i64, i8* }*, { i64, i8* }** %t86
  %t907 = call { i64, i8* }* @nyx_array_new_ptr()
  %t908 = getelementptr [30 x i8], [30 x i8]* @.str258, i32 0, i32 0
  %t909 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str258.c, i8* %t908, i64 29)
  %t910 = ptrtoint %nyx_string* %t909 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t907, i64 %t910, i64 2)
  %t911 = getelementptr [5 x i8], [5 x i8]* @.str259, i32 0, i32 0
  %t912 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str259.c, i8* %t911, i64 4)
  %t913 = ptrtoint %nyx_string* %t912 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t907, i64 %t913, i64 2)
  %t914 = getelementptr [5 x i8], [5 x i8]* @.str260, i32 0, i32 0
  %t915 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str260.c, i8* %t914, i64 4)
  %t916 = ptrtoint %nyx_string* %t915 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t907, i64 %t916, i64 2)
  %t917 = getelementptr [7 x i8], [7 x i8]* @.str261, i32 0, i32 0
  %t918 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str261.c, i8* %t917, i64 6)
  %t919 = ptrtoint %nyx_string* %t918 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t907, i64 %t919, i64 2)
  %t920 = getelementptr [1 x i8], [1 x i8]* @.str262, i32 0, i32 0
  %t921 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str262.c, i8* %t920, i64 0)
  %t922 = ptrtoint %nyx_string* %t921 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t907, i64 %t922, i64 2)
  %t923 = getelementptr [1 x i8], [1 x i8]* @.str263, i32 0, i32 0
  %t924 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str263.c, i8* %t923, i64 0)
  %t925 = ptrtoint %nyx_string* %t924 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t907, i64 %t925, i64 2)
  %t926 = getelementptr [1 x i8], [1 x i8]* @.str264, i32 0, i32 0
  %t927 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str264.c, i8* %t926, i64 0)
  %t928 = ptrtoint %nyx_string* %t927 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t907, i64 %t928, i64 2)
  %t929 = getelementptr [8 x i8], [8 x i8]* @.str265, i32 0, i32 0
  %t930 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str265.c, i8* %t929, i64 7)
  %t931 = ptrtoint %nyx_string* %t930 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t907, i64 %t931, i64 2)
  %t932 = getelementptr [1 x i8], [1 x i8]* @.str266, i32 0, i32 0
  %t933 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str266.c, i8* %t932, i64 0)
  %t934 = ptrtoint %nyx_string* %t933 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t907, i64 %t934, i64 2)
  %t935 = getelementptr [145 x i8], [145 x i8]* @.str267, i32 0, i32 0
  %t936 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str267.c, i8* %t935, i64 144)
  %t937 = ptrtoint %nyx_string* %t936 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t907, i64 %t937, i64 2)
  %t938 = getelementptr [141 x i8], [141 x i8]* @.str268, i32 0, i32 0
  %t939 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str268.c, i8* %t938, i64 140)
  %t940 = ptrtoint %nyx_string* %t939 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t907, i64 %t940, i64 2)
  %t941 = getelementptr [135 x i8], [135 x i8]* @.str269, i32 0, i32 0
  %t942 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str269.c, i8* %t941, i64 134)
  %t943 = ptrtoint %nyx_string* %t942 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t907, i64 %t943, i64 2)
  %t944 = ptrtoint { i64, i8* }* %t907 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t906, i64 %t944, i64 5)
  %t945 = load { i64, i8* }*, { i64, i8* }** %t86
  %t946 = call { i64, i8* }* @nyx_array_new_ptr()
  %t947 = getelementptr [17 x i8], [17 x i8]* @.str270, i32 0, i32 0
  %t948 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str270.c, i8* %t947, i64 16)
  %t949 = ptrtoint %nyx_string* %t948 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t946, i64 %t949, i64 2)
  %t950 = getelementptr [5 x i8], [5 x i8]* @.str271, i32 0, i32 0
  %t951 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str271.c, i8* %t950, i64 4)
  %t952 = ptrtoint %nyx_string* %t951 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t946, i64 %t952, i64 2)
  %t953 = getelementptr [13 x i8], [13 x i8]* @.str272, i32 0, i32 0
  %t954 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str272.c, i8* %t953, i64 12)
  %t955 = ptrtoint %nyx_string* %t954 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t946, i64 %t955, i64 2)
  %t956 = getelementptr [7 x i8], [7 x i8]* @.str273, i32 0, i32 0
  %t957 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str273.c, i8* %t956, i64 6)
  %t958 = ptrtoint %nyx_string* %t957 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t946, i64 %t958, i64 2)
  %t959 = getelementptr [1 x i8], [1 x i8]* @.str274, i32 0, i32 0
  %t960 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str274.c, i8* %t959, i64 0)
  %t961 = ptrtoint %nyx_string* %t960 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t946, i64 %t961, i64 2)
  %t962 = getelementptr [1 x i8], [1 x i8]* @.str275, i32 0, i32 0
  %t963 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str275.c, i8* %t962, i64 0)
  %t964 = ptrtoint %nyx_string* %t963 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t946, i64 %t964, i64 2)
  %t965 = getelementptr [1 x i8], [1 x i8]* @.str276, i32 0, i32 0
  %t966 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str276.c, i8* %t965, i64 0)
  %t967 = ptrtoint %nyx_string* %t966 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t946, i64 %t967, i64 2)
  %t968 = getelementptr [11 x i8], [11 x i8]* @.str277, i32 0, i32 0
  %t969 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str277.c, i8* %t968, i64 10)
  %t970 = ptrtoint %nyx_string* %t969 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t946, i64 %t970, i64 2)
  %t971 = getelementptr [1 x i8], [1 x i8]* @.str278, i32 0, i32 0
  %t972 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str278.c, i8* %t971, i64 0)
  %t973 = ptrtoint %nyx_string* %t972 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t946, i64 %t973, i64 2)
  %t974 = getelementptr [27 x i8], [27 x i8]* @.str279, i32 0, i32 0
  %t975 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str279.c, i8* %t974, i64 26)
  %t976 = ptrtoint %nyx_string* %t975 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t946, i64 %t976, i64 2)
  %t977 = getelementptr [86 x i8], [86 x i8]* @.str280, i32 0, i32 0
  %t978 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str280.c, i8* %t977, i64 85)
  %t979 = ptrtoint %nyx_string* %t978 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t946, i64 %t979, i64 2)
  %t980 = getelementptr [94 x i8], [94 x i8]* @.str281, i32 0, i32 0
  %t981 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str281.c, i8* %t980, i64 93)
  %t982 = ptrtoint %nyx_string* %t981 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t946, i64 %t982, i64 2)
  %t983 = ptrtoint { i64, i8* }* %t946 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t945, i64 %t983, i64 5)
  %t984 = load { i64, i8* }*, { i64, i8* }** %t86
  %t985 = call { i64, i8* }* @nyx_array_new_ptr()
  %t986 = getelementptr [29 x i8], [29 x i8]* @.str282, i32 0, i32 0
  %t987 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str282.c, i8* %t986, i64 28)
  %t988 = ptrtoint %nyx_string* %t987 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t985, i64 %t988, i64 2)
  %t989 = getelementptr [5 x i8], [5 x i8]* @.str283, i32 0, i32 0
  %t990 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str283.c, i8* %t989, i64 4)
  %t991 = ptrtoint %nyx_string* %t990 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t985, i64 %t991, i64 2)
  %t992 = getelementptr [13 x i8], [13 x i8]* @.str284, i32 0, i32 0
  %t993 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str284.c, i8* %t992, i64 12)
  %t994 = ptrtoint %nyx_string* %t993 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t985, i64 %t994, i64 2)
  %t995 = getelementptr [7 x i8], [7 x i8]* @.str285, i32 0, i32 0
  %t996 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str285.c, i8* %t995, i64 6)
  %t997 = ptrtoint %nyx_string* %t996 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t985, i64 %t997, i64 2)
  %t998 = getelementptr [1 x i8], [1 x i8]* @.str286, i32 0, i32 0
  %t999 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str286.c, i8* %t998, i64 0)
  %t1000 = ptrtoint %nyx_string* %t999 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t985, i64 %t1000, i64 2)
  %t1001 = getelementptr [1 x i8], [1 x i8]* @.str287, i32 0, i32 0
  %t1002 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str287.c, i8* %t1001, i64 0)
  %t1003 = ptrtoint %nyx_string* %t1002 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t985, i64 %t1003, i64 2)
  %t1004 = getelementptr [1 x i8], [1 x i8]* @.str288, i32 0, i32 0
  %t1005 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str288.c, i8* %t1004, i64 0)
  %t1006 = ptrtoint %nyx_string* %t1005 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t985, i64 %t1006, i64 2)
  %t1007 = getelementptr [16 x i8], [16 x i8]* @.str289, i32 0, i32 0
  %t1008 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str289.c, i8* %t1007, i64 15)
  %t1009 = ptrtoint %nyx_string* %t1008 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t985, i64 %t1009, i64 2)
  %t1010 = getelementptr [1 x i8], [1 x i8]* @.str290, i32 0, i32 0
  %t1011 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str290.c, i8* %t1010, i64 0)
  %t1012 = ptrtoint %nyx_string* %t1011 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t985, i64 %t1012, i64 2)
  %t1013 = getelementptr [43 x i8], [43 x i8]* @.str291, i32 0, i32 0
  %t1014 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str291.c, i8* %t1013, i64 42)
  %t1015 = ptrtoint %nyx_string* %t1014 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t985, i64 %t1015, i64 2)
  %t1016 = getelementptr [137 x i8], [137 x i8]* @.str292, i32 0, i32 0
  %t1017 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str292.c, i8* %t1016, i64 136)
  %t1018 = ptrtoint %nyx_string* %t1017 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t985, i64 %t1018, i64 2)
  %t1019 = getelementptr [141 x i8], [141 x i8]* @.str293, i32 0, i32 0
  %t1020 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str293.c, i8* %t1019, i64 140)
  %t1021 = ptrtoint %nyx_string* %t1020 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t985, i64 %t1021, i64 2)
  %t1022 = ptrtoint { i64, i8* }* %t985 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t984, i64 %t1022, i64 5)
  %t1023 = load { i64, i8* }*, { i64, i8* }** %t86
  %t1024 = call { i64, i8* }* @nyx_array_new_ptr()
  %t1025 = getelementptr [25 x i8], [25 x i8]* @.str294, i32 0, i32 0
  %t1026 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str294.c, i8* %t1025, i64 24)
  %t1027 = ptrtoint %nyx_string* %t1026 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1024, i64 %t1027, i64 2)
  %t1028 = getelementptr [5 x i8], [5 x i8]* @.str295, i32 0, i32 0
  %t1029 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str295.c, i8* %t1028, i64 4)
  %t1030 = ptrtoint %nyx_string* %t1029 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1024, i64 %t1030, i64 2)
  %t1031 = getelementptr [5 x i8], [5 x i8]* @.str296, i32 0, i32 0
  %t1032 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str296.c, i8* %t1031, i64 4)
  %t1033 = ptrtoint %nyx_string* %t1032 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1024, i64 %t1033, i64 2)
  %t1034 = getelementptr [7 x i8], [7 x i8]* @.str297, i32 0, i32 0
  %t1035 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str297.c, i8* %t1034, i64 6)
  %t1036 = ptrtoint %nyx_string* %t1035 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1024, i64 %t1036, i64 2)
  %t1037 = getelementptr [1 x i8], [1 x i8]* @.str298, i32 0, i32 0
  %t1038 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str298.c, i8* %t1037, i64 0)
  %t1039 = ptrtoint %nyx_string* %t1038 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1024, i64 %t1039, i64 2)
  %t1040 = getelementptr [1 x i8], [1 x i8]* @.str299, i32 0, i32 0
  %t1041 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str299.c, i8* %t1040, i64 0)
  %t1042 = ptrtoint %nyx_string* %t1041 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1024, i64 %t1042, i64 2)
  %t1043 = getelementptr [1 x i8], [1 x i8]* @.str300, i32 0, i32 0
  %t1044 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str300.c, i8* %t1043, i64 0)
  %t1045 = ptrtoint %nyx_string* %t1044 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1024, i64 %t1045, i64 2)
  %t1046 = getelementptr [8 x i8], [8 x i8]* @.str301, i32 0, i32 0
  %t1047 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str301.c, i8* %t1046, i64 7)
  %t1048 = ptrtoint %nyx_string* %t1047 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1024, i64 %t1048, i64 2)
  %t1049 = getelementptr [1 x i8], [1 x i8]* @.str302, i32 0, i32 0
  %t1050 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str302.c, i8* %t1049, i64 0)
  %t1051 = ptrtoint %nyx_string* %t1050 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1024, i64 %t1051, i64 2)
  %t1052 = getelementptr [62 x i8], [62 x i8]* @.str303, i32 0, i32 0
  %t1053 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str303.c, i8* %t1052, i64 61)
  %t1054 = ptrtoint %nyx_string* %t1053 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1024, i64 %t1054, i64 2)
  %t1055 = getelementptr [89 x i8], [89 x i8]* @.str304, i32 0, i32 0
  %t1056 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str304.c, i8* %t1055, i64 88)
  %t1057 = ptrtoint %nyx_string* %t1056 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1024, i64 %t1057, i64 2)
  %t1058 = getelementptr [90 x i8], [90 x i8]* @.str305, i32 0, i32 0
  %t1059 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str305.c, i8* %t1058, i64 89)
  %t1060 = ptrtoint %nyx_string* %t1059 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1024, i64 %t1060, i64 2)
  %t1061 = ptrtoint { i64, i8* }* %t1024 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1023, i64 %t1061, i64 5)
  %t1062 = load { i64, i8* }*, { i64, i8* }** %t86
  %t1063 = call { i64, i8* }* @nyx_array_new_ptr()
  %t1064 = getelementptr [24 x i8], [24 x i8]* @.str306, i32 0, i32 0
  %t1065 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str306.c, i8* %t1064, i64 23)
  %t1066 = ptrtoint %nyx_string* %t1065 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1063, i64 %t1066, i64 2)
  %t1067 = getelementptr [5 x i8], [5 x i8]* @.str307, i32 0, i32 0
  %t1068 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str307.c, i8* %t1067, i64 4)
  %t1069 = ptrtoint %nyx_string* %t1068 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1063, i64 %t1069, i64 2)
  %t1070 = getelementptr [13 x i8], [13 x i8]* @.str308, i32 0, i32 0
  %t1071 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str308.c, i8* %t1070, i64 12)
  %t1072 = ptrtoint %nyx_string* %t1071 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1063, i64 %t1072, i64 2)
  %t1073 = getelementptr [7 x i8], [7 x i8]* @.str309, i32 0, i32 0
  %t1074 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str309.c, i8* %t1073, i64 6)
  %t1075 = ptrtoint %nyx_string* %t1074 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1063, i64 %t1075, i64 2)
  %t1076 = getelementptr [1 x i8], [1 x i8]* @.str310, i32 0, i32 0
  %t1077 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str310.c, i8* %t1076, i64 0)
  %t1078 = ptrtoint %nyx_string* %t1077 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1063, i64 %t1078, i64 2)
  %t1079 = getelementptr [1 x i8], [1 x i8]* @.str311, i32 0, i32 0
  %t1080 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str311.c, i8* %t1079, i64 0)
  %t1081 = ptrtoint %nyx_string* %t1080 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1063, i64 %t1081, i64 2)
  %t1082 = getelementptr [1 x i8], [1 x i8]* @.str312, i32 0, i32 0
  %t1083 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str312.c, i8* %t1082, i64 0)
  %t1084 = ptrtoint %nyx_string* %t1083 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1063, i64 %t1084, i64 2)
  %t1085 = getelementptr [13 x i8], [13 x i8]* @.str313, i32 0, i32 0
  %t1086 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str313.c, i8* %t1085, i64 12)
  %t1087 = ptrtoint %nyx_string* %t1086 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1063, i64 %t1087, i64 2)
  %t1088 = getelementptr [1 x i8], [1 x i8]* @.str314, i32 0, i32 0
  %t1089 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str314.c, i8* %t1088, i64 0)
  %t1090 = ptrtoint %nyx_string* %t1089 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1063, i64 %t1090, i64 2)
  %t1091 = getelementptr [100 x i8], [100 x i8]* @.str315, i32 0, i32 0
  %t1092 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str315.c, i8* %t1091, i64 99)
  %t1093 = ptrtoint %nyx_string* %t1092 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1063, i64 %t1093, i64 2)
  %t1094 = getelementptr [169 x i8], [169 x i8]* @.str316, i32 0, i32 0
  %t1095 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str316.c, i8* %t1094, i64 168)
  %t1096 = ptrtoint %nyx_string* %t1095 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1063, i64 %t1096, i64 2)
  %t1097 = getelementptr [179 x i8], [179 x i8]* @.str317, i32 0, i32 0
  %t1098 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str317.c, i8* %t1097, i64 178)
  %t1099 = ptrtoint %nyx_string* %t1098 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1063, i64 %t1099, i64 2)
  %t1100 = ptrtoint { i64, i8* }* %t1063 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1062, i64 %t1100, i64 5)
  %t1101 = load { i64, i8* }*, { i64, i8* }** %t86
  %t1102 = call { i64, i8* }* @nyx_array_new_ptr()
  %t1103 = getelementptr [21 x i8], [21 x i8]* @.str318, i32 0, i32 0
  %t1104 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str318.c, i8* %t1103, i64 20)
  %t1105 = ptrtoint %nyx_string* %t1104 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1102, i64 %t1105, i64 2)
  %t1106 = getelementptr [5 x i8], [5 x i8]* @.str319, i32 0, i32 0
  %t1107 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str319.c, i8* %t1106, i64 4)
  %t1108 = ptrtoint %nyx_string* %t1107 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1102, i64 %t1108, i64 2)
  %t1109 = getelementptr [13 x i8], [13 x i8]* @.str320, i32 0, i32 0
  %t1110 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str320.c, i8* %t1109, i64 12)
  %t1111 = ptrtoint %nyx_string* %t1110 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1102, i64 %t1111, i64 2)
  %t1112 = getelementptr [7 x i8], [7 x i8]* @.str321, i32 0, i32 0
  %t1113 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str321.c, i8* %t1112, i64 6)
  %t1114 = ptrtoint %nyx_string* %t1113 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1102, i64 %t1114, i64 2)
  %t1115 = getelementptr [1 x i8], [1 x i8]* @.str322, i32 0, i32 0
  %t1116 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str322.c, i8* %t1115, i64 0)
  %t1117 = ptrtoint %nyx_string* %t1116 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1102, i64 %t1117, i64 2)
  %t1118 = getelementptr [1 x i8], [1 x i8]* @.str323, i32 0, i32 0
  %t1119 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str323.c, i8* %t1118, i64 0)
  %t1120 = ptrtoint %nyx_string* %t1119 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1102, i64 %t1120, i64 2)
  %t1121 = getelementptr [1 x i8], [1 x i8]* @.str324, i32 0, i32 0
  %t1122 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str324.c, i8* %t1121, i64 0)
  %t1123 = ptrtoint %nyx_string* %t1122 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1102, i64 %t1123, i64 2)
  %t1124 = getelementptr [15 x i8], [15 x i8]* @.str325, i32 0, i32 0
  %t1125 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str325.c, i8* %t1124, i64 14)
  %t1126 = ptrtoint %nyx_string* %t1125 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1102, i64 %t1126, i64 2)
  %t1127 = getelementptr [1 x i8], [1 x i8]* @.str326, i32 0, i32 0
  %t1128 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str326.c, i8* %t1127, i64 0)
  %t1129 = ptrtoint %nyx_string* %t1128 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1102, i64 %t1129, i64 2)
  %t1130 = getelementptr [58 x i8], [58 x i8]* @.str327, i32 0, i32 0
  %t1131 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str327.c, i8* %t1130, i64 57)
  %t1132 = ptrtoint %nyx_string* %t1131 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1102, i64 %t1132, i64 2)
  %t1133 = getelementptr [88 x i8], [88 x i8]* @.str328, i32 0, i32 0
  %t1134 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str328.c, i8* %t1133, i64 87)
  %t1135 = ptrtoint %nyx_string* %t1134 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1102, i64 %t1135, i64 2)
  %t1136 = getelementptr [96 x i8], [96 x i8]* @.str329, i32 0, i32 0
  %t1137 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str329.c, i8* %t1136, i64 95)
  %t1138 = ptrtoint %nyx_string* %t1137 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1102, i64 %t1138, i64 2)
  %t1139 = ptrtoint { i64, i8* }* %t1102 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1101, i64 %t1139, i64 5)
  %t1140 = load { i64, i8* }*, { i64, i8* }** %t86
  %t1141 = call { i64, i8* }* @nyx_array_new_ptr()
  %t1142 = getelementptr [25 x i8], [25 x i8]* @.str330, i32 0, i32 0
  %t1143 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str330.c, i8* %t1142, i64 24)
  %t1144 = ptrtoint %nyx_string* %t1143 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1141, i64 %t1144, i64 2)
  %t1145 = getelementptr [5 x i8], [5 x i8]* @.str331, i32 0, i32 0
  %t1146 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str331.c, i8* %t1145, i64 4)
  %t1147 = ptrtoint %nyx_string* %t1146 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1141, i64 %t1147, i64 2)
  %t1148 = getelementptr [5 x i8], [5 x i8]* @.str332, i32 0, i32 0
  %t1149 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str332.c, i8* %t1148, i64 4)
  %t1150 = ptrtoint %nyx_string* %t1149 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1141, i64 %t1150, i64 2)
  %t1151 = getelementptr [7 x i8], [7 x i8]* @.str333, i32 0, i32 0
  %t1152 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str333.c, i8* %t1151, i64 6)
  %t1153 = ptrtoint %nyx_string* %t1152 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1141, i64 %t1153, i64 2)
  %t1154 = getelementptr [1 x i8], [1 x i8]* @.str334, i32 0, i32 0
  %t1155 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str334.c, i8* %t1154, i64 0)
  %t1156 = ptrtoint %nyx_string* %t1155 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1141, i64 %t1156, i64 2)
  %t1157 = getelementptr [1 x i8], [1 x i8]* @.str335, i32 0, i32 0
  %t1158 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str335.c, i8* %t1157, i64 0)
  %t1159 = ptrtoint %nyx_string* %t1158 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1141, i64 %t1159, i64 2)
  %t1160 = getelementptr [1 x i8], [1 x i8]* @.str336, i32 0, i32 0
  %t1161 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str336.c, i8* %t1160, i64 0)
  %t1162 = ptrtoint %nyx_string* %t1161 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1141, i64 %t1162, i64 2)
  %t1163 = getelementptr [6 x i8], [6 x i8]* @.str337, i32 0, i32 0
  %t1164 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str337.c, i8* %t1163, i64 5)
  %t1165 = ptrtoint %nyx_string* %t1164 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1141, i64 %t1165, i64 2)
  %t1166 = getelementptr [1 x i8], [1 x i8]* @.str338, i32 0, i32 0
  %t1167 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str338.c, i8* %t1166, i64 0)
  %t1168 = ptrtoint %nyx_string* %t1167 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1141, i64 %t1168, i64 2)
  %t1169 = getelementptr [97 x i8], [97 x i8]* @.str339, i32 0, i32 0
  %t1170 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str339.c, i8* %t1169, i64 96)
  %t1171 = ptrtoint %nyx_string* %t1170 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1141, i64 %t1171, i64 2)
  %t1172 = getelementptr [74 x i8], [74 x i8]* @.str340, i32 0, i32 0
  %t1173 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str340.c, i8* %t1172, i64 73)
  %t1174 = ptrtoint %nyx_string* %t1173 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1141, i64 %t1174, i64 2)
  %t1175 = getelementptr [72 x i8], [72 x i8]* @.str341, i32 0, i32 0
  %t1176 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str341.c, i8* %t1175, i64 71)
  %t1177 = ptrtoint %nyx_string* %t1176 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1141, i64 %t1177, i64 2)
  %t1178 = ptrtoint { i64, i8* }* %t1141 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1140, i64 %t1178, i64 5)
  %t1179 = load { i64, i8* }*, { i64, i8* }** %t86
  %t1180 = call { i64, i8* }* @nyx_array_new_ptr()
  %t1181 = getelementptr [17 x i8], [17 x i8]* @.str342, i32 0, i32 0
  %t1182 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str342.c, i8* %t1181, i64 16)
  %t1183 = ptrtoint %nyx_string* %t1182 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1180, i64 %t1183, i64 2)
  %t1184 = getelementptr [5 x i8], [5 x i8]* @.str343, i32 0, i32 0
  %t1185 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str343.c, i8* %t1184, i64 4)
  %t1186 = ptrtoint %nyx_string* %t1185 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1180, i64 %t1186, i64 2)
  %t1187 = getelementptr [5 x i8], [5 x i8]* @.str344, i32 0, i32 0
  %t1188 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str344.c, i8* %t1187, i64 4)
  %t1189 = ptrtoint %nyx_string* %t1188 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1180, i64 %t1189, i64 2)
  %t1190 = getelementptr [7 x i8], [7 x i8]* @.str345, i32 0, i32 0
  %t1191 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str345.c, i8* %t1190, i64 6)
  %t1192 = ptrtoint %nyx_string* %t1191 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1180, i64 %t1192, i64 2)
  %t1193 = getelementptr [1 x i8], [1 x i8]* @.str346, i32 0, i32 0
  %t1194 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str346.c, i8* %t1193, i64 0)
  %t1195 = ptrtoint %nyx_string* %t1194 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1180, i64 %t1195, i64 2)
  %t1196 = getelementptr [10 x i8], [10 x i8]* @.str347, i32 0, i32 0
  %t1197 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str347.c, i8* %t1196, i64 9)
  %t1198 = ptrtoint %nyx_string* %t1197 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1180, i64 %t1198, i64 2)
  %t1199 = getelementptr [5 x i8], [5 x i8]* @.str348, i32 0, i32 0
  %t1200 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str348.c, i8* %t1199, i64 4)
  %t1201 = ptrtoint %nyx_string* %t1200 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1180, i64 %t1201, i64 2)
  %t1202 = getelementptr [7 x i8], [7 x i8]* @.str349, i32 0, i32 0
  %t1203 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str349.c, i8* %t1202, i64 6)
  %t1204 = ptrtoint %nyx_string* %t1203 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1180, i64 %t1204, i64 2)
  %t1205 = getelementptr [1 x i8], [1 x i8]* @.str350, i32 0, i32 0
  %t1206 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str350.c, i8* %t1205, i64 0)
  %t1207 = ptrtoint %nyx_string* %t1206 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1180, i64 %t1207, i64 2)
  %t1208 = getelementptr [57 x i8], [57 x i8]* @.str351, i32 0, i32 0
  %t1209 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str351.c, i8* %t1208, i64 56)
  %t1210 = ptrtoint %nyx_string* %t1209 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1180, i64 %t1210, i64 2)
  %t1211 = getelementptr [89 x i8], [89 x i8]* @.str352, i32 0, i32 0
  %t1212 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str352.c, i8* %t1211, i64 88)
  %t1213 = ptrtoint %nyx_string* %t1212 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1180, i64 %t1213, i64 2)
  %t1214 = getelementptr [97 x i8], [97 x i8]* @.str353, i32 0, i32 0
  %t1215 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str353.c, i8* %t1214, i64 96)
  %t1216 = ptrtoint %nyx_string* %t1215 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1180, i64 %t1216, i64 2)
  %t1217 = ptrtoint { i64, i8* }* %t1180 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1179, i64 %t1217, i64 5)
  %t1218 = load { i64, i8* }*, { i64, i8* }** %t86
  %t1219 = call { i64, i8* }* @nyx_array_new_ptr()
  %t1220 = getelementptr [28 x i8], [28 x i8]* @.str354, i32 0, i32 0
  %t1221 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str354.c, i8* %t1220, i64 27)
  %t1222 = ptrtoint %nyx_string* %t1221 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1219, i64 %t1222, i64 2)
  %t1223 = getelementptr [5 x i8], [5 x i8]* @.str355, i32 0, i32 0
  %t1224 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str355.c, i8* %t1223, i64 4)
  %t1225 = ptrtoint %nyx_string* %t1224 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1219, i64 %t1225, i64 2)
  %t1226 = getelementptr [13 x i8], [13 x i8]* @.str356, i32 0, i32 0
  %t1227 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str356.c, i8* %t1226, i64 12)
  %t1228 = ptrtoint %nyx_string* %t1227 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1219, i64 %t1228, i64 2)
  %t1229 = getelementptr [7 x i8], [7 x i8]* @.str357, i32 0, i32 0
  %t1230 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str357.c, i8* %t1229, i64 6)
  %t1231 = ptrtoint %nyx_string* %t1230 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1219, i64 %t1231, i64 2)
  %t1232 = getelementptr [1 x i8], [1 x i8]* @.str358, i32 0, i32 0
  %t1233 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str358.c, i8* %t1232, i64 0)
  %t1234 = ptrtoint %nyx_string* %t1233 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1219, i64 %t1234, i64 2)
  %t1235 = getelementptr [36 x i8], [36 x i8]* @.str359, i32 0, i32 0
  %t1236 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str359.c, i8* %t1235, i64 35)
  %t1237 = ptrtoint %nyx_string* %t1236 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1219, i64 %t1237, i64 2)
  %t1238 = getelementptr [5 x i8], [5 x i8]* @.str360, i32 0, i32 0
  %t1239 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str360.c, i8* %t1238, i64 4)
  %t1240 = ptrtoint %nyx_string* %t1239 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1219, i64 %t1240, i64 2)
  %t1241 = getelementptr [13 x i8], [13 x i8]* @.str361, i32 0, i32 0
  %t1242 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str361.c, i8* %t1241, i64 12)
  %t1243 = ptrtoint %nyx_string* %t1242 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1219, i64 %t1243, i64 2)
  %t1244 = getelementptr [1 x i8], [1 x i8]* @.str362, i32 0, i32 0
  %t1245 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str362.c, i8* %t1244, i64 0)
  %t1246 = ptrtoint %nyx_string* %t1245 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1219, i64 %t1246, i64 2)
  %t1247 = getelementptr [48 x i8], [48 x i8]* @.str363, i32 0, i32 0
  %t1248 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str363.c, i8* %t1247, i64 47)
  %t1249 = ptrtoint %nyx_string* %t1248 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1219, i64 %t1249, i64 2)
  %t1250 = getelementptr [213 x i8], [213 x i8]* @.str364, i32 0, i32 0
  %t1251 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str364.c, i8* %t1250, i64 212)
  %t1252 = ptrtoint %nyx_string* %t1251 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1219, i64 %t1252, i64 2)
  %t1253 = getelementptr [229 x i8], [229 x i8]* @.str365, i32 0, i32 0
  %t1254 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str365.c, i8* %t1253, i64 228)
  %t1255 = ptrtoint %nyx_string* %t1254 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1219, i64 %t1255, i64 2)
  %t1256 = ptrtoint { i64, i8* }* %t1219 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1218, i64 %t1256, i64 5)
  %t1257 = load { i64, i8* }*, { i64, i8* }** %t86
  %t1258 = call { i64, i8* }* @nyx_array_new_ptr()
  %t1259 = getelementptr [21 x i8], [21 x i8]* @.str366, i32 0, i32 0
  %t1260 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str366.c, i8* %t1259, i64 20)
  %t1261 = ptrtoint %nyx_string* %t1260 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1258, i64 %t1261, i64 2)
  %t1262 = getelementptr [5 x i8], [5 x i8]* @.str367, i32 0, i32 0
  %t1263 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str367.c, i8* %t1262, i64 4)
  %t1264 = ptrtoint %nyx_string* %t1263 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1258, i64 %t1264, i64 2)
  %t1265 = getelementptr [5 x i8], [5 x i8]* @.str368, i32 0, i32 0
  %t1266 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str368.c, i8* %t1265, i64 4)
  %t1267 = ptrtoint %nyx_string* %t1266 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1258, i64 %t1267, i64 2)
  %t1268 = getelementptr [7 x i8], [7 x i8]* @.str369, i32 0, i32 0
  %t1269 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str369.c, i8* %t1268, i64 6)
  %t1270 = ptrtoint %nyx_string* %t1269 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1258, i64 %t1270, i64 2)
  %t1271 = getelementptr [1 x i8], [1 x i8]* @.str370, i32 0, i32 0
  %t1272 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str370.c, i8* %t1271, i64 0)
  %t1273 = ptrtoint %nyx_string* %t1272 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1258, i64 %t1273, i64 2)
  %t1274 = getelementptr [1 x i8], [1 x i8]* @.str371, i32 0, i32 0
  %t1275 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str371.c, i8* %t1274, i64 0)
  %t1276 = ptrtoint %nyx_string* %t1275 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1258, i64 %t1276, i64 2)
  %t1277 = getelementptr [1 x i8], [1 x i8]* @.str372, i32 0, i32 0
  %t1278 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str372.c, i8* %t1277, i64 0)
  %t1279 = ptrtoint %nyx_string* %t1278 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1258, i64 %t1279, i64 2)
  %t1280 = getelementptr [7 x i8], [7 x i8]* @.str373, i32 0, i32 0
  %t1281 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str373.c, i8* %t1280, i64 6)
  %t1282 = ptrtoint %nyx_string* %t1281 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1258, i64 %t1282, i64 2)
  %t1283 = getelementptr [1 x i8], [1 x i8]* @.str374, i32 0, i32 0
  %t1284 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str374.c, i8* %t1283, i64 0)
  %t1285 = ptrtoint %nyx_string* %t1284 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1258, i64 %t1285, i64 2)
  %t1286 = getelementptr [58 x i8], [58 x i8]* @.str375, i32 0, i32 0
  %t1287 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str375.c, i8* %t1286, i64 57)
  %t1288 = ptrtoint %nyx_string* %t1287 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1258, i64 %t1288, i64 2)
  %t1289 = getelementptr [99 x i8], [99 x i8]* @.str376, i32 0, i32 0
  %t1290 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str376.c, i8* %t1289, i64 98)
  %t1291 = ptrtoint %nyx_string* %t1290 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1258, i64 %t1291, i64 2)
  %t1292 = getelementptr [100 x i8], [100 x i8]* @.str377, i32 0, i32 0
  %t1293 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str377.c, i8* %t1292, i64 99)
  %t1294 = ptrtoint %nyx_string* %t1293 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1258, i64 %t1294, i64 2)
  %t1295 = ptrtoint { i64, i8* }* %t1258 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1257, i64 %t1295, i64 5)
  %t1296 = load { i64, i8* }*, { i64, i8* }** %t86
  %t1297 = call { i64, i8* }* @nyx_array_new_ptr()
  %t1298 = getelementptr [22 x i8], [22 x i8]* @.str378, i32 0, i32 0
  %t1299 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str378.c, i8* %t1298, i64 21)
  %t1300 = ptrtoint %nyx_string* %t1299 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1297, i64 %t1300, i64 2)
  %t1301 = getelementptr [5 x i8], [5 x i8]* @.str379, i32 0, i32 0
  %t1302 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str379.c, i8* %t1301, i64 4)
  %t1303 = ptrtoint %nyx_string* %t1302 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1297, i64 %t1303, i64 2)
  %t1304 = getelementptr [5 x i8], [5 x i8]* @.str380, i32 0, i32 0
  %t1305 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str380.c, i8* %t1304, i64 4)
  %t1306 = ptrtoint %nyx_string* %t1305 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1297, i64 %t1306, i64 2)
  %t1307 = getelementptr [7 x i8], [7 x i8]* @.str381, i32 0, i32 0
  %t1308 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str381.c, i8* %t1307, i64 6)
  %t1309 = ptrtoint %nyx_string* %t1308 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1297, i64 %t1309, i64 2)
  %t1310 = getelementptr [1 x i8], [1 x i8]* @.str382, i32 0, i32 0
  %t1311 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str382.c, i8* %t1310, i64 0)
  %t1312 = ptrtoint %nyx_string* %t1311 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1297, i64 %t1312, i64 2)
  %t1313 = getelementptr [1 x i8], [1 x i8]* @.str383, i32 0, i32 0
  %t1314 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str383.c, i8* %t1313, i64 0)
  %t1315 = ptrtoint %nyx_string* %t1314 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1297, i64 %t1315, i64 2)
  %t1316 = getelementptr [1 x i8], [1 x i8]* @.str384, i32 0, i32 0
  %t1317 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str384.c, i8* %t1316, i64 0)
  %t1318 = ptrtoint %nyx_string* %t1317 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1297, i64 %t1318, i64 2)
  %t1319 = getelementptr [8 x i8], [8 x i8]* @.str385, i32 0, i32 0
  %t1320 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str385.c, i8* %t1319, i64 7)
  %t1321 = ptrtoint %nyx_string* %t1320 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1297, i64 %t1321, i64 2)
  %t1322 = getelementptr [1 x i8], [1 x i8]* @.str386, i32 0, i32 0
  %t1323 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str386.c, i8* %t1322, i64 0)
  %t1324 = ptrtoint %nyx_string* %t1323 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1297, i64 %t1324, i64 2)
  %t1325 = getelementptr [132 x i8], [132 x i8]* @.str387, i32 0, i32 0
  %t1326 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str387.c, i8* %t1325, i64 131)
  %t1327 = ptrtoint %nyx_string* %t1326 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1297, i64 %t1327, i64 2)
  %t1328 = getelementptr [123 x i8], [123 x i8]* @.str388, i32 0, i32 0
  %t1329 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str388.c, i8* %t1328, i64 122)
  %t1330 = ptrtoint %nyx_string* %t1329 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1297, i64 %t1330, i64 2)
  %t1331 = getelementptr [135 x i8], [135 x i8]* @.str389, i32 0, i32 0
  %t1332 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str389.c, i8* %t1331, i64 134)
  %t1333 = ptrtoint %nyx_string* %t1332 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1297, i64 %t1333, i64 2)
  %t1334 = ptrtoint { i64, i8* }* %t1297 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1296, i64 %t1334, i64 5)
  %t1335 = load { i64, i8* }*, { i64, i8* }** %t86
  %t1336 = call { i64, i8* }* @nyx_array_new_ptr()
  %t1337 = getelementptr [23 x i8], [23 x i8]* @.str390, i32 0, i32 0
  %t1338 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str390.c, i8* %t1337, i64 22)
  %t1339 = ptrtoint %nyx_string* %t1338 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1336, i64 %t1339, i64 2)
  %t1340 = getelementptr [5 x i8], [5 x i8]* @.str391, i32 0, i32 0
  %t1341 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str391.c, i8* %t1340, i64 4)
  %t1342 = ptrtoint %nyx_string* %t1341 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1336, i64 %t1342, i64 2)
  %t1343 = getelementptr [5 x i8], [5 x i8]* @.str392, i32 0, i32 0
  %t1344 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str392.c, i8* %t1343, i64 4)
  %t1345 = ptrtoint %nyx_string* %t1344 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1336, i64 %t1345, i64 2)
  %t1346 = getelementptr [7 x i8], [7 x i8]* @.str393, i32 0, i32 0
  %t1347 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str393.c, i8* %t1346, i64 6)
  %t1348 = ptrtoint %nyx_string* %t1347 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1336, i64 %t1348, i64 2)
  %t1349 = getelementptr [1 x i8], [1 x i8]* @.str394, i32 0, i32 0
  %t1350 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str394.c, i8* %t1349, i64 0)
  %t1351 = ptrtoint %nyx_string* %t1350 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1336, i64 %t1351, i64 2)
  %t1352 = getelementptr [1 x i8], [1 x i8]* @.str395, i32 0, i32 0
  %t1353 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str395.c, i8* %t1352, i64 0)
  %t1354 = ptrtoint %nyx_string* %t1353 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1336, i64 %t1354, i64 2)
  %t1355 = getelementptr [1 x i8], [1 x i8]* @.str396, i32 0, i32 0
  %t1356 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str396.c, i8* %t1355, i64 0)
  %t1357 = ptrtoint %nyx_string* %t1356 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1336, i64 %t1357, i64 2)
  %t1358 = getelementptr [8 x i8], [8 x i8]* @.str397, i32 0, i32 0
  %t1359 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str397.c, i8* %t1358, i64 7)
  %t1360 = ptrtoint %nyx_string* %t1359 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1336, i64 %t1360, i64 2)
  %t1361 = getelementptr [1 x i8], [1 x i8]* @.str398, i32 0, i32 0
  %t1362 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str398.c, i8* %t1361, i64 0)
  %t1363 = ptrtoint %nyx_string* %t1362 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1336, i64 %t1363, i64 2)
  %t1364 = getelementptr [97 x i8], [97 x i8]* @.str399, i32 0, i32 0
  %t1365 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str399.c, i8* %t1364, i64 96)
  %t1366 = ptrtoint %nyx_string* %t1365 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1336, i64 %t1366, i64 2)
  %t1367 = getelementptr [220 x i8], [220 x i8]* @.str400, i32 0, i32 0
  %t1368 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str400.c, i8* %t1367, i64 219)
  %t1369 = ptrtoint %nyx_string* %t1368 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1336, i64 %t1369, i64 2)
  %t1370 = getelementptr [219 x i8], [219 x i8]* @.str401, i32 0, i32 0
  %t1371 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str401.c, i8* %t1370, i64 218)
  %t1372 = ptrtoint %nyx_string* %t1371 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1336, i64 %t1372, i64 2)
  %t1373 = ptrtoint { i64, i8* }* %t1336 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1335, i64 %t1373, i64 5)
  %t1374 = load { i64, i8* }*, { i64, i8* }** %t86
  %t1375 = call { i64, i8* }* @nyx_array_new_ptr()
  %t1376 = getelementptr [36 x i8], [36 x i8]* @.str402, i32 0, i32 0
  %t1377 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str402.c, i8* %t1376, i64 35)
  %t1378 = ptrtoint %nyx_string* %t1377 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1375, i64 %t1378, i64 2)
  %t1379 = getelementptr [5 x i8], [5 x i8]* @.str403, i32 0, i32 0
  %t1380 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str403.c, i8* %t1379, i64 4)
  %t1381 = ptrtoint %nyx_string* %t1380 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1375, i64 %t1381, i64 2)
  %t1382 = getelementptr [5 x i8], [5 x i8]* @.str404, i32 0, i32 0
  %t1383 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str404.c, i8* %t1382, i64 4)
  %t1384 = ptrtoint %nyx_string* %t1383 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1375, i64 %t1384, i64 2)
  %t1385 = getelementptr [7 x i8], [7 x i8]* @.str405, i32 0, i32 0
  %t1386 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str405.c, i8* %t1385, i64 6)
  %t1387 = ptrtoint %nyx_string* %t1386 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1375, i64 %t1387, i64 2)
  %t1388 = getelementptr [1 x i8], [1 x i8]* @.str406, i32 0, i32 0
  %t1389 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str406.c, i8* %t1388, i64 0)
  %t1390 = ptrtoint %nyx_string* %t1389 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1375, i64 %t1390, i64 2)
  %t1391 = getelementptr [1 x i8], [1 x i8]* @.str407, i32 0, i32 0
  %t1392 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str407.c, i8* %t1391, i64 0)
  %t1393 = ptrtoint %nyx_string* %t1392 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1375, i64 %t1393, i64 2)
  %t1394 = getelementptr [1 x i8], [1 x i8]* @.str408, i32 0, i32 0
  %t1395 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str408.c, i8* %t1394, i64 0)
  %t1396 = ptrtoint %nyx_string* %t1395 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1375, i64 %t1396, i64 2)
  %t1397 = getelementptr [8 x i8], [8 x i8]* @.str409, i32 0, i32 0
  %t1398 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str409.c, i8* %t1397, i64 7)
  %t1399 = ptrtoint %nyx_string* %t1398 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1375, i64 %t1399, i64 2)
  %t1400 = getelementptr [1 x i8], [1 x i8]* @.str410, i32 0, i32 0
  %t1401 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str410.c, i8* %t1400, i64 0)
  %t1402 = ptrtoint %nyx_string* %t1401 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1375, i64 %t1402, i64 2)
  %t1403 = getelementptr [182 x i8], [182 x i8]* @.str411, i32 0, i32 0
  %t1404 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str411.c, i8* %t1403, i64 181)
  %t1405 = ptrtoint %nyx_string* %t1404 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1375, i64 %t1405, i64 2)
  %t1406 = getelementptr [157 x i8], [157 x i8]* @.str412, i32 0, i32 0
  %t1407 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str412.c, i8* %t1406, i64 156)
  %t1408 = ptrtoint %nyx_string* %t1407 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1375, i64 %t1408, i64 2)
  %t1409 = getelementptr [158 x i8], [158 x i8]* @.str413, i32 0, i32 0
  %t1410 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str413.c, i8* %t1409, i64 157)
  %t1411 = ptrtoint %nyx_string* %t1410 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1375, i64 %t1411, i64 2)
  %t1412 = ptrtoint { i64, i8* }* %t1375 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1374, i64 %t1412, i64 5)
  %t1413 = load { i64, i8* }*, { i64, i8* }** %t86
  %t1414 = call { i64, i8* }* @nyx_array_new_ptr()
  %t1415 = getelementptr [26 x i8], [26 x i8]* @.str414, i32 0, i32 0
  %t1416 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str414.c, i8* %t1415, i64 25)
  %t1417 = ptrtoint %nyx_string* %t1416 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1414, i64 %t1417, i64 2)
  %t1418 = getelementptr [5 x i8], [5 x i8]* @.str415, i32 0, i32 0
  %t1419 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str415.c, i8* %t1418, i64 4)
  %t1420 = ptrtoint %nyx_string* %t1419 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1414, i64 %t1420, i64 2)
  %t1421 = getelementptr [13 x i8], [13 x i8]* @.str416, i32 0, i32 0
  %t1422 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str416.c, i8* %t1421, i64 12)
  %t1423 = ptrtoint %nyx_string* %t1422 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1414, i64 %t1423, i64 2)
  %t1424 = getelementptr [7 x i8], [7 x i8]* @.str417, i32 0, i32 0
  %t1425 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str417.c, i8* %t1424, i64 6)
  %t1426 = ptrtoint %nyx_string* %t1425 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1414, i64 %t1426, i64 2)
  %t1427 = getelementptr [1 x i8], [1 x i8]* @.str418, i32 0, i32 0
  %t1428 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str418.c, i8* %t1427, i64 0)
  %t1429 = ptrtoint %nyx_string* %t1428 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1414, i64 %t1429, i64 2)
  %t1430 = getelementptr [1 x i8], [1 x i8]* @.str419, i32 0, i32 0
  %t1431 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str419.c, i8* %t1430, i64 0)
  %t1432 = ptrtoint %nyx_string* %t1431 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1414, i64 %t1432, i64 2)
  %t1433 = getelementptr [1 x i8], [1 x i8]* @.str420, i32 0, i32 0
  %t1434 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str420.c, i8* %t1433, i64 0)
  %t1435 = ptrtoint %nyx_string* %t1434 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1414, i64 %t1435, i64 2)
  %t1436 = getelementptr [14 x i8], [14 x i8]* @.str421, i32 0, i32 0
  %t1437 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str421.c, i8* %t1436, i64 13)
  %t1438 = ptrtoint %nyx_string* %t1437 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1414, i64 %t1438, i64 2)
  %t1439 = getelementptr [1 x i8], [1 x i8]* @.str422, i32 0, i32 0
  %t1440 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str422.c, i8* %t1439, i64 0)
  %t1441 = ptrtoint %nyx_string* %t1440 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1414, i64 %t1441, i64 2)
  %t1442 = getelementptr [54 x i8], [54 x i8]* @.str423, i32 0, i32 0
  %t1443 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str423.c, i8* %t1442, i64 53)
  %t1444 = ptrtoint %nyx_string* %t1443 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1414, i64 %t1444, i64 2)
  %t1445 = getelementptr [131 x i8], [131 x i8]* @.str424, i32 0, i32 0
  %t1446 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str424.c, i8* %t1445, i64 130)
  %t1447 = ptrtoint %nyx_string* %t1446 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1414, i64 %t1447, i64 2)
  %t1448 = getelementptr [148 x i8], [148 x i8]* @.str425, i32 0, i32 0
  %t1449 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str425.c, i8* %t1448, i64 147)
  %t1450 = ptrtoint %nyx_string* %t1449 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1414, i64 %t1450, i64 2)
  %t1451 = ptrtoint { i64, i8* }* %t1414 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1413, i64 %t1451, i64 5)
  %t1452 = load { i64, i8* }*, { i64, i8* }** %t86
  %t1453 = call { i64, i8* }* @nyx_array_new_ptr()
  %t1454 = getelementptr [26 x i8], [26 x i8]* @.str426, i32 0, i32 0
  %t1455 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str426.c, i8* %t1454, i64 25)
  %t1456 = ptrtoint %nyx_string* %t1455 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1453, i64 %t1456, i64 2)
  %t1457 = getelementptr [5 x i8], [5 x i8]* @.str427, i32 0, i32 0
  %t1458 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str427.c, i8* %t1457, i64 4)
  %t1459 = ptrtoint %nyx_string* %t1458 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1453, i64 %t1459, i64 2)
  %t1460 = getelementptr [5 x i8], [5 x i8]* @.str428, i32 0, i32 0
  %t1461 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str428.c, i8* %t1460, i64 4)
  %t1462 = ptrtoint %nyx_string* %t1461 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1453, i64 %t1462, i64 2)
  %t1463 = getelementptr [7 x i8], [7 x i8]* @.str429, i32 0, i32 0
  %t1464 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str429.c, i8* %t1463, i64 6)
  %t1465 = ptrtoint %nyx_string* %t1464 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1453, i64 %t1465, i64 2)
  %t1466 = getelementptr [1 x i8], [1 x i8]* @.str430, i32 0, i32 0
  %t1467 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str430.c, i8* %t1466, i64 0)
  %t1468 = ptrtoint %nyx_string* %t1467 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1453, i64 %t1468, i64 2)
  %t1469 = getelementptr [1 x i8], [1 x i8]* @.str431, i32 0, i32 0
  %t1470 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str431.c, i8* %t1469, i64 0)
  %t1471 = ptrtoint %nyx_string* %t1470 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1453, i64 %t1471, i64 2)
  %t1472 = getelementptr [1 x i8], [1 x i8]* @.str432, i32 0, i32 0
  %t1473 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str432.c, i8* %t1472, i64 0)
  %t1474 = ptrtoint %nyx_string* %t1473 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1453, i64 %t1474, i64 2)
  %t1475 = getelementptr [8 x i8], [8 x i8]* @.str433, i32 0, i32 0
  %t1476 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str433.c, i8* %t1475, i64 7)
  %t1477 = ptrtoint %nyx_string* %t1476 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1453, i64 %t1477, i64 2)
  %t1478 = getelementptr [1 x i8], [1 x i8]* @.str434, i32 0, i32 0
  %t1479 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str434.c, i8* %t1478, i64 0)
  %t1480 = ptrtoint %nyx_string* %t1479 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1453, i64 %t1480, i64 2)
  %t1481 = getelementptr [59 x i8], [59 x i8]* @.str435, i32 0, i32 0
  %t1482 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str435.c, i8* %t1481, i64 58)
  %t1483 = ptrtoint %nyx_string* %t1482 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1453, i64 %t1483, i64 2)
  %t1484 = getelementptr [60 x i8], [60 x i8]* @.str436, i32 0, i32 0
  %t1485 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str436.c, i8* %t1484, i64 59)
  %t1486 = ptrtoint %nyx_string* %t1485 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1453, i64 %t1486, i64 2)
  %t1487 = getelementptr [64 x i8], [64 x i8]* @.str437, i32 0, i32 0
  %t1488 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str437.c, i8* %t1487, i64 63)
  %t1489 = ptrtoint %nyx_string* %t1488 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1453, i64 %t1489, i64 2)
  %t1490 = ptrtoint { i64, i8* }* %t1453 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1452, i64 %t1490, i64 5)
  %t1491 = load { i64, i8* }*, { i64, i8* }** %t86
  %t1492 = call { i64, i8* }* @nyx_array_new_ptr()
  %t1493 = getelementptr [15 x i8], [15 x i8]* @.str438, i32 0, i32 0
  %t1494 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str438.c, i8* %t1493, i64 14)
  %t1495 = ptrtoint %nyx_string* %t1494 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1492, i64 %t1495, i64 2)
  %t1496 = getelementptr [5 x i8], [5 x i8]* @.str439, i32 0, i32 0
  %t1497 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str439.c, i8* %t1496, i64 4)
  %t1498 = ptrtoint %nyx_string* %t1497 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1492, i64 %t1498, i64 2)
  %t1499 = getelementptr [5 x i8], [5 x i8]* @.str440, i32 0, i32 0
  %t1500 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str440.c, i8* %t1499, i64 4)
  %t1501 = ptrtoint %nyx_string* %t1500 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1492, i64 %t1501, i64 2)
  %t1502 = getelementptr [7 x i8], [7 x i8]* @.str441, i32 0, i32 0
  %t1503 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str441.c, i8* %t1502, i64 6)
  %t1504 = ptrtoint %nyx_string* %t1503 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1492, i64 %t1504, i64 2)
  %t1505 = getelementptr [1 x i8], [1 x i8]* @.str442, i32 0, i32 0
  %t1506 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str442.c, i8* %t1505, i64 0)
  %t1507 = ptrtoint %nyx_string* %t1506 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1492, i64 %t1507, i64 2)
  %t1508 = getelementptr [1 x i8], [1 x i8]* @.str443, i32 0, i32 0
  %t1509 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str443.c, i8* %t1508, i64 0)
  %t1510 = ptrtoint %nyx_string* %t1509 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1492, i64 %t1510, i64 2)
  %t1511 = getelementptr [1 x i8], [1 x i8]* @.str444, i32 0, i32 0
  %t1512 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str444.c, i8* %t1511, i64 0)
  %t1513 = ptrtoint %nyx_string* %t1512 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1492, i64 %t1513, i64 2)
  %t1514 = getelementptr [8 x i8], [8 x i8]* @.str445, i32 0, i32 0
  %t1515 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str445.c, i8* %t1514, i64 7)
  %t1516 = ptrtoint %nyx_string* %t1515 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1492, i64 %t1516, i64 2)
  %t1517 = getelementptr [1 x i8], [1 x i8]* @.str446, i32 0, i32 0
  %t1518 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str446.c, i8* %t1517, i64 0)
  %t1519 = ptrtoint %nyx_string* %t1518 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1492, i64 %t1519, i64 2)
  %t1520 = getelementptr [56 x i8], [56 x i8]* @.str447, i32 0, i32 0
  %t1521 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str447.c, i8* %t1520, i64 55)
  %t1522 = ptrtoint %nyx_string* %t1521 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1492, i64 %t1522, i64 2)
  %t1523 = getelementptr [94 x i8], [94 x i8]* @.str448, i32 0, i32 0
  %t1524 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str448.c, i8* %t1523, i64 93)
  %t1525 = ptrtoint %nyx_string* %t1524 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1492, i64 %t1525, i64 2)
  %t1526 = getelementptr [106 x i8], [106 x i8]* @.str449, i32 0, i32 0
  %t1527 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str449.c, i8* %t1526, i64 105)
  %t1528 = ptrtoint %nyx_string* %t1527 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1492, i64 %t1528, i64 2)
  %t1529 = ptrtoint { i64, i8* }* %t1492 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1491, i64 %t1529, i64 5)
  %t1530 = load { i64, i8* }*, { i64, i8* }** %t86
  %t1531 = call { i64, i8* }* @nyx_array_new_ptr()
  %t1532 = getelementptr [26 x i8], [26 x i8]* @.str450, i32 0, i32 0
  %t1533 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str450.c, i8* %t1532, i64 25)
  %t1534 = ptrtoint %nyx_string* %t1533 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1531, i64 %t1534, i64 2)
  %t1535 = getelementptr [5 x i8], [5 x i8]* @.str451, i32 0, i32 0
  %t1536 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str451.c, i8* %t1535, i64 4)
  %t1537 = ptrtoint %nyx_string* %t1536 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1531, i64 %t1537, i64 2)
  %t1538 = getelementptr [5 x i8], [5 x i8]* @.str452, i32 0, i32 0
  %t1539 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str452.c, i8* %t1538, i64 4)
  %t1540 = ptrtoint %nyx_string* %t1539 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1531, i64 %t1540, i64 2)
  %t1541 = getelementptr [7 x i8], [7 x i8]* @.str453, i32 0, i32 0
  %t1542 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str453.c, i8* %t1541, i64 6)
  %t1543 = ptrtoint %nyx_string* %t1542 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1531, i64 %t1543, i64 2)
  %t1544 = getelementptr [1 x i8], [1 x i8]* @.str454, i32 0, i32 0
  %t1545 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str454.c, i8* %t1544, i64 0)
  %t1546 = ptrtoint %nyx_string* %t1545 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1531, i64 %t1546, i64 2)
  %t1547 = getelementptr [1 x i8], [1 x i8]* @.str455, i32 0, i32 0
  %t1548 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str455.c, i8* %t1547, i64 0)
  %t1549 = ptrtoint %nyx_string* %t1548 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1531, i64 %t1549, i64 2)
  %t1550 = getelementptr [1 x i8], [1 x i8]* @.str456, i32 0, i32 0
  %t1551 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str456.c, i8* %t1550, i64 0)
  %t1552 = ptrtoint %nyx_string* %t1551 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1531, i64 %t1552, i64 2)
  %t1553 = getelementptr [9 x i8], [9 x i8]* @.str457, i32 0, i32 0
  %t1554 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str457.c, i8* %t1553, i64 8)
  %t1555 = ptrtoint %nyx_string* %t1554 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1531, i64 %t1555, i64 2)
  %t1556 = getelementptr [1 x i8], [1 x i8]* @.str458, i32 0, i32 0
  %t1557 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str458.c, i8* %t1556, i64 0)
  %t1558 = ptrtoint %nyx_string* %t1557 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1531, i64 %t1558, i64 2)
  %t1559 = getelementptr [67 x i8], [67 x i8]* @.str459, i32 0, i32 0
  %t1560 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str459.c, i8* %t1559, i64 66)
  %t1561 = ptrtoint %nyx_string* %t1560 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1531, i64 %t1561, i64 2)
  %t1562 = getelementptr [136 x i8], [136 x i8]* @.str460, i32 0, i32 0
  %t1563 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str460.c, i8* %t1562, i64 135)
  %t1564 = ptrtoint %nyx_string* %t1563 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1531, i64 %t1564, i64 2)
  %t1565 = getelementptr [145 x i8], [145 x i8]* @.str461, i32 0, i32 0
  %t1566 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str461.c, i8* %t1565, i64 144)
  %t1567 = ptrtoint %nyx_string* %t1566 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1531, i64 %t1567, i64 2)
  %t1568 = ptrtoint { i64, i8* }* %t1531 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1530, i64 %t1568, i64 5)
  %t1569 = load { i64, i8* }*, { i64, i8* }** %t86
  %t1570 = call { i64, i8* }* @nyx_array_new_ptr()
  %t1571 = getelementptr [28 x i8], [28 x i8]* @.str462, i32 0, i32 0
  %t1572 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str462.c, i8* %t1571, i64 27)
  %t1573 = ptrtoint %nyx_string* %t1572 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1570, i64 %t1573, i64 2)
  %t1574 = getelementptr [5 x i8], [5 x i8]* @.str463, i32 0, i32 0
  %t1575 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str463.c, i8* %t1574, i64 4)
  %t1576 = ptrtoint %nyx_string* %t1575 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1570, i64 %t1576, i64 2)
  %t1577 = getelementptr [13 x i8], [13 x i8]* @.str464, i32 0, i32 0
  %t1578 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str464.c, i8* %t1577, i64 12)
  %t1579 = ptrtoint %nyx_string* %t1578 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1570, i64 %t1579, i64 2)
  %t1580 = getelementptr [7 x i8], [7 x i8]* @.str465, i32 0, i32 0
  %t1581 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str465.c, i8* %t1580, i64 6)
  %t1582 = ptrtoint %nyx_string* %t1581 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1570, i64 %t1582, i64 2)
  %t1583 = getelementptr [1 x i8], [1 x i8]* @.str466, i32 0, i32 0
  %t1584 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str466.c, i8* %t1583, i64 0)
  %t1585 = ptrtoint %nyx_string* %t1584 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1570, i64 %t1585, i64 2)
  %t1586 = getelementptr [1 x i8], [1 x i8]* @.str467, i32 0, i32 0
  %t1587 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str467.c, i8* %t1586, i64 0)
  %t1588 = ptrtoint %nyx_string* %t1587 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1570, i64 %t1588, i64 2)
  %t1589 = getelementptr [1 x i8], [1 x i8]* @.str468, i32 0, i32 0
  %t1590 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str468.c, i8* %t1589, i64 0)
  %t1591 = ptrtoint %nyx_string* %t1590 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1570, i64 %t1591, i64 2)
  %t1592 = getelementptr [3 x i8], [3 x i8]* @.str469, i32 0, i32 0
  %t1593 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str469.c, i8* %t1592, i64 2)
  %t1594 = ptrtoint %nyx_string* %t1593 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1570, i64 %t1594, i64 2)
  %t1595 = getelementptr [1 x i8], [1 x i8]* @.str470, i32 0, i32 0
  %t1596 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str470.c, i8* %t1595, i64 0)
  %t1597 = ptrtoint %nyx_string* %t1596 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1570, i64 %t1597, i64 2)
  %t1598 = getelementptr [109 x i8], [109 x i8]* @.str471, i32 0, i32 0
  %t1599 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str471.c, i8* %t1598, i64 108)
  %t1600 = ptrtoint %nyx_string* %t1599 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1570, i64 %t1600, i64 2)
  %t1601 = getelementptr [122 x i8], [122 x i8]* @.str472, i32 0, i32 0
  %t1602 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str472.c, i8* %t1601, i64 121)
  %t1603 = ptrtoint %nyx_string* %t1602 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1570, i64 %t1603, i64 2)
  %t1604 = getelementptr [114 x i8], [114 x i8]* @.str473, i32 0, i32 0
  %t1605 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str473.c, i8* %t1604, i64 113)
  %t1606 = ptrtoint %nyx_string* %t1605 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1570, i64 %t1606, i64 2)
  %t1607 = ptrtoint { i64, i8* }* %t1570 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1569, i64 %t1607, i64 5)
  %t1608 = load { i64, i8* }*, { i64, i8* }** %t86
  %t1609 = call { i64, i8* }* @nyx_array_new_ptr()
  %t1610 = getelementptr [22 x i8], [22 x i8]* @.str474, i32 0, i32 0
  %t1611 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str474.c, i8* %t1610, i64 21)
  %t1612 = ptrtoint %nyx_string* %t1611 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1609, i64 %t1612, i64 2)
  %t1613 = getelementptr [5 x i8], [5 x i8]* @.str475, i32 0, i32 0
  %t1614 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str475.c, i8* %t1613, i64 4)
  %t1615 = ptrtoint %nyx_string* %t1614 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1609, i64 %t1615, i64 2)
  %t1616 = getelementptr [13 x i8], [13 x i8]* @.str476, i32 0, i32 0
  %t1617 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str476.c, i8* %t1616, i64 12)
  %t1618 = ptrtoint %nyx_string* %t1617 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1609, i64 %t1618, i64 2)
  %t1619 = getelementptr [7 x i8], [7 x i8]* @.str477, i32 0, i32 0
  %t1620 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str477.c, i8* %t1619, i64 6)
  %t1621 = ptrtoint %nyx_string* %t1620 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1609, i64 %t1621, i64 2)
  %t1622 = getelementptr [1 x i8], [1 x i8]* @.str478, i32 0, i32 0
  %t1623 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str478.c, i8* %t1622, i64 0)
  %t1624 = ptrtoint %nyx_string* %t1623 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1609, i64 %t1624, i64 2)
  %t1625 = getelementptr [1 x i8], [1 x i8]* @.str479, i32 0, i32 0
  %t1626 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str479.c, i8* %t1625, i64 0)
  %t1627 = ptrtoint %nyx_string* %t1626 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1609, i64 %t1627, i64 2)
  %t1628 = getelementptr [1 x i8], [1 x i8]* @.str480, i32 0, i32 0
  %t1629 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str480.c, i8* %t1628, i64 0)
  %t1630 = ptrtoint %nyx_string* %t1629 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1609, i64 %t1630, i64 2)
  %t1631 = getelementptr [7 x i8], [7 x i8]* @.str481, i32 0, i32 0
  %t1632 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str481.c, i8* %t1631, i64 6)
  %t1633 = ptrtoint %nyx_string* %t1632 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1609, i64 %t1633, i64 2)
  %t1634 = getelementptr [1 x i8], [1 x i8]* @.str482, i32 0, i32 0
  %t1635 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str482.c, i8* %t1634, i64 0)
  %t1636 = ptrtoint %nyx_string* %t1635 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1609, i64 %t1636, i64 2)
  %t1637 = getelementptr [56 x i8], [56 x i8]* @.str483, i32 0, i32 0
  %t1638 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str483.c, i8* %t1637, i64 55)
  %t1639 = ptrtoint %nyx_string* %t1638 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1609, i64 %t1639, i64 2)
  %t1640 = getelementptr [208 x i8], [208 x i8]* @.str484, i32 0, i32 0
  %t1641 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str484.c, i8* %t1640, i64 207)
  %t1642 = ptrtoint %nyx_string* %t1641 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1609, i64 %t1642, i64 2)
  %t1643 = getelementptr [205 x i8], [205 x i8]* @.str485, i32 0, i32 0
  %t1644 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str485.c, i8* %t1643, i64 204)
  %t1645 = ptrtoint %nyx_string* %t1644 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1609, i64 %t1645, i64 2)
  %t1646 = ptrtoint { i64, i8* }* %t1609 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1608, i64 %t1646, i64 5)
  %t1647 = load { i64, i8* }*, { i64, i8* }** %t86
  %t1648 = call { i64, i8* }* @nyx_array_new_ptr()
  %t1649 = getelementptr [22 x i8], [22 x i8]* @.str486, i32 0, i32 0
  %t1650 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str486.c, i8* %t1649, i64 21)
  %t1651 = ptrtoint %nyx_string* %t1650 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1648, i64 %t1651, i64 2)
  %t1652 = getelementptr [5 x i8], [5 x i8]* @.str487, i32 0, i32 0
  %t1653 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str487.c, i8* %t1652, i64 4)
  %t1654 = ptrtoint %nyx_string* %t1653 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1648, i64 %t1654, i64 2)
  %t1655 = getelementptr [4 x i8], [4 x i8]* @.str488, i32 0, i32 0
  %t1656 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str488.c, i8* %t1655, i64 3)
  %t1657 = ptrtoint %nyx_string* %t1656 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1648, i64 %t1657, i64 2)
  %t1658 = getelementptr [7 x i8], [7 x i8]* @.str489, i32 0, i32 0
  %t1659 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str489.c, i8* %t1658, i64 6)
  %t1660 = ptrtoint %nyx_string* %t1659 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1648, i64 %t1660, i64 2)
  %t1661 = getelementptr [1 x i8], [1 x i8]* @.str490, i32 0, i32 0
  %t1662 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str490.c, i8* %t1661, i64 0)
  %t1663 = ptrtoint %nyx_string* %t1662 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1648, i64 %t1663, i64 2)
  %t1664 = getelementptr [1 x i8], [1 x i8]* @.str491, i32 0, i32 0
  %t1665 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str491.c, i8* %t1664, i64 0)
  %t1666 = ptrtoint %nyx_string* %t1665 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1648, i64 %t1666, i64 2)
  %t1667 = getelementptr [1 x i8], [1 x i8]* @.str492, i32 0, i32 0
  %t1668 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str492.c, i8* %t1667, i64 0)
  %t1669 = ptrtoint %nyx_string* %t1668 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1648, i64 %t1669, i64 2)
  %t1670 = getelementptr [10 x i8], [10 x i8]* @.str493, i32 0, i32 0
  %t1671 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str493.c, i8* %t1670, i64 9)
  %t1672 = ptrtoint %nyx_string* %t1671 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1648, i64 %t1672, i64 2)
  %t1673 = getelementptr [1 x i8], [1 x i8]* @.str494, i32 0, i32 0
  %t1674 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str494.c, i8* %t1673, i64 0)
  %t1675 = ptrtoint %nyx_string* %t1674 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1648, i64 %t1675, i64 2)
  %t1676 = getelementptr [36 x i8], [36 x i8]* @.str495, i32 0, i32 0
  %t1677 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str495.c, i8* %t1676, i64 35)
  %t1678 = ptrtoint %nyx_string* %t1677 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1648, i64 %t1678, i64 2)
  %t1679 = getelementptr [129 x i8], [129 x i8]* @.str496, i32 0, i32 0
  %t1680 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str496.c, i8* %t1679, i64 128)
  %t1681 = ptrtoint %nyx_string* %t1680 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1648, i64 %t1681, i64 2)
  %t1682 = getelementptr [149 x i8], [149 x i8]* @.str497, i32 0, i32 0
  %t1683 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str497.c, i8* %t1682, i64 148)
  %t1684 = ptrtoint %nyx_string* %t1683 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1648, i64 %t1684, i64 2)
  %t1685 = ptrtoint { i64, i8* }* %t1648 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1647, i64 %t1685, i64 5)
  %t1686 = load { i64, i8* }*, { i64, i8* }** %t86
  %t1687 = call { i64, i8* }* @nyx_array_new_ptr()
  %t1688 = getelementptr [19 x i8], [19 x i8]* @.str498, i32 0, i32 0
  %t1689 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str498.c, i8* %t1688, i64 18)
  %t1690 = ptrtoint %nyx_string* %t1689 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1687, i64 %t1690, i64 2)
  %t1691 = getelementptr [6 x i8], [6 x i8]* @.str499, i32 0, i32 0
  %t1692 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str499.c, i8* %t1691, i64 5)
  %t1693 = ptrtoint %nyx_string* %t1692 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1687, i64 %t1693, i64 2)
  %t1694 = getelementptr [6 x i8], [6 x i8]* @.str500, i32 0, i32 0
  %t1695 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str500.c, i8* %t1694, i64 5)
  %t1696 = ptrtoint %nyx_string* %t1695 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1687, i64 %t1696, i64 2)
  %t1697 = getelementptr [7 x i8], [7 x i8]* @.str501, i32 0, i32 0
  %t1698 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str501.c, i8* %t1697, i64 6)
  %t1699 = ptrtoint %nyx_string* %t1698 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1687, i64 %t1699, i64 2)
  %t1700 = getelementptr [1 x i8], [1 x i8]* @.str502, i32 0, i32 0
  %t1701 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str502.c, i8* %t1700, i64 0)
  %t1702 = ptrtoint %nyx_string* %t1701 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1687, i64 %t1702, i64 2)
  %t1703 = getelementptr [1 x i8], [1 x i8]* @.str503, i32 0, i32 0
  %t1704 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str503.c, i8* %t1703, i64 0)
  %t1705 = ptrtoint %nyx_string* %t1704 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1687, i64 %t1705, i64 2)
  %t1706 = getelementptr [1 x i8], [1 x i8]* @.str504, i32 0, i32 0
  %t1707 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str504.c, i8* %t1706, i64 0)
  %t1708 = ptrtoint %nyx_string* %t1707 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1687, i64 %t1708, i64 2)
  %t1709 = getelementptr [7 x i8], [7 x i8]* @.str505, i32 0, i32 0
  %t1710 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str505.c, i8* %t1709, i64 6)
  %t1711 = ptrtoint %nyx_string* %t1710 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1687, i64 %t1711, i64 2)
  %t1712 = getelementptr [1 x i8], [1 x i8]* @.str506, i32 0, i32 0
  %t1713 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str506.c, i8* %t1712, i64 0)
  %t1714 = ptrtoint %nyx_string* %t1713 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1687, i64 %t1714, i64 2)
  %t1715 = getelementptr [1 x i8], [1 x i8]* @.str507, i32 0, i32 0
  %t1716 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str507.c, i8* %t1715, i64 0)
  %t1717 = ptrtoint %nyx_string* %t1716 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1687, i64 %t1717, i64 2)
  %t1718 = getelementptr [14 x i8], [14 x i8]* @.str508, i32 0, i32 0
  %t1719 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str508.c, i8* %t1718, i64 13)
  %t1720 = ptrtoint %nyx_string* %t1719 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1687, i64 %t1720, i64 2)
  %t1721 = getelementptr [14 x i8], [14 x i8]* @.str509, i32 0, i32 0
  %t1722 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str509.c, i8* %t1721, i64 13)
  %t1723 = ptrtoint %nyx_string* %t1722 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1687, i64 %t1723, i64 2)
  %t1724 = ptrtoint { i64, i8* }* %t1687 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1686, i64 %t1724, i64 5)
  %t1725 = load { i64, i8* }*, { i64, i8* }** %t86
  %t1726 = call { i64, i8* }* @nyx_array_new_ptr()
  %t1727 = getelementptr [30 x i8], [30 x i8]* @.str510, i32 0, i32 0
  %t1728 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str510.c, i8* %t1727, i64 29)
  %t1729 = ptrtoint %nyx_string* %t1728 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1726, i64 %t1729, i64 2)
  %t1730 = getelementptr [6 x i8], [6 x i8]* @.str511, i32 0, i32 0
  %t1731 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str511.c, i8* %t1730, i64 5)
  %t1732 = ptrtoint %nyx_string* %t1731 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1726, i64 %t1732, i64 2)
  %t1733 = getelementptr [4 x i8], [4 x i8]* @.str512, i32 0, i32 0
  %t1734 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str512.c, i8* %t1733, i64 3)
  %t1735 = ptrtoint %nyx_string* %t1734 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1726, i64 %t1735, i64 2)
  %t1736 = getelementptr [7 x i8], [7 x i8]* @.str513, i32 0, i32 0
  %t1737 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str513.c, i8* %t1736, i64 6)
  %t1738 = ptrtoint %nyx_string* %t1737 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1726, i64 %t1738, i64 2)
  %t1739 = getelementptr [1 x i8], [1 x i8]* @.str514, i32 0, i32 0
  %t1740 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str514.c, i8* %t1739, i64 0)
  %t1741 = ptrtoint %nyx_string* %t1740 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1726, i64 %t1741, i64 2)
  %t1742 = getelementptr [1 x i8], [1 x i8]* @.str515, i32 0, i32 0
  %t1743 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str515.c, i8* %t1742, i64 0)
  %t1744 = ptrtoint %nyx_string* %t1743 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1726, i64 %t1744, i64 2)
  %t1745 = getelementptr [1 x i8], [1 x i8]* @.str516, i32 0, i32 0
  %t1746 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str516.c, i8* %t1745, i64 0)
  %t1747 = ptrtoint %nyx_string* %t1746 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1726, i64 %t1747, i64 2)
  %t1748 = getelementptr [1 x i8], [1 x i8]* @.str517, i32 0, i32 0
  %t1749 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str517.c, i8* %t1748, i64 0)
  %t1750 = ptrtoint %nyx_string* %t1749 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1726, i64 %t1750, i64 2)
  %t1751 = getelementptr [1 x i8], [1 x i8]* @.str518, i32 0, i32 0
  %t1752 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str518.c, i8* %t1751, i64 0)
  %t1753 = ptrtoint %nyx_string* %t1752 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1726, i64 %t1753, i64 2)
  %t1754 = getelementptr [1 x i8], [1 x i8]* @.str519, i32 0, i32 0
  %t1755 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str519.c, i8* %t1754, i64 0)
  %t1756 = ptrtoint %nyx_string* %t1755 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1726, i64 %t1756, i64 2)
  %t1757 = getelementptr [47 x i8], [47 x i8]* @.str520, i32 0, i32 0
  %t1758 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str520.c, i8* %t1757, i64 46)
  %t1759 = ptrtoint %nyx_string* %t1758 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1726, i64 %t1759, i64 2)
  %t1760 = getelementptr [57 x i8], [57 x i8]* @.str521, i32 0, i32 0
  %t1761 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str521.c, i8* %t1760, i64 56)
  %t1762 = ptrtoint %nyx_string* %t1761 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1726, i64 %t1762, i64 2)
  %t1763 = ptrtoint { i64, i8* }* %t1726 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1725, i64 %t1763, i64 5)
  %t1764 = load { i64, i8* }*, { i64, i8* }** %t86
  %t1765 = call { i64, i8* }* @nyx_array_new_ptr()
  %t1766 = getelementptr [24 x i8], [24 x i8]* @.str522, i32 0, i32 0
  %t1767 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str522.c, i8* %t1766, i64 23)
  %t1768 = ptrtoint %nyx_string* %t1767 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1765, i64 %t1768, i64 2)
  %t1769 = getelementptr [6 x i8], [6 x i8]* @.str523, i32 0, i32 0
  %t1770 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str523.c, i8* %t1769, i64 5)
  %t1771 = ptrtoint %nyx_string* %t1770 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1765, i64 %t1771, i64 2)
  %t1772 = getelementptr [5 x i8], [5 x i8]* @.str524, i32 0, i32 0
  %t1773 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str524.c, i8* %t1772, i64 4)
  %t1774 = ptrtoint %nyx_string* %t1773 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1765, i64 %t1774, i64 2)
  %t1775 = getelementptr [7 x i8], [7 x i8]* @.str525, i32 0, i32 0
  %t1776 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str525.c, i8* %t1775, i64 6)
  %t1777 = ptrtoint %nyx_string* %t1776 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1765, i64 %t1777, i64 2)
  %t1778 = getelementptr [1 x i8], [1 x i8]* @.str526, i32 0, i32 0
  %t1779 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str526.c, i8* %t1778, i64 0)
  %t1780 = ptrtoint %nyx_string* %t1779 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1765, i64 %t1780, i64 2)
  %t1781 = getelementptr [1 x i8], [1 x i8]* @.str527, i32 0, i32 0
  %t1782 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str527.c, i8* %t1781, i64 0)
  %t1783 = ptrtoint %nyx_string* %t1782 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1765, i64 %t1783, i64 2)
  %t1784 = getelementptr [1 x i8], [1 x i8]* @.str528, i32 0, i32 0
  %t1785 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str528.c, i8* %t1784, i64 0)
  %t1786 = ptrtoint %nyx_string* %t1785 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1765, i64 %t1786, i64 2)
  %t1787 = getelementptr [8 x i8], [8 x i8]* @.str529, i32 0, i32 0
  %t1788 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str529.c, i8* %t1787, i64 7)
  %t1789 = ptrtoint %nyx_string* %t1788 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1765, i64 %t1789, i64 2)
  %t1790 = getelementptr [1 x i8], [1 x i8]* @.str530, i32 0, i32 0
  %t1791 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str530.c, i8* %t1790, i64 0)
  %t1792 = ptrtoint %nyx_string* %t1791 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1765, i64 %t1792, i64 2)
  %t1793 = getelementptr [1 x i8], [1 x i8]* @.str531, i32 0, i32 0
  %t1794 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str531.c, i8* %t1793, i64 0)
  %t1795 = ptrtoint %nyx_string* %t1794 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1765, i64 %t1795, i64 2)
  %t1796 = getelementptr [109 x i8], [109 x i8]* @.str532, i32 0, i32 0
  %t1797 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str532.c, i8* %t1796, i64 108)
  %t1798 = ptrtoint %nyx_string* %t1797 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1765, i64 %t1798, i64 2)
  %t1799 = getelementptr [105 x i8], [105 x i8]* @.str533, i32 0, i32 0
  %t1800 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str533.c, i8* %t1799, i64 104)
  %t1801 = ptrtoint %nyx_string* %t1800 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1765, i64 %t1801, i64 2)
  %t1802 = ptrtoint { i64, i8* }* %t1765 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1764, i64 %t1802, i64 5)
  %t1803 = load { i64, i8* }*, { i64, i8* }** %t86
  %t1804 = call { i64, i8* }* @nyx_array_new_ptr()
  %t1805 = getelementptr [30 x i8], [30 x i8]* @.str534, i32 0, i32 0
  %t1806 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str534.c, i8* %t1805, i64 29)
  %t1807 = ptrtoint %nyx_string* %t1806 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1804, i64 %t1807, i64 2)
  %t1808 = getelementptr [6 x i8], [6 x i8]* @.str535, i32 0, i32 0
  %t1809 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str535.c, i8* %t1808, i64 5)
  %t1810 = ptrtoint %nyx_string* %t1809 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1804, i64 %t1810, i64 2)
  %t1811 = getelementptr [5 x i8], [5 x i8]* @.str536, i32 0, i32 0
  %t1812 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str536.c, i8* %t1811, i64 4)
  %t1813 = ptrtoint %nyx_string* %t1812 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1804, i64 %t1813, i64 2)
  %t1814 = getelementptr [7 x i8], [7 x i8]* @.str537, i32 0, i32 0
  %t1815 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str537.c, i8* %t1814, i64 6)
  %t1816 = ptrtoint %nyx_string* %t1815 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1804, i64 %t1816, i64 2)
  %t1817 = getelementptr [1 x i8], [1 x i8]* @.str538, i32 0, i32 0
  %t1818 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str538.c, i8* %t1817, i64 0)
  %t1819 = ptrtoint %nyx_string* %t1818 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1804, i64 %t1819, i64 2)
  %t1820 = getelementptr [1 x i8], [1 x i8]* @.str539, i32 0, i32 0
  %t1821 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str539.c, i8* %t1820, i64 0)
  %t1822 = ptrtoint %nyx_string* %t1821 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1804, i64 %t1822, i64 2)
  %t1823 = getelementptr [1 x i8], [1 x i8]* @.str540, i32 0, i32 0
  %t1824 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str540.c, i8* %t1823, i64 0)
  %t1825 = ptrtoint %nyx_string* %t1824 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1804, i64 %t1825, i64 2)
  %t1826 = getelementptr [8 x i8], [8 x i8]* @.str541, i32 0, i32 0
  %t1827 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str541.c, i8* %t1826, i64 7)
  %t1828 = ptrtoint %nyx_string* %t1827 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1804, i64 %t1828, i64 2)
  %t1829 = getelementptr [1 x i8], [1 x i8]* @.str542, i32 0, i32 0
  %t1830 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str542.c, i8* %t1829, i64 0)
  %t1831 = ptrtoint %nyx_string* %t1830 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1804, i64 %t1831, i64 2)
  %t1832 = getelementptr [51 x i8], [51 x i8]* @.str543, i32 0, i32 0
  %t1833 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str543.c, i8* %t1832, i64 50)
  %t1834 = ptrtoint %nyx_string* %t1833 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1804, i64 %t1834, i64 2)
  %t1835 = getelementptr [151 x i8], [151 x i8]* @.str544, i32 0, i32 0
  %t1836 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str544.c, i8* %t1835, i64 150)
  %t1837 = ptrtoint %nyx_string* %t1836 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1804, i64 %t1837, i64 2)
  %t1838 = getelementptr [155 x i8], [155 x i8]* @.str545, i32 0, i32 0
  %t1839 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str545.c, i8* %t1838, i64 154)
  %t1840 = ptrtoint %nyx_string* %t1839 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1804, i64 %t1840, i64 2)
  %t1841 = ptrtoint { i64, i8* }* %t1804 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1803, i64 %t1841, i64 5)
  %t1842 = load { i64, i8* }*, { i64, i8* }** %t86
  %t1843 = call { i64, i8* }* @nyx_array_new_ptr()
  %t1844 = getelementptr [20 x i8], [20 x i8]* @.str546, i32 0, i32 0
  %t1845 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str546.c, i8* %t1844, i64 19)
  %t1846 = ptrtoint %nyx_string* %t1845 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1843, i64 %t1846, i64 2)
  %t1847 = getelementptr [6 x i8], [6 x i8]* @.str547, i32 0, i32 0
  %t1848 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str547.c, i8* %t1847, i64 5)
  %t1849 = ptrtoint %nyx_string* %t1848 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1843, i64 %t1849, i64 2)
  %t1850 = getelementptr [13 x i8], [13 x i8]* @.str548, i32 0, i32 0
  %t1851 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str548.c, i8* %t1850, i64 12)
  %t1852 = ptrtoint %nyx_string* %t1851 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1843, i64 %t1852, i64 2)
  %t1853 = getelementptr [7 x i8], [7 x i8]* @.str549, i32 0, i32 0
  %t1854 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str549.c, i8* %t1853, i64 6)
  %t1855 = ptrtoint %nyx_string* %t1854 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1843, i64 %t1855, i64 2)
  %t1856 = getelementptr [1 x i8], [1 x i8]* @.str550, i32 0, i32 0
  %t1857 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str550.c, i8* %t1856, i64 0)
  %t1858 = ptrtoint %nyx_string* %t1857 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1843, i64 %t1858, i64 2)
  %t1859 = getelementptr [1 x i8], [1 x i8]* @.str551, i32 0, i32 0
  %t1860 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str551.c, i8* %t1859, i64 0)
  %t1861 = ptrtoint %nyx_string* %t1860 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1843, i64 %t1861, i64 2)
  %t1862 = getelementptr [1 x i8], [1 x i8]* @.str552, i32 0, i32 0
  %t1863 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str552.c, i8* %t1862, i64 0)
  %t1864 = ptrtoint %nyx_string* %t1863 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1843, i64 %t1864, i64 2)
  %t1865 = getelementptr [4 x i8], [4 x i8]* @.str553, i32 0, i32 0
  %t1866 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str553.c, i8* %t1865, i64 3)
  %t1867 = ptrtoint %nyx_string* %t1866 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1843, i64 %t1867, i64 2)
  %t1868 = getelementptr [1 x i8], [1 x i8]* @.str554, i32 0, i32 0
  %t1869 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str554.c, i8* %t1868, i64 0)
  %t1870 = ptrtoint %nyx_string* %t1869 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1843, i64 %t1870, i64 2)
  %t1871 = getelementptr [1 x i8], [1 x i8]* @.str555, i32 0, i32 0
  %t1872 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str555.c, i8* %t1871, i64 0)
  %t1873 = ptrtoint %nyx_string* %t1872 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1843, i64 %t1873, i64 2)
  %t1874 = getelementptr [91 x i8], [91 x i8]* @.str556, i32 0, i32 0
  %t1875 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str556.c, i8* %t1874, i64 90)
  %t1876 = ptrtoint %nyx_string* %t1875 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1843, i64 %t1876, i64 2)
  %t1877 = getelementptr [97 x i8], [97 x i8]* @.str557, i32 0, i32 0
  %t1878 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str557.c, i8* %t1877, i64 96)
  %t1879 = ptrtoint %nyx_string* %t1878 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1843, i64 %t1879, i64 2)
  %t1880 = ptrtoint { i64, i8* }* %t1843 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1842, i64 %t1880, i64 5)
  %t1881 = load { i64, i8* }*, { i64, i8* }** %t86
  %t1882 = call { i64, i8* }* @nyx_array_new_ptr()
  %t1883 = getelementptr [23 x i8], [23 x i8]* @.str558, i32 0, i32 0
  %t1884 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str558.c, i8* %t1883, i64 22)
  %t1885 = ptrtoint %nyx_string* %t1884 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1882, i64 %t1885, i64 2)
  %t1886 = getelementptr [6 x i8], [6 x i8]* @.str559, i32 0, i32 0
  %t1887 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str559.c, i8* %t1886, i64 5)
  %t1888 = ptrtoint %nyx_string* %t1887 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1882, i64 %t1888, i64 2)
  %t1889 = getelementptr [13 x i8], [13 x i8]* @.str560, i32 0, i32 0
  %t1890 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str560.c, i8* %t1889, i64 12)
  %t1891 = ptrtoint %nyx_string* %t1890 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1882, i64 %t1891, i64 2)
  %t1892 = getelementptr [7 x i8], [7 x i8]* @.str561, i32 0, i32 0
  %t1893 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str561.c, i8* %t1892, i64 6)
  %t1894 = ptrtoint %nyx_string* %t1893 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1882, i64 %t1894, i64 2)
  %t1895 = getelementptr [1 x i8], [1 x i8]* @.str562, i32 0, i32 0
  %t1896 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str562.c, i8* %t1895, i64 0)
  %t1897 = ptrtoint %nyx_string* %t1896 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1882, i64 %t1897, i64 2)
  %t1898 = getelementptr [1 x i8], [1 x i8]* @.str563, i32 0, i32 0
  %t1899 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str563.c, i8* %t1898, i64 0)
  %t1900 = ptrtoint %nyx_string* %t1899 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1882, i64 %t1900, i64 2)
  %t1901 = getelementptr [1 x i8], [1 x i8]* @.str564, i32 0, i32 0
  %t1902 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str564.c, i8* %t1901, i64 0)
  %t1903 = ptrtoint %nyx_string* %t1902 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1882, i64 %t1903, i64 2)
  %t1904 = getelementptr [22 x i8], [22 x i8]* @.str565, i32 0, i32 0
  %t1905 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str565.c, i8* %t1904, i64 21)
  %t1906 = ptrtoint %nyx_string* %t1905 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1882, i64 %t1906, i64 2)
  %t1907 = getelementptr [1 x i8], [1 x i8]* @.str566, i32 0, i32 0
  %t1908 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str566.c, i8* %t1907, i64 0)
  %t1909 = ptrtoint %nyx_string* %t1908 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1882, i64 %t1909, i64 2)
  %t1910 = getelementptr [137 x i8], [137 x i8]* @.str567, i32 0, i32 0
  %t1911 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str567.c, i8* %t1910, i64 136)
  %t1912 = ptrtoint %nyx_string* %t1911 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1882, i64 %t1912, i64 2)
  %t1913 = getelementptr [135 x i8], [135 x i8]* @.str568, i32 0, i32 0
  %t1914 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str568.c, i8* %t1913, i64 134)
  %t1915 = ptrtoint %nyx_string* %t1914 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1882, i64 %t1915, i64 2)
  %t1916 = getelementptr [143 x i8], [143 x i8]* @.str569, i32 0, i32 0
  %t1917 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str569.c, i8* %t1916, i64 142)
  %t1918 = ptrtoint %nyx_string* %t1917 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1882, i64 %t1918, i64 2)
  %t1919 = ptrtoint { i64, i8* }* %t1882 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1881, i64 %t1919, i64 5)
  %t1920 = load { i64, i8* }*, { i64, i8* }** %t86
  %t1921 = call { i64, i8* }* @nyx_array_new_ptr()
  %t1922 = getelementptr [31 x i8], [31 x i8]* @.str570, i32 0, i32 0
  %t1923 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str570.c, i8* %t1922, i64 30)
  %t1924 = ptrtoint %nyx_string* %t1923 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1921, i64 %t1924, i64 2)
  %t1925 = getelementptr [6 x i8], [6 x i8]* @.str571, i32 0, i32 0
  %t1926 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str571.c, i8* %t1925, i64 5)
  %t1927 = ptrtoint %nyx_string* %t1926 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1921, i64 %t1927, i64 2)
  %t1928 = getelementptr [13 x i8], [13 x i8]* @.str572, i32 0, i32 0
  %t1929 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str572.c, i8* %t1928, i64 12)
  %t1930 = ptrtoint %nyx_string* %t1929 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1921, i64 %t1930, i64 2)
  %t1931 = getelementptr [7 x i8], [7 x i8]* @.str573, i32 0, i32 0
  %t1932 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str573.c, i8* %t1931, i64 6)
  %t1933 = ptrtoint %nyx_string* %t1932 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1921, i64 %t1933, i64 2)
  %t1934 = getelementptr [1 x i8], [1 x i8]* @.str574, i32 0, i32 0
  %t1935 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str574.c, i8* %t1934, i64 0)
  %t1936 = ptrtoint %nyx_string* %t1935 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1921, i64 %t1936, i64 2)
  %t1937 = getelementptr [1 x i8], [1 x i8]* @.str575, i32 0, i32 0
  %t1938 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str575.c, i8* %t1937, i64 0)
  %t1939 = ptrtoint %nyx_string* %t1938 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1921, i64 %t1939, i64 2)
  %t1940 = getelementptr [1 x i8], [1 x i8]* @.str576, i32 0, i32 0
  %t1941 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str576.c, i8* %t1940, i64 0)
  %t1942 = ptrtoint %nyx_string* %t1941 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1921, i64 %t1942, i64 2)
  %t1943 = getelementptr [20 x i8], [20 x i8]* @.str577, i32 0, i32 0
  %t1944 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str577.c, i8* %t1943, i64 19)
  %t1945 = ptrtoint %nyx_string* %t1944 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1921, i64 %t1945, i64 2)
  %t1946 = getelementptr [1 x i8], [1 x i8]* @.str578, i32 0, i32 0
  %t1947 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str578.c, i8* %t1946, i64 0)
  %t1948 = ptrtoint %nyx_string* %t1947 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1921, i64 %t1948, i64 2)
  %t1949 = getelementptr [80 x i8], [80 x i8]* @.str579, i32 0, i32 0
  %t1950 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str579.c, i8* %t1949, i64 79)
  %t1951 = ptrtoint %nyx_string* %t1950 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1921, i64 %t1951, i64 2)
  %t1952 = getelementptr [145 x i8], [145 x i8]* @.str580, i32 0, i32 0
  %t1953 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str580.c, i8* %t1952, i64 144)
  %t1954 = ptrtoint %nyx_string* %t1953 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1921, i64 %t1954, i64 2)
  %t1955 = getelementptr [156 x i8], [156 x i8]* @.str581, i32 0, i32 0
  %t1956 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str581.c, i8* %t1955, i64 155)
  %t1957 = ptrtoint %nyx_string* %t1956 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1921, i64 %t1957, i64 2)
  %t1958 = ptrtoint { i64, i8* }* %t1921 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1920, i64 %t1958, i64 5)
  %t1959 = load { i64, i8* }*, { i64, i8* }** %t86
  %t1960 = call { i64, i8* }* @nyx_array_new_ptr()
  %t1961 = getelementptr [19 x i8], [19 x i8]* @.str582, i32 0, i32 0
  %t1962 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str582.c, i8* %t1961, i64 18)
  %t1963 = ptrtoint %nyx_string* %t1962 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1960, i64 %t1963, i64 2)
  %t1964 = getelementptr [6 x i8], [6 x i8]* @.str583, i32 0, i32 0
  %t1965 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str583.c, i8* %t1964, i64 5)
  %t1966 = ptrtoint %nyx_string* %t1965 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1960, i64 %t1966, i64 2)
  %t1967 = getelementptr [5 x i8], [5 x i8]* @.str584, i32 0, i32 0
  %t1968 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str584.c, i8* %t1967, i64 4)
  %t1969 = ptrtoint %nyx_string* %t1968 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1960, i64 %t1969, i64 2)
  %t1970 = getelementptr [7 x i8], [7 x i8]* @.str585, i32 0, i32 0
  %t1971 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str585.c, i8* %t1970, i64 6)
  %t1972 = ptrtoint %nyx_string* %t1971 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1960, i64 %t1972, i64 2)
  %t1973 = getelementptr [1 x i8], [1 x i8]* @.str586, i32 0, i32 0
  %t1974 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str586.c, i8* %t1973, i64 0)
  %t1975 = ptrtoint %nyx_string* %t1974 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1960, i64 %t1975, i64 2)
  %t1976 = getelementptr [1 x i8], [1 x i8]* @.str587, i32 0, i32 0
  %t1977 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str587.c, i8* %t1976, i64 0)
  %t1978 = ptrtoint %nyx_string* %t1977 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1960, i64 %t1978, i64 2)
  %t1979 = getelementptr [1 x i8], [1 x i8]* @.str588, i32 0, i32 0
  %t1980 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str588.c, i8* %t1979, i64 0)
  %t1981 = ptrtoint %nyx_string* %t1980 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1960, i64 %t1981, i64 2)
  %t1982 = getelementptr [1 x i8], [1 x i8]* @.str589, i32 0, i32 0
  %t1983 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str589.c, i8* %t1982, i64 0)
  %t1984 = ptrtoint %nyx_string* %t1983 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1960, i64 %t1984, i64 2)
  %t1985 = getelementptr [1 x i8], [1 x i8]* @.str590, i32 0, i32 0
  %t1986 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str590.c, i8* %t1985, i64 0)
  %t1987 = ptrtoint %nyx_string* %t1986 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1960, i64 %t1987, i64 2)
  %t1988 = getelementptr [50 x i8], [50 x i8]* @.str591, i32 0, i32 0
  %t1989 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str591.c, i8* %t1988, i64 49)
  %t1990 = ptrtoint %nyx_string* %t1989 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1960, i64 %t1990, i64 2)
  %t1991 = getelementptr [180 x i8], [180 x i8]* @.str592, i32 0, i32 0
  %t1992 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str592.c, i8* %t1991, i64 179)
  %t1993 = ptrtoint %nyx_string* %t1992 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1960, i64 %t1993, i64 2)
  %t1994 = getelementptr [217 x i8], [217 x i8]* @.str593, i32 0, i32 0
  %t1995 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str593.c, i8* %t1994, i64 216)
  %t1996 = ptrtoint %nyx_string* %t1995 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1960, i64 %t1996, i64 2)
  %t1997 = ptrtoint { i64, i8* }* %t1960 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1959, i64 %t1997, i64 5)
  %t1998 = load { i64, i8* }*, { i64, i8* }** %t86
  %t1999 = call { i64, i8* }* @nyx_array_new_ptr()
  %t2000 = getelementptr [20 x i8], [20 x i8]* @.str594, i32 0, i32 0
  %t2001 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str594.c, i8* %t2000, i64 19)
  %t2002 = ptrtoint %nyx_string* %t2001 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1999, i64 %t2002, i64 2)
  %t2003 = getelementptr [6 x i8], [6 x i8]* @.str595, i32 0, i32 0
  %t2004 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str595.c, i8* %t2003, i64 5)
  %t2005 = ptrtoint %nyx_string* %t2004 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1999, i64 %t2005, i64 2)
  %t2006 = getelementptr [13 x i8], [13 x i8]* @.str596, i32 0, i32 0
  %t2007 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str596.c, i8* %t2006, i64 12)
  %t2008 = ptrtoint %nyx_string* %t2007 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1999, i64 %t2008, i64 2)
  %t2009 = getelementptr [7 x i8], [7 x i8]* @.str597, i32 0, i32 0
  %t2010 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str597.c, i8* %t2009, i64 6)
  %t2011 = ptrtoint %nyx_string* %t2010 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1999, i64 %t2011, i64 2)
  %t2012 = getelementptr [1 x i8], [1 x i8]* @.str598, i32 0, i32 0
  %t2013 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str598.c, i8* %t2012, i64 0)
  %t2014 = ptrtoint %nyx_string* %t2013 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1999, i64 %t2014, i64 2)
  %t2015 = getelementptr [1 x i8], [1 x i8]* @.str599, i32 0, i32 0
  %t2016 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str599.c, i8* %t2015, i64 0)
  %t2017 = ptrtoint %nyx_string* %t2016 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1999, i64 %t2017, i64 2)
  %t2018 = getelementptr [1 x i8], [1 x i8]* @.str600, i32 0, i32 0
  %t2019 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str600.c, i8* %t2018, i64 0)
  %t2020 = ptrtoint %nyx_string* %t2019 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1999, i64 %t2020, i64 2)
  %t2021 = getelementptr [1 x i8], [1 x i8]* @.str601, i32 0, i32 0
  %t2022 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str601.c, i8* %t2021, i64 0)
  %t2023 = ptrtoint %nyx_string* %t2022 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1999, i64 %t2023, i64 2)
  %t2024 = getelementptr [1 x i8], [1 x i8]* @.str602, i32 0, i32 0
  %t2025 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str602.c, i8* %t2024, i64 0)
  %t2026 = ptrtoint %nyx_string* %t2025 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1999, i64 %t2026, i64 2)
  %t2027 = getelementptr [35 x i8], [35 x i8]* @.str603, i32 0, i32 0
  %t2028 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str603.c, i8* %t2027, i64 34)
  %t2029 = ptrtoint %nyx_string* %t2028 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1999, i64 %t2029, i64 2)
  %t2030 = getelementptr [202 x i8], [202 x i8]* @.str604, i32 0, i32 0
  %t2031 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str604.c, i8* %t2030, i64 201)
  %t2032 = ptrtoint %nyx_string* %t2031 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1999, i64 %t2032, i64 2)
  %t2033 = getelementptr [229 x i8], [229 x i8]* @.str605, i32 0, i32 0
  %t2034 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str605.c, i8* %t2033, i64 228)
  %t2035 = ptrtoint %nyx_string* %t2034 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1999, i64 %t2035, i64 2)
  %t2036 = ptrtoint { i64, i8* }* %t1999 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1998, i64 %t2036, i64 5)
  %t2037 = load { i64, i8* }*, { i64, i8* }** %t86
  %t2038 = call { i64, i8* }* @nyx_array_new_ptr()
  %t2039 = getelementptr [26 x i8], [26 x i8]* @.str606, i32 0, i32 0
  %t2040 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str606.c, i8* %t2039, i64 25)
  %t2041 = ptrtoint %nyx_string* %t2040 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2038, i64 %t2041, i64 2)
  %t2042 = getelementptr [6 x i8], [6 x i8]* @.str607, i32 0, i32 0
  %t2043 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str607.c, i8* %t2042, i64 5)
  %t2044 = ptrtoint %nyx_string* %t2043 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2038, i64 %t2044, i64 2)
  %t2045 = getelementptr [6 x i8], [6 x i8]* @.str608, i32 0, i32 0
  %t2046 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str608.c, i8* %t2045, i64 5)
  %t2047 = ptrtoint %nyx_string* %t2046 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2038, i64 %t2047, i64 2)
  %t2048 = getelementptr [7 x i8], [7 x i8]* @.str609, i32 0, i32 0
  %t2049 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str609.c, i8* %t2048, i64 6)
  %t2050 = ptrtoint %nyx_string* %t2049 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2038, i64 %t2050, i64 2)
  %t2051 = getelementptr [1 x i8], [1 x i8]* @.str610, i32 0, i32 0
  %t2052 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str610.c, i8* %t2051, i64 0)
  %t2053 = ptrtoint %nyx_string* %t2052 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2038, i64 %t2053, i64 2)
  %t2054 = getelementptr [1 x i8], [1 x i8]* @.str611, i32 0, i32 0
  %t2055 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str611.c, i8* %t2054, i64 0)
  %t2056 = ptrtoint %nyx_string* %t2055 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2038, i64 %t2056, i64 2)
  %t2057 = getelementptr [1 x i8], [1 x i8]* @.str612, i32 0, i32 0
  %t2058 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str612.c, i8* %t2057, i64 0)
  %t2059 = ptrtoint %nyx_string* %t2058 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2038, i64 %t2059, i64 2)
  %t2060 = getelementptr [1 x i8], [1 x i8]* @.str613, i32 0, i32 0
  %t2061 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str613.c, i8* %t2060, i64 0)
  %t2062 = ptrtoint %nyx_string* %t2061 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2038, i64 %t2062, i64 2)
  %t2063 = getelementptr [1 x i8], [1 x i8]* @.str614, i32 0, i32 0
  %t2064 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str614.c, i8* %t2063, i64 0)
  %t2065 = ptrtoint %nyx_string* %t2064 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2038, i64 %t2065, i64 2)
  %t2066 = getelementptr [37 x i8], [37 x i8]* @.str615, i32 0, i32 0
  %t2067 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str615.c, i8* %t2066, i64 36)
  %t2068 = ptrtoint %nyx_string* %t2067 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2038, i64 %t2068, i64 2)
  %t2069 = getelementptr [153 x i8], [153 x i8]* @.str616, i32 0, i32 0
  %t2070 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str616.c, i8* %t2069, i64 152)
  %t2071 = ptrtoint %nyx_string* %t2070 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2038, i64 %t2071, i64 2)
  %t2072 = getelementptr [166 x i8], [166 x i8]* @.str617, i32 0, i32 0
  %t2073 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str617.c, i8* %t2072, i64 165)
  %t2074 = ptrtoint %nyx_string* %t2073 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2038, i64 %t2074, i64 2)
  %t2075 = ptrtoint { i64, i8* }* %t2038 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2037, i64 %t2075, i64 5)
  %t2076 = load { i64, i8* }*, { i64, i8* }** %t86
  %t2077 = call { i64, i8* }* @nyx_array_new_ptr()
  %t2078 = getelementptr [24 x i8], [24 x i8]* @.str618, i32 0, i32 0
  %t2079 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str618.c, i8* %t2078, i64 23)
  %t2080 = ptrtoint %nyx_string* %t2079 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2077, i64 %t2080, i64 2)
  %t2081 = getelementptr [6 x i8], [6 x i8]* @.str619, i32 0, i32 0
  %t2082 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str619.c, i8* %t2081, i64 5)
  %t2083 = ptrtoint %nyx_string* %t2082 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2077, i64 %t2083, i64 2)
  %t2084 = getelementptr [5 x i8], [5 x i8]* @.str620, i32 0, i32 0
  %t2085 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str620.c, i8* %t2084, i64 4)
  %t2086 = ptrtoint %nyx_string* %t2085 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2077, i64 %t2086, i64 2)
  %t2087 = getelementptr [7 x i8], [7 x i8]* @.str621, i32 0, i32 0
  %t2088 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str621.c, i8* %t2087, i64 6)
  %t2089 = ptrtoint %nyx_string* %t2088 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2077, i64 %t2089, i64 2)
  %t2090 = getelementptr [1 x i8], [1 x i8]* @.str622, i32 0, i32 0
  %t2091 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str622.c, i8* %t2090, i64 0)
  %t2092 = ptrtoint %nyx_string* %t2091 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2077, i64 %t2092, i64 2)
  %t2093 = getelementptr [1 x i8], [1 x i8]* @.str623, i32 0, i32 0
  %t2094 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str623.c, i8* %t2093, i64 0)
  %t2095 = ptrtoint %nyx_string* %t2094 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2077, i64 %t2095, i64 2)
  %t2096 = getelementptr [1 x i8], [1 x i8]* @.str624, i32 0, i32 0
  %t2097 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str624.c, i8* %t2096, i64 0)
  %t2098 = ptrtoint %nyx_string* %t2097 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2077, i64 %t2098, i64 2)
  %t2099 = getelementptr [1 x i8], [1 x i8]* @.str625, i32 0, i32 0
  %t2100 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str625.c, i8* %t2099, i64 0)
  %t2101 = ptrtoint %nyx_string* %t2100 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2077, i64 %t2101, i64 2)
  %t2102 = getelementptr [1 x i8], [1 x i8]* @.str626, i32 0, i32 0
  %t2103 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str626.c, i8* %t2102, i64 0)
  %t2104 = ptrtoint %nyx_string* %t2103 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2077, i64 %t2104, i64 2)
  %t2105 = getelementptr [170 x i8], [170 x i8]* @.str627, i32 0, i32 0
  %t2106 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str627.c, i8* %t2105, i64 169)
  %t2107 = ptrtoint %nyx_string* %t2106 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2077, i64 %t2107, i64 2)
  %t2108 = getelementptr [290 x i8], [290 x i8]* @.str628, i32 0, i32 0
  %t2109 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str628.c, i8* %t2108, i64 289)
  %t2110 = ptrtoint %nyx_string* %t2109 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2077, i64 %t2110, i64 2)
  %t2111 = getelementptr [308 x i8], [308 x i8]* @.str629, i32 0, i32 0
  %t2112 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str629.c, i8* %t2111, i64 307)
  %t2113 = ptrtoint %nyx_string* %t2112 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2077, i64 %t2113, i64 2)
  %t2114 = ptrtoint { i64, i8* }* %t2077 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2076, i64 %t2114, i64 5)
  %t2115 = load { i64, i8* }*, { i64, i8* }** %t86
  %t2116 = call { i64, i8* }* @nyx_array_new_ptr()
  %t2117 = getelementptr [25 x i8], [25 x i8]* @.str630, i32 0, i32 0
  %t2118 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str630.c, i8* %t2117, i64 24)
  %t2119 = ptrtoint %nyx_string* %t2118 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2116, i64 %t2119, i64 2)
  %t2120 = getelementptr [6 x i8], [6 x i8]* @.str631, i32 0, i32 0
  %t2121 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str631.c, i8* %t2120, i64 5)
  %t2122 = ptrtoint %nyx_string* %t2121 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2116, i64 %t2122, i64 2)
  %t2123 = getelementptr [5 x i8], [5 x i8]* @.str632, i32 0, i32 0
  %t2124 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str632.c, i8* %t2123, i64 4)
  %t2125 = ptrtoint %nyx_string* %t2124 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2116, i64 %t2125, i64 2)
  %t2126 = getelementptr [7 x i8], [7 x i8]* @.str633, i32 0, i32 0
  %t2127 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str633.c, i8* %t2126, i64 6)
  %t2128 = ptrtoint %nyx_string* %t2127 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2116, i64 %t2128, i64 2)
  %t2129 = getelementptr [1 x i8], [1 x i8]* @.str634, i32 0, i32 0
  %t2130 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str634.c, i8* %t2129, i64 0)
  %t2131 = ptrtoint %nyx_string* %t2130 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2116, i64 %t2131, i64 2)
  %t2132 = getelementptr [1 x i8], [1 x i8]* @.str635, i32 0, i32 0
  %t2133 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str635.c, i8* %t2132, i64 0)
  %t2134 = ptrtoint %nyx_string* %t2133 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2116, i64 %t2134, i64 2)
  %t2135 = getelementptr [1 x i8], [1 x i8]* @.str636, i32 0, i32 0
  %t2136 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str636.c, i8* %t2135, i64 0)
  %t2137 = ptrtoint %nyx_string* %t2136 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2116, i64 %t2137, i64 2)
  %t2138 = getelementptr [11 x i8], [11 x i8]* @.str637, i32 0, i32 0
  %t2139 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str637.c, i8* %t2138, i64 10)
  %t2140 = ptrtoint %nyx_string* %t2139 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2116, i64 %t2140, i64 2)
  %t2141 = getelementptr [1 x i8], [1 x i8]* @.str638, i32 0, i32 0
  %t2142 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str638.c, i8* %t2141, i64 0)
  %t2143 = ptrtoint %nyx_string* %t2142 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2116, i64 %t2143, i64 2)
  %t2144 = getelementptr [36 x i8], [36 x i8]* @.str639, i32 0, i32 0
  %t2145 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str639.c, i8* %t2144, i64 35)
  %t2146 = ptrtoint %nyx_string* %t2145 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2116, i64 %t2146, i64 2)
  %t2147 = getelementptr [115 x i8], [115 x i8]* @.str640, i32 0, i32 0
  %t2148 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str640.c, i8* %t2147, i64 114)
  %t2149 = ptrtoint %nyx_string* %t2148 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2116, i64 %t2149, i64 2)
  %t2150 = getelementptr [121 x i8], [121 x i8]* @.str641, i32 0, i32 0
  %t2151 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str641.c, i8* %t2150, i64 120)
  %t2152 = ptrtoint %nyx_string* %t2151 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2116, i64 %t2152, i64 2)
  %t2153 = ptrtoint { i64, i8* }* %t2116 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2115, i64 %t2153, i64 5)
  %t2154 = load { i64, i8* }*, { i64, i8* }** %t86
  %t2155 = call { i64, i8* }* @nyx_array_new_ptr()
  %t2156 = getelementptr [33 x i8], [33 x i8]* @.str642, i32 0, i32 0
  %t2157 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str642.c, i8* %t2156, i64 32)
  %t2158 = ptrtoint %nyx_string* %t2157 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2155, i64 %t2158, i64 2)
  %t2159 = getelementptr [6 x i8], [6 x i8]* @.str643, i32 0, i32 0
  %t2160 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str643.c, i8* %t2159, i64 5)
  %t2161 = ptrtoint %nyx_string* %t2160 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2155, i64 %t2161, i64 2)
  %t2162 = getelementptr [4 x i8], [4 x i8]* @.str644, i32 0, i32 0
  %t2163 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str644.c, i8* %t2162, i64 3)
  %t2164 = ptrtoint %nyx_string* %t2163 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2155, i64 %t2164, i64 2)
  %t2165 = getelementptr [7 x i8], [7 x i8]* @.str645, i32 0, i32 0
  %t2166 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str645.c, i8* %t2165, i64 6)
  %t2167 = ptrtoint %nyx_string* %t2166 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2155, i64 %t2167, i64 2)
  %t2168 = getelementptr [7 x i8], [7 x i8]* @.str646, i32 0, i32 0
  %t2169 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str646.c, i8* %t2168, i64 6)
  %t2170 = ptrtoint %nyx_string* %t2169 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2155, i64 %t2170, i64 2)
  %t2171 = getelementptr [1 x i8], [1 x i8]* @.str647, i32 0, i32 0
  %t2172 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str647.c, i8* %t2171, i64 0)
  %t2173 = ptrtoint %nyx_string* %t2172 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2155, i64 %t2173, i64 2)
  %t2174 = getelementptr [1 x i8], [1 x i8]* @.str648, i32 0, i32 0
  %t2175 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str648.c, i8* %t2174, i64 0)
  %t2176 = ptrtoint %nyx_string* %t2175 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2155, i64 %t2176, i64 2)
  %t2177 = getelementptr [17 x i8], [17 x i8]* @.str649, i32 0, i32 0
  %t2178 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str649.c, i8* %t2177, i64 16)
  %t2179 = ptrtoint %nyx_string* %t2178 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2155, i64 %t2179, i64 2)
  %t2180 = getelementptr [1 x i8], [1 x i8]* @.str650, i32 0, i32 0
  %t2181 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str650.c, i8* %t2180, i64 0)
  %t2182 = ptrtoint %nyx_string* %t2181 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2155, i64 %t2182, i64 2)
  %t2183 = getelementptr [1 x i8], [1 x i8]* @.str651, i32 0, i32 0
  %t2184 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str651.c, i8* %t2183, i64 0)
  %t2185 = ptrtoint %nyx_string* %t2184 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2155, i64 %t2185, i64 2)
  %t2186 = getelementptr [49 x i8], [49 x i8]* @.str652, i32 0, i32 0
  %t2187 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str652.c, i8* %t2186, i64 48)
  %t2188 = ptrtoint %nyx_string* %t2187 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2155, i64 %t2188, i64 2)
  %t2189 = getelementptr [58 x i8], [58 x i8]* @.str653, i32 0, i32 0
  %t2190 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str653.c, i8* %t2189, i64 57)
  %t2191 = ptrtoint %nyx_string* %t2190 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2155, i64 %t2191, i64 2)
  %t2192 = ptrtoint { i64, i8* }* %t2155 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2154, i64 %t2192, i64 5)
  %t2193 = load { i64, i8* }*, { i64, i8* }** %t86
  %t2194 = call { i64, i8* }* @nyx_array_new_ptr()
  %t2195 = getelementptr [21 x i8], [21 x i8]* @.str654, i32 0, i32 0
  %t2196 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str654.c, i8* %t2195, i64 20)
  %t2197 = ptrtoint %nyx_string* %t2196 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2194, i64 %t2197, i64 2)
  %t2198 = getelementptr [6 x i8], [6 x i8]* @.str655, i32 0, i32 0
  %t2199 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str655.c, i8* %t2198, i64 5)
  %t2200 = ptrtoint %nyx_string* %t2199 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2194, i64 %t2200, i64 2)
  %t2201 = getelementptr [4 x i8], [4 x i8]* @.str656, i32 0, i32 0
  %t2202 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str656.c, i8* %t2201, i64 3)
  %t2203 = ptrtoint %nyx_string* %t2202 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2194, i64 %t2203, i64 2)
  %t2204 = getelementptr [7 x i8], [7 x i8]* @.str657, i32 0, i32 0
  %t2205 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str657.c, i8* %t2204, i64 6)
  %t2206 = ptrtoint %nyx_string* %t2205 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2194, i64 %t2206, i64 2)
  %t2207 = getelementptr [7 x i8], [7 x i8]* @.str658, i32 0, i32 0
  %t2208 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str658.c, i8* %t2207, i64 6)
  %t2209 = ptrtoint %nyx_string* %t2208 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2194, i64 %t2209, i64 2)
  %t2210 = getelementptr [1 x i8], [1 x i8]* @.str659, i32 0, i32 0
  %t2211 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str659.c, i8* %t2210, i64 0)
  %t2212 = ptrtoint %nyx_string* %t2211 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2194, i64 %t2212, i64 2)
  %t2213 = getelementptr [1 x i8], [1 x i8]* @.str660, i32 0, i32 0
  %t2214 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str660.c, i8* %t2213, i64 0)
  %t2215 = ptrtoint %nyx_string* %t2214 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2194, i64 %t2215, i64 2)
  %t2216 = getelementptr [14 x i8], [14 x i8]* @.str661, i32 0, i32 0
  %t2217 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str661.c, i8* %t2216, i64 13)
  %t2218 = ptrtoint %nyx_string* %t2217 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2194, i64 %t2218, i64 2)
  %t2219 = getelementptr [1 x i8], [1 x i8]* @.str662, i32 0, i32 0
  %t2220 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str662.c, i8* %t2219, i64 0)
  %t2221 = ptrtoint %nyx_string* %t2220 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2194, i64 %t2221, i64 2)
  %t2222 = getelementptr [1 x i8], [1 x i8]* @.str663, i32 0, i32 0
  %t2223 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str663.c, i8* %t2222, i64 0)
  %t2224 = ptrtoint %nyx_string* %t2223 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2194, i64 %t2224, i64 2)
  %t2225 = getelementptr [28 x i8], [28 x i8]* @.str664, i32 0, i32 0
  %t2226 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str664.c, i8* %t2225, i64 27)
  %t2227 = ptrtoint %nyx_string* %t2226 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2194, i64 %t2227, i64 2)
  %t2228 = getelementptr [35 x i8], [35 x i8]* @.str665, i32 0, i32 0
  %t2229 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str665.c, i8* %t2228, i64 34)
  %t2230 = ptrtoint %nyx_string* %t2229 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2194, i64 %t2230, i64 2)
  %t2231 = ptrtoint { i64, i8* }* %t2194 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2193, i64 %t2231, i64 5)
  %t2232 = load { i64, i8* }*, { i64, i8* }** %t86
  %t2233 = call { i64, i8* }* @nyx_array_new_ptr()
  %t2234 = getelementptr [19 x i8], [19 x i8]* @.str666, i32 0, i32 0
  %t2235 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str666.c, i8* %t2234, i64 18)
  %t2236 = ptrtoint %nyx_string* %t2235 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2233, i64 %t2236, i64 2)
  %t2237 = getelementptr [6 x i8], [6 x i8]* @.str667, i32 0, i32 0
  %t2238 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str667.c, i8* %t2237, i64 5)
  %t2239 = ptrtoint %nyx_string* %t2238 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2233, i64 %t2239, i64 2)
  %t2240 = getelementptr [4 x i8], [4 x i8]* @.str668, i32 0, i32 0
  %t2241 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str668.c, i8* %t2240, i64 3)
  %t2242 = ptrtoint %nyx_string* %t2241 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2233, i64 %t2242, i64 2)
  %t2243 = getelementptr [7 x i8], [7 x i8]* @.str669, i32 0, i32 0
  %t2244 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str669.c, i8* %t2243, i64 6)
  %t2245 = ptrtoint %nyx_string* %t2244 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2233, i64 %t2245, i64 2)
  %t2246 = getelementptr [7 x i8], [7 x i8]* @.str670, i32 0, i32 0
  %t2247 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str670.c, i8* %t2246, i64 6)
  %t2248 = ptrtoint %nyx_string* %t2247 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2233, i64 %t2248, i64 2)
  %t2249 = getelementptr [1 x i8], [1 x i8]* @.str671, i32 0, i32 0
  %t2250 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str671.c, i8* %t2249, i64 0)
  %t2251 = ptrtoint %nyx_string* %t2250 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2233, i64 %t2251, i64 2)
  %t2252 = getelementptr [1 x i8], [1 x i8]* @.str672, i32 0, i32 0
  %t2253 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str672.c, i8* %t2252, i64 0)
  %t2254 = ptrtoint %nyx_string* %t2253 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2233, i64 %t2254, i64 2)
  %t2255 = getelementptr [14 x i8], [14 x i8]* @.str673, i32 0, i32 0
  %t2256 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str673.c, i8* %t2255, i64 13)
  %t2257 = ptrtoint %nyx_string* %t2256 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2233, i64 %t2257, i64 2)
  %t2258 = getelementptr [1 x i8], [1 x i8]* @.str674, i32 0, i32 0
  %t2259 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str674.c, i8* %t2258, i64 0)
  %t2260 = ptrtoint %nyx_string* %t2259 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2233, i64 %t2260, i64 2)
  %t2261 = getelementptr [1 x i8], [1 x i8]* @.str675, i32 0, i32 0
  %t2262 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str675.c, i8* %t2261, i64 0)
  %t2263 = ptrtoint %nyx_string* %t2262 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2233, i64 %t2263, i64 2)
  %t2264 = getelementptr [37 x i8], [37 x i8]* @.str676, i32 0, i32 0
  %t2265 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str676.c, i8* %t2264, i64 36)
  %t2266 = ptrtoint %nyx_string* %t2265 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2233, i64 %t2266, i64 2)
  %t2267 = getelementptr [48 x i8], [48 x i8]* @.str677, i32 0, i32 0
  %t2268 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str677.c, i8* %t2267, i64 47)
  %t2269 = ptrtoint %nyx_string* %t2268 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2233, i64 %t2269, i64 2)
  %t2270 = ptrtoint { i64, i8* }* %t2233 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2232, i64 %t2270, i64 5)
  %t2271 = load { i64, i8* }*, { i64, i8* }** %t86
  %t2272 = call { i64, i8* }* @nyx_array_new_ptr()
  %t2273 = getelementptr [24 x i8], [24 x i8]* @.str678, i32 0, i32 0
  %t2274 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str678.c, i8* %t2273, i64 23)
  %t2275 = ptrtoint %nyx_string* %t2274 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2272, i64 %t2275, i64 2)
  %t2276 = getelementptr [6 x i8], [6 x i8]* @.str679, i32 0, i32 0
  %t2277 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str679.c, i8* %t2276, i64 5)
  %t2278 = ptrtoint %nyx_string* %t2277 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2272, i64 %t2278, i64 2)
  %t2279 = getelementptr [13 x i8], [13 x i8]* @.str680, i32 0, i32 0
  %t2280 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str680.c, i8* %t2279, i64 12)
  %t2281 = ptrtoint %nyx_string* %t2280 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2272, i64 %t2281, i64 2)
  %t2282 = getelementptr [7 x i8], [7 x i8]* @.str681, i32 0, i32 0
  %t2283 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str681.c, i8* %t2282, i64 6)
  %t2284 = ptrtoint %nyx_string* %t2283 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2272, i64 %t2284, i64 2)
  %t2285 = getelementptr [7 x i8], [7 x i8]* @.str682, i32 0, i32 0
  %t2286 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str682.c, i8* %t2285, i64 6)
  %t2287 = ptrtoint %nyx_string* %t2286 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2272, i64 %t2287, i64 2)
  %t2288 = getelementptr [1 x i8], [1 x i8]* @.str683, i32 0, i32 0
  %t2289 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str683.c, i8* %t2288, i64 0)
  %t2290 = ptrtoint %nyx_string* %t2289 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2272, i64 %t2290, i64 2)
  %t2291 = getelementptr [1 x i8], [1 x i8]* @.str684, i32 0, i32 0
  %t2292 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str684.c, i8* %t2291, i64 0)
  %t2293 = ptrtoint %nyx_string* %t2292 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2272, i64 %t2293, i64 2)
  %t2294 = getelementptr [1 x i8], [1 x i8]* @.str685, i32 0, i32 0
  %t2295 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str685.c, i8* %t2294, i64 0)
  %t2296 = ptrtoint %nyx_string* %t2295 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2272, i64 %t2296, i64 2)
  %t2297 = getelementptr [1 x i8], [1 x i8]* @.str686, i32 0, i32 0
  %t2298 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str686.c, i8* %t2297, i64 0)
  %t2299 = ptrtoint %nyx_string* %t2298 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2272, i64 %t2299, i64 2)
  %t2300 = getelementptr [41 x i8], [41 x i8]* @.str687, i32 0, i32 0
  %t2301 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str687.c, i8* %t2300, i64 40)
  %t2302 = ptrtoint %nyx_string* %t2301 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2272, i64 %t2302, i64 2)
  %t2303 = getelementptr [98 x i8], [98 x i8]* @.str688, i32 0, i32 0
  %t2304 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str688.c, i8* %t2303, i64 97)
  %t2305 = ptrtoint %nyx_string* %t2304 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2272, i64 %t2305, i64 2)
  %t2306 = getelementptr [94 x i8], [94 x i8]* @.str689, i32 0, i32 0
  %t2307 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str689.c, i8* %t2306, i64 93)
  %t2308 = ptrtoint %nyx_string* %t2307 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2272, i64 %t2308, i64 2)
  %t2309 = ptrtoint { i64, i8* }* %t2272 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2271, i64 %t2309, i64 5)
  %t2310 = load { i64, i8* }*, { i64, i8* }** %t86
  %t2311 = call { i64, i8* }* @nyx_array_new_ptr()
  %t2312 = getelementptr [25 x i8], [25 x i8]* @.str690, i32 0, i32 0
  %t2313 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str690.c, i8* %t2312, i64 24)
  %t2314 = ptrtoint %nyx_string* %t2313 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2311, i64 %t2314, i64 2)
  %t2315 = getelementptr [6 x i8], [6 x i8]* @.str691, i32 0, i32 0
  %t2316 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str691.c, i8* %t2315, i64 5)
  %t2317 = ptrtoint %nyx_string* %t2316 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2311, i64 %t2317, i64 2)
  %t2318 = getelementptr [4 x i8], [4 x i8]* @.str692, i32 0, i32 0
  %t2319 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str692.c, i8* %t2318, i64 3)
  %t2320 = ptrtoint %nyx_string* %t2319 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2311, i64 %t2320, i64 2)
  %t2321 = getelementptr [7 x i8], [7 x i8]* @.str693, i32 0, i32 0
  %t2322 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str693.c, i8* %t2321, i64 6)
  %t2323 = ptrtoint %nyx_string* %t2322 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2311, i64 %t2323, i64 2)
  %t2324 = getelementptr [7 x i8], [7 x i8]* @.str694, i32 0, i32 0
  %t2325 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str694.c, i8* %t2324, i64 6)
  %t2326 = ptrtoint %nyx_string* %t2325 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2311, i64 %t2326, i64 2)
  %t2327 = getelementptr [1 x i8], [1 x i8]* @.str695, i32 0, i32 0
  %t2328 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str695.c, i8* %t2327, i64 0)
  %t2329 = ptrtoint %nyx_string* %t2328 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2311, i64 %t2329, i64 2)
  %t2330 = getelementptr [1 x i8], [1 x i8]* @.str696, i32 0, i32 0
  %t2331 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str696.c, i8* %t2330, i64 0)
  %t2332 = ptrtoint %nyx_string* %t2331 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2311, i64 %t2332, i64 2)
  %t2333 = getelementptr [1 x i8], [1 x i8]* @.str697, i32 0, i32 0
  %t2334 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str697.c, i8* %t2333, i64 0)
  %t2335 = ptrtoint %nyx_string* %t2334 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2311, i64 %t2335, i64 2)
  %t2336 = getelementptr [1 x i8], [1 x i8]* @.str698, i32 0, i32 0
  %t2337 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str698.c, i8* %t2336, i64 0)
  %t2338 = ptrtoint %nyx_string* %t2337 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2311, i64 %t2338, i64 2)
  %t2339 = getelementptr [46 x i8], [46 x i8]* @.str699, i32 0, i32 0
  %t2340 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str699.c, i8* %t2339, i64 45)
  %t2341 = ptrtoint %nyx_string* %t2340 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2311, i64 %t2341, i64 2)
  %t2342 = getelementptr [143 x i8], [143 x i8]* @.str700, i32 0, i32 0
  %t2343 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str700.c, i8* %t2342, i64 142)
  %t2344 = ptrtoint %nyx_string* %t2343 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2311, i64 %t2344, i64 2)
  %t2345 = getelementptr [136 x i8], [136 x i8]* @.str701, i32 0, i32 0
  %t2346 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str701.c, i8* %t2345, i64 135)
  %t2347 = ptrtoint %nyx_string* %t2346 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2311, i64 %t2347, i64 2)
  %t2348 = ptrtoint { i64, i8* }* %t2311 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2310, i64 %t2348, i64 5)
  %t2349 = load { i64, i8* }*, { i64, i8* }** %t86
  %t2350 = call { i64, i8* }* @nyx_array_new_ptr()
  %t2351 = getelementptr [20 x i8], [20 x i8]* @.str702, i32 0, i32 0
  %t2352 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str702.c, i8* %t2351, i64 19)
  %t2353 = ptrtoint %nyx_string* %t2352 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2350, i64 %t2353, i64 2)
  %t2354 = getelementptr [6 x i8], [6 x i8]* @.str703, i32 0, i32 0
  %t2355 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str703.c, i8* %t2354, i64 5)
  %t2356 = ptrtoint %nyx_string* %t2355 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2350, i64 %t2356, i64 2)
  %t2357 = getelementptr [4 x i8], [4 x i8]* @.str704, i32 0, i32 0
  %t2358 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str704.c, i8* %t2357, i64 3)
  %t2359 = ptrtoint %nyx_string* %t2358 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2350, i64 %t2359, i64 2)
  %t2360 = getelementptr [7 x i8], [7 x i8]* @.str705, i32 0, i32 0
  %t2361 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str705.c, i8* %t2360, i64 6)
  %t2362 = ptrtoint %nyx_string* %t2361 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2350, i64 %t2362, i64 2)
  %t2363 = getelementptr [7 x i8], [7 x i8]* @.str706, i32 0, i32 0
  %t2364 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str706.c, i8* %t2363, i64 6)
  %t2365 = ptrtoint %nyx_string* %t2364 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2350, i64 %t2365, i64 2)
  %t2366 = getelementptr [1 x i8], [1 x i8]* @.str707, i32 0, i32 0
  %t2367 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str707.c, i8* %t2366, i64 0)
  %t2368 = ptrtoint %nyx_string* %t2367 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2350, i64 %t2368, i64 2)
  %t2369 = getelementptr [1 x i8], [1 x i8]* @.str708, i32 0, i32 0
  %t2370 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str708.c, i8* %t2369, i64 0)
  %t2371 = ptrtoint %nyx_string* %t2370 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2350, i64 %t2371, i64 2)
  %t2372 = getelementptr [7 x i8], [7 x i8]* @.str709, i32 0, i32 0
  %t2373 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str709.c, i8* %t2372, i64 6)
  %t2374 = ptrtoint %nyx_string* %t2373 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2350, i64 %t2374, i64 2)
  %t2375 = getelementptr [50 x i8], [50 x i8]* @.str710, i32 0, i32 0
  %t2376 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str710.c, i8* %t2375, i64 49)
  %t2377 = ptrtoint %nyx_string* %t2376 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2350, i64 %t2377, i64 2)
  %t2378 = getelementptr [60 x i8], [60 x i8]* @.str711, i32 0, i32 0
  %t2379 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str711.c, i8* %t2378, i64 59)
  %t2380 = ptrtoint %nyx_string* %t2379 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2350, i64 %t2380, i64 2)
  %t2381 = getelementptr [95 x i8], [95 x i8]* @.str712, i32 0, i32 0
  %t2382 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str712.c, i8* %t2381, i64 94)
  %t2383 = ptrtoint %nyx_string* %t2382 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2350, i64 %t2383, i64 2)
  %t2384 = getelementptr [105 x i8], [105 x i8]* @.str713, i32 0, i32 0
  %t2385 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str713.c, i8* %t2384, i64 104)
  %t2386 = ptrtoint %nyx_string* %t2385 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2350, i64 %t2386, i64 2)
  %t2387 = ptrtoint { i64, i8* }* %t2350 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2349, i64 %t2387, i64 5)
  %t2388 = load { i64, i8* }*, { i64, i8* }** %t86
  %t2389 = call { i64, i8* }* @nyx_array_new_ptr()
  %t2390 = getelementptr [28 x i8], [28 x i8]* @.str714, i32 0, i32 0
  %t2391 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str714.c, i8* %t2390, i64 27)
  %t2392 = ptrtoint %nyx_string* %t2391 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2389, i64 %t2392, i64 2)
  %t2393 = getelementptr [6 x i8], [6 x i8]* @.str715, i32 0, i32 0
  %t2394 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str715.c, i8* %t2393, i64 5)
  %t2395 = ptrtoint %nyx_string* %t2394 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2389, i64 %t2395, i64 2)
  %t2396 = getelementptr [4 x i8], [4 x i8]* @.str716, i32 0, i32 0
  %t2397 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str716.c, i8* %t2396, i64 3)
  %t2398 = ptrtoint %nyx_string* %t2397 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2389, i64 %t2398, i64 2)
  %t2399 = getelementptr [7 x i8], [7 x i8]* @.str717, i32 0, i32 0
  %t2400 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str717.c, i8* %t2399, i64 6)
  %t2401 = ptrtoint %nyx_string* %t2400 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2389, i64 %t2401, i64 2)
  %t2402 = getelementptr [7 x i8], [7 x i8]* @.str718, i32 0, i32 0
  %t2403 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str718.c, i8* %t2402, i64 6)
  %t2404 = ptrtoint %nyx_string* %t2403 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2389, i64 %t2404, i64 2)
  %t2405 = getelementptr [1 x i8], [1 x i8]* @.str719, i32 0, i32 0
  %t2406 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str719.c, i8* %t2405, i64 0)
  %t2407 = ptrtoint %nyx_string* %t2406 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2389, i64 %t2407, i64 2)
  %t2408 = getelementptr [1 x i8], [1 x i8]* @.str720, i32 0, i32 0
  %t2409 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str720.c, i8* %t2408, i64 0)
  %t2410 = ptrtoint %nyx_string* %t2409 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2389, i64 %t2410, i64 2)
  %t2411 = getelementptr [18 x i8], [18 x i8]* @.str721, i32 0, i32 0
  %t2412 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str721.c, i8* %t2411, i64 17)
  %t2413 = ptrtoint %nyx_string* %t2412 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2389, i64 %t2413, i64 2)
  %t2414 = getelementptr [1 x i8], [1 x i8]* @.str722, i32 0, i32 0
  %t2415 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str722.c, i8* %t2414, i64 0)
  %t2416 = ptrtoint %nyx_string* %t2415 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2389, i64 %t2416, i64 2)
  %t2417 = getelementptr [1 x i8], [1 x i8]* @.str723, i32 0, i32 0
  %t2418 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str723.c, i8* %t2417, i64 0)
  %t2419 = ptrtoint %nyx_string* %t2418 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2389, i64 %t2419, i64 2)
  %t2420 = getelementptr [73 x i8], [73 x i8]* @.str724, i32 0, i32 0
  %t2421 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str724.c, i8* %t2420, i64 72)
  %t2422 = ptrtoint %nyx_string* %t2421 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2389, i64 %t2422, i64 2)
  %t2423 = getelementptr [90 x i8], [90 x i8]* @.str725, i32 0, i32 0
  %t2424 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str725.c, i8* %t2423, i64 89)
  %t2425 = ptrtoint %nyx_string* %t2424 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2389, i64 %t2425, i64 2)
  %t2426 = ptrtoint { i64, i8* }* %t2389 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2388, i64 %t2426, i64 5)
  %t2427 = load { i64, i8* }*, { i64, i8* }** %t86
  %t2428 = call { i64, i8* }* @nyx_array_new_ptr()
  %t2429 = getelementptr [18 x i8], [18 x i8]* @.str726, i32 0, i32 0
  %t2430 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str726.c, i8* %t2429, i64 17)
  %t2431 = ptrtoint %nyx_string* %t2430 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2428, i64 %t2431, i64 2)
  %t2432 = getelementptr [6 x i8], [6 x i8]* @.str727, i32 0, i32 0
  %t2433 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str727.c, i8* %t2432, i64 5)
  %t2434 = ptrtoint %nyx_string* %t2433 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2428, i64 %t2434, i64 2)
  %t2435 = getelementptr [4 x i8], [4 x i8]* @.str728, i32 0, i32 0
  %t2436 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str728.c, i8* %t2435, i64 3)
  %t2437 = ptrtoint %nyx_string* %t2436 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2428, i64 %t2437, i64 2)
  %t2438 = getelementptr [8 x i8], [8 x i8]* @.str729, i32 0, i32 0
  %t2439 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str729.c, i8* %t2438, i64 7)
  %t2440 = ptrtoint %nyx_string* %t2439 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2428, i64 %t2440, i64 2)
  %t2441 = getelementptr [8 x i8], [8 x i8]* @.str730, i32 0, i32 0
  %t2442 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str730.c, i8* %t2441, i64 7)
  %t2443 = ptrtoint %nyx_string* %t2442 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2428, i64 %t2443, i64 2)
  %t2444 = getelementptr [1 x i8], [1 x i8]* @.str731, i32 0, i32 0
  %t2445 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str731.c, i8* %t2444, i64 0)
  %t2446 = ptrtoint %nyx_string* %t2445 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2428, i64 %t2446, i64 2)
  %t2447 = getelementptr [1 x i8], [1 x i8]* @.str732, i32 0, i32 0
  %t2448 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str732.c, i8* %t2447, i64 0)
  %t2449 = ptrtoint %nyx_string* %t2448 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2428, i64 %t2449, i64 2)
  %t2450 = getelementptr [7 x i8], [7 x i8]* @.str733, i32 0, i32 0
  %t2451 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str733.c, i8* %t2450, i64 6)
  %t2452 = ptrtoint %nyx_string* %t2451 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2428, i64 %t2452, i64 2)
  %t2453 = getelementptr [1 x i8], [1 x i8]* @.str734, i32 0, i32 0
  %t2454 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str734.c, i8* %t2453, i64 0)
  %t2455 = ptrtoint %nyx_string* %t2454 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2428, i64 %t2455, i64 2)
  %t2456 = getelementptr [34 x i8], [34 x i8]* @.str735, i32 0, i32 0
  %t2457 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str735.c, i8* %t2456, i64 33)
  %t2458 = ptrtoint %nyx_string* %t2457 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2428, i64 %t2458, i64 2)
  %t2459 = getelementptr [63 x i8], [63 x i8]* @.str736, i32 0, i32 0
  %t2460 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str736.c, i8* %t2459, i64 62)
  %t2461 = ptrtoint %nyx_string* %t2460 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2428, i64 %t2461, i64 2)
  %t2462 = getelementptr [69 x i8], [69 x i8]* @.str737, i32 0, i32 0
  %t2463 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str737.c, i8* %t2462, i64 68)
  %t2464 = ptrtoint %nyx_string* %t2463 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2428, i64 %t2464, i64 2)
  %t2465 = ptrtoint { i64, i8* }* %t2428 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2427, i64 %t2465, i64 5)
  %t2466 = load { i64, i8* }*, { i64, i8* }** %t86
  %t2467 = call { i64, i8* }* @nyx_array_new_ptr()
  %t2468 = getelementptr [14 x i8], [14 x i8]* @.str738, i32 0, i32 0
  %t2469 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str738.c, i8* %t2468, i64 13)
  %t2470 = ptrtoint %nyx_string* %t2469 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2467, i64 %t2470, i64 2)
  %t2471 = getelementptr [6 x i8], [6 x i8]* @.str739, i32 0, i32 0
  %t2472 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str739.c, i8* %t2471, i64 5)
  %t2473 = ptrtoint %nyx_string* %t2472 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2467, i64 %t2473, i64 2)
  %t2474 = getelementptr [4 x i8], [4 x i8]* @.str740, i32 0, i32 0
  %t2475 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str740.c, i8* %t2474, i64 3)
  %t2476 = ptrtoint %nyx_string* %t2475 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2467, i64 %t2476, i64 2)
  %t2477 = getelementptr [8 x i8], [8 x i8]* @.str741, i32 0, i32 0
  %t2478 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str741.c, i8* %t2477, i64 7)
  %t2479 = ptrtoint %nyx_string* %t2478 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2467, i64 %t2479, i64 2)
  %t2480 = getelementptr [7 x i8], [7 x i8]* @.str742, i32 0, i32 0
  %t2481 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str742.c, i8* %t2480, i64 6)
  %t2482 = ptrtoint %nyx_string* %t2481 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2467, i64 %t2482, i64 2)
  %t2483 = getelementptr [1 x i8], [1 x i8]* @.str743, i32 0, i32 0
  %t2484 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str743.c, i8* %t2483, i64 0)
  %t2485 = ptrtoint %nyx_string* %t2484 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2467, i64 %t2485, i64 2)
  %t2486 = getelementptr [1 x i8], [1 x i8]* @.str744, i32 0, i32 0
  %t2487 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str744.c, i8* %t2486, i64 0)
  %t2488 = ptrtoint %nyx_string* %t2487 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2467, i64 %t2488, i64 2)
  %t2489 = getelementptr [1 x i8], [1 x i8]* @.str745, i32 0, i32 0
  %t2490 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str745.c, i8* %t2489, i64 0)
  %t2491 = ptrtoint %nyx_string* %t2490 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2467, i64 %t2491, i64 2)
  %t2492 = getelementptr [1 x i8], [1 x i8]* @.str746, i32 0, i32 0
  %t2493 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str746.c, i8* %t2492, i64 0)
  %t2494 = ptrtoint %nyx_string* %t2493 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2467, i64 %t2494, i64 2)
  %t2495 = getelementptr [35 x i8], [35 x i8]* @.str747, i32 0, i32 0
  %t2496 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str747.c, i8* %t2495, i64 34)
  %t2497 = ptrtoint %nyx_string* %t2496 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2467, i64 %t2497, i64 2)
  %t2498 = getelementptr [47 x i8], [47 x i8]* @.str748, i32 0, i32 0
  %t2499 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str748.c, i8* %t2498, i64 46)
  %t2500 = ptrtoint %nyx_string* %t2499 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2467, i64 %t2500, i64 2)
  %t2501 = getelementptr [56 x i8], [56 x i8]* @.str749, i32 0, i32 0
  %t2502 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str749.c, i8* %t2501, i64 55)
  %t2503 = ptrtoint %nyx_string* %t2502 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2467, i64 %t2503, i64 2)
  %t2504 = ptrtoint { i64, i8* }* %t2467 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2466, i64 %t2504, i64 5)
  %t2505 = load { i64, i8* }*, { i64, i8* }** %t86
  %t2506 = call { i64, i8* }* @nyx_array_new_ptr()
  %t2507 = getelementptr [21 x i8], [21 x i8]* @.str750, i32 0, i32 0
  %t2508 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str750.c, i8* %t2507, i64 20)
  %t2509 = ptrtoint %nyx_string* %t2508 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2506, i64 %t2509, i64 2)
  %t2510 = getelementptr [6 x i8], [6 x i8]* @.str751, i32 0, i32 0
  %t2511 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str751.c, i8* %t2510, i64 5)
  %t2512 = ptrtoint %nyx_string* %t2511 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2506, i64 %t2512, i64 2)
  %t2513 = getelementptr [4 x i8], [4 x i8]* @.str752, i32 0, i32 0
  %t2514 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str752.c, i8* %t2513, i64 3)
  %t2515 = ptrtoint %nyx_string* %t2514 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2506, i64 %t2515, i64 2)
  %t2516 = getelementptr [8 x i8], [8 x i8]* @.str753, i32 0, i32 0
  %t2517 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str753.c, i8* %t2516, i64 7)
  %t2518 = ptrtoint %nyx_string* %t2517 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2506, i64 %t2518, i64 2)
  %t2519 = getelementptr [7 x i8], [7 x i8]* @.str754, i32 0, i32 0
  %t2520 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str754.c, i8* %t2519, i64 6)
  %t2521 = ptrtoint %nyx_string* %t2520 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2506, i64 %t2521, i64 2)
  %t2522 = getelementptr [1 x i8], [1 x i8]* @.str755, i32 0, i32 0
  %t2523 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str755.c, i8* %t2522, i64 0)
  %t2524 = ptrtoint %nyx_string* %t2523 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2506, i64 %t2524, i64 2)
  %t2525 = getelementptr [1 x i8], [1 x i8]* @.str756, i32 0, i32 0
  %t2526 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str756.c, i8* %t2525, i64 0)
  %t2527 = ptrtoint %nyx_string* %t2526 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2506, i64 %t2527, i64 2)
  %t2528 = getelementptr [1 x i8], [1 x i8]* @.str757, i32 0, i32 0
  %t2529 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str757.c, i8* %t2528, i64 0)
  %t2530 = ptrtoint %nyx_string* %t2529 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2506, i64 %t2530, i64 2)
  %t2531 = getelementptr [1 x i8], [1 x i8]* @.str758, i32 0, i32 0
  %t2532 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str758.c, i8* %t2531, i64 0)
  %t2533 = ptrtoint %nyx_string* %t2532 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2506, i64 %t2533, i64 2)
  %t2534 = getelementptr [47 x i8], [47 x i8]* @.str759, i32 0, i32 0
  %t2535 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str759.c, i8* %t2534, i64 46)
  %t2536 = ptrtoint %nyx_string* %t2535 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2506, i64 %t2536, i64 2)
  %t2537 = getelementptr [123 x i8], [123 x i8]* @.str760, i32 0, i32 0
  %t2538 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str760.c, i8* %t2537, i64 122)
  %t2539 = ptrtoint %nyx_string* %t2538 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2506, i64 %t2539, i64 2)
  %t2540 = getelementptr [123 x i8], [123 x i8]* @.str761, i32 0, i32 0
  %t2541 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str761.c, i8* %t2540, i64 122)
  %t2542 = ptrtoint %nyx_string* %t2541 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2506, i64 %t2542, i64 2)
  %t2543 = ptrtoint { i64, i8* }* %t2506 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2505, i64 %t2543, i64 5)
  %t2544 = load { i64, i8* }*, { i64, i8* }** %t86
  %t2545 = call { i64, i8* }* @nyx_array_new_ptr()
  %t2546 = getelementptr [14 x i8], [14 x i8]* @.str762, i32 0, i32 0
  %t2547 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str762.c, i8* %t2546, i64 13)
  %t2548 = ptrtoint %nyx_string* %t2547 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2545, i64 %t2548, i64 2)
  %t2549 = getelementptr [6 x i8], [6 x i8]* @.str763, i32 0, i32 0
  %t2550 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str763.c, i8* %t2549, i64 5)
  %t2551 = ptrtoint %nyx_string* %t2550 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2545, i64 %t2551, i64 2)
  %t2552 = getelementptr [4 x i8], [4 x i8]* @.str764, i32 0, i32 0
  %t2553 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str764.c, i8* %t2552, i64 3)
  %t2554 = ptrtoint %nyx_string* %t2553 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2545, i64 %t2554, i64 2)
  %t2555 = getelementptr [8 x i8], [8 x i8]* @.str765, i32 0, i32 0
  %t2556 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str765.c, i8* %t2555, i64 7)
  %t2557 = ptrtoint %nyx_string* %t2556 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2545, i64 %t2557, i64 2)
  %t2558 = getelementptr [7 x i8], [7 x i8]* @.str766, i32 0, i32 0
  %t2559 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str766.c, i8* %t2558, i64 6)
  %t2560 = ptrtoint %nyx_string* %t2559 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2545, i64 %t2560, i64 2)
  %t2561 = getelementptr [1 x i8], [1 x i8]* @.str767, i32 0, i32 0
  %t2562 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str767.c, i8* %t2561, i64 0)
  %t2563 = ptrtoint %nyx_string* %t2562 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2545, i64 %t2563, i64 2)
  %t2564 = getelementptr [1 x i8], [1 x i8]* @.str768, i32 0, i32 0
  %t2565 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str768.c, i8* %t2564, i64 0)
  %t2566 = ptrtoint %nyx_string* %t2565 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2545, i64 %t2566, i64 2)
  %t2567 = getelementptr [1 x i8], [1 x i8]* @.str769, i32 0, i32 0
  %t2568 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str769.c, i8* %t2567, i64 0)
  %t2569 = ptrtoint %nyx_string* %t2568 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2545, i64 %t2569, i64 2)
  %t2570 = getelementptr [1 x i8], [1 x i8]* @.str770, i32 0, i32 0
  %t2571 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str770.c, i8* %t2570, i64 0)
  %t2572 = ptrtoint %nyx_string* %t2571 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2545, i64 %t2572, i64 2)
  %t2573 = getelementptr [35 x i8], [35 x i8]* @.str771, i32 0, i32 0
  %t2574 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str771.c, i8* %t2573, i64 34)
  %t2575 = ptrtoint %nyx_string* %t2574 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2545, i64 %t2575, i64 2)
  %t2576 = getelementptr [54 x i8], [54 x i8]* @.str772, i32 0, i32 0
  %t2577 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str772.c, i8* %t2576, i64 53)
  %t2578 = ptrtoint %nyx_string* %t2577 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2545, i64 %t2578, i64 2)
  %t2579 = getelementptr [55 x i8], [55 x i8]* @.str773, i32 0, i32 0
  %t2580 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str773.c, i8* %t2579, i64 54)
  %t2581 = ptrtoint %nyx_string* %t2580 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2545, i64 %t2581, i64 2)
  %t2582 = ptrtoint { i64, i8* }* %t2545 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2544, i64 %t2582, i64 5)
  %t2583 = load { i64, i8* }*, { i64, i8* }** %t86
  %t2584 = call { i64, i8* }* @nyx_array_new_ptr()
  %t2585 = getelementptr [20 x i8], [20 x i8]* @.str774, i32 0, i32 0
  %t2586 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str774.c, i8* %t2585, i64 19)
  %t2587 = ptrtoint %nyx_string* %t2586 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2584, i64 %t2587, i64 2)
  %t2588 = getelementptr [6 x i8], [6 x i8]* @.str775, i32 0, i32 0
  %t2589 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str775.c, i8* %t2588, i64 5)
  %t2590 = ptrtoint %nyx_string* %t2589 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2584, i64 %t2590, i64 2)
  %t2591 = getelementptr [4 x i8], [4 x i8]* @.str776, i32 0, i32 0
  %t2592 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str776.c, i8* %t2591, i64 3)
  %t2593 = ptrtoint %nyx_string* %t2592 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2584, i64 %t2593, i64 2)
  %t2594 = getelementptr [8 x i8], [8 x i8]* @.str777, i32 0, i32 0
  %t2595 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str777.c, i8* %t2594, i64 7)
  %t2596 = ptrtoint %nyx_string* %t2595 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2584, i64 %t2596, i64 2)
  %t2597 = getelementptr [7 x i8], [7 x i8]* @.str778, i32 0, i32 0
  %t2598 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str778.c, i8* %t2597, i64 6)
  %t2599 = ptrtoint %nyx_string* %t2598 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2584, i64 %t2599, i64 2)
  %t2600 = getelementptr [1 x i8], [1 x i8]* @.str779, i32 0, i32 0
  %t2601 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str779.c, i8* %t2600, i64 0)
  %t2602 = ptrtoint %nyx_string* %t2601 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2584, i64 %t2602, i64 2)
  %t2603 = getelementptr [1 x i8], [1 x i8]* @.str780, i32 0, i32 0
  %t2604 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str780.c, i8* %t2603, i64 0)
  %t2605 = ptrtoint %nyx_string* %t2604 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2584, i64 %t2605, i64 2)
  %t2606 = getelementptr [1 x i8], [1 x i8]* @.str781, i32 0, i32 0
  %t2607 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str781.c, i8* %t2606, i64 0)
  %t2608 = ptrtoint %nyx_string* %t2607 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2584, i64 %t2608, i64 2)
  %t2609 = getelementptr [1 x i8], [1 x i8]* @.str782, i32 0, i32 0
  %t2610 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str782.c, i8* %t2609, i64 0)
  %t2611 = ptrtoint %nyx_string* %t2610 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2584, i64 %t2611, i64 2)
  %t2612 = getelementptr [60 x i8], [60 x i8]* @.str783, i32 0, i32 0
  %t2613 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str783.c, i8* %t2612, i64 59)
  %t2614 = ptrtoint %nyx_string* %t2613 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2584, i64 %t2614, i64 2)
  %t2615 = getelementptr [49 x i8], [49 x i8]* @.str784, i32 0, i32 0
  %t2616 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str784.c, i8* %t2615, i64 48)
  %t2617 = ptrtoint %nyx_string* %t2616 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2584, i64 %t2617, i64 2)
  %t2618 = getelementptr [53 x i8], [53 x i8]* @.str785, i32 0, i32 0
  %t2619 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str785.c, i8* %t2618, i64 52)
  %t2620 = ptrtoint %nyx_string* %t2619 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2584, i64 %t2620, i64 2)
  %t2621 = ptrtoint { i64, i8* }* %t2584 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2583, i64 %t2621, i64 5)
  %t2622 = load { i64, i8* }*, { i64, i8* }** %t86
  %t2623 = call { i64, i8* }* @nyx_array_new_ptr()
  %t2624 = getelementptr [21 x i8], [21 x i8]* @.str786, i32 0, i32 0
  %t2625 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str786.c, i8* %t2624, i64 20)
  %t2626 = ptrtoint %nyx_string* %t2625 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2623, i64 %t2626, i64 2)
  %t2627 = getelementptr [6 x i8], [6 x i8]* @.str787, i32 0, i32 0
  %t2628 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str787.c, i8* %t2627, i64 5)
  %t2629 = ptrtoint %nyx_string* %t2628 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2623, i64 %t2629, i64 2)
  %t2630 = getelementptr [4 x i8], [4 x i8]* @.str788, i32 0, i32 0
  %t2631 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str788.c, i8* %t2630, i64 3)
  %t2632 = ptrtoint %nyx_string* %t2631 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2623, i64 %t2632, i64 2)
  %t2633 = getelementptr [8 x i8], [8 x i8]* @.str789, i32 0, i32 0
  %t2634 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str789.c, i8* %t2633, i64 7)
  %t2635 = ptrtoint %nyx_string* %t2634 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2623, i64 %t2635, i64 2)
  %t2636 = getelementptr [7 x i8], [7 x i8]* @.str790, i32 0, i32 0
  %t2637 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str790.c, i8* %t2636, i64 6)
  %t2638 = ptrtoint %nyx_string* %t2637 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2623, i64 %t2638, i64 2)
  %t2639 = getelementptr [1 x i8], [1 x i8]* @.str791, i32 0, i32 0
  %t2640 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str791.c, i8* %t2639, i64 0)
  %t2641 = ptrtoint %nyx_string* %t2640 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2623, i64 %t2641, i64 2)
  %t2642 = getelementptr [1 x i8], [1 x i8]* @.str792, i32 0, i32 0
  %t2643 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str792.c, i8* %t2642, i64 0)
  %t2644 = ptrtoint %nyx_string* %t2643 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2623, i64 %t2644, i64 2)
  %t2645 = getelementptr [1 x i8], [1 x i8]* @.str793, i32 0, i32 0
  %t2646 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str793.c, i8* %t2645, i64 0)
  %t2647 = ptrtoint %nyx_string* %t2646 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2623, i64 %t2647, i64 2)
  %t2648 = getelementptr [1 x i8], [1 x i8]* @.str794, i32 0, i32 0
  %t2649 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str794.c, i8* %t2648, i64 0)
  %t2650 = ptrtoint %nyx_string* %t2649 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2623, i64 %t2650, i64 2)
  %t2651 = getelementptr [55 x i8], [55 x i8]* @.str795, i32 0, i32 0
  %t2652 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str795.c, i8* %t2651, i64 54)
  %t2653 = ptrtoint %nyx_string* %t2652 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2623, i64 %t2653, i64 2)
  %t2654 = getelementptr [66 x i8], [66 x i8]* @.str796, i32 0, i32 0
  %t2655 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str796.c, i8* %t2654, i64 65)
  %t2656 = ptrtoint %nyx_string* %t2655 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2623, i64 %t2656, i64 2)
  %t2657 = getelementptr [67 x i8], [67 x i8]* @.str797, i32 0, i32 0
  %t2658 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str797.c, i8* %t2657, i64 66)
  %t2659 = ptrtoint %nyx_string* %t2658 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2623, i64 %t2659, i64 2)
  %t2660 = ptrtoint { i64, i8* }* %t2623 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2622, i64 %t2660, i64 5)
  %t2661 = load { i64, i8* }*, { i64, i8* }** %t86
  %t2662 = call { i64, i8* }* @nyx_array_new_ptr()
  %t2663 = getelementptr [17 x i8], [17 x i8]* @.str798, i32 0, i32 0
  %t2664 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str798.c, i8* %t2663, i64 16)
  %t2665 = ptrtoint %nyx_string* %t2664 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2662, i64 %t2665, i64 2)
  %t2666 = getelementptr [6 x i8], [6 x i8]* @.str799, i32 0, i32 0
  %t2667 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str799.c, i8* %t2666, i64 5)
  %t2668 = ptrtoint %nyx_string* %t2667 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2662, i64 %t2668, i64 2)
  %t2669 = getelementptr [4 x i8], [4 x i8]* @.str800, i32 0, i32 0
  %t2670 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str800.c, i8* %t2669, i64 3)
  %t2671 = ptrtoint %nyx_string* %t2670 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2662, i64 %t2671, i64 2)
  %t2672 = getelementptr [8 x i8], [8 x i8]* @.str801, i32 0, i32 0
  %t2673 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str801.c, i8* %t2672, i64 7)
  %t2674 = ptrtoint %nyx_string* %t2673 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2662, i64 %t2674, i64 2)
  %t2675 = getelementptr [7 x i8], [7 x i8]* @.str802, i32 0, i32 0
  %t2676 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str802.c, i8* %t2675, i64 6)
  %t2677 = ptrtoint %nyx_string* %t2676 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2662, i64 %t2677, i64 2)
  %t2678 = getelementptr [1 x i8], [1 x i8]* @.str803, i32 0, i32 0
  %t2679 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str803.c, i8* %t2678, i64 0)
  %t2680 = ptrtoint %nyx_string* %t2679 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2662, i64 %t2680, i64 2)
  %t2681 = getelementptr [1 x i8], [1 x i8]* @.str804, i32 0, i32 0
  %t2682 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str804.c, i8* %t2681, i64 0)
  %t2683 = ptrtoint %nyx_string* %t2682 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2662, i64 %t2683, i64 2)
  %t2684 = getelementptr [1 x i8], [1 x i8]* @.str805, i32 0, i32 0
  %t2685 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str805.c, i8* %t2684, i64 0)
  %t2686 = ptrtoint %nyx_string* %t2685 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2662, i64 %t2686, i64 2)
  %t2687 = getelementptr [1 x i8], [1 x i8]* @.str806, i32 0, i32 0
  %t2688 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str806.c, i8* %t2687, i64 0)
  %t2689 = ptrtoint %nyx_string* %t2688 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2662, i64 %t2689, i64 2)
  %t2690 = getelementptr [46 x i8], [46 x i8]* @.str807, i32 0, i32 0
  %t2691 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str807.c, i8* %t2690, i64 45)
  %t2692 = ptrtoint %nyx_string* %t2691 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2662, i64 %t2692, i64 2)
  %t2693 = getelementptr [60 x i8], [60 x i8]* @.str808, i32 0, i32 0
  %t2694 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str808.c, i8* %t2693, i64 59)
  %t2695 = ptrtoint %nyx_string* %t2694 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2662, i64 %t2695, i64 2)
  %t2696 = getelementptr [57 x i8], [57 x i8]* @.str809, i32 0, i32 0
  %t2697 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str809.c, i8* %t2696, i64 56)
  %t2698 = ptrtoint %nyx_string* %t2697 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2662, i64 %t2698, i64 2)
  %t2699 = ptrtoint { i64, i8* }* %t2662 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2661, i64 %t2699, i64 5)
  %t2700 = load { i64, i8* }*, { i64, i8* }** %t86
  %t2701 = call { i64, i8* }* @nyx_array_new_ptr()
  %t2702 = getelementptr [13 x i8], [13 x i8]* @.str810, i32 0, i32 0
  %t2703 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str810.c, i8* %t2702, i64 12)
  %t2704 = ptrtoint %nyx_string* %t2703 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2701, i64 %t2704, i64 2)
  %t2705 = getelementptr [6 x i8], [6 x i8]* @.str811, i32 0, i32 0
  %t2706 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str811.c, i8* %t2705, i64 5)
  %t2707 = ptrtoint %nyx_string* %t2706 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2701, i64 %t2707, i64 2)
  %t2708 = getelementptr [4 x i8], [4 x i8]* @.str812, i32 0, i32 0
  %t2709 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str812.c, i8* %t2708, i64 3)
  %t2710 = ptrtoint %nyx_string* %t2709 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2701, i64 %t2710, i64 2)
  %t2711 = getelementptr [8 x i8], [8 x i8]* @.str813, i32 0, i32 0
  %t2712 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str813.c, i8* %t2711, i64 7)
  %t2713 = ptrtoint %nyx_string* %t2712 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2701, i64 %t2713, i64 2)
  %t2714 = getelementptr [7 x i8], [7 x i8]* @.str814, i32 0, i32 0
  %t2715 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str814.c, i8* %t2714, i64 6)
  %t2716 = ptrtoint %nyx_string* %t2715 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2701, i64 %t2716, i64 2)
  %t2717 = getelementptr [1 x i8], [1 x i8]* @.str815, i32 0, i32 0
  %t2718 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str815.c, i8* %t2717, i64 0)
  %t2719 = ptrtoint %nyx_string* %t2718 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2701, i64 %t2719, i64 2)
  %t2720 = getelementptr [1 x i8], [1 x i8]* @.str816, i32 0, i32 0
  %t2721 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str816.c, i8* %t2720, i64 0)
  %t2722 = ptrtoint %nyx_string* %t2721 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2701, i64 %t2722, i64 2)
  %t2723 = getelementptr [1 x i8], [1 x i8]* @.str817, i32 0, i32 0
  %t2724 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str817.c, i8* %t2723, i64 0)
  %t2725 = ptrtoint %nyx_string* %t2724 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2701, i64 %t2725, i64 2)
  %t2726 = getelementptr [1 x i8], [1 x i8]* @.str818, i32 0, i32 0
  %t2727 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str818.c, i8* %t2726, i64 0)
  %t2728 = ptrtoint %nyx_string* %t2727 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2701, i64 %t2728, i64 2)
  %t2729 = getelementptr [43 x i8], [43 x i8]* @.str819, i32 0, i32 0
  %t2730 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str819.c, i8* %t2729, i64 42)
  %t2731 = ptrtoint %nyx_string* %t2730 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2701, i64 %t2731, i64 2)
  %t2732 = getelementptr [78 x i8], [78 x i8]* @.str820, i32 0, i32 0
  %t2733 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str820.c, i8* %t2732, i64 77)
  %t2734 = ptrtoint %nyx_string* %t2733 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2701, i64 %t2734, i64 2)
  %t2735 = getelementptr [77 x i8], [77 x i8]* @.str821, i32 0, i32 0
  %t2736 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str821.c, i8* %t2735, i64 76)
  %t2737 = ptrtoint %nyx_string* %t2736 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2701, i64 %t2737, i64 2)
  %t2738 = ptrtoint { i64, i8* }* %t2701 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2700, i64 %t2738, i64 5)
  %t2739 = load { i64, i8* }*, { i64, i8* }** %t86
  %t2740 = call { i64, i8* }* @nyx_array_new_ptr()
  %t2741 = getelementptr [27 x i8], [27 x i8]* @.str822, i32 0, i32 0
  %t2742 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str822.c, i8* %t2741, i64 26)
  %t2743 = ptrtoint %nyx_string* %t2742 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2740, i64 %t2743, i64 2)
  %t2744 = getelementptr [6 x i8], [6 x i8]* @.str823, i32 0, i32 0
  %t2745 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str823.c, i8* %t2744, i64 5)
  %t2746 = ptrtoint %nyx_string* %t2745 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2740, i64 %t2746, i64 2)
  %t2747 = getelementptr [4 x i8], [4 x i8]* @.str824, i32 0, i32 0
  %t2748 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str824.c, i8* %t2747, i64 3)
  %t2749 = ptrtoint %nyx_string* %t2748 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2740, i64 %t2749, i64 2)
  %t2750 = getelementptr [8 x i8], [8 x i8]* @.str825, i32 0, i32 0
  %t2751 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str825.c, i8* %t2750, i64 7)
  %t2752 = ptrtoint %nyx_string* %t2751 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2740, i64 %t2752, i64 2)
  %t2753 = getelementptr [8 x i8], [8 x i8]* @.str826, i32 0, i32 0
  %t2754 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str826.c, i8* %t2753, i64 7)
  %t2755 = ptrtoint %nyx_string* %t2754 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2740, i64 %t2755, i64 2)
  %t2756 = getelementptr [1 x i8], [1 x i8]* @.str827, i32 0, i32 0
  %t2757 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str827.c, i8* %t2756, i64 0)
  %t2758 = ptrtoint %nyx_string* %t2757 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2740, i64 %t2758, i64 2)
  %t2759 = getelementptr [1 x i8], [1 x i8]* @.str828, i32 0, i32 0
  %t2760 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str828.c, i8* %t2759, i64 0)
  %t2761 = ptrtoint %nyx_string* %t2760 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2740, i64 %t2761, i64 2)
  %t2762 = getelementptr [8 x i8], [8 x i8]* @.str829, i32 0, i32 0
  %t2763 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str829.c, i8* %t2762, i64 7)
  %t2764 = ptrtoint %nyx_string* %t2763 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2740, i64 %t2764, i64 2)
  %t2765 = getelementptr [28 x i8], [28 x i8]* @.str830, i32 0, i32 0
  %t2766 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str830.c, i8* %t2765, i64 27)
  %t2767 = ptrtoint %nyx_string* %t2766 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2740, i64 %t2767, i64 2)
  %t2768 = getelementptr [1 x i8], [1 x i8]* @.str831, i32 0, i32 0
  %t2769 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str831.c, i8* %t2768, i64 0)
  %t2770 = ptrtoint %nyx_string* %t2769 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2740, i64 %t2770, i64 2)
  %t2771 = getelementptr [81 x i8], [81 x i8]* @.str832, i32 0, i32 0
  %t2772 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str832.c, i8* %t2771, i64 80)
  %t2773 = ptrtoint %nyx_string* %t2772 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2740, i64 %t2773, i64 2)
  %t2774 = getelementptr [120 x i8], [120 x i8]* @.str833, i32 0, i32 0
  %t2775 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str833.c, i8* %t2774, i64 119)
  %t2776 = ptrtoint %nyx_string* %t2775 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2740, i64 %t2776, i64 2)
  %t2777 = ptrtoint { i64, i8* }* %t2740 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2739, i64 %t2777, i64 5)
  %t2778 = load { i64, i8* }*, { i64, i8* }** %t86
  %t2779 = call { i64, i8* }* @nyx_array_new_ptr()
  %t2780 = getelementptr [22 x i8], [22 x i8]* @.str834, i32 0, i32 0
  %t2781 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str834.c, i8* %t2780, i64 21)
  %t2782 = ptrtoint %nyx_string* %t2781 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2779, i64 %t2782, i64 2)
  %t2783 = getelementptr [6 x i8], [6 x i8]* @.str835, i32 0, i32 0
  %t2784 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str835.c, i8* %t2783, i64 5)
  %t2785 = ptrtoint %nyx_string* %t2784 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2779, i64 %t2785, i64 2)
  %t2786 = getelementptr [4 x i8], [4 x i8]* @.str836, i32 0, i32 0
  %t2787 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str836.c, i8* %t2786, i64 3)
  %t2788 = ptrtoint %nyx_string* %t2787 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2779, i64 %t2788, i64 2)
  %t2789 = getelementptr [8 x i8], [8 x i8]* @.str837, i32 0, i32 0
  %t2790 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str837.c, i8* %t2789, i64 7)
  %t2791 = ptrtoint %nyx_string* %t2790 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2779, i64 %t2791, i64 2)
  %t2792 = getelementptr [8 x i8], [8 x i8]* @.str838, i32 0, i32 0
  %t2793 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str838.c, i8* %t2792, i64 7)
  %t2794 = ptrtoint %nyx_string* %t2793 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2779, i64 %t2794, i64 2)
  %t2795 = getelementptr [1 x i8], [1 x i8]* @.str839, i32 0, i32 0
  %t2796 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str839.c, i8* %t2795, i64 0)
  %t2797 = ptrtoint %nyx_string* %t2796 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2779, i64 %t2797, i64 2)
  %t2798 = getelementptr [1 x i8], [1 x i8]* @.str840, i32 0, i32 0
  %t2799 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str840.c, i8* %t2798, i64 0)
  %t2800 = ptrtoint %nyx_string* %t2799 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2779, i64 %t2800, i64 2)
  %t2801 = getelementptr [9 x i8], [9 x i8]* @.str841, i32 0, i32 0
  %t2802 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str841.c, i8* %t2801, i64 8)
  %t2803 = ptrtoint %nyx_string* %t2802 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2779, i64 %t2803, i64 2)
  %t2804 = getelementptr [54 x i8], [54 x i8]* @.str842, i32 0, i32 0
  %t2805 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str842.c, i8* %t2804, i64 53)
  %t2806 = ptrtoint %nyx_string* %t2805 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2779, i64 %t2806, i64 2)
  %t2807 = getelementptr [43 x i8], [43 x i8]* @.str843, i32 0, i32 0
  %t2808 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str843.c, i8* %t2807, i64 42)
  %t2809 = ptrtoint %nyx_string* %t2808 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2779, i64 %t2809, i64 2)
  %t2810 = getelementptr [92 x i8], [92 x i8]* @.str844, i32 0, i32 0
  %t2811 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str844.c, i8* %t2810, i64 91)
  %t2812 = ptrtoint %nyx_string* %t2811 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2779, i64 %t2812, i64 2)
  %t2813 = getelementptr [105 x i8], [105 x i8]* @.str845, i32 0, i32 0
  %t2814 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str845.c, i8* %t2813, i64 104)
  %t2815 = ptrtoint %nyx_string* %t2814 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2779, i64 %t2815, i64 2)
  %t2816 = ptrtoint { i64, i8* }* %t2779 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2778, i64 %t2816, i64 5)
  %t2817 = load { i64, i8* }*, { i64, i8* }** %t86
  %t2818 = call { i64, i8* }* @nyx_array_new_ptr()
  %t2819 = getelementptr [27 x i8], [27 x i8]* @.str846, i32 0, i32 0
  %t2820 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str846.c, i8* %t2819, i64 26)
  %t2821 = ptrtoint %nyx_string* %t2820 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2818, i64 %t2821, i64 2)
  %t2822 = getelementptr [6 x i8], [6 x i8]* @.str847, i32 0, i32 0
  %t2823 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str847.c, i8* %t2822, i64 5)
  %t2824 = ptrtoint %nyx_string* %t2823 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2818, i64 %t2824, i64 2)
  %t2825 = getelementptr [4 x i8], [4 x i8]* @.str848, i32 0, i32 0
  %t2826 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str848.c, i8* %t2825, i64 3)
  %t2827 = ptrtoint %nyx_string* %t2826 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2818, i64 %t2827, i64 2)
  %t2828 = getelementptr [8 x i8], [8 x i8]* @.str849, i32 0, i32 0
  %t2829 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str849.c, i8* %t2828, i64 7)
  %t2830 = ptrtoint %nyx_string* %t2829 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2818, i64 %t2830, i64 2)
  %t2831 = getelementptr [8 x i8], [8 x i8]* @.str850, i32 0, i32 0
  %t2832 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str850.c, i8* %t2831, i64 7)
  %t2833 = ptrtoint %nyx_string* %t2832 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2818, i64 %t2833, i64 2)
  %t2834 = getelementptr [1 x i8], [1 x i8]* @.str851, i32 0, i32 0
  %t2835 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str851.c, i8* %t2834, i64 0)
  %t2836 = ptrtoint %nyx_string* %t2835 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2818, i64 %t2836, i64 2)
  %t2837 = getelementptr [1 x i8], [1 x i8]* @.str852, i32 0, i32 0
  %t2838 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str852.c, i8* %t2837, i64 0)
  %t2839 = ptrtoint %nyx_string* %t2838 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2818, i64 %t2839, i64 2)
  %t2840 = getelementptr [10 x i8], [10 x i8]* @.str853, i32 0, i32 0
  %t2841 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str853.c, i8* %t2840, i64 9)
  %t2842 = ptrtoint %nyx_string* %t2841 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2818, i64 %t2842, i64 2)
  %t2843 = getelementptr [1 x i8], [1 x i8]* @.str854, i32 0, i32 0
  %t2844 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str854.c, i8* %t2843, i64 0)
  %t2845 = ptrtoint %nyx_string* %t2844 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2818, i64 %t2845, i64 2)
  %t2846 = getelementptr [1 x i8], [1 x i8]* @.str855, i32 0, i32 0
  %t2847 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str855.c, i8* %t2846, i64 0)
  %t2848 = ptrtoint %nyx_string* %t2847 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2818, i64 %t2848, i64 2)
  %t2849 = getelementptr [62 x i8], [62 x i8]* @.str856, i32 0, i32 0
  %t2850 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str856.c, i8* %t2849, i64 61)
  %t2851 = ptrtoint %nyx_string* %t2850 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2818, i64 %t2851, i64 2)
  %t2852 = getelementptr [58 x i8], [58 x i8]* @.str857, i32 0, i32 0
  %t2853 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str857.c, i8* %t2852, i64 57)
  %t2854 = ptrtoint %nyx_string* %t2853 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2818, i64 %t2854, i64 2)
  %t2855 = ptrtoint { i64, i8* }* %t2818 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2817, i64 %t2855, i64 5)
  %t2856 = load { i64, i8* }*, { i64, i8* }** %t86
  %t2857 = call { i64, i8* }* @nyx_array_new_ptr()
  %t2858 = getelementptr [30 x i8], [30 x i8]* @.str858, i32 0, i32 0
  %t2859 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str858.c, i8* %t2858, i64 29)
  %t2860 = ptrtoint %nyx_string* %t2859 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2857, i64 %t2860, i64 2)
  %t2861 = getelementptr [6 x i8], [6 x i8]* @.str859, i32 0, i32 0
  %t2862 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str859.c, i8* %t2861, i64 5)
  %t2863 = ptrtoint %nyx_string* %t2862 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2857, i64 %t2863, i64 2)
  %t2864 = getelementptr [4 x i8], [4 x i8]* @.str860, i32 0, i32 0
  %t2865 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str860.c, i8* %t2864, i64 3)
  %t2866 = ptrtoint %nyx_string* %t2865 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2857, i64 %t2866, i64 2)
  %t2867 = getelementptr [8 x i8], [8 x i8]* @.str861, i32 0, i32 0
  %t2868 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str861.c, i8* %t2867, i64 7)
  %t2869 = ptrtoint %nyx_string* %t2868 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2857, i64 %t2869, i64 2)
  %t2870 = getelementptr [7 x i8], [7 x i8]* @.str862, i32 0, i32 0
  %t2871 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str862.c, i8* %t2870, i64 6)
  %t2872 = ptrtoint %nyx_string* %t2871 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2857, i64 %t2872, i64 2)
  %t2873 = getelementptr [1 x i8], [1 x i8]* @.str863, i32 0, i32 0
  %t2874 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str863.c, i8* %t2873, i64 0)
  %t2875 = ptrtoint %nyx_string* %t2874 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2857, i64 %t2875, i64 2)
  %t2876 = getelementptr [1 x i8], [1 x i8]* @.str864, i32 0, i32 0
  %t2877 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str864.c, i8* %t2876, i64 0)
  %t2878 = ptrtoint %nyx_string* %t2877 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2857, i64 %t2878, i64 2)
  %t2879 = getelementptr [7 x i8], [7 x i8]* @.str865, i32 0, i32 0
  %t2880 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str865.c, i8* %t2879, i64 6)
  %t2881 = ptrtoint %nyx_string* %t2880 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2857, i64 %t2881, i64 2)
  %t2882 = getelementptr [96 x i8], [96 x i8]* @.str866, i32 0, i32 0
  %t2883 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str866.c, i8* %t2882, i64 95)
  %t2884 = ptrtoint %nyx_string* %t2883 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2857, i64 %t2884, i64 2)
  %t2885 = getelementptr [97 x i8], [97 x i8]* @.str867, i32 0, i32 0
  %t2886 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str867.c, i8* %t2885, i64 96)
  %t2887 = ptrtoint %nyx_string* %t2886 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2857, i64 %t2887, i64 2)
  %t2888 = getelementptr [138 x i8], [138 x i8]* @.str868, i32 0, i32 0
  %t2889 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str868.c, i8* %t2888, i64 137)
  %t2890 = ptrtoint %nyx_string* %t2889 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2857, i64 %t2890, i64 2)
  %t2891 = getelementptr [152 x i8], [152 x i8]* @.str869, i32 0, i32 0
  %t2892 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str869.c, i8* %t2891, i64 151)
  %t2893 = ptrtoint %nyx_string* %t2892 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2857, i64 %t2893, i64 2)
  %t2894 = ptrtoint { i64, i8* }* %t2857 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2856, i64 %t2894, i64 5)
  %t2895 = load { i64, i8* }*, { i64, i8* }** %t86
  %t2896 = call { i64, i8* }* @nyx_array_new_ptr()
  %t2897 = getelementptr [26 x i8], [26 x i8]* @.str870, i32 0, i32 0
  %t2898 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str870.c, i8* %t2897, i64 25)
  %t2899 = ptrtoint %nyx_string* %t2898 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2896, i64 %t2899, i64 2)
  %t2900 = getelementptr [6 x i8], [6 x i8]* @.str871, i32 0, i32 0
  %t2901 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str871.c, i8* %t2900, i64 5)
  %t2902 = ptrtoint %nyx_string* %t2901 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2896, i64 %t2902, i64 2)
  %t2903 = getelementptr [4 x i8], [4 x i8]* @.str872, i32 0, i32 0
  %t2904 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str872.c, i8* %t2903, i64 3)
  %t2905 = ptrtoint %nyx_string* %t2904 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2896, i64 %t2905, i64 2)
  %t2906 = getelementptr [7 x i8], [7 x i8]* @.str873, i32 0, i32 0
  %t2907 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str873.c, i8* %t2906, i64 6)
  %t2908 = ptrtoint %nyx_string* %t2907 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2896, i64 %t2908, i64 2)
  %t2909 = getelementptr [7 x i8], [7 x i8]* @.str874, i32 0, i32 0
  %t2910 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str874.c, i8* %t2909, i64 6)
  %t2911 = ptrtoint %nyx_string* %t2910 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2896, i64 %t2911, i64 2)
  %t2912 = getelementptr [1 x i8], [1 x i8]* @.str875, i32 0, i32 0
  %t2913 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str875.c, i8* %t2912, i64 0)
  %t2914 = ptrtoint %nyx_string* %t2913 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2896, i64 %t2914, i64 2)
  %t2915 = getelementptr [1 x i8], [1 x i8]* @.str876, i32 0, i32 0
  %t2916 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str876.c, i8* %t2915, i64 0)
  %t2917 = ptrtoint %nyx_string* %t2916 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2896, i64 %t2917, i64 2)
  %t2918 = getelementptr [11 x i8], [11 x i8]* @.str877, i32 0, i32 0
  %t2919 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str877.c, i8* %t2918, i64 10)
  %t2920 = ptrtoint %nyx_string* %t2919 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2896, i64 %t2920, i64 2)
  %t2921 = getelementptr [1 x i8], [1 x i8]* @.str878, i32 0, i32 0
  %t2922 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str878.c, i8* %t2921, i64 0)
  %t2923 = ptrtoint %nyx_string* %t2922 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2896, i64 %t2923, i64 2)
  %t2924 = getelementptr [40 x i8], [40 x i8]* @.str879, i32 0, i32 0
  %t2925 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str879.c, i8* %t2924, i64 39)
  %t2926 = ptrtoint %nyx_string* %t2925 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2896, i64 %t2926, i64 2)
  %t2927 = getelementptr [76 x i8], [76 x i8]* @.str880, i32 0, i32 0
  %t2928 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str880.c, i8* %t2927, i64 75)
  %t2929 = ptrtoint %nyx_string* %t2928 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2896, i64 %t2929, i64 2)
  %t2930 = getelementptr [90 x i8], [90 x i8]* @.str881, i32 0, i32 0
  %t2931 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str881.c, i8* %t2930, i64 89)
  %t2932 = ptrtoint %nyx_string* %t2931 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2896, i64 %t2932, i64 2)
  %t2933 = ptrtoint { i64, i8* }* %t2896 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2895, i64 %t2933, i64 5)
  %t2934 = load { i64, i8* }*, { i64, i8* }** %t86
  %t2935 = call { i64, i8* }* @nyx_array_new_ptr()
  %t2936 = getelementptr [28 x i8], [28 x i8]* @.str882, i32 0, i32 0
  %t2937 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str882.c, i8* %t2936, i64 27)
  %t2938 = ptrtoint %nyx_string* %t2937 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2935, i64 %t2938, i64 2)
  %t2939 = getelementptr [6 x i8], [6 x i8]* @.str883, i32 0, i32 0
  %t2940 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str883.c, i8* %t2939, i64 5)
  %t2941 = ptrtoint %nyx_string* %t2940 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2935, i64 %t2941, i64 2)
  %t2942 = getelementptr [4 x i8], [4 x i8]* @.str884, i32 0, i32 0
  %t2943 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str884.c, i8* %t2942, i64 3)
  %t2944 = ptrtoint %nyx_string* %t2943 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2935, i64 %t2944, i64 2)
  %t2945 = getelementptr [7 x i8], [7 x i8]* @.str885, i32 0, i32 0
  %t2946 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str885.c, i8* %t2945, i64 6)
  %t2947 = ptrtoint %nyx_string* %t2946 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2935, i64 %t2947, i64 2)
  %t2948 = getelementptr [7 x i8], [7 x i8]* @.str886, i32 0, i32 0
  %t2949 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str886.c, i8* %t2948, i64 6)
  %t2950 = ptrtoint %nyx_string* %t2949 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2935, i64 %t2950, i64 2)
  %t2951 = getelementptr [1 x i8], [1 x i8]* @.str887, i32 0, i32 0
  %t2952 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str887.c, i8* %t2951, i64 0)
  %t2953 = ptrtoint %nyx_string* %t2952 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2935, i64 %t2953, i64 2)
  %t2954 = getelementptr [1 x i8], [1 x i8]* @.str888, i32 0, i32 0
  %t2955 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str888.c, i8* %t2954, i64 0)
  %t2956 = ptrtoint %nyx_string* %t2955 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2935, i64 %t2956, i64 2)
  %t2957 = getelementptr [14 x i8], [14 x i8]* @.str889, i32 0, i32 0
  %t2958 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str889.c, i8* %t2957, i64 13)
  %t2959 = ptrtoint %nyx_string* %t2958 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2935, i64 %t2959, i64 2)
  %t2960 = getelementptr [1 x i8], [1 x i8]* @.str890, i32 0, i32 0
  %t2961 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str890.c, i8* %t2960, i64 0)
  %t2962 = ptrtoint %nyx_string* %t2961 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2935, i64 %t2962, i64 2)
  %t2963 = getelementptr [39 x i8], [39 x i8]* @.str891, i32 0, i32 0
  %t2964 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str891.c, i8* %t2963, i64 38)
  %t2965 = ptrtoint %nyx_string* %t2964 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2935, i64 %t2965, i64 2)
  %t2966 = getelementptr [78 x i8], [78 x i8]* @.str892, i32 0, i32 0
  %t2967 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str892.c, i8* %t2966, i64 77)
  %t2968 = ptrtoint %nyx_string* %t2967 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2935, i64 %t2968, i64 2)
  %t2969 = getelementptr [85 x i8], [85 x i8]* @.str893, i32 0, i32 0
  %t2970 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str893.c, i8* %t2969, i64 84)
  %t2971 = ptrtoint %nyx_string* %t2970 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2935, i64 %t2971, i64 2)
  %t2972 = ptrtoint { i64, i8* }* %t2935 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2934, i64 %t2972, i64 5)
  %t2973 = load { i64, i8* }*, { i64, i8* }** %t86
  %t2974 = call { i64, i8* }* @nyx_array_new_ptr()
  %t2975 = getelementptr [29 x i8], [29 x i8]* @.str894, i32 0, i32 0
  %t2976 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str894.c, i8* %t2975, i64 28)
  %t2977 = ptrtoint %nyx_string* %t2976 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2974, i64 %t2977, i64 2)
  %t2978 = getelementptr [6 x i8], [6 x i8]* @.str895, i32 0, i32 0
  %t2979 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str895.c, i8* %t2978, i64 5)
  %t2980 = ptrtoint %nyx_string* %t2979 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2974, i64 %t2980, i64 2)
  %t2981 = getelementptr [4 x i8], [4 x i8]* @.str896, i32 0, i32 0
  %t2982 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str896.c, i8* %t2981, i64 3)
  %t2983 = ptrtoint %nyx_string* %t2982 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2974, i64 %t2983, i64 2)
  %t2984 = getelementptr [7 x i8], [7 x i8]* @.str897, i32 0, i32 0
  %t2985 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str897.c, i8* %t2984, i64 6)
  %t2986 = ptrtoint %nyx_string* %t2985 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2974, i64 %t2986, i64 2)
  %t2987 = getelementptr [7 x i8], [7 x i8]* @.str898, i32 0, i32 0
  %t2988 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str898.c, i8* %t2987, i64 6)
  %t2989 = ptrtoint %nyx_string* %t2988 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2974, i64 %t2989, i64 2)
  %t2990 = getelementptr [1 x i8], [1 x i8]* @.str899, i32 0, i32 0
  %t2991 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str899.c, i8* %t2990, i64 0)
  %t2992 = ptrtoint %nyx_string* %t2991 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2974, i64 %t2992, i64 2)
  %t2993 = getelementptr [1 x i8], [1 x i8]* @.str900, i32 0, i32 0
  %t2994 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str900.c, i8* %t2993, i64 0)
  %t2995 = ptrtoint %nyx_string* %t2994 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2974, i64 %t2995, i64 2)
  %t2996 = getelementptr [8 x i8], [8 x i8]* @.str901, i32 0, i32 0
  %t2997 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str901.c, i8* %t2996, i64 7)
  %t2998 = ptrtoint %nyx_string* %t2997 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2974, i64 %t2998, i64 2)
  %t2999 = getelementptr [1 x i8], [1 x i8]* @.str902, i32 0, i32 0
  %t3000 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str902.c, i8* %t2999, i64 0)
  %t3001 = ptrtoint %nyx_string* %t3000 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2974, i64 %t3001, i64 2)
  %t3002 = getelementptr [1 x i8], [1 x i8]* @.str903, i32 0, i32 0
  %t3003 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str903.c, i8* %t3002, i64 0)
  %t3004 = ptrtoint %nyx_string* %t3003 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2974, i64 %t3004, i64 2)
  %t3005 = getelementptr [98 x i8], [98 x i8]* @.str904, i32 0, i32 0
  %t3006 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str904.c, i8* %t3005, i64 97)
  %t3007 = ptrtoint %nyx_string* %t3006 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2974, i64 %t3007, i64 2)
  %t3008 = getelementptr [106 x i8], [106 x i8]* @.str905, i32 0, i32 0
  %t3009 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str905.c, i8* %t3008, i64 105)
  %t3010 = ptrtoint %nyx_string* %t3009 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2974, i64 %t3010, i64 2)
  %t3011 = ptrtoint { i64, i8* }* %t2974 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2973, i64 %t3011, i64 5)
  %t3012 = load { i64, i8* }*, { i64, i8* }** %t86
  %t3013 = call { i64, i8* }* @nyx_array_new_ptr()
  %t3014 = getelementptr [21 x i8], [21 x i8]* @.str906, i32 0, i32 0
  %t3015 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str906.c, i8* %t3014, i64 20)
  %t3016 = ptrtoint %nyx_string* %t3015 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3013, i64 %t3016, i64 2)
  %t3017 = getelementptr [6 x i8], [6 x i8]* @.str907, i32 0, i32 0
  %t3018 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str907.c, i8* %t3017, i64 5)
  %t3019 = ptrtoint %nyx_string* %t3018 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3013, i64 %t3019, i64 2)
  %t3020 = getelementptr [4 x i8], [4 x i8]* @.str908, i32 0, i32 0
  %t3021 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str908.c, i8* %t3020, i64 3)
  %t3022 = ptrtoint %nyx_string* %t3021 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3013, i64 %t3022, i64 2)
  %t3023 = getelementptr [7 x i8], [7 x i8]* @.str909, i32 0, i32 0
  %t3024 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str909.c, i8* %t3023, i64 6)
  %t3025 = ptrtoint %nyx_string* %t3024 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3013, i64 %t3025, i64 2)
  %t3026 = getelementptr [7 x i8], [7 x i8]* @.str910, i32 0, i32 0
  %t3027 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str910.c, i8* %t3026, i64 6)
  %t3028 = ptrtoint %nyx_string* %t3027 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3013, i64 %t3028, i64 2)
  %t3029 = getelementptr [1 x i8], [1 x i8]* @.str911, i32 0, i32 0
  %t3030 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str911.c, i8* %t3029, i64 0)
  %t3031 = ptrtoint %nyx_string* %t3030 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3013, i64 %t3031, i64 2)
  %t3032 = getelementptr [1 x i8], [1 x i8]* @.str912, i32 0, i32 0
  %t3033 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str912.c, i8* %t3032, i64 0)
  %t3034 = ptrtoint %nyx_string* %t3033 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3013, i64 %t3034, i64 2)
  %t3035 = getelementptr [6 x i8], [6 x i8]* @.str913, i32 0, i32 0
  %t3036 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str913.c, i8* %t3035, i64 5)
  %t3037 = ptrtoint %nyx_string* %t3036 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3013, i64 %t3037, i64 2)
  %t3038 = getelementptr [1 x i8], [1 x i8]* @.str914, i32 0, i32 0
  %t3039 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str914.c, i8* %t3038, i64 0)
  %t3040 = ptrtoint %nyx_string* %t3039 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3013, i64 %t3040, i64 2)
  %t3041 = getelementptr [1 x i8], [1 x i8]* @.str915, i32 0, i32 0
  %t3042 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str915.c, i8* %t3041, i64 0)
  %t3043 = ptrtoint %nyx_string* %t3042 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3013, i64 %t3043, i64 2)
  %t3044 = getelementptr [68 x i8], [68 x i8]* @.str916, i32 0, i32 0
  %t3045 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str916.c, i8* %t3044, i64 67)
  %t3046 = ptrtoint %nyx_string* %t3045 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3013, i64 %t3046, i64 2)
  %t3047 = getelementptr [75 x i8], [75 x i8]* @.str917, i32 0, i32 0
  %t3048 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str917.c, i8* %t3047, i64 74)
  %t3049 = ptrtoint %nyx_string* %t3048 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3013, i64 %t3049, i64 2)
  %t3050 = ptrtoint { i64, i8* }* %t3013 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3012, i64 %t3050, i64 5)
  %t3051 = load { i64, i8* }*, { i64, i8* }** %t86
  %t3052 = call { i64, i8* }* @nyx_array_new_ptr()
  %t3053 = getelementptr [18 x i8], [18 x i8]* @.str918, i32 0, i32 0
  %t3054 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str918.c, i8* %t3053, i64 17)
  %t3055 = ptrtoint %nyx_string* %t3054 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3052, i64 %t3055, i64 2)
  %t3056 = getelementptr [6 x i8], [6 x i8]* @.str919, i32 0, i32 0
  %t3057 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str919.c, i8* %t3056, i64 5)
  %t3058 = ptrtoint %nyx_string* %t3057 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3052, i64 %t3058, i64 2)
  %t3059 = getelementptr [4 x i8], [4 x i8]* @.str920, i32 0, i32 0
  %t3060 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str920.c, i8* %t3059, i64 3)
  %t3061 = ptrtoint %nyx_string* %t3060 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3052, i64 %t3061, i64 2)
  %t3062 = getelementptr [7 x i8], [7 x i8]* @.str921, i32 0, i32 0
  %t3063 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str921.c, i8* %t3062, i64 6)
  %t3064 = ptrtoint %nyx_string* %t3063 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3052, i64 %t3064, i64 2)
  %t3065 = getelementptr [7 x i8], [7 x i8]* @.str922, i32 0, i32 0
  %t3066 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str922.c, i8* %t3065, i64 6)
  %t3067 = ptrtoint %nyx_string* %t3066 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3052, i64 %t3067, i64 2)
  %t3068 = getelementptr [1 x i8], [1 x i8]* @.str923, i32 0, i32 0
  %t3069 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str923.c, i8* %t3068, i64 0)
  %t3070 = ptrtoint %nyx_string* %t3069 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3052, i64 %t3070, i64 2)
  %t3071 = getelementptr [1 x i8], [1 x i8]* @.str924, i32 0, i32 0
  %t3072 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str924.c, i8* %t3071, i64 0)
  %t3073 = ptrtoint %nyx_string* %t3072 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3052, i64 %t3073, i64 2)
  %t3074 = getelementptr [17 x i8], [17 x i8]* @.str925, i32 0, i32 0
  %t3075 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str925.c, i8* %t3074, i64 16)
  %t3076 = ptrtoint %nyx_string* %t3075 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3052, i64 %t3076, i64 2)
  %t3077 = getelementptr [1 x i8], [1 x i8]* @.str926, i32 0, i32 0
  %t3078 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str926.c, i8* %t3077, i64 0)
  %t3079 = ptrtoint %nyx_string* %t3078 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3052, i64 %t3079, i64 2)
  %t3080 = getelementptr [39 x i8], [39 x i8]* @.str927, i32 0, i32 0
  %t3081 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str927.c, i8* %t3080, i64 38)
  %t3082 = ptrtoint %nyx_string* %t3081 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3052, i64 %t3082, i64 2)
  %t3083 = getelementptr [36 x i8], [36 x i8]* @.str928, i32 0, i32 0
  %t3084 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str928.c, i8* %t3083, i64 35)
  %t3085 = ptrtoint %nyx_string* %t3084 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3052, i64 %t3085, i64 2)
  %t3086 = getelementptr [45 x i8], [45 x i8]* @.str929, i32 0, i32 0
  %t3087 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str929.c, i8* %t3086, i64 44)
  %t3088 = ptrtoint %nyx_string* %t3087 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3052, i64 %t3088, i64 2)
  %t3089 = ptrtoint { i64, i8* }* %t3052 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3051, i64 %t3089, i64 5)
  %t3090 = load { i64, i8* }*, { i64, i8* }** %t86
  %t3091 = call { i64, i8* }* @nyx_array_new_ptr()
  %t3092 = getelementptr [15 x i8], [15 x i8]* @.str930, i32 0, i32 0
  %t3093 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str930.c, i8* %t3092, i64 14)
  %t3094 = ptrtoint %nyx_string* %t3093 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3091, i64 %t3094, i64 2)
  %t3095 = getelementptr [6 x i8], [6 x i8]* @.str931, i32 0, i32 0
  %t3096 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str931.c, i8* %t3095, i64 5)
  %t3097 = ptrtoint %nyx_string* %t3096 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3091, i64 %t3097, i64 2)
  %t3098 = getelementptr [4 x i8], [4 x i8]* @.str932, i32 0, i32 0
  %t3099 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str932.c, i8* %t3098, i64 3)
  %t3100 = ptrtoint %nyx_string* %t3099 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3091, i64 %t3100, i64 2)
  %t3101 = getelementptr [7 x i8], [7 x i8]* @.str933, i32 0, i32 0
  %t3102 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str933.c, i8* %t3101, i64 6)
  %t3103 = ptrtoint %nyx_string* %t3102 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3091, i64 %t3103, i64 2)
  %t3104 = getelementptr [7 x i8], [7 x i8]* @.str934, i32 0, i32 0
  %t3105 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str934.c, i8* %t3104, i64 6)
  %t3106 = ptrtoint %nyx_string* %t3105 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3091, i64 %t3106, i64 2)
  %t3107 = getelementptr [1 x i8], [1 x i8]* @.str935, i32 0, i32 0
  %t3108 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str935.c, i8* %t3107, i64 0)
  %t3109 = ptrtoint %nyx_string* %t3108 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3091, i64 %t3109, i64 2)
  %t3110 = getelementptr [1 x i8], [1 x i8]* @.str936, i32 0, i32 0
  %t3111 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str936.c, i8* %t3110, i64 0)
  %t3112 = ptrtoint %nyx_string* %t3111 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3091, i64 %t3112, i64 2)
  %t3113 = getelementptr [10 x i8], [10 x i8]* @.str937, i32 0, i32 0
  %t3114 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str937.c, i8* %t3113, i64 9)
  %t3115 = ptrtoint %nyx_string* %t3114 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3091, i64 %t3115, i64 2)
  %t3116 = getelementptr [23 x i8], [23 x i8]* @.str938, i32 0, i32 0
  %t3117 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str938.c, i8* %t3116, i64 22)
  %t3118 = ptrtoint %nyx_string* %t3117 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3091, i64 %t3118, i64 2)
  %t3119 = getelementptr [1 x i8], [1 x i8]* @.str939, i32 0, i32 0
  %t3120 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str939.c, i8* %t3119, i64 0)
  %t3121 = ptrtoint %nyx_string* %t3120 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3091, i64 %t3121, i64 2)
  %t3122 = getelementptr [138 x i8], [138 x i8]* @.str940, i32 0, i32 0
  %t3123 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str940.c, i8* %t3122, i64 137)
  %t3124 = ptrtoint %nyx_string* %t3123 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3091, i64 %t3124, i64 2)
  %t3125 = getelementptr [149 x i8], [149 x i8]* @.str941, i32 0, i32 0
  %t3126 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str941.c, i8* %t3125, i64 148)
  %t3127 = ptrtoint %nyx_string* %t3126 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3091, i64 %t3127, i64 2)
  %t3128 = ptrtoint { i64, i8* }* %t3091 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3090, i64 %t3128, i64 5)
  %t3129 = load { i64, i8* }*, { i64, i8* }** %t86
  %t3130 = call { i64, i8* }* @nyx_array_new_ptr()
  %t3131 = getelementptr [24 x i8], [24 x i8]* @.str942, i32 0, i32 0
  %t3132 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str942.c, i8* %t3131, i64 23)
  %t3133 = ptrtoint %nyx_string* %t3132 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3130, i64 %t3133, i64 2)
  %t3134 = getelementptr [6 x i8], [6 x i8]* @.str943, i32 0, i32 0
  %t3135 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str943.c, i8* %t3134, i64 5)
  %t3136 = ptrtoint %nyx_string* %t3135 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3130, i64 %t3136, i64 2)
  %t3137 = getelementptr [4 x i8], [4 x i8]* @.str944, i32 0, i32 0
  %t3138 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str944.c, i8* %t3137, i64 3)
  %t3139 = ptrtoint %nyx_string* %t3138 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3130, i64 %t3139, i64 2)
  %t3140 = getelementptr [8 x i8], [8 x i8]* @.str945, i32 0, i32 0
  %t3141 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str945.c, i8* %t3140, i64 7)
  %t3142 = ptrtoint %nyx_string* %t3141 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3130, i64 %t3142, i64 2)
  %t3143 = getelementptr [8 x i8], [8 x i8]* @.str946, i32 0, i32 0
  %t3144 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str946.c, i8* %t3143, i64 7)
  %t3145 = ptrtoint %nyx_string* %t3144 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3130, i64 %t3145, i64 2)
  %t3146 = getelementptr [1 x i8], [1 x i8]* @.str947, i32 0, i32 0
  %t3147 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str947.c, i8* %t3146, i64 0)
  %t3148 = ptrtoint %nyx_string* %t3147 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3130, i64 %t3148, i64 2)
  %t3149 = getelementptr [1 x i8], [1 x i8]* @.str948, i32 0, i32 0
  %t3150 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str948.c, i8* %t3149, i64 0)
  %t3151 = ptrtoint %nyx_string* %t3150 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3130, i64 %t3151, i64 2)
  %t3152 = getelementptr [1 x i8], [1 x i8]* @.str949, i32 0, i32 0
  %t3153 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str949.c, i8* %t3152, i64 0)
  %t3154 = ptrtoint %nyx_string* %t3153 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3130, i64 %t3154, i64 2)
  %t3155 = getelementptr [36 x i8], [36 x i8]* @.str950, i32 0, i32 0
  %t3156 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str950.c, i8* %t3155, i64 35)
  %t3157 = ptrtoint %nyx_string* %t3156 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3130, i64 %t3157, i64 2)
  %t3158 = getelementptr [76 x i8], [76 x i8]* @.str951, i32 0, i32 0
  %t3159 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str951.c, i8* %t3158, i64 75)
  %t3160 = ptrtoint %nyx_string* %t3159 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3130, i64 %t3160, i64 2)
  %t3161 = getelementptr [46 x i8], [46 x i8]* @.str952, i32 0, i32 0
  %t3162 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str952.c, i8* %t3161, i64 45)
  %t3163 = ptrtoint %nyx_string* %t3162 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3130, i64 %t3163, i64 2)
  %t3164 = getelementptr [53 x i8], [53 x i8]* @.str953, i32 0, i32 0
  %t3165 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str953.c, i8* %t3164, i64 52)
  %t3166 = ptrtoint %nyx_string* %t3165 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3130, i64 %t3166, i64 2)
  %t3167 = ptrtoint { i64, i8* }* %t3130 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3129, i64 %t3167, i64 5)
  %t3168 = load { i64, i8* }*, { i64, i8* }** %t86
  %t3169 = call { i64, i8* }* @nyx_array_new_ptr()
  %t3170 = getelementptr [26 x i8], [26 x i8]* @.str954, i32 0, i32 0
  %t3171 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str954.c, i8* %t3170, i64 25)
  %t3172 = ptrtoint %nyx_string* %t3171 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3169, i64 %t3172, i64 2)
  %t3173 = getelementptr [6 x i8], [6 x i8]* @.str955, i32 0, i32 0
  %t3174 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str955.c, i8* %t3173, i64 5)
  %t3175 = ptrtoint %nyx_string* %t3174 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3169, i64 %t3175, i64 2)
  %t3176 = getelementptr [4 x i8], [4 x i8]* @.str956, i32 0, i32 0
  %t3177 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str956.c, i8* %t3176, i64 3)
  %t3178 = ptrtoint %nyx_string* %t3177 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3169, i64 %t3178, i64 2)
  %t3179 = getelementptr [8 x i8], [8 x i8]* @.str957, i32 0, i32 0
  %t3180 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str957.c, i8* %t3179, i64 7)
  %t3181 = ptrtoint %nyx_string* %t3180 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3169, i64 %t3181, i64 2)
  %t3182 = getelementptr [8 x i8], [8 x i8]* @.str958, i32 0, i32 0
  %t3183 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str958.c, i8* %t3182, i64 7)
  %t3184 = ptrtoint %nyx_string* %t3183 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3169, i64 %t3184, i64 2)
  %t3185 = getelementptr [1 x i8], [1 x i8]* @.str959, i32 0, i32 0
  %t3186 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str959.c, i8* %t3185, i64 0)
  %t3187 = ptrtoint %nyx_string* %t3186 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3169, i64 %t3187, i64 2)
  %t3188 = getelementptr [1 x i8], [1 x i8]* @.str960, i32 0, i32 0
  %t3189 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str960.c, i8* %t3188, i64 0)
  %t3190 = ptrtoint %nyx_string* %t3189 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3169, i64 %t3190, i64 2)
  %t3191 = getelementptr [10 x i8], [10 x i8]* @.str961, i32 0, i32 0
  %t3192 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str961.c, i8* %t3191, i64 9)
  %t3193 = ptrtoint %nyx_string* %t3192 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3169, i64 %t3193, i64 2)
  %t3194 = getelementptr [1 x i8], [1 x i8]* @.str962, i32 0, i32 0
  %t3195 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str962.c, i8* %t3194, i64 0)
  %t3196 = ptrtoint %nyx_string* %t3195 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3169, i64 %t3196, i64 2)
  %t3197 = getelementptr [50 x i8], [50 x i8]* @.str963, i32 0, i32 0
  %t3198 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str963.c, i8* %t3197, i64 49)
  %t3199 = ptrtoint %nyx_string* %t3198 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3169, i64 %t3199, i64 2)
  %t3200 = getelementptr [132 x i8], [132 x i8]* @.str964, i32 0, i32 0
  %t3201 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str964.c, i8* %t3200, i64 131)
  %t3202 = ptrtoint %nyx_string* %t3201 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3169, i64 %t3202, i64 2)
  %t3203 = getelementptr [145 x i8], [145 x i8]* @.str965, i32 0, i32 0
  %t3204 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str965.c, i8* %t3203, i64 144)
  %t3205 = ptrtoint %nyx_string* %t3204 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3169, i64 %t3205, i64 2)
  %t3206 = ptrtoint { i64, i8* }* %t3169 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3168, i64 %t3206, i64 5)
  %t3207 = load { i64, i8* }*, { i64, i8* }** %t86
  %t3208 = call { i64, i8* }* @nyx_array_new_ptr()
  %t3209 = getelementptr [25 x i8], [25 x i8]* @.str966, i32 0, i32 0
  %t3210 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str966.c, i8* %t3209, i64 24)
  %t3211 = ptrtoint %nyx_string* %t3210 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3208, i64 %t3211, i64 2)
  %t3212 = getelementptr [6 x i8], [6 x i8]* @.str967, i32 0, i32 0
  %t3213 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str967.c, i8* %t3212, i64 5)
  %t3214 = ptrtoint %nyx_string* %t3213 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3208, i64 %t3214, i64 2)
  %t3215 = getelementptr [4 x i8], [4 x i8]* @.str968, i32 0, i32 0
  %t3216 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str968.c, i8* %t3215, i64 3)
  %t3217 = ptrtoint %nyx_string* %t3216 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3208, i64 %t3217, i64 2)
  %t3218 = getelementptr [7 x i8], [7 x i8]* @.str969, i32 0, i32 0
  %t3219 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str969.c, i8* %t3218, i64 6)
  %t3220 = ptrtoint %nyx_string* %t3219 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3208, i64 %t3220, i64 2)
  %t3221 = getelementptr [7 x i8], [7 x i8]* @.str970, i32 0, i32 0
  %t3222 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str970.c, i8* %t3221, i64 6)
  %t3223 = ptrtoint %nyx_string* %t3222 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3208, i64 %t3223, i64 2)
  %t3224 = getelementptr [1 x i8], [1 x i8]* @.str971, i32 0, i32 0
  %t3225 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str971.c, i8* %t3224, i64 0)
  %t3226 = ptrtoint %nyx_string* %t3225 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3208, i64 %t3226, i64 2)
  %t3227 = getelementptr [1 x i8], [1 x i8]* @.str972, i32 0, i32 0
  %t3228 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str972.c, i8* %t3227, i64 0)
  %t3229 = ptrtoint %nyx_string* %t3228 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3208, i64 %t3229, i64 2)
  %t3230 = getelementptr [1 x i8], [1 x i8]* @.str973, i32 0, i32 0
  %t3231 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str973.c, i8* %t3230, i64 0)
  %t3232 = ptrtoint %nyx_string* %t3231 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3208, i64 %t3232, i64 2)
  %t3233 = getelementptr [1 x i8], [1 x i8]* @.str974, i32 0, i32 0
  %t3234 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str974.c, i8* %t3233, i64 0)
  %t3235 = ptrtoint %nyx_string* %t3234 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3208, i64 %t3235, i64 2)
  %t3236 = getelementptr [45 x i8], [45 x i8]* @.str975, i32 0, i32 0
  %t3237 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str975.c, i8* %t3236, i64 44)
  %t3238 = ptrtoint %nyx_string* %t3237 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3208, i64 %t3238, i64 2)
  %t3239 = getelementptr [113 x i8], [113 x i8]* @.str976, i32 0, i32 0
  %t3240 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str976.c, i8* %t3239, i64 112)
  %t3241 = ptrtoint %nyx_string* %t3240 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3208, i64 %t3241, i64 2)
  %t3242 = getelementptr [123 x i8], [123 x i8]* @.str977, i32 0, i32 0
  %t3243 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str977.c, i8* %t3242, i64 122)
  %t3244 = ptrtoint %nyx_string* %t3243 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3208, i64 %t3244, i64 2)
  %t3245 = ptrtoint { i64, i8* }* %t3208 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3207, i64 %t3245, i64 5)
  %t3246 = load { i64, i8* }*, { i64, i8* }** %t86
  %t3247 = call { i64, i8* }* @nyx_array_new_ptr()
  %t3248 = getelementptr [21 x i8], [21 x i8]* @.str978, i32 0, i32 0
  %t3249 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str978.c, i8* %t3248, i64 20)
  %t3250 = ptrtoint %nyx_string* %t3249 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3247, i64 %t3250, i64 2)
  %t3251 = getelementptr [6 x i8], [6 x i8]* @.str979, i32 0, i32 0
  %t3252 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str979.c, i8* %t3251, i64 5)
  %t3253 = ptrtoint %nyx_string* %t3252 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3247, i64 %t3253, i64 2)
  %t3254 = getelementptr [4 x i8], [4 x i8]* @.str980, i32 0, i32 0
  %t3255 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str980.c, i8* %t3254, i64 3)
  %t3256 = ptrtoint %nyx_string* %t3255 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3247, i64 %t3256, i64 2)
  %t3257 = getelementptr [7 x i8], [7 x i8]* @.str981, i32 0, i32 0
  %t3258 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str981.c, i8* %t3257, i64 6)
  %t3259 = ptrtoint %nyx_string* %t3258 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3247, i64 %t3259, i64 2)
  %t3260 = getelementptr [7 x i8], [7 x i8]* @.str982, i32 0, i32 0
  %t3261 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str982.c, i8* %t3260, i64 6)
  %t3262 = ptrtoint %nyx_string* %t3261 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3247, i64 %t3262, i64 2)
  %t3263 = getelementptr [1 x i8], [1 x i8]* @.str983, i32 0, i32 0
  %t3264 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str983.c, i8* %t3263, i64 0)
  %t3265 = ptrtoint %nyx_string* %t3264 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3247, i64 %t3265, i64 2)
  %t3266 = getelementptr [1 x i8], [1 x i8]* @.str984, i32 0, i32 0
  %t3267 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str984.c, i8* %t3266, i64 0)
  %t3268 = ptrtoint %nyx_string* %t3267 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3247, i64 %t3268, i64 2)
  %t3269 = getelementptr [1 x i8], [1 x i8]* @.str985, i32 0, i32 0
  %t3270 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str985.c, i8* %t3269, i64 0)
  %t3271 = ptrtoint %nyx_string* %t3270 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3247, i64 %t3271, i64 2)
  %t3272 = getelementptr [1 x i8], [1 x i8]* @.str986, i32 0, i32 0
  %t3273 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str986.c, i8* %t3272, i64 0)
  %t3274 = ptrtoint %nyx_string* %t3273 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3247, i64 %t3274, i64 2)
  %t3275 = getelementptr [55 x i8], [55 x i8]* @.str987, i32 0, i32 0
  %t3276 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str987.c, i8* %t3275, i64 54)
  %t3277 = ptrtoint %nyx_string* %t3276 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3247, i64 %t3277, i64 2)
  %t3278 = getelementptr [85 x i8], [85 x i8]* @.str988, i32 0, i32 0
  %t3279 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str988.c, i8* %t3278, i64 84)
  %t3280 = ptrtoint %nyx_string* %t3279 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3247, i64 %t3280, i64 2)
  %t3281 = getelementptr [90 x i8], [90 x i8]* @.str989, i32 0, i32 0
  %t3282 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str989.c, i8* %t3281, i64 89)
  %t3283 = ptrtoint %nyx_string* %t3282 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3247, i64 %t3283, i64 2)
  %t3284 = ptrtoint { i64, i8* }* %t3247 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3246, i64 %t3284, i64 5)
  %t3285 = load { i64, i8* }*, { i64, i8* }** %t86
  %t3286 = call { i64, i8* }* @nyx_array_new_ptr()
  %t3287 = getelementptr [22 x i8], [22 x i8]* @.str990, i32 0, i32 0
  %t3288 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str990.c, i8* %t3287, i64 21)
  %t3289 = ptrtoint %nyx_string* %t3288 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3286, i64 %t3289, i64 2)
  %t3290 = getelementptr [6 x i8], [6 x i8]* @.str991, i32 0, i32 0
  %t3291 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str991.c, i8* %t3290, i64 5)
  %t3292 = ptrtoint %nyx_string* %t3291 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3286, i64 %t3292, i64 2)
  %t3293 = getelementptr [4 x i8], [4 x i8]* @.str992, i32 0, i32 0
  %t3294 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str992.c, i8* %t3293, i64 3)
  %t3295 = ptrtoint %nyx_string* %t3294 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3286, i64 %t3295, i64 2)
  %t3296 = getelementptr [7 x i8], [7 x i8]* @.str993, i32 0, i32 0
  %t3297 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str993.c, i8* %t3296, i64 6)
  %t3298 = ptrtoint %nyx_string* %t3297 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3286, i64 %t3298, i64 2)
  %t3299 = getelementptr [7 x i8], [7 x i8]* @.str994, i32 0, i32 0
  %t3300 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str994.c, i8* %t3299, i64 6)
  %t3301 = ptrtoint %nyx_string* %t3300 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3286, i64 %t3301, i64 2)
  %t3302 = getelementptr [1 x i8], [1 x i8]* @.str995, i32 0, i32 0
  %t3303 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str995.c, i8* %t3302, i64 0)
  %t3304 = ptrtoint %nyx_string* %t3303 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3286, i64 %t3304, i64 2)
  %t3305 = getelementptr [1 x i8], [1 x i8]* @.str996, i32 0, i32 0
  %t3306 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str996.c, i8* %t3305, i64 0)
  %t3307 = ptrtoint %nyx_string* %t3306 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3286, i64 %t3307, i64 2)
  %t3308 = getelementptr [1 x i8], [1 x i8]* @.str997, i32 0, i32 0
  %t3309 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str997.c, i8* %t3308, i64 0)
  %t3310 = ptrtoint %nyx_string* %t3309 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3286, i64 %t3310, i64 2)
  %t3311 = getelementptr [1 x i8], [1 x i8]* @.str998, i32 0, i32 0
  %t3312 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str998.c, i8* %t3311, i64 0)
  %t3313 = ptrtoint %nyx_string* %t3312 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3286, i64 %t3313, i64 2)
  %t3314 = getelementptr [36 x i8], [36 x i8]* @.str999, i32 0, i32 0
  %t3315 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str999.c, i8* %t3314, i64 35)
  %t3316 = ptrtoint %nyx_string* %t3315 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3286, i64 %t3316, i64 2)
  %t3317 = getelementptr [102 x i8], [102 x i8]* @.str1000, i32 0, i32 0
  %t3318 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1000.c, i8* %t3317, i64 101)
  %t3319 = ptrtoint %nyx_string* %t3318 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3286, i64 %t3319, i64 2)
  %t3320 = getelementptr [118 x i8], [118 x i8]* @.str1001, i32 0, i32 0
  %t3321 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1001.c, i8* %t3320, i64 117)
  %t3322 = ptrtoint %nyx_string* %t3321 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3286, i64 %t3322, i64 2)
  %t3323 = ptrtoint { i64, i8* }* %t3286 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3285, i64 %t3323, i64 5)
  %t3324 = load { i64, i8* }*, { i64, i8* }** %t86
  %t3325 = call { i64, i8* }* @nyx_array_new_ptr()
  %t3326 = getelementptr [24 x i8], [24 x i8]* @.str1002, i32 0, i32 0
  %t3327 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1002.c, i8* %t3326, i64 23)
  %t3328 = ptrtoint %nyx_string* %t3327 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3325, i64 %t3328, i64 2)
  %t3329 = getelementptr [6 x i8], [6 x i8]* @.str1003, i32 0, i32 0
  %t3330 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1003.c, i8* %t3329, i64 5)
  %t3331 = ptrtoint %nyx_string* %t3330 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3325, i64 %t3331, i64 2)
  %t3332 = getelementptr [4 x i8], [4 x i8]* @.str1004, i32 0, i32 0
  %t3333 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1004.c, i8* %t3332, i64 3)
  %t3334 = ptrtoint %nyx_string* %t3333 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3325, i64 %t3334, i64 2)
  %t3335 = getelementptr [7 x i8], [7 x i8]* @.str1005, i32 0, i32 0
  %t3336 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1005.c, i8* %t3335, i64 6)
  %t3337 = ptrtoint %nyx_string* %t3336 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3325, i64 %t3337, i64 2)
  %t3338 = getelementptr [7 x i8], [7 x i8]* @.str1006, i32 0, i32 0
  %t3339 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1006.c, i8* %t3338, i64 6)
  %t3340 = ptrtoint %nyx_string* %t3339 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3325, i64 %t3340, i64 2)
  %t3341 = getelementptr [1 x i8], [1 x i8]* @.str1007, i32 0, i32 0
  %t3342 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1007.c, i8* %t3341, i64 0)
  %t3343 = ptrtoint %nyx_string* %t3342 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3325, i64 %t3343, i64 2)
  %t3344 = getelementptr [1 x i8], [1 x i8]* @.str1008, i32 0, i32 0
  %t3345 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1008.c, i8* %t3344, i64 0)
  %t3346 = ptrtoint %nyx_string* %t3345 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3325, i64 %t3346, i64 2)
  %t3347 = getelementptr [1 x i8], [1 x i8]* @.str1009, i32 0, i32 0
  %t3348 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1009.c, i8* %t3347, i64 0)
  %t3349 = ptrtoint %nyx_string* %t3348 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3325, i64 %t3349, i64 2)
  %t3350 = getelementptr [1 x i8], [1 x i8]* @.str1010, i32 0, i32 0
  %t3351 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1010.c, i8* %t3350, i64 0)
  %t3352 = ptrtoint %nyx_string* %t3351 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3325, i64 %t3352, i64 2)
  %t3353 = getelementptr [35 x i8], [35 x i8]* @.str1011, i32 0, i32 0
  %t3354 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1011.c, i8* %t3353, i64 34)
  %t3355 = ptrtoint %nyx_string* %t3354 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3325, i64 %t3355, i64 2)
  %t3356 = getelementptr [77 x i8], [77 x i8]* @.str1012, i32 0, i32 0
  %t3357 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1012.c, i8* %t3356, i64 76)
  %t3358 = ptrtoint %nyx_string* %t3357 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3325, i64 %t3358, i64 2)
  %t3359 = getelementptr [78 x i8], [78 x i8]* @.str1013, i32 0, i32 0
  %t3360 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1013.c, i8* %t3359, i64 77)
  %t3361 = ptrtoint %nyx_string* %t3360 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3325, i64 %t3361, i64 2)
  %t3362 = ptrtoint { i64, i8* }* %t3325 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3324, i64 %t3362, i64 5)
  %t3363 = load { i64, i8* }*, { i64, i8* }** %t86
  %t3364 = call { i64, i8* }* @nyx_array_new_ptr()
  %t3365 = getelementptr [22 x i8], [22 x i8]* @.str1014, i32 0, i32 0
  %t3366 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1014.c, i8* %t3365, i64 21)
  %t3367 = ptrtoint %nyx_string* %t3366 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3364, i64 %t3367, i64 2)
  %t3368 = getelementptr [6 x i8], [6 x i8]* @.str1015, i32 0, i32 0
  %t3369 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1015.c, i8* %t3368, i64 5)
  %t3370 = ptrtoint %nyx_string* %t3369 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3364, i64 %t3370, i64 2)
  %t3371 = getelementptr [4 x i8], [4 x i8]* @.str1016, i32 0, i32 0
  %t3372 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1016.c, i8* %t3371, i64 3)
  %t3373 = ptrtoint %nyx_string* %t3372 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3364, i64 %t3373, i64 2)
  %t3374 = getelementptr [7 x i8], [7 x i8]* @.str1017, i32 0, i32 0
  %t3375 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1017.c, i8* %t3374, i64 6)
  %t3376 = ptrtoint %nyx_string* %t3375 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3364, i64 %t3376, i64 2)
  %t3377 = getelementptr [7 x i8], [7 x i8]* @.str1018, i32 0, i32 0
  %t3378 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1018.c, i8* %t3377, i64 6)
  %t3379 = ptrtoint %nyx_string* %t3378 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3364, i64 %t3379, i64 2)
  %t3380 = getelementptr [1 x i8], [1 x i8]* @.str1019, i32 0, i32 0
  %t3381 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1019.c, i8* %t3380, i64 0)
  %t3382 = ptrtoint %nyx_string* %t3381 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3364, i64 %t3382, i64 2)
  %t3383 = getelementptr [1 x i8], [1 x i8]* @.str1020, i32 0, i32 0
  %t3384 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1020.c, i8* %t3383, i64 0)
  %t3385 = ptrtoint %nyx_string* %t3384 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3364, i64 %t3385, i64 2)
  %t3386 = getelementptr [1 x i8], [1 x i8]* @.str1021, i32 0, i32 0
  %t3387 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1021.c, i8* %t3386, i64 0)
  %t3388 = ptrtoint %nyx_string* %t3387 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3364, i64 %t3388, i64 2)
  %t3389 = getelementptr [1 x i8], [1 x i8]* @.str1022, i32 0, i32 0
  %t3390 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1022.c, i8* %t3389, i64 0)
  %t3391 = ptrtoint %nyx_string* %t3390 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3364, i64 %t3391, i64 2)
  %t3392 = getelementptr [69 x i8], [69 x i8]* @.str1023, i32 0, i32 0
  %t3393 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1023.c, i8* %t3392, i64 68)
  %t3394 = ptrtoint %nyx_string* %t3393 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3364, i64 %t3394, i64 2)
  %t3395 = getelementptr [100 x i8], [100 x i8]* @.str1024, i32 0, i32 0
  %t3396 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1024.c, i8* %t3395, i64 99)
  %t3397 = ptrtoint %nyx_string* %t3396 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3364, i64 %t3397, i64 2)
  %t3398 = getelementptr [112 x i8], [112 x i8]* @.str1025, i32 0, i32 0
  %t3399 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1025.c, i8* %t3398, i64 111)
  %t3400 = ptrtoint %nyx_string* %t3399 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3364, i64 %t3400, i64 2)
  %t3401 = ptrtoint { i64, i8* }* %t3364 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3363, i64 %t3401, i64 5)
  %t3402 = load { i64, i8* }*, { i64, i8* }** %t86
  %t3403 = call { i64, i8* }* @nyx_array_new_ptr()
  %t3404 = getelementptr [19 x i8], [19 x i8]* @.str1026, i32 0, i32 0
  %t3405 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1026.c, i8* %t3404, i64 18)
  %t3406 = ptrtoint %nyx_string* %t3405 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3403, i64 %t3406, i64 2)
  %t3407 = getelementptr [6 x i8], [6 x i8]* @.str1027, i32 0, i32 0
  %t3408 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1027.c, i8* %t3407, i64 5)
  %t3409 = ptrtoint %nyx_string* %t3408 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3403, i64 %t3409, i64 2)
  %t3410 = getelementptr [4 x i8], [4 x i8]* @.str1028, i32 0, i32 0
  %t3411 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1028.c, i8* %t3410, i64 3)
  %t3412 = ptrtoint %nyx_string* %t3411 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3403, i64 %t3412, i64 2)
  %t3413 = getelementptr [7 x i8], [7 x i8]* @.str1029, i32 0, i32 0
  %t3414 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1029.c, i8* %t3413, i64 6)
  %t3415 = ptrtoint %nyx_string* %t3414 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3403, i64 %t3415, i64 2)
  %t3416 = getelementptr [7 x i8], [7 x i8]* @.str1030, i32 0, i32 0
  %t3417 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1030.c, i8* %t3416, i64 6)
  %t3418 = ptrtoint %nyx_string* %t3417 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3403, i64 %t3418, i64 2)
  %t3419 = getelementptr [1 x i8], [1 x i8]* @.str1031, i32 0, i32 0
  %t3420 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1031.c, i8* %t3419, i64 0)
  %t3421 = ptrtoint %nyx_string* %t3420 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3403, i64 %t3421, i64 2)
  %t3422 = getelementptr [1 x i8], [1 x i8]* @.str1032, i32 0, i32 0
  %t3423 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1032.c, i8* %t3422, i64 0)
  %t3424 = ptrtoint %nyx_string* %t3423 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3403, i64 %t3424, i64 2)
  %t3425 = getelementptr [1 x i8], [1 x i8]* @.str1033, i32 0, i32 0
  %t3426 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1033.c, i8* %t3425, i64 0)
  %t3427 = ptrtoint %nyx_string* %t3426 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3403, i64 %t3427, i64 2)
  %t3428 = getelementptr [1 x i8], [1 x i8]* @.str1034, i32 0, i32 0
  %t3429 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1034.c, i8* %t3428, i64 0)
  %t3430 = ptrtoint %nyx_string* %t3429 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3403, i64 %t3430, i64 2)
  %t3431 = getelementptr [60 x i8], [60 x i8]* @.str1035, i32 0, i32 0
  %t3432 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1035.c, i8* %t3431, i64 59)
  %t3433 = ptrtoint %nyx_string* %t3432 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3403, i64 %t3433, i64 2)
  %t3434 = getelementptr [111 x i8], [111 x i8]* @.str1036, i32 0, i32 0
  %t3435 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1036.c, i8* %t3434, i64 110)
  %t3436 = ptrtoint %nyx_string* %t3435 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3403, i64 %t3436, i64 2)
  %t3437 = getelementptr [129 x i8], [129 x i8]* @.str1037, i32 0, i32 0
  %t3438 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1037.c, i8* %t3437, i64 128)
  %t3439 = ptrtoint %nyx_string* %t3438 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3403, i64 %t3439, i64 2)
  %t3440 = ptrtoint { i64, i8* }* %t3403 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3402, i64 %t3440, i64 5)
  %t3441 = load { i64, i8* }*, { i64, i8* }** %t86
  %t3442 = call { i64, i8* }* @nyx_array_new_ptr()
  %t3443 = getelementptr [28 x i8], [28 x i8]* @.str1038, i32 0, i32 0
  %t3444 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1038.c, i8* %t3443, i64 27)
  %t3445 = ptrtoint %nyx_string* %t3444 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3442, i64 %t3445, i64 2)
  %t3446 = getelementptr [6 x i8], [6 x i8]* @.str1039, i32 0, i32 0
  %t3447 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1039.c, i8* %t3446, i64 5)
  %t3448 = ptrtoint %nyx_string* %t3447 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3442, i64 %t3448, i64 2)
  %t3449 = getelementptr [5 x i8], [5 x i8]* @.str1040, i32 0, i32 0
  %t3450 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1040.c, i8* %t3449, i64 4)
  %t3451 = ptrtoint %nyx_string* %t3450 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3442, i64 %t3451, i64 2)
  %t3452 = getelementptr [7 x i8], [7 x i8]* @.str1041, i32 0, i32 0
  %t3453 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1041.c, i8* %t3452, i64 6)
  %t3454 = ptrtoint %nyx_string* %t3453 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3442, i64 %t3454, i64 2)
  %t3455 = getelementptr [7 x i8], [7 x i8]* @.str1042, i32 0, i32 0
  %t3456 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1042.c, i8* %t3455, i64 6)
  %t3457 = ptrtoint %nyx_string* %t3456 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3442, i64 %t3457, i64 2)
  %t3458 = getelementptr [1 x i8], [1 x i8]* @.str1043, i32 0, i32 0
  %t3459 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1043.c, i8* %t3458, i64 0)
  %t3460 = ptrtoint %nyx_string* %t3459 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3442, i64 %t3460, i64 2)
  %t3461 = getelementptr [1 x i8], [1 x i8]* @.str1044, i32 0, i32 0
  %t3462 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1044.c, i8* %t3461, i64 0)
  %t3463 = ptrtoint %nyx_string* %t3462 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3442, i64 %t3463, i64 2)
  %t3464 = getelementptr [14 x i8], [14 x i8]* @.str1045, i32 0, i32 0
  %t3465 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1045.c, i8* %t3464, i64 13)
  %t3466 = ptrtoint %nyx_string* %t3465 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3442, i64 %t3466, i64 2)
  %t3467 = getelementptr [1 x i8], [1 x i8]* @.str1046, i32 0, i32 0
  %t3468 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1046.c, i8* %t3467, i64 0)
  %t3469 = ptrtoint %nyx_string* %t3468 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3442, i64 %t3469, i64 2)
  %t3470 = getelementptr [53 x i8], [53 x i8]* @.str1047, i32 0, i32 0
  %t3471 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1047.c, i8* %t3470, i64 52)
  %t3472 = ptrtoint %nyx_string* %t3471 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3442, i64 %t3472, i64 2)
  %t3473 = getelementptr [99 x i8], [99 x i8]* @.str1048, i32 0, i32 0
  %t3474 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1048.c, i8* %t3473, i64 98)
  %t3475 = ptrtoint %nyx_string* %t3474 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3442, i64 %t3475, i64 2)
  %t3476 = getelementptr [112 x i8], [112 x i8]* @.str1049, i32 0, i32 0
  %t3477 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1049.c, i8* %t3476, i64 111)
  %t3478 = ptrtoint %nyx_string* %t3477 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3442, i64 %t3478, i64 2)
  %t3479 = ptrtoint { i64, i8* }* %t3442 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3441, i64 %t3479, i64 5)
  %t3480 = load { i64, i8* }*, { i64, i8* }** %t86
  %t3481 = call { i64, i8* }* @nyx_array_new_ptr()
  %t3482 = getelementptr [31 x i8], [31 x i8]* @.str1050, i32 0, i32 0
  %t3483 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1050.c, i8* %t3482, i64 30)
  %t3484 = ptrtoint %nyx_string* %t3483 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3481, i64 %t3484, i64 2)
  %t3485 = getelementptr [6 x i8], [6 x i8]* @.str1051, i32 0, i32 0
  %t3486 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1051.c, i8* %t3485, i64 5)
  %t3487 = ptrtoint %nyx_string* %t3486 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3481, i64 %t3487, i64 2)
  %t3488 = getelementptr [13 x i8], [13 x i8]* @.str1052, i32 0, i32 0
  %t3489 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1052.c, i8* %t3488, i64 12)
  %t3490 = ptrtoint %nyx_string* %t3489 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3481, i64 %t3490, i64 2)
  %t3491 = getelementptr [7 x i8], [7 x i8]* @.str1053, i32 0, i32 0
  %t3492 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1053.c, i8* %t3491, i64 6)
  %t3493 = ptrtoint %nyx_string* %t3492 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3481, i64 %t3493, i64 2)
  %t3494 = getelementptr [7 x i8], [7 x i8]* @.str1054, i32 0, i32 0
  %t3495 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1054.c, i8* %t3494, i64 6)
  %t3496 = ptrtoint %nyx_string* %t3495 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3481, i64 %t3496, i64 2)
  %t3497 = getelementptr [1 x i8], [1 x i8]* @.str1055, i32 0, i32 0
  %t3498 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1055.c, i8* %t3497, i64 0)
  %t3499 = ptrtoint %nyx_string* %t3498 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3481, i64 %t3499, i64 2)
  %t3500 = getelementptr [1 x i8], [1 x i8]* @.str1056, i32 0, i32 0
  %t3501 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1056.c, i8* %t3500, i64 0)
  %t3502 = ptrtoint %nyx_string* %t3501 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3481, i64 %t3502, i64 2)
  %t3503 = getelementptr [1 x i8], [1 x i8]* @.str1057, i32 0, i32 0
  %t3504 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1057.c, i8* %t3503, i64 0)
  %t3505 = ptrtoint %nyx_string* %t3504 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3481, i64 %t3505, i64 2)
  %t3506 = getelementptr [1 x i8], [1 x i8]* @.str1058, i32 0, i32 0
  %t3507 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1058.c, i8* %t3506, i64 0)
  %t3508 = ptrtoint %nyx_string* %t3507 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3481, i64 %t3508, i64 2)
  %t3509 = getelementptr [97 x i8], [97 x i8]* @.str1059, i32 0, i32 0
  %t3510 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1059.c, i8* %t3509, i64 96)
  %t3511 = ptrtoint %nyx_string* %t3510 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3481, i64 %t3511, i64 2)
  %t3512 = getelementptr [159 x i8], [159 x i8]* @.str1060, i32 0, i32 0
  %t3513 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1060.c, i8* %t3512, i64 158)
  %t3514 = ptrtoint %nyx_string* %t3513 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3481, i64 %t3514, i64 2)
  %t3515 = getelementptr [166 x i8], [166 x i8]* @.str1061, i32 0, i32 0
  %t3516 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1061.c, i8* %t3515, i64 165)
  %t3517 = ptrtoint %nyx_string* %t3516 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3481, i64 %t3517, i64 2)
  %t3518 = ptrtoint { i64, i8* }* %t3481 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3480, i64 %t3518, i64 5)
  %t3519 = load { i64, i8* }*, { i64, i8* }** %t86
  %t3520 = call { i64, i8* }* @nyx_array_new_ptr()
  %t3521 = getelementptr [28 x i8], [28 x i8]* @.str1062, i32 0, i32 0
  %t3522 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1062.c, i8* %t3521, i64 27)
  %t3523 = ptrtoint %nyx_string* %t3522 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3520, i64 %t3523, i64 2)
  %t3524 = getelementptr [6 x i8], [6 x i8]* @.str1063, i32 0, i32 0
  %t3525 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1063.c, i8* %t3524, i64 5)
  %t3526 = ptrtoint %nyx_string* %t3525 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3520, i64 %t3526, i64 2)
  %t3527 = getelementptr [5 x i8], [5 x i8]* @.str1064, i32 0, i32 0
  %t3528 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1064.c, i8* %t3527, i64 4)
  %t3529 = ptrtoint %nyx_string* %t3528 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3520, i64 %t3529, i64 2)
  %t3530 = getelementptr [7 x i8], [7 x i8]* @.str1065, i32 0, i32 0
  %t3531 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1065.c, i8* %t3530, i64 6)
  %t3532 = ptrtoint %nyx_string* %t3531 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3520, i64 %t3532, i64 2)
  %t3533 = getelementptr [7 x i8], [7 x i8]* @.str1066, i32 0, i32 0
  %t3534 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1066.c, i8* %t3533, i64 6)
  %t3535 = ptrtoint %nyx_string* %t3534 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3520, i64 %t3535, i64 2)
  %t3536 = getelementptr [1 x i8], [1 x i8]* @.str1067, i32 0, i32 0
  %t3537 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1067.c, i8* %t3536, i64 0)
  %t3538 = ptrtoint %nyx_string* %t3537 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3520, i64 %t3538, i64 2)
  %t3539 = getelementptr [1 x i8], [1 x i8]* @.str1068, i32 0, i32 0
  %t3540 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1068.c, i8* %t3539, i64 0)
  %t3541 = ptrtoint %nyx_string* %t3540 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3520, i64 %t3541, i64 2)
  %t3542 = getelementptr [1 x i8], [1 x i8]* @.str1069, i32 0, i32 0
  %t3543 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1069.c, i8* %t3542, i64 0)
  %t3544 = ptrtoint %nyx_string* %t3543 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3520, i64 %t3544, i64 2)
  %t3545 = getelementptr [1 x i8], [1 x i8]* @.str1070, i32 0, i32 0
  %t3546 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1070.c, i8* %t3545, i64 0)
  %t3547 = ptrtoint %nyx_string* %t3546 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3520, i64 %t3547, i64 2)
  %t3548 = getelementptr [149 x i8], [149 x i8]* @.str1071, i32 0, i32 0
  %t3549 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1071.c, i8* %t3548, i64 148)
  %t3550 = ptrtoint %nyx_string* %t3549 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3520, i64 %t3550, i64 2)
  %t3551 = getelementptr [176 x i8], [176 x i8]* @.str1072, i32 0, i32 0
  %t3552 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1072.c, i8* %t3551, i64 175)
  %t3553 = ptrtoint %nyx_string* %t3552 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3520, i64 %t3553, i64 2)
  %t3554 = getelementptr [193 x i8], [193 x i8]* @.str1073, i32 0, i32 0
  %t3555 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1073.c, i8* %t3554, i64 192)
  %t3556 = ptrtoint %nyx_string* %t3555 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3520, i64 %t3556, i64 2)
  %t3557 = ptrtoint { i64, i8* }* %t3520 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3519, i64 %t3557, i64 5)
  %t3558 = load { i64, i8* }*, { i64, i8* }** %t86
  %t3559 = call { i64, i8* }* @nyx_array_new_ptr()
  %t3560 = getelementptr [25 x i8], [25 x i8]* @.str1074, i32 0, i32 0
  %t3561 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1074.c, i8* %t3560, i64 24)
  %t3562 = ptrtoint %nyx_string* %t3561 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3559, i64 %t3562, i64 2)
  %t3563 = getelementptr [6 x i8], [6 x i8]* @.str1075, i32 0, i32 0
  %t3564 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1075.c, i8* %t3563, i64 5)
  %t3565 = ptrtoint %nyx_string* %t3564 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3559, i64 %t3565, i64 2)
  %t3566 = getelementptr [13 x i8], [13 x i8]* @.str1076, i32 0, i32 0
  %t3567 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1076.c, i8* %t3566, i64 12)
  %t3568 = ptrtoint %nyx_string* %t3567 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3559, i64 %t3568, i64 2)
  %t3569 = getelementptr [7 x i8], [7 x i8]* @.str1077, i32 0, i32 0
  %t3570 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1077.c, i8* %t3569, i64 6)
  %t3571 = ptrtoint %nyx_string* %t3570 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3559, i64 %t3571, i64 2)
  %t3572 = getelementptr [7 x i8], [7 x i8]* @.str1078, i32 0, i32 0
  %t3573 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1078.c, i8* %t3572, i64 6)
  %t3574 = ptrtoint %nyx_string* %t3573 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3559, i64 %t3574, i64 2)
  %t3575 = getelementptr [1 x i8], [1 x i8]* @.str1079, i32 0, i32 0
  %t3576 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1079.c, i8* %t3575, i64 0)
  %t3577 = ptrtoint %nyx_string* %t3576 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3559, i64 %t3577, i64 2)
  %t3578 = getelementptr [1 x i8], [1 x i8]* @.str1080, i32 0, i32 0
  %t3579 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1080.c, i8* %t3578, i64 0)
  %t3580 = ptrtoint %nyx_string* %t3579 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3559, i64 %t3580, i64 2)
  %t3581 = getelementptr [1 x i8], [1 x i8]* @.str1081, i32 0, i32 0
  %t3582 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1081.c, i8* %t3581, i64 0)
  %t3583 = ptrtoint %nyx_string* %t3582 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3559, i64 %t3583, i64 2)
  %t3584 = getelementptr [1 x i8], [1 x i8]* @.str1082, i32 0, i32 0
  %t3585 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1082.c, i8* %t3584, i64 0)
  %t3586 = ptrtoint %nyx_string* %t3585 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3559, i64 %t3586, i64 2)
  %t3587 = getelementptr [100 x i8], [100 x i8]* @.str1083, i32 0, i32 0
  %t3588 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1083.c, i8* %t3587, i64 99)
  %t3589 = ptrtoint %nyx_string* %t3588 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3559, i64 %t3589, i64 2)
  %t3590 = getelementptr [228 x i8], [228 x i8]* @.str1084, i32 0, i32 0
  %t3591 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1084.c, i8* %t3590, i64 227)
  %t3592 = ptrtoint %nyx_string* %t3591 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3559, i64 %t3592, i64 2)
  %t3593 = getelementptr [244 x i8], [244 x i8]* @.str1085, i32 0, i32 0
  %t3594 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1085.c, i8* %t3593, i64 243)
  %t3595 = ptrtoint %nyx_string* %t3594 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3559, i64 %t3595, i64 2)
  %t3596 = ptrtoint { i64, i8* }* %t3559 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3558, i64 %t3596, i64 5)
  %t3597 = load { i64, i8* }*, { i64, i8* }** %t86
  %t3598 = call { i64, i8* }* @nyx_array_new_ptr()
  %t3599 = getelementptr [21 x i8], [21 x i8]* @.str1086, i32 0, i32 0
  %t3600 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1086.c, i8* %t3599, i64 20)
  %t3601 = ptrtoint %nyx_string* %t3600 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3598, i64 %t3601, i64 2)
  %t3602 = getelementptr [6 x i8], [6 x i8]* @.str1087, i32 0, i32 0
  %t3603 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1087.c, i8* %t3602, i64 5)
  %t3604 = ptrtoint %nyx_string* %t3603 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3598, i64 %t3604, i64 2)
  %t3605 = getelementptr [13 x i8], [13 x i8]* @.str1088, i32 0, i32 0
  %t3606 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1088.c, i8* %t3605, i64 12)
  %t3607 = ptrtoint %nyx_string* %t3606 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3598, i64 %t3607, i64 2)
  %t3608 = getelementptr [7 x i8], [7 x i8]* @.str1089, i32 0, i32 0
  %t3609 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1089.c, i8* %t3608, i64 6)
  %t3610 = ptrtoint %nyx_string* %t3609 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3598, i64 %t3610, i64 2)
  %t3611 = getelementptr [7 x i8], [7 x i8]* @.str1090, i32 0, i32 0
  %t3612 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1090.c, i8* %t3611, i64 6)
  %t3613 = ptrtoint %nyx_string* %t3612 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3598, i64 %t3613, i64 2)
  %t3614 = getelementptr [1 x i8], [1 x i8]* @.str1091, i32 0, i32 0
  %t3615 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1091.c, i8* %t3614, i64 0)
  %t3616 = ptrtoint %nyx_string* %t3615 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3598, i64 %t3616, i64 2)
  %t3617 = getelementptr [1 x i8], [1 x i8]* @.str1092, i32 0, i32 0
  %t3618 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1092.c, i8* %t3617, i64 0)
  %t3619 = ptrtoint %nyx_string* %t3618 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3598, i64 %t3619, i64 2)
  %t3620 = getelementptr [1 x i8], [1 x i8]* @.str1093, i32 0, i32 0
  %t3621 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1093.c, i8* %t3620, i64 0)
  %t3622 = ptrtoint %nyx_string* %t3621 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3598, i64 %t3622, i64 2)
  %t3623 = getelementptr [1 x i8], [1 x i8]* @.str1094, i32 0, i32 0
  %t3624 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1094.c, i8* %t3623, i64 0)
  %t3625 = ptrtoint %nyx_string* %t3624 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3598, i64 %t3625, i64 2)
  %t3626 = getelementptr [43 x i8], [43 x i8]* @.str1095, i32 0, i32 0
  %t3627 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1095.c, i8* %t3626, i64 42)
  %t3628 = ptrtoint %nyx_string* %t3627 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3598, i64 %t3628, i64 2)
  %t3629 = getelementptr [162 x i8], [162 x i8]* @.str1096, i32 0, i32 0
  %t3630 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1096.c, i8* %t3629, i64 161)
  %t3631 = ptrtoint %nyx_string* %t3630 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3598, i64 %t3631, i64 2)
  %t3632 = getelementptr [175 x i8], [175 x i8]* @.str1097, i32 0, i32 0
  %t3633 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1097.c, i8* %t3632, i64 174)
  %t3634 = ptrtoint %nyx_string* %t3633 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3598, i64 %t3634, i64 2)
  %t3635 = ptrtoint { i64, i8* }* %t3598 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3597, i64 %t3635, i64 5)
  %t3636 = load { i64, i8* }*, { i64, i8* }** %t86
  %t3637 = call { i64, i8* }* @nyx_array_new_ptr()
  %t3638 = getelementptr [20 x i8], [20 x i8]* @.str1098, i32 0, i32 0
  %t3639 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1098.c, i8* %t3638, i64 19)
  %t3640 = ptrtoint %nyx_string* %t3639 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3637, i64 %t3640, i64 2)
  %t3641 = getelementptr [6 x i8], [6 x i8]* @.str1099, i32 0, i32 0
  %t3642 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1099.c, i8* %t3641, i64 5)
  %t3643 = ptrtoint %nyx_string* %t3642 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3637, i64 %t3643, i64 2)
  %t3644 = getelementptr [13 x i8], [13 x i8]* @.str1100, i32 0, i32 0
  %t3645 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1100.c, i8* %t3644, i64 12)
  %t3646 = ptrtoint %nyx_string* %t3645 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3637, i64 %t3646, i64 2)
  %t3647 = getelementptr [7 x i8], [7 x i8]* @.str1101, i32 0, i32 0
  %t3648 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1101.c, i8* %t3647, i64 6)
  %t3649 = ptrtoint %nyx_string* %t3648 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3637, i64 %t3649, i64 2)
  %t3650 = getelementptr [7 x i8], [7 x i8]* @.str1102, i32 0, i32 0
  %t3651 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1102.c, i8* %t3650, i64 6)
  %t3652 = ptrtoint %nyx_string* %t3651 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3637, i64 %t3652, i64 2)
  %t3653 = getelementptr [1 x i8], [1 x i8]* @.str1103, i32 0, i32 0
  %t3654 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1103.c, i8* %t3653, i64 0)
  %t3655 = ptrtoint %nyx_string* %t3654 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3637, i64 %t3655, i64 2)
  %t3656 = getelementptr [1 x i8], [1 x i8]* @.str1104, i32 0, i32 0
  %t3657 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1104.c, i8* %t3656, i64 0)
  %t3658 = ptrtoint %nyx_string* %t3657 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3637, i64 %t3658, i64 2)
  %t3659 = getelementptr [1 x i8], [1 x i8]* @.str1105, i32 0, i32 0
  %t3660 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1105.c, i8* %t3659, i64 0)
  %t3661 = ptrtoint %nyx_string* %t3660 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3637, i64 %t3661, i64 2)
  %t3662 = getelementptr [1 x i8], [1 x i8]* @.str1106, i32 0, i32 0
  %t3663 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1106.c, i8* %t3662, i64 0)
  %t3664 = ptrtoint %nyx_string* %t3663 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3637, i64 %t3664, i64 2)
  %t3665 = getelementptr [39 x i8], [39 x i8]* @.str1107, i32 0, i32 0
  %t3666 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1107.c, i8* %t3665, i64 38)
  %t3667 = ptrtoint %nyx_string* %t3666 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3637, i64 %t3667, i64 2)
  %t3668 = getelementptr [157 x i8], [157 x i8]* @.str1108, i32 0, i32 0
  %t3669 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1108.c, i8* %t3668, i64 156)
  %t3670 = ptrtoint %nyx_string* %t3669 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3637, i64 %t3670, i64 2)
  %t3671 = getelementptr [158 x i8], [158 x i8]* @.str1109, i32 0, i32 0
  %t3672 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1109.c, i8* %t3671, i64 157)
  %t3673 = ptrtoint %nyx_string* %t3672 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3637, i64 %t3673, i64 2)
  %t3674 = ptrtoint { i64, i8* }* %t3637 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3636, i64 %t3674, i64 5)
  %t3675 = load { i64, i8* }*, { i64, i8* }** %t86
  %t3676 = call { i64, i8* }* @nyx_array_new_ptr()
  %t3677 = getelementptr [31 x i8], [31 x i8]* @.str1110, i32 0, i32 0
  %t3678 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1110.c, i8* %t3677, i64 30)
  %t3679 = ptrtoint %nyx_string* %t3678 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3676, i64 %t3679, i64 2)
  %t3680 = getelementptr [6 x i8], [6 x i8]* @.str1111, i32 0, i32 0
  %t3681 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1111.c, i8* %t3680, i64 5)
  %t3682 = ptrtoint %nyx_string* %t3681 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3676, i64 %t3682, i64 2)
  %t3683 = getelementptr [5 x i8], [5 x i8]* @.str1112, i32 0, i32 0
  %t3684 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1112.c, i8* %t3683, i64 4)
  %t3685 = ptrtoint %nyx_string* %t3684 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3676, i64 %t3685, i64 2)
  %t3686 = getelementptr [7 x i8], [7 x i8]* @.str1113, i32 0, i32 0
  %t3687 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1113.c, i8* %t3686, i64 6)
  %t3688 = ptrtoint %nyx_string* %t3687 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3676, i64 %t3688, i64 2)
  %t3689 = getelementptr [7 x i8], [7 x i8]* @.str1114, i32 0, i32 0
  %t3690 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1114.c, i8* %t3689, i64 6)
  %t3691 = ptrtoint %nyx_string* %t3690 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3676, i64 %t3691, i64 2)
  %t3692 = getelementptr [1 x i8], [1 x i8]* @.str1115, i32 0, i32 0
  %t3693 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1115.c, i8* %t3692, i64 0)
  %t3694 = ptrtoint %nyx_string* %t3693 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3676, i64 %t3694, i64 2)
  %t3695 = getelementptr [1 x i8], [1 x i8]* @.str1116, i32 0, i32 0
  %t3696 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1116.c, i8* %t3695, i64 0)
  %t3697 = ptrtoint %nyx_string* %t3696 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3676, i64 %t3697, i64 2)
  %t3698 = getelementptr [1 x i8], [1 x i8]* @.str1117, i32 0, i32 0
  %t3699 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1117.c, i8* %t3698, i64 0)
  %t3700 = ptrtoint %nyx_string* %t3699 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3676, i64 %t3700, i64 2)
  %t3701 = getelementptr [1 x i8], [1 x i8]* @.str1118, i32 0, i32 0
  %t3702 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1118.c, i8* %t3701, i64 0)
  %t3703 = ptrtoint %nyx_string* %t3702 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3676, i64 %t3703, i64 2)
  %t3704 = getelementptr [120 x i8], [120 x i8]* @.str1119, i32 0, i32 0
  %t3705 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1119.c, i8* %t3704, i64 119)
  %t3706 = ptrtoint %nyx_string* %t3705 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3676, i64 %t3706, i64 2)
  %t3707 = getelementptr [191 x i8], [191 x i8]* @.str1120, i32 0, i32 0
  %t3708 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1120.c, i8* %t3707, i64 190)
  %t3709 = ptrtoint %nyx_string* %t3708 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3676, i64 %t3709, i64 2)
  %t3710 = getelementptr [198 x i8], [198 x i8]* @.str1121, i32 0, i32 0
  %t3711 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1121.c, i8* %t3710, i64 197)
  %t3712 = ptrtoint %nyx_string* %t3711 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3676, i64 %t3712, i64 2)
  %t3713 = ptrtoint { i64, i8* }* %t3676 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3675, i64 %t3713, i64 5)
  %t3714 = load { i64, i8* }*, { i64, i8* }** %t86
  %t3715 = call { i64, i8* }* @nyx_array_new_ptr()
  %t3716 = getelementptr [18 x i8], [18 x i8]* @.str1122, i32 0, i32 0
  %t3717 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1122.c, i8* %t3716, i64 17)
  %t3718 = ptrtoint %nyx_string* %t3717 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3715, i64 %t3718, i64 2)
  %t3719 = getelementptr [6 x i8], [6 x i8]* @.str1123, i32 0, i32 0
  %t3720 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1123.c, i8* %t3719, i64 5)
  %t3721 = ptrtoint %nyx_string* %t3720 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3715, i64 %t3721, i64 2)
  %t3722 = getelementptr [4 x i8], [4 x i8]* @.str1124, i32 0, i32 0
  %t3723 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1124.c, i8* %t3722, i64 3)
  %t3724 = ptrtoint %nyx_string* %t3723 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3715, i64 %t3724, i64 2)
  %t3725 = getelementptr [7 x i8], [7 x i8]* @.str1125, i32 0, i32 0
  %t3726 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1125.c, i8* %t3725, i64 6)
  %t3727 = ptrtoint %nyx_string* %t3726 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3715, i64 %t3727, i64 2)
  %t3728 = getelementptr [7 x i8], [7 x i8]* @.str1126, i32 0, i32 0
  %t3729 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1126.c, i8* %t3728, i64 6)
  %t3730 = ptrtoint %nyx_string* %t3729 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3715, i64 %t3730, i64 2)
  %t3731 = getelementptr [1 x i8], [1 x i8]* @.str1127, i32 0, i32 0
  %t3732 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1127.c, i8* %t3731, i64 0)
  %t3733 = ptrtoint %nyx_string* %t3732 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3715, i64 %t3733, i64 2)
  %t3734 = getelementptr [1 x i8], [1 x i8]* @.str1128, i32 0, i32 0
  %t3735 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1128.c, i8* %t3734, i64 0)
  %t3736 = ptrtoint %nyx_string* %t3735 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3715, i64 %t3736, i64 2)
  %t3737 = getelementptr [1 x i8], [1 x i8]* @.str1129, i32 0, i32 0
  %t3738 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1129.c, i8* %t3737, i64 0)
  %t3739 = ptrtoint %nyx_string* %t3738 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3715, i64 %t3739, i64 2)
  %t3740 = getelementptr [50 x i8], [50 x i8]* @.str1130, i32 0, i32 0
  %t3741 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1130.c, i8* %t3740, i64 49)
  %t3742 = ptrtoint %nyx_string* %t3741 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3715, i64 %t3742, i64 2)
  %t3743 = getelementptr [51 x i8], [51 x i8]* @.str1131, i32 0, i32 0
  %t3744 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1131.c, i8* %t3743, i64 50)
  %t3745 = ptrtoint %nyx_string* %t3744 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3715, i64 %t3745, i64 2)
  %t3746 = getelementptr [78 x i8], [78 x i8]* @.str1132, i32 0, i32 0
  %t3747 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1132.c, i8* %t3746, i64 77)
  %t3748 = ptrtoint %nyx_string* %t3747 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3715, i64 %t3748, i64 2)
  %t3749 = getelementptr [83 x i8], [83 x i8]* @.str1133, i32 0, i32 0
  %t3750 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1133.c, i8* %t3749, i64 82)
  %t3751 = ptrtoint %nyx_string* %t3750 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3715, i64 %t3751, i64 2)
  %t3752 = ptrtoint { i64, i8* }* %t3715 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3714, i64 %t3752, i64 5)
  %t3753 = load { i64, i8* }*, { i64, i8* }** %t86
  %t3754 = call { i64, i8* }* @nyx_array_new_ptr()
  %t3755 = getelementptr [22 x i8], [22 x i8]* @.str1134, i32 0, i32 0
  %t3756 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1134.c, i8* %t3755, i64 21)
  %t3757 = ptrtoint %nyx_string* %t3756 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3754, i64 %t3757, i64 2)
  %t3758 = getelementptr [6 x i8], [6 x i8]* @.str1135, i32 0, i32 0
  %t3759 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1135.c, i8* %t3758, i64 5)
  %t3760 = ptrtoint %nyx_string* %t3759 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3754, i64 %t3760, i64 2)
  %t3761 = getelementptr [4 x i8], [4 x i8]* @.str1136, i32 0, i32 0
  %t3762 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1136.c, i8* %t3761, i64 3)
  %t3763 = ptrtoint %nyx_string* %t3762 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3754, i64 %t3763, i64 2)
  %t3764 = getelementptr [7 x i8], [7 x i8]* @.str1137, i32 0, i32 0
  %t3765 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1137.c, i8* %t3764, i64 6)
  %t3766 = ptrtoint %nyx_string* %t3765 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3754, i64 %t3766, i64 2)
  %t3767 = getelementptr [7 x i8], [7 x i8]* @.str1138, i32 0, i32 0
  %t3768 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1138.c, i8* %t3767, i64 6)
  %t3769 = ptrtoint %nyx_string* %t3768 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3754, i64 %t3769, i64 2)
  %t3770 = getelementptr [1 x i8], [1 x i8]* @.str1139, i32 0, i32 0
  %t3771 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1139.c, i8* %t3770, i64 0)
  %t3772 = ptrtoint %nyx_string* %t3771 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3754, i64 %t3772, i64 2)
  %t3773 = getelementptr [1 x i8], [1 x i8]* @.str1140, i32 0, i32 0
  %t3774 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1140.c, i8* %t3773, i64 0)
  %t3775 = ptrtoint %nyx_string* %t3774 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3754, i64 %t3775, i64 2)
  %t3776 = getelementptr [1 x i8], [1 x i8]* @.str1141, i32 0, i32 0
  %t3777 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1141.c, i8* %t3776, i64 0)
  %t3778 = ptrtoint %nyx_string* %t3777 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3754, i64 %t3778, i64 2)
  %t3779 = getelementptr [1 x i8], [1 x i8]* @.str1142, i32 0, i32 0
  %t3780 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1142.c, i8* %t3779, i64 0)
  %t3781 = ptrtoint %nyx_string* %t3780 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3754, i64 %t3781, i64 2)
  %t3782 = getelementptr [43 x i8], [43 x i8]* @.str1143, i32 0, i32 0
  %t3783 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1143.c, i8* %t3782, i64 42)
  %t3784 = ptrtoint %nyx_string* %t3783 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3754, i64 %t3784, i64 2)
  %t3785 = getelementptr [67 x i8], [67 x i8]* @.str1144, i32 0, i32 0
  %t3786 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1144.c, i8* %t3785, i64 66)
  %t3787 = ptrtoint %nyx_string* %t3786 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3754, i64 %t3787, i64 2)
  %t3788 = getelementptr [70 x i8], [70 x i8]* @.str1145, i32 0, i32 0
  %t3789 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1145.c, i8* %t3788, i64 69)
  %t3790 = ptrtoint %nyx_string* %t3789 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3754, i64 %t3790, i64 2)
  %t3791 = ptrtoint { i64, i8* }* %t3754 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3753, i64 %t3791, i64 5)
  %t3792 = load { i64, i8* }*, { i64, i8* }** %t86
  %t3793 = call { i64, i8* }* @nyx_array_new_ptr()
  %t3794 = getelementptr [19 x i8], [19 x i8]* @.str1146, i32 0, i32 0
  %t3795 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1146.c, i8* %t3794, i64 18)
  %t3796 = ptrtoint %nyx_string* %t3795 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3793, i64 %t3796, i64 2)
  %t3797 = getelementptr [6 x i8], [6 x i8]* @.str1147, i32 0, i32 0
  %t3798 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1147.c, i8* %t3797, i64 5)
  %t3799 = ptrtoint %nyx_string* %t3798 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3793, i64 %t3799, i64 2)
  %t3800 = getelementptr [13 x i8], [13 x i8]* @.str1148, i32 0, i32 0
  %t3801 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1148.c, i8* %t3800, i64 12)
  %t3802 = ptrtoint %nyx_string* %t3801 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3793, i64 %t3802, i64 2)
  %t3803 = getelementptr [7 x i8], [7 x i8]* @.str1149, i32 0, i32 0
  %t3804 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1149.c, i8* %t3803, i64 6)
  %t3805 = ptrtoint %nyx_string* %t3804 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3793, i64 %t3805, i64 2)
  %t3806 = getelementptr [7 x i8], [7 x i8]* @.str1150, i32 0, i32 0
  %t3807 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1150.c, i8* %t3806, i64 6)
  %t3808 = ptrtoint %nyx_string* %t3807 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3793, i64 %t3808, i64 2)
  %t3809 = getelementptr [1 x i8], [1 x i8]* @.str1151, i32 0, i32 0
  %t3810 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1151.c, i8* %t3809, i64 0)
  %t3811 = ptrtoint %nyx_string* %t3810 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3793, i64 %t3811, i64 2)
  %t3812 = getelementptr [1 x i8], [1 x i8]* @.str1152, i32 0, i32 0
  %t3813 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1152.c, i8* %t3812, i64 0)
  %t3814 = ptrtoint %nyx_string* %t3813 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3793, i64 %t3814, i64 2)
  %t3815 = getelementptr [1 x i8], [1 x i8]* @.str1153, i32 0, i32 0
  %t3816 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1153.c, i8* %t3815, i64 0)
  %t3817 = ptrtoint %nyx_string* %t3816 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3793, i64 %t3817, i64 2)
  %t3818 = getelementptr [1 x i8], [1 x i8]* @.str1154, i32 0, i32 0
  %t3819 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1154.c, i8* %t3818, i64 0)
  %t3820 = ptrtoint %nyx_string* %t3819 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3793, i64 %t3820, i64 2)
  %t3821 = getelementptr [94 x i8], [94 x i8]* @.str1155, i32 0, i32 0
  %t3822 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1155.c, i8* %t3821, i64 93)
  %t3823 = ptrtoint %nyx_string* %t3822 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3793, i64 %t3823, i64 2)
  %t3824 = getelementptr [191 x i8], [191 x i8]* @.str1156, i32 0, i32 0
  %t3825 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1156.c, i8* %t3824, i64 190)
  %t3826 = ptrtoint %nyx_string* %t3825 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3793, i64 %t3826, i64 2)
  %t3827 = getelementptr [202 x i8], [202 x i8]* @.str1157, i32 0, i32 0
  %t3828 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1157.c, i8* %t3827, i64 201)
  %t3829 = ptrtoint %nyx_string* %t3828 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3793, i64 %t3829, i64 2)
  %t3830 = ptrtoint { i64, i8* }* %t3793 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3792, i64 %t3830, i64 5)
  %t3831 = load { i64, i8* }*, { i64, i8* }** %t86
  %t3832 = call { i64, i8* }* @nyx_array_new_ptr()
  %t3833 = getelementptr [32 x i8], [32 x i8]* @.str1158, i32 0, i32 0
  %t3834 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1158.c, i8* %t3833, i64 31)
  %t3835 = ptrtoint %nyx_string* %t3834 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3832, i64 %t3835, i64 2)
  %t3836 = getelementptr [6 x i8], [6 x i8]* @.str1159, i32 0, i32 0
  %t3837 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1159.c, i8* %t3836, i64 5)
  %t3838 = ptrtoint %nyx_string* %t3837 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3832, i64 %t3838, i64 2)
  %t3839 = getelementptr [4 x i8], [4 x i8]* @.str1160, i32 0, i32 0
  %t3840 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1160.c, i8* %t3839, i64 3)
  %t3841 = ptrtoint %nyx_string* %t3840 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3832, i64 %t3841, i64 2)
  %t3842 = getelementptr [7 x i8], [7 x i8]* @.str1161, i32 0, i32 0
  %t3843 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1161.c, i8* %t3842, i64 6)
  %t3844 = ptrtoint %nyx_string* %t3843 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3832, i64 %t3844, i64 2)
  %t3845 = getelementptr [7 x i8], [7 x i8]* @.str1162, i32 0, i32 0
  %t3846 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1162.c, i8* %t3845, i64 6)
  %t3847 = ptrtoint %nyx_string* %t3846 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3832, i64 %t3847, i64 2)
  %t3848 = getelementptr [1 x i8], [1 x i8]* @.str1163, i32 0, i32 0
  %t3849 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1163.c, i8* %t3848, i64 0)
  %t3850 = ptrtoint %nyx_string* %t3849 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3832, i64 %t3850, i64 2)
  %t3851 = getelementptr [1 x i8], [1 x i8]* @.str1164, i32 0, i32 0
  %t3852 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1164.c, i8* %t3851, i64 0)
  %t3853 = ptrtoint %nyx_string* %t3852 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3832, i64 %t3853, i64 2)
  %t3854 = getelementptr [1 x i8], [1 x i8]* @.str1165, i32 0, i32 0
  %t3855 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1165.c, i8* %t3854, i64 0)
  %t3856 = ptrtoint %nyx_string* %t3855 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3832, i64 %t3856, i64 2)
  %t3857 = getelementptr [1 x i8], [1 x i8]* @.str1166, i32 0, i32 0
  %t3858 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1166.c, i8* %t3857, i64 0)
  %t3859 = ptrtoint %nyx_string* %t3858 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3832, i64 %t3859, i64 2)
  %t3860 = getelementptr [52 x i8], [52 x i8]* @.str1167, i32 0, i32 0
  %t3861 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1167.c, i8* %t3860, i64 51)
  %t3862 = ptrtoint %nyx_string* %t3861 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3832, i64 %t3862, i64 2)
  %t3863 = getelementptr [123 x i8], [123 x i8]* @.str1168, i32 0, i32 0
  %t3864 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1168.c, i8* %t3863, i64 122)
  %t3865 = ptrtoint %nyx_string* %t3864 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3832, i64 %t3865, i64 2)
  %t3866 = getelementptr [127 x i8], [127 x i8]* @.str1169, i32 0, i32 0
  %t3867 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1169.c, i8* %t3866, i64 126)
  %t3868 = ptrtoint %nyx_string* %t3867 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3832, i64 %t3868, i64 2)
  %t3869 = ptrtoint { i64, i8* }* %t3832 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3831, i64 %t3869, i64 5)
  %t3870 = load { i64, i8* }*, { i64, i8* }** %t86
  %t3871 = call { i64, i8* }* @nyx_array_new_ptr()
  %t3872 = getelementptr [18 x i8], [18 x i8]* @.str1170, i32 0, i32 0
  %t3873 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1170.c, i8* %t3872, i64 17)
  %t3874 = ptrtoint %nyx_string* %t3873 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3871, i64 %t3874, i64 2)
  %t3875 = getelementptr [6 x i8], [6 x i8]* @.str1171, i32 0, i32 0
  %t3876 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1171.c, i8* %t3875, i64 5)
  %t3877 = ptrtoint %nyx_string* %t3876 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3871, i64 %t3877, i64 2)
  %t3878 = getelementptr [4 x i8], [4 x i8]* @.str1172, i32 0, i32 0
  %t3879 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1172.c, i8* %t3878, i64 3)
  %t3880 = ptrtoint %nyx_string* %t3879 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3871, i64 %t3880, i64 2)
  %t3881 = getelementptr [7 x i8], [7 x i8]* @.str1173, i32 0, i32 0
  %t3882 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1173.c, i8* %t3881, i64 6)
  %t3883 = ptrtoint %nyx_string* %t3882 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3871, i64 %t3883, i64 2)
  %t3884 = getelementptr [7 x i8], [7 x i8]* @.str1174, i32 0, i32 0
  %t3885 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1174.c, i8* %t3884, i64 6)
  %t3886 = ptrtoint %nyx_string* %t3885 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3871, i64 %t3886, i64 2)
  %t3887 = getelementptr [1 x i8], [1 x i8]* @.str1175, i32 0, i32 0
  %t3888 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1175.c, i8* %t3887, i64 0)
  %t3889 = ptrtoint %nyx_string* %t3888 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3871, i64 %t3889, i64 2)
  %t3890 = getelementptr [1 x i8], [1 x i8]* @.str1176, i32 0, i32 0
  %t3891 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1176.c, i8* %t3890, i64 0)
  %t3892 = ptrtoint %nyx_string* %t3891 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3871, i64 %t3892, i64 2)
  %t3893 = getelementptr [1 x i8], [1 x i8]* @.str1177, i32 0, i32 0
  %t3894 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1177.c, i8* %t3893, i64 0)
  %t3895 = ptrtoint %nyx_string* %t3894 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3871, i64 %t3895, i64 2)
  %t3896 = getelementptr [1 x i8], [1 x i8]* @.str1178, i32 0, i32 0
  %t3897 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1178.c, i8* %t3896, i64 0)
  %t3898 = ptrtoint %nyx_string* %t3897 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3871, i64 %t3898, i64 2)
  %t3899 = getelementptr [62 x i8], [62 x i8]* @.str1179, i32 0, i32 0
  %t3900 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1179.c, i8* %t3899, i64 61)
  %t3901 = ptrtoint %nyx_string* %t3900 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3871, i64 %t3901, i64 2)
  %t3902 = getelementptr [146 x i8], [146 x i8]* @.str1180, i32 0, i32 0
  %t3903 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1180.c, i8* %t3902, i64 145)
  %t3904 = ptrtoint %nyx_string* %t3903 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3871, i64 %t3904, i64 2)
  %t3905 = getelementptr [162 x i8], [162 x i8]* @.str1181, i32 0, i32 0
  %t3906 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1181.c, i8* %t3905, i64 161)
  %t3907 = ptrtoint %nyx_string* %t3906 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3871, i64 %t3907, i64 2)
  %t3908 = ptrtoint { i64, i8* }* %t3871 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3870, i64 %t3908, i64 5)
  %t3909 = load { i64, i8* }*, { i64, i8* }** %t86
  %t3910 = call { i64, i8* }* @nyx_array_new_ptr()
  %t3911 = getelementptr [24 x i8], [24 x i8]* @.str1182, i32 0, i32 0
  %t3912 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1182.c, i8* %t3911, i64 23)
  %t3913 = ptrtoint %nyx_string* %t3912 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3910, i64 %t3913, i64 2)
  %t3914 = getelementptr [6 x i8], [6 x i8]* @.str1183, i32 0, i32 0
  %t3915 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1183.c, i8* %t3914, i64 5)
  %t3916 = ptrtoint %nyx_string* %t3915 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3910, i64 %t3916, i64 2)
  %t3917 = getelementptr [4 x i8], [4 x i8]* @.str1184, i32 0, i32 0
  %t3918 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1184.c, i8* %t3917, i64 3)
  %t3919 = ptrtoint %nyx_string* %t3918 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3910, i64 %t3919, i64 2)
  %t3920 = getelementptr [7 x i8], [7 x i8]* @.str1185, i32 0, i32 0
  %t3921 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1185.c, i8* %t3920, i64 6)
  %t3922 = ptrtoint %nyx_string* %t3921 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3910, i64 %t3922, i64 2)
  %t3923 = getelementptr [7 x i8], [7 x i8]* @.str1186, i32 0, i32 0
  %t3924 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1186.c, i8* %t3923, i64 6)
  %t3925 = ptrtoint %nyx_string* %t3924 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3910, i64 %t3925, i64 2)
  %t3926 = getelementptr [1 x i8], [1 x i8]* @.str1187, i32 0, i32 0
  %t3927 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1187.c, i8* %t3926, i64 0)
  %t3928 = ptrtoint %nyx_string* %t3927 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3910, i64 %t3928, i64 2)
  %t3929 = getelementptr [1 x i8], [1 x i8]* @.str1188, i32 0, i32 0
  %t3930 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1188.c, i8* %t3929, i64 0)
  %t3931 = ptrtoint %nyx_string* %t3930 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3910, i64 %t3931, i64 2)
  %t3932 = getelementptr [1 x i8], [1 x i8]* @.str1189, i32 0, i32 0
  %t3933 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1189.c, i8* %t3932, i64 0)
  %t3934 = ptrtoint %nyx_string* %t3933 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3910, i64 %t3934, i64 2)
  %t3935 = getelementptr [1 x i8], [1 x i8]* @.str1190, i32 0, i32 0
  %t3936 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1190.c, i8* %t3935, i64 0)
  %t3937 = ptrtoint %nyx_string* %t3936 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3910, i64 %t3937, i64 2)
  %t3938 = getelementptr [45 x i8], [45 x i8]* @.str1191, i32 0, i32 0
  %t3939 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1191.c, i8* %t3938, i64 44)
  %t3940 = ptrtoint %nyx_string* %t3939 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3910, i64 %t3940, i64 2)
  %t3941 = getelementptr [78 x i8], [78 x i8]* @.str1192, i32 0, i32 0
  %t3942 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1192.c, i8* %t3941, i64 77)
  %t3943 = ptrtoint %nyx_string* %t3942 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3910, i64 %t3943, i64 2)
  %t3944 = getelementptr [74 x i8], [74 x i8]* @.str1193, i32 0, i32 0
  %t3945 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1193.c, i8* %t3944, i64 73)
  %t3946 = ptrtoint %nyx_string* %t3945 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3910, i64 %t3946, i64 2)
  %t3947 = ptrtoint { i64, i8* }* %t3910 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3909, i64 %t3947, i64 5)
  %t3948 = load { i64, i8* }*, { i64, i8* }** %t86
  %t3949 = call { i64, i8* }* @nyx_array_new_ptr()
  %t3950 = getelementptr [24 x i8], [24 x i8]* @.str1194, i32 0, i32 0
  %t3951 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1194.c, i8* %t3950, i64 23)
  %t3952 = ptrtoint %nyx_string* %t3951 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3949, i64 %t3952, i64 2)
  %t3953 = getelementptr [6 x i8], [6 x i8]* @.str1195, i32 0, i32 0
  %t3954 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1195.c, i8* %t3953, i64 5)
  %t3955 = ptrtoint %nyx_string* %t3954 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3949, i64 %t3955, i64 2)
  %t3956 = getelementptr [4 x i8], [4 x i8]* @.str1196, i32 0, i32 0
  %t3957 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1196.c, i8* %t3956, i64 3)
  %t3958 = ptrtoint %nyx_string* %t3957 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3949, i64 %t3958, i64 2)
  %t3959 = getelementptr [7 x i8], [7 x i8]* @.str1197, i32 0, i32 0
  %t3960 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1197.c, i8* %t3959, i64 6)
  %t3961 = ptrtoint %nyx_string* %t3960 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3949, i64 %t3961, i64 2)
  %t3962 = getelementptr [7 x i8], [7 x i8]* @.str1198, i32 0, i32 0
  %t3963 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1198.c, i8* %t3962, i64 6)
  %t3964 = ptrtoint %nyx_string* %t3963 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3949, i64 %t3964, i64 2)
  %t3965 = getelementptr [1 x i8], [1 x i8]* @.str1199, i32 0, i32 0
  %t3966 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1199.c, i8* %t3965, i64 0)
  %t3967 = ptrtoint %nyx_string* %t3966 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3949, i64 %t3967, i64 2)
  %t3968 = getelementptr [1 x i8], [1 x i8]* @.str1200, i32 0, i32 0
  %t3969 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1200.c, i8* %t3968, i64 0)
  %t3970 = ptrtoint %nyx_string* %t3969 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3949, i64 %t3970, i64 2)
  %t3971 = getelementptr [1 x i8], [1 x i8]* @.str1201, i32 0, i32 0
  %t3972 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1201.c, i8* %t3971, i64 0)
  %t3973 = ptrtoint %nyx_string* %t3972 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3949, i64 %t3973, i64 2)
  %t3974 = getelementptr [1 x i8], [1 x i8]* @.str1202, i32 0, i32 0
  %t3975 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1202.c, i8* %t3974, i64 0)
  %t3976 = ptrtoint %nyx_string* %t3975 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3949, i64 %t3976, i64 2)
  %t3977 = getelementptr [93 x i8], [93 x i8]* @.str1203, i32 0, i32 0
  %t3978 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1203.c, i8* %t3977, i64 92)
  %t3979 = ptrtoint %nyx_string* %t3978 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3949, i64 %t3979, i64 2)
  %t3980 = getelementptr [119 x i8], [119 x i8]* @.str1204, i32 0, i32 0
  %t3981 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1204.c, i8* %t3980, i64 118)
  %t3982 = ptrtoint %nyx_string* %t3981 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3949, i64 %t3982, i64 2)
  %t3983 = getelementptr [126 x i8], [126 x i8]* @.str1205, i32 0, i32 0
  %t3984 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1205.c, i8* %t3983, i64 125)
  %t3985 = ptrtoint %nyx_string* %t3984 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3949, i64 %t3985, i64 2)
  %t3986 = ptrtoint { i64, i8* }* %t3949 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3948, i64 %t3986, i64 5)
  %t3987 = load { i64, i8* }*, { i64, i8* }** %t86
  %t3988 = call { i64, i8* }* @nyx_array_new_ptr()
  %t3989 = getelementptr [23 x i8], [23 x i8]* @.str1206, i32 0, i32 0
  %t3990 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1206.c, i8* %t3989, i64 22)
  %t3991 = ptrtoint %nyx_string* %t3990 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3988, i64 %t3991, i64 2)
  %t3992 = getelementptr [6 x i8], [6 x i8]* @.str1207, i32 0, i32 0
  %t3993 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1207.c, i8* %t3992, i64 5)
  %t3994 = ptrtoint %nyx_string* %t3993 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3988, i64 %t3994, i64 2)
  %t3995 = getelementptr [4 x i8], [4 x i8]* @.str1208, i32 0, i32 0
  %t3996 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1208.c, i8* %t3995, i64 3)
  %t3997 = ptrtoint %nyx_string* %t3996 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3988, i64 %t3997, i64 2)
  %t3998 = getelementptr [7 x i8], [7 x i8]* @.str1209, i32 0, i32 0
  %t3999 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1209.c, i8* %t3998, i64 6)
  %t4000 = ptrtoint %nyx_string* %t3999 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3988, i64 %t4000, i64 2)
  %t4001 = getelementptr [7 x i8], [7 x i8]* @.str1210, i32 0, i32 0
  %t4002 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1210.c, i8* %t4001, i64 6)
  %t4003 = ptrtoint %nyx_string* %t4002 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3988, i64 %t4003, i64 2)
  %t4004 = getelementptr [1 x i8], [1 x i8]* @.str1211, i32 0, i32 0
  %t4005 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1211.c, i8* %t4004, i64 0)
  %t4006 = ptrtoint %nyx_string* %t4005 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3988, i64 %t4006, i64 2)
  %t4007 = getelementptr [1 x i8], [1 x i8]* @.str1212, i32 0, i32 0
  %t4008 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1212.c, i8* %t4007, i64 0)
  %t4009 = ptrtoint %nyx_string* %t4008 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3988, i64 %t4009, i64 2)
  %t4010 = getelementptr [1 x i8], [1 x i8]* @.str1213, i32 0, i32 0
  %t4011 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1213.c, i8* %t4010, i64 0)
  %t4012 = ptrtoint %nyx_string* %t4011 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3988, i64 %t4012, i64 2)
  %t4013 = getelementptr [1 x i8], [1 x i8]* @.str1214, i32 0, i32 0
  %t4014 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1214.c, i8* %t4013, i64 0)
  %t4015 = ptrtoint %nyx_string* %t4014 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3988, i64 %t4015, i64 2)
  %t4016 = getelementptr [90 x i8], [90 x i8]* @.str1215, i32 0, i32 0
  %t4017 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1215.c, i8* %t4016, i64 89)
  %t4018 = ptrtoint %nyx_string* %t4017 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3988, i64 %t4018, i64 2)
  %t4019 = getelementptr [128 x i8], [128 x i8]* @.str1216, i32 0, i32 0
  %t4020 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1216.c, i8* %t4019, i64 127)
  %t4021 = ptrtoint %nyx_string* %t4020 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3988, i64 %t4021, i64 2)
  %t4022 = getelementptr [124 x i8], [124 x i8]* @.str1217, i32 0, i32 0
  %t4023 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1217.c, i8* %t4022, i64 123)
  %t4024 = ptrtoint %nyx_string* %t4023 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3988, i64 %t4024, i64 2)
  %t4025 = ptrtoint { i64, i8* }* %t3988 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3987, i64 %t4025, i64 5)
  %t4026 = load { i64, i8* }*, { i64, i8* }** %t86
  %t4027 = call { i64, i8* }* @nyx_array_new_ptr()
  %t4028 = getelementptr [18 x i8], [18 x i8]* @.str1218, i32 0, i32 0
  %t4029 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1218.c, i8* %t4028, i64 17)
  %t4030 = ptrtoint %nyx_string* %t4029 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t4027, i64 %t4030, i64 2)
  %t4031 = getelementptr [6 x i8], [6 x i8]* @.str1219, i32 0, i32 0
  %t4032 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1219.c, i8* %t4031, i64 5)
  %t4033 = ptrtoint %nyx_string* %t4032 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t4027, i64 %t4033, i64 2)
  %t4034 = getelementptr [4 x i8], [4 x i8]* @.str1220, i32 0, i32 0
  %t4035 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1220.c, i8* %t4034, i64 3)
  %t4036 = ptrtoint %nyx_string* %t4035 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t4027, i64 %t4036, i64 2)
  %t4037 = getelementptr [7 x i8], [7 x i8]* @.str1221, i32 0, i32 0
  %t4038 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1221.c, i8* %t4037, i64 6)
  %t4039 = ptrtoint %nyx_string* %t4038 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t4027, i64 %t4039, i64 2)
  %t4040 = getelementptr [7 x i8], [7 x i8]* @.str1222, i32 0, i32 0
  %t4041 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1222.c, i8* %t4040, i64 6)
  %t4042 = ptrtoint %nyx_string* %t4041 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t4027, i64 %t4042, i64 2)
  %t4043 = getelementptr [1 x i8], [1 x i8]* @.str1223, i32 0, i32 0
  %t4044 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1223.c, i8* %t4043, i64 0)
  %t4045 = ptrtoint %nyx_string* %t4044 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t4027, i64 %t4045, i64 2)
  %t4046 = getelementptr [1 x i8], [1 x i8]* @.str1224, i32 0, i32 0
  %t4047 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1224.c, i8* %t4046, i64 0)
  %t4048 = ptrtoint %nyx_string* %t4047 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t4027, i64 %t4048, i64 2)
  %t4049 = getelementptr [1 x i8], [1 x i8]* @.str1225, i32 0, i32 0
  %t4050 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1225.c, i8* %t4049, i64 0)
  %t4051 = ptrtoint %nyx_string* %t4050 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t4027, i64 %t4051, i64 2)
  %t4052 = getelementptr [24 x i8], [24 x i8]* @.str1226, i32 0, i32 0
  %t4053 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1226.c, i8* %t4052, i64 23)
  %t4054 = ptrtoint %nyx_string* %t4053 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t4027, i64 %t4054, i64 2)
  %t4055 = getelementptr [41 x i8], [41 x i8]* @.str1227, i32 0, i32 0
  %t4056 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1227.c, i8* %t4055, i64 40)
  %t4057 = ptrtoint %nyx_string* %t4056 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t4027, i64 %t4057, i64 2)
  %t4058 = getelementptr [102 x i8], [102 x i8]* @.str1228, i32 0, i32 0
  %t4059 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1228.c, i8* %t4058, i64 101)
  %t4060 = ptrtoint %nyx_string* %t4059 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t4027, i64 %t4060, i64 2)
  %t4061 = getelementptr [114 x i8], [114 x i8]* @.str1229, i32 0, i32 0
  %t4062 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1229.c, i8* %t4061, i64 113)
  %t4063 = ptrtoint %nyx_string* %t4062 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t4027, i64 %t4063, i64 2)
  %t4064 = ptrtoint { i64, i8* }* %t4027 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t4026, i64 %t4064, i64 5)
  %t4065 = load { i64, i8* }*, { i64, i8* }** %t86
  %t4066 = call { i64, i8* }* @nyx_array_new_ptr()
  %t4067 = getelementptr [25 x i8], [25 x i8]* @.str1230, i32 0, i32 0
  %t4068 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1230.c, i8* %t4067, i64 24)
  %t4069 = ptrtoint %nyx_string* %t4068 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t4066, i64 %t4069, i64 2)
  %t4070 = getelementptr [6 x i8], [6 x i8]* @.str1231, i32 0, i32 0
  %t4071 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1231.c, i8* %t4070, i64 5)
  %t4072 = ptrtoint %nyx_string* %t4071 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t4066, i64 %t4072, i64 2)
  %t4073 = getelementptr [4 x i8], [4 x i8]* @.str1232, i32 0, i32 0
  %t4074 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1232.c, i8* %t4073, i64 3)
  %t4075 = ptrtoint %nyx_string* %t4074 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t4066, i64 %t4075, i64 2)
  %t4076 = getelementptr [7 x i8], [7 x i8]* @.str1233, i32 0, i32 0
  %t4077 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1233.c, i8* %t4076, i64 6)
  %t4078 = ptrtoint %nyx_string* %t4077 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t4066, i64 %t4078, i64 2)
  %t4079 = getelementptr [7 x i8], [7 x i8]* @.str1234, i32 0, i32 0
  %t4080 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1234.c, i8* %t4079, i64 6)
  %t4081 = ptrtoint %nyx_string* %t4080 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t4066, i64 %t4081, i64 2)
  %t4082 = getelementptr [1 x i8], [1 x i8]* @.str1235, i32 0, i32 0
  %t4083 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1235.c, i8* %t4082, i64 0)
  %t4084 = ptrtoint %nyx_string* %t4083 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t4066, i64 %t4084, i64 2)
  %t4085 = getelementptr [1 x i8], [1 x i8]* @.str1236, i32 0, i32 0
  %t4086 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1236.c, i8* %t4085, i64 0)
  %t4087 = ptrtoint %nyx_string* %t4086 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t4066, i64 %t4087, i64 2)
  %t4088 = getelementptr [1 x i8], [1 x i8]* @.str1237, i32 0, i32 0
  %t4089 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1237.c, i8* %t4088, i64 0)
  %t4090 = ptrtoint %nyx_string* %t4089 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t4066, i64 %t4090, i64 2)
  %t4091 = getelementptr [1 x i8], [1 x i8]* @.str1238, i32 0, i32 0
  %t4092 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1238.c, i8* %t4091, i64 0)
  %t4093 = ptrtoint %nyx_string* %t4092 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t4066, i64 %t4093, i64 2)
  %t4094 = getelementptr [53 x i8], [53 x i8]* @.str1239, i32 0, i32 0
  %t4095 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1239.c, i8* %t4094, i64 52)
  %t4096 = ptrtoint %nyx_string* %t4095 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t4066, i64 %t4096, i64 2)
  %t4097 = getelementptr [104 x i8], [104 x i8]* @.str1240, i32 0, i32 0
  %t4098 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1240.c, i8* %t4097, i64 103)
  %t4099 = ptrtoint %nyx_string* %t4098 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t4066, i64 %t4099, i64 2)
  %t4100 = getelementptr [116 x i8], [116 x i8]* @.str1241, i32 0, i32 0
  %t4101 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1241.c, i8* %t4100, i64 115)
  %t4102 = ptrtoint %nyx_string* %t4101 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t4066, i64 %t4102, i64 2)
  %t4103 = ptrtoint { i64, i8* }* %t4066 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t4065, i64 %t4103, i64 5)
  %t4104 = load { i64, i8* }*, { i64, i8* }** %t86
  %t4105 = call { i64, i8* }* @nyx_array_new_ptr()
  %t4106 = getelementptr [36 x i8], [36 x i8]* @.str1242, i32 0, i32 0
  %t4107 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1242.c, i8* %t4106, i64 35)
  %t4108 = ptrtoint %nyx_string* %t4107 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t4105, i64 %t4108, i64 2)
  %t4109 = getelementptr [6 x i8], [6 x i8]* @.str1243, i32 0, i32 0
  %t4110 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1243.c, i8* %t4109, i64 5)
  %t4111 = ptrtoint %nyx_string* %t4110 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t4105, i64 %t4111, i64 2)
  %t4112 = getelementptr [13 x i8], [13 x i8]* @.str1244, i32 0, i32 0
  %t4113 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1244.c, i8* %t4112, i64 12)
  %t4114 = ptrtoint %nyx_string* %t4113 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t4105, i64 %t4114, i64 2)
  %t4115 = getelementptr [7 x i8], [7 x i8]* @.str1245, i32 0, i32 0
  %t4116 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1245.c, i8* %t4115, i64 6)
  %t4117 = ptrtoint %nyx_string* %t4116 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t4105, i64 %t4117, i64 2)
  %t4118 = getelementptr [7 x i8], [7 x i8]* @.str1246, i32 0, i32 0
  %t4119 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1246.c, i8* %t4118, i64 6)
  %t4120 = ptrtoint %nyx_string* %t4119 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t4105, i64 %t4120, i64 2)
  %t4121 = getelementptr [1 x i8], [1 x i8]* @.str1247, i32 0, i32 0
  %t4122 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1247.c, i8* %t4121, i64 0)
  %t4123 = ptrtoint %nyx_string* %t4122 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t4105, i64 %t4123, i64 2)
  %t4124 = getelementptr [1 x i8], [1 x i8]* @.str1248, i32 0, i32 0
  %t4125 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1248.c, i8* %t4124, i64 0)
  %t4126 = ptrtoint %nyx_string* %t4125 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t4105, i64 %t4126, i64 2)
  %t4127 = getelementptr [1 x i8], [1 x i8]* @.str1249, i32 0, i32 0
  %t4128 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1249.c, i8* %t4127, i64 0)
  %t4129 = ptrtoint %nyx_string* %t4128 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t4105, i64 %t4129, i64 2)
  %t4130 = getelementptr [1 x i8], [1 x i8]* @.str1250, i32 0, i32 0
  %t4131 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1250.c, i8* %t4130, i64 0)
  %t4132 = ptrtoint %nyx_string* %t4131 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t4105, i64 %t4132, i64 2)
  %t4133 = getelementptr [52 x i8], [52 x i8]* @.str1251, i32 0, i32 0
  %t4134 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1251.c, i8* %t4133, i64 51)
  %t4135 = ptrtoint %nyx_string* %t4134 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t4105, i64 %t4135, i64 2)
  %t4136 = getelementptr [87 x i8], [87 x i8]* @.str1252, i32 0, i32 0
  %t4137 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1252.c, i8* %t4136, i64 86)
  %t4138 = ptrtoint %nyx_string* %t4137 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t4105, i64 %t4138, i64 2)
  %t4139 = getelementptr [87 x i8], [87 x i8]* @.str1253, i32 0, i32 0
  %t4140 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1253.c, i8* %t4139, i64 86)
  %t4141 = ptrtoint %nyx_string* %t4140 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t4105, i64 %t4141, i64 2)
  %t4142 = ptrtoint { i64, i8* }* %t4105 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t4104, i64 %t4142, i64 5)
  %t4143 = load { i64, i8* }*, { i64, i8* }** %t86
  %t4144 = call { i64, i8* }* @nyx_array_new_ptr()
  %t4145 = getelementptr [21 x i8], [21 x i8]* @.str1254, i32 0, i32 0
  %t4146 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1254.c, i8* %t4145, i64 20)
  %t4147 = ptrtoint %nyx_string* %t4146 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t4144, i64 %t4147, i64 2)
  %t4148 = getelementptr [6 x i8], [6 x i8]* @.str1255, i32 0, i32 0
  %t4149 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1255.c, i8* %t4148, i64 5)
  %t4150 = ptrtoint %nyx_string* %t4149 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t4144, i64 %t4150, i64 2)
  %t4151 = getelementptr [4 x i8], [4 x i8]* @.str1256, i32 0, i32 0
  %t4152 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1256.c, i8* %t4151, i64 3)
  %t4153 = ptrtoint %nyx_string* %t4152 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t4144, i64 %t4153, i64 2)
  %t4154 = getelementptr [7 x i8], [7 x i8]* @.str1257, i32 0, i32 0
  %t4155 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1257.c, i8* %t4154, i64 6)
  %t4156 = ptrtoint %nyx_string* %t4155 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t4144, i64 %t4156, i64 2)
  %t4157 = getelementptr [7 x i8], [7 x i8]* @.str1258, i32 0, i32 0
  %t4158 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1258.c, i8* %t4157, i64 6)
  %t4159 = ptrtoint %nyx_string* %t4158 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t4144, i64 %t4159, i64 2)
  %t4160 = getelementptr [1 x i8], [1 x i8]* @.str1259, i32 0, i32 0
  %t4161 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1259.c, i8* %t4160, i64 0)
  %t4162 = ptrtoint %nyx_string* %t4161 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t4144, i64 %t4162, i64 2)
  %t4163 = getelementptr [1 x i8], [1 x i8]* @.str1260, i32 0, i32 0
  %t4164 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1260.c, i8* %t4163, i64 0)
  %t4165 = ptrtoint %nyx_string* %t4164 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t4144, i64 %t4165, i64 2)
  %t4166 = getelementptr [1 x i8], [1 x i8]* @.str1261, i32 0, i32 0
  %t4167 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1261.c, i8* %t4166, i64 0)
  %t4168 = ptrtoint %nyx_string* %t4167 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t4144, i64 %t4168, i64 2)
  %t4169 = getelementptr [1 x i8], [1 x i8]* @.str1262, i32 0, i32 0
  %t4170 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1262.c, i8* %t4169, i64 0)
  %t4171 = ptrtoint %nyx_string* %t4170 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t4144, i64 %t4171, i64 2)
  %t4172 = getelementptr [42 x i8], [42 x i8]* @.str1263, i32 0, i32 0
  %t4173 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1263.c, i8* %t4172, i64 41)
  %t4174 = ptrtoint %nyx_string* %t4173 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t4144, i64 %t4174, i64 2)
  %t4175 = getelementptr [93 x i8], [93 x i8]* @.str1264, i32 0, i32 0
  %t4176 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1264.c, i8* %t4175, i64 92)
  %t4177 = ptrtoint %nyx_string* %t4176 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t4144, i64 %t4177, i64 2)
  %t4178 = getelementptr [109 x i8], [109 x i8]* @.str1265, i32 0, i32 0
  %t4179 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1265.c, i8* %t4178, i64 108)
  %t4180 = ptrtoint %nyx_string* %t4179 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t4144, i64 %t4180, i64 2)
  %t4181 = ptrtoint { i64, i8* }* %t4144 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t4143, i64 %t4181, i64 5)
  %t4182 = load { i64, i8* }*, { i64, i8* }** %t86
  %t4183 = call { i64, i8* }* @nyx_array_new_ptr()
  %t4184 = getelementptr [30 x i8], [30 x i8]* @.str1266, i32 0, i32 0
  %t4185 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1266.c, i8* %t4184, i64 29)
  %t4186 = ptrtoint %nyx_string* %t4185 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t4183, i64 %t4186, i64 2)
  %t4187 = getelementptr [6 x i8], [6 x i8]* @.str1267, i32 0, i32 0
  %t4188 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1267.c, i8* %t4187, i64 5)
  %t4189 = ptrtoint %nyx_string* %t4188 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t4183, i64 %t4189, i64 2)
  %t4190 = getelementptr [5 x i8], [5 x i8]* @.str1268, i32 0, i32 0
  %t4191 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1268.c, i8* %t4190, i64 4)
  %t4192 = ptrtoint %nyx_string* %t4191 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t4183, i64 %t4192, i64 2)
  %t4193 = getelementptr [7 x i8], [7 x i8]* @.str1269, i32 0, i32 0
  %t4194 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1269.c, i8* %t4193, i64 6)
  %t4195 = ptrtoint %nyx_string* %t4194 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t4183, i64 %t4195, i64 2)
  %t4196 = getelementptr [7 x i8], [7 x i8]* @.str1270, i32 0, i32 0
  %t4197 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1270.c, i8* %t4196, i64 6)
  %t4198 = ptrtoint %nyx_string* %t4197 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t4183, i64 %t4198, i64 2)
  %t4199 = getelementptr [1 x i8], [1 x i8]* @.str1271, i32 0, i32 0
  %t4200 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1271.c, i8* %t4199, i64 0)
  %t4201 = ptrtoint %nyx_string* %t4200 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t4183, i64 %t4201, i64 2)
  %t4202 = getelementptr [1 x i8], [1 x i8]* @.str1272, i32 0, i32 0
  %t4203 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1272.c, i8* %t4202, i64 0)
  %t4204 = ptrtoint %nyx_string* %t4203 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t4183, i64 %t4204, i64 2)
  %t4205 = getelementptr [8 x i8], [8 x i8]* @.str1273, i32 0, i32 0
  %t4206 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1273.c, i8* %t4205, i64 7)
  %t4207 = ptrtoint %nyx_string* %t4206 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t4183, i64 %t4207, i64 2)
  %t4208 = getelementptr [1 x i8], [1 x i8]* @.str1274, i32 0, i32 0
  %t4209 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1274.c, i8* %t4208, i64 0)
  %t4210 = ptrtoint %nyx_string* %t4209 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t4183, i64 %t4210, i64 2)
  %t4211 = getelementptr [55 x i8], [55 x i8]* @.str1275, i32 0, i32 0
  %t4212 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1275.c, i8* %t4211, i64 54)
  %t4213 = ptrtoint %nyx_string* %t4212 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t4183, i64 %t4213, i64 2)
  %t4214 = getelementptr [112 x i8], [112 x i8]* @.str1276, i32 0, i32 0
  %t4215 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1276.c, i8* %t4214, i64 111)
  %t4216 = ptrtoint %nyx_string* %t4215 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t4183, i64 %t4216, i64 2)
  %t4217 = getelementptr [131 x i8], [131 x i8]* @.str1277, i32 0, i32 0
  %t4218 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1277.c, i8* %t4217, i64 130)
  %t4219 = ptrtoint %nyx_string* %t4218 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t4183, i64 %t4219, i64 2)
  %t4220 = ptrtoint { i64, i8* }* %t4183 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t4182, i64 %t4220, i64 5)
  %t4221 = load { i64, i8* }*, { i64, i8* }** %t86
  ret { i64, i8* }* %t4221
}

define %nyx_string* @gotcha_field(
{ i64, i8* }* %row.param, %nyx_string* %name.param) {
  %row.ptr = alloca { i64, i8* }*
  %name.ptr = alloca %nyx_string*
  %t4223 = alloca i64
  %t4280 = alloca %nyx_string*
  store { i64, i8* }* %row.param, { i64, i8* }** %row.ptr
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %t4222 = sub i64 0, 1
  store i64 %t4222, i64* %t4223
  %t4224 = load %nyx_string*, %nyx_string** %name.ptr
  %t4225 = getelementptr [3 x i8], [3 x i8]* @.str1278, i32 0, i32 0
  %t4226 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1278.c, i8* %t4225, i64 2)
  %t4227 = call i1 @nyx_string_equals(%nyx_string* %t4224, %nyx_string* %t4226)
  br i1 %t4227, label %then24, label %else25
then24:
  store i64 0, i64* %t4223
  br label %merge26
else25:
  br label %merge26
merge26:
  %t4228 = load %nyx_string*, %nyx_string** %name.ptr
  %t4229 = getelementptr [5 x i8], [5 x i8]* @.str1279, i32 0, i32 0
  %t4230 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1279.c, i8* %t4229, i64 4)
  %t4231 = call i1 @nyx_string_equals(%nyx_string* %t4228, %nyx_string* %t4230)
  br i1 %t4231, label %then27, label %else28
then27:
  store i64 1, i64* %t4223
  br label %merge29
else28:
  br label %merge29
merge29:
  %t4232 = load %nyx_string*, %nyx_string** %name.ptr
  %t4233 = getelementptr [9 x i8], [9 x i8]* @.str1280, i32 0, i32 0
  %t4234 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1280.c, i8* %t4233, i64 8)
  %t4235 = call i1 @nyx_string_equals(%nyx_string* %t4232, %nyx_string* %t4234)
  br i1 %t4235, label %then30, label %else31
then30:
  store i64 2, i64* %t4223
  br label %merge32
else31:
  br label %merge32
merge32:
  %t4236 = load %nyx_string*, %nyx_string** %name.ptr
  %t4237 = getelementptr [6 x i8], [6 x i8]* @.str1281, i32 0, i32 0
  %t4238 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1281.c, i8* %t4237, i64 5)
  %t4239 = call i1 @nyx_string_equals(%nyx_string* %t4236, %nyx_string* %t4238)
  br i1 %t4239, label %then33, label %else34
then33:
  store i64 3, i64* %t4223
  br label %merge35
else34:
  br label %merge35
merge35:
  %t4240 = load %nyx_string*, %nyx_string** %name.ptr
  %t4241 = getelementptr [9 x i8], [9 x i8]* @.str1282, i32 0, i32 0
  %t4242 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1282.c, i8* %t4241, i64 8)
  %t4243 = call i1 @nyx_string_equals(%nyx_string* %t4240, %nyx_string* %t4242)
  br i1 %t4243, label %then36, label %else37
then36:
  store i64 4, i64* %t4223
  br label %merge38
else37:
  br label %merge38
merge38:
  %t4244 = load %nyx_string*, %nyx_string** %name.ptr
  %t4245 = getelementptr [8 x i8], [8 x i8]* @.str1283, i32 0, i32 0
  %t4246 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1283.c, i8* %t4245, i64 7)
  %t4247 = call i1 @nyx_string_equals(%nyx_string* %t4244, %nyx_string* %t4246)
  br i1 %t4247, label %then39, label %else40
then39:
  store i64 5, i64* %t4223
  br label %merge41
else40:
  br label %merge41
merge41:
  %t4248 = load %nyx_string*, %nyx_string** %name.ptr
  %t4249 = getelementptr [9 x i8], [9 x i8]* @.str1284, i32 0, i32 0
  %t4250 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1284.c, i8* %t4249, i64 8)
  %t4251 = call i1 @nyx_string_equals(%nyx_string* %t4248, %nyx_string* %t4250)
  br i1 %t4251, label %then42, label %else43
then42:
  store i64 6, i64* %t4223
  br label %merge44
else43:
  br label %merge44
merge44:
  %t4252 = load %nyx_string*, %nyx_string** %name.ptr
  %t4253 = getelementptr [7 x i8], [7 x i8]* @.str1285, i32 0, i32 0
  %t4254 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1285.c, i8* %t4253, i64 6)
  %t4255 = call i1 @nyx_string_equals(%nyx_string* %t4252, %nyx_string* %t4254)
  br i1 %t4255, label %then45, label %else46
then45:
  store i64 7, i64* %t4223
  br label %merge47
else46:
  br label %merge47
merge47:
  %t4256 = load %nyx_string*, %nyx_string** %name.ptr
  %t4257 = getelementptr [5 x i8], [5 x i8]* @.str1286, i32 0, i32 0
  %t4258 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1286.c, i8* %t4257, i64 4)
  %t4259 = call i1 @nyx_string_equals(%nyx_string* %t4256, %nyx_string* %t4258)
  br i1 %t4259, label %then48, label %else49
then48:
  store i64 8, i64* %t4223
  br label %merge50
else49:
  br label %merge50
merge50:
  %t4260 = load %nyx_string*, %nyx_string** %name.ptr
  %t4261 = getelementptr [5 x i8], [5 x i8]* @.str1287, i32 0, i32 0
  %t4262 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1287.c, i8* %t4261, i64 4)
  %t4263 = call i1 @nyx_string_equals(%nyx_string* %t4260, %nyx_string* %t4262)
  br i1 %t4263, label %then51, label %else52
then51:
  store i64 9, i64* %t4223
  br label %merge53
else52:
  br label %merge53
merge53:
  %t4264 = load %nyx_string*, %nyx_string** %name.ptr
  %t4265 = getelementptr [9 x i8], [9 x i8]* @.str1288, i32 0, i32 0
  %t4266 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1288.c, i8* %t4265, i64 8)
  %t4267 = call i1 @nyx_string_equals(%nyx_string* %t4264, %nyx_string* %t4266)
  br i1 %t4267, label %then54, label %else55
then54:
  store i64 10, i64* %t4223
  br label %merge56
else55:
  br label %merge56
merge56:
  %t4268 = load %nyx_string*, %nyx_string** %name.ptr
  %t4269 = getelementptr [9 x i8], [9 x i8]* @.str1289, i32 0, i32 0
  %t4270 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1289.c, i8* %t4269, i64 8)
  %t4271 = call i1 @nyx_string_equals(%nyx_string* %t4268, %nyx_string* %t4270)
  br i1 %t4271, label %then57, label %else58
then57:
  store i64 11, i64* %t4223
  br label %merge59
else58:
  br label %merge59
merge59:
  %t4272 = load i64, i64* %t4223
  %t4273 = icmp slt i64 %t4272, 0
  br i1 %t4273, label %then60, label %else61
then60:
  %t4274 = getelementptr [1 x i8], [1 x i8]* @.str1290, i32 0, i32 0
  %t4275 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1290.c, i8* %t4274, i64 0)
  ret %nyx_string* %t4275
else61:
  br label %merge62
merge62:
  %t4276 = load { i64, i8* }*, { i64, i8* }** %row.ptr
  %t4277 = load i64, i64* %t4223
  %t4278 = call i64 @nyx_array_get_checked({ i64, i8* }* %t4276, i64 %t4277, i64 2)
  %t4279 = inttoptr i64 %t4278 to %nyx_string*
  store %nyx_string* %t4279, %nyx_string** %t4280
  %t4281 = load %nyx_string*, %nyx_string** %t4280
  ret %nyx_string* %t4281
}


attributes #0 = { returns_twice }

