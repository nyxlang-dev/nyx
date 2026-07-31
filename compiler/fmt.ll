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
@.str318 = private unnamed_addr constant [10 x i8] c"script.nx\00"
@.str318.c = internal global %nyx_string* null
@__nyx_test_failed = external global i64
@__nyx_test_mode = external global i64
@.str.init.0 = private unnamed_addr constant [1 x i8] c"\00"
; Nyx Compiler Bootstrap v3.0
; Generated from: script.nx

%nyx_string = type { i64, i64, i8* }
%ASTNode = type { %nyx_string*, { i64, i8* }*, i64, i64 }
declare %nyx_string* @nyx_string_from_cstr(i8*)
declare %nyx_string* @nyx_intern_cstr(%nyx_string**, i8*)
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

@g_indent = global i64 0
@g_output = global %nyx_string* null

declare { i64, i8* }* @tokenize(%nyx_string*)
declare { i64, i8* }* @parse({ i64, i8* }*, %nyx_string*)

define internal %nyx_string* @indent_str(
) {
  %1 = getelementptr [1 x i8], [1 x i8]* @.str0, i32 0, i32 0
  %2 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str0.c, i8* %1)
  %3 = alloca %nyx_string*
  store %nyx_string* %2, %nyx_string** %3
  %4 = alloca i64
  store i64 0, i64* %4
  %5 = getelementptr [5 x i8], [5 x i8]* @.str1, i32 0, i32 0
  %6 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1.c, i8* %5)
  %7 = alloca %nyx_string*
  store %nyx_string* %6, %nyx_string** %7
  br label %while_cond0
while_cond0:
  %8 = load i64, i64* %4
  %9 = load i64, i64* @g_indent
  %10 = icmp slt i64 %8, %9
  br i1 %10, label %while_body1, label %while_end2
while_body1:
  %11 = load %nyx_string*, %nyx_string** %3
  %12 = load %nyx_string*, %nyx_string** %7
  %13 = call %nyx_string* @nyx_string_concat(%nyx_string* %11, %nyx_string* %12)
  store %nyx_string* %13, %nyx_string** %3
  %14 = load i64, i64* %4
  %15 = add i64 %14, 1
  store i64 %15, i64* %4
  br label %while_cond0
while_end2:
  %16 = load %nyx_string*, %nyx_string** %3
  ret %nyx_string* %16
}

define internal i64 @out(
%nyx_string* %s.param) {
  %s.ptr = alloca %nyx_string*
  store %nyx_string* %s.param, %nyx_string** %s.ptr
  %17 = load %nyx_string*, %nyx_string** @g_output
  %18 = load %nyx_string*, %nyx_string** %s.ptr
  %19 = call %nyx_string* @nyx_string_concat(%nyx_string* %17, %nyx_string* %18)
  store %nyx_string* %19, %nyx_string** @g_output
  ret i64 0
}

define internal i64 @out_line(
%nyx_string* %s.param) {
  %s.ptr = alloca %nyx_string*
  store %nyx_string* %s.param, %nyx_string** %s.ptr
  %20 = load %nyx_string*, %nyx_string** @g_output
  %21 = call %nyx_string* @indent_str()
  %22 = call %nyx_string* @nyx_string_concat(%nyx_string* %20, %nyx_string* %21)
  %23 = load %nyx_string*, %nyx_string** %s.ptr
  %24 = call %nyx_string* @nyx_string_concat(%nyx_string* %22, %nyx_string* %23)
  %25 = getelementptr [2 x i8], [2 x i8]* @.str2, i32 0, i32 0
  %26 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str2.c, i8* %25)
  %27 = call %nyx_string* @nyx_string_concat(%nyx_string* %24, %nyx_string* %26)
  store %nyx_string* %27, %nyx_string** @g_output
  ret i64 0
}

define internal i64 @out_empty(
) {
  %28 = load %nyx_string*, %nyx_string** @g_output
  %29 = getelementptr [2 x i8], [2 x i8]* @.str3, i32 0, i32 0
  %30 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str3.c, i8* %29)
  %31 = call %nyx_string* @nyx_string_concat(%nyx_string* %28, %nyx_string* %30)
  store %nyx_string* %31, %nyx_string** @g_output
  ret i64 0
}

define internal %nyx_string* @node_type(
{ i64, i8* }* %node.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %32 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %33 = call i64 @nyx_array_get({ i64, i8* }* %32, i64 0)
  %34 = inttoptr i64 %33 to %nyx_string*
  %35 = alloca %nyx_string*
  store %nyx_string* %34, %nyx_string** %35
  %36 = load %nyx_string*, %nyx_string** %35
  ret %nyx_string* %36
}

define internal { i64, i8* }* @node_data(
{ i64, i8* }* %node.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %37 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %38 = call i64 @nyx_array_get({ i64, i8* }* %37, i64 1)
  %39 = inttoptr i64 %38 to { i64, i8* }*
  %40 = alloca { i64, i8* }*
  store { i64, i8* }* %39, { i64, i8* }** %40
  %41 = load { i64, i8* }*, { i64, i8* }** %40
  ret { i64, i8* }* %41
}

define internal %nyx_string* @tp_name_only(
%nyx_string* %tp.param) {
  %tp.ptr = alloca %nyx_string*
  store %nyx_string* %tp.param, %nyx_string** %tp.ptr
  %42 = load %nyx_string*, %nyx_string** %tp.ptr
  %43 = getelementptr [2 x i8], [2 x i8]* @.str4, i32 0, i32 0
  %44 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str4.c, i8* %43)
  %45 = call i64 @nyx_string_index_of(%nyx_string* %42, %nyx_string* %44)
  %46 = alloca i64
  store i64 %45, i64* %46
  %47 = load i64, i64* %46
  %48 = sub i64 0, 1
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %then3, label %else4
then3:
  %50 = load %nyx_string*, %nyx_string** %tp.ptr
  ret %nyx_string* %50
else4:
  br label %merge5
merge5:
  %51 = load %nyx_string*, %nyx_string** %tp.ptr
  %52 = load i64, i64* %46
  %53 = call %nyx_string* @nyx_string_substring(%nyx_string* %51, i64 0, i64 %52)
  ret %nyx_string* %53
}

define internal %nyx_string* @op_symbol(
%nyx_string* %token_type.param) {
  %token_type.ptr = alloca %nyx_string*
  store %nyx_string* %token_type.param, %nyx_string** %token_type.ptr
  %54 = load %nyx_string*, %nyx_string** %token_type.ptr
  %55 = getelementptr [5 x i8], [5 x i8]* @.str5, i32 0, i32 0
  %56 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str5.c, i8* %55)
  %57 = call i1 @nyx_string_equals(%nyx_string* %54, %nyx_string* %56)
  br i1 %57, label %then6, label %else7
then6:
  %58 = getelementptr [2 x i8], [2 x i8]* @.str6, i32 0, i32 0
  %59 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str6.c, i8* %58)
  ret %nyx_string* %59
else7:
  br label %merge8
merge8:
  %60 = load %nyx_string*, %nyx_string** %token_type.ptr
  %61 = getelementptr [6 x i8], [6 x i8]* @.str7, i32 0, i32 0
  %62 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str7.c, i8* %61)
  %63 = call i1 @nyx_string_equals(%nyx_string* %60, %nyx_string* %62)
  br i1 %63, label %then9, label %else10
then9:
  %64 = getelementptr [2 x i8], [2 x i8]* @.str8, i32 0, i32 0
  %65 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str8.c, i8* %64)
  ret %nyx_string* %65
else10:
  br label %merge11
merge11:
  %66 = load %nyx_string*, %nyx_string** %token_type.ptr
  %67 = getelementptr [5 x i8], [5 x i8]* @.str9, i32 0, i32 0
  %68 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str9.c, i8* %67)
  %69 = call i1 @nyx_string_equals(%nyx_string* %66, %nyx_string* %68)
  br i1 %69, label %then12, label %else13
then12:
  %70 = getelementptr [2 x i8], [2 x i8]* @.str10, i32 0, i32 0
  %71 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str10.c, i8* %70)
  ret %nyx_string* %71
else13:
  br label %merge14
merge14:
  %72 = load %nyx_string*, %nyx_string** %token_type.ptr
  %73 = getelementptr [6 x i8], [6 x i8]* @.str11, i32 0, i32 0
  %74 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str11.c, i8* %73)
  %75 = call i1 @nyx_string_equals(%nyx_string* %72, %nyx_string* %74)
  br i1 %75, label %then15, label %else16
then15:
  %76 = getelementptr [2 x i8], [2 x i8]* @.str12, i32 0, i32 0
  %77 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str12.c, i8* %76)
  ret %nyx_string* %77
else16:
  br label %merge17
merge17:
  %78 = load %nyx_string*, %nyx_string** %token_type.ptr
  %79 = getelementptr [8 x i8], [8 x i8]* @.str13, i32 0, i32 0
  %80 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str13.c, i8* %79)
  %81 = call i1 @nyx_string_equals(%nyx_string* %78, %nyx_string* %80)
  br i1 %81, label %then18, label %else19
then18:
  %82 = getelementptr [2 x i8], [2 x i8]* @.str14, i32 0, i32 0
  %83 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str14.c, i8* %82)
  ret %nyx_string* %83
else19:
  br label %merge20
merge20:
  %84 = load %nyx_string*, %nyx_string** %token_type.ptr
  %85 = getelementptr [6 x i8], [6 x i8]* @.str15, i32 0, i32 0
  %86 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str15.c, i8* %85)
  %87 = call i1 @nyx_string_equals(%nyx_string* %84, %nyx_string* %86)
  br i1 %87, label %then21, label %else22
then21:
  %88 = getelementptr [3 x i8], [3 x i8]* @.str16, i32 0, i32 0
  %89 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str16.c, i8* %88)
  ret %nyx_string* %89
else22:
  br label %merge23
merge23:
  %90 = load %nyx_string*, %nyx_string** %token_type.ptr
  %91 = getelementptr [12 x i8], [12 x i8]* @.str17, i32 0, i32 0
  %92 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str17.c, i8* %91)
  %93 = call i1 @nyx_string_equals(%nyx_string* %90, %nyx_string* %92)
  br i1 %93, label %then24, label %else25
then24:
  %94 = getelementptr [3 x i8], [3 x i8]* @.str18, i32 0, i32 0
  %95 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str18.c, i8* %94)
  ret %nyx_string* %95
else25:
  br label %merge26
merge26:
  %96 = load %nyx_string*, %nyx_string** %token_type.ptr
  %97 = getelementptr [10 x i8], [10 x i8]* @.str19, i32 0, i32 0
  %98 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str19.c, i8* %97)
  %99 = call i1 @nyx_string_equals(%nyx_string* %96, %nyx_string* %98)
  br i1 %99, label %then27, label %else28
then27:
  %100 = getelementptr [3 x i8], [3 x i8]* @.str20, i32 0, i32 0
  %101 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str20.c, i8* %100)
  ret %nyx_string* %101
else28:
  br label %merge29
merge29:
  %102 = load %nyx_string*, %nyx_string** %token_type.ptr
  %103 = getelementptr [5 x i8], [5 x i8]* @.str21, i32 0, i32 0
  %104 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str21.c, i8* %103)
  %105 = call i1 @nyx_string_equals(%nyx_string* %102, %nyx_string* %104)
  br i1 %105, label %then30, label %else31
then30:
  %106 = getelementptr [2 x i8], [2 x i8]* @.str22, i32 0, i32 0
  %107 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str22.c, i8* %106)
  ret %nyx_string* %107
else31:
  br label %merge32
merge32:
  %108 = load %nyx_string*, %nyx_string** %token_type.ptr
  %109 = getelementptr [11 x i8], [11 x i8]* @.str23, i32 0, i32 0
  %110 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str23.c, i8* %109)
  %111 = call i1 @nyx_string_equals(%nyx_string* %108, %nyx_string* %110)
  br i1 %111, label %then33, label %else34
then33:
  %112 = getelementptr [3 x i8], [3 x i8]* @.str24, i32 0, i32 0
  %113 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str24.c, i8* %112)
  ret %nyx_string* %113
else34:
  br label %merge35
merge35:
  %114 = load %nyx_string*, %nyx_string** %token_type.ptr
  %115 = getelementptr [8 x i8], [8 x i8]* @.str25, i32 0, i32 0
  %116 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str25.c, i8* %115)
  %117 = call i1 @nyx_string_equals(%nyx_string* %114, %nyx_string* %116)
  br i1 %117, label %then36, label %else37
then36:
  %118 = getelementptr [2 x i8], [2 x i8]* @.str26, i32 0, i32 0
  %119 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str26.c, i8* %118)
  ret %nyx_string* %119
else37:
  br label %merge38
merge38:
  %120 = load %nyx_string*, %nyx_string** %token_type.ptr
  %121 = getelementptr [14 x i8], [14 x i8]* @.str27, i32 0, i32 0
  %122 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str27.c, i8* %121)
  %123 = call i1 @nyx_string_equals(%nyx_string* %120, %nyx_string* %122)
  br i1 %123, label %then39, label %else40
then39:
  %124 = getelementptr [3 x i8], [3 x i8]* @.str28, i32 0, i32 0
  %125 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str28.c, i8* %124)
  ret %nyx_string* %125
else40:
  br label %merge41
merge41:
  %126 = load %nyx_string*, %nyx_string** %token_type.ptr
  %127 = getelementptr [4 x i8], [4 x i8]* @.str29, i32 0, i32 0
  %128 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str29.c, i8* %127)
  %129 = call i1 @nyx_string_equals(%nyx_string* %126, %nyx_string* %128)
  br i1 %129, label %then42, label %else43
then42:
  %130 = getelementptr [4 x i8], [4 x i8]* @.str30, i32 0, i32 0
  %131 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str30.c, i8* %130)
  ret %nyx_string* %131
else43:
  br label %merge44
merge44:
  %132 = load %nyx_string*, %nyx_string** %token_type.ptr
  %133 = getelementptr [8 x i8], [8 x i8]* @.str31, i32 0, i32 0
  %134 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str31.c, i8* %133)
  %135 = call i1 @nyx_string_equals(%nyx_string* %132, %nyx_string* %134)
  br i1 %135, label %then45, label %else46
then45:
  %136 = getelementptr [4 x i8], [4 x i8]* @.str32, i32 0, i32 0
  %137 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str32.c, i8* %136)
  ret %nyx_string* %137
else46:
  br label %merge47
merge47:
  %138 = load %nyx_string*, %nyx_string** %token_type.ptr
  %139 = getelementptr [3 x i8], [3 x i8]* @.str33, i32 0, i32 0
  %140 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str33.c, i8* %139)
  %141 = call i1 @nyx_string_equals(%nyx_string* %138, %nyx_string* %140)
  br i1 %141, label %then48, label %else49
then48:
  %142 = getelementptr [3 x i8], [3 x i8]* @.str34, i32 0, i32 0
  %143 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str34.c, i8* %142)
  ret %nyx_string* %143
else49:
  br label %merge50
merge50:
  %144 = load %nyx_string*, %nyx_string** %token_type.ptr
  %145 = getelementptr [6 x i8], [6 x i8]* @.str35, i32 0, i32 0
  %146 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str35.c, i8* %145)
  %147 = call i1 @nyx_string_equals(%nyx_string* %144, %nyx_string* %146)
  br i1 %147, label %then51, label %else52
then51:
  %148 = getelementptr [3 x i8], [3 x i8]* @.str36, i32 0, i32 0
  %149 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str36.c, i8* %148)
  ret %nyx_string* %149
else52:
  br label %merge53
merge53:
  %150 = load %nyx_string*, %nyx_string** %token_type.ptr
  %151 = getelementptr [4 x i8], [4 x i8]* @.str37, i32 0, i32 0
  %152 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str37.c, i8* %151)
  %153 = call i1 @nyx_string_equals(%nyx_string* %150, %nyx_string* %152)
  br i1 %153, label %then54, label %else55
then54:
  %154 = getelementptr [4 x i8], [4 x i8]* @.str38, i32 0, i32 0
  %155 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str38.c, i8* %154)
  ret %nyx_string* %155
else55:
  br label %merge56
merge56:
  %156 = load %nyx_string*, %nyx_string** %token_type.ptr
  %157 = getelementptr [12 x i8], [12 x i8]* @.str39, i32 0, i32 0
  %158 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str39.c, i8* %157)
  %159 = call i1 @nyx_string_equals(%nyx_string* %156, %nyx_string* %158)
  br i1 %159, label %then57, label %else58
then57:
  %160 = getelementptr [3 x i8], [3 x i8]* @.str40, i32 0, i32 0
  %161 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str40.c, i8* %160)
  ret %nyx_string* %161
else58:
  br label %merge59
merge59:
  %162 = load %nyx_string*, %nyx_string** %token_type.ptr
  %163 = getelementptr [13 x i8], [13 x i8]* @.str41, i32 0, i32 0
  %164 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str41.c, i8* %163)
  %165 = call i1 @nyx_string_equals(%nyx_string* %162, %nyx_string* %164)
  br i1 %165, label %then60, label %else61
then60:
  %166 = getelementptr [3 x i8], [3 x i8]* @.str42, i32 0, i32 0
  %167 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str42.c, i8* %166)
  ret %nyx_string* %167
else61:
  br label %merge62
merge62:
  %168 = load %nyx_string*, %nyx_string** %token_type.ptr
  %169 = getelementptr [12 x i8], [12 x i8]* @.str43, i32 0, i32 0
  %170 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str43.c, i8* %169)
  %171 = call i1 @nyx_string_equals(%nyx_string* %168, %nyx_string* %170)
  br i1 %171, label %then63, label %else64
then63:
  %172 = getelementptr [3 x i8], [3 x i8]* @.str44, i32 0, i32 0
  %173 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str44.c, i8* %172)
  ret %nyx_string* %173
else64:
  br label %merge65
merge65:
  %174 = load %nyx_string*, %nyx_string** %token_type.ptr
  %175 = getelementptr [13 x i8], [13 x i8]* @.str45, i32 0, i32 0
  %176 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str45.c, i8* %175)
  %177 = call i1 @nyx_string_equals(%nyx_string* %174, %nyx_string* %176)
  br i1 %177, label %then66, label %else67
then66:
  %178 = getelementptr [3 x i8], [3 x i8]* @.str46, i32 0, i32 0
  %179 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str46.c, i8* %178)
  ret %nyx_string* %179
else67:
  br label %merge68
merge68:
  %180 = load %nyx_string*, %nyx_string** %token_type.ptr
  %181 = getelementptr [15 x i8], [15 x i8]* @.str47, i32 0, i32 0
  %182 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str47.c, i8* %181)
  %183 = call i1 @nyx_string_equals(%nyx_string* %180, %nyx_string* %182)
  br i1 %183, label %then69, label %else70
then69:
  %184 = getelementptr [3 x i8], [3 x i8]* @.str48, i32 0, i32 0
  %185 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str48.c, i8* %184)
  ret %nyx_string* %185
else70:
  br label %merge71
merge71:
  %186 = load %nyx_string*, %nyx_string** %token_type.ptr
  %187 = getelementptr [4 x i8], [4 x i8]* @.str49, i32 0, i32 0
  %188 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str49.c, i8* %187)
  %189 = call i1 @nyx_string_equals(%nyx_string* %186, %nyx_string* %188)
  br i1 %189, label %then72, label %else73
then72:
  %190 = getelementptr [2 x i8], [2 x i8]* @.str50, i32 0, i32 0
  %191 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str50.c, i8* %190)
  ret %nyx_string* %191
else73:
  br label %merge74
merge74:
  %192 = load %nyx_string*, %nyx_string** %token_type.ptr
  %193 = getelementptr [5 x i8], [5 x i8]* @.str51, i32 0, i32 0
  %194 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str51.c, i8* %193)
  %195 = call i1 @nyx_string_equals(%nyx_string* %192, %nyx_string* %194)
  br i1 %195, label %then75, label %else76
then75:
  %196 = getelementptr [2 x i8], [2 x i8]* @.str52, i32 0, i32 0
  %197 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str52.c, i8* %196)
  ret %nyx_string* %197
else76:
  br label %merge77
merge77:
  %198 = load %nyx_string*, %nyx_string** %token_type.ptr
  %199 = getelementptr [6 x i8], [6 x i8]* @.str53, i32 0, i32 0
  %200 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str53.c, i8* %199)
  %201 = call i1 @nyx_string_equals(%nyx_string* %198, %nyx_string* %200)
  br i1 %201, label %then78, label %else79
then78:
  %202 = getelementptr [2 x i8], [2 x i8]* @.str54, i32 0, i32 0
  %203 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str54.c, i8* %202)
  ret %nyx_string* %203
else79:
  br label %merge80
merge80:
  %204 = load %nyx_string*, %nyx_string** %token_type.ptr
  %205 = getelementptr [6 x i8], [6 x i8]* @.str55, i32 0, i32 0
  %206 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str55.c, i8* %205)
  %207 = call i1 @nyx_string_equals(%nyx_string* %204, %nyx_string* %206)
  br i1 %207, label %then81, label %else82
then81:
  %208 = getelementptr [2 x i8], [2 x i8]* @.str56, i32 0, i32 0
  %209 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str56.c, i8* %208)
  ret %nyx_string* %209
else82:
  br label %merge83
merge83:
  %210 = load %nyx_string*, %nyx_string** %token_type.ptr
  %211 = getelementptr [11 x i8], [11 x i8]* @.str57, i32 0, i32 0
  %212 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str57.c, i8* %211)
  %213 = call i1 @nyx_string_equals(%nyx_string* %210, %nyx_string* %212)
  br i1 %213, label %then84, label %else85
then84:
  %214 = getelementptr [3 x i8], [3 x i8]* @.str58, i32 0, i32 0
  %215 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str58.c, i8* %214)
  ret %nyx_string* %215
else85:
  br label %merge86
merge86:
  %216 = load %nyx_string*, %nyx_string** %token_type.ptr
  %217 = getelementptr [12 x i8], [12 x i8]* @.str59, i32 0, i32 0
  %218 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str59.c, i8* %217)
  %219 = call i1 @nyx_string_equals(%nyx_string* %216, %nyx_string* %218)
  br i1 %219, label %then87, label %else88
then87:
  %220 = getelementptr [3 x i8], [3 x i8]* @.str60, i32 0, i32 0
  %221 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str60.c, i8* %220)
  ret %nyx_string* %221
else88:
  br label %merge89
merge89:
  %222 = load %nyx_string*, %nyx_string** %token_type.ptr
  %223 = getelementptr [11 x i8], [11 x i8]* @.str61, i32 0, i32 0
  %224 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str61.c, i8* %223)
  %225 = call i1 @nyx_string_equals(%nyx_string* %222, %nyx_string* %224)
  br i1 %225, label %then90, label %else91
then90:
  %226 = getelementptr [3 x i8], [3 x i8]* @.str62, i32 0, i32 0
  %227 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str62.c, i8* %226)
  ret %nyx_string* %227
else91:
  br label %merge92
merge92:
  %228 = load %nyx_string*, %nyx_string** %token_type.ptr
  %229 = getelementptr [12 x i8], [12 x i8]* @.str63, i32 0, i32 0
  %230 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str63.c, i8* %229)
  %231 = call i1 @nyx_string_equals(%nyx_string* %228, %nyx_string* %230)
  br i1 %231, label %then93, label %else94
then93:
  %232 = getelementptr [3 x i8], [3 x i8]* @.str64, i32 0, i32 0
  %233 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str64.c, i8* %232)
  ret %nyx_string* %233
else94:
  br label %merge95
merge95:
  %234 = load %nyx_string*, %nyx_string** %token_type.ptr
  %235 = getelementptr [13 x i8], [13 x i8]* @.str65, i32 0, i32 0
  %236 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str65.c, i8* %235)
  %237 = call i1 @nyx_string_equals(%nyx_string* %234, %nyx_string* %236)
  br i1 %237, label %then96, label %else97
then96:
  %238 = getelementptr [3 x i8], [3 x i8]* @.str66, i32 0, i32 0
  %239 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str66.c, i8* %238)
  ret %nyx_string* %239
else97:
  br label %merge98
merge98:
  %240 = load %nyx_string*, %nyx_string** %token_type.ptr
  %241 = getelementptr [18 x i8], [18 x i8]* @.str67, i32 0, i32 0
  %242 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str67.c, i8* %241)
  %243 = call i1 @nyx_string_equals(%nyx_string* %240, %nyx_string* %242)
  br i1 %243, label %then99, label %else100
then99:
  %244 = getelementptr [4 x i8], [4 x i8]* @.str68, i32 0, i32 0
  %245 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str68.c, i8* %244)
  ret %nyx_string* %245
else100:
  br label %merge101
merge101:
  %246 = load %nyx_string*, %nyx_string** %token_type.ptr
  %247 = getelementptr [19 x i8], [19 x i8]* @.str69, i32 0, i32 0
  %248 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str69.c, i8* %247)
  %249 = call i1 @nyx_string_equals(%nyx_string* %246, %nyx_string* %248)
  br i1 %249, label %then102, label %else103
then102:
  %250 = getelementptr [4 x i8], [4 x i8]* @.str70, i32 0, i32 0
  %251 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str70.c, i8* %250)
  ret %nyx_string* %251
else103:
  br label %merge104
merge104:
  %252 = load %nyx_string*, %nyx_string** %token_type.ptr
  ret %nyx_string* %252
}

define internal %nyx_string* @fmt_expr(
{ i64, i8* }* %node.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %253 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %254 = call %nyx_string* @node_type({ i64, i8* }* %253)
  %255 = alloca %nyx_string*
  store %nyx_string* %254, %nyx_string** %255
  %256 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %257 = call { i64, i8* }* @node_data({ i64, i8* }* %256)
  %258 = alloca { i64, i8* }*
  store { i64, i8* }* %257, { i64, i8* }** %258
  %259 = load %nyx_string*, %nyx_string** %255
  %260 = getelementptr [7 x i8], [7 x i8]* @.str71, i32 0, i32 0
  %261 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str71.c, i8* %260)
  %262 = call i1 @nyx_string_equals(%nyx_string* %259, %nyx_string* %261)
  br i1 %262, label %then105, label %else106
then105:
  %263 = load { i64, i8* }*, { i64, i8* }** %258
  %264 = call i64 @nyx_array_get({ i64, i8* }* %263, i64 0)
  %265 = inttoptr i64 %264 to %nyx_string*
  %266 = alloca %nyx_string*
  store %nyx_string* %265, %nyx_string** %266
  %267 = load %nyx_string*, %nyx_string** %266
  ret %nyx_string* %267
else106:
  br label %merge107
merge107:
  %268 = load %nyx_string*, %nyx_string** %255
  %269 = getelementptr [7 x i8], [7 x i8]* @.str72, i32 0, i32 0
  %270 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str72.c, i8* %269)
  %271 = call i1 @nyx_string_equals(%nyx_string* %268, %nyx_string* %270)
  br i1 %271, label %then108, label %else109
then108:
  %272 = load { i64, i8* }*, { i64, i8* }** %258
  %273 = call i64 @nyx_array_get({ i64, i8* }* %272, i64 0)
  %274 = inttoptr i64 %273 to %nyx_string*
  %275 = alloca %nyx_string*
  store %nyx_string* %274, %nyx_string** %275
  %276 = getelementptr [2 x i8], [2 x i8]* @.str73, i32 0, i32 0
  %277 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str73.c, i8* %276)
  %278 = load %nyx_string*, %nyx_string** %275
  %279 = call %nyx_string* @nyx_string_concat(%nyx_string* %277, %nyx_string* %278)
  %280 = getelementptr [2 x i8], [2 x i8]* @.str74, i32 0, i32 0
  %281 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str74.c, i8* %280)
  %282 = call %nyx_string* @nyx_string_concat(%nyx_string* %279, %nyx_string* %281)
  ret %nyx_string* %282
else109:
  br label %merge110
merge110:
  %283 = load %nyx_string*, %nyx_string** %255
  %284 = getelementptr [5 x i8], [5 x i8]* @.str75, i32 0, i32 0
  %285 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str75.c, i8* %284)
  %286 = call i1 @nyx_string_equals(%nyx_string* %283, %nyx_string* %285)
  br i1 %286, label %then111, label %else112
then111:
  %287 = load { i64, i8* }*, { i64, i8* }** %258
  %288 = call i64 @nyx_array_get({ i64, i8* }* %287, i64 0)
  %289 = inttoptr i64 %288 to %nyx_string*
  %290 = alloca %nyx_string*
  store %nyx_string* %289, %nyx_string** %290
  %291 = getelementptr [2 x i8], [2 x i8]* @.str76, i32 0, i32 0
  %292 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str76.c, i8* %291)
  %293 = load %nyx_string*, %nyx_string** %290
  %294 = call %nyx_string* @nyx_string_concat(%nyx_string* %292, %nyx_string* %293)
  %295 = getelementptr [2 x i8], [2 x i8]* @.str77, i32 0, i32 0
  %296 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str77.c, i8* %295)
  %297 = call %nyx_string* @nyx_string_concat(%nyx_string* %294, %nyx_string* %296)
  ret %nyx_string* %297
else112:
  br label %merge113
merge113:
  %298 = load %nyx_string*, %nyx_string** %255
  %299 = getelementptr [5 x i8], [5 x i8]* @.str78, i32 0, i32 0
  %300 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str78.c, i8* %299)
  %301 = call i1 @nyx_string_equals(%nyx_string* %298, %nyx_string* %300)
  br i1 %301, label %then114, label %else115
then114:
  %302 = load { i64, i8* }*, { i64, i8* }** %258
  %303 = call i64 @nyx_array_get({ i64, i8* }* %302, i64 0)
  %304 = inttoptr i64 %303 to %nyx_string*
  %305 = alloca %nyx_string*
  store %nyx_string* %304, %nyx_string** %305
  %306 = load %nyx_string*, %nyx_string** %305
  ret %nyx_string* %306
else115:
  br label %merge116
merge116:
  %307 = load %nyx_string*, %nyx_string** %255
  %308 = getelementptr [11 x i8], [11 x i8]* @.str79, i32 0, i32 0
  %309 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str79.c, i8* %308)
  %310 = call i1 @nyx_string_equals(%nyx_string* %307, %nyx_string* %309)
  br i1 %310, label %then117, label %else118
then117:
  %311 = load { i64, i8* }*, { i64, i8* }** %258
  %312 = call i64 @nyx_array_get({ i64, i8* }* %311, i64 0)
  %313 = inttoptr i64 %312 to %nyx_string*
  %314 = alloca %nyx_string*
  store %nyx_string* %313, %nyx_string** %314
  %315 = load %nyx_string*, %nyx_string** %314
  ret %nyx_string* %315
else118:
  br label %merge119
merge119:
  %316 = load %nyx_string*, %nyx_string** %255
  %317 = getelementptr [6 x i8], [6 x i8]* @.str80, i32 0, i32 0
  %318 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str80.c, i8* %317)
  %319 = call i1 @nyx_string_equals(%nyx_string* %316, %nyx_string* %318)
  br i1 %319, label %then120, label %else121
then120:
  %320 = load { i64, i8* }*, { i64, i8* }** %258
  %321 = call i64 @nyx_array_get({ i64, i8* }* %320, i64 0)
  %322 = inttoptr i64 %321 to %nyx_string*
  %323 = alloca %nyx_string*
  store %nyx_string* %322, %nyx_string** %323
  %324 = load { i64, i8* }*, { i64, i8* }** %258
  %325 = call i64 @nyx_array_get({ i64, i8* }* %324, i64 1)
  %326 = inttoptr i64 %325 to { i64, i8* }*
  %327 = alloca { i64, i8* }*
  store { i64, i8* }* %326, { i64, i8* }** %327
  %328 = load { i64, i8* }*, { i64, i8* }** %258
  %329 = call i64 @nyx_array_get({ i64, i8* }* %328, i64 2)
  %330 = inttoptr i64 %329 to { i64, i8* }*
  %331 = alloca { i64, i8* }*
  store { i64, i8* }* %330, { i64, i8* }** %331
  %332 = load { i64, i8* }*, { i64, i8* }** %327
  %333 = call %nyx_string* @fmt_expr({ i64, i8* }* %332)
  %334 = getelementptr [2 x i8], [2 x i8]* @.str81, i32 0, i32 0
  %335 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str81.c, i8* %334)
  %336 = call %nyx_string* @nyx_string_concat(%nyx_string* %333, %nyx_string* %335)
  %337 = load %nyx_string*, %nyx_string** %323
  %338 = call %nyx_string* @op_symbol(%nyx_string* %337)
  %339 = call %nyx_string* @nyx_string_concat(%nyx_string* %336, %nyx_string* %338)
  %340 = getelementptr [2 x i8], [2 x i8]* @.str82, i32 0, i32 0
  %341 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str82.c, i8* %340)
  %342 = call %nyx_string* @nyx_string_concat(%nyx_string* %339, %nyx_string* %341)
  %343 = load { i64, i8* }*, { i64, i8* }** %331
  %344 = call %nyx_string* @fmt_expr({ i64, i8* }* %343)
  %345 = call %nyx_string* @nyx_string_concat(%nyx_string* %342, %nyx_string* %344)
  ret %nyx_string* %345
else121:
  br label %merge122
merge122:
  %346 = load %nyx_string*, %nyx_string** %255
  %347 = getelementptr [5 x i8], [5 x i8]* @.str83, i32 0, i32 0
  %348 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str83.c, i8* %347)
  %349 = call i1 @nyx_string_equals(%nyx_string* %346, %nyx_string* %348)
  br i1 %349, label %then123, label %else124
then123:
  %350 = load { i64, i8* }*, { i64, i8* }** %258
  %351 = call i64 @nyx_array_get({ i64, i8* }* %350, i64 0)
  %352 = inttoptr i64 %351 to %nyx_string*
  %353 = alloca %nyx_string*
  store %nyx_string* %352, %nyx_string** %353
  %354 = load { i64, i8* }*, { i64, i8* }** %258
  %355 = call i64 @nyx_array_get({ i64, i8* }* %354, i64 1)
  %356 = inttoptr i64 %355 to { i64, i8* }*
  %357 = alloca { i64, i8* }*
  store { i64, i8* }* %356, { i64, i8* }** %357
  %358 = load %nyx_string*, %nyx_string** %353
  %359 = call %nyx_string* @op_symbol(%nyx_string* %358)
  %360 = alloca %nyx_string*
  store %nyx_string* %359, %nyx_string** %360
  %361 = load %nyx_string*, %nyx_string** %360
  %362 = getelementptr [4 x i8], [4 x i8]* @.str84, i32 0, i32 0
  %363 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str84.c, i8* %362)
  %364 = call i1 @nyx_string_equals(%nyx_string* %361, %nyx_string* %363)
  br i1 %364, label %then126, label %else127
then126:
  %365 = getelementptr [5 x i8], [5 x i8]* @.str85, i32 0, i32 0
  %366 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str85.c, i8* %365)
  %367 = load { i64, i8* }*, { i64, i8* }** %357
  %368 = call %nyx_string* @fmt_expr({ i64, i8* }* %367)
  %369 = call %nyx_string* @nyx_string_concat(%nyx_string* %366, %nyx_string* %368)
  ret %nyx_string* %369
else127:
  br label %merge128
merge128:
  %370 = load %nyx_string*, %nyx_string** %360
  %371 = getelementptr [2 x i8], [2 x i8]* @.str86, i32 0, i32 0
  %372 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str86.c, i8* %371)
  %373 = call i1 @nyx_string_equals(%nyx_string* %370, %nyx_string* %372)
  br i1 %373, label %then129, label %else130
then129:
  %374 = getelementptr [2 x i8], [2 x i8]* @.str87, i32 0, i32 0
  %375 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str87.c, i8* %374)
  %376 = load { i64, i8* }*, { i64, i8* }** %357
  %377 = call %nyx_string* @fmt_expr({ i64, i8* }* %376)
  %378 = call %nyx_string* @nyx_string_concat(%nyx_string* %375, %nyx_string* %377)
  ret %nyx_string* %378
else130:
  br label %merge131
merge131:
  %379 = load %nyx_string*, %nyx_string** %360
  %380 = load { i64, i8* }*, { i64, i8* }** %357
  %381 = call %nyx_string* @fmt_expr({ i64, i8* }* %380)
  %382 = call %nyx_string* @nyx_string_concat(%nyx_string* %379, %nyx_string* %381)
  ret %nyx_string* %382
else124:
  br label %merge125
merge125:
  %383 = load %nyx_string*, %nyx_string** %255
  %384 = getelementptr [5 x i8], [5 x i8]* @.str88, i32 0, i32 0
  %385 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str88.c, i8* %384)
  %386 = call i1 @nyx_string_equals(%nyx_string* %383, %nyx_string* %385)
  br i1 %386, label %then132, label %else133
then132:
  %387 = load { i64, i8* }*, { i64, i8* }** %258
  %388 = call i64 @nyx_array_get({ i64, i8* }* %387, i64 0)
  %389 = inttoptr i64 %388 to { i64, i8* }*
  %390 = alloca { i64, i8* }*
  store { i64, i8* }* %389, { i64, i8* }** %390
  %391 = load { i64, i8* }*, { i64, i8* }** %258
  %392 = call i64 @nyx_array_get({ i64, i8* }* %391, i64 1)
  %393 = inttoptr i64 %392 to { i64, i8* }*
  %394 = alloca { i64, i8* }*
  store { i64, i8* }* %393, { i64, i8* }** %394
  %395 = load { i64, i8* }*, { i64, i8* }** %390
  %396 = call %nyx_string* @fmt_expr({ i64, i8* }* %395)
  %397 = getelementptr [2 x i8], [2 x i8]* @.str89, i32 0, i32 0
  %398 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str89.c, i8* %397)
  %399 = call %nyx_string* @nyx_string_concat(%nyx_string* %396, %nyx_string* %398)
  %400 = alloca %nyx_string*
  store %nyx_string* %399, %nyx_string** %400
  %401 = alloca i64
  store i64 0, i64* %401
  %402 = getelementptr [3 x i8], [3 x i8]* @.str90, i32 0, i32 0
  %403 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str90.c, i8* %402)
  %404 = alloca %nyx_string*
  store %nyx_string* %403, %nyx_string** %404
  br label %while_cond135
while_cond135:
  %405 = load i64, i64* %401
  %406 = load { i64, i8* }*, { i64, i8* }** %394
  %407 = call i64 @nyx_array_length({ i64, i8* }* %406)
  %408 = icmp slt i64 %405, %407
  br i1 %408, label %while_body136, label %while_end137
while_body136:
  %409 = load i64, i64* %401
  %410 = icmp sgt i64 %409, 0
  br i1 %410, label %then138, label %else139
then138:
  %411 = load %nyx_string*, %nyx_string** %400
  %412 = load %nyx_string*, %nyx_string** %404
  %413 = call %nyx_string* @nyx_string_concat(%nyx_string* %411, %nyx_string* %412)
  store %nyx_string* %413, %nyx_string** %400
  br label %merge140
else139:
  br label %merge140
merge140:
  %414 = load { i64, i8* }*, { i64, i8* }** %394
  %415 = load i64, i64* %401
  %416 = call i64 @nyx_array_get({ i64, i8* }* %414, i64 %415)
  %417 = inttoptr i64 %416 to { i64, i8* }*
  %418 = alloca { i64, i8* }*
  store { i64, i8* }* %417, { i64, i8* }** %418
  %419 = load %nyx_string*, %nyx_string** %400
  %420 = load { i64, i8* }*, { i64, i8* }** %418
  %421 = call %nyx_string* @fmt_expr({ i64, i8* }* %420)
  %422 = call %nyx_string* @nyx_string_concat(%nyx_string* %419, %nyx_string* %421)
  store %nyx_string* %422, %nyx_string** %400
  %423 = load i64, i64* %401
  %424 = add i64 %423, 1
  store i64 %424, i64* %401
  br label %while_cond135
while_end137:
  %425 = load %nyx_string*, %nyx_string** %400
  %426 = getelementptr [2 x i8], [2 x i8]* @.str91, i32 0, i32 0
  %427 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str91.c, i8* %426)
  %428 = call %nyx_string* @nyx_string_concat(%nyx_string* %425, %nyx_string* %427)
  ret %nyx_string* %428
else133:
  br label %merge134
merge134:
  %429 = load %nyx_string*, %nyx_string** %255
  %430 = getelementptr [13 x i8], [13 x i8]* @.str92, i32 0, i32 0
  %431 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str92.c, i8* %430)
  %432 = call i1 @nyx_string_equals(%nyx_string* %429, %nyx_string* %431)
  br i1 %432, label %then141, label %else142
then141:
  %433 = load { i64, i8* }*, { i64, i8* }** %258
  %434 = call i64 @nyx_array_get({ i64, i8* }* %433, i64 0)
  %435 = inttoptr i64 %434 to { i64, i8* }*
  %436 = alloca { i64, i8* }*
  store { i64, i8* }* %435, { i64, i8* }** %436
  %437 = load { i64, i8* }*, { i64, i8* }** %258
  %438 = call i64 @nyx_array_get({ i64, i8* }* %437, i64 1)
  %439 = inttoptr i64 %438 to { i64, i8* }*
  %440 = alloca { i64, i8* }*
  store { i64, i8* }* %439, { i64, i8* }** %440
  %441 = load { i64, i8* }*, { i64, i8* }** %436
  %442 = call %nyx_string* @fmt_expr({ i64, i8* }* %441)
  %443 = getelementptr [2 x i8], [2 x i8]* @.str93, i32 0, i32 0
  %444 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str93.c, i8* %443)
  %445 = call %nyx_string* @nyx_string_concat(%nyx_string* %442, %nyx_string* %444)
  %446 = alloca %nyx_string*
  store %nyx_string* %445, %nyx_string** %446
  %447 = alloca i64
  store i64 0, i64* %447
  %448 = getelementptr [3 x i8], [3 x i8]* @.str94, i32 0, i32 0
  %449 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str94.c, i8* %448)
  %450 = alloca %nyx_string*
  store %nyx_string* %449, %nyx_string** %450
  br label %while_cond144
while_cond144:
  %451 = load i64, i64* %447
  %452 = load { i64, i8* }*, { i64, i8* }** %440
  %453 = call i64 @nyx_array_length({ i64, i8* }* %452)
  %454 = icmp slt i64 %451, %453
  br i1 %454, label %while_body145, label %while_end146
while_body145:
  %455 = load i64, i64* %447
  %456 = icmp sgt i64 %455, 0
  br i1 %456, label %then147, label %else148
then147:
  %457 = load %nyx_string*, %nyx_string** %446
  %458 = load %nyx_string*, %nyx_string** %450
  %459 = call %nyx_string* @nyx_string_concat(%nyx_string* %457, %nyx_string* %458)
  store %nyx_string* %459, %nyx_string** %446
  br label %merge149
else148:
  br label %merge149
merge149:
  %460 = load { i64, i8* }*, { i64, i8* }** %440
  %461 = load i64, i64* %447
  %462 = call i64 @nyx_array_get({ i64, i8* }* %460, i64 %461)
  %463 = inttoptr i64 %462 to %nyx_string*
  %464 = alloca %nyx_string*
  store %nyx_string* %463, %nyx_string** %464
  %465 = load %nyx_string*, %nyx_string** %446
  %466 = load %nyx_string*, %nyx_string** %464
  %467 = call %nyx_string* @nyx_string_concat(%nyx_string* %465, %nyx_string* %466)
  store %nyx_string* %467, %nyx_string** %446
  %468 = load i64, i64* %447
  %469 = add i64 %468, 1
  store i64 %469, i64* %447
  br label %while_cond144
while_end146:
  %470 = load %nyx_string*, %nyx_string** %446
  %471 = getelementptr [2 x i8], [2 x i8]* @.str95, i32 0, i32 0
  %472 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str95.c, i8* %471)
  %473 = call %nyx_string* @nyx_string_concat(%nyx_string* %470, %nyx_string* %472)
  store %nyx_string* %473, %nyx_string** %446
  %474 = load { i64, i8* }*, { i64, i8* }** %258
  %475 = call i64 @nyx_array_length({ i64, i8* }* %474)
  %476 = icmp sgt i64 %475, 2
  br i1 %476, label %then150, label %else151
then150:
  %477 = load { i64, i8* }*, { i64, i8* }** %258
  %478 = call i64 @nyx_array_get({ i64, i8* }* %477, i64 2)
  %479 = inttoptr i64 %478 to { i64, i8* }*
  %480 = alloca { i64, i8* }*
  store { i64, i8* }* %479, { i64, i8* }** %480
  %481 = load { i64, i8* }*, { i64, i8* }** %480
  %482 = call i64 @nyx_array_length({ i64, i8* }* %481)
  %483 = icmp sgt i64 %482, 0
  br i1 %483, label %then153, label %else154
then153:
  %484 = load %nyx_string*, %nyx_string** %446
  %485 = getelementptr [2 x i8], [2 x i8]* @.str96, i32 0, i32 0
  %486 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str96.c, i8* %485)
  %487 = call %nyx_string* @nyx_string_concat(%nyx_string* %484, %nyx_string* %486)
  store %nyx_string* %487, %nyx_string** %446
  %488 = alloca i64
  store i64 0, i64* %488
  %489 = getelementptr [3 x i8], [3 x i8]* @.str97, i32 0, i32 0
  %490 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str97.c, i8* %489)
  %491 = alloca %nyx_string*
  store %nyx_string* %490, %nyx_string** %491
  br label %while_cond156
while_cond156:
  %492 = load i64, i64* %488
  %493 = load { i64, i8* }*, { i64, i8* }** %480
  %494 = call i64 @nyx_array_length({ i64, i8* }* %493)
  %495 = icmp slt i64 %492, %494
  br i1 %495, label %while_body157, label %while_end158
while_body157:
  %496 = load i64, i64* %488
  %497 = icmp sgt i64 %496, 0
  br i1 %497, label %then159, label %else160
then159:
  %498 = load %nyx_string*, %nyx_string** %446
  %499 = load %nyx_string*, %nyx_string** %491
  %500 = call %nyx_string* @nyx_string_concat(%nyx_string* %498, %nyx_string* %499)
  store %nyx_string* %500, %nyx_string** %446
  br label %merge161
else160:
  br label %merge161
merge161:
  %501 = load { i64, i8* }*, { i64, i8* }** %480
  %502 = load i64, i64* %488
  %503 = call i64 @nyx_array_get({ i64, i8* }* %501, i64 %502)
  %504 = inttoptr i64 %503 to { i64, i8* }*
  %505 = alloca { i64, i8* }*
  store { i64, i8* }* %504, { i64, i8* }** %505
  %506 = load %nyx_string*, %nyx_string** %446
  %507 = load { i64, i8* }*, { i64, i8* }** %505
  %508 = call %nyx_string* @fmt_expr({ i64, i8* }* %507)
  %509 = call %nyx_string* @nyx_string_concat(%nyx_string* %506, %nyx_string* %508)
  store %nyx_string* %509, %nyx_string** %446
  %510 = load i64, i64* %488
  %511 = add i64 %510, 1
  store i64 %511, i64* %488
  br label %while_cond156
while_end158:
  %512 = load %nyx_string*, %nyx_string** %446
  %513 = getelementptr [2 x i8], [2 x i8]* @.str98, i32 0, i32 0
  %514 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str98.c, i8* %513)
  %515 = call %nyx_string* @nyx_string_concat(%nyx_string* %512, %nyx_string* %514)
  store %nyx_string* %515, %nyx_string** %446
  br label %merge155
else154:
  br label %merge155
merge155:
  br label %merge152
else151:
  br label %merge152
merge152:
  %516 = load %nyx_string*, %nyx_string** %446
  ret %nyx_string* %516
else142:
  br label %merge143
merge143:
  %517 = load %nyx_string*, %nyx_string** %255
  %518 = getelementptr [12 x i8], [12 x i8]* @.str99, i32 0, i32 0
  %519 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str99.c, i8* %518)
  %520 = call i1 @nyx_string_equals(%nyx_string* %517, %nyx_string* %519)
  br i1 %520, label %then162, label %else163
then162:
  %521 = load { i64, i8* }*, { i64, i8* }** %258
  %522 = call i64 @nyx_array_get({ i64, i8* }* %521, i64 0)
  %523 = inttoptr i64 %522 to { i64, i8* }*
  %524 = alloca { i64, i8* }*
  store { i64, i8* }* %523, { i64, i8* }** %524
  %525 = load { i64, i8* }*, { i64, i8* }** %258
  %526 = call i64 @nyx_array_get({ i64, i8* }* %525, i64 1)
  %527 = inttoptr i64 %526 to %nyx_string*
  %528 = alloca %nyx_string*
  store %nyx_string* %527, %nyx_string** %528
  %529 = load { i64, i8* }*, { i64, i8* }** %258
  %530 = call i64 @nyx_array_get({ i64, i8* }* %529, i64 2)
  %531 = inttoptr i64 %530 to { i64, i8* }*
  %532 = alloca { i64, i8* }*
  store { i64, i8* }* %531, { i64, i8* }** %532
  %533 = load { i64, i8* }*, { i64, i8* }** %524
  %534 = call %nyx_string* @fmt_expr({ i64, i8* }* %533)
  %535 = getelementptr [2 x i8], [2 x i8]* @.str100, i32 0, i32 0
  %536 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str100.c, i8* %535)
  %537 = call %nyx_string* @nyx_string_concat(%nyx_string* %534, %nyx_string* %536)
  %538 = load %nyx_string*, %nyx_string** %528
  %539 = call %nyx_string* @nyx_string_concat(%nyx_string* %537, %nyx_string* %538)
  %540 = getelementptr [2 x i8], [2 x i8]* @.str101, i32 0, i32 0
  %541 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str101.c, i8* %540)
  %542 = call %nyx_string* @nyx_string_concat(%nyx_string* %539, %nyx_string* %541)
  %543 = alloca %nyx_string*
  store %nyx_string* %542, %nyx_string** %543
  %544 = alloca i64
  store i64 0, i64* %544
  %545 = getelementptr [3 x i8], [3 x i8]* @.str102, i32 0, i32 0
  %546 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str102.c, i8* %545)
  %547 = alloca %nyx_string*
  store %nyx_string* %546, %nyx_string** %547
  br label %while_cond165
while_cond165:
  %548 = load i64, i64* %544
  %549 = load { i64, i8* }*, { i64, i8* }** %532
  %550 = call i64 @nyx_array_length({ i64, i8* }* %549)
  %551 = icmp slt i64 %548, %550
  br i1 %551, label %while_body166, label %while_end167
while_body166:
  %552 = load i64, i64* %544
  %553 = icmp sgt i64 %552, 0
  br i1 %553, label %then168, label %else169
then168:
  %554 = load %nyx_string*, %nyx_string** %543
  %555 = load %nyx_string*, %nyx_string** %547
  %556 = call %nyx_string* @nyx_string_concat(%nyx_string* %554, %nyx_string* %555)
  store %nyx_string* %556, %nyx_string** %543
  br label %merge170
else169:
  br label %merge170
merge170:
  %557 = load { i64, i8* }*, { i64, i8* }** %532
  %558 = load i64, i64* %544
  %559 = call i64 @nyx_array_get({ i64, i8* }* %557, i64 %558)
  %560 = inttoptr i64 %559 to { i64, i8* }*
  %561 = alloca { i64, i8* }*
  store { i64, i8* }* %560, { i64, i8* }** %561
  %562 = load %nyx_string*, %nyx_string** %543
  %563 = load { i64, i8* }*, { i64, i8* }** %561
  %564 = call %nyx_string* @fmt_expr({ i64, i8* }* %563)
  %565 = call %nyx_string* @nyx_string_concat(%nyx_string* %562, %nyx_string* %564)
  store %nyx_string* %565, %nyx_string** %543
  %566 = load i64, i64* %544
  %567 = add i64 %566, 1
  store i64 %567, i64* %544
  br label %while_cond165
while_end167:
  %568 = load %nyx_string*, %nyx_string** %543
  %569 = getelementptr [2 x i8], [2 x i8]* @.str103, i32 0, i32 0
  %570 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str103.c, i8* %569)
  %571 = call %nyx_string* @nyx_string_concat(%nyx_string* %568, %nyx_string* %570)
  ret %nyx_string* %571
else163:
  br label %merge164
merge164:
  %572 = load %nyx_string*, %nyx_string** %255
  %573 = getelementptr [13 x i8], [13 x i8]* @.str104, i32 0, i32 0
  %574 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str104.c, i8* %573)
  %575 = call i1 @nyx_string_equals(%nyx_string* %572, %nyx_string* %574)
  br i1 %575, label %then171, label %else172
then171:
  %576 = load { i64, i8* }*, { i64, i8* }** %258
  %577 = call i64 @nyx_array_get({ i64, i8* }* %576, i64 0)
  %578 = inttoptr i64 %577 to { i64, i8* }*
  %579 = alloca { i64, i8* }*
  store { i64, i8* }* %578, { i64, i8* }** %579
  %580 = load { i64, i8* }*, { i64, i8* }** %258
  %581 = call i64 @nyx_array_get({ i64, i8* }* %580, i64 1)
  %582 = inttoptr i64 %581 to %nyx_string*
  %583 = alloca %nyx_string*
  store %nyx_string* %582, %nyx_string** %583
  %584 = load { i64, i8* }*, { i64, i8* }** %579
  %585 = call %nyx_string* @fmt_expr({ i64, i8* }* %584)
  %586 = getelementptr [2 x i8], [2 x i8]* @.str105, i32 0, i32 0
  %587 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str105.c, i8* %586)
  %588 = call %nyx_string* @nyx_string_concat(%nyx_string* %585, %nyx_string* %587)
  %589 = load %nyx_string*, %nyx_string** %583
  %590 = call %nyx_string* @nyx_string_concat(%nyx_string* %588, %nyx_string* %589)
  ret %nyx_string* %590
else172:
  br label %merge173
merge173:
  %591 = load %nyx_string*, %nyx_string** %255
  %592 = getelementptr [6 x i8], [6 x i8]* @.str106, i32 0, i32 0
  %593 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str106.c, i8* %592)
  %594 = call i1 @nyx_string_equals(%nyx_string* %591, %nyx_string* %593)
  br i1 %594, label %then174, label %else175
then174:
  %595 = load { i64, i8* }*, { i64, i8* }** %258
  %596 = call i64 @nyx_array_get({ i64, i8* }* %595, i64 0)
  %597 = inttoptr i64 %596 to { i64, i8* }*
  %598 = alloca { i64, i8* }*
  store { i64, i8* }* %597, { i64, i8* }** %598
  %599 = load { i64, i8* }*, { i64, i8* }** %258
  %600 = call i64 @nyx_array_get({ i64, i8* }* %599, i64 1)
  %601 = inttoptr i64 %600 to { i64, i8* }*
  %602 = alloca { i64, i8* }*
  store { i64, i8* }* %601, { i64, i8* }** %602
  %603 = load { i64, i8* }*, { i64, i8* }** %598
  %604 = call %nyx_string* @fmt_expr({ i64, i8* }* %603)
  %605 = getelementptr [2 x i8], [2 x i8]* @.str107, i32 0, i32 0
  %606 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str107.c, i8* %605)
  %607 = call %nyx_string* @nyx_string_concat(%nyx_string* %604, %nyx_string* %606)
  %608 = load { i64, i8* }*, { i64, i8* }** %602
  %609 = call %nyx_string* @fmt_expr({ i64, i8* }* %608)
  %610 = call %nyx_string* @nyx_string_concat(%nyx_string* %607, %nyx_string* %609)
  %611 = getelementptr [2 x i8], [2 x i8]* @.str108, i32 0, i32 0
  %612 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str108.c, i8* %611)
  %613 = call %nyx_string* @nyx_string_concat(%nyx_string* %610, %nyx_string* %612)
  ret %nyx_string* %613
else175:
  br label %merge176
merge176:
  %614 = load %nyx_string*, %nyx_string** %255
  %615 = getelementptr [12 x i8], [12 x i8]* @.str109, i32 0, i32 0
  %616 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str109.c, i8* %615)
  %617 = call i1 @nyx_string_equals(%nyx_string* %614, %nyx_string* %616)
  br i1 %617, label %then177, label %else178
then177:
  %618 = load { i64, i8* }*, { i64, i8* }** %258
  %619 = call i64 @nyx_array_get({ i64, i8* }* %618, i64 0)
  %620 = inttoptr i64 %619 to { i64, i8* }*
  %621 = alloca { i64, i8* }*
  store { i64, i8* }* %620, { i64, i8* }** %621
  %622 = load { i64, i8* }*, { i64, i8* }** %258
  %623 = call i64 @nyx_array_get({ i64, i8* }* %622, i64 1)
  %624 = inttoptr i64 %623 to %nyx_string*
  %625 = alloca %nyx_string*
  store %nyx_string* %624, %nyx_string** %625
  %626 = load { i64, i8* }*, { i64, i8* }** %621
  %627 = call %nyx_string* @fmt_expr({ i64, i8* }* %626)
  %628 = getelementptr [2 x i8], [2 x i8]* @.str110, i32 0, i32 0
  %629 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str110.c, i8* %628)
  %630 = call %nyx_string* @nyx_string_concat(%nyx_string* %627, %nyx_string* %629)
  %631 = load %nyx_string*, %nyx_string** %625
  %632 = call %nyx_string* @nyx_string_concat(%nyx_string* %630, %nyx_string* %631)
  ret %nyx_string* %632
else178:
  br label %merge179
merge179:
  %633 = load %nyx_string*, %nyx_string** %255
  %634 = getelementptr [6 x i8], [6 x i8]* @.str111, i32 0, i32 0
  %635 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str111.c, i8* %634)
  %636 = call i1 @nyx_string_equals(%nyx_string* %633, %nyx_string* %635)
  br i1 %636, label %then180, label %else181
then180:
  %637 = load { i64, i8* }*, { i64, i8* }** %258
  %638 = call i64 @nyx_array_get({ i64, i8* }* %637, i64 0)
  %639 = inttoptr i64 %638 to { i64, i8* }*
  %640 = alloca { i64, i8* }*
  store { i64, i8* }* %639, { i64, i8* }** %640
  %641 = getelementptr [2 x i8], [2 x i8]* @.str112, i32 0, i32 0
  %642 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str112.c, i8* %641)
  %643 = alloca %nyx_string*
  store %nyx_string* %642, %nyx_string** %643
  %644 = alloca i64
  store i64 0, i64* %644
  %645 = getelementptr [3 x i8], [3 x i8]* @.str113, i32 0, i32 0
  %646 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str113.c, i8* %645)
  %647 = alloca %nyx_string*
  store %nyx_string* %646, %nyx_string** %647
  br label %while_cond183
while_cond183:
  %648 = load i64, i64* %644
  %649 = load { i64, i8* }*, { i64, i8* }** %640
  %650 = call i64 @nyx_array_length({ i64, i8* }* %649)
  %651 = icmp slt i64 %648, %650
  br i1 %651, label %while_body184, label %while_end185
while_body184:
  %652 = load i64, i64* %644
  %653 = icmp sgt i64 %652, 0
  br i1 %653, label %then186, label %else187
then186:
  %654 = load %nyx_string*, %nyx_string** %643
  %655 = load %nyx_string*, %nyx_string** %647
  %656 = call %nyx_string* @nyx_string_concat(%nyx_string* %654, %nyx_string* %655)
  store %nyx_string* %656, %nyx_string** %643
  br label %merge188
else187:
  br label %merge188
merge188:
  %657 = load { i64, i8* }*, { i64, i8* }** %640
  %658 = load i64, i64* %644
  %659 = call i64 @nyx_array_get({ i64, i8* }* %657, i64 %658)
  %660 = inttoptr i64 %659 to { i64, i8* }*
  %661 = alloca { i64, i8* }*
  store { i64, i8* }* %660, { i64, i8* }** %661
  %662 = load %nyx_string*, %nyx_string** %643
  %663 = load { i64, i8* }*, { i64, i8* }** %661
  %664 = call %nyx_string* @fmt_expr({ i64, i8* }* %663)
  %665 = call %nyx_string* @nyx_string_concat(%nyx_string* %662, %nyx_string* %664)
  store %nyx_string* %665, %nyx_string** %643
  %666 = load i64, i64* %644
  %667 = add i64 %666, 1
  store i64 %667, i64* %644
  br label %while_cond183
while_end185:
  %668 = load %nyx_string*, %nyx_string** %643
  %669 = getelementptr [2 x i8], [2 x i8]* @.str114, i32 0, i32 0
  %670 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str114.c, i8* %669)
  %671 = call %nyx_string* @nyx_string_concat(%nyx_string* %668, %nyx_string* %670)
  ret %nyx_string* %671
else181:
  br label %merge182
merge182:
  %672 = load %nyx_string*, %nyx_string** %255
  %673 = getelementptr [10 x i8], [10 x i8]* @.str115, i32 0, i32 0
  %674 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str115.c, i8* %673)
  %675 = call i1 @nyx_string_equals(%nyx_string* %672, %nyx_string* %674)
  br i1 %675, label %then189, label %else190
then189:
  %676 = load { i64, i8* }*, { i64, i8* }** %258
  %677 = call i64 @nyx_array_get({ i64, i8* }* %676, i64 0)
  %678 = inttoptr i64 %677 to { i64, i8* }*
  %679 = alloca { i64, i8* }*
  store { i64, i8* }* %678, { i64, i8* }** %679
  %680 = getelementptr [2 x i8], [2 x i8]* @.str116, i32 0, i32 0
  %681 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str116.c, i8* %680)
  %682 = alloca %nyx_string*
  store %nyx_string* %681, %nyx_string** %682
  %683 = alloca i64
  store i64 0, i64* %683
  %684 = getelementptr [3 x i8], [3 x i8]* @.str117, i32 0, i32 0
  %685 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str117.c, i8* %684)
  %686 = alloca %nyx_string*
  store %nyx_string* %685, %nyx_string** %686
  br label %while_cond192
while_cond192:
  %687 = load i64, i64* %683
  %688 = load { i64, i8* }*, { i64, i8* }** %679
  %689 = call i64 @nyx_array_length({ i64, i8* }* %688)
  %690 = icmp slt i64 %687, %689
  br i1 %690, label %while_body193, label %while_end194
while_body193:
  %691 = load i64, i64* %683
  %692 = icmp sgt i64 %691, 0
  br i1 %692, label %then195, label %else196
then195:
  %693 = load %nyx_string*, %nyx_string** %682
  %694 = load %nyx_string*, %nyx_string** %686
  %695 = call %nyx_string* @nyx_string_concat(%nyx_string* %693, %nyx_string* %694)
  store %nyx_string* %695, %nyx_string** %682
  br label %merge197
else196:
  br label %merge197
merge197:
  %696 = load { i64, i8* }*, { i64, i8* }** %679
  %697 = load i64, i64* %683
  %698 = call i64 @nyx_array_get({ i64, i8* }* %696, i64 %697)
  %699 = inttoptr i64 %698 to { i64, i8* }*
  %700 = alloca { i64, i8* }*
  store { i64, i8* }* %699, { i64, i8* }** %700
  %701 = load %nyx_string*, %nyx_string** %682
  %702 = load { i64, i8* }*, { i64, i8* }** %700
  %703 = call %nyx_string* @fmt_expr({ i64, i8* }* %702)
  %704 = call %nyx_string* @nyx_string_concat(%nyx_string* %701, %nyx_string* %703)
  store %nyx_string* %704, %nyx_string** %682
  %705 = load i64, i64* %683
  %706 = add i64 %705, 1
  store i64 %706, i64* %683
  br label %while_cond192
while_end194:
  %707 = load %nyx_string*, %nyx_string** %682
  %708 = getelementptr [2 x i8], [2 x i8]* @.str118, i32 0, i32 0
  %709 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str118.c, i8* %708)
  %710 = call %nyx_string* @nyx_string_concat(%nyx_string* %707, %nyx_string* %709)
  ret %nyx_string* %710
else190:
  br label %merge191
merge191:
  %711 = load %nyx_string*, %nyx_string** %255
  %712 = getelementptr [12 x i8], [12 x i8]* @.str119, i32 0, i32 0
  %713 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str119.c, i8* %712)
  %714 = call i1 @nyx_string_equals(%nyx_string* %711, %nyx_string* %713)
  br i1 %714, label %then198, label %else199
then198:
  %715 = load { i64, i8* }*, { i64, i8* }** %258
  %716 = call i64 @nyx_array_get({ i64, i8* }* %715, i64 0)
  %717 = inttoptr i64 %716 to %nyx_string*
  %718 = alloca %nyx_string*
  store %nyx_string* %717, %nyx_string** %718
  %719 = load { i64, i8* }*, { i64, i8* }** %258
  %720 = call i64 @nyx_array_get({ i64, i8* }* %719, i64 1)
  %721 = inttoptr i64 %720 to { i64, i8* }*
  %722 = alloca { i64, i8* }*
  store { i64, i8* }* %721, { i64, i8* }** %722
  %723 = call { i64, i8* }* @nyx_array_new_ptr()
  %724 = alloca { i64, i8* }*
  store { i64, i8* }* %723, { i64, i8* }** %724
  %725 = load { i64, i8* }*, { i64, i8* }** %258
  %726 = call i64 @nyx_array_length({ i64, i8* }* %725)
  %727 = icmp sgt i64 %726, 2
  br i1 %727, label %then201, label %else202
then201:
  %728 = load { i64, i8* }*, { i64, i8* }** %258
  %729 = call i64 @nyx_array_get({ i64, i8* }* %728, i64 2)
  %730 = inttoptr i64 %729 to { i64, i8* }*
  %731 = alloca { i64, i8* }*
  store { i64, i8* }* %730, { i64, i8* }** %731
  %732 = load { i64, i8* }*, { i64, i8* }** %731
  store { i64, i8* }* %732, { i64, i8* }** %724
  br label %merge203
else202:
  br label %merge203
merge203:
  %733 = load %nyx_string*, %nyx_string** %718
  %734 = alloca %nyx_string*
  store %nyx_string* %733, %nyx_string** %734
  %735 = load { i64, i8* }*, { i64, i8* }** %724
  %736 = call i64 @nyx_array_length({ i64, i8* }* %735)
  %737 = icmp sgt i64 %736, 0
  br i1 %737, label %then204, label %else205
then204:
  %738 = load %nyx_string*, %nyx_string** %734
  %739 = getelementptr [2 x i8], [2 x i8]* @.str120, i32 0, i32 0
  %740 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str120.c, i8* %739)
  %741 = call %nyx_string* @nyx_string_concat(%nyx_string* %738, %nyx_string* %740)
  store %nyx_string* %741, %nyx_string** %734
  %742 = alloca i64
  store i64 0, i64* %742
  %743 = getelementptr [3 x i8], [3 x i8]* @.str121, i32 0, i32 0
  %744 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str121.c, i8* %743)
  %745 = alloca %nyx_string*
  store %nyx_string* %744, %nyx_string** %745
  br label %while_cond207
while_cond207:
  %746 = load i64, i64* %742
  %747 = load { i64, i8* }*, { i64, i8* }** %724
  %748 = call i64 @nyx_array_length({ i64, i8* }* %747)
  %749 = icmp slt i64 %746, %748
  br i1 %749, label %while_body208, label %while_end209
while_body208:
  %750 = load i64, i64* %742
  %751 = icmp sgt i64 %750, 0
  br i1 %751, label %then210, label %else211
then210:
  %752 = load %nyx_string*, %nyx_string** %734
  %753 = load %nyx_string*, %nyx_string** %745
  %754 = call %nyx_string* @nyx_string_concat(%nyx_string* %752, %nyx_string* %753)
  store %nyx_string* %754, %nyx_string** %734
  br label %merge212
else211:
  br label %merge212
merge212:
  %755 = load { i64, i8* }*, { i64, i8* }** %724
  %756 = load i64, i64* %742
  %757 = call i64 @nyx_array_get({ i64, i8* }* %755, i64 %756)
  %758 = inttoptr i64 %757 to %nyx_string*
  %759 = alloca %nyx_string*
  store %nyx_string* %758, %nyx_string** %759
  %760 = load %nyx_string*, %nyx_string** %734
  %761 = load %nyx_string*, %nyx_string** %759
  %762 = call %nyx_string* @nyx_string_concat(%nyx_string* %760, %nyx_string* %761)
  store %nyx_string* %762, %nyx_string** %734
  %763 = load i64, i64* %742
  %764 = add i64 %763, 1
  store i64 %764, i64* %742
  br label %while_cond207
while_end209:
  %765 = load %nyx_string*, %nyx_string** %734
  %766 = getelementptr [2 x i8], [2 x i8]* @.str122, i32 0, i32 0
  %767 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str122.c, i8* %766)
  %768 = call %nyx_string* @nyx_string_concat(%nyx_string* %765, %nyx_string* %767)
  store %nyx_string* %768, %nyx_string** %734
  br label %merge206
else205:
  br label %merge206
merge206:
  %769 = load %nyx_string*, %nyx_string** %734
  %770 = getelementptr [3 x i8], [3 x i8]* @.str123, i32 0, i32 0
  %771 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str123.c, i8* %770)
  %772 = call %nyx_string* @nyx_string_concat(%nyx_string* %769, %nyx_string* %771)
  store %nyx_string* %772, %nyx_string** %734
  %773 = alloca i64
  store i64 0, i64* %773
  %774 = getelementptr [2 x i8], [2 x i8]* @.str124, i32 0, i32 0
  %775 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str124.c, i8* %774)
  %776 = alloca %nyx_string*
  store %nyx_string* %775, %nyx_string** %776
  %777 = getelementptr [2 x i8], [2 x i8]* @.str125, i32 0, i32 0
  %778 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str125.c, i8* %777)
  %779 = alloca %nyx_string*
  store %nyx_string* %778, %nyx_string** %779
  %780 = getelementptr [3 x i8], [3 x i8]* @.str126, i32 0, i32 0
  %781 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str126.c, i8* %780)
  %782 = alloca %nyx_string*
  store %nyx_string* %781, %nyx_string** %782
  br label %while_cond213
while_cond213:
  %783 = load i64, i64* %773
  %784 = load { i64, i8* }*, { i64, i8* }** %722
  %785 = call i64 @nyx_array_length({ i64, i8* }* %784)
  %786 = icmp slt i64 %783, %785
  br i1 %786, label %while_body214, label %while_end215
while_body214:
  %787 = load i64, i64* %773
  %788 = icmp sgt i64 %787, 0
  br i1 %788, label %then216, label %else217
then216:
  %789 = load %nyx_string*, %nyx_string** %734
  %790 = load %nyx_string*, %nyx_string** %776
  %791 = call %nyx_string* @nyx_string_concat(%nyx_string* %789, %nyx_string* %790)
  store %nyx_string* %791, %nyx_string** %734
  br label %merge218
else217:
  br label %merge218
merge218:
  %792 = load { i64, i8* }*, { i64, i8* }** %722
  %793 = load i64, i64* %773
  %794 = call i64 @nyx_array_get({ i64, i8* }* %792, i64 %793)
  %795 = inttoptr i64 %794 to { i64, i8* }*
  %796 = alloca { i64, i8* }*
  store { i64, i8* }* %795, { i64, i8* }** %796
  %797 = load { i64, i8* }*, { i64, i8* }** %796
  %798 = call i64 @nyx_array_get({ i64, i8* }* %797, i64 0)
  %799 = inttoptr i64 %798 to %nyx_string*
  %800 = alloca %nyx_string*
  store %nyx_string* %799, %nyx_string** %800
  %801 = load { i64, i8* }*, { i64, i8* }** %796
  %802 = call i64 @nyx_array_get({ i64, i8* }* %801, i64 1)
  %803 = inttoptr i64 %802 to { i64, i8* }*
  %804 = alloca { i64, i8* }*
  store { i64, i8* }* %803, { i64, i8* }** %804
  %805 = load %nyx_string*, %nyx_string** %734
  %806 = load %nyx_string*, %nyx_string** %779
  %807 = call %nyx_string* @nyx_string_concat(%nyx_string* %805, %nyx_string* %806)
  %808 = load %nyx_string*, %nyx_string** %800
  %809 = call %nyx_string* @nyx_string_concat(%nyx_string* %807, %nyx_string* %808)
  %810 = load %nyx_string*, %nyx_string** %782
  %811 = call %nyx_string* @nyx_string_concat(%nyx_string* %809, %nyx_string* %810)
  %812 = load { i64, i8* }*, { i64, i8* }** %804
  %813 = call %nyx_string* @fmt_expr({ i64, i8* }* %812)
  %814 = call %nyx_string* @nyx_string_concat(%nyx_string* %811, %nyx_string* %813)
  store %nyx_string* %814, %nyx_string** %734
  %815 = load i64, i64* %773
  %816 = add i64 %815, 1
  store i64 %816, i64* %773
  br label %while_cond213
while_end215:
  %817 = load %nyx_string*, %nyx_string** %734
  %818 = getelementptr [3 x i8], [3 x i8]* @.str127, i32 0, i32 0
  %819 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str127.c, i8* %818)
  %820 = call %nyx_string* @nyx_string_concat(%nyx_string* %817, %nyx_string* %819)
  ret %nyx_string* %820
else199:
  br label %merge200
merge200:
  %821 = load %nyx_string*, %nyx_string** %255
  %822 = getelementptr [6 x i8], [6 x i8]* @.str128, i32 0, i32 0
  %823 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str128.c, i8* %822)
  %824 = call i1 @nyx_string_equals(%nyx_string* %821, %nyx_string* %823)
  br i1 %824, label %then219, label %else220
then219:
  %825 = load { i64, i8* }*, { i64, i8* }** %258
  %826 = call i64 @nyx_array_get({ i64, i8* }* %825, i64 0)
  %827 = inttoptr i64 %826 to { i64, i8* }*
  %828 = alloca { i64, i8* }*
  store { i64, i8* }* %827, { i64, i8* }** %828
  %829 = load { i64, i8* }*, { i64, i8* }** %258
  %830 = call i64 @nyx_array_get({ i64, i8* }* %829, i64 1)
  %831 = inttoptr i64 %830 to { i64, i8* }*
  %832 = alloca { i64, i8* }*
  store { i64, i8* }* %831, { i64, i8* }** %832
  %833 = load { i64, i8* }*, { i64, i8* }** %258
  %834 = call i64 @nyx_array_get({ i64, i8* }* %833, i64 2)
  %835 = inttoptr i64 %834 to %nyx_string*
  %836 = alloca %nyx_string*
  store %nyx_string* %835, %nyx_string** %836
  %837 = load %nyx_string*, %nyx_string** %836
  %838 = getelementptr [5 x i8], [5 x i8]* @.str129, i32 0, i32 0
  %839 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str129.c, i8* %838)
  %840 = call i1 @nyx_string_equals(%nyx_string* %837, %nyx_string* %839)
  br i1 %840, label %then222, label %else223
then222:
  %841 = load { i64, i8* }*, { i64, i8* }** %828
  %842 = call %nyx_string* @fmt_expr({ i64, i8* }* %841)
  %843 = getelementptr [4 x i8], [4 x i8]* @.str130, i32 0, i32 0
  %844 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str130.c, i8* %843)
  %845 = call %nyx_string* @nyx_string_concat(%nyx_string* %842, %nyx_string* %844)
  %846 = load { i64, i8* }*, { i64, i8* }** %832
  %847 = call %nyx_string* @fmt_expr({ i64, i8* }* %846)
  %848 = call %nyx_string* @nyx_string_concat(%nyx_string* %845, %nyx_string* %847)
  ret %nyx_string* %848
else223:
  br label %merge224
merge224:
  %849 = load { i64, i8* }*, { i64, i8* }** %828
  %850 = call %nyx_string* @fmt_expr({ i64, i8* }* %849)
  %851 = getelementptr [3 x i8], [3 x i8]* @.str131, i32 0, i32 0
  %852 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str131.c, i8* %851)
  %853 = call %nyx_string* @nyx_string_concat(%nyx_string* %850, %nyx_string* %852)
  %854 = load { i64, i8* }*, { i64, i8* }** %832
  %855 = call %nyx_string* @fmt_expr({ i64, i8* }* %854)
  %856 = call %nyx_string* @nyx_string_concat(%nyx_string* %853, %nyx_string* %855)
  ret %nyx_string* %856
else220:
  br label %merge221
merge221:
  %857 = load %nyx_string*, %nyx_string** %255
  %858 = getelementptr [7 x i8], [7 x i8]* @.str132, i32 0, i32 0
  %859 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str132.c, i8* %858)
  %860 = call i1 @nyx_string_equals(%nyx_string* %857, %nyx_string* %859)
  br i1 %860, label %then225, label %else226
then225:
  %861 = load { i64, i8* }*, { i64, i8* }** %258
  %862 = call i64 @nyx_array_get({ i64, i8* }* %861, i64 0)
  %863 = inttoptr i64 %862 to { i64, i8* }*
  %864 = alloca { i64, i8* }*
  store { i64, i8* }* %863, { i64, i8* }** %864
  %865 = load { i64, i8* }*, { i64, i8* }** %864
  %866 = call %nyx_string* @fmt_expr({ i64, i8* }* %865)
  %867 = getelementptr [2 x i8], [2 x i8]* @.str133, i32 0, i32 0
  %868 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str133.c, i8* %867)
  %869 = call %nyx_string* @nyx_string_concat(%nyx_string* %866, %nyx_string* %868)
  ret %nyx_string* %869
else226:
  br label %merge227
merge227:
  %870 = load %nyx_string*, %nyx_string** %255
  %871 = getelementptr [7 x i8], [7 x i8]* @.str134, i32 0, i32 0
  %872 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str134.c, i8* %871)
  %873 = call i1 @nyx_string_equals(%nyx_string* %870, %nyx_string* %872)
  br i1 %873, label %then228, label %else229
then228:
  %874 = load { i64, i8* }*, { i64, i8* }** %258
  %875 = call i64 @nyx_array_get({ i64, i8* }* %874, i64 0)
  %876 = inttoptr i64 %875 to { i64, i8* }*
  %877 = alloca { i64, i8* }*
  store { i64, i8* }* %876, { i64, i8* }** %877
  %878 = load { i64, i8* }*, { i64, i8* }** %258
  %879 = call i64 @nyx_array_get({ i64, i8* }* %878, i64 1)
  %880 = inttoptr i64 %879 to { i64, i8* }*
  %881 = alloca { i64, i8* }*
  store { i64, i8* }* %880, { i64, i8* }** %881
  %882 = load { i64, i8* }*, { i64, i8* }** %881
  %883 = call %nyx_string* @node_type({ i64, i8* }* %882)
  %884 = getelementptr [7 x i8], [7 x i8]* @.str135, i32 0, i32 0
  %885 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str135.c, i8* %884)
  %886 = call i1 @nyx_string_equals(%nyx_string* %883, %nyx_string* %885)
  br i1 %886, label %then231, label %else232
then231:
  %887 = load { i64, i8* }*, { i64, i8* }** %881
  %888 = call { i64, i8* }* @node_data({ i64, i8* }* %887)
  %889 = alloca { i64, i8* }*
  store { i64, i8* }* %888, { i64, i8* }** %889
  %890 = load { i64, i8* }*, { i64, i8* }** %889
  %891 = call i64 @nyx_array_get({ i64, i8* }* %890, i64 0)
  %892 = inttoptr i64 %891 to %nyx_string*
  %893 = alloca %nyx_string*
  store %nyx_string* %892, %nyx_string** %893
  %894 = load %nyx_string*, %nyx_string** %893
  %895 = getelementptr [17 x i8], [17 x i8]* @.str136, i32 0, i32 0
  %896 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str136.c, i8* %895)
  %897 = call i1 @nyx_string_equals(%nyx_string* %894, %nyx_string* %896)
  br i1 %897, label %then234, label %else235
then234:
  %898 = getelementptr [8 x i8], [8 x i8]* @.str137, i32 0, i32 0
  %899 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str137.c, i8* %898)
  %900 = load { i64, i8* }*, { i64, i8* }** %877
  %901 = call %nyx_string* @fmt_expr({ i64, i8* }* %900)
  %902 = call %nyx_string* @nyx_string_concat(%nyx_string* %899, %nyx_string* %901)
  %903 = getelementptr [2 x i8], [2 x i8]* @.str138, i32 0, i32 0
  %904 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str138.c, i8* %903)
  %905 = call %nyx_string* @nyx_string_concat(%nyx_string* %902, %nyx_string* %904)
  ret %nyx_string* %905
else235:
  br label %merge236
merge236:
  br label %merge233
else232:
  br label %merge233
merge233:
  %906 = getelementptr [8 x i8], [8 x i8]* @.str139, i32 0, i32 0
  %907 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str139.c, i8* %906)
  %908 = load { i64, i8* }*, { i64, i8* }** %877
  %909 = call %nyx_string* @fmt_expr({ i64, i8* }* %908)
  %910 = call %nyx_string* @nyx_string_concat(%nyx_string* %907, %nyx_string* %909)
  %911 = getelementptr [3 x i8], [3 x i8]* @.str140, i32 0, i32 0
  %912 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str140.c, i8* %911)
  %913 = call %nyx_string* @nyx_string_concat(%nyx_string* %910, %nyx_string* %912)
  %914 = load { i64, i8* }*, { i64, i8* }** %881
  %915 = call %nyx_string* @fmt_expr({ i64, i8* }* %914)
  %916 = call %nyx_string* @nyx_string_concat(%nyx_string* %913, %nyx_string* %915)
  %917 = getelementptr [2 x i8], [2 x i8]* @.str141, i32 0, i32 0
  %918 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str141.c, i8* %917)
  %919 = call %nyx_string* @nyx_string_concat(%nyx_string* %916, %nyx_string* %918)
  ret %nyx_string* %919
else229:
  br label %merge230
merge230:
  %920 = load %nyx_string*, %nyx_string** %255
  %921 = getelementptr [6 x i8], [6 x i8]* @.str142, i32 0, i32 0
  %922 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str142.c, i8* %921)
  %923 = call i1 @nyx_string_equals(%nyx_string* %920, %nyx_string* %922)
  br i1 %923, label %then237, label %else238
then237:
  %924 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %925 = call %nyx_string* @fmt_match_expr({ i64, i8* }* %924)
  ret %nyx_string* %925
else238:
  br label %merge239
merge239:
  %926 = getelementptr [18 x i8], [18 x i8]* @.str143, i32 0, i32 0
  %927 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str143.c, i8* %926)
  %928 = load %nyx_string*, %nyx_string** %255
  %929 = call %nyx_string* @nyx_string_concat(%nyx_string* %927, %nyx_string* %928)
  %930 = getelementptr [4 x i8], [4 x i8]* @.str144, i32 0, i32 0
  %931 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str144.c, i8* %930)
  %932 = call %nyx_string* @nyx_string_concat(%nyx_string* %929, %nyx_string* %931)
  ret %nyx_string* %932
}

define internal %nyx_string* @fmt_match_expr(
{ i64, i8* }* %node.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %933 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %934 = call { i64, i8* }* @node_data({ i64, i8* }* %933)
  %935 = alloca { i64, i8* }*
  store { i64, i8* }* %934, { i64, i8* }** %935
  %936 = load { i64, i8* }*, { i64, i8* }** %935
  %937 = call i64 @nyx_array_get({ i64, i8* }* %936, i64 0)
  %938 = inttoptr i64 %937 to { i64, i8* }*
  %939 = alloca { i64, i8* }*
  store { i64, i8* }* %938, { i64, i8* }** %939
  %940 = load { i64, i8* }*, { i64, i8* }** %935
  %941 = call i64 @nyx_array_get({ i64, i8* }* %940, i64 1)
  %942 = inttoptr i64 %941 to { i64, i8* }*
  %943 = alloca { i64, i8* }*
  store { i64, i8* }* %942, { i64, i8* }** %943
  %944 = getelementptr [7 x i8], [7 x i8]* @.str145, i32 0, i32 0
  %945 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str145.c, i8* %944)
  %946 = load { i64, i8* }*, { i64, i8* }** %939
  %947 = call %nyx_string* @fmt_expr({ i64, i8* }* %946)
  %948 = call %nyx_string* @nyx_string_concat(%nyx_string* %945, %nyx_string* %947)
  %949 = getelementptr [4 x i8], [4 x i8]* @.str146, i32 0, i32 0
  %950 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str146.c, i8* %949)
  %951 = call %nyx_string* @nyx_string_concat(%nyx_string* %948, %nyx_string* %950)
  %952 = alloca %nyx_string*
  store %nyx_string* %951, %nyx_string** %952
  %953 = load i64, i64* @g_indent
  %954 = add i64 %953, 1
  store i64 %954, i64* @g_indent
  %955 = alloca i64
  store i64 0, i64* %955
  %956 = getelementptr [5 x i8], [5 x i8]* @.str147, i32 0, i32 0
  %957 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str147.c, i8* %956)
  %958 = alloca %nyx_string*
  store %nyx_string* %957, %nyx_string** %958
  %959 = getelementptr [6 x i8], [6 x i8]* @.str148, i32 0, i32 0
  %960 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str148.c, i8* %959)
  %961 = alloca %nyx_string*
  store %nyx_string* %960, %nyx_string** %961
  %962 = getelementptr [3 x i8], [3 x i8]* @.str149, i32 0, i32 0
  %963 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str149.c, i8* %962)
  %964 = alloca %nyx_string*
  store %nyx_string* %963, %nyx_string** %964
  %965 = getelementptr [2 x i8], [2 x i8]* @.str150, i32 0, i32 0
  %966 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str150.c, i8* %965)
  %967 = alloca %nyx_string*
  store %nyx_string* %966, %nyx_string** %967
  %968 = getelementptr [2 x i8], [2 x i8]* @.str151, i32 0, i32 0
  %969 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str151.c, i8* %968)
  %970 = alloca %nyx_string*
  store %nyx_string* %969, %nyx_string** %970
  %971 = getelementptr [2 x i8], [2 x i8]* @.str152, i32 0, i32 0
  %972 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str152.c, i8* %971)
  %973 = alloca %nyx_string*
  store %nyx_string* %972, %nyx_string** %973
  br label %while_cond240
while_cond240:
  %974 = load i64, i64* %955
  %975 = load { i64, i8* }*, { i64, i8* }** %943
  %976 = call i64 @nyx_array_length({ i64, i8* }* %975)
  %977 = icmp slt i64 %974, %976
  br i1 %977, label %while_body241, label %while_end242
while_body241:
  %978 = load { i64, i8* }*, { i64, i8* }** %943
  %979 = load i64, i64* %955
  %980 = call i64 @nyx_array_get({ i64, i8* }* %978, i64 %979)
  %981 = inttoptr i64 %980 to { i64, i8* }*
  %982 = alloca { i64, i8* }*
  store { i64, i8* }* %981, { i64, i8* }** %982
  %983 = load { i64, i8* }*, { i64, i8* }** %982
  %984 = call { i64, i8* }* @node_data({ i64, i8* }* %983)
  %985 = alloca { i64, i8* }*
  store { i64, i8* }* %984, { i64, i8* }** %985
  %986 = load { i64, i8* }*, { i64, i8* }** %985
  %987 = call i64 @nyx_array_get({ i64, i8* }* %986, i64 0)
  %988 = inttoptr i64 %987 to { i64, i8* }*
  %989 = alloca { i64, i8* }*
  store { i64, i8* }* %988, { i64, i8* }** %989
  %990 = load { i64, i8* }*, { i64, i8* }** %985
  %991 = call i64 @nyx_array_get({ i64, i8* }* %990, i64 1)
  %992 = inttoptr i64 %991 to { i64, i8* }*
  %993 = alloca { i64, i8* }*
  store { i64, i8* }* %992, { i64, i8* }** %993
  %994 = load %nyx_string*, %nyx_string** %952
  %995 = call %nyx_string* @indent_str()
  %996 = call %nyx_string* @nyx_string_concat(%nyx_string* %994, %nyx_string* %995)
  %997 = load { i64, i8* }*, { i64, i8* }** %989
  %998 = call %nyx_string* @fmt_pattern({ i64, i8* }* %997)
  %999 = call %nyx_string* @nyx_string_concat(%nyx_string* %996, %nyx_string* %998)
  %1000 = load %nyx_string*, %nyx_string** %958
  %1001 = call %nyx_string* @nyx_string_concat(%nyx_string* %999, %nyx_string* %1000)
  store %nyx_string* %1001, %nyx_string** %952
  %1002 = load { i64, i8* }*, { i64, i8* }** %993
  %1003 = call %nyx_string* @node_type({ i64, i8* }* %1002)
  %1004 = load %nyx_string*, %nyx_string** %961
  %1005 = call i1 @nyx_string_equals(%nyx_string* %1003, %nyx_string* %1004)
  br i1 %1005, label %then243, label %else244
then243:
  %1006 = load %nyx_string*, %nyx_string** %952
  %1007 = load %nyx_string*, %nyx_string** %964
  %1008 = call %nyx_string* @nyx_string_concat(%nyx_string* %1006, %nyx_string* %1007)
  store %nyx_string* %1008, %nyx_string** %952
  %1009 = load i64, i64* @g_indent
  %1010 = add i64 %1009, 1
  store i64 %1010, i64* @g_indent
  %1011 = load %nyx_string*, %nyx_string** %952
  %1012 = load { i64, i8* }*, { i64, i8* }** %993
  %1013 = call %nyx_string* @fmt_block_contents({ i64, i8* }* %1012)
  %1014 = call %nyx_string* @nyx_string_concat(%nyx_string* %1011, %nyx_string* %1013)
  store %nyx_string* %1014, %nyx_string** %952
  %1015 = load i64, i64* @g_indent
  %1016 = sub i64 %1015, 1
  store i64 %1016, i64* @g_indent
  %1017 = load %nyx_string*, %nyx_string** %952
  %1018 = call %nyx_string* @indent_str()
  %1019 = call %nyx_string* @nyx_string_concat(%nyx_string* %1017, %nyx_string* %1018)
  %1020 = load %nyx_string*, %nyx_string** %967
  %1021 = call %nyx_string* @nyx_string_concat(%nyx_string* %1019, %nyx_string* %1020)
  store %nyx_string* %1021, %nyx_string** %952
  br label %merge245
else244:
  %1022 = load %nyx_string*, %nyx_string** %952
  %1023 = load { i64, i8* }*, { i64, i8* }** %993
  %1024 = call %nyx_string* @fmt_expr({ i64, i8* }* %1023)
  %1025 = call %nyx_string* @nyx_string_concat(%nyx_string* %1022, %nyx_string* %1024)
  store %nyx_string* %1025, %nyx_string** %952
  br label %merge245
merge245:
  %1026 = load i64, i64* %955
  %1027 = load { i64, i8* }*, { i64, i8* }** %943
  %1028 = call i64 @nyx_array_length({ i64, i8* }* %1027)
  %1029 = sub i64 %1028, 1
  %1030 = icmp slt i64 %1026, %1029
  br i1 %1030, label %then246, label %else247
then246:
  %1031 = load %nyx_string*, %nyx_string** %952
  %1032 = load %nyx_string*, %nyx_string** %970
  %1033 = call %nyx_string* @nyx_string_concat(%nyx_string* %1031, %nyx_string* %1032)
  store %nyx_string* %1033, %nyx_string** %952
  br label %merge248
else247:
  br label %merge248
merge248:
  %1034 = load %nyx_string*, %nyx_string** %952
  %1035 = load %nyx_string*, %nyx_string** %973
  %1036 = call %nyx_string* @nyx_string_concat(%nyx_string* %1034, %nyx_string* %1035)
  store %nyx_string* %1036, %nyx_string** %952
  %1037 = load i64, i64* %955
  %1038 = add i64 %1037, 1
  store i64 %1038, i64* %955
  br label %while_cond240
while_end242:
  %1039 = load i64, i64* @g_indent
  %1040 = sub i64 %1039, 1
  store i64 %1040, i64* @g_indent
  %1041 = load %nyx_string*, %nyx_string** %952
  %1042 = call %nyx_string* @indent_str()
  %1043 = call %nyx_string* @nyx_string_concat(%nyx_string* %1041, %nyx_string* %1042)
  %1044 = getelementptr [2 x i8], [2 x i8]* @.str153, i32 0, i32 0
  %1045 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str153.c, i8* %1044)
  %1046 = call %nyx_string* @nyx_string_concat(%nyx_string* %1043, %nyx_string* %1045)
  store %nyx_string* %1046, %nyx_string** %952
  %1047 = load %nyx_string*, %nyx_string** %952
  ret %nyx_string* %1047
}

define internal %nyx_string* @fmt_pattern(
{ i64, i8* }* %node.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %1048 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1049 = call %nyx_string* @node_type({ i64, i8* }* %1048)
  %1050 = alloca %nyx_string*
  store %nyx_string* %1049, %nyx_string** %1050
  %1051 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1052 = call { i64, i8* }* @node_data({ i64, i8* }* %1051)
  %1053 = alloca { i64, i8* }*
  store { i64, i8* }* %1052, { i64, i8* }** %1053
  %1054 = load %nyx_string*, %nyx_string** %1050
  %1055 = getelementptr [14 x i8], [14 x i8]* @.str154, i32 0, i32 0
  %1056 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str154.c, i8* %1055)
  %1057 = call i1 @nyx_string_equals(%nyx_string* %1054, %nyx_string* %1056)
  br i1 %1057, label %then249, label %else250
then249:
  %1058 = load { i64, i8* }*, { i64, i8* }** %1053
  %1059 = call i64 @nyx_array_get({ i64, i8* }* %1058, i64 0)
  %1060 = inttoptr i64 %1059 to %nyx_string*
  %1061 = alloca %nyx_string*
  store %nyx_string* %1060, %nyx_string** %1061
  %1062 = load { i64, i8* }*, { i64, i8* }** %1053
  %1063 = call i64 @nyx_array_get({ i64, i8* }* %1062, i64 1)
  %1064 = inttoptr i64 %1063 to %nyx_string*
  %1065 = alloca %nyx_string*
  store %nyx_string* %1064, %nyx_string** %1065
  %1066 = load { i64, i8* }*, { i64, i8* }** %1053
  %1067 = call i64 @nyx_array_get({ i64, i8* }* %1066, i64 2)
  %1068 = inttoptr i64 %1067 to { i64, i8* }*
  %1069 = alloca { i64, i8* }*
  store { i64, i8* }* %1068, { i64, i8* }** %1069
  %1070 = load %nyx_string*, %nyx_string** %1061
  %1071 = getelementptr [2 x i8], [2 x i8]* @.str155, i32 0, i32 0
  %1072 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str155.c, i8* %1071)
  %1073 = call %nyx_string* @nyx_string_concat(%nyx_string* %1070, %nyx_string* %1072)
  %1074 = load %nyx_string*, %nyx_string** %1065
  %1075 = call %nyx_string* @nyx_string_concat(%nyx_string* %1073, %nyx_string* %1074)
  %1076 = alloca %nyx_string*
  store %nyx_string* %1075, %nyx_string** %1076
  %1077 = load { i64, i8* }*, { i64, i8* }** %1069
  %1078 = call i64 @nyx_array_length({ i64, i8* }* %1077)
  %1079 = icmp sgt i64 %1078, 0
  br i1 %1079, label %then252, label %else253
then252:
  %1080 = load %nyx_string*, %nyx_string** %1076
  %1081 = getelementptr [2 x i8], [2 x i8]* @.str156, i32 0, i32 0
  %1082 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str156.c, i8* %1081)
  %1083 = call %nyx_string* @nyx_string_concat(%nyx_string* %1080, %nyx_string* %1082)
  store %nyx_string* %1083, %nyx_string** %1076
  %1084 = alloca i64
  store i64 0, i64* %1084
  %1085 = getelementptr [3 x i8], [3 x i8]* @.str157, i32 0, i32 0
  %1086 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str157.c, i8* %1085)
  %1087 = alloca %nyx_string*
  store %nyx_string* %1086, %nyx_string** %1087
  br label %while_cond255
while_cond255:
  %1088 = load i64, i64* %1084
  %1089 = load { i64, i8* }*, { i64, i8* }** %1069
  %1090 = call i64 @nyx_array_length({ i64, i8* }* %1089)
  %1091 = icmp slt i64 %1088, %1090
  br i1 %1091, label %while_body256, label %while_end257
while_body256:
  %1092 = load i64, i64* %1084
  %1093 = icmp sgt i64 %1092, 0
  br i1 %1093, label %then258, label %else259
then258:
  %1094 = load %nyx_string*, %nyx_string** %1076
  %1095 = load %nyx_string*, %nyx_string** %1087
  %1096 = call %nyx_string* @nyx_string_concat(%nyx_string* %1094, %nyx_string* %1095)
  store %nyx_string* %1096, %nyx_string** %1076
  br label %merge260
else259:
  br label %merge260
merge260:
  %1097 = load { i64, i8* }*, { i64, i8* }** %1069
  %1098 = load i64, i64* %1084
  %1099 = call i64 @nyx_array_get({ i64, i8* }* %1097, i64 %1098)
  %1100 = inttoptr i64 %1099 to %nyx_string*
  %1101 = alloca %nyx_string*
  store %nyx_string* %1100, %nyx_string** %1101
  %1102 = load %nyx_string*, %nyx_string** %1076
  %1103 = load %nyx_string*, %nyx_string** %1101
  %1104 = call %nyx_string* @nyx_string_concat(%nyx_string* %1102, %nyx_string* %1103)
  store %nyx_string* %1104, %nyx_string** %1076
  %1105 = load i64, i64* %1084
  %1106 = add i64 %1105, 1
  store i64 %1106, i64* %1084
  br label %while_cond255
while_end257:
  %1107 = load %nyx_string*, %nyx_string** %1076
  %1108 = getelementptr [2 x i8], [2 x i8]* @.str158, i32 0, i32 0
  %1109 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str158.c, i8* %1108)
  %1110 = call %nyx_string* @nyx_string_concat(%nyx_string* %1107, %nyx_string* %1109)
  store %nyx_string* %1110, %nyx_string** %1076
  br label %merge254
else253:
  br label %merge254
merge254:
  %1111 = load %nyx_string*, %nyx_string** %1076
  ret %nyx_string* %1111
else250:
  br label %merge251
merge251:
  %1112 = load %nyx_string*, %nyx_string** %1050
  %1113 = getelementptr [9 x i8], [9 x i8]* @.str159, i32 0, i32 0
  %1114 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str159.c, i8* %1113)
  %1115 = call i1 @nyx_string_equals(%nyx_string* %1112, %nyx_string* %1114)
  br i1 %1115, label %then261, label %else262
then261:
  %1116 = getelementptr [2 x i8], [2 x i8]* @.str160, i32 0, i32 0
  %1117 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str160.c, i8* %1116)
  ret %nyx_string* %1117
else262:
  br label %merge263
merge263:
  %1118 = alloca i1
  store i1 true, i1* %1118
  %1119 = alloca i1
  store i1 true, i1* %1119
  %1120 = alloca i1
  store i1 true, i1* %1120
  %1121 = load %nyx_string*, %nyx_string** %1050
  %1122 = getelementptr [7 x i8], [7 x i8]* @.str161, i32 0, i32 0
  %1123 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str161.c, i8* %1122)
  %1124 = call i1 @nyx_string_equals(%nyx_string* %1121, %nyx_string* %1123)
  br i1 %1124, label %sc_or_end265, label %sc_or_rhs264
sc_or_rhs264:
  %1125 = load %nyx_string*, %nyx_string** %1050
  %1126 = getelementptr [7 x i8], [7 x i8]* @.str162, i32 0, i32 0
  %1127 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str162.c, i8* %1126)
  %1128 = call i1 @nyx_string_equals(%nyx_string* %1125, %nyx_string* %1127)
  store i1 %1128, i1* %1120
  br label %sc_or_end265
sc_or_end265:
  %1129 = load i1, i1* %1120
  br i1 %1129, label %sc_or_end267, label %sc_or_rhs266
sc_or_rhs266:
  %1130 = load %nyx_string*, %nyx_string** %1050
  %1131 = getelementptr [5 x i8], [5 x i8]* @.str163, i32 0, i32 0
  %1132 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str163.c, i8* %1131)
  %1133 = call i1 @nyx_string_equals(%nyx_string* %1130, %nyx_string* %1132)
  store i1 %1133, i1* %1119
  br label %sc_or_end267
sc_or_end267:
  %1134 = load i1, i1* %1119
  br i1 %1134, label %sc_or_end269, label %sc_or_rhs268
sc_or_rhs268:
  %1135 = load %nyx_string*, %nyx_string** %1050
  %1136 = getelementptr [11 x i8], [11 x i8]* @.str164, i32 0, i32 0
  %1137 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str164.c, i8* %1136)
  %1138 = call i1 @nyx_string_equals(%nyx_string* %1135, %nyx_string* %1137)
  store i1 %1138, i1* %1118
  br label %sc_or_end269
sc_or_end269:
  %1139 = load i1, i1* %1118
  br i1 %1139, label %then270, label %else271
then270:
  %1140 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1141 = call %nyx_string* @fmt_expr({ i64, i8* }* %1140)
  ret %nyx_string* %1141
else271:
  br label %merge272
merge272:
  %1142 = getelementptr [22 x i8], [22 x i8]* @.str165, i32 0, i32 0
  %1143 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str165.c, i8* %1142)
  ret %nyx_string* %1143
}

define internal i64 @fmt_stmt(
{ i64, i8* }* %node.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %1144 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1145 = call %nyx_string* @node_type({ i64, i8* }* %1144)
  %1146 = alloca %nyx_string*
  store %nyx_string* %1145, %nyx_string** %1146
  %1147 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1148 = call { i64, i8* }* @node_data({ i64, i8* }* %1147)
  %1149 = alloca { i64, i8* }*
  store { i64, i8* }* %1148, { i64, i8* }** %1149
  %1150 = alloca i1
  store i1 true, i1* %1150
  %1151 = load %nyx_string*, %nyx_string** %1146
  %1152 = getelementptr [4 x i8], [4 x i8]* @.str166, i32 0, i32 0
  %1153 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str166.c, i8* %1152)
  %1154 = call i1 @nyx_string_equals(%nyx_string* %1151, %nyx_string* %1153)
  br i1 %1154, label %sc_or_end274, label %sc_or_rhs273
sc_or_rhs273:
  %1155 = load %nyx_string*, %nyx_string** %1146
  %1156 = getelementptr [6 x i8], [6 x i8]* @.str167, i32 0, i32 0
  %1157 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str167.c, i8* %1156)
  %1158 = call i1 @nyx_string_equals(%nyx_string* %1155, %nyx_string* %1157)
  store i1 %1158, i1* %1150
  br label %sc_or_end274
sc_or_end274:
  %1159 = load i1, i1* %1150
  br i1 %1159, label %then275, label %else276
then275:
  %1160 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1161 = load %nyx_string*, %nyx_string** %1146
  %1162 = call i64 @fmt_let({ i64, i8* }* %1160, %nyx_string* %1161)
  ret i64 0
else276:
  br label %merge277
merge277:
  %1163 = load %nyx_string*, %nyx_string** %1146
  %1164 = getelementptr [22 x i8], [22 x i8]* @.str168, i32 0, i32 0
  %1165 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str168.c, i8* %1164)
  %1166 = call i1 @nyx_string_equals(%nyx_string* %1163, %nyx_string* %1165)
  br i1 %1166, label %then278, label %else279
then278:
  %1167 = load { i64, i8* }*, { i64, i8* }** %1149
  %1168 = call i64 @nyx_array_get({ i64, i8* }* %1167, i64 0)
  %1169 = inttoptr i64 %1168 to { i64, i8* }*
  %1170 = alloca { i64, i8* }*
  store { i64, i8* }* %1169, { i64, i8* }** %1170
  %1171 = load { i64, i8* }*, { i64, i8* }** %1149
  %1172 = call i64 @nyx_array_get({ i64, i8* }* %1171, i64 2)
  %1173 = inttoptr i64 %1172 to { i64, i8* }*
  %1174 = alloca { i64, i8* }*
  store { i64, i8* }* %1173, { i64, i8* }** %1174
  %1175 = getelementptr [2 x i8], [2 x i8]* @.str169, i32 0, i32 0
  %1176 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str169.c, i8* %1175)
  %1177 = alloca %nyx_string*
  store %nyx_string* %1176, %nyx_string** %1177
  %1178 = alloca i64
  store i64 0, i64* %1178
  %1179 = getelementptr [3 x i8], [3 x i8]* @.str170, i32 0, i32 0
  %1180 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str170.c, i8* %1179)
  %1181 = alloca %nyx_string*
  store %nyx_string* %1180, %nyx_string** %1181
  br label %while_cond281
while_cond281:
  %1182 = load i64, i64* %1178
  %1183 = load { i64, i8* }*, { i64, i8* }** %1170
  %1184 = call i64 @nyx_array_length({ i64, i8* }* %1183)
  %1185 = icmp slt i64 %1182, %1184
  br i1 %1185, label %while_body282, label %while_end283
while_body282:
  %1186 = load i64, i64* %1178
  %1187 = icmp sgt i64 %1186, 0
  br i1 %1187, label %then284, label %else285
then284:
  %1188 = load %nyx_string*, %nyx_string** %1177
  %1189 = load %nyx_string*, %nyx_string** %1181
  %1190 = call %nyx_string* @nyx_string_concat(%nyx_string* %1188, %nyx_string* %1189)
  store %nyx_string* %1190, %nyx_string** %1177
  br label %merge286
else285:
  br label %merge286
merge286:
  %1191 = load { i64, i8* }*, { i64, i8* }** %1170
  %1192 = load i64, i64* %1178
  %1193 = call i64 @nyx_array_get({ i64, i8* }* %1191, i64 %1192)
  %1194 = inttoptr i64 %1193 to %nyx_string*
  %1195 = alloca %nyx_string*
  store %nyx_string* %1194, %nyx_string** %1195
  %1196 = load %nyx_string*, %nyx_string** %1177
  %1197 = load %nyx_string*, %nyx_string** %1195
  %1198 = call %nyx_string* @nyx_string_concat(%nyx_string* %1196, %nyx_string* %1197)
  store %nyx_string* %1198, %nyx_string** %1177
  %1199 = load i64, i64* %1178
  %1200 = add i64 %1199, 1
  store i64 %1200, i64* %1178
  br label %while_cond281
while_end283:
  %1201 = load %nyx_string*, %nyx_string** %1177
  %1202 = getelementptr [2 x i8], [2 x i8]* @.str171, i32 0, i32 0
  %1203 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str171.c, i8* %1202)
  %1204 = call %nyx_string* @nyx_string_concat(%nyx_string* %1201, %nyx_string* %1203)
  store %nyx_string* %1204, %nyx_string** %1177
  %1205 = getelementptr [5 x i8], [5 x i8]* @.str172, i32 0, i32 0
  %1206 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str172.c, i8* %1205)
  %1207 = load %nyx_string*, %nyx_string** %1177
  %1208 = call %nyx_string* @nyx_string_concat(%nyx_string* %1206, %nyx_string* %1207)
  %1209 = getelementptr [4 x i8], [4 x i8]* @.str173, i32 0, i32 0
  %1210 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str173.c, i8* %1209)
  %1211 = call %nyx_string* @nyx_string_concat(%nyx_string* %1208, %nyx_string* %1210)
  %1212 = load { i64, i8* }*, { i64, i8* }** %1174
  %1213 = call %nyx_string* @fmt_expr({ i64, i8* }* %1212)
  %1214 = call %nyx_string* @nyx_string_concat(%nyx_string* %1211, %nyx_string* %1213)
  %1215 = call i64 @out_line(%nyx_string* %1214)
  ret i64 0
else279:
  br label %merge280
merge280:
  %1216 = load %nyx_string*, %nyx_string** %1146
  %1217 = getelementptr [7 x i8], [7 x i8]* @.str174, i32 0, i32 0
  %1218 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str174.c, i8* %1217)
  %1219 = call i1 @nyx_string_equals(%nyx_string* %1216, %nyx_string* %1218)
  br i1 %1219, label %then287, label %else288
then287:
  %1220 = load { i64, i8* }*, { i64, i8* }** %1149
  %1221 = call i64 @nyx_array_get({ i64, i8* }* %1220, i64 0)
  %1222 = inttoptr i64 %1221 to { i64, i8* }*
  %1223 = alloca { i64, i8* }*
  store { i64, i8* }* %1222, { i64, i8* }** %1223
  %1224 = load { i64, i8* }*, { i64, i8* }** %1223
  %1225 = call i64 @nyx_array_get({ i64, i8* }* %1224, i64 0)
  %1226 = inttoptr i64 %1225 to %nyx_string*
  %1227 = alloca %nyx_string*
  store %nyx_string* %1226, %nyx_string** %1227
  %1228 = load { i64, i8* }*, { i64, i8* }** %1149
  %1229 = call i64 @nyx_array_get({ i64, i8* }* %1228, i64 1)
  %1230 = inttoptr i64 %1229 to { i64, i8* }*
  %1231 = alloca { i64, i8* }*
  store { i64, i8* }* %1230, { i64, i8* }** %1231
  %1232 = load %nyx_string*, %nyx_string** %1227
  %1233 = getelementptr [4 x i8], [4 x i8]* @.str175, i32 0, i32 0
  %1234 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str175.c, i8* %1233)
  %1235 = call %nyx_string* @nyx_string_concat(%nyx_string* %1232, %nyx_string* %1234)
  %1236 = load { i64, i8* }*, { i64, i8* }** %1231
  %1237 = call %nyx_string* @fmt_expr({ i64, i8* }* %1236)
  %1238 = call %nyx_string* @nyx_string_concat(%nyx_string* %1235, %nyx_string* %1237)
  %1239 = call i64 @out_line(%nyx_string* %1238)
  ret i64 0
else288:
  br label %merge289
merge289:
  %1240 = load %nyx_string*, %nyx_string** %1146
  %1241 = getelementptr [13 x i8], [13 x i8]* @.str176, i32 0, i32 0
  %1242 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str176.c, i8* %1241)
  %1243 = call i1 @nyx_string_equals(%nyx_string* %1240, %nyx_string* %1242)
  br i1 %1243, label %then290, label %else291
then290:
  %1244 = load { i64, i8* }*, { i64, i8* }** %1149
  %1245 = call i64 @nyx_array_get({ i64, i8* }* %1244, i64 0)
  %1246 = inttoptr i64 %1245 to { i64, i8* }*
  %1247 = alloca { i64, i8* }*
  store { i64, i8* }* %1246, { i64, i8* }** %1247
  %1248 = load { i64, i8* }*, { i64, i8* }** %1149
  %1249 = call i64 @nyx_array_get({ i64, i8* }* %1248, i64 1)
  %1250 = inttoptr i64 %1249 to %nyx_string*
  %1251 = alloca %nyx_string*
  store %nyx_string* %1250, %nyx_string** %1251
  %1252 = load { i64, i8* }*, { i64, i8* }** %1149
  %1253 = call i64 @nyx_array_get({ i64, i8* }* %1252, i64 2)
  %1254 = inttoptr i64 %1253 to { i64, i8* }*
  %1255 = alloca { i64, i8* }*
  store { i64, i8* }* %1254, { i64, i8* }** %1255
  %1256 = load { i64, i8* }*, { i64, i8* }** %1247
  %1257 = call %nyx_string* @fmt_expr({ i64, i8* }* %1256)
  %1258 = getelementptr [2 x i8], [2 x i8]* @.str177, i32 0, i32 0
  %1259 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str177.c, i8* %1258)
  %1260 = call %nyx_string* @nyx_string_concat(%nyx_string* %1257, %nyx_string* %1259)
  %1261 = load %nyx_string*, %nyx_string** %1251
  %1262 = call %nyx_string* @nyx_string_concat(%nyx_string* %1260, %nyx_string* %1261)
  %1263 = getelementptr [4 x i8], [4 x i8]* @.str178, i32 0, i32 0
  %1264 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str178.c, i8* %1263)
  %1265 = call %nyx_string* @nyx_string_concat(%nyx_string* %1262, %nyx_string* %1264)
  %1266 = load { i64, i8* }*, { i64, i8* }** %1255
  %1267 = call %nyx_string* @fmt_expr({ i64, i8* }* %1266)
  %1268 = call %nyx_string* @nyx_string_concat(%nyx_string* %1265, %nyx_string* %1267)
  %1269 = call i64 @out_line(%nyx_string* %1268)
  ret i64 0
else291:
  br label %merge292
merge292:
  %1270 = load %nyx_string*, %nyx_string** %1146
  %1271 = getelementptr [13 x i8], [13 x i8]* @.str179, i32 0, i32 0
  %1272 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str179.c, i8* %1271)
  %1273 = call i1 @nyx_string_equals(%nyx_string* %1270, %nyx_string* %1272)
  br i1 %1273, label %then293, label %else294
then293:
  %1274 = load { i64, i8* }*, { i64, i8* }** %1149
  %1275 = call i64 @nyx_array_get({ i64, i8* }* %1274, i64 0)
  %1276 = inttoptr i64 %1275 to { i64, i8* }*
  %1277 = alloca { i64, i8* }*
  store { i64, i8* }* %1276, { i64, i8* }** %1277
  %1278 = load { i64, i8* }*, { i64, i8* }** %1149
  %1279 = call i64 @nyx_array_get({ i64, i8* }* %1278, i64 1)
  %1280 = inttoptr i64 %1279 to { i64, i8* }*
  %1281 = alloca { i64, i8* }*
  store { i64, i8* }* %1280, { i64, i8* }** %1281
  %1282 = load { i64, i8* }*, { i64, i8* }** %1149
  %1283 = call i64 @nyx_array_get({ i64, i8* }* %1282, i64 2)
  %1284 = inttoptr i64 %1283 to { i64, i8* }*
  %1285 = alloca { i64, i8* }*
  store { i64, i8* }* %1284, { i64, i8* }** %1285
  %1286 = load { i64, i8* }*, { i64, i8* }** %1277
  %1287 = call %nyx_string* @fmt_expr({ i64, i8* }* %1286)
  %1288 = getelementptr [2 x i8], [2 x i8]* @.str180, i32 0, i32 0
  %1289 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str180.c, i8* %1288)
  %1290 = call %nyx_string* @nyx_string_concat(%nyx_string* %1287, %nyx_string* %1289)
  %1291 = load { i64, i8* }*, { i64, i8* }** %1281
  %1292 = call %nyx_string* @fmt_expr({ i64, i8* }* %1291)
  %1293 = call %nyx_string* @nyx_string_concat(%nyx_string* %1290, %nyx_string* %1292)
  %1294 = getelementptr [5 x i8], [5 x i8]* @.str181, i32 0, i32 0
  %1295 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str181.c, i8* %1294)
  %1296 = call %nyx_string* @nyx_string_concat(%nyx_string* %1293, %nyx_string* %1295)
  %1297 = load { i64, i8* }*, { i64, i8* }** %1285
  %1298 = call %nyx_string* @fmt_expr({ i64, i8* }* %1297)
  %1299 = call %nyx_string* @nyx_string_concat(%nyx_string* %1296, %nyx_string* %1298)
  %1300 = call i64 @out_line(%nyx_string* %1299)
  ret i64 0
else294:
  br label %merge295
merge295:
  %1301 = load %nyx_string*, %nyx_string** %1146
  %1302 = getelementptr [3 x i8], [3 x i8]* @.str182, i32 0, i32 0
  %1303 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str182.c, i8* %1302)
  %1304 = call i1 @nyx_string_equals(%nyx_string* %1301, %nyx_string* %1303)
  br i1 %1304, label %then296, label %else297
then296:
  %1305 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1306 = call i64 @fmt_if({ i64, i8* }* %1305)
  ret i64 0
else297:
  br label %merge298
merge298:
  %1307 = load %nyx_string*, %nyx_string** %1146
  %1308 = getelementptr [6 x i8], [6 x i8]* @.str183, i32 0, i32 0
  %1309 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str183.c, i8* %1308)
  %1310 = call i1 @nyx_string_equals(%nyx_string* %1307, %nyx_string* %1309)
  br i1 %1310, label %then299, label %else300
then299:
  %1311 = load { i64, i8* }*, { i64, i8* }** %1149
  %1312 = call i64 @nyx_array_get({ i64, i8* }* %1311, i64 0)
  %1313 = inttoptr i64 %1312 to { i64, i8* }*
  %1314 = alloca { i64, i8* }*
  store { i64, i8* }* %1313, { i64, i8* }** %1314
  %1315 = load { i64, i8* }*, { i64, i8* }** %1149
  %1316 = call i64 @nyx_array_get({ i64, i8* }* %1315, i64 1)
  %1317 = inttoptr i64 %1316 to { i64, i8* }*
  %1318 = alloca { i64, i8* }*
  store { i64, i8* }* %1317, { i64, i8* }** %1318
  %1319 = getelementptr [7 x i8], [7 x i8]* @.str184, i32 0, i32 0
  %1320 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str184.c, i8* %1319)
  %1321 = load { i64, i8* }*, { i64, i8* }** %1314
  %1322 = call %nyx_string* @fmt_expr({ i64, i8* }* %1321)
  %1323 = call %nyx_string* @nyx_string_concat(%nyx_string* %1320, %nyx_string* %1322)
  %1324 = getelementptr [3 x i8], [3 x i8]* @.str185, i32 0, i32 0
  %1325 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str185.c, i8* %1324)
  %1326 = call %nyx_string* @nyx_string_concat(%nyx_string* %1323, %nyx_string* %1325)
  %1327 = call i64 @out_line(%nyx_string* %1326)
  %1328 = load i64, i64* @g_indent
  %1329 = add i64 %1328, 1
  store i64 %1329, i64* @g_indent
  %1330 = load { i64, i8* }*, { i64, i8* }** %1318
  %1331 = call i64 @fmt_block_stmts({ i64, i8* }* %1330)
  %1332 = load i64, i64* @g_indent
  %1333 = sub i64 %1332, 1
  store i64 %1333, i64* @g_indent
  %1334 = getelementptr [2 x i8], [2 x i8]* @.str186, i32 0, i32 0
  %1335 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str186.c, i8* %1334)
  %1336 = call i64 @out_line(%nyx_string* %1335)
  ret i64 0
else300:
  br label %merge301
merge301:
  %1337 = load %nyx_string*, %nyx_string** %1146
  %1338 = getelementptr [4 x i8], [4 x i8]* @.str187, i32 0, i32 0
  %1339 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str187.c, i8* %1338)
  %1340 = call i1 @nyx_string_equals(%nyx_string* %1337, %nyx_string* %1339)
  br i1 %1340, label %then302, label %else303
then302:
  %1341 = load { i64, i8* }*, { i64, i8* }** %1149
  %1342 = call i64 @nyx_array_get({ i64, i8* }* %1341, i64 0)
  %1343 = inttoptr i64 %1342 to %nyx_string*
  %1344 = alloca %nyx_string*
  store %nyx_string* %1343, %nyx_string** %1344
  %1345 = load { i64, i8* }*, { i64, i8* }** %1149
  %1346 = call i64 @nyx_array_get({ i64, i8* }* %1345, i64 1)
  %1347 = inttoptr i64 %1346 to { i64, i8* }*
  %1348 = alloca { i64, i8* }*
  store { i64, i8* }* %1347, { i64, i8* }** %1348
  %1349 = load { i64, i8* }*, { i64, i8* }** %1149
  %1350 = call i64 @nyx_array_get({ i64, i8* }* %1349, i64 2)
  %1351 = inttoptr i64 %1350 to { i64, i8* }*
  %1352 = alloca { i64, i8* }*
  store { i64, i8* }* %1351, { i64, i8* }** %1352
  %1353 = getelementptr [5 x i8], [5 x i8]* @.str188, i32 0, i32 0
  %1354 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str188.c, i8* %1353)
  %1355 = load %nyx_string*, %nyx_string** %1344
  %1356 = call %nyx_string* @nyx_string_concat(%nyx_string* %1354, %nyx_string* %1355)
  %1357 = getelementptr [5 x i8], [5 x i8]* @.str189, i32 0, i32 0
  %1358 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str189.c, i8* %1357)
  %1359 = call %nyx_string* @nyx_string_concat(%nyx_string* %1356, %nyx_string* %1358)
  %1360 = load { i64, i8* }*, { i64, i8* }** %1348
  %1361 = call %nyx_string* @fmt_expr({ i64, i8* }* %1360)
  %1362 = call %nyx_string* @nyx_string_concat(%nyx_string* %1359, %nyx_string* %1361)
  %1363 = getelementptr [3 x i8], [3 x i8]* @.str190, i32 0, i32 0
  %1364 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str190.c, i8* %1363)
  %1365 = call %nyx_string* @nyx_string_concat(%nyx_string* %1362, %nyx_string* %1364)
  %1366 = call i64 @out_line(%nyx_string* %1365)
  %1367 = load i64, i64* @g_indent
  %1368 = add i64 %1367, 1
  store i64 %1368, i64* @g_indent
  %1369 = load { i64, i8* }*, { i64, i8* }** %1352
  %1370 = call i64 @fmt_block_stmts({ i64, i8* }* %1369)
  %1371 = load i64, i64* @g_indent
  %1372 = sub i64 %1371, 1
  store i64 %1372, i64* @g_indent
  %1373 = getelementptr [2 x i8], [2 x i8]* @.str191, i32 0, i32 0
  %1374 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str191.c, i8* %1373)
  %1375 = call i64 @out_line(%nyx_string* %1374)
  ret i64 0
else303:
  br label %merge304
merge304:
  %1376 = load %nyx_string*, %nyx_string** %1146
  %1377 = getelementptr [7 x i8], [7 x i8]* @.str192, i32 0, i32 0
  %1378 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str192.c, i8* %1377)
  %1379 = call i1 @nyx_string_equals(%nyx_string* %1376, %nyx_string* %1378)
  br i1 %1379, label %then305, label %else306
then305:
  %1380 = load { i64, i8* }*, { i64, i8* }** %1149
  %1381 = call i64 @nyx_array_get({ i64, i8* }* %1380, i64 0)
  %1382 = inttoptr i64 %1381 to { i64, i8* }*
  %1383 = alloca { i64, i8* }*
  store { i64, i8* }* %1382, { i64, i8* }** %1383
  %1384 = getelementptr [8 x i8], [8 x i8]* @.str193, i32 0, i32 0
  %1385 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str193.c, i8* %1384)
  %1386 = load { i64, i8* }*, { i64, i8* }** %1383
  %1387 = call %nyx_string* @fmt_expr({ i64, i8* }* %1386)
  %1388 = call %nyx_string* @nyx_string_concat(%nyx_string* %1385, %nyx_string* %1387)
  %1389 = call i64 @out_line(%nyx_string* %1388)
  ret i64 0
else306:
  br label %merge307
merge307:
  %1390 = load %nyx_string*, %nyx_string** %1146
  %1391 = getelementptr [6 x i8], [6 x i8]* @.str194, i32 0, i32 0
  %1392 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str194.c, i8* %1391)
  %1393 = call i1 @nyx_string_equals(%nyx_string* %1390, %nyx_string* %1392)
  br i1 %1393, label %then308, label %else309
then308:
  %1394 = getelementptr [6 x i8], [6 x i8]* @.str195, i32 0, i32 0
  %1395 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str195.c, i8* %1394)
  %1396 = call i64 @out_line(%nyx_string* %1395)
  ret i64 0
else309:
  br label %merge310
merge310:
  %1397 = load %nyx_string*, %nyx_string** %1146
  %1398 = getelementptr [9 x i8], [9 x i8]* @.str196, i32 0, i32 0
  %1399 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str196.c, i8* %1398)
  %1400 = call i1 @nyx_string_equals(%nyx_string* %1397, %nyx_string* %1399)
  br i1 %1400, label %then311, label %else312
then311:
  %1401 = getelementptr [9 x i8], [9 x i8]* @.str197, i32 0, i32 0
  %1402 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str197.c, i8* %1401)
  %1403 = call i64 @out_line(%nyx_string* %1402)
  ret i64 0
else312:
  br label %merge313
merge313:
  %1404 = load %nyx_string*, %nyx_string** %1146
  %1405 = getelementptr [9 x i8], [9 x i8]* @.str198, i32 0, i32 0
  %1406 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str198.c, i8* %1405)
  %1407 = call i1 @nyx_string_equals(%nyx_string* %1404, %nyx_string* %1406)
  br i1 %1407, label %then314, label %else315
then314:
  %1408 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1409 = getelementptr [1 x i8], [1 x i8]* @.str199, i32 0, i32 0
  %1410 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str199.c, i8* %1409)
  %1411 = call i64 @fmt_function({ i64, i8* }* %1408, %nyx_string* %1410)
  ret i64 0
else315:
  br label %merge316
merge316:
  %1412 = load %nyx_string*, %nyx_string** %1146
  %1413 = getelementptr [7 x i8], [7 x i8]* @.str200, i32 0, i32 0
  %1414 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str200.c, i8* %1413)
  %1415 = call i1 @nyx_string_equals(%nyx_string* %1412, %nyx_string* %1414)
  br i1 %1415, label %then317, label %else318
then317:
  %1416 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1417 = call i64 @fmt_struct({ i64, i8* }* %1416)
  ret i64 0
else318:
  br label %merge319
merge319:
  %1418 = load %nyx_string*, %nyx_string** %1146
  %1419 = getelementptr [9 x i8], [9 x i8]* @.str201, i32 0, i32 0
  %1420 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str201.c, i8* %1419)
  %1421 = call i1 @nyx_string_equals(%nyx_string* %1418, %nyx_string* %1420)
  br i1 %1421, label %then320, label %else321
then320:
  %1422 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1423 = call i64 @fmt_enum({ i64, i8* }* %1422)
  ret i64 0
else321:
  br label %merge322
merge322:
  %1424 = load %nyx_string*, %nyx_string** %1146
  %1425 = getelementptr [10 x i8], [10 x i8]* @.str202, i32 0, i32 0
  %1426 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str202.c, i8* %1425)
  %1427 = call i1 @nyx_string_equals(%nyx_string* %1424, %nyx_string* %1426)
  br i1 %1427, label %then323, label %else324
then323:
  %1428 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1429 = call i64 @fmt_trait({ i64, i8* }* %1428)
  ret i64 0
else324:
  br label %merge325
merge325:
  %1430 = load %nyx_string*, %nyx_string** %1146
  %1431 = getelementptr [5 x i8], [5 x i8]* @.str203, i32 0, i32 0
  %1432 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str203.c, i8* %1431)
  %1433 = call i1 @nyx_string_equals(%nyx_string* %1430, %nyx_string* %1432)
  br i1 %1433, label %then326, label %else327
then326:
  %1434 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1435 = call i64 @fmt_impl({ i64, i8* }* %1434)
  ret i64 0
else327:
  br label %merge328
merge328:
  %1436 = load %nyx_string*, %nyx_string** %1146
  %1437 = getelementptr [11 x i8], [11 x i8]* @.str204, i32 0, i32 0
  %1438 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str204.c, i8* %1437)
  %1439 = call i1 @nyx_string_equals(%nyx_string* %1436, %nyx_string* %1438)
  br i1 %1439, label %then329, label %else330
then329:
  %1440 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1441 = call i64 @fmt_impl_trait({ i64, i8* }* %1440)
  ret i64 0
else330:
  br label %merge331
merge331:
  %1442 = load %nyx_string*, %nyx_string** %1146
  %1443 = getelementptr [7 x i8], [7 x i8]* @.str205, i32 0, i32 0
  %1444 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str205.c, i8* %1443)
  %1445 = call i1 @nyx_string_equals(%nyx_string* %1442, %nyx_string* %1444)
  br i1 %1445, label %then332, label %else333
then332:
  %1446 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1447 = call i64 @fmt_import({ i64, i8* }* %1446)
  ret i64 0
else333:
  br label %merge334
merge334:
  %1448 = load %nyx_string*, %nyx_string** %1146
  %1449 = getelementptr [7 x i8], [7 x i8]* @.str206, i32 0, i32 0
  %1450 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str206.c, i8* %1449)
  %1451 = call i1 @nyx_string_equals(%nyx_string* %1448, %nyx_string* %1450)
  br i1 %1451, label %then335, label %else336
then335:
  %1452 = load { i64, i8* }*, { i64, i8* }** %1149
  %1453 = call i64 @nyx_array_get({ i64, i8* }* %1452, i64 0)
  %1454 = inttoptr i64 %1453 to { i64, i8* }*
  %1455 = alloca { i64, i8* }*
  store { i64, i8* }* %1454, { i64, i8* }** %1455
  %1456 = load { i64, i8* }*, { i64, i8* }** %1455
  %1457 = call %nyx_string* @node_type({ i64, i8* }* %1456)
  %1458 = alloca %nyx_string*
  store %nyx_string* %1457, %nyx_string** %1458
  %1459 = load %nyx_string*, %nyx_string** %1458
  %1460 = getelementptr [9 x i8], [9 x i8]* @.str207, i32 0, i32 0
  %1461 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str207.c, i8* %1460)
  %1462 = call i1 @nyx_string_equals(%nyx_string* %1459, %nyx_string* %1461)
  br i1 %1462, label %then338, label %else339
then338:
  %1463 = load { i64, i8* }*, { i64, i8* }** %1455
  %1464 = getelementptr [8 x i8], [8 x i8]* @.str208, i32 0, i32 0
  %1465 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str208.c, i8* %1464)
  %1466 = call i64 @fmt_function({ i64, i8* }* %1463, %nyx_string* %1465)
  ret i64 0
else339:
  br label %merge340
merge340:
  %1467 = load %nyx_string*, %nyx_string** %1458
  %1468 = getelementptr [7 x i8], [7 x i8]* @.str209, i32 0, i32 0
  %1469 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str209.c, i8* %1468)
  %1470 = call i1 @nyx_string_equals(%nyx_string* %1467, %nyx_string* %1469)
  br i1 %1470, label %then341, label %else342
then341:
  %1471 = call %nyx_string* @indent_str()
  %1472 = getelementptr [8 x i8], [8 x i8]* @.str210, i32 0, i32 0
  %1473 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str210.c, i8* %1472)
  %1474 = call %nyx_string* @nyx_string_concat(%nyx_string* %1471, %nyx_string* %1473)
  %1475 = call i64 @out(%nyx_string* %1474)
  %1476 = load { i64, i8* }*, { i64, i8* }** %1455
  %1477 = call i64 @fmt_struct_inline({ i64, i8* }* %1476)
  ret i64 0
else342:
  br label %merge343
merge343:
  %1478 = load %nyx_string*, %nyx_string** %1458
  %1479 = getelementptr [9 x i8], [9 x i8]* @.str211, i32 0, i32 0
  %1480 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str211.c, i8* %1479)
  %1481 = call i1 @nyx_string_equals(%nyx_string* %1478, %nyx_string* %1480)
  br i1 %1481, label %then344, label %else345
then344:
  %1482 = call %nyx_string* @indent_str()
  %1483 = getelementptr [8 x i8], [8 x i8]* @.str212, i32 0, i32 0
  %1484 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str212.c, i8* %1483)
  %1485 = call %nyx_string* @nyx_string_concat(%nyx_string* %1482, %nyx_string* %1484)
  %1486 = call i64 @out(%nyx_string* %1485)
  %1487 = load { i64, i8* }*, { i64, i8* }** %1455
  %1488 = call i64 @fmt_enum_inline({ i64, i8* }* %1487)
  ret i64 0
else345:
  br label %merge346
merge346:
  %1489 = call %nyx_string* @indent_str()
  %1490 = getelementptr [8 x i8], [8 x i8]* @.str213, i32 0, i32 0
  %1491 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str213.c, i8* %1490)
  %1492 = call %nyx_string* @nyx_string_concat(%nyx_string* %1489, %nyx_string* %1491)
  %1493 = call i64 @out(%nyx_string* %1492)
  %1494 = load { i64, i8* }*, { i64, i8* }** %1455
  %1495 = call i64 @fmt_stmt({ i64, i8* }* %1494)
  ret i64 0
else336:
  br label %merge337
merge337:
  %1496 = load %nyx_string*, %nyx_string** %1146
  %1497 = getelementptr [11 x i8], [11 x i8]* @.str214, i32 0, i32 0
  %1498 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str214.c, i8* %1497)
  %1499 = call i1 @nyx_string_equals(%nyx_string* %1496, %nyx_string* %1498)
  br i1 %1499, label %then347, label %else348
then347:
  %1500 = load { i64, i8* }*, { i64, i8* }** %1149
  %1501 = call i64 @nyx_array_get({ i64, i8* }* %1500, i64 0)
  %1502 = inttoptr i64 %1501 to %nyx_string*
  %1503 = alloca %nyx_string*
  store %nyx_string* %1502, %nyx_string** %1503
  %1504 = load { i64, i8* }*, { i64, i8* }** %1149
  %1505 = call i64 @nyx_array_get({ i64, i8* }* %1504, i64 1)
  %1506 = inttoptr i64 %1505 to %nyx_string*
  %1507 = alloca %nyx_string*
  store %nyx_string* %1506, %nyx_string** %1507
  %1508 = getelementptr [6 x i8], [6 x i8]* @.str215, i32 0, i32 0
  %1509 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str215.c, i8* %1508)
  %1510 = load %nyx_string*, %nyx_string** %1503
  %1511 = call %nyx_string* @nyx_string_concat(%nyx_string* %1509, %nyx_string* %1510)
  %1512 = getelementptr [4 x i8], [4 x i8]* @.str216, i32 0, i32 0
  %1513 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str216.c, i8* %1512)
  %1514 = call %nyx_string* @nyx_string_concat(%nyx_string* %1511, %nyx_string* %1513)
  %1515 = load %nyx_string*, %nyx_string** %1507
  %1516 = call %nyx_string* @nyx_string_concat(%nyx_string* %1514, %nyx_string* %1515)
  %1517 = call i64 @out_line(%nyx_string* %1516)
  ret i64 0
else348:
  br label %merge349
merge349:
  %1518 = load %nyx_string*, %nyx_string** %1146
  %1519 = getelementptr [10 x i8], [10 x i8]* @.str217, i32 0, i32 0
  %1520 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str217.c, i8* %1519)
  %1521 = call i1 @nyx_string_equals(%nyx_string* %1518, %nyx_string* %1520)
  br i1 %1521, label %then350, label %else351
then350:
  %1522 = load { i64, i8* }*, { i64, i8* }** %1149
  %1523 = call i64 @nyx_array_get({ i64, i8* }* %1522, i64 0)
  %1524 = inttoptr i64 %1523 to %nyx_string*
  %1525 = alloca %nyx_string*
  store %nyx_string* %1524, %nyx_string** %1525
  %1526 = load { i64, i8* }*, { i64, i8* }** %1149
  %1527 = call i64 @nyx_array_get({ i64, i8* }* %1526, i64 1)
  %1528 = inttoptr i64 %1527 to { i64, i8* }*
  %1529 = alloca { i64, i8* }*
  store { i64, i8* }* %1528, { i64, i8* }** %1529
  %1530 = getelementptr [7 x i8], [7 x i8]* @.str218, i32 0, i32 0
  %1531 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str218.c, i8* %1530)
  %1532 = load %nyx_string*, %nyx_string** %1525
  %1533 = call %nyx_string* @nyx_string_concat(%nyx_string* %1531, %nyx_string* %1532)
  %1534 = getelementptr [4 x i8], [4 x i8]* @.str219, i32 0, i32 0
  %1535 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str219.c, i8* %1534)
  %1536 = call %nyx_string* @nyx_string_concat(%nyx_string* %1533, %nyx_string* %1535)
  %1537 = call i64 @out_line(%nyx_string* %1536)
  %1538 = load i64, i64* @g_indent
  %1539 = add i64 %1538, 1
  store i64 %1539, i64* @g_indent
  %1540 = load { i64, i8* }*, { i64, i8* }** %1529
  %1541 = call i64 @fmt_block_stmts({ i64, i8* }* %1540)
  %1542 = load i64, i64* @g_indent
  %1543 = sub i64 %1542, 1
  store i64 %1543, i64* @g_indent
  %1544 = getelementptr [2 x i8], [2 x i8]* @.str220, i32 0, i32 0
  %1545 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str220.c, i8* %1544)
  %1546 = call i64 @out_line(%nyx_string* %1545)
  %1547 = call i64 @out_empty()
  ret i64 0
else351:
  br label %merge352
merge352:
  %1548 = load %nyx_string*, %nyx_string** %1146
  %1549 = getelementptr [6 x i8], [6 x i8]* @.str221, i32 0, i32 0
  %1550 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str221.c, i8* %1549)
  %1551 = call i1 @nyx_string_equals(%nyx_string* %1548, %nyx_string* %1550)
  br i1 %1551, label %then353, label %else354
then353:
  %1552 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1553 = call %nyx_string* @fmt_match_expr({ i64, i8* }* %1552)
  %1554 = call i64 @out_line(%nyx_string* %1553)
  ret i64 0
else354:
  br label %merge355
merge355:
  %1555 = alloca i1
  store i1 true, i1* %1555
  %1556 = alloca i1
  store i1 true, i1* %1556
  %1557 = load %nyx_string*, %nyx_string** %1146
  %1558 = getelementptr [5 x i8], [5 x i8]* @.str222, i32 0, i32 0
  %1559 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str222.c, i8* %1558)
  %1560 = call i1 @nyx_string_equals(%nyx_string* %1557, %nyx_string* %1559)
  br i1 %1560, label %sc_or_end357, label %sc_or_rhs356
sc_or_rhs356:
  %1561 = load %nyx_string*, %nyx_string** %1146
  %1562 = getelementptr [12 x i8], [12 x i8]* @.str223, i32 0, i32 0
  %1563 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str223.c, i8* %1562)
  %1564 = call i1 @nyx_string_equals(%nyx_string* %1561, %nyx_string* %1563)
  store i1 %1564, i1* %1556
  br label %sc_or_end357
sc_or_end357:
  %1565 = load i1, i1* %1556
  br i1 %1565, label %sc_or_end359, label %sc_or_rhs358
sc_or_rhs358:
  %1566 = load %nyx_string*, %nyx_string** %1146
  %1567 = getelementptr [7 x i8], [7 x i8]* @.str224, i32 0, i32 0
  %1568 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str224.c, i8* %1567)
  %1569 = call i1 @nyx_string_equals(%nyx_string* %1566, %nyx_string* %1568)
  store i1 %1569, i1* %1555
  br label %sc_or_end359
sc_or_end359:
  %1570 = load i1, i1* %1555
  br i1 %1570, label %then360, label %else361
then360:
  %1571 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1572 = call %nyx_string* @fmt_expr({ i64, i8* }* %1571)
  %1573 = call i64 @out_line(%nyx_string* %1572)
  ret i64 0
else361:
  br label %merge362
merge362:
  %1574 = load %nyx_string*, %nyx_string** %1146
  %1575 = getelementptr [6 x i8], [6 x i8]* @.str225, i32 0, i32 0
  %1576 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str225.c, i8* %1575)
  %1577 = call i1 @nyx_string_equals(%nyx_string* %1574, %nyx_string* %1576)
  br i1 %1577, label %then363, label %else364
then363:
  %1578 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1579 = call i64 @fmt_block_stmts({ i64, i8* }* %1578)
  ret i64 0
else364:
  br label %merge365
merge365:
  %1580 = getelementptr [18 x i8], [18 x i8]* @.str226, i32 0, i32 0
  %1581 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str226.c, i8* %1580)
  %1582 = load %nyx_string*, %nyx_string** %1146
  %1583 = call %nyx_string* @nyx_string_concat(%nyx_string* %1581, %nyx_string* %1582)
  %1584 = getelementptr [4 x i8], [4 x i8]* @.str227, i32 0, i32 0
  %1585 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str227.c, i8* %1584)
  %1586 = call %nyx_string* @nyx_string_concat(%nyx_string* %1583, %nyx_string* %1585)
  %1587 = call i64 @out_line(%nyx_string* %1586)
  ret i64 0
}

define internal i64 @fmt_let(
{ i64, i8* }* %node.param, %nyx_string* %keyword.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %keyword.ptr = alloca %nyx_string*
  store %nyx_string* %keyword.param, %nyx_string** %keyword.ptr
  %1588 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1589 = call { i64, i8* }* @node_data({ i64, i8* }* %1588)
  %1590 = alloca { i64, i8* }*
  store { i64, i8* }* %1589, { i64, i8* }** %1590
  %1591 = load { i64, i8* }*, { i64, i8* }** %1590
  %1592 = call i64 @nyx_array_get({ i64, i8* }* %1591, i64 0)
  %1593 = inttoptr i64 %1592 to { i64, i8* }*
  %1594 = alloca { i64, i8* }*
  store { i64, i8* }* %1593, { i64, i8* }** %1594
  %1595 = load { i64, i8* }*, { i64, i8* }** %1594
  %1596 = call i64 @nyx_array_get({ i64, i8* }* %1595, i64 0)
  %1597 = inttoptr i64 %1596 to %nyx_string*
  %1598 = alloca %nyx_string*
  store %nyx_string* %1597, %nyx_string** %1598
  %1599 = load { i64, i8* }*, { i64, i8* }** %1590
  %1600 = call i64 @nyx_array_get({ i64, i8* }* %1599, i64 1)
  %1601 = alloca i64
  store i64 %1600, i64* %1601
  %1602 = load { i64, i8* }*, { i64, i8* }** %1590
  %1603 = call i64 @nyx_array_get({ i64, i8* }* %1602, i64 2)
  %1604 = inttoptr i64 %1603 to { i64, i8* }*
  %1605 = alloca { i64, i8* }*
  store { i64, i8* }* %1604, { i64, i8* }** %1605
  %1606 = load { i64, i8* }*, { i64, i8* }** %1590
  %1607 = call i64 @nyx_array_get({ i64, i8* }* %1606, i64 3)
  %1608 = inttoptr i64 %1607 to %nyx_string*
  %1609 = alloca %nyx_string*
  store %nyx_string* %1608, %nyx_string** %1609
  %1610 = getelementptr [4 x i8], [4 x i8]* @.str228, i32 0, i32 0
  %1611 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str228.c, i8* %1610)
  %1612 = alloca %nyx_string*
  store %nyx_string* %1611, %nyx_string** %1612
  %1613 = load %nyx_string*, %nyx_string** %keyword.ptr
  %1614 = getelementptr [6 x i8], [6 x i8]* @.str229, i32 0, i32 0
  %1615 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str229.c, i8* %1614)
  %1616 = call i1 @nyx_string_equals(%nyx_string* %1613, %nyx_string* %1615)
  br i1 %1616, label %then366, label %else367
then366:
  %1617 = getelementptr [6 x i8], [6 x i8]* @.str230, i32 0, i32 0
  %1618 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str230.c, i8* %1617)
  store %nyx_string* %1618, %nyx_string** %1612
  br label %merge368
else367:
  br label %merge368
merge368:
  %1619 = load i64, i64* %1601
  %1620 = icmp eq i64 %1619, 1
  br i1 %1620, label %then369, label %else370
then369:
  %1621 = getelementptr [4 x i8], [4 x i8]* @.str231, i32 0, i32 0
  %1622 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str231.c, i8* %1621)
  store %nyx_string* %1622, %nyx_string** %1612
  br label %merge371
else370:
  br label %merge371
merge371:
  %1623 = load %nyx_string*, %nyx_string** %1612
  %1624 = getelementptr [2 x i8], [2 x i8]* @.str232, i32 0, i32 0
  %1625 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str232.c, i8* %1624)
  %1626 = call %nyx_string* @nyx_string_concat(%nyx_string* %1623, %nyx_string* %1625)
  %1627 = load %nyx_string*, %nyx_string** %1598
  %1628 = call %nyx_string* @nyx_string_concat(%nyx_string* %1626, %nyx_string* %1627)
  %1629 = alloca %nyx_string*
  store %nyx_string* %1628, %nyx_string** %1629
  %1630 = load %nyx_string*, %nyx_string** %1609
  %1631 = getelementptr [1 x i8], [1 x i8]* @.str233, i32 0, i32 0
  %1632 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str233.c, i8* %1631)
  %1633 = call i1 @nyx_string_equals(%nyx_string* %1630, %nyx_string* %1632)
  %1634 = xor i1 %1633, true
  br i1 %1634, label %then372, label %else373
then372:
  %1635 = load %nyx_string*, %nyx_string** %1629
  %1636 = getelementptr [3 x i8], [3 x i8]* @.str234, i32 0, i32 0
  %1637 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str234.c, i8* %1636)
  %1638 = call %nyx_string* @nyx_string_concat(%nyx_string* %1635, %nyx_string* %1637)
  %1639 = load %nyx_string*, %nyx_string** %1609
  %1640 = call %nyx_string* @nyx_string_concat(%nyx_string* %1638, %nyx_string* %1639)
  store %nyx_string* %1640, %nyx_string** %1629
  br label %merge374
else373:
  br label %merge374
merge374:
  %1641 = load %nyx_string*, %nyx_string** %1629
  %1642 = getelementptr [4 x i8], [4 x i8]* @.str235, i32 0, i32 0
  %1643 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str235.c, i8* %1642)
  %1644 = call %nyx_string* @nyx_string_concat(%nyx_string* %1641, %nyx_string* %1643)
  %1645 = load { i64, i8* }*, { i64, i8* }** %1605
  %1646 = call %nyx_string* @fmt_expr({ i64, i8* }* %1645)
  %1647 = call %nyx_string* @nyx_string_concat(%nyx_string* %1644, %nyx_string* %1646)
  store %nyx_string* %1647, %nyx_string** %1629
  %1648 = load %nyx_string*, %nyx_string** %1629
  %1649 = call i64 @out_line(%nyx_string* %1648)
  ret i64 0
}

define internal i64 @fmt_if(
{ i64, i8* }* %node.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %1650 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1651 = call { i64, i8* }* @node_data({ i64, i8* }* %1650)
  %1652 = alloca { i64, i8* }*
  store { i64, i8* }* %1651, { i64, i8* }** %1652
  %1653 = load { i64, i8* }*, { i64, i8* }** %1652
  %1654 = call i64 @nyx_array_get({ i64, i8* }* %1653, i64 0)
  %1655 = inttoptr i64 %1654 to { i64, i8* }*
  %1656 = alloca { i64, i8* }*
  store { i64, i8* }* %1655, { i64, i8* }** %1656
  %1657 = load { i64, i8* }*, { i64, i8* }** %1652
  %1658 = call i64 @nyx_array_get({ i64, i8* }* %1657, i64 1)
  %1659 = inttoptr i64 %1658 to { i64, i8* }*
  %1660 = alloca { i64, i8* }*
  store { i64, i8* }* %1659, { i64, i8* }** %1660
  %1661 = load { i64, i8* }*, { i64, i8* }** %1652
  %1662 = call i64 @nyx_array_get({ i64, i8* }* %1661, i64 2)
  %1663 = inttoptr i64 %1662 to { i64, i8* }*
  %1664 = alloca { i64, i8* }*
  store { i64, i8* }* %1663, { i64, i8* }** %1664
  %1665 = getelementptr [4 x i8], [4 x i8]* @.str236, i32 0, i32 0
  %1666 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str236.c, i8* %1665)
  %1667 = load { i64, i8* }*, { i64, i8* }** %1656
  %1668 = call %nyx_string* @fmt_expr({ i64, i8* }* %1667)
  %1669 = call %nyx_string* @nyx_string_concat(%nyx_string* %1666, %nyx_string* %1668)
  %1670 = getelementptr [3 x i8], [3 x i8]* @.str237, i32 0, i32 0
  %1671 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str237.c, i8* %1670)
  %1672 = call %nyx_string* @nyx_string_concat(%nyx_string* %1669, %nyx_string* %1671)
  %1673 = call i64 @out_line(%nyx_string* %1672)
  %1674 = load i64, i64* @g_indent
  %1675 = add i64 %1674, 1
  store i64 %1675, i64* @g_indent
  %1676 = load { i64, i8* }*, { i64, i8* }** %1660
  %1677 = call i64 @fmt_block_stmts({ i64, i8* }* %1676)
  %1678 = load i64, i64* @g_indent
  %1679 = sub i64 %1678, 1
  store i64 %1679, i64* @g_indent
  %1680 = load { i64, i8* }*, { i64, i8* }** %1664
  %1681 = call %nyx_string* @node_type({ i64, i8* }* %1680)
  %1682 = getelementptr [6 x i8], [6 x i8]* @.str238, i32 0, i32 0
  %1683 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str238.c, i8* %1682)
  %1684 = call i1 @nyx_string_equals(%nyx_string* %1681, %nyx_string* %1683)
  %1685 = xor i1 %1684, true
  br i1 %1685, label %then375, label %else376
then375:
  %1686 = load { i64, i8* }*, { i64, i8* }** %1664
  %1687 = call %nyx_string* @node_type({ i64, i8* }* %1686)
  %1688 = getelementptr [3 x i8], [3 x i8]* @.str239, i32 0, i32 0
  %1689 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str239.c, i8* %1688)
  %1690 = call i1 @nyx_string_equals(%nyx_string* %1687, %nyx_string* %1689)
  br i1 %1690, label %then378, label %else379
then378:
  %1691 = call %nyx_string* @indent_str()
  %1692 = getelementptr [8 x i8], [8 x i8]* @.str240, i32 0, i32 0
  %1693 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str240.c, i8* %1692)
  %1694 = call %nyx_string* @nyx_string_concat(%nyx_string* %1691, %nyx_string* %1693)
  %1695 = call i64 @out(%nyx_string* %1694)
  %1696 = load { i64, i8* }*, { i64, i8* }** %1664
  %1697 = call i64 @fmt_if({ i64, i8* }* %1696)
  br label %merge380
else379:
  %1698 = getelementptr [9 x i8], [9 x i8]* @.str241, i32 0, i32 0
  %1699 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str241.c, i8* %1698)
  %1700 = call i64 @out_line(%nyx_string* %1699)
  %1701 = load i64, i64* @g_indent
  %1702 = add i64 %1701, 1
  store i64 %1702, i64* @g_indent
  %1703 = load { i64, i8* }*, { i64, i8* }** %1664
  %1704 = call i64 @fmt_block_stmts({ i64, i8* }* %1703)
  %1705 = load i64, i64* @g_indent
  %1706 = sub i64 %1705, 1
  store i64 %1706, i64* @g_indent
  %1707 = getelementptr [2 x i8], [2 x i8]* @.str242, i32 0, i32 0
  %1708 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str242.c, i8* %1707)
  %1709 = call i64 @out_line(%nyx_string* %1708)
  br label %merge380
merge380:
  br label %merge377
else376:
  %1710 = getelementptr [2 x i8], [2 x i8]* @.str243, i32 0, i32 0
  %1711 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str243.c, i8* %1710)
  %1712 = call i64 @out_line(%nyx_string* %1711)
  br label %merge377
merge377:
  ret i64 0
}

define internal i64 @fmt_function(
{ i64, i8* }* %node.param, %nyx_string* %prefix.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %prefix.ptr = alloca %nyx_string*
  store %nyx_string* %prefix.param, %nyx_string** %prefix.ptr
  %1713 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1714 = call { i64, i8* }* @node_data({ i64, i8* }* %1713)
  %1715 = alloca { i64, i8* }*
  store { i64, i8* }* %1714, { i64, i8* }** %1715
  %1716 = load { i64, i8* }*, { i64, i8* }** %1715
  %1717 = call i64 @nyx_array_get({ i64, i8* }* %1716, i64 0)
  %1718 = inttoptr i64 %1717 to %nyx_string*
  %1719 = alloca %nyx_string*
  store %nyx_string* %1718, %nyx_string** %1719
  %1720 = load { i64, i8* }*, { i64, i8* }** %1715
  %1721 = call i64 @nyx_array_get({ i64, i8* }* %1720, i64 1)
  %1722 = inttoptr i64 %1721 to { i64, i8* }*
  %1723 = alloca { i64, i8* }*
  store { i64, i8* }* %1722, { i64, i8* }** %1723
  %1724 = load { i64, i8* }*, { i64, i8* }** %1715
  %1725 = call i64 @nyx_array_get({ i64, i8* }* %1724, i64 2)
  %1726 = inttoptr i64 %1725 to %nyx_string*
  %1727 = alloca %nyx_string*
  store %nyx_string* %1726, %nyx_string** %1727
  %1728 = load { i64, i8* }*, { i64, i8* }** %1715
  %1729 = call i64 @nyx_array_get({ i64, i8* }* %1728, i64 3)
  %1730 = inttoptr i64 %1729 to { i64, i8* }*
  %1731 = alloca { i64, i8* }*
  store { i64, i8* }* %1730, { i64, i8* }** %1731
  %1732 = call { i64, i8* }* @nyx_array_new_ptr()
  %1733 = alloca { i64, i8* }*
  store { i64, i8* }* %1732, { i64, i8* }** %1733
  %1734 = load { i64, i8* }*, { i64, i8* }** %1715
  %1735 = call i64 @nyx_array_length({ i64, i8* }* %1734)
  %1736 = icmp sgt i64 %1735, 4
  br i1 %1736, label %then381, label %else382
then381:
  %1737 = load { i64, i8* }*, { i64, i8* }** %1715
  %1738 = call i64 @nyx_array_get({ i64, i8* }* %1737, i64 4)
  %1739 = inttoptr i64 %1738 to { i64, i8* }*
  %1740 = alloca { i64, i8* }*
  store { i64, i8* }* %1739, { i64, i8* }** %1740
  %1741 = load { i64, i8* }*, { i64, i8* }** %1740
  store { i64, i8* }* %1741, { i64, i8* }** %1733
  br label %merge383
else382:
  br label %merge383
merge383:
  %1742 = call %nyx_string* @indent_str()
  %1743 = load %nyx_string*, %nyx_string** %prefix.ptr
  %1744 = call %nyx_string* @nyx_string_concat(%nyx_string* %1742, %nyx_string* %1743)
  %1745 = getelementptr [4 x i8], [4 x i8]* @.str244, i32 0, i32 0
  %1746 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str244.c, i8* %1745)
  %1747 = call %nyx_string* @nyx_string_concat(%nyx_string* %1744, %nyx_string* %1746)
  %1748 = load %nyx_string*, %nyx_string** %1719
  %1749 = call %nyx_string* @nyx_string_concat(%nyx_string* %1747, %nyx_string* %1748)
  %1750 = alloca %nyx_string*
  store %nyx_string* %1749, %nyx_string** %1750
  %1751 = load { i64, i8* }*, { i64, i8* }** %1733
  %1752 = call i64 @nyx_array_length({ i64, i8* }* %1751)
  %1753 = icmp sgt i64 %1752, 0
  br i1 %1753, label %then384, label %else385
then384:
  %1754 = load %nyx_string*, %nyx_string** %1750
  %1755 = getelementptr [2 x i8], [2 x i8]* @.str245, i32 0, i32 0
  %1756 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str245.c, i8* %1755)
  %1757 = call %nyx_string* @nyx_string_concat(%nyx_string* %1754, %nyx_string* %1756)
  store %nyx_string* %1757, %nyx_string** %1750
  %1758 = alloca i64
  store i64 0, i64* %1758
  %1759 = getelementptr [3 x i8], [3 x i8]* @.str246, i32 0, i32 0
  %1760 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str246.c, i8* %1759)
  %1761 = alloca %nyx_string*
  store %nyx_string* %1760, %nyx_string** %1761
  br label %while_cond387
while_cond387:
  %1762 = load i64, i64* %1758
  %1763 = load { i64, i8* }*, { i64, i8* }** %1733
  %1764 = call i64 @nyx_array_length({ i64, i8* }* %1763)
  %1765 = icmp slt i64 %1762, %1764
  br i1 %1765, label %while_body388, label %while_end389
while_body388:
  %1766 = load i64, i64* %1758
  %1767 = icmp sgt i64 %1766, 0
  br i1 %1767, label %then390, label %else391
then390:
  %1768 = load %nyx_string*, %nyx_string** %1750
  %1769 = load %nyx_string*, %nyx_string** %1761
  %1770 = call %nyx_string* @nyx_string_concat(%nyx_string* %1768, %nyx_string* %1769)
  store %nyx_string* %1770, %nyx_string** %1750
  br label %merge392
else391:
  br label %merge392
merge392:
  %1771 = load { i64, i8* }*, { i64, i8* }** %1733
  %1772 = load i64, i64* %1758
  %1773 = call i64 @nyx_array_get({ i64, i8* }* %1771, i64 %1772)
  %1774 = inttoptr i64 %1773 to %nyx_string*
  %1775 = alloca %nyx_string*
  store %nyx_string* %1774, %nyx_string** %1775
  %1776 = load %nyx_string*, %nyx_string** %1750
  %1777 = load %nyx_string*, %nyx_string** %1775
  %1778 = call %nyx_string* @nyx_string_concat(%nyx_string* %1776, %nyx_string* %1777)
  store %nyx_string* %1778, %nyx_string** %1750
  %1779 = load i64, i64* %1758
  %1780 = add i64 %1779, 1
  store i64 %1780, i64* %1758
  br label %while_cond387
while_end389:
  %1781 = load %nyx_string*, %nyx_string** %1750
  %1782 = getelementptr [2 x i8], [2 x i8]* @.str247, i32 0, i32 0
  %1783 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str247.c, i8* %1782)
  %1784 = call %nyx_string* @nyx_string_concat(%nyx_string* %1781, %nyx_string* %1783)
  store %nyx_string* %1784, %nyx_string** %1750
  br label %merge386
else385:
  br label %merge386
merge386:
  %1785 = load %nyx_string*, %nyx_string** %1750
  %1786 = getelementptr [2 x i8], [2 x i8]* @.str248, i32 0, i32 0
  %1787 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str248.c, i8* %1786)
  %1788 = call %nyx_string* @nyx_string_concat(%nyx_string* %1785, %nyx_string* %1787)
  store %nyx_string* %1788, %nyx_string** %1750
  %1789 = alloca i64
  store i64 0, i64* %1789
  %1790 = getelementptr [3 x i8], [3 x i8]* @.str249, i32 0, i32 0
  %1791 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str249.c, i8* %1790)
  %1792 = alloca %nyx_string*
  store %nyx_string* %1791, %nyx_string** %1792
  %1793 = getelementptr [1 x i8], [1 x i8]* @.str250, i32 0, i32 0
  %1794 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str250.c, i8* %1793)
  %1795 = alloca %nyx_string*
  store %nyx_string* %1794, %nyx_string** %1795
  %1796 = getelementptr [3 x i8], [3 x i8]* @.str251, i32 0, i32 0
  %1797 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str251.c, i8* %1796)
  %1798 = alloca %nyx_string*
  store %nyx_string* %1797, %nyx_string** %1798
  br label %while_cond393
while_cond393:
  %1799 = load i64, i64* %1789
  %1800 = load { i64, i8* }*, { i64, i8* }** %1723
  %1801 = call i64 @nyx_array_length({ i64, i8* }* %1800)
  %1802 = icmp slt i64 %1799, %1801
  br i1 %1802, label %while_body394, label %while_end395
while_body394:
  %1803 = load i64, i64* %1789
  %1804 = icmp sgt i64 %1803, 0
  br i1 %1804, label %then396, label %else397
then396:
  %1805 = load %nyx_string*, %nyx_string** %1750
  %1806 = load %nyx_string*, %nyx_string** %1792
  %1807 = call %nyx_string* @nyx_string_concat(%nyx_string* %1805, %nyx_string* %1806)
  store %nyx_string* %1807, %nyx_string** %1750
  br label %merge398
else397:
  br label %merge398
merge398:
  %1808 = load { i64, i8* }*, { i64, i8* }** %1723
  %1809 = load i64, i64* %1789
  %1810 = call i64 @nyx_array_get({ i64, i8* }* %1808, i64 %1809)
  %1811 = inttoptr i64 %1810 to { i64, i8* }*
  %1812 = alloca { i64, i8* }*
  store { i64, i8* }* %1811, { i64, i8* }** %1812
  %1813 = load { i64, i8* }*, { i64, i8* }** %1812
  %1814 = call i64 @nyx_array_get({ i64, i8* }* %1813, i64 0)
  %1815 = inttoptr i64 %1814 to %nyx_string*
  %1816 = alloca %nyx_string*
  store %nyx_string* %1815, %nyx_string** %1816
  %1817 = load { i64, i8* }*, { i64, i8* }** %1812
  %1818 = call i64 @nyx_array_get({ i64, i8* }* %1817, i64 1)
  %1819 = inttoptr i64 %1818 to %nyx_string*
  %1820 = alloca %nyx_string*
  store %nyx_string* %1819, %nyx_string** %1820
  %1821 = load %nyx_string*, %nyx_string** %1750
  %1822 = load %nyx_string*, %nyx_string** %1816
  %1823 = call %nyx_string* @nyx_string_concat(%nyx_string* %1821, %nyx_string* %1822)
  store %nyx_string* %1823, %nyx_string** %1750
  %1824 = load %nyx_string*, %nyx_string** %1820
  %1825 = load %nyx_string*, %nyx_string** %1795
  %1826 = call i1 @nyx_string_equals(%nyx_string* %1824, %nyx_string* %1825)
  %1827 = xor i1 %1826, true
  br i1 %1827, label %then399, label %else400
then399:
  %1828 = load %nyx_string*, %nyx_string** %1750
  %1829 = load %nyx_string*, %nyx_string** %1798
  %1830 = call %nyx_string* @nyx_string_concat(%nyx_string* %1828, %nyx_string* %1829)
  %1831 = load %nyx_string*, %nyx_string** %1820
  %1832 = call %nyx_string* @nyx_string_concat(%nyx_string* %1830, %nyx_string* %1831)
  store %nyx_string* %1832, %nyx_string** %1750
  br label %merge401
else400:
  br label %merge401
merge401:
  %1833 = load i64, i64* %1789
  %1834 = add i64 %1833, 1
  store i64 %1834, i64* %1789
  br label %while_cond393
while_end395:
  %1835 = load %nyx_string*, %nyx_string** %1750
  %1836 = getelementptr [2 x i8], [2 x i8]* @.str252, i32 0, i32 0
  %1837 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str252.c, i8* %1836)
  %1838 = call %nyx_string* @nyx_string_concat(%nyx_string* %1835, %nyx_string* %1837)
  store %nyx_string* %1838, %nyx_string** %1750
  %1839 = load %nyx_string*, %nyx_string** %1727
  %1840 = getelementptr [1 x i8], [1 x i8]* @.str253, i32 0, i32 0
  %1841 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str253.c, i8* %1840)
  %1842 = call i1 @nyx_string_equals(%nyx_string* %1839, %nyx_string* %1841)
  %1843 = xor i1 %1842, true
  br i1 %1843, label %then402, label %else403
then402:
  %1844 = load %nyx_string*, %nyx_string** %1750
  %1845 = getelementptr [5 x i8], [5 x i8]* @.str254, i32 0, i32 0
  %1846 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str254.c, i8* %1845)
  %1847 = call %nyx_string* @nyx_string_concat(%nyx_string* %1844, %nyx_string* %1846)
  %1848 = load %nyx_string*, %nyx_string** %1727
  %1849 = call %nyx_string* @nyx_string_concat(%nyx_string* %1847, %nyx_string* %1848)
  store %nyx_string* %1849, %nyx_string** %1750
  br label %merge404
else403:
  br label %merge404
merge404:
  %1850 = load %nyx_string*, %nyx_string** %1750
  %1851 = getelementptr [4 x i8], [4 x i8]* @.str255, i32 0, i32 0
  %1852 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str255.c, i8* %1851)
  %1853 = call %nyx_string* @nyx_string_concat(%nyx_string* %1850, %nyx_string* %1852)
  store %nyx_string* %1853, %nyx_string** %1750
  %1854 = load %nyx_string*, %nyx_string** %1750
  %1855 = call i64 @out(%nyx_string* %1854)
  %1856 = load i64, i64* @g_indent
  %1857 = add i64 %1856, 1
  store i64 %1857, i64* @g_indent
  %1858 = load { i64, i8* }*, { i64, i8* }** %1731
  %1859 = call i64 @fmt_block_stmts({ i64, i8* }* %1858)
  %1860 = load i64, i64* @g_indent
  %1861 = sub i64 %1860, 1
  store i64 %1861, i64* @g_indent
  %1862 = getelementptr [2 x i8], [2 x i8]* @.str256, i32 0, i32 0
  %1863 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str256.c, i8* %1862)
  %1864 = call i64 @out_line(%nyx_string* %1863)
  %1865 = call i64 @out_empty()
  ret i64 0
}

define internal i64 @fmt_struct(
{ i64, i8* }* %node.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %1866 = call %nyx_string* @indent_str()
  %1867 = call i64 @out(%nyx_string* %1866)
  %1868 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1869 = call i64 @fmt_struct_inline({ i64, i8* }* %1868)
  ret i64 0
}

define internal i64 @fmt_struct_inline(
{ i64, i8* }* %node.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %1870 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1871 = call { i64, i8* }* @node_data({ i64, i8* }* %1870)
  %1872 = alloca { i64, i8* }*
  store { i64, i8* }* %1871, { i64, i8* }** %1872
  %1873 = load { i64, i8* }*, { i64, i8* }** %1872
  %1874 = call i64 @nyx_array_get({ i64, i8* }* %1873, i64 0)
  %1875 = inttoptr i64 %1874 to %nyx_string*
  %1876 = alloca %nyx_string*
  store %nyx_string* %1875, %nyx_string** %1876
  %1877 = load { i64, i8* }*, { i64, i8* }** %1872
  %1878 = call i64 @nyx_array_get({ i64, i8* }* %1877, i64 1)
  %1879 = inttoptr i64 %1878 to { i64, i8* }*
  %1880 = alloca { i64, i8* }*
  store { i64, i8* }* %1879, { i64, i8* }** %1880
  %1881 = call { i64, i8* }* @nyx_array_new_ptr()
  %1882 = alloca { i64, i8* }*
  store { i64, i8* }* %1881, { i64, i8* }** %1882
  %1883 = load { i64, i8* }*, { i64, i8* }** %1872
  %1884 = call i64 @nyx_array_length({ i64, i8* }* %1883)
  %1885 = icmp sgt i64 %1884, 2
  br i1 %1885, label %then405, label %else406
then405:
  %1886 = load { i64, i8* }*, { i64, i8* }** %1872
  %1887 = call i64 @nyx_array_get({ i64, i8* }* %1886, i64 2)
  %1888 = inttoptr i64 %1887 to { i64, i8* }*
  %1889 = alloca { i64, i8* }*
  store { i64, i8* }* %1888, { i64, i8* }** %1889
  %1890 = load { i64, i8* }*, { i64, i8* }** %1889
  store { i64, i8* }* %1890, { i64, i8* }** %1882
  br label %merge407
else406:
  br label %merge407
merge407:
  %1891 = getelementptr [8 x i8], [8 x i8]* @.str257, i32 0, i32 0
  %1892 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str257.c, i8* %1891)
  %1893 = load %nyx_string*, %nyx_string** %1876
  %1894 = call %nyx_string* @nyx_string_concat(%nyx_string* %1892, %nyx_string* %1893)
  %1895 = alloca %nyx_string*
  store %nyx_string* %1894, %nyx_string** %1895
  %1896 = load { i64, i8* }*, { i64, i8* }** %1882
  %1897 = call i64 @nyx_array_length({ i64, i8* }* %1896)
  %1898 = icmp sgt i64 %1897, 0
  br i1 %1898, label %then408, label %else409
then408:
  %1899 = load %nyx_string*, %nyx_string** %1895
  %1900 = getelementptr [2 x i8], [2 x i8]* @.str258, i32 0, i32 0
  %1901 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str258.c, i8* %1900)
  %1902 = call %nyx_string* @nyx_string_concat(%nyx_string* %1899, %nyx_string* %1901)
  store %nyx_string* %1902, %nyx_string** %1895
  %1903 = alloca i64
  store i64 0, i64* %1903
  %1904 = getelementptr [3 x i8], [3 x i8]* @.str259, i32 0, i32 0
  %1905 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str259.c, i8* %1904)
  %1906 = alloca %nyx_string*
  store %nyx_string* %1905, %nyx_string** %1906
  br label %while_cond411
while_cond411:
  %1907 = load i64, i64* %1903
  %1908 = load { i64, i8* }*, { i64, i8* }** %1882
  %1909 = call i64 @nyx_array_length({ i64, i8* }* %1908)
  %1910 = icmp slt i64 %1907, %1909
  br i1 %1910, label %while_body412, label %while_end413
while_body412:
  %1911 = load i64, i64* %1903
  %1912 = icmp sgt i64 %1911, 0
  br i1 %1912, label %then414, label %else415
then414:
  %1913 = load %nyx_string*, %nyx_string** %1895
  %1914 = load %nyx_string*, %nyx_string** %1906
  %1915 = call %nyx_string* @nyx_string_concat(%nyx_string* %1913, %nyx_string* %1914)
  store %nyx_string* %1915, %nyx_string** %1895
  br label %merge416
else415:
  br label %merge416
merge416:
  %1916 = load { i64, i8* }*, { i64, i8* }** %1882
  %1917 = load i64, i64* %1903
  %1918 = call i64 @nyx_array_get({ i64, i8* }* %1916, i64 %1917)
  %1919 = inttoptr i64 %1918 to %nyx_string*
  %1920 = alloca %nyx_string*
  store %nyx_string* %1919, %nyx_string** %1920
  %1921 = load %nyx_string*, %nyx_string** %1895
  %1922 = load %nyx_string*, %nyx_string** %1920
  %1923 = call %nyx_string* @nyx_string_concat(%nyx_string* %1921, %nyx_string* %1922)
  store %nyx_string* %1923, %nyx_string** %1895
  %1924 = load i64, i64* %1903
  %1925 = add i64 %1924, 1
  store i64 %1925, i64* %1903
  br label %while_cond411
while_end413:
  %1926 = load %nyx_string*, %nyx_string** %1895
  %1927 = getelementptr [2 x i8], [2 x i8]* @.str260, i32 0, i32 0
  %1928 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str260.c, i8* %1927)
  %1929 = call %nyx_string* @nyx_string_concat(%nyx_string* %1926, %nyx_string* %1928)
  store %nyx_string* %1929, %nyx_string** %1895
  br label %merge410
else409:
  br label %merge410
merge410:
  %1930 = load %nyx_string*, %nyx_string** %1895
  %1931 = getelementptr [4 x i8], [4 x i8]* @.str261, i32 0, i32 0
  %1932 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str261.c, i8* %1931)
  %1933 = call %nyx_string* @nyx_string_concat(%nyx_string* %1930, %nyx_string* %1932)
  store %nyx_string* %1933, %nyx_string** %1895
  %1934 = load %nyx_string*, %nyx_string** %1895
  %1935 = call i64 @out(%nyx_string* %1934)
  %1936 = load i64, i64* @g_indent
  %1937 = add i64 %1936, 1
  store i64 %1937, i64* @g_indent
  %1938 = alloca i64
  store i64 0, i64* %1938
  %1939 = getelementptr [2 x i8], [2 x i8]* @.str262, i32 0, i32 0
  %1940 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str262.c, i8* %1939)
  %1941 = alloca %nyx_string*
  store %nyx_string* %1940, %nyx_string** %1941
  %1942 = getelementptr [1 x i8], [1 x i8]* @.str263, i32 0, i32 0
  %1943 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str263.c, i8* %1942)
  %1944 = alloca %nyx_string*
  store %nyx_string* %1943, %nyx_string** %1944
  %1945 = getelementptr [3 x i8], [3 x i8]* @.str264, i32 0, i32 0
  %1946 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str264.c, i8* %1945)
  %1947 = alloca %nyx_string*
  store %nyx_string* %1946, %nyx_string** %1947
  br label %while_cond417
while_cond417:
  %1948 = load i64, i64* %1938
  %1949 = load { i64, i8* }*, { i64, i8* }** %1880
  %1950 = call i64 @nyx_array_length({ i64, i8* }* %1949)
  %1951 = icmp slt i64 %1948, %1950
  br i1 %1951, label %while_body418, label %while_end419
while_body418:
  %1952 = load { i64, i8* }*, { i64, i8* }** %1880
  %1953 = load i64, i64* %1938
  %1954 = call i64 @nyx_array_get({ i64, i8* }* %1952, i64 %1953)
  %1955 = inttoptr i64 %1954 to { i64, i8* }*
  %1956 = alloca { i64, i8* }*
  store { i64, i8* }* %1955, { i64, i8* }** %1956
  %1957 = load { i64, i8* }*, { i64, i8* }** %1956
  %1958 = call i64 @nyx_array_get({ i64, i8* }* %1957, i64 0)
  %1959 = inttoptr i64 %1958 to %nyx_string*
  %1960 = alloca %nyx_string*
  store %nyx_string* %1959, %nyx_string** %1960
  %1961 = load { i64, i8* }*, { i64, i8* }** %1956
  %1962 = call i64 @nyx_array_get({ i64, i8* }* %1961, i64 1)
  %1963 = inttoptr i64 %1962 to %nyx_string*
  %1964 = alloca %nyx_string*
  store %nyx_string* %1963, %nyx_string** %1964
  %1965 = load %nyx_string*, %nyx_string** %1941
  %1966 = alloca %nyx_string*
  store %nyx_string* %1965, %nyx_string** %1966
  %1967 = load i64, i64* %1938
  %1968 = load { i64, i8* }*, { i64, i8* }** %1880
  %1969 = call i64 @nyx_array_length({ i64, i8* }* %1968)
  %1970 = sub i64 %1969, 1
  %1971 = icmp eq i64 %1967, %1970
  br i1 %1971, label %then420, label %else421
then420:
  %1972 = load %nyx_string*, %nyx_string** %1944
  store %nyx_string* %1972, %nyx_string** %1966
  br label %merge422
else421:
  br label %merge422
merge422:
  %1973 = load %nyx_string*, %nyx_string** %1960
  %1974 = load %nyx_string*, %nyx_string** %1947
  %1975 = call %nyx_string* @nyx_string_concat(%nyx_string* %1973, %nyx_string* %1974)
  %1976 = load %nyx_string*, %nyx_string** %1964
  %1977 = call %nyx_string* @nyx_string_concat(%nyx_string* %1975, %nyx_string* %1976)
  %1978 = load %nyx_string*, %nyx_string** %1966
  %1979 = call %nyx_string* @nyx_string_concat(%nyx_string* %1977, %nyx_string* %1978)
  %1980 = call i64 @out_line(%nyx_string* %1979)
  %1981 = load i64, i64* %1938
  %1982 = add i64 %1981, 1
  store i64 %1982, i64* %1938
  br label %while_cond417
while_end419:
  %1983 = load i64, i64* @g_indent
  %1984 = sub i64 %1983, 1
  store i64 %1984, i64* @g_indent
  %1985 = getelementptr [2 x i8], [2 x i8]* @.str265, i32 0, i32 0
  %1986 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str265.c, i8* %1985)
  %1987 = call i64 @out_line(%nyx_string* %1986)
  %1988 = call i64 @out_empty()
  ret i64 0
}

define internal i64 @fmt_enum(
{ i64, i8* }* %node.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %1989 = call %nyx_string* @indent_str()
  %1990 = call i64 @out(%nyx_string* %1989)
  %1991 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1992 = call i64 @fmt_enum_inline({ i64, i8* }* %1991)
  ret i64 0
}

define internal i64 @fmt_enum_inline(
{ i64, i8* }* %node.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %1993 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1994 = call { i64, i8* }* @node_data({ i64, i8* }* %1993)
  %1995 = alloca { i64, i8* }*
  store { i64, i8* }* %1994, { i64, i8* }** %1995
  %1996 = load { i64, i8* }*, { i64, i8* }** %1995
  %1997 = call i64 @nyx_array_get({ i64, i8* }* %1996, i64 0)
  %1998 = inttoptr i64 %1997 to %nyx_string*
  %1999 = alloca %nyx_string*
  store %nyx_string* %1998, %nyx_string** %1999
  %2000 = load { i64, i8* }*, { i64, i8* }** %1995
  %2001 = call i64 @nyx_array_get({ i64, i8* }* %2000, i64 1)
  %2002 = inttoptr i64 %2001 to { i64, i8* }*
  %2003 = alloca { i64, i8* }*
  store { i64, i8* }* %2002, { i64, i8* }** %2003
  %2004 = call { i64, i8* }* @nyx_array_new_ptr()
  %2005 = alloca { i64, i8* }*
  store { i64, i8* }* %2004, { i64, i8* }** %2005
  %2006 = load { i64, i8* }*, { i64, i8* }** %1995
  %2007 = call i64 @nyx_array_length({ i64, i8* }* %2006)
  %2008 = icmp sgt i64 %2007, 2
  br i1 %2008, label %then423, label %else424
then423:
  %2009 = load { i64, i8* }*, { i64, i8* }** %1995
  %2010 = call i64 @nyx_array_get({ i64, i8* }* %2009, i64 2)
  %2011 = inttoptr i64 %2010 to { i64, i8* }*
  %2012 = alloca { i64, i8* }*
  store { i64, i8* }* %2011, { i64, i8* }** %2012
  %2013 = load { i64, i8* }*, { i64, i8* }** %2012
  store { i64, i8* }* %2013, { i64, i8* }** %2005
  br label %merge425
else424:
  br label %merge425
merge425:
  %2014 = getelementptr [6 x i8], [6 x i8]* @.str266, i32 0, i32 0
  %2015 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str266.c, i8* %2014)
  %2016 = load %nyx_string*, %nyx_string** %1999
  %2017 = call %nyx_string* @nyx_string_concat(%nyx_string* %2015, %nyx_string* %2016)
  %2018 = alloca %nyx_string*
  store %nyx_string* %2017, %nyx_string** %2018
  %2019 = load { i64, i8* }*, { i64, i8* }** %2005
  %2020 = call i64 @nyx_array_length({ i64, i8* }* %2019)
  %2021 = icmp sgt i64 %2020, 0
  br i1 %2021, label %then426, label %else427
then426:
  %2022 = load %nyx_string*, %nyx_string** %2018
  %2023 = getelementptr [2 x i8], [2 x i8]* @.str267, i32 0, i32 0
  %2024 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str267.c, i8* %2023)
  %2025 = call %nyx_string* @nyx_string_concat(%nyx_string* %2022, %nyx_string* %2024)
  store %nyx_string* %2025, %nyx_string** %2018
  %2026 = alloca i64
  store i64 0, i64* %2026
  %2027 = getelementptr [3 x i8], [3 x i8]* @.str268, i32 0, i32 0
  %2028 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str268.c, i8* %2027)
  %2029 = alloca %nyx_string*
  store %nyx_string* %2028, %nyx_string** %2029
  br label %while_cond429
while_cond429:
  %2030 = load i64, i64* %2026
  %2031 = load { i64, i8* }*, { i64, i8* }** %2005
  %2032 = call i64 @nyx_array_length({ i64, i8* }* %2031)
  %2033 = icmp slt i64 %2030, %2032
  br i1 %2033, label %while_body430, label %while_end431
while_body430:
  %2034 = load i64, i64* %2026
  %2035 = icmp sgt i64 %2034, 0
  br i1 %2035, label %then432, label %else433
then432:
  %2036 = load %nyx_string*, %nyx_string** %2018
  %2037 = load %nyx_string*, %nyx_string** %2029
  %2038 = call %nyx_string* @nyx_string_concat(%nyx_string* %2036, %nyx_string* %2037)
  store %nyx_string* %2038, %nyx_string** %2018
  br label %merge434
else433:
  br label %merge434
merge434:
  %2039 = load { i64, i8* }*, { i64, i8* }** %2005
  %2040 = load i64, i64* %2026
  %2041 = call i64 @nyx_array_get({ i64, i8* }* %2039, i64 %2040)
  %2042 = inttoptr i64 %2041 to %nyx_string*
  %2043 = alloca %nyx_string*
  store %nyx_string* %2042, %nyx_string** %2043
  %2044 = load %nyx_string*, %nyx_string** %2018
  %2045 = load %nyx_string*, %nyx_string** %2043
  %2046 = call %nyx_string* @nyx_string_concat(%nyx_string* %2044, %nyx_string* %2045)
  store %nyx_string* %2046, %nyx_string** %2018
  %2047 = load i64, i64* %2026
  %2048 = add i64 %2047, 1
  store i64 %2048, i64* %2026
  br label %while_cond429
while_end431:
  %2049 = load %nyx_string*, %nyx_string** %2018
  %2050 = getelementptr [2 x i8], [2 x i8]* @.str269, i32 0, i32 0
  %2051 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str269.c, i8* %2050)
  %2052 = call %nyx_string* @nyx_string_concat(%nyx_string* %2049, %nyx_string* %2051)
  store %nyx_string* %2052, %nyx_string** %2018
  br label %merge428
else427:
  br label %merge428
merge428:
  %2053 = load %nyx_string*, %nyx_string** %2018
  %2054 = getelementptr [4 x i8], [4 x i8]* @.str270, i32 0, i32 0
  %2055 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str270.c, i8* %2054)
  %2056 = call %nyx_string* @nyx_string_concat(%nyx_string* %2053, %nyx_string* %2055)
  store %nyx_string* %2056, %nyx_string** %2018
  %2057 = load %nyx_string*, %nyx_string** %2018
  %2058 = call i64 @out(%nyx_string* %2057)
  %2059 = load i64, i64* @g_indent
  %2060 = add i64 %2059, 1
  store i64 %2060, i64* @g_indent
  %2061 = alloca i64
  store i64 0, i64* %2061
  %2062 = getelementptr [2 x i8], [2 x i8]* @.str271, i32 0, i32 0
  %2063 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str271.c, i8* %2062)
  %2064 = alloca %nyx_string*
  store %nyx_string* %2063, %nyx_string** %2064
  %2065 = getelementptr [3 x i8], [3 x i8]* @.str272, i32 0, i32 0
  %2066 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str272.c, i8* %2065)
  %2067 = alloca %nyx_string*
  store %nyx_string* %2066, %nyx_string** %2067
  %2068 = getelementptr [2 x i8], [2 x i8]* @.str273, i32 0, i32 0
  %2069 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str273.c, i8* %2068)
  %2070 = alloca %nyx_string*
  store %nyx_string* %2069, %nyx_string** %2070
  %2071 = getelementptr [2 x i8], [2 x i8]* @.str274, i32 0, i32 0
  %2072 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str274.c, i8* %2071)
  %2073 = alloca %nyx_string*
  store %nyx_string* %2072, %nyx_string** %2073
  br label %while_cond435
while_cond435:
  %2074 = load i64, i64* %2061
  %2075 = load { i64, i8* }*, { i64, i8* }** %2003
  %2076 = call i64 @nyx_array_length({ i64, i8* }* %2075)
  %2077 = icmp slt i64 %2074, %2076
  br i1 %2077, label %while_body436, label %while_end437
while_body436:
  %2078 = load { i64, i8* }*, { i64, i8* }** %2003
  %2079 = load i64, i64* %2061
  %2080 = call i64 @nyx_array_get({ i64, i8* }* %2078, i64 %2079)
  %2081 = inttoptr i64 %2080 to { i64, i8* }*
  %2082 = alloca { i64, i8* }*
  store { i64, i8* }* %2081, { i64, i8* }** %2082
  %2083 = load { i64, i8* }*, { i64, i8* }** %2082
  %2084 = call i64 @nyx_array_get({ i64, i8* }* %2083, i64 0)
  %2085 = inttoptr i64 %2084 to %nyx_string*
  %2086 = alloca %nyx_string*
  store %nyx_string* %2085, %nyx_string** %2086
  %2087 = load { i64, i8* }*, { i64, i8* }** %2082
  %2088 = call i64 @nyx_array_get({ i64, i8* }* %2087, i64 1)
  %2089 = inttoptr i64 %2088 to { i64, i8* }*
  %2090 = alloca { i64, i8* }*
  store { i64, i8* }* %2089, { i64, i8* }** %2090
  %2091 = load %nyx_string*, %nyx_string** %2086
  %2092 = alloca %nyx_string*
  store %nyx_string* %2091, %nyx_string** %2092
  %2093 = load { i64, i8* }*, { i64, i8* }** %2090
  %2094 = call i64 @nyx_array_length({ i64, i8* }* %2093)
  %2095 = icmp sgt i64 %2094, 0
  br i1 %2095, label %then438, label %else439
then438:
  %2096 = load %nyx_string*, %nyx_string** %2092
  %2097 = load %nyx_string*, %nyx_string** %2064
  %2098 = call %nyx_string* @nyx_string_concat(%nyx_string* %2096, %nyx_string* %2097)
  store %nyx_string* %2098, %nyx_string** %2092
  %2099 = alloca i64
  store i64 0, i64* %2099
  br label %while_cond441
while_cond441:
  %2100 = load i64, i64* %2099
  %2101 = load { i64, i8* }*, { i64, i8* }** %2090
  %2102 = call i64 @nyx_array_length({ i64, i8* }* %2101)
  %2103 = icmp slt i64 %2100, %2102
  br i1 %2103, label %while_body442, label %while_end443
while_body442:
  %2104 = load i64, i64* %2099
  %2105 = icmp sgt i64 %2104, 0
  br i1 %2105, label %then444, label %else445
then444:
  %2106 = load %nyx_string*, %nyx_string** %2092
  %2107 = load %nyx_string*, %nyx_string** %2067
  %2108 = call %nyx_string* @nyx_string_concat(%nyx_string* %2106, %nyx_string* %2107)
  store %nyx_string* %2108, %nyx_string** %2092
  br label %merge446
else445:
  br label %merge446
merge446:
  %2109 = load { i64, i8* }*, { i64, i8* }** %2090
  %2110 = load i64, i64* %2099
  %2111 = call i64 @nyx_array_get({ i64, i8* }* %2109, i64 %2110)
  %2112 = inttoptr i64 %2111 to %nyx_string*
  %2113 = alloca %nyx_string*
  store %nyx_string* %2112, %nyx_string** %2113
  %2114 = load %nyx_string*, %nyx_string** %2092
  %2115 = load %nyx_string*, %nyx_string** %2113
  %2116 = call %nyx_string* @nyx_string_concat(%nyx_string* %2114, %nyx_string* %2115)
  store %nyx_string* %2116, %nyx_string** %2092
  %2117 = load i64, i64* %2099
  %2118 = add i64 %2117, 1
  store i64 %2118, i64* %2099
  br label %while_cond441
while_end443:
  %2119 = load %nyx_string*, %nyx_string** %2092
  %2120 = load %nyx_string*, %nyx_string** %2070
  %2121 = call %nyx_string* @nyx_string_concat(%nyx_string* %2119, %nyx_string* %2120)
  store %nyx_string* %2121, %nyx_string** %2092
  br label %merge440
else439:
  br label %merge440
merge440:
  %2122 = load i64, i64* %2061
  %2123 = load { i64, i8* }*, { i64, i8* }** %2003
  %2124 = call i64 @nyx_array_length({ i64, i8* }* %2123)
  %2125 = sub i64 %2124, 1
  %2126 = icmp slt i64 %2122, %2125
  br i1 %2126, label %then447, label %else448
then447:
  %2127 = load %nyx_string*, %nyx_string** %2092
  %2128 = load %nyx_string*, %nyx_string** %2073
  %2129 = call %nyx_string* @nyx_string_concat(%nyx_string* %2127, %nyx_string* %2128)
  store %nyx_string* %2129, %nyx_string** %2092
  br label %merge449
else448:
  br label %merge449
merge449:
  %2130 = load %nyx_string*, %nyx_string** %2092
  %2131 = call i64 @out_line(%nyx_string* %2130)
  %2132 = load i64, i64* %2061
  %2133 = add i64 %2132, 1
  store i64 %2133, i64* %2061
  br label %while_cond435
while_end437:
  %2134 = load i64, i64* @g_indent
  %2135 = sub i64 %2134, 1
  store i64 %2135, i64* @g_indent
  %2136 = getelementptr [2 x i8], [2 x i8]* @.str275, i32 0, i32 0
  %2137 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str275.c, i8* %2136)
  %2138 = call i64 @out_line(%nyx_string* %2137)
  %2139 = call i64 @out_empty()
  ret i64 0
}

define internal i64 @fmt_trait(
{ i64, i8* }* %node.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %2140 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %2141 = call { i64, i8* }* @node_data({ i64, i8* }* %2140)
  %2142 = alloca { i64, i8* }*
  store { i64, i8* }* %2141, { i64, i8* }** %2142
  %2143 = load { i64, i8* }*, { i64, i8* }** %2142
  %2144 = call i64 @nyx_array_get({ i64, i8* }* %2143, i64 0)
  %2145 = inttoptr i64 %2144 to %nyx_string*
  %2146 = alloca %nyx_string*
  store %nyx_string* %2145, %nyx_string** %2146
  %2147 = load { i64, i8* }*, { i64, i8* }** %2142
  %2148 = call i64 @nyx_array_get({ i64, i8* }* %2147, i64 1)
  %2149 = inttoptr i64 %2148 to { i64, i8* }*
  %2150 = alloca { i64, i8* }*
  store { i64, i8* }* %2149, { i64, i8* }** %2150
  %2151 = load { i64, i8* }*, { i64, i8* }** %2142
  %2152 = call i64 @nyx_array_get({ i64, i8* }* %2151, i64 2)
  %2153 = inttoptr i64 %2152 to { i64, i8* }*
  %2154 = alloca { i64, i8* }*
  store { i64, i8* }* %2153, { i64, i8* }** %2154
  %2155 = getelementptr [7 x i8], [7 x i8]* @.str276, i32 0, i32 0
  %2156 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str276.c, i8* %2155)
  %2157 = load %nyx_string*, %nyx_string** %2146
  %2158 = call %nyx_string* @nyx_string_concat(%nyx_string* %2156, %nyx_string* %2157)
  %2159 = alloca %nyx_string*
  store %nyx_string* %2158, %nyx_string** %2159
  %2160 = load { i64, i8* }*, { i64, i8* }** %2150
  %2161 = call i64 @nyx_array_length({ i64, i8* }* %2160)
  %2162 = icmp sgt i64 %2161, 0
  br i1 %2162, label %then450, label %else451
then450:
  %2163 = load %nyx_string*, %nyx_string** %2159
  %2164 = getelementptr [3 x i8], [3 x i8]* @.str277, i32 0, i32 0
  %2165 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str277.c, i8* %2164)
  %2166 = call %nyx_string* @nyx_string_concat(%nyx_string* %2163, %nyx_string* %2165)
  store %nyx_string* %2166, %nyx_string** %2159
  %2167 = alloca i64
  store i64 0, i64* %2167
  %2168 = getelementptr [4 x i8], [4 x i8]* @.str278, i32 0, i32 0
  %2169 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str278.c, i8* %2168)
  %2170 = alloca %nyx_string*
  store %nyx_string* %2169, %nyx_string** %2170
  br label %while_cond453
while_cond453:
  %2171 = load i64, i64* %2167
  %2172 = load { i64, i8* }*, { i64, i8* }** %2150
  %2173 = call i64 @nyx_array_length({ i64, i8* }* %2172)
  %2174 = icmp slt i64 %2171, %2173
  br i1 %2174, label %while_body454, label %while_end455
while_body454:
  %2175 = load i64, i64* %2167
  %2176 = icmp sgt i64 %2175, 0
  br i1 %2176, label %then456, label %else457
then456:
  %2177 = load %nyx_string*, %nyx_string** %2159
  %2178 = load %nyx_string*, %nyx_string** %2170
  %2179 = call %nyx_string* @nyx_string_concat(%nyx_string* %2177, %nyx_string* %2178)
  store %nyx_string* %2179, %nyx_string** %2159
  br label %merge458
else457:
  br label %merge458
merge458:
  %2180 = load { i64, i8* }*, { i64, i8* }** %2150
  %2181 = load i64, i64* %2167
  %2182 = call i64 @nyx_array_get({ i64, i8* }* %2180, i64 %2181)
  %2183 = inttoptr i64 %2182 to %nyx_string*
  %2184 = alloca %nyx_string*
  store %nyx_string* %2183, %nyx_string** %2184
  %2185 = load %nyx_string*, %nyx_string** %2159
  %2186 = load %nyx_string*, %nyx_string** %2184
  %2187 = call %nyx_string* @nyx_string_concat(%nyx_string* %2185, %nyx_string* %2186)
  store %nyx_string* %2187, %nyx_string** %2159
  %2188 = load i64, i64* %2167
  %2189 = add i64 %2188, 1
  store i64 %2189, i64* %2167
  br label %while_cond453
while_end455:
  br label %merge452
else451:
  br label %merge452
merge452:
  %2190 = load %nyx_string*, %nyx_string** %2159
  %2191 = getelementptr [3 x i8], [3 x i8]* @.str279, i32 0, i32 0
  %2192 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str279.c, i8* %2191)
  %2193 = call %nyx_string* @nyx_string_concat(%nyx_string* %2190, %nyx_string* %2192)
  %2194 = call i64 @out_line(%nyx_string* %2193)
  %2195 = load i64, i64* @g_indent
  %2196 = add i64 %2195, 1
  store i64 %2196, i64* @g_indent
  %2197 = alloca i64
  store i64 0, i64* %2197
  %2198 = getelementptr [15 x i8], [15 x i8]* @.str280, i32 0, i32 0
  %2199 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str280.c, i8* %2198)
  %2200 = alloca %nyx_string*
  store %nyx_string* %2199, %nyx_string** %2200
  %2201 = getelementptr [6 x i8], [6 x i8]* @.str281, i32 0, i32 0
  %2202 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str281.c, i8* %2201)
  %2203 = alloca %nyx_string*
  store %nyx_string* %2202, %nyx_string** %2203
  %2204 = getelementptr [2 x i8], [2 x i8]* @.str282, i32 0, i32 0
  %2205 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str282.c, i8* %2204)
  %2206 = alloca %nyx_string*
  store %nyx_string* %2205, %nyx_string** %2206
  %2207 = getelementptr [3 x i8], [3 x i8]* @.str283, i32 0, i32 0
  %2208 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str283.c, i8* %2207)
  %2209 = alloca %nyx_string*
  store %nyx_string* %2208, %nyx_string** %2209
  %2210 = getelementptr [2 x i8], [2 x i8]* @.str284, i32 0, i32 0
  %2211 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str284.c, i8* %2210)
  %2212 = alloca %nyx_string*
  store %nyx_string* %2211, %nyx_string** %2212
  %2213 = getelementptr [4 x i8], [4 x i8]* @.str285, i32 0, i32 0
  %2214 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str285.c, i8* %2213)
  %2215 = alloca %nyx_string*
  store %nyx_string* %2214, %nyx_string** %2215
  %2216 = getelementptr [2 x i8], [2 x i8]* @.str286, i32 0, i32 0
  %2217 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str286.c, i8* %2216)
  %2218 = alloca %nyx_string*
  store %nyx_string* %2217, %nyx_string** %2218
  %2219 = getelementptr [1 x i8], [1 x i8]* @.str287, i32 0, i32 0
  %2220 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str287.c, i8* %2219)
  %2221 = alloca %nyx_string*
  store %nyx_string* %2220, %nyx_string** %2221
  %2222 = getelementptr [3 x i8], [3 x i8]* @.str288, i32 0, i32 0
  %2223 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str288.c, i8* %2222)
  %2224 = alloca %nyx_string*
  store %nyx_string* %2223, %nyx_string** %2224
  %2225 = getelementptr [2 x i8], [2 x i8]* @.str289, i32 0, i32 0
  %2226 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str289.c, i8* %2225)
  %2227 = alloca %nyx_string*
  store %nyx_string* %2226, %nyx_string** %2227
  %2228 = getelementptr [5 x i8], [5 x i8]* @.str290, i32 0, i32 0
  %2229 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str290.c, i8* %2228)
  %2230 = alloca %nyx_string*
  store %nyx_string* %2229, %nyx_string** %2230
  %2231 = getelementptr [4 x i8], [4 x i8]* @.str291, i32 0, i32 0
  %2232 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str291.c, i8* %2231)
  %2233 = alloca %nyx_string*
  store %nyx_string* %2232, %nyx_string** %2233
  %2234 = getelementptr [2 x i8], [2 x i8]* @.str292, i32 0, i32 0
  %2235 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str292.c, i8* %2234)
  %2236 = alloca %nyx_string*
  store %nyx_string* %2235, %nyx_string** %2236
  br label %while_cond459
while_cond459:
  %2237 = load i64, i64* %2197
  %2238 = load { i64, i8* }*, { i64, i8* }** %2154
  %2239 = call i64 @nyx_array_length({ i64, i8* }* %2238)
  %2240 = icmp slt i64 %2237, %2239
  br i1 %2240, label %while_body460, label %while_end461
while_body460:
  %2241 = load { i64, i8* }*, { i64, i8* }** %2154
  %2242 = load i64, i64* %2197
  %2243 = call i64 @nyx_array_get({ i64, i8* }* %2241, i64 %2242)
  %2244 = inttoptr i64 %2243 to { i64, i8* }*
  %2245 = alloca { i64, i8* }*
  store { i64, i8* }* %2244, { i64, i8* }** %2245
  %2246 = load { i64, i8* }*, { i64, i8* }** %2245
  %2247 = call i64 @nyx_array_get({ i64, i8* }* %2246, i64 0)
  %2248 = inttoptr i64 %2247 to %nyx_string*
  %2249 = alloca %nyx_string*
  store %nyx_string* %2248, %nyx_string** %2249
  %2250 = load %nyx_string*, %nyx_string** %2249
  %2251 = load %nyx_string*, %nyx_string** %2200
  %2252 = call i1 @nyx_string_equals(%nyx_string* %2250, %nyx_string* %2251)
  br i1 %2252, label %then462, label %else463
then462:
  %2253 = load { i64, i8* }*, { i64, i8* }** %2245
  %2254 = call i64 @nyx_array_get({ i64, i8* }* %2253, i64 1)
  %2255 = inttoptr i64 %2254 to %nyx_string*
  %2256 = alloca %nyx_string*
  store %nyx_string* %2255, %nyx_string** %2256
  %2257 = load { i64, i8* }*, { i64, i8* }** %2245
  %2258 = call i64 @nyx_array_get({ i64, i8* }* %2257, i64 2)
  %2259 = inttoptr i64 %2258 to { i64, i8* }*
  %2260 = alloca { i64, i8* }*
  store { i64, i8* }* %2259, { i64, i8* }** %2260
  %2261 = load %nyx_string*, %nyx_string** %2203
  %2262 = load %nyx_string*, %nyx_string** %2256
  %2263 = call %nyx_string* @nyx_string_concat(%nyx_string* %2261, %nyx_string* %2262)
  %2264 = alloca %nyx_string*
  store %nyx_string* %2263, %nyx_string** %2264
  %2265 = load { i64, i8* }*, { i64, i8* }** %2260
  %2266 = call i64 @nyx_array_length({ i64, i8* }* %2265)
  %2267 = icmp sgt i64 %2266, 0
  br i1 %2267, label %then465, label %else466
then465:
  %2268 = load %nyx_string*, %nyx_string** %2264
  %2269 = load %nyx_string*, %nyx_string** %2206
  %2270 = call %nyx_string* @nyx_string_concat(%nyx_string* %2268, %nyx_string* %2269)
  store %nyx_string* %2270, %nyx_string** %2264
  %2271 = alloca i64
  store i64 0, i64* %2271
  br label %while_cond468
while_cond468:
  %2272 = load i64, i64* %2271
  %2273 = load { i64, i8* }*, { i64, i8* }** %2260
  %2274 = call i64 @nyx_array_length({ i64, i8* }* %2273)
  %2275 = icmp slt i64 %2272, %2274
  br i1 %2275, label %while_body469, label %while_end470
while_body469:
  %2276 = load i64, i64* %2271
  %2277 = icmp sgt i64 %2276, 0
  br i1 %2277, label %then471, label %else472
then471:
  %2278 = load %nyx_string*, %nyx_string** %2264
  %2279 = load %nyx_string*, %nyx_string** %2209
  %2280 = call %nyx_string* @nyx_string_concat(%nyx_string* %2278, %nyx_string* %2279)
  store %nyx_string* %2280, %nyx_string** %2264
  br label %merge473
else472:
  br label %merge473
merge473:
  %2281 = load { i64, i8* }*, { i64, i8* }** %2260
  %2282 = load i64, i64* %2271
  %2283 = call i64 @nyx_array_get({ i64, i8* }* %2281, i64 %2282)
  %2284 = inttoptr i64 %2283 to %nyx_string*
  %2285 = alloca %nyx_string*
  store %nyx_string* %2284, %nyx_string** %2285
  %2286 = load %nyx_string*, %nyx_string** %2264
  %2287 = load %nyx_string*, %nyx_string** %2285
  %2288 = call %nyx_string* @nyx_string_concat(%nyx_string* %2286, %nyx_string* %2287)
  store %nyx_string* %2288, %nyx_string** %2264
  %2289 = load i64, i64* %2271
  %2290 = add i64 %2289, 1
  store i64 %2290, i64* %2271
  br label %while_cond468
while_end470:
  %2291 = load %nyx_string*, %nyx_string** %2264
  %2292 = load %nyx_string*, %nyx_string** %2212
  %2293 = call %nyx_string* @nyx_string_concat(%nyx_string* %2291, %nyx_string* %2292)
  store %nyx_string* %2293, %nyx_string** %2264
  br label %merge467
else466:
  br label %merge467
merge467:
  %2294 = load %nyx_string*, %nyx_string** %2264
  %2295 = call i64 @out_line(%nyx_string* %2294)
  br label %merge464
else463:
  %2296 = load { i64, i8* }*, { i64, i8* }** %2245
  %2297 = call i64 @nyx_array_get({ i64, i8* }* %2296, i64 1)
  %2298 = inttoptr i64 %2297 to { i64, i8* }*
  %2299 = alloca { i64, i8* }*
  store { i64, i8* }* %2298, { i64, i8* }** %2299
  %2300 = load { i64, i8* }*, { i64, i8* }** %2245
  %2301 = call i64 @nyx_array_get({ i64, i8* }* %2300, i64 2)
  %2302 = inttoptr i64 %2301 to %nyx_string*
  %2303 = alloca %nyx_string*
  store %nyx_string* %2302, %nyx_string** %2303
  %2304 = load %nyx_string*, %nyx_string** %2215
  %2305 = load %nyx_string*, %nyx_string** %2249
  %2306 = call %nyx_string* @nyx_string_concat(%nyx_string* %2304, %nyx_string* %2305)
  %2307 = load %nyx_string*, %nyx_string** %2218
  %2308 = call %nyx_string* @nyx_string_concat(%nyx_string* %2306, %nyx_string* %2307)
  %2309 = alloca %nyx_string*
  store %nyx_string* %2308, %nyx_string** %2309
  %2310 = alloca i64
  store i64 0, i64* %2310
  br label %while_cond474
while_cond474:
  %2311 = load i64, i64* %2310
  %2312 = load { i64, i8* }*, { i64, i8* }** %2299
  %2313 = call i64 @nyx_array_length({ i64, i8* }* %2312)
  %2314 = icmp slt i64 %2311, %2313
  br i1 %2314, label %while_body475, label %while_end476
while_body475:
  %2315 = load i64, i64* %2310
  %2316 = icmp sgt i64 %2315, 0
  br i1 %2316, label %then477, label %else478
then477:
  %2317 = load %nyx_string*, %nyx_string** %2309
  %2318 = load %nyx_string*, %nyx_string** %2209
  %2319 = call %nyx_string* @nyx_string_concat(%nyx_string* %2317, %nyx_string* %2318)
  store %nyx_string* %2319, %nyx_string** %2309
  br label %merge479
else478:
  br label %merge479
merge479:
  %2320 = load { i64, i8* }*, { i64, i8* }** %2299
  %2321 = load i64, i64* %2310
  %2322 = call i64 @nyx_array_get({ i64, i8* }* %2320, i64 %2321)
  %2323 = inttoptr i64 %2322 to { i64, i8* }*
  %2324 = alloca { i64, i8* }*
  store { i64, i8* }* %2323, { i64, i8* }** %2324
  %2325 = load { i64, i8* }*, { i64, i8* }** %2324
  %2326 = call i64 @nyx_array_get({ i64, i8* }* %2325, i64 0)
  %2327 = inttoptr i64 %2326 to %nyx_string*
  %2328 = alloca %nyx_string*
  store %nyx_string* %2327, %nyx_string** %2328
  %2329 = load { i64, i8* }*, { i64, i8* }** %2324
  %2330 = call i64 @nyx_array_get({ i64, i8* }* %2329, i64 1)
  %2331 = inttoptr i64 %2330 to %nyx_string*
  %2332 = alloca %nyx_string*
  store %nyx_string* %2331, %nyx_string** %2332
  %2333 = load %nyx_string*, %nyx_string** %2309
  %2334 = load %nyx_string*, %nyx_string** %2328
  %2335 = call %nyx_string* @nyx_string_concat(%nyx_string* %2333, %nyx_string* %2334)
  store %nyx_string* %2335, %nyx_string** %2309
  %2336 = load %nyx_string*, %nyx_string** %2332
  %2337 = load %nyx_string*, %nyx_string** %2221
  %2338 = call i1 @nyx_string_equals(%nyx_string* %2336, %nyx_string* %2337)
  %2339 = xor i1 %2338, true
  br i1 %2339, label %then480, label %else481
then480:
  %2340 = load %nyx_string*, %nyx_string** %2309
  %2341 = load %nyx_string*, %nyx_string** %2224
  %2342 = call %nyx_string* @nyx_string_concat(%nyx_string* %2340, %nyx_string* %2341)
  %2343 = load %nyx_string*, %nyx_string** %2332
  %2344 = call %nyx_string* @nyx_string_concat(%nyx_string* %2342, %nyx_string* %2343)
  store %nyx_string* %2344, %nyx_string** %2309
  br label %merge482
else481:
  br label %merge482
merge482:
  %2345 = load i64, i64* %2310
  %2346 = add i64 %2345, 1
  store i64 %2346, i64* %2310
  br label %while_cond474
while_end476:
  %2347 = load %nyx_string*, %nyx_string** %2309
  %2348 = load %nyx_string*, %nyx_string** %2227
  %2349 = call %nyx_string* @nyx_string_concat(%nyx_string* %2347, %nyx_string* %2348)
  store %nyx_string* %2349, %nyx_string** %2309
  %2350 = load %nyx_string*, %nyx_string** %2303
  %2351 = load %nyx_string*, %nyx_string** %2221
  %2352 = call i1 @nyx_string_equals(%nyx_string* %2350, %nyx_string* %2351)
  %2353 = xor i1 %2352, true
  br i1 %2353, label %then483, label %else484
then483:
  %2354 = load %nyx_string*, %nyx_string** %2309
  %2355 = load %nyx_string*, %nyx_string** %2230
  %2356 = call %nyx_string* @nyx_string_concat(%nyx_string* %2354, %nyx_string* %2355)
  %2357 = load %nyx_string*, %nyx_string** %2303
  %2358 = call %nyx_string* @nyx_string_concat(%nyx_string* %2356, %nyx_string* %2357)
  store %nyx_string* %2358, %nyx_string** %2309
  br label %merge485
else484:
  br label %merge485
merge485:
  %2359 = load { i64, i8* }*, { i64, i8* }** %2245
  %2360 = call i64 @nyx_array_length({ i64, i8* }* %2359)
  %2361 = icmp sgt i64 %2360, 3
  br i1 %2361, label %then486, label %else487
then486:
  %2362 = load { i64, i8* }*, { i64, i8* }** %2245
  %2363 = call i64 @nyx_array_get({ i64, i8* }* %2362, i64 3)
  %2364 = inttoptr i64 %2363 to { i64, i8* }*
  %2365 = alloca { i64, i8* }*
  store { i64, i8* }* %2364, { i64, i8* }** %2365
  %2366 = call %nyx_string* @indent_str()
  %2367 = load %nyx_string*, %nyx_string** %2309
  %2368 = call %nyx_string* @nyx_string_concat(%nyx_string* %2366, %nyx_string* %2367)
  %2369 = load %nyx_string*, %nyx_string** %2233
  %2370 = call %nyx_string* @nyx_string_concat(%nyx_string* %2368, %nyx_string* %2369)
  %2371 = call i64 @out(%nyx_string* %2370)
  %2372 = load i64, i64* @g_indent
  %2373 = add i64 %2372, 1
  store i64 %2373, i64* @g_indent
  %2374 = load { i64, i8* }*, { i64, i8* }** %2365
  %2375 = call i64 @fmt_block_stmts({ i64, i8* }* %2374)
  %2376 = load i64, i64* @g_indent
  %2377 = sub i64 %2376, 1
  store i64 %2377, i64* @g_indent
  %2378 = load %nyx_string*, %nyx_string** %2236
  %2379 = call i64 @out_line(%nyx_string* %2378)
  br label %merge488
else487:
  %2380 = load %nyx_string*, %nyx_string** %2309
  %2381 = call i64 @out_line(%nyx_string* %2380)
  br label %merge488
merge488:
  br label %merge464
merge464:
  %2382 = load i64, i64* %2197
  %2383 = add i64 %2382, 1
  store i64 %2383, i64* %2197
  br label %while_cond459
while_end461:
  %2384 = load i64, i64* @g_indent
  %2385 = sub i64 %2384, 1
  store i64 %2385, i64* @g_indent
  %2386 = getelementptr [2 x i8], [2 x i8]* @.str293, i32 0, i32 0
  %2387 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str293.c, i8* %2386)
  %2388 = call i64 @out_line(%nyx_string* %2387)
  %2389 = call i64 @out_empty()
  ret i64 0
}

define internal i64 @fmt_impl(
{ i64, i8* }* %node.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %2390 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %2391 = call { i64, i8* }* @node_data({ i64, i8* }* %2390)
  %2392 = alloca { i64, i8* }*
  store { i64, i8* }* %2391, { i64, i8* }** %2392
  %2393 = load { i64, i8* }*, { i64, i8* }** %2392
  %2394 = call i64 @nyx_array_get({ i64, i8* }* %2393, i64 0)
  %2395 = inttoptr i64 %2394 to %nyx_string*
  %2396 = alloca %nyx_string*
  store %nyx_string* %2395, %nyx_string** %2396
  %2397 = load { i64, i8* }*, { i64, i8* }** %2392
  %2398 = call i64 @nyx_array_get({ i64, i8* }* %2397, i64 1)
  %2399 = inttoptr i64 %2398 to { i64, i8* }*
  %2400 = alloca { i64, i8* }*
  store { i64, i8* }* %2399, { i64, i8* }** %2400
  %2401 = call { i64, i8* }* @nyx_array_new_ptr()
  %2402 = alloca { i64, i8* }*
  store { i64, i8* }* %2401, { i64, i8* }** %2402
  %2403 = load { i64, i8* }*, { i64, i8* }** %2392
  %2404 = call i64 @nyx_array_length({ i64, i8* }* %2403)
  %2405 = icmp sgt i64 %2404, 2
  br i1 %2405, label %then489, label %else490
then489:
  %2406 = load { i64, i8* }*, { i64, i8* }** %2392
  %2407 = call i64 @nyx_array_get({ i64, i8* }* %2406, i64 2)
  %2408 = inttoptr i64 %2407 to { i64, i8* }*
  %2409 = alloca { i64, i8* }*
  store { i64, i8* }* %2408, { i64, i8* }** %2409
  %2410 = load { i64, i8* }*, { i64, i8* }** %2409
  store { i64, i8* }* %2410, { i64, i8* }** %2402
  br label %merge491
else490:
  br label %merge491
merge491:
  %2411 = getelementptr [5 x i8], [5 x i8]* @.str294, i32 0, i32 0
  %2412 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str294.c, i8* %2411)
  %2413 = alloca %nyx_string*
  store %nyx_string* %2412, %nyx_string** %2413
  %2414 = load { i64, i8* }*, { i64, i8* }** %2402
  %2415 = call i64 @nyx_array_length({ i64, i8* }* %2414)
  %2416 = icmp sgt i64 %2415, 0
  br i1 %2416, label %then492, label %else493
then492:
  %2417 = load %nyx_string*, %nyx_string** %2413
  %2418 = getelementptr [2 x i8], [2 x i8]* @.str295, i32 0, i32 0
  %2419 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str295.c, i8* %2418)
  %2420 = call %nyx_string* @nyx_string_concat(%nyx_string* %2417, %nyx_string* %2419)
  store %nyx_string* %2420, %nyx_string** %2413
  %2421 = getelementptr [1 x i8], [1 x i8]* @.str296, i32 0, i32 0
  %2422 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str296.c, i8* %2421)
  %2423 = alloca %nyx_string*
  store %nyx_string* %2422, %nyx_string** %2423
  %2424 = alloca i64
  store i64 0, i64* %2424
  %2425 = getelementptr [3 x i8], [3 x i8]* @.str297, i32 0, i32 0
  %2426 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str297.c, i8* %2425)
  %2427 = alloca %nyx_string*
  store %nyx_string* %2426, %nyx_string** %2427
  br label %while_cond495
while_cond495:
  %2428 = load i64, i64* %2424
  %2429 = load { i64, i8* }*, { i64, i8* }** %2402
  %2430 = call i64 @nyx_array_length({ i64, i8* }* %2429)
  %2431 = icmp slt i64 %2428, %2430
  br i1 %2431, label %while_body496, label %while_end497
while_body496:
  %2432 = load { i64, i8* }*, { i64, i8* }** %2402
  %2433 = load i64, i64* %2424
  %2434 = call i64 @nyx_array_get({ i64, i8* }* %2432, i64 %2433)
  %2435 = inttoptr i64 %2434 to %nyx_string*
  %2436 = alloca %nyx_string*
  store %nyx_string* %2435, %nyx_string** %2436
  %2437 = load i64, i64* %2424
  %2438 = icmp sgt i64 %2437, 0
  br i1 %2438, label %then498, label %else499
then498:
  %2439 = load %nyx_string*, %nyx_string** %2413
  %2440 = load %nyx_string*, %nyx_string** %2427
  %2441 = call %nyx_string* @nyx_string_concat(%nyx_string* %2439, %nyx_string* %2440)
  store %nyx_string* %2441, %nyx_string** %2413
  %2442 = load %nyx_string*, %nyx_string** %2423
  %2443 = load %nyx_string*, %nyx_string** %2427
  %2444 = call %nyx_string* @nyx_string_concat(%nyx_string* %2442, %nyx_string* %2443)
  store %nyx_string* %2444, %nyx_string** %2423
  br label %merge500
else499:
  br label %merge500
merge500:
  %2445 = load %nyx_string*, %nyx_string** %2413
  %2446 = load %nyx_string*, %nyx_string** %2436
  %2447 = call %nyx_string* @nyx_string_concat(%nyx_string* %2445, %nyx_string* %2446)
  store %nyx_string* %2447, %nyx_string** %2413
  %2448 = load %nyx_string*, %nyx_string** %2423
  %2449 = load %nyx_string*, %nyx_string** %2436
  %2450 = call %nyx_string* @tp_name_only(%nyx_string* %2449)
  %2451 = call %nyx_string* @nyx_string_concat(%nyx_string* %2448, %nyx_string* %2450)
  store %nyx_string* %2451, %nyx_string** %2423
  %2452 = load i64, i64* %2424
  %2453 = add i64 %2452, 1
  store i64 %2453, i64* %2424
  br label %while_cond495
while_end497:
  %2454 = load %nyx_string*, %nyx_string** %2413
  %2455 = getelementptr [3 x i8], [3 x i8]* @.str298, i32 0, i32 0
  %2456 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str298.c, i8* %2455)
  %2457 = call %nyx_string* @nyx_string_concat(%nyx_string* %2454, %nyx_string* %2456)
  %2458 = load %nyx_string*, %nyx_string** %2396
  %2459 = call %nyx_string* @nyx_string_concat(%nyx_string* %2457, %nyx_string* %2458)
  %2460 = getelementptr [2 x i8], [2 x i8]* @.str299, i32 0, i32 0
  %2461 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str299.c, i8* %2460)
  %2462 = call %nyx_string* @nyx_string_concat(%nyx_string* %2459, %nyx_string* %2461)
  %2463 = load %nyx_string*, %nyx_string** %2423
  %2464 = call %nyx_string* @nyx_string_concat(%nyx_string* %2462, %nyx_string* %2463)
  %2465 = getelementptr [2 x i8], [2 x i8]* @.str300, i32 0, i32 0
  %2466 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str300.c, i8* %2465)
  %2467 = call %nyx_string* @nyx_string_concat(%nyx_string* %2464, %nyx_string* %2466)
  store %nyx_string* %2467, %nyx_string** %2413
  br label %merge494
else493:
  %2468 = load %nyx_string*, %nyx_string** %2413
  %2469 = getelementptr [2 x i8], [2 x i8]* @.str301, i32 0, i32 0
  %2470 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str301.c, i8* %2469)
  %2471 = call %nyx_string* @nyx_string_concat(%nyx_string* %2468, %nyx_string* %2470)
  %2472 = load %nyx_string*, %nyx_string** %2396
  %2473 = call %nyx_string* @nyx_string_concat(%nyx_string* %2471, %nyx_string* %2472)
  store %nyx_string* %2473, %nyx_string** %2413
  br label %merge494
merge494:
  %2474 = load %nyx_string*, %nyx_string** %2413
  %2475 = getelementptr [3 x i8], [3 x i8]* @.str302, i32 0, i32 0
  %2476 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str302.c, i8* %2475)
  %2477 = call %nyx_string* @nyx_string_concat(%nyx_string* %2474, %nyx_string* %2476)
  %2478 = call i64 @out_line(%nyx_string* %2477)
  %2479 = load i64, i64* @g_indent
  %2480 = add i64 %2479, 1
  store i64 %2480, i64* @g_indent
  %2481 = alloca i64
  store i64 0, i64* %2481
  %2482 = getelementptr [1 x i8], [1 x i8]* @.str303, i32 0, i32 0
  %2483 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str303.c, i8* %2482)
  %2484 = alloca %nyx_string*
  store %nyx_string* %2483, %nyx_string** %2484
  br label %while_cond501
while_cond501:
  %2485 = load i64, i64* %2481
  %2486 = load { i64, i8* }*, { i64, i8* }** %2400
  %2487 = call i64 @nyx_array_length({ i64, i8* }* %2486)
  %2488 = icmp slt i64 %2485, %2487
  br i1 %2488, label %while_body502, label %while_end503
while_body502:
  %2489 = load { i64, i8* }*, { i64, i8* }** %2400
  %2490 = load i64, i64* %2481
  %2491 = call i64 @nyx_array_get({ i64, i8* }* %2489, i64 %2490)
  %2492 = inttoptr i64 %2491 to { i64, i8* }*
  %2493 = alloca { i64, i8* }*
  store { i64, i8* }* %2492, { i64, i8* }** %2493
  %2494 = load { i64, i8* }*, { i64, i8* }** %2493
  %2495 = load %nyx_string*, %nyx_string** %2484
  %2496 = call i64 @fmt_function({ i64, i8* }* %2494, %nyx_string* %2495)
  %2497 = load i64, i64* %2481
  %2498 = add i64 %2497, 1
  store i64 %2498, i64* %2481
  br label %while_cond501
while_end503:
  %2499 = load i64, i64* @g_indent
  %2500 = sub i64 %2499, 1
  store i64 %2500, i64* @g_indent
  %2501 = getelementptr [2 x i8], [2 x i8]* @.str304, i32 0, i32 0
  %2502 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str304.c, i8* %2501)
  %2503 = call i64 @out_line(%nyx_string* %2502)
  %2504 = call i64 @out_empty()
  ret i64 0
}

define internal i64 @fmt_impl_trait(
{ i64, i8* }* %node.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %2505 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %2506 = call { i64, i8* }* @node_data({ i64, i8* }* %2505)
  %2507 = alloca { i64, i8* }*
  store { i64, i8* }* %2506, { i64, i8* }** %2507
  %2508 = load { i64, i8* }*, { i64, i8* }** %2507
  %2509 = call i64 @nyx_array_get({ i64, i8* }* %2508, i64 0)
  %2510 = inttoptr i64 %2509 to %nyx_string*
  %2511 = alloca %nyx_string*
  store %nyx_string* %2510, %nyx_string** %2511
  %2512 = load { i64, i8* }*, { i64, i8* }** %2507
  %2513 = call i64 @nyx_array_get({ i64, i8* }* %2512, i64 1)
  %2514 = inttoptr i64 %2513 to %nyx_string*
  %2515 = alloca %nyx_string*
  store %nyx_string* %2514, %nyx_string** %2515
  %2516 = load { i64, i8* }*, { i64, i8* }** %2507
  %2517 = call i64 @nyx_array_get({ i64, i8* }* %2516, i64 2)
  %2518 = inttoptr i64 %2517 to { i64, i8* }*
  %2519 = alloca { i64, i8* }*
  store { i64, i8* }* %2518, { i64, i8* }** %2519
  %2520 = call { i64, i8* }* @nyx_array_new_ptr()
  %2521 = alloca { i64, i8* }*
  store { i64, i8* }* %2520, { i64, i8* }** %2521
  %2522 = load { i64, i8* }*, { i64, i8* }** %2507
  %2523 = call i64 @nyx_array_length({ i64, i8* }* %2522)
  %2524 = icmp sgt i64 %2523, 3
  br i1 %2524, label %then504, label %else505
then504:
  %2525 = load { i64, i8* }*, { i64, i8* }** %2507
  %2526 = call i64 @nyx_array_get({ i64, i8* }* %2525, i64 3)
  %2527 = inttoptr i64 %2526 to { i64, i8* }*
  %2528 = alloca { i64, i8* }*
  store { i64, i8* }* %2527, { i64, i8* }** %2528
  %2529 = load { i64, i8* }*, { i64, i8* }** %2528
  store { i64, i8* }* %2529, { i64, i8* }** %2521
  br label %merge506
else505:
  br label %merge506
merge506:
  %2530 = getelementptr [6 x i8], [6 x i8]* @.str305, i32 0, i32 0
  %2531 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str305.c, i8* %2530)
  %2532 = load %nyx_string*, %nyx_string** %2511
  %2533 = call %nyx_string* @nyx_string_concat(%nyx_string* %2531, %nyx_string* %2532)
  %2534 = getelementptr [6 x i8], [6 x i8]* @.str306, i32 0, i32 0
  %2535 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str306.c, i8* %2534)
  %2536 = call %nyx_string* @nyx_string_concat(%nyx_string* %2533, %nyx_string* %2535)
  %2537 = load %nyx_string*, %nyx_string** %2515
  %2538 = call %nyx_string* @nyx_string_concat(%nyx_string* %2536, %nyx_string* %2537)
  %2539 = getelementptr [3 x i8], [3 x i8]* @.str307, i32 0, i32 0
  %2540 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str307.c, i8* %2539)
  %2541 = call %nyx_string* @nyx_string_concat(%nyx_string* %2538, %nyx_string* %2540)
  %2542 = call i64 @out_line(%nyx_string* %2541)
  %2543 = load i64, i64* @g_indent
  %2544 = add i64 %2543, 1
  store i64 %2544, i64* @g_indent
  %2545 = alloca i64
  store i64 0, i64* %2545
  %2546 = getelementptr [6 x i8], [6 x i8]* @.str308, i32 0, i32 0
  %2547 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str308.c, i8* %2546)
  %2548 = alloca %nyx_string*
  store %nyx_string* %2547, %nyx_string** %2548
  %2549 = getelementptr [4 x i8], [4 x i8]* @.str309, i32 0, i32 0
  %2550 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str309.c, i8* %2549)
  %2551 = alloca %nyx_string*
  store %nyx_string* %2550, %nyx_string** %2551
  br label %while_cond507
while_cond507:
  %2552 = load i64, i64* %2545
  %2553 = load { i64, i8* }*, { i64, i8* }** %2521
  %2554 = call i64 @nyx_array_length({ i64, i8* }* %2553)
  %2555 = icmp slt i64 %2552, %2554
  br i1 %2555, label %while_body508, label %while_end509
while_body508:
  %2556 = load { i64, i8* }*, { i64, i8* }** %2521
  %2557 = load i64, i64* %2545
  %2558 = call i64 @nyx_array_get({ i64, i8* }* %2556, i64 %2557)
  %2559 = inttoptr i64 %2558 to { i64, i8* }*
  %2560 = alloca { i64, i8* }*
  store { i64, i8* }* %2559, { i64, i8* }** %2560
  %2561 = load { i64, i8* }*, { i64, i8* }** %2560
  %2562 = call i64 @nyx_array_get({ i64, i8* }* %2561, i64 0)
  %2563 = inttoptr i64 %2562 to %nyx_string*
  %2564 = alloca %nyx_string*
  store %nyx_string* %2563, %nyx_string** %2564
  %2565 = load { i64, i8* }*, { i64, i8* }** %2560
  %2566 = call i64 @nyx_array_get({ i64, i8* }* %2565, i64 1)
  %2567 = inttoptr i64 %2566 to %nyx_string*
  %2568 = alloca %nyx_string*
  store %nyx_string* %2567, %nyx_string** %2568
  %2569 = load %nyx_string*, %nyx_string** %2548
  %2570 = load %nyx_string*, %nyx_string** %2564
  %2571 = call %nyx_string* @nyx_string_concat(%nyx_string* %2569, %nyx_string* %2570)
  %2572 = load %nyx_string*, %nyx_string** %2551
  %2573 = call %nyx_string* @nyx_string_concat(%nyx_string* %2571, %nyx_string* %2572)
  %2574 = load %nyx_string*, %nyx_string** %2568
  %2575 = call %nyx_string* @nyx_string_concat(%nyx_string* %2573, %nyx_string* %2574)
  %2576 = call i64 @out_line(%nyx_string* %2575)
  %2577 = load i64, i64* %2545
  %2578 = add i64 %2577, 1
  store i64 %2578, i64* %2545
  br label %while_cond507
while_end509:
  %2579 = load { i64, i8* }*, { i64, i8* }** %2521
  %2580 = call i64 @nyx_array_length({ i64, i8* }* %2579)
  %2581 = icmp sgt i64 %2580, 0
  br i1 %2581, label %then510, label %else511
then510:
  %2582 = call i64 @out_empty()
  br label %merge512
else511:
  br label %merge512
merge512:
  %2583 = alloca i64
  store i64 0, i64* %2583
  %2584 = getelementptr [1 x i8], [1 x i8]* @.str310, i32 0, i32 0
  %2585 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str310.c, i8* %2584)
  %2586 = alloca %nyx_string*
  store %nyx_string* %2585, %nyx_string** %2586
  br label %while_cond513
while_cond513:
  %2587 = load i64, i64* %2583
  %2588 = load { i64, i8* }*, { i64, i8* }** %2519
  %2589 = call i64 @nyx_array_length({ i64, i8* }* %2588)
  %2590 = icmp slt i64 %2587, %2589
  br i1 %2590, label %while_body514, label %while_end515
while_body514:
  %2591 = load { i64, i8* }*, { i64, i8* }** %2519
  %2592 = load i64, i64* %2583
  %2593 = call i64 @nyx_array_get({ i64, i8* }* %2591, i64 %2592)
  %2594 = inttoptr i64 %2593 to { i64, i8* }*
  %2595 = alloca { i64, i8* }*
  store { i64, i8* }* %2594, { i64, i8* }** %2595
  %2596 = load { i64, i8* }*, { i64, i8* }** %2595
  %2597 = load %nyx_string*, %nyx_string** %2586
  %2598 = call i64 @fmt_function({ i64, i8* }* %2596, %nyx_string* %2597)
  %2599 = load i64, i64* %2583
  %2600 = add i64 %2599, 1
  store i64 %2600, i64* %2583
  br label %while_cond513
while_end515:
  %2601 = load i64, i64* @g_indent
  %2602 = sub i64 %2601, 1
  store i64 %2602, i64* @g_indent
  %2603 = getelementptr [2 x i8], [2 x i8]* @.str311, i32 0, i32 0
  %2604 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str311.c, i8* %2603)
  %2605 = call i64 @out_line(%nyx_string* %2604)
  %2606 = call i64 @out_empty()
  ret i64 0
}

define internal i64 @fmt_import(
{ i64, i8* }* %node.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %2607 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %2608 = call { i64, i8* }* @node_data({ i64, i8* }* %2607)
  %2609 = alloca { i64, i8* }*
  store { i64, i8* }* %2608, { i64, i8* }** %2609
  %2610 = load { i64, i8* }*, { i64, i8* }** %2609
  %2611 = call i64 @nyx_array_get({ i64, i8* }* %2610, i64 0)
  %2612 = inttoptr i64 %2611 to { i64, i8* }*
  %2613 = alloca { i64, i8* }*
  store { i64, i8* }* %2612, { i64, i8* }** %2613
  %2614 = load { i64, i8* }*, { i64, i8* }** %2609
  %2615 = call i64 @nyx_array_get({ i64, i8* }* %2614, i64 1)
  %2616 = inttoptr i64 %2615 to %nyx_string*
  %2617 = alloca %nyx_string*
  store %nyx_string* %2616, %nyx_string** %2617
  %2618 = getelementptr [10 x i8], [10 x i8]* @.str312, i32 0, i32 0
  %2619 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str312.c, i8* %2618)
  %2620 = alloca %nyx_string*
  store %nyx_string* %2619, %nyx_string** %2620
  %2621 = alloca i64
  store i64 0, i64* %2621
  %2622 = getelementptr [3 x i8], [3 x i8]* @.str313, i32 0, i32 0
  %2623 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str313.c, i8* %2622)
  %2624 = alloca %nyx_string*
  store %nyx_string* %2623, %nyx_string** %2624
  br label %while_cond516
while_cond516:
  %2625 = load i64, i64* %2621
  %2626 = load { i64, i8* }*, { i64, i8* }** %2613
  %2627 = call i64 @nyx_array_length({ i64, i8* }* %2626)
  %2628 = icmp slt i64 %2625, %2627
  br i1 %2628, label %while_body517, label %while_end518
while_body517:
  %2629 = load i64, i64* %2621
  %2630 = icmp sgt i64 %2629, 0
  br i1 %2630, label %then519, label %else520
then519:
  %2631 = load %nyx_string*, %nyx_string** %2620
  %2632 = load %nyx_string*, %nyx_string** %2624
  %2633 = call %nyx_string* @nyx_string_concat(%nyx_string* %2631, %nyx_string* %2632)
  store %nyx_string* %2633, %nyx_string** %2620
  br label %merge521
else520:
  br label %merge521
merge521:
  %2634 = load { i64, i8* }*, { i64, i8* }** %2613
  %2635 = load i64, i64* %2621
  %2636 = call i64 @nyx_array_get({ i64, i8* }* %2634, i64 %2635)
  %2637 = inttoptr i64 %2636 to %nyx_string*
  %2638 = alloca %nyx_string*
  store %nyx_string* %2637, %nyx_string** %2638
  %2639 = load %nyx_string*, %nyx_string** %2620
  %2640 = load %nyx_string*, %nyx_string** %2638
  %2641 = call %nyx_string* @nyx_string_concat(%nyx_string* %2639, %nyx_string* %2640)
  store %nyx_string* %2641, %nyx_string** %2620
  %2642 = load i64, i64* %2621
  %2643 = add i64 %2642, 1
  store i64 %2643, i64* %2621
  br label %while_cond516
while_end518:
  %2644 = load %nyx_string*, %nyx_string** %2620
  %2645 = getelementptr [10 x i8], [10 x i8]* @.str314, i32 0, i32 0
  %2646 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str314.c, i8* %2645)
  %2647 = call %nyx_string* @nyx_string_concat(%nyx_string* %2644, %nyx_string* %2646)
  %2648 = load %nyx_string*, %nyx_string** %2617
  %2649 = call %nyx_string* @nyx_string_concat(%nyx_string* %2647, %nyx_string* %2648)
  %2650 = getelementptr [2 x i8], [2 x i8]* @.str315, i32 0, i32 0
  %2651 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str315.c, i8* %2650)
  %2652 = call %nyx_string* @nyx_string_concat(%nyx_string* %2649, %nyx_string* %2651)
  store %nyx_string* %2652, %nyx_string** %2620
  %2653 = load %nyx_string*, %nyx_string** %2620
  %2654 = call i64 @out_line(%nyx_string* %2653)
  ret i64 0
}

define internal i64 @fmt_block_stmts(
{ i64, i8* }* %node.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %2655 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %2656 = call %nyx_string* @node_type({ i64, i8* }* %2655)
  %2657 = getelementptr [6 x i8], [6 x i8]* @.str316, i32 0, i32 0
  %2658 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str316.c, i8* %2657)
  %2659 = call i1 @nyx_string_equals(%nyx_string* %2656, %nyx_string* %2658)
  br i1 %2659, label %then522, label %else523
then522:
  %2660 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %2661 = call { i64, i8* }* @node_data({ i64, i8* }* %2660)
  %2662 = alloca { i64, i8* }*
  store { i64, i8* }* %2661, { i64, i8* }** %2662
  %2663 = load { i64, i8* }*, { i64, i8* }** %2662
  %2664 = call i64 @nyx_array_get({ i64, i8* }* %2663, i64 0)
  %2665 = inttoptr i64 %2664 to { i64, i8* }*
  %2666 = alloca { i64, i8* }*
  store { i64, i8* }* %2665, { i64, i8* }** %2666
  %2667 = alloca i64
  store i64 0, i64* %2667
  br label %while_cond525
while_cond525:
  %2668 = load i64, i64* %2667
  %2669 = load { i64, i8* }*, { i64, i8* }** %2666
  %2670 = call i64 @nyx_array_length({ i64, i8* }* %2669)
  %2671 = icmp slt i64 %2668, %2670
  br i1 %2671, label %while_body526, label %while_end527
while_body526:
  %2672 = load { i64, i8* }*, { i64, i8* }** %2666
  %2673 = load i64, i64* %2667
  %2674 = call i64 @nyx_array_get({ i64, i8* }* %2672, i64 %2673)
  %2675 = inttoptr i64 %2674 to { i64, i8* }*
  %2676 = alloca { i64, i8* }*
  store { i64, i8* }* %2675, { i64, i8* }** %2676
  %2677 = load { i64, i8* }*, { i64, i8* }** %2676
  %2678 = call i64 @fmt_stmt({ i64, i8* }* %2677)
  %2679 = load i64, i64* %2667
  %2680 = add i64 %2679, 1
  store i64 %2680, i64* %2667
  br label %while_cond525
while_end527:
  br label %merge524
else523:
  %2681 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %2682 = call i64 @fmt_stmt({ i64, i8* }* %2681)
  br label %merge524
merge524:
  ret i64 0
}

define internal %nyx_string* @fmt_block_contents(
{ i64, i8* }* %node.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %2683 = load %nyx_string*, %nyx_string** @g_output
  %2684 = alloca %nyx_string*
  store %nyx_string* %2683, %nyx_string** %2684
  %2685 = getelementptr [1 x i8], [1 x i8]* @.str317, i32 0, i32 0
  %2686 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str317.c, i8* %2685)
  store %nyx_string* %2686, %nyx_string** @g_output
  %2687 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %2688 = call i64 @fmt_block_stmts({ i64, i8* }* %2687)
  %2689 = load %nyx_string*, %nyx_string** @g_output
  %2690 = alloca %nyx_string*
  store %nyx_string* %2689, %nyx_string** %2690
  %2691 = load %nyx_string*, %nyx_string** %2684
  store %nyx_string* %2691, %nyx_string** @g_output
  %2692 = load %nyx_string*, %nyx_string** %2690
  ret %nyx_string* %2692
}

define i64 @main(
i32 %argc, i8** %argv) {
  call void @nyx_set_args(i32 %argc, i8** %argv)
  %2693 = getelementptr [10 x i8], [10 x i8]* @.str318, i32 0, i32 0
  %2694 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str318.c, i8* %2693)
  %2695 = call i8* @nyx_string_to_cstr(%nyx_string* %2694)
  %2696 = call %nyx_string* @nyx_read_file(i8* %2695)
  %2697 = alloca %nyx_string*
  store %nyx_string* %2696, %nyx_string** %2697
  %2698 = load %nyx_string*, %nyx_string** %2697
  %2699 = call { i64, i8* }* @tokenize(%nyx_string* %2698)
  %2700 = alloca { i64, i8* }*
  store { i64, i8* }* %2699, { i64, i8* }** %2700
  %2701 = load { i64, i8* }*, { i64, i8* }** %2700
  %2702 = load %nyx_string*, %nyx_string** %2697
  %2703 = call { i64, i8* }* @parse({ i64, i8* }* %2701, %nyx_string* %2702)
  %2704 = alloca { i64, i8* }*
  store { i64, i8* }* %2703, { i64, i8* }** %2704
  %2705 = load { i64, i8* }*, { i64, i8* }** %2704
  %2706 = call i64 @nyx_array_get({ i64, i8* }* %2705, i64 1)
  %2707 = inttoptr i64 %2706 to { i64, i8* }*
  %2708 = alloca { i64, i8* }*
  store { i64, i8* }* %2707, { i64, i8* }** %2708
  %2709 = load { i64, i8* }*, { i64, i8* }** %2708
  %2710 = call i64 @nyx_array_get({ i64, i8* }* %2709, i64 0)
  %2711 = inttoptr i64 %2710 to { i64, i8* }*
  %2712 = alloca { i64, i8* }*
  store { i64, i8* }* %2711, { i64, i8* }** %2712
  %2713 = alloca i64
  store i64 0, i64* %2713
  br label %while_cond528
while_cond528:
  %2714 = load i64, i64* %2713
  %2715 = load { i64, i8* }*, { i64, i8* }** %2712
  %2716 = call i64 @nyx_array_length({ i64, i8* }* %2715)
  %2717 = icmp slt i64 %2714, %2716
  br i1 %2717, label %while_body529, label %while_end530
while_body529:
  %2718 = load { i64, i8* }*, { i64, i8* }** %2712
  %2719 = load i64, i64* %2713
  %2720 = call i64 @nyx_array_get({ i64, i8* }* %2718, i64 %2719)
  %2721 = inttoptr i64 %2720 to { i64, i8* }*
  %2722 = alloca { i64, i8* }*
  store { i64, i8* }* %2721, { i64, i8* }** %2722
  %2723 = load { i64, i8* }*, { i64, i8* }** %2722
  %2724 = call i64 @fmt_stmt({ i64, i8* }* %2723)
  %2725 = load i64, i64* %2713
  %2726 = add i64 %2725, 1
  store i64 %2726, i64* %2713
  br label %while_cond528
while_end530:
  %2727 = load %nyx_string*, %nyx_string** @g_output
  %2728 = call i8* @nyx_string_to_cstr(%nyx_string* %2727)
  call void @nyx_print_string(i8* %2728)
  ret i64 0
}

; Inicialización de variables globales (llamada automática vía ctor)
define void @__nyx_init_globals() {
entry:
  %2729 = getelementptr [1 x i8], [1 x i8]* @.str.init.0, i32 0, i32 0
  %2730 = call %nyx_string* @nyx_string_from_cstr(i8* %2729)
  store %nyx_string* %2730, %nyx_string** @g_output
  ret void
}

@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @__nyx_init_globals, i8* null }]

attributes #0 = { returns_twice }

