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
  %8 = call i8* @llvm.stacksave()
  br label %while_cond0
while_cond0:
  %9 = load i64, i64* %4
  %10 = load i64, i64* @g_indent
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %while_body1, label %while_end2
while_body1:
  call void @llvm.stackrestore(i8* %8)
  %12 = load %nyx_string*, %nyx_string** %3
  %13 = load %nyx_string*, %nyx_string** %7
  %14 = call %nyx_string* @nyx_string_concat(%nyx_string* %12, %nyx_string* %13)
  store %nyx_string* %14, %nyx_string** %3
  %15 = load i64, i64* %4
  %16 = add i64 %15, 1
  store i64 %16, i64* %4
  br label %while_cond0
while_end2:
  %17 = load %nyx_string*, %nyx_string** %3
  ret %nyx_string* %17
}

define internal i64 @out(
%nyx_string* %s.param) {
  %s.ptr = alloca %nyx_string*
  store %nyx_string* %s.param, %nyx_string** %s.ptr
  %18 = load %nyx_string*, %nyx_string** @g_output
  %19 = load %nyx_string*, %nyx_string** %s.ptr
  %20 = call %nyx_string* @nyx_string_concat(%nyx_string* %18, %nyx_string* %19)
  store %nyx_string* %20, %nyx_string** @g_output
  ret i64 0
}

define internal i64 @out_line(
%nyx_string* %s.param) {
  %s.ptr = alloca %nyx_string*
  store %nyx_string* %s.param, %nyx_string** %s.ptr
  %21 = load %nyx_string*, %nyx_string** @g_output
  %22 = call %nyx_string* @indent_str()
  %23 = call %nyx_string* @nyx_string_concat(%nyx_string* %21, %nyx_string* %22)
  %24 = load %nyx_string*, %nyx_string** %s.ptr
  %25 = call %nyx_string* @nyx_string_concat(%nyx_string* %23, %nyx_string* %24)
  %26 = getelementptr [2 x i8], [2 x i8]* @.str2, i32 0, i32 0
  %27 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str2.c, i8* %26)
  %28 = call %nyx_string* @nyx_string_concat(%nyx_string* %25, %nyx_string* %27)
  store %nyx_string* %28, %nyx_string** @g_output
  ret i64 0
}

define internal i64 @out_empty(
) {
  %29 = load %nyx_string*, %nyx_string** @g_output
  %30 = getelementptr [2 x i8], [2 x i8]* @.str3, i32 0, i32 0
  %31 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str3.c, i8* %30)
  %32 = call %nyx_string* @nyx_string_concat(%nyx_string* %29, %nyx_string* %31)
  store %nyx_string* %32, %nyx_string** @g_output
  ret i64 0
}

define internal %nyx_string* @node_type(
{ i64, i8* }* %node.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %33 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %34 = call i64 @nyx_array_get_checked({ i64, i8* }* %33, i64 0, i64 2)
  %35 = inttoptr i64 %34 to %nyx_string*
  %36 = alloca %nyx_string*
  store %nyx_string* %35, %nyx_string** %36
  %37 = load %nyx_string*, %nyx_string** %36
  ret %nyx_string* %37
}

define internal { i64, i8* }* @node_data(
{ i64, i8* }* %node.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %38 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %39 = call i64 @nyx_array_get({ i64, i8* }* %38, i64 1)
  %40 = inttoptr i64 %39 to { i64, i8* }*
  %41 = alloca { i64, i8* }*
  store { i64, i8* }* %40, { i64, i8* }** %41
  %42 = load { i64, i8* }*, { i64, i8* }** %41
  ret { i64, i8* }* %42
}

define internal %nyx_string* @tp_name_only(
%nyx_string* %tp.param) {
  %tp.ptr = alloca %nyx_string*
  store %nyx_string* %tp.param, %nyx_string** %tp.ptr
  %43 = load %nyx_string*, %nyx_string** %tp.ptr
  %44 = getelementptr [2 x i8], [2 x i8]* @.str4, i32 0, i32 0
  %45 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str4.c, i8* %44)
  %46 = call i64 @nyx_string_index_of(%nyx_string* %43, %nyx_string* %45)
  %47 = alloca i64
  store i64 %46, i64* %47
  %48 = load i64, i64* %47
  %49 = sub i64 0, 1
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %then3, label %else4
then3:
  %51 = load %nyx_string*, %nyx_string** %tp.ptr
  ret %nyx_string* %51
else4:
  br label %merge5
merge5:
  %52 = load %nyx_string*, %nyx_string** %tp.ptr
  %53 = load i64, i64* %47
  %54 = call %nyx_string* @nyx_string_substring(%nyx_string* %52, i64 0, i64 %53)
  ret %nyx_string* %54
}

define internal %nyx_string* @op_symbol(
%nyx_string* %token_type.param) {
  %token_type.ptr = alloca %nyx_string*
  store %nyx_string* %token_type.param, %nyx_string** %token_type.ptr
  %55 = load %nyx_string*, %nyx_string** %token_type.ptr
  %56 = getelementptr [5 x i8], [5 x i8]* @.str5, i32 0, i32 0
  %57 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str5.c, i8* %56)
  %58 = call i1 @nyx_string_equals(%nyx_string* %55, %nyx_string* %57)
  br i1 %58, label %then6, label %else7
then6:
  %59 = getelementptr [2 x i8], [2 x i8]* @.str6, i32 0, i32 0
  %60 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str6.c, i8* %59)
  ret %nyx_string* %60
else7:
  br label %merge8
merge8:
  %61 = load %nyx_string*, %nyx_string** %token_type.ptr
  %62 = getelementptr [6 x i8], [6 x i8]* @.str7, i32 0, i32 0
  %63 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str7.c, i8* %62)
  %64 = call i1 @nyx_string_equals(%nyx_string* %61, %nyx_string* %63)
  br i1 %64, label %then9, label %else10
then9:
  %65 = getelementptr [2 x i8], [2 x i8]* @.str8, i32 0, i32 0
  %66 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str8.c, i8* %65)
  ret %nyx_string* %66
else10:
  br label %merge11
merge11:
  %67 = load %nyx_string*, %nyx_string** %token_type.ptr
  %68 = getelementptr [5 x i8], [5 x i8]* @.str9, i32 0, i32 0
  %69 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str9.c, i8* %68)
  %70 = call i1 @nyx_string_equals(%nyx_string* %67, %nyx_string* %69)
  br i1 %70, label %then12, label %else13
then12:
  %71 = getelementptr [2 x i8], [2 x i8]* @.str10, i32 0, i32 0
  %72 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str10.c, i8* %71)
  ret %nyx_string* %72
else13:
  br label %merge14
merge14:
  %73 = load %nyx_string*, %nyx_string** %token_type.ptr
  %74 = getelementptr [6 x i8], [6 x i8]* @.str11, i32 0, i32 0
  %75 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str11.c, i8* %74)
  %76 = call i1 @nyx_string_equals(%nyx_string* %73, %nyx_string* %75)
  br i1 %76, label %then15, label %else16
then15:
  %77 = getelementptr [2 x i8], [2 x i8]* @.str12, i32 0, i32 0
  %78 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str12.c, i8* %77)
  ret %nyx_string* %78
else16:
  br label %merge17
merge17:
  %79 = load %nyx_string*, %nyx_string** %token_type.ptr
  %80 = getelementptr [8 x i8], [8 x i8]* @.str13, i32 0, i32 0
  %81 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str13.c, i8* %80)
  %82 = call i1 @nyx_string_equals(%nyx_string* %79, %nyx_string* %81)
  br i1 %82, label %then18, label %else19
then18:
  %83 = getelementptr [2 x i8], [2 x i8]* @.str14, i32 0, i32 0
  %84 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str14.c, i8* %83)
  ret %nyx_string* %84
else19:
  br label %merge20
merge20:
  %85 = load %nyx_string*, %nyx_string** %token_type.ptr
  %86 = getelementptr [6 x i8], [6 x i8]* @.str15, i32 0, i32 0
  %87 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str15.c, i8* %86)
  %88 = call i1 @nyx_string_equals(%nyx_string* %85, %nyx_string* %87)
  br i1 %88, label %then21, label %else22
then21:
  %89 = getelementptr [3 x i8], [3 x i8]* @.str16, i32 0, i32 0
  %90 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str16.c, i8* %89)
  ret %nyx_string* %90
else22:
  br label %merge23
merge23:
  %91 = load %nyx_string*, %nyx_string** %token_type.ptr
  %92 = getelementptr [12 x i8], [12 x i8]* @.str17, i32 0, i32 0
  %93 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str17.c, i8* %92)
  %94 = call i1 @nyx_string_equals(%nyx_string* %91, %nyx_string* %93)
  br i1 %94, label %then24, label %else25
then24:
  %95 = getelementptr [3 x i8], [3 x i8]* @.str18, i32 0, i32 0
  %96 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str18.c, i8* %95)
  ret %nyx_string* %96
else25:
  br label %merge26
merge26:
  %97 = load %nyx_string*, %nyx_string** %token_type.ptr
  %98 = getelementptr [10 x i8], [10 x i8]* @.str19, i32 0, i32 0
  %99 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str19.c, i8* %98)
  %100 = call i1 @nyx_string_equals(%nyx_string* %97, %nyx_string* %99)
  br i1 %100, label %then27, label %else28
then27:
  %101 = getelementptr [3 x i8], [3 x i8]* @.str20, i32 0, i32 0
  %102 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str20.c, i8* %101)
  ret %nyx_string* %102
else28:
  br label %merge29
merge29:
  %103 = load %nyx_string*, %nyx_string** %token_type.ptr
  %104 = getelementptr [5 x i8], [5 x i8]* @.str21, i32 0, i32 0
  %105 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str21.c, i8* %104)
  %106 = call i1 @nyx_string_equals(%nyx_string* %103, %nyx_string* %105)
  br i1 %106, label %then30, label %else31
then30:
  %107 = getelementptr [2 x i8], [2 x i8]* @.str22, i32 0, i32 0
  %108 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str22.c, i8* %107)
  ret %nyx_string* %108
else31:
  br label %merge32
merge32:
  %109 = load %nyx_string*, %nyx_string** %token_type.ptr
  %110 = getelementptr [11 x i8], [11 x i8]* @.str23, i32 0, i32 0
  %111 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str23.c, i8* %110)
  %112 = call i1 @nyx_string_equals(%nyx_string* %109, %nyx_string* %111)
  br i1 %112, label %then33, label %else34
then33:
  %113 = getelementptr [3 x i8], [3 x i8]* @.str24, i32 0, i32 0
  %114 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str24.c, i8* %113)
  ret %nyx_string* %114
else34:
  br label %merge35
merge35:
  %115 = load %nyx_string*, %nyx_string** %token_type.ptr
  %116 = getelementptr [8 x i8], [8 x i8]* @.str25, i32 0, i32 0
  %117 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str25.c, i8* %116)
  %118 = call i1 @nyx_string_equals(%nyx_string* %115, %nyx_string* %117)
  br i1 %118, label %then36, label %else37
then36:
  %119 = getelementptr [2 x i8], [2 x i8]* @.str26, i32 0, i32 0
  %120 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str26.c, i8* %119)
  ret %nyx_string* %120
else37:
  br label %merge38
merge38:
  %121 = load %nyx_string*, %nyx_string** %token_type.ptr
  %122 = getelementptr [14 x i8], [14 x i8]* @.str27, i32 0, i32 0
  %123 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str27.c, i8* %122)
  %124 = call i1 @nyx_string_equals(%nyx_string* %121, %nyx_string* %123)
  br i1 %124, label %then39, label %else40
then39:
  %125 = getelementptr [3 x i8], [3 x i8]* @.str28, i32 0, i32 0
  %126 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str28.c, i8* %125)
  ret %nyx_string* %126
else40:
  br label %merge41
merge41:
  %127 = load %nyx_string*, %nyx_string** %token_type.ptr
  %128 = getelementptr [4 x i8], [4 x i8]* @.str29, i32 0, i32 0
  %129 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str29.c, i8* %128)
  %130 = call i1 @nyx_string_equals(%nyx_string* %127, %nyx_string* %129)
  br i1 %130, label %then42, label %else43
then42:
  %131 = getelementptr [4 x i8], [4 x i8]* @.str30, i32 0, i32 0
  %132 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str30.c, i8* %131)
  ret %nyx_string* %132
else43:
  br label %merge44
merge44:
  %133 = load %nyx_string*, %nyx_string** %token_type.ptr
  %134 = getelementptr [8 x i8], [8 x i8]* @.str31, i32 0, i32 0
  %135 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str31.c, i8* %134)
  %136 = call i1 @nyx_string_equals(%nyx_string* %133, %nyx_string* %135)
  br i1 %136, label %then45, label %else46
then45:
  %137 = getelementptr [4 x i8], [4 x i8]* @.str32, i32 0, i32 0
  %138 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str32.c, i8* %137)
  ret %nyx_string* %138
else46:
  br label %merge47
merge47:
  %139 = load %nyx_string*, %nyx_string** %token_type.ptr
  %140 = getelementptr [3 x i8], [3 x i8]* @.str33, i32 0, i32 0
  %141 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str33.c, i8* %140)
  %142 = call i1 @nyx_string_equals(%nyx_string* %139, %nyx_string* %141)
  br i1 %142, label %then48, label %else49
then48:
  %143 = getelementptr [3 x i8], [3 x i8]* @.str34, i32 0, i32 0
  %144 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str34.c, i8* %143)
  ret %nyx_string* %144
else49:
  br label %merge50
merge50:
  %145 = load %nyx_string*, %nyx_string** %token_type.ptr
  %146 = getelementptr [6 x i8], [6 x i8]* @.str35, i32 0, i32 0
  %147 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str35.c, i8* %146)
  %148 = call i1 @nyx_string_equals(%nyx_string* %145, %nyx_string* %147)
  br i1 %148, label %then51, label %else52
then51:
  %149 = getelementptr [3 x i8], [3 x i8]* @.str36, i32 0, i32 0
  %150 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str36.c, i8* %149)
  ret %nyx_string* %150
else52:
  br label %merge53
merge53:
  %151 = load %nyx_string*, %nyx_string** %token_type.ptr
  %152 = getelementptr [4 x i8], [4 x i8]* @.str37, i32 0, i32 0
  %153 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str37.c, i8* %152)
  %154 = call i1 @nyx_string_equals(%nyx_string* %151, %nyx_string* %153)
  br i1 %154, label %then54, label %else55
then54:
  %155 = getelementptr [4 x i8], [4 x i8]* @.str38, i32 0, i32 0
  %156 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str38.c, i8* %155)
  ret %nyx_string* %156
else55:
  br label %merge56
merge56:
  %157 = load %nyx_string*, %nyx_string** %token_type.ptr
  %158 = getelementptr [12 x i8], [12 x i8]* @.str39, i32 0, i32 0
  %159 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str39.c, i8* %158)
  %160 = call i1 @nyx_string_equals(%nyx_string* %157, %nyx_string* %159)
  br i1 %160, label %then57, label %else58
then57:
  %161 = getelementptr [3 x i8], [3 x i8]* @.str40, i32 0, i32 0
  %162 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str40.c, i8* %161)
  ret %nyx_string* %162
else58:
  br label %merge59
merge59:
  %163 = load %nyx_string*, %nyx_string** %token_type.ptr
  %164 = getelementptr [13 x i8], [13 x i8]* @.str41, i32 0, i32 0
  %165 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str41.c, i8* %164)
  %166 = call i1 @nyx_string_equals(%nyx_string* %163, %nyx_string* %165)
  br i1 %166, label %then60, label %else61
then60:
  %167 = getelementptr [3 x i8], [3 x i8]* @.str42, i32 0, i32 0
  %168 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str42.c, i8* %167)
  ret %nyx_string* %168
else61:
  br label %merge62
merge62:
  %169 = load %nyx_string*, %nyx_string** %token_type.ptr
  %170 = getelementptr [12 x i8], [12 x i8]* @.str43, i32 0, i32 0
  %171 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str43.c, i8* %170)
  %172 = call i1 @nyx_string_equals(%nyx_string* %169, %nyx_string* %171)
  br i1 %172, label %then63, label %else64
then63:
  %173 = getelementptr [3 x i8], [3 x i8]* @.str44, i32 0, i32 0
  %174 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str44.c, i8* %173)
  ret %nyx_string* %174
else64:
  br label %merge65
merge65:
  %175 = load %nyx_string*, %nyx_string** %token_type.ptr
  %176 = getelementptr [13 x i8], [13 x i8]* @.str45, i32 0, i32 0
  %177 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str45.c, i8* %176)
  %178 = call i1 @nyx_string_equals(%nyx_string* %175, %nyx_string* %177)
  br i1 %178, label %then66, label %else67
then66:
  %179 = getelementptr [3 x i8], [3 x i8]* @.str46, i32 0, i32 0
  %180 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str46.c, i8* %179)
  ret %nyx_string* %180
else67:
  br label %merge68
merge68:
  %181 = load %nyx_string*, %nyx_string** %token_type.ptr
  %182 = getelementptr [15 x i8], [15 x i8]* @.str47, i32 0, i32 0
  %183 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str47.c, i8* %182)
  %184 = call i1 @nyx_string_equals(%nyx_string* %181, %nyx_string* %183)
  br i1 %184, label %then69, label %else70
then69:
  %185 = getelementptr [3 x i8], [3 x i8]* @.str48, i32 0, i32 0
  %186 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str48.c, i8* %185)
  ret %nyx_string* %186
else70:
  br label %merge71
merge71:
  %187 = load %nyx_string*, %nyx_string** %token_type.ptr
  %188 = getelementptr [4 x i8], [4 x i8]* @.str49, i32 0, i32 0
  %189 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str49.c, i8* %188)
  %190 = call i1 @nyx_string_equals(%nyx_string* %187, %nyx_string* %189)
  br i1 %190, label %then72, label %else73
then72:
  %191 = getelementptr [2 x i8], [2 x i8]* @.str50, i32 0, i32 0
  %192 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str50.c, i8* %191)
  ret %nyx_string* %192
else73:
  br label %merge74
merge74:
  %193 = load %nyx_string*, %nyx_string** %token_type.ptr
  %194 = getelementptr [5 x i8], [5 x i8]* @.str51, i32 0, i32 0
  %195 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str51.c, i8* %194)
  %196 = call i1 @nyx_string_equals(%nyx_string* %193, %nyx_string* %195)
  br i1 %196, label %then75, label %else76
then75:
  %197 = getelementptr [2 x i8], [2 x i8]* @.str52, i32 0, i32 0
  %198 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str52.c, i8* %197)
  ret %nyx_string* %198
else76:
  br label %merge77
merge77:
  %199 = load %nyx_string*, %nyx_string** %token_type.ptr
  %200 = getelementptr [6 x i8], [6 x i8]* @.str53, i32 0, i32 0
  %201 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str53.c, i8* %200)
  %202 = call i1 @nyx_string_equals(%nyx_string* %199, %nyx_string* %201)
  br i1 %202, label %then78, label %else79
then78:
  %203 = getelementptr [2 x i8], [2 x i8]* @.str54, i32 0, i32 0
  %204 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str54.c, i8* %203)
  ret %nyx_string* %204
else79:
  br label %merge80
merge80:
  %205 = load %nyx_string*, %nyx_string** %token_type.ptr
  %206 = getelementptr [6 x i8], [6 x i8]* @.str55, i32 0, i32 0
  %207 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str55.c, i8* %206)
  %208 = call i1 @nyx_string_equals(%nyx_string* %205, %nyx_string* %207)
  br i1 %208, label %then81, label %else82
then81:
  %209 = getelementptr [2 x i8], [2 x i8]* @.str56, i32 0, i32 0
  %210 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str56.c, i8* %209)
  ret %nyx_string* %210
else82:
  br label %merge83
merge83:
  %211 = load %nyx_string*, %nyx_string** %token_type.ptr
  %212 = getelementptr [11 x i8], [11 x i8]* @.str57, i32 0, i32 0
  %213 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str57.c, i8* %212)
  %214 = call i1 @nyx_string_equals(%nyx_string* %211, %nyx_string* %213)
  br i1 %214, label %then84, label %else85
then84:
  %215 = getelementptr [3 x i8], [3 x i8]* @.str58, i32 0, i32 0
  %216 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str58.c, i8* %215)
  ret %nyx_string* %216
else85:
  br label %merge86
merge86:
  %217 = load %nyx_string*, %nyx_string** %token_type.ptr
  %218 = getelementptr [12 x i8], [12 x i8]* @.str59, i32 0, i32 0
  %219 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str59.c, i8* %218)
  %220 = call i1 @nyx_string_equals(%nyx_string* %217, %nyx_string* %219)
  br i1 %220, label %then87, label %else88
then87:
  %221 = getelementptr [3 x i8], [3 x i8]* @.str60, i32 0, i32 0
  %222 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str60.c, i8* %221)
  ret %nyx_string* %222
else88:
  br label %merge89
merge89:
  %223 = load %nyx_string*, %nyx_string** %token_type.ptr
  %224 = getelementptr [11 x i8], [11 x i8]* @.str61, i32 0, i32 0
  %225 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str61.c, i8* %224)
  %226 = call i1 @nyx_string_equals(%nyx_string* %223, %nyx_string* %225)
  br i1 %226, label %then90, label %else91
then90:
  %227 = getelementptr [3 x i8], [3 x i8]* @.str62, i32 0, i32 0
  %228 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str62.c, i8* %227)
  ret %nyx_string* %228
else91:
  br label %merge92
merge92:
  %229 = load %nyx_string*, %nyx_string** %token_type.ptr
  %230 = getelementptr [12 x i8], [12 x i8]* @.str63, i32 0, i32 0
  %231 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str63.c, i8* %230)
  %232 = call i1 @nyx_string_equals(%nyx_string* %229, %nyx_string* %231)
  br i1 %232, label %then93, label %else94
then93:
  %233 = getelementptr [3 x i8], [3 x i8]* @.str64, i32 0, i32 0
  %234 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str64.c, i8* %233)
  ret %nyx_string* %234
else94:
  br label %merge95
merge95:
  %235 = load %nyx_string*, %nyx_string** %token_type.ptr
  %236 = getelementptr [13 x i8], [13 x i8]* @.str65, i32 0, i32 0
  %237 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str65.c, i8* %236)
  %238 = call i1 @nyx_string_equals(%nyx_string* %235, %nyx_string* %237)
  br i1 %238, label %then96, label %else97
then96:
  %239 = getelementptr [3 x i8], [3 x i8]* @.str66, i32 0, i32 0
  %240 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str66.c, i8* %239)
  ret %nyx_string* %240
else97:
  br label %merge98
merge98:
  %241 = load %nyx_string*, %nyx_string** %token_type.ptr
  %242 = getelementptr [18 x i8], [18 x i8]* @.str67, i32 0, i32 0
  %243 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str67.c, i8* %242)
  %244 = call i1 @nyx_string_equals(%nyx_string* %241, %nyx_string* %243)
  br i1 %244, label %then99, label %else100
then99:
  %245 = getelementptr [4 x i8], [4 x i8]* @.str68, i32 0, i32 0
  %246 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str68.c, i8* %245)
  ret %nyx_string* %246
else100:
  br label %merge101
merge101:
  %247 = load %nyx_string*, %nyx_string** %token_type.ptr
  %248 = getelementptr [19 x i8], [19 x i8]* @.str69, i32 0, i32 0
  %249 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str69.c, i8* %248)
  %250 = call i1 @nyx_string_equals(%nyx_string* %247, %nyx_string* %249)
  br i1 %250, label %then102, label %else103
then102:
  %251 = getelementptr [4 x i8], [4 x i8]* @.str70, i32 0, i32 0
  %252 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str70.c, i8* %251)
  ret %nyx_string* %252
else103:
  br label %merge104
merge104:
  %253 = load %nyx_string*, %nyx_string** %token_type.ptr
  ret %nyx_string* %253
}

define internal %nyx_string* @fmt_expr(
{ i64, i8* }* %node.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %254 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %255 = call %nyx_string* @node_type({ i64, i8* }* %254)
  %256 = alloca %nyx_string*
  store %nyx_string* %255, %nyx_string** %256
  %257 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %258 = call { i64, i8* }* @node_data({ i64, i8* }* %257)
  %259 = alloca { i64, i8* }*
  store { i64, i8* }* %258, { i64, i8* }** %259
  %260 = load %nyx_string*, %nyx_string** %256
  %261 = getelementptr [7 x i8], [7 x i8]* @.str71, i32 0, i32 0
  %262 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str71.c, i8* %261)
  %263 = call i1 @nyx_string_equals(%nyx_string* %260, %nyx_string* %262)
  br i1 %263, label %then105, label %else106
then105:
  %264 = load { i64, i8* }*, { i64, i8* }** %259
  %265 = call i64 @nyx_array_get_checked({ i64, i8* }* %264, i64 0, i64 2)
  %266 = inttoptr i64 %265 to %nyx_string*
  %267 = alloca %nyx_string*
  store %nyx_string* %266, %nyx_string** %267
  %268 = load %nyx_string*, %nyx_string** %267
  ret %nyx_string* %268
else106:
  br label %merge107
merge107:
  %269 = load %nyx_string*, %nyx_string** %256
  %270 = getelementptr [7 x i8], [7 x i8]* @.str72, i32 0, i32 0
  %271 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str72.c, i8* %270)
  %272 = call i1 @nyx_string_equals(%nyx_string* %269, %nyx_string* %271)
  br i1 %272, label %then108, label %else109
then108:
  %273 = load { i64, i8* }*, { i64, i8* }** %259
  %274 = call i64 @nyx_array_get_checked({ i64, i8* }* %273, i64 0, i64 2)
  %275 = inttoptr i64 %274 to %nyx_string*
  %276 = alloca %nyx_string*
  store %nyx_string* %275, %nyx_string** %276
  %277 = getelementptr [2 x i8], [2 x i8]* @.str73, i32 0, i32 0
  %278 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str73.c, i8* %277)
  %279 = load %nyx_string*, %nyx_string** %276
  %280 = call %nyx_string* @nyx_string_concat(%nyx_string* %278, %nyx_string* %279)
  %281 = getelementptr [2 x i8], [2 x i8]* @.str74, i32 0, i32 0
  %282 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str74.c, i8* %281)
  %283 = call %nyx_string* @nyx_string_concat(%nyx_string* %280, %nyx_string* %282)
  ret %nyx_string* %283
else109:
  br label %merge110
merge110:
  %284 = load %nyx_string*, %nyx_string** %256
  %285 = getelementptr [5 x i8], [5 x i8]* @.str75, i32 0, i32 0
  %286 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str75.c, i8* %285)
  %287 = call i1 @nyx_string_equals(%nyx_string* %284, %nyx_string* %286)
  br i1 %287, label %then111, label %else112
then111:
  %288 = load { i64, i8* }*, { i64, i8* }** %259
  %289 = call i64 @nyx_array_get_checked({ i64, i8* }* %288, i64 0, i64 2)
  %290 = inttoptr i64 %289 to %nyx_string*
  %291 = alloca %nyx_string*
  store %nyx_string* %290, %nyx_string** %291
  %292 = getelementptr [2 x i8], [2 x i8]* @.str76, i32 0, i32 0
  %293 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str76.c, i8* %292)
  %294 = load %nyx_string*, %nyx_string** %291
  %295 = call %nyx_string* @nyx_string_concat(%nyx_string* %293, %nyx_string* %294)
  %296 = getelementptr [2 x i8], [2 x i8]* @.str77, i32 0, i32 0
  %297 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str77.c, i8* %296)
  %298 = call %nyx_string* @nyx_string_concat(%nyx_string* %295, %nyx_string* %297)
  ret %nyx_string* %298
else112:
  br label %merge113
merge113:
  %299 = load %nyx_string*, %nyx_string** %256
  %300 = getelementptr [5 x i8], [5 x i8]* @.str78, i32 0, i32 0
  %301 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str78.c, i8* %300)
  %302 = call i1 @nyx_string_equals(%nyx_string* %299, %nyx_string* %301)
  br i1 %302, label %then114, label %else115
then114:
  %303 = load { i64, i8* }*, { i64, i8* }** %259
  %304 = call i64 @nyx_array_get_checked({ i64, i8* }* %303, i64 0, i64 2)
  %305 = inttoptr i64 %304 to %nyx_string*
  %306 = alloca %nyx_string*
  store %nyx_string* %305, %nyx_string** %306
  %307 = load %nyx_string*, %nyx_string** %306
  ret %nyx_string* %307
else115:
  br label %merge116
merge116:
  %308 = load %nyx_string*, %nyx_string** %256
  %309 = getelementptr [11 x i8], [11 x i8]* @.str79, i32 0, i32 0
  %310 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str79.c, i8* %309)
  %311 = call i1 @nyx_string_equals(%nyx_string* %308, %nyx_string* %310)
  br i1 %311, label %then117, label %else118
then117:
  %312 = load { i64, i8* }*, { i64, i8* }** %259
  %313 = call i64 @nyx_array_get_checked({ i64, i8* }* %312, i64 0, i64 2)
  %314 = inttoptr i64 %313 to %nyx_string*
  %315 = alloca %nyx_string*
  store %nyx_string* %314, %nyx_string** %315
  %316 = load %nyx_string*, %nyx_string** %315
  ret %nyx_string* %316
else118:
  br label %merge119
merge119:
  %317 = load %nyx_string*, %nyx_string** %256
  %318 = getelementptr [6 x i8], [6 x i8]* @.str80, i32 0, i32 0
  %319 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str80.c, i8* %318)
  %320 = call i1 @nyx_string_equals(%nyx_string* %317, %nyx_string* %319)
  br i1 %320, label %then120, label %else121
then120:
  %321 = load { i64, i8* }*, { i64, i8* }** %259
  %322 = call i64 @nyx_array_get_checked({ i64, i8* }* %321, i64 0, i64 2)
  %323 = inttoptr i64 %322 to %nyx_string*
  %324 = alloca %nyx_string*
  store %nyx_string* %323, %nyx_string** %324
  %325 = load { i64, i8* }*, { i64, i8* }** %259
  %326 = call i64 @nyx_array_get({ i64, i8* }* %325, i64 1)
  %327 = inttoptr i64 %326 to { i64, i8* }*
  %328 = alloca { i64, i8* }*
  store { i64, i8* }* %327, { i64, i8* }** %328
  %329 = load { i64, i8* }*, { i64, i8* }** %259
  %330 = call i64 @nyx_array_get({ i64, i8* }* %329, i64 2)
  %331 = inttoptr i64 %330 to { i64, i8* }*
  %332 = alloca { i64, i8* }*
  store { i64, i8* }* %331, { i64, i8* }** %332
  %333 = load { i64, i8* }*, { i64, i8* }** %328
  %334 = call %nyx_string* @fmt_expr({ i64, i8* }* %333)
  %335 = getelementptr [2 x i8], [2 x i8]* @.str81, i32 0, i32 0
  %336 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str81.c, i8* %335)
  %337 = call %nyx_string* @nyx_string_concat(%nyx_string* %334, %nyx_string* %336)
  %338 = load %nyx_string*, %nyx_string** %324
  %339 = call %nyx_string* @op_symbol(%nyx_string* %338)
  %340 = call %nyx_string* @nyx_string_concat(%nyx_string* %337, %nyx_string* %339)
  %341 = getelementptr [2 x i8], [2 x i8]* @.str82, i32 0, i32 0
  %342 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str82.c, i8* %341)
  %343 = call %nyx_string* @nyx_string_concat(%nyx_string* %340, %nyx_string* %342)
  %344 = load { i64, i8* }*, { i64, i8* }** %332
  %345 = call %nyx_string* @fmt_expr({ i64, i8* }* %344)
  %346 = call %nyx_string* @nyx_string_concat(%nyx_string* %343, %nyx_string* %345)
  ret %nyx_string* %346
else121:
  br label %merge122
merge122:
  %347 = load %nyx_string*, %nyx_string** %256
  %348 = getelementptr [5 x i8], [5 x i8]* @.str83, i32 0, i32 0
  %349 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str83.c, i8* %348)
  %350 = call i1 @nyx_string_equals(%nyx_string* %347, %nyx_string* %349)
  br i1 %350, label %then123, label %else124
then123:
  %351 = load { i64, i8* }*, { i64, i8* }** %259
  %352 = call i64 @nyx_array_get_checked({ i64, i8* }* %351, i64 0, i64 2)
  %353 = inttoptr i64 %352 to %nyx_string*
  %354 = alloca %nyx_string*
  store %nyx_string* %353, %nyx_string** %354
  %355 = load { i64, i8* }*, { i64, i8* }** %259
  %356 = call i64 @nyx_array_get({ i64, i8* }* %355, i64 1)
  %357 = inttoptr i64 %356 to { i64, i8* }*
  %358 = alloca { i64, i8* }*
  store { i64, i8* }* %357, { i64, i8* }** %358
  %359 = load %nyx_string*, %nyx_string** %354
  %360 = call %nyx_string* @op_symbol(%nyx_string* %359)
  %361 = alloca %nyx_string*
  store %nyx_string* %360, %nyx_string** %361
  %362 = load %nyx_string*, %nyx_string** %361
  %363 = getelementptr [4 x i8], [4 x i8]* @.str84, i32 0, i32 0
  %364 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str84.c, i8* %363)
  %365 = call i1 @nyx_string_equals(%nyx_string* %362, %nyx_string* %364)
  br i1 %365, label %then126, label %else127
then126:
  %366 = getelementptr [5 x i8], [5 x i8]* @.str85, i32 0, i32 0
  %367 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str85.c, i8* %366)
  %368 = load { i64, i8* }*, { i64, i8* }** %358
  %369 = call %nyx_string* @fmt_expr({ i64, i8* }* %368)
  %370 = call %nyx_string* @nyx_string_concat(%nyx_string* %367, %nyx_string* %369)
  ret %nyx_string* %370
else127:
  br label %merge128
merge128:
  %371 = load %nyx_string*, %nyx_string** %361
  %372 = getelementptr [2 x i8], [2 x i8]* @.str86, i32 0, i32 0
  %373 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str86.c, i8* %372)
  %374 = call i1 @nyx_string_equals(%nyx_string* %371, %nyx_string* %373)
  br i1 %374, label %then129, label %else130
then129:
  %375 = getelementptr [2 x i8], [2 x i8]* @.str87, i32 0, i32 0
  %376 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str87.c, i8* %375)
  %377 = load { i64, i8* }*, { i64, i8* }** %358
  %378 = call %nyx_string* @fmt_expr({ i64, i8* }* %377)
  %379 = call %nyx_string* @nyx_string_concat(%nyx_string* %376, %nyx_string* %378)
  ret %nyx_string* %379
else130:
  br label %merge131
merge131:
  %380 = load %nyx_string*, %nyx_string** %361
  %381 = load { i64, i8* }*, { i64, i8* }** %358
  %382 = call %nyx_string* @fmt_expr({ i64, i8* }* %381)
  %383 = call %nyx_string* @nyx_string_concat(%nyx_string* %380, %nyx_string* %382)
  ret %nyx_string* %383
else124:
  br label %merge125
merge125:
  %384 = load %nyx_string*, %nyx_string** %256
  %385 = getelementptr [5 x i8], [5 x i8]* @.str88, i32 0, i32 0
  %386 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str88.c, i8* %385)
  %387 = call i1 @nyx_string_equals(%nyx_string* %384, %nyx_string* %386)
  br i1 %387, label %then132, label %else133
then132:
  %388 = load { i64, i8* }*, { i64, i8* }** %259
  %389 = call i64 @nyx_array_get({ i64, i8* }* %388, i64 0)
  %390 = inttoptr i64 %389 to { i64, i8* }*
  %391 = alloca { i64, i8* }*
  store { i64, i8* }* %390, { i64, i8* }** %391
  %392 = load { i64, i8* }*, { i64, i8* }** %259
  %393 = call i64 @nyx_array_get({ i64, i8* }* %392, i64 1)
  %394 = inttoptr i64 %393 to { i64, i8* }*
  %395 = alloca { i64, i8* }*
  store { i64, i8* }* %394, { i64, i8* }** %395
  %396 = load { i64, i8* }*, { i64, i8* }** %391
  %397 = call %nyx_string* @fmt_expr({ i64, i8* }* %396)
  %398 = getelementptr [2 x i8], [2 x i8]* @.str89, i32 0, i32 0
  %399 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str89.c, i8* %398)
  %400 = call %nyx_string* @nyx_string_concat(%nyx_string* %397, %nyx_string* %399)
  %401 = alloca %nyx_string*
  store %nyx_string* %400, %nyx_string** %401
  %402 = alloca i64
  store i64 0, i64* %402
  %403 = getelementptr [3 x i8], [3 x i8]* @.str90, i32 0, i32 0
  %404 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str90.c, i8* %403)
  %405 = alloca %nyx_string*
  store %nyx_string* %404, %nyx_string** %405
  %406 = call i8* @llvm.stacksave()
  br label %while_cond135
while_cond135:
  %407 = load i64, i64* %402
  %408 = load { i64, i8* }*, { i64, i8* }** %395
  %409 = call i64 @nyx_array_length({ i64, i8* }* %408)
  %410 = icmp slt i64 %407, %409
  br i1 %410, label %while_body136, label %while_end137
while_body136:
  call void @llvm.stackrestore(i8* %406)
  %411 = load i64, i64* %402
  %412 = icmp sgt i64 %411, 0
  br i1 %412, label %then138, label %else139
then138:
  %413 = load %nyx_string*, %nyx_string** %401
  %414 = load %nyx_string*, %nyx_string** %405
  %415 = call %nyx_string* @nyx_string_concat(%nyx_string* %413, %nyx_string* %414)
  store %nyx_string* %415, %nyx_string** %401
  br label %merge140
else139:
  br label %merge140
merge140:
  %416 = load { i64, i8* }*, { i64, i8* }** %395
  %417 = load i64, i64* %402
  %418 = call i64 @nyx_array_get({ i64, i8* }* %416, i64 %417)
  %419 = inttoptr i64 %418 to { i64, i8* }*
  %420 = alloca { i64, i8* }*
  store { i64, i8* }* %419, { i64, i8* }** %420
  %421 = load %nyx_string*, %nyx_string** %401
  %422 = load { i64, i8* }*, { i64, i8* }** %420
  %423 = call %nyx_string* @fmt_expr({ i64, i8* }* %422)
  %424 = call %nyx_string* @nyx_string_concat(%nyx_string* %421, %nyx_string* %423)
  store %nyx_string* %424, %nyx_string** %401
  %425 = load i64, i64* %402
  %426 = add i64 %425, 1
  store i64 %426, i64* %402
  br label %while_cond135
while_end137:
  %427 = load %nyx_string*, %nyx_string** %401
  %428 = getelementptr [2 x i8], [2 x i8]* @.str91, i32 0, i32 0
  %429 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str91.c, i8* %428)
  %430 = call %nyx_string* @nyx_string_concat(%nyx_string* %427, %nyx_string* %429)
  ret %nyx_string* %430
else133:
  br label %merge134
merge134:
  %431 = load %nyx_string*, %nyx_string** %256
  %432 = getelementptr [13 x i8], [13 x i8]* @.str92, i32 0, i32 0
  %433 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str92.c, i8* %432)
  %434 = call i1 @nyx_string_equals(%nyx_string* %431, %nyx_string* %433)
  br i1 %434, label %then141, label %else142
then141:
  %435 = load { i64, i8* }*, { i64, i8* }** %259
  %436 = call i64 @nyx_array_get({ i64, i8* }* %435, i64 0)
  %437 = inttoptr i64 %436 to { i64, i8* }*
  %438 = alloca { i64, i8* }*
  store { i64, i8* }* %437, { i64, i8* }** %438
  %439 = load { i64, i8* }*, { i64, i8* }** %259
  %440 = call i64 @nyx_array_get({ i64, i8* }* %439, i64 1)
  %441 = inttoptr i64 %440 to { i64, i8* }*
  %442 = alloca { i64, i8* }*
  store { i64, i8* }* %441, { i64, i8* }** %442
  %443 = load { i64, i8* }*, { i64, i8* }** %438
  %444 = call %nyx_string* @fmt_expr({ i64, i8* }* %443)
  %445 = getelementptr [2 x i8], [2 x i8]* @.str93, i32 0, i32 0
  %446 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str93.c, i8* %445)
  %447 = call %nyx_string* @nyx_string_concat(%nyx_string* %444, %nyx_string* %446)
  %448 = alloca %nyx_string*
  store %nyx_string* %447, %nyx_string** %448
  %449 = alloca i64
  store i64 0, i64* %449
  %450 = getelementptr [3 x i8], [3 x i8]* @.str94, i32 0, i32 0
  %451 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str94.c, i8* %450)
  %452 = alloca %nyx_string*
  store %nyx_string* %451, %nyx_string** %452
  %453 = call i8* @llvm.stacksave()
  br label %while_cond144
while_cond144:
  %454 = load i64, i64* %449
  %455 = load { i64, i8* }*, { i64, i8* }** %442
  %456 = call i64 @nyx_array_length({ i64, i8* }* %455)
  %457 = icmp slt i64 %454, %456
  br i1 %457, label %while_body145, label %while_end146
while_body145:
  call void @llvm.stackrestore(i8* %453)
  %458 = load i64, i64* %449
  %459 = icmp sgt i64 %458, 0
  br i1 %459, label %then147, label %else148
then147:
  %460 = load %nyx_string*, %nyx_string** %448
  %461 = load %nyx_string*, %nyx_string** %452
  %462 = call %nyx_string* @nyx_string_concat(%nyx_string* %460, %nyx_string* %461)
  store %nyx_string* %462, %nyx_string** %448
  br label %merge149
else148:
  br label %merge149
merge149:
  %463 = load { i64, i8* }*, { i64, i8* }** %442
  %464 = load i64, i64* %449
  %465 = call i64 @nyx_array_get_checked({ i64, i8* }* %463, i64 %464, i64 2)
  %466 = inttoptr i64 %465 to %nyx_string*
  %467 = alloca %nyx_string*
  store %nyx_string* %466, %nyx_string** %467
  %468 = load %nyx_string*, %nyx_string** %448
  %469 = load %nyx_string*, %nyx_string** %467
  %470 = call %nyx_string* @nyx_string_concat(%nyx_string* %468, %nyx_string* %469)
  store %nyx_string* %470, %nyx_string** %448
  %471 = load i64, i64* %449
  %472 = add i64 %471, 1
  store i64 %472, i64* %449
  br label %while_cond144
while_end146:
  %473 = load %nyx_string*, %nyx_string** %448
  %474 = getelementptr [2 x i8], [2 x i8]* @.str95, i32 0, i32 0
  %475 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str95.c, i8* %474)
  %476 = call %nyx_string* @nyx_string_concat(%nyx_string* %473, %nyx_string* %475)
  store %nyx_string* %476, %nyx_string** %448
  %477 = load { i64, i8* }*, { i64, i8* }** %259
  %478 = call i64 @nyx_array_length({ i64, i8* }* %477)
  %479 = icmp sgt i64 %478, 2
  br i1 %479, label %then150, label %else151
then150:
  %480 = load { i64, i8* }*, { i64, i8* }** %259
  %481 = call i64 @nyx_array_get({ i64, i8* }* %480, i64 2)
  %482 = inttoptr i64 %481 to { i64, i8* }*
  %483 = alloca { i64, i8* }*
  store { i64, i8* }* %482, { i64, i8* }** %483
  %484 = load { i64, i8* }*, { i64, i8* }** %483
  %485 = call i64 @nyx_array_length({ i64, i8* }* %484)
  %486 = icmp sgt i64 %485, 0
  br i1 %486, label %then153, label %else154
then153:
  %487 = load %nyx_string*, %nyx_string** %448
  %488 = getelementptr [2 x i8], [2 x i8]* @.str96, i32 0, i32 0
  %489 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str96.c, i8* %488)
  %490 = call %nyx_string* @nyx_string_concat(%nyx_string* %487, %nyx_string* %489)
  store %nyx_string* %490, %nyx_string** %448
  %491 = alloca i64
  store i64 0, i64* %491
  %492 = getelementptr [3 x i8], [3 x i8]* @.str97, i32 0, i32 0
  %493 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str97.c, i8* %492)
  %494 = alloca %nyx_string*
  store %nyx_string* %493, %nyx_string** %494
  %495 = call i8* @llvm.stacksave()
  br label %while_cond156
while_cond156:
  %496 = load i64, i64* %491
  %497 = load { i64, i8* }*, { i64, i8* }** %483
  %498 = call i64 @nyx_array_length({ i64, i8* }* %497)
  %499 = icmp slt i64 %496, %498
  br i1 %499, label %while_body157, label %while_end158
while_body157:
  call void @llvm.stackrestore(i8* %495)
  %500 = load i64, i64* %491
  %501 = icmp sgt i64 %500, 0
  br i1 %501, label %then159, label %else160
then159:
  %502 = load %nyx_string*, %nyx_string** %448
  %503 = load %nyx_string*, %nyx_string** %494
  %504 = call %nyx_string* @nyx_string_concat(%nyx_string* %502, %nyx_string* %503)
  store %nyx_string* %504, %nyx_string** %448
  br label %merge161
else160:
  br label %merge161
merge161:
  %505 = load { i64, i8* }*, { i64, i8* }** %483
  %506 = load i64, i64* %491
  %507 = call i64 @nyx_array_get({ i64, i8* }* %505, i64 %506)
  %508 = inttoptr i64 %507 to { i64, i8* }*
  %509 = alloca { i64, i8* }*
  store { i64, i8* }* %508, { i64, i8* }** %509
  %510 = load %nyx_string*, %nyx_string** %448
  %511 = load { i64, i8* }*, { i64, i8* }** %509
  %512 = call %nyx_string* @fmt_expr({ i64, i8* }* %511)
  %513 = call %nyx_string* @nyx_string_concat(%nyx_string* %510, %nyx_string* %512)
  store %nyx_string* %513, %nyx_string** %448
  %514 = load i64, i64* %491
  %515 = add i64 %514, 1
  store i64 %515, i64* %491
  br label %while_cond156
while_end158:
  %516 = load %nyx_string*, %nyx_string** %448
  %517 = getelementptr [2 x i8], [2 x i8]* @.str98, i32 0, i32 0
  %518 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str98.c, i8* %517)
  %519 = call %nyx_string* @nyx_string_concat(%nyx_string* %516, %nyx_string* %518)
  store %nyx_string* %519, %nyx_string** %448
  br label %merge155
else154:
  br label %merge155
merge155:
  br label %merge152
else151:
  br label %merge152
merge152:
  %520 = load %nyx_string*, %nyx_string** %448
  ret %nyx_string* %520
else142:
  br label %merge143
merge143:
  %521 = load %nyx_string*, %nyx_string** %256
  %522 = getelementptr [12 x i8], [12 x i8]* @.str99, i32 0, i32 0
  %523 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str99.c, i8* %522)
  %524 = call i1 @nyx_string_equals(%nyx_string* %521, %nyx_string* %523)
  br i1 %524, label %then162, label %else163
then162:
  %525 = load { i64, i8* }*, { i64, i8* }** %259
  %526 = call i64 @nyx_array_get({ i64, i8* }* %525, i64 0)
  %527 = inttoptr i64 %526 to { i64, i8* }*
  %528 = alloca { i64, i8* }*
  store { i64, i8* }* %527, { i64, i8* }** %528
  %529 = load { i64, i8* }*, { i64, i8* }** %259
  %530 = call i64 @nyx_array_get_checked({ i64, i8* }* %529, i64 1, i64 2)
  %531 = inttoptr i64 %530 to %nyx_string*
  %532 = alloca %nyx_string*
  store %nyx_string* %531, %nyx_string** %532
  %533 = load { i64, i8* }*, { i64, i8* }** %259
  %534 = call i64 @nyx_array_get({ i64, i8* }* %533, i64 2)
  %535 = inttoptr i64 %534 to { i64, i8* }*
  %536 = alloca { i64, i8* }*
  store { i64, i8* }* %535, { i64, i8* }** %536
  %537 = load { i64, i8* }*, { i64, i8* }** %528
  %538 = call %nyx_string* @fmt_expr({ i64, i8* }* %537)
  %539 = getelementptr [2 x i8], [2 x i8]* @.str100, i32 0, i32 0
  %540 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str100.c, i8* %539)
  %541 = call %nyx_string* @nyx_string_concat(%nyx_string* %538, %nyx_string* %540)
  %542 = load %nyx_string*, %nyx_string** %532
  %543 = call %nyx_string* @nyx_string_concat(%nyx_string* %541, %nyx_string* %542)
  %544 = getelementptr [2 x i8], [2 x i8]* @.str101, i32 0, i32 0
  %545 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str101.c, i8* %544)
  %546 = call %nyx_string* @nyx_string_concat(%nyx_string* %543, %nyx_string* %545)
  %547 = alloca %nyx_string*
  store %nyx_string* %546, %nyx_string** %547
  %548 = alloca i64
  store i64 0, i64* %548
  %549 = getelementptr [3 x i8], [3 x i8]* @.str102, i32 0, i32 0
  %550 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str102.c, i8* %549)
  %551 = alloca %nyx_string*
  store %nyx_string* %550, %nyx_string** %551
  %552 = call i8* @llvm.stacksave()
  br label %while_cond165
while_cond165:
  %553 = load i64, i64* %548
  %554 = load { i64, i8* }*, { i64, i8* }** %536
  %555 = call i64 @nyx_array_length({ i64, i8* }* %554)
  %556 = icmp slt i64 %553, %555
  br i1 %556, label %while_body166, label %while_end167
while_body166:
  call void @llvm.stackrestore(i8* %552)
  %557 = load i64, i64* %548
  %558 = icmp sgt i64 %557, 0
  br i1 %558, label %then168, label %else169
then168:
  %559 = load %nyx_string*, %nyx_string** %547
  %560 = load %nyx_string*, %nyx_string** %551
  %561 = call %nyx_string* @nyx_string_concat(%nyx_string* %559, %nyx_string* %560)
  store %nyx_string* %561, %nyx_string** %547
  br label %merge170
else169:
  br label %merge170
merge170:
  %562 = load { i64, i8* }*, { i64, i8* }** %536
  %563 = load i64, i64* %548
  %564 = call i64 @nyx_array_get({ i64, i8* }* %562, i64 %563)
  %565 = inttoptr i64 %564 to { i64, i8* }*
  %566 = alloca { i64, i8* }*
  store { i64, i8* }* %565, { i64, i8* }** %566
  %567 = load %nyx_string*, %nyx_string** %547
  %568 = load { i64, i8* }*, { i64, i8* }** %566
  %569 = call %nyx_string* @fmt_expr({ i64, i8* }* %568)
  %570 = call %nyx_string* @nyx_string_concat(%nyx_string* %567, %nyx_string* %569)
  store %nyx_string* %570, %nyx_string** %547
  %571 = load i64, i64* %548
  %572 = add i64 %571, 1
  store i64 %572, i64* %548
  br label %while_cond165
while_end167:
  %573 = load %nyx_string*, %nyx_string** %547
  %574 = getelementptr [2 x i8], [2 x i8]* @.str103, i32 0, i32 0
  %575 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str103.c, i8* %574)
  %576 = call %nyx_string* @nyx_string_concat(%nyx_string* %573, %nyx_string* %575)
  ret %nyx_string* %576
else163:
  br label %merge164
merge164:
  %577 = load %nyx_string*, %nyx_string** %256
  %578 = getelementptr [13 x i8], [13 x i8]* @.str104, i32 0, i32 0
  %579 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str104.c, i8* %578)
  %580 = call i1 @nyx_string_equals(%nyx_string* %577, %nyx_string* %579)
  br i1 %580, label %then171, label %else172
then171:
  %581 = load { i64, i8* }*, { i64, i8* }** %259
  %582 = call i64 @nyx_array_get({ i64, i8* }* %581, i64 0)
  %583 = inttoptr i64 %582 to { i64, i8* }*
  %584 = alloca { i64, i8* }*
  store { i64, i8* }* %583, { i64, i8* }** %584
  %585 = load { i64, i8* }*, { i64, i8* }** %259
  %586 = call i64 @nyx_array_get_checked({ i64, i8* }* %585, i64 1, i64 2)
  %587 = inttoptr i64 %586 to %nyx_string*
  %588 = alloca %nyx_string*
  store %nyx_string* %587, %nyx_string** %588
  %589 = load { i64, i8* }*, { i64, i8* }** %584
  %590 = call %nyx_string* @fmt_expr({ i64, i8* }* %589)
  %591 = getelementptr [2 x i8], [2 x i8]* @.str105, i32 0, i32 0
  %592 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str105.c, i8* %591)
  %593 = call %nyx_string* @nyx_string_concat(%nyx_string* %590, %nyx_string* %592)
  %594 = load %nyx_string*, %nyx_string** %588
  %595 = call %nyx_string* @nyx_string_concat(%nyx_string* %593, %nyx_string* %594)
  ret %nyx_string* %595
else172:
  br label %merge173
merge173:
  %596 = load %nyx_string*, %nyx_string** %256
  %597 = getelementptr [6 x i8], [6 x i8]* @.str106, i32 0, i32 0
  %598 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str106.c, i8* %597)
  %599 = call i1 @nyx_string_equals(%nyx_string* %596, %nyx_string* %598)
  br i1 %599, label %then174, label %else175
then174:
  %600 = load { i64, i8* }*, { i64, i8* }** %259
  %601 = call i64 @nyx_array_get({ i64, i8* }* %600, i64 0)
  %602 = inttoptr i64 %601 to { i64, i8* }*
  %603 = alloca { i64, i8* }*
  store { i64, i8* }* %602, { i64, i8* }** %603
  %604 = load { i64, i8* }*, { i64, i8* }** %259
  %605 = call i64 @nyx_array_get({ i64, i8* }* %604, i64 1)
  %606 = inttoptr i64 %605 to { i64, i8* }*
  %607 = alloca { i64, i8* }*
  store { i64, i8* }* %606, { i64, i8* }** %607
  %608 = load { i64, i8* }*, { i64, i8* }** %603
  %609 = call %nyx_string* @fmt_expr({ i64, i8* }* %608)
  %610 = getelementptr [2 x i8], [2 x i8]* @.str107, i32 0, i32 0
  %611 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str107.c, i8* %610)
  %612 = call %nyx_string* @nyx_string_concat(%nyx_string* %609, %nyx_string* %611)
  %613 = load { i64, i8* }*, { i64, i8* }** %607
  %614 = call %nyx_string* @fmt_expr({ i64, i8* }* %613)
  %615 = call %nyx_string* @nyx_string_concat(%nyx_string* %612, %nyx_string* %614)
  %616 = getelementptr [2 x i8], [2 x i8]* @.str108, i32 0, i32 0
  %617 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str108.c, i8* %616)
  %618 = call %nyx_string* @nyx_string_concat(%nyx_string* %615, %nyx_string* %617)
  ret %nyx_string* %618
else175:
  br label %merge176
merge176:
  %619 = load %nyx_string*, %nyx_string** %256
  %620 = getelementptr [12 x i8], [12 x i8]* @.str109, i32 0, i32 0
  %621 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str109.c, i8* %620)
  %622 = call i1 @nyx_string_equals(%nyx_string* %619, %nyx_string* %621)
  br i1 %622, label %then177, label %else178
then177:
  %623 = load { i64, i8* }*, { i64, i8* }** %259
  %624 = call i64 @nyx_array_get({ i64, i8* }* %623, i64 0)
  %625 = inttoptr i64 %624 to { i64, i8* }*
  %626 = alloca { i64, i8* }*
  store { i64, i8* }* %625, { i64, i8* }** %626
  %627 = load { i64, i8* }*, { i64, i8* }** %259
  %628 = call i64 @nyx_array_get_checked({ i64, i8* }* %627, i64 1, i64 2)
  %629 = inttoptr i64 %628 to %nyx_string*
  %630 = alloca %nyx_string*
  store %nyx_string* %629, %nyx_string** %630
  %631 = load { i64, i8* }*, { i64, i8* }** %626
  %632 = call %nyx_string* @fmt_expr({ i64, i8* }* %631)
  %633 = getelementptr [2 x i8], [2 x i8]* @.str110, i32 0, i32 0
  %634 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str110.c, i8* %633)
  %635 = call %nyx_string* @nyx_string_concat(%nyx_string* %632, %nyx_string* %634)
  %636 = load %nyx_string*, %nyx_string** %630
  %637 = call %nyx_string* @nyx_string_concat(%nyx_string* %635, %nyx_string* %636)
  ret %nyx_string* %637
else178:
  br label %merge179
merge179:
  %638 = load %nyx_string*, %nyx_string** %256
  %639 = getelementptr [6 x i8], [6 x i8]* @.str111, i32 0, i32 0
  %640 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str111.c, i8* %639)
  %641 = call i1 @nyx_string_equals(%nyx_string* %638, %nyx_string* %640)
  br i1 %641, label %then180, label %else181
then180:
  %642 = load { i64, i8* }*, { i64, i8* }** %259
  %643 = call i64 @nyx_array_get({ i64, i8* }* %642, i64 0)
  %644 = inttoptr i64 %643 to { i64, i8* }*
  %645 = alloca { i64, i8* }*
  store { i64, i8* }* %644, { i64, i8* }** %645
  %646 = getelementptr [2 x i8], [2 x i8]* @.str112, i32 0, i32 0
  %647 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str112.c, i8* %646)
  %648 = alloca %nyx_string*
  store %nyx_string* %647, %nyx_string** %648
  %649 = alloca i64
  store i64 0, i64* %649
  %650 = getelementptr [3 x i8], [3 x i8]* @.str113, i32 0, i32 0
  %651 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str113.c, i8* %650)
  %652 = alloca %nyx_string*
  store %nyx_string* %651, %nyx_string** %652
  %653 = call i8* @llvm.stacksave()
  br label %while_cond183
while_cond183:
  %654 = load i64, i64* %649
  %655 = load { i64, i8* }*, { i64, i8* }** %645
  %656 = call i64 @nyx_array_length({ i64, i8* }* %655)
  %657 = icmp slt i64 %654, %656
  br i1 %657, label %while_body184, label %while_end185
while_body184:
  call void @llvm.stackrestore(i8* %653)
  %658 = load i64, i64* %649
  %659 = icmp sgt i64 %658, 0
  br i1 %659, label %then186, label %else187
then186:
  %660 = load %nyx_string*, %nyx_string** %648
  %661 = load %nyx_string*, %nyx_string** %652
  %662 = call %nyx_string* @nyx_string_concat(%nyx_string* %660, %nyx_string* %661)
  store %nyx_string* %662, %nyx_string** %648
  br label %merge188
else187:
  br label %merge188
merge188:
  %663 = load { i64, i8* }*, { i64, i8* }** %645
  %664 = load i64, i64* %649
  %665 = call i64 @nyx_array_get({ i64, i8* }* %663, i64 %664)
  %666 = inttoptr i64 %665 to { i64, i8* }*
  %667 = alloca { i64, i8* }*
  store { i64, i8* }* %666, { i64, i8* }** %667
  %668 = load %nyx_string*, %nyx_string** %648
  %669 = load { i64, i8* }*, { i64, i8* }** %667
  %670 = call %nyx_string* @fmt_expr({ i64, i8* }* %669)
  %671 = call %nyx_string* @nyx_string_concat(%nyx_string* %668, %nyx_string* %670)
  store %nyx_string* %671, %nyx_string** %648
  %672 = load i64, i64* %649
  %673 = add i64 %672, 1
  store i64 %673, i64* %649
  br label %while_cond183
while_end185:
  %674 = load %nyx_string*, %nyx_string** %648
  %675 = getelementptr [2 x i8], [2 x i8]* @.str114, i32 0, i32 0
  %676 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str114.c, i8* %675)
  %677 = call %nyx_string* @nyx_string_concat(%nyx_string* %674, %nyx_string* %676)
  ret %nyx_string* %677
else181:
  br label %merge182
merge182:
  %678 = load %nyx_string*, %nyx_string** %256
  %679 = getelementptr [10 x i8], [10 x i8]* @.str115, i32 0, i32 0
  %680 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str115.c, i8* %679)
  %681 = call i1 @nyx_string_equals(%nyx_string* %678, %nyx_string* %680)
  br i1 %681, label %then189, label %else190
then189:
  %682 = load { i64, i8* }*, { i64, i8* }** %259
  %683 = call i64 @nyx_array_get({ i64, i8* }* %682, i64 0)
  %684 = inttoptr i64 %683 to { i64, i8* }*
  %685 = alloca { i64, i8* }*
  store { i64, i8* }* %684, { i64, i8* }** %685
  %686 = getelementptr [2 x i8], [2 x i8]* @.str116, i32 0, i32 0
  %687 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str116.c, i8* %686)
  %688 = alloca %nyx_string*
  store %nyx_string* %687, %nyx_string** %688
  %689 = alloca i64
  store i64 0, i64* %689
  %690 = getelementptr [3 x i8], [3 x i8]* @.str117, i32 0, i32 0
  %691 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str117.c, i8* %690)
  %692 = alloca %nyx_string*
  store %nyx_string* %691, %nyx_string** %692
  %693 = call i8* @llvm.stacksave()
  br label %while_cond192
while_cond192:
  %694 = load i64, i64* %689
  %695 = load { i64, i8* }*, { i64, i8* }** %685
  %696 = call i64 @nyx_array_length({ i64, i8* }* %695)
  %697 = icmp slt i64 %694, %696
  br i1 %697, label %while_body193, label %while_end194
while_body193:
  call void @llvm.stackrestore(i8* %693)
  %698 = load i64, i64* %689
  %699 = icmp sgt i64 %698, 0
  br i1 %699, label %then195, label %else196
then195:
  %700 = load %nyx_string*, %nyx_string** %688
  %701 = load %nyx_string*, %nyx_string** %692
  %702 = call %nyx_string* @nyx_string_concat(%nyx_string* %700, %nyx_string* %701)
  store %nyx_string* %702, %nyx_string** %688
  br label %merge197
else196:
  br label %merge197
merge197:
  %703 = load { i64, i8* }*, { i64, i8* }** %685
  %704 = load i64, i64* %689
  %705 = call i64 @nyx_array_get({ i64, i8* }* %703, i64 %704)
  %706 = inttoptr i64 %705 to { i64, i8* }*
  %707 = alloca { i64, i8* }*
  store { i64, i8* }* %706, { i64, i8* }** %707
  %708 = load %nyx_string*, %nyx_string** %688
  %709 = load { i64, i8* }*, { i64, i8* }** %707
  %710 = call %nyx_string* @fmt_expr({ i64, i8* }* %709)
  %711 = call %nyx_string* @nyx_string_concat(%nyx_string* %708, %nyx_string* %710)
  store %nyx_string* %711, %nyx_string** %688
  %712 = load i64, i64* %689
  %713 = add i64 %712, 1
  store i64 %713, i64* %689
  br label %while_cond192
while_end194:
  %714 = load %nyx_string*, %nyx_string** %688
  %715 = getelementptr [2 x i8], [2 x i8]* @.str118, i32 0, i32 0
  %716 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str118.c, i8* %715)
  %717 = call %nyx_string* @nyx_string_concat(%nyx_string* %714, %nyx_string* %716)
  ret %nyx_string* %717
else190:
  br label %merge191
merge191:
  %718 = load %nyx_string*, %nyx_string** %256
  %719 = getelementptr [12 x i8], [12 x i8]* @.str119, i32 0, i32 0
  %720 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str119.c, i8* %719)
  %721 = call i1 @nyx_string_equals(%nyx_string* %718, %nyx_string* %720)
  br i1 %721, label %then198, label %else199
then198:
  %722 = load { i64, i8* }*, { i64, i8* }** %259
  %723 = call i64 @nyx_array_get_checked({ i64, i8* }* %722, i64 0, i64 2)
  %724 = inttoptr i64 %723 to %nyx_string*
  %725 = alloca %nyx_string*
  store %nyx_string* %724, %nyx_string** %725
  %726 = load { i64, i8* }*, { i64, i8* }** %259
  %727 = call i64 @nyx_array_get({ i64, i8* }* %726, i64 1)
  %728 = inttoptr i64 %727 to { i64, i8* }*
  %729 = alloca { i64, i8* }*
  store { i64, i8* }* %728, { i64, i8* }** %729
  %730 = call { i64, i8* }* @nyx_array_new_ptr()
  %731 = alloca { i64, i8* }*
  store { i64, i8* }* %730, { i64, i8* }** %731
  %732 = load { i64, i8* }*, { i64, i8* }** %259
  %733 = call i64 @nyx_array_length({ i64, i8* }* %732)
  %734 = icmp sgt i64 %733, 2
  br i1 %734, label %then201, label %else202
then201:
  %735 = load { i64, i8* }*, { i64, i8* }** %259
  %736 = call i64 @nyx_array_get({ i64, i8* }* %735, i64 2)
  %737 = inttoptr i64 %736 to { i64, i8* }*
  %738 = alloca { i64, i8* }*
  store { i64, i8* }* %737, { i64, i8* }** %738
  %739 = load { i64, i8* }*, { i64, i8* }** %738
  store { i64, i8* }* %739, { i64, i8* }** %731
  br label %merge203
else202:
  br label %merge203
merge203:
  %740 = load %nyx_string*, %nyx_string** %725
  %741 = alloca %nyx_string*
  store %nyx_string* %740, %nyx_string** %741
  %742 = load { i64, i8* }*, { i64, i8* }** %731
  %743 = call i64 @nyx_array_length({ i64, i8* }* %742)
  %744 = icmp sgt i64 %743, 0
  br i1 %744, label %then204, label %else205
then204:
  %745 = load %nyx_string*, %nyx_string** %741
  %746 = getelementptr [2 x i8], [2 x i8]* @.str120, i32 0, i32 0
  %747 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str120.c, i8* %746)
  %748 = call %nyx_string* @nyx_string_concat(%nyx_string* %745, %nyx_string* %747)
  store %nyx_string* %748, %nyx_string** %741
  %749 = alloca i64
  store i64 0, i64* %749
  %750 = getelementptr [3 x i8], [3 x i8]* @.str121, i32 0, i32 0
  %751 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str121.c, i8* %750)
  %752 = alloca %nyx_string*
  store %nyx_string* %751, %nyx_string** %752
  %753 = call i8* @llvm.stacksave()
  br label %while_cond207
while_cond207:
  %754 = load i64, i64* %749
  %755 = load { i64, i8* }*, { i64, i8* }** %731
  %756 = call i64 @nyx_array_length({ i64, i8* }* %755)
  %757 = icmp slt i64 %754, %756
  br i1 %757, label %while_body208, label %while_end209
while_body208:
  call void @llvm.stackrestore(i8* %753)
  %758 = load i64, i64* %749
  %759 = icmp sgt i64 %758, 0
  br i1 %759, label %then210, label %else211
then210:
  %760 = load %nyx_string*, %nyx_string** %741
  %761 = load %nyx_string*, %nyx_string** %752
  %762 = call %nyx_string* @nyx_string_concat(%nyx_string* %760, %nyx_string* %761)
  store %nyx_string* %762, %nyx_string** %741
  br label %merge212
else211:
  br label %merge212
merge212:
  %763 = load { i64, i8* }*, { i64, i8* }** %731
  %764 = load i64, i64* %749
  %765 = call i64 @nyx_array_get_checked({ i64, i8* }* %763, i64 %764, i64 2)
  %766 = inttoptr i64 %765 to %nyx_string*
  %767 = alloca %nyx_string*
  store %nyx_string* %766, %nyx_string** %767
  %768 = load %nyx_string*, %nyx_string** %741
  %769 = load %nyx_string*, %nyx_string** %767
  %770 = call %nyx_string* @nyx_string_concat(%nyx_string* %768, %nyx_string* %769)
  store %nyx_string* %770, %nyx_string** %741
  %771 = load i64, i64* %749
  %772 = add i64 %771, 1
  store i64 %772, i64* %749
  br label %while_cond207
while_end209:
  %773 = load %nyx_string*, %nyx_string** %741
  %774 = getelementptr [2 x i8], [2 x i8]* @.str122, i32 0, i32 0
  %775 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str122.c, i8* %774)
  %776 = call %nyx_string* @nyx_string_concat(%nyx_string* %773, %nyx_string* %775)
  store %nyx_string* %776, %nyx_string** %741
  br label %merge206
else205:
  br label %merge206
merge206:
  %777 = load %nyx_string*, %nyx_string** %741
  %778 = getelementptr [3 x i8], [3 x i8]* @.str123, i32 0, i32 0
  %779 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str123.c, i8* %778)
  %780 = call %nyx_string* @nyx_string_concat(%nyx_string* %777, %nyx_string* %779)
  store %nyx_string* %780, %nyx_string** %741
  %781 = alloca i64
  store i64 0, i64* %781
  %782 = getelementptr [2 x i8], [2 x i8]* @.str124, i32 0, i32 0
  %783 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str124.c, i8* %782)
  %784 = alloca %nyx_string*
  store %nyx_string* %783, %nyx_string** %784
  %785 = getelementptr [2 x i8], [2 x i8]* @.str125, i32 0, i32 0
  %786 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str125.c, i8* %785)
  %787 = alloca %nyx_string*
  store %nyx_string* %786, %nyx_string** %787
  %788 = getelementptr [3 x i8], [3 x i8]* @.str126, i32 0, i32 0
  %789 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str126.c, i8* %788)
  %790 = alloca %nyx_string*
  store %nyx_string* %789, %nyx_string** %790
  %791 = call i8* @llvm.stacksave()
  br label %while_cond213
while_cond213:
  %792 = load i64, i64* %781
  %793 = load { i64, i8* }*, { i64, i8* }** %729
  %794 = call i64 @nyx_array_length({ i64, i8* }* %793)
  %795 = icmp slt i64 %792, %794
  br i1 %795, label %while_body214, label %while_end215
while_body214:
  call void @llvm.stackrestore(i8* %791)
  %796 = load i64, i64* %781
  %797 = icmp sgt i64 %796, 0
  br i1 %797, label %then216, label %else217
then216:
  %798 = load %nyx_string*, %nyx_string** %741
  %799 = load %nyx_string*, %nyx_string** %784
  %800 = call %nyx_string* @nyx_string_concat(%nyx_string* %798, %nyx_string* %799)
  store %nyx_string* %800, %nyx_string** %741
  br label %merge218
else217:
  br label %merge218
merge218:
  %801 = load { i64, i8* }*, { i64, i8* }** %729
  %802 = load i64, i64* %781
  %803 = call i64 @nyx_array_get({ i64, i8* }* %801, i64 %802)
  %804 = inttoptr i64 %803 to { i64, i8* }*
  %805 = alloca { i64, i8* }*
  store { i64, i8* }* %804, { i64, i8* }** %805
  %806 = load { i64, i8* }*, { i64, i8* }** %805
  %807 = call i64 @nyx_array_get_checked({ i64, i8* }* %806, i64 0, i64 2)
  %808 = inttoptr i64 %807 to %nyx_string*
  %809 = alloca %nyx_string*
  store %nyx_string* %808, %nyx_string** %809
  %810 = load { i64, i8* }*, { i64, i8* }** %805
  %811 = call i64 @nyx_array_get({ i64, i8* }* %810, i64 1)
  %812 = inttoptr i64 %811 to { i64, i8* }*
  %813 = alloca { i64, i8* }*
  store { i64, i8* }* %812, { i64, i8* }** %813
  %814 = load %nyx_string*, %nyx_string** %741
  %815 = load %nyx_string*, %nyx_string** %787
  %816 = call %nyx_string* @nyx_string_concat(%nyx_string* %814, %nyx_string* %815)
  %817 = load %nyx_string*, %nyx_string** %809
  %818 = call %nyx_string* @nyx_string_concat(%nyx_string* %816, %nyx_string* %817)
  %819 = load %nyx_string*, %nyx_string** %790
  %820 = call %nyx_string* @nyx_string_concat(%nyx_string* %818, %nyx_string* %819)
  %821 = load { i64, i8* }*, { i64, i8* }** %813
  %822 = call %nyx_string* @fmt_expr({ i64, i8* }* %821)
  %823 = call %nyx_string* @nyx_string_concat(%nyx_string* %820, %nyx_string* %822)
  store %nyx_string* %823, %nyx_string** %741
  %824 = load i64, i64* %781
  %825 = add i64 %824, 1
  store i64 %825, i64* %781
  br label %while_cond213
while_end215:
  %826 = load %nyx_string*, %nyx_string** %741
  %827 = getelementptr [3 x i8], [3 x i8]* @.str127, i32 0, i32 0
  %828 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str127.c, i8* %827)
  %829 = call %nyx_string* @nyx_string_concat(%nyx_string* %826, %nyx_string* %828)
  ret %nyx_string* %829
else199:
  br label %merge200
merge200:
  %830 = load %nyx_string*, %nyx_string** %256
  %831 = getelementptr [6 x i8], [6 x i8]* @.str128, i32 0, i32 0
  %832 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str128.c, i8* %831)
  %833 = call i1 @nyx_string_equals(%nyx_string* %830, %nyx_string* %832)
  br i1 %833, label %then219, label %else220
then219:
  %834 = load { i64, i8* }*, { i64, i8* }** %259
  %835 = call i64 @nyx_array_get({ i64, i8* }* %834, i64 0)
  %836 = inttoptr i64 %835 to { i64, i8* }*
  %837 = alloca { i64, i8* }*
  store { i64, i8* }* %836, { i64, i8* }** %837
  %838 = load { i64, i8* }*, { i64, i8* }** %259
  %839 = call i64 @nyx_array_get({ i64, i8* }* %838, i64 1)
  %840 = inttoptr i64 %839 to { i64, i8* }*
  %841 = alloca { i64, i8* }*
  store { i64, i8* }* %840, { i64, i8* }** %841
  %842 = load { i64, i8* }*, { i64, i8* }** %259
  %843 = call i64 @nyx_array_get_checked({ i64, i8* }* %842, i64 2, i64 2)
  %844 = inttoptr i64 %843 to %nyx_string*
  %845 = alloca %nyx_string*
  store %nyx_string* %844, %nyx_string** %845
  %846 = load %nyx_string*, %nyx_string** %845
  %847 = getelementptr [5 x i8], [5 x i8]* @.str129, i32 0, i32 0
  %848 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str129.c, i8* %847)
  %849 = call i1 @nyx_string_equals(%nyx_string* %846, %nyx_string* %848)
  br i1 %849, label %then222, label %else223
then222:
  %850 = load { i64, i8* }*, { i64, i8* }** %837
  %851 = call %nyx_string* @fmt_expr({ i64, i8* }* %850)
  %852 = getelementptr [4 x i8], [4 x i8]* @.str130, i32 0, i32 0
  %853 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str130.c, i8* %852)
  %854 = call %nyx_string* @nyx_string_concat(%nyx_string* %851, %nyx_string* %853)
  %855 = load { i64, i8* }*, { i64, i8* }** %841
  %856 = call %nyx_string* @fmt_expr({ i64, i8* }* %855)
  %857 = call %nyx_string* @nyx_string_concat(%nyx_string* %854, %nyx_string* %856)
  ret %nyx_string* %857
else223:
  br label %merge224
merge224:
  %858 = load { i64, i8* }*, { i64, i8* }** %837
  %859 = call %nyx_string* @fmt_expr({ i64, i8* }* %858)
  %860 = getelementptr [3 x i8], [3 x i8]* @.str131, i32 0, i32 0
  %861 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str131.c, i8* %860)
  %862 = call %nyx_string* @nyx_string_concat(%nyx_string* %859, %nyx_string* %861)
  %863 = load { i64, i8* }*, { i64, i8* }** %841
  %864 = call %nyx_string* @fmt_expr({ i64, i8* }* %863)
  %865 = call %nyx_string* @nyx_string_concat(%nyx_string* %862, %nyx_string* %864)
  ret %nyx_string* %865
else220:
  br label %merge221
merge221:
  %866 = load %nyx_string*, %nyx_string** %256
  %867 = getelementptr [7 x i8], [7 x i8]* @.str132, i32 0, i32 0
  %868 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str132.c, i8* %867)
  %869 = call i1 @nyx_string_equals(%nyx_string* %866, %nyx_string* %868)
  br i1 %869, label %then225, label %else226
then225:
  %870 = load { i64, i8* }*, { i64, i8* }** %259
  %871 = call i64 @nyx_array_get({ i64, i8* }* %870, i64 0)
  %872 = inttoptr i64 %871 to { i64, i8* }*
  %873 = alloca { i64, i8* }*
  store { i64, i8* }* %872, { i64, i8* }** %873
  %874 = load { i64, i8* }*, { i64, i8* }** %873
  %875 = call %nyx_string* @fmt_expr({ i64, i8* }* %874)
  %876 = getelementptr [2 x i8], [2 x i8]* @.str133, i32 0, i32 0
  %877 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str133.c, i8* %876)
  %878 = call %nyx_string* @nyx_string_concat(%nyx_string* %875, %nyx_string* %877)
  ret %nyx_string* %878
else226:
  br label %merge227
merge227:
  %879 = load %nyx_string*, %nyx_string** %256
  %880 = getelementptr [7 x i8], [7 x i8]* @.str134, i32 0, i32 0
  %881 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str134.c, i8* %880)
  %882 = call i1 @nyx_string_equals(%nyx_string* %879, %nyx_string* %881)
  br i1 %882, label %then228, label %else229
then228:
  %883 = load { i64, i8* }*, { i64, i8* }** %259
  %884 = call i64 @nyx_array_get({ i64, i8* }* %883, i64 0)
  %885 = inttoptr i64 %884 to { i64, i8* }*
  %886 = alloca { i64, i8* }*
  store { i64, i8* }* %885, { i64, i8* }** %886
  %887 = load { i64, i8* }*, { i64, i8* }** %259
  %888 = call i64 @nyx_array_get({ i64, i8* }* %887, i64 1)
  %889 = inttoptr i64 %888 to { i64, i8* }*
  %890 = alloca { i64, i8* }*
  store { i64, i8* }* %889, { i64, i8* }** %890
  %891 = load { i64, i8* }*, { i64, i8* }** %890
  %892 = call %nyx_string* @node_type({ i64, i8* }* %891)
  %893 = getelementptr [7 x i8], [7 x i8]* @.str135, i32 0, i32 0
  %894 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str135.c, i8* %893)
  %895 = call i1 @nyx_string_equals(%nyx_string* %892, %nyx_string* %894)
  br i1 %895, label %then231, label %else232
then231:
  %896 = load { i64, i8* }*, { i64, i8* }** %890
  %897 = call { i64, i8* }* @node_data({ i64, i8* }* %896)
  %898 = alloca { i64, i8* }*
  store { i64, i8* }* %897, { i64, i8* }** %898
  %899 = load { i64, i8* }*, { i64, i8* }** %898
  %900 = call i64 @nyx_array_get_checked({ i64, i8* }* %899, i64 0, i64 2)
  %901 = inttoptr i64 %900 to %nyx_string*
  %902 = alloca %nyx_string*
  store %nyx_string* %901, %nyx_string** %902
  %903 = load %nyx_string*, %nyx_string** %902
  %904 = getelementptr [17 x i8], [17 x i8]* @.str136, i32 0, i32 0
  %905 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str136.c, i8* %904)
  %906 = call i1 @nyx_string_equals(%nyx_string* %903, %nyx_string* %905)
  br i1 %906, label %then234, label %else235
then234:
  %907 = getelementptr [8 x i8], [8 x i8]* @.str137, i32 0, i32 0
  %908 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str137.c, i8* %907)
  %909 = load { i64, i8* }*, { i64, i8* }** %886
  %910 = call %nyx_string* @fmt_expr({ i64, i8* }* %909)
  %911 = call %nyx_string* @nyx_string_concat(%nyx_string* %908, %nyx_string* %910)
  %912 = getelementptr [2 x i8], [2 x i8]* @.str138, i32 0, i32 0
  %913 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str138.c, i8* %912)
  %914 = call %nyx_string* @nyx_string_concat(%nyx_string* %911, %nyx_string* %913)
  ret %nyx_string* %914
else235:
  br label %merge236
merge236:
  br label %merge233
else232:
  br label %merge233
merge233:
  %915 = getelementptr [8 x i8], [8 x i8]* @.str139, i32 0, i32 0
  %916 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str139.c, i8* %915)
  %917 = load { i64, i8* }*, { i64, i8* }** %886
  %918 = call %nyx_string* @fmt_expr({ i64, i8* }* %917)
  %919 = call %nyx_string* @nyx_string_concat(%nyx_string* %916, %nyx_string* %918)
  %920 = getelementptr [3 x i8], [3 x i8]* @.str140, i32 0, i32 0
  %921 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str140.c, i8* %920)
  %922 = call %nyx_string* @nyx_string_concat(%nyx_string* %919, %nyx_string* %921)
  %923 = load { i64, i8* }*, { i64, i8* }** %890
  %924 = call %nyx_string* @fmt_expr({ i64, i8* }* %923)
  %925 = call %nyx_string* @nyx_string_concat(%nyx_string* %922, %nyx_string* %924)
  %926 = getelementptr [2 x i8], [2 x i8]* @.str141, i32 0, i32 0
  %927 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str141.c, i8* %926)
  %928 = call %nyx_string* @nyx_string_concat(%nyx_string* %925, %nyx_string* %927)
  ret %nyx_string* %928
else229:
  br label %merge230
merge230:
  %929 = load %nyx_string*, %nyx_string** %256
  %930 = getelementptr [6 x i8], [6 x i8]* @.str142, i32 0, i32 0
  %931 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str142.c, i8* %930)
  %932 = call i1 @nyx_string_equals(%nyx_string* %929, %nyx_string* %931)
  br i1 %932, label %then237, label %else238
then237:
  %933 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %934 = call %nyx_string* @fmt_match_expr({ i64, i8* }* %933)
  ret %nyx_string* %934
else238:
  br label %merge239
merge239:
  %935 = getelementptr [18 x i8], [18 x i8]* @.str143, i32 0, i32 0
  %936 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str143.c, i8* %935)
  %937 = load %nyx_string*, %nyx_string** %256
  %938 = call %nyx_string* @nyx_string_concat(%nyx_string* %936, %nyx_string* %937)
  %939 = getelementptr [4 x i8], [4 x i8]* @.str144, i32 0, i32 0
  %940 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str144.c, i8* %939)
  %941 = call %nyx_string* @nyx_string_concat(%nyx_string* %938, %nyx_string* %940)
  ret %nyx_string* %941
}

define internal %nyx_string* @fmt_match_expr(
{ i64, i8* }* %node.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %942 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %943 = call { i64, i8* }* @node_data({ i64, i8* }* %942)
  %944 = alloca { i64, i8* }*
  store { i64, i8* }* %943, { i64, i8* }** %944
  %945 = load { i64, i8* }*, { i64, i8* }** %944
  %946 = call i64 @nyx_array_get({ i64, i8* }* %945, i64 0)
  %947 = inttoptr i64 %946 to { i64, i8* }*
  %948 = alloca { i64, i8* }*
  store { i64, i8* }* %947, { i64, i8* }** %948
  %949 = load { i64, i8* }*, { i64, i8* }** %944
  %950 = call i64 @nyx_array_get({ i64, i8* }* %949, i64 1)
  %951 = inttoptr i64 %950 to { i64, i8* }*
  %952 = alloca { i64, i8* }*
  store { i64, i8* }* %951, { i64, i8* }** %952
  %953 = getelementptr [7 x i8], [7 x i8]* @.str145, i32 0, i32 0
  %954 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str145.c, i8* %953)
  %955 = load { i64, i8* }*, { i64, i8* }** %948
  %956 = call %nyx_string* @fmt_expr({ i64, i8* }* %955)
  %957 = call %nyx_string* @nyx_string_concat(%nyx_string* %954, %nyx_string* %956)
  %958 = getelementptr [4 x i8], [4 x i8]* @.str146, i32 0, i32 0
  %959 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str146.c, i8* %958)
  %960 = call %nyx_string* @nyx_string_concat(%nyx_string* %957, %nyx_string* %959)
  %961 = alloca %nyx_string*
  store %nyx_string* %960, %nyx_string** %961
  %962 = load i64, i64* @g_indent
  %963 = add i64 %962, 1
  store i64 %963, i64* @g_indent
  %964 = alloca i64
  store i64 0, i64* %964
  %965 = getelementptr [5 x i8], [5 x i8]* @.str147, i32 0, i32 0
  %966 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str147.c, i8* %965)
  %967 = alloca %nyx_string*
  store %nyx_string* %966, %nyx_string** %967
  %968 = getelementptr [6 x i8], [6 x i8]* @.str148, i32 0, i32 0
  %969 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str148.c, i8* %968)
  %970 = alloca %nyx_string*
  store %nyx_string* %969, %nyx_string** %970
  %971 = getelementptr [3 x i8], [3 x i8]* @.str149, i32 0, i32 0
  %972 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str149.c, i8* %971)
  %973 = alloca %nyx_string*
  store %nyx_string* %972, %nyx_string** %973
  %974 = getelementptr [2 x i8], [2 x i8]* @.str150, i32 0, i32 0
  %975 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str150.c, i8* %974)
  %976 = alloca %nyx_string*
  store %nyx_string* %975, %nyx_string** %976
  %977 = getelementptr [2 x i8], [2 x i8]* @.str151, i32 0, i32 0
  %978 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str151.c, i8* %977)
  %979 = alloca %nyx_string*
  store %nyx_string* %978, %nyx_string** %979
  %980 = getelementptr [2 x i8], [2 x i8]* @.str152, i32 0, i32 0
  %981 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str152.c, i8* %980)
  %982 = alloca %nyx_string*
  store %nyx_string* %981, %nyx_string** %982
  %983 = call i8* @llvm.stacksave()
  br label %while_cond240
while_cond240:
  %984 = load i64, i64* %964
  %985 = load { i64, i8* }*, { i64, i8* }** %952
  %986 = call i64 @nyx_array_length({ i64, i8* }* %985)
  %987 = icmp slt i64 %984, %986
  br i1 %987, label %while_body241, label %while_end242
while_body241:
  call void @llvm.stackrestore(i8* %983)
  %988 = load { i64, i8* }*, { i64, i8* }** %952
  %989 = load i64, i64* %964
  %990 = call i64 @nyx_array_get({ i64, i8* }* %988, i64 %989)
  %991 = inttoptr i64 %990 to { i64, i8* }*
  %992 = alloca { i64, i8* }*
  store { i64, i8* }* %991, { i64, i8* }** %992
  %993 = load { i64, i8* }*, { i64, i8* }** %992
  %994 = call { i64, i8* }* @node_data({ i64, i8* }* %993)
  %995 = alloca { i64, i8* }*
  store { i64, i8* }* %994, { i64, i8* }** %995
  %996 = load { i64, i8* }*, { i64, i8* }** %995
  %997 = call i64 @nyx_array_get({ i64, i8* }* %996, i64 0)
  %998 = inttoptr i64 %997 to { i64, i8* }*
  %999 = alloca { i64, i8* }*
  store { i64, i8* }* %998, { i64, i8* }** %999
  %1000 = load { i64, i8* }*, { i64, i8* }** %995
  %1001 = call i64 @nyx_array_get({ i64, i8* }* %1000, i64 1)
  %1002 = inttoptr i64 %1001 to { i64, i8* }*
  %1003 = alloca { i64, i8* }*
  store { i64, i8* }* %1002, { i64, i8* }** %1003
  %1004 = load %nyx_string*, %nyx_string** %961
  %1005 = call %nyx_string* @indent_str()
  %1006 = call %nyx_string* @nyx_string_concat(%nyx_string* %1004, %nyx_string* %1005)
  %1007 = load { i64, i8* }*, { i64, i8* }** %999
  %1008 = call %nyx_string* @fmt_pattern({ i64, i8* }* %1007)
  %1009 = call %nyx_string* @nyx_string_concat(%nyx_string* %1006, %nyx_string* %1008)
  %1010 = load %nyx_string*, %nyx_string** %967
  %1011 = call %nyx_string* @nyx_string_concat(%nyx_string* %1009, %nyx_string* %1010)
  store %nyx_string* %1011, %nyx_string** %961
  %1012 = load { i64, i8* }*, { i64, i8* }** %1003
  %1013 = call %nyx_string* @node_type({ i64, i8* }* %1012)
  %1014 = load %nyx_string*, %nyx_string** %970
  %1015 = call i1 @nyx_string_equals(%nyx_string* %1013, %nyx_string* %1014)
  br i1 %1015, label %then243, label %else244
then243:
  %1016 = load %nyx_string*, %nyx_string** %961
  %1017 = load %nyx_string*, %nyx_string** %973
  %1018 = call %nyx_string* @nyx_string_concat(%nyx_string* %1016, %nyx_string* %1017)
  store %nyx_string* %1018, %nyx_string** %961
  %1019 = load i64, i64* @g_indent
  %1020 = add i64 %1019, 1
  store i64 %1020, i64* @g_indent
  %1021 = load %nyx_string*, %nyx_string** %961
  %1022 = load { i64, i8* }*, { i64, i8* }** %1003
  %1023 = call %nyx_string* @fmt_block_contents({ i64, i8* }* %1022)
  %1024 = call %nyx_string* @nyx_string_concat(%nyx_string* %1021, %nyx_string* %1023)
  store %nyx_string* %1024, %nyx_string** %961
  %1025 = load i64, i64* @g_indent
  %1026 = sub i64 %1025, 1
  store i64 %1026, i64* @g_indent
  %1027 = load %nyx_string*, %nyx_string** %961
  %1028 = call %nyx_string* @indent_str()
  %1029 = call %nyx_string* @nyx_string_concat(%nyx_string* %1027, %nyx_string* %1028)
  %1030 = load %nyx_string*, %nyx_string** %976
  %1031 = call %nyx_string* @nyx_string_concat(%nyx_string* %1029, %nyx_string* %1030)
  store %nyx_string* %1031, %nyx_string** %961
  br label %merge245
else244:
  %1032 = load %nyx_string*, %nyx_string** %961
  %1033 = load { i64, i8* }*, { i64, i8* }** %1003
  %1034 = call %nyx_string* @fmt_expr({ i64, i8* }* %1033)
  %1035 = call %nyx_string* @nyx_string_concat(%nyx_string* %1032, %nyx_string* %1034)
  store %nyx_string* %1035, %nyx_string** %961
  br label %merge245
merge245:
  %1036 = load i64, i64* %964
  %1037 = load { i64, i8* }*, { i64, i8* }** %952
  %1038 = call i64 @nyx_array_length({ i64, i8* }* %1037)
  %1039 = sub i64 %1038, 1
  %1040 = icmp slt i64 %1036, %1039
  br i1 %1040, label %then246, label %else247
then246:
  %1041 = load %nyx_string*, %nyx_string** %961
  %1042 = load %nyx_string*, %nyx_string** %979
  %1043 = call %nyx_string* @nyx_string_concat(%nyx_string* %1041, %nyx_string* %1042)
  store %nyx_string* %1043, %nyx_string** %961
  br label %merge248
else247:
  br label %merge248
merge248:
  %1044 = load %nyx_string*, %nyx_string** %961
  %1045 = load %nyx_string*, %nyx_string** %982
  %1046 = call %nyx_string* @nyx_string_concat(%nyx_string* %1044, %nyx_string* %1045)
  store %nyx_string* %1046, %nyx_string** %961
  %1047 = load i64, i64* %964
  %1048 = add i64 %1047, 1
  store i64 %1048, i64* %964
  br label %while_cond240
while_end242:
  %1049 = load i64, i64* @g_indent
  %1050 = sub i64 %1049, 1
  store i64 %1050, i64* @g_indent
  %1051 = load %nyx_string*, %nyx_string** %961
  %1052 = call %nyx_string* @indent_str()
  %1053 = call %nyx_string* @nyx_string_concat(%nyx_string* %1051, %nyx_string* %1052)
  %1054 = getelementptr [2 x i8], [2 x i8]* @.str153, i32 0, i32 0
  %1055 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str153.c, i8* %1054)
  %1056 = call %nyx_string* @nyx_string_concat(%nyx_string* %1053, %nyx_string* %1055)
  store %nyx_string* %1056, %nyx_string** %961
  %1057 = load %nyx_string*, %nyx_string** %961
  ret %nyx_string* %1057
}

define internal %nyx_string* @fmt_pattern(
{ i64, i8* }* %node.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %1058 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1059 = call %nyx_string* @node_type({ i64, i8* }* %1058)
  %1060 = alloca %nyx_string*
  store %nyx_string* %1059, %nyx_string** %1060
  %1061 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1062 = call { i64, i8* }* @node_data({ i64, i8* }* %1061)
  %1063 = alloca { i64, i8* }*
  store { i64, i8* }* %1062, { i64, i8* }** %1063
  %1064 = load %nyx_string*, %nyx_string** %1060
  %1065 = getelementptr [14 x i8], [14 x i8]* @.str154, i32 0, i32 0
  %1066 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str154.c, i8* %1065)
  %1067 = call i1 @nyx_string_equals(%nyx_string* %1064, %nyx_string* %1066)
  br i1 %1067, label %then249, label %else250
then249:
  %1068 = load { i64, i8* }*, { i64, i8* }** %1063
  %1069 = call i64 @nyx_array_get_checked({ i64, i8* }* %1068, i64 0, i64 2)
  %1070 = inttoptr i64 %1069 to %nyx_string*
  %1071 = alloca %nyx_string*
  store %nyx_string* %1070, %nyx_string** %1071
  %1072 = load { i64, i8* }*, { i64, i8* }** %1063
  %1073 = call i64 @nyx_array_get_checked({ i64, i8* }* %1072, i64 1, i64 2)
  %1074 = inttoptr i64 %1073 to %nyx_string*
  %1075 = alloca %nyx_string*
  store %nyx_string* %1074, %nyx_string** %1075
  %1076 = load { i64, i8* }*, { i64, i8* }** %1063
  %1077 = call i64 @nyx_array_get({ i64, i8* }* %1076, i64 2)
  %1078 = inttoptr i64 %1077 to { i64, i8* }*
  %1079 = alloca { i64, i8* }*
  store { i64, i8* }* %1078, { i64, i8* }** %1079
  %1080 = load %nyx_string*, %nyx_string** %1071
  %1081 = getelementptr [2 x i8], [2 x i8]* @.str155, i32 0, i32 0
  %1082 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str155.c, i8* %1081)
  %1083 = call %nyx_string* @nyx_string_concat(%nyx_string* %1080, %nyx_string* %1082)
  %1084 = load %nyx_string*, %nyx_string** %1075
  %1085 = call %nyx_string* @nyx_string_concat(%nyx_string* %1083, %nyx_string* %1084)
  %1086 = alloca %nyx_string*
  store %nyx_string* %1085, %nyx_string** %1086
  %1087 = load { i64, i8* }*, { i64, i8* }** %1079
  %1088 = call i64 @nyx_array_length({ i64, i8* }* %1087)
  %1089 = icmp sgt i64 %1088, 0
  br i1 %1089, label %then252, label %else253
then252:
  %1090 = load %nyx_string*, %nyx_string** %1086
  %1091 = getelementptr [2 x i8], [2 x i8]* @.str156, i32 0, i32 0
  %1092 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str156.c, i8* %1091)
  %1093 = call %nyx_string* @nyx_string_concat(%nyx_string* %1090, %nyx_string* %1092)
  store %nyx_string* %1093, %nyx_string** %1086
  %1094 = alloca i64
  store i64 0, i64* %1094
  %1095 = getelementptr [3 x i8], [3 x i8]* @.str157, i32 0, i32 0
  %1096 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str157.c, i8* %1095)
  %1097 = alloca %nyx_string*
  store %nyx_string* %1096, %nyx_string** %1097
  %1098 = call i8* @llvm.stacksave()
  br label %while_cond255
while_cond255:
  %1099 = load i64, i64* %1094
  %1100 = load { i64, i8* }*, { i64, i8* }** %1079
  %1101 = call i64 @nyx_array_length({ i64, i8* }* %1100)
  %1102 = icmp slt i64 %1099, %1101
  br i1 %1102, label %while_body256, label %while_end257
while_body256:
  call void @llvm.stackrestore(i8* %1098)
  %1103 = load i64, i64* %1094
  %1104 = icmp sgt i64 %1103, 0
  br i1 %1104, label %then258, label %else259
then258:
  %1105 = load %nyx_string*, %nyx_string** %1086
  %1106 = load %nyx_string*, %nyx_string** %1097
  %1107 = call %nyx_string* @nyx_string_concat(%nyx_string* %1105, %nyx_string* %1106)
  store %nyx_string* %1107, %nyx_string** %1086
  br label %merge260
else259:
  br label %merge260
merge260:
  %1108 = load { i64, i8* }*, { i64, i8* }** %1079
  %1109 = load i64, i64* %1094
  %1110 = call i64 @nyx_array_get_checked({ i64, i8* }* %1108, i64 %1109, i64 2)
  %1111 = inttoptr i64 %1110 to %nyx_string*
  %1112 = alloca %nyx_string*
  store %nyx_string* %1111, %nyx_string** %1112
  %1113 = load %nyx_string*, %nyx_string** %1086
  %1114 = load %nyx_string*, %nyx_string** %1112
  %1115 = call %nyx_string* @nyx_string_concat(%nyx_string* %1113, %nyx_string* %1114)
  store %nyx_string* %1115, %nyx_string** %1086
  %1116 = load i64, i64* %1094
  %1117 = add i64 %1116, 1
  store i64 %1117, i64* %1094
  br label %while_cond255
while_end257:
  %1118 = load %nyx_string*, %nyx_string** %1086
  %1119 = getelementptr [2 x i8], [2 x i8]* @.str158, i32 0, i32 0
  %1120 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str158.c, i8* %1119)
  %1121 = call %nyx_string* @nyx_string_concat(%nyx_string* %1118, %nyx_string* %1120)
  store %nyx_string* %1121, %nyx_string** %1086
  br label %merge254
else253:
  br label %merge254
merge254:
  %1122 = load %nyx_string*, %nyx_string** %1086
  ret %nyx_string* %1122
else250:
  br label %merge251
merge251:
  %1123 = load %nyx_string*, %nyx_string** %1060
  %1124 = getelementptr [9 x i8], [9 x i8]* @.str159, i32 0, i32 0
  %1125 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str159.c, i8* %1124)
  %1126 = call i1 @nyx_string_equals(%nyx_string* %1123, %nyx_string* %1125)
  br i1 %1126, label %then261, label %else262
then261:
  %1127 = getelementptr [2 x i8], [2 x i8]* @.str160, i32 0, i32 0
  %1128 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str160.c, i8* %1127)
  ret %nyx_string* %1128
else262:
  br label %merge263
merge263:
  %1129 = alloca i1
  store i1 true, i1* %1129
  %1130 = alloca i1
  store i1 true, i1* %1130
  %1131 = alloca i1
  store i1 true, i1* %1131
  %1132 = load %nyx_string*, %nyx_string** %1060
  %1133 = getelementptr [7 x i8], [7 x i8]* @.str161, i32 0, i32 0
  %1134 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str161.c, i8* %1133)
  %1135 = call i1 @nyx_string_equals(%nyx_string* %1132, %nyx_string* %1134)
  br i1 %1135, label %sc_or_end265, label %sc_or_rhs264
sc_or_rhs264:
  %1136 = load %nyx_string*, %nyx_string** %1060
  %1137 = getelementptr [7 x i8], [7 x i8]* @.str162, i32 0, i32 0
  %1138 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str162.c, i8* %1137)
  %1139 = call i1 @nyx_string_equals(%nyx_string* %1136, %nyx_string* %1138)
  store i1 %1139, i1* %1131
  br label %sc_or_end265
sc_or_end265:
  %1140 = load i1, i1* %1131
  br i1 %1140, label %sc_or_end267, label %sc_or_rhs266
sc_or_rhs266:
  %1141 = load %nyx_string*, %nyx_string** %1060
  %1142 = getelementptr [5 x i8], [5 x i8]* @.str163, i32 0, i32 0
  %1143 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str163.c, i8* %1142)
  %1144 = call i1 @nyx_string_equals(%nyx_string* %1141, %nyx_string* %1143)
  store i1 %1144, i1* %1130
  br label %sc_or_end267
sc_or_end267:
  %1145 = load i1, i1* %1130
  br i1 %1145, label %sc_or_end269, label %sc_or_rhs268
sc_or_rhs268:
  %1146 = load %nyx_string*, %nyx_string** %1060
  %1147 = getelementptr [11 x i8], [11 x i8]* @.str164, i32 0, i32 0
  %1148 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str164.c, i8* %1147)
  %1149 = call i1 @nyx_string_equals(%nyx_string* %1146, %nyx_string* %1148)
  store i1 %1149, i1* %1129
  br label %sc_or_end269
sc_or_end269:
  %1150 = load i1, i1* %1129
  br i1 %1150, label %then270, label %else271
then270:
  %1151 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1152 = call %nyx_string* @fmt_expr({ i64, i8* }* %1151)
  ret %nyx_string* %1152
else271:
  br label %merge272
merge272:
  %1153 = getelementptr [22 x i8], [22 x i8]* @.str165, i32 0, i32 0
  %1154 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str165.c, i8* %1153)
  ret %nyx_string* %1154
}

define internal i64 @fmt_stmt(
{ i64, i8* }* %node.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %1155 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1156 = call %nyx_string* @node_type({ i64, i8* }* %1155)
  %1157 = alloca %nyx_string*
  store %nyx_string* %1156, %nyx_string** %1157
  %1158 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1159 = call { i64, i8* }* @node_data({ i64, i8* }* %1158)
  %1160 = alloca { i64, i8* }*
  store { i64, i8* }* %1159, { i64, i8* }** %1160
  %1161 = alloca i1
  store i1 true, i1* %1161
  %1162 = load %nyx_string*, %nyx_string** %1157
  %1163 = getelementptr [4 x i8], [4 x i8]* @.str166, i32 0, i32 0
  %1164 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str166.c, i8* %1163)
  %1165 = call i1 @nyx_string_equals(%nyx_string* %1162, %nyx_string* %1164)
  br i1 %1165, label %sc_or_end274, label %sc_or_rhs273
sc_or_rhs273:
  %1166 = load %nyx_string*, %nyx_string** %1157
  %1167 = getelementptr [6 x i8], [6 x i8]* @.str167, i32 0, i32 0
  %1168 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str167.c, i8* %1167)
  %1169 = call i1 @nyx_string_equals(%nyx_string* %1166, %nyx_string* %1168)
  store i1 %1169, i1* %1161
  br label %sc_or_end274
sc_or_end274:
  %1170 = load i1, i1* %1161
  br i1 %1170, label %then275, label %else276
then275:
  %1171 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1172 = load %nyx_string*, %nyx_string** %1157
  %1173 = call i64 @fmt_let({ i64, i8* }* %1171, %nyx_string* %1172)
  ret i64 0
else276:
  br label %merge277
merge277:
  %1174 = load %nyx_string*, %nyx_string** %1157
  %1175 = getelementptr [22 x i8], [22 x i8]* @.str168, i32 0, i32 0
  %1176 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str168.c, i8* %1175)
  %1177 = call i1 @nyx_string_equals(%nyx_string* %1174, %nyx_string* %1176)
  br i1 %1177, label %then278, label %else279
then278:
  %1178 = load { i64, i8* }*, { i64, i8* }** %1160
  %1179 = call i64 @nyx_array_get({ i64, i8* }* %1178, i64 0)
  %1180 = inttoptr i64 %1179 to { i64, i8* }*
  %1181 = alloca { i64, i8* }*
  store { i64, i8* }* %1180, { i64, i8* }** %1181
  %1182 = load { i64, i8* }*, { i64, i8* }** %1160
  %1183 = call i64 @nyx_array_get({ i64, i8* }* %1182, i64 2)
  %1184 = inttoptr i64 %1183 to { i64, i8* }*
  %1185 = alloca { i64, i8* }*
  store { i64, i8* }* %1184, { i64, i8* }** %1185
  %1186 = getelementptr [2 x i8], [2 x i8]* @.str169, i32 0, i32 0
  %1187 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str169.c, i8* %1186)
  %1188 = alloca %nyx_string*
  store %nyx_string* %1187, %nyx_string** %1188
  %1189 = alloca i64
  store i64 0, i64* %1189
  %1190 = getelementptr [3 x i8], [3 x i8]* @.str170, i32 0, i32 0
  %1191 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str170.c, i8* %1190)
  %1192 = alloca %nyx_string*
  store %nyx_string* %1191, %nyx_string** %1192
  %1193 = call i8* @llvm.stacksave()
  br label %while_cond281
while_cond281:
  %1194 = load i64, i64* %1189
  %1195 = load { i64, i8* }*, { i64, i8* }** %1181
  %1196 = call i64 @nyx_array_length({ i64, i8* }* %1195)
  %1197 = icmp slt i64 %1194, %1196
  br i1 %1197, label %while_body282, label %while_end283
while_body282:
  call void @llvm.stackrestore(i8* %1193)
  %1198 = load i64, i64* %1189
  %1199 = icmp sgt i64 %1198, 0
  br i1 %1199, label %then284, label %else285
then284:
  %1200 = load %nyx_string*, %nyx_string** %1188
  %1201 = load %nyx_string*, %nyx_string** %1192
  %1202 = call %nyx_string* @nyx_string_concat(%nyx_string* %1200, %nyx_string* %1201)
  store %nyx_string* %1202, %nyx_string** %1188
  br label %merge286
else285:
  br label %merge286
merge286:
  %1203 = load { i64, i8* }*, { i64, i8* }** %1181
  %1204 = load i64, i64* %1189
  %1205 = call i64 @nyx_array_get_checked({ i64, i8* }* %1203, i64 %1204, i64 2)
  %1206 = inttoptr i64 %1205 to %nyx_string*
  %1207 = alloca %nyx_string*
  store %nyx_string* %1206, %nyx_string** %1207
  %1208 = load %nyx_string*, %nyx_string** %1188
  %1209 = load %nyx_string*, %nyx_string** %1207
  %1210 = call %nyx_string* @nyx_string_concat(%nyx_string* %1208, %nyx_string* %1209)
  store %nyx_string* %1210, %nyx_string** %1188
  %1211 = load i64, i64* %1189
  %1212 = add i64 %1211, 1
  store i64 %1212, i64* %1189
  br label %while_cond281
while_end283:
  %1213 = load %nyx_string*, %nyx_string** %1188
  %1214 = getelementptr [2 x i8], [2 x i8]* @.str171, i32 0, i32 0
  %1215 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str171.c, i8* %1214)
  %1216 = call %nyx_string* @nyx_string_concat(%nyx_string* %1213, %nyx_string* %1215)
  store %nyx_string* %1216, %nyx_string** %1188
  %1217 = getelementptr [5 x i8], [5 x i8]* @.str172, i32 0, i32 0
  %1218 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str172.c, i8* %1217)
  %1219 = load %nyx_string*, %nyx_string** %1188
  %1220 = call %nyx_string* @nyx_string_concat(%nyx_string* %1218, %nyx_string* %1219)
  %1221 = getelementptr [4 x i8], [4 x i8]* @.str173, i32 0, i32 0
  %1222 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str173.c, i8* %1221)
  %1223 = call %nyx_string* @nyx_string_concat(%nyx_string* %1220, %nyx_string* %1222)
  %1224 = load { i64, i8* }*, { i64, i8* }** %1185
  %1225 = call %nyx_string* @fmt_expr({ i64, i8* }* %1224)
  %1226 = call %nyx_string* @nyx_string_concat(%nyx_string* %1223, %nyx_string* %1225)
  %1227 = call i64 @out_line(%nyx_string* %1226)
  ret i64 0
else279:
  br label %merge280
merge280:
  %1228 = load %nyx_string*, %nyx_string** %1157
  %1229 = getelementptr [7 x i8], [7 x i8]* @.str174, i32 0, i32 0
  %1230 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str174.c, i8* %1229)
  %1231 = call i1 @nyx_string_equals(%nyx_string* %1228, %nyx_string* %1230)
  br i1 %1231, label %then287, label %else288
then287:
  %1232 = load { i64, i8* }*, { i64, i8* }** %1160
  %1233 = call i64 @nyx_array_get({ i64, i8* }* %1232, i64 0)
  %1234 = inttoptr i64 %1233 to { i64, i8* }*
  %1235 = alloca { i64, i8* }*
  store { i64, i8* }* %1234, { i64, i8* }** %1235
  %1236 = load { i64, i8* }*, { i64, i8* }** %1235
  %1237 = call i64 @nyx_array_get_checked({ i64, i8* }* %1236, i64 0, i64 2)
  %1238 = inttoptr i64 %1237 to %nyx_string*
  %1239 = alloca %nyx_string*
  store %nyx_string* %1238, %nyx_string** %1239
  %1240 = load { i64, i8* }*, { i64, i8* }** %1160
  %1241 = call i64 @nyx_array_get({ i64, i8* }* %1240, i64 1)
  %1242 = inttoptr i64 %1241 to { i64, i8* }*
  %1243 = alloca { i64, i8* }*
  store { i64, i8* }* %1242, { i64, i8* }** %1243
  %1244 = load %nyx_string*, %nyx_string** %1239
  %1245 = getelementptr [4 x i8], [4 x i8]* @.str175, i32 0, i32 0
  %1246 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str175.c, i8* %1245)
  %1247 = call %nyx_string* @nyx_string_concat(%nyx_string* %1244, %nyx_string* %1246)
  %1248 = load { i64, i8* }*, { i64, i8* }** %1243
  %1249 = call %nyx_string* @fmt_expr({ i64, i8* }* %1248)
  %1250 = call %nyx_string* @nyx_string_concat(%nyx_string* %1247, %nyx_string* %1249)
  %1251 = call i64 @out_line(%nyx_string* %1250)
  ret i64 0
else288:
  br label %merge289
merge289:
  %1252 = load %nyx_string*, %nyx_string** %1157
  %1253 = getelementptr [13 x i8], [13 x i8]* @.str176, i32 0, i32 0
  %1254 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str176.c, i8* %1253)
  %1255 = call i1 @nyx_string_equals(%nyx_string* %1252, %nyx_string* %1254)
  br i1 %1255, label %then290, label %else291
then290:
  %1256 = load { i64, i8* }*, { i64, i8* }** %1160
  %1257 = call i64 @nyx_array_get({ i64, i8* }* %1256, i64 0)
  %1258 = inttoptr i64 %1257 to { i64, i8* }*
  %1259 = alloca { i64, i8* }*
  store { i64, i8* }* %1258, { i64, i8* }** %1259
  %1260 = load { i64, i8* }*, { i64, i8* }** %1160
  %1261 = call i64 @nyx_array_get_checked({ i64, i8* }* %1260, i64 1, i64 2)
  %1262 = inttoptr i64 %1261 to %nyx_string*
  %1263 = alloca %nyx_string*
  store %nyx_string* %1262, %nyx_string** %1263
  %1264 = load { i64, i8* }*, { i64, i8* }** %1160
  %1265 = call i64 @nyx_array_get({ i64, i8* }* %1264, i64 2)
  %1266 = inttoptr i64 %1265 to { i64, i8* }*
  %1267 = alloca { i64, i8* }*
  store { i64, i8* }* %1266, { i64, i8* }** %1267
  %1268 = load { i64, i8* }*, { i64, i8* }** %1259
  %1269 = call %nyx_string* @fmt_expr({ i64, i8* }* %1268)
  %1270 = getelementptr [2 x i8], [2 x i8]* @.str177, i32 0, i32 0
  %1271 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str177.c, i8* %1270)
  %1272 = call %nyx_string* @nyx_string_concat(%nyx_string* %1269, %nyx_string* %1271)
  %1273 = load %nyx_string*, %nyx_string** %1263
  %1274 = call %nyx_string* @nyx_string_concat(%nyx_string* %1272, %nyx_string* %1273)
  %1275 = getelementptr [4 x i8], [4 x i8]* @.str178, i32 0, i32 0
  %1276 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str178.c, i8* %1275)
  %1277 = call %nyx_string* @nyx_string_concat(%nyx_string* %1274, %nyx_string* %1276)
  %1278 = load { i64, i8* }*, { i64, i8* }** %1267
  %1279 = call %nyx_string* @fmt_expr({ i64, i8* }* %1278)
  %1280 = call %nyx_string* @nyx_string_concat(%nyx_string* %1277, %nyx_string* %1279)
  %1281 = call i64 @out_line(%nyx_string* %1280)
  ret i64 0
else291:
  br label %merge292
merge292:
  %1282 = load %nyx_string*, %nyx_string** %1157
  %1283 = getelementptr [13 x i8], [13 x i8]* @.str179, i32 0, i32 0
  %1284 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str179.c, i8* %1283)
  %1285 = call i1 @nyx_string_equals(%nyx_string* %1282, %nyx_string* %1284)
  br i1 %1285, label %then293, label %else294
then293:
  %1286 = load { i64, i8* }*, { i64, i8* }** %1160
  %1287 = call i64 @nyx_array_get({ i64, i8* }* %1286, i64 0)
  %1288 = inttoptr i64 %1287 to { i64, i8* }*
  %1289 = alloca { i64, i8* }*
  store { i64, i8* }* %1288, { i64, i8* }** %1289
  %1290 = load { i64, i8* }*, { i64, i8* }** %1160
  %1291 = call i64 @nyx_array_get({ i64, i8* }* %1290, i64 1)
  %1292 = inttoptr i64 %1291 to { i64, i8* }*
  %1293 = alloca { i64, i8* }*
  store { i64, i8* }* %1292, { i64, i8* }** %1293
  %1294 = load { i64, i8* }*, { i64, i8* }** %1160
  %1295 = call i64 @nyx_array_get({ i64, i8* }* %1294, i64 2)
  %1296 = inttoptr i64 %1295 to { i64, i8* }*
  %1297 = alloca { i64, i8* }*
  store { i64, i8* }* %1296, { i64, i8* }** %1297
  %1298 = load { i64, i8* }*, { i64, i8* }** %1289
  %1299 = call %nyx_string* @fmt_expr({ i64, i8* }* %1298)
  %1300 = getelementptr [2 x i8], [2 x i8]* @.str180, i32 0, i32 0
  %1301 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str180.c, i8* %1300)
  %1302 = call %nyx_string* @nyx_string_concat(%nyx_string* %1299, %nyx_string* %1301)
  %1303 = load { i64, i8* }*, { i64, i8* }** %1293
  %1304 = call %nyx_string* @fmt_expr({ i64, i8* }* %1303)
  %1305 = call %nyx_string* @nyx_string_concat(%nyx_string* %1302, %nyx_string* %1304)
  %1306 = getelementptr [5 x i8], [5 x i8]* @.str181, i32 0, i32 0
  %1307 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str181.c, i8* %1306)
  %1308 = call %nyx_string* @nyx_string_concat(%nyx_string* %1305, %nyx_string* %1307)
  %1309 = load { i64, i8* }*, { i64, i8* }** %1297
  %1310 = call %nyx_string* @fmt_expr({ i64, i8* }* %1309)
  %1311 = call %nyx_string* @nyx_string_concat(%nyx_string* %1308, %nyx_string* %1310)
  %1312 = call i64 @out_line(%nyx_string* %1311)
  ret i64 0
else294:
  br label %merge295
merge295:
  %1313 = load %nyx_string*, %nyx_string** %1157
  %1314 = getelementptr [3 x i8], [3 x i8]* @.str182, i32 0, i32 0
  %1315 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str182.c, i8* %1314)
  %1316 = call i1 @nyx_string_equals(%nyx_string* %1313, %nyx_string* %1315)
  br i1 %1316, label %then296, label %else297
then296:
  %1317 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1318 = call i64 @fmt_if({ i64, i8* }* %1317)
  ret i64 0
else297:
  br label %merge298
merge298:
  %1319 = load %nyx_string*, %nyx_string** %1157
  %1320 = getelementptr [6 x i8], [6 x i8]* @.str183, i32 0, i32 0
  %1321 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str183.c, i8* %1320)
  %1322 = call i1 @nyx_string_equals(%nyx_string* %1319, %nyx_string* %1321)
  br i1 %1322, label %then299, label %else300
then299:
  %1323 = load { i64, i8* }*, { i64, i8* }** %1160
  %1324 = call i64 @nyx_array_get({ i64, i8* }* %1323, i64 0)
  %1325 = inttoptr i64 %1324 to { i64, i8* }*
  %1326 = alloca { i64, i8* }*
  store { i64, i8* }* %1325, { i64, i8* }** %1326
  %1327 = load { i64, i8* }*, { i64, i8* }** %1160
  %1328 = call i64 @nyx_array_get({ i64, i8* }* %1327, i64 1)
  %1329 = inttoptr i64 %1328 to { i64, i8* }*
  %1330 = alloca { i64, i8* }*
  store { i64, i8* }* %1329, { i64, i8* }** %1330
  %1331 = getelementptr [7 x i8], [7 x i8]* @.str184, i32 0, i32 0
  %1332 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str184.c, i8* %1331)
  %1333 = load { i64, i8* }*, { i64, i8* }** %1326
  %1334 = call %nyx_string* @fmt_expr({ i64, i8* }* %1333)
  %1335 = call %nyx_string* @nyx_string_concat(%nyx_string* %1332, %nyx_string* %1334)
  %1336 = getelementptr [3 x i8], [3 x i8]* @.str185, i32 0, i32 0
  %1337 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str185.c, i8* %1336)
  %1338 = call %nyx_string* @nyx_string_concat(%nyx_string* %1335, %nyx_string* %1337)
  %1339 = call i64 @out_line(%nyx_string* %1338)
  %1340 = load i64, i64* @g_indent
  %1341 = add i64 %1340, 1
  store i64 %1341, i64* @g_indent
  %1342 = load { i64, i8* }*, { i64, i8* }** %1330
  %1343 = call i64 @fmt_block_stmts({ i64, i8* }* %1342)
  %1344 = load i64, i64* @g_indent
  %1345 = sub i64 %1344, 1
  store i64 %1345, i64* @g_indent
  %1346 = getelementptr [2 x i8], [2 x i8]* @.str186, i32 0, i32 0
  %1347 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str186.c, i8* %1346)
  %1348 = call i64 @out_line(%nyx_string* %1347)
  ret i64 0
else300:
  br label %merge301
merge301:
  %1349 = load %nyx_string*, %nyx_string** %1157
  %1350 = getelementptr [4 x i8], [4 x i8]* @.str187, i32 0, i32 0
  %1351 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str187.c, i8* %1350)
  %1352 = call i1 @nyx_string_equals(%nyx_string* %1349, %nyx_string* %1351)
  br i1 %1352, label %then302, label %else303
then302:
  %1353 = load { i64, i8* }*, { i64, i8* }** %1160
  %1354 = call i64 @nyx_array_get_checked({ i64, i8* }* %1353, i64 0, i64 2)
  %1355 = inttoptr i64 %1354 to %nyx_string*
  %1356 = alloca %nyx_string*
  store %nyx_string* %1355, %nyx_string** %1356
  %1357 = load { i64, i8* }*, { i64, i8* }** %1160
  %1358 = call i64 @nyx_array_get({ i64, i8* }* %1357, i64 1)
  %1359 = inttoptr i64 %1358 to { i64, i8* }*
  %1360 = alloca { i64, i8* }*
  store { i64, i8* }* %1359, { i64, i8* }** %1360
  %1361 = load { i64, i8* }*, { i64, i8* }** %1160
  %1362 = call i64 @nyx_array_get({ i64, i8* }* %1361, i64 2)
  %1363 = inttoptr i64 %1362 to { i64, i8* }*
  %1364 = alloca { i64, i8* }*
  store { i64, i8* }* %1363, { i64, i8* }** %1364
  %1365 = getelementptr [5 x i8], [5 x i8]* @.str188, i32 0, i32 0
  %1366 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str188.c, i8* %1365)
  %1367 = load %nyx_string*, %nyx_string** %1356
  %1368 = call %nyx_string* @nyx_string_concat(%nyx_string* %1366, %nyx_string* %1367)
  %1369 = getelementptr [5 x i8], [5 x i8]* @.str189, i32 0, i32 0
  %1370 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str189.c, i8* %1369)
  %1371 = call %nyx_string* @nyx_string_concat(%nyx_string* %1368, %nyx_string* %1370)
  %1372 = load { i64, i8* }*, { i64, i8* }** %1360
  %1373 = call %nyx_string* @fmt_expr({ i64, i8* }* %1372)
  %1374 = call %nyx_string* @nyx_string_concat(%nyx_string* %1371, %nyx_string* %1373)
  %1375 = getelementptr [3 x i8], [3 x i8]* @.str190, i32 0, i32 0
  %1376 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str190.c, i8* %1375)
  %1377 = call %nyx_string* @nyx_string_concat(%nyx_string* %1374, %nyx_string* %1376)
  %1378 = call i64 @out_line(%nyx_string* %1377)
  %1379 = load i64, i64* @g_indent
  %1380 = add i64 %1379, 1
  store i64 %1380, i64* @g_indent
  %1381 = load { i64, i8* }*, { i64, i8* }** %1364
  %1382 = call i64 @fmt_block_stmts({ i64, i8* }* %1381)
  %1383 = load i64, i64* @g_indent
  %1384 = sub i64 %1383, 1
  store i64 %1384, i64* @g_indent
  %1385 = getelementptr [2 x i8], [2 x i8]* @.str191, i32 0, i32 0
  %1386 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str191.c, i8* %1385)
  %1387 = call i64 @out_line(%nyx_string* %1386)
  ret i64 0
else303:
  br label %merge304
merge304:
  %1388 = load %nyx_string*, %nyx_string** %1157
  %1389 = getelementptr [7 x i8], [7 x i8]* @.str192, i32 0, i32 0
  %1390 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str192.c, i8* %1389)
  %1391 = call i1 @nyx_string_equals(%nyx_string* %1388, %nyx_string* %1390)
  br i1 %1391, label %then305, label %else306
then305:
  %1392 = load { i64, i8* }*, { i64, i8* }** %1160
  %1393 = call i64 @nyx_array_get({ i64, i8* }* %1392, i64 0)
  %1394 = inttoptr i64 %1393 to { i64, i8* }*
  %1395 = alloca { i64, i8* }*
  store { i64, i8* }* %1394, { i64, i8* }** %1395
  %1396 = getelementptr [8 x i8], [8 x i8]* @.str193, i32 0, i32 0
  %1397 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str193.c, i8* %1396)
  %1398 = load { i64, i8* }*, { i64, i8* }** %1395
  %1399 = call %nyx_string* @fmt_expr({ i64, i8* }* %1398)
  %1400 = call %nyx_string* @nyx_string_concat(%nyx_string* %1397, %nyx_string* %1399)
  %1401 = call i64 @out_line(%nyx_string* %1400)
  ret i64 0
else306:
  br label %merge307
merge307:
  %1402 = load %nyx_string*, %nyx_string** %1157
  %1403 = getelementptr [6 x i8], [6 x i8]* @.str194, i32 0, i32 0
  %1404 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str194.c, i8* %1403)
  %1405 = call i1 @nyx_string_equals(%nyx_string* %1402, %nyx_string* %1404)
  br i1 %1405, label %then308, label %else309
then308:
  %1406 = getelementptr [6 x i8], [6 x i8]* @.str195, i32 0, i32 0
  %1407 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str195.c, i8* %1406)
  %1408 = call i64 @out_line(%nyx_string* %1407)
  ret i64 0
else309:
  br label %merge310
merge310:
  %1409 = load %nyx_string*, %nyx_string** %1157
  %1410 = getelementptr [9 x i8], [9 x i8]* @.str196, i32 0, i32 0
  %1411 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str196.c, i8* %1410)
  %1412 = call i1 @nyx_string_equals(%nyx_string* %1409, %nyx_string* %1411)
  br i1 %1412, label %then311, label %else312
then311:
  %1413 = getelementptr [9 x i8], [9 x i8]* @.str197, i32 0, i32 0
  %1414 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str197.c, i8* %1413)
  %1415 = call i64 @out_line(%nyx_string* %1414)
  ret i64 0
else312:
  br label %merge313
merge313:
  %1416 = load %nyx_string*, %nyx_string** %1157
  %1417 = getelementptr [9 x i8], [9 x i8]* @.str198, i32 0, i32 0
  %1418 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str198.c, i8* %1417)
  %1419 = call i1 @nyx_string_equals(%nyx_string* %1416, %nyx_string* %1418)
  br i1 %1419, label %then314, label %else315
then314:
  %1420 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1421 = getelementptr [1 x i8], [1 x i8]* @.str199, i32 0, i32 0
  %1422 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str199.c, i8* %1421)
  %1423 = call i64 @fmt_function({ i64, i8* }* %1420, %nyx_string* %1422)
  ret i64 0
else315:
  br label %merge316
merge316:
  %1424 = load %nyx_string*, %nyx_string** %1157
  %1425 = getelementptr [7 x i8], [7 x i8]* @.str200, i32 0, i32 0
  %1426 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str200.c, i8* %1425)
  %1427 = call i1 @nyx_string_equals(%nyx_string* %1424, %nyx_string* %1426)
  br i1 %1427, label %then317, label %else318
then317:
  %1428 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1429 = call i64 @fmt_struct({ i64, i8* }* %1428)
  ret i64 0
else318:
  br label %merge319
merge319:
  %1430 = load %nyx_string*, %nyx_string** %1157
  %1431 = getelementptr [9 x i8], [9 x i8]* @.str201, i32 0, i32 0
  %1432 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str201.c, i8* %1431)
  %1433 = call i1 @nyx_string_equals(%nyx_string* %1430, %nyx_string* %1432)
  br i1 %1433, label %then320, label %else321
then320:
  %1434 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1435 = call i64 @fmt_enum({ i64, i8* }* %1434)
  ret i64 0
else321:
  br label %merge322
merge322:
  %1436 = load %nyx_string*, %nyx_string** %1157
  %1437 = getelementptr [10 x i8], [10 x i8]* @.str202, i32 0, i32 0
  %1438 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str202.c, i8* %1437)
  %1439 = call i1 @nyx_string_equals(%nyx_string* %1436, %nyx_string* %1438)
  br i1 %1439, label %then323, label %else324
then323:
  %1440 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1441 = call i64 @fmt_trait({ i64, i8* }* %1440)
  ret i64 0
else324:
  br label %merge325
merge325:
  %1442 = load %nyx_string*, %nyx_string** %1157
  %1443 = getelementptr [5 x i8], [5 x i8]* @.str203, i32 0, i32 0
  %1444 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str203.c, i8* %1443)
  %1445 = call i1 @nyx_string_equals(%nyx_string* %1442, %nyx_string* %1444)
  br i1 %1445, label %then326, label %else327
then326:
  %1446 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1447 = call i64 @fmt_impl({ i64, i8* }* %1446)
  ret i64 0
else327:
  br label %merge328
merge328:
  %1448 = load %nyx_string*, %nyx_string** %1157
  %1449 = getelementptr [11 x i8], [11 x i8]* @.str204, i32 0, i32 0
  %1450 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str204.c, i8* %1449)
  %1451 = call i1 @nyx_string_equals(%nyx_string* %1448, %nyx_string* %1450)
  br i1 %1451, label %then329, label %else330
then329:
  %1452 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1453 = call i64 @fmt_impl_trait({ i64, i8* }* %1452)
  ret i64 0
else330:
  br label %merge331
merge331:
  %1454 = load %nyx_string*, %nyx_string** %1157
  %1455 = getelementptr [7 x i8], [7 x i8]* @.str205, i32 0, i32 0
  %1456 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str205.c, i8* %1455)
  %1457 = call i1 @nyx_string_equals(%nyx_string* %1454, %nyx_string* %1456)
  br i1 %1457, label %then332, label %else333
then332:
  %1458 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1459 = call i64 @fmt_import({ i64, i8* }* %1458)
  ret i64 0
else333:
  br label %merge334
merge334:
  %1460 = load %nyx_string*, %nyx_string** %1157
  %1461 = getelementptr [7 x i8], [7 x i8]* @.str206, i32 0, i32 0
  %1462 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str206.c, i8* %1461)
  %1463 = call i1 @nyx_string_equals(%nyx_string* %1460, %nyx_string* %1462)
  br i1 %1463, label %then335, label %else336
then335:
  %1464 = load { i64, i8* }*, { i64, i8* }** %1160
  %1465 = call i64 @nyx_array_get({ i64, i8* }* %1464, i64 0)
  %1466 = inttoptr i64 %1465 to { i64, i8* }*
  %1467 = alloca { i64, i8* }*
  store { i64, i8* }* %1466, { i64, i8* }** %1467
  %1468 = load { i64, i8* }*, { i64, i8* }** %1467
  %1469 = call %nyx_string* @node_type({ i64, i8* }* %1468)
  %1470 = alloca %nyx_string*
  store %nyx_string* %1469, %nyx_string** %1470
  %1471 = load %nyx_string*, %nyx_string** %1470
  %1472 = getelementptr [9 x i8], [9 x i8]* @.str207, i32 0, i32 0
  %1473 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str207.c, i8* %1472)
  %1474 = call i1 @nyx_string_equals(%nyx_string* %1471, %nyx_string* %1473)
  br i1 %1474, label %then338, label %else339
then338:
  %1475 = load { i64, i8* }*, { i64, i8* }** %1467
  %1476 = getelementptr [8 x i8], [8 x i8]* @.str208, i32 0, i32 0
  %1477 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str208.c, i8* %1476)
  %1478 = call i64 @fmt_function({ i64, i8* }* %1475, %nyx_string* %1477)
  ret i64 0
else339:
  br label %merge340
merge340:
  %1479 = load %nyx_string*, %nyx_string** %1470
  %1480 = getelementptr [7 x i8], [7 x i8]* @.str209, i32 0, i32 0
  %1481 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str209.c, i8* %1480)
  %1482 = call i1 @nyx_string_equals(%nyx_string* %1479, %nyx_string* %1481)
  br i1 %1482, label %then341, label %else342
then341:
  %1483 = call %nyx_string* @indent_str()
  %1484 = getelementptr [8 x i8], [8 x i8]* @.str210, i32 0, i32 0
  %1485 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str210.c, i8* %1484)
  %1486 = call %nyx_string* @nyx_string_concat(%nyx_string* %1483, %nyx_string* %1485)
  %1487 = call i64 @out(%nyx_string* %1486)
  %1488 = load { i64, i8* }*, { i64, i8* }** %1467
  %1489 = call i64 @fmt_struct_inline({ i64, i8* }* %1488)
  ret i64 0
else342:
  br label %merge343
merge343:
  %1490 = load %nyx_string*, %nyx_string** %1470
  %1491 = getelementptr [9 x i8], [9 x i8]* @.str211, i32 0, i32 0
  %1492 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str211.c, i8* %1491)
  %1493 = call i1 @nyx_string_equals(%nyx_string* %1490, %nyx_string* %1492)
  br i1 %1493, label %then344, label %else345
then344:
  %1494 = call %nyx_string* @indent_str()
  %1495 = getelementptr [8 x i8], [8 x i8]* @.str212, i32 0, i32 0
  %1496 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str212.c, i8* %1495)
  %1497 = call %nyx_string* @nyx_string_concat(%nyx_string* %1494, %nyx_string* %1496)
  %1498 = call i64 @out(%nyx_string* %1497)
  %1499 = load { i64, i8* }*, { i64, i8* }** %1467
  %1500 = call i64 @fmt_enum_inline({ i64, i8* }* %1499)
  ret i64 0
else345:
  br label %merge346
merge346:
  %1501 = call %nyx_string* @indent_str()
  %1502 = getelementptr [8 x i8], [8 x i8]* @.str213, i32 0, i32 0
  %1503 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str213.c, i8* %1502)
  %1504 = call %nyx_string* @nyx_string_concat(%nyx_string* %1501, %nyx_string* %1503)
  %1505 = call i64 @out(%nyx_string* %1504)
  %1506 = load { i64, i8* }*, { i64, i8* }** %1467
  %1507 = call i64 @fmt_stmt({ i64, i8* }* %1506)
  ret i64 0
else336:
  br label %merge337
merge337:
  %1508 = load %nyx_string*, %nyx_string** %1157
  %1509 = getelementptr [11 x i8], [11 x i8]* @.str214, i32 0, i32 0
  %1510 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str214.c, i8* %1509)
  %1511 = call i1 @nyx_string_equals(%nyx_string* %1508, %nyx_string* %1510)
  br i1 %1511, label %then347, label %else348
then347:
  %1512 = load { i64, i8* }*, { i64, i8* }** %1160
  %1513 = call i64 @nyx_array_get_checked({ i64, i8* }* %1512, i64 0, i64 2)
  %1514 = inttoptr i64 %1513 to %nyx_string*
  %1515 = alloca %nyx_string*
  store %nyx_string* %1514, %nyx_string** %1515
  %1516 = load { i64, i8* }*, { i64, i8* }** %1160
  %1517 = call i64 @nyx_array_get_checked({ i64, i8* }* %1516, i64 1, i64 2)
  %1518 = inttoptr i64 %1517 to %nyx_string*
  %1519 = alloca %nyx_string*
  store %nyx_string* %1518, %nyx_string** %1519
  %1520 = getelementptr [6 x i8], [6 x i8]* @.str215, i32 0, i32 0
  %1521 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str215.c, i8* %1520)
  %1522 = load %nyx_string*, %nyx_string** %1515
  %1523 = call %nyx_string* @nyx_string_concat(%nyx_string* %1521, %nyx_string* %1522)
  %1524 = getelementptr [4 x i8], [4 x i8]* @.str216, i32 0, i32 0
  %1525 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str216.c, i8* %1524)
  %1526 = call %nyx_string* @nyx_string_concat(%nyx_string* %1523, %nyx_string* %1525)
  %1527 = load %nyx_string*, %nyx_string** %1519
  %1528 = call %nyx_string* @nyx_string_concat(%nyx_string* %1526, %nyx_string* %1527)
  %1529 = call i64 @out_line(%nyx_string* %1528)
  ret i64 0
else348:
  br label %merge349
merge349:
  %1530 = load %nyx_string*, %nyx_string** %1157
  %1531 = getelementptr [10 x i8], [10 x i8]* @.str217, i32 0, i32 0
  %1532 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str217.c, i8* %1531)
  %1533 = call i1 @nyx_string_equals(%nyx_string* %1530, %nyx_string* %1532)
  br i1 %1533, label %then350, label %else351
then350:
  %1534 = load { i64, i8* }*, { i64, i8* }** %1160
  %1535 = call i64 @nyx_array_get_checked({ i64, i8* }* %1534, i64 0, i64 2)
  %1536 = inttoptr i64 %1535 to %nyx_string*
  %1537 = alloca %nyx_string*
  store %nyx_string* %1536, %nyx_string** %1537
  %1538 = load { i64, i8* }*, { i64, i8* }** %1160
  %1539 = call i64 @nyx_array_get({ i64, i8* }* %1538, i64 1)
  %1540 = inttoptr i64 %1539 to { i64, i8* }*
  %1541 = alloca { i64, i8* }*
  store { i64, i8* }* %1540, { i64, i8* }** %1541
  %1542 = getelementptr [7 x i8], [7 x i8]* @.str218, i32 0, i32 0
  %1543 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str218.c, i8* %1542)
  %1544 = load %nyx_string*, %nyx_string** %1537
  %1545 = call %nyx_string* @nyx_string_concat(%nyx_string* %1543, %nyx_string* %1544)
  %1546 = getelementptr [4 x i8], [4 x i8]* @.str219, i32 0, i32 0
  %1547 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str219.c, i8* %1546)
  %1548 = call %nyx_string* @nyx_string_concat(%nyx_string* %1545, %nyx_string* %1547)
  %1549 = call i64 @out_line(%nyx_string* %1548)
  %1550 = load i64, i64* @g_indent
  %1551 = add i64 %1550, 1
  store i64 %1551, i64* @g_indent
  %1552 = load { i64, i8* }*, { i64, i8* }** %1541
  %1553 = call i64 @fmt_block_stmts({ i64, i8* }* %1552)
  %1554 = load i64, i64* @g_indent
  %1555 = sub i64 %1554, 1
  store i64 %1555, i64* @g_indent
  %1556 = getelementptr [2 x i8], [2 x i8]* @.str220, i32 0, i32 0
  %1557 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str220.c, i8* %1556)
  %1558 = call i64 @out_line(%nyx_string* %1557)
  %1559 = call i64 @out_empty()
  ret i64 0
else351:
  br label %merge352
merge352:
  %1560 = load %nyx_string*, %nyx_string** %1157
  %1561 = getelementptr [6 x i8], [6 x i8]* @.str221, i32 0, i32 0
  %1562 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str221.c, i8* %1561)
  %1563 = call i1 @nyx_string_equals(%nyx_string* %1560, %nyx_string* %1562)
  br i1 %1563, label %then353, label %else354
then353:
  %1564 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1565 = call %nyx_string* @fmt_match_expr({ i64, i8* }* %1564)
  %1566 = call i64 @out_line(%nyx_string* %1565)
  ret i64 0
else354:
  br label %merge355
merge355:
  %1567 = alloca i1
  store i1 true, i1* %1567
  %1568 = alloca i1
  store i1 true, i1* %1568
  %1569 = load %nyx_string*, %nyx_string** %1157
  %1570 = getelementptr [5 x i8], [5 x i8]* @.str222, i32 0, i32 0
  %1571 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str222.c, i8* %1570)
  %1572 = call i1 @nyx_string_equals(%nyx_string* %1569, %nyx_string* %1571)
  br i1 %1572, label %sc_or_end357, label %sc_or_rhs356
sc_or_rhs356:
  %1573 = load %nyx_string*, %nyx_string** %1157
  %1574 = getelementptr [12 x i8], [12 x i8]* @.str223, i32 0, i32 0
  %1575 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str223.c, i8* %1574)
  %1576 = call i1 @nyx_string_equals(%nyx_string* %1573, %nyx_string* %1575)
  store i1 %1576, i1* %1568
  br label %sc_or_end357
sc_or_end357:
  %1577 = load i1, i1* %1568
  br i1 %1577, label %sc_or_end359, label %sc_or_rhs358
sc_or_rhs358:
  %1578 = load %nyx_string*, %nyx_string** %1157
  %1579 = getelementptr [7 x i8], [7 x i8]* @.str224, i32 0, i32 0
  %1580 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str224.c, i8* %1579)
  %1581 = call i1 @nyx_string_equals(%nyx_string* %1578, %nyx_string* %1580)
  store i1 %1581, i1* %1567
  br label %sc_or_end359
sc_or_end359:
  %1582 = load i1, i1* %1567
  br i1 %1582, label %then360, label %else361
then360:
  %1583 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1584 = call %nyx_string* @fmt_expr({ i64, i8* }* %1583)
  %1585 = call i64 @out_line(%nyx_string* %1584)
  ret i64 0
else361:
  br label %merge362
merge362:
  %1586 = load %nyx_string*, %nyx_string** %1157
  %1587 = getelementptr [6 x i8], [6 x i8]* @.str225, i32 0, i32 0
  %1588 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str225.c, i8* %1587)
  %1589 = call i1 @nyx_string_equals(%nyx_string* %1586, %nyx_string* %1588)
  br i1 %1589, label %then363, label %else364
then363:
  %1590 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1591 = call i64 @fmt_block_stmts({ i64, i8* }* %1590)
  ret i64 0
else364:
  br label %merge365
merge365:
  %1592 = getelementptr [18 x i8], [18 x i8]* @.str226, i32 0, i32 0
  %1593 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str226.c, i8* %1592)
  %1594 = load %nyx_string*, %nyx_string** %1157
  %1595 = call %nyx_string* @nyx_string_concat(%nyx_string* %1593, %nyx_string* %1594)
  %1596 = getelementptr [4 x i8], [4 x i8]* @.str227, i32 0, i32 0
  %1597 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str227.c, i8* %1596)
  %1598 = call %nyx_string* @nyx_string_concat(%nyx_string* %1595, %nyx_string* %1597)
  %1599 = call i64 @out_line(%nyx_string* %1598)
  ret i64 0
}

define internal i64 @fmt_let(
{ i64, i8* }* %node.param, %nyx_string* %keyword.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %keyword.ptr = alloca %nyx_string*
  store %nyx_string* %keyword.param, %nyx_string** %keyword.ptr
  %1600 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1601 = call { i64, i8* }* @node_data({ i64, i8* }* %1600)
  %1602 = alloca { i64, i8* }*
  store { i64, i8* }* %1601, { i64, i8* }** %1602
  %1603 = load { i64, i8* }*, { i64, i8* }** %1602
  %1604 = call i64 @nyx_array_get({ i64, i8* }* %1603, i64 0)
  %1605 = inttoptr i64 %1604 to { i64, i8* }*
  %1606 = alloca { i64, i8* }*
  store { i64, i8* }* %1605, { i64, i8* }** %1606
  %1607 = load { i64, i8* }*, { i64, i8* }** %1606
  %1608 = call i64 @nyx_array_get_checked({ i64, i8* }* %1607, i64 0, i64 2)
  %1609 = inttoptr i64 %1608 to %nyx_string*
  %1610 = alloca %nyx_string*
  store %nyx_string* %1609, %nyx_string** %1610
  %1611 = load { i64, i8* }*, { i64, i8* }** %1602
  %1612 = call i64 @nyx_array_get({ i64, i8* }* %1611, i64 1)
  %1613 = alloca i64
  store i64 %1612, i64* %1613
  %1614 = load { i64, i8* }*, { i64, i8* }** %1602
  %1615 = call i64 @nyx_array_get({ i64, i8* }* %1614, i64 2)
  %1616 = inttoptr i64 %1615 to { i64, i8* }*
  %1617 = alloca { i64, i8* }*
  store { i64, i8* }* %1616, { i64, i8* }** %1617
  %1618 = load { i64, i8* }*, { i64, i8* }** %1602
  %1619 = call i64 @nyx_array_get_checked({ i64, i8* }* %1618, i64 3, i64 2)
  %1620 = inttoptr i64 %1619 to %nyx_string*
  %1621 = alloca %nyx_string*
  store %nyx_string* %1620, %nyx_string** %1621
  %1622 = getelementptr [4 x i8], [4 x i8]* @.str228, i32 0, i32 0
  %1623 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str228.c, i8* %1622)
  %1624 = alloca %nyx_string*
  store %nyx_string* %1623, %nyx_string** %1624
  %1625 = load %nyx_string*, %nyx_string** %keyword.ptr
  %1626 = getelementptr [6 x i8], [6 x i8]* @.str229, i32 0, i32 0
  %1627 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str229.c, i8* %1626)
  %1628 = call i1 @nyx_string_equals(%nyx_string* %1625, %nyx_string* %1627)
  br i1 %1628, label %then366, label %else367
then366:
  %1629 = getelementptr [6 x i8], [6 x i8]* @.str230, i32 0, i32 0
  %1630 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str230.c, i8* %1629)
  store %nyx_string* %1630, %nyx_string** %1624
  br label %merge368
else367:
  br label %merge368
merge368:
  %1631 = load i64, i64* %1613
  %1632 = icmp eq i64 %1631, 1
  br i1 %1632, label %then369, label %else370
then369:
  %1633 = getelementptr [4 x i8], [4 x i8]* @.str231, i32 0, i32 0
  %1634 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str231.c, i8* %1633)
  store %nyx_string* %1634, %nyx_string** %1624
  br label %merge371
else370:
  br label %merge371
merge371:
  %1635 = load %nyx_string*, %nyx_string** %1624
  %1636 = getelementptr [2 x i8], [2 x i8]* @.str232, i32 0, i32 0
  %1637 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str232.c, i8* %1636)
  %1638 = call %nyx_string* @nyx_string_concat(%nyx_string* %1635, %nyx_string* %1637)
  %1639 = load %nyx_string*, %nyx_string** %1610
  %1640 = call %nyx_string* @nyx_string_concat(%nyx_string* %1638, %nyx_string* %1639)
  %1641 = alloca %nyx_string*
  store %nyx_string* %1640, %nyx_string** %1641
  %1642 = load %nyx_string*, %nyx_string** %1621
  %1643 = getelementptr [1 x i8], [1 x i8]* @.str233, i32 0, i32 0
  %1644 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str233.c, i8* %1643)
  %1645 = call i1 @nyx_string_equals(%nyx_string* %1642, %nyx_string* %1644)
  %1646 = xor i1 %1645, true
  br i1 %1646, label %then372, label %else373
then372:
  %1647 = load %nyx_string*, %nyx_string** %1641
  %1648 = getelementptr [3 x i8], [3 x i8]* @.str234, i32 0, i32 0
  %1649 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str234.c, i8* %1648)
  %1650 = call %nyx_string* @nyx_string_concat(%nyx_string* %1647, %nyx_string* %1649)
  %1651 = load %nyx_string*, %nyx_string** %1621
  %1652 = call %nyx_string* @nyx_string_concat(%nyx_string* %1650, %nyx_string* %1651)
  store %nyx_string* %1652, %nyx_string** %1641
  br label %merge374
else373:
  br label %merge374
merge374:
  %1653 = load %nyx_string*, %nyx_string** %1641
  %1654 = getelementptr [4 x i8], [4 x i8]* @.str235, i32 0, i32 0
  %1655 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str235.c, i8* %1654)
  %1656 = call %nyx_string* @nyx_string_concat(%nyx_string* %1653, %nyx_string* %1655)
  %1657 = load { i64, i8* }*, { i64, i8* }** %1617
  %1658 = call %nyx_string* @fmt_expr({ i64, i8* }* %1657)
  %1659 = call %nyx_string* @nyx_string_concat(%nyx_string* %1656, %nyx_string* %1658)
  store %nyx_string* %1659, %nyx_string** %1641
  %1660 = load %nyx_string*, %nyx_string** %1641
  %1661 = call i64 @out_line(%nyx_string* %1660)
  ret i64 0
}

define internal i64 @fmt_if(
{ i64, i8* }* %node.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %1662 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1663 = call { i64, i8* }* @node_data({ i64, i8* }* %1662)
  %1664 = alloca { i64, i8* }*
  store { i64, i8* }* %1663, { i64, i8* }** %1664
  %1665 = load { i64, i8* }*, { i64, i8* }** %1664
  %1666 = call i64 @nyx_array_get({ i64, i8* }* %1665, i64 0)
  %1667 = inttoptr i64 %1666 to { i64, i8* }*
  %1668 = alloca { i64, i8* }*
  store { i64, i8* }* %1667, { i64, i8* }** %1668
  %1669 = load { i64, i8* }*, { i64, i8* }** %1664
  %1670 = call i64 @nyx_array_get({ i64, i8* }* %1669, i64 1)
  %1671 = inttoptr i64 %1670 to { i64, i8* }*
  %1672 = alloca { i64, i8* }*
  store { i64, i8* }* %1671, { i64, i8* }** %1672
  %1673 = load { i64, i8* }*, { i64, i8* }** %1664
  %1674 = call i64 @nyx_array_get({ i64, i8* }* %1673, i64 2)
  %1675 = inttoptr i64 %1674 to { i64, i8* }*
  %1676 = alloca { i64, i8* }*
  store { i64, i8* }* %1675, { i64, i8* }** %1676
  %1677 = getelementptr [4 x i8], [4 x i8]* @.str236, i32 0, i32 0
  %1678 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str236.c, i8* %1677)
  %1679 = load { i64, i8* }*, { i64, i8* }** %1668
  %1680 = call %nyx_string* @fmt_expr({ i64, i8* }* %1679)
  %1681 = call %nyx_string* @nyx_string_concat(%nyx_string* %1678, %nyx_string* %1680)
  %1682 = getelementptr [3 x i8], [3 x i8]* @.str237, i32 0, i32 0
  %1683 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str237.c, i8* %1682)
  %1684 = call %nyx_string* @nyx_string_concat(%nyx_string* %1681, %nyx_string* %1683)
  %1685 = call i64 @out_line(%nyx_string* %1684)
  %1686 = load i64, i64* @g_indent
  %1687 = add i64 %1686, 1
  store i64 %1687, i64* @g_indent
  %1688 = load { i64, i8* }*, { i64, i8* }** %1672
  %1689 = call i64 @fmt_block_stmts({ i64, i8* }* %1688)
  %1690 = load i64, i64* @g_indent
  %1691 = sub i64 %1690, 1
  store i64 %1691, i64* @g_indent
  %1692 = load { i64, i8* }*, { i64, i8* }** %1676
  %1693 = call %nyx_string* @node_type({ i64, i8* }* %1692)
  %1694 = getelementptr [6 x i8], [6 x i8]* @.str238, i32 0, i32 0
  %1695 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str238.c, i8* %1694)
  %1696 = call i1 @nyx_string_equals(%nyx_string* %1693, %nyx_string* %1695)
  %1697 = xor i1 %1696, true
  br i1 %1697, label %then375, label %else376
then375:
  %1698 = load { i64, i8* }*, { i64, i8* }** %1676
  %1699 = call %nyx_string* @node_type({ i64, i8* }* %1698)
  %1700 = getelementptr [3 x i8], [3 x i8]* @.str239, i32 0, i32 0
  %1701 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str239.c, i8* %1700)
  %1702 = call i1 @nyx_string_equals(%nyx_string* %1699, %nyx_string* %1701)
  br i1 %1702, label %then378, label %else379
then378:
  %1703 = call %nyx_string* @indent_str()
  %1704 = getelementptr [8 x i8], [8 x i8]* @.str240, i32 0, i32 0
  %1705 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str240.c, i8* %1704)
  %1706 = call %nyx_string* @nyx_string_concat(%nyx_string* %1703, %nyx_string* %1705)
  %1707 = call i64 @out(%nyx_string* %1706)
  %1708 = load { i64, i8* }*, { i64, i8* }** %1676
  %1709 = call i64 @fmt_if({ i64, i8* }* %1708)
  br label %merge380
else379:
  %1710 = getelementptr [9 x i8], [9 x i8]* @.str241, i32 0, i32 0
  %1711 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str241.c, i8* %1710)
  %1712 = call i64 @out_line(%nyx_string* %1711)
  %1713 = load i64, i64* @g_indent
  %1714 = add i64 %1713, 1
  store i64 %1714, i64* @g_indent
  %1715 = load { i64, i8* }*, { i64, i8* }** %1676
  %1716 = call i64 @fmt_block_stmts({ i64, i8* }* %1715)
  %1717 = load i64, i64* @g_indent
  %1718 = sub i64 %1717, 1
  store i64 %1718, i64* @g_indent
  %1719 = getelementptr [2 x i8], [2 x i8]* @.str242, i32 0, i32 0
  %1720 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str242.c, i8* %1719)
  %1721 = call i64 @out_line(%nyx_string* %1720)
  br label %merge380
merge380:
  br label %merge377
else376:
  %1722 = getelementptr [2 x i8], [2 x i8]* @.str243, i32 0, i32 0
  %1723 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str243.c, i8* %1722)
  %1724 = call i64 @out_line(%nyx_string* %1723)
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
  %1725 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1726 = call { i64, i8* }* @node_data({ i64, i8* }* %1725)
  %1727 = alloca { i64, i8* }*
  store { i64, i8* }* %1726, { i64, i8* }** %1727
  %1728 = load { i64, i8* }*, { i64, i8* }** %1727
  %1729 = call i64 @nyx_array_get_checked({ i64, i8* }* %1728, i64 0, i64 2)
  %1730 = inttoptr i64 %1729 to %nyx_string*
  %1731 = alloca %nyx_string*
  store %nyx_string* %1730, %nyx_string** %1731
  %1732 = load { i64, i8* }*, { i64, i8* }** %1727
  %1733 = call i64 @nyx_array_get({ i64, i8* }* %1732, i64 1)
  %1734 = inttoptr i64 %1733 to { i64, i8* }*
  %1735 = alloca { i64, i8* }*
  store { i64, i8* }* %1734, { i64, i8* }** %1735
  %1736 = load { i64, i8* }*, { i64, i8* }** %1727
  %1737 = call i64 @nyx_array_get_checked({ i64, i8* }* %1736, i64 2, i64 2)
  %1738 = inttoptr i64 %1737 to %nyx_string*
  %1739 = alloca %nyx_string*
  store %nyx_string* %1738, %nyx_string** %1739
  %1740 = load { i64, i8* }*, { i64, i8* }** %1727
  %1741 = call i64 @nyx_array_get({ i64, i8* }* %1740, i64 3)
  %1742 = inttoptr i64 %1741 to { i64, i8* }*
  %1743 = alloca { i64, i8* }*
  store { i64, i8* }* %1742, { i64, i8* }** %1743
  %1744 = call { i64, i8* }* @nyx_array_new_ptr()
  %1745 = alloca { i64, i8* }*
  store { i64, i8* }* %1744, { i64, i8* }** %1745
  %1746 = load { i64, i8* }*, { i64, i8* }** %1727
  %1747 = call i64 @nyx_array_length({ i64, i8* }* %1746)
  %1748 = icmp sgt i64 %1747, 4
  br i1 %1748, label %then381, label %else382
then381:
  %1749 = load { i64, i8* }*, { i64, i8* }** %1727
  %1750 = call i64 @nyx_array_get({ i64, i8* }* %1749, i64 4)
  %1751 = inttoptr i64 %1750 to { i64, i8* }*
  %1752 = alloca { i64, i8* }*
  store { i64, i8* }* %1751, { i64, i8* }** %1752
  %1753 = load { i64, i8* }*, { i64, i8* }** %1752
  store { i64, i8* }* %1753, { i64, i8* }** %1745
  br label %merge383
else382:
  br label %merge383
merge383:
  %1754 = call %nyx_string* @indent_str()
  %1755 = load %nyx_string*, %nyx_string** %prefix.ptr
  %1756 = call %nyx_string* @nyx_string_concat(%nyx_string* %1754, %nyx_string* %1755)
  %1757 = getelementptr [4 x i8], [4 x i8]* @.str244, i32 0, i32 0
  %1758 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str244.c, i8* %1757)
  %1759 = call %nyx_string* @nyx_string_concat(%nyx_string* %1756, %nyx_string* %1758)
  %1760 = load %nyx_string*, %nyx_string** %1731
  %1761 = call %nyx_string* @nyx_string_concat(%nyx_string* %1759, %nyx_string* %1760)
  %1762 = alloca %nyx_string*
  store %nyx_string* %1761, %nyx_string** %1762
  %1763 = load { i64, i8* }*, { i64, i8* }** %1745
  %1764 = call i64 @nyx_array_length({ i64, i8* }* %1763)
  %1765 = icmp sgt i64 %1764, 0
  br i1 %1765, label %then384, label %else385
then384:
  %1766 = load %nyx_string*, %nyx_string** %1762
  %1767 = getelementptr [2 x i8], [2 x i8]* @.str245, i32 0, i32 0
  %1768 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str245.c, i8* %1767)
  %1769 = call %nyx_string* @nyx_string_concat(%nyx_string* %1766, %nyx_string* %1768)
  store %nyx_string* %1769, %nyx_string** %1762
  %1770 = alloca i64
  store i64 0, i64* %1770
  %1771 = getelementptr [3 x i8], [3 x i8]* @.str246, i32 0, i32 0
  %1772 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str246.c, i8* %1771)
  %1773 = alloca %nyx_string*
  store %nyx_string* %1772, %nyx_string** %1773
  %1774 = call i8* @llvm.stacksave()
  br label %while_cond387
while_cond387:
  %1775 = load i64, i64* %1770
  %1776 = load { i64, i8* }*, { i64, i8* }** %1745
  %1777 = call i64 @nyx_array_length({ i64, i8* }* %1776)
  %1778 = icmp slt i64 %1775, %1777
  br i1 %1778, label %while_body388, label %while_end389
while_body388:
  call void @llvm.stackrestore(i8* %1774)
  %1779 = load i64, i64* %1770
  %1780 = icmp sgt i64 %1779, 0
  br i1 %1780, label %then390, label %else391
then390:
  %1781 = load %nyx_string*, %nyx_string** %1762
  %1782 = load %nyx_string*, %nyx_string** %1773
  %1783 = call %nyx_string* @nyx_string_concat(%nyx_string* %1781, %nyx_string* %1782)
  store %nyx_string* %1783, %nyx_string** %1762
  br label %merge392
else391:
  br label %merge392
merge392:
  %1784 = load { i64, i8* }*, { i64, i8* }** %1745
  %1785 = load i64, i64* %1770
  %1786 = call i64 @nyx_array_get_checked({ i64, i8* }* %1784, i64 %1785, i64 2)
  %1787 = inttoptr i64 %1786 to %nyx_string*
  %1788 = alloca %nyx_string*
  store %nyx_string* %1787, %nyx_string** %1788
  %1789 = load %nyx_string*, %nyx_string** %1762
  %1790 = load %nyx_string*, %nyx_string** %1788
  %1791 = call %nyx_string* @nyx_string_concat(%nyx_string* %1789, %nyx_string* %1790)
  store %nyx_string* %1791, %nyx_string** %1762
  %1792 = load i64, i64* %1770
  %1793 = add i64 %1792, 1
  store i64 %1793, i64* %1770
  br label %while_cond387
while_end389:
  %1794 = load %nyx_string*, %nyx_string** %1762
  %1795 = getelementptr [2 x i8], [2 x i8]* @.str247, i32 0, i32 0
  %1796 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str247.c, i8* %1795)
  %1797 = call %nyx_string* @nyx_string_concat(%nyx_string* %1794, %nyx_string* %1796)
  store %nyx_string* %1797, %nyx_string** %1762
  br label %merge386
else385:
  br label %merge386
merge386:
  %1798 = load %nyx_string*, %nyx_string** %1762
  %1799 = getelementptr [2 x i8], [2 x i8]* @.str248, i32 0, i32 0
  %1800 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str248.c, i8* %1799)
  %1801 = call %nyx_string* @nyx_string_concat(%nyx_string* %1798, %nyx_string* %1800)
  store %nyx_string* %1801, %nyx_string** %1762
  %1802 = alloca i64
  store i64 0, i64* %1802
  %1803 = getelementptr [3 x i8], [3 x i8]* @.str249, i32 0, i32 0
  %1804 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str249.c, i8* %1803)
  %1805 = alloca %nyx_string*
  store %nyx_string* %1804, %nyx_string** %1805
  %1806 = getelementptr [1 x i8], [1 x i8]* @.str250, i32 0, i32 0
  %1807 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str250.c, i8* %1806)
  %1808 = alloca %nyx_string*
  store %nyx_string* %1807, %nyx_string** %1808
  %1809 = getelementptr [3 x i8], [3 x i8]* @.str251, i32 0, i32 0
  %1810 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str251.c, i8* %1809)
  %1811 = alloca %nyx_string*
  store %nyx_string* %1810, %nyx_string** %1811
  %1812 = call i8* @llvm.stacksave()
  br label %while_cond393
while_cond393:
  %1813 = load i64, i64* %1802
  %1814 = load { i64, i8* }*, { i64, i8* }** %1735
  %1815 = call i64 @nyx_array_length({ i64, i8* }* %1814)
  %1816 = icmp slt i64 %1813, %1815
  br i1 %1816, label %while_body394, label %while_end395
while_body394:
  call void @llvm.stackrestore(i8* %1812)
  %1817 = load i64, i64* %1802
  %1818 = icmp sgt i64 %1817, 0
  br i1 %1818, label %then396, label %else397
then396:
  %1819 = load %nyx_string*, %nyx_string** %1762
  %1820 = load %nyx_string*, %nyx_string** %1805
  %1821 = call %nyx_string* @nyx_string_concat(%nyx_string* %1819, %nyx_string* %1820)
  store %nyx_string* %1821, %nyx_string** %1762
  br label %merge398
else397:
  br label %merge398
merge398:
  %1822 = load { i64, i8* }*, { i64, i8* }** %1735
  %1823 = load i64, i64* %1802
  %1824 = call i64 @nyx_array_get({ i64, i8* }* %1822, i64 %1823)
  %1825 = inttoptr i64 %1824 to { i64, i8* }*
  %1826 = alloca { i64, i8* }*
  store { i64, i8* }* %1825, { i64, i8* }** %1826
  %1827 = load { i64, i8* }*, { i64, i8* }** %1826
  %1828 = call i64 @nyx_array_get_checked({ i64, i8* }* %1827, i64 0, i64 2)
  %1829 = inttoptr i64 %1828 to %nyx_string*
  %1830 = alloca %nyx_string*
  store %nyx_string* %1829, %nyx_string** %1830
  %1831 = load { i64, i8* }*, { i64, i8* }** %1826
  %1832 = call i64 @nyx_array_get_checked({ i64, i8* }* %1831, i64 1, i64 2)
  %1833 = inttoptr i64 %1832 to %nyx_string*
  %1834 = alloca %nyx_string*
  store %nyx_string* %1833, %nyx_string** %1834
  %1835 = load %nyx_string*, %nyx_string** %1762
  %1836 = load %nyx_string*, %nyx_string** %1830
  %1837 = call %nyx_string* @nyx_string_concat(%nyx_string* %1835, %nyx_string* %1836)
  store %nyx_string* %1837, %nyx_string** %1762
  %1838 = load %nyx_string*, %nyx_string** %1834
  %1839 = load %nyx_string*, %nyx_string** %1808
  %1840 = call i1 @nyx_string_equals(%nyx_string* %1838, %nyx_string* %1839)
  %1841 = xor i1 %1840, true
  br i1 %1841, label %then399, label %else400
then399:
  %1842 = load %nyx_string*, %nyx_string** %1762
  %1843 = load %nyx_string*, %nyx_string** %1811
  %1844 = call %nyx_string* @nyx_string_concat(%nyx_string* %1842, %nyx_string* %1843)
  %1845 = load %nyx_string*, %nyx_string** %1834
  %1846 = call %nyx_string* @nyx_string_concat(%nyx_string* %1844, %nyx_string* %1845)
  store %nyx_string* %1846, %nyx_string** %1762
  br label %merge401
else400:
  br label %merge401
merge401:
  %1847 = load i64, i64* %1802
  %1848 = add i64 %1847, 1
  store i64 %1848, i64* %1802
  br label %while_cond393
while_end395:
  %1849 = load %nyx_string*, %nyx_string** %1762
  %1850 = getelementptr [2 x i8], [2 x i8]* @.str252, i32 0, i32 0
  %1851 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str252.c, i8* %1850)
  %1852 = call %nyx_string* @nyx_string_concat(%nyx_string* %1849, %nyx_string* %1851)
  store %nyx_string* %1852, %nyx_string** %1762
  %1853 = load %nyx_string*, %nyx_string** %1739
  %1854 = getelementptr [1 x i8], [1 x i8]* @.str253, i32 0, i32 0
  %1855 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str253.c, i8* %1854)
  %1856 = call i1 @nyx_string_equals(%nyx_string* %1853, %nyx_string* %1855)
  %1857 = xor i1 %1856, true
  br i1 %1857, label %then402, label %else403
then402:
  %1858 = load %nyx_string*, %nyx_string** %1762
  %1859 = getelementptr [5 x i8], [5 x i8]* @.str254, i32 0, i32 0
  %1860 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str254.c, i8* %1859)
  %1861 = call %nyx_string* @nyx_string_concat(%nyx_string* %1858, %nyx_string* %1860)
  %1862 = load %nyx_string*, %nyx_string** %1739
  %1863 = call %nyx_string* @nyx_string_concat(%nyx_string* %1861, %nyx_string* %1862)
  store %nyx_string* %1863, %nyx_string** %1762
  br label %merge404
else403:
  br label %merge404
merge404:
  %1864 = load %nyx_string*, %nyx_string** %1762
  %1865 = getelementptr [4 x i8], [4 x i8]* @.str255, i32 0, i32 0
  %1866 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str255.c, i8* %1865)
  %1867 = call %nyx_string* @nyx_string_concat(%nyx_string* %1864, %nyx_string* %1866)
  store %nyx_string* %1867, %nyx_string** %1762
  %1868 = load %nyx_string*, %nyx_string** %1762
  %1869 = call i64 @out(%nyx_string* %1868)
  %1870 = load i64, i64* @g_indent
  %1871 = add i64 %1870, 1
  store i64 %1871, i64* @g_indent
  %1872 = load { i64, i8* }*, { i64, i8* }** %1743
  %1873 = call i64 @fmt_block_stmts({ i64, i8* }* %1872)
  %1874 = load i64, i64* @g_indent
  %1875 = sub i64 %1874, 1
  store i64 %1875, i64* @g_indent
  %1876 = getelementptr [2 x i8], [2 x i8]* @.str256, i32 0, i32 0
  %1877 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str256.c, i8* %1876)
  %1878 = call i64 @out_line(%nyx_string* %1877)
  %1879 = call i64 @out_empty()
  ret i64 0
}

define internal i64 @fmt_struct(
{ i64, i8* }* %node.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %1880 = call %nyx_string* @indent_str()
  %1881 = call i64 @out(%nyx_string* %1880)
  %1882 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1883 = call i64 @fmt_struct_inline({ i64, i8* }* %1882)
  ret i64 0
}

define internal i64 @fmt_struct_inline(
{ i64, i8* }* %node.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %1884 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1885 = call { i64, i8* }* @node_data({ i64, i8* }* %1884)
  %1886 = alloca { i64, i8* }*
  store { i64, i8* }* %1885, { i64, i8* }** %1886
  %1887 = load { i64, i8* }*, { i64, i8* }** %1886
  %1888 = call i64 @nyx_array_get_checked({ i64, i8* }* %1887, i64 0, i64 2)
  %1889 = inttoptr i64 %1888 to %nyx_string*
  %1890 = alloca %nyx_string*
  store %nyx_string* %1889, %nyx_string** %1890
  %1891 = load { i64, i8* }*, { i64, i8* }** %1886
  %1892 = call i64 @nyx_array_get({ i64, i8* }* %1891, i64 1)
  %1893 = inttoptr i64 %1892 to { i64, i8* }*
  %1894 = alloca { i64, i8* }*
  store { i64, i8* }* %1893, { i64, i8* }** %1894
  %1895 = call { i64, i8* }* @nyx_array_new_ptr()
  %1896 = alloca { i64, i8* }*
  store { i64, i8* }* %1895, { i64, i8* }** %1896
  %1897 = load { i64, i8* }*, { i64, i8* }** %1886
  %1898 = call i64 @nyx_array_length({ i64, i8* }* %1897)
  %1899 = icmp sgt i64 %1898, 2
  br i1 %1899, label %then405, label %else406
then405:
  %1900 = load { i64, i8* }*, { i64, i8* }** %1886
  %1901 = call i64 @nyx_array_get({ i64, i8* }* %1900, i64 2)
  %1902 = inttoptr i64 %1901 to { i64, i8* }*
  %1903 = alloca { i64, i8* }*
  store { i64, i8* }* %1902, { i64, i8* }** %1903
  %1904 = load { i64, i8* }*, { i64, i8* }** %1903
  store { i64, i8* }* %1904, { i64, i8* }** %1896
  br label %merge407
else406:
  br label %merge407
merge407:
  %1905 = getelementptr [8 x i8], [8 x i8]* @.str257, i32 0, i32 0
  %1906 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str257.c, i8* %1905)
  %1907 = load %nyx_string*, %nyx_string** %1890
  %1908 = call %nyx_string* @nyx_string_concat(%nyx_string* %1906, %nyx_string* %1907)
  %1909 = alloca %nyx_string*
  store %nyx_string* %1908, %nyx_string** %1909
  %1910 = load { i64, i8* }*, { i64, i8* }** %1896
  %1911 = call i64 @nyx_array_length({ i64, i8* }* %1910)
  %1912 = icmp sgt i64 %1911, 0
  br i1 %1912, label %then408, label %else409
then408:
  %1913 = load %nyx_string*, %nyx_string** %1909
  %1914 = getelementptr [2 x i8], [2 x i8]* @.str258, i32 0, i32 0
  %1915 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str258.c, i8* %1914)
  %1916 = call %nyx_string* @nyx_string_concat(%nyx_string* %1913, %nyx_string* %1915)
  store %nyx_string* %1916, %nyx_string** %1909
  %1917 = alloca i64
  store i64 0, i64* %1917
  %1918 = getelementptr [3 x i8], [3 x i8]* @.str259, i32 0, i32 0
  %1919 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str259.c, i8* %1918)
  %1920 = alloca %nyx_string*
  store %nyx_string* %1919, %nyx_string** %1920
  %1921 = call i8* @llvm.stacksave()
  br label %while_cond411
while_cond411:
  %1922 = load i64, i64* %1917
  %1923 = load { i64, i8* }*, { i64, i8* }** %1896
  %1924 = call i64 @nyx_array_length({ i64, i8* }* %1923)
  %1925 = icmp slt i64 %1922, %1924
  br i1 %1925, label %while_body412, label %while_end413
while_body412:
  call void @llvm.stackrestore(i8* %1921)
  %1926 = load i64, i64* %1917
  %1927 = icmp sgt i64 %1926, 0
  br i1 %1927, label %then414, label %else415
then414:
  %1928 = load %nyx_string*, %nyx_string** %1909
  %1929 = load %nyx_string*, %nyx_string** %1920
  %1930 = call %nyx_string* @nyx_string_concat(%nyx_string* %1928, %nyx_string* %1929)
  store %nyx_string* %1930, %nyx_string** %1909
  br label %merge416
else415:
  br label %merge416
merge416:
  %1931 = load { i64, i8* }*, { i64, i8* }** %1896
  %1932 = load i64, i64* %1917
  %1933 = call i64 @nyx_array_get_checked({ i64, i8* }* %1931, i64 %1932, i64 2)
  %1934 = inttoptr i64 %1933 to %nyx_string*
  %1935 = alloca %nyx_string*
  store %nyx_string* %1934, %nyx_string** %1935
  %1936 = load %nyx_string*, %nyx_string** %1909
  %1937 = load %nyx_string*, %nyx_string** %1935
  %1938 = call %nyx_string* @nyx_string_concat(%nyx_string* %1936, %nyx_string* %1937)
  store %nyx_string* %1938, %nyx_string** %1909
  %1939 = load i64, i64* %1917
  %1940 = add i64 %1939, 1
  store i64 %1940, i64* %1917
  br label %while_cond411
while_end413:
  %1941 = load %nyx_string*, %nyx_string** %1909
  %1942 = getelementptr [2 x i8], [2 x i8]* @.str260, i32 0, i32 0
  %1943 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str260.c, i8* %1942)
  %1944 = call %nyx_string* @nyx_string_concat(%nyx_string* %1941, %nyx_string* %1943)
  store %nyx_string* %1944, %nyx_string** %1909
  br label %merge410
else409:
  br label %merge410
merge410:
  %1945 = load %nyx_string*, %nyx_string** %1909
  %1946 = getelementptr [4 x i8], [4 x i8]* @.str261, i32 0, i32 0
  %1947 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str261.c, i8* %1946)
  %1948 = call %nyx_string* @nyx_string_concat(%nyx_string* %1945, %nyx_string* %1947)
  store %nyx_string* %1948, %nyx_string** %1909
  %1949 = load %nyx_string*, %nyx_string** %1909
  %1950 = call i64 @out(%nyx_string* %1949)
  %1951 = load i64, i64* @g_indent
  %1952 = add i64 %1951, 1
  store i64 %1952, i64* @g_indent
  %1953 = alloca i64
  store i64 0, i64* %1953
  %1954 = getelementptr [2 x i8], [2 x i8]* @.str262, i32 0, i32 0
  %1955 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str262.c, i8* %1954)
  %1956 = alloca %nyx_string*
  store %nyx_string* %1955, %nyx_string** %1956
  %1957 = getelementptr [1 x i8], [1 x i8]* @.str263, i32 0, i32 0
  %1958 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str263.c, i8* %1957)
  %1959 = alloca %nyx_string*
  store %nyx_string* %1958, %nyx_string** %1959
  %1960 = getelementptr [3 x i8], [3 x i8]* @.str264, i32 0, i32 0
  %1961 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str264.c, i8* %1960)
  %1962 = alloca %nyx_string*
  store %nyx_string* %1961, %nyx_string** %1962
  %1963 = call i8* @llvm.stacksave()
  br label %while_cond417
while_cond417:
  %1964 = load i64, i64* %1953
  %1965 = load { i64, i8* }*, { i64, i8* }** %1894
  %1966 = call i64 @nyx_array_length({ i64, i8* }* %1965)
  %1967 = icmp slt i64 %1964, %1966
  br i1 %1967, label %while_body418, label %while_end419
while_body418:
  call void @llvm.stackrestore(i8* %1963)
  %1968 = load { i64, i8* }*, { i64, i8* }** %1894
  %1969 = load i64, i64* %1953
  %1970 = call i64 @nyx_array_get({ i64, i8* }* %1968, i64 %1969)
  %1971 = inttoptr i64 %1970 to { i64, i8* }*
  %1972 = alloca { i64, i8* }*
  store { i64, i8* }* %1971, { i64, i8* }** %1972
  %1973 = load { i64, i8* }*, { i64, i8* }** %1972
  %1974 = call i64 @nyx_array_get_checked({ i64, i8* }* %1973, i64 0, i64 2)
  %1975 = inttoptr i64 %1974 to %nyx_string*
  %1976 = alloca %nyx_string*
  store %nyx_string* %1975, %nyx_string** %1976
  %1977 = load { i64, i8* }*, { i64, i8* }** %1972
  %1978 = call i64 @nyx_array_get_checked({ i64, i8* }* %1977, i64 1, i64 2)
  %1979 = inttoptr i64 %1978 to %nyx_string*
  %1980 = alloca %nyx_string*
  store %nyx_string* %1979, %nyx_string** %1980
  %1981 = load %nyx_string*, %nyx_string** %1956
  %1982 = alloca %nyx_string*
  store %nyx_string* %1981, %nyx_string** %1982
  %1983 = load i64, i64* %1953
  %1984 = load { i64, i8* }*, { i64, i8* }** %1894
  %1985 = call i64 @nyx_array_length({ i64, i8* }* %1984)
  %1986 = sub i64 %1985, 1
  %1987 = icmp eq i64 %1983, %1986
  br i1 %1987, label %then420, label %else421
then420:
  %1988 = load %nyx_string*, %nyx_string** %1959
  store %nyx_string* %1988, %nyx_string** %1982
  br label %merge422
else421:
  br label %merge422
merge422:
  %1989 = load %nyx_string*, %nyx_string** %1976
  %1990 = load %nyx_string*, %nyx_string** %1962
  %1991 = call %nyx_string* @nyx_string_concat(%nyx_string* %1989, %nyx_string* %1990)
  %1992 = load %nyx_string*, %nyx_string** %1980
  %1993 = call %nyx_string* @nyx_string_concat(%nyx_string* %1991, %nyx_string* %1992)
  %1994 = load %nyx_string*, %nyx_string** %1982
  %1995 = call %nyx_string* @nyx_string_concat(%nyx_string* %1993, %nyx_string* %1994)
  %1996 = call i64 @out_line(%nyx_string* %1995)
  %1997 = load i64, i64* %1953
  %1998 = add i64 %1997, 1
  store i64 %1998, i64* %1953
  br label %while_cond417
while_end419:
  %1999 = load i64, i64* @g_indent
  %2000 = sub i64 %1999, 1
  store i64 %2000, i64* @g_indent
  %2001 = getelementptr [2 x i8], [2 x i8]* @.str265, i32 0, i32 0
  %2002 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str265.c, i8* %2001)
  %2003 = call i64 @out_line(%nyx_string* %2002)
  %2004 = call i64 @out_empty()
  ret i64 0
}

define internal i64 @fmt_enum(
{ i64, i8* }* %node.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %2005 = call %nyx_string* @indent_str()
  %2006 = call i64 @out(%nyx_string* %2005)
  %2007 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %2008 = call i64 @fmt_enum_inline({ i64, i8* }* %2007)
  ret i64 0
}

define internal i64 @fmt_enum_inline(
{ i64, i8* }* %node.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %2009 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %2010 = call { i64, i8* }* @node_data({ i64, i8* }* %2009)
  %2011 = alloca { i64, i8* }*
  store { i64, i8* }* %2010, { i64, i8* }** %2011
  %2012 = load { i64, i8* }*, { i64, i8* }** %2011
  %2013 = call i64 @nyx_array_get_checked({ i64, i8* }* %2012, i64 0, i64 2)
  %2014 = inttoptr i64 %2013 to %nyx_string*
  %2015 = alloca %nyx_string*
  store %nyx_string* %2014, %nyx_string** %2015
  %2016 = load { i64, i8* }*, { i64, i8* }** %2011
  %2017 = call i64 @nyx_array_get({ i64, i8* }* %2016, i64 1)
  %2018 = inttoptr i64 %2017 to { i64, i8* }*
  %2019 = alloca { i64, i8* }*
  store { i64, i8* }* %2018, { i64, i8* }** %2019
  %2020 = call { i64, i8* }* @nyx_array_new_ptr()
  %2021 = alloca { i64, i8* }*
  store { i64, i8* }* %2020, { i64, i8* }** %2021
  %2022 = load { i64, i8* }*, { i64, i8* }** %2011
  %2023 = call i64 @nyx_array_length({ i64, i8* }* %2022)
  %2024 = icmp sgt i64 %2023, 2
  br i1 %2024, label %then423, label %else424
then423:
  %2025 = load { i64, i8* }*, { i64, i8* }** %2011
  %2026 = call i64 @nyx_array_get({ i64, i8* }* %2025, i64 2)
  %2027 = inttoptr i64 %2026 to { i64, i8* }*
  %2028 = alloca { i64, i8* }*
  store { i64, i8* }* %2027, { i64, i8* }** %2028
  %2029 = load { i64, i8* }*, { i64, i8* }** %2028
  store { i64, i8* }* %2029, { i64, i8* }** %2021
  br label %merge425
else424:
  br label %merge425
merge425:
  %2030 = getelementptr [6 x i8], [6 x i8]* @.str266, i32 0, i32 0
  %2031 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str266.c, i8* %2030)
  %2032 = load %nyx_string*, %nyx_string** %2015
  %2033 = call %nyx_string* @nyx_string_concat(%nyx_string* %2031, %nyx_string* %2032)
  %2034 = alloca %nyx_string*
  store %nyx_string* %2033, %nyx_string** %2034
  %2035 = load { i64, i8* }*, { i64, i8* }** %2021
  %2036 = call i64 @nyx_array_length({ i64, i8* }* %2035)
  %2037 = icmp sgt i64 %2036, 0
  br i1 %2037, label %then426, label %else427
then426:
  %2038 = load %nyx_string*, %nyx_string** %2034
  %2039 = getelementptr [2 x i8], [2 x i8]* @.str267, i32 0, i32 0
  %2040 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str267.c, i8* %2039)
  %2041 = call %nyx_string* @nyx_string_concat(%nyx_string* %2038, %nyx_string* %2040)
  store %nyx_string* %2041, %nyx_string** %2034
  %2042 = alloca i64
  store i64 0, i64* %2042
  %2043 = getelementptr [3 x i8], [3 x i8]* @.str268, i32 0, i32 0
  %2044 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str268.c, i8* %2043)
  %2045 = alloca %nyx_string*
  store %nyx_string* %2044, %nyx_string** %2045
  %2046 = call i8* @llvm.stacksave()
  br label %while_cond429
while_cond429:
  %2047 = load i64, i64* %2042
  %2048 = load { i64, i8* }*, { i64, i8* }** %2021
  %2049 = call i64 @nyx_array_length({ i64, i8* }* %2048)
  %2050 = icmp slt i64 %2047, %2049
  br i1 %2050, label %while_body430, label %while_end431
while_body430:
  call void @llvm.stackrestore(i8* %2046)
  %2051 = load i64, i64* %2042
  %2052 = icmp sgt i64 %2051, 0
  br i1 %2052, label %then432, label %else433
then432:
  %2053 = load %nyx_string*, %nyx_string** %2034
  %2054 = load %nyx_string*, %nyx_string** %2045
  %2055 = call %nyx_string* @nyx_string_concat(%nyx_string* %2053, %nyx_string* %2054)
  store %nyx_string* %2055, %nyx_string** %2034
  br label %merge434
else433:
  br label %merge434
merge434:
  %2056 = load { i64, i8* }*, { i64, i8* }** %2021
  %2057 = load i64, i64* %2042
  %2058 = call i64 @nyx_array_get_checked({ i64, i8* }* %2056, i64 %2057, i64 2)
  %2059 = inttoptr i64 %2058 to %nyx_string*
  %2060 = alloca %nyx_string*
  store %nyx_string* %2059, %nyx_string** %2060
  %2061 = load %nyx_string*, %nyx_string** %2034
  %2062 = load %nyx_string*, %nyx_string** %2060
  %2063 = call %nyx_string* @nyx_string_concat(%nyx_string* %2061, %nyx_string* %2062)
  store %nyx_string* %2063, %nyx_string** %2034
  %2064 = load i64, i64* %2042
  %2065 = add i64 %2064, 1
  store i64 %2065, i64* %2042
  br label %while_cond429
while_end431:
  %2066 = load %nyx_string*, %nyx_string** %2034
  %2067 = getelementptr [2 x i8], [2 x i8]* @.str269, i32 0, i32 0
  %2068 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str269.c, i8* %2067)
  %2069 = call %nyx_string* @nyx_string_concat(%nyx_string* %2066, %nyx_string* %2068)
  store %nyx_string* %2069, %nyx_string** %2034
  br label %merge428
else427:
  br label %merge428
merge428:
  %2070 = load %nyx_string*, %nyx_string** %2034
  %2071 = getelementptr [4 x i8], [4 x i8]* @.str270, i32 0, i32 0
  %2072 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str270.c, i8* %2071)
  %2073 = call %nyx_string* @nyx_string_concat(%nyx_string* %2070, %nyx_string* %2072)
  store %nyx_string* %2073, %nyx_string** %2034
  %2074 = load %nyx_string*, %nyx_string** %2034
  %2075 = call i64 @out(%nyx_string* %2074)
  %2076 = load i64, i64* @g_indent
  %2077 = add i64 %2076, 1
  store i64 %2077, i64* @g_indent
  %2078 = alloca i64
  store i64 0, i64* %2078
  %2079 = getelementptr [2 x i8], [2 x i8]* @.str271, i32 0, i32 0
  %2080 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str271.c, i8* %2079)
  %2081 = alloca %nyx_string*
  store %nyx_string* %2080, %nyx_string** %2081
  %2082 = getelementptr [3 x i8], [3 x i8]* @.str272, i32 0, i32 0
  %2083 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str272.c, i8* %2082)
  %2084 = alloca %nyx_string*
  store %nyx_string* %2083, %nyx_string** %2084
  %2085 = getelementptr [2 x i8], [2 x i8]* @.str273, i32 0, i32 0
  %2086 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str273.c, i8* %2085)
  %2087 = alloca %nyx_string*
  store %nyx_string* %2086, %nyx_string** %2087
  %2088 = getelementptr [2 x i8], [2 x i8]* @.str274, i32 0, i32 0
  %2089 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str274.c, i8* %2088)
  %2090 = alloca %nyx_string*
  store %nyx_string* %2089, %nyx_string** %2090
  %2091 = call i8* @llvm.stacksave()
  br label %while_cond435
while_cond435:
  %2092 = load i64, i64* %2078
  %2093 = load { i64, i8* }*, { i64, i8* }** %2019
  %2094 = call i64 @nyx_array_length({ i64, i8* }* %2093)
  %2095 = icmp slt i64 %2092, %2094
  br i1 %2095, label %while_body436, label %while_end437
while_body436:
  call void @llvm.stackrestore(i8* %2091)
  %2096 = load { i64, i8* }*, { i64, i8* }** %2019
  %2097 = load i64, i64* %2078
  %2098 = call i64 @nyx_array_get({ i64, i8* }* %2096, i64 %2097)
  %2099 = inttoptr i64 %2098 to { i64, i8* }*
  %2100 = alloca { i64, i8* }*
  store { i64, i8* }* %2099, { i64, i8* }** %2100
  %2101 = load { i64, i8* }*, { i64, i8* }** %2100
  %2102 = call i64 @nyx_array_get_checked({ i64, i8* }* %2101, i64 0, i64 2)
  %2103 = inttoptr i64 %2102 to %nyx_string*
  %2104 = alloca %nyx_string*
  store %nyx_string* %2103, %nyx_string** %2104
  %2105 = load { i64, i8* }*, { i64, i8* }** %2100
  %2106 = call i64 @nyx_array_get({ i64, i8* }* %2105, i64 1)
  %2107 = inttoptr i64 %2106 to { i64, i8* }*
  %2108 = alloca { i64, i8* }*
  store { i64, i8* }* %2107, { i64, i8* }** %2108
  %2109 = load %nyx_string*, %nyx_string** %2104
  %2110 = alloca %nyx_string*
  store %nyx_string* %2109, %nyx_string** %2110
  %2111 = load { i64, i8* }*, { i64, i8* }** %2108
  %2112 = call i64 @nyx_array_length({ i64, i8* }* %2111)
  %2113 = icmp sgt i64 %2112, 0
  br i1 %2113, label %then438, label %else439
then438:
  %2114 = load %nyx_string*, %nyx_string** %2110
  %2115 = load %nyx_string*, %nyx_string** %2081
  %2116 = call %nyx_string* @nyx_string_concat(%nyx_string* %2114, %nyx_string* %2115)
  store %nyx_string* %2116, %nyx_string** %2110
  %2117 = alloca i64
  store i64 0, i64* %2117
  %2118 = call i8* @llvm.stacksave()
  br label %while_cond441
while_cond441:
  %2119 = load i64, i64* %2117
  %2120 = load { i64, i8* }*, { i64, i8* }** %2108
  %2121 = call i64 @nyx_array_length({ i64, i8* }* %2120)
  %2122 = icmp slt i64 %2119, %2121
  br i1 %2122, label %while_body442, label %while_end443
while_body442:
  call void @llvm.stackrestore(i8* %2118)
  %2123 = load i64, i64* %2117
  %2124 = icmp sgt i64 %2123, 0
  br i1 %2124, label %then444, label %else445
then444:
  %2125 = load %nyx_string*, %nyx_string** %2110
  %2126 = load %nyx_string*, %nyx_string** %2084
  %2127 = call %nyx_string* @nyx_string_concat(%nyx_string* %2125, %nyx_string* %2126)
  store %nyx_string* %2127, %nyx_string** %2110
  br label %merge446
else445:
  br label %merge446
merge446:
  %2128 = load { i64, i8* }*, { i64, i8* }** %2108
  %2129 = load i64, i64* %2117
  %2130 = call i64 @nyx_array_get_checked({ i64, i8* }* %2128, i64 %2129, i64 2)
  %2131 = inttoptr i64 %2130 to %nyx_string*
  %2132 = alloca %nyx_string*
  store %nyx_string* %2131, %nyx_string** %2132
  %2133 = load %nyx_string*, %nyx_string** %2110
  %2134 = load %nyx_string*, %nyx_string** %2132
  %2135 = call %nyx_string* @nyx_string_concat(%nyx_string* %2133, %nyx_string* %2134)
  store %nyx_string* %2135, %nyx_string** %2110
  %2136 = load i64, i64* %2117
  %2137 = add i64 %2136, 1
  store i64 %2137, i64* %2117
  br label %while_cond441
while_end443:
  %2138 = load %nyx_string*, %nyx_string** %2110
  %2139 = load %nyx_string*, %nyx_string** %2087
  %2140 = call %nyx_string* @nyx_string_concat(%nyx_string* %2138, %nyx_string* %2139)
  store %nyx_string* %2140, %nyx_string** %2110
  br label %merge440
else439:
  br label %merge440
merge440:
  %2141 = load i64, i64* %2078
  %2142 = load { i64, i8* }*, { i64, i8* }** %2019
  %2143 = call i64 @nyx_array_length({ i64, i8* }* %2142)
  %2144 = sub i64 %2143, 1
  %2145 = icmp slt i64 %2141, %2144
  br i1 %2145, label %then447, label %else448
then447:
  %2146 = load %nyx_string*, %nyx_string** %2110
  %2147 = load %nyx_string*, %nyx_string** %2090
  %2148 = call %nyx_string* @nyx_string_concat(%nyx_string* %2146, %nyx_string* %2147)
  store %nyx_string* %2148, %nyx_string** %2110
  br label %merge449
else448:
  br label %merge449
merge449:
  %2149 = load %nyx_string*, %nyx_string** %2110
  %2150 = call i64 @out_line(%nyx_string* %2149)
  %2151 = load i64, i64* %2078
  %2152 = add i64 %2151, 1
  store i64 %2152, i64* %2078
  br label %while_cond435
while_end437:
  %2153 = load i64, i64* @g_indent
  %2154 = sub i64 %2153, 1
  store i64 %2154, i64* @g_indent
  %2155 = getelementptr [2 x i8], [2 x i8]* @.str275, i32 0, i32 0
  %2156 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str275.c, i8* %2155)
  %2157 = call i64 @out_line(%nyx_string* %2156)
  %2158 = call i64 @out_empty()
  ret i64 0
}

define internal i64 @fmt_trait(
{ i64, i8* }* %node.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %2159 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %2160 = call { i64, i8* }* @node_data({ i64, i8* }* %2159)
  %2161 = alloca { i64, i8* }*
  store { i64, i8* }* %2160, { i64, i8* }** %2161
  %2162 = load { i64, i8* }*, { i64, i8* }** %2161
  %2163 = call i64 @nyx_array_get_checked({ i64, i8* }* %2162, i64 0, i64 2)
  %2164 = inttoptr i64 %2163 to %nyx_string*
  %2165 = alloca %nyx_string*
  store %nyx_string* %2164, %nyx_string** %2165
  %2166 = load { i64, i8* }*, { i64, i8* }** %2161
  %2167 = call i64 @nyx_array_get({ i64, i8* }* %2166, i64 1)
  %2168 = inttoptr i64 %2167 to { i64, i8* }*
  %2169 = alloca { i64, i8* }*
  store { i64, i8* }* %2168, { i64, i8* }** %2169
  %2170 = load { i64, i8* }*, { i64, i8* }** %2161
  %2171 = call i64 @nyx_array_get({ i64, i8* }* %2170, i64 2)
  %2172 = inttoptr i64 %2171 to { i64, i8* }*
  %2173 = alloca { i64, i8* }*
  store { i64, i8* }* %2172, { i64, i8* }** %2173
  %2174 = getelementptr [7 x i8], [7 x i8]* @.str276, i32 0, i32 0
  %2175 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str276.c, i8* %2174)
  %2176 = load %nyx_string*, %nyx_string** %2165
  %2177 = call %nyx_string* @nyx_string_concat(%nyx_string* %2175, %nyx_string* %2176)
  %2178 = alloca %nyx_string*
  store %nyx_string* %2177, %nyx_string** %2178
  %2179 = load { i64, i8* }*, { i64, i8* }** %2169
  %2180 = call i64 @nyx_array_length({ i64, i8* }* %2179)
  %2181 = icmp sgt i64 %2180, 0
  br i1 %2181, label %then450, label %else451
then450:
  %2182 = load %nyx_string*, %nyx_string** %2178
  %2183 = getelementptr [3 x i8], [3 x i8]* @.str277, i32 0, i32 0
  %2184 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str277.c, i8* %2183)
  %2185 = call %nyx_string* @nyx_string_concat(%nyx_string* %2182, %nyx_string* %2184)
  store %nyx_string* %2185, %nyx_string** %2178
  %2186 = alloca i64
  store i64 0, i64* %2186
  %2187 = getelementptr [4 x i8], [4 x i8]* @.str278, i32 0, i32 0
  %2188 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str278.c, i8* %2187)
  %2189 = alloca %nyx_string*
  store %nyx_string* %2188, %nyx_string** %2189
  %2190 = call i8* @llvm.stacksave()
  br label %while_cond453
while_cond453:
  %2191 = load i64, i64* %2186
  %2192 = load { i64, i8* }*, { i64, i8* }** %2169
  %2193 = call i64 @nyx_array_length({ i64, i8* }* %2192)
  %2194 = icmp slt i64 %2191, %2193
  br i1 %2194, label %while_body454, label %while_end455
while_body454:
  call void @llvm.stackrestore(i8* %2190)
  %2195 = load i64, i64* %2186
  %2196 = icmp sgt i64 %2195, 0
  br i1 %2196, label %then456, label %else457
then456:
  %2197 = load %nyx_string*, %nyx_string** %2178
  %2198 = load %nyx_string*, %nyx_string** %2189
  %2199 = call %nyx_string* @nyx_string_concat(%nyx_string* %2197, %nyx_string* %2198)
  store %nyx_string* %2199, %nyx_string** %2178
  br label %merge458
else457:
  br label %merge458
merge458:
  %2200 = load { i64, i8* }*, { i64, i8* }** %2169
  %2201 = load i64, i64* %2186
  %2202 = call i64 @nyx_array_get_checked({ i64, i8* }* %2200, i64 %2201, i64 2)
  %2203 = inttoptr i64 %2202 to %nyx_string*
  %2204 = alloca %nyx_string*
  store %nyx_string* %2203, %nyx_string** %2204
  %2205 = load %nyx_string*, %nyx_string** %2178
  %2206 = load %nyx_string*, %nyx_string** %2204
  %2207 = call %nyx_string* @nyx_string_concat(%nyx_string* %2205, %nyx_string* %2206)
  store %nyx_string* %2207, %nyx_string** %2178
  %2208 = load i64, i64* %2186
  %2209 = add i64 %2208, 1
  store i64 %2209, i64* %2186
  br label %while_cond453
while_end455:
  br label %merge452
else451:
  br label %merge452
merge452:
  %2210 = load %nyx_string*, %nyx_string** %2178
  %2211 = getelementptr [3 x i8], [3 x i8]* @.str279, i32 0, i32 0
  %2212 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str279.c, i8* %2211)
  %2213 = call %nyx_string* @nyx_string_concat(%nyx_string* %2210, %nyx_string* %2212)
  %2214 = call i64 @out_line(%nyx_string* %2213)
  %2215 = load i64, i64* @g_indent
  %2216 = add i64 %2215, 1
  store i64 %2216, i64* @g_indent
  %2217 = alloca i64
  store i64 0, i64* %2217
  %2218 = getelementptr [15 x i8], [15 x i8]* @.str280, i32 0, i32 0
  %2219 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str280.c, i8* %2218)
  %2220 = alloca %nyx_string*
  store %nyx_string* %2219, %nyx_string** %2220
  %2221 = getelementptr [6 x i8], [6 x i8]* @.str281, i32 0, i32 0
  %2222 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str281.c, i8* %2221)
  %2223 = alloca %nyx_string*
  store %nyx_string* %2222, %nyx_string** %2223
  %2224 = getelementptr [2 x i8], [2 x i8]* @.str282, i32 0, i32 0
  %2225 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str282.c, i8* %2224)
  %2226 = alloca %nyx_string*
  store %nyx_string* %2225, %nyx_string** %2226
  %2227 = getelementptr [3 x i8], [3 x i8]* @.str283, i32 0, i32 0
  %2228 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str283.c, i8* %2227)
  %2229 = alloca %nyx_string*
  store %nyx_string* %2228, %nyx_string** %2229
  %2230 = getelementptr [2 x i8], [2 x i8]* @.str284, i32 0, i32 0
  %2231 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str284.c, i8* %2230)
  %2232 = alloca %nyx_string*
  store %nyx_string* %2231, %nyx_string** %2232
  %2233 = getelementptr [4 x i8], [4 x i8]* @.str285, i32 0, i32 0
  %2234 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str285.c, i8* %2233)
  %2235 = alloca %nyx_string*
  store %nyx_string* %2234, %nyx_string** %2235
  %2236 = getelementptr [2 x i8], [2 x i8]* @.str286, i32 0, i32 0
  %2237 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str286.c, i8* %2236)
  %2238 = alloca %nyx_string*
  store %nyx_string* %2237, %nyx_string** %2238
  %2239 = getelementptr [1 x i8], [1 x i8]* @.str287, i32 0, i32 0
  %2240 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str287.c, i8* %2239)
  %2241 = alloca %nyx_string*
  store %nyx_string* %2240, %nyx_string** %2241
  %2242 = getelementptr [3 x i8], [3 x i8]* @.str288, i32 0, i32 0
  %2243 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str288.c, i8* %2242)
  %2244 = alloca %nyx_string*
  store %nyx_string* %2243, %nyx_string** %2244
  %2245 = getelementptr [2 x i8], [2 x i8]* @.str289, i32 0, i32 0
  %2246 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str289.c, i8* %2245)
  %2247 = alloca %nyx_string*
  store %nyx_string* %2246, %nyx_string** %2247
  %2248 = getelementptr [5 x i8], [5 x i8]* @.str290, i32 0, i32 0
  %2249 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str290.c, i8* %2248)
  %2250 = alloca %nyx_string*
  store %nyx_string* %2249, %nyx_string** %2250
  %2251 = getelementptr [4 x i8], [4 x i8]* @.str291, i32 0, i32 0
  %2252 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str291.c, i8* %2251)
  %2253 = alloca %nyx_string*
  store %nyx_string* %2252, %nyx_string** %2253
  %2254 = getelementptr [2 x i8], [2 x i8]* @.str292, i32 0, i32 0
  %2255 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str292.c, i8* %2254)
  %2256 = alloca %nyx_string*
  store %nyx_string* %2255, %nyx_string** %2256
  %2257 = call i8* @llvm.stacksave()
  br label %while_cond459
while_cond459:
  %2258 = load i64, i64* %2217
  %2259 = load { i64, i8* }*, { i64, i8* }** %2173
  %2260 = call i64 @nyx_array_length({ i64, i8* }* %2259)
  %2261 = icmp slt i64 %2258, %2260
  br i1 %2261, label %while_body460, label %while_end461
while_body460:
  call void @llvm.stackrestore(i8* %2257)
  %2262 = load { i64, i8* }*, { i64, i8* }** %2173
  %2263 = load i64, i64* %2217
  %2264 = call i64 @nyx_array_get({ i64, i8* }* %2262, i64 %2263)
  %2265 = inttoptr i64 %2264 to { i64, i8* }*
  %2266 = alloca { i64, i8* }*
  store { i64, i8* }* %2265, { i64, i8* }** %2266
  %2267 = load { i64, i8* }*, { i64, i8* }** %2266
  %2268 = call i64 @nyx_array_get_checked({ i64, i8* }* %2267, i64 0, i64 2)
  %2269 = inttoptr i64 %2268 to %nyx_string*
  %2270 = alloca %nyx_string*
  store %nyx_string* %2269, %nyx_string** %2270
  %2271 = load %nyx_string*, %nyx_string** %2270
  %2272 = load %nyx_string*, %nyx_string** %2220
  %2273 = call i1 @nyx_string_equals(%nyx_string* %2271, %nyx_string* %2272)
  br i1 %2273, label %then462, label %else463
then462:
  %2274 = load { i64, i8* }*, { i64, i8* }** %2266
  %2275 = call i64 @nyx_array_get_checked({ i64, i8* }* %2274, i64 1, i64 2)
  %2276 = inttoptr i64 %2275 to %nyx_string*
  %2277 = alloca %nyx_string*
  store %nyx_string* %2276, %nyx_string** %2277
  %2278 = load { i64, i8* }*, { i64, i8* }** %2266
  %2279 = call i64 @nyx_array_get({ i64, i8* }* %2278, i64 2)
  %2280 = inttoptr i64 %2279 to { i64, i8* }*
  %2281 = alloca { i64, i8* }*
  store { i64, i8* }* %2280, { i64, i8* }** %2281
  %2282 = load %nyx_string*, %nyx_string** %2223
  %2283 = load %nyx_string*, %nyx_string** %2277
  %2284 = call %nyx_string* @nyx_string_concat(%nyx_string* %2282, %nyx_string* %2283)
  %2285 = alloca %nyx_string*
  store %nyx_string* %2284, %nyx_string** %2285
  %2286 = load { i64, i8* }*, { i64, i8* }** %2281
  %2287 = call i64 @nyx_array_length({ i64, i8* }* %2286)
  %2288 = icmp sgt i64 %2287, 0
  br i1 %2288, label %then465, label %else466
then465:
  %2289 = load %nyx_string*, %nyx_string** %2285
  %2290 = load %nyx_string*, %nyx_string** %2226
  %2291 = call %nyx_string* @nyx_string_concat(%nyx_string* %2289, %nyx_string* %2290)
  store %nyx_string* %2291, %nyx_string** %2285
  %2292 = alloca i64
  store i64 0, i64* %2292
  %2293 = call i8* @llvm.stacksave()
  br label %while_cond468
while_cond468:
  %2294 = load i64, i64* %2292
  %2295 = load { i64, i8* }*, { i64, i8* }** %2281
  %2296 = call i64 @nyx_array_length({ i64, i8* }* %2295)
  %2297 = icmp slt i64 %2294, %2296
  br i1 %2297, label %while_body469, label %while_end470
while_body469:
  call void @llvm.stackrestore(i8* %2293)
  %2298 = load i64, i64* %2292
  %2299 = icmp sgt i64 %2298, 0
  br i1 %2299, label %then471, label %else472
then471:
  %2300 = load %nyx_string*, %nyx_string** %2285
  %2301 = load %nyx_string*, %nyx_string** %2229
  %2302 = call %nyx_string* @nyx_string_concat(%nyx_string* %2300, %nyx_string* %2301)
  store %nyx_string* %2302, %nyx_string** %2285
  br label %merge473
else472:
  br label %merge473
merge473:
  %2303 = load { i64, i8* }*, { i64, i8* }** %2281
  %2304 = load i64, i64* %2292
  %2305 = call i64 @nyx_array_get_checked({ i64, i8* }* %2303, i64 %2304, i64 2)
  %2306 = inttoptr i64 %2305 to %nyx_string*
  %2307 = alloca %nyx_string*
  store %nyx_string* %2306, %nyx_string** %2307
  %2308 = load %nyx_string*, %nyx_string** %2285
  %2309 = load %nyx_string*, %nyx_string** %2307
  %2310 = call %nyx_string* @nyx_string_concat(%nyx_string* %2308, %nyx_string* %2309)
  store %nyx_string* %2310, %nyx_string** %2285
  %2311 = load i64, i64* %2292
  %2312 = add i64 %2311, 1
  store i64 %2312, i64* %2292
  br label %while_cond468
while_end470:
  %2313 = load %nyx_string*, %nyx_string** %2285
  %2314 = load %nyx_string*, %nyx_string** %2232
  %2315 = call %nyx_string* @nyx_string_concat(%nyx_string* %2313, %nyx_string* %2314)
  store %nyx_string* %2315, %nyx_string** %2285
  br label %merge467
else466:
  br label %merge467
merge467:
  %2316 = load %nyx_string*, %nyx_string** %2285
  %2317 = call i64 @out_line(%nyx_string* %2316)
  br label %merge464
else463:
  %2318 = load { i64, i8* }*, { i64, i8* }** %2266
  %2319 = call i64 @nyx_array_get({ i64, i8* }* %2318, i64 1)
  %2320 = inttoptr i64 %2319 to { i64, i8* }*
  %2321 = alloca { i64, i8* }*
  store { i64, i8* }* %2320, { i64, i8* }** %2321
  %2322 = load { i64, i8* }*, { i64, i8* }** %2266
  %2323 = call i64 @nyx_array_get_checked({ i64, i8* }* %2322, i64 2, i64 2)
  %2324 = inttoptr i64 %2323 to %nyx_string*
  %2325 = alloca %nyx_string*
  store %nyx_string* %2324, %nyx_string** %2325
  %2326 = load %nyx_string*, %nyx_string** %2235
  %2327 = load %nyx_string*, %nyx_string** %2270
  %2328 = call %nyx_string* @nyx_string_concat(%nyx_string* %2326, %nyx_string* %2327)
  %2329 = load %nyx_string*, %nyx_string** %2238
  %2330 = call %nyx_string* @nyx_string_concat(%nyx_string* %2328, %nyx_string* %2329)
  %2331 = alloca %nyx_string*
  store %nyx_string* %2330, %nyx_string** %2331
  %2332 = alloca i64
  store i64 0, i64* %2332
  %2333 = call i8* @llvm.stacksave()
  br label %while_cond474
while_cond474:
  %2334 = load i64, i64* %2332
  %2335 = load { i64, i8* }*, { i64, i8* }** %2321
  %2336 = call i64 @nyx_array_length({ i64, i8* }* %2335)
  %2337 = icmp slt i64 %2334, %2336
  br i1 %2337, label %while_body475, label %while_end476
while_body475:
  call void @llvm.stackrestore(i8* %2333)
  %2338 = load i64, i64* %2332
  %2339 = icmp sgt i64 %2338, 0
  br i1 %2339, label %then477, label %else478
then477:
  %2340 = load %nyx_string*, %nyx_string** %2331
  %2341 = load %nyx_string*, %nyx_string** %2229
  %2342 = call %nyx_string* @nyx_string_concat(%nyx_string* %2340, %nyx_string* %2341)
  store %nyx_string* %2342, %nyx_string** %2331
  br label %merge479
else478:
  br label %merge479
merge479:
  %2343 = load { i64, i8* }*, { i64, i8* }** %2321
  %2344 = load i64, i64* %2332
  %2345 = call i64 @nyx_array_get({ i64, i8* }* %2343, i64 %2344)
  %2346 = inttoptr i64 %2345 to { i64, i8* }*
  %2347 = alloca { i64, i8* }*
  store { i64, i8* }* %2346, { i64, i8* }** %2347
  %2348 = load { i64, i8* }*, { i64, i8* }** %2347
  %2349 = call i64 @nyx_array_get_checked({ i64, i8* }* %2348, i64 0, i64 2)
  %2350 = inttoptr i64 %2349 to %nyx_string*
  %2351 = alloca %nyx_string*
  store %nyx_string* %2350, %nyx_string** %2351
  %2352 = load { i64, i8* }*, { i64, i8* }** %2347
  %2353 = call i64 @nyx_array_get_checked({ i64, i8* }* %2352, i64 1, i64 2)
  %2354 = inttoptr i64 %2353 to %nyx_string*
  %2355 = alloca %nyx_string*
  store %nyx_string* %2354, %nyx_string** %2355
  %2356 = load %nyx_string*, %nyx_string** %2331
  %2357 = load %nyx_string*, %nyx_string** %2351
  %2358 = call %nyx_string* @nyx_string_concat(%nyx_string* %2356, %nyx_string* %2357)
  store %nyx_string* %2358, %nyx_string** %2331
  %2359 = load %nyx_string*, %nyx_string** %2355
  %2360 = load %nyx_string*, %nyx_string** %2241
  %2361 = call i1 @nyx_string_equals(%nyx_string* %2359, %nyx_string* %2360)
  %2362 = xor i1 %2361, true
  br i1 %2362, label %then480, label %else481
then480:
  %2363 = load %nyx_string*, %nyx_string** %2331
  %2364 = load %nyx_string*, %nyx_string** %2244
  %2365 = call %nyx_string* @nyx_string_concat(%nyx_string* %2363, %nyx_string* %2364)
  %2366 = load %nyx_string*, %nyx_string** %2355
  %2367 = call %nyx_string* @nyx_string_concat(%nyx_string* %2365, %nyx_string* %2366)
  store %nyx_string* %2367, %nyx_string** %2331
  br label %merge482
else481:
  br label %merge482
merge482:
  %2368 = load i64, i64* %2332
  %2369 = add i64 %2368, 1
  store i64 %2369, i64* %2332
  br label %while_cond474
while_end476:
  %2370 = load %nyx_string*, %nyx_string** %2331
  %2371 = load %nyx_string*, %nyx_string** %2247
  %2372 = call %nyx_string* @nyx_string_concat(%nyx_string* %2370, %nyx_string* %2371)
  store %nyx_string* %2372, %nyx_string** %2331
  %2373 = load %nyx_string*, %nyx_string** %2325
  %2374 = load %nyx_string*, %nyx_string** %2241
  %2375 = call i1 @nyx_string_equals(%nyx_string* %2373, %nyx_string* %2374)
  %2376 = xor i1 %2375, true
  br i1 %2376, label %then483, label %else484
then483:
  %2377 = load %nyx_string*, %nyx_string** %2331
  %2378 = load %nyx_string*, %nyx_string** %2250
  %2379 = call %nyx_string* @nyx_string_concat(%nyx_string* %2377, %nyx_string* %2378)
  %2380 = load %nyx_string*, %nyx_string** %2325
  %2381 = call %nyx_string* @nyx_string_concat(%nyx_string* %2379, %nyx_string* %2380)
  store %nyx_string* %2381, %nyx_string** %2331
  br label %merge485
else484:
  br label %merge485
merge485:
  %2382 = load { i64, i8* }*, { i64, i8* }** %2266
  %2383 = call i64 @nyx_array_length({ i64, i8* }* %2382)
  %2384 = icmp sgt i64 %2383, 3
  br i1 %2384, label %then486, label %else487
then486:
  %2385 = load { i64, i8* }*, { i64, i8* }** %2266
  %2386 = call i64 @nyx_array_get({ i64, i8* }* %2385, i64 3)
  %2387 = inttoptr i64 %2386 to { i64, i8* }*
  %2388 = alloca { i64, i8* }*
  store { i64, i8* }* %2387, { i64, i8* }** %2388
  %2389 = call %nyx_string* @indent_str()
  %2390 = load %nyx_string*, %nyx_string** %2331
  %2391 = call %nyx_string* @nyx_string_concat(%nyx_string* %2389, %nyx_string* %2390)
  %2392 = load %nyx_string*, %nyx_string** %2253
  %2393 = call %nyx_string* @nyx_string_concat(%nyx_string* %2391, %nyx_string* %2392)
  %2394 = call i64 @out(%nyx_string* %2393)
  %2395 = load i64, i64* @g_indent
  %2396 = add i64 %2395, 1
  store i64 %2396, i64* @g_indent
  %2397 = load { i64, i8* }*, { i64, i8* }** %2388
  %2398 = call i64 @fmt_block_stmts({ i64, i8* }* %2397)
  %2399 = load i64, i64* @g_indent
  %2400 = sub i64 %2399, 1
  store i64 %2400, i64* @g_indent
  %2401 = load %nyx_string*, %nyx_string** %2256
  %2402 = call i64 @out_line(%nyx_string* %2401)
  br label %merge488
else487:
  %2403 = load %nyx_string*, %nyx_string** %2331
  %2404 = call i64 @out_line(%nyx_string* %2403)
  br label %merge488
merge488:
  br label %merge464
merge464:
  %2405 = load i64, i64* %2217
  %2406 = add i64 %2405, 1
  store i64 %2406, i64* %2217
  br label %while_cond459
while_end461:
  %2407 = load i64, i64* @g_indent
  %2408 = sub i64 %2407, 1
  store i64 %2408, i64* @g_indent
  %2409 = getelementptr [2 x i8], [2 x i8]* @.str293, i32 0, i32 0
  %2410 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str293.c, i8* %2409)
  %2411 = call i64 @out_line(%nyx_string* %2410)
  %2412 = call i64 @out_empty()
  ret i64 0
}

define internal i64 @fmt_impl(
{ i64, i8* }* %node.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %2413 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %2414 = call { i64, i8* }* @node_data({ i64, i8* }* %2413)
  %2415 = alloca { i64, i8* }*
  store { i64, i8* }* %2414, { i64, i8* }** %2415
  %2416 = load { i64, i8* }*, { i64, i8* }** %2415
  %2417 = call i64 @nyx_array_get_checked({ i64, i8* }* %2416, i64 0, i64 2)
  %2418 = inttoptr i64 %2417 to %nyx_string*
  %2419 = alloca %nyx_string*
  store %nyx_string* %2418, %nyx_string** %2419
  %2420 = load { i64, i8* }*, { i64, i8* }** %2415
  %2421 = call i64 @nyx_array_get({ i64, i8* }* %2420, i64 1)
  %2422 = inttoptr i64 %2421 to { i64, i8* }*
  %2423 = alloca { i64, i8* }*
  store { i64, i8* }* %2422, { i64, i8* }** %2423
  %2424 = call { i64, i8* }* @nyx_array_new_ptr()
  %2425 = alloca { i64, i8* }*
  store { i64, i8* }* %2424, { i64, i8* }** %2425
  %2426 = load { i64, i8* }*, { i64, i8* }** %2415
  %2427 = call i64 @nyx_array_length({ i64, i8* }* %2426)
  %2428 = icmp sgt i64 %2427, 2
  br i1 %2428, label %then489, label %else490
then489:
  %2429 = load { i64, i8* }*, { i64, i8* }** %2415
  %2430 = call i64 @nyx_array_get({ i64, i8* }* %2429, i64 2)
  %2431 = inttoptr i64 %2430 to { i64, i8* }*
  %2432 = alloca { i64, i8* }*
  store { i64, i8* }* %2431, { i64, i8* }** %2432
  %2433 = load { i64, i8* }*, { i64, i8* }** %2432
  store { i64, i8* }* %2433, { i64, i8* }** %2425
  br label %merge491
else490:
  br label %merge491
merge491:
  %2434 = getelementptr [5 x i8], [5 x i8]* @.str294, i32 0, i32 0
  %2435 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str294.c, i8* %2434)
  %2436 = alloca %nyx_string*
  store %nyx_string* %2435, %nyx_string** %2436
  %2437 = load { i64, i8* }*, { i64, i8* }** %2425
  %2438 = call i64 @nyx_array_length({ i64, i8* }* %2437)
  %2439 = icmp sgt i64 %2438, 0
  br i1 %2439, label %then492, label %else493
then492:
  %2440 = load %nyx_string*, %nyx_string** %2436
  %2441 = getelementptr [2 x i8], [2 x i8]* @.str295, i32 0, i32 0
  %2442 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str295.c, i8* %2441)
  %2443 = call %nyx_string* @nyx_string_concat(%nyx_string* %2440, %nyx_string* %2442)
  store %nyx_string* %2443, %nyx_string** %2436
  %2444 = getelementptr [1 x i8], [1 x i8]* @.str296, i32 0, i32 0
  %2445 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str296.c, i8* %2444)
  %2446 = alloca %nyx_string*
  store %nyx_string* %2445, %nyx_string** %2446
  %2447 = alloca i64
  store i64 0, i64* %2447
  %2448 = getelementptr [3 x i8], [3 x i8]* @.str297, i32 0, i32 0
  %2449 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str297.c, i8* %2448)
  %2450 = alloca %nyx_string*
  store %nyx_string* %2449, %nyx_string** %2450
  %2451 = call i8* @llvm.stacksave()
  br label %while_cond495
while_cond495:
  %2452 = load i64, i64* %2447
  %2453 = load { i64, i8* }*, { i64, i8* }** %2425
  %2454 = call i64 @nyx_array_length({ i64, i8* }* %2453)
  %2455 = icmp slt i64 %2452, %2454
  br i1 %2455, label %while_body496, label %while_end497
while_body496:
  call void @llvm.stackrestore(i8* %2451)
  %2456 = load { i64, i8* }*, { i64, i8* }** %2425
  %2457 = load i64, i64* %2447
  %2458 = call i64 @nyx_array_get_checked({ i64, i8* }* %2456, i64 %2457, i64 2)
  %2459 = inttoptr i64 %2458 to %nyx_string*
  %2460 = alloca %nyx_string*
  store %nyx_string* %2459, %nyx_string** %2460
  %2461 = load i64, i64* %2447
  %2462 = icmp sgt i64 %2461, 0
  br i1 %2462, label %then498, label %else499
then498:
  %2463 = load %nyx_string*, %nyx_string** %2436
  %2464 = load %nyx_string*, %nyx_string** %2450
  %2465 = call %nyx_string* @nyx_string_concat(%nyx_string* %2463, %nyx_string* %2464)
  store %nyx_string* %2465, %nyx_string** %2436
  %2466 = load %nyx_string*, %nyx_string** %2446
  %2467 = load %nyx_string*, %nyx_string** %2450
  %2468 = call %nyx_string* @nyx_string_concat(%nyx_string* %2466, %nyx_string* %2467)
  store %nyx_string* %2468, %nyx_string** %2446
  br label %merge500
else499:
  br label %merge500
merge500:
  %2469 = load %nyx_string*, %nyx_string** %2436
  %2470 = load %nyx_string*, %nyx_string** %2460
  %2471 = call %nyx_string* @nyx_string_concat(%nyx_string* %2469, %nyx_string* %2470)
  store %nyx_string* %2471, %nyx_string** %2436
  %2472 = load %nyx_string*, %nyx_string** %2446
  %2473 = load %nyx_string*, %nyx_string** %2460
  %2474 = call %nyx_string* @tp_name_only(%nyx_string* %2473)
  %2475 = call %nyx_string* @nyx_string_concat(%nyx_string* %2472, %nyx_string* %2474)
  store %nyx_string* %2475, %nyx_string** %2446
  %2476 = load i64, i64* %2447
  %2477 = add i64 %2476, 1
  store i64 %2477, i64* %2447
  br label %while_cond495
while_end497:
  %2478 = load %nyx_string*, %nyx_string** %2436
  %2479 = getelementptr [3 x i8], [3 x i8]* @.str298, i32 0, i32 0
  %2480 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str298.c, i8* %2479)
  %2481 = call %nyx_string* @nyx_string_concat(%nyx_string* %2478, %nyx_string* %2480)
  %2482 = load %nyx_string*, %nyx_string** %2419
  %2483 = call %nyx_string* @nyx_string_concat(%nyx_string* %2481, %nyx_string* %2482)
  %2484 = getelementptr [2 x i8], [2 x i8]* @.str299, i32 0, i32 0
  %2485 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str299.c, i8* %2484)
  %2486 = call %nyx_string* @nyx_string_concat(%nyx_string* %2483, %nyx_string* %2485)
  %2487 = load %nyx_string*, %nyx_string** %2446
  %2488 = call %nyx_string* @nyx_string_concat(%nyx_string* %2486, %nyx_string* %2487)
  %2489 = getelementptr [2 x i8], [2 x i8]* @.str300, i32 0, i32 0
  %2490 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str300.c, i8* %2489)
  %2491 = call %nyx_string* @nyx_string_concat(%nyx_string* %2488, %nyx_string* %2490)
  store %nyx_string* %2491, %nyx_string** %2436
  br label %merge494
else493:
  %2492 = load %nyx_string*, %nyx_string** %2436
  %2493 = getelementptr [2 x i8], [2 x i8]* @.str301, i32 0, i32 0
  %2494 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str301.c, i8* %2493)
  %2495 = call %nyx_string* @nyx_string_concat(%nyx_string* %2492, %nyx_string* %2494)
  %2496 = load %nyx_string*, %nyx_string** %2419
  %2497 = call %nyx_string* @nyx_string_concat(%nyx_string* %2495, %nyx_string* %2496)
  store %nyx_string* %2497, %nyx_string** %2436
  br label %merge494
merge494:
  %2498 = load %nyx_string*, %nyx_string** %2436
  %2499 = getelementptr [3 x i8], [3 x i8]* @.str302, i32 0, i32 0
  %2500 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str302.c, i8* %2499)
  %2501 = call %nyx_string* @nyx_string_concat(%nyx_string* %2498, %nyx_string* %2500)
  %2502 = call i64 @out_line(%nyx_string* %2501)
  %2503 = load i64, i64* @g_indent
  %2504 = add i64 %2503, 1
  store i64 %2504, i64* @g_indent
  %2505 = alloca i64
  store i64 0, i64* %2505
  %2506 = getelementptr [1 x i8], [1 x i8]* @.str303, i32 0, i32 0
  %2507 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str303.c, i8* %2506)
  %2508 = alloca %nyx_string*
  store %nyx_string* %2507, %nyx_string** %2508
  %2509 = call i8* @llvm.stacksave()
  br label %while_cond501
while_cond501:
  %2510 = load i64, i64* %2505
  %2511 = load { i64, i8* }*, { i64, i8* }** %2423
  %2512 = call i64 @nyx_array_length({ i64, i8* }* %2511)
  %2513 = icmp slt i64 %2510, %2512
  br i1 %2513, label %while_body502, label %while_end503
while_body502:
  call void @llvm.stackrestore(i8* %2509)
  %2514 = load { i64, i8* }*, { i64, i8* }** %2423
  %2515 = load i64, i64* %2505
  %2516 = call i64 @nyx_array_get({ i64, i8* }* %2514, i64 %2515)
  %2517 = inttoptr i64 %2516 to { i64, i8* }*
  %2518 = alloca { i64, i8* }*
  store { i64, i8* }* %2517, { i64, i8* }** %2518
  %2519 = load { i64, i8* }*, { i64, i8* }** %2518
  %2520 = load %nyx_string*, %nyx_string** %2508
  %2521 = call i64 @fmt_function({ i64, i8* }* %2519, %nyx_string* %2520)
  %2522 = load i64, i64* %2505
  %2523 = add i64 %2522, 1
  store i64 %2523, i64* %2505
  br label %while_cond501
while_end503:
  %2524 = load i64, i64* @g_indent
  %2525 = sub i64 %2524, 1
  store i64 %2525, i64* @g_indent
  %2526 = getelementptr [2 x i8], [2 x i8]* @.str304, i32 0, i32 0
  %2527 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str304.c, i8* %2526)
  %2528 = call i64 @out_line(%nyx_string* %2527)
  %2529 = call i64 @out_empty()
  ret i64 0
}

define internal i64 @fmt_impl_trait(
{ i64, i8* }* %node.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %2530 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %2531 = call { i64, i8* }* @node_data({ i64, i8* }* %2530)
  %2532 = alloca { i64, i8* }*
  store { i64, i8* }* %2531, { i64, i8* }** %2532
  %2533 = load { i64, i8* }*, { i64, i8* }** %2532
  %2534 = call i64 @nyx_array_get_checked({ i64, i8* }* %2533, i64 0, i64 2)
  %2535 = inttoptr i64 %2534 to %nyx_string*
  %2536 = alloca %nyx_string*
  store %nyx_string* %2535, %nyx_string** %2536
  %2537 = load { i64, i8* }*, { i64, i8* }** %2532
  %2538 = call i64 @nyx_array_get_checked({ i64, i8* }* %2537, i64 1, i64 2)
  %2539 = inttoptr i64 %2538 to %nyx_string*
  %2540 = alloca %nyx_string*
  store %nyx_string* %2539, %nyx_string** %2540
  %2541 = load { i64, i8* }*, { i64, i8* }** %2532
  %2542 = call i64 @nyx_array_get({ i64, i8* }* %2541, i64 2)
  %2543 = inttoptr i64 %2542 to { i64, i8* }*
  %2544 = alloca { i64, i8* }*
  store { i64, i8* }* %2543, { i64, i8* }** %2544
  %2545 = call { i64, i8* }* @nyx_array_new_ptr()
  %2546 = alloca { i64, i8* }*
  store { i64, i8* }* %2545, { i64, i8* }** %2546
  %2547 = load { i64, i8* }*, { i64, i8* }** %2532
  %2548 = call i64 @nyx_array_length({ i64, i8* }* %2547)
  %2549 = icmp sgt i64 %2548, 3
  br i1 %2549, label %then504, label %else505
then504:
  %2550 = load { i64, i8* }*, { i64, i8* }** %2532
  %2551 = call i64 @nyx_array_get({ i64, i8* }* %2550, i64 3)
  %2552 = inttoptr i64 %2551 to { i64, i8* }*
  %2553 = alloca { i64, i8* }*
  store { i64, i8* }* %2552, { i64, i8* }** %2553
  %2554 = load { i64, i8* }*, { i64, i8* }** %2553
  store { i64, i8* }* %2554, { i64, i8* }** %2546
  br label %merge506
else505:
  br label %merge506
merge506:
  %2555 = getelementptr [6 x i8], [6 x i8]* @.str305, i32 0, i32 0
  %2556 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str305.c, i8* %2555)
  %2557 = load %nyx_string*, %nyx_string** %2536
  %2558 = call %nyx_string* @nyx_string_concat(%nyx_string* %2556, %nyx_string* %2557)
  %2559 = getelementptr [6 x i8], [6 x i8]* @.str306, i32 0, i32 0
  %2560 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str306.c, i8* %2559)
  %2561 = call %nyx_string* @nyx_string_concat(%nyx_string* %2558, %nyx_string* %2560)
  %2562 = load %nyx_string*, %nyx_string** %2540
  %2563 = call %nyx_string* @nyx_string_concat(%nyx_string* %2561, %nyx_string* %2562)
  %2564 = getelementptr [3 x i8], [3 x i8]* @.str307, i32 0, i32 0
  %2565 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str307.c, i8* %2564)
  %2566 = call %nyx_string* @nyx_string_concat(%nyx_string* %2563, %nyx_string* %2565)
  %2567 = call i64 @out_line(%nyx_string* %2566)
  %2568 = load i64, i64* @g_indent
  %2569 = add i64 %2568, 1
  store i64 %2569, i64* @g_indent
  %2570 = alloca i64
  store i64 0, i64* %2570
  %2571 = getelementptr [6 x i8], [6 x i8]* @.str308, i32 0, i32 0
  %2572 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str308.c, i8* %2571)
  %2573 = alloca %nyx_string*
  store %nyx_string* %2572, %nyx_string** %2573
  %2574 = getelementptr [4 x i8], [4 x i8]* @.str309, i32 0, i32 0
  %2575 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str309.c, i8* %2574)
  %2576 = alloca %nyx_string*
  store %nyx_string* %2575, %nyx_string** %2576
  %2577 = call i8* @llvm.stacksave()
  br label %while_cond507
while_cond507:
  %2578 = load i64, i64* %2570
  %2579 = load { i64, i8* }*, { i64, i8* }** %2546
  %2580 = call i64 @nyx_array_length({ i64, i8* }* %2579)
  %2581 = icmp slt i64 %2578, %2580
  br i1 %2581, label %while_body508, label %while_end509
while_body508:
  call void @llvm.stackrestore(i8* %2577)
  %2582 = load { i64, i8* }*, { i64, i8* }** %2546
  %2583 = load i64, i64* %2570
  %2584 = call i64 @nyx_array_get({ i64, i8* }* %2582, i64 %2583)
  %2585 = inttoptr i64 %2584 to { i64, i8* }*
  %2586 = alloca { i64, i8* }*
  store { i64, i8* }* %2585, { i64, i8* }** %2586
  %2587 = load { i64, i8* }*, { i64, i8* }** %2586
  %2588 = call i64 @nyx_array_get_checked({ i64, i8* }* %2587, i64 0, i64 2)
  %2589 = inttoptr i64 %2588 to %nyx_string*
  %2590 = alloca %nyx_string*
  store %nyx_string* %2589, %nyx_string** %2590
  %2591 = load { i64, i8* }*, { i64, i8* }** %2586
  %2592 = call i64 @nyx_array_get_checked({ i64, i8* }* %2591, i64 1, i64 2)
  %2593 = inttoptr i64 %2592 to %nyx_string*
  %2594 = alloca %nyx_string*
  store %nyx_string* %2593, %nyx_string** %2594
  %2595 = load %nyx_string*, %nyx_string** %2573
  %2596 = load %nyx_string*, %nyx_string** %2590
  %2597 = call %nyx_string* @nyx_string_concat(%nyx_string* %2595, %nyx_string* %2596)
  %2598 = load %nyx_string*, %nyx_string** %2576
  %2599 = call %nyx_string* @nyx_string_concat(%nyx_string* %2597, %nyx_string* %2598)
  %2600 = load %nyx_string*, %nyx_string** %2594
  %2601 = call %nyx_string* @nyx_string_concat(%nyx_string* %2599, %nyx_string* %2600)
  %2602 = call i64 @out_line(%nyx_string* %2601)
  %2603 = load i64, i64* %2570
  %2604 = add i64 %2603, 1
  store i64 %2604, i64* %2570
  br label %while_cond507
while_end509:
  %2605 = load { i64, i8* }*, { i64, i8* }** %2546
  %2606 = call i64 @nyx_array_length({ i64, i8* }* %2605)
  %2607 = icmp sgt i64 %2606, 0
  br i1 %2607, label %then510, label %else511
then510:
  %2608 = call i64 @out_empty()
  br label %merge512
else511:
  br label %merge512
merge512:
  %2609 = alloca i64
  store i64 0, i64* %2609
  %2610 = getelementptr [1 x i8], [1 x i8]* @.str310, i32 0, i32 0
  %2611 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str310.c, i8* %2610)
  %2612 = alloca %nyx_string*
  store %nyx_string* %2611, %nyx_string** %2612
  %2613 = call i8* @llvm.stacksave()
  br label %while_cond513
while_cond513:
  %2614 = load i64, i64* %2609
  %2615 = load { i64, i8* }*, { i64, i8* }** %2544
  %2616 = call i64 @nyx_array_length({ i64, i8* }* %2615)
  %2617 = icmp slt i64 %2614, %2616
  br i1 %2617, label %while_body514, label %while_end515
while_body514:
  call void @llvm.stackrestore(i8* %2613)
  %2618 = load { i64, i8* }*, { i64, i8* }** %2544
  %2619 = load i64, i64* %2609
  %2620 = call i64 @nyx_array_get({ i64, i8* }* %2618, i64 %2619)
  %2621 = inttoptr i64 %2620 to { i64, i8* }*
  %2622 = alloca { i64, i8* }*
  store { i64, i8* }* %2621, { i64, i8* }** %2622
  %2623 = load { i64, i8* }*, { i64, i8* }** %2622
  %2624 = load %nyx_string*, %nyx_string** %2612
  %2625 = call i64 @fmt_function({ i64, i8* }* %2623, %nyx_string* %2624)
  %2626 = load i64, i64* %2609
  %2627 = add i64 %2626, 1
  store i64 %2627, i64* %2609
  br label %while_cond513
while_end515:
  %2628 = load i64, i64* @g_indent
  %2629 = sub i64 %2628, 1
  store i64 %2629, i64* @g_indent
  %2630 = getelementptr [2 x i8], [2 x i8]* @.str311, i32 0, i32 0
  %2631 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str311.c, i8* %2630)
  %2632 = call i64 @out_line(%nyx_string* %2631)
  %2633 = call i64 @out_empty()
  ret i64 0
}

define internal i64 @fmt_import(
{ i64, i8* }* %node.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %2634 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %2635 = call { i64, i8* }* @node_data({ i64, i8* }* %2634)
  %2636 = alloca { i64, i8* }*
  store { i64, i8* }* %2635, { i64, i8* }** %2636
  %2637 = load { i64, i8* }*, { i64, i8* }** %2636
  %2638 = call i64 @nyx_array_get({ i64, i8* }* %2637, i64 0)
  %2639 = inttoptr i64 %2638 to { i64, i8* }*
  %2640 = alloca { i64, i8* }*
  store { i64, i8* }* %2639, { i64, i8* }** %2640
  %2641 = load { i64, i8* }*, { i64, i8* }** %2636
  %2642 = call i64 @nyx_array_get_checked({ i64, i8* }* %2641, i64 1, i64 2)
  %2643 = inttoptr i64 %2642 to %nyx_string*
  %2644 = alloca %nyx_string*
  store %nyx_string* %2643, %nyx_string** %2644
  %2645 = getelementptr [10 x i8], [10 x i8]* @.str312, i32 0, i32 0
  %2646 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str312.c, i8* %2645)
  %2647 = alloca %nyx_string*
  store %nyx_string* %2646, %nyx_string** %2647
  %2648 = alloca i64
  store i64 0, i64* %2648
  %2649 = getelementptr [3 x i8], [3 x i8]* @.str313, i32 0, i32 0
  %2650 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str313.c, i8* %2649)
  %2651 = alloca %nyx_string*
  store %nyx_string* %2650, %nyx_string** %2651
  %2652 = call i8* @llvm.stacksave()
  br label %while_cond516
while_cond516:
  %2653 = load i64, i64* %2648
  %2654 = load { i64, i8* }*, { i64, i8* }** %2640
  %2655 = call i64 @nyx_array_length({ i64, i8* }* %2654)
  %2656 = icmp slt i64 %2653, %2655
  br i1 %2656, label %while_body517, label %while_end518
while_body517:
  call void @llvm.stackrestore(i8* %2652)
  %2657 = load i64, i64* %2648
  %2658 = icmp sgt i64 %2657, 0
  br i1 %2658, label %then519, label %else520
then519:
  %2659 = load %nyx_string*, %nyx_string** %2647
  %2660 = load %nyx_string*, %nyx_string** %2651
  %2661 = call %nyx_string* @nyx_string_concat(%nyx_string* %2659, %nyx_string* %2660)
  store %nyx_string* %2661, %nyx_string** %2647
  br label %merge521
else520:
  br label %merge521
merge521:
  %2662 = load { i64, i8* }*, { i64, i8* }** %2640
  %2663 = load i64, i64* %2648
  %2664 = call i64 @nyx_array_get_checked({ i64, i8* }* %2662, i64 %2663, i64 2)
  %2665 = inttoptr i64 %2664 to %nyx_string*
  %2666 = alloca %nyx_string*
  store %nyx_string* %2665, %nyx_string** %2666
  %2667 = load %nyx_string*, %nyx_string** %2647
  %2668 = load %nyx_string*, %nyx_string** %2666
  %2669 = call %nyx_string* @nyx_string_concat(%nyx_string* %2667, %nyx_string* %2668)
  store %nyx_string* %2669, %nyx_string** %2647
  %2670 = load i64, i64* %2648
  %2671 = add i64 %2670, 1
  store i64 %2671, i64* %2648
  br label %while_cond516
while_end518:
  %2672 = load %nyx_string*, %nyx_string** %2647
  %2673 = getelementptr [10 x i8], [10 x i8]* @.str314, i32 0, i32 0
  %2674 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str314.c, i8* %2673)
  %2675 = call %nyx_string* @nyx_string_concat(%nyx_string* %2672, %nyx_string* %2674)
  %2676 = load %nyx_string*, %nyx_string** %2644
  %2677 = call %nyx_string* @nyx_string_concat(%nyx_string* %2675, %nyx_string* %2676)
  %2678 = getelementptr [2 x i8], [2 x i8]* @.str315, i32 0, i32 0
  %2679 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str315.c, i8* %2678)
  %2680 = call %nyx_string* @nyx_string_concat(%nyx_string* %2677, %nyx_string* %2679)
  store %nyx_string* %2680, %nyx_string** %2647
  %2681 = load %nyx_string*, %nyx_string** %2647
  %2682 = call i64 @out_line(%nyx_string* %2681)
  ret i64 0
}

define internal i64 @fmt_block_stmts(
{ i64, i8* }* %node.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %2683 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %2684 = call %nyx_string* @node_type({ i64, i8* }* %2683)
  %2685 = getelementptr [6 x i8], [6 x i8]* @.str316, i32 0, i32 0
  %2686 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str316.c, i8* %2685)
  %2687 = call i1 @nyx_string_equals(%nyx_string* %2684, %nyx_string* %2686)
  br i1 %2687, label %then522, label %else523
then522:
  %2688 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %2689 = call { i64, i8* }* @node_data({ i64, i8* }* %2688)
  %2690 = alloca { i64, i8* }*
  store { i64, i8* }* %2689, { i64, i8* }** %2690
  %2691 = load { i64, i8* }*, { i64, i8* }** %2690
  %2692 = call i64 @nyx_array_get({ i64, i8* }* %2691, i64 0)
  %2693 = inttoptr i64 %2692 to { i64, i8* }*
  %2694 = alloca { i64, i8* }*
  store { i64, i8* }* %2693, { i64, i8* }** %2694
  %2695 = alloca i64
  store i64 0, i64* %2695
  %2696 = call i8* @llvm.stacksave()
  br label %while_cond525
while_cond525:
  %2697 = load i64, i64* %2695
  %2698 = load { i64, i8* }*, { i64, i8* }** %2694
  %2699 = call i64 @nyx_array_length({ i64, i8* }* %2698)
  %2700 = icmp slt i64 %2697, %2699
  br i1 %2700, label %while_body526, label %while_end527
while_body526:
  call void @llvm.stackrestore(i8* %2696)
  %2701 = load { i64, i8* }*, { i64, i8* }** %2694
  %2702 = load i64, i64* %2695
  %2703 = call i64 @nyx_array_get({ i64, i8* }* %2701, i64 %2702)
  %2704 = inttoptr i64 %2703 to { i64, i8* }*
  %2705 = alloca { i64, i8* }*
  store { i64, i8* }* %2704, { i64, i8* }** %2705
  %2706 = load { i64, i8* }*, { i64, i8* }** %2705
  %2707 = call i64 @fmt_stmt({ i64, i8* }* %2706)
  %2708 = load i64, i64* %2695
  %2709 = add i64 %2708, 1
  store i64 %2709, i64* %2695
  br label %while_cond525
while_end527:
  br label %merge524
else523:
  %2710 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %2711 = call i64 @fmt_stmt({ i64, i8* }* %2710)
  br label %merge524
merge524:
  ret i64 0
}

define internal %nyx_string* @fmt_block_contents(
{ i64, i8* }* %node.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %2712 = load %nyx_string*, %nyx_string** @g_output
  %2713 = alloca %nyx_string*
  store %nyx_string* %2712, %nyx_string** %2713
  %2714 = getelementptr [1 x i8], [1 x i8]* @.str317, i32 0, i32 0
  %2715 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str317.c, i8* %2714)
  store %nyx_string* %2715, %nyx_string** @g_output
  %2716 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %2717 = call i64 @fmt_block_stmts({ i64, i8* }* %2716)
  %2718 = load %nyx_string*, %nyx_string** @g_output
  %2719 = alloca %nyx_string*
  store %nyx_string* %2718, %nyx_string** %2719
  %2720 = load %nyx_string*, %nyx_string** %2713
  store %nyx_string* %2720, %nyx_string** @g_output
  %2721 = load %nyx_string*, %nyx_string** %2719
  ret %nyx_string* %2721
}

define i64 @main(
i32 %argc, i8** %argv) {
  call void @nyx_set_args(i32 %argc, i8** %argv)
  %2722 = getelementptr [8 x i8], [8 x i8]* @.str318, i32 0, i32 0
  %2723 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str318.c, i8* %2722)
  %2724 = call i8* @nyx_string_to_cstr(%nyx_string* %2723)
  %2725 = call %nyx_string* @nyx_getenv(i8* %2724)
  %2726 = alloca %nyx_string*
  store %nyx_string* %2725, %nyx_string** %2726
  %2727 = load %nyx_string*, %nyx_string** %2726
  %2728 = getelementptr [1 x i8], [1 x i8]* @.str319, i32 0, i32 0
  %2729 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str319.c, i8* %2728)
  %2730 = call i1 @nyx_string_equals(%nyx_string* %2727, %nyx_string* %2729)
  br i1 %2730, label %then528, label %else529
then528:
  %2731 = getelementptr [10 x i8], [10 x i8]* @.str320, i32 0, i32 0
  %2732 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str320.c, i8* %2731)
  store %nyx_string* %2732, %nyx_string** %2726
  br label %merge530
else529:
  br label %merge530
merge530:
  %2733 = load %nyx_string*, %nyx_string** %2726
  %2734 = call i8* @nyx_string_to_cstr(%nyx_string* %2733)
  %2735 = call %nyx_string* @nyx_read_file(i8* %2734)
  %2736 = alloca %nyx_string*
  store %nyx_string* %2735, %nyx_string** %2736
  %2737 = load %nyx_string*, %nyx_string** %2736
  %2738 = call { i64, i8* }* @tokenize(%nyx_string* %2737)
  %2739 = alloca { i64, i8* }*
  store { i64, i8* }* %2738, { i64, i8* }** %2739
  %2740 = load { i64, i8* }*, { i64, i8* }** %2739
  %2741 = load %nyx_string*, %nyx_string** %2736
  %2742 = call { i64, i8* }* @parse({ i64, i8* }* %2740, %nyx_string* %2741)
  %2743 = alloca { i64, i8* }*
  store { i64, i8* }* %2742, { i64, i8* }** %2743
  %2744 = load { i64, i8* }*, { i64, i8* }** %2743
  %2745 = call i64 @nyx_array_get({ i64, i8* }* %2744, i64 1)
  %2746 = inttoptr i64 %2745 to { i64, i8* }*
  %2747 = alloca { i64, i8* }*
  store { i64, i8* }* %2746, { i64, i8* }** %2747
  %2748 = load { i64, i8* }*, { i64, i8* }** %2747
  %2749 = call i64 @nyx_array_get({ i64, i8* }* %2748, i64 0)
  %2750 = inttoptr i64 %2749 to { i64, i8* }*
  %2751 = alloca { i64, i8* }*
  store { i64, i8* }* %2750, { i64, i8* }** %2751
  %2752 = alloca i64
  store i64 0, i64* %2752
  %2753 = call i8* @llvm.stacksave()
  br label %while_cond531
while_cond531:
  %2754 = load i64, i64* %2752
  %2755 = load { i64, i8* }*, { i64, i8* }** %2751
  %2756 = call i64 @nyx_array_length({ i64, i8* }* %2755)
  %2757 = icmp slt i64 %2754, %2756
  br i1 %2757, label %while_body532, label %while_end533
while_body532:
  call void @llvm.stackrestore(i8* %2753)
  %2758 = load { i64, i8* }*, { i64, i8* }** %2751
  %2759 = load i64, i64* %2752
  %2760 = call i64 @nyx_array_get({ i64, i8* }* %2758, i64 %2759)
  %2761 = inttoptr i64 %2760 to { i64, i8* }*
  %2762 = alloca { i64, i8* }*
  store { i64, i8* }* %2761, { i64, i8* }** %2762
  %2763 = load { i64, i8* }*, { i64, i8* }** %2762
  %2764 = call i64 @fmt_stmt({ i64, i8* }* %2763)
  %2765 = load i64, i64* %2752
  %2766 = add i64 %2765, 1
  store i64 %2766, i64* %2752
  br label %while_cond531
while_end533:
  %2767 = load %nyx_string*, %nyx_string** @g_output
  %2768 = call i8* @nyx_string_to_cstr(%nyx_string* %2767)
  call void @nyx_print_string(i8* %2768)
  ret i64 0
}

; Inicialización de variables globales (llamada automática vía ctor)
define void @__nyx_init_globals() {
entry:
  %2769 = getelementptr [1 x i8], [1 x i8]* @.str.init.0, i32 0, i32 0
  %2770 = call %nyx_string* @nyx_string_from_cstr(i8* %2769)
  store %nyx_string* %2770, %nyx_string** @g_output
  ret void
}

@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @__nyx_init_globals, i8* null }]

attributes #0 = { returns_twice }

