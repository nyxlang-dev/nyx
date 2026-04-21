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
@.str519 = private unnamed_addr constant [1 x i8] c"!"
@.str520 = private unnamed_addr constant [5 x i8] c"HASH\00"
@.str521 = private unnamed_addr constant [2 x i8] c"#\00"
@.str522 = private unnamed_addr constant [1 x i8] c"."
@.str523 = private unnamed_addr constant [1 x i8] c"."
@.str524 = private unnamed_addr constant [1 x i8] c"."
@.str525 = private unnamed_addr constant [9 x i8] c"ELLIPSIS\00"
@.str526 = private unnamed_addr constant [4 x i8] c"...\00"
@.str527 = private unnamed_addr constant [1 x i8] c"="
@.str528 = private unnamed_addr constant [16 x i8] c"RANGE_INCLUSIVE\00"
@.str529 = private unnamed_addr constant [4 x i8] c"..=\00"
@.str530 = private unnamed_addr constant [6 x i8] c"RANGE\00"
@.str531 = private unnamed_addr constant [3 x i8] c"..\00"
@.str532 = private unnamed_addr constant [4 x i8] c"DOT\00"
@.str533 = private unnamed_addr constant [2 x i8] c".\00"
@.str534 = private unnamed_addr constant [1 x i8] c"\22"
@.str535 = private unnamed_addr constant [1 x i8] c"\22"
@.str536 = private unnamed_addr constant [1 x i8] c"'"
@.str537 = private unnamed_addr constant [1 x i8] c"'"
@.str538 = private unnamed_addr constant [1 x i8] c"r"
@.str539 = private unnamed_addr constant [1 x i8] c"\22"
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
declare %nyx_string* @nyx_tcp_read_exact(i64, i64)
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
declare void @nyx_array_insert({ i64, i8* }*, i64, i64)
declare i64 @nyx_array_remove({ i64, i8* }*, i64)
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
declare void @nyx_raw_mode_enter()
declare void @nyx_raw_mode_exit()
declare i64 @nyx_read_byte()
declare i64 @nyx_term_cols()
declare i64 @nyx_term_rows()
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
  %1 = alloca i1
  store i1 true, i1* %1
  %2 = alloca i1
  store i1 true, i1* %2
  %3 = alloca i1
  store i1 true, i1* %3
  %4 = alloca i1
  store i1 true, i1* %4
  %5 = alloca i1
  store i1 true, i1* %5
  %6 = alloca i1
  store i1 true, i1* %6
  %7 = alloca i1
  store i1 true, i1* %7
  %8 = alloca i1
  store i1 true, i1* %8
  %9 = alloca i1
  store i1 true, i1* %9
  %10 = alloca i1
  store i1 true, i1* %10
  %11 = alloca i1
  store i1 true, i1* %11
  %12 = alloca i1
  store i1 true, i1* %12
  %13 = alloca i1
  store i1 true, i1* %13
  %14 = alloca i1
  store i1 true, i1* %14
  %15 = alloca i1
  store i1 true, i1* %15
  %16 = alloca i1
  store i1 true, i1* %16
  %17 = alloca i1
  store i1 true, i1* %17
  %18 = alloca i1
  store i1 true, i1* %18
  %19 = alloca i1
  store i1 true, i1* %19
  %20 = alloca i1
  store i1 true, i1* %20
  %21 = alloca i1
  store i1 true, i1* %21
  %22 = alloca i1
  store i1 true, i1* %22
  %23 = alloca i1
  store i1 true, i1* %23
  %24 = alloca i1
  store i1 true, i1* %24
  %25 = alloca i1
  store i1 true, i1* %25
  %26 = alloca i1
  store i1 true, i1* %26
  %27 = alloca i1
  store i1 true, i1* %27
  %28 = alloca i1
  store i1 true, i1* %28
  %29 = alloca i1
  store i1 true, i1* %29
  %30 = alloca i1
  store i1 true, i1* %30
  %31 = alloca i1
  store i1 true, i1* %31
  %32 = alloca i1
  store i1 true, i1* %32
  %33 = alloca i1
  store i1 true, i1* %33
  %34 = alloca i1
  store i1 true, i1* %34
  %35 = alloca i1
  store i1 true, i1* %35
  %36 = alloca i1
  store i1 true, i1* %36
  %37 = alloca i1
  store i1 true, i1* %37
  %38 = alloca i1
  store i1 true, i1* %38
  %39 = alloca i1
  store i1 true, i1* %39
  %40 = alloca i1
  store i1 true, i1* %40
  %41 = alloca i1
  store i1 true, i1* %41
  %42 = alloca i1
  store i1 true, i1* %42
  %43 = alloca i1
  store i1 true, i1* %43
  %44 = load %nyx_string*, %nyx_string** %word.ptr
  %45 = getelementptr [4 x i8], [4 x i8]* @.str0, i32 0, i32 0
  %46 = call %nyx_string* @nyx_string_from_cstr(i8* %45)
  %47 = call i8* @nyx_string_to_cstr(%nyx_string* %44)
  %48 = call i8* @nyx_string_to_cstr(%nyx_string* %46)
  %49 = call i32 @strcmp(i8* %47, i8* %48)
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %sc_or_end1, label %sc_or_rhs0
sc_or_rhs0:
  %51 = load %nyx_string*, %nyx_string** %word.ptr
  %52 = getelementptr [4 x i8], [4 x i8]* @.str1, i32 0, i32 0
  %53 = call %nyx_string* @nyx_string_from_cstr(i8* %52)
  %54 = call i8* @nyx_string_to_cstr(%nyx_string* %51)
  %55 = call i8* @nyx_string_to_cstr(%nyx_string* %53)
  %56 = call i32 @strcmp(i8* %54, i8* %55)
  %57 = icmp eq i32 %56, 0
  store i1 %57, i1* %43
  br label %sc_or_end1
sc_or_end1:
  %58 = load i1, i1* %43
  br i1 %58, label %sc_or_end3, label %sc_or_rhs2
sc_or_rhs2:
  %59 = load %nyx_string*, %nyx_string** %word.ptr
  %60 = getelementptr [6 x i8], [6 x i8]* @.str2, i32 0, i32 0
  %61 = call %nyx_string* @nyx_string_from_cstr(i8* %60)
  %62 = call i8* @nyx_string_to_cstr(%nyx_string* %59)
  %63 = call i8* @nyx_string_to_cstr(%nyx_string* %61)
  %64 = call i32 @strcmp(i8* %62, i8* %63)
  %65 = icmp eq i32 %64, 0
  store i1 %65, i1* %42
  br label %sc_or_end3
sc_or_end3:
  %66 = load i1, i1* %42
  br i1 %66, label %sc_or_end5, label %sc_or_rhs4
sc_or_rhs4:
  %67 = load %nyx_string*, %nyx_string** %word.ptr
  %68 = getelementptr [3 x i8], [3 x i8]* @.str3, i32 0, i32 0
  %69 = call %nyx_string* @nyx_string_from_cstr(i8* %68)
  %70 = call i8* @nyx_string_to_cstr(%nyx_string* %67)
  %71 = call i8* @nyx_string_to_cstr(%nyx_string* %69)
  %72 = call i32 @strcmp(i8* %70, i8* %71)
  %73 = icmp eq i32 %72, 0
  store i1 %73, i1* %41
  br label %sc_or_end5
sc_or_end5:
  %74 = load i1, i1* %41
  br i1 %74, label %sc_or_end7, label %sc_or_rhs6
sc_or_rhs6:
  %75 = load %nyx_string*, %nyx_string** %word.ptr
  %76 = getelementptr [7 x i8], [7 x i8]* @.str4, i32 0, i32 0
  %77 = call %nyx_string* @nyx_string_from_cstr(i8* %76)
  %78 = call i8* @nyx_string_to_cstr(%nyx_string* %75)
  %79 = call i8* @nyx_string_to_cstr(%nyx_string* %77)
  %80 = call i32 @strcmp(i8* %78, i8* %79)
  %81 = icmp eq i32 %80, 0
  store i1 %81, i1* %40
  br label %sc_or_end7
sc_or_end7:
  %82 = load i1, i1* %40
  br i1 %82, label %sc_or_end9, label %sc_or_rhs8
sc_or_rhs8:
  %83 = load %nyx_string*, %nyx_string** %word.ptr
  %84 = getelementptr [3 x i8], [3 x i8]* @.str5, i32 0, i32 0
  %85 = call %nyx_string* @nyx_string_from_cstr(i8* %84)
  %86 = call i8* @nyx_string_to_cstr(%nyx_string* %83)
  %87 = call i8* @nyx_string_to_cstr(%nyx_string* %85)
  %88 = call i32 @strcmp(i8* %86, i8* %87)
  %89 = icmp eq i32 %88, 0
  store i1 %89, i1* %39
  br label %sc_or_end9
sc_or_end9:
  %90 = load i1, i1* %39
  br i1 %90, label %sc_or_end11, label %sc_or_rhs10
sc_or_rhs10:
  %91 = load %nyx_string*, %nyx_string** %word.ptr
  %92 = getelementptr [5 x i8], [5 x i8]* @.str6, i32 0, i32 0
  %93 = call %nyx_string* @nyx_string_from_cstr(i8* %92)
  %94 = call i8* @nyx_string_to_cstr(%nyx_string* %91)
  %95 = call i8* @nyx_string_to_cstr(%nyx_string* %93)
  %96 = call i32 @strcmp(i8* %94, i8* %95)
  %97 = icmp eq i32 %96, 0
  store i1 %97, i1* %38
  br label %sc_or_end11
sc_or_end11:
  %98 = load i1, i1* %38
  br i1 %98, label %sc_or_end13, label %sc_or_rhs12
sc_or_rhs12:
  %99 = load %nyx_string*, %nyx_string** %word.ptr
  %100 = getelementptr [6 x i8], [6 x i8]* @.str7, i32 0, i32 0
  %101 = call %nyx_string* @nyx_string_from_cstr(i8* %100)
  %102 = call i8* @nyx_string_to_cstr(%nyx_string* %99)
  %103 = call i8* @nyx_string_to_cstr(%nyx_string* %101)
  %104 = call i32 @strcmp(i8* %102, i8* %103)
  %105 = icmp eq i32 %104, 0
  store i1 %105, i1* %37
  br label %sc_or_end13
sc_or_end13:
  %106 = load i1, i1* %37
  br i1 %106, label %sc_or_end15, label %sc_or_rhs14
sc_or_rhs14:
  %107 = load %nyx_string*, %nyx_string** %word.ptr
  %108 = getelementptr [4 x i8], [4 x i8]* @.str8, i32 0, i32 0
  %109 = call %nyx_string* @nyx_string_from_cstr(i8* %108)
  %110 = call i8* @nyx_string_to_cstr(%nyx_string* %107)
  %111 = call i8* @nyx_string_to_cstr(%nyx_string* %109)
  %112 = call i32 @strcmp(i8* %110, i8* %111)
  %113 = icmp eq i32 %112, 0
  store i1 %113, i1* %36
  br label %sc_or_end15
sc_or_end15:
  %114 = load i1, i1* %36
  br i1 %114, label %sc_or_end17, label %sc_or_rhs16
sc_or_rhs16:
  %115 = load %nyx_string*, %nyx_string** %word.ptr
  %116 = getelementptr [3 x i8], [3 x i8]* @.str9, i32 0, i32 0
  %117 = call %nyx_string* @nyx_string_from_cstr(i8* %116)
  %118 = call i8* @nyx_string_to_cstr(%nyx_string* %115)
  %119 = call i8* @nyx_string_to_cstr(%nyx_string* %117)
  %120 = call i32 @strcmp(i8* %118, i8* %119)
  %121 = icmp eq i32 %120, 0
  store i1 %121, i1* %35
  br label %sc_or_end17
sc_or_end17:
  %122 = load i1, i1* %35
  br i1 %122, label %sc_or_end19, label %sc_or_rhs18
sc_or_rhs18:
  %123 = load %nyx_string*, %nyx_string** %word.ptr
  %124 = getelementptr [6 x i8], [6 x i8]* @.str10, i32 0, i32 0
  %125 = call %nyx_string* @nyx_string_from_cstr(i8* %124)
  %126 = call i8* @nyx_string_to_cstr(%nyx_string* %123)
  %127 = call i8* @nyx_string_to_cstr(%nyx_string* %125)
  %128 = call i32 @strcmp(i8* %126, i8* %127)
  %129 = icmp eq i32 %128, 0
  store i1 %129, i1* %34
  br label %sc_or_end19
sc_or_end19:
  %130 = load i1, i1* %34
  br i1 %130, label %sc_or_end21, label %sc_or_rhs20
sc_or_rhs20:
  %131 = load %nyx_string*, %nyx_string** %word.ptr
  %132 = getelementptr [9 x i8], [9 x i8]* @.str11, i32 0, i32 0
  %133 = call %nyx_string* @nyx_string_from_cstr(i8* %132)
  %134 = call i8* @nyx_string_to_cstr(%nyx_string* %131)
  %135 = call i8* @nyx_string_to_cstr(%nyx_string* %133)
  %136 = call i32 @strcmp(i8* %134, i8* %135)
  %137 = icmp eq i32 %136, 0
  store i1 %137, i1* %33
  br label %sc_or_end21
sc_or_end21:
  %138 = load i1, i1* %33
  br i1 %138, label %sc_or_end23, label %sc_or_rhs22
sc_or_rhs22:
  %139 = load %nyx_string*, %nyx_string** %word.ptr
  %140 = getelementptr [7 x i8], [7 x i8]* @.str12, i32 0, i32 0
  %141 = call %nyx_string* @nyx_string_from_cstr(i8* %140)
  %142 = call i8* @nyx_string_to_cstr(%nyx_string* %139)
  %143 = call i8* @nyx_string_to_cstr(%nyx_string* %141)
  %144 = call i32 @strcmp(i8* %142, i8* %143)
  %145 = icmp eq i32 %144, 0
  store i1 %145, i1* %32
  br label %sc_or_end23
sc_or_end23:
  %146 = load i1, i1* %32
  br i1 %146, label %sc_or_end25, label %sc_or_rhs24
sc_or_rhs24:
  %147 = load %nyx_string*, %nyx_string** %word.ptr
  %148 = getelementptr [5 x i8], [5 x i8]* @.str13, i32 0, i32 0
  %149 = call %nyx_string* @nyx_string_from_cstr(i8* %148)
  %150 = call i8* @nyx_string_to_cstr(%nyx_string* %147)
  %151 = call i8* @nyx_string_to_cstr(%nyx_string* %149)
  %152 = call i32 @strcmp(i8* %150, i8* %151)
  %153 = icmp eq i32 %152, 0
  store i1 %153, i1* %31
  br label %sc_or_end25
sc_or_end25:
  %154 = load i1, i1* %31
  br i1 %154, label %sc_or_end27, label %sc_or_rhs26
sc_or_rhs26:
  %155 = load %nyx_string*, %nyx_string** %word.ptr
  %156 = getelementptr [6 x i8], [6 x i8]* @.str14, i32 0, i32 0
  %157 = call %nyx_string* @nyx_string_from_cstr(i8* %156)
  %158 = call i8* @nyx_string_to_cstr(%nyx_string* %155)
  %159 = call i8* @nyx_string_to_cstr(%nyx_string* %157)
  %160 = call i32 @strcmp(i8* %158, i8* %159)
  %161 = icmp eq i32 %160, 0
  store i1 %161, i1* %30
  br label %sc_or_end27
sc_or_end27:
  %162 = load i1, i1* %30
  br i1 %162, label %sc_or_end29, label %sc_or_rhs28
sc_or_rhs28:
  %163 = load %nyx_string*, %nyx_string** %word.ptr
  %164 = getelementptr [7 x i8], [7 x i8]* @.str15, i32 0, i32 0
  %165 = call %nyx_string* @nyx_string_from_cstr(i8* %164)
  %166 = call i8* @nyx_string_to_cstr(%nyx_string* %163)
  %167 = call i8* @nyx_string_to_cstr(%nyx_string* %165)
  %168 = call i32 @strcmp(i8* %166, i8* %167)
  %169 = icmp eq i32 %168, 0
  store i1 %169, i1* %29
  br label %sc_or_end29
sc_or_end29:
  %170 = load i1, i1* %29
  br i1 %170, label %sc_or_end31, label %sc_or_rhs30
sc_or_rhs30:
  %171 = load %nyx_string*, %nyx_string** %word.ptr
  %172 = getelementptr [7 x i8], [7 x i8]* @.str16, i32 0, i32 0
  %173 = call %nyx_string* @nyx_string_from_cstr(i8* %172)
  %174 = call i8* @nyx_string_to_cstr(%nyx_string* %171)
  %175 = call i8* @nyx_string_to_cstr(%nyx_string* %173)
  %176 = call i32 @strcmp(i8* %174, i8* %175)
  %177 = icmp eq i32 %176, 0
  store i1 %177, i1* %28
  br label %sc_or_end31
sc_or_end31:
  %178 = load i1, i1* %28
  br i1 %178, label %sc_or_end33, label %sc_or_rhs32
sc_or_rhs32:
  %179 = load %nyx_string*, %nyx_string** %word.ptr
  %180 = getelementptr [5 x i8], [5 x i8]* @.str17, i32 0, i32 0
  %181 = call %nyx_string* @nyx_string_from_cstr(i8* %180)
  %182 = call i8* @nyx_string_to_cstr(%nyx_string* %179)
  %183 = call i8* @nyx_string_to_cstr(%nyx_string* %181)
  %184 = call i32 @strcmp(i8* %182, i8* %183)
  %185 = icmp eq i32 %184, 0
  store i1 %185, i1* %27
  br label %sc_or_end33
sc_or_end33:
  %186 = load i1, i1* %27
  br i1 %186, label %sc_or_end35, label %sc_or_rhs34
sc_or_rhs34:
  %187 = load %nyx_string*, %nyx_string** %word.ptr
  %188 = getelementptr [5 x i8], [5 x i8]* @.str18, i32 0, i32 0
  %189 = call %nyx_string* @nyx_string_from_cstr(i8* %188)
  %190 = call i8* @nyx_string_to_cstr(%nyx_string* %187)
  %191 = call i8* @nyx_string_to_cstr(%nyx_string* %189)
  %192 = call i32 @strcmp(i8* %190, i8* %191)
  %193 = icmp eq i32 %192, 0
  store i1 %193, i1* %26
  br label %sc_or_end35
sc_or_end35:
  %194 = load i1, i1* %26
  br i1 %194, label %sc_or_end37, label %sc_or_rhs36
sc_or_rhs36:
  %195 = load %nyx_string*, %nyx_string** %word.ptr
  %196 = getelementptr [6 x i8], [6 x i8]* @.str19, i32 0, i32 0
  %197 = call %nyx_string* @nyx_string_from_cstr(i8* %196)
  %198 = call i8* @nyx_string_to_cstr(%nyx_string* %195)
  %199 = call i8* @nyx_string_to_cstr(%nyx_string* %197)
  %200 = call i32 @strcmp(i8* %198, i8* %199)
  %201 = icmp eq i32 %200, 0
  store i1 %201, i1* %25
  br label %sc_or_end37
sc_or_end37:
  %202 = load i1, i1* %25
  br i1 %202, label %sc_or_end39, label %sc_or_rhs38
sc_or_rhs38:
  %203 = load %nyx_string*, %nyx_string** %word.ptr
  %204 = getelementptr [4 x i8], [4 x i8]* @.str20, i32 0, i32 0
  %205 = call %nyx_string* @nyx_string_from_cstr(i8* %204)
  %206 = call i8* @nyx_string_to_cstr(%nyx_string* %203)
  %207 = call i8* @nyx_string_to_cstr(%nyx_string* %205)
  %208 = call i32 @strcmp(i8* %206, i8* %207)
  %209 = icmp eq i32 %208, 0
  store i1 %209, i1* %24
  br label %sc_or_end39
sc_or_end39:
  %210 = load i1, i1* %24
  br i1 %210, label %sc_or_end41, label %sc_or_rhs40
sc_or_rhs40:
  %211 = load %nyx_string*, %nyx_string** %word.ptr
  %212 = getelementptr [3 x i8], [3 x i8]* @.str21, i32 0, i32 0
  %213 = call %nyx_string* @nyx_string_from_cstr(i8* %212)
  %214 = call i8* @nyx_string_to_cstr(%nyx_string* %211)
  %215 = call i8* @nyx_string_to_cstr(%nyx_string* %213)
  %216 = call i32 @strcmp(i8* %214, i8* %215)
  %217 = icmp eq i32 %216, 0
  store i1 %217, i1* %23
  br label %sc_or_end41
sc_or_end41:
  %218 = load i1, i1* %23
  br i1 %218, label %sc_or_end43, label %sc_or_rhs42
sc_or_rhs42:
  %219 = load %nyx_string*, %nyx_string** %word.ptr
  %220 = getelementptr [4 x i8], [4 x i8]* @.str22, i32 0, i32 0
  %221 = call %nyx_string* @nyx_string_from_cstr(i8* %220)
  %222 = call i8* @nyx_string_to_cstr(%nyx_string* %219)
  %223 = call i8* @nyx_string_to_cstr(%nyx_string* %221)
  %224 = call i32 @strcmp(i8* %222, i8* %223)
  %225 = icmp eq i32 %224, 0
  store i1 %225, i1* %22
  br label %sc_or_end43
sc_or_end43:
  %226 = load i1, i1* %22
  br i1 %226, label %sc_or_end45, label %sc_or_rhs44
sc_or_rhs44:
  %227 = load %nyx_string*, %nyx_string** %word.ptr
  %228 = getelementptr [5 x i8], [5 x i8]* @.str23, i32 0, i32 0
  %229 = call %nyx_string* @nyx_string_from_cstr(i8* %228)
  %230 = call i8* @nyx_string_to_cstr(%nyx_string* %227)
  %231 = call i8* @nyx_string_to_cstr(%nyx_string* %229)
  %232 = call i32 @strcmp(i8* %230, i8* %231)
  %233 = icmp eq i32 %232, 0
  store i1 %233, i1* %21
  br label %sc_or_end45
sc_or_end45:
  %234 = load i1, i1* %21
  br i1 %234, label %sc_or_end47, label %sc_or_rhs46
sc_or_rhs46:
  %235 = load %nyx_string*, %nyx_string** %word.ptr
  %236 = getelementptr [6 x i8], [6 x i8]* @.str24, i32 0, i32 0
  %237 = call %nyx_string* @nyx_string_from_cstr(i8* %236)
  %238 = call i8* @nyx_string_to_cstr(%nyx_string* %235)
  %239 = call i8* @nyx_string_to_cstr(%nyx_string* %237)
  %240 = call i32 @strcmp(i8* %238, i8* %239)
  %241 = icmp eq i32 %240, 0
  store i1 %241, i1* %20
  br label %sc_or_end47
sc_or_end47:
  %242 = load i1, i1* %20
  br i1 %242, label %sc_or_end49, label %sc_or_rhs48
sc_or_rhs48:
  %243 = load %nyx_string*, %nyx_string** %word.ptr
  %244 = getelementptr [5 x i8], [5 x i8]* @.str25, i32 0, i32 0
  %245 = call %nyx_string* @nyx_string_from_cstr(i8* %244)
  %246 = call i8* @nyx_string_to_cstr(%nyx_string* %243)
  %247 = call i8* @nyx_string_to_cstr(%nyx_string* %245)
  %248 = call i32 @strcmp(i8* %246, i8* %247)
  %249 = icmp eq i32 %248, 0
  store i1 %249, i1* %19
  br label %sc_or_end49
sc_or_end49:
  %250 = load i1, i1* %19
  br i1 %250, label %sc_or_end51, label %sc_or_rhs50
sc_or_rhs50:
  %251 = load %nyx_string*, %nyx_string** %word.ptr
  %252 = getelementptr [7 x i8], [7 x i8]* @.str26, i32 0, i32 0
  %253 = call %nyx_string* @nyx_string_from_cstr(i8* %252)
  %254 = call i8* @nyx_string_to_cstr(%nyx_string* %251)
  %255 = call i8* @nyx_string_to_cstr(%nyx_string* %253)
  %256 = call i32 @strcmp(i8* %254, i8* %255)
  %257 = icmp eq i32 %256, 0
  store i1 %257, i1* %18
  br label %sc_or_end51
sc_or_end51:
  %258 = load i1, i1* %18
  br i1 %258, label %sc_or_end53, label %sc_or_rhs52
sc_or_rhs52:
  %259 = load %nyx_string*, %nyx_string** %word.ptr
  %260 = getelementptr [7 x i8], [7 x i8]* @.str27, i32 0, i32 0
  %261 = call %nyx_string* @nyx_string_from_cstr(i8* %260)
  %262 = call i8* @nyx_string_to_cstr(%nyx_string* %259)
  %263 = call i8* @nyx_string_to_cstr(%nyx_string* %261)
  %264 = call i32 @strcmp(i8* %262, i8* %263)
  %265 = icmp eq i32 %264, 0
  store i1 %265, i1* %17
  br label %sc_or_end53
sc_or_end53:
  %266 = load i1, i1* %17
  br i1 %266, label %sc_or_end55, label %sc_or_rhs54
sc_or_rhs54:
  %267 = load %nyx_string*, %nyx_string** %word.ptr
  %268 = getelementptr [3 x i8], [3 x i8]* @.str28, i32 0, i32 0
  %269 = call %nyx_string* @nyx_string_from_cstr(i8* %268)
  %270 = call i8* @nyx_string_to_cstr(%nyx_string* %267)
  %271 = call i8* @nyx_string_to_cstr(%nyx_string* %269)
  %272 = call i32 @strcmp(i8* %270, i8* %271)
  %273 = icmp eq i32 %272, 0
  store i1 %273, i1* %16
  br label %sc_or_end55
sc_or_end55:
  %274 = load i1, i1* %16
  br i1 %274, label %sc_or_end57, label %sc_or_rhs56
sc_or_rhs56:
  %275 = load %nyx_string*, %nyx_string** %word.ptr
  %276 = getelementptr [7 x i8], [7 x i8]* @.str29, i32 0, i32 0
  %277 = call %nyx_string* @nyx_string_from_cstr(i8* %276)
  %278 = call i8* @nyx_string_to_cstr(%nyx_string* %275)
  %279 = call i8* @nyx_string_to_cstr(%nyx_string* %277)
  %280 = call i32 @strcmp(i8* %278, i8* %279)
  %281 = icmp eq i32 %280, 0
  store i1 %281, i1* %15
  br label %sc_or_end57
sc_or_end57:
  %282 = load i1, i1* %15
  br i1 %282, label %sc_or_end59, label %sc_or_rhs58
sc_or_rhs58:
  %283 = load %nyx_string*, %nyx_string** %word.ptr
  %284 = getelementptr [7 x i8], [7 x i8]* @.str30, i32 0, i32 0
  %285 = call %nyx_string* @nyx_string_from_cstr(i8* %284)
  %286 = call i8* @nyx_string_to_cstr(%nyx_string* %283)
  %287 = call i8* @nyx_string_to_cstr(%nyx_string* %285)
  %288 = call i32 @strcmp(i8* %286, i8* %287)
  %289 = icmp eq i32 %288, 0
  store i1 %289, i1* %14
  br label %sc_or_end59
sc_or_end59:
  %290 = load i1, i1* %14
  br i1 %290, label %sc_or_end61, label %sc_or_rhs60
sc_or_rhs60:
  %291 = load %nyx_string*, %nyx_string** %word.ptr
  %292 = getelementptr [7 x i8], [7 x i8]* @.str31, i32 0, i32 0
  %293 = call %nyx_string* @nyx_string_from_cstr(i8* %292)
  %294 = call i8* @nyx_string_to_cstr(%nyx_string* %291)
  %295 = call i8* @nyx_string_to_cstr(%nyx_string* %293)
  %296 = call i32 @strcmp(i8* %294, i8* %295)
  %297 = icmp eq i32 %296, 0
  store i1 %297, i1* %13
  br label %sc_or_end61
sc_or_end61:
  %298 = load i1, i1* %13
  br i1 %298, label %sc_or_end63, label %sc_or_rhs62
sc_or_rhs62:
  %299 = load %nyx_string*, %nyx_string** %word.ptr
  %300 = getelementptr [8 x i8], [8 x i8]* @.str32, i32 0, i32 0
  %301 = call %nyx_string* @nyx_string_from_cstr(i8* %300)
  %302 = call i8* @nyx_string_to_cstr(%nyx_string* %299)
  %303 = call i8* @nyx_string_to_cstr(%nyx_string* %301)
  %304 = call i32 @strcmp(i8* %302, i8* %303)
  %305 = icmp eq i32 %304, 0
  store i1 %305, i1* %12
  br label %sc_or_end63
sc_or_end63:
  %306 = load i1, i1* %12
  br i1 %306, label %sc_or_end65, label %sc_or_rhs64
sc_or_rhs64:
  %307 = load %nyx_string*, %nyx_string** %word.ptr
  %308 = getelementptr [4 x i8], [4 x i8]* @.str33, i32 0, i32 0
  %309 = call %nyx_string* @nyx_string_from_cstr(i8* %308)
  %310 = call i8* @nyx_string_to_cstr(%nyx_string* %307)
  %311 = call i8* @nyx_string_to_cstr(%nyx_string* %309)
  %312 = call i32 @strcmp(i8* %310, i8* %311)
  %313 = icmp eq i32 %312, 0
  store i1 %313, i1* %11
  br label %sc_or_end65
sc_or_end65:
  %314 = load i1, i1* %11
  br i1 %314, label %sc_or_end67, label %sc_or_rhs66
sc_or_rhs66:
  %315 = load %nyx_string*, %nyx_string** %word.ptr
  %316 = getelementptr [4 x i8], [4 x i8]* @.str34, i32 0, i32 0
  %317 = call %nyx_string* @nyx_string_from_cstr(i8* %316)
  %318 = call i8* @nyx_string_to_cstr(%nyx_string* %315)
  %319 = call i8* @nyx_string_to_cstr(%nyx_string* %317)
  %320 = call i32 @strcmp(i8* %318, i8* %319)
  %321 = icmp eq i32 %320, 0
  store i1 %321, i1* %10
  br label %sc_or_end67
sc_or_end67:
  %322 = load i1, i1* %10
  br i1 %322, label %sc_or_end69, label %sc_or_rhs68
sc_or_rhs68:
  %323 = load %nyx_string*, %nyx_string** %word.ptr
  %324 = getelementptr [4 x i8], [4 x i8]* @.str35, i32 0, i32 0
  %325 = call %nyx_string* @nyx_string_from_cstr(i8* %324)
  %326 = call i8* @nyx_string_to_cstr(%nyx_string* %323)
  %327 = call i8* @nyx_string_to_cstr(%nyx_string* %325)
  %328 = call i32 @strcmp(i8* %326, i8* %327)
  %329 = icmp eq i32 %328, 0
  store i1 %329, i1* %9
  br label %sc_or_end69
sc_or_end69:
  %330 = load i1, i1* %9
  br i1 %330, label %sc_or_end71, label %sc_or_rhs70
sc_or_rhs70:
  %331 = load %nyx_string*, %nyx_string** %word.ptr
  %332 = getelementptr [7 x i8], [7 x i8]* @.str36, i32 0, i32 0
  %333 = call %nyx_string* @nyx_string_from_cstr(i8* %332)
  %334 = call i8* @nyx_string_to_cstr(%nyx_string* %331)
  %335 = call i8* @nyx_string_to_cstr(%nyx_string* %333)
  %336 = call i32 @strcmp(i8* %334, i8* %335)
  %337 = icmp eq i32 %336, 0
  store i1 %337, i1* %8
  br label %sc_or_end71
sc_or_end71:
  %338 = load i1, i1* %8
  br i1 %338, label %sc_or_end73, label %sc_or_rhs72
sc_or_rhs72:
  %339 = load %nyx_string*, %nyx_string** %word.ptr
  %340 = getelementptr [6 x i8], [6 x i8]* @.str37, i32 0, i32 0
  %341 = call %nyx_string* @nyx_string_from_cstr(i8* %340)
  %342 = call i8* @nyx_string_to_cstr(%nyx_string* %339)
  %343 = call i8* @nyx_string_to_cstr(%nyx_string* %341)
  %344 = call i32 @strcmp(i8* %342, i8* %343)
  %345 = icmp eq i32 %344, 0
  store i1 %345, i1* %7
  br label %sc_or_end73
sc_or_end73:
  %346 = load i1, i1* %7
  br i1 %346, label %sc_or_end75, label %sc_or_rhs74
sc_or_rhs74:
  %347 = load %nyx_string*, %nyx_string** %word.ptr
  %348 = getelementptr [6 x i8], [6 x i8]* @.str38, i32 0, i32 0
  %349 = call %nyx_string* @nyx_string_from_cstr(i8* %348)
  %350 = call i8* @nyx_string_to_cstr(%nyx_string* %347)
  %351 = call i8* @nyx_string_to_cstr(%nyx_string* %349)
  %352 = call i32 @strcmp(i8* %350, i8* %351)
  %353 = icmp eq i32 %352, 0
  store i1 %353, i1* %6
  br label %sc_or_end75
sc_or_end75:
  %354 = load i1, i1* %6
  br i1 %354, label %sc_or_end77, label %sc_or_rhs76
sc_or_rhs76:
  %355 = load %nyx_string*, %nyx_string** %word.ptr
  %356 = getelementptr [4 x i8], [4 x i8]* @.str39, i32 0, i32 0
  %357 = call %nyx_string* @nyx_string_from_cstr(i8* %356)
  %358 = call i8* @nyx_string_to_cstr(%nyx_string* %355)
  %359 = call i8* @nyx_string_to_cstr(%nyx_string* %357)
  %360 = call i32 @strcmp(i8* %358, i8* %359)
  %361 = icmp eq i32 %360, 0
  store i1 %361, i1* %5
  br label %sc_or_end77
sc_or_end77:
  %362 = load i1, i1* %5
  br i1 %362, label %sc_or_end79, label %sc_or_rhs78
sc_or_rhs78:
  %363 = load %nyx_string*, %nyx_string** %word.ptr
  %364 = getelementptr [6 x i8], [6 x i8]* @.str40, i32 0, i32 0
  %365 = call %nyx_string* @nyx_string_from_cstr(i8* %364)
  %366 = call i8* @nyx_string_to_cstr(%nyx_string* %363)
  %367 = call i8* @nyx_string_to_cstr(%nyx_string* %365)
  %368 = call i32 @strcmp(i8* %366, i8* %367)
  %369 = icmp eq i32 %368, 0
  store i1 %369, i1* %4
  br label %sc_or_end79
sc_or_end79:
  %370 = load i1, i1* %4
  br i1 %370, label %sc_or_end81, label %sc_or_rhs80
sc_or_rhs80:
  %371 = load %nyx_string*, %nyx_string** %word.ptr
  %372 = getelementptr [6 x i8], [6 x i8]* @.str41, i32 0, i32 0
  %373 = call %nyx_string* @nyx_string_from_cstr(i8* %372)
  %374 = call i8* @nyx_string_to_cstr(%nyx_string* %371)
  %375 = call i8* @nyx_string_to_cstr(%nyx_string* %373)
  %376 = call i32 @strcmp(i8* %374, i8* %375)
  %377 = icmp eq i32 %376, 0
  store i1 %377, i1* %3
  br label %sc_or_end81
sc_or_end81:
  %378 = load i1, i1* %3
  br i1 %378, label %sc_or_end83, label %sc_or_rhs82
sc_or_rhs82:
  %379 = load %nyx_string*, %nyx_string** %word.ptr
  %380 = getelementptr [6 x i8], [6 x i8]* @.str42, i32 0, i32 0
  %381 = call %nyx_string* @nyx_string_from_cstr(i8* %380)
  %382 = call i8* @nyx_string_to_cstr(%nyx_string* %379)
  %383 = call i8* @nyx_string_to_cstr(%nyx_string* %381)
  %384 = call i32 @strcmp(i8* %382, i8* %383)
  %385 = icmp eq i32 %384, 0
  store i1 %385, i1* %2
  br label %sc_or_end83
sc_or_end83:
  %386 = load i1, i1* %2
  br i1 %386, label %sc_or_end85, label %sc_or_rhs84
sc_or_rhs84:
  %387 = load %nyx_string*, %nyx_string** %word.ptr
  %388 = getelementptr [6 x i8], [6 x i8]* @.str43, i32 0, i32 0
  %389 = call %nyx_string* @nyx_string_from_cstr(i8* %388)
  %390 = call i8* @nyx_string_to_cstr(%nyx_string* %387)
  %391 = call i8* @nyx_string_to_cstr(%nyx_string* %389)
  %392 = call i32 @strcmp(i8* %390, i8* %391)
  %393 = icmp eq i32 %392, 0
  store i1 %393, i1* %1
  br label %sc_or_end85
sc_or_end85:
  %394 = load i1, i1* %1
  ret i1 %394
}

define internal %nyx_string* @keyword_to_type(
%nyx_string* %word.param) {
  %word.ptr = alloca %nyx_string*
  store %nyx_string* %word.param, %nyx_string** %word.ptr
  %395 = load %nyx_string*, %nyx_string** %word.ptr
  %396 = getelementptr [4 x i8], [4 x i8]* @.str44, i32 0, i32 0
  %397 = call %nyx_string* @nyx_string_from_cstr(i8* %396)
  %398 = call i8* @nyx_string_to_cstr(%nyx_string* %395)
  %399 = call i8* @nyx_string_to_cstr(%nyx_string* %397)
  %400 = call i32 @strcmp(i8* %398, i8* %399)
  %401 = icmp eq i32 %400, 0
  br i1 %401, label %then86, label %else87
then86:
  %402 = getelementptr [4 x i8], [4 x i8]* @.str45, i32 0, i32 0
  %403 = call %nyx_string* @nyx_string_from_cstr(i8* %402)
  ret %nyx_string* %403
else87:
  br label %merge88
merge88:
  %404 = load %nyx_string*, %nyx_string** %word.ptr
  %405 = getelementptr [4 x i8], [4 x i8]* @.str46, i32 0, i32 0
  %406 = call %nyx_string* @nyx_string_from_cstr(i8* %405)
  %407 = call i8* @nyx_string_to_cstr(%nyx_string* %404)
  %408 = call i8* @nyx_string_to_cstr(%nyx_string* %406)
  %409 = call i32 @strcmp(i8* %407, i8* %408)
  %410 = icmp eq i32 %409, 0
  br i1 %410, label %then89, label %else90
then89:
  %411 = getelementptr [4 x i8], [4 x i8]* @.str47, i32 0, i32 0
  %412 = call %nyx_string* @nyx_string_from_cstr(i8* %411)
  ret %nyx_string* %412
else90:
  br label %merge91
merge91:
  %413 = load %nyx_string*, %nyx_string** %word.ptr
  %414 = getelementptr [6 x i8], [6 x i8]* @.str48, i32 0, i32 0
  %415 = call %nyx_string* @nyx_string_from_cstr(i8* %414)
  %416 = call i8* @nyx_string_to_cstr(%nyx_string* %413)
  %417 = call i8* @nyx_string_to_cstr(%nyx_string* %415)
  %418 = call i32 @strcmp(i8* %416, i8* %417)
  %419 = icmp eq i32 %418, 0
  br i1 %419, label %then92, label %else93
then92:
  %420 = getelementptr [6 x i8], [6 x i8]* @.str49, i32 0, i32 0
  %421 = call %nyx_string* @nyx_string_from_cstr(i8* %420)
  ret %nyx_string* %421
else93:
  br label %merge94
merge94:
  %422 = load %nyx_string*, %nyx_string** %word.ptr
  %423 = getelementptr [3 x i8], [3 x i8]* @.str50, i32 0, i32 0
  %424 = call %nyx_string* @nyx_string_from_cstr(i8* %423)
  %425 = call i8* @nyx_string_to_cstr(%nyx_string* %422)
  %426 = call i8* @nyx_string_to_cstr(%nyx_string* %424)
  %427 = call i32 @strcmp(i8* %425, i8* %426)
  %428 = icmp eq i32 %427, 0
  br i1 %428, label %then95, label %else96
then95:
  %429 = getelementptr [3 x i8], [3 x i8]* @.str51, i32 0, i32 0
  %430 = call %nyx_string* @nyx_string_from_cstr(i8* %429)
  ret %nyx_string* %430
else96:
  br label %merge97
merge97:
  %431 = load %nyx_string*, %nyx_string** %word.ptr
  %432 = getelementptr [7 x i8], [7 x i8]* @.str52, i32 0, i32 0
  %433 = call %nyx_string* @nyx_string_from_cstr(i8* %432)
  %434 = call i8* @nyx_string_to_cstr(%nyx_string* %431)
  %435 = call i8* @nyx_string_to_cstr(%nyx_string* %433)
  %436 = call i32 @strcmp(i8* %434, i8* %435)
  %437 = icmp eq i32 %436, 0
  br i1 %437, label %then98, label %else99
then98:
  %438 = getelementptr [7 x i8], [7 x i8]* @.str53, i32 0, i32 0
  %439 = call %nyx_string* @nyx_string_from_cstr(i8* %438)
  ret %nyx_string* %439
else99:
  br label %merge100
merge100:
  %440 = load %nyx_string*, %nyx_string** %word.ptr
  %441 = getelementptr [3 x i8], [3 x i8]* @.str54, i32 0, i32 0
  %442 = call %nyx_string* @nyx_string_from_cstr(i8* %441)
  %443 = call i8* @nyx_string_to_cstr(%nyx_string* %440)
  %444 = call i8* @nyx_string_to_cstr(%nyx_string* %442)
  %445 = call i32 @strcmp(i8* %443, i8* %444)
  %446 = icmp eq i32 %445, 0
  br i1 %446, label %then101, label %else102
then101:
  %447 = getelementptr [3 x i8], [3 x i8]* @.str55, i32 0, i32 0
  %448 = call %nyx_string* @nyx_string_from_cstr(i8* %447)
  ret %nyx_string* %448
else102:
  br label %merge103
merge103:
  %449 = load %nyx_string*, %nyx_string** %word.ptr
  %450 = getelementptr [5 x i8], [5 x i8]* @.str56, i32 0, i32 0
  %451 = call %nyx_string* @nyx_string_from_cstr(i8* %450)
  %452 = call i8* @nyx_string_to_cstr(%nyx_string* %449)
  %453 = call i8* @nyx_string_to_cstr(%nyx_string* %451)
  %454 = call i32 @strcmp(i8* %452, i8* %453)
  %455 = icmp eq i32 %454, 0
  br i1 %455, label %then104, label %else105
then104:
  %456 = getelementptr [5 x i8], [5 x i8]* @.str57, i32 0, i32 0
  %457 = call %nyx_string* @nyx_string_from_cstr(i8* %456)
  ret %nyx_string* %457
else105:
  br label %merge106
merge106:
  %458 = load %nyx_string*, %nyx_string** %word.ptr
  %459 = getelementptr [6 x i8], [6 x i8]* @.str58, i32 0, i32 0
  %460 = call %nyx_string* @nyx_string_from_cstr(i8* %459)
  %461 = call i8* @nyx_string_to_cstr(%nyx_string* %458)
  %462 = call i8* @nyx_string_to_cstr(%nyx_string* %460)
  %463 = call i32 @strcmp(i8* %461, i8* %462)
  %464 = icmp eq i32 %463, 0
  br i1 %464, label %then107, label %else108
then107:
  %465 = getelementptr [6 x i8], [6 x i8]* @.str59, i32 0, i32 0
  %466 = call %nyx_string* @nyx_string_from_cstr(i8* %465)
  ret %nyx_string* %466
else108:
  br label %merge109
merge109:
  %467 = load %nyx_string*, %nyx_string** %word.ptr
  %468 = getelementptr [4 x i8], [4 x i8]* @.str60, i32 0, i32 0
  %469 = call %nyx_string* @nyx_string_from_cstr(i8* %468)
  %470 = call i8* @nyx_string_to_cstr(%nyx_string* %467)
  %471 = call i8* @nyx_string_to_cstr(%nyx_string* %469)
  %472 = call i32 @strcmp(i8* %470, i8* %471)
  %473 = icmp eq i32 %472, 0
  br i1 %473, label %then110, label %else111
then110:
  %474 = getelementptr [4 x i8], [4 x i8]* @.str61, i32 0, i32 0
  %475 = call %nyx_string* @nyx_string_from_cstr(i8* %474)
  ret %nyx_string* %475
else111:
  br label %merge112
merge112:
  %476 = load %nyx_string*, %nyx_string** %word.ptr
  %477 = getelementptr [3 x i8], [3 x i8]* @.str62, i32 0, i32 0
  %478 = call %nyx_string* @nyx_string_from_cstr(i8* %477)
  %479 = call i8* @nyx_string_to_cstr(%nyx_string* %476)
  %480 = call i8* @nyx_string_to_cstr(%nyx_string* %478)
  %481 = call i32 @strcmp(i8* %479, i8* %480)
  %482 = icmp eq i32 %481, 0
  br i1 %482, label %then113, label %else114
then113:
  %483 = getelementptr [3 x i8], [3 x i8]* @.str63, i32 0, i32 0
  %484 = call %nyx_string* @nyx_string_from_cstr(i8* %483)
  ret %nyx_string* %484
else114:
  br label %merge115
merge115:
  %485 = load %nyx_string*, %nyx_string** %word.ptr
  %486 = getelementptr [6 x i8], [6 x i8]* @.str64, i32 0, i32 0
  %487 = call %nyx_string* @nyx_string_from_cstr(i8* %486)
  %488 = call i8* @nyx_string_to_cstr(%nyx_string* %485)
  %489 = call i8* @nyx_string_to_cstr(%nyx_string* %487)
  %490 = call i32 @strcmp(i8* %488, i8* %489)
  %491 = icmp eq i32 %490, 0
  br i1 %491, label %then116, label %else117
then116:
  %492 = getelementptr [6 x i8], [6 x i8]* @.str65, i32 0, i32 0
  %493 = call %nyx_string* @nyx_string_from_cstr(i8* %492)
  ret %nyx_string* %493
else117:
  br label %merge118
merge118:
  %494 = load %nyx_string*, %nyx_string** %word.ptr
  %495 = getelementptr [9 x i8], [9 x i8]* @.str66, i32 0, i32 0
  %496 = call %nyx_string* @nyx_string_from_cstr(i8* %495)
  %497 = call i8* @nyx_string_to_cstr(%nyx_string* %494)
  %498 = call i8* @nyx_string_to_cstr(%nyx_string* %496)
  %499 = call i32 @strcmp(i8* %497, i8* %498)
  %500 = icmp eq i32 %499, 0
  br i1 %500, label %then119, label %else120
then119:
  %501 = getelementptr [9 x i8], [9 x i8]* @.str67, i32 0, i32 0
  %502 = call %nyx_string* @nyx_string_from_cstr(i8* %501)
  ret %nyx_string* %502
else120:
  br label %merge121
merge121:
  %503 = load %nyx_string*, %nyx_string** %word.ptr
  %504 = getelementptr [7 x i8], [7 x i8]* @.str68, i32 0, i32 0
  %505 = call %nyx_string* @nyx_string_from_cstr(i8* %504)
  %506 = call i8* @nyx_string_to_cstr(%nyx_string* %503)
  %507 = call i8* @nyx_string_to_cstr(%nyx_string* %505)
  %508 = call i32 @strcmp(i8* %506, i8* %507)
  %509 = icmp eq i32 %508, 0
  br i1 %509, label %then122, label %else123
then122:
  %510 = getelementptr [7 x i8], [7 x i8]* @.str69, i32 0, i32 0
  %511 = call %nyx_string* @nyx_string_from_cstr(i8* %510)
  ret %nyx_string* %511
else123:
  br label %merge124
merge124:
  %512 = load %nyx_string*, %nyx_string** %word.ptr
  %513 = getelementptr [5 x i8], [5 x i8]* @.str70, i32 0, i32 0
  %514 = call %nyx_string* @nyx_string_from_cstr(i8* %513)
  %515 = call i8* @nyx_string_to_cstr(%nyx_string* %512)
  %516 = call i8* @nyx_string_to_cstr(%nyx_string* %514)
  %517 = call i32 @strcmp(i8* %515, i8* %516)
  %518 = icmp eq i32 %517, 0
  br i1 %518, label %then125, label %else126
then125:
  %519 = getelementptr [5 x i8], [5 x i8]* @.str71, i32 0, i32 0
  %520 = call %nyx_string* @nyx_string_from_cstr(i8* %519)
  ret %nyx_string* %520
else126:
  br label %merge127
merge127:
  %521 = load %nyx_string*, %nyx_string** %word.ptr
  %522 = getelementptr [6 x i8], [6 x i8]* @.str72, i32 0, i32 0
  %523 = call %nyx_string* @nyx_string_from_cstr(i8* %522)
  %524 = call i8* @nyx_string_to_cstr(%nyx_string* %521)
  %525 = call i8* @nyx_string_to_cstr(%nyx_string* %523)
  %526 = call i32 @strcmp(i8* %524, i8* %525)
  %527 = icmp eq i32 %526, 0
  br i1 %527, label %then128, label %else129
then128:
  %528 = getelementptr [6 x i8], [6 x i8]* @.str73, i32 0, i32 0
  %529 = call %nyx_string* @nyx_string_from_cstr(i8* %528)
  ret %nyx_string* %529
else129:
  br label %merge130
merge130:
  %530 = load %nyx_string*, %nyx_string** %word.ptr
  %531 = getelementptr [7 x i8], [7 x i8]* @.str74, i32 0, i32 0
  %532 = call %nyx_string* @nyx_string_from_cstr(i8* %531)
  %533 = call i8* @nyx_string_to_cstr(%nyx_string* %530)
  %534 = call i8* @nyx_string_to_cstr(%nyx_string* %532)
  %535 = call i32 @strcmp(i8* %533, i8* %534)
  %536 = icmp eq i32 %535, 0
  br i1 %536, label %then131, label %else132
then131:
  %537 = getelementptr [7 x i8], [7 x i8]* @.str75, i32 0, i32 0
  %538 = call %nyx_string* @nyx_string_from_cstr(i8* %537)
  ret %nyx_string* %538
else132:
  br label %merge133
merge133:
  %539 = load %nyx_string*, %nyx_string** %word.ptr
  %540 = getelementptr [7 x i8], [7 x i8]* @.str76, i32 0, i32 0
  %541 = call %nyx_string* @nyx_string_from_cstr(i8* %540)
  %542 = call i8* @nyx_string_to_cstr(%nyx_string* %539)
  %543 = call i8* @nyx_string_to_cstr(%nyx_string* %541)
  %544 = call i32 @strcmp(i8* %542, i8* %543)
  %545 = icmp eq i32 %544, 0
  br i1 %545, label %then134, label %else135
then134:
  %546 = getelementptr [7 x i8], [7 x i8]* @.str77, i32 0, i32 0
  %547 = call %nyx_string* @nyx_string_from_cstr(i8* %546)
  ret %nyx_string* %547
else135:
  br label %merge136
merge136:
  %548 = load %nyx_string*, %nyx_string** %word.ptr
  %549 = getelementptr [5 x i8], [5 x i8]* @.str78, i32 0, i32 0
  %550 = call %nyx_string* @nyx_string_from_cstr(i8* %549)
  %551 = call i8* @nyx_string_to_cstr(%nyx_string* %548)
  %552 = call i8* @nyx_string_to_cstr(%nyx_string* %550)
  %553 = call i32 @strcmp(i8* %551, i8* %552)
  %554 = icmp eq i32 %553, 0
  br i1 %554, label %then137, label %else138
then137:
  %555 = getelementptr [5 x i8], [5 x i8]* @.str79, i32 0, i32 0
  %556 = call %nyx_string* @nyx_string_from_cstr(i8* %555)
  ret %nyx_string* %556
else138:
  br label %merge139
merge139:
  %557 = load %nyx_string*, %nyx_string** %word.ptr
  %558 = getelementptr [5 x i8], [5 x i8]* @.str80, i32 0, i32 0
  %559 = call %nyx_string* @nyx_string_from_cstr(i8* %558)
  %560 = call i8* @nyx_string_to_cstr(%nyx_string* %557)
  %561 = call i8* @nyx_string_to_cstr(%nyx_string* %559)
  %562 = call i32 @strcmp(i8* %560, i8* %561)
  %563 = icmp eq i32 %562, 0
  br i1 %563, label %then140, label %else141
then140:
  %564 = getelementptr [5 x i8], [5 x i8]* @.str81, i32 0, i32 0
  %565 = call %nyx_string* @nyx_string_from_cstr(i8* %564)
  ret %nyx_string* %565
else141:
  br label %merge142
merge142:
  %566 = load %nyx_string*, %nyx_string** %word.ptr
  %567 = getelementptr [6 x i8], [6 x i8]* @.str82, i32 0, i32 0
  %568 = call %nyx_string* @nyx_string_from_cstr(i8* %567)
  %569 = call i8* @nyx_string_to_cstr(%nyx_string* %566)
  %570 = call i8* @nyx_string_to_cstr(%nyx_string* %568)
  %571 = call i32 @strcmp(i8* %569, i8* %570)
  %572 = icmp eq i32 %571, 0
  br i1 %572, label %then143, label %else144
then143:
  %573 = getelementptr [6 x i8], [6 x i8]* @.str83, i32 0, i32 0
  %574 = call %nyx_string* @nyx_string_from_cstr(i8* %573)
  ret %nyx_string* %574
else144:
  br label %merge145
merge145:
  %575 = load %nyx_string*, %nyx_string** %word.ptr
  %576 = getelementptr [4 x i8], [4 x i8]* @.str84, i32 0, i32 0
  %577 = call %nyx_string* @nyx_string_from_cstr(i8* %576)
  %578 = call i8* @nyx_string_to_cstr(%nyx_string* %575)
  %579 = call i8* @nyx_string_to_cstr(%nyx_string* %577)
  %580 = call i32 @strcmp(i8* %578, i8* %579)
  %581 = icmp eq i32 %580, 0
  br i1 %581, label %then146, label %else147
then146:
  %582 = getelementptr [4 x i8], [4 x i8]* @.str85, i32 0, i32 0
  %583 = call %nyx_string* @nyx_string_from_cstr(i8* %582)
  ret %nyx_string* %583
else147:
  br label %merge148
merge148:
  %584 = load %nyx_string*, %nyx_string** %word.ptr
  %585 = getelementptr [3 x i8], [3 x i8]* @.str86, i32 0, i32 0
  %586 = call %nyx_string* @nyx_string_from_cstr(i8* %585)
  %587 = call i8* @nyx_string_to_cstr(%nyx_string* %584)
  %588 = call i8* @nyx_string_to_cstr(%nyx_string* %586)
  %589 = call i32 @strcmp(i8* %587, i8* %588)
  %590 = icmp eq i32 %589, 0
  br i1 %590, label %then149, label %else150
then149:
  %591 = getelementptr [3 x i8], [3 x i8]* @.str87, i32 0, i32 0
  %592 = call %nyx_string* @nyx_string_from_cstr(i8* %591)
  ret %nyx_string* %592
else150:
  br label %merge151
merge151:
  %593 = load %nyx_string*, %nyx_string** %word.ptr
  %594 = getelementptr [4 x i8], [4 x i8]* @.str88, i32 0, i32 0
  %595 = call %nyx_string* @nyx_string_from_cstr(i8* %594)
  %596 = call i8* @nyx_string_to_cstr(%nyx_string* %593)
  %597 = call i8* @nyx_string_to_cstr(%nyx_string* %595)
  %598 = call i32 @strcmp(i8* %596, i8* %597)
  %599 = icmp eq i32 %598, 0
  br i1 %599, label %then152, label %else153
then152:
  %600 = getelementptr [4 x i8], [4 x i8]* @.str89, i32 0, i32 0
  %601 = call %nyx_string* @nyx_string_from_cstr(i8* %600)
  ret %nyx_string* %601
else153:
  br label %merge154
merge154:
  %602 = load %nyx_string*, %nyx_string** %word.ptr
  %603 = getelementptr [5 x i8], [5 x i8]* @.str90, i32 0, i32 0
  %604 = call %nyx_string* @nyx_string_from_cstr(i8* %603)
  %605 = call i8* @nyx_string_to_cstr(%nyx_string* %602)
  %606 = call i8* @nyx_string_to_cstr(%nyx_string* %604)
  %607 = call i32 @strcmp(i8* %605, i8* %606)
  %608 = icmp eq i32 %607, 0
  br i1 %608, label %then155, label %else156
then155:
  %609 = getelementptr [5 x i8], [5 x i8]* @.str91, i32 0, i32 0
  %610 = call %nyx_string* @nyx_string_from_cstr(i8* %609)
  ret %nyx_string* %610
else156:
  br label %merge157
merge157:
  %611 = load %nyx_string*, %nyx_string** %word.ptr
  %612 = getelementptr [6 x i8], [6 x i8]* @.str92, i32 0, i32 0
  %613 = call %nyx_string* @nyx_string_from_cstr(i8* %612)
  %614 = call i8* @nyx_string_to_cstr(%nyx_string* %611)
  %615 = call i8* @nyx_string_to_cstr(%nyx_string* %613)
  %616 = call i32 @strcmp(i8* %614, i8* %615)
  %617 = icmp eq i32 %616, 0
  br i1 %617, label %then158, label %else159
then158:
  %618 = getelementptr [6 x i8], [6 x i8]* @.str93, i32 0, i32 0
  %619 = call %nyx_string* @nyx_string_from_cstr(i8* %618)
  ret %nyx_string* %619
else159:
  br label %merge160
merge160:
  %620 = load %nyx_string*, %nyx_string** %word.ptr
  %621 = getelementptr [5 x i8], [5 x i8]* @.str94, i32 0, i32 0
  %622 = call %nyx_string* @nyx_string_from_cstr(i8* %621)
  %623 = call i8* @nyx_string_to_cstr(%nyx_string* %620)
  %624 = call i8* @nyx_string_to_cstr(%nyx_string* %622)
  %625 = call i32 @strcmp(i8* %623, i8* %624)
  %626 = icmp eq i32 %625, 0
  br i1 %626, label %then161, label %else162
then161:
  %627 = getelementptr [5 x i8], [5 x i8]* @.str95, i32 0, i32 0
  %628 = call %nyx_string* @nyx_string_from_cstr(i8* %627)
  ret %nyx_string* %628
else162:
  br label %merge163
merge163:
  %629 = load %nyx_string*, %nyx_string** %word.ptr
  %630 = getelementptr [7 x i8], [7 x i8]* @.str96, i32 0, i32 0
  %631 = call %nyx_string* @nyx_string_from_cstr(i8* %630)
  %632 = call i8* @nyx_string_to_cstr(%nyx_string* %629)
  %633 = call i8* @nyx_string_to_cstr(%nyx_string* %631)
  %634 = call i32 @strcmp(i8* %632, i8* %633)
  %635 = icmp eq i32 %634, 0
  br i1 %635, label %then164, label %else165
then164:
  %636 = getelementptr [7 x i8], [7 x i8]* @.str97, i32 0, i32 0
  %637 = call %nyx_string* @nyx_string_from_cstr(i8* %636)
  ret %nyx_string* %637
else165:
  br label %merge166
merge166:
  %638 = load %nyx_string*, %nyx_string** %word.ptr
  %639 = getelementptr [7 x i8], [7 x i8]* @.str98, i32 0, i32 0
  %640 = call %nyx_string* @nyx_string_from_cstr(i8* %639)
  %641 = call i8* @nyx_string_to_cstr(%nyx_string* %638)
  %642 = call i8* @nyx_string_to_cstr(%nyx_string* %640)
  %643 = call i32 @strcmp(i8* %641, i8* %642)
  %644 = icmp eq i32 %643, 0
  br i1 %644, label %then167, label %else168
then167:
  %645 = getelementptr [7 x i8], [7 x i8]* @.str99, i32 0, i32 0
  %646 = call %nyx_string* @nyx_string_from_cstr(i8* %645)
  ret %nyx_string* %646
else168:
  br label %merge169
merge169:
  %647 = load %nyx_string*, %nyx_string** %word.ptr
  %648 = getelementptr [3 x i8], [3 x i8]* @.str100, i32 0, i32 0
  %649 = call %nyx_string* @nyx_string_from_cstr(i8* %648)
  %650 = call i8* @nyx_string_to_cstr(%nyx_string* %647)
  %651 = call i8* @nyx_string_to_cstr(%nyx_string* %649)
  %652 = call i32 @strcmp(i8* %650, i8* %651)
  %653 = icmp eq i32 %652, 0
  br i1 %653, label %then170, label %else171
then170:
  %654 = getelementptr [3 x i8], [3 x i8]* @.str101, i32 0, i32 0
  %655 = call %nyx_string* @nyx_string_from_cstr(i8* %654)
  ret %nyx_string* %655
else171:
  br label %merge172
merge172:
  %656 = load %nyx_string*, %nyx_string** %word.ptr
  %657 = getelementptr [7 x i8], [7 x i8]* @.str102, i32 0, i32 0
  %658 = call %nyx_string* @nyx_string_from_cstr(i8* %657)
  %659 = call i8* @nyx_string_to_cstr(%nyx_string* %656)
  %660 = call i8* @nyx_string_to_cstr(%nyx_string* %658)
  %661 = call i32 @strcmp(i8* %659, i8* %660)
  %662 = icmp eq i32 %661, 0
  br i1 %662, label %then173, label %else174
then173:
  %663 = getelementptr [7 x i8], [7 x i8]* @.str103, i32 0, i32 0
  %664 = call %nyx_string* @nyx_string_from_cstr(i8* %663)
  ret %nyx_string* %664
else174:
  br label %merge175
merge175:
  %665 = load %nyx_string*, %nyx_string** %word.ptr
  %666 = getelementptr [7 x i8], [7 x i8]* @.str104, i32 0, i32 0
  %667 = call %nyx_string* @nyx_string_from_cstr(i8* %666)
  %668 = call i8* @nyx_string_to_cstr(%nyx_string* %665)
  %669 = call i8* @nyx_string_to_cstr(%nyx_string* %667)
  %670 = call i32 @strcmp(i8* %668, i8* %669)
  %671 = icmp eq i32 %670, 0
  br i1 %671, label %then176, label %else177
then176:
  %672 = getelementptr [7 x i8], [7 x i8]* @.str105, i32 0, i32 0
  %673 = call %nyx_string* @nyx_string_from_cstr(i8* %672)
  ret %nyx_string* %673
else177:
  br label %merge178
merge178:
  %674 = load %nyx_string*, %nyx_string** %word.ptr
  %675 = getelementptr [7 x i8], [7 x i8]* @.str106, i32 0, i32 0
  %676 = call %nyx_string* @nyx_string_from_cstr(i8* %675)
  %677 = call i8* @nyx_string_to_cstr(%nyx_string* %674)
  %678 = call i8* @nyx_string_to_cstr(%nyx_string* %676)
  %679 = call i32 @strcmp(i8* %677, i8* %678)
  %680 = icmp eq i32 %679, 0
  br i1 %680, label %then179, label %else180
then179:
  %681 = getelementptr [7 x i8], [7 x i8]* @.str107, i32 0, i32 0
  %682 = call %nyx_string* @nyx_string_from_cstr(i8* %681)
  ret %nyx_string* %682
else180:
  br label %merge181
merge181:
  %683 = load %nyx_string*, %nyx_string** %word.ptr
  %684 = getelementptr [8 x i8], [8 x i8]* @.str108, i32 0, i32 0
  %685 = call %nyx_string* @nyx_string_from_cstr(i8* %684)
  %686 = call i8* @nyx_string_to_cstr(%nyx_string* %683)
  %687 = call i8* @nyx_string_to_cstr(%nyx_string* %685)
  %688 = call i32 @strcmp(i8* %686, i8* %687)
  %689 = icmp eq i32 %688, 0
  br i1 %689, label %then182, label %else183
then182:
  %690 = getelementptr [8 x i8], [8 x i8]* @.str109, i32 0, i32 0
  %691 = call %nyx_string* @nyx_string_from_cstr(i8* %690)
  ret %nyx_string* %691
else183:
  br label %merge184
merge184:
  %692 = load %nyx_string*, %nyx_string** %word.ptr
  %693 = getelementptr [4 x i8], [4 x i8]* @.str110, i32 0, i32 0
  %694 = call %nyx_string* @nyx_string_from_cstr(i8* %693)
  %695 = call i8* @nyx_string_to_cstr(%nyx_string* %692)
  %696 = call i8* @nyx_string_to_cstr(%nyx_string* %694)
  %697 = call i32 @strcmp(i8* %695, i8* %696)
  %698 = icmp eq i32 %697, 0
  br i1 %698, label %then185, label %else186
then185:
  %699 = getelementptr [4 x i8], [4 x i8]* @.str111, i32 0, i32 0
  %700 = call %nyx_string* @nyx_string_from_cstr(i8* %699)
  ret %nyx_string* %700
else186:
  br label %merge187
merge187:
  %701 = load %nyx_string*, %nyx_string** %word.ptr
  %702 = getelementptr [4 x i8], [4 x i8]* @.str112, i32 0, i32 0
  %703 = call %nyx_string* @nyx_string_from_cstr(i8* %702)
  %704 = call i8* @nyx_string_to_cstr(%nyx_string* %701)
  %705 = call i8* @nyx_string_to_cstr(%nyx_string* %703)
  %706 = call i32 @strcmp(i8* %704, i8* %705)
  %707 = icmp eq i32 %706, 0
  br i1 %707, label %then188, label %else189
then188:
  %708 = getelementptr [4 x i8], [4 x i8]* @.str113, i32 0, i32 0
  %709 = call %nyx_string* @nyx_string_from_cstr(i8* %708)
  ret %nyx_string* %709
else189:
  br label %merge190
merge190:
  %710 = load %nyx_string*, %nyx_string** %word.ptr
  %711 = getelementptr [4 x i8], [4 x i8]* @.str114, i32 0, i32 0
  %712 = call %nyx_string* @nyx_string_from_cstr(i8* %711)
  %713 = call i8* @nyx_string_to_cstr(%nyx_string* %710)
  %714 = call i8* @nyx_string_to_cstr(%nyx_string* %712)
  %715 = call i32 @strcmp(i8* %713, i8* %714)
  %716 = icmp eq i32 %715, 0
  br i1 %716, label %then191, label %else192
then191:
  %717 = getelementptr [4 x i8], [4 x i8]* @.str115, i32 0, i32 0
  %718 = call %nyx_string* @nyx_string_from_cstr(i8* %717)
  ret %nyx_string* %718
else192:
  br label %merge193
merge193:
  %719 = load %nyx_string*, %nyx_string** %word.ptr
  %720 = getelementptr [7 x i8], [7 x i8]* @.str116, i32 0, i32 0
  %721 = call %nyx_string* @nyx_string_from_cstr(i8* %720)
  %722 = call i8* @nyx_string_to_cstr(%nyx_string* %719)
  %723 = call i8* @nyx_string_to_cstr(%nyx_string* %721)
  %724 = call i32 @strcmp(i8* %722, i8* %723)
  %725 = icmp eq i32 %724, 0
  br i1 %725, label %then194, label %else195
then194:
  %726 = getelementptr [7 x i8], [7 x i8]* @.str117, i32 0, i32 0
  %727 = call %nyx_string* @nyx_string_from_cstr(i8* %726)
  ret %nyx_string* %727
else195:
  br label %merge196
merge196:
  %728 = load %nyx_string*, %nyx_string** %word.ptr
  %729 = getelementptr [6 x i8], [6 x i8]* @.str118, i32 0, i32 0
  %730 = call %nyx_string* @nyx_string_from_cstr(i8* %729)
  %731 = call i8* @nyx_string_to_cstr(%nyx_string* %728)
  %732 = call i8* @nyx_string_to_cstr(%nyx_string* %730)
  %733 = call i32 @strcmp(i8* %731, i8* %732)
  %734 = icmp eq i32 %733, 0
  br i1 %734, label %then197, label %else198
then197:
  %735 = getelementptr [6 x i8], [6 x i8]* @.str119, i32 0, i32 0
  %736 = call %nyx_string* @nyx_string_from_cstr(i8* %735)
  ret %nyx_string* %736
else198:
  br label %merge199
merge199:
  %737 = load %nyx_string*, %nyx_string** %word.ptr
  %738 = getelementptr [6 x i8], [6 x i8]* @.str120, i32 0, i32 0
  %739 = call %nyx_string* @nyx_string_from_cstr(i8* %738)
  %740 = call i8* @nyx_string_to_cstr(%nyx_string* %737)
  %741 = call i8* @nyx_string_to_cstr(%nyx_string* %739)
  %742 = call i32 @strcmp(i8* %740, i8* %741)
  %743 = icmp eq i32 %742, 0
  br i1 %743, label %then200, label %else201
then200:
  %744 = getelementptr [6 x i8], [6 x i8]* @.str121, i32 0, i32 0
  %745 = call %nyx_string* @nyx_string_from_cstr(i8* %744)
  ret %nyx_string* %745
else201:
  br label %merge202
merge202:
  %746 = load %nyx_string*, %nyx_string** %word.ptr
  %747 = getelementptr [4 x i8], [4 x i8]* @.str122, i32 0, i32 0
  %748 = call %nyx_string* @nyx_string_from_cstr(i8* %747)
  %749 = call i8* @nyx_string_to_cstr(%nyx_string* %746)
  %750 = call i8* @nyx_string_to_cstr(%nyx_string* %748)
  %751 = call i32 @strcmp(i8* %749, i8* %750)
  %752 = icmp eq i32 %751, 0
  br i1 %752, label %then203, label %else204
then203:
  %753 = getelementptr [4 x i8], [4 x i8]* @.str123, i32 0, i32 0
  %754 = call %nyx_string* @nyx_string_from_cstr(i8* %753)
  ret %nyx_string* %754
else204:
  br label %merge205
merge205:
  %755 = load %nyx_string*, %nyx_string** %word.ptr
  %756 = getelementptr [6 x i8], [6 x i8]* @.str124, i32 0, i32 0
  %757 = call %nyx_string* @nyx_string_from_cstr(i8* %756)
  %758 = call i8* @nyx_string_to_cstr(%nyx_string* %755)
  %759 = call i8* @nyx_string_to_cstr(%nyx_string* %757)
  %760 = call i32 @strcmp(i8* %758, i8* %759)
  %761 = icmp eq i32 %760, 0
  br i1 %761, label %then206, label %else207
then206:
  %762 = getelementptr [6 x i8], [6 x i8]* @.str125, i32 0, i32 0
  %763 = call %nyx_string* @nyx_string_from_cstr(i8* %762)
  ret %nyx_string* %763
else207:
  br label %merge208
merge208:
  %764 = load %nyx_string*, %nyx_string** %word.ptr
  %765 = getelementptr [6 x i8], [6 x i8]* @.str126, i32 0, i32 0
  %766 = call %nyx_string* @nyx_string_from_cstr(i8* %765)
  %767 = call i8* @nyx_string_to_cstr(%nyx_string* %764)
  %768 = call i8* @nyx_string_to_cstr(%nyx_string* %766)
  %769 = call i32 @strcmp(i8* %767, i8* %768)
  %770 = icmp eq i32 %769, 0
  br i1 %770, label %then209, label %else210
then209:
  %771 = getelementptr [6 x i8], [6 x i8]* @.str127, i32 0, i32 0
  %772 = call %nyx_string* @nyx_string_from_cstr(i8* %771)
  ret %nyx_string* %772
else210:
  br label %merge211
merge211:
  %773 = load %nyx_string*, %nyx_string** %word.ptr
  %774 = getelementptr [6 x i8], [6 x i8]* @.str128, i32 0, i32 0
  %775 = call %nyx_string* @nyx_string_from_cstr(i8* %774)
  %776 = call i8* @nyx_string_to_cstr(%nyx_string* %773)
  %777 = call i8* @nyx_string_to_cstr(%nyx_string* %775)
  %778 = call i32 @strcmp(i8* %776, i8* %777)
  %779 = icmp eq i32 %778, 0
  br i1 %779, label %then212, label %else213
then212:
  %780 = getelementptr [6 x i8], [6 x i8]* @.str129, i32 0, i32 0
  %781 = call %nyx_string* @nyx_string_from_cstr(i8* %780)
  ret %nyx_string* %781
else213:
  br label %merge214
merge214:
  %782 = load %nyx_string*, %nyx_string** %word.ptr
  %783 = getelementptr [6 x i8], [6 x i8]* @.str130, i32 0, i32 0
  %784 = call %nyx_string* @nyx_string_from_cstr(i8* %783)
  %785 = call i8* @nyx_string_to_cstr(%nyx_string* %782)
  %786 = call i8* @nyx_string_to_cstr(%nyx_string* %784)
  %787 = call i32 @strcmp(i8* %785, i8* %786)
  %788 = icmp eq i32 %787, 0
  br i1 %788, label %then215, label %else216
then215:
  %789 = getelementptr [6 x i8], [6 x i8]* @.str131, i32 0, i32 0
  %790 = call %nyx_string* @nyx_string_from_cstr(i8* %789)
  ret %nyx_string* %790
else216:
  br label %merge217
merge217:
  %791 = getelementptr [8 x i8], [8 x i8]* @.str132, i32 0, i32 0
  %792 = call %nyx_string* @nyx_string_from_cstr(i8* %791)
  ret %nyx_string* %792
}

%SharedEnv_tokenize = type { %nyx_string*, %nyx_string*, i64, i64, i64, { i64, i8* }*, i64 }
define { i64, i8* }* @tokenize(
%nyx_string* %source_code.param) {
  %793 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* null, i32 1
  %794 = ptrtoint %SharedEnv_tokenize* %793 to i64
  %795 = call i8* @GC_malloc(i64 %794)
  %796 = bitcast i8* %795 to %SharedEnv_tokenize*
  %797 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %796, i32 0, i32 0
  store %nyx_string* %source_code.param, %nyx_string** %797
  %798 = load %nyx_string*, %nyx_string** %797
  %799 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %796, i32 0, i32 1
  store %nyx_string* %798, %nyx_string** %799
  %800 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %796, i32 0, i32 2
  store i64 0, i64* %800
  %801 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %796, i32 0, i32 3
  store i64 1, i64* %801
  %802 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %796, i32 0, i32 4
  store i64 1, i64* %802
  %803 = call { i64, i8* }* @nyx_array_new_ptr()
  %804 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %796, i32 0, i32 5
  store { i64, i8* }* %803, { i64, i8* }** %804
  %805 = getelementptr %SharedEnv_tokenize, %SharedEnv_tokenize* %796, i32 0, i32 6
  store i64 0, i64* %805
  %806 = alloca i1
  store i1 0, i1* %806
  br label %while_cond218
while_cond218:
  %807 = load i1, i1* %806
  %808 = xor i1 %807, true
  br i1 %808, label %while_body219, label %while_end220
while_body219:
  %809 = call i1 @at_end(%SharedEnv_tokenize* %796)
  br i1 %809, label %then221, label %else222
then221:
  store i1 1, i1* %806
  br label %merge223
else222:
  %810 = call i64 @scan_token(%SharedEnv_tokenize* %796)
  br label %merge223
merge223:
  br label %while_cond218
while_end220:
  %811 = getelementptr [4 x i8], [4 x i8]* @.str133, i32 0, i32 0
  %812 = call %nyx_string* @nyx_string_from_cstr(i8* %811)
  %813 = getelementptr [1 x i8], [1 x i8]* @.str134, i32 0, i32 0
  %814 = call %nyx_string* @nyx_string_from_cstr(i8* %813)
  %815 = call i64 @add_token(%SharedEnv_tokenize* %796, %nyx_string* %812, %nyx_string* %814)
  %816 = load { i64, i8* }*, { i64, i8* }** %804
  ret { i64, i8* }* %816
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
  %9 = alloca i1
  store i1 true, i1* %9
  %10 = alloca i1
  store i1 true, i1* %10
  %11 = alloca i1
  store i1 true, i1* %11
  %12 = alloca i1
  store i1 true, i1* %12
  %13 = alloca i1
  store i1 true, i1* %13
  %14 = alloca i1
  store i1 true, i1* %14
  %15 = alloca i1
  store i1 true, i1* %15
  %16 = alloca i1
  store i1 true, i1* %16
  %17 = alloca i1
  store i1 true, i1* %17
  %18 = load i8, i8* %8
  %19 = getelementptr [1 x i8], [1 x i8]* @.str138, i32 0, i32 0
  %20 = load i8, i8* %19
  %21 = zext i8 %20 to i64
  %22 = zext i8 %18 to i64
  %23 = icmp eq i64 %22, %21
  br i1 %23, label %sc_or_end1, label %sc_or_rhs0
sc_or_rhs0:
  %24 = load i8, i8* %8
  %25 = getelementptr [1 x i8], [1 x i8]* @.str139, i32 0, i32 0
  %26 = load i8, i8* %25
  %27 = zext i8 %26 to i64
  %28 = zext i8 %24 to i64
  %29 = icmp eq i64 %28, %27
  store i1 %29, i1* %17
  br label %sc_or_end1
sc_or_end1:
  %30 = load i1, i1* %17
  br i1 %30, label %sc_or_end3, label %sc_or_rhs2
sc_or_rhs2:
  %31 = load i8, i8* %8
  %32 = getelementptr [1 x i8], [1 x i8]* @.str140, i32 0, i32 0
  %33 = load i8, i8* %32
  %34 = zext i8 %33 to i64
  %35 = zext i8 %31 to i64
  %36 = icmp eq i64 %35, %34
  store i1 %36, i1* %16
  br label %sc_or_end3
sc_or_end3:
  %37 = load i1, i1* %16
  br i1 %37, label %sc_or_end5, label %sc_or_rhs4
sc_or_rhs4:
  %38 = load i8, i8* %8
  %39 = getelementptr [1 x i8], [1 x i8]* @.str141, i32 0, i32 0
  %40 = load i8, i8* %39
  %41 = zext i8 %40 to i64
  %42 = zext i8 %38 to i64
  %43 = icmp eq i64 %42, %41
  store i1 %43, i1* %15
  br label %sc_or_end5
sc_or_end5:
  %44 = load i1, i1* %15
  br i1 %44, label %sc_or_end7, label %sc_or_rhs6
sc_or_rhs6:
  %45 = load i8, i8* %8
  %46 = getelementptr [1 x i8], [1 x i8]* @.str142, i32 0, i32 0
  %47 = load i8, i8* %46
  %48 = zext i8 %47 to i64
  %49 = zext i8 %45 to i64
  %50 = icmp eq i64 %49, %48
  store i1 %50, i1* %14
  br label %sc_or_end7
sc_or_end7:
  %51 = load i1, i1* %14
  br i1 %51, label %sc_or_end9, label %sc_or_rhs8
sc_or_rhs8:
  %52 = load i8, i8* %8
  %53 = getelementptr [1 x i8], [1 x i8]* @.str143, i32 0, i32 0
  %54 = load i8, i8* %53
  %55 = zext i8 %54 to i64
  %56 = zext i8 %52 to i64
  %57 = icmp eq i64 %56, %55
  store i1 %57, i1* %13
  br label %sc_or_end9
sc_or_end9:
  %58 = load i1, i1* %13
  br i1 %58, label %sc_or_end11, label %sc_or_rhs10
sc_or_rhs10:
  %59 = load i8, i8* %8
  %60 = getelementptr [1 x i8], [1 x i8]* @.str144, i32 0, i32 0
  %61 = load i8, i8* %60
  %62 = zext i8 %61 to i64
  %63 = zext i8 %59 to i64
  %64 = icmp eq i64 %63, %62
  store i1 %64, i1* %12
  br label %sc_or_end11
sc_or_end11:
  %65 = load i1, i1* %12
  br i1 %65, label %sc_or_end13, label %sc_or_rhs12
sc_or_rhs12:
  %66 = load i8, i8* %8
  %67 = getelementptr [1 x i8], [1 x i8]* @.str145, i32 0, i32 0
  %68 = load i8, i8* %67
  %69 = zext i8 %68 to i64
  %70 = zext i8 %66 to i64
  %71 = icmp eq i64 %70, %69
  store i1 %71, i1* %11
  br label %sc_or_end13
sc_or_end13:
  %72 = load i1, i1* %11
  br i1 %72, label %sc_or_end15, label %sc_or_rhs14
sc_or_rhs14:
  %73 = load i8, i8* %8
  %74 = getelementptr [1 x i8], [1 x i8]* @.str146, i32 0, i32 0
  %75 = load i8, i8* %74
  %76 = zext i8 %75 to i64
  %77 = zext i8 %73 to i64
  %78 = icmp eq i64 %77, %76
  store i1 %78, i1* %10
  br label %sc_or_end15
sc_or_end15:
  %79 = load i1, i1* %10
  br i1 %79, label %sc_or_end17, label %sc_or_rhs16
sc_or_rhs16:
  %80 = load i8, i8* %8
  %81 = getelementptr [1 x i8], [1 x i8]* @.str147, i32 0, i32 0
  %82 = load i8, i8* %81
  %83 = zext i8 %82 to i64
  %84 = zext i8 %80 to i64
  %85 = icmp eq i64 %84, %83
  store i1 %85, i1* %9
  br label %sc_or_end17
sc_or_end17:
  %86 = load i1, i1* %9
  ret i1 %86
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
  %9 = alloca i1
  store i1 true, i1* %9
  %10 = alloca i1
  store i1 true, i1* %10
  %11 = alloca i1
  store i1 true, i1* %11
  %12 = alloca i1
  store i1 true, i1* %12
  %13 = alloca i1
  store i1 true, i1* %13
  %14 = alloca i1
  store i1 true, i1* %14
  %15 = alloca i1
  store i1 true, i1* %15
  %16 = alloca i1
  store i1 true, i1* %16
  %17 = alloca i1
  store i1 true, i1* %17
  %18 = alloca i1
  store i1 true, i1* %18
  %19 = alloca i1
  store i1 true, i1* %19
  %20 = alloca i1
  store i1 true, i1* %20
  %21 = alloca i1
  store i1 true, i1* %21
  %22 = alloca i1
  store i1 true, i1* %22
  %23 = alloca i1
  store i1 true, i1* %23
  %24 = alloca i1
  store i1 true, i1* %24
  %25 = alloca i1
  store i1 true, i1* %25
  %26 = alloca i1
  store i1 true, i1* %26
  %27 = alloca i1
  store i1 true, i1* %27
  %28 = alloca i1
  store i1 true, i1* %28
  %29 = alloca i1
  store i1 true, i1* %29
  %30 = alloca i1
  store i1 true, i1* %30
  %31 = alloca i1
  store i1 true, i1* %31
  %32 = alloca i1
  store i1 true, i1* %32
  %33 = alloca i1
  store i1 true, i1* %33
  %34 = alloca i1
  store i1 true, i1* %34
  %35 = alloca i1
  store i1 true, i1* %35
  %36 = alloca i1
  store i1 true, i1* %36
  %37 = alloca i1
  store i1 true, i1* %37
  %38 = alloca i1
  store i1 true, i1* %38
  %39 = alloca i1
  store i1 true, i1* %39
  %40 = alloca i1
  store i1 true, i1* %40
  %41 = alloca i1
  store i1 true, i1* %41
  %42 = alloca i1
  store i1 true, i1* %42
  %43 = alloca i1
  store i1 true, i1* %43
  %44 = alloca i1
  store i1 true, i1* %44
  %45 = alloca i1
  store i1 true, i1* %45
  %46 = alloca i1
  store i1 true, i1* %46
  %47 = alloca i1
  store i1 true, i1* %47
  %48 = alloca i1
  store i1 true, i1* %48
  %49 = alloca i1
  store i1 true, i1* %49
  %50 = alloca i1
  store i1 true, i1* %50
  %51 = alloca i1
  store i1 true, i1* %51
  %52 = alloca i1
  store i1 true, i1* %52
  %53 = alloca i1
  store i1 true, i1* %53
  %54 = alloca i1
  store i1 true, i1* %54
  %55 = alloca i1
  store i1 true, i1* %55
  %56 = alloca i1
  store i1 true, i1* %56
  %57 = alloca i1
  store i1 true, i1* %57
  %58 = alloca i1
  store i1 true, i1* %58
  %59 = alloca i1
  store i1 true, i1* %59
  %60 = alloca i1
  store i1 true, i1* %60
  %61 = load i8, i8* %8
  %62 = getelementptr [1 x i8], [1 x i8]* @.str148, i32 0, i32 0
  %63 = load i8, i8* %62
  %64 = zext i8 %63 to i64
  %65 = zext i8 %61 to i64
  %66 = icmp eq i64 %65, %64
  br i1 %66, label %sc_or_end1, label %sc_or_rhs0
sc_or_rhs0:
  %67 = load i8, i8* %8
  %68 = getelementptr [1 x i8], [1 x i8]* @.str149, i32 0, i32 0
  %69 = load i8, i8* %68
  %70 = zext i8 %69 to i64
  %71 = zext i8 %67 to i64
  %72 = icmp eq i64 %71, %70
  store i1 %72, i1* %60
  br label %sc_or_end1
sc_or_end1:
  %73 = load i1, i1* %60
  br i1 %73, label %sc_or_end3, label %sc_or_rhs2
sc_or_rhs2:
  %74 = load i8, i8* %8
  %75 = getelementptr [1 x i8], [1 x i8]* @.str150, i32 0, i32 0
  %76 = load i8, i8* %75
  %77 = zext i8 %76 to i64
  %78 = zext i8 %74 to i64
  %79 = icmp eq i64 %78, %77
  store i1 %79, i1* %59
  br label %sc_or_end3
sc_or_end3:
  %80 = load i1, i1* %59
  br i1 %80, label %sc_or_end5, label %sc_or_rhs4
sc_or_rhs4:
  %81 = load i8, i8* %8
  %82 = getelementptr [1 x i8], [1 x i8]* @.str151, i32 0, i32 0
  %83 = load i8, i8* %82
  %84 = zext i8 %83 to i64
  %85 = zext i8 %81 to i64
  %86 = icmp eq i64 %85, %84
  store i1 %86, i1* %58
  br label %sc_or_end5
sc_or_end5:
  %87 = load i1, i1* %58
  br i1 %87, label %sc_or_end7, label %sc_or_rhs6
sc_or_rhs6:
  %88 = load i8, i8* %8
  %89 = getelementptr [1 x i8], [1 x i8]* @.str152, i32 0, i32 0
  %90 = load i8, i8* %89
  %91 = zext i8 %90 to i64
  %92 = zext i8 %88 to i64
  %93 = icmp eq i64 %92, %91
  store i1 %93, i1* %57
  br label %sc_or_end7
sc_or_end7:
  %94 = load i1, i1* %57
  br i1 %94, label %sc_or_end9, label %sc_or_rhs8
sc_or_rhs8:
  %95 = load i8, i8* %8
  %96 = getelementptr [1 x i8], [1 x i8]* @.str153, i32 0, i32 0
  %97 = load i8, i8* %96
  %98 = zext i8 %97 to i64
  %99 = zext i8 %95 to i64
  %100 = icmp eq i64 %99, %98
  store i1 %100, i1* %56
  br label %sc_or_end9
sc_or_end9:
  %101 = load i1, i1* %56
  br i1 %101, label %sc_or_end11, label %sc_or_rhs10
sc_or_rhs10:
  %102 = load i8, i8* %8
  %103 = getelementptr [1 x i8], [1 x i8]* @.str154, i32 0, i32 0
  %104 = load i8, i8* %103
  %105 = zext i8 %104 to i64
  %106 = zext i8 %102 to i64
  %107 = icmp eq i64 %106, %105
  store i1 %107, i1* %55
  br label %sc_or_end11
sc_or_end11:
  %108 = load i1, i1* %55
  br i1 %108, label %sc_or_end13, label %sc_or_rhs12
sc_or_rhs12:
  %109 = load i8, i8* %8
  %110 = getelementptr [1 x i8], [1 x i8]* @.str155, i32 0, i32 0
  %111 = load i8, i8* %110
  %112 = zext i8 %111 to i64
  %113 = zext i8 %109 to i64
  %114 = icmp eq i64 %113, %112
  store i1 %114, i1* %54
  br label %sc_or_end13
sc_or_end13:
  %115 = load i1, i1* %54
  br i1 %115, label %sc_or_end15, label %sc_or_rhs14
sc_or_rhs14:
  %116 = load i8, i8* %8
  %117 = getelementptr [1 x i8], [1 x i8]* @.str156, i32 0, i32 0
  %118 = load i8, i8* %117
  %119 = zext i8 %118 to i64
  %120 = zext i8 %116 to i64
  %121 = icmp eq i64 %120, %119
  store i1 %121, i1* %53
  br label %sc_or_end15
sc_or_end15:
  %122 = load i1, i1* %53
  br i1 %122, label %sc_or_end17, label %sc_or_rhs16
sc_or_rhs16:
  %123 = load i8, i8* %8
  %124 = getelementptr [1 x i8], [1 x i8]* @.str157, i32 0, i32 0
  %125 = load i8, i8* %124
  %126 = zext i8 %125 to i64
  %127 = zext i8 %123 to i64
  %128 = icmp eq i64 %127, %126
  store i1 %128, i1* %52
  br label %sc_or_end17
sc_or_end17:
  %129 = load i1, i1* %52
  br i1 %129, label %sc_or_end19, label %sc_or_rhs18
sc_or_rhs18:
  %130 = load i8, i8* %8
  %131 = getelementptr [1 x i8], [1 x i8]* @.str158, i32 0, i32 0
  %132 = load i8, i8* %131
  %133 = zext i8 %132 to i64
  %134 = zext i8 %130 to i64
  %135 = icmp eq i64 %134, %133
  store i1 %135, i1* %51
  br label %sc_or_end19
sc_or_end19:
  %136 = load i1, i1* %51
  br i1 %136, label %sc_or_end21, label %sc_or_rhs20
sc_or_rhs20:
  %137 = load i8, i8* %8
  %138 = getelementptr [1 x i8], [1 x i8]* @.str159, i32 0, i32 0
  %139 = load i8, i8* %138
  %140 = zext i8 %139 to i64
  %141 = zext i8 %137 to i64
  %142 = icmp eq i64 %141, %140
  store i1 %142, i1* %50
  br label %sc_or_end21
sc_or_end21:
  %143 = load i1, i1* %50
  br i1 %143, label %sc_or_end23, label %sc_or_rhs22
sc_or_rhs22:
  %144 = load i8, i8* %8
  %145 = getelementptr [1 x i8], [1 x i8]* @.str160, i32 0, i32 0
  %146 = load i8, i8* %145
  %147 = zext i8 %146 to i64
  %148 = zext i8 %144 to i64
  %149 = icmp eq i64 %148, %147
  store i1 %149, i1* %49
  br label %sc_or_end23
sc_or_end23:
  %150 = load i1, i1* %49
  br i1 %150, label %sc_or_end25, label %sc_or_rhs24
sc_or_rhs24:
  %151 = load i8, i8* %8
  %152 = getelementptr [1 x i8], [1 x i8]* @.str161, i32 0, i32 0
  %153 = load i8, i8* %152
  %154 = zext i8 %153 to i64
  %155 = zext i8 %151 to i64
  %156 = icmp eq i64 %155, %154
  store i1 %156, i1* %48
  br label %sc_or_end25
sc_or_end25:
  %157 = load i1, i1* %48
  br i1 %157, label %sc_or_end27, label %sc_or_rhs26
sc_or_rhs26:
  %158 = load i8, i8* %8
  %159 = getelementptr [1 x i8], [1 x i8]* @.str162, i32 0, i32 0
  %160 = load i8, i8* %159
  %161 = zext i8 %160 to i64
  %162 = zext i8 %158 to i64
  %163 = icmp eq i64 %162, %161
  store i1 %163, i1* %47
  br label %sc_or_end27
sc_or_end27:
  %164 = load i1, i1* %47
  br i1 %164, label %sc_or_end29, label %sc_or_rhs28
sc_or_rhs28:
  %165 = load i8, i8* %8
  %166 = getelementptr [1 x i8], [1 x i8]* @.str163, i32 0, i32 0
  %167 = load i8, i8* %166
  %168 = zext i8 %167 to i64
  %169 = zext i8 %165 to i64
  %170 = icmp eq i64 %169, %168
  store i1 %170, i1* %46
  br label %sc_or_end29
sc_or_end29:
  %171 = load i1, i1* %46
  br i1 %171, label %sc_or_end31, label %sc_or_rhs30
sc_or_rhs30:
  %172 = load i8, i8* %8
  %173 = getelementptr [1 x i8], [1 x i8]* @.str164, i32 0, i32 0
  %174 = load i8, i8* %173
  %175 = zext i8 %174 to i64
  %176 = zext i8 %172 to i64
  %177 = icmp eq i64 %176, %175
  store i1 %177, i1* %45
  br label %sc_or_end31
sc_or_end31:
  %178 = load i1, i1* %45
  br i1 %178, label %sc_or_end33, label %sc_or_rhs32
sc_or_rhs32:
  %179 = load i8, i8* %8
  %180 = getelementptr [1 x i8], [1 x i8]* @.str165, i32 0, i32 0
  %181 = load i8, i8* %180
  %182 = zext i8 %181 to i64
  %183 = zext i8 %179 to i64
  %184 = icmp eq i64 %183, %182
  store i1 %184, i1* %44
  br label %sc_or_end33
sc_or_end33:
  %185 = load i1, i1* %44
  br i1 %185, label %sc_or_end35, label %sc_or_rhs34
sc_or_rhs34:
  %186 = load i8, i8* %8
  %187 = getelementptr [1 x i8], [1 x i8]* @.str166, i32 0, i32 0
  %188 = load i8, i8* %187
  %189 = zext i8 %188 to i64
  %190 = zext i8 %186 to i64
  %191 = icmp eq i64 %190, %189
  store i1 %191, i1* %43
  br label %sc_or_end35
sc_or_end35:
  %192 = load i1, i1* %43
  br i1 %192, label %sc_or_end37, label %sc_or_rhs36
sc_or_rhs36:
  %193 = load i8, i8* %8
  %194 = getelementptr [1 x i8], [1 x i8]* @.str167, i32 0, i32 0
  %195 = load i8, i8* %194
  %196 = zext i8 %195 to i64
  %197 = zext i8 %193 to i64
  %198 = icmp eq i64 %197, %196
  store i1 %198, i1* %42
  br label %sc_or_end37
sc_or_end37:
  %199 = load i1, i1* %42
  br i1 %199, label %sc_or_end39, label %sc_or_rhs38
sc_or_rhs38:
  %200 = load i8, i8* %8
  %201 = getelementptr [1 x i8], [1 x i8]* @.str168, i32 0, i32 0
  %202 = load i8, i8* %201
  %203 = zext i8 %202 to i64
  %204 = zext i8 %200 to i64
  %205 = icmp eq i64 %204, %203
  store i1 %205, i1* %41
  br label %sc_or_end39
sc_or_end39:
  %206 = load i1, i1* %41
  br i1 %206, label %sc_or_end41, label %sc_or_rhs40
sc_or_rhs40:
  %207 = load i8, i8* %8
  %208 = getelementptr [1 x i8], [1 x i8]* @.str169, i32 0, i32 0
  %209 = load i8, i8* %208
  %210 = zext i8 %209 to i64
  %211 = zext i8 %207 to i64
  %212 = icmp eq i64 %211, %210
  store i1 %212, i1* %40
  br label %sc_or_end41
sc_or_end41:
  %213 = load i1, i1* %40
  br i1 %213, label %sc_or_end43, label %sc_or_rhs42
sc_or_rhs42:
  %214 = load i8, i8* %8
  %215 = getelementptr [1 x i8], [1 x i8]* @.str170, i32 0, i32 0
  %216 = load i8, i8* %215
  %217 = zext i8 %216 to i64
  %218 = zext i8 %214 to i64
  %219 = icmp eq i64 %218, %217
  store i1 %219, i1* %39
  br label %sc_or_end43
sc_or_end43:
  %220 = load i1, i1* %39
  br i1 %220, label %sc_or_end45, label %sc_or_rhs44
sc_or_rhs44:
  %221 = load i8, i8* %8
  %222 = getelementptr [1 x i8], [1 x i8]* @.str171, i32 0, i32 0
  %223 = load i8, i8* %222
  %224 = zext i8 %223 to i64
  %225 = zext i8 %221 to i64
  %226 = icmp eq i64 %225, %224
  store i1 %226, i1* %38
  br label %sc_or_end45
sc_or_end45:
  %227 = load i1, i1* %38
  br i1 %227, label %sc_or_end47, label %sc_or_rhs46
sc_or_rhs46:
  %228 = load i8, i8* %8
  %229 = getelementptr [1 x i8], [1 x i8]* @.str172, i32 0, i32 0
  %230 = load i8, i8* %229
  %231 = zext i8 %230 to i64
  %232 = zext i8 %228 to i64
  %233 = icmp eq i64 %232, %231
  store i1 %233, i1* %37
  br label %sc_or_end47
sc_or_end47:
  %234 = load i1, i1* %37
  br i1 %234, label %sc_or_end49, label %sc_or_rhs48
sc_or_rhs48:
  %235 = load i8, i8* %8
  %236 = getelementptr [1 x i8], [1 x i8]* @.str173, i32 0, i32 0
  %237 = load i8, i8* %236
  %238 = zext i8 %237 to i64
  %239 = zext i8 %235 to i64
  %240 = icmp eq i64 %239, %238
  store i1 %240, i1* %36
  br label %sc_or_end49
sc_or_end49:
  %241 = load i1, i1* %36
  br i1 %241, label %sc_or_end51, label %sc_or_rhs50
sc_or_rhs50:
  %242 = load i8, i8* %8
  %243 = getelementptr [1 x i8], [1 x i8]* @.str174, i32 0, i32 0
  %244 = load i8, i8* %243
  %245 = zext i8 %244 to i64
  %246 = zext i8 %242 to i64
  %247 = icmp eq i64 %246, %245
  store i1 %247, i1* %35
  br label %sc_or_end51
sc_or_end51:
  %248 = load i1, i1* %35
  br i1 %248, label %sc_or_end53, label %sc_or_rhs52
sc_or_rhs52:
  %249 = load i8, i8* %8
  %250 = getelementptr [1 x i8], [1 x i8]* @.str175, i32 0, i32 0
  %251 = load i8, i8* %250
  %252 = zext i8 %251 to i64
  %253 = zext i8 %249 to i64
  %254 = icmp eq i64 %253, %252
  store i1 %254, i1* %34
  br label %sc_or_end53
sc_or_end53:
  %255 = load i1, i1* %34
  br i1 %255, label %sc_or_end55, label %sc_or_rhs54
sc_or_rhs54:
  %256 = load i8, i8* %8
  %257 = getelementptr [1 x i8], [1 x i8]* @.str176, i32 0, i32 0
  %258 = load i8, i8* %257
  %259 = zext i8 %258 to i64
  %260 = zext i8 %256 to i64
  %261 = icmp eq i64 %260, %259
  store i1 %261, i1* %33
  br label %sc_or_end55
sc_or_end55:
  %262 = load i1, i1* %33
  br i1 %262, label %sc_or_end57, label %sc_or_rhs56
sc_or_rhs56:
  %263 = load i8, i8* %8
  %264 = getelementptr [1 x i8], [1 x i8]* @.str177, i32 0, i32 0
  %265 = load i8, i8* %264
  %266 = zext i8 %265 to i64
  %267 = zext i8 %263 to i64
  %268 = icmp eq i64 %267, %266
  store i1 %268, i1* %32
  br label %sc_or_end57
sc_or_end57:
  %269 = load i1, i1* %32
  br i1 %269, label %sc_or_end59, label %sc_or_rhs58
sc_or_rhs58:
  %270 = load i8, i8* %8
  %271 = getelementptr [1 x i8], [1 x i8]* @.str178, i32 0, i32 0
  %272 = load i8, i8* %271
  %273 = zext i8 %272 to i64
  %274 = zext i8 %270 to i64
  %275 = icmp eq i64 %274, %273
  store i1 %275, i1* %31
  br label %sc_or_end59
sc_or_end59:
  %276 = load i1, i1* %31
  br i1 %276, label %sc_or_end61, label %sc_or_rhs60
sc_or_rhs60:
  %277 = load i8, i8* %8
  %278 = getelementptr [1 x i8], [1 x i8]* @.str179, i32 0, i32 0
  %279 = load i8, i8* %278
  %280 = zext i8 %279 to i64
  %281 = zext i8 %277 to i64
  %282 = icmp eq i64 %281, %280
  store i1 %282, i1* %30
  br label %sc_or_end61
sc_or_end61:
  %283 = load i1, i1* %30
  br i1 %283, label %sc_or_end63, label %sc_or_rhs62
sc_or_rhs62:
  %284 = load i8, i8* %8
  %285 = getelementptr [1 x i8], [1 x i8]* @.str180, i32 0, i32 0
  %286 = load i8, i8* %285
  %287 = zext i8 %286 to i64
  %288 = zext i8 %284 to i64
  %289 = icmp eq i64 %288, %287
  store i1 %289, i1* %29
  br label %sc_or_end63
sc_or_end63:
  %290 = load i1, i1* %29
  br i1 %290, label %sc_or_end65, label %sc_or_rhs64
sc_or_rhs64:
  %291 = load i8, i8* %8
  %292 = getelementptr [1 x i8], [1 x i8]* @.str181, i32 0, i32 0
  %293 = load i8, i8* %292
  %294 = zext i8 %293 to i64
  %295 = zext i8 %291 to i64
  %296 = icmp eq i64 %295, %294
  store i1 %296, i1* %28
  br label %sc_or_end65
sc_or_end65:
  %297 = load i1, i1* %28
  br i1 %297, label %sc_or_end67, label %sc_or_rhs66
sc_or_rhs66:
  %298 = load i8, i8* %8
  %299 = getelementptr [1 x i8], [1 x i8]* @.str182, i32 0, i32 0
  %300 = load i8, i8* %299
  %301 = zext i8 %300 to i64
  %302 = zext i8 %298 to i64
  %303 = icmp eq i64 %302, %301
  store i1 %303, i1* %27
  br label %sc_or_end67
sc_or_end67:
  %304 = load i1, i1* %27
  br i1 %304, label %sc_or_end69, label %sc_or_rhs68
sc_or_rhs68:
  %305 = load i8, i8* %8
  %306 = getelementptr [1 x i8], [1 x i8]* @.str183, i32 0, i32 0
  %307 = load i8, i8* %306
  %308 = zext i8 %307 to i64
  %309 = zext i8 %305 to i64
  %310 = icmp eq i64 %309, %308
  store i1 %310, i1* %26
  br label %sc_or_end69
sc_or_end69:
  %311 = load i1, i1* %26
  br i1 %311, label %sc_or_end71, label %sc_or_rhs70
sc_or_rhs70:
  %312 = load i8, i8* %8
  %313 = getelementptr [1 x i8], [1 x i8]* @.str184, i32 0, i32 0
  %314 = load i8, i8* %313
  %315 = zext i8 %314 to i64
  %316 = zext i8 %312 to i64
  %317 = icmp eq i64 %316, %315
  store i1 %317, i1* %25
  br label %sc_or_end71
sc_or_end71:
  %318 = load i1, i1* %25
  br i1 %318, label %sc_or_end73, label %sc_or_rhs72
sc_or_rhs72:
  %319 = load i8, i8* %8
  %320 = getelementptr [1 x i8], [1 x i8]* @.str185, i32 0, i32 0
  %321 = load i8, i8* %320
  %322 = zext i8 %321 to i64
  %323 = zext i8 %319 to i64
  %324 = icmp eq i64 %323, %322
  store i1 %324, i1* %24
  br label %sc_or_end73
sc_or_end73:
  %325 = load i1, i1* %24
  br i1 %325, label %sc_or_end75, label %sc_or_rhs74
sc_or_rhs74:
  %326 = load i8, i8* %8
  %327 = getelementptr [1 x i8], [1 x i8]* @.str186, i32 0, i32 0
  %328 = load i8, i8* %327
  %329 = zext i8 %328 to i64
  %330 = zext i8 %326 to i64
  %331 = icmp eq i64 %330, %329
  store i1 %331, i1* %23
  br label %sc_or_end75
sc_or_end75:
  %332 = load i1, i1* %23
  br i1 %332, label %sc_or_end77, label %sc_or_rhs76
sc_or_rhs76:
  %333 = load i8, i8* %8
  %334 = getelementptr [1 x i8], [1 x i8]* @.str187, i32 0, i32 0
  %335 = load i8, i8* %334
  %336 = zext i8 %335 to i64
  %337 = zext i8 %333 to i64
  %338 = icmp eq i64 %337, %336
  store i1 %338, i1* %22
  br label %sc_or_end77
sc_or_end77:
  %339 = load i1, i1* %22
  br i1 %339, label %sc_or_end79, label %sc_or_rhs78
sc_or_rhs78:
  %340 = load i8, i8* %8
  %341 = getelementptr [1 x i8], [1 x i8]* @.str188, i32 0, i32 0
  %342 = load i8, i8* %341
  %343 = zext i8 %342 to i64
  %344 = zext i8 %340 to i64
  %345 = icmp eq i64 %344, %343
  store i1 %345, i1* %21
  br label %sc_or_end79
sc_or_end79:
  %346 = load i1, i1* %21
  br i1 %346, label %sc_or_end81, label %sc_or_rhs80
sc_or_rhs80:
  %347 = load i8, i8* %8
  %348 = getelementptr [1 x i8], [1 x i8]* @.str189, i32 0, i32 0
  %349 = load i8, i8* %348
  %350 = zext i8 %349 to i64
  %351 = zext i8 %347 to i64
  %352 = icmp eq i64 %351, %350
  store i1 %352, i1* %20
  br label %sc_or_end81
sc_or_end81:
  %353 = load i1, i1* %20
  br i1 %353, label %sc_or_end83, label %sc_or_rhs82
sc_or_rhs82:
  %354 = load i8, i8* %8
  %355 = getelementptr [1 x i8], [1 x i8]* @.str190, i32 0, i32 0
  %356 = load i8, i8* %355
  %357 = zext i8 %356 to i64
  %358 = zext i8 %354 to i64
  %359 = icmp eq i64 %358, %357
  store i1 %359, i1* %19
  br label %sc_or_end83
sc_or_end83:
  %360 = load i1, i1* %19
  br i1 %360, label %sc_or_end85, label %sc_or_rhs84
sc_or_rhs84:
  %361 = load i8, i8* %8
  %362 = getelementptr [1 x i8], [1 x i8]* @.str191, i32 0, i32 0
  %363 = load i8, i8* %362
  %364 = zext i8 %363 to i64
  %365 = zext i8 %361 to i64
  %366 = icmp eq i64 %365, %364
  store i1 %366, i1* %18
  br label %sc_or_end85
sc_or_end85:
  %367 = load i1, i1* %18
  br i1 %367, label %sc_or_end87, label %sc_or_rhs86
sc_or_rhs86:
  %368 = load i8, i8* %8
  %369 = getelementptr [1 x i8], [1 x i8]* @.str192, i32 0, i32 0
  %370 = load i8, i8* %369
  %371 = zext i8 %370 to i64
  %372 = zext i8 %368 to i64
  %373 = icmp eq i64 %372, %371
  store i1 %373, i1* %17
  br label %sc_or_end87
sc_or_end87:
  %374 = load i1, i1* %17
  br i1 %374, label %sc_or_end89, label %sc_or_rhs88
sc_or_rhs88:
  %375 = load i8, i8* %8
  %376 = getelementptr [1 x i8], [1 x i8]* @.str193, i32 0, i32 0
  %377 = load i8, i8* %376
  %378 = zext i8 %377 to i64
  %379 = zext i8 %375 to i64
  %380 = icmp eq i64 %379, %378
  store i1 %380, i1* %16
  br label %sc_or_end89
sc_or_end89:
  %381 = load i1, i1* %16
  br i1 %381, label %sc_or_end91, label %sc_or_rhs90
sc_or_rhs90:
  %382 = load i8, i8* %8
  %383 = getelementptr [1 x i8], [1 x i8]* @.str194, i32 0, i32 0
  %384 = load i8, i8* %383
  %385 = zext i8 %384 to i64
  %386 = zext i8 %382 to i64
  %387 = icmp eq i64 %386, %385
  store i1 %387, i1* %15
  br label %sc_or_end91
sc_or_end91:
  %388 = load i1, i1* %15
  br i1 %388, label %sc_or_end93, label %sc_or_rhs92
sc_or_rhs92:
  %389 = load i8, i8* %8
  %390 = getelementptr [1 x i8], [1 x i8]* @.str195, i32 0, i32 0
  %391 = load i8, i8* %390
  %392 = zext i8 %391 to i64
  %393 = zext i8 %389 to i64
  %394 = icmp eq i64 %393, %392
  store i1 %394, i1* %14
  br label %sc_or_end93
sc_or_end93:
  %395 = load i1, i1* %14
  br i1 %395, label %sc_or_end95, label %sc_or_rhs94
sc_or_rhs94:
  %396 = load i8, i8* %8
  %397 = getelementptr [1 x i8], [1 x i8]* @.str196, i32 0, i32 0
  %398 = load i8, i8* %397
  %399 = zext i8 %398 to i64
  %400 = zext i8 %396 to i64
  %401 = icmp eq i64 %400, %399
  store i1 %401, i1* %13
  br label %sc_or_end95
sc_or_end95:
  %402 = load i1, i1* %13
  br i1 %402, label %sc_or_end97, label %sc_or_rhs96
sc_or_rhs96:
  %403 = load i8, i8* %8
  %404 = getelementptr [1 x i8], [1 x i8]* @.str197, i32 0, i32 0
  %405 = load i8, i8* %404
  %406 = zext i8 %405 to i64
  %407 = zext i8 %403 to i64
  %408 = icmp eq i64 %407, %406
  store i1 %408, i1* %12
  br label %sc_or_end97
sc_or_end97:
  %409 = load i1, i1* %12
  br i1 %409, label %sc_or_end99, label %sc_or_rhs98
sc_or_rhs98:
  %410 = load i8, i8* %8
  %411 = getelementptr [1 x i8], [1 x i8]* @.str198, i32 0, i32 0
  %412 = load i8, i8* %411
  %413 = zext i8 %412 to i64
  %414 = zext i8 %410 to i64
  %415 = icmp eq i64 %414, %413
  store i1 %415, i1* %11
  br label %sc_or_end99
sc_or_end99:
  %416 = load i1, i1* %11
  br i1 %416, label %sc_or_end101, label %sc_or_rhs100
sc_or_rhs100:
  %417 = load i8, i8* %8
  %418 = getelementptr [1 x i8], [1 x i8]* @.str199, i32 0, i32 0
  %419 = load i8, i8* %418
  %420 = zext i8 %419 to i64
  %421 = zext i8 %417 to i64
  %422 = icmp eq i64 %421, %420
  store i1 %422, i1* %10
  br label %sc_or_end101
sc_or_end101:
  %423 = load i1, i1* %10
  br i1 %423, label %sc_or_end103, label %sc_or_rhs102
sc_or_rhs102:
  %424 = load i8, i8* %8
  %425 = getelementptr [1 x i8], [1 x i8]* @.str200, i32 0, i32 0
  %426 = load i8, i8* %425
  %427 = zext i8 %426 to i64
  %428 = zext i8 %424 to i64
  %429 = icmp eq i64 %428, %427
  store i1 %429, i1* %9
  br label %sc_or_end103
sc_or_end103:
  %430 = load i1, i1* %9
  ret i1 %430
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
  %9 = alloca i1
  store i1 true, i1* %9
  %10 = load i8, i8* %8
  %11 = call i1 @is_alpha(%SharedEnv_tokenize* %env.param, i8 %10)
  br i1 %11, label %sc_or_end1, label %sc_or_rhs0
sc_or_rhs0:
  %12 = load i8, i8* %8
  %13 = call i1 @is_digit(%SharedEnv_tokenize* %env.param, i8 %12)
  store i1 %13, i1* %9
  br label %sc_or_end1
sc_or_end1:
  %14 = load i1, i1* %9
  ret i1 %14
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
  %9 = alloca i1
  store i1 true, i1* %9
  %10 = alloca i1
  store i1 true, i1* %10
  %11 = alloca i1
  store i1 true, i1* %11
  %12 = alloca i1
  store i1 true, i1* %12
  %13 = alloca i1
  store i1 true, i1* %13
  %14 = alloca i1
  store i1 true, i1* %14
  %15 = alloca i1
  store i1 true, i1* %15
  %16 = alloca i1
  store i1 true, i1* %16
  %17 = alloca i1
  store i1 true, i1* %17
  %18 = alloca i1
  store i1 true, i1* %18
  %19 = alloca i1
  store i1 true, i1* %19
  %20 = alloca i1
  store i1 true, i1* %20
  %21 = alloca i1
  store i1 true, i1* %21
  %22 = alloca i1
  store i1 true, i1* %22
  %23 = alloca i1
  store i1 true, i1* %23
  %24 = alloca i1
  store i1 true, i1* %24
  %25 = alloca i1
  store i1 true, i1* %25
  %26 = alloca i1
  store i1 true, i1* %26
  %27 = alloca i1
  store i1 true, i1* %27
  %28 = alloca i1
  store i1 true, i1* %28
  %29 = alloca i1
  store i1 true, i1* %29
  %30 = load i8, i8* %8
  %31 = getelementptr [1 x i8], [1 x i8]* @.str201, i32 0, i32 0
  %32 = load i8, i8* %31
  %33 = zext i8 %32 to i64
  %34 = zext i8 %30 to i64
  %35 = icmp eq i64 %34, %33
  br i1 %35, label %sc_or_end1, label %sc_or_rhs0
sc_or_rhs0:
  %36 = load i8, i8* %8
  %37 = getelementptr [1 x i8], [1 x i8]* @.str202, i32 0, i32 0
  %38 = load i8, i8* %37
  %39 = zext i8 %38 to i64
  %40 = zext i8 %36 to i64
  %41 = icmp eq i64 %40, %39
  store i1 %41, i1* %29
  br label %sc_or_end1
sc_or_end1:
  %42 = load i1, i1* %29
  br i1 %42, label %sc_or_end3, label %sc_or_rhs2
sc_or_rhs2:
  %43 = load i8, i8* %8
  %44 = getelementptr [1 x i8], [1 x i8]* @.str203, i32 0, i32 0
  %45 = load i8, i8* %44
  %46 = zext i8 %45 to i64
  %47 = zext i8 %43 to i64
  %48 = icmp eq i64 %47, %46
  store i1 %48, i1* %28
  br label %sc_or_end3
sc_or_end3:
  %49 = load i1, i1* %28
  br i1 %49, label %sc_or_end5, label %sc_or_rhs4
sc_or_rhs4:
  %50 = load i8, i8* %8
  %51 = getelementptr [1 x i8], [1 x i8]* @.str204, i32 0, i32 0
  %52 = load i8, i8* %51
  %53 = zext i8 %52 to i64
  %54 = zext i8 %50 to i64
  %55 = icmp eq i64 %54, %53
  store i1 %55, i1* %27
  br label %sc_or_end5
sc_or_end5:
  %56 = load i1, i1* %27
  br i1 %56, label %sc_or_end7, label %sc_or_rhs6
sc_or_rhs6:
  %57 = load i8, i8* %8
  %58 = getelementptr [1 x i8], [1 x i8]* @.str205, i32 0, i32 0
  %59 = load i8, i8* %58
  %60 = zext i8 %59 to i64
  %61 = zext i8 %57 to i64
  %62 = icmp eq i64 %61, %60
  store i1 %62, i1* %26
  br label %sc_or_end7
sc_or_end7:
  %63 = load i1, i1* %26
  br i1 %63, label %sc_or_end9, label %sc_or_rhs8
sc_or_rhs8:
  %64 = load i8, i8* %8
  %65 = getelementptr [1 x i8], [1 x i8]* @.str206, i32 0, i32 0
  %66 = load i8, i8* %65
  %67 = zext i8 %66 to i64
  %68 = zext i8 %64 to i64
  %69 = icmp eq i64 %68, %67
  store i1 %69, i1* %25
  br label %sc_or_end9
sc_or_end9:
  %70 = load i1, i1* %25
  br i1 %70, label %sc_or_end11, label %sc_or_rhs10
sc_or_rhs10:
  %71 = load i8, i8* %8
  %72 = getelementptr [1 x i8], [1 x i8]* @.str207, i32 0, i32 0
  %73 = load i8, i8* %72
  %74 = zext i8 %73 to i64
  %75 = zext i8 %71 to i64
  %76 = icmp eq i64 %75, %74
  store i1 %76, i1* %24
  br label %sc_or_end11
sc_or_end11:
  %77 = load i1, i1* %24
  br i1 %77, label %sc_or_end13, label %sc_or_rhs12
sc_or_rhs12:
  %78 = load i8, i8* %8
  %79 = getelementptr [1 x i8], [1 x i8]* @.str208, i32 0, i32 0
  %80 = load i8, i8* %79
  %81 = zext i8 %80 to i64
  %82 = zext i8 %78 to i64
  %83 = icmp eq i64 %82, %81
  store i1 %83, i1* %23
  br label %sc_or_end13
sc_or_end13:
  %84 = load i1, i1* %23
  br i1 %84, label %sc_or_end15, label %sc_or_rhs14
sc_or_rhs14:
  %85 = load i8, i8* %8
  %86 = getelementptr [1 x i8], [1 x i8]* @.str209, i32 0, i32 0
  %87 = load i8, i8* %86
  %88 = zext i8 %87 to i64
  %89 = zext i8 %85 to i64
  %90 = icmp eq i64 %89, %88
  store i1 %90, i1* %22
  br label %sc_or_end15
sc_or_end15:
  %91 = load i1, i1* %22
  br i1 %91, label %sc_or_end17, label %sc_or_rhs16
sc_or_rhs16:
  %92 = load i8, i8* %8
  %93 = getelementptr [1 x i8], [1 x i8]* @.str210, i32 0, i32 0
  %94 = load i8, i8* %93
  %95 = zext i8 %94 to i64
  %96 = zext i8 %92 to i64
  %97 = icmp eq i64 %96, %95
  store i1 %97, i1* %21
  br label %sc_or_end17
sc_or_end17:
  %98 = load i1, i1* %21
  br i1 %98, label %sc_or_end19, label %sc_or_rhs18
sc_or_rhs18:
  %99 = load i8, i8* %8
  %100 = getelementptr [1 x i8], [1 x i8]* @.str211, i32 0, i32 0
  %101 = load i8, i8* %100
  %102 = zext i8 %101 to i64
  %103 = zext i8 %99 to i64
  %104 = icmp eq i64 %103, %102
  store i1 %104, i1* %20
  br label %sc_or_end19
sc_or_end19:
  %105 = load i1, i1* %20
  br i1 %105, label %sc_or_end21, label %sc_or_rhs20
sc_or_rhs20:
  %106 = load i8, i8* %8
  %107 = getelementptr [1 x i8], [1 x i8]* @.str212, i32 0, i32 0
  %108 = load i8, i8* %107
  %109 = zext i8 %108 to i64
  %110 = zext i8 %106 to i64
  %111 = icmp eq i64 %110, %109
  store i1 %111, i1* %19
  br label %sc_or_end21
sc_or_end21:
  %112 = load i1, i1* %19
  br i1 %112, label %sc_or_end23, label %sc_or_rhs22
sc_or_rhs22:
  %113 = load i8, i8* %8
  %114 = getelementptr [1 x i8], [1 x i8]* @.str213, i32 0, i32 0
  %115 = load i8, i8* %114
  %116 = zext i8 %115 to i64
  %117 = zext i8 %113 to i64
  %118 = icmp eq i64 %117, %116
  store i1 %118, i1* %18
  br label %sc_or_end23
sc_or_end23:
  %119 = load i1, i1* %18
  br i1 %119, label %sc_or_end25, label %sc_or_rhs24
sc_or_rhs24:
  %120 = load i8, i8* %8
  %121 = getelementptr [1 x i8], [1 x i8]* @.str214, i32 0, i32 0
  %122 = load i8, i8* %121
  %123 = zext i8 %122 to i64
  %124 = zext i8 %120 to i64
  %125 = icmp eq i64 %124, %123
  store i1 %125, i1* %17
  br label %sc_or_end25
sc_or_end25:
  %126 = load i1, i1* %17
  br i1 %126, label %sc_or_end27, label %sc_or_rhs26
sc_or_rhs26:
  %127 = load i8, i8* %8
  %128 = getelementptr [1 x i8], [1 x i8]* @.str215, i32 0, i32 0
  %129 = load i8, i8* %128
  %130 = zext i8 %129 to i64
  %131 = zext i8 %127 to i64
  %132 = icmp eq i64 %131, %130
  store i1 %132, i1* %16
  br label %sc_or_end27
sc_or_end27:
  %133 = load i1, i1* %16
  br i1 %133, label %sc_or_end29, label %sc_or_rhs28
sc_or_rhs28:
  %134 = load i8, i8* %8
  %135 = getelementptr [1 x i8], [1 x i8]* @.str216, i32 0, i32 0
  %136 = load i8, i8* %135
  %137 = zext i8 %136 to i64
  %138 = zext i8 %134 to i64
  %139 = icmp eq i64 %138, %137
  store i1 %139, i1* %15
  br label %sc_or_end29
sc_or_end29:
  %140 = load i1, i1* %15
  br i1 %140, label %sc_or_end31, label %sc_or_rhs30
sc_or_rhs30:
  %141 = load i8, i8* %8
  %142 = getelementptr [1 x i8], [1 x i8]* @.str217, i32 0, i32 0
  %143 = load i8, i8* %142
  %144 = zext i8 %143 to i64
  %145 = zext i8 %141 to i64
  %146 = icmp eq i64 %145, %144
  store i1 %146, i1* %14
  br label %sc_or_end31
sc_or_end31:
  %147 = load i1, i1* %14
  br i1 %147, label %sc_or_end33, label %sc_or_rhs32
sc_or_rhs32:
  %148 = load i8, i8* %8
  %149 = getelementptr [1 x i8], [1 x i8]* @.str218, i32 0, i32 0
  %150 = load i8, i8* %149
  %151 = zext i8 %150 to i64
  %152 = zext i8 %148 to i64
  %153 = icmp eq i64 %152, %151
  store i1 %153, i1* %13
  br label %sc_or_end33
sc_or_end33:
  %154 = load i1, i1* %13
  br i1 %154, label %sc_or_end35, label %sc_or_rhs34
sc_or_rhs34:
  %155 = load i8, i8* %8
  %156 = getelementptr [1 x i8], [1 x i8]* @.str219, i32 0, i32 0
  %157 = load i8, i8* %156
  %158 = zext i8 %157 to i64
  %159 = zext i8 %155 to i64
  %160 = icmp eq i64 %159, %158
  store i1 %160, i1* %12
  br label %sc_or_end35
sc_or_end35:
  %161 = load i1, i1* %12
  br i1 %161, label %sc_or_end37, label %sc_or_rhs36
sc_or_rhs36:
  %162 = load i8, i8* %8
  %163 = getelementptr [1 x i8], [1 x i8]* @.str220, i32 0, i32 0
  %164 = load i8, i8* %163
  %165 = zext i8 %164 to i64
  %166 = zext i8 %162 to i64
  %167 = icmp eq i64 %166, %165
  store i1 %167, i1* %11
  br label %sc_or_end37
sc_or_end37:
  %168 = load i1, i1* %11
  br i1 %168, label %sc_or_end39, label %sc_or_rhs38
sc_or_rhs38:
  %169 = load i8, i8* %8
  %170 = getelementptr [1 x i8], [1 x i8]* @.str221, i32 0, i32 0
  %171 = load i8, i8* %170
  %172 = zext i8 %171 to i64
  %173 = zext i8 %169 to i64
  %174 = icmp eq i64 %173, %172
  store i1 %174, i1* %10
  br label %sc_or_end39
sc_or_end39:
  %175 = load i1, i1* %10
  br i1 %175, label %sc_or_end41, label %sc_or_rhs40
sc_or_rhs40:
  %176 = load i8, i8* %8
  %177 = getelementptr [1 x i8], [1 x i8]* @.str222, i32 0, i32 0
  %178 = load i8, i8* %177
  %179 = zext i8 %178 to i64
  %180 = zext i8 %176 to i64
  %181 = icmp eq i64 %180, %179
  store i1 %181, i1* %9
  br label %sc_or_end41
sc_or_end41:
  %182 = load i1, i1* %9
  ret i1 %182
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
  %69 = alloca i1
  store i1 true, i1* %69
  %70 = load i8, i8* %8
  %71 = getelementptr [1 x i8], [1 x i8]* @.str233, i32 0, i32 0
  %72 = load i8, i8* %71
  %73 = zext i8 %72 to i64
  %74 = zext i8 %70 to i64
  %75 = icmp eq i64 %74, %73
  br i1 %75, label %sc_or_end31, label %sc_or_rhs30
sc_or_rhs30:
  %76 = load i8, i8* %8
  %77 = getelementptr [1 x i8], [1 x i8]* @.str234, i32 0, i32 0
  %78 = load i8, i8* %77
  %79 = zext i8 %78 to i64
  %80 = zext i8 %76 to i64
  %81 = icmp eq i64 %80, %79
  store i1 %81, i1* %69
  br label %sc_or_end31
sc_or_end31:
  %82 = load i1, i1* %69
  br i1 %82, label %then32, label %else33
then32:
  ret i64 10
else33:
  br label %merge34
merge34:
  %83 = alloca i1
  store i1 true, i1* %83
  %84 = load i8, i8* %8
  %85 = getelementptr [1 x i8], [1 x i8]* @.str235, i32 0, i32 0
  %86 = load i8, i8* %85
  %87 = zext i8 %86 to i64
  %88 = zext i8 %84 to i64
  %89 = icmp eq i64 %88, %87
  br i1 %89, label %sc_or_end36, label %sc_or_rhs35
sc_or_rhs35:
  %90 = load i8, i8* %8
  %91 = getelementptr [1 x i8], [1 x i8]* @.str236, i32 0, i32 0
  %92 = load i8, i8* %91
  %93 = zext i8 %92 to i64
  %94 = zext i8 %90 to i64
  %95 = icmp eq i64 %94, %93
  store i1 %95, i1* %83
  br label %sc_or_end36
sc_or_end36:
  %96 = load i1, i1* %83
  br i1 %96, label %then37, label %else38
then37:
  ret i64 11
else38:
  br label %merge39
merge39:
  %97 = alloca i1
  store i1 true, i1* %97
  %98 = load i8, i8* %8
  %99 = getelementptr [1 x i8], [1 x i8]* @.str237, i32 0, i32 0
  %100 = load i8, i8* %99
  %101 = zext i8 %100 to i64
  %102 = zext i8 %98 to i64
  %103 = icmp eq i64 %102, %101
  br i1 %103, label %sc_or_end41, label %sc_or_rhs40
sc_or_rhs40:
  %104 = load i8, i8* %8
  %105 = getelementptr [1 x i8], [1 x i8]* @.str238, i32 0, i32 0
  %106 = load i8, i8* %105
  %107 = zext i8 %106 to i64
  %108 = zext i8 %104 to i64
  %109 = icmp eq i64 %108, %107
  store i1 %109, i1* %97
  br label %sc_or_end41
sc_or_end41:
  %110 = load i1, i1* %97
  br i1 %110, label %then42, label %else43
then42:
  ret i64 12
else43:
  br label %merge44
merge44:
  %111 = alloca i1
  store i1 true, i1* %111
  %112 = load i8, i8* %8
  %113 = getelementptr [1 x i8], [1 x i8]* @.str239, i32 0, i32 0
  %114 = load i8, i8* %113
  %115 = zext i8 %114 to i64
  %116 = zext i8 %112 to i64
  %117 = icmp eq i64 %116, %115
  br i1 %117, label %sc_or_end46, label %sc_or_rhs45
sc_or_rhs45:
  %118 = load i8, i8* %8
  %119 = getelementptr [1 x i8], [1 x i8]* @.str240, i32 0, i32 0
  %120 = load i8, i8* %119
  %121 = zext i8 %120 to i64
  %122 = zext i8 %118 to i64
  %123 = icmp eq i64 %122, %121
  store i1 %123, i1* %111
  br label %sc_or_end46
sc_or_end46:
  %124 = load i1, i1* %111
  br i1 %124, label %then47, label %else48
then47:
  ret i64 13
else48:
  br label %merge49
merge49:
  %125 = alloca i1
  store i1 true, i1* %125
  %126 = load i8, i8* %8
  %127 = getelementptr [1 x i8], [1 x i8]* @.str241, i32 0, i32 0
  %128 = load i8, i8* %127
  %129 = zext i8 %128 to i64
  %130 = zext i8 %126 to i64
  %131 = icmp eq i64 %130, %129
  br i1 %131, label %sc_or_end51, label %sc_or_rhs50
sc_or_rhs50:
  %132 = load i8, i8* %8
  %133 = getelementptr [1 x i8], [1 x i8]* @.str242, i32 0, i32 0
  %134 = load i8, i8* %133
  %135 = zext i8 %134 to i64
  %136 = zext i8 %132 to i64
  %137 = icmp eq i64 %136, %135
  store i1 %137, i1* %125
  br label %sc_or_end51
sc_or_end51:
  %138 = load i1, i1* %125
  br i1 %138, label %then52, label %else53
then52:
  ret i64 14
else53:
  br label %merge54
merge54:
  %139 = alloca i1
  store i1 true, i1* %139
  %140 = load i8, i8* %8
  %141 = getelementptr [1 x i8], [1 x i8]* @.str243, i32 0, i32 0
  %142 = load i8, i8* %141
  %143 = zext i8 %142 to i64
  %144 = zext i8 %140 to i64
  %145 = icmp eq i64 %144, %143
  br i1 %145, label %sc_or_end56, label %sc_or_rhs55
sc_or_rhs55:
  %146 = load i8, i8* %8
  %147 = getelementptr [1 x i8], [1 x i8]* @.str244, i32 0, i32 0
  %148 = load i8, i8* %147
  %149 = zext i8 %148 to i64
  %150 = zext i8 %146 to i64
  %151 = icmp eq i64 %150, %149
  store i1 %151, i1* %139
  br label %sc_or_end56
sc_or_end56:
  %152 = load i1, i1* %139
  br i1 %152, label %then57, label %else58
then57:
  ret i64 15
else58:
  br label %merge59
merge59:
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
  %13 = alloca i1
  store i1 true, i1* %13
  %14 = load i8, i8* %12
  %15 = getelementptr [1 x i8], [1 x i8]* @.str258, i32 0, i32 0
  %16 = load i8, i8* %15
  %17 = zext i8 %16 to i64
  %18 = zext i8 %14 to i64
  %19 = icmp eq i64 %18, %17
  br i1 %19, label %sc_or_end4, label %sc_or_rhs3
sc_or_rhs3:
  %20 = load i8, i8* %12
  %21 = getelementptr [1 x i8], [1 x i8]* @.str259, i32 0, i32 0
  %22 = load i8, i8* %21
  %23 = zext i8 %22 to i64
  %24 = zext i8 %20 to i64
  %25 = icmp eq i64 %24, %23
  store i1 %25, i1* %13
  br label %sc_or_end4
sc_or_end4:
  %26 = load i1, i1* %13
  br i1 %26, label %then5, label %else6
then5:
  %27 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  br label %merge7
else6:
  store i1 1, i1* %8
  br label %merge7
merge7:
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
  %20 = alloca i1
  store i1 false, i1* %20
  %21 = load i8, i8* %17
  %22 = getelementptr [1 x i8], [1 x i8]* @.str262, i32 0, i32 0
  %23 = load i8, i8* %22
  %24 = zext i8 %23 to i64
  %25 = zext i8 %21 to i64
  %26 = icmp eq i64 %25, %24
  br i1 %26, label %sc_and_rhs6, label %sc_and_end7
sc_and_rhs6:
  %27 = load i8, i8* %19
  %28 = getelementptr [1 x i8], [1 x i8]* @.str263, i32 0, i32 0
  %29 = load i8, i8* %28
  %30 = zext i8 %29 to i64
  %31 = zext i8 %27 to i64
  %32 = icmp eq i64 %31, %30
  store i1 %32, i1* %20
  br label %sc_and_end7
sc_and_end7:
  %33 = load i1, i1* %20
  br i1 %33, label %then8, label %else9
then8:
  %34 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %35 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %36 = load i64, i64* %8
  %37 = add i64 %36, 1
  store i64 %37, i64* %8
  br label %merge10
else9:
  %38 = alloca i1
  store i1 false, i1* %38
  %39 = load i8, i8* %17
  %40 = getelementptr [1 x i8], [1 x i8]* @.str264, i32 0, i32 0
  %41 = load i8, i8* %40
  %42 = zext i8 %41 to i64
  %43 = zext i8 %39 to i64
  %44 = icmp eq i64 %43, %42
  br i1 %44, label %sc_and_rhs11, label %sc_and_end12
sc_and_rhs11:
  %45 = load i8, i8* %19
  %46 = getelementptr [1 x i8], [1 x i8]* @.str265, i32 0, i32 0
  %47 = load i8, i8* %46
  %48 = zext i8 %47 to i64
  %49 = zext i8 %45 to i64
  %50 = icmp eq i64 %49, %48
  store i1 %50, i1* %38
  br label %sc_and_end12
sc_and_end12:
  %51 = load i1, i1* %38
  br i1 %51, label %then13, label %else14
then13:
  %52 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %53 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %54 = load i64, i64* %8
  %55 = sub i64 %54, 1
  store i64 %55, i64* %8
  %56 = load i64, i64* %8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %then16, label %else17
then16:
  store i1 1, i1* %9
  br label %merge18
else17:
  br label %merge18
merge18:
  br label %merge15
else14:
  %58 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  br label %merge15
merge15:
  br label %merge10
merge10:
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
  %14 = alloca i1
  store i1 false, i1* %14
  %15 = load i8, i8* %11
  %16 = getelementptr [1 x i8], [1 x i8]* @.str267, i32 0, i32 0
  %17 = load i8, i8* %16
  %18 = zext i8 %17 to i64
  %19 = zext i8 %15 to i64
  %20 = icmp eq i64 %19, %18
  br i1 %20, label %sc_and_rhs0, label %sc_and_end1
sc_and_rhs0:
  %21 = alloca i1
  store i1 true, i1* %21
  %22 = load i8, i8* %13
  %23 = getelementptr [1 x i8], [1 x i8]* @.str268, i32 0, i32 0
  %24 = load i8, i8* %23
  %25 = zext i8 %24 to i64
  %26 = zext i8 %22 to i64
  %27 = icmp eq i64 %26, %25
  br i1 %27, label %sc_or_end3, label %sc_or_rhs2
sc_or_rhs2:
  %28 = load i8, i8* %13
  %29 = getelementptr [1 x i8], [1 x i8]* @.str269, i32 0, i32 0
  %30 = load i8, i8* %29
  %31 = zext i8 %30 to i64
  %32 = zext i8 %28 to i64
  %33 = icmp eq i64 %32, %31
  store i1 %33, i1* %21
  br label %sc_or_end3
sc_or_end3:
  %34 = load i1, i1* %21
  store i1 %34, i1* %14
  br label %sc_and_end1
sc_and_end1:
  %35 = load i1, i1* %14
  br i1 %35, label %then4, label %else5
then4:
  %36 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %37 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %38 = load i64, i64* %3
  %39 = alloca i64
  store i64 %38, i64* %39
  %40 = alloca i1
  store i1 0, i1* %40
  br label %while_cond7
while_cond7:
  %41 = load i1, i1* %40
  %42 = xor i1 %41, true
  br i1 %42, label %while_body8, label %while_end9
while_body8:
  %43 = call i8 @peek(%SharedEnv_tokenize* %env.param)
  %44 = call i1 @is_hex_digit(%SharedEnv_tokenize* %env.param, i8 %43)
  br i1 %44, label %then10, label %else11
then10:
  %45 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  br label %merge12
else11:
  store i1 1, i1* %40
  br label %merge12
merge12:
  br label %while_cond7
while_end9:
  %46 = load %nyx_string*, %nyx_string** %2
  %47 = load i64, i64* %39
  %48 = load i64, i64* %3
  %49 = call %nyx_string* @nyx_string_substring(%nyx_string* %46, i64 %47, i64 %48)
  %50 = alloca %nyx_string*
  store %nyx_string* %49, %nyx_string** %50
  %51 = getelementptr [7 x i8], [7 x i8]* @.str270, i32 0, i32 0
  %52 = call %nyx_string* @nyx_string_from_cstr(i8* %51)
  %53 = load %nyx_string*, %nyx_string** %50
  %54 = call i64 @hex_to_int(%SharedEnv_tokenize* %env.param, %nyx_string* %53)
  %55 = call %nyx_string* @int_to_dec_string(%SharedEnv_tokenize* %env.param, i64 %54)
  %56 = call i64 @add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %52, %nyx_string* %55)
  br label %merge6
else5:
  %57 = alloca i1
  store i1 false, i1* %57
  %58 = load i8, i8* %11
  %59 = getelementptr [1 x i8], [1 x i8]* @.str271, i32 0, i32 0
  %60 = load i8, i8* %59
  %61 = zext i8 %60 to i64
  %62 = zext i8 %58 to i64
  %63 = icmp eq i64 %62, %61
  br i1 %63, label %sc_and_rhs13, label %sc_and_end14
sc_and_rhs13:
  %64 = alloca i1
  store i1 true, i1* %64
  %65 = load i8, i8* %13
  %66 = getelementptr [1 x i8], [1 x i8]* @.str272, i32 0, i32 0
  %67 = load i8, i8* %66
  %68 = zext i8 %67 to i64
  %69 = zext i8 %65 to i64
  %70 = icmp eq i64 %69, %68
  br i1 %70, label %sc_or_end16, label %sc_or_rhs15
sc_or_rhs15:
  %71 = load i8, i8* %13
  %72 = getelementptr [1 x i8], [1 x i8]* @.str273, i32 0, i32 0
  %73 = load i8, i8* %72
  %74 = zext i8 %73 to i64
  %75 = zext i8 %71 to i64
  %76 = icmp eq i64 %75, %74
  store i1 %76, i1* %64
  br label %sc_or_end16
sc_or_end16:
  %77 = load i1, i1* %64
  store i1 %77, i1* %57
  br label %sc_and_end14
sc_and_end14:
  %78 = load i1, i1* %57
  br i1 %78, label %then17, label %else18
then17:
  %79 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %80 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %81 = load i64, i64* %3
  %82 = alloca i64
  store i64 %81, i64* %82
  %83 = alloca i1
  store i1 0, i1* %83
  br label %while_cond20
while_cond20:
  %84 = load i1, i1* %83
  %85 = xor i1 %84, true
  br i1 %85, label %while_body21, label %while_end22
while_body21:
  %86 = call i8 @peek(%SharedEnv_tokenize* %env.param)
  %87 = alloca i8
  store i8 %86, i8* %87
  %88 = alloca i1
  store i1 true, i1* %88
  %89 = load i8, i8* %87
  %90 = getelementptr [1 x i8], [1 x i8]* @.str274, i32 0, i32 0
  %91 = load i8, i8* %90
  %92 = zext i8 %91 to i64
  %93 = zext i8 %89 to i64
  %94 = icmp eq i64 %93, %92
  br i1 %94, label %sc_or_end24, label %sc_or_rhs23
sc_or_rhs23:
  %95 = load i8, i8* %87
  %96 = getelementptr [1 x i8], [1 x i8]* @.str275, i32 0, i32 0
  %97 = load i8, i8* %96
  %98 = zext i8 %97 to i64
  %99 = zext i8 %95 to i64
  %100 = icmp eq i64 %99, %98
  store i1 %100, i1* %88
  br label %sc_or_end24
sc_or_end24:
  %101 = load i1, i1* %88
  br i1 %101, label %then25, label %else26
then25:
  %102 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  br label %merge27
else26:
  store i1 1, i1* %83
  br label %merge27
merge27:
  br label %while_cond20
while_end22:
  %103 = load %nyx_string*, %nyx_string** %2
  %104 = load i64, i64* %82
  %105 = load i64, i64* %3
  %106 = call %nyx_string* @nyx_string_substring(%nyx_string* %103, i64 %104, i64 %105)
  %107 = alloca %nyx_string*
  store %nyx_string* %106, %nyx_string** %107
  %108 = getelementptr [7 x i8], [7 x i8]* @.str276, i32 0, i32 0
  %109 = call %nyx_string* @nyx_string_from_cstr(i8* %108)
  %110 = load %nyx_string*, %nyx_string** %107
  %111 = call i64 @bin_to_int(%SharedEnv_tokenize* %env.param, %nyx_string* %110)
  %112 = call %nyx_string* @int_to_dec_string(%SharedEnv_tokenize* %env.param, i64 %111)
  %113 = call i64 @add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %109, %nyx_string* %112)
  br label %merge19
else18:
  %114 = alloca i1
  store i1 false, i1* %114
  %115 = load i8, i8* %11
  %116 = getelementptr [1 x i8], [1 x i8]* @.str277, i32 0, i32 0
  %117 = load i8, i8* %116
  %118 = zext i8 %117 to i64
  %119 = zext i8 %115 to i64
  %120 = icmp eq i64 %119, %118
  br i1 %120, label %sc_and_rhs28, label %sc_and_end29
sc_and_rhs28:
  %121 = alloca i1
  store i1 true, i1* %121
  %122 = load i8, i8* %13
  %123 = getelementptr [1 x i8], [1 x i8]* @.str278, i32 0, i32 0
  %124 = load i8, i8* %123
  %125 = zext i8 %124 to i64
  %126 = zext i8 %122 to i64
  %127 = icmp eq i64 %126, %125
  br i1 %127, label %sc_or_end31, label %sc_or_rhs30
sc_or_rhs30:
  %128 = load i8, i8* %13
  %129 = getelementptr [1 x i8], [1 x i8]* @.str279, i32 0, i32 0
  %130 = load i8, i8* %129
  %131 = zext i8 %130 to i64
  %132 = zext i8 %128 to i64
  %133 = icmp eq i64 %132, %131
  store i1 %133, i1* %121
  br label %sc_or_end31
sc_or_end31:
  %134 = load i1, i1* %121
  store i1 %134, i1* %114
  br label %sc_and_end29
sc_and_end29:
  %135 = load i1, i1* %114
  br i1 %135, label %then32, label %else33
then32:
  %136 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %137 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %138 = load i64, i64* %3
  %139 = alloca i64
  store i64 %138, i64* %139
  %140 = alloca i1
  store i1 0, i1* %140
  br label %while_cond35
while_cond35:
  %141 = load i1, i1* %140
  %142 = xor i1 %141, true
  br i1 %142, label %while_body36, label %while_end37
while_body36:
  %143 = call i8 @peek(%SharedEnv_tokenize* %env.param)
  %144 = alloca i8
  store i8 %143, i8* %144
  %145 = alloca i1
  store i1 true, i1* %145
  %146 = alloca i1
  store i1 true, i1* %146
  %147 = alloca i1
  store i1 true, i1* %147
  %148 = alloca i1
  store i1 true, i1* %148
  %149 = alloca i1
  store i1 true, i1* %149
  %150 = alloca i1
  store i1 true, i1* %150
  %151 = alloca i1
  store i1 true, i1* %151
  %152 = load i8, i8* %144
  %153 = getelementptr [1 x i8], [1 x i8]* @.str280, i32 0, i32 0
  %154 = load i8, i8* %153
  %155 = zext i8 %154 to i64
  %156 = zext i8 %152 to i64
  %157 = icmp eq i64 %156, %155
  br i1 %157, label %sc_or_end39, label %sc_or_rhs38
sc_or_rhs38:
  %158 = load i8, i8* %144
  %159 = getelementptr [1 x i8], [1 x i8]* @.str281, i32 0, i32 0
  %160 = load i8, i8* %159
  %161 = zext i8 %160 to i64
  %162 = zext i8 %158 to i64
  %163 = icmp eq i64 %162, %161
  store i1 %163, i1* %151
  br label %sc_or_end39
sc_or_end39:
  %164 = load i1, i1* %151
  br i1 %164, label %sc_or_end41, label %sc_or_rhs40
sc_or_rhs40:
  %165 = load i8, i8* %144
  %166 = getelementptr [1 x i8], [1 x i8]* @.str282, i32 0, i32 0
  %167 = load i8, i8* %166
  %168 = zext i8 %167 to i64
  %169 = zext i8 %165 to i64
  %170 = icmp eq i64 %169, %168
  store i1 %170, i1* %150
  br label %sc_or_end41
sc_or_end41:
  %171 = load i1, i1* %150
  br i1 %171, label %sc_or_end43, label %sc_or_rhs42
sc_or_rhs42:
  %172 = load i8, i8* %144
  %173 = getelementptr [1 x i8], [1 x i8]* @.str283, i32 0, i32 0
  %174 = load i8, i8* %173
  %175 = zext i8 %174 to i64
  %176 = zext i8 %172 to i64
  %177 = icmp eq i64 %176, %175
  store i1 %177, i1* %149
  br label %sc_or_end43
sc_or_end43:
  %178 = load i1, i1* %149
  br i1 %178, label %sc_or_end45, label %sc_or_rhs44
sc_or_rhs44:
  %179 = load i8, i8* %144
  %180 = getelementptr [1 x i8], [1 x i8]* @.str284, i32 0, i32 0
  %181 = load i8, i8* %180
  %182 = zext i8 %181 to i64
  %183 = zext i8 %179 to i64
  %184 = icmp eq i64 %183, %182
  store i1 %184, i1* %148
  br label %sc_or_end45
sc_or_end45:
  %185 = load i1, i1* %148
  br i1 %185, label %sc_or_end47, label %sc_or_rhs46
sc_or_rhs46:
  %186 = load i8, i8* %144
  %187 = getelementptr [1 x i8], [1 x i8]* @.str285, i32 0, i32 0
  %188 = load i8, i8* %187
  %189 = zext i8 %188 to i64
  %190 = zext i8 %186 to i64
  %191 = icmp eq i64 %190, %189
  store i1 %191, i1* %147
  br label %sc_or_end47
sc_or_end47:
  %192 = load i1, i1* %147
  br i1 %192, label %sc_or_end49, label %sc_or_rhs48
sc_or_rhs48:
  %193 = load i8, i8* %144
  %194 = getelementptr [1 x i8], [1 x i8]* @.str286, i32 0, i32 0
  %195 = load i8, i8* %194
  %196 = zext i8 %195 to i64
  %197 = zext i8 %193 to i64
  %198 = icmp eq i64 %197, %196
  store i1 %198, i1* %146
  br label %sc_or_end49
sc_or_end49:
  %199 = load i1, i1* %146
  br i1 %199, label %sc_or_end51, label %sc_or_rhs50
sc_or_rhs50:
  %200 = load i8, i8* %144
  %201 = getelementptr [1 x i8], [1 x i8]* @.str287, i32 0, i32 0
  %202 = load i8, i8* %201
  %203 = zext i8 %202 to i64
  %204 = zext i8 %200 to i64
  %205 = icmp eq i64 %204, %203
  store i1 %205, i1* %145
  br label %sc_or_end51
sc_or_end51:
  %206 = load i1, i1* %145
  br i1 %206, label %then52, label %else53
then52:
  %207 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  br label %merge54
else53:
  store i1 1, i1* %140
  br label %merge54
merge54:
  br label %while_cond35
while_end37:
  %208 = load %nyx_string*, %nyx_string** %2
  %209 = load i64, i64* %139
  %210 = load i64, i64* %3
  %211 = call %nyx_string* @nyx_string_substring(%nyx_string* %208, i64 %209, i64 %210)
  %212 = alloca %nyx_string*
  store %nyx_string* %211, %nyx_string** %212
  %213 = getelementptr [7 x i8], [7 x i8]* @.str288, i32 0, i32 0
  %214 = call %nyx_string* @nyx_string_from_cstr(i8* %213)
  %215 = load %nyx_string*, %nyx_string** %212
  %216 = call i64 @oct_to_int(%SharedEnv_tokenize* %env.param, %nyx_string* %215)
  %217 = call %nyx_string* @int_to_dec_string(%SharedEnv_tokenize* %env.param, i64 %216)
  %218 = call i64 @add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %214, %nyx_string* %217)
  br label %merge34
else33:
  %219 = alloca i1
  store i1 0, i1* %219
  br label %while_cond55
while_cond55:
  %220 = load i1, i1* %219
  %221 = xor i1 %220, true
  br i1 %221, label %while_body56, label %while_end57
while_body56:
  %222 = call i8 @peek(%SharedEnv_tokenize* %env.param)
  %223 = call i1 @is_digit(%SharedEnv_tokenize* %env.param, i8 %222)
  br i1 %223, label %then58, label %else59
then58:
  %224 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  br label %merge60
else59:
  store i1 1, i1* %219
  br label %merge60
merge60:
  br label %while_cond55
while_end57:
  %225 = alloca i1
  store i1 false, i1* %225
  %226 = call i8 @peek(%SharedEnv_tokenize* %env.param)
  %227 = getelementptr [1 x i8], [1 x i8]* @.str289, i32 0, i32 0
  %228 = load i8, i8* %227
  %229 = zext i8 %228 to i64
  %230 = zext i8 %226 to i64
  %231 = icmp eq i64 %230, %229
  br i1 %231, label %sc_and_rhs61, label %sc_and_end62
sc_and_rhs61:
  %232 = call i8 @peek_next(%SharedEnv_tokenize* %env.param)
  %233 = call i1 @is_digit(%SharedEnv_tokenize* %env.param, i8 %232)
  store i1 %233, i1* %225
  br label %sc_and_end62
sc_and_end62:
  %234 = load i1, i1* %225
  br i1 %234, label %then63, label %else64
then63:
  %235 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %236 = alloca i1
  store i1 0, i1* %236
  br label %while_cond66
while_cond66:
  %237 = load i1, i1* %236
  %238 = xor i1 %237, true
  br i1 %238, label %while_body67, label %while_end68
while_body67:
  %239 = call i8 @peek(%SharedEnv_tokenize* %env.param)
  %240 = call i1 @is_digit(%SharedEnv_tokenize* %env.param, i8 %239)
  br i1 %240, label %then69, label %else70
then69:
  %241 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  br label %merge71
else70:
  store i1 1, i1* %236
  br label %merge71
merge71:
  br label %while_cond66
while_end68:
  br label %merge65
else64:
  br label %merge65
merge65:
  %242 = call i8 @peek(%SharedEnv_tokenize* %env.param)
  %243 = call i1 @is_alpha(%SharedEnv_tokenize* %env.param, i8 %242)
  br i1 %243, label %then72, label %else73
then72:
  %244 = load i64, i64* %3
  %245 = alloca i64
  store i64 %244, i64* %245
  %246 = alloca i1
  store i1 0, i1* %246
  br label %while_cond75
while_cond75:
  %247 = load i1, i1* %246
  %248 = xor i1 %247, true
  br i1 %248, label %while_body76, label %while_end77
while_body76:
  %249 = call i8 @peek(%SharedEnv_tokenize* %env.param)
  %250 = call i1 @is_alphanumeric(%SharedEnv_tokenize* %env.param, i8 %249)
  br i1 %250, label %then78, label %else79
then78:
  %251 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  br label %merge80
else79:
  store i1 1, i1* %246
  br label %merge80
merge80:
  br label %while_cond75
while_end77:
  %252 = load %nyx_string*, %nyx_string** %2
  %253 = load i64, i64* %245
  %254 = load i64, i64* %3
  %255 = call %nyx_string* @nyx_string_substring(%nyx_string* %252, i64 %253, i64 %254)
  %256 = alloca %nyx_string*
  store %nyx_string* %255, %nyx_string** %256
  %257 = alloca i1
  store i1 true, i1* %257
  %258 = alloca i1
  store i1 true, i1* %258
  %259 = alloca i1
  store i1 true, i1* %259
  %260 = alloca i1
  store i1 true, i1* %260
  %261 = alloca i1
  store i1 true, i1* %261
  %262 = alloca i1
  store i1 true, i1* %262
  %263 = alloca i1
  store i1 true, i1* %263
  %264 = alloca i1
  store i1 true, i1* %264
  %265 = alloca i1
  store i1 true, i1* %265
  %266 = load %nyx_string*, %nyx_string** %256
  %267 = getelementptr [3 x i8], [3 x i8]* @.str290, i32 0, i32 0
  %268 = call %nyx_string* @nyx_string_from_cstr(i8* %267)
  %269 = call i8* @nyx_string_to_cstr(%nyx_string* %266)
  %270 = call i8* @nyx_string_to_cstr(%nyx_string* %268)
  %271 = call i32 @strcmp(i8* %269, i8* %270)
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %sc_or_end82, label %sc_or_rhs81
sc_or_rhs81:
  %273 = load %nyx_string*, %nyx_string** %256
  %274 = getelementptr [4 x i8], [4 x i8]* @.str291, i32 0, i32 0
  %275 = call %nyx_string* @nyx_string_from_cstr(i8* %274)
  %276 = call i8* @nyx_string_to_cstr(%nyx_string* %273)
  %277 = call i8* @nyx_string_to_cstr(%nyx_string* %275)
  %278 = call i32 @strcmp(i8* %276, i8* %277)
  %279 = icmp eq i32 %278, 0
  store i1 %279, i1* %265
  br label %sc_or_end82
sc_or_end82:
  %280 = load i1, i1* %265
  br i1 %280, label %sc_or_end84, label %sc_or_rhs83
sc_or_rhs83:
  %281 = load %nyx_string*, %nyx_string** %256
  %282 = getelementptr [4 x i8], [4 x i8]* @.str292, i32 0, i32 0
  %283 = call %nyx_string* @nyx_string_from_cstr(i8* %282)
  %284 = call i8* @nyx_string_to_cstr(%nyx_string* %281)
  %285 = call i8* @nyx_string_to_cstr(%nyx_string* %283)
  %286 = call i32 @strcmp(i8* %284, i8* %285)
  %287 = icmp eq i32 %286, 0
  store i1 %287, i1* %264
  br label %sc_or_end84
sc_or_end84:
  %288 = load i1, i1* %264
  br i1 %288, label %sc_or_end86, label %sc_or_rhs85
sc_or_rhs85:
  %289 = load %nyx_string*, %nyx_string** %256
  %290 = getelementptr [4 x i8], [4 x i8]* @.str293, i32 0, i32 0
  %291 = call %nyx_string* @nyx_string_from_cstr(i8* %290)
  %292 = call i8* @nyx_string_to_cstr(%nyx_string* %289)
  %293 = call i8* @nyx_string_to_cstr(%nyx_string* %291)
  %294 = call i32 @strcmp(i8* %292, i8* %293)
  %295 = icmp eq i32 %294, 0
  store i1 %295, i1* %263
  br label %sc_or_end86
sc_or_end86:
  %296 = load i1, i1* %263
  br i1 %296, label %sc_or_end88, label %sc_or_rhs87
sc_or_rhs87:
  %297 = load %nyx_string*, %nyx_string** %256
  %298 = getelementptr [3 x i8], [3 x i8]* @.str294, i32 0, i32 0
  %299 = call %nyx_string* @nyx_string_from_cstr(i8* %298)
  %300 = call i8* @nyx_string_to_cstr(%nyx_string* %297)
  %301 = call i8* @nyx_string_to_cstr(%nyx_string* %299)
  %302 = call i32 @strcmp(i8* %300, i8* %301)
  %303 = icmp eq i32 %302, 0
  store i1 %303, i1* %262
  br label %sc_or_end88
sc_or_end88:
  %304 = load i1, i1* %262
  br i1 %304, label %sc_or_end90, label %sc_or_rhs89
sc_or_rhs89:
  %305 = load %nyx_string*, %nyx_string** %256
  %306 = getelementptr [4 x i8], [4 x i8]* @.str295, i32 0, i32 0
  %307 = call %nyx_string* @nyx_string_from_cstr(i8* %306)
  %308 = call i8* @nyx_string_to_cstr(%nyx_string* %305)
  %309 = call i8* @nyx_string_to_cstr(%nyx_string* %307)
  %310 = call i32 @strcmp(i8* %308, i8* %309)
  %311 = icmp eq i32 %310, 0
  store i1 %311, i1* %261
  br label %sc_or_end90
sc_or_end90:
  %312 = load i1, i1* %261
  br i1 %312, label %sc_or_end92, label %sc_or_rhs91
sc_or_rhs91:
  %313 = load %nyx_string*, %nyx_string** %256
  %314 = getelementptr [4 x i8], [4 x i8]* @.str296, i32 0, i32 0
  %315 = call %nyx_string* @nyx_string_from_cstr(i8* %314)
  %316 = call i8* @nyx_string_to_cstr(%nyx_string* %313)
  %317 = call i8* @nyx_string_to_cstr(%nyx_string* %315)
  %318 = call i32 @strcmp(i8* %316, i8* %317)
  %319 = icmp eq i32 %318, 0
  store i1 %319, i1* %260
  br label %sc_or_end92
sc_or_end92:
  %320 = load i1, i1* %260
  br i1 %320, label %sc_or_end94, label %sc_or_rhs93
sc_or_rhs93:
  %321 = load %nyx_string*, %nyx_string** %256
  %322 = getelementptr [4 x i8], [4 x i8]* @.str297, i32 0, i32 0
  %323 = call %nyx_string* @nyx_string_from_cstr(i8* %322)
  %324 = call i8* @nyx_string_to_cstr(%nyx_string* %321)
  %325 = call i8* @nyx_string_to_cstr(%nyx_string* %323)
  %326 = call i32 @strcmp(i8* %324, i8* %325)
  %327 = icmp eq i32 %326, 0
  store i1 %327, i1* %259
  br label %sc_or_end94
sc_or_end94:
  %328 = load i1, i1* %259
  br i1 %328, label %sc_or_end96, label %sc_or_rhs95
sc_or_rhs95:
  %329 = load %nyx_string*, %nyx_string** %256
  %330 = getelementptr [4 x i8], [4 x i8]* @.str298, i32 0, i32 0
  %331 = call %nyx_string* @nyx_string_from_cstr(i8* %330)
  %332 = call i8* @nyx_string_to_cstr(%nyx_string* %329)
  %333 = call i8* @nyx_string_to_cstr(%nyx_string* %331)
  %334 = call i32 @strcmp(i8* %332, i8* %333)
  %335 = icmp eq i32 %334, 0
  store i1 %335, i1* %258
  br label %sc_or_end96
sc_or_end96:
  %336 = load i1, i1* %258
  br i1 %336, label %sc_or_end98, label %sc_or_rhs97
sc_or_rhs97:
  %337 = load %nyx_string*, %nyx_string** %256
  %338 = getelementptr [6 x i8], [6 x i8]* @.str299, i32 0, i32 0
  %339 = call %nyx_string* @nyx_string_from_cstr(i8* %338)
  %340 = call i8* @nyx_string_to_cstr(%nyx_string* %337)
  %341 = call i8* @nyx_string_to_cstr(%nyx_string* %339)
  %342 = call i32 @strcmp(i8* %340, i8* %341)
  %343 = icmp eq i32 %342, 0
  store i1 %343, i1* %257
  br label %sc_or_end98
sc_or_end98:
  %344 = load i1, i1* %257
  br i1 %344, label %then99, label %else100
then99:
  %345 = load %nyx_string*, %nyx_string** %2
  %346 = load i64, i64* %9
  %347 = load i64, i64* %3
  %348 = call %nyx_string* @nyx_string_substring(%nyx_string* %345, i64 %346, i64 %347)
  %349 = alloca %nyx_string*
  store %nyx_string* %348, %nyx_string** %349
  %350 = getelementptr [7 x i8], [7 x i8]* @.str300, i32 0, i32 0
  %351 = call %nyx_string* @nyx_string_from_cstr(i8* %350)
  %352 = load %nyx_string*, %nyx_string** %349
  %353 = call i64 @add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %351, %nyx_string* %352)
  br label %merge101
else100:
  %354 = load i64, i64* %245
  store i64 %354, i64* %3
  %355 = load %nyx_string*, %nyx_string** %2
  %356 = load i64, i64* %9
  %357 = load i64, i64* %3
  %358 = call %nyx_string* @nyx_string_substring(%nyx_string* %355, i64 %356, i64 %357)
  %359 = alloca %nyx_string*
  store %nyx_string* %358, %nyx_string** %359
  %360 = getelementptr [7 x i8], [7 x i8]* @.str301, i32 0, i32 0
  %361 = call %nyx_string* @nyx_string_from_cstr(i8* %360)
  %362 = load %nyx_string*, %nyx_string** %359
  %363 = call i64 @add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %361, %nyx_string* %362)
  br label %merge101
merge101:
  br label %merge74
else73:
  %364 = load %nyx_string*, %nyx_string** %2
  %365 = load i64, i64* %9
  %366 = load i64, i64* %3
  %367 = call %nyx_string* @nyx_string_substring(%nyx_string* %364, i64 %365, i64 %366)
  %368 = alloca %nyx_string*
  store %nyx_string* %367, %nyx_string** %368
  %369 = getelementptr [7 x i8], [7 x i8]* @.str302, i32 0, i32 0
  %370 = call %nyx_string* @nyx_string_from_cstr(i8* %369)
  %371 = load %nyx_string*, %nyx_string** %368
  %372 = call i64 @add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %370, %nyx_string* %371)
  br label %merge74
merge74:
  br label %merge34
merge34:
  br label %merge19
merge19:
  br label %merge6
merge6:
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
  %30 = alloca i1
  store i1 false, i1* %30
  %31 = load i8, i8* %17
  %32 = getelementptr [1 x i8], [1 x i8]* @.str306, i32 0, i32 0
  %33 = load i8, i8* %32
  %34 = zext i8 %33 to i64
  %35 = zext i8 %31 to i64
  %36 = icmp eq i64 %35, %34
  br i1 %36, label %sc_and_rhs9, label %sc_and_end10
sc_and_rhs9:
  %37 = call i8 @peek_next(%SharedEnv_tokenize* %env.param)
  %38 = getelementptr [1 x i8], [1 x i8]* @.str307, i32 0, i32 0
  %39 = load i8, i8* %38
  %40 = zext i8 %39 to i64
  %41 = zext i8 %37 to i64
  %42 = icmp eq i64 %41, %40
  store i1 %42, i1* %30
  br label %sc_and_end10
sc_and_end10:
  %43 = load i1, i1* %30
  br i1 %43, label %then11, label %else12
then11:
  %44 = getelementptr [7 x i8], [7 x i8]* @.str308, i32 0, i32 0
  %45 = call %nyx_string* @nyx_string_from_cstr(i8* %44)
  %46 = load { i64, i8* }*, { i64, i8* }** %8
  %47 = call %nyx_string* @build_string_from_chars(%SharedEnv_tokenize* %env.param, { i64, i8* }* %46)
  %48 = call i64 @add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %45, %nyx_string* %47)
  %49 = getelementptr [5 x i8], [5 x i8]* @.str309, i32 0, i32 0
  %50 = call %nyx_string* @nyx_string_from_cstr(i8* %49)
  %51 = getelementptr [2 x i8], [2 x i8]* @.str310, i32 0, i32 0
  %52 = call %nyx_string* @nyx_string_from_cstr(i8* %51)
  %53 = call i64 @add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %50, %nyx_string* %52)
  %54 = getelementptr [11 x i8], [11 x i8]* @.str311, i32 0, i32 0
  %55 = call %nyx_string* @nyx_string_from_cstr(i8* %54)
  %56 = getelementptr [2 x i8], [2 x i8]* @.str312, i32 0, i32 0
  %57 = call %nyx_string* @nyx_string_from_cstr(i8* %56)
  %58 = call i64 @add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %55, %nyx_string* %57)
  %59 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %60 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %61 = load i64, i64* %7
  %62 = add i64 %61, 1
  store i64 %62, i64* %7
  store i1 1, i1* %9
  br label %merge13
else12:
  %63 = load i8, i8* %17
  %64 = getelementptr [1 x i8], [1 x i8]* @.str313, i32 0, i32 0
  %65 = load i8, i8* %64
  %66 = zext i8 %65 to i64
  %67 = zext i8 %63 to i64
  %68 = icmp eq i64 %67, %66
  br i1 %68, label %then14, label %else15
then14:
  %69 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %70 = call i8 @peek(%SharedEnv_tokenize* %env.param)
  %71 = alloca i8
  store i8 %70, i8* %71
  %72 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %73 = load i8, i8* %71
  %74 = getelementptr [1 x i8], [1 x i8]* @.str314, i32 0, i32 0
  %75 = load i8, i8* %74
  %76 = zext i8 %75 to i64
  %77 = zext i8 %73 to i64
  %78 = icmp eq i64 %77, %76
  br i1 %78, label %then17, label %else18
then17:
  %79 = load { i64, i8* }*, { i64, i8* }** %8
  %80 = getelementptr [1 x i8], [1 x i8]* @.str315, i32 0, i32 0
  %81 = load i8, i8* %80
  %82 = zext i8 %81 to i64
  call void @nyx_array_push({ i64, i8* }* %79, i64 %82)
  br label %merge19
else18:
  %83 = load i8, i8* %71
  %84 = getelementptr [1 x i8], [1 x i8]* @.str316, i32 0, i32 0
  %85 = load i8, i8* %84
  %86 = zext i8 %85 to i64
  %87 = zext i8 %83 to i64
  %88 = icmp eq i64 %87, %86
  br i1 %88, label %then20, label %else21
then20:
  %89 = load { i64, i8* }*, { i64, i8* }** %8
  %90 = getelementptr [1 x i8], [1 x i8]* @.str317, i32 0, i32 0
  %91 = load i8, i8* %90
  %92 = zext i8 %91 to i64
  call void @nyx_array_push({ i64, i8* }* %89, i64 %92)
  br label %merge22
else21:
  %93 = load i8, i8* %71
  %94 = getelementptr [1 x i8], [1 x i8]* @.str318, i32 0, i32 0
  %95 = load i8, i8* %94
  %96 = zext i8 %95 to i64
  %97 = zext i8 %93 to i64
  %98 = icmp eq i64 %97, %96
  br i1 %98, label %then23, label %else24
then23:
  %99 = load { i64, i8* }*, { i64, i8* }** %8
  %100 = getelementptr [1 x i8], [1 x i8]* @.str319, i32 0, i32 0
  %101 = load i8, i8* %100
  %102 = zext i8 %101 to i64
  call void @nyx_array_push({ i64, i8* }* %99, i64 %102)
  br label %merge25
else24:
  %103 = load i8, i8* %71
  %104 = getelementptr [1 x i8], [1 x i8]* @.str320, i32 0, i32 0
  %105 = load i8, i8* %104
  %106 = zext i8 %105 to i64
  %107 = zext i8 %103 to i64
  %108 = icmp eq i64 %107, %106
  br i1 %108, label %then26, label %else27
then26:
  %109 = load { i64, i8* }*, { i64, i8* }** %8
  %110 = getelementptr [1 x i8], [1 x i8]* @.str321, i32 0, i32 0
  %111 = load i8, i8* %110
  %112 = zext i8 %111 to i64
  call void @nyx_array_push({ i64, i8* }* %109, i64 %112)
  br label %merge28
else27:
  %113 = load i8, i8* %71
  %114 = getelementptr [1 x i8], [1 x i8]* @.str322, i32 0, i32 0
  %115 = load i8, i8* %114
  %116 = zext i8 %115 to i64
  %117 = zext i8 %113 to i64
  %118 = icmp eq i64 %117, %116
  br i1 %118, label %then29, label %else30
then29:
  %119 = trunc i64 13 to i8
  %120 = alloca i8
  store i8 %119, i8* %120
  %121 = load { i64, i8* }*, { i64, i8* }** %8
  %122 = load i8, i8* %120
  %123 = zext i8 %122 to i64
  call void @nyx_array_push({ i64, i8* }* %121, i64 %123)
  br label %merge31
else30:
  %124 = load i8, i8* %71
  %125 = getelementptr [1 x i8], [1 x i8]* @.str323, i32 0, i32 0
  %126 = load i8, i8* %125
  %127 = zext i8 %126 to i64
  %128 = zext i8 %124 to i64
  %129 = icmp eq i64 %128, %127
  br i1 %129, label %then32, label %else33
then32:
  %130 = trunc i64 0 to i8
  %131 = alloca i8
  store i8 %130, i8* %131
  %132 = load { i64, i8* }*, { i64, i8* }** %8
  %133 = load i8, i8* %131
  %134 = zext i8 %133 to i64
  call void @nyx_array_push({ i64, i8* }* %132, i64 %134)
  br label %merge34
else33:
  %135 = load { i64, i8* }*, { i64, i8* }** %8
  %136 = load i8, i8* %71
  %137 = zext i8 %136 to i64
  call void @nyx_array_push({ i64, i8* }* %135, i64 %137)
  br label %merge34
merge34:
  br label %merge31
merge31:
  br label %merge28
merge28:
  br label %merge25
merge25:
  br label %merge22
merge22:
  br label %merge19
merge19:
  br label %merge16
else15:
  %138 = load { i64, i8* }*, { i64, i8* }** %8
  %139 = load i8, i8* %17
  %140 = zext i8 %139 to i64
  call void @nyx_array_push({ i64, i8* }* %138, i64 %140)
  %141 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  br label %merge16
merge16:
  br label %merge13
merge13:
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
  %27 = alloca i1
  store i1 false, i1* %27
  %28 = load i8, i8* %26
  %29 = getelementptr [1 x i8], [1 x i8]* @.str326, i32 0, i32 0
  %30 = load i8, i8* %29
  %31 = zext i8 %30 to i64
  %32 = zext i8 %28 to i64
  %33 = icmp eq i64 %32, %31
  br i1 %33, label %sc_and_rhs9, label %sc_and_end10
sc_and_rhs9:
  %34 = call i8 @peek_next(%SharedEnv_tokenize* %env.param)
  %35 = getelementptr [1 x i8], [1 x i8]* @.str327, i32 0, i32 0
  %36 = load i8, i8* %35
  %37 = zext i8 %36 to i64
  %38 = zext i8 %34 to i64
  %39 = icmp eq i64 %38, %37
  store i1 %39, i1* %27
  br label %sc_and_end10
sc_and_end10:
  %40 = load i1, i1* %27
  br i1 %40, label %then11, label %else12
then11:
  %41 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %42 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %43 = call i1 @at_end(%SharedEnv_tokenize* %env.param)
  br i1 %43, label %then14, label %else15
then14:
  %44 = load { i64, i8* }*, { i64, i8* }** %17
  %45 = getelementptr [1 x i8], [1 x i8]* @.str328, i32 0, i32 0
  %46 = load i8, i8* %45
  %47 = zext i8 %46 to i64
  call void @nyx_array_push({ i64, i8* }* %44, i64 %47)
  %48 = load { i64, i8* }*, { i64, i8* }** %17
  %49 = getelementptr [1 x i8], [1 x i8]* @.str329, i32 0, i32 0
  %50 = load i8, i8* %49
  %51 = zext i8 %50 to i64
  call void @nyx_array_push({ i64, i8* }* %48, i64 %51)
  br label %merge16
else15:
  %52 = call i8 @peek(%SharedEnv_tokenize* %env.param)
  %53 = getelementptr [1 x i8], [1 x i8]* @.str330, i32 0, i32 0
  %54 = load i8, i8* %53
  %55 = zext i8 %54 to i64
  %56 = zext i8 %52 to i64
  %57 = icmp eq i64 %56, %55
  br i1 %57, label %then17, label %else18
then17:
  %58 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  store i1 1, i1* %18
  br label %merge19
else18:
  %59 = load { i64, i8* }*, { i64, i8* }** %17
  %60 = getelementptr [1 x i8], [1 x i8]* @.str331, i32 0, i32 0
  %61 = load i8, i8* %60
  %62 = zext i8 %61 to i64
  call void @nyx_array_push({ i64, i8* }* %59, i64 %62)
  %63 = load { i64, i8* }*, { i64, i8* }** %17
  %64 = getelementptr [1 x i8], [1 x i8]* @.str332, i32 0, i32 0
  %65 = load i8, i8* %64
  %66 = zext i8 %65 to i64
  call void @nyx_array_push({ i64, i8* }* %63, i64 %66)
  br label %merge19
merge19:
  br label %merge16
merge16:
  br label %merge13
else12:
  %67 = load { i64, i8* }*, { i64, i8* }** %17
  %68 = load i8, i8* %26
  %69 = zext i8 %68 to i64
  call void @nyx_array_push({ i64, i8* }* %67, i64 %69)
  %70 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  br label %merge13
merge13:
  br label %merge8
merge8:
  br label %while_cond3
while_end5:
  %71 = getelementptr [7 x i8], [7 x i8]* @.str333, i32 0, i32 0
  %72 = call %nyx_string* @nyx_string_from_cstr(i8* %71)
  %73 = load { i64, i8* }*, { i64, i8* }** %17
  %74 = call %nyx_string* @build_string_from_chars(%SharedEnv_tokenize* %env.param, { i64, i8* }* %73)
  %75 = call i64 @add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %72, %nyx_string* %74)
  br label %merge2
else1:
  %76 = getelementptr [7 x i8], [7 x i8]* @.str334, i32 0, i32 0
  %77 = call %nyx_string* @nyx_string_from_cstr(i8* %76)
  %78 = getelementptr [1 x i8], [1 x i8]* @.str335, i32 0, i32 0
  %79 = call %nyx_string* @nyx_string_from_cstr(i8* %78)
  %80 = call i64 @add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %77, %nyx_string* %79)
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
  %41 = alloca i1
  store i1 false, i1* %41
  %42 = load i8, i8* %18
  %43 = getelementptr [1 x i8], [1 x i8]* @.str344, i32 0, i32 0
  %44 = load i8, i8* %43
  %45 = zext i8 %44 to i64
  %46 = zext i8 %42 to i64
  %47 = icmp eq i64 %46, %45
  br i1 %47, label %sc_and_rhs12, label %sc_and_end13
sc_and_rhs12:
  %48 = call i8 @peek_next(%SharedEnv_tokenize* %env.param)
  %49 = getelementptr [1 x i8], [1 x i8]* @.str345, i32 0, i32 0
  %50 = load i8, i8* %49
  %51 = zext i8 %50 to i64
  %52 = zext i8 %48 to i64
  %53 = icmp eq i64 %52, %51
  store i1 %53, i1* %41
  br label %sc_and_end13
sc_and_end13:
  %54 = load i1, i1* %41
  br i1 %54, label %then14, label %else15
then14:
  %55 = load { i64, i8* }*, { i64, i8* }** %9
  %56 = call %nyx_string* @build_string_from_chars(%SharedEnv_tokenize* %env.param, { i64, i8* }* %55)
  %57 = alloca %nyx_string*
  store %nyx_string* %56, %nyx_string** %57
  %58 = load %nyx_string*, %nyx_string** %57
  %59 = call i64 @nyx_string_byte_length(%nyx_string* %58)
  %60 = icmp sgt i64 %59, 0
  br i1 %60, label %then17, label %else18
then17:
  %61 = getelementptr [5 x i8], [5 x i8]* @.str346, i32 0, i32 0
  %62 = call %nyx_string* @nyx_string_from_cstr(i8* %61)
  %63 = getelementptr [2 x i8], [2 x i8]* @.str347, i32 0, i32 0
  %64 = call %nyx_string* @nyx_string_from_cstr(i8* %63)
  %65 = call i64 @add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %62, %nyx_string* %64)
  %66 = getelementptr [7 x i8], [7 x i8]* @.str348, i32 0, i32 0
  %67 = call %nyx_string* @nyx_string_from_cstr(i8* %66)
  %68 = load %nyx_string*, %nyx_string** %57
  %69 = call i64 @add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %67, %nyx_string* %68)
  br label %merge19
else18:
  br label %merge19
merge19:
  %70 = getelementptr [5 x i8], [5 x i8]* @.str349, i32 0, i32 0
  %71 = call %nyx_string* @nyx_string_from_cstr(i8* %70)
  %72 = getelementptr [2 x i8], [2 x i8]* @.str350, i32 0, i32 0
  %73 = call %nyx_string* @nyx_string_from_cstr(i8* %72)
  %74 = call i64 @add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %71, %nyx_string* %73)
  %75 = getelementptr [11 x i8], [11 x i8]* @.str351, i32 0, i32 0
  %76 = call %nyx_string* @nyx_string_from_cstr(i8* %75)
  %77 = getelementptr [2 x i8], [2 x i8]* @.str352, i32 0, i32 0
  %78 = call %nyx_string* @nyx_string_from_cstr(i8* %77)
  %79 = call i64 @add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %76, %nyx_string* %78)
  %80 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %81 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %82 = load i64, i64* %7
  %83 = add i64 %82, 1
  store i64 %83, i64* %7
  store i1 1, i1* %10
  br label %merge16
else15:
  %84 = load i8, i8* %18
  %85 = getelementptr [1 x i8], [1 x i8]* @.str353, i32 0, i32 0
  %86 = load i8, i8* %85
  %87 = zext i8 %86 to i64
  %88 = zext i8 %84 to i64
  %89 = icmp eq i64 %88, %87
  br i1 %89, label %then20, label %else21
then20:
  %90 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %91 = call i8 @peek(%SharedEnv_tokenize* %env.param)
  %92 = alloca i8
  store i8 %91, i8* %92
  %93 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %94 = load i8, i8* %92
  %95 = getelementptr [1 x i8], [1 x i8]* @.str354, i32 0, i32 0
  %96 = load i8, i8* %95
  %97 = zext i8 %96 to i64
  %98 = zext i8 %94 to i64
  %99 = icmp eq i64 %98, %97
  br i1 %99, label %then23, label %else24
then23:
  %100 = load { i64, i8* }*, { i64, i8* }** %9
  %101 = getelementptr [1 x i8], [1 x i8]* @.str355, i32 0, i32 0
  %102 = load i8, i8* %101
  %103 = zext i8 %102 to i64
  call void @nyx_array_push({ i64, i8* }* %100, i64 %103)
  br label %merge25
else24:
  %104 = load i8, i8* %92
  %105 = getelementptr [1 x i8], [1 x i8]* @.str356, i32 0, i32 0
  %106 = load i8, i8* %105
  %107 = zext i8 %106 to i64
  %108 = zext i8 %104 to i64
  %109 = icmp eq i64 %108, %107
  br i1 %109, label %then26, label %else27
then26:
  %110 = load { i64, i8* }*, { i64, i8* }** %9
  %111 = getelementptr [1 x i8], [1 x i8]* @.str357, i32 0, i32 0
  %112 = load i8, i8* %111
  %113 = zext i8 %112 to i64
  call void @nyx_array_push({ i64, i8* }* %110, i64 %113)
  br label %merge28
else27:
  %114 = load i8, i8* %92
  %115 = getelementptr [1 x i8], [1 x i8]* @.str358, i32 0, i32 0
  %116 = load i8, i8* %115
  %117 = zext i8 %116 to i64
  %118 = zext i8 %114 to i64
  %119 = icmp eq i64 %118, %117
  br i1 %119, label %then29, label %else30
then29:
  %120 = load { i64, i8* }*, { i64, i8* }** %9
  %121 = getelementptr [1 x i8], [1 x i8]* @.str359, i32 0, i32 0
  %122 = load i8, i8* %121
  %123 = zext i8 %122 to i64
  call void @nyx_array_push({ i64, i8* }* %120, i64 %123)
  br label %merge31
else30:
  %124 = load i8, i8* %92
  %125 = getelementptr [1 x i8], [1 x i8]* @.str360, i32 0, i32 0
  %126 = load i8, i8* %125
  %127 = zext i8 %126 to i64
  %128 = zext i8 %124 to i64
  %129 = icmp eq i64 %128, %127
  br i1 %129, label %then32, label %else33
then32:
  %130 = load { i64, i8* }*, { i64, i8* }** %9
  %131 = getelementptr [1 x i8], [1 x i8]* @.str361, i32 0, i32 0
  %132 = load i8, i8* %131
  %133 = zext i8 %132 to i64
  call void @nyx_array_push({ i64, i8* }* %130, i64 %133)
  br label %merge34
else33:
  %134 = load i8, i8* %92
  %135 = getelementptr [1 x i8], [1 x i8]* @.str362, i32 0, i32 0
  %136 = load i8, i8* %135
  %137 = zext i8 %136 to i64
  %138 = zext i8 %134 to i64
  %139 = icmp eq i64 %138, %137
  br i1 %139, label %then35, label %else36
then35:
  %140 = trunc i64 13 to i8
  %141 = alloca i8
  store i8 %140, i8* %141
  %142 = load { i64, i8* }*, { i64, i8* }** %9
  %143 = load i8, i8* %141
  %144 = zext i8 %143 to i64
  call void @nyx_array_push({ i64, i8* }* %142, i64 %144)
  br label %merge37
else36:
  %145 = load i8, i8* %92
  %146 = getelementptr [1 x i8], [1 x i8]* @.str363, i32 0, i32 0
  %147 = load i8, i8* %146
  %148 = zext i8 %147 to i64
  %149 = zext i8 %145 to i64
  %150 = icmp eq i64 %149, %148
  br i1 %150, label %then38, label %else39
then38:
  %151 = trunc i64 0 to i8
  %152 = alloca i8
  store i8 %151, i8* %152
  %153 = load { i64, i8* }*, { i64, i8* }** %9
  %154 = load i8, i8* %152
  %155 = zext i8 %154 to i64
  call void @nyx_array_push({ i64, i8* }* %153, i64 %155)
  br label %merge40
else39:
  %156 = load { i64, i8* }*, { i64, i8* }** %9
  %157 = load i8, i8* %92
  %158 = zext i8 %157 to i64
  call void @nyx_array_push({ i64, i8* }* %156, i64 %158)
  br label %merge40
merge40:
  br label %merge37
merge37:
  br label %merge34
merge34:
  br label %merge31
merge31:
  br label %merge28
merge28:
  br label %merge25
merge25:
  br label %merge22
else21:
  %159 = load { i64, i8* }*, { i64, i8* }** %9
  %160 = load i8, i8* %18
  %161 = zext i8 %160 to i64
  call void @nyx_array_push({ i64, i8* }* %159, i64 %161)
  %162 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  br label %merge22
merge22:
  br label %merge16
merge16:
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
  %569 = call i8 @peek(%SharedEnv_tokenize* %env.param)
  %570 = getelementptr [1 x i8], [1 x i8]* @.str519, i32 0, i32 0
  %571 = load i8, i8* %570
  %572 = zext i8 %571 to i64
  %573 = zext i8 %569 to i64
  %574 = icmp eq i64 %573, %572
  br i1 %574, label %then147, label %else148
then147:
  %575 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %576 = call i64 @skip_comment(%SharedEnv_tokenize* %env.param)
  br label %merge149
else148:
  %577 = getelementptr [5 x i8], [5 x i8]* @.str520, i32 0, i32 0
  %578 = call %nyx_string* @nyx_string_from_cstr(i8* %577)
  %579 = getelementptr [2 x i8], [2 x i8]* @.str521, i32 0, i32 0
  %580 = call %nyx_string* @nyx_string_from_cstr(i8* %579)
  %581 = call i64 @add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %578, %nyx_string* %580)
  br label %merge149
merge149:
  br label %merge146
else145:
  %582 = load i8, i8* %12
  %583 = getelementptr [1 x i8], [1 x i8]* @.str522, i32 0, i32 0
  %584 = load i8, i8* %583
  %585 = zext i8 %584 to i64
  %586 = zext i8 %582 to i64
  %587 = icmp eq i64 %586, %585
  br i1 %587, label %then150, label %else151
then150:
  %588 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %589 = call i8 @peek(%SharedEnv_tokenize* %env.param)
  %590 = getelementptr [1 x i8], [1 x i8]* @.str523, i32 0, i32 0
  %591 = load i8, i8* %590
  %592 = zext i8 %591 to i64
  %593 = zext i8 %589 to i64
  %594 = icmp eq i64 %593, %592
  br i1 %594, label %then153, label %else154
then153:
  %595 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %596 = call i8 @peek(%SharedEnv_tokenize* %env.param)
  %597 = getelementptr [1 x i8], [1 x i8]* @.str524, i32 0, i32 0
  %598 = load i8, i8* %597
  %599 = zext i8 %598 to i64
  %600 = zext i8 %596 to i64
  %601 = icmp eq i64 %600, %599
  br i1 %601, label %then156, label %else157
then156:
  %602 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %603 = getelementptr [9 x i8], [9 x i8]* @.str525, i32 0, i32 0
  %604 = call %nyx_string* @nyx_string_from_cstr(i8* %603)
  %605 = getelementptr [4 x i8], [4 x i8]* @.str526, i32 0, i32 0
  %606 = call %nyx_string* @nyx_string_from_cstr(i8* %605)
  %607 = call i64 @add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %604, %nyx_string* %606)
  br label %merge158
else157:
  %608 = call i8 @peek(%SharedEnv_tokenize* %env.param)
  %609 = getelementptr [1 x i8], [1 x i8]* @.str527, i32 0, i32 0
  %610 = load i8, i8* %609
  %611 = zext i8 %610 to i64
  %612 = zext i8 %608 to i64
  %613 = icmp eq i64 %612, %611
  br i1 %613, label %then159, label %else160
then159:
  %614 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %615 = getelementptr [16 x i8], [16 x i8]* @.str528, i32 0, i32 0
  %616 = call %nyx_string* @nyx_string_from_cstr(i8* %615)
  %617 = getelementptr [4 x i8], [4 x i8]* @.str529, i32 0, i32 0
  %618 = call %nyx_string* @nyx_string_from_cstr(i8* %617)
  %619 = call i64 @add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %616, %nyx_string* %618)
  br label %merge161
else160:
  %620 = getelementptr [6 x i8], [6 x i8]* @.str530, i32 0, i32 0
  %621 = call %nyx_string* @nyx_string_from_cstr(i8* %620)
  %622 = getelementptr [3 x i8], [3 x i8]* @.str531, i32 0, i32 0
  %623 = call %nyx_string* @nyx_string_from_cstr(i8* %622)
  %624 = call i64 @add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %621, %nyx_string* %623)
  br label %merge161
merge161:
  br label %merge158
merge158:
  br label %merge155
else154:
  %625 = getelementptr [4 x i8], [4 x i8]* @.str532, i32 0, i32 0
  %626 = call %nyx_string* @nyx_string_from_cstr(i8* %625)
  %627 = getelementptr [2 x i8], [2 x i8]* @.str533, i32 0, i32 0
  %628 = call %nyx_string* @nyx_string_from_cstr(i8* %627)
  %629 = call i64 @add_token(%SharedEnv_tokenize* %env.param, %nyx_string* %626, %nyx_string* %628)
  br label %merge155
merge155:
  br label %merge152
else151:
  %630 = load i8, i8* %12
  %631 = getelementptr [1 x i8], [1 x i8]* @.str534, i32 0, i32 0
  %632 = load i8, i8* %631
  %633 = zext i8 %632 to i64
  %634 = zext i8 %630 to i64
  %635 = icmp eq i64 %634, %633
  br i1 %635, label %then162, label %else163
then162:
  %636 = call i8 @peek_next(%SharedEnv_tokenize* %env.param)
  %637 = getelementptr [1 x i8], [1 x i8]* @.str535, i32 0, i32 0
  %638 = load i8, i8* %637
  %639 = zext i8 %638 to i64
  %640 = zext i8 %636 to i64
  %641 = icmp eq i64 %640, %639
  br i1 %641, label %then165, label %else166
then165:
  %642 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %643 = call i64 @scan_multiline_string(%SharedEnv_tokenize* %env.param)
  br label %merge167
else166:
  %644 = call i64 @scan_string(%SharedEnv_tokenize* %env.param)
  br label %merge167
merge167:
  br label %merge164
else163:
  %645 = load i8, i8* %12
  %646 = getelementptr [1 x i8], [1 x i8]* @.str536, i32 0, i32 0
  %647 = load i8, i8* %646
  %648 = zext i8 %647 to i64
  %649 = zext i8 %645 to i64
  %650 = icmp eq i64 %649, %648
  br i1 %650, label %then168, label %else169
then168:
  %651 = call i8 @peek_next(%SharedEnv_tokenize* %env.param)
  %652 = alloca i8
  store i8 %651, i8* %652
  %653 = alloca i1
  store i1 0, i1* %653
  %654 = load i8, i8* %652
  %655 = call i1 @is_alpha(%SharedEnv_tokenize* %env.param, i8 %654)
  br i1 %655, label %then171, label %else172
then171:
  %656 = load i64, i64* %3
  %657 = add i64 %656, 2
  %658 = alloca i64
  store i64 %657, i64* %658
  %659 = load i64, i64* %658
  %660 = load %nyx_string*, %nyx_string** %2
  %661 = call i64 @nyx_string_byte_length(%nyx_string* %660)
  %662 = icmp sge i64 %659, %661
  br i1 %662, label %then174, label %else175
then174:
  store i1 1, i1* %653
  br label %merge176
else175:
  %663 = load %nyx_string*, %nyx_string** %2
  %664 = load i64, i64* %658
  %665 = call i8 @nyx_string_char_at(%nyx_string* %663, i64 %664)
  %666 = zext i8 %665 to i64
  %667 = trunc i64 %666 to i8
  %668 = alloca i8
  store i8 %667, i8* %668
  %669 = load i8, i8* %668
  %670 = getelementptr [1 x i8], [1 x i8]* @.str537, i32 0, i32 0
  %671 = load i8, i8* %670
  %672 = zext i8 %671 to i64
  %673 = zext i8 %669 to i64
  %674 = icmp ne i64 %673, %672
  br i1 %674, label %then177, label %else178
then177:
  store i1 1, i1* %653
  br label %merge179
else178:
  br label %merge179
merge179:
  br label %merge176
merge176:
  br label %merge173
else172:
  br label %merge173
merge173:
  %675 = load i1, i1* %653
  br i1 %675, label %then180, label %else181
then180:
  %676 = call i64 @scan_lifetime(%SharedEnv_tokenize* %env.param)
  br label %merge182
else181:
  %677 = call i64 @scan_char(%SharedEnv_tokenize* %env.param)
  br label %merge182
merge182:
  br label %merge170
else169:
  %678 = load i8, i8* %12
  %679 = call i1 @is_digit(%SharedEnv_tokenize* %env.param, i8 %678)
  br i1 %679, label %then183, label %else184
then183:
  %680 = call i64 @scan_number(%SharedEnv_tokenize* %env.param)
  br label %merge185
else184:
  %681 = alloca i1
  store i1 false, i1* %681
  %682 = load i8, i8* %12
  %683 = getelementptr [1 x i8], [1 x i8]* @.str538, i32 0, i32 0
  %684 = load i8, i8* %683
  %685 = zext i8 %684 to i64
  %686 = zext i8 %682 to i64
  %687 = icmp eq i64 %686, %685
  br i1 %687, label %sc_and_rhs186, label %sc_and_end187
sc_and_rhs186:
  %688 = call i8 @peek_next(%SharedEnv_tokenize* %env.param)
  %689 = getelementptr [1 x i8], [1 x i8]* @.str539, i32 0, i32 0
  %690 = load i8, i8* %689
  %691 = zext i8 %690 to i64
  %692 = zext i8 %688 to i64
  %693 = icmp eq i64 %692, %691
  store i1 %693, i1* %681
  br label %sc_and_end187
sc_and_end187:
  %694 = load i1, i1* %681
  br i1 %694, label %then188, label %else189
then188:
  %695 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  %696 = call i64 @scan_raw_string(%SharedEnv_tokenize* %env.param)
  br label %merge190
else189:
  %697 = load i8, i8* %12
  %698 = call i1 @is_alpha(%SharedEnv_tokenize* %env.param, i8 %697)
  br i1 %698, label %then191, label %else192
then191:
  %699 = call i64 @scan_identifier(%SharedEnv_tokenize* %env.param)
  br label %merge193
else192:
  %700 = call i8 @advance(%SharedEnv_tokenize* %env.param)
  br label %merge193
merge193:
  br label %merge190
merge190:
  br label %merge185
merge185:
  br label %merge170
merge170:
  br label %merge164
merge164:
  br label %merge152
merge152:
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

