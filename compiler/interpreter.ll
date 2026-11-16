source_filename = "script.nx"
target triple = "x86_64-pc-linux-gnu"

%Value = type { %nyx_string*, i64, double, i1, %nyx_string*, { i64, i8* }*, { i64, i8* }*, %nyx_string*, { i64, i8* }*, i8*, { i64, i8* }* }

%Environment = type { i8*, { i64, i8* }* }

@.str0 = private unnamed_addr constant [9 x i8] c"NYX_LANG\00"
@.str0.c = internal global %nyx_string* null
@.str1 = private unnamed_addr constant [3 x i8] c"es\00"
@.str1.c = internal global %nyx_string* null
@.str2 = private unnamed_addr constant [8 x i8] c"error [\00"
@.str2.c = internal global %nyx_string* null
@.str3 = private unnamed_addr constant [4 x i8] c"]: \00"
@.str3.c = internal global %nyx_string* null
@.str4 = private unnamed_addr constant [8 x i8] c"error [\00"
@.str4.c = internal global %nyx_string* null
@.str5 = private unnamed_addr constant [4 x i8] c"]: \00"
@.str5.c = internal global %nyx_string* null
@.str6 = private unnamed_addr constant [4 x i8] c"int\00"
@.str6.c = internal global %nyx_string* null
@.str7 = private unnamed_addr constant [1 x i8] c"\00"
@.str7.c = internal global %nyx_string* null
@.str8 = private unnamed_addr constant [1 x i8] c"\00"
@.str8.c = internal global %nyx_string* null
@.str9 = private unnamed_addr constant [6 x i8] c"float\00"
@.str9.c = internal global %nyx_string* null
@.str10 = private unnamed_addr constant [1 x i8] c"\00"
@.str10.c = internal global %nyx_string* null
@.str11 = private unnamed_addr constant [1 x i8] c"\00"
@.str11.c = internal global %nyx_string* null
@.str12 = private unnamed_addr constant [5 x i8] c"bool\00"
@.str12.c = internal global %nyx_string* null
@.str13 = private unnamed_addr constant [1 x i8] c"\00"
@.str13.c = internal global %nyx_string* null
@.str14 = private unnamed_addr constant [1 x i8] c"\00"
@.str14.c = internal global %nyx_string* null
@.str15 = private unnamed_addr constant [7 x i8] c"string\00"
@.str15.c = internal global %nyx_string* null
@.str16 = private unnamed_addr constant [1 x i8] c"\00"
@.str16.c = internal global %nyx_string* null
@.str17 = private unnamed_addr constant [6 x i8] c"array\00"
@.str17.c = internal global %nyx_string* null
@.str18 = private unnamed_addr constant [1 x i8] c"\00"
@.str18.c = internal global %nyx_string* null
@.str19 = private unnamed_addr constant [1 x i8] c"\00"
@.str19.c = internal global %nyx_string* null
@.str20 = private unnamed_addr constant [9 x i8] c"function\00"
@.str20.c = internal global %nyx_string* null
@.str21 = private unnamed_addr constant [1 x i8] c"\00"
@.str21.c = internal global %nyx_string* null
@.str22 = private unnamed_addr constant [6 x i8] c"error\00"
@.str22.c = internal global %nyx_string* null
@.str23 = private unnamed_addr constant [1 x i8] c"\00"
@.str23.c = internal global %nyx_string* null
@.str24 = private unnamed_addr constant [1 x i8] c"\00"
@.str24.c = internal global %nyx_string* null
@.str25 = private unnamed_addr constant [4 x i8] c"nil\00"
@.str25.c = internal global %nyx_string* null
@.str26 = private unnamed_addr constant [1 x i8] c"\00"
@.str26.c = internal global %nyx_string* null
@.str27 = private unnamed_addr constant [1 x i8] c"\00"
@.str27.c = internal global %nyx_string* null
@.str28 = private unnamed_addr constant [7 x i8] c"return\00"
@.str28.c = internal global %nyx_string* null
@.str29 = private unnamed_addr constant [1 x i8] c"\00"
@.str29.c = internal global %nyx_string* null
@.str30 = private unnamed_addr constant [1 x i8] c"\00"
@.str30.c = internal global %nyx_string* null
@.str31 = private unnamed_addr constant [1 x i8] c"\00"
@.str31.c = internal global %nyx_string* null
@.str32 = private unnamed_addr constant [1 x i8] c"\00"
@.str32.c = internal global %nyx_string* null
@.str33 = private unnamed_addr constant [6 x i8] c"break\00"
@.str33.c = internal global %nyx_string* null
@.str34 = private unnamed_addr constant [9 x i8] c"continue\00"
@.str34.c = internal global %nyx_string* null
@.str35 = private unnamed_addr constant [8 x i8] c"NYX1015\00"
@.str35.c = internal global %nyx_string* null
@.str36 = private unnamed_addr constant [2 x i8] c"'\00"
@.str36.c = internal global %nyx_string* null
@.str37 = private unnamed_addr constant [16 x i8] c"' fuera de loop\00"
@.str37.c = internal global %nyx_string* null
@.str38 = private unnamed_addr constant [2 x i8] c"'\00"
@.str38.c = internal global %nyx_string* null
@.str39 = private unnamed_addr constant [18 x i8] c"' outside of loop\00"
@.str39.c = internal global %nyx_string* null
@.str40 = private unnamed_addr constant [4 x i8] c"int\00"
@.str40.c = internal global %nyx_string* null
@.str41 = private unnamed_addr constant [6 x i8] c"float\00"
@.str41.c = internal global %nyx_string* null
@.str42 = private unnamed_addr constant [4 x i8] c"int\00"
@.str42.c = internal global %nyx_string* null
@.str43 = private unnamed_addr constant [5 x i8] c"bool\00"
@.str43.c = internal global %nyx_string* null
@.str44 = private unnamed_addr constant [4 x i8] c"int\00"
@.str44.c = internal global %nyx_string* null
@.str45 = private unnamed_addr constant [6 x i8] c"float\00"
@.str45.c = internal global %nyx_string* null
@.str46 = private unnamed_addr constant [5 x i8] c"bool\00"
@.str46.c = internal global %nyx_string* null
@.str47 = private unnamed_addr constant [5 x i8] c"true\00"
@.str47.c = internal global %nyx_string* null
@.str48 = private unnamed_addr constant [6 x i8] c"false\00"
@.str48.c = internal global %nyx_string* null
@.str49 = private unnamed_addr constant [7 x i8] c"string\00"
@.str49.c = internal global %nyx_string* null
@.str50 = private unnamed_addr constant [4 x i8] c"nil\00"
@.str50.c = internal global %nyx_string* null
@.str51 = private unnamed_addr constant [4 x i8] c"nil\00"
@.str51.c = internal global %nyx_string* null
@.str52 = private unnamed_addr constant [2 x i8] c"[\00"
@.str52.c = internal global %nyx_string* null
@.str53 = private unnamed_addr constant [2 x i8] c"]\00"
@.str53.c = internal global %nyx_string* null
@.str54 = private unnamed_addr constant [5 x i8] c"bool\00"
@.str54.c = internal global %nyx_string* null
@.str55 = private unnamed_addr constant [4 x i8] c"nil\00"
@.str55.c = internal global %nyx_string* null
@.str56 = private unnamed_addr constant [4 x i8] c"int\00"
@.str56.c = internal global %nyx_string* null
@.str57 = private unnamed_addr constant [4 x i8] c"int\00"
@.str57.c = internal global %nyx_string* null
@.str58 = private unnamed_addr constant [5 x i8] c"bool\00"
@.str58.c = internal global %nyx_string* null
@.str59 = private unnamed_addr constant [7 x i8] c"string\00"
@.str59.c = internal global %nyx_string* null
@.str60 = private unnamed_addr constant [4 x i8] c"int\00"
@.str60.c = internal global %nyx_string* null
@.str61 = private unnamed_addr constant [6 x i8] c"float\00"
@.str61.c = internal global %nyx_string* null
@.str62 = private unnamed_addr constant [5 x i8] c"bool\00"
@.str62.c = internal global %nyx_string* null
@.str63 = private unnamed_addr constant [5 x i8] c"true\00"
@.str63.c = internal global %nyx_string* null
@.str64 = private unnamed_addr constant [6 x i8] c"false\00"
@.str64.c = internal global %nyx_string* null
@.str65 = private unnamed_addr constant [7 x i8] c"string\00"
@.str65.c = internal global %nyx_string* null
@.str66 = private unnamed_addr constant [4 x i8] c"nil\00"
@.str66.c = internal global %nyx_string* null
@.str67 = private unnamed_addr constant [4 x i8] c"nil\00"
@.str67.c = internal global %nyx_string* null
@.str68 = private unnamed_addr constant [2 x i8] c"[\00"
@.str68.c = internal global %nyx_string* null
@.str69 = private unnamed_addr constant [2 x i8] c"]\00"
@.str69.c = internal global %nyx_string* null
@.slotT70 = private unnamed_addr constant [12 x i8] c"Environment\00"
@.slotT71 = private unnamed_addr constant [12 x i8] c"Environment\00"
@.str72 = private unnamed_addr constant [8 x i8] c"NYX3003\00"
@.str72.c = internal global %nyx_string* null
@.str73 = private unnamed_addr constant [23 x i8] c"variable no definida: \00"
@.str73.c = internal global %nyx_string* null
@.str74 = private unnamed_addr constant [21 x i8] c"undefined variable: \00"
@.str74.c = internal global %nyx_string* null
@.slotT75 = private unnamed_addr constant [12 x i8] c"Environment\00"
@.str76 = private unnamed_addr constant [7 x i8] c"number\00"
@.str76.c = internal global %nyx_string* null
@.str77 = private unnamed_addr constant [8 x i8] c"integer\00"
@.str77.c = internal global %nyx_string* null
@.str78 = private unnamed_addr constant [5 x i8] c"bool\00"
@.str78.c = internal global %nyx_string* null
@.str79 = private unnamed_addr constant [7 x i8] c"string\00"
@.str79.c = internal global %nyx_string* null
@.str80 = private unnamed_addr constant [11 x i8] c"identifier\00"
@.str80.c = internal global %nyx_string* null
@.str81 = private unnamed_addr constant [6 x i8] c"binop\00"
@.str81.c = internal global %nyx_string* null
@.str82 = private unnamed_addr constant [5 x i8] c"unop\00"
@.str82.c = internal global %nyx_string* null
@.str83 = private unnamed_addr constant [5 x i8] c"call\00"
@.str83.c = internal global %nyx_string* null
@.str84 = private unnamed_addr constant [6 x i8] c"array\00"
@.str84.c = internal global %nyx_string* null
@.str85 = private unnamed_addr constant [6 x i8] c"index\00"
@.str85.c = internal global %nyx_string* null
@.str86 = private unnamed_addr constant [12 x i8] c"method_call\00"
@.str86.c = internal global %nyx_string* null
@.str87 = private unnamed_addr constant [8 x i8] c"NYX3002\00"
@.str87.c = internal global %nyx_string* null
@.str88 = private unnamed_addr constant [45 x i8] c"expresión no soportada por el intérprete: \00"
@.str88.c = internal global %nyx_string* null
@.str89 = private unnamed_addr constant [46 x i8] c"expression not supported by the interpreter: \00"
@.str89.c = internal global %nyx_string* null
@.str90 = private unnamed_addr constant [2 x i8] c".\00"
@.str90.c = internal global %nyx_string* null
@.str91 = private unnamed_addr constant [20 x i8] c"9223372036854775808\00"
@.str91.c = internal global %nyx_string* null
@.str92 = private unnamed_addr constant [8 x i8] c"NYX2015\00"
@.str92.c = internal global %nyx_string* null
@.str93 = private unnamed_addr constant [19 x i8] c"el literal entero \00"
@.str93.c = internal global %nyx_string* null
@.str94 = private unnamed_addr constant [30 x i8] c" no entra en un int (64 bits)\00"
@.str94.c = internal global %nyx_string* null
@.str95 = private unnamed_addr constant [17 x i8] c"integer literal \00"
@.str95.c = internal global %nyx_string* null
@.str96 = private unnamed_addr constant [34 x i8] c" does not fit in an int (64 bits)\00"
@.str96.c = internal global %nyx_string* null
@.str97 = private unnamed_addr constant [5 x i8] c"true\00"
@.str97.c = internal global %nyx_string* null
@.str98 = private unnamed_addr constant [6 x i8] c"error\00"
@.str98.c = internal global %nyx_string* null
@.str99 = private unnamed_addr constant [6 x i8] c"error\00"
@.str99.c = internal global %nyx_string* null
@.str100 = private unnamed_addr constant [6 x i8] c"float\00"
@.str100.c = internal global %nyx_string* null
@.str101 = private unnamed_addr constant [6 x i8] c"float\00"
@.str101.c = internal global %nyx_string* null
@.str102 = private unnamed_addr constant [5 x i8] c"PLUS\00"
@.str102.c = internal global %nyx_string* null
@.str103 = private unnamed_addr constant [7 x i8] c"string\00"
@.str103.c = internal global %nyx_string* null
@.str104 = private unnamed_addr constant [6 x i8] c"MINUS\00"
@.str104.c = internal global %nyx_string* null
@.str105 = private unnamed_addr constant [5 x i8] c"STAR\00"
@.str105.c = internal global %nyx_string* null
@.str106 = private unnamed_addr constant [6 x i8] c"SLASH\00"
@.str106.c = internal global %nyx_string* null
@.str107 = private unnamed_addr constant [8 x i8] c"NYX3005\00"
@.str107.c = internal global %nyx_string* null
@.str108 = private unnamed_addr constant [19 x i8] c"división por cero\00"
@.str108.c = internal global %nyx_string* null
@.str109 = private unnamed_addr constant [17 x i8] c"division by zero\00"
@.str109.c = internal global %nyx_string* null
@.str110 = private unnamed_addr constant [8 x i8] c"PERCENT\00"
@.str110.c = internal global %nyx_string* null
@.str111 = private unnamed_addr constant [8 x i8] c"NYX3005\00"
@.str111.c = internal global %nyx_string* null
@.str112 = private unnamed_addr constant [17 x i8] c"módulo por cero\00"
@.str112.c = internal global %nyx_string* null
@.str113 = private unnamed_addr constant [15 x i8] c"modulo by zero\00"
@.str113.c = internal global %nyx_string* null
@.str114 = private unnamed_addr constant [12 x i8] c"EQUAL_EQUAL\00"
@.str114.c = internal global %nyx_string* null
@.str115 = private unnamed_addr constant [10 x i8] c"NOT_EQUAL\00"
@.str115.c = internal global %nyx_string* null
@.str116 = private unnamed_addr constant [5 x i8] c"LESS\00"
@.str116.c = internal global %nyx_string* null
@.str117 = private unnamed_addr constant [8 x i8] c"GREATER\00"
@.str117.c = internal global %nyx_string* null
@.str118 = private unnamed_addr constant [11 x i8] c"LESS_EQUAL\00"
@.str118.c = internal global %nyx_string* null
@.str119 = private unnamed_addr constant [14 x i8] c"GREATER_EQUAL\00"
@.str119.c = internal global %nyx_string* null
@.str120 = private unnamed_addr constant [8 x i8] c"AND_AND\00"
@.str120.c = internal global %nyx_string* null
@.str121 = private unnamed_addr constant [4 x i8] c"AND\00"
@.str121.c = internal global %nyx_string* null
@.str122 = private unnamed_addr constant [6 x i8] c"OR_OR\00"
@.str122.c = internal global %nyx_string* null
@.str123 = private unnamed_addr constant [3 x i8] c"OR\00"
@.str123.c = internal global %nyx_string* null
@.str124 = private unnamed_addr constant [8 x i8] c"NYX3002\00"
@.str124.c = internal global %nyx_string* null
@.str125 = private unnamed_addr constant [24 x i8] c"operador no soportado: \00"
@.str125.c = internal global %nyx_string* null
@.str126 = private unnamed_addr constant [25 x i8] c"operator not supported: \00"
@.str126.c = internal global %nyx_string* null
@.str127 = private unnamed_addr constant [6 x i8] c"error\00"
@.str127.c = internal global %nyx_string* null
@.str128 = private unnamed_addr constant [6 x i8] c"MINUS\00"
@.str128.c = internal global %nyx_string* null
@.str129 = private unnamed_addr constant [4 x i8] c"NOT\00"
@.str129.c = internal global %nyx_string* null
@.str130 = private unnamed_addr constant [8 x i8] c"NYX3002\00"
@.str130.c = internal global %nyx_string* null
@.str131 = private unnamed_addr constant [31 x i8] c"operador unario no soportado: \00"
@.str131.c = internal global %nyx_string* null
@.str132 = private unnamed_addr constant [31 x i8] c"unary operator not supported: \00"
@.str132.c = internal global %nyx_string* null
@.str133 = private unnamed_addr constant [6 x i8] c"error\00"
@.str133.c = internal global %nyx_string* null
@.str134 = private unnamed_addr constant [6 x i8] c"error\00"
@.str134.c = internal global %nyx_string* null
@.str135 = private unnamed_addr constant [6 x i8] c"error\00"
@.str135.c = internal global %nyx_string* null
@.str136 = private unnamed_addr constant [6 x i8] c"array\00"
@.str136.c = internal global %nyx_string* null
@.str137 = private unnamed_addr constant [8 x i8] c"NYX3002\00"
@.str137.c = internal global %nyx_string* null
@.str138 = private unnamed_addr constant [56 x i8] c"indexado no soportado por el intérprete sobre el tipo \00"
@.str138.c = internal global %nyx_string* null
@.str139 = private unnamed_addr constant [51 x i8] c"indexing not supported by the interpreter on type \00"
@.str139.c = internal global %nyx_string* null
@.slotT140 = private unnamed_addr constant [6 x i8] c"Value\00"
@.str141 = private unnamed_addr constant [8 x i8] c"NYX3005\00"
@.str141.c = internal global %nyx_string* null
@.str142 = private unnamed_addr constant [23 x i8] c"índice fuera de rango\00"
@.str142.c = internal global %nyx_string* null
@.str143 = private unnamed_addr constant [19 x i8] c"index out of range\00"
@.str143.c = internal global %nyx_string* null
@.str144 = private unnamed_addr constant [4 x i8] c"let\00"
@.str144.c = internal global %nyx_string* null
@.str145 = private unnamed_addr constant [4 x i8] c"var\00"
@.str145.c = internal global %nyx_string* null
@.str146 = private unnamed_addr constant [7 x i8] c"assign\00"
@.str146.c = internal global %nyx_string* null
@.str147 = private unnamed_addr constant [3 x i8] c"if\00"
@.str147.c = internal global %nyx_string* null
@.str148 = private unnamed_addr constant [6 x i8] c"while\00"
@.str148.c = internal global %nyx_string* null
@.str149 = private unnamed_addr constant [4 x i8] c"for\00"
@.str149.c = internal global %nyx_string* null
@.str150 = private unnamed_addr constant [7 x i8] c"return\00"
@.str150.c = internal global %nyx_string* null
@.str151 = private unnamed_addr constant [6 x i8] c"block\00"
@.str151.c = internal global %nyx_string* null
@.str152 = private unnamed_addr constant [9 x i8] c"function\00"
@.str152.c = internal global %nyx_string* null
@.str153 = private unnamed_addr constant [13 x i8] c"index_assign\00"
@.str153.c = internal global %nyx_string* null
@.str154 = private unnamed_addr constant [13 x i8] c"field_assign\00"
@.str154.c = internal global %nyx_string* null
@.str155 = private unnamed_addr constant [6 x i8] c"break\00"
@.str155.c = internal global %nyx_string* null
@.str156 = private unnamed_addr constant [6 x i8] c"break\00"
@.str156.c = internal global %nyx_string* null
@.str157 = private unnamed_addr constant [9 x i8] c"continue\00"
@.str157.c = internal global %nyx_string* null
@.str158 = private unnamed_addr constant [9 x i8] c"continue\00"
@.str158.c = internal global %nyx_string* null
@.str159 = private unnamed_addr constant [6 x i8] c"error\00"
@.str159.c = internal global %nyx_string* null
@.str160 = private unnamed_addr constant [6 x i8] c"error\00"
@.str160.c = internal global %nyx_string* null
@.str161 = private unnamed_addr constant [8 x i8] c"NYX3003\00"
@.str161.c = internal global %nyx_string* null
@.str162 = private unnamed_addr constant [23 x i8] c"variable no definida: \00"
@.str162.c = internal global %nyx_string* null
@.str163 = private unnamed_addr constant [21 x i8] c"undefined variable: \00"
@.str163.c = internal global %nyx_string* null
@.str164 = private unnamed_addr constant [6 x i8] c"error\00"
@.str164.c = internal global %nyx_string* null
@.str165 = private unnamed_addr constant [6 x i8] c"error\00"
@.str165.c = internal global %nyx_string* null
@.str166 = private unnamed_addr constant [6 x i8] c"error\00"
@.str166.c = internal global %nyx_string* null
@.str167 = private unnamed_addr constant [6 x i8] c"array\00"
@.str167.c = internal global %nyx_string* null
@.str168 = private unnamed_addr constant [8 x i8] c"NYX3005\00"
@.str168.c = internal global %nyx_string* null
@.str169 = private unnamed_addr constant [38 x i8] c"índice fuera de rango en asignación\00"
@.str169.c = internal global %nyx_string* null
@.str170 = private unnamed_addr constant [33 x i8] c"index out of range in assignment\00"
@.str170.c = internal global %nyx_string* null
@.str171 = private unnamed_addr constant [8 x i8] c"NYX3005\00"
@.str171.c = internal global %nyx_string* null
@.str172 = private unnamed_addr constant [38 x i8] c"index_assign sobre un tipo no-array: \00"
@.str172.c = internal global %nyx_string* null
@.str173 = private unnamed_addr constant [35 x i8] c"index_assign on a non-array type: \00"
@.str173.c = internal global %nyx_string* null
@.str174 = private unnamed_addr constant [8 x i8] c"NYX3002\00"
@.str174.c = internal global %nyx_string* null
@.str175 = private unnamed_addr constant [45 x i8] c"field_assign no soportado por el intérprete\00"
@.str175.c = internal global %nyx_string* null
@.str176 = private unnamed_addr constant [46 x i8] c"field_assign not supported by the interpreter\00"
@.str176.c = internal global %nyx_string* null
@.str177 = private unnamed_addr constant [6 x i8] c"error\00"
@.str177.c = internal global %nyx_string* null
@.str178 = private unnamed_addr constant [6 x i8] c"empty\00"
@.str178.c = internal global %nyx_string* null
@.str179 = private unnamed_addr constant [6 x i8] c"error\00"
@.str179.c = internal global %nyx_string* null
@.str180 = private unnamed_addr constant [7 x i8] c"return\00"
@.str180.c = internal global %nyx_string* null
@.str181 = private unnamed_addr constant [6 x i8] c"break\00"
@.str181.c = internal global %nyx_string* null
@.str182 = private unnamed_addr constant [6 x i8] c"range\00"
@.str182.c = internal global %nyx_string* null
@.str183 = private unnamed_addr constant [6 x i8] c"error\00"
@.str183.c = internal global %nyx_string* null
@.str184 = private unnamed_addr constant [6 x i8] c"error\00"
@.str184.c = internal global %nyx_string* null
@.str185 = private unnamed_addr constant [4 x i8] c"int\00"
@.str185.c = internal global %nyx_string* null
@.str186 = private unnamed_addr constant [4 x i8] c"int\00"
@.str186.c = internal global %nyx_string* null
@.str187 = private unnamed_addr constant [8 x i8] c"NYX3002\00"
@.str187.c = internal global %nyx_string* null
@.str188 = private unnamed_addr constant [28 x i8] c"rango con extremos de tipo \00"
@.str188.c = internal global %nyx_string* null
@.str189 = private unnamed_addr constant [3 x i8] c"..\00"
@.str189.c = internal global %nyx_string* null
@.str190 = private unnamed_addr constant [44 x i8] c": el intérprete solo recorre rangos de int\00"
@.str190.c = internal global %nyx_string* null
@.str191 = private unnamed_addr constant [27 x i8] c"range with bounds of type \00"
@.str191.c = internal global %nyx_string* null
@.str192 = private unnamed_addr constant [3 x i8] c"..\00"
@.str192.c = internal global %nyx_string* null
@.str193 = private unnamed_addr constant [43 x i8] c": the interpreter only iterates int ranges\00"
@.str193.c = internal global %nyx_string* null
@.str194 = private unnamed_addr constant [6 x i8] c"error\00"
@.str194.c = internal global %nyx_string* null
@.str195 = private unnamed_addr constant [7 x i8] c"return\00"
@.str195.c = internal global %nyx_string* null
@.str196 = private unnamed_addr constant [6 x i8] c"break\00"
@.str196.c = internal global %nyx_string* null
@.str197 = private unnamed_addr constant [5 x i8] c"true\00"
@.str197.c = internal global %nyx_string* null
@.str198 = private unnamed_addr constant [6 x i8] c"error\00"
@.str198.c = internal global %nyx_string* null
@.str199 = private unnamed_addr constant [6 x i8] c"array\00"
@.str199.c = internal global %nyx_string* null
@.str200 = private unnamed_addr constant [8 x i8] c"NYX3002\00"
@.str200.c = internal global %nyx_string* null
@.str201 = private unnamed_addr constant [26 x i8] c"for … in sobre el tipo \00"
@.str201.c = internal global %nyx_string* null
@.str202 = private unnamed_addr constant [62 x i8] c" no está soportado por el intérprete (solo rangos y arrays)\00"
@.str202.c = internal global %nyx_string* null
@.str203 = private unnamed_addr constant [22 x i8] c"for … in over type \00"
@.str203.c = internal global %nyx_string* null
@.str204 = private unnamed_addr constant [62 x i8] c" is not supported by the interpreter (only ranges and arrays)\00"
@.str204.c = internal global %nyx_string* null
@.str205 = private unnamed_addr constant [6 x i8] c"error\00"
@.str205.c = internal global %nyx_string* null
@.str206 = private unnamed_addr constant [7 x i8] c"return\00"
@.str206.c = internal global %nyx_string* null
@.str207 = private unnamed_addr constant [6 x i8] c"break\00"
@.str207.c = internal global %nyx_string* null
@.slotT208 = private unnamed_addr constant [6 x i8] c"Value\00"
@.str209 = private unnamed_addr constant [7 x i8] c"return\00"
@.str209.c = internal global %nyx_string* null
@.str210 = private unnamed_addr constant [6 x i8] c"error\00"
@.str210.c = internal global %nyx_string* null
@.str211 = private unnamed_addr constant [9 x i8] c"function\00"
@.str211.c = internal global %nyx_string* null
@.str212 = private unnamed_addr constant [1 x i8] c"\00"
@.str212.c = internal global %nyx_string* null
@.slotT213 = private unnamed_addr constant [6 x i8] c"Value\00"
@.str214 = private unnamed_addr constant [6 x i8] c"error\00"
@.str214.c = internal global %nyx_string* null
@.str215 = private unnamed_addr constant [7 x i8] c"string\00"
@.str215.c = internal global %nyx_string* null
@.str216 = private unnamed_addr constant [7 x i8] c"length\00"
@.str216.c = internal global %nyx_string* null
@.str217 = private unnamed_addr constant [12 x i8] c"char_length\00"
@.str217.c = internal global %nyx_string* null
@.str218 = private unnamed_addr constant [12 x i8] c"byte_length\00"
@.str218.c = internal global %nyx_string* null
@.str219 = private unnamed_addr constant [8 x i8] c"toUpper\00"
@.str219.c = internal global %nyx_string* null
@.str220 = private unnamed_addr constant [8 x i8] c"toLower\00"
@.str220.c = internal global %nyx_string* null
@.str221 = private unnamed_addr constant [5 x i8] c"trim\00"
@.str221.c = internal global %nyx_string* null
@.str222 = private unnamed_addr constant [8 x i8] c"indexOf\00"
@.str222.c = internal global %nyx_string* null
@.str223 = private unnamed_addr constant [6 x i8] c"error\00"
@.str223.c = internal global %nyx_string* null
@.str224 = private unnamed_addr constant [10 x i8] c"substring\00"
@.str224.c = internal global %nyx_string* null
@.str225 = private unnamed_addr constant [6 x i8] c"error\00"
@.str225.c = internal global %nyx_string* null
@.str226 = private unnamed_addr constant [6 x i8] c"error\00"
@.str226.c = internal global %nyx_string* null
@.str227 = private unnamed_addr constant [7 x i8] c"charAt\00"
@.str227.c = internal global %nyx_string* null
@.str228 = private unnamed_addr constant [6 x i8] c"error\00"
@.str228.c = internal global %nyx_string* null
@.str229 = private unnamed_addr constant [11 x i8] c"startsWith\00"
@.str229.c = internal global %nyx_string* null
@.str230 = private unnamed_addr constant [6 x i8] c"error\00"
@.str230.c = internal global %nyx_string* null
@.str231 = private unnamed_addr constant [9 x i8] c"endsWith\00"
@.str231.c = internal global %nyx_string* null
@.str232 = private unnamed_addr constant [6 x i8] c"error\00"
@.str232.c = internal global %nyx_string* null
@.str233 = private unnamed_addr constant [8 x i8] c"replace\00"
@.str233.c = internal global %nyx_string* null
@.str234 = private unnamed_addr constant [6 x i8] c"error\00"
@.str234.c = internal global %nyx_string* null
@.str235 = private unnamed_addr constant [6 x i8] c"error\00"
@.str235.c = internal global %nyx_string* null
@.str236 = private unnamed_addr constant [6 x i8] c"array\00"
@.str236.c = internal global %nyx_string* null
@.str237 = private unnamed_addr constant [7 x i8] c"length\00"
@.str237.c = internal global %nyx_string* null
@.str238 = private unnamed_addr constant [5 x i8] c"push\00"
@.str238.c = internal global %nyx_string* null
@.str239 = private unnamed_addr constant [6 x i8] c"error\00"
@.str239.c = internal global %nyx_string* null
@.str240 = private unnamed_addr constant [4 x i8] c"pop\00"
@.str240.c = internal global %nyx_string* null
@.str241 = private unnamed_addr constant [8 x i8] c"NYX3001\00"
@.str241.c = internal global %nyx_string* null
@.str242 = private unnamed_addr constant [39 x i8] c"el intérprete no soporta el método '\00"
@.str242.c = internal global %nyx_string* null
@.str243 = private unnamed_addr constant [17 x i8] c"' sobre el tipo \00"
@.str243.c = internal global %nyx_string* null
@.str244 = private unnamed_addr constant [42 x i8] c"the interpreter does not support method '\00"
@.str244.c = internal global %nyx_string* null
@.str245 = private unnamed_addr constant [11 x i8] c"' on type \00"
@.str245.c = internal global %nyx_string* null
@.str246 = private unnamed_addr constant [9 x i8] c"NYX_LANG\00"
@.str246.c = internal global %nyx_string* null
@.str247 = private unnamed_addr constant [3 x i8] c"es\00"
@.str247.c = internal global %nyx_string* null
@.str248 = private unnamed_addr constant [85 x i8] c"  el intérprete cubre un SUBCONJUNTO del lenguaje (ver cabecera de interpreter.nx);\00"
@.str248.c = internal global %nyx_string* null
@.str249 = private unnamed_addr constant [85 x i8] c"  el binario compilado (nyx build / make run) sí lo soporta si el lenguaje lo tiene\00"
@.str249.c = internal global %nyx_string* null
@.str250 = private unnamed_addr constant [79 x i8] c"  the interpreter covers a SUBSET of the language (see interpreter.nx header);\00"
@.str250.c = internal global %nyx_string* null
@.str251 = private unnamed_addr constant [84 x i8] c"  the compiled binary (nyx build / make run) does support it if the language has it\00"
@.str251.c = internal global %nyx_string* null
@.str252 = private unnamed_addr constant [6 x i8] c"print\00"
@.str252.c = internal global %nyx_string* null
@.str253 = private unnamed_addr constant [10 x i8] c"read_file\00"
@.str253.c = internal global %nyx_string* null
@.str254 = private unnamed_addr constant [14 x i8] c"include_bytes\00"
@.str254.c = internal global %nyx_string* null
@.str255 = private unnamed_addr constant [8 x i8] c"NYX3007\00"
@.str255.c = internal global %nyx_string* null
@.str256 = private unnamed_addr constant [122 x i8] c"'include_bytes' solo existe al compilar: el archivo se lee y se embebe al generar el binario. Usa 'nyx build' o 'nyx run'\00"
@.str256.c = internal global %nyx_string* null
@.str257 = private unnamed_addr constant [134 x i8] c"'include_bytes' only exists at compile time: the file is read and embedded when the binary is generated. Use 'nyx build' or 'nyx run'\00"
@.str257.c = internal global %nyx_string* null
@.str258 = private unnamed_addr constant [10 x i8] c"read_line\00"
@.str258.c = internal global %nyx_string* null
@.str259 = private unnamed_addr constant [17 x i8] c"print_no_newline\00"
@.str259.c = internal global %nyx_string* null
@.str260 = private unnamed_addr constant [8 x i8] c"NYX3003\00"
@.str260.c = internal global %nyx_string* null
@.str261 = private unnamed_addr constant [23 x i8] c"variable no definida: \00"
@.str261.c = internal global %nyx_string* null
@.str262 = private unnamed_addr constant [21 x i8] c"undefined variable: \00"
@.str262.c = internal global %nyx_string* null
@.str263 = private unnamed_addr constant [9 x i8] c"function\00"
@.str263.c = internal global %nyx_string* null
@.str264 = private unnamed_addr constant [8 x i8] c"NYX3004\00"
@.str264.c = internal global %nyx_string* null
@.str265 = private unnamed_addr constant [2 x i8] c"'\00"
@.str265.c = internal global %nyx_string* null
@.str266 = private unnamed_addr constant [21 x i8] c"' no es una función\00"
@.str266.c = internal global %nyx_string* null
@.str267 = private unnamed_addr constant [2 x i8] c"'\00"
@.str267.c = internal global %nyx_string* null
@.str268 = private unnamed_addr constant [20 x i8] c"' is not a function\00"
@.str268.c = internal global %nyx_string* null
@.str269 = private unnamed_addr constant [8 x i8] c"NYX3006\00"
@.str269.c = internal global %nyx_string* null
@.str270 = private unnamed_addr constant [2 x i8] c"'\00"
@.str270.c = internal global %nyx_string* null
@.str271 = private unnamed_addr constant [10 x i8] c"' espera \00"
@.str271.c = internal global %nyx_string* null
@.str272 = private unnamed_addr constant [25 x i8] c" argumento(s), recibió \00"
@.str272.c = internal global %nyx_string* null
@.str273 = private unnamed_addr constant [2 x i8] c"'\00"
@.str273.c = internal global %nyx_string* null
@.str274 = private unnamed_addr constant [11 x i8] c"' expects \00"
@.str274.c = internal global %nyx_string* null
@.str275 = private unnamed_addr constant [19 x i8] c" argument(s), got \00"
@.str275.c = internal global %nyx_string* null
@.str276 = private unnamed_addr constant [6 x i8] c"error\00"
@.str276.c = internal global %nyx_string* null
@.str277 = private unnamed_addr constant [7 x i8] c"return\00"
@.str277.c = internal global %nyx_string* null
@.str278 = private unnamed_addr constant [6 x i8] c"error\00"
@.str278.c = internal global %nyx_string* null
@.str279 = private unnamed_addr constant [6 x i8] c"error\00"
@.str279.c = internal global %nyx_string* null
@.str280 = private unnamed_addr constant [1 x i8] c"\00"
@.str280.c = internal global %nyx_string* null
@.str281 = private unnamed_addr constant [6 x i8] c"error\00"
@.str281.c = internal global %nyx_string* null
@.str282 = private unnamed_addr constant [1 x i8] c"\00"
@.str282.c = internal global %nyx_string* null
@.str283 = private unnamed_addr constant [1 x i8] c"\00"
@.str283.c = internal global %nyx_string* null
@.str284 = private unnamed_addr constant [4 x i8] c"nil\00"
@.str284.c = internal global %nyx_string* null
@.str285 = private unnamed_addr constant [7 x i8] c"return\00"
@.str285.c = internal global %nyx_string* null
@.str286 = private unnamed_addr constant [4 x i8] c"=> \00"
@.str286.c = internal global %nyx_string* null
@.str287 = private unnamed_addr constant [6 x i8] c"block\00"
@.str287.c = internal global %nyx_string* null
@.str288 = private unnamed_addr constant [6 x i8] c"error\00"
@.str288.c = internal global %nyx_string* null
@.str289 = private unnamed_addr constant [5 x i8] c"main\00"
@.str289.c = internal global %nyx_string* null
@.str290 = private unnamed_addr constant [5 x i8] c"main\00"
@.str290.c = internal global %nyx_string* null
@.str291 = private unnamed_addr constant [9 x i8] c"function\00"
@.str291.c = internal global %nyx_string* null
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

@g_interp_error_count = global { i64, i8* }* null


define i64 @interp_error_count(
) {
  %t1 = load { i64, i8* }*, { i64, i8* }** @g_interp_error_count
  %t2 = call i64 @nyx_array_get({ i64, i8* }* %t1, i64 0)
  ret i64 %t2
}

define internal i64 @interp_err(
%nyx_string* %code.param, %nyx_string* %msg_es.param, %nyx_string* %msg_en.param) {
  %code.ptr = alloca %nyx_string*
  %msg_es.ptr = alloca %nyx_string*
  %msg_en.ptr = alloca %nyx_string*
  %t11 = alloca %nyx_string*
  store %nyx_string* %code.param, %nyx_string** %code.ptr
  store %nyx_string* %msg_es.param, %nyx_string** %msg_es.ptr
  store %nyx_string* %msg_en.param, %nyx_string** %msg_en.ptr
  %t3 = load { i64, i8* }*, { i64, i8* }** @g_interp_error_count
  %t4 = load { i64, i8* }*, { i64, i8* }** @g_interp_error_count
  %t5 = call i64 @nyx_array_get({ i64, i8* }* %t4, i64 0)
  %t6 = add i64 %t5, 1
  call void @nyx_array_set({ i64, i8* }* %t3, i64 0, i64 %t6)
  %t7 = getelementptr [9 x i8], [9 x i8]* @.str0, i32 0, i32 0
  %t8 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str0.c, i8* %t7, i64 8)
  %t9 = call i8* @nyx_string_to_cstr(%nyx_string* %t8)
  %t10 = call %nyx_string* @nyx_getenv(i8* %t9)
  store %nyx_string* %t10, %nyx_string** %t11
  %t12 = load %nyx_string*, %nyx_string** %t11
  %t13 = getelementptr [3 x i8], [3 x i8]* @.str1, i32 0, i32 0
  %t14 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1.c, i8* %t13, i64 2)
  %t15 = call i1 @nyx_string_equals(%nyx_string* %t12, %nyx_string* %t14)
  br i1 %t15, label %then0, label %else1
then0:
  %t16 = getelementptr [8 x i8], [8 x i8]* @.str2, i32 0, i32 0
  %t17 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str2.c, i8* %t16, i64 7)
  %t18 = load %nyx_string*, %nyx_string** %code.ptr
  %t19 = call %nyx_string* @nyx_string_concat(%nyx_string* %t17, %nyx_string* %t18)
  %t20 = getelementptr [4 x i8], [4 x i8]* @.str3, i32 0, i32 0
  %t21 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str3.c, i8* %t20, i64 3)
  %t22 = call %nyx_string* @nyx_string_concat(%nyx_string* %t19, %nyx_string* %t21)
  %t23 = load %nyx_string*, %nyx_string** %msg_es.ptr
  %t24 = call %nyx_string* @nyx_string_concat(%nyx_string* %t22, %nyx_string* %t23)
  %t25 = call i8* @nyx_string_to_cstr(%nyx_string* %t24)
  call void @nyx_print_string(i8* %t25)
  br label %merge2
else1:
  %t26 = getelementptr [8 x i8], [8 x i8]* @.str4, i32 0, i32 0
  %t27 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str4.c, i8* %t26, i64 7)
  %t28 = load %nyx_string*, %nyx_string** %code.ptr
  %t29 = call %nyx_string* @nyx_string_concat(%nyx_string* %t27, %nyx_string* %t28)
  %t30 = getelementptr [4 x i8], [4 x i8]* @.str5, i32 0, i32 0
  %t31 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str5.c, i8* %t30, i64 3)
  %t32 = call %nyx_string* @nyx_string_concat(%nyx_string* %t29, %nyx_string* %t31)
  %t33 = load %nyx_string*, %nyx_string** %msg_en.ptr
  %t34 = call %nyx_string* @nyx_string_concat(%nyx_string* %t32, %nyx_string* %t33)
  %t35 = call i8* @nyx_string_to_cstr(%nyx_string* %t34)
  call void @nyx_print_string(i8* %t35)
  br label %merge2
merge2:
  ret i64 0
}

define internal { i64, i8* }* @make_astnode(
%nyx_string* %node_type.param, { i64, i8* }* %data.param) {
  %node_type.ptr = alloca %nyx_string*
  %data.ptr = alloca { i64, i8* }*
  %t37 = alloca { i64, i8* }*
  store %nyx_string* %node_type.param, %nyx_string** %node_type.ptr
  store { i64, i8* }* %data.param, { i64, i8* }** %data.ptr
  %t36 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t36, { i64, i8* }** %t37
  %t38 = load { i64, i8* }*, { i64, i8* }** %t37
  %t39 = load %nyx_string*, %nyx_string** %node_type.ptr
  %t40 = ptrtoint %nyx_string* %t39 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t38, i64 %t40, i64 2)
  %t41 = load { i64, i8* }*, { i64, i8* }** %t37
  %t42 = load { i64, i8* }*, { i64, i8* }** %data.ptr
  %t43 = ptrtoint { i64, i8* }* %t42 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t41, i64 %t43, i64 5)
  %t44 = load { i64, i8* }*, { i64, i8* }** %t37
  ret { i64, i8* }* %t44
}

define internal %nyx_string* @astnode_get_type(
{ i64, i8* }* %node.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %t45 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %t46 = call i64 @nyx_array_get({ i64, i8* }* %t45, i64 0)
  %t47 = inttoptr i64 %t46 to %nyx_string*
  ret %nyx_string* %t47
}

define internal { i64, i8* }* @astnode_get_data(
{ i64, i8* }* %node.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %t48 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %t49 = call i64 @nyx_array_get({ i64, i8* }* %t48, i64 1)
  %t50 = inttoptr i64 %t49 to { i64, i8* }*
  ret { i64, i8* }* %t50
}

define internal %Value @make_int(
i64 %n.param) {
  %n.ptr = alloca i64
  %t52 = alloca i8*
  %t54 = alloca { i64, i8* }*
  store i64 %n.param, i64* %n.ptr
  %t51 = call i8* @nyx_map_new(i32 0)
  store i8* %t51, i8** %t52
  %t53 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t53, { i64, i8* }** %t54
  %t55 = getelementptr %Value, %Value* null, i32 1
  %t56 = ptrtoint %Value* %t55 to i64
  %t57 = call i8* @GC_malloc(i64 %t56)
  %t58 = bitcast i8* %t57 to %Value*
  %t59 = getelementptr [4 x i8], [4 x i8]* @.str6, i32 0, i32 0
  %t60 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str6.c, i8* %t59, i64 3)
  %t61 = getelementptr %Value, %Value* %t58, i32 0, i32 0
  store %nyx_string* %t60, %nyx_string** %t61
  %t62 = load i64, i64* %n.ptr
  %t63 = getelementptr %Value, %Value* %t58, i32 0, i32 1
  store i64 %t62, i64* %t63
  %t64 = getelementptr %Value, %Value* %t58, i32 0, i32 2
  store double 0.0, double* %t64
  %t65 = getelementptr %Value, %Value* %t58, i32 0, i32 3
  store i1 0, i1* %t65
  %t66 = getelementptr [1 x i8], [1 x i8]* @.str7, i32 0, i32 0
  %t67 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str7.c, i8* %t66, i64 0)
  %t68 = getelementptr %Value, %Value* %t58, i32 0, i32 4
  store %nyx_string* %t67, %nyx_string** %t68
  %t69 = load { i64, i8* }*, { i64, i8* }** %t54
  %t70 = getelementptr %Value, %Value* %t58, i32 0, i32 5
  store { i64, i8* }* %t69, { i64, i8* }** %t70
  %t71 = load { i64, i8* }*, { i64, i8* }** %t54
  %t72 = getelementptr %Value, %Value* %t58, i32 0, i32 6
  store { i64, i8* }* %t71, { i64, i8* }** %t72
  %t73 = getelementptr [1 x i8], [1 x i8]* @.str8, i32 0, i32 0
  %t74 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str8.c, i8* %t73, i64 0)
  %t75 = getelementptr %Value, %Value* %t58, i32 0, i32 7
  store %nyx_string* %t74, %nyx_string** %t75
  %t76 = load { i64, i8* }*, { i64, i8* }** %t54
  %t77 = getelementptr %Value, %Value* %t58, i32 0, i32 8
  store { i64, i8* }* %t76, { i64, i8* }** %t77
  %t78 = load i8*, i8** %t52
  %t79 = getelementptr %Value, %Value* %t58, i32 0, i32 9
  store i8* %t78, i8** %t79
  %t80 = load { i64, i8* }*, { i64, i8* }** %t54
  %t81 = getelementptr %Value, %Value* %t58, i32 0, i32 10
  store { i64, i8* }* %t80, { i64, i8* }** %t81
  %t82 = load %Value, %Value* %t58
  ret %Value %t82
}

define internal %Value @make_float(
double %f.param) {
  %f.ptr = alloca double
  %t84 = alloca i8*
  %t86 = alloca { i64, i8* }*
  store double %f.param, double* %f.ptr
  %t83 = call i8* @nyx_map_new(i32 0)
  store i8* %t83, i8** %t84
  %t85 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t85, { i64, i8* }** %t86
  %t87 = getelementptr %Value, %Value* null, i32 1
  %t88 = ptrtoint %Value* %t87 to i64
  %t89 = call i8* @GC_malloc(i64 %t88)
  %t90 = bitcast i8* %t89 to %Value*
  %t91 = getelementptr [6 x i8], [6 x i8]* @.str9, i32 0, i32 0
  %t92 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str9.c, i8* %t91, i64 5)
  %t93 = getelementptr %Value, %Value* %t90, i32 0, i32 0
  store %nyx_string* %t92, %nyx_string** %t93
  %t94 = getelementptr %Value, %Value* %t90, i32 0, i32 1
  store i64 0, i64* %t94
  %t95 = load double, double* %f.ptr
  %t96 = getelementptr %Value, %Value* %t90, i32 0, i32 2
  store double %t95, double* %t96
  %t97 = getelementptr %Value, %Value* %t90, i32 0, i32 3
  store i1 0, i1* %t97
  %t98 = getelementptr [1 x i8], [1 x i8]* @.str10, i32 0, i32 0
  %t99 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str10.c, i8* %t98, i64 0)
  %t100 = getelementptr %Value, %Value* %t90, i32 0, i32 4
  store %nyx_string* %t99, %nyx_string** %t100
  %t101 = load { i64, i8* }*, { i64, i8* }** %t86
  %t102 = getelementptr %Value, %Value* %t90, i32 0, i32 5
  store { i64, i8* }* %t101, { i64, i8* }** %t102
  %t103 = load { i64, i8* }*, { i64, i8* }** %t86
  %t104 = getelementptr %Value, %Value* %t90, i32 0, i32 6
  store { i64, i8* }* %t103, { i64, i8* }** %t104
  %t105 = getelementptr [1 x i8], [1 x i8]* @.str11, i32 0, i32 0
  %t106 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str11.c, i8* %t105, i64 0)
  %t107 = getelementptr %Value, %Value* %t90, i32 0, i32 7
  store %nyx_string* %t106, %nyx_string** %t107
  %t108 = load { i64, i8* }*, { i64, i8* }** %t86
  %t109 = getelementptr %Value, %Value* %t90, i32 0, i32 8
  store { i64, i8* }* %t108, { i64, i8* }** %t109
  %t110 = load i8*, i8** %t84
  %t111 = getelementptr %Value, %Value* %t90, i32 0, i32 9
  store i8* %t110, i8** %t111
  %t112 = load { i64, i8* }*, { i64, i8* }** %t86
  %t113 = getelementptr %Value, %Value* %t90, i32 0, i32 10
  store { i64, i8* }* %t112, { i64, i8* }** %t113
  %t114 = load %Value, %Value* %t90
  ret %Value %t114
}

define internal %Value @make_bool(
i1 %b.param) {
  %b.ptr = alloca i1
  %t116 = alloca i8*
  %t118 = alloca { i64, i8* }*
  store i1 %b.param, i1* %b.ptr
  %t115 = call i8* @nyx_map_new(i32 0)
  store i8* %t115, i8** %t116
  %t117 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t117, { i64, i8* }** %t118
  %t119 = getelementptr %Value, %Value* null, i32 1
  %t120 = ptrtoint %Value* %t119 to i64
  %t121 = call i8* @GC_malloc(i64 %t120)
  %t122 = bitcast i8* %t121 to %Value*
  %t123 = getelementptr [5 x i8], [5 x i8]* @.str12, i32 0, i32 0
  %t124 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str12.c, i8* %t123, i64 4)
  %t125 = getelementptr %Value, %Value* %t122, i32 0, i32 0
  store %nyx_string* %t124, %nyx_string** %t125
  %t126 = getelementptr %Value, %Value* %t122, i32 0, i32 1
  store i64 0, i64* %t126
  %t127 = getelementptr %Value, %Value* %t122, i32 0, i32 2
  store double 0.0, double* %t127
  %t128 = load i1, i1* %b.ptr
  %t129 = getelementptr %Value, %Value* %t122, i32 0, i32 3
  store i1 %t128, i1* %t129
  %t130 = getelementptr [1 x i8], [1 x i8]* @.str13, i32 0, i32 0
  %t131 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str13.c, i8* %t130, i64 0)
  %t132 = getelementptr %Value, %Value* %t122, i32 0, i32 4
  store %nyx_string* %t131, %nyx_string** %t132
  %t133 = load { i64, i8* }*, { i64, i8* }** %t118
  %t134 = getelementptr %Value, %Value* %t122, i32 0, i32 5
  store { i64, i8* }* %t133, { i64, i8* }** %t134
  %t135 = load { i64, i8* }*, { i64, i8* }** %t118
  %t136 = getelementptr %Value, %Value* %t122, i32 0, i32 6
  store { i64, i8* }* %t135, { i64, i8* }** %t136
  %t137 = getelementptr [1 x i8], [1 x i8]* @.str14, i32 0, i32 0
  %t138 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str14.c, i8* %t137, i64 0)
  %t139 = getelementptr %Value, %Value* %t122, i32 0, i32 7
  store %nyx_string* %t138, %nyx_string** %t139
  %t140 = load { i64, i8* }*, { i64, i8* }** %t118
  %t141 = getelementptr %Value, %Value* %t122, i32 0, i32 8
  store { i64, i8* }* %t140, { i64, i8* }** %t141
  %t142 = load i8*, i8** %t116
  %t143 = getelementptr %Value, %Value* %t122, i32 0, i32 9
  store i8* %t142, i8** %t143
  %t144 = load { i64, i8* }*, { i64, i8* }** %t118
  %t145 = getelementptr %Value, %Value* %t122, i32 0, i32 10
  store { i64, i8* }* %t144, { i64, i8* }** %t145
  %t146 = load %Value, %Value* %t122
  ret %Value %t146
}

define internal %Value @make_string(
%nyx_string* %s.param) {
  %s.ptr = alloca %nyx_string*
  %t148 = alloca i8*
  %t150 = alloca { i64, i8* }*
  store %nyx_string* %s.param, %nyx_string** %s.ptr
  %t147 = call i8* @nyx_map_new(i32 0)
  store i8* %t147, i8** %t148
  %t149 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t149, { i64, i8* }** %t150
  %t151 = getelementptr %Value, %Value* null, i32 1
  %t152 = ptrtoint %Value* %t151 to i64
  %t153 = call i8* @GC_malloc(i64 %t152)
  %t154 = bitcast i8* %t153 to %Value*
  %t155 = getelementptr [7 x i8], [7 x i8]* @.str15, i32 0, i32 0
  %t156 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str15.c, i8* %t155, i64 6)
  %t157 = getelementptr %Value, %Value* %t154, i32 0, i32 0
  store %nyx_string* %t156, %nyx_string** %t157
  %t158 = getelementptr %Value, %Value* %t154, i32 0, i32 1
  store i64 0, i64* %t158
  %t159 = getelementptr %Value, %Value* %t154, i32 0, i32 2
  store double 0.0, double* %t159
  %t160 = getelementptr %Value, %Value* %t154, i32 0, i32 3
  store i1 0, i1* %t160
  %t161 = load %nyx_string*, %nyx_string** %s.ptr
  %t162 = getelementptr %Value, %Value* %t154, i32 0, i32 4
  store %nyx_string* %t161, %nyx_string** %t162
  %t163 = load { i64, i8* }*, { i64, i8* }** %t150
  %t164 = getelementptr %Value, %Value* %t154, i32 0, i32 5
  store { i64, i8* }* %t163, { i64, i8* }** %t164
  %t165 = load { i64, i8* }*, { i64, i8* }** %t150
  %t166 = getelementptr %Value, %Value* %t154, i32 0, i32 6
  store { i64, i8* }* %t165, { i64, i8* }** %t166
  %t167 = getelementptr [1 x i8], [1 x i8]* @.str16, i32 0, i32 0
  %t168 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str16.c, i8* %t167, i64 0)
  %t169 = getelementptr %Value, %Value* %t154, i32 0, i32 7
  store %nyx_string* %t168, %nyx_string** %t169
  %t170 = load { i64, i8* }*, { i64, i8* }** %t150
  %t171 = getelementptr %Value, %Value* %t154, i32 0, i32 8
  store { i64, i8* }* %t170, { i64, i8* }** %t171
  %t172 = load i8*, i8** %t148
  %t173 = getelementptr %Value, %Value* %t154, i32 0, i32 9
  store i8* %t172, i8** %t173
  %t174 = load { i64, i8* }*, { i64, i8* }** %t150
  %t175 = getelementptr %Value, %Value* %t154, i32 0, i32 10
  store { i64, i8* }* %t174, { i64, i8* }** %t175
  %t176 = load %Value, %Value* %t154
  ret %Value %t176
}

define internal %Value @make_array(
{ i64, i8* }* %arr.param) {
  %arr.ptr = alloca { i64, i8* }*
  %t178 = alloca i8*
  %t180 = alloca { i64, i8* }*
  store { i64, i8* }* %arr.param, { i64, i8* }** %arr.ptr
  %t177 = call i8* @nyx_map_new(i32 0)
  store i8* %t177, i8** %t178
  %t179 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t179, { i64, i8* }** %t180
  %t181 = getelementptr %Value, %Value* null, i32 1
  %t182 = ptrtoint %Value* %t181 to i64
  %t183 = call i8* @GC_malloc(i64 %t182)
  %t184 = bitcast i8* %t183 to %Value*
  %t185 = getelementptr [6 x i8], [6 x i8]* @.str17, i32 0, i32 0
  %t186 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str17.c, i8* %t185, i64 5)
  %t187 = getelementptr %Value, %Value* %t184, i32 0, i32 0
  store %nyx_string* %t186, %nyx_string** %t187
  %t188 = getelementptr %Value, %Value* %t184, i32 0, i32 1
  store i64 0, i64* %t188
  %t189 = getelementptr %Value, %Value* %t184, i32 0, i32 2
  store double 0.0, double* %t189
  %t190 = getelementptr %Value, %Value* %t184, i32 0, i32 3
  store i1 0, i1* %t190
  %t191 = getelementptr [1 x i8], [1 x i8]* @.str18, i32 0, i32 0
  %t192 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str18.c, i8* %t191, i64 0)
  %t193 = getelementptr %Value, %Value* %t184, i32 0, i32 4
  store %nyx_string* %t192, %nyx_string** %t193
  %t194 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %t195 = getelementptr %Value, %Value* %t184, i32 0, i32 5
  store { i64, i8* }* %t194, { i64, i8* }** %t195
  %t196 = load { i64, i8* }*, { i64, i8* }** %t180
  %t197 = getelementptr %Value, %Value* %t184, i32 0, i32 6
  store { i64, i8* }* %t196, { i64, i8* }** %t197
  %t198 = getelementptr [1 x i8], [1 x i8]* @.str19, i32 0, i32 0
  %t199 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str19.c, i8* %t198, i64 0)
  %t200 = getelementptr %Value, %Value* %t184, i32 0, i32 7
  store %nyx_string* %t199, %nyx_string** %t200
  %t201 = load { i64, i8* }*, { i64, i8* }** %t180
  %t202 = getelementptr %Value, %Value* %t184, i32 0, i32 8
  store { i64, i8* }* %t201, { i64, i8* }** %t202
  %t203 = load i8*, i8** %t178
  %t204 = getelementptr %Value, %Value* %t184, i32 0, i32 9
  store i8* %t203, i8** %t204
  %t205 = load { i64, i8* }*, { i64, i8* }** %t180
  %t206 = getelementptr %Value, %Value* %t184, i32 0, i32 10
  store { i64, i8* }* %t205, { i64, i8* }** %t206
  %t207 = load %Value, %Value* %t184
  ret %Value %t207
}

define internal %Value @make_function(
{ i64, i8* }* %params.param, { i64, i8* }* %body.param, %Environment %env.param) {
  %params.ptr = alloca { i64, i8* }*
  %body.ptr = alloca { i64, i8* }*
  %env.ptr = alloca %Environment
  %t209 = alloca { i64, i8* }*
  %t212 = alloca %nyx_string*
  %t215 = alloca { i64, i8* }*
  %t218 = alloca i8*
  %t221 = alloca { i64, i8* }*
  store { i64, i8* }* %params.param, { i64, i8* }** %params.ptr
  store { i64, i8* }* %body.param, { i64, i8* }** %body.ptr
  store %Environment %env.param, %Environment* %env.ptr
  %t208 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t208, { i64, i8* }** %t209
  %t210 = load { i64, i8* }*, { i64, i8* }** %body.ptr
  %t211 = call %nyx_string* @astnode_get_type({ i64, i8* }* %t210)
  store %nyx_string* %t211, %nyx_string** %t212
  %t213 = load { i64, i8* }*, { i64, i8* }** %body.ptr
  %t214 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %t213)
  store { i64, i8* }* %t214, { i64, i8* }** %t215
  %t216 = getelementptr %Environment, %Environment* %env.ptr, i32 0, i32 0
  %t217 = load i8*, i8** %t216
  store i8* %t217, i8** %t218
  %t219 = getelementptr %Environment, %Environment* %env.ptr, i32 0, i32 1
  %t220 = load { i64, i8* }*, { i64, i8* }** %t219
  store { i64, i8* }* %t220, { i64, i8* }** %t221
  %t222 = getelementptr %Value, %Value* null, i32 1
  %t223 = ptrtoint %Value* %t222 to i64
  %t224 = call i8* @GC_malloc(i64 %t223)
  %t225 = bitcast i8* %t224 to %Value*
  %t226 = getelementptr [9 x i8], [9 x i8]* @.str20, i32 0, i32 0
  %t227 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str20.c, i8* %t226, i64 8)
  %t228 = getelementptr %Value, %Value* %t225, i32 0, i32 0
  store %nyx_string* %t227, %nyx_string** %t228
  %t229 = getelementptr %Value, %Value* %t225, i32 0, i32 1
  store i64 0, i64* %t229
  %t230 = getelementptr %Value, %Value* %t225, i32 0, i32 2
  store double 0.0, double* %t230
  %t231 = getelementptr %Value, %Value* %t225, i32 0, i32 3
  store i1 0, i1* %t231
  %t232 = getelementptr [1 x i8], [1 x i8]* @.str21, i32 0, i32 0
  %t233 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str21.c, i8* %t232, i64 0)
  %t234 = getelementptr %Value, %Value* %t225, i32 0, i32 4
  store %nyx_string* %t233, %nyx_string** %t234
  %t235 = load { i64, i8* }*, { i64, i8* }** %t209
  %t236 = getelementptr %Value, %Value* %t225, i32 0, i32 5
  store { i64, i8* }* %t235, { i64, i8* }** %t236
  %t237 = load { i64, i8* }*, { i64, i8* }** %params.ptr
  %t238 = getelementptr %Value, %Value* %t225, i32 0, i32 6
  store { i64, i8* }* %t237, { i64, i8* }** %t238
  %t239 = load %nyx_string*, %nyx_string** %t212
  %t240 = getelementptr %Value, %Value* %t225, i32 0, i32 7
  store %nyx_string* %t239, %nyx_string** %t240
  %t241 = load { i64, i8* }*, { i64, i8* }** %t215
  %t242 = getelementptr %Value, %Value* %t225, i32 0, i32 8
  store { i64, i8* }* %t241, { i64, i8* }** %t242
  %t243 = load i8*, i8** %t218
  %t244 = getelementptr %Value, %Value* %t225, i32 0, i32 9
  store i8* %t243, i8** %t244
  %t245 = load { i64, i8* }*, { i64, i8* }** %t221
  %t246 = getelementptr %Value, %Value* %t225, i32 0, i32 10
  store { i64, i8* }* %t245, { i64, i8* }** %t246
  %t247 = load %Value, %Value* %t225
  ret %Value %t247
}

define internal %Value @make_error(
) {
  %t249 = alloca %Value
  %t248 = call %Value @make_nil()
  store %Value %t248, %Value* %t249
  %t250 = getelementptr %Value, %Value* null, i32 1
  %t251 = ptrtoint %Value* %t250 to i64
  %t252 = call i8* @GC_malloc(i64 %t251)
  %t253 = bitcast i8* %t252 to %Value*
  %t254 = getelementptr [6 x i8], [6 x i8]* @.str22, i32 0, i32 0
  %t255 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str22.c, i8* %t254, i64 5)
  %t256 = getelementptr %Value, %Value* %t253, i32 0, i32 0
  store %nyx_string* %t255, %nyx_string** %t256
  %t257 = getelementptr %Value, %Value* %t253, i32 0, i32 1
  store i64 0, i64* %t257
  %t258 = getelementptr %Value, %Value* %t253, i32 0, i32 2
  store double 0.0, double* %t258
  %t259 = getelementptr %Value, %Value* %t253, i32 0, i32 3
  store i1 0, i1* %t259
  %t260 = getelementptr [1 x i8], [1 x i8]* @.str23, i32 0, i32 0
  %t261 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str23.c, i8* %t260, i64 0)
  %t262 = getelementptr %Value, %Value* %t253, i32 0, i32 4
  store %nyx_string* %t261, %nyx_string** %t262
  %t263 = getelementptr %Value, %Value* %t249, i32 0, i32 5
  %t264 = load { i64, i8* }*, { i64, i8* }** %t263
  %t265 = getelementptr %Value, %Value* %t253, i32 0, i32 5
  store { i64, i8* }* %t264, { i64, i8* }** %t265
  %t266 = getelementptr %Value, %Value* %t249, i32 0, i32 6
  %t267 = load { i64, i8* }*, { i64, i8* }** %t266
  %t268 = getelementptr %Value, %Value* %t253, i32 0, i32 6
  store { i64, i8* }* %t267, { i64, i8* }** %t268
  %t269 = getelementptr [1 x i8], [1 x i8]* @.str24, i32 0, i32 0
  %t270 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str24.c, i8* %t269, i64 0)
  %t271 = getelementptr %Value, %Value* %t253, i32 0, i32 7
  store %nyx_string* %t270, %nyx_string** %t271
  %t272 = getelementptr %Value, %Value* %t249, i32 0, i32 8
  %t273 = load { i64, i8* }*, { i64, i8* }** %t272
  %t274 = getelementptr %Value, %Value* %t253, i32 0, i32 8
  store { i64, i8* }* %t273, { i64, i8* }** %t274
  %t275 = getelementptr %Value, %Value* %t249, i32 0, i32 9
  %t276 = load i8*, i8** %t275
  %t277 = getelementptr %Value, %Value* %t253, i32 0, i32 9
  store i8* %t276, i8** %t277
  %t278 = getelementptr %Value, %Value* %t249, i32 0, i32 10
  %t279 = load { i64, i8* }*, { i64, i8* }** %t278
  %t280 = getelementptr %Value, %Value* %t253, i32 0, i32 10
  store { i64, i8* }* %t279, { i64, i8* }** %t280
  %t281 = load %Value, %Value* %t253
  ret %Value %t281
}

define internal %Value @make_nil(
) {
  %t283 = alloca i8*
  %t285 = alloca { i64, i8* }*
  %t282 = call i8* @nyx_map_new(i32 0)
  store i8* %t282, i8** %t283
  %t284 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t284, { i64, i8* }** %t285
  %t286 = getelementptr %Value, %Value* null, i32 1
  %t287 = ptrtoint %Value* %t286 to i64
  %t288 = call i8* @GC_malloc(i64 %t287)
  %t289 = bitcast i8* %t288 to %Value*
  %t290 = getelementptr [4 x i8], [4 x i8]* @.str25, i32 0, i32 0
  %t291 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str25.c, i8* %t290, i64 3)
  %t292 = getelementptr %Value, %Value* %t289, i32 0, i32 0
  store %nyx_string* %t291, %nyx_string** %t292
  %t293 = getelementptr %Value, %Value* %t289, i32 0, i32 1
  store i64 0, i64* %t293
  %t294 = getelementptr %Value, %Value* %t289, i32 0, i32 2
  store double 0.0, double* %t294
  %t295 = getelementptr %Value, %Value* %t289, i32 0, i32 3
  store i1 0, i1* %t295
  %t296 = getelementptr [1 x i8], [1 x i8]* @.str26, i32 0, i32 0
  %t297 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str26.c, i8* %t296, i64 0)
  %t298 = getelementptr %Value, %Value* %t289, i32 0, i32 4
  store %nyx_string* %t297, %nyx_string** %t298
  %t299 = load { i64, i8* }*, { i64, i8* }** %t285
  %t300 = getelementptr %Value, %Value* %t289, i32 0, i32 5
  store { i64, i8* }* %t299, { i64, i8* }** %t300
  %t301 = load { i64, i8* }*, { i64, i8* }** %t285
  %t302 = getelementptr %Value, %Value* %t289, i32 0, i32 6
  store { i64, i8* }* %t301, { i64, i8* }** %t302
  %t303 = getelementptr [1 x i8], [1 x i8]* @.str27, i32 0, i32 0
  %t304 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str27.c, i8* %t303, i64 0)
  %t305 = getelementptr %Value, %Value* %t289, i32 0, i32 7
  store %nyx_string* %t304, %nyx_string** %t305
  %t306 = load { i64, i8* }*, { i64, i8* }** %t285
  %t307 = getelementptr %Value, %Value* %t289, i32 0, i32 8
  store { i64, i8* }* %t306, { i64, i8* }** %t307
  %t308 = load i8*, i8** %t283
  %t309 = getelementptr %Value, %Value* %t289, i32 0, i32 9
  store i8* %t308, i8** %t309
  %t310 = load { i64, i8* }*, { i64, i8* }** %t285
  %t311 = getelementptr %Value, %Value* %t289, i32 0, i32 10
  store { i64, i8* }* %t310, { i64, i8* }** %t311
  %t312 = load %Value, %Value* %t289
  ret %Value %t312
}

define internal %Value @make_return_value(
%Value %inner_value.param) {
  %inner_value.ptr = alloca %Value
  %t314 = alloca i8*
  %t316 = alloca { i64, i8* }*
  store %Value %inner_value.param, %Value* %inner_value.ptr
  %t313 = call i8* @nyx_map_new(i32 0)
  store i8* %t313, i8** %t314
  %t315 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t315, { i64, i8* }** %t316
  %t317 = load { i64, i8* }*, { i64, i8* }** %t316
  %t318 = load %Value, %Value* %inner_value.ptr
  %t319 = getelementptr %Value, %Value* null, i32 1
  %t320 = ptrtoint %Value* %t319 to i64
  %t321 = call i8* @GC_malloc(i64 %t320)
  %t322 = bitcast i8* %t321 to %Value*
  store %Value %t318, %Value* %t322
  %t323 = ptrtoint %Value* %t322 to i64
  call void @nyx_array_push({ i64, i8* }* %t317, i64 %t323)
  %t324 = getelementptr %Value, %Value* null, i32 1
  %t325 = ptrtoint %Value* %t324 to i64
  %t326 = call i8* @GC_malloc(i64 %t325)
  %t327 = bitcast i8* %t326 to %Value*
  %t328 = getelementptr [7 x i8], [7 x i8]* @.str28, i32 0, i32 0
  %t329 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str28.c, i8* %t328, i64 6)
  %t330 = getelementptr %Value, %Value* %t327, i32 0, i32 0
  store %nyx_string* %t329, %nyx_string** %t330
  %t331 = getelementptr %Value, %Value* %t327, i32 0, i32 1
  store i64 0, i64* %t331
  %t332 = getelementptr %Value, %Value* %t327, i32 0, i32 2
  store double 0.0, double* %t332
  %t333 = getelementptr %Value, %Value* %t327, i32 0, i32 3
  store i1 0, i1* %t333
  %t334 = getelementptr [1 x i8], [1 x i8]* @.str29, i32 0, i32 0
  %t335 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str29.c, i8* %t334, i64 0)
  %t336 = getelementptr %Value, %Value* %t327, i32 0, i32 4
  store %nyx_string* %t335, %nyx_string** %t336
  %t337 = load { i64, i8* }*, { i64, i8* }** %t316
  %t338 = getelementptr %Value, %Value* %t327, i32 0, i32 5
  store { i64, i8* }* %t337, { i64, i8* }** %t338
  %t339 = call { i64, i8* }* @nyx_array_new_ptr()
  %t340 = getelementptr %Value, %Value* %t327, i32 0, i32 6
  store { i64, i8* }* %t339, { i64, i8* }** %t340
  %t341 = getelementptr [1 x i8], [1 x i8]* @.str30, i32 0, i32 0
  %t342 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str30.c, i8* %t341, i64 0)
  %t343 = getelementptr %Value, %Value* %t327, i32 0, i32 7
  store %nyx_string* %t342, %nyx_string** %t343
  %t344 = call { i64, i8* }* @nyx_array_new_ptr()
  %t345 = getelementptr %Value, %Value* %t327, i32 0, i32 8
  store { i64, i8* }* %t344, { i64, i8* }** %t345
  %t346 = load i8*, i8** %t314
  %t347 = getelementptr %Value, %Value* %t327, i32 0, i32 9
  store i8* %t346, i8** %t347
  %t348 = call { i64, i8* }* @nyx_array_new_ptr()
  %t349 = getelementptr %Value, %Value* %t327, i32 0, i32 10
  store { i64, i8* }* %t348, { i64, i8* }** %t349
  %t350 = load %Value, %Value* %t327
  ret %Value %t350
}

define internal %Value @make_control(
%nyx_string* %kind.param) {
  %kind.ptr = alloca %nyx_string*
  %t352 = alloca %Value
  store %nyx_string* %kind.param, %nyx_string** %kind.ptr
  %t351 = call %Value @make_nil()
  store %Value %t351, %Value* %t352
  %t353 = getelementptr %Value, %Value* null, i32 1
  %t354 = ptrtoint %Value* %t353 to i64
  %t355 = call i8* @GC_malloc(i64 %t354)
  %t356 = bitcast i8* %t355 to %Value*
  %t357 = load %nyx_string*, %nyx_string** %kind.ptr
  %t358 = getelementptr %Value, %Value* %t356, i32 0, i32 0
  store %nyx_string* %t357, %nyx_string** %t358
  %t359 = getelementptr %Value, %Value* %t356, i32 0, i32 1
  store i64 0, i64* %t359
  %t360 = getelementptr %Value, %Value* %t356, i32 0, i32 2
  store double 0.0, double* %t360
  %t361 = getelementptr %Value, %Value* %t356, i32 0, i32 3
  store i1 0, i1* %t361
  %t362 = getelementptr [1 x i8], [1 x i8]* @.str31, i32 0, i32 0
  %t363 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str31.c, i8* %t362, i64 0)
  %t364 = getelementptr %Value, %Value* %t356, i32 0, i32 4
  store %nyx_string* %t363, %nyx_string** %t364
  %t365 = getelementptr %Value, %Value* %t352, i32 0, i32 5
  %t366 = load { i64, i8* }*, { i64, i8* }** %t365
  %t367 = getelementptr %Value, %Value* %t356, i32 0, i32 5
  store { i64, i8* }* %t366, { i64, i8* }** %t367
  %t368 = getelementptr %Value, %Value* %t352, i32 0, i32 6
  %t369 = load { i64, i8* }*, { i64, i8* }** %t368
  %t370 = getelementptr %Value, %Value* %t356, i32 0, i32 6
  store { i64, i8* }* %t369, { i64, i8* }** %t370
  %t371 = getelementptr [1 x i8], [1 x i8]* @.str32, i32 0, i32 0
  %t372 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str32.c, i8* %t371, i64 0)
  %t373 = getelementptr %Value, %Value* %t356, i32 0, i32 7
  store %nyx_string* %t372, %nyx_string** %t373
  %t374 = getelementptr %Value, %Value* %t352, i32 0, i32 8
  %t375 = load { i64, i8* }*, { i64, i8* }** %t374
  %t376 = getelementptr %Value, %Value* %t356, i32 0, i32 8
  store { i64, i8* }* %t375, { i64, i8* }** %t376
  %t377 = getelementptr %Value, %Value* %t352, i32 0, i32 9
  %t378 = load i8*, i8** %t377
  %t379 = getelementptr %Value, %Value* %t356, i32 0, i32 9
  store i8* %t378, i8** %t379
  %t380 = getelementptr %Value, %Value* %t352, i32 0, i32 10
  %t381 = load { i64, i8* }*, { i64, i8* }** %t380
  %t382 = getelementptr %Value, %Value* %t356, i32 0, i32 10
  store { i64, i8* }* %t381, { i64, i8* }** %t382
  %t383 = load %Value, %Value* %t356
  ret %Value %t383
}

define internal i1 @is_loop_control(
%Value %v.param) {
  %v.ptr = alloca %Value
  %t384 = alloca i1
  store %Value %v.param, %Value* %v.ptr
  store i1 true, i1* %t384
  %t385 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %t386 = load %nyx_string*, %nyx_string** %t385
  %t387 = getelementptr [6 x i8], [6 x i8]* @.str33, i32 0, i32 0
  %t388 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str33.c, i8* %t387, i64 5)
  %t389 = call i1 @nyx_string_equals(%nyx_string* %t386, %nyx_string* %t388)
  br i1 %t389, label %sc_or_end4, label %sc_or_rhs3
sc_or_rhs3:
  %t390 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %t391 = load %nyx_string*, %nyx_string** %t390
  %t392 = getelementptr [9 x i8], [9 x i8]* @.str34, i32 0, i32 0
  %t393 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str34.c, i8* %t392, i64 8)
  %t394 = call i1 @nyx_string_equals(%nyx_string* %t391, %nyx_string* %t393)
  store i1 %t394, i1* %t384
  br label %sc_or_end4
sc_or_end4:
  %t395 = load i1, i1* %t384
  ret i1 %t395
}

define internal %Value @loop_control_escaped(
%Value %v.param) {
  %v.ptr = alloca %Value
  store %Value %v.param, %Value* %v.ptr
  %t396 = getelementptr [8 x i8], [8 x i8]* @.str35, i32 0, i32 0
  %t397 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str35.c, i8* %t396, i64 7)
  %t398 = getelementptr [2 x i8], [2 x i8]* @.str36, i32 0, i32 0
  %t399 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str36.c, i8* %t398, i64 1)
  %t400 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %t401 = load %nyx_string*, %nyx_string** %t400
  %t402 = call %nyx_string* @nyx_string_concat(%nyx_string* %t399, %nyx_string* %t401)
  %t403 = getelementptr [16 x i8], [16 x i8]* @.str37, i32 0, i32 0
  %t404 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str37.c, i8* %t403, i64 15)
  %t405 = call %nyx_string* @nyx_string_concat(%nyx_string* %t402, %nyx_string* %t404)
  %t406 = getelementptr [2 x i8], [2 x i8]* @.str38, i32 0, i32 0
  %t407 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str38.c, i8* %t406, i64 1)
  %t408 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %t409 = load %nyx_string*, %nyx_string** %t408
  %t410 = call %nyx_string* @nyx_string_concat(%nyx_string* %t407, %nyx_string* %t409)
  %t411 = getelementptr [18 x i8], [18 x i8]* @.str39, i32 0, i32 0
  %t412 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str39.c, i8* %t411, i64 17)
  %t413 = call %nyx_string* @nyx_string_concat(%nyx_string* %t410, %nyx_string* %t412)
  %t414 = call i64 @interp_err(%nyx_string* %t397, %nyx_string* %t405, %nyx_string* %t413)
  %t415 = call %Value @make_error()
  ret %Value %t415
}

define internal %Value @eval_return(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  %env.ptr = alloca %Environment
  %t418 = alloca { i64, i8* }*
  %t422 = alloca { i64, i8* }*
  %t426 = alloca %Value
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  store %Environment %env.param, %Environment* %env.ptr
  %t416 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %t417 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %t416)
  store { i64, i8* }* %t417, { i64, i8* }** %t418
  %t419 = load { i64, i8* }*, { i64, i8* }** %t418
  %t420 = call i64 @nyx_array_get({ i64, i8* }* %t419, i64 0)
  %t421 = inttoptr i64 %t420 to { i64, i8* }*
  store { i64, i8* }* %t421, { i64, i8* }** %t422
  %t423 = load { i64, i8* }*, { i64, i8* }** %t422
  %t424 = load %Environment, %Environment* %env.ptr
  %t425 = call %Value @eval_expr({ i64, i8* }* %t423, %Environment %t424)
  store %Value %t425, %Value* %t426
  %t427 = load %Value, %Value* %t426
  %t428 = call %Value @make_return_value(%Value %t427)
  ret %Value %t428
}

define internal i64 @value_to_int(
%Value %v.param) {
  %v.ptr = alloca %Value
  store %Value %v.param, %Value* %v.ptr
  %t429 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %t430 = load %nyx_string*, %nyx_string** %t429
  %t431 = getelementptr [4 x i8], [4 x i8]* @.str40, i32 0, i32 0
  %t432 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str40.c, i8* %t431, i64 3)
  %t433 = call i1 @nyx_string_equals(%nyx_string* %t430, %nyx_string* %t432)
  br i1 %t433, label %then5, label %else6
then5:
  %t434 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 1
  %t435 = load i64, i64* %t434
  ret i64 %t435
else6:
  br label %merge7
merge7:
  ret i64 0
}

define internal double @value_to_float(
%Value %v.param) {
  %v.ptr = alloca %Value
  %t451 = alloca double
  store %Value %v.param, %Value* %v.ptr
  %t436 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %t437 = load %nyx_string*, %nyx_string** %t436
  %t438 = getelementptr [6 x i8], [6 x i8]* @.str41, i32 0, i32 0
  %t439 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str41.c, i8* %t438, i64 5)
  %t440 = call i1 @nyx_string_equals(%nyx_string* %t437, %nyx_string* %t439)
  br i1 %t440, label %then8, label %else9
then8:
  %t441 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 2
  %t442 = load double, double* %t441
  ret double %t442
else9:
  br label %merge10
merge10:
  %t443 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %t444 = load %nyx_string*, %nyx_string** %t443
  %t445 = getelementptr [4 x i8], [4 x i8]* @.str42, i32 0, i32 0
  %t446 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str42.c, i8* %t445, i64 3)
  %t447 = call i1 @nyx_string_equals(%nyx_string* %t444, %nyx_string* %t446)
  br i1 %t447, label %then11, label %else12
then11:
  %t448 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 1
  %t449 = load i64, i64* %t448
  %t450 = sitofp i64 %t449 to double
  store double %t450, double* %t451
  %t452 = load double, double* %t451
  ret double %t452
else12:
  br label %merge13
merge13:
  ret double 0.0
}

define internal i1 @value_to_bool(
%Value %v.param) {
  %v.ptr = alloca %Value
  store %Value %v.param, %Value* %v.ptr
  %t453 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %t454 = load %nyx_string*, %nyx_string** %t453
  %t455 = getelementptr [5 x i8], [5 x i8]* @.str43, i32 0, i32 0
  %t456 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str43.c, i8* %t455, i64 4)
  %t457 = call i1 @nyx_string_equals(%nyx_string* %t454, %nyx_string* %t456)
  br i1 %t457, label %then14, label %else15
then14:
  %t458 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 3
  %t459 = load i1, i1* %t458
  ret i1 %t459
else15:
  br label %merge16
merge16:
  ret i1 0
}

define internal %nyx_string* @value_to_string(
%Value %v.param) {
  %v.ptr = alloca %Value
  store %Value %v.param, %Value* %v.ptr
  %t460 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %t461 = load %nyx_string*, %nyx_string** %t460
  %t462 = getelementptr [4 x i8], [4 x i8]* @.str44, i32 0, i32 0
  %t463 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str44.c, i8* %t462, i64 3)
  %t464 = call i1 @nyx_string_equals(%nyx_string* %t461, %nyx_string* %t463)
  br i1 %t464, label %then17, label %else18
then17:
  %t465 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 1
  %t466 = load i64, i64* %t465
  %t467 = call %nyx_string* @nyx_string_from_int(i64 %t466)
  ret %nyx_string* %t467
else18:
  br label %merge19
merge19:
  %t468 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %t469 = load %nyx_string*, %nyx_string** %t468
  %t470 = getelementptr [6 x i8], [6 x i8]* @.str45, i32 0, i32 0
  %t471 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str45.c, i8* %t470, i64 5)
  %t472 = call i1 @nyx_string_equals(%nyx_string* %t469, %nyx_string* %t471)
  br i1 %t472, label %then20, label %else21
then20:
  %t473 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 2
  %t474 = load double, double* %t473
  %t475 = call %nyx_string* @nyx_string_from_float(double %t474)
  ret %nyx_string* %t475
else21:
  br label %merge22
merge22:
  %t476 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %t477 = load %nyx_string*, %nyx_string** %t476
  %t478 = getelementptr [5 x i8], [5 x i8]* @.str46, i32 0, i32 0
  %t479 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str46.c, i8* %t478, i64 4)
  %t480 = call i1 @nyx_string_equals(%nyx_string* %t477, %nyx_string* %t479)
  br i1 %t480, label %then23, label %else24
then23:
  %t481 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 3
  %t482 = load i1, i1* %t481
  br i1 %t482, label %then26, label %else27
then26:
  %t483 = getelementptr [5 x i8], [5 x i8]* @.str47, i32 0, i32 0
  %t484 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str47.c, i8* %t483, i64 4)
  ret %nyx_string* %t484
else27:
  br label %merge28
merge28:
  %t485 = getelementptr [6 x i8], [6 x i8]* @.str48, i32 0, i32 0
  %t486 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str48.c, i8* %t485, i64 5)
  ret %nyx_string* %t486
else24:
  br label %merge25
merge25:
  %t487 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %t488 = load %nyx_string*, %nyx_string** %t487
  %t489 = getelementptr [7 x i8], [7 x i8]* @.str49, i32 0, i32 0
  %t490 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str49.c, i8* %t489, i64 6)
  %t491 = call i1 @nyx_string_equals(%nyx_string* %t488, %nyx_string* %t490)
  br i1 %t491, label %then29, label %else30
then29:
  %t492 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 4
  %t493 = load %nyx_string*, %nyx_string** %t492
  ret %nyx_string* %t493
else30:
  br label %merge31
merge31:
  %t494 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %t495 = load %nyx_string*, %nyx_string** %t494
  %t496 = getelementptr [4 x i8], [4 x i8]* @.str50, i32 0, i32 0
  %t497 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str50.c, i8* %t496, i64 3)
  %t498 = call i1 @nyx_string_equals(%nyx_string* %t495, %nyx_string* %t497)
  br i1 %t498, label %then32, label %else33
then32:
  %t499 = getelementptr [4 x i8], [4 x i8]* @.str51, i32 0, i32 0
  %t500 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str51.c, i8* %t499, i64 3)
  ret %nyx_string* %t500
else33:
  br label %merge34
merge34:
  %t501 = getelementptr [2 x i8], [2 x i8]* @.str52, i32 0, i32 0
  %t502 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str52.c, i8* %t501, i64 1)
  %t503 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %t504 = load %nyx_string*, %nyx_string** %t503
  %t505 = call %nyx_string* @nyx_string_concat(%nyx_string* %t502, %nyx_string* %t504)
  %t506 = getelementptr [2 x i8], [2 x i8]* @.str53, i32 0, i32 0
  %t507 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str53.c, i8* %t506, i64 1)
  %t508 = call %nyx_string* @nyx_string_concat(%nyx_string* %t505, %nyx_string* %t507)
  ret %nyx_string* %t508
}

define internal i1 @is_truthy(
%Value %v.param) {
  %v.ptr = alloca %Value
  store %Value %v.param, %Value* %v.ptr
  %t509 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %t510 = load %nyx_string*, %nyx_string** %t509
  %t511 = getelementptr [5 x i8], [5 x i8]* @.str54, i32 0, i32 0
  %t512 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str54.c, i8* %t511, i64 4)
  %t513 = call i1 @nyx_string_equals(%nyx_string* %t510, %nyx_string* %t512)
  br i1 %t513, label %then35, label %else36
then35:
  %t514 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 3
  %t515 = load i1, i1* %t514
  ret i1 %t515
else36:
  br label %merge37
merge37:
  %t516 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %t517 = load %nyx_string*, %nyx_string** %t516
  %t518 = getelementptr [4 x i8], [4 x i8]* @.str55, i32 0, i32 0
  %t519 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str55.c, i8* %t518, i64 3)
  %t520 = call i1 @nyx_string_equals(%nyx_string* %t517, %nyx_string* %t519)
  br i1 %t520, label %then38, label %else39
then38:
  ret i1 0
else39:
  br label %merge40
merge40:
  %t521 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %t522 = load %nyx_string*, %nyx_string** %t521
  %t523 = getelementptr [4 x i8], [4 x i8]* @.str56, i32 0, i32 0
  %t524 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str56.c, i8* %t523, i64 3)
  %t525 = call i1 @nyx_string_equals(%nyx_string* %t522, %nyx_string* %t524)
  br i1 %t525, label %then41, label %else42
then41:
  %t526 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 1
  %t527 = load i64, i64* %t526
  %t528 = icmp ne i64 %t527, 0
  ret i1 %t528
else42:
  br label %merge43
merge43:
  ret i1 1
}

define internal i1 @values_equal(
%Value %a.param, %Value %b.param) {
  %a.ptr = alloca %Value
  %b.ptr = alloca %Value
  store %Value %a.param, %Value* %a.ptr
  store %Value %b.param, %Value* %b.ptr
  %t529 = getelementptr %Value, %Value* %a.ptr, i32 0, i32 0
  %t530 = load %nyx_string*, %nyx_string** %t529
  %t531 = getelementptr %Value, %Value* %b.ptr, i32 0, i32 0
  %t532 = load %nyx_string*, %nyx_string** %t531
  %t533 = call i1 @nyx_string_equals(%nyx_string* %t530, %nyx_string* %t532)
  %t534 = xor i1 %t533, true
  br i1 %t534, label %then44, label %else45
then44:
  ret i1 0
else45:
  br label %merge46
merge46:
  %t535 = getelementptr %Value, %Value* %a.ptr, i32 0, i32 0
  %t536 = load %nyx_string*, %nyx_string** %t535
  %t537 = getelementptr [4 x i8], [4 x i8]* @.str57, i32 0, i32 0
  %t538 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str57.c, i8* %t537, i64 3)
  %t539 = call i1 @nyx_string_equals(%nyx_string* %t536, %nyx_string* %t538)
  br i1 %t539, label %then47, label %else48
then47:
  %t540 = getelementptr %Value, %Value* %a.ptr, i32 0, i32 1
  %t541 = load i64, i64* %t540
  %t542 = getelementptr %Value, %Value* %b.ptr, i32 0, i32 1
  %t543 = load i64, i64* %t542
  %t544 = icmp eq i64 %t541, %t543
  ret i1 %t544
else48:
  br label %merge49
merge49:
  %t545 = getelementptr %Value, %Value* %a.ptr, i32 0, i32 0
  %t546 = load %nyx_string*, %nyx_string** %t545
  %t547 = getelementptr [5 x i8], [5 x i8]* @.str58, i32 0, i32 0
  %t548 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str58.c, i8* %t547, i64 4)
  %t549 = call i1 @nyx_string_equals(%nyx_string* %t546, %nyx_string* %t548)
  br i1 %t549, label %then50, label %else51
then50:
  %t550 = getelementptr %Value, %Value* %a.ptr, i32 0, i32 3
  %t551 = load i1, i1* %t550
  %t552 = getelementptr %Value, %Value* %b.ptr, i32 0, i32 3
  %t553 = load i1, i1* %t552
  %t554 = icmp eq i1 %t551, %t553
  ret i1 %t554
else51:
  br label %merge52
merge52:
  %t555 = getelementptr %Value, %Value* %a.ptr, i32 0, i32 0
  %t556 = load %nyx_string*, %nyx_string** %t555
  %t557 = getelementptr [7 x i8], [7 x i8]* @.str59, i32 0, i32 0
  %t558 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str59.c, i8* %t557, i64 6)
  %t559 = call i1 @nyx_string_equals(%nyx_string* %t556, %nyx_string* %t558)
  br i1 %t559, label %then53, label %else54
then53:
  %t560 = getelementptr %Value, %Value* %a.ptr, i32 0, i32 4
  %t561 = load %nyx_string*, %nyx_string** %t560
  %t562 = getelementptr %Value, %Value* %b.ptr, i32 0, i32 4
  %t563 = load %nyx_string*, %nyx_string** %t562
  %t564 = call i1 @nyx_string_equals(%nyx_string* %t561, %nyx_string* %t563)
  ret i1 %t564
else54:
  br label %merge55
merge55:
  ret i1 0
}

define internal i64 @print_value(
%Value %v.param) {
  %v.ptr = alloca %Value
  store %Value %v.param, %Value* %v.ptr
  %t565 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %t566 = load %nyx_string*, %nyx_string** %t565
  %t567 = getelementptr [4 x i8], [4 x i8]* @.str60, i32 0, i32 0
  %t568 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str60.c, i8* %t567, i64 3)
  %t569 = call i1 @nyx_string_equals(%nyx_string* %t566, %nyx_string* %t568)
  br i1 %t569, label %then56, label %else57
then56:
  %t570 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 1
  %t571 = load i64, i64* %t570
  call void @nyx_print_int(i64 %t571)
  br label %merge58
else57:
  %t572 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %t573 = load %nyx_string*, %nyx_string** %t572
  %t574 = getelementptr [6 x i8], [6 x i8]* @.str61, i32 0, i32 0
  %t575 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str61.c, i8* %t574, i64 5)
  %t576 = call i1 @nyx_string_equals(%nyx_string* %t573, %nyx_string* %t575)
  br i1 %t576, label %then59, label %else60
then59:
  %t577 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 2
  %t578 = load double, double* %t577
  call void @nyx_print_float(double %t578)
  br label %merge61
else60:
  %t579 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %t580 = load %nyx_string*, %nyx_string** %t579
  %t581 = getelementptr [5 x i8], [5 x i8]* @.str62, i32 0, i32 0
  %t582 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str62.c, i8* %t581, i64 4)
  %t583 = call i1 @nyx_string_equals(%nyx_string* %t580, %nyx_string* %t582)
  br i1 %t583, label %then62, label %else63
then62:
  %t584 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 3
  %t585 = load i1, i1* %t584
  br i1 %t585, label %then65, label %else66
then65:
  %t586 = getelementptr [5 x i8], [5 x i8]* @.str63, i32 0, i32 0
  %t587 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str63.c, i8* %t586, i64 4)
  %t588 = call i8* @nyx_string_to_cstr(%nyx_string* %t587)
  call void @nyx_print_string(i8* %t588)
  br label %merge67
else66:
  %t589 = getelementptr [6 x i8], [6 x i8]* @.str64, i32 0, i32 0
  %t590 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str64.c, i8* %t589, i64 5)
  %t591 = call i8* @nyx_string_to_cstr(%nyx_string* %t590)
  call void @nyx_print_string(i8* %t591)
  br label %merge67
merge67:
  br label %merge64
else63:
  %t592 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %t593 = load %nyx_string*, %nyx_string** %t592
  %t594 = getelementptr [7 x i8], [7 x i8]* @.str65, i32 0, i32 0
  %t595 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str65.c, i8* %t594, i64 6)
  %t596 = call i1 @nyx_string_equals(%nyx_string* %t593, %nyx_string* %t595)
  br i1 %t596, label %then68, label %else69
then68:
  %t597 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 4
  %t598 = load %nyx_string*, %nyx_string** %t597
  %t599 = call i8* @nyx_string_to_cstr(%nyx_string* %t598)
  call void @nyx_print_string(i8* %t599)
  br label %merge70
else69:
  %t600 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %t601 = load %nyx_string*, %nyx_string** %t600
  %t602 = getelementptr [4 x i8], [4 x i8]* @.str66, i32 0, i32 0
  %t603 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str66.c, i8* %t602, i64 3)
  %t604 = call i1 @nyx_string_equals(%nyx_string* %t601, %nyx_string* %t603)
  br i1 %t604, label %then71, label %else72
then71:
  %t605 = getelementptr [4 x i8], [4 x i8]* @.str67, i32 0, i32 0
  %t606 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str67.c, i8* %t605, i64 3)
  %t607 = call i8* @nyx_string_to_cstr(%nyx_string* %t606)
  call void @nyx_print_string(i8* %t607)
  br label %merge73
else72:
  %t608 = getelementptr [2 x i8], [2 x i8]* @.str68, i32 0, i32 0
  %t609 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str68.c, i8* %t608, i64 1)
  %t610 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %t611 = load %nyx_string*, %nyx_string** %t610
  %t612 = call %nyx_string* @nyx_string_concat(%nyx_string* %t609, %nyx_string* %t611)
  %t613 = getelementptr [2 x i8], [2 x i8]* @.str69, i32 0, i32 0
  %t614 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str69.c, i8* %t613, i64 1)
  %t615 = call %nyx_string* @nyx_string_concat(%nyx_string* %t612, %nyx_string* %t614)
  %t616 = call i8* @nyx_string_to_cstr(%nyx_string* %t615)
  call void @nyx_print_string(i8* %t616)
  br label %merge73
merge73:
  br label %merge70
merge70:
  br label %merge64
merge64:
  br label %merge61
merge61:
  br label %merge58
merge58:
  ret i64 0
}

define internal { i64, i8* }* @get_func_params(
%Value %func_value.param) {
  %func_value.ptr = alloca %Value
  store %Value %func_value.param, %Value* %func_value.ptr
  %t617 = getelementptr %Value, %Value* %func_value.ptr, i32 0, i32 6
  %t618 = load { i64, i8* }*, { i64, i8* }** %t617
  ret { i64, i8* }* %t618
}

define internal %nyx_string* @get_func_body_type(
%Value %func_value.param) {
  %func_value.ptr = alloca %Value
  store %Value %func_value.param, %Value* %func_value.ptr
  %t619 = getelementptr %Value, %Value* %func_value.ptr, i32 0, i32 7
  %t620 = load %nyx_string*, %nyx_string** %t619
  ret %nyx_string* %t620
}

define internal { i64, i8* }* @get_func_body_data(
%Value %func_value.param) {
  %func_value.ptr = alloca %Value
  store %Value %func_value.param, %Value* %func_value.ptr
  %t621 = getelementptr %Value, %Value* %func_value.ptr, i32 0, i32 8
  %t622 = load { i64, i8* }*, { i64, i8* }** %t621
  ret { i64, i8* }* %t622
}

define internal i8* @get_func_env_bindings(
%Value %func_value.param) {
  %func_value.ptr = alloca %Value
  store %Value %func_value.param, %Value* %func_value.ptr
  %t623 = getelementptr %Value, %Value* %func_value.ptr, i32 0, i32 9
  %t624 = load i8*, i8** %t623
  ret i8* %t624
}

define internal { i64, i8* }* @get_func_env_parent(
%Value %func_value.param) {
  %func_value.ptr = alloca %Value
  store %Value %func_value.param, %Value* %func_value.ptr
  %t625 = getelementptr %Value, %Value* %func_value.ptr, i32 0, i32 10
  %t626 = load { i64, i8* }*, { i64, i8* }** %t625
  ret { i64, i8* }* %t626
}

define internal %Environment @make_env(
) {
  %t628 = alloca i8*
  %t630 = alloca { i64, i8* }*
  %t627 = call i8* @nyx_map_new(i32 0)
  store i8* %t627, i8** %t628
  %t629 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t629, { i64, i8* }** %t630
  %t631 = getelementptr %Environment, %Environment* null, i32 1
  %t632 = ptrtoint %Environment* %t631 to i64
  %t633 = call i8* @GC_malloc(i64 %t632)
  %t634 = bitcast i8* %t633 to %Environment*
  %t635 = load i8*, i8** %t628
  %t636 = getelementptr %Environment, %Environment* %t634, i32 0, i32 0
  store i8* %t635, i8** %t636
  %t637 = load { i64, i8* }*, { i64, i8* }** %t630
  %t638 = getelementptr %Environment, %Environment* %t634, i32 0, i32 1
  store { i64, i8* }* %t637, { i64, i8* }** %t638
  %t639 = load %Environment, %Environment* %t634
  ret %Environment %t639
}

define internal %Environment @make_child_env(
%Environment %parent.param) {
  %parent.ptr = alloca %Environment
  %t641 = alloca i8*
  %t643 = alloca { i64, i8* }*
  store %Environment %parent.param, %Environment* %parent.ptr
  %t640 = call i8* @nyx_map_new(i32 0)
  store i8* %t640, i8** %t641
  %t642 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t642, { i64, i8* }** %t643
  %t644 = load { i64, i8* }*, { i64, i8* }** %t643
  %t645 = load %Environment, %Environment* %parent.ptr
  %t646 = getelementptr %Environment, %Environment* null, i32 1
  %t647 = ptrtoint %Environment* %t646 to i64
  %t648 = call i8* @GC_malloc(i64 %t647)
  %t649 = bitcast i8* %t648 to %Environment*
  store %Environment %t645, %Environment* %t649
  %t650 = ptrtoint %Environment* %t649 to i64
  call void @nyx_array_push({ i64, i8* }* %t644, i64 %t650)
  %t651 = getelementptr %Environment, %Environment* null, i32 1
  %t652 = ptrtoint %Environment* %t651 to i64
  %t653 = call i8* @GC_malloc(i64 %t652)
  %t654 = bitcast i8* %t653 to %Environment*
  %t655 = load i8*, i8** %t641
  %t656 = getelementptr %Environment, %Environment* %t654, i32 0, i32 0
  store i8* %t655, i8** %t656
  %t657 = load { i64, i8* }*, { i64, i8* }** %t643
  %t658 = getelementptr %Environment, %Environment* %t654, i32 0, i32 1
  store { i64, i8* }* %t657, { i64, i8* }** %t658
  %t659 = load %Environment, %Environment* %t654
  ret %Environment %t659
}

define internal i64 @env_define(
%Environment %env.param, %nyx_string* %name.param, %Value %value.param) {
  %env.ptr = alloca %Environment
  %name.ptr = alloca %nyx_string*
  %value.ptr = alloca %Value
  store %Environment %env.param, %Environment* %env.ptr
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  store %Value %value.param, %Value* %value.ptr
  %t660 = getelementptr %Environment, %Environment* %env.ptr, i32 0, i32 0
  %t661 = load i8*, i8** %t660
  %t662 = load %nyx_string*, %nyx_string** %name.ptr
  %t663 = load %Value, %Value* %value.ptr
  %t664 = call i8* @nyx_string_to_cstr(%nyx_string* %t662)
  %t665 = getelementptr %Value, %Value* null, i32 1
  %t666 = ptrtoint %Value* %t665 to i64
  %t667 = call i8* @GC_malloc(i64 %t666)
  %t668 = bitcast i8* %t667 to %Value*
  store %Value %t663, %Value* %t668
  %t669 = ptrtoint %Value* %t668 to i64
  call void @nyx_map_insert_int(i8* %t661, i8* %t664, i64 %t669)
  ret i64 0
}

define internal i1 @env_has(
%Environment %env.param, %nyx_string* %name.param) {
  %env.ptr = alloca %Environment
  %name.ptr = alloca %nyx_string*
  %t685 = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %t670 = getelementptr %Environment, %Environment* %env.ptr, i32 0, i32 0
  %t671 = load i8*, i8** %t670
  %t672 = load %nyx_string*, %nyx_string** %name.ptr
  %t673 = call i8* @nyx_string_to_cstr(%nyx_string* %t672)
  %t674 = call i1 @nyx_map_contains_str(i8* %t671, i8* %t673)
  br i1 %t674, label %then74, label %else75
then74:
  ret i1 1
else75:
  br label %merge76
merge76:
  %t675 = getelementptr %Environment, %Environment* %env.ptr, i32 0, i32 1
  %t676 = load { i64, i8* }*, { i64, i8* }** %t675
  %t677 = call i64 @nyx_array_length({ i64, i8* }* %t676)
  %t678 = icmp sgt i64 %t677, 0
  br i1 %t678, label %then77, label %else78
then77:
  %t679 = getelementptr %Environment, %Environment* %env.ptr, i32 0, i32 1
  %t680 = load { i64, i8* }*, { i64, i8* }** %t679
  %t681 = getelementptr [12 x i8], [12 x i8]* @.slotT70, i32 0, i32 0
  %t682 = call i64 @nyx_slot_as_value_checked({ i64, i8* }* %t680, i64 0, i8* %t681)
  %t683 = inttoptr i64 %t682 to %Environment*
  %t684 = load %Environment, %Environment* %t683
  store %Environment %t684, %Environment* %t685
  %t686 = load %Environment, %Environment* %t685
  %t687 = load %nyx_string*, %nyx_string** %name.ptr
  %t688 = call i1 @env_has(%Environment %t686, %nyx_string* %t687)
  ret i1 %t688
else78:
  br label %merge79
merge79:
  ret i1 0
}

define internal %Value @env_get(
%Environment %env.param, %nyx_string* %name.param) {
  %env.ptr = alloca %Environment
  %name.ptr = alloca %nyx_string*
  %t711 = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %t689 = getelementptr %Environment, %Environment* %env.ptr, i32 0, i32 0
  %t690 = load i8*, i8** %t689
  %t691 = load %nyx_string*, %nyx_string** %name.ptr
  %t692 = call i8* @nyx_string_to_cstr(%nyx_string* %t691)
  %t693 = call i1 @nyx_map_contains_str(i8* %t690, i8* %t692)
  br i1 %t693, label %then80, label %else81
then80:
  %t694 = getelementptr %Environment, %Environment* %env.ptr, i32 0, i32 0
  %t695 = load i8*, i8** %t694
  %t696 = load %nyx_string*, %nyx_string** %name.ptr
  %t697 = call i8* @nyx_string_to_cstr(%nyx_string* %t696)
  %t698 = call i64 @nyx_map_get_int(i8* %t695, i8* %t697)
  %t699 = inttoptr i64 %t698 to %Value*
  %t700 = load %Value, %Value* %t699
  ret %Value %t700
else81:
  br label %merge82
merge82:
  %t701 = getelementptr %Environment, %Environment* %env.ptr, i32 0, i32 1
  %t702 = load { i64, i8* }*, { i64, i8* }** %t701
  %t703 = call i64 @nyx_array_length({ i64, i8* }* %t702)
  %t704 = icmp sgt i64 %t703, 0
  br i1 %t704, label %then83, label %else84
then83:
  %t705 = getelementptr %Environment, %Environment* %env.ptr, i32 0, i32 1
  %t706 = load { i64, i8* }*, { i64, i8* }** %t705
  %t707 = getelementptr [12 x i8], [12 x i8]* @.slotT71, i32 0, i32 0
  %t708 = call i64 @nyx_slot_as_value_checked({ i64, i8* }* %t706, i64 0, i8* %t707)
  %t709 = inttoptr i64 %t708 to %Environment*
  %t710 = load %Environment, %Environment* %t709
  store %Environment %t710, %Environment* %t711
  %t712 = load %Environment, %Environment* %t711
  %t713 = load %nyx_string*, %nyx_string** %name.ptr
  %t714 = call %Value @env_get(%Environment %t712, %nyx_string* %t713)
  ret %Value %t714
else84:
  br label %merge85
merge85:
  %t715 = getelementptr [8 x i8], [8 x i8]* @.str72, i32 0, i32 0
  %t716 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str72.c, i8* %t715, i64 7)
  %t717 = getelementptr [23 x i8], [23 x i8]* @.str73, i32 0, i32 0
  %t718 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str73.c, i8* %t717, i64 22)
  %t719 = load %nyx_string*, %nyx_string** %name.ptr
  %t720 = call %nyx_string* @nyx_string_concat(%nyx_string* %t718, %nyx_string* %t719)
  %t721 = getelementptr [21 x i8], [21 x i8]* @.str74, i32 0, i32 0
  %t722 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str74.c, i8* %t721, i64 20)
  %t723 = load %nyx_string*, %nyx_string** %name.ptr
  %t724 = call %nyx_string* @nyx_string_concat(%nyx_string* %t722, %nyx_string* %t723)
  %t725 = call i64 @interp_err(%nyx_string* %t716, %nyx_string* %t720, %nyx_string* %t724)
  %t726 = call %Value @make_error()
  ret %Value %t726
}

define internal i1 @env_set(
%Environment %env.param, %nyx_string* %name.param, %Value %value.param) {
  %env.ptr = alloca %Environment
  %name.ptr = alloca %nyx_string*
  %value.ptr = alloca %Value
  %t752 = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  store %Value %value.param, %Value* %value.ptr
  %t727 = getelementptr %Environment, %Environment* %env.ptr, i32 0, i32 0
  %t728 = load i8*, i8** %t727
  %t729 = load %nyx_string*, %nyx_string** %name.ptr
  %t730 = call i8* @nyx_string_to_cstr(%nyx_string* %t729)
  %t731 = call i1 @nyx_map_contains_str(i8* %t728, i8* %t730)
  br i1 %t731, label %then86, label %else87
then86:
  %t732 = getelementptr %Environment, %Environment* %env.ptr, i32 0, i32 0
  %t733 = load i8*, i8** %t732
  %t734 = load %nyx_string*, %nyx_string** %name.ptr
  %t735 = load %Value, %Value* %value.ptr
  %t736 = call i8* @nyx_string_to_cstr(%nyx_string* %t734)
  %t737 = getelementptr %Value, %Value* null, i32 1
  %t738 = ptrtoint %Value* %t737 to i64
  %t739 = call i8* @GC_malloc(i64 %t738)
  %t740 = bitcast i8* %t739 to %Value*
  store %Value %t735, %Value* %t740
  %t741 = ptrtoint %Value* %t740 to i64
  call void @nyx_map_insert_int(i8* %t733, i8* %t736, i64 %t741)
  ret i1 1
else87:
  br label %merge88
merge88:
  %t742 = getelementptr %Environment, %Environment* %env.ptr, i32 0, i32 1
  %t743 = load { i64, i8* }*, { i64, i8* }** %t742
  %t744 = call i64 @nyx_array_length({ i64, i8* }* %t743)
  %t745 = icmp sgt i64 %t744, 0
  br i1 %t745, label %then89, label %else90
then89:
  %t746 = getelementptr %Environment, %Environment* %env.ptr, i32 0, i32 1
  %t747 = load { i64, i8* }*, { i64, i8* }** %t746
  %t748 = getelementptr [12 x i8], [12 x i8]* @.slotT75, i32 0, i32 0
  %t749 = call i64 @nyx_slot_as_value_checked({ i64, i8* }* %t747, i64 0, i8* %t748)
  %t750 = inttoptr i64 %t749 to %Environment*
  %t751 = load %Environment, %Environment* %t750
  store %Environment %t751, %Environment* %t752
  %t753 = load %Environment, %Environment* %t752
  %t754 = load %nyx_string*, %nyx_string** %name.ptr
  %t755 = load %Value, %Value* %value.ptr
  %t756 = call i1 @env_set(%Environment %t753, %nyx_string* %t754, %Value %t755)
  ret i1 %t756
else90:
  br label %merge91
merge91:
  ret i1 0
}

define internal %Value @eval_expr(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  %env.ptr = alloca %Environment
  %t759 = alloca %nyx_string*
  %t772 = alloca { i64, i8* }*
  %t775 = alloca i64
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  store %Environment %env.param, %Environment* %env.ptr
  %t757 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %t758 = call %nyx_string* @astnode_get_type({ i64, i8* }* %t757)
  store %nyx_string* %t758, %nyx_string** %t759
  %t760 = load %nyx_string*, %nyx_string** %t759
  %t761 = getelementptr [7 x i8], [7 x i8]* @.str76, i32 0, i32 0
  %t762 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str76.c, i8* %t761, i64 6)
  %t763 = call i1 @nyx_string_equals(%nyx_string* %t760, %nyx_string* %t762)
  br i1 %t763, label %then92, label %else93
then92:
  %t764 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %t765 = call %Value @eval_number({ i64, i8* }* %t764)
  ret %Value %t765
else93:
  br label %merge94
merge94:
  %t766 = load %nyx_string*, %nyx_string** %t759
  %t767 = getelementptr [8 x i8], [8 x i8]* @.str77, i32 0, i32 0
  %t768 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str77.c, i8* %t767, i64 7)
  %t769 = call i1 @nyx_string_equals(%nyx_string* %t766, %nyx_string* %t768)
  br i1 %t769, label %then95, label %else96
then95:
  %t770 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %t771 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %t770)
  store { i64, i8* }* %t771, { i64, i8* }** %t772
  %t773 = load { i64, i8* }*, { i64, i8* }** %t772
  %t774 = call i64 @nyx_slot_as_int_checked({ i64, i8* }* %t773, i64 0)
  store i64 %t774, i64* %t775
  %t776 = load i64, i64* %t775
  %t777 = call %Value @make_int(i64 %t776)
  ret %Value %t777
else96:
  br label %merge97
merge97:
  %t778 = load %nyx_string*, %nyx_string** %t759
  %t779 = getelementptr [5 x i8], [5 x i8]* @.str78, i32 0, i32 0
  %t780 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str78.c, i8* %t779, i64 4)
  %t781 = call i1 @nyx_string_equals(%nyx_string* %t778, %nyx_string* %t780)
  br i1 %t781, label %then98, label %else99
then98:
  %t782 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %t783 = call %Value @eval_bool({ i64, i8* }* %t782)
  ret %Value %t783
else99:
  br label %merge100
merge100:
  %t784 = load %nyx_string*, %nyx_string** %t759
  %t785 = getelementptr [7 x i8], [7 x i8]* @.str79, i32 0, i32 0
  %t786 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str79.c, i8* %t785, i64 6)
  %t787 = call i1 @nyx_string_equals(%nyx_string* %t784, %nyx_string* %t786)
  br i1 %t787, label %then101, label %else102
then101:
  %t788 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %t789 = call %Value @eval_string({ i64, i8* }* %t788)
  ret %Value %t789
else102:
  br label %merge103
merge103:
  %t790 = load %nyx_string*, %nyx_string** %t759
  %t791 = getelementptr [11 x i8], [11 x i8]* @.str80, i32 0, i32 0
  %t792 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str80.c, i8* %t791, i64 10)
  %t793 = call i1 @nyx_string_equals(%nyx_string* %t790, %nyx_string* %t792)
  br i1 %t793, label %then104, label %else105
then104:
  %t794 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %t795 = load %Environment, %Environment* %env.ptr
  %t796 = call %Value @eval_identifier({ i64, i8* }* %t794, %Environment %t795)
  ret %Value %t796
else105:
  br label %merge106
merge106:
  %t797 = load %nyx_string*, %nyx_string** %t759
  %t798 = getelementptr [6 x i8], [6 x i8]* @.str81, i32 0, i32 0
  %t799 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str81.c, i8* %t798, i64 5)
  %t800 = call i1 @nyx_string_equals(%nyx_string* %t797, %nyx_string* %t799)
  br i1 %t800, label %then107, label %else108
then107:
  %t801 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %t802 = load %Environment, %Environment* %env.ptr
  %t803 = call %Value @eval_binop({ i64, i8* }* %t801, %Environment %t802)
  ret %Value %t803
else108:
  br label %merge109
merge109:
  %t804 = load %nyx_string*, %nyx_string** %t759
  %t805 = getelementptr [5 x i8], [5 x i8]* @.str82, i32 0, i32 0
  %t806 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str82.c, i8* %t805, i64 4)
  %t807 = call i1 @nyx_string_equals(%nyx_string* %t804, %nyx_string* %t806)
  br i1 %t807, label %then110, label %else111
then110:
  %t808 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %t809 = load %Environment, %Environment* %env.ptr
  %t810 = call %Value @eval_unop({ i64, i8* }* %t808, %Environment %t809)
  ret %Value %t810
else111:
  br label %merge112
merge112:
  %t811 = load %nyx_string*, %nyx_string** %t759
  %t812 = getelementptr [5 x i8], [5 x i8]* @.str83, i32 0, i32 0
  %t813 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str83.c, i8* %t812, i64 4)
  %t814 = call i1 @nyx_string_equals(%nyx_string* %t811, %nyx_string* %t813)
  br i1 %t814, label %then113, label %else114
then113:
  %t815 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %t816 = load %Environment, %Environment* %env.ptr
  %t817 = call %Value @eval_call({ i64, i8* }* %t815, %Environment %t816)
  ret %Value %t817
else114:
  br label %merge115
merge115:
  %t818 = load %nyx_string*, %nyx_string** %t759
  %t819 = getelementptr [6 x i8], [6 x i8]* @.str84, i32 0, i32 0
  %t820 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str84.c, i8* %t819, i64 5)
  %t821 = call i1 @nyx_string_equals(%nyx_string* %t818, %nyx_string* %t820)
  br i1 %t821, label %then116, label %else117
then116:
  %t822 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %t823 = load %Environment, %Environment* %env.ptr
  %t824 = call %Value @eval_array({ i64, i8* }* %t822, %Environment %t823)
  ret %Value %t824
else117:
  br label %merge118
merge118:
  %t825 = load %nyx_string*, %nyx_string** %t759
  %t826 = getelementptr [6 x i8], [6 x i8]* @.str85, i32 0, i32 0
  %t827 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str85.c, i8* %t826, i64 5)
  %t828 = call i1 @nyx_string_equals(%nyx_string* %t825, %nyx_string* %t827)
  br i1 %t828, label %then119, label %else120
then119:
  %t829 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %t830 = load %Environment, %Environment* %env.ptr
  %t831 = call %Value @eval_index({ i64, i8* }* %t829, %Environment %t830)
  ret %Value %t831
else120:
  br label %merge121
merge121:
  %t832 = load %nyx_string*, %nyx_string** %t759
  %t833 = getelementptr [12 x i8], [12 x i8]* @.str86, i32 0, i32 0
  %t834 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str86.c, i8* %t833, i64 11)
  %t835 = call i1 @nyx_string_equals(%nyx_string* %t832, %nyx_string* %t834)
  br i1 %t835, label %then122, label %else123
then122:
  %t836 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %t837 = load %Environment, %Environment* %env.ptr
  %t838 = call %Value @eval_method_call({ i64, i8* }* %t836, %Environment %t837)
  ret %Value %t838
else123:
  br label %merge124
merge124:
  %t839 = getelementptr [8 x i8], [8 x i8]* @.str87, i32 0, i32 0
  %t840 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str87.c, i8* %t839, i64 7)
  %t841 = getelementptr [45 x i8], [45 x i8]* @.str88, i32 0, i32 0
  %t842 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str88.c, i8* %t841, i64 44)
  %t843 = load %nyx_string*, %nyx_string** %t759
  %t844 = call %nyx_string* @nyx_string_concat(%nyx_string* %t842, %nyx_string* %t843)
  %t845 = getelementptr [46 x i8], [46 x i8]* @.str89, i32 0, i32 0
  %t846 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str89.c, i8* %t845, i64 45)
  %t847 = load %nyx_string*, %nyx_string** %t759
  %t848 = call %nyx_string* @nyx_string_concat(%nyx_string* %t846, %nyx_string* %t847)
  %t849 = call i64 @interp_err(%nyx_string* %t840, %nyx_string* %t844, %nyx_string* %t848)
  %t850 = call %Value @make_error()
  ret %Value %t850
}

define internal %Value @eval_number(
{ i64, i8* }* %node.param) {
  %node.ptr = alloca { i64, i8* }*
  %t853 = alloca { i64, i8* }*
  %t857 = alloca %nyx_string*
  %t865 = alloca double
  %t877 = alloca i64
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %t851 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %t852 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %t851)
  store { i64, i8* }* %t852, { i64, i8* }** %t853
  %t854 = load { i64, i8* }*, { i64, i8* }** %t853
  %t855 = call i64 @nyx_array_get_checked({ i64, i8* }* %t854, i64 0, i64 2)
  %t856 = inttoptr i64 %t855 to %nyx_string*
  store %nyx_string* %t856, %nyx_string** %t857
  %t858 = load %nyx_string*, %nyx_string** %t857
  %t859 = getelementptr [2 x i8], [2 x i8]* @.str90, i32 0, i32 0
  %t860 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str90.c, i8* %t859, i64 1)
  %t861 = call i64 @nyx_string_index_of(%nyx_string* %t858, %nyx_string* %t860)
  %t862 = icmp sge i64 %t861, 0
  br i1 %t862, label %then125, label %else126
then125:
  %t863 = load %nyx_string*, %nyx_string** %t857
  %t864 = call double @nyx_string_to_float(%nyx_string* %t863)
  store double %t864, double* %t865
  %t866 = load double, double* %t865
  %t867 = call %Value @make_float(double %t866)
  ret %Value %t867
else126:
  br label %merge127
merge127:
  %t868 = load %nyx_string*, %nyx_string** %t857
  %t869 = getelementptr [20 x i8], [20 x i8]* @.str91, i32 0, i32 0
  %t870 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str91.c, i8* %t869, i64 19)
  %t871 = call i1 @nyx_string_equals(%nyx_string* %t868, %nyx_string* %t870)
  br i1 %t871, label %then128, label %else129
then128:
  %t872 = sub i64 0, 9223372036854775807
  %t873 = sub i64 %t872, 1
  %t874 = call %Value @make_int(i64 %t873)
  ret %Value %t874
else129:
  br label %merge130
merge130:
  %t875 = load %nyx_string*, %nyx_string** %t857
  %t876 = call i64 @nyx_string_to_int_or(%nyx_string* %t875, i64 0)
  store i64 %t876, i64* %t877
  %t878 = load i64, i64* %t877
  %t879 = load %nyx_string*, %nyx_string** %t857
  %t880 = call i64 @nyx_string_to_int_or(%nyx_string* %t879, i64 1)
  %t881 = icmp ne i64 %t878, %t880
  br i1 %t881, label %then131, label %else132
then131:
  %t882 = getelementptr [8 x i8], [8 x i8]* @.str92, i32 0, i32 0
  %t883 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str92.c, i8* %t882, i64 7)
  %t884 = getelementptr [19 x i8], [19 x i8]* @.str93, i32 0, i32 0
  %t885 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str93.c, i8* %t884, i64 18)
  %t886 = load %nyx_string*, %nyx_string** %t857
  %t887 = call %nyx_string* @nyx_string_concat(%nyx_string* %t885, %nyx_string* %t886)
  %t888 = getelementptr [30 x i8], [30 x i8]* @.str94, i32 0, i32 0
  %t889 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str94.c, i8* %t888, i64 29)
  %t890 = call %nyx_string* @nyx_string_concat(%nyx_string* %t887, %nyx_string* %t889)
  %t891 = getelementptr [17 x i8], [17 x i8]* @.str95, i32 0, i32 0
  %t892 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str95.c, i8* %t891, i64 16)
  %t893 = load %nyx_string*, %nyx_string** %t857
  %t894 = call %nyx_string* @nyx_string_concat(%nyx_string* %t892, %nyx_string* %t893)
  %t895 = getelementptr [34 x i8], [34 x i8]* @.str96, i32 0, i32 0
  %t896 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str96.c, i8* %t895, i64 33)
  %t897 = call %nyx_string* @nyx_string_concat(%nyx_string* %t894, %nyx_string* %t896)
  %t898 = call i64 @interp_err(%nyx_string* %t883, %nyx_string* %t890, %nyx_string* %t897)
  %t899 = call %Value @make_error()
  ret %Value %t899
else132:
  br label %merge133
merge133:
  %t900 = load i64, i64* %t877
  %t901 = call %Value @make_int(i64 %t900)
  ret %Value %t901
}

define internal %Value @eval_bool(
{ i64, i8* }* %node.param) {
  %node.ptr = alloca { i64, i8* }*
  %t904 = alloca { i64, i8* }*
  %t908 = alloca %nyx_string*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %t902 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %t903 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %t902)
  store { i64, i8* }* %t903, { i64, i8* }** %t904
  %t905 = load { i64, i8* }*, { i64, i8* }** %t904
  %t906 = call i64 @nyx_array_get_checked({ i64, i8* }* %t905, i64 0, i64 2)
  %t907 = inttoptr i64 %t906 to %nyx_string*
  store %nyx_string* %t907, %nyx_string** %t908
  %t909 = load %nyx_string*, %nyx_string** %t908
  %t910 = getelementptr [5 x i8], [5 x i8]* @.str97, i32 0, i32 0
  %t911 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str97.c, i8* %t910, i64 4)
  %t912 = call i1 @nyx_string_equals(%nyx_string* %t909, %nyx_string* %t911)
  %t913 = call %Value @make_bool(i1 %t912)
  ret %Value %t913
}

define internal %Value @eval_string(
{ i64, i8* }* %node.param) {
  %node.ptr = alloca { i64, i8* }*
  %t916 = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %t914 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %t915 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %t914)
  store { i64, i8* }* %t915, { i64, i8* }** %t916
  %t917 = load { i64, i8* }*, { i64, i8* }** %t916
  %t918 = call i64 @nyx_array_get({ i64, i8* }* %t917, i64 0)
  %t919 = inttoptr i64 %t918 to %nyx_string*
  %t920 = call %Value @make_string(%nyx_string* %t919)
  ret %Value %t920
}

define internal %Value @eval_identifier(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  %env.ptr = alloca %Environment
  %t923 = alloca { i64, i8* }*
  %t927 = alloca %nyx_string*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  store %Environment %env.param, %Environment* %env.ptr
  %t921 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %t922 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %t921)
  store { i64, i8* }* %t922, { i64, i8* }** %t923
  %t924 = load { i64, i8* }*, { i64, i8* }** %t923
  %t925 = call i64 @nyx_array_get_checked({ i64, i8* }* %t924, i64 0, i64 2)
  %t926 = inttoptr i64 %t925 to %nyx_string*
  store %nyx_string* %t926, %nyx_string** %t927
  %t928 = load %Environment, %Environment* %env.ptr
  %t929 = load %nyx_string*, %nyx_string** %t927
  %t930 = call %Value @env_get(%Environment %t928, %nyx_string* %t929)
  ret %Value %t930
}

define internal %Value @eval_binop(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  %env.ptr = alloca %Environment
  %t933 = alloca { i64, i8* }*
  %t937 = alloca %nyx_string*
  %t941 = alloca { i64, i8* }*
  %t945 = alloca %Value
  %t955 = alloca { i64, i8* }*
  %t959 = alloca %Value
  %t966 = alloca i1
  %t978 = alloca i1
  %t990 = alloca %nyx_string*
  %t993 = alloca %nyx_string*
  %t1052 = alloca double
  %t1060 = alloca i64
  %t1082 = alloca i64
  %t1085 = alloca i64
  %t1185 = alloca i1
  %t1195 = alloca i1
  %t1202 = alloca i1
  %t1212 = alloca i1
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  store %Environment %env.param, %Environment* %env.ptr
  %t931 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %t932 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %t931)
  store { i64, i8* }* %t932, { i64, i8* }** %t933
  %t934 = load { i64, i8* }*, { i64, i8* }** %t933
  %t935 = call i64 @nyx_array_get_checked({ i64, i8* }* %t934, i64 0, i64 2)
  %t936 = inttoptr i64 %t935 to %nyx_string*
  store %nyx_string* %t936, %nyx_string** %t937
  %t938 = load { i64, i8* }*, { i64, i8* }** %t933
  %t939 = call i64 @nyx_array_get({ i64, i8* }* %t938, i64 1)
  %t940 = inttoptr i64 %t939 to { i64, i8* }*
  store { i64, i8* }* %t940, { i64, i8* }** %t941
  %t942 = load { i64, i8* }*, { i64, i8* }** %t941
  %t943 = load %Environment, %Environment* %env.ptr
  %t944 = call %Value @eval_expr({ i64, i8* }* %t942, %Environment %t943)
  store %Value %t944, %Value* %t945
  %t946 = getelementptr %Value, %Value* %t945, i32 0, i32 0
  %t947 = load %nyx_string*, %nyx_string** %t946
  %t948 = getelementptr [6 x i8], [6 x i8]* @.str98, i32 0, i32 0
  %t949 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str98.c, i8* %t948, i64 5)
  %t950 = call i1 @nyx_string_equals(%nyx_string* %t947, %nyx_string* %t949)
  br i1 %t950, label %then134, label %else135
then134:
  %t951 = load %Value, %Value* %t945
  ret %Value %t951
else135:
  br label %merge136
merge136:
  %t952 = load { i64, i8* }*, { i64, i8* }** %t933
  %t953 = call i64 @nyx_array_get({ i64, i8* }* %t952, i64 2)
  %t954 = inttoptr i64 %t953 to { i64, i8* }*
  store { i64, i8* }* %t954, { i64, i8* }** %t955
  %t956 = load { i64, i8* }*, { i64, i8* }** %t955
  %t957 = load %Environment, %Environment* %env.ptr
  %t958 = call %Value @eval_expr({ i64, i8* }* %t956, %Environment %t957)
  store %Value %t958, %Value* %t959
  %t960 = getelementptr %Value, %Value* %t959, i32 0, i32 0
  %t961 = load %nyx_string*, %nyx_string** %t960
  %t962 = getelementptr [6 x i8], [6 x i8]* @.str99, i32 0, i32 0
  %t963 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str99.c, i8* %t962, i64 5)
  %t964 = call i1 @nyx_string_equals(%nyx_string* %t961, %nyx_string* %t963)
  br i1 %t964, label %then137, label %else138
then137:
  %t965 = load %Value, %Value* %t959
  ret %Value %t965
else138:
  br label %merge139
merge139:
  store i1 true, i1* %t966
  %t967 = getelementptr %Value, %Value* %t945, i32 0, i32 0
  %t968 = load %nyx_string*, %nyx_string** %t967
  %t969 = getelementptr [6 x i8], [6 x i8]* @.str100, i32 0, i32 0
  %t970 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str100.c, i8* %t969, i64 5)
  %t971 = call i1 @nyx_string_equals(%nyx_string* %t968, %nyx_string* %t970)
  br i1 %t971, label %sc_or_end141, label %sc_or_rhs140
sc_or_rhs140:
  %t972 = getelementptr %Value, %Value* %t959, i32 0, i32 0
  %t973 = load %nyx_string*, %nyx_string** %t972
  %t974 = getelementptr [6 x i8], [6 x i8]* @.str101, i32 0, i32 0
  %t975 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str101.c, i8* %t974, i64 5)
  %t976 = call i1 @nyx_string_equals(%nyx_string* %t973, %nyx_string* %t975)
  store i1 %t976, i1* %t966
  br label %sc_or_end141
sc_or_end141:
  %t977 = load i1, i1* %t966
  store i1 %t977, i1* %t978
  %t979 = load %nyx_string*, %nyx_string** %t937
  %t980 = getelementptr [5 x i8], [5 x i8]* @.str102, i32 0, i32 0
  %t981 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str102.c, i8* %t980, i64 4)
  %t982 = call i1 @nyx_string_equals(%nyx_string* %t979, %nyx_string* %t981)
  br i1 %t982, label %then142, label %else143
then142:
  %t983 = getelementptr %Value, %Value* %t945, i32 0, i32 0
  %t984 = load %nyx_string*, %nyx_string** %t983
  %t985 = getelementptr [7 x i8], [7 x i8]* @.str103, i32 0, i32 0
  %t986 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str103.c, i8* %t985, i64 6)
  %t987 = call i1 @nyx_string_equals(%nyx_string* %t984, %nyx_string* %t986)
  br i1 %t987, label %then145, label %else146
then145:
  %t988 = load %Value, %Value* %t945
  %t989 = call %nyx_string* @value_to_string(%Value %t988)
  store %nyx_string* %t989, %nyx_string** %t990
  %t991 = load %Value, %Value* %t959
  %t992 = call %nyx_string* @value_to_string(%Value %t991)
  store %nyx_string* %t992, %nyx_string** %t993
  %t994 = load %nyx_string*, %nyx_string** %t990
  %t995 = load %nyx_string*, %nyx_string** %t993
  %t996 = call %nyx_string* @nyx_string_concat(%nyx_string* %t994, %nyx_string* %t995)
  %t997 = call %Value @make_string(%nyx_string* %t996)
  ret %Value %t997
else146:
  br label %merge147
merge147:
  %t998 = load i1, i1* %t978
  br i1 %t998, label %then148, label %else149
then148:
  %t999 = load %Value, %Value* %t945
  %t1000 = call double @value_to_float(%Value %t999)
  %t1001 = load %Value, %Value* %t959
  %t1002 = call double @value_to_float(%Value %t1001)
  %t1003 = fadd double %t1000, %t1002
  %t1004 = call %Value @make_float(double %t1003)
  ret %Value %t1004
else149:
  br label %merge150
merge150:
  %t1005 = load %Value, %Value* %t945
  %t1006 = call i64 @value_to_int(%Value %t1005)
  %t1007 = load %Value, %Value* %t959
  %t1008 = call i64 @value_to_int(%Value %t1007)
  %t1009 = add i64 %t1006, %t1008
  %t1010 = call %Value @make_int(i64 %t1009)
  ret %Value %t1010
else143:
  br label %merge144
merge144:
  %t1011 = load %nyx_string*, %nyx_string** %t937
  %t1012 = getelementptr [6 x i8], [6 x i8]* @.str104, i32 0, i32 0
  %t1013 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str104.c, i8* %t1012, i64 5)
  %t1014 = call i1 @nyx_string_equals(%nyx_string* %t1011, %nyx_string* %t1013)
  br i1 %t1014, label %then151, label %else152
then151:
  %t1015 = load i1, i1* %t978
  br i1 %t1015, label %then154, label %else155
then154:
  %t1016 = load %Value, %Value* %t945
  %t1017 = call double @value_to_float(%Value %t1016)
  %t1018 = load %Value, %Value* %t959
  %t1019 = call double @value_to_float(%Value %t1018)
  %t1020 = fsub double %t1017, %t1019
  %t1021 = call %Value @make_float(double %t1020)
  ret %Value %t1021
else155:
  br label %merge156
merge156:
  %t1022 = load %Value, %Value* %t945
  %t1023 = call i64 @value_to_int(%Value %t1022)
  %t1024 = load %Value, %Value* %t959
  %t1025 = call i64 @value_to_int(%Value %t1024)
  %t1026 = sub i64 %t1023, %t1025
  %t1027 = call %Value @make_int(i64 %t1026)
  ret %Value %t1027
else152:
  br label %merge153
merge153:
  %t1028 = load %nyx_string*, %nyx_string** %t937
  %t1029 = getelementptr [5 x i8], [5 x i8]* @.str105, i32 0, i32 0
  %t1030 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str105.c, i8* %t1029, i64 4)
  %t1031 = call i1 @nyx_string_equals(%nyx_string* %t1028, %nyx_string* %t1030)
  br i1 %t1031, label %then157, label %else158
then157:
  %t1032 = load i1, i1* %t978
  br i1 %t1032, label %then160, label %else161
then160:
  %t1033 = load %Value, %Value* %t945
  %t1034 = call double @value_to_float(%Value %t1033)
  %t1035 = load %Value, %Value* %t959
  %t1036 = call double @value_to_float(%Value %t1035)
  %t1037 = fmul double %t1034, %t1036
  %t1038 = call %Value @make_float(double %t1037)
  ret %Value %t1038
else161:
  br label %merge162
merge162:
  %t1039 = load %Value, %Value* %t945
  %t1040 = call i64 @value_to_int(%Value %t1039)
  %t1041 = load %Value, %Value* %t959
  %t1042 = call i64 @value_to_int(%Value %t1041)
  %t1043 = mul i64 %t1040, %t1042
  %t1044 = call %Value @make_int(i64 %t1043)
  ret %Value %t1044
else158:
  br label %merge159
merge159:
  %t1045 = load %nyx_string*, %nyx_string** %t937
  %t1046 = getelementptr [6 x i8], [6 x i8]* @.str106, i32 0, i32 0
  %t1047 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str106.c, i8* %t1046, i64 5)
  %t1048 = call i1 @nyx_string_equals(%nyx_string* %t1045, %nyx_string* %t1047)
  br i1 %t1048, label %then163, label %else164
then163:
  %t1049 = load i1, i1* %t978
  br i1 %t1049, label %then166, label %else167
then166:
  %t1050 = load %Value, %Value* %t959
  %t1051 = call double @value_to_float(%Value %t1050)
  store double %t1051, double* %t1052
  %t1053 = load %Value, %Value* %t945
  %t1054 = call double @value_to_float(%Value %t1053)
  %t1055 = load double, double* %t1052
  %t1056 = fdiv double %t1054, %t1055
  %t1057 = call %Value @make_float(double %t1056)
  ret %Value %t1057
else167:
  br label %merge168
merge168:
  %t1058 = load %Value, %Value* %t959
  %t1059 = call i64 @value_to_int(%Value %t1058)
  store i64 %t1059, i64* %t1060
  %t1061 = load i64, i64* %t1060
  %t1062 = icmp ne i64 %t1061, 0
  br i1 %t1062, label %then169, label %else170
then169:
  %t1063 = load %Value, %Value* %t945
  %t1064 = call i64 @value_to_int(%Value %t1063)
  %t1065 = load i64, i64* %t1060
  %t1066 = sdiv i64 %t1064, %t1065
  %t1067 = call %Value @make_int(i64 %t1066)
  ret %Value %t1067
else170:
  br label %merge171
merge171:
  %t1068 = getelementptr [8 x i8], [8 x i8]* @.str107, i32 0, i32 0
  %t1069 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str107.c, i8* %t1068, i64 7)
  %t1070 = getelementptr [19 x i8], [19 x i8]* @.str108, i32 0, i32 0
  %t1071 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str108.c, i8* %t1070, i64 18)
  %t1072 = getelementptr [17 x i8], [17 x i8]* @.str109, i32 0, i32 0
  %t1073 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str109.c, i8* %t1072, i64 16)
  %t1074 = call i64 @interp_err(%nyx_string* %t1069, %nyx_string* %t1071, %nyx_string* %t1073)
  %t1075 = call %Value @make_error()
  ret %Value %t1075
else164:
  br label %merge165
merge165:
  %t1076 = load %nyx_string*, %nyx_string** %t937
  %t1077 = getelementptr [8 x i8], [8 x i8]* @.str110, i32 0, i32 0
  %t1078 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str110.c, i8* %t1077, i64 7)
  %t1079 = call i1 @nyx_string_equals(%nyx_string* %t1076, %nyx_string* %t1078)
  br i1 %t1079, label %then172, label %else173
then172:
  %t1080 = load %Value, %Value* %t945
  %t1081 = call i64 @value_to_int(%Value %t1080)
  store i64 %t1081, i64* %t1082
  %t1083 = load %Value, %Value* %t959
  %t1084 = call i64 @value_to_int(%Value %t1083)
  store i64 %t1084, i64* %t1085
  %t1086 = load i64, i64* %t1085
  %t1087 = icmp eq i64 %t1086, 0
  br i1 %t1087, label %then175, label %else176
then175:
  %t1088 = getelementptr [8 x i8], [8 x i8]* @.str111, i32 0, i32 0
  %t1089 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str111.c, i8* %t1088, i64 7)
  %t1090 = getelementptr [17 x i8], [17 x i8]* @.str112, i32 0, i32 0
  %t1091 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str112.c, i8* %t1090, i64 16)
  %t1092 = getelementptr [15 x i8], [15 x i8]* @.str113, i32 0, i32 0
  %t1093 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str113.c, i8* %t1092, i64 14)
  %t1094 = call i64 @interp_err(%nyx_string* %t1089, %nyx_string* %t1091, %nyx_string* %t1093)
  %t1095 = call %Value @make_error()
  ret %Value %t1095
else176:
  br label %merge177
merge177:
  %t1096 = load i64, i64* %t1082
  %t1097 = load i64, i64* %t1085
  %t1098 = srem i64 %t1096, %t1097
  %t1099 = call %Value @make_int(i64 %t1098)
  ret %Value %t1099
else173:
  br label %merge174
merge174:
  %t1100 = load %nyx_string*, %nyx_string** %t937
  %t1101 = getelementptr [12 x i8], [12 x i8]* @.str114, i32 0, i32 0
  %t1102 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str114.c, i8* %t1101, i64 11)
  %t1103 = call i1 @nyx_string_equals(%nyx_string* %t1100, %nyx_string* %t1102)
  br i1 %t1103, label %then178, label %else179
then178:
  %t1104 = load %Value, %Value* %t945
  %t1105 = load %Value, %Value* %t959
  %t1106 = call i1 @values_equal(%Value %t1104, %Value %t1105)
  %t1107 = call %Value @make_bool(i1 %t1106)
  ret %Value %t1107
else179:
  br label %merge180
merge180:
  %t1108 = load %nyx_string*, %nyx_string** %t937
  %t1109 = getelementptr [10 x i8], [10 x i8]* @.str115, i32 0, i32 0
  %t1110 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str115.c, i8* %t1109, i64 9)
  %t1111 = call i1 @nyx_string_equals(%nyx_string* %t1108, %nyx_string* %t1110)
  br i1 %t1111, label %then181, label %else182
then181:
  %t1112 = load %Value, %Value* %t945
  %t1113 = load %Value, %Value* %t959
  %t1114 = call i1 @values_equal(%Value %t1112, %Value %t1113)
  %t1115 = xor i1 %t1114, true
  %t1116 = call %Value @make_bool(i1 %t1115)
  ret %Value %t1116
else182:
  br label %merge183
merge183:
  %t1117 = load %nyx_string*, %nyx_string** %t937
  %t1118 = getelementptr [5 x i8], [5 x i8]* @.str116, i32 0, i32 0
  %t1119 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str116.c, i8* %t1118, i64 4)
  %t1120 = call i1 @nyx_string_equals(%nyx_string* %t1117, %nyx_string* %t1119)
  br i1 %t1120, label %then184, label %else185
then184:
  %t1121 = load i1, i1* %t978
  br i1 %t1121, label %then187, label %else188
then187:
  %t1122 = load %Value, %Value* %t945
  %t1123 = call double @value_to_float(%Value %t1122)
  %t1124 = load %Value, %Value* %t959
  %t1125 = call double @value_to_float(%Value %t1124)
  %t1126 = fcmp olt double %t1123, %t1125
  %t1127 = call %Value @make_bool(i1 %t1126)
  ret %Value %t1127
else188:
  br label %merge189
merge189:
  %t1128 = load %Value, %Value* %t945
  %t1129 = call i64 @value_to_int(%Value %t1128)
  %t1130 = load %Value, %Value* %t959
  %t1131 = call i64 @value_to_int(%Value %t1130)
  %t1132 = icmp slt i64 %t1129, %t1131
  %t1133 = call %Value @make_bool(i1 %t1132)
  ret %Value %t1133
else185:
  br label %merge186
merge186:
  %t1134 = load %nyx_string*, %nyx_string** %t937
  %t1135 = getelementptr [8 x i8], [8 x i8]* @.str117, i32 0, i32 0
  %t1136 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str117.c, i8* %t1135, i64 7)
  %t1137 = call i1 @nyx_string_equals(%nyx_string* %t1134, %nyx_string* %t1136)
  br i1 %t1137, label %then190, label %else191
then190:
  %t1138 = load i1, i1* %t978
  br i1 %t1138, label %then193, label %else194
then193:
  %t1139 = load %Value, %Value* %t945
  %t1140 = call double @value_to_float(%Value %t1139)
  %t1141 = load %Value, %Value* %t959
  %t1142 = call double @value_to_float(%Value %t1141)
  %t1143 = fcmp ogt double %t1140, %t1142
  %t1144 = call %Value @make_bool(i1 %t1143)
  ret %Value %t1144
else194:
  br label %merge195
merge195:
  %t1145 = load %Value, %Value* %t945
  %t1146 = call i64 @value_to_int(%Value %t1145)
  %t1147 = load %Value, %Value* %t959
  %t1148 = call i64 @value_to_int(%Value %t1147)
  %t1149 = icmp sgt i64 %t1146, %t1148
  %t1150 = call %Value @make_bool(i1 %t1149)
  ret %Value %t1150
else191:
  br label %merge192
merge192:
  %t1151 = load %nyx_string*, %nyx_string** %t937
  %t1152 = getelementptr [11 x i8], [11 x i8]* @.str118, i32 0, i32 0
  %t1153 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str118.c, i8* %t1152, i64 10)
  %t1154 = call i1 @nyx_string_equals(%nyx_string* %t1151, %nyx_string* %t1153)
  br i1 %t1154, label %then196, label %else197
then196:
  %t1155 = load i1, i1* %t978
  br i1 %t1155, label %then199, label %else200
then199:
  %t1156 = load %Value, %Value* %t945
  %t1157 = call double @value_to_float(%Value %t1156)
  %t1158 = load %Value, %Value* %t959
  %t1159 = call double @value_to_float(%Value %t1158)
  %t1160 = fcmp ole double %t1157, %t1159
  %t1161 = call %Value @make_bool(i1 %t1160)
  ret %Value %t1161
else200:
  br label %merge201
merge201:
  %t1162 = load %Value, %Value* %t945
  %t1163 = call i64 @value_to_int(%Value %t1162)
  %t1164 = load %Value, %Value* %t959
  %t1165 = call i64 @value_to_int(%Value %t1164)
  %t1166 = icmp sle i64 %t1163, %t1165
  %t1167 = call %Value @make_bool(i1 %t1166)
  ret %Value %t1167
else197:
  br label %merge198
merge198:
  %t1168 = load %nyx_string*, %nyx_string** %t937
  %t1169 = getelementptr [14 x i8], [14 x i8]* @.str119, i32 0, i32 0
  %t1170 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str119.c, i8* %t1169, i64 13)
  %t1171 = call i1 @nyx_string_equals(%nyx_string* %t1168, %nyx_string* %t1170)
  br i1 %t1171, label %then202, label %else203
then202:
  %t1172 = load i1, i1* %t978
  br i1 %t1172, label %then205, label %else206
then205:
  %t1173 = load %Value, %Value* %t945
  %t1174 = call double @value_to_float(%Value %t1173)
  %t1175 = load %Value, %Value* %t959
  %t1176 = call double @value_to_float(%Value %t1175)
  %t1177 = fcmp oge double %t1174, %t1176
  %t1178 = call %Value @make_bool(i1 %t1177)
  ret %Value %t1178
else206:
  br label %merge207
merge207:
  %t1179 = load %Value, %Value* %t945
  %t1180 = call i64 @value_to_int(%Value %t1179)
  %t1181 = load %Value, %Value* %t959
  %t1182 = call i64 @value_to_int(%Value %t1181)
  %t1183 = icmp sge i64 %t1180, %t1182
  %t1184 = call %Value @make_bool(i1 %t1183)
  ret %Value %t1184
else203:
  br label %merge204
merge204:
  store i1 true, i1* %t1185
  %t1186 = load %nyx_string*, %nyx_string** %t937
  %t1187 = getelementptr [8 x i8], [8 x i8]* @.str120, i32 0, i32 0
  %t1188 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str120.c, i8* %t1187, i64 7)
  %t1189 = call i1 @nyx_string_equals(%nyx_string* %t1186, %nyx_string* %t1188)
  br i1 %t1189, label %sc_or_end209, label %sc_or_rhs208
sc_or_rhs208:
  %t1190 = load %nyx_string*, %nyx_string** %t937
  %t1191 = getelementptr [4 x i8], [4 x i8]* @.str121, i32 0, i32 0
  %t1192 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str121.c, i8* %t1191, i64 3)
  %t1193 = call i1 @nyx_string_equals(%nyx_string* %t1190, %nyx_string* %t1192)
  store i1 %t1193, i1* %t1185
  br label %sc_or_end209
sc_or_end209:
  %t1194 = load i1, i1* %t1185
  br i1 %t1194, label %then210, label %else211
then210:
  store i1 false, i1* %t1195
  %t1196 = load %Value, %Value* %t945
  %t1197 = call i1 @is_truthy(%Value %t1196)
  br i1 %t1197, label %sc_and_rhs213, label %sc_and_end214
sc_and_rhs213:
  %t1198 = load %Value, %Value* %t959
  %t1199 = call i1 @is_truthy(%Value %t1198)
  store i1 %t1199, i1* %t1195
  br label %sc_and_end214
sc_and_end214:
  %t1200 = load i1, i1* %t1195
  %t1201 = call %Value @make_bool(i1 %t1200)
  ret %Value %t1201
else211:
  br label %merge212
merge212:
  store i1 true, i1* %t1202
  %t1203 = load %nyx_string*, %nyx_string** %t937
  %t1204 = getelementptr [6 x i8], [6 x i8]* @.str122, i32 0, i32 0
  %t1205 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str122.c, i8* %t1204, i64 5)
  %t1206 = call i1 @nyx_string_equals(%nyx_string* %t1203, %nyx_string* %t1205)
  br i1 %t1206, label %sc_or_end216, label %sc_or_rhs215
sc_or_rhs215:
  %t1207 = load %nyx_string*, %nyx_string** %t937
  %t1208 = getelementptr [3 x i8], [3 x i8]* @.str123, i32 0, i32 0
  %t1209 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str123.c, i8* %t1208, i64 2)
  %t1210 = call i1 @nyx_string_equals(%nyx_string* %t1207, %nyx_string* %t1209)
  store i1 %t1210, i1* %t1202
  br label %sc_or_end216
sc_or_end216:
  %t1211 = load i1, i1* %t1202
  br i1 %t1211, label %then217, label %else218
then217:
  store i1 true, i1* %t1212
  %t1213 = load %Value, %Value* %t945
  %t1214 = call i1 @is_truthy(%Value %t1213)
  br i1 %t1214, label %sc_or_end221, label %sc_or_rhs220
sc_or_rhs220:
  %t1215 = load %Value, %Value* %t959
  %t1216 = call i1 @is_truthy(%Value %t1215)
  store i1 %t1216, i1* %t1212
  br label %sc_or_end221
sc_or_end221:
  %t1217 = load i1, i1* %t1212
  %t1218 = call %Value @make_bool(i1 %t1217)
  ret %Value %t1218
else218:
  br label %merge219
merge219:
  %t1219 = getelementptr [8 x i8], [8 x i8]* @.str124, i32 0, i32 0
  %t1220 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str124.c, i8* %t1219, i64 7)
  %t1221 = getelementptr [24 x i8], [24 x i8]* @.str125, i32 0, i32 0
  %t1222 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str125.c, i8* %t1221, i64 23)
  %t1223 = load %nyx_string*, %nyx_string** %t937
  %t1224 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1222, %nyx_string* %t1223)
  %t1225 = getelementptr [25 x i8], [25 x i8]* @.str126, i32 0, i32 0
  %t1226 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str126.c, i8* %t1225, i64 24)
  %t1227 = load %nyx_string*, %nyx_string** %t937
  %t1228 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1226, %nyx_string* %t1227)
  %t1229 = call i64 @interp_err(%nyx_string* %t1220, %nyx_string* %t1224, %nyx_string* %t1228)
  %t1230 = call %Value @make_nil()
  ret %Value %t1230
}

define internal %Value @eval_unop(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  %env.ptr = alloca %Environment
  %t1233 = alloca { i64, i8* }*
  %t1237 = alloca %nyx_string*
  %t1243 = alloca %Value
  %t1256 = alloca i64
  %t1266 = alloca i1
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  store %Environment %env.param, %Environment* %env.ptr
  %t1231 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %t1232 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %t1231)
  store { i64, i8* }* %t1232, { i64, i8* }** %t1233
  %t1234 = load { i64, i8* }*, { i64, i8* }** %t1233
  %t1235 = call i64 @nyx_array_get_checked({ i64, i8* }* %t1234, i64 0, i64 2)
  %t1236 = inttoptr i64 %t1235 to %nyx_string*
  store %nyx_string* %t1236, %nyx_string** %t1237
  %t1238 = load { i64, i8* }*, { i64, i8* }** %t1233
  %t1239 = call i64 @nyx_array_get({ i64, i8* }* %t1238, i64 1)
  %t1240 = inttoptr i64 %t1239 to { i64, i8* }*
  %t1241 = load %Environment, %Environment* %env.ptr
  %t1242 = call %Value @eval_expr({ i64, i8* }* %t1240, %Environment %t1241)
  store %Value %t1242, %Value* %t1243
  %t1244 = getelementptr %Value, %Value* %t1243, i32 0, i32 0
  %t1245 = load %nyx_string*, %nyx_string** %t1244
  %t1246 = getelementptr [6 x i8], [6 x i8]* @.str127, i32 0, i32 0
  %t1247 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str127.c, i8* %t1246, i64 5)
  %t1248 = call i1 @nyx_string_equals(%nyx_string* %t1245, %nyx_string* %t1247)
  br i1 %t1248, label %then222, label %else223
then222:
  %t1249 = load %Value, %Value* %t1243
  ret %Value %t1249
else223:
  br label %merge224
merge224:
  %t1250 = load %nyx_string*, %nyx_string** %t1237
  %t1251 = getelementptr [6 x i8], [6 x i8]* @.str128, i32 0, i32 0
  %t1252 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str128.c, i8* %t1251, i64 5)
  %t1253 = call i1 @nyx_string_equals(%nyx_string* %t1250, %nyx_string* %t1252)
  br i1 %t1253, label %then225, label %else226
then225:
  %t1254 = load %Value, %Value* %t1243
  %t1255 = call i64 @value_to_int(%Value %t1254)
  store i64 %t1255, i64* %t1256
  %t1257 = load i64, i64* %t1256
  %t1258 = sub i64 0, %t1257
  %t1259 = call %Value @make_int(i64 %t1258)
  ret %Value %t1259
else226:
  br label %merge227
merge227:
  %t1260 = load %nyx_string*, %nyx_string** %t1237
  %t1261 = getelementptr [4 x i8], [4 x i8]* @.str129, i32 0, i32 0
  %t1262 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str129.c, i8* %t1261, i64 3)
  %t1263 = call i1 @nyx_string_equals(%nyx_string* %t1260, %nyx_string* %t1262)
  br i1 %t1263, label %then228, label %else229
then228:
  %t1264 = load %Value, %Value* %t1243
  %t1265 = call i1 @is_truthy(%Value %t1264)
  store i1 %t1265, i1* %t1266
  %t1267 = load i1, i1* %t1266
  %t1268 = xor i1 %t1267, true
  %t1269 = call %Value @make_bool(i1 %t1268)
  ret %Value %t1269
else229:
  br label %merge230
merge230:
  %t1270 = getelementptr [8 x i8], [8 x i8]* @.str130, i32 0, i32 0
  %t1271 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str130.c, i8* %t1270, i64 7)
  %t1272 = getelementptr [31 x i8], [31 x i8]* @.str131, i32 0, i32 0
  %t1273 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str131.c, i8* %t1272, i64 30)
  %t1274 = load %nyx_string*, %nyx_string** %t1237
  %t1275 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1273, %nyx_string* %t1274)
  %t1276 = getelementptr [31 x i8], [31 x i8]* @.str132, i32 0, i32 0
  %t1277 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str132.c, i8* %t1276, i64 30)
  %t1278 = load %nyx_string*, %nyx_string** %t1237
  %t1279 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1277, %nyx_string* %t1278)
  %t1280 = call i64 @interp_err(%nyx_string* %t1271, %nyx_string* %t1275, %nyx_string* %t1279)
  %t1281 = call %Value @make_nil()
  ret %Value %t1281
}

define internal %Value @eval_array(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  %env.ptr = alloca %Environment
  %t1284 = alloca { i64, i8* }*
  %t1288 = alloca { i64, i8* }*
  %t1290 = alloca { i64, i8* }*
  %t1291 = alloca i64
  %t1294 = alloca %nyx_string*
  %t1303 = alloca { i64, i8* }*
  %t1307 = alloca %Value
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  store %Environment %env.param, %Environment* %env.ptr
  %t1282 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %t1283 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %t1282)
  store { i64, i8* }* %t1283, { i64, i8* }** %t1284
  %t1285 = load { i64, i8* }*, { i64, i8* }** %t1284
  %t1286 = call i64 @nyx_array_get({ i64, i8* }* %t1285, i64 0)
  %t1287 = inttoptr i64 %t1286 to { i64, i8* }*
  store { i64, i8* }* %t1287, { i64, i8* }** %t1288
  %t1289 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t1289, { i64, i8* }** %t1290
  store i64 0, i64* %t1291
  %t1292 = getelementptr [6 x i8], [6 x i8]* @.str133, i32 0, i32 0
  %t1293 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str133.c, i8* %t1292, i64 5)
  store %nyx_string* %t1293, %nyx_string** %t1294
  br label %while_cond231
while_cond231:
  %t1295 = load i64, i64* %t1291
  %t1296 = load { i64, i8* }*, { i64, i8* }** %t1288
  %t1297 = call i64 @nyx_array_length({ i64, i8* }* %t1296)
  %t1298 = icmp slt i64 %t1295, %t1297
  br i1 %t1298, label %while_body232, label %while_end233
while_body232:
  %t1299 = load { i64, i8* }*, { i64, i8* }** %t1288
  %t1300 = load i64, i64* %t1291
  %t1301 = call i64 @nyx_array_get({ i64, i8* }* %t1299, i64 %t1300)
  %t1302 = inttoptr i64 %t1301 to { i64, i8* }*
  store { i64, i8* }* %t1302, { i64, i8* }** %t1303
  %t1304 = load { i64, i8* }*, { i64, i8* }** %t1303
  %t1305 = load %Environment, %Environment* %env.ptr
  %t1306 = call %Value @eval_expr({ i64, i8* }* %t1304, %Environment %t1305)
  store %Value %t1306, %Value* %t1307
  %t1308 = getelementptr %Value, %Value* %t1307, i32 0, i32 0
  %t1309 = load %nyx_string*, %nyx_string** %t1308
  %t1310 = load %nyx_string*, %nyx_string** %t1294
  %t1311 = call i1 @nyx_string_equals(%nyx_string* %t1309, %nyx_string* %t1310)
  br i1 %t1311, label %then234, label %else235
then234:
  %t1312 = load %Value, %Value* %t1307
  ret %Value %t1312
else235:
  br label %merge236
merge236:
  %t1313 = load { i64, i8* }*, { i64, i8* }** %t1290
  %t1314 = load %Value, %Value* %t1307
  %t1315 = getelementptr %Value, %Value* null, i32 1
  %t1316 = ptrtoint %Value* %t1315 to i64
  %t1317 = call i8* @GC_malloc(i64 %t1316)
  %t1318 = bitcast i8* %t1317 to %Value*
  store %Value %t1314, %Value* %t1318
  %t1319 = ptrtoint %Value* %t1318 to i64
  call void @nyx_array_push({ i64, i8* }* %t1313, i64 %t1319)
  %t1320 = load i64, i64* %t1291
  %t1321 = add i64 %t1320, 1
  store i64 %t1321, i64* %t1291
  br label %while_cond231
while_end233:
  %t1322 = load { i64, i8* }*, { i64, i8* }** %t1290
  %t1323 = call %Value @make_array({ i64, i8* }* %t1322)
  ret %Value %t1323
}

define internal %Value @eval_index(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  %env.ptr = alloca %Environment
  %t1326 = alloca { i64, i8* }*
  %t1332 = alloca %Value
  %t1344 = alloca %Value
  %t1373 = alloca { i64, i8* }*
  %t1376 = alloca i64
  %t1377 = alloca i1
  %t1391 = alloca %Value
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  store %Environment %env.param, %Environment* %env.ptr
  %t1324 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %t1325 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %t1324)
  store { i64, i8* }* %t1325, { i64, i8* }** %t1326
  %t1327 = load { i64, i8* }*, { i64, i8* }** %t1326
  %t1328 = call i64 @nyx_array_get({ i64, i8* }* %t1327, i64 0)
  %t1329 = inttoptr i64 %t1328 to { i64, i8* }*
  %t1330 = load %Environment, %Environment* %env.ptr
  %t1331 = call %Value @eval_expr({ i64, i8* }* %t1329, %Environment %t1330)
  store %Value %t1331, %Value* %t1332
  %t1333 = getelementptr %Value, %Value* %t1332, i32 0, i32 0
  %t1334 = load %nyx_string*, %nyx_string** %t1333
  %t1335 = getelementptr [6 x i8], [6 x i8]* @.str134, i32 0, i32 0
  %t1336 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str134.c, i8* %t1335, i64 5)
  %t1337 = call i1 @nyx_string_equals(%nyx_string* %t1334, %nyx_string* %t1336)
  br i1 %t1337, label %then237, label %else238
then237:
  %t1338 = load %Value, %Value* %t1332
  ret %Value %t1338
else238:
  br label %merge239
merge239:
  %t1339 = load { i64, i8* }*, { i64, i8* }** %t1326
  %t1340 = call i64 @nyx_array_get({ i64, i8* }* %t1339, i64 1)
  %t1341 = inttoptr i64 %t1340 to { i64, i8* }*
  %t1342 = load %Environment, %Environment* %env.ptr
  %t1343 = call %Value @eval_expr({ i64, i8* }* %t1341, %Environment %t1342)
  store %Value %t1343, %Value* %t1344
  %t1345 = getelementptr %Value, %Value* %t1344, i32 0, i32 0
  %t1346 = load %nyx_string*, %nyx_string** %t1345
  %t1347 = getelementptr [6 x i8], [6 x i8]* @.str135, i32 0, i32 0
  %t1348 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str135.c, i8* %t1347, i64 5)
  %t1349 = call i1 @nyx_string_equals(%nyx_string* %t1346, %nyx_string* %t1348)
  br i1 %t1349, label %then240, label %else241
then240:
  %t1350 = load %Value, %Value* %t1344
  ret %Value %t1350
else241:
  br label %merge242
merge242:
  %t1351 = getelementptr %Value, %Value* %t1332, i32 0, i32 0
  %t1352 = load %nyx_string*, %nyx_string** %t1351
  %t1353 = getelementptr [6 x i8], [6 x i8]* @.str136, i32 0, i32 0
  %t1354 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str136.c, i8* %t1353, i64 5)
  %t1355 = call i1 @nyx_string_equals(%nyx_string* %t1352, %nyx_string* %t1354)
  %t1356 = xor i1 %t1355, true
  br i1 %t1356, label %then243, label %else244
then243:
  %t1357 = getelementptr [8 x i8], [8 x i8]* @.str137, i32 0, i32 0
  %t1358 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str137.c, i8* %t1357, i64 7)
  %t1359 = getelementptr [56 x i8], [56 x i8]* @.str138, i32 0, i32 0
  %t1360 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str138.c, i8* %t1359, i64 55)
  %t1361 = getelementptr %Value, %Value* %t1332, i32 0, i32 0
  %t1362 = load %nyx_string*, %nyx_string** %t1361
  %t1363 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1360, %nyx_string* %t1362)
  %t1364 = getelementptr [51 x i8], [51 x i8]* @.str139, i32 0, i32 0
  %t1365 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str139.c, i8* %t1364, i64 50)
  %t1366 = getelementptr %Value, %Value* %t1332, i32 0, i32 0
  %t1367 = load %nyx_string*, %nyx_string** %t1366
  %t1368 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1365, %nyx_string* %t1367)
  %t1369 = call i64 @interp_err(%nyx_string* %t1358, %nyx_string* %t1363, %nyx_string* %t1368)
  %t1370 = call %Value @make_error()
  ret %Value %t1370
else244:
  br label %merge245
merge245:
  %t1371 = getelementptr %Value, %Value* %t1332, i32 0, i32 5
  %t1372 = load { i64, i8* }*, { i64, i8* }** %t1371
  store { i64, i8* }* %t1372, { i64, i8* }** %t1373
  %t1374 = load %Value, %Value* %t1344
  %t1375 = call i64 @value_to_int(%Value %t1374)
  store i64 %t1375, i64* %t1376
  store i1 false, i1* %t1377
  %t1378 = load i64, i64* %t1376
  %t1379 = icmp sge i64 %t1378, 0
  br i1 %t1379, label %sc_and_rhs246, label %sc_and_end247
sc_and_rhs246:
  %t1380 = load i64, i64* %t1376
  %t1381 = load { i64, i8* }*, { i64, i8* }** %t1373
  %t1382 = call i64 @nyx_array_length({ i64, i8* }* %t1381)
  %t1383 = icmp slt i64 %t1380, %t1382
  store i1 %t1383, i1* %t1377
  br label %sc_and_end247
sc_and_end247:
  %t1384 = load i1, i1* %t1377
  br i1 %t1384, label %then248, label %else249
then248:
  %t1385 = load { i64, i8* }*, { i64, i8* }** %t1373
  %t1386 = load i64, i64* %t1376
  %t1387 = getelementptr [6 x i8], [6 x i8]* @.slotT140, i32 0, i32 0
  %t1388 = call i64 @nyx_slot_as_value_checked({ i64, i8* }* %t1385, i64 %t1386, i8* %t1387)
  %t1389 = inttoptr i64 %t1388 to %Value*
  %t1390 = load %Value, %Value* %t1389
  store %Value %t1390, %Value* %t1391
  %t1392 = load %Value, %Value* %t1391
  ret %Value %t1392
else249:
  br label %merge250
merge250:
  %t1393 = getelementptr [8 x i8], [8 x i8]* @.str141, i32 0, i32 0
  %t1394 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str141.c, i8* %t1393, i64 7)
  %t1395 = getelementptr [23 x i8], [23 x i8]* @.str142, i32 0, i32 0
  %t1396 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str142.c, i8* %t1395, i64 22)
  %t1397 = getelementptr [19 x i8], [19 x i8]* @.str143, i32 0, i32 0
  %t1398 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str143.c, i8* %t1397, i64 18)
  %t1399 = call i64 @interp_err(%nyx_string* %t1394, %nyx_string* %t1396, %nyx_string* %t1398)
  %t1400 = call %Value @make_error()
  ret %Value %t1400
}

define internal %Value @eval_stmt(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  %env.ptr = alloca %Environment
  %t1403 = alloca %nyx_string*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  store %Environment %env.param, %Environment* %env.ptr
  %t1401 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %t1402 = call %nyx_string* @astnode_get_type({ i64, i8* }* %t1401)
  store %nyx_string* %t1402, %nyx_string** %t1403
  %t1404 = load %nyx_string*, %nyx_string** %t1403
  %t1405 = getelementptr [4 x i8], [4 x i8]* @.str144, i32 0, i32 0
  %t1406 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str144.c, i8* %t1405, i64 3)
  %t1407 = call i1 @nyx_string_equals(%nyx_string* %t1404, %nyx_string* %t1406)
  br i1 %t1407, label %then251, label %else252
then251:
  %t1408 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %t1409 = load %Environment, %Environment* %env.ptr
  %t1410 = call %Value @eval_let({ i64, i8* }* %t1408, %Environment %t1409)
  ret %Value %t1410
else252:
  br label %merge253
merge253:
  %t1411 = load %nyx_string*, %nyx_string** %t1403
  %t1412 = getelementptr [4 x i8], [4 x i8]* @.str145, i32 0, i32 0
  %t1413 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str145.c, i8* %t1412, i64 3)
  %t1414 = call i1 @nyx_string_equals(%nyx_string* %t1411, %nyx_string* %t1413)
  br i1 %t1414, label %then254, label %else255
then254:
  %t1415 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %t1416 = load %Environment, %Environment* %env.ptr
  %t1417 = call %Value @eval_let({ i64, i8* }* %t1415, %Environment %t1416)
  ret %Value %t1417
else255:
  br label %merge256
merge256:
  %t1418 = load %nyx_string*, %nyx_string** %t1403
  %t1419 = getelementptr [7 x i8], [7 x i8]* @.str146, i32 0, i32 0
  %t1420 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str146.c, i8* %t1419, i64 6)
  %t1421 = call i1 @nyx_string_equals(%nyx_string* %t1418, %nyx_string* %t1420)
  br i1 %t1421, label %then257, label %else258
then257:
  %t1422 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %t1423 = load %Environment, %Environment* %env.ptr
  %t1424 = call %Value @eval_assign({ i64, i8* }* %t1422, %Environment %t1423)
  ret %Value %t1424
else258:
  br label %merge259
merge259:
  %t1425 = load %nyx_string*, %nyx_string** %t1403
  %t1426 = getelementptr [3 x i8], [3 x i8]* @.str147, i32 0, i32 0
  %t1427 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str147.c, i8* %t1426, i64 2)
  %t1428 = call i1 @nyx_string_equals(%nyx_string* %t1425, %nyx_string* %t1427)
  br i1 %t1428, label %then260, label %else261
then260:
  %t1429 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %t1430 = load %Environment, %Environment* %env.ptr
  %t1431 = call %Value @eval_if({ i64, i8* }* %t1429, %Environment %t1430)
  ret %Value %t1431
else261:
  br label %merge262
merge262:
  %t1432 = load %nyx_string*, %nyx_string** %t1403
  %t1433 = getelementptr [6 x i8], [6 x i8]* @.str148, i32 0, i32 0
  %t1434 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str148.c, i8* %t1433, i64 5)
  %t1435 = call i1 @nyx_string_equals(%nyx_string* %t1432, %nyx_string* %t1434)
  br i1 %t1435, label %then263, label %else264
then263:
  %t1436 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %t1437 = load %Environment, %Environment* %env.ptr
  %t1438 = call %Value @eval_while({ i64, i8* }* %t1436, %Environment %t1437)
  ret %Value %t1438
else264:
  br label %merge265
merge265:
  %t1439 = load %nyx_string*, %nyx_string** %t1403
  %t1440 = getelementptr [4 x i8], [4 x i8]* @.str149, i32 0, i32 0
  %t1441 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str149.c, i8* %t1440, i64 3)
  %t1442 = call i1 @nyx_string_equals(%nyx_string* %t1439, %nyx_string* %t1441)
  br i1 %t1442, label %then266, label %else267
then266:
  %t1443 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %t1444 = load %Environment, %Environment* %env.ptr
  %t1445 = call %Value @eval_for({ i64, i8* }* %t1443, %Environment %t1444)
  ret %Value %t1445
else267:
  br label %merge268
merge268:
  %t1446 = load %nyx_string*, %nyx_string** %t1403
  %t1447 = getelementptr [7 x i8], [7 x i8]* @.str150, i32 0, i32 0
  %t1448 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str150.c, i8* %t1447, i64 6)
  %t1449 = call i1 @nyx_string_equals(%nyx_string* %t1446, %nyx_string* %t1448)
  br i1 %t1449, label %then269, label %else270
then269:
  %t1450 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %t1451 = load %Environment, %Environment* %env.ptr
  %t1452 = call %Value @eval_return({ i64, i8* }* %t1450, %Environment %t1451)
  ret %Value %t1452
else270:
  br label %merge271
merge271:
  %t1453 = load %nyx_string*, %nyx_string** %t1403
  %t1454 = getelementptr [6 x i8], [6 x i8]* @.str151, i32 0, i32 0
  %t1455 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str151.c, i8* %t1454, i64 5)
  %t1456 = call i1 @nyx_string_equals(%nyx_string* %t1453, %nyx_string* %t1455)
  br i1 %t1456, label %then272, label %else273
then272:
  %t1457 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %t1458 = load %Environment, %Environment* %env.ptr
  %t1459 = call %Value @eval_block({ i64, i8* }* %t1457, %Environment %t1458)
  ret %Value %t1459
else273:
  br label %merge274
merge274:
  %t1460 = load %nyx_string*, %nyx_string** %t1403
  %t1461 = getelementptr [9 x i8], [9 x i8]* @.str152, i32 0, i32 0
  %t1462 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str152.c, i8* %t1461, i64 8)
  %t1463 = call i1 @nyx_string_equals(%nyx_string* %t1460, %nyx_string* %t1462)
  br i1 %t1463, label %then275, label %else276
then275:
  %t1464 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %t1465 = load %Environment, %Environment* %env.ptr
  %t1466 = call %Value @eval_function_decl({ i64, i8* }* %t1464, %Environment %t1465)
  ret %Value %t1466
else276:
  br label %merge277
merge277:
  %t1467 = load %nyx_string*, %nyx_string** %t1403
  %t1468 = getelementptr [13 x i8], [13 x i8]* @.str153, i32 0, i32 0
  %t1469 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str153.c, i8* %t1468, i64 12)
  %t1470 = call i1 @nyx_string_equals(%nyx_string* %t1467, %nyx_string* %t1469)
  br i1 %t1470, label %then278, label %else279
then278:
  %t1471 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %t1472 = load %Environment, %Environment* %env.ptr
  %t1473 = call %Value @eval_index_assign({ i64, i8* }* %t1471, %Environment %t1472)
  ret %Value %t1473
else279:
  br label %merge280
merge280:
  %t1474 = load %nyx_string*, %nyx_string** %t1403
  %t1475 = getelementptr [13 x i8], [13 x i8]* @.str154, i32 0, i32 0
  %t1476 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str154.c, i8* %t1475, i64 12)
  %t1477 = call i1 @nyx_string_equals(%nyx_string* %t1474, %nyx_string* %t1476)
  br i1 %t1477, label %then281, label %else282
then281:
  %t1478 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %t1479 = load %Environment, %Environment* %env.ptr
  %t1480 = call %Value @eval_field_assign({ i64, i8* }* %t1478, %Environment %t1479)
  ret %Value %t1480
else282:
  br label %merge283
merge283:
  %t1481 = load %nyx_string*, %nyx_string** %t1403
  %t1482 = getelementptr [6 x i8], [6 x i8]* @.str155, i32 0, i32 0
  %t1483 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str155.c, i8* %t1482, i64 5)
  %t1484 = call i1 @nyx_string_equals(%nyx_string* %t1481, %nyx_string* %t1483)
  br i1 %t1484, label %then284, label %else285
then284:
  %t1485 = getelementptr [6 x i8], [6 x i8]* @.str156, i32 0, i32 0
  %t1486 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str156.c, i8* %t1485, i64 5)
  %t1487 = call %Value @make_control(%nyx_string* %t1486)
  ret %Value %t1487
else285:
  br label %merge286
merge286:
  %t1488 = load %nyx_string*, %nyx_string** %t1403
  %t1489 = getelementptr [9 x i8], [9 x i8]* @.str157, i32 0, i32 0
  %t1490 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str157.c, i8* %t1489, i64 8)
  %t1491 = call i1 @nyx_string_equals(%nyx_string* %t1488, %nyx_string* %t1490)
  br i1 %t1491, label %then287, label %else288
then287:
  %t1492 = getelementptr [9 x i8], [9 x i8]* @.str158, i32 0, i32 0
  %t1493 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str158.c, i8* %t1492, i64 8)
  %t1494 = call %Value @make_control(%nyx_string* %t1493)
  ret %Value %t1494
else288:
  br label %merge289
merge289:
  %t1495 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %t1496 = load %Environment, %Environment* %env.ptr
  %t1497 = call %Value @eval_expr({ i64, i8* }* %t1495, %Environment %t1496)
  ret %Value %t1497
}

define internal %Value @eval_let(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  %env.ptr = alloca %Environment
  %t1500 = alloca { i64, i8* }*
  %t1504 = alloca { i64, i8* }*
  %t1507 = alloca %nyx_string*
  %t1511 = alloca { i64, i8* }*
  %t1515 = alloca %Value
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  store %Environment %env.param, %Environment* %env.ptr
  %t1498 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %t1499 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %t1498)
  store { i64, i8* }* %t1499, { i64, i8* }** %t1500
  %t1501 = load { i64, i8* }*, { i64, i8* }** %t1500
  %t1502 = call i64 @nyx_array_get({ i64, i8* }* %t1501, i64 0)
  %t1503 = inttoptr i64 %t1502 to { i64, i8* }*
  store { i64, i8* }* %t1503, { i64, i8* }** %t1504
  %t1505 = load { i64, i8* }*, { i64, i8* }** %t1504
  %t1506 = call %nyx_string* @astnode_get_type({ i64, i8* }* %t1505)
  store %nyx_string* %t1506, %nyx_string** %t1507
  %t1508 = load { i64, i8* }*, { i64, i8* }** %t1500
  %t1509 = call i64 @nyx_array_get({ i64, i8* }* %t1508, i64 2)
  %t1510 = inttoptr i64 %t1509 to { i64, i8* }*
  store { i64, i8* }* %t1510, { i64, i8* }** %t1511
  %t1512 = load { i64, i8* }*, { i64, i8* }** %t1511
  %t1513 = load %Environment, %Environment* %env.ptr
  %t1514 = call %Value @eval_expr({ i64, i8* }* %t1512, %Environment %t1513)
  store %Value %t1514, %Value* %t1515
  %t1516 = getelementptr %Value, %Value* %t1515, i32 0, i32 0
  %t1517 = load %nyx_string*, %nyx_string** %t1516
  %t1518 = getelementptr [6 x i8], [6 x i8]* @.str159, i32 0, i32 0
  %t1519 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str159.c, i8* %t1518, i64 5)
  %t1520 = call i1 @nyx_string_equals(%nyx_string* %t1517, %nyx_string* %t1519)
  br i1 %t1520, label %then290, label %else291
then290:
  %t1521 = load %Value, %Value* %t1515
  ret %Value %t1521
else291:
  br label %merge292
merge292:
  %t1522 = load %Environment, %Environment* %env.ptr
  %t1523 = load %nyx_string*, %nyx_string** %t1507
  %t1524 = load %Value, %Value* %t1515
  %t1525 = call i64 @env_define(%Environment %t1522, %nyx_string* %t1523, %Value %t1524)
  %t1526 = call %Value @make_nil()
  ret %Value %t1526
}

define internal %Value @eval_assign(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  %env.ptr = alloca %Environment
  %t1529 = alloca { i64, i8* }*
  %t1533 = alloca { i64, i8* }*
  %t1536 = alloca %nyx_string*
  %t1542 = alloca %Value
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  store %Environment %env.param, %Environment* %env.ptr
  %t1527 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %t1528 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %t1527)
  store { i64, i8* }* %t1528, { i64, i8* }** %t1529
  %t1530 = load { i64, i8* }*, { i64, i8* }** %t1529
  %t1531 = call i64 @nyx_array_get({ i64, i8* }* %t1530, i64 0)
  %t1532 = inttoptr i64 %t1531 to { i64, i8* }*
  store { i64, i8* }* %t1532, { i64, i8* }** %t1533
  %t1534 = load { i64, i8* }*, { i64, i8* }** %t1533
  %t1535 = call %nyx_string* @astnode_get_type({ i64, i8* }* %t1534)
  store %nyx_string* %t1535, %nyx_string** %t1536
  %t1537 = load { i64, i8* }*, { i64, i8* }** %t1529
  %t1538 = call i64 @nyx_array_get({ i64, i8* }* %t1537, i64 1)
  %t1539 = inttoptr i64 %t1538 to { i64, i8* }*
  %t1540 = load %Environment, %Environment* %env.ptr
  %t1541 = call %Value @eval_expr({ i64, i8* }* %t1539, %Environment %t1540)
  store %Value %t1541, %Value* %t1542
  %t1543 = getelementptr %Value, %Value* %t1542, i32 0, i32 0
  %t1544 = load %nyx_string*, %nyx_string** %t1543
  %t1545 = getelementptr [6 x i8], [6 x i8]* @.str160, i32 0, i32 0
  %t1546 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str160.c, i8* %t1545, i64 5)
  %t1547 = call i1 @nyx_string_equals(%nyx_string* %t1544, %nyx_string* %t1546)
  br i1 %t1547, label %then293, label %else294
then293:
  %t1548 = load %Value, %Value* %t1542
  ret %Value %t1548
else294:
  br label %merge295
merge295:
  %t1549 = load %Environment, %Environment* %env.ptr
  %t1550 = load %nyx_string*, %nyx_string** %t1536
  %t1551 = load %Value, %Value* %t1542
  %t1552 = call i1 @env_set(%Environment %t1549, %nyx_string* %t1550, %Value %t1551)
  %t1553 = xor i1 %t1552, true
  br i1 %t1553, label %then296, label %else297
then296:
  %t1554 = getelementptr [8 x i8], [8 x i8]* @.str161, i32 0, i32 0
  %t1555 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str161.c, i8* %t1554, i64 7)
  %t1556 = getelementptr [23 x i8], [23 x i8]* @.str162, i32 0, i32 0
  %t1557 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str162.c, i8* %t1556, i64 22)
  %t1558 = load %nyx_string*, %nyx_string** %t1536
  %t1559 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1557, %nyx_string* %t1558)
  %t1560 = getelementptr [21 x i8], [21 x i8]* @.str163, i32 0, i32 0
  %t1561 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str163.c, i8* %t1560, i64 20)
  %t1562 = load %nyx_string*, %nyx_string** %t1536
  %t1563 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1561, %nyx_string* %t1562)
  %t1564 = call i64 @interp_err(%nyx_string* %t1555, %nyx_string* %t1559, %nyx_string* %t1563)
  %t1565 = call %Value @make_error()
  ret %Value %t1565
else297:
  br label %merge298
merge298:
  %t1566 = call %Value @make_nil()
  ret %Value %t1566
}

define internal %Value @eval_index_assign(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  %env.ptr = alloca %Environment
  %t1569 = alloca { i64, i8* }*
  %t1573 = alloca { i64, i8* }*
  %t1577 = alloca { i64, i8* }*
  %t1581 = alloca { i64, i8* }*
  %t1585 = alloca %Value
  %t1595 = alloca %Value
  %t1605 = alloca %Value
  %t1619 = alloca { i64, i8* }*
  %t1622 = alloca i64
  %t1623 = alloca i1
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  store %Environment %env.param, %Environment* %env.ptr
  %t1567 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %t1568 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %t1567)
  store { i64, i8* }* %t1568, { i64, i8* }** %t1569
  %t1570 = load { i64, i8* }*, { i64, i8* }** %t1569
  %t1571 = call i64 @nyx_array_get({ i64, i8* }* %t1570, i64 0)
  %t1572 = inttoptr i64 %t1571 to { i64, i8* }*
  store { i64, i8* }* %t1572, { i64, i8* }** %t1573
  %t1574 = load { i64, i8* }*, { i64, i8* }** %t1569
  %t1575 = call i64 @nyx_array_get({ i64, i8* }* %t1574, i64 1)
  %t1576 = inttoptr i64 %t1575 to { i64, i8* }*
  store { i64, i8* }* %t1576, { i64, i8* }** %t1577
  %t1578 = load { i64, i8* }*, { i64, i8* }** %t1569
  %t1579 = call i64 @nyx_array_get({ i64, i8* }* %t1578, i64 2)
  %t1580 = inttoptr i64 %t1579 to { i64, i8* }*
  store { i64, i8* }* %t1580, { i64, i8* }** %t1581
  %t1582 = load { i64, i8* }*, { i64, i8* }** %t1573
  %t1583 = load %Environment, %Environment* %env.ptr
  %t1584 = call %Value @eval_expr({ i64, i8* }* %t1582, %Environment %t1583)
  store %Value %t1584, %Value* %t1585
  %t1586 = getelementptr %Value, %Value* %t1585, i32 0, i32 0
  %t1587 = load %nyx_string*, %nyx_string** %t1586
  %t1588 = getelementptr [6 x i8], [6 x i8]* @.str164, i32 0, i32 0
  %t1589 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str164.c, i8* %t1588, i64 5)
  %t1590 = call i1 @nyx_string_equals(%nyx_string* %t1587, %nyx_string* %t1589)
  br i1 %t1590, label %then299, label %else300
then299:
  %t1591 = load %Value, %Value* %t1585
  ret %Value %t1591
else300:
  br label %merge301
merge301:
  %t1592 = load { i64, i8* }*, { i64, i8* }** %t1577
  %t1593 = load %Environment, %Environment* %env.ptr
  %t1594 = call %Value @eval_expr({ i64, i8* }* %t1592, %Environment %t1593)
  store %Value %t1594, %Value* %t1595
  %t1596 = getelementptr %Value, %Value* %t1595, i32 0, i32 0
  %t1597 = load %nyx_string*, %nyx_string** %t1596
  %t1598 = getelementptr [6 x i8], [6 x i8]* @.str165, i32 0, i32 0
  %t1599 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str165.c, i8* %t1598, i64 5)
  %t1600 = call i1 @nyx_string_equals(%nyx_string* %t1597, %nyx_string* %t1599)
  br i1 %t1600, label %then302, label %else303
then302:
  %t1601 = load %Value, %Value* %t1595
  ret %Value %t1601
else303:
  br label %merge304
merge304:
  %t1602 = load { i64, i8* }*, { i64, i8* }** %t1581
  %t1603 = load %Environment, %Environment* %env.ptr
  %t1604 = call %Value @eval_expr({ i64, i8* }* %t1602, %Environment %t1603)
  store %Value %t1604, %Value* %t1605
  %t1606 = getelementptr %Value, %Value* %t1605, i32 0, i32 0
  %t1607 = load %nyx_string*, %nyx_string** %t1606
  %t1608 = getelementptr [6 x i8], [6 x i8]* @.str166, i32 0, i32 0
  %t1609 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str166.c, i8* %t1608, i64 5)
  %t1610 = call i1 @nyx_string_equals(%nyx_string* %t1607, %nyx_string* %t1609)
  br i1 %t1610, label %then305, label %else306
then305:
  %t1611 = load %Value, %Value* %t1605
  ret %Value %t1611
else306:
  br label %merge307
merge307:
  %t1612 = getelementptr %Value, %Value* %t1585, i32 0, i32 0
  %t1613 = load %nyx_string*, %nyx_string** %t1612
  %t1614 = getelementptr [6 x i8], [6 x i8]* @.str167, i32 0, i32 0
  %t1615 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str167.c, i8* %t1614, i64 5)
  %t1616 = call i1 @nyx_string_equals(%nyx_string* %t1613, %nyx_string* %t1615)
  br i1 %t1616, label %then308, label %else309
then308:
  %t1617 = getelementptr %Value, %Value* %t1585, i32 0, i32 5
  %t1618 = load { i64, i8* }*, { i64, i8* }** %t1617
  store { i64, i8* }* %t1618, { i64, i8* }** %t1619
  %t1620 = load %Value, %Value* %t1595
  %t1621 = call i64 @value_to_int(%Value %t1620)
  store i64 %t1621, i64* %t1622
  store i1 false, i1* %t1623
  %t1624 = load i64, i64* %t1622
  %t1625 = icmp sge i64 %t1624, 0
  br i1 %t1625, label %sc_and_rhs311, label %sc_and_end312
sc_and_rhs311:
  %t1626 = load i64, i64* %t1622
  %t1627 = load { i64, i8* }*, { i64, i8* }** %t1619
  %t1628 = call i64 @nyx_array_length({ i64, i8* }* %t1627)
  %t1629 = icmp slt i64 %t1626, %t1628
  store i1 %t1629, i1* %t1623
  br label %sc_and_end312
sc_and_end312:
  %t1630 = load i1, i1* %t1623
  br i1 %t1630, label %then313, label %else314
then313:
  %t1631 = load { i64, i8* }*, { i64, i8* }** %t1619
  %t1632 = load i64, i64* %t1622
  %t1633 = load %Value, %Value* %t1605
  %t1634 = getelementptr %Value, %Value* null, i32 1
  %t1635 = ptrtoint %Value* %t1634 to i64
  %t1636 = call i8* @GC_malloc(i64 %t1635)
  %t1637 = bitcast i8* %t1636 to %Value*
  store %Value %t1633, %Value* %t1637
  %t1638 = ptrtoint %Value* %t1637 to i64
  call void @nyx_array_set({ i64, i8* }* %t1631, i64 %t1632, i64 %t1638)
  br label %merge315
else314:
  %t1639 = getelementptr [8 x i8], [8 x i8]* @.str168, i32 0, i32 0
  %t1640 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str168.c, i8* %t1639, i64 7)
  %t1641 = getelementptr [38 x i8], [38 x i8]* @.str169, i32 0, i32 0
  %t1642 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str169.c, i8* %t1641, i64 37)
  %t1643 = getelementptr [33 x i8], [33 x i8]* @.str170, i32 0, i32 0
  %t1644 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str170.c, i8* %t1643, i64 32)
  %t1645 = call i64 @interp_err(%nyx_string* %t1640, %nyx_string* %t1642, %nyx_string* %t1644)
  %t1646 = call %Value @make_error()
  ret %Value %t1646
merge315:
  br label %merge310
else309:
  %t1647 = getelementptr [8 x i8], [8 x i8]* @.str171, i32 0, i32 0
  %t1648 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str171.c, i8* %t1647, i64 7)
  %t1649 = getelementptr [38 x i8], [38 x i8]* @.str172, i32 0, i32 0
  %t1650 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str172.c, i8* %t1649, i64 37)
  %t1651 = getelementptr %Value, %Value* %t1585, i32 0, i32 0
  %t1652 = load %nyx_string*, %nyx_string** %t1651
  %t1653 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1650, %nyx_string* %t1652)
  %t1654 = getelementptr [35 x i8], [35 x i8]* @.str173, i32 0, i32 0
  %t1655 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str173.c, i8* %t1654, i64 34)
  %t1656 = getelementptr %Value, %Value* %t1585, i32 0, i32 0
  %t1657 = load %nyx_string*, %nyx_string** %t1656
  %t1658 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1655, %nyx_string* %t1657)
  %t1659 = call i64 @interp_err(%nyx_string* %t1648, %nyx_string* %t1653, %nyx_string* %t1658)
  %t1660 = call %Value @make_error()
  ret %Value %t1660
merge310:
  %t1661 = call %Value @make_nil()
  ret %Value %t1661
}

define internal %Value @eval_field_assign(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  %env.ptr = alloca %Environment
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  store %Environment %env.param, %Environment* %env.ptr
  %t1662 = getelementptr [8 x i8], [8 x i8]* @.str174, i32 0, i32 0
  %t1663 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str174.c, i8* %t1662, i64 7)
  %t1664 = getelementptr [45 x i8], [45 x i8]* @.str175, i32 0, i32 0
  %t1665 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str175.c, i8* %t1664, i64 44)
  %t1666 = getelementptr [46 x i8], [46 x i8]* @.str176, i32 0, i32 0
  %t1667 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str176.c, i8* %t1666, i64 45)
  %t1668 = call i64 @interp_err(%nyx_string* %t1663, %nyx_string* %t1665, %nyx_string* %t1667)
  %t1669 = call %Value @make_error()
  ret %Value %t1669
}

define internal %Value @eval_if(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  %env.ptr = alloca %Environment
  %t1672 = alloca { i64, i8* }*
  %t1676 = alloca { i64, i8* }*
  %t1680 = alloca %Value
  %t1690 = alloca { i64, i8* }*
  %t1694 = alloca { i64, i8* }*
  %t1702 = alloca %nyx_string*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  store %Environment %env.param, %Environment* %env.ptr
  %t1670 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %t1671 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %t1670)
  store { i64, i8* }* %t1671, { i64, i8* }** %t1672
  %t1673 = load { i64, i8* }*, { i64, i8* }** %t1672
  %t1674 = call i64 @nyx_array_get({ i64, i8* }* %t1673, i64 0)
  %t1675 = inttoptr i64 %t1674 to { i64, i8* }*
  store { i64, i8* }* %t1675, { i64, i8* }** %t1676
  %t1677 = load { i64, i8* }*, { i64, i8* }** %t1676
  %t1678 = load %Environment, %Environment* %env.ptr
  %t1679 = call %Value @eval_expr({ i64, i8* }* %t1677, %Environment %t1678)
  store %Value %t1679, %Value* %t1680
  %t1681 = getelementptr %Value, %Value* %t1680, i32 0, i32 0
  %t1682 = load %nyx_string*, %nyx_string** %t1681
  %t1683 = getelementptr [6 x i8], [6 x i8]* @.str177, i32 0, i32 0
  %t1684 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str177.c, i8* %t1683, i64 5)
  %t1685 = call i1 @nyx_string_equals(%nyx_string* %t1682, %nyx_string* %t1684)
  br i1 %t1685, label %then316, label %else317
then316:
  %t1686 = load %Value, %Value* %t1680
  ret %Value %t1686
else317:
  br label %merge318
merge318:
  %t1687 = load { i64, i8* }*, { i64, i8* }** %t1672
  %t1688 = call i64 @nyx_array_get({ i64, i8* }* %t1687, i64 1)
  %t1689 = inttoptr i64 %t1688 to { i64, i8* }*
  store { i64, i8* }* %t1689, { i64, i8* }** %t1690
  %t1691 = load { i64, i8* }*, { i64, i8* }** %t1672
  %t1692 = call i64 @nyx_array_get({ i64, i8* }* %t1691, i64 2)
  %t1693 = inttoptr i64 %t1692 to { i64, i8* }*
  store { i64, i8* }* %t1693, { i64, i8* }** %t1694
  %t1695 = load %Value, %Value* %t1680
  %t1696 = call i1 @is_truthy(%Value %t1695)
  br i1 %t1696, label %then319, label %else320
then319:
  %t1697 = load { i64, i8* }*, { i64, i8* }** %t1690
  %t1698 = load %Environment, %Environment* %env.ptr
  %t1699 = call %Value @eval_stmt({ i64, i8* }* %t1697, %Environment %t1698)
  ret %Value %t1699
else320:
  %t1700 = load { i64, i8* }*, { i64, i8* }** %t1694
  %t1701 = call %nyx_string* @astnode_get_type({ i64, i8* }* %t1700)
  store %nyx_string* %t1701, %nyx_string** %t1702
  %t1703 = load %nyx_string*, %nyx_string** %t1702
  %t1704 = getelementptr [6 x i8], [6 x i8]* @.str178, i32 0, i32 0
  %t1705 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str178.c, i8* %t1704, i64 5)
  %t1706 = call i1 @nyx_string_equals(%nyx_string* %t1703, %nyx_string* %t1705)
  %t1707 = xor i1 %t1706, true
  br i1 %t1707, label %then322, label %else323
then322:
  %t1708 = load { i64, i8* }*, { i64, i8* }** %t1694
  %t1709 = load %Environment, %Environment* %env.ptr
  %t1710 = call %Value @eval_stmt({ i64, i8* }* %t1708, %Environment %t1709)
  ret %Value %t1710
else323:
  br label %merge324
merge324:
  br label %merge321
merge321:
  %t1711 = call %Value @make_nil()
  ret %Value %t1711
}

define internal %Value @eval_while(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  %env.ptr = alloca %Environment
  %t1714 = alloca { i64, i8* }*
  %t1718 = alloca { i64, i8* }*
  %t1722 = alloca { i64, i8* }*
  %t1723 = alloca i1
  %t1726 = alloca %nyx_string*
  %t1729 = alloca %nyx_string*
  %t1732 = alloca %nyx_string*
  %t1737 = alloca %Value
  %t1748 = alloca %Value
  %t1749 = alloca i1
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  store %Environment %env.param, %Environment* %env.ptr
  %t1712 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %t1713 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %t1712)
  store { i64, i8* }* %t1713, { i64, i8* }** %t1714
  %t1715 = load { i64, i8* }*, { i64, i8* }** %t1714
  %t1716 = call i64 @nyx_array_get({ i64, i8* }* %t1715, i64 0)
  %t1717 = inttoptr i64 %t1716 to { i64, i8* }*
  store { i64, i8* }* %t1717, { i64, i8* }** %t1718
  %t1719 = load { i64, i8* }*, { i64, i8* }** %t1714
  %t1720 = call i64 @nyx_array_get({ i64, i8* }* %t1719, i64 1)
  %t1721 = inttoptr i64 %t1720 to { i64, i8* }*
  store { i64, i8* }* %t1721, { i64, i8* }** %t1722
  store i1 1, i1* %t1723
  %t1724 = getelementptr [6 x i8], [6 x i8]* @.str179, i32 0, i32 0
  %t1725 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str179.c, i8* %t1724, i64 5)
  store %nyx_string* %t1725, %nyx_string** %t1726
  %t1727 = getelementptr [7 x i8], [7 x i8]* @.str180, i32 0, i32 0
  %t1728 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str180.c, i8* %t1727, i64 6)
  store %nyx_string* %t1728, %nyx_string** %t1729
  %t1730 = getelementptr [6 x i8], [6 x i8]* @.str181, i32 0, i32 0
  %t1731 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str181.c, i8* %t1730, i64 5)
  store %nyx_string* %t1731, %nyx_string** %t1732
  br label %while_cond325
while_cond325:
  %t1733 = load i1, i1* %t1723
  br i1 %t1733, label %while_body326, label %while_end327
while_body326:
  %t1734 = load { i64, i8* }*, { i64, i8* }** %t1718
  %t1735 = load %Environment, %Environment* %env.ptr
  %t1736 = call %Value @eval_expr({ i64, i8* }* %t1734, %Environment %t1735)
  store %Value %t1736, %Value* %t1737
  %t1738 = getelementptr %Value, %Value* %t1737, i32 0, i32 0
  %t1739 = load %nyx_string*, %nyx_string** %t1738
  %t1740 = load %nyx_string*, %nyx_string** %t1726
  %t1741 = call i1 @nyx_string_equals(%nyx_string* %t1739, %nyx_string* %t1740)
  br i1 %t1741, label %then328, label %else329
then328:
  %t1742 = load %Value, %Value* %t1737
  ret %Value %t1742
else329:
  br label %merge330
merge330:
  %t1743 = load %Value, %Value* %t1737
  %t1744 = call i1 @is_truthy(%Value %t1743)
  br i1 %t1744, label %then331, label %else332
then331:
  %t1745 = load { i64, i8* }*, { i64, i8* }** %t1722
  %t1746 = load %Environment, %Environment* %env.ptr
  %t1747 = call %Value @eval_stmt({ i64, i8* }* %t1745, %Environment %t1746)
  store %Value %t1747, %Value* %t1748
  store i1 true, i1* %t1749
  %t1750 = getelementptr %Value, %Value* %t1748, i32 0, i32 0
  %t1751 = load %nyx_string*, %nyx_string** %t1750
  %t1752 = load %nyx_string*, %nyx_string** %t1726
  %t1753 = call i1 @nyx_string_equals(%nyx_string* %t1751, %nyx_string* %t1752)
  br i1 %t1753, label %sc_or_end335, label %sc_or_rhs334
sc_or_rhs334:
  %t1754 = getelementptr %Value, %Value* %t1748, i32 0, i32 0
  %t1755 = load %nyx_string*, %nyx_string** %t1754
  %t1756 = load %nyx_string*, %nyx_string** %t1729
  %t1757 = call i1 @nyx_string_equals(%nyx_string* %t1755, %nyx_string* %t1756)
  store i1 %t1757, i1* %t1749
  br label %sc_or_end335
sc_or_end335:
  %t1758 = load i1, i1* %t1749
  br i1 %t1758, label %then336, label %else337
then336:
  %t1759 = load %Value, %Value* %t1748
  ret %Value %t1759
else337:
  br label %merge338
merge338:
  %t1760 = getelementptr %Value, %Value* %t1748, i32 0, i32 0
  %t1761 = load %nyx_string*, %nyx_string** %t1760
  %t1762 = load %nyx_string*, %nyx_string** %t1732
  %t1763 = call i1 @nyx_string_equals(%nyx_string* %t1761, %nyx_string* %t1762)
  br i1 %t1763, label %then339, label %else340
then339:
  store i1 0, i1* %t1723
  br label %merge341
else340:
  br label %merge341
merge341:
  br label %merge333
else332:
  store i1 0, i1* %t1723
  br label %merge333
merge333:
  br label %while_cond325
while_end327:
  %t1764 = call %Value @make_nil()
  ret %Value %t1764
}

define internal %Value @eval_for(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  %env.ptr = alloca %Environment
  %t1767 = alloca { i64, i8* }*
  %t1771 = alloca %nyx_string*
  %t1775 = alloca { i64, i8* }*
  %t1779 = alloca { i64, i8* }*
  %t1782 = alloca %Environment
  %t1790 = alloca { i64, i8* }*
  %t1794 = alloca { i64, i8* }*
  %t1798 = alloca { i64, i8* }*
  %t1802 = alloca %nyx_string*
  %t1806 = alloca %Value
  %t1816 = alloca %Value
  %t1823 = alloca i1
  %t1871 = alloca i64
  %t1874 = alloca i64
  %t1877 = alloca %nyx_string*
  %t1880 = alloca %nyx_string*
  %t1883 = alloca %nyx_string*
  %t1884 = alloca i1
  %t1888 = alloca i1
  %t1906 = alloca %Value
  %t1907 = alloca i1
  %t1929 = alloca %Value
  %t1964 = alloca { i64, i8* }*
  %t1965 = alloca i64
  %t1968 = alloca %nyx_string*
  %t1971 = alloca %nyx_string*
  %t1974 = alloca %nyx_string*
  %t1985 = alloca %Value
  %t1993 = alloca %Value
  %t1994 = alloca i1
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  store %Environment %env.param, %Environment* %env.ptr
  %t1765 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %t1766 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %t1765)
  store { i64, i8* }* %t1766, { i64, i8* }** %t1767
  %t1768 = load { i64, i8* }*, { i64, i8* }** %t1767
  %t1769 = call i64 @nyx_array_get_checked({ i64, i8* }* %t1768, i64 0, i64 2)
  %t1770 = inttoptr i64 %t1769 to %nyx_string*
  store %nyx_string* %t1770, %nyx_string** %t1771
  %t1772 = load { i64, i8* }*, { i64, i8* }** %t1767
  %t1773 = call i64 @nyx_array_get({ i64, i8* }* %t1772, i64 1)
  %t1774 = inttoptr i64 %t1773 to { i64, i8* }*
  store { i64, i8* }* %t1774, { i64, i8* }** %t1775
  %t1776 = load { i64, i8* }*, { i64, i8* }** %t1767
  %t1777 = call i64 @nyx_array_get({ i64, i8* }* %t1776, i64 2)
  %t1778 = inttoptr i64 %t1777 to { i64, i8* }*
  store { i64, i8* }* %t1778, { i64, i8* }** %t1779
  %t1780 = load %Environment, %Environment* %env.ptr
  %t1781 = call %Environment @make_child_env(%Environment %t1780)
  store %Environment %t1781, %Environment* %t1782
  %t1783 = load { i64, i8* }*, { i64, i8* }** %t1775
  %t1784 = call %nyx_string* @astnode_get_type({ i64, i8* }* %t1783)
  %t1785 = getelementptr [6 x i8], [6 x i8]* @.str182, i32 0, i32 0
  %t1786 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str182.c, i8* %t1785, i64 5)
  %t1787 = call i1 @nyx_string_equals(%nyx_string* %t1784, %nyx_string* %t1786)
  br i1 %t1787, label %then342, label %else343
then342:
  %t1788 = load { i64, i8* }*, { i64, i8* }** %t1775
  %t1789 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %t1788)
  store { i64, i8* }* %t1789, { i64, i8* }** %t1790
  %t1791 = load { i64, i8* }*, { i64, i8* }** %t1790
  %t1792 = call i64 @nyx_array_get({ i64, i8* }* %t1791, i64 0)
  %t1793 = inttoptr i64 %t1792 to { i64, i8* }*
  store { i64, i8* }* %t1793, { i64, i8* }** %t1794
  %t1795 = load { i64, i8* }*, { i64, i8* }** %t1790
  %t1796 = call i64 @nyx_array_get({ i64, i8* }* %t1795, i64 1)
  %t1797 = inttoptr i64 %t1796 to { i64, i8* }*
  store { i64, i8* }* %t1797, { i64, i8* }** %t1798
  %t1799 = load { i64, i8* }*, { i64, i8* }** %t1790
  %t1800 = call i64 @nyx_array_get_checked({ i64, i8* }* %t1799, i64 2, i64 2)
  %t1801 = inttoptr i64 %t1800 to %nyx_string*
  store %nyx_string* %t1801, %nyx_string** %t1802
  %t1803 = load { i64, i8* }*, { i64, i8* }** %t1794
  %t1804 = load %Environment, %Environment* %env.ptr
  %t1805 = call %Value @eval_expr({ i64, i8* }* %t1803, %Environment %t1804)
  store %Value %t1805, %Value* %t1806
  %t1807 = getelementptr %Value, %Value* %t1806, i32 0, i32 0
  %t1808 = load %nyx_string*, %nyx_string** %t1807
  %t1809 = getelementptr [6 x i8], [6 x i8]* @.str183, i32 0, i32 0
  %t1810 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str183.c, i8* %t1809, i64 5)
  %t1811 = call i1 @nyx_string_equals(%nyx_string* %t1808, %nyx_string* %t1810)
  br i1 %t1811, label %then345, label %else346
then345:
  %t1812 = load %Value, %Value* %t1806
  ret %Value %t1812
else346:
  br label %merge347
merge347:
  %t1813 = load { i64, i8* }*, { i64, i8* }** %t1798
  %t1814 = load %Environment, %Environment* %env.ptr
  %t1815 = call %Value @eval_expr({ i64, i8* }* %t1813, %Environment %t1814)
  store %Value %t1815, %Value* %t1816
  %t1817 = getelementptr %Value, %Value* %t1816, i32 0, i32 0
  %t1818 = load %nyx_string*, %nyx_string** %t1817
  %t1819 = getelementptr [6 x i8], [6 x i8]* @.str184, i32 0, i32 0
  %t1820 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str184.c, i8* %t1819, i64 5)
  %t1821 = call i1 @nyx_string_equals(%nyx_string* %t1818, %nyx_string* %t1820)
  br i1 %t1821, label %then348, label %else349
then348:
  %t1822 = load %Value, %Value* %t1816
  ret %Value %t1822
else349:
  br label %merge350
merge350:
  store i1 true, i1* %t1823
  %t1824 = getelementptr %Value, %Value* %t1806, i32 0, i32 0
  %t1825 = load %nyx_string*, %nyx_string** %t1824
  %t1826 = getelementptr [4 x i8], [4 x i8]* @.str185, i32 0, i32 0
  %t1827 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str185.c, i8* %t1826, i64 3)
  %t1828 = call i1 @nyx_string_equals(%nyx_string* %t1825, %nyx_string* %t1827)
  %t1829 = xor i1 %t1828, true
  br i1 %t1829, label %sc_or_end352, label %sc_or_rhs351
sc_or_rhs351:
  %t1830 = getelementptr %Value, %Value* %t1816, i32 0, i32 0
  %t1831 = load %nyx_string*, %nyx_string** %t1830
  %t1832 = getelementptr [4 x i8], [4 x i8]* @.str186, i32 0, i32 0
  %t1833 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str186.c, i8* %t1832, i64 3)
  %t1834 = call i1 @nyx_string_equals(%nyx_string* %t1831, %nyx_string* %t1833)
  %t1835 = xor i1 %t1834, true
  store i1 %t1835, i1* %t1823
  br label %sc_or_end352
sc_or_end352:
  %t1836 = load i1, i1* %t1823
  br i1 %t1836, label %then353, label %else354
then353:
  %t1837 = getelementptr [8 x i8], [8 x i8]* @.str187, i32 0, i32 0
  %t1838 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str187.c, i8* %t1837, i64 7)
  %t1839 = getelementptr [28 x i8], [28 x i8]* @.str188, i32 0, i32 0
  %t1840 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str188.c, i8* %t1839, i64 27)
  %t1841 = getelementptr %Value, %Value* %t1806, i32 0, i32 0
  %t1842 = load %nyx_string*, %nyx_string** %t1841
  %t1843 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1840, %nyx_string* %t1842)
  %t1844 = getelementptr [3 x i8], [3 x i8]* @.str189, i32 0, i32 0
  %t1845 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str189.c, i8* %t1844, i64 2)
  %t1846 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1843, %nyx_string* %t1845)
  %t1847 = getelementptr %Value, %Value* %t1816, i32 0, i32 0
  %t1848 = load %nyx_string*, %nyx_string** %t1847
  %t1849 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1846, %nyx_string* %t1848)
  %t1850 = getelementptr [44 x i8], [44 x i8]* @.str190, i32 0, i32 0
  %t1851 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str190.c, i8* %t1850, i64 43)
  %t1852 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1849, %nyx_string* %t1851)
  %t1853 = getelementptr [27 x i8], [27 x i8]* @.str191, i32 0, i32 0
  %t1854 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str191.c, i8* %t1853, i64 26)
  %t1855 = getelementptr %Value, %Value* %t1806, i32 0, i32 0
  %t1856 = load %nyx_string*, %nyx_string** %t1855
  %t1857 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1854, %nyx_string* %t1856)
  %t1858 = getelementptr [3 x i8], [3 x i8]* @.str192, i32 0, i32 0
  %t1859 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str192.c, i8* %t1858, i64 2)
  %t1860 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1857, %nyx_string* %t1859)
  %t1861 = getelementptr %Value, %Value* %t1816, i32 0, i32 0
  %t1862 = load %nyx_string*, %nyx_string** %t1861
  %t1863 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1860, %nyx_string* %t1862)
  %t1864 = getelementptr [43 x i8], [43 x i8]* @.str193, i32 0, i32 0
  %t1865 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str193.c, i8* %t1864, i64 42)
  %t1866 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1863, %nyx_string* %t1865)
  %t1867 = call i64 @interp_err(%nyx_string* %t1838, %nyx_string* %t1852, %nyx_string* %t1866)
  %t1868 = call %Value @make_error()
  ret %Value %t1868
else354:
  br label %merge355
merge355:
  %t1869 = getelementptr %Value, %Value* %t1816, i32 0, i32 1
  %t1870 = load i64, i64* %t1869
  store i64 %t1870, i64* %t1871
  %t1872 = getelementptr %Value, %Value* %t1806, i32 0, i32 1
  %t1873 = load i64, i64* %t1872
  store i64 %t1873, i64* %t1874
  %t1875 = getelementptr [6 x i8], [6 x i8]* @.str194, i32 0, i32 0
  %t1876 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str194.c, i8* %t1875, i64 5)
  store %nyx_string* %t1876, %nyx_string** %t1877
  %t1878 = getelementptr [7 x i8], [7 x i8]* @.str195, i32 0, i32 0
  %t1879 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str195.c, i8* %t1878, i64 6)
  store %nyx_string* %t1879, %nyx_string** %t1880
  %t1881 = getelementptr [6 x i8], [6 x i8]* @.str196, i32 0, i32 0
  %t1882 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str196.c, i8* %t1881, i64 5)
  store %nyx_string* %t1882, %nyx_string** %t1883
  br label %while_cond356
while_cond356:
  store i1 true, i1* %t1884
  %t1885 = load i64, i64* %t1874
  %t1886 = load i64, i64* %t1871
  %t1887 = icmp slt i64 %t1885, %t1886
  br i1 %t1887, label %sc_or_end360, label %sc_or_rhs359
sc_or_rhs359:
  store i1 false, i1* %t1888
  %t1889 = load %nyx_string*, %nyx_string** %t1802
  %t1890 = getelementptr [5 x i8], [5 x i8]* @.str197, i32 0, i32 0
  %t1891 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str197.c, i8* %t1890, i64 4)
  %t1892 = call i1 @nyx_string_equals(%nyx_string* %t1889, %nyx_string* %t1891)
  br i1 %t1892, label %sc_and_rhs361, label %sc_and_end362
sc_and_rhs361:
  %t1893 = load i64, i64* %t1874
  %t1894 = load i64, i64* %t1871
  %t1895 = icmp eq i64 %t1893, %t1894
  store i1 %t1895, i1* %t1888
  br label %sc_and_end362
sc_and_end362:
  %t1896 = load i1, i1* %t1888
  store i1 %t1896, i1* %t1884
  br label %sc_or_end360
sc_or_end360:
  %t1897 = load i1, i1* %t1884
  br i1 %t1897, label %while_body357, label %while_end358
while_body357:
  %t1898 = load %Environment, %Environment* %t1782
  %t1899 = load %nyx_string*, %nyx_string** %t1771
  %t1900 = load i64, i64* %t1874
  %t1901 = call %Value @make_int(i64 %t1900)
  %t1902 = call i64 @env_define(%Environment %t1898, %nyx_string* %t1899, %Value %t1901)
  %t1903 = load { i64, i8* }*, { i64, i8* }** %t1779
  %t1904 = load %Environment, %Environment* %t1782
  %t1905 = call %Value @eval_stmt({ i64, i8* }* %t1903, %Environment %t1904)
  store %Value %t1905, %Value* %t1906
  store i1 true, i1* %t1907
  %t1908 = getelementptr %Value, %Value* %t1906, i32 0, i32 0
  %t1909 = load %nyx_string*, %nyx_string** %t1908
  %t1910 = load %nyx_string*, %nyx_string** %t1877
  %t1911 = call i1 @nyx_string_equals(%nyx_string* %t1909, %nyx_string* %t1910)
  br i1 %t1911, label %sc_or_end364, label %sc_or_rhs363
sc_or_rhs363:
  %t1912 = getelementptr %Value, %Value* %t1906, i32 0, i32 0
  %t1913 = load %nyx_string*, %nyx_string** %t1912
  %t1914 = load %nyx_string*, %nyx_string** %t1880
  %t1915 = call i1 @nyx_string_equals(%nyx_string* %t1913, %nyx_string* %t1914)
  store i1 %t1915, i1* %t1907
  br label %sc_or_end364
sc_or_end364:
  %t1916 = load i1, i1* %t1907
  br i1 %t1916, label %then365, label %else366
then365:
  %t1917 = load %Value, %Value* %t1906
  ret %Value %t1917
else366:
  br label %merge367
merge367:
  %t1918 = getelementptr %Value, %Value* %t1906, i32 0, i32 0
  %t1919 = load %nyx_string*, %nyx_string** %t1918
  %t1920 = load %nyx_string*, %nyx_string** %t1883
  %t1921 = call i1 @nyx_string_equals(%nyx_string* %t1919, %nyx_string* %t1920)
  br i1 %t1921, label %then368, label %else369
then368:
  %t1922 = call %Value @make_nil()
  ret %Value %t1922
else369:
  br label %merge370
merge370:
  %t1923 = load i64, i64* %t1874
  %t1924 = add i64 %t1923, 1
  store i64 %t1924, i64* %t1874
  br label %while_cond356
while_end358:
  %t1925 = call %Value @make_nil()
  ret %Value %t1925
else343:
  br label %merge344
merge344:
  %t1926 = load { i64, i8* }*, { i64, i8* }** %t1775
  %t1927 = load %Environment, %Environment* %env.ptr
  %t1928 = call %Value @eval_expr({ i64, i8* }* %t1926, %Environment %t1927)
  store %Value %t1928, %Value* %t1929
  %t1930 = getelementptr %Value, %Value* %t1929, i32 0, i32 0
  %t1931 = load %nyx_string*, %nyx_string** %t1930
  %t1932 = getelementptr [6 x i8], [6 x i8]* @.str198, i32 0, i32 0
  %t1933 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str198.c, i8* %t1932, i64 5)
  %t1934 = call i1 @nyx_string_equals(%nyx_string* %t1931, %nyx_string* %t1933)
  br i1 %t1934, label %then371, label %else372
then371:
  %t1935 = load %Value, %Value* %t1929
  ret %Value %t1935
else372:
  br label %merge373
merge373:
  %t1936 = getelementptr %Value, %Value* %t1929, i32 0, i32 0
  %t1937 = load %nyx_string*, %nyx_string** %t1936
  %t1938 = getelementptr [6 x i8], [6 x i8]* @.str199, i32 0, i32 0
  %t1939 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str199.c, i8* %t1938, i64 5)
  %t1940 = call i1 @nyx_string_equals(%nyx_string* %t1937, %nyx_string* %t1939)
  %t1941 = xor i1 %t1940, true
  br i1 %t1941, label %then374, label %else375
then374:
  %t1942 = getelementptr [8 x i8], [8 x i8]* @.str200, i32 0, i32 0
  %t1943 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str200.c, i8* %t1942, i64 7)
  %t1944 = getelementptr [26 x i8], [26 x i8]* @.str201, i32 0, i32 0
  %t1945 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str201.c, i8* %t1944, i64 25)
  %t1946 = getelementptr %Value, %Value* %t1929, i32 0, i32 0
  %t1947 = load %nyx_string*, %nyx_string** %t1946
  %t1948 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1945, %nyx_string* %t1947)
  %t1949 = getelementptr [62 x i8], [62 x i8]* @.str202, i32 0, i32 0
  %t1950 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str202.c, i8* %t1949, i64 61)
  %t1951 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1948, %nyx_string* %t1950)
  %t1952 = getelementptr [22 x i8], [22 x i8]* @.str203, i32 0, i32 0
  %t1953 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str203.c, i8* %t1952, i64 21)
  %t1954 = getelementptr %Value, %Value* %t1929, i32 0, i32 0
  %t1955 = load %nyx_string*, %nyx_string** %t1954
  %t1956 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1953, %nyx_string* %t1955)
  %t1957 = getelementptr [62 x i8], [62 x i8]* @.str204, i32 0, i32 0
  %t1958 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str204.c, i8* %t1957, i64 61)
  %t1959 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1956, %nyx_string* %t1958)
  %t1960 = call i64 @interp_err(%nyx_string* %t1943, %nyx_string* %t1951, %nyx_string* %t1959)
  %t1961 = call %Value @make_error()
  ret %Value %t1961
else375:
  br label %merge376
merge376:
  %t1962 = getelementptr %Value, %Value* %t1929, i32 0, i32 5
  %t1963 = load { i64, i8* }*, { i64, i8* }** %t1962
  store { i64, i8* }* %t1963, { i64, i8* }** %t1964
  store i64 0, i64* %t1965
  %t1966 = getelementptr [6 x i8], [6 x i8]* @.str205, i32 0, i32 0
  %t1967 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str205.c, i8* %t1966, i64 5)
  store %nyx_string* %t1967, %nyx_string** %t1968
  %t1969 = getelementptr [7 x i8], [7 x i8]* @.str206, i32 0, i32 0
  %t1970 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str206.c, i8* %t1969, i64 6)
  store %nyx_string* %t1970, %nyx_string** %t1971
  %t1972 = getelementptr [6 x i8], [6 x i8]* @.str207, i32 0, i32 0
  %t1973 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str207.c, i8* %t1972, i64 5)
  store %nyx_string* %t1973, %nyx_string** %t1974
  br label %while_cond377
while_cond377:
  %t1975 = load i64, i64* %t1965
  %t1976 = load { i64, i8* }*, { i64, i8* }** %t1964
  %t1977 = call i64 @nyx_array_length({ i64, i8* }* %t1976)
  %t1978 = icmp slt i64 %t1975, %t1977
  br i1 %t1978, label %while_body378, label %while_end379
while_body378:
  %t1979 = load { i64, i8* }*, { i64, i8* }** %t1964
  %t1980 = load i64, i64* %t1965
  %t1981 = getelementptr [6 x i8], [6 x i8]* @.slotT208, i32 0, i32 0
  %t1982 = call i64 @nyx_slot_as_value_checked({ i64, i8* }* %t1979, i64 %t1980, i8* %t1981)
  %t1983 = inttoptr i64 %t1982 to %Value*
  %t1984 = load %Value, %Value* %t1983
  store %Value %t1984, %Value* %t1985
  %t1986 = load %Environment, %Environment* %t1782
  %t1987 = load %nyx_string*, %nyx_string** %t1771
  %t1988 = load %Value, %Value* %t1985
  %t1989 = call i64 @env_define(%Environment %t1986, %nyx_string* %t1987, %Value %t1988)
  %t1990 = load { i64, i8* }*, { i64, i8* }** %t1779
  %t1991 = load %Environment, %Environment* %t1782
  %t1992 = call %Value @eval_stmt({ i64, i8* }* %t1990, %Environment %t1991)
  store %Value %t1992, %Value* %t1993
  store i1 true, i1* %t1994
  %t1995 = getelementptr %Value, %Value* %t1993, i32 0, i32 0
  %t1996 = load %nyx_string*, %nyx_string** %t1995
  %t1997 = load %nyx_string*, %nyx_string** %t1968
  %t1998 = call i1 @nyx_string_equals(%nyx_string* %t1996, %nyx_string* %t1997)
  br i1 %t1998, label %sc_or_end381, label %sc_or_rhs380
sc_or_rhs380:
  %t1999 = getelementptr %Value, %Value* %t1993, i32 0, i32 0
  %t2000 = load %nyx_string*, %nyx_string** %t1999
  %t2001 = load %nyx_string*, %nyx_string** %t1971
  %t2002 = call i1 @nyx_string_equals(%nyx_string* %t2000, %nyx_string* %t2001)
  store i1 %t2002, i1* %t1994
  br label %sc_or_end381
sc_or_end381:
  %t2003 = load i1, i1* %t1994
  br i1 %t2003, label %then382, label %else383
then382:
  %t2004 = load %Value, %Value* %t1993
  ret %Value %t2004
else383:
  br label %merge384
merge384:
  %t2005 = getelementptr %Value, %Value* %t1993, i32 0, i32 0
  %t2006 = load %nyx_string*, %nyx_string** %t2005
  %t2007 = load %nyx_string*, %nyx_string** %t1974
  %t2008 = call i1 @nyx_string_equals(%nyx_string* %t2006, %nyx_string* %t2007)
  br i1 %t2008, label %then385, label %else386
then385:
  %t2009 = call %Value @make_nil()
  ret %Value %t2009
else386:
  br label %merge387
merge387:
  %t2010 = load i64, i64* %t1965
  %t2011 = add i64 %t2010, 1
  store i64 %t2011, i64* %t1965
  br label %while_cond377
while_end379:
  %t2012 = call %Value @make_nil()
  ret %Value %t2012
}

define internal %Value @eval_block(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  %env.ptr = alloca %Environment
  %t2015 = alloca { i64, i8* }*
  %t2019 = alloca { i64, i8* }*
  %t2022 = alloca %Environment
  %t2024 = alloca %Value
  %t2025 = alloca i64
  %t2028 = alloca i64
  %t2031 = alloca %nyx_string*
  %t2034 = alloca %nyx_string*
  %t2042 = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  store %Environment %env.param, %Environment* %env.ptr
  %t2013 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %t2014 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %t2013)
  store { i64, i8* }* %t2014, { i64, i8* }** %t2015
  %t2016 = load { i64, i8* }*, { i64, i8* }** %t2015
  %t2017 = call i64 @nyx_array_get({ i64, i8* }* %t2016, i64 0)
  %t2018 = inttoptr i64 %t2017 to { i64, i8* }*
  store { i64, i8* }* %t2018, { i64, i8* }** %t2019
  %t2020 = load %Environment, %Environment* %env.ptr
  %t2021 = call %Environment @make_child_env(%Environment %t2020)
  store %Environment %t2021, %Environment* %t2022
  %t2023 = call %Value @make_nil()
  store %Value %t2023, %Value* %t2024
  store i64 0, i64* %t2025
  %t2026 = load { i64, i8* }*, { i64, i8* }** %t2019
  %t2027 = call i64 @nyx_array_length({ i64, i8* }* %t2026)
  store i64 %t2027, i64* %t2028
  %t2029 = getelementptr [7 x i8], [7 x i8]* @.str209, i32 0, i32 0
  %t2030 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str209.c, i8* %t2029, i64 6)
  store %nyx_string* %t2030, %nyx_string** %t2031
  %t2032 = getelementptr [6 x i8], [6 x i8]* @.str210, i32 0, i32 0
  %t2033 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str210.c, i8* %t2032, i64 5)
  store %nyx_string* %t2033, %nyx_string** %t2034
  br label %while_cond388
while_cond388:
  %t2035 = load i64, i64* %t2025
  %t2036 = load i64, i64* %t2028
  %t2037 = icmp slt i64 %t2035, %t2036
  br i1 %t2037, label %while_body389, label %while_end390
while_body389:
  %t2038 = load { i64, i8* }*, { i64, i8* }** %t2019
  %t2039 = load i64, i64* %t2025
  %t2040 = call i64 @nyx_array_get({ i64, i8* }* %t2038, i64 %t2039)
  %t2041 = inttoptr i64 %t2040 to { i64, i8* }*
  store { i64, i8* }* %t2041, { i64, i8* }** %t2042
  %t2043 = load { i64, i8* }*, { i64, i8* }** %t2042
  %t2044 = load %Environment, %Environment* %t2022
  %t2045 = call %Value @eval_stmt({ i64, i8* }* %t2043, %Environment %t2044)
  store %Value %t2045, %Value* %t2024
  %t2046 = getelementptr %Value, %Value* %t2024, i32 0, i32 0
  %t2047 = load %nyx_string*, %nyx_string** %t2046
  %t2048 = load %nyx_string*, %nyx_string** %t2031
  %t2049 = call i1 @nyx_string_equals(%nyx_string* %t2047, %nyx_string* %t2048)
  br i1 %t2049, label %then391, label %else392
then391:
  %t2050 = load %Value, %Value* %t2024
  ret %Value %t2050
else392:
  br label %merge393
merge393:
  %t2051 = getelementptr %Value, %Value* %t2024, i32 0, i32 0
  %t2052 = load %nyx_string*, %nyx_string** %t2051
  %t2053 = load %nyx_string*, %nyx_string** %t2034
  %t2054 = call i1 @nyx_string_equals(%nyx_string* %t2052, %nyx_string* %t2053)
  br i1 %t2054, label %then394, label %else395
then394:
  %t2055 = load %Value, %Value* %t2024
  ret %Value %t2055
else395:
  br label %merge396
merge396:
  %t2056 = load %Value, %Value* %t2024
  %t2057 = call i1 @is_loop_control(%Value %t2056)
  br i1 %t2057, label %then397, label %else398
then397:
  %t2058 = load %Value, %Value* %t2024
  ret %Value %t2058
else398:
  br label %merge399
merge399:
  %t2059 = load i64, i64* %t2025
  %t2060 = add i64 %t2059, 1
  store i64 %t2060, i64* %t2025
  br label %while_cond388
while_end390:
  %t2061 = load %Value, %Value* %t2024
  ret %Value %t2061
}

define internal %Value @eval_function_decl(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  %env.ptr = alloca %Environment
  %t2064 = alloca { i64, i8* }*
  %t2068 = alloca %nyx_string*
  %t2072 = alloca { i64, i8* }*
  %t2075 = alloca i64
  %t2079 = alloca { i64, i8* }*
  %t2081 = alloca { i64, i8* }*
  %t2084 = alloca %nyx_string*
  %t2087 = alloca { i64, i8* }*
  %t2090 = alloca i8*
  %t2093 = alloca { i64, i8* }*
  %t2120 = alloca %Value
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  store %Environment %env.param, %Environment* %env.ptr
  %t2062 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %t2063 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %t2062)
  store { i64, i8* }* %t2063, { i64, i8* }** %t2064
  %t2065 = load { i64, i8* }*, { i64, i8* }** %t2064
  %t2066 = call i64 @nyx_array_get_checked({ i64, i8* }* %t2065, i64 0, i64 2)
  %t2067 = inttoptr i64 %t2066 to %nyx_string*
  store %nyx_string* %t2067, %nyx_string** %t2068
  %t2069 = load { i64, i8* }*, { i64, i8* }** %t2064
  %t2070 = call i64 @nyx_array_get({ i64, i8* }* %t2069, i64 1)
  %t2071 = inttoptr i64 %t2070 to { i64, i8* }*
  store { i64, i8* }* %t2071, { i64, i8* }** %t2072
  %t2073 = load { i64, i8* }*, { i64, i8* }** %t2064
  %t2074 = call i64 @nyx_array_get({ i64, i8* }* %t2073, i64 2)
  store i64 %t2074, i64* %t2075
  %t2076 = load { i64, i8* }*, { i64, i8* }** %t2064
  %t2077 = call i64 @nyx_array_get({ i64, i8* }* %t2076, i64 3)
  %t2078 = inttoptr i64 %t2077 to { i64, i8* }*
  store { i64, i8* }* %t2078, { i64, i8* }** %t2079
  %t2080 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t2080, { i64, i8* }** %t2081
  %t2082 = load { i64, i8* }*, { i64, i8* }** %t2079
  %t2083 = call %nyx_string* @astnode_get_type({ i64, i8* }* %t2082)
  store %nyx_string* %t2083, %nyx_string** %t2084
  %t2085 = load { i64, i8* }*, { i64, i8* }** %t2079
  %t2086 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %t2085)
  store { i64, i8* }* %t2086, { i64, i8* }** %t2087
  %t2088 = getelementptr %Environment, %Environment* %env.ptr, i32 0, i32 0
  %t2089 = load i8*, i8** %t2088
  store i8* %t2089, i8** %t2090
  %t2091 = getelementptr %Environment, %Environment* %env.ptr, i32 0, i32 1
  %t2092 = load { i64, i8* }*, { i64, i8* }** %t2091
  store { i64, i8* }* %t2092, { i64, i8* }** %t2093
  %t2094 = getelementptr %Value, %Value* null, i32 1
  %t2095 = ptrtoint %Value* %t2094 to i64
  %t2096 = call i8* @GC_malloc(i64 %t2095)
  %t2097 = bitcast i8* %t2096 to %Value*
  %t2098 = getelementptr [9 x i8], [9 x i8]* @.str211, i32 0, i32 0
  %t2099 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str211.c, i8* %t2098, i64 8)
  %t2100 = getelementptr %Value, %Value* %t2097, i32 0, i32 0
  store %nyx_string* %t2099, %nyx_string** %t2100
  %t2101 = getelementptr %Value, %Value* %t2097, i32 0, i32 1
  store i64 0, i64* %t2101
  %t2102 = getelementptr %Value, %Value* %t2097, i32 0, i32 2
  store double 0.0, double* %t2102
  %t2103 = getelementptr %Value, %Value* %t2097, i32 0, i32 3
  store i1 0, i1* %t2103
  %t2104 = getelementptr [1 x i8], [1 x i8]* @.str212, i32 0, i32 0
  %t2105 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str212.c, i8* %t2104, i64 0)
  %t2106 = getelementptr %Value, %Value* %t2097, i32 0, i32 4
  store %nyx_string* %t2105, %nyx_string** %t2106
  %t2107 = load { i64, i8* }*, { i64, i8* }** %t2081
  %t2108 = getelementptr %Value, %Value* %t2097, i32 0, i32 5
  store { i64, i8* }* %t2107, { i64, i8* }** %t2108
  %t2109 = load { i64, i8* }*, { i64, i8* }** %t2072
  %t2110 = getelementptr %Value, %Value* %t2097, i32 0, i32 6
  store { i64, i8* }* %t2109, { i64, i8* }** %t2110
  %t2111 = load %nyx_string*, %nyx_string** %t2084
  %t2112 = getelementptr %Value, %Value* %t2097, i32 0, i32 7
  store %nyx_string* %t2111, %nyx_string** %t2112
  %t2113 = load { i64, i8* }*, { i64, i8* }** %t2087
  %t2114 = getelementptr %Value, %Value* %t2097, i32 0, i32 8
  store { i64, i8* }* %t2113, { i64, i8* }** %t2114
  %t2115 = load i8*, i8** %t2090
  %t2116 = getelementptr %Value, %Value* %t2097, i32 0, i32 9
  store i8* %t2115, i8** %t2116
  %t2117 = load { i64, i8* }*, { i64, i8* }** %t2093
  %t2118 = getelementptr %Value, %Value* %t2097, i32 0, i32 10
  store { i64, i8* }* %t2117, { i64, i8* }** %t2118
  %t2119 = load %Value, %Value* %t2097
  store %Value %t2119, %Value* %t2120
  %t2121 = load %Environment, %Environment* %env.ptr
  %t2122 = load %nyx_string*, %nyx_string** %t2068
  %t2123 = load %Value, %Value* %t2120
  %t2124 = call i64 @env_define(%Environment %t2121, %nyx_string* %t2122, %Value %t2123)
  %t2125 = call %Value @make_nil()
  ret %Value %t2125
}

define internal %Value @unwrap_return_value(
%Value %return_val.param) {
  %return_val.ptr = alloca %Value
  %t2128 = alloca { i64, i8* }*
  %t2134 = alloca %Value
  store %Value %return_val.param, %Value* %return_val.ptr
  %t2126 = getelementptr %Value, %Value* %return_val.ptr, i32 0, i32 5
  %t2127 = load { i64, i8* }*, { i64, i8* }** %t2126
  store { i64, i8* }* %t2127, { i64, i8* }** %t2128
  %t2129 = load { i64, i8* }*, { i64, i8* }** %t2128
  %t2130 = getelementptr [6 x i8], [6 x i8]* @.slotT213, i32 0, i32 0
  %t2131 = call i64 @nyx_slot_as_value_checked({ i64, i8* }* %t2129, i64 0, i8* %t2130)
  %t2132 = inttoptr i64 %t2131 to %Value*
  %t2133 = load %Value, %Value* %t2132
  store %Value %t2133, %Value* %t2134
  %t2135 = load %Value, %Value* %t2134
  ret %Value %t2135
}

define internal %Value @eval_method_call(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  %env.ptr = alloca %Environment
  %t2138 = alloca { i64, i8* }*
  %t2142 = alloca { i64, i8* }*
  %t2146 = alloca %nyx_string*
  %t2150 = alloca { i64, i8* }*
  %t2154 = alloca %Value
  %t2168 = alloca %nyx_string*
  %t2220 = alloca %Value
  %t2241 = alloca %Value
  %t2253 = alloca %Value
  %t2276 = alloca %Value
  %t2289 = alloca i8
  %t2302 = alloca %Value
  %t2323 = alloca %Value
  %t2344 = alloca %Value
  %t2356 = alloca %Value
  %t2377 = alloca { i64, i8* }*
  %t2394 = alloca %Value
  %t2443 = alloca %nyx_string*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  store %Environment %env.param, %Environment* %env.ptr
  %t2136 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %t2137 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %t2136)
  store { i64, i8* }* %t2137, { i64, i8* }** %t2138
  %t2139 = load { i64, i8* }*, { i64, i8* }** %t2138
  %t2140 = call i64 @nyx_array_get({ i64, i8* }* %t2139, i64 0)
  %t2141 = inttoptr i64 %t2140 to { i64, i8* }*
  store { i64, i8* }* %t2141, { i64, i8* }** %t2142
  %t2143 = load { i64, i8* }*, { i64, i8* }** %t2138
  %t2144 = call i64 @nyx_array_get_checked({ i64, i8* }* %t2143, i64 1, i64 2)
  %t2145 = inttoptr i64 %t2144 to %nyx_string*
  store %nyx_string* %t2145, %nyx_string** %t2146
  %t2147 = load { i64, i8* }*, { i64, i8* }** %t2138
  %t2148 = call i64 @nyx_array_get({ i64, i8* }* %t2147, i64 2)
  %t2149 = inttoptr i64 %t2148 to { i64, i8* }*
  store { i64, i8* }* %t2149, { i64, i8* }** %t2150
  %t2151 = load { i64, i8* }*, { i64, i8* }** %t2142
  %t2152 = load %Environment, %Environment* %env.ptr
  %t2153 = call %Value @eval_expr({ i64, i8* }* %t2151, %Environment %t2152)
  store %Value %t2153, %Value* %t2154
  %t2155 = getelementptr %Value, %Value* %t2154, i32 0, i32 0
  %t2156 = load %nyx_string*, %nyx_string** %t2155
  %t2157 = getelementptr [6 x i8], [6 x i8]* @.str214, i32 0, i32 0
  %t2158 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str214.c, i8* %t2157, i64 5)
  %t2159 = call i1 @nyx_string_equals(%nyx_string* %t2156, %nyx_string* %t2158)
  br i1 %t2159, label %then400, label %else401
then400:
  %t2160 = load %Value, %Value* %t2154
  ret %Value %t2160
else401:
  br label %merge402
merge402:
  %t2161 = getelementptr %Value, %Value* %t2154, i32 0, i32 0
  %t2162 = load %nyx_string*, %nyx_string** %t2161
  %t2163 = getelementptr [7 x i8], [7 x i8]* @.str215, i32 0, i32 0
  %t2164 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str215.c, i8* %t2163, i64 6)
  %t2165 = call i1 @nyx_string_equals(%nyx_string* %t2162, %nyx_string* %t2164)
  br i1 %t2165, label %then403, label %else404
then403:
  %t2166 = getelementptr %Value, %Value* %t2154, i32 0, i32 4
  %t2167 = load %nyx_string*, %nyx_string** %t2166
  store %nyx_string* %t2167, %nyx_string** %t2168
  %t2169 = load %nyx_string*, %nyx_string** %t2146
  %t2170 = getelementptr [7 x i8], [7 x i8]* @.str216, i32 0, i32 0
  %t2171 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str216.c, i8* %t2170, i64 6)
  %t2172 = call i1 @nyx_string_equals(%nyx_string* %t2169, %nyx_string* %t2171)
  br i1 %t2172, label %then406, label %else407
then406:
  %t2173 = load %nyx_string*, %nyx_string** %t2168
  %t2174 = call i64 @nyx_string_byte_length(%nyx_string* %t2173)
  %t2175 = call %Value @make_int(i64 %t2174)
  ret %Value %t2175
else407:
  br label %merge408
merge408:
  %t2176 = load %nyx_string*, %nyx_string** %t2146
  %t2177 = getelementptr [12 x i8], [12 x i8]* @.str217, i32 0, i32 0
  %t2178 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str217.c, i8* %t2177, i64 11)
  %t2179 = call i1 @nyx_string_equals(%nyx_string* %t2176, %nyx_string* %t2178)
  br i1 %t2179, label %then409, label %else410
then409:
  %t2180 = load %nyx_string*, %nyx_string** %t2168
  %t2181 = call i64 @nyx_string_length_utf8(%nyx_string* %t2180)
  %t2182 = call %Value @make_int(i64 %t2181)
  ret %Value %t2182
else410:
  br label %merge411
merge411:
  %t2183 = load %nyx_string*, %nyx_string** %t2146
  %t2184 = getelementptr [12 x i8], [12 x i8]* @.str218, i32 0, i32 0
  %t2185 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str218.c, i8* %t2184, i64 11)
  %t2186 = call i1 @nyx_string_equals(%nyx_string* %t2183, %nyx_string* %t2185)
  br i1 %t2186, label %then412, label %else413
then412:
  %t2187 = load %nyx_string*, %nyx_string** %t2168
  %t2188 = call i64 @nyx_string_byte_length(%nyx_string* %t2187)
  %t2189 = call %Value @make_int(i64 %t2188)
  ret %Value %t2189
else413:
  br label %merge414
merge414:
  %t2190 = load %nyx_string*, %nyx_string** %t2146
  %t2191 = getelementptr [8 x i8], [8 x i8]* @.str219, i32 0, i32 0
  %t2192 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str219.c, i8* %t2191, i64 7)
  %t2193 = call i1 @nyx_string_equals(%nyx_string* %t2190, %nyx_string* %t2192)
  br i1 %t2193, label %then415, label %else416
then415:
  %t2194 = load %nyx_string*, %nyx_string** %t2168
  %t2195 = call %nyx_string* @nyx_string_to_upper(%nyx_string* %t2194)
  %t2196 = call %Value @make_string(%nyx_string* %t2195)
  ret %Value %t2196
else416:
  br label %merge417
merge417:
  %t2197 = load %nyx_string*, %nyx_string** %t2146
  %t2198 = getelementptr [8 x i8], [8 x i8]* @.str220, i32 0, i32 0
  %t2199 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str220.c, i8* %t2198, i64 7)
  %t2200 = call i1 @nyx_string_equals(%nyx_string* %t2197, %nyx_string* %t2199)
  br i1 %t2200, label %then418, label %else419
then418:
  %t2201 = load %nyx_string*, %nyx_string** %t2168
  %t2202 = call %nyx_string* @nyx_string_to_lower(%nyx_string* %t2201)
  %t2203 = call %Value @make_string(%nyx_string* %t2202)
  ret %Value %t2203
else419:
  br label %merge420
merge420:
  %t2204 = load %nyx_string*, %nyx_string** %t2146
  %t2205 = getelementptr [5 x i8], [5 x i8]* @.str221, i32 0, i32 0
  %t2206 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str221.c, i8* %t2205, i64 4)
  %t2207 = call i1 @nyx_string_equals(%nyx_string* %t2204, %nyx_string* %t2206)
  br i1 %t2207, label %then421, label %else422
then421:
  %t2208 = load %nyx_string*, %nyx_string** %t2168
  %t2209 = call %nyx_string* @nyx_string_trim(%nyx_string* %t2208)
  %t2210 = call %Value @make_string(%nyx_string* %t2209)
  ret %Value %t2210
else422:
  br label %merge423
merge423:
  %t2211 = load %nyx_string*, %nyx_string** %t2146
  %t2212 = getelementptr [8 x i8], [8 x i8]* @.str222, i32 0, i32 0
  %t2213 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str222.c, i8* %t2212, i64 7)
  %t2214 = call i1 @nyx_string_equals(%nyx_string* %t2211, %nyx_string* %t2213)
  br i1 %t2214, label %then424, label %else425
then424:
  %t2215 = load { i64, i8* }*, { i64, i8* }** %t2150
  %t2216 = call i64 @nyx_array_get({ i64, i8* }* %t2215, i64 0)
  %t2217 = inttoptr i64 %t2216 to { i64, i8* }*
  %t2218 = load %Environment, %Environment* %env.ptr
  %t2219 = call %Value @eval_expr({ i64, i8* }* %t2217, %Environment %t2218)
  store %Value %t2219, %Value* %t2220
  %t2221 = getelementptr %Value, %Value* %t2220, i32 0, i32 0
  %t2222 = load %nyx_string*, %nyx_string** %t2221
  %t2223 = getelementptr [6 x i8], [6 x i8]* @.str223, i32 0, i32 0
  %t2224 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str223.c, i8* %t2223, i64 5)
  %t2225 = call i1 @nyx_string_equals(%nyx_string* %t2222, %nyx_string* %t2224)
  br i1 %t2225, label %then427, label %else428
then427:
  %t2226 = load %Value, %Value* %t2220
  ret %Value %t2226
else428:
  br label %merge429
merge429:
  %t2227 = load %nyx_string*, %nyx_string** %t2168
  %t2228 = getelementptr %Value, %Value* %t2220, i32 0, i32 4
  %t2229 = load %nyx_string*, %nyx_string** %t2228
  %t2230 = call i64 @nyx_string_index_of(%nyx_string* %t2227, %nyx_string* %t2229)
  %t2231 = call %Value @make_int(i64 %t2230)
  ret %Value %t2231
else425:
  br label %merge426
merge426:
  %t2232 = load %nyx_string*, %nyx_string** %t2146
  %t2233 = getelementptr [10 x i8], [10 x i8]* @.str224, i32 0, i32 0
  %t2234 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str224.c, i8* %t2233, i64 9)
  %t2235 = call i1 @nyx_string_equals(%nyx_string* %t2232, %nyx_string* %t2234)
  br i1 %t2235, label %then430, label %else431
then430:
  %t2236 = load { i64, i8* }*, { i64, i8* }** %t2150
  %t2237 = call i64 @nyx_array_get({ i64, i8* }* %t2236, i64 0)
  %t2238 = inttoptr i64 %t2237 to { i64, i8* }*
  %t2239 = load %Environment, %Environment* %env.ptr
  %t2240 = call %Value @eval_expr({ i64, i8* }* %t2238, %Environment %t2239)
  store %Value %t2240, %Value* %t2241
  %t2242 = getelementptr %Value, %Value* %t2241, i32 0, i32 0
  %t2243 = load %nyx_string*, %nyx_string** %t2242
  %t2244 = getelementptr [6 x i8], [6 x i8]* @.str225, i32 0, i32 0
  %t2245 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str225.c, i8* %t2244, i64 5)
  %t2246 = call i1 @nyx_string_equals(%nyx_string* %t2243, %nyx_string* %t2245)
  br i1 %t2246, label %then433, label %else434
then433:
  %t2247 = load %Value, %Value* %t2241
  ret %Value %t2247
else434:
  br label %merge435
merge435:
  %t2248 = load { i64, i8* }*, { i64, i8* }** %t2150
  %t2249 = call i64 @nyx_array_get({ i64, i8* }* %t2248, i64 1)
  %t2250 = inttoptr i64 %t2249 to { i64, i8* }*
  %t2251 = load %Environment, %Environment* %env.ptr
  %t2252 = call %Value @eval_expr({ i64, i8* }* %t2250, %Environment %t2251)
  store %Value %t2252, %Value* %t2253
  %t2254 = getelementptr %Value, %Value* %t2253, i32 0, i32 0
  %t2255 = load %nyx_string*, %nyx_string** %t2254
  %t2256 = getelementptr [6 x i8], [6 x i8]* @.str226, i32 0, i32 0
  %t2257 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str226.c, i8* %t2256, i64 5)
  %t2258 = call i1 @nyx_string_equals(%nyx_string* %t2255, %nyx_string* %t2257)
  br i1 %t2258, label %then436, label %else437
then436:
  %t2259 = load %Value, %Value* %t2253
  ret %Value %t2259
else437:
  br label %merge438
merge438:
  %t2260 = load %nyx_string*, %nyx_string** %t2168
  %t2261 = getelementptr %Value, %Value* %t2241, i32 0, i32 1
  %t2262 = load i64, i64* %t2261
  %t2263 = getelementptr %Value, %Value* %t2253, i32 0, i32 1
  %t2264 = load i64, i64* %t2263
  %t2265 = call %nyx_string* @nyx_string_substring(%nyx_string* %t2260, i64 %t2262, i64 %t2264)
  %t2266 = call %Value @make_string(%nyx_string* %t2265)
  ret %Value %t2266
else431:
  br label %merge432
merge432:
  %t2267 = load %nyx_string*, %nyx_string** %t2146
  %t2268 = getelementptr [7 x i8], [7 x i8]* @.str227, i32 0, i32 0
  %t2269 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str227.c, i8* %t2268, i64 6)
  %t2270 = call i1 @nyx_string_equals(%nyx_string* %t2267, %nyx_string* %t2269)
  br i1 %t2270, label %then439, label %else440
then439:
  %t2271 = load { i64, i8* }*, { i64, i8* }** %t2150
  %t2272 = call i64 @nyx_array_get({ i64, i8* }* %t2271, i64 0)
  %t2273 = inttoptr i64 %t2272 to { i64, i8* }*
  %t2274 = load %Environment, %Environment* %env.ptr
  %t2275 = call %Value @eval_expr({ i64, i8* }* %t2273, %Environment %t2274)
  store %Value %t2275, %Value* %t2276
  %t2277 = getelementptr %Value, %Value* %t2276, i32 0, i32 0
  %t2278 = load %nyx_string*, %nyx_string** %t2277
  %t2279 = getelementptr [6 x i8], [6 x i8]* @.str228, i32 0, i32 0
  %t2280 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str228.c, i8* %t2279, i64 5)
  %t2281 = call i1 @nyx_string_equals(%nyx_string* %t2278, %nyx_string* %t2280)
  br i1 %t2281, label %then442, label %else443
then442:
  %t2282 = load %Value, %Value* %t2276
  ret %Value %t2282
else443:
  br label %merge444
merge444:
  %t2283 = load %nyx_string*, %nyx_string** %t2168
  %t2284 = getelementptr %Value, %Value* %t2276, i32 0, i32 1
  %t2285 = load i64, i64* %t2284
  %t2286 = call i8 @nyx_string_char_at(%nyx_string* %t2283, i64 %t2285)
  %t2287 = zext i8 %t2286 to i64
  %t2288 = trunc i64 %t2287 to i8
  store i8 %t2288, i8* %t2289
  %t2290 = load i8, i8* %t2289
  %t2291 = call %nyx_string* @nyx_string_from_char(i8 %t2290)
  %t2292 = call %Value @make_string(%nyx_string* %t2291)
  ret %Value %t2292
else440:
  br label %merge441
merge441:
  %t2293 = load %nyx_string*, %nyx_string** %t2146
  %t2294 = getelementptr [11 x i8], [11 x i8]* @.str229, i32 0, i32 0
  %t2295 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str229.c, i8* %t2294, i64 10)
  %t2296 = call i1 @nyx_string_equals(%nyx_string* %t2293, %nyx_string* %t2295)
  br i1 %t2296, label %then445, label %else446
then445:
  %t2297 = load { i64, i8* }*, { i64, i8* }** %t2150
  %t2298 = call i64 @nyx_array_get({ i64, i8* }* %t2297, i64 0)
  %t2299 = inttoptr i64 %t2298 to { i64, i8* }*
  %t2300 = load %Environment, %Environment* %env.ptr
  %t2301 = call %Value @eval_expr({ i64, i8* }* %t2299, %Environment %t2300)
  store %Value %t2301, %Value* %t2302
  %t2303 = getelementptr %Value, %Value* %t2302, i32 0, i32 0
  %t2304 = load %nyx_string*, %nyx_string** %t2303
  %t2305 = getelementptr [6 x i8], [6 x i8]* @.str230, i32 0, i32 0
  %t2306 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str230.c, i8* %t2305, i64 5)
  %t2307 = call i1 @nyx_string_equals(%nyx_string* %t2304, %nyx_string* %t2306)
  br i1 %t2307, label %then448, label %else449
then448:
  %t2308 = load %Value, %Value* %t2302
  ret %Value %t2308
else449:
  br label %merge450
merge450:
  %t2309 = load %nyx_string*, %nyx_string** %t2168
  %t2310 = getelementptr %Value, %Value* %t2302, i32 0, i32 4
  %t2311 = load %nyx_string*, %nyx_string** %t2310
  %t2312 = call i1 @nyx_string_starts_with(%nyx_string* %t2309, %nyx_string* %t2311)
  %t2313 = call %Value @make_bool(i1 %t2312)
  ret %Value %t2313
else446:
  br label %merge447
merge447:
  %t2314 = load %nyx_string*, %nyx_string** %t2146
  %t2315 = getelementptr [9 x i8], [9 x i8]* @.str231, i32 0, i32 0
  %t2316 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str231.c, i8* %t2315, i64 8)
  %t2317 = call i1 @nyx_string_equals(%nyx_string* %t2314, %nyx_string* %t2316)
  br i1 %t2317, label %then451, label %else452
then451:
  %t2318 = load { i64, i8* }*, { i64, i8* }** %t2150
  %t2319 = call i64 @nyx_array_get({ i64, i8* }* %t2318, i64 0)
  %t2320 = inttoptr i64 %t2319 to { i64, i8* }*
  %t2321 = load %Environment, %Environment* %env.ptr
  %t2322 = call %Value @eval_expr({ i64, i8* }* %t2320, %Environment %t2321)
  store %Value %t2322, %Value* %t2323
  %t2324 = getelementptr %Value, %Value* %t2323, i32 0, i32 0
  %t2325 = load %nyx_string*, %nyx_string** %t2324
  %t2326 = getelementptr [6 x i8], [6 x i8]* @.str232, i32 0, i32 0
  %t2327 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str232.c, i8* %t2326, i64 5)
  %t2328 = call i1 @nyx_string_equals(%nyx_string* %t2325, %nyx_string* %t2327)
  br i1 %t2328, label %then454, label %else455
then454:
  %t2329 = load %Value, %Value* %t2323
  ret %Value %t2329
else455:
  br label %merge456
merge456:
  %t2330 = load %nyx_string*, %nyx_string** %t2168
  %t2331 = getelementptr %Value, %Value* %t2323, i32 0, i32 4
  %t2332 = load %nyx_string*, %nyx_string** %t2331
  %t2333 = call i1 @nyx_string_ends_with(%nyx_string* %t2330, %nyx_string* %t2332)
  %t2334 = call %Value @make_bool(i1 %t2333)
  ret %Value %t2334
else452:
  br label %merge453
merge453:
  %t2335 = load %nyx_string*, %nyx_string** %t2146
  %t2336 = getelementptr [8 x i8], [8 x i8]* @.str233, i32 0, i32 0
  %t2337 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str233.c, i8* %t2336, i64 7)
  %t2338 = call i1 @nyx_string_equals(%nyx_string* %t2335, %nyx_string* %t2337)
  br i1 %t2338, label %then457, label %else458
then457:
  %t2339 = load { i64, i8* }*, { i64, i8* }** %t2150
  %t2340 = call i64 @nyx_array_get({ i64, i8* }* %t2339, i64 0)
  %t2341 = inttoptr i64 %t2340 to { i64, i8* }*
  %t2342 = load %Environment, %Environment* %env.ptr
  %t2343 = call %Value @eval_expr({ i64, i8* }* %t2341, %Environment %t2342)
  store %Value %t2343, %Value* %t2344
  %t2345 = getelementptr %Value, %Value* %t2344, i32 0, i32 0
  %t2346 = load %nyx_string*, %nyx_string** %t2345
  %t2347 = getelementptr [6 x i8], [6 x i8]* @.str234, i32 0, i32 0
  %t2348 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str234.c, i8* %t2347, i64 5)
  %t2349 = call i1 @nyx_string_equals(%nyx_string* %t2346, %nyx_string* %t2348)
  br i1 %t2349, label %then460, label %else461
then460:
  %t2350 = load %Value, %Value* %t2344
  ret %Value %t2350
else461:
  br label %merge462
merge462:
  %t2351 = load { i64, i8* }*, { i64, i8* }** %t2150
  %t2352 = call i64 @nyx_array_get({ i64, i8* }* %t2351, i64 1)
  %t2353 = inttoptr i64 %t2352 to { i64, i8* }*
  %t2354 = load %Environment, %Environment* %env.ptr
  %t2355 = call %Value @eval_expr({ i64, i8* }* %t2353, %Environment %t2354)
  store %Value %t2355, %Value* %t2356
  %t2357 = getelementptr %Value, %Value* %t2356, i32 0, i32 0
  %t2358 = load %nyx_string*, %nyx_string** %t2357
  %t2359 = getelementptr [6 x i8], [6 x i8]* @.str235, i32 0, i32 0
  %t2360 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str235.c, i8* %t2359, i64 5)
  %t2361 = call i1 @nyx_string_equals(%nyx_string* %t2358, %nyx_string* %t2360)
  br i1 %t2361, label %then463, label %else464
then463:
  %t2362 = load %Value, %Value* %t2356
  ret %Value %t2362
else464:
  br label %merge465
merge465:
  %t2363 = load %nyx_string*, %nyx_string** %t2168
  %t2364 = getelementptr %Value, %Value* %t2344, i32 0, i32 4
  %t2365 = load %nyx_string*, %nyx_string** %t2364
  %t2366 = getelementptr %Value, %Value* %t2356, i32 0, i32 4
  %t2367 = load %nyx_string*, %nyx_string** %t2366
  %t2368 = call %nyx_string* @nyx_string_replace(%nyx_string* %t2363, %nyx_string* %t2365, %nyx_string* %t2367)
  %t2369 = call %Value @make_string(%nyx_string* %t2368)
  ret %Value %t2369
else458:
  br label %merge459
merge459:
  br label %merge405
else404:
  br label %merge405
merge405:
  %t2370 = getelementptr %Value, %Value* %t2154, i32 0, i32 0
  %t2371 = load %nyx_string*, %nyx_string** %t2370
  %t2372 = getelementptr [6 x i8], [6 x i8]* @.str236, i32 0, i32 0
  %t2373 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str236.c, i8* %t2372, i64 5)
  %t2374 = call i1 @nyx_string_equals(%nyx_string* %t2371, %nyx_string* %t2373)
  br i1 %t2374, label %then466, label %else467
then466:
  %t2375 = getelementptr %Value, %Value* %t2154, i32 0, i32 5
  %t2376 = load { i64, i8* }*, { i64, i8* }** %t2375
  store { i64, i8* }* %t2376, { i64, i8* }** %t2377
  %t2378 = load %nyx_string*, %nyx_string** %t2146
  %t2379 = getelementptr [7 x i8], [7 x i8]* @.str237, i32 0, i32 0
  %t2380 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str237.c, i8* %t2379, i64 6)
  %t2381 = call i1 @nyx_string_equals(%nyx_string* %t2378, %nyx_string* %t2380)
  br i1 %t2381, label %then469, label %else470
then469:
  %t2382 = load { i64, i8* }*, { i64, i8* }** %t2377
  %t2383 = call i64 @nyx_array_length({ i64, i8* }* %t2382)
  %t2384 = call %Value @make_int(i64 %t2383)
  ret %Value %t2384
else470:
  br label %merge471
merge471:
  %t2385 = load %nyx_string*, %nyx_string** %t2146
  %t2386 = getelementptr [5 x i8], [5 x i8]* @.str238, i32 0, i32 0
  %t2387 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str238.c, i8* %t2386, i64 4)
  %t2388 = call i1 @nyx_string_equals(%nyx_string* %t2385, %nyx_string* %t2387)
  br i1 %t2388, label %then472, label %else473
then472:
  %t2389 = load { i64, i8* }*, { i64, i8* }** %t2150
  %t2390 = call i64 @nyx_array_get({ i64, i8* }* %t2389, i64 0)
  %t2391 = inttoptr i64 %t2390 to { i64, i8* }*
  %t2392 = load %Environment, %Environment* %env.ptr
  %t2393 = call %Value @eval_expr({ i64, i8* }* %t2391, %Environment %t2392)
  store %Value %t2393, %Value* %t2394
  %t2395 = getelementptr %Value, %Value* %t2394, i32 0, i32 0
  %t2396 = load %nyx_string*, %nyx_string** %t2395
  %t2397 = getelementptr [6 x i8], [6 x i8]* @.str239, i32 0, i32 0
  %t2398 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str239.c, i8* %t2397, i64 5)
  %t2399 = call i1 @nyx_string_equals(%nyx_string* %t2396, %nyx_string* %t2398)
  br i1 %t2399, label %then475, label %else476
then475:
  %t2400 = load %Value, %Value* %t2394
  ret %Value %t2400
else476:
  br label %merge477
merge477:
  %t2401 = load { i64, i8* }*, { i64, i8* }** %t2377
  %t2402 = load %Value, %Value* %t2394
  %t2403 = getelementptr %Value, %Value* null, i32 1
  %t2404 = ptrtoint %Value* %t2403 to i64
  %t2405 = call i8* @GC_malloc(i64 %t2404)
  %t2406 = bitcast i8* %t2405 to %Value*
  store %Value %t2402, %Value* %t2406
  %t2407 = ptrtoint %Value* %t2406 to i64
  call void @nyx_array_push({ i64, i8* }* %t2401, i64 %t2407)
  %t2408 = call %Value @make_nil()
  ret %Value %t2408
else473:
  br label %merge474
merge474:
  %t2409 = load %nyx_string*, %nyx_string** %t2146
  %t2410 = getelementptr [4 x i8], [4 x i8]* @.str240, i32 0, i32 0
  %t2411 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str240.c, i8* %t2410, i64 3)
  %t2412 = call i1 @nyx_string_equals(%nyx_string* %t2409, %nyx_string* %t2411)
  br i1 %t2412, label %then478, label %else479
then478:
  %t2413 = load { i64, i8* }*, { i64, i8* }** %t2377
  %t2414 = call i64 @nyx_array_pop({ i64, i8* }* %t2413)
  %t2415 = call %Value @make_nil()
  ret %Value %t2415
else479:
  br label %merge480
merge480:
  br label %merge468
else467:
  br label %merge468
merge468:
  %t2416 = getelementptr [8 x i8], [8 x i8]* @.str241, i32 0, i32 0
  %t2417 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str241.c, i8* %t2416, i64 7)
  %t2418 = getelementptr [39 x i8], [39 x i8]* @.str242, i32 0, i32 0
  %t2419 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str242.c, i8* %t2418, i64 38)
  %t2420 = load %nyx_string*, %nyx_string** %t2146
  %t2421 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2419, %nyx_string* %t2420)
  %t2422 = getelementptr [17 x i8], [17 x i8]* @.str243, i32 0, i32 0
  %t2423 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str243.c, i8* %t2422, i64 16)
  %t2424 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2421, %nyx_string* %t2423)
  %t2425 = getelementptr %Value, %Value* %t2154, i32 0, i32 0
  %t2426 = load %nyx_string*, %nyx_string** %t2425
  %t2427 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2424, %nyx_string* %t2426)
  %t2428 = getelementptr [42 x i8], [42 x i8]* @.str244, i32 0, i32 0
  %t2429 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str244.c, i8* %t2428, i64 41)
  %t2430 = load %nyx_string*, %nyx_string** %t2146
  %t2431 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2429, %nyx_string* %t2430)
  %t2432 = getelementptr [11 x i8], [11 x i8]* @.str245, i32 0, i32 0
  %t2433 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str245.c, i8* %t2432, i64 10)
  %t2434 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2431, %nyx_string* %t2433)
  %t2435 = getelementptr %Value, %Value* %t2154, i32 0, i32 0
  %t2436 = load %nyx_string*, %nyx_string** %t2435
  %t2437 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2434, %nyx_string* %t2436)
  %t2438 = call i64 @interp_err(%nyx_string* %t2417, %nyx_string* %t2427, %nyx_string* %t2437)
  %t2439 = getelementptr [9 x i8], [9 x i8]* @.str246, i32 0, i32 0
  %t2440 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str246.c, i8* %t2439, i64 8)
  %t2441 = call i8* @nyx_string_to_cstr(%nyx_string* %t2440)
  %t2442 = call %nyx_string* @nyx_getenv(i8* %t2441)
  store %nyx_string* %t2442, %nyx_string** %t2443
  %t2444 = load %nyx_string*, %nyx_string** %t2443
  %t2445 = getelementptr [3 x i8], [3 x i8]* @.str247, i32 0, i32 0
  %t2446 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str247.c, i8* %t2445, i64 2)
  %t2447 = call i1 @nyx_string_equals(%nyx_string* %t2444, %nyx_string* %t2446)
  br i1 %t2447, label %then481, label %else482
then481:
  %t2448 = getelementptr [85 x i8], [85 x i8]* @.str248, i32 0, i32 0
  %t2449 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str248.c, i8* %t2448, i64 84)
  %t2450 = call i8* @nyx_string_to_cstr(%nyx_string* %t2449)
  call void @nyx_print_string(i8* %t2450)
  %t2451 = getelementptr [85 x i8], [85 x i8]* @.str249, i32 0, i32 0
  %t2452 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str249.c, i8* %t2451, i64 84)
  %t2453 = call i8* @nyx_string_to_cstr(%nyx_string* %t2452)
  call void @nyx_print_string(i8* %t2453)
  br label %merge483
else482:
  %t2454 = getelementptr [79 x i8], [79 x i8]* @.str250, i32 0, i32 0
  %t2455 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str250.c, i8* %t2454, i64 78)
  %t2456 = call i8* @nyx_string_to_cstr(%nyx_string* %t2455)
  call void @nyx_print_string(i8* %t2456)
  %t2457 = getelementptr [84 x i8], [84 x i8]* @.str251, i32 0, i32 0
  %t2458 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str251.c, i8* %t2457, i64 83)
  %t2459 = call i8* @nyx_string_to_cstr(%nyx_string* %t2458)
  call void @nyx_print_string(i8* %t2459)
  br label %merge483
merge483:
  %t2460 = call %Value @make_error()
  ret %Value %t2460
}

define internal %Value @eval_call(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  %env.ptr = alloca %Environment
  %t2463 = alloca { i64, i8* }*
  %t2467 = alloca { i64, i8* }*
  %t2471 = alloca { i64, i8* }*
  %t2475 = alloca { i64, i8* }*
  %t2479 = alloca %nyx_string*
  %t2539 = alloca %Value
  %t2566 = alloca { i64, i8* }*
  %t2569 = alloca %nyx_string*
  %t2572 = alloca { i64, i8* }*
  %t2576 = alloca { i64, i8* }*
  %t2579 = alloca i8*
  %t2582 = alloca { i64, i8* }*
  %t2592 = alloca %Environment
  %t2595 = alloca %Environment
  %t2641 = alloca i64
  %t2644 = alloca %nyx_string*
  %t2653 = alloca { i64, i8* }*
  %t2657 = alloca %nyx_string*
  %t2662 = alloca { i64, i8* }*
  %t2666 = alloca %Value
  %t2681 = alloca %Value
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  store %Environment %env.param, %Environment* %env.ptr
  %t2461 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %t2462 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %t2461)
  store { i64, i8* }* %t2462, { i64, i8* }** %t2463
  %t2464 = load { i64, i8* }*, { i64, i8* }** %t2463
  %t2465 = call i64 @nyx_array_get({ i64, i8* }* %t2464, i64 0)
  %t2466 = inttoptr i64 %t2465 to { i64, i8* }*
  store { i64, i8* }* %t2466, { i64, i8* }** %t2467
  %t2468 = load { i64, i8* }*, { i64, i8* }** %t2463
  %t2469 = call i64 @nyx_array_get({ i64, i8* }* %t2468, i64 1)
  %t2470 = inttoptr i64 %t2469 to { i64, i8* }*
  store { i64, i8* }* %t2470, { i64, i8* }** %t2471
  %t2472 = load { i64, i8* }*, { i64, i8* }** %t2467
  %t2473 = call i64 @nyx_array_get({ i64, i8* }* %t2472, i64 1)
  %t2474 = inttoptr i64 %t2473 to { i64, i8* }*
  store { i64, i8* }* %t2474, { i64, i8* }** %t2475
  %t2476 = load { i64, i8* }*, { i64, i8* }** %t2475
  %t2477 = call i64 @nyx_array_get_checked({ i64, i8* }* %t2476, i64 0, i64 2)
  %t2478 = inttoptr i64 %t2477 to %nyx_string*
  store %nyx_string* %t2478, %nyx_string** %t2479
  %t2480 = load %nyx_string*, %nyx_string** %t2479
  %t2481 = getelementptr [6 x i8], [6 x i8]* @.str252, i32 0, i32 0
  %t2482 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str252.c, i8* %t2481, i64 5)
  %t2483 = call i1 @nyx_string_equals(%nyx_string* %t2480, %nyx_string* %t2482)
  br i1 %t2483, label %then484, label %else485
then484:
  %t2484 = load { i64, i8* }*, { i64, i8* }** %t2471
  %t2485 = load %Environment, %Environment* %env.ptr
  %t2486 = call %Value @eval_builtin_print({ i64, i8* }* %t2484, %Environment %t2485)
  ret %Value %t2486
else485:
  br label %merge486
merge486:
  %t2487 = load %nyx_string*, %nyx_string** %t2479
  %t2488 = getelementptr [10 x i8], [10 x i8]* @.str253, i32 0, i32 0
  %t2489 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str253.c, i8* %t2488, i64 9)
  %t2490 = call i1 @nyx_string_equals(%nyx_string* %t2487, %nyx_string* %t2489)
  br i1 %t2490, label %then487, label %else488
then487:
  %t2491 = load { i64, i8* }*, { i64, i8* }** %t2471
  %t2492 = load %Environment, %Environment* %env.ptr
  %t2493 = call %Value @eval_builtin_read_file({ i64, i8* }* %t2491, %Environment %t2492)
  ret %Value %t2493
else488:
  br label %merge489
merge489:
  %t2494 = load %nyx_string*, %nyx_string** %t2479
  %t2495 = getelementptr [14 x i8], [14 x i8]* @.str254, i32 0, i32 0
  %t2496 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str254.c, i8* %t2495, i64 13)
  %t2497 = call i1 @nyx_string_equals(%nyx_string* %t2494, %nyx_string* %t2496)
  br i1 %t2497, label %then490, label %else491
then490:
  %t2498 = getelementptr [8 x i8], [8 x i8]* @.str255, i32 0, i32 0
  %t2499 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str255.c, i8* %t2498, i64 7)
  %t2500 = getelementptr [122 x i8], [122 x i8]* @.str256, i32 0, i32 0
  %t2501 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str256.c, i8* %t2500, i64 121)
  %t2502 = getelementptr [134 x i8], [134 x i8]* @.str257, i32 0, i32 0
  %t2503 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str257.c, i8* %t2502, i64 133)
  %t2504 = call i64 @interp_err(%nyx_string* %t2499, %nyx_string* %t2501, %nyx_string* %t2503)
  %t2505 = call %Value @make_nil()
  ret %Value %t2505
else491:
  br label %merge492
merge492:
  %t2506 = load %nyx_string*, %nyx_string** %t2479
  %t2507 = getelementptr [10 x i8], [10 x i8]* @.str258, i32 0, i32 0
  %t2508 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str258.c, i8* %t2507, i64 9)
  %t2509 = call i1 @nyx_string_equals(%nyx_string* %t2506, %nyx_string* %t2508)
  br i1 %t2509, label %then493, label %else494
then493:
  %t2510 = load { i64, i8* }*, { i64, i8* }** %t2471
  %t2511 = load %Environment, %Environment* %env.ptr
  %t2512 = call %Value @eval_builtin_read_line({ i64, i8* }* %t2510, %Environment %t2511)
  ret %Value %t2512
else494:
  br label %merge495
merge495:
  %t2513 = load %nyx_string*, %nyx_string** %t2479
  %t2514 = getelementptr [17 x i8], [17 x i8]* @.str259, i32 0, i32 0
  %t2515 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str259.c, i8* %t2514, i64 16)
  %t2516 = call i1 @nyx_string_equals(%nyx_string* %t2513, %nyx_string* %t2515)
  br i1 %t2516, label %then496, label %else497
then496:
  %t2517 = load { i64, i8* }*, { i64, i8* }** %t2471
  %t2518 = load %Environment, %Environment* %env.ptr
  %t2519 = call %Value @eval_builtin_print_no_newline({ i64, i8* }* %t2517, %Environment %t2518)
  ret %Value %t2519
else497:
  br label %merge498
merge498:
  %t2520 = load %Environment, %Environment* %env.ptr
  %t2521 = load %nyx_string*, %nyx_string** %t2479
  %t2522 = call i1 @env_has(%Environment %t2520, %nyx_string* %t2521)
  %t2523 = xor i1 %t2522, true
  br i1 %t2523, label %then499, label %else500
then499:
  %t2524 = getelementptr [8 x i8], [8 x i8]* @.str260, i32 0, i32 0
  %t2525 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str260.c, i8* %t2524, i64 7)
  %t2526 = getelementptr [23 x i8], [23 x i8]* @.str261, i32 0, i32 0
  %t2527 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str261.c, i8* %t2526, i64 22)
  %t2528 = load %nyx_string*, %nyx_string** %t2479
  %t2529 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2527, %nyx_string* %t2528)
  %t2530 = getelementptr [21 x i8], [21 x i8]* @.str262, i32 0, i32 0
  %t2531 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str262.c, i8* %t2530, i64 20)
  %t2532 = load %nyx_string*, %nyx_string** %t2479
  %t2533 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2531, %nyx_string* %t2532)
  %t2534 = call i64 @interp_err(%nyx_string* %t2525, %nyx_string* %t2529, %nyx_string* %t2533)
  %t2535 = call %Value @make_error()
  ret %Value %t2535
else500:
  br label %merge501
merge501:
  %t2536 = load %Environment, %Environment* %env.ptr
  %t2537 = load %nyx_string*, %nyx_string** %t2479
  %t2538 = call %Value @env_get(%Environment %t2536, %nyx_string* %t2537)
  store %Value %t2538, %Value* %t2539
  %t2540 = getelementptr %Value, %Value* %t2539, i32 0, i32 0
  %t2541 = load %nyx_string*, %nyx_string** %t2540
  %t2542 = getelementptr [9 x i8], [9 x i8]* @.str263, i32 0, i32 0
  %t2543 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str263.c, i8* %t2542, i64 8)
  %t2544 = call i1 @nyx_string_equals(%nyx_string* %t2541, %nyx_string* %t2543)
  %t2545 = xor i1 %t2544, true
  br i1 %t2545, label %then502, label %else503
then502:
  %t2546 = getelementptr [8 x i8], [8 x i8]* @.str264, i32 0, i32 0
  %t2547 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str264.c, i8* %t2546, i64 7)
  %t2548 = getelementptr [2 x i8], [2 x i8]* @.str265, i32 0, i32 0
  %t2549 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str265.c, i8* %t2548, i64 1)
  %t2550 = load %nyx_string*, %nyx_string** %t2479
  %t2551 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2549, %nyx_string* %t2550)
  %t2552 = getelementptr [21 x i8], [21 x i8]* @.str266, i32 0, i32 0
  %t2553 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str266.c, i8* %t2552, i64 20)
  %t2554 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2551, %nyx_string* %t2553)
  %t2555 = getelementptr [2 x i8], [2 x i8]* @.str267, i32 0, i32 0
  %t2556 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str267.c, i8* %t2555, i64 1)
  %t2557 = load %nyx_string*, %nyx_string** %t2479
  %t2558 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2556, %nyx_string* %t2557)
  %t2559 = getelementptr [20 x i8], [20 x i8]* @.str268, i32 0, i32 0
  %t2560 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str268.c, i8* %t2559, i64 19)
  %t2561 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2558, %nyx_string* %t2560)
  %t2562 = call i64 @interp_err(%nyx_string* %t2547, %nyx_string* %t2554, %nyx_string* %t2561)
  %t2563 = call %Value @make_error()
  ret %Value %t2563
else503:
  br label %merge504
merge504:
  %t2564 = load %Value, %Value* %t2539
  %t2565 = call { i64, i8* }* @get_func_params(%Value %t2564)
  store { i64, i8* }* %t2565, { i64, i8* }** %t2566
  %t2567 = load %Value, %Value* %t2539
  %t2568 = call %nyx_string* @get_func_body_type(%Value %t2567)
  store %nyx_string* %t2568, %nyx_string** %t2569
  %t2570 = load %Value, %Value* %t2539
  %t2571 = call { i64, i8* }* @get_func_body_data(%Value %t2570)
  store { i64, i8* }* %t2571, { i64, i8* }** %t2572
  %t2573 = load %nyx_string*, %nyx_string** %t2569
  %t2574 = load { i64, i8* }*, { i64, i8* }** %t2572
  %t2575 = call { i64, i8* }* @make_astnode(%nyx_string* %t2573, { i64, i8* }* %t2574)
  store { i64, i8* }* %t2575, { i64, i8* }** %t2576
  %t2577 = load %Value, %Value* %t2539
  %t2578 = call i8* @get_func_env_bindings(%Value %t2577)
  store i8* %t2578, i8** %t2579
  %t2580 = load %Value, %Value* %t2539
  %t2581 = call { i64, i8* }* @get_func_env_parent(%Value %t2580)
  store { i64, i8* }* %t2581, { i64, i8* }** %t2582
  %t2583 = getelementptr %Environment, %Environment* null, i32 1
  %t2584 = ptrtoint %Environment* %t2583 to i64
  %t2585 = call i8* @GC_malloc(i64 %t2584)
  %t2586 = bitcast i8* %t2585 to %Environment*
  %t2587 = load i8*, i8** %t2579
  %t2588 = getelementptr %Environment, %Environment* %t2586, i32 0, i32 0
  store i8* %t2587, i8** %t2588
  %t2589 = load { i64, i8* }*, { i64, i8* }** %t2582
  %t2590 = getelementptr %Environment, %Environment* %t2586, i32 0, i32 1
  store { i64, i8* }* %t2589, { i64, i8* }** %t2590
  %t2591 = load %Environment, %Environment* %t2586
  store %Environment %t2591, %Environment* %t2592
  %t2593 = load %Environment, %Environment* %t2592
  %t2594 = call %Environment @make_child_env(%Environment %t2593)
  store %Environment %t2594, %Environment* %t2595
  %t2596 = load { i64, i8* }*, { i64, i8* }** %t2471
  %t2597 = call i64 @nyx_array_length({ i64, i8* }* %t2596)
  %t2598 = load { i64, i8* }*, { i64, i8* }** %t2566
  %t2599 = call i64 @nyx_array_length({ i64, i8* }* %t2598)
  %t2600 = icmp ne i64 %t2597, %t2599
  br i1 %t2600, label %then505, label %else506
then505:
  %t2601 = getelementptr [8 x i8], [8 x i8]* @.str269, i32 0, i32 0
  %t2602 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str269.c, i8* %t2601, i64 7)
  %t2603 = getelementptr [2 x i8], [2 x i8]* @.str270, i32 0, i32 0
  %t2604 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str270.c, i8* %t2603, i64 1)
  %t2605 = load %nyx_string*, %nyx_string** %t2479
  %t2606 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2604, %nyx_string* %t2605)
  %t2607 = getelementptr [10 x i8], [10 x i8]* @.str271, i32 0, i32 0
  %t2608 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str271.c, i8* %t2607, i64 9)
  %t2609 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2606, %nyx_string* %t2608)
  %t2610 = load { i64, i8* }*, { i64, i8* }** %t2566
  %t2611 = call i64 @nyx_array_length({ i64, i8* }* %t2610)
  %t2612 = call %nyx_string* @nyx_string_from_int(i64 %t2611)
  %t2613 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2609, %nyx_string* %t2612)
  %t2614 = getelementptr [25 x i8], [25 x i8]* @.str272, i32 0, i32 0
  %t2615 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str272.c, i8* %t2614, i64 24)
  %t2616 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2613, %nyx_string* %t2615)
  %t2617 = load { i64, i8* }*, { i64, i8* }** %t2471
  %t2618 = call i64 @nyx_array_length({ i64, i8* }* %t2617)
  %t2619 = call %nyx_string* @nyx_string_from_int(i64 %t2618)
  %t2620 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2616, %nyx_string* %t2619)
  %t2621 = getelementptr [2 x i8], [2 x i8]* @.str273, i32 0, i32 0
  %t2622 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str273.c, i8* %t2621, i64 1)
  %t2623 = load %nyx_string*, %nyx_string** %t2479
  %t2624 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2622, %nyx_string* %t2623)
  %t2625 = getelementptr [11 x i8], [11 x i8]* @.str274, i32 0, i32 0
  %t2626 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str274.c, i8* %t2625, i64 10)
  %t2627 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2624, %nyx_string* %t2626)
  %t2628 = load { i64, i8* }*, { i64, i8* }** %t2566
  %t2629 = call i64 @nyx_array_length({ i64, i8* }* %t2628)
  %t2630 = call %nyx_string* @nyx_string_from_int(i64 %t2629)
  %t2631 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2627, %nyx_string* %t2630)
  %t2632 = getelementptr [19 x i8], [19 x i8]* @.str275, i32 0, i32 0
  %t2633 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str275.c, i8* %t2632, i64 18)
  %t2634 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2631, %nyx_string* %t2633)
  %t2635 = load { i64, i8* }*, { i64, i8* }** %t2471
  %t2636 = call i64 @nyx_array_length({ i64, i8* }* %t2635)
  %t2637 = call %nyx_string* @nyx_string_from_int(i64 %t2636)
  %t2638 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2634, %nyx_string* %t2637)
  %t2639 = call i64 @interp_err(%nyx_string* %t2602, %nyx_string* %t2620, %nyx_string* %t2638)
  %t2640 = call %Value @make_error()
  ret %Value %t2640
else506:
  br label %merge507
merge507:
  store i64 0, i64* %t2641
  %t2642 = getelementptr [6 x i8], [6 x i8]* @.str276, i32 0, i32 0
  %t2643 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str276.c, i8* %t2642, i64 5)
  store %nyx_string* %t2643, %nyx_string** %t2644
  br label %while_cond508
while_cond508:
  %t2645 = load i64, i64* %t2641
  %t2646 = load { i64, i8* }*, { i64, i8* }** %t2566
  %t2647 = call i64 @nyx_array_length({ i64, i8* }* %t2646)
  %t2648 = icmp slt i64 %t2645, %t2647
  br i1 %t2648, label %while_body509, label %while_end510
while_body509:
  %t2649 = load { i64, i8* }*, { i64, i8* }** %t2566
  %t2650 = load i64, i64* %t2641
  %t2651 = call i64 @nyx_array_get({ i64, i8* }* %t2649, i64 %t2650)
  %t2652 = inttoptr i64 %t2651 to { i64, i8* }*
  store { i64, i8* }* %t2652, { i64, i8* }** %t2653
  %t2654 = load { i64, i8* }*, { i64, i8* }** %t2653
  %t2655 = call i64 @nyx_array_get_checked({ i64, i8* }* %t2654, i64 0, i64 2)
  %t2656 = inttoptr i64 %t2655 to %nyx_string*
  store %nyx_string* %t2656, %nyx_string** %t2657
  %t2658 = load { i64, i8* }*, { i64, i8* }** %t2471
  %t2659 = load i64, i64* %t2641
  %t2660 = call i64 @nyx_array_get({ i64, i8* }* %t2658, i64 %t2659)
  %t2661 = inttoptr i64 %t2660 to { i64, i8* }*
  store { i64, i8* }* %t2661, { i64, i8* }** %t2662
  %t2663 = load { i64, i8* }*, { i64, i8* }** %t2662
  %t2664 = load %Environment, %Environment* %env.ptr
  %t2665 = call %Value @eval_expr({ i64, i8* }* %t2663, %Environment %t2664)
  store %Value %t2665, %Value* %t2666
  %t2667 = getelementptr %Value, %Value* %t2666, i32 0, i32 0
  %t2668 = load %nyx_string*, %nyx_string** %t2667
  %t2669 = load %nyx_string*, %nyx_string** %t2644
  %t2670 = call i1 @nyx_string_equals(%nyx_string* %t2668, %nyx_string* %t2669)
  br i1 %t2670, label %then511, label %else512
then511:
  %t2671 = load %Value, %Value* %t2666
  ret %Value %t2671
else512:
  br label %merge513
merge513:
  %t2672 = load %Environment, %Environment* %t2595
  %t2673 = load %nyx_string*, %nyx_string** %t2657
  %t2674 = load %Value, %Value* %t2666
  %t2675 = call i64 @env_define(%Environment %t2672, %nyx_string* %t2673, %Value %t2674)
  %t2676 = load i64, i64* %t2641
  %t2677 = add i64 %t2676, 1
  store i64 %t2677, i64* %t2641
  br label %while_cond508
while_end510:
  %t2678 = load { i64, i8* }*, { i64, i8* }** %t2576
  %t2679 = load %Environment, %Environment* %t2595
  %t2680 = call %Value @eval_stmt({ i64, i8* }* %t2678, %Environment %t2679)
  store %Value %t2680, %Value* %t2681
  %t2682 = getelementptr %Value, %Value* %t2681, i32 0, i32 0
  %t2683 = load %nyx_string*, %nyx_string** %t2682
  %t2684 = getelementptr [7 x i8], [7 x i8]* @.str277, i32 0, i32 0
  %t2685 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str277.c, i8* %t2684, i64 6)
  %t2686 = call i1 @nyx_string_equals(%nyx_string* %t2683, %nyx_string* %t2685)
  br i1 %t2686, label %then514, label %else515
then514:
  %t2687 = load %Value, %Value* %t2681
  %t2688 = call %Value @unwrap_return_value(%Value %t2687)
  ret %Value %t2688
else515:
  br label %merge516
merge516:
  %t2689 = load %Value, %Value* %t2681
  %t2690 = call i1 @is_loop_control(%Value %t2689)
  br i1 %t2690, label %then517, label %else518
then517:
  %t2691 = load %Value, %Value* %t2681
  %t2692 = call %Value @loop_control_escaped(%Value %t2691)
  ret %Value %t2692
else518:
  br label %merge519
merge519:
  %t2693 = load %Value, %Value* %t2681
  ret %Value %t2693
}

define internal %Value @eval_builtin_print(
{ i64, i8* }* %args.param, %Environment %env.param) {
  %args.ptr = alloca { i64, i8* }*
  %env.ptr = alloca %Environment
  %t2694 = alloca i64
  %t2697 = alloca %nyx_string*
  %t2706 = alloca { i64, i8* }*
  %t2710 = alloca %Value
  store { i64, i8* }* %args.param, { i64, i8* }** %args.ptr
  store %Environment %env.param, %Environment* %env.ptr
  store i64 0, i64* %t2694
  %t2695 = getelementptr [6 x i8], [6 x i8]* @.str278, i32 0, i32 0
  %t2696 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str278.c, i8* %t2695, i64 5)
  store %nyx_string* %t2696, %nyx_string** %t2697
  br label %while_cond520
while_cond520:
  %t2698 = load i64, i64* %t2694
  %t2699 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %t2700 = call i64 @nyx_array_length({ i64, i8* }* %t2699)
  %t2701 = icmp slt i64 %t2698, %t2700
  br i1 %t2701, label %while_body521, label %while_end522
while_body521:
  %t2702 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %t2703 = load i64, i64* %t2694
  %t2704 = call i64 @nyx_array_get({ i64, i8* }* %t2702, i64 %t2703)
  %t2705 = inttoptr i64 %t2704 to { i64, i8* }*
  store { i64, i8* }* %t2705, { i64, i8* }** %t2706
  %t2707 = load { i64, i8* }*, { i64, i8* }** %t2706
  %t2708 = load %Environment, %Environment* %env.ptr
  %t2709 = call %Value @eval_expr({ i64, i8* }* %t2707, %Environment %t2708)
  store %Value %t2709, %Value* %t2710
  %t2711 = getelementptr %Value, %Value* %t2710, i32 0, i32 0
  %t2712 = load %nyx_string*, %nyx_string** %t2711
  %t2713 = load %nyx_string*, %nyx_string** %t2697
  %t2714 = call i1 @nyx_string_equals(%nyx_string* %t2712, %nyx_string* %t2713)
  br i1 %t2714, label %then523, label %else524
then523:
  %t2715 = load %Value, %Value* %t2710
  ret %Value %t2715
else524:
  br label %merge525
merge525:
  %t2716 = load %Value, %Value* %t2710
  %t2717 = call i64 @print_value(%Value %t2716)
  %t2718 = load i64, i64* %t2694
  %t2719 = add i64 %t2718, 1
  store i64 %t2719, i64* %t2694
  br label %while_cond520
while_end522:
  %t2720 = call %Value @make_nil()
  ret %Value %t2720
}

define internal %Value @eval_builtin_read_line(
{ i64, i8* }* %args.param, %Environment %env.param) {
  %args.ptr = alloca { i64, i8* }*
  %env.ptr = alloca %Environment
  %t2722 = alloca %nyx_string*
  store { i64, i8* }* %args.param, { i64, i8* }** %args.ptr
  store %Environment %env.param, %Environment* %env.ptr
  %t2721 = call %nyx_string* @nyx_read_line()
  store %nyx_string* %t2721, %nyx_string** %t2722
  %t2723 = load %nyx_string*, %nyx_string** %t2722
  %t2724 = call %Value @make_string(%nyx_string* %t2723)
  ret %Value %t2724
}

define internal %Value @eval_builtin_print_no_newline(
{ i64, i8* }* %args.param, %Environment %env.param) {
  %args.ptr = alloca { i64, i8* }*
  %env.ptr = alloca %Environment
  %t2731 = alloca { i64, i8* }*
  %t2735 = alloca %Value
  store { i64, i8* }* %args.param, { i64, i8* }** %args.ptr
  store %Environment %env.param, %Environment* %env.ptr
  %t2725 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %t2726 = call i64 @nyx_array_length({ i64, i8* }* %t2725)
  %t2727 = icmp sgt i64 %t2726, 0
  br i1 %t2727, label %then526, label %else527
then526:
  %t2728 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %t2729 = call i64 @nyx_array_get({ i64, i8* }* %t2728, i64 0)
  %t2730 = inttoptr i64 %t2729 to { i64, i8* }*
  store { i64, i8* }* %t2730, { i64, i8* }** %t2731
  %t2732 = load { i64, i8* }*, { i64, i8* }** %t2731
  %t2733 = load %Environment, %Environment* %env.ptr
  %t2734 = call %Value @eval_expr({ i64, i8* }* %t2732, %Environment %t2733)
  store %Value %t2734, %Value* %t2735
  %t2736 = getelementptr %Value, %Value* %t2735, i32 0, i32 0
  %t2737 = load %nyx_string*, %nyx_string** %t2736
  %t2738 = getelementptr [6 x i8], [6 x i8]* @.str279, i32 0, i32 0
  %t2739 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str279.c, i8* %t2738, i64 5)
  %t2740 = call i1 @nyx_string_equals(%nyx_string* %t2737, %nyx_string* %t2739)
  br i1 %t2740, label %then529, label %else530
then529:
  %t2741 = load %Value, %Value* %t2735
  ret %Value %t2741
else530:
  br label %merge531
merge531:
  %t2742 = load %Value, %Value* %t2735
  %t2743 = call %nyx_string* @value_to_string(%Value %t2742)
  call void @nyx_print_no_newline(%nyx_string* %t2743)
  br label %merge528
else527:
  br label %merge528
merge528:
  %t2744 = call %Value @make_nil()
  ret %Value %t2744
}

define internal %Value @eval_builtin_read_file(
{ i64, i8* }* %args.param, %Environment %env.param) {
  %args.ptr = alloca { i64, i8* }*
  %env.ptr = alloca %Environment
  %t2753 = alloca %Value
  %t2756 = alloca %nyx_string*
  %t2760 = alloca %nyx_string*
  store { i64, i8* }* %args.param, { i64, i8* }** %args.ptr
  store %Environment %env.param, %Environment* %env.ptr
  %t2745 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %t2746 = call i64 @nyx_array_length({ i64, i8* }* %t2745)
  %t2747 = icmp sgt i64 %t2746, 0
  br i1 %t2747, label %then532, label %else533
then532:
  %t2748 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %t2749 = call i64 @nyx_array_get({ i64, i8* }* %t2748, i64 0)
  %t2750 = inttoptr i64 %t2749 to { i64, i8* }*
  %t2751 = load %Environment, %Environment* %env.ptr
  %t2752 = call %Value @eval_expr({ i64, i8* }* %t2750, %Environment %t2751)
  store %Value %t2752, %Value* %t2753
  %t2754 = load %Value, %Value* %t2753
  %t2755 = call %nyx_string* @value_to_string(%Value %t2754)
  store %nyx_string* %t2755, %nyx_string** %t2756
  %t2757 = load %nyx_string*, %nyx_string** %t2756
  %t2758 = call i8* @nyx_string_to_cstr(%nyx_string* %t2757)
  %t2759 = call %nyx_string* @nyx_read_file(i8* %t2758)
  store %nyx_string* %t2759, %nyx_string** %t2760
  %t2761 = load %nyx_string*, %nyx_string** %t2760
  %t2762 = call %Value @make_string(%nyx_string* %t2761)
  ret %Value %t2762
else533:
  br label %merge534
merge534:
  %t2763 = call %Value @make_nil()
  ret %Value %t2763
}

define %Environment @repl_make_env(
) {
  %t2764 = call %Environment @make_env()
  ret %Environment %t2764
}

define %nyx_string* @repl_eval(
{ i64, i8* }* %ast.param, %Environment %env.param) {
  %ast.ptr = alloca { i64, i8* }*
  %env.ptr = alloca %Environment
  %t2768 = alloca { i64, i8* }*
  %t2772 = alloca { i64, i8* }*
  %t2775 = alloca %nyx_string*
  %t2776 = alloca i64
  %t2785 = alloca { i64, i8* }*
  %t2789 = alloca %Value
  %t2801 = alloca %Value
  %t2804 = alloca i1
  store { i64, i8* }* %ast.param, { i64, i8* }** %ast.ptr
  store %Environment %env.param, %Environment* %env.ptr
  %t2765 = load { i64, i8* }*, { i64, i8* }** %ast.ptr
  %t2766 = call i64 @nyx_array_get({ i64, i8* }* %t2765, i64 1)
  %t2767 = inttoptr i64 %t2766 to { i64, i8* }*
  store { i64, i8* }* %t2767, { i64, i8* }** %t2768
  %t2769 = load { i64, i8* }*, { i64, i8* }** %t2768
  %t2770 = call i64 @nyx_array_get({ i64, i8* }* %t2769, i64 0)
  %t2771 = inttoptr i64 %t2770 to { i64, i8* }*
  store { i64, i8* }* %t2771, { i64, i8* }** %t2772
  %t2773 = getelementptr [1 x i8], [1 x i8]* @.str280, i32 0, i32 0
  %t2774 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str280.c, i8* %t2773, i64 0)
  store %nyx_string* %t2774, %nyx_string** %t2775
  store i64 0, i64* %t2776
  br label %while_cond535
while_cond535:
  %t2777 = load i64, i64* %t2776
  %t2778 = load { i64, i8* }*, { i64, i8* }** %t2772
  %t2779 = call i64 @nyx_array_length({ i64, i8* }* %t2778)
  %t2780 = icmp slt i64 %t2777, %t2779
  br i1 %t2780, label %while_body536, label %while_end537
while_body536:
  %t2781 = load { i64, i8* }*, { i64, i8* }** %t2772
  %t2782 = load i64, i64* %t2776
  %t2783 = call i64 @nyx_array_get({ i64, i8* }* %t2781, i64 %t2782)
  %t2784 = inttoptr i64 %t2783 to { i64, i8* }*
  store { i64, i8* }* %t2784, { i64, i8* }** %t2785
  %t2786 = load { i64, i8* }*, { i64, i8* }** %t2785
  %t2787 = load %Environment, %Environment* %env.ptr
  %t2788 = call %Value @eval_stmt({ i64, i8* }* %t2786, %Environment %t2787)
  store %Value %t2788, %Value* %t2789
  %t2790 = getelementptr %Value, %Value* %t2789, i32 0, i32 0
  %t2791 = load %nyx_string*, %nyx_string** %t2790
  %t2792 = getelementptr [6 x i8], [6 x i8]* @.str281, i32 0, i32 0
  %t2793 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str281.c, i8* %t2792, i64 5)
  %t2794 = call i1 @nyx_string_equals(%nyx_string* %t2791, %nyx_string* %t2793)
  br i1 %t2794, label %then538, label %else539
then538:
  %t2795 = getelementptr [1 x i8], [1 x i8]* @.str282, i32 0, i32 0
  %t2796 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str282.c, i8* %t2795, i64 0)
  ret %nyx_string* %t2796
else539:
  br label %merge540
merge540:
  %t2797 = load %Value, %Value* %t2789
  %t2798 = call i1 @is_loop_control(%Value %t2797)
  br i1 %t2798, label %then541, label %else542
then541:
  %t2799 = load %Value, %Value* %t2789
  %t2800 = call %Value @loop_control_escaped(%Value %t2799)
  store %Value %t2800, %Value* %t2801
  %t2802 = getelementptr [1 x i8], [1 x i8]* @.str283, i32 0, i32 0
  %t2803 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str283.c, i8* %t2802, i64 0)
  ret %nyx_string* %t2803
else542:
  br label %merge543
merge543:
  store i1 false, i1* %t2804
  %t2805 = getelementptr %Value, %Value* %t2789, i32 0, i32 0
  %t2806 = load %nyx_string*, %nyx_string** %t2805
  %t2807 = getelementptr [4 x i8], [4 x i8]* @.str284, i32 0, i32 0
  %t2808 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str284.c, i8* %t2807, i64 3)
  %t2809 = call i1 @nyx_string_equals(%nyx_string* %t2806, %nyx_string* %t2808)
  %t2810 = xor i1 %t2809, true
  br i1 %t2810, label %sc_and_rhs544, label %sc_and_end545
sc_and_rhs544:
  %t2811 = getelementptr %Value, %Value* %t2789, i32 0, i32 0
  %t2812 = load %nyx_string*, %nyx_string** %t2811
  %t2813 = getelementptr [7 x i8], [7 x i8]* @.str285, i32 0, i32 0
  %t2814 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str285.c, i8* %t2813, i64 6)
  %t2815 = call i1 @nyx_string_equals(%nyx_string* %t2812, %nyx_string* %t2814)
  %t2816 = xor i1 %t2815, true
  store i1 %t2816, i1* %t2804
  br label %sc_and_end545
sc_and_end545:
  %t2817 = load i1, i1* %t2804
  br i1 %t2817, label %then546, label %else547
then546:
  %t2818 = getelementptr [4 x i8], [4 x i8]* @.str286, i32 0, i32 0
  %t2819 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str286.c, i8* %t2818, i64 3)
  %t2820 = load %Value, %Value* %t2789
  %t2821 = call %nyx_string* @value_to_string(%Value %t2820)
  %t2822 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2819, %nyx_string* %t2821)
  store %nyx_string* %t2822, %nyx_string** %t2775
  br label %merge548
else547:
  br label %merge548
merge548:
  %t2823 = load i64, i64* %t2776
  %t2824 = add i64 %t2823, 1
  store i64 %t2824, i64* %t2776
  br label %while_cond535
while_end537:
  %t2825 = load %nyx_string*, %nyx_string** %t2775
  ret %nyx_string* %t2825
}

define i8* @repl_make_map(
) {
  %t2826 = call i8* @nyx_map_new(i32 0)
  ret i8* %t2826
}

define %nyx_string* @repl_eval_with_map(
{ i64, i8* }* %ast.param, i8* %env_map.param) {
  %ast.ptr = alloca { i64, i8* }*
  %env_map.ptr = alloca i8*
  %t2836 = alloca %Environment
  store { i64, i8* }* %ast.param, { i64, i8* }** %ast.ptr
  store i8* %env_map.param, i8** %env_map.ptr
  %t2827 = getelementptr %Environment, %Environment* null, i32 1
  %t2828 = ptrtoint %Environment* %t2827 to i64
  %t2829 = call i8* @GC_malloc(i64 %t2828)
  %t2830 = bitcast i8* %t2829 to %Environment*
  %t2831 = load i8*, i8** %env_map.ptr
  %t2832 = getelementptr %Environment, %Environment* %t2830, i32 0, i32 0
  store i8* %t2831, i8** %t2832
  %t2833 = call { i64, i8* }* @nyx_array_new_ptr()
  %t2834 = getelementptr %Environment, %Environment* %t2830, i32 0, i32 1
  store { i64, i8* }* %t2833, { i64, i8* }** %t2834
  %t2835 = load %Environment, %Environment* %t2830
  store %Environment %t2835, %Environment* %t2836
  %t2837 = load { i64, i8* }*, { i64, i8* }** %ast.ptr
  %t2838 = load %Environment, %Environment* %t2836
  %t2839 = call %nyx_string* @repl_eval({ i64, i8* }* %t2837, %Environment %t2838)
  ret %nyx_string* %t2839
}

define %Value @interpret(
{ i64, i8* }* %ast.param) {
  %ast.ptr = alloca { i64, i8* }*
  %t2841 = alloca %Environment
  %t2844 = alloca %nyx_string*
  %t2851 = alloca { i64, i8* }*
  %t2855 = alloca { i64, i8* }*
  %t2856 = alloca i64
  %t2865 = alloca { i64, i8* }*
  %t2869 = alloca %Value
  %t2884 = alloca i8*
  %t2894 = alloca %Value
  %t2902 = alloca { i64, i8* }*
  %t2905 = alloca %nyx_string*
  %t2908 = alloca { i64, i8* }*
  %t2912 = alloca { i64, i8* }*
  %t2915 = alloca i8*
  %t2918 = alloca { i64, i8* }*
  %t2928 = alloca %Environment
  %t2931 = alloca %Environment
  %t2935 = alloca %Value
  store { i64, i8* }* %ast.param, { i64, i8* }** %ast.ptr
  %t2840 = call %Environment @make_env()
  store %Environment %t2840, %Environment* %t2841
  %t2842 = load { i64, i8* }*, { i64, i8* }** %ast.ptr
  %t2843 = call %nyx_string* @astnode_get_type({ i64, i8* }* %t2842)
  store %nyx_string* %t2843, %nyx_string** %t2844
  %t2845 = load %nyx_string*, %nyx_string** %t2844
  %t2846 = getelementptr [6 x i8], [6 x i8]* @.str287, i32 0, i32 0
  %t2847 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str287.c, i8* %t2846, i64 5)
  %t2848 = call i1 @nyx_string_equals(%nyx_string* %t2845, %nyx_string* %t2847)
  br i1 %t2848, label %then549, label %else550
then549:
  %t2849 = load { i64, i8* }*, { i64, i8* }** %ast.ptr
  %t2850 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %t2849)
  store { i64, i8* }* %t2850, { i64, i8* }** %t2851
  %t2852 = load { i64, i8* }*, { i64, i8* }** %t2851
  %t2853 = call i64 @nyx_array_get({ i64, i8* }* %t2852, i64 0)
  %t2854 = inttoptr i64 %t2853 to { i64, i8* }*
  store { i64, i8* }* %t2854, { i64, i8* }** %t2855
  store i64 0, i64* %t2856
  br label %while_cond552
while_cond552:
  %t2857 = load i64, i64* %t2856
  %t2858 = load { i64, i8* }*, { i64, i8* }** %t2855
  %t2859 = call i64 @nyx_array_length({ i64, i8* }* %t2858)
  %t2860 = icmp slt i64 %t2857, %t2859
  br i1 %t2860, label %while_body553, label %while_end554
while_body553:
  %t2861 = load { i64, i8* }*, { i64, i8* }** %t2855
  %t2862 = load i64, i64* %t2856
  %t2863 = call i64 @nyx_array_get({ i64, i8* }* %t2861, i64 %t2862)
  %t2864 = inttoptr i64 %t2863 to { i64, i8* }*
  store { i64, i8* }* %t2864, { i64, i8* }** %t2865
  %t2866 = load { i64, i8* }*, { i64, i8* }** %t2865
  %t2867 = load %Environment, %Environment* %t2841
  %t2868 = call %Value @eval_stmt({ i64, i8* }* %t2866, %Environment %t2867)
  store %Value %t2868, %Value* %t2869
  %t2870 = getelementptr %Value, %Value* %t2869, i32 0, i32 0
  %t2871 = load %nyx_string*, %nyx_string** %t2870
  %t2872 = getelementptr [6 x i8], [6 x i8]* @.str288, i32 0, i32 0
  %t2873 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str288.c, i8* %t2872, i64 5)
  %t2874 = call i1 @nyx_string_equals(%nyx_string* %t2871, %nyx_string* %t2873)
  br i1 %t2874, label %then555, label %else556
then555:
  %t2875 = load %Value, %Value* %t2869
  ret %Value %t2875
else556:
  br label %merge557
merge557:
  %t2876 = load %Value, %Value* %t2869
  %t2877 = call i1 @is_loop_control(%Value %t2876)
  br i1 %t2877, label %then558, label %else559
then558:
  %t2878 = load %Value, %Value* %t2869
  %t2879 = call %Value @loop_control_escaped(%Value %t2878)
  ret %Value %t2879
else559:
  br label %merge560
merge560:
  %t2880 = load i64, i64* %t2856
  %t2881 = add i64 %t2880, 1
  store i64 %t2881, i64* %t2856
  br label %while_cond552
while_end554:
  %t2882 = getelementptr %Environment, %Environment* %t2841, i32 0, i32 0
  %t2883 = load i8*, i8** %t2882
  store i8* %t2883, i8** %t2884
  %t2885 = load i8*, i8** %t2884
  %t2886 = getelementptr [5 x i8], [5 x i8]* @.str289, i32 0, i32 0
  %t2887 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str289.c, i8* %t2886, i64 4)
  %t2888 = call i8* @nyx_string_to_cstr(%nyx_string* %t2887)
  %t2889 = call i1 @nyx_map_contains_str(i8* %t2885, i8* %t2888)
  br i1 %t2889, label %then561, label %else562
then561:
  %t2890 = load %Environment, %Environment* %t2841
  %t2891 = getelementptr [5 x i8], [5 x i8]* @.str290, i32 0, i32 0
  %t2892 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str290.c, i8* %t2891, i64 4)
  %t2893 = call %Value @env_get(%Environment %t2890, %nyx_string* %t2892)
  store %Value %t2893, %Value* %t2894
  %t2895 = getelementptr %Value, %Value* %t2894, i32 0, i32 0
  %t2896 = load %nyx_string*, %nyx_string** %t2895
  %t2897 = getelementptr [9 x i8], [9 x i8]* @.str291, i32 0, i32 0
  %t2898 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str291.c, i8* %t2897, i64 8)
  %t2899 = call i1 @nyx_string_equals(%nyx_string* %t2896, %nyx_string* %t2898)
  br i1 %t2899, label %then564, label %else565
then564:
  %t2900 = load %Value, %Value* %t2894
  %t2901 = call { i64, i8* }* @get_func_params(%Value %t2900)
  store { i64, i8* }* %t2901, { i64, i8* }** %t2902
  %t2903 = load %Value, %Value* %t2894
  %t2904 = call %nyx_string* @get_func_body_type(%Value %t2903)
  store %nyx_string* %t2904, %nyx_string** %t2905
  %t2906 = load %Value, %Value* %t2894
  %t2907 = call { i64, i8* }* @get_func_body_data(%Value %t2906)
  store { i64, i8* }* %t2907, { i64, i8* }** %t2908
  %t2909 = load %nyx_string*, %nyx_string** %t2905
  %t2910 = load { i64, i8* }*, { i64, i8* }** %t2908
  %t2911 = call { i64, i8* }* @make_astnode(%nyx_string* %t2909, { i64, i8* }* %t2910)
  store { i64, i8* }* %t2911, { i64, i8* }** %t2912
  %t2913 = load %Value, %Value* %t2894
  %t2914 = call i8* @get_func_env_bindings(%Value %t2913)
  store i8* %t2914, i8** %t2915
  %t2916 = load %Value, %Value* %t2894
  %t2917 = call { i64, i8* }* @get_func_env_parent(%Value %t2916)
  store { i64, i8* }* %t2917, { i64, i8* }** %t2918
  %t2919 = getelementptr %Environment, %Environment* null, i32 1
  %t2920 = ptrtoint %Environment* %t2919 to i64
  %t2921 = call i8* @GC_malloc(i64 %t2920)
  %t2922 = bitcast i8* %t2921 to %Environment*
  %t2923 = load i8*, i8** %t2915
  %t2924 = getelementptr %Environment, %Environment* %t2922, i32 0, i32 0
  store i8* %t2923, i8** %t2924
  %t2925 = load { i64, i8* }*, { i64, i8* }** %t2918
  %t2926 = getelementptr %Environment, %Environment* %t2922, i32 0, i32 1
  store { i64, i8* }* %t2925, { i64, i8* }** %t2926
  %t2927 = load %Environment, %Environment* %t2922
  store %Environment %t2927, %Environment* %t2928
  %t2929 = load %Environment, %Environment* %t2928
  %t2930 = call %Environment @make_child_env(%Environment %t2929)
  store %Environment %t2930, %Environment* %t2931
  %t2932 = load { i64, i8* }*, { i64, i8* }** %t2912
  %t2933 = load %Environment, %Environment* %t2931
  %t2934 = call %Value @eval_stmt({ i64, i8* }* %t2932, %Environment %t2933)
  store %Value %t2934, %Value* %t2935
  %t2936 = load %Value, %Value* %t2935
  %t2937 = call i1 @is_loop_control(%Value %t2936)
  br i1 %t2937, label %then567, label %else568
then567:
  %t2938 = load %Value, %Value* %t2935
  %t2939 = call %Value @loop_control_escaped(%Value %t2938)
  ret %Value %t2939
else568:
  br label %merge569
merge569:
  %t2940 = load %Value, %Value* %t2935
  ret %Value %t2940
else565:
  br label %merge566
merge566:
  br label %merge563
else562:
  br label %merge563
merge563:
  br label %merge551
else550:
  br label %merge551
merge551:
  %t2941 = call %Value @make_nil()
  ret %Value %t2941
}

; Inicialización de variables globales (llamada automática vía ctor)
define void @__nyx_init_globals() {
entry:
  %t2942 = call { i64, i8* }* @nyx_array_new_ptr()
  call void @nyx_array_push_tagged({ i64, i8* }* %t2942, i64 0, i64 1)
  store { i64, i8* }* %t2942, { i64, i8* }** @g_interp_error_count
  ret void
}

@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @__nyx_init_globals, i8* null }]

attributes #0 = { returns_twice }

