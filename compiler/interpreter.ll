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
  %1 = load { i64, i8* }*, { i64, i8* }** @g_interp_error_count
  %2 = call i64 @nyx_array_get({ i64, i8* }* %1, i64 0)
  ret i64 %2
}

define internal i64 @interp_err(
%nyx_string* %code.param, %nyx_string* %msg_es.param, %nyx_string* %msg_en.param) {
  %code.ptr = alloca %nyx_string*
  store %nyx_string* %code.param, %nyx_string** %code.ptr
  %msg_es.ptr = alloca %nyx_string*
  store %nyx_string* %msg_es.param, %nyx_string** %msg_es.ptr
  %msg_en.ptr = alloca %nyx_string*
  store %nyx_string* %msg_en.param, %nyx_string** %msg_en.ptr
  %3 = load { i64, i8* }*, { i64, i8* }** @g_interp_error_count
  %4 = load { i64, i8* }*, { i64, i8* }** @g_interp_error_count
  %5 = call i64 @nyx_array_get({ i64, i8* }* %4, i64 0)
  %6 = add i64 %5, 1
  call void @nyx_array_set({ i64, i8* }* %3, i64 0, i64 %6)
  %7 = getelementptr [9 x i8], [9 x i8]* @.str0, i32 0, i32 0
  %8 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str0.c, i8* %7, i64 8)
  %9 = call i8* @nyx_string_to_cstr(%nyx_string* %8)
  %10 = call %nyx_string* @nyx_getenv(i8* %9)
  %11 = alloca %nyx_string*
  store %nyx_string* %10, %nyx_string** %11
  %12 = load %nyx_string*, %nyx_string** %11
  %13 = getelementptr [3 x i8], [3 x i8]* @.str1, i32 0, i32 0
  %14 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1.c, i8* %13, i64 2)
  %15 = call i1 @nyx_string_equals(%nyx_string* %12, %nyx_string* %14)
  br i1 %15, label %then0, label %else1
then0:
  %16 = getelementptr [8 x i8], [8 x i8]* @.str2, i32 0, i32 0
  %17 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str2.c, i8* %16, i64 7)
  %18 = load %nyx_string*, %nyx_string** %code.ptr
  %19 = call %nyx_string* @nyx_string_concat(%nyx_string* %17, %nyx_string* %18)
  %20 = getelementptr [4 x i8], [4 x i8]* @.str3, i32 0, i32 0
  %21 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str3.c, i8* %20, i64 3)
  %22 = call %nyx_string* @nyx_string_concat(%nyx_string* %19, %nyx_string* %21)
  %23 = load %nyx_string*, %nyx_string** %msg_es.ptr
  %24 = call %nyx_string* @nyx_string_concat(%nyx_string* %22, %nyx_string* %23)
  %25 = call i8* @nyx_string_to_cstr(%nyx_string* %24)
  call void @nyx_print_string(i8* %25)
  br label %merge2
else1:
  %26 = getelementptr [8 x i8], [8 x i8]* @.str4, i32 0, i32 0
  %27 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str4.c, i8* %26, i64 7)
  %28 = load %nyx_string*, %nyx_string** %code.ptr
  %29 = call %nyx_string* @nyx_string_concat(%nyx_string* %27, %nyx_string* %28)
  %30 = getelementptr [4 x i8], [4 x i8]* @.str5, i32 0, i32 0
  %31 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str5.c, i8* %30, i64 3)
  %32 = call %nyx_string* @nyx_string_concat(%nyx_string* %29, %nyx_string* %31)
  %33 = load %nyx_string*, %nyx_string** %msg_en.ptr
  %34 = call %nyx_string* @nyx_string_concat(%nyx_string* %32, %nyx_string* %33)
  %35 = call i8* @nyx_string_to_cstr(%nyx_string* %34)
  call void @nyx_print_string(i8* %35)
  br label %merge2
merge2:
  ret i64 0
}

define internal { i64, i8* }* @make_astnode(
%nyx_string* %node_type.param, { i64, i8* }* %data.param) {
  %node_type.ptr = alloca %nyx_string*
  store %nyx_string* %node_type.param, %nyx_string** %node_type.ptr
  %data.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %data.param, { i64, i8* }** %data.ptr
  %36 = call { i64, i8* }* @nyx_array_new_ptr()
  %37 = alloca { i64, i8* }*
  store { i64, i8* }* %36, { i64, i8* }** %37
  %38 = load { i64, i8* }*, { i64, i8* }** %37
  %39 = load %nyx_string*, %nyx_string** %node_type.ptr
  %40 = ptrtoint %nyx_string* %39 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %38, i64 %40, i64 2)
  %41 = load { i64, i8* }*, { i64, i8* }** %37
  %42 = load { i64, i8* }*, { i64, i8* }** %data.ptr
  %43 = ptrtoint { i64, i8* }* %42 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %41, i64 %43, i64 5)
  %44 = load { i64, i8* }*, { i64, i8* }** %37
  ret { i64, i8* }* %44
}

define internal %nyx_string* @astnode_get_type(
{ i64, i8* }* %node.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %45 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %46 = call i64 @nyx_array_get({ i64, i8* }* %45, i64 0)
  %47 = inttoptr i64 %46 to %nyx_string*
  ret %nyx_string* %47
}

define internal { i64, i8* }* @astnode_get_data(
{ i64, i8* }* %node.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %48 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %49 = call i64 @nyx_array_get({ i64, i8* }* %48, i64 1)
  %50 = inttoptr i64 %49 to { i64, i8* }*
  ret { i64, i8* }* %50
}

define internal %Value @make_int(
i64 %n.param) {
  %n.ptr = alloca i64
  store i64 %n.param, i64* %n.ptr
  %51 = call i8* @nyx_map_new(i32 0)
  %52 = alloca i8*
  store i8* %51, i8** %52
  %53 = call { i64, i8* }* @nyx_array_new_ptr()
  %54 = alloca { i64, i8* }*
  store { i64, i8* }* %53, { i64, i8* }** %54
  %55 = getelementptr %Value, %Value* null, i32 1
  %56 = ptrtoint %Value* %55 to i64
  %57 = call i8* @GC_malloc(i64 %56)
  %58 = bitcast i8* %57 to %Value*
  %59 = getelementptr [4 x i8], [4 x i8]* @.str6, i32 0, i32 0
  %60 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str6.c, i8* %59, i64 3)
  %61 = getelementptr %Value, %Value* %58, i32 0, i32 0
  store %nyx_string* %60, %nyx_string** %61
  %62 = load i64, i64* %n.ptr
  %63 = getelementptr %Value, %Value* %58, i32 0, i32 1
  store i64 %62, i64* %63
  %64 = getelementptr %Value, %Value* %58, i32 0, i32 2
  store double 0.0, double* %64
  %65 = getelementptr %Value, %Value* %58, i32 0, i32 3
  store i1 0, i1* %65
  %66 = getelementptr [1 x i8], [1 x i8]* @.str7, i32 0, i32 0
  %67 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str7.c, i8* %66, i64 0)
  %68 = getelementptr %Value, %Value* %58, i32 0, i32 4
  store %nyx_string* %67, %nyx_string** %68
  %69 = load { i64, i8* }*, { i64, i8* }** %54
  %70 = getelementptr %Value, %Value* %58, i32 0, i32 5
  store { i64, i8* }* %69, { i64, i8* }** %70
  %71 = load { i64, i8* }*, { i64, i8* }** %54
  %72 = getelementptr %Value, %Value* %58, i32 0, i32 6
  store { i64, i8* }* %71, { i64, i8* }** %72
  %73 = getelementptr [1 x i8], [1 x i8]* @.str8, i32 0, i32 0
  %74 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str8.c, i8* %73, i64 0)
  %75 = getelementptr %Value, %Value* %58, i32 0, i32 7
  store %nyx_string* %74, %nyx_string** %75
  %76 = load { i64, i8* }*, { i64, i8* }** %54
  %77 = getelementptr %Value, %Value* %58, i32 0, i32 8
  store { i64, i8* }* %76, { i64, i8* }** %77
  %78 = load i8*, i8** %52
  %79 = getelementptr %Value, %Value* %58, i32 0, i32 9
  store i8* %78, i8** %79
  %80 = load { i64, i8* }*, { i64, i8* }** %54
  %81 = getelementptr %Value, %Value* %58, i32 0, i32 10
  store { i64, i8* }* %80, { i64, i8* }** %81
  %82 = load %Value, %Value* %58
  ret %Value %82
}

define internal %Value @make_float(
double %f.param) {
  %f.ptr = alloca double
  store double %f.param, double* %f.ptr
  %83 = call i8* @nyx_map_new(i32 0)
  %84 = alloca i8*
  store i8* %83, i8** %84
  %85 = call { i64, i8* }* @nyx_array_new_ptr()
  %86 = alloca { i64, i8* }*
  store { i64, i8* }* %85, { i64, i8* }** %86
  %87 = getelementptr %Value, %Value* null, i32 1
  %88 = ptrtoint %Value* %87 to i64
  %89 = call i8* @GC_malloc(i64 %88)
  %90 = bitcast i8* %89 to %Value*
  %91 = getelementptr [6 x i8], [6 x i8]* @.str9, i32 0, i32 0
  %92 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str9.c, i8* %91, i64 5)
  %93 = getelementptr %Value, %Value* %90, i32 0, i32 0
  store %nyx_string* %92, %nyx_string** %93
  %94 = getelementptr %Value, %Value* %90, i32 0, i32 1
  store i64 0, i64* %94
  %95 = load double, double* %f.ptr
  %96 = getelementptr %Value, %Value* %90, i32 0, i32 2
  store double %95, double* %96
  %97 = getelementptr %Value, %Value* %90, i32 0, i32 3
  store i1 0, i1* %97
  %98 = getelementptr [1 x i8], [1 x i8]* @.str10, i32 0, i32 0
  %99 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str10.c, i8* %98, i64 0)
  %100 = getelementptr %Value, %Value* %90, i32 0, i32 4
  store %nyx_string* %99, %nyx_string** %100
  %101 = load { i64, i8* }*, { i64, i8* }** %86
  %102 = getelementptr %Value, %Value* %90, i32 0, i32 5
  store { i64, i8* }* %101, { i64, i8* }** %102
  %103 = load { i64, i8* }*, { i64, i8* }** %86
  %104 = getelementptr %Value, %Value* %90, i32 0, i32 6
  store { i64, i8* }* %103, { i64, i8* }** %104
  %105 = getelementptr [1 x i8], [1 x i8]* @.str11, i32 0, i32 0
  %106 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str11.c, i8* %105, i64 0)
  %107 = getelementptr %Value, %Value* %90, i32 0, i32 7
  store %nyx_string* %106, %nyx_string** %107
  %108 = load { i64, i8* }*, { i64, i8* }** %86
  %109 = getelementptr %Value, %Value* %90, i32 0, i32 8
  store { i64, i8* }* %108, { i64, i8* }** %109
  %110 = load i8*, i8** %84
  %111 = getelementptr %Value, %Value* %90, i32 0, i32 9
  store i8* %110, i8** %111
  %112 = load { i64, i8* }*, { i64, i8* }** %86
  %113 = getelementptr %Value, %Value* %90, i32 0, i32 10
  store { i64, i8* }* %112, { i64, i8* }** %113
  %114 = load %Value, %Value* %90
  ret %Value %114
}

define internal %Value @make_bool(
i1 %b.param) {
  %b.ptr = alloca i1
  store i1 %b.param, i1* %b.ptr
  %115 = call i8* @nyx_map_new(i32 0)
  %116 = alloca i8*
  store i8* %115, i8** %116
  %117 = call { i64, i8* }* @nyx_array_new_ptr()
  %118 = alloca { i64, i8* }*
  store { i64, i8* }* %117, { i64, i8* }** %118
  %119 = getelementptr %Value, %Value* null, i32 1
  %120 = ptrtoint %Value* %119 to i64
  %121 = call i8* @GC_malloc(i64 %120)
  %122 = bitcast i8* %121 to %Value*
  %123 = getelementptr [5 x i8], [5 x i8]* @.str12, i32 0, i32 0
  %124 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str12.c, i8* %123, i64 4)
  %125 = getelementptr %Value, %Value* %122, i32 0, i32 0
  store %nyx_string* %124, %nyx_string** %125
  %126 = getelementptr %Value, %Value* %122, i32 0, i32 1
  store i64 0, i64* %126
  %127 = getelementptr %Value, %Value* %122, i32 0, i32 2
  store double 0.0, double* %127
  %128 = load i1, i1* %b.ptr
  %129 = getelementptr %Value, %Value* %122, i32 0, i32 3
  store i1 %128, i1* %129
  %130 = getelementptr [1 x i8], [1 x i8]* @.str13, i32 0, i32 0
  %131 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str13.c, i8* %130, i64 0)
  %132 = getelementptr %Value, %Value* %122, i32 0, i32 4
  store %nyx_string* %131, %nyx_string** %132
  %133 = load { i64, i8* }*, { i64, i8* }** %118
  %134 = getelementptr %Value, %Value* %122, i32 0, i32 5
  store { i64, i8* }* %133, { i64, i8* }** %134
  %135 = load { i64, i8* }*, { i64, i8* }** %118
  %136 = getelementptr %Value, %Value* %122, i32 0, i32 6
  store { i64, i8* }* %135, { i64, i8* }** %136
  %137 = getelementptr [1 x i8], [1 x i8]* @.str14, i32 0, i32 0
  %138 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str14.c, i8* %137, i64 0)
  %139 = getelementptr %Value, %Value* %122, i32 0, i32 7
  store %nyx_string* %138, %nyx_string** %139
  %140 = load { i64, i8* }*, { i64, i8* }** %118
  %141 = getelementptr %Value, %Value* %122, i32 0, i32 8
  store { i64, i8* }* %140, { i64, i8* }** %141
  %142 = load i8*, i8** %116
  %143 = getelementptr %Value, %Value* %122, i32 0, i32 9
  store i8* %142, i8** %143
  %144 = load { i64, i8* }*, { i64, i8* }** %118
  %145 = getelementptr %Value, %Value* %122, i32 0, i32 10
  store { i64, i8* }* %144, { i64, i8* }** %145
  %146 = load %Value, %Value* %122
  ret %Value %146
}

define internal %Value @make_string(
%nyx_string* %s.param) {
  %s.ptr = alloca %nyx_string*
  store %nyx_string* %s.param, %nyx_string** %s.ptr
  %147 = call i8* @nyx_map_new(i32 0)
  %148 = alloca i8*
  store i8* %147, i8** %148
  %149 = call { i64, i8* }* @nyx_array_new_ptr()
  %150 = alloca { i64, i8* }*
  store { i64, i8* }* %149, { i64, i8* }** %150
  %151 = getelementptr %Value, %Value* null, i32 1
  %152 = ptrtoint %Value* %151 to i64
  %153 = call i8* @GC_malloc(i64 %152)
  %154 = bitcast i8* %153 to %Value*
  %155 = getelementptr [7 x i8], [7 x i8]* @.str15, i32 0, i32 0
  %156 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str15.c, i8* %155, i64 6)
  %157 = getelementptr %Value, %Value* %154, i32 0, i32 0
  store %nyx_string* %156, %nyx_string** %157
  %158 = getelementptr %Value, %Value* %154, i32 0, i32 1
  store i64 0, i64* %158
  %159 = getelementptr %Value, %Value* %154, i32 0, i32 2
  store double 0.0, double* %159
  %160 = getelementptr %Value, %Value* %154, i32 0, i32 3
  store i1 0, i1* %160
  %161 = load %nyx_string*, %nyx_string** %s.ptr
  %162 = getelementptr %Value, %Value* %154, i32 0, i32 4
  store %nyx_string* %161, %nyx_string** %162
  %163 = load { i64, i8* }*, { i64, i8* }** %150
  %164 = getelementptr %Value, %Value* %154, i32 0, i32 5
  store { i64, i8* }* %163, { i64, i8* }** %164
  %165 = load { i64, i8* }*, { i64, i8* }** %150
  %166 = getelementptr %Value, %Value* %154, i32 0, i32 6
  store { i64, i8* }* %165, { i64, i8* }** %166
  %167 = getelementptr [1 x i8], [1 x i8]* @.str16, i32 0, i32 0
  %168 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str16.c, i8* %167, i64 0)
  %169 = getelementptr %Value, %Value* %154, i32 0, i32 7
  store %nyx_string* %168, %nyx_string** %169
  %170 = load { i64, i8* }*, { i64, i8* }** %150
  %171 = getelementptr %Value, %Value* %154, i32 0, i32 8
  store { i64, i8* }* %170, { i64, i8* }** %171
  %172 = load i8*, i8** %148
  %173 = getelementptr %Value, %Value* %154, i32 0, i32 9
  store i8* %172, i8** %173
  %174 = load { i64, i8* }*, { i64, i8* }** %150
  %175 = getelementptr %Value, %Value* %154, i32 0, i32 10
  store { i64, i8* }* %174, { i64, i8* }** %175
  %176 = load %Value, %Value* %154
  ret %Value %176
}

define internal %Value @make_array(
{ i64, i8* }* %arr.param) {
  %arr.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %arr.param, { i64, i8* }** %arr.ptr
  %177 = call i8* @nyx_map_new(i32 0)
  %178 = alloca i8*
  store i8* %177, i8** %178
  %179 = call { i64, i8* }* @nyx_array_new_ptr()
  %180 = alloca { i64, i8* }*
  store { i64, i8* }* %179, { i64, i8* }** %180
  %181 = getelementptr %Value, %Value* null, i32 1
  %182 = ptrtoint %Value* %181 to i64
  %183 = call i8* @GC_malloc(i64 %182)
  %184 = bitcast i8* %183 to %Value*
  %185 = getelementptr [6 x i8], [6 x i8]* @.str17, i32 0, i32 0
  %186 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str17.c, i8* %185, i64 5)
  %187 = getelementptr %Value, %Value* %184, i32 0, i32 0
  store %nyx_string* %186, %nyx_string** %187
  %188 = getelementptr %Value, %Value* %184, i32 0, i32 1
  store i64 0, i64* %188
  %189 = getelementptr %Value, %Value* %184, i32 0, i32 2
  store double 0.0, double* %189
  %190 = getelementptr %Value, %Value* %184, i32 0, i32 3
  store i1 0, i1* %190
  %191 = getelementptr [1 x i8], [1 x i8]* @.str18, i32 0, i32 0
  %192 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str18.c, i8* %191, i64 0)
  %193 = getelementptr %Value, %Value* %184, i32 0, i32 4
  store %nyx_string* %192, %nyx_string** %193
  %194 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %195 = getelementptr %Value, %Value* %184, i32 0, i32 5
  store { i64, i8* }* %194, { i64, i8* }** %195
  %196 = load { i64, i8* }*, { i64, i8* }** %180
  %197 = getelementptr %Value, %Value* %184, i32 0, i32 6
  store { i64, i8* }* %196, { i64, i8* }** %197
  %198 = getelementptr [1 x i8], [1 x i8]* @.str19, i32 0, i32 0
  %199 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str19.c, i8* %198, i64 0)
  %200 = getelementptr %Value, %Value* %184, i32 0, i32 7
  store %nyx_string* %199, %nyx_string** %200
  %201 = load { i64, i8* }*, { i64, i8* }** %180
  %202 = getelementptr %Value, %Value* %184, i32 0, i32 8
  store { i64, i8* }* %201, { i64, i8* }** %202
  %203 = load i8*, i8** %178
  %204 = getelementptr %Value, %Value* %184, i32 0, i32 9
  store i8* %203, i8** %204
  %205 = load { i64, i8* }*, { i64, i8* }** %180
  %206 = getelementptr %Value, %Value* %184, i32 0, i32 10
  store { i64, i8* }* %205, { i64, i8* }** %206
  %207 = load %Value, %Value* %184
  ret %Value %207
}

define internal %Value @make_function(
{ i64, i8* }* %params.param, { i64, i8* }* %body.param, %Environment %env.param) {
  %params.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %params.param, { i64, i8* }** %params.ptr
  %body.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %body.param, { i64, i8* }** %body.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %208 = call { i64, i8* }* @nyx_array_new_ptr()
  %209 = alloca { i64, i8* }*
  store { i64, i8* }* %208, { i64, i8* }** %209
  %210 = load { i64, i8* }*, { i64, i8* }** %body.ptr
  %211 = call %nyx_string* @astnode_get_type({ i64, i8* }* %210)
  %212 = alloca %nyx_string*
  store %nyx_string* %211, %nyx_string** %212
  %213 = load { i64, i8* }*, { i64, i8* }** %body.ptr
  %214 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %213)
  %215 = alloca { i64, i8* }*
  store { i64, i8* }* %214, { i64, i8* }** %215
  %216 = getelementptr %Environment, %Environment* %env.ptr, i32 0, i32 0
  %217 = load i8*, i8** %216
  %218 = alloca i8*
  store i8* %217, i8** %218
  %219 = getelementptr %Environment, %Environment* %env.ptr, i32 0, i32 1
  %220 = load { i64, i8* }*, { i64, i8* }** %219
  %221 = alloca { i64, i8* }*
  store { i64, i8* }* %220, { i64, i8* }** %221
  %222 = getelementptr %Value, %Value* null, i32 1
  %223 = ptrtoint %Value* %222 to i64
  %224 = call i8* @GC_malloc(i64 %223)
  %225 = bitcast i8* %224 to %Value*
  %226 = getelementptr [9 x i8], [9 x i8]* @.str20, i32 0, i32 0
  %227 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str20.c, i8* %226, i64 8)
  %228 = getelementptr %Value, %Value* %225, i32 0, i32 0
  store %nyx_string* %227, %nyx_string** %228
  %229 = getelementptr %Value, %Value* %225, i32 0, i32 1
  store i64 0, i64* %229
  %230 = getelementptr %Value, %Value* %225, i32 0, i32 2
  store double 0.0, double* %230
  %231 = getelementptr %Value, %Value* %225, i32 0, i32 3
  store i1 0, i1* %231
  %232 = getelementptr [1 x i8], [1 x i8]* @.str21, i32 0, i32 0
  %233 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str21.c, i8* %232, i64 0)
  %234 = getelementptr %Value, %Value* %225, i32 0, i32 4
  store %nyx_string* %233, %nyx_string** %234
  %235 = load { i64, i8* }*, { i64, i8* }** %209
  %236 = getelementptr %Value, %Value* %225, i32 0, i32 5
  store { i64, i8* }* %235, { i64, i8* }** %236
  %237 = load { i64, i8* }*, { i64, i8* }** %params.ptr
  %238 = getelementptr %Value, %Value* %225, i32 0, i32 6
  store { i64, i8* }* %237, { i64, i8* }** %238
  %239 = load %nyx_string*, %nyx_string** %212
  %240 = getelementptr %Value, %Value* %225, i32 0, i32 7
  store %nyx_string* %239, %nyx_string** %240
  %241 = load { i64, i8* }*, { i64, i8* }** %215
  %242 = getelementptr %Value, %Value* %225, i32 0, i32 8
  store { i64, i8* }* %241, { i64, i8* }** %242
  %243 = load i8*, i8** %218
  %244 = getelementptr %Value, %Value* %225, i32 0, i32 9
  store i8* %243, i8** %244
  %245 = load { i64, i8* }*, { i64, i8* }** %221
  %246 = getelementptr %Value, %Value* %225, i32 0, i32 10
  store { i64, i8* }* %245, { i64, i8* }** %246
  %247 = load %Value, %Value* %225
  ret %Value %247
}

define internal %Value @make_error(
) {
  %248 = call %Value @make_nil()
  %249 = alloca %Value
  store %Value %248, %Value* %249
  %250 = getelementptr %Value, %Value* null, i32 1
  %251 = ptrtoint %Value* %250 to i64
  %252 = call i8* @GC_malloc(i64 %251)
  %253 = bitcast i8* %252 to %Value*
  %254 = getelementptr [6 x i8], [6 x i8]* @.str22, i32 0, i32 0
  %255 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str22.c, i8* %254, i64 5)
  %256 = getelementptr %Value, %Value* %253, i32 0, i32 0
  store %nyx_string* %255, %nyx_string** %256
  %257 = getelementptr %Value, %Value* %253, i32 0, i32 1
  store i64 0, i64* %257
  %258 = getelementptr %Value, %Value* %253, i32 0, i32 2
  store double 0.0, double* %258
  %259 = getelementptr %Value, %Value* %253, i32 0, i32 3
  store i1 0, i1* %259
  %260 = getelementptr [1 x i8], [1 x i8]* @.str23, i32 0, i32 0
  %261 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str23.c, i8* %260, i64 0)
  %262 = getelementptr %Value, %Value* %253, i32 0, i32 4
  store %nyx_string* %261, %nyx_string** %262
  %263 = getelementptr %Value, %Value* %249, i32 0, i32 5
  %264 = load { i64, i8* }*, { i64, i8* }** %263
  %265 = getelementptr %Value, %Value* %253, i32 0, i32 5
  store { i64, i8* }* %264, { i64, i8* }** %265
  %266 = getelementptr %Value, %Value* %249, i32 0, i32 6
  %267 = load { i64, i8* }*, { i64, i8* }** %266
  %268 = getelementptr %Value, %Value* %253, i32 0, i32 6
  store { i64, i8* }* %267, { i64, i8* }** %268
  %269 = getelementptr [1 x i8], [1 x i8]* @.str24, i32 0, i32 0
  %270 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str24.c, i8* %269, i64 0)
  %271 = getelementptr %Value, %Value* %253, i32 0, i32 7
  store %nyx_string* %270, %nyx_string** %271
  %272 = getelementptr %Value, %Value* %249, i32 0, i32 8
  %273 = load { i64, i8* }*, { i64, i8* }** %272
  %274 = getelementptr %Value, %Value* %253, i32 0, i32 8
  store { i64, i8* }* %273, { i64, i8* }** %274
  %275 = getelementptr %Value, %Value* %249, i32 0, i32 9
  %276 = load i8*, i8** %275
  %277 = getelementptr %Value, %Value* %253, i32 0, i32 9
  store i8* %276, i8** %277
  %278 = getelementptr %Value, %Value* %249, i32 0, i32 10
  %279 = load { i64, i8* }*, { i64, i8* }** %278
  %280 = getelementptr %Value, %Value* %253, i32 0, i32 10
  store { i64, i8* }* %279, { i64, i8* }** %280
  %281 = load %Value, %Value* %253
  ret %Value %281
}

define internal %Value @make_nil(
) {
  %282 = call i8* @nyx_map_new(i32 0)
  %283 = alloca i8*
  store i8* %282, i8** %283
  %284 = call { i64, i8* }* @nyx_array_new_ptr()
  %285 = alloca { i64, i8* }*
  store { i64, i8* }* %284, { i64, i8* }** %285
  %286 = getelementptr %Value, %Value* null, i32 1
  %287 = ptrtoint %Value* %286 to i64
  %288 = call i8* @GC_malloc(i64 %287)
  %289 = bitcast i8* %288 to %Value*
  %290 = getelementptr [4 x i8], [4 x i8]* @.str25, i32 0, i32 0
  %291 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str25.c, i8* %290, i64 3)
  %292 = getelementptr %Value, %Value* %289, i32 0, i32 0
  store %nyx_string* %291, %nyx_string** %292
  %293 = getelementptr %Value, %Value* %289, i32 0, i32 1
  store i64 0, i64* %293
  %294 = getelementptr %Value, %Value* %289, i32 0, i32 2
  store double 0.0, double* %294
  %295 = getelementptr %Value, %Value* %289, i32 0, i32 3
  store i1 0, i1* %295
  %296 = getelementptr [1 x i8], [1 x i8]* @.str26, i32 0, i32 0
  %297 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str26.c, i8* %296, i64 0)
  %298 = getelementptr %Value, %Value* %289, i32 0, i32 4
  store %nyx_string* %297, %nyx_string** %298
  %299 = load { i64, i8* }*, { i64, i8* }** %285
  %300 = getelementptr %Value, %Value* %289, i32 0, i32 5
  store { i64, i8* }* %299, { i64, i8* }** %300
  %301 = load { i64, i8* }*, { i64, i8* }** %285
  %302 = getelementptr %Value, %Value* %289, i32 0, i32 6
  store { i64, i8* }* %301, { i64, i8* }** %302
  %303 = getelementptr [1 x i8], [1 x i8]* @.str27, i32 0, i32 0
  %304 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str27.c, i8* %303, i64 0)
  %305 = getelementptr %Value, %Value* %289, i32 0, i32 7
  store %nyx_string* %304, %nyx_string** %305
  %306 = load { i64, i8* }*, { i64, i8* }** %285
  %307 = getelementptr %Value, %Value* %289, i32 0, i32 8
  store { i64, i8* }* %306, { i64, i8* }** %307
  %308 = load i8*, i8** %283
  %309 = getelementptr %Value, %Value* %289, i32 0, i32 9
  store i8* %308, i8** %309
  %310 = load { i64, i8* }*, { i64, i8* }** %285
  %311 = getelementptr %Value, %Value* %289, i32 0, i32 10
  store { i64, i8* }* %310, { i64, i8* }** %311
  %312 = load %Value, %Value* %289
  ret %Value %312
}

define internal %Value @make_return_value(
%Value %inner_value.param) {
  %inner_value.ptr = alloca %Value
  store %Value %inner_value.param, %Value* %inner_value.ptr
  %313 = call i8* @nyx_map_new(i32 0)
  %314 = alloca i8*
  store i8* %313, i8** %314
  %315 = call { i64, i8* }* @nyx_array_new_ptr()
  %316 = alloca { i64, i8* }*
  store { i64, i8* }* %315, { i64, i8* }** %316
  %317 = load { i64, i8* }*, { i64, i8* }** %316
  %318 = load %Value, %Value* %inner_value.ptr
  %319 = getelementptr %Value, %Value* null, i32 1
  %320 = ptrtoint %Value* %319 to i64
  %321 = call i8* @GC_malloc(i64 %320)
  %322 = bitcast i8* %321 to %Value*
  store %Value %318, %Value* %322
  %323 = ptrtoint %Value* %322 to i64
  call void @nyx_array_push({ i64, i8* }* %317, i64 %323)
  %324 = getelementptr %Value, %Value* null, i32 1
  %325 = ptrtoint %Value* %324 to i64
  %326 = call i8* @GC_malloc(i64 %325)
  %327 = bitcast i8* %326 to %Value*
  %328 = getelementptr [7 x i8], [7 x i8]* @.str28, i32 0, i32 0
  %329 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str28.c, i8* %328, i64 6)
  %330 = getelementptr %Value, %Value* %327, i32 0, i32 0
  store %nyx_string* %329, %nyx_string** %330
  %331 = getelementptr %Value, %Value* %327, i32 0, i32 1
  store i64 0, i64* %331
  %332 = getelementptr %Value, %Value* %327, i32 0, i32 2
  store double 0.0, double* %332
  %333 = getelementptr %Value, %Value* %327, i32 0, i32 3
  store i1 0, i1* %333
  %334 = getelementptr [1 x i8], [1 x i8]* @.str29, i32 0, i32 0
  %335 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str29.c, i8* %334, i64 0)
  %336 = getelementptr %Value, %Value* %327, i32 0, i32 4
  store %nyx_string* %335, %nyx_string** %336
  %337 = load { i64, i8* }*, { i64, i8* }** %316
  %338 = getelementptr %Value, %Value* %327, i32 0, i32 5
  store { i64, i8* }* %337, { i64, i8* }** %338
  %339 = call { i64, i8* }* @nyx_array_new_ptr()
  %340 = getelementptr %Value, %Value* %327, i32 0, i32 6
  store { i64, i8* }* %339, { i64, i8* }** %340
  %341 = getelementptr [1 x i8], [1 x i8]* @.str30, i32 0, i32 0
  %342 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str30.c, i8* %341, i64 0)
  %343 = getelementptr %Value, %Value* %327, i32 0, i32 7
  store %nyx_string* %342, %nyx_string** %343
  %344 = call { i64, i8* }* @nyx_array_new_ptr()
  %345 = getelementptr %Value, %Value* %327, i32 0, i32 8
  store { i64, i8* }* %344, { i64, i8* }** %345
  %346 = load i8*, i8** %314
  %347 = getelementptr %Value, %Value* %327, i32 0, i32 9
  store i8* %346, i8** %347
  %348 = call { i64, i8* }* @nyx_array_new_ptr()
  %349 = getelementptr %Value, %Value* %327, i32 0, i32 10
  store { i64, i8* }* %348, { i64, i8* }** %349
  %350 = load %Value, %Value* %327
  ret %Value %350
}

define internal %Value @make_control(
%nyx_string* %kind.param) {
  %kind.ptr = alloca %nyx_string*
  store %nyx_string* %kind.param, %nyx_string** %kind.ptr
  %351 = call %Value @make_nil()
  %352 = alloca %Value
  store %Value %351, %Value* %352
  %353 = getelementptr %Value, %Value* null, i32 1
  %354 = ptrtoint %Value* %353 to i64
  %355 = call i8* @GC_malloc(i64 %354)
  %356 = bitcast i8* %355 to %Value*
  %357 = load %nyx_string*, %nyx_string** %kind.ptr
  %358 = getelementptr %Value, %Value* %356, i32 0, i32 0
  store %nyx_string* %357, %nyx_string** %358
  %359 = getelementptr %Value, %Value* %356, i32 0, i32 1
  store i64 0, i64* %359
  %360 = getelementptr %Value, %Value* %356, i32 0, i32 2
  store double 0.0, double* %360
  %361 = getelementptr %Value, %Value* %356, i32 0, i32 3
  store i1 0, i1* %361
  %362 = getelementptr [1 x i8], [1 x i8]* @.str31, i32 0, i32 0
  %363 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str31.c, i8* %362, i64 0)
  %364 = getelementptr %Value, %Value* %356, i32 0, i32 4
  store %nyx_string* %363, %nyx_string** %364
  %365 = getelementptr %Value, %Value* %352, i32 0, i32 5
  %366 = load { i64, i8* }*, { i64, i8* }** %365
  %367 = getelementptr %Value, %Value* %356, i32 0, i32 5
  store { i64, i8* }* %366, { i64, i8* }** %367
  %368 = getelementptr %Value, %Value* %352, i32 0, i32 6
  %369 = load { i64, i8* }*, { i64, i8* }** %368
  %370 = getelementptr %Value, %Value* %356, i32 0, i32 6
  store { i64, i8* }* %369, { i64, i8* }** %370
  %371 = getelementptr [1 x i8], [1 x i8]* @.str32, i32 0, i32 0
  %372 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str32.c, i8* %371, i64 0)
  %373 = getelementptr %Value, %Value* %356, i32 0, i32 7
  store %nyx_string* %372, %nyx_string** %373
  %374 = getelementptr %Value, %Value* %352, i32 0, i32 8
  %375 = load { i64, i8* }*, { i64, i8* }** %374
  %376 = getelementptr %Value, %Value* %356, i32 0, i32 8
  store { i64, i8* }* %375, { i64, i8* }** %376
  %377 = getelementptr %Value, %Value* %352, i32 0, i32 9
  %378 = load i8*, i8** %377
  %379 = getelementptr %Value, %Value* %356, i32 0, i32 9
  store i8* %378, i8** %379
  %380 = getelementptr %Value, %Value* %352, i32 0, i32 10
  %381 = load { i64, i8* }*, { i64, i8* }** %380
  %382 = getelementptr %Value, %Value* %356, i32 0, i32 10
  store { i64, i8* }* %381, { i64, i8* }** %382
  %383 = load %Value, %Value* %356
  ret %Value %383
}

define internal i1 @is_loop_control(
%Value %v.param) {
  %v.ptr = alloca %Value
  store %Value %v.param, %Value* %v.ptr
  %384 = alloca i1
  store i1 true, i1* %384
  %385 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %386 = load %nyx_string*, %nyx_string** %385
  %387 = getelementptr [6 x i8], [6 x i8]* @.str33, i32 0, i32 0
  %388 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str33.c, i8* %387, i64 5)
  %389 = call i1 @nyx_string_equals(%nyx_string* %386, %nyx_string* %388)
  br i1 %389, label %sc_or_end4, label %sc_or_rhs3
sc_or_rhs3:
  %390 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %391 = load %nyx_string*, %nyx_string** %390
  %392 = getelementptr [9 x i8], [9 x i8]* @.str34, i32 0, i32 0
  %393 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str34.c, i8* %392, i64 8)
  %394 = call i1 @nyx_string_equals(%nyx_string* %391, %nyx_string* %393)
  store i1 %394, i1* %384
  br label %sc_or_end4
sc_or_end4:
  %395 = load i1, i1* %384
  ret i1 %395
}

define internal %Value @loop_control_escaped(
%Value %v.param) {
  %v.ptr = alloca %Value
  store %Value %v.param, %Value* %v.ptr
  %396 = getelementptr [8 x i8], [8 x i8]* @.str35, i32 0, i32 0
  %397 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str35.c, i8* %396, i64 7)
  %398 = getelementptr [2 x i8], [2 x i8]* @.str36, i32 0, i32 0
  %399 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str36.c, i8* %398, i64 1)
  %400 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %401 = load %nyx_string*, %nyx_string** %400
  %402 = call %nyx_string* @nyx_string_concat(%nyx_string* %399, %nyx_string* %401)
  %403 = getelementptr [16 x i8], [16 x i8]* @.str37, i32 0, i32 0
  %404 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str37.c, i8* %403, i64 15)
  %405 = call %nyx_string* @nyx_string_concat(%nyx_string* %402, %nyx_string* %404)
  %406 = getelementptr [2 x i8], [2 x i8]* @.str38, i32 0, i32 0
  %407 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str38.c, i8* %406, i64 1)
  %408 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %409 = load %nyx_string*, %nyx_string** %408
  %410 = call %nyx_string* @nyx_string_concat(%nyx_string* %407, %nyx_string* %409)
  %411 = getelementptr [18 x i8], [18 x i8]* @.str39, i32 0, i32 0
  %412 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str39.c, i8* %411, i64 17)
  %413 = call %nyx_string* @nyx_string_concat(%nyx_string* %410, %nyx_string* %412)
  %414 = call i64 @interp_err(%nyx_string* %397, %nyx_string* %405, %nyx_string* %413)
  %415 = call %Value @make_error()
  ret %Value %415
}

define internal %Value @eval_return(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %416 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %417 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %416)
  %418 = alloca { i64, i8* }*
  store { i64, i8* }* %417, { i64, i8* }** %418
  %419 = load { i64, i8* }*, { i64, i8* }** %418
  %420 = call i64 @nyx_array_get({ i64, i8* }* %419, i64 0)
  %421 = inttoptr i64 %420 to { i64, i8* }*
  %422 = alloca { i64, i8* }*
  store { i64, i8* }* %421, { i64, i8* }** %422
  %423 = load { i64, i8* }*, { i64, i8* }** %422
  %424 = load %Environment, %Environment* %env.ptr
  %425 = call %Value @eval_expr({ i64, i8* }* %423, %Environment %424)
  %426 = alloca %Value
  store %Value %425, %Value* %426
  %427 = load %Value, %Value* %426
  %428 = call %Value @make_return_value(%Value %427)
  ret %Value %428
}

define internal i64 @value_to_int(
%Value %v.param) {
  %v.ptr = alloca %Value
  store %Value %v.param, %Value* %v.ptr
  %429 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %430 = load %nyx_string*, %nyx_string** %429
  %431 = getelementptr [4 x i8], [4 x i8]* @.str40, i32 0, i32 0
  %432 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str40.c, i8* %431, i64 3)
  %433 = call i1 @nyx_string_equals(%nyx_string* %430, %nyx_string* %432)
  br i1 %433, label %then5, label %else6
then5:
  %434 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 1
  %435 = load i64, i64* %434
  ret i64 %435
else6:
  br label %merge7
merge7:
  ret i64 0
}

define internal double @value_to_float(
%Value %v.param) {
  %v.ptr = alloca %Value
  store %Value %v.param, %Value* %v.ptr
  %436 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %437 = load %nyx_string*, %nyx_string** %436
  %438 = getelementptr [6 x i8], [6 x i8]* @.str41, i32 0, i32 0
  %439 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str41.c, i8* %438, i64 5)
  %440 = call i1 @nyx_string_equals(%nyx_string* %437, %nyx_string* %439)
  br i1 %440, label %then8, label %else9
then8:
  %441 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 2
  %442 = load double, double* %441
  ret double %442
else9:
  br label %merge10
merge10:
  %443 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %444 = load %nyx_string*, %nyx_string** %443
  %445 = getelementptr [4 x i8], [4 x i8]* @.str42, i32 0, i32 0
  %446 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str42.c, i8* %445, i64 3)
  %447 = call i1 @nyx_string_equals(%nyx_string* %444, %nyx_string* %446)
  br i1 %447, label %then11, label %else12
then11:
  %448 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 1
  %449 = load i64, i64* %448
  %450 = sitofp i64 %449 to double
  %451 = alloca double
  store double %450, double* %451
  %452 = load double, double* %451
  ret double %452
else12:
  br label %merge13
merge13:
  ret double 0.0
}

define internal i1 @value_to_bool(
%Value %v.param) {
  %v.ptr = alloca %Value
  store %Value %v.param, %Value* %v.ptr
  %453 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %454 = load %nyx_string*, %nyx_string** %453
  %455 = getelementptr [5 x i8], [5 x i8]* @.str43, i32 0, i32 0
  %456 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str43.c, i8* %455, i64 4)
  %457 = call i1 @nyx_string_equals(%nyx_string* %454, %nyx_string* %456)
  br i1 %457, label %then14, label %else15
then14:
  %458 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 3
  %459 = load i1, i1* %458
  ret i1 %459
else15:
  br label %merge16
merge16:
  ret i1 0
}

define internal %nyx_string* @value_to_string(
%Value %v.param) {
  %v.ptr = alloca %Value
  store %Value %v.param, %Value* %v.ptr
  %460 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %461 = load %nyx_string*, %nyx_string** %460
  %462 = getelementptr [4 x i8], [4 x i8]* @.str44, i32 0, i32 0
  %463 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str44.c, i8* %462, i64 3)
  %464 = call i1 @nyx_string_equals(%nyx_string* %461, %nyx_string* %463)
  br i1 %464, label %then17, label %else18
then17:
  %465 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 1
  %466 = load i64, i64* %465
  %467 = call %nyx_string* @nyx_string_from_int(i64 %466)
  ret %nyx_string* %467
else18:
  br label %merge19
merge19:
  %468 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %469 = load %nyx_string*, %nyx_string** %468
  %470 = getelementptr [6 x i8], [6 x i8]* @.str45, i32 0, i32 0
  %471 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str45.c, i8* %470, i64 5)
  %472 = call i1 @nyx_string_equals(%nyx_string* %469, %nyx_string* %471)
  br i1 %472, label %then20, label %else21
then20:
  %473 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 2
  %474 = load double, double* %473
  %475 = call %nyx_string* @nyx_string_from_float(double %474)
  ret %nyx_string* %475
else21:
  br label %merge22
merge22:
  %476 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %477 = load %nyx_string*, %nyx_string** %476
  %478 = getelementptr [5 x i8], [5 x i8]* @.str46, i32 0, i32 0
  %479 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str46.c, i8* %478, i64 4)
  %480 = call i1 @nyx_string_equals(%nyx_string* %477, %nyx_string* %479)
  br i1 %480, label %then23, label %else24
then23:
  %481 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 3
  %482 = load i1, i1* %481
  br i1 %482, label %then26, label %else27
then26:
  %483 = getelementptr [5 x i8], [5 x i8]* @.str47, i32 0, i32 0
  %484 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str47.c, i8* %483, i64 4)
  ret %nyx_string* %484
else27:
  br label %merge28
merge28:
  %485 = getelementptr [6 x i8], [6 x i8]* @.str48, i32 0, i32 0
  %486 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str48.c, i8* %485, i64 5)
  ret %nyx_string* %486
else24:
  br label %merge25
merge25:
  %487 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %488 = load %nyx_string*, %nyx_string** %487
  %489 = getelementptr [7 x i8], [7 x i8]* @.str49, i32 0, i32 0
  %490 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str49.c, i8* %489, i64 6)
  %491 = call i1 @nyx_string_equals(%nyx_string* %488, %nyx_string* %490)
  br i1 %491, label %then29, label %else30
then29:
  %492 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 4
  %493 = load %nyx_string*, %nyx_string** %492
  ret %nyx_string* %493
else30:
  br label %merge31
merge31:
  %494 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %495 = load %nyx_string*, %nyx_string** %494
  %496 = getelementptr [4 x i8], [4 x i8]* @.str50, i32 0, i32 0
  %497 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str50.c, i8* %496, i64 3)
  %498 = call i1 @nyx_string_equals(%nyx_string* %495, %nyx_string* %497)
  br i1 %498, label %then32, label %else33
then32:
  %499 = getelementptr [4 x i8], [4 x i8]* @.str51, i32 0, i32 0
  %500 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str51.c, i8* %499, i64 3)
  ret %nyx_string* %500
else33:
  br label %merge34
merge34:
  %501 = getelementptr [2 x i8], [2 x i8]* @.str52, i32 0, i32 0
  %502 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str52.c, i8* %501, i64 1)
  %503 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %504 = load %nyx_string*, %nyx_string** %503
  %505 = call %nyx_string* @nyx_string_concat(%nyx_string* %502, %nyx_string* %504)
  %506 = getelementptr [2 x i8], [2 x i8]* @.str53, i32 0, i32 0
  %507 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str53.c, i8* %506, i64 1)
  %508 = call %nyx_string* @nyx_string_concat(%nyx_string* %505, %nyx_string* %507)
  ret %nyx_string* %508
}

define internal i1 @is_truthy(
%Value %v.param) {
  %v.ptr = alloca %Value
  store %Value %v.param, %Value* %v.ptr
  %509 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %510 = load %nyx_string*, %nyx_string** %509
  %511 = getelementptr [5 x i8], [5 x i8]* @.str54, i32 0, i32 0
  %512 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str54.c, i8* %511, i64 4)
  %513 = call i1 @nyx_string_equals(%nyx_string* %510, %nyx_string* %512)
  br i1 %513, label %then35, label %else36
then35:
  %514 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 3
  %515 = load i1, i1* %514
  ret i1 %515
else36:
  br label %merge37
merge37:
  %516 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %517 = load %nyx_string*, %nyx_string** %516
  %518 = getelementptr [4 x i8], [4 x i8]* @.str55, i32 0, i32 0
  %519 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str55.c, i8* %518, i64 3)
  %520 = call i1 @nyx_string_equals(%nyx_string* %517, %nyx_string* %519)
  br i1 %520, label %then38, label %else39
then38:
  ret i1 0
else39:
  br label %merge40
merge40:
  %521 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %522 = load %nyx_string*, %nyx_string** %521
  %523 = getelementptr [4 x i8], [4 x i8]* @.str56, i32 0, i32 0
  %524 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str56.c, i8* %523, i64 3)
  %525 = call i1 @nyx_string_equals(%nyx_string* %522, %nyx_string* %524)
  br i1 %525, label %then41, label %else42
then41:
  %526 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 1
  %527 = load i64, i64* %526
  %528 = icmp ne i64 %527, 0
  ret i1 %528
else42:
  br label %merge43
merge43:
  ret i1 1
}

define internal i1 @values_equal(
%Value %a.param, %Value %b.param) {
  %a.ptr = alloca %Value
  store %Value %a.param, %Value* %a.ptr
  %b.ptr = alloca %Value
  store %Value %b.param, %Value* %b.ptr
  %529 = getelementptr %Value, %Value* %a.ptr, i32 0, i32 0
  %530 = load %nyx_string*, %nyx_string** %529
  %531 = getelementptr %Value, %Value* %b.ptr, i32 0, i32 0
  %532 = load %nyx_string*, %nyx_string** %531
  %533 = call i1 @nyx_string_equals(%nyx_string* %530, %nyx_string* %532)
  %534 = xor i1 %533, true
  br i1 %534, label %then44, label %else45
then44:
  ret i1 0
else45:
  br label %merge46
merge46:
  %535 = getelementptr %Value, %Value* %a.ptr, i32 0, i32 0
  %536 = load %nyx_string*, %nyx_string** %535
  %537 = getelementptr [4 x i8], [4 x i8]* @.str57, i32 0, i32 0
  %538 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str57.c, i8* %537, i64 3)
  %539 = call i1 @nyx_string_equals(%nyx_string* %536, %nyx_string* %538)
  br i1 %539, label %then47, label %else48
then47:
  %540 = getelementptr %Value, %Value* %a.ptr, i32 0, i32 1
  %541 = load i64, i64* %540
  %542 = getelementptr %Value, %Value* %b.ptr, i32 0, i32 1
  %543 = load i64, i64* %542
  %544 = icmp eq i64 %541, %543
  ret i1 %544
else48:
  br label %merge49
merge49:
  %545 = getelementptr %Value, %Value* %a.ptr, i32 0, i32 0
  %546 = load %nyx_string*, %nyx_string** %545
  %547 = getelementptr [5 x i8], [5 x i8]* @.str58, i32 0, i32 0
  %548 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str58.c, i8* %547, i64 4)
  %549 = call i1 @nyx_string_equals(%nyx_string* %546, %nyx_string* %548)
  br i1 %549, label %then50, label %else51
then50:
  %550 = getelementptr %Value, %Value* %a.ptr, i32 0, i32 3
  %551 = load i1, i1* %550
  %552 = getelementptr %Value, %Value* %b.ptr, i32 0, i32 3
  %553 = load i1, i1* %552
  %554 = icmp eq i1 %551, %553
  ret i1 %554
else51:
  br label %merge52
merge52:
  %555 = getelementptr %Value, %Value* %a.ptr, i32 0, i32 0
  %556 = load %nyx_string*, %nyx_string** %555
  %557 = getelementptr [7 x i8], [7 x i8]* @.str59, i32 0, i32 0
  %558 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str59.c, i8* %557, i64 6)
  %559 = call i1 @nyx_string_equals(%nyx_string* %556, %nyx_string* %558)
  br i1 %559, label %then53, label %else54
then53:
  %560 = getelementptr %Value, %Value* %a.ptr, i32 0, i32 4
  %561 = load %nyx_string*, %nyx_string** %560
  %562 = getelementptr %Value, %Value* %b.ptr, i32 0, i32 4
  %563 = load %nyx_string*, %nyx_string** %562
  %564 = call i1 @nyx_string_equals(%nyx_string* %561, %nyx_string* %563)
  ret i1 %564
else54:
  br label %merge55
merge55:
  ret i1 0
}

define internal i64 @print_value(
%Value %v.param) {
  %v.ptr = alloca %Value
  store %Value %v.param, %Value* %v.ptr
  %565 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %566 = load %nyx_string*, %nyx_string** %565
  %567 = getelementptr [4 x i8], [4 x i8]* @.str60, i32 0, i32 0
  %568 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str60.c, i8* %567, i64 3)
  %569 = call i1 @nyx_string_equals(%nyx_string* %566, %nyx_string* %568)
  br i1 %569, label %then56, label %else57
then56:
  %570 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 1
  %571 = load i64, i64* %570
  call void @nyx_print_int(i64 %571)
  br label %merge58
else57:
  %572 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %573 = load %nyx_string*, %nyx_string** %572
  %574 = getelementptr [6 x i8], [6 x i8]* @.str61, i32 0, i32 0
  %575 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str61.c, i8* %574, i64 5)
  %576 = call i1 @nyx_string_equals(%nyx_string* %573, %nyx_string* %575)
  br i1 %576, label %then59, label %else60
then59:
  %577 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 2
  %578 = load double, double* %577
  call void @nyx_print_float(double %578)
  br label %merge61
else60:
  %579 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %580 = load %nyx_string*, %nyx_string** %579
  %581 = getelementptr [5 x i8], [5 x i8]* @.str62, i32 0, i32 0
  %582 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str62.c, i8* %581, i64 4)
  %583 = call i1 @nyx_string_equals(%nyx_string* %580, %nyx_string* %582)
  br i1 %583, label %then62, label %else63
then62:
  %584 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 3
  %585 = load i1, i1* %584
  br i1 %585, label %then65, label %else66
then65:
  %586 = getelementptr [5 x i8], [5 x i8]* @.str63, i32 0, i32 0
  %587 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str63.c, i8* %586, i64 4)
  %588 = call i8* @nyx_string_to_cstr(%nyx_string* %587)
  call void @nyx_print_string(i8* %588)
  br label %merge67
else66:
  %589 = getelementptr [6 x i8], [6 x i8]* @.str64, i32 0, i32 0
  %590 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str64.c, i8* %589, i64 5)
  %591 = call i8* @nyx_string_to_cstr(%nyx_string* %590)
  call void @nyx_print_string(i8* %591)
  br label %merge67
merge67:
  br label %merge64
else63:
  %592 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %593 = load %nyx_string*, %nyx_string** %592
  %594 = getelementptr [7 x i8], [7 x i8]* @.str65, i32 0, i32 0
  %595 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str65.c, i8* %594, i64 6)
  %596 = call i1 @nyx_string_equals(%nyx_string* %593, %nyx_string* %595)
  br i1 %596, label %then68, label %else69
then68:
  %597 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 4
  %598 = load %nyx_string*, %nyx_string** %597
  %599 = call i8* @nyx_string_to_cstr(%nyx_string* %598)
  call void @nyx_print_string(i8* %599)
  br label %merge70
else69:
  %600 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %601 = load %nyx_string*, %nyx_string** %600
  %602 = getelementptr [4 x i8], [4 x i8]* @.str66, i32 0, i32 0
  %603 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str66.c, i8* %602, i64 3)
  %604 = call i1 @nyx_string_equals(%nyx_string* %601, %nyx_string* %603)
  br i1 %604, label %then71, label %else72
then71:
  %605 = getelementptr [4 x i8], [4 x i8]* @.str67, i32 0, i32 0
  %606 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str67.c, i8* %605, i64 3)
  %607 = call i8* @nyx_string_to_cstr(%nyx_string* %606)
  call void @nyx_print_string(i8* %607)
  br label %merge73
else72:
  %608 = getelementptr [2 x i8], [2 x i8]* @.str68, i32 0, i32 0
  %609 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str68.c, i8* %608, i64 1)
  %610 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %611 = load %nyx_string*, %nyx_string** %610
  %612 = call %nyx_string* @nyx_string_concat(%nyx_string* %609, %nyx_string* %611)
  %613 = getelementptr [2 x i8], [2 x i8]* @.str69, i32 0, i32 0
  %614 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str69.c, i8* %613, i64 1)
  %615 = call %nyx_string* @nyx_string_concat(%nyx_string* %612, %nyx_string* %614)
  %616 = call i8* @nyx_string_to_cstr(%nyx_string* %615)
  call void @nyx_print_string(i8* %616)
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
  %617 = getelementptr %Value, %Value* %func_value.ptr, i32 0, i32 6
  %618 = load { i64, i8* }*, { i64, i8* }** %617
  ret { i64, i8* }* %618
}

define internal %nyx_string* @get_func_body_type(
%Value %func_value.param) {
  %func_value.ptr = alloca %Value
  store %Value %func_value.param, %Value* %func_value.ptr
  %619 = getelementptr %Value, %Value* %func_value.ptr, i32 0, i32 7
  %620 = load %nyx_string*, %nyx_string** %619
  ret %nyx_string* %620
}

define internal { i64, i8* }* @get_func_body_data(
%Value %func_value.param) {
  %func_value.ptr = alloca %Value
  store %Value %func_value.param, %Value* %func_value.ptr
  %621 = getelementptr %Value, %Value* %func_value.ptr, i32 0, i32 8
  %622 = load { i64, i8* }*, { i64, i8* }** %621
  ret { i64, i8* }* %622
}

define internal i8* @get_func_env_bindings(
%Value %func_value.param) {
  %func_value.ptr = alloca %Value
  store %Value %func_value.param, %Value* %func_value.ptr
  %623 = getelementptr %Value, %Value* %func_value.ptr, i32 0, i32 9
  %624 = load i8*, i8** %623
  ret i8* %624
}

define internal { i64, i8* }* @get_func_env_parent(
%Value %func_value.param) {
  %func_value.ptr = alloca %Value
  store %Value %func_value.param, %Value* %func_value.ptr
  %625 = getelementptr %Value, %Value* %func_value.ptr, i32 0, i32 10
  %626 = load { i64, i8* }*, { i64, i8* }** %625
  ret { i64, i8* }* %626
}

define internal %Environment @make_env(
) {
  %627 = call i8* @nyx_map_new(i32 0)
  %628 = alloca i8*
  store i8* %627, i8** %628
  %629 = call { i64, i8* }* @nyx_array_new_ptr()
  %630 = alloca { i64, i8* }*
  store { i64, i8* }* %629, { i64, i8* }** %630
  %631 = getelementptr %Environment, %Environment* null, i32 1
  %632 = ptrtoint %Environment* %631 to i64
  %633 = call i8* @GC_malloc(i64 %632)
  %634 = bitcast i8* %633 to %Environment*
  %635 = load i8*, i8** %628
  %636 = getelementptr %Environment, %Environment* %634, i32 0, i32 0
  store i8* %635, i8** %636
  %637 = load { i64, i8* }*, { i64, i8* }** %630
  %638 = getelementptr %Environment, %Environment* %634, i32 0, i32 1
  store { i64, i8* }* %637, { i64, i8* }** %638
  %639 = load %Environment, %Environment* %634
  ret %Environment %639
}

define internal %Environment @make_child_env(
%Environment %parent.param) {
  %parent.ptr = alloca %Environment
  store %Environment %parent.param, %Environment* %parent.ptr
  %640 = call i8* @nyx_map_new(i32 0)
  %641 = alloca i8*
  store i8* %640, i8** %641
  %642 = call { i64, i8* }* @nyx_array_new_ptr()
  %643 = alloca { i64, i8* }*
  store { i64, i8* }* %642, { i64, i8* }** %643
  %644 = load { i64, i8* }*, { i64, i8* }** %643
  %645 = load %Environment, %Environment* %parent.ptr
  %646 = getelementptr %Environment, %Environment* null, i32 1
  %647 = ptrtoint %Environment* %646 to i64
  %648 = call i8* @GC_malloc(i64 %647)
  %649 = bitcast i8* %648 to %Environment*
  store %Environment %645, %Environment* %649
  %650 = ptrtoint %Environment* %649 to i64
  call void @nyx_array_push({ i64, i8* }* %644, i64 %650)
  %651 = getelementptr %Environment, %Environment* null, i32 1
  %652 = ptrtoint %Environment* %651 to i64
  %653 = call i8* @GC_malloc(i64 %652)
  %654 = bitcast i8* %653 to %Environment*
  %655 = load i8*, i8** %641
  %656 = getelementptr %Environment, %Environment* %654, i32 0, i32 0
  store i8* %655, i8** %656
  %657 = load { i64, i8* }*, { i64, i8* }** %643
  %658 = getelementptr %Environment, %Environment* %654, i32 0, i32 1
  store { i64, i8* }* %657, { i64, i8* }** %658
  %659 = load %Environment, %Environment* %654
  ret %Environment %659
}

define internal i64 @env_define(
%Environment %env.param, %nyx_string* %name.param, %Value %value.param) {
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %value.ptr = alloca %Value
  store %Value %value.param, %Value* %value.ptr
  %660 = getelementptr %Environment, %Environment* %env.ptr, i32 0, i32 0
  %661 = load i8*, i8** %660
  %662 = load %nyx_string*, %nyx_string** %name.ptr
  %663 = load %Value, %Value* %value.ptr
  %664 = call i8* @nyx_string_to_cstr(%nyx_string* %662)
  %665 = getelementptr %Value, %Value* null, i32 1
  %666 = ptrtoint %Value* %665 to i64
  %667 = call i8* @GC_malloc(i64 %666)
  %668 = bitcast i8* %667 to %Value*
  store %Value %663, %Value* %668
  %669 = ptrtoint %Value* %668 to i64
  call void @nyx_map_insert_int(i8* %661, i8* %664, i64 %669)
  ret i64 0
}

define internal i1 @env_has(
%Environment %env.param, %nyx_string* %name.param) {
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %670 = getelementptr %Environment, %Environment* %env.ptr, i32 0, i32 0
  %671 = load i8*, i8** %670
  %672 = load %nyx_string*, %nyx_string** %name.ptr
  %673 = call i8* @nyx_string_to_cstr(%nyx_string* %672)
  %674 = call i1 @nyx_map_contains_str(i8* %671, i8* %673)
  br i1 %674, label %then74, label %else75
then74:
  ret i1 1
else75:
  br label %merge76
merge76:
  %675 = getelementptr %Environment, %Environment* %env.ptr, i32 0, i32 1
  %676 = load { i64, i8* }*, { i64, i8* }** %675
  %677 = call i64 @nyx_array_length({ i64, i8* }* %676)
  %678 = icmp sgt i64 %677, 0
  br i1 %678, label %then77, label %else78
then77:
  %679 = getelementptr %Environment, %Environment* %env.ptr, i32 0, i32 1
  %680 = load { i64, i8* }*, { i64, i8* }** %679
  %681 = getelementptr [12 x i8], [12 x i8]* @.slotT70, i32 0, i32 0
  %682 = call i64 @nyx_slot_as_value_checked({ i64, i8* }* %680, i64 0, i8* %681)
  %683 = inttoptr i64 %682 to %Environment*
  %684 = load %Environment, %Environment* %683
  %685 = alloca %Environment
  store %Environment %684, %Environment* %685
  %686 = load %Environment, %Environment* %685
  %687 = load %nyx_string*, %nyx_string** %name.ptr
  %688 = call i1 @env_has(%Environment %686, %nyx_string* %687)
  ret i1 %688
else78:
  br label %merge79
merge79:
  ret i1 0
}

define internal %Value @env_get(
%Environment %env.param, %nyx_string* %name.param) {
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %689 = getelementptr %Environment, %Environment* %env.ptr, i32 0, i32 0
  %690 = load i8*, i8** %689
  %691 = load %nyx_string*, %nyx_string** %name.ptr
  %692 = call i8* @nyx_string_to_cstr(%nyx_string* %691)
  %693 = call i1 @nyx_map_contains_str(i8* %690, i8* %692)
  br i1 %693, label %then80, label %else81
then80:
  %694 = getelementptr %Environment, %Environment* %env.ptr, i32 0, i32 0
  %695 = load i8*, i8** %694
  %696 = load %nyx_string*, %nyx_string** %name.ptr
  %697 = call i8* @nyx_string_to_cstr(%nyx_string* %696)
  %698 = call i64 @nyx_map_get_int(i8* %695, i8* %697)
  %699 = inttoptr i64 %698 to %Value*
  %700 = load %Value, %Value* %699
  ret %Value %700
else81:
  br label %merge82
merge82:
  %701 = getelementptr %Environment, %Environment* %env.ptr, i32 0, i32 1
  %702 = load { i64, i8* }*, { i64, i8* }** %701
  %703 = call i64 @nyx_array_length({ i64, i8* }* %702)
  %704 = icmp sgt i64 %703, 0
  br i1 %704, label %then83, label %else84
then83:
  %705 = getelementptr %Environment, %Environment* %env.ptr, i32 0, i32 1
  %706 = load { i64, i8* }*, { i64, i8* }** %705
  %707 = getelementptr [12 x i8], [12 x i8]* @.slotT71, i32 0, i32 0
  %708 = call i64 @nyx_slot_as_value_checked({ i64, i8* }* %706, i64 0, i8* %707)
  %709 = inttoptr i64 %708 to %Environment*
  %710 = load %Environment, %Environment* %709
  %711 = alloca %Environment
  store %Environment %710, %Environment* %711
  %712 = load %Environment, %Environment* %711
  %713 = load %nyx_string*, %nyx_string** %name.ptr
  %714 = call %Value @env_get(%Environment %712, %nyx_string* %713)
  ret %Value %714
else84:
  br label %merge85
merge85:
  %715 = getelementptr [8 x i8], [8 x i8]* @.str72, i32 0, i32 0
  %716 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str72.c, i8* %715, i64 7)
  %717 = getelementptr [23 x i8], [23 x i8]* @.str73, i32 0, i32 0
  %718 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str73.c, i8* %717, i64 22)
  %719 = load %nyx_string*, %nyx_string** %name.ptr
  %720 = call %nyx_string* @nyx_string_concat(%nyx_string* %718, %nyx_string* %719)
  %721 = getelementptr [21 x i8], [21 x i8]* @.str74, i32 0, i32 0
  %722 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str74.c, i8* %721, i64 20)
  %723 = load %nyx_string*, %nyx_string** %name.ptr
  %724 = call %nyx_string* @nyx_string_concat(%nyx_string* %722, %nyx_string* %723)
  %725 = call i64 @interp_err(%nyx_string* %716, %nyx_string* %720, %nyx_string* %724)
  %726 = call %Value @make_error()
  ret %Value %726
}

define internal i1 @env_set(
%Environment %env.param, %nyx_string* %name.param, %Value %value.param) {
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %value.ptr = alloca %Value
  store %Value %value.param, %Value* %value.ptr
  %727 = getelementptr %Environment, %Environment* %env.ptr, i32 0, i32 0
  %728 = load i8*, i8** %727
  %729 = load %nyx_string*, %nyx_string** %name.ptr
  %730 = call i8* @nyx_string_to_cstr(%nyx_string* %729)
  %731 = call i1 @nyx_map_contains_str(i8* %728, i8* %730)
  br i1 %731, label %then86, label %else87
then86:
  %732 = getelementptr %Environment, %Environment* %env.ptr, i32 0, i32 0
  %733 = load i8*, i8** %732
  %734 = load %nyx_string*, %nyx_string** %name.ptr
  %735 = load %Value, %Value* %value.ptr
  %736 = call i8* @nyx_string_to_cstr(%nyx_string* %734)
  %737 = getelementptr %Value, %Value* null, i32 1
  %738 = ptrtoint %Value* %737 to i64
  %739 = call i8* @GC_malloc(i64 %738)
  %740 = bitcast i8* %739 to %Value*
  store %Value %735, %Value* %740
  %741 = ptrtoint %Value* %740 to i64
  call void @nyx_map_insert_int(i8* %733, i8* %736, i64 %741)
  ret i1 1
else87:
  br label %merge88
merge88:
  %742 = getelementptr %Environment, %Environment* %env.ptr, i32 0, i32 1
  %743 = load { i64, i8* }*, { i64, i8* }** %742
  %744 = call i64 @nyx_array_length({ i64, i8* }* %743)
  %745 = icmp sgt i64 %744, 0
  br i1 %745, label %then89, label %else90
then89:
  %746 = getelementptr %Environment, %Environment* %env.ptr, i32 0, i32 1
  %747 = load { i64, i8* }*, { i64, i8* }** %746
  %748 = getelementptr [12 x i8], [12 x i8]* @.slotT75, i32 0, i32 0
  %749 = call i64 @nyx_slot_as_value_checked({ i64, i8* }* %747, i64 0, i8* %748)
  %750 = inttoptr i64 %749 to %Environment*
  %751 = load %Environment, %Environment* %750
  %752 = alloca %Environment
  store %Environment %751, %Environment* %752
  %753 = load %Environment, %Environment* %752
  %754 = load %nyx_string*, %nyx_string** %name.ptr
  %755 = load %Value, %Value* %value.ptr
  %756 = call i1 @env_set(%Environment %753, %nyx_string* %754, %Value %755)
  ret i1 %756
else90:
  br label %merge91
merge91:
  ret i1 0
}

define internal %Value @eval_expr(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %757 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %758 = call %nyx_string* @astnode_get_type({ i64, i8* }* %757)
  %759 = alloca %nyx_string*
  store %nyx_string* %758, %nyx_string** %759
  %760 = load %nyx_string*, %nyx_string** %759
  %761 = getelementptr [7 x i8], [7 x i8]* @.str76, i32 0, i32 0
  %762 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str76.c, i8* %761, i64 6)
  %763 = call i1 @nyx_string_equals(%nyx_string* %760, %nyx_string* %762)
  br i1 %763, label %then92, label %else93
then92:
  %764 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %765 = call %Value @eval_number({ i64, i8* }* %764)
  ret %Value %765
else93:
  br label %merge94
merge94:
  %766 = load %nyx_string*, %nyx_string** %759
  %767 = getelementptr [8 x i8], [8 x i8]* @.str77, i32 0, i32 0
  %768 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str77.c, i8* %767, i64 7)
  %769 = call i1 @nyx_string_equals(%nyx_string* %766, %nyx_string* %768)
  br i1 %769, label %then95, label %else96
then95:
  %770 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %771 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %770)
  %772 = alloca { i64, i8* }*
  store { i64, i8* }* %771, { i64, i8* }** %772
  %773 = load { i64, i8* }*, { i64, i8* }** %772
  %774 = call i64 @nyx_slot_as_int_checked({ i64, i8* }* %773, i64 0)
  %775 = alloca i64
  store i64 %774, i64* %775
  %776 = load i64, i64* %775
  %777 = call %Value @make_int(i64 %776)
  ret %Value %777
else96:
  br label %merge97
merge97:
  %778 = load %nyx_string*, %nyx_string** %759
  %779 = getelementptr [5 x i8], [5 x i8]* @.str78, i32 0, i32 0
  %780 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str78.c, i8* %779, i64 4)
  %781 = call i1 @nyx_string_equals(%nyx_string* %778, %nyx_string* %780)
  br i1 %781, label %then98, label %else99
then98:
  %782 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %783 = call %Value @eval_bool({ i64, i8* }* %782)
  ret %Value %783
else99:
  br label %merge100
merge100:
  %784 = load %nyx_string*, %nyx_string** %759
  %785 = getelementptr [7 x i8], [7 x i8]* @.str79, i32 0, i32 0
  %786 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str79.c, i8* %785, i64 6)
  %787 = call i1 @nyx_string_equals(%nyx_string* %784, %nyx_string* %786)
  br i1 %787, label %then101, label %else102
then101:
  %788 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %789 = call %Value @eval_string({ i64, i8* }* %788)
  ret %Value %789
else102:
  br label %merge103
merge103:
  %790 = load %nyx_string*, %nyx_string** %759
  %791 = getelementptr [11 x i8], [11 x i8]* @.str80, i32 0, i32 0
  %792 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str80.c, i8* %791, i64 10)
  %793 = call i1 @nyx_string_equals(%nyx_string* %790, %nyx_string* %792)
  br i1 %793, label %then104, label %else105
then104:
  %794 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %795 = load %Environment, %Environment* %env.ptr
  %796 = call %Value @eval_identifier({ i64, i8* }* %794, %Environment %795)
  ret %Value %796
else105:
  br label %merge106
merge106:
  %797 = load %nyx_string*, %nyx_string** %759
  %798 = getelementptr [6 x i8], [6 x i8]* @.str81, i32 0, i32 0
  %799 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str81.c, i8* %798, i64 5)
  %800 = call i1 @nyx_string_equals(%nyx_string* %797, %nyx_string* %799)
  br i1 %800, label %then107, label %else108
then107:
  %801 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %802 = load %Environment, %Environment* %env.ptr
  %803 = call %Value @eval_binop({ i64, i8* }* %801, %Environment %802)
  ret %Value %803
else108:
  br label %merge109
merge109:
  %804 = load %nyx_string*, %nyx_string** %759
  %805 = getelementptr [5 x i8], [5 x i8]* @.str82, i32 0, i32 0
  %806 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str82.c, i8* %805, i64 4)
  %807 = call i1 @nyx_string_equals(%nyx_string* %804, %nyx_string* %806)
  br i1 %807, label %then110, label %else111
then110:
  %808 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %809 = load %Environment, %Environment* %env.ptr
  %810 = call %Value @eval_unop({ i64, i8* }* %808, %Environment %809)
  ret %Value %810
else111:
  br label %merge112
merge112:
  %811 = load %nyx_string*, %nyx_string** %759
  %812 = getelementptr [5 x i8], [5 x i8]* @.str83, i32 0, i32 0
  %813 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str83.c, i8* %812, i64 4)
  %814 = call i1 @nyx_string_equals(%nyx_string* %811, %nyx_string* %813)
  br i1 %814, label %then113, label %else114
then113:
  %815 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %816 = load %Environment, %Environment* %env.ptr
  %817 = call %Value @eval_call({ i64, i8* }* %815, %Environment %816)
  ret %Value %817
else114:
  br label %merge115
merge115:
  %818 = load %nyx_string*, %nyx_string** %759
  %819 = getelementptr [6 x i8], [6 x i8]* @.str84, i32 0, i32 0
  %820 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str84.c, i8* %819, i64 5)
  %821 = call i1 @nyx_string_equals(%nyx_string* %818, %nyx_string* %820)
  br i1 %821, label %then116, label %else117
then116:
  %822 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %823 = load %Environment, %Environment* %env.ptr
  %824 = call %Value @eval_array({ i64, i8* }* %822, %Environment %823)
  ret %Value %824
else117:
  br label %merge118
merge118:
  %825 = load %nyx_string*, %nyx_string** %759
  %826 = getelementptr [6 x i8], [6 x i8]* @.str85, i32 0, i32 0
  %827 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str85.c, i8* %826, i64 5)
  %828 = call i1 @nyx_string_equals(%nyx_string* %825, %nyx_string* %827)
  br i1 %828, label %then119, label %else120
then119:
  %829 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %830 = load %Environment, %Environment* %env.ptr
  %831 = call %Value @eval_index({ i64, i8* }* %829, %Environment %830)
  ret %Value %831
else120:
  br label %merge121
merge121:
  %832 = load %nyx_string*, %nyx_string** %759
  %833 = getelementptr [12 x i8], [12 x i8]* @.str86, i32 0, i32 0
  %834 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str86.c, i8* %833, i64 11)
  %835 = call i1 @nyx_string_equals(%nyx_string* %832, %nyx_string* %834)
  br i1 %835, label %then122, label %else123
then122:
  %836 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %837 = load %Environment, %Environment* %env.ptr
  %838 = call %Value @eval_method_call({ i64, i8* }* %836, %Environment %837)
  ret %Value %838
else123:
  br label %merge124
merge124:
  %839 = getelementptr [8 x i8], [8 x i8]* @.str87, i32 0, i32 0
  %840 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str87.c, i8* %839, i64 7)
  %841 = getelementptr [45 x i8], [45 x i8]* @.str88, i32 0, i32 0
  %842 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str88.c, i8* %841, i64 44)
  %843 = load %nyx_string*, %nyx_string** %759
  %844 = call %nyx_string* @nyx_string_concat(%nyx_string* %842, %nyx_string* %843)
  %845 = getelementptr [46 x i8], [46 x i8]* @.str89, i32 0, i32 0
  %846 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str89.c, i8* %845, i64 45)
  %847 = load %nyx_string*, %nyx_string** %759
  %848 = call %nyx_string* @nyx_string_concat(%nyx_string* %846, %nyx_string* %847)
  %849 = call i64 @interp_err(%nyx_string* %840, %nyx_string* %844, %nyx_string* %848)
  %850 = call %Value @make_error()
  ret %Value %850
}

define internal %Value @eval_number(
{ i64, i8* }* %node.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %851 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %852 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %851)
  %853 = alloca { i64, i8* }*
  store { i64, i8* }* %852, { i64, i8* }** %853
  %854 = load { i64, i8* }*, { i64, i8* }** %853
  %855 = call i64 @nyx_array_get_checked({ i64, i8* }* %854, i64 0, i64 2)
  %856 = inttoptr i64 %855 to %nyx_string*
  %857 = alloca %nyx_string*
  store %nyx_string* %856, %nyx_string** %857
  %858 = load %nyx_string*, %nyx_string** %857
  %859 = getelementptr [2 x i8], [2 x i8]* @.str90, i32 0, i32 0
  %860 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str90.c, i8* %859, i64 1)
  %861 = call i64 @nyx_string_index_of(%nyx_string* %858, %nyx_string* %860)
  %862 = icmp sge i64 %861, 0
  br i1 %862, label %then125, label %else126
then125:
  %863 = load %nyx_string*, %nyx_string** %857
  %864 = call double @nyx_string_to_float(%nyx_string* %863)
  %865 = alloca double
  store double %864, double* %865
  %866 = load double, double* %865
  %867 = call %Value @make_float(double %866)
  ret %Value %867
else126:
  br label %merge127
merge127:
  %868 = load %nyx_string*, %nyx_string** %857
  %869 = getelementptr [20 x i8], [20 x i8]* @.str91, i32 0, i32 0
  %870 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str91.c, i8* %869, i64 19)
  %871 = call i1 @nyx_string_equals(%nyx_string* %868, %nyx_string* %870)
  br i1 %871, label %then128, label %else129
then128:
  %872 = sub i64 0, 9223372036854775807
  %873 = sub i64 %872, 1
  %874 = call %Value @make_int(i64 %873)
  ret %Value %874
else129:
  br label %merge130
merge130:
  %875 = load %nyx_string*, %nyx_string** %857
  %876 = call i64 @nyx_string_to_int_or(%nyx_string* %875, i64 0)
  %877 = alloca i64
  store i64 %876, i64* %877
  %878 = load i64, i64* %877
  %879 = load %nyx_string*, %nyx_string** %857
  %880 = call i64 @nyx_string_to_int_or(%nyx_string* %879, i64 1)
  %881 = icmp ne i64 %878, %880
  br i1 %881, label %then131, label %else132
then131:
  %882 = getelementptr [8 x i8], [8 x i8]* @.str92, i32 0, i32 0
  %883 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str92.c, i8* %882, i64 7)
  %884 = getelementptr [19 x i8], [19 x i8]* @.str93, i32 0, i32 0
  %885 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str93.c, i8* %884, i64 18)
  %886 = load %nyx_string*, %nyx_string** %857
  %887 = call %nyx_string* @nyx_string_concat(%nyx_string* %885, %nyx_string* %886)
  %888 = getelementptr [30 x i8], [30 x i8]* @.str94, i32 0, i32 0
  %889 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str94.c, i8* %888, i64 29)
  %890 = call %nyx_string* @nyx_string_concat(%nyx_string* %887, %nyx_string* %889)
  %891 = getelementptr [17 x i8], [17 x i8]* @.str95, i32 0, i32 0
  %892 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str95.c, i8* %891, i64 16)
  %893 = load %nyx_string*, %nyx_string** %857
  %894 = call %nyx_string* @nyx_string_concat(%nyx_string* %892, %nyx_string* %893)
  %895 = getelementptr [34 x i8], [34 x i8]* @.str96, i32 0, i32 0
  %896 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str96.c, i8* %895, i64 33)
  %897 = call %nyx_string* @nyx_string_concat(%nyx_string* %894, %nyx_string* %896)
  %898 = call i64 @interp_err(%nyx_string* %883, %nyx_string* %890, %nyx_string* %897)
  %899 = call %Value @make_error()
  ret %Value %899
else132:
  br label %merge133
merge133:
  %900 = load i64, i64* %877
  %901 = call %Value @make_int(i64 %900)
  ret %Value %901
}

define internal %Value @eval_bool(
{ i64, i8* }* %node.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %902 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %903 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %902)
  %904 = alloca { i64, i8* }*
  store { i64, i8* }* %903, { i64, i8* }** %904
  %905 = load { i64, i8* }*, { i64, i8* }** %904
  %906 = call i64 @nyx_array_get_checked({ i64, i8* }* %905, i64 0, i64 2)
  %907 = inttoptr i64 %906 to %nyx_string*
  %908 = alloca %nyx_string*
  store %nyx_string* %907, %nyx_string** %908
  %909 = load %nyx_string*, %nyx_string** %908
  %910 = getelementptr [5 x i8], [5 x i8]* @.str97, i32 0, i32 0
  %911 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str97.c, i8* %910, i64 4)
  %912 = call i1 @nyx_string_equals(%nyx_string* %909, %nyx_string* %911)
  %913 = call %Value @make_bool(i1 %912)
  ret %Value %913
}

define internal %Value @eval_string(
{ i64, i8* }* %node.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %914 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %915 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %914)
  %916 = alloca { i64, i8* }*
  store { i64, i8* }* %915, { i64, i8* }** %916
  %917 = load { i64, i8* }*, { i64, i8* }** %916
  %918 = call i64 @nyx_array_get({ i64, i8* }* %917, i64 0)
  %919 = inttoptr i64 %918 to %nyx_string*
  %920 = call %Value @make_string(%nyx_string* %919)
  ret %Value %920
}

define internal %Value @eval_identifier(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %921 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %922 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %921)
  %923 = alloca { i64, i8* }*
  store { i64, i8* }* %922, { i64, i8* }** %923
  %924 = load { i64, i8* }*, { i64, i8* }** %923
  %925 = call i64 @nyx_array_get_checked({ i64, i8* }* %924, i64 0, i64 2)
  %926 = inttoptr i64 %925 to %nyx_string*
  %927 = alloca %nyx_string*
  store %nyx_string* %926, %nyx_string** %927
  %928 = load %Environment, %Environment* %env.ptr
  %929 = load %nyx_string*, %nyx_string** %927
  %930 = call %Value @env_get(%Environment %928, %nyx_string* %929)
  ret %Value %930
}

define internal %Value @eval_binop(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %931 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %932 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %931)
  %933 = alloca { i64, i8* }*
  store { i64, i8* }* %932, { i64, i8* }** %933
  %934 = load { i64, i8* }*, { i64, i8* }** %933
  %935 = call i64 @nyx_array_get_checked({ i64, i8* }* %934, i64 0, i64 2)
  %936 = inttoptr i64 %935 to %nyx_string*
  %937 = alloca %nyx_string*
  store %nyx_string* %936, %nyx_string** %937
  %938 = load { i64, i8* }*, { i64, i8* }** %933
  %939 = call i64 @nyx_array_get({ i64, i8* }* %938, i64 1)
  %940 = inttoptr i64 %939 to { i64, i8* }*
  %941 = alloca { i64, i8* }*
  store { i64, i8* }* %940, { i64, i8* }** %941
  %942 = load { i64, i8* }*, { i64, i8* }** %941
  %943 = load %Environment, %Environment* %env.ptr
  %944 = call %Value @eval_expr({ i64, i8* }* %942, %Environment %943)
  %945 = alloca %Value
  store %Value %944, %Value* %945
  %946 = getelementptr %Value, %Value* %945, i32 0, i32 0
  %947 = load %nyx_string*, %nyx_string** %946
  %948 = getelementptr [6 x i8], [6 x i8]* @.str98, i32 0, i32 0
  %949 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str98.c, i8* %948, i64 5)
  %950 = call i1 @nyx_string_equals(%nyx_string* %947, %nyx_string* %949)
  br i1 %950, label %then134, label %else135
then134:
  %951 = load %Value, %Value* %945
  ret %Value %951
else135:
  br label %merge136
merge136:
  %952 = load { i64, i8* }*, { i64, i8* }** %933
  %953 = call i64 @nyx_array_get({ i64, i8* }* %952, i64 2)
  %954 = inttoptr i64 %953 to { i64, i8* }*
  %955 = alloca { i64, i8* }*
  store { i64, i8* }* %954, { i64, i8* }** %955
  %956 = load { i64, i8* }*, { i64, i8* }** %955
  %957 = load %Environment, %Environment* %env.ptr
  %958 = call %Value @eval_expr({ i64, i8* }* %956, %Environment %957)
  %959 = alloca %Value
  store %Value %958, %Value* %959
  %960 = getelementptr %Value, %Value* %959, i32 0, i32 0
  %961 = load %nyx_string*, %nyx_string** %960
  %962 = getelementptr [6 x i8], [6 x i8]* @.str99, i32 0, i32 0
  %963 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str99.c, i8* %962, i64 5)
  %964 = call i1 @nyx_string_equals(%nyx_string* %961, %nyx_string* %963)
  br i1 %964, label %then137, label %else138
then137:
  %965 = load %Value, %Value* %959
  ret %Value %965
else138:
  br label %merge139
merge139:
  %966 = alloca i1
  store i1 true, i1* %966
  %967 = getelementptr %Value, %Value* %945, i32 0, i32 0
  %968 = load %nyx_string*, %nyx_string** %967
  %969 = getelementptr [6 x i8], [6 x i8]* @.str100, i32 0, i32 0
  %970 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str100.c, i8* %969, i64 5)
  %971 = call i1 @nyx_string_equals(%nyx_string* %968, %nyx_string* %970)
  br i1 %971, label %sc_or_end141, label %sc_or_rhs140
sc_or_rhs140:
  %972 = getelementptr %Value, %Value* %959, i32 0, i32 0
  %973 = load %nyx_string*, %nyx_string** %972
  %974 = getelementptr [6 x i8], [6 x i8]* @.str101, i32 0, i32 0
  %975 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str101.c, i8* %974, i64 5)
  %976 = call i1 @nyx_string_equals(%nyx_string* %973, %nyx_string* %975)
  store i1 %976, i1* %966
  br label %sc_or_end141
sc_or_end141:
  %977 = load i1, i1* %966
  %978 = alloca i1
  store i1 %977, i1* %978
  %979 = load %nyx_string*, %nyx_string** %937
  %980 = getelementptr [5 x i8], [5 x i8]* @.str102, i32 0, i32 0
  %981 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str102.c, i8* %980, i64 4)
  %982 = call i1 @nyx_string_equals(%nyx_string* %979, %nyx_string* %981)
  br i1 %982, label %then142, label %else143
then142:
  %983 = getelementptr %Value, %Value* %945, i32 0, i32 0
  %984 = load %nyx_string*, %nyx_string** %983
  %985 = getelementptr [7 x i8], [7 x i8]* @.str103, i32 0, i32 0
  %986 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str103.c, i8* %985, i64 6)
  %987 = call i1 @nyx_string_equals(%nyx_string* %984, %nyx_string* %986)
  br i1 %987, label %then145, label %else146
then145:
  %988 = load %Value, %Value* %945
  %989 = call %nyx_string* @value_to_string(%Value %988)
  %990 = alloca %nyx_string*
  store %nyx_string* %989, %nyx_string** %990
  %991 = load %Value, %Value* %959
  %992 = call %nyx_string* @value_to_string(%Value %991)
  %993 = alloca %nyx_string*
  store %nyx_string* %992, %nyx_string** %993
  %994 = load %nyx_string*, %nyx_string** %990
  %995 = load %nyx_string*, %nyx_string** %993
  %996 = call %nyx_string* @nyx_string_concat(%nyx_string* %994, %nyx_string* %995)
  %997 = call %Value @make_string(%nyx_string* %996)
  ret %Value %997
else146:
  br label %merge147
merge147:
  %998 = load i1, i1* %978
  br i1 %998, label %then148, label %else149
then148:
  %999 = load %Value, %Value* %945
  %1000 = call double @value_to_float(%Value %999)
  %1001 = load %Value, %Value* %959
  %1002 = call double @value_to_float(%Value %1001)
  %1003 = fadd double %1000, %1002
  %1004 = call %Value @make_float(double %1003)
  ret %Value %1004
else149:
  br label %merge150
merge150:
  %1005 = load %Value, %Value* %945
  %1006 = call i64 @value_to_int(%Value %1005)
  %1007 = load %Value, %Value* %959
  %1008 = call i64 @value_to_int(%Value %1007)
  %1009 = add i64 %1006, %1008
  %1010 = call %Value @make_int(i64 %1009)
  ret %Value %1010
else143:
  br label %merge144
merge144:
  %1011 = load %nyx_string*, %nyx_string** %937
  %1012 = getelementptr [6 x i8], [6 x i8]* @.str104, i32 0, i32 0
  %1013 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str104.c, i8* %1012, i64 5)
  %1014 = call i1 @nyx_string_equals(%nyx_string* %1011, %nyx_string* %1013)
  br i1 %1014, label %then151, label %else152
then151:
  %1015 = load i1, i1* %978
  br i1 %1015, label %then154, label %else155
then154:
  %1016 = load %Value, %Value* %945
  %1017 = call double @value_to_float(%Value %1016)
  %1018 = load %Value, %Value* %959
  %1019 = call double @value_to_float(%Value %1018)
  %1020 = fsub double %1017, %1019
  %1021 = call %Value @make_float(double %1020)
  ret %Value %1021
else155:
  br label %merge156
merge156:
  %1022 = load %Value, %Value* %945
  %1023 = call i64 @value_to_int(%Value %1022)
  %1024 = load %Value, %Value* %959
  %1025 = call i64 @value_to_int(%Value %1024)
  %1026 = sub i64 %1023, %1025
  %1027 = call %Value @make_int(i64 %1026)
  ret %Value %1027
else152:
  br label %merge153
merge153:
  %1028 = load %nyx_string*, %nyx_string** %937
  %1029 = getelementptr [5 x i8], [5 x i8]* @.str105, i32 0, i32 0
  %1030 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str105.c, i8* %1029, i64 4)
  %1031 = call i1 @nyx_string_equals(%nyx_string* %1028, %nyx_string* %1030)
  br i1 %1031, label %then157, label %else158
then157:
  %1032 = load i1, i1* %978
  br i1 %1032, label %then160, label %else161
then160:
  %1033 = load %Value, %Value* %945
  %1034 = call double @value_to_float(%Value %1033)
  %1035 = load %Value, %Value* %959
  %1036 = call double @value_to_float(%Value %1035)
  %1037 = fmul double %1034, %1036
  %1038 = call %Value @make_float(double %1037)
  ret %Value %1038
else161:
  br label %merge162
merge162:
  %1039 = load %Value, %Value* %945
  %1040 = call i64 @value_to_int(%Value %1039)
  %1041 = load %Value, %Value* %959
  %1042 = call i64 @value_to_int(%Value %1041)
  %1043 = mul i64 %1040, %1042
  %1044 = call %Value @make_int(i64 %1043)
  ret %Value %1044
else158:
  br label %merge159
merge159:
  %1045 = load %nyx_string*, %nyx_string** %937
  %1046 = getelementptr [6 x i8], [6 x i8]* @.str106, i32 0, i32 0
  %1047 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str106.c, i8* %1046, i64 5)
  %1048 = call i1 @nyx_string_equals(%nyx_string* %1045, %nyx_string* %1047)
  br i1 %1048, label %then163, label %else164
then163:
  %1049 = load i1, i1* %978
  br i1 %1049, label %then166, label %else167
then166:
  %1050 = load %Value, %Value* %959
  %1051 = call double @value_to_float(%Value %1050)
  %1052 = alloca double
  store double %1051, double* %1052
  %1053 = load %Value, %Value* %945
  %1054 = call double @value_to_float(%Value %1053)
  %1055 = load double, double* %1052
  %1056 = fdiv double %1054, %1055
  %1057 = call %Value @make_float(double %1056)
  ret %Value %1057
else167:
  br label %merge168
merge168:
  %1058 = load %Value, %Value* %959
  %1059 = call i64 @value_to_int(%Value %1058)
  %1060 = alloca i64
  store i64 %1059, i64* %1060
  %1061 = load i64, i64* %1060
  %1062 = icmp ne i64 %1061, 0
  br i1 %1062, label %then169, label %else170
then169:
  %1063 = load %Value, %Value* %945
  %1064 = call i64 @value_to_int(%Value %1063)
  %1065 = load i64, i64* %1060
  %1066 = sdiv i64 %1064, %1065
  %1067 = call %Value @make_int(i64 %1066)
  ret %Value %1067
else170:
  br label %merge171
merge171:
  %1068 = getelementptr [8 x i8], [8 x i8]* @.str107, i32 0, i32 0
  %1069 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str107.c, i8* %1068, i64 7)
  %1070 = getelementptr [19 x i8], [19 x i8]* @.str108, i32 0, i32 0
  %1071 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str108.c, i8* %1070, i64 18)
  %1072 = getelementptr [17 x i8], [17 x i8]* @.str109, i32 0, i32 0
  %1073 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str109.c, i8* %1072, i64 16)
  %1074 = call i64 @interp_err(%nyx_string* %1069, %nyx_string* %1071, %nyx_string* %1073)
  %1075 = call %Value @make_error()
  ret %Value %1075
else164:
  br label %merge165
merge165:
  %1076 = load %nyx_string*, %nyx_string** %937
  %1077 = getelementptr [8 x i8], [8 x i8]* @.str110, i32 0, i32 0
  %1078 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str110.c, i8* %1077, i64 7)
  %1079 = call i1 @nyx_string_equals(%nyx_string* %1076, %nyx_string* %1078)
  br i1 %1079, label %then172, label %else173
then172:
  %1080 = load %Value, %Value* %945
  %1081 = call i64 @value_to_int(%Value %1080)
  %1082 = alloca i64
  store i64 %1081, i64* %1082
  %1083 = load %Value, %Value* %959
  %1084 = call i64 @value_to_int(%Value %1083)
  %1085 = alloca i64
  store i64 %1084, i64* %1085
  %1086 = load i64, i64* %1085
  %1087 = icmp eq i64 %1086, 0
  br i1 %1087, label %then175, label %else176
then175:
  %1088 = getelementptr [8 x i8], [8 x i8]* @.str111, i32 0, i32 0
  %1089 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str111.c, i8* %1088, i64 7)
  %1090 = getelementptr [17 x i8], [17 x i8]* @.str112, i32 0, i32 0
  %1091 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str112.c, i8* %1090, i64 16)
  %1092 = getelementptr [15 x i8], [15 x i8]* @.str113, i32 0, i32 0
  %1093 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str113.c, i8* %1092, i64 14)
  %1094 = call i64 @interp_err(%nyx_string* %1089, %nyx_string* %1091, %nyx_string* %1093)
  %1095 = call %Value @make_error()
  ret %Value %1095
else176:
  br label %merge177
merge177:
  %1096 = load i64, i64* %1082
  %1097 = load i64, i64* %1085
  %1098 = srem i64 %1096, %1097
  %1099 = call %Value @make_int(i64 %1098)
  ret %Value %1099
else173:
  br label %merge174
merge174:
  %1100 = load %nyx_string*, %nyx_string** %937
  %1101 = getelementptr [12 x i8], [12 x i8]* @.str114, i32 0, i32 0
  %1102 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str114.c, i8* %1101, i64 11)
  %1103 = call i1 @nyx_string_equals(%nyx_string* %1100, %nyx_string* %1102)
  br i1 %1103, label %then178, label %else179
then178:
  %1104 = load %Value, %Value* %945
  %1105 = load %Value, %Value* %959
  %1106 = call i1 @values_equal(%Value %1104, %Value %1105)
  %1107 = call %Value @make_bool(i1 %1106)
  ret %Value %1107
else179:
  br label %merge180
merge180:
  %1108 = load %nyx_string*, %nyx_string** %937
  %1109 = getelementptr [10 x i8], [10 x i8]* @.str115, i32 0, i32 0
  %1110 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str115.c, i8* %1109, i64 9)
  %1111 = call i1 @nyx_string_equals(%nyx_string* %1108, %nyx_string* %1110)
  br i1 %1111, label %then181, label %else182
then181:
  %1112 = load %Value, %Value* %945
  %1113 = load %Value, %Value* %959
  %1114 = call i1 @values_equal(%Value %1112, %Value %1113)
  %1115 = xor i1 %1114, true
  %1116 = call %Value @make_bool(i1 %1115)
  ret %Value %1116
else182:
  br label %merge183
merge183:
  %1117 = load %nyx_string*, %nyx_string** %937
  %1118 = getelementptr [5 x i8], [5 x i8]* @.str116, i32 0, i32 0
  %1119 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str116.c, i8* %1118, i64 4)
  %1120 = call i1 @nyx_string_equals(%nyx_string* %1117, %nyx_string* %1119)
  br i1 %1120, label %then184, label %else185
then184:
  %1121 = load i1, i1* %978
  br i1 %1121, label %then187, label %else188
then187:
  %1122 = load %Value, %Value* %945
  %1123 = call double @value_to_float(%Value %1122)
  %1124 = load %Value, %Value* %959
  %1125 = call double @value_to_float(%Value %1124)
  %1126 = fcmp olt double %1123, %1125
  %1127 = call %Value @make_bool(i1 %1126)
  ret %Value %1127
else188:
  br label %merge189
merge189:
  %1128 = load %Value, %Value* %945
  %1129 = call i64 @value_to_int(%Value %1128)
  %1130 = load %Value, %Value* %959
  %1131 = call i64 @value_to_int(%Value %1130)
  %1132 = icmp slt i64 %1129, %1131
  %1133 = call %Value @make_bool(i1 %1132)
  ret %Value %1133
else185:
  br label %merge186
merge186:
  %1134 = load %nyx_string*, %nyx_string** %937
  %1135 = getelementptr [8 x i8], [8 x i8]* @.str117, i32 0, i32 0
  %1136 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str117.c, i8* %1135, i64 7)
  %1137 = call i1 @nyx_string_equals(%nyx_string* %1134, %nyx_string* %1136)
  br i1 %1137, label %then190, label %else191
then190:
  %1138 = load i1, i1* %978
  br i1 %1138, label %then193, label %else194
then193:
  %1139 = load %Value, %Value* %945
  %1140 = call double @value_to_float(%Value %1139)
  %1141 = load %Value, %Value* %959
  %1142 = call double @value_to_float(%Value %1141)
  %1143 = fcmp ogt double %1140, %1142
  %1144 = call %Value @make_bool(i1 %1143)
  ret %Value %1144
else194:
  br label %merge195
merge195:
  %1145 = load %Value, %Value* %945
  %1146 = call i64 @value_to_int(%Value %1145)
  %1147 = load %Value, %Value* %959
  %1148 = call i64 @value_to_int(%Value %1147)
  %1149 = icmp sgt i64 %1146, %1148
  %1150 = call %Value @make_bool(i1 %1149)
  ret %Value %1150
else191:
  br label %merge192
merge192:
  %1151 = load %nyx_string*, %nyx_string** %937
  %1152 = getelementptr [11 x i8], [11 x i8]* @.str118, i32 0, i32 0
  %1153 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str118.c, i8* %1152, i64 10)
  %1154 = call i1 @nyx_string_equals(%nyx_string* %1151, %nyx_string* %1153)
  br i1 %1154, label %then196, label %else197
then196:
  %1155 = load i1, i1* %978
  br i1 %1155, label %then199, label %else200
then199:
  %1156 = load %Value, %Value* %945
  %1157 = call double @value_to_float(%Value %1156)
  %1158 = load %Value, %Value* %959
  %1159 = call double @value_to_float(%Value %1158)
  %1160 = fcmp ole double %1157, %1159
  %1161 = call %Value @make_bool(i1 %1160)
  ret %Value %1161
else200:
  br label %merge201
merge201:
  %1162 = load %Value, %Value* %945
  %1163 = call i64 @value_to_int(%Value %1162)
  %1164 = load %Value, %Value* %959
  %1165 = call i64 @value_to_int(%Value %1164)
  %1166 = icmp sle i64 %1163, %1165
  %1167 = call %Value @make_bool(i1 %1166)
  ret %Value %1167
else197:
  br label %merge198
merge198:
  %1168 = load %nyx_string*, %nyx_string** %937
  %1169 = getelementptr [14 x i8], [14 x i8]* @.str119, i32 0, i32 0
  %1170 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str119.c, i8* %1169, i64 13)
  %1171 = call i1 @nyx_string_equals(%nyx_string* %1168, %nyx_string* %1170)
  br i1 %1171, label %then202, label %else203
then202:
  %1172 = load i1, i1* %978
  br i1 %1172, label %then205, label %else206
then205:
  %1173 = load %Value, %Value* %945
  %1174 = call double @value_to_float(%Value %1173)
  %1175 = load %Value, %Value* %959
  %1176 = call double @value_to_float(%Value %1175)
  %1177 = fcmp oge double %1174, %1176
  %1178 = call %Value @make_bool(i1 %1177)
  ret %Value %1178
else206:
  br label %merge207
merge207:
  %1179 = load %Value, %Value* %945
  %1180 = call i64 @value_to_int(%Value %1179)
  %1181 = load %Value, %Value* %959
  %1182 = call i64 @value_to_int(%Value %1181)
  %1183 = icmp sge i64 %1180, %1182
  %1184 = call %Value @make_bool(i1 %1183)
  ret %Value %1184
else203:
  br label %merge204
merge204:
  %1185 = alloca i1
  store i1 true, i1* %1185
  %1186 = load %nyx_string*, %nyx_string** %937
  %1187 = getelementptr [8 x i8], [8 x i8]* @.str120, i32 0, i32 0
  %1188 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str120.c, i8* %1187, i64 7)
  %1189 = call i1 @nyx_string_equals(%nyx_string* %1186, %nyx_string* %1188)
  br i1 %1189, label %sc_or_end209, label %sc_or_rhs208
sc_or_rhs208:
  %1190 = load %nyx_string*, %nyx_string** %937
  %1191 = getelementptr [4 x i8], [4 x i8]* @.str121, i32 0, i32 0
  %1192 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str121.c, i8* %1191, i64 3)
  %1193 = call i1 @nyx_string_equals(%nyx_string* %1190, %nyx_string* %1192)
  store i1 %1193, i1* %1185
  br label %sc_or_end209
sc_or_end209:
  %1194 = load i1, i1* %1185
  br i1 %1194, label %then210, label %else211
then210:
  %1195 = alloca i1
  store i1 false, i1* %1195
  %1196 = load %Value, %Value* %945
  %1197 = call i1 @is_truthy(%Value %1196)
  br i1 %1197, label %sc_and_rhs213, label %sc_and_end214
sc_and_rhs213:
  %1198 = load %Value, %Value* %959
  %1199 = call i1 @is_truthy(%Value %1198)
  store i1 %1199, i1* %1195
  br label %sc_and_end214
sc_and_end214:
  %1200 = load i1, i1* %1195
  %1201 = call %Value @make_bool(i1 %1200)
  ret %Value %1201
else211:
  br label %merge212
merge212:
  %1202 = alloca i1
  store i1 true, i1* %1202
  %1203 = load %nyx_string*, %nyx_string** %937
  %1204 = getelementptr [6 x i8], [6 x i8]* @.str122, i32 0, i32 0
  %1205 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str122.c, i8* %1204, i64 5)
  %1206 = call i1 @nyx_string_equals(%nyx_string* %1203, %nyx_string* %1205)
  br i1 %1206, label %sc_or_end216, label %sc_or_rhs215
sc_or_rhs215:
  %1207 = load %nyx_string*, %nyx_string** %937
  %1208 = getelementptr [3 x i8], [3 x i8]* @.str123, i32 0, i32 0
  %1209 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str123.c, i8* %1208, i64 2)
  %1210 = call i1 @nyx_string_equals(%nyx_string* %1207, %nyx_string* %1209)
  store i1 %1210, i1* %1202
  br label %sc_or_end216
sc_or_end216:
  %1211 = load i1, i1* %1202
  br i1 %1211, label %then217, label %else218
then217:
  %1212 = alloca i1
  store i1 true, i1* %1212
  %1213 = load %Value, %Value* %945
  %1214 = call i1 @is_truthy(%Value %1213)
  br i1 %1214, label %sc_or_end221, label %sc_or_rhs220
sc_or_rhs220:
  %1215 = load %Value, %Value* %959
  %1216 = call i1 @is_truthy(%Value %1215)
  store i1 %1216, i1* %1212
  br label %sc_or_end221
sc_or_end221:
  %1217 = load i1, i1* %1212
  %1218 = call %Value @make_bool(i1 %1217)
  ret %Value %1218
else218:
  br label %merge219
merge219:
  %1219 = getelementptr [8 x i8], [8 x i8]* @.str124, i32 0, i32 0
  %1220 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str124.c, i8* %1219, i64 7)
  %1221 = getelementptr [24 x i8], [24 x i8]* @.str125, i32 0, i32 0
  %1222 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str125.c, i8* %1221, i64 23)
  %1223 = load %nyx_string*, %nyx_string** %937
  %1224 = call %nyx_string* @nyx_string_concat(%nyx_string* %1222, %nyx_string* %1223)
  %1225 = getelementptr [25 x i8], [25 x i8]* @.str126, i32 0, i32 0
  %1226 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str126.c, i8* %1225, i64 24)
  %1227 = load %nyx_string*, %nyx_string** %937
  %1228 = call %nyx_string* @nyx_string_concat(%nyx_string* %1226, %nyx_string* %1227)
  %1229 = call i64 @interp_err(%nyx_string* %1220, %nyx_string* %1224, %nyx_string* %1228)
  %1230 = call %Value @make_nil()
  ret %Value %1230
}

define internal %Value @eval_unop(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %1231 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1232 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %1231)
  %1233 = alloca { i64, i8* }*
  store { i64, i8* }* %1232, { i64, i8* }** %1233
  %1234 = load { i64, i8* }*, { i64, i8* }** %1233
  %1235 = call i64 @nyx_array_get_checked({ i64, i8* }* %1234, i64 0, i64 2)
  %1236 = inttoptr i64 %1235 to %nyx_string*
  %1237 = alloca %nyx_string*
  store %nyx_string* %1236, %nyx_string** %1237
  %1238 = load { i64, i8* }*, { i64, i8* }** %1233
  %1239 = call i64 @nyx_array_get({ i64, i8* }* %1238, i64 1)
  %1240 = inttoptr i64 %1239 to { i64, i8* }*
  %1241 = load %Environment, %Environment* %env.ptr
  %1242 = call %Value @eval_expr({ i64, i8* }* %1240, %Environment %1241)
  %1243 = alloca %Value
  store %Value %1242, %Value* %1243
  %1244 = getelementptr %Value, %Value* %1243, i32 0, i32 0
  %1245 = load %nyx_string*, %nyx_string** %1244
  %1246 = getelementptr [6 x i8], [6 x i8]* @.str127, i32 0, i32 0
  %1247 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str127.c, i8* %1246, i64 5)
  %1248 = call i1 @nyx_string_equals(%nyx_string* %1245, %nyx_string* %1247)
  br i1 %1248, label %then222, label %else223
then222:
  %1249 = load %Value, %Value* %1243
  ret %Value %1249
else223:
  br label %merge224
merge224:
  %1250 = load %nyx_string*, %nyx_string** %1237
  %1251 = getelementptr [6 x i8], [6 x i8]* @.str128, i32 0, i32 0
  %1252 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str128.c, i8* %1251, i64 5)
  %1253 = call i1 @nyx_string_equals(%nyx_string* %1250, %nyx_string* %1252)
  br i1 %1253, label %then225, label %else226
then225:
  %1254 = load %Value, %Value* %1243
  %1255 = call i64 @value_to_int(%Value %1254)
  %1256 = alloca i64
  store i64 %1255, i64* %1256
  %1257 = load i64, i64* %1256
  %1258 = sub i64 0, %1257
  %1259 = call %Value @make_int(i64 %1258)
  ret %Value %1259
else226:
  br label %merge227
merge227:
  %1260 = load %nyx_string*, %nyx_string** %1237
  %1261 = getelementptr [4 x i8], [4 x i8]* @.str129, i32 0, i32 0
  %1262 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str129.c, i8* %1261, i64 3)
  %1263 = call i1 @nyx_string_equals(%nyx_string* %1260, %nyx_string* %1262)
  br i1 %1263, label %then228, label %else229
then228:
  %1264 = load %Value, %Value* %1243
  %1265 = call i1 @is_truthy(%Value %1264)
  %1266 = alloca i1
  store i1 %1265, i1* %1266
  %1267 = load i1, i1* %1266
  %1268 = xor i1 %1267, true
  %1269 = call %Value @make_bool(i1 %1268)
  ret %Value %1269
else229:
  br label %merge230
merge230:
  %1270 = getelementptr [8 x i8], [8 x i8]* @.str130, i32 0, i32 0
  %1271 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str130.c, i8* %1270, i64 7)
  %1272 = getelementptr [31 x i8], [31 x i8]* @.str131, i32 0, i32 0
  %1273 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str131.c, i8* %1272, i64 30)
  %1274 = load %nyx_string*, %nyx_string** %1237
  %1275 = call %nyx_string* @nyx_string_concat(%nyx_string* %1273, %nyx_string* %1274)
  %1276 = getelementptr [31 x i8], [31 x i8]* @.str132, i32 0, i32 0
  %1277 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str132.c, i8* %1276, i64 30)
  %1278 = load %nyx_string*, %nyx_string** %1237
  %1279 = call %nyx_string* @nyx_string_concat(%nyx_string* %1277, %nyx_string* %1278)
  %1280 = call i64 @interp_err(%nyx_string* %1271, %nyx_string* %1275, %nyx_string* %1279)
  %1281 = call %Value @make_nil()
  ret %Value %1281
}

define internal %Value @eval_array(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %1282 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1283 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %1282)
  %1284 = alloca { i64, i8* }*
  store { i64, i8* }* %1283, { i64, i8* }** %1284
  %1285 = load { i64, i8* }*, { i64, i8* }** %1284
  %1286 = call i64 @nyx_array_get({ i64, i8* }* %1285, i64 0)
  %1287 = inttoptr i64 %1286 to { i64, i8* }*
  %1288 = alloca { i64, i8* }*
  store { i64, i8* }* %1287, { i64, i8* }** %1288
  %1289 = call { i64, i8* }* @nyx_array_new_ptr()
  %1290 = alloca { i64, i8* }*
  store { i64, i8* }* %1289, { i64, i8* }** %1290
  %1291 = alloca i64
  store i64 0, i64* %1291
  %1292 = getelementptr [6 x i8], [6 x i8]* @.str133, i32 0, i32 0
  %1293 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str133.c, i8* %1292, i64 5)
  %1294 = alloca %nyx_string*
  store %nyx_string* %1293, %nyx_string** %1294
  %1295 = call i8* @llvm.stacksave()
  br label %while_cond231
while_cond231:
  %1296 = load i64, i64* %1291
  %1297 = load { i64, i8* }*, { i64, i8* }** %1288
  %1298 = call i64 @nyx_array_length({ i64, i8* }* %1297)
  %1299 = icmp slt i64 %1296, %1298
  br i1 %1299, label %while_body232, label %while_end233
while_body232:
  call void @llvm.stackrestore(i8* %1295)
  %1300 = load { i64, i8* }*, { i64, i8* }** %1288
  %1301 = load i64, i64* %1291
  %1302 = call i64 @nyx_array_get({ i64, i8* }* %1300, i64 %1301)
  %1303 = inttoptr i64 %1302 to { i64, i8* }*
  %1304 = alloca { i64, i8* }*
  store { i64, i8* }* %1303, { i64, i8* }** %1304
  %1305 = load { i64, i8* }*, { i64, i8* }** %1304
  %1306 = load %Environment, %Environment* %env.ptr
  %1307 = call %Value @eval_expr({ i64, i8* }* %1305, %Environment %1306)
  %1308 = alloca %Value
  store %Value %1307, %Value* %1308
  %1309 = getelementptr %Value, %Value* %1308, i32 0, i32 0
  %1310 = load %nyx_string*, %nyx_string** %1309
  %1311 = load %nyx_string*, %nyx_string** %1294
  %1312 = call i1 @nyx_string_equals(%nyx_string* %1310, %nyx_string* %1311)
  br i1 %1312, label %then234, label %else235
then234:
  %1313 = load %Value, %Value* %1308
  ret %Value %1313
else235:
  br label %merge236
merge236:
  %1314 = load { i64, i8* }*, { i64, i8* }** %1290
  %1315 = load %Value, %Value* %1308
  %1316 = getelementptr %Value, %Value* null, i32 1
  %1317 = ptrtoint %Value* %1316 to i64
  %1318 = call i8* @GC_malloc(i64 %1317)
  %1319 = bitcast i8* %1318 to %Value*
  store %Value %1315, %Value* %1319
  %1320 = ptrtoint %Value* %1319 to i64
  call void @nyx_array_push({ i64, i8* }* %1314, i64 %1320)
  %1321 = load i64, i64* %1291
  %1322 = add i64 %1321, 1
  store i64 %1322, i64* %1291
  br label %while_cond231
while_end233:
  %1323 = load { i64, i8* }*, { i64, i8* }** %1290
  %1324 = call %Value @make_array({ i64, i8* }* %1323)
  ret %Value %1324
}

define internal %Value @eval_index(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %1325 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1326 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %1325)
  %1327 = alloca { i64, i8* }*
  store { i64, i8* }* %1326, { i64, i8* }** %1327
  %1328 = load { i64, i8* }*, { i64, i8* }** %1327
  %1329 = call i64 @nyx_array_get({ i64, i8* }* %1328, i64 0)
  %1330 = inttoptr i64 %1329 to { i64, i8* }*
  %1331 = load %Environment, %Environment* %env.ptr
  %1332 = call %Value @eval_expr({ i64, i8* }* %1330, %Environment %1331)
  %1333 = alloca %Value
  store %Value %1332, %Value* %1333
  %1334 = getelementptr %Value, %Value* %1333, i32 0, i32 0
  %1335 = load %nyx_string*, %nyx_string** %1334
  %1336 = getelementptr [6 x i8], [6 x i8]* @.str134, i32 0, i32 0
  %1337 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str134.c, i8* %1336, i64 5)
  %1338 = call i1 @nyx_string_equals(%nyx_string* %1335, %nyx_string* %1337)
  br i1 %1338, label %then237, label %else238
then237:
  %1339 = load %Value, %Value* %1333
  ret %Value %1339
else238:
  br label %merge239
merge239:
  %1340 = load { i64, i8* }*, { i64, i8* }** %1327
  %1341 = call i64 @nyx_array_get({ i64, i8* }* %1340, i64 1)
  %1342 = inttoptr i64 %1341 to { i64, i8* }*
  %1343 = load %Environment, %Environment* %env.ptr
  %1344 = call %Value @eval_expr({ i64, i8* }* %1342, %Environment %1343)
  %1345 = alloca %Value
  store %Value %1344, %Value* %1345
  %1346 = getelementptr %Value, %Value* %1345, i32 0, i32 0
  %1347 = load %nyx_string*, %nyx_string** %1346
  %1348 = getelementptr [6 x i8], [6 x i8]* @.str135, i32 0, i32 0
  %1349 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str135.c, i8* %1348, i64 5)
  %1350 = call i1 @nyx_string_equals(%nyx_string* %1347, %nyx_string* %1349)
  br i1 %1350, label %then240, label %else241
then240:
  %1351 = load %Value, %Value* %1345
  ret %Value %1351
else241:
  br label %merge242
merge242:
  %1352 = getelementptr %Value, %Value* %1333, i32 0, i32 0
  %1353 = load %nyx_string*, %nyx_string** %1352
  %1354 = getelementptr [6 x i8], [6 x i8]* @.str136, i32 0, i32 0
  %1355 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str136.c, i8* %1354, i64 5)
  %1356 = call i1 @nyx_string_equals(%nyx_string* %1353, %nyx_string* %1355)
  %1357 = xor i1 %1356, true
  br i1 %1357, label %then243, label %else244
then243:
  %1358 = getelementptr [8 x i8], [8 x i8]* @.str137, i32 0, i32 0
  %1359 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str137.c, i8* %1358, i64 7)
  %1360 = getelementptr [56 x i8], [56 x i8]* @.str138, i32 0, i32 0
  %1361 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str138.c, i8* %1360, i64 55)
  %1362 = getelementptr %Value, %Value* %1333, i32 0, i32 0
  %1363 = load %nyx_string*, %nyx_string** %1362
  %1364 = call %nyx_string* @nyx_string_concat(%nyx_string* %1361, %nyx_string* %1363)
  %1365 = getelementptr [51 x i8], [51 x i8]* @.str139, i32 0, i32 0
  %1366 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str139.c, i8* %1365, i64 50)
  %1367 = getelementptr %Value, %Value* %1333, i32 0, i32 0
  %1368 = load %nyx_string*, %nyx_string** %1367
  %1369 = call %nyx_string* @nyx_string_concat(%nyx_string* %1366, %nyx_string* %1368)
  %1370 = call i64 @interp_err(%nyx_string* %1359, %nyx_string* %1364, %nyx_string* %1369)
  %1371 = call %Value @make_error()
  ret %Value %1371
else244:
  br label %merge245
merge245:
  %1372 = getelementptr %Value, %Value* %1333, i32 0, i32 5
  %1373 = load { i64, i8* }*, { i64, i8* }** %1372
  %1374 = alloca { i64, i8* }*
  store { i64, i8* }* %1373, { i64, i8* }** %1374
  %1375 = load %Value, %Value* %1345
  %1376 = call i64 @value_to_int(%Value %1375)
  %1377 = alloca i64
  store i64 %1376, i64* %1377
  %1378 = alloca i1
  store i1 false, i1* %1378
  %1379 = load i64, i64* %1377
  %1380 = icmp sge i64 %1379, 0
  br i1 %1380, label %sc_and_rhs246, label %sc_and_end247
sc_and_rhs246:
  %1381 = load i64, i64* %1377
  %1382 = load { i64, i8* }*, { i64, i8* }** %1374
  %1383 = call i64 @nyx_array_length({ i64, i8* }* %1382)
  %1384 = icmp slt i64 %1381, %1383
  store i1 %1384, i1* %1378
  br label %sc_and_end247
sc_and_end247:
  %1385 = load i1, i1* %1378
  br i1 %1385, label %then248, label %else249
then248:
  %1386 = load { i64, i8* }*, { i64, i8* }** %1374
  %1387 = load i64, i64* %1377
  %1388 = getelementptr [6 x i8], [6 x i8]* @.slotT140, i32 0, i32 0
  %1389 = call i64 @nyx_slot_as_value_checked({ i64, i8* }* %1386, i64 %1387, i8* %1388)
  %1390 = inttoptr i64 %1389 to %Value*
  %1391 = load %Value, %Value* %1390
  %1392 = alloca %Value
  store %Value %1391, %Value* %1392
  %1393 = load %Value, %Value* %1392
  ret %Value %1393
else249:
  br label %merge250
merge250:
  %1394 = getelementptr [8 x i8], [8 x i8]* @.str141, i32 0, i32 0
  %1395 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str141.c, i8* %1394, i64 7)
  %1396 = getelementptr [23 x i8], [23 x i8]* @.str142, i32 0, i32 0
  %1397 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str142.c, i8* %1396, i64 22)
  %1398 = getelementptr [19 x i8], [19 x i8]* @.str143, i32 0, i32 0
  %1399 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str143.c, i8* %1398, i64 18)
  %1400 = call i64 @interp_err(%nyx_string* %1395, %nyx_string* %1397, %nyx_string* %1399)
  %1401 = call %Value @make_error()
  ret %Value %1401
}

define internal %Value @eval_stmt(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %1402 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1403 = call %nyx_string* @astnode_get_type({ i64, i8* }* %1402)
  %1404 = alloca %nyx_string*
  store %nyx_string* %1403, %nyx_string** %1404
  %1405 = load %nyx_string*, %nyx_string** %1404
  %1406 = getelementptr [4 x i8], [4 x i8]* @.str144, i32 0, i32 0
  %1407 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str144.c, i8* %1406, i64 3)
  %1408 = call i1 @nyx_string_equals(%nyx_string* %1405, %nyx_string* %1407)
  br i1 %1408, label %then251, label %else252
then251:
  %1409 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1410 = load %Environment, %Environment* %env.ptr
  %1411 = call %Value @eval_let({ i64, i8* }* %1409, %Environment %1410)
  ret %Value %1411
else252:
  br label %merge253
merge253:
  %1412 = load %nyx_string*, %nyx_string** %1404
  %1413 = getelementptr [4 x i8], [4 x i8]* @.str145, i32 0, i32 0
  %1414 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str145.c, i8* %1413, i64 3)
  %1415 = call i1 @nyx_string_equals(%nyx_string* %1412, %nyx_string* %1414)
  br i1 %1415, label %then254, label %else255
then254:
  %1416 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1417 = load %Environment, %Environment* %env.ptr
  %1418 = call %Value @eval_let({ i64, i8* }* %1416, %Environment %1417)
  ret %Value %1418
else255:
  br label %merge256
merge256:
  %1419 = load %nyx_string*, %nyx_string** %1404
  %1420 = getelementptr [7 x i8], [7 x i8]* @.str146, i32 0, i32 0
  %1421 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str146.c, i8* %1420, i64 6)
  %1422 = call i1 @nyx_string_equals(%nyx_string* %1419, %nyx_string* %1421)
  br i1 %1422, label %then257, label %else258
then257:
  %1423 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1424 = load %Environment, %Environment* %env.ptr
  %1425 = call %Value @eval_assign({ i64, i8* }* %1423, %Environment %1424)
  ret %Value %1425
else258:
  br label %merge259
merge259:
  %1426 = load %nyx_string*, %nyx_string** %1404
  %1427 = getelementptr [3 x i8], [3 x i8]* @.str147, i32 0, i32 0
  %1428 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str147.c, i8* %1427, i64 2)
  %1429 = call i1 @nyx_string_equals(%nyx_string* %1426, %nyx_string* %1428)
  br i1 %1429, label %then260, label %else261
then260:
  %1430 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1431 = load %Environment, %Environment* %env.ptr
  %1432 = call %Value @eval_if({ i64, i8* }* %1430, %Environment %1431)
  ret %Value %1432
else261:
  br label %merge262
merge262:
  %1433 = load %nyx_string*, %nyx_string** %1404
  %1434 = getelementptr [6 x i8], [6 x i8]* @.str148, i32 0, i32 0
  %1435 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str148.c, i8* %1434, i64 5)
  %1436 = call i1 @nyx_string_equals(%nyx_string* %1433, %nyx_string* %1435)
  br i1 %1436, label %then263, label %else264
then263:
  %1437 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1438 = load %Environment, %Environment* %env.ptr
  %1439 = call %Value @eval_while({ i64, i8* }* %1437, %Environment %1438)
  ret %Value %1439
else264:
  br label %merge265
merge265:
  %1440 = load %nyx_string*, %nyx_string** %1404
  %1441 = getelementptr [4 x i8], [4 x i8]* @.str149, i32 0, i32 0
  %1442 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str149.c, i8* %1441, i64 3)
  %1443 = call i1 @nyx_string_equals(%nyx_string* %1440, %nyx_string* %1442)
  br i1 %1443, label %then266, label %else267
then266:
  %1444 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1445 = load %Environment, %Environment* %env.ptr
  %1446 = call %Value @eval_for({ i64, i8* }* %1444, %Environment %1445)
  ret %Value %1446
else267:
  br label %merge268
merge268:
  %1447 = load %nyx_string*, %nyx_string** %1404
  %1448 = getelementptr [7 x i8], [7 x i8]* @.str150, i32 0, i32 0
  %1449 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str150.c, i8* %1448, i64 6)
  %1450 = call i1 @nyx_string_equals(%nyx_string* %1447, %nyx_string* %1449)
  br i1 %1450, label %then269, label %else270
then269:
  %1451 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1452 = load %Environment, %Environment* %env.ptr
  %1453 = call %Value @eval_return({ i64, i8* }* %1451, %Environment %1452)
  ret %Value %1453
else270:
  br label %merge271
merge271:
  %1454 = load %nyx_string*, %nyx_string** %1404
  %1455 = getelementptr [6 x i8], [6 x i8]* @.str151, i32 0, i32 0
  %1456 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str151.c, i8* %1455, i64 5)
  %1457 = call i1 @nyx_string_equals(%nyx_string* %1454, %nyx_string* %1456)
  br i1 %1457, label %then272, label %else273
then272:
  %1458 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1459 = load %Environment, %Environment* %env.ptr
  %1460 = call %Value @eval_block({ i64, i8* }* %1458, %Environment %1459)
  ret %Value %1460
else273:
  br label %merge274
merge274:
  %1461 = load %nyx_string*, %nyx_string** %1404
  %1462 = getelementptr [9 x i8], [9 x i8]* @.str152, i32 0, i32 0
  %1463 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str152.c, i8* %1462, i64 8)
  %1464 = call i1 @nyx_string_equals(%nyx_string* %1461, %nyx_string* %1463)
  br i1 %1464, label %then275, label %else276
then275:
  %1465 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1466 = load %Environment, %Environment* %env.ptr
  %1467 = call %Value @eval_function_decl({ i64, i8* }* %1465, %Environment %1466)
  ret %Value %1467
else276:
  br label %merge277
merge277:
  %1468 = load %nyx_string*, %nyx_string** %1404
  %1469 = getelementptr [13 x i8], [13 x i8]* @.str153, i32 0, i32 0
  %1470 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str153.c, i8* %1469, i64 12)
  %1471 = call i1 @nyx_string_equals(%nyx_string* %1468, %nyx_string* %1470)
  br i1 %1471, label %then278, label %else279
then278:
  %1472 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1473 = load %Environment, %Environment* %env.ptr
  %1474 = call %Value @eval_index_assign({ i64, i8* }* %1472, %Environment %1473)
  ret %Value %1474
else279:
  br label %merge280
merge280:
  %1475 = load %nyx_string*, %nyx_string** %1404
  %1476 = getelementptr [13 x i8], [13 x i8]* @.str154, i32 0, i32 0
  %1477 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str154.c, i8* %1476, i64 12)
  %1478 = call i1 @nyx_string_equals(%nyx_string* %1475, %nyx_string* %1477)
  br i1 %1478, label %then281, label %else282
then281:
  %1479 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1480 = load %Environment, %Environment* %env.ptr
  %1481 = call %Value @eval_field_assign({ i64, i8* }* %1479, %Environment %1480)
  ret %Value %1481
else282:
  br label %merge283
merge283:
  %1482 = load %nyx_string*, %nyx_string** %1404
  %1483 = getelementptr [6 x i8], [6 x i8]* @.str155, i32 0, i32 0
  %1484 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str155.c, i8* %1483, i64 5)
  %1485 = call i1 @nyx_string_equals(%nyx_string* %1482, %nyx_string* %1484)
  br i1 %1485, label %then284, label %else285
then284:
  %1486 = getelementptr [6 x i8], [6 x i8]* @.str156, i32 0, i32 0
  %1487 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str156.c, i8* %1486, i64 5)
  %1488 = call %Value @make_control(%nyx_string* %1487)
  ret %Value %1488
else285:
  br label %merge286
merge286:
  %1489 = load %nyx_string*, %nyx_string** %1404
  %1490 = getelementptr [9 x i8], [9 x i8]* @.str157, i32 0, i32 0
  %1491 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str157.c, i8* %1490, i64 8)
  %1492 = call i1 @nyx_string_equals(%nyx_string* %1489, %nyx_string* %1491)
  br i1 %1492, label %then287, label %else288
then287:
  %1493 = getelementptr [9 x i8], [9 x i8]* @.str158, i32 0, i32 0
  %1494 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str158.c, i8* %1493, i64 8)
  %1495 = call %Value @make_control(%nyx_string* %1494)
  ret %Value %1495
else288:
  br label %merge289
merge289:
  %1496 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1497 = load %Environment, %Environment* %env.ptr
  %1498 = call %Value @eval_expr({ i64, i8* }* %1496, %Environment %1497)
  ret %Value %1498
}

define internal %Value @eval_let(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %1499 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1500 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %1499)
  %1501 = alloca { i64, i8* }*
  store { i64, i8* }* %1500, { i64, i8* }** %1501
  %1502 = load { i64, i8* }*, { i64, i8* }** %1501
  %1503 = call i64 @nyx_array_get({ i64, i8* }* %1502, i64 0)
  %1504 = inttoptr i64 %1503 to { i64, i8* }*
  %1505 = alloca { i64, i8* }*
  store { i64, i8* }* %1504, { i64, i8* }** %1505
  %1506 = load { i64, i8* }*, { i64, i8* }** %1505
  %1507 = call %nyx_string* @astnode_get_type({ i64, i8* }* %1506)
  %1508 = alloca %nyx_string*
  store %nyx_string* %1507, %nyx_string** %1508
  %1509 = load { i64, i8* }*, { i64, i8* }** %1501
  %1510 = call i64 @nyx_array_get({ i64, i8* }* %1509, i64 2)
  %1511 = inttoptr i64 %1510 to { i64, i8* }*
  %1512 = alloca { i64, i8* }*
  store { i64, i8* }* %1511, { i64, i8* }** %1512
  %1513 = load { i64, i8* }*, { i64, i8* }** %1512
  %1514 = load %Environment, %Environment* %env.ptr
  %1515 = call %Value @eval_expr({ i64, i8* }* %1513, %Environment %1514)
  %1516 = alloca %Value
  store %Value %1515, %Value* %1516
  %1517 = getelementptr %Value, %Value* %1516, i32 0, i32 0
  %1518 = load %nyx_string*, %nyx_string** %1517
  %1519 = getelementptr [6 x i8], [6 x i8]* @.str159, i32 0, i32 0
  %1520 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str159.c, i8* %1519, i64 5)
  %1521 = call i1 @nyx_string_equals(%nyx_string* %1518, %nyx_string* %1520)
  br i1 %1521, label %then290, label %else291
then290:
  %1522 = load %Value, %Value* %1516
  ret %Value %1522
else291:
  br label %merge292
merge292:
  %1523 = load %Environment, %Environment* %env.ptr
  %1524 = load %nyx_string*, %nyx_string** %1508
  %1525 = load %Value, %Value* %1516
  %1526 = call i64 @env_define(%Environment %1523, %nyx_string* %1524, %Value %1525)
  %1527 = call %Value @make_nil()
  ret %Value %1527
}

define internal %Value @eval_assign(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %1528 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1529 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %1528)
  %1530 = alloca { i64, i8* }*
  store { i64, i8* }* %1529, { i64, i8* }** %1530
  %1531 = load { i64, i8* }*, { i64, i8* }** %1530
  %1532 = call i64 @nyx_array_get({ i64, i8* }* %1531, i64 0)
  %1533 = inttoptr i64 %1532 to { i64, i8* }*
  %1534 = alloca { i64, i8* }*
  store { i64, i8* }* %1533, { i64, i8* }** %1534
  %1535 = load { i64, i8* }*, { i64, i8* }** %1534
  %1536 = call %nyx_string* @astnode_get_type({ i64, i8* }* %1535)
  %1537 = alloca %nyx_string*
  store %nyx_string* %1536, %nyx_string** %1537
  %1538 = load { i64, i8* }*, { i64, i8* }** %1530
  %1539 = call i64 @nyx_array_get({ i64, i8* }* %1538, i64 1)
  %1540 = inttoptr i64 %1539 to { i64, i8* }*
  %1541 = load %Environment, %Environment* %env.ptr
  %1542 = call %Value @eval_expr({ i64, i8* }* %1540, %Environment %1541)
  %1543 = alloca %Value
  store %Value %1542, %Value* %1543
  %1544 = getelementptr %Value, %Value* %1543, i32 0, i32 0
  %1545 = load %nyx_string*, %nyx_string** %1544
  %1546 = getelementptr [6 x i8], [6 x i8]* @.str160, i32 0, i32 0
  %1547 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str160.c, i8* %1546, i64 5)
  %1548 = call i1 @nyx_string_equals(%nyx_string* %1545, %nyx_string* %1547)
  br i1 %1548, label %then293, label %else294
then293:
  %1549 = load %Value, %Value* %1543
  ret %Value %1549
else294:
  br label %merge295
merge295:
  %1550 = load %Environment, %Environment* %env.ptr
  %1551 = load %nyx_string*, %nyx_string** %1537
  %1552 = load %Value, %Value* %1543
  %1553 = call i1 @env_set(%Environment %1550, %nyx_string* %1551, %Value %1552)
  %1554 = xor i1 %1553, true
  br i1 %1554, label %then296, label %else297
then296:
  %1555 = getelementptr [8 x i8], [8 x i8]* @.str161, i32 0, i32 0
  %1556 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str161.c, i8* %1555, i64 7)
  %1557 = getelementptr [23 x i8], [23 x i8]* @.str162, i32 0, i32 0
  %1558 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str162.c, i8* %1557, i64 22)
  %1559 = load %nyx_string*, %nyx_string** %1537
  %1560 = call %nyx_string* @nyx_string_concat(%nyx_string* %1558, %nyx_string* %1559)
  %1561 = getelementptr [21 x i8], [21 x i8]* @.str163, i32 0, i32 0
  %1562 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str163.c, i8* %1561, i64 20)
  %1563 = load %nyx_string*, %nyx_string** %1537
  %1564 = call %nyx_string* @nyx_string_concat(%nyx_string* %1562, %nyx_string* %1563)
  %1565 = call i64 @interp_err(%nyx_string* %1556, %nyx_string* %1560, %nyx_string* %1564)
  %1566 = call %Value @make_error()
  ret %Value %1566
else297:
  br label %merge298
merge298:
  %1567 = call %Value @make_nil()
  ret %Value %1567
}

define internal %Value @eval_index_assign(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %1568 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1569 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %1568)
  %1570 = alloca { i64, i8* }*
  store { i64, i8* }* %1569, { i64, i8* }** %1570
  %1571 = load { i64, i8* }*, { i64, i8* }** %1570
  %1572 = call i64 @nyx_array_get({ i64, i8* }* %1571, i64 0)
  %1573 = inttoptr i64 %1572 to { i64, i8* }*
  %1574 = alloca { i64, i8* }*
  store { i64, i8* }* %1573, { i64, i8* }** %1574
  %1575 = load { i64, i8* }*, { i64, i8* }** %1570
  %1576 = call i64 @nyx_array_get({ i64, i8* }* %1575, i64 1)
  %1577 = inttoptr i64 %1576 to { i64, i8* }*
  %1578 = alloca { i64, i8* }*
  store { i64, i8* }* %1577, { i64, i8* }** %1578
  %1579 = load { i64, i8* }*, { i64, i8* }** %1570
  %1580 = call i64 @nyx_array_get({ i64, i8* }* %1579, i64 2)
  %1581 = inttoptr i64 %1580 to { i64, i8* }*
  %1582 = alloca { i64, i8* }*
  store { i64, i8* }* %1581, { i64, i8* }** %1582
  %1583 = load { i64, i8* }*, { i64, i8* }** %1574
  %1584 = load %Environment, %Environment* %env.ptr
  %1585 = call %Value @eval_expr({ i64, i8* }* %1583, %Environment %1584)
  %1586 = alloca %Value
  store %Value %1585, %Value* %1586
  %1587 = getelementptr %Value, %Value* %1586, i32 0, i32 0
  %1588 = load %nyx_string*, %nyx_string** %1587
  %1589 = getelementptr [6 x i8], [6 x i8]* @.str164, i32 0, i32 0
  %1590 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str164.c, i8* %1589, i64 5)
  %1591 = call i1 @nyx_string_equals(%nyx_string* %1588, %nyx_string* %1590)
  br i1 %1591, label %then299, label %else300
then299:
  %1592 = load %Value, %Value* %1586
  ret %Value %1592
else300:
  br label %merge301
merge301:
  %1593 = load { i64, i8* }*, { i64, i8* }** %1578
  %1594 = load %Environment, %Environment* %env.ptr
  %1595 = call %Value @eval_expr({ i64, i8* }* %1593, %Environment %1594)
  %1596 = alloca %Value
  store %Value %1595, %Value* %1596
  %1597 = getelementptr %Value, %Value* %1596, i32 0, i32 0
  %1598 = load %nyx_string*, %nyx_string** %1597
  %1599 = getelementptr [6 x i8], [6 x i8]* @.str165, i32 0, i32 0
  %1600 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str165.c, i8* %1599, i64 5)
  %1601 = call i1 @nyx_string_equals(%nyx_string* %1598, %nyx_string* %1600)
  br i1 %1601, label %then302, label %else303
then302:
  %1602 = load %Value, %Value* %1596
  ret %Value %1602
else303:
  br label %merge304
merge304:
  %1603 = load { i64, i8* }*, { i64, i8* }** %1582
  %1604 = load %Environment, %Environment* %env.ptr
  %1605 = call %Value @eval_expr({ i64, i8* }* %1603, %Environment %1604)
  %1606 = alloca %Value
  store %Value %1605, %Value* %1606
  %1607 = getelementptr %Value, %Value* %1606, i32 0, i32 0
  %1608 = load %nyx_string*, %nyx_string** %1607
  %1609 = getelementptr [6 x i8], [6 x i8]* @.str166, i32 0, i32 0
  %1610 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str166.c, i8* %1609, i64 5)
  %1611 = call i1 @nyx_string_equals(%nyx_string* %1608, %nyx_string* %1610)
  br i1 %1611, label %then305, label %else306
then305:
  %1612 = load %Value, %Value* %1606
  ret %Value %1612
else306:
  br label %merge307
merge307:
  %1613 = getelementptr %Value, %Value* %1586, i32 0, i32 0
  %1614 = load %nyx_string*, %nyx_string** %1613
  %1615 = getelementptr [6 x i8], [6 x i8]* @.str167, i32 0, i32 0
  %1616 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str167.c, i8* %1615, i64 5)
  %1617 = call i1 @nyx_string_equals(%nyx_string* %1614, %nyx_string* %1616)
  br i1 %1617, label %then308, label %else309
then308:
  %1618 = getelementptr %Value, %Value* %1586, i32 0, i32 5
  %1619 = load { i64, i8* }*, { i64, i8* }** %1618
  %1620 = alloca { i64, i8* }*
  store { i64, i8* }* %1619, { i64, i8* }** %1620
  %1621 = load %Value, %Value* %1596
  %1622 = call i64 @value_to_int(%Value %1621)
  %1623 = alloca i64
  store i64 %1622, i64* %1623
  %1624 = alloca i1
  store i1 false, i1* %1624
  %1625 = load i64, i64* %1623
  %1626 = icmp sge i64 %1625, 0
  br i1 %1626, label %sc_and_rhs311, label %sc_and_end312
sc_and_rhs311:
  %1627 = load i64, i64* %1623
  %1628 = load { i64, i8* }*, { i64, i8* }** %1620
  %1629 = call i64 @nyx_array_length({ i64, i8* }* %1628)
  %1630 = icmp slt i64 %1627, %1629
  store i1 %1630, i1* %1624
  br label %sc_and_end312
sc_and_end312:
  %1631 = load i1, i1* %1624
  br i1 %1631, label %then313, label %else314
then313:
  %1632 = load { i64, i8* }*, { i64, i8* }** %1620
  %1633 = load i64, i64* %1623
  %1634 = load %Value, %Value* %1606
  %1635 = getelementptr %Value, %Value* null, i32 1
  %1636 = ptrtoint %Value* %1635 to i64
  %1637 = call i8* @GC_malloc(i64 %1636)
  %1638 = bitcast i8* %1637 to %Value*
  store %Value %1634, %Value* %1638
  %1639 = ptrtoint %Value* %1638 to i64
  call void @nyx_array_set({ i64, i8* }* %1632, i64 %1633, i64 %1639)
  br label %merge315
else314:
  %1640 = getelementptr [8 x i8], [8 x i8]* @.str168, i32 0, i32 0
  %1641 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str168.c, i8* %1640, i64 7)
  %1642 = getelementptr [38 x i8], [38 x i8]* @.str169, i32 0, i32 0
  %1643 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str169.c, i8* %1642, i64 37)
  %1644 = getelementptr [33 x i8], [33 x i8]* @.str170, i32 0, i32 0
  %1645 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str170.c, i8* %1644, i64 32)
  %1646 = call i64 @interp_err(%nyx_string* %1641, %nyx_string* %1643, %nyx_string* %1645)
  %1647 = call %Value @make_error()
  ret %Value %1647
merge315:
  br label %merge310
else309:
  %1648 = getelementptr [8 x i8], [8 x i8]* @.str171, i32 0, i32 0
  %1649 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str171.c, i8* %1648, i64 7)
  %1650 = getelementptr [38 x i8], [38 x i8]* @.str172, i32 0, i32 0
  %1651 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str172.c, i8* %1650, i64 37)
  %1652 = getelementptr %Value, %Value* %1586, i32 0, i32 0
  %1653 = load %nyx_string*, %nyx_string** %1652
  %1654 = call %nyx_string* @nyx_string_concat(%nyx_string* %1651, %nyx_string* %1653)
  %1655 = getelementptr [35 x i8], [35 x i8]* @.str173, i32 0, i32 0
  %1656 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str173.c, i8* %1655, i64 34)
  %1657 = getelementptr %Value, %Value* %1586, i32 0, i32 0
  %1658 = load %nyx_string*, %nyx_string** %1657
  %1659 = call %nyx_string* @nyx_string_concat(%nyx_string* %1656, %nyx_string* %1658)
  %1660 = call i64 @interp_err(%nyx_string* %1649, %nyx_string* %1654, %nyx_string* %1659)
  %1661 = call %Value @make_error()
  ret %Value %1661
merge310:
  %1662 = call %Value @make_nil()
  ret %Value %1662
}

define internal %Value @eval_field_assign(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %1663 = getelementptr [8 x i8], [8 x i8]* @.str174, i32 0, i32 0
  %1664 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str174.c, i8* %1663, i64 7)
  %1665 = getelementptr [45 x i8], [45 x i8]* @.str175, i32 0, i32 0
  %1666 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str175.c, i8* %1665, i64 44)
  %1667 = getelementptr [46 x i8], [46 x i8]* @.str176, i32 0, i32 0
  %1668 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str176.c, i8* %1667, i64 45)
  %1669 = call i64 @interp_err(%nyx_string* %1664, %nyx_string* %1666, %nyx_string* %1668)
  %1670 = call %Value @make_error()
  ret %Value %1670
}

define internal %Value @eval_if(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %1671 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1672 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %1671)
  %1673 = alloca { i64, i8* }*
  store { i64, i8* }* %1672, { i64, i8* }** %1673
  %1674 = load { i64, i8* }*, { i64, i8* }** %1673
  %1675 = call i64 @nyx_array_get({ i64, i8* }* %1674, i64 0)
  %1676 = inttoptr i64 %1675 to { i64, i8* }*
  %1677 = alloca { i64, i8* }*
  store { i64, i8* }* %1676, { i64, i8* }** %1677
  %1678 = load { i64, i8* }*, { i64, i8* }** %1677
  %1679 = load %Environment, %Environment* %env.ptr
  %1680 = call %Value @eval_expr({ i64, i8* }* %1678, %Environment %1679)
  %1681 = alloca %Value
  store %Value %1680, %Value* %1681
  %1682 = getelementptr %Value, %Value* %1681, i32 0, i32 0
  %1683 = load %nyx_string*, %nyx_string** %1682
  %1684 = getelementptr [6 x i8], [6 x i8]* @.str177, i32 0, i32 0
  %1685 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str177.c, i8* %1684, i64 5)
  %1686 = call i1 @nyx_string_equals(%nyx_string* %1683, %nyx_string* %1685)
  br i1 %1686, label %then316, label %else317
then316:
  %1687 = load %Value, %Value* %1681
  ret %Value %1687
else317:
  br label %merge318
merge318:
  %1688 = load { i64, i8* }*, { i64, i8* }** %1673
  %1689 = call i64 @nyx_array_get({ i64, i8* }* %1688, i64 1)
  %1690 = inttoptr i64 %1689 to { i64, i8* }*
  %1691 = alloca { i64, i8* }*
  store { i64, i8* }* %1690, { i64, i8* }** %1691
  %1692 = load { i64, i8* }*, { i64, i8* }** %1673
  %1693 = call i64 @nyx_array_get({ i64, i8* }* %1692, i64 2)
  %1694 = inttoptr i64 %1693 to { i64, i8* }*
  %1695 = alloca { i64, i8* }*
  store { i64, i8* }* %1694, { i64, i8* }** %1695
  %1696 = load %Value, %Value* %1681
  %1697 = call i1 @is_truthy(%Value %1696)
  br i1 %1697, label %then319, label %else320
then319:
  %1698 = load { i64, i8* }*, { i64, i8* }** %1691
  %1699 = load %Environment, %Environment* %env.ptr
  %1700 = call %Value @eval_stmt({ i64, i8* }* %1698, %Environment %1699)
  ret %Value %1700
else320:
  %1701 = load { i64, i8* }*, { i64, i8* }** %1695
  %1702 = call %nyx_string* @astnode_get_type({ i64, i8* }* %1701)
  %1703 = alloca %nyx_string*
  store %nyx_string* %1702, %nyx_string** %1703
  %1704 = load %nyx_string*, %nyx_string** %1703
  %1705 = getelementptr [6 x i8], [6 x i8]* @.str178, i32 0, i32 0
  %1706 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str178.c, i8* %1705, i64 5)
  %1707 = call i1 @nyx_string_equals(%nyx_string* %1704, %nyx_string* %1706)
  %1708 = xor i1 %1707, true
  br i1 %1708, label %then322, label %else323
then322:
  %1709 = load { i64, i8* }*, { i64, i8* }** %1695
  %1710 = load %Environment, %Environment* %env.ptr
  %1711 = call %Value @eval_stmt({ i64, i8* }* %1709, %Environment %1710)
  ret %Value %1711
else323:
  br label %merge324
merge324:
  br label %merge321
merge321:
  %1712 = call %Value @make_nil()
  ret %Value %1712
}

define internal %Value @eval_while(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %1713 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1714 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %1713)
  %1715 = alloca { i64, i8* }*
  store { i64, i8* }* %1714, { i64, i8* }** %1715
  %1716 = load { i64, i8* }*, { i64, i8* }** %1715
  %1717 = call i64 @nyx_array_get({ i64, i8* }* %1716, i64 0)
  %1718 = inttoptr i64 %1717 to { i64, i8* }*
  %1719 = alloca { i64, i8* }*
  store { i64, i8* }* %1718, { i64, i8* }** %1719
  %1720 = load { i64, i8* }*, { i64, i8* }** %1715
  %1721 = call i64 @nyx_array_get({ i64, i8* }* %1720, i64 1)
  %1722 = inttoptr i64 %1721 to { i64, i8* }*
  %1723 = alloca { i64, i8* }*
  store { i64, i8* }* %1722, { i64, i8* }** %1723
  %1724 = alloca i1
  store i1 1, i1* %1724
  %1725 = getelementptr [6 x i8], [6 x i8]* @.str179, i32 0, i32 0
  %1726 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str179.c, i8* %1725, i64 5)
  %1727 = alloca %nyx_string*
  store %nyx_string* %1726, %nyx_string** %1727
  %1728 = getelementptr [7 x i8], [7 x i8]* @.str180, i32 0, i32 0
  %1729 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str180.c, i8* %1728, i64 6)
  %1730 = alloca %nyx_string*
  store %nyx_string* %1729, %nyx_string** %1730
  %1731 = getelementptr [6 x i8], [6 x i8]* @.str181, i32 0, i32 0
  %1732 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str181.c, i8* %1731, i64 5)
  %1733 = alloca %nyx_string*
  store %nyx_string* %1732, %nyx_string** %1733
  %1734 = call i8* @llvm.stacksave()
  br label %while_cond325
while_cond325:
  %1735 = load i1, i1* %1724
  br i1 %1735, label %while_body326, label %while_end327
while_body326:
  call void @llvm.stackrestore(i8* %1734)
  %1736 = load { i64, i8* }*, { i64, i8* }** %1719
  %1737 = load %Environment, %Environment* %env.ptr
  %1738 = call %Value @eval_expr({ i64, i8* }* %1736, %Environment %1737)
  %1739 = alloca %Value
  store %Value %1738, %Value* %1739
  %1740 = getelementptr %Value, %Value* %1739, i32 0, i32 0
  %1741 = load %nyx_string*, %nyx_string** %1740
  %1742 = load %nyx_string*, %nyx_string** %1727
  %1743 = call i1 @nyx_string_equals(%nyx_string* %1741, %nyx_string* %1742)
  br i1 %1743, label %then328, label %else329
then328:
  %1744 = load %Value, %Value* %1739
  ret %Value %1744
else329:
  br label %merge330
merge330:
  %1745 = load %Value, %Value* %1739
  %1746 = call i1 @is_truthy(%Value %1745)
  br i1 %1746, label %then331, label %else332
then331:
  %1747 = load { i64, i8* }*, { i64, i8* }** %1723
  %1748 = load %Environment, %Environment* %env.ptr
  %1749 = call %Value @eval_stmt({ i64, i8* }* %1747, %Environment %1748)
  %1750 = alloca %Value
  store %Value %1749, %Value* %1750
  %1751 = alloca i1
  store i1 true, i1* %1751
  %1752 = getelementptr %Value, %Value* %1750, i32 0, i32 0
  %1753 = load %nyx_string*, %nyx_string** %1752
  %1754 = load %nyx_string*, %nyx_string** %1727
  %1755 = call i1 @nyx_string_equals(%nyx_string* %1753, %nyx_string* %1754)
  br i1 %1755, label %sc_or_end335, label %sc_or_rhs334
sc_or_rhs334:
  %1756 = getelementptr %Value, %Value* %1750, i32 0, i32 0
  %1757 = load %nyx_string*, %nyx_string** %1756
  %1758 = load %nyx_string*, %nyx_string** %1730
  %1759 = call i1 @nyx_string_equals(%nyx_string* %1757, %nyx_string* %1758)
  store i1 %1759, i1* %1751
  br label %sc_or_end335
sc_or_end335:
  %1760 = load i1, i1* %1751
  br i1 %1760, label %then336, label %else337
then336:
  %1761 = load %Value, %Value* %1750
  ret %Value %1761
else337:
  br label %merge338
merge338:
  %1762 = getelementptr %Value, %Value* %1750, i32 0, i32 0
  %1763 = load %nyx_string*, %nyx_string** %1762
  %1764 = load %nyx_string*, %nyx_string** %1733
  %1765 = call i1 @nyx_string_equals(%nyx_string* %1763, %nyx_string* %1764)
  br i1 %1765, label %then339, label %else340
then339:
  store i1 0, i1* %1724
  br label %merge341
else340:
  br label %merge341
merge341:
  br label %merge333
else332:
  store i1 0, i1* %1724
  br label %merge333
merge333:
  br label %while_cond325
while_end327:
  %1766 = call %Value @make_nil()
  ret %Value %1766
}

define internal %Value @eval_for(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %1767 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1768 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %1767)
  %1769 = alloca { i64, i8* }*
  store { i64, i8* }* %1768, { i64, i8* }** %1769
  %1770 = load { i64, i8* }*, { i64, i8* }** %1769
  %1771 = call i64 @nyx_array_get_checked({ i64, i8* }* %1770, i64 0, i64 2)
  %1772 = inttoptr i64 %1771 to %nyx_string*
  %1773 = alloca %nyx_string*
  store %nyx_string* %1772, %nyx_string** %1773
  %1774 = load { i64, i8* }*, { i64, i8* }** %1769
  %1775 = call i64 @nyx_array_get({ i64, i8* }* %1774, i64 1)
  %1776 = inttoptr i64 %1775 to { i64, i8* }*
  %1777 = alloca { i64, i8* }*
  store { i64, i8* }* %1776, { i64, i8* }** %1777
  %1778 = load { i64, i8* }*, { i64, i8* }** %1769
  %1779 = call i64 @nyx_array_get({ i64, i8* }* %1778, i64 2)
  %1780 = inttoptr i64 %1779 to { i64, i8* }*
  %1781 = alloca { i64, i8* }*
  store { i64, i8* }* %1780, { i64, i8* }** %1781
  %1782 = load %Environment, %Environment* %env.ptr
  %1783 = call %Environment @make_child_env(%Environment %1782)
  %1784 = alloca %Environment
  store %Environment %1783, %Environment* %1784
  %1785 = load { i64, i8* }*, { i64, i8* }** %1777
  %1786 = call %nyx_string* @astnode_get_type({ i64, i8* }* %1785)
  %1787 = getelementptr [6 x i8], [6 x i8]* @.str182, i32 0, i32 0
  %1788 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str182.c, i8* %1787, i64 5)
  %1789 = call i1 @nyx_string_equals(%nyx_string* %1786, %nyx_string* %1788)
  br i1 %1789, label %then342, label %else343
then342:
  %1790 = load { i64, i8* }*, { i64, i8* }** %1777
  %1791 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %1790)
  %1792 = alloca { i64, i8* }*
  store { i64, i8* }* %1791, { i64, i8* }** %1792
  %1793 = load { i64, i8* }*, { i64, i8* }** %1792
  %1794 = call i64 @nyx_array_get({ i64, i8* }* %1793, i64 0)
  %1795 = inttoptr i64 %1794 to { i64, i8* }*
  %1796 = alloca { i64, i8* }*
  store { i64, i8* }* %1795, { i64, i8* }** %1796
  %1797 = load { i64, i8* }*, { i64, i8* }** %1792
  %1798 = call i64 @nyx_array_get({ i64, i8* }* %1797, i64 1)
  %1799 = inttoptr i64 %1798 to { i64, i8* }*
  %1800 = alloca { i64, i8* }*
  store { i64, i8* }* %1799, { i64, i8* }** %1800
  %1801 = load { i64, i8* }*, { i64, i8* }** %1792
  %1802 = call i64 @nyx_array_get_checked({ i64, i8* }* %1801, i64 2, i64 2)
  %1803 = inttoptr i64 %1802 to %nyx_string*
  %1804 = alloca %nyx_string*
  store %nyx_string* %1803, %nyx_string** %1804
  %1805 = load { i64, i8* }*, { i64, i8* }** %1796
  %1806 = load %Environment, %Environment* %env.ptr
  %1807 = call %Value @eval_expr({ i64, i8* }* %1805, %Environment %1806)
  %1808 = alloca %Value
  store %Value %1807, %Value* %1808
  %1809 = getelementptr %Value, %Value* %1808, i32 0, i32 0
  %1810 = load %nyx_string*, %nyx_string** %1809
  %1811 = getelementptr [6 x i8], [6 x i8]* @.str183, i32 0, i32 0
  %1812 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str183.c, i8* %1811, i64 5)
  %1813 = call i1 @nyx_string_equals(%nyx_string* %1810, %nyx_string* %1812)
  br i1 %1813, label %then345, label %else346
then345:
  %1814 = load %Value, %Value* %1808
  ret %Value %1814
else346:
  br label %merge347
merge347:
  %1815 = load { i64, i8* }*, { i64, i8* }** %1800
  %1816 = load %Environment, %Environment* %env.ptr
  %1817 = call %Value @eval_expr({ i64, i8* }* %1815, %Environment %1816)
  %1818 = alloca %Value
  store %Value %1817, %Value* %1818
  %1819 = getelementptr %Value, %Value* %1818, i32 0, i32 0
  %1820 = load %nyx_string*, %nyx_string** %1819
  %1821 = getelementptr [6 x i8], [6 x i8]* @.str184, i32 0, i32 0
  %1822 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str184.c, i8* %1821, i64 5)
  %1823 = call i1 @nyx_string_equals(%nyx_string* %1820, %nyx_string* %1822)
  br i1 %1823, label %then348, label %else349
then348:
  %1824 = load %Value, %Value* %1818
  ret %Value %1824
else349:
  br label %merge350
merge350:
  %1825 = alloca i1
  store i1 true, i1* %1825
  %1826 = getelementptr %Value, %Value* %1808, i32 0, i32 0
  %1827 = load %nyx_string*, %nyx_string** %1826
  %1828 = getelementptr [4 x i8], [4 x i8]* @.str185, i32 0, i32 0
  %1829 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str185.c, i8* %1828, i64 3)
  %1830 = call i1 @nyx_string_equals(%nyx_string* %1827, %nyx_string* %1829)
  %1831 = xor i1 %1830, true
  br i1 %1831, label %sc_or_end352, label %sc_or_rhs351
sc_or_rhs351:
  %1832 = getelementptr %Value, %Value* %1818, i32 0, i32 0
  %1833 = load %nyx_string*, %nyx_string** %1832
  %1834 = getelementptr [4 x i8], [4 x i8]* @.str186, i32 0, i32 0
  %1835 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str186.c, i8* %1834, i64 3)
  %1836 = call i1 @nyx_string_equals(%nyx_string* %1833, %nyx_string* %1835)
  %1837 = xor i1 %1836, true
  store i1 %1837, i1* %1825
  br label %sc_or_end352
sc_or_end352:
  %1838 = load i1, i1* %1825
  br i1 %1838, label %then353, label %else354
then353:
  %1839 = getelementptr [8 x i8], [8 x i8]* @.str187, i32 0, i32 0
  %1840 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str187.c, i8* %1839, i64 7)
  %1841 = getelementptr [28 x i8], [28 x i8]* @.str188, i32 0, i32 0
  %1842 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str188.c, i8* %1841, i64 27)
  %1843 = getelementptr %Value, %Value* %1808, i32 0, i32 0
  %1844 = load %nyx_string*, %nyx_string** %1843
  %1845 = call %nyx_string* @nyx_string_concat(%nyx_string* %1842, %nyx_string* %1844)
  %1846 = getelementptr [3 x i8], [3 x i8]* @.str189, i32 0, i32 0
  %1847 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str189.c, i8* %1846, i64 2)
  %1848 = call %nyx_string* @nyx_string_concat(%nyx_string* %1845, %nyx_string* %1847)
  %1849 = getelementptr %Value, %Value* %1818, i32 0, i32 0
  %1850 = load %nyx_string*, %nyx_string** %1849
  %1851 = call %nyx_string* @nyx_string_concat(%nyx_string* %1848, %nyx_string* %1850)
  %1852 = getelementptr [44 x i8], [44 x i8]* @.str190, i32 0, i32 0
  %1853 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str190.c, i8* %1852, i64 43)
  %1854 = call %nyx_string* @nyx_string_concat(%nyx_string* %1851, %nyx_string* %1853)
  %1855 = getelementptr [27 x i8], [27 x i8]* @.str191, i32 0, i32 0
  %1856 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str191.c, i8* %1855, i64 26)
  %1857 = getelementptr %Value, %Value* %1808, i32 0, i32 0
  %1858 = load %nyx_string*, %nyx_string** %1857
  %1859 = call %nyx_string* @nyx_string_concat(%nyx_string* %1856, %nyx_string* %1858)
  %1860 = getelementptr [3 x i8], [3 x i8]* @.str192, i32 0, i32 0
  %1861 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str192.c, i8* %1860, i64 2)
  %1862 = call %nyx_string* @nyx_string_concat(%nyx_string* %1859, %nyx_string* %1861)
  %1863 = getelementptr %Value, %Value* %1818, i32 0, i32 0
  %1864 = load %nyx_string*, %nyx_string** %1863
  %1865 = call %nyx_string* @nyx_string_concat(%nyx_string* %1862, %nyx_string* %1864)
  %1866 = getelementptr [43 x i8], [43 x i8]* @.str193, i32 0, i32 0
  %1867 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str193.c, i8* %1866, i64 42)
  %1868 = call %nyx_string* @nyx_string_concat(%nyx_string* %1865, %nyx_string* %1867)
  %1869 = call i64 @interp_err(%nyx_string* %1840, %nyx_string* %1854, %nyx_string* %1868)
  %1870 = call %Value @make_error()
  ret %Value %1870
else354:
  br label %merge355
merge355:
  %1871 = getelementptr %Value, %Value* %1818, i32 0, i32 1
  %1872 = load i64, i64* %1871
  %1873 = alloca i64
  store i64 %1872, i64* %1873
  %1874 = getelementptr %Value, %Value* %1808, i32 0, i32 1
  %1875 = load i64, i64* %1874
  %1876 = alloca i64
  store i64 %1875, i64* %1876
  %1877 = getelementptr [6 x i8], [6 x i8]* @.str194, i32 0, i32 0
  %1878 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str194.c, i8* %1877, i64 5)
  %1879 = alloca %nyx_string*
  store %nyx_string* %1878, %nyx_string** %1879
  %1880 = getelementptr [7 x i8], [7 x i8]* @.str195, i32 0, i32 0
  %1881 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str195.c, i8* %1880, i64 6)
  %1882 = alloca %nyx_string*
  store %nyx_string* %1881, %nyx_string** %1882
  %1883 = getelementptr [6 x i8], [6 x i8]* @.str196, i32 0, i32 0
  %1884 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str196.c, i8* %1883, i64 5)
  %1885 = alloca %nyx_string*
  store %nyx_string* %1884, %nyx_string** %1885
  %1886 = call i8* @llvm.stacksave()
  br label %while_cond356
while_cond356:
  %1887 = alloca i1
  store i1 true, i1* %1887
  %1888 = load i64, i64* %1876
  %1889 = load i64, i64* %1873
  %1890 = icmp slt i64 %1888, %1889
  br i1 %1890, label %sc_or_end360, label %sc_or_rhs359
sc_or_rhs359:
  %1891 = alloca i1
  store i1 false, i1* %1891
  %1892 = load %nyx_string*, %nyx_string** %1804
  %1893 = getelementptr [5 x i8], [5 x i8]* @.str197, i32 0, i32 0
  %1894 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str197.c, i8* %1893, i64 4)
  %1895 = call i1 @nyx_string_equals(%nyx_string* %1892, %nyx_string* %1894)
  br i1 %1895, label %sc_and_rhs361, label %sc_and_end362
sc_and_rhs361:
  %1896 = load i64, i64* %1876
  %1897 = load i64, i64* %1873
  %1898 = icmp eq i64 %1896, %1897
  store i1 %1898, i1* %1891
  br label %sc_and_end362
sc_and_end362:
  %1899 = load i1, i1* %1891
  store i1 %1899, i1* %1887
  br label %sc_or_end360
sc_or_end360:
  %1900 = load i1, i1* %1887
  br i1 %1900, label %while_body357, label %while_end358
while_body357:
  call void @llvm.stackrestore(i8* %1886)
  %1901 = load %Environment, %Environment* %1784
  %1902 = load %nyx_string*, %nyx_string** %1773
  %1903 = load i64, i64* %1876
  %1904 = call %Value @make_int(i64 %1903)
  %1905 = call i64 @env_define(%Environment %1901, %nyx_string* %1902, %Value %1904)
  %1906 = load { i64, i8* }*, { i64, i8* }** %1781
  %1907 = load %Environment, %Environment* %1784
  %1908 = call %Value @eval_stmt({ i64, i8* }* %1906, %Environment %1907)
  %1909 = alloca %Value
  store %Value %1908, %Value* %1909
  %1910 = alloca i1
  store i1 true, i1* %1910
  %1911 = getelementptr %Value, %Value* %1909, i32 0, i32 0
  %1912 = load %nyx_string*, %nyx_string** %1911
  %1913 = load %nyx_string*, %nyx_string** %1879
  %1914 = call i1 @nyx_string_equals(%nyx_string* %1912, %nyx_string* %1913)
  br i1 %1914, label %sc_or_end364, label %sc_or_rhs363
sc_or_rhs363:
  %1915 = getelementptr %Value, %Value* %1909, i32 0, i32 0
  %1916 = load %nyx_string*, %nyx_string** %1915
  %1917 = load %nyx_string*, %nyx_string** %1882
  %1918 = call i1 @nyx_string_equals(%nyx_string* %1916, %nyx_string* %1917)
  store i1 %1918, i1* %1910
  br label %sc_or_end364
sc_or_end364:
  %1919 = load i1, i1* %1910
  br i1 %1919, label %then365, label %else366
then365:
  %1920 = load %Value, %Value* %1909
  ret %Value %1920
else366:
  br label %merge367
merge367:
  %1921 = getelementptr %Value, %Value* %1909, i32 0, i32 0
  %1922 = load %nyx_string*, %nyx_string** %1921
  %1923 = load %nyx_string*, %nyx_string** %1885
  %1924 = call i1 @nyx_string_equals(%nyx_string* %1922, %nyx_string* %1923)
  br i1 %1924, label %then368, label %else369
then368:
  %1925 = call %Value @make_nil()
  ret %Value %1925
else369:
  br label %merge370
merge370:
  %1926 = load i64, i64* %1876
  %1927 = add i64 %1926, 1
  store i64 %1927, i64* %1876
  br label %while_cond356
while_end358:
  %1928 = call %Value @make_nil()
  ret %Value %1928
else343:
  br label %merge344
merge344:
  %1929 = load { i64, i8* }*, { i64, i8* }** %1777
  %1930 = load %Environment, %Environment* %env.ptr
  %1931 = call %Value @eval_expr({ i64, i8* }* %1929, %Environment %1930)
  %1932 = alloca %Value
  store %Value %1931, %Value* %1932
  %1933 = getelementptr %Value, %Value* %1932, i32 0, i32 0
  %1934 = load %nyx_string*, %nyx_string** %1933
  %1935 = getelementptr [6 x i8], [6 x i8]* @.str198, i32 0, i32 0
  %1936 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str198.c, i8* %1935, i64 5)
  %1937 = call i1 @nyx_string_equals(%nyx_string* %1934, %nyx_string* %1936)
  br i1 %1937, label %then371, label %else372
then371:
  %1938 = load %Value, %Value* %1932
  ret %Value %1938
else372:
  br label %merge373
merge373:
  %1939 = getelementptr %Value, %Value* %1932, i32 0, i32 0
  %1940 = load %nyx_string*, %nyx_string** %1939
  %1941 = getelementptr [6 x i8], [6 x i8]* @.str199, i32 0, i32 0
  %1942 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str199.c, i8* %1941, i64 5)
  %1943 = call i1 @nyx_string_equals(%nyx_string* %1940, %nyx_string* %1942)
  %1944 = xor i1 %1943, true
  br i1 %1944, label %then374, label %else375
then374:
  %1945 = getelementptr [8 x i8], [8 x i8]* @.str200, i32 0, i32 0
  %1946 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str200.c, i8* %1945, i64 7)
  %1947 = getelementptr [26 x i8], [26 x i8]* @.str201, i32 0, i32 0
  %1948 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str201.c, i8* %1947, i64 25)
  %1949 = getelementptr %Value, %Value* %1932, i32 0, i32 0
  %1950 = load %nyx_string*, %nyx_string** %1949
  %1951 = call %nyx_string* @nyx_string_concat(%nyx_string* %1948, %nyx_string* %1950)
  %1952 = getelementptr [62 x i8], [62 x i8]* @.str202, i32 0, i32 0
  %1953 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str202.c, i8* %1952, i64 61)
  %1954 = call %nyx_string* @nyx_string_concat(%nyx_string* %1951, %nyx_string* %1953)
  %1955 = getelementptr [22 x i8], [22 x i8]* @.str203, i32 0, i32 0
  %1956 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str203.c, i8* %1955, i64 21)
  %1957 = getelementptr %Value, %Value* %1932, i32 0, i32 0
  %1958 = load %nyx_string*, %nyx_string** %1957
  %1959 = call %nyx_string* @nyx_string_concat(%nyx_string* %1956, %nyx_string* %1958)
  %1960 = getelementptr [62 x i8], [62 x i8]* @.str204, i32 0, i32 0
  %1961 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str204.c, i8* %1960, i64 61)
  %1962 = call %nyx_string* @nyx_string_concat(%nyx_string* %1959, %nyx_string* %1961)
  %1963 = call i64 @interp_err(%nyx_string* %1946, %nyx_string* %1954, %nyx_string* %1962)
  %1964 = call %Value @make_error()
  ret %Value %1964
else375:
  br label %merge376
merge376:
  %1965 = getelementptr %Value, %Value* %1932, i32 0, i32 5
  %1966 = load { i64, i8* }*, { i64, i8* }** %1965
  %1967 = alloca { i64, i8* }*
  store { i64, i8* }* %1966, { i64, i8* }** %1967
  %1968 = alloca i64
  store i64 0, i64* %1968
  %1969 = getelementptr [6 x i8], [6 x i8]* @.str205, i32 0, i32 0
  %1970 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str205.c, i8* %1969, i64 5)
  %1971 = alloca %nyx_string*
  store %nyx_string* %1970, %nyx_string** %1971
  %1972 = getelementptr [7 x i8], [7 x i8]* @.str206, i32 0, i32 0
  %1973 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str206.c, i8* %1972, i64 6)
  %1974 = alloca %nyx_string*
  store %nyx_string* %1973, %nyx_string** %1974
  %1975 = getelementptr [6 x i8], [6 x i8]* @.str207, i32 0, i32 0
  %1976 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str207.c, i8* %1975, i64 5)
  %1977 = alloca %nyx_string*
  store %nyx_string* %1976, %nyx_string** %1977
  %1978 = call i8* @llvm.stacksave()
  br label %while_cond377
while_cond377:
  %1979 = load i64, i64* %1968
  %1980 = load { i64, i8* }*, { i64, i8* }** %1967
  %1981 = call i64 @nyx_array_length({ i64, i8* }* %1980)
  %1982 = icmp slt i64 %1979, %1981
  br i1 %1982, label %while_body378, label %while_end379
while_body378:
  call void @llvm.stackrestore(i8* %1978)
  %1983 = load { i64, i8* }*, { i64, i8* }** %1967
  %1984 = load i64, i64* %1968
  %1985 = getelementptr [6 x i8], [6 x i8]* @.slotT208, i32 0, i32 0
  %1986 = call i64 @nyx_slot_as_value_checked({ i64, i8* }* %1983, i64 %1984, i8* %1985)
  %1987 = inttoptr i64 %1986 to %Value*
  %1988 = load %Value, %Value* %1987
  %1989 = alloca %Value
  store %Value %1988, %Value* %1989
  %1990 = load %Environment, %Environment* %1784
  %1991 = load %nyx_string*, %nyx_string** %1773
  %1992 = load %Value, %Value* %1989
  %1993 = call i64 @env_define(%Environment %1990, %nyx_string* %1991, %Value %1992)
  %1994 = load { i64, i8* }*, { i64, i8* }** %1781
  %1995 = load %Environment, %Environment* %1784
  %1996 = call %Value @eval_stmt({ i64, i8* }* %1994, %Environment %1995)
  %1997 = alloca %Value
  store %Value %1996, %Value* %1997
  %1998 = alloca i1
  store i1 true, i1* %1998
  %1999 = getelementptr %Value, %Value* %1997, i32 0, i32 0
  %2000 = load %nyx_string*, %nyx_string** %1999
  %2001 = load %nyx_string*, %nyx_string** %1971
  %2002 = call i1 @nyx_string_equals(%nyx_string* %2000, %nyx_string* %2001)
  br i1 %2002, label %sc_or_end381, label %sc_or_rhs380
sc_or_rhs380:
  %2003 = getelementptr %Value, %Value* %1997, i32 0, i32 0
  %2004 = load %nyx_string*, %nyx_string** %2003
  %2005 = load %nyx_string*, %nyx_string** %1974
  %2006 = call i1 @nyx_string_equals(%nyx_string* %2004, %nyx_string* %2005)
  store i1 %2006, i1* %1998
  br label %sc_or_end381
sc_or_end381:
  %2007 = load i1, i1* %1998
  br i1 %2007, label %then382, label %else383
then382:
  %2008 = load %Value, %Value* %1997
  ret %Value %2008
else383:
  br label %merge384
merge384:
  %2009 = getelementptr %Value, %Value* %1997, i32 0, i32 0
  %2010 = load %nyx_string*, %nyx_string** %2009
  %2011 = load %nyx_string*, %nyx_string** %1977
  %2012 = call i1 @nyx_string_equals(%nyx_string* %2010, %nyx_string* %2011)
  br i1 %2012, label %then385, label %else386
then385:
  %2013 = call %Value @make_nil()
  ret %Value %2013
else386:
  br label %merge387
merge387:
  %2014 = load i64, i64* %1968
  %2015 = add i64 %2014, 1
  store i64 %2015, i64* %1968
  br label %while_cond377
while_end379:
  %2016 = call %Value @make_nil()
  ret %Value %2016
}

define internal %Value @eval_block(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %2017 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %2018 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %2017)
  %2019 = alloca { i64, i8* }*
  store { i64, i8* }* %2018, { i64, i8* }** %2019
  %2020 = load { i64, i8* }*, { i64, i8* }** %2019
  %2021 = call i64 @nyx_array_get({ i64, i8* }* %2020, i64 0)
  %2022 = inttoptr i64 %2021 to { i64, i8* }*
  %2023 = alloca { i64, i8* }*
  store { i64, i8* }* %2022, { i64, i8* }** %2023
  %2024 = load %Environment, %Environment* %env.ptr
  %2025 = call %Environment @make_child_env(%Environment %2024)
  %2026 = alloca %Environment
  store %Environment %2025, %Environment* %2026
  %2027 = call %Value @make_nil()
  %2028 = alloca %Value
  store %Value %2027, %Value* %2028
  %2029 = alloca i64
  store i64 0, i64* %2029
  %2030 = load { i64, i8* }*, { i64, i8* }** %2023
  %2031 = call i64 @nyx_array_length({ i64, i8* }* %2030)
  %2032 = alloca i64
  store i64 %2031, i64* %2032
  %2033 = getelementptr [7 x i8], [7 x i8]* @.str209, i32 0, i32 0
  %2034 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str209.c, i8* %2033, i64 6)
  %2035 = alloca %nyx_string*
  store %nyx_string* %2034, %nyx_string** %2035
  %2036 = getelementptr [6 x i8], [6 x i8]* @.str210, i32 0, i32 0
  %2037 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str210.c, i8* %2036, i64 5)
  %2038 = alloca %nyx_string*
  store %nyx_string* %2037, %nyx_string** %2038
  %2039 = call i8* @llvm.stacksave()
  br label %while_cond388
while_cond388:
  %2040 = load i64, i64* %2029
  %2041 = load i64, i64* %2032
  %2042 = icmp slt i64 %2040, %2041
  br i1 %2042, label %while_body389, label %while_end390
while_body389:
  call void @llvm.stackrestore(i8* %2039)
  %2043 = load { i64, i8* }*, { i64, i8* }** %2023
  %2044 = load i64, i64* %2029
  %2045 = call i64 @nyx_array_get({ i64, i8* }* %2043, i64 %2044)
  %2046 = inttoptr i64 %2045 to { i64, i8* }*
  %2047 = alloca { i64, i8* }*
  store { i64, i8* }* %2046, { i64, i8* }** %2047
  %2048 = load { i64, i8* }*, { i64, i8* }** %2047
  %2049 = load %Environment, %Environment* %2026
  %2050 = call %Value @eval_stmt({ i64, i8* }* %2048, %Environment %2049)
  store %Value %2050, %Value* %2028
  %2051 = getelementptr %Value, %Value* %2028, i32 0, i32 0
  %2052 = load %nyx_string*, %nyx_string** %2051
  %2053 = load %nyx_string*, %nyx_string** %2035
  %2054 = call i1 @nyx_string_equals(%nyx_string* %2052, %nyx_string* %2053)
  br i1 %2054, label %then391, label %else392
then391:
  %2055 = load %Value, %Value* %2028
  ret %Value %2055
else392:
  br label %merge393
merge393:
  %2056 = getelementptr %Value, %Value* %2028, i32 0, i32 0
  %2057 = load %nyx_string*, %nyx_string** %2056
  %2058 = load %nyx_string*, %nyx_string** %2038
  %2059 = call i1 @nyx_string_equals(%nyx_string* %2057, %nyx_string* %2058)
  br i1 %2059, label %then394, label %else395
then394:
  %2060 = load %Value, %Value* %2028
  ret %Value %2060
else395:
  br label %merge396
merge396:
  %2061 = load %Value, %Value* %2028
  %2062 = call i1 @is_loop_control(%Value %2061)
  br i1 %2062, label %then397, label %else398
then397:
  %2063 = load %Value, %Value* %2028
  ret %Value %2063
else398:
  br label %merge399
merge399:
  %2064 = load i64, i64* %2029
  %2065 = add i64 %2064, 1
  store i64 %2065, i64* %2029
  br label %while_cond388
while_end390:
  %2066 = load %Value, %Value* %2028
  ret %Value %2066
}

define internal %Value @eval_function_decl(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %2067 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %2068 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %2067)
  %2069 = alloca { i64, i8* }*
  store { i64, i8* }* %2068, { i64, i8* }** %2069
  %2070 = load { i64, i8* }*, { i64, i8* }** %2069
  %2071 = call i64 @nyx_array_get_checked({ i64, i8* }* %2070, i64 0, i64 2)
  %2072 = inttoptr i64 %2071 to %nyx_string*
  %2073 = alloca %nyx_string*
  store %nyx_string* %2072, %nyx_string** %2073
  %2074 = load { i64, i8* }*, { i64, i8* }** %2069
  %2075 = call i64 @nyx_array_get({ i64, i8* }* %2074, i64 1)
  %2076 = inttoptr i64 %2075 to { i64, i8* }*
  %2077 = alloca { i64, i8* }*
  store { i64, i8* }* %2076, { i64, i8* }** %2077
  %2078 = load { i64, i8* }*, { i64, i8* }** %2069
  %2079 = call i64 @nyx_array_get({ i64, i8* }* %2078, i64 2)
  %2080 = alloca i64
  store i64 %2079, i64* %2080
  %2081 = load { i64, i8* }*, { i64, i8* }** %2069
  %2082 = call i64 @nyx_array_get({ i64, i8* }* %2081, i64 3)
  %2083 = inttoptr i64 %2082 to { i64, i8* }*
  %2084 = alloca { i64, i8* }*
  store { i64, i8* }* %2083, { i64, i8* }** %2084
  %2085 = call { i64, i8* }* @nyx_array_new_ptr()
  %2086 = alloca { i64, i8* }*
  store { i64, i8* }* %2085, { i64, i8* }** %2086
  %2087 = load { i64, i8* }*, { i64, i8* }** %2084
  %2088 = call %nyx_string* @astnode_get_type({ i64, i8* }* %2087)
  %2089 = alloca %nyx_string*
  store %nyx_string* %2088, %nyx_string** %2089
  %2090 = load { i64, i8* }*, { i64, i8* }** %2084
  %2091 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %2090)
  %2092 = alloca { i64, i8* }*
  store { i64, i8* }* %2091, { i64, i8* }** %2092
  %2093 = getelementptr %Environment, %Environment* %env.ptr, i32 0, i32 0
  %2094 = load i8*, i8** %2093
  %2095 = alloca i8*
  store i8* %2094, i8** %2095
  %2096 = getelementptr %Environment, %Environment* %env.ptr, i32 0, i32 1
  %2097 = load { i64, i8* }*, { i64, i8* }** %2096
  %2098 = alloca { i64, i8* }*
  store { i64, i8* }* %2097, { i64, i8* }** %2098
  %2099 = getelementptr %Value, %Value* null, i32 1
  %2100 = ptrtoint %Value* %2099 to i64
  %2101 = call i8* @GC_malloc(i64 %2100)
  %2102 = bitcast i8* %2101 to %Value*
  %2103 = getelementptr [9 x i8], [9 x i8]* @.str211, i32 0, i32 0
  %2104 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str211.c, i8* %2103, i64 8)
  %2105 = getelementptr %Value, %Value* %2102, i32 0, i32 0
  store %nyx_string* %2104, %nyx_string** %2105
  %2106 = getelementptr %Value, %Value* %2102, i32 0, i32 1
  store i64 0, i64* %2106
  %2107 = getelementptr %Value, %Value* %2102, i32 0, i32 2
  store double 0.0, double* %2107
  %2108 = getelementptr %Value, %Value* %2102, i32 0, i32 3
  store i1 0, i1* %2108
  %2109 = getelementptr [1 x i8], [1 x i8]* @.str212, i32 0, i32 0
  %2110 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str212.c, i8* %2109, i64 0)
  %2111 = getelementptr %Value, %Value* %2102, i32 0, i32 4
  store %nyx_string* %2110, %nyx_string** %2111
  %2112 = load { i64, i8* }*, { i64, i8* }** %2086
  %2113 = getelementptr %Value, %Value* %2102, i32 0, i32 5
  store { i64, i8* }* %2112, { i64, i8* }** %2113
  %2114 = load { i64, i8* }*, { i64, i8* }** %2077
  %2115 = getelementptr %Value, %Value* %2102, i32 0, i32 6
  store { i64, i8* }* %2114, { i64, i8* }** %2115
  %2116 = load %nyx_string*, %nyx_string** %2089
  %2117 = getelementptr %Value, %Value* %2102, i32 0, i32 7
  store %nyx_string* %2116, %nyx_string** %2117
  %2118 = load { i64, i8* }*, { i64, i8* }** %2092
  %2119 = getelementptr %Value, %Value* %2102, i32 0, i32 8
  store { i64, i8* }* %2118, { i64, i8* }** %2119
  %2120 = load i8*, i8** %2095
  %2121 = getelementptr %Value, %Value* %2102, i32 0, i32 9
  store i8* %2120, i8** %2121
  %2122 = load { i64, i8* }*, { i64, i8* }** %2098
  %2123 = getelementptr %Value, %Value* %2102, i32 0, i32 10
  store { i64, i8* }* %2122, { i64, i8* }** %2123
  %2124 = load %Value, %Value* %2102
  %2125 = alloca %Value
  store %Value %2124, %Value* %2125
  %2126 = load %Environment, %Environment* %env.ptr
  %2127 = load %nyx_string*, %nyx_string** %2073
  %2128 = load %Value, %Value* %2125
  %2129 = call i64 @env_define(%Environment %2126, %nyx_string* %2127, %Value %2128)
  %2130 = call %Value @make_nil()
  ret %Value %2130
}

define internal %Value @unwrap_return_value(
%Value %return_val.param) {
  %return_val.ptr = alloca %Value
  store %Value %return_val.param, %Value* %return_val.ptr
  %2131 = getelementptr %Value, %Value* %return_val.ptr, i32 0, i32 5
  %2132 = load { i64, i8* }*, { i64, i8* }** %2131
  %2133 = alloca { i64, i8* }*
  store { i64, i8* }* %2132, { i64, i8* }** %2133
  %2134 = load { i64, i8* }*, { i64, i8* }** %2133
  %2135 = getelementptr [6 x i8], [6 x i8]* @.slotT213, i32 0, i32 0
  %2136 = call i64 @nyx_slot_as_value_checked({ i64, i8* }* %2134, i64 0, i8* %2135)
  %2137 = inttoptr i64 %2136 to %Value*
  %2138 = load %Value, %Value* %2137
  %2139 = alloca %Value
  store %Value %2138, %Value* %2139
  %2140 = load %Value, %Value* %2139
  ret %Value %2140
}

define internal %Value @eval_method_call(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %2141 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %2142 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %2141)
  %2143 = alloca { i64, i8* }*
  store { i64, i8* }* %2142, { i64, i8* }** %2143
  %2144 = load { i64, i8* }*, { i64, i8* }** %2143
  %2145 = call i64 @nyx_array_get({ i64, i8* }* %2144, i64 0)
  %2146 = inttoptr i64 %2145 to { i64, i8* }*
  %2147 = alloca { i64, i8* }*
  store { i64, i8* }* %2146, { i64, i8* }** %2147
  %2148 = load { i64, i8* }*, { i64, i8* }** %2143
  %2149 = call i64 @nyx_array_get_checked({ i64, i8* }* %2148, i64 1, i64 2)
  %2150 = inttoptr i64 %2149 to %nyx_string*
  %2151 = alloca %nyx_string*
  store %nyx_string* %2150, %nyx_string** %2151
  %2152 = load { i64, i8* }*, { i64, i8* }** %2143
  %2153 = call i64 @nyx_array_get({ i64, i8* }* %2152, i64 2)
  %2154 = inttoptr i64 %2153 to { i64, i8* }*
  %2155 = alloca { i64, i8* }*
  store { i64, i8* }* %2154, { i64, i8* }** %2155
  %2156 = load { i64, i8* }*, { i64, i8* }** %2147
  %2157 = load %Environment, %Environment* %env.ptr
  %2158 = call %Value @eval_expr({ i64, i8* }* %2156, %Environment %2157)
  %2159 = alloca %Value
  store %Value %2158, %Value* %2159
  %2160 = getelementptr %Value, %Value* %2159, i32 0, i32 0
  %2161 = load %nyx_string*, %nyx_string** %2160
  %2162 = getelementptr [6 x i8], [6 x i8]* @.str214, i32 0, i32 0
  %2163 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str214.c, i8* %2162, i64 5)
  %2164 = call i1 @nyx_string_equals(%nyx_string* %2161, %nyx_string* %2163)
  br i1 %2164, label %then400, label %else401
then400:
  %2165 = load %Value, %Value* %2159
  ret %Value %2165
else401:
  br label %merge402
merge402:
  %2166 = getelementptr %Value, %Value* %2159, i32 0, i32 0
  %2167 = load %nyx_string*, %nyx_string** %2166
  %2168 = getelementptr [7 x i8], [7 x i8]* @.str215, i32 0, i32 0
  %2169 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str215.c, i8* %2168, i64 6)
  %2170 = call i1 @nyx_string_equals(%nyx_string* %2167, %nyx_string* %2169)
  br i1 %2170, label %then403, label %else404
then403:
  %2171 = getelementptr %Value, %Value* %2159, i32 0, i32 4
  %2172 = load %nyx_string*, %nyx_string** %2171
  %2173 = alloca %nyx_string*
  store %nyx_string* %2172, %nyx_string** %2173
  %2174 = load %nyx_string*, %nyx_string** %2151
  %2175 = getelementptr [7 x i8], [7 x i8]* @.str216, i32 0, i32 0
  %2176 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str216.c, i8* %2175, i64 6)
  %2177 = call i1 @nyx_string_equals(%nyx_string* %2174, %nyx_string* %2176)
  br i1 %2177, label %then406, label %else407
then406:
  %2178 = load %nyx_string*, %nyx_string** %2173
  %2179 = call i64 @nyx_string_byte_length(%nyx_string* %2178)
  %2180 = call %Value @make_int(i64 %2179)
  ret %Value %2180
else407:
  br label %merge408
merge408:
  %2181 = load %nyx_string*, %nyx_string** %2151
  %2182 = getelementptr [12 x i8], [12 x i8]* @.str217, i32 0, i32 0
  %2183 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str217.c, i8* %2182, i64 11)
  %2184 = call i1 @nyx_string_equals(%nyx_string* %2181, %nyx_string* %2183)
  br i1 %2184, label %then409, label %else410
then409:
  %2185 = load %nyx_string*, %nyx_string** %2173
  %2186 = call i64 @nyx_string_length_utf8(%nyx_string* %2185)
  %2187 = call %Value @make_int(i64 %2186)
  ret %Value %2187
else410:
  br label %merge411
merge411:
  %2188 = load %nyx_string*, %nyx_string** %2151
  %2189 = getelementptr [12 x i8], [12 x i8]* @.str218, i32 0, i32 0
  %2190 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str218.c, i8* %2189, i64 11)
  %2191 = call i1 @nyx_string_equals(%nyx_string* %2188, %nyx_string* %2190)
  br i1 %2191, label %then412, label %else413
then412:
  %2192 = load %nyx_string*, %nyx_string** %2173
  %2193 = call i64 @nyx_string_byte_length(%nyx_string* %2192)
  %2194 = call %Value @make_int(i64 %2193)
  ret %Value %2194
else413:
  br label %merge414
merge414:
  %2195 = load %nyx_string*, %nyx_string** %2151
  %2196 = getelementptr [8 x i8], [8 x i8]* @.str219, i32 0, i32 0
  %2197 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str219.c, i8* %2196, i64 7)
  %2198 = call i1 @nyx_string_equals(%nyx_string* %2195, %nyx_string* %2197)
  br i1 %2198, label %then415, label %else416
then415:
  %2199 = load %nyx_string*, %nyx_string** %2173
  %2200 = call %nyx_string* @nyx_string_to_upper(%nyx_string* %2199)
  %2201 = call %Value @make_string(%nyx_string* %2200)
  ret %Value %2201
else416:
  br label %merge417
merge417:
  %2202 = load %nyx_string*, %nyx_string** %2151
  %2203 = getelementptr [8 x i8], [8 x i8]* @.str220, i32 0, i32 0
  %2204 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str220.c, i8* %2203, i64 7)
  %2205 = call i1 @nyx_string_equals(%nyx_string* %2202, %nyx_string* %2204)
  br i1 %2205, label %then418, label %else419
then418:
  %2206 = load %nyx_string*, %nyx_string** %2173
  %2207 = call %nyx_string* @nyx_string_to_lower(%nyx_string* %2206)
  %2208 = call %Value @make_string(%nyx_string* %2207)
  ret %Value %2208
else419:
  br label %merge420
merge420:
  %2209 = load %nyx_string*, %nyx_string** %2151
  %2210 = getelementptr [5 x i8], [5 x i8]* @.str221, i32 0, i32 0
  %2211 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str221.c, i8* %2210, i64 4)
  %2212 = call i1 @nyx_string_equals(%nyx_string* %2209, %nyx_string* %2211)
  br i1 %2212, label %then421, label %else422
then421:
  %2213 = load %nyx_string*, %nyx_string** %2173
  %2214 = call %nyx_string* @nyx_string_trim(%nyx_string* %2213)
  %2215 = call %Value @make_string(%nyx_string* %2214)
  ret %Value %2215
else422:
  br label %merge423
merge423:
  %2216 = load %nyx_string*, %nyx_string** %2151
  %2217 = getelementptr [8 x i8], [8 x i8]* @.str222, i32 0, i32 0
  %2218 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str222.c, i8* %2217, i64 7)
  %2219 = call i1 @nyx_string_equals(%nyx_string* %2216, %nyx_string* %2218)
  br i1 %2219, label %then424, label %else425
then424:
  %2220 = load { i64, i8* }*, { i64, i8* }** %2155
  %2221 = call i64 @nyx_array_get({ i64, i8* }* %2220, i64 0)
  %2222 = inttoptr i64 %2221 to { i64, i8* }*
  %2223 = load %Environment, %Environment* %env.ptr
  %2224 = call %Value @eval_expr({ i64, i8* }* %2222, %Environment %2223)
  %2225 = alloca %Value
  store %Value %2224, %Value* %2225
  %2226 = getelementptr %Value, %Value* %2225, i32 0, i32 0
  %2227 = load %nyx_string*, %nyx_string** %2226
  %2228 = getelementptr [6 x i8], [6 x i8]* @.str223, i32 0, i32 0
  %2229 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str223.c, i8* %2228, i64 5)
  %2230 = call i1 @nyx_string_equals(%nyx_string* %2227, %nyx_string* %2229)
  br i1 %2230, label %then427, label %else428
then427:
  %2231 = load %Value, %Value* %2225
  ret %Value %2231
else428:
  br label %merge429
merge429:
  %2232 = load %nyx_string*, %nyx_string** %2173
  %2233 = getelementptr %Value, %Value* %2225, i32 0, i32 4
  %2234 = load %nyx_string*, %nyx_string** %2233
  %2235 = call i64 @nyx_string_index_of(%nyx_string* %2232, %nyx_string* %2234)
  %2236 = call %Value @make_int(i64 %2235)
  ret %Value %2236
else425:
  br label %merge426
merge426:
  %2237 = load %nyx_string*, %nyx_string** %2151
  %2238 = getelementptr [10 x i8], [10 x i8]* @.str224, i32 0, i32 0
  %2239 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str224.c, i8* %2238, i64 9)
  %2240 = call i1 @nyx_string_equals(%nyx_string* %2237, %nyx_string* %2239)
  br i1 %2240, label %then430, label %else431
then430:
  %2241 = load { i64, i8* }*, { i64, i8* }** %2155
  %2242 = call i64 @nyx_array_get({ i64, i8* }* %2241, i64 0)
  %2243 = inttoptr i64 %2242 to { i64, i8* }*
  %2244 = load %Environment, %Environment* %env.ptr
  %2245 = call %Value @eval_expr({ i64, i8* }* %2243, %Environment %2244)
  %2246 = alloca %Value
  store %Value %2245, %Value* %2246
  %2247 = getelementptr %Value, %Value* %2246, i32 0, i32 0
  %2248 = load %nyx_string*, %nyx_string** %2247
  %2249 = getelementptr [6 x i8], [6 x i8]* @.str225, i32 0, i32 0
  %2250 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str225.c, i8* %2249, i64 5)
  %2251 = call i1 @nyx_string_equals(%nyx_string* %2248, %nyx_string* %2250)
  br i1 %2251, label %then433, label %else434
then433:
  %2252 = load %Value, %Value* %2246
  ret %Value %2252
else434:
  br label %merge435
merge435:
  %2253 = load { i64, i8* }*, { i64, i8* }** %2155
  %2254 = call i64 @nyx_array_get({ i64, i8* }* %2253, i64 1)
  %2255 = inttoptr i64 %2254 to { i64, i8* }*
  %2256 = load %Environment, %Environment* %env.ptr
  %2257 = call %Value @eval_expr({ i64, i8* }* %2255, %Environment %2256)
  %2258 = alloca %Value
  store %Value %2257, %Value* %2258
  %2259 = getelementptr %Value, %Value* %2258, i32 0, i32 0
  %2260 = load %nyx_string*, %nyx_string** %2259
  %2261 = getelementptr [6 x i8], [6 x i8]* @.str226, i32 0, i32 0
  %2262 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str226.c, i8* %2261, i64 5)
  %2263 = call i1 @nyx_string_equals(%nyx_string* %2260, %nyx_string* %2262)
  br i1 %2263, label %then436, label %else437
then436:
  %2264 = load %Value, %Value* %2258
  ret %Value %2264
else437:
  br label %merge438
merge438:
  %2265 = load %nyx_string*, %nyx_string** %2173
  %2266 = getelementptr %Value, %Value* %2246, i32 0, i32 1
  %2267 = load i64, i64* %2266
  %2268 = getelementptr %Value, %Value* %2258, i32 0, i32 1
  %2269 = load i64, i64* %2268
  %2270 = call %nyx_string* @nyx_string_substring(%nyx_string* %2265, i64 %2267, i64 %2269)
  %2271 = call %Value @make_string(%nyx_string* %2270)
  ret %Value %2271
else431:
  br label %merge432
merge432:
  %2272 = load %nyx_string*, %nyx_string** %2151
  %2273 = getelementptr [7 x i8], [7 x i8]* @.str227, i32 0, i32 0
  %2274 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str227.c, i8* %2273, i64 6)
  %2275 = call i1 @nyx_string_equals(%nyx_string* %2272, %nyx_string* %2274)
  br i1 %2275, label %then439, label %else440
then439:
  %2276 = load { i64, i8* }*, { i64, i8* }** %2155
  %2277 = call i64 @nyx_array_get({ i64, i8* }* %2276, i64 0)
  %2278 = inttoptr i64 %2277 to { i64, i8* }*
  %2279 = load %Environment, %Environment* %env.ptr
  %2280 = call %Value @eval_expr({ i64, i8* }* %2278, %Environment %2279)
  %2281 = alloca %Value
  store %Value %2280, %Value* %2281
  %2282 = getelementptr %Value, %Value* %2281, i32 0, i32 0
  %2283 = load %nyx_string*, %nyx_string** %2282
  %2284 = getelementptr [6 x i8], [6 x i8]* @.str228, i32 0, i32 0
  %2285 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str228.c, i8* %2284, i64 5)
  %2286 = call i1 @nyx_string_equals(%nyx_string* %2283, %nyx_string* %2285)
  br i1 %2286, label %then442, label %else443
then442:
  %2287 = load %Value, %Value* %2281
  ret %Value %2287
else443:
  br label %merge444
merge444:
  %2288 = load %nyx_string*, %nyx_string** %2173
  %2289 = getelementptr %Value, %Value* %2281, i32 0, i32 1
  %2290 = load i64, i64* %2289
  %2291 = call i8 @nyx_string_char_at(%nyx_string* %2288, i64 %2290)
  %2292 = zext i8 %2291 to i64
  %2293 = trunc i64 %2292 to i8
  %2294 = alloca i8
  store i8 %2293, i8* %2294
  %2295 = load i8, i8* %2294
  %2296 = call %nyx_string* @nyx_string_from_char(i8 %2295)
  %2297 = call %Value @make_string(%nyx_string* %2296)
  ret %Value %2297
else440:
  br label %merge441
merge441:
  %2298 = load %nyx_string*, %nyx_string** %2151
  %2299 = getelementptr [11 x i8], [11 x i8]* @.str229, i32 0, i32 0
  %2300 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str229.c, i8* %2299, i64 10)
  %2301 = call i1 @nyx_string_equals(%nyx_string* %2298, %nyx_string* %2300)
  br i1 %2301, label %then445, label %else446
then445:
  %2302 = load { i64, i8* }*, { i64, i8* }** %2155
  %2303 = call i64 @nyx_array_get({ i64, i8* }* %2302, i64 0)
  %2304 = inttoptr i64 %2303 to { i64, i8* }*
  %2305 = load %Environment, %Environment* %env.ptr
  %2306 = call %Value @eval_expr({ i64, i8* }* %2304, %Environment %2305)
  %2307 = alloca %Value
  store %Value %2306, %Value* %2307
  %2308 = getelementptr %Value, %Value* %2307, i32 0, i32 0
  %2309 = load %nyx_string*, %nyx_string** %2308
  %2310 = getelementptr [6 x i8], [6 x i8]* @.str230, i32 0, i32 0
  %2311 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str230.c, i8* %2310, i64 5)
  %2312 = call i1 @nyx_string_equals(%nyx_string* %2309, %nyx_string* %2311)
  br i1 %2312, label %then448, label %else449
then448:
  %2313 = load %Value, %Value* %2307
  ret %Value %2313
else449:
  br label %merge450
merge450:
  %2314 = load %nyx_string*, %nyx_string** %2173
  %2315 = getelementptr %Value, %Value* %2307, i32 0, i32 4
  %2316 = load %nyx_string*, %nyx_string** %2315
  %2317 = call i1 @nyx_string_starts_with(%nyx_string* %2314, %nyx_string* %2316)
  %2318 = call %Value @make_bool(i1 %2317)
  ret %Value %2318
else446:
  br label %merge447
merge447:
  %2319 = load %nyx_string*, %nyx_string** %2151
  %2320 = getelementptr [9 x i8], [9 x i8]* @.str231, i32 0, i32 0
  %2321 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str231.c, i8* %2320, i64 8)
  %2322 = call i1 @nyx_string_equals(%nyx_string* %2319, %nyx_string* %2321)
  br i1 %2322, label %then451, label %else452
then451:
  %2323 = load { i64, i8* }*, { i64, i8* }** %2155
  %2324 = call i64 @nyx_array_get({ i64, i8* }* %2323, i64 0)
  %2325 = inttoptr i64 %2324 to { i64, i8* }*
  %2326 = load %Environment, %Environment* %env.ptr
  %2327 = call %Value @eval_expr({ i64, i8* }* %2325, %Environment %2326)
  %2328 = alloca %Value
  store %Value %2327, %Value* %2328
  %2329 = getelementptr %Value, %Value* %2328, i32 0, i32 0
  %2330 = load %nyx_string*, %nyx_string** %2329
  %2331 = getelementptr [6 x i8], [6 x i8]* @.str232, i32 0, i32 0
  %2332 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str232.c, i8* %2331, i64 5)
  %2333 = call i1 @nyx_string_equals(%nyx_string* %2330, %nyx_string* %2332)
  br i1 %2333, label %then454, label %else455
then454:
  %2334 = load %Value, %Value* %2328
  ret %Value %2334
else455:
  br label %merge456
merge456:
  %2335 = load %nyx_string*, %nyx_string** %2173
  %2336 = getelementptr %Value, %Value* %2328, i32 0, i32 4
  %2337 = load %nyx_string*, %nyx_string** %2336
  %2338 = call i1 @nyx_string_ends_with(%nyx_string* %2335, %nyx_string* %2337)
  %2339 = call %Value @make_bool(i1 %2338)
  ret %Value %2339
else452:
  br label %merge453
merge453:
  %2340 = load %nyx_string*, %nyx_string** %2151
  %2341 = getelementptr [8 x i8], [8 x i8]* @.str233, i32 0, i32 0
  %2342 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str233.c, i8* %2341, i64 7)
  %2343 = call i1 @nyx_string_equals(%nyx_string* %2340, %nyx_string* %2342)
  br i1 %2343, label %then457, label %else458
then457:
  %2344 = load { i64, i8* }*, { i64, i8* }** %2155
  %2345 = call i64 @nyx_array_get({ i64, i8* }* %2344, i64 0)
  %2346 = inttoptr i64 %2345 to { i64, i8* }*
  %2347 = load %Environment, %Environment* %env.ptr
  %2348 = call %Value @eval_expr({ i64, i8* }* %2346, %Environment %2347)
  %2349 = alloca %Value
  store %Value %2348, %Value* %2349
  %2350 = getelementptr %Value, %Value* %2349, i32 0, i32 0
  %2351 = load %nyx_string*, %nyx_string** %2350
  %2352 = getelementptr [6 x i8], [6 x i8]* @.str234, i32 0, i32 0
  %2353 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str234.c, i8* %2352, i64 5)
  %2354 = call i1 @nyx_string_equals(%nyx_string* %2351, %nyx_string* %2353)
  br i1 %2354, label %then460, label %else461
then460:
  %2355 = load %Value, %Value* %2349
  ret %Value %2355
else461:
  br label %merge462
merge462:
  %2356 = load { i64, i8* }*, { i64, i8* }** %2155
  %2357 = call i64 @nyx_array_get({ i64, i8* }* %2356, i64 1)
  %2358 = inttoptr i64 %2357 to { i64, i8* }*
  %2359 = load %Environment, %Environment* %env.ptr
  %2360 = call %Value @eval_expr({ i64, i8* }* %2358, %Environment %2359)
  %2361 = alloca %Value
  store %Value %2360, %Value* %2361
  %2362 = getelementptr %Value, %Value* %2361, i32 0, i32 0
  %2363 = load %nyx_string*, %nyx_string** %2362
  %2364 = getelementptr [6 x i8], [6 x i8]* @.str235, i32 0, i32 0
  %2365 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str235.c, i8* %2364, i64 5)
  %2366 = call i1 @nyx_string_equals(%nyx_string* %2363, %nyx_string* %2365)
  br i1 %2366, label %then463, label %else464
then463:
  %2367 = load %Value, %Value* %2361
  ret %Value %2367
else464:
  br label %merge465
merge465:
  %2368 = load %nyx_string*, %nyx_string** %2173
  %2369 = getelementptr %Value, %Value* %2349, i32 0, i32 4
  %2370 = load %nyx_string*, %nyx_string** %2369
  %2371 = getelementptr %Value, %Value* %2361, i32 0, i32 4
  %2372 = load %nyx_string*, %nyx_string** %2371
  %2373 = call %nyx_string* @nyx_string_replace(%nyx_string* %2368, %nyx_string* %2370, %nyx_string* %2372)
  %2374 = call %Value @make_string(%nyx_string* %2373)
  ret %Value %2374
else458:
  br label %merge459
merge459:
  br label %merge405
else404:
  br label %merge405
merge405:
  %2375 = getelementptr %Value, %Value* %2159, i32 0, i32 0
  %2376 = load %nyx_string*, %nyx_string** %2375
  %2377 = getelementptr [6 x i8], [6 x i8]* @.str236, i32 0, i32 0
  %2378 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str236.c, i8* %2377, i64 5)
  %2379 = call i1 @nyx_string_equals(%nyx_string* %2376, %nyx_string* %2378)
  br i1 %2379, label %then466, label %else467
then466:
  %2380 = getelementptr %Value, %Value* %2159, i32 0, i32 5
  %2381 = load { i64, i8* }*, { i64, i8* }** %2380
  %2382 = alloca { i64, i8* }*
  store { i64, i8* }* %2381, { i64, i8* }** %2382
  %2383 = load %nyx_string*, %nyx_string** %2151
  %2384 = getelementptr [7 x i8], [7 x i8]* @.str237, i32 0, i32 0
  %2385 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str237.c, i8* %2384, i64 6)
  %2386 = call i1 @nyx_string_equals(%nyx_string* %2383, %nyx_string* %2385)
  br i1 %2386, label %then469, label %else470
then469:
  %2387 = load { i64, i8* }*, { i64, i8* }** %2382
  %2388 = call i64 @nyx_array_length({ i64, i8* }* %2387)
  %2389 = call %Value @make_int(i64 %2388)
  ret %Value %2389
else470:
  br label %merge471
merge471:
  %2390 = load %nyx_string*, %nyx_string** %2151
  %2391 = getelementptr [5 x i8], [5 x i8]* @.str238, i32 0, i32 0
  %2392 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str238.c, i8* %2391, i64 4)
  %2393 = call i1 @nyx_string_equals(%nyx_string* %2390, %nyx_string* %2392)
  br i1 %2393, label %then472, label %else473
then472:
  %2394 = load { i64, i8* }*, { i64, i8* }** %2155
  %2395 = call i64 @nyx_array_get({ i64, i8* }* %2394, i64 0)
  %2396 = inttoptr i64 %2395 to { i64, i8* }*
  %2397 = load %Environment, %Environment* %env.ptr
  %2398 = call %Value @eval_expr({ i64, i8* }* %2396, %Environment %2397)
  %2399 = alloca %Value
  store %Value %2398, %Value* %2399
  %2400 = getelementptr %Value, %Value* %2399, i32 0, i32 0
  %2401 = load %nyx_string*, %nyx_string** %2400
  %2402 = getelementptr [6 x i8], [6 x i8]* @.str239, i32 0, i32 0
  %2403 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str239.c, i8* %2402, i64 5)
  %2404 = call i1 @nyx_string_equals(%nyx_string* %2401, %nyx_string* %2403)
  br i1 %2404, label %then475, label %else476
then475:
  %2405 = load %Value, %Value* %2399
  ret %Value %2405
else476:
  br label %merge477
merge477:
  %2406 = load { i64, i8* }*, { i64, i8* }** %2382
  %2407 = load %Value, %Value* %2399
  %2408 = getelementptr %Value, %Value* null, i32 1
  %2409 = ptrtoint %Value* %2408 to i64
  %2410 = call i8* @GC_malloc(i64 %2409)
  %2411 = bitcast i8* %2410 to %Value*
  store %Value %2407, %Value* %2411
  %2412 = ptrtoint %Value* %2411 to i64
  call void @nyx_array_push({ i64, i8* }* %2406, i64 %2412)
  %2413 = call %Value @make_nil()
  ret %Value %2413
else473:
  br label %merge474
merge474:
  %2414 = load %nyx_string*, %nyx_string** %2151
  %2415 = getelementptr [4 x i8], [4 x i8]* @.str240, i32 0, i32 0
  %2416 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str240.c, i8* %2415, i64 3)
  %2417 = call i1 @nyx_string_equals(%nyx_string* %2414, %nyx_string* %2416)
  br i1 %2417, label %then478, label %else479
then478:
  %2418 = load { i64, i8* }*, { i64, i8* }** %2382
  %2419 = call i64 @nyx_array_pop({ i64, i8* }* %2418)
  %2420 = call %Value @make_nil()
  ret %Value %2420
else479:
  br label %merge480
merge480:
  br label %merge468
else467:
  br label %merge468
merge468:
  %2421 = getelementptr [8 x i8], [8 x i8]* @.str241, i32 0, i32 0
  %2422 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str241.c, i8* %2421, i64 7)
  %2423 = getelementptr [39 x i8], [39 x i8]* @.str242, i32 0, i32 0
  %2424 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str242.c, i8* %2423, i64 38)
  %2425 = load %nyx_string*, %nyx_string** %2151
  %2426 = call %nyx_string* @nyx_string_concat(%nyx_string* %2424, %nyx_string* %2425)
  %2427 = getelementptr [17 x i8], [17 x i8]* @.str243, i32 0, i32 0
  %2428 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str243.c, i8* %2427, i64 16)
  %2429 = call %nyx_string* @nyx_string_concat(%nyx_string* %2426, %nyx_string* %2428)
  %2430 = getelementptr %Value, %Value* %2159, i32 0, i32 0
  %2431 = load %nyx_string*, %nyx_string** %2430
  %2432 = call %nyx_string* @nyx_string_concat(%nyx_string* %2429, %nyx_string* %2431)
  %2433 = getelementptr [42 x i8], [42 x i8]* @.str244, i32 0, i32 0
  %2434 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str244.c, i8* %2433, i64 41)
  %2435 = load %nyx_string*, %nyx_string** %2151
  %2436 = call %nyx_string* @nyx_string_concat(%nyx_string* %2434, %nyx_string* %2435)
  %2437 = getelementptr [11 x i8], [11 x i8]* @.str245, i32 0, i32 0
  %2438 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str245.c, i8* %2437, i64 10)
  %2439 = call %nyx_string* @nyx_string_concat(%nyx_string* %2436, %nyx_string* %2438)
  %2440 = getelementptr %Value, %Value* %2159, i32 0, i32 0
  %2441 = load %nyx_string*, %nyx_string** %2440
  %2442 = call %nyx_string* @nyx_string_concat(%nyx_string* %2439, %nyx_string* %2441)
  %2443 = call i64 @interp_err(%nyx_string* %2422, %nyx_string* %2432, %nyx_string* %2442)
  %2444 = getelementptr [9 x i8], [9 x i8]* @.str246, i32 0, i32 0
  %2445 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str246.c, i8* %2444, i64 8)
  %2446 = call i8* @nyx_string_to_cstr(%nyx_string* %2445)
  %2447 = call %nyx_string* @nyx_getenv(i8* %2446)
  %2448 = alloca %nyx_string*
  store %nyx_string* %2447, %nyx_string** %2448
  %2449 = load %nyx_string*, %nyx_string** %2448
  %2450 = getelementptr [3 x i8], [3 x i8]* @.str247, i32 0, i32 0
  %2451 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str247.c, i8* %2450, i64 2)
  %2452 = call i1 @nyx_string_equals(%nyx_string* %2449, %nyx_string* %2451)
  br i1 %2452, label %then481, label %else482
then481:
  %2453 = getelementptr [85 x i8], [85 x i8]* @.str248, i32 0, i32 0
  %2454 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str248.c, i8* %2453, i64 84)
  %2455 = call i8* @nyx_string_to_cstr(%nyx_string* %2454)
  call void @nyx_print_string(i8* %2455)
  %2456 = getelementptr [85 x i8], [85 x i8]* @.str249, i32 0, i32 0
  %2457 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str249.c, i8* %2456, i64 84)
  %2458 = call i8* @nyx_string_to_cstr(%nyx_string* %2457)
  call void @nyx_print_string(i8* %2458)
  br label %merge483
else482:
  %2459 = getelementptr [79 x i8], [79 x i8]* @.str250, i32 0, i32 0
  %2460 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str250.c, i8* %2459, i64 78)
  %2461 = call i8* @nyx_string_to_cstr(%nyx_string* %2460)
  call void @nyx_print_string(i8* %2461)
  %2462 = getelementptr [84 x i8], [84 x i8]* @.str251, i32 0, i32 0
  %2463 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str251.c, i8* %2462, i64 83)
  %2464 = call i8* @nyx_string_to_cstr(%nyx_string* %2463)
  call void @nyx_print_string(i8* %2464)
  br label %merge483
merge483:
  %2465 = call %Value @make_error()
  ret %Value %2465
}

define internal %Value @eval_call(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %2466 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %2467 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %2466)
  %2468 = alloca { i64, i8* }*
  store { i64, i8* }* %2467, { i64, i8* }** %2468
  %2469 = load { i64, i8* }*, { i64, i8* }** %2468
  %2470 = call i64 @nyx_array_get({ i64, i8* }* %2469, i64 0)
  %2471 = inttoptr i64 %2470 to { i64, i8* }*
  %2472 = alloca { i64, i8* }*
  store { i64, i8* }* %2471, { i64, i8* }** %2472
  %2473 = load { i64, i8* }*, { i64, i8* }** %2468
  %2474 = call i64 @nyx_array_get({ i64, i8* }* %2473, i64 1)
  %2475 = inttoptr i64 %2474 to { i64, i8* }*
  %2476 = alloca { i64, i8* }*
  store { i64, i8* }* %2475, { i64, i8* }** %2476
  %2477 = load { i64, i8* }*, { i64, i8* }** %2472
  %2478 = call i64 @nyx_array_get({ i64, i8* }* %2477, i64 1)
  %2479 = inttoptr i64 %2478 to { i64, i8* }*
  %2480 = alloca { i64, i8* }*
  store { i64, i8* }* %2479, { i64, i8* }** %2480
  %2481 = load { i64, i8* }*, { i64, i8* }** %2480
  %2482 = call i64 @nyx_array_get_checked({ i64, i8* }* %2481, i64 0, i64 2)
  %2483 = inttoptr i64 %2482 to %nyx_string*
  %2484 = alloca %nyx_string*
  store %nyx_string* %2483, %nyx_string** %2484
  %2485 = load %nyx_string*, %nyx_string** %2484
  %2486 = getelementptr [6 x i8], [6 x i8]* @.str252, i32 0, i32 0
  %2487 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str252.c, i8* %2486, i64 5)
  %2488 = call i1 @nyx_string_equals(%nyx_string* %2485, %nyx_string* %2487)
  br i1 %2488, label %then484, label %else485
then484:
  %2489 = load { i64, i8* }*, { i64, i8* }** %2476
  %2490 = load %Environment, %Environment* %env.ptr
  %2491 = call %Value @eval_builtin_print({ i64, i8* }* %2489, %Environment %2490)
  ret %Value %2491
else485:
  br label %merge486
merge486:
  %2492 = load %nyx_string*, %nyx_string** %2484
  %2493 = getelementptr [10 x i8], [10 x i8]* @.str253, i32 0, i32 0
  %2494 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str253.c, i8* %2493, i64 9)
  %2495 = call i1 @nyx_string_equals(%nyx_string* %2492, %nyx_string* %2494)
  br i1 %2495, label %then487, label %else488
then487:
  %2496 = load { i64, i8* }*, { i64, i8* }** %2476
  %2497 = load %Environment, %Environment* %env.ptr
  %2498 = call %Value @eval_builtin_read_file({ i64, i8* }* %2496, %Environment %2497)
  ret %Value %2498
else488:
  br label %merge489
merge489:
  %2499 = load %nyx_string*, %nyx_string** %2484
  %2500 = getelementptr [14 x i8], [14 x i8]* @.str254, i32 0, i32 0
  %2501 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str254.c, i8* %2500, i64 13)
  %2502 = call i1 @nyx_string_equals(%nyx_string* %2499, %nyx_string* %2501)
  br i1 %2502, label %then490, label %else491
then490:
  %2503 = getelementptr [8 x i8], [8 x i8]* @.str255, i32 0, i32 0
  %2504 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str255.c, i8* %2503, i64 7)
  %2505 = getelementptr [122 x i8], [122 x i8]* @.str256, i32 0, i32 0
  %2506 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str256.c, i8* %2505, i64 121)
  %2507 = getelementptr [134 x i8], [134 x i8]* @.str257, i32 0, i32 0
  %2508 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str257.c, i8* %2507, i64 133)
  %2509 = call i64 @interp_err(%nyx_string* %2504, %nyx_string* %2506, %nyx_string* %2508)
  %2510 = call %Value @make_nil()
  ret %Value %2510
else491:
  br label %merge492
merge492:
  %2511 = load %nyx_string*, %nyx_string** %2484
  %2512 = getelementptr [10 x i8], [10 x i8]* @.str258, i32 0, i32 0
  %2513 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str258.c, i8* %2512, i64 9)
  %2514 = call i1 @nyx_string_equals(%nyx_string* %2511, %nyx_string* %2513)
  br i1 %2514, label %then493, label %else494
then493:
  %2515 = load { i64, i8* }*, { i64, i8* }** %2476
  %2516 = load %Environment, %Environment* %env.ptr
  %2517 = call %Value @eval_builtin_read_line({ i64, i8* }* %2515, %Environment %2516)
  ret %Value %2517
else494:
  br label %merge495
merge495:
  %2518 = load %nyx_string*, %nyx_string** %2484
  %2519 = getelementptr [17 x i8], [17 x i8]* @.str259, i32 0, i32 0
  %2520 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str259.c, i8* %2519, i64 16)
  %2521 = call i1 @nyx_string_equals(%nyx_string* %2518, %nyx_string* %2520)
  br i1 %2521, label %then496, label %else497
then496:
  %2522 = load { i64, i8* }*, { i64, i8* }** %2476
  %2523 = load %Environment, %Environment* %env.ptr
  %2524 = call %Value @eval_builtin_print_no_newline({ i64, i8* }* %2522, %Environment %2523)
  ret %Value %2524
else497:
  br label %merge498
merge498:
  %2525 = load %Environment, %Environment* %env.ptr
  %2526 = load %nyx_string*, %nyx_string** %2484
  %2527 = call i1 @env_has(%Environment %2525, %nyx_string* %2526)
  %2528 = xor i1 %2527, true
  br i1 %2528, label %then499, label %else500
then499:
  %2529 = getelementptr [8 x i8], [8 x i8]* @.str260, i32 0, i32 0
  %2530 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str260.c, i8* %2529, i64 7)
  %2531 = getelementptr [23 x i8], [23 x i8]* @.str261, i32 0, i32 0
  %2532 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str261.c, i8* %2531, i64 22)
  %2533 = load %nyx_string*, %nyx_string** %2484
  %2534 = call %nyx_string* @nyx_string_concat(%nyx_string* %2532, %nyx_string* %2533)
  %2535 = getelementptr [21 x i8], [21 x i8]* @.str262, i32 0, i32 0
  %2536 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str262.c, i8* %2535, i64 20)
  %2537 = load %nyx_string*, %nyx_string** %2484
  %2538 = call %nyx_string* @nyx_string_concat(%nyx_string* %2536, %nyx_string* %2537)
  %2539 = call i64 @interp_err(%nyx_string* %2530, %nyx_string* %2534, %nyx_string* %2538)
  %2540 = call %Value @make_error()
  ret %Value %2540
else500:
  br label %merge501
merge501:
  %2541 = load %Environment, %Environment* %env.ptr
  %2542 = load %nyx_string*, %nyx_string** %2484
  %2543 = call %Value @env_get(%Environment %2541, %nyx_string* %2542)
  %2544 = alloca %Value
  store %Value %2543, %Value* %2544
  %2545 = getelementptr %Value, %Value* %2544, i32 0, i32 0
  %2546 = load %nyx_string*, %nyx_string** %2545
  %2547 = getelementptr [9 x i8], [9 x i8]* @.str263, i32 0, i32 0
  %2548 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str263.c, i8* %2547, i64 8)
  %2549 = call i1 @nyx_string_equals(%nyx_string* %2546, %nyx_string* %2548)
  %2550 = xor i1 %2549, true
  br i1 %2550, label %then502, label %else503
then502:
  %2551 = getelementptr [8 x i8], [8 x i8]* @.str264, i32 0, i32 0
  %2552 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str264.c, i8* %2551, i64 7)
  %2553 = getelementptr [2 x i8], [2 x i8]* @.str265, i32 0, i32 0
  %2554 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str265.c, i8* %2553, i64 1)
  %2555 = load %nyx_string*, %nyx_string** %2484
  %2556 = call %nyx_string* @nyx_string_concat(%nyx_string* %2554, %nyx_string* %2555)
  %2557 = getelementptr [21 x i8], [21 x i8]* @.str266, i32 0, i32 0
  %2558 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str266.c, i8* %2557, i64 20)
  %2559 = call %nyx_string* @nyx_string_concat(%nyx_string* %2556, %nyx_string* %2558)
  %2560 = getelementptr [2 x i8], [2 x i8]* @.str267, i32 0, i32 0
  %2561 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str267.c, i8* %2560, i64 1)
  %2562 = load %nyx_string*, %nyx_string** %2484
  %2563 = call %nyx_string* @nyx_string_concat(%nyx_string* %2561, %nyx_string* %2562)
  %2564 = getelementptr [20 x i8], [20 x i8]* @.str268, i32 0, i32 0
  %2565 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str268.c, i8* %2564, i64 19)
  %2566 = call %nyx_string* @nyx_string_concat(%nyx_string* %2563, %nyx_string* %2565)
  %2567 = call i64 @interp_err(%nyx_string* %2552, %nyx_string* %2559, %nyx_string* %2566)
  %2568 = call %Value @make_error()
  ret %Value %2568
else503:
  br label %merge504
merge504:
  %2569 = load %Value, %Value* %2544
  %2570 = call { i64, i8* }* @get_func_params(%Value %2569)
  %2571 = alloca { i64, i8* }*
  store { i64, i8* }* %2570, { i64, i8* }** %2571
  %2572 = load %Value, %Value* %2544
  %2573 = call %nyx_string* @get_func_body_type(%Value %2572)
  %2574 = alloca %nyx_string*
  store %nyx_string* %2573, %nyx_string** %2574
  %2575 = load %Value, %Value* %2544
  %2576 = call { i64, i8* }* @get_func_body_data(%Value %2575)
  %2577 = alloca { i64, i8* }*
  store { i64, i8* }* %2576, { i64, i8* }** %2577
  %2578 = load %nyx_string*, %nyx_string** %2574
  %2579 = load { i64, i8* }*, { i64, i8* }** %2577
  %2580 = call { i64, i8* }* @make_astnode(%nyx_string* %2578, { i64, i8* }* %2579)
  %2581 = alloca { i64, i8* }*
  store { i64, i8* }* %2580, { i64, i8* }** %2581
  %2582 = load %Value, %Value* %2544
  %2583 = call i8* @get_func_env_bindings(%Value %2582)
  %2584 = alloca i8*
  store i8* %2583, i8** %2584
  %2585 = load %Value, %Value* %2544
  %2586 = call { i64, i8* }* @get_func_env_parent(%Value %2585)
  %2587 = alloca { i64, i8* }*
  store { i64, i8* }* %2586, { i64, i8* }** %2587
  %2588 = getelementptr %Environment, %Environment* null, i32 1
  %2589 = ptrtoint %Environment* %2588 to i64
  %2590 = call i8* @GC_malloc(i64 %2589)
  %2591 = bitcast i8* %2590 to %Environment*
  %2592 = load i8*, i8** %2584
  %2593 = getelementptr %Environment, %Environment* %2591, i32 0, i32 0
  store i8* %2592, i8** %2593
  %2594 = load { i64, i8* }*, { i64, i8* }** %2587
  %2595 = getelementptr %Environment, %Environment* %2591, i32 0, i32 1
  store { i64, i8* }* %2594, { i64, i8* }** %2595
  %2596 = load %Environment, %Environment* %2591
  %2597 = alloca %Environment
  store %Environment %2596, %Environment* %2597
  %2598 = load %Environment, %Environment* %2597
  %2599 = call %Environment @make_child_env(%Environment %2598)
  %2600 = alloca %Environment
  store %Environment %2599, %Environment* %2600
  %2601 = load { i64, i8* }*, { i64, i8* }** %2476
  %2602 = call i64 @nyx_array_length({ i64, i8* }* %2601)
  %2603 = load { i64, i8* }*, { i64, i8* }** %2571
  %2604 = call i64 @nyx_array_length({ i64, i8* }* %2603)
  %2605 = icmp ne i64 %2602, %2604
  br i1 %2605, label %then505, label %else506
then505:
  %2606 = getelementptr [8 x i8], [8 x i8]* @.str269, i32 0, i32 0
  %2607 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str269.c, i8* %2606, i64 7)
  %2608 = getelementptr [2 x i8], [2 x i8]* @.str270, i32 0, i32 0
  %2609 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str270.c, i8* %2608, i64 1)
  %2610 = load %nyx_string*, %nyx_string** %2484
  %2611 = call %nyx_string* @nyx_string_concat(%nyx_string* %2609, %nyx_string* %2610)
  %2612 = getelementptr [10 x i8], [10 x i8]* @.str271, i32 0, i32 0
  %2613 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str271.c, i8* %2612, i64 9)
  %2614 = call %nyx_string* @nyx_string_concat(%nyx_string* %2611, %nyx_string* %2613)
  %2615 = load { i64, i8* }*, { i64, i8* }** %2571
  %2616 = call i64 @nyx_array_length({ i64, i8* }* %2615)
  %2617 = call %nyx_string* @nyx_string_from_int(i64 %2616)
  %2618 = call %nyx_string* @nyx_string_concat(%nyx_string* %2614, %nyx_string* %2617)
  %2619 = getelementptr [25 x i8], [25 x i8]* @.str272, i32 0, i32 0
  %2620 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str272.c, i8* %2619, i64 24)
  %2621 = call %nyx_string* @nyx_string_concat(%nyx_string* %2618, %nyx_string* %2620)
  %2622 = load { i64, i8* }*, { i64, i8* }** %2476
  %2623 = call i64 @nyx_array_length({ i64, i8* }* %2622)
  %2624 = call %nyx_string* @nyx_string_from_int(i64 %2623)
  %2625 = call %nyx_string* @nyx_string_concat(%nyx_string* %2621, %nyx_string* %2624)
  %2626 = getelementptr [2 x i8], [2 x i8]* @.str273, i32 0, i32 0
  %2627 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str273.c, i8* %2626, i64 1)
  %2628 = load %nyx_string*, %nyx_string** %2484
  %2629 = call %nyx_string* @nyx_string_concat(%nyx_string* %2627, %nyx_string* %2628)
  %2630 = getelementptr [11 x i8], [11 x i8]* @.str274, i32 0, i32 0
  %2631 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str274.c, i8* %2630, i64 10)
  %2632 = call %nyx_string* @nyx_string_concat(%nyx_string* %2629, %nyx_string* %2631)
  %2633 = load { i64, i8* }*, { i64, i8* }** %2571
  %2634 = call i64 @nyx_array_length({ i64, i8* }* %2633)
  %2635 = call %nyx_string* @nyx_string_from_int(i64 %2634)
  %2636 = call %nyx_string* @nyx_string_concat(%nyx_string* %2632, %nyx_string* %2635)
  %2637 = getelementptr [19 x i8], [19 x i8]* @.str275, i32 0, i32 0
  %2638 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str275.c, i8* %2637, i64 18)
  %2639 = call %nyx_string* @nyx_string_concat(%nyx_string* %2636, %nyx_string* %2638)
  %2640 = load { i64, i8* }*, { i64, i8* }** %2476
  %2641 = call i64 @nyx_array_length({ i64, i8* }* %2640)
  %2642 = call %nyx_string* @nyx_string_from_int(i64 %2641)
  %2643 = call %nyx_string* @nyx_string_concat(%nyx_string* %2639, %nyx_string* %2642)
  %2644 = call i64 @interp_err(%nyx_string* %2607, %nyx_string* %2625, %nyx_string* %2643)
  %2645 = call %Value @make_error()
  ret %Value %2645
else506:
  br label %merge507
merge507:
  %2646 = alloca i64
  store i64 0, i64* %2646
  %2647 = getelementptr [6 x i8], [6 x i8]* @.str276, i32 0, i32 0
  %2648 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str276.c, i8* %2647, i64 5)
  %2649 = alloca %nyx_string*
  store %nyx_string* %2648, %nyx_string** %2649
  %2650 = call i8* @llvm.stacksave()
  br label %while_cond508
while_cond508:
  %2651 = load i64, i64* %2646
  %2652 = load { i64, i8* }*, { i64, i8* }** %2571
  %2653 = call i64 @nyx_array_length({ i64, i8* }* %2652)
  %2654 = icmp slt i64 %2651, %2653
  br i1 %2654, label %while_body509, label %while_end510
while_body509:
  call void @llvm.stackrestore(i8* %2650)
  %2655 = load { i64, i8* }*, { i64, i8* }** %2571
  %2656 = load i64, i64* %2646
  %2657 = call i64 @nyx_array_get({ i64, i8* }* %2655, i64 %2656)
  %2658 = inttoptr i64 %2657 to { i64, i8* }*
  %2659 = alloca { i64, i8* }*
  store { i64, i8* }* %2658, { i64, i8* }** %2659
  %2660 = load { i64, i8* }*, { i64, i8* }** %2659
  %2661 = call i64 @nyx_array_get_checked({ i64, i8* }* %2660, i64 0, i64 2)
  %2662 = inttoptr i64 %2661 to %nyx_string*
  %2663 = alloca %nyx_string*
  store %nyx_string* %2662, %nyx_string** %2663
  %2664 = load { i64, i8* }*, { i64, i8* }** %2476
  %2665 = load i64, i64* %2646
  %2666 = call i64 @nyx_array_get({ i64, i8* }* %2664, i64 %2665)
  %2667 = inttoptr i64 %2666 to { i64, i8* }*
  %2668 = alloca { i64, i8* }*
  store { i64, i8* }* %2667, { i64, i8* }** %2668
  %2669 = load { i64, i8* }*, { i64, i8* }** %2668
  %2670 = load %Environment, %Environment* %env.ptr
  %2671 = call %Value @eval_expr({ i64, i8* }* %2669, %Environment %2670)
  %2672 = alloca %Value
  store %Value %2671, %Value* %2672
  %2673 = getelementptr %Value, %Value* %2672, i32 0, i32 0
  %2674 = load %nyx_string*, %nyx_string** %2673
  %2675 = load %nyx_string*, %nyx_string** %2649
  %2676 = call i1 @nyx_string_equals(%nyx_string* %2674, %nyx_string* %2675)
  br i1 %2676, label %then511, label %else512
then511:
  %2677 = load %Value, %Value* %2672
  ret %Value %2677
else512:
  br label %merge513
merge513:
  %2678 = load %Environment, %Environment* %2600
  %2679 = load %nyx_string*, %nyx_string** %2663
  %2680 = load %Value, %Value* %2672
  %2681 = call i64 @env_define(%Environment %2678, %nyx_string* %2679, %Value %2680)
  %2682 = load i64, i64* %2646
  %2683 = add i64 %2682, 1
  store i64 %2683, i64* %2646
  br label %while_cond508
while_end510:
  %2684 = load { i64, i8* }*, { i64, i8* }** %2581
  %2685 = load %Environment, %Environment* %2600
  %2686 = call %Value @eval_stmt({ i64, i8* }* %2684, %Environment %2685)
  %2687 = alloca %Value
  store %Value %2686, %Value* %2687
  %2688 = getelementptr %Value, %Value* %2687, i32 0, i32 0
  %2689 = load %nyx_string*, %nyx_string** %2688
  %2690 = getelementptr [7 x i8], [7 x i8]* @.str277, i32 0, i32 0
  %2691 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str277.c, i8* %2690, i64 6)
  %2692 = call i1 @nyx_string_equals(%nyx_string* %2689, %nyx_string* %2691)
  br i1 %2692, label %then514, label %else515
then514:
  %2693 = load %Value, %Value* %2687
  %2694 = call %Value @unwrap_return_value(%Value %2693)
  ret %Value %2694
else515:
  br label %merge516
merge516:
  %2695 = load %Value, %Value* %2687
  %2696 = call i1 @is_loop_control(%Value %2695)
  br i1 %2696, label %then517, label %else518
then517:
  %2697 = load %Value, %Value* %2687
  %2698 = call %Value @loop_control_escaped(%Value %2697)
  ret %Value %2698
else518:
  br label %merge519
merge519:
  %2699 = load %Value, %Value* %2687
  ret %Value %2699
}

define internal %Value @eval_builtin_print(
{ i64, i8* }* %args.param, %Environment %env.param) {
  %args.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %args.param, { i64, i8* }** %args.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %2700 = alloca i64
  store i64 0, i64* %2700
  %2701 = getelementptr [6 x i8], [6 x i8]* @.str278, i32 0, i32 0
  %2702 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str278.c, i8* %2701, i64 5)
  %2703 = alloca %nyx_string*
  store %nyx_string* %2702, %nyx_string** %2703
  %2704 = call i8* @llvm.stacksave()
  br label %while_cond520
while_cond520:
  %2705 = load i64, i64* %2700
  %2706 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %2707 = call i64 @nyx_array_length({ i64, i8* }* %2706)
  %2708 = icmp slt i64 %2705, %2707
  br i1 %2708, label %while_body521, label %while_end522
while_body521:
  call void @llvm.stackrestore(i8* %2704)
  %2709 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %2710 = load i64, i64* %2700
  %2711 = call i64 @nyx_array_get({ i64, i8* }* %2709, i64 %2710)
  %2712 = inttoptr i64 %2711 to { i64, i8* }*
  %2713 = alloca { i64, i8* }*
  store { i64, i8* }* %2712, { i64, i8* }** %2713
  %2714 = load { i64, i8* }*, { i64, i8* }** %2713
  %2715 = load %Environment, %Environment* %env.ptr
  %2716 = call %Value @eval_expr({ i64, i8* }* %2714, %Environment %2715)
  %2717 = alloca %Value
  store %Value %2716, %Value* %2717
  %2718 = getelementptr %Value, %Value* %2717, i32 0, i32 0
  %2719 = load %nyx_string*, %nyx_string** %2718
  %2720 = load %nyx_string*, %nyx_string** %2703
  %2721 = call i1 @nyx_string_equals(%nyx_string* %2719, %nyx_string* %2720)
  br i1 %2721, label %then523, label %else524
then523:
  %2722 = load %Value, %Value* %2717
  ret %Value %2722
else524:
  br label %merge525
merge525:
  %2723 = load %Value, %Value* %2717
  %2724 = call i64 @print_value(%Value %2723)
  %2725 = load i64, i64* %2700
  %2726 = add i64 %2725, 1
  store i64 %2726, i64* %2700
  br label %while_cond520
while_end522:
  %2727 = call %Value @make_nil()
  ret %Value %2727
}

define internal %Value @eval_builtin_read_line(
{ i64, i8* }* %args.param, %Environment %env.param) {
  %args.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %args.param, { i64, i8* }** %args.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %2728 = call %nyx_string* @nyx_read_line()
  %2729 = alloca %nyx_string*
  store %nyx_string* %2728, %nyx_string** %2729
  %2730 = load %nyx_string*, %nyx_string** %2729
  %2731 = call %Value @make_string(%nyx_string* %2730)
  ret %Value %2731
}

define internal %Value @eval_builtin_print_no_newline(
{ i64, i8* }* %args.param, %Environment %env.param) {
  %args.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %args.param, { i64, i8* }** %args.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %2732 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %2733 = call i64 @nyx_array_length({ i64, i8* }* %2732)
  %2734 = icmp sgt i64 %2733, 0
  br i1 %2734, label %then526, label %else527
then526:
  %2735 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %2736 = call i64 @nyx_array_get({ i64, i8* }* %2735, i64 0)
  %2737 = inttoptr i64 %2736 to { i64, i8* }*
  %2738 = alloca { i64, i8* }*
  store { i64, i8* }* %2737, { i64, i8* }** %2738
  %2739 = load { i64, i8* }*, { i64, i8* }** %2738
  %2740 = load %Environment, %Environment* %env.ptr
  %2741 = call %Value @eval_expr({ i64, i8* }* %2739, %Environment %2740)
  %2742 = alloca %Value
  store %Value %2741, %Value* %2742
  %2743 = getelementptr %Value, %Value* %2742, i32 0, i32 0
  %2744 = load %nyx_string*, %nyx_string** %2743
  %2745 = getelementptr [6 x i8], [6 x i8]* @.str279, i32 0, i32 0
  %2746 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str279.c, i8* %2745, i64 5)
  %2747 = call i1 @nyx_string_equals(%nyx_string* %2744, %nyx_string* %2746)
  br i1 %2747, label %then529, label %else530
then529:
  %2748 = load %Value, %Value* %2742
  ret %Value %2748
else530:
  br label %merge531
merge531:
  %2749 = load %Value, %Value* %2742
  %2750 = call %nyx_string* @value_to_string(%Value %2749)
  call void @nyx_print_no_newline(%nyx_string* %2750)
  br label %merge528
else527:
  br label %merge528
merge528:
  %2751 = call %Value @make_nil()
  ret %Value %2751
}

define internal %Value @eval_builtin_read_file(
{ i64, i8* }* %args.param, %Environment %env.param) {
  %args.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %args.param, { i64, i8* }** %args.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %2752 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %2753 = call i64 @nyx_array_length({ i64, i8* }* %2752)
  %2754 = icmp sgt i64 %2753, 0
  br i1 %2754, label %then532, label %else533
then532:
  %2755 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %2756 = call i64 @nyx_array_get({ i64, i8* }* %2755, i64 0)
  %2757 = inttoptr i64 %2756 to { i64, i8* }*
  %2758 = load %Environment, %Environment* %env.ptr
  %2759 = call %Value @eval_expr({ i64, i8* }* %2757, %Environment %2758)
  %2760 = alloca %Value
  store %Value %2759, %Value* %2760
  %2761 = load %Value, %Value* %2760
  %2762 = call %nyx_string* @value_to_string(%Value %2761)
  %2763 = alloca %nyx_string*
  store %nyx_string* %2762, %nyx_string** %2763
  %2764 = load %nyx_string*, %nyx_string** %2763
  %2765 = call i8* @nyx_string_to_cstr(%nyx_string* %2764)
  %2766 = call %nyx_string* @nyx_read_file(i8* %2765)
  %2767 = alloca %nyx_string*
  store %nyx_string* %2766, %nyx_string** %2767
  %2768 = load %nyx_string*, %nyx_string** %2767
  %2769 = call %Value @make_string(%nyx_string* %2768)
  ret %Value %2769
else533:
  br label %merge534
merge534:
  %2770 = call %Value @make_nil()
  ret %Value %2770
}

define %Environment @repl_make_env(
) {
  %2771 = call %Environment @make_env()
  ret %Environment %2771
}

define %nyx_string* @repl_eval(
{ i64, i8* }* %ast.param, %Environment %env.param) {
  %ast.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %ast.param, { i64, i8* }** %ast.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %2772 = load { i64, i8* }*, { i64, i8* }** %ast.ptr
  %2773 = call i64 @nyx_array_get({ i64, i8* }* %2772, i64 1)
  %2774 = inttoptr i64 %2773 to { i64, i8* }*
  %2775 = alloca { i64, i8* }*
  store { i64, i8* }* %2774, { i64, i8* }** %2775
  %2776 = load { i64, i8* }*, { i64, i8* }** %2775
  %2777 = call i64 @nyx_array_get({ i64, i8* }* %2776, i64 0)
  %2778 = inttoptr i64 %2777 to { i64, i8* }*
  %2779 = alloca { i64, i8* }*
  store { i64, i8* }* %2778, { i64, i8* }** %2779
  %2780 = getelementptr [1 x i8], [1 x i8]* @.str280, i32 0, i32 0
  %2781 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str280.c, i8* %2780, i64 0)
  %2782 = alloca %nyx_string*
  store %nyx_string* %2781, %nyx_string** %2782
  %2783 = alloca i64
  store i64 0, i64* %2783
  %2784 = call i8* @llvm.stacksave()
  br label %while_cond535
while_cond535:
  %2785 = load i64, i64* %2783
  %2786 = load { i64, i8* }*, { i64, i8* }** %2779
  %2787 = call i64 @nyx_array_length({ i64, i8* }* %2786)
  %2788 = icmp slt i64 %2785, %2787
  br i1 %2788, label %while_body536, label %while_end537
while_body536:
  call void @llvm.stackrestore(i8* %2784)
  %2789 = load { i64, i8* }*, { i64, i8* }** %2779
  %2790 = load i64, i64* %2783
  %2791 = call i64 @nyx_array_get({ i64, i8* }* %2789, i64 %2790)
  %2792 = inttoptr i64 %2791 to { i64, i8* }*
  %2793 = alloca { i64, i8* }*
  store { i64, i8* }* %2792, { i64, i8* }** %2793
  %2794 = load { i64, i8* }*, { i64, i8* }** %2793
  %2795 = load %Environment, %Environment* %env.ptr
  %2796 = call %Value @eval_stmt({ i64, i8* }* %2794, %Environment %2795)
  %2797 = alloca %Value
  store %Value %2796, %Value* %2797
  %2798 = getelementptr %Value, %Value* %2797, i32 0, i32 0
  %2799 = load %nyx_string*, %nyx_string** %2798
  %2800 = getelementptr [6 x i8], [6 x i8]* @.str281, i32 0, i32 0
  %2801 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str281.c, i8* %2800, i64 5)
  %2802 = call i1 @nyx_string_equals(%nyx_string* %2799, %nyx_string* %2801)
  br i1 %2802, label %then538, label %else539
then538:
  %2803 = getelementptr [1 x i8], [1 x i8]* @.str282, i32 0, i32 0
  %2804 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str282.c, i8* %2803, i64 0)
  ret %nyx_string* %2804
else539:
  br label %merge540
merge540:
  %2805 = load %Value, %Value* %2797
  %2806 = call i1 @is_loop_control(%Value %2805)
  br i1 %2806, label %then541, label %else542
then541:
  %2807 = load %Value, %Value* %2797
  %2808 = call %Value @loop_control_escaped(%Value %2807)
  %2809 = alloca %Value
  store %Value %2808, %Value* %2809
  %2810 = getelementptr [1 x i8], [1 x i8]* @.str283, i32 0, i32 0
  %2811 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str283.c, i8* %2810, i64 0)
  ret %nyx_string* %2811
else542:
  br label %merge543
merge543:
  %2812 = alloca i1
  store i1 false, i1* %2812
  %2813 = getelementptr %Value, %Value* %2797, i32 0, i32 0
  %2814 = load %nyx_string*, %nyx_string** %2813
  %2815 = getelementptr [4 x i8], [4 x i8]* @.str284, i32 0, i32 0
  %2816 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str284.c, i8* %2815, i64 3)
  %2817 = call i1 @nyx_string_equals(%nyx_string* %2814, %nyx_string* %2816)
  %2818 = xor i1 %2817, true
  br i1 %2818, label %sc_and_rhs544, label %sc_and_end545
sc_and_rhs544:
  %2819 = getelementptr %Value, %Value* %2797, i32 0, i32 0
  %2820 = load %nyx_string*, %nyx_string** %2819
  %2821 = getelementptr [7 x i8], [7 x i8]* @.str285, i32 0, i32 0
  %2822 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str285.c, i8* %2821, i64 6)
  %2823 = call i1 @nyx_string_equals(%nyx_string* %2820, %nyx_string* %2822)
  %2824 = xor i1 %2823, true
  store i1 %2824, i1* %2812
  br label %sc_and_end545
sc_and_end545:
  %2825 = load i1, i1* %2812
  br i1 %2825, label %then546, label %else547
then546:
  %2826 = getelementptr [4 x i8], [4 x i8]* @.str286, i32 0, i32 0
  %2827 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str286.c, i8* %2826, i64 3)
  %2828 = load %Value, %Value* %2797
  %2829 = call %nyx_string* @value_to_string(%Value %2828)
  %2830 = call %nyx_string* @nyx_string_concat(%nyx_string* %2827, %nyx_string* %2829)
  store %nyx_string* %2830, %nyx_string** %2782
  br label %merge548
else547:
  br label %merge548
merge548:
  %2831 = load i64, i64* %2783
  %2832 = add i64 %2831, 1
  store i64 %2832, i64* %2783
  br label %while_cond535
while_end537:
  %2833 = load %nyx_string*, %nyx_string** %2782
  ret %nyx_string* %2833
}

define i8* @repl_make_map(
) {
  %2834 = call i8* @nyx_map_new(i32 0)
  ret i8* %2834
}

define %nyx_string* @repl_eval_with_map(
{ i64, i8* }* %ast.param, i8* %env_map.param) {
  %ast.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %ast.param, { i64, i8* }** %ast.ptr
  %env_map.ptr = alloca i8*
  store i8* %env_map.param, i8** %env_map.ptr
  %2835 = getelementptr %Environment, %Environment* null, i32 1
  %2836 = ptrtoint %Environment* %2835 to i64
  %2837 = call i8* @GC_malloc(i64 %2836)
  %2838 = bitcast i8* %2837 to %Environment*
  %2839 = load i8*, i8** %env_map.ptr
  %2840 = getelementptr %Environment, %Environment* %2838, i32 0, i32 0
  store i8* %2839, i8** %2840
  %2841 = call { i64, i8* }* @nyx_array_new_ptr()
  %2842 = getelementptr %Environment, %Environment* %2838, i32 0, i32 1
  store { i64, i8* }* %2841, { i64, i8* }** %2842
  %2843 = load %Environment, %Environment* %2838
  %2844 = alloca %Environment
  store %Environment %2843, %Environment* %2844
  %2845 = load { i64, i8* }*, { i64, i8* }** %ast.ptr
  %2846 = load %Environment, %Environment* %2844
  %2847 = call %nyx_string* @repl_eval({ i64, i8* }* %2845, %Environment %2846)
  ret %nyx_string* %2847
}

define %Value @interpret(
{ i64, i8* }* %ast.param) {
  %ast.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %ast.param, { i64, i8* }** %ast.ptr
  %2848 = call %Environment @make_env()
  %2849 = alloca %Environment
  store %Environment %2848, %Environment* %2849
  %2850 = load { i64, i8* }*, { i64, i8* }** %ast.ptr
  %2851 = call %nyx_string* @astnode_get_type({ i64, i8* }* %2850)
  %2852 = alloca %nyx_string*
  store %nyx_string* %2851, %nyx_string** %2852
  %2853 = load %nyx_string*, %nyx_string** %2852
  %2854 = getelementptr [6 x i8], [6 x i8]* @.str287, i32 0, i32 0
  %2855 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str287.c, i8* %2854, i64 5)
  %2856 = call i1 @nyx_string_equals(%nyx_string* %2853, %nyx_string* %2855)
  br i1 %2856, label %then549, label %else550
then549:
  %2857 = load { i64, i8* }*, { i64, i8* }** %ast.ptr
  %2858 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %2857)
  %2859 = alloca { i64, i8* }*
  store { i64, i8* }* %2858, { i64, i8* }** %2859
  %2860 = load { i64, i8* }*, { i64, i8* }** %2859
  %2861 = call i64 @nyx_array_get({ i64, i8* }* %2860, i64 0)
  %2862 = inttoptr i64 %2861 to { i64, i8* }*
  %2863 = alloca { i64, i8* }*
  store { i64, i8* }* %2862, { i64, i8* }** %2863
  %2864 = alloca i64
  store i64 0, i64* %2864
  %2865 = call i8* @llvm.stacksave()
  br label %while_cond552
while_cond552:
  %2866 = load i64, i64* %2864
  %2867 = load { i64, i8* }*, { i64, i8* }** %2863
  %2868 = call i64 @nyx_array_length({ i64, i8* }* %2867)
  %2869 = icmp slt i64 %2866, %2868
  br i1 %2869, label %while_body553, label %while_end554
while_body553:
  call void @llvm.stackrestore(i8* %2865)
  %2870 = load { i64, i8* }*, { i64, i8* }** %2863
  %2871 = load i64, i64* %2864
  %2872 = call i64 @nyx_array_get({ i64, i8* }* %2870, i64 %2871)
  %2873 = inttoptr i64 %2872 to { i64, i8* }*
  %2874 = alloca { i64, i8* }*
  store { i64, i8* }* %2873, { i64, i8* }** %2874
  %2875 = load { i64, i8* }*, { i64, i8* }** %2874
  %2876 = load %Environment, %Environment* %2849
  %2877 = call %Value @eval_stmt({ i64, i8* }* %2875, %Environment %2876)
  %2878 = alloca %Value
  store %Value %2877, %Value* %2878
  %2879 = getelementptr %Value, %Value* %2878, i32 0, i32 0
  %2880 = load %nyx_string*, %nyx_string** %2879
  %2881 = getelementptr [6 x i8], [6 x i8]* @.str288, i32 0, i32 0
  %2882 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str288.c, i8* %2881, i64 5)
  %2883 = call i1 @nyx_string_equals(%nyx_string* %2880, %nyx_string* %2882)
  br i1 %2883, label %then555, label %else556
then555:
  %2884 = load %Value, %Value* %2878
  ret %Value %2884
else556:
  br label %merge557
merge557:
  %2885 = load %Value, %Value* %2878
  %2886 = call i1 @is_loop_control(%Value %2885)
  br i1 %2886, label %then558, label %else559
then558:
  %2887 = load %Value, %Value* %2878
  %2888 = call %Value @loop_control_escaped(%Value %2887)
  ret %Value %2888
else559:
  br label %merge560
merge560:
  %2889 = load i64, i64* %2864
  %2890 = add i64 %2889, 1
  store i64 %2890, i64* %2864
  br label %while_cond552
while_end554:
  %2891 = getelementptr %Environment, %Environment* %2849, i32 0, i32 0
  %2892 = load i8*, i8** %2891
  %2893 = alloca i8*
  store i8* %2892, i8** %2893
  %2894 = load i8*, i8** %2893
  %2895 = getelementptr [5 x i8], [5 x i8]* @.str289, i32 0, i32 0
  %2896 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str289.c, i8* %2895, i64 4)
  %2897 = call i8* @nyx_string_to_cstr(%nyx_string* %2896)
  %2898 = call i1 @nyx_map_contains_str(i8* %2894, i8* %2897)
  br i1 %2898, label %then561, label %else562
then561:
  %2899 = load %Environment, %Environment* %2849
  %2900 = getelementptr [5 x i8], [5 x i8]* @.str290, i32 0, i32 0
  %2901 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str290.c, i8* %2900, i64 4)
  %2902 = call %Value @env_get(%Environment %2899, %nyx_string* %2901)
  %2903 = alloca %Value
  store %Value %2902, %Value* %2903
  %2904 = getelementptr %Value, %Value* %2903, i32 0, i32 0
  %2905 = load %nyx_string*, %nyx_string** %2904
  %2906 = getelementptr [9 x i8], [9 x i8]* @.str291, i32 0, i32 0
  %2907 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str291.c, i8* %2906, i64 8)
  %2908 = call i1 @nyx_string_equals(%nyx_string* %2905, %nyx_string* %2907)
  br i1 %2908, label %then564, label %else565
then564:
  %2909 = load %Value, %Value* %2903
  %2910 = call { i64, i8* }* @get_func_params(%Value %2909)
  %2911 = alloca { i64, i8* }*
  store { i64, i8* }* %2910, { i64, i8* }** %2911
  %2912 = load %Value, %Value* %2903
  %2913 = call %nyx_string* @get_func_body_type(%Value %2912)
  %2914 = alloca %nyx_string*
  store %nyx_string* %2913, %nyx_string** %2914
  %2915 = load %Value, %Value* %2903
  %2916 = call { i64, i8* }* @get_func_body_data(%Value %2915)
  %2917 = alloca { i64, i8* }*
  store { i64, i8* }* %2916, { i64, i8* }** %2917
  %2918 = load %nyx_string*, %nyx_string** %2914
  %2919 = load { i64, i8* }*, { i64, i8* }** %2917
  %2920 = call { i64, i8* }* @make_astnode(%nyx_string* %2918, { i64, i8* }* %2919)
  %2921 = alloca { i64, i8* }*
  store { i64, i8* }* %2920, { i64, i8* }** %2921
  %2922 = load %Value, %Value* %2903
  %2923 = call i8* @get_func_env_bindings(%Value %2922)
  %2924 = alloca i8*
  store i8* %2923, i8** %2924
  %2925 = load %Value, %Value* %2903
  %2926 = call { i64, i8* }* @get_func_env_parent(%Value %2925)
  %2927 = alloca { i64, i8* }*
  store { i64, i8* }* %2926, { i64, i8* }** %2927
  %2928 = getelementptr %Environment, %Environment* null, i32 1
  %2929 = ptrtoint %Environment* %2928 to i64
  %2930 = call i8* @GC_malloc(i64 %2929)
  %2931 = bitcast i8* %2930 to %Environment*
  %2932 = load i8*, i8** %2924
  %2933 = getelementptr %Environment, %Environment* %2931, i32 0, i32 0
  store i8* %2932, i8** %2933
  %2934 = load { i64, i8* }*, { i64, i8* }** %2927
  %2935 = getelementptr %Environment, %Environment* %2931, i32 0, i32 1
  store { i64, i8* }* %2934, { i64, i8* }** %2935
  %2936 = load %Environment, %Environment* %2931
  %2937 = alloca %Environment
  store %Environment %2936, %Environment* %2937
  %2938 = load %Environment, %Environment* %2937
  %2939 = call %Environment @make_child_env(%Environment %2938)
  %2940 = alloca %Environment
  store %Environment %2939, %Environment* %2940
  %2941 = load { i64, i8* }*, { i64, i8* }** %2921
  %2942 = load %Environment, %Environment* %2940
  %2943 = call %Value @eval_stmt({ i64, i8* }* %2941, %Environment %2942)
  %2944 = alloca %Value
  store %Value %2943, %Value* %2944
  %2945 = load %Value, %Value* %2944
  %2946 = call i1 @is_loop_control(%Value %2945)
  br i1 %2946, label %then567, label %else568
then567:
  %2947 = load %Value, %Value* %2944
  %2948 = call %Value @loop_control_escaped(%Value %2947)
  ret %Value %2948
else568:
  br label %merge569
merge569:
  %2949 = load %Value, %Value* %2944
  ret %Value %2949
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
  %2950 = call %Value @make_nil()
  ret %Value %2950
}

; Inicialización de variables globales (llamada automática vía ctor)
define void @__nyx_init_globals() {
entry:
  %2951 = call { i64, i8* }* @nyx_array_new_ptr()
  call void @nyx_array_push_tagged({ i64, i8* }* %2951, i64 0, i64 1)
  store { i64, i8* }* %2951, { i64, i8* }** @g_interp_error_count
  ret void
}

@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @__nyx_init_globals, i8* null }]

attributes #0 = { returns_twice }

