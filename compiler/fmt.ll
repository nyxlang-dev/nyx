source_filename = "script.nx"
target triple = "x86_64-pc-linux-gnu"

@.str0 = private unnamed_addr constant [1 x i8] c"\00"
@.str0.c = internal global %nyx_string* null
@.str1 = private unnamed_addr constant [5 x i8] c"    \00"
@.str1.c = internal global %nyx_string* null
@.str2 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str2.c = internal global %nyx_string* null
@.str3 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str3.c = internal global %nyx_string* null
@.str4 = private unnamed_addr constant [2 x i8] c":\00"
@.str4.c = internal global %nyx_string* null
@.str5 = private unnamed_addr constant [5 x i8] c"PLUS\00"
@.str5.c = internal global %nyx_string* null
@.str6 = private unnamed_addr constant [2 x i8] c"+\00"
@.str6.c = internal global %nyx_string* null
@.str7 = private unnamed_addr constant [6 x i8] c"MINUS\00"
@.str7.c = internal global %nyx_string* null
@.str8 = private unnamed_addr constant [2 x i8] c"-\00"
@.str8.c = internal global %nyx_string* null
@.str9 = private unnamed_addr constant [5 x i8] c"STAR\00"
@.str9.c = internal global %nyx_string* null
@.str10 = private unnamed_addr constant [2 x i8] c"*\00"
@.str10.c = internal global %nyx_string* null
@.str11 = private unnamed_addr constant [6 x i8] c"SLASH\00"
@.str11.c = internal global %nyx_string* null
@.str12 = private unnamed_addr constant [2 x i8] c"/\00"
@.str12.c = internal global %nyx_string* null
@.str13 = private unnamed_addr constant [8 x i8] c"PERCENT\00"
@.str13.c = internal global %nyx_string* null
@.str14 = private unnamed_addr constant [2 x i8] c"%\00"
@.str14.c = internal global %nyx_string* null
@.str15 = private unnamed_addr constant [6 x i8] c"POWER\00"
@.str15.c = internal global %nyx_string* null
@.str16 = private unnamed_addr constant [3 x i8] c"**\00"
@.str16.c = internal global %nyx_string* null
@.str17 = private unnamed_addr constant [12 x i8] c"EQUAL_EQUAL\00"
@.str17.c = internal global %nyx_string* null
@.str18 = private unnamed_addr constant [3 x i8] c"==\00"
@.str18.c = internal global %nyx_string* null
@.str19 = private unnamed_addr constant [10 x i8] c"NOT_EQUAL\00"
@.str19.c = internal global %nyx_string* null
@.str20 = private unnamed_addr constant [3 x i8] c"!=\00"
@.str20.c = internal global %nyx_string* null
@.str21 = private unnamed_addr constant [5 x i8] c"LESS\00"
@.str21.c = internal global %nyx_string* null
@.str22 = private unnamed_addr constant [2 x i8] c"<\00"
@.str22.c = internal global %nyx_string* null
@.str23 = private unnamed_addr constant [11 x i8] c"LESS_EQUAL\00"
@.str23.c = internal global %nyx_string* null
@.str24 = private unnamed_addr constant [3 x i8] c"<=\00"
@.str24.c = internal global %nyx_string* null
@.str25 = private unnamed_addr constant [8 x i8] c"GREATER\00"
@.str25.c = internal global %nyx_string* null
@.str26 = private unnamed_addr constant [2 x i8] c">\00"
@.str26.c = internal global %nyx_string* null
@.str27 = private unnamed_addr constant [14 x i8] c"GREATER_EQUAL\00"
@.str27.c = internal global %nyx_string* null
@.str28 = private unnamed_addr constant [3 x i8] c">=\00"
@.str28.c = internal global %nyx_string* null
@.str29 = private unnamed_addr constant [4 x i8] c"AND\00"
@.str29.c = internal global %nyx_string* null
@.str30 = private unnamed_addr constant [4 x i8] c"and\00"
@.str30.c = internal global %nyx_string* null
@.str31 = private unnamed_addr constant [8 x i8] c"AND_AND\00"
@.str31.c = internal global %nyx_string* null
@.str32 = private unnamed_addr constant [4 x i8] c"and\00"
@.str32.c = internal global %nyx_string* null
@.str33 = private unnamed_addr constant [3 x i8] c"OR\00"
@.str33.c = internal global %nyx_string* null
@.str34 = private unnamed_addr constant [3 x i8] c"or\00"
@.str34.c = internal global %nyx_string* null
@.str35 = private unnamed_addr constant [6 x i8] c"OR_OR\00"
@.str35.c = internal global %nyx_string* null
@.str36 = private unnamed_addr constant [3 x i8] c"or\00"
@.str36.c = internal global %nyx_string* null
@.str37 = private unnamed_addr constant [4 x i8] c"NOT\00"
@.str37.c = internal global %nyx_string* null
@.str38 = private unnamed_addr constant [4 x i8] c"not\00"
@.str38.c = internal global %nyx_string* null
@.str39 = private unnamed_addr constant [12 x i8] c"PLUS_EQUALS\00"
@.str39.c = internal global %nyx_string* null
@.str40 = private unnamed_addr constant [3 x i8] c"+=\00"
@.str40.c = internal global %nyx_string* null
@.str41 = private unnamed_addr constant [13 x i8] c"MINUS_EQUALS\00"
@.str41.c = internal global %nyx_string* null
@.str42 = private unnamed_addr constant [3 x i8] c"-=\00"
@.str42.c = internal global %nyx_string* null
@.str43 = private unnamed_addr constant [12 x i8] c"STAR_EQUALS\00"
@.str43.c = internal global %nyx_string* null
@.str44 = private unnamed_addr constant [3 x i8] c"*=\00"
@.str44.c = internal global %nyx_string* null
@.str45 = private unnamed_addr constant [13 x i8] c"SLASH_EQUALS\00"
@.str45.c = internal global %nyx_string* null
@.str46 = private unnamed_addr constant [3 x i8] c"/=\00"
@.str46.c = internal global %nyx_string* null
@.str47 = private unnamed_addr constant [15 x i8] c"PERCENT_EQUALS\00"
@.str47.c = internal global %nyx_string* null
@.str48 = private unnamed_addr constant [3 x i8] c"%=\00"
@.str48.c = internal global %nyx_string* null
@.str49 = private unnamed_addr constant [4 x i8] c"AMP\00"
@.str49.c = internal global %nyx_string* null
@.str50 = private unnamed_addr constant [2 x i8] c"&\00"
@.str50.c = internal global %nyx_string* null
@.str51 = private unnamed_addr constant [5 x i8] c"PIPE\00"
@.str51.c = internal global %nyx_string* null
@.str52 = private unnamed_addr constant [2 x i8] c"|\00"
@.str52.c = internal global %nyx_string* null
@.str53 = private unnamed_addr constant [6 x i8] c"CARET\00"
@.str53.c = internal global %nyx_string* null
@.str54 = private unnamed_addr constant [2 x i8] c"^\00"
@.str54.c = internal global %nyx_string* null
@.str55 = private unnamed_addr constant [6 x i8] c"TILDE\00"
@.str55.c = internal global %nyx_string* null
@.str56 = private unnamed_addr constant [2 x i8] c"~\00"
@.str56.c = internal global %nyx_string* null
@.str57 = private unnamed_addr constant [11 x i8] c"SHIFT_LEFT\00"
@.str57.c = internal global %nyx_string* null
@.str58 = private unnamed_addr constant [3 x i8] c"<<\00"
@.str58.c = internal global %nyx_string* null
@.str59 = private unnamed_addr constant [12 x i8] c"SHIFT_RIGHT\00"
@.str59.c = internal global %nyx_string* null
@.str60 = private unnamed_addr constant [3 x i8] c">>\00"
@.str60.c = internal global %nyx_string* null
@.str61 = private unnamed_addr constant [11 x i8] c"AMP_EQUALS\00"
@.str61.c = internal global %nyx_string* null
@.str62 = private unnamed_addr constant [3 x i8] c"&=\00"
@.str62.c = internal global %nyx_string* null
@.str63 = private unnamed_addr constant [12 x i8] c"PIPE_EQUALS\00"
@.str63.c = internal global %nyx_string* null
@.str64 = private unnamed_addr constant [3 x i8] c"|=\00"
@.str64.c = internal global %nyx_string* null
@.str65 = private unnamed_addr constant [13 x i8] c"CARET_EQUALS\00"
@.str65.c = internal global %nyx_string* null
@.str66 = private unnamed_addr constant [3 x i8] c"^=\00"
@.str66.c = internal global %nyx_string* null
@.str67 = private unnamed_addr constant [18 x i8] c"SHIFT_LEFT_EQUALS\00"
@.str67.c = internal global %nyx_string* null
@.str68 = private unnamed_addr constant [4 x i8] c"<<=\00"
@.str68.c = internal global %nyx_string* null
@.str69 = private unnamed_addr constant [19 x i8] c"SHIFT_RIGHT_EQUALS\00"
@.str69.c = internal global %nyx_string* null
@.str70 = private unnamed_addr constant [4 x i8] c">>=\00"
@.str70.c = internal global %nyx_string* null
@.str71 = private unnamed_addr constant [7 x i8] c"number\00"
@.str71.c = internal global %nyx_string* null
@.str72 = private unnamed_addr constant [7 x i8] c"string\00"
@.str72.c = internal global %nyx_string* null
@.str73 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str73.c = internal global %nyx_string* null
@.str74 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str74.c = internal global %nyx_string* null
@.str75 = private unnamed_addr constant [5 x i8] c"char\00"
@.str75.c = internal global %nyx_string* null
@.str76 = private unnamed_addr constant [2 x i8] c"'\00"
@.str76.c = internal global %nyx_string* null
@.str77 = private unnamed_addr constant [2 x i8] c"'\00"
@.str77.c = internal global %nyx_string* null
@.str78 = private unnamed_addr constant [5 x i8] c"bool\00"
@.str78.c = internal global %nyx_string* null
@.str79 = private unnamed_addr constant [11 x i8] c"identifier\00"
@.str79.c = internal global %nyx_string* null
@.str80 = private unnamed_addr constant [6 x i8] c"binop\00"
@.str80.c = internal global %nyx_string* null
@.str81 = private unnamed_addr constant [2 x i8] c" \00"
@.str81.c = internal global %nyx_string* null
@.str82 = private unnamed_addr constant [2 x i8] c" \00"
@.str82.c = internal global %nyx_string* null
@.str83 = private unnamed_addr constant [5 x i8] c"unop\00"
@.str83.c = internal global %nyx_string* null
@.str84 = private unnamed_addr constant [4 x i8] c"not\00"
@.str84.c = internal global %nyx_string* null
@.str85 = private unnamed_addr constant [5 x i8] c"not \00"
@.str85.c = internal global %nyx_string* null
@.str86 = private unnamed_addr constant [2 x i8] c"-\00"
@.str86.c = internal global %nyx_string* null
@.str87 = private unnamed_addr constant [2 x i8] c"-\00"
@.str87.c = internal global %nyx_string* null
@.str88 = private unnamed_addr constant [5 x i8] c"call\00"
@.str88.c = internal global %nyx_string* null
@.str89 = private unnamed_addr constant [2 x i8] c"(\00"
@.str89.c = internal global %nyx_string* null
@.str90 = private unnamed_addr constant [3 x i8] c", \00"
@.str90.c = internal global %nyx_string* null
@.str91 = private unnamed_addr constant [2 x i8] c")\00"
@.str91.c = internal global %nyx_string* null
@.str92 = private unnamed_addr constant [13 x i8] c"generic_call\00"
@.str92.c = internal global %nyx_string* null
@.str93 = private unnamed_addr constant [2 x i8] c"<\00"
@.str93.c = internal global %nyx_string* null
@.str94 = private unnamed_addr constant [3 x i8] c", \00"
@.str94.c = internal global %nyx_string* null
@.str95 = private unnamed_addr constant [2 x i8] c">\00"
@.str95.c = internal global %nyx_string* null
@.str96 = private unnamed_addr constant [2 x i8] c"(\00"
@.str96.c = internal global %nyx_string* null
@.str97 = private unnamed_addr constant [3 x i8] c", \00"
@.str97.c = internal global %nyx_string* null
@.str98 = private unnamed_addr constant [2 x i8] c")\00"
@.str98.c = internal global %nyx_string* null
@.str99 = private unnamed_addr constant [12 x i8] c"method_call\00"
@.str99.c = internal global %nyx_string* null
@.str100 = private unnamed_addr constant [2 x i8] c".\00"
@.str100.c = internal global %nyx_string* null
@.str101 = private unnamed_addr constant [2 x i8] c"(\00"
@.str101.c = internal global %nyx_string* null
@.str102 = private unnamed_addr constant [3 x i8] c", \00"
@.str102.c = internal global %nyx_string* null
@.str103 = private unnamed_addr constant [2 x i8] c")\00"
@.str103.c = internal global %nyx_string* null
@.str104 = private unnamed_addr constant [13 x i8] c"field_access\00"
@.str104.c = internal global %nyx_string* null
@.str105 = private unnamed_addr constant [2 x i8] c".\00"
@.str105.c = internal global %nyx_string* null
@.str106 = private unnamed_addr constant [6 x i8] c"index\00"
@.str106.c = internal global %nyx_string* null
@.str107 = private unnamed_addr constant [2 x i8] c"[\00"
@.str107.c = internal global %nyx_string* null
@.str108 = private unnamed_addr constant [2 x i8] c"]\00"
@.str108.c = internal global %nyx_string* null
@.str109 = private unnamed_addr constant [12 x i8] c"tuple_index\00"
@.str109.c = internal global %nyx_string* null
@.str110 = private unnamed_addr constant [2 x i8] c".\00"
@.str110.c = internal global %nyx_string* null
@.str111 = private unnamed_addr constant [6 x i8] c"array\00"
@.str111.c = internal global %nyx_string* null
@.str112 = private unnamed_addr constant [2 x i8] c"[\00"
@.str112.c = internal global %nyx_string* null
@.str113 = private unnamed_addr constant [3 x i8] c", \00"
@.str113.c = internal global %nyx_string* null
@.str114 = private unnamed_addr constant [2 x i8] c"]\00"
@.str114.c = internal global %nyx_string* null
@.str115 = private unnamed_addr constant [10 x i8] c"tuple_lit\00"
@.str115.c = internal global %nyx_string* null
@.str116 = private unnamed_addr constant [2 x i8] c"(\00"
@.str116.c = internal global %nyx_string* null
@.str117 = private unnamed_addr constant [3 x i8] c", \00"
@.str117.c = internal global %nyx_string* null
@.str118 = private unnamed_addr constant [2 x i8] c")\00"
@.str118.c = internal global %nyx_string* null
@.str119 = private unnamed_addr constant [12 x i8] c"struct_init\00"
@.str119.c = internal global %nyx_string* null
@.str120 = private unnamed_addr constant [2 x i8] c"<\00"
@.str120.c = internal global %nyx_string* null
@.str121 = private unnamed_addr constant [3 x i8] c", \00"
@.str121.c = internal global %nyx_string* null
@.str122 = private unnamed_addr constant [2 x i8] c">\00"
@.str122.c = internal global %nyx_string* null
@.str123 = private unnamed_addr constant [3 x i8] c" {\00"
@.str123.c = internal global %nyx_string* null
@.str124 = private unnamed_addr constant [2 x i8] c",\00"
@.str124.c = internal global %nyx_string* null
@.str125 = private unnamed_addr constant [2 x i8] c" \00"
@.str125.c = internal global %nyx_string* null
@.str126 = private unnamed_addr constant [3 x i8] c": \00"
@.str126.c = internal global %nyx_string* null
@.str127 = private unnamed_addr constant [3 x i8] c" }\00"
@.str127.c = internal global %nyx_string* null
@.str128 = private unnamed_addr constant [6 x i8] c"range\00"
@.str128.c = internal global %nyx_string* null
@.str129 = private unnamed_addr constant [5 x i8] c"true\00"
@.str129.c = internal global %nyx_string* null
@.str130 = private unnamed_addr constant [4 x i8] c"..=\00"
@.str130.c = internal global %nyx_string* null
@.str131 = private unnamed_addr constant [3 x i8] c"..\00"
@.str131.c = internal global %nyx_string* null
@.str132 = private unnamed_addr constant [7 x i8] c"try_op\00"
@.str132.c = internal global %nyx_string* null
@.str133 = private unnamed_addr constant [2 x i8] c"?\00"
@.str133.c = internal global %nyx_string* null
@.str134 = private unnamed_addr constant [7 x i8] c"assert\00"
@.str134.c = internal global %nyx_string* null
@.str135 = private unnamed_addr constant [7 x i8] c"string\00"
@.str135.c = internal global %nyx_string* null
@.str136 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str136.c = internal global %nyx_string* null
@.str137 = private unnamed_addr constant [8 x i8] c"assert(\00"
@.str137.c = internal global %nyx_string* null
@.str138 = private unnamed_addr constant [2 x i8] c")\00"
@.str138.c = internal global %nyx_string* null
@.str139 = private unnamed_addr constant [8 x i8] c"assert(\00"
@.str139.c = internal global %nyx_string* null
@.str140 = private unnamed_addr constant [3 x i8] c", \00"
@.str140.c = internal global %nyx_string* null
@.str141 = private unnamed_addr constant [2 x i8] c")\00"
@.str141.c = internal global %nyx_string* null
@.str142 = private unnamed_addr constant [6 x i8] c"match\00"
@.str142.c = internal global %nyx_string* null
@.str143 = private unnamed_addr constant [18 x i8] c"/* unknown expr: \00"
@.str143.c = internal global %nyx_string* null
@.str144 = private unnamed_addr constant [4 x i8] c" */\00"
@.str144.c = internal global %nyx_string* null
@.str145 = private unnamed_addr constant [7 x i8] c"match \00"
@.str145.c = internal global %nyx_string* null
@.str146 = private unnamed_addr constant [4 x i8] c" {\0a\00"
@.str146.c = internal global %nyx_string* null
@.str147 = private unnamed_addr constant [5 x i8] c" => \00"
@.str147.c = internal global %nyx_string* null
@.str148 = private unnamed_addr constant [6 x i8] c"block\00"
@.str148.c = internal global %nyx_string* null
@.str149 = private unnamed_addr constant [3 x i8] c"{\0a\00"
@.str149.c = internal global %nyx_string* null
@.str150 = private unnamed_addr constant [2 x i8] c"}\00"
@.str150.c = internal global %nyx_string* null
@.str151 = private unnamed_addr constant [2 x i8] c",\00"
@.str151.c = internal global %nyx_string* null
@.str152 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str152.c = internal global %nyx_string* null
@.str153 = private unnamed_addr constant [2 x i8] c"}\00"
@.str153.c = internal global %nyx_string* null
@.str154 = private unnamed_addr constant [14 x i8] c"match_pattern\00"
@.str154.c = internal global %nyx_string* null
@.str155 = private unnamed_addr constant [2 x i8] c".\00"
@.str155.c = internal global %nyx_string* null
@.str156 = private unnamed_addr constant [2 x i8] c"(\00"
@.str156.c = internal global %nyx_string* null
@.str157 = private unnamed_addr constant [3 x i8] c", \00"
@.str157.c = internal global %nyx_string* null
@.str158 = private unnamed_addr constant [2 x i8] c")\00"
@.str158.c = internal global %nyx_string* null
@.str159 = private unnamed_addr constant [9 x i8] c"wildcard\00"
@.str159.c = internal global %nyx_string* null
@.str160 = private unnamed_addr constant [2 x i8] c"_\00"
@.str160.c = internal global %nyx_string* null
@.str161 = private unnamed_addr constant [7 x i8] c"number\00"
@.str161.c = internal global %nyx_string* null
@.str162 = private unnamed_addr constant [7 x i8] c"string\00"
@.str162.c = internal global %nyx_string* null
@.str163 = private unnamed_addr constant [5 x i8] c"bool\00"
@.str163.c = internal global %nyx_string* null
@.str164 = private unnamed_addr constant [11 x i8] c"identifier\00"
@.str164.c = internal global %nyx_string* null
@.str165 = private unnamed_addr constant [22 x i8] c"/* unknown pattern */\00"
@.str165.c = internal global %nyx_string* null
@.str166 = private unnamed_addr constant [4 x i8] c"let\00"
@.str166.c = internal global %nyx_string* null
@.str167 = private unnamed_addr constant [6 x i8] c"const\00"
@.str167.c = internal global %nyx_string* null
@.str168 = private unnamed_addr constant [22 x i8] c"let_destructure_tuple\00"
@.str168.c = internal global %nyx_string* null
@.str169 = private unnamed_addr constant [2 x i8] c"(\00"
@.str169.c = internal global %nyx_string* null
@.str170 = private unnamed_addr constant [3 x i8] c", \00"
@.str170.c = internal global %nyx_string* null
@.str171 = private unnamed_addr constant [2 x i8] c")\00"
@.str171.c = internal global %nyx_string* null
@.str172 = private unnamed_addr constant [5 x i8] c"let \00"
@.str172.c = internal global %nyx_string* null
@.str173 = private unnamed_addr constant [4 x i8] c" = \00"
@.str173.c = internal global %nyx_string* null
@.str174 = private unnamed_addr constant [7 x i8] c"assign\00"
@.str174.c = internal global %nyx_string* null
@.str175 = private unnamed_addr constant [4 x i8] c" = \00"
@.str175.c = internal global %nyx_string* null
@.str176 = private unnamed_addr constant [13 x i8] c"field_assign\00"
@.str176.c = internal global %nyx_string* null
@.str177 = private unnamed_addr constant [2 x i8] c".\00"
@.str177.c = internal global %nyx_string* null
@.str178 = private unnamed_addr constant [4 x i8] c" = \00"
@.str178.c = internal global %nyx_string* null
@.str179 = private unnamed_addr constant [13 x i8] c"index_assign\00"
@.str179.c = internal global %nyx_string* null
@.str180 = private unnamed_addr constant [2 x i8] c"[\00"
@.str180.c = internal global %nyx_string* null
@.str181 = private unnamed_addr constant [5 x i8] c"] = \00"
@.str181.c = internal global %nyx_string* null
@.str182 = private unnamed_addr constant [3 x i8] c"if\00"
@.str182.c = internal global %nyx_string* null
@.str183 = private unnamed_addr constant [6 x i8] c"while\00"
@.str183.c = internal global %nyx_string* null
@.str184 = private unnamed_addr constant [7 x i8] c"while \00"
@.str184.c = internal global %nyx_string* null
@.str185 = private unnamed_addr constant [3 x i8] c" {\00"
@.str185.c = internal global %nyx_string* null
@.str186 = private unnamed_addr constant [2 x i8] c"}\00"
@.str186.c = internal global %nyx_string* null
@.str187 = private unnamed_addr constant [4 x i8] c"for\00"
@.str187.c = internal global %nyx_string* null
@.str188 = private unnamed_addr constant [5 x i8] c"for \00"
@.str188.c = internal global %nyx_string* null
@.str189 = private unnamed_addr constant [5 x i8] c" in \00"
@.str189.c = internal global %nyx_string* null
@.str190 = private unnamed_addr constant [3 x i8] c" {\00"
@.str190.c = internal global %nyx_string* null
@.str191 = private unnamed_addr constant [2 x i8] c"}\00"
@.str191.c = internal global %nyx_string* null
@.str192 = private unnamed_addr constant [7 x i8] c"return\00"
@.str192.c = internal global %nyx_string* null
@.str193 = private unnamed_addr constant [8 x i8] c"return \00"
@.str193.c = internal global %nyx_string* null
@.str194 = private unnamed_addr constant [6 x i8] c"break\00"
@.str194.c = internal global %nyx_string* null
@.str195 = private unnamed_addr constant [6 x i8] c"break\00"
@.str195.c = internal global %nyx_string* null
@.str196 = private unnamed_addr constant [9 x i8] c"continue\00"
@.str196.c = internal global %nyx_string* null
@.str197 = private unnamed_addr constant [9 x i8] c"continue\00"
@.str197.c = internal global %nyx_string* null
@.str198 = private unnamed_addr constant [9 x i8] c"function\00"
@.str198.c = internal global %nyx_string* null
@.str199 = private unnamed_addr constant [1 x i8] c"\00"
@.str199.c = internal global %nyx_string* null
@.str200 = private unnamed_addr constant [7 x i8] c"struct\00"
@.str200.c = internal global %nyx_string* null
@.str201 = private unnamed_addr constant [9 x i8] c"enum_def\00"
@.str201.c = internal global %nyx_string* null
@.str202 = private unnamed_addr constant [10 x i8] c"trait_def\00"
@.str202.c = internal global %nyx_string* null
@.str203 = private unnamed_addr constant [5 x i8] c"impl\00"
@.str203.c = internal global %nyx_string* null
@.str204 = private unnamed_addr constant [11 x i8] c"impl_trait\00"
@.str204.c = internal global %nyx_string* null
@.str205 = private unnamed_addr constant [7 x i8] c"import\00"
@.str205.c = internal global %nyx_string* null
@.str206 = private unnamed_addr constant [7 x i8] c"export\00"
@.str206.c = internal global %nyx_string* null
@.str207 = private unnamed_addr constant [9 x i8] c"function\00"
@.str207.c = internal global %nyx_string* null
@.str208 = private unnamed_addr constant [8 x i8] c"export \00"
@.str208.c = internal global %nyx_string* null
@.str209 = private unnamed_addr constant [7 x i8] c"struct\00"
@.str209.c = internal global %nyx_string* null
@.str210 = private unnamed_addr constant [8 x i8] c"export \00"
@.str210.c = internal global %nyx_string* null
@.str211 = private unnamed_addr constant [9 x i8] c"enum_def\00"
@.str211.c = internal global %nyx_string* null
@.str212 = private unnamed_addr constant [8 x i8] c"export \00"
@.str212.c = internal global %nyx_string* null
@.str213 = private unnamed_addr constant [8 x i8] c"export \00"
@.str213.c = internal global %nyx_string* null
@.str214 = private unnamed_addr constant [11 x i8] c"type_alias\00"
@.str214.c = internal global %nyx_string* null
@.str215 = private unnamed_addr constant [6 x i8] c"type \00"
@.str215.c = internal global %nyx_string* null
@.str216 = private unnamed_addr constant [4 x i8] c" = \00"
@.str216.c = internal global %nyx_string* null
@.str217 = private unnamed_addr constant [10 x i8] c"test_decl\00"
@.str217.c = internal global %nyx_string* null
@.str218 = private unnamed_addr constant [7 x i8] c"test \22\00"
@.str218.c = internal global %nyx_string* null
@.str219 = private unnamed_addr constant [4 x i8] c"\22 {\00"
@.str219.c = internal global %nyx_string* null
@.str220 = private unnamed_addr constant [2 x i8] c"}\00"
@.str220.c = internal global %nyx_string* null
@.str221 = private unnamed_addr constant [6 x i8] c"match\00"
@.str221.c = internal global %nyx_string* null
@.str222 = private unnamed_addr constant [5 x i8] c"call\00"
@.str222.c = internal global %nyx_string* null
@.str223 = private unnamed_addr constant [12 x i8] c"method_call\00"
@.str223.c = internal global %nyx_string* null
@.str224 = private unnamed_addr constant [7 x i8] c"assert\00"
@.str224.c = internal global %nyx_string* null
@.str225 = private unnamed_addr constant [6 x i8] c"block\00"
@.str225.c = internal global %nyx_string* null
@.str226 = private unnamed_addr constant [18 x i8] c"/* unknown stmt: \00"
@.str226.c = internal global %nyx_string* null
@.str227 = private unnamed_addr constant [4 x i8] c" */\00"
@.str227.c = internal global %nyx_string* null
@.str228 = private unnamed_addr constant [4 x i8] c"let\00"
@.str228.c = internal global %nyx_string* null
@.str229 = private unnamed_addr constant [6 x i8] c"const\00"
@.str229.c = internal global %nyx_string* null
@.str230 = private unnamed_addr constant [6 x i8] c"const\00"
@.str230.c = internal global %nyx_string* null
@.str231 = private unnamed_addr constant [4 x i8] c"var\00"
@.str231.c = internal global %nyx_string* null
@.str232 = private unnamed_addr constant [2 x i8] c" \00"
@.str232.c = internal global %nyx_string* null
@.str233 = private unnamed_addr constant [1 x i8] c"\00"
@.str233.c = internal global %nyx_string* null
@.str234 = private unnamed_addr constant [3 x i8] c": \00"
@.str234.c = internal global %nyx_string* null
@.str235 = private unnamed_addr constant [4 x i8] c" = \00"
@.str235.c = internal global %nyx_string* null
@.str236 = private unnamed_addr constant [4 x i8] c"if \00"
@.str236.c = internal global %nyx_string* null
@.str237 = private unnamed_addr constant [3 x i8] c" {\00"
@.str237.c = internal global %nyx_string* null
@.str238 = private unnamed_addr constant [6 x i8] c"empty\00"
@.str238.c = internal global %nyx_string* null
@.str239 = private unnamed_addr constant [3 x i8] c"if\00"
@.str239.c = internal global %nyx_string* null
@.str240 = private unnamed_addr constant [8 x i8] c"} else \00"
@.str240.c = internal global %nyx_string* null
@.str241 = private unnamed_addr constant [9 x i8] c"} else {\00"
@.str241.c = internal global %nyx_string* null
@.str242 = private unnamed_addr constant [2 x i8] c"}\00"
@.str242.c = internal global %nyx_string* null
@.str243 = private unnamed_addr constant [2 x i8] c"}\00"
@.str243.c = internal global %nyx_string* null
@.str244 = private unnamed_addr constant [4 x i8] c"fn \00"
@.str244.c = internal global %nyx_string* null
@.str245 = private unnamed_addr constant [2 x i8] c"<\00"
@.str245.c = internal global %nyx_string* null
@.str246 = private unnamed_addr constant [3 x i8] c", \00"
@.str246.c = internal global %nyx_string* null
@.str247 = private unnamed_addr constant [2 x i8] c">\00"
@.str247.c = internal global %nyx_string* null
@.str248 = private unnamed_addr constant [2 x i8] c"(\00"
@.str248.c = internal global %nyx_string* null
@.str249 = private unnamed_addr constant [3 x i8] c", \00"
@.str249.c = internal global %nyx_string* null
@.str250 = private unnamed_addr constant [1 x i8] c"\00"
@.str250.c = internal global %nyx_string* null
@.str251 = private unnamed_addr constant [3 x i8] c": \00"
@.str251.c = internal global %nyx_string* null
@.str252 = private unnamed_addr constant [2 x i8] c")\00"
@.str252.c = internal global %nyx_string* null
@.str253 = private unnamed_addr constant [1 x i8] c"\00"
@.str253.c = internal global %nyx_string* null
@.str254 = private unnamed_addr constant [5 x i8] c" -> \00"
@.str254.c = internal global %nyx_string* null
@.str255 = private unnamed_addr constant [4 x i8] c" {\0a\00"
@.str255.c = internal global %nyx_string* null
@.str256 = private unnamed_addr constant [2 x i8] c"}\00"
@.str256.c = internal global %nyx_string* null
@.str257 = private unnamed_addr constant [8 x i8] c"struct \00"
@.str257.c = internal global %nyx_string* null
@.str258 = private unnamed_addr constant [2 x i8] c"<\00"
@.str258.c = internal global %nyx_string* null
@.str259 = private unnamed_addr constant [3 x i8] c", \00"
@.str259.c = internal global %nyx_string* null
@.str260 = private unnamed_addr constant [2 x i8] c">\00"
@.str260.c = internal global %nyx_string* null
@.str261 = private unnamed_addr constant [4 x i8] c" {\0a\00"
@.str261.c = internal global %nyx_string* null
@.str262 = private unnamed_addr constant [2 x i8] c",\00"
@.str262.c = internal global %nyx_string* null
@.str263 = private unnamed_addr constant [1 x i8] c"\00"
@.str263.c = internal global %nyx_string* null
@.str264 = private unnamed_addr constant [3 x i8] c": \00"
@.str264.c = internal global %nyx_string* null
@.str265 = private unnamed_addr constant [2 x i8] c"}\00"
@.str265.c = internal global %nyx_string* null
@.str266 = private unnamed_addr constant [6 x i8] c"enum \00"
@.str266.c = internal global %nyx_string* null
@.str267 = private unnamed_addr constant [2 x i8] c"<\00"
@.str267.c = internal global %nyx_string* null
@.str268 = private unnamed_addr constant [3 x i8] c", \00"
@.str268.c = internal global %nyx_string* null
@.str269 = private unnamed_addr constant [2 x i8] c">\00"
@.str269.c = internal global %nyx_string* null
@.str270 = private unnamed_addr constant [4 x i8] c" {\0a\00"
@.str270.c = internal global %nyx_string* null
@.str271 = private unnamed_addr constant [2 x i8] c"(\00"
@.str271.c = internal global %nyx_string* null
@.str272 = private unnamed_addr constant [3 x i8] c", \00"
@.str272.c = internal global %nyx_string* null
@.str273 = private unnamed_addr constant [2 x i8] c")\00"
@.str273.c = internal global %nyx_string* null
@.str274 = private unnamed_addr constant [2 x i8] c",\00"
@.str274.c = internal global %nyx_string* null
@.str275 = private unnamed_addr constant [2 x i8] c"}\00"
@.str275.c = internal global %nyx_string* null
@.str276 = private unnamed_addr constant [7 x i8] c"trait \00"
@.str276.c = internal global %nyx_string* null
@.str277 = private unnamed_addr constant [3 x i8] c": \00"
@.str277.c = internal global %nyx_string* null
@.str278 = private unnamed_addr constant [4 x i8] c" + \00"
@.str278.c = internal global %nyx_string* null
@.str279 = private unnamed_addr constant [3 x i8] c" {\00"
@.str279.c = internal global %nyx_string* null
@.str280 = private unnamed_addr constant [15 x i8] c"__assoc_type__\00"
@.str280.c = internal global %nyx_string* null
@.str281 = private unnamed_addr constant [6 x i8] c"type \00"
@.str281.c = internal global %nyx_string* null
@.str282 = private unnamed_addr constant [2 x i8] c"<\00"
@.str282.c = internal global %nyx_string* null
@.str283 = private unnamed_addr constant [3 x i8] c", \00"
@.str283.c = internal global %nyx_string* null
@.str284 = private unnamed_addr constant [2 x i8] c">\00"
@.str284.c = internal global %nyx_string* null
@.str285 = private unnamed_addr constant [4 x i8] c"fn \00"
@.str285.c = internal global %nyx_string* null
@.str286 = private unnamed_addr constant [2 x i8] c"(\00"
@.str286.c = internal global %nyx_string* null
@.str287 = private unnamed_addr constant [1 x i8] c"\00"
@.str287.c = internal global %nyx_string* null
@.str288 = private unnamed_addr constant [3 x i8] c": \00"
@.str288.c = internal global %nyx_string* null
@.str289 = private unnamed_addr constant [2 x i8] c")\00"
@.str289.c = internal global %nyx_string* null
@.str290 = private unnamed_addr constant [5 x i8] c" -> \00"
@.str290.c = internal global %nyx_string* null
@.str291 = private unnamed_addr constant [4 x i8] c" {\0a\00"
@.str291.c = internal global %nyx_string* null
@.str292 = private unnamed_addr constant [2 x i8] c"}\00"
@.str292.c = internal global %nyx_string* null
@.str293 = private unnamed_addr constant [2 x i8] c"}\00"
@.str293.c = internal global %nyx_string* null
@.str294 = private unnamed_addr constant [5 x i8] c"impl\00"
@.str294.c = internal global %nyx_string* null
@.str295 = private unnamed_addr constant [2 x i8] c"<\00"
@.str295.c = internal global %nyx_string* null
@.str296 = private unnamed_addr constant [1 x i8] c"\00"
@.str296.c = internal global %nyx_string* null
@.str297 = private unnamed_addr constant [3 x i8] c", \00"
@.str297.c = internal global %nyx_string* null
@.str298 = private unnamed_addr constant [3 x i8] c"> \00"
@.str298.c = internal global %nyx_string* null
@.str299 = private unnamed_addr constant [2 x i8] c"<\00"
@.str299.c = internal global %nyx_string* null
@.str300 = private unnamed_addr constant [2 x i8] c">\00"
@.str300.c = internal global %nyx_string* null
@.str301 = private unnamed_addr constant [2 x i8] c" \00"
@.str301.c = internal global %nyx_string* null
@.str302 = private unnamed_addr constant [3 x i8] c" {\00"
@.str302.c = internal global %nyx_string* null
@.str303 = private unnamed_addr constant [1 x i8] c"\00"
@.str303.c = internal global %nyx_string* null
@.str304 = private unnamed_addr constant [2 x i8] c"}\00"
@.str304.c = internal global %nyx_string* null
@.str305 = private unnamed_addr constant [6 x i8] c"impl \00"
@.str305.c = internal global %nyx_string* null
@.str306 = private unnamed_addr constant [6 x i8] c" for \00"
@.str306.c = internal global %nyx_string* null
@.str307 = private unnamed_addr constant [3 x i8] c" {\00"
@.str307.c = internal global %nyx_string* null
@.str308 = private unnamed_addr constant [6 x i8] c"type \00"
@.str308.c = internal global %nyx_string* null
@.str309 = private unnamed_addr constant [4 x i8] c" = \00"
@.str309.c = internal global %nyx_string* null
@.str310 = private unnamed_addr constant [1 x i8] c"\00"
@.str310.c = internal global %nyx_string* null
@.str311 = private unnamed_addr constant [2 x i8] c"}\00"
@.str311.c = internal global %nyx_string* null
@.str312 = private unnamed_addr constant [10 x i8] c"import { \00"
@.str312.c = internal global %nyx_string* null
@.str313 = private unnamed_addr constant [3 x i8] c", \00"
@.str313.c = internal global %nyx_string* null
@.str314 = private unnamed_addr constant [10 x i8] c" } from \22\00"
@.str314.c = internal global %nyx_string* null
@.str315 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str315.c = internal global %nyx_string* null
@.str316 = private unnamed_addr constant [6 x i8] c"block\00"
@.str316.c = internal global %nyx_string* null
@.str317 = private unnamed_addr constant [1 x i8] c"\00"
@.str317.c = internal global %nyx_string* null
@.str318 = private unnamed_addr constant [8 x i8] c"NYX_SRC\00"
@.str318.c = internal global %nyx_string* null
@.str319 = private unnamed_addr constant [1 x i8] c"\00"
@.str319.c = internal global %nyx_string* null
@.str320 = private unnamed_addr constant [10 x i8] c"script.nx\00"
@.str320.c = internal global %nyx_string* null
@.str321 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str321.c = internal global %nyx_string* null
@__nyx_test_failed = external global i64
@__nyx_test_mode = external global i64
@.str.init.0 = private unnamed_addr constant [1 x i8] c"\00"
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
declare double @nyx_slot_float_conv(i64, i64, i64, i64) nounwind readonly
declare i64 @nyx_slot_int_conv(i64, i64, i64) nounwind readonly
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

@g_indent = global i64 0
@g_output = global %nyx_string* null

declare { i64, i8* }* @tokenize(%nyx_string*)
declare { i64, i8* }* @parse({ i64, i8* }*, %nyx_string*)

define internal %nyx_string* @indent_str(
) {
  %t3 = alloca %nyx_string*
  %t4 = alloca i64
  %t7 = alloca %nyx_string*
  %t1 = getelementptr [1 x i8], [1 x i8]* @.str0, i32 0, i32 0
  %t2 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str0.c, i8* %t1, i64 0)
  store %nyx_string* %t2, %nyx_string** %t3
  store i64 0, i64* %t4
  %t5 = getelementptr [5 x i8], [5 x i8]* @.str1, i32 0, i32 0
  %t6 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1.c, i8* %t5, i64 4)
  store %nyx_string* %t6, %nyx_string** %t7
  br label %while_cond0
while_cond0:
  %t8 = load i64, i64* %t4
  %t9 = load i64, i64* @g_indent
  %t10 = icmp slt i64 %t8, %t9
  br i1 %t10, label %while_body1, label %while_end2
while_body1:
  %t11 = load %nyx_string*, %nyx_string** %t3
  %t12 = load %nyx_string*, %nyx_string** %t7
  %t13 = call %nyx_string* @nyx_string_concat(%nyx_string* %t11, %nyx_string* %t12)
  store %nyx_string* %t13, %nyx_string** %t3
  %t14 = load i64, i64* %t4
  %t15 = add i64 %t14, 1
  store i64 %t15, i64* %t4
  br label %while_cond0
while_end2:
  %t16 = load %nyx_string*, %nyx_string** %t3
  ret %nyx_string* %t16
}

define internal i64 @out(
%nyx_string* %s.param) {
  %s.ptr = alloca %nyx_string*
  store %nyx_string* %s.param, %nyx_string** %s.ptr
  %t17 = load %nyx_string*, %nyx_string** @g_output
  %t18 = load %nyx_string*, %nyx_string** %s.ptr
  %t19 = call %nyx_string* @nyx_string_concat(%nyx_string* %t17, %nyx_string* %t18)
  store %nyx_string* %t19, %nyx_string** @g_output
  ret i64 0
}

define internal i64 @out_line(
%nyx_string* %s.param) {
  %s.ptr = alloca %nyx_string*
  store %nyx_string* %s.param, %nyx_string** %s.ptr
  %t20 = load %nyx_string*, %nyx_string** @g_output
  %t21 = call %nyx_string* @indent_str()
  %t22 = call %nyx_string* @nyx_string_concat(%nyx_string* %t20, %nyx_string* %t21)
  %t23 = load %nyx_string*, %nyx_string** %s.ptr
  %t24 = call %nyx_string* @nyx_string_concat(%nyx_string* %t22, %nyx_string* %t23)
  %t25 = getelementptr [2 x i8], [2 x i8]* @.str2, i32 0, i32 0
  %t26 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str2.c, i8* %t25, i64 1)
  %t27 = call %nyx_string* @nyx_string_concat(%nyx_string* %t24, %nyx_string* %t26)
  store %nyx_string* %t27, %nyx_string** @g_output
  ret i64 0
}

define internal i64 @out_empty(
) {
  %t28 = load %nyx_string*, %nyx_string** @g_output
  %t29 = getelementptr [2 x i8], [2 x i8]* @.str3, i32 0, i32 0
  %t30 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str3.c, i8* %t29, i64 1)
  %t31 = call %nyx_string* @nyx_string_concat(%nyx_string* %t28, %nyx_string* %t30)
  store %nyx_string* %t31, %nyx_string** @g_output
  ret i64 0
}

define internal %nyx_string* @node_type(
{ i64, i8* }* %node.param) {
  %node.ptr = alloca { i64, i8* }*
  %t35 = alloca %nyx_string*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %t32 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %t33 = call i64 @nyx_array_get_checked({ i64, i8* }* %t32, i64 0, i64 2)
  %t34 = inttoptr i64 %t33 to %nyx_string*
  store %nyx_string* %t34, %nyx_string** %t35
  %t36 = load %nyx_string*, %nyx_string** %t35
  ret %nyx_string* %t36
}

define internal { i64, i8* }* @node_data(
{ i64, i8* }* %node.param) {
  %node.ptr = alloca { i64, i8* }*
  %t40 = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %t37 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %t38 = call i64 @nyx_array_get({ i64, i8* }* %t37, i64 1)
  %t39 = inttoptr i64 %t38 to { i64, i8* }*
  store { i64, i8* }* %t39, { i64, i8* }** %t40
  %t41 = load { i64, i8* }*, { i64, i8* }** %t40
  ret { i64, i8* }* %t41
}

define internal %nyx_string* @tp_name_only(
%nyx_string* %tp.param) {
  %tp.ptr = alloca %nyx_string*
  %t46 = alloca i64
  store %nyx_string* %tp.param, %nyx_string** %tp.ptr
  %t42 = load %nyx_string*, %nyx_string** %tp.ptr
  %t43 = getelementptr [2 x i8], [2 x i8]* @.str4, i32 0, i32 0
  %t44 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str4.c, i8* %t43, i64 1)
  %t45 = call i64 @nyx_string_index_of(%nyx_string* %t42, %nyx_string* %t44)
  store i64 %t45, i64* %t46
  %t47 = load i64, i64* %t46
  %t48 = sub i64 0, 1
  %t49 = icmp eq i64 %t47, %t48
  br i1 %t49, label %then3, label %else4
then3:
  %t50 = load %nyx_string*, %nyx_string** %tp.ptr
  ret %nyx_string* %t50
else4:
  br label %merge5
merge5:
  %t51 = load %nyx_string*, %nyx_string** %tp.ptr
  %t52 = load i64, i64* %t46
  %t53 = call %nyx_string* @nyx_string_substring(%nyx_string* %t51, i64 0, i64 %t52)
  ret %nyx_string* %t53
}

define internal %nyx_string* @op_symbol(
%nyx_string* %token_type.param) {
  %token_type.ptr = alloca %nyx_string*
  store %nyx_string* %token_type.param, %nyx_string** %token_type.ptr
  %t54 = load %nyx_string*, %nyx_string** %token_type.ptr
  %t55 = getelementptr [5 x i8], [5 x i8]* @.str5, i32 0, i32 0
  %t56 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str5.c, i8* %t55, i64 4)
  %t57 = call i1 @nyx_string_equals(%nyx_string* %t54, %nyx_string* %t56)
  br i1 %t57, label %then6, label %else7
then6:
  %t58 = getelementptr [2 x i8], [2 x i8]* @.str6, i32 0, i32 0
  %t59 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str6.c, i8* %t58, i64 1)
  ret %nyx_string* %t59
else7:
  br label %merge8
merge8:
  %t60 = load %nyx_string*, %nyx_string** %token_type.ptr
  %t61 = getelementptr [6 x i8], [6 x i8]* @.str7, i32 0, i32 0
  %t62 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str7.c, i8* %t61, i64 5)
  %t63 = call i1 @nyx_string_equals(%nyx_string* %t60, %nyx_string* %t62)
  br i1 %t63, label %then9, label %else10
then9:
  %t64 = getelementptr [2 x i8], [2 x i8]* @.str8, i32 0, i32 0
  %t65 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str8.c, i8* %t64, i64 1)
  ret %nyx_string* %t65
else10:
  br label %merge11
merge11:
  %t66 = load %nyx_string*, %nyx_string** %token_type.ptr
  %t67 = getelementptr [5 x i8], [5 x i8]* @.str9, i32 0, i32 0
  %t68 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str9.c, i8* %t67, i64 4)
  %t69 = call i1 @nyx_string_equals(%nyx_string* %t66, %nyx_string* %t68)
  br i1 %t69, label %then12, label %else13
then12:
  %t70 = getelementptr [2 x i8], [2 x i8]* @.str10, i32 0, i32 0
  %t71 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str10.c, i8* %t70, i64 1)
  ret %nyx_string* %t71
else13:
  br label %merge14
merge14:
  %t72 = load %nyx_string*, %nyx_string** %token_type.ptr
  %t73 = getelementptr [6 x i8], [6 x i8]* @.str11, i32 0, i32 0
  %t74 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str11.c, i8* %t73, i64 5)
  %t75 = call i1 @nyx_string_equals(%nyx_string* %t72, %nyx_string* %t74)
  br i1 %t75, label %then15, label %else16
then15:
  %t76 = getelementptr [2 x i8], [2 x i8]* @.str12, i32 0, i32 0
  %t77 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str12.c, i8* %t76, i64 1)
  ret %nyx_string* %t77
else16:
  br label %merge17
merge17:
  %t78 = load %nyx_string*, %nyx_string** %token_type.ptr
  %t79 = getelementptr [8 x i8], [8 x i8]* @.str13, i32 0, i32 0
  %t80 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str13.c, i8* %t79, i64 7)
  %t81 = call i1 @nyx_string_equals(%nyx_string* %t78, %nyx_string* %t80)
  br i1 %t81, label %then18, label %else19
then18:
  %t82 = getelementptr [2 x i8], [2 x i8]* @.str14, i32 0, i32 0
  %t83 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str14.c, i8* %t82, i64 1)
  ret %nyx_string* %t83
else19:
  br label %merge20
merge20:
  %t84 = load %nyx_string*, %nyx_string** %token_type.ptr
  %t85 = getelementptr [6 x i8], [6 x i8]* @.str15, i32 0, i32 0
  %t86 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str15.c, i8* %t85, i64 5)
  %t87 = call i1 @nyx_string_equals(%nyx_string* %t84, %nyx_string* %t86)
  br i1 %t87, label %then21, label %else22
then21:
  %t88 = getelementptr [3 x i8], [3 x i8]* @.str16, i32 0, i32 0
  %t89 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str16.c, i8* %t88, i64 2)
  ret %nyx_string* %t89
else22:
  br label %merge23
merge23:
  %t90 = load %nyx_string*, %nyx_string** %token_type.ptr
  %t91 = getelementptr [12 x i8], [12 x i8]* @.str17, i32 0, i32 0
  %t92 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str17.c, i8* %t91, i64 11)
  %t93 = call i1 @nyx_string_equals(%nyx_string* %t90, %nyx_string* %t92)
  br i1 %t93, label %then24, label %else25
then24:
  %t94 = getelementptr [3 x i8], [3 x i8]* @.str18, i32 0, i32 0
  %t95 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str18.c, i8* %t94, i64 2)
  ret %nyx_string* %t95
else25:
  br label %merge26
merge26:
  %t96 = load %nyx_string*, %nyx_string** %token_type.ptr
  %t97 = getelementptr [10 x i8], [10 x i8]* @.str19, i32 0, i32 0
  %t98 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str19.c, i8* %t97, i64 9)
  %t99 = call i1 @nyx_string_equals(%nyx_string* %t96, %nyx_string* %t98)
  br i1 %t99, label %then27, label %else28
then27:
  %t100 = getelementptr [3 x i8], [3 x i8]* @.str20, i32 0, i32 0
  %t101 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str20.c, i8* %t100, i64 2)
  ret %nyx_string* %t101
else28:
  br label %merge29
merge29:
  %t102 = load %nyx_string*, %nyx_string** %token_type.ptr
  %t103 = getelementptr [5 x i8], [5 x i8]* @.str21, i32 0, i32 0
  %t104 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str21.c, i8* %t103, i64 4)
  %t105 = call i1 @nyx_string_equals(%nyx_string* %t102, %nyx_string* %t104)
  br i1 %t105, label %then30, label %else31
then30:
  %t106 = getelementptr [2 x i8], [2 x i8]* @.str22, i32 0, i32 0
  %t107 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str22.c, i8* %t106, i64 1)
  ret %nyx_string* %t107
else31:
  br label %merge32
merge32:
  %t108 = load %nyx_string*, %nyx_string** %token_type.ptr
  %t109 = getelementptr [11 x i8], [11 x i8]* @.str23, i32 0, i32 0
  %t110 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str23.c, i8* %t109, i64 10)
  %t111 = call i1 @nyx_string_equals(%nyx_string* %t108, %nyx_string* %t110)
  br i1 %t111, label %then33, label %else34
then33:
  %t112 = getelementptr [3 x i8], [3 x i8]* @.str24, i32 0, i32 0
  %t113 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str24.c, i8* %t112, i64 2)
  ret %nyx_string* %t113
else34:
  br label %merge35
merge35:
  %t114 = load %nyx_string*, %nyx_string** %token_type.ptr
  %t115 = getelementptr [8 x i8], [8 x i8]* @.str25, i32 0, i32 0
  %t116 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str25.c, i8* %t115, i64 7)
  %t117 = call i1 @nyx_string_equals(%nyx_string* %t114, %nyx_string* %t116)
  br i1 %t117, label %then36, label %else37
then36:
  %t118 = getelementptr [2 x i8], [2 x i8]* @.str26, i32 0, i32 0
  %t119 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str26.c, i8* %t118, i64 1)
  ret %nyx_string* %t119
else37:
  br label %merge38
merge38:
  %t120 = load %nyx_string*, %nyx_string** %token_type.ptr
  %t121 = getelementptr [14 x i8], [14 x i8]* @.str27, i32 0, i32 0
  %t122 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str27.c, i8* %t121, i64 13)
  %t123 = call i1 @nyx_string_equals(%nyx_string* %t120, %nyx_string* %t122)
  br i1 %t123, label %then39, label %else40
then39:
  %t124 = getelementptr [3 x i8], [3 x i8]* @.str28, i32 0, i32 0
  %t125 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str28.c, i8* %t124, i64 2)
  ret %nyx_string* %t125
else40:
  br label %merge41
merge41:
  %t126 = load %nyx_string*, %nyx_string** %token_type.ptr
  %t127 = getelementptr [4 x i8], [4 x i8]* @.str29, i32 0, i32 0
  %t128 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str29.c, i8* %t127, i64 3)
  %t129 = call i1 @nyx_string_equals(%nyx_string* %t126, %nyx_string* %t128)
  br i1 %t129, label %then42, label %else43
then42:
  %t130 = getelementptr [4 x i8], [4 x i8]* @.str30, i32 0, i32 0
  %t131 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str30.c, i8* %t130, i64 3)
  ret %nyx_string* %t131
else43:
  br label %merge44
merge44:
  %t132 = load %nyx_string*, %nyx_string** %token_type.ptr
  %t133 = getelementptr [8 x i8], [8 x i8]* @.str31, i32 0, i32 0
  %t134 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str31.c, i8* %t133, i64 7)
  %t135 = call i1 @nyx_string_equals(%nyx_string* %t132, %nyx_string* %t134)
  br i1 %t135, label %then45, label %else46
then45:
  %t136 = getelementptr [4 x i8], [4 x i8]* @.str32, i32 0, i32 0
  %t137 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str32.c, i8* %t136, i64 3)
  ret %nyx_string* %t137
else46:
  br label %merge47
merge47:
  %t138 = load %nyx_string*, %nyx_string** %token_type.ptr
  %t139 = getelementptr [3 x i8], [3 x i8]* @.str33, i32 0, i32 0
  %t140 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str33.c, i8* %t139, i64 2)
  %t141 = call i1 @nyx_string_equals(%nyx_string* %t138, %nyx_string* %t140)
  br i1 %t141, label %then48, label %else49
then48:
  %t142 = getelementptr [3 x i8], [3 x i8]* @.str34, i32 0, i32 0
  %t143 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str34.c, i8* %t142, i64 2)
  ret %nyx_string* %t143
else49:
  br label %merge50
merge50:
  %t144 = load %nyx_string*, %nyx_string** %token_type.ptr
  %t145 = getelementptr [6 x i8], [6 x i8]* @.str35, i32 0, i32 0
  %t146 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str35.c, i8* %t145, i64 5)
  %t147 = call i1 @nyx_string_equals(%nyx_string* %t144, %nyx_string* %t146)
  br i1 %t147, label %then51, label %else52
then51:
  %t148 = getelementptr [3 x i8], [3 x i8]* @.str36, i32 0, i32 0
  %t149 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str36.c, i8* %t148, i64 2)
  ret %nyx_string* %t149
else52:
  br label %merge53
merge53:
  %t150 = load %nyx_string*, %nyx_string** %token_type.ptr
  %t151 = getelementptr [4 x i8], [4 x i8]* @.str37, i32 0, i32 0
  %t152 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str37.c, i8* %t151, i64 3)
  %t153 = call i1 @nyx_string_equals(%nyx_string* %t150, %nyx_string* %t152)
  br i1 %t153, label %then54, label %else55
then54:
  %t154 = getelementptr [4 x i8], [4 x i8]* @.str38, i32 0, i32 0
  %t155 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str38.c, i8* %t154, i64 3)
  ret %nyx_string* %t155
else55:
  br label %merge56
merge56:
  %t156 = load %nyx_string*, %nyx_string** %token_type.ptr
  %t157 = getelementptr [12 x i8], [12 x i8]* @.str39, i32 0, i32 0
  %t158 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str39.c, i8* %t157, i64 11)
  %t159 = call i1 @nyx_string_equals(%nyx_string* %t156, %nyx_string* %t158)
  br i1 %t159, label %then57, label %else58
then57:
  %t160 = getelementptr [3 x i8], [3 x i8]* @.str40, i32 0, i32 0
  %t161 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str40.c, i8* %t160, i64 2)
  ret %nyx_string* %t161
else58:
  br label %merge59
merge59:
  %t162 = load %nyx_string*, %nyx_string** %token_type.ptr
  %t163 = getelementptr [13 x i8], [13 x i8]* @.str41, i32 0, i32 0
  %t164 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str41.c, i8* %t163, i64 12)
  %t165 = call i1 @nyx_string_equals(%nyx_string* %t162, %nyx_string* %t164)
  br i1 %t165, label %then60, label %else61
then60:
  %t166 = getelementptr [3 x i8], [3 x i8]* @.str42, i32 0, i32 0
  %t167 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str42.c, i8* %t166, i64 2)
  ret %nyx_string* %t167
else61:
  br label %merge62
merge62:
  %t168 = load %nyx_string*, %nyx_string** %token_type.ptr
  %t169 = getelementptr [12 x i8], [12 x i8]* @.str43, i32 0, i32 0
  %t170 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str43.c, i8* %t169, i64 11)
  %t171 = call i1 @nyx_string_equals(%nyx_string* %t168, %nyx_string* %t170)
  br i1 %t171, label %then63, label %else64
then63:
  %t172 = getelementptr [3 x i8], [3 x i8]* @.str44, i32 0, i32 0
  %t173 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str44.c, i8* %t172, i64 2)
  ret %nyx_string* %t173
else64:
  br label %merge65
merge65:
  %t174 = load %nyx_string*, %nyx_string** %token_type.ptr
  %t175 = getelementptr [13 x i8], [13 x i8]* @.str45, i32 0, i32 0
  %t176 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str45.c, i8* %t175, i64 12)
  %t177 = call i1 @nyx_string_equals(%nyx_string* %t174, %nyx_string* %t176)
  br i1 %t177, label %then66, label %else67
then66:
  %t178 = getelementptr [3 x i8], [3 x i8]* @.str46, i32 0, i32 0
  %t179 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str46.c, i8* %t178, i64 2)
  ret %nyx_string* %t179
else67:
  br label %merge68
merge68:
  %t180 = load %nyx_string*, %nyx_string** %token_type.ptr
  %t181 = getelementptr [15 x i8], [15 x i8]* @.str47, i32 0, i32 0
  %t182 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str47.c, i8* %t181, i64 14)
  %t183 = call i1 @nyx_string_equals(%nyx_string* %t180, %nyx_string* %t182)
  br i1 %t183, label %then69, label %else70
then69:
  %t184 = getelementptr [3 x i8], [3 x i8]* @.str48, i32 0, i32 0
  %t185 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str48.c, i8* %t184, i64 2)
  ret %nyx_string* %t185
else70:
  br label %merge71
merge71:
  %t186 = load %nyx_string*, %nyx_string** %token_type.ptr
  %t187 = getelementptr [4 x i8], [4 x i8]* @.str49, i32 0, i32 0
  %t188 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str49.c, i8* %t187, i64 3)
  %t189 = call i1 @nyx_string_equals(%nyx_string* %t186, %nyx_string* %t188)
  br i1 %t189, label %then72, label %else73
then72:
  %t190 = getelementptr [2 x i8], [2 x i8]* @.str50, i32 0, i32 0
  %t191 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str50.c, i8* %t190, i64 1)
  ret %nyx_string* %t191
else73:
  br label %merge74
merge74:
  %t192 = load %nyx_string*, %nyx_string** %token_type.ptr
  %t193 = getelementptr [5 x i8], [5 x i8]* @.str51, i32 0, i32 0
  %t194 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str51.c, i8* %t193, i64 4)
  %t195 = call i1 @nyx_string_equals(%nyx_string* %t192, %nyx_string* %t194)
  br i1 %t195, label %then75, label %else76
then75:
  %t196 = getelementptr [2 x i8], [2 x i8]* @.str52, i32 0, i32 0
  %t197 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str52.c, i8* %t196, i64 1)
  ret %nyx_string* %t197
else76:
  br label %merge77
merge77:
  %t198 = load %nyx_string*, %nyx_string** %token_type.ptr
  %t199 = getelementptr [6 x i8], [6 x i8]* @.str53, i32 0, i32 0
  %t200 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str53.c, i8* %t199, i64 5)
  %t201 = call i1 @nyx_string_equals(%nyx_string* %t198, %nyx_string* %t200)
  br i1 %t201, label %then78, label %else79
then78:
  %t202 = getelementptr [2 x i8], [2 x i8]* @.str54, i32 0, i32 0
  %t203 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str54.c, i8* %t202, i64 1)
  ret %nyx_string* %t203
else79:
  br label %merge80
merge80:
  %t204 = load %nyx_string*, %nyx_string** %token_type.ptr
  %t205 = getelementptr [6 x i8], [6 x i8]* @.str55, i32 0, i32 0
  %t206 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str55.c, i8* %t205, i64 5)
  %t207 = call i1 @nyx_string_equals(%nyx_string* %t204, %nyx_string* %t206)
  br i1 %t207, label %then81, label %else82
then81:
  %t208 = getelementptr [2 x i8], [2 x i8]* @.str56, i32 0, i32 0
  %t209 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str56.c, i8* %t208, i64 1)
  ret %nyx_string* %t209
else82:
  br label %merge83
merge83:
  %t210 = load %nyx_string*, %nyx_string** %token_type.ptr
  %t211 = getelementptr [11 x i8], [11 x i8]* @.str57, i32 0, i32 0
  %t212 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str57.c, i8* %t211, i64 10)
  %t213 = call i1 @nyx_string_equals(%nyx_string* %t210, %nyx_string* %t212)
  br i1 %t213, label %then84, label %else85
then84:
  %t214 = getelementptr [3 x i8], [3 x i8]* @.str58, i32 0, i32 0
  %t215 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str58.c, i8* %t214, i64 2)
  ret %nyx_string* %t215
else85:
  br label %merge86
merge86:
  %t216 = load %nyx_string*, %nyx_string** %token_type.ptr
  %t217 = getelementptr [12 x i8], [12 x i8]* @.str59, i32 0, i32 0
  %t218 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str59.c, i8* %t217, i64 11)
  %t219 = call i1 @nyx_string_equals(%nyx_string* %t216, %nyx_string* %t218)
  br i1 %t219, label %then87, label %else88
then87:
  %t220 = getelementptr [3 x i8], [3 x i8]* @.str60, i32 0, i32 0
  %t221 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str60.c, i8* %t220, i64 2)
  ret %nyx_string* %t221
else88:
  br label %merge89
merge89:
  %t222 = load %nyx_string*, %nyx_string** %token_type.ptr
  %t223 = getelementptr [11 x i8], [11 x i8]* @.str61, i32 0, i32 0
  %t224 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str61.c, i8* %t223, i64 10)
  %t225 = call i1 @nyx_string_equals(%nyx_string* %t222, %nyx_string* %t224)
  br i1 %t225, label %then90, label %else91
then90:
  %t226 = getelementptr [3 x i8], [3 x i8]* @.str62, i32 0, i32 0
  %t227 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str62.c, i8* %t226, i64 2)
  ret %nyx_string* %t227
else91:
  br label %merge92
merge92:
  %t228 = load %nyx_string*, %nyx_string** %token_type.ptr
  %t229 = getelementptr [12 x i8], [12 x i8]* @.str63, i32 0, i32 0
  %t230 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str63.c, i8* %t229, i64 11)
  %t231 = call i1 @nyx_string_equals(%nyx_string* %t228, %nyx_string* %t230)
  br i1 %t231, label %then93, label %else94
then93:
  %t232 = getelementptr [3 x i8], [3 x i8]* @.str64, i32 0, i32 0
  %t233 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str64.c, i8* %t232, i64 2)
  ret %nyx_string* %t233
else94:
  br label %merge95
merge95:
  %t234 = load %nyx_string*, %nyx_string** %token_type.ptr
  %t235 = getelementptr [13 x i8], [13 x i8]* @.str65, i32 0, i32 0
  %t236 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str65.c, i8* %t235, i64 12)
  %t237 = call i1 @nyx_string_equals(%nyx_string* %t234, %nyx_string* %t236)
  br i1 %t237, label %then96, label %else97
then96:
  %t238 = getelementptr [3 x i8], [3 x i8]* @.str66, i32 0, i32 0
  %t239 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str66.c, i8* %t238, i64 2)
  ret %nyx_string* %t239
else97:
  br label %merge98
merge98:
  %t240 = load %nyx_string*, %nyx_string** %token_type.ptr
  %t241 = getelementptr [18 x i8], [18 x i8]* @.str67, i32 0, i32 0
  %t242 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str67.c, i8* %t241, i64 17)
  %t243 = call i1 @nyx_string_equals(%nyx_string* %t240, %nyx_string* %t242)
  br i1 %t243, label %then99, label %else100
then99:
  %t244 = getelementptr [4 x i8], [4 x i8]* @.str68, i32 0, i32 0
  %t245 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str68.c, i8* %t244, i64 3)
  ret %nyx_string* %t245
else100:
  br label %merge101
merge101:
  %t246 = load %nyx_string*, %nyx_string** %token_type.ptr
  %t247 = getelementptr [19 x i8], [19 x i8]* @.str69, i32 0, i32 0
  %t248 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str69.c, i8* %t247, i64 18)
  %t249 = call i1 @nyx_string_equals(%nyx_string* %t246, %nyx_string* %t248)
  br i1 %t249, label %then102, label %else103
then102:
  %t250 = getelementptr [4 x i8], [4 x i8]* @.str70, i32 0, i32 0
  %t251 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str70.c, i8* %t250, i64 3)
  ret %nyx_string* %t251
else103:
  br label %merge104
merge104:
  %t252 = load %nyx_string*, %nyx_string** %token_type.ptr
  ret %nyx_string* %t252
}

define internal %nyx_string* @fmt_expr(
{ i64, i8* }* %node.param) {
  %node.ptr = alloca { i64, i8* }*
  %t255 = alloca %nyx_string*
  %t258 = alloca { i64, i8* }*
  %t266 = alloca %nyx_string*
  %t275 = alloca %nyx_string*
  %t290 = alloca %nyx_string*
  %t305 = alloca %nyx_string*
  %t314 = alloca %nyx_string*
  %t323 = alloca %nyx_string*
  %t327 = alloca { i64, i8* }*
  %t331 = alloca { i64, i8* }*
  %t353 = alloca %nyx_string*
  %t357 = alloca { i64, i8* }*
  %t360 = alloca %nyx_string*
  %t390 = alloca { i64, i8* }*
  %t394 = alloca { i64, i8* }*
  %t400 = alloca %nyx_string*
  %t401 = alloca i64
  %t404 = alloca %nyx_string*
  %t418 = alloca { i64, i8* }*
  %t436 = alloca { i64, i8* }*
  %t440 = alloca { i64, i8* }*
  %t446 = alloca %nyx_string*
  %t447 = alloca i64
  %t450 = alloca %nyx_string*
  %t464 = alloca %nyx_string*
  %t480 = alloca { i64, i8* }*
  %t488 = alloca i64
  %t491 = alloca %nyx_string*
  %t505 = alloca { i64, i8* }*
  %t524 = alloca { i64, i8* }*
  %t528 = alloca %nyx_string*
  %t532 = alloca { i64, i8* }*
  %t543 = alloca %nyx_string*
  %t544 = alloca i64
  %t547 = alloca %nyx_string*
  %t561 = alloca { i64, i8* }*
  %t579 = alloca { i64, i8* }*
  %t583 = alloca %nyx_string*
  %t598 = alloca { i64, i8* }*
  %t602 = alloca { i64, i8* }*
  %t621 = alloca { i64, i8* }*
  %t625 = alloca %nyx_string*
  %t640 = alloca { i64, i8* }*
  %t643 = alloca %nyx_string*
  %t644 = alloca i64
  %t647 = alloca %nyx_string*
  %t661 = alloca { i64, i8* }*
  %t679 = alloca { i64, i8* }*
  %t682 = alloca %nyx_string*
  %t683 = alloca i64
  %t686 = alloca %nyx_string*
  %t700 = alloca { i64, i8* }*
  %t718 = alloca %nyx_string*
  %t722 = alloca { i64, i8* }*
  %t724 = alloca { i64, i8* }*
  %t731 = alloca { i64, i8* }*
  %t734 = alloca %nyx_string*
  %t742 = alloca i64
  %t745 = alloca %nyx_string*
  %t759 = alloca %nyx_string*
  %t773 = alloca i64
  %t776 = alloca %nyx_string*
  %t779 = alloca %nyx_string*
  %t782 = alloca %nyx_string*
  %t796 = alloca { i64, i8* }*
  %t800 = alloca %nyx_string*
  %t804 = alloca { i64, i8* }*
  %t828 = alloca { i64, i8* }*
  %t832 = alloca { i64, i8* }*
  %t836 = alloca %nyx_string*
  %t864 = alloca { i64, i8* }*
  %t877 = alloca { i64, i8* }*
  %t881 = alloca { i64, i8* }*
  %t889 = alloca { i64, i8* }*
  %t893 = alloca %nyx_string*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %t253 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %t254 = call %nyx_string* @node_type({ i64, i8* }* %t253)
  store %nyx_string* %t254, %nyx_string** %t255
  %t256 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %t257 = call { i64, i8* }* @node_data({ i64, i8* }* %t256)
  store { i64, i8* }* %t257, { i64, i8* }** %t258
  %t259 = load %nyx_string*, %nyx_string** %t255
  %t260 = getelementptr [7 x i8], [7 x i8]* @.str71, i32 0, i32 0
  %t261 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str71.c, i8* %t260, i64 6)
  %t262 = call i1 @nyx_string_equals(%nyx_string* %t259, %nyx_string* %t261)
  br i1 %t262, label %then105, label %else106
then105:
  %t263 = load { i64, i8* }*, { i64, i8* }** %t258
  %t264 = call i64 @nyx_array_get_checked({ i64, i8* }* %t263, i64 0, i64 2)
  %t265 = inttoptr i64 %t264 to %nyx_string*
  store %nyx_string* %t265, %nyx_string** %t266
  %t267 = load %nyx_string*, %nyx_string** %t266
  ret %nyx_string* %t267
else106:
  br label %merge107
merge107:
  %t268 = load %nyx_string*, %nyx_string** %t255
  %t269 = getelementptr [7 x i8], [7 x i8]* @.str72, i32 0, i32 0
  %t270 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str72.c, i8* %t269, i64 6)
  %t271 = call i1 @nyx_string_equals(%nyx_string* %t268, %nyx_string* %t270)
  br i1 %t271, label %then108, label %else109
then108:
  %t272 = load { i64, i8* }*, { i64, i8* }** %t258
  %t273 = call i64 @nyx_array_get_checked({ i64, i8* }* %t272, i64 0, i64 2)
  %t274 = inttoptr i64 %t273 to %nyx_string*
  store %nyx_string* %t274, %nyx_string** %t275
  %t276 = getelementptr [2 x i8], [2 x i8]* @.str73, i32 0, i32 0
  %t277 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str73.c, i8* %t276, i64 1)
  %t278 = load %nyx_string*, %nyx_string** %t275
  %t279 = call %nyx_string* @nyx_string_concat(%nyx_string* %t277, %nyx_string* %t278)
  %t280 = getelementptr [2 x i8], [2 x i8]* @.str74, i32 0, i32 0
  %t281 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str74.c, i8* %t280, i64 1)
  %t282 = call %nyx_string* @nyx_string_concat(%nyx_string* %t279, %nyx_string* %t281)
  ret %nyx_string* %t282
else109:
  br label %merge110
merge110:
  %t283 = load %nyx_string*, %nyx_string** %t255
  %t284 = getelementptr [5 x i8], [5 x i8]* @.str75, i32 0, i32 0
  %t285 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str75.c, i8* %t284, i64 4)
  %t286 = call i1 @nyx_string_equals(%nyx_string* %t283, %nyx_string* %t285)
  br i1 %t286, label %then111, label %else112
then111:
  %t287 = load { i64, i8* }*, { i64, i8* }** %t258
  %t288 = call i64 @nyx_array_get_checked({ i64, i8* }* %t287, i64 0, i64 2)
  %t289 = inttoptr i64 %t288 to %nyx_string*
  store %nyx_string* %t289, %nyx_string** %t290
  %t291 = getelementptr [2 x i8], [2 x i8]* @.str76, i32 0, i32 0
  %t292 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str76.c, i8* %t291, i64 1)
  %t293 = load %nyx_string*, %nyx_string** %t290
  %t294 = call %nyx_string* @nyx_string_concat(%nyx_string* %t292, %nyx_string* %t293)
  %t295 = getelementptr [2 x i8], [2 x i8]* @.str77, i32 0, i32 0
  %t296 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str77.c, i8* %t295, i64 1)
  %t297 = call %nyx_string* @nyx_string_concat(%nyx_string* %t294, %nyx_string* %t296)
  ret %nyx_string* %t297
else112:
  br label %merge113
merge113:
  %t298 = load %nyx_string*, %nyx_string** %t255
  %t299 = getelementptr [5 x i8], [5 x i8]* @.str78, i32 0, i32 0
  %t300 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str78.c, i8* %t299, i64 4)
  %t301 = call i1 @nyx_string_equals(%nyx_string* %t298, %nyx_string* %t300)
  br i1 %t301, label %then114, label %else115
then114:
  %t302 = load { i64, i8* }*, { i64, i8* }** %t258
  %t303 = call i64 @nyx_array_get_checked({ i64, i8* }* %t302, i64 0, i64 2)
  %t304 = inttoptr i64 %t303 to %nyx_string*
  store %nyx_string* %t304, %nyx_string** %t305
  %t306 = load %nyx_string*, %nyx_string** %t305
  ret %nyx_string* %t306
else115:
  br label %merge116
merge116:
  %t307 = load %nyx_string*, %nyx_string** %t255
  %t308 = getelementptr [11 x i8], [11 x i8]* @.str79, i32 0, i32 0
  %t309 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str79.c, i8* %t308, i64 10)
  %t310 = call i1 @nyx_string_equals(%nyx_string* %t307, %nyx_string* %t309)
  br i1 %t310, label %then117, label %else118
then117:
  %t311 = load { i64, i8* }*, { i64, i8* }** %t258
  %t312 = call i64 @nyx_array_get_checked({ i64, i8* }* %t311, i64 0, i64 2)
  %t313 = inttoptr i64 %t312 to %nyx_string*
  store %nyx_string* %t313, %nyx_string** %t314
  %t315 = load %nyx_string*, %nyx_string** %t314
  ret %nyx_string* %t315
else118:
  br label %merge119
merge119:
  %t316 = load %nyx_string*, %nyx_string** %t255
  %t317 = getelementptr [6 x i8], [6 x i8]* @.str80, i32 0, i32 0
  %t318 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str80.c, i8* %t317, i64 5)
  %t319 = call i1 @nyx_string_equals(%nyx_string* %t316, %nyx_string* %t318)
  br i1 %t319, label %then120, label %else121
then120:
  %t320 = load { i64, i8* }*, { i64, i8* }** %t258
  %t321 = call i64 @nyx_array_get_checked({ i64, i8* }* %t320, i64 0, i64 2)
  %t322 = inttoptr i64 %t321 to %nyx_string*
  store %nyx_string* %t322, %nyx_string** %t323
  %t324 = load { i64, i8* }*, { i64, i8* }** %t258
  %t325 = call i64 @nyx_array_get({ i64, i8* }* %t324, i64 1)
  %t326 = inttoptr i64 %t325 to { i64, i8* }*
  store { i64, i8* }* %t326, { i64, i8* }** %t327
  %t328 = load { i64, i8* }*, { i64, i8* }** %t258
  %t329 = call i64 @nyx_array_get({ i64, i8* }* %t328, i64 2)
  %t330 = inttoptr i64 %t329 to { i64, i8* }*
  store { i64, i8* }* %t330, { i64, i8* }** %t331
  %t332 = load { i64, i8* }*, { i64, i8* }** %t327
  %t333 = call %nyx_string* @fmt_expr({ i64, i8* }* %t332)
  %t334 = getelementptr [2 x i8], [2 x i8]* @.str81, i32 0, i32 0
  %t335 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str81.c, i8* %t334, i64 1)
  %t336 = call %nyx_string* @nyx_string_concat(%nyx_string* %t333, %nyx_string* %t335)
  %t337 = load %nyx_string*, %nyx_string** %t323
  %t338 = call %nyx_string* @op_symbol(%nyx_string* %t337)
  %t339 = call %nyx_string* @nyx_string_concat(%nyx_string* %t336, %nyx_string* %t338)
  %t340 = getelementptr [2 x i8], [2 x i8]* @.str82, i32 0, i32 0
  %t341 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str82.c, i8* %t340, i64 1)
  %t342 = call %nyx_string* @nyx_string_concat(%nyx_string* %t339, %nyx_string* %t341)
  %t343 = load { i64, i8* }*, { i64, i8* }** %t331
  %t344 = call %nyx_string* @fmt_expr({ i64, i8* }* %t343)
  %t345 = call %nyx_string* @nyx_string_concat(%nyx_string* %t342, %nyx_string* %t344)
  ret %nyx_string* %t345
else121:
  br label %merge122
merge122:
  %t346 = load %nyx_string*, %nyx_string** %t255
  %t347 = getelementptr [5 x i8], [5 x i8]* @.str83, i32 0, i32 0
  %t348 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str83.c, i8* %t347, i64 4)
  %t349 = call i1 @nyx_string_equals(%nyx_string* %t346, %nyx_string* %t348)
  br i1 %t349, label %then123, label %else124
then123:
  %t350 = load { i64, i8* }*, { i64, i8* }** %t258
  %t351 = call i64 @nyx_array_get_checked({ i64, i8* }* %t350, i64 0, i64 2)
  %t352 = inttoptr i64 %t351 to %nyx_string*
  store %nyx_string* %t352, %nyx_string** %t353
  %t354 = load { i64, i8* }*, { i64, i8* }** %t258
  %t355 = call i64 @nyx_array_get({ i64, i8* }* %t354, i64 1)
  %t356 = inttoptr i64 %t355 to { i64, i8* }*
  store { i64, i8* }* %t356, { i64, i8* }** %t357
  %t358 = load %nyx_string*, %nyx_string** %t353
  %t359 = call %nyx_string* @op_symbol(%nyx_string* %t358)
  store %nyx_string* %t359, %nyx_string** %t360
  %t361 = load %nyx_string*, %nyx_string** %t360
  %t362 = getelementptr [4 x i8], [4 x i8]* @.str84, i32 0, i32 0
  %t363 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str84.c, i8* %t362, i64 3)
  %t364 = call i1 @nyx_string_equals(%nyx_string* %t361, %nyx_string* %t363)
  br i1 %t364, label %then126, label %else127
then126:
  %t365 = getelementptr [5 x i8], [5 x i8]* @.str85, i32 0, i32 0
  %t366 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str85.c, i8* %t365, i64 4)
  %t367 = load { i64, i8* }*, { i64, i8* }** %t357
  %t368 = call %nyx_string* @fmt_expr({ i64, i8* }* %t367)
  %t369 = call %nyx_string* @nyx_string_concat(%nyx_string* %t366, %nyx_string* %t368)
  ret %nyx_string* %t369
else127:
  br label %merge128
merge128:
  %t370 = load %nyx_string*, %nyx_string** %t360
  %t371 = getelementptr [2 x i8], [2 x i8]* @.str86, i32 0, i32 0
  %t372 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str86.c, i8* %t371, i64 1)
  %t373 = call i1 @nyx_string_equals(%nyx_string* %t370, %nyx_string* %t372)
  br i1 %t373, label %then129, label %else130
then129:
  %t374 = getelementptr [2 x i8], [2 x i8]* @.str87, i32 0, i32 0
  %t375 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str87.c, i8* %t374, i64 1)
  %t376 = load { i64, i8* }*, { i64, i8* }** %t357
  %t377 = call %nyx_string* @fmt_expr({ i64, i8* }* %t376)
  %t378 = call %nyx_string* @nyx_string_concat(%nyx_string* %t375, %nyx_string* %t377)
  ret %nyx_string* %t378
else130:
  br label %merge131
merge131:
  %t379 = load %nyx_string*, %nyx_string** %t360
  %t380 = load { i64, i8* }*, { i64, i8* }** %t357
  %t381 = call %nyx_string* @fmt_expr({ i64, i8* }* %t380)
  %t382 = call %nyx_string* @nyx_string_concat(%nyx_string* %t379, %nyx_string* %t381)
  ret %nyx_string* %t382
else124:
  br label %merge125
merge125:
  %t383 = load %nyx_string*, %nyx_string** %t255
  %t384 = getelementptr [5 x i8], [5 x i8]* @.str88, i32 0, i32 0
  %t385 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str88.c, i8* %t384, i64 4)
  %t386 = call i1 @nyx_string_equals(%nyx_string* %t383, %nyx_string* %t385)
  br i1 %t386, label %then132, label %else133
then132:
  %t387 = load { i64, i8* }*, { i64, i8* }** %t258
  %t388 = call i64 @nyx_array_get({ i64, i8* }* %t387, i64 0)
  %t389 = inttoptr i64 %t388 to { i64, i8* }*
  store { i64, i8* }* %t389, { i64, i8* }** %t390
  %t391 = load { i64, i8* }*, { i64, i8* }** %t258
  %t392 = call i64 @nyx_array_get({ i64, i8* }* %t391, i64 1)
  %t393 = inttoptr i64 %t392 to { i64, i8* }*
  store { i64, i8* }* %t393, { i64, i8* }** %t394
  %t395 = load { i64, i8* }*, { i64, i8* }** %t390
  %t396 = call %nyx_string* @fmt_expr({ i64, i8* }* %t395)
  %t397 = getelementptr [2 x i8], [2 x i8]* @.str89, i32 0, i32 0
  %t398 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str89.c, i8* %t397, i64 1)
  %t399 = call %nyx_string* @nyx_string_concat(%nyx_string* %t396, %nyx_string* %t398)
  store %nyx_string* %t399, %nyx_string** %t400
  store i64 0, i64* %t401
  %t402 = getelementptr [3 x i8], [3 x i8]* @.str90, i32 0, i32 0
  %t403 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str90.c, i8* %t402, i64 2)
  store %nyx_string* %t403, %nyx_string** %t404
  br label %while_cond135
while_cond135:
  %t405 = load i64, i64* %t401
  %t406 = load { i64, i8* }*, { i64, i8* }** %t394
  %t407 = call i64 @nyx_array_length({ i64, i8* }* %t406)
  %t408 = icmp slt i64 %t405, %t407
  br i1 %t408, label %while_body136, label %while_end137
while_body136:
  %t409 = load i64, i64* %t401
  %t410 = icmp sgt i64 %t409, 0
  br i1 %t410, label %then138, label %else139
then138:
  %t411 = load %nyx_string*, %nyx_string** %t400
  %t412 = load %nyx_string*, %nyx_string** %t404
  %t413 = call %nyx_string* @nyx_string_concat(%nyx_string* %t411, %nyx_string* %t412)
  store %nyx_string* %t413, %nyx_string** %t400
  br label %merge140
else139:
  br label %merge140
merge140:
  %t414 = load { i64, i8* }*, { i64, i8* }** %t394
  %t415 = load i64, i64* %t401
  %t416 = call i64 @nyx_array_get({ i64, i8* }* %t414, i64 %t415)
  %t417 = inttoptr i64 %t416 to { i64, i8* }*
  store { i64, i8* }* %t417, { i64, i8* }** %t418
  %t419 = load %nyx_string*, %nyx_string** %t400
  %t420 = load { i64, i8* }*, { i64, i8* }** %t418
  %t421 = call %nyx_string* @fmt_expr({ i64, i8* }* %t420)
  %t422 = call %nyx_string* @nyx_string_concat(%nyx_string* %t419, %nyx_string* %t421)
  store %nyx_string* %t422, %nyx_string** %t400
  %t423 = load i64, i64* %t401
  %t424 = add i64 %t423, 1
  store i64 %t424, i64* %t401
  br label %while_cond135
while_end137:
  %t425 = load %nyx_string*, %nyx_string** %t400
  %t426 = getelementptr [2 x i8], [2 x i8]* @.str91, i32 0, i32 0
  %t427 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str91.c, i8* %t426, i64 1)
  %t428 = call %nyx_string* @nyx_string_concat(%nyx_string* %t425, %nyx_string* %t427)
  ret %nyx_string* %t428
else133:
  br label %merge134
merge134:
  %t429 = load %nyx_string*, %nyx_string** %t255
  %t430 = getelementptr [13 x i8], [13 x i8]* @.str92, i32 0, i32 0
  %t431 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str92.c, i8* %t430, i64 12)
  %t432 = call i1 @nyx_string_equals(%nyx_string* %t429, %nyx_string* %t431)
  br i1 %t432, label %then141, label %else142
then141:
  %t433 = load { i64, i8* }*, { i64, i8* }** %t258
  %t434 = call i64 @nyx_array_get({ i64, i8* }* %t433, i64 0)
  %t435 = inttoptr i64 %t434 to { i64, i8* }*
  store { i64, i8* }* %t435, { i64, i8* }** %t436
  %t437 = load { i64, i8* }*, { i64, i8* }** %t258
  %t438 = call i64 @nyx_array_get({ i64, i8* }* %t437, i64 1)
  %t439 = inttoptr i64 %t438 to { i64, i8* }*
  store { i64, i8* }* %t439, { i64, i8* }** %t440
  %t441 = load { i64, i8* }*, { i64, i8* }** %t436
  %t442 = call %nyx_string* @fmt_expr({ i64, i8* }* %t441)
  %t443 = getelementptr [2 x i8], [2 x i8]* @.str93, i32 0, i32 0
  %t444 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str93.c, i8* %t443, i64 1)
  %t445 = call %nyx_string* @nyx_string_concat(%nyx_string* %t442, %nyx_string* %t444)
  store %nyx_string* %t445, %nyx_string** %t446
  store i64 0, i64* %t447
  %t448 = getelementptr [3 x i8], [3 x i8]* @.str94, i32 0, i32 0
  %t449 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str94.c, i8* %t448, i64 2)
  store %nyx_string* %t449, %nyx_string** %t450
  br label %while_cond144
while_cond144:
  %t451 = load i64, i64* %t447
  %t452 = load { i64, i8* }*, { i64, i8* }** %t440
  %t453 = call i64 @nyx_array_length({ i64, i8* }* %t452)
  %t454 = icmp slt i64 %t451, %t453
  br i1 %t454, label %while_body145, label %while_end146
while_body145:
  %t455 = load i64, i64* %t447
  %t456 = icmp sgt i64 %t455, 0
  br i1 %t456, label %then147, label %else148
then147:
  %t457 = load %nyx_string*, %nyx_string** %t446
  %t458 = load %nyx_string*, %nyx_string** %t450
  %t459 = call %nyx_string* @nyx_string_concat(%nyx_string* %t457, %nyx_string* %t458)
  store %nyx_string* %t459, %nyx_string** %t446
  br label %merge149
else148:
  br label %merge149
merge149:
  %t460 = load { i64, i8* }*, { i64, i8* }** %t440
  %t461 = load i64, i64* %t447
  %t462 = call i64 @nyx_array_get_checked({ i64, i8* }* %t460, i64 %t461, i64 2)
  %t463 = inttoptr i64 %t462 to %nyx_string*
  store %nyx_string* %t463, %nyx_string** %t464
  %t465 = load %nyx_string*, %nyx_string** %t446
  %t466 = load %nyx_string*, %nyx_string** %t464
  %t467 = call %nyx_string* @nyx_string_concat(%nyx_string* %t465, %nyx_string* %t466)
  store %nyx_string* %t467, %nyx_string** %t446
  %t468 = load i64, i64* %t447
  %t469 = add i64 %t468, 1
  store i64 %t469, i64* %t447
  br label %while_cond144
while_end146:
  %t470 = load %nyx_string*, %nyx_string** %t446
  %t471 = getelementptr [2 x i8], [2 x i8]* @.str95, i32 0, i32 0
  %t472 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str95.c, i8* %t471, i64 1)
  %t473 = call %nyx_string* @nyx_string_concat(%nyx_string* %t470, %nyx_string* %t472)
  store %nyx_string* %t473, %nyx_string** %t446
  %t474 = load { i64, i8* }*, { i64, i8* }** %t258
  %t475 = call i64 @nyx_array_length({ i64, i8* }* %t474)
  %t476 = icmp sgt i64 %t475, 2
  br i1 %t476, label %then150, label %else151
then150:
  %t477 = load { i64, i8* }*, { i64, i8* }** %t258
  %t478 = call i64 @nyx_array_get({ i64, i8* }* %t477, i64 2)
  %t479 = inttoptr i64 %t478 to { i64, i8* }*
  store { i64, i8* }* %t479, { i64, i8* }** %t480
  %t481 = load { i64, i8* }*, { i64, i8* }** %t480
  %t482 = call i64 @nyx_array_length({ i64, i8* }* %t481)
  %t483 = icmp sgt i64 %t482, 0
  br i1 %t483, label %then153, label %else154
then153:
  %t484 = load %nyx_string*, %nyx_string** %t446
  %t485 = getelementptr [2 x i8], [2 x i8]* @.str96, i32 0, i32 0
  %t486 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str96.c, i8* %t485, i64 1)
  %t487 = call %nyx_string* @nyx_string_concat(%nyx_string* %t484, %nyx_string* %t486)
  store %nyx_string* %t487, %nyx_string** %t446
  store i64 0, i64* %t488
  %t489 = getelementptr [3 x i8], [3 x i8]* @.str97, i32 0, i32 0
  %t490 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str97.c, i8* %t489, i64 2)
  store %nyx_string* %t490, %nyx_string** %t491
  br label %while_cond156
while_cond156:
  %t492 = load i64, i64* %t488
  %t493 = load { i64, i8* }*, { i64, i8* }** %t480
  %t494 = call i64 @nyx_array_length({ i64, i8* }* %t493)
  %t495 = icmp slt i64 %t492, %t494
  br i1 %t495, label %while_body157, label %while_end158
while_body157:
  %t496 = load i64, i64* %t488
  %t497 = icmp sgt i64 %t496, 0
  br i1 %t497, label %then159, label %else160
then159:
  %t498 = load %nyx_string*, %nyx_string** %t446
  %t499 = load %nyx_string*, %nyx_string** %t491
  %t500 = call %nyx_string* @nyx_string_concat(%nyx_string* %t498, %nyx_string* %t499)
  store %nyx_string* %t500, %nyx_string** %t446
  br label %merge161
else160:
  br label %merge161
merge161:
  %t501 = load { i64, i8* }*, { i64, i8* }** %t480
  %t502 = load i64, i64* %t488
  %t503 = call i64 @nyx_array_get({ i64, i8* }* %t501, i64 %t502)
  %t504 = inttoptr i64 %t503 to { i64, i8* }*
  store { i64, i8* }* %t504, { i64, i8* }** %t505
  %t506 = load %nyx_string*, %nyx_string** %t446
  %t507 = load { i64, i8* }*, { i64, i8* }** %t505
  %t508 = call %nyx_string* @fmt_expr({ i64, i8* }* %t507)
  %t509 = call %nyx_string* @nyx_string_concat(%nyx_string* %t506, %nyx_string* %t508)
  store %nyx_string* %t509, %nyx_string** %t446
  %t510 = load i64, i64* %t488
  %t511 = add i64 %t510, 1
  store i64 %t511, i64* %t488
  br label %while_cond156
while_end158:
  %t512 = load %nyx_string*, %nyx_string** %t446
  %t513 = getelementptr [2 x i8], [2 x i8]* @.str98, i32 0, i32 0
  %t514 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str98.c, i8* %t513, i64 1)
  %t515 = call %nyx_string* @nyx_string_concat(%nyx_string* %t512, %nyx_string* %t514)
  store %nyx_string* %t515, %nyx_string** %t446
  br label %merge155
else154:
  br label %merge155
merge155:
  br label %merge152
else151:
  br label %merge152
merge152:
  %t516 = load %nyx_string*, %nyx_string** %t446
  ret %nyx_string* %t516
else142:
  br label %merge143
merge143:
  %t517 = load %nyx_string*, %nyx_string** %t255
  %t518 = getelementptr [12 x i8], [12 x i8]* @.str99, i32 0, i32 0
  %t519 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str99.c, i8* %t518, i64 11)
  %t520 = call i1 @nyx_string_equals(%nyx_string* %t517, %nyx_string* %t519)
  br i1 %t520, label %then162, label %else163
then162:
  %t521 = load { i64, i8* }*, { i64, i8* }** %t258
  %t522 = call i64 @nyx_array_get({ i64, i8* }* %t521, i64 0)
  %t523 = inttoptr i64 %t522 to { i64, i8* }*
  store { i64, i8* }* %t523, { i64, i8* }** %t524
  %t525 = load { i64, i8* }*, { i64, i8* }** %t258
  %t526 = call i64 @nyx_array_get_checked({ i64, i8* }* %t525, i64 1, i64 2)
  %t527 = inttoptr i64 %t526 to %nyx_string*
  store %nyx_string* %t527, %nyx_string** %t528
  %t529 = load { i64, i8* }*, { i64, i8* }** %t258
  %t530 = call i64 @nyx_array_get({ i64, i8* }* %t529, i64 2)
  %t531 = inttoptr i64 %t530 to { i64, i8* }*
  store { i64, i8* }* %t531, { i64, i8* }** %t532
  %t533 = load { i64, i8* }*, { i64, i8* }** %t524
  %t534 = call %nyx_string* @fmt_expr({ i64, i8* }* %t533)
  %t535 = getelementptr [2 x i8], [2 x i8]* @.str100, i32 0, i32 0
  %t536 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str100.c, i8* %t535, i64 1)
  %t537 = call %nyx_string* @nyx_string_concat(%nyx_string* %t534, %nyx_string* %t536)
  %t538 = load %nyx_string*, %nyx_string** %t528
  %t539 = call %nyx_string* @nyx_string_concat(%nyx_string* %t537, %nyx_string* %t538)
  %t540 = getelementptr [2 x i8], [2 x i8]* @.str101, i32 0, i32 0
  %t541 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str101.c, i8* %t540, i64 1)
  %t542 = call %nyx_string* @nyx_string_concat(%nyx_string* %t539, %nyx_string* %t541)
  store %nyx_string* %t542, %nyx_string** %t543
  store i64 0, i64* %t544
  %t545 = getelementptr [3 x i8], [3 x i8]* @.str102, i32 0, i32 0
  %t546 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str102.c, i8* %t545, i64 2)
  store %nyx_string* %t546, %nyx_string** %t547
  br label %while_cond165
while_cond165:
  %t548 = load i64, i64* %t544
  %t549 = load { i64, i8* }*, { i64, i8* }** %t532
  %t550 = call i64 @nyx_array_length({ i64, i8* }* %t549)
  %t551 = icmp slt i64 %t548, %t550
  br i1 %t551, label %while_body166, label %while_end167
while_body166:
  %t552 = load i64, i64* %t544
  %t553 = icmp sgt i64 %t552, 0
  br i1 %t553, label %then168, label %else169
then168:
  %t554 = load %nyx_string*, %nyx_string** %t543
  %t555 = load %nyx_string*, %nyx_string** %t547
  %t556 = call %nyx_string* @nyx_string_concat(%nyx_string* %t554, %nyx_string* %t555)
  store %nyx_string* %t556, %nyx_string** %t543
  br label %merge170
else169:
  br label %merge170
merge170:
  %t557 = load { i64, i8* }*, { i64, i8* }** %t532
  %t558 = load i64, i64* %t544
  %t559 = call i64 @nyx_array_get({ i64, i8* }* %t557, i64 %t558)
  %t560 = inttoptr i64 %t559 to { i64, i8* }*
  store { i64, i8* }* %t560, { i64, i8* }** %t561
  %t562 = load %nyx_string*, %nyx_string** %t543
  %t563 = load { i64, i8* }*, { i64, i8* }** %t561
  %t564 = call %nyx_string* @fmt_expr({ i64, i8* }* %t563)
  %t565 = call %nyx_string* @nyx_string_concat(%nyx_string* %t562, %nyx_string* %t564)
  store %nyx_string* %t565, %nyx_string** %t543
  %t566 = load i64, i64* %t544
  %t567 = add i64 %t566, 1
  store i64 %t567, i64* %t544
  br label %while_cond165
while_end167:
  %t568 = load %nyx_string*, %nyx_string** %t543
  %t569 = getelementptr [2 x i8], [2 x i8]* @.str103, i32 0, i32 0
  %t570 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str103.c, i8* %t569, i64 1)
  %t571 = call %nyx_string* @nyx_string_concat(%nyx_string* %t568, %nyx_string* %t570)
  ret %nyx_string* %t571
else163:
  br label %merge164
merge164:
  %t572 = load %nyx_string*, %nyx_string** %t255
  %t573 = getelementptr [13 x i8], [13 x i8]* @.str104, i32 0, i32 0
  %t574 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str104.c, i8* %t573, i64 12)
  %t575 = call i1 @nyx_string_equals(%nyx_string* %t572, %nyx_string* %t574)
  br i1 %t575, label %then171, label %else172
then171:
  %t576 = load { i64, i8* }*, { i64, i8* }** %t258
  %t577 = call i64 @nyx_array_get({ i64, i8* }* %t576, i64 0)
  %t578 = inttoptr i64 %t577 to { i64, i8* }*
  store { i64, i8* }* %t578, { i64, i8* }** %t579
  %t580 = load { i64, i8* }*, { i64, i8* }** %t258
  %t581 = call i64 @nyx_array_get_checked({ i64, i8* }* %t580, i64 1, i64 2)
  %t582 = inttoptr i64 %t581 to %nyx_string*
  store %nyx_string* %t582, %nyx_string** %t583
  %t584 = load { i64, i8* }*, { i64, i8* }** %t579
  %t585 = call %nyx_string* @fmt_expr({ i64, i8* }* %t584)
  %t586 = getelementptr [2 x i8], [2 x i8]* @.str105, i32 0, i32 0
  %t587 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str105.c, i8* %t586, i64 1)
  %t588 = call %nyx_string* @nyx_string_concat(%nyx_string* %t585, %nyx_string* %t587)
  %t589 = load %nyx_string*, %nyx_string** %t583
  %t590 = call %nyx_string* @nyx_string_concat(%nyx_string* %t588, %nyx_string* %t589)
  ret %nyx_string* %t590
else172:
  br label %merge173
merge173:
  %t591 = load %nyx_string*, %nyx_string** %t255
  %t592 = getelementptr [6 x i8], [6 x i8]* @.str106, i32 0, i32 0
  %t593 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str106.c, i8* %t592, i64 5)
  %t594 = call i1 @nyx_string_equals(%nyx_string* %t591, %nyx_string* %t593)
  br i1 %t594, label %then174, label %else175
then174:
  %t595 = load { i64, i8* }*, { i64, i8* }** %t258
  %t596 = call i64 @nyx_array_get({ i64, i8* }* %t595, i64 0)
  %t597 = inttoptr i64 %t596 to { i64, i8* }*
  store { i64, i8* }* %t597, { i64, i8* }** %t598
  %t599 = load { i64, i8* }*, { i64, i8* }** %t258
  %t600 = call i64 @nyx_array_get({ i64, i8* }* %t599, i64 1)
  %t601 = inttoptr i64 %t600 to { i64, i8* }*
  store { i64, i8* }* %t601, { i64, i8* }** %t602
  %t603 = load { i64, i8* }*, { i64, i8* }** %t598
  %t604 = call %nyx_string* @fmt_expr({ i64, i8* }* %t603)
  %t605 = getelementptr [2 x i8], [2 x i8]* @.str107, i32 0, i32 0
  %t606 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str107.c, i8* %t605, i64 1)
  %t607 = call %nyx_string* @nyx_string_concat(%nyx_string* %t604, %nyx_string* %t606)
  %t608 = load { i64, i8* }*, { i64, i8* }** %t602
  %t609 = call %nyx_string* @fmt_expr({ i64, i8* }* %t608)
  %t610 = call %nyx_string* @nyx_string_concat(%nyx_string* %t607, %nyx_string* %t609)
  %t611 = getelementptr [2 x i8], [2 x i8]* @.str108, i32 0, i32 0
  %t612 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str108.c, i8* %t611, i64 1)
  %t613 = call %nyx_string* @nyx_string_concat(%nyx_string* %t610, %nyx_string* %t612)
  ret %nyx_string* %t613
else175:
  br label %merge176
merge176:
  %t614 = load %nyx_string*, %nyx_string** %t255
  %t615 = getelementptr [12 x i8], [12 x i8]* @.str109, i32 0, i32 0
  %t616 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str109.c, i8* %t615, i64 11)
  %t617 = call i1 @nyx_string_equals(%nyx_string* %t614, %nyx_string* %t616)
  br i1 %t617, label %then177, label %else178
then177:
  %t618 = load { i64, i8* }*, { i64, i8* }** %t258
  %t619 = call i64 @nyx_array_get({ i64, i8* }* %t618, i64 0)
  %t620 = inttoptr i64 %t619 to { i64, i8* }*
  store { i64, i8* }* %t620, { i64, i8* }** %t621
  %t622 = load { i64, i8* }*, { i64, i8* }** %t258
  %t623 = call i64 @nyx_array_get_checked({ i64, i8* }* %t622, i64 1, i64 2)
  %t624 = inttoptr i64 %t623 to %nyx_string*
  store %nyx_string* %t624, %nyx_string** %t625
  %t626 = load { i64, i8* }*, { i64, i8* }** %t621
  %t627 = call %nyx_string* @fmt_expr({ i64, i8* }* %t626)
  %t628 = getelementptr [2 x i8], [2 x i8]* @.str110, i32 0, i32 0
  %t629 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str110.c, i8* %t628, i64 1)
  %t630 = call %nyx_string* @nyx_string_concat(%nyx_string* %t627, %nyx_string* %t629)
  %t631 = load %nyx_string*, %nyx_string** %t625
  %t632 = call %nyx_string* @nyx_string_concat(%nyx_string* %t630, %nyx_string* %t631)
  ret %nyx_string* %t632
else178:
  br label %merge179
merge179:
  %t633 = load %nyx_string*, %nyx_string** %t255
  %t634 = getelementptr [6 x i8], [6 x i8]* @.str111, i32 0, i32 0
  %t635 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str111.c, i8* %t634, i64 5)
  %t636 = call i1 @nyx_string_equals(%nyx_string* %t633, %nyx_string* %t635)
  br i1 %t636, label %then180, label %else181
then180:
  %t637 = load { i64, i8* }*, { i64, i8* }** %t258
  %t638 = call i64 @nyx_array_get({ i64, i8* }* %t637, i64 0)
  %t639 = inttoptr i64 %t638 to { i64, i8* }*
  store { i64, i8* }* %t639, { i64, i8* }** %t640
  %t641 = getelementptr [2 x i8], [2 x i8]* @.str112, i32 0, i32 0
  %t642 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str112.c, i8* %t641, i64 1)
  store %nyx_string* %t642, %nyx_string** %t643
  store i64 0, i64* %t644
  %t645 = getelementptr [3 x i8], [3 x i8]* @.str113, i32 0, i32 0
  %t646 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str113.c, i8* %t645, i64 2)
  store %nyx_string* %t646, %nyx_string** %t647
  br label %while_cond183
while_cond183:
  %t648 = load i64, i64* %t644
  %t649 = load { i64, i8* }*, { i64, i8* }** %t640
  %t650 = call i64 @nyx_array_length({ i64, i8* }* %t649)
  %t651 = icmp slt i64 %t648, %t650
  br i1 %t651, label %while_body184, label %while_end185
while_body184:
  %t652 = load i64, i64* %t644
  %t653 = icmp sgt i64 %t652, 0
  br i1 %t653, label %then186, label %else187
then186:
  %t654 = load %nyx_string*, %nyx_string** %t643
  %t655 = load %nyx_string*, %nyx_string** %t647
  %t656 = call %nyx_string* @nyx_string_concat(%nyx_string* %t654, %nyx_string* %t655)
  store %nyx_string* %t656, %nyx_string** %t643
  br label %merge188
else187:
  br label %merge188
merge188:
  %t657 = load { i64, i8* }*, { i64, i8* }** %t640
  %t658 = load i64, i64* %t644
  %t659 = call i64 @nyx_array_get({ i64, i8* }* %t657, i64 %t658)
  %t660 = inttoptr i64 %t659 to { i64, i8* }*
  store { i64, i8* }* %t660, { i64, i8* }** %t661
  %t662 = load %nyx_string*, %nyx_string** %t643
  %t663 = load { i64, i8* }*, { i64, i8* }** %t661
  %t664 = call %nyx_string* @fmt_expr({ i64, i8* }* %t663)
  %t665 = call %nyx_string* @nyx_string_concat(%nyx_string* %t662, %nyx_string* %t664)
  store %nyx_string* %t665, %nyx_string** %t643
  %t666 = load i64, i64* %t644
  %t667 = add i64 %t666, 1
  store i64 %t667, i64* %t644
  br label %while_cond183
while_end185:
  %t668 = load %nyx_string*, %nyx_string** %t643
  %t669 = getelementptr [2 x i8], [2 x i8]* @.str114, i32 0, i32 0
  %t670 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str114.c, i8* %t669, i64 1)
  %t671 = call %nyx_string* @nyx_string_concat(%nyx_string* %t668, %nyx_string* %t670)
  ret %nyx_string* %t671
else181:
  br label %merge182
merge182:
  %t672 = load %nyx_string*, %nyx_string** %t255
  %t673 = getelementptr [10 x i8], [10 x i8]* @.str115, i32 0, i32 0
  %t674 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str115.c, i8* %t673, i64 9)
  %t675 = call i1 @nyx_string_equals(%nyx_string* %t672, %nyx_string* %t674)
  br i1 %t675, label %then189, label %else190
then189:
  %t676 = load { i64, i8* }*, { i64, i8* }** %t258
  %t677 = call i64 @nyx_array_get({ i64, i8* }* %t676, i64 0)
  %t678 = inttoptr i64 %t677 to { i64, i8* }*
  store { i64, i8* }* %t678, { i64, i8* }** %t679
  %t680 = getelementptr [2 x i8], [2 x i8]* @.str116, i32 0, i32 0
  %t681 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str116.c, i8* %t680, i64 1)
  store %nyx_string* %t681, %nyx_string** %t682
  store i64 0, i64* %t683
  %t684 = getelementptr [3 x i8], [3 x i8]* @.str117, i32 0, i32 0
  %t685 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str117.c, i8* %t684, i64 2)
  store %nyx_string* %t685, %nyx_string** %t686
  br label %while_cond192
while_cond192:
  %t687 = load i64, i64* %t683
  %t688 = load { i64, i8* }*, { i64, i8* }** %t679
  %t689 = call i64 @nyx_array_length({ i64, i8* }* %t688)
  %t690 = icmp slt i64 %t687, %t689
  br i1 %t690, label %while_body193, label %while_end194
while_body193:
  %t691 = load i64, i64* %t683
  %t692 = icmp sgt i64 %t691, 0
  br i1 %t692, label %then195, label %else196
then195:
  %t693 = load %nyx_string*, %nyx_string** %t682
  %t694 = load %nyx_string*, %nyx_string** %t686
  %t695 = call %nyx_string* @nyx_string_concat(%nyx_string* %t693, %nyx_string* %t694)
  store %nyx_string* %t695, %nyx_string** %t682
  br label %merge197
else196:
  br label %merge197
merge197:
  %t696 = load { i64, i8* }*, { i64, i8* }** %t679
  %t697 = load i64, i64* %t683
  %t698 = call i64 @nyx_array_get({ i64, i8* }* %t696, i64 %t697)
  %t699 = inttoptr i64 %t698 to { i64, i8* }*
  store { i64, i8* }* %t699, { i64, i8* }** %t700
  %t701 = load %nyx_string*, %nyx_string** %t682
  %t702 = load { i64, i8* }*, { i64, i8* }** %t700
  %t703 = call %nyx_string* @fmt_expr({ i64, i8* }* %t702)
  %t704 = call %nyx_string* @nyx_string_concat(%nyx_string* %t701, %nyx_string* %t703)
  store %nyx_string* %t704, %nyx_string** %t682
  %t705 = load i64, i64* %t683
  %t706 = add i64 %t705, 1
  store i64 %t706, i64* %t683
  br label %while_cond192
while_end194:
  %t707 = load %nyx_string*, %nyx_string** %t682
  %t708 = getelementptr [2 x i8], [2 x i8]* @.str118, i32 0, i32 0
  %t709 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str118.c, i8* %t708, i64 1)
  %t710 = call %nyx_string* @nyx_string_concat(%nyx_string* %t707, %nyx_string* %t709)
  ret %nyx_string* %t710
else190:
  br label %merge191
merge191:
  %t711 = load %nyx_string*, %nyx_string** %t255
  %t712 = getelementptr [12 x i8], [12 x i8]* @.str119, i32 0, i32 0
  %t713 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str119.c, i8* %t712, i64 11)
  %t714 = call i1 @nyx_string_equals(%nyx_string* %t711, %nyx_string* %t713)
  br i1 %t714, label %then198, label %else199
then198:
  %t715 = load { i64, i8* }*, { i64, i8* }** %t258
  %t716 = call i64 @nyx_array_get_checked({ i64, i8* }* %t715, i64 0, i64 2)
  %t717 = inttoptr i64 %t716 to %nyx_string*
  store %nyx_string* %t717, %nyx_string** %t718
  %t719 = load { i64, i8* }*, { i64, i8* }** %t258
  %t720 = call i64 @nyx_array_get({ i64, i8* }* %t719, i64 1)
  %t721 = inttoptr i64 %t720 to { i64, i8* }*
  store { i64, i8* }* %t721, { i64, i8* }** %t722
  %t723 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t723, { i64, i8* }** %t724
  %t725 = load { i64, i8* }*, { i64, i8* }** %t258
  %t726 = call i64 @nyx_array_length({ i64, i8* }* %t725)
  %t727 = icmp sgt i64 %t726, 2
  br i1 %t727, label %then201, label %else202
then201:
  %t728 = load { i64, i8* }*, { i64, i8* }** %t258
  %t729 = call i64 @nyx_array_get({ i64, i8* }* %t728, i64 2)
  %t730 = inttoptr i64 %t729 to { i64, i8* }*
  store { i64, i8* }* %t730, { i64, i8* }** %t731
  %t732 = load { i64, i8* }*, { i64, i8* }** %t731
  store { i64, i8* }* %t732, { i64, i8* }** %t724
  br label %merge203
else202:
  br label %merge203
merge203:
  %t733 = load %nyx_string*, %nyx_string** %t718
  store %nyx_string* %t733, %nyx_string** %t734
  %t735 = load { i64, i8* }*, { i64, i8* }** %t724
  %t736 = call i64 @nyx_array_length({ i64, i8* }* %t735)
  %t737 = icmp sgt i64 %t736, 0
  br i1 %t737, label %then204, label %else205
then204:
  %t738 = load %nyx_string*, %nyx_string** %t734
  %t739 = getelementptr [2 x i8], [2 x i8]* @.str120, i32 0, i32 0
  %t740 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str120.c, i8* %t739, i64 1)
  %t741 = call %nyx_string* @nyx_string_concat(%nyx_string* %t738, %nyx_string* %t740)
  store %nyx_string* %t741, %nyx_string** %t734
  store i64 0, i64* %t742
  %t743 = getelementptr [3 x i8], [3 x i8]* @.str121, i32 0, i32 0
  %t744 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str121.c, i8* %t743, i64 2)
  store %nyx_string* %t744, %nyx_string** %t745
  br label %while_cond207
while_cond207:
  %t746 = load i64, i64* %t742
  %t747 = load { i64, i8* }*, { i64, i8* }** %t724
  %t748 = call i64 @nyx_array_length({ i64, i8* }* %t747)
  %t749 = icmp slt i64 %t746, %t748
  br i1 %t749, label %while_body208, label %while_end209
while_body208:
  %t750 = load i64, i64* %t742
  %t751 = icmp sgt i64 %t750, 0
  br i1 %t751, label %then210, label %else211
then210:
  %t752 = load %nyx_string*, %nyx_string** %t734
  %t753 = load %nyx_string*, %nyx_string** %t745
  %t754 = call %nyx_string* @nyx_string_concat(%nyx_string* %t752, %nyx_string* %t753)
  store %nyx_string* %t754, %nyx_string** %t734
  br label %merge212
else211:
  br label %merge212
merge212:
  %t755 = load { i64, i8* }*, { i64, i8* }** %t724
  %t756 = load i64, i64* %t742
  %t757 = call i64 @nyx_array_get_checked({ i64, i8* }* %t755, i64 %t756, i64 2)
  %t758 = inttoptr i64 %t757 to %nyx_string*
  store %nyx_string* %t758, %nyx_string** %t759
  %t760 = load %nyx_string*, %nyx_string** %t734
  %t761 = load %nyx_string*, %nyx_string** %t759
  %t762 = call %nyx_string* @nyx_string_concat(%nyx_string* %t760, %nyx_string* %t761)
  store %nyx_string* %t762, %nyx_string** %t734
  %t763 = load i64, i64* %t742
  %t764 = add i64 %t763, 1
  store i64 %t764, i64* %t742
  br label %while_cond207
while_end209:
  %t765 = load %nyx_string*, %nyx_string** %t734
  %t766 = getelementptr [2 x i8], [2 x i8]* @.str122, i32 0, i32 0
  %t767 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str122.c, i8* %t766, i64 1)
  %t768 = call %nyx_string* @nyx_string_concat(%nyx_string* %t765, %nyx_string* %t767)
  store %nyx_string* %t768, %nyx_string** %t734
  br label %merge206
else205:
  br label %merge206
merge206:
  %t769 = load %nyx_string*, %nyx_string** %t734
  %t770 = getelementptr [3 x i8], [3 x i8]* @.str123, i32 0, i32 0
  %t771 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str123.c, i8* %t770, i64 2)
  %t772 = call %nyx_string* @nyx_string_concat(%nyx_string* %t769, %nyx_string* %t771)
  store %nyx_string* %t772, %nyx_string** %t734
  store i64 0, i64* %t773
  %t774 = getelementptr [2 x i8], [2 x i8]* @.str124, i32 0, i32 0
  %t775 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str124.c, i8* %t774, i64 1)
  store %nyx_string* %t775, %nyx_string** %t776
  %t777 = getelementptr [2 x i8], [2 x i8]* @.str125, i32 0, i32 0
  %t778 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str125.c, i8* %t777, i64 1)
  store %nyx_string* %t778, %nyx_string** %t779
  %t780 = getelementptr [3 x i8], [3 x i8]* @.str126, i32 0, i32 0
  %t781 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str126.c, i8* %t780, i64 2)
  store %nyx_string* %t781, %nyx_string** %t782
  br label %while_cond213
while_cond213:
  %t783 = load i64, i64* %t773
  %t784 = load { i64, i8* }*, { i64, i8* }** %t722
  %t785 = call i64 @nyx_array_length({ i64, i8* }* %t784)
  %t786 = icmp slt i64 %t783, %t785
  br i1 %t786, label %while_body214, label %while_end215
while_body214:
  %t787 = load i64, i64* %t773
  %t788 = icmp sgt i64 %t787, 0
  br i1 %t788, label %then216, label %else217
then216:
  %t789 = load %nyx_string*, %nyx_string** %t734
  %t790 = load %nyx_string*, %nyx_string** %t776
  %t791 = call %nyx_string* @nyx_string_concat(%nyx_string* %t789, %nyx_string* %t790)
  store %nyx_string* %t791, %nyx_string** %t734
  br label %merge218
else217:
  br label %merge218
merge218:
  %t792 = load { i64, i8* }*, { i64, i8* }** %t722
  %t793 = load i64, i64* %t773
  %t794 = call i64 @nyx_array_get({ i64, i8* }* %t792, i64 %t793)
  %t795 = inttoptr i64 %t794 to { i64, i8* }*
  store { i64, i8* }* %t795, { i64, i8* }** %t796
  %t797 = load { i64, i8* }*, { i64, i8* }** %t796
  %t798 = call i64 @nyx_array_get_checked({ i64, i8* }* %t797, i64 0, i64 2)
  %t799 = inttoptr i64 %t798 to %nyx_string*
  store %nyx_string* %t799, %nyx_string** %t800
  %t801 = load { i64, i8* }*, { i64, i8* }** %t796
  %t802 = call i64 @nyx_array_get({ i64, i8* }* %t801, i64 1)
  %t803 = inttoptr i64 %t802 to { i64, i8* }*
  store { i64, i8* }* %t803, { i64, i8* }** %t804
  %t805 = load %nyx_string*, %nyx_string** %t734
  %t806 = load %nyx_string*, %nyx_string** %t779
  %t807 = call %nyx_string* @nyx_string_concat(%nyx_string* %t805, %nyx_string* %t806)
  %t808 = load %nyx_string*, %nyx_string** %t800
  %t809 = call %nyx_string* @nyx_string_concat(%nyx_string* %t807, %nyx_string* %t808)
  %t810 = load %nyx_string*, %nyx_string** %t782
  %t811 = call %nyx_string* @nyx_string_concat(%nyx_string* %t809, %nyx_string* %t810)
  %t812 = load { i64, i8* }*, { i64, i8* }** %t804
  %t813 = call %nyx_string* @fmt_expr({ i64, i8* }* %t812)
  %t814 = call %nyx_string* @nyx_string_concat(%nyx_string* %t811, %nyx_string* %t813)
  store %nyx_string* %t814, %nyx_string** %t734
  %t815 = load i64, i64* %t773
  %t816 = add i64 %t815, 1
  store i64 %t816, i64* %t773
  br label %while_cond213
while_end215:
  %t817 = load %nyx_string*, %nyx_string** %t734
  %t818 = getelementptr [3 x i8], [3 x i8]* @.str127, i32 0, i32 0
  %t819 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str127.c, i8* %t818, i64 2)
  %t820 = call %nyx_string* @nyx_string_concat(%nyx_string* %t817, %nyx_string* %t819)
  ret %nyx_string* %t820
else199:
  br label %merge200
merge200:
  %t821 = load %nyx_string*, %nyx_string** %t255
  %t822 = getelementptr [6 x i8], [6 x i8]* @.str128, i32 0, i32 0
  %t823 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str128.c, i8* %t822, i64 5)
  %t824 = call i1 @nyx_string_equals(%nyx_string* %t821, %nyx_string* %t823)
  br i1 %t824, label %then219, label %else220
then219:
  %t825 = load { i64, i8* }*, { i64, i8* }** %t258
  %t826 = call i64 @nyx_array_get({ i64, i8* }* %t825, i64 0)
  %t827 = inttoptr i64 %t826 to { i64, i8* }*
  store { i64, i8* }* %t827, { i64, i8* }** %t828
  %t829 = load { i64, i8* }*, { i64, i8* }** %t258
  %t830 = call i64 @nyx_array_get({ i64, i8* }* %t829, i64 1)
  %t831 = inttoptr i64 %t830 to { i64, i8* }*
  store { i64, i8* }* %t831, { i64, i8* }** %t832
  %t833 = load { i64, i8* }*, { i64, i8* }** %t258
  %t834 = call i64 @nyx_array_get_checked({ i64, i8* }* %t833, i64 2, i64 2)
  %t835 = inttoptr i64 %t834 to %nyx_string*
  store %nyx_string* %t835, %nyx_string** %t836
  %t837 = load %nyx_string*, %nyx_string** %t836
  %t838 = getelementptr [5 x i8], [5 x i8]* @.str129, i32 0, i32 0
  %t839 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str129.c, i8* %t838, i64 4)
  %t840 = call i1 @nyx_string_equals(%nyx_string* %t837, %nyx_string* %t839)
  br i1 %t840, label %then222, label %else223
then222:
  %t841 = load { i64, i8* }*, { i64, i8* }** %t828
  %t842 = call %nyx_string* @fmt_expr({ i64, i8* }* %t841)
  %t843 = getelementptr [4 x i8], [4 x i8]* @.str130, i32 0, i32 0
  %t844 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str130.c, i8* %t843, i64 3)
  %t845 = call %nyx_string* @nyx_string_concat(%nyx_string* %t842, %nyx_string* %t844)
  %t846 = load { i64, i8* }*, { i64, i8* }** %t832
  %t847 = call %nyx_string* @fmt_expr({ i64, i8* }* %t846)
  %t848 = call %nyx_string* @nyx_string_concat(%nyx_string* %t845, %nyx_string* %t847)
  ret %nyx_string* %t848
else223:
  br label %merge224
merge224:
  %t849 = load { i64, i8* }*, { i64, i8* }** %t828
  %t850 = call %nyx_string* @fmt_expr({ i64, i8* }* %t849)
  %t851 = getelementptr [3 x i8], [3 x i8]* @.str131, i32 0, i32 0
  %t852 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str131.c, i8* %t851, i64 2)
  %t853 = call %nyx_string* @nyx_string_concat(%nyx_string* %t850, %nyx_string* %t852)
  %t854 = load { i64, i8* }*, { i64, i8* }** %t832
  %t855 = call %nyx_string* @fmt_expr({ i64, i8* }* %t854)
  %t856 = call %nyx_string* @nyx_string_concat(%nyx_string* %t853, %nyx_string* %t855)
  ret %nyx_string* %t856
else220:
  br label %merge221
merge221:
  %t857 = load %nyx_string*, %nyx_string** %t255
  %t858 = getelementptr [7 x i8], [7 x i8]* @.str132, i32 0, i32 0
  %t859 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str132.c, i8* %t858, i64 6)
  %t860 = call i1 @nyx_string_equals(%nyx_string* %t857, %nyx_string* %t859)
  br i1 %t860, label %then225, label %else226
then225:
  %t861 = load { i64, i8* }*, { i64, i8* }** %t258
  %t862 = call i64 @nyx_array_get({ i64, i8* }* %t861, i64 0)
  %t863 = inttoptr i64 %t862 to { i64, i8* }*
  store { i64, i8* }* %t863, { i64, i8* }** %t864
  %t865 = load { i64, i8* }*, { i64, i8* }** %t864
  %t866 = call %nyx_string* @fmt_expr({ i64, i8* }* %t865)
  %t867 = getelementptr [2 x i8], [2 x i8]* @.str133, i32 0, i32 0
  %t868 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str133.c, i8* %t867, i64 1)
  %t869 = call %nyx_string* @nyx_string_concat(%nyx_string* %t866, %nyx_string* %t868)
  ret %nyx_string* %t869
else226:
  br label %merge227
merge227:
  %t870 = load %nyx_string*, %nyx_string** %t255
  %t871 = getelementptr [7 x i8], [7 x i8]* @.str134, i32 0, i32 0
  %t872 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str134.c, i8* %t871, i64 6)
  %t873 = call i1 @nyx_string_equals(%nyx_string* %t870, %nyx_string* %t872)
  br i1 %t873, label %then228, label %else229
then228:
  %t874 = load { i64, i8* }*, { i64, i8* }** %t258
  %t875 = call i64 @nyx_array_get({ i64, i8* }* %t874, i64 0)
  %t876 = inttoptr i64 %t875 to { i64, i8* }*
  store { i64, i8* }* %t876, { i64, i8* }** %t877
  %t878 = load { i64, i8* }*, { i64, i8* }** %t258
  %t879 = call i64 @nyx_array_get({ i64, i8* }* %t878, i64 1)
  %t880 = inttoptr i64 %t879 to { i64, i8* }*
  store { i64, i8* }* %t880, { i64, i8* }** %t881
  %t882 = load { i64, i8* }*, { i64, i8* }** %t881
  %t883 = call %nyx_string* @node_type({ i64, i8* }* %t882)
  %t884 = getelementptr [7 x i8], [7 x i8]* @.str135, i32 0, i32 0
  %t885 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str135.c, i8* %t884, i64 6)
  %t886 = call i1 @nyx_string_equals(%nyx_string* %t883, %nyx_string* %t885)
  br i1 %t886, label %then231, label %else232
then231:
  %t887 = load { i64, i8* }*, { i64, i8* }** %t881
  %t888 = call { i64, i8* }* @node_data({ i64, i8* }* %t887)
  store { i64, i8* }* %t888, { i64, i8* }** %t889
  %t890 = load { i64, i8* }*, { i64, i8* }** %t889
  %t891 = call i64 @nyx_array_get_checked({ i64, i8* }* %t890, i64 0, i64 2)
  %t892 = inttoptr i64 %t891 to %nyx_string*
  store %nyx_string* %t892, %nyx_string** %t893
  %t894 = load %nyx_string*, %nyx_string** %t893
  %t895 = getelementptr [17 x i8], [17 x i8]* @.str136, i32 0, i32 0
  %t896 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str136.c, i8* %t895, i64 16)
  %t897 = call i1 @nyx_string_equals(%nyx_string* %t894, %nyx_string* %t896)
  br i1 %t897, label %then234, label %else235
then234:
  %t898 = getelementptr [8 x i8], [8 x i8]* @.str137, i32 0, i32 0
  %t899 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str137.c, i8* %t898, i64 7)
  %t900 = load { i64, i8* }*, { i64, i8* }** %t877
  %t901 = call %nyx_string* @fmt_expr({ i64, i8* }* %t900)
  %t902 = call %nyx_string* @nyx_string_concat(%nyx_string* %t899, %nyx_string* %t901)
  %t903 = getelementptr [2 x i8], [2 x i8]* @.str138, i32 0, i32 0
  %t904 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str138.c, i8* %t903, i64 1)
  %t905 = call %nyx_string* @nyx_string_concat(%nyx_string* %t902, %nyx_string* %t904)
  ret %nyx_string* %t905
else235:
  br label %merge236
merge236:
  br label %merge233
else232:
  br label %merge233
merge233:
  %t906 = getelementptr [8 x i8], [8 x i8]* @.str139, i32 0, i32 0
  %t907 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str139.c, i8* %t906, i64 7)
  %t908 = load { i64, i8* }*, { i64, i8* }** %t877
  %t909 = call %nyx_string* @fmt_expr({ i64, i8* }* %t908)
  %t910 = call %nyx_string* @nyx_string_concat(%nyx_string* %t907, %nyx_string* %t909)
  %t911 = getelementptr [3 x i8], [3 x i8]* @.str140, i32 0, i32 0
  %t912 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str140.c, i8* %t911, i64 2)
  %t913 = call %nyx_string* @nyx_string_concat(%nyx_string* %t910, %nyx_string* %t912)
  %t914 = load { i64, i8* }*, { i64, i8* }** %t881
  %t915 = call %nyx_string* @fmt_expr({ i64, i8* }* %t914)
  %t916 = call %nyx_string* @nyx_string_concat(%nyx_string* %t913, %nyx_string* %t915)
  %t917 = getelementptr [2 x i8], [2 x i8]* @.str141, i32 0, i32 0
  %t918 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str141.c, i8* %t917, i64 1)
  %t919 = call %nyx_string* @nyx_string_concat(%nyx_string* %t916, %nyx_string* %t918)
  ret %nyx_string* %t919
else229:
  br label %merge230
merge230:
  %t920 = load %nyx_string*, %nyx_string** %t255
  %t921 = getelementptr [6 x i8], [6 x i8]* @.str142, i32 0, i32 0
  %t922 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str142.c, i8* %t921, i64 5)
  %t923 = call i1 @nyx_string_equals(%nyx_string* %t920, %nyx_string* %t922)
  br i1 %t923, label %then237, label %else238
then237:
  %t924 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %t925 = call %nyx_string* @fmt_match_expr({ i64, i8* }* %t924)
  ret %nyx_string* %t925
else238:
  br label %merge239
merge239:
  %t926 = getelementptr [18 x i8], [18 x i8]* @.str143, i32 0, i32 0
  %t927 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str143.c, i8* %t926, i64 17)
  %t928 = load %nyx_string*, %nyx_string** %t255
  %t929 = call %nyx_string* @nyx_string_concat(%nyx_string* %t927, %nyx_string* %t928)
  %t930 = getelementptr [4 x i8], [4 x i8]* @.str144, i32 0, i32 0
  %t931 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str144.c, i8* %t930, i64 3)
  %t932 = call %nyx_string* @nyx_string_concat(%nyx_string* %t929, %nyx_string* %t931)
  ret %nyx_string* %t932
}

define internal %nyx_string* @fmt_match_expr(
{ i64, i8* }* %node.param) {
  %node.ptr = alloca { i64, i8* }*
  %t935 = alloca { i64, i8* }*
  %t939 = alloca { i64, i8* }*
  %t943 = alloca { i64, i8* }*
  %t952 = alloca %nyx_string*
  %t955 = alloca i64
  %t958 = alloca %nyx_string*
  %t961 = alloca %nyx_string*
  %t964 = alloca %nyx_string*
  %t967 = alloca %nyx_string*
  %t970 = alloca %nyx_string*
  %t973 = alloca %nyx_string*
  %t982 = alloca { i64, i8* }*
  %t985 = alloca { i64, i8* }*
  %t989 = alloca { i64, i8* }*
  %t993 = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %t933 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %t934 = call { i64, i8* }* @node_data({ i64, i8* }* %t933)
  store { i64, i8* }* %t934, { i64, i8* }** %t935
  %t936 = load { i64, i8* }*, { i64, i8* }** %t935
  %t937 = call i64 @nyx_array_get({ i64, i8* }* %t936, i64 0)
  %t938 = inttoptr i64 %t937 to { i64, i8* }*
  store { i64, i8* }* %t938, { i64, i8* }** %t939
  %t940 = load { i64, i8* }*, { i64, i8* }** %t935
  %t941 = call i64 @nyx_array_get({ i64, i8* }* %t940, i64 1)
  %t942 = inttoptr i64 %t941 to { i64, i8* }*
  store { i64, i8* }* %t942, { i64, i8* }** %t943
  %t944 = getelementptr [7 x i8], [7 x i8]* @.str145, i32 0, i32 0
  %t945 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str145.c, i8* %t944, i64 6)
  %t946 = load { i64, i8* }*, { i64, i8* }** %t939
  %t947 = call %nyx_string* @fmt_expr({ i64, i8* }* %t946)
  %t948 = call %nyx_string* @nyx_string_concat(%nyx_string* %t945, %nyx_string* %t947)
  %t949 = getelementptr [4 x i8], [4 x i8]* @.str146, i32 0, i32 0
  %t950 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str146.c, i8* %t949, i64 3)
  %t951 = call %nyx_string* @nyx_string_concat(%nyx_string* %t948, %nyx_string* %t950)
  store %nyx_string* %t951, %nyx_string** %t952
  %t953 = load i64, i64* @g_indent
  %t954 = add i64 %t953, 1
  store i64 %t954, i64* @g_indent
  store i64 0, i64* %t955
  %t956 = getelementptr [5 x i8], [5 x i8]* @.str147, i32 0, i32 0
  %t957 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str147.c, i8* %t956, i64 4)
  store %nyx_string* %t957, %nyx_string** %t958
  %t959 = getelementptr [6 x i8], [6 x i8]* @.str148, i32 0, i32 0
  %t960 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str148.c, i8* %t959, i64 5)
  store %nyx_string* %t960, %nyx_string** %t961
  %t962 = getelementptr [3 x i8], [3 x i8]* @.str149, i32 0, i32 0
  %t963 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str149.c, i8* %t962, i64 2)
  store %nyx_string* %t963, %nyx_string** %t964
  %t965 = getelementptr [2 x i8], [2 x i8]* @.str150, i32 0, i32 0
  %t966 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str150.c, i8* %t965, i64 1)
  store %nyx_string* %t966, %nyx_string** %t967
  %t968 = getelementptr [2 x i8], [2 x i8]* @.str151, i32 0, i32 0
  %t969 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str151.c, i8* %t968, i64 1)
  store %nyx_string* %t969, %nyx_string** %t970
  %t971 = getelementptr [2 x i8], [2 x i8]* @.str152, i32 0, i32 0
  %t972 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str152.c, i8* %t971, i64 1)
  store %nyx_string* %t972, %nyx_string** %t973
  br label %while_cond240
while_cond240:
  %t974 = load i64, i64* %t955
  %t975 = load { i64, i8* }*, { i64, i8* }** %t943
  %t976 = call i64 @nyx_array_length({ i64, i8* }* %t975)
  %t977 = icmp slt i64 %t974, %t976
  br i1 %t977, label %while_body241, label %while_end242
while_body241:
  %t978 = load { i64, i8* }*, { i64, i8* }** %t943
  %t979 = load i64, i64* %t955
  %t980 = call i64 @nyx_array_get({ i64, i8* }* %t978, i64 %t979)
  %t981 = inttoptr i64 %t980 to { i64, i8* }*
  store { i64, i8* }* %t981, { i64, i8* }** %t982
  %t983 = load { i64, i8* }*, { i64, i8* }** %t982
  %t984 = call { i64, i8* }* @node_data({ i64, i8* }* %t983)
  store { i64, i8* }* %t984, { i64, i8* }** %t985
  %t986 = load { i64, i8* }*, { i64, i8* }** %t985
  %t987 = call i64 @nyx_array_get({ i64, i8* }* %t986, i64 0)
  %t988 = inttoptr i64 %t987 to { i64, i8* }*
  store { i64, i8* }* %t988, { i64, i8* }** %t989
  %t990 = load { i64, i8* }*, { i64, i8* }** %t985
  %t991 = call i64 @nyx_array_get({ i64, i8* }* %t990, i64 1)
  %t992 = inttoptr i64 %t991 to { i64, i8* }*
  store { i64, i8* }* %t992, { i64, i8* }** %t993
  %t994 = load %nyx_string*, %nyx_string** %t952
  %t995 = call %nyx_string* @indent_str()
  %t996 = call %nyx_string* @nyx_string_concat(%nyx_string* %t994, %nyx_string* %t995)
  %t997 = load { i64, i8* }*, { i64, i8* }** %t989
  %t998 = call %nyx_string* @fmt_pattern({ i64, i8* }* %t997)
  %t999 = call %nyx_string* @nyx_string_concat(%nyx_string* %t996, %nyx_string* %t998)
  %t1000 = load %nyx_string*, %nyx_string** %t958
  %t1001 = call %nyx_string* @nyx_string_concat(%nyx_string* %t999, %nyx_string* %t1000)
  store %nyx_string* %t1001, %nyx_string** %t952
  %t1002 = load { i64, i8* }*, { i64, i8* }** %t993
  %t1003 = call %nyx_string* @node_type({ i64, i8* }* %t1002)
  %t1004 = load %nyx_string*, %nyx_string** %t961
  %t1005 = call i1 @nyx_string_equals(%nyx_string* %t1003, %nyx_string* %t1004)
  br i1 %t1005, label %then243, label %else244
then243:
  %t1006 = load %nyx_string*, %nyx_string** %t952
  %t1007 = load %nyx_string*, %nyx_string** %t964
  %t1008 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1006, %nyx_string* %t1007)
  store %nyx_string* %t1008, %nyx_string** %t952
  %t1009 = load i64, i64* @g_indent
  %t1010 = add i64 %t1009, 1
  store i64 %t1010, i64* @g_indent
  %t1011 = load %nyx_string*, %nyx_string** %t952
  %t1012 = load { i64, i8* }*, { i64, i8* }** %t993
  %t1013 = call %nyx_string* @fmt_block_contents({ i64, i8* }* %t1012)
  %t1014 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1011, %nyx_string* %t1013)
  store %nyx_string* %t1014, %nyx_string** %t952
  %t1015 = load i64, i64* @g_indent
  %t1016 = sub i64 %t1015, 1
  store i64 %t1016, i64* @g_indent
  %t1017 = load %nyx_string*, %nyx_string** %t952
  %t1018 = call %nyx_string* @indent_str()
  %t1019 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1017, %nyx_string* %t1018)
  %t1020 = load %nyx_string*, %nyx_string** %t967
  %t1021 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1019, %nyx_string* %t1020)
  store %nyx_string* %t1021, %nyx_string** %t952
  br label %merge245
else244:
  %t1022 = load %nyx_string*, %nyx_string** %t952
  %t1023 = load { i64, i8* }*, { i64, i8* }** %t993
  %t1024 = call %nyx_string* @fmt_expr({ i64, i8* }* %t1023)
  %t1025 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1022, %nyx_string* %t1024)
  store %nyx_string* %t1025, %nyx_string** %t952
  br label %merge245
merge245:
  %t1026 = load i64, i64* %t955
  %t1027 = load { i64, i8* }*, { i64, i8* }** %t943
  %t1028 = call i64 @nyx_array_length({ i64, i8* }* %t1027)
  %t1029 = sub i64 %t1028, 1
  %t1030 = icmp slt i64 %t1026, %t1029
  br i1 %t1030, label %then246, label %else247
then246:
  %t1031 = load %nyx_string*, %nyx_string** %t952
  %t1032 = load %nyx_string*, %nyx_string** %t970
  %t1033 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1031, %nyx_string* %t1032)
  store %nyx_string* %t1033, %nyx_string** %t952
  br label %merge248
else247:
  br label %merge248
merge248:
  %t1034 = load %nyx_string*, %nyx_string** %t952
  %t1035 = load %nyx_string*, %nyx_string** %t973
  %t1036 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1034, %nyx_string* %t1035)
  store %nyx_string* %t1036, %nyx_string** %t952
  %t1037 = load i64, i64* %t955
  %t1038 = add i64 %t1037, 1
  store i64 %t1038, i64* %t955
  br label %while_cond240
while_end242:
  %t1039 = load i64, i64* @g_indent
  %t1040 = sub i64 %t1039, 1
  store i64 %t1040, i64* @g_indent
  %t1041 = load %nyx_string*, %nyx_string** %t952
  %t1042 = call %nyx_string* @indent_str()
  %t1043 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1041, %nyx_string* %t1042)
  %t1044 = getelementptr [2 x i8], [2 x i8]* @.str153, i32 0, i32 0
  %t1045 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str153.c, i8* %t1044, i64 1)
  %t1046 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1043, %nyx_string* %t1045)
  store %nyx_string* %t1046, %nyx_string** %t952
  %t1047 = load %nyx_string*, %nyx_string** %t952
  ret %nyx_string* %t1047
}

define internal %nyx_string* @fmt_pattern(
{ i64, i8* }* %node.param) {
  %node.ptr = alloca { i64, i8* }*
  %t1050 = alloca %nyx_string*
  %t1053 = alloca { i64, i8* }*
  %t1061 = alloca %nyx_string*
  %t1065 = alloca %nyx_string*
  %t1069 = alloca { i64, i8* }*
  %t1076 = alloca %nyx_string*
  %t1084 = alloca i64
  %t1087 = alloca %nyx_string*
  %t1101 = alloca %nyx_string*
  %t1118 = alloca i1
  %t1119 = alloca i1
  %t1120 = alloca i1
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %t1048 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %t1049 = call %nyx_string* @node_type({ i64, i8* }* %t1048)
  store %nyx_string* %t1049, %nyx_string** %t1050
  %t1051 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %t1052 = call { i64, i8* }* @node_data({ i64, i8* }* %t1051)
  store { i64, i8* }* %t1052, { i64, i8* }** %t1053
  %t1054 = load %nyx_string*, %nyx_string** %t1050
  %t1055 = getelementptr [14 x i8], [14 x i8]* @.str154, i32 0, i32 0
  %t1056 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str154.c, i8* %t1055, i64 13)
  %t1057 = call i1 @nyx_string_equals(%nyx_string* %t1054, %nyx_string* %t1056)
  br i1 %t1057, label %then249, label %else250
then249:
  %t1058 = load { i64, i8* }*, { i64, i8* }** %t1053
  %t1059 = call i64 @nyx_array_get_checked({ i64, i8* }* %t1058, i64 0, i64 2)
  %t1060 = inttoptr i64 %t1059 to %nyx_string*
  store %nyx_string* %t1060, %nyx_string** %t1061
  %t1062 = load { i64, i8* }*, { i64, i8* }** %t1053
  %t1063 = call i64 @nyx_array_get_checked({ i64, i8* }* %t1062, i64 1, i64 2)
  %t1064 = inttoptr i64 %t1063 to %nyx_string*
  store %nyx_string* %t1064, %nyx_string** %t1065
  %t1066 = load { i64, i8* }*, { i64, i8* }** %t1053
  %t1067 = call i64 @nyx_array_get({ i64, i8* }* %t1066, i64 2)
  %t1068 = inttoptr i64 %t1067 to { i64, i8* }*
  store { i64, i8* }* %t1068, { i64, i8* }** %t1069
  %t1070 = load %nyx_string*, %nyx_string** %t1061
  %t1071 = getelementptr [2 x i8], [2 x i8]* @.str155, i32 0, i32 0
  %t1072 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str155.c, i8* %t1071, i64 1)
  %t1073 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1070, %nyx_string* %t1072)
  %t1074 = load %nyx_string*, %nyx_string** %t1065
  %t1075 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1073, %nyx_string* %t1074)
  store %nyx_string* %t1075, %nyx_string** %t1076
  %t1077 = load { i64, i8* }*, { i64, i8* }** %t1069
  %t1078 = call i64 @nyx_array_length({ i64, i8* }* %t1077)
  %t1079 = icmp sgt i64 %t1078, 0
  br i1 %t1079, label %then252, label %else253
then252:
  %t1080 = load %nyx_string*, %nyx_string** %t1076
  %t1081 = getelementptr [2 x i8], [2 x i8]* @.str156, i32 0, i32 0
  %t1082 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str156.c, i8* %t1081, i64 1)
  %t1083 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1080, %nyx_string* %t1082)
  store %nyx_string* %t1083, %nyx_string** %t1076
  store i64 0, i64* %t1084
  %t1085 = getelementptr [3 x i8], [3 x i8]* @.str157, i32 0, i32 0
  %t1086 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str157.c, i8* %t1085, i64 2)
  store %nyx_string* %t1086, %nyx_string** %t1087
  br label %while_cond255
while_cond255:
  %t1088 = load i64, i64* %t1084
  %t1089 = load { i64, i8* }*, { i64, i8* }** %t1069
  %t1090 = call i64 @nyx_array_length({ i64, i8* }* %t1089)
  %t1091 = icmp slt i64 %t1088, %t1090
  br i1 %t1091, label %while_body256, label %while_end257
while_body256:
  %t1092 = load i64, i64* %t1084
  %t1093 = icmp sgt i64 %t1092, 0
  br i1 %t1093, label %then258, label %else259
then258:
  %t1094 = load %nyx_string*, %nyx_string** %t1076
  %t1095 = load %nyx_string*, %nyx_string** %t1087
  %t1096 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1094, %nyx_string* %t1095)
  store %nyx_string* %t1096, %nyx_string** %t1076
  br label %merge260
else259:
  br label %merge260
merge260:
  %t1097 = load { i64, i8* }*, { i64, i8* }** %t1069
  %t1098 = load i64, i64* %t1084
  %t1099 = call i64 @nyx_array_get_checked({ i64, i8* }* %t1097, i64 %t1098, i64 2)
  %t1100 = inttoptr i64 %t1099 to %nyx_string*
  store %nyx_string* %t1100, %nyx_string** %t1101
  %t1102 = load %nyx_string*, %nyx_string** %t1076
  %t1103 = load %nyx_string*, %nyx_string** %t1101
  %t1104 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1102, %nyx_string* %t1103)
  store %nyx_string* %t1104, %nyx_string** %t1076
  %t1105 = load i64, i64* %t1084
  %t1106 = add i64 %t1105, 1
  store i64 %t1106, i64* %t1084
  br label %while_cond255
while_end257:
  %t1107 = load %nyx_string*, %nyx_string** %t1076
  %t1108 = getelementptr [2 x i8], [2 x i8]* @.str158, i32 0, i32 0
  %t1109 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str158.c, i8* %t1108, i64 1)
  %t1110 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1107, %nyx_string* %t1109)
  store %nyx_string* %t1110, %nyx_string** %t1076
  br label %merge254
else253:
  br label %merge254
merge254:
  %t1111 = load %nyx_string*, %nyx_string** %t1076
  ret %nyx_string* %t1111
else250:
  br label %merge251
merge251:
  %t1112 = load %nyx_string*, %nyx_string** %t1050
  %t1113 = getelementptr [9 x i8], [9 x i8]* @.str159, i32 0, i32 0
  %t1114 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str159.c, i8* %t1113, i64 8)
  %t1115 = call i1 @nyx_string_equals(%nyx_string* %t1112, %nyx_string* %t1114)
  br i1 %t1115, label %then261, label %else262
then261:
  %t1116 = getelementptr [2 x i8], [2 x i8]* @.str160, i32 0, i32 0
  %t1117 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str160.c, i8* %t1116, i64 1)
  ret %nyx_string* %t1117
else262:
  br label %merge263
merge263:
  store i1 true, i1* %t1118
  store i1 true, i1* %t1119
  store i1 true, i1* %t1120
  %t1121 = load %nyx_string*, %nyx_string** %t1050
  %t1122 = getelementptr [7 x i8], [7 x i8]* @.str161, i32 0, i32 0
  %t1123 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str161.c, i8* %t1122, i64 6)
  %t1124 = call i1 @nyx_string_equals(%nyx_string* %t1121, %nyx_string* %t1123)
  br i1 %t1124, label %sc_or_end265, label %sc_or_rhs264
sc_or_rhs264:
  %t1125 = load %nyx_string*, %nyx_string** %t1050
  %t1126 = getelementptr [7 x i8], [7 x i8]* @.str162, i32 0, i32 0
  %t1127 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str162.c, i8* %t1126, i64 6)
  %t1128 = call i1 @nyx_string_equals(%nyx_string* %t1125, %nyx_string* %t1127)
  store i1 %t1128, i1* %t1120
  br label %sc_or_end265
sc_or_end265:
  %t1129 = load i1, i1* %t1120
  br i1 %t1129, label %sc_or_end267, label %sc_or_rhs266
sc_or_rhs266:
  %t1130 = load %nyx_string*, %nyx_string** %t1050
  %t1131 = getelementptr [5 x i8], [5 x i8]* @.str163, i32 0, i32 0
  %t1132 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str163.c, i8* %t1131, i64 4)
  %t1133 = call i1 @nyx_string_equals(%nyx_string* %t1130, %nyx_string* %t1132)
  store i1 %t1133, i1* %t1119
  br label %sc_or_end267
sc_or_end267:
  %t1134 = load i1, i1* %t1119
  br i1 %t1134, label %sc_or_end269, label %sc_or_rhs268
sc_or_rhs268:
  %t1135 = load %nyx_string*, %nyx_string** %t1050
  %t1136 = getelementptr [11 x i8], [11 x i8]* @.str164, i32 0, i32 0
  %t1137 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str164.c, i8* %t1136, i64 10)
  %t1138 = call i1 @nyx_string_equals(%nyx_string* %t1135, %nyx_string* %t1137)
  store i1 %t1138, i1* %t1118
  br label %sc_or_end269
sc_or_end269:
  %t1139 = load i1, i1* %t1118
  br i1 %t1139, label %then270, label %else271
then270:
  %t1140 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %t1141 = call %nyx_string* @fmt_expr({ i64, i8* }* %t1140)
  ret %nyx_string* %t1141
else271:
  br label %merge272
merge272:
  %t1142 = getelementptr [22 x i8], [22 x i8]* @.str165, i32 0, i32 0
  %t1143 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str165.c, i8* %t1142, i64 21)
  ret %nyx_string* %t1143
}

define internal i64 @fmt_stmt(
{ i64, i8* }* %node.param) {
  %node.ptr = alloca { i64, i8* }*
  %t1146 = alloca %nyx_string*
  %t1149 = alloca { i64, i8* }*
  %t1150 = alloca i1
  %t1170 = alloca { i64, i8* }*
  %t1174 = alloca { i64, i8* }*
  %t1177 = alloca %nyx_string*
  %t1178 = alloca i64
  %t1181 = alloca %nyx_string*
  %t1195 = alloca %nyx_string*
  %t1223 = alloca { i64, i8* }*
  %t1227 = alloca %nyx_string*
  %t1231 = alloca { i64, i8* }*
  %t1247 = alloca { i64, i8* }*
  %t1251 = alloca %nyx_string*
  %t1255 = alloca { i64, i8* }*
  %t1277 = alloca { i64, i8* }*
  %t1281 = alloca { i64, i8* }*
  %t1285 = alloca { i64, i8* }*
  %t1314 = alloca { i64, i8* }*
  %t1318 = alloca { i64, i8* }*
  %t1344 = alloca %nyx_string*
  %t1348 = alloca { i64, i8* }*
  %t1352 = alloca { i64, i8* }*
  %t1383 = alloca { i64, i8* }*
  %t1455 = alloca { i64, i8* }*
  %t1458 = alloca %nyx_string*
  %t1503 = alloca %nyx_string*
  %t1507 = alloca %nyx_string*
  %t1525 = alloca %nyx_string*
  %t1529 = alloca { i64, i8* }*
  %t1555 = alloca i1
  %t1556 = alloca i1
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %t1144 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %t1145 = call %nyx_string* @node_type({ i64, i8* }* %t1144)
  store %nyx_string* %t1145, %nyx_string** %t1146
  %t1147 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %t1148 = call { i64, i8* }* @node_data({ i64, i8* }* %t1147)
  store { i64, i8* }* %t1148, { i64, i8* }** %t1149
  store i1 true, i1* %t1150
  %t1151 = load %nyx_string*, %nyx_string** %t1146
  %t1152 = getelementptr [4 x i8], [4 x i8]* @.str166, i32 0, i32 0
  %t1153 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str166.c, i8* %t1152, i64 3)
  %t1154 = call i1 @nyx_string_equals(%nyx_string* %t1151, %nyx_string* %t1153)
  br i1 %t1154, label %sc_or_end274, label %sc_or_rhs273
sc_or_rhs273:
  %t1155 = load %nyx_string*, %nyx_string** %t1146
  %t1156 = getelementptr [6 x i8], [6 x i8]* @.str167, i32 0, i32 0
  %t1157 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str167.c, i8* %t1156, i64 5)
  %t1158 = call i1 @nyx_string_equals(%nyx_string* %t1155, %nyx_string* %t1157)
  store i1 %t1158, i1* %t1150
  br label %sc_or_end274
sc_or_end274:
  %t1159 = load i1, i1* %t1150
  br i1 %t1159, label %then275, label %else276
then275:
  %t1160 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %t1161 = load %nyx_string*, %nyx_string** %t1146
  %t1162 = call i64 @fmt_let({ i64, i8* }* %t1160, %nyx_string* %t1161)
  ret i64 0
else276:
  br label %merge277
merge277:
  %t1163 = load %nyx_string*, %nyx_string** %t1146
  %t1164 = getelementptr [22 x i8], [22 x i8]* @.str168, i32 0, i32 0
  %t1165 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str168.c, i8* %t1164, i64 21)
  %t1166 = call i1 @nyx_string_equals(%nyx_string* %t1163, %nyx_string* %t1165)
  br i1 %t1166, label %then278, label %else279
then278:
  %t1167 = load { i64, i8* }*, { i64, i8* }** %t1149
  %t1168 = call i64 @nyx_array_get({ i64, i8* }* %t1167, i64 0)
  %t1169 = inttoptr i64 %t1168 to { i64, i8* }*
  store { i64, i8* }* %t1169, { i64, i8* }** %t1170
  %t1171 = load { i64, i8* }*, { i64, i8* }** %t1149
  %t1172 = call i64 @nyx_array_get({ i64, i8* }* %t1171, i64 2)
  %t1173 = inttoptr i64 %t1172 to { i64, i8* }*
  store { i64, i8* }* %t1173, { i64, i8* }** %t1174
  %t1175 = getelementptr [2 x i8], [2 x i8]* @.str169, i32 0, i32 0
  %t1176 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str169.c, i8* %t1175, i64 1)
  store %nyx_string* %t1176, %nyx_string** %t1177
  store i64 0, i64* %t1178
  %t1179 = getelementptr [3 x i8], [3 x i8]* @.str170, i32 0, i32 0
  %t1180 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str170.c, i8* %t1179, i64 2)
  store %nyx_string* %t1180, %nyx_string** %t1181
  br label %while_cond281
while_cond281:
  %t1182 = load i64, i64* %t1178
  %t1183 = load { i64, i8* }*, { i64, i8* }** %t1170
  %t1184 = call i64 @nyx_array_length({ i64, i8* }* %t1183)
  %t1185 = icmp slt i64 %t1182, %t1184
  br i1 %t1185, label %while_body282, label %while_end283
while_body282:
  %t1186 = load i64, i64* %t1178
  %t1187 = icmp sgt i64 %t1186, 0
  br i1 %t1187, label %then284, label %else285
then284:
  %t1188 = load %nyx_string*, %nyx_string** %t1177
  %t1189 = load %nyx_string*, %nyx_string** %t1181
  %t1190 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1188, %nyx_string* %t1189)
  store %nyx_string* %t1190, %nyx_string** %t1177
  br label %merge286
else285:
  br label %merge286
merge286:
  %t1191 = load { i64, i8* }*, { i64, i8* }** %t1170
  %t1192 = load i64, i64* %t1178
  %t1193 = call i64 @nyx_array_get_checked({ i64, i8* }* %t1191, i64 %t1192, i64 2)
  %t1194 = inttoptr i64 %t1193 to %nyx_string*
  store %nyx_string* %t1194, %nyx_string** %t1195
  %t1196 = load %nyx_string*, %nyx_string** %t1177
  %t1197 = load %nyx_string*, %nyx_string** %t1195
  %t1198 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1196, %nyx_string* %t1197)
  store %nyx_string* %t1198, %nyx_string** %t1177
  %t1199 = load i64, i64* %t1178
  %t1200 = add i64 %t1199, 1
  store i64 %t1200, i64* %t1178
  br label %while_cond281
while_end283:
  %t1201 = load %nyx_string*, %nyx_string** %t1177
  %t1202 = getelementptr [2 x i8], [2 x i8]* @.str171, i32 0, i32 0
  %t1203 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str171.c, i8* %t1202, i64 1)
  %t1204 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1201, %nyx_string* %t1203)
  store %nyx_string* %t1204, %nyx_string** %t1177
  %t1205 = getelementptr [5 x i8], [5 x i8]* @.str172, i32 0, i32 0
  %t1206 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str172.c, i8* %t1205, i64 4)
  %t1207 = load %nyx_string*, %nyx_string** %t1177
  %t1208 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1206, %nyx_string* %t1207)
  %t1209 = getelementptr [4 x i8], [4 x i8]* @.str173, i32 0, i32 0
  %t1210 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str173.c, i8* %t1209, i64 3)
  %t1211 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1208, %nyx_string* %t1210)
  %t1212 = load { i64, i8* }*, { i64, i8* }** %t1174
  %t1213 = call %nyx_string* @fmt_expr({ i64, i8* }* %t1212)
  %t1214 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1211, %nyx_string* %t1213)
  %t1215 = call i64 @out_line(%nyx_string* %t1214)
  ret i64 0
else279:
  br label %merge280
merge280:
  %t1216 = load %nyx_string*, %nyx_string** %t1146
  %t1217 = getelementptr [7 x i8], [7 x i8]* @.str174, i32 0, i32 0
  %t1218 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str174.c, i8* %t1217, i64 6)
  %t1219 = call i1 @nyx_string_equals(%nyx_string* %t1216, %nyx_string* %t1218)
  br i1 %t1219, label %then287, label %else288
then287:
  %t1220 = load { i64, i8* }*, { i64, i8* }** %t1149
  %t1221 = call i64 @nyx_array_get({ i64, i8* }* %t1220, i64 0)
  %t1222 = inttoptr i64 %t1221 to { i64, i8* }*
  store { i64, i8* }* %t1222, { i64, i8* }** %t1223
  %t1224 = load { i64, i8* }*, { i64, i8* }** %t1223
  %t1225 = call i64 @nyx_array_get_checked({ i64, i8* }* %t1224, i64 0, i64 2)
  %t1226 = inttoptr i64 %t1225 to %nyx_string*
  store %nyx_string* %t1226, %nyx_string** %t1227
  %t1228 = load { i64, i8* }*, { i64, i8* }** %t1149
  %t1229 = call i64 @nyx_array_get({ i64, i8* }* %t1228, i64 1)
  %t1230 = inttoptr i64 %t1229 to { i64, i8* }*
  store { i64, i8* }* %t1230, { i64, i8* }** %t1231
  %t1232 = load %nyx_string*, %nyx_string** %t1227
  %t1233 = getelementptr [4 x i8], [4 x i8]* @.str175, i32 0, i32 0
  %t1234 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str175.c, i8* %t1233, i64 3)
  %t1235 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1232, %nyx_string* %t1234)
  %t1236 = load { i64, i8* }*, { i64, i8* }** %t1231
  %t1237 = call %nyx_string* @fmt_expr({ i64, i8* }* %t1236)
  %t1238 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1235, %nyx_string* %t1237)
  %t1239 = call i64 @out_line(%nyx_string* %t1238)
  ret i64 0
else288:
  br label %merge289
merge289:
  %t1240 = load %nyx_string*, %nyx_string** %t1146
  %t1241 = getelementptr [13 x i8], [13 x i8]* @.str176, i32 0, i32 0
  %t1242 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str176.c, i8* %t1241, i64 12)
  %t1243 = call i1 @nyx_string_equals(%nyx_string* %t1240, %nyx_string* %t1242)
  br i1 %t1243, label %then290, label %else291
then290:
  %t1244 = load { i64, i8* }*, { i64, i8* }** %t1149
  %t1245 = call i64 @nyx_array_get({ i64, i8* }* %t1244, i64 0)
  %t1246 = inttoptr i64 %t1245 to { i64, i8* }*
  store { i64, i8* }* %t1246, { i64, i8* }** %t1247
  %t1248 = load { i64, i8* }*, { i64, i8* }** %t1149
  %t1249 = call i64 @nyx_array_get_checked({ i64, i8* }* %t1248, i64 1, i64 2)
  %t1250 = inttoptr i64 %t1249 to %nyx_string*
  store %nyx_string* %t1250, %nyx_string** %t1251
  %t1252 = load { i64, i8* }*, { i64, i8* }** %t1149
  %t1253 = call i64 @nyx_array_get({ i64, i8* }* %t1252, i64 2)
  %t1254 = inttoptr i64 %t1253 to { i64, i8* }*
  store { i64, i8* }* %t1254, { i64, i8* }** %t1255
  %t1256 = load { i64, i8* }*, { i64, i8* }** %t1247
  %t1257 = call %nyx_string* @fmt_expr({ i64, i8* }* %t1256)
  %t1258 = getelementptr [2 x i8], [2 x i8]* @.str177, i32 0, i32 0
  %t1259 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str177.c, i8* %t1258, i64 1)
  %t1260 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1257, %nyx_string* %t1259)
  %t1261 = load %nyx_string*, %nyx_string** %t1251
  %t1262 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1260, %nyx_string* %t1261)
  %t1263 = getelementptr [4 x i8], [4 x i8]* @.str178, i32 0, i32 0
  %t1264 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str178.c, i8* %t1263, i64 3)
  %t1265 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1262, %nyx_string* %t1264)
  %t1266 = load { i64, i8* }*, { i64, i8* }** %t1255
  %t1267 = call %nyx_string* @fmt_expr({ i64, i8* }* %t1266)
  %t1268 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1265, %nyx_string* %t1267)
  %t1269 = call i64 @out_line(%nyx_string* %t1268)
  ret i64 0
else291:
  br label %merge292
merge292:
  %t1270 = load %nyx_string*, %nyx_string** %t1146
  %t1271 = getelementptr [13 x i8], [13 x i8]* @.str179, i32 0, i32 0
  %t1272 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str179.c, i8* %t1271, i64 12)
  %t1273 = call i1 @nyx_string_equals(%nyx_string* %t1270, %nyx_string* %t1272)
  br i1 %t1273, label %then293, label %else294
then293:
  %t1274 = load { i64, i8* }*, { i64, i8* }** %t1149
  %t1275 = call i64 @nyx_array_get({ i64, i8* }* %t1274, i64 0)
  %t1276 = inttoptr i64 %t1275 to { i64, i8* }*
  store { i64, i8* }* %t1276, { i64, i8* }** %t1277
  %t1278 = load { i64, i8* }*, { i64, i8* }** %t1149
  %t1279 = call i64 @nyx_array_get({ i64, i8* }* %t1278, i64 1)
  %t1280 = inttoptr i64 %t1279 to { i64, i8* }*
  store { i64, i8* }* %t1280, { i64, i8* }** %t1281
  %t1282 = load { i64, i8* }*, { i64, i8* }** %t1149
  %t1283 = call i64 @nyx_array_get({ i64, i8* }* %t1282, i64 2)
  %t1284 = inttoptr i64 %t1283 to { i64, i8* }*
  store { i64, i8* }* %t1284, { i64, i8* }** %t1285
  %t1286 = load { i64, i8* }*, { i64, i8* }** %t1277
  %t1287 = call %nyx_string* @fmt_expr({ i64, i8* }* %t1286)
  %t1288 = getelementptr [2 x i8], [2 x i8]* @.str180, i32 0, i32 0
  %t1289 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str180.c, i8* %t1288, i64 1)
  %t1290 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1287, %nyx_string* %t1289)
  %t1291 = load { i64, i8* }*, { i64, i8* }** %t1281
  %t1292 = call %nyx_string* @fmt_expr({ i64, i8* }* %t1291)
  %t1293 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1290, %nyx_string* %t1292)
  %t1294 = getelementptr [5 x i8], [5 x i8]* @.str181, i32 0, i32 0
  %t1295 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str181.c, i8* %t1294, i64 4)
  %t1296 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1293, %nyx_string* %t1295)
  %t1297 = load { i64, i8* }*, { i64, i8* }** %t1285
  %t1298 = call %nyx_string* @fmt_expr({ i64, i8* }* %t1297)
  %t1299 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1296, %nyx_string* %t1298)
  %t1300 = call i64 @out_line(%nyx_string* %t1299)
  ret i64 0
else294:
  br label %merge295
merge295:
  %t1301 = load %nyx_string*, %nyx_string** %t1146
  %t1302 = getelementptr [3 x i8], [3 x i8]* @.str182, i32 0, i32 0
  %t1303 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str182.c, i8* %t1302, i64 2)
  %t1304 = call i1 @nyx_string_equals(%nyx_string* %t1301, %nyx_string* %t1303)
  br i1 %t1304, label %then296, label %else297
then296:
  %t1305 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %t1306 = call i64 @fmt_if({ i64, i8* }* %t1305)
  ret i64 0
else297:
  br label %merge298
merge298:
  %t1307 = load %nyx_string*, %nyx_string** %t1146
  %t1308 = getelementptr [6 x i8], [6 x i8]* @.str183, i32 0, i32 0
  %t1309 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str183.c, i8* %t1308, i64 5)
  %t1310 = call i1 @nyx_string_equals(%nyx_string* %t1307, %nyx_string* %t1309)
  br i1 %t1310, label %then299, label %else300
then299:
  %t1311 = load { i64, i8* }*, { i64, i8* }** %t1149
  %t1312 = call i64 @nyx_array_get({ i64, i8* }* %t1311, i64 0)
  %t1313 = inttoptr i64 %t1312 to { i64, i8* }*
  store { i64, i8* }* %t1313, { i64, i8* }** %t1314
  %t1315 = load { i64, i8* }*, { i64, i8* }** %t1149
  %t1316 = call i64 @nyx_array_get({ i64, i8* }* %t1315, i64 1)
  %t1317 = inttoptr i64 %t1316 to { i64, i8* }*
  store { i64, i8* }* %t1317, { i64, i8* }** %t1318
  %t1319 = getelementptr [7 x i8], [7 x i8]* @.str184, i32 0, i32 0
  %t1320 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str184.c, i8* %t1319, i64 6)
  %t1321 = load { i64, i8* }*, { i64, i8* }** %t1314
  %t1322 = call %nyx_string* @fmt_expr({ i64, i8* }* %t1321)
  %t1323 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1320, %nyx_string* %t1322)
  %t1324 = getelementptr [3 x i8], [3 x i8]* @.str185, i32 0, i32 0
  %t1325 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str185.c, i8* %t1324, i64 2)
  %t1326 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1323, %nyx_string* %t1325)
  %t1327 = call i64 @out_line(%nyx_string* %t1326)
  %t1328 = load i64, i64* @g_indent
  %t1329 = add i64 %t1328, 1
  store i64 %t1329, i64* @g_indent
  %t1330 = load { i64, i8* }*, { i64, i8* }** %t1318
  %t1331 = call i64 @fmt_block_stmts({ i64, i8* }* %t1330)
  %t1332 = load i64, i64* @g_indent
  %t1333 = sub i64 %t1332, 1
  store i64 %t1333, i64* @g_indent
  %t1334 = getelementptr [2 x i8], [2 x i8]* @.str186, i32 0, i32 0
  %t1335 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str186.c, i8* %t1334, i64 1)
  %t1336 = call i64 @out_line(%nyx_string* %t1335)
  ret i64 0
else300:
  br label %merge301
merge301:
  %t1337 = load %nyx_string*, %nyx_string** %t1146
  %t1338 = getelementptr [4 x i8], [4 x i8]* @.str187, i32 0, i32 0
  %t1339 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str187.c, i8* %t1338, i64 3)
  %t1340 = call i1 @nyx_string_equals(%nyx_string* %t1337, %nyx_string* %t1339)
  br i1 %t1340, label %then302, label %else303
then302:
  %t1341 = load { i64, i8* }*, { i64, i8* }** %t1149
  %t1342 = call i64 @nyx_array_get_checked({ i64, i8* }* %t1341, i64 0, i64 2)
  %t1343 = inttoptr i64 %t1342 to %nyx_string*
  store %nyx_string* %t1343, %nyx_string** %t1344
  %t1345 = load { i64, i8* }*, { i64, i8* }** %t1149
  %t1346 = call i64 @nyx_array_get({ i64, i8* }* %t1345, i64 1)
  %t1347 = inttoptr i64 %t1346 to { i64, i8* }*
  store { i64, i8* }* %t1347, { i64, i8* }** %t1348
  %t1349 = load { i64, i8* }*, { i64, i8* }** %t1149
  %t1350 = call i64 @nyx_array_get({ i64, i8* }* %t1349, i64 2)
  %t1351 = inttoptr i64 %t1350 to { i64, i8* }*
  store { i64, i8* }* %t1351, { i64, i8* }** %t1352
  %t1353 = getelementptr [5 x i8], [5 x i8]* @.str188, i32 0, i32 0
  %t1354 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str188.c, i8* %t1353, i64 4)
  %t1355 = load %nyx_string*, %nyx_string** %t1344
  %t1356 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1354, %nyx_string* %t1355)
  %t1357 = getelementptr [5 x i8], [5 x i8]* @.str189, i32 0, i32 0
  %t1358 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str189.c, i8* %t1357, i64 4)
  %t1359 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1356, %nyx_string* %t1358)
  %t1360 = load { i64, i8* }*, { i64, i8* }** %t1348
  %t1361 = call %nyx_string* @fmt_expr({ i64, i8* }* %t1360)
  %t1362 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1359, %nyx_string* %t1361)
  %t1363 = getelementptr [3 x i8], [3 x i8]* @.str190, i32 0, i32 0
  %t1364 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str190.c, i8* %t1363, i64 2)
  %t1365 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1362, %nyx_string* %t1364)
  %t1366 = call i64 @out_line(%nyx_string* %t1365)
  %t1367 = load i64, i64* @g_indent
  %t1368 = add i64 %t1367, 1
  store i64 %t1368, i64* @g_indent
  %t1369 = load { i64, i8* }*, { i64, i8* }** %t1352
  %t1370 = call i64 @fmt_block_stmts({ i64, i8* }* %t1369)
  %t1371 = load i64, i64* @g_indent
  %t1372 = sub i64 %t1371, 1
  store i64 %t1372, i64* @g_indent
  %t1373 = getelementptr [2 x i8], [2 x i8]* @.str191, i32 0, i32 0
  %t1374 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str191.c, i8* %t1373, i64 1)
  %t1375 = call i64 @out_line(%nyx_string* %t1374)
  ret i64 0
else303:
  br label %merge304
merge304:
  %t1376 = load %nyx_string*, %nyx_string** %t1146
  %t1377 = getelementptr [7 x i8], [7 x i8]* @.str192, i32 0, i32 0
  %t1378 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str192.c, i8* %t1377, i64 6)
  %t1379 = call i1 @nyx_string_equals(%nyx_string* %t1376, %nyx_string* %t1378)
  br i1 %t1379, label %then305, label %else306
then305:
  %t1380 = load { i64, i8* }*, { i64, i8* }** %t1149
  %t1381 = call i64 @nyx_array_get({ i64, i8* }* %t1380, i64 0)
  %t1382 = inttoptr i64 %t1381 to { i64, i8* }*
  store { i64, i8* }* %t1382, { i64, i8* }** %t1383
  %t1384 = getelementptr [8 x i8], [8 x i8]* @.str193, i32 0, i32 0
  %t1385 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str193.c, i8* %t1384, i64 7)
  %t1386 = load { i64, i8* }*, { i64, i8* }** %t1383
  %t1387 = call %nyx_string* @fmt_expr({ i64, i8* }* %t1386)
  %t1388 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1385, %nyx_string* %t1387)
  %t1389 = call i64 @out_line(%nyx_string* %t1388)
  ret i64 0
else306:
  br label %merge307
merge307:
  %t1390 = load %nyx_string*, %nyx_string** %t1146
  %t1391 = getelementptr [6 x i8], [6 x i8]* @.str194, i32 0, i32 0
  %t1392 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str194.c, i8* %t1391, i64 5)
  %t1393 = call i1 @nyx_string_equals(%nyx_string* %t1390, %nyx_string* %t1392)
  br i1 %t1393, label %then308, label %else309
then308:
  %t1394 = getelementptr [6 x i8], [6 x i8]* @.str195, i32 0, i32 0
  %t1395 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str195.c, i8* %t1394, i64 5)
  %t1396 = call i64 @out_line(%nyx_string* %t1395)
  ret i64 0
else309:
  br label %merge310
merge310:
  %t1397 = load %nyx_string*, %nyx_string** %t1146
  %t1398 = getelementptr [9 x i8], [9 x i8]* @.str196, i32 0, i32 0
  %t1399 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str196.c, i8* %t1398, i64 8)
  %t1400 = call i1 @nyx_string_equals(%nyx_string* %t1397, %nyx_string* %t1399)
  br i1 %t1400, label %then311, label %else312
then311:
  %t1401 = getelementptr [9 x i8], [9 x i8]* @.str197, i32 0, i32 0
  %t1402 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str197.c, i8* %t1401, i64 8)
  %t1403 = call i64 @out_line(%nyx_string* %t1402)
  ret i64 0
else312:
  br label %merge313
merge313:
  %t1404 = load %nyx_string*, %nyx_string** %t1146
  %t1405 = getelementptr [9 x i8], [9 x i8]* @.str198, i32 0, i32 0
  %t1406 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str198.c, i8* %t1405, i64 8)
  %t1407 = call i1 @nyx_string_equals(%nyx_string* %t1404, %nyx_string* %t1406)
  br i1 %t1407, label %then314, label %else315
then314:
  %t1408 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %t1409 = getelementptr [1 x i8], [1 x i8]* @.str199, i32 0, i32 0
  %t1410 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str199.c, i8* %t1409, i64 0)
  %t1411 = call i64 @fmt_function({ i64, i8* }* %t1408, %nyx_string* %t1410)
  ret i64 0
else315:
  br label %merge316
merge316:
  %t1412 = load %nyx_string*, %nyx_string** %t1146
  %t1413 = getelementptr [7 x i8], [7 x i8]* @.str200, i32 0, i32 0
  %t1414 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str200.c, i8* %t1413, i64 6)
  %t1415 = call i1 @nyx_string_equals(%nyx_string* %t1412, %nyx_string* %t1414)
  br i1 %t1415, label %then317, label %else318
then317:
  %t1416 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %t1417 = call i64 @fmt_struct({ i64, i8* }* %t1416)
  ret i64 0
else318:
  br label %merge319
merge319:
  %t1418 = load %nyx_string*, %nyx_string** %t1146
  %t1419 = getelementptr [9 x i8], [9 x i8]* @.str201, i32 0, i32 0
  %t1420 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str201.c, i8* %t1419, i64 8)
  %t1421 = call i1 @nyx_string_equals(%nyx_string* %t1418, %nyx_string* %t1420)
  br i1 %t1421, label %then320, label %else321
then320:
  %t1422 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %t1423 = call i64 @fmt_enum({ i64, i8* }* %t1422)
  ret i64 0
else321:
  br label %merge322
merge322:
  %t1424 = load %nyx_string*, %nyx_string** %t1146
  %t1425 = getelementptr [10 x i8], [10 x i8]* @.str202, i32 0, i32 0
  %t1426 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str202.c, i8* %t1425, i64 9)
  %t1427 = call i1 @nyx_string_equals(%nyx_string* %t1424, %nyx_string* %t1426)
  br i1 %t1427, label %then323, label %else324
then323:
  %t1428 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %t1429 = call i64 @fmt_trait({ i64, i8* }* %t1428)
  ret i64 0
else324:
  br label %merge325
merge325:
  %t1430 = load %nyx_string*, %nyx_string** %t1146
  %t1431 = getelementptr [5 x i8], [5 x i8]* @.str203, i32 0, i32 0
  %t1432 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str203.c, i8* %t1431, i64 4)
  %t1433 = call i1 @nyx_string_equals(%nyx_string* %t1430, %nyx_string* %t1432)
  br i1 %t1433, label %then326, label %else327
then326:
  %t1434 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %t1435 = call i64 @fmt_impl({ i64, i8* }* %t1434)
  ret i64 0
else327:
  br label %merge328
merge328:
  %t1436 = load %nyx_string*, %nyx_string** %t1146
  %t1437 = getelementptr [11 x i8], [11 x i8]* @.str204, i32 0, i32 0
  %t1438 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str204.c, i8* %t1437, i64 10)
  %t1439 = call i1 @nyx_string_equals(%nyx_string* %t1436, %nyx_string* %t1438)
  br i1 %t1439, label %then329, label %else330
then329:
  %t1440 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %t1441 = call i64 @fmt_impl_trait({ i64, i8* }* %t1440)
  ret i64 0
else330:
  br label %merge331
merge331:
  %t1442 = load %nyx_string*, %nyx_string** %t1146
  %t1443 = getelementptr [7 x i8], [7 x i8]* @.str205, i32 0, i32 0
  %t1444 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str205.c, i8* %t1443, i64 6)
  %t1445 = call i1 @nyx_string_equals(%nyx_string* %t1442, %nyx_string* %t1444)
  br i1 %t1445, label %then332, label %else333
then332:
  %t1446 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %t1447 = call i64 @fmt_import({ i64, i8* }* %t1446)
  ret i64 0
else333:
  br label %merge334
merge334:
  %t1448 = load %nyx_string*, %nyx_string** %t1146
  %t1449 = getelementptr [7 x i8], [7 x i8]* @.str206, i32 0, i32 0
  %t1450 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str206.c, i8* %t1449, i64 6)
  %t1451 = call i1 @nyx_string_equals(%nyx_string* %t1448, %nyx_string* %t1450)
  br i1 %t1451, label %then335, label %else336
then335:
  %t1452 = load { i64, i8* }*, { i64, i8* }** %t1149
  %t1453 = call i64 @nyx_array_get({ i64, i8* }* %t1452, i64 0)
  %t1454 = inttoptr i64 %t1453 to { i64, i8* }*
  store { i64, i8* }* %t1454, { i64, i8* }** %t1455
  %t1456 = load { i64, i8* }*, { i64, i8* }** %t1455
  %t1457 = call %nyx_string* @node_type({ i64, i8* }* %t1456)
  store %nyx_string* %t1457, %nyx_string** %t1458
  %t1459 = load %nyx_string*, %nyx_string** %t1458
  %t1460 = getelementptr [9 x i8], [9 x i8]* @.str207, i32 0, i32 0
  %t1461 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str207.c, i8* %t1460, i64 8)
  %t1462 = call i1 @nyx_string_equals(%nyx_string* %t1459, %nyx_string* %t1461)
  br i1 %t1462, label %then338, label %else339
then338:
  %t1463 = load { i64, i8* }*, { i64, i8* }** %t1455
  %t1464 = getelementptr [8 x i8], [8 x i8]* @.str208, i32 0, i32 0
  %t1465 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str208.c, i8* %t1464, i64 7)
  %t1466 = call i64 @fmt_function({ i64, i8* }* %t1463, %nyx_string* %t1465)
  ret i64 0
else339:
  br label %merge340
merge340:
  %t1467 = load %nyx_string*, %nyx_string** %t1458
  %t1468 = getelementptr [7 x i8], [7 x i8]* @.str209, i32 0, i32 0
  %t1469 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str209.c, i8* %t1468, i64 6)
  %t1470 = call i1 @nyx_string_equals(%nyx_string* %t1467, %nyx_string* %t1469)
  br i1 %t1470, label %then341, label %else342
then341:
  %t1471 = call %nyx_string* @indent_str()
  %t1472 = getelementptr [8 x i8], [8 x i8]* @.str210, i32 0, i32 0
  %t1473 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str210.c, i8* %t1472, i64 7)
  %t1474 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1471, %nyx_string* %t1473)
  %t1475 = call i64 @out(%nyx_string* %t1474)
  %t1476 = load { i64, i8* }*, { i64, i8* }** %t1455
  %t1477 = call i64 @fmt_struct_inline({ i64, i8* }* %t1476)
  ret i64 0
else342:
  br label %merge343
merge343:
  %t1478 = load %nyx_string*, %nyx_string** %t1458
  %t1479 = getelementptr [9 x i8], [9 x i8]* @.str211, i32 0, i32 0
  %t1480 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str211.c, i8* %t1479, i64 8)
  %t1481 = call i1 @nyx_string_equals(%nyx_string* %t1478, %nyx_string* %t1480)
  br i1 %t1481, label %then344, label %else345
then344:
  %t1482 = call %nyx_string* @indent_str()
  %t1483 = getelementptr [8 x i8], [8 x i8]* @.str212, i32 0, i32 0
  %t1484 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str212.c, i8* %t1483, i64 7)
  %t1485 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1482, %nyx_string* %t1484)
  %t1486 = call i64 @out(%nyx_string* %t1485)
  %t1487 = load { i64, i8* }*, { i64, i8* }** %t1455
  %t1488 = call i64 @fmt_enum_inline({ i64, i8* }* %t1487)
  ret i64 0
else345:
  br label %merge346
merge346:
  %t1489 = call %nyx_string* @indent_str()
  %t1490 = getelementptr [8 x i8], [8 x i8]* @.str213, i32 0, i32 0
  %t1491 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str213.c, i8* %t1490, i64 7)
  %t1492 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1489, %nyx_string* %t1491)
  %t1493 = call i64 @out(%nyx_string* %t1492)
  %t1494 = load { i64, i8* }*, { i64, i8* }** %t1455
  %t1495 = call i64 @fmt_stmt({ i64, i8* }* %t1494)
  ret i64 0
else336:
  br label %merge337
merge337:
  %t1496 = load %nyx_string*, %nyx_string** %t1146
  %t1497 = getelementptr [11 x i8], [11 x i8]* @.str214, i32 0, i32 0
  %t1498 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str214.c, i8* %t1497, i64 10)
  %t1499 = call i1 @nyx_string_equals(%nyx_string* %t1496, %nyx_string* %t1498)
  br i1 %t1499, label %then347, label %else348
then347:
  %t1500 = load { i64, i8* }*, { i64, i8* }** %t1149
  %t1501 = call i64 @nyx_array_get_checked({ i64, i8* }* %t1500, i64 0, i64 2)
  %t1502 = inttoptr i64 %t1501 to %nyx_string*
  store %nyx_string* %t1502, %nyx_string** %t1503
  %t1504 = load { i64, i8* }*, { i64, i8* }** %t1149
  %t1505 = call i64 @nyx_array_get_checked({ i64, i8* }* %t1504, i64 1, i64 2)
  %t1506 = inttoptr i64 %t1505 to %nyx_string*
  store %nyx_string* %t1506, %nyx_string** %t1507
  %t1508 = getelementptr [6 x i8], [6 x i8]* @.str215, i32 0, i32 0
  %t1509 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str215.c, i8* %t1508, i64 5)
  %t1510 = load %nyx_string*, %nyx_string** %t1503
  %t1511 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1509, %nyx_string* %t1510)
  %t1512 = getelementptr [4 x i8], [4 x i8]* @.str216, i32 0, i32 0
  %t1513 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str216.c, i8* %t1512, i64 3)
  %t1514 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1511, %nyx_string* %t1513)
  %t1515 = load %nyx_string*, %nyx_string** %t1507
  %t1516 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1514, %nyx_string* %t1515)
  %t1517 = call i64 @out_line(%nyx_string* %t1516)
  ret i64 0
else348:
  br label %merge349
merge349:
  %t1518 = load %nyx_string*, %nyx_string** %t1146
  %t1519 = getelementptr [10 x i8], [10 x i8]* @.str217, i32 0, i32 0
  %t1520 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str217.c, i8* %t1519, i64 9)
  %t1521 = call i1 @nyx_string_equals(%nyx_string* %t1518, %nyx_string* %t1520)
  br i1 %t1521, label %then350, label %else351
then350:
  %t1522 = load { i64, i8* }*, { i64, i8* }** %t1149
  %t1523 = call i64 @nyx_array_get_checked({ i64, i8* }* %t1522, i64 0, i64 2)
  %t1524 = inttoptr i64 %t1523 to %nyx_string*
  store %nyx_string* %t1524, %nyx_string** %t1525
  %t1526 = load { i64, i8* }*, { i64, i8* }** %t1149
  %t1527 = call i64 @nyx_array_get({ i64, i8* }* %t1526, i64 1)
  %t1528 = inttoptr i64 %t1527 to { i64, i8* }*
  store { i64, i8* }* %t1528, { i64, i8* }** %t1529
  %t1530 = getelementptr [7 x i8], [7 x i8]* @.str218, i32 0, i32 0
  %t1531 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str218.c, i8* %t1530, i64 6)
  %t1532 = load %nyx_string*, %nyx_string** %t1525
  %t1533 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1531, %nyx_string* %t1532)
  %t1534 = getelementptr [4 x i8], [4 x i8]* @.str219, i32 0, i32 0
  %t1535 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str219.c, i8* %t1534, i64 3)
  %t1536 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1533, %nyx_string* %t1535)
  %t1537 = call i64 @out_line(%nyx_string* %t1536)
  %t1538 = load i64, i64* @g_indent
  %t1539 = add i64 %t1538, 1
  store i64 %t1539, i64* @g_indent
  %t1540 = load { i64, i8* }*, { i64, i8* }** %t1529
  %t1541 = call i64 @fmt_block_stmts({ i64, i8* }* %t1540)
  %t1542 = load i64, i64* @g_indent
  %t1543 = sub i64 %t1542, 1
  store i64 %t1543, i64* @g_indent
  %t1544 = getelementptr [2 x i8], [2 x i8]* @.str220, i32 0, i32 0
  %t1545 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str220.c, i8* %t1544, i64 1)
  %t1546 = call i64 @out_line(%nyx_string* %t1545)
  %t1547 = call i64 @out_empty()
  ret i64 0
else351:
  br label %merge352
merge352:
  %t1548 = load %nyx_string*, %nyx_string** %t1146
  %t1549 = getelementptr [6 x i8], [6 x i8]* @.str221, i32 0, i32 0
  %t1550 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str221.c, i8* %t1549, i64 5)
  %t1551 = call i1 @nyx_string_equals(%nyx_string* %t1548, %nyx_string* %t1550)
  br i1 %t1551, label %then353, label %else354
then353:
  %t1552 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %t1553 = call %nyx_string* @fmt_match_expr({ i64, i8* }* %t1552)
  %t1554 = call i64 @out_line(%nyx_string* %t1553)
  ret i64 0
else354:
  br label %merge355
merge355:
  store i1 true, i1* %t1555
  store i1 true, i1* %t1556
  %t1557 = load %nyx_string*, %nyx_string** %t1146
  %t1558 = getelementptr [5 x i8], [5 x i8]* @.str222, i32 0, i32 0
  %t1559 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str222.c, i8* %t1558, i64 4)
  %t1560 = call i1 @nyx_string_equals(%nyx_string* %t1557, %nyx_string* %t1559)
  br i1 %t1560, label %sc_or_end357, label %sc_or_rhs356
sc_or_rhs356:
  %t1561 = load %nyx_string*, %nyx_string** %t1146
  %t1562 = getelementptr [12 x i8], [12 x i8]* @.str223, i32 0, i32 0
  %t1563 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str223.c, i8* %t1562, i64 11)
  %t1564 = call i1 @nyx_string_equals(%nyx_string* %t1561, %nyx_string* %t1563)
  store i1 %t1564, i1* %t1556
  br label %sc_or_end357
sc_or_end357:
  %t1565 = load i1, i1* %t1556
  br i1 %t1565, label %sc_or_end359, label %sc_or_rhs358
sc_or_rhs358:
  %t1566 = load %nyx_string*, %nyx_string** %t1146
  %t1567 = getelementptr [7 x i8], [7 x i8]* @.str224, i32 0, i32 0
  %t1568 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str224.c, i8* %t1567, i64 6)
  %t1569 = call i1 @nyx_string_equals(%nyx_string* %t1566, %nyx_string* %t1568)
  store i1 %t1569, i1* %t1555
  br label %sc_or_end359
sc_or_end359:
  %t1570 = load i1, i1* %t1555
  br i1 %t1570, label %then360, label %else361
then360:
  %t1571 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %t1572 = call %nyx_string* @fmt_expr({ i64, i8* }* %t1571)
  %t1573 = call i64 @out_line(%nyx_string* %t1572)
  ret i64 0
else361:
  br label %merge362
merge362:
  %t1574 = load %nyx_string*, %nyx_string** %t1146
  %t1575 = getelementptr [6 x i8], [6 x i8]* @.str225, i32 0, i32 0
  %t1576 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str225.c, i8* %t1575, i64 5)
  %t1577 = call i1 @nyx_string_equals(%nyx_string* %t1574, %nyx_string* %t1576)
  br i1 %t1577, label %then363, label %else364
then363:
  %t1578 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %t1579 = call i64 @fmt_block_stmts({ i64, i8* }* %t1578)
  ret i64 0
else364:
  br label %merge365
merge365:
  %t1580 = getelementptr [18 x i8], [18 x i8]* @.str226, i32 0, i32 0
  %t1581 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str226.c, i8* %t1580, i64 17)
  %t1582 = load %nyx_string*, %nyx_string** %t1146
  %t1583 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1581, %nyx_string* %t1582)
  %t1584 = getelementptr [4 x i8], [4 x i8]* @.str227, i32 0, i32 0
  %t1585 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str227.c, i8* %t1584, i64 3)
  %t1586 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1583, %nyx_string* %t1585)
  %t1587 = call i64 @out_line(%nyx_string* %t1586)
  ret i64 0
}

define internal i64 @fmt_let(
{ i64, i8* }* %node.param, %nyx_string* %keyword.param) {
  %node.ptr = alloca { i64, i8* }*
  %keyword.ptr = alloca %nyx_string*
  %t1590 = alloca { i64, i8* }*
  %t1594 = alloca { i64, i8* }*
  %t1598 = alloca %nyx_string*
  %t1601 = alloca i64
  %t1605 = alloca { i64, i8* }*
  %t1609 = alloca %nyx_string*
  %t1612 = alloca %nyx_string*
  %t1629 = alloca %nyx_string*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  store %nyx_string* %keyword.param, %nyx_string** %keyword.ptr
  %t1588 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %t1589 = call { i64, i8* }* @node_data({ i64, i8* }* %t1588)
  store { i64, i8* }* %t1589, { i64, i8* }** %t1590
  %t1591 = load { i64, i8* }*, { i64, i8* }** %t1590
  %t1592 = call i64 @nyx_array_get({ i64, i8* }* %t1591, i64 0)
  %t1593 = inttoptr i64 %t1592 to { i64, i8* }*
  store { i64, i8* }* %t1593, { i64, i8* }** %t1594
  %t1595 = load { i64, i8* }*, { i64, i8* }** %t1594
  %t1596 = call i64 @nyx_array_get_checked({ i64, i8* }* %t1595, i64 0, i64 2)
  %t1597 = inttoptr i64 %t1596 to %nyx_string*
  store %nyx_string* %t1597, %nyx_string** %t1598
  %t1599 = load { i64, i8* }*, { i64, i8* }** %t1590
  %t1600 = call i64 @nyx_slot_as_int_checked({ i64, i8* }* %t1599, i64 1)
  store i64 %t1600, i64* %t1601
  %t1602 = load { i64, i8* }*, { i64, i8* }** %t1590
  %t1603 = call i64 @nyx_array_get({ i64, i8* }* %t1602, i64 2)
  %t1604 = inttoptr i64 %t1603 to { i64, i8* }*
  store { i64, i8* }* %t1604, { i64, i8* }** %t1605
  %t1606 = load { i64, i8* }*, { i64, i8* }** %t1590
  %t1607 = call i64 @nyx_array_get_checked({ i64, i8* }* %t1606, i64 3, i64 2)
  %t1608 = inttoptr i64 %t1607 to %nyx_string*
  store %nyx_string* %t1608, %nyx_string** %t1609
  %t1610 = getelementptr [4 x i8], [4 x i8]* @.str228, i32 0, i32 0
  %t1611 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str228.c, i8* %t1610, i64 3)
  store %nyx_string* %t1611, %nyx_string** %t1612
  %t1613 = load %nyx_string*, %nyx_string** %keyword.ptr
  %t1614 = getelementptr [6 x i8], [6 x i8]* @.str229, i32 0, i32 0
  %t1615 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str229.c, i8* %t1614, i64 5)
  %t1616 = call i1 @nyx_string_equals(%nyx_string* %t1613, %nyx_string* %t1615)
  br i1 %t1616, label %then366, label %else367
then366:
  %t1617 = getelementptr [6 x i8], [6 x i8]* @.str230, i32 0, i32 0
  %t1618 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str230.c, i8* %t1617, i64 5)
  store %nyx_string* %t1618, %nyx_string** %t1612
  br label %merge368
else367:
  br label %merge368
merge368:
  %t1619 = load i64, i64* %t1601
  %t1620 = icmp eq i64 %t1619, 1
  br i1 %t1620, label %then369, label %else370
then369:
  %t1621 = getelementptr [4 x i8], [4 x i8]* @.str231, i32 0, i32 0
  %t1622 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str231.c, i8* %t1621, i64 3)
  store %nyx_string* %t1622, %nyx_string** %t1612
  br label %merge371
else370:
  br label %merge371
merge371:
  %t1623 = load %nyx_string*, %nyx_string** %t1612
  %t1624 = getelementptr [2 x i8], [2 x i8]* @.str232, i32 0, i32 0
  %t1625 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str232.c, i8* %t1624, i64 1)
  %t1626 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1623, %nyx_string* %t1625)
  %t1627 = load %nyx_string*, %nyx_string** %t1598
  %t1628 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1626, %nyx_string* %t1627)
  store %nyx_string* %t1628, %nyx_string** %t1629
  %t1630 = load %nyx_string*, %nyx_string** %t1609
  %t1631 = getelementptr [1 x i8], [1 x i8]* @.str233, i32 0, i32 0
  %t1632 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str233.c, i8* %t1631, i64 0)
  %t1633 = call i1 @nyx_string_equals(%nyx_string* %t1630, %nyx_string* %t1632)
  %t1634 = xor i1 %t1633, true
  br i1 %t1634, label %then372, label %else373
then372:
  %t1635 = load %nyx_string*, %nyx_string** %t1629
  %t1636 = getelementptr [3 x i8], [3 x i8]* @.str234, i32 0, i32 0
  %t1637 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str234.c, i8* %t1636, i64 2)
  %t1638 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1635, %nyx_string* %t1637)
  %t1639 = load %nyx_string*, %nyx_string** %t1609
  %t1640 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1638, %nyx_string* %t1639)
  store %nyx_string* %t1640, %nyx_string** %t1629
  br label %merge374
else373:
  br label %merge374
merge374:
  %t1641 = load %nyx_string*, %nyx_string** %t1629
  %t1642 = getelementptr [4 x i8], [4 x i8]* @.str235, i32 0, i32 0
  %t1643 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str235.c, i8* %t1642, i64 3)
  %t1644 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1641, %nyx_string* %t1643)
  %t1645 = load { i64, i8* }*, { i64, i8* }** %t1605
  %t1646 = call %nyx_string* @fmt_expr({ i64, i8* }* %t1645)
  %t1647 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1644, %nyx_string* %t1646)
  store %nyx_string* %t1647, %nyx_string** %t1629
  %t1648 = load %nyx_string*, %nyx_string** %t1629
  %t1649 = call i64 @out_line(%nyx_string* %t1648)
  ret i64 0
}

define internal i64 @fmt_if(
{ i64, i8* }* %node.param) {
  %node.ptr = alloca { i64, i8* }*
  %t1652 = alloca { i64, i8* }*
  %t1656 = alloca { i64, i8* }*
  %t1660 = alloca { i64, i8* }*
  %t1664 = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %t1650 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %t1651 = call { i64, i8* }* @node_data({ i64, i8* }* %t1650)
  store { i64, i8* }* %t1651, { i64, i8* }** %t1652
  %t1653 = load { i64, i8* }*, { i64, i8* }** %t1652
  %t1654 = call i64 @nyx_array_get({ i64, i8* }* %t1653, i64 0)
  %t1655 = inttoptr i64 %t1654 to { i64, i8* }*
  store { i64, i8* }* %t1655, { i64, i8* }** %t1656
  %t1657 = load { i64, i8* }*, { i64, i8* }** %t1652
  %t1658 = call i64 @nyx_array_get({ i64, i8* }* %t1657, i64 1)
  %t1659 = inttoptr i64 %t1658 to { i64, i8* }*
  store { i64, i8* }* %t1659, { i64, i8* }** %t1660
  %t1661 = load { i64, i8* }*, { i64, i8* }** %t1652
  %t1662 = call i64 @nyx_array_get({ i64, i8* }* %t1661, i64 2)
  %t1663 = inttoptr i64 %t1662 to { i64, i8* }*
  store { i64, i8* }* %t1663, { i64, i8* }** %t1664
  %t1665 = getelementptr [4 x i8], [4 x i8]* @.str236, i32 0, i32 0
  %t1666 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str236.c, i8* %t1665, i64 3)
  %t1667 = load { i64, i8* }*, { i64, i8* }** %t1656
  %t1668 = call %nyx_string* @fmt_expr({ i64, i8* }* %t1667)
  %t1669 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1666, %nyx_string* %t1668)
  %t1670 = getelementptr [3 x i8], [3 x i8]* @.str237, i32 0, i32 0
  %t1671 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str237.c, i8* %t1670, i64 2)
  %t1672 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1669, %nyx_string* %t1671)
  %t1673 = call i64 @out_line(%nyx_string* %t1672)
  %t1674 = load i64, i64* @g_indent
  %t1675 = add i64 %t1674, 1
  store i64 %t1675, i64* @g_indent
  %t1676 = load { i64, i8* }*, { i64, i8* }** %t1660
  %t1677 = call i64 @fmt_block_stmts({ i64, i8* }* %t1676)
  %t1678 = load i64, i64* @g_indent
  %t1679 = sub i64 %t1678, 1
  store i64 %t1679, i64* @g_indent
  %t1680 = load { i64, i8* }*, { i64, i8* }** %t1664
  %t1681 = call %nyx_string* @node_type({ i64, i8* }* %t1680)
  %t1682 = getelementptr [6 x i8], [6 x i8]* @.str238, i32 0, i32 0
  %t1683 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str238.c, i8* %t1682, i64 5)
  %t1684 = call i1 @nyx_string_equals(%nyx_string* %t1681, %nyx_string* %t1683)
  %t1685 = xor i1 %t1684, true
  br i1 %t1685, label %then375, label %else376
then375:
  %t1686 = load { i64, i8* }*, { i64, i8* }** %t1664
  %t1687 = call %nyx_string* @node_type({ i64, i8* }* %t1686)
  %t1688 = getelementptr [3 x i8], [3 x i8]* @.str239, i32 0, i32 0
  %t1689 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str239.c, i8* %t1688, i64 2)
  %t1690 = call i1 @nyx_string_equals(%nyx_string* %t1687, %nyx_string* %t1689)
  br i1 %t1690, label %then378, label %else379
then378:
  %t1691 = call %nyx_string* @indent_str()
  %t1692 = getelementptr [8 x i8], [8 x i8]* @.str240, i32 0, i32 0
  %t1693 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str240.c, i8* %t1692, i64 7)
  %t1694 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1691, %nyx_string* %t1693)
  %t1695 = call i64 @out(%nyx_string* %t1694)
  %t1696 = load { i64, i8* }*, { i64, i8* }** %t1664
  %t1697 = call i64 @fmt_if({ i64, i8* }* %t1696)
  br label %merge380
else379:
  %t1698 = getelementptr [9 x i8], [9 x i8]* @.str241, i32 0, i32 0
  %t1699 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str241.c, i8* %t1698, i64 8)
  %t1700 = call i64 @out_line(%nyx_string* %t1699)
  %t1701 = load i64, i64* @g_indent
  %t1702 = add i64 %t1701, 1
  store i64 %t1702, i64* @g_indent
  %t1703 = load { i64, i8* }*, { i64, i8* }** %t1664
  %t1704 = call i64 @fmt_block_stmts({ i64, i8* }* %t1703)
  %t1705 = load i64, i64* @g_indent
  %t1706 = sub i64 %t1705, 1
  store i64 %t1706, i64* @g_indent
  %t1707 = getelementptr [2 x i8], [2 x i8]* @.str242, i32 0, i32 0
  %t1708 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str242.c, i8* %t1707, i64 1)
  %t1709 = call i64 @out_line(%nyx_string* %t1708)
  br label %merge380
merge380:
  br label %merge377
else376:
  %t1710 = getelementptr [2 x i8], [2 x i8]* @.str243, i32 0, i32 0
  %t1711 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str243.c, i8* %t1710, i64 1)
  %t1712 = call i64 @out_line(%nyx_string* %t1711)
  br label %merge377
merge377:
  ret i64 0
}

define internal i64 @fmt_function(
{ i64, i8* }* %node.param, %nyx_string* %prefix.param) {
  %node.ptr = alloca { i64, i8* }*
  %prefix.ptr = alloca %nyx_string*
  %t1715 = alloca { i64, i8* }*
  %t1719 = alloca %nyx_string*
  %t1723 = alloca { i64, i8* }*
  %t1727 = alloca %nyx_string*
  %t1731 = alloca { i64, i8* }*
  %t1733 = alloca { i64, i8* }*
  %t1740 = alloca { i64, i8* }*
  %t1750 = alloca %nyx_string*
  %t1758 = alloca i64
  %t1761 = alloca %nyx_string*
  %t1775 = alloca %nyx_string*
  %t1789 = alloca i64
  %t1792 = alloca %nyx_string*
  %t1795 = alloca %nyx_string*
  %t1798 = alloca %nyx_string*
  %t1812 = alloca { i64, i8* }*
  %t1816 = alloca %nyx_string*
  %t1820 = alloca %nyx_string*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  store %nyx_string* %prefix.param, %nyx_string** %prefix.ptr
  %t1713 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %t1714 = call { i64, i8* }* @node_data({ i64, i8* }* %t1713)
  store { i64, i8* }* %t1714, { i64, i8* }** %t1715
  %t1716 = load { i64, i8* }*, { i64, i8* }** %t1715
  %t1717 = call i64 @nyx_array_get_checked({ i64, i8* }* %t1716, i64 0, i64 2)
  %t1718 = inttoptr i64 %t1717 to %nyx_string*
  store %nyx_string* %t1718, %nyx_string** %t1719
  %t1720 = load { i64, i8* }*, { i64, i8* }** %t1715
  %t1721 = call i64 @nyx_array_get({ i64, i8* }* %t1720, i64 1)
  %t1722 = inttoptr i64 %t1721 to { i64, i8* }*
  store { i64, i8* }* %t1722, { i64, i8* }** %t1723
  %t1724 = load { i64, i8* }*, { i64, i8* }** %t1715
  %t1725 = call i64 @nyx_array_get_checked({ i64, i8* }* %t1724, i64 2, i64 2)
  %t1726 = inttoptr i64 %t1725 to %nyx_string*
  store %nyx_string* %t1726, %nyx_string** %t1727
  %t1728 = load { i64, i8* }*, { i64, i8* }** %t1715
  %t1729 = call i64 @nyx_array_get({ i64, i8* }* %t1728, i64 3)
  %t1730 = inttoptr i64 %t1729 to { i64, i8* }*
  store { i64, i8* }* %t1730, { i64, i8* }** %t1731
  %t1732 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t1732, { i64, i8* }** %t1733
  %t1734 = load { i64, i8* }*, { i64, i8* }** %t1715
  %t1735 = call i64 @nyx_array_length({ i64, i8* }* %t1734)
  %t1736 = icmp sgt i64 %t1735, 4
  br i1 %t1736, label %then381, label %else382
then381:
  %t1737 = load { i64, i8* }*, { i64, i8* }** %t1715
  %t1738 = call i64 @nyx_array_get({ i64, i8* }* %t1737, i64 4)
  %t1739 = inttoptr i64 %t1738 to { i64, i8* }*
  store { i64, i8* }* %t1739, { i64, i8* }** %t1740
  %t1741 = load { i64, i8* }*, { i64, i8* }** %t1740
  store { i64, i8* }* %t1741, { i64, i8* }** %t1733
  br label %merge383
else382:
  br label %merge383
merge383:
  %t1742 = call %nyx_string* @indent_str()
  %t1743 = load %nyx_string*, %nyx_string** %prefix.ptr
  %t1744 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1742, %nyx_string* %t1743)
  %t1745 = getelementptr [4 x i8], [4 x i8]* @.str244, i32 0, i32 0
  %t1746 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str244.c, i8* %t1745, i64 3)
  %t1747 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1744, %nyx_string* %t1746)
  %t1748 = load %nyx_string*, %nyx_string** %t1719
  %t1749 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1747, %nyx_string* %t1748)
  store %nyx_string* %t1749, %nyx_string** %t1750
  %t1751 = load { i64, i8* }*, { i64, i8* }** %t1733
  %t1752 = call i64 @nyx_array_length({ i64, i8* }* %t1751)
  %t1753 = icmp sgt i64 %t1752, 0
  br i1 %t1753, label %then384, label %else385
then384:
  %t1754 = load %nyx_string*, %nyx_string** %t1750
  %t1755 = getelementptr [2 x i8], [2 x i8]* @.str245, i32 0, i32 0
  %t1756 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str245.c, i8* %t1755, i64 1)
  %t1757 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1754, %nyx_string* %t1756)
  store %nyx_string* %t1757, %nyx_string** %t1750
  store i64 0, i64* %t1758
  %t1759 = getelementptr [3 x i8], [3 x i8]* @.str246, i32 0, i32 0
  %t1760 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str246.c, i8* %t1759, i64 2)
  store %nyx_string* %t1760, %nyx_string** %t1761
  br label %while_cond387
while_cond387:
  %t1762 = load i64, i64* %t1758
  %t1763 = load { i64, i8* }*, { i64, i8* }** %t1733
  %t1764 = call i64 @nyx_array_length({ i64, i8* }* %t1763)
  %t1765 = icmp slt i64 %t1762, %t1764
  br i1 %t1765, label %while_body388, label %while_end389
while_body388:
  %t1766 = load i64, i64* %t1758
  %t1767 = icmp sgt i64 %t1766, 0
  br i1 %t1767, label %then390, label %else391
then390:
  %t1768 = load %nyx_string*, %nyx_string** %t1750
  %t1769 = load %nyx_string*, %nyx_string** %t1761
  %t1770 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1768, %nyx_string* %t1769)
  store %nyx_string* %t1770, %nyx_string** %t1750
  br label %merge392
else391:
  br label %merge392
merge392:
  %t1771 = load { i64, i8* }*, { i64, i8* }** %t1733
  %t1772 = load i64, i64* %t1758
  %t1773 = call i64 @nyx_array_get_checked({ i64, i8* }* %t1771, i64 %t1772, i64 2)
  %t1774 = inttoptr i64 %t1773 to %nyx_string*
  store %nyx_string* %t1774, %nyx_string** %t1775
  %t1776 = load %nyx_string*, %nyx_string** %t1750
  %t1777 = load %nyx_string*, %nyx_string** %t1775
  %t1778 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1776, %nyx_string* %t1777)
  store %nyx_string* %t1778, %nyx_string** %t1750
  %t1779 = load i64, i64* %t1758
  %t1780 = add i64 %t1779, 1
  store i64 %t1780, i64* %t1758
  br label %while_cond387
while_end389:
  %t1781 = load %nyx_string*, %nyx_string** %t1750
  %t1782 = getelementptr [2 x i8], [2 x i8]* @.str247, i32 0, i32 0
  %t1783 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str247.c, i8* %t1782, i64 1)
  %t1784 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1781, %nyx_string* %t1783)
  store %nyx_string* %t1784, %nyx_string** %t1750
  br label %merge386
else385:
  br label %merge386
merge386:
  %t1785 = load %nyx_string*, %nyx_string** %t1750
  %t1786 = getelementptr [2 x i8], [2 x i8]* @.str248, i32 0, i32 0
  %t1787 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str248.c, i8* %t1786, i64 1)
  %t1788 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1785, %nyx_string* %t1787)
  store %nyx_string* %t1788, %nyx_string** %t1750
  store i64 0, i64* %t1789
  %t1790 = getelementptr [3 x i8], [3 x i8]* @.str249, i32 0, i32 0
  %t1791 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str249.c, i8* %t1790, i64 2)
  store %nyx_string* %t1791, %nyx_string** %t1792
  %t1793 = getelementptr [1 x i8], [1 x i8]* @.str250, i32 0, i32 0
  %t1794 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str250.c, i8* %t1793, i64 0)
  store %nyx_string* %t1794, %nyx_string** %t1795
  %t1796 = getelementptr [3 x i8], [3 x i8]* @.str251, i32 0, i32 0
  %t1797 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str251.c, i8* %t1796, i64 2)
  store %nyx_string* %t1797, %nyx_string** %t1798
  br label %while_cond393
while_cond393:
  %t1799 = load i64, i64* %t1789
  %t1800 = load { i64, i8* }*, { i64, i8* }** %t1723
  %t1801 = call i64 @nyx_array_length({ i64, i8* }* %t1800)
  %t1802 = icmp slt i64 %t1799, %t1801
  br i1 %t1802, label %while_body394, label %while_end395
while_body394:
  %t1803 = load i64, i64* %t1789
  %t1804 = icmp sgt i64 %t1803, 0
  br i1 %t1804, label %then396, label %else397
then396:
  %t1805 = load %nyx_string*, %nyx_string** %t1750
  %t1806 = load %nyx_string*, %nyx_string** %t1792
  %t1807 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1805, %nyx_string* %t1806)
  store %nyx_string* %t1807, %nyx_string** %t1750
  br label %merge398
else397:
  br label %merge398
merge398:
  %t1808 = load { i64, i8* }*, { i64, i8* }** %t1723
  %t1809 = load i64, i64* %t1789
  %t1810 = call i64 @nyx_array_get({ i64, i8* }* %t1808, i64 %t1809)
  %t1811 = inttoptr i64 %t1810 to { i64, i8* }*
  store { i64, i8* }* %t1811, { i64, i8* }** %t1812
  %t1813 = load { i64, i8* }*, { i64, i8* }** %t1812
  %t1814 = call i64 @nyx_array_get_checked({ i64, i8* }* %t1813, i64 0, i64 2)
  %t1815 = inttoptr i64 %t1814 to %nyx_string*
  store %nyx_string* %t1815, %nyx_string** %t1816
  %t1817 = load { i64, i8* }*, { i64, i8* }** %t1812
  %t1818 = call i64 @nyx_array_get_checked({ i64, i8* }* %t1817, i64 1, i64 2)
  %t1819 = inttoptr i64 %t1818 to %nyx_string*
  store %nyx_string* %t1819, %nyx_string** %t1820
  %t1821 = load %nyx_string*, %nyx_string** %t1750
  %t1822 = load %nyx_string*, %nyx_string** %t1816
  %t1823 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1821, %nyx_string* %t1822)
  store %nyx_string* %t1823, %nyx_string** %t1750
  %t1824 = load %nyx_string*, %nyx_string** %t1820
  %t1825 = load %nyx_string*, %nyx_string** %t1795
  %t1826 = call i1 @nyx_string_equals(%nyx_string* %t1824, %nyx_string* %t1825)
  %t1827 = xor i1 %t1826, true
  br i1 %t1827, label %then399, label %else400
then399:
  %t1828 = load %nyx_string*, %nyx_string** %t1750
  %t1829 = load %nyx_string*, %nyx_string** %t1798
  %t1830 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1828, %nyx_string* %t1829)
  %t1831 = load %nyx_string*, %nyx_string** %t1820
  %t1832 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1830, %nyx_string* %t1831)
  store %nyx_string* %t1832, %nyx_string** %t1750
  br label %merge401
else400:
  br label %merge401
merge401:
  %t1833 = load i64, i64* %t1789
  %t1834 = add i64 %t1833, 1
  store i64 %t1834, i64* %t1789
  br label %while_cond393
while_end395:
  %t1835 = load %nyx_string*, %nyx_string** %t1750
  %t1836 = getelementptr [2 x i8], [2 x i8]* @.str252, i32 0, i32 0
  %t1837 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str252.c, i8* %t1836, i64 1)
  %t1838 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1835, %nyx_string* %t1837)
  store %nyx_string* %t1838, %nyx_string** %t1750
  %t1839 = load %nyx_string*, %nyx_string** %t1727
  %t1840 = getelementptr [1 x i8], [1 x i8]* @.str253, i32 0, i32 0
  %t1841 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str253.c, i8* %t1840, i64 0)
  %t1842 = call i1 @nyx_string_equals(%nyx_string* %t1839, %nyx_string* %t1841)
  %t1843 = xor i1 %t1842, true
  br i1 %t1843, label %then402, label %else403
then402:
  %t1844 = load %nyx_string*, %nyx_string** %t1750
  %t1845 = getelementptr [5 x i8], [5 x i8]* @.str254, i32 0, i32 0
  %t1846 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str254.c, i8* %t1845, i64 4)
  %t1847 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1844, %nyx_string* %t1846)
  %t1848 = load %nyx_string*, %nyx_string** %t1727
  %t1849 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1847, %nyx_string* %t1848)
  store %nyx_string* %t1849, %nyx_string** %t1750
  br label %merge404
else403:
  br label %merge404
merge404:
  %t1850 = load %nyx_string*, %nyx_string** %t1750
  %t1851 = getelementptr [4 x i8], [4 x i8]* @.str255, i32 0, i32 0
  %t1852 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str255.c, i8* %t1851, i64 3)
  %t1853 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1850, %nyx_string* %t1852)
  store %nyx_string* %t1853, %nyx_string** %t1750
  %t1854 = load %nyx_string*, %nyx_string** %t1750
  %t1855 = call i64 @out(%nyx_string* %t1854)
  %t1856 = load i64, i64* @g_indent
  %t1857 = add i64 %t1856, 1
  store i64 %t1857, i64* @g_indent
  %t1858 = load { i64, i8* }*, { i64, i8* }** %t1731
  %t1859 = call i64 @fmt_block_stmts({ i64, i8* }* %t1858)
  %t1860 = load i64, i64* @g_indent
  %t1861 = sub i64 %t1860, 1
  store i64 %t1861, i64* @g_indent
  %t1862 = getelementptr [2 x i8], [2 x i8]* @.str256, i32 0, i32 0
  %t1863 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str256.c, i8* %t1862, i64 1)
  %t1864 = call i64 @out_line(%nyx_string* %t1863)
  %t1865 = call i64 @out_empty()
  ret i64 0
}

define internal i64 @fmt_struct(
{ i64, i8* }* %node.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %t1866 = call %nyx_string* @indent_str()
  %t1867 = call i64 @out(%nyx_string* %t1866)
  %t1868 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %t1869 = call i64 @fmt_struct_inline({ i64, i8* }* %t1868)
  ret i64 0
}

define internal i64 @fmt_struct_inline(
{ i64, i8* }* %node.param) {
  %node.ptr = alloca { i64, i8* }*
  %t1872 = alloca { i64, i8* }*
  %t1876 = alloca %nyx_string*
  %t1880 = alloca { i64, i8* }*
  %t1882 = alloca { i64, i8* }*
  %t1889 = alloca { i64, i8* }*
  %t1895 = alloca %nyx_string*
  %t1903 = alloca i64
  %t1906 = alloca %nyx_string*
  %t1920 = alloca %nyx_string*
  %t1938 = alloca i64
  %t1941 = alloca %nyx_string*
  %t1944 = alloca %nyx_string*
  %t1947 = alloca %nyx_string*
  %t1956 = alloca { i64, i8* }*
  %t1960 = alloca %nyx_string*
  %t1964 = alloca %nyx_string*
  %t1966 = alloca %nyx_string*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %t1870 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %t1871 = call { i64, i8* }* @node_data({ i64, i8* }* %t1870)
  store { i64, i8* }* %t1871, { i64, i8* }** %t1872
  %t1873 = load { i64, i8* }*, { i64, i8* }** %t1872
  %t1874 = call i64 @nyx_array_get_checked({ i64, i8* }* %t1873, i64 0, i64 2)
  %t1875 = inttoptr i64 %t1874 to %nyx_string*
  store %nyx_string* %t1875, %nyx_string** %t1876
  %t1877 = load { i64, i8* }*, { i64, i8* }** %t1872
  %t1878 = call i64 @nyx_array_get({ i64, i8* }* %t1877, i64 1)
  %t1879 = inttoptr i64 %t1878 to { i64, i8* }*
  store { i64, i8* }* %t1879, { i64, i8* }** %t1880
  %t1881 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t1881, { i64, i8* }** %t1882
  %t1883 = load { i64, i8* }*, { i64, i8* }** %t1872
  %t1884 = call i64 @nyx_array_length({ i64, i8* }* %t1883)
  %t1885 = icmp sgt i64 %t1884, 2
  br i1 %t1885, label %then405, label %else406
then405:
  %t1886 = load { i64, i8* }*, { i64, i8* }** %t1872
  %t1887 = call i64 @nyx_array_get({ i64, i8* }* %t1886, i64 2)
  %t1888 = inttoptr i64 %t1887 to { i64, i8* }*
  store { i64, i8* }* %t1888, { i64, i8* }** %t1889
  %t1890 = load { i64, i8* }*, { i64, i8* }** %t1889
  store { i64, i8* }* %t1890, { i64, i8* }** %t1882
  br label %merge407
else406:
  br label %merge407
merge407:
  %t1891 = getelementptr [8 x i8], [8 x i8]* @.str257, i32 0, i32 0
  %t1892 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str257.c, i8* %t1891, i64 7)
  %t1893 = load %nyx_string*, %nyx_string** %t1876
  %t1894 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1892, %nyx_string* %t1893)
  store %nyx_string* %t1894, %nyx_string** %t1895
  %t1896 = load { i64, i8* }*, { i64, i8* }** %t1882
  %t1897 = call i64 @nyx_array_length({ i64, i8* }* %t1896)
  %t1898 = icmp sgt i64 %t1897, 0
  br i1 %t1898, label %then408, label %else409
then408:
  %t1899 = load %nyx_string*, %nyx_string** %t1895
  %t1900 = getelementptr [2 x i8], [2 x i8]* @.str258, i32 0, i32 0
  %t1901 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str258.c, i8* %t1900, i64 1)
  %t1902 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1899, %nyx_string* %t1901)
  store %nyx_string* %t1902, %nyx_string** %t1895
  store i64 0, i64* %t1903
  %t1904 = getelementptr [3 x i8], [3 x i8]* @.str259, i32 0, i32 0
  %t1905 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str259.c, i8* %t1904, i64 2)
  store %nyx_string* %t1905, %nyx_string** %t1906
  br label %while_cond411
while_cond411:
  %t1907 = load i64, i64* %t1903
  %t1908 = load { i64, i8* }*, { i64, i8* }** %t1882
  %t1909 = call i64 @nyx_array_length({ i64, i8* }* %t1908)
  %t1910 = icmp slt i64 %t1907, %t1909
  br i1 %t1910, label %while_body412, label %while_end413
while_body412:
  %t1911 = load i64, i64* %t1903
  %t1912 = icmp sgt i64 %t1911, 0
  br i1 %t1912, label %then414, label %else415
then414:
  %t1913 = load %nyx_string*, %nyx_string** %t1895
  %t1914 = load %nyx_string*, %nyx_string** %t1906
  %t1915 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1913, %nyx_string* %t1914)
  store %nyx_string* %t1915, %nyx_string** %t1895
  br label %merge416
else415:
  br label %merge416
merge416:
  %t1916 = load { i64, i8* }*, { i64, i8* }** %t1882
  %t1917 = load i64, i64* %t1903
  %t1918 = call i64 @nyx_array_get_checked({ i64, i8* }* %t1916, i64 %t1917, i64 2)
  %t1919 = inttoptr i64 %t1918 to %nyx_string*
  store %nyx_string* %t1919, %nyx_string** %t1920
  %t1921 = load %nyx_string*, %nyx_string** %t1895
  %t1922 = load %nyx_string*, %nyx_string** %t1920
  %t1923 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1921, %nyx_string* %t1922)
  store %nyx_string* %t1923, %nyx_string** %t1895
  %t1924 = load i64, i64* %t1903
  %t1925 = add i64 %t1924, 1
  store i64 %t1925, i64* %t1903
  br label %while_cond411
while_end413:
  %t1926 = load %nyx_string*, %nyx_string** %t1895
  %t1927 = getelementptr [2 x i8], [2 x i8]* @.str260, i32 0, i32 0
  %t1928 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str260.c, i8* %t1927, i64 1)
  %t1929 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1926, %nyx_string* %t1928)
  store %nyx_string* %t1929, %nyx_string** %t1895
  br label %merge410
else409:
  br label %merge410
merge410:
  %t1930 = load %nyx_string*, %nyx_string** %t1895
  %t1931 = getelementptr [4 x i8], [4 x i8]* @.str261, i32 0, i32 0
  %t1932 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str261.c, i8* %t1931, i64 3)
  %t1933 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1930, %nyx_string* %t1932)
  store %nyx_string* %t1933, %nyx_string** %t1895
  %t1934 = load %nyx_string*, %nyx_string** %t1895
  %t1935 = call i64 @out(%nyx_string* %t1934)
  %t1936 = load i64, i64* @g_indent
  %t1937 = add i64 %t1936, 1
  store i64 %t1937, i64* @g_indent
  store i64 0, i64* %t1938
  %t1939 = getelementptr [2 x i8], [2 x i8]* @.str262, i32 0, i32 0
  %t1940 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str262.c, i8* %t1939, i64 1)
  store %nyx_string* %t1940, %nyx_string** %t1941
  %t1942 = getelementptr [1 x i8], [1 x i8]* @.str263, i32 0, i32 0
  %t1943 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str263.c, i8* %t1942, i64 0)
  store %nyx_string* %t1943, %nyx_string** %t1944
  %t1945 = getelementptr [3 x i8], [3 x i8]* @.str264, i32 0, i32 0
  %t1946 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str264.c, i8* %t1945, i64 2)
  store %nyx_string* %t1946, %nyx_string** %t1947
  br label %while_cond417
while_cond417:
  %t1948 = load i64, i64* %t1938
  %t1949 = load { i64, i8* }*, { i64, i8* }** %t1880
  %t1950 = call i64 @nyx_array_length({ i64, i8* }* %t1949)
  %t1951 = icmp slt i64 %t1948, %t1950
  br i1 %t1951, label %while_body418, label %while_end419
while_body418:
  %t1952 = load { i64, i8* }*, { i64, i8* }** %t1880
  %t1953 = load i64, i64* %t1938
  %t1954 = call i64 @nyx_array_get({ i64, i8* }* %t1952, i64 %t1953)
  %t1955 = inttoptr i64 %t1954 to { i64, i8* }*
  store { i64, i8* }* %t1955, { i64, i8* }** %t1956
  %t1957 = load { i64, i8* }*, { i64, i8* }** %t1956
  %t1958 = call i64 @nyx_array_get_checked({ i64, i8* }* %t1957, i64 0, i64 2)
  %t1959 = inttoptr i64 %t1958 to %nyx_string*
  store %nyx_string* %t1959, %nyx_string** %t1960
  %t1961 = load { i64, i8* }*, { i64, i8* }** %t1956
  %t1962 = call i64 @nyx_array_get_checked({ i64, i8* }* %t1961, i64 1, i64 2)
  %t1963 = inttoptr i64 %t1962 to %nyx_string*
  store %nyx_string* %t1963, %nyx_string** %t1964
  %t1965 = load %nyx_string*, %nyx_string** %t1941
  store %nyx_string* %t1965, %nyx_string** %t1966
  %t1967 = load i64, i64* %t1938
  %t1968 = load { i64, i8* }*, { i64, i8* }** %t1880
  %t1969 = call i64 @nyx_array_length({ i64, i8* }* %t1968)
  %t1970 = sub i64 %t1969, 1
  %t1971 = icmp eq i64 %t1967, %t1970
  br i1 %t1971, label %then420, label %else421
then420:
  %t1972 = load %nyx_string*, %nyx_string** %t1944
  store %nyx_string* %t1972, %nyx_string** %t1966
  br label %merge422
else421:
  br label %merge422
merge422:
  %t1973 = load %nyx_string*, %nyx_string** %t1960
  %t1974 = load %nyx_string*, %nyx_string** %t1947
  %t1975 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1973, %nyx_string* %t1974)
  %t1976 = load %nyx_string*, %nyx_string** %t1964
  %t1977 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1975, %nyx_string* %t1976)
  %t1978 = load %nyx_string*, %nyx_string** %t1966
  %t1979 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1977, %nyx_string* %t1978)
  %t1980 = call i64 @out_line(%nyx_string* %t1979)
  %t1981 = load i64, i64* %t1938
  %t1982 = add i64 %t1981, 1
  store i64 %t1982, i64* %t1938
  br label %while_cond417
while_end419:
  %t1983 = load i64, i64* @g_indent
  %t1984 = sub i64 %t1983, 1
  store i64 %t1984, i64* @g_indent
  %t1985 = getelementptr [2 x i8], [2 x i8]* @.str265, i32 0, i32 0
  %t1986 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str265.c, i8* %t1985, i64 1)
  %t1987 = call i64 @out_line(%nyx_string* %t1986)
  %t1988 = call i64 @out_empty()
  ret i64 0
}

define internal i64 @fmt_enum(
{ i64, i8* }* %node.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %t1989 = call %nyx_string* @indent_str()
  %t1990 = call i64 @out(%nyx_string* %t1989)
  %t1991 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %t1992 = call i64 @fmt_enum_inline({ i64, i8* }* %t1991)
  ret i64 0
}

define internal i64 @fmt_enum_inline(
{ i64, i8* }* %node.param) {
  %node.ptr = alloca { i64, i8* }*
  %t1995 = alloca { i64, i8* }*
  %t1999 = alloca %nyx_string*
  %t2003 = alloca { i64, i8* }*
  %t2005 = alloca { i64, i8* }*
  %t2012 = alloca { i64, i8* }*
  %t2018 = alloca %nyx_string*
  %t2026 = alloca i64
  %t2029 = alloca %nyx_string*
  %t2043 = alloca %nyx_string*
  %t2061 = alloca i64
  %t2064 = alloca %nyx_string*
  %t2067 = alloca %nyx_string*
  %t2070 = alloca %nyx_string*
  %t2073 = alloca %nyx_string*
  %t2082 = alloca { i64, i8* }*
  %t2086 = alloca %nyx_string*
  %t2090 = alloca { i64, i8* }*
  %t2092 = alloca %nyx_string*
  %t2099 = alloca i64
  %t2113 = alloca %nyx_string*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %t1993 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %t1994 = call { i64, i8* }* @node_data({ i64, i8* }* %t1993)
  store { i64, i8* }* %t1994, { i64, i8* }** %t1995
  %t1996 = load { i64, i8* }*, { i64, i8* }** %t1995
  %t1997 = call i64 @nyx_array_get_checked({ i64, i8* }* %t1996, i64 0, i64 2)
  %t1998 = inttoptr i64 %t1997 to %nyx_string*
  store %nyx_string* %t1998, %nyx_string** %t1999
  %t2000 = load { i64, i8* }*, { i64, i8* }** %t1995
  %t2001 = call i64 @nyx_array_get({ i64, i8* }* %t2000, i64 1)
  %t2002 = inttoptr i64 %t2001 to { i64, i8* }*
  store { i64, i8* }* %t2002, { i64, i8* }** %t2003
  %t2004 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t2004, { i64, i8* }** %t2005
  %t2006 = load { i64, i8* }*, { i64, i8* }** %t1995
  %t2007 = call i64 @nyx_array_length({ i64, i8* }* %t2006)
  %t2008 = icmp sgt i64 %t2007, 2
  br i1 %t2008, label %then423, label %else424
then423:
  %t2009 = load { i64, i8* }*, { i64, i8* }** %t1995
  %t2010 = call i64 @nyx_array_get({ i64, i8* }* %t2009, i64 2)
  %t2011 = inttoptr i64 %t2010 to { i64, i8* }*
  store { i64, i8* }* %t2011, { i64, i8* }** %t2012
  %t2013 = load { i64, i8* }*, { i64, i8* }** %t2012
  store { i64, i8* }* %t2013, { i64, i8* }** %t2005
  br label %merge425
else424:
  br label %merge425
merge425:
  %t2014 = getelementptr [6 x i8], [6 x i8]* @.str266, i32 0, i32 0
  %t2015 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str266.c, i8* %t2014, i64 5)
  %t2016 = load %nyx_string*, %nyx_string** %t1999
  %t2017 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2015, %nyx_string* %t2016)
  store %nyx_string* %t2017, %nyx_string** %t2018
  %t2019 = load { i64, i8* }*, { i64, i8* }** %t2005
  %t2020 = call i64 @nyx_array_length({ i64, i8* }* %t2019)
  %t2021 = icmp sgt i64 %t2020, 0
  br i1 %t2021, label %then426, label %else427
then426:
  %t2022 = load %nyx_string*, %nyx_string** %t2018
  %t2023 = getelementptr [2 x i8], [2 x i8]* @.str267, i32 0, i32 0
  %t2024 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str267.c, i8* %t2023, i64 1)
  %t2025 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2022, %nyx_string* %t2024)
  store %nyx_string* %t2025, %nyx_string** %t2018
  store i64 0, i64* %t2026
  %t2027 = getelementptr [3 x i8], [3 x i8]* @.str268, i32 0, i32 0
  %t2028 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str268.c, i8* %t2027, i64 2)
  store %nyx_string* %t2028, %nyx_string** %t2029
  br label %while_cond429
while_cond429:
  %t2030 = load i64, i64* %t2026
  %t2031 = load { i64, i8* }*, { i64, i8* }** %t2005
  %t2032 = call i64 @nyx_array_length({ i64, i8* }* %t2031)
  %t2033 = icmp slt i64 %t2030, %t2032
  br i1 %t2033, label %while_body430, label %while_end431
while_body430:
  %t2034 = load i64, i64* %t2026
  %t2035 = icmp sgt i64 %t2034, 0
  br i1 %t2035, label %then432, label %else433
then432:
  %t2036 = load %nyx_string*, %nyx_string** %t2018
  %t2037 = load %nyx_string*, %nyx_string** %t2029
  %t2038 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2036, %nyx_string* %t2037)
  store %nyx_string* %t2038, %nyx_string** %t2018
  br label %merge434
else433:
  br label %merge434
merge434:
  %t2039 = load { i64, i8* }*, { i64, i8* }** %t2005
  %t2040 = load i64, i64* %t2026
  %t2041 = call i64 @nyx_array_get_checked({ i64, i8* }* %t2039, i64 %t2040, i64 2)
  %t2042 = inttoptr i64 %t2041 to %nyx_string*
  store %nyx_string* %t2042, %nyx_string** %t2043
  %t2044 = load %nyx_string*, %nyx_string** %t2018
  %t2045 = load %nyx_string*, %nyx_string** %t2043
  %t2046 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2044, %nyx_string* %t2045)
  store %nyx_string* %t2046, %nyx_string** %t2018
  %t2047 = load i64, i64* %t2026
  %t2048 = add i64 %t2047, 1
  store i64 %t2048, i64* %t2026
  br label %while_cond429
while_end431:
  %t2049 = load %nyx_string*, %nyx_string** %t2018
  %t2050 = getelementptr [2 x i8], [2 x i8]* @.str269, i32 0, i32 0
  %t2051 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str269.c, i8* %t2050, i64 1)
  %t2052 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2049, %nyx_string* %t2051)
  store %nyx_string* %t2052, %nyx_string** %t2018
  br label %merge428
else427:
  br label %merge428
merge428:
  %t2053 = load %nyx_string*, %nyx_string** %t2018
  %t2054 = getelementptr [4 x i8], [4 x i8]* @.str270, i32 0, i32 0
  %t2055 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str270.c, i8* %t2054, i64 3)
  %t2056 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2053, %nyx_string* %t2055)
  store %nyx_string* %t2056, %nyx_string** %t2018
  %t2057 = load %nyx_string*, %nyx_string** %t2018
  %t2058 = call i64 @out(%nyx_string* %t2057)
  %t2059 = load i64, i64* @g_indent
  %t2060 = add i64 %t2059, 1
  store i64 %t2060, i64* @g_indent
  store i64 0, i64* %t2061
  %t2062 = getelementptr [2 x i8], [2 x i8]* @.str271, i32 0, i32 0
  %t2063 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str271.c, i8* %t2062, i64 1)
  store %nyx_string* %t2063, %nyx_string** %t2064
  %t2065 = getelementptr [3 x i8], [3 x i8]* @.str272, i32 0, i32 0
  %t2066 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str272.c, i8* %t2065, i64 2)
  store %nyx_string* %t2066, %nyx_string** %t2067
  %t2068 = getelementptr [2 x i8], [2 x i8]* @.str273, i32 0, i32 0
  %t2069 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str273.c, i8* %t2068, i64 1)
  store %nyx_string* %t2069, %nyx_string** %t2070
  %t2071 = getelementptr [2 x i8], [2 x i8]* @.str274, i32 0, i32 0
  %t2072 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str274.c, i8* %t2071, i64 1)
  store %nyx_string* %t2072, %nyx_string** %t2073
  br label %while_cond435
while_cond435:
  %t2074 = load i64, i64* %t2061
  %t2075 = load { i64, i8* }*, { i64, i8* }** %t2003
  %t2076 = call i64 @nyx_array_length({ i64, i8* }* %t2075)
  %t2077 = icmp slt i64 %t2074, %t2076
  br i1 %t2077, label %while_body436, label %while_end437
while_body436:
  %t2078 = load { i64, i8* }*, { i64, i8* }** %t2003
  %t2079 = load i64, i64* %t2061
  %t2080 = call i64 @nyx_array_get({ i64, i8* }* %t2078, i64 %t2079)
  %t2081 = inttoptr i64 %t2080 to { i64, i8* }*
  store { i64, i8* }* %t2081, { i64, i8* }** %t2082
  %t2083 = load { i64, i8* }*, { i64, i8* }** %t2082
  %t2084 = call i64 @nyx_array_get_checked({ i64, i8* }* %t2083, i64 0, i64 2)
  %t2085 = inttoptr i64 %t2084 to %nyx_string*
  store %nyx_string* %t2085, %nyx_string** %t2086
  %t2087 = load { i64, i8* }*, { i64, i8* }** %t2082
  %t2088 = call i64 @nyx_array_get({ i64, i8* }* %t2087, i64 1)
  %t2089 = inttoptr i64 %t2088 to { i64, i8* }*
  store { i64, i8* }* %t2089, { i64, i8* }** %t2090
  %t2091 = load %nyx_string*, %nyx_string** %t2086
  store %nyx_string* %t2091, %nyx_string** %t2092
  %t2093 = load { i64, i8* }*, { i64, i8* }** %t2090
  %t2094 = call i64 @nyx_array_length({ i64, i8* }* %t2093)
  %t2095 = icmp sgt i64 %t2094, 0
  br i1 %t2095, label %then438, label %else439
then438:
  %t2096 = load %nyx_string*, %nyx_string** %t2092
  %t2097 = load %nyx_string*, %nyx_string** %t2064
  %t2098 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2096, %nyx_string* %t2097)
  store %nyx_string* %t2098, %nyx_string** %t2092
  store i64 0, i64* %t2099
  br label %while_cond441
while_cond441:
  %t2100 = load i64, i64* %t2099
  %t2101 = load { i64, i8* }*, { i64, i8* }** %t2090
  %t2102 = call i64 @nyx_array_length({ i64, i8* }* %t2101)
  %t2103 = icmp slt i64 %t2100, %t2102
  br i1 %t2103, label %while_body442, label %while_end443
while_body442:
  %t2104 = load i64, i64* %t2099
  %t2105 = icmp sgt i64 %t2104, 0
  br i1 %t2105, label %then444, label %else445
then444:
  %t2106 = load %nyx_string*, %nyx_string** %t2092
  %t2107 = load %nyx_string*, %nyx_string** %t2067
  %t2108 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2106, %nyx_string* %t2107)
  store %nyx_string* %t2108, %nyx_string** %t2092
  br label %merge446
else445:
  br label %merge446
merge446:
  %t2109 = load { i64, i8* }*, { i64, i8* }** %t2090
  %t2110 = load i64, i64* %t2099
  %t2111 = call i64 @nyx_array_get_checked({ i64, i8* }* %t2109, i64 %t2110, i64 2)
  %t2112 = inttoptr i64 %t2111 to %nyx_string*
  store %nyx_string* %t2112, %nyx_string** %t2113
  %t2114 = load %nyx_string*, %nyx_string** %t2092
  %t2115 = load %nyx_string*, %nyx_string** %t2113
  %t2116 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2114, %nyx_string* %t2115)
  store %nyx_string* %t2116, %nyx_string** %t2092
  %t2117 = load i64, i64* %t2099
  %t2118 = add i64 %t2117, 1
  store i64 %t2118, i64* %t2099
  br label %while_cond441
while_end443:
  %t2119 = load %nyx_string*, %nyx_string** %t2092
  %t2120 = load %nyx_string*, %nyx_string** %t2070
  %t2121 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2119, %nyx_string* %t2120)
  store %nyx_string* %t2121, %nyx_string** %t2092
  br label %merge440
else439:
  br label %merge440
merge440:
  %t2122 = load i64, i64* %t2061
  %t2123 = load { i64, i8* }*, { i64, i8* }** %t2003
  %t2124 = call i64 @nyx_array_length({ i64, i8* }* %t2123)
  %t2125 = sub i64 %t2124, 1
  %t2126 = icmp slt i64 %t2122, %t2125
  br i1 %t2126, label %then447, label %else448
then447:
  %t2127 = load %nyx_string*, %nyx_string** %t2092
  %t2128 = load %nyx_string*, %nyx_string** %t2073
  %t2129 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2127, %nyx_string* %t2128)
  store %nyx_string* %t2129, %nyx_string** %t2092
  br label %merge449
else448:
  br label %merge449
merge449:
  %t2130 = load %nyx_string*, %nyx_string** %t2092
  %t2131 = call i64 @out_line(%nyx_string* %t2130)
  %t2132 = load i64, i64* %t2061
  %t2133 = add i64 %t2132, 1
  store i64 %t2133, i64* %t2061
  br label %while_cond435
while_end437:
  %t2134 = load i64, i64* @g_indent
  %t2135 = sub i64 %t2134, 1
  store i64 %t2135, i64* @g_indent
  %t2136 = getelementptr [2 x i8], [2 x i8]* @.str275, i32 0, i32 0
  %t2137 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str275.c, i8* %t2136, i64 1)
  %t2138 = call i64 @out_line(%nyx_string* %t2137)
  %t2139 = call i64 @out_empty()
  ret i64 0
}

define internal i64 @fmt_trait(
{ i64, i8* }* %node.param) {
  %node.ptr = alloca { i64, i8* }*
  %t2142 = alloca { i64, i8* }*
  %t2146 = alloca %nyx_string*
  %t2150 = alloca { i64, i8* }*
  %t2154 = alloca { i64, i8* }*
  %t2159 = alloca %nyx_string*
  %t2167 = alloca i64
  %t2170 = alloca %nyx_string*
  %t2184 = alloca %nyx_string*
  %t2197 = alloca i64
  %t2200 = alloca %nyx_string*
  %t2203 = alloca %nyx_string*
  %t2206 = alloca %nyx_string*
  %t2209 = alloca %nyx_string*
  %t2212 = alloca %nyx_string*
  %t2215 = alloca %nyx_string*
  %t2218 = alloca %nyx_string*
  %t2221 = alloca %nyx_string*
  %t2224 = alloca %nyx_string*
  %t2227 = alloca %nyx_string*
  %t2230 = alloca %nyx_string*
  %t2233 = alloca %nyx_string*
  %t2236 = alloca %nyx_string*
  %t2245 = alloca { i64, i8* }*
  %t2249 = alloca %nyx_string*
  %t2256 = alloca %nyx_string*
  %t2260 = alloca { i64, i8* }*
  %t2264 = alloca %nyx_string*
  %t2271 = alloca i64
  %t2285 = alloca %nyx_string*
  %t2299 = alloca { i64, i8* }*
  %t2303 = alloca %nyx_string*
  %t2309 = alloca %nyx_string*
  %t2310 = alloca i64
  %t2324 = alloca { i64, i8* }*
  %t2328 = alloca %nyx_string*
  %t2332 = alloca %nyx_string*
  %t2365 = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %t2140 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %t2141 = call { i64, i8* }* @node_data({ i64, i8* }* %t2140)
  store { i64, i8* }* %t2141, { i64, i8* }** %t2142
  %t2143 = load { i64, i8* }*, { i64, i8* }** %t2142
  %t2144 = call i64 @nyx_array_get_checked({ i64, i8* }* %t2143, i64 0, i64 2)
  %t2145 = inttoptr i64 %t2144 to %nyx_string*
  store %nyx_string* %t2145, %nyx_string** %t2146
  %t2147 = load { i64, i8* }*, { i64, i8* }** %t2142
  %t2148 = call i64 @nyx_array_get({ i64, i8* }* %t2147, i64 1)
  %t2149 = inttoptr i64 %t2148 to { i64, i8* }*
  store { i64, i8* }* %t2149, { i64, i8* }** %t2150
  %t2151 = load { i64, i8* }*, { i64, i8* }** %t2142
  %t2152 = call i64 @nyx_array_get({ i64, i8* }* %t2151, i64 2)
  %t2153 = inttoptr i64 %t2152 to { i64, i8* }*
  store { i64, i8* }* %t2153, { i64, i8* }** %t2154
  %t2155 = getelementptr [7 x i8], [7 x i8]* @.str276, i32 0, i32 0
  %t2156 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str276.c, i8* %t2155, i64 6)
  %t2157 = load %nyx_string*, %nyx_string** %t2146
  %t2158 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2156, %nyx_string* %t2157)
  store %nyx_string* %t2158, %nyx_string** %t2159
  %t2160 = load { i64, i8* }*, { i64, i8* }** %t2150
  %t2161 = call i64 @nyx_array_length({ i64, i8* }* %t2160)
  %t2162 = icmp sgt i64 %t2161, 0
  br i1 %t2162, label %then450, label %else451
then450:
  %t2163 = load %nyx_string*, %nyx_string** %t2159
  %t2164 = getelementptr [3 x i8], [3 x i8]* @.str277, i32 0, i32 0
  %t2165 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str277.c, i8* %t2164, i64 2)
  %t2166 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2163, %nyx_string* %t2165)
  store %nyx_string* %t2166, %nyx_string** %t2159
  store i64 0, i64* %t2167
  %t2168 = getelementptr [4 x i8], [4 x i8]* @.str278, i32 0, i32 0
  %t2169 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str278.c, i8* %t2168, i64 3)
  store %nyx_string* %t2169, %nyx_string** %t2170
  br label %while_cond453
while_cond453:
  %t2171 = load i64, i64* %t2167
  %t2172 = load { i64, i8* }*, { i64, i8* }** %t2150
  %t2173 = call i64 @nyx_array_length({ i64, i8* }* %t2172)
  %t2174 = icmp slt i64 %t2171, %t2173
  br i1 %t2174, label %while_body454, label %while_end455
while_body454:
  %t2175 = load i64, i64* %t2167
  %t2176 = icmp sgt i64 %t2175, 0
  br i1 %t2176, label %then456, label %else457
then456:
  %t2177 = load %nyx_string*, %nyx_string** %t2159
  %t2178 = load %nyx_string*, %nyx_string** %t2170
  %t2179 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2177, %nyx_string* %t2178)
  store %nyx_string* %t2179, %nyx_string** %t2159
  br label %merge458
else457:
  br label %merge458
merge458:
  %t2180 = load { i64, i8* }*, { i64, i8* }** %t2150
  %t2181 = load i64, i64* %t2167
  %t2182 = call i64 @nyx_array_get_checked({ i64, i8* }* %t2180, i64 %t2181, i64 2)
  %t2183 = inttoptr i64 %t2182 to %nyx_string*
  store %nyx_string* %t2183, %nyx_string** %t2184
  %t2185 = load %nyx_string*, %nyx_string** %t2159
  %t2186 = load %nyx_string*, %nyx_string** %t2184
  %t2187 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2185, %nyx_string* %t2186)
  store %nyx_string* %t2187, %nyx_string** %t2159
  %t2188 = load i64, i64* %t2167
  %t2189 = add i64 %t2188, 1
  store i64 %t2189, i64* %t2167
  br label %while_cond453
while_end455:
  br label %merge452
else451:
  br label %merge452
merge452:
  %t2190 = load %nyx_string*, %nyx_string** %t2159
  %t2191 = getelementptr [3 x i8], [3 x i8]* @.str279, i32 0, i32 0
  %t2192 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str279.c, i8* %t2191, i64 2)
  %t2193 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2190, %nyx_string* %t2192)
  %t2194 = call i64 @out_line(%nyx_string* %t2193)
  %t2195 = load i64, i64* @g_indent
  %t2196 = add i64 %t2195, 1
  store i64 %t2196, i64* @g_indent
  store i64 0, i64* %t2197
  %t2198 = getelementptr [15 x i8], [15 x i8]* @.str280, i32 0, i32 0
  %t2199 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str280.c, i8* %t2198, i64 14)
  store %nyx_string* %t2199, %nyx_string** %t2200
  %t2201 = getelementptr [6 x i8], [6 x i8]* @.str281, i32 0, i32 0
  %t2202 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str281.c, i8* %t2201, i64 5)
  store %nyx_string* %t2202, %nyx_string** %t2203
  %t2204 = getelementptr [2 x i8], [2 x i8]* @.str282, i32 0, i32 0
  %t2205 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str282.c, i8* %t2204, i64 1)
  store %nyx_string* %t2205, %nyx_string** %t2206
  %t2207 = getelementptr [3 x i8], [3 x i8]* @.str283, i32 0, i32 0
  %t2208 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str283.c, i8* %t2207, i64 2)
  store %nyx_string* %t2208, %nyx_string** %t2209
  %t2210 = getelementptr [2 x i8], [2 x i8]* @.str284, i32 0, i32 0
  %t2211 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str284.c, i8* %t2210, i64 1)
  store %nyx_string* %t2211, %nyx_string** %t2212
  %t2213 = getelementptr [4 x i8], [4 x i8]* @.str285, i32 0, i32 0
  %t2214 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str285.c, i8* %t2213, i64 3)
  store %nyx_string* %t2214, %nyx_string** %t2215
  %t2216 = getelementptr [2 x i8], [2 x i8]* @.str286, i32 0, i32 0
  %t2217 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str286.c, i8* %t2216, i64 1)
  store %nyx_string* %t2217, %nyx_string** %t2218
  %t2219 = getelementptr [1 x i8], [1 x i8]* @.str287, i32 0, i32 0
  %t2220 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str287.c, i8* %t2219, i64 0)
  store %nyx_string* %t2220, %nyx_string** %t2221
  %t2222 = getelementptr [3 x i8], [3 x i8]* @.str288, i32 0, i32 0
  %t2223 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str288.c, i8* %t2222, i64 2)
  store %nyx_string* %t2223, %nyx_string** %t2224
  %t2225 = getelementptr [2 x i8], [2 x i8]* @.str289, i32 0, i32 0
  %t2226 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str289.c, i8* %t2225, i64 1)
  store %nyx_string* %t2226, %nyx_string** %t2227
  %t2228 = getelementptr [5 x i8], [5 x i8]* @.str290, i32 0, i32 0
  %t2229 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str290.c, i8* %t2228, i64 4)
  store %nyx_string* %t2229, %nyx_string** %t2230
  %t2231 = getelementptr [4 x i8], [4 x i8]* @.str291, i32 0, i32 0
  %t2232 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str291.c, i8* %t2231, i64 3)
  store %nyx_string* %t2232, %nyx_string** %t2233
  %t2234 = getelementptr [2 x i8], [2 x i8]* @.str292, i32 0, i32 0
  %t2235 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str292.c, i8* %t2234, i64 1)
  store %nyx_string* %t2235, %nyx_string** %t2236
  br label %while_cond459
while_cond459:
  %t2237 = load i64, i64* %t2197
  %t2238 = load { i64, i8* }*, { i64, i8* }** %t2154
  %t2239 = call i64 @nyx_array_length({ i64, i8* }* %t2238)
  %t2240 = icmp slt i64 %t2237, %t2239
  br i1 %t2240, label %while_body460, label %while_end461
while_body460:
  %t2241 = load { i64, i8* }*, { i64, i8* }** %t2154
  %t2242 = load i64, i64* %t2197
  %t2243 = call i64 @nyx_array_get({ i64, i8* }* %t2241, i64 %t2242)
  %t2244 = inttoptr i64 %t2243 to { i64, i8* }*
  store { i64, i8* }* %t2244, { i64, i8* }** %t2245
  %t2246 = load { i64, i8* }*, { i64, i8* }** %t2245
  %t2247 = call i64 @nyx_array_get_checked({ i64, i8* }* %t2246, i64 0, i64 2)
  %t2248 = inttoptr i64 %t2247 to %nyx_string*
  store %nyx_string* %t2248, %nyx_string** %t2249
  %t2250 = load %nyx_string*, %nyx_string** %t2249
  %t2251 = load %nyx_string*, %nyx_string** %t2200
  %t2252 = call i1 @nyx_string_equals(%nyx_string* %t2250, %nyx_string* %t2251)
  br i1 %t2252, label %then462, label %else463
then462:
  %t2253 = load { i64, i8* }*, { i64, i8* }** %t2245
  %t2254 = call i64 @nyx_array_get_checked({ i64, i8* }* %t2253, i64 1, i64 2)
  %t2255 = inttoptr i64 %t2254 to %nyx_string*
  store %nyx_string* %t2255, %nyx_string** %t2256
  %t2257 = load { i64, i8* }*, { i64, i8* }** %t2245
  %t2258 = call i64 @nyx_array_get({ i64, i8* }* %t2257, i64 2)
  %t2259 = inttoptr i64 %t2258 to { i64, i8* }*
  store { i64, i8* }* %t2259, { i64, i8* }** %t2260
  %t2261 = load %nyx_string*, %nyx_string** %t2203
  %t2262 = load %nyx_string*, %nyx_string** %t2256
  %t2263 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2261, %nyx_string* %t2262)
  store %nyx_string* %t2263, %nyx_string** %t2264
  %t2265 = load { i64, i8* }*, { i64, i8* }** %t2260
  %t2266 = call i64 @nyx_array_length({ i64, i8* }* %t2265)
  %t2267 = icmp sgt i64 %t2266, 0
  br i1 %t2267, label %then465, label %else466
then465:
  %t2268 = load %nyx_string*, %nyx_string** %t2264
  %t2269 = load %nyx_string*, %nyx_string** %t2206
  %t2270 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2268, %nyx_string* %t2269)
  store %nyx_string* %t2270, %nyx_string** %t2264
  store i64 0, i64* %t2271
  br label %while_cond468
while_cond468:
  %t2272 = load i64, i64* %t2271
  %t2273 = load { i64, i8* }*, { i64, i8* }** %t2260
  %t2274 = call i64 @nyx_array_length({ i64, i8* }* %t2273)
  %t2275 = icmp slt i64 %t2272, %t2274
  br i1 %t2275, label %while_body469, label %while_end470
while_body469:
  %t2276 = load i64, i64* %t2271
  %t2277 = icmp sgt i64 %t2276, 0
  br i1 %t2277, label %then471, label %else472
then471:
  %t2278 = load %nyx_string*, %nyx_string** %t2264
  %t2279 = load %nyx_string*, %nyx_string** %t2209
  %t2280 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2278, %nyx_string* %t2279)
  store %nyx_string* %t2280, %nyx_string** %t2264
  br label %merge473
else472:
  br label %merge473
merge473:
  %t2281 = load { i64, i8* }*, { i64, i8* }** %t2260
  %t2282 = load i64, i64* %t2271
  %t2283 = call i64 @nyx_array_get_checked({ i64, i8* }* %t2281, i64 %t2282, i64 2)
  %t2284 = inttoptr i64 %t2283 to %nyx_string*
  store %nyx_string* %t2284, %nyx_string** %t2285
  %t2286 = load %nyx_string*, %nyx_string** %t2264
  %t2287 = load %nyx_string*, %nyx_string** %t2285
  %t2288 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2286, %nyx_string* %t2287)
  store %nyx_string* %t2288, %nyx_string** %t2264
  %t2289 = load i64, i64* %t2271
  %t2290 = add i64 %t2289, 1
  store i64 %t2290, i64* %t2271
  br label %while_cond468
while_end470:
  %t2291 = load %nyx_string*, %nyx_string** %t2264
  %t2292 = load %nyx_string*, %nyx_string** %t2212
  %t2293 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2291, %nyx_string* %t2292)
  store %nyx_string* %t2293, %nyx_string** %t2264
  br label %merge467
else466:
  br label %merge467
merge467:
  %t2294 = load %nyx_string*, %nyx_string** %t2264
  %t2295 = call i64 @out_line(%nyx_string* %t2294)
  br label %merge464
else463:
  %t2296 = load { i64, i8* }*, { i64, i8* }** %t2245
  %t2297 = call i64 @nyx_array_get({ i64, i8* }* %t2296, i64 1)
  %t2298 = inttoptr i64 %t2297 to { i64, i8* }*
  store { i64, i8* }* %t2298, { i64, i8* }** %t2299
  %t2300 = load { i64, i8* }*, { i64, i8* }** %t2245
  %t2301 = call i64 @nyx_array_get_checked({ i64, i8* }* %t2300, i64 2, i64 2)
  %t2302 = inttoptr i64 %t2301 to %nyx_string*
  store %nyx_string* %t2302, %nyx_string** %t2303
  %t2304 = load %nyx_string*, %nyx_string** %t2215
  %t2305 = load %nyx_string*, %nyx_string** %t2249
  %t2306 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2304, %nyx_string* %t2305)
  %t2307 = load %nyx_string*, %nyx_string** %t2218
  %t2308 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2306, %nyx_string* %t2307)
  store %nyx_string* %t2308, %nyx_string** %t2309
  store i64 0, i64* %t2310
  br label %while_cond474
while_cond474:
  %t2311 = load i64, i64* %t2310
  %t2312 = load { i64, i8* }*, { i64, i8* }** %t2299
  %t2313 = call i64 @nyx_array_length({ i64, i8* }* %t2312)
  %t2314 = icmp slt i64 %t2311, %t2313
  br i1 %t2314, label %while_body475, label %while_end476
while_body475:
  %t2315 = load i64, i64* %t2310
  %t2316 = icmp sgt i64 %t2315, 0
  br i1 %t2316, label %then477, label %else478
then477:
  %t2317 = load %nyx_string*, %nyx_string** %t2309
  %t2318 = load %nyx_string*, %nyx_string** %t2209
  %t2319 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2317, %nyx_string* %t2318)
  store %nyx_string* %t2319, %nyx_string** %t2309
  br label %merge479
else478:
  br label %merge479
merge479:
  %t2320 = load { i64, i8* }*, { i64, i8* }** %t2299
  %t2321 = load i64, i64* %t2310
  %t2322 = call i64 @nyx_array_get({ i64, i8* }* %t2320, i64 %t2321)
  %t2323 = inttoptr i64 %t2322 to { i64, i8* }*
  store { i64, i8* }* %t2323, { i64, i8* }** %t2324
  %t2325 = load { i64, i8* }*, { i64, i8* }** %t2324
  %t2326 = call i64 @nyx_array_get_checked({ i64, i8* }* %t2325, i64 0, i64 2)
  %t2327 = inttoptr i64 %t2326 to %nyx_string*
  store %nyx_string* %t2327, %nyx_string** %t2328
  %t2329 = load { i64, i8* }*, { i64, i8* }** %t2324
  %t2330 = call i64 @nyx_array_get_checked({ i64, i8* }* %t2329, i64 1, i64 2)
  %t2331 = inttoptr i64 %t2330 to %nyx_string*
  store %nyx_string* %t2331, %nyx_string** %t2332
  %t2333 = load %nyx_string*, %nyx_string** %t2309
  %t2334 = load %nyx_string*, %nyx_string** %t2328
  %t2335 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2333, %nyx_string* %t2334)
  store %nyx_string* %t2335, %nyx_string** %t2309
  %t2336 = load %nyx_string*, %nyx_string** %t2332
  %t2337 = load %nyx_string*, %nyx_string** %t2221
  %t2338 = call i1 @nyx_string_equals(%nyx_string* %t2336, %nyx_string* %t2337)
  %t2339 = xor i1 %t2338, true
  br i1 %t2339, label %then480, label %else481
then480:
  %t2340 = load %nyx_string*, %nyx_string** %t2309
  %t2341 = load %nyx_string*, %nyx_string** %t2224
  %t2342 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2340, %nyx_string* %t2341)
  %t2343 = load %nyx_string*, %nyx_string** %t2332
  %t2344 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2342, %nyx_string* %t2343)
  store %nyx_string* %t2344, %nyx_string** %t2309
  br label %merge482
else481:
  br label %merge482
merge482:
  %t2345 = load i64, i64* %t2310
  %t2346 = add i64 %t2345, 1
  store i64 %t2346, i64* %t2310
  br label %while_cond474
while_end476:
  %t2347 = load %nyx_string*, %nyx_string** %t2309
  %t2348 = load %nyx_string*, %nyx_string** %t2227
  %t2349 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2347, %nyx_string* %t2348)
  store %nyx_string* %t2349, %nyx_string** %t2309
  %t2350 = load %nyx_string*, %nyx_string** %t2303
  %t2351 = load %nyx_string*, %nyx_string** %t2221
  %t2352 = call i1 @nyx_string_equals(%nyx_string* %t2350, %nyx_string* %t2351)
  %t2353 = xor i1 %t2352, true
  br i1 %t2353, label %then483, label %else484
then483:
  %t2354 = load %nyx_string*, %nyx_string** %t2309
  %t2355 = load %nyx_string*, %nyx_string** %t2230
  %t2356 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2354, %nyx_string* %t2355)
  %t2357 = load %nyx_string*, %nyx_string** %t2303
  %t2358 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2356, %nyx_string* %t2357)
  store %nyx_string* %t2358, %nyx_string** %t2309
  br label %merge485
else484:
  br label %merge485
merge485:
  %t2359 = load { i64, i8* }*, { i64, i8* }** %t2245
  %t2360 = call i64 @nyx_array_length({ i64, i8* }* %t2359)
  %t2361 = icmp sgt i64 %t2360, 3
  br i1 %t2361, label %then486, label %else487
then486:
  %t2362 = load { i64, i8* }*, { i64, i8* }** %t2245
  %t2363 = call i64 @nyx_array_get({ i64, i8* }* %t2362, i64 3)
  %t2364 = inttoptr i64 %t2363 to { i64, i8* }*
  store { i64, i8* }* %t2364, { i64, i8* }** %t2365
  %t2366 = call %nyx_string* @indent_str()
  %t2367 = load %nyx_string*, %nyx_string** %t2309
  %t2368 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2366, %nyx_string* %t2367)
  %t2369 = load %nyx_string*, %nyx_string** %t2233
  %t2370 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2368, %nyx_string* %t2369)
  %t2371 = call i64 @out(%nyx_string* %t2370)
  %t2372 = load i64, i64* @g_indent
  %t2373 = add i64 %t2372, 1
  store i64 %t2373, i64* @g_indent
  %t2374 = load { i64, i8* }*, { i64, i8* }** %t2365
  %t2375 = call i64 @fmt_block_stmts({ i64, i8* }* %t2374)
  %t2376 = load i64, i64* @g_indent
  %t2377 = sub i64 %t2376, 1
  store i64 %t2377, i64* @g_indent
  %t2378 = load %nyx_string*, %nyx_string** %t2236
  %t2379 = call i64 @out_line(%nyx_string* %t2378)
  br label %merge488
else487:
  %t2380 = load %nyx_string*, %nyx_string** %t2309
  %t2381 = call i64 @out_line(%nyx_string* %t2380)
  br label %merge488
merge488:
  br label %merge464
merge464:
  %t2382 = load i64, i64* %t2197
  %t2383 = add i64 %t2382, 1
  store i64 %t2383, i64* %t2197
  br label %while_cond459
while_end461:
  %t2384 = load i64, i64* @g_indent
  %t2385 = sub i64 %t2384, 1
  store i64 %t2385, i64* @g_indent
  %t2386 = getelementptr [2 x i8], [2 x i8]* @.str293, i32 0, i32 0
  %t2387 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str293.c, i8* %t2386, i64 1)
  %t2388 = call i64 @out_line(%nyx_string* %t2387)
  %t2389 = call i64 @out_empty()
  ret i64 0
}

define internal i64 @fmt_impl(
{ i64, i8* }* %node.param) {
  %node.ptr = alloca { i64, i8* }*
  %t2392 = alloca { i64, i8* }*
  %t2396 = alloca %nyx_string*
  %t2400 = alloca { i64, i8* }*
  %t2402 = alloca { i64, i8* }*
  %t2409 = alloca { i64, i8* }*
  %t2413 = alloca %nyx_string*
  %t2423 = alloca %nyx_string*
  %t2424 = alloca i64
  %t2427 = alloca %nyx_string*
  %t2436 = alloca %nyx_string*
  %t2481 = alloca i64
  %t2484 = alloca %nyx_string*
  %t2493 = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %t2390 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %t2391 = call { i64, i8* }* @node_data({ i64, i8* }* %t2390)
  store { i64, i8* }* %t2391, { i64, i8* }** %t2392
  %t2393 = load { i64, i8* }*, { i64, i8* }** %t2392
  %t2394 = call i64 @nyx_array_get_checked({ i64, i8* }* %t2393, i64 0, i64 2)
  %t2395 = inttoptr i64 %t2394 to %nyx_string*
  store %nyx_string* %t2395, %nyx_string** %t2396
  %t2397 = load { i64, i8* }*, { i64, i8* }** %t2392
  %t2398 = call i64 @nyx_array_get({ i64, i8* }* %t2397, i64 1)
  %t2399 = inttoptr i64 %t2398 to { i64, i8* }*
  store { i64, i8* }* %t2399, { i64, i8* }** %t2400
  %t2401 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t2401, { i64, i8* }** %t2402
  %t2403 = load { i64, i8* }*, { i64, i8* }** %t2392
  %t2404 = call i64 @nyx_array_length({ i64, i8* }* %t2403)
  %t2405 = icmp sgt i64 %t2404, 2
  br i1 %t2405, label %then489, label %else490
then489:
  %t2406 = load { i64, i8* }*, { i64, i8* }** %t2392
  %t2407 = call i64 @nyx_array_get({ i64, i8* }* %t2406, i64 2)
  %t2408 = inttoptr i64 %t2407 to { i64, i8* }*
  store { i64, i8* }* %t2408, { i64, i8* }** %t2409
  %t2410 = load { i64, i8* }*, { i64, i8* }** %t2409
  store { i64, i8* }* %t2410, { i64, i8* }** %t2402
  br label %merge491
else490:
  br label %merge491
merge491:
  %t2411 = getelementptr [5 x i8], [5 x i8]* @.str294, i32 0, i32 0
  %t2412 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str294.c, i8* %t2411, i64 4)
  store %nyx_string* %t2412, %nyx_string** %t2413
  %t2414 = load { i64, i8* }*, { i64, i8* }** %t2402
  %t2415 = call i64 @nyx_array_length({ i64, i8* }* %t2414)
  %t2416 = icmp sgt i64 %t2415, 0
  br i1 %t2416, label %then492, label %else493
then492:
  %t2417 = load %nyx_string*, %nyx_string** %t2413
  %t2418 = getelementptr [2 x i8], [2 x i8]* @.str295, i32 0, i32 0
  %t2419 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str295.c, i8* %t2418, i64 1)
  %t2420 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2417, %nyx_string* %t2419)
  store %nyx_string* %t2420, %nyx_string** %t2413
  %t2421 = getelementptr [1 x i8], [1 x i8]* @.str296, i32 0, i32 0
  %t2422 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str296.c, i8* %t2421, i64 0)
  store %nyx_string* %t2422, %nyx_string** %t2423
  store i64 0, i64* %t2424
  %t2425 = getelementptr [3 x i8], [3 x i8]* @.str297, i32 0, i32 0
  %t2426 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str297.c, i8* %t2425, i64 2)
  store %nyx_string* %t2426, %nyx_string** %t2427
  br label %while_cond495
while_cond495:
  %t2428 = load i64, i64* %t2424
  %t2429 = load { i64, i8* }*, { i64, i8* }** %t2402
  %t2430 = call i64 @nyx_array_length({ i64, i8* }* %t2429)
  %t2431 = icmp slt i64 %t2428, %t2430
  br i1 %t2431, label %while_body496, label %while_end497
while_body496:
  %t2432 = load { i64, i8* }*, { i64, i8* }** %t2402
  %t2433 = load i64, i64* %t2424
  %t2434 = call i64 @nyx_array_get_checked({ i64, i8* }* %t2432, i64 %t2433, i64 2)
  %t2435 = inttoptr i64 %t2434 to %nyx_string*
  store %nyx_string* %t2435, %nyx_string** %t2436
  %t2437 = load i64, i64* %t2424
  %t2438 = icmp sgt i64 %t2437, 0
  br i1 %t2438, label %then498, label %else499
then498:
  %t2439 = load %nyx_string*, %nyx_string** %t2413
  %t2440 = load %nyx_string*, %nyx_string** %t2427
  %t2441 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2439, %nyx_string* %t2440)
  store %nyx_string* %t2441, %nyx_string** %t2413
  %t2442 = load %nyx_string*, %nyx_string** %t2423
  %t2443 = load %nyx_string*, %nyx_string** %t2427
  %t2444 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2442, %nyx_string* %t2443)
  store %nyx_string* %t2444, %nyx_string** %t2423
  br label %merge500
else499:
  br label %merge500
merge500:
  %t2445 = load %nyx_string*, %nyx_string** %t2413
  %t2446 = load %nyx_string*, %nyx_string** %t2436
  %t2447 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2445, %nyx_string* %t2446)
  store %nyx_string* %t2447, %nyx_string** %t2413
  %t2448 = load %nyx_string*, %nyx_string** %t2423
  %t2449 = load %nyx_string*, %nyx_string** %t2436
  %t2450 = call %nyx_string* @tp_name_only(%nyx_string* %t2449)
  %t2451 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2448, %nyx_string* %t2450)
  store %nyx_string* %t2451, %nyx_string** %t2423
  %t2452 = load i64, i64* %t2424
  %t2453 = add i64 %t2452, 1
  store i64 %t2453, i64* %t2424
  br label %while_cond495
while_end497:
  %t2454 = load %nyx_string*, %nyx_string** %t2413
  %t2455 = getelementptr [3 x i8], [3 x i8]* @.str298, i32 0, i32 0
  %t2456 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str298.c, i8* %t2455, i64 2)
  %t2457 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2454, %nyx_string* %t2456)
  %t2458 = load %nyx_string*, %nyx_string** %t2396
  %t2459 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2457, %nyx_string* %t2458)
  %t2460 = getelementptr [2 x i8], [2 x i8]* @.str299, i32 0, i32 0
  %t2461 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str299.c, i8* %t2460, i64 1)
  %t2462 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2459, %nyx_string* %t2461)
  %t2463 = load %nyx_string*, %nyx_string** %t2423
  %t2464 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2462, %nyx_string* %t2463)
  %t2465 = getelementptr [2 x i8], [2 x i8]* @.str300, i32 0, i32 0
  %t2466 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str300.c, i8* %t2465, i64 1)
  %t2467 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2464, %nyx_string* %t2466)
  store %nyx_string* %t2467, %nyx_string** %t2413
  br label %merge494
else493:
  %t2468 = load %nyx_string*, %nyx_string** %t2413
  %t2469 = getelementptr [2 x i8], [2 x i8]* @.str301, i32 0, i32 0
  %t2470 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str301.c, i8* %t2469, i64 1)
  %t2471 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2468, %nyx_string* %t2470)
  %t2472 = load %nyx_string*, %nyx_string** %t2396
  %t2473 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2471, %nyx_string* %t2472)
  store %nyx_string* %t2473, %nyx_string** %t2413
  br label %merge494
merge494:
  %t2474 = load %nyx_string*, %nyx_string** %t2413
  %t2475 = getelementptr [3 x i8], [3 x i8]* @.str302, i32 0, i32 0
  %t2476 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str302.c, i8* %t2475, i64 2)
  %t2477 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2474, %nyx_string* %t2476)
  %t2478 = call i64 @out_line(%nyx_string* %t2477)
  %t2479 = load i64, i64* @g_indent
  %t2480 = add i64 %t2479, 1
  store i64 %t2480, i64* @g_indent
  store i64 0, i64* %t2481
  %t2482 = getelementptr [1 x i8], [1 x i8]* @.str303, i32 0, i32 0
  %t2483 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str303.c, i8* %t2482, i64 0)
  store %nyx_string* %t2483, %nyx_string** %t2484
  br label %while_cond501
while_cond501:
  %t2485 = load i64, i64* %t2481
  %t2486 = load { i64, i8* }*, { i64, i8* }** %t2400
  %t2487 = call i64 @nyx_array_length({ i64, i8* }* %t2486)
  %t2488 = icmp slt i64 %t2485, %t2487
  br i1 %t2488, label %while_body502, label %while_end503
while_body502:
  %t2489 = load { i64, i8* }*, { i64, i8* }** %t2400
  %t2490 = load i64, i64* %t2481
  %t2491 = call i64 @nyx_array_get({ i64, i8* }* %t2489, i64 %t2490)
  %t2492 = inttoptr i64 %t2491 to { i64, i8* }*
  store { i64, i8* }* %t2492, { i64, i8* }** %t2493
  %t2494 = load { i64, i8* }*, { i64, i8* }** %t2493
  %t2495 = load %nyx_string*, %nyx_string** %t2484
  %t2496 = call i64 @fmt_function({ i64, i8* }* %t2494, %nyx_string* %t2495)
  %t2497 = load i64, i64* %t2481
  %t2498 = add i64 %t2497, 1
  store i64 %t2498, i64* %t2481
  br label %while_cond501
while_end503:
  %t2499 = load i64, i64* @g_indent
  %t2500 = sub i64 %t2499, 1
  store i64 %t2500, i64* @g_indent
  %t2501 = getelementptr [2 x i8], [2 x i8]* @.str304, i32 0, i32 0
  %t2502 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str304.c, i8* %t2501, i64 1)
  %t2503 = call i64 @out_line(%nyx_string* %t2502)
  %t2504 = call i64 @out_empty()
  ret i64 0
}

define internal i64 @fmt_impl_trait(
{ i64, i8* }* %node.param) {
  %node.ptr = alloca { i64, i8* }*
  %t2507 = alloca { i64, i8* }*
  %t2511 = alloca %nyx_string*
  %t2515 = alloca %nyx_string*
  %t2519 = alloca { i64, i8* }*
  %t2521 = alloca { i64, i8* }*
  %t2528 = alloca { i64, i8* }*
  %t2545 = alloca i64
  %t2548 = alloca %nyx_string*
  %t2551 = alloca %nyx_string*
  %t2560 = alloca { i64, i8* }*
  %t2564 = alloca %nyx_string*
  %t2568 = alloca %nyx_string*
  %t2583 = alloca i64
  %t2586 = alloca %nyx_string*
  %t2595 = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %t2505 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %t2506 = call { i64, i8* }* @node_data({ i64, i8* }* %t2505)
  store { i64, i8* }* %t2506, { i64, i8* }** %t2507
  %t2508 = load { i64, i8* }*, { i64, i8* }** %t2507
  %t2509 = call i64 @nyx_array_get_checked({ i64, i8* }* %t2508, i64 0, i64 2)
  %t2510 = inttoptr i64 %t2509 to %nyx_string*
  store %nyx_string* %t2510, %nyx_string** %t2511
  %t2512 = load { i64, i8* }*, { i64, i8* }** %t2507
  %t2513 = call i64 @nyx_array_get_checked({ i64, i8* }* %t2512, i64 1, i64 2)
  %t2514 = inttoptr i64 %t2513 to %nyx_string*
  store %nyx_string* %t2514, %nyx_string** %t2515
  %t2516 = load { i64, i8* }*, { i64, i8* }** %t2507
  %t2517 = call i64 @nyx_array_get({ i64, i8* }* %t2516, i64 2)
  %t2518 = inttoptr i64 %t2517 to { i64, i8* }*
  store { i64, i8* }* %t2518, { i64, i8* }** %t2519
  %t2520 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t2520, { i64, i8* }** %t2521
  %t2522 = load { i64, i8* }*, { i64, i8* }** %t2507
  %t2523 = call i64 @nyx_array_length({ i64, i8* }* %t2522)
  %t2524 = icmp sgt i64 %t2523, 3
  br i1 %t2524, label %then504, label %else505
then504:
  %t2525 = load { i64, i8* }*, { i64, i8* }** %t2507
  %t2526 = call i64 @nyx_array_get({ i64, i8* }* %t2525, i64 3)
  %t2527 = inttoptr i64 %t2526 to { i64, i8* }*
  store { i64, i8* }* %t2527, { i64, i8* }** %t2528
  %t2529 = load { i64, i8* }*, { i64, i8* }** %t2528
  store { i64, i8* }* %t2529, { i64, i8* }** %t2521
  br label %merge506
else505:
  br label %merge506
merge506:
  %t2530 = getelementptr [6 x i8], [6 x i8]* @.str305, i32 0, i32 0
  %t2531 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str305.c, i8* %t2530, i64 5)
  %t2532 = load %nyx_string*, %nyx_string** %t2511
  %t2533 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2531, %nyx_string* %t2532)
  %t2534 = getelementptr [6 x i8], [6 x i8]* @.str306, i32 0, i32 0
  %t2535 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str306.c, i8* %t2534, i64 5)
  %t2536 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2533, %nyx_string* %t2535)
  %t2537 = load %nyx_string*, %nyx_string** %t2515
  %t2538 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2536, %nyx_string* %t2537)
  %t2539 = getelementptr [3 x i8], [3 x i8]* @.str307, i32 0, i32 0
  %t2540 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str307.c, i8* %t2539, i64 2)
  %t2541 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2538, %nyx_string* %t2540)
  %t2542 = call i64 @out_line(%nyx_string* %t2541)
  %t2543 = load i64, i64* @g_indent
  %t2544 = add i64 %t2543, 1
  store i64 %t2544, i64* @g_indent
  store i64 0, i64* %t2545
  %t2546 = getelementptr [6 x i8], [6 x i8]* @.str308, i32 0, i32 0
  %t2547 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str308.c, i8* %t2546, i64 5)
  store %nyx_string* %t2547, %nyx_string** %t2548
  %t2549 = getelementptr [4 x i8], [4 x i8]* @.str309, i32 0, i32 0
  %t2550 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str309.c, i8* %t2549, i64 3)
  store %nyx_string* %t2550, %nyx_string** %t2551
  br label %while_cond507
while_cond507:
  %t2552 = load i64, i64* %t2545
  %t2553 = load { i64, i8* }*, { i64, i8* }** %t2521
  %t2554 = call i64 @nyx_array_length({ i64, i8* }* %t2553)
  %t2555 = icmp slt i64 %t2552, %t2554
  br i1 %t2555, label %while_body508, label %while_end509
while_body508:
  %t2556 = load { i64, i8* }*, { i64, i8* }** %t2521
  %t2557 = load i64, i64* %t2545
  %t2558 = call i64 @nyx_array_get({ i64, i8* }* %t2556, i64 %t2557)
  %t2559 = inttoptr i64 %t2558 to { i64, i8* }*
  store { i64, i8* }* %t2559, { i64, i8* }** %t2560
  %t2561 = load { i64, i8* }*, { i64, i8* }** %t2560
  %t2562 = call i64 @nyx_array_get_checked({ i64, i8* }* %t2561, i64 0, i64 2)
  %t2563 = inttoptr i64 %t2562 to %nyx_string*
  store %nyx_string* %t2563, %nyx_string** %t2564
  %t2565 = load { i64, i8* }*, { i64, i8* }** %t2560
  %t2566 = call i64 @nyx_array_get_checked({ i64, i8* }* %t2565, i64 1, i64 2)
  %t2567 = inttoptr i64 %t2566 to %nyx_string*
  store %nyx_string* %t2567, %nyx_string** %t2568
  %t2569 = load %nyx_string*, %nyx_string** %t2548
  %t2570 = load %nyx_string*, %nyx_string** %t2564
  %t2571 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2569, %nyx_string* %t2570)
  %t2572 = load %nyx_string*, %nyx_string** %t2551
  %t2573 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2571, %nyx_string* %t2572)
  %t2574 = load %nyx_string*, %nyx_string** %t2568
  %t2575 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2573, %nyx_string* %t2574)
  %t2576 = call i64 @out_line(%nyx_string* %t2575)
  %t2577 = load i64, i64* %t2545
  %t2578 = add i64 %t2577, 1
  store i64 %t2578, i64* %t2545
  br label %while_cond507
while_end509:
  %t2579 = load { i64, i8* }*, { i64, i8* }** %t2521
  %t2580 = call i64 @nyx_array_length({ i64, i8* }* %t2579)
  %t2581 = icmp sgt i64 %t2580, 0
  br i1 %t2581, label %then510, label %else511
then510:
  %t2582 = call i64 @out_empty()
  br label %merge512
else511:
  br label %merge512
merge512:
  store i64 0, i64* %t2583
  %t2584 = getelementptr [1 x i8], [1 x i8]* @.str310, i32 0, i32 0
  %t2585 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str310.c, i8* %t2584, i64 0)
  store %nyx_string* %t2585, %nyx_string** %t2586
  br label %while_cond513
while_cond513:
  %t2587 = load i64, i64* %t2583
  %t2588 = load { i64, i8* }*, { i64, i8* }** %t2519
  %t2589 = call i64 @nyx_array_length({ i64, i8* }* %t2588)
  %t2590 = icmp slt i64 %t2587, %t2589
  br i1 %t2590, label %while_body514, label %while_end515
while_body514:
  %t2591 = load { i64, i8* }*, { i64, i8* }** %t2519
  %t2592 = load i64, i64* %t2583
  %t2593 = call i64 @nyx_array_get({ i64, i8* }* %t2591, i64 %t2592)
  %t2594 = inttoptr i64 %t2593 to { i64, i8* }*
  store { i64, i8* }* %t2594, { i64, i8* }** %t2595
  %t2596 = load { i64, i8* }*, { i64, i8* }** %t2595
  %t2597 = load %nyx_string*, %nyx_string** %t2586
  %t2598 = call i64 @fmt_function({ i64, i8* }* %t2596, %nyx_string* %t2597)
  %t2599 = load i64, i64* %t2583
  %t2600 = add i64 %t2599, 1
  store i64 %t2600, i64* %t2583
  br label %while_cond513
while_end515:
  %t2601 = load i64, i64* @g_indent
  %t2602 = sub i64 %t2601, 1
  store i64 %t2602, i64* @g_indent
  %t2603 = getelementptr [2 x i8], [2 x i8]* @.str311, i32 0, i32 0
  %t2604 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str311.c, i8* %t2603, i64 1)
  %t2605 = call i64 @out_line(%nyx_string* %t2604)
  %t2606 = call i64 @out_empty()
  ret i64 0
}

define internal i64 @fmt_import(
{ i64, i8* }* %node.param) {
  %node.ptr = alloca { i64, i8* }*
  %t2609 = alloca { i64, i8* }*
  %t2613 = alloca { i64, i8* }*
  %t2617 = alloca %nyx_string*
  %t2620 = alloca %nyx_string*
  %t2621 = alloca i64
  %t2624 = alloca %nyx_string*
  %t2638 = alloca %nyx_string*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %t2607 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %t2608 = call { i64, i8* }* @node_data({ i64, i8* }* %t2607)
  store { i64, i8* }* %t2608, { i64, i8* }** %t2609
  %t2610 = load { i64, i8* }*, { i64, i8* }** %t2609
  %t2611 = call i64 @nyx_array_get({ i64, i8* }* %t2610, i64 0)
  %t2612 = inttoptr i64 %t2611 to { i64, i8* }*
  store { i64, i8* }* %t2612, { i64, i8* }** %t2613
  %t2614 = load { i64, i8* }*, { i64, i8* }** %t2609
  %t2615 = call i64 @nyx_array_get_checked({ i64, i8* }* %t2614, i64 1, i64 2)
  %t2616 = inttoptr i64 %t2615 to %nyx_string*
  store %nyx_string* %t2616, %nyx_string** %t2617
  %t2618 = getelementptr [10 x i8], [10 x i8]* @.str312, i32 0, i32 0
  %t2619 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str312.c, i8* %t2618, i64 9)
  store %nyx_string* %t2619, %nyx_string** %t2620
  store i64 0, i64* %t2621
  %t2622 = getelementptr [3 x i8], [3 x i8]* @.str313, i32 0, i32 0
  %t2623 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str313.c, i8* %t2622, i64 2)
  store %nyx_string* %t2623, %nyx_string** %t2624
  br label %while_cond516
while_cond516:
  %t2625 = load i64, i64* %t2621
  %t2626 = load { i64, i8* }*, { i64, i8* }** %t2613
  %t2627 = call i64 @nyx_array_length({ i64, i8* }* %t2626)
  %t2628 = icmp slt i64 %t2625, %t2627
  br i1 %t2628, label %while_body517, label %while_end518
while_body517:
  %t2629 = load i64, i64* %t2621
  %t2630 = icmp sgt i64 %t2629, 0
  br i1 %t2630, label %then519, label %else520
then519:
  %t2631 = load %nyx_string*, %nyx_string** %t2620
  %t2632 = load %nyx_string*, %nyx_string** %t2624
  %t2633 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2631, %nyx_string* %t2632)
  store %nyx_string* %t2633, %nyx_string** %t2620
  br label %merge521
else520:
  br label %merge521
merge521:
  %t2634 = load { i64, i8* }*, { i64, i8* }** %t2613
  %t2635 = load i64, i64* %t2621
  %t2636 = call i64 @nyx_array_get_checked({ i64, i8* }* %t2634, i64 %t2635, i64 2)
  %t2637 = inttoptr i64 %t2636 to %nyx_string*
  store %nyx_string* %t2637, %nyx_string** %t2638
  %t2639 = load %nyx_string*, %nyx_string** %t2620
  %t2640 = load %nyx_string*, %nyx_string** %t2638
  %t2641 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2639, %nyx_string* %t2640)
  store %nyx_string* %t2641, %nyx_string** %t2620
  %t2642 = load i64, i64* %t2621
  %t2643 = add i64 %t2642, 1
  store i64 %t2643, i64* %t2621
  br label %while_cond516
while_end518:
  %t2644 = load %nyx_string*, %nyx_string** %t2620
  %t2645 = getelementptr [10 x i8], [10 x i8]* @.str314, i32 0, i32 0
  %t2646 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str314.c, i8* %t2645, i64 9)
  %t2647 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2644, %nyx_string* %t2646)
  %t2648 = load %nyx_string*, %nyx_string** %t2617
  %t2649 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2647, %nyx_string* %t2648)
  %t2650 = getelementptr [2 x i8], [2 x i8]* @.str315, i32 0, i32 0
  %t2651 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str315.c, i8* %t2650, i64 1)
  %t2652 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2649, %nyx_string* %t2651)
  store %nyx_string* %t2652, %nyx_string** %t2620
  %t2653 = load %nyx_string*, %nyx_string** %t2620
  %t2654 = call i64 @out_line(%nyx_string* %t2653)
  ret i64 0
}

define internal i64 @fmt_block_stmts(
{ i64, i8* }* %node.param) {
  %node.ptr = alloca { i64, i8* }*
  %t2662 = alloca { i64, i8* }*
  %t2666 = alloca { i64, i8* }*
  %t2667 = alloca i64
  %t2676 = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %t2655 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %t2656 = call %nyx_string* @node_type({ i64, i8* }* %t2655)
  %t2657 = getelementptr [6 x i8], [6 x i8]* @.str316, i32 0, i32 0
  %t2658 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str316.c, i8* %t2657, i64 5)
  %t2659 = call i1 @nyx_string_equals(%nyx_string* %t2656, %nyx_string* %t2658)
  br i1 %t2659, label %then522, label %else523
then522:
  %t2660 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %t2661 = call { i64, i8* }* @node_data({ i64, i8* }* %t2660)
  store { i64, i8* }* %t2661, { i64, i8* }** %t2662
  %t2663 = load { i64, i8* }*, { i64, i8* }** %t2662
  %t2664 = call i64 @nyx_array_get({ i64, i8* }* %t2663, i64 0)
  %t2665 = inttoptr i64 %t2664 to { i64, i8* }*
  store { i64, i8* }* %t2665, { i64, i8* }** %t2666
  store i64 0, i64* %t2667
  br label %while_cond525
while_cond525:
  %t2668 = load i64, i64* %t2667
  %t2669 = load { i64, i8* }*, { i64, i8* }** %t2666
  %t2670 = call i64 @nyx_array_length({ i64, i8* }* %t2669)
  %t2671 = icmp slt i64 %t2668, %t2670
  br i1 %t2671, label %while_body526, label %while_end527
while_body526:
  %t2672 = load { i64, i8* }*, { i64, i8* }** %t2666
  %t2673 = load i64, i64* %t2667
  %t2674 = call i64 @nyx_array_get({ i64, i8* }* %t2672, i64 %t2673)
  %t2675 = inttoptr i64 %t2674 to { i64, i8* }*
  store { i64, i8* }* %t2675, { i64, i8* }** %t2676
  %t2677 = load { i64, i8* }*, { i64, i8* }** %t2676
  %t2678 = call i64 @fmt_stmt({ i64, i8* }* %t2677)
  %t2679 = load i64, i64* %t2667
  %t2680 = add i64 %t2679, 1
  store i64 %t2680, i64* %t2667
  br label %while_cond525
while_end527:
  br label %merge524
else523:
  %t2681 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %t2682 = call i64 @fmt_stmt({ i64, i8* }* %t2681)
  br label %merge524
merge524:
  ret i64 0
}

define internal %nyx_string* @fmt_block_contents(
{ i64, i8* }* %node.param) {
  %node.ptr = alloca { i64, i8* }*
  %t2684 = alloca %nyx_string*
  %t2690 = alloca %nyx_string*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %t2683 = load %nyx_string*, %nyx_string** @g_output
  store %nyx_string* %t2683, %nyx_string** %t2684
  %t2685 = getelementptr [1 x i8], [1 x i8]* @.str317, i32 0, i32 0
  %t2686 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str317.c, i8* %t2685, i64 0)
  store %nyx_string* %t2686, %nyx_string** @g_output
  %t2687 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %t2688 = call i64 @fmt_block_stmts({ i64, i8* }* %t2687)
  %t2689 = load %nyx_string*, %nyx_string** @g_output
  store %nyx_string* %t2689, %nyx_string** %t2690
  %t2691 = load %nyx_string*, %nyx_string** %t2684
  store %nyx_string* %t2691, %nyx_string** @g_output
  %t2692 = load %nyx_string*, %nyx_string** %t2690
  ret %nyx_string* %t2692
}

define i64 @main(
i32 %argc, i8** %argv) {
  %t2697 = alloca %nyx_string*
  %t2707 = alloca %nyx_string*
  %t2710 = alloca { i64, i8* }*
  %t2714 = alloca { i64, i8* }*
  %t2718 = alloca { i64, i8* }*
  %t2722 = alloca { i64, i8* }*
  %t2723 = alloca i64
  %t2732 = alloca { i64, i8* }*
  %t2739 = alloca i64
  %t2740 = alloca i1
  call void @nyx_set_args(i32 %argc, i8** %argv)
  %t2693 = getelementptr [8 x i8], [8 x i8]* @.str318, i32 0, i32 0
  %t2694 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str318.c, i8* %t2693, i64 7)
  %t2695 = call i8* @nyx_string_to_cstr(%nyx_string* %t2694)
  %t2696 = call %nyx_string* @nyx_getenv(i8* %t2695)
  store %nyx_string* %t2696, %nyx_string** %t2697
  %t2698 = load %nyx_string*, %nyx_string** %t2697
  %t2699 = getelementptr [1 x i8], [1 x i8]* @.str319, i32 0, i32 0
  %t2700 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str319.c, i8* %t2699, i64 0)
  %t2701 = call i1 @nyx_string_equals(%nyx_string* %t2698, %nyx_string* %t2700)
  br i1 %t2701, label %then528, label %else529
then528:
  %t2702 = getelementptr [10 x i8], [10 x i8]* @.str320, i32 0, i32 0
  %t2703 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str320.c, i8* %t2702, i64 9)
  store %nyx_string* %t2703, %nyx_string** %t2697
  br label %merge530
else529:
  br label %merge530
merge530:
  %t2704 = load %nyx_string*, %nyx_string** %t2697
  %t2705 = call i8* @nyx_string_to_cstr(%nyx_string* %t2704)
  %t2706 = call %nyx_string* @nyx_read_file(i8* %t2705)
  store %nyx_string* %t2706, %nyx_string** %t2707
  %t2708 = load %nyx_string*, %nyx_string** %t2707
  %t2709 = call { i64, i8* }* @tokenize(%nyx_string* %t2708)
  store { i64, i8* }* %t2709, { i64, i8* }** %t2710
  %t2711 = load { i64, i8* }*, { i64, i8* }** %t2710
  %t2712 = load %nyx_string*, %nyx_string** %t2707
  %t2713 = call { i64, i8* }* @parse({ i64, i8* }* %t2711, %nyx_string* %t2712)
  store { i64, i8* }* %t2713, { i64, i8* }** %t2714
  %t2715 = load { i64, i8* }*, { i64, i8* }** %t2714
  %t2716 = call i64 @nyx_array_get({ i64, i8* }* %t2715, i64 1)
  %t2717 = inttoptr i64 %t2716 to { i64, i8* }*
  store { i64, i8* }* %t2717, { i64, i8* }** %t2718
  %t2719 = load { i64, i8* }*, { i64, i8* }** %t2718
  %t2720 = call i64 @nyx_array_get({ i64, i8* }* %t2719, i64 0)
  %t2721 = inttoptr i64 %t2720 to { i64, i8* }*
  store { i64, i8* }* %t2721, { i64, i8* }** %t2722
  store i64 0, i64* %t2723
  br label %while_cond531
while_cond531:
  %t2724 = load i64, i64* %t2723
  %t2725 = load { i64, i8* }*, { i64, i8* }** %t2722
  %t2726 = call i64 @nyx_array_length({ i64, i8* }* %t2725)
  %t2727 = icmp slt i64 %t2724, %t2726
  br i1 %t2727, label %while_body532, label %while_end533
while_body532:
  %t2728 = load { i64, i8* }*, { i64, i8* }** %t2722
  %t2729 = load i64, i64* %t2723
  %t2730 = call i64 @nyx_array_get({ i64, i8* }* %t2728, i64 %t2729)
  %t2731 = inttoptr i64 %t2730 to { i64, i8* }*
  store { i64, i8* }* %t2731, { i64, i8* }** %t2732
  %t2733 = load { i64, i8* }*, { i64, i8* }** %t2732
  %t2734 = call i64 @fmt_stmt({ i64, i8* }* %t2733)
  %t2735 = load i64, i64* %t2723
  %t2736 = add i64 %t2735, 1
  store i64 %t2736, i64* %t2723
  br label %while_cond531
while_end533:
  %t2737 = load %nyx_string*, %nyx_string** @g_output
  %t2738 = call i64 @nyx_string_byte_length(%nyx_string* %t2737)
  store i64 %t2738, i64* %t2739
  br label %while_cond534
while_cond534:
  store i1 false, i1* %t2740
  %t2741 = load i64, i64* %t2739
  %t2742 = icmp sgt i64 %t2741, 0
  br i1 %t2742, label %sc_and_rhs537, label %sc_and_end538
sc_and_rhs537:
  %t2743 = load %nyx_string*, %nyx_string** @g_output
  %t2744 = load i64, i64* %t2739
  %t2745 = sub i64 %t2744, 1
  %t2746 = load i64, i64* %t2739
  %t2747 = call %nyx_string* @nyx_string_substring(%nyx_string* %t2743, i64 %t2745, i64 %t2746)
  %t2748 = getelementptr [2 x i8], [2 x i8]* @.str321, i32 0, i32 0
  %t2749 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str321.c, i8* %t2748, i64 1)
  %t2750 = call i1 @nyx_string_equals(%nyx_string* %t2747, %nyx_string* %t2749)
  store i1 %t2750, i1* %t2740
  br label %sc_and_end538
sc_and_end538:
  %t2751 = load i1, i1* %t2740
  br i1 %t2751, label %while_body535, label %while_end536
while_body535:
  %t2752 = load i64, i64* %t2739
  %t2753 = sub i64 %t2752, 1
  store i64 %t2753, i64* %t2739
  br label %while_cond534
while_end536:
  %t2754 = load i64, i64* %t2739
  %t2755 = icmp sgt i64 %t2754, 0
  br i1 %t2755, label %then539, label %else540
then539:
  %t2756 = load %nyx_string*, %nyx_string** @g_output
  %t2757 = load i64, i64* %t2739
  %t2758 = call %nyx_string* @nyx_string_substring(%nyx_string* %t2756, i64 0, i64 %t2757)
  %t2759 = call i8* @nyx_string_to_cstr(%nyx_string* %t2758)
  call void @nyx_print_string(i8* %t2759)
  br label %merge541
else540:
  br label %merge541
merge541:
  ret i64 0
}

; Inicialización de variables globales (llamada automática vía ctor)
define void @__nyx_init_globals() {
entry:
  %t2760 = getelementptr [1 x i8], [1 x i8]* @.str.init.0, i32 0, i32 0
  %t2761 = call %nyx_string* @nyx_string_from_ptr(i8* %t2760, i64 0)
  store %nyx_string* %t2761, %nyx_string** @g_output
  ret void
}

@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @__nyx_init_globals, i8* null }]

attributes #0 = { returns_twice }

