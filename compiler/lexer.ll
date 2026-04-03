source_filename = "script.nx"
target triple = "x86_64-pc-linux-gnu"

%Token = type { %nyx_string*, %nyx_string*, i64, i64 }

@.str0 = private unnamed_addr constant [4 x i8] c"let\00"
@.str1 = private unnamed_addr constant [4 x i8] c"var\00"
@.str2 = private unnamed_addr constant [6 x i8] c"const\00"
@.str3 = private unnamed_addr constant [3 x i8] c"fn\00"
@.str4 = private unnamed_addr constant [7 x i8] c"return\00"
@.str5 = private unnamed_addr constant [3 x i8] c"if\00"
@.str6 = private unnamed_addr constant [5 x i8] c"else\00"
@.str7 = private unnamed_addr constant [6 x i8] c"while\00"
@.str8 = private unnamed_addr constant [4 x i8] c"for\00"
@.str9 = private unnamed_addr constant [3 x i8] c"in\00"
@.str10 = private unnamed_addr constant [6 x i8] c"break\00"
@.str11 = private unnamed_addr constant [9 x i8] c"continue\00"
@.str12 = private unnamed_addr constant [7 x i8] c"struct\00"
@.str13 = private unnamed_addr constant [5 x i8] c"enum\00"
@.str14 = private unnamed_addr constant [6 x i8] c"match\00"
@.str15 = private unnamed_addr constant [7 x i8] c"export\00"
@.str16 = private unnamed_addr constant [7 x i8] c"import\00"
@.str17 = private unnamed_addr constant [5 x i8] c"from\00"
@.str18 = private unnamed_addr constant [5 x i8] c"true\00"
@.str19 = private unnamed_addr constant [6 x i8] c"false\00"
@.str20 = private unnamed_addr constant [4 x i8] c"and\00"
@.str21 = private unnamed_addr constant [3 x i8] c"or\00"
@.str22 = private unnamed_addr constant [4 x i8] c"not\00"
@.str23 = private unnamed_addr constant [5 x i8] c"impl\00"
@.str24 = private unnamed_addr constant [6 x i8] c"trait\00"
@.str25 = private unnamed_addr constant [5 x i8] c"test\00"
@.str26 = private unnamed_addr constant [7 x i8] c"assert\00"
@.str27 = private unnamed_addr constant [7 x i8] c"extern\00"
@.str28 = private unnamed_addr constant [3 x i8] c"as\00"
@.str29 = private unnamed_addr constant [7 x i8] c"unsafe\00"
@.str30 = private unnamed_addr constant [7 x i8] c"static\00"
@.str31 = private unnamed_addr constant [7 x i8] c"sizeof\00"
@.str32 = private unnamed_addr constant [8 x i8] c"alignof\00"
@.str33 = private unnamed_addr constant [4 x i8] c"asm\00"
@.str34 = private unnamed_addr constant [4 x i8] c"dyn\00"
@.str35 = private unnamed_addr constant [4 x i8] c"pub\00"
@.str36 = private unnamed_addr constant [7 x i8] c"module\00"
@.str37 = private unnamed_addr constant [6 x i8] c"where\00"
@.str38 = private unnamed_addr constant [6 x i8] c"defer\00"
@.str39 = private unnamed_addr constant [4 x i8] c"try\00"
@.str40 = private unnamed_addr constant [6 x i8] c"catch\00"
@.str41 = private unnamed_addr constant [6 x i8] c"throw\00"
@.str42 = private unnamed_addr constant [6 x i8] c"async\00"
@.str43 = private unnamed_addr constant [6 x i8] c"await\00"
@.str44 = private unnamed_addr constant [4 x i8] c"let\00"
@.str45 = private unnamed_addr constant [4 x i8] c"LET\00"
@.str46 = private unnamed_addr constant [4 x i8] c"var\00"
@.str47 = private unnamed_addr constant [4 x i8] c"VAR\00"
@.str48 = private unnamed_addr constant [6 x i8] c"const\00"
@.str49 = private unnamed_addr constant [6 x i8] c"CONST\00"
@.str50 = private unnamed_addr constant [3 x i8] c"fn\00"
@.str51 = private unnamed_addr constant [3 x i8] c"FN\00"
@.str52 = private unnamed_addr constant [7 x i8] c"return\00"
@.str53 = private unnamed_addr constant [7 x i8] c"RETURN\00"
@.str54 = private unnamed_addr constant [3 x i8] c"if\00"
@.str55 = private unnamed_addr constant [3 x i8] c"IF\00"
@.str56 = private unnamed_addr constant [5 x i8] c"else\00"
@.str57 = private unnamed_addr constant [5 x i8] c"ELSE\00"
@.str58 = private unnamed_addr constant [6 x i8] c"while\00"
@.str59 = private unnamed_addr constant [6 x i8] c"WHILE\00"
@.str60 = private unnamed_addr constant [4 x i8] c"for\00"
@.str61 = private unnamed_addr constant [4 x i8] c"FOR\00"
@.str62 = private unnamed_addr constant [3 x i8] c"in\00"
@.str63 = private unnamed_addr constant [3 x i8] c"IN\00"
@.str64 = private unnamed_addr constant [6 x i8] c"break\00"
@.str65 = private unnamed_addr constant [6 x i8] c"BREAK\00"
@.str66 = private unnamed_addr constant [9 x i8] c"continue\00"
@.str67 = private unnamed_addr constant [9 x i8] c"CONTINUE\00"
@.str68 = private unnamed_addr constant [7 x i8] c"struct\00"
@.str69 = private unnamed_addr constant [7 x i8] c"STRUCT\00"
@.str70 = private unnamed_addr constant [5 x i8] c"enum\00"
@.str71 = private unnamed_addr constant [5 x i8] c"ENUM\00"
@.str72 = private unnamed_addr constant [6 x i8] c"match\00"
@.str73 = private unnamed_addr constant [6 x i8] c"MATCH\00"
@.str74 = private unnamed_addr constant [7 x i8] c"export\00"
@.str75 = private unnamed_addr constant [7 x i8] c"EXPORT\00"
@.str76 = private unnamed_addr constant [7 x i8] c"import\00"
@.str77 = private unnamed_addr constant [7 x i8] c"IMPORT\00"
@.str78 = private unnamed_addr constant [5 x i8] c"from\00"
@.str79 = private unnamed_addr constant [5 x i8] c"FROM\00"
@.str80 = private unnamed_addr constant [5 x i8] c"true\00"
@.str81 = private unnamed_addr constant [5 x i8] c"TRUE\00"
@.str82 = private unnamed_addr constant [6 x i8] c"false\00"
@.str83 = private unnamed_addr constant [6 x i8] c"FALSE\00"
@.str84 = private unnamed_addr constant [4 x i8] c"and\00"
@.str85 = private unnamed_addr constant [4 x i8] c"AND\00"
@.str86 = private unnamed_addr constant [3 x i8] c"or\00"
@.str87 = private unnamed_addr constant [3 x i8] c"OR\00"
@.str88 = private unnamed_addr constant [4 x i8] c"not\00"
@.str89 = private unnamed_addr constant [4 x i8] c"NOT\00"
@.str90 = private unnamed_addr constant [5 x i8] c"impl\00"
@.str91 = private unnamed_addr constant [5 x i8] c"IMPL\00"
@.str92 = private unnamed_addr constant [6 x i8] c"trait\00"
@.str93 = private unnamed_addr constant [6 x i8] c"TRAIT\00"
@.str94 = private unnamed_addr constant [5 x i8] c"test\00"
@.str95 = private unnamed_addr constant [5 x i8] c"TEST\00"
@.str96 = private unnamed_addr constant [7 x i8] c"assert\00"
@.str97 = private unnamed_addr constant [7 x i8] c"ASSERT\00"
@.str98 = private unnamed_addr constant [7 x i8] c"extern\00"
@.str99 = private unnamed_addr constant [7 x i8] c"EXTERN\00"
@.str100 = private unnamed_addr constant [3 x i8] c"as\00"
@.str101 = private unnamed_addr constant [3 x i8] c"AS\00"
@.str102 = private unnamed_addr constant [7 x i8] c"unsafe\00"
@.str103 = private unnamed_addr constant [7 x i8] c"UNSAFE\00"
@.str104 = private unnamed_addr constant [7 x i8] c"static\00"
@.str105 = private unnamed_addr constant [7 x i8] c"STATIC\00"
@.str106 = private unnamed_addr constant [7 x i8] c"sizeof\00"
@.str107 = private unnamed_addr constant [7 x i8] c"SIZEOF\00"
@.str108 = private unnamed_addr constant [8 x i8] c"alignof\00"
@.str109 = private unnamed_addr constant [8 x i8] c"ALIGNOF\00"
@.str110 = private unnamed_addr constant [4 x i8] c"asm\00"
@.str111 = private unnamed_addr constant [4 x i8] c"ASM\00"
@.str112 = private unnamed_addr constant [4 x i8] c"dyn\00"
@.str113 = private unnamed_addr constant [4 x i8] c"DYN\00"
@.str114 = private unnamed_addr constant [4 x i8] c"pub\00"
@.str115 = private unnamed_addr constant [4 x i8] c"PUB\00"
@.str116 = private unnamed_addr constant [7 x i8] c"module\00"
@.str117 = private unnamed_addr constant [7 x i8] c"MODULE\00"
@.str118 = private unnamed_addr constant [6 x i8] c"where\00"
@.str119 = private unnamed_addr constant [6 x i8] c"WHERE\00"
@.str120 = private unnamed_addr constant [6 x i8] c"defer\00"
@.str121 = private unnamed_addr constant [6 x i8] c"DEFER\00"
@.str122 = private unnamed_addr constant [4 x i8] c"try\00"
@.str123 = private unnamed_addr constant [4 x i8] c"TRY\00"
@.str124 = private unnamed_addr constant [6 x i8] c"catch\00"
@.str125 = private unnamed_addr constant [6 x i8] c"CATCH\00"
@.str126 = private unnamed_addr constant [6 x i8] c"throw\00"
@.str127 = private unnamed_addr constant [6 x i8] c"THROW\00"
@.str128 = private unnamed_addr constant [6 x i8] c"async\00"
@.str129 = private unnamed_addr constant [6 x i8] c"ASYNC\00"
@.str130 = private unnamed_addr constant [6 x i8] c"await\00"
@.str131 = private unnamed_addr constant [6 x i8] c"AWAIT\00"
@.str132 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00"
@.str133 = private unnamed_addr constant [4 x i8] c"EOF\00"
@.str134 = private unnamed_addr constant [1 x i8] c"\00"
@.str135 = private unnamed_addr constant [1 x i8] c"\0a"
@.str136 = private unnamed_addr constant [1 x i8] c"\0a"
@.str137 = private unnamed_addr constant [1 x i8] c"\0a"
@.str138 = private unnamed_addr constant [1 x i8] c"0"
@.str139 = private unnamed_addr constant [1 x i8] c"1"
@.str140 = private unnamed_addr constant [1 x i8] c"2"
@.str141 = private unnamed_addr constant [1 x i8] c"3"
@.str142 = private unnamed_addr constant [1 x i8] c"4"
@.str143 = private unnamed_addr constant [1 x i8] c"5"
@.str144 = private unnamed_addr constant [1 x i8] c"6"
@.str145 = private unnamed_addr constant [1 x i8] c"7"
@.str146 = private unnamed_addr constant [1 x i8] c"8"
@.str147 = private unnamed_addr constant [1 x i8] c"9"
@.str148 = private unnamed_addr constant [1 x i8] c"a"
@.str149 = private unnamed_addr constant [1 x i8] c"b"
@.str150 = private unnamed_addr constant [1 x i8] c"c"
@.str151 = private unnamed_addr constant [1 x i8] c"d"
@.str152 = private unnamed_addr constant [1 x i8] c"e"
@.str153 = private unnamed_addr constant [1 x i8] c"f"
@.str154 = private unnamed_addr constant [1 x i8] c"g"
@.str155 = private unnamed_addr constant [1 x i8] c"h"
@.str156 = private unnamed_addr constant [1 x i8] c"i"
@.str157 = private unnamed_addr constant [1 x i8] c"j"
@.str158 = private unnamed_addr constant [1 x i8] c"k"
@.str159 = private unnamed_addr constant [1 x i8] c"l"
@.str160 = private unnamed_addr constant [1 x i8] c"m"
@.str161 = private unnamed_addr constant [1 x i8] c"n"
@.str162 = private unnamed_addr constant [1 x i8] c"o"
@.str163 = private unnamed_addr constant [1 x i8] c"p"
@.str164 = private unnamed_addr constant [1 x i8] c"q"
@.str165 = private unnamed_addr constant [1 x i8] c"r"
@.str166 = private unnamed_addr constant [1 x i8] c"s"
@.str167 = private unnamed_addr constant [1 x i8] c"t"
@.str168 = private unnamed_addr constant [1 x i8] c"u"
@.str169 = private unnamed_addr constant [1 x i8] c"v"
@.str170 = private unnamed_addr constant [1 x i8] c"w"
@.str171 = private unnamed_addr constant [1 x i8] c"x"
@.str172 = private unnamed_addr constant [1 x i8] c"y"
@.str173 = private unnamed_addr constant [1 x i8] c"z"
@.str174 = private unnamed_addr constant [1 x i8] c"A"
@.str175 = private unnamed_addr constant [1 x i8] c"B"
@.str176 = private unnamed_addr constant [1 x i8] c"C"
@.str177 = private unnamed_addr constant [1 x i8] c"D"
@.str178 = private unnamed_addr constant [1 x i8] c"E"
@.str179 = private unnamed_addr constant [1 x i8] c"F"
@.str180 = private unnamed_addr constant [1 x i8] c"G"
@.str181 = private unnamed_addr constant [1 x i8] c"H"
@.str182 = private unnamed_addr constant [1 x i8] c"I"
@.str183 = private unnamed_addr constant [1 x i8] c"J"
@.str184 = private unnamed_addr constant [1 x i8] c"K"
@.str185 = private unnamed_addr constant [1 x i8] c"L"
@.str186 = private unnamed_addr constant [1 x i8] c"M"
@.str187 = private unnamed_addr constant [1 x i8] c"N"
@.str188 = private unnamed_addr constant [1 x i8] c"O"
@.str189 = private unnamed_addr constant [1 x i8] c"P"
@.str190 = private unnamed_addr constant [1 x i8] c"Q"
@.str191 = private unnamed_addr constant [1 x i8] c"R"
@.str192 = private unnamed_addr constant [1 x i8] c"S"
@.str193 = private unnamed_addr constant [1 x i8] c"T"
@.str194 = private unnamed_addr constant [1 x i8] c"U"
@.str195 = private unnamed_addr constant [1 x i8] c"V"
@.str196 = private unnamed_addr constant [1 x i8] c"W"
@.str197 = private unnamed_addr constant [1 x i8] c"X"
@.str198 = private unnamed_addr constant [1 x i8] c"Y"
@.str199 = private unnamed_addr constant [1 x i8] c"Z"
@.str200 = private unnamed_addr constant [1 x i8] c"_"
@.str201 = private unnamed_addr constant [1 x i8] c"0"
@.str202 = private unnamed_addr constant [1 x i8] c"1"
@.str203 = private unnamed_addr constant [1 x i8] c"2"
@.str204 = private unnamed_addr constant [1 x i8] c"3"
@.str205 = private unnamed_addr constant [1 x i8] c"4"
@.str206 = private unnamed_addr constant [1 x i8] c"5"
@.str207 = private unnamed_addr constant [1 x i8] c"6"
@.str208 = private unnamed_addr constant [1 x i8] c"7"
@.str209 = private unnamed_addr constant [1 x i8] c"8"
@.str210 = private unnamed_addr constant [1 x i8] c"9"
@.str211 = private unnamed_addr constant [1 x i8] c"a"
@.str212 = private unnamed_addr constant [1 x i8] c"b"
@.str213 = private unnamed_addr constant [1 x i8] c"c"
@.str214 = private unnamed_addr constant [1 x i8] c"d"
@.str215 = private unnamed_addr constant [1 x i8] c"e"
@.str216 = private unnamed_addr constant [1 x i8] c"f"
@.str217 = private unnamed_addr constant [1 x i8] c"A"
@.str218 = private unnamed_addr constant [1 x i8] c"B"
@.str219 = private unnamed_addr constant [1 x i8] c"C"
@.str220 = private unnamed_addr constant [1 x i8] c"D"
@.str221 = private unnamed_addr constant [1 x i8] c"E"
@.str222 = private unnamed_addr constant [1 x i8] c"F"
@.str223 = private unnamed_addr constant [1 x i8] c"0"
@.str224 = private unnamed_addr constant [1 x i8] c"1"
@.str225 = private unnamed_addr constant [1 x i8] c"2"
@.str226 = private unnamed_addr constant [1 x i8] c"3"
@.str227 = private unnamed_addr constant [1 x i8] c"4"
@.str228 = private unnamed_addr constant [1 x i8] c"5"
@.str229 = private unnamed_addr constant [1 x i8] c"6"
@.str230 = private unnamed_addr constant [1 x i8] c"7"
@.str231 = private unnamed_addr constant [1 x i8] c"8"
@.str232 = private unnamed_addr constant [1 x i8] c"9"
@.str233 = private unnamed_addr constant [1 x i8] c"a"
@.str234 = private unnamed_addr constant [1 x i8] c"A"
@.str235 = private unnamed_addr constant [1 x i8] c"b"
@.str236 = private unnamed_addr constant [1 x i8] c"B"
@.str237 = private unnamed_addr constant [1 x i8] c"c"
@.str238 = private unnamed_addr constant [1 x i8] c"C"
@.str239 = private unnamed_addr constant [1 x i8] c"d"
@.str240 = private unnamed_addr constant [1 x i8] c"D"
@.str241 = private unnamed_addr constant [1 x i8] c"e"
@.str242 = private unnamed_addr constant [1 x i8] c"E"
@.str243 = private unnamed_addr constant [1 x i8] c"f"
@.str244 = private unnamed_addr constant [1 x i8] c"F"
@.str245 = private unnamed_addr constant [2 x i8] c"0\00"
@.str246 = private unnamed_addr constant [2 x i8] c"1\00"
@.str247 = private unnamed_addr constant [2 x i8] c"2\00"
@.str248 = private unnamed_addr constant [2 x i8] c"3\00"
@.str249 = private unnamed_addr constant [2 x i8] c"4\00"
@.str250 = private unnamed_addr constant [2 x i8] c"5\00"
@.str251 = private unnamed_addr constant [2 x i8] c"6\00"
@.str252 = private unnamed_addr constant [2 x i8] c"7\00"
@.str253 = private unnamed_addr constant [2 x i8] c"8\00"
@.str254 = private unnamed_addr constant [2 x i8] c"9\00"
@.str255 = private unnamed_addr constant [2 x i8] c"0\00"
@.str256 = private unnamed_addr constant [1 x i8] c"\00"
@.str257 = private unnamed_addr constant [1 x i8] c"1"
@.str258 = private unnamed_addr constant [1 x i8] c" "
@.str259 = private unnamed_addr constant [1 x i8] c"\09"
@.str260 = private unnamed_addr constant [1 x i8] c"\0a"
@.str261 = private unnamed_addr constant [34 x i8] c"Error: unterminated block comment\00"
@.str262 = private unnamed_addr constant [1 x i8] c"/"
@.str263 = private unnamed_addr constant [1 x i8] c"*"
@.str264 = private unnamed_addr constant [1 x i8] c"*"
@.str265 = private unnamed_addr constant [1 x i8] c"/"
@.str266 = private unnamed_addr constant [1 x i8] c"\00"
@.str267 = private unnamed_addr constant [1 x i8] c"0"
@.str268 = private unnamed_addr constant [1 x i8] c"x"
@.str269 = private unnamed_addr constant [1 x i8] c"X"
@.str270 = private unnamed_addr constant [7 x i8] c"NUMBER\00"
@.str271 = private unnamed_addr constant [1 x i8] c"0"
@.str272 = private unnamed_addr constant [1 x i8] c"b"
@.str273 = private unnamed_addr constant [1 x i8] c"B"
@.str274 = private unnamed_addr constant [1 x i8] c"0"
@.str275 = private unnamed_addr constant [1 x i8] c"1"
@.str276 = private unnamed_addr constant [7 x i8] c"NUMBER\00"
@.str277 = private unnamed_addr constant [1 x i8] c"0"
@.str278 = private unnamed_addr constant [1 x i8] c"o"
@.str279 = private unnamed_addr constant [1 x i8] c"O"
@.str280 = private unnamed_addr constant [1 x i8] c"0"
@.str281 = private unnamed_addr constant [1 x i8] c"1"
@.str282 = private unnamed_addr constant [1 x i8] c"2"
@.str283 = private unnamed_addr constant [1 x i8] c"3"
@.str284 = private unnamed_addr constant [1 x i8] c"4"
@.str285 = private unnamed_addr constant [1 x i8] c"5"
@.str286 = private unnamed_addr constant [1 x i8] c"6"
@.str287 = private unnamed_addr constant [1 x i8] c"7"
@.str288 = private unnamed_addr constant [7 x i8] c"NUMBER\00"
@.str289 = private unnamed_addr constant [1 x i8] c"."
@.str290 = private unnamed_addr constant [3 x i8] c"i8\00"
@.str291 = private unnamed_addr constant [4 x i8] c"i16\00"
@.str292 = private unnamed_addr constant [4 x i8] c"i32\00"
@.str293 = private unnamed_addr constant [4 x i8] c"i64\00"
@.str294 = private unnamed_addr constant [3 x i8] c"u8\00"
@.str295 = private unnamed_addr constant [4 x i8] c"u16\00"
@.str296 = private unnamed_addr constant [4 x i8] c"u32\00"
@.str297 = private unnamed_addr constant [4 x i8] c"u64\00"
@.str298 = private unnamed_addr constant [4 x i8] c"f32\00"
@.str299 = private unnamed_addr constant [6 x i8] c"usize\00"
@.str300 = private unnamed_addr constant [7 x i8] c"NUMBER\00"
@.str301 = private unnamed_addr constant [7 x i8] c"NUMBER\00"
@.str302 = private unnamed_addr constant [7 x i8] c"NUMBER\00"
@.str303 = private unnamed_addr constant [25 x i8] c"Error: String sin cerrar\00"
@.str304 = private unnamed_addr constant [1 x i8] c"\22"
@.str305 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str306 = private unnamed_addr constant [1 x i8] c"$"
@.str307 = private unnamed_addr constant [1 x i8] c"{"
@.str308 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str309 = private unnamed_addr constant [5 x i8] c"PLUS\00"
@.str310 = private unnamed_addr constant [2 x i8] c"+\00"
@.str311 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str312 = private unnamed_addr constant [2 x i8] c"(\00"
@.str313 = private unnamed_addr constant [1 x i8] c"\5c"
@.str314 = private unnamed_addr constant [1 x i8] c"n"
@.str315 = private unnamed_addr constant [1 x i8] c"\0a"
@.str316 = private unnamed_addr constant [1 x i8] c"t"
@.str317 = private unnamed_addr constant [1 x i8] c"\09"
@.str318 = private unnamed_addr constant [1 x i8] c"\5c"
@.str319 = private unnamed_addr constant [1 x i8] c"\5c"
@.str320 = private unnamed_addr constant [1 x i8] c"\22"
@.str321 = private unnamed_addr constant [1 x i8] c"\22"
@.str322 = private unnamed_addr constant [1 x i8] c"r"
@.str323 = private unnamed_addr constant [1 x i8] c"0"
@.str324 = private unnamed_addr constant [1 x i8] c"\22"
@.str325 = private unnamed_addr constant [37 x i8] c"Error: unterminated multiline string\00"
@.str326 = private unnamed_addr constant [1 x i8] c"\22"
@.str327 = private unnamed_addr constant [1 x i8] c"\22"
@.str328 = private unnamed_addr constant [1 x i8] c"\22"
@.str329 = private unnamed_addr constant [1 x i8] c"\22"
@.str330 = private unnamed_addr constant [1 x i8] c"\22"
@.str331 = private unnamed_addr constant [1 x i8] c"\22"
@.str332 = private unnamed_addr constant [1 x i8] c"\22"
@.str333 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str334 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str335 = private unnamed_addr constant [1 x i8] c"\00"
@.str336 = private unnamed_addr constant [31 x i8] c"Error: unterminated raw string\00"
@.str337 = private unnamed_addr constant [1 x i8] c"\22"
@.str338 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str339 = private unnamed_addr constant [25 x i8] c"Error: String sin cerrar\00"
@.str340 = private unnamed_addr constant [1 x i8] c"\22"
@.str341 = private unnamed_addr constant [5 x i8] c"PLUS\00"
@.str342 = private unnamed_addr constant [2 x i8] c"+\00"
@.str343 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str344 = private unnamed_addr constant [1 x i8] c"$"
@.str345 = private unnamed_addr constant [1 x i8] c"{"
@.str346 = private unnamed_addr constant [5 x i8] c"PLUS\00"
@.str347 = private unnamed_addr constant [2 x i8] c"+\00"
@.str348 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str349 = private unnamed_addr constant [5 x i8] c"PLUS\00"
@.str350 = private unnamed_addr constant [2 x i8] c"+\00"
@.str351 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str352 = private unnamed_addr constant [2 x i8] c"(\00"
@.str353 = private unnamed_addr constant [1 x i8] c"\5c"
@.str354 = private unnamed_addr constant [1 x i8] c"n"
@.str355 = private unnamed_addr constant [1 x i8] c"\0a"
@.str356 = private unnamed_addr constant [1 x i8] c"t"
@.str357 = private unnamed_addr constant [1 x i8] c"\09"
@.str358 = private unnamed_addr constant [1 x i8] c"\5c"
@.str359 = private unnamed_addr constant [1 x i8] c"\5c"
@.str360 = private unnamed_addr constant [1 x i8] c"\22"
@.str361 = private unnamed_addr constant [1 x i8] c"\22"
@.str362 = private unnamed_addr constant [1 x i8] c"r"
@.str363 = private unnamed_addr constant [1 x i8] c"0"
@.str364 = private unnamed_addr constant [9 x i8] c"LIFETIME\00"
@.str365 = private unnamed_addr constant [2 x i8] c"'\00"
@.str366 = private unnamed_addr constant [1 x i8] c"'"
@.str367 = private unnamed_addr constant [2 x i8] c"c\00"
@.str368 = private unnamed_addr constant [1 x i8] c"\5c"
@.str369 = private unnamed_addr constant [1 x i8] c"n"
@.str370 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str371 = private unnamed_addr constant [1 x i8] c"t"
@.str372 = private unnamed_addr constant [2 x i8] c"\09\00"
@.str373 = private unnamed_addr constant [1 x i8] c"\5c"
@.str374 = private unnamed_addr constant [2 x i8] c"\5c\00"
@.str375 = private unnamed_addr constant [1 x i8] c"'"
@.str376 = private unnamed_addr constant [2 x i8] c"'\00"
@.str377 = private unnamed_addr constant [1 x i8] c"r"
@.str378 = private unnamed_addr constant [1 x i8] c"\00"
@.str379 = private unnamed_addr constant [1 x i8] c"0"
@.str380 = private unnamed_addr constant [1 x i8] c"\00"
@.str381 = private unnamed_addr constant [1 x i8] c"'"
@.str382 = private unnamed_addr constant [5 x i8] c"CHAR\00"
@.str383 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str384 = private unnamed_addr constant [1 x i8] c"\0a"
@.str385 = private unnamed_addr constant [1 x i8] c"+"
@.str386 = private unnamed_addr constant [1 x i8] c"="
@.str387 = private unnamed_addr constant [12 x i8] c"PLUS_EQUALS\00"
@.str388 = private unnamed_addr constant [3 x i8] c"+=\00"
@.str389 = private unnamed_addr constant [5 x i8] c"PLUS\00"
@.str390 = private unnamed_addr constant [2 x i8] c"+\00"
@.str391 = private unnamed_addr constant [1 x i8] c"-"
@.str392 = private unnamed_addr constant [1 x i8] c">"
@.str393 = private unnamed_addr constant [6 x i8] c"ARROW\00"
@.str394 = private unnamed_addr constant [3 x i8] c"->\00"
@.str395 = private unnamed_addr constant [1 x i8] c"="
@.str396 = private unnamed_addr constant [13 x i8] c"MINUS_EQUALS\00"
@.str397 = private unnamed_addr constant [3 x i8] c"-=\00"
@.str398 = private unnamed_addr constant [6 x i8] c"MINUS\00"
@.str399 = private unnamed_addr constant [2 x i8] c"-\00"
@.str400 = private unnamed_addr constant [1 x i8] c"*"
@.str401 = private unnamed_addr constant [1 x i8] c"*"
@.str402 = private unnamed_addr constant [6 x i8] c"POWER\00"
@.str403 = private unnamed_addr constant [3 x i8] c"**\00"
@.str404 = private unnamed_addr constant [1 x i8] c"="
@.str405 = private unnamed_addr constant [12 x i8] c"STAR_EQUALS\00"
@.str406 = private unnamed_addr constant [3 x i8] c"*=\00"
@.str407 = private unnamed_addr constant [5 x i8] c"STAR\00"
@.str408 = private unnamed_addr constant [2 x i8] c"*\00"
@.str409 = private unnamed_addr constant [1 x i8] c"/"
@.str410 = private unnamed_addr constant [1 x i8] c"/"
@.str411 = private unnamed_addr constant [1 x i8] c"*"
@.str412 = private unnamed_addr constant [1 x i8] c"="
@.str413 = private unnamed_addr constant [13 x i8] c"SLASH_EQUALS\00"
@.str414 = private unnamed_addr constant [3 x i8] c"/=\00"
@.str415 = private unnamed_addr constant [6 x i8] c"SLASH\00"
@.str416 = private unnamed_addr constant [2 x i8] c"/\00"
@.str417 = private unnamed_addr constant [1 x i8] c"%"
@.str418 = private unnamed_addr constant [1 x i8] c"="
@.str419 = private unnamed_addr constant [15 x i8] c"PERCENT_EQUALS\00"
@.str420 = private unnamed_addr constant [3 x i8] c"%=\00"
@.str421 = private unnamed_addr constant [8 x i8] c"PERCENT\00"
@.str422 = private unnamed_addr constant [2 x i8] c"%\00"
@.str423 = private unnamed_addr constant [1 x i8] c","
@.str424 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str425 = private unnamed_addr constant [2 x i8] c",\00"
@.str426 = private unnamed_addr constant [1 x i8] c"("
@.str427 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str428 = private unnamed_addr constant [2 x i8] c"(\00"
@.str429 = private unnamed_addr constant [1 x i8] c")"
@.str430 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str431 = private unnamed_addr constant [2 x i8] c")\00"
@.str432 = private unnamed_addr constant [1 x i8] c"{"
@.str433 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str434 = private unnamed_addr constant [2 x i8] c"{\00"
@.str435 = private unnamed_addr constant [1 x i8] c"}"
@.str436 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str437 = private unnamed_addr constant [2 x i8] c")\00"
@.str438 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str439 = private unnamed_addr constant [2 x i8] c"}\00"
@.str440 = private unnamed_addr constant [1 x i8] c"["
@.str441 = private unnamed_addr constant [13 x i8] c"LEFT_BRACKET\00"
@.str442 = private unnamed_addr constant [2 x i8] c"[\00"
@.str443 = private unnamed_addr constant [1 x i8] c"]"
@.str444 = private unnamed_addr constant [14 x i8] c"RIGHT_BRACKET\00"
@.str445 = private unnamed_addr constant [2 x i8] c"]\00"
@.str446 = private unnamed_addr constant [1 x i8] c":"
@.str447 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str448 = private unnamed_addr constant [2 x i8] c":\00"
@.str449 = private unnamed_addr constant [1 x i8] c"="
@.str450 = private unnamed_addr constant [1 x i8] c"="
@.str451 = private unnamed_addr constant [12 x i8] c"EQUAL_EQUAL\00"
@.str452 = private unnamed_addr constant [3 x i8] c"==\00"
@.str453 = private unnamed_addr constant [1 x i8] c">"
@.str454 = private unnamed_addr constant [12 x i8] c"ARROW_MATCH\00"
@.str455 = private unnamed_addr constant [3 x i8] c"=>\00"
@.str456 = private unnamed_addr constant [7 x i8] c"EQUALS\00"
@.str457 = private unnamed_addr constant [2 x i8] c"=\00"
@.str458 = private unnamed_addr constant [1 x i8] c"!"
@.str459 = private unnamed_addr constant [1 x i8] c"="
@.str460 = private unnamed_addr constant [10 x i8] c"NOT_EQUAL\00"
@.str461 = private unnamed_addr constant [3 x i8] c"!=\00"
@.str462 = private unnamed_addr constant [4 x i8] c"NOT\00"
@.str463 = private unnamed_addr constant [2 x i8] c"!\00"
@.str464 = private unnamed_addr constant [1 x i8] c"?"
@.str465 = private unnamed_addr constant [9 x i8] c"QUESTION\00"
@.str466 = private unnamed_addr constant [2 x i8] c"?\00"
@.str467 = private unnamed_addr constant [1 x i8] c"<"
@.str468 = private unnamed_addr constant [1 x i8] c"<"
@.str469 = private unnamed_addr constant [1 x i8] c"="
@.str470 = private unnamed_addr constant [18 x i8] c"SHIFT_LEFT_EQUALS\00"
@.str471 = private unnamed_addr constant [4 x i8] c"<<=\00"
@.str472 = private unnamed_addr constant [11 x i8] c"SHIFT_LEFT\00"
@.str473 = private unnamed_addr constant [3 x i8] c"<<\00"
@.str474 = private unnamed_addr constant [1 x i8] c"="
@.str475 = private unnamed_addr constant [11 x i8] c"LESS_EQUAL\00"
@.str476 = private unnamed_addr constant [3 x i8] c"<=\00"
@.str477 = private unnamed_addr constant [5 x i8] c"LESS\00"
@.str478 = private unnamed_addr constant [2 x i8] c"<\00"
@.str479 = private unnamed_addr constant [1 x i8] c">"
@.str480 = private unnamed_addr constant [1 x i8] c">"
@.str481 = private unnamed_addr constant [1 x i8] c"="
@.str482 = private unnamed_addr constant [19 x i8] c"SHIFT_RIGHT_EQUALS\00"
@.str483 = private unnamed_addr constant [4 x i8] c">>=\00"
@.str484 = private unnamed_addr constant [12 x i8] c"SHIFT_RIGHT\00"
@.str485 = private unnamed_addr constant [3 x i8] c">>\00"
@.str486 = private unnamed_addr constant [1 x i8] c"="
@.str487 = private unnamed_addr constant [14 x i8] c"GREATER_EQUAL\00"
@.str488 = private unnamed_addr constant [3 x i8] c">=\00"
@.str489 = private unnamed_addr constant [8 x i8] c"GREATER\00"
@.str490 = private unnamed_addr constant [2 x i8] c">\00"
@.str491 = private unnamed_addr constant [1 x i8] c"&"
@.str492 = private unnamed_addr constant [1 x i8] c"&"
@.str493 = private unnamed_addr constant [8 x i8] c"AND_AND\00"
@.str494 = private unnamed_addr constant [3 x i8] c"&&\00"
@.str495 = private unnamed_addr constant [1 x i8] c"="
@.str496 = private unnamed_addr constant [11 x i8] c"AMP_EQUALS\00"
@.str497 = private unnamed_addr constant [3 x i8] c"&=\00"
@.str498 = private unnamed_addr constant [4 x i8] c"AMP\00"
@.str499 = private unnamed_addr constant [2 x i8] c"&\00"
@.str500 = private unnamed_addr constant [1 x i8] c"|"
@.str501 = private unnamed_addr constant [1 x i8] c"|"
@.str502 = private unnamed_addr constant [6 x i8] c"OR_OR\00"
@.str503 = private unnamed_addr constant [3 x i8] c"||\00"
@.str504 = private unnamed_addr constant [1 x i8] c"="
@.str505 = private unnamed_addr constant [12 x i8] c"PIPE_EQUALS\00"
@.str506 = private unnamed_addr constant [3 x i8] c"|=\00"
@.str507 = private unnamed_addr constant [5 x i8] c"PIPE\00"
@.str508 = private unnamed_addr constant [2 x i8] c"|\00"
@.str509 = private unnamed_addr constant [1 x i8] c"^"
@.str510 = private unnamed_addr constant [1 x i8] c"="
@.str511 = private unnamed_addr constant [13 x i8] c"CARET_EQUALS\00"
@.str512 = private unnamed_addr constant [3 x i8] c"^=\00"
@.str513 = private unnamed_addr constant [6 x i8] c"CARET\00"
@.str514 = private unnamed_addr constant [2 x i8] c"^\00"
@.str515 = private unnamed_addr constant [1 x i8] c"~"
@.str516 = private unnamed_addr constant [6 x i8] c"TILDE\00"
@.str517 = private unnamed_addr constant [2 x i8] c"~\00"
@.str518 = private unnamed_addr constant [1 x i8] c"#"
@.str519 = private unnamed_addr constant [5 x i8] c"HASH\00"
@.str520 = private unnamed_addr constant [2 x i8] c"#\00"
@.str521 = private unnamed_addr constant [1 x i8] c"."
@.str522 = private unnamed_addr constant [1 x i8] c"."
@.str523 = private unnamed_addr constant [1 x i8] c"."
@.str524 = private unnamed_addr constant [9 x i8] c"ELLIPSIS\00"
@.str525 = private unnamed_addr constant [4 x i8] c"...\00"
@.str526 = private unnamed_addr constant [1 x i8] c"="
@.str527 = private unnamed_addr constant [16 x i8] c"RANGE_INCLUSIVE\00"
@.str528 = private unnamed_addr constant [4 x i8] c"..=\00"
@.str529 = private unnamed_addr constant [6 x i8] c"RANGE\00"
@.str530 = private unnamed_addr constant [3 x i8] c"..\00"
@.str531 = private unnamed_addr constant [4 x i8] c"DOT\00"
@.str532 = private unnamed_addr constant [2 x i8] c".\00"
@.str533 = private unnamed_addr constant [1 x i8] c"\22"
@.str534 = private unnamed_addr constant [1 x i8] c"\22"
@.str535 = private unnamed_addr constant [1 x i8] c"'"
@.str536 = private unnamed_addr constant [1 x i8] c"'"
@.str537 = private unnamed_addr constant [1 x i8] c"r"
@.str538 = private unnamed_addr constant [1 x i8] c"\22"
@__nyx_test_failed = external global i64
; Nyx Compiler Bootstrap v3.0
; Generated from: script.nx

%nyx_string = type { i64, i64, i8* }
%ASTNode = type { %nyx_string*, { i64, i8* }* }
declare %nyx_string* @nyx_string_from_cstr(i8*)
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
declare %nyx_string* @nyx_tcp_read_line(i64)
declare i64 @nyx_tcp_write(i64, %nyx_string*)
declare void @nyx_tcp_close(i64)
declare { i64, i8* }* @nyx_http_parse_request_fast(i64)
declare { i64, i8* }* @nyx_resp_read_command(i64)
declare i64 @nyx_resp_write_bulk(i64, %nyx_string*)
declare i64 @nyx_udp_bind(i8*, i64)
declare i64 @nyx_udp_sendto(i64, %nyx_string*, i8*, i64)
declare %nyx_string* @nyx_udp_recvfrom(i64, i64)
declare %nyx_string* @nyx_resolve(i8*)
declare i64 @nyx_thread_spawn(i8*)
declare i64 @nyx_thread_join(i64)
declare void @nyx_task_cancel(i64)
declare i64 @nyx_task_race(i64, i64)
declare i8* @nyx_mutex_new()
declare void @nyx_mutex_lock(i8*)
declare void @nyx_mutex_unlock(i8*)
declare void @nyx_mutex_destroy(i8*)
declare i8* @nyx_channel_new(i64)
declare void @nyx_channel_send(i8*, i64)
declare i64 @nyx_channel_recv(i8*)
declare i64 @nyx_channel_try_recv(i8*)
declare void @nyx_channel_destroy(i8*)
declare void @nyx_yield()
declare void @llvm.memset.p0i8.i64(i8*, i8, i64, i1)
declare i64 @nyx_exec(i8*)
declare %nyx_string* @nyx_getenv(i8*)
declare %nyx_string* @nyx_getenv_default(i8*, %nyx_string*)
declare void @nyx_setenv(i8*, i8*)
declare void @nyx_exit(i64)
declare { i64, i8* }* @nyx_get_args()
declare void @nyx_set_args(i32, i8**)
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
declare i64 @nyx_tls_write(i64, %nyx_string*)
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
declare void @nyx_array_set({ i64, i8* }*, i64, i64)
declare i64 @nyx_array_get({ i64, i8* }*, i64)
declare { i64, i8* }* @nyx_array_new_ptr()
declare void @nyx_array_push_ptr({ i64, i8* }*, i8*)
declare i8* @nyx_array_get_ptr({ i64, i8* }*, i64)
declare void @nyx_array_set_ptr({ i64, i8* }*, i64, i8*)
declare i64 @nyx_string_length(%nyx_string*)
declare i64 @nyx_string_length_utf8(%nyx_string*)
declare i64 @nyx_string_byte_length(%nyx_string*)
declare i8 @nyx_string_char_at(%nyx_string*, i64)
declare %nyx_string* @nyx_string_substring(%nyx_string*, i64, i64)
declare i1 @nyx_string_contains(%nyx_string*, %nyx_string*)
declare { i64, i8* }* @nyx_string_split(%nyx_string*, %nyx_string*)
declare %nyx_string* @nyx_read_line()
declare void @nyx_print_no_newline(%nyx_string*)
declare i64 @nyx_string_to_int(%nyx_string*)
declare double @nyx_string_to_float(%nyx_string*)
declare %nyx_string* @nyx_string_trim(%nyx_string*)
declare %nyx_string* @nyx_string_to_upper(%nyx_string*)
declare %nyx_string* @nyx_string_to_lower(%nyx_string*)
declare %nyx_string* @nyx_string_replace(%nyx_string*, %nyx_string*, %nyx_string*)
declare %nyx_string* @nyx_string_repeat(%nyx_string*, i64)
declare i1 @nyx_string_starts_with(%nyx_string*, %nyx_string*)
declare i1 @nyx_string_ends_with(%nyx_string*, %nyx_string*)
declare i64 @nyx_string_index_of(%nyx_string*, %nyx_string*)
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
declare void @exit(i32)
declare void @nyx_panic(%nyx_string*)
declare i8* @nyx_try_push()
declare void @nyx_try_pop()
declare void @nyx_throw(%nyx_string*)
declare %nyx_string* @nyx_get_exception()
declare i32 @setjmp(i8*) #0
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


define internal i1 @is_keyword(
%nyx_string* %word.param) {
  %word.ptr = alloca %nyx_string*
  store %nyx_string* %word.param, %nyx_string** %word.ptr
  %1 = load %nyx_string*, %nyx_string** %word.ptr
  %2 = getelementptr [4 x i8], [4 x i8]* @.str0, i32 0, i32 0
  %3 = call %nyx_string* @nyx_string_from_cstr(i8* %2)
  %4 = call i8* @nyx_string_to_cstr(%nyx_string* %1)
  %5 = call i8* @nyx_string_to_cstr(%nyx_string* %3)
  %6 = call i32 @strcmp(i8* %4, i8* %5)
  %7 = icmp eq i32 %6, 0
  %8 = load %nyx_string*, %nyx_string** %word.ptr
  %9 = getelementptr [4 x i8], [4 x i8]* @.str1, i32 0, i32 0
  %10 = call %nyx_string* @nyx_string_from_cstr(i8* %9)
  %11 = call i8* @nyx_string_to_cstr(%nyx_string* %8)
  %12 = call i8* @nyx_string_to_cstr(%nyx_string* %10)
  %13 = call i32 @strcmp(i8* %11, i8* %12)
  %14 = icmp eq i32 %13, 0
  %15 = or i1 %7, %14
  %16 = load %nyx_string*, %nyx_string** %word.ptr
  %17 = getelementptr [6 x i8], [6 x i8]* @.str2, i32 0, i32 0
  %18 = call %nyx_string* @nyx_string_from_cstr(i8* %17)
  %19 = call i8* @nyx_string_to_cstr(%nyx_string* %16)
  %20 = call i8* @nyx_string_to_cstr(%nyx_string* %18)
  %21 = call i32 @strcmp(i8* %19, i8* %20)
  %22 = icmp eq i32 %21, 0
  %23 = or i1 %15, %22
  %24 = load %nyx_string*, %nyx_string** %word.ptr
  %25 = getelementptr [3 x i8], [3 x i8]* @.str3, i32 0, i32 0
  %26 = call %nyx_string* @nyx_string_from_cstr(i8* %25)
  %27 = call i8* @nyx_string_to_cstr(%nyx_string* %24)
  %28 = call i8* @nyx_string_to_cstr(%nyx_string* %26)
  %29 = call i32 @strcmp(i8* %27, i8* %28)
  %30 = icmp eq i32 %29, 0
  %31 = or i1 %23, %30
  %32 = load %nyx_string*, %nyx_string** %word.ptr
  %33 = getelementptr [7 x i8], [7 x i8]* @.str4, i32 0, i32 0
  %34 = call %nyx_string* @nyx_string_from_cstr(i8* %33)
  %35 = call i8* @nyx_string_to_cstr(%nyx_string* %32)
  %36 = call i8* @nyx_string_to_cstr(%nyx_string* %34)
  %37 = call i32 @strcmp(i8* %35, i8* %36)
  %38 = icmp eq i32 %37, 0
  %39 = or i1 %31, %38
  %40 = load %nyx_string*, %nyx_string** %word.ptr
  %41 = getelementptr [3 x i8], [3 x i8]* @.str5, i32 0, i32 0
  %42 = call %nyx_string* @nyx_string_from_cstr(i8* %41)
  %43 = call i8* @nyx_string_to_cstr(%nyx_string* %40)
  %44 = call i8* @nyx_string_to_cstr(%nyx_string* %42)
  %45 = call i32 @strcmp(i8* %43, i8* %44)
  %46 = icmp eq i32 %45, 0
  %47 = or i1 %39, %46
  %48 = load %nyx_string*, %nyx_string** %word.ptr
  %49 = getelementptr [5 x i8], [5 x i8]* @.str6, i32 0, i32 0
  %50 = call %nyx_string* @nyx_string_from_cstr(i8* %49)
  %51 = call i8* @nyx_string_to_cstr(%nyx_string* %48)
  %52 = call i8* @nyx_string_to_cstr(%nyx_string* %50)
  %53 = call i32 @strcmp(i8* %51, i8* %52)
  %54 = icmp eq i32 %53, 0
  %55 = or i1 %47, %54
  %56 = load %nyx_string*, %nyx_string** %word.ptr
  %57 = getelementptr [6 x i8], [6 x i8]* @.str7, i32 0, i32 0
  %58 = call %nyx_string* @nyx_string_from_cstr(i8* %57)
  %59 = call i8* @nyx_string_to_cstr(%nyx_string* %56)
  %60 = call i8* @nyx_string_to_cstr(%nyx_string* %58)
  %61 = call i32 @strcmp(i8* %59, i8* %60)
  %62 = icmp eq i32 %61, 0
  %63 = or i1 %55, %62
  %64 = load %nyx_string*, %nyx_string** %word.ptr
  %65 = getelementptr [4 x i8], [4 x i8]* @.str8, i32 0, i32 0
  %66 = call %nyx_string* @nyx_string_from_cstr(i8* %65)
  %67 = call i8* @nyx_string_to_cstr(%nyx_string* %64)
  %68 = call i8* @nyx_string_to_cstr(%nyx_string* %66)
  %69 = call i32 @strcmp(i8* %67, i8* %68)
  %70 = icmp eq i32 %69, 0
  %71 = or i1 %63, %70
  %72 = load %nyx_string*, %nyx_string** %word.ptr
  %73 = getelementptr [3 x i8], [3 x i8]* @.str9, i32 0, i32 0
  %74 = call %nyx_string* @nyx_string_from_cstr(i8* %73)
  %75 = call i8* @nyx_string_to_cstr(%nyx_string* %72)
  %76 = call i8* @nyx_string_to_cstr(%nyx_string* %74)
  %77 = call i32 @strcmp(i8* %75, i8* %76)
  %78 = icmp eq i32 %77, 0
  %79 = or i1 %71, %78
  %80 = load %nyx_string*, %nyx_string** %word.ptr
  %81 = getelementptr [6 x i8], [6 x i8]* @.str10, i32 0, i32 0
  %82 = call %nyx_string* @nyx_string_from_cstr(i8* %81)
  %83 = call i8* @nyx_string_to_cstr(%nyx_string* %80)
  %84 = call i8* @nyx_string_to_cstr(%nyx_string* %82)
  %85 = call i32 @strcmp(i8* %83, i8* %84)
  %86 = icmp eq i32 %85, 0
  %87 = or i1 %79, %86
  %88 = load %nyx_string*, %nyx_string** %word.ptr
  %89 = getelementptr [9 x i8], [9 x i8]* @.str11, i32 0, i32 0
  %90 = call %nyx_string* @nyx_string_from_cstr(i8* %89)
  %91 = call i8* @nyx_string_to_cstr(%nyx_string* %88)
  %92 = call i8* @nyx_string_to_cstr(%nyx_string* %90)
  %93 = call i32 @strcmp(i8* %91, i8* %92)
  %94 = icmp eq i32 %93, 0
  %95 = or i1 %87, %94
  %96 = load %nyx_string*, %nyx_string** %word.ptr
  %97 = getelementptr [7 x i8], [7 x i8]* @.str12, i32 0, i32 0
  %98 = call %nyx_string* @nyx_string_from_cstr(i8* %97)
  %99 = call i8* @nyx_string_to_cstr(%nyx_string* %96)
  %100 = call i8* @nyx_string_to_cstr(%nyx_string* %98)
  %101 = call i32 @strcmp(i8* %99, i8* %100)
  %102 = icmp eq i32 %101, 0
  %103 = or i1 %95, %102
  %104 = load %nyx_string*, %nyx_string** %word.ptr
  %105 = getelementptr [5 x i8], [5 x i8]* @.str13, i32 0, i32 0
  %106 = call %nyx_string* @nyx_string_from_cstr(i8* %105)
  %107 = call i8* @nyx_string_to_cstr(%nyx_string* %104)
  %108 = call i8* @nyx_string_to_cstr(%nyx_string* %106)
  %109 = call i32 @strcmp(i8* %107, i8* %108)
  %110 = icmp eq i32 %109, 0
  %111 = or i1 %103, %110
  %112 = load %nyx_string*, %nyx_string** %word.ptr
  %113 = getelementptr [6 x i8], [6 x i8]* @.str14, i32 0, i32 0
  %114 = call %nyx_string* @nyx_string_from_cstr(i8* %113)
  %115 = call i8* @nyx_string_to_cstr(%nyx_string* %112)
  %116 = call i8* @nyx_string_to_cstr(%nyx_string* %114)
  %117 = call i32 @strcmp(i8* %115, i8* %116)
  %118 = icmp eq i32 %117, 0
  %119 = or i1 %111, %118
  %120 = load %nyx_string*, %nyx_string** %word.ptr
  %121 = getelementptr [7 x i8], [7 x i8]* @.str15, i32 0, i32 0
  %122 = call %nyx_string* @nyx_string_from_cstr(i8* %121)
  %123 = call i8* @nyx_string_to_cstr(%nyx_string* %120)
  %124 = call i8* @nyx_string_to_cstr(%nyx_string* %122)
  %125 = call i32 @strcmp(i8* %123, i8* %124)
  %126 = icmp eq i32 %125, 0
  %127 = or i1 %119, %126
  %128 = load %nyx_string*, %nyx_string** %word.ptr
  %129 = getelementptr [7 x i8], [7 x i8]* @.str16, i32 0, i32 0
  %130 = call %nyx_string* @nyx_string_from_cstr(i8* %129)
  %131 = call i8* @nyx_string_to_cstr(%nyx_string* %128)
  %132 = call i8* @nyx_string_to_cstr(%nyx_string* %130)
  %133 = call i32 @strcmp(i8* %131, i8* %132)
  %134 = icmp eq i32 %133, 0
  %135 = or i1 %127, %134
  %136 = load %nyx_string*, %nyx_string** %word.ptr
  %137 = getelementptr [5 x i8], [5 x i8]* @.str17, i32 0, i32 0
  %138 = call %nyx_string* @nyx_string_from_cstr(i8* %137)
  %139 = call i8* @nyx_string_to_cstr(%nyx_string* %136)
  %140 = call i8* @nyx_string_to_cstr(%nyx_string* %138)
  %141 = call i32 @strcmp(i8* %139, i8* %140)
  %142 = icmp eq i32 %141, 0
  %143 = or i1 %135, %142
  %144 = load %nyx_string*, %nyx_string** %word.ptr
  %145 = getelementptr [5 x i8], [5 x i8]* @.str18, i32 0, i32 0
  %146 = call %nyx_string* @nyx_string_from_cstr(i8* %145)
  %147 = call i8* @nyx_string_to_cstr(%nyx_string* %144)
  %148 = call i8* @nyx_string_to_cstr(%nyx_string* %146)
  %149 = call i32 @strcmp(i8* %147, i8* %148)
  %150 = icmp eq i32 %149, 0
  %151 = or i1 %143, %150
  %152 = load %nyx_string*, %nyx_string** %word.ptr
  %153 = getelementptr [6 x i8], [6 x i8]* @.str19, i32 0, i32 0
  %154 = call %nyx_string* @nyx_string_from_cstr(i8* %153)
  %155 = call i8* @nyx_string_to_cstr(%nyx_string* %152)
  %156 = call i8* @nyx_string_to_cstr(%nyx_string* %154)
  %157 = call i32 @strcmp(i8* %155, i8* %156)
  %158 = icmp eq i32 %157, 0
  %159 = or i1 %151, %158
  %160 = load %nyx_string*, %nyx_string** %word.ptr
  %161 = getelementptr [4 x i8], [4 x i8]* @.str20, i32 0, i32 0
  %162 = call %nyx_string* @nyx_string_from_cstr(i8* %161)
  %163 = call i8* @nyx_string_to_cstr(%nyx_string* %160)
  %164 = call i8* @nyx_string_to_cstr(%nyx_string* %162)
  %165 = call i32 @strcmp(i8* %163, i8* %164)
  %166 = icmp eq i32 %165, 0
  %167 = or i1 %159, %166
  %168 = load %nyx_string*, %nyx_string** %word.ptr
  %169 = getelementptr [3 x i8], [3 x i8]* @.str21, i32 0, i32 0
  %170 = call %nyx_string* @nyx_string_from_cstr(i8* %169)
  %171 = call i8* @nyx_string_to_cstr(%nyx_string* %168)
  %172 = call i8* @nyx_string_to_cstr(%nyx_string* %170)
  %173 = call i32 @strcmp(i8* %171, i8* %172)
  %174 = icmp eq i32 %173, 0
  %175 = or i1 %167, %174
  %176 = load %nyx_string*, %nyx_string** %word.ptr
  %177 = getelementptr [4 x i8], [4 x i8]* @.str22, i32 0, i32 0
  %178 = call %nyx_string* @nyx_string_from_cstr(i8* %177)
  %179 = call i8* @nyx_string_to_cstr(%nyx_string* %176)
  %180 = call i8* @nyx_string_to_cstr(%nyx_string* %178)
  %181 = call i32 @strcmp(i8* %179, i8* %180)
  %182 = icmp eq i32 %181, 0
  %183 = or i1 %175, %182
  %184 = load %nyx_string*, %nyx_string** %word.ptr
  %185 = getelementptr [5 x i8], [5 x i8]* @.str23, i32 0, i32 0
  %186 = call %nyx_string* @nyx_string_from_cstr(i8* %185)
  %187 = call i8* @nyx_string_to_cstr(%nyx_string* %184)
  %188 = call i8* @nyx_string_to_cstr(%nyx_string* %186)
  %189 = call i32 @strcmp(i8* %187, i8* %188)
  %190 = icmp eq i32 %189, 0
  %191 = or i1 %183, %190
  %192 = load %nyx_string*, %nyx_string** %word.ptr
  %193 = getelementptr [6 x i8], [6 x i8]* @.str24, i32 0, i32 0
  %194 = call %nyx_string* @nyx_string_from_cstr(i8* %193)
  %195 = call i8* @nyx_string_to_cstr(%nyx_string* %192)
  %196 = call i8* @nyx_string_to_cstr(%nyx_string* %194)
  %197 = call i32 @strcmp(i8* %195, i8* %196)
  %198 = icmp eq i32 %197, 0
  %199 = or i1 %191, %198
  %200 = load %nyx_string*, %nyx_string** %word.ptr
  %201 = getelementptr [5 x i8], [5 x i8]* @.str25, i32 0, i32 0
  %202 = call %nyx_string* @nyx_string_from_cstr(i8* %201)
  %203 = call i8* @nyx_string_to_cstr(%nyx_string* %200)
  %204 = call i8* @nyx_string_to_cstr(%nyx_string* %202)
  %205 = call i32 @strcmp(i8* %203, i8* %204)
  %206 = icmp eq i32 %205, 0
  %207 = or i1 %199, %206
  %208 = load %nyx_string*, %nyx_string** %word.ptr
  %209 = getelementptr [7 x i8], [7 x i8]* @.str26, i32 0, i32 0
  %210 = call %nyx_string* @nyx_string_from_cstr(i8* %209)
  %211 = call i8* @nyx_string_to_cstr(%nyx_string* %208)
  %212 = call i8* @nyx_string_to_cstr(%nyx_string* %210)
  %213 = call i32 @strcmp(i8* %211, i8* %212)
  %214 = icmp eq i32 %213, 0
  %215 = or i1 %207, %214
  %216 = load %nyx_string*, %nyx_string** %word.ptr
  %217 = getelementptr [7 x i8], [7 x i8]* @.str27, i32 0, i32 0
  %218 = call %nyx_string* @nyx_string_from_cstr(i8* %217)
  %219 = call i8* @nyx_string_to_cstr(%nyx_string* %216)
  %220 = call i8* @nyx_string_to_cstr(%nyx_string* %218)
  %221 = call i32 @strcmp(i8* %219, i8* %220)
  %222 = icmp eq i32 %221, 0
  %223 = or i1 %215, %222
  %224 = load %nyx_string*, %nyx_string** %word.ptr
  %225 = getelementptr [3 x i8], [3 x i8]* @.str28, i32 0, i32 0
  %226 = call %nyx_string* @nyx_string_from_cstr(i8* %225)
  %227 = call i8* @nyx_string_to_cstr(%nyx_string* %224)
  %228 = call i8* @nyx_string_to_cstr(%nyx_string* %226)
  %229 = call i32 @strcmp(i8* %227, i8* %228)
  %230 = icmp eq i32 %229, 0
  %231 = or i1 %223, %230
  %232 = load %nyx_string*, %nyx_string** %word.ptr
  %233 = getelementptr [7 x i8], [7 x i8]* @.str29, i32 0, i32 0
  %234 = call %nyx_string* @nyx_string_from_cstr(i8* %233)
  %235 = call i8* @nyx_string_to_cstr(%nyx_string* %232)
  %236 = call i8* @nyx_string_to_cstr(%nyx_string* %234)
  %237 = call i32 @strcmp(i8* %235, i8* %236)
  %238 = icmp eq i32 %237, 0
  %239 = or i1 %231, %238
  %240 = load %nyx_string*, %nyx_string** %word.ptr
  %241 = getelementptr [7 x i8], [7 x i8]* @.str30, i32 0, i32 0
  %242 = call %nyx_string* @nyx_string_from_cstr(i8* %241)
  %243 = call i8* @nyx_string_to_cstr(%nyx_string* %240)
  %244 = call i8* @nyx_string_to_cstr(%nyx_string* %242)
  %245 = call i32 @strcmp(i8* %243, i8* %244)
  %246 = icmp eq i32 %245, 0
  %247 = or i1 %239, %246
  %248 = load %nyx_string*, %nyx_string** %word.ptr
  %249 = getelementptr [7 x i8], [7 x i8]* @.str31, i32 0, i32 0
  %250 = call %nyx_string* @nyx_string_from_cstr(i8* %249)
  %251 = call i8* @nyx_string_to_cstr(%nyx_string* %248)
  %252 = call i8* @nyx_string_to_cstr(%nyx_string* %250)
  %253 = call i32 @strcmp(i8* %251, i8* %252)
  %254 = icmp eq i32 %253, 0
  %255 = or i1 %247, %254
  %256 = load %nyx_string*, %nyx_string** %word.ptr
  %257 = getelementptr [8 x i8], [8 x i8]* @.str32, i32 0, i32 0
  %258 = call %nyx_string* @nyx_string_from_cstr(i8* %257)
  %259 = call i8* @nyx_string_to_cstr(%nyx_string* %256)
  %260 = call i8* @nyx_string_to_cstr(%nyx_string* %258)
  %261 = call i32 @strcmp(i8* %259, i8* %260)
  %262 = icmp eq i32 %261, 0
  %263 = or i1 %255, %262
  %264 = load %nyx_string*, %nyx_string** %word.ptr
  %265 = getelementptr [4 x i8], [4 x i8]* @.str33, i32 0, i32 0
  %266 = call %nyx_string* @nyx_string_from_cstr(i8* %265)
  %267 = call i8* @nyx_string_to_cstr(%nyx_string* %264)
  %268 = call i8* @nyx_string_to_cstr(%nyx_string* %266)
  %269 = call i32 @strcmp(i8* %267, i8* %268)
  %270 = icmp eq i32 %269, 0
  %271 = or i1 %263, %270
  %272 = load %nyx_string*, %nyx_string** %word.ptr
  %273 = getelementptr [4 x i8], [4 x i8]* @.str34, i32 0, i32 0
  %274 = call %nyx_string* @nyx_string_from_cstr(i8* %273)
  %275 = call i8* @nyx_string_to_cstr(%nyx_string* %272)
  %276 = call i8* @nyx_string_to_cstr(%nyx_string* %274)
  %277 = call i32 @strcmp(i8* %275, i8* %276)
  %278 = icmp eq i32 %277, 0
  %279 = or i1 %271, %278
  %280 = load %nyx_string*, %nyx_string** %word.ptr
  %281 = getelementptr [4 x i8], [4 x i8]* @.str35, i32 0, i32 0
  %282 = call %nyx_string* @nyx_string_from_cstr(i8* %281)
  %283 = call i8* @nyx_string_to_cstr(%nyx_string* %280)
  %284 = call i8* @nyx_string_to_cstr(%nyx_string* %282)
  %285 = call i32 @strcmp(i8* %283, i8* %284)
  %286 = icmp eq i32 %285, 0
  %287 = or i1 %279, %286
  %288 = load %nyx_string*, %nyx_string** %word.ptr
  %289 = getelementptr [7 x i8], [7 x i8]* @.str36, i32 0, i32 0
  %290 = call %nyx_string* @nyx_string_from_cstr(i8* %289)
  %291 = call i8* @nyx_string_to_cstr(%nyx_string* %288)
  %292 = call i8* @nyx_string_to_cstr(%nyx_string* %290)
  %293 = call i32 @strcmp(i8* %291, i8* %292)
  %294 = icmp eq i32 %293, 0
  %295 = or i1 %287, %294
  %296 = load %nyx_string*, %nyx_string** %word.ptr
  %297 = getelementptr [6 x i8], [6 x i8]* @.str37, i32 0, i32 0
  %298 = call %nyx_string* @nyx_string_from_cstr(i8* %297)
  %299 = call i8* @nyx_string_to_cstr(%nyx_string* %296)
  %300 = call i8* @nyx_string_to_cstr(%nyx_string* %298)
  %301 = call i32 @strcmp(i8* %299, i8* %300)
  %302 = icmp eq i32 %301, 0
  %303 = or i1 %295, %302
  %304 = load %nyx_string*, %nyx_string** %word.ptr
  %305 = getelementptr [6 x i8], [6 x i8]* @.str38, i32 0, i32 0
  %306 = call %nyx_string* @nyx_string_from_cstr(i8* %305)
  %307 = call i8* @nyx_string_to_cstr(%nyx_string* %304)
  %308 = call i8* @nyx_string_to_cstr(%nyx_string* %306)
  %309 = call i32 @strcmp(i8* %307, i8* %308)
  %310 = icmp eq i32 %309, 0
  %311 = or i1 %303, %310
  %312 = load %nyx_string*, %nyx_string** %word.ptr
  %313 = getelementptr [4 x i8], [4 x i8]* @.str39, i32 0, i32 0
  %314 = call %nyx_string* @nyx_string_from_cstr(i8* %313)
  %315 = call i8* @nyx_string_to_cstr(%nyx_string* %312)
  %316 = call i8* @nyx_string_to_cstr(%nyx_string* %314)
  %317 = call i32 @strcmp(i8* %315, i8* %316)
  %318 = icmp eq i32 %317, 0
  %319 = or i1 %311, %318
  %320 = load %nyx_string*, %nyx_string** %word.ptr
  %321 = getelementptr [6 x i8], [6 x i8]* @.str40, i32 0, i32 0
  %322 = call %nyx_string* @nyx_string_from_cstr(i8* %321)
  %323 = call i8* @nyx_string_to_cstr(%nyx_string* %320)
  %324 = call i8* @nyx_string_to_cstr(%nyx_string* %322)
  %325 = call i32 @strcmp(i8* %323, i8* %324)
  %326 = icmp eq i32 %325, 0
  %327 = or i1 %319, %326
  %328 = load %nyx_string*, %nyx_string** %word.ptr
  %329 = getelementptr [6 x i8], [6 x i8]* @.str41, i32 0, i32 0
  %330 = call %nyx_string* @nyx_string_from_cstr(i8* %329)
  %331 = call i8* @nyx_string_to_cstr(%nyx_string* %328)
  %332 = call i8* @nyx_string_to_cstr(%nyx_string* %330)
  %333 = call i32 @strcmp(i8* %331, i8* %332)
  %334 = icmp eq i32 %333, 0
  %335 = or i1 %327, %334
  %336 = load %nyx_string*, %nyx_string** %word.ptr
  %337 = getelementptr [6 x i8], [6 x i8]* @.str42, i32 0, i32 0
  %338 = call %nyx_string* @nyx_string_from_cstr(i8* %337)
  %339 = call i8* @nyx_string_to_cstr(%nyx_string* %336)
  %340 = call i8* @nyx_string_to_cstr(%nyx_string* %338)
  %341 = call i32 @strcmp(i8* %339, i8* %340)
  %342 = icmp eq i32 %341, 0
  %343 = or i1 %335, %342
  %344 = load %nyx_string*, %nyx_string** %word.ptr
  %345 = getelementptr [6 x i8], [6 x i8]* @.str43, i32 0, i32 0
  %346 = call %nyx_string* @nyx_string_from_cstr(i8* %345)
  %347 = call i8* @nyx_string_to_cstr(%nyx_string* %344)
  %348 = call i8* @nyx_string_to_cstr(%nyx_string* %346)
  %349 = call i32 @strcmp(i8* %347, i8* %348)
  %350 = icmp eq i32 %349, 0
  %351 = or i1 %343, %350
  ret i1 %351
}

define internal %nyx_string* @keyword_to_type(
%nyx_string* %word.param) {
  %word.ptr = alloca %nyx_string*
  store %nyx_string* %word.param, %nyx_string** %word.ptr
  %352 = load %nyx_string*, %nyx_string** %word.ptr
  %353 = getelementptr [4 x i8], [4 x i8]* @.str44, i32 0, i32 0
  %354 = call %nyx_string* @nyx_string_from_cstr(i8* %353)
  %355 = call i8* @nyx_string_to_cstr(%nyx_string* %352)
  %356 = call i8* @nyx_string_to_cstr(%nyx_string* %354)
  %357 = call i32 @strcmp(i8* %355, i8* %356)
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %then0, label %else1
then0:
  %359 = getelementptr [4 x i8], [4 x i8]* @.str45, i32 0, i32 0
  %360 = call %nyx_string* @nyx_string_from_cstr(i8* %359)
  ret %nyx_string* %360
else1:
  br label %merge2
merge2:
  %361 = load %nyx_string*, %nyx_string** %word.ptr
  %362 = getelementptr [4 x i8], [4 x i8]* @.str46, i32 0, i32 0
  %363 = call %nyx_string* @nyx_string_from_cstr(i8* %362)
  %364 = call i8* @nyx_string_to_cstr(%nyx_string* %361)
  %365 = call i8* @nyx_string_to_cstr(%nyx_string* %363)
  %366 = call i32 @strcmp(i8* %364, i8* %365)
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %then3, label %else4
then3:
  %368 = getelementptr [4 x i8], [4 x i8]* @.str47, i32 0, i32 0
  %369 = call %nyx_string* @nyx_string_from_cstr(i8* %368)
  ret %nyx_string* %369
else4:
  br label %merge5
merge5:
  %370 = load %nyx_string*, %nyx_string** %word.ptr
  %371 = getelementptr [6 x i8], [6 x i8]* @.str48, i32 0, i32 0
  %372 = call %nyx_string* @nyx_string_from_cstr(i8* %371)
  %373 = call i8* @nyx_string_to_cstr(%nyx_string* %370)
  %374 = call i8* @nyx_string_to_cstr(%nyx_string* %372)
  %375 = call i32 @strcmp(i8* %373, i8* %374)
  %376 = icmp eq i32 %375, 0
  br i1 %376, label %then6, label %else7
then6:
  %377 = getelementptr [6 x i8], [6 x i8]* @.str49, i32 0, i32 0
  %378 = call %nyx_string* @nyx_string_from_cstr(i8* %377)
  ret %nyx_string* %378
else7:
  br label %merge8
merge8:
  %379 = load %nyx_string*, %nyx_string** %word.ptr
  %380 = getelementptr [3 x i8], [3 x i8]* @.str50, i32 0, i32 0
  %381 = call %nyx_string* @nyx_string_from_cstr(i8* %380)
  %382 = call i8* @nyx_string_to_cstr(%nyx_string* %379)
  %383 = call i8* @nyx_string_to_cstr(%nyx_string* %381)
  %384 = call i32 @strcmp(i8* %382, i8* %383)
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %then9, label %else10
then9:
  %386 = getelementptr [3 x i8], [3 x i8]* @.str51, i32 0, i32 0
  %387 = call %nyx_string* @nyx_string_from_cstr(i8* %386)
  ret %nyx_string* %387
else10:
  br label %merge11
merge11:
  %388 = load %nyx_string*, %nyx_string** %word.ptr
  %389 = getelementptr [7 x i8], [7 x i8]* @.str52, i32 0, i32 0
  %390 = call %nyx_string* @nyx_string_from_cstr(i8* %389)
  %391 = call i8* @nyx_string_to_cstr(%nyx_string* %388)
  %392 = call i8* @nyx_string_to_cstr(%nyx_string* %390)
  %393 = call i32 @strcmp(i8* %391, i8* %392)
  %394 = icmp eq i32 %393, 0
  br i1 %394, label %then12, label %else13
then12:
  %395 = getelementptr [7 x i8], [7 x i8]* @.str53, i32 0, i32 0
  %396 = call %nyx_string* @nyx_string_from_cstr(i8* %395)
  ret %nyx_string* %396
else13:
  br label %merge14
merge14:
  %397 = load %nyx_string*, %nyx_string** %word.ptr
  %398 = getelementptr [3 x i8], [3 x i8]* @.str54, i32 0, i32 0
  %399 = call %nyx_string* @nyx_string_from_cstr(i8* %398)
  %400 = call i8* @nyx_string_to_cstr(%nyx_string* %397)
  %401 = call i8* @nyx_string_to_cstr(%nyx_string* %399)
  %402 = call i32 @strcmp(i8* %400, i8* %401)
  %403 = icmp eq i32 %402, 0
  br i1 %403, label %then15, label %else16
then15:
  %404 = getelementptr [3 x i8], [3 x i8]* @.str55, i32 0, i32 0
  %405 = call %nyx_string* @nyx_string_from_cstr(i8* %404)
  ret %nyx_string* %405
else16:
  br label %merge17
merge17:
  %406 = load %nyx_string*, %nyx_string** %word.ptr
  %407 = getelementptr [5 x i8], [5 x i8]* @.str56, i32 0, i32 0
  %408 = call %nyx_string* @nyx_string_from_cstr(i8* %407)
  %409 = call i8* @nyx_string_to_cstr(%nyx_string* %406)
  %410 = call i8* @nyx_string_to_cstr(%nyx_string* %408)
  %411 = call i32 @strcmp(i8* %409, i8* %410)
  %412 = icmp eq i32 %411, 0
  br i1 %412, label %then18, label %else19
then18:
  %413 = getelementptr [5 x i8], [5 x i8]* @.str57, i32 0, i32 0
  %414 = call %nyx_string* @nyx_string_from_cstr(i8* %413)
  ret %nyx_string* %414
else19:
  br label %merge20
merge20:
  %415 = load %nyx_string*, %nyx_string** %word.ptr
  %416 = getelementptr [6 x i8], [6 x i8]* @.str58, i32 0, i32 0
  %417 = call %nyx_string* @nyx_string_from_cstr(i8* %416)
  %418 = call i8* @nyx_string_to_cstr(%nyx_string* %415)
  %419 = call i8* @nyx_string_to_cstr(%nyx_string* %417)
  %420 = call i32 @strcmp(i8* %418, i8* %419)
  %421 = icmp eq i32 %420, 0
  br i1 %421, label %then21, label %else22
then21:
  %422 = getelementptr [6 x i8], [6 x i8]* @.str59, i32 0, i32 0
  %423 = call %nyx_string* @nyx_string_from_cstr(i8* %422)
  ret %nyx_string* %423
else22:
  br label %merge23
merge23:
  %424 = load %nyx_string*, %nyx_string** %word.ptr
  %425 = getelementptr [4 x i8], [4 x i8]* @.str60, i32 0, i32 0
  %426 = call %nyx_string* @nyx_string_from_cstr(i8* %425)
  %427 = call i8* @nyx_string_to_cstr(%nyx_string* %424)
  %428 = call i8* @nyx_string_to_cstr(%nyx_string* %426)
  %429 = call i32 @strcmp(i8* %427, i8* %428)
  %430 = icmp eq i32 %429, 0
  br i1 %430, label %then24, label %else25
then24:
  %431 = getelementptr [4 x i8], [4 x i8]* @.str61, i32 0, i32 0
  %432 = call %nyx_string* @nyx_string_from_cstr(i8* %431)
  ret %nyx_string* %432
else25:
  br label %merge26
merge26:
  %433 = load %nyx_string*, %nyx_string** %word.ptr
  %434 = getelementptr [3 x i8], [3 x i8]* @.str62, i32 0, i32 0
  %435 = call %nyx_string* @nyx_string_from_cstr(i8* %434)
  %436 = call i8* @nyx_string_to_cstr(%nyx_string* %433)
  %437 = call i8* @nyx_string_to_cstr(%nyx_string* %435)
  %438 = call i32 @strcmp(i8* %436, i8* %437)
  %439 = icmp eq i32 %438, 0
  br i1 %439, label %then27, label %else28
then27:
  %440 = getelementptr [3 x i8], [3 x i8]* @.str63, i32 0, i32 0
  %441 = call %nyx_string* @nyx_string_from_cstr(i8* %440)
  ret %nyx_string* %441
else28:
  br label %merge29
merge29:
  %442 = load %nyx_string*, %nyx_string** %word.ptr
  %443 = getelementptr [6 x i8], [6 x i8]* @.str64, i32 0, i32 0
  %444 = call %nyx_string* @nyx_string_from_cstr(i8* %443)
  %445 = call i8* @nyx_string_to_cstr(%nyx_string* %442)
  %446 = call i8* @nyx_string_to_cstr(%nyx_string* %444)
  %447 = call i32 @strcmp(i8* %445, i8* %446)
  %448 = icmp eq i32 %447, 0
  br i1 %448, label %then30, label %else31
then30:
  %449 = getelementptr [6 x i8], [6 x i8]* @.str65, i32 0, i32 0
  %450 = call %nyx_string* @nyx_string_from_cstr(i8* %449)
  ret %nyx_string* %450
else31:
  br label %merge32
merge32:
  %451 = load %nyx_string*, %nyx_string** %word.ptr
  %452 = getelementptr [9 x i8], [9 x i8]* @.str66, i32 0, i32 0
  %453 = call %nyx_string* @nyx_string_from_cstr(i8* %452)
  %454 = call i8* @nyx_string_to_cstr(%nyx_string* %451)
  %455 = call i8* @nyx_string_to_cstr(%nyx_string* %453)
  %456 = call i32 @strcmp(i8* %454, i8* %455)
  %457 = icmp eq i32 %456, 0
  br i1 %457, label %then33, label %else34
then33:
  %458 = getelementptr [9 x i8], [9 x i8]* @.str67, i32 0, i32 0
  %459 = call %nyx_string* @nyx_string_from_cstr(i8* %458)
  ret %nyx_string* %459
else34:
  br label %merge35
merge35:
  %460 = load %nyx_string*, %nyx_string** %word.ptr
  %461 = getelementptr [7 x i8], [7 x i8]* @.str68, i32 0, i32 0
  %462 = call %nyx_string* @nyx_string_from_cstr(i8* %461)
  %463 = call i8* @nyx_string_to_cstr(%nyx_string* %460)
  %464 = call i8* @nyx_string_to_cstr(%nyx_string* %462)
  %465 = call i32 @strcmp(i8* %463, i8* %464)
  %466 = icmp eq i32 %465, 0
  br i1 %466, label %then36, label %else37
then36:
  %467 = getelementptr [7 x i8], [7 x i8]* @.str69, i32 0, i32 0
  %468 = call %nyx_string* @nyx_string_from_cstr(i8* %467)
  ret %nyx_string* %468
else37:
  br label %merge38
merge38:
  %469 = load %nyx_string*, %nyx_string** %word.ptr
  %470 = getelementptr [5 x i8], [5 x i8]* @.str70, i32 0, i32 0
  %471 = call %nyx_string* @nyx_string_from_cstr(i8* %470)
  %472 = call i8* @nyx_string_to_cstr(%nyx_string* %469)
  %473 = call i8* @nyx_string_to_cstr(%nyx_string* %471)
  %474 = call i32 @strcmp(i8* %472, i8* %473)
  %475 = icmp eq i32 %474, 0
  br i1 %475, label %then39, label %else40
then39:
  %476 = getelementptr [5 x i8], [5 x i8]* @.str71, i32 0, i32 0
  %477 = call %nyx_string* @nyx_string_from_cstr(i8* %476)
  ret %nyx_string* %477
else40:
  br label %merge41
merge41:
  %478 = load %nyx_string*, %nyx_string** %word.ptr
  %479 = getelementptr [6 x i8], [6 x i8]* @.str72, i32 0, i32 0
  %480 = call %nyx_string* @nyx_string_from_cstr(i8* %479)
  %481 = call i8* @nyx_string_to_cstr(%nyx_string* %478)
  %482 = call i8* @nyx_string_to_cstr(%nyx_string* %480)
  %483 = call i32 @strcmp(i8* %481, i8* %482)
  %484 = icmp eq i32 %483, 0
  br i1 %484, label %then42, label %else43
then42:
  %485 = getelementptr [6 x i8], [6 x i8]* @.str73, i32 0, i32 0
  %486 = call %nyx_string* @nyx_string_from_cstr(i8* %485)
  ret %nyx_string* %486
else43:
  br label %merge44
merge44:
  %487 = load %nyx_string*, %nyx_string** %word.ptr
  %488 = getelementptr [7 x i8], [7 x i8]* @.str74, i32 0, i32 0
  %489 = call %nyx_string* @nyx_string_from_cstr(i8* %488)
  %490 = call i8* @nyx_string_to_cstr(%nyx_string* %487)
  %491 = call i8* @nyx_string_to_cstr(%nyx_string* %489)
  %492 = call i32 @strcmp(i8* %490, i8* %491)
  %493 = icmp eq i32 %492, 0
  br i1 %493, label %then45, label %else46
then45:
  %494 = getelementptr [7 x i8], [7 x i8]* @.str75, i32 0, i32 0
  %495 = call %nyx_string* @nyx_string_from_cstr(i8* %494)
  ret %nyx_string* %495
else46:
  br label %merge47
merge47:
  %496 = load %nyx_string*, %nyx_string** %word.ptr
  %497 = getelementptr [7 x i8], [7 x i8]* @.str76, i32 0, i32 0
  %498 = call %nyx_string* @nyx_string_from_cstr(i8* %497)
  %499 = call i8* @nyx_string_to_cstr(%nyx_string* %496)
  %500 = call i8* @nyx_string_to_cstr(%nyx_string* %498)
  %501 = call i32 @strcmp(i8* %499, i8* %500)
  %502 = icmp eq i32 %501, 0
  br i1 %502, label %then48, label %else49
then48:
  %503 = getelementptr [7 x i8], [7 x i8]* @.str77, i32 0, i32 0
  %504 = call %nyx_string* @nyx_string_from_cstr(i8* %503)
  ret %nyx_string* %504
else49:
  br label %merge50
merge50:
  %505 = load %nyx_string*, %nyx_string** %word.ptr
  %506 = getelementptr [5 x i8], [5 x i8]* @.str78, i32 0, i32 0
  %507 = call %nyx_string* @nyx_string_from_cstr(i8* %506)
  %508 = call i8* @nyx_string_to_cstr(%nyx_string* %505)
  %509 = call i8* @nyx_string_to_cstr(%nyx_string* %507)
  %510 = call i32 @strcmp(i8* %508, i8* %509)
  %511 = icmp eq i32 %510, 0
  br i1 %511, label %then51, label %else52
then51:
  %512 = getelementptr [5 x i8], [5 x i8]* @.str79, i32 0, i32 0
  %513 = call %nyx_string* @nyx_string_from_cstr(i8* %512)
  ret %nyx_string* %513
else52:
  br label %merge53
merge53:
  %514 = load %nyx_string*, %nyx_string** %word.ptr
  %515 = getelementptr [5 x i8], [5 x i8]* @.str80, i32 0, i32 0
  %516 = call %nyx_string* @nyx_string_from_cstr(i8* %515)
  %517 = call i8* @nyx_string_to_cstr(%nyx_string* %514)
  %518 = call i8* @nyx_string_to_cstr(%nyx_string* %516)
  %519 = call i32 @strcmp(i8* %517, i8* %518)
  %520 = icmp eq i32 %519, 0
  br i1 %520, label %then54, label %else55
then54:
  %521 = getelementptr [5 x i8], [5 x i8]* @.str81, i32 0, i32 0
  %522 = call %nyx_string* @nyx_string_from_cstr(i8* %521)
  ret %nyx_string* %522
else55:
  br label %merge56
merge56:
  %523 = load %nyx_string*, %nyx_string** %word.ptr
  %524 = getelementptr [6 x i8], [6 x i8]* @.str82, i32 0, i32 0
  %525 = call %nyx_string* @nyx_string_from_cstr(i8* %524)
  %526 = call i8* @nyx_string_to_cstr(%nyx_string* %523)
  %527 = call i8* @nyx_string_to_cstr(%nyx_string* %525)
  %528 = call i32 @strcmp(i8* %526, i8* %527)
  %529 = icmp eq i32 %528, 0
  br i1 %529, label %then57, label %else58
then57:
  %530 = getelementptr [6 x i8], [6 x i8]* @.str83, i32 0, i32 0
  %531 = call %nyx_string* @nyx_string_from_cstr(i8* %530)
  ret %nyx_string* %531
else58:
  br label %merge59
merge59:
  %532 = load %nyx_string*, %nyx_string** %word.ptr
  %533 = getelementptr [4 x i8], [4 x i8]* @.str84, i32 0, i32 0
  %534 = call %nyx_string* @nyx_string_from_cstr(i8* %533)
  %535 = call i8* @nyx_string_to_cstr(%nyx_string* %532)
  %536 = call i8* @nyx_string_to_cstr(%nyx_string* %534)
  %537 = call i32 @strcmp(i8* %535, i8* %536)
  %538 = icmp eq i32 %537, 0
  br i1 %538, label %then60, label %else61
then60:
  %539 = getelementptr [4 x i8], [4 x i8]* @.str85, i32 0, i32 0
  %540 = call %nyx_string* @nyx_string_from_cstr(i8* %539)
  ret %nyx_string* %540
else61:
  br label %merge62
merge62:
  %541 = load %nyx_string*, %nyx_string** %word.ptr
  %542 = getelementptr [3 x i8], [3 x i8]* @.str86, i32 0, i32 0
  %543 = call %nyx_string* @nyx_string_from_cstr(i8* %542)
  %544 = call i8* @nyx_string_to_cstr(%nyx_string* %541)
  %545 = call i8* @nyx_string_to_cstr(%nyx_string* %543)
  %546 = call i32 @strcmp(i8* %544, i8* %545)
  %547 = icmp eq i32 %546, 0
  br i1 %547, label %then63, label %else64
then63:
  %548 = getelementptr [3 x i8], [3 x i8]* @.str87, i32 0, i32 0
  %549 = call %nyx_string* @nyx_string_from_cstr(i8* %548)
  ret %nyx_string* %549
else64:
  br label %merge65
merge65:
  %550 = load %nyx_string*, %nyx_string** %word.ptr
  %551 = getelementptr [4 x i8], [4 x i8]* @.str88, i32 0, i32 0
  %552 = call %nyx_string* @nyx_string_from_cstr(i8* %551)
  %553 = call i8* @nyx_string_to_cstr(%nyx_string* %550)
  %554 = call i8* @nyx_string_to_cstr(%nyx_string* %552)
  %555 = call i32 @strcmp(i8* %553, i8* %554)
  %556 = icmp eq i32 %555, 0
  br i1 %556, label %then66, label %else67
then66:
  %557 = getelementptr [4 x i8], [4 x i8]* @.str89, i32 0, i32 0
  %558 = call %nyx_string* @nyx_string_from_cstr(i8* %557)
  ret %nyx_string* %558
else67:
  br label %merge68
merge68:
  %559 = load %nyx_string*, %nyx_string** %word.ptr
  %560 = getelementptr [5 x i8], [5 x i8]* @.str90, i32 0, i32 0
  %561 = call %nyx_string* @nyx_string_from_cstr(i8* %560)
  %562 = call i8* @nyx_string_to_cstr(%nyx_string* %559)
  %563 = call i8* @nyx_string_to_cstr(%nyx_string* %561)
  %564 = call i32 @strcmp(i8* %562, i8* %563)
  %565 = icmp eq i32 %564, 0
  br i1 %565, label %then69, label %else70
then69:
  %566 = getelementptr [5 x i8], [5 x i8]* @.str91, i32 0, i32 0
  %567 = call %nyx_string* @nyx_string_from_cstr(i8* %566)
  ret %nyx_string* %567
else70:
  br label %merge71
merge71:
  %568 = load %nyx_string*, %nyx_string** %word.ptr
  %569 = getelementptr [6 x i8], [6 x i8]* @.str92, i32 0, i32 0
  %570 = call %nyx_string* @nyx_string_from_cstr(i8* %569)
  %571 = call i8* @nyx_string_to_cstr(%nyx_string* %568)
  %572 = call i8* @nyx_string_to_cstr(%nyx_string* %570)
  %573 = call i32 @strcmp(i8* %571, i8* %572)
  %574 = icmp eq i32 %573, 0
  br i1 %574, label %then72, label %else73
then72:
  %575 = getelementptr [6 x i8], [6 x i8]* @.str93, i32 0, i32 0
  %576 = call %nyx_string* @nyx_string_from_cstr(i8* %575)
  ret %nyx_string* %576
else73:
  br label %merge74
merge74:
  %577 = load %nyx_string*, %nyx_string** %word.ptr
  %578 = getelementptr [5 x i8], [5 x i8]* @.str94, i32 0, i32 0
  %579 = call %nyx_string* @nyx_string_from_cstr(i8* %578)
  %580 = call i8* @nyx_string_to_cstr(%nyx_string* %577)
  %581 = call i8* @nyx_string_to_cstr(%nyx_string* %579)
  %582 = call i32 @strcmp(i8* %580, i8* %581)
  %583 = icmp eq i32 %582, 0
  br i1 %583, label %then75, label %else76
then75:
  %584 = getelementptr [5 x i8], [5 x i8]* @.str95, i32 0, i32 0
  %585 = call %nyx_string* @nyx_string_from_cstr(i8* %584)
  ret %nyx_string* %585
else76:
  br label %merge77
merge77:
  %586 = load %nyx_string*, %nyx_string** %word.ptr
  %587 = getelementptr [7 x i8], [7 x i8]* @.str96, i32 0, i32 0
  %588 = call %nyx_string* @nyx_string_from_cstr(i8* %587)
  %589 = call i8* @nyx_string_to_cstr(%nyx_string* %586)
  %590 = call i8* @nyx_string_to_cstr(%nyx_string* %588)
  %591 = call i32 @strcmp(i8* %589, i8* %590)
  %592 = icmp eq i32 %591, 0
  br i1 %592, label %then78, label %else79
then78:
  %593 = getelementptr [7 x i8], [7 x i8]* @.str97, i32 0, i32 0
  %594 = call %nyx_string* @nyx_string_from_cstr(i8* %593)
  ret %nyx_string* %594
else79:
  br label %merge80
merge80:
  %595 = load %nyx_string*, %nyx_string** %word.ptr
  %596 = getelementptr [7 x i8], [7 x i8]* @.str98, i32 0, i32 0
  %597 = call %nyx_string* @nyx_string_from_cstr(i8* %596)
  %598 = call i8* @nyx_string_to_cstr(%nyx_string* %595)
  %599 = call i8* @nyx_string_to_cstr(%nyx_string* %597)
  %600 = call i32 @strcmp(i8* %598, i8* %599)
  %601 = icmp eq i32 %600, 0
  br i1 %601, label %then81, label %else82
then81:
  %602 = getelementptr [7 x i8], [7 x i8]* @.str99, i32 0, i32 0
  %603 = call %nyx_string* @nyx_string_from_cstr(i8* %602)
  ret %nyx_string* %603
else82:
  br label %merge83
merge83:
  %604 = load %nyx_string*, %nyx_string** %word.ptr
  %605 = getelementptr [3 x i8], [3 x i8]* @.str100, i32 0, i32 0
  %606 = call %nyx_string* @nyx_string_from_cstr(i8* %605)
  %607 = call i8* @nyx_string_to_cstr(%nyx_string* %604)
  %608 = call i8* @nyx_string_to_cstr(%nyx_string* %606)
  %609 = call i32 @strcmp(i8* %607, i8* %608)
  %610 = icmp eq i32 %609, 0
  br i1 %610, label %then84, label %else85
then84:
  %611 = getelementptr [3 x i8], [3 x i8]* @.str101, i32 0, i32 0
  %612 = call %nyx_string* @nyx_string_from_cstr(i8* %611)
  ret %nyx_string* %612
else85:
  br label %merge86
merge86:
  %613 = load %nyx_string*, %nyx_string** %word.ptr
  %614 = getelementptr [7 x i8], [7 x i8]* @.str102, i32 0, i32 0
  %615 = call %nyx_string* @nyx_string_from_cstr(i8* %614)
  %616 = call i8* @nyx_string_to_cstr(%nyx_string* %613)
  %617 = call i8* @nyx_string_to_cstr(%nyx_string* %615)
  %618 = call i32 @strcmp(i8* %616, i8* %617)
  %619 = icmp eq i32 %618, 0
  br i1 %619, label %then87, label %else88
then87:
  %620 = getelementptr [7 x i8], [7 x i8]* @.str103, i32 0, i32 0
  %621 = call %nyx_string* @nyx_string_from_cstr(i8* %620)
  ret %nyx_string* %621
else88:
  br label %merge89
merge89:
  %622 = load %nyx_string*, %nyx_string** %word.ptr
  %623 = getelementptr [7 x i8], [7 x i8]* @.str104, i32 0, i32 0
  %624 = call %nyx_string* @nyx_string_from_cstr(i8* %623)
  %625 = call i8* @nyx_string_to_cstr(%nyx_string* %622)
  %626 = call i8* @nyx_string_to_cstr(%nyx_string* %624)
  %627 = call i32 @strcmp(i8* %625, i8* %626)
  %628 = icmp eq i32 %627, 0
  br i1 %628, label %then90, label %else91
then90:
  %629 = getelementptr [7 x i8], [7 x i8]* @.str105, i32 0, i32 0
  %630 = call %nyx_string* @nyx_string_from_cstr(i8* %629)
  ret %nyx_string* %630
else91:
  br label %merge92
merge92:
  %631 = load %nyx_string*, %nyx_string** %word.ptr
  %632 = getelementptr [7 x i8], [7 x i8]* @.str106, i32 0, i32 0
  %633 = call %nyx_string* @nyx_string_from_cstr(i8* %632)
  %634 = call i8* @nyx_string_to_cstr(%nyx_string* %631)
  %635 = call i8* @nyx_string_to_cstr(%nyx_string* %633)
  %636 = call i32 @strcmp(i8* %634, i8* %635)
  %637 = icmp eq i32 %636, 0
  br i1 %637, label %then93, label %else94
then93:
  %638 = getelementptr [7 x i8], [7 x i8]* @.str107, i32 0, i32 0
  %639 = call %nyx_string* @nyx_string_from_cstr(i8* %638)
  ret %nyx_string* %639
else94:
  br label %merge95
merge95:
  %640 = load %nyx_string*, %nyx_string** %word.ptr
  %641 = getelementptr [8 x i8], [8 x i8]* @.str108, i32 0, i32 0
  %642 = call %nyx_string* @nyx_string_from_cstr(i8* %641)
  %643 = call i8* @nyx_string_to_cstr(%nyx_string* %640)
  %644 = call i8* @nyx_string_to_cstr(%nyx_string* %642)
  %645 = call i32 @strcmp(i8* %643, i8* %644)
  %646 = icmp eq i32 %645, 0
  br i1 %646, label %then96, label %else97
then96:
  %647 = getelementptr [8 x i8], [8 x i8]* @.str109, i32 0, i32 0
  %648 = call %nyx_string* @nyx_string_from_cstr(i8* %647)
  ret %nyx_string* %648
else97:
  br label %merge98
merge98:
  %649 = load %nyx_string*, %nyx_string** %word.ptr
  %650 = getelementptr [4 x i8], [4 x i8]* @.str110, i32 0, i32 0
  %651 = call %nyx_string* @nyx_string_from_cstr(i8* %650)
  %652 = call i8* @nyx_string_to_cstr(%nyx_string* %649)
  %653 = call i8* @nyx_string_to_cstr(%nyx_string* %651)
  %654 = call i32 @strcmp(i8* %652, i8* %653)
  %655 = icmp eq i32 %654, 0
  br i1 %655, label %then99, label %else100
then99:
  %656 = getelementptr [4 x i8], [4 x i8]* @.str111, i32 0, i32 0
  %657 = call %nyx_string* @nyx_string_from_cstr(i8* %656)
  ret %nyx_string* %657
else100:
  br label %merge101
merge101:
  %658 = load %nyx_string*, %nyx_string** %word.ptr
  %659 = getelementptr [4 x i8], [4 x i8]* @.str112, i32 0, i32 0
  %660 = call %nyx_string* @nyx_string_from_cstr(i8* %659)
  %661 = call i8* @nyx_string_to_cstr(%nyx_string* %658)
  %662 = call i8* @nyx_string_to_cstr(%nyx_string* %660)
  %663 = call i32 @strcmp(i8* %661, i8* %662)
  %664 = icmp eq i32 %663, 0
  br i1 %664, label %then102, label %else103
then102:
  %665 = getelementptr [4 x i8], [4 x i8]* @.str113, i32 0, i32 0
  %666 = call %nyx_string* @nyx_string_from_cstr(i8* %665)
  ret %nyx_string* %666
else103:
  br label %merge104
merge104:
  %667 = load %nyx_string*, %nyx_string** %word.ptr
  %668 = getelementptr [4 x i8], [4 x i8]* @.str114, i32 0, i32 0
  %669 = call %nyx_string* @nyx_string_from_cstr(i8* %668)
  %670 = call i8* @nyx_string_to_cstr(%nyx_string* %667)
  %671 = call i8* @nyx_string_to_cstr(%nyx_string* %669)
  %672 = call i32 @strcmp(i8* %670, i8* %671)
  %673 = icmp eq i32 %672, 0
  br i1 %673, label %then105, label %else106
then105:
  %674 = getelementptr [4 x i8], [4 x i8]* @.str115, i32 0, i32 0
  %675 = call %nyx_string* @nyx_string_from_cstr(i8* %674)
  ret %nyx_string* %675
else106:
  br label %merge107
merge107:
  %676 = load %nyx_string*, %nyx_string** %word.ptr
  %677 = getelementptr [7 x i8], [7 x i8]* @.str116, i32 0, i32 0
  %678 = call %nyx_string* @nyx_string_from_cstr(i8* %677)
  %679 = call i8* @nyx_string_to_cstr(%nyx_string* %676)
  %680 = call i8* @nyx_string_to_cstr(%nyx_string* %678)
  %681 = call i32 @strcmp(i8* %679, i8* %680)
  %682 = icmp eq i32 %681, 0
  br i1 %682, label %then108, label %else109
then108:
  %683 = getelementptr [7 x i8], [7 x i8]* @.str117, i32 0, i32 0
  %684 = call %nyx_string* @nyx_string_from_cstr(i8* %683)
  ret %nyx_string* %684
else109:
  br label %merge110
merge110:
  %685 = load %nyx_string*, %nyx_string** %word.ptr
  %686 = getelementptr [6 x i8], [6 x i8]* @.str118, i32 0, i32 0
  %687 = call %nyx_string* @nyx_string_from_cstr(i8* %686)
  %688 = call i8* @nyx_string_to_cstr(%nyx_string* %685)
  %689 = call i8* @nyx_string_to_cstr(%nyx_string* %687)
  %690 = call i32 @strcmp(i8* %688, i8* %689)
  %691 = icmp eq i32 %690, 0
  br i1 %691, label %then111, label %else112
then111:
  %692 = getelementptr [6 x i8], [6 x i8]* @.str119, i32 0, i32 0
  %693 = call %nyx_string* @nyx_string_from_cstr(i8* %692)
  ret %nyx_string* %693
else112:
  br label %merge113
merge113:
  %694 = load %nyx_string*, %nyx_string** %word.ptr
  %695 = getelementptr [6 x i8], [6 x i8]* @.str120, i32 0, i32 0
  %696 = call %nyx_string* @nyx_string_from_cstr(i8* %695)
  %697 = call i8* @nyx_string_to_cstr(%nyx_string* %694)
  %698 = call i8* @nyx_string_to_cstr(%nyx_string* %696)
  %699 = call i32 @strcmp(i8* %697, i8* %698)
  %700 = icmp eq i32 %699, 0
  br i1 %700, label %then114, label %else115
then114:
  %701 = getelementptr [6 x i8], [6 x i8]* @.str121, i32 0, i32 0
  %702 = call %nyx_string* @nyx_string_from_cstr(i8* %701)
  ret %nyx_string* %702
else115:
  br label %merge116
merge116:
  %703 = load %nyx_string*, %nyx_string** %word.ptr
  %704 = getelementptr [4 x i8], [4 x i8]* @.str122, i32 0, i32 0
  %705 = call %nyx_string* @nyx_string_from_cstr(i8* %704)
  %706 = call i8* @nyx_string_to_cstr(%nyx_string* %703)
  %707 = call i8* @nyx_string_to_cstr(%nyx_string* %705)
  %708 = call i32 @strcmp(i8* %706, i8* %707)
  %709 = icmp eq i32 %708, 0
  br i1 %709, label %then117, label %else118
then117:
  %710 = getelementptr [4 x i8], [4 x i8]* @.str123, i32 0, i32 0
  %711 = call %nyx_string* @nyx_string_from_cstr(i8* %710)
  ret %nyx_string* %711
else118:
  br label %merge119
merge119:
  %712 = load %nyx_string*, %nyx_string** %word.ptr
  %713 = getelementptr [6 x i8], [6 x i8]* @.str124, i32 0, i32 0
  %714 = call %nyx_string* @nyx_string_from_cstr(i8* %713)
  %715 = call i8* @nyx_string_to_cstr(%nyx_string* %712)
  %716 = call i8* @nyx_string_to_cstr(%nyx_string* %714)
  %717 = call i32 @strcmp(i8* %715, i8* %716)
  %718 = icmp eq i32 %717, 0
  br i1 %718, label %then120, label %else121
then120:
  %719 = getelementptr [6 x i8], [6 x i8]* @.str125, i32 0, i32 0
  %720 = call %nyx_string* @nyx_string_from_cstr(i8* %719)
  ret %nyx_string* %720
else121:
  br label %merge122
merge122:
  %721 = load %nyx_string*, %nyx_string** %word.ptr
  %722 = getelementptr [6 x i8], [6 x i8]* @.str126, i32 0, i32 0
  %723 = call %nyx_string* @nyx_string_from_cstr(i8* %722)
  %724 = call i8* @nyx_string_to_cstr(%nyx_string* %721)
  %725 = call i8* @nyx_string_to_cstr(%nyx_string* %723)
  %726 = call i32 @strcmp(i8* %724, i8* %725)
  %727 = icmp eq i32 %726, 0
  br i1 %727, label %then123, label %else124
then123:
  %728 = getelementptr [6 x i8], [6 x i8]* @.str127, i32 0, i32 0
  %729 = call %nyx_string* @nyx_string_from_cstr(i8* %728)
  ret %nyx_string* %729
else124:
  br label %merge125
merge125:
  %730 = load %nyx_string*, %nyx_string** %word.ptr
  %731 = getelementptr [6 x i8], [6 x i8]* @.str128, i32 0, i32 0
  %732 = call %nyx_string* @nyx_string_from_cstr(i8* %731)
  %733 = call i8* @nyx_string_to_cstr(%nyx_string* %730)
  %734 = call i8* @nyx_string_to_cstr(%nyx_string* %732)
  %735 = call i32 @strcmp(i8* %733, i8* %734)
  %736 = icmp eq i32 %735, 0
  br i1 %736, label %then126, label %else127
then126:
  %737 = getelementptr [6 x i8], [6 x i8]* @.str129, i32 0, i32 0
  %738 = call %nyx_string* @nyx_string_from_cstr(i8* %737)
  ret %nyx_string* %738
else127:
  br label %merge128
merge128:
  %739 = load %nyx_string*, %nyx_string** %word.ptr
  %740 = getelementptr [6 x i8], [6 x i8]* @.str130, i32 0, i32 0
  %741 = call %nyx_string* @nyx_string_from_cstr(i8* %740)
  %742 = call i8* @nyx_string_to_cstr(%nyx_string* %739)
  %743 = call i8* @nyx_string_to_cstr(%nyx_string* %741)
  %744 = call i32 @strcmp(i8* %742, i8* %743)
  %745 = icmp eq i32 %744, 0
  br i1 %745, label %then129, label %else130
then129:
  %746 = getelementptr [6 x i8], [6 x i8]* @.str131, i32 0, i32 0
  %747 = call %nyx_string* @nyx_string_from_cstr(i8* %746)
  ret %nyx_string* %747
else130:
  br label %merge131
merge131:
  %748 = getelementptr [8 x i8], [8 x i8]* @.str132, i32 0, i32 0
  %749 = call %nyx_string* @nyx_string_from_cstr(i8* %748)
  ret %nyx_string* %749
}

%SharedEnv_tokenize = type { %nyx_string*, %nyx_string*, i64, i64, i64, { i64, i8* }*, i64 }
define { i64, i8* }* @tokenize(
%nyx_string* %source_code.param) {
  %750 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* null, i32 1
  %751 = ptrtoint %SharedEnv_tokenize* %750 to i64
  %752 = call i8* @GC_malloc(i64 %751)
  %753 = bitcast i8* %752 to %SharedEnv_tokenize*
  %754 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %753, i32 0, i32 0
  store %nyx_string* %source_code.param, %nyx_string** %754
  %755 = load %nyx_string*, %nyx_string** %754
  %756 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %753, i32 0, i32 1
  store %nyx_string* %755, %nyx_string** %756
  %757 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %753, i32 0, i32 2
  store i64 0, i64* %757
  %758 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %753, i32 0, i32 3
  store i64 1, i64* %758
  %759 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %753, i32 0, i32 4
  store i64 1, i64* %759
  %760 = call { i64, i8* }* @nyx_array_new_ptr()
  %761 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %753, i32 0, i32 5
  store { i64, i8* }* %760, { i64, i8* }** %761
  %762 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %753, i32 0, i32 6
  store i64 0, i64* %762
  %763 = alloca i1
  store i1 0, i1* %763
  br label %while_cond132
while_cond132:
  %764 = load i1, i1* %763
  %765 = xor i1 %764, true
  br i1 %765, label %while_body133, label %while_end134
while_body133:
  %766 = call i1 @at_end(%SharedEnv_tokenize* %753)
  br i1 %766, label %then135, label %else136
then135:
  store i1 1, i1* %763
  br label %merge137
else136:
  %767 = call i64 @scan_token(%SharedEnv_tokenize* %753)
  br label %merge137
merge137:
  br label %while_cond132
while_end134:
  %768 = getelementptr [4 x i8], [4 x i8]* @.str133, i32 0, i32 0
  %769 = call %nyx_string* @nyx_string_from_cstr(i8* %768)
  %770 = getelementptr [1 x i8], [1 x i8]* @.str134, i32 0, i32 0
  %771 = call %nyx_string* @nyx_string_from_cstr(i8* %770)
  %772 = call i64 @add_token(%SharedEnv_tokenize* %753, %nyx_string* %769, %nyx_string* %771)
  %773 = load { i64, i8* }*, { i64, i8* }** %761
  ret { i64, i8* }* %773
}

define internal i8 @peek(%SharedEnv_tokenize* %env.param) {
  %1 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 6
  %8 = load i64, i64* %3
  %9 = load %nyx_string*, %nyx_string** %2
  %10 = call i64 @nyx_string_byte_length(%nyx_string* %9)
  %11 = icmp slt i64 %8, %10
  br i1 %11, label %then0, label %else1
then0:
  %12 = load %nyx_string*, %nyx_string** %2
  %13 = load i64, i64* %3
  %14 = call i8 @nyx_string_char_at(%nyx_string* %12, i64 %13)
  %15 = zext i8 %14 to i64
  %16 = trunc i64 %15 to i8
  ret i8 %16
else1:
  br label %merge2
merge2:
  %17 = getelementptr [1 x i8], [1 x i8]* @.str135, i32 0, i32 0
  %18 = load i8, i8* %17
  %19 = zext i8 %18 to i64
  %20 = trunc i64 %19 to i8
  ret i8 %20
}

define internal i8 @peek_next(%SharedEnv_tokenize* %env.param) {
  %1 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 6
  %8 = load i64, i64* %3
  %9 = add i64 %8, 1
  %10 = alloca i64
  store i64 %9, i64* %10
  %11 = load i64, i64* %10
  %12 = load %nyx_string*, %nyx_string** %2
  %13 = call i64 @nyx_string_byte_length(%nyx_string* %12)
  %14 = icmp slt i64 %11, %13
  br i1 %14, label %then0, label %else1
then0:
  %15 = load %nyx_string*, %nyx_string** %2
  %16 = load i64, i64* %10
  %17 = call i8 @nyx_string_char_at(%nyx_string* %15, i64 %16)
  %18 = zext i8 %17 to i64
  %19 = trunc i64 %18 to i8
  ret i8 %19
else1:
  br label %merge2
merge2:
  %20 = getelementptr [1 x i8], [1 x i8]* @.str136, i32 0, i32 0
  %21 = load i8, i8* %20
  %22 = zext i8 %21 to i64
  %23 = trunc i64 %22 to i8
  ret i8 %23
}

define internal i8 @advance(%SharedEnv_tokenize* %env.param) {
  %1 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 6
  %8 = call i8 @peek(%SharedEnv_tokenize* %env.param)
  %9 = alloca i8
  store i8 %8, i8* %9
  %10 = load i64, i64* %3
  %11 = add i64 %10, 1
  store i64 %11, i64* %3
  %12 = load i8, i8* %9
  %13 = getelementptr [1 x i8], [1 x i8]* @.str137, i32 0, i32 0
  %14 = load i8, i8* %13
  %15 = zext i8 %14 to i64
  %16 = zext i8 %12 to i64
  %17 = icmp eq i64 %16, %15
  br i1 %17, label %then0, label %else1
then0:
  %18 = load i64, i64* %4
  %19 = add i64 %18, 1
  store i64 %19, i64* %4
  store i64 1, i64* %5
  br label %merge2
else1:
  %20 = load i64, i64* %5
  %21 = add i64 %20, 1
  store i64 %21, i64* %5
  br label %merge2
merge2:
  %22 = load i8, i8* %9
  ret i8 %22
}

define internal i1 @at_end(%SharedEnv_tokenize* %env.param) {
  %1 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 6
  %8 = load i64, i64* %3
  %9 = load %nyx_string*, %nyx_string** %2
  %10 = call i64 @nyx_string_byte_length(%nyx_string* %9)
  %11 = icmp sge i64 %8, %10
  ret i1 %11
}

define internal i64 @add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %type.param, %nyx_string* %value.param) {
  %1 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 6
  %8 = alloca %nyx_string*
  store %nyx_string* %type.param, %nyx_string** %8
  %9 = alloca %nyx_string*
  store %nyx_string* %value.param, %nyx_string** %9
  %10 = getelementptr %Token, %Token* null, i32 1
  %11 = ptrtoint %Token* %10 to i64
  %12 = call i8* @GC_malloc(i64 %11)
  %13 = bitcast i8* %12 to %Token*
  %14 = load %nyx_string*, %nyx_string** %8
  %15 = getelementptr %Token, %Token* %13, i32 0, i32 0
  store %nyx_string* %14, %nyx_string** %15
  %16 = load %nyx_string*, %nyx_string** %9
  %17 = getelementptr %Token, %Token* %13, i32 0, i32 1
  store %nyx_string* %16, %nyx_string** %17
  %18 = load i64, i64* %4
  %19 = getelementptr %Token, %Token* %13, i32 0, i32 2
  store i64 %18, i64* %19
  %20 = load i64, i64* %5
  %21 = getelementptr %Token, %Token* %13, i32 0, i32 3
  store i64 %20, i64* %21
  %22 = load %Token, %Token* %13
  %23 = alloca %Token
  store %Token %22, %Token* %23
  %24 = load { i64, i8* }*, { i64, i8* }** %6
  %25 = load %Token, %Token* %23
  %26 = getelementptr %Token, %Token* null, i32 1
  %27 = ptrtoint %Token* %26 to i64
  %28 = call i8* @GC_malloc(i64 %27)
  %29 = bitcast i8* %28 to %Token*
  store %Token %25, %Token* %29
  %30 = ptrtoint %Token* %29 to i64
  call void @nyx_array_push({ i64, i8* }* %24, i64 %30)
  ret i64 0
}

define internal i1 @is_digit(%SharedEnv_tokenize* %env.param, i8 %c.param) {
  %1 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 6
  %8 = alloca i8
  store i8 %c.param, i8* %8
  %9 = load i8, i8* %8
  %10 = getelementptr [1 x i8], [1 x i8]* @.str138, i32 0, i32 0
  %11 = load i8, i8* %10
  %12 = zext i8 %11 to i64
  %13 = zext i8 %9 to i64
  %14 = icmp eq i64 %13, %12
  %15 = load i8, i8* %8
  %16 = getelementptr [1 x i8], [1 x i8]* @.str139, i32 0, i32 0
  %17 = load i8, i8* %16
  %18 = zext i8 %17 to i64
  %19 = zext i8 %15 to i64
  %20 = icmp eq i64 %19, %18
  %21 = or i1 %14, %20
  %22 = load i8, i8* %8
  %23 = getelementptr [1 x i8], [1 x i8]* @.str140, i32 0, i32 0
  %24 = load i8, i8* %23
  %25 = zext i8 %24 to i64
  %26 = zext i8 %22 to i64
  %27 = icmp eq i64 %26, %25
  %28 = or i1 %21, %27
  %29 = load i8, i8* %8
  %30 = getelementptr [1 x i8], [1 x i8]* @.str141, i32 0, i32 0
  %31 = load i8, i8* %30
  %32 = zext i8 %31 to i64
  %33 = zext i8 %29 to i64
  %34 = icmp eq i64 %33, %32
  %35 = or i1 %28, %34
  %36 = load i8, i8* %8
  %37 = getelementptr [1 x i8], [1 x i8]* @.str142, i32 0, i32 0
  %38 = load i8, i8* %37
  %39 = zext i8 %38 to i64
  %40 = zext i8 %36 to i64
  %41 = icmp eq i64 %40, %39
  %42 = or i1 %35, %41
  %43 = load i8, i8* %8
  %44 = getelementptr [1 x i8], [1 x i8]* @.str143, i32 0, i32 0
  %45 = load i8, i8* %44
  %46 = zext i8 %45 to i64
  %47 = zext i8 %43 to i64
  %48 = icmp eq i64 %47, %46
  %49 = or i1 %42, %48
  %50 = load i8, i8* %8
  %51 = getelementptr [1 x i8], [1 x i8]* @.str144, i32 0, i32 0
  %52 = load i8, i8* %51
  %53 = zext i8 %52 to i64
  %54 = zext i8 %50 to i64
  %55 = icmp eq i64 %54, %53
  %56 = or i1 %49, %55
  %57 = load i8, i8* %8
  %58 = getelementptr [1 x i8], [1 x i8]* @.str145, i32 0, i32 0
  %59 = load i8, i8* %58
  %60 = zext i8 %59 to i64
  %61 = zext i8 %57 to i64
  %62 = icmp eq i64 %61, %60
  %63 = or i1 %56, %62
  %64 = load i8, i8* %8
  %65 = getelementptr [1 x i8], [1 x i8]* @.str146, i32 0, i32 0
  %66 = load i8, i8* %65
  %67 = zext i8 %66 to i64
  %68 = zext i8 %64 to i64
  %69 = icmp eq i64 %68, %67
  %70 = or i1 %63, %69
  %71 = load i8, i8* %8
  %72 = getelementptr [1 x i8], [1 x i8]* @.str147, i32 0, i32 0
  %73 = load i8, i8* %72
  %74 = zext i8 %73 to i64
  %75 = zext i8 %71 to i64
  %76 = icmp eq i64 %75, %74
  %77 = or i1 %70, %76
  ret i1 %77
}

define internal i1 @is_alpha(%SharedEnv_tokenize* %env.param, i8 %c.param) {
  %1 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 6
  %8 = alloca i8
  store i8 %c.param, i8* %8
  %9 = load i8, i8* %8
  %10 = getelementptr [1 x i8], [1 x i8]* @.str148, i32 0, i32 0
  %11 = load i8, i8* %10
  %12 = zext i8 %11 to i64
  %13 = zext i8 %9 to i64
  %14 = icmp eq i64 %13, %12
  %15 = load i8, i8* %8
  %16 = getelementptr [1 x i8], [1 x i8]* @.str149, i32 0, i32 0
  %17 = load i8, i8* %16
  %18 = zext i8 %17 to i64
  %19 = zext i8 %15 to i64
  %20 = icmp eq i64 %19, %18
  %21 = or i1 %14, %20
  %22 = load i8, i8* %8
  %23 = getelementptr [1 x i8], [1 x i8]* @.str150, i32 0, i32 0
  %24 = load i8, i8* %23
  %25 = zext i8 %24 to i64
  %26 = zext i8 %22 to i64
  %27 = icmp eq i64 %26, %25
  %28 = or i1 %21, %27
  %29 = load i8, i8* %8
  %30 = getelementptr [1 x i8], [1 x i8]* @.str151, i32 0, i32 0
  %31 = load i8, i8* %30
  %32 = zext i8 %31 to i64
  %33 = zext i8 %29 to i64
  %34 = icmp eq i64 %33, %32
  %35 = or i1 %28, %34
  %36 = load i8, i8* %8
  %37 = getelementptr [1 x i8], [1 x i8]* @.str152, i32 0, i32 0
  %38 = load i8, i8* %37
  %39 = zext i8 %38 to i64
  %40 = zext i8 %36 to i64
  %41 = icmp eq i64 %40, %39
  %42 = or i1 %35, %41
  %43 = load i8, i8* %8
  %44 = getelementptr [1 x i8], [1 x i8]* @.str153, i32 0, i32 0
  %45 = load i8, i8* %44
  %46 = zext i8 %45 to i64
  %47 = zext i8 %43 to i64
  %48 = icmp eq i64 %47, %46
  %49 = or i1 %42, %48
  %50 = load i8, i8* %8
  %51 = getelementptr [1 x i8], [1 x i8]* @.str154, i32 0, i32 0
  %52 = load i8, i8* %51
  %53 = zext i8 %52 to i64
  %54 = zext i8 %50 to i64
  %55 = icmp eq i64 %54, %53
  %56 = or i1 %49, %55
  %57 = load i8, i8* %8
  %58 = getelementptr [1 x i8], [1 x i8]* @.str155, i32 0, i32 0
  %59 = load i8, i8* %58
  %60 = zext i8 %59 to i64
  %61 = zext i8 %57 to i64
  %62 = icmp eq i64 %61, %60
  %63 = or i1 %56, %62
  %64 = load i8, i8* %8
  %65 = getelementptr [1 x i8], [1 x i8]* @.str156, i32 0, i32 0
  %66 = load i8, i8* %65
  %67 = zext i8 %66 to i64
  %68 = zext i8 %64 to i64
  %69 = icmp eq i64 %68, %67
  %70 = or i1 %63, %69
  %71 = load i8, i8* %8
  %72 = getelementptr [1 x i8], [1 x i8]* @.str157, i32 0, i32 0
  %73 = load i8, i8* %72
  %74 = zext i8 %73 to i64
  %75 = zext i8 %71 to i64
  %76 = icmp eq i64 %75, %74
  %77 = or i1 %70, %76
  %78 = load i8, i8* %8
  %79 = getelementptr [1 x i8], [1 x i8]* @.str158, i32 0, i32 0
  %80 = load i8, i8* %79
  %81 = zext i8 %80 to i64
  %82 = zext i8 %78 to i64
  %83 = icmp eq i64 %82, %81
  %84 = or i1 %77, %83
  %85 = load i8, i8* %8
  %86 = getelementptr [1 x i8], [1 x i8]* @.str159, i32 0, i32 0
  %87 = load i8, i8* %86
  %88 = zext i8 %87 to i64
  %89 = zext i8 %85 to i64
  %90 = icmp eq i64 %89, %88
  %91 = or i1 %84, %90
  %92 = load i8, i8* %8
  %93 = getelementptr [1 x i8], [1 x i8]* @.str160, i32 0, i32 0
  %94 = load i8, i8* %93
  %95 = zext i8 %94 to i64
  %96 = zext i8 %92 to i64
  %97 = icmp eq i64 %96, %95
  %98 = or i1 %91, %97
  %99 = load i8, i8* %8
  %100 = getelementptr [1 x i8], [1 x i8]* @.str161, i32 0, i32 0
  %101 = load i8, i8* %100
  %102 = zext i8 %101 to i64
  %103 = zext i8 %99 to i64
  %104 = icmp eq i64 %103, %102
  %105 = or i1 %98, %104
  %106 = load i8, i8* %8
  %107 = getelementptr [1 x i8], [1 x i8]* @.str162, i32 0, i32 0
  %108 = load i8, i8* %107
  %109 = zext i8 %108 to i64
  %110 = zext i8 %106 to i64
  %111 = icmp eq i64 %110, %109
  %112 = or i1 %105, %111
  %113 = load i8, i8* %8
  %114 = getelementptr [1 x i8], [1 x i8]* @.str163, i32 0, i32 0
  %115 = load i8, i8* %114
  %116 = zext i8 %115 to i64
  %117 = zext i8 %113 to i64
  %118 = icmp eq i64 %117, %116
  %119 = or i1 %112, %118
  %120 = load i8, i8* %8
  %121 = getelementptr [1 x i8], [1 x i8]* @.str164, i32 0, i32 0
  %122 = load i8, i8* %121
  %123 = zext i8 %122 to i64
  %124 = zext i8 %120 to i64
  %125 = icmp eq i64 %124, %123
  %126 = or i1 %119, %125
  %127 = load i8, i8* %8
  %128 = getelementptr [1 x i8], [1 x i8]* @.str165, i32 0, i32 0
  %129 = load i8, i8* %128
  %130 = zext i8 %129 to i64
  %131 = zext i8 %127 to i64
  %132 = icmp eq i64 %131, %130
  %133 = or i1 %126, %132
  %134 = load i8, i8* %8
  %135 = getelementptr [1 x i8], [1 x i8]* @.str166, i32 0, i32 0
  %136 = load i8, i8* %135
  %137 = zext i8 %136 to i64
  %138 = zext i8 %134 to i64
  %139 = icmp eq i64 %138, %137
  %140 = or i1 %133, %139
  %141 = load i8, i8* %8
  %142 = getelementptr [1 x i8], [1 x i8]* @.str167, i32 0, i32 0
  %143 = load i8, i8* %142
  %144 = zext i8 %143 to i64
  %145 = zext i8 %141 to i64
  %146 = icmp eq i64 %145, %144
  %147 = or i1 %140, %146
  %148 = load i8, i8* %8
  %149 = getelementptr [1 x i8], [1 x i8]* @.str168, i32 0, i32 0
  %150 = load i8, i8* %149
  %151 = zext i8 %150 to i64
  %152 = zext i8 %148 to i64
  %153 = icmp eq i64 %152, %151
  %154 = or i1 %147, %153
  %155 = load i8, i8* %8
  %156 = getelementptr [1 x i8], [1 x i8]* @.str169, i32 0, i32 0
  %157 = load i8, i8* %156
  %158 = zext i8 %157 to i64
  %159 = zext i8 %155 to i64
  %160 = icmp eq i64 %159, %158
  %161 = or i1 %154, %160
  %162 = load i8, i8* %8
  %163 = getelementptr [1 x i8], [1 x i8]* @.str170, i32 0, i32 0
  %164 = load i8, i8* %163
  %165 = zext i8 %164 to i64
  %166 = zext i8 %162 to i64
  %167 = icmp eq i64 %166, %165
  %168 = or i1 %161, %167
  %169 = load i8, i8* %8
  %170 = getelementptr [1 x i8], [1 x i8]* @.str171, i32 0, i32 0
  %171 = load i8, i8* %170
  %172 = zext i8 %171 to i64
  %173 = zext i8 %169 to i64
  %174 = icmp eq i64 %173, %172
  %175 = or i1 %168, %174
  %176 = load i8, i8* %8
  %177 = getelementptr [1 x i8], [1 x i8]* @.str172, i32 0, i32 0
  %178 = load i8, i8* %177
  %179 = zext i8 %178 to i64
  %180 = zext i8 %176 to i64
  %181 = icmp eq i64 %180, %179
  %182 = or i1 %175, %181
  %183 = load i8, i8* %8
  %184 = getelementptr [1 x i8], [1 x i8]* @.str173, i32 0, i32 0
  %185 = load i8, i8* %184
  %186 = zext i8 %185 to i64
  %187 = zext i8 %183 to i64
  %188 = icmp eq i64 %187, %186
  %189 = or i1 %182, %188
  %190 = load i8, i8* %8
  %191 = getelementptr [1 x i8], [1 x i8]* @.str174, i32 0, i32 0
  %192 = load i8, i8* %191
  %193 = zext i8 %192 to i64
  %194 = zext i8 %190 to i64
  %195 = icmp eq i64 %194, %193
  %196 = or i1 %189, %195
  %197 = load i8, i8* %8
  %198 = getelementptr [1 x i8], [1 x i8]* @.str175, i32 0, i32 0
  %199 = load i8, i8* %198
  %200 = zext i8 %199 to i64
  %201 = zext i8 %197 to i64
  %202 = icmp eq i64 %201, %200
  %203 = or i1 %196, %202
  %204 = load i8, i8* %8
  %205 = getelementptr [1 x i8], [1 x i8]* @.str176, i32 0, i32 0
  %206 = load i8, i8* %205
  %207 = zext i8 %206 to i64
  %208 = zext i8 %204 to i64
  %209 = icmp eq i64 %208, %207
  %210 = or i1 %203, %209
  %211 = load i8, i8* %8
  %212 = getelementptr [1 x i8], [1 x i8]* @.str177, i32 0, i32 0
  %213 = load i8, i8* %212
  %214 = zext i8 %213 to i64
  %215 = zext i8 %211 to i64
  %216 = icmp eq i64 %215, %214
  %217 = or i1 %210, %216
  %218 = load i8, i8* %8
  %219 = getelementptr [1 x i8], [1 x i8]* @.str178, i32 0, i32 0
  %220 = load i8, i8* %219
  %221 = zext i8 %220 to i64
  %222 = zext i8 %218 to i64
  %223 = icmp eq i64 %222, %221
  %224 = or i1 %217, %223
  %225 = load i8, i8* %8
  %226 = getelementptr [1 x i8], [1 x i8]* @.str179, i32 0, i32 0
  %227 = load i8, i8* %226
  %228 = zext i8 %227 to i64
  %229 = zext i8 %225 to i64
  %230 = icmp eq i64 %229, %228
  %231 = or i1 %224, %230
  %232 = load i8, i8* %8
  %233 = getelementptr [1 x i8], [1 x i8]* @.str180, i32 0, i32 0
  %234 = load i8, i8* %233
  %235 = zext i8 %234 to i64
  %236 = zext i8 %232 to i64
  %237 = icmp eq i64 %236, %235
  %238 = or i1 %231, %237
  %239 = load i8, i8* %8
  %240 = getelementptr [1 x i8], [1 x i8]* @.str181, i32 0, i32 0
  %241 = load i8, i8* %240
  %242 = zext i8 %241 to i64
  %243 = zext i8 %239 to i64
  %244 = icmp eq i64 %243, %242
  %245 = or i1 %238, %244
  %246 = load i8, i8* %8
  %247 = getelementptr [1 x i8], [1 x i8]* @.str182, i32 0, i32 0
  %248 = load i8, i8* %247
  %249 = zext i8 %248 to i64
  %250 = zext i8 %246 to i64
  %251 = icmp eq i64 %250, %249
  %252 = or i1 %245, %251
  %253 = load i8, i8* %8
  %254 = getelementptr [1 x i8], [1 x i8]* @.str183, i32 0, i32 0
  %255 = load i8, i8* %254
  %256 = zext i8 %255 to i64
  %257 = zext i8 %253 to i64
  %258 = icmp eq i64 %257, %256
  %259 = or i1 %252, %258
  %260 = load i8, i8* %8
  %261 = getelementptr [1 x i8], [1 x i8]* @.str184, i32 0, i32 0
  %262 = load i8, i8* %261
  %263 = zext i8 %262 to i64
  %264 = zext i8 %260 to i64
  %265 = icmp eq i64 %264, %263
  %266 = or i1 %259, %265
  %267 = load i8, i8* %8
  %268 = getelementptr [1 x i8], [1 x i8]* @.str185, i32 0, i32 0
  %269 = load i8, i8* %268
  %270 = zext i8 %269 to i64
  %271 = zext i8 %267 to i64
  %272 = icmp eq i64 %271, %270
  %273 = or i1 %266, %272
  %274 = load i8, i8* %8
  %275 = getelementptr [1 x i8], [1 x i8]* @.str186, i32 0, i32 0
  %276 = load i8, i8* %275
  %277 = zext i8 %276 to i64
  %278 = zext i8 %274 to i64
  %279 = icmp eq i64 %278, %277
  %280 = or i1 %273, %279
  %281 = load i8, i8* %8
  %282 = getelementptr [1 x i8], [1 x i8]* @.str187, i32 0, i32 0
  %283 = load i8, i8* %282
  %284 = zext i8 %283 to i64
  %285 = zext i8 %281 to i64
  %286 = icmp eq i64 %285, %284
  %287 = or i1 %280, %286
  %288 = load i8, i8* %8
  %289 = getelementptr [1 x i8], [1 x i8]* @.str188, i32 0, i32 0
  %290 = load i8, i8* %289
  %291 = zext i8 %290 to i64
  %292 = zext i8 %288 to i64
  %293 = icmp eq i64 %292, %291
  %294 = or i1 %287, %293
  %295 = load i8, i8* %8
  %296 = getelementptr [1 x i8], [1 x i8]* @.str189, i32 0, i32 0
  %297 = load i8, i8* %296
  %298 = zext i8 %297 to i64
  %299 = zext i8 %295 to i64
  %300 = icmp eq i64 %299, %298
  %301 = or i1 %294, %300
  %302 = load i8, i8* %8
  %303 = getelementptr [1 x i8], [1 x i8]* @.str190, i32 0, i32 0
  %304 = load i8, i8* %303
  %305 = zext i8 %304 to i64
  %306 = zext i8 %302 to i64
  %307 = icmp eq i64 %306, %305
  %308 = or i1 %301, %307
  %309 = load i8, i8* %8
  %310 = getelementptr [1 x i8], [1 x i8]* @.str191, i32 0, i32 0
  %311 = load i8, i8* %310
  %312 = zext i8 %311 to i64
  %313 = zext i8 %309 to i64
  %314 = icmp eq i64 %313, %312
  %315 = or i1 %308, %314
  %316 = load i8, i8* %8
  %317 = getelementptr [1 x i8], [1 x i8]* @.str192, i32 0, i32 0
  %318 = load i8, i8* %317
  %319 = zext i8 %318 to i64
  %320 = zext i8 %316 to i64
  %321 = icmp eq i64 %320, %319
  %322 = or i1 %315, %321
  %323 = load i8, i8* %8
  %324 = getelementptr [1 x i8], [1 x i8]* @.str193, i32 0, i32 0
  %325 = load i8, i8* %324
  %326 = zext i8 %325 to i64
  %327 = zext i8 %323 to i64
  %328 = icmp eq i64 %327, %326
  %329 = or i1 %322, %328
  %330 = load i8, i8* %8
  %331 = getelementptr [1 x i8], [1 x i8]* @.str194, i32 0, i32 0
  %332 = load i8, i8* %331
  %333 = zext i8 %332 to i64
  %334 = zext i8 %330 to i64
  %335 = icmp eq i64 %334, %333
  %336 = or i1 %329, %335
  %337 = load i8, i8* %8
  %338 = getelementptr [1 x i8], [1 x i8]* @.str195, i32 0, i32 0
  %339 = load i8, i8* %338
  %340 = zext i8 %339 to i64
  %341 = zext i8 %337 to i64
  %342 = icmp eq i64 %341, %340
  %343 = or i1 %336, %342
  %344 = load i8, i8* %8
  %345 = getelementptr [1 x i8], [1 x i8]* @.str196, i32 0, i32 0
  %346 = load i8, i8* %345
  %347 = zext i8 %346 to i64
  %348 = zext i8 %344 to i64
  %349 = icmp eq i64 %348, %347
  %350 = or i1 %343, %349
  %351 = load i8, i8* %8
  %352 = getelementptr [1 x i8], [1 x i8]* @.str197, i32 0, i32 0
  %353 = load i8, i8* %352
  %354 = zext i8 %353 to i64
  %355 = zext i8 %351 to i64
  %356 = icmp eq i64 %355, %354
  %357 = or i1 %350, %356
  %358 = load i8, i8* %8
  %359 = getelementptr [1 x i8], [1 x i8]* @.str198, i32 0, i32 0
  %360 = load i8, i8* %359
  %361 = zext i8 %360 to i64
  %362 = zext i8 %358 to i64
  %363 = icmp eq i64 %362, %361
  %364 = or i1 %357, %363
  %365 = load i8, i8* %8
  %366 = getelementptr [1 x i8], [1 x i8]* @.str199, i32 0, i32 0
  %367 = load i8, i8* %366
  %368 = zext i8 %367 to i64
  %369 = zext i8 %365 to i64
  %370 = icmp eq i64 %369, %368
  %371 = or i1 %364, %370
  %372 = load i8, i8* %8
  %373 = getelementptr [1 x i8], [1 x i8]* @.str200, i32 0, i32 0
  %374 = load i8, i8* %373
  %375 = zext i8 %374 to i64
  %376 = zext i8 %372 to i64
  %377 = icmp eq i64 %376, %375
  %378 = or i1 %371, %377
  ret i1 %378
}

define internal i1 @is_alphanumeric(%SharedEnv_tokenize* %env.param, i8 %c.param) {
  %1 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 6
  %8 = alloca i8
  store i8 %c.param, i8* %8
  %9 = load i8, i8* %8
  %10 = call i1 @is_alpha(%SharedEnv_tokenize* %env.param, i8 %9)
  %11 = load i8, i8* %8
  %12 = call i1 @is_digit(%SharedEnv_tokenize* %env.param, i8 %11)
  %13 = or i1 %10, %12
  ret i1 %13
}

define internal i1 @is_hex_digit(%SharedEnv_tokenize* %env.param, i8 %c.param) {
  %1 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 6
  %8 = alloca i8
  store i8 %c.param, i8* %8
  %9 = load i8, i8* %8
  %10 = getelementptr [1 x i8], [1 x i8]* @.str201, i32 0, i32 0
  %11 = load i8, i8* %10
  %12 = zext i8 %11 to i64
  %13 = zext i8 %9 to i64
  %14 = icmp eq i64 %13, %12
  %15 = load i8, i8* %8
  %16 = getelementptr [1 x i8], [1 x i8]* @.str202, i32 0, i32 0
  %17 = load i8, i8* %16
  %18 = zext i8 %17 to i64
  %19 = zext i8 %15 to i64
  %20 = icmp eq i64 %19, %18
  %21 = or i1 %14, %20
  %22 = load i8, i8* %8
  %23 = getelementptr [1 x i8], [1 x i8]* @.str203, i32 0, i32 0
  %24 = load i8, i8* %23
  %25 = zext i8 %24 to i64
  %26 = zext i8 %22 to i64
  %27 = icmp eq i64 %26, %25
  %28 = or i1 %21, %27
  %29 = load i8, i8* %8
  %30 = getelementptr [1 x i8], [1 x i8]* @.str204, i32 0, i32 0
  %31 = load i8, i8* %30
  %32 = zext i8 %31 to i64
  %33 = zext i8 %29 to i64
  %34 = icmp eq i64 %33, %32
  %35 = or i1 %28, %34
  %36 = load i8, i8* %8
  %37 = getelementptr [1 x i8], [1 x i8]* @.str205, i32 0, i32 0
  %38 = load i8, i8* %37
  %39 = zext i8 %38 to i64
  %40 = zext i8 %36 to i64
  %41 = icmp eq i64 %40, %39
  %42 = or i1 %35, %41
  %43 = load i8, i8* %8
  %44 = getelementptr [1 x i8], [1 x i8]* @.str206, i32 0, i32 0
  %45 = load i8, i8* %44
  %46 = zext i8 %45 to i64
  %47 = zext i8 %43 to i64
  %48 = icmp eq i64 %47, %46
  %49 = or i1 %42, %48
  %50 = load i8, i8* %8
  %51 = getelementptr [1 x i8], [1 x i8]* @.str207, i32 0, i32 0
  %52 = load i8, i8* %51
  %53 = zext i8 %52 to i64
  %54 = zext i8 %50 to i64
  %55 = icmp eq i64 %54, %53
  %56 = or i1 %49, %55
  %57 = load i8, i8* %8
  %58 = getelementptr [1 x i8], [1 x i8]* @.str208, i32 0, i32 0
  %59 = load i8, i8* %58
  %60 = zext i8 %59 to i64
  %61 = zext i8 %57 to i64
  %62 = icmp eq i64 %61, %60
  %63 = or i1 %56, %62
  %64 = load i8, i8* %8
  %65 = getelementptr [1 x i8], [1 x i8]* @.str209, i32 0, i32 0
  %66 = load i8, i8* %65
  %67 = zext i8 %66 to i64
  %68 = zext i8 %64 to i64
  %69 = icmp eq i64 %68, %67
  %70 = or i1 %63, %69
  %71 = load i8, i8* %8
  %72 = getelementptr [1 x i8], [1 x i8]* @.str210, i32 0, i32 0
  %73 = load i8, i8* %72
  %74 = zext i8 %73 to i64
  %75 = zext i8 %71 to i64
  %76 = icmp eq i64 %75, %74
  %77 = or i1 %70, %76
  %78 = load i8, i8* %8
  %79 = getelementptr [1 x i8], [1 x i8]* @.str211, i32 0, i32 0
  %80 = load i8, i8* %79
  %81 = zext i8 %80 to i64
  %82 = zext i8 %78 to i64
  %83 = icmp eq i64 %82, %81
  %84 = or i1 %77, %83
  %85 = load i8, i8* %8
  %86 = getelementptr [1 x i8], [1 x i8]* @.str212, i32 0, i32 0
  %87 = load i8, i8* %86
  %88 = zext i8 %87 to i64
  %89 = zext i8 %85 to i64
  %90 = icmp eq i64 %89, %88
  %91 = or i1 %84, %90
  %92 = load i8, i8* %8
  %93 = getelementptr [1 x i8], [1 x i8]* @.str213, i32 0, i32 0
  %94 = load i8, i8* %93
  %95 = zext i8 %94 to i64
  %96 = zext i8 %92 to i64
  %97 = icmp eq i64 %96, %95
  %98 = or i1 %91, %97
  %99 = load i8, i8* %8
  %100 = getelementptr [1 x i8], [1 x i8]* @.str214, i32 0, i32 0
  %101 = load i8, i8* %100
  %102 = zext i8 %101 to i64
  %103 = zext i8 %99 to i64
  %104 = icmp eq i64 %103, %102
  %105 = or i1 %98, %104
  %106 = load i8, i8* %8
  %107 = getelementptr [1 x i8], [1 x i8]* @.str215, i32 0, i32 0
  %108 = load i8, i8* %107
  %109 = zext i8 %108 to i64
  %110 = zext i8 %106 to i64
  %111 = icmp eq i64 %110, %109
  %112 = or i1 %105, %111
  %113 = load i8, i8* %8
  %114 = getelementptr [1 x i8], [1 x i8]* @.str216, i32 0, i32 0
  %115 = load i8, i8* %114
  %116 = zext i8 %115 to i64
  %117 = zext i8 %113 to i64
  %118 = icmp eq i64 %117, %116
  %119 = or i1 %112, %118
  %120 = load i8, i8* %8
  %121 = getelementptr [1 x i8], [1 x i8]* @.str217, i32 0, i32 0
  %122 = load i8, i8* %121
  %123 = zext i8 %122 to i64
  %124 = zext i8 %120 to i64
  %125 = icmp eq i64 %124, %123
  %126 = or i1 %119, %125
  %127 = load i8, i8* %8
  %128 = getelementptr [1 x i8], [1 x i8]* @.str218, i32 0, i32 0
  %129 = load i8, i8* %128
  %130 = zext i8 %129 to i64
  %131 = zext i8 %127 to i64
  %132 = icmp eq i64 %131, %130
  %133 = or i1 %126, %132
  %134 = load i8, i8* %8
  %135 = getelementptr [1 x i8], [1 x i8]* @.str219, i32 0, i32 0
  %136 = load i8, i8* %135
  %137 = zext i8 %136 to i64
  %138 = zext i8 %134 to i64
  %139 = icmp eq i64 %138, %137
  %140 = or i1 %133, %139
  %141 = load i8, i8* %8
  %142 = getelementptr [1 x i8], [1 x i8]* @.str220, i32 0, i32 0
  %143 = load i8, i8* %142
  %144 = zext i8 %143 to i64
  %145 = zext i8 %141 to i64
  %146 = icmp eq i64 %145, %144
  %147 = or i1 %140, %146
  %148 = load i8, i8* %8
  %149 = getelementptr [1 x i8], [1 x i8]* @.str221, i32 0, i32 0
  %150 = load i8, i8* %149
  %151 = zext i8 %150 to i64
  %152 = zext i8 %148 to i64
  %153 = icmp eq i64 %152, %151
  %154 = or i1 %147, %153
  %155 = load i8, i8* %8
  %156 = getelementptr [1 x i8], [1 x i8]* @.str222, i32 0, i32 0
  %157 = load i8, i8* %156
  %158 = zext i8 %157 to i64
  %159 = zext i8 %155 to i64
  %160 = icmp eq i64 %159, %158
  %161 = or i1 %154, %160
  ret i1 %161
}

define internal i64 @hex_digit_val(%SharedEnv_tokenize* %env.param, i8 %c.param) {
  %1 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 6
  %8 = alloca i8
  store i8 %c.param, i8* %8
  %9 = load i8, i8* %8
  %10 = getelementptr [1 x i8], [1 x i8]* @.str223, i32 0, i32 0
  %11 = load i8, i8* %10
  %12 = zext i8 %11 to i64
  %13 = zext i8 %9 to i64
  %14 = icmp eq i64 %13, %12
  br i1 %14, label %then0, label %else1
then0:
  ret i64 0
else1:
  br label %merge2
merge2:
  %15 = load i8, i8* %8
  %16 = getelementptr [1 x i8], [1 x i8]* @.str224, i32 0, i32 0
  %17 = load i8, i8* %16
  %18 = zext i8 %17 to i64
  %19 = zext i8 %15 to i64
  %20 = icmp eq i64 %19, %18
  br i1 %20, label %then3, label %else4
then3:
  ret i64 1
else4:
  br label %merge5
merge5:
  %21 = load i8, i8* %8
  %22 = getelementptr [1 x i8], [1 x i8]* @.str225, i32 0, i32 0
  %23 = load i8, i8* %22
  %24 = zext i8 %23 to i64
  %25 = zext i8 %21 to i64
  %26 = icmp eq i64 %25, %24
  br i1 %26, label %then6, label %else7
then6:
  ret i64 2
else7:
  br label %merge8
merge8:
  %27 = load i8, i8* %8
  %28 = getelementptr [1 x i8], [1 x i8]* @.str226, i32 0, i32 0
  %29 = load i8, i8* %28
  %30 = zext i8 %29 to i64
  %31 = zext i8 %27 to i64
  %32 = icmp eq i64 %31, %30
  br i1 %32, label %then9, label %else10
then9:
  ret i64 3
else10:
  br label %merge11
merge11:
  %33 = load i8, i8* %8
  %34 = getelementptr [1 x i8], [1 x i8]* @.str227, i32 0, i32 0
  %35 = load i8, i8* %34
  %36 = zext i8 %35 to i64
  %37 = zext i8 %33 to i64
  %38 = icmp eq i64 %37, %36
  br i1 %38, label %then12, label %else13
then12:
  ret i64 4
else13:
  br label %merge14
merge14:
  %39 = load i8, i8* %8
  %40 = getelementptr [1 x i8], [1 x i8]* @.str228, i32 0, i32 0
  %41 = load i8, i8* %40
  %42 = zext i8 %41 to i64
  %43 = zext i8 %39 to i64
  %44 = icmp eq i64 %43, %42
  br i1 %44, label %then15, label %else16
then15:
  ret i64 5
else16:
  br label %merge17
merge17:
  %45 = load i8, i8* %8
  %46 = getelementptr [1 x i8], [1 x i8]* @.str229, i32 0, i32 0
  %47 = load i8, i8* %46
  %48 = zext i8 %47 to i64
  %49 = zext i8 %45 to i64
  %50 = icmp eq i64 %49, %48
  br i1 %50, label %then18, label %else19
then18:
  ret i64 6
else19:
  br label %merge20
merge20:
  %51 = load i8, i8* %8
  %52 = getelementptr [1 x i8], [1 x i8]* @.str230, i32 0, i32 0
  %53 = load i8, i8* %52
  %54 = zext i8 %53 to i64
  %55 = zext i8 %51 to i64
  %56 = icmp eq i64 %55, %54
  br i1 %56, label %then21, label %else22
then21:
  ret i64 7
else22:
  br label %merge23
merge23:
  %57 = load i8, i8* %8
  %58 = getelementptr [1 x i8], [1 x i8]* @.str231, i32 0, i32 0
  %59 = load i8, i8* %58
  %60 = zext i8 %59 to i64
  %61 = zext i8 %57 to i64
  %62 = icmp eq i64 %61, %60
  br i1 %62, label %then24, label %else25
then24:
  ret i64 8
else25:
  br label %merge26
merge26:
  %63 = load i8, i8* %8
  %64 = getelementptr [1 x i8], [1 x i8]* @.str232, i32 0, i32 0
  %65 = load i8, i8* %64
  %66 = zext i8 %65 to i64
  %67 = zext i8 %63 to i64
  %68 = icmp eq i64 %67, %66
  br i1 %68, label %then27, label %else28
then27:
  ret i64 9
else28:
  br label %merge29
merge29:
  %69 = load i8, i8* %8
  %70 = getelementptr [1 x i8], [1 x i8]* @.str233, i32 0, i32 0
  %71 = load i8, i8* %70
  %72 = zext i8 %71 to i64
  %73 = zext i8 %69 to i64
  %74 = icmp eq i64 %73, %72
  %75 = load i8, i8* %8
  %76 = getelementptr [1 x i8], [1 x i8]* @.str234, i32 0, i32 0
  %77 = load i8, i8* %76
  %78 = zext i8 %77 to i64
  %79 = zext i8 %75 to i64
  %80 = icmp eq i64 %79, %78
  %81 = or i1 %74, %80
  br i1 %81, label %then30, label %else31
then30:
  ret i64 10
else31:
  br label %merge32
merge32:
  %82 = load i8, i8* %8
  %83 = getelementptr [1 x i8], [1 x i8]* @.str235, i32 0, i32 0
  %84 = load i8, i8* %83
  %85 = zext i8 %84 to i64
  %86 = zext i8 %82 to i64
  %87 = icmp eq i64 %86, %85
  %88 = load i8, i8* %8
  %89 = getelementptr [1 x i8], [1 x i8]* @.str236, i32 0, i32 0
  %90 = load i8, i8* %89
  %91 = zext i8 %90 to i64
  %92 = zext i8 %88 to i64
  %93 = icmp eq i64 %92, %91
  %94 = or i1 %87, %93
  br i1 %94, label %then33, label %else34
then33:
  ret i64 11
else34:
  br label %merge35
merge35:
  %95 = load i8, i8* %8
  %96 = getelementptr [1 x i8], [1 x i8]* @.str237, i32 0, i32 0
  %97 = load i8, i8* %96
  %98 = zext i8 %97 to i64
  %99 = zext i8 %95 to i64
  %100 = icmp eq i64 %99, %98
  %101 = load i8, i8* %8
  %102 = getelementptr [1 x i8], [1 x i8]* @.str238, i32 0, i32 0
  %103 = load i8, i8* %102
  %104 = zext i8 %103 to i64
  %105 = zext i8 %101 to i64
  %106 = icmp eq i64 %105, %104
  %107 = or i1 %100, %106
  br i1 %107, label %then36, label %else37
then36:
  ret i64 12
else37:
  br label %merge38
merge38:
  %108 = load i8, i8* %8
  %109 = getelementptr [1 x i8], [1 x i8]* @.str239, i32 0, i32 0
  %110 = load i8, i8* %109
  %111 = zext i8 %110 to i64
  %112 = zext i8 %108 to i64
  %113 = icmp eq i64 %112, %111
  %114 = load i8, i8* %8
  %115 = getelementptr [1 x i8], [1 x i8]* @.str240, i32 0, i32 0
  %116 = load i8, i8* %115
  %117 = zext i8 %116 to i64
  %118 = zext i8 %114 to i64
  %119 = icmp eq i64 %118, %117
  %120 = or i1 %113, %119
  br i1 %120, label %then39, label %else40
then39:
  ret i64 13
else40:
  br label %merge41
merge41:
  %121 = load i8, i8* %8
  %122 = getelementptr [1 x i8], [1 x i8]* @.str241, i32 0, i32 0
  %123 = load i8, i8* %122
  %124 = zext i8 %123 to i64
  %125 = zext i8 %121 to i64
  %126 = icmp eq i64 %125, %124
  %127 = load i8, i8* %8
  %128 = getelementptr [1 x i8], [1 x i8]* @.str242, i32 0, i32 0
  %129 = load i8, i8* %128
  %130 = zext i8 %129 to i64
  %131 = zext i8 %127 to i64
  %132 = icmp eq i64 %131, %130
  %133 = or i1 %126, %132
  br i1 %133, label %then42, label %else43
then42:
  ret i64 14
else43:
  br label %merge44
merge44:
  %134 = load i8, i8* %8
  %135 = getelementptr [1 x i8], [1 x i8]* @.str243, i32 0, i32 0
  %136 = load i8, i8* %135
  %137 = zext i8 %136 to i64
  %138 = zext i8 %134 to i64
  %139 = icmp eq i64 %138, %137
  %140 = load i8, i8* %8
  %141 = getelementptr [1 x i8], [1 x i8]* @.str244, i32 0, i32 0
  %142 = load i8, i8* %141
  %143 = zext i8 %142 to i64
  %144 = zext i8 %140 to i64
  %145 = icmp eq i64 %144, %143
  %146 = or i1 %139, %145
  br i1 %146, label %then45, label %else46
then45:
  ret i64 15
else46:
  br label %merge47
merge47:
  ret i64 0
}

define internal %nyx_string* @digit_to_string(%SharedEnv_tokenize* %env.param, i64 %d.param) {
  %1 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 6
  %8 = alloca i64
  store i64 %d.param, i64* %8
  %9 = load i64, i64* %8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %then0, label %else1
then0:
  %11 = getelementptr [2 x i8], [2 x i8]* @.str245, i32 0, i32 0
  %12 = call %nyx_string* @nyx_string_from_cstr(i8* %11)
  ret %nyx_string* %12
else1:
  br label %merge2
merge2:
  %13 = load i64, i64* %8
  %14 = icmp eq i64 %13, 1
  br i1 %14, label %then3, label %else4
then3:
  %15 = getelementptr [2 x i8], [2 x i8]* @.str246, i32 0, i32 0
  %16 = call %nyx_string* @nyx_string_from_cstr(i8* %15)
  ret %nyx_string* %16
else4:
  br label %merge5
merge5:
  %17 = load i64, i64* %8
  %18 = icmp eq i64 %17, 2
  br i1 %18, label %then6, label %else7
then6:
  %19 = getelementptr [2 x i8], [2 x i8]* @.str247, i32 0, i32 0
  %20 = call %nyx_string* @nyx_string_from_cstr(i8* %19)
  ret %nyx_string* %20
else7:
  br label %merge8
merge8:
  %21 = load i64, i64* %8
  %22 = icmp eq i64 %21, 3
  br i1 %22, label %then9, label %else10
then9:
  %23 = getelementptr [2 x i8], [2 x i8]* @.str248, i32 0, i32 0
  %24 = call %nyx_string* @nyx_string_from_cstr(i8* %23)
  ret %nyx_string* %24
else10:
  br label %merge11
merge11:
  %25 = load i64, i64* %8
  %26 = icmp eq i64 %25, 4
  br i1 %26, label %then12, label %else13
then12:
  %27 = getelementptr [2 x i8], [2 x i8]* @.str249, i32 0, i32 0
  %28 = call %nyx_string* @nyx_string_from_cstr(i8* %27)
  ret %nyx_string* %28
else13:
  br label %merge14
merge14:
  %29 = load i64, i64* %8
  %30 = icmp eq i64 %29, 5
  br i1 %30, label %then15, label %else16
then15:
  %31 = getelementptr [2 x i8], [2 x i8]* @.str250, i32 0, i32 0
  %32 = call %nyx_string* @nyx_string_from_cstr(i8* %31)
  ret %nyx_string* %32
else16:
  br label %merge17
merge17:
  %33 = load i64, i64* %8
  %34 = icmp eq i64 %33, 6
  br i1 %34, label %then18, label %else19
then18:
  %35 = getelementptr [2 x i8], [2 x i8]* @.str251, i32 0, i32 0
  %36 = call %nyx_string* @nyx_string_from_cstr(i8* %35)
  ret %nyx_string* %36
else19:
  br label %merge20
merge20:
  %37 = load i64, i64* %8
  %38 = icmp eq i64 %37, 7
  br i1 %38, label %then21, label %else22
then21:
  %39 = getelementptr [2 x i8], [2 x i8]* @.str252, i32 0, i32 0
  %40 = call %nyx_string* @nyx_string_from_cstr(i8* %39)
  ret %nyx_string* %40
else22:
  br label %merge23
merge23:
  %41 = load i64, i64* %8
  %42 = icmp eq i64 %41, 8
  br i1 %42, label %then24, label %else25
then24:
  %43 = getelementptr [2 x i8], [2 x i8]* @.str253, i32 0, i32 0
  %44 = call %nyx_string* @nyx_string_from_cstr(i8* %43)
  ret %nyx_string* %44
else25:
  br label %merge26
merge26:
  %45 = getelementptr [2 x i8], [2 x i8]* @.str254, i32 0, i32 0
  %46 = call %nyx_string* @nyx_string_from_cstr(i8* %45)
  ret %nyx_string* %46
}

define internal %nyx_string* @int_to_dec_string(%SharedEnv_tokenize* %env.param, i64 %n.param) {
  %1 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 6
  %8 = alloca i64
  store i64 %n.param, i64* %8
  %9 = load i64, i64* %8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %then0, label %else1
then0:
  %11 = getelementptr [2 x i8], [2 x i8]* @.str255, i32 0, i32 0
  %12 = call %nyx_string* @nyx_string_from_cstr(i8* %11)
  ret %nyx_string* %12
else1:
  br label %merge2
merge2:
  %13 = getelementptr [1 x i8], [1 x i8]* @.str256, i32 0, i32 0
  %14 = call %nyx_string* @nyx_string_from_cstr(i8* %13)
  %15 = alloca %nyx_string*
  store %nyx_string* %14, %nyx_string** %15
  %16 = load i64, i64* %8
  %17 = alloca i64
  store i64 %16, i64* %17
  %18 = alloca i1
  store i1 0, i1* %18
  br label %while_cond3
while_cond3:
  %19 = load i1, i1* %18
  %20 = xor i1 %19, true
  br i1 %20, label %while_body4, label %while_end5
while_body4:
  %21 = load i64, i64* %17
  %22 = icmp sle i64 %21, 0
  br i1 %22, label %then6, label %else7
then6:
  store i1 1, i1* %18
  br label %merge8
else7:
  %23 = load i64, i64* %17
  %24 = srem i64 %23, 10
  %25 = alloca i64
  store i64 %24, i64* %25
  %26 = load i64, i64* %25
  %27 = call %nyx_string* @digit_to_string(%SharedEnv_tokenize* %env.param, i64 %26)
  %28 = load %nyx_string*, %nyx_string** %15
  %29 = call %nyx_string* @nyx_string_concat(%nyx_string* %27, %nyx_string* %28)
  store %nyx_string* %29, %nyx_string** %15
  %30 = load i64, i64* %17
  %31 = sdiv i64 %30, 10
  store i64 %31, i64* %17
  br label %merge8
merge8:
  br label %while_cond3
while_end5:
  %32 = load %nyx_string*, %nyx_string** %15
  ret %nyx_string* %32
}

define internal i64 @hex_to_int(%SharedEnv_tokenize* %env.param, %nyx_string* %s.param) {
  %1 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 6
  %8 = alloca %nyx_string*
  store %nyx_string* %s.param, %nyx_string** %8
  %9 = alloca i64
  store i64 0, i64* %9
  %10 = alloca i64
  store i64 0, i64* %10
  %11 = alloca i1
  store i1 0, i1* %11
  br label %while_cond0
while_cond0:
  %12 = load i1, i1* %11
  %13 = xor i1 %12, true
  br i1 %13, label %while_body1, label %while_end2
while_body1:
  %14 = load i64, i64* %10
  %15 = load %nyx_string*, %nyx_string** %8
  %16 = call i64 @nyx_string_byte_length(%nyx_string* %15)
  %17 = icmp sge i64 %14, %16
  br i1 %17, label %then3, label %else4
then3:
  store i1 1, i1* %11
  br label %merge5
else4:
  %18 = load i64, i64* %9
  %19 = mul i64 %18, 16
  %20 = load %nyx_string*, %nyx_string** %8
  %21 = load i64, i64* %10
  %22 = call i8 @nyx_string_char_at(%nyx_string* %20, i64 %21)
  %23 = zext i8 %22 to i64
  %24 = call i64 @hex_digit_val(%SharedEnv_tokenize* %env.param, i64 %23)
  %25 = add i64 %19, %24
  store i64 %25, i64* %9
  %26 = load i64, i64* %10
  %27 = add i64 %26, 1
  store i64 %27, i64* %10
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %28 = load i64, i64* %9
  ret i64 %28
}

define internal i64 @bin_to_int(%SharedEnv_tokenize* %env.param, %nyx_string* %s.param) {
  %1 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 6
  %8 = alloca %nyx_string*
  store %nyx_string* %s.param, %nyx_string** %8
  %9 = alloca i64
  store i64 0, i64* %9
  %10 = alloca i64
  store i64 0, i64* %10
  %11 = alloca i1
  store i1 0, i1* %11
  br label %while_cond0
while_cond0:
  %12 = load i1, i1* %11
  %13 = xor i1 %12, true
  br i1 %13, label %while_body1, label %while_end2
while_body1:
  %14 = load i64, i64* %10
  %15 = load %nyx_string*, %nyx_string** %8
  %16 = call i64 @nyx_string_byte_length(%nyx_string* %15)
  %17 = icmp sge i64 %14, %16
  br i1 %17, label %then3, label %else4
then3:
  store i1 1, i1* %11
  br label %merge5
else4:
  %18 = load %nyx_string*, %nyx_string** %8
  %19 = load i64, i64* %10
  %20 = call i8 @nyx_string_char_at(%nyx_string* %18, i64 %19)
  %21 = zext i8 %20 to i64
  %22 = trunc i64 %21 to i8
  %23 = alloca i8
  store i8 %22, i8* %23
  %24 = load i8, i8* %23
  %25 = getelementptr [1 x i8], [1 x i8]* @.str257, i32 0, i32 0
  %26 = load i8, i8* %25
  %27 = zext i8 %26 to i64
  %28 = zext i8 %24 to i64
  %29 = icmp eq i64 %28, %27
  br i1 %29, label %then6, label %else7
then6:
  %30 = load i64, i64* %9
  %31 = mul i64 %30, 2
  %32 = add i64 %31, 1
  store i64 %32, i64* %9
  br label %merge8
else7:
  %33 = load i64, i64* %9
  %34 = mul i64 %33, 2
  store i64 %34, i64* %9
  br label %merge8
merge8:
  %35 = load i64, i64* %10
  %36 = add i64 %35, 1
  store i64 %36, i64* %10
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %37 = load i64, i64* %9
  ret i64 %37
}

define internal i64 @oct_to_int(%SharedEnv_tokenize* %env.param, %nyx_string* %s.param) {
  %1 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 6
  %8 = alloca %nyx_string*
  store %nyx_string* %s.param, %nyx_string** %8
  %9 = alloca i64
  store i64 0, i64* %9
  %10 = alloca i64
  store i64 0, i64* %10
  %11 = alloca i1
  store i1 0, i1* %11
  br label %while_cond0
while_cond0:
  %12 = load i1, i1* %11
  %13 = xor i1 %12, true
  br i1 %13, label %while_body1, label %while_end2
while_body1:
  %14 = load i64, i64* %10
  %15 = load %nyx_string*, %nyx_string** %8
  %16 = call i64 @nyx_string_byte_length(%nyx_string* %15)
  %17 = icmp sge i64 %14, %16
  br i1 %17, label %then3, label %else4
then3:
  store i1 1, i1* %11
  br label %merge5
else4:
  %18 = load i64, i64* %9
  %19 = mul i64 %18, 8
  %20 = load %nyx_string*, %nyx_string** %8
  %21 = load i64, i64* %10
  %22 = call i8 @nyx_string_char_at(%nyx_string* %20, i64 %21)
  %23 = zext i8 %22 to i64
  %24 = call i64 @hex_digit_val(%SharedEnv_tokenize* %env.param, i64 %23)
  %25 = add i64 %19, %24
  store i64 %25, i64* %9
  %26 = load i64, i64* %10
  %27 = add i64 %26, 1
  store i64 %27, i64* %10
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %28 = load i64, i64* %9
  ret i64 %28
}

define internal i64 @skip_whitespace(%SharedEnv_tokenize* %env.param) {
  %1 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 6
  %8 = alloca i1
  store i1 0, i1* %8
  br label %while_cond0
while_cond0:
  %9 = load i1, i1* %8
  %10 = xor i1 %9, true
  br i1 %10, label %while_body1, label %while_end2
while_body1:
  %11 = call i8 @peek(%SharedEnv_tokenize* %env.param)
  %12 = alloca i8
  store i8 %11, i8* %12
  %13 = load i8, i8* %12
  %14 = getelementptr [1 x i8], [1 x i8]* @.str258, i32 0, i32 0
  %15 = load i8, i8* %14
  %16 = zext i8 %15 to i64
  %17 = zext i8 %13 to i64
  %18 = icmp eq i64 %17, %16
  %19 = load i8, i8* %12
  %20 = getelementptr [1 x i8], [1 x i8]* @.str259, i32 0, i32 0
  %21 = load i8, i8* %20
  %22 = zext i8 %21 to i64
  %23 = zext i8 %19 to i64
  %24 = icmp eq i64 %23, %22
  %25 = or i1 %18, %24
  br i1 %25, label %then3, label %else4
then3:
  %26 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  br label %merge5
else4:
  store i1 1, i1* %8
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  ret i64 0
}

define internal i64 @skip_comment(%SharedEnv_tokenize* %env.param) {
  %1 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 6
  %8 = alloca i1
  store i1 0, i1* %8
  br label %while_cond0
while_cond0:
  %9 = load i1, i1* %8
  %10 = xor i1 %9, true
  br i1 %10, label %while_body1, label %while_end2
while_body1:
  %11 = call i1 @at_end(%SharedEnv_tokenize* %env.param)
  br i1 %11, label %then3, label %else4
then3:
  store i1 1, i1* %8
  br label %merge5
else4:
  %12 = call i8 @peek(%SharedEnv_tokenize* %env.param)
  %13 = getelementptr [1 x i8], [1 x i8]* @.str260, i32 0, i32 0
  %14 = load i8, i8* %13
  %15 = zext i8 %14 to i64
  %16 = zext i8 %12 to i64
  %17 = icmp eq i64 %16, %15
  br i1 %17, label %then6, label %else7
then6:
  store i1 1, i1* %8
  br label %merge8
else7:
  %18 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  br label %merge8
merge8:
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  ret i64 0
}

define internal i64 @skip_block_comment(%SharedEnv_tokenize* %env.param) {
  %1 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 6
  %8 = alloca i64
  store i64 1, i64* %8
  %9 = alloca i1
  store i1 0, i1* %9
  br label %while_cond0
while_cond0:
  %10 = load i1, i1* %9
  %11 = xor i1 %10, true
  br i1 %11, label %while_body1, label %while_end2
while_body1:
  %12 = call i1 @at_end(%SharedEnv_tokenize* %env.param)
  br i1 %12, label %then3, label %else4
then3:
  %13 = getelementptr [34 x i8], [34 x i8]* @.str261, i32 0, i32 0
  %14 = call %nyx_string* @nyx_string_from_cstr(i8* %13)
  %15 = call i8* @nyx_string_to_cstr(%nyx_string* %14)
  call void @nyx_print_string(i8* %15)
  store i1 1, i1* %9
  br label %merge5
else4:
  %16 = call i8 @peek(%SharedEnv_tokenize* %env.param)
  %17 = alloca i8
  store i8 %16, i8* %17
  %18 = call i8 @peek_next(%SharedEnv_tokenize* %env.param)
  %19 = alloca i8
  store i8 %18, i8* %19
  %20 = load i8, i8* %17
  %21 = getelementptr [1 x i8], [1 x i8]* @.str262, i32 0, i32 0
  %22 = load i8, i8* %21
  %23 = zext i8 %22 to i64
  %24 = zext i8 %20 to i64
  %25 = icmp eq i64 %24, %23
  %26 = load i8, i8* %19
  %27 = getelementptr [1 x i8], [1 x i8]* @.str263, i32 0, i32 0
  %28 = load i8, i8* %27
  %29 = zext i8 %28 to i64
  %30 = zext i8 %26 to i64
  %31 = icmp eq i64 %30, %29
  %32 = and i1 %25, %31
  br i1 %32, label %then6, label %else7
then6:
  %33 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %34 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %35 = load i64, i64* %8
  %36 = add i64 %35, 1
  store i64 %36, i64* %8
  br label %merge8
else7:
  %37 = load i8, i8* %17
  %38 = getelementptr [1 x i8], [1 x i8]* @.str264, i32 0, i32 0
  %39 = load i8, i8* %38
  %40 = zext i8 %39 to i64
  %41 = zext i8 %37 to i64
  %42 = icmp eq i64 %41, %40
  %43 = load i8, i8* %19
  %44 = getelementptr [1 x i8], [1 x i8]* @.str265, i32 0, i32 0
  %45 = load i8, i8* %44
  %46 = zext i8 %45 to i64
  %47 = zext i8 %43 to i64
  %48 = icmp eq i64 %47, %46
  %49 = and i1 %42, %48
  br i1 %49, label %then9, label %else10
then9:
  %50 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %51 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %52 = load i64, i64* %8
  %53 = sub i64 %52, 1
  store i64 %53, i64* %8
  %54 = load i64, i64* %8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %then12, label %else13
then12:
  store i1 1, i1* %9
  br label %merge14
else13:
  br label %merge14
merge14:
  br label %merge11
else10:
  %56 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  br label %merge11
merge11:
  br label %merge8
merge8:
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  ret i64 0
}

define internal %nyx_string* @build_string_from_chars(%SharedEnv_tokenize* %env.param, { i64, i8* }* %chars.param) {
  %1 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 6
  %8 = alloca { i64, i8* }*
  store { i64, i8* }* %chars.param, { i64, i8* }** %8
  %9 = getelementptr [1 x i8], [1 x i8]* @.str266, i32 0, i32 0
  %10 = call %nyx_string* @nyx_string_from_cstr(i8* %9)
  %11 = alloca %nyx_string*
  store %nyx_string* %10, %nyx_string** %11
  %12 = alloca i64
  store i64 0, i64* %12
  br label %while_cond0
while_cond0:
  %13 = load i64, i64* %12
  %14 = load { i64, i8* }*, { i64, i8* }** %8
  %15 = call i64 @nyx_array_length({ i64, i8* }* %14)
  %16 = icmp slt i64 %13, %15
  br i1 %16, label %while_body1, label %while_end2
while_body1:
  %17 = load { i64, i8* }*, { i64, i8* }** %8
  %18 = load i64, i64* %12
  %19 = call i64 @nyx_array_get({ i64, i8* }* %17, i64 %18)
  %20 = trunc i64 %19 to i8
  %21 = alloca i8
  store i8 %20, i8* %21
  %22 = load %nyx_string*, %nyx_string** %11
  %23 = load i8, i8* %21
  %24 = call %nyx_string* @nyx_string_from_char(i8 %23)
  %25 = call %nyx_string* @nyx_string_concat(%nyx_string* %22, %nyx_string* %24)
  store %nyx_string* %25, %nyx_string** %11
  %26 = load i64, i64* %12
  %27 = add i64 %26, 1
  store i64 %27, i64* %12
  br label %while_cond0
while_end2:
  %28 = load %nyx_string*, %nyx_string** %11
  ret %nyx_string* %28
}

define internal i64 @scan_number(%SharedEnv_tokenize* %env.param) {
  %1 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 6
  %8 = load i64, i64* %3
  %9 = alloca i64
  store i64 %8, i64* %9
  %10 = call i8 @peek(%SharedEnv_tokenize* %env.param)
  %11 = alloca i8
  store i8 %10, i8* %11
  %12 = call i8 @peek_next(%SharedEnv_tokenize* %env.param)
  %13 = alloca i8
  store i8 %12, i8* %13
  %14 = load i8, i8* %11
  %15 = getelementptr [1 x i8], [1 x i8]* @.str267, i32 0, i32 0
  %16 = load i8, i8* %15
  %17 = zext i8 %16 to i64
  %18 = zext i8 %14 to i64
  %19 = icmp eq i64 %18, %17
  %20 = load i8, i8* %13
  %21 = getelementptr [1 x i8], [1 x i8]* @.str268, i32 0, i32 0
  %22 = load i8, i8* %21
  %23 = zext i8 %22 to i64
  %24 = zext i8 %20 to i64
  %25 = icmp eq i64 %24, %23
  %26 = load i8, i8* %13
  %27 = getelementptr [1 x i8], [1 x i8]* @.str269, i32 0, i32 0
  %28 = load i8, i8* %27
  %29 = zext i8 %28 to i64
  %30 = zext i8 %26 to i64
  %31 = icmp eq i64 %30, %29
  %32 = or i1 %25, %31
  %33 = and i1 %19, %32
  br i1 %33, label %then0, label %else1
then0:
  %34 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %35 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %36 = load i64, i64* %3
  %37 = alloca i64
  store i64 %36, i64* %37
  %38 = alloca i1
  store i1 0, i1* %38
  br label %while_cond3
while_cond3:
  %39 = load i1, i1* %38
  %40 = xor i1 %39, true
  br i1 %40, label %while_body4, label %while_end5
while_body4:
  %41 = call i8 @peek(%SharedEnv_tokenize* %env.param)
  %42 = call i1 @is_hex_digit(%SharedEnv_tokenize* %env.param, i8 %41)
  br i1 %42, label %then6, label %else7
then6:
  %43 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  br label %merge8
else7:
  store i1 1, i1* %38
  br label %merge8
merge8:
  br label %while_cond3
while_end5:
  %44 = load %nyx_string*, %nyx_string** %2
  %45 = load i64, i64* %37
  %46 = load i64, i64* %3
  %47 = call %nyx_string* @nyx_string_substring(%nyx_string* %44, i64 %45, i64 %46)
  %48 = alloca %nyx_string*
  store %nyx_string* %47, %nyx_string** %48
  %49 = getelementptr [7 x i8], [7 x i8]* @.str270, i32 0, i32 0
  %50 = call %nyx_string* @nyx_string_from_cstr(i8* %49)
  %51 = load %nyx_string*, %nyx_string** %48
  %52 = call i64 @hex_to_int(%SharedEnv_tokenize* %env.param, %nyx_string* %51)
  %53 = call %nyx_string* @int_to_dec_string(%SharedEnv_tokenize* %env.param, i64 %52)
  %54 = call i64 @add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %50, %nyx_string* %53)
  br label %merge2
else1:
  %55 = load i8, i8* %11
  %56 = getelementptr [1 x i8], [1 x i8]* @.str271, i32 0, i32 0
  %57 = load i8, i8* %56
  %58 = zext i8 %57 to i64
  %59 = zext i8 %55 to i64
  %60 = icmp eq i64 %59, %58
  %61 = load i8, i8* %13
  %62 = getelementptr [1 x i8], [1 x i8]* @.str272, i32 0, i32 0
  %63 = load i8, i8* %62
  %64 = zext i8 %63 to i64
  %65 = zext i8 %61 to i64
  %66 = icmp eq i64 %65, %64
  %67 = load i8, i8* %13
  %68 = getelementptr [1 x i8], [1 x i8]* @.str273, i32 0, i32 0
  %69 = load i8, i8* %68
  %70 = zext i8 %69 to i64
  %71 = zext i8 %67 to i64
  %72 = icmp eq i64 %71, %70
  %73 = or i1 %66, %72
  %74 = and i1 %60, %73
  br i1 %74, label %then9, label %else10
then9:
  %75 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %76 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %77 = load i64, i64* %3
  %78 = alloca i64
  store i64 %77, i64* %78
  %79 = alloca i1
  store i1 0, i1* %79
  br label %while_cond12
while_cond12:
  %80 = load i1, i1* %79
  %81 = xor i1 %80, true
  br i1 %81, label %while_body13, label %while_end14
while_body13:
  %82 = call i8 @peek(%SharedEnv_tokenize* %env.param)
  %83 = alloca i8
  store i8 %82, i8* %83
  %84 = load i8, i8* %83
  %85 = getelementptr [1 x i8], [1 x i8]* @.str274, i32 0, i32 0
  %86 = load i8, i8* %85
  %87 = zext i8 %86 to i64
  %88 = zext i8 %84 to i64
  %89 = icmp eq i64 %88, %87
  %90 = load i8, i8* %83
  %91 = getelementptr [1 x i8], [1 x i8]* @.str275, i32 0, i32 0
  %92 = load i8, i8* %91
  %93 = zext i8 %92 to i64
  %94 = zext i8 %90 to i64
  %95 = icmp eq i64 %94, %93
  %96 = or i1 %89, %95
  br i1 %96, label %then15, label %else16
then15:
  %97 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  br label %merge17
else16:
  store i1 1, i1* %79
  br label %merge17
merge17:
  br label %while_cond12
while_end14:
  %98 = load %nyx_string*, %nyx_string** %2
  %99 = load i64, i64* %78
  %100 = load i64, i64* %3
  %101 = call %nyx_string* @nyx_string_substring(%nyx_string* %98, i64 %99, i64 %100)
  %102 = alloca %nyx_string*
  store %nyx_string* %101, %nyx_string** %102
  %103 = getelementptr [7 x i8], [7 x i8]* @.str276, i32 0, i32 0
  %104 = call %nyx_string* @nyx_string_from_cstr(i8* %103)
  %105 = load %nyx_string*, %nyx_string** %102
  %106 = call i64 @bin_to_int(%SharedEnv_tokenize* %env.param, %nyx_string* %105)
  %107 = call %nyx_string* @int_to_dec_string(%SharedEnv_tokenize* %env.param, i64 %106)
  %108 = call i64 @add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %104, %nyx_string* %107)
  br label %merge11
else10:
  %109 = load i8, i8* %11
  %110 = getelementptr [1 x i8], [1 x i8]* @.str277, i32 0, i32 0
  %111 = load i8, i8* %110
  %112 = zext i8 %111 to i64
  %113 = zext i8 %109 to i64
  %114 = icmp eq i64 %113, %112
  %115 = load i8, i8* %13
  %116 = getelementptr [1 x i8], [1 x i8]* @.str278, i32 0, i32 0
  %117 = load i8, i8* %116
  %118 = zext i8 %117 to i64
  %119 = zext i8 %115 to i64
  %120 = icmp eq i64 %119, %118
  %121 = load i8, i8* %13
  %122 = getelementptr [1 x i8], [1 x i8]* @.str279, i32 0, i32 0
  %123 = load i8, i8* %122
  %124 = zext i8 %123 to i64
  %125 = zext i8 %121 to i64
  %126 = icmp eq i64 %125, %124
  %127 = or i1 %120, %126
  %128 = and i1 %114, %127
  br i1 %128, label %then18, label %else19
then18:
  %129 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %130 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %131 = load i64, i64* %3
  %132 = alloca i64
  store i64 %131, i64* %132
  %133 = alloca i1
  store i1 0, i1* %133
  br label %while_cond21
while_cond21:
  %134 = load i1, i1* %133
  %135 = xor i1 %134, true
  br i1 %135, label %while_body22, label %while_end23
while_body22:
  %136 = call i8 @peek(%SharedEnv_tokenize* %env.param)
  %137 = alloca i8
  store i8 %136, i8* %137
  %138 = load i8, i8* %137
  %139 = getelementptr [1 x i8], [1 x i8]* @.str280, i32 0, i32 0
  %140 = load i8, i8* %139
  %141 = zext i8 %140 to i64
  %142 = zext i8 %138 to i64
  %143 = icmp eq i64 %142, %141
  %144 = load i8, i8* %137
  %145 = getelementptr [1 x i8], [1 x i8]* @.str281, i32 0, i32 0
  %146 = load i8, i8* %145
  %147 = zext i8 %146 to i64
  %148 = zext i8 %144 to i64
  %149 = icmp eq i64 %148, %147
  %150 = or i1 %143, %149
  %151 = load i8, i8* %137
  %152 = getelementptr [1 x i8], [1 x i8]* @.str282, i32 0, i32 0
  %153 = load i8, i8* %152
  %154 = zext i8 %153 to i64
  %155 = zext i8 %151 to i64
  %156 = icmp eq i64 %155, %154
  %157 = or i1 %150, %156
  %158 = load i8, i8* %137
  %159 = getelementptr [1 x i8], [1 x i8]* @.str283, i32 0, i32 0
  %160 = load i8, i8* %159
  %161 = zext i8 %160 to i64
  %162 = zext i8 %158 to i64
  %163 = icmp eq i64 %162, %161
  %164 = or i1 %157, %163
  %165 = load i8, i8* %137
  %166 = getelementptr [1 x i8], [1 x i8]* @.str284, i32 0, i32 0
  %167 = load i8, i8* %166
  %168 = zext i8 %167 to i64
  %169 = zext i8 %165 to i64
  %170 = icmp eq i64 %169, %168
  %171 = or i1 %164, %170
  %172 = load i8, i8* %137
  %173 = getelementptr [1 x i8], [1 x i8]* @.str285, i32 0, i32 0
  %174 = load i8, i8* %173
  %175 = zext i8 %174 to i64
  %176 = zext i8 %172 to i64
  %177 = icmp eq i64 %176, %175
  %178 = or i1 %171, %177
  %179 = load i8, i8* %137
  %180 = getelementptr [1 x i8], [1 x i8]* @.str286, i32 0, i32 0
  %181 = load i8, i8* %180
  %182 = zext i8 %181 to i64
  %183 = zext i8 %179 to i64
  %184 = icmp eq i64 %183, %182
  %185 = or i1 %178, %184
  %186 = load i8, i8* %137
  %187 = getelementptr [1 x i8], [1 x i8]* @.str287, i32 0, i32 0
  %188 = load i8, i8* %187
  %189 = zext i8 %188 to i64
  %190 = zext i8 %186 to i64
  %191 = icmp eq i64 %190, %189
  %192 = or i1 %185, %191
  br i1 %192, label %then24, label %else25
then24:
  %193 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  br label %merge26
else25:
  store i1 1, i1* %133
  br label %merge26
merge26:
  br label %while_cond21
while_end23:
  %194 = load %nyx_string*, %nyx_string** %2
  %195 = load i64, i64* %132
  %196 = load i64, i64* %3
  %197 = call %nyx_string* @nyx_string_substring(%nyx_string* %194, i64 %195, i64 %196)
  %198 = alloca %nyx_string*
  store %nyx_string* %197, %nyx_string** %198
  %199 = getelementptr [7 x i8], [7 x i8]* @.str288, i32 0, i32 0
  %200 = call %nyx_string* @nyx_string_from_cstr(i8* %199)
  %201 = load %nyx_string*, %nyx_string** %198
  %202 = call i64 @oct_to_int(%SharedEnv_tokenize* %env.param, %nyx_string* %201)
  %203 = call %nyx_string* @int_to_dec_string(%SharedEnv_tokenize* %env.param, i64 %202)
  %204 = call i64 @add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %200, %nyx_string* %203)
  br label %merge20
else19:
  %205 = alloca i1
  store i1 0, i1* %205
  br label %while_cond27
while_cond27:
  %206 = load i1, i1* %205
  %207 = xor i1 %206, true
  br i1 %207, label %while_body28, label %while_end29
while_body28:
  %208 = call i8 @peek(%SharedEnv_tokenize* %env.param)
  %209 = call i1 @is_digit(%SharedEnv_tokenize* %env.param, i8 %208)
  br i1 %209, label %then30, label %else31
then30:
  %210 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  br label %merge32
else31:
  store i1 1, i1* %205
  br label %merge32
merge32:
  br label %while_cond27
while_end29:
  %211 = call i8 @peek(%SharedEnv_tokenize* %env.param)
  %212 = getelementptr [1 x i8], [1 x i8]* @.str289, i32 0, i32 0
  %213 = load i8, i8* %212
  %214 = zext i8 %213 to i64
  %215 = zext i8 %211 to i64
  %216 = icmp eq i64 %215, %214
  %217 = call i8 @peek_next(%SharedEnv_tokenize* %env.param)
  %218 = call i1 @is_digit(%SharedEnv_tokenize* %env.param, i8 %217)
  %219 = and i1 %216, %218
  br i1 %219, label %then33, label %else34
then33:
  %220 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %221 = alloca i1
  store i1 0, i1* %221
  br label %while_cond36
while_cond36:
  %222 = load i1, i1* %221
  %223 = xor i1 %222, true
  br i1 %223, label %while_body37, label %while_end38
while_body37:
  %224 = call i8 @peek(%SharedEnv_tokenize* %env.param)
  %225 = call i1 @is_digit(%SharedEnv_tokenize* %env.param, i8 %224)
  br i1 %225, label %then39, label %else40
then39:
  %226 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  br label %merge41
else40:
  store i1 1, i1* %221
  br label %merge41
merge41:
  br label %while_cond36
while_end38:
  br label %merge35
else34:
  br label %merge35
merge35:
  %227 = call i8 @peek(%SharedEnv_tokenize* %env.param)
  %228 = call i1 @is_alpha(%SharedEnv_tokenize* %env.param, i8 %227)
  br i1 %228, label %then42, label %else43
then42:
  %229 = load i64, i64* %3
  %230 = alloca i64
  store i64 %229, i64* %230
  %231 = alloca i1
  store i1 0, i1* %231
  br label %while_cond45
while_cond45:
  %232 = load i1, i1* %231
  %233 = xor i1 %232, true
  br i1 %233, label %while_body46, label %while_end47
while_body46:
  %234 = call i8 @peek(%SharedEnv_tokenize* %env.param)
  %235 = call i1 @is_alphanumeric(%SharedEnv_tokenize* %env.param, i8 %234)
  br i1 %235, label %then48, label %else49
then48:
  %236 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  br label %merge50
else49:
  store i1 1, i1* %231
  br label %merge50
merge50:
  br label %while_cond45
while_end47:
  %237 = load %nyx_string*, %nyx_string** %2
  %238 = load i64, i64* %230
  %239 = load i64, i64* %3
  %240 = call %nyx_string* @nyx_string_substring(%nyx_string* %237, i64 %238, i64 %239)
  %241 = alloca %nyx_string*
  store %nyx_string* %240, %nyx_string** %241
  %242 = load %nyx_string*, %nyx_string** %241
  %243 = getelementptr [3 x i8], [3 x i8]* @.str290, i32 0, i32 0
  %244 = call %nyx_string* @nyx_string_from_cstr(i8* %243)
  %245 = call i8* @nyx_string_to_cstr(%nyx_string* %242)
  %246 = call i8* @nyx_string_to_cstr(%nyx_string* %244)
  %247 = call i32 @strcmp(i8* %245, i8* %246)
  %248 = icmp eq i32 %247, 0
  %249 = load %nyx_string*, %nyx_string** %241
  %250 = getelementptr [4 x i8], [4 x i8]* @.str291, i32 0, i32 0
  %251 = call %nyx_string* @nyx_string_from_cstr(i8* %250)
  %252 = call i8* @nyx_string_to_cstr(%nyx_string* %249)
  %253 = call i8* @nyx_string_to_cstr(%nyx_string* %251)
  %254 = call i32 @strcmp(i8* %252, i8* %253)
  %255 = icmp eq i32 %254, 0
  %256 = or i1 %248, %255
  %257 = load %nyx_string*, %nyx_string** %241
  %258 = getelementptr [4 x i8], [4 x i8]* @.str292, i32 0, i32 0
  %259 = call %nyx_string* @nyx_string_from_cstr(i8* %258)
  %260 = call i8* @nyx_string_to_cstr(%nyx_string* %257)
  %261 = call i8* @nyx_string_to_cstr(%nyx_string* %259)
  %262 = call i32 @strcmp(i8* %260, i8* %261)
  %263 = icmp eq i32 %262, 0
  %264 = or i1 %256, %263
  %265 = load %nyx_string*, %nyx_string** %241
  %266 = getelementptr [4 x i8], [4 x i8]* @.str293, i32 0, i32 0
  %267 = call %nyx_string* @nyx_string_from_cstr(i8* %266)
  %268 = call i8* @nyx_string_to_cstr(%nyx_string* %265)
  %269 = call i8* @nyx_string_to_cstr(%nyx_string* %267)
  %270 = call i32 @strcmp(i8* %268, i8* %269)
  %271 = icmp eq i32 %270, 0
  %272 = or i1 %264, %271
  %273 = load %nyx_string*, %nyx_string** %241
  %274 = getelementptr [3 x i8], [3 x i8]* @.str294, i32 0, i32 0
  %275 = call %nyx_string* @nyx_string_from_cstr(i8* %274)
  %276 = call i8* @nyx_string_to_cstr(%nyx_string* %273)
  %277 = call i8* @nyx_string_to_cstr(%nyx_string* %275)
  %278 = call i32 @strcmp(i8* %276, i8* %277)
  %279 = icmp eq i32 %278, 0
  %280 = or i1 %272, %279
  %281 = load %nyx_string*, %nyx_string** %241
  %282 = getelementptr [4 x i8], [4 x i8]* @.str295, i32 0, i32 0
  %283 = call %nyx_string* @nyx_string_from_cstr(i8* %282)
  %284 = call i8* @nyx_string_to_cstr(%nyx_string* %281)
  %285 = call i8* @nyx_string_to_cstr(%nyx_string* %283)
  %286 = call i32 @strcmp(i8* %284, i8* %285)
  %287 = icmp eq i32 %286, 0
  %288 = or i1 %280, %287
  %289 = load %nyx_string*, %nyx_string** %241
  %290 = getelementptr [4 x i8], [4 x i8]* @.str296, i32 0, i32 0
  %291 = call %nyx_string* @nyx_string_from_cstr(i8* %290)
  %292 = call i8* @nyx_string_to_cstr(%nyx_string* %289)
  %293 = call i8* @nyx_string_to_cstr(%nyx_string* %291)
  %294 = call i32 @strcmp(i8* %292, i8* %293)
  %295 = icmp eq i32 %294, 0
  %296 = or i1 %288, %295
  %297 = load %nyx_string*, %nyx_string** %241
  %298 = getelementptr [4 x i8], [4 x i8]* @.str297, i32 0, i32 0
  %299 = call %nyx_string* @nyx_string_from_cstr(i8* %298)
  %300 = call i8* @nyx_string_to_cstr(%nyx_string* %297)
  %301 = call i8* @nyx_string_to_cstr(%nyx_string* %299)
  %302 = call i32 @strcmp(i8* %300, i8* %301)
  %303 = icmp eq i32 %302, 0
  %304 = or i1 %296, %303
  %305 = load %nyx_string*, %nyx_string** %241
  %306 = getelementptr [4 x i8], [4 x i8]* @.str298, i32 0, i32 0
  %307 = call %nyx_string* @nyx_string_from_cstr(i8* %306)
  %308 = call i8* @nyx_string_to_cstr(%nyx_string* %305)
  %309 = call i8* @nyx_string_to_cstr(%nyx_string* %307)
  %310 = call i32 @strcmp(i8* %308, i8* %309)
  %311 = icmp eq i32 %310, 0
  %312 = or i1 %304, %311
  %313 = load %nyx_string*, %nyx_string** %241
  %314 = getelementptr [6 x i8], [6 x i8]* @.str299, i32 0, i32 0
  %315 = call %nyx_string* @nyx_string_from_cstr(i8* %314)
  %316 = call i8* @nyx_string_to_cstr(%nyx_string* %313)
  %317 = call i8* @nyx_string_to_cstr(%nyx_string* %315)
  %318 = call i32 @strcmp(i8* %316, i8* %317)
  %319 = icmp eq i32 %318, 0
  %320 = or i1 %312, %319
  br i1 %320, label %then51, label %else52
then51:
  %321 = load %nyx_string*, %nyx_string** %2
  %322 = load i64, i64* %9
  %323 = load i64, i64* %3
  %324 = call %nyx_string* @nyx_string_substring(%nyx_string* %321, i64 %322, i64 %323)
  %325 = alloca %nyx_string*
  store %nyx_string* %324, %nyx_string** %325
  %326 = getelementptr [7 x i8], [7 x i8]* @.str300, i32 0, i32 0
  %327 = call %nyx_string* @nyx_string_from_cstr(i8* %326)
  %328 = load %nyx_string*, %nyx_string** %325
  %329 = call i64 @add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %327, %nyx_string* %328)
  br label %merge53
else52:
  %330 = load i64, i64* %230
  store i64 %330, i64* %3
  %331 = load %nyx_string*, %nyx_string** %2
  %332 = load i64, i64* %9
  %333 = load i64, i64* %3
  %334 = call %nyx_string* @nyx_string_substring(%nyx_string* %331, i64 %332, i64 %333)
  %335 = alloca %nyx_string*
  store %nyx_string* %334, %nyx_string** %335
  %336 = getelementptr [7 x i8], [7 x i8]* @.str301, i32 0, i32 0
  %337 = call %nyx_string* @nyx_string_from_cstr(i8* %336)
  %338 = load %nyx_string*, %nyx_string** %335
  %339 = call i64 @add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %337, %nyx_string* %338)
  br label %merge53
merge53:
  br label %merge44
else43:
  %340 = load %nyx_string*, %nyx_string** %2
  %341 = load i64, i64* %9
  %342 = load i64, i64* %3
  %343 = call %nyx_string* @nyx_string_substring(%nyx_string* %340, i64 %341, i64 %342)
  %344 = alloca %nyx_string*
  store %nyx_string* %343, %nyx_string** %344
  %345 = getelementptr [7 x i8], [7 x i8]* @.str302, i32 0, i32 0
  %346 = call %nyx_string* @nyx_string_from_cstr(i8* %345)
  %347 = load %nyx_string*, %nyx_string** %344
  %348 = call i64 @add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %346, %nyx_string* %347)
  br label %merge44
merge44:
  br label %merge20
merge20:
  br label %merge11
merge11:
  br label %merge2
merge2:
  ret i64 0
}

define internal i64 @scan_string_chars(%SharedEnv_tokenize* %env.param, { i64, i8* }* %chars.param) {
  %1 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 6
  %8 = alloca { i64, i8* }*
  store { i64, i8* }* %chars.param, { i64, i8* }** %8
  %9 = alloca i1
  store i1 0, i1* %9
  br label %while_cond0
while_cond0:
  %10 = load i1, i1* %9
  %11 = xor i1 %10, true
  br i1 %11, label %while_body1, label %while_end2
while_body1:
  %12 = call i1 @at_end(%SharedEnv_tokenize* %env.param)
  br i1 %12, label %then3, label %else4
then3:
  %13 = getelementptr [25 x i8], [25 x i8]* @.str303, i32 0, i32 0
  %14 = call %nyx_string* @nyx_string_from_cstr(i8* %13)
  %15 = call i8* @nyx_string_to_cstr(%nyx_string* %14)
  call void @nyx_print_string(i8* %15)
  store i1 1, i1* %9
  br label %merge5
else4:
  %16 = call i8 @peek(%SharedEnv_tokenize* %env.param)
  %17 = alloca i8
  store i8 %16, i8* %17
  %18 = load i8, i8* %17
  %19 = getelementptr [1 x i8], [1 x i8]* @.str304, i32 0, i32 0
  %20 = load i8, i8* %19
  %21 = zext i8 %20 to i64
  %22 = zext i8 %18 to i64
  %23 = icmp eq i64 %22, %21
  br i1 %23, label %then6, label %else7
then6:
  %24 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %25 = getelementptr [7 x i8], [7 x i8]* @.str305, i32 0, i32 0
  %26 = call %nyx_string* @nyx_string_from_cstr(i8* %25)
  %27 = load { i64, i8* }*, { i64, i8* }** %8
  %28 = call %nyx_string* @build_string_from_chars(%SharedEnv_tokenize* %env.param, { i64, i8* }* %27)
  %29 = call i64 @add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %26, %nyx_string* %28)
  store i1 1, i1* %9
  br label %merge8
else7:
  %30 = load i8, i8* %17
  %31 = getelementptr [1 x i8], [1 x i8]* @.str306, i32 0, i32 0
  %32 = load i8, i8* %31
  %33 = zext i8 %32 to i64
  %34 = zext i8 %30 to i64
  %35 = icmp eq i64 %34, %33
  %36 = call i8 @peek_next(%SharedEnv_tokenize* %env.param)
  %37 = getelementptr [1 x i8], [1 x i8]* @.str307, i32 0, i32 0
  %38 = load i8, i8* %37
  %39 = zext i8 %38 to i64
  %40 = zext i8 %36 to i64
  %41 = icmp eq i64 %40, %39
  %42 = and i1 %35, %41
  br i1 %42, label %then9, label %else10
then9:
  %43 = getelementptr [7 x i8], [7 x i8]* @.str308, i32 0, i32 0
  %44 = call %nyx_string* @nyx_string_from_cstr(i8* %43)
  %45 = load { i64, i8* }*, { i64, i8* }** %8
  %46 = call %nyx_string* @build_string_from_chars(%SharedEnv_tokenize* %env.param, { i64, i8* }* %45)
  %47 = call i64 @add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %44, %nyx_string* %46)
  %48 = getelementptr [5 x i8], [5 x i8]* @.str309, i32 0, i32 0
  %49 = call %nyx_string* @nyx_string_from_cstr(i8* %48)
  %50 = getelementptr [2 x i8], [2 x i8]* @.str310, i32 0, i32 0
  %51 = call %nyx_string* @nyx_string_from_cstr(i8* %50)
  %52 = call i64 @add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %49, %nyx_string* %51)
  %53 = getelementptr [11 x i8], [11 x i8]* @.str311, i32 0, i32 0
  %54 = call %nyx_string* @nyx_string_from_cstr(i8* %53)
  %55 = getelementptr [2 x i8], [2 x i8]* @.str312, i32 0, i32 0
  %56 = call %nyx_string* @nyx_string_from_cstr(i8* %55)
  %57 = call i64 @add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %54, %nyx_string* %56)
  %58 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %59 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %60 = load i64, i64* %7
  %61 = add i64 %60, 1
  store i64 %61, i64* %7
  store i1 1, i1* %9
  br label %merge11
else10:
  %62 = load i8, i8* %17
  %63 = getelementptr [1 x i8], [1 x i8]* @.str313, i32 0, i32 0
  %64 = load i8, i8* %63
  %65 = zext i8 %64 to i64
  %66 = zext i8 %62 to i64
  %67 = icmp eq i64 %66, %65
  br i1 %67, label %then12, label %else13
then12:
  %68 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %69 = call i8 @peek(%SharedEnv_tokenize* %env.param)
  %70 = alloca i8
  store i8 %69, i8* %70
  %71 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %72 = load i8, i8* %70
  %73 = getelementptr [1 x i8], [1 x i8]* @.str314, i32 0, i32 0
  %74 = load i8, i8* %73
  %75 = zext i8 %74 to i64
  %76 = zext i8 %72 to i64
  %77 = icmp eq i64 %76, %75
  br i1 %77, label %then15, label %else16
then15:
  %78 = load { i64, i8* }*, { i64, i8* }** %8
  %79 = getelementptr [1 x i8], [1 x i8]* @.str315, i32 0, i32 0
  %80 = load i8, i8* %79
  %81 = zext i8 %80 to i64
  call void @nyx_array_push({ i64, i8* }* %78, i64 %81)
  br label %merge17
else16:
  %82 = load i8, i8* %70
  %83 = getelementptr [1 x i8], [1 x i8]* @.str316, i32 0, i32 0
  %84 = load i8, i8* %83
  %85 = zext i8 %84 to i64
  %86 = zext i8 %82 to i64
  %87 = icmp eq i64 %86, %85
  br i1 %87, label %then18, label %else19
then18:
  %88 = load { i64, i8* }*, { i64, i8* }** %8
  %89 = getelementptr [1 x i8], [1 x i8]* @.str317, i32 0, i32 0
  %90 = load i8, i8* %89
  %91 = zext i8 %90 to i64
  call void @nyx_array_push({ i64, i8* }* %88, i64 %91)
  br label %merge20
else19:
  %92 = load i8, i8* %70
  %93 = getelementptr [1 x i8], [1 x i8]* @.str318, i32 0, i32 0
  %94 = load i8, i8* %93
  %95 = zext i8 %94 to i64
  %96 = zext i8 %92 to i64
  %97 = icmp eq i64 %96, %95
  br i1 %97, label %then21, label %else22
then21:
  %98 = load { i64, i8* }*, { i64, i8* }** %8
  %99 = getelementptr [1 x i8], [1 x i8]* @.str319, i32 0, i32 0
  %100 = load i8, i8* %99
  %101 = zext i8 %100 to i64
  call void @nyx_array_push({ i64, i8* }* %98, i64 %101)
  br label %merge23
else22:
  %102 = load i8, i8* %70
  %103 = getelementptr [1 x i8], [1 x i8]* @.str320, i32 0, i32 0
  %104 = load i8, i8* %103
  %105 = zext i8 %104 to i64
  %106 = zext i8 %102 to i64
  %107 = icmp eq i64 %106, %105
  br i1 %107, label %then24, label %else25
then24:
  %108 = load { i64, i8* }*, { i64, i8* }** %8
  %109 = getelementptr [1 x i8], [1 x i8]* @.str321, i32 0, i32 0
  %110 = load i8, i8* %109
  %111 = zext i8 %110 to i64
  call void @nyx_array_push({ i64, i8* }* %108, i64 %111)
  br label %merge26
else25:
  %112 = load i8, i8* %70
  %113 = getelementptr [1 x i8], [1 x i8]* @.str322, i32 0, i32 0
  %114 = load i8, i8* %113
  %115 = zext i8 %114 to i64
  %116 = zext i8 %112 to i64
  %117 = icmp eq i64 %116, %115
  br i1 %117, label %then27, label %else28
then27:
  %118 = trunc i64 13 to i8
  %119 = alloca i8
  store i8 %118, i8* %119
  %120 = load { i64, i8* }*, { i64, i8* }** %8
  %121 = load i8, i8* %119
  %122 = zext i8 %121 to i64
  call void @nyx_array_push({ i64, i8* }* %120, i64 %122)
  br label %merge29
else28:
  %123 = load i8, i8* %70
  %124 = getelementptr [1 x i8], [1 x i8]* @.str323, i32 0, i32 0
  %125 = load i8, i8* %124
  %126 = zext i8 %125 to i64
  %127 = zext i8 %123 to i64
  %128 = icmp eq i64 %127, %126
  br i1 %128, label %then30, label %else31
then30:
  %129 = trunc i64 0 to i8
  %130 = alloca i8
  store i8 %129, i8* %130
  %131 = load { i64, i8* }*, { i64, i8* }** %8
  %132 = load i8, i8* %130
  %133 = zext i8 %132 to i64
  call void @nyx_array_push({ i64, i8* }* %131, i64 %133)
  br label %merge32
else31:
  %134 = load { i64, i8* }*, { i64, i8* }** %8
  %135 = load i8, i8* %70
  %136 = zext i8 %135 to i64
  call void @nyx_array_push({ i64, i8* }* %134, i64 %136)
  br label %merge32
merge32:
  br label %merge29
merge29:
  br label %merge26
merge26:
  br label %merge23
merge23:
  br label %merge20
merge20:
  br label %merge17
merge17:
  br label %merge14
else13:
  %137 = load { i64, i8* }*, { i64, i8* }** %8
  %138 = load i8, i8* %17
  %139 = zext i8 %138 to i64
  call void @nyx_array_push({ i64, i8* }* %137, i64 %139)
  %140 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  br label %merge14
merge14:
  br label %merge11
merge11:
  br label %merge8
merge8:
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  ret i64 0
}

define internal i64 @scan_multiline_string(%SharedEnv_tokenize* %env.param) {
  %1 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 6
  %8 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %9 = call i8 @peek(%SharedEnv_tokenize* %env.param)
  %10 = getelementptr [1 x i8], [1 x i8]* @.str324, i32 0, i32 0
  %11 = load i8, i8* %10
  %12 = zext i8 %11 to i64
  %13 = zext i8 %9 to i64
  %14 = icmp eq i64 %13, %12
  br i1 %14, label %then0, label %else1
then0:
  %15 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %16 = call { i64, i8* }* @nyx_array_new_ptr()
  %17 = alloca { i64, i8* }*
  store { i64, i8* }* %16, { i64, i8* }** %17
  %18 = alloca i1
  store i1 0, i1* %18
  br label %while_cond3
while_cond3:
  %19 = load i1, i1* %18
  %20 = xor i1 %19, true
  br i1 %20, label %while_body4, label %while_end5
while_body4:
  %21 = call i1 @at_end(%SharedEnv_tokenize* %env.param)
  br i1 %21, label %then6, label %else7
then6:
  %22 = getelementptr [37 x i8], [37 x i8]* @.str325, i32 0, i32 0
  %23 = call %nyx_string* @nyx_string_from_cstr(i8* %22)
  %24 = call i8* @nyx_string_to_cstr(%nyx_string* %23)
  call void @nyx_print_string(i8* %24)
  store i1 1, i1* %18
  br label %merge8
else7:
  %25 = call i8 @peek(%SharedEnv_tokenize* %env.param)
  %26 = alloca i8
  store i8 %25, i8* %26
  %27 = load i8, i8* %26
  %28 = getelementptr [1 x i8], [1 x i8]* @.str326, i32 0, i32 0
  %29 = load i8, i8* %28
  %30 = zext i8 %29 to i64
  %31 = zext i8 %27 to i64
  %32 = icmp eq i64 %31, %30
  %33 = call i8 @peek_next(%SharedEnv_tokenize* %env.param)
  %34 = getelementptr [1 x i8], [1 x i8]* @.str327, i32 0, i32 0
  %35 = load i8, i8* %34
  %36 = zext i8 %35 to i64
  %37 = zext i8 %33 to i64
  %38 = icmp eq i64 %37, %36
  %39 = and i1 %32, %38
  br i1 %39, label %then9, label %else10
then9:
  %40 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %41 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %42 = call i1 @at_end(%SharedEnv_tokenize* %env.param)
  br i1 %42, label %then12, label %else13
then12:
  %43 = load { i64, i8* }*, { i64, i8* }** %17
  %44 = getelementptr [1 x i8], [1 x i8]* @.str328, i32 0, i32 0
  %45 = load i8, i8* %44
  %46 = zext i8 %45 to i64
  call void @nyx_array_push({ i64, i8* }* %43, i64 %46)
  %47 = load { i64, i8* }*, { i64, i8* }** %17
  %48 = getelementptr [1 x i8], [1 x i8]* @.str329, i32 0, i32 0
  %49 = load i8, i8* %48
  %50 = zext i8 %49 to i64
  call void @nyx_array_push({ i64, i8* }* %47, i64 %50)
  br label %merge14
else13:
  %51 = call i8 @peek(%SharedEnv_tokenize* %env.param)
  %52 = getelementptr [1 x i8], [1 x i8]* @.str330, i32 0, i32 0
  %53 = load i8, i8* %52
  %54 = zext i8 %53 to i64
  %55 = zext i8 %51 to i64
  %56 = icmp eq i64 %55, %54
  br i1 %56, label %then15, label %else16
then15:
  %57 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  store i1 1, i1* %18
  br label %merge17
else16:
  %58 = load { i64, i8* }*, { i64, i8* }** %17
  %59 = getelementptr [1 x i8], [1 x i8]* @.str331, i32 0, i32 0
  %60 = load i8, i8* %59
  %61 = zext i8 %60 to i64
  call void @nyx_array_push({ i64, i8* }* %58, i64 %61)
  %62 = load { i64, i8* }*, { i64, i8* }** %17
  %63 = getelementptr [1 x i8], [1 x i8]* @.str332, i32 0, i32 0
  %64 = load i8, i8* %63
  %65 = zext i8 %64 to i64
  call void @nyx_array_push({ i64, i8* }* %62, i64 %65)
  br label %merge17
merge17:
  br label %merge14
merge14:
  br label %merge11
else10:
  %66 = load { i64, i8* }*, { i64, i8* }** %17
  %67 = load i8, i8* %26
  %68 = zext i8 %67 to i64
  call void @nyx_array_push({ i64, i8* }* %66, i64 %68)
  %69 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  br label %merge11
merge11:
  br label %merge8
merge8:
  br label %while_cond3
while_end5:
  %70 = getelementptr [7 x i8], [7 x i8]* @.str333, i32 0, i32 0
  %71 = call %nyx_string* @nyx_string_from_cstr(i8* %70)
  %72 = load { i64, i8* }*, { i64, i8* }** %17
  %73 = call %nyx_string* @build_string_from_chars(%SharedEnv_tokenize* %env.param, { i64, i8* }* %72)
  %74 = call i64 @add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %71, %nyx_string* %73)
  br label %merge2
else1:
  %75 = getelementptr [7 x i8], [7 x i8]* @.str334, i32 0, i32 0
  %76 = call %nyx_string* @nyx_string_from_cstr(i8* %75)
  %77 = getelementptr [1 x i8], [1 x i8]* @.str335, i32 0, i32 0
  %78 = call %nyx_string* @nyx_string_from_cstr(i8* %77)
  %79 = call i64 @add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %76, %nyx_string* %78)
  br label %merge2
merge2:
  ret i64 0
}

define internal i64 @scan_raw_string(%SharedEnv_tokenize* %env.param) {
  %1 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 6
  %8 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %9 = call { i64, i8* }* @nyx_array_new_ptr()
  %10 = alloca { i64, i8* }*
  store { i64, i8* }* %9, { i64, i8* }** %10
  %11 = alloca i1
  store i1 0, i1* %11
  br label %while_cond0
while_cond0:
  %12 = load i1, i1* %11
  %13 = xor i1 %12, true
  br i1 %13, label %while_body1, label %while_end2
while_body1:
  %14 = call i1 @at_end(%SharedEnv_tokenize* %env.param)
  br i1 %14, label %then3, label %else4
then3:
  %15 = getelementptr [31 x i8], [31 x i8]* @.str336, i32 0, i32 0
  %16 = call %nyx_string* @nyx_string_from_cstr(i8* %15)
  %17 = call i8* @nyx_string_to_cstr(%nyx_string* %16)
  call void @nyx_print_string(i8* %17)
  store i1 1, i1* %11
  br label %merge5
else4:
  %18 = call i8 @peek(%SharedEnv_tokenize* %env.param)
  %19 = alloca i8
  store i8 %18, i8* %19
  %20 = load i8, i8* %19
  %21 = getelementptr [1 x i8], [1 x i8]* @.str337, i32 0, i32 0
  %22 = load i8, i8* %21
  %23 = zext i8 %22 to i64
  %24 = zext i8 %20 to i64
  %25 = icmp eq i64 %24, %23
  br i1 %25, label %then6, label %else7
then6:
  %26 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  store i1 1, i1* %11
  br label %merge8
else7:
  %27 = load { i64, i8* }*, { i64, i8* }** %10
  %28 = load i8, i8* %19
  %29 = zext i8 %28 to i64
  call void @nyx_array_push({ i64, i8* }* %27, i64 %29)
  %30 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  br label %merge8
merge8:
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %31 = getelementptr [7 x i8], [7 x i8]* @.str338, i32 0, i32 0
  %32 = call %nyx_string* @nyx_string_from_cstr(i8* %31)
  %33 = load { i64, i8* }*, { i64, i8* }** %10
  %34 = call %nyx_string* @build_string_from_chars(%SharedEnv_tokenize* %env.param, { i64, i8* }* %33)
  %35 = call i64 @add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %32, %nyx_string* %34)
  ret i64 0
}

define internal i64 @scan_string(%SharedEnv_tokenize* %env.param) {
  %1 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 6
  %8 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %9 = call { i64, i8* }* @nyx_array_new_ptr()
  %10 = alloca { i64, i8* }*
  store { i64, i8* }* %9, { i64, i8* }** %10
  %11 = load { i64, i8* }*, { i64, i8* }** %10
  %12 = call i64 @scan_string_chars(%SharedEnv_tokenize* %env.param, { i64, i8* }* %11)
  ret i64 0
}

define internal i64 @scan_string_rest(%SharedEnv_tokenize* %env.param) {
  %1 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 6
  %8 = call { i64, i8* }* @nyx_array_new_ptr()
  %9 = alloca { i64, i8* }*
  store { i64, i8* }* %8, { i64, i8* }** %9
  %10 = alloca i1
  store i1 0, i1* %10
  br label %while_cond0
while_cond0:
  %11 = load i1, i1* %10
  %12 = xor i1 %11, true
  br i1 %12, label %while_body1, label %while_end2
while_body1:
  %13 = call i1 @at_end(%SharedEnv_tokenize* %env.param)
  br i1 %13, label %then3, label %else4
then3:
  %14 = getelementptr [25 x i8], [25 x i8]* @.str339, i32 0, i32 0
  %15 = call %nyx_string* @nyx_string_from_cstr(i8* %14)
  %16 = call i8* @nyx_string_to_cstr(%nyx_string* %15)
  call void @nyx_print_string(i8* %16)
  store i1 1, i1* %10
  br label %merge5
else4:
  %17 = call i8 @peek(%SharedEnv_tokenize* %env.param)
  %18 = alloca i8
  store i8 %17, i8* %18
  %19 = load i8, i8* %18
  %20 = getelementptr [1 x i8], [1 x i8]* @.str340, i32 0, i32 0
  %21 = load i8, i8* %20
  %22 = zext i8 %21 to i64
  %23 = zext i8 %19 to i64
  %24 = icmp eq i64 %23, %22
  br i1 %24, label %then6, label %else7
then6:
  %25 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %26 = load { i64, i8* }*, { i64, i8* }** %9
  %27 = call %nyx_string* @build_string_from_chars(%SharedEnv_tokenize* %env.param, { i64, i8* }* %26)
  %28 = alloca %nyx_string*
  store %nyx_string* %27, %nyx_string** %28
  %29 = load %nyx_string*, %nyx_string** %28
  %30 = call i64 @nyx_string_byte_length(%nyx_string* %29)
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %then9, label %else10
then9:
  %32 = getelementptr [5 x i8], [5 x i8]* @.str341, i32 0, i32 0
  %33 = call %nyx_string* @nyx_string_from_cstr(i8* %32)
  %34 = getelementptr [2 x i8], [2 x i8]* @.str342, i32 0, i32 0
  %35 = call %nyx_string* @nyx_string_from_cstr(i8* %34)
  %36 = call i64 @add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %33, %nyx_string* %35)
  %37 = getelementptr [7 x i8], [7 x i8]* @.str343, i32 0, i32 0
  %38 = call %nyx_string* @nyx_string_from_cstr(i8* %37)
  %39 = load %nyx_string*, %nyx_string** %28
  %40 = call i64 @add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %38, %nyx_string* %39)
  br label %merge11
else10:
  br label %merge11
merge11:
  store i1 1, i1* %10
  br label %merge8
else7:
  %41 = load i8, i8* %18
  %42 = getelementptr [1 x i8], [1 x i8]* @.str344, i32 0, i32 0
  %43 = load i8, i8* %42
  %44 = zext i8 %43 to i64
  %45 = zext i8 %41 to i64
  %46 = icmp eq i64 %45, %44
  %47 = call i8 @peek_next(%SharedEnv_tokenize* %env.param)
  %48 = getelementptr [1 x i8], [1 x i8]* @.str345, i32 0, i32 0
  %49 = load i8, i8* %48
  %50 = zext i8 %49 to i64
  %51 = zext i8 %47 to i64
  %52 = icmp eq i64 %51, %50
  %53 = and i1 %46, %52
  br i1 %53, label %then12, label %else13
then12:
  %54 = load { i64, i8* }*, { i64, i8* }** %9
  %55 = call %nyx_string* @build_string_from_chars(%SharedEnv_tokenize* %env.param, { i64, i8* }* %54)
  %56 = alloca %nyx_string*
  store %nyx_string* %55, %nyx_string** %56
  %57 = load %nyx_string*, %nyx_string** %56
  %58 = call i64 @nyx_string_byte_length(%nyx_string* %57)
  %59 = icmp sgt i64 %58, 0
  br i1 %59, label %then15, label %else16
then15:
  %60 = getelementptr [5 x i8], [5 x i8]* @.str346, i32 0, i32 0
  %61 = call %nyx_string* @nyx_string_from_cstr(i8* %60)
  %62 = getelementptr [2 x i8], [2 x i8]* @.str347, i32 0, i32 0
  %63 = call %nyx_string* @nyx_string_from_cstr(i8* %62)
  %64 = call i64 @add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %61, %nyx_string* %63)
  %65 = getelementptr [7 x i8], [7 x i8]* @.str348, i32 0, i32 0
  %66 = call %nyx_string* @nyx_string_from_cstr(i8* %65)
  %67 = load %nyx_string*, %nyx_string** %56
  %68 = call i64 @add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %66, %nyx_string* %67)
  br label %merge17
else16:
  br label %merge17
merge17:
  %69 = getelementptr [5 x i8], [5 x i8]* @.str349, i32 0, i32 0
  %70 = call %nyx_string* @nyx_string_from_cstr(i8* %69)
  %71 = getelementptr [2 x i8], [2 x i8]* @.str350, i32 0, i32 0
  %72 = call %nyx_string* @nyx_string_from_cstr(i8* %71)
  %73 = call i64 @add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %70, %nyx_string* %72)
  %74 = getelementptr [11 x i8], [11 x i8]* @.str351, i32 0, i32 0
  %75 = call %nyx_string* @nyx_string_from_cstr(i8* %74)
  %76 = getelementptr [2 x i8], [2 x i8]* @.str352, i32 0, i32 0
  %77 = call %nyx_string* @nyx_string_from_cstr(i8* %76)
  %78 = call i64 @add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %75, %nyx_string* %77)
  %79 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %80 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %81 = load i64, i64* %7
  %82 = add i64 %81, 1
  store i64 %82, i64* %7
  store i1 1, i1* %10
  br label %merge14
else13:
  %83 = load i8, i8* %18
  %84 = getelementptr [1 x i8], [1 x i8]* @.str353, i32 0, i32 0
  %85 = load i8, i8* %84
  %86 = zext i8 %85 to i64
  %87 = zext i8 %83 to i64
  %88 = icmp eq i64 %87, %86
  br i1 %88, label %then18, label %else19
then18:
  %89 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %90 = call i8 @peek(%SharedEnv_tokenize* %env.param)
  %91 = alloca i8
  store i8 %90, i8* %91
  %92 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %93 = load i8, i8* %91
  %94 = getelementptr [1 x i8], [1 x i8]* @.str354, i32 0, i32 0
  %95 = load i8, i8* %94
  %96 = zext i8 %95 to i64
  %97 = zext i8 %93 to i64
  %98 = icmp eq i64 %97, %96
  br i1 %98, label %then21, label %else22
then21:
  %99 = load { i64, i8* }*, { i64, i8* }** %9
  %100 = getelementptr [1 x i8], [1 x i8]* @.str355, i32 0, i32 0
  %101 = load i8, i8* %100
  %102 = zext i8 %101 to i64
  call void @nyx_array_push({ i64, i8* }* %99, i64 %102)
  br label %merge23
else22:
  %103 = load i8, i8* %91
  %104 = getelementptr [1 x i8], [1 x i8]* @.str356, i32 0, i32 0
  %105 = load i8, i8* %104
  %106 = zext i8 %105 to i64
  %107 = zext i8 %103 to i64
  %108 = icmp eq i64 %107, %106
  br i1 %108, label %then24, label %else25
then24:
  %109 = load { i64, i8* }*, { i64, i8* }** %9
  %110 = getelementptr [1 x i8], [1 x i8]* @.str357, i32 0, i32 0
  %111 = load i8, i8* %110
  %112 = zext i8 %111 to i64
  call void @nyx_array_push({ i64, i8* }* %109, i64 %112)
  br label %merge26
else25:
  %113 = load i8, i8* %91
  %114 = getelementptr [1 x i8], [1 x i8]* @.str358, i32 0, i32 0
  %115 = load i8, i8* %114
  %116 = zext i8 %115 to i64
  %117 = zext i8 %113 to i64
  %118 = icmp eq i64 %117, %116
  br i1 %118, label %then27, label %else28
then27:
  %119 = load { i64, i8* }*, { i64, i8* }** %9
  %120 = getelementptr [1 x i8], [1 x i8]* @.str359, i32 0, i32 0
  %121 = load i8, i8* %120
  %122 = zext i8 %121 to i64
  call void @nyx_array_push({ i64, i8* }* %119, i64 %122)
  br label %merge29
else28:
  %123 = load i8, i8* %91
  %124 = getelementptr [1 x i8], [1 x i8]* @.str360, i32 0, i32 0
  %125 = load i8, i8* %124
  %126 = zext i8 %125 to i64
  %127 = zext i8 %123 to i64
  %128 = icmp eq i64 %127, %126
  br i1 %128, label %then30, label %else31
then30:
  %129 = load { i64, i8* }*, { i64, i8* }** %9
  %130 = getelementptr [1 x i8], [1 x i8]* @.str361, i32 0, i32 0
  %131 = load i8, i8* %130
  %132 = zext i8 %131 to i64
  call void @nyx_array_push({ i64, i8* }* %129, i64 %132)
  br label %merge32
else31:
  %133 = load i8, i8* %91
  %134 = getelementptr [1 x i8], [1 x i8]* @.str362, i32 0, i32 0
  %135 = load i8, i8* %134
  %136 = zext i8 %135 to i64
  %137 = zext i8 %133 to i64
  %138 = icmp eq i64 %137, %136
  br i1 %138, label %then33, label %else34
then33:
  %139 = trunc i64 13 to i8
  %140 = alloca i8
  store i8 %139, i8* %140
  %141 = load { i64, i8* }*, { i64, i8* }** %9
  %142 = load i8, i8* %140
  %143 = zext i8 %142 to i64
  call void @nyx_array_push({ i64, i8* }* %141, i64 %143)
  br label %merge35
else34:
  %144 = load i8, i8* %91
  %145 = getelementptr [1 x i8], [1 x i8]* @.str363, i32 0, i32 0
  %146 = load i8, i8* %145
  %147 = zext i8 %146 to i64
  %148 = zext i8 %144 to i64
  %149 = icmp eq i64 %148, %147
  br i1 %149, label %then36, label %else37
then36:
  %150 = trunc i64 0 to i8
  %151 = alloca i8
  store i8 %150, i8* %151
  %152 = load { i64, i8* }*, { i64, i8* }** %9
  %153 = load i8, i8* %151
  %154 = zext i8 %153 to i64
  call void @nyx_array_push({ i64, i8* }* %152, i64 %154)
  br label %merge38
else37:
  %155 = load { i64, i8* }*, { i64, i8* }** %9
  %156 = load i8, i8* %91
  %157 = zext i8 %156 to i64
  call void @nyx_array_push({ i64, i8* }* %155, i64 %157)
  br label %merge38
merge38:
  br label %merge35
merge35:
  br label %merge32
merge32:
  br label %merge29
merge29:
  br label %merge26
merge26:
  br label %merge23
merge23:
  br label %merge20
else19:
  %158 = load { i64, i8* }*, { i64, i8* }** %9
  %159 = load i8, i8* %18
  %160 = zext i8 %159 to i64
  call void @nyx_array_push({ i64, i8* }* %158, i64 %160)
  %161 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  br label %merge20
merge20:
  br label %merge14
merge14:
  br label %merge8
merge8:
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  ret i64 0
}

define internal i64 @scan_lifetime(%SharedEnv_tokenize* %env.param) {
  %1 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 6
  %8 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %9 = load i64, i64* %3
  %10 = alloca i64
  store i64 %9, i64* %10
  %11 = alloca i1
  store i1 0, i1* %11
  br label %while_cond0
while_cond0:
  %12 = load i1, i1* %11
  %13 = xor i1 %12, true
  br i1 %13, label %while_body1, label %while_end2
while_body1:
  %14 = call i8 @peek(%SharedEnv_tokenize* %env.param)
  %15 = call i1 @is_alphanumeric(%SharedEnv_tokenize* %env.param, i8 %14)
  br i1 %15, label %then3, label %else4
then3:
  %16 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  br label %merge5
else4:
  store i1 1, i1* %11
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %17 = load %nyx_string*, %nyx_string** %2
  %18 = load i64, i64* %10
  %19 = load i64, i64* %3
  %20 = call %nyx_string* @nyx_string_substring(%nyx_string* %17, i64 %18, i64 %19)
  %21 = alloca %nyx_string*
  store %nyx_string* %20, %nyx_string** %21
  %22 = getelementptr [9 x i8], [9 x i8]* @.str364, i32 0, i32 0
  %23 = call %nyx_string* @nyx_string_from_cstr(i8* %22)
  %24 = getelementptr [2 x i8], [2 x i8]* @.str365, i32 0, i32 0
  %25 = call %nyx_string* @nyx_string_from_cstr(i8* %24)
  %26 = load %nyx_string*, %nyx_string** %21
  %27 = call %nyx_string* @nyx_string_concat(%nyx_string* %25, %nyx_string* %26)
  %28 = call i64 @add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %23, %nyx_string* %27)
  ret i64 0
}

define internal i64 @scan_char(%SharedEnv_tokenize* %env.param) {
  %1 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 6
  %8 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %9 = call i1 @at_end(%SharedEnv_tokenize* %env.param)
  %10 = xor i1 %9, true
  br i1 %10, label %then0, label %else1
then0:
  %11 = call i8 @peek(%SharedEnv_tokenize* %env.param)
  %12 = getelementptr [1 x i8], [1 x i8]* @.str366, i32 0, i32 0
  %13 = load i8, i8* %12
  %14 = zext i8 %13 to i64
  %15 = zext i8 %11 to i64
  %16 = icmp ne i64 %15, %14
  br i1 %16, label %then3, label %else4
then3:
  %17 = getelementptr [2 x i8], [2 x i8]* @.str367, i32 0, i32 0
  %18 = call %nyx_string* @nyx_string_from_cstr(i8* %17)
  %19 = alloca %nyx_string*
  store %nyx_string* %18, %nyx_string** %19
  %20 = call i8 @peek(%SharedEnv_tokenize* %env.param)
  %21 = getelementptr [1 x i8], [1 x i8]* @.str368, i32 0, i32 0
  %22 = load i8, i8* %21
  %23 = zext i8 %22 to i64
  %24 = zext i8 %20 to i64
  %25 = icmp eq i64 %24, %23
  br i1 %25, label %then6, label %else7
then6:
  %26 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %27 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %28 = alloca i8
  store i8 %27, i8* %28
  %29 = load i8, i8* %28
  %30 = getelementptr [1 x i8], [1 x i8]* @.str369, i32 0, i32 0
  %31 = load i8, i8* %30
  %32 = zext i8 %31 to i64
  %33 = zext i8 %29 to i64
  %34 = icmp eq i64 %33, %32
  br i1 %34, label %then9, label %else10
then9:
  %35 = getelementptr [2 x i8], [2 x i8]* @.str370, i32 0, i32 0
  %36 = call %nyx_string* @nyx_string_from_cstr(i8* %35)
  store %nyx_string* %36, %nyx_string** %19
  br label %merge11
else10:
  %37 = load i8, i8* %28
  %38 = getelementptr [1 x i8], [1 x i8]* @.str371, i32 0, i32 0
  %39 = load i8, i8* %38
  %40 = zext i8 %39 to i64
  %41 = zext i8 %37 to i64
  %42 = icmp eq i64 %41, %40
  br i1 %42, label %then12, label %else13
then12:
  %43 = getelementptr [2 x i8], [2 x i8]* @.str372, i32 0, i32 0
  %44 = call %nyx_string* @nyx_string_from_cstr(i8* %43)
  store %nyx_string* %44, %nyx_string** %19
  br label %merge14
else13:
  %45 = load i8, i8* %28
  %46 = getelementptr [1 x i8], [1 x i8]* @.str373, i32 0, i32 0
  %47 = load i8, i8* %46
  %48 = zext i8 %47 to i64
  %49 = zext i8 %45 to i64
  %50 = icmp eq i64 %49, %48
  br i1 %50, label %then15, label %else16
then15:
  %51 = getelementptr [2 x i8], [2 x i8]* @.str374, i32 0, i32 0
  %52 = call %nyx_string* @nyx_string_from_cstr(i8* %51)
  store %nyx_string* %52, %nyx_string** %19
  br label %merge17
else16:
  %53 = load i8, i8* %28
  %54 = getelementptr [1 x i8], [1 x i8]* @.str375, i32 0, i32 0
  %55 = load i8, i8* %54
  %56 = zext i8 %55 to i64
  %57 = zext i8 %53 to i64
  %58 = icmp eq i64 %57, %56
  br i1 %58, label %then18, label %else19
then18:
  %59 = getelementptr [2 x i8], [2 x i8]* @.str376, i32 0, i32 0
  %60 = call %nyx_string* @nyx_string_from_cstr(i8* %59)
  store %nyx_string* %60, %nyx_string** %19
  br label %merge20
else19:
  %61 = load i8, i8* %28
  %62 = getelementptr [1 x i8], [1 x i8]* @.str377, i32 0, i32 0
  %63 = load i8, i8* %62
  %64 = zext i8 %63 to i64
  %65 = zext i8 %61 to i64
  %66 = icmp eq i64 %65, %64
  br i1 %66, label %then21, label %else22
then21:
  %67 = trunc i64 13 to i8
  %68 = alloca i8
  store i8 %67, i8* %68
  %69 = getelementptr [1 x i8], [1 x i8]* @.str378, i32 0, i32 0
  %70 = call %nyx_string* @nyx_string_from_cstr(i8* %69)
  %71 = load i8, i8* %68
  %72 = call %nyx_string* @nyx_string_from_char(i8 %71)
  %73 = call %nyx_string* @nyx_string_concat(%nyx_string* %70, %nyx_string* %72)
  store %nyx_string* %73, %nyx_string** %19
  br label %merge23
else22:
  %74 = load i8, i8* %28
  %75 = getelementptr [1 x i8], [1 x i8]* @.str379, i32 0, i32 0
  %76 = load i8, i8* %75
  %77 = zext i8 %76 to i64
  %78 = zext i8 %74 to i64
  %79 = icmp eq i64 %78, %77
  br i1 %79, label %then24, label %else25
then24:
  %80 = trunc i64 0 to i8
  %81 = alloca i8
  store i8 %80, i8* %81
  %82 = getelementptr [1 x i8], [1 x i8]* @.str380, i32 0, i32 0
  %83 = call %nyx_string* @nyx_string_from_cstr(i8* %82)
  %84 = load i8, i8* %81
  %85 = call %nyx_string* @nyx_string_from_char(i8 %84)
  %86 = call %nyx_string* @nyx_string_concat(%nyx_string* %83, %nyx_string* %85)
  store %nyx_string* %86, %nyx_string** %19
  br label %merge26
else25:
  %87 = load i8, i8* %28
  %88 = call %nyx_string* @nyx_string_from_char(i8 %87)
  store %nyx_string* %88, %nyx_string** %19
  br label %merge26
merge26:
  br label %merge23
merge23:
  br label %merge20
merge20:
  br label %merge17
merge17:
  br label %merge14
merge14:
  br label %merge11
merge11:
  br label %merge8
else7:
  %89 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %90 = call %nyx_string* @nyx_string_from_char(i8 %89)
  store %nyx_string* %90, %nyx_string** %19
  br label %merge8
merge8:
  %91 = call i8 @peek(%SharedEnv_tokenize* %env.param)
  %92 = getelementptr [1 x i8], [1 x i8]* @.str381, i32 0, i32 0
  %93 = load i8, i8* %92
  %94 = zext i8 %93 to i64
  %95 = zext i8 %91 to i64
  %96 = icmp eq i64 %95, %94
  br i1 %96, label %then27, label %else28
then27:
  %97 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %98 = getelementptr [5 x i8], [5 x i8]* @.str382, i32 0, i32 0
  %99 = call %nyx_string* @nyx_string_from_cstr(i8* %98)
  %100 = load %nyx_string*, %nyx_string** %19
  %101 = call i64 @add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %99, %nyx_string* %100)
  br label %merge29
else28:
  br label %merge29
merge29:
  br label %merge5
else4:
  br label %merge5
merge5:
  br label %merge2
else1:
  br label %merge2
merge2:
  ret i64 0
}

define internal i64 @scan_identifier(%SharedEnv_tokenize* %env.param) {
  %1 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 6
  %8 = load i64, i64* %3
  %9 = alloca i64
  store i64 %8, i64* %9
  %10 = alloca i1
  store i1 0, i1* %10
  br label %while_cond0
while_cond0:
  %11 = load i1, i1* %10
  %12 = xor i1 %11, true
  br i1 %12, label %while_body1, label %while_end2
while_body1:
  %13 = call i8 @peek(%SharedEnv_tokenize* %env.param)
  %14 = call i1 @is_alphanumeric(%SharedEnv_tokenize* %env.param, i8 %13)
  br i1 %14, label %then3, label %else4
then3:
  %15 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  br label %merge5
else4:
  store i1 1, i1* %10
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %16 = load %nyx_string*, %nyx_string** %2
  %17 = load i64, i64* %9
  %18 = load i64, i64* %3
  %19 = call %nyx_string* @nyx_string_substring(%nyx_string* %16, i64 %17, i64 %18)
  %20 = alloca %nyx_string*
  store %nyx_string* %19, %nyx_string** %20
  %21 = load %nyx_string*, %nyx_string** %20
  %22 = call i1 @is_keyword(%nyx_string* %21)
  br i1 %22, label %then6, label %else7
then6:
  %23 = load %nyx_string*, %nyx_string** %20
  %24 = call %nyx_string* @keyword_to_type(%nyx_string* %23)
  %25 = load %nyx_string*, %nyx_string** %20
  %26 = call i64 @add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %24, %nyx_string* %25)
  br label %merge8
else7:
  %27 = getelementptr [11 x i8], [11 x i8]* @.str383, i32 0, i32 0
  %28 = call %nyx_string* @nyx_string_from_cstr(i8* %27)
  %29 = load %nyx_string*, %nyx_string** %20
  %30 = call i64 @add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %28, %nyx_string* %29)
  br label %merge8
merge8:
  ret i64 0
}

define internal i64 @scan_token(%SharedEnv_tokenize* %env.param) {
  %1 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %env.param, i32 0, i32 6
  %8 = call i64 @skip_whitespace(%SharedEnv_tokenize* %env.param)
  %9 = call i1 @at_end(%SharedEnv_tokenize* %env.param)
  %10 = xor i1 %9, true
  br i1 %10, label %then0, label %else1
then0:
  %11 = call i8 @peek(%SharedEnv_tokenize* %env.param)
  %12 = alloca i8
  store i8 %11, i8* %12
  %13 = load i8, i8* %12
  %14 = getelementptr [1 x i8], [1 x i8]* @.str384, i32 0, i32 0
  %15 = load i8, i8* %14
  %16 = zext i8 %15 to i64
  %17 = zext i8 %13 to i64
  %18 = icmp eq i64 %17, %16
  br i1 %18, label %then3, label %else4
then3:
  %19 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  br label %merge5
else4:
  %20 = load i8, i8* %12
  %21 = getelementptr [1 x i8], [1 x i8]* @.str385, i32 0, i32 0
  %22 = load i8, i8* %21
  %23 = zext i8 %22 to i64
  %24 = zext i8 %20 to i64
  %25 = icmp eq i64 %24, %23
  br i1 %25, label %then6, label %else7
then6:
  %26 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %27 = call i8 @peek(%SharedEnv_tokenize* %env.param)
  %28 = getelementptr [1 x i8], [1 x i8]* @.str386, i32 0, i32 0
  %29 = load i8, i8* %28
  %30 = zext i8 %29 to i64
  %31 = zext i8 %27 to i64
  %32 = icmp eq i64 %31, %30
  br i1 %32, label %then9, label %else10
then9:
  %33 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %34 = getelementptr [12 x i8], [12 x i8]* @.str387, i32 0, i32 0
  %35 = call %nyx_string* @nyx_string_from_cstr(i8* %34)
  %36 = getelementptr [3 x i8], [3 x i8]* @.str388, i32 0, i32 0
  %37 = call %nyx_string* @nyx_string_from_cstr(i8* %36)
  %38 = call i64 @add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %35, %nyx_string* %37)
  br label %merge11
else10:
  %39 = getelementptr [5 x i8], [5 x i8]* @.str389, i32 0, i32 0
  %40 = call %nyx_string* @nyx_string_from_cstr(i8* %39)
  %41 = getelementptr [2 x i8], [2 x i8]* @.str390, i32 0, i32 0
  %42 = call %nyx_string* @nyx_string_from_cstr(i8* %41)
  %43 = call i64 @add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %40, %nyx_string* %42)
  br label %merge11
merge11:
  br label %merge8
else7:
  %44 = load i8, i8* %12
  %45 = getelementptr [1 x i8], [1 x i8]* @.str391, i32 0, i32 0
  %46 = load i8, i8* %45
  %47 = zext i8 %46 to i64
  %48 = zext i8 %44 to i64
  %49 = icmp eq i64 %48, %47
  br i1 %49, label %then12, label %else13
then12:
  %50 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %51 = call i8 @peek(%SharedEnv_tokenize* %env.param)
  %52 = getelementptr [1 x i8], [1 x i8]* @.str392, i32 0, i32 0
  %53 = load i8, i8* %52
  %54 = zext i8 %53 to i64
  %55 = zext i8 %51 to i64
  %56 = icmp eq i64 %55, %54
  br i1 %56, label %then15, label %else16
then15:
  %57 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %58 = getelementptr [6 x i8], [6 x i8]* @.str393, i32 0, i32 0
  %59 = call %nyx_string* @nyx_string_from_cstr(i8* %58)
  %60 = getelementptr [3 x i8], [3 x i8]* @.str394, i32 0, i32 0
  %61 = call %nyx_string* @nyx_string_from_cstr(i8* %60)
  %62 = call i64 @add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %59, %nyx_string* %61)
  br label %merge17
else16:
  %63 = call i8 @peek(%SharedEnv_tokenize* %env.param)
  %64 = getelementptr [1 x i8], [1 x i8]* @.str395, i32 0, i32 0
  %65 = load i8, i8* %64
  %66 = zext i8 %65 to i64
  %67 = zext i8 %63 to i64
  %68 = icmp eq i64 %67, %66
  br i1 %68, label %then18, label %else19
then18:
  %69 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %70 = getelementptr [13 x i8], [13 x i8]* @.str396, i32 0, i32 0
  %71 = call %nyx_string* @nyx_string_from_cstr(i8* %70)
  %72 = getelementptr [3 x i8], [3 x i8]* @.str397, i32 0, i32 0
  %73 = call %nyx_string* @nyx_string_from_cstr(i8* %72)
  %74 = call i64 @add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %71, %nyx_string* %73)
  br label %merge20
else19:
  %75 = getelementptr [6 x i8], [6 x i8]* @.str398, i32 0, i32 0
  %76 = call %nyx_string* @nyx_string_from_cstr(i8* %75)
  %77 = getelementptr [2 x i8], [2 x i8]* @.str399, i32 0, i32 0
  %78 = call %nyx_string* @nyx_string_from_cstr(i8* %77)
  %79 = call i64 @add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %76, %nyx_string* %78)
  br label %merge20
merge20:
  br label %merge17
merge17:
  br label %merge14
else13:
  %80 = load i8, i8* %12
  %81 = getelementptr [1 x i8], [1 x i8]* @.str400, i32 0, i32 0
  %82 = load i8, i8* %81
  %83 = zext i8 %82 to i64
  %84 = zext i8 %80 to i64
  %85 = icmp eq i64 %84, %83
  br i1 %85, label %then21, label %else22
then21:
  %86 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %87 = call i8 @peek(%SharedEnv_tokenize* %env.param)
  %88 = getelementptr [1 x i8], [1 x i8]* @.str401, i32 0, i32 0
  %89 = load i8, i8* %88
  %90 = zext i8 %89 to i64
  %91 = zext i8 %87 to i64
  %92 = icmp eq i64 %91, %90
  br i1 %92, label %then24, label %else25
then24:
  %93 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %94 = getelementptr [6 x i8], [6 x i8]* @.str402, i32 0, i32 0
  %95 = call %nyx_string* @nyx_string_from_cstr(i8* %94)
  %96 = getelementptr [3 x i8], [3 x i8]* @.str403, i32 0, i32 0
  %97 = call %nyx_string* @nyx_string_from_cstr(i8* %96)
  %98 = call i64 @add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %95, %nyx_string* %97)
  br label %merge26
else25:
  %99 = call i8 @peek(%SharedEnv_tokenize* %env.param)
  %100 = getelementptr [1 x i8], [1 x i8]* @.str404, i32 0, i32 0
  %101 = load i8, i8* %100
  %102 = zext i8 %101 to i64
  %103 = zext i8 %99 to i64
  %104 = icmp eq i64 %103, %102
  br i1 %104, label %then27, label %else28
then27:
  %105 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %106 = getelementptr [12 x i8], [12 x i8]* @.str405, i32 0, i32 0
  %107 = call %nyx_string* @nyx_string_from_cstr(i8* %106)
  %108 = getelementptr [3 x i8], [3 x i8]* @.str406, i32 0, i32 0
  %109 = call %nyx_string* @nyx_string_from_cstr(i8* %108)
  %110 = call i64 @add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %107, %nyx_string* %109)
  br label %merge29
else28:
  %111 = getelementptr [5 x i8], [5 x i8]* @.str407, i32 0, i32 0
  %112 = call %nyx_string* @nyx_string_from_cstr(i8* %111)
  %113 = getelementptr [2 x i8], [2 x i8]* @.str408, i32 0, i32 0
  %114 = call %nyx_string* @nyx_string_from_cstr(i8* %113)
  %115 = call i64 @add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %112, %nyx_string* %114)
  br label %merge29
merge29:
  br label %merge26
merge26:
  br label %merge23
else22:
  %116 = load i8, i8* %12
  %117 = getelementptr [1 x i8], [1 x i8]* @.str409, i32 0, i32 0
  %118 = load i8, i8* %117
  %119 = zext i8 %118 to i64
  %120 = zext i8 %116 to i64
  %121 = icmp eq i64 %120, %119
  br i1 %121, label %then30, label %else31
then30:
  %122 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %123 = call i8 @peek(%SharedEnv_tokenize* %env.param)
  %124 = getelementptr [1 x i8], [1 x i8]* @.str410, i32 0, i32 0
  %125 = load i8, i8* %124
  %126 = zext i8 %125 to i64
  %127 = zext i8 %123 to i64
  %128 = icmp eq i64 %127, %126
  br i1 %128, label %then33, label %else34
then33:
  %129 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %130 = call i64 @skip_comment(%SharedEnv_tokenize* %env.param)
  br label %merge35
else34:
  %131 = call i8 @peek(%SharedEnv_tokenize* %env.param)
  %132 = getelementptr [1 x i8], [1 x i8]* @.str411, i32 0, i32 0
  %133 = load i8, i8* %132
  %134 = zext i8 %133 to i64
  %135 = zext i8 %131 to i64
  %136 = icmp eq i64 %135, %134
  br i1 %136, label %then36, label %else37
then36:
  %137 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %138 = call i64 @skip_block_comment(%SharedEnv_tokenize* %env.param)
  br label %merge38
else37:
  %139 = call i8 @peek(%SharedEnv_tokenize* %env.param)
  %140 = getelementptr [1 x i8], [1 x i8]* @.str412, i32 0, i32 0
  %141 = load i8, i8* %140
  %142 = zext i8 %141 to i64
  %143 = zext i8 %139 to i64
  %144 = icmp eq i64 %143, %142
  br i1 %144, label %then39, label %else40
then39:
  %145 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %146 = getelementptr [13 x i8], [13 x i8]* @.str413, i32 0, i32 0
  %147 = call %nyx_string* @nyx_string_from_cstr(i8* %146)
  %148 = getelementptr [3 x i8], [3 x i8]* @.str414, i32 0, i32 0
  %149 = call %nyx_string* @nyx_string_from_cstr(i8* %148)
  %150 = call i64 @add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %147, %nyx_string* %149)
  br label %merge41
else40:
  %151 = getelementptr [6 x i8], [6 x i8]* @.str415, i32 0, i32 0
  %152 = call %nyx_string* @nyx_string_from_cstr(i8* %151)
  %153 = getelementptr [2 x i8], [2 x i8]* @.str416, i32 0, i32 0
  %154 = call %nyx_string* @nyx_string_from_cstr(i8* %153)
  %155 = call i64 @add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %152, %nyx_string* %154)
  br label %merge41
merge41:
  br label %merge38
merge38:
  br label %merge35
merge35:
  br label %merge32
else31:
  %156 = load i8, i8* %12
  %157 = getelementptr [1 x i8], [1 x i8]* @.str417, i32 0, i32 0
  %158 = load i8, i8* %157
  %159 = zext i8 %158 to i64
  %160 = zext i8 %156 to i64
  %161 = icmp eq i64 %160, %159
  br i1 %161, label %then42, label %else43
then42:
  %162 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %163 = call i8 @peek(%SharedEnv_tokenize* %env.param)
  %164 = getelementptr [1 x i8], [1 x i8]* @.str418, i32 0, i32 0
  %165 = load i8, i8* %164
  %166 = zext i8 %165 to i64
  %167 = zext i8 %163 to i64
  %168 = icmp eq i64 %167, %166
  br i1 %168, label %then45, label %else46
then45:
  %169 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %170 = getelementptr [15 x i8], [15 x i8]* @.str419, i32 0, i32 0
  %171 = call %nyx_string* @nyx_string_from_cstr(i8* %170)
  %172 = getelementptr [3 x i8], [3 x i8]* @.str420, i32 0, i32 0
  %173 = call %nyx_string* @nyx_string_from_cstr(i8* %172)
  %174 = call i64 @add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %171, %nyx_string* %173)
  br label %merge47
else46:
  %175 = getelementptr [8 x i8], [8 x i8]* @.str421, i32 0, i32 0
  %176 = call %nyx_string* @nyx_string_from_cstr(i8* %175)
  %177 = getelementptr [2 x i8], [2 x i8]* @.str422, i32 0, i32 0
  %178 = call %nyx_string* @nyx_string_from_cstr(i8* %177)
  %179 = call i64 @add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %176, %nyx_string* %178)
  br label %merge47
merge47:
  br label %merge44
else43:
  %180 = load i8, i8* %12
  %181 = getelementptr [1 x i8], [1 x i8]* @.str423, i32 0, i32 0
  %182 = load i8, i8* %181
  %183 = zext i8 %182 to i64
  %184 = zext i8 %180 to i64
  %185 = icmp eq i64 %184, %183
  br i1 %185, label %then48, label %else49
then48:
  %186 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %187 = getelementptr [6 x i8], [6 x i8]* @.str424, i32 0, i32 0
  %188 = call %nyx_string* @nyx_string_from_cstr(i8* %187)
  %189 = getelementptr [2 x i8], [2 x i8]* @.str425, i32 0, i32 0
  %190 = call %nyx_string* @nyx_string_from_cstr(i8* %189)
  %191 = call i64 @add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %188, %nyx_string* %190)
  br label %merge50
else49:
  %192 = load i8, i8* %12
  %193 = getelementptr [1 x i8], [1 x i8]* @.str426, i32 0, i32 0
  %194 = load i8, i8* %193
  %195 = zext i8 %194 to i64
  %196 = zext i8 %192 to i64
  %197 = icmp eq i64 %196, %195
  br i1 %197, label %then51, label %else52
then51:
  %198 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %199 = getelementptr [11 x i8], [11 x i8]* @.str427, i32 0, i32 0
  %200 = call %nyx_string* @nyx_string_from_cstr(i8* %199)
  %201 = getelementptr [2 x i8], [2 x i8]* @.str428, i32 0, i32 0
  %202 = call %nyx_string* @nyx_string_from_cstr(i8* %201)
  %203 = call i64 @add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %200, %nyx_string* %202)
  br label %merge53
else52:
  %204 = load i8, i8* %12
  %205 = getelementptr [1 x i8], [1 x i8]* @.str429, i32 0, i32 0
  %206 = load i8, i8* %205
  %207 = zext i8 %206 to i64
  %208 = zext i8 %204 to i64
  %209 = icmp eq i64 %208, %207
  br i1 %209, label %then54, label %else55
then54:
  %210 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %211 = getelementptr [12 x i8], [12 x i8]* @.str430, i32 0, i32 0
  %212 = call %nyx_string* @nyx_string_from_cstr(i8* %211)
  %213 = getelementptr [2 x i8], [2 x i8]* @.str431, i32 0, i32 0
  %214 = call %nyx_string* @nyx_string_from_cstr(i8* %213)
  %215 = call i64 @add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %212, %nyx_string* %214)
  br label %merge56
else55:
  %216 = load i8, i8* %12
  %217 = getelementptr [1 x i8], [1 x i8]* @.str432, i32 0, i32 0
  %218 = load i8, i8* %217
  %219 = zext i8 %218 to i64
  %220 = zext i8 %216 to i64
  %221 = icmp eq i64 %220, %219
  br i1 %221, label %then57, label %else58
then57:
  %222 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %223 = getelementptr [11 x i8], [11 x i8]* @.str433, i32 0, i32 0
  %224 = call %nyx_string* @nyx_string_from_cstr(i8* %223)
  %225 = getelementptr [2 x i8], [2 x i8]* @.str434, i32 0, i32 0
  %226 = call %nyx_string* @nyx_string_from_cstr(i8* %225)
  %227 = call i64 @add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %224, %nyx_string* %226)
  br label %merge59
else58:
  %228 = load i8, i8* %12
  %229 = getelementptr [1 x i8], [1 x i8]* @.str435, i32 0, i32 0
  %230 = load i8, i8* %229
  %231 = zext i8 %230 to i64
  %232 = zext i8 %228 to i64
  %233 = icmp eq i64 %232, %231
  br i1 %233, label %then60, label %else61
then60:
  %234 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %235 = load i64, i64* %7
  %236 = icmp sgt i64 %235, 0
  br i1 %236, label %then63, label %else64
then63:
  %237 = load i64, i64* %7
  %238 = sub i64 %237, 1
  store i64 %238, i64* %7
  %239 = getelementptr [12 x i8], [12 x i8]* @.str436, i32 0, i32 0
  %240 = call %nyx_string* @nyx_string_from_cstr(i8* %239)
  %241 = getelementptr [2 x i8], [2 x i8]* @.str437, i32 0, i32 0
  %242 = call %nyx_string* @nyx_string_from_cstr(i8* %241)
  %243 = call i64 @add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %240, %nyx_string* %242)
  %244 = call i64 @scan_string_rest(%SharedEnv_tokenize* %env.param)
  br label %merge65
else64:
  %245 = getelementptr [12 x i8], [12 x i8]* @.str438, i32 0, i32 0
  %246 = call %nyx_string* @nyx_string_from_cstr(i8* %245)
  %247 = getelementptr [2 x i8], [2 x i8]* @.str439, i32 0, i32 0
  %248 = call %nyx_string* @nyx_string_from_cstr(i8* %247)
  %249 = call i64 @add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %246, %nyx_string* %248)
  br label %merge65
merge65:
  br label %merge62
else61:
  %250 = load i8, i8* %12
  %251 = getelementptr [1 x i8], [1 x i8]* @.str440, i32 0, i32 0
  %252 = load i8, i8* %251
  %253 = zext i8 %252 to i64
  %254 = zext i8 %250 to i64
  %255 = icmp eq i64 %254, %253
  br i1 %255, label %then66, label %else67
then66:
  %256 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %257 = getelementptr [13 x i8], [13 x i8]* @.str441, i32 0, i32 0
  %258 = call %nyx_string* @nyx_string_from_cstr(i8* %257)
  %259 = getelementptr [2 x i8], [2 x i8]* @.str442, i32 0, i32 0
  %260 = call %nyx_string* @nyx_string_from_cstr(i8* %259)
  %261 = call i64 @add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %258, %nyx_string* %260)
  br label %merge68
else67:
  %262 = load i8, i8* %12
  %263 = getelementptr [1 x i8], [1 x i8]* @.str443, i32 0, i32 0
  %264 = load i8, i8* %263
  %265 = zext i8 %264 to i64
  %266 = zext i8 %262 to i64
  %267 = icmp eq i64 %266, %265
  br i1 %267, label %then69, label %else70
then69:
  %268 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %269 = getelementptr [14 x i8], [14 x i8]* @.str444, i32 0, i32 0
  %270 = call %nyx_string* @nyx_string_from_cstr(i8* %269)
  %271 = getelementptr [2 x i8], [2 x i8]* @.str445, i32 0, i32 0
  %272 = call %nyx_string* @nyx_string_from_cstr(i8* %271)
  %273 = call i64 @add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %270, %nyx_string* %272)
  br label %merge71
else70:
  %274 = load i8, i8* %12
  %275 = getelementptr [1 x i8], [1 x i8]* @.str446, i32 0, i32 0
  %276 = load i8, i8* %275
  %277 = zext i8 %276 to i64
  %278 = zext i8 %274 to i64
  %279 = icmp eq i64 %278, %277
  br i1 %279, label %then72, label %else73
then72:
  %280 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %281 = getelementptr [6 x i8], [6 x i8]* @.str447, i32 0, i32 0
  %282 = call %nyx_string* @nyx_string_from_cstr(i8* %281)
  %283 = getelementptr [2 x i8], [2 x i8]* @.str448, i32 0, i32 0
  %284 = call %nyx_string* @nyx_string_from_cstr(i8* %283)
  %285 = call i64 @add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %282, %nyx_string* %284)
  br label %merge74
else73:
  %286 = load i8, i8* %12
  %287 = getelementptr [1 x i8], [1 x i8]* @.str449, i32 0, i32 0
  %288 = load i8, i8* %287
  %289 = zext i8 %288 to i64
  %290 = zext i8 %286 to i64
  %291 = icmp eq i64 %290, %289
  br i1 %291, label %then75, label %else76
then75:
  %292 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %293 = call i8 @peek(%SharedEnv_tokenize* %env.param)
  %294 = getelementptr [1 x i8], [1 x i8]* @.str450, i32 0, i32 0
  %295 = load i8, i8* %294
  %296 = zext i8 %295 to i64
  %297 = zext i8 %293 to i64
  %298 = icmp eq i64 %297, %296
  br i1 %298, label %then78, label %else79
then78:
  %299 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %300 = getelementptr [12 x i8], [12 x i8]* @.str451, i32 0, i32 0
  %301 = call %nyx_string* @nyx_string_from_cstr(i8* %300)
  %302 = getelementptr [3 x i8], [3 x i8]* @.str452, i32 0, i32 0
  %303 = call %nyx_string* @nyx_string_from_cstr(i8* %302)
  %304 = call i64 @add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %301, %nyx_string* %303)
  br label %merge80
else79:
  %305 = call i8 @peek(%SharedEnv_tokenize* %env.param)
  %306 = getelementptr [1 x i8], [1 x i8]* @.str453, i32 0, i32 0
  %307 = load i8, i8* %306
  %308 = zext i8 %307 to i64
  %309 = zext i8 %305 to i64
  %310 = icmp eq i64 %309, %308
  br i1 %310, label %then81, label %else82
then81:
  %311 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %312 = getelementptr [12 x i8], [12 x i8]* @.str454, i32 0, i32 0
  %313 = call %nyx_string* @nyx_string_from_cstr(i8* %312)
  %314 = getelementptr [3 x i8], [3 x i8]* @.str455, i32 0, i32 0
  %315 = call %nyx_string* @nyx_string_from_cstr(i8* %314)
  %316 = call i64 @add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %313, %nyx_string* %315)
  br label %merge83
else82:
  %317 = getelementptr [7 x i8], [7 x i8]* @.str456, i32 0, i32 0
  %318 = call %nyx_string* @nyx_string_from_cstr(i8* %317)
  %319 = getelementptr [2 x i8], [2 x i8]* @.str457, i32 0, i32 0
  %320 = call %nyx_string* @nyx_string_from_cstr(i8* %319)
  %321 = call i64 @add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %318, %nyx_string* %320)
  br label %merge83
merge83:
  br label %merge80
merge80:
  br label %merge77
else76:
  %322 = load i8, i8* %12
  %323 = getelementptr [1 x i8], [1 x i8]* @.str458, i32 0, i32 0
  %324 = load i8, i8* %323
  %325 = zext i8 %324 to i64
  %326 = zext i8 %322 to i64
  %327 = icmp eq i64 %326, %325
  br i1 %327, label %then84, label %else85
then84:
  %328 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %329 = call i8 @peek(%SharedEnv_tokenize* %env.param)
  %330 = getelementptr [1 x i8], [1 x i8]* @.str459, i32 0, i32 0
  %331 = load i8, i8* %330
  %332 = zext i8 %331 to i64
  %333 = zext i8 %329 to i64
  %334 = icmp eq i64 %333, %332
  br i1 %334, label %then87, label %else88
then87:
  %335 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %336 = getelementptr [10 x i8], [10 x i8]* @.str460, i32 0, i32 0
  %337 = call %nyx_string* @nyx_string_from_cstr(i8* %336)
  %338 = getelementptr [3 x i8], [3 x i8]* @.str461, i32 0, i32 0
  %339 = call %nyx_string* @nyx_string_from_cstr(i8* %338)
  %340 = call i64 @add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %337, %nyx_string* %339)
  br label %merge89
else88:
  %341 = getelementptr [4 x i8], [4 x i8]* @.str462, i32 0, i32 0
  %342 = call %nyx_string* @nyx_string_from_cstr(i8* %341)
  %343 = getelementptr [2 x i8], [2 x i8]* @.str463, i32 0, i32 0
  %344 = call %nyx_string* @nyx_string_from_cstr(i8* %343)
  %345 = call i64 @add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %342, %nyx_string* %344)
  br label %merge89
merge89:
  br label %merge86
else85:
  %346 = load i8, i8* %12
  %347 = getelementptr [1 x i8], [1 x i8]* @.str464, i32 0, i32 0
  %348 = load i8, i8* %347
  %349 = zext i8 %348 to i64
  %350 = zext i8 %346 to i64
  %351 = icmp eq i64 %350, %349
  br i1 %351, label %then90, label %else91
then90:
  %352 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %353 = getelementptr [9 x i8], [9 x i8]* @.str465, i32 0, i32 0
  %354 = call %nyx_string* @nyx_string_from_cstr(i8* %353)
  %355 = getelementptr [2 x i8], [2 x i8]* @.str466, i32 0, i32 0
  %356 = call %nyx_string* @nyx_string_from_cstr(i8* %355)
  %357 = call i64 @add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %354, %nyx_string* %356)
  br label %merge92
else91:
  %358 = load i8, i8* %12
  %359 = getelementptr [1 x i8], [1 x i8]* @.str467, i32 0, i32 0
  %360 = load i8, i8* %359
  %361 = zext i8 %360 to i64
  %362 = zext i8 %358 to i64
  %363 = icmp eq i64 %362, %361
  br i1 %363, label %then93, label %else94
then93:
  %364 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %365 = call i8 @peek(%SharedEnv_tokenize* %env.param)
  %366 = getelementptr [1 x i8], [1 x i8]* @.str468, i32 0, i32 0
  %367 = load i8, i8* %366
  %368 = zext i8 %367 to i64
  %369 = zext i8 %365 to i64
  %370 = icmp eq i64 %369, %368
  br i1 %370, label %then96, label %else97
then96:
  %371 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %372 = call i8 @peek(%SharedEnv_tokenize* %env.param)
  %373 = getelementptr [1 x i8], [1 x i8]* @.str469, i32 0, i32 0
  %374 = load i8, i8* %373
  %375 = zext i8 %374 to i64
  %376 = zext i8 %372 to i64
  %377 = icmp eq i64 %376, %375
  br i1 %377, label %then99, label %else100
then99:
  %378 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %379 = getelementptr [18 x i8], [18 x i8]* @.str470, i32 0, i32 0
  %380 = call %nyx_string* @nyx_string_from_cstr(i8* %379)
  %381 = getelementptr [4 x i8], [4 x i8]* @.str471, i32 0, i32 0
  %382 = call %nyx_string* @nyx_string_from_cstr(i8* %381)
  %383 = call i64 @add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %380, %nyx_string* %382)
  br label %merge101
else100:
  %384 = getelementptr [11 x i8], [11 x i8]* @.str472, i32 0, i32 0
  %385 = call %nyx_string* @nyx_string_from_cstr(i8* %384)
  %386 = getelementptr [3 x i8], [3 x i8]* @.str473, i32 0, i32 0
  %387 = call %nyx_string* @nyx_string_from_cstr(i8* %386)
  %388 = call i64 @add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %385, %nyx_string* %387)
  br label %merge101
merge101:
  br label %merge98
else97:
  %389 = call i8 @peek(%SharedEnv_tokenize* %env.param)
  %390 = getelementptr [1 x i8], [1 x i8]* @.str474, i32 0, i32 0
  %391 = load i8, i8* %390
  %392 = zext i8 %391 to i64
  %393 = zext i8 %389 to i64
  %394 = icmp eq i64 %393, %392
  br i1 %394, label %then102, label %else103
then102:
  %395 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %396 = getelementptr [11 x i8], [11 x i8]* @.str475, i32 0, i32 0
  %397 = call %nyx_string* @nyx_string_from_cstr(i8* %396)
  %398 = getelementptr [3 x i8], [3 x i8]* @.str476, i32 0, i32 0
  %399 = call %nyx_string* @nyx_string_from_cstr(i8* %398)
  %400 = call i64 @add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %397, %nyx_string* %399)
  br label %merge104
else103:
  %401 = getelementptr [5 x i8], [5 x i8]* @.str477, i32 0, i32 0
  %402 = call %nyx_string* @nyx_string_from_cstr(i8* %401)
  %403 = getelementptr [2 x i8], [2 x i8]* @.str478, i32 0, i32 0
  %404 = call %nyx_string* @nyx_string_from_cstr(i8* %403)
  %405 = call i64 @add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %402, %nyx_string* %404)
  br label %merge104
merge104:
  br label %merge98
merge98:
  br label %merge95
else94:
  %406 = load i8, i8* %12
  %407 = getelementptr [1 x i8], [1 x i8]* @.str479, i32 0, i32 0
  %408 = load i8, i8* %407
  %409 = zext i8 %408 to i64
  %410 = zext i8 %406 to i64
  %411 = icmp eq i64 %410, %409
  br i1 %411, label %then105, label %else106
then105:
  %412 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %413 = call i8 @peek(%SharedEnv_tokenize* %env.param)
  %414 = getelementptr [1 x i8], [1 x i8]* @.str480, i32 0, i32 0
  %415 = load i8, i8* %414
  %416 = zext i8 %415 to i64
  %417 = zext i8 %413 to i64
  %418 = icmp eq i64 %417, %416
  br i1 %418, label %then108, label %else109
then108:
  %419 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %420 = call i8 @peek(%SharedEnv_tokenize* %env.param)
  %421 = getelementptr [1 x i8], [1 x i8]* @.str481, i32 0, i32 0
  %422 = load i8, i8* %421
  %423 = zext i8 %422 to i64
  %424 = zext i8 %420 to i64
  %425 = icmp eq i64 %424, %423
  br i1 %425, label %then111, label %else112
then111:
  %426 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %427 = getelementptr [19 x i8], [19 x i8]* @.str482, i32 0, i32 0
  %428 = call %nyx_string* @nyx_string_from_cstr(i8* %427)
  %429 = getelementptr [4 x i8], [4 x i8]* @.str483, i32 0, i32 0
  %430 = call %nyx_string* @nyx_string_from_cstr(i8* %429)
  %431 = call i64 @add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %428, %nyx_string* %430)
  br label %merge113
else112:
  %432 = getelementptr [12 x i8], [12 x i8]* @.str484, i32 0, i32 0
  %433 = call %nyx_string* @nyx_string_from_cstr(i8* %432)
  %434 = getelementptr [3 x i8], [3 x i8]* @.str485, i32 0, i32 0
  %435 = call %nyx_string* @nyx_string_from_cstr(i8* %434)
  %436 = call i64 @add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %433, %nyx_string* %435)
  br label %merge113
merge113:
  br label %merge110
else109:
  %437 = call i8 @peek(%SharedEnv_tokenize* %env.param)
  %438 = getelementptr [1 x i8], [1 x i8]* @.str486, i32 0, i32 0
  %439 = load i8, i8* %438
  %440 = zext i8 %439 to i64
  %441 = zext i8 %437 to i64
  %442 = icmp eq i64 %441, %440
  br i1 %442, label %then114, label %else115
then114:
  %443 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %444 = getelementptr [14 x i8], [14 x i8]* @.str487, i32 0, i32 0
  %445 = call %nyx_string* @nyx_string_from_cstr(i8* %444)
  %446 = getelementptr [3 x i8], [3 x i8]* @.str488, i32 0, i32 0
  %447 = call %nyx_string* @nyx_string_from_cstr(i8* %446)
  %448 = call i64 @add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %445, %nyx_string* %447)
  br label %merge116
else115:
  %449 = getelementptr [8 x i8], [8 x i8]* @.str489, i32 0, i32 0
  %450 = call %nyx_string* @nyx_string_from_cstr(i8* %449)
  %451 = getelementptr [2 x i8], [2 x i8]* @.str490, i32 0, i32 0
  %452 = call %nyx_string* @nyx_string_from_cstr(i8* %451)
  %453 = call i64 @add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %450, %nyx_string* %452)
  br label %merge116
merge116:
  br label %merge110
merge110:
  br label %merge107
else106:
  %454 = load i8, i8* %12
  %455 = getelementptr [1 x i8], [1 x i8]* @.str491, i32 0, i32 0
  %456 = load i8, i8* %455
  %457 = zext i8 %456 to i64
  %458 = zext i8 %454 to i64
  %459 = icmp eq i64 %458, %457
  br i1 %459, label %then117, label %else118
then117:
  %460 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %461 = call i8 @peek(%SharedEnv_tokenize* %env.param)
  %462 = getelementptr [1 x i8], [1 x i8]* @.str492, i32 0, i32 0
  %463 = load i8, i8* %462
  %464 = zext i8 %463 to i64
  %465 = zext i8 %461 to i64
  %466 = icmp eq i64 %465, %464
  br i1 %466, label %then120, label %else121
then120:
  %467 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %468 = getelementptr [8 x i8], [8 x i8]* @.str493, i32 0, i32 0
  %469 = call %nyx_string* @nyx_string_from_cstr(i8* %468)
  %470 = getelementptr [3 x i8], [3 x i8]* @.str494, i32 0, i32 0
  %471 = call %nyx_string* @nyx_string_from_cstr(i8* %470)
  %472 = call i64 @add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %469, %nyx_string* %471)
  br label %merge122
else121:
  %473 = call i8 @peek(%SharedEnv_tokenize* %env.param)
  %474 = getelementptr [1 x i8], [1 x i8]* @.str495, i32 0, i32 0
  %475 = load i8, i8* %474
  %476 = zext i8 %475 to i64
  %477 = zext i8 %473 to i64
  %478 = icmp eq i64 %477, %476
  br i1 %478, label %then123, label %else124
then123:
  %479 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %480 = getelementptr [11 x i8], [11 x i8]* @.str496, i32 0, i32 0
  %481 = call %nyx_string* @nyx_string_from_cstr(i8* %480)
  %482 = getelementptr [3 x i8], [3 x i8]* @.str497, i32 0, i32 0
  %483 = call %nyx_string* @nyx_string_from_cstr(i8* %482)
  %484 = call i64 @add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %481, %nyx_string* %483)
  br label %merge125
else124:
  %485 = getelementptr [4 x i8], [4 x i8]* @.str498, i32 0, i32 0
  %486 = call %nyx_string* @nyx_string_from_cstr(i8* %485)
  %487 = getelementptr [2 x i8], [2 x i8]* @.str499, i32 0, i32 0
  %488 = call %nyx_string* @nyx_string_from_cstr(i8* %487)
  %489 = call i64 @add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %486, %nyx_string* %488)
  br label %merge125
merge125:
  br label %merge122
merge122:
  br label %merge119
else118:
  %490 = load i8, i8* %12
  %491 = getelementptr [1 x i8], [1 x i8]* @.str500, i32 0, i32 0
  %492 = load i8, i8* %491
  %493 = zext i8 %492 to i64
  %494 = zext i8 %490 to i64
  %495 = icmp eq i64 %494, %493
  br i1 %495, label %then126, label %else127
then126:
  %496 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %497 = call i8 @peek(%SharedEnv_tokenize* %env.param)
  %498 = getelementptr [1 x i8], [1 x i8]* @.str501, i32 0, i32 0
  %499 = load i8, i8* %498
  %500 = zext i8 %499 to i64
  %501 = zext i8 %497 to i64
  %502 = icmp eq i64 %501, %500
  br i1 %502, label %then129, label %else130
then129:
  %503 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %504 = getelementptr [6 x i8], [6 x i8]* @.str502, i32 0, i32 0
  %505 = call %nyx_string* @nyx_string_from_cstr(i8* %504)
  %506 = getelementptr [3 x i8], [3 x i8]* @.str503, i32 0, i32 0
  %507 = call %nyx_string* @nyx_string_from_cstr(i8* %506)
  %508 = call i64 @add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %505, %nyx_string* %507)
  br label %merge131
else130:
  %509 = call i8 @peek(%SharedEnv_tokenize* %env.param)
  %510 = getelementptr [1 x i8], [1 x i8]* @.str504, i32 0, i32 0
  %511 = load i8, i8* %510
  %512 = zext i8 %511 to i64
  %513 = zext i8 %509 to i64
  %514 = icmp eq i64 %513, %512
  br i1 %514, label %then132, label %else133
then132:
  %515 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %516 = getelementptr [12 x i8], [12 x i8]* @.str505, i32 0, i32 0
  %517 = call %nyx_string* @nyx_string_from_cstr(i8* %516)
  %518 = getelementptr [3 x i8], [3 x i8]* @.str506, i32 0, i32 0
  %519 = call %nyx_string* @nyx_string_from_cstr(i8* %518)
  %520 = call i64 @add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %517, %nyx_string* %519)
  br label %merge134
else133:
  %521 = getelementptr [5 x i8], [5 x i8]* @.str507, i32 0, i32 0
  %522 = call %nyx_string* @nyx_string_from_cstr(i8* %521)
  %523 = getelementptr [2 x i8], [2 x i8]* @.str508, i32 0, i32 0
  %524 = call %nyx_string* @nyx_string_from_cstr(i8* %523)
  %525 = call i64 @add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %522, %nyx_string* %524)
  br label %merge134
merge134:
  br label %merge131
merge131:
  br label %merge128
else127:
  %526 = load i8, i8* %12
  %527 = getelementptr [1 x i8], [1 x i8]* @.str509, i32 0, i32 0
  %528 = load i8, i8* %527
  %529 = zext i8 %528 to i64
  %530 = zext i8 %526 to i64
  %531 = icmp eq i64 %530, %529
  br i1 %531, label %then135, label %else136
then135:
  %532 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %533 = call i8 @peek(%SharedEnv_tokenize* %env.param)
  %534 = getelementptr [1 x i8], [1 x i8]* @.str510, i32 0, i32 0
  %535 = load i8, i8* %534
  %536 = zext i8 %535 to i64
  %537 = zext i8 %533 to i64
  %538 = icmp eq i64 %537, %536
  br i1 %538, label %then138, label %else139
then138:
  %539 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %540 = getelementptr [13 x i8], [13 x i8]* @.str511, i32 0, i32 0
  %541 = call %nyx_string* @nyx_string_from_cstr(i8* %540)
  %542 = getelementptr [3 x i8], [3 x i8]* @.str512, i32 0, i32 0
  %543 = call %nyx_string* @nyx_string_from_cstr(i8* %542)
  %544 = call i64 @add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %541, %nyx_string* %543)
  br label %merge140
else139:
  %545 = getelementptr [6 x i8], [6 x i8]* @.str513, i32 0, i32 0
  %546 = call %nyx_string* @nyx_string_from_cstr(i8* %545)
  %547 = getelementptr [2 x i8], [2 x i8]* @.str514, i32 0, i32 0
  %548 = call %nyx_string* @nyx_string_from_cstr(i8* %547)
  %549 = call i64 @add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %546, %nyx_string* %548)
  br label %merge140
merge140:
  br label %merge137
else136:
  %550 = load i8, i8* %12
  %551 = getelementptr [1 x i8], [1 x i8]* @.str515, i32 0, i32 0
  %552 = load i8, i8* %551
  %553 = zext i8 %552 to i64
  %554 = zext i8 %550 to i64
  %555 = icmp eq i64 %554, %553
  br i1 %555, label %then141, label %else142
then141:
  %556 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %557 = getelementptr [6 x i8], [6 x i8]* @.str516, i32 0, i32 0
  %558 = call %nyx_string* @nyx_string_from_cstr(i8* %557)
  %559 = getelementptr [2 x i8], [2 x i8]* @.str517, i32 0, i32 0
  %560 = call %nyx_string* @nyx_string_from_cstr(i8* %559)
  %561 = call i64 @add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %558, %nyx_string* %560)
  br label %merge143
else142:
  %562 = load i8, i8* %12
  %563 = getelementptr [1 x i8], [1 x i8]* @.str518, i32 0, i32 0
  %564 = load i8, i8* %563
  %565 = zext i8 %564 to i64
  %566 = zext i8 %562 to i64
  %567 = icmp eq i64 %566, %565
  br i1 %567, label %then144, label %else145
then144:
  %568 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %569 = getelementptr [5 x i8], [5 x i8]* @.str519, i32 0, i32 0
  %570 = call %nyx_string* @nyx_string_from_cstr(i8* %569)
  %571 = getelementptr [2 x i8], [2 x i8]* @.str520, i32 0, i32 0
  %572 = call %nyx_string* @nyx_string_from_cstr(i8* %571)
  %573 = call i64 @add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %570, %nyx_string* %572)
  br label %merge146
else145:
  %574 = load i8, i8* %12
  %575 = getelementptr [1 x i8], [1 x i8]* @.str521, i32 0, i32 0
  %576 = load i8, i8* %575
  %577 = zext i8 %576 to i64
  %578 = zext i8 %574 to i64
  %579 = icmp eq i64 %578, %577
  br i1 %579, label %then147, label %else148
then147:
  %580 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %581 = call i8 @peek(%SharedEnv_tokenize* %env.param)
  %582 = getelementptr [1 x i8], [1 x i8]* @.str522, i32 0, i32 0
  %583 = load i8, i8* %582
  %584 = zext i8 %583 to i64
  %585 = zext i8 %581 to i64
  %586 = icmp eq i64 %585, %584
  br i1 %586, label %then150, label %else151
then150:
  %587 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %588 = call i8 @peek(%SharedEnv_tokenize* %env.param)
  %589 = getelementptr [1 x i8], [1 x i8]* @.str523, i32 0, i32 0
  %590 = load i8, i8* %589
  %591 = zext i8 %590 to i64
  %592 = zext i8 %588 to i64
  %593 = icmp eq i64 %592, %591
  br i1 %593, label %then153, label %else154
then153:
  %594 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %595 = getelementptr [9 x i8], [9 x i8]* @.str524, i32 0, i32 0
  %596 = call %nyx_string* @nyx_string_from_cstr(i8* %595)
  %597 = getelementptr [4 x i8], [4 x i8]* @.str525, i32 0, i32 0
  %598 = call %nyx_string* @nyx_string_from_cstr(i8* %597)
  %599 = call i64 @add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %596, %nyx_string* %598)
  br label %merge155
else154:
  %600 = call i8 @peek(%SharedEnv_tokenize* %env.param)
  %601 = getelementptr [1 x i8], [1 x i8]* @.str526, i32 0, i32 0
  %602 = load i8, i8* %601
  %603 = zext i8 %602 to i64
  %604 = zext i8 %600 to i64
  %605 = icmp eq i64 %604, %603
  br i1 %605, label %then156, label %else157
then156:
  %606 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %607 = getelementptr [16 x i8], [16 x i8]* @.str527, i32 0, i32 0
  %608 = call %nyx_string* @nyx_string_from_cstr(i8* %607)
  %609 = getelementptr [4 x i8], [4 x i8]* @.str528, i32 0, i32 0
  %610 = call %nyx_string* @nyx_string_from_cstr(i8* %609)
  %611 = call i64 @add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %608, %nyx_string* %610)
  br label %merge158
else157:
  %612 = getelementptr [6 x i8], [6 x i8]* @.str529, i32 0, i32 0
  %613 = call %nyx_string* @nyx_string_from_cstr(i8* %612)
  %614 = getelementptr [3 x i8], [3 x i8]* @.str530, i32 0, i32 0
  %615 = call %nyx_string* @nyx_string_from_cstr(i8* %614)
  %616 = call i64 @add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %613, %nyx_string* %615)
  br label %merge158
merge158:
  br label %merge155
merge155:
  br label %merge152
else151:
  %617 = getelementptr [4 x i8], [4 x i8]* @.str531, i32 0, i32 0
  %618 = call %nyx_string* @nyx_string_from_cstr(i8* %617)
  %619 = getelementptr [2 x i8], [2 x i8]* @.str532, i32 0, i32 0
  %620 = call %nyx_string* @nyx_string_from_cstr(i8* %619)
  %621 = call i64 @add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %618, %nyx_string* %620)
  br label %merge152
merge152:
  br label %merge149
else148:
  %622 = load i8, i8* %12
  %623 = getelementptr [1 x i8], [1 x i8]* @.str533, i32 0, i32 0
  %624 = load i8, i8* %623
  %625 = zext i8 %624 to i64
  %626 = zext i8 %622 to i64
  %627 = icmp eq i64 %626, %625
  br i1 %627, label %then159, label %else160
then159:
  %628 = call i8 @peek_next(%SharedEnv_tokenize* %env.param)
  %629 = getelementptr [1 x i8], [1 x i8]* @.str534, i32 0, i32 0
  %630 = load i8, i8* %629
  %631 = zext i8 %630 to i64
  %632 = zext i8 %628 to i64
  %633 = icmp eq i64 %632, %631
  br i1 %633, label %then162, label %else163
then162:
  %634 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %635 = call i64 @scan_multiline_string(%SharedEnv_tokenize* %env.param)
  br label %merge164
else163:
  %636 = call i64 @scan_string(%SharedEnv_tokenize* %env.param)
  br label %merge164
merge164:
  br label %merge161
else160:
  %637 = load i8, i8* %12
  %638 = getelementptr [1 x i8], [1 x i8]* @.str535, i32 0, i32 0
  %639 = load i8, i8* %638
  %640 = zext i8 %639 to i64
  %641 = zext i8 %637 to i64
  %642 = icmp eq i64 %641, %640
  br i1 %642, label %then165, label %else166
then165:
  %643 = call i8 @peek_next(%SharedEnv_tokenize* %env.param)
  %644 = alloca i8
  store i8 %643, i8* %644
  %645 = alloca i1
  store i1 0, i1* %645
  %646 = load i8, i8* %644
  %647 = call i1 @is_alpha(%SharedEnv_tokenize* %env.param, i8 %646)
  br i1 %647, label %then168, label %else169
then168:
  %648 = load i64, i64* %3
  %649 = add i64 %648, 2
  %650 = alloca i64
  store i64 %649, i64* %650
  %651 = load i64, i64* %650
  %652 = load %nyx_string*, %nyx_string** %2
  %653 = call i64 @nyx_string_byte_length(%nyx_string* %652)
  %654 = icmp sge i64 %651, %653
  br i1 %654, label %then171, label %else172
then171:
  store i1 1, i1* %645
  br label %merge173
else172:
  %655 = load %nyx_string*, %nyx_string** %2
  %656 = load i64, i64* %650
  %657 = call i8 @nyx_string_char_at(%nyx_string* %655, i64 %656)
  %658 = zext i8 %657 to i64
  %659 = trunc i64 %658 to i8
  %660 = alloca i8
  store i8 %659, i8* %660
  %661 = load i8, i8* %660
  %662 = getelementptr [1 x i8], [1 x i8]* @.str536, i32 0, i32 0
  %663 = load i8, i8* %662
  %664 = zext i8 %663 to i64
  %665 = zext i8 %661 to i64
  %666 = icmp ne i64 %665, %664
  br i1 %666, label %then174, label %else175
then174:
  store i1 1, i1* %645
  br label %merge176
else175:
  br label %merge176
merge176:
  br label %merge173
merge173:
  br label %merge170
else169:
  br label %merge170
merge170:
  %667 = load i1, i1* %645
  br i1 %667, label %then177, label %else178
then177:
  %668 = call i64 @scan_lifetime(%SharedEnv_tokenize* %env.param)
  br label %merge179
else178:
  %669 = call i64 @scan_char(%SharedEnv_tokenize* %env.param)
  br label %merge179
merge179:
  br label %merge167
else166:
  %670 = load i8, i8* %12
  %671 = call i1 @is_digit(%SharedEnv_tokenize* %env.param, i8 %670)
  br i1 %671, label %then180, label %else181
then180:
  %672 = call i64 @scan_number(%SharedEnv_tokenize* %env.param)
  br label %merge182
else181:
  %673 = load i8, i8* %12
  %674 = getelementptr [1 x i8], [1 x i8]* @.str537, i32 0, i32 0
  %675 = load i8, i8* %674
  %676 = zext i8 %675 to i64
  %677 = zext i8 %673 to i64
  %678 = icmp eq i64 %677, %676
  %679 = call i8 @peek_next(%SharedEnv_tokenize* %env.param)
  %680 = getelementptr [1 x i8], [1 x i8]* @.str538, i32 0, i32 0
  %681 = load i8, i8* %680
  %682 = zext i8 %681 to i64
  %683 = zext i8 %679 to i64
  %684 = icmp eq i64 %683, %682
  %685 = and i1 %678, %684
  br i1 %685, label %then183, label %else184
then183:
  %686 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %687 = call i64 @scan_raw_string(%SharedEnv_tokenize* %env.param)
  br label %merge185
else184:
  %688 = load i8, i8* %12
  %689 = call i1 @is_alpha(%SharedEnv_tokenize* %env.param, i8 %688)
  br i1 %689, label %then186, label %else187
then186:
  %690 = call i64 @scan_identifier(%SharedEnv_tokenize* %env.param)
  br label %merge188
else187:
  %691 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  br label %merge188
merge188:
  br label %merge185
merge185:
  br label %merge182
merge182:
  br label %merge167
merge167:
  br label %merge161
merge161:
  br label %merge149
merge149:
  br label %merge146
merge146:
  br label %merge143
merge143:
  br label %merge137
merge137:
  br label %merge128
merge128:
  br label %merge119
merge119:
  br label %merge107
merge107:
  br label %merge95
merge95:
  br label %merge92
merge92:
  br label %merge86
merge86:
  br label %merge77
merge77:
  br label %merge74
merge74:
  br label %merge71
merge71:
  br label %merge68
merge68:
  br label %merge62
merge62:
  br label %merge59
merge59:
  br label %merge56
merge56:
  br label %merge53
merge53:
  br label %merge50
merge50:
  br label %merge44
merge44:
  br label %merge32
merge32:
  br label %merge23
merge23:
  br label %merge14
merge14:
  br label %merge8
merge8:
  br label %merge5
merge5:
  br label %merge2
else1:
  br label %merge2
merge2:
  ret i64 0
}


attributes #0 = { returns_twice }

