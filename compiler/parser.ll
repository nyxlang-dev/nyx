source_filename = "script.nx"
target triple = "x86_64-pc-linux-gnu"

%Token = type { %nyx_string*, %nyx_string*, i64, i64 }

@.str0 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str1 = private unnamed_addr constant [30 x i8] c"ERROR: demasiadas iteraciones\00"
@.str2 = private unnamed_addr constant [4 x i8] c"EOF\00"
@.str3 = private unnamed_addr constant [6 x i8] c"error\00"
@.str4 = private unnamed_addr constant [9 x i8] c"Parser: \00"
@.str5 = private unnamed_addr constant [16 x i8] c" error(s) found\00"
@.str6 = private unnamed_addr constant [10 x i8] c"_consumed\00"
@.str7 = private unnamed_addr constant [6 x i8] c"block\00"
@.str8 = private unnamed_addr constant [6 x i8] c"block\00"
@.str9 = private unnamed_addr constant [32 x i8] c"Error: fin inesperado de tokens\00"
@.str10 = private unnamed_addr constant [4 x i8] c"EOF\00"
@.str11 = private unnamed_addr constant [1 x i8] c"\00"
@.str12 = private unnamed_addr constant [8 x i8] c"error: \00"
@.str13 = private unnamed_addr constant [14 x i8] c"  --> línea \00"
@.str14 = private unnamed_addr constant [2 x i8] c":\00"
@.str15 = private unnamed_addr constant [4 x i8] c" | \00"
@.str16 = private unnamed_addr constant [3 x i8] c"  \00"
@.str17 = private unnamed_addr constant [2 x i8] c" \00"
@.str18 = private unnamed_addr constant [2 x i8] c"^\00"
@.str19 = private unnamed_addr constant [2 x i8] c"^\00"
@.str20 = private unnamed_addr constant [1 x i8] c"\00"
@.str21 = private unnamed_addr constant [2 x i8] c" \00"
@.str22 = private unnamed_addr constant [3 x i8] c"| \00"
@.str23 = private unnamed_addr constant [14 x i8] c"se esperaba '\00"
@.str24 = private unnamed_addr constant [16 x i8] c"', encontrado '\00"
@.str25 = private unnamed_addr constant [4 x i8] c"' (\00"
@.str26 = private unnamed_addr constant [2 x i8] c")\00"
@.str27 = private unnamed_addr constant [6 x i8] c"OR_OR\00"
@.str28 = private unnamed_addr constant [3 x i8] c"OR\00"
@.str29 = private unnamed_addr constant [6 x i8] c"binop\00"
@.str30 = private unnamed_addr constant [8 x i8] c"AND_AND\00"
@.str31 = private unnamed_addr constant [4 x i8] c"AND\00"
@.str32 = private unnamed_addr constant [6 x i8] c"binop\00"
@.str33 = private unnamed_addr constant [5 x i8] c"PIPE\00"
@.str34 = private unnamed_addr constant [6 x i8] c"binop\00"
@.str35 = private unnamed_addr constant [6 x i8] c"CARET\00"
@.str36 = private unnamed_addr constant [6 x i8] c"binop\00"
@.str37 = private unnamed_addr constant [4 x i8] c"AMP\00"
@.str38 = private unnamed_addr constant [6 x i8] c"binop\00"
@.str39 = private unnamed_addr constant [12 x i8] c"EQUAL_EQUAL\00"
@.str40 = private unnamed_addr constant [10 x i8] c"NOT_EQUAL\00"
@.str41 = private unnamed_addr constant [6 x i8] c"binop\00"
@.str42 = private unnamed_addr constant [5 x i8] c"LESS\00"
@.str43 = private unnamed_addr constant [8 x i8] c"GREATER\00"
@.str44 = private unnamed_addr constant [11 x i8] c"LESS_EQUAL\00"
@.str45 = private unnamed_addr constant [14 x i8] c"GREATER_EQUAL\00"
@.str46 = private unnamed_addr constant [6 x i8] c"binop\00"
@.str47 = private unnamed_addr constant [16 x i8] c"RANGE_INCLUSIVE\00"
@.str48 = private unnamed_addr constant [6 x i8] c"range\00"
@.str49 = private unnamed_addr constant [5 x i8] c"true\00"
@.str50 = private unnamed_addr constant [6 x i8] c"RANGE\00"
@.str51 = private unnamed_addr constant [6 x i8] c"range\00"
@.str52 = private unnamed_addr constant [6 x i8] c"false\00"
@.str53 = private unnamed_addr constant [5 x i8] c"PLUS\00"
@.str54 = private unnamed_addr constant [6 x i8] c"MINUS\00"
@.str55 = private unnamed_addr constant [6 x i8] c"binop\00"
@.str56 = private unnamed_addr constant [11 x i8] c"SHIFT_LEFT\00"
@.str57 = private unnamed_addr constant [12 x i8] c"SHIFT_RIGHT\00"
@.str58 = private unnamed_addr constant [6 x i8] c"binop\00"
@.str59 = private unnamed_addr constant [5 x i8] c"STAR\00"
@.str60 = private unnamed_addr constant [5 x i8] c"STAR\00"
@.str61 = private unnamed_addr constant [6 x i8] c"SLASH\00"
@.str62 = private unnamed_addr constant [8 x i8] c"PERCENT\00"
@.str63 = private unnamed_addr constant [6 x i8] c"binop\00"
@.str64 = private unnamed_addr constant [6 x i8] c"POWER\00"
@.str65 = private unnamed_addr constant [6 x i8] c"binop\00"
@.str66 = private unnamed_addr constant [6 x i8] c"POWER\00"
@.str67 = private unnamed_addr constant [6 x i8] c"AWAIT\00"
@.str68 = private unnamed_addr constant [11 x i8] c"await_expr\00"
@.str69 = private unnamed_addr constant [6 x i8] c"MINUS\00"
@.str70 = private unnamed_addr constant [4 x i8] c"NOT\00"
@.str71 = private unnamed_addr constant [6 x i8] c"TILDE\00"
@.str72 = private unnamed_addr constant [5 x i8] c"unop\00"
@.str73 = private unnamed_addr constant [4 x i8] c"AMP\00"
@.str74 = private unnamed_addr constant [8 x i8] c"addr_of\00"
@.str75 = private unnamed_addr constant [5 x i8] c"STAR\00"
@.str76 = private unnamed_addr constant [6 x i8] c"deref\00"
@.str77 = private unnamed_addr constant [3 x i8] c"AS\00"
@.str78 = private unnamed_addr constant [5 x i8] c"cast\00"
@.str79 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str80 = private unnamed_addr constant [5 x i8] c"LESS\00"
@.str81 = private unnamed_addr constant [8 x i8] c"GREATER\00"
@.str82 = private unnamed_addr constant [12 x i8] c"SHIFT_RIGHT\00"
@.str83 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str84 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str85 = private unnamed_addr constant [4 x i8] c"DOT\00"
@.str86 = private unnamed_addr constant [11 x i8] c"identifier\00"
@.str87 = private unnamed_addr constant [5 x i8] c"LESS\00"
@.str88 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str89 = private unnamed_addr constant [8 x i8] c"GREATER\00"
@.str90 = private unnamed_addr constant [12 x i8] c"SHIFT_RIGHT\00"
@.str91 = private unnamed_addr constant [8 x i8] c"GREATER\00"
@.str92 = private unnamed_addr constant [13 x i8] c"generic_call\00"
@.str93 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str94 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str95 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str96 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str97 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str98 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str99 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str100 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str101 = private unnamed_addr constant [12 x i8] c"struct_init\00"
@.str102 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str103 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str104 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str105 = private unnamed_addr constant [5 x i8] c"call\00"
@.str106 = private unnamed_addr constant [13 x i8] c"LEFT_BRACKET\00"
@.str107 = private unnamed_addr constant [14 x i8] c"RIGHT_BRACKET\00"
@.str108 = private unnamed_addr constant [6 x i8] c"index\00"
@.str109 = private unnamed_addr constant [4 x i8] c"DOT\00"
@.str110 = private unnamed_addr constant [7 x i8] c"NUMBER\00"
@.str111 = private unnamed_addr constant [12 x i8] c"tuple_index\00"
@.str112 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str113 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str114 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str115 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str116 = private unnamed_addr constant [12 x i8] c"method_call\00"
@.str117 = private unnamed_addr constant [13 x i8] c"field_access\00"
@.str118 = private unnamed_addr constant [9 x i8] c"QUESTION\00"
@.str119 = private unnamed_addr constant [7 x i8] c"try_op\00"
@.str120 = private unnamed_addr constant [7 x i8] c"NUMBER\00"
@.str121 = private unnamed_addr constant [7 x i8] c"number\00"
@.str122 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str123 = private unnamed_addr constant [7 x i8] c"string\00"
@.str124 = private unnamed_addr constant [5 x i8] c"CHAR\00"
@.str125 = private unnamed_addr constant [5 x i8] c"char\00"
@.str126 = private unnamed_addr constant [5 x i8] c"TRUE\00"
@.str127 = private unnamed_addr constant [5 x i8] c"bool\00"
@.str128 = private unnamed_addr constant [5 x i8] c"true\00"
@.str129 = private unnamed_addr constant [6 x i8] c"FALSE\00"
@.str130 = private unnamed_addr constant [5 x i8] c"bool\00"
@.str131 = private unnamed_addr constant [6 x i8] c"false\00"
@.str132 = private unnamed_addr constant [7 x i8] c"SIZEOF\00"
@.str133 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str134 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str135 = private unnamed_addr constant [7 x i8] c"sizeof\00"
@.str136 = private unnamed_addr constant [8 x i8] c"ALIGNOF\00"
@.str137 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str138 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str139 = private unnamed_addr constant [8 x i8] c"alignof\00"
@.str140 = private unnamed_addr constant [4 x i8] c"ASM\00"
@.str141 = private unnamed_addr constant [2 x i8] c"0\00"
@.str142 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str143 = private unnamed_addr constant [9 x i8] c"volatile\00"
@.str144 = private unnamed_addr constant [2 x i8] c"1\00"
@.str145 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str146 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str147 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str148 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str149 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str150 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str151 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str152 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str153 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str154 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str155 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str156 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str157 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str158 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str159 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str160 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str161 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str162 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str163 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str164 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str165 = private unnamed_addr constant [15 x i8] c"inline_asm_gcc\00"
@.str166 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str167 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str168 = private unnamed_addr constant [4 x i8] c"out\00"
@.str169 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str170 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str171 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str172 = private unnamed_addr constant [3 x i8] c"in\00"
@.str173 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str174 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str175 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str176 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str177 = private unnamed_addr constant [8 x i8] c"clobber\00"
@.str178 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str179 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str180 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str181 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str182 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str183 = private unnamed_addr constant [11 x i8] c"inline_asm\00"
@.str184 = private unnamed_addr constant [7 x i8] c"ASSERT\00"
@.str185 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str186 = private unnamed_addr constant [7 x i8] c"string\00"
@.str187 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str188 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str189 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str190 = private unnamed_addr constant [7 x i8] c"assert\00"
@.str191 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str192 = private unnamed_addr constant [4 x i8] c"NOT\00"
@.str193 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str194 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str195 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str196 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str197 = private unnamed_addr constant [11 x i8] c"identifier\00"
@.str198 = private unnamed_addr constant [13 x i8] c"LEFT_BRACKET\00"
@.str199 = private unnamed_addr constant [6 x i8] c"MATCH\00"
@.str200 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str201 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str202 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str203 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str204 = private unnamed_addr constant [10 x i8] c"tuple_lit\00"
@.str205 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str206 = private unnamed_addr constant [3 x i8] c"FN\00"
@.str207 = private unnamed_addr constant [10 x i8] c"__lambda_\00"
@.str208 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str209 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str210 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str211 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str212 = private unnamed_addr constant [4 x i8] c"int\00"
@.str213 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str214 = private unnamed_addr constant [1 x i8] c"\00"
@.str215 = private unnamed_addr constant [6 x i8] c"ARROW\00"
@.str216 = private unnamed_addr constant [9 x i8] c"function\00"
@.str217 = private unnamed_addr constant [11 x i8] c"identifier\00"
@.str218 = private unnamed_addr constant [35 x i8] c"ERROR: token inesperado en primary\00"
@.str219 = private unnamed_addr constant [6 x i8] c"error\00"
@.str220 = private unnamed_addr constant [13 x i8] c"LEFT_BRACKET\00"
@.str221 = private unnamed_addr constant [14 x i8] c"RIGHT_BRACKET\00"
@.str222 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str223 = private unnamed_addr constant [6 x i8] c"array\00"
@.str224 = private unnamed_addr constant [5 x i8] c"ENUM\00"
@.str225 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str226 = private unnamed_addr constant [5 x i8] c"LESS\00"
@.str227 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str228 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str229 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str230 = private unnamed_addr constant [8 x i8] c"GREATER\00"
@.str231 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str232 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str233 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str234 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str235 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str236 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str237 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str238 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str239 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str240 = private unnamed_addr constant [9 x i8] c"enum_def\00"
@.str241 = private unnamed_addr constant [9 x i8] c"wildcard\00"
@.str242 = private unnamed_addr constant [7 x i8] c"NUMBER\00"
@.str243 = private unnamed_addr constant [2 x i8] c".\00"
@.str244 = private unnamed_addr constant [16 x i8] c"literal_pattern\00"
@.str245 = private unnamed_addr constant [6 x i8] c"float\00"
@.str246 = private unnamed_addr constant [16 x i8] c"RANGE_INCLUSIVE\00"
@.str247 = private unnamed_addr constant [1 x i8] c"\00"
@.str248 = private unnamed_addr constant [6 x i8] c"MINUS\00"
@.str249 = private unnamed_addr constant [7 x i8] c"NUMBER\00"
@.str250 = private unnamed_addr constant [2 x i8] c"-\00"
@.str251 = private unnamed_addr constant [7 x i8] c"NUMBER\00"
@.str252 = private unnamed_addr constant [14 x i8] c"range_pattern\00"
@.str253 = private unnamed_addr constant [5 x i8] c"true\00"
@.str254 = private unnamed_addr constant [4 x i8] c"int\00"
@.str255 = private unnamed_addr constant [6 x i8] c"RANGE\00"
@.str256 = private unnamed_addr constant [1 x i8] c"\00"
@.str257 = private unnamed_addr constant [6 x i8] c"MINUS\00"
@.str258 = private unnamed_addr constant [7 x i8] c"NUMBER\00"
@.str259 = private unnamed_addr constant [2 x i8] c"-\00"
@.str260 = private unnamed_addr constant [7 x i8] c"NUMBER\00"
@.str261 = private unnamed_addr constant [14 x i8] c"range_pattern\00"
@.str262 = private unnamed_addr constant [6 x i8] c"false\00"
@.str263 = private unnamed_addr constant [4 x i8] c"int\00"
@.str264 = private unnamed_addr constant [16 x i8] c"literal_pattern\00"
@.str265 = private unnamed_addr constant [4 x i8] c"int\00"
@.str266 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str267 = private unnamed_addr constant [16 x i8] c"literal_pattern\00"
@.str268 = private unnamed_addr constant [7 x i8] c"string\00"
@.str269 = private unnamed_addr constant [5 x i8] c"TRUE\00"
@.str270 = private unnamed_addr constant [16 x i8] c"literal_pattern\00"
@.str271 = private unnamed_addr constant [5 x i8] c"true\00"
@.str272 = private unnamed_addr constant [5 x i8] c"bool\00"
@.str273 = private unnamed_addr constant [6 x i8] c"FALSE\00"
@.str274 = private unnamed_addr constant [16 x i8] c"literal_pattern\00"
@.str275 = private unnamed_addr constant [6 x i8] c"false\00"
@.str276 = private unnamed_addr constant [5 x i8] c"bool\00"
@.str277 = private unnamed_addr constant [6 x i8] c"MINUS\00"
@.str278 = private unnamed_addr constant [7 x i8] c"NUMBER\00"
@.str279 = private unnamed_addr constant [2 x i8] c".\00"
@.str280 = private unnamed_addr constant [16 x i8] c"literal_pattern\00"
@.str281 = private unnamed_addr constant [2 x i8] c"-\00"
@.str282 = private unnamed_addr constant [6 x i8] c"float\00"
@.str283 = private unnamed_addr constant [16 x i8] c"RANGE_INCLUSIVE\00"
@.str284 = private unnamed_addr constant [1 x i8] c"\00"
@.str285 = private unnamed_addr constant [6 x i8] c"MINUS\00"
@.str286 = private unnamed_addr constant [7 x i8] c"NUMBER\00"
@.str287 = private unnamed_addr constant [2 x i8] c"-\00"
@.str288 = private unnamed_addr constant [7 x i8] c"NUMBER\00"
@.str289 = private unnamed_addr constant [14 x i8] c"range_pattern\00"
@.str290 = private unnamed_addr constant [2 x i8] c"-\00"
@.str291 = private unnamed_addr constant [5 x i8] c"true\00"
@.str292 = private unnamed_addr constant [4 x i8] c"int\00"
@.str293 = private unnamed_addr constant [6 x i8] c"RANGE\00"
@.str294 = private unnamed_addr constant [1 x i8] c"\00"
@.str295 = private unnamed_addr constant [6 x i8] c"MINUS\00"
@.str296 = private unnamed_addr constant [7 x i8] c"NUMBER\00"
@.str297 = private unnamed_addr constant [2 x i8] c"-\00"
@.str298 = private unnamed_addr constant [7 x i8] c"NUMBER\00"
@.str299 = private unnamed_addr constant [14 x i8] c"range_pattern\00"
@.str300 = private unnamed_addr constant [2 x i8] c"-\00"
@.str301 = private unnamed_addr constant [6 x i8] c"false\00"
@.str302 = private unnamed_addr constant [4 x i8] c"int\00"
@.str303 = private unnamed_addr constant [16 x i8] c"literal_pattern\00"
@.str304 = private unnamed_addr constant [2 x i8] c"-\00"
@.str305 = private unnamed_addr constant [4 x i8] c"int\00"
@.str306 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str307 = private unnamed_addr constant [2 x i8] c"_\00"
@.str308 = private unnamed_addr constant [4 x i8] c"DOT\00"
@.str309 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str310 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str311 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str312 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str313 = private unnamed_addr constant [19 x i8] c"identifier_pattern\00"
@.str314 = private unnamed_addr constant [9 x i8] c"wildcard\00"
@.str315 = private unnamed_addr constant [21 x i8] c"nested_match_pattern\00"
@.str316 = private unnamed_addr constant [9 x i8] c"wildcard\00"
@.str317 = private unnamed_addr constant [2 x i8] c"_\00"
@.str318 = private unnamed_addr constant [14 x i8] c"match_pattern\00"
@.str319 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str320 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str321 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str322 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str323 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str324 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str325 = private unnamed_addr constant [15 x i8] c"struct_pattern\00"
@.str326 = private unnamed_addr constant [19 x i8] c"identifier_pattern\00"
@.str327 = private unnamed_addr constant [5 x i8] c"PIPE\00"
@.str328 = private unnamed_addr constant [5 x i8] c"PIPE\00"
@.str329 = private unnamed_addr constant [11 x i8] c"or_pattern\00"
@.str330 = private unnamed_addr constant [6 x i8] c"empty\00"
@.str331 = private unnamed_addr constant [3 x i8] c"IF\00"
@.str332 = private unnamed_addr constant [12 x i8] c"ARROW_MATCH\00"
@.str333 = private unnamed_addr constant [6 x i8] c"empty\00"
@.str334 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str335 = private unnamed_addr constant [10 x i8] c"match_arm\00"
@.str336 = private unnamed_addr constant [6 x i8] c"MATCH\00"
@.str337 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str338 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str339 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str340 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str341 = private unnamed_addr constant [6 x i8] c"match\00"
@.str342 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str343 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str344 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str345 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str346 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str347 = private unnamed_addr constant [12 x i8] c"struct_init\00"
@.str348 = private unnamed_addr constant [4 x i8] c"LET\00"
@.str349 = private unnamed_addr constant [4 x i8] c"VAR\00"
@.str350 = private unnamed_addr constant [6 x i8] c"CONST\00"
@.str351 = private unnamed_addr constant [3 x i8] c"FN\00"
@.str352 = private unnamed_addr constant [5 x i8] c"HASH\00"
@.str353 = private unnamed_addr constant [13 x i8] c"LEFT_BRACKET\00"
@.str354 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str355 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str356 = private unnamed_addr constant [1 x i8] c"\00"
@.str357 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str358 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str359 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str360 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str361 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str362 = private unnamed_addr constant [2 x i8] c",\00"
@.str363 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str364 = private unnamed_addr constant [2 x i8] c"(\00"
@.str365 = private unnamed_addr constant [2 x i8] c")\00"
@.str366 = private unnamed_addr constant [7 x i8] c"EQUALS\00"
@.str367 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str368 = private unnamed_addr constant [2 x i8] c"=\00"
@.str369 = private unnamed_addr constant [14 x i8] c"RIGHT_BRACKET\00"
@.str370 = private unnamed_addr constant [3 x i8] c"FN\00"
@.str371 = private unnamed_addr constant [9 x i8] c"function\00"
@.str372 = private unnamed_addr constant [7 x i8] c"STRUCT\00"
@.str373 = private unnamed_addr constant [7 x i8] c"struct\00"
@.str374 = private unnamed_addr constant [5 x i8] c"ENUM\00"
@.str375 = private unnamed_addr constant [5 x i8] c"enum\00"
@.str376 = private unnamed_addr constant [6 x i8] c"error\00"
@.str377 = private unnamed_addr constant [49 x i8] c"#[...] solo soportado antes de fn, struct o enum\00"
@.str378 = private unnamed_addr constant [7 x i8] c"STRUCT\00"
@.str379 = private unnamed_addr constant [5 x i8] c"ENUM\00"
@.str380 = private unnamed_addr constant [6 x i8] c"MATCH\00"
@.str381 = private unnamed_addr constant [3 x i8] c"IF\00"
@.str382 = private unnamed_addr constant [6 x i8] c"WHILE\00"
@.str383 = private unnamed_addr constant [4 x i8] c"FOR\00"
@.str384 = private unnamed_addr constant [7 x i8] c"RETURN\00"
@.str385 = private unnamed_addr constant [6 x i8] c"BREAK\00"
@.str386 = private unnamed_addr constant [6 x i8] c"break\00"
@.str387 = private unnamed_addr constant [9 x i8] c"CONTINUE\00"
@.str388 = private unnamed_addr constant [9 x i8] c"continue\00"
@.str389 = private unnamed_addr constant [7 x i8] c"EXPORT\00"
@.str390 = private unnamed_addr constant [4 x i8] c"PUB\00"
@.str391 = private unnamed_addr constant [7 x i8] c"IMPORT\00"
@.str392 = private unnamed_addr constant [6 x i8] c"TRAIT\00"
@.str393 = private unnamed_addr constant [5 x i8] c"IMPL\00"
@.str394 = private unnamed_addr constant [5 x i8] c"TEST\00"
@.str395 = private unnamed_addr constant [7 x i8] c"EXTERN\00"
@.str396 = private unnamed_addr constant [7 x i8] c"UNSAFE\00"
@.str397 = private unnamed_addr constant [13 x i8] c"unsafe_block\00"
@.str398 = private unnamed_addr constant [7 x i8] c"STATIC\00"
@.str399 = private unnamed_addr constant [7 x i8] c"MODULE\00"
@.str400 = private unnamed_addr constant [6 x i8] c"DEFER\00"
@.str401 = private unnamed_addr constant [6 x i8] c"defer\00"
@.str402 = private unnamed_addr constant [4 x i8] c"TRY\00"
@.str403 = private unnamed_addr constant [6 x i8] c"THROW\00"
@.str404 = private unnamed_addr constant [6 x i8] c"ASYNC\00"
@.str405 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str406 = private unnamed_addr constant [5 x i8] c"type\00"
@.str407 = private unnamed_addr constant [6 x i8] c"macro\00"
@.str408 = private unnamed_addr constant [6 x i8] c"bench\00"
@.str409 = private unnamed_addr constant [6 x i8] c"spawn\00"
@.str410 = private unnamed_addr constant [7 x i8] c"select\00"
@.str411 = private unnamed_addr constant [5 x i8] c"safe\00"
@.str412 = private unnamed_addr constant [3 x i8] c"FN\00"
@.str413 = private unnamed_addr constant [9 x i8] c"function\00"
@.str414 = private unnamed_addr constant [5 x i8] c"safe\00"
@.str415 = private unnamed_addr constant [5 x i8] c"STAR\00"
@.str416 = private unnamed_addr constant [7 x i8] c"EQUALS\00"
@.str417 = private unnamed_addr constant [13 x i8] c"deref_assign\00"
@.str418 = private unnamed_addr constant [6 x i8] c"deref\00"
@.str419 = private unnamed_addr constant [9 x i8] c"__spawn_\00"
@.str420 = private unnamed_addr constant [9 x i8] c"function\00"
@.str421 = private unnamed_addr constant [4 x i8] c"int\00"
@.str422 = private unnamed_addr constant [11 x i8] c"identifier\00"
@.str423 = private unnamed_addr constant [11 x i8] c"identifier\00"
@.str424 = private unnamed_addr constant [13 x i8] c"thread_spawn\00"
@.str425 = private unnamed_addr constant [5 x i8] c"call\00"
@.str426 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str427 = private unnamed_addr constant [6 x i8] c"block\00"
@.str428 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str429 = private unnamed_addr constant [8 x i8] c"default\00"
@.str430 = private unnamed_addr constant [12 x i8] c"ARROW_MATCH\00"
@.str431 = private unnamed_addr constant [5 x i8] c"case\00"
@.str432 = private unnamed_addr constant [12 x i8] c"ARROW_MATCH\00"
@.str433 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str434 = private unnamed_addr constant [12 x i8] c"select_stmt\00"
@.str435 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str436 = private unnamed_addr constant [7 x i8] c"100000\00"
@.str437 = private unnamed_addr constant [7 x i8] c"NUMBER\00"
@.str438 = private unnamed_addr constant [11 x i8] c"bench_decl\00"
@.str439 = private unnamed_addr constant [5 x i8] c"TEST\00"
@.str440 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str441 = private unnamed_addr constant [10 x i8] c"test_decl\00"
@.str442 = private unnamed_addr constant [7 x i8] c"STATIC\00"
@.str443 = private unnamed_addr constant [4 x i8] c"VAR\00"
@.str444 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str445 = private unnamed_addr constant [4 x i8] c"int\00"
@.str446 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str447 = private unnamed_addr constant [7 x i8] c"EQUALS\00"
@.str448 = private unnamed_addr constant [11 x i8] c"static_var\00"
@.str449 = private unnamed_addr constant [7 x i8] c"EXTERN\00"
@.str450 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str451 = private unnamed_addr constant [3 x i8] c"FN\00"
@.str452 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str453 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str454 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str455 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str456 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str457 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str458 = private unnamed_addr constant [5 x i8] c"void\00"
@.str459 = private unnamed_addr constant [6 x i8] c"ARROW\00"
@.str460 = private unnamed_addr constant [10 x i8] c"extern_fn\00"
@.str461 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str462 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str463 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str464 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str465 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str466 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str467 = private unnamed_addr constant [12 x i8] c"ARROW_MATCH\00"
@.str468 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str469 = private unnamed_addr constant [1 x i8] c"\00"
@.str470 = private unnamed_addr constant [2 x i8] c",\00"
@.str471 = private unnamed_addr constant [10 x i8] c"macro_def\00"
@.str472 = private unnamed_addr constant [4 x i8] c"NOT\00"
@.str473 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str474 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str475 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str476 = private unnamed_addr constant [1 x i8] c"\00"
@.str477 = private unnamed_addr constant [2 x i8] c",\00"
@.str478 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str479 = private unnamed_addr constant [7 x i8] c"EQUALS\00"
@.str480 = private unnamed_addr constant [5 x i8] c"PIPE\00"
@.str481 = private unnamed_addr constant [5 x i8] c"PIPE\00"
@.str482 = private unnamed_addr constant [9 x i8] c"enum_def\00"
@.str483 = private unnamed_addr constant [11 x i8] c"type_alias\00"
@.str484 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str485 = private unnamed_addr constant [2 x i8] c"(\00"
@.str486 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str487 = private unnamed_addr constant [2 x i8] c",\00"
@.str488 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str489 = private unnamed_addr constant [2 x i8] c")\00"
@.str490 = private unnamed_addr constant [3 x i8] c"FN\00"
@.str491 = private unnamed_addr constant [3 x i8] c"Fn\00"
@.str492 = private unnamed_addr constant [5 x i8] c"STAR\00"
@.str493 = private unnamed_addr constant [2 x i8] c"*\00"
@.str494 = private unnamed_addr constant [4 x i8] c"AMP\00"
@.str495 = private unnamed_addr constant [9 x i8] c"LIFETIME\00"
@.str496 = private unnamed_addr constant [4 x i8] c"mut\00"
@.str497 = private unnamed_addr constant [6 x i8] c"&mut \00"
@.str498 = private unnamed_addr constant [2 x i8] c"&\00"
@.str499 = private unnamed_addr constant [9 x i8] c"LIFETIME\00"
@.str500 = private unnamed_addr constant [13 x i8] c"LEFT_BRACKET\00"
@.str501 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str502 = private unnamed_addr constant [7 x i8] c"NUMBER\00"
@.str503 = private unnamed_addr constant [14 x i8] c"RIGHT_BRACKET\00"
@.str504 = private unnamed_addr constant [2 x i8] c"[\00"
@.str505 = private unnamed_addr constant [2 x i8] c":\00"
@.str506 = private unnamed_addr constant [2 x i8] c"]\00"
@.str507 = private unnamed_addr constant [4 x i8] c"DYN\00"
@.str508 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str509 = private unnamed_addr constant [5 x i8] c"dyn \00"
@.str510 = private unnamed_addr constant [5 x i8] c"IMPL\00"
@.str511 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str512 = private unnamed_addr constant [5 x i8] c"PLUS\00"
@.str513 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str514 = private unnamed_addr constant [2 x i8] c"+\00"
@.str515 = private unnamed_addr constant [5 x i8] c"dyn \00"
@.str516 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str517 = private unnamed_addr constant [5 x i8] c"Self\00"
@.str518 = private unnamed_addr constant [4 x i8] c"DOT\00"
@.str519 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str520 = private unnamed_addr constant [6 x i8] c"Self.\00"
@.str521 = private unnamed_addr constant [3 x i8] c"Fn\00"
@.str522 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str523 = private unnamed_addr constant [4 x i8] c"Fn(\00"
@.str524 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str525 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str526 = private unnamed_addr constant [2 x i8] c",\00"
@.str527 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str528 = private unnamed_addr constant [2 x i8] c")\00"
@.str529 = private unnamed_addr constant [6 x i8] c"ARROW\00"
@.str530 = private unnamed_addr constant [3 x i8] c"->\00"
@.str531 = private unnamed_addr constant [5 x i8] c"LESS\00"
@.str532 = private unnamed_addr constant [2 x i8] c"<\00"
@.str533 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str534 = private unnamed_addr constant [2 x i8] c",\00"
@.str535 = private unnamed_addr constant [8 x i8] c"GREATER\00"
@.str536 = private unnamed_addr constant [12 x i8] c"SHIFT_RIGHT\00"
@.str537 = private unnamed_addr constant [8 x i8] c"GREATER\00"
@.str538 = private unnamed_addr constant [2 x i8] c">\00"
@.str539 = private unnamed_addr constant [4 x i8] c"VAR\00"
@.str540 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str541 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str542 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str543 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str544 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str545 = private unnamed_addr constant [7 x i8] c"EQUALS\00"
@.str546 = private unnamed_addr constant [22 x i8] c"let_destructure_tuple\00"
@.str547 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str548 = private unnamed_addr constant [1 x i8] c"\00"
@.str549 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str550 = private unnamed_addr constant [7 x i8] c"EQUALS\00"
@.str551 = private unnamed_addr constant [4 x i8] c"let\00"
@.str552 = private unnamed_addr constant [6 x i8] c"CONST\00"
@.str553 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str554 = private unnamed_addr constant [1 x i8] c"\00"
@.str555 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str556 = private unnamed_addr constant [7 x i8] c"EQUALS\00"
@.str557 = private unnamed_addr constant [6 x i8] c"const\00"
@.str558 = private unnamed_addr constant [3 x i8] c"FN\00"
@.str559 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str560 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str561 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str562 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str563 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str564 = private unnamed_addr constant [1 x i8] c"\00"
@.str565 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str566 = private unnamed_addr constant [1 x i8] c"\00"
@.str567 = private unnamed_addr constant [6 x i8] c"ARROW\00"
@.str568 = private unnamed_addr constant [9 x i8] c"async_fn\00"
@.str569 = private unnamed_addr constant [3 x i8] c"FN\00"
@.str570 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str571 = private unnamed_addr constant [5 x i8] c"LESS\00"
@.str572 = private unnamed_addr constant [9 x i8] c"LIFETIME\00"
@.str573 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str574 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str575 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str576 = private unnamed_addr constant [5 x i8] c"PLUS\00"
@.str577 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str578 = private unnamed_addr constant [2 x i8] c"+\00"
@.str579 = private unnamed_addr constant [2 x i8] c":\00"
@.str580 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str581 = private unnamed_addr constant [9 x i8] c"LIFETIME\00"
@.str582 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str583 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str584 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str585 = private unnamed_addr constant [5 x i8] c"PLUS\00"
@.str586 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str587 = private unnamed_addr constant [2 x i8] c"+\00"
@.str588 = private unnamed_addr constant [2 x i8] c":\00"
@.str589 = private unnamed_addr constant [8 x i8] c"GREATER\00"
@.str590 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str591 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str592 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str593 = private unnamed_addr constant [9 x i8] c"ELLIPSIS\00"
@.str594 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str595 = private unnamed_addr constant [10 x i8] c"...String\00"
@.str596 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str597 = private unnamed_addr constant [4 x i8] c"...\00"
@.str598 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str599 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str600 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str601 = private unnamed_addr constant [1 x i8] c"\00"
@.str602 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str603 = private unnamed_addr constant [7 x i8] c"EQUALS\00"
@.str604 = private unnamed_addr constant [1 x i8] c"\00"
@.str605 = private unnamed_addr constant [6 x i8] c"ARROW\00"
@.str606 = private unnamed_addr constant [6 x i8] c"WHERE\00"
@.str607 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str608 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str609 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str610 = private unnamed_addr constant [5 x i8] c"PLUS\00"
@.str611 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str612 = private unnamed_addr constant [2 x i8] c"+\00"
@.str613 = private unnamed_addr constant [1 x i8] c":"
@.str614 = private unnamed_addr constant [2 x i8] c"+\00"
@.str615 = private unnamed_addr constant [2 x i8] c":\00"
@.str616 = private unnamed_addr constant [2 x i8] c":\00"
@.str617 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str618 = private unnamed_addr constant [10 x i8] c"_consumed\00"
@.str619 = private unnamed_addr constant [9 x i8] c"function\00"
@.str620 = private unnamed_addr constant [6 x i8] c"block\00"
@.str621 = private unnamed_addr constant [9 x i8] c"function\00"
@.str622 = private unnamed_addr constant [7 x i8] c"STRUCT\00"
@.str623 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str624 = private unnamed_addr constant [5 x i8] c"LESS\00"
@.str625 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str626 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str627 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str628 = private unnamed_addr constant [8 x i8] c"GREATER\00"
@.str629 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str630 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str631 = private unnamed_addr constant [3 x i8] c"_0\00"
@.str632 = private unnamed_addr constant [7 x i8] c"struct\00"
@.str633 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str634 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str635 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str636 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str637 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str638 = private unnamed_addr constant [7 x i8] c"struct\00"
@.str639 = private unnamed_addr constant [3 x i8] c"IF\00"
@.str640 = private unnamed_addr constant [4 x i8] c"LET\00"
@.str641 = private unnamed_addr constant [6 x i8] c"empty\00"
@.str642 = private unnamed_addr constant [5 x i8] c"ELSE\00"
@.str643 = private unnamed_addr constant [3 x i8] c"IF\00"
@.str644 = private unnamed_addr constant [3 x i8] c"if\00"
@.str645 = private unnamed_addr constant [4 x i8] c"LET\00"
@.str646 = private unnamed_addr constant [7 x i8] c"EQUALS\00"
@.str647 = private unnamed_addr constant [6 x i8] c"block\00"
@.str648 = private unnamed_addr constant [5 x i8] c"ELSE\00"
@.str649 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str650 = private unnamed_addr constant [10 x i8] c"match_arm\00"
@.str651 = private unnamed_addr constant [6 x i8] c"empty\00"
@.str652 = private unnamed_addr constant [9 x i8] c"wildcard\00"
@.str653 = private unnamed_addr constant [10 x i8] c"match_arm\00"
@.str654 = private unnamed_addr constant [6 x i8] c"empty\00"
@.str655 = private unnamed_addr constant [6 x i8] c"match\00"
@.str656 = private unnamed_addr constant [6 x i8] c"WHILE\00"
@.str657 = private unnamed_addr constant [4 x i8] c"LET\00"
@.str658 = private unnamed_addr constant [6 x i8] c"while\00"
@.str659 = private unnamed_addr constant [4 x i8] c"LET\00"
@.str660 = private unnamed_addr constant [7 x i8] c"EQUALS\00"
@.str661 = private unnamed_addr constant [10 x i8] c"while_let\00"
@.str662 = private unnamed_addr constant [4 x i8] c"FOR\00"
@.str663 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str664 = private unnamed_addr constant [1 x i8] c"\00"
@.str665 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str666 = private unnamed_addr constant [3 x i8] c"IN\00"
@.str667 = private unnamed_addr constant [4 x i8] c"for\00"
@.str668 = private unnamed_addr constant [7 x i8] c"RETURN\00"
@.str669 = private unnamed_addr constant [7 x i8] c"return\00"
@.str670 = private unnamed_addr constant [7 x i8] c"EXPORT\00"
@.str671 = private unnamed_addr constant [3 x i8] c"FN\00"
@.str672 = private unnamed_addr constant [7 x i8] c"export\00"
@.str673 = private unnamed_addr constant [7 x i8] c"STRUCT\00"
@.str674 = private unnamed_addr constant [7 x i8] c"export\00"
@.str675 = private unnamed_addr constant [5 x i8] c"ENUM\00"
@.str676 = private unnamed_addr constant [7 x i8] c"export\00"
@.str677 = private unnamed_addr constant [45 x i8] c"export solo puede preceder fn, struct o enum\00"
@.str678 = private unnamed_addr constant [6 x i8] c"error\00"
@.str679 = private unnamed_addr constant [7 x i8] c"IMPORT\00"
@.str680 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str681 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str682 = private unnamed_addr constant [1 x i8] c"\00"
@.str683 = private unnamed_addr constant [3 x i8] c"AS\00"
@.str684 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str685 = private unnamed_addr constant [14 x i8] c"import_module\00"
@.str686 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str687 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str688 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str689 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str690 = private unnamed_addr constant [5 x i8] c"FROM\00"
@.str691 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str692 = private unnamed_addr constant [7 x i8] c"import\00"
@.str693 = private unnamed_addr constant [4 x i8] c"PUB\00"
@.str694 = private unnamed_addr constant [3 x i8] c"FN\00"
@.str695 = private unnamed_addr constant [7 x i8] c"export\00"
@.str696 = private unnamed_addr constant [7 x i8] c"STRUCT\00"
@.str697 = private unnamed_addr constant [7 x i8] c"export\00"
@.str698 = private unnamed_addr constant [5 x i8] c"ENUM\00"
@.str699 = private unnamed_addr constant [7 x i8] c"export\00"
@.str700 = private unnamed_addr constant [42 x i8] c"pub solo puede preceder fn, struct o enum\00"
@.str701 = private unnamed_addr constant [6 x i8] c"error\00"
@.str702 = private unnamed_addr constant [7 x i8] c"MODULE\00"
@.str703 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str704 = private unnamed_addr constant [7 x i8] c"EQUALS\00"
@.str705 = private unnamed_addr constant [13 x i8] c"LEFT_BRACKET\00"
@.str706 = private unnamed_addr constant [14 x i8] c"RIGHT_BRACKET\00"
@.str707 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str708 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str709 = private unnamed_addr constant [14 x i8] c"RIGHT_BRACKET\00"
@.str710 = private unnamed_addr constant [12 x i8] c"module_decl\00"
@.str711 = private unnamed_addr constant [6 x i8] c"TRAIT\00"
@.str712 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str713 = private unnamed_addr constant [5 x i8] c"LESS\00"
@.str714 = private unnamed_addr constant [8 x i8] c"GREATER\00"
@.str715 = private unnamed_addr constant [9 x i8] c"LIFETIME\00"
@.str716 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str717 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str718 = private unnamed_addr constant [8 x i8] c"GREATER\00"
@.str719 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str720 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str721 = private unnamed_addr constant [5 x i8] c"PLUS\00"
@.str722 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str723 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str724 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str725 = private unnamed_addr constant [5 x i8] c"type\00"
@.str726 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str727 = private unnamed_addr constant [5 x i8] c"LESS\00"
@.str728 = private unnamed_addr constant [8 x i8] c"GREATER\00"
@.str729 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str730 = private unnamed_addr constant [9 x i8] c"LIFETIME\00"
@.str731 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str732 = private unnamed_addr constant [15 x i8] c"__assoc_type__\00"
@.str733 = private unnamed_addr constant [3 x i8] c"FN\00"
@.str734 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str735 = private unnamed_addr constant [5 x i8] c"LESS\00"
@.str736 = private unnamed_addr constant [8 x i8] c"GREATER\00"
@.str737 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str738 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str739 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str740 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str741 = private unnamed_addr constant [1 x i8] c"\00"
@.str742 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str743 = private unnamed_addr constant [1 x i8] c"\00"
@.str744 = private unnamed_addr constant [6 x i8] c"ARROW\00"
@.str745 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str746 = private unnamed_addr constant [10 x i8] c"trait_def\00"
@.str747 = private unnamed_addr constant [5 x i8] c"IMPL\00"
@.str748 = private unnamed_addr constant [5 x i8] c"LESS\00"
@.str749 = private unnamed_addr constant [8 x i8] c"GREATER\00"
@.str750 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str751 = private unnamed_addr constant [4 x i8] c"FOR\00"
@.str752 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str753 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str754 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str755 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str756 = private unnamed_addr constant [5 x i8] c"type\00"
@.str757 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str758 = private unnamed_addr constant [5 x i8] c"LESS\00"
@.str759 = private unnamed_addr constant [8 x i8] c"GREATER\00"
@.str760 = private unnamed_addr constant [7 x i8] c"EQUALS\00"
@.str761 = private unnamed_addr constant [11 x i8] c"impl_trait\00"
@.str762 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str763 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str764 = private unnamed_addr constant [5 x i8] c"impl\00"
@.str765 = private unnamed_addr constant [6 x i8] c"CATCH\00"
@.str766 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str767 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str768 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str769 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str770 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str771 = private unnamed_addr constant [10 x i8] c"try_catch\00"
@.str772 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str773 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str774 = private unnamed_addr constant [6 x i8] c"throw\00"
@.str775 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str776 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str777 = private unnamed_addr constant [6 x i8] c"block\00"
@.str778 = private unnamed_addr constant [11 x i8] c"identifier\00"
@.str779 = private unnamed_addr constant [7 x i8] c"EQUALS\00"
@.str780 = private unnamed_addr constant [7 x i8] c"assign\00"
@.str781 = private unnamed_addr constant [1 x i8] c"\00"
@.str782 = private unnamed_addr constant [12 x i8] c"PLUS_EQUALS\00"
@.str783 = private unnamed_addr constant [5 x i8] c"PLUS\00"
@.str784 = private unnamed_addr constant [13 x i8] c"MINUS_EQUALS\00"
@.str785 = private unnamed_addr constant [6 x i8] c"MINUS\00"
@.str786 = private unnamed_addr constant [12 x i8] c"STAR_EQUALS\00"
@.str787 = private unnamed_addr constant [5 x i8] c"STAR\00"
@.str788 = private unnamed_addr constant [13 x i8] c"SLASH_EQUALS\00"
@.str789 = private unnamed_addr constant [6 x i8] c"SLASH\00"
@.str790 = private unnamed_addr constant [15 x i8] c"PERCENT_EQUALS\00"
@.str791 = private unnamed_addr constant [8 x i8] c"PERCENT\00"
@.str792 = private unnamed_addr constant [11 x i8] c"AMP_EQUALS\00"
@.str793 = private unnamed_addr constant [4 x i8] c"AMP\00"
@.str794 = private unnamed_addr constant [12 x i8] c"PIPE_EQUALS\00"
@.str795 = private unnamed_addr constant [5 x i8] c"PIPE\00"
@.str796 = private unnamed_addr constant [13 x i8] c"CARET_EQUALS\00"
@.str797 = private unnamed_addr constant [6 x i8] c"CARET\00"
@.str798 = private unnamed_addr constant [18 x i8] c"SHIFT_LEFT_EQUALS\00"
@.str799 = private unnamed_addr constant [11 x i8] c"SHIFT_LEFT\00"
@.str800 = private unnamed_addr constant [19 x i8] c"SHIFT_RIGHT_EQUALS\00"
@.str801 = private unnamed_addr constant [12 x i8] c"SHIFT_RIGHT\00"
@.str802 = private unnamed_addr constant [1 x i8] c"\00"
@.str803 = private unnamed_addr constant [11 x i8] c"identifier\00"
@.str804 = private unnamed_addr constant [6 x i8] c"binop\00"
@.str805 = private unnamed_addr constant [7 x i8] c"assign\00"
@.str806 = private unnamed_addr constant [6 x i8] c"deref\00"
@.str807 = private unnamed_addr constant [7 x i8] c"EQUALS\00"
@.str808 = private unnamed_addr constant [13 x i8] c"deref_assign\00"
@.str809 = private unnamed_addr constant [6 x i8] c"index\00"
@.str810 = private unnamed_addr constant [7 x i8] c"EQUALS\00"
@.str811 = private unnamed_addr constant [13 x i8] c"index_assign\00"
@.str812 = private unnamed_addr constant [13 x i8] c"field_access\00"
@.str813 = private unnamed_addr constant [7 x i8] c"EQUALS\00"
@.str814 = private unnamed_addr constant [13 x i8] c"field_assign\00"
@.str815 = private unnamed_addr constant [4 x i8] c"EOF\00"
@.str816 = private unnamed_addr constant [3 x i8] c"FN\00"
@.str817 = private unnamed_addr constant [4 x i8] c"LET\00"
@.str818 = private unnamed_addr constant [4 x i8] c"VAR\00"
@.str819 = private unnamed_addr constant [6 x i8] c"CONST\00"
@.str820 = private unnamed_addr constant [7 x i8] c"STRUCT\00"
@.str821 = private unnamed_addr constant [5 x i8] c"ENUM\00"
@.str822 = private unnamed_addr constant [3 x i8] c"IF\00"
@.str823 = private unnamed_addr constant [6 x i8] c"WHILE\00"
@.str824 = private unnamed_addr constant [4 x i8] c"FOR\00"
@.str825 = private unnamed_addr constant [7 x i8] c"RETURN\00"
@.str826 = private unnamed_addr constant [7 x i8] c"IMPORT\00"
@.str827 = private unnamed_addr constant [7 x i8] c"EXPORT\00"
@.str828 = private unnamed_addr constant [6 x i8] c"TRAIT\00"
@.str829 = private unnamed_addr constant [5 x i8] c"IMPL\00"
@.str830 = private unnamed_addr constant [6 x i8] c"MATCH\00"
@.str831 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
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


define internal %nyx_string* @get_token_type(
%Token %tok.param) {
  %tok.ptr = alloca %Token
  store %Token %tok.param, %Token* %tok.ptr
  %1 = getelementptr %Token, %Token* %tok.ptr, i32 0, i32 0
  %2 = load %nyx_string*, %nyx_string** %1
  ret %nyx_string* %2
}

define internal %nyx_string* @get_token_value(
%Token %tok.param) {
  %tok.ptr = alloca %Token
  store %Token %tok.param, %Token* %tok.ptr
  %3 = getelementptr %Token, %Token* %tok.ptr, i32 0, i32 1
  %4 = load %nyx_string*, %nyx_string** %3
  ret %nyx_string* %4
}

define internal i64 @get_token_line(
%Token %tok.param) {
  %tok.ptr = alloca %Token
  store %Token %tok.param, %Token* %tok.ptr
  %5 = getelementptr %Token, %Token* %tok.ptr, i32 0, i32 2
  %6 = load i64, i64* %5
  ret i64 %6
}

define internal i64 @get_token_column(
%Token %tok.param) {
  %tok.ptr = alloca %Token
  store %Token %tok.param, %Token* %tok.ptr
  %7 = getelementptr %Token, %Token* %tok.ptr, i32 0, i32 3
  %8 = load i64, i64* %7
  ret i64 %8
}

define internal { i64, i8* }* @make_astnode(
%nyx_string* %node_type.param, { i64, i8* }* %data.param) {
  %node_type.ptr = alloca %nyx_string*
  store %nyx_string* %node_type.param, %nyx_string** %node_type.ptr
  %data.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %data.param, { i64, i8* }** %data.ptr
  %9 = call { i64, i8* }* @nyx_array_new_ptr()
  %10 = alloca { i64, i8* }*
  store { i64, i8* }* %9, { i64, i8* }** %10
  %11 = load { i64, i8* }*, { i64, i8* }** %10
  %12 = load %nyx_string*, %nyx_string** %node_type.ptr
  %13 = ptrtoint %nyx_string* %12 to i64
  call void @nyx_array_push({ i64, i8* }* %11, i64 %13)
  %14 = load { i64, i8* }*, { i64, i8* }** %10
  %15 = load { i64, i8* }*, { i64, i8* }** %data.ptr
  %16 = ptrtoint { i64, i8* }* %15 to i64
  call void @nyx_array_push({ i64, i8* }* %14, i64 %16)
  %17 = load { i64, i8* }*, { i64, i8* }** %10
  ret { i64, i8* }* %17
}

define internal %nyx_string* @astnode_get_type(
{ i64, i8* }* %node.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %18 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %19 = call i64 @nyx_array_get({ i64, i8* }* %18, i64 0)
  %20 = inttoptr i64 %19 to %nyx_string*
  ret %nyx_string* %20
}

define internal { i64, i8* }* @astnode_get_data(
{ i64, i8* }* %node.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %21 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %22 = call i64 @nyx_array_get({ i64, i8* }* %21, i64 1)
  %23 = inttoptr i64 %22 to { i64, i8* }*
  ret { i64, i8* }* %23
}

%SharedEnv_parse = type { { i64, i8* }*, %nyx_string*, { i64, i8* }*, i64, i64, { i64, i8* }*, { i64, i8* }*, { i64, i8* }*, { i64, i8* }*, { i64, i8* }*, { i64, i8* }*, { i64, i8* }*, { i64, i8* }* }
define { i64, i8* }* @parse(
{ i64, i8* }* %input_tokens.param, %nyx_string* %source.param) {
  %24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* null, i32 1
  %25 = ptrtoint %SharedEnv_parse* %24 to i64
  %26 = call i8* @GC_malloc(i64 %25)
  %27 = bitcast i8* %26 to %SharedEnv_parse*
  %28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %27, i32 0, i32 0
  store { i64, i8* }* %input_tokens.param, { i64, i8* }** %28
  %29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %27, i32 0, i32 1
  store %nyx_string* %source.param, %nyx_string** %29
  %30 = load { i64, i8* }*, { i64, i8* }** %28
  %31 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %27, i32 0, i32 2
  store { i64, i8* }* %30, { i64, i8* }** %31
  %32 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %27, i32 0, i32 3
  store i64 0, i64* %32
  %33 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %27, i32 0, i32 4
  store i64 0, i64* %33
  %34 = load %nyx_string*, %nyx_string** %29
  %35 = getelementptr [2 x i8], [2 x i8]* @.str0, i32 0, i32 0
  %36 = call %nyx_string* @nyx_string_from_cstr(i8* %35)
  %37 = call { i64, i8* }* @nyx_string_split(%nyx_string* %34, %nyx_string* %36)
  %38 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %27, i32 0, i32 5
  store { i64, i8* }* %37, { i64, i8* }** %38
  %39 = call { i64, i8* }* @nyx_array_new_ptr()
  %40 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %27, i32 0, i32 6
  store { i64, i8* }* %39, { i64, i8* }** %40
  %41 = call { i64, i8* }* @nyx_array_new_ptr()
  call void @nyx_array_push({ i64, i8* }* %41, i64 0)
  %42 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %27, i32 0, i32 7
  store { i64, i8* }* %41, { i64, i8* }** %42
  %43 = call { i64, i8* }* @nyx_array_new_ptr()
  %44 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %27, i32 0, i32 8
  store { i64, i8* }* %43, { i64, i8* }** %44
  %45 = call { i64, i8* }* @nyx_array_new_ptr()
  %46 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %27, i32 0, i32 9
  store { i64, i8* }* %45, { i64, i8* }** %46
  %47 = call { i64, i8* }* @nyx_array_new_ptr()
  %48 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %27, i32 0, i32 10
  store { i64, i8* }* %47, { i64, i8* }** %48
  %49 = call { i64, i8* }* @nyx_array_new_ptr()
  %50 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %27, i32 0, i32 11
  store { i64, i8* }* %49, { i64, i8* }** %50
  %51 = call { i64, i8* }* @nyx_array_new_ptr()
  %52 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %27, i32 0, i32 12
  store { i64, i8* }* %51, { i64, i8* }** %52
  %53 = call { i64, i8* }* @nyx_array_new_ptr()
  %54 = alloca { i64, i8* }*
  store { i64, i8* }* %53, { i64, i8* }** %54
  %55 = alloca i1
  store i1 0, i1* %55
  %56 = alloca i64
  store i64 0, i64* %56
  %57 = alloca i64
  store i64 0, i64* %57
  br label %while_cond0
while_cond0:
  %58 = load i1, i1* %55
  %59 = xor i1 %58, true
  br i1 %59, label %while_body1, label %while_end2
while_body1:
  %60 = load i64, i64* %56
  %61 = add i64 %60, 1
  store i64 %61, i64* %56
  %62 = load i64, i64* %56
  %63 = icmp sgt i64 %62, 100000
  br i1 %63, label %then3, label %else4
then3:
  %64 = getelementptr [30 x i8], [30 x i8]* @.str1, i32 0, i32 0
  %65 = call %nyx_string* @nyx_string_from_cstr(i8* %64)
  %66 = call i8* @nyx_string_to_cstr(%nyx_string* %65)
  call void @nyx_print_string(i8* %66)
  store i1 1, i1* %55
  br label %merge5
else4:
  br label %merge5
merge5:
  %67 = getelementptr [4 x i8], [4 x i8]* @.str2, i32 0, i32 0
  %68 = call %nyx_string* @nyx_string_from_cstr(i8* %67)
  %69 = call i1 @check(%SharedEnv_parse* %27, %nyx_string* %68)
  br i1 %69, label %then6, label %else7
then6:
  store i1 1, i1* %55
  br label %merge8
else7:
  %70 = call { i64, i8* }* @parse_statement(%SharedEnv_parse* %27)
  %71 = alloca { i64, i8* }*
  store { i64, i8* }* %70, { i64, i8* }** %71
  %72 = getelementptr [6 x i8], [6 x i8]* @.str3, i32 0, i32 0
  %73 = call %nyx_string* @nyx_string_from_cstr(i8* %72)
  %74 = inttoptr i64 0 to %nyx_string*
  %75 = call i8* @nyx_string_to_cstr(%nyx_string* %74)
  %76 = call i8* @nyx_string_to_cstr(%nyx_string* %73)
  %77 = call i32 @strcmp(i8* %75, i8* %76)
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %then9, label %else10
then9:
  %79 = load i64, i64* %57
  %80 = add i64 %79, 1
  store i64 %80, i64* %57
  %81 = call i64 @synchronize(%SharedEnv_parse* %27)
  br label %merge11
else10:
  %82 = load { i64, i8* }*, { i64, i8* }** %54
  %83 = load { i64, i8* }*, { i64, i8* }** %71
  %84 = ptrtoint { i64, i8* }* %83 to i64
  call void @nyx_array_push({ i64, i8* }* %82, i64 %84)
  br label %merge11
merge11:
  br label %merge8
merge8:
  br label %while_cond0
while_end2:
  %85 = load i64, i64* %57
  %86 = icmp sgt i64 %85, 0
  br i1 %86, label %then12, label %else13
then12:
  %87 = getelementptr [9 x i8], [9 x i8]* @.str4, i32 0, i32 0
  %88 = call %nyx_string* @nyx_string_from_cstr(i8* %87)
  %89 = load i64, i64* %57
  %90 = call %nyx_string* @nyx_string_from_int(i64 %89)
  %91 = call %nyx_string* @nyx_string_concat(%nyx_string* %88, %nyx_string* %90)
  %92 = getelementptr [16 x i8], [16 x i8]* @.str5, i32 0, i32 0
  %93 = call %nyx_string* @nyx_string_from_cstr(i8* %92)
  %94 = call %nyx_string* @nyx_string_concat(%nyx_string* %91, %nyx_string* %93)
  %95 = call i8* @nyx_string_to_cstr(%nyx_string* %94)
  call void @nyx_print_string(i8* %95)
  br label %merge14
else13:
  br label %merge14
merge14:
  %96 = load { i64, i8* }*, { i64, i8* }** %40
  %97 = call i64 @nyx_array_length({ i64, i8* }* %96)
  %98 = icmp sgt i64 %97, 0
  br i1 %98, label %then15, label %else16
then15:
  %99 = call { i64, i8* }* @nyx_array_new_ptr()
  %100 = alloca { i64, i8* }*
  store { i64, i8* }* %99, { i64, i8* }** %100
  %101 = alloca i64
  store i64 0, i64* %101
  br label %while_cond18
while_cond18:
  %102 = load i64, i64* %101
  %103 = load { i64, i8* }*, { i64, i8* }** %40
  %104 = call i64 @nyx_array_length({ i64, i8* }* %103)
  %105 = icmp slt i64 %102, %104
  br i1 %105, label %while_body19, label %while_end20
while_body19:
  %106 = load { i64, i8* }*, { i64, i8* }** %40
  %107 = load i64, i64* %101
  %108 = call i64 @nyx_array_get({ i64, i8* }* %106, i64 %107)
  %109 = inttoptr i64 %108 to { i64, i8* }*
  %110 = alloca { i64, i8* }*
  store { i64, i8* }* %109, { i64, i8* }** %110
  %111 = load { i64, i8* }*, { i64, i8* }** %110
  %112 = call i64 @nyx_array_get({ i64, i8* }* %111, i64 0)
  %113 = inttoptr i64 %112 to %nyx_string*
  %114 = alloca %nyx_string*
  store %nyx_string* %113, %nyx_string** %114
  %115 = load %nyx_string*, %nyx_string** %114
  %116 = getelementptr [10 x i8], [10 x i8]* @.str6, i32 0, i32 0
  %117 = call %nyx_string* @nyx_string_from_cstr(i8* %116)
  %118 = call i8* @nyx_string_to_cstr(%nyx_string* %115)
  %119 = call i8* @nyx_string_to_cstr(%nyx_string* %117)
  %120 = call i32 @strcmp(i8* %118, i8* %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %then21, label %else22
then21:
  %122 = load { i64, i8* }*, { i64, i8* }** %100
  %123 = load { i64, i8* }*, { i64, i8* }** %40
  %124 = load i64, i64* %101
  %125 = call i64 @nyx_array_get({ i64, i8* }* %123, i64 %124)
  call void @nyx_array_push({ i64, i8* }* %122, i64 %125)
  br label %merge23
else22:
  br label %merge23
merge23:
  %126 = load i64, i64* %101
  %127 = add i64 %126, 1
  store i64 %127, i64* %101
  br label %while_cond18
while_end20:
  %128 = alloca i64
  store i64 0, i64* %128
  br label %while_cond24
while_cond24:
  %129 = load i64, i64* %128
  %130 = load { i64, i8* }*, { i64, i8* }** %54
  %131 = call i64 @nyx_array_length({ i64, i8* }* %130)
  %132 = icmp slt i64 %129, %131
  br i1 %132, label %while_body25, label %while_end26
while_body25:
  %133 = load { i64, i8* }*, { i64, i8* }** %100
  %134 = load { i64, i8* }*, { i64, i8* }** %54
  %135 = load i64, i64* %128
  %136 = call i64 @nyx_array_get({ i64, i8* }* %134, i64 %135)
  call void @nyx_array_push({ i64, i8* }* %133, i64 %136)
  %137 = load i64, i64* %128
  %138 = add i64 %137, 1
  store i64 %138, i64* %128
  br label %while_cond24
while_end26:
  %139 = getelementptr [6 x i8], [6 x i8]* @.str7, i32 0, i32 0
  %140 = call %nyx_string* @nyx_string_from_cstr(i8* %139)
  %141 = call { i64, i8* }* @nyx_array_new_ptr()
  %142 = load { i64, i8* }*, { i64, i8* }** %100
  %143 = bitcast { i64, i8* }* %142 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %141, i8* %143)
  %144 = call { i64, i8* }* @make_astnode(%nyx_string* %140, { i64, i8* }* %141)
  ret { i64, i8* }* %144
else16:
  br label %merge17
merge17:
  %145 = getelementptr [6 x i8], [6 x i8]* @.str8, i32 0, i32 0
  %146 = call %nyx_string* @nyx_string_from_cstr(i8* %145)
  %147 = call { i64, i8* }* @nyx_array_new_ptr()
  %148 = load { i64, i8* }*, { i64, i8* }** %54
  %149 = bitcast { i64, i8* }* %148 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %147, i8* %149)
  %150 = call { i64, i8* }* @make_astnode(%nyx_string* %146, { i64, i8* }* %147)
  ret { i64, i8* }* %150
}

define internal %Token @peek(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = load i64, i64* %4
  %15 = load { i64, i8* }*, { i64, i8* }** %3
  %16 = call i64 @nyx_array_length({ i64, i8* }* %15)
  %17 = icmp slt i64 %14, %16
  br i1 %17, label %then0, label %else1
then0:
  %18 = load { i64, i8* }*, { i64, i8* }** %3
  %19 = load i64, i64* %4
  %20 = call i64 @nyx_array_get({ i64, i8* }* %18, i64 %19)
  %21 = inttoptr i64 %20 to %Token*
  %22 = load %Token, %Token* %21
  ret %Token %22
else1:
  br label %merge2
merge2:
  %23 = getelementptr [32 x i8], [32 x i8]* @.str9, i32 0, i32 0
  %24 = call %nyx_string* @nyx_string_from_cstr(i8* %23)
  %25 = call i8* @nyx_string_to_cstr(%nyx_string* %24)
  call void @nyx_print_string(i8* %25)
  %26 = getelementptr %Token, %Token* null, i32 1
  %27 = ptrtoint %Token* %26 to i64
  %28 = call i8* @GC_malloc(i64 %27)
  %29 = bitcast i8* %28 to %Token*
  %30 = getelementptr [4 x i8], [4 x i8]* @.str10, i32 0, i32 0
  %31 = call %nyx_string* @nyx_string_from_cstr(i8* %30)
  %32 = getelementptr %Token, %Token* %29, i32 0, i32 0
  store %nyx_string* %31, %nyx_string** %32
  %33 = getelementptr [1 x i8], [1 x i8]* @.str11, i32 0, i32 0
  %34 = call %nyx_string* @nyx_string_from_cstr(i8* %33)
  %35 = getelementptr %Token, %Token* %29, i32 0, i32 1
  store %nyx_string* %34, %nyx_string** %35
  %36 = getelementptr %Token, %Token* %29, i32 0, i32 2
  store i64 0, i64* %36
  %37 = getelementptr %Token, %Token* %29, i32 0, i32 3
  store i64 0, i64* %37
  %38 = load %Token, %Token* %29
  %39 = alloca %Token
  store %Token %38, %Token* %39
  %40 = load %Token, %Token* %39
  ret %Token %40
}

define internal i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %type.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = alloca %nyx_string*
  store %nyx_string* %type.param, %nyx_string** %14
  %15 = load i64, i64* %4
  %16 = load { i64, i8* }*, { i64, i8* }** %3
  %17 = call i64 @nyx_array_length({ i64, i8* }* %16)
  %18 = icmp slt i64 %15, %17
  br i1 %18, label %then0, label %else1
then0:
  %19 = load { i64, i8* }*, { i64, i8* }** %3
  %20 = load i64, i64* %4
  %21 = call i64 @nyx_array_get({ i64, i8* }* %19, i64 %20)
  %22 = inttoptr i64 %21 to %Token*
  %23 = load %Token, %Token* %22
  %24 = alloca %Token
  store %Token %23, %Token* %24
  %25 = load %Token, %Token* %24
  %26 = call %nyx_string* @get_token_type(%Token %25)
  %27 = alloca %nyx_string*
  store %nyx_string* %26, %nyx_string** %27
  %28 = load %nyx_string*, %nyx_string** %27
  %29 = load %nyx_string*, %nyx_string** %14
  %30 = call i8* @nyx_string_to_cstr(%nyx_string* %28)
  %31 = call i8* @nyx_string_to_cstr(%nyx_string* %29)
  %32 = call i32 @strcmp(i8* %30, i8* %31)
  %33 = icmp eq i32 %32, 0
  ret i1 %33
else1:
  br label %merge2
merge2:
  ret i1 0
}

define internal %Token @advance(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = call %Token @peek(%SharedEnv_parse* %env.param)
  %15 = alloca %Token
  store %Token %14, %Token* %15
  %16 = load i64, i64* %4
  %17 = add i64 %16, 1
  store i64 %17, i64* %4
  %18 = load %Token, %Token* %15
  ret %Token %18
}

define internal i1 @check_at(%SharedEnv_parse* %env.param, i64 %offset.param, %nyx_string* %type.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = alloca i64
  store i64 %offset.param, i64* %14
  %15 = alloca %nyx_string*
  store %nyx_string* %type.param, %nyx_string** %15
  %16 = load i64, i64* %4
  %17 = load i64, i64* %14
  %18 = add i64 %16, %17
  %19 = alloca i64
  store i64 %18, i64* %19
  %20 = load i64, i64* %19
  %21 = load { i64, i8* }*, { i64, i8* }** %3
  %22 = call i64 @nyx_array_length({ i64, i8* }* %21)
  %23 = icmp slt i64 %20, %22
  br i1 %23, label %then0, label %else1
then0:
  %24 = load { i64, i8* }*, { i64, i8* }** %3
  %25 = load i64, i64* %19
  %26 = call i64 @nyx_array_get({ i64, i8* }* %24, i64 %25)
  %27 = inttoptr i64 %26 to %Token*
  %28 = load %Token, %Token* %27
  %29 = alloca %Token
  store %Token %28, %Token* %29
  %30 = load %Token, %Token* %29
  %31 = call %nyx_string* @get_token_type(%Token %30)
  %32 = alloca %nyx_string*
  store %nyx_string* %31, %nyx_string** %32
  %33 = load %nyx_string*, %nyx_string** %32
  %34 = load %nyx_string*, %nyx_string** %15
  %35 = call i8* @nyx_string_to_cstr(%nyx_string* %33)
  %36 = call i8* @nyx_string_to_cstr(%nyx_string* %34)
  %37 = call i32 @strcmp(i8* %35, i8* %36)
  %38 = icmp eq i32 %37, 0
  ret i1 %38
else1:
  br label %merge2
merge2:
  ret i1 0
}

define internal i64 @show_parse_error(%SharedEnv_parse* %env.param, i64 %ln.param, i64 %cl.param, %nyx_string* %tok_val.param, %nyx_string* %msg.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = alloca i64
  store i64 %ln.param, i64* %14
  %15 = alloca i64
  store i64 %cl.param, i64* %15
  %16 = alloca %nyx_string*
  store %nyx_string* %tok_val.param, %nyx_string** %16
  %17 = alloca %nyx_string*
  store %nyx_string* %msg.param, %nyx_string** %17
  %18 = getelementptr [8 x i8], [8 x i8]* @.str12, i32 0, i32 0
  %19 = call %nyx_string* @nyx_string_from_cstr(i8* %18)
  %20 = load %nyx_string*, %nyx_string** %17
  %21 = call %nyx_string* @nyx_string_concat(%nyx_string* %19, %nyx_string* %20)
  %22 = call i8* @nyx_string_to_cstr(%nyx_string* %21)
  call void @nyx_print_string(i8* %22)
  %23 = getelementptr [14 x i8], [14 x i8]* @.str13, i32 0, i32 0
  %24 = call %nyx_string* @nyx_string_from_cstr(i8* %23)
  %25 = load i64, i64* %14
  %26 = call %nyx_string* @nyx_string_from_int(i64 %25)
  %27 = call %nyx_string* @nyx_string_concat(%nyx_string* %24, %nyx_string* %26)
  %28 = getelementptr [2 x i8], [2 x i8]* @.str14, i32 0, i32 0
  %29 = call %nyx_string* @nyx_string_from_cstr(i8* %28)
  %30 = call %nyx_string* @nyx_string_concat(%nyx_string* %27, %nyx_string* %29)
  %31 = load i64, i64* %15
  %32 = call %nyx_string* @nyx_string_from_int(i64 %31)
  %33 = call %nyx_string* @nyx_string_concat(%nyx_string* %30, %nyx_string* %32)
  %34 = call i8* @nyx_string_to_cstr(%nyx_string* %33)
  call void @nyx_print_string(i8* %34)
  %35 = load i64, i64* %14
  %36 = icmp sgt i64 %35, 0
  %37 = load i64, i64* %14
  %38 = load { i64, i8* }*, { i64, i8* }** %6
  %39 = call i64 @nyx_array_length({ i64, i8* }* %38)
  %40 = icmp sle i64 %37, %39
  %41 = and i1 %36, %40
  br i1 %41, label %then0, label %else1
then0:
  %42 = load { i64, i8* }*, { i64, i8* }** %6
  %43 = load i64, i64* %14
  %44 = sub i64 %43, 1
  %45 = call i64 @nyx_array_get({ i64, i8* }* %42, i64 %44)
  %46 = inttoptr i64 %45 to %nyx_string*
  %47 = alloca %nyx_string*
  store %nyx_string* %46, %nyx_string** %47
  %48 = load i64, i64* %14
  %49 = call %nyx_string* @nyx_string_from_int(i64 %48)
  %50 = alloca %nyx_string*
  store %nyx_string* %49, %nyx_string** %50
  %51 = load %nyx_string*, %nyx_string** %50
  %52 = getelementptr [4 x i8], [4 x i8]* @.str15, i32 0, i32 0
  %53 = call %nyx_string* @nyx_string_from_cstr(i8* %52)
  %54 = call %nyx_string* @nyx_string_concat(%nyx_string* %51, %nyx_string* %53)
  %55 = load %nyx_string*, %nyx_string** %47
  %56 = call %nyx_string* @nyx_string_concat(%nyx_string* %54, %nyx_string* %55)
  %57 = call i8* @nyx_string_to_cstr(%nyx_string* %56)
  call void @nyx_print_string(i8* %57)
  %58 = getelementptr [3 x i8], [3 x i8]* @.str16, i32 0, i32 0
  %59 = call %nyx_string* @nyx_string_from_cstr(i8* %58)
  %60 = alloca %nyx_string*
  store %nyx_string* %59, %nyx_string** %60
  %61 = alloca i64
  store i64 0, i64* %61
  br label %while_cond3
while_cond3:
  %62 = load i64, i64* %61
  %63 = load i64, i64* %15
  %64 = sub i64 %63, 1
  %65 = icmp slt i64 %62, %64
  br i1 %65, label %while_body4, label %while_end5
while_body4:
  %66 = load %nyx_string*, %nyx_string** %60
  %67 = getelementptr [2 x i8], [2 x i8]* @.str17, i32 0, i32 0
  %68 = call %nyx_string* @nyx_string_from_cstr(i8* %67)
  %69 = call %nyx_string* @nyx_string_concat(%nyx_string* %66, %nyx_string* %68)
  store %nyx_string* %69, %nyx_string** %60
  %70 = load i64, i64* %61
  %71 = add i64 %70, 1
  store i64 %71, i64* %61
  br label %while_cond3
while_end5:
  %72 = load %nyx_string*, %nyx_string** %16
  %73 = call i64 @nyx_string_length_utf8(%nyx_string* %72)
  %74 = alloca i64
  store i64 %73, i64* %74
  %75 = load i64, i64* %74
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %then6, label %else7
then6:
  %77 = load %nyx_string*, %nyx_string** %60
  %78 = getelementptr [2 x i8], [2 x i8]* @.str18, i32 0, i32 0
  %79 = call %nyx_string* @nyx_string_from_cstr(i8* %78)
  %80 = call %nyx_string* @nyx_string_concat(%nyx_string* %77, %nyx_string* %79)
  store %nyx_string* %80, %nyx_string** %60
  br label %merge8
else7:
  %81 = alloca i64
  store i64 0, i64* %81
  br label %while_cond9
while_cond9:
  %82 = load i64, i64* %81
  %83 = load i64, i64* %74
  %84 = icmp slt i64 %82, %83
  br i1 %84, label %while_body10, label %while_end11
while_body10:
  %85 = load %nyx_string*, %nyx_string** %60
  %86 = getelementptr [2 x i8], [2 x i8]* @.str19, i32 0, i32 0
  %87 = call %nyx_string* @nyx_string_from_cstr(i8* %86)
  %88 = call %nyx_string* @nyx_string_concat(%nyx_string* %85, %nyx_string* %87)
  store %nyx_string* %88, %nyx_string** %60
  %89 = load i64, i64* %81
  %90 = add i64 %89, 1
  store i64 %90, i64* %81
  br label %while_cond9
while_end11:
  br label %merge8
merge8:
  %91 = load %nyx_string*, %nyx_string** %50
  %92 = call i64 @nyx_string_length_utf8(%nyx_string* %91)
  %93 = add i64 %92, 3
  %94 = alloca i64
  store i64 %93, i64* %94
  %95 = getelementptr [1 x i8], [1 x i8]* @.str20, i32 0, i32 0
  %96 = call %nyx_string* @nyx_string_from_cstr(i8* %95)
  %97 = alloca %nyx_string*
  store %nyx_string* %96, %nyx_string** %97
  %98 = alloca i64
  store i64 0, i64* %98
  br label %while_cond12
while_cond12:
  %99 = load i64, i64* %98
  %100 = load i64, i64* %94
  %101 = icmp slt i64 %99, %100
  br i1 %101, label %while_body13, label %while_end14
while_body13:
  %102 = load %nyx_string*, %nyx_string** %97
  %103 = getelementptr [2 x i8], [2 x i8]* @.str21, i32 0, i32 0
  %104 = call %nyx_string* @nyx_string_from_cstr(i8* %103)
  %105 = call %nyx_string* @nyx_string_concat(%nyx_string* %102, %nyx_string* %104)
  store %nyx_string* %105, %nyx_string** %97
  %106 = load i64, i64* %98
  %107 = add i64 %106, 1
  store i64 %107, i64* %98
  br label %while_cond12
while_end14:
  %108 = load %nyx_string*, %nyx_string** %97
  %109 = getelementptr [3 x i8], [3 x i8]* @.str22, i32 0, i32 0
  %110 = call %nyx_string* @nyx_string_from_cstr(i8* %109)
  %111 = call %nyx_string* @nyx_string_concat(%nyx_string* %108, %nyx_string* %110)
  %112 = load %nyx_string*, %nyx_string** %60
  %113 = call %nyx_string* @nyx_string_concat(%nyx_string* %111, %nyx_string* %112)
  %114 = call i8* @nyx_string_to_cstr(%nyx_string* %113)
  call void @nyx_print_string(i8* %114)
  br label %merge2
else1:
  br label %merge2
merge2:
  ret i64 0
}

define internal %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %type.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = alloca %nyx_string*
  store %nyx_string* %type.param, %nyx_string** %14
  %15 = call %Token @peek(%SharedEnv_parse* %env.param)
  %16 = alloca %Token
  store %Token %15, %Token* %16
  %17 = load %Token, %Token* %16
  %18 = call %nyx_string* @get_token_type(%Token %17)
  %19 = load %nyx_string*, %nyx_string** %14
  %20 = call i8* @nyx_string_to_cstr(%nyx_string* %18)
  %21 = call i8* @nyx_string_to_cstr(%nyx_string* %19)
  %22 = call i32 @strcmp(i8* %20, i8* %21)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %then0, label %else1
then0:
  %24 = call %Token @advance(%SharedEnv_parse* %env.param)
  ret %Token %24
else1:
  br label %merge2
merge2:
  %25 = load %Token, %Token* %16
  %26 = call i64 @get_token_line(%Token %25)
  %27 = alloca i64
  store i64 %26, i64* %27
  %28 = load %Token, %Token* %16
  %29 = call i64 @get_token_column(%Token %28)
  %30 = alloca i64
  store i64 %29, i64* %30
  %31 = load %Token, %Token* %16
  %32 = call %nyx_string* @get_token_value(%Token %31)
  %33 = alloca %nyx_string*
  store %nyx_string* %32, %nyx_string** %33
  %34 = load %Token, %Token* %16
  %35 = call %nyx_string* @get_token_type(%Token %34)
  %36 = alloca %nyx_string*
  store %nyx_string* %35, %nyx_string** %36
  %37 = load i64, i64* %27
  %38 = load i64, i64* %30
  %39 = load %nyx_string*, %nyx_string** %33
  %40 = getelementptr [14 x i8], [14 x i8]* @.str23, i32 0, i32 0
  %41 = call %nyx_string* @nyx_string_from_cstr(i8* %40)
  %42 = load %nyx_string*, %nyx_string** %14
  %43 = call %nyx_string* @nyx_string_concat(%nyx_string* %41, %nyx_string* %42)
  %44 = getelementptr [16 x i8], [16 x i8]* @.str24, i32 0, i32 0
  %45 = call %nyx_string* @nyx_string_from_cstr(i8* %44)
  %46 = call %nyx_string* @nyx_string_concat(%nyx_string* %43, %nyx_string* %45)
  %47 = load %nyx_string*, %nyx_string** %33
  %48 = call %nyx_string* @nyx_string_concat(%nyx_string* %46, %nyx_string* %47)
  %49 = getelementptr [4 x i8], [4 x i8]* @.str25, i32 0, i32 0
  %50 = call %nyx_string* @nyx_string_from_cstr(i8* %49)
  %51 = call %nyx_string* @nyx_string_concat(%nyx_string* %48, %nyx_string* %50)
  %52 = load %nyx_string*, %nyx_string** %36
  %53 = call %nyx_string* @nyx_string_concat(%nyx_string* %51, %nyx_string* %52)
  %54 = getelementptr [2 x i8], [2 x i8]* @.str26, i32 0, i32 0
  %55 = call %nyx_string* @nyx_string_from_cstr(i8* %54)
  %56 = call %nyx_string* @nyx_string_concat(%nyx_string* %53, %nyx_string* %55)
  %57 = call i64 @show_parse_error(%SharedEnv_parse* %env.param, i64 %37, i64 %38, %nyx_string* %39, %nyx_string* %56)
  %58 = load %Token, %Token* %16
  ret %Token %58
}

define internal i1 @is_on_new_line(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = load i64, i64* %4
  %15 = icmp slt i64 %14, 1
  br i1 %15, label %then0, label %else1
then0:
  ret i1 0
else1:
  br label %merge2
merge2:
  %16 = load { i64, i8* }*, { i64, i8* }** %3
  %17 = load i64, i64* %4
  %18 = sub i64 %17, 1
  %19 = call i64 @nyx_array_get({ i64, i8* }* %16, i64 %18)
  %20 = inttoptr i64 %19 to %Token*
  %21 = load %Token, %Token* %20
  %22 = alloca %Token
  store %Token %21, %Token* %22
  %23 = load { i64, i8* }*, { i64, i8* }** %3
  %24 = load i64, i64* %4
  %25 = call i64 @nyx_array_get({ i64, i8* }* %23, i64 %24)
  %26 = inttoptr i64 %25 to %Token*
  %27 = load %Token, %Token* %26
  %28 = alloca %Token
  store %Token %27, %Token* %28
  %29 = load %Token, %Token* %28
  %30 = call i64 @get_token_line(%Token %29)
  %31 = load %Token, %Token* %22
  %32 = call i64 @get_token_line(%Token %31)
  %33 = icmp sgt i64 %30, %32
  ret i1 %33
}

define internal { i64, i8* }* @parse_expression(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = call { i64, i8* }* @parse_logical_or(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %14
}

define internal { i64, i8* }* @parse_logical_or(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = call { i64, i8* }* @parse_logical_and(%SharedEnv_parse* %env.param)
  %15 = alloca { i64, i8* }*
  store { i64, i8* }* %14, { i64, i8* }** %15
  %16 = alloca i1
  store i1 0, i1* %16
  br label %while_cond0
while_cond0:
  %17 = load i1, i1* %16
  %18 = xor i1 %17, true
  br i1 %18, label %while_body1, label %while_end2
while_body1:
  %19 = getelementptr [6 x i8], [6 x i8]* @.str27, i32 0, i32 0
  %20 = call %nyx_string* @nyx_string_from_cstr(i8* %19)
  %21 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %20)
  %22 = getelementptr [3 x i8], [3 x i8]* @.str28, i32 0, i32 0
  %23 = call %nyx_string* @nyx_string_from_cstr(i8* %22)
  %24 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %23)
  %25 = or i1 %21, %24
  br i1 %25, label %then3, label %else4
then3:
  %26 = call %Token @advance(%SharedEnv_parse* %env.param)
  %27 = alloca %Token
  store %Token %26, %Token* %27
  %28 = call { i64, i8* }* @parse_logical_and(%SharedEnv_parse* %env.param)
  %29 = alloca { i64, i8* }*
  store { i64, i8* }* %28, { i64, i8* }** %29
  %30 = getelementptr [6 x i8], [6 x i8]* @.str29, i32 0, i32 0
  %31 = call %nyx_string* @nyx_string_from_cstr(i8* %30)
  %32 = call { i64, i8* }* @nyx_array_new_ptr()
  %33 = load %Token, %Token* %27
  %34 = call %nyx_string* @get_token_type(%Token %33)
  %35 = ptrtoint %nyx_string* %34 to i64
  call void @nyx_array_push({ i64, i8* }* %32, i64 %35)
  %36 = load { i64, i8* }*, { i64, i8* }** %15
  %37 = bitcast { i64, i8* }* %36 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %32, i8* %37)
  %38 = load { i64, i8* }*, { i64, i8* }** %29
  %39 = bitcast { i64, i8* }* %38 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %32, i8* %39)
  %40 = call { i64, i8* }* @make_astnode(%nyx_string* %31, { i64, i8* }* %32)
  store { i64, i8* }* %40, { i64, i8* }** %15
  br label %merge5
else4:
  store i1 1, i1* %16
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %41 = load { i64, i8* }*, { i64, i8* }** %15
  ret { i64, i8* }* %41
}

define internal { i64, i8* }* @parse_logical_and(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = call { i64, i8* }* @parse_bitwise_or(%SharedEnv_parse* %env.param)
  %15 = alloca { i64, i8* }*
  store { i64, i8* }* %14, { i64, i8* }** %15
  %16 = alloca i1
  store i1 0, i1* %16
  br label %while_cond0
while_cond0:
  %17 = load i1, i1* %16
  %18 = xor i1 %17, true
  br i1 %18, label %while_body1, label %while_end2
while_body1:
  %19 = getelementptr [8 x i8], [8 x i8]* @.str30, i32 0, i32 0
  %20 = call %nyx_string* @nyx_string_from_cstr(i8* %19)
  %21 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %20)
  %22 = getelementptr [4 x i8], [4 x i8]* @.str31, i32 0, i32 0
  %23 = call %nyx_string* @nyx_string_from_cstr(i8* %22)
  %24 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %23)
  %25 = or i1 %21, %24
  br i1 %25, label %then3, label %else4
then3:
  %26 = call %Token @advance(%SharedEnv_parse* %env.param)
  %27 = alloca %Token
  store %Token %26, %Token* %27
  %28 = call { i64, i8* }* @parse_bitwise_or(%SharedEnv_parse* %env.param)
  %29 = alloca { i64, i8* }*
  store { i64, i8* }* %28, { i64, i8* }** %29
  %30 = getelementptr [6 x i8], [6 x i8]* @.str32, i32 0, i32 0
  %31 = call %nyx_string* @nyx_string_from_cstr(i8* %30)
  %32 = call { i64, i8* }* @nyx_array_new_ptr()
  %33 = load %Token, %Token* %27
  %34 = call %nyx_string* @get_token_type(%Token %33)
  %35 = ptrtoint %nyx_string* %34 to i64
  call void @nyx_array_push({ i64, i8* }* %32, i64 %35)
  %36 = load { i64, i8* }*, { i64, i8* }** %15
  %37 = bitcast { i64, i8* }* %36 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %32, i8* %37)
  %38 = load { i64, i8* }*, { i64, i8* }** %29
  %39 = bitcast { i64, i8* }* %38 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %32, i8* %39)
  %40 = call { i64, i8* }* @make_astnode(%nyx_string* %31, { i64, i8* }* %32)
  store { i64, i8* }* %40, { i64, i8* }** %15
  br label %merge5
else4:
  store i1 1, i1* %16
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %41 = load { i64, i8* }*, { i64, i8* }** %15
  ret { i64, i8* }* %41
}

define internal { i64, i8* }* @parse_bitwise_or(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = call { i64, i8* }* @parse_bitwise_xor(%SharedEnv_parse* %env.param)
  %15 = alloca { i64, i8* }*
  store { i64, i8* }* %14, { i64, i8* }** %15
  %16 = alloca i1
  store i1 0, i1* %16
  br label %while_cond0
while_cond0:
  %17 = load i1, i1* %16
  %18 = xor i1 %17, true
  br i1 %18, label %while_body1, label %while_end2
while_body1:
  %19 = getelementptr [5 x i8], [5 x i8]* @.str33, i32 0, i32 0
  %20 = call %nyx_string* @nyx_string_from_cstr(i8* %19)
  %21 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %20)
  br i1 %21, label %then3, label %else4
then3:
  %22 = call %Token @advance(%SharedEnv_parse* %env.param)
  %23 = alloca %Token
  store %Token %22, %Token* %23
  %24 = call { i64, i8* }* @parse_bitwise_xor(%SharedEnv_parse* %env.param)
  %25 = alloca { i64, i8* }*
  store { i64, i8* }* %24, { i64, i8* }** %25
  %26 = getelementptr [6 x i8], [6 x i8]* @.str34, i32 0, i32 0
  %27 = call %nyx_string* @nyx_string_from_cstr(i8* %26)
  %28 = call { i64, i8* }* @nyx_array_new_ptr()
  %29 = load %Token, %Token* %23
  %30 = call %nyx_string* @get_token_type(%Token %29)
  %31 = ptrtoint %nyx_string* %30 to i64
  call void @nyx_array_push({ i64, i8* }* %28, i64 %31)
  %32 = load { i64, i8* }*, { i64, i8* }** %15
  %33 = bitcast { i64, i8* }* %32 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %28, i8* %33)
  %34 = load { i64, i8* }*, { i64, i8* }** %25
  %35 = bitcast { i64, i8* }* %34 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %28, i8* %35)
  %36 = call { i64, i8* }* @make_astnode(%nyx_string* %27, { i64, i8* }* %28)
  store { i64, i8* }* %36, { i64, i8* }** %15
  br label %merge5
else4:
  store i1 1, i1* %16
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %37 = load { i64, i8* }*, { i64, i8* }** %15
  ret { i64, i8* }* %37
}

define internal { i64, i8* }* @parse_bitwise_xor(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = call { i64, i8* }* @parse_bitwise_and(%SharedEnv_parse* %env.param)
  %15 = alloca { i64, i8* }*
  store { i64, i8* }* %14, { i64, i8* }** %15
  %16 = alloca i1
  store i1 0, i1* %16
  br label %while_cond0
while_cond0:
  %17 = load i1, i1* %16
  %18 = xor i1 %17, true
  br i1 %18, label %while_body1, label %while_end2
while_body1:
  %19 = getelementptr [6 x i8], [6 x i8]* @.str35, i32 0, i32 0
  %20 = call %nyx_string* @nyx_string_from_cstr(i8* %19)
  %21 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %20)
  br i1 %21, label %then3, label %else4
then3:
  %22 = call %Token @advance(%SharedEnv_parse* %env.param)
  %23 = alloca %Token
  store %Token %22, %Token* %23
  %24 = call { i64, i8* }* @parse_bitwise_and(%SharedEnv_parse* %env.param)
  %25 = alloca { i64, i8* }*
  store { i64, i8* }* %24, { i64, i8* }** %25
  %26 = getelementptr [6 x i8], [6 x i8]* @.str36, i32 0, i32 0
  %27 = call %nyx_string* @nyx_string_from_cstr(i8* %26)
  %28 = call { i64, i8* }* @nyx_array_new_ptr()
  %29 = load %Token, %Token* %23
  %30 = call %nyx_string* @get_token_type(%Token %29)
  %31 = ptrtoint %nyx_string* %30 to i64
  call void @nyx_array_push({ i64, i8* }* %28, i64 %31)
  %32 = load { i64, i8* }*, { i64, i8* }** %15
  %33 = bitcast { i64, i8* }* %32 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %28, i8* %33)
  %34 = load { i64, i8* }*, { i64, i8* }** %25
  %35 = bitcast { i64, i8* }* %34 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %28, i8* %35)
  %36 = call { i64, i8* }* @make_astnode(%nyx_string* %27, { i64, i8* }* %28)
  store { i64, i8* }* %36, { i64, i8* }** %15
  br label %merge5
else4:
  store i1 1, i1* %16
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %37 = load { i64, i8* }*, { i64, i8* }** %15
  ret { i64, i8* }* %37
}

define internal { i64, i8* }* @parse_bitwise_and(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = call { i64, i8* }* @parse_equality(%SharedEnv_parse* %env.param)
  %15 = alloca { i64, i8* }*
  store { i64, i8* }* %14, { i64, i8* }** %15
  %16 = alloca i1
  store i1 0, i1* %16
  br label %while_cond0
while_cond0:
  %17 = load i1, i1* %16
  %18 = xor i1 %17, true
  br i1 %18, label %while_body1, label %while_end2
while_body1:
  %19 = getelementptr [4 x i8], [4 x i8]* @.str37, i32 0, i32 0
  %20 = call %nyx_string* @nyx_string_from_cstr(i8* %19)
  %21 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %20)
  br i1 %21, label %then3, label %else4
then3:
  %22 = call %Token @advance(%SharedEnv_parse* %env.param)
  %23 = alloca %Token
  store %Token %22, %Token* %23
  %24 = call { i64, i8* }* @parse_equality(%SharedEnv_parse* %env.param)
  %25 = alloca { i64, i8* }*
  store { i64, i8* }* %24, { i64, i8* }** %25
  %26 = getelementptr [6 x i8], [6 x i8]* @.str38, i32 0, i32 0
  %27 = call %nyx_string* @nyx_string_from_cstr(i8* %26)
  %28 = call { i64, i8* }* @nyx_array_new_ptr()
  %29 = load %Token, %Token* %23
  %30 = call %nyx_string* @get_token_type(%Token %29)
  %31 = ptrtoint %nyx_string* %30 to i64
  call void @nyx_array_push({ i64, i8* }* %28, i64 %31)
  %32 = load { i64, i8* }*, { i64, i8* }** %15
  %33 = bitcast { i64, i8* }* %32 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %28, i8* %33)
  %34 = load { i64, i8* }*, { i64, i8* }** %25
  %35 = bitcast { i64, i8* }* %34 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %28, i8* %35)
  %36 = call { i64, i8* }* @make_astnode(%nyx_string* %27, { i64, i8* }* %28)
  store { i64, i8* }* %36, { i64, i8* }** %15
  br label %merge5
else4:
  store i1 1, i1* %16
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %37 = load { i64, i8* }*, { i64, i8* }** %15
  ret { i64, i8* }* %37
}

define internal { i64, i8* }* @parse_equality(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = call { i64, i8* }* @parse_comparison(%SharedEnv_parse* %env.param)
  %15 = alloca { i64, i8* }*
  store { i64, i8* }* %14, { i64, i8* }** %15
  %16 = alloca i1
  store i1 0, i1* %16
  br label %while_cond0
while_cond0:
  %17 = load i1, i1* %16
  %18 = xor i1 %17, true
  br i1 %18, label %while_body1, label %while_end2
while_body1:
  %19 = getelementptr [12 x i8], [12 x i8]* @.str39, i32 0, i32 0
  %20 = call %nyx_string* @nyx_string_from_cstr(i8* %19)
  %21 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %20)
  %22 = getelementptr [10 x i8], [10 x i8]* @.str40, i32 0, i32 0
  %23 = call %nyx_string* @nyx_string_from_cstr(i8* %22)
  %24 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %23)
  %25 = or i1 %21, %24
  br i1 %25, label %then3, label %else4
then3:
  %26 = call %Token @advance(%SharedEnv_parse* %env.param)
  %27 = alloca %Token
  store %Token %26, %Token* %27
  %28 = call { i64, i8* }* @parse_comparison(%SharedEnv_parse* %env.param)
  %29 = alloca { i64, i8* }*
  store { i64, i8* }* %28, { i64, i8* }** %29
  %30 = getelementptr [6 x i8], [6 x i8]* @.str41, i32 0, i32 0
  %31 = call %nyx_string* @nyx_string_from_cstr(i8* %30)
  %32 = call { i64, i8* }* @nyx_array_new_ptr()
  %33 = load %Token, %Token* %27
  %34 = call %nyx_string* @get_token_type(%Token %33)
  %35 = ptrtoint %nyx_string* %34 to i64
  call void @nyx_array_push({ i64, i8* }* %32, i64 %35)
  %36 = load { i64, i8* }*, { i64, i8* }** %15
  %37 = bitcast { i64, i8* }* %36 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %32, i8* %37)
  %38 = load { i64, i8* }*, { i64, i8* }** %29
  %39 = bitcast { i64, i8* }* %38 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %32, i8* %39)
  %40 = call { i64, i8* }* @make_astnode(%nyx_string* %31, { i64, i8* }* %32)
  store { i64, i8* }* %40, { i64, i8* }** %15
  br label %merge5
else4:
  store i1 1, i1* %16
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %41 = load { i64, i8* }*, { i64, i8* }** %15
  ret { i64, i8* }* %41
}

define internal { i64, i8* }* @parse_comparison(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = call { i64, i8* }* @parse_range(%SharedEnv_parse* %env.param)
  %15 = alloca { i64, i8* }*
  store { i64, i8* }* %14, { i64, i8* }** %15
  %16 = alloca i1
  store i1 0, i1* %16
  br label %while_cond0
while_cond0:
  %17 = load i1, i1* %16
  %18 = xor i1 %17, true
  br i1 %18, label %while_body1, label %while_end2
while_body1:
  %19 = getelementptr [5 x i8], [5 x i8]* @.str42, i32 0, i32 0
  %20 = call %nyx_string* @nyx_string_from_cstr(i8* %19)
  %21 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %20)
  %22 = getelementptr [8 x i8], [8 x i8]* @.str43, i32 0, i32 0
  %23 = call %nyx_string* @nyx_string_from_cstr(i8* %22)
  %24 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %23)
  %25 = or i1 %21, %24
  %26 = getelementptr [11 x i8], [11 x i8]* @.str44, i32 0, i32 0
  %27 = call %nyx_string* @nyx_string_from_cstr(i8* %26)
  %28 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %27)
  %29 = or i1 %25, %28
  %30 = getelementptr [14 x i8], [14 x i8]* @.str45, i32 0, i32 0
  %31 = call %nyx_string* @nyx_string_from_cstr(i8* %30)
  %32 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %31)
  %33 = or i1 %29, %32
  br i1 %33, label %then3, label %else4
then3:
  %34 = call %Token @advance(%SharedEnv_parse* %env.param)
  %35 = alloca %Token
  store %Token %34, %Token* %35
  %36 = call { i64, i8* }* @parse_range(%SharedEnv_parse* %env.param)
  %37 = alloca { i64, i8* }*
  store { i64, i8* }* %36, { i64, i8* }** %37
  %38 = getelementptr [6 x i8], [6 x i8]* @.str46, i32 0, i32 0
  %39 = call %nyx_string* @nyx_string_from_cstr(i8* %38)
  %40 = call { i64, i8* }* @nyx_array_new_ptr()
  %41 = load %Token, %Token* %35
  %42 = call %nyx_string* @get_token_type(%Token %41)
  %43 = ptrtoint %nyx_string* %42 to i64
  call void @nyx_array_push({ i64, i8* }* %40, i64 %43)
  %44 = load { i64, i8* }*, { i64, i8* }** %15
  %45 = bitcast { i64, i8* }* %44 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %40, i8* %45)
  %46 = load { i64, i8* }*, { i64, i8* }** %37
  %47 = bitcast { i64, i8* }* %46 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %40, i8* %47)
  %48 = call { i64, i8* }* @make_astnode(%nyx_string* %39, { i64, i8* }* %40)
  store { i64, i8* }* %48, { i64, i8* }** %15
  br label %merge5
else4:
  store i1 1, i1* %16
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %49 = load { i64, i8* }*, { i64, i8* }** %15
  ret { i64, i8* }* %49
}

define internal { i64, i8* }* @parse_range(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = call { i64, i8* }* @parse_addition(%SharedEnv_parse* %env.param)
  %15 = alloca { i64, i8* }*
  store { i64, i8* }* %14, { i64, i8* }** %15
  %16 = getelementptr [16 x i8], [16 x i8]* @.str47, i32 0, i32 0
  %17 = call %nyx_string* @nyx_string_from_cstr(i8* %16)
  %18 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %17)
  br i1 %18, label %then0, label %else1
then0:
  %19 = call %Token @advance(%SharedEnv_parse* %env.param)
  %20 = call { i64, i8* }* @parse_addition(%SharedEnv_parse* %env.param)
  %21 = alloca { i64, i8* }*
  store { i64, i8* }* %20, { i64, i8* }** %21
  %22 = getelementptr [6 x i8], [6 x i8]* @.str48, i32 0, i32 0
  %23 = call %nyx_string* @nyx_string_from_cstr(i8* %22)
  %24 = call { i64, i8* }* @nyx_array_new_ptr()
  %25 = load { i64, i8* }*, { i64, i8* }** %15
  %26 = bitcast { i64, i8* }* %25 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %24, i8* %26)
  %27 = load { i64, i8* }*, { i64, i8* }** %21
  %28 = bitcast { i64, i8* }* %27 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %24, i8* %28)
  %29 = getelementptr [5 x i8], [5 x i8]* @.str49, i32 0, i32 0
  %30 = call %nyx_string* @nyx_string_from_cstr(i8* %29)
  %31 = ptrtoint %nyx_string* %30 to i64
  call void @nyx_array_push({ i64, i8* }* %24, i64 %31)
  %32 = call { i64, i8* }* @make_astnode(%nyx_string* %23, { i64, i8* }* %24)
  ret { i64, i8* }* %32
else1:
  br label %merge2
merge2:
  %33 = getelementptr [6 x i8], [6 x i8]* @.str50, i32 0, i32 0
  %34 = call %nyx_string* @nyx_string_from_cstr(i8* %33)
  %35 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %34)
  br i1 %35, label %then3, label %else4
then3:
  %36 = call %Token @advance(%SharedEnv_parse* %env.param)
  %37 = call { i64, i8* }* @parse_addition(%SharedEnv_parse* %env.param)
  %38 = alloca { i64, i8* }*
  store { i64, i8* }* %37, { i64, i8* }** %38
  %39 = getelementptr [6 x i8], [6 x i8]* @.str51, i32 0, i32 0
  %40 = call %nyx_string* @nyx_string_from_cstr(i8* %39)
  %41 = call { i64, i8* }* @nyx_array_new_ptr()
  %42 = load { i64, i8* }*, { i64, i8* }** %15
  %43 = bitcast { i64, i8* }* %42 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %41, i8* %43)
  %44 = load { i64, i8* }*, { i64, i8* }** %38
  %45 = bitcast { i64, i8* }* %44 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %41, i8* %45)
  %46 = getelementptr [6 x i8], [6 x i8]* @.str52, i32 0, i32 0
  %47 = call %nyx_string* @nyx_string_from_cstr(i8* %46)
  %48 = ptrtoint %nyx_string* %47 to i64
  call void @nyx_array_push({ i64, i8* }* %41, i64 %48)
  %49 = call { i64, i8* }* @make_astnode(%nyx_string* %40, { i64, i8* }* %41)
  ret { i64, i8* }* %49
else4:
  br label %merge5
merge5:
  %50 = load { i64, i8* }*, { i64, i8* }** %15
  ret { i64, i8* }* %50
}

define internal { i64, i8* }* @parse_addition(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = call { i64, i8* }* @parse_shift(%SharedEnv_parse* %env.param)
  %15 = alloca { i64, i8* }*
  store { i64, i8* }* %14, { i64, i8* }** %15
  %16 = alloca i1
  store i1 0, i1* %16
  br label %while_cond0
while_cond0:
  %17 = load i1, i1* %16
  %18 = xor i1 %17, true
  br i1 %18, label %while_body1, label %while_end2
while_body1:
  %19 = getelementptr [5 x i8], [5 x i8]* @.str53, i32 0, i32 0
  %20 = call %nyx_string* @nyx_string_from_cstr(i8* %19)
  %21 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %20)
  %22 = getelementptr [6 x i8], [6 x i8]* @.str54, i32 0, i32 0
  %23 = call %nyx_string* @nyx_string_from_cstr(i8* %22)
  %24 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %23)
  %25 = or i1 %21, %24
  br i1 %25, label %then3, label %else4
then3:
  %26 = call %Token @advance(%SharedEnv_parse* %env.param)
  %27 = alloca %Token
  store %Token %26, %Token* %27
  %28 = call { i64, i8* }* @parse_shift(%SharedEnv_parse* %env.param)
  %29 = alloca { i64, i8* }*
  store { i64, i8* }* %28, { i64, i8* }** %29
  %30 = getelementptr [6 x i8], [6 x i8]* @.str55, i32 0, i32 0
  %31 = call %nyx_string* @nyx_string_from_cstr(i8* %30)
  %32 = call { i64, i8* }* @nyx_array_new_ptr()
  %33 = load %Token, %Token* %27
  %34 = call %nyx_string* @get_token_type(%Token %33)
  %35 = ptrtoint %nyx_string* %34 to i64
  call void @nyx_array_push({ i64, i8* }* %32, i64 %35)
  %36 = load { i64, i8* }*, { i64, i8* }** %15
  %37 = bitcast { i64, i8* }* %36 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %32, i8* %37)
  %38 = load { i64, i8* }*, { i64, i8* }** %29
  %39 = bitcast { i64, i8* }* %38 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %32, i8* %39)
  %40 = call { i64, i8* }* @make_astnode(%nyx_string* %31, { i64, i8* }* %32)
  store { i64, i8* }* %40, { i64, i8* }** %15
  br label %merge5
else4:
  store i1 1, i1* %16
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %41 = load { i64, i8* }*, { i64, i8* }** %15
  ret { i64, i8* }* %41
}

define internal { i64, i8* }* @parse_shift(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = call { i64, i8* }* @parse_multiplication(%SharedEnv_parse* %env.param)
  %15 = alloca { i64, i8* }*
  store { i64, i8* }* %14, { i64, i8* }** %15
  %16 = alloca i1
  store i1 0, i1* %16
  br label %while_cond0
while_cond0:
  %17 = load i1, i1* %16
  %18 = xor i1 %17, true
  br i1 %18, label %while_body1, label %while_end2
while_body1:
  %19 = getelementptr [11 x i8], [11 x i8]* @.str56, i32 0, i32 0
  %20 = call %nyx_string* @nyx_string_from_cstr(i8* %19)
  %21 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %20)
  %22 = getelementptr [12 x i8], [12 x i8]* @.str57, i32 0, i32 0
  %23 = call %nyx_string* @nyx_string_from_cstr(i8* %22)
  %24 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %23)
  %25 = or i1 %21, %24
  br i1 %25, label %then3, label %else4
then3:
  %26 = call %Token @advance(%SharedEnv_parse* %env.param)
  %27 = alloca %Token
  store %Token %26, %Token* %27
  %28 = call { i64, i8* }* @parse_multiplication(%SharedEnv_parse* %env.param)
  %29 = alloca { i64, i8* }*
  store { i64, i8* }* %28, { i64, i8* }** %29
  %30 = getelementptr [6 x i8], [6 x i8]* @.str58, i32 0, i32 0
  %31 = call %nyx_string* @nyx_string_from_cstr(i8* %30)
  %32 = call { i64, i8* }* @nyx_array_new_ptr()
  %33 = load %Token, %Token* %27
  %34 = call %nyx_string* @get_token_type(%Token %33)
  %35 = ptrtoint %nyx_string* %34 to i64
  call void @nyx_array_push({ i64, i8* }* %32, i64 %35)
  %36 = load { i64, i8* }*, { i64, i8* }** %15
  %37 = bitcast { i64, i8* }* %36 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %32, i8* %37)
  %38 = load { i64, i8* }*, { i64, i8* }** %29
  %39 = bitcast { i64, i8* }* %38 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %32, i8* %39)
  %40 = call { i64, i8* }* @make_astnode(%nyx_string* %31, { i64, i8* }* %32)
  store { i64, i8* }* %40, { i64, i8* }** %15
  br label %merge5
else4:
  store i1 1, i1* %16
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %41 = load { i64, i8* }*, { i64, i8* }** %15
  ret { i64, i8* }* %41
}

define internal { i64, i8* }* @parse_multiplication(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = call { i64, i8* }* @parse_power(%SharedEnv_parse* %env.param)
  %15 = alloca { i64, i8* }*
  store { i64, i8* }* %14, { i64, i8* }** %15
  %16 = alloca i1
  store i1 0, i1* %16
  br label %while_cond0
while_cond0:
  %17 = load i1, i1* %16
  %18 = xor i1 %17, true
  br i1 %18, label %while_body1, label %while_end2
while_body1:
  %19 = getelementptr [5 x i8], [5 x i8]* @.str59, i32 0, i32 0
  %20 = call %nyx_string* @nyx_string_from_cstr(i8* %19)
  %21 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %20)
  %22 = call i1 @is_on_new_line(%SharedEnv_parse* %env.param)
  %23 = and i1 %21, %22
  br i1 %23, label %then3, label %else4
then3:
  store i1 1, i1* %16
  br label %merge5
else4:
  %24 = getelementptr [5 x i8], [5 x i8]* @.str60, i32 0, i32 0
  %25 = call %nyx_string* @nyx_string_from_cstr(i8* %24)
  %26 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %25)
  %27 = getelementptr [6 x i8], [6 x i8]* @.str61, i32 0, i32 0
  %28 = call %nyx_string* @nyx_string_from_cstr(i8* %27)
  %29 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %28)
  %30 = or i1 %26, %29
  %31 = getelementptr [8 x i8], [8 x i8]* @.str62, i32 0, i32 0
  %32 = call %nyx_string* @nyx_string_from_cstr(i8* %31)
  %33 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %32)
  %34 = or i1 %30, %33
  br i1 %34, label %then6, label %else7
then6:
  %35 = call %Token @advance(%SharedEnv_parse* %env.param)
  %36 = alloca %Token
  store %Token %35, %Token* %36
  %37 = call { i64, i8* }* @parse_power(%SharedEnv_parse* %env.param)
  %38 = alloca { i64, i8* }*
  store { i64, i8* }* %37, { i64, i8* }** %38
  %39 = getelementptr [6 x i8], [6 x i8]* @.str63, i32 0, i32 0
  %40 = call %nyx_string* @nyx_string_from_cstr(i8* %39)
  %41 = call { i64, i8* }* @nyx_array_new_ptr()
  %42 = load %Token, %Token* %36
  %43 = call %nyx_string* @get_token_type(%Token %42)
  %44 = ptrtoint %nyx_string* %43 to i64
  call void @nyx_array_push({ i64, i8* }* %41, i64 %44)
  %45 = load { i64, i8* }*, { i64, i8* }** %15
  %46 = bitcast { i64, i8* }* %45 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %41, i8* %46)
  %47 = load { i64, i8* }*, { i64, i8* }** %38
  %48 = bitcast { i64, i8* }* %47 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %41, i8* %48)
  %49 = call { i64, i8* }* @make_astnode(%nyx_string* %40, { i64, i8* }* %41)
  store { i64, i8* }* %49, { i64, i8* }** %15
  br label %merge8
else7:
  store i1 1, i1* %16
  br label %merge8
merge8:
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %50 = load { i64, i8* }*, { i64, i8* }** %15
  ret { i64, i8* }* %50
}

define internal { i64, i8* }* @parse_power(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = call { i64, i8* }* @parse_unary(%SharedEnv_parse* %env.param)
  %15 = alloca { i64, i8* }*
  store { i64, i8* }* %14, { i64, i8* }** %15
  %16 = getelementptr [6 x i8], [6 x i8]* @.str64, i32 0, i32 0
  %17 = call %nyx_string* @nyx_string_from_cstr(i8* %16)
  %18 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %17)
  br i1 %18, label %then0, label %else1
then0:
  %19 = call %Token @advance(%SharedEnv_parse* %env.param)
  %20 = call { i64, i8* }* @parse_power(%SharedEnv_parse* %env.param)
  %21 = alloca { i64, i8* }*
  store { i64, i8* }* %20, { i64, i8* }** %21
  %22 = getelementptr [6 x i8], [6 x i8]* @.str65, i32 0, i32 0
  %23 = call %nyx_string* @nyx_string_from_cstr(i8* %22)
  %24 = call { i64, i8* }* @nyx_array_new_ptr()
  %25 = getelementptr [6 x i8], [6 x i8]* @.str66, i32 0, i32 0
  %26 = call %nyx_string* @nyx_string_from_cstr(i8* %25)
  %27 = ptrtoint %nyx_string* %26 to i64
  call void @nyx_array_push({ i64, i8* }* %24, i64 %27)
  %28 = load { i64, i8* }*, { i64, i8* }** %15
  %29 = bitcast { i64, i8* }* %28 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %24, i8* %29)
  %30 = load { i64, i8* }*, { i64, i8* }** %21
  %31 = bitcast { i64, i8* }* %30 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %24, i8* %31)
  %32 = call { i64, i8* }* @make_astnode(%nyx_string* %23, { i64, i8* }* %24)
  ret { i64, i8* }* %32
else1:
  br label %merge2
merge2:
  %33 = load { i64, i8* }*, { i64, i8* }** %15
  ret { i64, i8* }* %33
}

define internal { i64, i8* }* @parse_unary(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = getelementptr [6 x i8], [6 x i8]* @.str67, i32 0, i32 0
  %15 = call %nyx_string* @nyx_string_from_cstr(i8* %14)
  %16 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %15)
  br i1 %16, label %then0, label %else1
then0:
  %17 = call %Token @advance(%SharedEnv_parse* %env.param)
  %18 = call { i64, i8* }* @parse_unary(%SharedEnv_parse* %env.param)
  %19 = alloca { i64, i8* }*
  store { i64, i8* }* %18, { i64, i8* }** %19
  %20 = getelementptr [11 x i8], [11 x i8]* @.str68, i32 0, i32 0
  %21 = call %nyx_string* @nyx_string_from_cstr(i8* %20)
  %22 = call { i64, i8* }* @nyx_array_new_ptr()
  %23 = load { i64, i8* }*, { i64, i8* }** %19
  %24 = bitcast { i64, i8* }* %23 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %22, i8* %24)
  %25 = call { i64, i8* }* @make_astnode(%nyx_string* %21, { i64, i8* }* %22)
  ret { i64, i8* }* %25
else1:
  br label %merge2
merge2:
  %26 = getelementptr [6 x i8], [6 x i8]* @.str69, i32 0, i32 0
  %27 = call %nyx_string* @nyx_string_from_cstr(i8* %26)
  %28 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %27)
  %29 = getelementptr [4 x i8], [4 x i8]* @.str70, i32 0, i32 0
  %30 = call %nyx_string* @nyx_string_from_cstr(i8* %29)
  %31 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %30)
  %32 = or i1 %28, %31
  %33 = getelementptr [6 x i8], [6 x i8]* @.str71, i32 0, i32 0
  %34 = call %nyx_string* @nyx_string_from_cstr(i8* %33)
  %35 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %34)
  %36 = or i1 %32, %35
  br i1 %36, label %then3, label %else4
then3:
  %37 = call %Token @advance(%SharedEnv_parse* %env.param)
  %38 = alloca %Token
  store %Token %37, %Token* %38
  %39 = call { i64, i8* }* @parse_unary(%SharedEnv_parse* %env.param)
  %40 = alloca { i64, i8* }*
  store { i64, i8* }* %39, { i64, i8* }** %40
  %41 = getelementptr [5 x i8], [5 x i8]* @.str72, i32 0, i32 0
  %42 = call %nyx_string* @nyx_string_from_cstr(i8* %41)
  %43 = call { i64, i8* }* @nyx_array_new_ptr()
  %44 = load %Token, %Token* %38
  %45 = call %nyx_string* @get_token_type(%Token %44)
  %46 = ptrtoint %nyx_string* %45 to i64
  call void @nyx_array_push({ i64, i8* }* %43, i64 %46)
  %47 = load { i64, i8* }*, { i64, i8* }** %40
  %48 = bitcast { i64, i8* }* %47 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %43, i8* %48)
  %49 = call { i64, i8* }* @make_astnode(%nyx_string* %42, { i64, i8* }* %43)
  ret { i64, i8* }* %49
else4:
  br label %merge5
merge5:
  %50 = getelementptr [4 x i8], [4 x i8]* @.str73, i32 0, i32 0
  %51 = call %nyx_string* @nyx_string_from_cstr(i8* %50)
  %52 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %51)
  br i1 %52, label %then6, label %else7
then6:
  %53 = call %Token @advance(%SharedEnv_parse* %env.param)
  %54 = call { i64, i8* }* @parse_unary(%SharedEnv_parse* %env.param)
  %55 = alloca { i64, i8* }*
  store { i64, i8* }* %54, { i64, i8* }** %55
  %56 = getelementptr [8 x i8], [8 x i8]* @.str74, i32 0, i32 0
  %57 = call %nyx_string* @nyx_string_from_cstr(i8* %56)
  %58 = call { i64, i8* }* @nyx_array_new_ptr()
  %59 = load { i64, i8* }*, { i64, i8* }** %55
  %60 = bitcast { i64, i8* }* %59 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %58, i8* %60)
  %61 = call { i64, i8* }* @make_astnode(%nyx_string* %57, { i64, i8* }* %58)
  ret { i64, i8* }* %61
else7:
  br label %merge8
merge8:
  %62 = getelementptr [5 x i8], [5 x i8]* @.str75, i32 0, i32 0
  %63 = call %nyx_string* @nyx_string_from_cstr(i8* %62)
  %64 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %63)
  br i1 %64, label %then9, label %else10
then9:
  %65 = call %Token @advance(%SharedEnv_parse* %env.param)
  %66 = call { i64, i8* }* @parse_unary(%SharedEnv_parse* %env.param)
  %67 = alloca { i64, i8* }*
  store { i64, i8* }* %66, { i64, i8* }** %67
  %68 = getelementptr [6 x i8], [6 x i8]* @.str76, i32 0, i32 0
  %69 = call %nyx_string* @nyx_string_from_cstr(i8* %68)
  %70 = call { i64, i8* }* @nyx_array_new_ptr()
  %71 = load { i64, i8* }*, { i64, i8* }** %67
  %72 = bitcast { i64, i8* }* %71 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %70, i8* %72)
  %73 = call { i64, i8* }* @make_astnode(%nyx_string* %69, { i64, i8* }* %70)
  ret { i64, i8* }* %73
else10:
  br label %merge11
merge11:
  %74 = call { i64, i8* }* @parse_cast(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %74
}

define internal { i64, i8* }* @parse_cast(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = call { i64, i8* }* @parse_postfix(%SharedEnv_parse* %env.param)
  %15 = alloca { i64, i8* }*
  store { i64, i8* }* %14, { i64, i8* }** %15
  %16 = alloca i1
  store i1 0, i1* %16
  br label %while_cond0
while_cond0:
  %17 = load i1, i1* %16
  %18 = xor i1 %17, true
  br i1 %18, label %while_body1, label %while_end2
while_body1:
  %19 = getelementptr [3 x i8], [3 x i8]* @.str77, i32 0, i32 0
  %20 = call %nyx_string* @nyx_string_from_cstr(i8* %19)
  %21 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %20)
  br i1 %21, label %then3, label %else4
then3:
  %22 = call %Token @advance(%SharedEnv_parse* %env.param)
  %23 = call %nyx_string* @parse_type_annotation(%SharedEnv_parse* %env.param)
  %24 = alloca %nyx_string*
  store %nyx_string* %23, %nyx_string** %24
  %25 = getelementptr [5 x i8], [5 x i8]* @.str78, i32 0, i32 0
  %26 = call %nyx_string* @nyx_string_from_cstr(i8* %25)
  %27 = call { i64, i8* }* @nyx_array_new_ptr()
  %28 = load { i64, i8* }*, { i64, i8* }** %15
  %29 = bitcast { i64, i8* }* %28 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %27, i8* %29)
  %30 = load %nyx_string*, %nyx_string** %24
  %31 = ptrtoint %nyx_string* %30 to i64
  call void @nyx_array_push({ i64, i8* }* %27, i64 %31)
  %32 = call { i64, i8* }* @make_astnode(%nyx_string* %26, { i64, i8* }* %27)
  store { i64, i8* }* %32, { i64, i8* }** %15
  br label %merge5
else4:
  store i1 1, i1* %16
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %33 = load { i64, i8* }*, { i64, i8* }** %15
  ret { i64, i8* }* %33
}

define internal i1 @is_generic_call_lookahead(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = load i64, i64* %4
  %15 = add i64 %14, 1
  %16 = alloca i64
  store i64 %15, i64* %16
  %17 = load i64, i64* %16
  %18 = load { i64, i8* }*, { i64, i8* }** %3
  %19 = call i64 @nyx_array_length({ i64, i8* }* %18)
  %20 = icmp sge i64 %17, %19
  br i1 %20, label %then0, label %else1
then0:
  ret i1 0
else1:
  br label %merge2
merge2:
  %21 = load { i64, i8* }*, { i64, i8* }** %3
  %22 = load i64, i64* %16
  %23 = call i64 @nyx_array_get({ i64, i8* }* %21, i64 %22)
  %24 = inttoptr i64 %23 to %Token*
  %25 = load %Token, %Token* %24
  %26 = alloca %Token
  store %Token %25, %Token* %26
  %27 = load %Token, %Token* %26
  %28 = call %nyx_string* @get_token_type(%Token %27)
  %29 = getelementptr [11 x i8], [11 x i8]* @.str79, i32 0, i32 0
  %30 = call %nyx_string* @nyx_string_from_cstr(i8* %29)
  %31 = call i8* @nyx_string_to_cstr(%nyx_string* %28)
  %32 = call i8* @nyx_string_to_cstr(%nyx_string* %30)
  %33 = call i32 @strcmp(i8* %31, i8* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %then3, label %else4
then3:
  ret i1 0
else4:
  br label %merge5
merge5:
  %35 = alloca i64
  store i64 1, i64* %35
  %36 = load i64, i64* %16
  %37 = add i64 %36, 1
  store i64 %37, i64* %16
  br label %while_cond6
while_cond6:
  %38 = load i64, i64* %16
  %39 = load { i64, i8* }*, { i64, i8* }** %3
  %40 = call i64 @nyx_array_length({ i64, i8* }* %39)
  %41 = icmp slt i64 %38, %40
  %42 = load i64, i64* %35
  %43 = icmp sgt i64 %42, 0
  %44 = and i1 %41, %43
  br i1 %44, label %while_body7, label %while_end8
while_body7:
  %45 = load { i64, i8* }*, { i64, i8* }** %3
  %46 = load i64, i64* %16
  %47 = call i64 @nyx_array_get({ i64, i8* }* %45, i64 %46)
  %48 = inttoptr i64 %47 to %Token*
  %49 = load %Token, %Token* %48
  %50 = alloca %Token
  store %Token %49, %Token* %50
  %51 = load %Token, %Token* %50
  %52 = call %nyx_string* @get_token_type(%Token %51)
  %53 = alloca %nyx_string*
  store %nyx_string* %52, %nyx_string** %53
  %54 = load %nyx_string*, %nyx_string** %53
  %55 = getelementptr [5 x i8], [5 x i8]* @.str80, i32 0, i32 0
  %56 = call %nyx_string* @nyx_string_from_cstr(i8* %55)
  %57 = call i8* @nyx_string_to_cstr(%nyx_string* %54)
  %58 = call i8* @nyx_string_to_cstr(%nyx_string* %56)
  %59 = call i32 @strcmp(i8* %57, i8* %58)
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %then9, label %else10
then9:
  %61 = load i64, i64* %35
  %62 = add i64 %61, 1
  store i64 %62, i64* %35
  br label %merge11
else10:
  %63 = load %nyx_string*, %nyx_string** %53
  %64 = getelementptr [8 x i8], [8 x i8]* @.str81, i32 0, i32 0
  %65 = call %nyx_string* @nyx_string_from_cstr(i8* %64)
  %66 = call i8* @nyx_string_to_cstr(%nyx_string* %63)
  %67 = call i8* @nyx_string_to_cstr(%nyx_string* %65)
  %68 = call i32 @strcmp(i8* %66, i8* %67)
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %then12, label %else13
then12:
  %70 = load i64, i64* %35
  %71 = sub i64 %70, 1
  store i64 %71, i64* %35
  br label %merge14
else13:
  %72 = load %nyx_string*, %nyx_string** %53
  %73 = getelementptr [12 x i8], [12 x i8]* @.str82, i32 0, i32 0
  %74 = call %nyx_string* @nyx_string_from_cstr(i8* %73)
  %75 = call i8* @nyx_string_to_cstr(%nyx_string* %72)
  %76 = call i8* @nyx_string_to_cstr(%nyx_string* %74)
  %77 = call i32 @strcmp(i8* %75, i8* %76)
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %then15, label %else16
then15:
  %79 = load i64, i64* %35
  %80 = icmp sge i64 %79, 2
  br i1 %80, label %then18, label %else19
then18:
  %81 = load i64, i64* %35
  %82 = sub i64 %81, 2
  store i64 %82, i64* %35
  br label %merge20
else19:
  ret i1 0
merge20:
  br label %merge17
else16:
  br label %merge17
merge17:
  br label %merge14
merge14:
  br label %merge11
merge11:
  %83 = load i64, i64* %16
  %84 = add i64 %83, 1
  store i64 %84, i64* %16
  br label %while_cond6
while_end8:
  %85 = load i64, i64* %35
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %then21, label %else22
then21:
  ret i1 0
else22:
  br label %merge23
merge23:
  %87 = load i64, i64* %16
  %88 = load { i64, i8* }*, { i64, i8* }** %3
  %89 = call i64 @nyx_array_length({ i64, i8* }* %88)
  %90 = icmp sge i64 %87, %89
  br i1 %90, label %then24, label %else25
then24:
  ret i1 0
else25:
  br label %merge26
merge26:
  %91 = load { i64, i8* }*, { i64, i8* }** %3
  %92 = load i64, i64* %16
  %93 = call i64 @nyx_array_get({ i64, i8* }* %91, i64 %92)
  %94 = inttoptr i64 %93 to %Token*
  %95 = load %Token, %Token* %94
  %96 = alloca %Token
  store %Token %95, %Token* %96
  %97 = load %Token, %Token* %96
  %98 = call %nyx_string* @get_token_type(%Token %97)
  %99 = alloca %nyx_string*
  store %nyx_string* %98, %nyx_string** %99
  %100 = load %nyx_string*, %nyx_string** %99
  %101 = getelementptr [11 x i8], [11 x i8]* @.str83, i32 0, i32 0
  %102 = call %nyx_string* @nyx_string_from_cstr(i8* %101)
  %103 = call i8* @nyx_string_to_cstr(%nyx_string* %100)
  %104 = call i8* @nyx_string_to_cstr(%nyx_string* %102)
  %105 = call i32 @strcmp(i8* %103, i8* %104)
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %then27, label %else28
then27:
  ret i1 1
else28:
  br label %merge29
merge29:
  %107 = load %nyx_string*, %nyx_string** %99
  %108 = getelementptr [11 x i8], [11 x i8]* @.str84, i32 0, i32 0
  %109 = call %nyx_string* @nyx_string_from_cstr(i8* %108)
  %110 = call i8* @nyx_string_to_cstr(%nyx_string* %107)
  %111 = call i8* @nyx_string_to_cstr(%nyx_string* %109)
  %112 = call i32 @strcmp(i8* %110, i8* %111)
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %then30, label %else31
then30:
  ret i1 1
else31:
  br label %merge32
merge32:
  %114 = load %nyx_string*, %nyx_string** %99
  %115 = getelementptr [4 x i8], [4 x i8]* @.str85, i32 0, i32 0
  %116 = call %nyx_string* @nyx_string_from_cstr(i8* %115)
  %117 = call i8* @nyx_string_to_cstr(%nyx_string* %114)
  %118 = call i8* @nyx_string_to_cstr(%nyx_string* %116)
  %119 = call i32 @strcmp(i8* %117, i8* %118)
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %then33, label %else34
then33:
  ret i1 1
else34:
  br label %merge35
merge35:
  ret i1 0
}

define internal { i64, i8* }* @parse_postfix(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = call { i64, i8* }* @parse_primary(%SharedEnv_parse* %env.param)
  %15 = alloca { i64, i8* }*
  store { i64, i8* }* %14, { i64, i8* }** %15
  %16 = alloca i1
  store i1 0, i1* %16
  %17 = alloca i64
  store i64 0, i64* %17
  br label %while_cond0
while_cond0:
  %18 = load i1, i1* %16
  %19 = xor i1 %18, true
  br i1 %19, label %while_body1, label %while_end2
while_body1:
  %20 = load i64, i64* %17
  %21 = add i64 %20, 1
  store i64 %21, i64* %17
  %22 = load i64, i64* %17
  %23 = icmp sgt i64 %22, 50
  br i1 %23, label %then3, label %else4
then3:
  store i1 1, i1* %16
  br label %merge5
else4:
  br label %merge5
merge5:
  %24 = load { i64, i8* }*, { i64, i8* }** %15
  %25 = call i64 @nyx_array_get({ i64, i8* }* %24, i64 0)
  %26 = getelementptr [11 x i8], [11 x i8]* @.str86, i32 0, i32 0
  %27 = call %nyx_string* @nyx_string_from_cstr(i8* %26)
  %28 = inttoptr i64 %25 to %nyx_string*
  %29 = call i8* @nyx_string_to_cstr(%nyx_string* %28)
  %30 = call i8* @nyx_string_to_cstr(%nyx_string* %27)
  %31 = call i32 @strcmp(i8* %29, i8* %30)
  %32 = icmp eq i32 %31, 0
  %33 = getelementptr [5 x i8], [5 x i8]* @.str87, i32 0, i32 0
  %34 = call %nyx_string* @nyx_string_from_cstr(i8* %33)
  %35 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %34)
  %36 = and i1 %32, %35
  br i1 %36, label %then6, label %else7
then6:
  %37 = call i1 @is_generic_call_lookahead(%SharedEnv_parse* %env.param)
  br i1 %37, label %then9, label %else10
then9:
  %38 = call %Token @advance(%SharedEnv_parse* %env.param)
  %39 = call { i64, i8* }* @nyx_array_new_ptr()
  %40 = alloca { i64, i8* }*
  store { i64, i8* }* %39, { i64, i8* }** %40
  %41 = load { i64, i8* }*, { i64, i8* }** %40
  %42 = call %nyx_string* @parse_type_annotation(%SharedEnv_parse* %env.param)
  %43 = ptrtoint %nyx_string* %42 to i64
  call void @nyx_array_push({ i64, i8* }* %41, i64 %43)
  %44 = alloca i1
  store i1 0, i1* %44
  br label %while_cond12
while_cond12:
  %45 = load i1, i1* %44
  %46 = xor i1 %45, true
  br i1 %46, label %while_body13, label %while_end14
while_body13:
  %47 = getelementptr [6 x i8], [6 x i8]* @.str88, i32 0, i32 0
  %48 = call %nyx_string* @nyx_string_from_cstr(i8* %47)
  %49 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %48)
  br i1 %49, label %then15, label %else16
then15:
  %50 = call %Token @advance(%SharedEnv_parse* %env.param)
  %51 = load { i64, i8* }*, { i64, i8* }** %40
  %52 = call %nyx_string* @parse_type_annotation(%SharedEnv_parse* %env.param)
  %53 = ptrtoint %nyx_string* %52 to i64
  call void @nyx_array_push({ i64, i8* }* %51, i64 %53)
  br label %merge17
else16:
  store i1 1, i1* %44
  br label %merge17
merge17:
  br label %while_cond12
while_end14:
  %54 = load i64, i64* %5
  %55 = icmp sgt i64 %54, 0
  br i1 %55, label %then18, label %else19
then18:
  %56 = load i64, i64* %5
  %57 = sub i64 %56, 1
  store i64 %57, i64* %5
  br label %merge20
else19:
  %58 = getelementptr [8 x i8], [8 x i8]* @.str89, i32 0, i32 0
  %59 = call %nyx_string* @nyx_string_from_cstr(i8* %58)
  %60 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %59)
  br i1 %60, label %then21, label %else22
then21:
  %61 = call %Token @advance(%SharedEnv_parse* %env.param)
  br label %merge23
else22:
  %62 = getelementptr [12 x i8], [12 x i8]* @.str90, i32 0, i32 0
  %63 = call %nyx_string* @nyx_string_from_cstr(i8* %62)
  %64 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %63)
  br i1 %64, label %then24, label %else25
then24:
  %65 = call %Token @advance(%SharedEnv_parse* %env.param)
  %66 = load i64, i64* %5
  %67 = add i64 %66, 1
  store i64 %67, i64* %5
  br label %merge26
else25:
  %68 = getelementptr [8 x i8], [8 x i8]* @.str91, i32 0, i32 0
  %69 = call %nyx_string* @nyx_string_from_cstr(i8* %68)
  %70 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %69)
  br label %merge26
merge26:
  br label %merge23
merge23:
  br label %merge20
merge20:
  %71 = getelementptr [13 x i8], [13 x i8]* @.str92, i32 0, i32 0
  %72 = call %nyx_string* @nyx_string_from_cstr(i8* %71)
  %73 = call { i64, i8* }* @nyx_array_new_ptr()
  %74 = load { i64, i8* }*, { i64, i8* }** %15
  %75 = bitcast { i64, i8* }* %74 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %73, i8* %75)
  %76 = load { i64, i8* }*, { i64, i8* }** %40
  %77 = bitcast { i64, i8* }* %76 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %73, i8* %77)
  %78 = call { i64, i8* }* @make_astnode(%nyx_string* %72, { i64, i8* }* %73)
  store { i64, i8* }* %78, { i64, i8* }** %15
  %79 = getelementptr [11 x i8], [11 x i8]* @.str93, i32 0, i32 0
  %80 = call %nyx_string* @nyx_string_from_cstr(i8* %79)
  %81 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %80)
  br i1 %81, label %then27, label %else28
then27:
  %82 = getelementptr [11 x i8], [11 x i8]* @.str94, i32 0, i32 0
  %83 = call %nyx_string* @nyx_string_from_cstr(i8* %82)
  %84 = call i1 @check_at(%SharedEnv_parse* %env.param, i64 1, %nyx_string* %83)
  %85 = getelementptr [6 x i8], [6 x i8]* @.str95, i32 0, i32 0
  %86 = call %nyx_string* @nyx_string_from_cstr(i8* %85)
  %87 = call i1 @check_at(%SharedEnv_parse* %env.param, i64 2, %nyx_string* %86)
  %88 = and i1 %84, %87
  br i1 %88, label %then30, label %else31
then30:
  %89 = load { i64, i8* }*, { i64, i8* }** %15
  %90 = call i64 @nyx_array_get({ i64, i8* }* %89, i64 1)
  %91 = inttoptr i64 %90 to { i64, i8* }*
  %92 = alloca { i64, i8* }*
  store { i64, i8* }* %91, { i64, i8* }** %92
  %93 = load { i64, i8* }*, { i64, i8* }** %92
  %94 = call i64 @nyx_array_get({ i64, i8* }* %93, i64 0)
  %95 = inttoptr i64 %94 to { i64, i8* }*
  %96 = alloca { i64, i8* }*
  store { i64, i8* }* %95, { i64, i8* }** %96
  %97 = load { i64, i8* }*, { i64, i8* }** %96
  %98 = call i64 @nyx_array_get({ i64, i8* }* %97, i64 1)
  %99 = inttoptr i64 %98 to { i64, i8* }*
  %100 = alloca { i64, i8* }*
  store { i64, i8* }* %99, { i64, i8* }** %100
  %101 = load { i64, i8* }*, { i64, i8* }** %100
  %102 = call i64 @nyx_array_get({ i64, i8* }* %101, i64 0)
  %103 = inttoptr i64 %102 to %nyx_string*
  %104 = alloca %nyx_string*
  store %nyx_string* %103, %nyx_string** %104
  %105 = load { i64, i8* }*, { i64, i8* }** %92
  %106 = call i64 @nyx_array_get({ i64, i8* }* %105, i64 1)
  %107 = inttoptr i64 %106 to { i64, i8* }*
  %108 = alloca { i64, i8* }*
  store { i64, i8* }* %107, { i64, i8* }** %108
  %109 = getelementptr [11 x i8], [11 x i8]* @.str96, i32 0, i32 0
  %110 = call %nyx_string* @nyx_string_from_cstr(i8* %109)
  %111 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %110)
  %112 = call { i64, i8* }* @nyx_array_new_ptr()
  %113 = alloca { i64, i8* }*
  store { i64, i8* }* %112, { i64, i8* }** %113
  %114 = alloca i1
  store i1 0, i1* %114
  br label %while_cond33
while_cond33:
  %115 = load i1, i1* %114
  %116 = xor i1 %115, true
  br i1 %116, label %while_body34, label %while_end35
while_body34:
  %117 = getelementptr [12 x i8], [12 x i8]* @.str97, i32 0, i32 0
  %118 = call %nyx_string* @nyx_string_from_cstr(i8* %117)
  %119 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %118)
  br i1 %119, label %then36, label %else37
then36:
  %120 = call %Token @advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %114
  br label %merge38
else37:
  %121 = load { i64, i8* }*, { i64, i8* }** %113
  %122 = call i64 @nyx_array_length({ i64, i8* }* %121)
  %123 = icmp sgt i64 %122, 0
  br i1 %123, label %then39, label %else40
then39:
  %124 = getelementptr [6 x i8], [6 x i8]* @.str98, i32 0, i32 0
  %125 = call %nyx_string* @nyx_string_from_cstr(i8* %124)
  %126 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %125)
  br label %merge41
else40:
  br label %merge41
merge41:
  %127 = getelementptr [11 x i8], [11 x i8]* @.str99, i32 0, i32 0
  %128 = call %nyx_string* @nyx_string_from_cstr(i8* %127)
  %129 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %128)
  %130 = alloca %Token
  store %Token %129, %Token* %130
  %131 = getelementptr [6 x i8], [6 x i8]* @.str100, i32 0, i32 0
  %132 = call %nyx_string* @nyx_string_from_cstr(i8* %131)
  %133 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %132)
  %134 = call { i64, i8* }* @parse_expression(%SharedEnv_parse* %env.param)
  %135 = alloca { i64, i8* }*
  store { i64, i8* }* %134, { i64, i8* }** %135
  %136 = load { i64, i8* }*, { i64, i8* }** %113
  %137 = call { i64, i8* }* @nyx_array_new_ptr()
  %138 = load %Token, %Token* %130
  %139 = call %nyx_string* @get_token_value(%Token %138)
  %140 = ptrtoint %nyx_string* %139 to i64
  call void @nyx_array_push({ i64, i8* }* %137, i64 %140)
  %141 = load { i64, i8* }*, { i64, i8* }** %135
  %142 = bitcast { i64, i8* }* %141 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %137, i8* %142)
  %143 = ptrtoint { i64, i8* }* %137 to i64
  call void @nyx_array_push({ i64, i8* }* %136, i64 %143)
  br label %merge38
merge38:
  br label %while_cond33
while_end35:
  %144 = getelementptr [12 x i8], [12 x i8]* @.str101, i32 0, i32 0
  %145 = call %nyx_string* @nyx_string_from_cstr(i8* %144)
  %146 = call { i64, i8* }* @nyx_array_new_ptr()
  %147 = load %nyx_string*, %nyx_string** %104
  %148 = ptrtoint %nyx_string* %147 to i64
  call void @nyx_array_push({ i64, i8* }* %146, i64 %148)
  %149 = load { i64, i8* }*, { i64, i8* }** %113
  %150 = bitcast { i64, i8* }* %149 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %146, i8* %150)
  %151 = load { i64, i8* }*, { i64, i8* }** %108
  %152 = bitcast { i64, i8* }* %151 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %146, i8* %152)
  %153 = call { i64, i8* }* @make_astnode(%nyx_string* %145, { i64, i8* }* %146)
  store { i64, i8* }* %153, { i64, i8* }** %15
  br label %merge32
else31:
  br label %merge32
merge32:
  br label %merge29
else28:
  br label %merge29
merge29:
  br label %merge11
else10:
  br label %merge11
merge11:
  br label %merge8
else7:
  br label %merge8
merge8:
  %154 = getelementptr [11 x i8], [11 x i8]* @.str102, i32 0, i32 0
  %155 = call %nyx_string* @nyx_string_from_cstr(i8* %154)
  %156 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %155)
  br i1 %156, label %then42, label %else43
then42:
  %157 = call %Token @advance(%SharedEnv_parse* %env.param)
  %158 = call { i64, i8* }* @nyx_array_new_ptr()
  %159 = alloca { i64, i8* }*
  store { i64, i8* }* %158, { i64, i8* }** %159
  %160 = alloca i1
  store i1 0, i1* %160
  br label %while_cond45
while_cond45:
  %161 = load i1, i1* %160
  %162 = xor i1 %161, true
  br i1 %162, label %while_body46, label %while_end47
while_body46:
  %163 = getelementptr [12 x i8], [12 x i8]* @.str103, i32 0, i32 0
  %164 = call %nyx_string* @nyx_string_from_cstr(i8* %163)
  %165 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %164)
  br i1 %165, label %then48, label %else49
then48:
  %166 = call %Token @advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %160
  br label %merge50
else49:
  %167 = load { i64, i8* }*, { i64, i8* }** %159
  %168 = call i64 @nyx_array_length({ i64, i8* }* %167)
  %169 = icmp sgt i64 %168, 0
  br i1 %169, label %then51, label %else52
then51:
  %170 = getelementptr [6 x i8], [6 x i8]* @.str104, i32 0, i32 0
  %171 = call %nyx_string* @nyx_string_from_cstr(i8* %170)
  %172 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %171)
  br label %merge53
else52:
  br label %merge53
merge53:
  %173 = load { i64, i8* }*, { i64, i8* }** %159
  %174 = call { i64, i8* }* @parse_expression(%SharedEnv_parse* %env.param)
  %175 = ptrtoint { i64, i8* }* %174 to i64
  call void @nyx_array_push({ i64, i8* }* %173, i64 %175)
  br label %merge50
merge50:
  br label %while_cond45
while_end47:
  %176 = getelementptr [5 x i8], [5 x i8]* @.str105, i32 0, i32 0
  %177 = call %nyx_string* @nyx_string_from_cstr(i8* %176)
  %178 = call { i64, i8* }* @nyx_array_new_ptr()
  %179 = load { i64, i8* }*, { i64, i8* }** %15
  %180 = bitcast { i64, i8* }* %179 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %178, i8* %180)
  %181 = load { i64, i8* }*, { i64, i8* }** %159
  %182 = bitcast { i64, i8* }* %181 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %178, i8* %182)
  %183 = call { i64, i8* }* @make_astnode(%nyx_string* %177, { i64, i8* }* %178)
  store { i64, i8* }* %183, { i64, i8* }** %15
  br label %merge44
else43:
  %184 = getelementptr [13 x i8], [13 x i8]* @.str106, i32 0, i32 0
  %185 = call %nyx_string* @nyx_string_from_cstr(i8* %184)
  %186 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %185)
  br i1 %186, label %then54, label %else55
then54:
  %187 = call %Token @advance(%SharedEnv_parse* %env.param)
  %188 = call { i64, i8* }* @parse_expression(%SharedEnv_parse* %env.param)
  %189 = alloca { i64, i8* }*
  store { i64, i8* }* %188, { i64, i8* }** %189
  %190 = getelementptr [14 x i8], [14 x i8]* @.str107, i32 0, i32 0
  %191 = call %nyx_string* @nyx_string_from_cstr(i8* %190)
  %192 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %191)
  %193 = getelementptr [6 x i8], [6 x i8]* @.str108, i32 0, i32 0
  %194 = call %nyx_string* @nyx_string_from_cstr(i8* %193)
  %195 = call { i64, i8* }* @nyx_array_new_ptr()
  %196 = load { i64, i8* }*, { i64, i8* }** %15
  %197 = bitcast { i64, i8* }* %196 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %195, i8* %197)
  %198 = load { i64, i8* }*, { i64, i8* }** %189
  %199 = bitcast { i64, i8* }* %198 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %195, i8* %199)
  %200 = call { i64, i8* }* @make_astnode(%nyx_string* %194, { i64, i8* }* %195)
  store { i64, i8* }* %200, { i64, i8* }** %15
  br label %merge56
else55:
  %201 = getelementptr [4 x i8], [4 x i8]* @.str109, i32 0, i32 0
  %202 = call %nyx_string* @nyx_string_from_cstr(i8* %201)
  %203 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %202)
  br i1 %203, label %then57, label %else58
then57:
  %204 = call %Token @advance(%SharedEnv_parse* %env.param)
  %205 = getelementptr [7 x i8], [7 x i8]* @.str110, i32 0, i32 0
  %206 = call %nyx_string* @nyx_string_from_cstr(i8* %205)
  %207 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %206)
  br i1 %207, label %then60, label %else61
then60:
  %208 = call %Token @advance(%SharedEnv_parse* %env.param)
  %209 = alloca %Token
  store %Token %208, %Token* %209
  %210 = load %Token, %Token* %209
  %211 = call %nyx_string* @get_token_value(%Token %210)
  %212 = alloca %nyx_string*
  store %nyx_string* %211, %nyx_string** %212
  %213 = getelementptr [12 x i8], [12 x i8]* @.str111, i32 0, i32 0
  %214 = call %nyx_string* @nyx_string_from_cstr(i8* %213)
  %215 = call { i64, i8* }* @nyx_array_new_ptr()
  %216 = load { i64, i8* }*, { i64, i8* }** %15
  %217 = bitcast { i64, i8* }* %216 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %215, i8* %217)
  %218 = load %nyx_string*, %nyx_string** %212
  %219 = ptrtoint %nyx_string* %218 to i64
  call void @nyx_array_push({ i64, i8* }* %215, i64 %219)
  %220 = call { i64, i8* }* @make_astnode(%nyx_string* %214, { i64, i8* }* %215)
  store { i64, i8* }* %220, { i64, i8* }** %15
  br label %merge62
else61:
  %221 = getelementptr [11 x i8], [11 x i8]* @.str112, i32 0, i32 0
  %222 = call %nyx_string* @nyx_string_from_cstr(i8* %221)
  %223 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %222)
  %224 = alloca %Token
  store %Token %223, %Token* %224
  %225 = load %Token, %Token* %224
  %226 = call %nyx_string* @get_token_value(%Token %225)
  %227 = alloca %nyx_string*
  store %nyx_string* %226, %nyx_string** %227
  %228 = getelementptr [11 x i8], [11 x i8]* @.str113, i32 0, i32 0
  %229 = call %nyx_string* @nyx_string_from_cstr(i8* %228)
  %230 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %229)
  br i1 %230, label %then63, label %else64
then63:
  %231 = call %Token @advance(%SharedEnv_parse* %env.param)
  %232 = call { i64, i8* }* @nyx_array_new_ptr()
  %233 = alloca { i64, i8* }*
  store { i64, i8* }* %232, { i64, i8* }** %233
  %234 = alloca i1
  store i1 0, i1* %234
  br label %while_cond66
while_cond66:
  %235 = load i1, i1* %234
  %236 = xor i1 %235, true
  br i1 %236, label %while_body67, label %while_end68
while_body67:
  %237 = getelementptr [12 x i8], [12 x i8]* @.str114, i32 0, i32 0
  %238 = call %nyx_string* @nyx_string_from_cstr(i8* %237)
  %239 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %238)
  br i1 %239, label %then69, label %else70
then69:
  %240 = call %Token @advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %234
  br label %merge71
else70:
  %241 = load { i64, i8* }*, { i64, i8* }** %233
  %242 = call i64 @nyx_array_length({ i64, i8* }* %241)
  %243 = icmp sgt i64 %242, 0
  br i1 %243, label %then72, label %else73
then72:
  %244 = getelementptr [6 x i8], [6 x i8]* @.str115, i32 0, i32 0
  %245 = call %nyx_string* @nyx_string_from_cstr(i8* %244)
  %246 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %245)
  br label %merge74
else73:
  br label %merge74
merge74:
  %247 = load { i64, i8* }*, { i64, i8* }** %233
  %248 = call { i64, i8* }* @parse_expression(%SharedEnv_parse* %env.param)
  %249 = ptrtoint { i64, i8* }* %248 to i64
  call void @nyx_array_push({ i64, i8* }* %247, i64 %249)
  br label %merge71
merge71:
  br label %while_cond66
while_end68:
  %250 = getelementptr [12 x i8], [12 x i8]* @.str116, i32 0, i32 0
  %251 = call %nyx_string* @nyx_string_from_cstr(i8* %250)
  %252 = call { i64, i8* }* @nyx_array_new_ptr()
  %253 = load { i64, i8* }*, { i64, i8* }** %15
  %254 = bitcast { i64, i8* }* %253 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %252, i8* %254)
  %255 = load %nyx_string*, %nyx_string** %227
  %256 = ptrtoint %nyx_string* %255 to i64
  call void @nyx_array_push({ i64, i8* }* %252, i64 %256)
  %257 = load { i64, i8* }*, { i64, i8* }** %233
  %258 = bitcast { i64, i8* }* %257 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %252, i8* %258)
  %259 = call { i64, i8* }* @make_astnode(%nyx_string* %251, { i64, i8* }* %252)
  store { i64, i8* }* %259, { i64, i8* }** %15
  br label %merge65
else64:
  %260 = getelementptr [13 x i8], [13 x i8]* @.str117, i32 0, i32 0
  %261 = call %nyx_string* @nyx_string_from_cstr(i8* %260)
  %262 = call { i64, i8* }* @nyx_array_new_ptr()
  %263 = load { i64, i8* }*, { i64, i8* }** %15
  %264 = bitcast { i64, i8* }* %263 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %262, i8* %264)
  %265 = load %nyx_string*, %nyx_string** %227
  %266 = ptrtoint %nyx_string* %265 to i64
  call void @nyx_array_push({ i64, i8* }* %262, i64 %266)
  %267 = call { i64, i8* }* @make_astnode(%nyx_string* %261, { i64, i8* }* %262)
  store { i64, i8* }* %267, { i64, i8* }** %15
  br label %merge65
merge65:
  br label %merge62
merge62:
  br label %merge59
else58:
  %268 = getelementptr [9 x i8], [9 x i8]* @.str118, i32 0, i32 0
  %269 = call %nyx_string* @nyx_string_from_cstr(i8* %268)
  %270 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %269)
  br i1 %270, label %then75, label %else76
then75:
  %271 = call %Token @advance(%SharedEnv_parse* %env.param)
  %272 = getelementptr [7 x i8], [7 x i8]* @.str119, i32 0, i32 0
  %273 = call %nyx_string* @nyx_string_from_cstr(i8* %272)
  %274 = call { i64, i8* }* @nyx_array_new_ptr()
  %275 = load { i64, i8* }*, { i64, i8* }** %15
  %276 = bitcast { i64, i8* }* %275 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %274, i8* %276)
  %277 = call { i64, i8* }* @make_astnode(%nyx_string* %273, { i64, i8* }* %274)
  store { i64, i8* }* %277, { i64, i8* }** %15
  br label %merge77
else76:
  store i1 1, i1* %16
  br label %merge77
merge77:
  br label %merge59
merge59:
  br label %merge56
merge56:
  br label %merge44
merge44:
  br label %while_cond0
while_end2:
  %278 = load { i64, i8* }*, { i64, i8* }** %15
  ret { i64, i8* }* %278
}

define internal { i64, i8* }* @parse_primary(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = getelementptr [7 x i8], [7 x i8]* @.str120, i32 0, i32 0
  %15 = call %nyx_string* @nyx_string_from_cstr(i8* %14)
  %16 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %15)
  br i1 %16, label %then0, label %else1
then0:
  %17 = call %Token @advance(%SharedEnv_parse* %env.param)
  %18 = alloca %Token
  store %Token %17, %Token* %18
  %19 = getelementptr [7 x i8], [7 x i8]* @.str121, i32 0, i32 0
  %20 = call %nyx_string* @nyx_string_from_cstr(i8* %19)
  %21 = call { i64, i8* }* @nyx_array_new_ptr()
  %22 = load %Token, %Token* %18
  %23 = call %nyx_string* @get_token_value(%Token %22)
  %24 = ptrtoint %nyx_string* %23 to i64
  call void @nyx_array_push({ i64, i8* }* %21, i64 %24)
  %25 = call { i64, i8* }* @make_astnode(%nyx_string* %20, { i64, i8* }* %21)
  ret { i64, i8* }* %25
else1:
  br label %merge2
merge2:
  %26 = getelementptr [7 x i8], [7 x i8]* @.str122, i32 0, i32 0
  %27 = call %nyx_string* @nyx_string_from_cstr(i8* %26)
  %28 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %27)
  br i1 %28, label %then3, label %else4
then3:
  %29 = call %Token @advance(%SharedEnv_parse* %env.param)
  %30 = alloca %Token
  store %Token %29, %Token* %30
  %31 = getelementptr [7 x i8], [7 x i8]* @.str123, i32 0, i32 0
  %32 = call %nyx_string* @nyx_string_from_cstr(i8* %31)
  %33 = call { i64, i8* }* @nyx_array_new_ptr()
  %34 = load %Token, %Token* %30
  %35 = call %nyx_string* @get_token_value(%Token %34)
  %36 = ptrtoint %nyx_string* %35 to i64
  call void @nyx_array_push({ i64, i8* }* %33, i64 %36)
  %37 = call { i64, i8* }* @make_astnode(%nyx_string* %32, { i64, i8* }* %33)
  ret { i64, i8* }* %37
else4:
  br label %merge5
merge5:
  %38 = getelementptr [5 x i8], [5 x i8]* @.str124, i32 0, i32 0
  %39 = call %nyx_string* @nyx_string_from_cstr(i8* %38)
  %40 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %39)
  br i1 %40, label %then6, label %else7
then6:
  %41 = call %Token @advance(%SharedEnv_parse* %env.param)
  %42 = alloca %Token
  store %Token %41, %Token* %42
  %43 = getelementptr [5 x i8], [5 x i8]* @.str125, i32 0, i32 0
  %44 = call %nyx_string* @nyx_string_from_cstr(i8* %43)
  %45 = call { i64, i8* }* @nyx_array_new_ptr()
  %46 = load %Token, %Token* %42
  %47 = call %nyx_string* @get_token_value(%Token %46)
  %48 = ptrtoint %nyx_string* %47 to i64
  call void @nyx_array_push({ i64, i8* }* %45, i64 %48)
  %49 = call { i64, i8* }* @make_astnode(%nyx_string* %44, { i64, i8* }* %45)
  ret { i64, i8* }* %49
else7:
  br label %merge8
merge8:
  %50 = getelementptr [5 x i8], [5 x i8]* @.str126, i32 0, i32 0
  %51 = call %nyx_string* @nyx_string_from_cstr(i8* %50)
  %52 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %51)
  br i1 %52, label %then9, label %else10
then9:
  %53 = call %Token @advance(%SharedEnv_parse* %env.param)
  %54 = getelementptr [5 x i8], [5 x i8]* @.str127, i32 0, i32 0
  %55 = call %nyx_string* @nyx_string_from_cstr(i8* %54)
  %56 = call { i64, i8* }* @nyx_array_new_ptr()
  %57 = getelementptr [5 x i8], [5 x i8]* @.str128, i32 0, i32 0
  %58 = call %nyx_string* @nyx_string_from_cstr(i8* %57)
  %59 = ptrtoint %nyx_string* %58 to i64
  call void @nyx_array_push({ i64, i8* }* %56, i64 %59)
  %60 = call { i64, i8* }* @make_astnode(%nyx_string* %55, { i64, i8* }* %56)
  ret { i64, i8* }* %60
else10:
  br label %merge11
merge11:
  %61 = getelementptr [6 x i8], [6 x i8]* @.str129, i32 0, i32 0
  %62 = call %nyx_string* @nyx_string_from_cstr(i8* %61)
  %63 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %62)
  br i1 %63, label %then12, label %else13
then12:
  %64 = call %Token @advance(%SharedEnv_parse* %env.param)
  %65 = getelementptr [5 x i8], [5 x i8]* @.str130, i32 0, i32 0
  %66 = call %nyx_string* @nyx_string_from_cstr(i8* %65)
  %67 = call { i64, i8* }* @nyx_array_new_ptr()
  %68 = getelementptr [6 x i8], [6 x i8]* @.str131, i32 0, i32 0
  %69 = call %nyx_string* @nyx_string_from_cstr(i8* %68)
  %70 = ptrtoint %nyx_string* %69 to i64
  call void @nyx_array_push({ i64, i8* }* %67, i64 %70)
  %71 = call { i64, i8* }* @make_astnode(%nyx_string* %66, { i64, i8* }* %67)
  ret { i64, i8* }* %71
else13:
  br label %merge14
merge14:
  %72 = getelementptr [7 x i8], [7 x i8]* @.str132, i32 0, i32 0
  %73 = call %nyx_string* @nyx_string_from_cstr(i8* %72)
  %74 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %73)
  br i1 %74, label %then15, label %else16
then15:
  %75 = call %Token @advance(%SharedEnv_parse* %env.param)
  %76 = getelementptr [11 x i8], [11 x i8]* @.str133, i32 0, i32 0
  %77 = call %nyx_string* @nyx_string_from_cstr(i8* %76)
  %78 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %77)
  %79 = call %nyx_string* @parse_type_annotation(%SharedEnv_parse* %env.param)
  %80 = alloca %nyx_string*
  store %nyx_string* %79, %nyx_string** %80
  %81 = getelementptr [12 x i8], [12 x i8]* @.str134, i32 0, i32 0
  %82 = call %nyx_string* @nyx_string_from_cstr(i8* %81)
  %83 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %82)
  %84 = getelementptr [7 x i8], [7 x i8]* @.str135, i32 0, i32 0
  %85 = call %nyx_string* @nyx_string_from_cstr(i8* %84)
  %86 = call { i64, i8* }* @nyx_array_new_ptr()
  %87 = load %nyx_string*, %nyx_string** %80
  %88 = ptrtoint %nyx_string* %87 to i64
  call void @nyx_array_push({ i64, i8* }* %86, i64 %88)
  %89 = call { i64, i8* }* @make_astnode(%nyx_string* %85, { i64, i8* }* %86)
  ret { i64, i8* }* %89
else16:
  br label %merge17
merge17:
  %90 = getelementptr [8 x i8], [8 x i8]* @.str136, i32 0, i32 0
  %91 = call %nyx_string* @nyx_string_from_cstr(i8* %90)
  %92 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %91)
  br i1 %92, label %then18, label %else19
then18:
  %93 = call %Token @advance(%SharedEnv_parse* %env.param)
  %94 = getelementptr [11 x i8], [11 x i8]* @.str137, i32 0, i32 0
  %95 = call %nyx_string* @nyx_string_from_cstr(i8* %94)
  %96 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %95)
  %97 = call %nyx_string* @parse_type_annotation(%SharedEnv_parse* %env.param)
  %98 = alloca %nyx_string*
  store %nyx_string* %97, %nyx_string** %98
  %99 = getelementptr [12 x i8], [12 x i8]* @.str138, i32 0, i32 0
  %100 = call %nyx_string* @nyx_string_from_cstr(i8* %99)
  %101 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %100)
  %102 = getelementptr [8 x i8], [8 x i8]* @.str139, i32 0, i32 0
  %103 = call %nyx_string* @nyx_string_from_cstr(i8* %102)
  %104 = call { i64, i8* }* @nyx_array_new_ptr()
  %105 = load %nyx_string*, %nyx_string** %98
  %106 = ptrtoint %nyx_string* %105 to i64
  call void @nyx_array_push({ i64, i8* }* %104, i64 %106)
  %107 = call { i64, i8* }* @make_astnode(%nyx_string* %103, { i64, i8* }* %104)
  ret { i64, i8* }* %107
else19:
  br label %merge20
merge20:
  %108 = getelementptr [4 x i8], [4 x i8]* @.str140, i32 0, i32 0
  %109 = call %nyx_string* @nyx_string_from_cstr(i8* %108)
  %110 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %109)
  br i1 %110, label %then21, label %else22
then21:
  %111 = call %Token @advance(%SharedEnv_parse* %env.param)
  %112 = getelementptr [2 x i8], [2 x i8]* @.str141, i32 0, i32 0
  %113 = call %nyx_string* @nyx_string_from_cstr(i8* %112)
  %114 = alloca %nyx_string*
  store %nyx_string* %113, %nyx_string** %114
  %115 = getelementptr [11 x i8], [11 x i8]* @.str142, i32 0, i32 0
  %116 = call %nyx_string* @nyx_string_from_cstr(i8* %115)
  %117 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %116)
  br i1 %117, label %then24, label %else25
then24:
  %118 = call %Token @peek(%SharedEnv_parse* %env.param)
  %119 = alloca %Token
  store %Token %118, %Token* %119
  %120 = load %Token, %Token* %119
  %121 = call %nyx_string* @get_token_value(%Token %120)
  %122 = alloca %nyx_string*
  store %nyx_string* %121, %nyx_string** %122
  %123 = load %nyx_string*, %nyx_string** %122
  %124 = getelementptr [9 x i8], [9 x i8]* @.str143, i32 0, i32 0
  %125 = call %nyx_string* @nyx_string_from_cstr(i8* %124)
  %126 = call i8* @nyx_string_to_cstr(%nyx_string* %123)
  %127 = call i8* @nyx_string_to_cstr(%nyx_string* %125)
  %128 = call i32 @strcmp(i8* %126, i8* %127)
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %then27, label %else28
then27:
  %130 = call %Token @advance(%SharedEnv_parse* %env.param)
  %131 = getelementptr [2 x i8], [2 x i8]* @.str144, i32 0, i32 0
  %132 = call %nyx_string* @nyx_string_from_cstr(i8* %131)
  store %nyx_string* %132, %nyx_string** %114
  br label %merge29
else28:
  br label %merge29
merge29:
  br label %merge26
else25:
  br label %merge26
merge26:
  %133 = getelementptr [11 x i8], [11 x i8]* @.str145, i32 0, i32 0
  %134 = call %nyx_string* @nyx_string_from_cstr(i8* %133)
  %135 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %134)
  %136 = getelementptr [7 x i8], [7 x i8]* @.str146, i32 0, i32 0
  %137 = call %nyx_string* @nyx_string_from_cstr(i8* %136)
  %138 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %137)
  %139 = alloca %Token
  store %Token %138, %Token* %139
  %140 = load %Token, %Token* %139
  %141 = call %nyx_string* @get_token_value(%Token %140)
  %142 = alloca %nyx_string*
  store %nyx_string* %141, %nyx_string** %142
  %143 = getelementptr [6 x i8], [6 x i8]* @.str147, i32 0, i32 0
  %144 = call %nyx_string* @nyx_string_from_cstr(i8* %143)
  %145 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %144)
  br i1 %145, label %then30, label %else31
then30:
  %146 = call %Token @advance(%SharedEnv_parse* %env.param)
  %147 = call { i64, i8* }* @nyx_array_new_ptr()
  %148 = alloca { i64, i8* }*
  store { i64, i8* }* %147, { i64, i8* }** %148
  %149 = alloca i1
  store i1 0, i1* %149
  br label %while_cond33
while_cond33:
  %150 = load i1, i1* %149
  %151 = xor i1 %150, true
  br i1 %151, label %while_body34, label %while_end35
while_body34:
  %152 = getelementptr [7 x i8], [7 x i8]* @.str148, i32 0, i32 0
  %153 = call %nyx_string* @nyx_string_from_cstr(i8* %152)
  %154 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %153)
  br i1 %154, label %then36, label %else37
then36:
  %155 = getelementptr [7 x i8], [7 x i8]* @.str149, i32 0, i32 0
  %156 = call %nyx_string* @nyx_string_from_cstr(i8* %155)
  %157 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %156)
  %158 = alloca %Token
  store %Token %157, %Token* %158
  %159 = load %Token, %Token* %158
  %160 = call %nyx_string* @get_token_value(%Token %159)
  %161 = alloca %nyx_string*
  store %nyx_string* %160, %nyx_string** %161
  %162 = getelementptr [11 x i8], [11 x i8]* @.str150, i32 0, i32 0
  %163 = call %nyx_string* @nyx_string_from_cstr(i8* %162)
  %164 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %163)
  %165 = getelementptr [11 x i8], [11 x i8]* @.str151, i32 0, i32 0
  %166 = call %nyx_string* @nyx_string_from_cstr(i8* %165)
  %167 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %166)
  %168 = alloca %Token
  store %Token %167, %Token* %168
  %169 = load %Token, %Token* %168
  %170 = call %nyx_string* @get_token_value(%Token %169)
  %171 = alloca %nyx_string*
  store %nyx_string* %170, %nyx_string** %171
  %172 = getelementptr [12 x i8], [12 x i8]* @.str152, i32 0, i32 0
  %173 = call %nyx_string* @nyx_string_from_cstr(i8* %172)
  %174 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %173)
  %175 = load { i64, i8* }*, { i64, i8* }** %148
  %176 = call { i64, i8* }* @nyx_array_new_ptr()
  %177 = load %nyx_string*, %nyx_string** %161
  %178 = ptrtoint %nyx_string* %177 to i64
  call void @nyx_array_push({ i64, i8* }* %176, i64 %178)
  %179 = load %nyx_string*, %nyx_string** %171
  %180 = ptrtoint %nyx_string* %179 to i64
  call void @nyx_array_push({ i64, i8* }* %176, i64 %180)
  %181 = ptrtoint { i64, i8* }* %176 to i64
  call void @nyx_array_push({ i64, i8* }* %175, i64 %181)
  %182 = getelementptr [6 x i8], [6 x i8]* @.str153, i32 0, i32 0
  %183 = call %nyx_string* @nyx_string_from_cstr(i8* %182)
  %184 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %183)
  br i1 %184, label %then39, label %else40
then39:
  %185 = call %Token @advance(%SharedEnv_parse* %env.param)
  br label %merge41
else40:
  br label %merge41
merge41:
  br label %merge38
else37:
  store i1 1, i1* %149
  br label %merge38
merge38:
  br label %while_cond33
while_end35:
  %186 = getelementptr [6 x i8], [6 x i8]* @.str154, i32 0, i32 0
  %187 = call %nyx_string* @nyx_string_from_cstr(i8* %186)
  %188 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %187)
  br i1 %188, label %then42, label %else43
then42:
  %189 = call %Token @advance(%SharedEnv_parse* %env.param)
  br label %merge44
else43:
  br label %merge44
merge44:
  %190 = call { i64, i8* }* @nyx_array_new_ptr()
  %191 = alloca { i64, i8* }*
  store { i64, i8* }* %190, { i64, i8* }** %191
  %192 = alloca i1
  store i1 0, i1* %192
  br label %while_cond45
while_cond45:
  %193 = load i1, i1* %192
  %194 = xor i1 %193, true
  br i1 %194, label %while_body46, label %while_end47
while_body46:
  %195 = getelementptr [7 x i8], [7 x i8]* @.str155, i32 0, i32 0
  %196 = call %nyx_string* @nyx_string_from_cstr(i8* %195)
  %197 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %196)
  br i1 %197, label %then48, label %else49
then48:
  %198 = getelementptr [7 x i8], [7 x i8]* @.str156, i32 0, i32 0
  %199 = call %nyx_string* @nyx_string_from_cstr(i8* %198)
  %200 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %199)
  %201 = alloca %Token
  store %Token %200, %Token* %201
  %202 = load %Token, %Token* %201
  %203 = call %nyx_string* @get_token_value(%Token %202)
  %204 = alloca %nyx_string*
  store %nyx_string* %203, %nyx_string** %204
  %205 = getelementptr [11 x i8], [11 x i8]* @.str157, i32 0, i32 0
  %206 = call %nyx_string* @nyx_string_from_cstr(i8* %205)
  %207 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %206)
  %208 = call { i64, i8* }* @parse_expression(%SharedEnv_parse* %env.param)
  %209 = alloca { i64, i8* }*
  store { i64, i8* }* %208, { i64, i8* }** %209
  %210 = getelementptr [12 x i8], [12 x i8]* @.str158, i32 0, i32 0
  %211 = call %nyx_string* @nyx_string_from_cstr(i8* %210)
  %212 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %211)
  %213 = load { i64, i8* }*, { i64, i8* }** %191
  %214 = call { i64, i8* }* @nyx_array_new_ptr()
  %215 = load %nyx_string*, %nyx_string** %204
  %216 = ptrtoint %nyx_string* %215 to i64
  call void @nyx_array_push({ i64, i8* }* %214, i64 %216)
  %217 = load { i64, i8* }*, { i64, i8* }** %209
  %218 = bitcast { i64, i8* }* %217 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %214, i8* %218)
  %219 = ptrtoint { i64, i8* }* %214 to i64
  call void @nyx_array_push({ i64, i8* }* %213, i64 %219)
  %220 = getelementptr [6 x i8], [6 x i8]* @.str159, i32 0, i32 0
  %221 = call %nyx_string* @nyx_string_from_cstr(i8* %220)
  %222 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %221)
  br i1 %222, label %then51, label %else52
then51:
  %223 = call %Token @advance(%SharedEnv_parse* %env.param)
  br label %merge53
else52:
  br label %merge53
merge53:
  br label %merge50
else49:
  store i1 1, i1* %192
  br label %merge50
merge50:
  br label %while_cond45
while_end47:
  %224 = getelementptr [6 x i8], [6 x i8]* @.str160, i32 0, i32 0
  %225 = call %nyx_string* @nyx_string_from_cstr(i8* %224)
  %226 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %225)
  br i1 %226, label %then54, label %else55
then54:
  %227 = call %Token @advance(%SharedEnv_parse* %env.param)
  br label %merge56
else55:
  br label %merge56
merge56:
  %228 = call { i64, i8* }* @nyx_array_new_ptr()
  %229 = alloca { i64, i8* }*
  store { i64, i8* }* %228, { i64, i8* }** %229
  %230 = alloca i1
  store i1 0, i1* %230
  br label %while_cond57
while_cond57:
  %231 = load i1, i1* %230
  %232 = xor i1 %231, true
  br i1 %232, label %while_body58, label %while_end59
while_body58:
  %233 = getelementptr [7 x i8], [7 x i8]* @.str161, i32 0, i32 0
  %234 = call %nyx_string* @nyx_string_from_cstr(i8* %233)
  %235 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %234)
  br i1 %235, label %then60, label %else61
then60:
  %236 = getelementptr [7 x i8], [7 x i8]* @.str162, i32 0, i32 0
  %237 = call %nyx_string* @nyx_string_from_cstr(i8* %236)
  %238 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %237)
  %239 = alloca %Token
  store %Token %238, %Token* %239
  %240 = load { i64, i8* }*, { i64, i8* }** %229
  %241 = load %Token, %Token* %239
  %242 = call %nyx_string* @get_token_value(%Token %241)
  %243 = ptrtoint %nyx_string* %242 to i64
  call void @nyx_array_push({ i64, i8* }* %240, i64 %243)
  %244 = getelementptr [6 x i8], [6 x i8]* @.str163, i32 0, i32 0
  %245 = call %nyx_string* @nyx_string_from_cstr(i8* %244)
  %246 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %245)
  br i1 %246, label %then63, label %else64
then63:
  %247 = call %Token @advance(%SharedEnv_parse* %env.param)
  br label %merge65
else64:
  br label %merge65
merge65:
  br label %merge62
else61:
  store i1 1, i1* %230
  br label %merge62
merge62:
  br label %while_cond57
while_end59:
  %248 = getelementptr [12 x i8], [12 x i8]* @.str164, i32 0, i32 0
  %249 = call %nyx_string* @nyx_string_from_cstr(i8* %248)
  %250 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %249)
  %251 = getelementptr [15 x i8], [15 x i8]* @.str165, i32 0, i32 0
  %252 = call %nyx_string* @nyx_string_from_cstr(i8* %251)
  %253 = call { i64, i8* }* @nyx_array_new_ptr()
  %254 = load %nyx_string*, %nyx_string** %142
  %255 = ptrtoint %nyx_string* %254 to i64
  call void @nyx_array_push({ i64, i8* }* %253, i64 %255)
  %256 = load { i64, i8* }*, { i64, i8* }** %148
  %257 = bitcast { i64, i8* }* %256 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %253, i8* %257)
  %258 = load { i64, i8* }*, { i64, i8* }** %191
  %259 = bitcast { i64, i8* }* %258 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %253, i8* %259)
  %260 = load { i64, i8* }*, { i64, i8* }** %229
  %261 = bitcast { i64, i8* }* %260 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %253, i8* %261)
  %262 = load %nyx_string*, %nyx_string** %114
  %263 = ptrtoint %nyx_string* %262 to i64
  call void @nyx_array_push({ i64, i8* }* %253, i64 %263)
  %264 = call { i64, i8* }* @make_astnode(%nyx_string* %252, { i64, i8* }* %253)
  ret { i64, i8* }* %264
else31:
  br label %merge32
merge32:
  %265 = call { i64, i8* }* @nyx_array_new_ptr()
  %266 = alloca { i64, i8* }*
  store { i64, i8* }* %265, { i64, i8* }** %266
  %267 = call { i64, i8* }* @nyx_array_new_ptr()
  %268 = alloca { i64, i8* }*
  store { i64, i8* }* %267, { i64, i8* }** %268
  %269 = call { i64, i8* }* @nyx_array_new_ptr()
  %270 = alloca { i64, i8* }*
  store { i64, i8* }* %269, { i64, i8* }** %270
  %271 = alloca i1
  store i1 0, i1* %271
  br label %while_cond66
while_cond66:
  %272 = load i1, i1* %271
  %273 = xor i1 %272, true
  br i1 %273, label %while_body67, label %while_end68
while_body67:
  %274 = getelementptr [6 x i8], [6 x i8]* @.str166, i32 0, i32 0
  %275 = call %nyx_string* @nyx_string_from_cstr(i8* %274)
  %276 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %275)
  br i1 %276, label %then69, label %else70
then69:
  %277 = call %Token @advance(%SharedEnv_parse* %env.param)
  %278 = getelementptr [11 x i8], [11 x i8]* @.str167, i32 0, i32 0
  %279 = call %nyx_string* @nyx_string_from_cstr(i8* %278)
  %280 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %279)
  br i1 %280, label %then72, label %else73
then72:
  %281 = call %Token @peek(%SharedEnv_parse* %env.param)
  %282 = alloca %Token
  store %Token %281, %Token* %282
  %283 = load %Token, %Token* %282
  %284 = call %nyx_string* @get_token_value(%Token %283)
  %285 = alloca %nyx_string*
  store %nyx_string* %284, %nyx_string** %285
  %286 = load %nyx_string*, %nyx_string** %285
  %287 = getelementptr [4 x i8], [4 x i8]* @.str168, i32 0, i32 0
  %288 = call %nyx_string* @nyx_string_from_cstr(i8* %287)
  %289 = call i8* @nyx_string_to_cstr(%nyx_string* %286)
  %290 = call i8* @nyx_string_to_cstr(%nyx_string* %288)
  %291 = call i32 @strcmp(i8* %289, i8* %290)
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %then75, label %else76
then75:
  %293 = call %Token @advance(%SharedEnv_parse* %env.param)
  %294 = getelementptr [11 x i8], [11 x i8]* @.str169, i32 0, i32 0
  %295 = call %nyx_string* @nyx_string_from_cstr(i8* %294)
  %296 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %295)
  %297 = getelementptr [7 x i8], [7 x i8]* @.str170, i32 0, i32 0
  %298 = call %nyx_string* @nyx_string_from_cstr(i8* %297)
  %299 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %298)
  %300 = alloca %Token
  store %Token %299, %Token* %300
  %301 = load { i64, i8* }*, { i64, i8* }** %266
  %302 = load %Token, %Token* %300
  %303 = call %nyx_string* @get_token_value(%Token %302)
  %304 = ptrtoint %nyx_string* %303 to i64
  call void @nyx_array_push({ i64, i8* }* %301, i64 %304)
  %305 = getelementptr [12 x i8], [12 x i8]* @.str171, i32 0, i32 0
  %306 = call %nyx_string* @nyx_string_from_cstr(i8* %305)
  %307 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %306)
  br label %merge77
else76:
  %308 = load %nyx_string*, %nyx_string** %285
  %309 = getelementptr [3 x i8], [3 x i8]* @.str172, i32 0, i32 0
  %310 = call %nyx_string* @nyx_string_from_cstr(i8* %309)
  %311 = call i8* @nyx_string_to_cstr(%nyx_string* %308)
  %312 = call i8* @nyx_string_to_cstr(%nyx_string* %310)
  %313 = call i32 @strcmp(i8* %311, i8* %312)
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %then78, label %else79
then78:
  %315 = call %Token @advance(%SharedEnv_parse* %env.param)
  %316 = getelementptr [11 x i8], [11 x i8]* @.str173, i32 0, i32 0
  %317 = call %nyx_string* @nyx_string_from_cstr(i8* %316)
  %318 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %317)
  %319 = getelementptr [7 x i8], [7 x i8]* @.str174, i32 0, i32 0
  %320 = call %nyx_string* @nyx_string_from_cstr(i8* %319)
  %321 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %320)
  %322 = alloca %Token
  store %Token %321, %Token* %322
  %323 = load %Token, %Token* %322
  %324 = call %nyx_string* @get_token_value(%Token %323)
  %325 = alloca %nyx_string*
  store %nyx_string* %324, %nyx_string** %325
  %326 = getelementptr [6 x i8], [6 x i8]* @.str175, i32 0, i32 0
  %327 = call %nyx_string* @nyx_string_from_cstr(i8* %326)
  %328 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %327)
  %329 = call { i64, i8* }* @parse_expression(%SharedEnv_parse* %env.param)
  %330 = alloca { i64, i8* }*
  store { i64, i8* }* %329, { i64, i8* }** %330
  %331 = load { i64, i8* }*, { i64, i8* }** %268
  %332 = call { i64, i8* }* @nyx_array_new_ptr()
  %333 = load %nyx_string*, %nyx_string** %325
  %334 = ptrtoint %nyx_string* %333 to i64
  call void @nyx_array_push({ i64, i8* }* %332, i64 %334)
  %335 = load { i64, i8* }*, { i64, i8* }** %330
  %336 = bitcast { i64, i8* }* %335 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %332, i8* %336)
  %337 = ptrtoint { i64, i8* }* %332 to i64
  call void @nyx_array_push({ i64, i8* }* %331, i64 %337)
  %338 = getelementptr [12 x i8], [12 x i8]* @.str176, i32 0, i32 0
  %339 = call %nyx_string* @nyx_string_from_cstr(i8* %338)
  %340 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %339)
  br label %merge80
else79:
  %341 = load %nyx_string*, %nyx_string** %285
  %342 = getelementptr [8 x i8], [8 x i8]* @.str177, i32 0, i32 0
  %343 = call %nyx_string* @nyx_string_from_cstr(i8* %342)
  %344 = call i8* @nyx_string_to_cstr(%nyx_string* %341)
  %345 = call i8* @nyx_string_to_cstr(%nyx_string* %343)
  %346 = call i32 @strcmp(i8* %344, i8* %345)
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %then81, label %else82
then81:
  %348 = call %Token @advance(%SharedEnv_parse* %env.param)
  %349 = getelementptr [11 x i8], [11 x i8]* @.str178, i32 0, i32 0
  %350 = call %nyx_string* @nyx_string_from_cstr(i8* %349)
  %351 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %350)
  %352 = alloca i1
  store i1 0, i1* %352
  br label %while_cond84
while_cond84:
  %353 = load i1, i1* %352
  %354 = xor i1 %353, true
  br i1 %354, label %while_body85, label %while_end86
while_body85:
  %355 = getelementptr [7 x i8], [7 x i8]* @.str179, i32 0, i32 0
  %356 = call %nyx_string* @nyx_string_from_cstr(i8* %355)
  %357 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %356)
  %358 = alloca %Token
  store %Token %357, %Token* %358
  %359 = load { i64, i8* }*, { i64, i8* }** %270
  %360 = load %Token, %Token* %358
  %361 = call %nyx_string* @get_token_value(%Token %360)
  %362 = ptrtoint %nyx_string* %361 to i64
  call void @nyx_array_push({ i64, i8* }* %359, i64 %362)
  %363 = getelementptr [6 x i8], [6 x i8]* @.str180, i32 0, i32 0
  %364 = call %nyx_string* @nyx_string_from_cstr(i8* %363)
  %365 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %364)
  br i1 %365, label %then87, label %else88
then87:
  %366 = call %Token @advance(%SharedEnv_parse* %env.param)
  br label %merge89
else88:
  store i1 1, i1* %352
  br label %merge89
merge89:
  br label %while_cond84
while_end86:
  %367 = getelementptr [12 x i8], [12 x i8]* @.str181, i32 0, i32 0
  %368 = call %nyx_string* @nyx_string_from_cstr(i8* %367)
  %369 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %368)
  br label %merge83
else82:
  store i1 1, i1* %271
  br label %merge83
merge83:
  br label %merge80
merge80:
  br label %merge77
merge77:
  br label %merge74
else73:
  store i1 1, i1* %271
  br label %merge74
merge74:
  br label %merge71
else70:
  store i1 1, i1* %271
  br label %merge71
merge71:
  br label %while_cond66
while_end68:
  %370 = getelementptr [12 x i8], [12 x i8]* @.str182, i32 0, i32 0
  %371 = call %nyx_string* @nyx_string_from_cstr(i8* %370)
  %372 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %371)
  %373 = getelementptr [11 x i8], [11 x i8]* @.str183, i32 0, i32 0
  %374 = call %nyx_string* @nyx_string_from_cstr(i8* %373)
  %375 = call { i64, i8* }* @nyx_array_new_ptr()
  %376 = load %nyx_string*, %nyx_string** %142
  %377 = ptrtoint %nyx_string* %376 to i64
  call void @nyx_array_push({ i64, i8* }* %375, i64 %377)
  %378 = load { i64, i8* }*, { i64, i8* }** %266
  %379 = bitcast { i64, i8* }* %378 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %375, i8* %379)
  %380 = load { i64, i8* }*, { i64, i8* }** %268
  %381 = bitcast { i64, i8* }* %380 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %375, i8* %381)
  %382 = load { i64, i8* }*, { i64, i8* }** %270
  %383 = bitcast { i64, i8* }* %382 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %375, i8* %383)
  %384 = call { i64, i8* }* @make_astnode(%nyx_string* %374, { i64, i8* }* %375)
  ret { i64, i8* }* %384
else22:
  br label %merge23
merge23:
  %385 = getelementptr [7 x i8], [7 x i8]* @.str184, i32 0, i32 0
  %386 = call %nyx_string* @nyx_string_from_cstr(i8* %385)
  %387 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %386)
  br i1 %387, label %then90, label %else91
then90:
  %388 = call %Token @advance(%SharedEnv_parse* %env.param)
  %389 = getelementptr [11 x i8], [11 x i8]* @.str185, i32 0, i32 0
  %390 = call %nyx_string* @nyx_string_from_cstr(i8* %389)
  %391 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %390)
  %392 = call { i64, i8* }* @parse_expression(%SharedEnv_parse* %env.param)
  %393 = alloca { i64, i8* }*
  store { i64, i8* }* %392, { i64, i8* }** %393
  %394 = getelementptr [7 x i8], [7 x i8]* @.str186, i32 0, i32 0
  %395 = call %nyx_string* @nyx_string_from_cstr(i8* %394)
  %396 = call { i64, i8* }* @nyx_array_new_ptr()
  %397 = getelementptr [17 x i8], [17 x i8]* @.str187, i32 0, i32 0
  %398 = call %nyx_string* @nyx_string_from_cstr(i8* %397)
  %399 = ptrtoint %nyx_string* %398 to i64
  call void @nyx_array_push({ i64, i8* }* %396, i64 %399)
  %400 = call { i64, i8* }* @make_astnode(%nyx_string* %395, { i64, i8* }* %396)
  %401 = alloca { i64, i8* }*
  store { i64, i8* }* %400, { i64, i8* }** %401
  %402 = getelementptr [6 x i8], [6 x i8]* @.str188, i32 0, i32 0
  %403 = call %nyx_string* @nyx_string_from_cstr(i8* %402)
  %404 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %403)
  br i1 %404, label %then93, label %else94
then93:
  %405 = call %Token @advance(%SharedEnv_parse* %env.param)
  %406 = call { i64, i8* }* @parse_expression(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %406, { i64, i8* }** %401
  br label %merge95
else94:
  br label %merge95
merge95:
  %407 = getelementptr [12 x i8], [12 x i8]* @.str189, i32 0, i32 0
  %408 = call %nyx_string* @nyx_string_from_cstr(i8* %407)
  %409 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %408)
  %410 = getelementptr [7 x i8], [7 x i8]* @.str190, i32 0, i32 0
  %411 = call %nyx_string* @nyx_string_from_cstr(i8* %410)
  %412 = call { i64, i8* }* @nyx_array_new_ptr()
  %413 = load { i64, i8* }*, { i64, i8* }** %393
  %414 = bitcast { i64, i8* }* %413 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %412, i8* %414)
  %415 = load { i64, i8* }*, { i64, i8* }** %401
  %416 = bitcast { i64, i8* }* %415 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %412, i8* %416)
  %417 = call { i64, i8* }* @make_astnode(%nyx_string* %411, { i64, i8* }* %412)
  ret { i64, i8* }* %417
else91:
  br label %merge92
merge92:
  %418 = getelementptr [11 x i8], [11 x i8]* @.str191, i32 0, i32 0
  %419 = call %nyx_string* @nyx_string_from_cstr(i8* %418)
  %420 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %419)
  br i1 %420, label %then96, label %else97
then96:
  %421 = call %Token @advance(%SharedEnv_parse* %env.param)
  %422 = alloca %Token
  store %Token %421, %Token* %422
  %423 = load %Token, %Token* %422
  %424 = call %nyx_string* @get_token_value(%Token %423)
  %425 = alloca %nyx_string*
  store %nyx_string* %424, %nyx_string** %425
  %426 = load { i64, i8* }*, { i64, i8* }** %12
  %427 = call i64 @nyx_array_length({ i64, i8* }* %426)
  %428 = icmp sgt i64 %427, 0
  br i1 %428, label %then99, label %else100
then99:
  %429 = alloca i64
  store i64 0, i64* %429
  br label %while_cond102
while_cond102:
  %430 = load i64, i64* %429
  %431 = load { i64, i8* }*, { i64, i8* }** %12
  %432 = call i64 @nyx_array_length({ i64, i8* }* %431)
  %433 = icmp slt i64 %430, %432
  br i1 %433, label %while_body103, label %while_end104
while_body103:
  %434 = load { i64, i8* }*, { i64, i8* }** %12
  %435 = load i64, i64* %429
  %436 = call i64 @nyx_array_get({ i64, i8* }* %434, i64 %435)
  %437 = inttoptr i64 %436 to %nyx_string*
  %438 = alloca %nyx_string*
  store %nyx_string* %437, %nyx_string** %438
  %439 = load %nyx_string*, %nyx_string** %438
  %440 = load %nyx_string*, %nyx_string** %425
  %441 = call i8* @nyx_string_to_cstr(%nyx_string* %439)
  %442 = call i8* @nyx_string_to_cstr(%nyx_string* %440)
  %443 = call i32 @strcmp(i8* %441, i8* %442)
  %444 = icmp eq i32 %443, 0
  br i1 %444, label %then105, label %else106
then105:
  %445 = load { i64, i8* }*, { i64, i8* }** %13
  %446 = load i64, i64* %429
  %447 = call i64 @nyx_array_get({ i64, i8* }* %445, i64 %446)
  %448 = inttoptr i64 %447 to { i64, i8* }*
  %449 = alloca { i64, i8* }*
  store { i64, i8* }* %448, { i64, i8* }** %449
  %450 = load { i64, i8* }*, { i64, i8* }** %449
  ret { i64, i8* }* %450
else106:
  br label %merge107
merge107:
  %451 = load i64, i64* %429
  %452 = add i64 %451, 1
  store i64 %452, i64* %429
  br label %while_cond102
while_end104:
  br label %merge101
else100:
  br label %merge101
merge101:
  %453 = getelementptr [4 x i8], [4 x i8]* @.str192, i32 0, i32 0
  %454 = call %nyx_string* @nyx_string_from_cstr(i8* %453)
  %455 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %454)
  br i1 %455, label %then108, label %else109
then108:
  %456 = alloca i1
  store i1 0, i1* %456
  %457 = alloca i64
  store i64 0, i64* %457
  br label %while_cond111
while_cond111:
  %458 = load i64, i64* %457
  %459 = load { i64, i8* }*, { i64, i8* }** %9
  %460 = call i64 @nyx_array_length({ i64, i8* }* %459)
  %461 = icmp slt i64 %458, %460
  br i1 %461, label %while_body112, label %while_end113
while_body112:
  %462 = load { i64, i8* }*, { i64, i8* }** %9
  %463 = load i64, i64* %457
  %464 = call i64 @nyx_array_get({ i64, i8* }* %462, i64 %463)
  %465 = inttoptr i64 %464 to %nyx_string*
  %466 = alloca %nyx_string*
  store %nyx_string* %465, %nyx_string** %466
  %467 = load %nyx_string*, %nyx_string** %466
  %468 = load %nyx_string*, %nyx_string** %425
  %469 = call i8* @nyx_string_to_cstr(%nyx_string* %467)
  %470 = call i8* @nyx_string_to_cstr(%nyx_string* %468)
  %471 = call i32 @strcmp(i8* %469, i8* %470)
  %472 = icmp eq i32 %471, 0
  br i1 %472, label %then114, label %else115
then114:
  store i1 1, i1* %456
  br label %merge116
else115:
  br label %merge116
merge116:
  %473 = load i64, i64* %457
  %474 = add i64 %473, 1
  store i64 %474, i64* %457
  br label %while_cond111
while_end113:
  %475 = load i1, i1* %456
  br i1 %475, label %then117, label %else118
then117:
  %476 = load %nyx_string*, %nyx_string** %425
  %477 = call { i64, i8* }* @parse_macro_invocation(%SharedEnv_parse* %env.param, %nyx_string* %476)
  ret { i64, i8* }* %477
else118:
  br label %merge119
merge119:
  br label %merge110
else109:
  br label %merge110
merge110:
  %478 = getelementptr [11 x i8], [11 x i8]* @.str193, i32 0, i32 0
  %479 = call %nyx_string* @nyx_string_from_cstr(i8* %478)
  %480 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %479)
  br i1 %480, label %then120, label %else121
then120:
  %481 = getelementptr [11 x i8], [11 x i8]* @.str194, i32 0, i32 0
  %482 = call %nyx_string* @nyx_string_from_cstr(i8* %481)
  %483 = call i1 @check_at(%SharedEnv_parse* %env.param, i64 1, %nyx_string* %482)
  %484 = getelementptr [6 x i8], [6 x i8]* @.str195, i32 0, i32 0
  %485 = call %nyx_string* @nyx_string_from_cstr(i8* %484)
  %486 = call i1 @check_at(%SharedEnv_parse* %env.param, i64 2, %nyx_string* %485)
  %487 = and i1 %483, %486
  br i1 %487, label %then123, label %else124
then123:
  %488 = load %nyx_string*, %nyx_string** %425
  %489 = call { i64, i8* }* @parse_struct_construction(%SharedEnv_parse* %env.param, %nyx_string* %488)
  ret { i64, i8* }* %489
else124:
  br label %merge125
merge125:
  %490 = getelementptr [12 x i8], [12 x i8]* @.str196, i32 0, i32 0
  %491 = call %nyx_string* @nyx_string_from_cstr(i8* %490)
  %492 = call i1 @check_at(%SharedEnv_parse* %env.param, i64 1, %nyx_string* %491)
  br i1 %492, label %then126, label %else127
then126:
  %493 = load %nyx_string*, %nyx_string** %425
  %494 = call { i64, i8* }* @parse_struct_construction(%SharedEnv_parse* %env.param, %nyx_string* %493)
  ret { i64, i8* }* %494
else127:
  br label %merge128
merge128:
  br label %merge122
else121:
  br label %merge122
merge122:
  %495 = getelementptr [11 x i8], [11 x i8]* @.str197, i32 0, i32 0
  %496 = call %nyx_string* @nyx_string_from_cstr(i8* %495)
  %497 = call { i64, i8* }* @nyx_array_new_ptr()
  %498 = load %nyx_string*, %nyx_string** %425
  %499 = ptrtoint %nyx_string* %498 to i64
  call void @nyx_array_push({ i64, i8* }* %497, i64 %499)
  %500 = call { i64, i8* }* @make_astnode(%nyx_string* %496, { i64, i8* }* %497)
  ret { i64, i8* }* %500
else97:
  br label %merge98
merge98:
  %501 = getelementptr [13 x i8], [13 x i8]* @.str198, i32 0, i32 0
  %502 = call %nyx_string* @nyx_string_from_cstr(i8* %501)
  %503 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %502)
  br i1 %503, label %then129, label %else130
then129:
  %504 = call { i64, i8* }* @parse_array_literal(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %504
else130:
  br label %merge131
merge131:
  %505 = getelementptr [6 x i8], [6 x i8]* @.str199, i32 0, i32 0
  %506 = call %nyx_string* @nyx_string_from_cstr(i8* %505)
  %507 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %506)
  br i1 %507, label %then132, label %else133
then132:
  %508 = call { i64, i8* }* @parse_match(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %508
else133:
  br label %merge134
merge134:
  %509 = getelementptr [11 x i8], [11 x i8]* @.str200, i32 0, i32 0
  %510 = call %nyx_string* @nyx_string_from_cstr(i8* %509)
  %511 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %510)
  br i1 %511, label %then135, label %else136
then135:
  %512 = call %Token @advance(%SharedEnv_parse* %env.param)
  %513 = call { i64, i8* }* @parse_expression(%SharedEnv_parse* %env.param)
  %514 = alloca { i64, i8* }*
  store { i64, i8* }* %513, { i64, i8* }** %514
  %515 = getelementptr [6 x i8], [6 x i8]* @.str201, i32 0, i32 0
  %516 = call %nyx_string* @nyx_string_from_cstr(i8* %515)
  %517 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %516)
  br i1 %517, label %then138, label %else139
then138:
  %518 = call { i64, i8* }* @nyx_array_new_ptr()
  %519 = load { i64, i8* }*, { i64, i8* }** %514
  %520 = bitcast { i64, i8* }* %519 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %518, i8* %520)
  %521 = alloca { i64, i8* }*
  store { i64, i8* }* %518, { i64, i8* }** %521
  br label %while_cond141
while_cond141:
  %522 = getelementptr [6 x i8], [6 x i8]* @.str202, i32 0, i32 0
  %523 = call %nyx_string* @nyx_string_from_cstr(i8* %522)
  %524 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %523)
  br i1 %524, label %while_body142, label %while_end143
while_body142:
  %525 = call %Token @advance(%SharedEnv_parse* %env.param)
  %526 = load { i64, i8* }*, { i64, i8* }** %521
  %527 = call { i64, i8* }* @parse_expression(%SharedEnv_parse* %env.param)
  %528 = ptrtoint { i64, i8* }* %527 to i64
  call void @nyx_array_push({ i64, i8* }* %526, i64 %528)
  br label %while_cond141
while_end143:
  %529 = getelementptr [12 x i8], [12 x i8]* @.str203, i32 0, i32 0
  %530 = call %nyx_string* @nyx_string_from_cstr(i8* %529)
  %531 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %530)
  %532 = getelementptr [10 x i8], [10 x i8]* @.str204, i32 0, i32 0
  %533 = call %nyx_string* @nyx_string_from_cstr(i8* %532)
  %534 = call { i64, i8* }* @nyx_array_new_ptr()
  %535 = load { i64, i8* }*, { i64, i8* }** %521
  %536 = bitcast { i64, i8* }* %535 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %534, i8* %536)
  %537 = call { i64, i8* }* @make_astnode(%nyx_string* %533, { i64, i8* }* %534)
  ret { i64, i8* }* %537
else139:
  br label %merge140
merge140:
  %538 = getelementptr [12 x i8], [12 x i8]* @.str205, i32 0, i32 0
  %539 = call %nyx_string* @nyx_string_from_cstr(i8* %538)
  %540 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %539)
  %541 = load { i64, i8* }*, { i64, i8* }** %514
  ret { i64, i8* }* %541
else136:
  br label %merge137
merge137:
  %542 = getelementptr [3 x i8], [3 x i8]* @.str206, i32 0, i32 0
  %543 = call %nyx_string* @nyx_string_from_cstr(i8* %542)
  %544 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %543)
  br i1 %544, label %then144, label %else145
then144:
  %545 = call %Token @advance(%SharedEnv_parse* %env.param)
  %546 = load { i64, i8* }*, { i64, i8* }** %8
  %547 = call i64 @nyx_array_get({ i64, i8* }* %546, i64 0)
  %548 = alloca i64
  store i64 %547, i64* %548
  %549 = load { i64, i8* }*, { i64, i8* }** %8
  %550 = load { i64, i8* }*, { i64, i8* }** %8
  %551 = call i64 @nyx_array_get({ i64, i8* }* %550, i64 0)
  %552 = add i64 %551, 1
  call void @nyx_array_set({ i64, i8* }* %549, i64 0, i64 %552)
  %553 = getelementptr [10 x i8], [10 x i8]* @.str207, i32 0, i32 0
  %554 = call %nyx_string* @nyx_string_from_cstr(i8* %553)
  %555 = load i64, i64* %548
  %556 = call %nyx_string* @nyx_string_from_int(i64 %555)
  %557 = call %nyx_string* @nyx_string_concat(%nyx_string* %554, %nyx_string* %556)
  %558 = alloca %nyx_string*
  store %nyx_string* %557, %nyx_string** %558
  %559 = getelementptr [11 x i8], [11 x i8]* @.str208, i32 0, i32 0
  %560 = call %nyx_string* @nyx_string_from_cstr(i8* %559)
  %561 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %560)
  %562 = call { i64, i8* }* @nyx_array_new_ptr()
  %563 = alloca { i64, i8* }*
  store { i64, i8* }* %562, { i64, i8* }** %563
  %564 = alloca i1
  store i1 0, i1* %564
  br label %while_cond147
while_cond147:
  %565 = load i1, i1* %564
  %566 = xor i1 %565, true
  br i1 %566, label %while_body148, label %while_end149
while_body148:
  %567 = getelementptr [12 x i8], [12 x i8]* @.str209, i32 0, i32 0
  %568 = call %nyx_string* @nyx_string_from_cstr(i8* %567)
  %569 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %568)
  br i1 %569, label %then150, label %else151
then150:
  %570 = call %Token @advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %564
  br label %merge152
else151:
  %571 = load { i64, i8* }*, { i64, i8* }** %563
  %572 = call i64 @nyx_array_length({ i64, i8* }* %571)
  %573 = icmp sgt i64 %572, 0
  br i1 %573, label %then153, label %else154
then153:
  %574 = getelementptr [6 x i8], [6 x i8]* @.str210, i32 0, i32 0
  %575 = call %nyx_string* @nyx_string_from_cstr(i8* %574)
  %576 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %575)
  br label %merge155
else154:
  br label %merge155
merge155:
  %577 = getelementptr [11 x i8], [11 x i8]* @.str211, i32 0, i32 0
  %578 = call %nyx_string* @nyx_string_from_cstr(i8* %577)
  %579 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %578)
  %580 = alloca %Token
  store %Token %579, %Token* %580
  %581 = load %Token, %Token* %580
  %582 = call %nyx_string* @get_token_value(%Token %581)
  %583 = alloca %nyx_string*
  store %nyx_string* %582, %nyx_string** %583
  %584 = getelementptr [4 x i8], [4 x i8]* @.str212, i32 0, i32 0
  %585 = call %nyx_string* @nyx_string_from_cstr(i8* %584)
  %586 = alloca %nyx_string*
  store %nyx_string* %585, %nyx_string** %586
  %587 = getelementptr [6 x i8], [6 x i8]* @.str213, i32 0, i32 0
  %588 = call %nyx_string* @nyx_string_from_cstr(i8* %587)
  %589 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %588)
  br i1 %589, label %then156, label %else157
then156:
  %590 = call %Token @advance(%SharedEnv_parse* %env.param)
  %591 = call %nyx_string* @parse_type_annotation(%SharedEnv_parse* %env.param)
  store %nyx_string* %591, %nyx_string** %586
  br label %merge158
else157:
  br label %merge158
merge158:
  %592 = load { i64, i8* }*, { i64, i8* }** %563
  %593 = call { i64, i8* }* @nyx_array_new_ptr()
  %594 = load %nyx_string*, %nyx_string** %583
  %595 = ptrtoint %nyx_string* %594 to i64
  call void @nyx_array_push({ i64, i8* }* %593, i64 %595)
  %596 = load %nyx_string*, %nyx_string** %586
  %597 = ptrtoint %nyx_string* %596 to i64
  call void @nyx_array_push({ i64, i8* }* %593, i64 %597)
  %598 = ptrtoint { i64, i8* }* %593 to i64
  call void @nyx_array_push({ i64, i8* }* %592, i64 %598)
  br label %merge152
merge152:
  br label %while_cond147
while_end149:
  %599 = getelementptr [1 x i8], [1 x i8]* @.str214, i32 0, i32 0
  %600 = call %nyx_string* @nyx_string_from_cstr(i8* %599)
  %601 = alloca %nyx_string*
  store %nyx_string* %600, %nyx_string** %601
  %602 = getelementptr [6 x i8], [6 x i8]* @.str215, i32 0, i32 0
  %603 = call %nyx_string* @nyx_string_from_cstr(i8* %602)
  %604 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %603)
  br i1 %604, label %then159, label %else160
then159:
  %605 = call %Token @advance(%SharedEnv_parse* %env.param)
  %606 = call %nyx_string* @parse_type_annotation(%SharedEnv_parse* %env.param)
  store %nyx_string* %606, %nyx_string** %601
  br label %merge161
else160:
  br label %merge161
merge161:
  %607 = call { i64, i8* }* @parse_block(%SharedEnv_parse* %env.param)
  %608 = alloca { i64, i8* }*
  store { i64, i8* }* %607, { i64, i8* }** %608
  %609 = getelementptr [9 x i8], [9 x i8]* @.str216, i32 0, i32 0
  %610 = call %nyx_string* @nyx_string_from_cstr(i8* %609)
  %611 = call { i64, i8* }* @nyx_array_new_ptr()
  %612 = load %nyx_string*, %nyx_string** %558
  %613 = ptrtoint %nyx_string* %612 to i64
  call void @nyx_array_push({ i64, i8* }* %611, i64 %613)
  %614 = load { i64, i8* }*, { i64, i8* }** %563
  %615 = bitcast { i64, i8* }* %614 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %611, i8* %615)
  %616 = load %nyx_string*, %nyx_string** %601
  %617 = ptrtoint %nyx_string* %616 to i64
  call void @nyx_array_push({ i64, i8* }* %611, i64 %617)
  %618 = load { i64, i8* }*, { i64, i8* }** %608
  %619 = bitcast { i64, i8* }* %618 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %611, i8* %619)
  %620 = call { i64, i8* }* @nyx_array_new_ptr()
  %621 = bitcast { i64, i8* }* %620 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %611, i8* %621)
  %622 = call { i64, i8* }* @make_astnode(%nyx_string* %610, { i64, i8* }* %611)
  %623 = alloca { i64, i8* }*
  store { i64, i8* }* %622, { i64, i8* }** %623
  %624 = load { i64, i8* }*, { i64, i8* }** %7
  %625 = load { i64, i8* }*, { i64, i8* }** %623
  %626 = ptrtoint { i64, i8* }* %625 to i64
  call void @nyx_array_push({ i64, i8* }* %624, i64 %626)
  %627 = getelementptr [11 x i8], [11 x i8]* @.str217, i32 0, i32 0
  %628 = call %nyx_string* @nyx_string_from_cstr(i8* %627)
  %629 = call { i64, i8* }* @nyx_array_new_ptr()
  %630 = load %nyx_string*, %nyx_string** %558
  %631 = ptrtoint %nyx_string* %630 to i64
  call void @nyx_array_push({ i64, i8* }* %629, i64 %631)
  %632 = call { i64, i8* }* @make_astnode(%nyx_string* %628, { i64, i8* }* %629)
  ret { i64, i8* }* %632
else145:
  br label %merge146
merge146:
  %633 = getelementptr [35 x i8], [35 x i8]* @.str218, i32 0, i32 0
  %634 = call %nyx_string* @nyx_string_from_cstr(i8* %633)
  %635 = call i8* @nyx_string_to_cstr(%nyx_string* %634)
  call void @nyx_print_string(i8* %635)
  %636 = call %Token @advance(%SharedEnv_parse* %env.param)
  %637 = getelementptr [6 x i8], [6 x i8]* @.str219, i32 0, i32 0
  %638 = call %nyx_string* @nyx_string_from_cstr(i8* %637)
  %639 = call { i64, i8* }* @nyx_array_new_ptr()
  %640 = call { i64, i8* }* @make_astnode(%nyx_string* %638, { i64, i8* }* %639)
  ret { i64, i8* }* %640
}

define internal { i64, i8* }* @parse_array_literal(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = getelementptr [13 x i8], [13 x i8]* @.str220, i32 0, i32 0
  %15 = call %nyx_string* @nyx_string_from_cstr(i8* %14)
  %16 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %15)
  %17 = call { i64, i8* }* @nyx_array_new_ptr()
  %18 = alloca { i64, i8* }*
  store { i64, i8* }* %17, { i64, i8* }** %18
  %19 = alloca i1
  store i1 0, i1* %19
  br label %while_cond0
while_cond0:
  %20 = load i1, i1* %19
  %21 = xor i1 %20, true
  br i1 %21, label %while_body1, label %while_end2
while_body1:
  %22 = getelementptr [14 x i8], [14 x i8]* @.str221, i32 0, i32 0
  %23 = call %nyx_string* @nyx_string_from_cstr(i8* %22)
  %24 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %23)
  br i1 %24, label %then3, label %else4
then3:
  %25 = call %Token @advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %19
  br label %merge5
else4:
  %26 = load { i64, i8* }*, { i64, i8* }** %18
  %27 = call i64 @nyx_array_length({ i64, i8* }* %26)
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %then6, label %else7
then6:
  %29 = getelementptr [6 x i8], [6 x i8]* @.str222, i32 0, i32 0
  %30 = call %nyx_string* @nyx_string_from_cstr(i8* %29)
  %31 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %30)
  br label %merge8
else7:
  br label %merge8
merge8:
  %32 = load { i64, i8* }*, { i64, i8* }** %18
  %33 = call { i64, i8* }* @parse_expression(%SharedEnv_parse* %env.param)
  %34 = ptrtoint { i64, i8* }* %33 to i64
  call void @nyx_array_push({ i64, i8* }* %32, i64 %34)
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %35 = getelementptr [6 x i8], [6 x i8]* @.str223, i32 0, i32 0
  %36 = call %nyx_string* @nyx_string_from_cstr(i8* %35)
  %37 = call { i64, i8* }* @nyx_array_new_ptr()
  %38 = load { i64, i8* }*, { i64, i8* }** %18
  %39 = bitcast { i64, i8* }* %38 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %37, i8* %39)
  %40 = call { i64, i8* }* @make_astnode(%nyx_string* %36, { i64, i8* }* %37)
  ret { i64, i8* }* %40
}

define internal { i64, i8* }* @parse_enum(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = getelementptr [5 x i8], [5 x i8]* @.str224, i32 0, i32 0
  %15 = call %nyx_string* @nyx_string_from_cstr(i8* %14)
  %16 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %15)
  %17 = getelementptr [11 x i8], [11 x i8]* @.str225, i32 0, i32 0
  %18 = call %nyx_string* @nyx_string_from_cstr(i8* %17)
  %19 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %18)
  %20 = alloca %Token
  store %Token %19, %Token* %20
  %21 = load %Token, %Token* %20
  %22 = call %nyx_string* @get_token_value(%Token %21)
  %23 = alloca %nyx_string*
  store %nyx_string* %22, %nyx_string** %23
  %24 = call { i64, i8* }* @nyx_array_new_ptr()
  %25 = alloca { i64, i8* }*
  store { i64, i8* }* %24, { i64, i8* }** %25
  %26 = getelementptr [5 x i8], [5 x i8]* @.str226, i32 0, i32 0
  %27 = call %nyx_string* @nyx_string_from_cstr(i8* %26)
  %28 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %27)
  br i1 %28, label %then0, label %else1
then0:
  %29 = call %Token @advance(%SharedEnv_parse* %env.param)
  %30 = getelementptr [11 x i8], [11 x i8]* @.str227, i32 0, i32 0
  %31 = call %nyx_string* @nyx_string_from_cstr(i8* %30)
  %32 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %31)
  %33 = alloca %Token
  store %Token %32, %Token* %33
  %34 = load { i64, i8* }*, { i64, i8* }** %25
  %35 = load %Token, %Token* %33
  %36 = call %nyx_string* @get_token_value(%Token %35)
  %37 = ptrtoint %nyx_string* %36 to i64
  call void @nyx_array_push({ i64, i8* }* %34, i64 %37)
  %38 = alloca i1
  store i1 0, i1* %38
  br label %while_cond3
while_cond3:
  %39 = load i1, i1* %38
  %40 = xor i1 %39, true
  br i1 %40, label %while_body4, label %while_end5
while_body4:
  %41 = getelementptr [6 x i8], [6 x i8]* @.str228, i32 0, i32 0
  %42 = call %nyx_string* @nyx_string_from_cstr(i8* %41)
  %43 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %42)
  br i1 %43, label %then6, label %else7
then6:
  %44 = call %Token @advance(%SharedEnv_parse* %env.param)
  %45 = getelementptr [11 x i8], [11 x i8]* @.str229, i32 0, i32 0
  %46 = call %nyx_string* @nyx_string_from_cstr(i8* %45)
  %47 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %46)
  %48 = alloca %Token
  store %Token %47, %Token* %48
  %49 = load { i64, i8* }*, { i64, i8* }** %25
  %50 = load %Token, %Token* %48
  %51 = call %nyx_string* @get_token_value(%Token %50)
  %52 = ptrtoint %nyx_string* %51 to i64
  call void @nyx_array_push({ i64, i8* }* %49, i64 %52)
  br label %merge8
else7:
  store i1 1, i1* %38
  br label %merge8
merge8:
  br label %while_cond3
while_end5:
  %53 = getelementptr [8 x i8], [8 x i8]* @.str230, i32 0, i32 0
  %54 = call %nyx_string* @nyx_string_from_cstr(i8* %53)
  %55 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %54)
  br label %merge2
else1:
  br label %merge2
merge2:
  %56 = getelementptr [11 x i8], [11 x i8]* @.str231, i32 0, i32 0
  %57 = call %nyx_string* @nyx_string_from_cstr(i8* %56)
  %58 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %57)
  %59 = call { i64, i8* }* @nyx_array_new_ptr()
  %60 = alloca { i64, i8* }*
  store { i64, i8* }* %59, { i64, i8* }** %60
  %61 = alloca i1
  store i1 0, i1* %61
  br label %while_cond9
while_cond9:
  %62 = load i1, i1* %61
  %63 = xor i1 %62, true
  br i1 %63, label %while_body10, label %while_end11
while_body10:
  %64 = getelementptr [12 x i8], [12 x i8]* @.str232, i32 0, i32 0
  %65 = call %nyx_string* @nyx_string_from_cstr(i8* %64)
  %66 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %65)
  br i1 %66, label %then12, label %else13
then12:
  %67 = call %Token @advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %61
  br label %merge14
else13:
  %68 = load { i64, i8* }*, { i64, i8* }** %60
  %69 = call i64 @nyx_array_length({ i64, i8* }* %68)
  %70 = icmp sgt i64 %69, 0
  br i1 %70, label %then15, label %else16
then15:
  %71 = getelementptr [6 x i8], [6 x i8]* @.str233, i32 0, i32 0
  %72 = call %nyx_string* @nyx_string_from_cstr(i8* %71)
  %73 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %72)
  br label %merge17
else16:
  br label %merge17
merge17:
  %74 = getelementptr [12 x i8], [12 x i8]* @.str234, i32 0, i32 0
  %75 = call %nyx_string* @nyx_string_from_cstr(i8* %74)
  %76 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %75)
  br i1 %76, label %then18, label %else19
then18:
  %77 = call %Token @advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %61
  br label %merge20
else19:
  %78 = getelementptr [11 x i8], [11 x i8]* @.str235, i32 0, i32 0
  %79 = call %nyx_string* @nyx_string_from_cstr(i8* %78)
  %80 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %79)
  %81 = alloca %Token
  store %Token %80, %Token* %81
  %82 = load %Token, %Token* %81
  %83 = call %nyx_string* @get_token_value(%Token %82)
  %84 = alloca %nyx_string*
  store %nyx_string* %83, %nyx_string** %84
  %85 = call { i64, i8* }* @nyx_array_new_ptr()
  %86 = alloca { i64, i8* }*
  store { i64, i8* }* %85, { i64, i8* }** %86
  %87 = getelementptr [11 x i8], [11 x i8]* @.str236, i32 0, i32 0
  %88 = call %nyx_string* @nyx_string_from_cstr(i8* %87)
  %89 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %88)
  br i1 %89, label %then21, label %else22
then21:
  %90 = call %Token @advance(%SharedEnv_parse* %env.param)
  %91 = alloca i1
  store i1 0, i1* %91
  br label %while_cond24
while_cond24:
  %92 = load i1, i1* %91
  %93 = xor i1 %92, true
  br i1 %93, label %while_body25, label %while_end26
while_body25:
  %94 = getelementptr [12 x i8], [12 x i8]* @.str237, i32 0, i32 0
  %95 = call %nyx_string* @nyx_string_from_cstr(i8* %94)
  %96 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %95)
  br i1 %96, label %then27, label %else28
then27:
  %97 = call %Token @advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %91
  br label %merge29
else28:
  %98 = load { i64, i8* }*, { i64, i8* }** %86
  %99 = call i64 @nyx_array_length({ i64, i8* }* %98)
  %100 = icmp sgt i64 %99, 0
  br i1 %100, label %then30, label %else31
then30:
  %101 = getelementptr [6 x i8], [6 x i8]* @.str238, i32 0, i32 0
  %102 = call %nyx_string* @nyx_string_from_cstr(i8* %101)
  %103 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %102)
  br label %merge32
else31:
  br label %merge32
merge32:
  %104 = getelementptr [11 x i8], [11 x i8]* @.str239, i32 0, i32 0
  %105 = call %nyx_string* @nyx_string_from_cstr(i8* %104)
  %106 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %105)
  %107 = alloca %Token
  store %Token %106, %Token* %107
  %108 = load { i64, i8* }*, { i64, i8* }** %86
  %109 = load %Token, %Token* %107
  %110 = call %nyx_string* @get_token_value(%Token %109)
  %111 = ptrtoint %nyx_string* %110 to i64
  call void @nyx_array_push({ i64, i8* }* %108, i64 %111)
  br label %merge29
merge29:
  br label %while_cond24
while_end26:
  br label %merge23
else22:
  br label %merge23
merge23:
  %112 = call { i64, i8* }* @nyx_array_new_ptr()
  %113 = alloca { i64, i8* }*
  store { i64, i8* }* %112, { i64, i8* }** %113
  %114 = load { i64, i8* }*, { i64, i8* }** %113
  %115 = load %nyx_string*, %nyx_string** %84
  %116 = ptrtoint %nyx_string* %115 to i64
  call void @nyx_array_push({ i64, i8* }* %114, i64 %116)
  %117 = load { i64, i8* }*, { i64, i8* }** %113
  %118 = load { i64, i8* }*, { i64, i8* }** %86
  %119 = ptrtoint { i64, i8* }* %118 to i64
  call void @nyx_array_push({ i64, i8* }* %117, i64 %119)
  %120 = load { i64, i8* }*, { i64, i8* }** %60
  %121 = load { i64, i8* }*, { i64, i8* }** %113
  %122 = ptrtoint { i64, i8* }* %121 to i64
  call void @nyx_array_push({ i64, i8* }* %120, i64 %122)
  br label %merge20
merge20:
  br label %merge14
merge14:
  br label %while_cond9
while_end11:
  %123 = getelementptr [9 x i8], [9 x i8]* @.str240, i32 0, i32 0
  %124 = call %nyx_string* @nyx_string_from_cstr(i8* %123)
  %125 = call { i64, i8* }* @nyx_array_new_ptr()
  %126 = load %nyx_string*, %nyx_string** %23
  %127 = ptrtoint %nyx_string* %126 to i64
  call void @nyx_array_push({ i64, i8* }* %125, i64 %127)
  %128 = load { i64, i8* }*, { i64, i8* }** %60
  %129 = bitcast { i64, i8* }* %128 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %125, i8* %129)
  %130 = load { i64, i8* }*, { i64, i8* }** %25
  %131 = bitcast { i64, i8* }* %130 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %125, i8* %131)
  %132 = call { i64, i8* }* @make_astnode(%nyx_string* %124, { i64, i8* }* %125)
  ret { i64, i8* }* %132
}

define internal { i64, i8* }* @parse_single_pattern(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = getelementptr [9 x i8], [9 x i8]* @.str241, i32 0, i32 0
  %15 = call %nyx_string* @nyx_string_from_cstr(i8* %14)
  %16 = call { i64, i8* }* @nyx_array_new_ptr()
  %17 = call { i64, i8* }* @make_astnode(%nyx_string* %15, { i64, i8* }* %16)
  %18 = alloca { i64, i8* }*
  store { i64, i8* }* %17, { i64, i8* }** %18
  %19 = getelementptr [7 x i8], [7 x i8]* @.str242, i32 0, i32 0
  %20 = call %nyx_string* @nyx_string_from_cstr(i8* %19)
  %21 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %20)
  br i1 %21, label %then0, label %else1
then0:
  %22 = call %Token @advance(%SharedEnv_parse* %env.param)
  %23 = alloca %Token
  store %Token %22, %Token* %23
  %24 = load %Token, %Token* %23
  %25 = call %nyx_string* @get_token_value(%Token %24)
  %26 = alloca %nyx_string*
  store %nyx_string* %25, %nyx_string** %26
  %27 = load %nyx_string*, %nyx_string** %26
  %28 = getelementptr [2 x i8], [2 x i8]* @.str243, i32 0, i32 0
  %29 = call %nyx_string* @nyx_string_from_cstr(i8* %28)
  %30 = call i64 @nyx_string_index_of(%nyx_string* %27, %nyx_string* %29)
  %31 = icmp sge i64 %30, 0
  br i1 %31, label %then3, label %else4
then3:
  %32 = getelementptr [16 x i8], [16 x i8]* @.str244, i32 0, i32 0
  %33 = call %nyx_string* @nyx_string_from_cstr(i8* %32)
  %34 = call { i64, i8* }* @nyx_array_new_ptr()
  %35 = load %nyx_string*, %nyx_string** %26
  %36 = ptrtoint %nyx_string* %35 to i64
  call void @nyx_array_push({ i64, i8* }* %34, i64 %36)
  %37 = getelementptr [6 x i8], [6 x i8]* @.str245, i32 0, i32 0
  %38 = call %nyx_string* @nyx_string_from_cstr(i8* %37)
  %39 = ptrtoint %nyx_string* %38 to i64
  call void @nyx_array_push({ i64, i8* }* %34, i64 %39)
  %40 = call { i64, i8* }* @make_astnode(%nyx_string* %33, { i64, i8* }* %34)
  ret { i64, i8* }* %40
else4:
  br label %merge5
merge5:
  %41 = getelementptr [16 x i8], [16 x i8]* @.str246, i32 0, i32 0
  %42 = call %nyx_string* @nyx_string_from_cstr(i8* %41)
  %43 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %42)
  br i1 %43, label %then6, label %else7
then6:
  %44 = call %Token @advance(%SharedEnv_parse* %env.param)
  %45 = getelementptr [1 x i8], [1 x i8]* @.str247, i32 0, i32 0
  %46 = call %nyx_string* @nyx_string_from_cstr(i8* %45)
  %47 = alloca %nyx_string*
  store %nyx_string* %46, %nyx_string** %47
  %48 = getelementptr [6 x i8], [6 x i8]* @.str248, i32 0, i32 0
  %49 = call %nyx_string* @nyx_string_from_cstr(i8* %48)
  %50 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %49)
  br i1 %50, label %then9, label %else10
then9:
  %51 = call %Token @advance(%SharedEnv_parse* %env.param)
  %52 = getelementptr [7 x i8], [7 x i8]* @.str249, i32 0, i32 0
  %53 = call %nyx_string* @nyx_string_from_cstr(i8* %52)
  %54 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %53)
  %55 = alloca %Token
  store %Token %54, %Token* %55
  %56 = getelementptr [2 x i8], [2 x i8]* @.str250, i32 0, i32 0
  %57 = call %nyx_string* @nyx_string_from_cstr(i8* %56)
  %58 = load %Token, %Token* %55
  %59 = call %nyx_string* @get_token_value(%Token %58)
  %60 = call %nyx_string* @nyx_string_concat(%nyx_string* %57, %nyx_string* %59)
  store %nyx_string* %60, %nyx_string** %47
  br label %merge11
else10:
  %61 = getelementptr [7 x i8], [7 x i8]* @.str251, i32 0, i32 0
  %62 = call %nyx_string* @nyx_string_from_cstr(i8* %61)
  %63 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %62)
  %64 = alloca %Token
  store %Token %63, %Token* %64
  %65 = load %Token, %Token* %64
  %66 = call %nyx_string* @get_token_value(%Token %65)
  store %nyx_string* %66, %nyx_string** %47
  br label %merge11
merge11:
  %67 = getelementptr [14 x i8], [14 x i8]* @.str252, i32 0, i32 0
  %68 = call %nyx_string* @nyx_string_from_cstr(i8* %67)
  %69 = call { i64, i8* }* @nyx_array_new_ptr()
  %70 = load %nyx_string*, %nyx_string** %26
  %71 = ptrtoint %nyx_string* %70 to i64
  call void @nyx_array_push({ i64, i8* }* %69, i64 %71)
  %72 = load %nyx_string*, %nyx_string** %47
  %73 = ptrtoint %nyx_string* %72 to i64
  call void @nyx_array_push({ i64, i8* }* %69, i64 %73)
  %74 = getelementptr [5 x i8], [5 x i8]* @.str253, i32 0, i32 0
  %75 = call %nyx_string* @nyx_string_from_cstr(i8* %74)
  %76 = ptrtoint %nyx_string* %75 to i64
  call void @nyx_array_push({ i64, i8* }* %69, i64 %76)
  %77 = getelementptr [4 x i8], [4 x i8]* @.str254, i32 0, i32 0
  %78 = call %nyx_string* @nyx_string_from_cstr(i8* %77)
  %79 = ptrtoint %nyx_string* %78 to i64
  call void @nyx_array_push({ i64, i8* }* %69, i64 %79)
  %80 = call { i64, i8* }* @make_astnode(%nyx_string* %68, { i64, i8* }* %69)
  ret { i64, i8* }* %80
else7:
  br label %merge8
merge8:
  %81 = getelementptr [6 x i8], [6 x i8]* @.str255, i32 0, i32 0
  %82 = call %nyx_string* @nyx_string_from_cstr(i8* %81)
  %83 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %82)
  br i1 %83, label %then12, label %else13
then12:
  %84 = call %Token @advance(%SharedEnv_parse* %env.param)
  %85 = getelementptr [1 x i8], [1 x i8]* @.str256, i32 0, i32 0
  %86 = call %nyx_string* @nyx_string_from_cstr(i8* %85)
  %87 = alloca %nyx_string*
  store %nyx_string* %86, %nyx_string** %87
  %88 = getelementptr [6 x i8], [6 x i8]* @.str257, i32 0, i32 0
  %89 = call %nyx_string* @nyx_string_from_cstr(i8* %88)
  %90 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %89)
  br i1 %90, label %then15, label %else16
then15:
  %91 = call %Token @advance(%SharedEnv_parse* %env.param)
  %92 = getelementptr [7 x i8], [7 x i8]* @.str258, i32 0, i32 0
  %93 = call %nyx_string* @nyx_string_from_cstr(i8* %92)
  %94 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %93)
  %95 = alloca %Token
  store %Token %94, %Token* %95
  %96 = getelementptr [2 x i8], [2 x i8]* @.str259, i32 0, i32 0
  %97 = call %nyx_string* @nyx_string_from_cstr(i8* %96)
  %98 = load %Token, %Token* %95
  %99 = call %nyx_string* @get_token_value(%Token %98)
  %100 = call %nyx_string* @nyx_string_concat(%nyx_string* %97, %nyx_string* %99)
  store %nyx_string* %100, %nyx_string** %87
  br label %merge17
else16:
  %101 = getelementptr [7 x i8], [7 x i8]* @.str260, i32 0, i32 0
  %102 = call %nyx_string* @nyx_string_from_cstr(i8* %101)
  %103 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %102)
  %104 = alloca %Token
  store %Token %103, %Token* %104
  %105 = load %Token, %Token* %104
  %106 = call %nyx_string* @get_token_value(%Token %105)
  store %nyx_string* %106, %nyx_string** %87
  br label %merge17
merge17:
  %107 = getelementptr [14 x i8], [14 x i8]* @.str261, i32 0, i32 0
  %108 = call %nyx_string* @nyx_string_from_cstr(i8* %107)
  %109 = call { i64, i8* }* @nyx_array_new_ptr()
  %110 = load %nyx_string*, %nyx_string** %26
  %111 = ptrtoint %nyx_string* %110 to i64
  call void @nyx_array_push({ i64, i8* }* %109, i64 %111)
  %112 = load %nyx_string*, %nyx_string** %87
  %113 = ptrtoint %nyx_string* %112 to i64
  call void @nyx_array_push({ i64, i8* }* %109, i64 %113)
  %114 = getelementptr [6 x i8], [6 x i8]* @.str262, i32 0, i32 0
  %115 = call %nyx_string* @nyx_string_from_cstr(i8* %114)
  %116 = ptrtoint %nyx_string* %115 to i64
  call void @nyx_array_push({ i64, i8* }* %109, i64 %116)
  %117 = getelementptr [4 x i8], [4 x i8]* @.str263, i32 0, i32 0
  %118 = call %nyx_string* @nyx_string_from_cstr(i8* %117)
  %119 = ptrtoint %nyx_string* %118 to i64
  call void @nyx_array_push({ i64, i8* }* %109, i64 %119)
  %120 = call { i64, i8* }* @make_astnode(%nyx_string* %108, { i64, i8* }* %109)
  ret { i64, i8* }* %120
else13:
  br label %merge14
merge14:
  %121 = getelementptr [16 x i8], [16 x i8]* @.str264, i32 0, i32 0
  %122 = call %nyx_string* @nyx_string_from_cstr(i8* %121)
  %123 = call { i64, i8* }* @nyx_array_new_ptr()
  %124 = load %nyx_string*, %nyx_string** %26
  %125 = ptrtoint %nyx_string* %124 to i64
  call void @nyx_array_push({ i64, i8* }* %123, i64 %125)
  %126 = getelementptr [4 x i8], [4 x i8]* @.str265, i32 0, i32 0
  %127 = call %nyx_string* @nyx_string_from_cstr(i8* %126)
  %128 = ptrtoint %nyx_string* %127 to i64
  call void @nyx_array_push({ i64, i8* }* %123, i64 %128)
  %129 = call { i64, i8* }* @make_astnode(%nyx_string* %122, { i64, i8* }* %123)
  ret { i64, i8* }* %129
else1:
  br label %merge2
merge2:
  %130 = getelementptr [7 x i8], [7 x i8]* @.str266, i32 0, i32 0
  %131 = call %nyx_string* @nyx_string_from_cstr(i8* %130)
  %132 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %131)
  br i1 %132, label %then18, label %else19
then18:
  %133 = call %Token @advance(%SharedEnv_parse* %env.param)
  %134 = alloca %Token
  store %Token %133, %Token* %134
  %135 = getelementptr [16 x i8], [16 x i8]* @.str267, i32 0, i32 0
  %136 = call %nyx_string* @nyx_string_from_cstr(i8* %135)
  %137 = call { i64, i8* }* @nyx_array_new_ptr()
  %138 = load %Token, %Token* %134
  %139 = call %nyx_string* @get_token_value(%Token %138)
  %140 = ptrtoint %nyx_string* %139 to i64
  call void @nyx_array_push({ i64, i8* }* %137, i64 %140)
  %141 = getelementptr [7 x i8], [7 x i8]* @.str268, i32 0, i32 0
  %142 = call %nyx_string* @nyx_string_from_cstr(i8* %141)
  %143 = ptrtoint %nyx_string* %142 to i64
  call void @nyx_array_push({ i64, i8* }* %137, i64 %143)
  %144 = call { i64, i8* }* @make_astnode(%nyx_string* %136, { i64, i8* }* %137)
  ret { i64, i8* }* %144
else19:
  br label %merge20
merge20:
  %145 = getelementptr [5 x i8], [5 x i8]* @.str269, i32 0, i32 0
  %146 = call %nyx_string* @nyx_string_from_cstr(i8* %145)
  %147 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %146)
  br i1 %147, label %then21, label %else22
then21:
  %148 = call %Token @advance(%SharedEnv_parse* %env.param)
  %149 = getelementptr [16 x i8], [16 x i8]* @.str270, i32 0, i32 0
  %150 = call %nyx_string* @nyx_string_from_cstr(i8* %149)
  %151 = call { i64, i8* }* @nyx_array_new_ptr()
  %152 = getelementptr [5 x i8], [5 x i8]* @.str271, i32 0, i32 0
  %153 = call %nyx_string* @nyx_string_from_cstr(i8* %152)
  %154 = ptrtoint %nyx_string* %153 to i64
  call void @nyx_array_push({ i64, i8* }* %151, i64 %154)
  %155 = getelementptr [5 x i8], [5 x i8]* @.str272, i32 0, i32 0
  %156 = call %nyx_string* @nyx_string_from_cstr(i8* %155)
  %157 = ptrtoint %nyx_string* %156 to i64
  call void @nyx_array_push({ i64, i8* }* %151, i64 %157)
  %158 = call { i64, i8* }* @make_astnode(%nyx_string* %150, { i64, i8* }* %151)
  ret { i64, i8* }* %158
else22:
  br label %merge23
merge23:
  %159 = getelementptr [6 x i8], [6 x i8]* @.str273, i32 0, i32 0
  %160 = call %nyx_string* @nyx_string_from_cstr(i8* %159)
  %161 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %160)
  br i1 %161, label %then24, label %else25
then24:
  %162 = call %Token @advance(%SharedEnv_parse* %env.param)
  %163 = getelementptr [16 x i8], [16 x i8]* @.str274, i32 0, i32 0
  %164 = call %nyx_string* @nyx_string_from_cstr(i8* %163)
  %165 = call { i64, i8* }* @nyx_array_new_ptr()
  %166 = getelementptr [6 x i8], [6 x i8]* @.str275, i32 0, i32 0
  %167 = call %nyx_string* @nyx_string_from_cstr(i8* %166)
  %168 = ptrtoint %nyx_string* %167 to i64
  call void @nyx_array_push({ i64, i8* }* %165, i64 %168)
  %169 = getelementptr [5 x i8], [5 x i8]* @.str276, i32 0, i32 0
  %170 = call %nyx_string* @nyx_string_from_cstr(i8* %169)
  %171 = ptrtoint %nyx_string* %170 to i64
  call void @nyx_array_push({ i64, i8* }* %165, i64 %171)
  %172 = call { i64, i8* }* @make_astnode(%nyx_string* %164, { i64, i8* }* %165)
  ret { i64, i8* }* %172
else25:
  br label %merge26
merge26:
  %173 = getelementptr [6 x i8], [6 x i8]* @.str277, i32 0, i32 0
  %174 = call %nyx_string* @nyx_string_from_cstr(i8* %173)
  %175 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %174)
  br i1 %175, label %then27, label %else28
then27:
  %176 = call %Token @advance(%SharedEnv_parse* %env.param)
  %177 = getelementptr [7 x i8], [7 x i8]* @.str278, i32 0, i32 0
  %178 = call %nyx_string* @nyx_string_from_cstr(i8* %177)
  %179 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %178)
  br i1 %179, label %then30, label %else31
then30:
  %180 = call %Token @advance(%SharedEnv_parse* %env.param)
  %181 = alloca %Token
  store %Token %180, %Token* %181
  %182 = load %Token, %Token* %181
  %183 = call %nyx_string* @get_token_value(%Token %182)
  %184 = alloca %nyx_string*
  store %nyx_string* %183, %nyx_string** %184
  %185 = load %nyx_string*, %nyx_string** %184
  %186 = getelementptr [2 x i8], [2 x i8]* @.str279, i32 0, i32 0
  %187 = call %nyx_string* @nyx_string_from_cstr(i8* %186)
  %188 = call i64 @nyx_string_index_of(%nyx_string* %185, %nyx_string* %187)
  %189 = icmp sge i64 %188, 0
  br i1 %189, label %then33, label %else34
then33:
  %190 = getelementptr [16 x i8], [16 x i8]* @.str280, i32 0, i32 0
  %191 = call %nyx_string* @nyx_string_from_cstr(i8* %190)
  %192 = call { i64, i8* }* @nyx_array_new_ptr()
  %193 = getelementptr [2 x i8], [2 x i8]* @.str281, i32 0, i32 0
  %194 = call %nyx_string* @nyx_string_from_cstr(i8* %193)
  %195 = load %nyx_string*, %nyx_string** %184
  %196 = call %nyx_string* @nyx_string_concat(%nyx_string* %194, %nyx_string* %195)
  %197 = ptrtoint %nyx_string* %196 to i64
  call void @nyx_array_push({ i64, i8* }* %192, i64 %197)
  %198 = getelementptr [6 x i8], [6 x i8]* @.str282, i32 0, i32 0
  %199 = call %nyx_string* @nyx_string_from_cstr(i8* %198)
  %200 = ptrtoint %nyx_string* %199 to i64
  call void @nyx_array_push({ i64, i8* }* %192, i64 %200)
  %201 = call { i64, i8* }* @make_astnode(%nyx_string* %191, { i64, i8* }* %192)
  ret { i64, i8* }* %201
else34:
  br label %merge35
merge35:
  %202 = getelementptr [16 x i8], [16 x i8]* @.str283, i32 0, i32 0
  %203 = call %nyx_string* @nyx_string_from_cstr(i8* %202)
  %204 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %203)
  br i1 %204, label %then36, label %else37
then36:
  %205 = call %Token @advance(%SharedEnv_parse* %env.param)
  %206 = getelementptr [1 x i8], [1 x i8]* @.str284, i32 0, i32 0
  %207 = call %nyx_string* @nyx_string_from_cstr(i8* %206)
  %208 = alloca %nyx_string*
  store %nyx_string* %207, %nyx_string** %208
  %209 = getelementptr [6 x i8], [6 x i8]* @.str285, i32 0, i32 0
  %210 = call %nyx_string* @nyx_string_from_cstr(i8* %209)
  %211 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %210)
  br i1 %211, label %then39, label %else40
then39:
  %212 = call %Token @advance(%SharedEnv_parse* %env.param)
  %213 = getelementptr [7 x i8], [7 x i8]* @.str286, i32 0, i32 0
  %214 = call %nyx_string* @nyx_string_from_cstr(i8* %213)
  %215 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %214)
  %216 = alloca %Token
  store %Token %215, %Token* %216
  %217 = getelementptr [2 x i8], [2 x i8]* @.str287, i32 0, i32 0
  %218 = call %nyx_string* @nyx_string_from_cstr(i8* %217)
  %219 = load %Token, %Token* %216
  %220 = call %nyx_string* @get_token_value(%Token %219)
  %221 = call %nyx_string* @nyx_string_concat(%nyx_string* %218, %nyx_string* %220)
  store %nyx_string* %221, %nyx_string** %208
  br label %merge41
else40:
  %222 = getelementptr [7 x i8], [7 x i8]* @.str288, i32 0, i32 0
  %223 = call %nyx_string* @nyx_string_from_cstr(i8* %222)
  %224 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %223)
  %225 = alloca %Token
  store %Token %224, %Token* %225
  %226 = load %Token, %Token* %225
  %227 = call %nyx_string* @get_token_value(%Token %226)
  store %nyx_string* %227, %nyx_string** %208
  br label %merge41
merge41:
  %228 = getelementptr [14 x i8], [14 x i8]* @.str289, i32 0, i32 0
  %229 = call %nyx_string* @nyx_string_from_cstr(i8* %228)
  %230 = call { i64, i8* }* @nyx_array_new_ptr()
  %231 = getelementptr [2 x i8], [2 x i8]* @.str290, i32 0, i32 0
  %232 = call %nyx_string* @nyx_string_from_cstr(i8* %231)
  %233 = load %nyx_string*, %nyx_string** %184
  %234 = call %nyx_string* @nyx_string_concat(%nyx_string* %232, %nyx_string* %233)
  %235 = ptrtoint %nyx_string* %234 to i64
  call void @nyx_array_push({ i64, i8* }* %230, i64 %235)
  %236 = load %nyx_string*, %nyx_string** %208
  %237 = ptrtoint %nyx_string* %236 to i64
  call void @nyx_array_push({ i64, i8* }* %230, i64 %237)
  %238 = getelementptr [5 x i8], [5 x i8]* @.str291, i32 0, i32 0
  %239 = call %nyx_string* @nyx_string_from_cstr(i8* %238)
  %240 = ptrtoint %nyx_string* %239 to i64
  call void @nyx_array_push({ i64, i8* }* %230, i64 %240)
  %241 = getelementptr [4 x i8], [4 x i8]* @.str292, i32 0, i32 0
  %242 = call %nyx_string* @nyx_string_from_cstr(i8* %241)
  %243 = ptrtoint %nyx_string* %242 to i64
  call void @nyx_array_push({ i64, i8* }* %230, i64 %243)
  %244 = call { i64, i8* }* @make_astnode(%nyx_string* %229, { i64, i8* }* %230)
  ret { i64, i8* }* %244
else37:
  br label %merge38
merge38:
  %245 = getelementptr [6 x i8], [6 x i8]* @.str293, i32 0, i32 0
  %246 = call %nyx_string* @nyx_string_from_cstr(i8* %245)
  %247 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %246)
  br i1 %247, label %then42, label %else43
then42:
  %248 = call %Token @advance(%SharedEnv_parse* %env.param)
  %249 = getelementptr [1 x i8], [1 x i8]* @.str294, i32 0, i32 0
  %250 = call %nyx_string* @nyx_string_from_cstr(i8* %249)
  %251 = alloca %nyx_string*
  store %nyx_string* %250, %nyx_string** %251
  %252 = getelementptr [6 x i8], [6 x i8]* @.str295, i32 0, i32 0
  %253 = call %nyx_string* @nyx_string_from_cstr(i8* %252)
  %254 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %253)
  br i1 %254, label %then45, label %else46
then45:
  %255 = call %Token @advance(%SharedEnv_parse* %env.param)
  %256 = getelementptr [7 x i8], [7 x i8]* @.str296, i32 0, i32 0
  %257 = call %nyx_string* @nyx_string_from_cstr(i8* %256)
  %258 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %257)
  %259 = alloca %Token
  store %Token %258, %Token* %259
  %260 = getelementptr [2 x i8], [2 x i8]* @.str297, i32 0, i32 0
  %261 = call %nyx_string* @nyx_string_from_cstr(i8* %260)
  %262 = load %Token, %Token* %259
  %263 = call %nyx_string* @get_token_value(%Token %262)
  %264 = call %nyx_string* @nyx_string_concat(%nyx_string* %261, %nyx_string* %263)
  store %nyx_string* %264, %nyx_string** %251
  br label %merge47
else46:
  %265 = getelementptr [7 x i8], [7 x i8]* @.str298, i32 0, i32 0
  %266 = call %nyx_string* @nyx_string_from_cstr(i8* %265)
  %267 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %266)
  %268 = alloca %Token
  store %Token %267, %Token* %268
  %269 = load %Token, %Token* %268
  %270 = call %nyx_string* @get_token_value(%Token %269)
  store %nyx_string* %270, %nyx_string** %251
  br label %merge47
merge47:
  %271 = getelementptr [14 x i8], [14 x i8]* @.str299, i32 0, i32 0
  %272 = call %nyx_string* @nyx_string_from_cstr(i8* %271)
  %273 = call { i64, i8* }* @nyx_array_new_ptr()
  %274 = getelementptr [2 x i8], [2 x i8]* @.str300, i32 0, i32 0
  %275 = call %nyx_string* @nyx_string_from_cstr(i8* %274)
  %276 = load %nyx_string*, %nyx_string** %184
  %277 = call %nyx_string* @nyx_string_concat(%nyx_string* %275, %nyx_string* %276)
  %278 = ptrtoint %nyx_string* %277 to i64
  call void @nyx_array_push({ i64, i8* }* %273, i64 %278)
  %279 = load %nyx_string*, %nyx_string** %251
  %280 = ptrtoint %nyx_string* %279 to i64
  call void @nyx_array_push({ i64, i8* }* %273, i64 %280)
  %281 = getelementptr [6 x i8], [6 x i8]* @.str301, i32 0, i32 0
  %282 = call %nyx_string* @nyx_string_from_cstr(i8* %281)
  %283 = ptrtoint %nyx_string* %282 to i64
  call void @nyx_array_push({ i64, i8* }* %273, i64 %283)
  %284 = getelementptr [4 x i8], [4 x i8]* @.str302, i32 0, i32 0
  %285 = call %nyx_string* @nyx_string_from_cstr(i8* %284)
  %286 = ptrtoint %nyx_string* %285 to i64
  call void @nyx_array_push({ i64, i8* }* %273, i64 %286)
  %287 = call { i64, i8* }* @make_astnode(%nyx_string* %272, { i64, i8* }* %273)
  ret { i64, i8* }* %287
else43:
  br label %merge44
merge44:
  %288 = getelementptr [16 x i8], [16 x i8]* @.str303, i32 0, i32 0
  %289 = call %nyx_string* @nyx_string_from_cstr(i8* %288)
  %290 = call { i64, i8* }* @nyx_array_new_ptr()
  %291 = getelementptr [2 x i8], [2 x i8]* @.str304, i32 0, i32 0
  %292 = call %nyx_string* @nyx_string_from_cstr(i8* %291)
  %293 = load %nyx_string*, %nyx_string** %184
  %294 = call %nyx_string* @nyx_string_concat(%nyx_string* %292, %nyx_string* %293)
  %295 = ptrtoint %nyx_string* %294 to i64
  call void @nyx_array_push({ i64, i8* }* %290, i64 %295)
  %296 = getelementptr [4 x i8], [4 x i8]* @.str305, i32 0, i32 0
  %297 = call %nyx_string* @nyx_string_from_cstr(i8* %296)
  %298 = ptrtoint %nyx_string* %297 to i64
  call void @nyx_array_push({ i64, i8* }* %290, i64 %298)
  %299 = call { i64, i8* }* @make_astnode(%nyx_string* %289, { i64, i8* }* %290)
  ret { i64, i8* }* %299
else31:
  br label %merge32
merge32:
  br label %merge29
else28:
  br label %merge29
merge29:
  %300 = getelementptr [11 x i8], [11 x i8]* @.str306, i32 0, i32 0
  %301 = call %nyx_string* @nyx_string_from_cstr(i8* %300)
  %302 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %301)
  br i1 %302, label %then48, label %else49
then48:
  %303 = call %Token @peek(%SharedEnv_parse* %env.param)
  %304 = alloca %Token
  store %Token %303, %Token* %304
  %305 = load %Token, %Token* %304
  %306 = call %nyx_string* @get_token_value(%Token %305)
  %307 = alloca %nyx_string*
  store %nyx_string* %306, %nyx_string** %307
  %308 = load %nyx_string*, %nyx_string** %307
  %309 = getelementptr [2 x i8], [2 x i8]* @.str307, i32 0, i32 0
  %310 = call %nyx_string* @nyx_string_from_cstr(i8* %309)
  %311 = call i8* @nyx_string_to_cstr(%nyx_string* %308)
  %312 = call i8* @nyx_string_to_cstr(%nyx_string* %310)
  %313 = call i32 @strcmp(i8* %311, i8* %312)
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %then51, label %else52
then51:
  %315 = call %Token @advance(%SharedEnv_parse* %env.param)
  br label %merge53
else52:
  %316 = call %Token @advance(%SharedEnv_parse* %env.param)
  %317 = load %nyx_string*, %nyx_string** %307
  %318 = alloca %nyx_string*
  store %nyx_string* %317, %nyx_string** %318
  %319 = getelementptr [4 x i8], [4 x i8]* @.str308, i32 0, i32 0
  %320 = call %nyx_string* @nyx_string_from_cstr(i8* %319)
  %321 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %320)
  br i1 %321, label %then54, label %else55
then54:
  %322 = call %Token @advance(%SharedEnv_parse* %env.param)
  %323 = getelementptr [11 x i8], [11 x i8]* @.str309, i32 0, i32 0
  %324 = call %nyx_string* @nyx_string_from_cstr(i8* %323)
  %325 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %324)
  %326 = alloca %Token
  store %Token %325, %Token* %326
  %327 = load %Token, %Token* %326
  %328 = call %nyx_string* @get_token_value(%Token %327)
  %329 = alloca %nyx_string*
  store %nyx_string* %328, %nyx_string** %329
  %330 = call { i64, i8* }* @nyx_array_new_ptr()
  %331 = alloca { i64, i8* }*
  store { i64, i8* }* %330, { i64, i8* }** %331
  %332 = alloca i1
  store i1 0, i1* %332
  %333 = call { i64, i8* }* @nyx_array_new_ptr()
  %334 = alloca { i64, i8* }*
  store { i64, i8* }* %333, { i64, i8* }** %334
  %335 = getelementptr [11 x i8], [11 x i8]* @.str310, i32 0, i32 0
  %336 = call %nyx_string* @nyx_string_from_cstr(i8* %335)
  %337 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %336)
  br i1 %337, label %then57, label %else58
then57:
  %338 = call %Token @advance(%SharedEnv_parse* %env.param)
  %339 = alloca i1
  store i1 0, i1* %339
  br label %while_cond60
while_cond60:
  %340 = load i1, i1* %339
  %341 = xor i1 %340, true
  br i1 %341, label %while_body61, label %while_end62
while_body61:
  %342 = getelementptr [12 x i8], [12 x i8]* @.str311, i32 0, i32 0
  %343 = call %nyx_string* @nyx_string_from_cstr(i8* %342)
  %344 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %343)
  br i1 %344, label %then63, label %else64
then63:
  %345 = call %Token @advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %339
  br label %merge65
else64:
  %346 = load { i64, i8* }*, { i64, i8* }** %334
  %347 = call i64 @nyx_array_length({ i64, i8* }* %346)
  %348 = icmp sgt i64 %347, 0
  br i1 %348, label %then66, label %else67
then66:
  %349 = getelementptr [6 x i8], [6 x i8]* @.str312, i32 0, i32 0
  %350 = call %nyx_string* @nyx_string_from_cstr(i8* %349)
  %351 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %350)
  br label %merge68
else67:
  br label %merge68
merge68:
  %352 = call { i64, i8* }* @parse_single_pattern(%SharedEnv_parse* %env.param)
  %353 = alloca { i64, i8* }*
  store { i64, i8* }* %352, { i64, i8* }** %353
  %354 = load { i64, i8* }*, { i64, i8* }** %334
  %355 = load { i64, i8* }*, { i64, i8* }** %353
  %356 = ptrtoint { i64, i8* }* %355 to i64
  call void @nyx_array_push({ i64, i8* }* %354, i64 %356)
  %357 = getelementptr [19 x i8], [19 x i8]* @.str313, i32 0, i32 0
  %358 = call %nyx_string* @nyx_string_from_cstr(i8* %357)
  %359 = inttoptr i64 0 to %nyx_string*
  %360 = call i8* @nyx_string_to_cstr(%nyx_string* %359)
  %361 = call i8* @nyx_string_to_cstr(%nyx_string* %358)
  %362 = call i32 @strcmp(i8* %360, i8* %361)
  %363 = icmp ne i32 %362, 0
  %364 = getelementptr [9 x i8], [9 x i8]* @.str314, i32 0, i32 0
  %365 = call %nyx_string* @nyx_string_from_cstr(i8* %364)
  %366 = inttoptr i64 0 to %nyx_string*
  %367 = call i8* @nyx_string_to_cstr(%nyx_string* %366)
  %368 = call i8* @nyx_string_to_cstr(%nyx_string* %365)
  %369 = call i32 @strcmp(i8* %367, i8* %368)
  %370 = icmp ne i32 %369, 0
  %371 = and i1 %363, %370
  br i1 %371, label %then69, label %else70
then69:
  store i1 1, i1* %332
  br label %merge71
else70:
  br label %merge71
merge71:
  br label %merge65
merge65:
  br label %while_cond60
while_end62:
  br label %merge59
else58:
  br label %merge59
merge59:
  %372 = load i1, i1* %332
  br i1 %372, label %then72, label %else73
then72:
  %373 = getelementptr [21 x i8], [21 x i8]* @.str315, i32 0, i32 0
  %374 = call %nyx_string* @nyx_string_from_cstr(i8* %373)
  %375 = call { i64, i8* }* @nyx_array_new_ptr()
  %376 = load %nyx_string*, %nyx_string** %318
  %377 = ptrtoint %nyx_string* %376 to i64
  call void @nyx_array_push({ i64, i8* }* %375, i64 %377)
  %378 = load %nyx_string*, %nyx_string** %329
  %379 = ptrtoint %nyx_string* %378 to i64
  call void @nyx_array_push({ i64, i8* }* %375, i64 %379)
  %380 = load { i64, i8* }*, { i64, i8* }** %334
  %381 = bitcast { i64, i8* }* %380 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %375, i8* %381)
  %382 = call { i64, i8* }* @make_astnode(%nyx_string* %374, { i64, i8* }* %375)
  store { i64, i8* }* %382, { i64, i8* }** %18
  br label %merge74
else73:
  %383 = alloca i64
  store i64 0, i64* %383
  br label %while_cond75
while_cond75:
  %384 = load i64, i64* %383
  %385 = load { i64, i8* }*, { i64, i8* }** %334
  %386 = call i64 @nyx_array_length({ i64, i8* }* %385)
  %387 = icmp slt i64 %384, %386
  br i1 %387, label %while_body76, label %while_end77
while_body76:
  %388 = load { i64, i8* }*, { i64, i8* }** %334
  %389 = load i64, i64* %383
  %390 = call i64 @nyx_array_get({ i64, i8* }* %388, i64 %389)
  %391 = inttoptr i64 %390 to { i64, i8* }*
  %392 = call i64 @nyx_array_get({ i64, i8* }* %391, i64 0)
  %393 = call i64 @nyx_array_get({ i64, i8* }* %391, i64 1)
  %394 = inttoptr i64 %392 to %nyx_string*
  %395 = inttoptr i64 %393 to { i64, i8* }*
  %396 = alloca %ASTNode
  %397 = getelementptr inbounds %ASTNode, %ASTNode* %396, i32 0, i32 0
  store %nyx_string* %394, %nyx_string** %397
  %398 = getelementptr inbounds %ASTNode, %ASTNode* %396, i32 0, i32 1
  store { i64, i8* }* %395, { i64, i8* }** %398
  %399 = load %ASTNode, %ASTNode* %396
  %400 = alloca %ASTNode
  store %ASTNode %399, %ASTNode* %400
  %401 = getelementptr [9 x i8], [9 x i8]* @.str316, i32 0, i32 0
  %402 = call %nyx_string* @nyx_string_from_cstr(i8* %401)
  %403 = inttoptr i64 0 to %nyx_string*
  %404 = call i8* @nyx_string_to_cstr(%nyx_string* %403)
  %405 = call i8* @nyx_string_to_cstr(%nyx_string* %402)
  %406 = call i32 @strcmp(i8* %404, i8* %405)
  %407 = icmp eq i32 %406, 0
  br i1 %407, label %then78, label %else79
then78:
  %408 = load { i64, i8* }*, { i64, i8* }** %331
  %409 = getelementptr [2 x i8], [2 x i8]* @.str317, i32 0, i32 0
  %410 = call %nyx_string* @nyx_string_from_cstr(i8* %409)
  %411 = ptrtoint %nyx_string* %410 to i64
  call void @nyx_array_push({ i64, i8* }* %408, i64 %411)
  br label %merge80
else79:
  %412 = inttoptr i64 0 to { i64, i8* }*
  %413 = call i64 @nyx_array_get({ i64, i8* }* %412, i64 0)
  %414 = inttoptr i64 %413 to %nyx_string*
  %415 = alloca %nyx_string*
  store %nyx_string* %414, %nyx_string** %415
  %416 = load { i64, i8* }*, { i64, i8* }** %331
  %417 = load %nyx_string*, %nyx_string** %415
  %418 = ptrtoint %nyx_string* %417 to i64
  call void @nyx_array_push({ i64, i8* }* %416, i64 %418)
  br label %merge80
merge80:
  %419 = load i64, i64* %383
  %420 = add i64 %419, 1
  store i64 %420, i64* %383
  br label %while_cond75
while_end77:
  %421 = getelementptr [14 x i8], [14 x i8]* @.str318, i32 0, i32 0
  %422 = call %nyx_string* @nyx_string_from_cstr(i8* %421)
  %423 = call { i64, i8* }* @nyx_array_new_ptr()
  %424 = load %nyx_string*, %nyx_string** %318
  %425 = ptrtoint %nyx_string* %424 to i64
  call void @nyx_array_push({ i64, i8* }* %423, i64 %425)
  %426 = load %nyx_string*, %nyx_string** %329
  %427 = ptrtoint %nyx_string* %426 to i64
  call void @nyx_array_push({ i64, i8* }* %423, i64 %427)
  %428 = load { i64, i8* }*, { i64, i8* }** %331
  %429 = bitcast { i64, i8* }* %428 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %423, i8* %429)
  %430 = call { i64, i8* }* @make_astnode(%nyx_string* %422, { i64, i8* }* %423)
  store { i64, i8* }* %430, { i64, i8* }** %18
  br label %merge74
merge74:
  br label %merge56
else55:
  %431 = getelementptr [11 x i8], [11 x i8]* @.str319, i32 0, i32 0
  %432 = call %nyx_string* @nyx_string_from_cstr(i8* %431)
  %433 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %432)
  br i1 %433, label %then81, label %else82
then81:
  %434 = call %Token @advance(%SharedEnv_parse* %env.param)
  %435 = call { i64, i8* }* @nyx_array_new_ptr()
  %436 = alloca { i64, i8* }*
  store { i64, i8* }* %435, { i64, i8* }** %436
  br label %while_cond84
while_cond84:
  %437 = getelementptr [12 x i8], [12 x i8]* @.str320, i32 0, i32 0
  %438 = call %nyx_string* @nyx_string_from_cstr(i8* %437)
  %439 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %438)
  %440 = xor i1 %439, true
  br i1 %440, label %while_body85, label %while_end86
while_body85:
  %441 = load { i64, i8* }*, { i64, i8* }** %436
  %442 = call i64 @nyx_array_length({ i64, i8* }* %441)
  %443 = icmp sgt i64 %442, 0
  br i1 %443, label %then87, label %else88
then87:
  %444 = getelementptr [6 x i8], [6 x i8]* @.str321, i32 0, i32 0
  %445 = call %nyx_string* @nyx_string_from_cstr(i8* %444)
  %446 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %445)
  br label %merge89
else88:
  br label %merge89
merge89:
  %447 = getelementptr [11 x i8], [11 x i8]* @.str322, i32 0, i32 0
  %448 = call %nyx_string* @nyx_string_from_cstr(i8* %447)
  %449 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %448)
  %450 = alloca %Token
  store %Token %449, %Token* %450
  %451 = load %Token, %Token* %450
  %452 = call %nyx_string* @get_token_value(%Token %451)
  %453 = alloca %nyx_string*
  store %nyx_string* %452, %nyx_string** %453
  %454 = load %nyx_string*, %nyx_string** %453
  %455 = alloca %nyx_string*
  store %nyx_string* %454, %nyx_string** %455
  %456 = getelementptr [6 x i8], [6 x i8]* @.str323, i32 0, i32 0
  %457 = call %nyx_string* @nyx_string_from_cstr(i8* %456)
  %458 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %457)
  br i1 %458, label %then90, label %else91
then90:
  %459 = call %Token @advance(%SharedEnv_parse* %env.param)
  %460 = getelementptr [11 x i8], [11 x i8]* @.str324, i32 0, i32 0
  %461 = call %nyx_string* @nyx_string_from_cstr(i8* %460)
  %462 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %461)
  %463 = call %nyx_string* @get_token_value(%Token %462)
  store %nyx_string* %463, %nyx_string** %455
  br label %merge92
else91:
  br label %merge92
merge92:
  %464 = load { i64, i8* }*, { i64, i8* }** %436
  %465 = call { i64, i8* }* @nyx_array_new_ptr()
  %466 = load %nyx_string*, %nyx_string** %453
  %467 = ptrtoint %nyx_string* %466 to i64
  call void @nyx_array_push({ i64, i8* }* %465, i64 %467)
  %468 = load %nyx_string*, %nyx_string** %455
  %469 = ptrtoint %nyx_string* %468 to i64
  call void @nyx_array_push({ i64, i8* }* %465, i64 %469)
  %470 = ptrtoint { i64, i8* }* %465 to i64
  call void @nyx_array_push({ i64, i8* }* %464, i64 %470)
  br label %while_cond84
while_end86:
  %471 = call %Token @advance(%SharedEnv_parse* %env.param)
  %472 = getelementptr [15 x i8], [15 x i8]* @.str325, i32 0, i32 0
  %473 = call %nyx_string* @nyx_string_from_cstr(i8* %472)
  %474 = call { i64, i8* }* @nyx_array_new_ptr()
  %475 = load %nyx_string*, %nyx_string** %318
  %476 = ptrtoint %nyx_string* %475 to i64
  call void @nyx_array_push({ i64, i8* }* %474, i64 %476)
  %477 = load { i64, i8* }*, { i64, i8* }** %436
  %478 = bitcast { i64, i8* }* %477 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %474, i8* %478)
  %479 = call { i64, i8* }* @make_astnode(%nyx_string* %473, { i64, i8* }* %474)
  store { i64, i8* }* %479, { i64, i8* }** %18
  br label %merge83
else82:
  %480 = getelementptr [19 x i8], [19 x i8]* @.str326, i32 0, i32 0
  %481 = call %nyx_string* @nyx_string_from_cstr(i8* %480)
  %482 = call { i64, i8* }* @nyx_array_new_ptr()
  %483 = load %nyx_string*, %nyx_string** %318
  %484 = ptrtoint %nyx_string* %483 to i64
  call void @nyx_array_push({ i64, i8* }* %482, i64 %484)
  %485 = call { i64, i8* }* @make_astnode(%nyx_string* %481, { i64, i8* }* %482)
  store { i64, i8* }* %485, { i64, i8* }** %18
  br label %merge83
merge83:
  br label %merge56
merge56:
  br label %merge53
merge53:
  br label %merge50
else49:
  br label %merge50
merge50:
  %486 = load { i64, i8* }*, { i64, i8* }** %18
  ret { i64, i8* }* %486
}

define internal { i64, i8* }* @parse_match_arm(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = call { i64, i8* }* @parse_single_pattern(%SharedEnv_parse* %env.param)
  %15 = alloca { i64, i8* }*
  store { i64, i8* }* %14, { i64, i8* }** %15
  %16 = getelementptr [5 x i8], [5 x i8]* @.str327, i32 0, i32 0
  %17 = call %nyx_string* @nyx_string_from_cstr(i8* %16)
  %18 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %17)
  br i1 %18, label %then0, label %else1
then0:
  %19 = call { i64, i8* }* @nyx_array_new_ptr()
  %20 = load { i64, i8* }*, { i64, i8* }** %15
  %21 = bitcast { i64, i8* }* %20 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %19, i8* %21)
  %22 = alloca { i64, i8* }*
  store { i64, i8* }* %19, { i64, i8* }** %22
  br label %while_cond3
while_cond3:
  %23 = getelementptr [5 x i8], [5 x i8]* @.str328, i32 0, i32 0
  %24 = call %nyx_string* @nyx_string_from_cstr(i8* %23)
  %25 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %24)
  br i1 %25, label %while_body4, label %while_end5
while_body4:
  %26 = call %Token @advance(%SharedEnv_parse* %env.param)
  %27 = load { i64, i8* }*, { i64, i8* }** %22
  %28 = call { i64, i8* }* @parse_single_pattern(%SharedEnv_parse* %env.param)
  %29 = ptrtoint { i64, i8* }* %28 to i64
  call void @nyx_array_push({ i64, i8* }* %27, i64 %29)
  br label %while_cond3
while_end5:
  %30 = getelementptr [11 x i8], [11 x i8]* @.str329, i32 0, i32 0
  %31 = call %nyx_string* @nyx_string_from_cstr(i8* %30)
  %32 = load { i64, i8* }*, { i64, i8* }** %22
  %33 = call { i64, i8* }* @make_astnode(%nyx_string* %31, { i64, i8* }* %32)
  store { i64, i8* }* %33, { i64, i8* }** %15
  br label %merge2
else1:
  br label %merge2
merge2:
  %34 = getelementptr [6 x i8], [6 x i8]* @.str330, i32 0, i32 0
  %35 = call %nyx_string* @nyx_string_from_cstr(i8* %34)
  %36 = call { i64, i8* }* @nyx_array_new_ptr()
  %37 = call { i64, i8* }* @make_astnode(%nyx_string* %35, { i64, i8* }* %36)
  %38 = alloca { i64, i8* }*
  store { i64, i8* }* %37, { i64, i8* }** %38
  %39 = getelementptr [3 x i8], [3 x i8]* @.str331, i32 0, i32 0
  %40 = call %nyx_string* @nyx_string_from_cstr(i8* %39)
  %41 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %40)
  br i1 %41, label %then6, label %else7
then6:
  %42 = call %Token @advance(%SharedEnv_parse* %env.param)
  %43 = call { i64, i8* }* @parse_expression(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %43, { i64, i8* }** %38
  br label %merge8
else7:
  br label %merge8
merge8:
  %44 = getelementptr [12 x i8], [12 x i8]* @.str332, i32 0, i32 0
  %45 = call %nyx_string* @nyx_string_from_cstr(i8* %44)
  %46 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %45)
  %47 = getelementptr [6 x i8], [6 x i8]* @.str333, i32 0, i32 0
  %48 = call %nyx_string* @nyx_string_from_cstr(i8* %47)
  %49 = call { i64, i8* }* @nyx_array_new_ptr()
  %50 = call { i64, i8* }* @make_astnode(%nyx_string* %48, { i64, i8* }* %49)
  %51 = alloca { i64, i8* }*
  store { i64, i8* }* %50, { i64, i8* }** %51
  %52 = getelementptr [11 x i8], [11 x i8]* @.str334, i32 0, i32 0
  %53 = call %nyx_string* @nyx_string_from_cstr(i8* %52)
  %54 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %53)
  br i1 %54, label %then9, label %else10
then9:
  %55 = call { i64, i8* }* @parse_block(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %55, { i64, i8* }** %51
  br label %merge11
else10:
  %56 = call { i64, i8* }* @parse_expression(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %56, { i64, i8* }** %51
  br label %merge11
merge11:
  %57 = getelementptr [10 x i8], [10 x i8]* @.str335, i32 0, i32 0
  %58 = call %nyx_string* @nyx_string_from_cstr(i8* %57)
  %59 = call { i64, i8* }* @nyx_array_new_ptr()
  %60 = load { i64, i8* }*, { i64, i8* }** %15
  %61 = bitcast { i64, i8* }* %60 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %59, i8* %61)
  %62 = load { i64, i8* }*, { i64, i8* }** %51
  %63 = bitcast { i64, i8* }* %62 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %59, i8* %63)
  %64 = load { i64, i8* }*, { i64, i8* }** %38
  %65 = bitcast { i64, i8* }* %64 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %59, i8* %65)
  %66 = call { i64, i8* }* @make_astnode(%nyx_string* %58, { i64, i8* }* %59)
  ret { i64, i8* }* %66
}

define internal { i64, i8* }* @parse_match(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = getelementptr [6 x i8], [6 x i8]* @.str336, i32 0, i32 0
  %15 = call %nyx_string* @nyx_string_from_cstr(i8* %14)
  %16 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %15)
  %17 = call { i64, i8* }* @parse_expression(%SharedEnv_parse* %env.param)
  %18 = alloca { i64, i8* }*
  store { i64, i8* }* %17, { i64, i8* }** %18
  %19 = getelementptr [11 x i8], [11 x i8]* @.str337, i32 0, i32 0
  %20 = call %nyx_string* @nyx_string_from_cstr(i8* %19)
  %21 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %20)
  %22 = call { i64, i8* }* @nyx_array_new_ptr()
  %23 = alloca { i64, i8* }*
  store { i64, i8* }* %22, { i64, i8* }** %23
  %24 = alloca i1
  store i1 0, i1* %24
  br label %while_cond0
while_cond0:
  %25 = load i1, i1* %24
  %26 = xor i1 %25, true
  br i1 %26, label %while_body1, label %while_end2
while_body1:
  %27 = getelementptr [12 x i8], [12 x i8]* @.str338, i32 0, i32 0
  %28 = call %nyx_string* @nyx_string_from_cstr(i8* %27)
  %29 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %28)
  br i1 %29, label %then3, label %else4
then3:
  %30 = call %Token @advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %24
  br label %merge5
else4:
  %31 = load { i64, i8* }*, { i64, i8* }** %23
  %32 = call i64 @nyx_array_length({ i64, i8* }* %31)
  %33 = icmp sgt i64 %32, 0
  br i1 %33, label %then6, label %else7
then6:
  %34 = getelementptr [6 x i8], [6 x i8]* @.str339, i32 0, i32 0
  %35 = call %nyx_string* @nyx_string_from_cstr(i8* %34)
  %36 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %35)
  br label %merge8
else7:
  br label %merge8
merge8:
  %37 = getelementptr [12 x i8], [12 x i8]* @.str340, i32 0, i32 0
  %38 = call %nyx_string* @nyx_string_from_cstr(i8* %37)
  %39 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %38)
  br i1 %39, label %then9, label %else10
then9:
  %40 = call %Token @advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %24
  br label %merge11
else10:
  %41 = load { i64, i8* }*, { i64, i8* }** %23
  %42 = call { i64, i8* }* @parse_match_arm(%SharedEnv_parse* %env.param)
  %43 = ptrtoint { i64, i8* }* %42 to i64
  call void @nyx_array_push({ i64, i8* }* %41, i64 %43)
  br label %merge11
merge11:
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %44 = getelementptr [6 x i8], [6 x i8]* @.str341, i32 0, i32 0
  %45 = call %nyx_string* @nyx_string_from_cstr(i8* %44)
  %46 = call { i64, i8* }* @nyx_array_new_ptr()
  %47 = load { i64, i8* }*, { i64, i8* }** %18
  %48 = bitcast { i64, i8* }* %47 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %46, i8* %48)
  %49 = load { i64, i8* }*, { i64, i8* }** %23
  %50 = bitcast { i64, i8* }* %49 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %46, i8* %50)
  %51 = call { i64, i8* }* @make_astnode(%nyx_string* %45, { i64, i8* }* %46)
  ret { i64, i8* }* %51
}

define internal { i64, i8* }* @parse_struct_construction(%SharedEnv_parse* %env.param, %nyx_string* %struct_name.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = alloca %nyx_string*
  store %nyx_string* %struct_name.param, %nyx_string** %14
  %15 = getelementptr [11 x i8], [11 x i8]* @.str342, i32 0, i32 0
  %16 = call %nyx_string* @nyx_string_from_cstr(i8* %15)
  %17 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %16)
  %18 = call { i64, i8* }* @nyx_array_new_ptr()
  %19 = alloca { i64, i8* }*
  store { i64, i8* }* %18, { i64, i8* }** %19
  %20 = alloca i1
  store i1 0, i1* %20
  br label %while_cond0
while_cond0:
  %21 = load i1, i1* %20
  %22 = xor i1 %21, true
  br i1 %22, label %while_body1, label %while_end2
while_body1:
  %23 = getelementptr [12 x i8], [12 x i8]* @.str343, i32 0, i32 0
  %24 = call %nyx_string* @nyx_string_from_cstr(i8* %23)
  %25 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %24)
  br i1 %25, label %then3, label %else4
then3:
  %26 = call %Token @advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %20
  br label %merge5
else4:
  %27 = load { i64, i8* }*, { i64, i8* }** %19
  %28 = call i64 @nyx_array_length({ i64, i8* }* %27)
  %29 = icmp sgt i64 %28, 0
  br i1 %29, label %then6, label %else7
then6:
  %30 = getelementptr [6 x i8], [6 x i8]* @.str344, i32 0, i32 0
  %31 = call %nyx_string* @nyx_string_from_cstr(i8* %30)
  %32 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %31)
  br label %merge8
else7:
  br label %merge8
merge8:
  %33 = getelementptr [11 x i8], [11 x i8]* @.str345, i32 0, i32 0
  %34 = call %nyx_string* @nyx_string_from_cstr(i8* %33)
  %35 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %34)
  %36 = alloca %Token
  store %Token %35, %Token* %36
  %37 = getelementptr [6 x i8], [6 x i8]* @.str346, i32 0, i32 0
  %38 = call %nyx_string* @nyx_string_from_cstr(i8* %37)
  %39 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %38)
  %40 = call { i64, i8* }* @parse_expression(%SharedEnv_parse* %env.param)
  %41 = alloca { i64, i8* }*
  store { i64, i8* }* %40, { i64, i8* }** %41
  %42 = load { i64, i8* }*, { i64, i8* }** %19
  %43 = call { i64, i8* }* @nyx_array_new_ptr()
  %44 = load %Token, %Token* %36
  %45 = call %nyx_string* @get_token_value(%Token %44)
  %46 = ptrtoint %nyx_string* %45 to i64
  call void @nyx_array_push({ i64, i8* }* %43, i64 %46)
  %47 = load { i64, i8* }*, { i64, i8* }** %41
  %48 = bitcast { i64, i8* }* %47 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %43, i8* %48)
  %49 = ptrtoint { i64, i8* }* %43 to i64
  call void @nyx_array_push({ i64, i8* }* %42, i64 %49)
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %50 = getelementptr [12 x i8], [12 x i8]* @.str347, i32 0, i32 0
  %51 = call %nyx_string* @nyx_string_from_cstr(i8* %50)
  %52 = call { i64, i8* }* @nyx_array_new_ptr()
  %53 = load %nyx_string*, %nyx_string** %14
  %54 = ptrtoint %nyx_string* %53 to i64
  call void @nyx_array_push({ i64, i8* }* %52, i64 %54)
  %55 = load { i64, i8* }*, { i64, i8* }** %19
  %56 = bitcast { i64, i8* }* %55 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %52, i8* %56)
  %57 = call { i64, i8* }* @nyx_array_new_ptr()
  %58 = bitcast { i64, i8* }* %57 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %52, i8* %58)
  %59 = call { i64, i8* }* @make_astnode(%nyx_string* %51, { i64, i8* }* %52)
  ret { i64, i8* }* %59
}

define internal { i64, i8* }* @parse_statement(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = getelementptr [4 x i8], [4 x i8]* @.str348, i32 0, i32 0
  %15 = call %nyx_string* @nyx_string_from_cstr(i8* %14)
  %16 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %15)
  %17 = getelementptr [4 x i8], [4 x i8]* @.str349, i32 0, i32 0
  %18 = call %nyx_string* @nyx_string_from_cstr(i8* %17)
  %19 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %18)
  %20 = or i1 %16, %19
  br i1 %20, label %then0, label %else1
then0:
  %21 = call { i64, i8* }* @parse_let(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %21
else1:
  br label %merge2
merge2:
  %22 = getelementptr [6 x i8], [6 x i8]* @.str350, i32 0, i32 0
  %23 = call %nyx_string* @nyx_string_from_cstr(i8* %22)
  %24 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %23)
  br i1 %24, label %then3, label %else4
then3:
  %25 = call { i64, i8* }* @parse_const(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %25
else4:
  br label %merge5
merge5:
  %26 = getelementptr [3 x i8], [3 x i8]* @.str351, i32 0, i32 0
  %27 = call %nyx_string* @nyx_string_from_cstr(i8* %26)
  %28 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %27)
  br i1 %28, label %then6, label %else7
then6:
  %29 = call { i64, i8* }* @parse_function(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %29
else7:
  br label %merge8
merge8:
  %30 = getelementptr [5 x i8], [5 x i8]* @.str352, i32 0, i32 0
  %31 = call %nyx_string* @nyx_string_from_cstr(i8* %30)
  %32 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %31)
  br i1 %32, label %then9, label %else10
then9:
  %33 = call %Token @advance(%SharedEnv_parse* %env.param)
  %34 = getelementptr [13 x i8], [13 x i8]* @.str353, i32 0, i32 0
  %35 = call %nyx_string* @nyx_string_from_cstr(i8* %34)
  %36 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %35)
  %37 = getelementptr [11 x i8], [11 x i8]* @.str354, i32 0, i32 0
  %38 = call %nyx_string* @nyx_string_from_cstr(i8* %37)
  %39 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %38)
  %40 = alloca %Token
  store %Token %39, %Token* %40
  %41 = load %Token, %Token* %40
  %42 = call %nyx_string* @get_token_value(%Token %41)
  %43 = alloca %nyx_string*
  store %nyx_string* %42, %nyx_string** %43
  %44 = load %nyx_string*, %nyx_string** %43
  %45 = alloca %nyx_string*
  store %nyx_string* %44, %nyx_string** %45
  %46 = getelementptr [11 x i8], [11 x i8]* @.str355, i32 0, i32 0
  %47 = call %nyx_string* @nyx_string_from_cstr(i8* %46)
  %48 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %47)
  br i1 %48, label %then12, label %else13
then12:
  %49 = call %Token @advance(%SharedEnv_parse* %env.param)
  %50 = getelementptr [1 x i8], [1 x i8]* @.str356, i32 0, i32 0
  %51 = call %nyx_string* @nyx_string_from_cstr(i8* %50)
  %52 = alloca %nyx_string*
  store %nyx_string* %51, %nyx_string** %52
  %53 = getelementptr [7 x i8], [7 x i8]* @.str357, i32 0, i32 0
  %54 = call %nyx_string* @nyx_string_from_cstr(i8* %53)
  %55 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %54)
  br i1 %55, label %then15, label %else16
then15:
  %56 = getelementptr [7 x i8], [7 x i8]* @.str358, i32 0, i32 0
  %57 = call %nyx_string* @nyx_string_from_cstr(i8* %56)
  %58 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %57)
  %59 = alloca %Token
  store %Token %58, %Token* %59
  %60 = load %Token, %Token* %59
  %61 = call %nyx_string* @get_token_value(%Token %60)
  store %nyx_string* %61, %nyx_string** %52
  br label %merge17
else16:
  %62 = getelementptr [11 x i8], [11 x i8]* @.str359, i32 0, i32 0
  %63 = call %nyx_string* @nyx_string_from_cstr(i8* %62)
  %64 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %63)
  %65 = alloca %Token
  store %Token %64, %Token* %65
  %66 = load %Token, %Token* %65
  %67 = call %nyx_string* @get_token_value(%Token %66)
  store %nyx_string* %67, %nyx_string** %52
  br label %while_cond18
while_cond18:
  %68 = getelementptr [6 x i8], [6 x i8]* @.str360, i32 0, i32 0
  %69 = call %nyx_string* @nyx_string_from_cstr(i8* %68)
  %70 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %69)
  br i1 %70, label %while_body19, label %while_end20
while_body19:
  %71 = call %Token @advance(%SharedEnv_parse* %env.param)
  %72 = getelementptr [11 x i8], [11 x i8]* @.str361, i32 0, i32 0
  %73 = call %nyx_string* @nyx_string_from_cstr(i8* %72)
  %74 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %73)
  %75 = alloca %Token
  store %Token %74, %Token* %75
  %76 = load %nyx_string*, %nyx_string** %52
  %77 = getelementptr [2 x i8], [2 x i8]* @.str362, i32 0, i32 0
  %78 = call %nyx_string* @nyx_string_from_cstr(i8* %77)
  %79 = call %nyx_string* @nyx_string_concat(%nyx_string* %76, %nyx_string* %78)
  %80 = load %Token, %Token* %75
  %81 = call %nyx_string* @get_token_value(%Token %80)
  %82 = call %nyx_string* @nyx_string_concat(%nyx_string* %79, %nyx_string* %81)
  store %nyx_string* %82, %nyx_string** %52
  br label %while_cond18
while_end20:
  br label %merge17
merge17:
  %83 = getelementptr [12 x i8], [12 x i8]* @.str363, i32 0, i32 0
  %84 = call %nyx_string* @nyx_string_from_cstr(i8* %83)
  %85 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %84)
  %86 = load %nyx_string*, %nyx_string** %43
  %87 = getelementptr [2 x i8], [2 x i8]* @.str364, i32 0, i32 0
  %88 = call %nyx_string* @nyx_string_from_cstr(i8* %87)
  %89 = call %nyx_string* @nyx_string_concat(%nyx_string* %86, %nyx_string* %88)
  %90 = load %nyx_string*, %nyx_string** %52
  %91 = call %nyx_string* @nyx_string_concat(%nyx_string* %89, %nyx_string* %90)
  %92 = getelementptr [2 x i8], [2 x i8]* @.str365, i32 0, i32 0
  %93 = call %nyx_string* @nyx_string_from_cstr(i8* %92)
  %94 = call %nyx_string* @nyx_string_concat(%nyx_string* %91, %nyx_string* %93)
  store %nyx_string* %94, %nyx_string** %45
  br label %merge14
else13:
  %95 = getelementptr [7 x i8], [7 x i8]* @.str366, i32 0, i32 0
  %96 = call %nyx_string* @nyx_string_from_cstr(i8* %95)
  %97 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %96)
  br i1 %97, label %then21, label %else22
then21:
  %98 = call %Token @advance(%SharedEnv_parse* %env.param)
  %99 = getelementptr [7 x i8], [7 x i8]* @.str367, i32 0, i32 0
  %100 = call %nyx_string* @nyx_string_from_cstr(i8* %99)
  %101 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %100)
  %102 = alloca %Token
  store %Token %101, %Token* %102
  %103 = load %nyx_string*, %nyx_string** %43
  %104 = getelementptr [2 x i8], [2 x i8]* @.str368, i32 0, i32 0
  %105 = call %nyx_string* @nyx_string_from_cstr(i8* %104)
  %106 = call %nyx_string* @nyx_string_concat(%nyx_string* %103, %nyx_string* %105)
  %107 = load %Token, %Token* %102
  %108 = call %nyx_string* @get_token_value(%Token %107)
  %109 = call %nyx_string* @nyx_string_concat(%nyx_string* %106, %nyx_string* %108)
  store %nyx_string* %109, %nyx_string** %45
  br label %merge23
else22:
  br label %merge23
merge23:
  br label %merge14
merge14:
  %110 = getelementptr [14 x i8], [14 x i8]* @.str369, i32 0, i32 0
  %111 = call %nyx_string* @nyx_string_from_cstr(i8* %110)
  %112 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %111)
  %113 = getelementptr [3 x i8], [3 x i8]* @.str370, i32 0, i32 0
  %114 = call %nyx_string* @nyx_string_from_cstr(i8* %113)
  %115 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %114)
  br i1 %115, label %then24, label %else25
then24:
  %116 = call { i64, i8* }* @parse_function(%SharedEnv_parse* %env.param)
  %117 = alloca { i64, i8* }*
  store { i64, i8* }* %116, { i64, i8* }** %117
  %118 = load { i64, i8* }*, { i64, i8* }** %117
  %119 = call i64 @nyx_array_get({ i64, i8* }* %118, i64 1)
  %120 = inttoptr i64 %119 to { i64, i8* }*
  %121 = alloca { i64, i8* }*
  store { i64, i8* }* %120, { i64, i8* }** %121
  %122 = getelementptr [9 x i8], [9 x i8]* @.str371, i32 0, i32 0
  %123 = call %nyx_string* @nyx_string_from_cstr(i8* %122)
  %124 = call { i64, i8* }* @nyx_array_new_ptr()
  %125 = load { i64, i8* }*, { i64, i8* }** %121
  %126 = call i64 @nyx_array_get({ i64, i8* }* %125, i64 0)
  call void @nyx_array_push({ i64, i8* }* %124, i64 %126)
  %127 = load { i64, i8* }*, { i64, i8* }** %121
  %128 = call i64 @nyx_array_get({ i64, i8* }* %127, i64 1)
  call void @nyx_array_push({ i64, i8* }* %124, i64 %128)
  %129 = load { i64, i8* }*, { i64, i8* }** %121
  %130 = call i64 @nyx_array_get({ i64, i8* }* %129, i64 2)
  call void @nyx_array_push({ i64, i8* }* %124, i64 %130)
  %131 = load { i64, i8* }*, { i64, i8* }** %121
  %132 = call i64 @nyx_array_get({ i64, i8* }* %131, i64 3)
  call void @nyx_array_push({ i64, i8* }* %124, i64 %132)
  %133 = load { i64, i8* }*, { i64, i8* }** %121
  %134 = call i64 @nyx_array_get({ i64, i8* }* %133, i64 4)
  call void @nyx_array_push({ i64, i8* }* %124, i64 %134)
  %135 = load %nyx_string*, %nyx_string** %45
  %136 = ptrtoint %nyx_string* %135 to i64
  call void @nyx_array_push({ i64, i8* }* %124, i64 %136)
  %137 = call { i64, i8* }* @make_astnode(%nyx_string* %123, { i64, i8* }* %124)
  ret { i64, i8* }* %137
else25:
  br label %merge26
merge26:
  %138 = getelementptr [7 x i8], [7 x i8]* @.str372, i32 0, i32 0
  %139 = call %nyx_string* @nyx_string_from_cstr(i8* %138)
  %140 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %139)
  br i1 %140, label %then27, label %else28
then27:
  %141 = call { i64, i8* }* @parse_struct(%SharedEnv_parse* %env.param)
  %142 = alloca { i64, i8* }*
  store { i64, i8* }* %141, { i64, i8* }** %142
  %143 = load { i64, i8* }*, { i64, i8* }** %142
  %144 = call i64 @nyx_array_get({ i64, i8* }* %143, i64 1)
  %145 = inttoptr i64 %144 to { i64, i8* }*
  %146 = alloca { i64, i8* }*
  store { i64, i8* }* %145, { i64, i8* }** %146
  %147 = getelementptr [7 x i8], [7 x i8]* @.str373, i32 0, i32 0
  %148 = call %nyx_string* @nyx_string_from_cstr(i8* %147)
  %149 = call { i64, i8* }* @nyx_array_new_ptr()
  %150 = load { i64, i8* }*, { i64, i8* }** %146
  %151 = call i64 @nyx_array_get({ i64, i8* }* %150, i64 0)
  call void @nyx_array_push({ i64, i8* }* %149, i64 %151)
  %152 = load { i64, i8* }*, { i64, i8* }** %146
  %153 = call i64 @nyx_array_get({ i64, i8* }* %152, i64 1)
  call void @nyx_array_push({ i64, i8* }* %149, i64 %153)
  %154 = load { i64, i8* }*, { i64, i8* }** %146
  %155 = call i64 @nyx_array_get({ i64, i8* }* %154, i64 2)
  call void @nyx_array_push({ i64, i8* }* %149, i64 %155)
  %156 = load %nyx_string*, %nyx_string** %45
  %157 = ptrtoint %nyx_string* %156 to i64
  call void @nyx_array_push({ i64, i8* }* %149, i64 %157)
  %158 = call { i64, i8* }* @make_astnode(%nyx_string* %148, { i64, i8* }* %149)
  ret { i64, i8* }* %158
else28:
  br label %merge29
merge29:
  %159 = getelementptr [5 x i8], [5 x i8]* @.str374, i32 0, i32 0
  %160 = call %nyx_string* @nyx_string_from_cstr(i8* %159)
  %161 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %160)
  br i1 %161, label %then30, label %else31
then30:
  %162 = call { i64, i8* }* @parse_enum(%SharedEnv_parse* %env.param)
  %163 = alloca { i64, i8* }*
  store { i64, i8* }* %162, { i64, i8* }** %163
  %164 = load { i64, i8* }*, { i64, i8* }** %163
  %165 = call i64 @nyx_array_get({ i64, i8* }* %164, i64 1)
  %166 = inttoptr i64 %165 to { i64, i8* }*
  %167 = alloca { i64, i8* }*
  store { i64, i8* }* %166, { i64, i8* }** %167
  %168 = getelementptr [5 x i8], [5 x i8]* @.str375, i32 0, i32 0
  %169 = call %nyx_string* @nyx_string_from_cstr(i8* %168)
  %170 = call { i64, i8* }* @nyx_array_new_ptr()
  %171 = load { i64, i8* }*, { i64, i8* }** %167
  %172 = call i64 @nyx_array_get({ i64, i8* }* %171, i64 0)
  call void @nyx_array_push({ i64, i8* }* %170, i64 %172)
  %173 = load { i64, i8* }*, { i64, i8* }** %167
  %174 = call i64 @nyx_array_get({ i64, i8* }* %173, i64 1)
  call void @nyx_array_push({ i64, i8* }* %170, i64 %174)
  %175 = load { i64, i8* }*, { i64, i8* }** %167
  %176 = call i64 @nyx_array_get({ i64, i8* }* %175, i64 2)
  call void @nyx_array_push({ i64, i8* }* %170, i64 %176)
  %177 = load %nyx_string*, %nyx_string** %45
  %178 = ptrtoint %nyx_string* %177 to i64
  call void @nyx_array_push({ i64, i8* }* %170, i64 %178)
  %179 = call { i64, i8* }* @make_astnode(%nyx_string* %169, { i64, i8* }* %170)
  ret { i64, i8* }* %179
else31:
  br label %merge32
merge32:
  %180 = getelementptr [6 x i8], [6 x i8]* @.str376, i32 0, i32 0
  %181 = call %nyx_string* @nyx_string_from_cstr(i8* %180)
  %182 = call { i64, i8* }* @nyx_array_new_ptr()
  %183 = getelementptr [49 x i8], [49 x i8]* @.str377, i32 0, i32 0
  %184 = call %nyx_string* @nyx_string_from_cstr(i8* %183)
  %185 = ptrtoint %nyx_string* %184 to i64
  call void @nyx_array_push({ i64, i8* }* %182, i64 %185)
  %186 = call { i64, i8* }* @make_astnode(%nyx_string* %181, { i64, i8* }* %182)
  ret { i64, i8* }* %186
else10:
  br label %merge11
merge11:
  %187 = getelementptr [7 x i8], [7 x i8]* @.str378, i32 0, i32 0
  %188 = call %nyx_string* @nyx_string_from_cstr(i8* %187)
  %189 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %188)
  br i1 %189, label %then33, label %else34
then33:
  %190 = call { i64, i8* }* @parse_struct(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %190
else34:
  br label %merge35
merge35:
  %191 = getelementptr [5 x i8], [5 x i8]* @.str379, i32 0, i32 0
  %192 = call %nyx_string* @nyx_string_from_cstr(i8* %191)
  %193 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %192)
  br i1 %193, label %then36, label %else37
then36:
  %194 = call { i64, i8* }* @parse_enum(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %194
else37:
  br label %merge38
merge38:
  %195 = getelementptr [6 x i8], [6 x i8]* @.str380, i32 0, i32 0
  %196 = call %nyx_string* @nyx_string_from_cstr(i8* %195)
  %197 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %196)
  br i1 %197, label %then39, label %else40
then39:
  %198 = call { i64, i8* }* @parse_match(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %198
else40:
  br label %merge41
merge41:
  %199 = getelementptr [3 x i8], [3 x i8]* @.str381, i32 0, i32 0
  %200 = call %nyx_string* @nyx_string_from_cstr(i8* %199)
  %201 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %200)
  br i1 %201, label %then42, label %else43
then42:
  %202 = call { i64, i8* }* @parse_if(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %202
else43:
  br label %merge44
merge44:
  %203 = getelementptr [6 x i8], [6 x i8]* @.str382, i32 0, i32 0
  %204 = call %nyx_string* @nyx_string_from_cstr(i8* %203)
  %205 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %204)
  br i1 %205, label %then45, label %else46
then45:
  %206 = call { i64, i8* }* @parse_while(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %206
else46:
  br label %merge47
merge47:
  %207 = getelementptr [4 x i8], [4 x i8]* @.str383, i32 0, i32 0
  %208 = call %nyx_string* @nyx_string_from_cstr(i8* %207)
  %209 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %208)
  br i1 %209, label %then48, label %else49
then48:
  %210 = call { i64, i8* }* @parse_for(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %210
else49:
  br label %merge50
merge50:
  %211 = getelementptr [7 x i8], [7 x i8]* @.str384, i32 0, i32 0
  %212 = call %nyx_string* @nyx_string_from_cstr(i8* %211)
  %213 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %212)
  br i1 %213, label %then51, label %else52
then51:
  %214 = call { i64, i8* }* @parse_return(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %214
else52:
  br label %merge53
merge53:
  %215 = getelementptr [6 x i8], [6 x i8]* @.str385, i32 0, i32 0
  %216 = call %nyx_string* @nyx_string_from_cstr(i8* %215)
  %217 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %216)
  br i1 %217, label %then54, label %else55
then54:
  %218 = call %Token @advance(%SharedEnv_parse* %env.param)
  %219 = getelementptr [6 x i8], [6 x i8]* @.str386, i32 0, i32 0
  %220 = call %nyx_string* @nyx_string_from_cstr(i8* %219)
  %221 = call { i64, i8* }* @nyx_array_new_ptr()
  %222 = call { i64, i8* }* @make_astnode(%nyx_string* %220, { i64, i8* }* %221)
  ret { i64, i8* }* %222
else55:
  br label %merge56
merge56:
  %223 = getelementptr [9 x i8], [9 x i8]* @.str387, i32 0, i32 0
  %224 = call %nyx_string* @nyx_string_from_cstr(i8* %223)
  %225 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %224)
  br i1 %225, label %then57, label %else58
then57:
  %226 = call %Token @advance(%SharedEnv_parse* %env.param)
  %227 = getelementptr [9 x i8], [9 x i8]* @.str388, i32 0, i32 0
  %228 = call %nyx_string* @nyx_string_from_cstr(i8* %227)
  %229 = call { i64, i8* }* @nyx_array_new_ptr()
  %230 = call { i64, i8* }* @make_astnode(%nyx_string* %228, { i64, i8* }* %229)
  ret { i64, i8* }* %230
else58:
  br label %merge59
merge59:
  %231 = getelementptr [7 x i8], [7 x i8]* @.str389, i32 0, i32 0
  %232 = call %nyx_string* @nyx_string_from_cstr(i8* %231)
  %233 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %232)
  br i1 %233, label %then60, label %else61
then60:
  %234 = call { i64, i8* }* @parse_export(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %234
else61:
  br label %merge62
merge62:
  %235 = getelementptr [4 x i8], [4 x i8]* @.str390, i32 0, i32 0
  %236 = call %nyx_string* @nyx_string_from_cstr(i8* %235)
  %237 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %236)
  br i1 %237, label %then63, label %else64
then63:
  %238 = call { i64, i8* }* @parse_pub(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %238
else64:
  br label %merge65
merge65:
  %239 = getelementptr [7 x i8], [7 x i8]* @.str391, i32 0, i32 0
  %240 = call %nyx_string* @nyx_string_from_cstr(i8* %239)
  %241 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %240)
  br i1 %241, label %then66, label %else67
then66:
  %242 = call { i64, i8* }* @parse_import(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %242
else67:
  br label %merge68
merge68:
  %243 = getelementptr [6 x i8], [6 x i8]* @.str392, i32 0, i32 0
  %244 = call %nyx_string* @nyx_string_from_cstr(i8* %243)
  %245 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %244)
  br i1 %245, label %then69, label %else70
then69:
  %246 = call { i64, i8* }* @parse_trait(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %246
else70:
  br label %merge71
merge71:
  %247 = getelementptr [5 x i8], [5 x i8]* @.str393, i32 0, i32 0
  %248 = call %nyx_string* @nyx_string_from_cstr(i8* %247)
  %249 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %248)
  br i1 %249, label %then72, label %else73
then72:
  %250 = call { i64, i8* }* @parse_impl(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %250
else73:
  br label %merge74
merge74:
  %251 = getelementptr [5 x i8], [5 x i8]* @.str394, i32 0, i32 0
  %252 = call %nyx_string* @nyx_string_from_cstr(i8* %251)
  %253 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %252)
  br i1 %253, label %then75, label %else76
then75:
  %254 = call { i64, i8* }* @parse_test_decl(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %254
else76:
  br label %merge77
merge77:
  %255 = getelementptr [7 x i8], [7 x i8]* @.str395, i32 0, i32 0
  %256 = call %nyx_string* @nyx_string_from_cstr(i8* %255)
  %257 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %256)
  br i1 %257, label %then78, label %else79
then78:
  %258 = call { i64, i8* }* @parse_extern_fn(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %258
else79:
  br label %merge80
merge80:
  %259 = getelementptr [7 x i8], [7 x i8]* @.str396, i32 0, i32 0
  %260 = call %nyx_string* @nyx_string_from_cstr(i8* %259)
  %261 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %260)
  br i1 %261, label %then81, label %else82
then81:
  %262 = call %Token @advance(%SharedEnv_parse* %env.param)
  %263 = call { i64, i8* }* @parse_block(%SharedEnv_parse* %env.param)
  %264 = alloca { i64, i8* }*
  store { i64, i8* }* %263, { i64, i8* }** %264
  %265 = getelementptr [13 x i8], [13 x i8]* @.str397, i32 0, i32 0
  %266 = call %nyx_string* @nyx_string_from_cstr(i8* %265)
  %267 = call { i64, i8* }* @nyx_array_new_ptr()
  %268 = load { i64, i8* }*, { i64, i8* }** %264
  %269 = bitcast { i64, i8* }* %268 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %267, i8* %269)
  %270 = call { i64, i8* }* @make_astnode(%nyx_string* %266, { i64, i8* }* %267)
  ret { i64, i8* }* %270
else82:
  br label %merge83
merge83:
  %271 = getelementptr [7 x i8], [7 x i8]* @.str398, i32 0, i32 0
  %272 = call %nyx_string* @nyx_string_from_cstr(i8* %271)
  %273 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %272)
  br i1 %273, label %then84, label %else85
then84:
  %274 = call { i64, i8* }* @parse_static_var(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %274
else85:
  br label %merge86
merge86:
  %275 = getelementptr [7 x i8], [7 x i8]* @.str399, i32 0, i32 0
  %276 = call %nyx_string* @nyx_string_from_cstr(i8* %275)
  %277 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %276)
  br i1 %277, label %then87, label %else88
then87:
  %278 = call { i64, i8* }* @parse_module_decl(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %278
else88:
  br label %merge89
merge89:
  %279 = getelementptr [6 x i8], [6 x i8]* @.str400, i32 0, i32 0
  %280 = call %nyx_string* @nyx_string_from_cstr(i8* %279)
  %281 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %280)
  br i1 %281, label %then90, label %else91
then90:
  %282 = call %Token @advance(%SharedEnv_parse* %env.param)
  %283 = call { i64, i8* }* @parse_block(%SharedEnv_parse* %env.param)
  %284 = alloca { i64, i8* }*
  store { i64, i8* }* %283, { i64, i8* }** %284
  %285 = getelementptr [6 x i8], [6 x i8]* @.str401, i32 0, i32 0
  %286 = call %nyx_string* @nyx_string_from_cstr(i8* %285)
  %287 = call { i64, i8* }* @nyx_array_new_ptr()
  %288 = load { i64, i8* }*, { i64, i8* }** %284
  %289 = bitcast { i64, i8* }* %288 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %287, i8* %289)
  %290 = call { i64, i8* }* @make_astnode(%nyx_string* %286, { i64, i8* }* %287)
  ret { i64, i8* }* %290
else91:
  br label %merge92
merge92:
  %291 = getelementptr [4 x i8], [4 x i8]* @.str402, i32 0, i32 0
  %292 = call %nyx_string* @nyx_string_from_cstr(i8* %291)
  %293 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %292)
  br i1 %293, label %then93, label %else94
then93:
  %294 = call { i64, i8* }* @parse_try_catch(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %294
else94:
  br label %merge95
merge95:
  %295 = getelementptr [6 x i8], [6 x i8]* @.str403, i32 0, i32 0
  %296 = call %nyx_string* @nyx_string_from_cstr(i8* %295)
  %297 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %296)
  br i1 %297, label %then96, label %else97
then96:
  %298 = call { i64, i8* }* @parse_throw(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %298
else97:
  br label %merge98
merge98:
  %299 = getelementptr [6 x i8], [6 x i8]* @.str404, i32 0, i32 0
  %300 = call %nyx_string* @nyx_string_from_cstr(i8* %299)
  %301 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %300)
  br i1 %301, label %then99, label %else100
then99:
  %302 = call %Token @advance(%SharedEnv_parse* %env.param)
  %303 = call { i64, i8* }* @parse_async_function(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %303
else100:
  br label %merge101
merge101:
  %304 = getelementptr [11 x i8], [11 x i8]* @.str405, i32 0, i32 0
  %305 = call %nyx_string* @nyx_string_from_cstr(i8* %304)
  %306 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %305)
  br i1 %306, label %then102, label %else103
then102:
  %307 = call %Token @peek(%SharedEnv_parse* %env.param)
  %308 = alloca %Token
  store %Token %307, %Token* %308
  %309 = load %Token, %Token* %308
  %310 = call %nyx_string* @get_token_value(%Token %309)
  %311 = alloca %nyx_string*
  store %nyx_string* %310, %nyx_string** %311
  %312 = load %nyx_string*, %nyx_string** %311
  %313 = getelementptr [5 x i8], [5 x i8]* @.str406, i32 0, i32 0
  %314 = call %nyx_string* @nyx_string_from_cstr(i8* %313)
  %315 = call i8* @nyx_string_to_cstr(%nyx_string* %312)
  %316 = call i8* @nyx_string_to_cstr(%nyx_string* %314)
  %317 = call i32 @strcmp(i8* %315, i8* %316)
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %then105, label %else106
then105:
  %319 = call { i64, i8* }* @parse_type_alias(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %319
else106:
  br label %merge107
merge107:
  %320 = load %nyx_string*, %nyx_string** %311
  %321 = getelementptr [6 x i8], [6 x i8]* @.str407, i32 0, i32 0
  %322 = call %nyx_string* @nyx_string_from_cstr(i8* %321)
  %323 = call i8* @nyx_string_to_cstr(%nyx_string* %320)
  %324 = call i8* @nyx_string_to_cstr(%nyx_string* %322)
  %325 = call i32 @strcmp(i8* %323, i8* %324)
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %then108, label %else109
then108:
  %327 = call { i64, i8* }* @parse_macro_def(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %327
else109:
  br label %merge110
merge110:
  %328 = load %nyx_string*, %nyx_string** %311
  %329 = getelementptr [6 x i8], [6 x i8]* @.str408, i32 0, i32 0
  %330 = call %nyx_string* @nyx_string_from_cstr(i8* %329)
  %331 = call i8* @nyx_string_to_cstr(%nyx_string* %328)
  %332 = call i8* @nyx_string_to_cstr(%nyx_string* %330)
  %333 = call i32 @strcmp(i8* %331, i8* %332)
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %then111, label %else112
then111:
  %335 = call { i64, i8* }* @parse_bench_decl(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %335
else112:
  br label %merge113
merge113:
  %336 = load %nyx_string*, %nyx_string** %311
  %337 = getelementptr [6 x i8], [6 x i8]* @.str409, i32 0, i32 0
  %338 = call %nyx_string* @nyx_string_from_cstr(i8* %337)
  %339 = call i8* @nyx_string_to_cstr(%nyx_string* %336)
  %340 = call i8* @nyx_string_to_cstr(%nyx_string* %338)
  %341 = call i32 @strcmp(i8* %339, i8* %340)
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %then114, label %else115
then114:
  %343 = call { i64, i8* }* @parse_spawn_stmt(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %343
else115:
  br label %merge116
merge116:
  %344 = load %nyx_string*, %nyx_string** %311
  %345 = getelementptr [7 x i8], [7 x i8]* @.str410, i32 0, i32 0
  %346 = call %nyx_string* @nyx_string_from_cstr(i8* %345)
  %347 = call i8* @nyx_string_to_cstr(%nyx_string* %344)
  %348 = call i8* @nyx_string_to_cstr(%nyx_string* %346)
  %349 = call i32 @strcmp(i8* %347, i8* %348)
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %then117, label %else118
then117:
  %351 = call { i64, i8* }* @parse_select_stmt(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %351
else118:
  br label %merge119
merge119:
  %352 = load %nyx_string*, %nyx_string** %311
  %353 = getelementptr [5 x i8], [5 x i8]* @.str411, i32 0, i32 0
  %354 = call %nyx_string* @nyx_string_from_cstr(i8* %353)
  %355 = call i8* @nyx_string_to_cstr(%nyx_string* %352)
  %356 = call i8* @nyx_string_to_cstr(%nyx_string* %354)
  %357 = call i32 @strcmp(i8* %355, i8* %356)
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %then120, label %else121
then120:
  %359 = call %Token @advance(%SharedEnv_parse* %env.param)
  %360 = getelementptr [3 x i8], [3 x i8]* @.str412, i32 0, i32 0
  %361 = call %nyx_string* @nyx_string_from_cstr(i8* %360)
  %362 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %361)
  br i1 %362, label %then123, label %else124
then123:
  %363 = call { i64, i8* }* @parse_function(%SharedEnv_parse* %env.param)
  %364 = alloca { i64, i8* }*
  store { i64, i8* }* %363, { i64, i8* }** %364
  %365 = load { i64, i8* }*, { i64, i8* }** %364
  %366 = call i64 @nyx_array_get({ i64, i8* }* %365, i64 1)
  %367 = inttoptr i64 %366 to { i64, i8* }*
  %368 = alloca { i64, i8* }*
  store { i64, i8* }* %367, { i64, i8* }** %368
  %369 = getelementptr [9 x i8], [9 x i8]* @.str413, i32 0, i32 0
  %370 = call %nyx_string* @nyx_string_from_cstr(i8* %369)
  %371 = call { i64, i8* }* @nyx_array_new_ptr()
  %372 = load { i64, i8* }*, { i64, i8* }** %368
  %373 = call i64 @nyx_array_get({ i64, i8* }* %372, i64 0)
  call void @nyx_array_push({ i64, i8* }* %371, i64 %373)
  %374 = load { i64, i8* }*, { i64, i8* }** %368
  %375 = call i64 @nyx_array_get({ i64, i8* }* %374, i64 1)
  call void @nyx_array_push({ i64, i8* }* %371, i64 %375)
  %376 = load { i64, i8* }*, { i64, i8* }** %368
  %377 = call i64 @nyx_array_get({ i64, i8* }* %376, i64 2)
  call void @nyx_array_push({ i64, i8* }* %371, i64 %377)
  %378 = load { i64, i8* }*, { i64, i8* }** %368
  %379 = call i64 @nyx_array_get({ i64, i8* }* %378, i64 3)
  call void @nyx_array_push({ i64, i8* }* %371, i64 %379)
  %380 = load { i64, i8* }*, { i64, i8* }** %368
  %381 = call i64 @nyx_array_get({ i64, i8* }* %380, i64 4)
  call void @nyx_array_push({ i64, i8* }* %371, i64 %381)
  %382 = getelementptr [5 x i8], [5 x i8]* @.str414, i32 0, i32 0
  %383 = call %nyx_string* @nyx_string_from_cstr(i8* %382)
  %384 = ptrtoint %nyx_string* %383 to i64
  call void @nyx_array_push({ i64, i8* }* %371, i64 %384)
  %385 = call { i64, i8* }* @make_astnode(%nyx_string* %370, { i64, i8* }* %371)
  ret { i64, i8* }* %385
else124:
  br label %merge125
merge125:
  br label %merge122
else121:
  br label %merge122
merge122:
  br label %merge104
else103:
  br label %merge104
merge104:
  %386 = getelementptr [5 x i8], [5 x i8]* @.str415, i32 0, i32 0
  %387 = call %nyx_string* @nyx_string_from_cstr(i8* %386)
  %388 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %387)
  br i1 %388, label %then126, label %else127
then126:
  %389 = call %Token @advance(%SharedEnv_parse* %env.param)
  %390 = call { i64, i8* }* @parse_unary(%SharedEnv_parse* %env.param)
  %391 = alloca { i64, i8* }*
  store { i64, i8* }* %390, { i64, i8* }** %391
  %392 = getelementptr [7 x i8], [7 x i8]* @.str416, i32 0, i32 0
  %393 = call %nyx_string* @nyx_string_from_cstr(i8* %392)
  %394 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %393)
  br i1 %394, label %then129, label %else130
then129:
  %395 = call %Token @advance(%SharedEnv_parse* %env.param)
  %396 = call { i64, i8* }* @parse_expression(%SharedEnv_parse* %env.param)
  %397 = alloca { i64, i8* }*
  store { i64, i8* }* %396, { i64, i8* }** %397
  %398 = getelementptr [13 x i8], [13 x i8]* @.str417, i32 0, i32 0
  %399 = call %nyx_string* @nyx_string_from_cstr(i8* %398)
  %400 = call { i64, i8* }* @nyx_array_new_ptr()
  %401 = load { i64, i8* }*, { i64, i8* }** %391
  %402 = bitcast { i64, i8* }* %401 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %400, i8* %402)
  %403 = load { i64, i8* }*, { i64, i8* }** %397
  %404 = bitcast { i64, i8* }* %403 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %400, i8* %404)
  %405 = call { i64, i8* }* @make_astnode(%nyx_string* %399, { i64, i8* }* %400)
  ret { i64, i8* }* %405
else130:
  br label %merge131
merge131:
  %406 = getelementptr [6 x i8], [6 x i8]* @.str418, i32 0, i32 0
  %407 = call %nyx_string* @nyx_string_from_cstr(i8* %406)
  %408 = call { i64, i8* }* @nyx_array_new_ptr()
  %409 = load { i64, i8* }*, { i64, i8* }** %391
  %410 = bitcast { i64, i8* }* %409 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %408, i8* %410)
  %411 = call { i64, i8* }* @make_astnode(%nyx_string* %407, { i64, i8* }* %408)
  ret { i64, i8* }* %411
else127:
  br label %merge128
merge128:
  %412 = call { i64, i8* }* @parse_assignment_or_expr(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %412
}

define internal { i64, i8* }* @parse_spawn_stmt(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = call %Token @advance(%SharedEnv_parse* %env.param)
  %15 = load { i64, i8* }*, { i64, i8* }** %8
  %16 = call i64 @nyx_array_get({ i64, i8* }* %15, i64 0)
  %17 = alloca i64
  store i64 %16, i64* %17
  %18 = load { i64, i8* }*, { i64, i8* }** %8
  %19 = load { i64, i8* }*, { i64, i8* }** %8
  %20 = call i64 @nyx_array_get({ i64, i8* }* %19, i64 0)
  %21 = add i64 %20, 1
  call void @nyx_array_set({ i64, i8* }* %18, i64 0, i64 %21)
  %22 = getelementptr [9 x i8], [9 x i8]* @.str419, i32 0, i32 0
  %23 = call %nyx_string* @nyx_string_from_cstr(i8* %22)
  %24 = load i64, i64* %17
  %25 = call %nyx_string* @nyx_string_from_int(i64 %24)
  %26 = call %nyx_string* @nyx_string_concat(%nyx_string* %23, %nyx_string* %25)
  %27 = alloca %nyx_string*
  store %nyx_string* %26, %nyx_string** %27
  %28 = call { i64, i8* }* @parse_block(%SharedEnv_parse* %env.param)
  %29 = alloca { i64, i8* }*
  store { i64, i8* }* %28, { i64, i8* }** %29
  %30 = getelementptr [9 x i8], [9 x i8]* @.str420, i32 0, i32 0
  %31 = call %nyx_string* @nyx_string_from_cstr(i8* %30)
  %32 = call { i64, i8* }* @nyx_array_new_ptr()
  %33 = load %nyx_string*, %nyx_string** %27
  %34 = ptrtoint %nyx_string* %33 to i64
  call void @nyx_array_push({ i64, i8* }* %32, i64 %34)
  %35 = call { i64, i8* }* @nyx_array_new_ptr()
  %36 = bitcast { i64, i8* }* %35 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %32, i8* %36)
  %37 = getelementptr [4 x i8], [4 x i8]* @.str421, i32 0, i32 0
  %38 = call %nyx_string* @nyx_string_from_cstr(i8* %37)
  %39 = ptrtoint %nyx_string* %38 to i64
  call void @nyx_array_push({ i64, i8* }* %32, i64 %39)
  %40 = load { i64, i8* }*, { i64, i8* }** %29
  %41 = bitcast { i64, i8* }* %40 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %32, i8* %41)
  %42 = call { i64, i8* }* @nyx_array_new_ptr()
  %43 = bitcast { i64, i8* }* %42 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %32, i8* %43)
  %44 = call { i64, i8* }* @make_astnode(%nyx_string* %31, { i64, i8* }* %32)
  %45 = alloca { i64, i8* }*
  store { i64, i8* }* %44, { i64, i8* }** %45
  %46 = load { i64, i8* }*, { i64, i8* }** %7
  %47 = load { i64, i8* }*, { i64, i8* }** %45
  %48 = ptrtoint { i64, i8* }* %47 to i64
  call void @nyx_array_push({ i64, i8* }* %46, i64 %48)
  %49 = getelementptr [11 x i8], [11 x i8]* @.str422, i32 0, i32 0
  %50 = call %nyx_string* @nyx_string_from_cstr(i8* %49)
  %51 = call { i64, i8* }* @nyx_array_new_ptr()
  %52 = load %nyx_string*, %nyx_string** %27
  %53 = ptrtoint %nyx_string* %52 to i64
  call void @nyx_array_push({ i64, i8* }* %51, i64 %53)
  %54 = call { i64, i8* }* @make_astnode(%nyx_string* %50, { i64, i8* }* %51)
  %55 = alloca { i64, i8* }*
  store { i64, i8* }* %54, { i64, i8* }** %55
  %56 = getelementptr [11 x i8], [11 x i8]* @.str423, i32 0, i32 0
  %57 = call %nyx_string* @nyx_string_from_cstr(i8* %56)
  %58 = call { i64, i8* }* @nyx_array_new_ptr()
  %59 = getelementptr [13 x i8], [13 x i8]* @.str424, i32 0, i32 0
  %60 = call %nyx_string* @nyx_string_from_cstr(i8* %59)
  %61 = ptrtoint %nyx_string* %60 to i64
  call void @nyx_array_push({ i64, i8* }* %58, i64 %61)
  %62 = call { i64, i8* }* @make_astnode(%nyx_string* %57, { i64, i8* }* %58)
  %63 = alloca { i64, i8* }*
  store { i64, i8* }* %62, { i64, i8* }** %63
  %64 = call { i64, i8* }* @nyx_array_new_ptr()
  %65 = alloca { i64, i8* }*
  store { i64, i8* }* %64, { i64, i8* }** %65
  %66 = load { i64, i8* }*, { i64, i8* }** %65
  %67 = load { i64, i8* }*, { i64, i8* }** %55
  %68 = ptrtoint { i64, i8* }* %67 to i64
  call void @nyx_array_push({ i64, i8* }* %66, i64 %68)
  %69 = getelementptr [5 x i8], [5 x i8]* @.str425, i32 0, i32 0
  %70 = call %nyx_string* @nyx_string_from_cstr(i8* %69)
  %71 = call { i64, i8* }* @nyx_array_new_ptr()
  %72 = load { i64, i8* }*, { i64, i8* }** %63
  %73 = bitcast { i64, i8* }* %72 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %71, i8* %73)
  %74 = load { i64, i8* }*, { i64, i8* }** %65
  %75 = bitcast { i64, i8* }* %74 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %71, i8* %75)
  %76 = call { i64, i8* }* @make_astnode(%nyx_string* %70, { i64, i8* }* %71)
  ret { i64, i8* }* %76
}

define internal { i64, i8* }* @parse_select_stmt(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = call %Token @advance(%SharedEnv_parse* %env.param)
  %15 = getelementptr [11 x i8], [11 x i8]* @.str426, i32 0, i32 0
  %16 = call %nyx_string* @nyx_string_from_cstr(i8* %15)
  %17 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %16)
  %18 = call { i64, i8* }* @nyx_array_new_ptr()
  %19 = alloca { i64, i8* }*
  store { i64, i8* }* %18, { i64, i8* }** %19
  %20 = getelementptr [6 x i8], [6 x i8]* @.str427, i32 0, i32 0
  %21 = call %nyx_string* @nyx_string_from_cstr(i8* %20)
  %22 = call { i64, i8* }* @nyx_array_new_ptr()
  %23 = call { i64, i8* }* @nyx_array_new_ptr()
  %24 = bitcast { i64, i8* }* %23 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %22, i8* %24)
  %25 = call { i64, i8* }* @make_astnode(%nyx_string* %21, { i64, i8* }* %22)
  %26 = alloca { i64, i8* }*
  store { i64, i8* }* %25, { i64, i8* }** %26
  %27 = alloca i1
  store i1 0, i1* %27
  br label %while_cond0
while_cond0:
  %28 = getelementptr [12 x i8], [12 x i8]* @.str428, i32 0, i32 0
  %29 = call %nyx_string* @nyx_string_from_cstr(i8* %28)
  %30 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %29)
  %31 = xor i1 %30, true
  br i1 %31, label %while_body1, label %while_end2
while_body1:
  %32 = call %Token @peek(%SharedEnv_parse* %env.param)
  %33 = alloca %Token
  store %Token %32, %Token* %33
  %34 = load %Token, %Token* %33
  %35 = call %nyx_string* @get_token_value(%Token %34)
  %36 = alloca %nyx_string*
  store %nyx_string* %35, %nyx_string** %36
  %37 = load %nyx_string*, %nyx_string** %36
  %38 = getelementptr [8 x i8], [8 x i8]* @.str429, i32 0, i32 0
  %39 = call %nyx_string* @nyx_string_from_cstr(i8* %38)
  %40 = call i8* @nyx_string_to_cstr(%nyx_string* %37)
  %41 = call i8* @nyx_string_to_cstr(%nyx_string* %39)
  %42 = call i32 @strcmp(i8* %40, i8* %41)
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %then3, label %else4
then3:
  %44 = call %Token @advance(%SharedEnv_parse* %env.param)
  %45 = getelementptr [12 x i8], [12 x i8]* @.str430, i32 0, i32 0
  %46 = call %nyx_string* @nyx_string_from_cstr(i8* %45)
  %47 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %46)
  %48 = call { i64, i8* }* @parse_block(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %48, { i64, i8* }** %26
  store i1 1, i1* %27
  br label %merge5
else4:
  %49 = load %nyx_string*, %nyx_string** %36
  %50 = getelementptr [5 x i8], [5 x i8]* @.str431, i32 0, i32 0
  %51 = call %nyx_string* @nyx_string_from_cstr(i8* %50)
  %52 = call i8* @nyx_string_to_cstr(%nyx_string* %49)
  %53 = call i8* @nyx_string_to_cstr(%nyx_string* %51)
  %54 = call i32 @strcmp(i8* %52, i8* %53)
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %then6, label %else7
then6:
  %56 = call %Token @advance(%SharedEnv_parse* %env.param)
  br label %merge8
else7:
  br label %merge8
merge8:
  %57 = call { i64, i8* }* @parse_expression(%SharedEnv_parse* %env.param)
  %58 = alloca { i64, i8* }*
  store { i64, i8* }* %57, { i64, i8* }** %58
  %59 = getelementptr [12 x i8], [12 x i8]* @.str432, i32 0, i32 0
  %60 = call %nyx_string* @nyx_string_from_cstr(i8* %59)
  %61 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %60)
  %62 = call { i64, i8* }* @parse_block(%SharedEnv_parse* %env.param)
  %63 = alloca { i64, i8* }*
  store { i64, i8* }* %62, { i64, i8* }** %63
  %64 = call { i64, i8* }* @nyx_array_new_ptr()
  %65 = alloca { i64, i8* }*
  store { i64, i8* }* %64, { i64, i8* }** %65
  %66 = load { i64, i8* }*, { i64, i8* }** %65
  %67 = load { i64, i8* }*, { i64, i8* }** %58
  %68 = ptrtoint { i64, i8* }* %67 to i64
  call void @nyx_array_push({ i64, i8* }* %66, i64 %68)
  %69 = load { i64, i8* }*, { i64, i8* }** %65
  %70 = load { i64, i8* }*, { i64, i8* }** %63
  %71 = ptrtoint { i64, i8* }* %70 to i64
  call void @nyx_array_push({ i64, i8* }* %69, i64 %71)
  %72 = load { i64, i8* }*, { i64, i8* }** %19
  %73 = load { i64, i8* }*, { i64, i8* }** %65
  %74 = ptrtoint { i64, i8* }* %73 to i64
  call void @nyx_array_push({ i64, i8* }* %72, i64 %74)
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %75 = getelementptr [12 x i8], [12 x i8]* @.str433, i32 0, i32 0
  %76 = call %nyx_string* @nyx_string_from_cstr(i8* %75)
  %77 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %76)
  %78 = alloca i64
  store i64 0, i64* %78
  %79 = load i1, i1* %27
  br i1 %79, label %then9, label %else10
then9:
  store i64 1, i64* %78
  br label %merge11
else10:
  br label %merge11
merge11:
  %80 = getelementptr [12 x i8], [12 x i8]* @.str434, i32 0, i32 0
  %81 = call %nyx_string* @nyx_string_from_cstr(i8* %80)
  %82 = call { i64, i8* }* @nyx_array_new_ptr()
  %83 = load { i64, i8* }*, { i64, i8* }** %19
  %84 = bitcast { i64, i8* }* %83 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %82, i8* %84)
  %85 = load { i64, i8* }*, { i64, i8* }** %26
  %86 = bitcast { i64, i8* }* %85 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %82, i8* %86)
  %87 = load i64, i64* %78
  call void @nyx_array_push({ i64, i8* }* %82, i64 %87)
  %88 = call { i64, i8* }* @make_astnode(%nyx_string* %81, { i64, i8* }* %82)
  ret { i64, i8* }* %88
}

define internal { i64, i8* }* @parse_bench_decl(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = call %Token @advance(%SharedEnv_parse* %env.param)
  %15 = getelementptr [7 x i8], [7 x i8]* @.str435, i32 0, i32 0
  %16 = call %nyx_string* @nyx_string_from_cstr(i8* %15)
  %17 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %16)
  %18 = alloca %Token
  store %Token %17, %Token* %18
  %19 = load %Token, %Token* %18
  %20 = call %nyx_string* @get_token_value(%Token %19)
  %21 = alloca %nyx_string*
  store %nyx_string* %20, %nyx_string** %21
  %22 = getelementptr [7 x i8], [7 x i8]* @.str436, i32 0, i32 0
  %23 = call %nyx_string* @nyx_string_from_cstr(i8* %22)
  %24 = alloca %nyx_string*
  store %nyx_string* %23, %nyx_string** %24
  %25 = getelementptr [7 x i8], [7 x i8]* @.str437, i32 0, i32 0
  %26 = call %nyx_string* @nyx_string_from_cstr(i8* %25)
  %27 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %26)
  br i1 %27, label %then0, label %else1
then0:
  %28 = call %Token @advance(%SharedEnv_parse* %env.param)
  %29 = alloca %Token
  store %Token %28, %Token* %29
  %30 = load %Token, %Token* %29
  %31 = call %nyx_string* @get_token_value(%Token %30)
  store %nyx_string* %31, %nyx_string** %24
  br label %merge2
else1:
  br label %merge2
merge2:
  %32 = call { i64, i8* }* @parse_block(%SharedEnv_parse* %env.param)
  %33 = alloca { i64, i8* }*
  store { i64, i8* }* %32, { i64, i8* }** %33
  %34 = getelementptr [11 x i8], [11 x i8]* @.str438, i32 0, i32 0
  %35 = call %nyx_string* @nyx_string_from_cstr(i8* %34)
  %36 = call { i64, i8* }* @nyx_array_new_ptr()
  %37 = load %nyx_string*, %nyx_string** %21
  %38 = ptrtoint %nyx_string* %37 to i64
  call void @nyx_array_push({ i64, i8* }* %36, i64 %38)
  %39 = load %nyx_string*, %nyx_string** %24
  %40 = ptrtoint %nyx_string* %39 to i64
  call void @nyx_array_push({ i64, i8* }* %36, i64 %40)
  %41 = load { i64, i8* }*, { i64, i8* }** %33
  %42 = bitcast { i64, i8* }* %41 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %36, i8* %42)
  %43 = call { i64, i8* }* @make_astnode(%nyx_string* %35, { i64, i8* }* %36)
  ret { i64, i8* }* %43
}

define internal { i64, i8* }* @parse_test_decl(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = getelementptr [5 x i8], [5 x i8]* @.str439, i32 0, i32 0
  %15 = call %nyx_string* @nyx_string_from_cstr(i8* %14)
  %16 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %15)
  %17 = getelementptr [7 x i8], [7 x i8]* @.str440, i32 0, i32 0
  %18 = call %nyx_string* @nyx_string_from_cstr(i8* %17)
  %19 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %18)
  %20 = alloca %Token
  store %Token %19, %Token* %20
  %21 = load %Token, %Token* %20
  %22 = call %nyx_string* @get_token_value(%Token %21)
  %23 = alloca %nyx_string*
  store %nyx_string* %22, %nyx_string** %23
  %24 = call { i64, i8* }* @parse_block(%SharedEnv_parse* %env.param)
  %25 = alloca { i64, i8* }*
  store { i64, i8* }* %24, { i64, i8* }** %25
  %26 = getelementptr [10 x i8], [10 x i8]* @.str441, i32 0, i32 0
  %27 = call %nyx_string* @nyx_string_from_cstr(i8* %26)
  %28 = call { i64, i8* }* @nyx_array_new_ptr()
  %29 = load %nyx_string*, %nyx_string** %23
  %30 = ptrtoint %nyx_string* %29 to i64
  call void @nyx_array_push({ i64, i8* }* %28, i64 %30)
  %31 = load { i64, i8* }*, { i64, i8* }** %25
  %32 = bitcast { i64, i8* }* %31 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %28, i8* %32)
  %33 = call { i64, i8* }* @make_astnode(%nyx_string* %27, { i64, i8* }* %28)
  ret { i64, i8* }* %33
}

define internal { i64, i8* }* @parse_static_var(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = getelementptr [7 x i8], [7 x i8]* @.str442, i32 0, i32 0
  %15 = call %nyx_string* @nyx_string_from_cstr(i8* %14)
  %16 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %15)
  %17 = getelementptr [4 x i8], [4 x i8]* @.str443, i32 0, i32 0
  %18 = call %nyx_string* @nyx_string_from_cstr(i8* %17)
  %19 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %18)
  %20 = getelementptr [11 x i8], [11 x i8]* @.str444, i32 0, i32 0
  %21 = call %nyx_string* @nyx_string_from_cstr(i8* %20)
  %22 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %21)
  %23 = alloca %Token
  store %Token %22, %Token* %23
  %24 = load %Token, %Token* %23
  %25 = call %nyx_string* @get_token_value(%Token %24)
  %26 = alloca %nyx_string*
  store %nyx_string* %25, %nyx_string** %26
  %27 = getelementptr [4 x i8], [4 x i8]* @.str445, i32 0, i32 0
  %28 = call %nyx_string* @nyx_string_from_cstr(i8* %27)
  %29 = alloca %nyx_string*
  store %nyx_string* %28, %nyx_string** %29
  %30 = getelementptr [6 x i8], [6 x i8]* @.str446, i32 0, i32 0
  %31 = call %nyx_string* @nyx_string_from_cstr(i8* %30)
  %32 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %31)
  br i1 %32, label %then0, label %else1
then0:
  %33 = call %Token @advance(%SharedEnv_parse* %env.param)
  %34 = call %nyx_string* @parse_type_annotation(%SharedEnv_parse* %env.param)
  store %nyx_string* %34, %nyx_string** %29
  br label %merge2
else1:
  br label %merge2
merge2:
  %35 = getelementptr [7 x i8], [7 x i8]* @.str447, i32 0, i32 0
  %36 = call %nyx_string* @nyx_string_from_cstr(i8* %35)
  %37 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %36)
  %38 = call { i64, i8* }* @parse_expression(%SharedEnv_parse* %env.param)
  %39 = alloca { i64, i8* }*
  store { i64, i8* }* %38, { i64, i8* }** %39
  %40 = getelementptr [11 x i8], [11 x i8]* @.str448, i32 0, i32 0
  %41 = call %nyx_string* @nyx_string_from_cstr(i8* %40)
  %42 = call { i64, i8* }* @nyx_array_new_ptr()
  %43 = load %nyx_string*, %nyx_string** %26
  %44 = ptrtoint %nyx_string* %43 to i64
  call void @nyx_array_push({ i64, i8* }* %42, i64 %44)
  %45 = load %nyx_string*, %nyx_string** %29
  %46 = ptrtoint %nyx_string* %45 to i64
  call void @nyx_array_push({ i64, i8* }* %42, i64 %46)
  %47 = load { i64, i8* }*, { i64, i8* }** %39
  %48 = bitcast { i64, i8* }* %47 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %42, i8* %48)
  %49 = call { i64, i8* }* @make_astnode(%nyx_string* %41, { i64, i8* }* %42)
  ret { i64, i8* }* %49
}

define internal { i64, i8* }* @parse_extern_fn(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = getelementptr [7 x i8], [7 x i8]* @.str449, i32 0, i32 0
  %15 = call %nyx_string* @nyx_string_from_cstr(i8* %14)
  %16 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %15)
  %17 = getelementptr [7 x i8], [7 x i8]* @.str450, i32 0, i32 0
  %18 = call %nyx_string* @nyx_string_from_cstr(i8* %17)
  %19 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %18)
  %20 = alloca %Token
  store %Token %19, %Token* %20
  %21 = load %Token, %Token* %20
  %22 = call %nyx_string* @get_token_value(%Token %21)
  %23 = alloca %nyx_string*
  store %nyx_string* %22, %nyx_string** %23
  %24 = getelementptr [3 x i8], [3 x i8]* @.str451, i32 0, i32 0
  %25 = call %nyx_string* @nyx_string_from_cstr(i8* %24)
  %26 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %25)
  %27 = getelementptr [11 x i8], [11 x i8]* @.str452, i32 0, i32 0
  %28 = call %nyx_string* @nyx_string_from_cstr(i8* %27)
  %29 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %28)
  %30 = alloca %Token
  store %Token %29, %Token* %30
  %31 = load %Token, %Token* %30
  %32 = call %nyx_string* @get_token_value(%Token %31)
  %33 = alloca %nyx_string*
  store %nyx_string* %32, %nyx_string** %33
  %34 = getelementptr [11 x i8], [11 x i8]* @.str453, i32 0, i32 0
  %35 = call %nyx_string* @nyx_string_from_cstr(i8* %34)
  %36 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %35)
  %37 = call { i64, i8* }* @nyx_array_new_ptr()
  %38 = alloca { i64, i8* }*
  store { i64, i8* }* %37, { i64, i8* }** %38
  %39 = alloca i1
  store i1 0, i1* %39
  br label %while_cond0
while_cond0:
  %40 = load i1, i1* %39
  %41 = xor i1 %40, true
  br i1 %41, label %while_body1, label %while_end2
while_body1:
  %42 = getelementptr [12 x i8], [12 x i8]* @.str454, i32 0, i32 0
  %43 = call %nyx_string* @nyx_string_from_cstr(i8* %42)
  %44 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %43)
  br i1 %44, label %then3, label %else4
then3:
  %45 = call %Token @advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %39
  br label %merge5
else4:
  %46 = load { i64, i8* }*, { i64, i8* }** %38
  %47 = call i64 @nyx_array_length({ i64, i8* }* %46)
  %48 = icmp sgt i64 %47, 0
  br i1 %48, label %then6, label %else7
then6:
  %49 = getelementptr [6 x i8], [6 x i8]* @.str455, i32 0, i32 0
  %50 = call %nyx_string* @nyx_string_from_cstr(i8* %49)
  %51 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %50)
  br label %merge8
else7:
  br label %merge8
merge8:
  %52 = getelementptr [11 x i8], [11 x i8]* @.str456, i32 0, i32 0
  %53 = call %nyx_string* @nyx_string_from_cstr(i8* %52)
  %54 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %53)
  %55 = alloca %Token
  store %Token %54, %Token* %55
  %56 = load %Token, %Token* %55
  %57 = call %nyx_string* @get_token_value(%Token %56)
  %58 = alloca %nyx_string*
  store %nyx_string* %57, %nyx_string** %58
  %59 = getelementptr [6 x i8], [6 x i8]* @.str457, i32 0, i32 0
  %60 = call %nyx_string* @nyx_string_from_cstr(i8* %59)
  %61 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %60)
  %62 = call %nyx_string* @parse_type_annotation(%SharedEnv_parse* %env.param)
  %63 = alloca %nyx_string*
  store %nyx_string* %62, %nyx_string** %63
  %64 = load { i64, i8* }*, { i64, i8* }** %38
  %65 = call { i64, i8* }* @nyx_array_new_ptr()
  %66 = load %nyx_string*, %nyx_string** %58
  %67 = ptrtoint %nyx_string* %66 to i64
  call void @nyx_array_push({ i64, i8* }* %65, i64 %67)
  %68 = load %nyx_string*, %nyx_string** %63
  %69 = ptrtoint %nyx_string* %68 to i64
  call void @nyx_array_push({ i64, i8* }* %65, i64 %69)
  %70 = ptrtoint { i64, i8* }* %65 to i64
  call void @nyx_array_push({ i64, i8* }* %64, i64 %70)
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %71 = getelementptr [5 x i8], [5 x i8]* @.str458, i32 0, i32 0
  %72 = call %nyx_string* @nyx_string_from_cstr(i8* %71)
  %73 = alloca %nyx_string*
  store %nyx_string* %72, %nyx_string** %73
  %74 = getelementptr [6 x i8], [6 x i8]* @.str459, i32 0, i32 0
  %75 = call %nyx_string* @nyx_string_from_cstr(i8* %74)
  %76 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %75)
  br i1 %76, label %then9, label %else10
then9:
  %77 = call %Token @advance(%SharedEnv_parse* %env.param)
  %78 = call %nyx_string* @parse_type_annotation(%SharedEnv_parse* %env.param)
  store %nyx_string* %78, %nyx_string** %73
  br label %merge11
else10:
  br label %merge11
merge11:
  %79 = getelementptr [10 x i8], [10 x i8]* @.str460, i32 0, i32 0
  %80 = call %nyx_string* @nyx_string_from_cstr(i8* %79)
  %81 = call { i64, i8* }* @nyx_array_new_ptr()
  %82 = load %nyx_string*, %nyx_string** %33
  %83 = ptrtoint %nyx_string* %82 to i64
  call void @nyx_array_push({ i64, i8* }* %81, i64 %83)
  %84 = load { i64, i8* }*, { i64, i8* }** %38
  %85 = bitcast { i64, i8* }* %84 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %81, i8* %85)
  %86 = load %nyx_string*, %nyx_string** %73
  %87 = ptrtoint %nyx_string* %86 to i64
  call void @nyx_array_push({ i64, i8* }* %81, i64 %87)
  %88 = load %nyx_string*, %nyx_string** %23
  %89 = ptrtoint %nyx_string* %88 to i64
  call void @nyx_array_push({ i64, i8* }* %81, i64 %89)
  %90 = call { i64, i8* }* @make_astnode(%nyx_string* %80, { i64, i8* }* %81)
  ret { i64, i8* }* %90
}

define internal { i64, i8* }* @parse_macro_def(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = call %Token @advance(%SharedEnv_parse* %env.param)
  %15 = getelementptr [11 x i8], [11 x i8]* @.str461, i32 0, i32 0
  %16 = call %nyx_string* @nyx_string_from_cstr(i8* %15)
  %17 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %16)
  %18 = alloca %Token
  store %Token %17, %Token* %18
  %19 = load %Token, %Token* %18
  %20 = call %nyx_string* @get_token_value(%Token %19)
  %21 = alloca %nyx_string*
  store %nyx_string* %20, %nyx_string** %21
  %22 = getelementptr [11 x i8], [11 x i8]* @.str462, i32 0, i32 0
  %23 = call %nyx_string* @nyx_string_from_cstr(i8* %22)
  %24 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %23)
  %25 = getelementptr [11 x i8], [11 x i8]* @.str463, i32 0, i32 0
  %26 = call %nyx_string* @nyx_string_from_cstr(i8* %25)
  %27 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %26)
  %28 = call { i64, i8* }* @nyx_array_new_ptr()
  %29 = alloca { i64, i8* }*
  store { i64, i8* }* %28, { i64, i8* }** %29
  %30 = alloca i1
  store i1 0, i1* %30
  br label %while_cond0
while_cond0:
  %31 = load i1, i1* %30
  %32 = xor i1 %31, true
  br i1 %32, label %while_body1, label %while_end2
while_body1:
  %33 = getelementptr [12 x i8], [12 x i8]* @.str464, i32 0, i32 0
  %34 = call %nyx_string* @nyx_string_from_cstr(i8* %33)
  %35 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %34)
  br i1 %35, label %then3, label %else4
then3:
  %36 = call %Token @advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %30
  br label %merge5
else4:
  %37 = load { i64, i8* }*, { i64, i8* }** %29
  %38 = call i64 @nyx_array_length({ i64, i8* }* %37)
  %39 = icmp sgt i64 %38, 0
  br i1 %39, label %then6, label %else7
then6:
  %40 = getelementptr [6 x i8], [6 x i8]* @.str465, i32 0, i32 0
  %41 = call %nyx_string* @nyx_string_from_cstr(i8* %40)
  %42 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %41)
  br label %merge8
else7:
  br label %merge8
merge8:
  %43 = getelementptr [11 x i8], [11 x i8]* @.str466, i32 0, i32 0
  %44 = call %nyx_string* @nyx_string_from_cstr(i8* %43)
  %45 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %44)
  %46 = alloca %Token
  store %Token %45, %Token* %46
  %47 = load { i64, i8* }*, { i64, i8* }** %29
  %48 = load %Token, %Token* %46
  %49 = call %nyx_string* @get_token_value(%Token %48)
  %50 = ptrtoint %nyx_string* %49 to i64
  call void @nyx_array_push({ i64, i8* }* %47, i64 %50)
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %51 = getelementptr [12 x i8], [12 x i8]* @.str467, i32 0, i32 0
  %52 = call %nyx_string* @nyx_string_from_cstr(i8* %51)
  %53 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %52)
  %54 = load i64, i64* %4
  %55 = alloca i64
  store i64 %54, i64* %55
  %56 = call { i64, i8* }* @parse_block(%SharedEnv_parse* %env.param)
  %57 = getelementptr [12 x i8], [12 x i8]* @.str468, i32 0, i32 0
  %58 = call %nyx_string* @nyx_string_from_cstr(i8* %57)
  %59 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %58)
  %60 = getelementptr [1 x i8], [1 x i8]* @.str469, i32 0, i32 0
  %61 = call %nyx_string* @nyx_string_from_cstr(i8* %60)
  %62 = alloca %nyx_string*
  store %nyx_string* %61, %nyx_string** %62
  %63 = alloca i64
  store i64 0, i64* %63
  br label %while_cond9
while_cond9:
  %64 = load i64, i64* %63
  %65 = load { i64, i8* }*, { i64, i8* }** %29
  %66 = call i64 @nyx_array_length({ i64, i8* }* %65)
  %67 = icmp slt i64 %64, %66
  br i1 %67, label %while_body10, label %while_end11
while_body10:
  %68 = load i64, i64* %63
  %69 = icmp sgt i64 %68, 0
  br i1 %69, label %then12, label %else13
then12:
  %70 = load %nyx_string*, %nyx_string** %62
  %71 = getelementptr [2 x i8], [2 x i8]* @.str470, i32 0, i32 0
  %72 = call %nyx_string* @nyx_string_from_cstr(i8* %71)
  %73 = call %nyx_string* @nyx_string_concat(%nyx_string* %70, %nyx_string* %72)
  store %nyx_string* %73, %nyx_string** %62
  br label %merge14
else13:
  br label %merge14
merge14:
  %74 = load { i64, i8* }*, { i64, i8* }** %29
  %75 = load i64, i64* %63
  %76 = call i64 @nyx_array_get({ i64, i8* }* %74, i64 %75)
  %77 = inttoptr i64 %76 to %nyx_string*
  %78 = alloca %nyx_string*
  store %nyx_string* %77, %nyx_string** %78
  %79 = load %nyx_string*, %nyx_string** %62
  %80 = load %nyx_string*, %nyx_string** %78
  %81 = call %nyx_string* @nyx_string_concat(%nyx_string* %79, %nyx_string* %80)
  store %nyx_string* %81, %nyx_string** %62
  %82 = load i64, i64* %63
  %83 = add i64 %82, 1
  store i64 %83, i64* %63
  br label %while_cond9
while_end11:
  %84 = load { i64, i8* }*, { i64, i8* }** %9
  %85 = load %nyx_string*, %nyx_string** %21
  %86 = ptrtoint %nyx_string* %85 to i64
  call void @nyx_array_push({ i64, i8* }* %84, i64 %86)
  %87 = load { i64, i8* }*, { i64, i8* }** %10
  %88 = load i64, i64* %55
  call void @nyx_array_push({ i64, i8* }* %87, i64 %88)
  %89 = load { i64, i8* }*, { i64, i8* }** %11
  %90 = load %nyx_string*, %nyx_string** %62
  %91 = ptrtoint %nyx_string* %90 to i64
  call void @nyx_array_push({ i64, i8* }* %89, i64 %91)
  %92 = getelementptr [10 x i8], [10 x i8]* @.str471, i32 0, i32 0
  %93 = call %nyx_string* @nyx_string_from_cstr(i8* %92)
  %94 = call { i64, i8* }* @nyx_array_new_ptr()
  %95 = load %nyx_string*, %nyx_string** %21
  %96 = ptrtoint %nyx_string* %95 to i64
  call void @nyx_array_push({ i64, i8* }* %94, i64 %96)
  %97 = call { i64, i8* }* @make_astnode(%nyx_string* %93, { i64, i8* }* %94)
  ret { i64, i8* }* %97
}

define internal { i64, i8* }* @parse_macro_invocation(%SharedEnv_parse* %env.param, %nyx_string* %mac_name.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = alloca %nyx_string*
  store %nyx_string* %mac_name.param, %nyx_string** %14
  %15 = getelementptr [4 x i8], [4 x i8]* @.str472, i32 0, i32 0
  %16 = call %nyx_string* @nyx_string_from_cstr(i8* %15)
  %17 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %16)
  %18 = getelementptr [11 x i8], [11 x i8]* @.str473, i32 0, i32 0
  %19 = call %nyx_string* @nyx_string_from_cstr(i8* %18)
  %20 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %19)
  %21 = call { i64, i8* }* @nyx_array_new_ptr()
  %22 = alloca { i64, i8* }*
  store { i64, i8* }* %21, { i64, i8* }** %22
  %23 = alloca i1
  store i1 0, i1* %23
  br label %while_cond0
while_cond0:
  %24 = load i1, i1* %23
  %25 = xor i1 %24, true
  br i1 %25, label %while_body1, label %while_end2
while_body1:
  %26 = getelementptr [12 x i8], [12 x i8]* @.str474, i32 0, i32 0
  %27 = call %nyx_string* @nyx_string_from_cstr(i8* %26)
  %28 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %27)
  br i1 %28, label %then3, label %else4
then3:
  %29 = call %Token @advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %23
  br label %merge5
else4:
  %30 = load { i64, i8* }*, { i64, i8* }** %22
  %31 = call i64 @nyx_array_length({ i64, i8* }* %30)
  %32 = icmp sgt i64 %31, 0
  br i1 %32, label %then6, label %else7
then6:
  %33 = getelementptr [6 x i8], [6 x i8]* @.str475, i32 0, i32 0
  %34 = call %nyx_string* @nyx_string_from_cstr(i8* %33)
  %35 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %34)
  br label %merge8
else7:
  br label %merge8
merge8:
  %36 = load { i64, i8* }*, { i64, i8* }** %22
  %37 = call { i64, i8* }* @parse_expression(%SharedEnv_parse* %env.param)
  %38 = ptrtoint { i64, i8* }* %37 to i64
  call void @nyx_array_push({ i64, i8* }* %36, i64 %38)
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %39 = alloca i64
  store i64 0, i64* %39
  %40 = alloca i64
  store i64 0, i64* %40
  br label %while_cond9
while_cond9:
  %41 = load i64, i64* %40
  %42 = load { i64, i8* }*, { i64, i8* }** %9
  %43 = call i64 @nyx_array_length({ i64, i8* }* %42)
  %44 = icmp slt i64 %41, %43
  br i1 %44, label %while_body10, label %while_end11
while_body10:
  %45 = load { i64, i8* }*, { i64, i8* }** %9
  %46 = load i64, i64* %40
  %47 = call i64 @nyx_array_get({ i64, i8* }* %45, i64 %46)
  %48 = inttoptr i64 %47 to %nyx_string*
  %49 = alloca %nyx_string*
  store %nyx_string* %48, %nyx_string** %49
  %50 = load %nyx_string*, %nyx_string** %49
  %51 = load %nyx_string*, %nyx_string** %14
  %52 = call i8* @nyx_string_to_cstr(%nyx_string* %50)
  %53 = call i8* @nyx_string_to_cstr(%nyx_string* %51)
  %54 = call i32 @strcmp(i8* %52, i8* %53)
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %then12, label %else13
then12:
  %56 = load i64, i64* %40
  store i64 %56, i64* %39
  br label %merge14
else13:
  br label %merge14
merge14:
  %57 = load i64, i64* %40
  %58 = add i64 %57, 1
  store i64 %58, i64* %40
  br label %while_cond9
while_end11:
  %59 = load { i64, i8* }*, { i64, i8* }** %11
  %60 = load i64, i64* %39
  %61 = call i64 @nyx_array_get({ i64, i8* }* %59, i64 %60)
  %62 = inttoptr i64 %61 to %nyx_string*
  %63 = alloca %nyx_string*
  store %nyx_string* %62, %nyx_string** %63
  %64 = load { i64, i8* }*, { i64, i8* }** %10
  %65 = load i64, i64* %39
  %66 = call i64 @nyx_array_get({ i64, i8* }* %64, i64 %65)
  %67 = alloca i64
  store i64 %66, i64* %67
  %68 = call { i64, i8* }* @nyx_array_new_ptr()
  %69 = alloca { i64, i8* }*
  store { i64, i8* }* %68, { i64, i8* }** %69
  %70 = load %nyx_string*, %nyx_string** %63
  %71 = getelementptr [1 x i8], [1 x i8]* @.str476, i32 0, i32 0
  %72 = call %nyx_string* @nyx_string_from_cstr(i8* %71)
  %73 = call i8* @nyx_string_to_cstr(%nyx_string* %70)
  %74 = call i8* @nyx_string_to_cstr(%nyx_string* %72)
  %75 = call i32 @strcmp(i8* %73, i8* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %then15, label %else16
then15:
  %77 = load %nyx_string*, %nyx_string** %63
  %78 = getelementptr [2 x i8], [2 x i8]* @.str477, i32 0, i32 0
  %79 = call %nyx_string* @nyx_string_from_cstr(i8* %78)
  %80 = call { i64, i8* }* @nyx_string_split(%nyx_string* %77, %nyx_string* %79)
  store { i64, i8* }* %80, { i64, i8* }** %69
  br label %merge17
else16:
  br label %merge17
merge17:
  %81 = load i64, i64* %4
  %82 = alloca i64
  store i64 %81, i64* %82
  %83 = load { i64, i8* }*, { i64, i8* }** %69
  store { i64, i8* }* %83, { i64, i8* }** %12
  %84 = load { i64, i8* }*, { i64, i8* }** %22
  store { i64, i8* }* %84, { i64, i8* }** %13
  %85 = load i64, i64* %67
  store i64 %85, i64* %4
  %86 = call { i64, i8* }* @parse_block(%SharedEnv_parse* %env.param)
  %87 = alloca { i64, i8* }*
  store { i64, i8* }* %86, { i64, i8* }** %87
  %88 = load i64, i64* %82
  store i64 %88, i64* %4
  %89 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %89, { i64, i8* }** %12
  %90 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %90, { i64, i8* }** %13
  %91 = load { i64, i8* }*, { i64, i8* }** %87
  ret { i64, i8* }* %91
}

define internal { i64, i8* }* @parse_type_alias(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = call %Token @advance(%SharedEnv_parse* %env.param)
  %15 = getelementptr [11 x i8], [11 x i8]* @.str478, i32 0, i32 0
  %16 = call %nyx_string* @nyx_string_from_cstr(i8* %15)
  %17 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %16)
  %18 = alloca %Token
  store %Token %17, %Token* %18
  %19 = load %Token, %Token* %18
  %20 = call %nyx_string* @get_token_value(%Token %19)
  %21 = alloca %nyx_string*
  store %nyx_string* %20, %nyx_string** %21
  %22 = getelementptr [7 x i8], [7 x i8]* @.str479, i32 0, i32 0
  %23 = call %nyx_string* @nyx_string_from_cstr(i8* %22)
  %24 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %23)
  %25 = call %nyx_string* @parse_type_annotation(%SharedEnv_parse* %env.param)
  %26 = alloca %nyx_string*
  store %nyx_string* %25, %nyx_string** %26
  %27 = getelementptr [5 x i8], [5 x i8]* @.str480, i32 0, i32 0
  %28 = call %nyx_string* @nyx_string_from_cstr(i8* %27)
  %29 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %28)
  br i1 %29, label %then0, label %else1
then0:
  %30 = call { i64, i8* }* @nyx_array_new_ptr()
  %31 = load %nyx_string*, %nyx_string** %26
  %32 = ptrtoint %nyx_string* %31 to i64
  call void @nyx_array_push({ i64, i8* }* %30, i64 %32)
  %33 = alloca { i64, i8* }*
  store { i64, i8* }* %30, { i64, i8* }** %33
  br label %while_cond3
while_cond3:
  %34 = getelementptr [5 x i8], [5 x i8]* @.str481, i32 0, i32 0
  %35 = call %nyx_string* @nyx_string_from_cstr(i8* %34)
  %36 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %35)
  br i1 %36, label %while_body4, label %while_end5
while_body4:
  %37 = call %Token @advance(%SharedEnv_parse* %env.param)
  %38 = load { i64, i8* }*, { i64, i8* }** %33
  %39 = call %nyx_string* @parse_type_annotation(%SharedEnv_parse* %env.param)
  %40 = ptrtoint %nyx_string* %39 to i64
  call void @nyx_array_push({ i64, i8* }* %38, i64 %40)
  br label %while_cond3
while_end5:
  %41 = call { i64, i8* }* @nyx_array_new_ptr()
  %42 = alloca { i64, i8* }*
  store { i64, i8* }* %41, { i64, i8* }** %42
  %43 = alloca i64
  store i64 0, i64* %43
  br label %while_cond6
while_cond6:
  %44 = load i64, i64* %43
  %45 = load { i64, i8* }*, { i64, i8* }** %33
  %46 = call i64 @nyx_array_length({ i64, i8* }* %45)
  %47 = icmp slt i64 %44, %46
  br i1 %47, label %while_body7, label %while_end8
while_body7:
  %48 = load { i64, i8* }*, { i64, i8* }** %33
  %49 = load i64, i64* %43
  %50 = call i64 @nyx_array_get({ i64, i8* }* %48, i64 %49)
  %51 = inttoptr i64 %50 to %nyx_string*
  %52 = alloca %nyx_string*
  store %nyx_string* %51, %nyx_string** %52
  %53 = call { i64, i8* }* @nyx_array_new_ptr()
  %54 = load %nyx_string*, %nyx_string** %52
  %55 = ptrtoint %nyx_string* %54 to i64
  call void @nyx_array_push({ i64, i8* }* %53, i64 %55)
  %56 = alloca { i64, i8* }*
  store { i64, i8* }* %53, { i64, i8* }** %56
  %57 = load { i64, i8* }*, { i64, i8* }** %42
  %58 = call { i64, i8* }* @nyx_array_new_ptr()
  %59 = load %nyx_string*, %nyx_string** %52
  %60 = ptrtoint %nyx_string* %59 to i64
  call void @nyx_array_push({ i64, i8* }* %58, i64 %60)
  %61 = load { i64, i8* }*, { i64, i8* }** %56
  %62 = bitcast { i64, i8* }* %61 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %58, i8* %62)
  %63 = ptrtoint { i64, i8* }* %58 to i64
  call void @nyx_array_push({ i64, i8* }* %57, i64 %63)
  %64 = load i64, i64* %43
  %65 = add i64 %64, 1
  store i64 %65, i64* %43
  br label %while_cond6
while_end8:
  %66 = getelementptr [9 x i8], [9 x i8]* @.str482, i32 0, i32 0
  %67 = call %nyx_string* @nyx_string_from_cstr(i8* %66)
  %68 = call { i64, i8* }* @nyx_array_new_ptr()
  %69 = load %nyx_string*, %nyx_string** %21
  %70 = ptrtoint %nyx_string* %69 to i64
  call void @nyx_array_push({ i64, i8* }* %68, i64 %70)
  %71 = load { i64, i8* }*, { i64, i8* }** %42
  %72 = bitcast { i64, i8* }* %71 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %68, i8* %72)
  %73 = call { i64, i8* }* @nyx_array_new_ptr()
  %74 = bitcast { i64, i8* }* %73 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %68, i8* %74)
  %75 = call { i64, i8* }* @make_astnode(%nyx_string* %67, { i64, i8* }* %68)
  ret { i64, i8* }* %75
else1:
  br label %merge2
merge2:
  %76 = getelementptr [11 x i8], [11 x i8]* @.str483, i32 0, i32 0
  %77 = call %nyx_string* @nyx_string_from_cstr(i8* %76)
  %78 = call { i64, i8* }* @nyx_array_new_ptr()
  %79 = load %nyx_string*, %nyx_string** %21
  %80 = ptrtoint %nyx_string* %79 to i64
  call void @nyx_array_push({ i64, i8* }* %78, i64 %80)
  %81 = load %nyx_string*, %nyx_string** %26
  %82 = ptrtoint %nyx_string* %81 to i64
  call void @nyx_array_push({ i64, i8* }* %78, i64 %82)
  %83 = call { i64, i8* }* @make_astnode(%nyx_string* %77, { i64, i8* }* %78)
  ret { i64, i8* }* %83
}

define internal %nyx_string* @parse_type_annotation(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = getelementptr [11 x i8], [11 x i8]* @.str484, i32 0, i32 0
  %15 = call %nyx_string* @nyx_string_from_cstr(i8* %14)
  %16 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %15)
  br i1 %16, label %then0, label %else1
then0:
  %17 = call %Token @advance(%SharedEnv_parse* %env.param)
  %18 = getelementptr [2 x i8], [2 x i8]* @.str485, i32 0, i32 0
  %19 = call %nyx_string* @nyx_string_from_cstr(i8* %18)
  %20 = alloca %nyx_string*
  store %nyx_string* %19, %nyx_string** %20
  %21 = load %nyx_string*, %nyx_string** %20
  %22 = call %nyx_string* @parse_type_annotation(%SharedEnv_parse* %env.param)
  %23 = call %nyx_string* @nyx_string_concat(%nyx_string* %21, %nyx_string* %22)
  store %nyx_string* %23, %nyx_string** %20
  br label %while_cond3
while_cond3:
  %24 = getelementptr [6 x i8], [6 x i8]* @.str486, i32 0, i32 0
  %25 = call %nyx_string* @nyx_string_from_cstr(i8* %24)
  %26 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %25)
  br i1 %26, label %while_body4, label %while_end5
while_body4:
  %27 = call %Token @advance(%SharedEnv_parse* %env.param)
  %28 = load %nyx_string*, %nyx_string** %20
  %29 = getelementptr [2 x i8], [2 x i8]* @.str487, i32 0, i32 0
  %30 = call %nyx_string* @nyx_string_from_cstr(i8* %29)
  %31 = call %nyx_string* @nyx_string_concat(%nyx_string* %28, %nyx_string* %30)
  %32 = call %nyx_string* @parse_type_annotation(%SharedEnv_parse* %env.param)
  %33 = call %nyx_string* @nyx_string_concat(%nyx_string* %31, %nyx_string* %32)
  store %nyx_string* %33, %nyx_string** %20
  br label %while_cond3
while_end5:
  %34 = getelementptr [12 x i8], [12 x i8]* @.str488, i32 0, i32 0
  %35 = call %nyx_string* @nyx_string_from_cstr(i8* %34)
  %36 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %35)
  %37 = load %nyx_string*, %nyx_string** %20
  %38 = getelementptr [2 x i8], [2 x i8]* @.str489, i32 0, i32 0
  %39 = call %nyx_string* @nyx_string_from_cstr(i8* %38)
  %40 = call %nyx_string* @nyx_string_concat(%nyx_string* %37, %nyx_string* %39)
  store %nyx_string* %40, %nyx_string** %20
  %41 = load %nyx_string*, %nyx_string** %20
  ret %nyx_string* %41
else1:
  br label %merge2
merge2:
  %42 = getelementptr [3 x i8], [3 x i8]* @.str490, i32 0, i32 0
  %43 = call %nyx_string* @nyx_string_from_cstr(i8* %42)
  %44 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %43)
  br i1 %44, label %then6, label %else7
then6:
  %45 = call %Token @advance(%SharedEnv_parse* %env.param)
  %46 = getelementptr [3 x i8], [3 x i8]* @.str491, i32 0, i32 0
  %47 = call %nyx_string* @nyx_string_from_cstr(i8* %46)
  ret %nyx_string* %47
else7:
  br label %merge8
merge8:
  %48 = getelementptr [5 x i8], [5 x i8]* @.str492, i32 0, i32 0
  %49 = call %nyx_string* @nyx_string_from_cstr(i8* %48)
  %50 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %49)
  br i1 %50, label %then9, label %else10
then9:
  %51 = call %Token @advance(%SharedEnv_parse* %env.param)
  %52 = call %nyx_string* @parse_type_annotation(%SharedEnv_parse* %env.param)
  %53 = alloca %nyx_string*
  store %nyx_string* %52, %nyx_string** %53
  %54 = getelementptr [2 x i8], [2 x i8]* @.str493, i32 0, i32 0
  %55 = call %nyx_string* @nyx_string_from_cstr(i8* %54)
  %56 = load %nyx_string*, %nyx_string** %53
  %57 = call %nyx_string* @nyx_string_concat(%nyx_string* %55, %nyx_string* %56)
  ret %nyx_string* %57
else10:
  br label %merge11
merge11:
  %58 = getelementptr [4 x i8], [4 x i8]* @.str494, i32 0, i32 0
  %59 = call %nyx_string* @nyx_string_from_cstr(i8* %58)
  %60 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %59)
  br i1 %60, label %then12, label %else13
then12:
  %61 = call %Token @advance(%SharedEnv_parse* %env.param)
  %62 = getelementptr [9 x i8], [9 x i8]* @.str495, i32 0, i32 0
  %63 = call %nyx_string* @nyx_string_from_cstr(i8* %62)
  %64 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %63)
  br i1 %64, label %then15, label %else16
then15:
  %65 = call %Token @advance(%SharedEnv_parse* %env.param)
  br label %merge17
else16:
  br label %merge17
merge17:
  %66 = call %Token @peek(%SharedEnv_parse* %env.param)
  %67 = alloca %Token
  store %Token %66, %Token* %67
  %68 = load %Token, %Token* %67
  %69 = call %nyx_string* @get_token_value(%Token %68)
  %70 = alloca %nyx_string*
  store %nyx_string* %69, %nyx_string** %70
  %71 = alloca i1
  store i1 0, i1* %71
  %72 = load %nyx_string*, %nyx_string** %70
  %73 = getelementptr [4 x i8], [4 x i8]* @.str496, i32 0, i32 0
  %74 = call %nyx_string* @nyx_string_from_cstr(i8* %73)
  %75 = call i8* @nyx_string_to_cstr(%nyx_string* %72)
  %76 = call i8* @nyx_string_to_cstr(%nyx_string* %74)
  %77 = call i32 @strcmp(i8* %75, i8* %76)
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %then18, label %else19
then18:
  %79 = call %Token @advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %71
  br label %merge20
else19:
  br label %merge20
merge20:
  %80 = call %nyx_string* @parse_type_annotation(%SharedEnv_parse* %env.param)
  %81 = alloca %nyx_string*
  store %nyx_string* %80, %nyx_string** %81
  %82 = load i1, i1* %71
  br i1 %82, label %then21, label %else22
then21:
  %83 = getelementptr [6 x i8], [6 x i8]* @.str497, i32 0, i32 0
  %84 = call %nyx_string* @nyx_string_from_cstr(i8* %83)
  %85 = load %nyx_string*, %nyx_string** %81
  %86 = call %nyx_string* @nyx_string_concat(%nyx_string* %84, %nyx_string* %85)
  ret %nyx_string* %86
else22:
  br label %merge23
merge23:
  %87 = getelementptr [2 x i8], [2 x i8]* @.str498, i32 0, i32 0
  %88 = call %nyx_string* @nyx_string_from_cstr(i8* %87)
  %89 = load %nyx_string*, %nyx_string** %81
  %90 = call %nyx_string* @nyx_string_concat(%nyx_string* %88, %nyx_string* %89)
  ret %nyx_string* %90
else13:
  br label %merge14
merge14:
  %91 = getelementptr [9 x i8], [9 x i8]* @.str499, i32 0, i32 0
  %92 = call %nyx_string* @nyx_string_from_cstr(i8* %91)
  %93 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %92)
  br i1 %93, label %then24, label %else25
then24:
  %94 = call %Token @advance(%SharedEnv_parse* %env.param)
  %95 = alloca %Token
  store %Token %94, %Token* %95
  %96 = load %Token, %Token* %95
  %97 = call %nyx_string* @get_token_value(%Token %96)
  ret %nyx_string* %97
else25:
  br label %merge26
merge26:
  %98 = getelementptr [13 x i8], [13 x i8]* @.str500, i32 0, i32 0
  %99 = call %nyx_string* @nyx_string_from_cstr(i8* %98)
  %100 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %99)
  br i1 %100, label %then27, label %else28
then27:
  %101 = call %Token @advance(%SharedEnv_parse* %env.param)
  %102 = call %nyx_string* @parse_type_annotation(%SharedEnv_parse* %env.param)
  %103 = alloca %nyx_string*
  store %nyx_string* %102, %nyx_string** %103
  %104 = getelementptr [6 x i8], [6 x i8]* @.str501, i32 0, i32 0
  %105 = call %nyx_string* @nyx_string_from_cstr(i8* %104)
  %106 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %105)
  %107 = getelementptr [7 x i8], [7 x i8]* @.str502, i32 0, i32 0
  %108 = call %nyx_string* @nyx_string_from_cstr(i8* %107)
  %109 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %108)
  %110 = alloca %Token
  store %Token %109, %Token* %110
  %111 = load %Token, %Token* %110
  %112 = call %nyx_string* @get_token_value(%Token %111)
  %113 = alloca %nyx_string*
  store %nyx_string* %112, %nyx_string** %113
  %114 = getelementptr [14 x i8], [14 x i8]* @.str503, i32 0, i32 0
  %115 = call %nyx_string* @nyx_string_from_cstr(i8* %114)
  %116 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %115)
  %117 = getelementptr [2 x i8], [2 x i8]* @.str504, i32 0, i32 0
  %118 = call %nyx_string* @nyx_string_from_cstr(i8* %117)
  %119 = load %nyx_string*, %nyx_string** %103
  %120 = call %nyx_string* @nyx_string_concat(%nyx_string* %118, %nyx_string* %119)
  %121 = getelementptr [2 x i8], [2 x i8]* @.str505, i32 0, i32 0
  %122 = call %nyx_string* @nyx_string_from_cstr(i8* %121)
  %123 = call %nyx_string* @nyx_string_concat(%nyx_string* %120, %nyx_string* %122)
  %124 = load %nyx_string*, %nyx_string** %113
  %125 = call %nyx_string* @nyx_string_concat(%nyx_string* %123, %nyx_string* %124)
  %126 = getelementptr [2 x i8], [2 x i8]* @.str506, i32 0, i32 0
  %127 = call %nyx_string* @nyx_string_from_cstr(i8* %126)
  %128 = call %nyx_string* @nyx_string_concat(%nyx_string* %125, %nyx_string* %127)
  ret %nyx_string* %128
else28:
  br label %merge29
merge29:
  %129 = getelementptr [4 x i8], [4 x i8]* @.str507, i32 0, i32 0
  %130 = call %nyx_string* @nyx_string_from_cstr(i8* %129)
  %131 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %130)
  br i1 %131, label %then30, label %else31
then30:
  %132 = call %Token @advance(%SharedEnv_parse* %env.param)
  %133 = getelementptr [11 x i8], [11 x i8]* @.str508, i32 0, i32 0
  %134 = call %nyx_string* @nyx_string_from_cstr(i8* %133)
  %135 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %134)
  %136 = alloca %Token
  store %Token %135, %Token* %136
  %137 = load %Token, %Token* %136
  %138 = call %nyx_string* @get_token_value(%Token %137)
  %139 = alloca %nyx_string*
  store %nyx_string* %138, %nyx_string** %139
  %140 = getelementptr [5 x i8], [5 x i8]* @.str509, i32 0, i32 0
  %141 = call %nyx_string* @nyx_string_from_cstr(i8* %140)
  %142 = load %nyx_string*, %nyx_string** %139
  %143 = call %nyx_string* @nyx_string_concat(%nyx_string* %141, %nyx_string* %142)
  ret %nyx_string* %143
else31:
  br label %merge32
merge32:
  %144 = getelementptr [5 x i8], [5 x i8]* @.str510, i32 0, i32 0
  %145 = call %nyx_string* @nyx_string_from_cstr(i8* %144)
  %146 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %145)
  br i1 %146, label %then33, label %else34
then33:
  %147 = call %Token @advance(%SharedEnv_parse* %env.param)
  %148 = getelementptr [11 x i8], [11 x i8]* @.str511, i32 0, i32 0
  %149 = call %nyx_string* @nyx_string_from_cstr(i8* %148)
  %150 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %149)
  %151 = alloca %Token
  store %Token %150, %Token* %151
  %152 = load %Token, %Token* %151
  %153 = call %nyx_string* @get_token_value(%Token %152)
  %154 = alloca %nyx_string*
  store %nyx_string* %153, %nyx_string** %154
  br label %while_cond36
while_cond36:
  %155 = getelementptr [5 x i8], [5 x i8]* @.str512, i32 0, i32 0
  %156 = call %nyx_string* @nyx_string_from_cstr(i8* %155)
  %157 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %156)
  br i1 %157, label %while_body37, label %while_end38
while_body37:
  %158 = call %Token @advance(%SharedEnv_parse* %env.param)
  %159 = getelementptr [11 x i8], [11 x i8]* @.str513, i32 0, i32 0
  %160 = call %nyx_string* @nyx_string_from_cstr(i8* %159)
  %161 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %160)
  %162 = alloca %Token
  store %Token %161, %Token* %162
  %163 = load %nyx_string*, %nyx_string** %154
  %164 = getelementptr [2 x i8], [2 x i8]* @.str514, i32 0, i32 0
  %165 = call %nyx_string* @nyx_string_from_cstr(i8* %164)
  %166 = call %nyx_string* @nyx_string_concat(%nyx_string* %163, %nyx_string* %165)
  %167 = load %Token, %Token* %162
  %168 = call %nyx_string* @get_token_value(%Token %167)
  %169 = call %nyx_string* @nyx_string_concat(%nyx_string* %166, %nyx_string* %168)
  store %nyx_string* %169, %nyx_string** %154
  br label %while_cond36
while_end38:
  %170 = getelementptr [5 x i8], [5 x i8]* @.str515, i32 0, i32 0
  %171 = call %nyx_string* @nyx_string_from_cstr(i8* %170)
  %172 = load %nyx_string*, %nyx_string** %154
  %173 = call %nyx_string* @nyx_string_concat(%nyx_string* %171, %nyx_string* %172)
  ret %nyx_string* %173
else34:
  br label %merge35
merge35:
  %174 = getelementptr [11 x i8], [11 x i8]* @.str516, i32 0, i32 0
  %175 = call %nyx_string* @nyx_string_from_cstr(i8* %174)
  %176 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %175)
  %177 = alloca %Token
  store %Token %176, %Token* %177
  %178 = load %Token, %Token* %177
  %179 = call %nyx_string* @get_token_value(%Token %178)
  %180 = alloca %nyx_string*
  store %nyx_string* %179, %nyx_string** %180
  %181 = load %nyx_string*, %nyx_string** %180
  %182 = getelementptr [5 x i8], [5 x i8]* @.str517, i32 0, i32 0
  %183 = call %nyx_string* @nyx_string_from_cstr(i8* %182)
  %184 = call i8* @nyx_string_to_cstr(%nyx_string* %181)
  %185 = call i8* @nyx_string_to_cstr(%nyx_string* %183)
  %186 = call i32 @strcmp(i8* %184, i8* %185)
  %187 = icmp eq i32 %186, 0
  %188 = getelementptr [4 x i8], [4 x i8]* @.str518, i32 0, i32 0
  %189 = call %nyx_string* @nyx_string_from_cstr(i8* %188)
  %190 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %189)
  %191 = and i1 %187, %190
  br i1 %191, label %then39, label %else40
then39:
  %192 = call %Token @advance(%SharedEnv_parse* %env.param)
  %193 = getelementptr [11 x i8], [11 x i8]* @.str519, i32 0, i32 0
  %194 = call %nyx_string* @nyx_string_from_cstr(i8* %193)
  %195 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %194)
  %196 = alloca %Token
  store %Token %195, %Token* %196
  %197 = getelementptr [6 x i8], [6 x i8]* @.str520, i32 0, i32 0
  %198 = call %nyx_string* @nyx_string_from_cstr(i8* %197)
  %199 = load %Token, %Token* %196
  %200 = call %nyx_string* @get_token_value(%Token %199)
  %201 = call %nyx_string* @nyx_string_concat(%nyx_string* %198, %nyx_string* %200)
  store %nyx_string* %201, %nyx_string** %180
  %202 = load %nyx_string*, %nyx_string** %180
  ret %nyx_string* %202
else40:
  br label %merge41
merge41:
  %203 = load %nyx_string*, %nyx_string** %180
  %204 = getelementptr [3 x i8], [3 x i8]* @.str521, i32 0, i32 0
  %205 = call %nyx_string* @nyx_string_from_cstr(i8* %204)
  %206 = call i8* @nyx_string_to_cstr(%nyx_string* %203)
  %207 = call i8* @nyx_string_to_cstr(%nyx_string* %205)
  %208 = call i32 @strcmp(i8* %206, i8* %207)
  %209 = icmp eq i32 %208, 0
  %210 = getelementptr [11 x i8], [11 x i8]* @.str522, i32 0, i32 0
  %211 = call %nyx_string* @nyx_string_from_cstr(i8* %210)
  %212 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %211)
  %213 = and i1 %209, %212
  br i1 %213, label %then42, label %else43
then42:
  %214 = call %Token @advance(%SharedEnv_parse* %env.param)
  %215 = getelementptr [4 x i8], [4 x i8]* @.str523, i32 0, i32 0
  %216 = call %nyx_string* @nyx_string_from_cstr(i8* %215)
  %217 = alloca %nyx_string*
  store %nyx_string* %216, %nyx_string** %217
  %218 = getelementptr [12 x i8], [12 x i8]* @.str524, i32 0, i32 0
  %219 = call %nyx_string* @nyx_string_from_cstr(i8* %218)
  %220 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %219)
  %221 = xor i1 %220, true
  br i1 %221, label %then45, label %else46
then45:
  %222 = load %nyx_string*, %nyx_string** %217
  %223 = call %nyx_string* @parse_type_annotation(%SharedEnv_parse* %env.param)
  %224 = call %nyx_string* @nyx_string_concat(%nyx_string* %222, %nyx_string* %223)
  store %nyx_string* %224, %nyx_string** %217
  %225 = alloca i1
  store i1 0, i1* %225
  br label %while_cond48
while_cond48:
  %226 = load i1, i1* %225
  %227 = xor i1 %226, true
  br i1 %227, label %while_body49, label %while_end50
while_body49:
  %228 = getelementptr [6 x i8], [6 x i8]* @.str525, i32 0, i32 0
  %229 = call %nyx_string* @nyx_string_from_cstr(i8* %228)
  %230 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %229)
  br i1 %230, label %then51, label %else52
then51:
  %231 = call %Token @advance(%SharedEnv_parse* %env.param)
  %232 = load %nyx_string*, %nyx_string** %217
  %233 = getelementptr [2 x i8], [2 x i8]* @.str526, i32 0, i32 0
  %234 = call %nyx_string* @nyx_string_from_cstr(i8* %233)
  %235 = call %nyx_string* @nyx_string_concat(%nyx_string* %232, %nyx_string* %234)
  %236 = call %nyx_string* @parse_type_annotation(%SharedEnv_parse* %env.param)
  %237 = call %nyx_string* @nyx_string_concat(%nyx_string* %235, %nyx_string* %236)
  store %nyx_string* %237, %nyx_string** %217
  br label %merge53
else52:
  store i1 1, i1* %225
  br label %merge53
merge53:
  br label %while_cond48
while_end50:
  br label %merge47
else46:
  br label %merge47
merge47:
  %238 = getelementptr [12 x i8], [12 x i8]* @.str527, i32 0, i32 0
  %239 = call %nyx_string* @nyx_string_from_cstr(i8* %238)
  %240 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %239)
  %241 = load %nyx_string*, %nyx_string** %217
  %242 = getelementptr [2 x i8], [2 x i8]* @.str528, i32 0, i32 0
  %243 = call %nyx_string* @nyx_string_from_cstr(i8* %242)
  %244 = call %nyx_string* @nyx_string_concat(%nyx_string* %241, %nyx_string* %243)
  store %nyx_string* %244, %nyx_string** %217
  %245 = getelementptr [6 x i8], [6 x i8]* @.str529, i32 0, i32 0
  %246 = call %nyx_string* @nyx_string_from_cstr(i8* %245)
  %247 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %246)
  br i1 %247, label %then54, label %else55
then54:
  %248 = call %Token @advance(%SharedEnv_parse* %env.param)
  %249 = load %nyx_string*, %nyx_string** %217
  %250 = getelementptr [3 x i8], [3 x i8]* @.str530, i32 0, i32 0
  %251 = call %nyx_string* @nyx_string_from_cstr(i8* %250)
  %252 = call %nyx_string* @nyx_string_concat(%nyx_string* %249, %nyx_string* %251)
  %253 = call %nyx_string* @parse_type_annotation(%SharedEnv_parse* %env.param)
  %254 = call %nyx_string* @nyx_string_concat(%nyx_string* %252, %nyx_string* %253)
  store %nyx_string* %254, %nyx_string** %217
  br label %merge56
else55:
  br label %merge56
merge56:
  %255 = load %nyx_string*, %nyx_string** %217
  ret %nyx_string* %255
else43:
  br label %merge44
merge44:
  %256 = getelementptr [5 x i8], [5 x i8]* @.str531, i32 0, i32 0
  %257 = call %nyx_string* @nyx_string_from_cstr(i8* %256)
  %258 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %257)
  br i1 %258, label %then57, label %else58
then57:
  %259 = call %Token @advance(%SharedEnv_parse* %env.param)
  %260 = load %nyx_string*, %nyx_string** %180
  %261 = getelementptr [2 x i8], [2 x i8]* @.str532, i32 0, i32 0
  %262 = call %nyx_string* @nyx_string_from_cstr(i8* %261)
  %263 = call %nyx_string* @nyx_string_concat(%nyx_string* %260, %nyx_string* %262)
  store %nyx_string* %263, %nyx_string** %180
  %264 = load %nyx_string*, %nyx_string** %180
  %265 = call %nyx_string* @parse_type_annotation(%SharedEnv_parse* %env.param)
  %266 = call %nyx_string* @nyx_string_concat(%nyx_string* %264, %nyx_string* %265)
  store %nyx_string* %266, %nyx_string** %180
  %267 = alloca i1
  store i1 0, i1* %267
  br label %while_cond60
while_cond60:
  %268 = load i1, i1* %267
  %269 = xor i1 %268, true
  br i1 %269, label %while_body61, label %while_end62
while_body61:
  %270 = getelementptr [6 x i8], [6 x i8]* @.str533, i32 0, i32 0
  %271 = call %nyx_string* @nyx_string_from_cstr(i8* %270)
  %272 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %271)
  br i1 %272, label %then63, label %else64
then63:
  %273 = call %Token @advance(%SharedEnv_parse* %env.param)
  %274 = load %nyx_string*, %nyx_string** %180
  %275 = getelementptr [2 x i8], [2 x i8]* @.str534, i32 0, i32 0
  %276 = call %nyx_string* @nyx_string_from_cstr(i8* %275)
  %277 = call %nyx_string* @nyx_string_concat(%nyx_string* %274, %nyx_string* %276)
  store %nyx_string* %277, %nyx_string** %180
  %278 = load %nyx_string*, %nyx_string** %180
  %279 = call %nyx_string* @parse_type_annotation(%SharedEnv_parse* %env.param)
  %280 = call %nyx_string* @nyx_string_concat(%nyx_string* %278, %nyx_string* %279)
  store %nyx_string* %280, %nyx_string** %180
  br label %merge65
else64:
  store i1 1, i1* %267
  br label %merge65
merge65:
  br label %while_cond60
while_end62:
  %281 = load i64, i64* %5
  %282 = icmp sgt i64 %281, 0
  br i1 %282, label %then66, label %else67
then66:
  %283 = load i64, i64* %5
  %284 = sub i64 %283, 1
  store i64 %284, i64* %5
  br label %merge68
else67:
  %285 = getelementptr [8 x i8], [8 x i8]* @.str535, i32 0, i32 0
  %286 = call %nyx_string* @nyx_string_from_cstr(i8* %285)
  %287 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %286)
  br i1 %287, label %then69, label %else70
then69:
  %288 = call %Token @advance(%SharedEnv_parse* %env.param)
  br label %merge71
else70:
  %289 = getelementptr [12 x i8], [12 x i8]* @.str536, i32 0, i32 0
  %290 = call %nyx_string* @nyx_string_from_cstr(i8* %289)
  %291 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %290)
  br i1 %291, label %then72, label %else73
then72:
  %292 = call %Token @advance(%SharedEnv_parse* %env.param)
  %293 = load i64, i64* %5
  %294 = add i64 %293, 1
  store i64 %294, i64* %5
  br label %merge74
else73:
  %295 = getelementptr [8 x i8], [8 x i8]* @.str537, i32 0, i32 0
  %296 = call %nyx_string* @nyx_string_from_cstr(i8* %295)
  %297 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %296)
  br label %merge74
merge74:
  br label %merge71
merge71:
  br label %merge68
merge68:
  %298 = load %nyx_string*, %nyx_string** %180
  %299 = getelementptr [2 x i8], [2 x i8]* @.str538, i32 0, i32 0
  %300 = call %nyx_string* @nyx_string_from_cstr(i8* %299)
  %301 = call %nyx_string* @nyx_string_concat(%nyx_string* %298, %nyx_string* %300)
  store %nyx_string* %301, %nyx_string** %180
  br label %merge59
else58:
  br label %merge59
merge59:
  %302 = load %nyx_string*, %nyx_string** %180
  ret %nyx_string* %302
}

define internal { i64, i8* }* @parse_let(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = getelementptr [4 x i8], [4 x i8]* @.str539, i32 0, i32 0
  %15 = call %nyx_string* @nyx_string_from_cstr(i8* %14)
  %16 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %15)
  %17 = alloca i1
  store i1 %16, i1* %17
  %18 = call %Token @advance(%SharedEnv_parse* %env.param)
  %19 = getelementptr [11 x i8], [11 x i8]* @.str540, i32 0, i32 0
  %20 = call %nyx_string* @nyx_string_from_cstr(i8* %19)
  %21 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %20)
  br i1 %21, label %then0, label %else1
then0:
  %22 = call %Token @advance(%SharedEnv_parse* %env.param)
  %23 = call { i64, i8* }* @nyx_array_new_ptr()
  %24 = alloca { i64, i8* }*
  store { i64, i8* }* %23, { i64, i8* }** %24
  %25 = getelementptr [11 x i8], [11 x i8]* @.str541, i32 0, i32 0
  %26 = call %nyx_string* @nyx_string_from_cstr(i8* %25)
  %27 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %26)
  %28 = alloca %Token
  store %Token %27, %Token* %28
  %29 = load { i64, i8* }*, { i64, i8* }** %24
  %30 = load %Token, %Token* %28
  %31 = call %nyx_string* @get_token_value(%Token %30)
  %32 = ptrtoint %nyx_string* %31 to i64
  call void @nyx_array_push({ i64, i8* }* %29, i64 %32)
  br label %while_cond3
while_cond3:
  %33 = getelementptr [6 x i8], [6 x i8]* @.str542, i32 0, i32 0
  %34 = call %nyx_string* @nyx_string_from_cstr(i8* %33)
  %35 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %34)
  br i1 %35, label %while_body4, label %while_end5
while_body4:
  %36 = call %Token @advance(%SharedEnv_parse* %env.param)
  %37 = getelementptr [11 x i8], [11 x i8]* @.str543, i32 0, i32 0
  %38 = call %nyx_string* @nyx_string_from_cstr(i8* %37)
  %39 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %38)
  %40 = alloca %Token
  store %Token %39, %Token* %40
  %41 = load { i64, i8* }*, { i64, i8* }** %24
  %42 = load %Token, %Token* %40
  %43 = call %nyx_string* @get_token_value(%Token %42)
  %44 = ptrtoint %nyx_string* %43 to i64
  call void @nyx_array_push({ i64, i8* }* %41, i64 %44)
  br label %while_cond3
while_end5:
  %45 = getelementptr [12 x i8], [12 x i8]* @.str544, i32 0, i32 0
  %46 = call %nyx_string* @nyx_string_from_cstr(i8* %45)
  %47 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %46)
  %48 = getelementptr [7 x i8], [7 x i8]* @.str545, i32 0, i32 0
  %49 = call %nyx_string* @nyx_string_from_cstr(i8* %48)
  %50 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %49)
  %51 = call { i64, i8* }* @parse_expression(%SharedEnv_parse* %env.param)
  %52 = alloca { i64, i8* }*
  store { i64, i8* }* %51, { i64, i8* }** %52
  %53 = getelementptr [22 x i8], [22 x i8]* @.str546, i32 0, i32 0
  %54 = call %nyx_string* @nyx_string_from_cstr(i8* %53)
  %55 = call { i64, i8* }* @nyx_array_new_ptr()
  %56 = load { i64, i8* }*, { i64, i8* }** %24
  %57 = bitcast { i64, i8* }* %56 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %55, i8* %57)
  %58 = load i1, i1* %17
  %59 = zext i1 %58 to i64
  call void @nyx_array_push({ i64, i8* }* %55, i64 %59)
  %60 = load { i64, i8* }*, { i64, i8* }** %52
  %61 = bitcast { i64, i8* }* %60 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %55, i8* %61)
  %62 = call { i64, i8* }* @make_astnode(%nyx_string* %54, { i64, i8* }* %55)
  ret { i64, i8* }* %62
else1:
  br label %merge2
merge2:
  %63 = getelementptr [11 x i8], [11 x i8]* @.str547, i32 0, i32 0
  %64 = call %nyx_string* @nyx_string_from_cstr(i8* %63)
  %65 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %64)
  %66 = alloca %Token
  store %Token %65, %Token* %66
  %67 = load %Token, %Token* %66
  %68 = call %nyx_string* @get_token_value(%Token %67)
  %69 = alloca %nyx_string*
  store %nyx_string* %68, %nyx_string** %69
  %70 = load %nyx_string*, %nyx_string** %69
  %71 = call { i64, i8* }* @nyx_array_new_ptr()
  %72 = call { i64, i8* }* @make_astnode(%nyx_string* %70, { i64, i8* }* %71)
  %73 = alloca { i64, i8* }*
  store { i64, i8* }* %72, { i64, i8* }** %73
  %74 = getelementptr [1 x i8], [1 x i8]* @.str548, i32 0, i32 0
  %75 = call %nyx_string* @nyx_string_from_cstr(i8* %74)
  %76 = alloca %nyx_string*
  store %nyx_string* %75, %nyx_string** %76
  %77 = getelementptr [6 x i8], [6 x i8]* @.str549, i32 0, i32 0
  %78 = call %nyx_string* @nyx_string_from_cstr(i8* %77)
  %79 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %78)
  br i1 %79, label %then6, label %else7
then6:
  %80 = call %Token @advance(%SharedEnv_parse* %env.param)
  %81 = call %nyx_string* @parse_type_annotation(%SharedEnv_parse* %env.param)
  store %nyx_string* %81, %nyx_string** %76
  br label %merge8
else7:
  br label %merge8
merge8:
  %82 = getelementptr [7 x i8], [7 x i8]* @.str550, i32 0, i32 0
  %83 = call %nyx_string* @nyx_string_from_cstr(i8* %82)
  %84 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %83)
  %85 = call { i64, i8* }* @parse_expression(%SharedEnv_parse* %env.param)
  %86 = alloca { i64, i8* }*
  store { i64, i8* }* %85, { i64, i8* }** %86
  %87 = getelementptr [4 x i8], [4 x i8]* @.str551, i32 0, i32 0
  %88 = call %nyx_string* @nyx_string_from_cstr(i8* %87)
  %89 = call { i64, i8* }* @nyx_array_new_ptr()
  %90 = load { i64, i8* }*, { i64, i8* }** %73
  %91 = bitcast { i64, i8* }* %90 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %89, i8* %91)
  %92 = load i1, i1* %17
  %93 = zext i1 %92 to i64
  call void @nyx_array_push({ i64, i8* }* %89, i64 %93)
  %94 = load { i64, i8* }*, { i64, i8* }** %86
  %95 = bitcast { i64, i8* }* %94 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %89, i8* %95)
  %96 = load %nyx_string*, %nyx_string** %76
  %97 = ptrtoint %nyx_string* %96 to i64
  call void @nyx_array_push({ i64, i8* }* %89, i64 %97)
  %98 = call { i64, i8* }* @make_astnode(%nyx_string* %88, { i64, i8* }* %89)
  ret { i64, i8* }* %98
}

define internal { i64, i8* }* @parse_const(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = getelementptr [6 x i8], [6 x i8]* @.str552, i32 0, i32 0
  %15 = call %nyx_string* @nyx_string_from_cstr(i8* %14)
  %16 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %15)
  %17 = getelementptr [11 x i8], [11 x i8]* @.str553, i32 0, i32 0
  %18 = call %nyx_string* @nyx_string_from_cstr(i8* %17)
  %19 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %18)
  %20 = alloca %Token
  store %Token %19, %Token* %20
  %21 = getelementptr [1 x i8], [1 x i8]* @.str554, i32 0, i32 0
  %22 = call %nyx_string* @nyx_string_from_cstr(i8* %21)
  %23 = alloca %nyx_string*
  store %nyx_string* %22, %nyx_string** %23
  %24 = getelementptr [6 x i8], [6 x i8]* @.str555, i32 0, i32 0
  %25 = call %nyx_string* @nyx_string_from_cstr(i8* %24)
  %26 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %25)
  br i1 %26, label %then0, label %else1
then0:
  %27 = call %Token @advance(%SharedEnv_parse* %env.param)
  %28 = call %nyx_string* @parse_type_annotation(%SharedEnv_parse* %env.param)
  store %nyx_string* %28, %nyx_string** %23
  br label %merge2
else1:
  br label %merge2
merge2:
  %29 = getelementptr [7 x i8], [7 x i8]* @.str556, i32 0, i32 0
  %30 = call %nyx_string* @nyx_string_from_cstr(i8* %29)
  %31 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %30)
  %32 = call { i64, i8* }* @parse_expression(%SharedEnv_parse* %env.param)
  %33 = alloca { i64, i8* }*
  store { i64, i8* }* %32, { i64, i8* }** %33
  %34 = getelementptr [6 x i8], [6 x i8]* @.str557, i32 0, i32 0
  %35 = call %nyx_string* @nyx_string_from_cstr(i8* %34)
  %36 = call { i64, i8* }* @nyx_array_new_ptr()
  %37 = load %Token, %Token* %20
  %38 = call %nyx_string* @get_token_value(%Token %37)
  %39 = ptrtoint %nyx_string* %38 to i64
  call void @nyx_array_push({ i64, i8* }* %36, i64 %39)
  %40 = load { i64, i8* }*, { i64, i8* }** %33
  %41 = bitcast { i64, i8* }* %40 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %36, i8* %41)
  %42 = load %nyx_string*, %nyx_string** %23
  %43 = ptrtoint %nyx_string* %42 to i64
  call void @nyx_array_push({ i64, i8* }* %36, i64 %43)
  %44 = call { i64, i8* }* @make_astnode(%nyx_string* %35, { i64, i8* }* %36)
  ret { i64, i8* }* %44
}

define internal { i64, i8* }* @parse_async_function(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = getelementptr [3 x i8], [3 x i8]* @.str558, i32 0, i32 0
  %15 = call %nyx_string* @nyx_string_from_cstr(i8* %14)
  %16 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %15)
  %17 = getelementptr [11 x i8], [11 x i8]* @.str559, i32 0, i32 0
  %18 = call %nyx_string* @nyx_string_from_cstr(i8* %17)
  %19 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %18)
  %20 = alloca %Token
  store %Token %19, %Token* %20
  %21 = load %Token, %Token* %20
  %22 = call %nyx_string* @get_token_value(%Token %21)
  %23 = alloca %nyx_string*
  store %nyx_string* %22, %nyx_string** %23
  %24 = getelementptr [11 x i8], [11 x i8]* @.str560, i32 0, i32 0
  %25 = call %nyx_string* @nyx_string_from_cstr(i8* %24)
  %26 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %25)
  %27 = call { i64, i8* }* @nyx_array_new_ptr()
  %28 = alloca { i64, i8* }*
  store { i64, i8* }* %27, { i64, i8* }** %28
  %29 = alloca i1
  store i1 0, i1* %29
  br label %while_cond0
while_cond0:
  %30 = load i1, i1* %29
  %31 = xor i1 %30, true
  br i1 %31, label %while_body1, label %while_end2
while_body1:
  %32 = getelementptr [12 x i8], [12 x i8]* @.str561, i32 0, i32 0
  %33 = call %nyx_string* @nyx_string_from_cstr(i8* %32)
  %34 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %33)
  br i1 %34, label %then3, label %else4
then3:
  %35 = call %Token @advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %29
  br label %merge5
else4:
  %36 = load { i64, i8* }*, { i64, i8* }** %28
  %37 = call i64 @nyx_array_length({ i64, i8* }* %36)
  %38 = icmp sgt i64 %37, 0
  br i1 %38, label %then6, label %else7
then6:
  %39 = getelementptr [6 x i8], [6 x i8]* @.str562, i32 0, i32 0
  %40 = call %nyx_string* @nyx_string_from_cstr(i8* %39)
  %41 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %40)
  br label %merge8
else7:
  br label %merge8
merge8:
  %42 = getelementptr [11 x i8], [11 x i8]* @.str563, i32 0, i32 0
  %43 = call %nyx_string* @nyx_string_from_cstr(i8* %42)
  %44 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %43)
  %45 = alloca %Token
  store %Token %44, %Token* %45
  %46 = getelementptr [1 x i8], [1 x i8]* @.str564, i32 0, i32 0
  %47 = call %nyx_string* @nyx_string_from_cstr(i8* %46)
  %48 = alloca %nyx_string*
  store %nyx_string* %47, %nyx_string** %48
  %49 = getelementptr [6 x i8], [6 x i8]* @.str565, i32 0, i32 0
  %50 = call %nyx_string* @nyx_string_from_cstr(i8* %49)
  %51 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %50)
  br i1 %51, label %then9, label %else10
then9:
  %52 = call %Token @advance(%SharedEnv_parse* %env.param)
  %53 = call %nyx_string* @parse_type_annotation(%SharedEnv_parse* %env.param)
  store %nyx_string* %53, %nyx_string** %48
  br label %merge11
else10:
  br label %merge11
merge11:
  %54 = load { i64, i8* }*, { i64, i8* }** %28
  %55 = call { i64, i8* }* @nyx_array_new_ptr()
  %56 = load %Token, %Token* %45
  %57 = call %nyx_string* @get_token_value(%Token %56)
  %58 = ptrtoint %nyx_string* %57 to i64
  call void @nyx_array_push({ i64, i8* }* %55, i64 %58)
  %59 = load %nyx_string*, %nyx_string** %48
  %60 = ptrtoint %nyx_string* %59 to i64
  call void @nyx_array_push({ i64, i8* }* %55, i64 %60)
  %61 = ptrtoint { i64, i8* }* %55 to i64
  call void @nyx_array_push({ i64, i8* }* %54, i64 %61)
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %62 = getelementptr [1 x i8], [1 x i8]* @.str566, i32 0, i32 0
  %63 = call %nyx_string* @nyx_string_from_cstr(i8* %62)
  %64 = alloca %nyx_string*
  store %nyx_string* %63, %nyx_string** %64
  %65 = getelementptr [6 x i8], [6 x i8]* @.str567, i32 0, i32 0
  %66 = call %nyx_string* @nyx_string_from_cstr(i8* %65)
  %67 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %66)
  br i1 %67, label %then12, label %else13
then12:
  %68 = call %Token @advance(%SharedEnv_parse* %env.param)
  %69 = call %nyx_string* @parse_type_annotation(%SharedEnv_parse* %env.param)
  store %nyx_string* %69, %nyx_string** %64
  br label %merge14
else13:
  br label %merge14
merge14:
  %70 = call { i64, i8* }* @parse_block(%SharedEnv_parse* %env.param)
  %71 = alloca { i64, i8* }*
  store { i64, i8* }* %70, { i64, i8* }** %71
  %72 = getelementptr [9 x i8], [9 x i8]* @.str568, i32 0, i32 0
  %73 = call %nyx_string* @nyx_string_from_cstr(i8* %72)
  %74 = call { i64, i8* }* @nyx_array_new_ptr()
  %75 = load %nyx_string*, %nyx_string** %23
  %76 = ptrtoint %nyx_string* %75 to i64
  call void @nyx_array_push({ i64, i8* }* %74, i64 %76)
  %77 = load { i64, i8* }*, { i64, i8* }** %28
  %78 = bitcast { i64, i8* }* %77 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %74, i8* %78)
  %79 = load %nyx_string*, %nyx_string** %64
  %80 = ptrtoint %nyx_string* %79 to i64
  call void @nyx_array_push({ i64, i8* }* %74, i64 %80)
  %81 = load { i64, i8* }*, { i64, i8* }** %71
  %82 = bitcast { i64, i8* }* %81 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %74, i8* %82)
  %83 = call { i64, i8* }* @make_astnode(%nyx_string* %73, { i64, i8* }* %74)
  ret { i64, i8* }* %83
}

define internal { i64, i8* }* @parse_function(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = getelementptr [3 x i8], [3 x i8]* @.str569, i32 0, i32 0
  %15 = call %nyx_string* @nyx_string_from_cstr(i8* %14)
  %16 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %15)
  %17 = getelementptr [11 x i8], [11 x i8]* @.str570, i32 0, i32 0
  %18 = call %nyx_string* @nyx_string_from_cstr(i8* %17)
  %19 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %18)
  %20 = alloca %Token
  store %Token %19, %Token* %20
  %21 = call { i64, i8* }* @nyx_array_new_ptr()
  %22 = alloca { i64, i8* }*
  store { i64, i8* }* %21, { i64, i8* }** %22
  %23 = getelementptr [5 x i8], [5 x i8]* @.str571, i32 0, i32 0
  %24 = call %nyx_string* @nyx_string_from_cstr(i8* %23)
  %25 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %24)
  br i1 %25, label %then0, label %else1
then0:
  %26 = call %Token @advance(%SharedEnv_parse* %env.param)
  %27 = getelementptr [9 x i8], [9 x i8]* @.str572, i32 0, i32 0
  %28 = call %nyx_string* @nyx_string_from_cstr(i8* %27)
  %29 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %28)
  br i1 %29, label %then3, label %else4
then3:
  %30 = call %Token @advance(%SharedEnv_parse* %env.param)
  %31 = alloca %Token
  store %Token %30, %Token* %31
  %32 = load { i64, i8* }*, { i64, i8* }** %22
  %33 = load %Token, %Token* %31
  %34 = call %nyx_string* @get_token_value(%Token %33)
  %35 = ptrtoint %nyx_string* %34 to i64
  call void @nyx_array_push({ i64, i8* }* %32, i64 %35)
  br label %merge5
else4:
  %36 = getelementptr [11 x i8], [11 x i8]* @.str573, i32 0, i32 0
  %37 = call %nyx_string* @nyx_string_from_cstr(i8* %36)
  %38 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %37)
  %39 = alloca %Token
  store %Token %38, %Token* %39
  %40 = load %Token, %Token* %39
  %41 = call %nyx_string* @get_token_value(%Token %40)
  %42 = alloca %nyx_string*
  store %nyx_string* %41, %nyx_string** %42
  %43 = getelementptr [6 x i8], [6 x i8]* @.str574, i32 0, i32 0
  %44 = call %nyx_string* @nyx_string_from_cstr(i8* %43)
  %45 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %44)
  br i1 %45, label %then6, label %else7
then6:
  %46 = call %Token @advance(%SharedEnv_parse* %env.param)
  %47 = getelementptr [11 x i8], [11 x i8]* @.str575, i32 0, i32 0
  %48 = call %nyx_string* @nyx_string_from_cstr(i8* %47)
  %49 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %48)
  %50 = alloca %Token
  store %Token %49, %Token* %50
  %51 = load %Token, %Token* %50
  %52 = call %nyx_string* @get_token_value(%Token %51)
  %53 = alloca %nyx_string*
  store %nyx_string* %52, %nyx_string** %53
  br label %while_cond9
while_cond9:
  %54 = getelementptr [5 x i8], [5 x i8]* @.str576, i32 0, i32 0
  %55 = call %nyx_string* @nyx_string_from_cstr(i8* %54)
  %56 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %55)
  br i1 %56, label %while_body10, label %while_end11
while_body10:
  %57 = call %Token @advance(%SharedEnv_parse* %env.param)
  %58 = getelementptr [11 x i8], [11 x i8]* @.str577, i32 0, i32 0
  %59 = call %nyx_string* @nyx_string_from_cstr(i8* %58)
  %60 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %59)
  %61 = alloca %Token
  store %Token %60, %Token* %61
  %62 = load %nyx_string*, %nyx_string** %53
  %63 = getelementptr [2 x i8], [2 x i8]* @.str578, i32 0, i32 0
  %64 = call %nyx_string* @nyx_string_from_cstr(i8* %63)
  %65 = call %nyx_string* @nyx_string_concat(%nyx_string* %62, %nyx_string* %64)
  %66 = load %Token, %Token* %61
  %67 = call %nyx_string* @get_token_value(%Token %66)
  %68 = call %nyx_string* @nyx_string_concat(%nyx_string* %65, %nyx_string* %67)
  store %nyx_string* %68, %nyx_string** %53
  br label %while_cond9
while_end11:
  %69 = load %nyx_string*, %nyx_string** %42
  %70 = getelementptr [2 x i8], [2 x i8]* @.str579, i32 0, i32 0
  %71 = call %nyx_string* @nyx_string_from_cstr(i8* %70)
  %72 = call %nyx_string* @nyx_string_concat(%nyx_string* %69, %nyx_string* %71)
  %73 = load %nyx_string*, %nyx_string** %53
  %74 = call %nyx_string* @nyx_string_concat(%nyx_string* %72, %nyx_string* %73)
  store %nyx_string* %74, %nyx_string** %42
  br label %merge8
else7:
  br label %merge8
merge8:
  %75 = load { i64, i8* }*, { i64, i8* }** %22
  %76 = load %nyx_string*, %nyx_string** %42
  %77 = ptrtoint %nyx_string* %76 to i64
  call void @nyx_array_push({ i64, i8* }* %75, i64 %77)
  br label %merge5
merge5:
  %78 = alloca i1
  store i1 0, i1* %78
  br label %while_cond12
while_cond12:
  %79 = load i1, i1* %78
  %80 = xor i1 %79, true
  br i1 %80, label %while_body13, label %while_end14
while_body13:
  %81 = getelementptr [6 x i8], [6 x i8]* @.str580, i32 0, i32 0
  %82 = call %nyx_string* @nyx_string_from_cstr(i8* %81)
  %83 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %82)
  br i1 %83, label %then15, label %else16
then15:
  %84 = call %Token @advance(%SharedEnv_parse* %env.param)
  %85 = getelementptr [9 x i8], [9 x i8]* @.str581, i32 0, i32 0
  %86 = call %nyx_string* @nyx_string_from_cstr(i8* %85)
  %87 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %86)
  br i1 %87, label %then18, label %else19
then18:
  %88 = call %Token @advance(%SharedEnv_parse* %env.param)
  %89 = alloca %Token
  store %Token %88, %Token* %89
  %90 = load { i64, i8* }*, { i64, i8* }** %22
  %91 = load %Token, %Token* %89
  %92 = call %nyx_string* @get_token_value(%Token %91)
  %93 = ptrtoint %nyx_string* %92 to i64
  call void @nyx_array_push({ i64, i8* }* %90, i64 %93)
  br label %merge20
else19:
  %94 = getelementptr [11 x i8], [11 x i8]* @.str582, i32 0, i32 0
  %95 = call %nyx_string* @nyx_string_from_cstr(i8* %94)
  %96 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %95)
  %97 = alloca %Token
  store %Token %96, %Token* %97
  %98 = load %Token, %Token* %97
  %99 = call %nyx_string* @get_token_value(%Token %98)
  %100 = alloca %nyx_string*
  store %nyx_string* %99, %nyx_string** %100
  %101 = getelementptr [6 x i8], [6 x i8]* @.str583, i32 0, i32 0
  %102 = call %nyx_string* @nyx_string_from_cstr(i8* %101)
  %103 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %102)
  br i1 %103, label %then21, label %else22
then21:
  %104 = call %Token @advance(%SharedEnv_parse* %env.param)
  %105 = getelementptr [11 x i8], [11 x i8]* @.str584, i32 0, i32 0
  %106 = call %nyx_string* @nyx_string_from_cstr(i8* %105)
  %107 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %106)
  %108 = alloca %Token
  store %Token %107, %Token* %108
  %109 = load %Token, %Token* %108
  %110 = call %nyx_string* @get_token_value(%Token %109)
  %111 = alloca %nyx_string*
  store %nyx_string* %110, %nyx_string** %111
  br label %while_cond24
while_cond24:
  %112 = getelementptr [5 x i8], [5 x i8]* @.str585, i32 0, i32 0
  %113 = call %nyx_string* @nyx_string_from_cstr(i8* %112)
  %114 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %113)
  br i1 %114, label %while_body25, label %while_end26
while_body25:
  %115 = call %Token @advance(%SharedEnv_parse* %env.param)
  %116 = getelementptr [11 x i8], [11 x i8]* @.str586, i32 0, i32 0
  %117 = call %nyx_string* @nyx_string_from_cstr(i8* %116)
  %118 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %117)
  %119 = alloca %Token
  store %Token %118, %Token* %119
  %120 = load %nyx_string*, %nyx_string** %111
  %121 = getelementptr [2 x i8], [2 x i8]* @.str587, i32 0, i32 0
  %122 = call %nyx_string* @nyx_string_from_cstr(i8* %121)
  %123 = call %nyx_string* @nyx_string_concat(%nyx_string* %120, %nyx_string* %122)
  %124 = load %Token, %Token* %119
  %125 = call %nyx_string* @get_token_value(%Token %124)
  %126 = call %nyx_string* @nyx_string_concat(%nyx_string* %123, %nyx_string* %125)
  store %nyx_string* %126, %nyx_string** %111
  br label %while_cond24
while_end26:
  %127 = load %nyx_string*, %nyx_string** %100
  %128 = getelementptr [2 x i8], [2 x i8]* @.str588, i32 0, i32 0
  %129 = call %nyx_string* @nyx_string_from_cstr(i8* %128)
  %130 = call %nyx_string* @nyx_string_concat(%nyx_string* %127, %nyx_string* %129)
  %131 = load %nyx_string*, %nyx_string** %111
  %132 = call %nyx_string* @nyx_string_concat(%nyx_string* %130, %nyx_string* %131)
  store %nyx_string* %132, %nyx_string** %100
  br label %merge23
else22:
  br label %merge23
merge23:
  %133 = load { i64, i8* }*, { i64, i8* }** %22
  %134 = load %nyx_string*, %nyx_string** %100
  %135 = ptrtoint %nyx_string* %134 to i64
  call void @nyx_array_push({ i64, i8* }* %133, i64 %135)
  br label %merge20
merge20:
  br label %merge17
else16:
  store i1 1, i1* %78
  br label %merge17
merge17:
  br label %while_cond12
while_end14:
  %136 = getelementptr [8 x i8], [8 x i8]* @.str589, i32 0, i32 0
  %137 = call %nyx_string* @nyx_string_from_cstr(i8* %136)
  %138 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %137)
  br label %merge2
else1:
  br label %merge2
merge2:
  %139 = getelementptr [11 x i8], [11 x i8]* @.str590, i32 0, i32 0
  %140 = call %nyx_string* @nyx_string_from_cstr(i8* %139)
  %141 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %140)
  %142 = call { i64, i8* }* @nyx_array_new_ptr()
  %143 = alloca { i64, i8* }*
  store { i64, i8* }* %142, { i64, i8* }** %143
  %144 = alloca i1
  store i1 0, i1* %144
  br label %while_cond27
while_cond27:
  %145 = load i1, i1* %144
  %146 = xor i1 %145, true
  br i1 %146, label %while_body28, label %while_end29
while_body28:
  %147 = getelementptr [12 x i8], [12 x i8]* @.str591, i32 0, i32 0
  %148 = call %nyx_string* @nyx_string_from_cstr(i8* %147)
  %149 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %148)
  br i1 %149, label %then30, label %else31
then30:
  %150 = call %Token @advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %144
  br label %merge32
else31:
  %151 = load { i64, i8* }*, { i64, i8* }** %143
  %152 = call i64 @nyx_array_length({ i64, i8* }* %151)
  %153 = icmp sgt i64 %152, 0
  br i1 %153, label %then33, label %else34
then33:
  %154 = getelementptr [6 x i8], [6 x i8]* @.str592, i32 0, i32 0
  %155 = call %nyx_string* @nyx_string_from_cstr(i8* %154)
  %156 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %155)
  br label %merge35
else34:
  br label %merge35
merge35:
  %157 = getelementptr [9 x i8], [9 x i8]* @.str593, i32 0, i32 0
  %158 = call %nyx_string* @nyx_string_from_cstr(i8* %157)
  %159 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %158)
  br i1 %159, label %then36, label %else37
then36:
  %160 = call %Token @advance(%SharedEnv_parse* %env.param)
  %161 = getelementptr [11 x i8], [11 x i8]* @.str594, i32 0, i32 0
  %162 = call %nyx_string* @nyx_string_from_cstr(i8* %161)
  %163 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %162)
  %164 = alloca %Token
  store %Token %163, %Token* %164
  %165 = load %Token, %Token* %164
  %166 = call %nyx_string* @get_token_value(%Token %165)
  %167 = alloca %nyx_string*
  store %nyx_string* %166, %nyx_string** %167
  %168 = getelementptr [10 x i8], [10 x i8]* @.str595, i32 0, i32 0
  %169 = call %nyx_string* @nyx_string_from_cstr(i8* %168)
  %170 = alloca %nyx_string*
  store %nyx_string* %169, %nyx_string** %170
  %171 = getelementptr [6 x i8], [6 x i8]* @.str596, i32 0, i32 0
  %172 = call %nyx_string* @nyx_string_from_cstr(i8* %171)
  %173 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %172)
  br i1 %173, label %then39, label %else40
then39:
  %174 = call %Token @advance(%SharedEnv_parse* %env.param)
  %175 = call %nyx_string* @parse_type_annotation(%SharedEnv_parse* %env.param)
  %176 = alloca %nyx_string*
  store %nyx_string* %175, %nyx_string** %176
  %177 = getelementptr [4 x i8], [4 x i8]* @.str597, i32 0, i32 0
  %178 = call %nyx_string* @nyx_string_from_cstr(i8* %177)
  %179 = load %nyx_string*, %nyx_string** %176
  %180 = call %nyx_string* @nyx_string_concat(%nyx_string* %178, %nyx_string* %179)
  store %nyx_string* %180, %nyx_string** %170
  br label %merge41
else40:
  br label %merge41
merge41:
  %181 = load { i64, i8* }*, { i64, i8* }** %143
  %182 = call { i64, i8* }* @nyx_array_new_ptr()
  %183 = load %nyx_string*, %nyx_string** %167
  %184 = ptrtoint %nyx_string* %183 to i64
  call void @nyx_array_push({ i64, i8* }* %182, i64 %184)
  %185 = load %nyx_string*, %nyx_string** %170
  %186 = ptrtoint %nyx_string* %185 to i64
  call void @nyx_array_push({ i64, i8* }* %182, i64 %186)
  %187 = ptrtoint { i64, i8* }* %182 to i64
  call void @nyx_array_push({ i64, i8* }* %181, i64 %187)
  %188 = getelementptr [6 x i8], [6 x i8]* @.str598, i32 0, i32 0
  %189 = call %nyx_string* @nyx_string_from_cstr(i8* %188)
  %190 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %189)
  br i1 %190, label %then42, label %else43
then42:
  %191 = call %Token @advance(%SharedEnv_parse* %env.param)
  br label %merge44
else43:
  br label %merge44
merge44:
  %192 = getelementptr [12 x i8], [12 x i8]* @.str599, i32 0, i32 0
  %193 = call %nyx_string* @nyx_string_from_cstr(i8* %192)
  %194 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %193)
  br i1 %194, label %then45, label %else46
then45:
  %195 = call %Token @advance(%SharedEnv_parse* %env.param)
  br label %merge47
else46:
  br label %merge47
merge47:
  store i1 1, i1* %144
  br label %merge38
else37:
  %196 = getelementptr [11 x i8], [11 x i8]* @.str600, i32 0, i32 0
  %197 = call %nyx_string* @nyx_string_from_cstr(i8* %196)
  %198 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %197)
  %199 = alloca %Token
  store %Token %198, %Token* %199
  %200 = getelementptr [1 x i8], [1 x i8]* @.str601, i32 0, i32 0
  %201 = call %nyx_string* @nyx_string_from_cstr(i8* %200)
  %202 = alloca %nyx_string*
  store %nyx_string* %201, %nyx_string** %202
  %203 = getelementptr [6 x i8], [6 x i8]* @.str602, i32 0, i32 0
  %204 = call %nyx_string* @nyx_string_from_cstr(i8* %203)
  %205 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %204)
  br i1 %205, label %then48, label %else49
then48:
  %206 = call %Token @advance(%SharedEnv_parse* %env.param)
  %207 = call %nyx_string* @parse_type_annotation(%SharedEnv_parse* %env.param)
  store %nyx_string* %207, %nyx_string** %202
  br label %merge50
else49:
  br label %merge50
merge50:
  %208 = getelementptr [7 x i8], [7 x i8]* @.str603, i32 0, i32 0
  %209 = call %nyx_string* @nyx_string_from_cstr(i8* %208)
  %210 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %209)
  br i1 %210, label %then51, label %else52
then51:
  %211 = call %Token @advance(%SharedEnv_parse* %env.param)
  %212 = call { i64, i8* }* @parse_expression(%SharedEnv_parse* %env.param)
  %213 = alloca { i64, i8* }*
  store { i64, i8* }* %212, { i64, i8* }** %213
  %214 = load { i64, i8* }*, { i64, i8* }** %143
  %215 = call { i64, i8* }* @nyx_array_new_ptr()
  %216 = load %Token, %Token* %199
  %217 = call %nyx_string* @get_token_value(%Token %216)
  %218 = ptrtoint %nyx_string* %217 to i64
  call void @nyx_array_push({ i64, i8* }* %215, i64 %218)
  %219 = load %nyx_string*, %nyx_string** %202
  %220 = ptrtoint %nyx_string* %219 to i64
  call void @nyx_array_push({ i64, i8* }* %215, i64 %220)
  %221 = load { i64, i8* }*, { i64, i8* }** %213
  %222 = bitcast { i64, i8* }* %221 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %215, i8* %222)
  %223 = ptrtoint { i64, i8* }* %215 to i64
  call void @nyx_array_push({ i64, i8* }* %214, i64 %223)
  br label %merge53
else52:
  %224 = load { i64, i8* }*, { i64, i8* }** %143
  %225 = call { i64, i8* }* @nyx_array_new_ptr()
  %226 = load %Token, %Token* %199
  %227 = call %nyx_string* @get_token_value(%Token %226)
  %228 = ptrtoint %nyx_string* %227 to i64
  call void @nyx_array_push({ i64, i8* }* %225, i64 %228)
  %229 = load %nyx_string*, %nyx_string** %202
  %230 = ptrtoint %nyx_string* %229 to i64
  call void @nyx_array_push({ i64, i8* }* %225, i64 %230)
  %231 = ptrtoint { i64, i8* }* %225 to i64
  call void @nyx_array_push({ i64, i8* }* %224, i64 %231)
  br label %merge53
merge53:
  br label %merge38
merge38:
  br label %merge32
merge32:
  br label %while_cond27
while_end29:
  %232 = getelementptr [1 x i8], [1 x i8]* @.str604, i32 0, i32 0
  %233 = call %nyx_string* @nyx_string_from_cstr(i8* %232)
  %234 = alloca %nyx_string*
  store %nyx_string* %233, %nyx_string** %234
  %235 = getelementptr [6 x i8], [6 x i8]* @.str605, i32 0, i32 0
  %236 = call %nyx_string* @nyx_string_from_cstr(i8* %235)
  %237 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %236)
  br i1 %237, label %then54, label %else55
then54:
  %238 = call %Token @advance(%SharedEnv_parse* %env.param)
  %239 = call %nyx_string* @parse_type_annotation(%SharedEnv_parse* %env.param)
  store %nyx_string* %239, %nyx_string** %234
  br label %merge56
else55:
  br label %merge56
merge56:
  %240 = getelementptr [6 x i8], [6 x i8]* @.str606, i32 0, i32 0
  %241 = call %nyx_string* @nyx_string_from_cstr(i8* %240)
  %242 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %241)
  br i1 %242, label %then57, label %else58
then57:
  %243 = call %Token @advance(%SharedEnv_parse* %env.param)
  %244 = alloca i1
  store i1 0, i1* %244
  br label %while_cond60
while_cond60:
  %245 = load i1, i1* %244
  %246 = xor i1 %245, true
  br i1 %246, label %while_body61, label %while_end62
while_body61:
  %247 = getelementptr [11 x i8], [11 x i8]* @.str607, i32 0, i32 0
  %248 = call %nyx_string* @nyx_string_from_cstr(i8* %247)
  %249 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %248)
  %250 = alloca %Token
  store %Token %249, %Token* %250
  %251 = load %Token, %Token* %250
  %252 = call %nyx_string* @get_token_value(%Token %251)
  %253 = alloca %nyx_string*
  store %nyx_string* %252, %nyx_string** %253
  %254 = getelementptr [6 x i8], [6 x i8]* @.str608, i32 0, i32 0
  %255 = call %nyx_string* @nyx_string_from_cstr(i8* %254)
  %256 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %255)
  %257 = getelementptr [11 x i8], [11 x i8]* @.str609, i32 0, i32 0
  %258 = call %nyx_string* @nyx_string_from_cstr(i8* %257)
  %259 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %258)
  %260 = alloca %Token
  store %Token %259, %Token* %260
  %261 = load %Token, %Token* %260
  %262 = call %nyx_string* @get_token_value(%Token %261)
  %263 = alloca %nyx_string*
  store %nyx_string* %262, %nyx_string** %263
  br label %while_cond63
while_cond63:
  %264 = getelementptr [5 x i8], [5 x i8]* @.str610, i32 0, i32 0
  %265 = call %nyx_string* @nyx_string_from_cstr(i8* %264)
  %266 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %265)
  br i1 %266, label %while_body64, label %while_end65
while_body64:
  %267 = call %Token @advance(%SharedEnv_parse* %env.param)
  %268 = getelementptr [11 x i8], [11 x i8]* @.str611, i32 0, i32 0
  %269 = call %nyx_string* @nyx_string_from_cstr(i8* %268)
  %270 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %269)
  %271 = alloca %Token
  store %Token %270, %Token* %271
  %272 = load %nyx_string*, %nyx_string** %263
  %273 = getelementptr [2 x i8], [2 x i8]* @.str612, i32 0, i32 0
  %274 = call %nyx_string* @nyx_string_from_cstr(i8* %273)
  %275 = call %nyx_string* @nyx_string_concat(%nyx_string* %272, %nyx_string* %274)
  %276 = load %Token, %Token* %271
  %277 = call %nyx_string* @get_token_value(%Token %276)
  %278 = call %nyx_string* @nyx_string_concat(%nyx_string* %275, %nyx_string* %277)
  store %nyx_string* %278, %nyx_string** %263
  br label %while_cond63
while_end65:
  %279 = alloca i1
  store i1 0, i1* %279
  %280 = alloca i64
  store i64 0, i64* %280
  br label %while_cond66
while_cond66:
  %281 = load i64, i64* %280
  %282 = load { i64, i8* }*, { i64, i8* }** %22
  %283 = call i64 @nyx_array_length({ i64, i8* }* %282)
  %284 = icmp slt i64 %281, %283
  br i1 %284, label %while_body67, label %while_end68
while_body67:
  %285 = load { i64, i8* }*, { i64, i8* }** %22
  %286 = load i64, i64* %280
  %287 = call i64 @nyx_array_get({ i64, i8* }* %285, i64 %286)
  %288 = inttoptr i64 %287 to %nyx_string*
  %289 = alloca %nyx_string*
  store %nyx_string* %288, %nyx_string** %289
  %290 = load %nyx_string*, %nyx_string** %289
  %291 = alloca %nyx_string*
  store %nyx_string* %290, %nyx_string** %291
  %292 = sub i64 0, 1
  %293 = alloca i64
  store i64 %292, i64* %293
  %294 = alloca i64
  store i64 0, i64* %294
  br label %while_cond69
while_cond69:
  %295 = load i64, i64* %294
  %296 = load %nyx_string*, %nyx_string** %289
  %297 = call i64 @nyx_string_length_utf8(%nyx_string* %296)
  %298 = icmp slt i64 %295, %297
  br i1 %298, label %while_body70, label %while_end71
while_body70:
  %299 = load %nyx_string*, %nyx_string** %289
  %300 = load i64, i64* %294
  %301 = call i8 @nyx_string_char_at(%nyx_string* %299, i64 %300)
  %302 = zext i8 %301 to i64
  %303 = getelementptr [1 x i8], [1 x i8]* @.str613, i32 0, i32 0
  %304 = load i8, i8* %303
  %305 = zext i8 %304 to i64
  %306 = icmp eq i64 %302, %305
  br i1 %306, label %then72, label %else73
then72:
  %307 = load i64, i64* %294
  store i64 %307, i64* %293
  %308 = load %nyx_string*, %nyx_string** %289
  %309 = call i64 @nyx_string_length_utf8(%nyx_string* %308)
  store i64 %309, i64* %294
  br label %merge74
else73:
  br label %merge74
merge74:
  %310 = load i64, i64* %294
  %311 = add i64 %310, 1
  store i64 %311, i64* %294
  br label %while_cond69
while_end71:
  %312 = load i64, i64* %293
  %313 = icmp sge i64 %312, 0
  br i1 %313, label %then75, label %else76
then75:
  %314 = load %nyx_string*, %nyx_string** %289
  %315 = load i64, i64* %293
  %316 = call %nyx_string* @nyx_string_substring(%nyx_string* %314, i64 0, i64 %315)
  store %nyx_string* %316, %nyx_string** %291
  br label %merge77
else76:
  br label %merge77
merge77:
  %317 = load %nyx_string*, %nyx_string** %291
  %318 = load %nyx_string*, %nyx_string** %253
  %319 = call i8* @nyx_string_to_cstr(%nyx_string* %317)
  %320 = call i8* @nyx_string_to_cstr(%nyx_string* %318)
  %321 = call i32 @strcmp(i8* %319, i8* %320)
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %then78, label %else79
then78:
  %323 = load i64, i64* %293
  %324 = icmp sge i64 %323, 0
  br i1 %324, label %then81, label %else82
then81:
  %325 = load { i64, i8* }*, { i64, i8* }** %22
  %326 = load i64, i64* %280
  %327 = load %nyx_string*, %nyx_string** %289
  %328 = getelementptr [2 x i8], [2 x i8]* @.str614, i32 0, i32 0
  %329 = call %nyx_string* @nyx_string_from_cstr(i8* %328)
  %330 = call %nyx_string* @nyx_string_concat(%nyx_string* %327, %nyx_string* %329)
  %331 = load %nyx_string*, %nyx_string** %263
  %332 = call %nyx_string* @nyx_string_concat(%nyx_string* %330, %nyx_string* %331)
  %333 = ptrtoint %nyx_string* %332 to i64
  call void @nyx_array_set({ i64, i8* }* %325, i64 %326, i64 %333)
  br label %merge83
else82:
  %334 = load { i64, i8* }*, { i64, i8* }** %22
  %335 = load i64, i64* %280
  %336 = load %nyx_string*, %nyx_string** %289
  %337 = getelementptr [2 x i8], [2 x i8]* @.str615, i32 0, i32 0
  %338 = call %nyx_string* @nyx_string_from_cstr(i8* %337)
  %339 = call %nyx_string* @nyx_string_concat(%nyx_string* %336, %nyx_string* %338)
  %340 = load %nyx_string*, %nyx_string** %263
  %341 = call %nyx_string* @nyx_string_concat(%nyx_string* %339, %nyx_string* %340)
  %342 = ptrtoint %nyx_string* %341 to i64
  call void @nyx_array_set({ i64, i8* }* %334, i64 %335, i64 %342)
  br label %merge83
merge83:
  store i1 1, i1* %279
  %343 = load { i64, i8* }*, { i64, i8* }** %22
  %344 = call i64 @nyx_array_length({ i64, i8* }* %343)
  store i64 %344, i64* %280
  br label %merge80
else79:
  br label %merge80
merge80:
  %345 = load i64, i64* %280
  %346 = add i64 %345, 1
  store i64 %346, i64* %280
  br label %while_cond66
while_end68:
  %347 = load i1, i1* %279
  %348 = xor i1 %347, true
  br i1 %348, label %then84, label %else85
then84:
  %349 = load { i64, i8* }*, { i64, i8* }** %22
  %350 = load %nyx_string*, %nyx_string** %253
  %351 = getelementptr [2 x i8], [2 x i8]* @.str616, i32 0, i32 0
  %352 = call %nyx_string* @nyx_string_from_cstr(i8* %351)
  %353 = call %nyx_string* @nyx_string_concat(%nyx_string* %350, %nyx_string* %352)
  %354 = load %nyx_string*, %nyx_string** %263
  %355 = call %nyx_string* @nyx_string_concat(%nyx_string* %353, %nyx_string* %354)
  %356 = ptrtoint %nyx_string* %355 to i64
  call void @nyx_array_push({ i64, i8* }* %349, i64 %356)
  br label %merge86
else85:
  br label %merge86
merge86:
  %357 = getelementptr [6 x i8], [6 x i8]* @.str617, i32 0, i32 0
  %358 = call %nyx_string* @nyx_string_from_cstr(i8* %357)
  %359 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %358)
  br i1 %359, label %then87, label %else88
then87:
  %360 = call %Token @advance(%SharedEnv_parse* %env.param)
  br label %merge89
else88:
  store i1 1, i1* %244
  br label %merge89
merge89:
  br label %while_cond60
while_end62:
  br label %merge59
else58:
  br label %merge59
merge59:
  %361 = load { i64, i8* }*, { i64, i8* }** %7
  %362 = call i64 @nyx_array_length({ i64, i8* }* %361)
  %363 = alloca i64
  store i64 %362, i64* %363
  %364 = call { i64, i8* }* @parse_block(%SharedEnv_parse* %env.param)
  %365 = alloca { i64, i8* }*
  store { i64, i8* }* %364, { i64, i8* }** %365
  %366 = load { i64, i8* }*, { i64, i8* }** %7
  %367 = call i64 @nyx_array_length({ i64, i8* }* %366)
  %368 = load i64, i64* %363
  %369 = icmp sgt i64 %367, %368
  br i1 %369, label %then90, label %else91
then90:
  %370 = load { i64, i8* }*, { i64, i8* }** %365
  %371 = call i64 @nyx_array_get({ i64, i8* }* %370, i64 1)
  %372 = inttoptr i64 %371 to { i64, i8* }*
  %373 = alloca { i64, i8* }*
  store { i64, i8* }* %372, { i64, i8* }** %373
  %374 = load { i64, i8* }*, { i64, i8* }** %373
  %375 = call i64 @nyx_array_get({ i64, i8* }* %374, i64 0)
  %376 = inttoptr i64 %375 to { i64, i8* }*
  %377 = alloca { i64, i8* }*
  store { i64, i8* }* %376, { i64, i8* }** %377
  %378 = call { i64, i8* }* @nyx_array_new_ptr()
  %379 = alloca { i64, i8* }*
  store { i64, i8* }* %378, { i64, i8* }** %379
  %380 = load i64, i64* %363
  %381 = alloca i64
  store i64 %380, i64* %381
  br label %while_cond93
while_cond93:
  %382 = load i64, i64* %381
  %383 = load { i64, i8* }*, { i64, i8* }** %7
  %384 = call i64 @nyx_array_length({ i64, i8* }* %383)
  %385 = icmp slt i64 %382, %384
  br i1 %385, label %while_body94, label %while_end95
while_body94:
  %386 = load { i64, i8* }*, { i64, i8* }** %379
  %387 = load { i64, i8* }*, { i64, i8* }** %7
  %388 = load i64, i64* %381
  %389 = call i64 @nyx_array_get({ i64, i8* }* %387, i64 %388)
  call void @nyx_array_push({ i64, i8* }* %386, i64 %389)
  %390 = load i64, i64* %381
  %391 = add i64 %390, 1
  store i64 %391, i64* %381
  br label %while_cond93
while_end95:
  %392 = alloca i64
  store i64 0, i64* %392
  br label %while_cond96
while_cond96:
  %393 = load i64, i64* %392
  %394 = load { i64, i8* }*, { i64, i8* }** %377
  %395 = call i64 @nyx_array_length({ i64, i8* }* %394)
  %396 = icmp slt i64 %393, %395
  br i1 %396, label %while_body97, label %while_end98
while_body97:
  %397 = load { i64, i8* }*, { i64, i8* }** %379
  %398 = load { i64, i8* }*, { i64, i8* }** %377
  %399 = load i64, i64* %392
  %400 = call i64 @nyx_array_get({ i64, i8* }* %398, i64 %399)
  call void @nyx_array_push({ i64, i8* }* %397, i64 %400)
  %401 = load i64, i64* %392
  %402 = add i64 %401, 1
  store i64 %402, i64* %392
  br label %while_cond96
while_end98:
  %403 = load i64, i64* %363
  %404 = alloca i64
  store i64 %403, i64* %404
  br label %while_cond99
while_cond99:
  %405 = load i64, i64* %404
  %406 = load { i64, i8* }*, { i64, i8* }** %7
  %407 = call i64 @nyx_array_length({ i64, i8* }* %406)
  %408 = icmp slt i64 %405, %407
  br i1 %408, label %while_body100, label %while_end101
while_body100:
  %409 = load { i64, i8* }*, { i64, i8* }** %7
  %410 = load i64, i64* %404
  %411 = getelementptr [10 x i8], [10 x i8]* @.str618, i32 0, i32 0
  %412 = call %nyx_string* @nyx_string_from_cstr(i8* %411)
  %413 = call { i64, i8* }* @nyx_array_new_ptr()
  %414 = call { i64, i8* }* @make_astnode(%nyx_string* %412, { i64, i8* }* %413)
  %415 = ptrtoint { i64, i8* }* %414 to i64
  call void @nyx_array_set({ i64, i8* }* %409, i64 %410, i64 %415)
  %416 = load i64, i64* %404
  %417 = add i64 %416, 1
  store i64 %417, i64* %404
  br label %while_cond99
while_end101:
  %418 = getelementptr [9 x i8], [9 x i8]* @.str619, i32 0, i32 0
  %419 = call %nyx_string* @nyx_string_from_cstr(i8* %418)
  %420 = call { i64, i8* }* @nyx_array_new_ptr()
  %421 = load %Token, %Token* %20
  %422 = call %nyx_string* @get_token_value(%Token %421)
  %423 = ptrtoint %nyx_string* %422 to i64
  call void @nyx_array_push({ i64, i8* }* %420, i64 %423)
  %424 = load { i64, i8* }*, { i64, i8* }** %143
  %425 = bitcast { i64, i8* }* %424 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %420, i8* %425)
  %426 = load %nyx_string*, %nyx_string** %234
  %427 = ptrtoint %nyx_string* %426 to i64
  call void @nyx_array_push({ i64, i8* }* %420, i64 %427)
  %428 = getelementptr [6 x i8], [6 x i8]* @.str620, i32 0, i32 0
  %429 = call %nyx_string* @nyx_string_from_cstr(i8* %428)
  %430 = call { i64, i8* }* @nyx_array_new_ptr()
  %431 = load { i64, i8* }*, { i64, i8* }** %379
  %432 = bitcast { i64, i8* }* %431 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %430, i8* %432)
  %433 = call { i64, i8* }* @make_astnode(%nyx_string* %429, { i64, i8* }* %430)
  %434 = bitcast { i64, i8* }* %433 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %420, i8* %434)
  %435 = load { i64, i8* }*, { i64, i8* }** %22
  %436 = bitcast { i64, i8* }* %435 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %420, i8* %436)
  %437 = call { i64, i8* }* @make_astnode(%nyx_string* %419, { i64, i8* }* %420)
  ret { i64, i8* }* %437
else91:
  br label %merge92
merge92:
  %438 = getelementptr [9 x i8], [9 x i8]* @.str621, i32 0, i32 0
  %439 = call %nyx_string* @nyx_string_from_cstr(i8* %438)
  %440 = call { i64, i8* }* @nyx_array_new_ptr()
  %441 = load %Token, %Token* %20
  %442 = call %nyx_string* @get_token_value(%Token %441)
  %443 = ptrtoint %nyx_string* %442 to i64
  call void @nyx_array_push({ i64, i8* }* %440, i64 %443)
  %444 = load { i64, i8* }*, { i64, i8* }** %143
  %445 = bitcast { i64, i8* }* %444 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %440, i8* %445)
  %446 = load %nyx_string*, %nyx_string** %234
  %447 = ptrtoint %nyx_string* %446 to i64
  call void @nyx_array_push({ i64, i8* }* %440, i64 %447)
  %448 = load { i64, i8* }*, { i64, i8* }** %365
  %449 = bitcast { i64, i8* }* %448 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %440, i8* %449)
  %450 = load { i64, i8* }*, { i64, i8* }** %22
  %451 = bitcast { i64, i8* }* %450 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %440, i8* %451)
  %452 = call { i64, i8* }* @make_astnode(%nyx_string* %439, { i64, i8* }* %440)
  ret { i64, i8* }* %452
}

define internal { i64, i8* }* @parse_struct(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = getelementptr [7 x i8], [7 x i8]* @.str622, i32 0, i32 0
  %15 = call %nyx_string* @nyx_string_from_cstr(i8* %14)
  %16 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %15)
  %17 = getelementptr [11 x i8], [11 x i8]* @.str623, i32 0, i32 0
  %18 = call %nyx_string* @nyx_string_from_cstr(i8* %17)
  %19 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %18)
  %20 = alloca %Token
  store %Token %19, %Token* %20
  %21 = call { i64, i8* }* @nyx_array_new_ptr()
  %22 = alloca { i64, i8* }*
  store { i64, i8* }* %21, { i64, i8* }** %22
  %23 = getelementptr [5 x i8], [5 x i8]* @.str624, i32 0, i32 0
  %24 = call %nyx_string* @nyx_string_from_cstr(i8* %23)
  %25 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %24)
  br i1 %25, label %then0, label %else1
then0:
  %26 = call %Token @advance(%SharedEnv_parse* %env.param)
  %27 = getelementptr [11 x i8], [11 x i8]* @.str625, i32 0, i32 0
  %28 = call %nyx_string* @nyx_string_from_cstr(i8* %27)
  %29 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %28)
  %30 = alloca %Token
  store %Token %29, %Token* %30
  %31 = load { i64, i8* }*, { i64, i8* }** %22
  %32 = load %Token, %Token* %30
  %33 = call %nyx_string* @get_token_value(%Token %32)
  %34 = ptrtoint %nyx_string* %33 to i64
  call void @nyx_array_push({ i64, i8* }* %31, i64 %34)
  %35 = alloca i1
  store i1 0, i1* %35
  br label %while_cond3
while_cond3:
  %36 = load i1, i1* %35
  %37 = xor i1 %36, true
  br i1 %37, label %while_body4, label %while_end5
while_body4:
  %38 = getelementptr [6 x i8], [6 x i8]* @.str626, i32 0, i32 0
  %39 = call %nyx_string* @nyx_string_from_cstr(i8* %38)
  %40 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %39)
  br i1 %40, label %then6, label %else7
then6:
  %41 = call %Token @advance(%SharedEnv_parse* %env.param)
  %42 = getelementptr [11 x i8], [11 x i8]* @.str627, i32 0, i32 0
  %43 = call %nyx_string* @nyx_string_from_cstr(i8* %42)
  %44 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %43)
  %45 = alloca %Token
  store %Token %44, %Token* %45
  %46 = load { i64, i8* }*, { i64, i8* }** %22
  %47 = load %Token, %Token* %45
  %48 = call %nyx_string* @get_token_value(%Token %47)
  %49 = ptrtoint %nyx_string* %48 to i64
  call void @nyx_array_push({ i64, i8* }* %46, i64 %49)
  br label %merge8
else7:
  store i1 1, i1* %35
  br label %merge8
merge8:
  br label %while_cond3
while_end5:
  %50 = getelementptr [8 x i8], [8 x i8]* @.str628, i32 0, i32 0
  %51 = call %nyx_string* @nyx_string_from_cstr(i8* %50)
  %52 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %51)
  br label %merge2
else1:
  br label %merge2
merge2:
  %53 = getelementptr [11 x i8], [11 x i8]* @.str629, i32 0, i32 0
  %54 = call %nyx_string* @nyx_string_from_cstr(i8* %53)
  %55 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %54)
  br i1 %55, label %then9, label %else10
then9:
  %56 = call %Token @advance(%SharedEnv_parse* %env.param)
  %57 = call %nyx_string* @parse_type_annotation(%SharedEnv_parse* %env.param)
  %58 = alloca %nyx_string*
  store %nyx_string* %57, %nyx_string** %58
  %59 = getelementptr [12 x i8], [12 x i8]* @.str630, i32 0, i32 0
  %60 = call %nyx_string* @nyx_string_from_cstr(i8* %59)
  %61 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %60)
  %62 = call { i64, i8* }* @nyx_array_new_ptr()
  %63 = call { i64, i8* }* @nyx_array_new_ptr()
  %64 = getelementptr [3 x i8], [3 x i8]* @.str631, i32 0, i32 0
  %65 = call %nyx_string* @nyx_string_from_cstr(i8* %64)
  %66 = ptrtoint %nyx_string* %65 to i64
  call void @nyx_array_push({ i64, i8* }* %63, i64 %66)
  %67 = load %nyx_string*, %nyx_string** %58
  %68 = ptrtoint %nyx_string* %67 to i64
  call void @nyx_array_push({ i64, i8* }* %63, i64 %68)
  %69 = bitcast { i64, i8* }* %63 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %62, i8* %69)
  %70 = alloca { i64, i8* }*
  store { i64, i8* }* %62, { i64, i8* }** %70
  %71 = getelementptr [7 x i8], [7 x i8]* @.str632, i32 0, i32 0
  %72 = call %nyx_string* @nyx_string_from_cstr(i8* %71)
  %73 = call { i64, i8* }* @nyx_array_new_ptr()
  %74 = load %Token, %Token* %20
  %75 = call %nyx_string* @get_token_value(%Token %74)
  %76 = ptrtoint %nyx_string* %75 to i64
  call void @nyx_array_push({ i64, i8* }* %73, i64 %76)
  %77 = load { i64, i8* }*, { i64, i8* }** %70
  %78 = bitcast { i64, i8* }* %77 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %73, i8* %78)
  %79 = load { i64, i8* }*, { i64, i8* }** %22
  %80 = bitcast { i64, i8* }* %79 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %73, i8* %80)
  %81 = call { i64, i8* }* @make_astnode(%nyx_string* %72, { i64, i8* }* %73)
  ret { i64, i8* }* %81
else10:
  br label %merge11
merge11:
  %82 = getelementptr [11 x i8], [11 x i8]* @.str633, i32 0, i32 0
  %83 = call %nyx_string* @nyx_string_from_cstr(i8* %82)
  %84 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %83)
  %85 = call { i64, i8* }* @nyx_array_new_ptr()
  %86 = alloca { i64, i8* }*
  store { i64, i8* }* %85, { i64, i8* }** %86
  %87 = alloca i1
  store i1 0, i1* %87
  br label %while_cond12
while_cond12:
  %88 = load i1, i1* %87
  %89 = xor i1 %88, true
  br i1 %89, label %while_body13, label %while_end14
while_body13:
  %90 = getelementptr [12 x i8], [12 x i8]* @.str634, i32 0, i32 0
  %91 = call %nyx_string* @nyx_string_from_cstr(i8* %90)
  %92 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %91)
  br i1 %92, label %then15, label %else16
then15:
  %93 = call %Token @advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %87
  br label %merge17
else16:
  %94 = load { i64, i8* }*, { i64, i8* }** %86
  %95 = call i64 @nyx_array_length({ i64, i8* }* %94)
  %96 = icmp sgt i64 %95, 0
  br i1 %96, label %then18, label %else19
then18:
  %97 = getelementptr [6 x i8], [6 x i8]* @.str635, i32 0, i32 0
  %98 = call %nyx_string* @nyx_string_from_cstr(i8* %97)
  %99 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %98)
  br label %merge20
else19:
  br label %merge20
merge20:
  %100 = getelementptr [11 x i8], [11 x i8]* @.str636, i32 0, i32 0
  %101 = call %nyx_string* @nyx_string_from_cstr(i8* %100)
  %102 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %101)
  %103 = alloca %Token
  store %Token %102, %Token* %103
  %104 = getelementptr [6 x i8], [6 x i8]* @.str637, i32 0, i32 0
  %105 = call %nyx_string* @nyx_string_from_cstr(i8* %104)
  %106 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %105)
  %107 = call %nyx_string* @parse_type_annotation(%SharedEnv_parse* %env.param)
  %108 = alloca %nyx_string*
  store %nyx_string* %107, %nyx_string** %108
  %109 = load { i64, i8* }*, { i64, i8* }** %86
  %110 = call { i64, i8* }* @nyx_array_new_ptr()
  %111 = load %Token, %Token* %103
  %112 = call %nyx_string* @get_token_value(%Token %111)
  %113 = ptrtoint %nyx_string* %112 to i64
  call void @nyx_array_push({ i64, i8* }* %110, i64 %113)
  %114 = load %nyx_string*, %nyx_string** %108
  %115 = ptrtoint %nyx_string* %114 to i64
  call void @nyx_array_push({ i64, i8* }* %110, i64 %115)
  %116 = ptrtoint { i64, i8* }* %110 to i64
  call void @nyx_array_push({ i64, i8* }* %109, i64 %116)
  br label %merge17
merge17:
  br label %while_cond12
while_end14:
  %117 = getelementptr [7 x i8], [7 x i8]* @.str638, i32 0, i32 0
  %118 = call %nyx_string* @nyx_string_from_cstr(i8* %117)
  %119 = call { i64, i8* }* @nyx_array_new_ptr()
  %120 = load %Token, %Token* %20
  %121 = call %nyx_string* @get_token_value(%Token %120)
  %122 = ptrtoint %nyx_string* %121 to i64
  call void @nyx_array_push({ i64, i8* }* %119, i64 %122)
  %123 = load { i64, i8* }*, { i64, i8* }** %86
  %124 = bitcast { i64, i8* }* %123 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %119, i8* %124)
  %125 = load { i64, i8* }*, { i64, i8* }** %22
  %126 = bitcast { i64, i8* }* %125 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %119, i8* %126)
  %127 = call { i64, i8* }* @make_astnode(%nyx_string* %118, { i64, i8* }* %119)
  ret { i64, i8* }* %127
}

define internal { i64, i8* }* @parse_if(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = getelementptr [3 x i8], [3 x i8]* @.str639, i32 0, i32 0
  %15 = call %nyx_string* @nyx_string_from_cstr(i8* %14)
  %16 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %15)
  %17 = getelementptr [4 x i8], [4 x i8]* @.str640, i32 0, i32 0
  %18 = call %nyx_string* @nyx_string_from_cstr(i8* %17)
  %19 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %18)
  br i1 %19, label %then0, label %else1
then0:
  %20 = call { i64, i8* }* @parse_if_let(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %20
else1:
  br label %merge2
merge2:
  %21 = call { i64, i8* }* @parse_expression(%SharedEnv_parse* %env.param)
  %22 = alloca { i64, i8* }*
  store { i64, i8* }* %21, { i64, i8* }** %22
  %23 = call { i64, i8* }* @parse_block(%SharedEnv_parse* %env.param)
  %24 = alloca { i64, i8* }*
  store { i64, i8* }* %23, { i64, i8* }** %24
  %25 = getelementptr [6 x i8], [6 x i8]* @.str641, i32 0, i32 0
  %26 = call %nyx_string* @nyx_string_from_cstr(i8* %25)
  %27 = call { i64, i8* }* @nyx_array_new_ptr()
  %28 = call { i64, i8* }* @make_astnode(%nyx_string* %26, { i64, i8* }* %27)
  %29 = alloca { i64, i8* }*
  store { i64, i8* }* %28, { i64, i8* }** %29
  %30 = getelementptr [5 x i8], [5 x i8]* @.str642, i32 0, i32 0
  %31 = call %nyx_string* @nyx_string_from_cstr(i8* %30)
  %32 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %31)
  br i1 %32, label %then3, label %else4
then3:
  %33 = call %Token @advance(%SharedEnv_parse* %env.param)
  %34 = getelementptr [3 x i8], [3 x i8]* @.str643, i32 0, i32 0
  %35 = call %nyx_string* @nyx_string_from_cstr(i8* %34)
  %36 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %35)
  br i1 %36, label %then6, label %else7
then6:
  %37 = call { i64, i8* }* @parse_if(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %37, { i64, i8* }** %29
  br label %merge8
else7:
  %38 = call { i64, i8* }* @parse_block(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %38, { i64, i8* }** %29
  br label %merge8
merge8:
  br label %merge5
else4:
  br label %merge5
merge5:
  %39 = getelementptr [3 x i8], [3 x i8]* @.str644, i32 0, i32 0
  %40 = call %nyx_string* @nyx_string_from_cstr(i8* %39)
  %41 = call { i64, i8* }* @nyx_array_new_ptr()
  %42 = load { i64, i8* }*, { i64, i8* }** %22
  %43 = bitcast { i64, i8* }* %42 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %41, i8* %43)
  %44 = load { i64, i8* }*, { i64, i8* }** %24
  %45 = bitcast { i64, i8* }* %44 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %41, i8* %45)
  %46 = load { i64, i8* }*, { i64, i8* }** %29
  %47 = bitcast { i64, i8* }* %46 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %41, i8* %47)
  %48 = call { i64, i8* }* @make_astnode(%nyx_string* %40, { i64, i8* }* %41)
  ret { i64, i8* }* %48
}

define internal { i64, i8* }* @parse_if_let(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = getelementptr [4 x i8], [4 x i8]* @.str645, i32 0, i32 0
  %15 = call %nyx_string* @nyx_string_from_cstr(i8* %14)
  %16 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %15)
  %17 = call { i64, i8* }* @parse_single_pattern(%SharedEnv_parse* %env.param)
  %18 = alloca { i64, i8* }*
  store { i64, i8* }* %17, { i64, i8* }** %18
  %19 = getelementptr [7 x i8], [7 x i8]* @.str646, i32 0, i32 0
  %20 = call %nyx_string* @nyx_string_from_cstr(i8* %19)
  %21 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %20)
  %22 = call { i64, i8* }* @parse_expression(%SharedEnv_parse* %env.param)
  %23 = alloca { i64, i8* }*
  store { i64, i8* }* %22, { i64, i8* }** %23
  %24 = call { i64, i8* }* @parse_block(%SharedEnv_parse* %env.param)
  %25 = alloca { i64, i8* }*
  store { i64, i8* }* %24, { i64, i8* }** %25
  %26 = call { i64, i8* }* @nyx_array_new_ptr()
  %27 = alloca { i64, i8* }*
  store { i64, i8* }* %26, { i64, i8* }** %27
  %28 = getelementptr [6 x i8], [6 x i8]* @.str647, i32 0, i32 0
  %29 = call %nyx_string* @nyx_string_from_cstr(i8* %28)
  %30 = call { i64, i8* }* @nyx_array_new_ptr()
  %31 = load { i64, i8* }*, { i64, i8* }** %27
  %32 = bitcast { i64, i8* }* %31 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %30, i8* %32)
  %33 = call { i64, i8* }* @make_astnode(%nyx_string* %29, { i64, i8* }* %30)
  %34 = alloca { i64, i8* }*
  store { i64, i8* }* %33, { i64, i8* }** %34
  %35 = getelementptr [5 x i8], [5 x i8]* @.str648, i32 0, i32 0
  %36 = call %nyx_string* @nyx_string_from_cstr(i8* %35)
  %37 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %36)
  br i1 %37, label %then0, label %else1
then0:
  %38 = call %Token @advance(%SharedEnv_parse* %env.param)
  %39 = getelementptr [11 x i8], [11 x i8]* @.str649, i32 0, i32 0
  %40 = call %nyx_string* @nyx_string_from_cstr(i8* %39)
  %41 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %40)
  br i1 %41, label %then3, label %else4
then3:
  %42 = call { i64, i8* }* @parse_block(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %42, { i64, i8* }** %34
  br label %merge5
else4:
  br label %merge5
merge5:
  br label %merge2
else1:
  br label %merge2
merge2:
  %43 = getelementptr [10 x i8], [10 x i8]* @.str650, i32 0, i32 0
  %44 = call %nyx_string* @nyx_string_from_cstr(i8* %43)
  %45 = call { i64, i8* }* @nyx_array_new_ptr()
  %46 = load { i64, i8* }*, { i64, i8* }** %18
  %47 = bitcast { i64, i8* }* %46 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %45, i8* %47)
  %48 = load { i64, i8* }*, { i64, i8* }** %25
  %49 = bitcast { i64, i8* }* %48 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %45, i8* %49)
  %50 = getelementptr [6 x i8], [6 x i8]* @.str651, i32 0, i32 0
  %51 = call %nyx_string* @nyx_string_from_cstr(i8* %50)
  %52 = call { i64, i8* }* @nyx_array_new_ptr()
  %53 = call { i64, i8* }* @make_astnode(%nyx_string* %51, { i64, i8* }* %52)
  %54 = bitcast { i64, i8* }* %53 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %45, i8* %54)
  %55 = call { i64, i8* }* @make_astnode(%nyx_string* %44, { i64, i8* }* %45)
  %56 = alloca { i64, i8* }*
  store { i64, i8* }* %55, { i64, i8* }** %56
  %57 = getelementptr [9 x i8], [9 x i8]* @.str652, i32 0, i32 0
  %58 = call %nyx_string* @nyx_string_from_cstr(i8* %57)
  %59 = call { i64, i8* }* @nyx_array_new_ptr()
  %60 = call { i64, i8* }* @make_astnode(%nyx_string* %58, { i64, i8* }* %59)
  %61 = alloca { i64, i8* }*
  store { i64, i8* }* %60, { i64, i8* }** %61
  %62 = getelementptr [10 x i8], [10 x i8]* @.str653, i32 0, i32 0
  %63 = call %nyx_string* @nyx_string_from_cstr(i8* %62)
  %64 = call { i64, i8* }* @nyx_array_new_ptr()
  %65 = load { i64, i8* }*, { i64, i8* }** %61
  %66 = bitcast { i64, i8* }* %65 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %64, i8* %66)
  %67 = load { i64, i8* }*, { i64, i8* }** %34
  %68 = bitcast { i64, i8* }* %67 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %64, i8* %68)
  %69 = getelementptr [6 x i8], [6 x i8]* @.str654, i32 0, i32 0
  %70 = call %nyx_string* @nyx_string_from_cstr(i8* %69)
  %71 = call { i64, i8* }* @nyx_array_new_ptr()
  %72 = call { i64, i8* }* @make_astnode(%nyx_string* %70, { i64, i8* }* %71)
  %73 = bitcast { i64, i8* }* %72 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %64, i8* %73)
  %74 = call { i64, i8* }* @make_astnode(%nyx_string* %63, { i64, i8* }* %64)
  %75 = alloca { i64, i8* }*
  store { i64, i8* }* %74, { i64, i8* }** %75
  %76 = call { i64, i8* }* @nyx_array_new_ptr()
  %77 = alloca { i64, i8* }*
  store { i64, i8* }* %76, { i64, i8* }** %77
  %78 = load { i64, i8* }*, { i64, i8* }** %77
  %79 = load { i64, i8* }*, { i64, i8* }** %56
  %80 = ptrtoint { i64, i8* }* %79 to i64
  call void @nyx_array_push({ i64, i8* }* %78, i64 %80)
  %81 = load { i64, i8* }*, { i64, i8* }** %77
  %82 = load { i64, i8* }*, { i64, i8* }** %75
  %83 = ptrtoint { i64, i8* }* %82 to i64
  call void @nyx_array_push({ i64, i8* }* %81, i64 %83)
  %84 = getelementptr [6 x i8], [6 x i8]* @.str655, i32 0, i32 0
  %85 = call %nyx_string* @nyx_string_from_cstr(i8* %84)
  %86 = call { i64, i8* }* @nyx_array_new_ptr()
  %87 = load { i64, i8* }*, { i64, i8* }** %23
  %88 = bitcast { i64, i8* }* %87 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %86, i8* %88)
  %89 = load { i64, i8* }*, { i64, i8* }** %77
  %90 = bitcast { i64, i8* }* %89 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %86, i8* %90)
  %91 = call { i64, i8* }* @make_astnode(%nyx_string* %85, { i64, i8* }* %86)
  ret { i64, i8* }* %91
}

define internal { i64, i8* }* @parse_while(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = getelementptr [6 x i8], [6 x i8]* @.str656, i32 0, i32 0
  %15 = call %nyx_string* @nyx_string_from_cstr(i8* %14)
  %16 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %15)
  %17 = getelementptr [4 x i8], [4 x i8]* @.str657, i32 0, i32 0
  %18 = call %nyx_string* @nyx_string_from_cstr(i8* %17)
  %19 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %18)
  br i1 %19, label %then0, label %else1
then0:
  %20 = call { i64, i8* }* @parse_while_let(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %20
else1:
  br label %merge2
merge2:
  %21 = call { i64, i8* }* @parse_expression(%SharedEnv_parse* %env.param)
  %22 = alloca { i64, i8* }*
  store { i64, i8* }* %21, { i64, i8* }** %22
  %23 = call { i64, i8* }* @parse_block(%SharedEnv_parse* %env.param)
  %24 = alloca { i64, i8* }*
  store { i64, i8* }* %23, { i64, i8* }** %24
  %25 = getelementptr [6 x i8], [6 x i8]* @.str658, i32 0, i32 0
  %26 = call %nyx_string* @nyx_string_from_cstr(i8* %25)
  %27 = call { i64, i8* }* @nyx_array_new_ptr()
  %28 = load { i64, i8* }*, { i64, i8* }** %22
  %29 = bitcast { i64, i8* }* %28 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %27, i8* %29)
  %30 = load { i64, i8* }*, { i64, i8* }** %24
  %31 = bitcast { i64, i8* }* %30 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %27, i8* %31)
  %32 = call { i64, i8* }* @make_astnode(%nyx_string* %26, { i64, i8* }* %27)
  ret { i64, i8* }* %32
}

define internal { i64, i8* }* @parse_while_let(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = getelementptr [4 x i8], [4 x i8]* @.str659, i32 0, i32 0
  %15 = call %nyx_string* @nyx_string_from_cstr(i8* %14)
  %16 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %15)
  %17 = call { i64, i8* }* @parse_single_pattern(%SharedEnv_parse* %env.param)
  %18 = alloca { i64, i8* }*
  store { i64, i8* }* %17, { i64, i8* }** %18
  %19 = getelementptr [7 x i8], [7 x i8]* @.str660, i32 0, i32 0
  %20 = call %nyx_string* @nyx_string_from_cstr(i8* %19)
  %21 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %20)
  %22 = call { i64, i8* }* @parse_expression(%SharedEnv_parse* %env.param)
  %23 = alloca { i64, i8* }*
  store { i64, i8* }* %22, { i64, i8* }** %23
  %24 = call { i64, i8* }* @parse_block(%SharedEnv_parse* %env.param)
  %25 = alloca { i64, i8* }*
  store { i64, i8* }* %24, { i64, i8* }** %25
  %26 = getelementptr [10 x i8], [10 x i8]* @.str661, i32 0, i32 0
  %27 = call %nyx_string* @nyx_string_from_cstr(i8* %26)
  %28 = call { i64, i8* }* @nyx_array_new_ptr()
  %29 = load { i64, i8* }*, { i64, i8* }** %18
  %30 = bitcast { i64, i8* }* %29 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %28, i8* %30)
  %31 = load { i64, i8* }*, { i64, i8* }** %23
  %32 = bitcast { i64, i8* }* %31 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %28, i8* %32)
  %33 = load { i64, i8* }*, { i64, i8* }** %25
  %34 = bitcast { i64, i8* }* %33 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %28, i8* %34)
  %35 = call { i64, i8* }* @make_astnode(%nyx_string* %27, { i64, i8* }* %28)
  ret { i64, i8* }* %35
}

define internal { i64, i8* }* @parse_for(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = getelementptr [4 x i8], [4 x i8]* @.str662, i32 0, i32 0
  %15 = call %nyx_string* @nyx_string_from_cstr(i8* %14)
  %16 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %15)
  %17 = getelementptr [11 x i8], [11 x i8]* @.str663, i32 0, i32 0
  %18 = call %nyx_string* @nyx_string_from_cstr(i8* %17)
  %19 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %18)
  %20 = alloca %Token
  store %Token %19, %Token* %20
  %21 = getelementptr [1 x i8], [1 x i8]* @.str664, i32 0, i32 0
  %22 = call %nyx_string* @nyx_string_from_cstr(i8* %21)
  %23 = alloca %nyx_string*
  store %nyx_string* %22, %nyx_string** %23
  %24 = getelementptr [6 x i8], [6 x i8]* @.str665, i32 0, i32 0
  %25 = call %nyx_string* @nyx_string_from_cstr(i8* %24)
  %26 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %25)
  br i1 %26, label %then0, label %else1
then0:
  %27 = call %Token @advance(%SharedEnv_parse* %env.param)
  %28 = call %nyx_string* @parse_type_annotation(%SharedEnv_parse* %env.param)
  store %nyx_string* %28, %nyx_string** %23
  br label %merge2
else1:
  br label %merge2
merge2:
  %29 = getelementptr [3 x i8], [3 x i8]* @.str666, i32 0, i32 0
  %30 = call %nyx_string* @nyx_string_from_cstr(i8* %29)
  %31 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %30)
  %32 = call { i64, i8* }* @parse_expression(%SharedEnv_parse* %env.param)
  %33 = alloca { i64, i8* }*
  store { i64, i8* }* %32, { i64, i8* }** %33
  %34 = call { i64, i8* }* @parse_block(%SharedEnv_parse* %env.param)
  %35 = alloca { i64, i8* }*
  store { i64, i8* }* %34, { i64, i8* }** %35
  %36 = getelementptr [4 x i8], [4 x i8]* @.str667, i32 0, i32 0
  %37 = call %nyx_string* @nyx_string_from_cstr(i8* %36)
  %38 = call { i64, i8* }* @nyx_array_new_ptr()
  %39 = load %Token, %Token* %20
  %40 = call %nyx_string* @get_token_value(%Token %39)
  %41 = ptrtoint %nyx_string* %40 to i64
  call void @nyx_array_push({ i64, i8* }* %38, i64 %41)
  %42 = load { i64, i8* }*, { i64, i8* }** %33
  %43 = bitcast { i64, i8* }* %42 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %38, i8* %43)
  %44 = load { i64, i8* }*, { i64, i8* }** %35
  %45 = bitcast { i64, i8* }* %44 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %38, i8* %45)
  %46 = load %nyx_string*, %nyx_string** %23
  %47 = ptrtoint %nyx_string* %46 to i64
  call void @nyx_array_push({ i64, i8* }* %38, i64 %47)
  %48 = call { i64, i8* }* @make_astnode(%nyx_string* %37, { i64, i8* }* %38)
  ret { i64, i8* }* %48
}

define internal { i64, i8* }* @parse_return(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = getelementptr [7 x i8], [7 x i8]* @.str668, i32 0, i32 0
  %15 = call %nyx_string* @nyx_string_from_cstr(i8* %14)
  %16 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %15)
  %17 = call { i64, i8* }* @parse_expression(%SharedEnv_parse* %env.param)
  %18 = alloca { i64, i8* }*
  store { i64, i8* }* %17, { i64, i8* }** %18
  %19 = getelementptr [7 x i8], [7 x i8]* @.str669, i32 0, i32 0
  %20 = call %nyx_string* @nyx_string_from_cstr(i8* %19)
  %21 = call { i64, i8* }* @nyx_array_new_ptr()
  %22 = load { i64, i8* }*, { i64, i8* }** %18
  %23 = bitcast { i64, i8* }* %22 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %21, i8* %23)
  %24 = call { i64, i8* }* @make_astnode(%nyx_string* %20, { i64, i8* }* %21)
  ret { i64, i8* }* %24
}

define internal { i64, i8* }* @parse_export(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = getelementptr [7 x i8], [7 x i8]* @.str670, i32 0, i32 0
  %15 = call %nyx_string* @nyx_string_from_cstr(i8* %14)
  %16 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %15)
  %17 = getelementptr [3 x i8], [3 x i8]* @.str671, i32 0, i32 0
  %18 = call %nyx_string* @nyx_string_from_cstr(i8* %17)
  %19 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %18)
  br i1 %19, label %then0, label %else1
then0:
  %20 = call { i64, i8* }* @parse_function(%SharedEnv_parse* %env.param)
  %21 = alloca { i64, i8* }*
  store { i64, i8* }* %20, { i64, i8* }** %21
  %22 = getelementptr [7 x i8], [7 x i8]* @.str672, i32 0, i32 0
  %23 = call %nyx_string* @nyx_string_from_cstr(i8* %22)
  %24 = call { i64, i8* }* @nyx_array_new_ptr()
  %25 = load { i64, i8* }*, { i64, i8* }** %21
  %26 = bitcast { i64, i8* }* %25 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %24, i8* %26)
  %27 = call { i64, i8* }* @make_astnode(%nyx_string* %23, { i64, i8* }* %24)
  ret { i64, i8* }* %27
else1:
  br label %merge2
merge2:
  %28 = getelementptr [7 x i8], [7 x i8]* @.str673, i32 0, i32 0
  %29 = call %nyx_string* @nyx_string_from_cstr(i8* %28)
  %30 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %29)
  br i1 %30, label %then3, label %else4
then3:
  %31 = call { i64, i8* }* @parse_struct(%SharedEnv_parse* %env.param)
  %32 = alloca { i64, i8* }*
  store { i64, i8* }* %31, { i64, i8* }** %32
  %33 = getelementptr [7 x i8], [7 x i8]* @.str674, i32 0, i32 0
  %34 = call %nyx_string* @nyx_string_from_cstr(i8* %33)
  %35 = call { i64, i8* }* @nyx_array_new_ptr()
  %36 = load { i64, i8* }*, { i64, i8* }** %32
  %37 = bitcast { i64, i8* }* %36 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %35, i8* %37)
  %38 = call { i64, i8* }* @make_astnode(%nyx_string* %34, { i64, i8* }* %35)
  ret { i64, i8* }* %38
else4:
  br label %merge5
merge5:
  %39 = getelementptr [5 x i8], [5 x i8]* @.str675, i32 0, i32 0
  %40 = call %nyx_string* @nyx_string_from_cstr(i8* %39)
  %41 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %40)
  br i1 %41, label %then6, label %else7
then6:
  %42 = call { i64, i8* }* @parse_enum(%SharedEnv_parse* %env.param)
  %43 = alloca { i64, i8* }*
  store { i64, i8* }* %42, { i64, i8* }** %43
  %44 = getelementptr [7 x i8], [7 x i8]* @.str676, i32 0, i32 0
  %45 = call %nyx_string* @nyx_string_from_cstr(i8* %44)
  %46 = call { i64, i8* }* @nyx_array_new_ptr()
  %47 = load { i64, i8* }*, { i64, i8* }** %43
  %48 = bitcast { i64, i8* }* %47 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %46, i8* %48)
  %49 = call { i64, i8* }* @make_astnode(%nyx_string* %45, { i64, i8* }* %46)
  ret { i64, i8* }* %49
else7:
  br label %merge8
merge8:
  %50 = call %Token @peek(%SharedEnv_parse* %env.param)
  %51 = alloca %Token
  store %Token %50, %Token* %51
  %52 = load %Token, %Token* %51
  %53 = call i64 @get_token_line(%Token %52)
  %54 = load %Token, %Token* %51
  %55 = call i64 @get_token_column(%Token %54)
  %56 = load %Token, %Token* %51
  %57 = call %nyx_string* @get_token_value(%Token %56)
  %58 = getelementptr [45 x i8], [45 x i8]* @.str677, i32 0, i32 0
  %59 = call %nyx_string* @nyx_string_from_cstr(i8* %58)
  %60 = call i64 @show_parse_error(%SharedEnv_parse* %env.param, i64 %53, i64 %55, %nyx_string* %57, %nyx_string* %59)
  %61 = getelementptr [6 x i8], [6 x i8]* @.str678, i32 0, i32 0
  %62 = call %nyx_string* @nyx_string_from_cstr(i8* %61)
  %63 = call { i64, i8* }* @nyx_array_new_ptr()
  %64 = call { i64, i8* }* @make_astnode(%nyx_string* %62, { i64, i8* }* %63)
  ret { i64, i8* }* %64
}

define internal { i64, i8* }* @parse_import(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = getelementptr [7 x i8], [7 x i8]* @.str679, i32 0, i32 0
  %15 = call %nyx_string* @nyx_string_from_cstr(i8* %14)
  %16 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %15)
  %17 = getelementptr [7 x i8], [7 x i8]* @.str680, i32 0, i32 0
  %18 = call %nyx_string* @nyx_string_from_cstr(i8* %17)
  %19 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %18)
  br i1 %19, label %then0, label %else1
then0:
  %20 = getelementptr [7 x i8], [7 x i8]* @.str681, i32 0, i32 0
  %21 = call %nyx_string* @nyx_string_from_cstr(i8* %20)
  %22 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %21)
  %23 = alloca %Token
  store %Token %22, %Token* %23
  %24 = load %Token, %Token* %23
  %25 = call %nyx_string* @get_token_value(%Token %24)
  %26 = alloca %nyx_string*
  store %nyx_string* %25, %nyx_string** %26
  %27 = getelementptr [1 x i8], [1 x i8]* @.str682, i32 0, i32 0
  %28 = call %nyx_string* @nyx_string_from_cstr(i8* %27)
  %29 = alloca %nyx_string*
  store %nyx_string* %28, %nyx_string** %29
  %30 = getelementptr [3 x i8], [3 x i8]* @.str683, i32 0, i32 0
  %31 = call %nyx_string* @nyx_string_from_cstr(i8* %30)
  %32 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %31)
  br i1 %32, label %then3, label %else4
then3:
  %33 = call %Token @advance(%SharedEnv_parse* %env.param)
  %34 = getelementptr [11 x i8], [11 x i8]* @.str684, i32 0, i32 0
  %35 = call %nyx_string* @nyx_string_from_cstr(i8* %34)
  %36 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %35)
  %37 = alloca %Token
  store %Token %36, %Token* %37
  %38 = load %Token, %Token* %37
  %39 = call %nyx_string* @get_token_value(%Token %38)
  store %nyx_string* %39, %nyx_string** %29
  br label %merge5
else4:
  br label %merge5
merge5:
  %40 = getelementptr [14 x i8], [14 x i8]* @.str685, i32 0, i32 0
  %41 = call %nyx_string* @nyx_string_from_cstr(i8* %40)
  %42 = call { i64, i8* }* @nyx_array_new_ptr()
  %43 = load %nyx_string*, %nyx_string** %26
  %44 = ptrtoint %nyx_string* %43 to i64
  call void @nyx_array_push({ i64, i8* }* %42, i64 %44)
  %45 = load %nyx_string*, %nyx_string** %29
  %46 = ptrtoint %nyx_string* %45 to i64
  call void @nyx_array_push({ i64, i8* }* %42, i64 %46)
  %47 = call { i64, i8* }* @make_astnode(%nyx_string* %41, { i64, i8* }* %42)
  ret { i64, i8* }* %47
else1:
  br label %merge2
merge2:
  %48 = getelementptr [11 x i8], [11 x i8]* @.str686, i32 0, i32 0
  %49 = call %nyx_string* @nyx_string_from_cstr(i8* %48)
  %50 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %49)
  %51 = call { i64, i8* }* @nyx_array_new_ptr()
  %52 = alloca { i64, i8* }*
  store { i64, i8* }* %51, { i64, i8* }** %52
  %53 = alloca i1
  store i1 0, i1* %53
  br label %while_cond6
while_cond6:
  %54 = load i1, i1* %53
  %55 = xor i1 %54, true
  br i1 %55, label %while_body7, label %while_end8
while_body7:
  %56 = getelementptr [11 x i8], [11 x i8]* @.str687, i32 0, i32 0
  %57 = call %nyx_string* @nyx_string_from_cstr(i8* %56)
  %58 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %57)
  %59 = alloca %Token
  store %Token %58, %Token* %59
  %60 = load %Token, %Token* %59
  %61 = call %nyx_string* @get_token_value(%Token %60)
  %62 = alloca %nyx_string*
  store %nyx_string* %61, %nyx_string** %62
  %63 = load { i64, i8* }*, { i64, i8* }** %52
  %64 = load %nyx_string*, %nyx_string** %62
  %65 = ptrtoint %nyx_string* %64 to i64
  call void @nyx_array_push({ i64, i8* }* %63, i64 %65)
  %66 = getelementptr [6 x i8], [6 x i8]* @.str688, i32 0, i32 0
  %67 = call %nyx_string* @nyx_string_from_cstr(i8* %66)
  %68 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %67)
  br i1 %68, label %then9, label %else10
then9:
  %69 = call %Token @advance(%SharedEnv_parse* %env.param)
  br label %merge11
else10:
  store i1 1, i1* %53
  br label %merge11
merge11:
  br label %while_cond6
while_end8:
  %70 = getelementptr [12 x i8], [12 x i8]* @.str689, i32 0, i32 0
  %71 = call %nyx_string* @nyx_string_from_cstr(i8* %70)
  %72 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %71)
  %73 = getelementptr [5 x i8], [5 x i8]* @.str690, i32 0, i32 0
  %74 = call %nyx_string* @nyx_string_from_cstr(i8* %73)
  %75 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %74)
  %76 = getelementptr [7 x i8], [7 x i8]* @.str691, i32 0, i32 0
  %77 = call %nyx_string* @nyx_string_from_cstr(i8* %76)
  %78 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %77)
  %79 = alloca %Token
  store %Token %78, %Token* %79
  %80 = load %Token, %Token* %79
  %81 = call %nyx_string* @get_token_value(%Token %80)
  %82 = alloca %nyx_string*
  store %nyx_string* %81, %nyx_string** %82
  %83 = getelementptr [7 x i8], [7 x i8]* @.str692, i32 0, i32 0
  %84 = call %nyx_string* @nyx_string_from_cstr(i8* %83)
  %85 = call { i64, i8* }* @nyx_array_new_ptr()
  %86 = load { i64, i8* }*, { i64, i8* }** %52
  %87 = bitcast { i64, i8* }* %86 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %85, i8* %87)
  %88 = load %nyx_string*, %nyx_string** %82
  %89 = ptrtoint %nyx_string* %88 to i64
  call void @nyx_array_push({ i64, i8* }* %85, i64 %89)
  %90 = call { i64, i8* }* @make_astnode(%nyx_string* %84, { i64, i8* }* %85)
  ret { i64, i8* }* %90
}

define internal { i64, i8* }* @parse_pub(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = getelementptr [4 x i8], [4 x i8]* @.str693, i32 0, i32 0
  %15 = call %nyx_string* @nyx_string_from_cstr(i8* %14)
  %16 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %15)
  %17 = getelementptr [3 x i8], [3 x i8]* @.str694, i32 0, i32 0
  %18 = call %nyx_string* @nyx_string_from_cstr(i8* %17)
  %19 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %18)
  br i1 %19, label %then0, label %else1
then0:
  %20 = call { i64, i8* }* @parse_function(%SharedEnv_parse* %env.param)
  %21 = alloca { i64, i8* }*
  store { i64, i8* }* %20, { i64, i8* }** %21
  %22 = getelementptr [7 x i8], [7 x i8]* @.str695, i32 0, i32 0
  %23 = call %nyx_string* @nyx_string_from_cstr(i8* %22)
  %24 = call { i64, i8* }* @nyx_array_new_ptr()
  %25 = load { i64, i8* }*, { i64, i8* }** %21
  %26 = bitcast { i64, i8* }* %25 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %24, i8* %26)
  %27 = call { i64, i8* }* @make_astnode(%nyx_string* %23, { i64, i8* }* %24)
  ret { i64, i8* }* %27
else1:
  br label %merge2
merge2:
  %28 = getelementptr [7 x i8], [7 x i8]* @.str696, i32 0, i32 0
  %29 = call %nyx_string* @nyx_string_from_cstr(i8* %28)
  %30 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %29)
  br i1 %30, label %then3, label %else4
then3:
  %31 = call { i64, i8* }* @parse_struct(%SharedEnv_parse* %env.param)
  %32 = alloca { i64, i8* }*
  store { i64, i8* }* %31, { i64, i8* }** %32
  %33 = getelementptr [7 x i8], [7 x i8]* @.str697, i32 0, i32 0
  %34 = call %nyx_string* @nyx_string_from_cstr(i8* %33)
  %35 = call { i64, i8* }* @nyx_array_new_ptr()
  %36 = load { i64, i8* }*, { i64, i8* }** %32
  %37 = bitcast { i64, i8* }* %36 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %35, i8* %37)
  %38 = call { i64, i8* }* @make_astnode(%nyx_string* %34, { i64, i8* }* %35)
  ret { i64, i8* }* %38
else4:
  br label %merge5
merge5:
  %39 = getelementptr [5 x i8], [5 x i8]* @.str698, i32 0, i32 0
  %40 = call %nyx_string* @nyx_string_from_cstr(i8* %39)
  %41 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %40)
  br i1 %41, label %then6, label %else7
then6:
  %42 = call { i64, i8* }* @parse_enum(%SharedEnv_parse* %env.param)
  %43 = alloca { i64, i8* }*
  store { i64, i8* }* %42, { i64, i8* }** %43
  %44 = getelementptr [7 x i8], [7 x i8]* @.str699, i32 0, i32 0
  %45 = call %nyx_string* @nyx_string_from_cstr(i8* %44)
  %46 = call { i64, i8* }* @nyx_array_new_ptr()
  %47 = load { i64, i8* }*, { i64, i8* }** %43
  %48 = bitcast { i64, i8* }* %47 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %46, i8* %48)
  %49 = call { i64, i8* }* @make_astnode(%nyx_string* %45, { i64, i8* }* %46)
  ret { i64, i8* }* %49
else7:
  br label %merge8
merge8:
  %50 = call %Token @peek(%SharedEnv_parse* %env.param)
  %51 = alloca %Token
  store %Token %50, %Token* %51
  %52 = load %Token, %Token* %51
  %53 = call i64 @get_token_line(%Token %52)
  %54 = load %Token, %Token* %51
  %55 = call i64 @get_token_column(%Token %54)
  %56 = load %Token, %Token* %51
  %57 = call %nyx_string* @get_token_value(%Token %56)
  %58 = getelementptr [42 x i8], [42 x i8]* @.str700, i32 0, i32 0
  %59 = call %nyx_string* @nyx_string_from_cstr(i8* %58)
  %60 = call i64 @show_parse_error(%SharedEnv_parse* %env.param, i64 %53, i64 %55, %nyx_string* %57, %nyx_string* %59)
  %61 = getelementptr [6 x i8], [6 x i8]* @.str701, i32 0, i32 0
  %62 = call %nyx_string* @nyx_string_from_cstr(i8* %61)
  %63 = call { i64, i8* }* @nyx_array_new_ptr()
  %64 = call { i64, i8* }* @make_astnode(%nyx_string* %62, { i64, i8* }* %63)
  ret { i64, i8* }* %64
}

define internal { i64, i8* }* @parse_module_decl(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = getelementptr [7 x i8], [7 x i8]* @.str702, i32 0, i32 0
  %15 = call %nyx_string* @nyx_string_from_cstr(i8* %14)
  %16 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %15)
  %17 = getelementptr [11 x i8], [11 x i8]* @.str703, i32 0, i32 0
  %18 = call %nyx_string* @nyx_string_from_cstr(i8* %17)
  %19 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %18)
  %20 = alloca %Token
  store %Token %19, %Token* %20
  %21 = load %Token, %Token* %20
  %22 = call %nyx_string* @get_token_value(%Token %21)
  %23 = alloca %nyx_string*
  store %nyx_string* %22, %nyx_string** %23
  %24 = getelementptr [7 x i8], [7 x i8]* @.str704, i32 0, i32 0
  %25 = call %nyx_string* @nyx_string_from_cstr(i8* %24)
  %26 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %25)
  %27 = getelementptr [13 x i8], [13 x i8]* @.str705, i32 0, i32 0
  %28 = call %nyx_string* @nyx_string_from_cstr(i8* %27)
  %29 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %28)
  %30 = call { i64, i8* }* @nyx_array_new_ptr()
  %31 = alloca { i64, i8* }*
  store { i64, i8* }* %30, { i64, i8* }** %31
  %32 = alloca i1
  store i1 0, i1* %32
  br label %while_cond0
while_cond0:
  %33 = load i1, i1* %32
  %34 = xor i1 %33, true
  br i1 %34, label %while_body1, label %while_end2
while_body1:
  %35 = getelementptr [14 x i8], [14 x i8]* @.str706, i32 0, i32 0
  %36 = call %nyx_string* @nyx_string_from_cstr(i8* %35)
  %37 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %36)
  br i1 %37, label %then3, label %else4
then3:
  store i1 1, i1* %32
  br label %merge5
else4:
  %38 = getelementptr [11 x i8], [11 x i8]* @.str707, i32 0, i32 0
  %39 = call %nyx_string* @nyx_string_from_cstr(i8* %38)
  %40 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %39)
  %41 = alloca %Token
  store %Token %40, %Token* %41
  %42 = load %Token, %Token* %41
  %43 = call %nyx_string* @get_token_value(%Token %42)
  %44 = alloca %nyx_string*
  store %nyx_string* %43, %nyx_string** %44
  %45 = load { i64, i8* }*, { i64, i8* }** %31
  %46 = load %nyx_string*, %nyx_string** %44
  %47 = ptrtoint %nyx_string* %46 to i64
  call void @nyx_array_push({ i64, i8* }* %45, i64 %47)
  %48 = getelementptr [6 x i8], [6 x i8]* @.str708, i32 0, i32 0
  %49 = call %nyx_string* @nyx_string_from_cstr(i8* %48)
  %50 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %49)
  br i1 %50, label %then6, label %else7
then6:
  %51 = call %Token @advance(%SharedEnv_parse* %env.param)
  br label %merge8
else7:
  br label %merge8
merge8:
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %52 = getelementptr [14 x i8], [14 x i8]* @.str709, i32 0, i32 0
  %53 = call %nyx_string* @nyx_string_from_cstr(i8* %52)
  %54 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %53)
  %55 = getelementptr [12 x i8], [12 x i8]* @.str710, i32 0, i32 0
  %56 = call %nyx_string* @nyx_string_from_cstr(i8* %55)
  %57 = call { i64, i8* }* @nyx_array_new_ptr()
  %58 = load %nyx_string*, %nyx_string** %23
  %59 = ptrtoint %nyx_string* %58 to i64
  call void @nyx_array_push({ i64, i8* }* %57, i64 %59)
  %60 = load { i64, i8* }*, { i64, i8* }** %31
  %61 = bitcast { i64, i8* }* %60 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %57, i8* %61)
  %62 = call { i64, i8* }* @make_astnode(%nyx_string* %56, { i64, i8* }* %57)
  ret { i64, i8* }* %62
}

define internal { i64, i8* }* @parse_trait(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = getelementptr [6 x i8], [6 x i8]* @.str711, i32 0, i32 0
  %15 = call %nyx_string* @nyx_string_from_cstr(i8* %14)
  %16 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %15)
  %17 = getelementptr [11 x i8], [11 x i8]* @.str712, i32 0, i32 0
  %18 = call %nyx_string* @nyx_string_from_cstr(i8* %17)
  %19 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %18)
  %20 = alloca %Token
  store %Token %19, %Token* %20
  %21 = load %Token, %Token* %20
  %22 = call %nyx_string* @get_token_value(%Token %21)
  %23 = alloca %nyx_string*
  store %nyx_string* %22, %nyx_string** %23
  %24 = getelementptr [5 x i8], [5 x i8]* @.str713, i32 0, i32 0
  %25 = call %nyx_string* @nyx_string_from_cstr(i8* %24)
  %26 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %25)
  br i1 %26, label %then0, label %else1
then0:
  %27 = call %Token @advance(%SharedEnv_parse* %env.param)
  %28 = alloca i1
  store i1 0, i1* %28
  br label %while_cond3
while_cond3:
  %29 = load i1, i1* %28
  %30 = xor i1 %29, true
  br i1 %30, label %while_body4, label %while_end5
while_body4:
  %31 = getelementptr [8 x i8], [8 x i8]* @.str714, i32 0, i32 0
  %32 = call %nyx_string* @nyx_string_from_cstr(i8* %31)
  %33 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %32)
  br i1 %33, label %then6, label %else7
then6:
  %34 = call %Token @advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %28
  br label %merge8
else7:
  %35 = getelementptr [9 x i8], [9 x i8]* @.str715, i32 0, i32 0
  %36 = call %nyx_string* @nyx_string_from_cstr(i8* %35)
  %37 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %36)
  br i1 %37, label %then9, label %else10
then9:
  %38 = call %Token @advance(%SharedEnv_parse* %env.param)
  br label %merge11
else10:
  %39 = getelementptr [11 x i8], [11 x i8]* @.str716, i32 0, i32 0
  %40 = call %nyx_string* @nyx_string_from_cstr(i8* %39)
  %41 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %40)
  br i1 %41, label %then12, label %else13
then12:
  %42 = call %Token @advance(%SharedEnv_parse* %env.param)
  br label %merge14
else13:
  %43 = call %Token @advance(%SharedEnv_parse* %env.param)
  br label %merge14
merge14:
  br label %merge11
merge11:
  %44 = getelementptr [6 x i8], [6 x i8]* @.str717, i32 0, i32 0
  %45 = call %nyx_string* @nyx_string_from_cstr(i8* %44)
  %46 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %45)
  br i1 %46, label %then15, label %else16
then15:
  %47 = call %Token @advance(%SharedEnv_parse* %env.param)
  br label %merge17
else16:
  %48 = getelementptr [8 x i8], [8 x i8]* @.str718, i32 0, i32 0
  %49 = call %nyx_string* @nyx_string_from_cstr(i8* %48)
  %50 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %49)
  %51 = xor i1 %50, true
  br i1 %51, label %then18, label %else19
then18:
  store i1 1, i1* %28
  br label %merge20
else19:
  br label %merge20
merge20:
  br label %merge17
merge17:
  br label %merge8
merge8:
  br label %while_cond3
while_end5:
  br label %merge2
else1:
  br label %merge2
merge2:
  %52 = call { i64, i8* }* @nyx_array_new_ptr()
  %53 = alloca { i64, i8* }*
  store { i64, i8* }* %52, { i64, i8* }** %53
  %54 = getelementptr [6 x i8], [6 x i8]* @.str719, i32 0, i32 0
  %55 = call %nyx_string* @nyx_string_from_cstr(i8* %54)
  %56 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %55)
  br i1 %56, label %then21, label %else22
then21:
  %57 = call %Token @advance(%SharedEnv_parse* %env.param)
  %58 = alloca i1
  store i1 1, i1* %58
  br label %while_cond24
while_cond24:
  %59 = load i1, i1* %58
  br i1 %59, label %while_body25, label %while_end26
while_body25:
  %60 = getelementptr [11 x i8], [11 x i8]* @.str720, i32 0, i32 0
  %61 = call %nyx_string* @nyx_string_from_cstr(i8* %60)
  %62 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %61)
  %63 = alloca %Token
  store %Token %62, %Token* %63
  %64 = load %Token, %Token* %63
  %65 = call %nyx_string* @get_token_value(%Token %64)
  %66 = alloca %nyx_string*
  store %nyx_string* %65, %nyx_string** %66
  %67 = load { i64, i8* }*, { i64, i8* }** %53
  %68 = load %nyx_string*, %nyx_string** %66
  %69 = ptrtoint %nyx_string* %68 to i64
  call void @nyx_array_push({ i64, i8* }* %67, i64 %69)
  %70 = getelementptr [5 x i8], [5 x i8]* @.str721, i32 0, i32 0
  %71 = call %nyx_string* @nyx_string_from_cstr(i8* %70)
  %72 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %71)
  br i1 %72, label %then27, label %else28
then27:
  %73 = call %Token @advance(%SharedEnv_parse* %env.param)
  br label %merge29
else28:
  store i1 0, i1* %58
  br label %merge29
merge29:
  br label %while_cond24
while_end26:
  br label %merge23
else22:
  br label %merge23
merge23:
  %74 = getelementptr [11 x i8], [11 x i8]* @.str722, i32 0, i32 0
  %75 = call %nyx_string* @nyx_string_from_cstr(i8* %74)
  %76 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %75)
  %77 = call { i64, i8* }* @nyx_array_new_ptr()
  %78 = alloca { i64, i8* }*
  store { i64, i8* }* %77, { i64, i8* }** %78
  %79 = alloca i1
  store i1 0, i1* %79
  br label %while_cond30
while_cond30:
  %80 = load i1, i1* %79
  %81 = xor i1 %80, true
  br i1 %81, label %while_body31, label %while_end32
while_body31:
  %82 = getelementptr [12 x i8], [12 x i8]* @.str723, i32 0, i32 0
  %83 = call %nyx_string* @nyx_string_from_cstr(i8* %82)
  %84 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %83)
  br i1 %84, label %then33, label %else34
then33:
  %85 = call %Token @advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %79
  br label %merge35
else34:
  %86 = alloca i1
  store i1 0, i1* %86
  %87 = getelementptr [11 x i8], [11 x i8]* @.str724, i32 0, i32 0
  %88 = call %nyx_string* @nyx_string_from_cstr(i8* %87)
  %89 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %88)
  br i1 %89, label %then36, label %else37
then36:
  %90 = call %Token @peek(%SharedEnv_parse* %env.param)
  %91 = alloca %Token
  store %Token %90, %Token* %91
  %92 = load %Token, %Token* %91
  %93 = call %nyx_string* @get_token_value(%Token %92)
  %94 = getelementptr [5 x i8], [5 x i8]* @.str725, i32 0, i32 0
  %95 = call %nyx_string* @nyx_string_from_cstr(i8* %94)
  %96 = call i8* @nyx_string_to_cstr(%nyx_string* %93)
  %97 = call i8* @nyx_string_to_cstr(%nyx_string* %95)
  %98 = call i32 @strcmp(i8* %96, i8* %97)
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %then39, label %else40
then39:
  %100 = call %Token @advance(%SharedEnv_parse* %env.param)
  %101 = getelementptr [11 x i8], [11 x i8]* @.str726, i32 0, i32 0
  %102 = call %nyx_string* @nyx_string_from_cstr(i8* %101)
  %103 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %102)
  %104 = alloca %Token
  store %Token %103, %Token* %104
  %105 = load %Token, %Token* %104
  %106 = call %nyx_string* @get_token_value(%Token %105)
  %107 = alloca %nyx_string*
  store %nyx_string* %106, %nyx_string** %107
  %108 = call { i64, i8* }* @nyx_array_new_ptr()
  %109 = alloca { i64, i8* }*
  store { i64, i8* }* %108, { i64, i8* }** %109
  %110 = getelementptr [5 x i8], [5 x i8]* @.str727, i32 0, i32 0
  %111 = call %nyx_string* @nyx_string_from_cstr(i8* %110)
  %112 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %111)
  br i1 %112, label %then42, label %else43
then42:
  %113 = call %Token @advance(%SharedEnv_parse* %env.param)
  %114 = alloca i1
  store i1 0, i1* %114
  br label %while_cond45
while_cond45:
  %115 = load i1, i1* %114
  %116 = xor i1 %115, true
  br i1 %116, label %while_body46, label %while_end47
while_body46:
  %117 = getelementptr [8 x i8], [8 x i8]* @.str728, i32 0, i32 0
  %118 = call %nyx_string* @nyx_string_from_cstr(i8* %117)
  %119 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %118)
  br i1 %119, label %then48, label %else49
then48:
  %120 = call %Token @advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %114
  br label %merge50
else49:
  %121 = getelementptr [11 x i8], [11 x i8]* @.str729, i32 0, i32 0
  %122 = call %nyx_string* @nyx_string_from_cstr(i8* %121)
  %123 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %122)
  br i1 %123, label %then51, label %else52
then51:
  %124 = call %Token @advance(%SharedEnv_parse* %env.param)
  %125 = alloca %Token
  store %Token %124, %Token* %125
  %126 = load { i64, i8* }*, { i64, i8* }** %109
  %127 = load %Token, %Token* %125
  %128 = call %nyx_string* @get_token_value(%Token %127)
  %129 = ptrtoint %nyx_string* %128 to i64
  call void @nyx_array_push({ i64, i8* }* %126, i64 %129)
  br label %merge53
else52:
  %130 = getelementptr [9 x i8], [9 x i8]* @.str730, i32 0, i32 0
  %131 = call %nyx_string* @nyx_string_from_cstr(i8* %130)
  %132 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %131)
  br i1 %132, label %then54, label %else55
then54:
  %133 = call %Token @advance(%SharedEnv_parse* %env.param)
  %134 = alloca %Token
  store %Token %133, %Token* %134
  %135 = load { i64, i8* }*, { i64, i8* }** %109
  %136 = load %Token, %Token* %134
  %137 = call %nyx_string* @get_token_value(%Token %136)
  %138 = ptrtoint %nyx_string* %137 to i64
  call void @nyx_array_push({ i64, i8* }* %135, i64 %138)
  br label %merge56
else55:
  %139 = call %Token @advance(%SharedEnv_parse* %env.param)
  br label %merge56
merge56:
  br label %merge53
merge53:
  %140 = getelementptr [6 x i8], [6 x i8]* @.str731, i32 0, i32 0
  %141 = call %nyx_string* @nyx_string_from_cstr(i8* %140)
  %142 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %141)
  br i1 %142, label %then57, label %else58
then57:
  %143 = call %Token @advance(%SharedEnv_parse* %env.param)
  br label %merge59
else58:
  br label %merge59
merge59:
  br label %merge50
merge50:
  br label %while_cond45
while_end47:
  br label %merge44
else43:
  br label %merge44
merge44:
  %144 = load { i64, i8* }*, { i64, i8* }** %78
  %145 = call { i64, i8* }* @nyx_array_new_ptr()
  %146 = getelementptr [15 x i8], [15 x i8]* @.str732, i32 0, i32 0
  %147 = call %nyx_string* @nyx_string_from_cstr(i8* %146)
  %148 = ptrtoint %nyx_string* %147 to i64
  call void @nyx_array_push({ i64, i8* }* %145, i64 %148)
  %149 = load %nyx_string*, %nyx_string** %107
  %150 = ptrtoint %nyx_string* %149 to i64
  call void @nyx_array_push({ i64, i8* }* %145, i64 %150)
  %151 = load { i64, i8* }*, { i64, i8* }** %109
  %152 = bitcast { i64, i8* }* %151 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %145, i8* %152)
  %153 = ptrtoint { i64, i8* }* %145 to i64
  call void @nyx_array_push({ i64, i8* }* %144, i64 %153)
  store i1 1, i1* %86
  br label %merge41
else40:
  br label %merge41
merge41:
  br label %merge38
else37:
  br label %merge38
merge38:
  %154 = load i1, i1* %86
  %155 = xor i1 %154, true
  br i1 %155, label %then60, label %else61
then60:
  %156 = getelementptr [3 x i8], [3 x i8]* @.str733, i32 0, i32 0
  %157 = call %nyx_string* @nyx_string_from_cstr(i8* %156)
  %158 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %157)
  %159 = getelementptr [11 x i8], [11 x i8]* @.str734, i32 0, i32 0
  %160 = call %nyx_string* @nyx_string_from_cstr(i8* %159)
  %161 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %160)
  %162 = alloca %Token
  store %Token %161, %Token* %162
  %163 = load %Token, %Token* %162
  %164 = call %nyx_string* @get_token_value(%Token %163)
  %165 = alloca %nyx_string*
  store %nyx_string* %164, %nyx_string** %165
  %166 = getelementptr [5 x i8], [5 x i8]* @.str735, i32 0, i32 0
  %167 = call %nyx_string* @nyx_string_from_cstr(i8* %166)
  %168 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %167)
  br i1 %168, label %then63, label %else64
then63:
  %169 = call %Token @advance(%SharedEnv_parse* %env.param)
  %170 = alloca i1
  store i1 0, i1* %170
  br label %while_cond66
while_cond66:
  %171 = load i1, i1* %170
  %172 = xor i1 %171, true
  br i1 %172, label %while_body67, label %while_end68
while_body67:
  %173 = getelementptr [8 x i8], [8 x i8]* @.str736, i32 0, i32 0
  %174 = call %nyx_string* @nyx_string_from_cstr(i8* %173)
  %175 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %174)
  br i1 %175, label %then69, label %else70
then69:
  %176 = call %Token @advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %170
  br label %merge71
else70:
  %177 = call %Token @advance(%SharedEnv_parse* %env.param)
  br label %merge71
merge71:
  br label %while_cond66
while_end68:
  br label %merge65
else64:
  br label %merge65
merge65:
  %178 = getelementptr [11 x i8], [11 x i8]* @.str737, i32 0, i32 0
  %179 = call %nyx_string* @nyx_string_from_cstr(i8* %178)
  %180 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %179)
  %181 = call { i64, i8* }* @nyx_array_new_ptr()
  %182 = alloca { i64, i8* }*
  store { i64, i8* }* %181, { i64, i8* }** %182
  %183 = alloca i1
  store i1 0, i1* %183
  br label %while_cond72
while_cond72:
  %184 = load i1, i1* %183
  %185 = xor i1 %184, true
  br i1 %185, label %while_body73, label %while_end74
while_body73:
  %186 = getelementptr [12 x i8], [12 x i8]* @.str738, i32 0, i32 0
  %187 = call %nyx_string* @nyx_string_from_cstr(i8* %186)
  %188 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %187)
  br i1 %188, label %then75, label %else76
then75:
  %189 = call %Token @advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %183
  br label %merge77
else76:
  %190 = load { i64, i8* }*, { i64, i8* }** %182
  %191 = call i64 @nyx_array_length({ i64, i8* }* %190)
  %192 = icmp sgt i64 %191, 0
  br i1 %192, label %then78, label %else79
then78:
  %193 = getelementptr [6 x i8], [6 x i8]* @.str739, i32 0, i32 0
  %194 = call %nyx_string* @nyx_string_from_cstr(i8* %193)
  %195 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %194)
  br label %merge80
else79:
  br label %merge80
merge80:
  %196 = getelementptr [11 x i8], [11 x i8]* @.str740, i32 0, i32 0
  %197 = call %nyx_string* @nyx_string_from_cstr(i8* %196)
  %198 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %197)
  %199 = alloca %Token
  store %Token %198, %Token* %199
  %200 = load %Token, %Token* %199
  %201 = call %nyx_string* @get_token_value(%Token %200)
  %202 = alloca %nyx_string*
  store %nyx_string* %201, %nyx_string** %202
  %203 = getelementptr [1 x i8], [1 x i8]* @.str741, i32 0, i32 0
  %204 = call %nyx_string* @nyx_string_from_cstr(i8* %203)
  %205 = alloca %nyx_string*
  store %nyx_string* %204, %nyx_string** %205
  %206 = getelementptr [6 x i8], [6 x i8]* @.str742, i32 0, i32 0
  %207 = call %nyx_string* @nyx_string_from_cstr(i8* %206)
  %208 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %207)
  br i1 %208, label %then81, label %else82
then81:
  %209 = call %Token @advance(%SharedEnv_parse* %env.param)
  %210 = call %nyx_string* @parse_type_annotation(%SharedEnv_parse* %env.param)
  store %nyx_string* %210, %nyx_string** %205
  br label %merge83
else82:
  br label %merge83
merge83:
  %211 = load { i64, i8* }*, { i64, i8* }** %182
  %212 = call { i64, i8* }* @nyx_array_new_ptr()
  %213 = load %nyx_string*, %nyx_string** %202
  %214 = ptrtoint %nyx_string* %213 to i64
  call void @nyx_array_push({ i64, i8* }* %212, i64 %214)
  %215 = load %nyx_string*, %nyx_string** %205
  %216 = ptrtoint %nyx_string* %215 to i64
  call void @nyx_array_push({ i64, i8* }* %212, i64 %216)
  %217 = ptrtoint { i64, i8* }* %212 to i64
  call void @nyx_array_push({ i64, i8* }* %211, i64 %217)
  br label %merge77
merge77:
  br label %while_cond72
while_end74:
  %218 = getelementptr [1 x i8], [1 x i8]* @.str743, i32 0, i32 0
  %219 = call %nyx_string* @nyx_string_from_cstr(i8* %218)
  %220 = alloca %nyx_string*
  store %nyx_string* %219, %nyx_string** %220
  %221 = getelementptr [6 x i8], [6 x i8]* @.str744, i32 0, i32 0
  %222 = call %nyx_string* @nyx_string_from_cstr(i8* %221)
  %223 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %222)
  br i1 %223, label %then84, label %else85
then84:
  %224 = call %Token @advance(%SharedEnv_parse* %env.param)
  %225 = call %nyx_string* @parse_type_annotation(%SharedEnv_parse* %env.param)
  store %nyx_string* %225, %nyx_string** %220
  br label %merge86
else85:
  br label %merge86
merge86:
  %226 = getelementptr [11 x i8], [11 x i8]* @.str745, i32 0, i32 0
  %227 = call %nyx_string* @nyx_string_from_cstr(i8* %226)
  %228 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %227)
  br i1 %228, label %then87, label %else88
then87:
  %229 = call { i64, i8* }* @parse_block(%SharedEnv_parse* %env.param)
  %230 = alloca { i64, i8* }*
  store { i64, i8* }* %229, { i64, i8* }** %230
  %231 = load { i64, i8* }*, { i64, i8* }** %78
  %232 = call { i64, i8* }* @nyx_array_new_ptr()
  %233 = load %nyx_string*, %nyx_string** %165
  %234 = ptrtoint %nyx_string* %233 to i64
  call void @nyx_array_push({ i64, i8* }* %232, i64 %234)
  %235 = load { i64, i8* }*, { i64, i8* }** %182
  %236 = bitcast { i64, i8* }* %235 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %232, i8* %236)
  %237 = load %nyx_string*, %nyx_string** %220
  %238 = ptrtoint %nyx_string* %237 to i64
  call void @nyx_array_push({ i64, i8* }* %232, i64 %238)
  %239 = load { i64, i8* }*, { i64, i8* }** %230
  %240 = bitcast { i64, i8* }* %239 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %232, i8* %240)
  %241 = ptrtoint { i64, i8* }* %232 to i64
  call void @nyx_array_push({ i64, i8* }* %231, i64 %241)
  br label %merge89
else88:
  %242 = load { i64, i8* }*, { i64, i8* }** %78
  %243 = call { i64, i8* }* @nyx_array_new_ptr()
  %244 = load %nyx_string*, %nyx_string** %165
  %245 = ptrtoint %nyx_string* %244 to i64
  call void @nyx_array_push({ i64, i8* }* %243, i64 %245)
  %246 = load { i64, i8* }*, { i64, i8* }** %182
  %247 = bitcast { i64, i8* }* %246 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %243, i8* %247)
  %248 = load %nyx_string*, %nyx_string** %220
  %249 = ptrtoint %nyx_string* %248 to i64
  call void @nyx_array_push({ i64, i8* }* %243, i64 %249)
  %250 = ptrtoint { i64, i8* }* %243 to i64
  call void @nyx_array_push({ i64, i8* }* %242, i64 %250)
  br label %merge89
merge89:
  br label %merge62
else61:
  br label %merge62
merge62:
  br label %merge35
merge35:
  br label %while_cond30
while_end32:
  %251 = getelementptr [10 x i8], [10 x i8]* @.str746, i32 0, i32 0
  %252 = call %nyx_string* @nyx_string_from_cstr(i8* %251)
  %253 = call { i64, i8* }* @nyx_array_new_ptr()
  %254 = load %nyx_string*, %nyx_string** %23
  %255 = ptrtoint %nyx_string* %254 to i64
  call void @nyx_array_push({ i64, i8* }* %253, i64 %255)
  %256 = load { i64, i8* }*, { i64, i8* }** %53
  %257 = bitcast { i64, i8* }* %256 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %253, i8* %257)
  %258 = load { i64, i8* }*, { i64, i8* }** %78
  %259 = bitcast { i64, i8* }* %258 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %253, i8* %259)
  %260 = call { i64, i8* }* @make_astnode(%nyx_string* %252, { i64, i8* }* %253)
  ret { i64, i8* }* %260
}

define internal { i64, i8* }* @parse_impl(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = getelementptr [5 x i8], [5 x i8]* @.str747, i32 0, i32 0
  %15 = call %nyx_string* @nyx_string_from_cstr(i8* %14)
  %16 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %15)
  %17 = getelementptr [5 x i8], [5 x i8]* @.str748, i32 0, i32 0
  %18 = call %nyx_string* @nyx_string_from_cstr(i8* %17)
  %19 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %18)
  br i1 %19, label %then0, label %else1
then0:
  %20 = call %Token @advance(%SharedEnv_parse* %env.param)
  %21 = alloca i1
  store i1 0, i1* %21
  br label %while_cond3
while_cond3:
  %22 = load i1, i1* %21
  %23 = xor i1 %22, true
  br i1 %23, label %while_body4, label %while_end5
while_body4:
  %24 = getelementptr [8 x i8], [8 x i8]* @.str749, i32 0, i32 0
  %25 = call %nyx_string* @nyx_string_from_cstr(i8* %24)
  %26 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %25)
  br i1 %26, label %then6, label %else7
then6:
  %27 = call %Token @advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %21
  br label %merge8
else7:
  %28 = call %Token @advance(%SharedEnv_parse* %env.param)
  br label %merge8
merge8:
  br label %while_cond3
while_end5:
  br label %merge2
else1:
  br label %merge2
merge2:
  %29 = getelementptr [11 x i8], [11 x i8]* @.str750, i32 0, i32 0
  %30 = call %nyx_string* @nyx_string_from_cstr(i8* %29)
  %31 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %30)
  %32 = alloca %Token
  store %Token %31, %Token* %32
  %33 = load %Token, %Token* %32
  %34 = call %nyx_string* @get_token_value(%Token %33)
  %35 = alloca %nyx_string*
  store %nyx_string* %34, %nyx_string** %35
  %36 = getelementptr [4 x i8], [4 x i8]* @.str751, i32 0, i32 0
  %37 = call %nyx_string* @nyx_string_from_cstr(i8* %36)
  %38 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %37)
  br i1 %38, label %then9, label %else10
then9:
  %39 = call %Token @advance(%SharedEnv_parse* %env.param)
  %40 = getelementptr [11 x i8], [11 x i8]* @.str752, i32 0, i32 0
  %41 = call %nyx_string* @nyx_string_from_cstr(i8* %40)
  %42 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %41)
  %43 = alloca %Token
  store %Token %42, %Token* %43
  %44 = load %Token, %Token* %43
  %45 = call %nyx_string* @get_token_value(%Token %44)
  %46 = alloca %nyx_string*
  store %nyx_string* %45, %nyx_string** %46
  %47 = getelementptr [11 x i8], [11 x i8]* @.str753, i32 0, i32 0
  %48 = call %nyx_string* @nyx_string_from_cstr(i8* %47)
  %49 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %48)
  %50 = call { i64, i8* }* @nyx_array_new_ptr()
  %51 = alloca { i64, i8* }*
  store { i64, i8* }* %50, { i64, i8* }** %51
  %52 = call { i64, i8* }* @nyx_array_new_ptr()
  %53 = alloca { i64, i8* }*
  store { i64, i8* }* %52, { i64, i8* }** %53
  %54 = alloca i1
  store i1 0, i1* %54
  br label %while_cond12
while_cond12:
  %55 = load i1, i1* %54
  %56 = xor i1 %55, true
  br i1 %56, label %while_body13, label %while_end14
while_body13:
  %57 = getelementptr [12 x i8], [12 x i8]* @.str754, i32 0, i32 0
  %58 = call %nyx_string* @nyx_string_from_cstr(i8* %57)
  %59 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %58)
  br i1 %59, label %then15, label %else16
then15:
  %60 = call %Token @advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %54
  br label %merge17
else16:
  %61 = alloca i1
  store i1 0, i1* %61
  %62 = getelementptr [11 x i8], [11 x i8]* @.str755, i32 0, i32 0
  %63 = call %nyx_string* @nyx_string_from_cstr(i8* %62)
  %64 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %63)
  br i1 %64, label %then18, label %else19
then18:
  %65 = call %Token @peek(%SharedEnv_parse* %env.param)
  %66 = alloca %Token
  store %Token %65, %Token* %66
  %67 = load %Token, %Token* %66
  %68 = call %nyx_string* @get_token_value(%Token %67)
  %69 = getelementptr [5 x i8], [5 x i8]* @.str756, i32 0, i32 0
  %70 = call %nyx_string* @nyx_string_from_cstr(i8* %69)
  %71 = call i8* @nyx_string_to_cstr(%nyx_string* %68)
  %72 = call i8* @nyx_string_to_cstr(%nyx_string* %70)
  %73 = call i32 @strcmp(i8* %71, i8* %72)
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %then21, label %else22
then21:
  %75 = call %Token @advance(%SharedEnv_parse* %env.param)
  %76 = getelementptr [11 x i8], [11 x i8]* @.str757, i32 0, i32 0
  %77 = call %nyx_string* @nyx_string_from_cstr(i8* %76)
  %78 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %77)
  %79 = alloca %Token
  store %Token %78, %Token* %79
  %80 = load %Token, %Token* %79
  %81 = call %nyx_string* @get_token_value(%Token %80)
  %82 = alloca %nyx_string*
  store %nyx_string* %81, %nyx_string** %82
  %83 = getelementptr [5 x i8], [5 x i8]* @.str758, i32 0, i32 0
  %84 = call %nyx_string* @nyx_string_from_cstr(i8* %83)
  %85 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %84)
  br i1 %85, label %then24, label %else25
then24:
  %86 = call %Token @advance(%SharedEnv_parse* %env.param)
  %87 = alloca i1
  store i1 0, i1* %87
  br label %while_cond27
while_cond27:
  %88 = load i1, i1* %87
  %89 = xor i1 %88, true
  br i1 %89, label %while_body28, label %while_end29
while_body28:
  %90 = getelementptr [8 x i8], [8 x i8]* @.str759, i32 0, i32 0
  %91 = call %nyx_string* @nyx_string_from_cstr(i8* %90)
  %92 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %91)
  br i1 %92, label %then30, label %else31
then30:
  %93 = call %Token @advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %87
  br label %merge32
else31:
  %94 = call %Token @advance(%SharedEnv_parse* %env.param)
  br label %merge32
merge32:
  br label %while_cond27
while_end29:
  br label %merge26
else25:
  br label %merge26
merge26:
  %95 = getelementptr [7 x i8], [7 x i8]* @.str760, i32 0, i32 0
  %96 = call %nyx_string* @nyx_string_from_cstr(i8* %95)
  %97 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %96)
  %98 = call %nyx_string* @parse_type_annotation(%SharedEnv_parse* %env.param)
  %99 = alloca %nyx_string*
  store %nyx_string* %98, %nyx_string** %99
  %100 = load { i64, i8* }*, { i64, i8* }** %53
  %101 = call { i64, i8* }* @nyx_array_new_ptr()
  %102 = load %nyx_string*, %nyx_string** %82
  %103 = ptrtoint %nyx_string* %102 to i64
  call void @nyx_array_push({ i64, i8* }* %101, i64 %103)
  %104 = load %nyx_string*, %nyx_string** %99
  %105 = ptrtoint %nyx_string* %104 to i64
  call void @nyx_array_push({ i64, i8* }* %101, i64 %105)
  %106 = ptrtoint { i64, i8* }* %101 to i64
  call void @nyx_array_push({ i64, i8* }* %100, i64 %106)
  store i1 1, i1* %61
  br label %merge23
else22:
  br label %merge23
merge23:
  br label %merge20
else19:
  br label %merge20
merge20:
  %107 = load i1, i1* %61
  %108 = xor i1 %107, true
  br i1 %108, label %then33, label %else34
then33:
  %109 = call { i64, i8* }* @parse_function(%SharedEnv_parse* %env.param)
  %110 = alloca { i64, i8* }*
  store { i64, i8* }* %109, { i64, i8* }** %110
  %111 = load { i64, i8* }*, { i64, i8* }** %51
  %112 = load { i64, i8* }*, { i64, i8* }** %110
  %113 = ptrtoint { i64, i8* }* %112 to i64
  call void @nyx_array_push({ i64, i8* }* %111, i64 %113)
  br label %merge35
else34:
  br label %merge35
merge35:
  br label %merge17
merge17:
  br label %while_cond12
while_end14:
  %114 = getelementptr [11 x i8], [11 x i8]* @.str761, i32 0, i32 0
  %115 = call %nyx_string* @nyx_string_from_cstr(i8* %114)
  %116 = call { i64, i8* }* @nyx_array_new_ptr()
  %117 = load %nyx_string*, %nyx_string** %35
  %118 = ptrtoint %nyx_string* %117 to i64
  call void @nyx_array_push({ i64, i8* }* %116, i64 %118)
  %119 = load %nyx_string*, %nyx_string** %46
  %120 = ptrtoint %nyx_string* %119 to i64
  call void @nyx_array_push({ i64, i8* }* %116, i64 %120)
  %121 = load { i64, i8* }*, { i64, i8* }** %51
  %122 = bitcast { i64, i8* }* %121 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %116, i8* %122)
  %123 = load { i64, i8* }*, { i64, i8* }** %53
  %124 = bitcast { i64, i8* }* %123 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %116, i8* %124)
  %125 = call { i64, i8* }* @make_astnode(%nyx_string* %115, { i64, i8* }* %116)
  ret { i64, i8* }* %125
else10:
  br label %merge11
merge11:
  %126 = getelementptr [11 x i8], [11 x i8]* @.str762, i32 0, i32 0
  %127 = call %nyx_string* @nyx_string_from_cstr(i8* %126)
  %128 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %127)
  %129 = call { i64, i8* }* @nyx_array_new_ptr()
  %130 = alloca { i64, i8* }*
  store { i64, i8* }* %129, { i64, i8* }** %130
  %131 = alloca i1
  store i1 0, i1* %131
  br label %while_cond36
while_cond36:
  %132 = load i1, i1* %131
  %133 = xor i1 %132, true
  br i1 %133, label %while_body37, label %while_end38
while_body37:
  %134 = getelementptr [12 x i8], [12 x i8]* @.str763, i32 0, i32 0
  %135 = call %nyx_string* @nyx_string_from_cstr(i8* %134)
  %136 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %135)
  br i1 %136, label %then39, label %else40
then39:
  %137 = call %Token @advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %131
  br label %merge41
else40:
  %138 = call { i64, i8* }* @parse_function(%SharedEnv_parse* %env.param)
  %139 = alloca { i64, i8* }*
  store { i64, i8* }* %138, { i64, i8* }** %139
  %140 = load { i64, i8* }*, { i64, i8* }** %130
  %141 = load { i64, i8* }*, { i64, i8* }** %139
  %142 = ptrtoint { i64, i8* }* %141 to i64
  call void @nyx_array_push({ i64, i8* }* %140, i64 %142)
  br label %merge41
merge41:
  br label %while_cond36
while_end38:
  %143 = getelementptr [5 x i8], [5 x i8]* @.str764, i32 0, i32 0
  %144 = call %nyx_string* @nyx_string_from_cstr(i8* %143)
  %145 = call { i64, i8* }* @nyx_array_new_ptr()
  %146 = load %nyx_string*, %nyx_string** %35
  %147 = ptrtoint %nyx_string* %146 to i64
  call void @nyx_array_push({ i64, i8* }* %145, i64 %147)
  %148 = load { i64, i8* }*, { i64, i8* }** %130
  %149 = bitcast { i64, i8* }* %148 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %145, i8* %149)
  %150 = call { i64, i8* }* @make_astnode(%nyx_string* %144, { i64, i8* }* %145)
  ret { i64, i8* }* %150
}

define internal { i64, i8* }* @parse_try_catch(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = call %Token @advance(%SharedEnv_parse* %env.param)
  %15 = call { i64, i8* }* @parse_block(%SharedEnv_parse* %env.param)
  %16 = alloca { i64, i8* }*
  store { i64, i8* }* %15, { i64, i8* }** %16
  %17 = getelementptr [6 x i8], [6 x i8]* @.str765, i32 0, i32 0
  %18 = call %nyx_string* @nyx_string_from_cstr(i8* %17)
  %19 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %18)
  %20 = getelementptr [11 x i8], [11 x i8]* @.str766, i32 0, i32 0
  %21 = call %nyx_string* @nyx_string_from_cstr(i8* %20)
  %22 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %21)
  %23 = getelementptr [11 x i8], [11 x i8]* @.str767, i32 0, i32 0
  %24 = call %nyx_string* @nyx_string_from_cstr(i8* %23)
  %25 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %24)
  %26 = alloca %Token
  store %Token %25, %Token* %26
  %27 = load %Token, %Token* %26
  %28 = call %nyx_string* @get_token_value(%Token %27)
  %29 = alloca %nyx_string*
  store %nyx_string* %28, %nyx_string** %29
  %30 = getelementptr [6 x i8], [6 x i8]* @.str768, i32 0, i32 0
  %31 = call %nyx_string* @nyx_string_from_cstr(i8* %30)
  %32 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %31)
  br i1 %32, label %then0, label %else1
then0:
  %33 = call %Token @advance(%SharedEnv_parse* %env.param)
  %34 = getelementptr [11 x i8], [11 x i8]* @.str769, i32 0, i32 0
  %35 = call %nyx_string* @nyx_string_from_cstr(i8* %34)
  %36 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %35)
  br i1 %36, label %then3, label %else4
then3:
  %37 = call %Token @advance(%SharedEnv_parse* %env.param)
  br label %merge5
else4:
  br label %merge5
merge5:
  br label %merge2
else1:
  br label %merge2
merge2:
  %38 = getelementptr [12 x i8], [12 x i8]* @.str770, i32 0, i32 0
  %39 = call %nyx_string* @nyx_string_from_cstr(i8* %38)
  %40 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %39)
  %41 = call { i64, i8* }* @parse_block(%SharedEnv_parse* %env.param)
  %42 = alloca { i64, i8* }*
  store { i64, i8* }* %41, { i64, i8* }** %42
  %43 = getelementptr [10 x i8], [10 x i8]* @.str771, i32 0, i32 0
  %44 = call %nyx_string* @nyx_string_from_cstr(i8* %43)
  %45 = call { i64, i8* }* @nyx_array_new_ptr()
  %46 = load { i64, i8* }*, { i64, i8* }** %16
  %47 = bitcast { i64, i8* }* %46 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %45, i8* %47)
  %48 = load %nyx_string*, %nyx_string** %29
  %49 = ptrtoint %nyx_string* %48 to i64
  call void @nyx_array_push({ i64, i8* }* %45, i64 %49)
  %50 = load { i64, i8* }*, { i64, i8* }** %42
  %51 = bitcast { i64, i8* }* %50 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %45, i8* %51)
  %52 = call { i64, i8* }* @make_astnode(%nyx_string* %44, { i64, i8* }* %45)
  ret { i64, i8* }* %52
}

define internal { i64, i8* }* @parse_throw(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = call %Token @advance(%SharedEnv_parse* %env.param)
  %15 = getelementptr [11 x i8], [11 x i8]* @.str772, i32 0, i32 0
  %16 = call %nyx_string* @nyx_string_from_cstr(i8* %15)
  %17 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %16)
  %18 = call { i64, i8* }* @parse_expression(%SharedEnv_parse* %env.param)
  %19 = alloca { i64, i8* }*
  store { i64, i8* }* %18, { i64, i8* }** %19
  %20 = getelementptr [12 x i8], [12 x i8]* @.str773, i32 0, i32 0
  %21 = call %nyx_string* @nyx_string_from_cstr(i8* %20)
  %22 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %21)
  %23 = getelementptr [6 x i8], [6 x i8]* @.str774, i32 0, i32 0
  %24 = call %nyx_string* @nyx_string_from_cstr(i8* %23)
  %25 = call { i64, i8* }* @nyx_array_new_ptr()
  %26 = load { i64, i8* }*, { i64, i8* }** %19
  %27 = bitcast { i64, i8* }* %26 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %25, i8* %27)
  %28 = call { i64, i8* }* @make_astnode(%nyx_string* %24, { i64, i8* }* %25)
  ret { i64, i8* }* %28
}

define internal { i64, i8* }* @parse_block(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = getelementptr [11 x i8], [11 x i8]* @.str775, i32 0, i32 0
  %15 = call %nyx_string* @nyx_string_from_cstr(i8* %14)
  %16 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %15)
  %17 = call { i64, i8* }* @nyx_array_new_ptr()
  %18 = alloca { i64, i8* }*
  store { i64, i8* }* %17, { i64, i8* }** %18
  %19 = alloca i1
  store i1 0, i1* %19
  br label %while_cond0
while_cond0:
  %20 = load i1, i1* %19
  %21 = xor i1 %20, true
  br i1 %21, label %while_body1, label %while_end2
while_body1:
  %22 = getelementptr [12 x i8], [12 x i8]* @.str776, i32 0, i32 0
  %23 = call %nyx_string* @nyx_string_from_cstr(i8* %22)
  %24 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %23)
  br i1 %24, label %then3, label %else4
then3:
  %25 = call %Token @advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %19
  br label %merge5
else4:
  %26 = load { i64, i8* }*, { i64, i8* }** %18
  %27 = call { i64, i8* }* @parse_statement(%SharedEnv_parse* %env.param)
  %28 = ptrtoint { i64, i8* }* %27 to i64
  call void @nyx_array_push({ i64, i8* }* %26, i64 %28)
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %29 = getelementptr [6 x i8], [6 x i8]* @.str777, i32 0, i32 0
  %30 = call %nyx_string* @nyx_string_from_cstr(i8* %29)
  %31 = call { i64, i8* }* @nyx_array_new_ptr()
  %32 = load { i64, i8* }*, { i64, i8* }** %18
  %33 = bitcast { i64, i8* }* %32 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %31, i8* %33)
  %34 = call { i64, i8* }* @make_astnode(%nyx_string* %30, { i64, i8* }* %31)
  ret { i64, i8* }* %34
}

define internal { i64, i8* }* @parse_assignment_or_expr(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = call { i64, i8* }* @parse_expression(%SharedEnv_parse* %env.param)
  %15 = alloca { i64, i8* }*
  store { i64, i8* }* %14, { i64, i8* }** %15
  %16 = load { i64, i8* }*, { i64, i8* }** %15
  %17 = call %nyx_string* @astnode_get_type({ i64, i8* }* %16)
  %18 = alloca %nyx_string*
  store %nyx_string* %17, %nyx_string** %18
  %19 = load { i64, i8* }*, { i64, i8* }** %15
  %20 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %19)
  %21 = alloca { i64, i8* }*
  store { i64, i8* }* %20, { i64, i8* }** %21
  %22 = load %nyx_string*, %nyx_string** %18
  %23 = getelementptr [11 x i8], [11 x i8]* @.str778, i32 0, i32 0
  %24 = call %nyx_string* @nyx_string_from_cstr(i8* %23)
  %25 = call i8* @nyx_string_to_cstr(%nyx_string* %22)
  %26 = call i8* @nyx_string_to_cstr(%nyx_string* %24)
  %27 = call i32 @strcmp(i8* %25, i8* %26)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %then0, label %else1
then0:
  %29 = getelementptr [7 x i8], [7 x i8]* @.str779, i32 0, i32 0
  %30 = call %nyx_string* @nyx_string_from_cstr(i8* %29)
  %31 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %30)
  br i1 %31, label %then3, label %else4
then3:
  %32 = call %Token @advance(%SharedEnv_parse* %env.param)
  %33 = call { i64, i8* }* @parse_expression(%SharedEnv_parse* %env.param)
  %34 = alloca { i64, i8* }*
  store { i64, i8* }* %33, { i64, i8* }** %34
  %35 = load { i64, i8* }*, { i64, i8* }** %21
  %36 = call i64 @nyx_array_get({ i64, i8* }* %35, i64 0)
  %37 = inttoptr i64 %36 to %nyx_string*
  %38 = alloca %nyx_string*
  store %nyx_string* %37, %nyx_string** %38
  %39 = load %nyx_string*, %nyx_string** %38
  %40 = call { i64, i8* }* @nyx_array_new_ptr()
  %41 = call { i64, i8* }* @make_astnode(%nyx_string* %39, { i64, i8* }* %40)
  %42 = alloca { i64, i8* }*
  store { i64, i8* }* %41, { i64, i8* }** %42
  %43 = getelementptr [7 x i8], [7 x i8]* @.str780, i32 0, i32 0
  %44 = call %nyx_string* @nyx_string_from_cstr(i8* %43)
  %45 = call { i64, i8* }* @nyx_array_new_ptr()
  %46 = load { i64, i8* }*, { i64, i8* }** %42
  %47 = bitcast { i64, i8* }* %46 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %45, i8* %47)
  %48 = load { i64, i8* }*, { i64, i8* }** %34
  %49 = bitcast { i64, i8* }* %48 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %45, i8* %49)
  %50 = call { i64, i8* }* @make_astnode(%nyx_string* %44, { i64, i8* }* %45)
  ret { i64, i8* }* %50
else4:
  br label %merge5
merge5:
  %51 = getelementptr [1 x i8], [1 x i8]* @.str781, i32 0, i32 0
  %52 = call %nyx_string* @nyx_string_from_cstr(i8* %51)
  %53 = alloca %nyx_string*
  store %nyx_string* %52, %nyx_string** %53
  %54 = getelementptr [12 x i8], [12 x i8]* @.str782, i32 0, i32 0
  %55 = call %nyx_string* @nyx_string_from_cstr(i8* %54)
  %56 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %55)
  br i1 %56, label %then6, label %else7
then6:
  %57 = getelementptr [5 x i8], [5 x i8]* @.str783, i32 0, i32 0
  %58 = call %nyx_string* @nyx_string_from_cstr(i8* %57)
  store %nyx_string* %58, %nyx_string** %53
  br label %merge8
else7:
  br label %merge8
merge8:
  %59 = getelementptr [13 x i8], [13 x i8]* @.str784, i32 0, i32 0
  %60 = call %nyx_string* @nyx_string_from_cstr(i8* %59)
  %61 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %60)
  br i1 %61, label %then9, label %else10
then9:
  %62 = getelementptr [6 x i8], [6 x i8]* @.str785, i32 0, i32 0
  %63 = call %nyx_string* @nyx_string_from_cstr(i8* %62)
  store %nyx_string* %63, %nyx_string** %53
  br label %merge11
else10:
  br label %merge11
merge11:
  %64 = getelementptr [12 x i8], [12 x i8]* @.str786, i32 0, i32 0
  %65 = call %nyx_string* @nyx_string_from_cstr(i8* %64)
  %66 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %65)
  br i1 %66, label %then12, label %else13
then12:
  %67 = getelementptr [5 x i8], [5 x i8]* @.str787, i32 0, i32 0
  %68 = call %nyx_string* @nyx_string_from_cstr(i8* %67)
  store %nyx_string* %68, %nyx_string** %53
  br label %merge14
else13:
  br label %merge14
merge14:
  %69 = getelementptr [13 x i8], [13 x i8]* @.str788, i32 0, i32 0
  %70 = call %nyx_string* @nyx_string_from_cstr(i8* %69)
  %71 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %70)
  br i1 %71, label %then15, label %else16
then15:
  %72 = getelementptr [6 x i8], [6 x i8]* @.str789, i32 0, i32 0
  %73 = call %nyx_string* @nyx_string_from_cstr(i8* %72)
  store %nyx_string* %73, %nyx_string** %53
  br label %merge17
else16:
  br label %merge17
merge17:
  %74 = getelementptr [15 x i8], [15 x i8]* @.str790, i32 0, i32 0
  %75 = call %nyx_string* @nyx_string_from_cstr(i8* %74)
  %76 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %75)
  br i1 %76, label %then18, label %else19
then18:
  %77 = getelementptr [8 x i8], [8 x i8]* @.str791, i32 0, i32 0
  %78 = call %nyx_string* @nyx_string_from_cstr(i8* %77)
  store %nyx_string* %78, %nyx_string** %53
  br label %merge20
else19:
  br label %merge20
merge20:
  %79 = getelementptr [11 x i8], [11 x i8]* @.str792, i32 0, i32 0
  %80 = call %nyx_string* @nyx_string_from_cstr(i8* %79)
  %81 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %80)
  br i1 %81, label %then21, label %else22
then21:
  %82 = getelementptr [4 x i8], [4 x i8]* @.str793, i32 0, i32 0
  %83 = call %nyx_string* @nyx_string_from_cstr(i8* %82)
  store %nyx_string* %83, %nyx_string** %53
  br label %merge23
else22:
  br label %merge23
merge23:
  %84 = getelementptr [12 x i8], [12 x i8]* @.str794, i32 0, i32 0
  %85 = call %nyx_string* @nyx_string_from_cstr(i8* %84)
  %86 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %85)
  br i1 %86, label %then24, label %else25
then24:
  %87 = getelementptr [5 x i8], [5 x i8]* @.str795, i32 0, i32 0
  %88 = call %nyx_string* @nyx_string_from_cstr(i8* %87)
  store %nyx_string* %88, %nyx_string** %53
  br label %merge26
else25:
  br label %merge26
merge26:
  %89 = getelementptr [13 x i8], [13 x i8]* @.str796, i32 0, i32 0
  %90 = call %nyx_string* @nyx_string_from_cstr(i8* %89)
  %91 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %90)
  br i1 %91, label %then27, label %else28
then27:
  %92 = getelementptr [6 x i8], [6 x i8]* @.str797, i32 0, i32 0
  %93 = call %nyx_string* @nyx_string_from_cstr(i8* %92)
  store %nyx_string* %93, %nyx_string** %53
  br label %merge29
else28:
  br label %merge29
merge29:
  %94 = getelementptr [18 x i8], [18 x i8]* @.str798, i32 0, i32 0
  %95 = call %nyx_string* @nyx_string_from_cstr(i8* %94)
  %96 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %95)
  br i1 %96, label %then30, label %else31
then30:
  %97 = getelementptr [11 x i8], [11 x i8]* @.str799, i32 0, i32 0
  %98 = call %nyx_string* @nyx_string_from_cstr(i8* %97)
  store %nyx_string* %98, %nyx_string** %53
  br label %merge32
else31:
  br label %merge32
merge32:
  %99 = getelementptr [19 x i8], [19 x i8]* @.str800, i32 0, i32 0
  %100 = call %nyx_string* @nyx_string_from_cstr(i8* %99)
  %101 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %100)
  br i1 %101, label %then33, label %else34
then33:
  %102 = getelementptr [12 x i8], [12 x i8]* @.str801, i32 0, i32 0
  %103 = call %nyx_string* @nyx_string_from_cstr(i8* %102)
  store %nyx_string* %103, %nyx_string** %53
  br label %merge35
else34:
  br label %merge35
merge35:
  %104 = load %nyx_string*, %nyx_string** %53
  %105 = getelementptr [1 x i8], [1 x i8]* @.str802, i32 0, i32 0
  %106 = call %nyx_string* @nyx_string_from_cstr(i8* %105)
  %107 = call i8* @nyx_string_to_cstr(%nyx_string* %104)
  %108 = call i8* @nyx_string_to_cstr(%nyx_string* %106)
  %109 = call i32 @strcmp(i8* %107, i8* %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %then36, label %else37
then36:
  %111 = call %Token @advance(%SharedEnv_parse* %env.param)
  %112 = call { i64, i8* }* @parse_expression(%SharedEnv_parse* %env.param)
  %113 = alloca { i64, i8* }*
  store { i64, i8* }* %112, { i64, i8* }** %113
  %114 = load { i64, i8* }*, { i64, i8* }** %21
  %115 = call i64 @nyx_array_get({ i64, i8* }* %114, i64 0)
  %116 = inttoptr i64 %115 to %nyx_string*
  %117 = alloca %nyx_string*
  store %nyx_string* %116, %nyx_string** %117
  %118 = load %nyx_string*, %nyx_string** %117
  %119 = call { i64, i8* }* @nyx_array_new_ptr()
  %120 = call { i64, i8* }* @make_astnode(%nyx_string* %118, { i64, i8* }* %119)
  %121 = alloca { i64, i8* }*
  store { i64, i8* }* %120, { i64, i8* }** %121
  %122 = getelementptr [11 x i8], [11 x i8]* @.str803, i32 0, i32 0
  %123 = call %nyx_string* @nyx_string_from_cstr(i8* %122)
  %124 = call { i64, i8* }* @nyx_array_new_ptr()
  %125 = load %nyx_string*, %nyx_string** %117
  %126 = ptrtoint %nyx_string* %125 to i64
  call void @nyx_array_push({ i64, i8* }* %124, i64 %126)
  %127 = call { i64, i8* }* @make_astnode(%nyx_string* %123, { i64, i8* }* %124)
  %128 = alloca { i64, i8* }*
  store { i64, i8* }* %127, { i64, i8* }** %128
  %129 = getelementptr [6 x i8], [6 x i8]* @.str804, i32 0, i32 0
  %130 = call %nyx_string* @nyx_string_from_cstr(i8* %129)
  %131 = call { i64, i8* }* @nyx_array_new_ptr()
  %132 = load %nyx_string*, %nyx_string** %53
  %133 = ptrtoint %nyx_string* %132 to i64
  call void @nyx_array_push({ i64, i8* }* %131, i64 %133)
  %134 = load { i64, i8* }*, { i64, i8* }** %128
  %135 = bitcast { i64, i8* }* %134 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %131, i8* %135)
  %136 = load { i64, i8* }*, { i64, i8* }** %113
  %137 = bitcast { i64, i8* }* %136 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %131, i8* %137)
  %138 = call { i64, i8* }* @make_astnode(%nyx_string* %130, { i64, i8* }* %131)
  %139 = alloca { i64, i8* }*
  store { i64, i8* }* %138, { i64, i8* }** %139
  %140 = getelementptr [7 x i8], [7 x i8]* @.str805, i32 0, i32 0
  %141 = call %nyx_string* @nyx_string_from_cstr(i8* %140)
  %142 = call { i64, i8* }* @nyx_array_new_ptr()
  %143 = load { i64, i8* }*, { i64, i8* }** %121
  %144 = bitcast { i64, i8* }* %143 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %142, i8* %144)
  %145 = load { i64, i8* }*, { i64, i8* }** %139
  %146 = bitcast { i64, i8* }* %145 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %142, i8* %146)
  %147 = call { i64, i8* }* @make_astnode(%nyx_string* %141, { i64, i8* }* %142)
  ret { i64, i8* }* %147
else37:
  br label %merge38
merge38:
  br label %merge2
else1:
  br label %merge2
merge2:
  %148 = load %nyx_string*, %nyx_string** %18
  %149 = getelementptr [6 x i8], [6 x i8]* @.str806, i32 0, i32 0
  %150 = call %nyx_string* @nyx_string_from_cstr(i8* %149)
  %151 = call i8* @nyx_string_to_cstr(%nyx_string* %148)
  %152 = call i8* @nyx_string_to_cstr(%nyx_string* %150)
  %153 = call i32 @strcmp(i8* %151, i8* %152)
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %then39, label %else40
then39:
  %155 = getelementptr [7 x i8], [7 x i8]* @.str807, i32 0, i32 0
  %156 = call %nyx_string* @nyx_string_from_cstr(i8* %155)
  %157 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %156)
  br i1 %157, label %then42, label %else43
then42:
  %158 = call %Token @advance(%SharedEnv_parse* %env.param)
  %159 = call { i64, i8* }* @parse_expression(%SharedEnv_parse* %env.param)
  %160 = alloca { i64, i8* }*
  store { i64, i8* }* %159, { i64, i8* }** %160
  %161 = load { i64, i8* }*, { i64, i8* }** %21
  %162 = call i64 @nyx_array_get({ i64, i8* }* %161, i64 0)
  %163 = inttoptr i64 %162 to { i64, i8* }*
  %164 = alloca { i64, i8* }*
  store { i64, i8* }* %163, { i64, i8* }** %164
  %165 = getelementptr [13 x i8], [13 x i8]* @.str808, i32 0, i32 0
  %166 = call %nyx_string* @nyx_string_from_cstr(i8* %165)
  %167 = call { i64, i8* }* @nyx_array_new_ptr()
  %168 = load { i64, i8* }*, { i64, i8* }** %164
  %169 = bitcast { i64, i8* }* %168 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %167, i8* %169)
  %170 = load { i64, i8* }*, { i64, i8* }** %160
  %171 = bitcast { i64, i8* }* %170 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %167, i8* %171)
  %172 = call { i64, i8* }* @make_astnode(%nyx_string* %166, { i64, i8* }* %167)
  ret { i64, i8* }* %172
else43:
  br label %merge44
merge44:
  br label %merge41
else40:
  br label %merge41
merge41:
  %173 = load %nyx_string*, %nyx_string** %18
  %174 = getelementptr [6 x i8], [6 x i8]* @.str809, i32 0, i32 0
  %175 = call %nyx_string* @nyx_string_from_cstr(i8* %174)
  %176 = call i8* @nyx_string_to_cstr(%nyx_string* %173)
  %177 = call i8* @nyx_string_to_cstr(%nyx_string* %175)
  %178 = call i32 @strcmp(i8* %176, i8* %177)
  %179 = icmp eq i32 %178, 0
  %180 = getelementptr [7 x i8], [7 x i8]* @.str810, i32 0, i32 0
  %181 = call %nyx_string* @nyx_string_from_cstr(i8* %180)
  %182 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %181)
  %183 = and i1 %179, %182
  br i1 %183, label %then45, label %else46
then45:
  %184 = call %Token @advance(%SharedEnv_parse* %env.param)
  %185 = call { i64, i8* }* @parse_expression(%SharedEnv_parse* %env.param)
  %186 = alloca { i64, i8* }*
  store { i64, i8* }* %185, { i64, i8* }** %186
  %187 = getelementptr [13 x i8], [13 x i8]* @.str811, i32 0, i32 0
  %188 = call %nyx_string* @nyx_string_from_cstr(i8* %187)
  %189 = call { i64, i8* }* @nyx_array_new_ptr()
  %190 = load { i64, i8* }*, { i64, i8* }** %21
  %191 = call i64 @nyx_array_get({ i64, i8* }* %190, i64 0)
  call void @nyx_array_push({ i64, i8* }* %189, i64 %191)
  %192 = load { i64, i8* }*, { i64, i8* }** %21
  %193 = call i64 @nyx_array_get({ i64, i8* }* %192, i64 1)
  call void @nyx_array_push({ i64, i8* }* %189, i64 %193)
  %194 = load { i64, i8* }*, { i64, i8* }** %186
  %195 = bitcast { i64, i8* }* %194 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %189, i8* %195)
  %196 = call { i64, i8* }* @make_astnode(%nyx_string* %188, { i64, i8* }* %189)
  ret { i64, i8* }* %196
else46:
  br label %merge47
merge47:
  %197 = load %nyx_string*, %nyx_string** %18
  %198 = getelementptr [13 x i8], [13 x i8]* @.str812, i32 0, i32 0
  %199 = call %nyx_string* @nyx_string_from_cstr(i8* %198)
  %200 = call i8* @nyx_string_to_cstr(%nyx_string* %197)
  %201 = call i8* @nyx_string_to_cstr(%nyx_string* %199)
  %202 = call i32 @strcmp(i8* %200, i8* %201)
  %203 = icmp eq i32 %202, 0
  %204 = getelementptr [7 x i8], [7 x i8]* @.str813, i32 0, i32 0
  %205 = call %nyx_string* @nyx_string_from_cstr(i8* %204)
  %206 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %205)
  %207 = and i1 %203, %206
  br i1 %207, label %then48, label %else49
then48:
  %208 = call %Token @advance(%SharedEnv_parse* %env.param)
  %209 = call { i64, i8* }* @parse_expression(%SharedEnv_parse* %env.param)
  %210 = alloca { i64, i8* }*
  store { i64, i8* }* %209, { i64, i8* }** %210
  %211 = getelementptr [13 x i8], [13 x i8]* @.str814, i32 0, i32 0
  %212 = call %nyx_string* @nyx_string_from_cstr(i8* %211)
  %213 = call { i64, i8* }* @nyx_array_new_ptr()
  %214 = load { i64, i8* }*, { i64, i8* }** %21
  %215 = call i64 @nyx_array_get({ i64, i8* }* %214, i64 0)
  call void @nyx_array_push({ i64, i8* }* %213, i64 %215)
  %216 = load { i64, i8* }*, { i64, i8* }** %21
  %217 = call i64 @nyx_array_get({ i64, i8* }* %216, i64 1)
  call void @nyx_array_push({ i64, i8* }* %213, i64 %217)
  %218 = load { i64, i8* }*, { i64, i8* }** %210
  %219 = bitcast { i64, i8* }* %218 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %213, i8* %219)
  %220 = call { i64, i8* }* @make_astnode(%nyx_string* %212, { i64, i8* }* %213)
  ret { i64, i8* }* %220
else49:
  br label %merge50
merge50:
  %221 = load { i64, i8* }*, { i64, i8* }** %15
  ret { i64, i8* }* %221
}

define internal i64 @synchronize(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = alloca i1
  store i1 0, i1* %14
  br label %while_cond0
while_cond0:
  %15 = load i1, i1* %14
  %16 = xor i1 %15, true
  br i1 %16, label %while_body1, label %while_end2
while_body1:
  %17 = getelementptr [4 x i8], [4 x i8]* @.str815, i32 0, i32 0
  %18 = call %nyx_string* @nyx_string_from_cstr(i8* %17)
  %19 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %18)
  br i1 %19, label %then3, label %else4
then3:
  store i1 1, i1* %14
  br label %merge5
else4:
  %20 = call %Token @peek(%SharedEnv_parse* %env.param)
  %21 = call %nyx_string* @get_token_type(%Token %20)
  %22 = alloca %nyx_string*
  store %nyx_string* %21, %nyx_string** %22
  %23 = load %nyx_string*, %nyx_string** %22
  %24 = getelementptr [3 x i8], [3 x i8]* @.str816, i32 0, i32 0
  %25 = call %nyx_string* @nyx_string_from_cstr(i8* %24)
  %26 = call i8* @nyx_string_to_cstr(%nyx_string* %23)
  %27 = call i8* @nyx_string_to_cstr(%nyx_string* %25)
  %28 = call i32 @strcmp(i8* %26, i8* %27)
  %29 = icmp eq i32 %28, 0
  %30 = load %nyx_string*, %nyx_string** %22
  %31 = getelementptr [4 x i8], [4 x i8]* @.str817, i32 0, i32 0
  %32 = call %nyx_string* @nyx_string_from_cstr(i8* %31)
  %33 = call i8* @nyx_string_to_cstr(%nyx_string* %30)
  %34 = call i8* @nyx_string_to_cstr(%nyx_string* %32)
  %35 = call i32 @strcmp(i8* %33, i8* %34)
  %36 = icmp eq i32 %35, 0
  %37 = or i1 %29, %36
  %38 = load %nyx_string*, %nyx_string** %22
  %39 = getelementptr [4 x i8], [4 x i8]* @.str818, i32 0, i32 0
  %40 = call %nyx_string* @nyx_string_from_cstr(i8* %39)
  %41 = call i8* @nyx_string_to_cstr(%nyx_string* %38)
  %42 = call i8* @nyx_string_to_cstr(%nyx_string* %40)
  %43 = call i32 @strcmp(i8* %41, i8* %42)
  %44 = icmp eq i32 %43, 0
  %45 = or i1 %37, %44
  %46 = load %nyx_string*, %nyx_string** %22
  %47 = getelementptr [6 x i8], [6 x i8]* @.str819, i32 0, i32 0
  %48 = call %nyx_string* @nyx_string_from_cstr(i8* %47)
  %49 = call i8* @nyx_string_to_cstr(%nyx_string* %46)
  %50 = call i8* @nyx_string_to_cstr(%nyx_string* %48)
  %51 = call i32 @strcmp(i8* %49, i8* %50)
  %52 = icmp eq i32 %51, 0
  %53 = or i1 %45, %52
  %54 = load %nyx_string*, %nyx_string** %22
  %55 = getelementptr [7 x i8], [7 x i8]* @.str820, i32 0, i32 0
  %56 = call %nyx_string* @nyx_string_from_cstr(i8* %55)
  %57 = call i8* @nyx_string_to_cstr(%nyx_string* %54)
  %58 = call i8* @nyx_string_to_cstr(%nyx_string* %56)
  %59 = call i32 @strcmp(i8* %57, i8* %58)
  %60 = icmp eq i32 %59, 0
  %61 = or i1 %53, %60
  %62 = load %nyx_string*, %nyx_string** %22
  %63 = getelementptr [5 x i8], [5 x i8]* @.str821, i32 0, i32 0
  %64 = call %nyx_string* @nyx_string_from_cstr(i8* %63)
  %65 = call i8* @nyx_string_to_cstr(%nyx_string* %62)
  %66 = call i8* @nyx_string_to_cstr(%nyx_string* %64)
  %67 = call i32 @strcmp(i8* %65, i8* %66)
  %68 = icmp eq i32 %67, 0
  %69 = or i1 %61, %68
  %70 = load %nyx_string*, %nyx_string** %22
  %71 = getelementptr [3 x i8], [3 x i8]* @.str822, i32 0, i32 0
  %72 = call %nyx_string* @nyx_string_from_cstr(i8* %71)
  %73 = call i8* @nyx_string_to_cstr(%nyx_string* %70)
  %74 = call i8* @nyx_string_to_cstr(%nyx_string* %72)
  %75 = call i32 @strcmp(i8* %73, i8* %74)
  %76 = icmp eq i32 %75, 0
  %77 = or i1 %69, %76
  %78 = load %nyx_string*, %nyx_string** %22
  %79 = getelementptr [6 x i8], [6 x i8]* @.str823, i32 0, i32 0
  %80 = call %nyx_string* @nyx_string_from_cstr(i8* %79)
  %81 = call i8* @nyx_string_to_cstr(%nyx_string* %78)
  %82 = call i8* @nyx_string_to_cstr(%nyx_string* %80)
  %83 = call i32 @strcmp(i8* %81, i8* %82)
  %84 = icmp eq i32 %83, 0
  %85 = or i1 %77, %84
  %86 = load %nyx_string*, %nyx_string** %22
  %87 = getelementptr [4 x i8], [4 x i8]* @.str824, i32 0, i32 0
  %88 = call %nyx_string* @nyx_string_from_cstr(i8* %87)
  %89 = call i8* @nyx_string_to_cstr(%nyx_string* %86)
  %90 = call i8* @nyx_string_to_cstr(%nyx_string* %88)
  %91 = call i32 @strcmp(i8* %89, i8* %90)
  %92 = icmp eq i32 %91, 0
  %93 = or i1 %85, %92
  %94 = load %nyx_string*, %nyx_string** %22
  %95 = getelementptr [7 x i8], [7 x i8]* @.str825, i32 0, i32 0
  %96 = call %nyx_string* @nyx_string_from_cstr(i8* %95)
  %97 = call i8* @nyx_string_to_cstr(%nyx_string* %94)
  %98 = call i8* @nyx_string_to_cstr(%nyx_string* %96)
  %99 = call i32 @strcmp(i8* %97, i8* %98)
  %100 = icmp eq i32 %99, 0
  %101 = or i1 %93, %100
  %102 = load %nyx_string*, %nyx_string** %22
  %103 = getelementptr [7 x i8], [7 x i8]* @.str826, i32 0, i32 0
  %104 = call %nyx_string* @nyx_string_from_cstr(i8* %103)
  %105 = call i8* @nyx_string_to_cstr(%nyx_string* %102)
  %106 = call i8* @nyx_string_to_cstr(%nyx_string* %104)
  %107 = call i32 @strcmp(i8* %105, i8* %106)
  %108 = icmp eq i32 %107, 0
  %109 = or i1 %101, %108
  %110 = load %nyx_string*, %nyx_string** %22
  %111 = getelementptr [7 x i8], [7 x i8]* @.str827, i32 0, i32 0
  %112 = call %nyx_string* @nyx_string_from_cstr(i8* %111)
  %113 = call i8* @nyx_string_to_cstr(%nyx_string* %110)
  %114 = call i8* @nyx_string_to_cstr(%nyx_string* %112)
  %115 = call i32 @strcmp(i8* %113, i8* %114)
  %116 = icmp eq i32 %115, 0
  %117 = or i1 %109, %116
  %118 = load %nyx_string*, %nyx_string** %22
  %119 = getelementptr [6 x i8], [6 x i8]* @.str828, i32 0, i32 0
  %120 = call %nyx_string* @nyx_string_from_cstr(i8* %119)
  %121 = call i8* @nyx_string_to_cstr(%nyx_string* %118)
  %122 = call i8* @nyx_string_to_cstr(%nyx_string* %120)
  %123 = call i32 @strcmp(i8* %121, i8* %122)
  %124 = icmp eq i32 %123, 0
  %125 = or i1 %117, %124
  %126 = load %nyx_string*, %nyx_string** %22
  %127 = getelementptr [5 x i8], [5 x i8]* @.str829, i32 0, i32 0
  %128 = call %nyx_string* @nyx_string_from_cstr(i8* %127)
  %129 = call i8* @nyx_string_to_cstr(%nyx_string* %126)
  %130 = call i8* @nyx_string_to_cstr(%nyx_string* %128)
  %131 = call i32 @strcmp(i8* %129, i8* %130)
  %132 = icmp eq i32 %131, 0
  %133 = or i1 %125, %132
  %134 = load %nyx_string*, %nyx_string** %22
  %135 = getelementptr [6 x i8], [6 x i8]* @.str830, i32 0, i32 0
  %136 = call %nyx_string* @nyx_string_from_cstr(i8* %135)
  %137 = call i8* @nyx_string_to_cstr(%nyx_string* %134)
  %138 = call i8* @nyx_string_to_cstr(%nyx_string* %136)
  %139 = call i32 @strcmp(i8* %137, i8* %138)
  %140 = icmp eq i32 %139, 0
  %141 = or i1 %133, %140
  br i1 %141, label %then6, label %else7
then6:
  store i1 1, i1* %14
  br label %merge8
else7:
  %142 = load %nyx_string*, %nyx_string** %22
  %143 = getelementptr [12 x i8], [12 x i8]* @.str831, i32 0, i32 0
  %144 = call %nyx_string* @nyx_string_from_cstr(i8* %143)
  %145 = call i8* @nyx_string_to_cstr(%nyx_string* %142)
  %146 = call i8* @nyx_string_to_cstr(%nyx_string* %144)
  %147 = call i32 @strcmp(i8* %145, i8* %146)
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %then9, label %else10
then9:
  store i1 1, i1* %14
  br label %merge11
else10:
  %149 = call %Token @advance(%SharedEnv_parse* %env.param)
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


attributes #0 = { returns_twice }

