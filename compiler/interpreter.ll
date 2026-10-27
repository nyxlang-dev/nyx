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
@.str70 = private unnamed_addr constant [8 x i8] c"NYX3003\00"
@.str70.c = internal global %nyx_string* null
@.str71 = private unnamed_addr constant [23 x i8] c"variable no definida: \00"
@.str71.c = internal global %nyx_string* null
@.str72 = private unnamed_addr constant [21 x i8] c"undefined variable: \00"
@.str72.c = internal global %nyx_string* null
@.str73 = private unnamed_addr constant [7 x i8] c"number\00"
@.str73.c = internal global %nyx_string* null
@.str74 = private unnamed_addr constant [8 x i8] c"integer\00"
@.str74.c = internal global %nyx_string* null
@.str75 = private unnamed_addr constant [5 x i8] c"bool\00"
@.str75.c = internal global %nyx_string* null
@.str76 = private unnamed_addr constant [7 x i8] c"string\00"
@.str76.c = internal global %nyx_string* null
@.str77 = private unnamed_addr constant [11 x i8] c"identifier\00"
@.str77.c = internal global %nyx_string* null
@.str78 = private unnamed_addr constant [6 x i8] c"binop\00"
@.str78.c = internal global %nyx_string* null
@.str79 = private unnamed_addr constant [5 x i8] c"unop\00"
@.str79.c = internal global %nyx_string* null
@.str80 = private unnamed_addr constant [5 x i8] c"call\00"
@.str80.c = internal global %nyx_string* null
@.str81 = private unnamed_addr constant [6 x i8] c"array\00"
@.str81.c = internal global %nyx_string* null
@.str82 = private unnamed_addr constant [6 x i8] c"index\00"
@.str82.c = internal global %nyx_string* null
@.str83 = private unnamed_addr constant [12 x i8] c"method_call\00"
@.str83.c = internal global %nyx_string* null
@.str84 = private unnamed_addr constant [8 x i8] c"NYX3002\00"
@.str84.c = internal global %nyx_string* null
@.str85 = private unnamed_addr constant [45 x i8] c"expresión no soportada por el intérprete: \00"
@.str85.c = internal global %nyx_string* null
@.str86 = private unnamed_addr constant [46 x i8] c"expression not supported by the interpreter: \00"
@.str86.c = internal global %nyx_string* null
@.str87 = private unnamed_addr constant [2 x i8] c".\00"
@.str87.c = internal global %nyx_string* null
@.str88 = private unnamed_addr constant [20 x i8] c"9223372036854775808\00"
@.str88.c = internal global %nyx_string* null
@.str89 = private unnamed_addr constant [8 x i8] c"NYX2015\00"
@.str89.c = internal global %nyx_string* null
@.str90 = private unnamed_addr constant [19 x i8] c"el literal entero \00"
@.str90.c = internal global %nyx_string* null
@.str91 = private unnamed_addr constant [30 x i8] c" no entra en un int (64 bits)\00"
@.str91.c = internal global %nyx_string* null
@.str92 = private unnamed_addr constant [17 x i8] c"integer literal \00"
@.str92.c = internal global %nyx_string* null
@.str93 = private unnamed_addr constant [34 x i8] c" does not fit in an int (64 bits)\00"
@.str93.c = internal global %nyx_string* null
@.str94 = private unnamed_addr constant [5 x i8] c"true\00"
@.str94.c = internal global %nyx_string* null
@.str95 = private unnamed_addr constant [6 x i8] c"error\00"
@.str95.c = internal global %nyx_string* null
@.str96 = private unnamed_addr constant [6 x i8] c"error\00"
@.str96.c = internal global %nyx_string* null
@.str97 = private unnamed_addr constant [6 x i8] c"float\00"
@.str97.c = internal global %nyx_string* null
@.str98 = private unnamed_addr constant [6 x i8] c"float\00"
@.str98.c = internal global %nyx_string* null
@.str99 = private unnamed_addr constant [5 x i8] c"PLUS\00"
@.str99.c = internal global %nyx_string* null
@.str100 = private unnamed_addr constant [7 x i8] c"string\00"
@.str100.c = internal global %nyx_string* null
@.str101 = private unnamed_addr constant [6 x i8] c"MINUS\00"
@.str101.c = internal global %nyx_string* null
@.str102 = private unnamed_addr constant [5 x i8] c"STAR\00"
@.str102.c = internal global %nyx_string* null
@.str103 = private unnamed_addr constant [6 x i8] c"SLASH\00"
@.str103.c = internal global %nyx_string* null
@.str104 = private unnamed_addr constant [8 x i8] c"NYX3005\00"
@.str104.c = internal global %nyx_string* null
@.str105 = private unnamed_addr constant [19 x i8] c"división por cero\00"
@.str105.c = internal global %nyx_string* null
@.str106 = private unnamed_addr constant [17 x i8] c"division by zero\00"
@.str106.c = internal global %nyx_string* null
@.str107 = private unnamed_addr constant [8 x i8] c"PERCENT\00"
@.str107.c = internal global %nyx_string* null
@.str108 = private unnamed_addr constant [8 x i8] c"NYX3005\00"
@.str108.c = internal global %nyx_string* null
@.str109 = private unnamed_addr constant [17 x i8] c"módulo por cero\00"
@.str109.c = internal global %nyx_string* null
@.str110 = private unnamed_addr constant [15 x i8] c"modulo by zero\00"
@.str110.c = internal global %nyx_string* null
@.str111 = private unnamed_addr constant [12 x i8] c"EQUAL_EQUAL\00"
@.str111.c = internal global %nyx_string* null
@.str112 = private unnamed_addr constant [10 x i8] c"NOT_EQUAL\00"
@.str112.c = internal global %nyx_string* null
@.str113 = private unnamed_addr constant [5 x i8] c"LESS\00"
@.str113.c = internal global %nyx_string* null
@.str114 = private unnamed_addr constant [8 x i8] c"GREATER\00"
@.str114.c = internal global %nyx_string* null
@.str115 = private unnamed_addr constant [11 x i8] c"LESS_EQUAL\00"
@.str115.c = internal global %nyx_string* null
@.str116 = private unnamed_addr constant [14 x i8] c"GREATER_EQUAL\00"
@.str116.c = internal global %nyx_string* null
@.str117 = private unnamed_addr constant [8 x i8] c"AND_AND\00"
@.str117.c = internal global %nyx_string* null
@.str118 = private unnamed_addr constant [4 x i8] c"AND\00"
@.str118.c = internal global %nyx_string* null
@.str119 = private unnamed_addr constant [6 x i8] c"OR_OR\00"
@.str119.c = internal global %nyx_string* null
@.str120 = private unnamed_addr constant [3 x i8] c"OR\00"
@.str120.c = internal global %nyx_string* null
@.str121 = private unnamed_addr constant [8 x i8] c"NYX3002\00"
@.str121.c = internal global %nyx_string* null
@.str122 = private unnamed_addr constant [24 x i8] c"operador no soportado: \00"
@.str122.c = internal global %nyx_string* null
@.str123 = private unnamed_addr constant [25 x i8] c"operator not supported: \00"
@.str123.c = internal global %nyx_string* null
@.str124 = private unnamed_addr constant [6 x i8] c"error\00"
@.str124.c = internal global %nyx_string* null
@.str125 = private unnamed_addr constant [6 x i8] c"MINUS\00"
@.str125.c = internal global %nyx_string* null
@.str126 = private unnamed_addr constant [4 x i8] c"NOT\00"
@.str126.c = internal global %nyx_string* null
@.str127 = private unnamed_addr constant [8 x i8] c"NYX3002\00"
@.str127.c = internal global %nyx_string* null
@.str128 = private unnamed_addr constant [31 x i8] c"operador unario no soportado: \00"
@.str128.c = internal global %nyx_string* null
@.str129 = private unnamed_addr constant [31 x i8] c"unary operator not supported: \00"
@.str129.c = internal global %nyx_string* null
@.str130 = private unnamed_addr constant [6 x i8] c"error\00"
@.str130.c = internal global %nyx_string* null
@.str131 = private unnamed_addr constant [6 x i8] c"error\00"
@.str131.c = internal global %nyx_string* null
@.str132 = private unnamed_addr constant [6 x i8] c"error\00"
@.str132.c = internal global %nyx_string* null
@.str133 = private unnamed_addr constant [6 x i8] c"array\00"
@.str133.c = internal global %nyx_string* null
@.str134 = private unnamed_addr constant [8 x i8] c"NYX3002\00"
@.str134.c = internal global %nyx_string* null
@.str135 = private unnamed_addr constant [56 x i8] c"indexado no soportado por el intérprete sobre el tipo \00"
@.str135.c = internal global %nyx_string* null
@.str136 = private unnamed_addr constant [51 x i8] c"indexing not supported by the interpreter on type \00"
@.str136.c = internal global %nyx_string* null
@.str137 = private unnamed_addr constant [8 x i8] c"NYX3005\00"
@.str137.c = internal global %nyx_string* null
@.str138 = private unnamed_addr constant [23 x i8] c"índice fuera de rango\00"
@.str138.c = internal global %nyx_string* null
@.str139 = private unnamed_addr constant [19 x i8] c"index out of range\00"
@.str139.c = internal global %nyx_string* null
@.str140 = private unnamed_addr constant [4 x i8] c"let\00"
@.str140.c = internal global %nyx_string* null
@.str141 = private unnamed_addr constant [4 x i8] c"var\00"
@.str141.c = internal global %nyx_string* null
@.str142 = private unnamed_addr constant [7 x i8] c"assign\00"
@.str142.c = internal global %nyx_string* null
@.str143 = private unnamed_addr constant [3 x i8] c"if\00"
@.str143.c = internal global %nyx_string* null
@.str144 = private unnamed_addr constant [6 x i8] c"while\00"
@.str144.c = internal global %nyx_string* null
@.str145 = private unnamed_addr constant [4 x i8] c"for\00"
@.str145.c = internal global %nyx_string* null
@.str146 = private unnamed_addr constant [7 x i8] c"return\00"
@.str146.c = internal global %nyx_string* null
@.str147 = private unnamed_addr constant [6 x i8] c"block\00"
@.str147.c = internal global %nyx_string* null
@.str148 = private unnamed_addr constant [9 x i8] c"function\00"
@.str148.c = internal global %nyx_string* null
@.str149 = private unnamed_addr constant [13 x i8] c"index_assign\00"
@.str149.c = internal global %nyx_string* null
@.str150 = private unnamed_addr constant [13 x i8] c"field_assign\00"
@.str150.c = internal global %nyx_string* null
@.str151 = private unnamed_addr constant [6 x i8] c"break\00"
@.str151.c = internal global %nyx_string* null
@.str152 = private unnamed_addr constant [6 x i8] c"break\00"
@.str152.c = internal global %nyx_string* null
@.str153 = private unnamed_addr constant [9 x i8] c"continue\00"
@.str153.c = internal global %nyx_string* null
@.str154 = private unnamed_addr constant [9 x i8] c"continue\00"
@.str154.c = internal global %nyx_string* null
@.str155 = private unnamed_addr constant [6 x i8] c"error\00"
@.str155.c = internal global %nyx_string* null
@.str156 = private unnamed_addr constant [6 x i8] c"error\00"
@.str156.c = internal global %nyx_string* null
@.str157 = private unnamed_addr constant [8 x i8] c"NYX3003\00"
@.str157.c = internal global %nyx_string* null
@.str158 = private unnamed_addr constant [23 x i8] c"variable no definida: \00"
@.str158.c = internal global %nyx_string* null
@.str159 = private unnamed_addr constant [21 x i8] c"undefined variable: \00"
@.str159.c = internal global %nyx_string* null
@.str160 = private unnamed_addr constant [6 x i8] c"error\00"
@.str160.c = internal global %nyx_string* null
@.str161 = private unnamed_addr constant [6 x i8] c"error\00"
@.str161.c = internal global %nyx_string* null
@.str162 = private unnamed_addr constant [6 x i8] c"error\00"
@.str162.c = internal global %nyx_string* null
@.str163 = private unnamed_addr constant [6 x i8] c"array\00"
@.str163.c = internal global %nyx_string* null
@.str164 = private unnamed_addr constant [8 x i8] c"NYX3005\00"
@.str164.c = internal global %nyx_string* null
@.str165 = private unnamed_addr constant [38 x i8] c"índice fuera de rango en asignación\00"
@.str165.c = internal global %nyx_string* null
@.str166 = private unnamed_addr constant [33 x i8] c"index out of range in assignment\00"
@.str166.c = internal global %nyx_string* null
@.str167 = private unnamed_addr constant [8 x i8] c"NYX3005\00"
@.str167.c = internal global %nyx_string* null
@.str168 = private unnamed_addr constant [38 x i8] c"index_assign sobre un tipo no-array: \00"
@.str168.c = internal global %nyx_string* null
@.str169 = private unnamed_addr constant [35 x i8] c"index_assign on a non-array type: \00"
@.str169.c = internal global %nyx_string* null
@.str170 = private unnamed_addr constant [8 x i8] c"NYX3002\00"
@.str170.c = internal global %nyx_string* null
@.str171 = private unnamed_addr constant [45 x i8] c"field_assign no soportado por el intérprete\00"
@.str171.c = internal global %nyx_string* null
@.str172 = private unnamed_addr constant [46 x i8] c"field_assign not supported by the interpreter\00"
@.str172.c = internal global %nyx_string* null
@.str173 = private unnamed_addr constant [6 x i8] c"error\00"
@.str173.c = internal global %nyx_string* null
@.str174 = private unnamed_addr constant [6 x i8] c"empty\00"
@.str174.c = internal global %nyx_string* null
@.str175 = private unnamed_addr constant [6 x i8] c"error\00"
@.str175.c = internal global %nyx_string* null
@.str176 = private unnamed_addr constant [7 x i8] c"return\00"
@.str176.c = internal global %nyx_string* null
@.str177 = private unnamed_addr constant [6 x i8] c"break\00"
@.str177.c = internal global %nyx_string* null
@.str178 = private unnamed_addr constant [6 x i8] c"range\00"
@.str178.c = internal global %nyx_string* null
@.str179 = private unnamed_addr constant [6 x i8] c"error\00"
@.str179.c = internal global %nyx_string* null
@.str180 = private unnamed_addr constant [6 x i8] c"error\00"
@.str180.c = internal global %nyx_string* null
@.str181 = private unnamed_addr constant [4 x i8] c"int\00"
@.str181.c = internal global %nyx_string* null
@.str182 = private unnamed_addr constant [4 x i8] c"int\00"
@.str182.c = internal global %nyx_string* null
@.str183 = private unnamed_addr constant [8 x i8] c"NYX3002\00"
@.str183.c = internal global %nyx_string* null
@.str184 = private unnamed_addr constant [28 x i8] c"rango con extremos de tipo \00"
@.str184.c = internal global %nyx_string* null
@.str185 = private unnamed_addr constant [3 x i8] c"..\00"
@.str185.c = internal global %nyx_string* null
@.str186 = private unnamed_addr constant [44 x i8] c": el intérprete solo recorre rangos de int\00"
@.str186.c = internal global %nyx_string* null
@.str187 = private unnamed_addr constant [27 x i8] c"range with bounds of type \00"
@.str187.c = internal global %nyx_string* null
@.str188 = private unnamed_addr constant [3 x i8] c"..\00"
@.str188.c = internal global %nyx_string* null
@.str189 = private unnamed_addr constant [43 x i8] c": the interpreter only iterates int ranges\00"
@.str189.c = internal global %nyx_string* null
@.str190 = private unnamed_addr constant [6 x i8] c"error\00"
@.str190.c = internal global %nyx_string* null
@.str191 = private unnamed_addr constant [7 x i8] c"return\00"
@.str191.c = internal global %nyx_string* null
@.str192 = private unnamed_addr constant [6 x i8] c"break\00"
@.str192.c = internal global %nyx_string* null
@.str193 = private unnamed_addr constant [5 x i8] c"true\00"
@.str193.c = internal global %nyx_string* null
@.str194 = private unnamed_addr constant [6 x i8] c"error\00"
@.str194.c = internal global %nyx_string* null
@.str195 = private unnamed_addr constant [6 x i8] c"array\00"
@.str195.c = internal global %nyx_string* null
@.str196 = private unnamed_addr constant [8 x i8] c"NYX3002\00"
@.str196.c = internal global %nyx_string* null
@.str197 = private unnamed_addr constant [26 x i8] c"for … in sobre el tipo \00"
@.str197.c = internal global %nyx_string* null
@.str198 = private unnamed_addr constant [62 x i8] c" no está soportado por el intérprete (solo rangos y arrays)\00"
@.str198.c = internal global %nyx_string* null
@.str199 = private unnamed_addr constant [22 x i8] c"for … in over type \00"
@.str199.c = internal global %nyx_string* null
@.str200 = private unnamed_addr constant [62 x i8] c" is not supported by the interpreter (only ranges and arrays)\00"
@.str200.c = internal global %nyx_string* null
@.str201 = private unnamed_addr constant [6 x i8] c"error\00"
@.str201.c = internal global %nyx_string* null
@.str202 = private unnamed_addr constant [7 x i8] c"return\00"
@.str202.c = internal global %nyx_string* null
@.str203 = private unnamed_addr constant [6 x i8] c"break\00"
@.str203.c = internal global %nyx_string* null
@.str204 = private unnamed_addr constant [7 x i8] c"return\00"
@.str204.c = internal global %nyx_string* null
@.str205 = private unnamed_addr constant [6 x i8] c"error\00"
@.str205.c = internal global %nyx_string* null
@.str206 = private unnamed_addr constant [9 x i8] c"function\00"
@.str206.c = internal global %nyx_string* null
@.str207 = private unnamed_addr constant [1 x i8] c"\00"
@.str207.c = internal global %nyx_string* null
@.str208 = private unnamed_addr constant [6 x i8] c"error\00"
@.str208.c = internal global %nyx_string* null
@.str209 = private unnamed_addr constant [7 x i8] c"string\00"
@.str209.c = internal global %nyx_string* null
@.str210 = private unnamed_addr constant [7 x i8] c"length\00"
@.str210.c = internal global %nyx_string* null
@.str211 = private unnamed_addr constant [12 x i8] c"char_length\00"
@.str211.c = internal global %nyx_string* null
@.str212 = private unnamed_addr constant [12 x i8] c"byte_length\00"
@.str212.c = internal global %nyx_string* null
@.str213 = private unnamed_addr constant [8 x i8] c"toUpper\00"
@.str213.c = internal global %nyx_string* null
@.str214 = private unnamed_addr constant [8 x i8] c"toLower\00"
@.str214.c = internal global %nyx_string* null
@.str215 = private unnamed_addr constant [5 x i8] c"trim\00"
@.str215.c = internal global %nyx_string* null
@.str216 = private unnamed_addr constant [8 x i8] c"indexOf\00"
@.str216.c = internal global %nyx_string* null
@.str217 = private unnamed_addr constant [6 x i8] c"error\00"
@.str217.c = internal global %nyx_string* null
@.str218 = private unnamed_addr constant [10 x i8] c"substring\00"
@.str218.c = internal global %nyx_string* null
@.str219 = private unnamed_addr constant [6 x i8] c"error\00"
@.str219.c = internal global %nyx_string* null
@.str220 = private unnamed_addr constant [6 x i8] c"error\00"
@.str220.c = internal global %nyx_string* null
@.str221 = private unnamed_addr constant [7 x i8] c"charAt\00"
@.str221.c = internal global %nyx_string* null
@.str222 = private unnamed_addr constant [6 x i8] c"error\00"
@.str222.c = internal global %nyx_string* null
@.str223 = private unnamed_addr constant [11 x i8] c"startsWith\00"
@.str223.c = internal global %nyx_string* null
@.str224 = private unnamed_addr constant [6 x i8] c"error\00"
@.str224.c = internal global %nyx_string* null
@.str225 = private unnamed_addr constant [9 x i8] c"endsWith\00"
@.str225.c = internal global %nyx_string* null
@.str226 = private unnamed_addr constant [6 x i8] c"error\00"
@.str226.c = internal global %nyx_string* null
@.str227 = private unnamed_addr constant [8 x i8] c"replace\00"
@.str227.c = internal global %nyx_string* null
@.str228 = private unnamed_addr constant [6 x i8] c"error\00"
@.str228.c = internal global %nyx_string* null
@.str229 = private unnamed_addr constant [6 x i8] c"error\00"
@.str229.c = internal global %nyx_string* null
@.str230 = private unnamed_addr constant [6 x i8] c"array\00"
@.str230.c = internal global %nyx_string* null
@.str231 = private unnamed_addr constant [7 x i8] c"length\00"
@.str231.c = internal global %nyx_string* null
@.str232 = private unnamed_addr constant [5 x i8] c"push\00"
@.str232.c = internal global %nyx_string* null
@.str233 = private unnamed_addr constant [6 x i8] c"error\00"
@.str233.c = internal global %nyx_string* null
@.str234 = private unnamed_addr constant [4 x i8] c"pop\00"
@.str234.c = internal global %nyx_string* null
@.str235 = private unnamed_addr constant [8 x i8] c"NYX3001\00"
@.str235.c = internal global %nyx_string* null
@.str236 = private unnamed_addr constant [39 x i8] c"el intérprete no soporta el método '\00"
@.str236.c = internal global %nyx_string* null
@.str237 = private unnamed_addr constant [17 x i8] c"' sobre el tipo \00"
@.str237.c = internal global %nyx_string* null
@.str238 = private unnamed_addr constant [42 x i8] c"the interpreter does not support method '\00"
@.str238.c = internal global %nyx_string* null
@.str239 = private unnamed_addr constant [11 x i8] c"' on type \00"
@.str239.c = internal global %nyx_string* null
@.str240 = private unnamed_addr constant [9 x i8] c"NYX_LANG\00"
@.str240.c = internal global %nyx_string* null
@.str241 = private unnamed_addr constant [3 x i8] c"es\00"
@.str241.c = internal global %nyx_string* null
@.str242 = private unnamed_addr constant [85 x i8] c"  el intérprete cubre un SUBCONJUNTO del lenguaje (ver cabecera de interpreter.nx);\00"
@.str242.c = internal global %nyx_string* null
@.str243 = private unnamed_addr constant [85 x i8] c"  el binario compilado (nyx build / make run) sí lo soporta si el lenguaje lo tiene\00"
@.str243.c = internal global %nyx_string* null
@.str244 = private unnamed_addr constant [79 x i8] c"  the interpreter covers a SUBSET of the language (see interpreter.nx header);\00"
@.str244.c = internal global %nyx_string* null
@.str245 = private unnamed_addr constant [84 x i8] c"  the compiled binary (nyx build / make run) does support it if the language has it\00"
@.str245.c = internal global %nyx_string* null
@.str246 = private unnamed_addr constant [6 x i8] c"print\00"
@.str246.c = internal global %nyx_string* null
@.str247 = private unnamed_addr constant [10 x i8] c"read_file\00"
@.str247.c = internal global %nyx_string* null
@.str248 = private unnamed_addr constant [14 x i8] c"include_bytes\00"
@.str248.c = internal global %nyx_string* null
@.str249 = private unnamed_addr constant [8 x i8] c"NYX3007\00"
@.str249.c = internal global %nyx_string* null
@.str250 = private unnamed_addr constant [122 x i8] c"'include_bytes' solo existe al compilar: el archivo se lee y se embebe al generar el binario. Usa 'nyx build' o 'nyx run'\00"
@.str250.c = internal global %nyx_string* null
@.str251 = private unnamed_addr constant [134 x i8] c"'include_bytes' only exists at compile time: the file is read and embedded when the binary is generated. Use 'nyx build' or 'nyx run'\00"
@.str251.c = internal global %nyx_string* null
@.str252 = private unnamed_addr constant [10 x i8] c"read_line\00"
@.str252.c = internal global %nyx_string* null
@.str253 = private unnamed_addr constant [17 x i8] c"print_no_newline\00"
@.str253.c = internal global %nyx_string* null
@.str254 = private unnamed_addr constant [8 x i8] c"NYX3003\00"
@.str254.c = internal global %nyx_string* null
@.str255 = private unnamed_addr constant [23 x i8] c"variable no definida: \00"
@.str255.c = internal global %nyx_string* null
@.str256 = private unnamed_addr constant [21 x i8] c"undefined variable: \00"
@.str256.c = internal global %nyx_string* null
@.str257 = private unnamed_addr constant [9 x i8] c"function\00"
@.str257.c = internal global %nyx_string* null
@.str258 = private unnamed_addr constant [8 x i8] c"NYX3004\00"
@.str258.c = internal global %nyx_string* null
@.str259 = private unnamed_addr constant [2 x i8] c"'\00"
@.str259.c = internal global %nyx_string* null
@.str260 = private unnamed_addr constant [21 x i8] c"' no es una función\00"
@.str260.c = internal global %nyx_string* null
@.str261 = private unnamed_addr constant [2 x i8] c"'\00"
@.str261.c = internal global %nyx_string* null
@.str262 = private unnamed_addr constant [20 x i8] c"' is not a function\00"
@.str262.c = internal global %nyx_string* null
@.str263 = private unnamed_addr constant [8 x i8] c"NYX3006\00"
@.str263.c = internal global %nyx_string* null
@.str264 = private unnamed_addr constant [2 x i8] c"'\00"
@.str264.c = internal global %nyx_string* null
@.str265 = private unnamed_addr constant [10 x i8] c"' espera \00"
@.str265.c = internal global %nyx_string* null
@.str266 = private unnamed_addr constant [25 x i8] c" argumento(s), recibió \00"
@.str266.c = internal global %nyx_string* null
@.str267 = private unnamed_addr constant [2 x i8] c"'\00"
@.str267.c = internal global %nyx_string* null
@.str268 = private unnamed_addr constant [11 x i8] c"' expects \00"
@.str268.c = internal global %nyx_string* null
@.str269 = private unnamed_addr constant [19 x i8] c" argument(s), got \00"
@.str269.c = internal global %nyx_string* null
@.str270 = private unnamed_addr constant [6 x i8] c"error\00"
@.str270.c = internal global %nyx_string* null
@.str271 = private unnamed_addr constant [7 x i8] c"return\00"
@.str271.c = internal global %nyx_string* null
@.str272 = private unnamed_addr constant [6 x i8] c"error\00"
@.str272.c = internal global %nyx_string* null
@.str273 = private unnamed_addr constant [6 x i8] c"error\00"
@.str273.c = internal global %nyx_string* null
@.str274 = private unnamed_addr constant [1 x i8] c"\00"
@.str274.c = internal global %nyx_string* null
@.str275 = private unnamed_addr constant [6 x i8] c"error\00"
@.str275.c = internal global %nyx_string* null
@.str276 = private unnamed_addr constant [1 x i8] c"\00"
@.str276.c = internal global %nyx_string* null
@.str277 = private unnamed_addr constant [1 x i8] c"\00"
@.str277.c = internal global %nyx_string* null
@.str278 = private unnamed_addr constant [4 x i8] c"nil\00"
@.str278.c = internal global %nyx_string* null
@.str279 = private unnamed_addr constant [7 x i8] c"return\00"
@.str279.c = internal global %nyx_string* null
@.str280 = private unnamed_addr constant [4 x i8] c"=> \00"
@.str280.c = internal global %nyx_string* null
@.str281 = private unnamed_addr constant [6 x i8] c"block\00"
@.str281.c = internal global %nyx_string* null
@.str282 = private unnamed_addr constant [6 x i8] c"error\00"
@.str282.c = internal global %nyx_string* null
@.str283 = private unnamed_addr constant [5 x i8] c"main\00"
@.str283.c = internal global %nyx_string* null
@.str284 = private unnamed_addr constant [5 x i8] c"main\00"
@.str284.c = internal global %nyx_string* null
@.str285 = private unnamed_addr constant [9 x i8] c"function\00"
@.str285.c = internal global %nyx_string* null
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
declare i64 @nyx_array_get_checked({ i64, i8* }*, i64, i64)
declare i64 @nyx_slot_as_array_checked({ i64, i8* }*, i64)
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
  %681 = call i64 @nyx_array_get({ i64, i8* }* %680, i64 0)
  %682 = inttoptr i64 %681 to %Environment*
  %683 = load %Environment, %Environment* %682
  %684 = alloca %Environment
  store %Environment %683, %Environment* %684
  %685 = load %Environment, %Environment* %684
  %686 = load %nyx_string*, %nyx_string** %name.ptr
  %687 = call i1 @env_has(%Environment %685, %nyx_string* %686)
  ret i1 %687
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
  %688 = getelementptr %Environment, %Environment* %env.ptr, i32 0, i32 0
  %689 = load i8*, i8** %688
  %690 = load %nyx_string*, %nyx_string** %name.ptr
  %691 = call i8* @nyx_string_to_cstr(%nyx_string* %690)
  %692 = call i1 @nyx_map_contains_str(i8* %689, i8* %691)
  br i1 %692, label %then80, label %else81
then80:
  %693 = getelementptr %Environment, %Environment* %env.ptr, i32 0, i32 0
  %694 = load i8*, i8** %693
  %695 = load %nyx_string*, %nyx_string** %name.ptr
  %696 = call i8* @nyx_string_to_cstr(%nyx_string* %695)
  %697 = call i64 @nyx_map_get_int(i8* %694, i8* %696)
  %698 = inttoptr i64 %697 to %Value*
  %699 = load %Value, %Value* %698
  ret %Value %699
else81:
  br label %merge82
merge82:
  %700 = getelementptr %Environment, %Environment* %env.ptr, i32 0, i32 1
  %701 = load { i64, i8* }*, { i64, i8* }** %700
  %702 = call i64 @nyx_array_length({ i64, i8* }* %701)
  %703 = icmp sgt i64 %702, 0
  br i1 %703, label %then83, label %else84
then83:
  %704 = getelementptr %Environment, %Environment* %env.ptr, i32 0, i32 1
  %705 = load { i64, i8* }*, { i64, i8* }** %704
  %706 = call i64 @nyx_array_get({ i64, i8* }* %705, i64 0)
  %707 = inttoptr i64 %706 to %Environment*
  %708 = load %Environment, %Environment* %707
  %709 = alloca %Environment
  store %Environment %708, %Environment* %709
  %710 = load %Environment, %Environment* %709
  %711 = load %nyx_string*, %nyx_string** %name.ptr
  %712 = call %Value @env_get(%Environment %710, %nyx_string* %711)
  ret %Value %712
else84:
  br label %merge85
merge85:
  %713 = getelementptr [8 x i8], [8 x i8]* @.str70, i32 0, i32 0
  %714 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str70.c, i8* %713, i64 7)
  %715 = getelementptr [23 x i8], [23 x i8]* @.str71, i32 0, i32 0
  %716 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str71.c, i8* %715, i64 22)
  %717 = load %nyx_string*, %nyx_string** %name.ptr
  %718 = call %nyx_string* @nyx_string_concat(%nyx_string* %716, %nyx_string* %717)
  %719 = getelementptr [21 x i8], [21 x i8]* @.str72, i32 0, i32 0
  %720 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str72.c, i8* %719, i64 20)
  %721 = load %nyx_string*, %nyx_string** %name.ptr
  %722 = call %nyx_string* @nyx_string_concat(%nyx_string* %720, %nyx_string* %721)
  %723 = call i64 @interp_err(%nyx_string* %714, %nyx_string* %718, %nyx_string* %722)
  %724 = call %Value @make_error()
  ret %Value %724
}

define internal i1 @env_set(
%Environment %env.param, %nyx_string* %name.param, %Value %value.param) {
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %value.ptr = alloca %Value
  store %Value %value.param, %Value* %value.ptr
  %725 = getelementptr %Environment, %Environment* %env.ptr, i32 0, i32 0
  %726 = load i8*, i8** %725
  %727 = load %nyx_string*, %nyx_string** %name.ptr
  %728 = call i8* @nyx_string_to_cstr(%nyx_string* %727)
  %729 = call i1 @nyx_map_contains_str(i8* %726, i8* %728)
  br i1 %729, label %then86, label %else87
then86:
  %730 = getelementptr %Environment, %Environment* %env.ptr, i32 0, i32 0
  %731 = load i8*, i8** %730
  %732 = load %nyx_string*, %nyx_string** %name.ptr
  %733 = load %Value, %Value* %value.ptr
  %734 = call i8* @nyx_string_to_cstr(%nyx_string* %732)
  %735 = getelementptr %Value, %Value* null, i32 1
  %736 = ptrtoint %Value* %735 to i64
  %737 = call i8* @GC_malloc(i64 %736)
  %738 = bitcast i8* %737 to %Value*
  store %Value %733, %Value* %738
  %739 = ptrtoint %Value* %738 to i64
  call void @nyx_map_insert_int(i8* %731, i8* %734, i64 %739)
  ret i1 1
else87:
  br label %merge88
merge88:
  %740 = getelementptr %Environment, %Environment* %env.ptr, i32 0, i32 1
  %741 = load { i64, i8* }*, { i64, i8* }** %740
  %742 = call i64 @nyx_array_length({ i64, i8* }* %741)
  %743 = icmp sgt i64 %742, 0
  br i1 %743, label %then89, label %else90
then89:
  %744 = getelementptr %Environment, %Environment* %env.ptr, i32 0, i32 1
  %745 = load { i64, i8* }*, { i64, i8* }** %744
  %746 = call i64 @nyx_array_get({ i64, i8* }* %745, i64 0)
  %747 = inttoptr i64 %746 to %Environment*
  %748 = load %Environment, %Environment* %747
  %749 = alloca %Environment
  store %Environment %748, %Environment* %749
  %750 = load %Environment, %Environment* %749
  %751 = load %nyx_string*, %nyx_string** %name.ptr
  %752 = load %Value, %Value* %value.ptr
  %753 = call i1 @env_set(%Environment %750, %nyx_string* %751, %Value %752)
  ret i1 %753
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
  %754 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %755 = call %nyx_string* @astnode_get_type({ i64, i8* }* %754)
  %756 = alloca %nyx_string*
  store %nyx_string* %755, %nyx_string** %756
  %757 = load %nyx_string*, %nyx_string** %756
  %758 = getelementptr [7 x i8], [7 x i8]* @.str73, i32 0, i32 0
  %759 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str73.c, i8* %758, i64 6)
  %760 = call i1 @nyx_string_equals(%nyx_string* %757, %nyx_string* %759)
  br i1 %760, label %then92, label %else93
then92:
  %761 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %762 = call %Value @eval_number({ i64, i8* }* %761)
  ret %Value %762
else93:
  br label %merge94
merge94:
  %763 = load %nyx_string*, %nyx_string** %756
  %764 = getelementptr [8 x i8], [8 x i8]* @.str74, i32 0, i32 0
  %765 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str74.c, i8* %764, i64 7)
  %766 = call i1 @nyx_string_equals(%nyx_string* %763, %nyx_string* %765)
  br i1 %766, label %then95, label %else96
then95:
  %767 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %768 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %767)
  %769 = alloca { i64, i8* }*
  store { i64, i8* }* %768, { i64, i8* }** %769
  %770 = load { i64, i8* }*, { i64, i8* }** %769
  %771 = call i64 @nyx_slot_as_int_checked({ i64, i8* }* %770, i64 0)
  %772 = alloca i64
  store i64 %771, i64* %772
  %773 = load i64, i64* %772
  %774 = call %Value @make_int(i64 %773)
  ret %Value %774
else96:
  br label %merge97
merge97:
  %775 = load %nyx_string*, %nyx_string** %756
  %776 = getelementptr [5 x i8], [5 x i8]* @.str75, i32 0, i32 0
  %777 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str75.c, i8* %776, i64 4)
  %778 = call i1 @nyx_string_equals(%nyx_string* %775, %nyx_string* %777)
  br i1 %778, label %then98, label %else99
then98:
  %779 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %780 = call %Value @eval_bool({ i64, i8* }* %779)
  ret %Value %780
else99:
  br label %merge100
merge100:
  %781 = load %nyx_string*, %nyx_string** %756
  %782 = getelementptr [7 x i8], [7 x i8]* @.str76, i32 0, i32 0
  %783 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str76.c, i8* %782, i64 6)
  %784 = call i1 @nyx_string_equals(%nyx_string* %781, %nyx_string* %783)
  br i1 %784, label %then101, label %else102
then101:
  %785 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %786 = call %Value @eval_string({ i64, i8* }* %785)
  ret %Value %786
else102:
  br label %merge103
merge103:
  %787 = load %nyx_string*, %nyx_string** %756
  %788 = getelementptr [11 x i8], [11 x i8]* @.str77, i32 0, i32 0
  %789 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str77.c, i8* %788, i64 10)
  %790 = call i1 @nyx_string_equals(%nyx_string* %787, %nyx_string* %789)
  br i1 %790, label %then104, label %else105
then104:
  %791 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %792 = load %Environment, %Environment* %env.ptr
  %793 = call %Value @eval_identifier({ i64, i8* }* %791, %Environment %792)
  ret %Value %793
else105:
  br label %merge106
merge106:
  %794 = load %nyx_string*, %nyx_string** %756
  %795 = getelementptr [6 x i8], [6 x i8]* @.str78, i32 0, i32 0
  %796 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str78.c, i8* %795, i64 5)
  %797 = call i1 @nyx_string_equals(%nyx_string* %794, %nyx_string* %796)
  br i1 %797, label %then107, label %else108
then107:
  %798 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %799 = load %Environment, %Environment* %env.ptr
  %800 = call %Value @eval_binop({ i64, i8* }* %798, %Environment %799)
  ret %Value %800
else108:
  br label %merge109
merge109:
  %801 = load %nyx_string*, %nyx_string** %756
  %802 = getelementptr [5 x i8], [5 x i8]* @.str79, i32 0, i32 0
  %803 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str79.c, i8* %802, i64 4)
  %804 = call i1 @nyx_string_equals(%nyx_string* %801, %nyx_string* %803)
  br i1 %804, label %then110, label %else111
then110:
  %805 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %806 = load %Environment, %Environment* %env.ptr
  %807 = call %Value @eval_unop({ i64, i8* }* %805, %Environment %806)
  ret %Value %807
else111:
  br label %merge112
merge112:
  %808 = load %nyx_string*, %nyx_string** %756
  %809 = getelementptr [5 x i8], [5 x i8]* @.str80, i32 0, i32 0
  %810 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str80.c, i8* %809, i64 4)
  %811 = call i1 @nyx_string_equals(%nyx_string* %808, %nyx_string* %810)
  br i1 %811, label %then113, label %else114
then113:
  %812 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %813 = load %Environment, %Environment* %env.ptr
  %814 = call %Value @eval_call({ i64, i8* }* %812, %Environment %813)
  ret %Value %814
else114:
  br label %merge115
merge115:
  %815 = load %nyx_string*, %nyx_string** %756
  %816 = getelementptr [6 x i8], [6 x i8]* @.str81, i32 0, i32 0
  %817 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str81.c, i8* %816, i64 5)
  %818 = call i1 @nyx_string_equals(%nyx_string* %815, %nyx_string* %817)
  br i1 %818, label %then116, label %else117
then116:
  %819 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %820 = load %Environment, %Environment* %env.ptr
  %821 = call %Value @eval_array({ i64, i8* }* %819, %Environment %820)
  ret %Value %821
else117:
  br label %merge118
merge118:
  %822 = load %nyx_string*, %nyx_string** %756
  %823 = getelementptr [6 x i8], [6 x i8]* @.str82, i32 0, i32 0
  %824 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str82.c, i8* %823, i64 5)
  %825 = call i1 @nyx_string_equals(%nyx_string* %822, %nyx_string* %824)
  br i1 %825, label %then119, label %else120
then119:
  %826 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %827 = load %Environment, %Environment* %env.ptr
  %828 = call %Value @eval_index({ i64, i8* }* %826, %Environment %827)
  ret %Value %828
else120:
  br label %merge121
merge121:
  %829 = load %nyx_string*, %nyx_string** %756
  %830 = getelementptr [12 x i8], [12 x i8]* @.str83, i32 0, i32 0
  %831 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str83.c, i8* %830, i64 11)
  %832 = call i1 @nyx_string_equals(%nyx_string* %829, %nyx_string* %831)
  br i1 %832, label %then122, label %else123
then122:
  %833 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %834 = load %Environment, %Environment* %env.ptr
  %835 = call %Value @eval_method_call({ i64, i8* }* %833, %Environment %834)
  ret %Value %835
else123:
  br label %merge124
merge124:
  %836 = getelementptr [8 x i8], [8 x i8]* @.str84, i32 0, i32 0
  %837 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str84.c, i8* %836, i64 7)
  %838 = getelementptr [45 x i8], [45 x i8]* @.str85, i32 0, i32 0
  %839 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str85.c, i8* %838, i64 44)
  %840 = load %nyx_string*, %nyx_string** %756
  %841 = call %nyx_string* @nyx_string_concat(%nyx_string* %839, %nyx_string* %840)
  %842 = getelementptr [46 x i8], [46 x i8]* @.str86, i32 0, i32 0
  %843 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str86.c, i8* %842, i64 45)
  %844 = load %nyx_string*, %nyx_string** %756
  %845 = call %nyx_string* @nyx_string_concat(%nyx_string* %843, %nyx_string* %844)
  %846 = call i64 @interp_err(%nyx_string* %837, %nyx_string* %841, %nyx_string* %845)
  %847 = call %Value @make_error()
  ret %Value %847
}

define internal %Value @eval_number(
{ i64, i8* }* %node.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %848 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %849 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %848)
  %850 = alloca { i64, i8* }*
  store { i64, i8* }* %849, { i64, i8* }** %850
  %851 = load { i64, i8* }*, { i64, i8* }** %850
  %852 = call i64 @nyx_array_get_checked({ i64, i8* }* %851, i64 0, i64 2)
  %853 = inttoptr i64 %852 to %nyx_string*
  %854 = alloca %nyx_string*
  store %nyx_string* %853, %nyx_string** %854
  %855 = load %nyx_string*, %nyx_string** %854
  %856 = getelementptr [2 x i8], [2 x i8]* @.str87, i32 0, i32 0
  %857 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str87.c, i8* %856, i64 1)
  %858 = call i64 @nyx_string_index_of(%nyx_string* %855, %nyx_string* %857)
  %859 = icmp sge i64 %858, 0
  br i1 %859, label %then125, label %else126
then125:
  %860 = load %nyx_string*, %nyx_string** %854
  %861 = call double @nyx_string_to_float(%nyx_string* %860)
  %862 = alloca double
  store double %861, double* %862
  %863 = load double, double* %862
  %864 = call %Value @make_float(double %863)
  ret %Value %864
else126:
  br label %merge127
merge127:
  %865 = load %nyx_string*, %nyx_string** %854
  %866 = getelementptr [20 x i8], [20 x i8]* @.str88, i32 0, i32 0
  %867 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str88.c, i8* %866, i64 19)
  %868 = call i1 @nyx_string_equals(%nyx_string* %865, %nyx_string* %867)
  br i1 %868, label %then128, label %else129
then128:
  %869 = sub i64 0, 9223372036854775807
  %870 = sub i64 %869, 1
  %871 = call %Value @make_int(i64 %870)
  ret %Value %871
else129:
  br label %merge130
merge130:
  %872 = load %nyx_string*, %nyx_string** %854
  %873 = call i64 @nyx_string_to_int_or(%nyx_string* %872, i64 0)
  %874 = alloca i64
  store i64 %873, i64* %874
  %875 = load i64, i64* %874
  %876 = load %nyx_string*, %nyx_string** %854
  %877 = call i64 @nyx_string_to_int_or(%nyx_string* %876, i64 1)
  %878 = icmp ne i64 %875, %877
  br i1 %878, label %then131, label %else132
then131:
  %879 = getelementptr [8 x i8], [8 x i8]* @.str89, i32 0, i32 0
  %880 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str89.c, i8* %879, i64 7)
  %881 = getelementptr [19 x i8], [19 x i8]* @.str90, i32 0, i32 0
  %882 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str90.c, i8* %881, i64 18)
  %883 = load %nyx_string*, %nyx_string** %854
  %884 = call %nyx_string* @nyx_string_concat(%nyx_string* %882, %nyx_string* %883)
  %885 = getelementptr [30 x i8], [30 x i8]* @.str91, i32 0, i32 0
  %886 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str91.c, i8* %885, i64 29)
  %887 = call %nyx_string* @nyx_string_concat(%nyx_string* %884, %nyx_string* %886)
  %888 = getelementptr [17 x i8], [17 x i8]* @.str92, i32 0, i32 0
  %889 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str92.c, i8* %888, i64 16)
  %890 = load %nyx_string*, %nyx_string** %854
  %891 = call %nyx_string* @nyx_string_concat(%nyx_string* %889, %nyx_string* %890)
  %892 = getelementptr [34 x i8], [34 x i8]* @.str93, i32 0, i32 0
  %893 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str93.c, i8* %892, i64 33)
  %894 = call %nyx_string* @nyx_string_concat(%nyx_string* %891, %nyx_string* %893)
  %895 = call i64 @interp_err(%nyx_string* %880, %nyx_string* %887, %nyx_string* %894)
  %896 = call %Value @make_error()
  ret %Value %896
else132:
  br label %merge133
merge133:
  %897 = load i64, i64* %874
  %898 = call %Value @make_int(i64 %897)
  ret %Value %898
}

define internal %Value @eval_bool(
{ i64, i8* }* %node.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %899 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %900 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %899)
  %901 = alloca { i64, i8* }*
  store { i64, i8* }* %900, { i64, i8* }** %901
  %902 = load { i64, i8* }*, { i64, i8* }** %901
  %903 = call i64 @nyx_array_get_checked({ i64, i8* }* %902, i64 0, i64 2)
  %904 = inttoptr i64 %903 to %nyx_string*
  %905 = alloca %nyx_string*
  store %nyx_string* %904, %nyx_string** %905
  %906 = load %nyx_string*, %nyx_string** %905
  %907 = getelementptr [5 x i8], [5 x i8]* @.str94, i32 0, i32 0
  %908 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str94.c, i8* %907, i64 4)
  %909 = call i1 @nyx_string_equals(%nyx_string* %906, %nyx_string* %908)
  %910 = call %Value @make_bool(i1 %909)
  ret %Value %910
}

define internal %Value @eval_string(
{ i64, i8* }* %node.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %911 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %912 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %911)
  %913 = alloca { i64, i8* }*
  store { i64, i8* }* %912, { i64, i8* }** %913
  %914 = load { i64, i8* }*, { i64, i8* }** %913
  %915 = call i64 @nyx_array_get({ i64, i8* }* %914, i64 0)
  %916 = inttoptr i64 %915 to %nyx_string*
  %917 = call %Value @make_string(%nyx_string* %916)
  ret %Value %917
}

define internal %Value @eval_identifier(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %918 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %919 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %918)
  %920 = alloca { i64, i8* }*
  store { i64, i8* }* %919, { i64, i8* }** %920
  %921 = load { i64, i8* }*, { i64, i8* }** %920
  %922 = call i64 @nyx_array_get_checked({ i64, i8* }* %921, i64 0, i64 2)
  %923 = inttoptr i64 %922 to %nyx_string*
  %924 = alloca %nyx_string*
  store %nyx_string* %923, %nyx_string** %924
  %925 = load %Environment, %Environment* %env.ptr
  %926 = load %nyx_string*, %nyx_string** %924
  %927 = call %Value @env_get(%Environment %925, %nyx_string* %926)
  ret %Value %927
}

define internal %Value @eval_binop(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %928 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %929 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %928)
  %930 = alloca { i64, i8* }*
  store { i64, i8* }* %929, { i64, i8* }** %930
  %931 = load { i64, i8* }*, { i64, i8* }** %930
  %932 = call i64 @nyx_array_get_checked({ i64, i8* }* %931, i64 0, i64 2)
  %933 = inttoptr i64 %932 to %nyx_string*
  %934 = alloca %nyx_string*
  store %nyx_string* %933, %nyx_string** %934
  %935 = load { i64, i8* }*, { i64, i8* }** %930
  %936 = call i64 @nyx_array_get({ i64, i8* }* %935, i64 1)
  %937 = inttoptr i64 %936 to { i64, i8* }*
  %938 = alloca { i64, i8* }*
  store { i64, i8* }* %937, { i64, i8* }** %938
  %939 = load { i64, i8* }*, { i64, i8* }** %938
  %940 = load %Environment, %Environment* %env.ptr
  %941 = call %Value @eval_expr({ i64, i8* }* %939, %Environment %940)
  %942 = alloca %Value
  store %Value %941, %Value* %942
  %943 = getelementptr %Value, %Value* %942, i32 0, i32 0
  %944 = load %nyx_string*, %nyx_string** %943
  %945 = getelementptr [6 x i8], [6 x i8]* @.str95, i32 0, i32 0
  %946 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str95.c, i8* %945, i64 5)
  %947 = call i1 @nyx_string_equals(%nyx_string* %944, %nyx_string* %946)
  br i1 %947, label %then134, label %else135
then134:
  %948 = load %Value, %Value* %942
  ret %Value %948
else135:
  br label %merge136
merge136:
  %949 = load { i64, i8* }*, { i64, i8* }** %930
  %950 = call i64 @nyx_array_get({ i64, i8* }* %949, i64 2)
  %951 = inttoptr i64 %950 to { i64, i8* }*
  %952 = alloca { i64, i8* }*
  store { i64, i8* }* %951, { i64, i8* }** %952
  %953 = load { i64, i8* }*, { i64, i8* }** %952
  %954 = load %Environment, %Environment* %env.ptr
  %955 = call %Value @eval_expr({ i64, i8* }* %953, %Environment %954)
  %956 = alloca %Value
  store %Value %955, %Value* %956
  %957 = getelementptr %Value, %Value* %956, i32 0, i32 0
  %958 = load %nyx_string*, %nyx_string** %957
  %959 = getelementptr [6 x i8], [6 x i8]* @.str96, i32 0, i32 0
  %960 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str96.c, i8* %959, i64 5)
  %961 = call i1 @nyx_string_equals(%nyx_string* %958, %nyx_string* %960)
  br i1 %961, label %then137, label %else138
then137:
  %962 = load %Value, %Value* %956
  ret %Value %962
else138:
  br label %merge139
merge139:
  %963 = alloca i1
  store i1 true, i1* %963
  %964 = getelementptr %Value, %Value* %942, i32 0, i32 0
  %965 = load %nyx_string*, %nyx_string** %964
  %966 = getelementptr [6 x i8], [6 x i8]* @.str97, i32 0, i32 0
  %967 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str97.c, i8* %966, i64 5)
  %968 = call i1 @nyx_string_equals(%nyx_string* %965, %nyx_string* %967)
  br i1 %968, label %sc_or_end141, label %sc_or_rhs140
sc_or_rhs140:
  %969 = getelementptr %Value, %Value* %956, i32 0, i32 0
  %970 = load %nyx_string*, %nyx_string** %969
  %971 = getelementptr [6 x i8], [6 x i8]* @.str98, i32 0, i32 0
  %972 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str98.c, i8* %971, i64 5)
  %973 = call i1 @nyx_string_equals(%nyx_string* %970, %nyx_string* %972)
  store i1 %973, i1* %963
  br label %sc_or_end141
sc_or_end141:
  %974 = load i1, i1* %963
  %975 = alloca i1
  store i1 %974, i1* %975
  %976 = load %nyx_string*, %nyx_string** %934
  %977 = getelementptr [5 x i8], [5 x i8]* @.str99, i32 0, i32 0
  %978 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str99.c, i8* %977, i64 4)
  %979 = call i1 @nyx_string_equals(%nyx_string* %976, %nyx_string* %978)
  br i1 %979, label %then142, label %else143
then142:
  %980 = getelementptr %Value, %Value* %942, i32 0, i32 0
  %981 = load %nyx_string*, %nyx_string** %980
  %982 = getelementptr [7 x i8], [7 x i8]* @.str100, i32 0, i32 0
  %983 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str100.c, i8* %982, i64 6)
  %984 = call i1 @nyx_string_equals(%nyx_string* %981, %nyx_string* %983)
  br i1 %984, label %then145, label %else146
then145:
  %985 = load %Value, %Value* %942
  %986 = call %nyx_string* @value_to_string(%Value %985)
  %987 = alloca %nyx_string*
  store %nyx_string* %986, %nyx_string** %987
  %988 = load %Value, %Value* %956
  %989 = call %nyx_string* @value_to_string(%Value %988)
  %990 = alloca %nyx_string*
  store %nyx_string* %989, %nyx_string** %990
  %991 = load %nyx_string*, %nyx_string** %987
  %992 = load %nyx_string*, %nyx_string** %990
  %993 = call %nyx_string* @nyx_string_concat(%nyx_string* %991, %nyx_string* %992)
  %994 = call %Value @make_string(%nyx_string* %993)
  ret %Value %994
else146:
  br label %merge147
merge147:
  %995 = load i1, i1* %975
  br i1 %995, label %then148, label %else149
then148:
  %996 = load %Value, %Value* %942
  %997 = call double @value_to_float(%Value %996)
  %998 = load %Value, %Value* %956
  %999 = call double @value_to_float(%Value %998)
  %1000 = fadd double %997, %999
  %1001 = call %Value @make_float(double %1000)
  ret %Value %1001
else149:
  br label %merge150
merge150:
  %1002 = load %Value, %Value* %942
  %1003 = call i64 @value_to_int(%Value %1002)
  %1004 = load %Value, %Value* %956
  %1005 = call i64 @value_to_int(%Value %1004)
  %1006 = add i64 %1003, %1005
  %1007 = call %Value @make_int(i64 %1006)
  ret %Value %1007
else143:
  br label %merge144
merge144:
  %1008 = load %nyx_string*, %nyx_string** %934
  %1009 = getelementptr [6 x i8], [6 x i8]* @.str101, i32 0, i32 0
  %1010 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str101.c, i8* %1009, i64 5)
  %1011 = call i1 @nyx_string_equals(%nyx_string* %1008, %nyx_string* %1010)
  br i1 %1011, label %then151, label %else152
then151:
  %1012 = load i1, i1* %975
  br i1 %1012, label %then154, label %else155
then154:
  %1013 = load %Value, %Value* %942
  %1014 = call double @value_to_float(%Value %1013)
  %1015 = load %Value, %Value* %956
  %1016 = call double @value_to_float(%Value %1015)
  %1017 = fsub double %1014, %1016
  %1018 = call %Value @make_float(double %1017)
  ret %Value %1018
else155:
  br label %merge156
merge156:
  %1019 = load %Value, %Value* %942
  %1020 = call i64 @value_to_int(%Value %1019)
  %1021 = load %Value, %Value* %956
  %1022 = call i64 @value_to_int(%Value %1021)
  %1023 = sub i64 %1020, %1022
  %1024 = call %Value @make_int(i64 %1023)
  ret %Value %1024
else152:
  br label %merge153
merge153:
  %1025 = load %nyx_string*, %nyx_string** %934
  %1026 = getelementptr [5 x i8], [5 x i8]* @.str102, i32 0, i32 0
  %1027 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str102.c, i8* %1026, i64 4)
  %1028 = call i1 @nyx_string_equals(%nyx_string* %1025, %nyx_string* %1027)
  br i1 %1028, label %then157, label %else158
then157:
  %1029 = load i1, i1* %975
  br i1 %1029, label %then160, label %else161
then160:
  %1030 = load %Value, %Value* %942
  %1031 = call double @value_to_float(%Value %1030)
  %1032 = load %Value, %Value* %956
  %1033 = call double @value_to_float(%Value %1032)
  %1034 = fmul double %1031, %1033
  %1035 = call %Value @make_float(double %1034)
  ret %Value %1035
else161:
  br label %merge162
merge162:
  %1036 = load %Value, %Value* %942
  %1037 = call i64 @value_to_int(%Value %1036)
  %1038 = load %Value, %Value* %956
  %1039 = call i64 @value_to_int(%Value %1038)
  %1040 = mul i64 %1037, %1039
  %1041 = call %Value @make_int(i64 %1040)
  ret %Value %1041
else158:
  br label %merge159
merge159:
  %1042 = load %nyx_string*, %nyx_string** %934
  %1043 = getelementptr [6 x i8], [6 x i8]* @.str103, i32 0, i32 0
  %1044 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str103.c, i8* %1043, i64 5)
  %1045 = call i1 @nyx_string_equals(%nyx_string* %1042, %nyx_string* %1044)
  br i1 %1045, label %then163, label %else164
then163:
  %1046 = load i1, i1* %975
  br i1 %1046, label %then166, label %else167
then166:
  %1047 = load %Value, %Value* %956
  %1048 = call double @value_to_float(%Value %1047)
  %1049 = alloca double
  store double %1048, double* %1049
  %1050 = load %Value, %Value* %942
  %1051 = call double @value_to_float(%Value %1050)
  %1052 = load double, double* %1049
  %1053 = fdiv double %1051, %1052
  %1054 = call %Value @make_float(double %1053)
  ret %Value %1054
else167:
  br label %merge168
merge168:
  %1055 = load %Value, %Value* %956
  %1056 = call i64 @value_to_int(%Value %1055)
  %1057 = alloca i64
  store i64 %1056, i64* %1057
  %1058 = load i64, i64* %1057
  %1059 = icmp ne i64 %1058, 0
  br i1 %1059, label %then169, label %else170
then169:
  %1060 = load %Value, %Value* %942
  %1061 = call i64 @value_to_int(%Value %1060)
  %1062 = load i64, i64* %1057
  %1063 = sdiv i64 %1061, %1062
  %1064 = call %Value @make_int(i64 %1063)
  ret %Value %1064
else170:
  br label %merge171
merge171:
  %1065 = getelementptr [8 x i8], [8 x i8]* @.str104, i32 0, i32 0
  %1066 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str104.c, i8* %1065, i64 7)
  %1067 = getelementptr [19 x i8], [19 x i8]* @.str105, i32 0, i32 0
  %1068 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str105.c, i8* %1067, i64 18)
  %1069 = getelementptr [17 x i8], [17 x i8]* @.str106, i32 0, i32 0
  %1070 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str106.c, i8* %1069, i64 16)
  %1071 = call i64 @interp_err(%nyx_string* %1066, %nyx_string* %1068, %nyx_string* %1070)
  %1072 = call %Value @make_error()
  ret %Value %1072
else164:
  br label %merge165
merge165:
  %1073 = load %nyx_string*, %nyx_string** %934
  %1074 = getelementptr [8 x i8], [8 x i8]* @.str107, i32 0, i32 0
  %1075 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str107.c, i8* %1074, i64 7)
  %1076 = call i1 @nyx_string_equals(%nyx_string* %1073, %nyx_string* %1075)
  br i1 %1076, label %then172, label %else173
then172:
  %1077 = load %Value, %Value* %942
  %1078 = call i64 @value_to_int(%Value %1077)
  %1079 = alloca i64
  store i64 %1078, i64* %1079
  %1080 = load %Value, %Value* %956
  %1081 = call i64 @value_to_int(%Value %1080)
  %1082 = alloca i64
  store i64 %1081, i64* %1082
  %1083 = load i64, i64* %1082
  %1084 = icmp eq i64 %1083, 0
  br i1 %1084, label %then175, label %else176
then175:
  %1085 = getelementptr [8 x i8], [8 x i8]* @.str108, i32 0, i32 0
  %1086 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str108.c, i8* %1085, i64 7)
  %1087 = getelementptr [17 x i8], [17 x i8]* @.str109, i32 0, i32 0
  %1088 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str109.c, i8* %1087, i64 16)
  %1089 = getelementptr [15 x i8], [15 x i8]* @.str110, i32 0, i32 0
  %1090 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str110.c, i8* %1089, i64 14)
  %1091 = call i64 @interp_err(%nyx_string* %1086, %nyx_string* %1088, %nyx_string* %1090)
  %1092 = call %Value @make_error()
  ret %Value %1092
else176:
  br label %merge177
merge177:
  %1093 = load i64, i64* %1079
  %1094 = load i64, i64* %1082
  %1095 = srem i64 %1093, %1094
  %1096 = call %Value @make_int(i64 %1095)
  ret %Value %1096
else173:
  br label %merge174
merge174:
  %1097 = load %nyx_string*, %nyx_string** %934
  %1098 = getelementptr [12 x i8], [12 x i8]* @.str111, i32 0, i32 0
  %1099 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str111.c, i8* %1098, i64 11)
  %1100 = call i1 @nyx_string_equals(%nyx_string* %1097, %nyx_string* %1099)
  br i1 %1100, label %then178, label %else179
then178:
  %1101 = load %Value, %Value* %942
  %1102 = load %Value, %Value* %956
  %1103 = call i1 @values_equal(%Value %1101, %Value %1102)
  %1104 = call %Value @make_bool(i1 %1103)
  ret %Value %1104
else179:
  br label %merge180
merge180:
  %1105 = load %nyx_string*, %nyx_string** %934
  %1106 = getelementptr [10 x i8], [10 x i8]* @.str112, i32 0, i32 0
  %1107 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str112.c, i8* %1106, i64 9)
  %1108 = call i1 @nyx_string_equals(%nyx_string* %1105, %nyx_string* %1107)
  br i1 %1108, label %then181, label %else182
then181:
  %1109 = load %Value, %Value* %942
  %1110 = load %Value, %Value* %956
  %1111 = call i1 @values_equal(%Value %1109, %Value %1110)
  %1112 = xor i1 %1111, true
  %1113 = call %Value @make_bool(i1 %1112)
  ret %Value %1113
else182:
  br label %merge183
merge183:
  %1114 = load %nyx_string*, %nyx_string** %934
  %1115 = getelementptr [5 x i8], [5 x i8]* @.str113, i32 0, i32 0
  %1116 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str113.c, i8* %1115, i64 4)
  %1117 = call i1 @nyx_string_equals(%nyx_string* %1114, %nyx_string* %1116)
  br i1 %1117, label %then184, label %else185
then184:
  %1118 = load i1, i1* %975
  br i1 %1118, label %then187, label %else188
then187:
  %1119 = load %Value, %Value* %942
  %1120 = call double @value_to_float(%Value %1119)
  %1121 = load %Value, %Value* %956
  %1122 = call double @value_to_float(%Value %1121)
  %1123 = fcmp olt double %1120, %1122
  %1124 = call %Value @make_bool(i1 %1123)
  ret %Value %1124
else188:
  br label %merge189
merge189:
  %1125 = load %Value, %Value* %942
  %1126 = call i64 @value_to_int(%Value %1125)
  %1127 = load %Value, %Value* %956
  %1128 = call i64 @value_to_int(%Value %1127)
  %1129 = icmp slt i64 %1126, %1128
  %1130 = call %Value @make_bool(i1 %1129)
  ret %Value %1130
else185:
  br label %merge186
merge186:
  %1131 = load %nyx_string*, %nyx_string** %934
  %1132 = getelementptr [8 x i8], [8 x i8]* @.str114, i32 0, i32 0
  %1133 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str114.c, i8* %1132, i64 7)
  %1134 = call i1 @nyx_string_equals(%nyx_string* %1131, %nyx_string* %1133)
  br i1 %1134, label %then190, label %else191
then190:
  %1135 = load i1, i1* %975
  br i1 %1135, label %then193, label %else194
then193:
  %1136 = load %Value, %Value* %942
  %1137 = call double @value_to_float(%Value %1136)
  %1138 = load %Value, %Value* %956
  %1139 = call double @value_to_float(%Value %1138)
  %1140 = fcmp ogt double %1137, %1139
  %1141 = call %Value @make_bool(i1 %1140)
  ret %Value %1141
else194:
  br label %merge195
merge195:
  %1142 = load %Value, %Value* %942
  %1143 = call i64 @value_to_int(%Value %1142)
  %1144 = load %Value, %Value* %956
  %1145 = call i64 @value_to_int(%Value %1144)
  %1146 = icmp sgt i64 %1143, %1145
  %1147 = call %Value @make_bool(i1 %1146)
  ret %Value %1147
else191:
  br label %merge192
merge192:
  %1148 = load %nyx_string*, %nyx_string** %934
  %1149 = getelementptr [11 x i8], [11 x i8]* @.str115, i32 0, i32 0
  %1150 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str115.c, i8* %1149, i64 10)
  %1151 = call i1 @nyx_string_equals(%nyx_string* %1148, %nyx_string* %1150)
  br i1 %1151, label %then196, label %else197
then196:
  %1152 = load i1, i1* %975
  br i1 %1152, label %then199, label %else200
then199:
  %1153 = load %Value, %Value* %942
  %1154 = call double @value_to_float(%Value %1153)
  %1155 = load %Value, %Value* %956
  %1156 = call double @value_to_float(%Value %1155)
  %1157 = fcmp ole double %1154, %1156
  %1158 = call %Value @make_bool(i1 %1157)
  ret %Value %1158
else200:
  br label %merge201
merge201:
  %1159 = load %Value, %Value* %942
  %1160 = call i64 @value_to_int(%Value %1159)
  %1161 = load %Value, %Value* %956
  %1162 = call i64 @value_to_int(%Value %1161)
  %1163 = icmp sle i64 %1160, %1162
  %1164 = call %Value @make_bool(i1 %1163)
  ret %Value %1164
else197:
  br label %merge198
merge198:
  %1165 = load %nyx_string*, %nyx_string** %934
  %1166 = getelementptr [14 x i8], [14 x i8]* @.str116, i32 0, i32 0
  %1167 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str116.c, i8* %1166, i64 13)
  %1168 = call i1 @nyx_string_equals(%nyx_string* %1165, %nyx_string* %1167)
  br i1 %1168, label %then202, label %else203
then202:
  %1169 = load i1, i1* %975
  br i1 %1169, label %then205, label %else206
then205:
  %1170 = load %Value, %Value* %942
  %1171 = call double @value_to_float(%Value %1170)
  %1172 = load %Value, %Value* %956
  %1173 = call double @value_to_float(%Value %1172)
  %1174 = fcmp oge double %1171, %1173
  %1175 = call %Value @make_bool(i1 %1174)
  ret %Value %1175
else206:
  br label %merge207
merge207:
  %1176 = load %Value, %Value* %942
  %1177 = call i64 @value_to_int(%Value %1176)
  %1178 = load %Value, %Value* %956
  %1179 = call i64 @value_to_int(%Value %1178)
  %1180 = icmp sge i64 %1177, %1179
  %1181 = call %Value @make_bool(i1 %1180)
  ret %Value %1181
else203:
  br label %merge204
merge204:
  %1182 = alloca i1
  store i1 true, i1* %1182
  %1183 = load %nyx_string*, %nyx_string** %934
  %1184 = getelementptr [8 x i8], [8 x i8]* @.str117, i32 0, i32 0
  %1185 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str117.c, i8* %1184, i64 7)
  %1186 = call i1 @nyx_string_equals(%nyx_string* %1183, %nyx_string* %1185)
  br i1 %1186, label %sc_or_end209, label %sc_or_rhs208
sc_or_rhs208:
  %1187 = load %nyx_string*, %nyx_string** %934
  %1188 = getelementptr [4 x i8], [4 x i8]* @.str118, i32 0, i32 0
  %1189 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str118.c, i8* %1188, i64 3)
  %1190 = call i1 @nyx_string_equals(%nyx_string* %1187, %nyx_string* %1189)
  store i1 %1190, i1* %1182
  br label %sc_or_end209
sc_or_end209:
  %1191 = load i1, i1* %1182
  br i1 %1191, label %then210, label %else211
then210:
  %1192 = alloca i1
  store i1 false, i1* %1192
  %1193 = load %Value, %Value* %942
  %1194 = call i1 @is_truthy(%Value %1193)
  br i1 %1194, label %sc_and_rhs213, label %sc_and_end214
sc_and_rhs213:
  %1195 = load %Value, %Value* %956
  %1196 = call i1 @is_truthy(%Value %1195)
  store i1 %1196, i1* %1192
  br label %sc_and_end214
sc_and_end214:
  %1197 = load i1, i1* %1192
  %1198 = call %Value @make_bool(i1 %1197)
  ret %Value %1198
else211:
  br label %merge212
merge212:
  %1199 = alloca i1
  store i1 true, i1* %1199
  %1200 = load %nyx_string*, %nyx_string** %934
  %1201 = getelementptr [6 x i8], [6 x i8]* @.str119, i32 0, i32 0
  %1202 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str119.c, i8* %1201, i64 5)
  %1203 = call i1 @nyx_string_equals(%nyx_string* %1200, %nyx_string* %1202)
  br i1 %1203, label %sc_or_end216, label %sc_or_rhs215
sc_or_rhs215:
  %1204 = load %nyx_string*, %nyx_string** %934
  %1205 = getelementptr [3 x i8], [3 x i8]* @.str120, i32 0, i32 0
  %1206 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str120.c, i8* %1205, i64 2)
  %1207 = call i1 @nyx_string_equals(%nyx_string* %1204, %nyx_string* %1206)
  store i1 %1207, i1* %1199
  br label %sc_or_end216
sc_or_end216:
  %1208 = load i1, i1* %1199
  br i1 %1208, label %then217, label %else218
then217:
  %1209 = alloca i1
  store i1 true, i1* %1209
  %1210 = load %Value, %Value* %942
  %1211 = call i1 @is_truthy(%Value %1210)
  br i1 %1211, label %sc_or_end221, label %sc_or_rhs220
sc_or_rhs220:
  %1212 = load %Value, %Value* %956
  %1213 = call i1 @is_truthy(%Value %1212)
  store i1 %1213, i1* %1209
  br label %sc_or_end221
sc_or_end221:
  %1214 = load i1, i1* %1209
  %1215 = call %Value @make_bool(i1 %1214)
  ret %Value %1215
else218:
  br label %merge219
merge219:
  %1216 = getelementptr [8 x i8], [8 x i8]* @.str121, i32 0, i32 0
  %1217 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str121.c, i8* %1216, i64 7)
  %1218 = getelementptr [24 x i8], [24 x i8]* @.str122, i32 0, i32 0
  %1219 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str122.c, i8* %1218, i64 23)
  %1220 = load %nyx_string*, %nyx_string** %934
  %1221 = call %nyx_string* @nyx_string_concat(%nyx_string* %1219, %nyx_string* %1220)
  %1222 = getelementptr [25 x i8], [25 x i8]* @.str123, i32 0, i32 0
  %1223 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str123.c, i8* %1222, i64 24)
  %1224 = load %nyx_string*, %nyx_string** %934
  %1225 = call %nyx_string* @nyx_string_concat(%nyx_string* %1223, %nyx_string* %1224)
  %1226 = call i64 @interp_err(%nyx_string* %1217, %nyx_string* %1221, %nyx_string* %1225)
  %1227 = call %Value @make_nil()
  ret %Value %1227
}

define internal %Value @eval_unop(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %1228 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1229 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %1228)
  %1230 = alloca { i64, i8* }*
  store { i64, i8* }* %1229, { i64, i8* }** %1230
  %1231 = load { i64, i8* }*, { i64, i8* }** %1230
  %1232 = call i64 @nyx_array_get_checked({ i64, i8* }* %1231, i64 0, i64 2)
  %1233 = inttoptr i64 %1232 to %nyx_string*
  %1234 = alloca %nyx_string*
  store %nyx_string* %1233, %nyx_string** %1234
  %1235 = load { i64, i8* }*, { i64, i8* }** %1230
  %1236 = call i64 @nyx_array_get({ i64, i8* }* %1235, i64 1)
  %1237 = inttoptr i64 %1236 to { i64, i8* }*
  %1238 = load %Environment, %Environment* %env.ptr
  %1239 = call %Value @eval_expr({ i64, i8* }* %1237, %Environment %1238)
  %1240 = alloca %Value
  store %Value %1239, %Value* %1240
  %1241 = getelementptr %Value, %Value* %1240, i32 0, i32 0
  %1242 = load %nyx_string*, %nyx_string** %1241
  %1243 = getelementptr [6 x i8], [6 x i8]* @.str124, i32 0, i32 0
  %1244 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str124.c, i8* %1243, i64 5)
  %1245 = call i1 @nyx_string_equals(%nyx_string* %1242, %nyx_string* %1244)
  br i1 %1245, label %then222, label %else223
then222:
  %1246 = load %Value, %Value* %1240
  ret %Value %1246
else223:
  br label %merge224
merge224:
  %1247 = load %nyx_string*, %nyx_string** %1234
  %1248 = getelementptr [6 x i8], [6 x i8]* @.str125, i32 0, i32 0
  %1249 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str125.c, i8* %1248, i64 5)
  %1250 = call i1 @nyx_string_equals(%nyx_string* %1247, %nyx_string* %1249)
  br i1 %1250, label %then225, label %else226
then225:
  %1251 = load %Value, %Value* %1240
  %1252 = call i64 @value_to_int(%Value %1251)
  %1253 = alloca i64
  store i64 %1252, i64* %1253
  %1254 = load i64, i64* %1253
  %1255 = sub i64 0, %1254
  %1256 = call %Value @make_int(i64 %1255)
  ret %Value %1256
else226:
  br label %merge227
merge227:
  %1257 = load %nyx_string*, %nyx_string** %1234
  %1258 = getelementptr [4 x i8], [4 x i8]* @.str126, i32 0, i32 0
  %1259 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str126.c, i8* %1258, i64 3)
  %1260 = call i1 @nyx_string_equals(%nyx_string* %1257, %nyx_string* %1259)
  br i1 %1260, label %then228, label %else229
then228:
  %1261 = load %Value, %Value* %1240
  %1262 = call i1 @is_truthy(%Value %1261)
  %1263 = alloca i1
  store i1 %1262, i1* %1263
  %1264 = load i1, i1* %1263
  %1265 = xor i1 %1264, true
  %1266 = call %Value @make_bool(i1 %1265)
  ret %Value %1266
else229:
  br label %merge230
merge230:
  %1267 = getelementptr [8 x i8], [8 x i8]* @.str127, i32 0, i32 0
  %1268 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str127.c, i8* %1267, i64 7)
  %1269 = getelementptr [31 x i8], [31 x i8]* @.str128, i32 0, i32 0
  %1270 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str128.c, i8* %1269, i64 30)
  %1271 = load %nyx_string*, %nyx_string** %1234
  %1272 = call %nyx_string* @nyx_string_concat(%nyx_string* %1270, %nyx_string* %1271)
  %1273 = getelementptr [31 x i8], [31 x i8]* @.str129, i32 0, i32 0
  %1274 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str129.c, i8* %1273, i64 30)
  %1275 = load %nyx_string*, %nyx_string** %1234
  %1276 = call %nyx_string* @nyx_string_concat(%nyx_string* %1274, %nyx_string* %1275)
  %1277 = call i64 @interp_err(%nyx_string* %1268, %nyx_string* %1272, %nyx_string* %1276)
  %1278 = call %Value @make_nil()
  ret %Value %1278
}

define internal %Value @eval_array(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %1279 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1280 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %1279)
  %1281 = alloca { i64, i8* }*
  store { i64, i8* }* %1280, { i64, i8* }** %1281
  %1282 = load { i64, i8* }*, { i64, i8* }** %1281
  %1283 = call i64 @nyx_array_get({ i64, i8* }* %1282, i64 0)
  %1284 = inttoptr i64 %1283 to { i64, i8* }*
  %1285 = alloca { i64, i8* }*
  store { i64, i8* }* %1284, { i64, i8* }** %1285
  %1286 = call { i64, i8* }* @nyx_array_new_ptr()
  %1287 = alloca { i64, i8* }*
  store { i64, i8* }* %1286, { i64, i8* }** %1287
  %1288 = alloca i64
  store i64 0, i64* %1288
  %1289 = getelementptr [6 x i8], [6 x i8]* @.str130, i32 0, i32 0
  %1290 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str130.c, i8* %1289, i64 5)
  %1291 = alloca %nyx_string*
  store %nyx_string* %1290, %nyx_string** %1291
  %1292 = call i8* @llvm.stacksave()
  br label %while_cond231
while_cond231:
  %1293 = load i64, i64* %1288
  %1294 = load { i64, i8* }*, { i64, i8* }** %1285
  %1295 = call i64 @nyx_array_length({ i64, i8* }* %1294)
  %1296 = icmp slt i64 %1293, %1295
  br i1 %1296, label %while_body232, label %while_end233
while_body232:
  call void @llvm.stackrestore(i8* %1292)
  %1297 = load { i64, i8* }*, { i64, i8* }** %1285
  %1298 = load i64, i64* %1288
  %1299 = call i64 @nyx_array_get({ i64, i8* }* %1297, i64 %1298)
  %1300 = inttoptr i64 %1299 to { i64, i8* }*
  %1301 = alloca { i64, i8* }*
  store { i64, i8* }* %1300, { i64, i8* }** %1301
  %1302 = load { i64, i8* }*, { i64, i8* }** %1301
  %1303 = load %Environment, %Environment* %env.ptr
  %1304 = call %Value @eval_expr({ i64, i8* }* %1302, %Environment %1303)
  %1305 = alloca %Value
  store %Value %1304, %Value* %1305
  %1306 = getelementptr %Value, %Value* %1305, i32 0, i32 0
  %1307 = load %nyx_string*, %nyx_string** %1306
  %1308 = load %nyx_string*, %nyx_string** %1291
  %1309 = call i1 @nyx_string_equals(%nyx_string* %1307, %nyx_string* %1308)
  br i1 %1309, label %then234, label %else235
then234:
  %1310 = load %Value, %Value* %1305
  ret %Value %1310
else235:
  br label %merge236
merge236:
  %1311 = load { i64, i8* }*, { i64, i8* }** %1287
  %1312 = load %Value, %Value* %1305
  %1313 = getelementptr %Value, %Value* null, i32 1
  %1314 = ptrtoint %Value* %1313 to i64
  %1315 = call i8* @GC_malloc(i64 %1314)
  %1316 = bitcast i8* %1315 to %Value*
  store %Value %1312, %Value* %1316
  %1317 = ptrtoint %Value* %1316 to i64
  call void @nyx_array_push({ i64, i8* }* %1311, i64 %1317)
  %1318 = load i64, i64* %1288
  %1319 = add i64 %1318, 1
  store i64 %1319, i64* %1288
  br label %while_cond231
while_end233:
  %1320 = load { i64, i8* }*, { i64, i8* }** %1287
  %1321 = call %Value @make_array({ i64, i8* }* %1320)
  ret %Value %1321
}

define internal %Value @eval_index(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %1322 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1323 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %1322)
  %1324 = alloca { i64, i8* }*
  store { i64, i8* }* %1323, { i64, i8* }** %1324
  %1325 = load { i64, i8* }*, { i64, i8* }** %1324
  %1326 = call i64 @nyx_array_get({ i64, i8* }* %1325, i64 0)
  %1327 = inttoptr i64 %1326 to { i64, i8* }*
  %1328 = load %Environment, %Environment* %env.ptr
  %1329 = call %Value @eval_expr({ i64, i8* }* %1327, %Environment %1328)
  %1330 = alloca %Value
  store %Value %1329, %Value* %1330
  %1331 = getelementptr %Value, %Value* %1330, i32 0, i32 0
  %1332 = load %nyx_string*, %nyx_string** %1331
  %1333 = getelementptr [6 x i8], [6 x i8]* @.str131, i32 0, i32 0
  %1334 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str131.c, i8* %1333, i64 5)
  %1335 = call i1 @nyx_string_equals(%nyx_string* %1332, %nyx_string* %1334)
  br i1 %1335, label %then237, label %else238
then237:
  %1336 = load %Value, %Value* %1330
  ret %Value %1336
else238:
  br label %merge239
merge239:
  %1337 = load { i64, i8* }*, { i64, i8* }** %1324
  %1338 = call i64 @nyx_array_get({ i64, i8* }* %1337, i64 1)
  %1339 = inttoptr i64 %1338 to { i64, i8* }*
  %1340 = load %Environment, %Environment* %env.ptr
  %1341 = call %Value @eval_expr({ i64, i8* }* %1339, %Environment %1340)
  %1342 = alloca %Value
  store %Value %1341, %Value* %1342
  %1343 = getelementptr %Value, %Value* %1342, i32 0, i32 0
  %1344 = load %nyx_string*, %nyx_string** %1343
  %1345 = getelementptr [6 x i8], [6 x i8]* @.str132, i32 0, i32 0
  %1346 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str132.c, i8* %1345, i64 5)
  %1347 = call i1 @nyx_string_equals(%nyx_string* %1344, %nyx_string* %1346)
  br i1 %1347, label %then240, label %else241
then240:
  %1348 = load %Value, %Value* %1342
  ret %Value %1348
else241:
  br label %merge242
merge242:
  %1349 = getelementptr %Value, %Value* %1330, i32 0, i32 0
  %1350 = load %nyx_string*, %nyx_string** %1349
  %1351 = getelementptr [6 x i8], [6 x i8]* @.str133, i32 0, i32 0
  %1352 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str133.c, i8* %1351, i64 5)
  %1353 = call i1 @nyx_string_equals(%nyx_string* %1350, %nyx_string* %1352)
  %1354 = xor i1 %1353, true
  br i1 %1354, label %then243, label %else244
then243:
  %1355 = getelementptr [8 x i8], [8 x i8]* @.str134, i32 0, i32 0
  %1356 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str134.c, i8* %1355, i64 7)
  %1357 = getelementptr [56 x i8], [56 x i8]* @.str135, i32 0, i32 0
  %1358 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str135.c, i8* %1357, i64 55)
  %1359 = getelementptr %Value, %Value* %1330, i32 0, i32 0
  %1360 = load %nyx_string*, %nyx_string** %1359
  %1361 = call %nyx_string* @nyx_string_concat(%nyx_string* %1358, %nyx_string* %1360)
  %1362 = getelementptr [51 x i8], [51 x i8]* @.str136, i32 0, i32 0
  %1363 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str136.c, i8* %1362, i64 50)
  %1364 = getelementptr %Value, %Value* %1330, i32 0, i32 0
  %1365 = load %nyx_string*, %nyx_string** %1364
  %1366 = call %nyx_string* @nyx_string_concat(%nyx_string* %1363, %nyx_string* %1365)
  %1367 = call i64 @interp_err(%nyx_string* %1356, %nyx_string* %1361, %nyx_string* %1366)
  %1368 = call %Value @make_error()
  ret %Value %1368
else244:
  br label %merge245
merge245:
  %1369 = getelementptr %Value, %Value* %1330, i32 0, i32 5
  %1370 = load { i64, i8* }*, { i64, i8* }** %1369
  %1371 = alloca { i64, i8* }*
  store { i64, i8* }* %1370, { i64, i8* }** %1371
  %1372 = load %Value, %Value* %1342
  %1373 = call i64 @value_to_int(%Value %1372)
  %1374 = alloca i64
  store i64 %1373, i64* %1374
  %1375 = alloca i1
  store i1 false, i1* %1375
  %1376 = load i64, i64* %1374
  %1377 = icmp sge i64 %1376, 0
  br i1 %1377, label %sc_and_rhs246, label %sc_and_end247
sc_and_rhs246:
  %1378 = load i64, i64* %1374
  %1379 = load { i64, i8* }*, { i64, i8* }** %1371
  %1380 = call i64 @nyx_array_length({ i64, i8* }* %1379)
  %1381 = icmp slt i64 %1378, %1380
  store i1 %1381, i1* %1375
  br label %sc_and_end247
sc_and_end247:
  %1382 = load i1, i1* %1375
  br i1 %1382, label %then248, label %else249
then248:
  %1383 = load { i64, i8* }*, { i64, i8* }** %1371
  %1384 = load i64, i64* %1374
  %1385 = call i64 @nyx_array_get({ i64, i8* }* %1383, i64 %1384)
  %1386 = inttoptr i64 %1385 to %Value*
  %1387 = load %Value, %Value* %1386
  %1388 = alloca %Value
  store %Value %1387, %Value* %1388
  %1389 = load %Value, %Value* %1388
  ret %Value %1389
else249:
  br label %merge250
merge250:
  %1390 = getelementptr [8 x i8], [8 x i8]* @.str137, i32 0, i32 0
  %1391 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str137.c, i8* %1390, i64 7)
  %1392 = getelementptr [23 x i8], [23 x i8]* @.str138, i32 0, i32 0
  %1393 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str138.c, i8* %1392, i64 22)
  %1394 = getelementptr [19 x i8], [19 x i8]* @.str139, i32 0, i32 0
  %1395 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str139.c, i8* %1394, i64 18)
  %1396 = call i64 @interp_err(%nyx_string* %1391, %nyx_string* %1393, %nyx_string* %1395)
  %1397 = call %Value @make_error()
  ret %Value %1397
}

define internal %Value @eval_stmt(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %1398 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1399 = call %nyx_string* @astnode_get_type({ i64, i8* }* %1398)
  %1400 = alloca %nyx_string*
  store %nyx_string* %1399, %nyx_string** %1400
  %1401 = load %nyx_string*, %nyx_string** %1400
  %1402 = getelementptr [4 x i8], [4 x i8]* @.str140, i32 0, i32 0
  %1403 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str140.c, i8* %1402, i64 3)
  %1404 = call i1 @nyx_string_equals(%nyx_string* %1401, %nyx_string* %1403)
  br i1 %1404, label %then251, label %else252
then251:
  %1405 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1406 = load %Environment, %Environment* %env.ptr
  %1407 = call %Value @eval_let({ i64, i8* }* %1405, %Environment %1406)
  ret %Value %1407
else252:
  br label %merge253
merge253:
  %1408 = load %nyx_string*, %nyx_string** %1400
  %1409 = getelementptr [4 x i8], [4 x i8]* @.str141, i32 0, i32 0
  %1410 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str141.c, i8* %1409, i64 3)
  %1411 = call i1 @nyx_string_equals(%nyx_string* %1408, %nyx_string* %1410)
  br i1 %1411, label %then254, label %else255
then254:
  %1412 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1413 = load %Environment, %Environment* %env.ptr
  %1414 = call %Value @eval_let({ i64, i8* }* %1412, %Environment %1413)
  ret %Value %1414
else255:
  br label %merge256
merge256:
  %1415 = load %nyx_string*, %nyx_string** %1400
  %1416 = getelementptr [7 x i8], [7 x i8]* @.str142, i32 0, i32 0
  %1417 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str142.c, i8* %1416, i64 6)
  %1418 = call i1 @nyx_string_equals(%nyx_string* %1415, %nyx_string* %1417)
  br i1 %1418, label %then257, label %else258
then257:
  %1419 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1420 = load %Environment, %Environment* %env.ptr
  %1421 = call %Value @eval_assign({ i64, i8* }* %1419, %Environment %1420)
  ret %Value %1421
else258:
  br label %merge259
merge259:
  %1422 = load %nyx_string*, %nyx_string** %1400
  %1423 = getelementptr [3 x i8], [3 x i8]* @.str143, i32 0, i32 0
  %1424 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str143.c, i8* %1423, i64 2)
  %1425 = call i1 @nyx_string_equals(%nyx_string* %1422, %nyx_string* %1424)
  br i1 %1425, label %then260, label %else261
then260:
  %1426 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1427 = load %Environment, %Environment* %env.ptr
  %1428 = call %Value @eval_if({ i64, i8* }* %1426, %Environment %1427)
  ret %Value %1428
else261:
  br label %merge262
merge262:
  %1429 = load %nyx_string*, %nyx_string** %1400
  %1430 = getelementptr [6 x i8], [6 x i8]* @.str144, i32 0, i32 0
  %1431 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str144.c, i8* %1430, i64 5)
  %1432 = call i1 @nyx_string_equals(%nyx_string* %1429, %nyx_string* %1431)
  br i1 %1432, label %then263, label %else264
then263:
  %1433 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1434 = load %Environment, %Environment* %env.ptr
  %1435 = call %Value @eval_while({ i64, i8* }* %1433, %Environment %1434)
  ret %Value %1435
else264:
  br label %merge265
merge265:
  %1436 = load %nyx_string*, %nyx_string** %1400
  %1437 = getelementptr [4 x i8], [4 x i8]* @.str145, i32 0, i32 0
  %1438 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str145.c, i8* %1437, i64 3)
  %1439 = call i1 @nyx_string_equals(%nyx_string* %1436, %nyx_string* %1438)
  br i1 %1439, label %then266, label %else267
then266:
  %1440 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1441 = load %Environment, %Environment* %env.ptr
  %1442 = call %Value @eval_for({ i64, i8* }* %1440, %Environment %1441)
  ret %Value %1442
else267:
  br label %merge268
merge268:
  %1443 = load %nyx_string*, %nyx_string** %1400
  %1444 = getelementptr [7 x i8], [7 x i8]* @.str146, i32 0, i32 0
  %1445 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str146.c, i8* %1444, i64 6)
  %1446 = call i1 @nyx_string_equals(%nyx_string* %1443, %nyx_string* %1445)
  br i1 %1446, label %then269, label %else270
then269:
  %1447 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1448 = load %Environment, %Environment* %env.ptr
  %1449 = call %Value @eval_return({ i64, i8* }* %1447, %Environment %1448)
  ret %Value %1449
else270:
  br label %merge271
merge271:
  %1450 = load %nyx_string*, %nyx_string** %1400
  %1451 = getelementptr [6 x i8], [6 x i8]* @.str147, i32 0, i32 0
  %1452 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str147.c, i8* %1451, i64 5)
  %1453 = call i1 @nyx_string_equals(%nyx_string* %1450, %nyx_string* %1452)
  br i1 %1453, label %then272, label %else273
then272:
  %1454 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1455 = load %Environment, %Environment* %env.ptr
  %1456 = call %Value @eval_block({ i64, i8* }* %1454, %Environment %1455)
  ret %Value %1456
else273:
  br label %merge274
merge274:
  %1457 = load %nyx_string*, %nyx_string** %1400
  %1458 = getelementptr [9 x i8], [9 x i8]* @.str148, i32 0, i32 0
  %1459 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str148.c, i8* %1458, i64 8)
  %1460 = call i1 @nyx_string_equals(%nyx_string* %1457, %nyx_string* %1459)
  br i1 %1460, label %then275, label %else276
then275:
  %1461 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1462 = load %Environment, %Environment* %env.ptr
  %1463 = call %Value @eval_function_decl({ i64, i8* }* %1461, %Environment %1462)
  ret %Value %1463
else276:
  br label %merge277
merge277:
  %1464 = load %nyx_string*, %nyx_string** %1400
  %1465 = getelementptr [13 x i8], [13 x i8]* @.str149, i32 0, i32 0
  %1466 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str149.c, i8* %1465, i64 12)
  %1467 = call i1 @nyx_string_equals(%nyx_string* %1464, %nyx_string* %1466)
  br i1 %1467, label %then278, label %else279
then278:
  %1468 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1469 = load %Environment, %Environment* %env.ptr
  %1470 = call %Value @eval_index_assign({ i64, i8* }* %1468, %Environment %1469)
  ret %Value %1470
else279:
  br label %merge280
merge280:
  %1471 = load %nyx_string*, %nyx_string** %1400
  %1472 = getelementptr [13 x i8], [13 x i8]* @.str150, i32 0, i32 0
  %1473 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str150.c, i8* %1472, i64 12)
  %1474 = call i1 @nyx_string_equals(%nyx_string* %1471, %nyx_string* %1473)
  br i1 %1474, label %then281, label %else282
then281:
  %1475 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1476 = load %Environment, %Environment* %env.ptr
  %1477 = call %Value @eval_field_assign({ i64, i8* }* %1475, %Environment %1476)
  ret %Value %1477
else282:
  br label %merge283
merge283:
  %1478 = load %nyx_string*, %nyx_string** %1400
  %1479 = getelementptr [6 x i8], [6 x i8]* @.str151, i32 0, i32 0
  %1480 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str151.c, i8* %1479, i64 5)
  %1481 = call i1 @nyx_string_equals(%nyx_string* %1478, %nyx_string* %1480)
  br i1 %1481, label %then284, label %else285
then284:
  %1482 = getelementptr [6 x i8], [6 x i8]* @.str152, i32 0, i32 0
  %1483 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str152.c, i8* %1482, i64 5)
  %1484 = call %Value @make_control(%nyx_string* %1483)
  ret %Value %1484
else285:
  br label %merge286
merge286:
  %1485 = load %nyx_string*, %nyx_string** %1400
  %1486 = getelementptr [9 x i8], [9 x i8]* @.str153, i32 0, i32 0
  %1487 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str153.c, i8* %1486, i64 8)
  %1488 = call i1 @nyx_string_equals(%nyx_string* %1485, %nyx_string* %1487)
  br i1 %1488, label %then287, label %else288
then287:
  %1489 = getelementptr [9 x i8], [9 x i8]* @.str154, i32 0, i32 0
  %1490 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str154.c, i8* %1489, i64 8)
  %1491 = call %Value @make_control(%nyx_string* %1490)
  ret %Value %1491
else288:
  br label %merge289
merge289:
  %1492 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1493 = load %Environment, %Environment* %env.ptr
  %1494 = call %Value @eval_expr({ i64, i8* }* %1492, %Environment %1493)
  ret %Value %1494
}

define internal %Value @eval_let(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %1495 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1496 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %1495)
  %1497 = alloca { i64, i8* }*
  store { i64, i8* }* %1496, { i64, i8* }** %1497
  %1498 = load { i64, i8* }*, { i64, i8* }** %1497
  %1499 = call i64 @nyx_array_get({ i64, i8* }* %1498, i64 0)
  %1500 = inttoptr i64 %1499 to { i64, i8* }*
  %1501 = alloca { i64, i8* }*
  store { i64, i8* }* %1500, { i64, i8* }** %1501
  %1502 = load { i64, i8* }*, { i64, i8* }** %1501
  %1503 = call %nyx_string* @astnode_get_type({ i64, i8* }* %1502)
  %1504 = alloca %nyx_string*
  store %nyx_string* %1503, %nyx_string** %1504
  %1505 = load { i64, i8* }*, { i64, i8* }** %1497
  %1506 = call i64 @nyx_array_get({ i64, i8* }* %1505, i64 2)
  %1507 = inttoptr i64 %1506 to { i64, i8* }*
  %1508 = alloca { i64, i8* }*
  store { i64, i8* }* %1507, { i64, i8* }** %1508
  %1509 = load { i64, i8* }*, { i64, i8* }** %1508
  %1510 = load %Environment, %Environment* %env.ptr
  %1511 = call %Value @eval_expr({ i64, i8* }* %1509, %Environment %1510)
  %1512 = alloca %Value
  store %Value %1511, %Value* %1512
  %1513 = getelementptr %Value, %Value* %1512, i32 0, i32 0
  %1514 = load %nyx_string*, %nyx_string** %1513
  %1515 = getelementptr [6 x i8], [6 x i8]* @.str155, i32 0, i32 0
  %1516 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str155.c, i8* %1515, i64 5)
  %1517 = call i1 @nyx_string_equals(%nyx_string* %1514, %nyx_string* %1516)
  br i1 %1517, label %then290, label %else291
then290:
  %1518 = load %Value, %Value* %1512
  ret %Value %1518
else291:
  br label %merge292
merge292:
  %1519 = load %Environment, %Environment* %env.ptr
  %1520 = load %nyx_string*, %nyx_string** %1504
  %1521 = load %Value, %Value* %1512
  %1522 = call i64 @env_define(%Environment %1519, %nyx_string* %1520, %Value %1521)
  %1523 = call %Value @make_nil()
  ret %Value %1523
}

define internal %Value @eval_assign(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %1524 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1525 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %1524)
  %1526 = alloca { i64, i8* }*
  store { i64, i8* }* %1525, { i64, i8* }** %1526
  %1527 = load { i64, i8* }*, { i64, i8* }** %1526
  %1528 = call i64 @nyx_array_get({ i64, i8* }* %1527, i64 0)
  %1529 = inttoptr i64 %1528 to { i64, i8* }*
  %1530 = alloca { i64, i8* }*
  store { i64, i8* }* %1529, { i64, i8* }** %1530
  %1531 = load { i64, i8* }*, { i64, i8* }** %1530
  %1532 = call %nyx_string* @astnode_get_type({ i64, i8* }* %1531)
  %1533 = alloca %nyx_string*
  store %nyx_string* %1532, %nyx_string** %1533
  %1534 = load { i64, i8* }*, { i64, i8* }** %1526
  %1535 = call i64 @nyx_array_get({ i64, i8* }* %1534, i64 1)
  %1536 = inttoptr i64 %1535 to { i64, i8* }*
  %1537 = load %Environment, %Environment* %env.ptr
  %1538 = call %Value @eval_expr({ i64, i8* }* %1536, %Environment %1537)
  %1539 = alloca %Value
  store %Value %1538, %Value* %1539
  %1540 = getelementptr %Value, %Value* %1539, i32 0, i32 0
  %1541 = load %nyx_string*, %nyx_string** %1540
  %1542 = getelementptr [6 x i8], [6 x i8]* @.str156, i32 0, i32 0
  %1543 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str156.c, i8* %1542, i64 5)
  %1544 = call i1 @nyx_string_equals(%nyx_string* %1541, %nyx_string* %1543)
  br i1 %1544, label %then293, label %else294
then293:
  %1545 = load %Value, %Value* %1539
  ret %Value %1545
else294:
  br label %merge295
merge295:
  %1546 = load %Environment, %Environment* %env.ptr
  %1547 = load %nyx_string*, %nyx_string** %1533
  %1548 = load %Value, %Value* %1539
  %1549 = call i1 @env_set(%Environment %1546, %nyx_string* %1547, %Value %1548)
  %1550 = xor i1 %1549, true
  br i1 %1550, label %then296, label %else297
then296:
  %1551 = getelementptr [8 x i8], [8 x i8]* @.str157, i32 0, i32 0
  %1552 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str157.c, i8* %1551, i64 7)
  %1553 = getelementptr [23 x i8], [23 x i8]* @.str158, i32 0, i32 0
  %1554 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str158.c, i8* %1553, i64 22)
  %1555 = load %nyx_string*, %nyx_string** %1533
  %1556 = call %nyx_string* @nyx_string_concat(%nyx_string* %1554, %nyx_string* %1555)
  %1557 = getelementptr [21 x i8], [21 x i8]* @.str159, i32 0, i32 0
  %1558 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str159.c, i8* %1557, i64 20)
  %1559 = load %nyx_string*, %nyx_string** %1533
  %1560 = call %nyx_string* @nyx_string_concat(%nyx_string* %1558, %nyx_string* %1559)
  %1561 = call i64 @interp_err(%nyx_string* %1552, %nyx_string* %1556, %nyx_string* %1560)
  %1562 = call %Value @make_error()
  ret %Value %1562
else297:
  br label %merge298
merge298:
  %1563 = call %Value @make_nil()
  ret %Value %1563
}

define internal %Value @eval_index_assign(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %1564 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1565 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %1564)
  %1566 = alloca { i64, i8* }*
  store { i64, i8* }* %1565, { i64, i8* }** %1566
  %1567 = load { i64, i8* }*, { i64, i8* }** %1566
  %1568 = call i64 @nyx_array_get({ i64, i8* }* %1567, i64 0)
  %1569 = inttoptr i64 %1568 to { i64, i8* }*
  %1570 = alloca { i64, i8* }*
  store { i64, i8* }* %1569, { i64, i8* }** %1570
  %1571 = load { i64, i8* }*, { i64, i8* }** %1566
  %1572 = call i64 @nyx_array_get({ i64, i8* }* %1571, i64 1)
  %1573 = inttoptr i64 %1572 to { i64, i8* }*
  %1574 = alloca { i64, i8* }*
  store { i64, i8* }* %1573, { i64, i8* }** %1574
  %1575 = load { i64, i8* }*, { i64, i8* }** %1566
  %1576 = call i64 @nyx_array_get({ i64, i8* }* %1575, i64 2)
  %1577 = inttoptr i64 %1576 to { i64, i8* }*
  %1578 = alloca { i64, i8* }*
  store { i64, i8* }* %1577, { i64, i8* }** %1578
  %1579 = load { i64, i8* }*, { i64, i8* }** %1570
  %1580 = load %Environment, %Environment* %env.ptr
  %1581 = call %Value @eval_expr({ i64, i8* }* %1579, %Environment %1580)
  %1582 = alloca %Value
  store %Value %1581, %Value* %1582
  %1583 = getelementptr %Value, %Value* %1582, i32 0, i32 0
  %1584 = load %nyx_string*, %nyx_string** %1583
  %1585 = getelementptr [6 x i8], [6 x i8]* @.str160, i32 0, i32 0
  %1586 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str160.c, i8* %1585, i64 5)
  %1587 = call i1 @nyx_string_equals(%nyx_string* %1584, %nyx_string* %1586)
  br i1 %1587, label %then299, label %else300
then299:
  %1588 = load %Value, %Value* %1582
  ret %Value %1588
else300:
  br label %merge301
merge301:
  %1589 = load { i64, i8* }*, { i64, i8* }** %1574
  %1590 = load %Environment, %Environment* %env.ptr
  %1591 = call %Value @eval_expr({ i64, i8* }* %1589, %Environment %1590)
  %1592 = alloca %Value
  store %Value %1591, %Value* %1592
  %1593 = getelementptr %Value, %Value* %1592, i32 0, i32 0
  %1594 = load %nyx_string*, %nyx_string** %1593
  %1595 = getelementptr [6 x i8], [6 x i8]* @.str161, i32 0, i32 0
  %1596 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str161.c, i8* %1595, i64 5)
  %1597 = call i1 @nyx_string_equals(%nyx_string* %1594, %nyx_string* %1596)
  br i1 %1597, label %then302, label %else303
then302:
  %1598 = load %Value, %Value* %1592
  ret %Value %1598
else303:
  br label %merge304
merge304:
  %1599 = load { i64, i8* }*, { i64, i8* }** %1578
  %1600 = load %Environment, %Environment* %env.ptr
  %1601 = call %Value @eval_expr({ i64, i8* }* %1599, %Environment %1600)
  %1602 = alloca %Value
  store %Value %1601, %Value* %1602
  %1603 = getelementptr %Value, %Value* %1602, i32 0, i32 0
  %1604 = load %nyx_string*, %nyx_string** %1603
  %1605 = getelementptr [6 x i8], [6 x i8]* @.str162, i32 0, i32 0
  %1606 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str162.c, i8* %1605, i64 5)
  %1607 = call i1 @nyx_string_equals(%nyx_string* %1604, %nyx_string* %1606)
  br i1 %1607, label %then305, label %else306
then305:
  %1608 = load %Value, %Value* %1602
  ret %Value %1608
else306:
  br label %merge307
merge307:
  %1609 = getelementptr %Value, %Value* %1582, i32 0, i32 0
  %1610 = load %nyx_string*, %nyx_string** %1609
  %1611 = getelementptr [6 x i8], [6 x i8]* @.str163, i32 0, i32 0
  %1612 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str163.c, i8* %1611, i64 5)
  %1613 = call i1 @nyx_string_equals(%nyx_string* %1610, %nyx_string* %1612)
  br i1 %1613, label %then308, label %else309
then308:
  %1614 = getelementptr %Value, %Value* %1582, i32 0, i32 5
  %1615 = load { i64, i8* }*, { i64, i8* }** %1614
  %1616 = alloca { i64, i8* }*
  store { i64, i8* }* %1615, { i64, i8* }** %1616
  %1617 = load %Value, %Value* %1592
  %1618 = call i64 @value_to_int(%Value %1617)
  %1619 = alloca i64
  store i64 %1618, i64* %1619
  %1620 = alloca i1
  store i1 false, i1* %1620
  %1621 = load i64, i64* %1619
  %1622 = icmp sge i64 %1621, 0
  br i1 %1622, label %sc_and_rhs311, label %sc_and_end312
sc_and_rhs311:
  %1623 = load i64, i64* %1619
  %1624 = load { i64, i8* }*, { i64, i8* }** %1616
  %1625 = call i64 @nyx_array_length({ i64, i8* }* %1624)
  %1626 = icmp slt i64 %1623, %1625
  store i1 %1626, i1* %1620
  br label %sc_and_end312
sc_and_end312:
  %1627 = load i1, i1* %1620
  br i1 %1627, label %then313, label %else314
then313:
  %1628 = load { i64, i8* }*, { i64, i8* }** %1616
  %1629 = load i64, i64* %1619
  %1630 = load %Value, %Value* %1602
  %1631 = getelementptr %Value, %Value* null, i32 1
  %1632 = ptrtoint %Value* %1631 to i64
  %1633 = call i8* @GC_malloc(i64 %1632)
  %1634 = bitcast i8* %1633 to %Value*
  store %Value %1630, %Value* %1634
  %1635 = ptrtoint %Value* %1634 to i64
  call void @nyx_array_set({ i64, i8* }* %1628, i64 %1629, i64 %1635)
  br label %merge315
else314:
  %1636 = getelementptr [8 x i8], [8 x i8]* @.str164, i32 0, i32 0
  %1637 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str164.c, i8* %1636, i64 7)
  %1638 = getelementptr [38 x i8], [38 x i8]* @.str165, i32 0, i32 0
  %1639 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str165.c, i8* %1638, i64 37)
  %1640 = getelementptr [33 x i8], [33 x i8]* @.str166, i32 0, i32 0
  %1641 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str166.c, i8* %1640, i64 32)
  %1642 = call i64 @interp_err(%nyx_string* %1637, %nyx_string* %1639, %nyx_string* %1641)
  %1643 = call %Value @make_error()
  ret %Value %1643
merge315:
  br label %merge310
else309:
  %1644 = getelementptr [8 x i8], [8 x i8]* @.str167, i32 0, i32 0
  %1645 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str167.c, i8* %1644, i64 7)
  %1646 = getelementptr [38 x i8], [38 x i8]* @.str168, i32 0, i32 0
  %1647 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str168.c, i8* %1646, i64 37)
  %1648 = getelementptr %Value, %Value* %1582, i32 0, i32 0
  %1649 = load %nyx_string*, %nyx_string** %1648
  %1650 = call %nyx_string* @nyx_string_concat(%nyx_string* %1647, %nyx_string* %1649)
  %1651 = getelementptr [35 x i8], [35 x i8]* @.str169, i32 0, i32 0
  %1652 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str169.c, i8* %1651, i64 34)
  %1653 = getelementptr %Value, %Value* %1582, i32 0, i32 0
  %1654 = load %nyx_string*, %nyx_string** %1653
  %1655 = call %nyx_string* @nyx_string_concat(%nyx_string* %1652, %nyx_string* %1654)
  %1656 = call i64 @interp_err(%nyx_string* %1645, %nyx_string* %1650, %nyx_string* %1655)
  %1657 = call %Value @make_error()
  ret %Value %1657
merge310:
  %1658 = call %Value @make_nil()
  ret %Value %1658
}

define internal %Value @eval_field_assign(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %1659 = getelementptr [8 x i8], [8 x i8]* @.str170, i32 0, i32 0
  %1660 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str170.c, i8* %1659, i64 7)
  %1661 = getelementptr [45 x i8], [45 x i8]* @.str171, i32 0, i32 0
  %1662 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str171.c, i8* %1661, i64 44)
  %1663 = getelementptr [46 x i8], [46 x i8]* @.str172, i32 0, i32 0
  %1664 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str172.c, i8* %1663, i64 45)
  %1665 = call i64 @interp_err(%nyx_string* %1660, %nyx_string* %1662, %nyx_string* %1664)
  %1666 = call %Value @make_error()
  ret %Value %1666
}

define internal %Value @eval_if(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %1667 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1668 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %1667)
  %1669 = alloca { i64, i8* }*
  store { i64, i8* }* %1668, { i64, i8* }** %1669
  %1670 = load { i64, i8* }*, { i64, i8* }** %1669
  %1671 = call i64 @nyx_array_get({ i64, i8* }* %1670, i64 0)
  %1672 = inttoptr i64 %1671 to { i64, i8* }*
  %1673 = alloca { i64, i8* }*
  store { i64, i8* }* %1672, { i64, i8* }** %1673
  %1674 = load { i64, i8* }*, { i64, i8* }** %1673
  %1675 = load %Environment, %Environment* %env.ptr
  %1676 = call %Value @eval_expr({ i64, i8* }* %1674, %Environment %1675)
  %1677 = alloca %Value
  store %Value %1676, %Value* %1677
  %1678 = getelementptr %Value, %Value* %1677, i32 0, i32 0
  %1679 = load %nyx_string*, %nyx_string** %1678
  %1680 = getelementptr [6 x i8], [6 x i8]* @.str173, i32 0, i32 0
  %1681 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str173.c, i8* %1680, i64 5)
  %1682 = call i1 @nyx_string_equals(%nyx_string* %1679, %nyx_string* %1681)
  br i1 %1682, label %then316, label %else317
then316:
  %1683 = load %Value, %Value* %1677
  ret %Value %1683
else317:
  br label %merge318
merge318:
  %1684 = load { i64, i8* }*, { i64, i8* }** %1669
  %1685 = call i64 @nyx_array_get({ i64, i8* }* %1684, i64 1)
  %1686 = inttoptr i64 %1685 to { i64, i8* }*
  %1687 = alloca { i64, i8* }*
  store { i64, i8* }* %1686, { i64, i8* }** %1687
  %1688 = load { i64, i8* }*, { i64, i8* }** %1669
  %1689 = call i64 @nyx_array_get({ i64, i8* }* %1688, i64 2)
  %1690 = inttoptr i64 %1689 to { i64, i8* }*
  %1691 = alloca { i64, i8* }*
  store { i64, i8* }* %1690, { i64, i8* }** %1691
  %1692 = load %Value, %Value* %1677
  %1693 = call i1 @is_truthy(%Value %1692)
  br i1 %1693, label %then319, label %else320
then319:
  %1694 = load { i64, i8* }*, { i64, i8* }** %1687
  %1695 = load %Environment, %Environment* %env.ptr
  %1696 = call %Value @eval_stmt({ i64, i8* }* %1694, %Environment %1695)
  ret %Value %1696
else320:
  %1697 = load { i64, i8* }*, { i64, i8* }** %1691
  %1698 = call %nyx_string* @astnode_get_type({ i64, i8* }* %1697)
  %1699 = alloca %nyx_string*
  store %nyx_string* %1698, %nyx_string** %1699
  %1700 = load %nyx_string*, %nyx_string** %1699
  %1701 = getelementptr [6 x i8], [6 x i8]* @.str174, i32 0, i32 0
  %1702 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str174.c, i8* %1701, i64 5)
  %1703 = call i1 @nyx_string_equals(%nyx_string* %1700, %nyx_string* %1702)
  %1704 = xor i1 %1703, true
  br i1 %1704, label %then322, label %else323
then322:
  %1705 = load { i64, i8* }*, { i64, i8* }** %1691
  %1706 = load %Environment, %Environment* %env.ptr
  %1707 = call %Value @eval_stmt({ i64, i8* }* %1705, %Environment %1706)
  ret %Value %1707
else323:
  br label %merge324
merge324:
  br label %merge321
merge321:
  %1708 = call %Value @make_nil()
  ret %Value %1708
}

define internal %Value @eval_while(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %1709 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1710 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %1709)
  %1711 = alloca { i64, i8* }*
  store { i64, i8* }* %1710, { i64, i8* }** %1711
  %1712 = load { i64, i8* }*, { i64, i8* }** %1711
  %1713 = call i64 @nyx_array_get({ i64, i8* }* %1712, i64 0)
  %1714 = inttoptr i64 %1713 to { i64, i8* }*
  %1715 = alloca { i64, i8* }*
  store { i64, i8* }* %1714, { i64, i8* }** %1715
  %1716 = load { i64, i8* }*, { i64, i8* }** %1711
  %1717 = call i64 @nyx_array_get({ i64, i8* }* %1716, i64 1)
  %1718 = inttoptr i64 %1717 to { i64, i8* }*
  %1719 = alloca { i64, i8* }*
  store { i64, i8* }* %1718, { i64, i8* }** %1719
  %1720 = alloca i1
  store i1 1, i1* %1720
  %1721 = getelementptr [6 x i8], [6 x i8]* @.str175, i32 0, i32 0
  %1722 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str175.c, i8* %1721, i64 5)
  %1723 = alloca %nyx_string*
  store %nyx_string* %1722, %nyx_string** %1723
  %1724 = getelementptr [7 x i8], [7 x i8]* @.str176, i32 0, i32 0
  %1725 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str176.c, i8* %1724, i64 6)
  %1726 = alloca %nyx_string*
  store %nyx_string* %1725, %nyx_string** %1726
  %1727 = getelementptr [6 x i8], [6 x i8]* @.str177, i32 0, i32 0
  %1728 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str177.c, i8* %1727, i64 5)
  %1729 = alloca %nyx_string*
  store %nyx_string* %1728, %nyx_string** %1729
  %1730 = call i8* @llvm.stacksave()
  br label %while_cond325
while_cond325:
  %1731 = load i1, i1* %1720
  br i1 %1731, label %while_body326, label %while_end327
while_body326:
  call void @llvm.stackrestore(i8* %1730)
  %1732 = load { i64, i8* }*, { i64, i8* }** %1715
  %1733 = load %Environment, %Environment* %env.ptr
  %1734 = call %Value @eval_expr({ i64, i8* }* %1732, %Environment %1733)
  %1735 = alloca %Value
  store %Value %1734, %Value* %1735
  %1736 = getelementptr %Value, %Value* %1735, i32 0, i32 0
  %1737 = load %nyx_string*, %nyx_string** %1736
  %1738 = load %nyx_string*, %nyx_string** %1723
  %1739 = call i1 @nyx_string_equals(%nyx_string* %1737, %nyx_string* %1738)
  br i1 %1739, label %then328, label %else329
then328:
  %1740 = load %Value, %Value* %1735
  ret %Value %1740
else329:
  br label %merge330
merge330:
  %1741 = load %Value, %Value* %1735
  %1742 = call i1 @is_truthy(%Value %1741)
  br i1 %1742, label %then331, label %else332
then331:
  %1743 = load { i64, i8* }*, { i64, i8* }** %1719
  %1744 = load %Environment, %Environment* %env.ptr
  %1745 = call %Value @eval_stmt({ i64, i8* }* %1743, %Environment %1744)
  %1746 = alloca %Value
  store %Value %1745, %Value* %1746
  %1747 = alloca i1
  store i1 true, i1* %1747
  %1748 = getelementptr %Value, %Value* %1746, i32 0, i32 0
  %1749 = load %nyx_string*, %nyx_string** %1748
  %1750 = load %nyx_string*, %nyx_string** %1723
  %1751 = call i1 @nyx_string_equals(%nyx_string* %1749, %nyx_string* %1750)
  br i1 %1751, label %sc_or_end335, label %sc_or_rhs334
sc_or_rhs334:
  %1752 = getelementptr %Value, %Value* %1746, i32 0, i32 0
  %1753 = load %nyx_string*, %nyx_string** %1752
  %1754 = load %nyx_string*, %nyx_string** %1726
  %1755 = call i1 @nyx_string_equals(%nyx_string* %1753, %nyx_string* %1754)
  store i1 %1755, i1* %1747
  br label %sc_or_end335
sc_or_end335:
  %1756 = load i1, i1* %1747
  br i1 %1756, label %then336, label %else337
then336:
  %1757 = load %Value, %Value* %1746
  ret %Value %1757
else337:
  br label %merge338
merge338:
  %1758 = getelementptr %Value, %Value* %1746, i32 0, i32 0
  %1759 = load %nyx_string*, %nyx_string** %1758
  %1760 = load %nyx_string*, %nyx_string** %1729
  %1761 = call i1 @nyx_string_equals(%nyx_string* %1759, %nyx_string* %1760)
  br i1 %1761, label %then339, label %else340
then339:
  store i1 0, i1* %1720
  br label %merge341
else340:
  br label %merge341
merge341:
  br label %merge333
else332:
  store i1 0, i1* %1720
  br label %merge333
merge333:
  br label %while_cond325
while_end327:
  %1762 = call %Value @make_nil()
  ret %Value %1762
}

define internal %Value @eval_for(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %1763 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1764 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %1763)
  %1765 = alloca { i64, i8* }*
  store { i64, i8* }* %1764, { i64, i8* }** %1765
  %1766 = load { i64, i8* }*, { i64, i8* }** %1765
  %1767 = call i64 @nyx_array_get_checked({ i64, i8* }* %1766, i64 0, i64 2)
  %1768 = inttoptr i64 %1767 to %nyx_string*
  %1769 = alloca %nyx_string*
  store %nyx_string* %1768, %nyx_string** %1769
  %1770 = load { i64, i8* }*, { i64, i8* }** %1765
  %1771 = call i64 @nyx_array_get({ i64, i8* }* %1770, i64 1)
  %1772 = inttoptr i64 %1771 to { i64, i8* }*
  %1773 = alloca { i64, i8* }*
  store { i64, i8* }* %1772, { i64, i8* }** %1773
  %1774 = load { i64, i8* }*, { i64, i8* }** %1765
  %1775 = call i64 @nyx_array_get({ i64, i8* }* %1774, i64 2)
  %1776 = inttoptr i64 %1775 to { i64, i8* }*
  %1777 = alloca { i64, i8* }*
  store { i64, i8* }* %1776, { i64, i8* }** %1777
  %1778 = load %Environment, %Environment* %env.ptr
  %1779 = call %Environment @make_child_env(%Environment %1778)
  %1780 = alloca %Environment
  store %Environment %1779, %Environment* %1780
  %1781 = load { i64, i8* }*, { i64, i8* }** %1773
  %1782 = call %nyx_string* @astnode_get_type({ i64, i8* }* %1781)
  %1783 = getelementptr [6 x i8], [6 x i8]* @.str178, i32 0, i32 0
  %1784 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str178.c, i8* %1783, i64 5)
  %1785 = call i1 @nyx_string_equals(%nyx_string* %1782, %nyx_string* %1784)
  br i1 %1785, label %then342, label %else343
then342:
  %1786 = load { i64, i8* }*, { i64, i8* }** %1773
  %1787 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %1786)
  %1788 = alloca { i64, i8* }*
  store { i64, i8* }* %1787, { i64, i8* }** %1788
  %1789 = load { i64, i8* }*, { i64, i8* }** %1788
  %1790 = call i64 @nyx_array_get({ i64, i8* }* %1789, i64 0)
  %1791 = inttoptr i64 %1790 to { i64, i8* }*
  %1792 = alloca { i64, i8* }*
  store { i64, i8* }* %1791, { i64, i8* }** %1792
  %1793 = load { i64, i8* }*, { i64, i8* }** %1788
  %1794 = call i64 @nyx_array_get({ i64, i8* }* %1793, i64 1)
  %1795 = inttoptr i64 %1794 to { i64, i8* }*
  %1796 = alloca { i64, i8* }*
  store { i64, i8* }* %1795, { i64, i8* }** %1796
  %1797 = load { i64, i8* }*, { i64, i8* }** %1788
  %1798 = call i64 @nyx_array_get_checked({ i64, i8* }* %1797, i64 2, i64 2)
  %1799 = inttoptr i64 %1798 to %nyx_string*
  %1800 = alloca %nyx_string*
  store %nyx_string* %1799, %nyx_string** %1800
  %1801 = load { i64, i8* }*, { i64, i8* }** %1792
  %1802 = load %Environment, %Environment* %env.ptr
  %1803 = call %Value @eval_expr({ i64, i8* }* %1801, %Environment %1802)
  %1804 = alloca %Value
  store %Value %1803, %Value* %1804
  %1805 = getelementptr %Value, %Value* %1804, i32 0, i32 0
  %1806 = load %nyx_string*, %nyx_string** %1805
  %1807 = getelementptr [6 x i8], [6 x i8]* @.str179, i32 0, i32 0
  %1808 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str179.c, i8* %1807, i64 5)
  %1809 = call i1 @nyx_string_equals(%nyx_string* %1806, %nyx_string* %1808)
  br i1 %1809, label %then345, label %else346
then345:
  %1810 = load %Value, %Value* %1804
  ret %Value %1810
else346:
  br label %merge347
merge347:
  %1811 = load { i64, i8* }*, { i64, i8* }** %1796
  %1812 = load %Environment, %Environment* %env.ptr
  %1813 = call %Value @eval_expr({ i64, i8* }* %1811, %Environment %1812)
  %1814 = alloca %Value
  store %Value %1813, %Value* %1814
  %1815 = getelementptr %Value, %Value* %1814, i32 0, i32 0
  %1816 = load %nyx_string*, %nyx_string** %1815
  %1817 = getelementptr [6 x i8], [6 x i8]* @.str180, i32 0, i32 0
  %1818 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str180.c, i8* %1817, i64 5)
  %1819 = call i1 @nyx_string_equals(%nyx_string* %1816, %nyx_string* %1818)
  br i1 %1819, label %then348, label %else349
then348:
  %1820 = load %Value, %Value* %1814
  ret %Value %1820
else349:
  br label %merge350
merge350:
  %1821 = alloca i1
  store i1 true, i1* %1821
  %1822 = getelementptr %Value, %Value* %1804, i32 0, i32 0
  %1823 = load %nyx_string*, %nyx_string** %1822
  %1824 = getelementptr [4 x i8], [4 x i8]* @.str181, i32 0, i32 0
  %1825 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str181.c, i8* %1824, i64 3)
  %1826 = call i1 @nyx_string_equals(%nyx_string* %1823, %nyx_string* %1825)
  %1827 = xor i1 %1826, true
  br i1 %1827, label %sc_or_end352, label %sc_or_rhs351
sc_or_rhs351:
  %1828 = getelementptr %Value, %Value* %1814, i32 0, i32 0
  %1829 = load %nyx_string*, %nyx_string** %1828
  %1830 = getelementptr [4 x i8], [4 x i8]* @.str182, i32 0, i32 0
  %1831 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str182.c, i8* %1830, i64 3)
  %1832 = call i1 @nyx_string_equals(%nyx_string* %1829, %nyx_string* %1831)
  %1833 = xor i1 %1832, true
  store i1 %1833, i1* %1821
  br label %sc_or_end352
sc_or_end352:
  %1834 = load i1, i1* %1821
  br i1 %1834, label %then353, label %else354
then353:
  %1835 = getelementptr [8 x i8], [8 x i8]* @.str183, i32 0, i32 0
  %1836 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str183.c, i8* %1835, i64 7)
  %1837 = getelementptr [28 x i8], [28 x i8]* @.str184, i32 0, i32 0
  %1838 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str184.c, i8* %1837, i64 27)
  %1839 = getelementptr %Value, %Value* %1804, i32 0, i32 0
  %1840 = load %nyx_string*, %nyx_string** %1839
  %1841 = call %nyx_string* @nyx_string_concat(%nyx_string* %1838, %nyx_string* %1840)
  %1842 = getelementptr [3 x i8], [3 x i8]* @.str185, i32 0, i32 0
  %1843 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str185.c, i8* %1842, i64 2)
  %1844 = call %nyx_string* @nyx_string_concat(%nyx_string* %1841, %nyx_string* %1843)
  %1845 = getelementptr %Value, %Value* %1814, i32 0, i32 0
  %1846 = load %nyx_string*, %nyx_string** %1845
  %1847 = call %nyx_string* @nyx_string_concat(%nyx_string* %1844, %nyx_string* %1846)
  %1848 = getelementptr [44 x i8], [44 x i8]* @.str186, i32 0, i32 0
  %1849 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str186.c, i8* %1848, i64 43)
  %1850 = call %nyx_string* @nyx_string_concat(%nyx_string* %1847, %nyx_string* %1849)
  %1851 = getelementptr [27 x i8], [27 x i8]* @.str187, i32 0, i32 0
  %1852 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str187.c, i8* %1851, i64 26)
  %1853 = getelementptr %Value, %Value* %1804, i32 0, i32 0
  %1854 = load %nyx_string*, %nyx_string** %1853
  %1855 = call %nyx_string* @nyx_string_concat(%nyx_string* %1852, %nyx_string* %1854)
  %1856 = getelementptr [3 x i8], [3 x i8]* @.str188, i32 0, i32 0
  %1857 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str188.c, i8* %1856, i64 2)
  %1858 = call %nyx_string* @nyx_string_concat(%nyx_string* %1855, %nyx_string* %1857)
  %1859 = getelementptr %Value, %Value* %1814, i32 0, i32 0
  %1860 = load %nyx_string*, %nyx_string** %1859
  %1861 = call %nyx_string* @nyx_string_concat(%nyx_string* %1858, %nyx_string* %1860)
  %1862 = getelementptr [43 x i8], [43 x i8]* @.str189, i32 0, i32 0
  %1863 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str189.c, i8* %1862, i64 42)
  %1864 = call %nyx_string* @nyx_string_concat(%nyx_string* %1861, %nyx_string* %1863)
  %1865 = call i64 @interp_err(%nyx_string* %1836, %nyx_string* %1850, %nyx_string* %1864)
  %1866 = call %Value @make_error()
  ret %Value %1866
else354:
  br label %merge355
merge355:
  %1867 = getelementptr %Value, %Value* %1814, i32 0, i32 1
  %1868 = load i64, i64* %1867
  %1869 = alloca i64
  store i64 %1868, i64* %1869
  %1870 = getelementptr %Value, %Value* %1804, i32 0, i32 1
  %1871 = load i64, i64* %1870
  %1872 = alloca i64
  store i64 %1871, i64* %1872
  %1873 = getelementptr [6 x i8], [6 x i8]* @.str190, i32 0, i32 0
  %1874 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str190.c, i8* %1873, i64 5)
  %1875 = alloca %nyx_string*
  store %nyx_string* %1874, %nyx_string** %1875
  %1876 = getelementptr [7 x i8], [7 x i8]* @.str191, i32 0, i32 0
  %1877 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str191.c, i8* %1876, i64 6)
  %1878 = alloca %nyx_string*
  store %nyx_string* %1877, %nyx_string** %1878
  %1879 = getelementptr [6 x i8], [6 x i8]* @.str192, i32 0, i32 0
  %1880 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str192.c, i8* %1879, i64 5)
  %1881 = alloca %nyx_string*
  store %nyx_string* %1880, %nyx_string** %1881
  %1882 = call i8* @llvm.stacksave()
  br label %while_cond356
while_cond356:
  %1883 = alloca i1
  store i1 true, i1* %1883
  %1884 = load i64, i64* %1872
  %1885 = load i64, i64* %1869
  %1886 = icmp slt i64 %1884, %1885
  br i1 %1886, label %sc_or_end360, label %sc_or_rhs359
sc_or_rhs359:
  %1887 = alloca i1
  store i1 false, i1* %1887
  %1888 = load %nyx_string*, %nyx_string** %1800
  %1889 = getelementptr [5 x i8], [5 x i8]* @.str193, i32 0, i32 0
  %1890 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str193.c, i8* %1889, i64 4)
  %1891 = call i1 @nyx_string_equals(%nyx_string* %1888, %nyx_string* %1890)
  br i1 %1891, label %sc_and_rhs361, label %sc_and_end362
sc_and_rhs361:
  %1892 = load i64, i64* %1872
  %1893 = load i64, i64* %1869
  %1894 = icmp eq i64 %1892, %1893
  store i1 %1894, i1* %1887
  br label %sc_and_end362
sc_and_end362:
  %1895 = load i1, i1* %1887
  store i1 %1895, i1* %1883
  br label %sc_or_end360
sc_or_end360:
  %1896 = load i1, i1* %1883
  br i1 %1896, label %while_body357, label %while_end358
while_body357:
  call void @llvm.stackrestore(i8* %1882)
  %1897 = load %Environment, %Environment* %1780
  %1898 = load %nyx_string*, %nyx_string** %1769
  %1899 = load i64, i64* %1872
  %1900 = call %Value @make_int(i64 %1899)
  %1901 = call i64 @env_define(%Environment %1897, %nyx_string* %1898, %Value %1900)
  %1902 = load { i64, i8* }*, { i64, i8* }** %1777
  %1903 = load %Environment, %Environment* %1780
  %1904 = call %Value @eval_stmt({ i64, i8* }* %1902, %Environment %1903)
  %1905 = alloca %Value
  store %Value %1904, %Value* %1905
  %1906 = alloca i1
  store i1 true, i1* %1906
  %1907 = getelementptr %Value, %Value* %1905, i32 0, i32 0
  %1908 = load %nyx_string*, %nyx_string** %1907
  %1909 = load %nyx_string*, %nyx_string** %1875
  %1910 = call i1 @nyx_string_equals(%nyx_string* %1908, %nyx_string* %1909)
  br i1 %1910, label %sc_or_end364, label %sc_or_rhs363
sc_or_rhs363:
  %1911 = getelementptr %Value, %Value* %1905, i32 0, i32 0
  %1912 = load %nyx_string*, %nyx_string** %1911
  %1913 = load %nyx_string*, %nyx_string** %1878
  %1914 = call i1 @nyx_string_equals(%nyx_string* %1912, %nyx_string* %1913)
  store i1 %1914, i1* %1906
  br label %sc_or_end364
sc_or_end364:
  %1915 = load i1, i1* %1906
  br i1 %1915, label %then365, label %else366
then365:
  %1916 = load %Value, %Value* %1905
  ret %Value %1916
else366:
  br label %merge367
merge367:
  %1917 = getelementptr %Value, %Value* %1905, i32 0, i32 0
  %1918 = load %nyx_string*, %nyx_string** %1917
  %1919 = load %nyx_string*, %nyx_string** %1881
  %1920 = call i1 @nyx_string_equals(%nyx_string* %1918, %nyx_string* %1919)
  br i1 %1920, label %then368, label %else369
then368:
  %1921 = call %Value @make_nil()
  ret %Value %1921
else369:
  br label %merge370
merge370:
  %1922 = load i64, i64* %1872
  %1923 = add i64 %1922, 1
  store i64 %1923, i64* %1872
  br label %while_cond356
while_end358:
  %1924 = call %Value @make_nil()
  ret %Value %1924
else343:
  br label %merge344
merge344:
  %1925 = load { i64, i8* }*, { i64, i8* }** %1773
  %1926 = load %Environment, %Environment* %env.ptr
  %1927 = call %Value @eval_expr({ i64, i8* }* %1925, %Environment %1926)
  %1928 = alloca %Value
  store %Value %1927, %Value* %1928
  %1929 = getelementptr %Value, %Value* %1928, i32 0, i32 0
  %1930 = load %nyx_string*, %nyx_string** %1929
  %1931 = getelementptr [6 x i8], [6 x i8]* @.str194, i32 0, i32 0
  %1932 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str194.c, i8* %1931, i64 5)
  %1933 = call i1 @nyx_string_equals(%nyx_string* %1930, %nyx_string* %1932)
  br i1 %1933, label %then371, label %else372
then371:
  %1934 = load %Value, %Value* %1928
  ret %Value %1934
else372:
  br label %merge373
merge373:
  %1935 = getelementptr %Value, %Value* %1928, i32 0, i32 0
  %1936 = load %nyx_string*, %nyx_string** %1935
  %1937 = getelementptr [6 x i8], [6 x i8]* @.str195, i32 0, i32 0
  %1938 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str195.c, i8* %1937, i64 5)
  %1939 = call i1 @nyx_string_equals(%nyx_string* %1936, %nyx_string* %1938)
  %1940 = xor i1 %1939, true
  br i1 %1940, label %then374, label %else375
then374:
  %1941 = getelementptr [8 x i8], [8 x i8]* @.str196, i32 0, i32 0
  %1942 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str196.c, i8* %1941, i64 7)
  %1943 = getelementptr [26 x i8], [26 x i8]* @.str197, i32 0, i32 0
  %1944 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str197.c, i8* %1943, i64 25)
  %1945 = getelementptr %Value, %Value* %1928, i32 0, i32 0
  %1946 = load %nyx_string*, %nyx_string** %1945
  %1947 = call %nyx_string* @nyx_string_concat(%nyx_string* %1944, %nyx_string* %1946)
  %1948 = getelementptr [62 x i8], [62 x i8]* @.str198, i32 0, i32 0
  %1949 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str198.c, i8* %1948, i64 61)
  %1950 = call %nyx_string* @nyx_string_concat(%nyx_string* %1947, %nyx_string* %1949)
  %1951 = getelementptr [22 x i8], [22 x i8]* @.str199, i32 0, i32 0
  %1952 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str199.c, i8* %1951, i64 21)
  %1953 = getelementptr %Value, %Value* %1928, i32 0, i32 0
  %1954 = load %nyx_string*, %nyx_string** %1953
  %1955 = call %nyx_string* @nyx_string_concat(%nyx_string* %1952, %nyx_string* %1954)
  %1956 = getelementptr [62 x i8], [62 x i8]* @.str200, i32 0, i32 0
  %1957 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str200.c, i8* %1956, i64 61)
  %1958 = call %nyx_string* @nyx_string_concat(%nyx_string* %1955, %nyx_string* %1957)
  %1959 = call i64 @interp_err(%nyx_string* %1942, %nyx_string* %1950, %nyx_string* %1958)
  %1960 = call %Value @make_error()
  ret %Value %1960
else375:
  br label %merge376
merge376:
  %1961 = getelementptr %Value, %Value* %1928, i32 0, i32 5
  %1962 = load { i64, i8* }*, { i64, i8* }** %1961
  %1963 = alloca { i64, i8* }*
  store { i64, i8* }* %1962, { i64, i8* }** %1963
  %1964 = alloca i64
  store i64 0, i64* %1964
  %1965 = getelementptr [6 x i8], [6 x i8]* @.str201, i32 0, i32 0
  %1966 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str201.c, i8* %1965, i64 5)
  %1967 = alloca %nyx_string*
  store %nyx_string* %1966, %nyx_string** %1967
  %1968 = getelementptr [7 x i8], [7 x i8]* @.str202, i32 0, i32 0
  %1969 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str202.c, i8* %1968, i64 6)
  %1970 = alloca %nyx_string*
  store %nyx_string* %1969, %nyx_string** %1970
  %1971 = getelementptr [6 x i8], [6 x i8]* @.str203, i32 0, i32 0
  %1972 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str203.c, i8* %1971, i64 5)
  %1973 = alloca %nyx_string*
  store %nyx_string* %1972, %nyx_string** %1973
  %1974 = call i8* @llvm.stacksave()
  br label %while_cond377
while_cond377:
  %1975 = load i64, i64* %1964
  %1976 = load { i64, i8* }*, { i64, i8* }** %1963
  %1977 = call i64 @nyx_array_length({ i64, i8* }* %1976)
  %1978 = icmp slt i64 %1975, %1977
  br i1 %1978, label %while_body378, label %while_end379
while_body378:
  call void @llvm.stackrestore(i8* %1974)
  %1979 = load { i64, i8* }*, { i64, i8* }** %1963
  %1980 = load i64, i64* %1964
  %1981 = call i64 @nyx_array_get({ i64, i8* }* %1979, i64 %1980)
  %1982 = inttoptr i64 %1981 to %Value*
  %1983 = load %Value, %Value* %1982
  %1984 = alloca %Value
  store %Value %1983, %Value* %1984
  %1985 = load %Environment, %Environment* %1780
  %1986 = load %nyx_string*, %nyx_string** %1769
  %1987 = load %Value, %Value* %1984
  %1988 = call i64 @env_define(%Environment %1985, %nyx_string* %1986, %Value %1987)
  %1989 = load { i64, i8* }*, { i64, i8* }** %1777
  %1990 = load %Environment, %Environment* %1780
  %1991 = call %Value @eval_stmt({ i64, i8* }* %1989, %Environment %1990)
  %1992 = alloca %Value
  store %Value %1991, %Value* %1992
  %1993 = alloca i1
  store i1 true, i1* %1993
  %1994 = getelementptr %Value, %Value* %1992, i32 0, i32 0
  %1995 = load %nyx_string*, %nyx_string** %1994
  %1996 = load %nyx_string*, %nyx_string** %1967
  %1997 = call i1 @nyx_string_equals(%nyx_string* %1995, %nyx_string* %1996)
  br i1 %1997, label %sc_or_end381, label %sc_or_rhs380
sc_or_rhs380:
  %1998 = getelementptr %Value, %Value* %1992, i32 0, i32 0
  %1999 = load %nyx_string*, %nyx_string** %1998
  %2000 = load %nyx_string*, %nyx_string** %1970
  %2001 = call i1 @nyx_string_equals(%nyx_string* %1999, %nyx_string* %2000)
  store i1 %2001, i1* %1993
  br label %sc_or_end381
sc_or_end381:
  %2002 = load i1, i1* %1993
  br i1 %2002, label %then382, label %else383
then382:
  %2003 = load %Value, %Value* %1992
  ret %Value %2003
else383:
  br label %merge384
merge384:
  %2004 = getelementptr %Value, %Value* %1992, i32 0, i32 0
  %2005 = load %nyx_string*, %nyx_string** %2004
  %2006 = load %nyx_string*, %nyx_string** %1973
  %2007 = call i1 @nyx_string_equals(%nyx_string* %2005, %nyx_string* %2006)
  br i1 %2007, label %then385, label %else386
then385:
  %2008 = call %Value @make_nil()
  ret %Value %2008
else386:
  br label %merge387
merge387:
  %2009 = load i64, i64* %1964
  %2010 = add i64 %2009, 1
  store i64 %2010, i64* %1964
  br label %while_cond377
while_end379:
  %2011 = call %Value @make_nil()
  ret %Value %2011
}

define internal %Value @eval_block(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %2012 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %2013 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %2012)
  %2014 = alloca { i64, i8* }*
  store { i64, i8* }* %2013, { i64, i8* }** %2014
  %2015 = load { i64, i8* }*, { i64, i8* }** %2014
  %2016 = call i64 @nyx_array_get({ i64, i8* }* %2015, i64 0)
  %2017 = inttoptr i64 %2016 to { i64, i8* }*
  %2018 = alloca { i64, i8* }*
  store { i64, i8* }* %2017, { i64, i8* }** %2018
  %2019 = load %Environment, %Environment* %env.ptr
  %2020 = call %Environment @make_child_env(%Environment %2019)
  %2021 = alloca %Environment
  store %Environment %2020, %Environment* %2021
  %2022 = call %Value @make_nil()
  %2023 = alloca %Value
  store %Value %2022, %Value* %2023
  %2024 = alloca i64
  store i64 0, i64* %2024
  %2025 = load { i64, i8* }*, { i64, i8* }** %2018
  %2026 = call i64 @nyx_array_length({ i64, i8* }* %2025)
  %2027 = alloca i64
  store i64 %2026, i64* %2027
  %2028 = getelementptr [7 x i8], [7 x i8]* @.str204, i32 0, i32 0
  %2029 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str204.c, i8* %2028, i64 6)
  %2030 = alloca %nyx_string*
  store %nyx_string* %2029, %nyx_string** %2030
  %2031 = getelementptr [6 x i8], [6 x i8]* @.str205, i32 0, i32 0
  %2032 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str205.c, i8* %2031, i64 5)
  %2033 = alloca %nyx_string*
  store %nyx_string* %2032, %nyx_string** %2033
  %2034 = call i8* @llvm.stacksave()
  br label %while_cond388
while_cond388:
  %2035 = load i64, i64* %2024
  %2036 = load i64, i64* %2027
  %2037 = icmp slt i64 %2035, %2036
  br i1 %2037, label %while_body389, label %while_end390
while_body389:
  call void @llvm.stackrestore(i8* %2034)
  %2038 = load { i64, i8* }*, { i64, i8* }** %2018
  %2039 = load i64, i64* %2024
  %2040 = call i64 @nyx_array_get({ i64, i8* }* %2038, i64 %2039)
  %2041 = inttoptr i64 %2040 to { i64, i8* }*
  %2042 = alloca { i64, i8* }*
  store { i64, i8* }* %2041, { i64, i8* }** %2042
  %2043 = load { i64, i8* }*, { i64, i8* }** %2042
  %2044 = load %Environment, %Environment* %2021
  %2045 = call %Value @eval_stmt({ i64, i8* }* %2043, %Environment %2044)
  store %Value %2045, %Value* %2023
  %2046 = getelementptr %Value, %Value* %2023, i32 0, i32 0
  %2047 = load %nyx_string*, %nyx_string** %2046
  %2048 = load %nyx_string*, %nyx_string** %2030
  %2049 = call i1 @nyx_string_equals(%nyx_string* %2047, %nyx_string* %2048)
  br i1 %2049, label %then391, label %else392
then391:
  %2050 = load %Value, %Value* %2023
  ret %Value %2050
else392:
  br label %merge393
merge393:
  %2051 = getelementptr %Value, %Value* %2023, i32 0, i32 0
  %2052 = load %nyx_string*, %nyx_string** %2051
  %2053 = load %nyx_string*, %nyx_string** %2033
  %2054 = call i1 @nyx_string_equals(%nyx_string* %2052, %nyx_string* %2053)
  br i1 %2054, label %then394, label %else395
then394:
  %2055 = load %Value, %Value* %2023
  ret %Value %2055
else395:
  br label %merge396
merge396:
  %2056 = load %Value, %Value* %2023
  %2057 = call i1 @is_loop_control(%Value %2056)
  br i1 %2057, label %then397, label %else398
then397:
  %2058 = load %Value, %Value* %2023
  ret %Value %2058
else398:
  br label %merge399
merge399:
  %2059 = load i64, i64* %2024
  %2060 = add i64 %2059, 1
  store i64 %2060, i64* %2024
  br label %while_cond388
while_end390:
  %2061 = load %Value, %Value* %2023
  ret %Value %2061
}

define internal %Value @eval_function_decl(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %2062 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %2063 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %2062)
  %2064 = alloca { i64, i8* }*
  store { i64, i8* }* %2063, { i64, i8* }** %2064
  %2065 = load { i64, i8* }*, { i64, i8* }** %2064
  %2066 = call i64 @nyx_array_get_checked({ i64, i8* }* %2065, i64 0, i64 2)
  %2067 = inttoptr i64 %2066 to %nyx_string*
  %2068 = alloca %nyx_string*
  store %nyx_string* %2067, %nyx_string** %2068
  %2069 = load { i64, i8* }*, { i64, i8* }** %2064
  %2070 = call i64 @nyx_array_get({ i64, i8* }* %2069, i64 1)
  %2071 = inttoptr i64 %2070 to { i64, i8* }*
  %2072 = alloca { i64, i8* }*
  store { i64, i8* }* %2071, { i64, i8* }** %2072
  %2073 = load { i64, i8* }*, { i64, i8* }** %2064
  %2074 = call i64 @nyx_array_get({ i64, i8* }* %2073, i64 2)
  %2075 = alloca i64
  store i64 %2074, i64* %2075
  %2076 = load { i64, i8* }*, { i64, i8* }** %2064
  %2077 = call i64 @nyx_array_get({ i64, i8* }* %2076, i64 3)
  %2078 = inttoptr i64 %2077 to { i64, i8* }*
  %2079 = alloca { i64, i8* }*
  store { i64, i8* }* %2078, { i64, i8* }** %2079
  %2080 = call { i64, i8* }* @nyx_array_new_ptr()
  %2081 = alloca { i64, i8* }*
  store { i64, i8* }* %2080, { i64, i8* }** %2081
  %2082 = load { i64, i8* }*, { i64, i8* }** %2079
  %2083 = call %nyx_string* @astnode_get_type({ i64, i8* }* %2082)
  %2084 = alloca %nyx_string*
  store %nyx_string* %2083, %nyx_string** %2084
  %2085 = load { i64, i8* }*, { i64, i8* }** %2079
  %2086 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %2085)
  %2087 = alloca { i64, i8* }*
  store { i64, i8* }* %2086, { i64, i8* }** %2087
  %2088 = getelementptr %Environment, %Environment* %env.ptr, i32 0, i32 0
  %2089 = load i8*, i8** %2088
  %2090 = alloca i8*
  store i8* %2089, i8** %2090
  %2091 = getelementptr %Environment, %Environment* %env.ptr, i32 0, i32 1
  %2092 = load { i64, i8* }*, { i64, i8* }** %2091
  %2093 = alloca { i64, i8* }*
  store { i64, i8* }* %2092, { i64, i8* }** %2093
  %2094 = getelementptr %Value, %Value* null, i32 1
  %2095 = ptrtoint %Value* %2094 to i64
  %2096 = call i8* @GC_malloc(i64 %2095)
  %2097 = bitcast i8* %2096 to %Value*
  %2098 = getelementptr [9 x i8], [9 x i8]* @.str206, i32 0, i32 0
  %2099 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str206.c, i8* %2098, i64 8)
  %2100 = getelementptr %Value, %Value* %2097, i32 0, i32 0
  store %nyx_string* %2099, %nyx_string** %2100
  %2101 = getelementptr %Value, %Value* %2097, i32 0, i32 1
  store i64 0, i64* %2101
  %2102 = getelementptr %Value, %Value* %2097, i32 0, i32 2
  store double 0.0, double* %2102
  %2103 = getelementptr %Value, %Value* %2097, i32 0, i32 3
  store i1 0, i1* %2103
  %2104 = getelementptr [1 x i8], [1 x i8]* @.str207, i32 0, i32 0
  %2105 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str207.c, i8* %2104, i64 0)
  %2106 = getelementptr %Value, %Value* %2097, i32 0, i32 4
  store %nyx_string* %2105, %nyx_string** %2106
  %2107 = load { i64, i8* }*, { i64, i8* }** %2081
  %2108 = getelementptr %Value, %Value* %2097, i32 0, i32 5
  store { i64, i8* }* %2107, { i64, i8* }** %2108
  %2109 = load { i64, i8* }*, { i64, i8* }** %2072
  %2110 = getelementptr %Value, %Value* %2097, i32 0, i32 6
  store { i64, i8* }* %2109, { i64, i8* }** %2110
  %2111 = load %nyx_string*, %nyx_string** %2084
  %2112 = getelementptr %Value, %Value* %2097, i32 0, i32 7
  store %nyx_string* %2111, %nyx_string** %2112
  %2113 = load { i64, i8* }*, { i64, i8* }** %2087
  %2114 = getelementptr %Value, %Value* %2097, i32 0, i32 8
  store { i64, i8* }* %2113, { i64, i8* }** %2114
  %2115 = load i8*, i8** %2090
  %2116 = getelementptr %Value, %Value* %2097, i32 0, i32 9
  store i8* %2115, i8** %2116
  %2117 = load { i64, i8* }*, { i64, i8* }** %2093
  %2118 = getelementptr %Value, %Value* %2097, i32 0, i32 10
  store { i64, i8* }* %2117, { i64, i8* }** %2118
  %2119 = load %Value, %Value* %2097
  %2120 = alloca %Value
  store %Value %2119, %Value* %2120
  %2121 = load %Environment, %Environment* %env.ptr
  %2122 = load %nyx_string*, %nyx_string** %2068
  %2123 = load %Value, %Value* %2120
  %2124 = call i64 @env_define(%Environment %2121, %nyx_string* %2122, %Value %2123)
  %2125 = call %Value @make_nil()
  ret %Value %2125
}

define internal %Value @unwrap_return_value(
%Value %return_val.param) {
  %return_val.ptr = alloca %Value
  store %Value %return_val.param, %Value* %return_val.ptr
  %2126 = getelementptr %Value, %Value* %return_val.ptr, i32 0, i32 5
  %2127 = load { i64, i8* }*, { i64, i8* }** %2126
  %2128 = alloca { i64, i8* }*
  store { i64, i8* }* %2127, { i64, i8* }** %2128
  %2129 = load { i64, i8* }*, { i64, i8* }** %2128
  %2130 = call i64 @nyx_array_get({ i64, i8* }* %2129, i64 0)
  %2131 = inttoptr i64 %2130 to %Value*
  %2132 = load %Value, %Value* %2131
  %2133 = alloca %Value
  store %Value %2132, %Value* %2133
  %2134 = load %Value, %Value* %2133
  ret %Value %2134
}

define internal %Value @eval_method_call(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %2135 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %2136 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %2135)
  %2137 = alloca { i64, i8* }*
  store { i64, i8* }* %2136, { i64, i8* }** %2137
  %2138 = load { i64, i8* }*, { i64, i8* }** %2137
  %2139 = call i64 @nyx_array_get({ i64, i8* }* %2138, i64 0)
  %2140 = inttoptr i64 %2139 to { i64, i8* }*
  %2141 = alloca { i64, i8* }*
  store { i64, i8* }* %2140, { i64, i8* }** %2141
  %2142 = load { i64, i8* }*, { i64, i8* }** %2137
  %2143 = call i64 @nyx_array_get_checked({ i64, i8* }* %2142, i64 1, i64 2)
  %2144 = inttoptr i64 %2143 to %nyx_string*
  %2145 = alloca %nyx_string*
  store %nyx_string* %2144, %nyx_string** %2145
  %2146 = load { i64, i8* }*, { i64, i8* }** %2137
  %2147 = call i64 @nyx_array_get({ i64, i8* }* %2146, i64 2)
  %2148 = inttoptr i64 %2147 to { i64, i8* }*
  %2149 = alloca { i64, i8* }*
  store { i64, i8* }* %2148, { i64, i8* }** %2149
  %2150 = load { i64, i8* }*, { i64, i8* }** %2141
  %2151 = load %Environment, %Environment* %env.ptr
  %2152 = call %Value @eval_expr({ i64, i8* }* %2150, %Environment %2151)
  %2153 = alloca %Value
  store %Value %2152, %Value* %2153
  %2154 = getelementptr %Value, %Value* %2153, i32 0, i32 0
  %2155 = load %nyx_string*, %nyx_string** %2154
  %2156 = getelementptr [6 x i8], [6 x i8]* @.str208, i32 0, i32 0
  %2157 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str208.c, i8* %2156, i64 5)
  %2158 = call i1 @nyx_string_equals(%nyx_string* %2155, %nyx_string* %2157)
  br i1 %2158, label %then400, label %else401
then400:
  %2159 = load %Value, %Value* %2153
  ret %Value %2159
else401:
  br label %merge402
merge402:
  %2160 = getelementptr %Value, %Value* %2153, i32 0, i32 0
  %2161 = load %nyx_string*, %nyx_string** %2160
  %2162 = getelementptr [7 x i8], [7 x i8]* @.str209, i32 0, i32 0
  %2163 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str209.c, i8* %2162, i64 6)
  %2164 = call i1 @nyx_string_equals(%nyx_string* %2161, %nyx_string* %2163)
  br i1 %2164, label %then403, label %else404
then403:
  %2165 = getelementptr %Value, %Value* %2153, i32 0, i32 4
  %2166 = load %nyx_string*, %nyx_string** %2165
  %2167 = alloca %nyx_string*
  store %nyx_string* %2166, %nyx_string** %2167
  %2168 = load %nyx_string*, %nyx_string** %2145
  %2169 = getelementptr [7 x i8], [7 x i8]* @.str210, i32 0, i32 0
  %2170 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str210.c, i8* %2169, i64 6)
  %2171 = call i1 @nyx_string_equals(%nyx_string* %2168, %nyx_string* %2170)
  br i1 %2171, label %then406, label %else407
then406:
  %2172 = load %nyx_string*, %nyx_string** %2167
  %2173 = call i64 @nyx_string_byte_length(%nyx_string* %2172)
  %2174 = call %Value @make_int(i64 %2173)
  ret %Value %2174
else407:
  br label %merge408
merge408:
  %2175 = load %nyx_string*, %nyx_string** %2145
  %2176 = getelementptr [12 x i8], [12 x i8]* @.str211, i32 0, i32 0
  %2177 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str211.c, i8* %2176, i64 11)
  %2178 = call i1 @nyx_string_equals(%nyx_string* %2175, %nyx_string* %2177)
  br i1 %2178, label %then409, label %else410
then409:
  %2179 = load %nyx_string*, %nyx_string** %2167
  %2180 = call i64 @nyx_string_length_utf8(%nyx_string* %2179)
  %2181 = call %Value @make_int(i64 %2180)
  ret %Value %2181
else410:
  br label %merge411
merge411:
  %2182 = load %nyx_string*, %nyx_string** %2145
  %2183 = getelementptr [12 x i8], [12 x i8]* @.str212, i32 0, i32 0
  %2184 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str212.c, i8* %2183, i64 11)
  %2185 = call i1 @nyx_string_equals(%nyx_string* %2182, %nyx_string* %2184)
  br i1 %2185, label %then412, label %else413
then412:
  %2186 = load %nyx_string*, %nyx_string** %2167
  %2187 = call i64 @nyx_string_byte_length(%nyx_string* %2186)
  %2188 = call %Value @make_int(i64 %2187)
  ret %Value %2188
else413:
  br label %merge414
merge414:
  %2189 = load %nyx_string*, %nyx_string** %2145
  %2190 = getelementptr [8 x i8], [8 x i8]* @.str213, i32 0, i32 0
  %2191 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str213.c, i8* %2190, i64 7)
  %2192 = call i1 @nyx_string_equals(%nyx_string* %2189, %nyx_string* %2191)
  br i1 %2192, label %then415, label %else416
then415:
  %2193 = load %nyx_string*, %nyx_string** %2167
  %2194 = call %nyx_string* @nyx_string_to_upper(%nyx_string* %2193)
  %2195 = call %Value @make_string(%nyx_string* %2194)
  ret %Value %2195
else416:
  br label %merge417
merge417:
  %2196 = load %nyx_string*, %nyx_string** %2145
  %2197 = getelementptr [8 x i8], [8 x i8]* @.str214, i32 0, i32 0
  %2198 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str214.c, i8* %2197, i64 7)
  %2199 = call i1 @nyx_string_equals(%nyx_string* %2196, %nyx_string* %2198)
  br i1 %2199, label %then418, label %else419
then418:
  %2200 = load %nyx_string*, %nyx_string** %2167
  %2201 = call %nyx_string* @nyx_string_to_lower(%nyx_string* %2200)
  %2202 = call %Value @make_string(%nyx_string* %2201)
  ret %Value %2202
else419:
  br label %merge420
merge420:
  %2203 = load %nyx_string*, %nyx_string** %2145
  %2204 = getelementptr [5 x i8], [5 x i8]* @.str215, i32 0, i32 0
  %2205 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str215.c, i8* %2204, i64 4)
  %2206 = call i1 @nyx_string_equals(%nyx_string* %2203, %nyx_string* %2205)
  br i1 %2206, label %then421, label %else422
then421:
  %2207 = load %nyx_string*, %nyx_string** %2167
  %2208 = call %nyx_string* @nyx_string_trim(%nyx_string* %2207)
  %2209 = call %Value @make_string(%nyx_string* %2208)
  ret %Value %2209
else422:
  br label %merge423
merge423:
  %2210 = load %nyx_string*, %nyx_string** %2145
  %2211 = getelementptr [8 x i8], [8 x i8]* @.str216, i32 0, i32 0
  %2212 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str216.c, i8* %2211, i64 7)
  %2213 = call i1 @nyx_string_equals(%nyx_string* %2210, %nyx_string* %2212)
  br i1 %2213, label %then424, label %else425
then424:
  %2214 = load { i64, i8* }*, { i64, i8* }** %2149
  %2215 = call i64 @nyx_array_get({ i64, i8* }* %2214, i64 0)
  %2216 = inttoptr i64 %2215 to { i64, i8* }*
  %2217 = load %Environment, %Environment* %env.ptr
  %2218 = call %Value @eval_expr({ i64, i8* }* %2216, %Environment %2217)
  %2219 = alloca %Value
  store %Value %2218, %Value* %2219
  %2220 = getelementptr %Value, %Value* %2219, i32 0, i32 0
  %2221 = load %nyx_string*, %nyx_string** %2220
  %2222 = getelementptr [6 x i8], [6 x i8]* @.str217, i32 0, i32 0
  %2223 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str217.c, i8* %2222, i64 5)
  %2224 = call i1 @nyx_string_equals(%nyx_string* %2221, %nyx_string* %2223)
  br i1 %2224, label %then427, label %else428
then427:
  %2225 = load %Value, %Value* %2219
  ret %Value %2225
else428:
  br label %merge429
merge429:
  %2226 = load %nyx_string*, %nyx_string** %2167
  %2227 = getelementptr %Value, %Value* %2219, i32 0, i32 4
  %2228 = load %nyx_string*, %nyx_string** %2227
  %2229 = call i64 @nyx_string_index_of(%nyx_string* %2226, %nyx_string* %2228)
  %2230 = call %Value @make_int(i64 %2229)
  ret %Value %2230
else425:
  br label %merge426
merge426:
  %2231 = load %nyx_string*, %nyx_string** %2145
  %2232 = getelementptr [10 x i8], [10 x i8]* @.str218, i32 0, i32 0
  %2233 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str218.c, i8* %2232, i64 9)
  %2234 = call i1 @nyx_string_equals(%nyx_string* %2231, %nyx_string* %2233)
  br i1 %2234, label %then430, label %else431
then430:
  %2235 = load { i64, i8* }*, { i64, i8* }** %2149
  %2236 = call i64 @nyx_array_get({ i64, i8* }* %2235, i64 0)
  %2237 = inttoptr i64 %2236 to { i64, i8* }*
  %2238 = load %Environment, %Environment* %env.ptr
  %2239 = call %Value @eval_expr({ i64, i8* }* %2237, %Environment %2238)
  %2240 = alloca %Value
  store %Value %2239, %Value* %2240
  %2241 = getelementptr %Value, %Value* %2240, i32 0, i32 0
  %2242 = load %nyx_string*, %nyx_string** %2241
  %2243 = getelementptr [6 x i8], [6 x i8]* @.str219, i32 0, i32 0
  %2244 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str219.c, i8* %2243, i64 5)
  %2245 = call i1 @nyx_string_equals(%nyx_string* %2242, %nyx_string* %2244)
  br i1 %2245, label %then433, label %else434
then433:
  %2246 = load %Value, %Value* %2240
  ret %Value %2246
else434:
  br label %merge435
merge435:
  %2247 = load { i64, i8* }*, { i64, i8* }** %2149
  %2248 = call i64 @nyx_array_get({ i64, i8* }* %2247, i64 1)
  %2249 = inttoptr i64 %2248 to { i64, i8* }*
  %2250 = load %Environment, %Environment* %env.ptr
  %2251 = call %Value @eval_expr({ i64, i8* }* %2249, %Environment %2250)
  %2252 = alloca %Value
  store %Value %2251, %Value* %2252
  %2253 = getelementptr %Value, %Value* %2252, i32 0, i32 0
  %2254 = load %nyx_string*, %nyx_string** %2253
  %2255 = getelementptr [6 x i8], [6 x i8]* @.str220, i32 0, i32 0
  %2256 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str220.c, i8* %2255, i64 5)
  %2257 = call i1 @nyx_string_equals(%nyx_string* %2254, %nyx_string* %2256)
  br i1 %2257, label %then436, label %else437
then436:
  %2258 = load %Value, %Value* %2252
  ret %Value %2258
else437:
  br label %merge438
merge438:
  %2259 = load %nyx_string*, %nyx_string** %2167
  %2260 = getelementptr %Value, %Value* %2240, i32 0, i32 1
  %2261 = load i64, i64* %2260
  %2262 = getelementptr %Value, %Value* %2252, i32 0, i32 1
  %2263 = load i64, i64* %2262
  %2264 = call %nyx_string* @nyx_string_substring(%nyx_string* %2259, i64 %2261, i64 %2263)
  %2265 = call %Value @make_string(%nyx_string* %2264)
  ret %Value %2265
else431:
  br label %merge432
merge432:
  %2266 = load %nyx_string*, %nyx_string** %2145
  %2267 = getelementptr [7 x i8], [7 x i8]* @.str221, i32 0, i32 0
  %2268 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str221.c, i8* %2267, i64 6)
  %2269 = call i1 @nyx_string_equals(%nyx_string* %2266, %nyx_string* %2268)
  br i1 %2269, label %then439, label %else440
then439:
  %2270 = load { i64, i8* }*, { i64, i8* }** %2149
  %2271 = call i64 @nyx_array_get({ i64, i8* }* %2270, i64 0)
  %2272 = inttoptr i64 %2271 to { i64, i8* }*
  %2273 = load %Environment, %Environment* %env.ptr
  %2274 = call %Value @eval_expr({ i64, i8* }* %2272, %Environment %2273)
  %2275 = alloca %Value
  store %Value %2274, %Value* %2275
  %2276 = getelementptr %Value, %Value* %2275, i32 0, i32 0
  %2277 = load %nyx_string*, %nyx_string** %2276
  %2278 = getelementptr [6 x i8], [6 x i8]* @.str222, i32 0, i32 0
  %2279 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str222.c, i8* %2278, i64 5)
  %2280 = call i1 @nyx_string_equals(%nyx_string* %2277, %nyx_string* %2279)
  br i1 %2280, label %then442, label %else443
then442:
  %2281 = load %Value, %Value* %2275
  ret %Value %2281
else443:
  br label %merge444
merge444:
  %2282 = load %nyx_string*, %nyx_string** %2167
  %2283 = getelementptr %Value, %Value* %2275, i32 0, i32 1
  %2284 = load i64, i64* %2283
  %2285 = call i8 @nyx_string_char_at(%nyx_string* %2282, i64 %2284)
  %2286 = zext i8 %2285 to i64
  %2287 = trunc i64 %2286 to i8
  %2288 = alloca i8
  store i8 %2287, i8* %2288
  %2289 = load i8, i8* %2288
  %2290 = call %nyx_string* @nyx_string_from_char(i8 %2289)
  %2291 = call %Value @make_string(%nyx_string* %2290)
  ret %Value %2291
else440:
  br label %merge441
merge441:
  %2292 = load %nyx_string*, %nyx_string** %2145
  %2293 = getelementptr [11 x i8], [11 x i8]* @.str223, i32 0, i32 0
  %2294 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str223.c, i8* %2293, i64 10)
  %2295 = call i1 @nyx_string_equals(%nyx_string* %2292, %nyx_string* %2294)
  br i1 %2295, label %then445, label %else446
then445:
  %2296 = load { i64, i8* }*, { i64, i8* }** %2149
  %2297 = call i64 @nyx_array_get({ i64, i8* }* %2296, i64 0)
  %2298 = inttoptr i64 %2297 to { i64, i8* }*
  %2299 = load %Environment, %Environment* %env.ptr
  %2300 = call %Value @eval_expr({ i64, i8* }* %2298, %Environment %2299)
  %2301 = alloca %Value
  store %Value %2300, %Value* %2301
  %2302 = getelementptr %Value, %Value* %2301, i32 0, i32 0
  %2303 = load %nyx_string*, %nyx_string** %2302
  %2304 = getelementptr [6 x i8], [6 x i8]* @.str224, i32 0, i32 0
  %2305 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str224.c, i8* %2304, i64 5)
  %2306 = call i1 @nyx_string_equals(%nyx_string* %2303, %nyx_string* %2305)
  br i1 %2306, label %then448, label %else449
then448:
  %2307 = load %Value, %Value* %2301
  ret %Value %2307
else449:
  br label %merge450
merge450:
  %2308 = load %nyx_string*, %nyx_string** %2167
  %2309 = getelementptr %Value, %Value* %2301, i32 0, i32 4
  %2310 = load %nyx_string*, %nyx_string** %2309
  %2311 = call i1 @nyx_string_starts_with(%nyx_string* %2308, %nyx_string* %2310)
  %2312 = call %Value @make_bool(i1 %2311)
  ret %Value %2312
else446:
  br label %merge447
merge447:
  %2313 = load %nyx_string*, %nyx_string** %2145
  %2314 = getelementptr [9 x i8], [9 x i8]* @.str225, i32 0, i32 0
  %2315 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str225.c, i8* %2314, i64 8)
  %2316 = call i1 @nyx_string_equals(%nyx_string* %2313, %nyx_string* %2315)
  br i1 %2316, label %then451, label %else452
then451:
  %2317 = load { i64, i8* }*, { i64, i8* }** %2149
  %2318 = call i64 @nyx_array_get({ i64, i8* }* %2317, i64 0)
  %2319 = inttoptr i64 %2318 to { i64, i8* }*
  %2320 = load %Environment, %Environment* %env.ptr
  %2321 = call %Value @eval_expr({ i64, i8* }* %2319, %Environment %2320)
  %2322 = alloca %Value
  store %Value %2321, %Value* %2322
  %2323 = getelementptr %Value, %Value* %2322, i32 0, i32 0
  %2324 = load %nyx_string*, %nyx_string** %2323
  %2325 = getelementptr [6 x i8], [6 x i8]* @.str226, i32 0, i32 0
  %2326 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str226.c, i8* %2325, i64 5)
  %2327 = call i1 @nyx_string_equals(%nyx_string* %2324, %nyx_string* %2326)
  br i1 %2327, label %then454, label %else455
then454:
  %2328 = load %Value, %Value* %2322
  ret %Value %2328
else455:
  br label %merge456
merge456:
  %2329 = load %nyx_string*, %nyx_string** %2167
  %2330 = getelementptr %Value, %Value* %2322, i32 0, i32 4
  %2331 = load %nyx_string*, %nyx_string** %2330
  %2332 = call i1 @nyx_string_ends_with(%nyx_string* %2329, %nyx_string* %2331)
  %2333 = call %Value @make_bool(i1 %2332)
  ret %Value %2333
else452:
  br label %merge453
merge453:
  %2334 = load %nyx_string*, %nyx_string** %2145
  %2335 = getelementptr [8 x i8], [8 x i8]* @.str227, i32 0, i32 0
  %2336 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str227.c, i8* %2335, i64 7)
  %2337 = call i1 @nyx_string_equals(%nyx_string* %2334, %nyx_string* %2336)
  br i1 %2337, label %then457, label %else458
then457:
  %2338 = load { i64, i8* }*, { i64, i8* }** %2149
  %2339 = call i64 @nyx_array_get({ i64, i8* }* %2338, i64 0)
  %2340 = inttoptr i64 %2339 to { i64, i8* }*
  %2341 = load %Environment, %Environment* %env.ptr
  %2342 = call %Value @eval_expr({ i64, i8* }* %2340, %Environment %2341)
  %2343 = alloca %Value
  store %Value %2342, %Value* %2343
  %2344 = getelementptr %Value, %Value* %2343, i32 0, i32 0
  %2345 = load %nyx_string*, %nyx_string** %2344
  %2346 = getelementptr [6 x i8], [6 x i8]* @.str228, i32 0, i32 0
  %2347 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str228.c, i8* %2346, i64 5)
  %2348 = call i1 @nyx_string_equals(%nyx_string* %2345, %nyx_string* %2347)
  br i1 %2348, label %then460, label %else461
then460:
  %2349 = load %Value, %Value* %2343
  ret %Value %2349
else461:
  br label %merge462
merge462:
  %2350 = load { i64, i8* }*, { i64, i8* }** %2149
  %2351 = call i64 @nyx_array_get({ i64, i8* }* %2350, i64 1)
  %2352 = inttoptr i64 %2351 to { i64, i8* }*
  %2353 = load %Environment, %Environment* %env.ptr
  %2354 = call %Value @eval_expr({ i64, i8* }* %2352, %Environment %2353)
  %2355 = alloca %Value
  store %Value %2354, %Value* %2355
  %2356 = getelementptr %Value, %Value* %2355, i32 0, i32 0
  %2357 = load %nyx_string*, %nyx_string** %2356
  %2358 = getelementptr [6 x i8], [6 x i8]* @.str229, i32 0, i32 0
  %2359 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str229.c, i8* %2358, i64 5)
  %2360 = call i1 @nyx_string_equals(%nyx_string* %2357, %nyx_string* %2359)
  br i1 %2360, label %then463, label %else464
then463:
  %2361 = load %Value, %Value* %2355
  ret %Value %2361
else464:
  br label %merge465
merge465:
  %2362 = load %nyx_string*, %nyx_string** %2167
  %2363 = getelementptr %Value, %Value* %2343, i32 0, i32 4
  %2364 = load %nyx_string*, %nyx_string** %2363
  %2365 = getelementptr %Value, %Value* %2355, i32 0, i32 4
  %2366 = load %nyx_string*, %nyx_string** %2365
  %2367 = call %nyx_string* @nyx_string_replace(%nyx_string* %2362, %nyx_string* %2364, %nyx_string* %2366)
  %2368 = call %Value @make_string(%nyx_string* %2367)
  ret %Value %2368
else458:
  br label %merge459
merge459:
  br label %merge405
else404:
  br label %merge405
merge405:
  %2369 = getelementptr %Value, %Value* %2153, i32 0, i32 0
  %2370 = load %nyx_string*, %nyx_string** %2369
  %2371 = getelementptr [6 x i8], [6 x i8]* @.str230, i32 0, i32 0
  %2372 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str230.c, i8* %2371, i64 5)
  %2373 = call i1 @nyx_string_equals(%nyx_string* %2370, %nyx_string* %2372)
  br i1 %2373, label %then466, label %else467
then466:
  %2374 = getelementptr %Value, %Value* %2153, i32 0, i32 5
  %2375 = load { i64, i8* }*, { i64, i8* }** %2374
  %2376 = alloca { i64, i8* }*
  store { i64, i8* }* %2375, { i64, i8* }** %2376
  %2377 = load %nyx_string*, %nyx_string** %2145
  %2378 = getelementptr [7 x i8], [7 x i8]* @.str231, i32 0, i32 0
  %2379 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str231.c, i8* %2378, i64 6)
  %2380 = call i1 @nyx_string_equals(%nyx_string* %2377, %nyx_string* %2379)
  br i1 %2380, label %then469, label %else470
then469:
  %2381 = load { i64, i8* }*, { i64, i8* }** %2376
  %2382 = call i64 @nyx_array_length({ i64, i8* }* %2381)
  %2383 = call %Value @make_int(i64 %2382)
  ret %Value %2383
else470:
  br label %merge471
merge471:
  %2384 = load %nyx_string*, %nyx_string** %2145
  %2385 = getelementptr [5 x i8], [5 x i8]* @.str232, i32 0, i32 0
  %2386 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str232.c, i8* %2385, i64 4)
  %2387 = call i1 @nyx_string_equals(%nyx_string* %2384, %nyx_string* %2386)
  br i1 %2387, label %then472, label %else473
then472:
  %2388 = load { i64, i8* }*, { i64, i8* }** %2149
  %2389 = call i64 @nyx_array_get({ i64, i8* }* %2388, i64 0)
  %2390 = inttoptr i64 %2389 to { i64, i8* }*
  %2391 = load %Environment, %Environment* %env.ptr
  %2392 = call %Value @eval_expr({ i64, i8* }* %2390, %Environment %2391)
  %2393 = alloca %Value
  store %Value %2392, %Value* %2393
  %2394 = getelementptr %Value, %Value* %2393, i32 0, i32 0
  %2395 = load %nyx_string*, %nyx_string** %2394
  %2396 = getelementptr [6 x i8], [6 x i8]* @.str233, i32 0, i32 0
  %2397 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str233.c, i8* %2396, i64 5)
  %2398 = call i1 @nyx_string_equals(%nyx_string* %2395, %nyx_string* %2397)
  br i1 %2398, label %then475, label %else476
then475:
  %2399 = load %Value, %Value* %2393
  ret %Value %2399
else476:
  br label %merge477
merge477:
  %2400 = load { i64, i8* }*, { i64, i8* }** %2376
  %2401 = load %Value, %Value* %2393
  %2402 = getelementptr %Value, %Value* null, i32 1
  %2403 = ptrtoint %Value* %2402 to i64
  %2404 = call i8* @GC_malloc(i64 %2403)
  %2405 = bitcast i8* %2404 to %Value*
  store %Value %2401, %Value* %2405
  %2406 = ptrtoint %Value* %2405 to i64
  call void @nyx_array_push({ i64, i8* }* %2400, i64 %2406)
  %2407 = call %Value @make_nil()
  ret %Value %2407
else473:
  br label %merge474
merge474:
  %2408 = load %nyx_string*, %nyx_string** %2145
  %2409 = getelementptr [4 x i8], [4 x i8]* @.str234, i32 0, i32 0
  %2410 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str234.c, i8* %2409, i64 3)
  %2411 = call i1 @nyx_string_equals(%nyx_string* %2408, %nyx_string* %2410)
  br i1 %2411, label %then478, label %else479
then478:
  %2412 = load { i64, i8* }*, { i64, i8* }** %2376
  %2413 = call i64 @nyx_array_pop({ i64, i8* }* %2412)
  %2414 = call %Value @make_nil()
  ret %Value %2414
else479:
  br label %merge480
merge480:
  br label %merge468
else467:
  br label %merge468
merge468:
  %2415 = getelementptr [8 x i8], [8 x i8]* @.str235, i32 0, i32 0
  %2416 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str235.c, i8* %2415, i64 7)
  %2417 = getelementptr [39 x i8], [39 x i8]* @.str236, i32 0, i32 0
  %2418 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str236.c, i8* %2417, i64 38)
  %2419 = load %nyx_string*, %nyx_string** %2145
  %2420 = call %nyx_string* @nyx_string_concat(%nyx_string* %2418, %nyx_string* %2419)
  %2421 = getelementptr [17 x i8], [17 x i8]* @.str237, i32 0, i32 0
  %2422 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str237.c, i8* %2421, i64 16)
  %2423 = call %nyx_string* @nyx_string_concat(%nyx_string* %2420, %nyx_string* %2422)
  %2424 = getelementptr %Value, %Value* %2153, i32 0, i32 0
  %2425 = load %nyx_string*, %nyx_string** %2424
  %2426 = call %nyx_string* @nyx_string_concat(%nyx_string* %2423, %nyx_string* %2425)
  %2427 = getelementptr [42 x i8], [42 x i8]* @.str238, i32 0, i32 0
  %2428 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str238.c, i8* %2427, i64 41)
  %2429 = load %nyx_string*, %nyx_string** %2145
  %2430 = call %nyx_string* @nyx_string_concat(%nyx_string* %2428, %nyx_string* %2429)
  %2431 = getelementptr [11 x i8], [11 x i8]* @.str239, i32 0, i32 0
  %2432 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str239.c, i8* %2431, i64 10)
  %2433 = call %nyx_string* @nyx_string_concat(%nyx_string* %2430, %nyx_string* %2432)
  %2434 = getelementptr %Value, %Value* %2153, i32 0, i32 0
  %2435 = load %nyx_string*, %nyx_string** %2434
  %2436 = call %nyx_string* @nyx_string_concat(%nyx_string* %2433, %nyx_string* %2435)
  %2437 = call i64 @interp_err(%nyx_string* %2416, %nyx_string* %2426, %nyx_string* %2436)
  %2438 = getelementptr [9 x i8], [9 x i8]* @.str240, i32 0, i32 0
  %2439 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str240.c, i8* %2438, i64 8)
  %2440 = call i8* @nyx_string_to_cstr(%nyx_string* %2439)
  %2441 = call %nyx_string* @nyx_getenv(i8* %2440)
  %2442 = alloca %nyx_string*
  store %nyx_string* %2441, %nyx_string** %2442
  %2443 = load %nyx_string*, %nyx_string** %2442
  %2444 = getelementptr [3 x i8], [3 x i8]* @.str241, i32 0, i32 0
  %2445 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str241.c, i8* %2444, i64 2)
  %2446 = call i1 @nyx_string_equals(%nyx_string* %2443, %nyx_string* %2445)
  br i1 %2446, label %then481, label %else482
then481:
  %2447 = getelementptr [85 x i8], [85 x i8]* @.str242, i32 0, i32 0
  %2448 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str242.c, i8* %2447, i64 84)
  %2449 = call i8* @nyx_string_to_cstr(%nyx_string* %2448)
  call void @nyx_print_string(i8* %2449)
  %2450 = getelementptr [85 x i8], [85 x i8]* @.str243, i32 0, i32 0
  %2451 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str243.c, i8* %2450, i64 84)
  %2452 = call i8* @nyx_string_to_cstr(%nyx_string* %2451)
  call void @nyx_print_string(i8* %2452)
  br label %merge483
else482:
  %2453 = getelementptr [79 x i8], [79 x i8]* @.str244, i32 0, i32 0
  %2454 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str244.c, i8* %2453, i64 78)
  %2455 = call i8* @nyx_string_to_cstr(%nyx_string* %2454)
  call void @nyx_print_string(i8* %2455)
  %2456 = getelementptr [84 x i8], [84 x i8]* @.str245, i32 0, i32 0
  %2457 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str245.c, i8* %2456, i64 83)
  %2458 = call i8* @nyx_string_to_cstr(%nyx_string* %2457)
  call void @nyx_print_string(i8* %2458)
  br label %merge483
merge483:
  %2459 = call %Value @make_error()
  ret %Value %2459
}

define internal %Value @eval_call(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %2460 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %2461 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %2460)
  %2462 = alloca { i64, i8* }*
  store { i64, i8* }* %2461, { i64, i8* }** %2462
  %2463 = load { i64, i8* }*, { i64, i8* }** %2462
  %2464 = call i64 @nyx_array_get({ i64, i8* }* %2463, i64 0)
  %2465 = inttoptr i64 %2464 to { i64, i8* }*
  %2466 = alloca { i64, i8* }*
  store { i64, i8* }* %2465, { i64, i8* }** %2466
  %2467 = load { i64, i8* }*, { i64, i8* }** %2462
  %2468 = call i64 @nyx_array_get({ i64, i8* }* %2467, i64 1)
  %2469 = inttoptr i64 %2468 to { i64, i8* }*
  %2470 = alloca { i64, i8* }*
  store { i64, i8* }* %2469, { i64, i8* }** %2470
  %2471 = load { i64, i8* }*, { i64, i8* }** %2466
  %2472 = call i64 @nyx_array_get({ i64, i8* }* %2471, i64 1)
  %2473 = inttoptr i64 %2472 to { i64, i8* }*
  %2474 = alloca { i64, i8* }*
  store { i64, i8* }* %2473, { i64, i8* }** %2474
  %2475 = load { i64, i8* }*, { i64, i8* }** %2474
  %2476 = call i64 @nyx_array_get_checked({ i64, i8* }* %2475, i64 0, i64 2)
  %2477 = inttoptr i64 %2476 to %nyx_string*
  %2478 = alloca %nyx_string*
  store %nyx_string* %2477, %nyx_string** %2478
  %2479 = load %nyx_string*, %nyx_string** %2478
  %2480 = getelementptr [6 x i8], [6 x i8]* @.str246, i32 0, i32 0
  %2481 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str246.c, i8* %2480, i64 5)
  %2482 = call i1 @nyx_string_equals(%nyx_string* %2479, %nyx_string* %2481)
  br i1 %2482, label %then484, label %else485
then484:
  %2483 = load { i64, i8* }*, { i64, i8* }** %2470
  %2484 = load %Environment, %Environment* %env.ptr
  %2485 = call %Value @eval_builtin_print({ i64, i8* }* %2483, %Environment %2484)
  ret %Value %2485
else485:
  br label %merge486
merge486:
  %2486 = load %nyx_string*, %nyx_string** %2478
  %2487 = getelementptr [10 x i8], [10 x i8]* @.str247, i32 0, i32 0
  %2488 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str247.c, i8* %2487, i64 9)
  %2489 = call i1 @nyx_string_equals(%nyx_string* %2486, %nyx_string* %2488)
  br i1 %2489, label %then487, label %else488
then487:
  %2490 = load { i64, i8* }*, { i64, i8* }** %2470
  %2491 = load %Environment, %Environment* %env.ptr
  %2492 = call %Value @eval_builtin_read_file({ i64, i8* }* %2490, %Environment %2491)
  ret %Value %2492
else488:
  br label %merge489
merge489:
  %2493 = load %nyx_string*, %nyx_string** %2478
  %2494 = getelementptr [14 x i8], [14 x i8]* @.str248, i32 0, i32 0
  %2495 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str248.c, i8* %2494, i64 13)
  %2496 = call i1 @nyx_string_equals(%nyx_string* %2493, %nyx_string* %2495)
  br i1 %2496, label %then490, label %else491
then490:
  %2497 = getelementptr [8 x i8], [8 x i8]* @.str249, i32 0, i32 0
  %2498 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str249.c, i8* %2497, i64 7)
  %2499 = getelementptr [122 x i8], [122 x i8]* @.str250, i32 0, i32 0
  %2500 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str250.c, i8* %2499, i64 121)
  %2501 = getelementptr [134 x i8], [134 x i8]* @.str251, i32 0, i32 0
  %2502 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str251.c, i8* %2501, i64 133)
  %2503 = call i64 @interp_err(%nyx_string* %2498, %nyx_string* %2500, %nyx_string* %2502)
  %2504 = call %Value @make_nil()
  ret %Value %2504
else491:
  br label %merge492
merge492:
  %2505 = load %nyx_string*, %nyx_string** %2478
  %2506 = getelementptr [10 x i8], [10 x i8]* @.str252, i32 0, i32 0
  %2507 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str252.c, i8* %2506, i64 9)
  %2508 = call i1 @nyx_string_equals(%nyx_string* %2505, %nyx_string* %2507)
  br i1 %2508, label %then493, label %else494
then493:
  %2509 = load { i64, i8* }*, { i64, i8* }** %2470
  %2510 = load %Environment, %Environment* %env.ptr
  %2511 = call %Value @eval_builtin_read_line({ i64, i8* }* %2509, %Environment %2510)
  ret %Value %2511
else494:
  br label %merge495
merge495:
  %2512 = load %nyx_string*, %nyx_string** %2478
  %2513 = getelementptr [17 x i8], [17 x i8]* @.str253, i32 0, i32 0
  %2514 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str253.c, i8* %2513, i64 16)
  %2515 = call i1 @nyx_string_equals(%nyx_string* %2512, %nyx_string* %2514)
  br i1 %2515, label %then496, label %else497
then496:
  %2516 = load { i64, i8* }*, { i64, i8* }** %2470
  %2517 = load %Environment, %Environment* %env.ptr
  %2518 = call %Value @eval_builtin_print_no_newline({ i64, i8* }* %2516, %Environment %2517)
  ret %Value %2518
else497:
  br label %merge498
merge498:
  %2519 = load %Environment, %Environment* %env.ptr
  %2520 = load %nyx_string*, %nyx_string** %2478
  %2521 = call i1 @env_has(%Environment %2519, %nyx_string* %2520)
  %2522 = xor i1 %2521, true
  br i1 %2522, label %then499, label %else500
then499:
  %2523 = getelementptr [8 x i8], [8 x i8]* @.str254, i32 0, i32 0
  %2524 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str254.c, i8* %2523, i64 7)
  %2525 = getelementptr [23 x i8], [23 x i8]* @.str255, i32 0, i32 0
  %2526 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str255.c, i8* %2525, i64 22)
  %2527 = load %nyx_string*, %nyx_string** %2478
  %2528 = call %nyx_string* @nyx_string_concat(%nyx_string* %2526, %nyx_string* %2527)
  %2529 = getelementptr [21 x i8], [21 x i8]* @.str256, i32 0, i32 0
  %2530 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str256.c, i8* %2529, i64 20)
  %2531 = load %nyx_string*, %nyx_string** %2478
  %2532 = call %nyx_string* @nyx_string_concat(%nyx_string* %2530, %nyx_string* %2531)
  %2533 = call i64 @interp_err(%nyx_string* %2524, %nyx_string* %2528, %nyx_string* %2532)
  %2534 = call %Value @make_error()
  ret %Value %2534
else500:
  br label %merge501
merge501:
  %2535 = load %Environment, %Environment* %env.ptr
  %2536 = load %nyx_string*, %nyx_string** %2478
  %2537 = call %Value @env_get(%Environment %2535, %nyx_string* %2536)
  %2538 = alloca %Value
  store %Value %2537, %Value* %2538
  %2539 = getelementptr %Value, %Value* %2538, i32 0, i32 0
  %2540 = load %nyx_string*, %nyx_string** %2539
  %2541 = getelementptr [9 x i8], [9 x i8]* @.str257, i32 0, i32 0
  %2542 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str257.c, i8* %2541, i64 8)
  %2543 = call i1 @nyx_string_equals(%nyx_string* %2540, %nyx_string* %2542)
  %2544 = xor i1 %2543, true
  br i1 %2544, label %then502, label %else503
then502:
  %2545 = getelementptr [8 x i8], [8 x i8]* @.str258, i32 0, i32 0
  %2546 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str258.c, i8* %2545, i64 7)
  %2547 = getelementptr [2 x i8], [2 x i8]* @.str259, i32 0, i32 0
  %2548 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str259.c, i8* %2547, i64 1)
  %2549 = load %nyx_string*, %nyx_string** %2478
  %2550 = call %nyx_string* @nyx_string_concat(%nyx_string* %2548, %nyx_string* %2549)
  %2551 = getelementptr [21 x i8], [21 x i8]* @.str260, i32 0, i32 0
  %2552 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str260.c, i8* %2551, i64 20)
  %2553 = call %nyx_string* @nyx_string_concat(%nyx_string* %2550, %nyx_string* %2552)
  %2554 = getelementptr [2 x i8], [2 x i8]* @.str261, i32 0, i32 0
  %2555 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str261.c, i8* %2554, i64 1)
  %2556 = load %nyx_string*, %nyx_string** %2478
  %2557 = call %nyx_string* @nyx_string_concat(%nyx_string* %2555, %nyx_string* %2556)
  %2558 = getelementptr [20 x i8], [20 x i8]* @.str262, i32 0, i32 0
  %2559 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str262.c, i8* %2558, i64 19)
  %2560 = call %nyx_string* @nyx_string_concat(%nyx_string* %2557, %nyx_string* %2559)
  %2561 = call i64 @interp_err(%nyx_string* %2546, %nyx_string* %2553, %nyx_string* %2560)
  %2562 = call %Value @make_error()
  ret %Value %2562
else503:
  br label %merge504
merge504:
  %2563 = load %Value, %Value* %2538
  %2564 = call { i64, i8* }* @get_func_params(%Value %2563)
  %2565 = alloca { i64, i8* }*
  store { i64, i8* }* %2564, { i64, i8* }** %2565
  %2566 = load %Value, %Value* %2538
  %2567 = call %nyx_string* @get_func_body_type(%Value %2566)
  %2568 = alloca %nyx_string*
  store %nyx_string* %2567, %nyx_string** %2568
  %2569 = load %Value, %Value* %2538
  %2570 = call { i64, i8* }* @get_func_body_data(%Value %2569)
  %2571 = alloca { i64, i8* }*
  store { i64, i8* }* %2570, { i64, i8* }** %2571
  %2572 = load %nyx_string*, %nyx_string** %2568
  %2573 = load { i64, i8* }*, { i64, i8* }** %2571
  %2574 = call { i64, i8* }* @make_astnode(%nyx_string* %2572, { i64, i8* }* %2573)
  %2575 = alloca { i64, i8* }*
  store { i64, i8* }* %2574, { i64, i8* }** %2575
  %2576 = load %Value, %Value* %2538
  %2577 = call i8* @get_func_env_bindings(%Value %2576)
  %2578 = alloca i8*
  store i8* %2577, i8** %2578
  %2579 = load %Value, %Value* %2538
  %2580 = call { i64, i8* }* @get_func_env_parent(%Value %2579)
  %2581 = alloca { i64, i8* }*
  store { i64, i8* }* %2580, { i64, i8* }** %2581
  %2582 = getelementptr %Environment, %Environment* null, i32 1
  %2583 = ptrtoint %Environment* %2582 to i64
  %2584 = call i8* @GC_malloc(i64 %2583)
  %2585 = bitcast i8* %2584 to %Environment*
  %2586 = load i8*, i8** %2578
  %2587 = getelementptr %Environment, %Environment* %2585, i32 0, i32 0
  store i8* %2586, i8** %2587
  %2588 = load { i64, i8* }*, { i64, i8* }** %2581
  %2589 = getelementptr %Environment, %Environment* %2585, i32 0, i32 1
  store { i64, i8* }* %2588, { i64, i8* }** %2589
  %2590 = load %Environment, %Environment* %2585
  %2591 = alloca %Environment
  store %Environment %2590, %Environment* %2591
  %2592 = load %Environment, %Environment* %2591
  %2593 = call %Environment @make_child_env(%Environment %2592)
  %2594 = alloca %Environment
  store %Environment %2593, %Environment* %2594
  %2595 = load { i64, i8* }*, { i64, i8* }** %2470
  %2596 = call i64 @nyx_array_length({ i64, i8* }* %2595)
  %2597 = load { i64, i8* }*, { i64, i8* }** %2565
  %2598 = call i64 @nyx_array_length({ i64, i8* }* %2597)
  %2599 = icmp ne i64 %2596, %2598
  br i1 %2599, label %then505, label %else506
then505:
  %2600 = getelementptr [8 x i8], [8 x i8]* @.str263, i32 0, i32 0
  %2601 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str263.c, i8* %2600, i64 7)
  %2602 = getelementptr [2 x i8], [2 x i8]* @.str264, i32 0, i32 0
  %2603 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str264.c, i8* %2602, i64 1)
  %2604 = load %nyx_string*, %nyx_string** %2478
  %2605 = call %nyx_string* @nyx_string_concat(%nyx_string* %2603, %nyx_string* %2604)
  %2606 = getelementptr [10 x i8], [10 x i8]* @.str265, i32 0, i32 0
  %2607 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str265.c, i8* %2606, i64 9)
  %2608 = call %nyx_string* @nyx_string_concat(%nyx_string* %2605, %nyx_string* %2607)
  %2609 = load { i64, i8* }*, { i64, i8* }** %2565
  %2610 = call i64 @nyx_array_length({ i64, i8* }* %2609)
  %2611 = call %nyx_string* @nyx_string_from_int(i64 %2610)
  %2612 = call %nyx_string* @nyx_string_concat(%nyx_string* %2608, %nyx_string* %2611)
  %2613 = getelementptr [25 x i8], [25 x i8]* @.str266, i32 0, i32 0
  %2614 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str266.c, i8* %2613, i64 24)
  %2615 = call %nyx_string* @nyx_string_concat(%nyx_string* %2612, %nyx_string* %2614)
  %2616 = load { i64, i8* }*, { i64, i8* }** %2470
  %2617 = call i64 @nyx_array_length({ i64, i8* }* %2616)
  %2618 = call %nyx_string* @nyx_string_from_int(i64 %2617)
  %2619 = call %nyx_string* @nyx_string_concat(%nyx_string* %2615, %nyx_string* %2618)
  %2620 = getelementptr [2 x i8], [2 x i8]* @.str267, i32 0, i32 0
  %2621 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str267.c, i8* %2620, i64 1)
  %2622 = load %nyx_string*, %nyx_string** %2478
  %2623 = call %nyx_string* @nyx_string_concat(%nyx_string* %2621, %nyx_string* %2622)
  %2624 = getelementptr [11 x i8], [11 x i8]* @.str268, i32 0, i32 0
  %2625 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str268.c, i8* %2624, i64 10)
  %2626 = call %nyx_string* @nyx_string_concat(%nyx_string* %2623, %nyx_string* %2625)
  %2627 = load { i64, i8* }*, { i64, i8* }** %2565
  %2628 = call i64 @nyx_array_length({ i64, i8* }* %2627)
  %2629 = call %nyx_string* @nyx_string_from_int(i64 %2628)
  %2630 = call %nyx_string* @nyx_string_concat(%nyx_string* %2626, %nyx_string* %2629)
  %2631 = getelementptr [19 x i8], [19 x i8]* @.str269, i32 0, i32 0
  %2632 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str269.c, i8* %2631, i64 18)
  %2633 = call %nyx_string* @nyx_string_concat(%nyx_string* %2630, %nyx_string* %2632)
  %2634 = load { i64, i8* }*, { i64, i8* }** %2470
  %2635 = call i64 @nyx_array_length({ i64, i8* }* %2634)
  %2636 = call %nyx_string* @nyx_string_from_int(i64 %2635)
  %2637 = call %nyx_string* @nyx_string_concat(%nyx_string* %2633, %nyx_string* %2636)
  %2638 = call i64 @interp_err(%nyx_string* %2601, %nyx_string* %2619, %nyx_string* %2637)
  %2639 = call %Value @make_error()
  ret %Value %2639
else506:
  br label %merge507
merge507:
  %2640 = alloca i64
  store i64 0, i64* %2640
  %2641 = getelementptr [6 x i8], [6 x i8]* @.str270, i32 0, i32 0
  %2642 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str270.c, i8* %2641, i64 5)
  %2643 = alloca %nyx_string*
  store %nyx_string* %2642, %nyx_string** %2643
  %2644 = call i8* @llvm.stacksave()
  br label %while_cond508
while_cond508:
  %2645 = load i64, i64* %2640
  %2646 = load { i64, i8* }*, { i64, i8* }** %2565
  %2647 = call i64 @nyx_array_length({ i64, i8* }* %2646)
  %2648 = icmp slt i64 %2645, %2647
  br i1 %2648, label %while_body509, label %while_end510
while_body509:
  call void @llvm.stackrestore(i8* %2644)
  %2649 = load { i64, i8* }*, { i64, i8* }** %2565
  %2650 = load i64, i64* %2640
  %2651 = call i64 @nyx_array_get({ i64, i8* }* %2649, i64 %2650)
  %2652 = inttoptr i64 %2651 to { i64, i8* }*
  %2653 = alloca { i64, i8* }*
  store { i64, i8* }* %2652, { i64, i8* }** %2653
  %2654 = load { i64, i8* }*, { i64, i8* }** %2653
  %2655 = call i64 @nyx_array_get_checked({ i64, i8* }* %2654, i64 0, i64 2)
  %2656 = inttoptr i64 %2655 to %nyx_string*
  %2657 = alloca %nyx_string*
  store %nyx_string* %2656, %nyx_string** %2657
  %2658 = load { i64, i8* }*, { i64, i8* }** %2470
  %2659 = load i64, i64* %2640
  %2660 = call i64 @nyx_array_get({ i64, i8* }* %2658, i64 %2659)
  %2661 = inttoptr i64 %2660 to { i64, i8* }*
  %2662 = alloca { i64, i8* }*
  store { i64, i8* }* %2661, { i64, i8* }** %2662
  %2663 = load { i64, i8* }*, { i64, i8* }** %2662
  %2664 = load %Environment, %Environment* %env.ptr
  %2665 = call %Value @eval_expr({ i64, i8* }* %2663, %Environment %2664)
  %2666 = alloca %Value
  store %Value %2665, %Value* %2666
  %2667 = getelementptr %Value, %Value* %2666, i32 0, i32 0
  %2668 = load %nyx_string*, %nyx_string** %2667
  %2669 = load %nyx_string*, %nyx_string** %2643
  %2670 = call i1 @nyx_string_equals(%nyx_string* %2668, %nyx_string* %2669)
  br i1 %2670, label %then511, label %else512
then511:
  %2671 = load %Value, %Value* %2666
  ret %Value %2671
else512:
  br label %merge513
merge513:
  %2672 = load %Environment, %Environment* %2594
  %2673 = load %nyx_string*, %nyx_string** %2657
  %2674 = load %Value, %Value* %2666
  %2675 = call i64 @env_define(%Environment %2672, %nyx_string* %2673, %Value %2674)
  %2676 = load i64, i64* %2640
  %2677 = add i64 %2676, 1
  store i64 %2677, i64* %2640
  br label %while_cond508
while_end510:
  %2678 = load { i64, i8* }*, { i64, i8* }** %2575
  %2679 = load %Environment, %Environment* %2594
  %2680 = call %Value @eval_stmt({ i64, i8* }* %2678, %Environment %2679)
  %2681 = alloca %Value
  store %Value %2680, %Value* %2681
  %2682 = getelementptr %Value, %Value* %2681, i32 0, i32 0
  %2683 = load %nyx_string*, %nyx_string** %2682
  %2684 = getelementptr [7 x i8], [7 x i8]* @.str271, i32 0, i32 0
  %2685 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str271.c, i8* %2684, i64 6)
  %2686 = call i1 @nyx_string_equals(%nyx_string* %2683, %nyx_string* %2685)
  br i1 %2686, label %then514, label %else515
then514:
  %2687 = load %Value, %Value* %2681
  %2688 = call %Value @unwrap_return_value(%Value %2687)
  ret %Value %2688
else515:
  br label %merge516
merge516:
  %2689 = load %Value, %Value* %2681
  %2690 = call i1 @is_loop_control(%Value %2689)
  br i1 %2690, label %then517, label %else518
then517:
  %2691 = load %Value, %Value* %2681
  %2692 = call %Value @loop_control_escaped(%Value %2691)
  ret %Value %2692
else518:
  br label %merge519
merge519:
  %2693 = load %Value, %Value* %2681
  ret %Value %2693
}

define internal %Value @eval_builtin_print(
{ i64, i8* }* %args.param, %Environment %env.param) {
  %args.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %args.param, { i64, i8* }** %args.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %2694 = alloca i64
  store i64 0, i64* %2694
  %2695 = getelementptr [6 x i8], [6 x i8]* @.str272, i32 0, i32 0
  %2696 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str272.c, i8* %2695, i64 5)
  %2697 = alloca %nyx_string*
  store %nyx_string* %2696, %nyx_string** %2697
  %2698 = call i8* @llvm.stacksave()
  br label %while_cond520
while_cond520:
  %2699 = load i64, i64* %2694
  %2700 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %2701 = call i64 @nyx_array_length({ i64, i8* }* %2700)
  %2702 = icmp slt i64 %2699, %2701
  br i1 %2702, label %while_body521, label %while_end522
while_body521:
  call void @llvm.stackrestore(i8* %2698)
  %2703 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %2704 = load i64, i64* %2694
  %2705 = call i64 @nyx_array_get({ i64, i8* }* %2703, i64 %2704)
  %2706 = inttoptr i64 %2705 to { i64, i8* }*
  %2707 = alloca { i64, i8* }*
  store { i64, i8* }* %2706, { i64, i8* }** %2707
  %2708 = load { i64, i8* }*, { i64, i8* }** %2707
  %2709 = load %Environment, %Environment* %env.ptr
  %2710 = call %Value @eval_expr({ i64, i8* }* %2708, %Environment %2709)
  %2711 = alloca %Value
  store %Value %2710, %Value* %2711
  %2712 = getelementptr %Value, %Value* %2711, i32 0, i32 0
  %2713 = load %nyx_string*, %nyx_string** %2712
  %2714 = load %nyx_string*, %nyx_string** %2697
  %2715 = call i1 @nyx_string_equals(%nyx_string* %2713, %nyx_string* %2714)
  br i1 %2715, label %then523, label %else524
then523:
  %2716 = load %Value, %Value* %2711
  ret %Value %2716
else524:
  br label %merge525
merge525:
  %2717 = load %Value, %Value* %2711
  %2718 = call i64 @print_value(%Value %2717)
  %2719 = load i64, i64* %2694
  %2720 = add i64 %2719, 1
  store i64 %2720, i64* %2694
  br label %while_cond520
while_end522:
  %2721 = call %Value @make_nil()
  ret %Value %2721
}

define internal %Value @eval_builtin_read_line(
{ i64, i8* }* %args.param, %Environment %env.param) {
  %args.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %args.param, { i64, i8* }** %args.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %2722 = call %nyx_string* @nyx_read_line()
  %2723 = alloca %nyx_string*
  store %nyx_string* %2722, %nyx_string** %2723
  %2724 = load %nyx_string*, %nyx_string** %2723
  %2725 = call %Value @make_string(%nyx_string* %2724)
  ret %Value %2725
}

define internal %Value @eval_builtin_print_no_newline(
{ i64, i8* }* %args.param, %Environment %env.param) {
  %args.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %args.param, { i64, i8* }** %args.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %2726 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %2727 = call i64 @nyx_array_length({ i64, i8* }* %2726)
  %2728 = icmp sgt i64 %2727, 0
  br i1 %2728, label %then526, label %else527
then526:
  %2729 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %2730 = call i64 @nyx_array_get({ i64, i8* }* %2729, i64 0)
  %2731 = inttoptr i64 %2730 to { i64, i8* }*
  %2732 = alloca { i64, i8* }*
  store { i64, i8* }* %2731, { i64, i8* }** %2732
  %2733 = load { i64, i8* }*, { i64, i8* }** %2732
  %2734 = load %Environment, %Environment* %env.ptr
  %2735 = call %Value @eval_expr({ i64, i8* }* %2733, %Environment %2734)
  %2736 = alloca %Value
  store %Value %2735, %Value* %2736
  %2737 = getelementptr %Value, %Value* %2736, i32 0, i32 0
  %2738 = load %nyx_string*, %nyx_string** %2737
  %2739 = getelementptr [6 x i8], [6 x i8]* @.str273, i32 0, i32 0
  %2740 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str273.c, i8* %2739, i64 5)
  %2741 = call i1 @nyx_string_equals(%nyx_string* %2738, %nyx_string* %2740)
  br i1 %2741, label %then529, label %else530
then529:
  %2742 = load %Value, %Value* %2736
  ret %Value %2742
else530:
  br label %merge531
merge531:
  %2743 = load %Value, %Value* %2736
  %2744 = call %nyx_string* @value_to_string(%Value %2743)
  call void @nyx_print_no_newline(%nyx_string* %2744)
  br label %merge528
else527:
  br label %merge528
merge528:
  %2745 = call %Value @make_nil()
  ret %Value %2745
}

define internal %Value @eval_builtin_read_file(
{ i64, i8* }* %args.param, %Environment %env.param) {
  %args.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %args.param, { i64, i8* }** %args.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %2746 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %2747 = call i64 @nyx_array_length({ i64, i8* }* %2746)
  %2748 = icmp sgt i64 %2747, 0
  br i1 %2748, label %then532, label %else533
then532:
  %2749 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %2750 = call i64 @nyx_array_get({ i64, i8* }* %2749, i64 0)
  %2751 = inttoptr i64 %2750 to { i64, i8* }*
  %2752 = load %Environment, %Environment* %env.ptr
  %2753 = call %Value @eval_expr({ i64, i8* }* %2751, %Environment %2752)
  %2754 = alloca %Value
  store %Value %2753, %Value* %2754
  %2755 = load %Value, %Value* %2754
  %2756 = call %nyx_string* @value_to_string(%Value %2755)
  %2757 = alloca %nyx_string*
  store %nyx_string* %2756, %nyx_string** %2757
  %2758 = load %nyx_string*, %nyx_string** %2757
  %2759 = call i8* @nyx_string_to_cstr(%nyx_string* %2758)
  %2760 = call %nyx_string* @nyx_read_file(i8* %2759)
  %2761 = alloca %nyx_string*
  store %nyx_string* %2760, %nyx_string** %2761
  %2762 = load %nyx_string*, %nyx_string** %2761
  %2763 = call %Value @make_string(%nyx_string* %2762)
  ret %Value %2763
else533:
  br label %merge534
merge534:
  %2764 = call %Value @make_nil()
  ret %Value %2764
}

define %Environment @repl_make_env(
) {
  %2765 = call %Environment @make_env()
  ret %Environment %2765
}

define %nyx_string* @repl_eval(
{ i64, i8* }* %ast.param, %Environment %env.param) {
  %ast.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %ast.param, { i64, i8* }** %ast.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %2766 = load { i64, i8* }*, { i64, i8* }** %ast.ptr
  %2767 = call i64 @nyx_array_get({ i64, i8* }* %2766, i64 1)
  %2768 = inttoptr i64 %2767 to { i64, i8* }*
  %2769 = alloca { i64, i8* }*
  store { i64, i8* }* %2768, { i64, i8* }** %2769
  %2770 = load { i64, i8* }*, { i64, i8* }** %2769
  %2771 = call i64 @nyx_array_get({ i64, i8* }* %2770, i64 0)
  %2772 = inttoptr i64 %2771 to { i64, i8* }*
  %2773 = alloca { i64, i8* }*
  store { i64, i8* }* %2772, { i64, i8* }** %2773
  %2774 = getelementptr [1 x i8], [1 x i8]* @.str274, i32 0, i32 0
  %2775 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str274.c, i8* %2774, i64 0)
  %2776 = alloca %nyx_string*
  store %nyx_string* %2775, %nyx_string** %2776
  %2777 = alloca i64
  store i64 0, i64* %2777
  %2778 = call i8* @llvm.stacksave()
  br label %while_cond535
while_cond535:
  %2779 = load i64, i64* %2777
  %2780 = load { i64, i8* }*, { i64, i8* }** %2773
  %2781 = call i64 @nyx_array_length({ i64, i8* }* %2780)
  %2782 = icmp slt i64 %2779, %2781
  br i1 %2782, label %while_body536, label %while_end537
while_body536:
  call void @llvm.stackrestore(i8* %2778)
  %2783 = load { i64, i8* }*, { i64, i8* }** %2773
  %2784 = load i64, i64* %2777
  %2785 = call i64 @nyx_array_get({ i64, i8* }* %2783, i64 %2784)
  %2786 = inttoptr i64 %2785 to { i64, i8* }*
  %2787 = alloca { i64, i8* }*
  store { i64, i8* }* %2786, { i64, i8* }** %2787
  %2788 = load { i64, i8* }*, { i64, i8* }** %2787
  %2789 = load %Environment, %Environment* %env.ptr
  %2790 = call %Value @eval_stmt({ i64, i8* }* %2788, %Environment %2789)
  %2791 = alloca %Value
  store %Value %2790, %Value* %2791
  %2792 = getelementptr %Value, %Value* %2791, i32 0, i32 0
  %2793 = load %nyx_string*, %nyx_string** %2792
  %2794 = getelementptr [6 x i8], [6 x i8]* @.str275, i32 0, i32 0
  %2795 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str275.c, i8* %2794, i64 5)
  %2796 = call i1 @nyx_string_equals(%nyx_string* %2793, %nyx_string* %2795)
  br i1 %2796, label %then538, label %else539
then538:
  %2797 = getelementptr [1 x i8], [1 x i8]* @.str276, i32 0, i32 0
  %2798 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str276.c, i8* %2797, i64 0)
  ret %nyx_string* %2798
else539:
  br label %merge540
merge540:
  %2799 = load %Value, %Value* %2791
  %2800 = call i1 @is_loop_control(%Value %2799)
  br i1 %2800, label %then541, label %else542
then541:
  %2801 = load %Value, %Value* %2791
  %2802 = call %Value @loop_control_escaped(%Value %2801)
  %2803 = alloca %Value
  store %Value %2802, %Value* %2803
  %2804 = getelementptr [1 x i8], [1 x i8]* @.str277, i32 0, i32 0
  %2805 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str277.c, i8* %2804, i64 0)
  ret %nyx_string* %2805
else542:
  br label %merge543
merge543:
  %2806 = alloca i1
  store i1 false, i1* %2806
  %2807 = getelementptr %Value, %Value* %2791, i32 0, i32 0
  %2808 = load %nyx_string*, %nyx_string** %2807
  %2809 = getelementptr [4 x i8], [4 x i8]* @.str278, i32 0, i32 0
  %2810 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str278.c, i8* %2809, i64 3)
  %2811 = call i1 @nyx_string_equals(%nyx_string* %2808, %nyx_string* %2810)
  %2812 = xor i1 %2811, true
  br i1 %2812, label %sc_and_rhs544, label %sc_and_end545
sc_and_rhs544:
  %2813 = getelementptr %Value, %Value* %2791, i32 0, i32 0
  %2814 = load %nyx_string*, %nyx_string** %2813
  %2815 = getelementptr [7 x i8], [7 x i8]* @.str279, i32 0, i32 0
  %2816 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str279.c, i8* %2815, i64 6)
  %2817 = call i1 @nyx_string_equals(%nyx_string* %2814, %nyx_string* %2816)
  %2818 = xor i1 %2817, true
  store i1 %2818, i1* %2806
  br label %sc_and_end545
sc_and_end545:
  %2819 = load i1, i1* %2806
  br i1 %2819, label %then546, label %else547
then546:
  %2820 = getelementptr [4 x i8], [4 x i8]* @.str280, i32 0, i32 0
  %2821 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str280.c, i8* %2820, i64 3)
  %2822 = load %Value, %Value* %2791
  %2823 = call %nyx_string* @value_to_string(%Value %2822)
  %2824 = call %nyx_string* @nyx_string_concat(%nyx_string* %2821, %nyx_string* %2823)
  store %nyx_string* %2824, %nyx_string** %2776
  br label %merge548
else547:
  br label %merge548
merge548:
  %2825 = load i64, i64* %2777
  %2826 = add i64 %2825, 1
  store i64 %2826, i64* %2777
  br label %while_cond535
while_end537:
  %2827 = load %nyx_string*, %nyx_string** %2776
  ret %nyx_string* %2827
}

define i8* @repl_make_map(
) {
  %2828 = call i8* @nyx_map_new(i32 0)
  ret i8* %2828
}

define %nyx_string* @repl_eval_with_map(
{ i64, i8* }* %ast.param, i8* %env_map.param) {
  %ast.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %ast.param, { i64, i8* }** %ast.ptr
  %env_map.ptr = alloca i8*
  store i8* %env_map.param, i8** %env_map.ptr
  %2829 = getelementptr %Environment, %Environment* null, i32 1
  %2830 = ptrtoint %Environment* %2829 to i64
  %2831 = call i8* @GC_malloc(i64 %2830)
  %2832 = bitcast i8* %2831 to %Environment*
  %2833 = load i8*, i8** %env_map.ptr
  %2834 = getelementptr %Environment, %Environment* %2832, i32 0, i32 0
  store i8* %2833, i8** %2834
  %2835 = call { i64, i8* }* @nyx_array_new_ptr()
  %2836 = getelementptr %Environment, %Environment* %2832, i32 0, i32 1
  store { i64, i8* }* %2835, { i64, i8* }** %2836
  %2837 = load %Environment, %Environment* %2832
  %2838 = alloca %Environment
  store %Environment %2837, %Environment* %2838
  %2839 = load { i64, i8* }*, { i64, i8* }** %ast.ptr
  %2840 = load %Environment, %Environment* %2838
  %2841 = call %nyx_string* @repl_eval({ i64, i8* }* %2839, %Environment %2840)
  ret %nyx_string* %2841
}

define %Value @interpret(
{ i64, i8* }* %ast.param) {
  %ast.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %ast.param, { i64, i8* }** %ast.ptr
  %2842 = call %Environment @make_env()
  %2843 = alloca %Environment
  store %Environment %2842, %Environment* %2843
  %2844 = load { i64, i8* }*, { i64, i8* }** %ast.ptr
  %2845 = call %nyx_string* @astnode_get_type({ i64, i8* }* %2844)
  %2846 = alloca %nyx_string*
  store %nyx_string* %2845, %nyx_string** %2846
  %2847 = load %nyx_string*, %nyx_string** %2846
  %2848 = getelementptr [6 x i8], [6 x i8]* @.str281, i32 0, i32 0
  %2849 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str281.c, i8* %2848, i64 5)
  %2850 = call i1 @nyx_string_equals(%nyx_string* %2847, %nyx_string* %2849)
  br i1 %2850, label %then549, label %else550
then549:
  %2851 = load { i64, i8* }*, { i64, i8* }** %ast.ptr
  %2852 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %2851)
  %2853 = alloca { i64, i8* }*
  store { i64, i8* }* %2852, { i64, i8* }** %2853
  %2854 = load { i64, i8* }*, { i64, i8* }** %2853
  %2855 = call i64 @nyx_array_get({ i64, i8* }* %2854, i64 0)
  %2856 = inttoptr i64 %2855 to { i64, i8* }*
  %2857 = alloca { i64, i8* }*
  store { i64, i8* }* %2856, { i64, i8* }** %2857
  %2858 = alloca i64
  store i64 0, i64* %2858
  %2859 = call i8* @llvm.stacksave()
  br label %while_cond552
while_cond552:
  %2860 = load i64, i64* %2858
  %2861 = load { i64, i8* }*, { i64, i8* }** %2857
  %2862 = call i64 @nyx_array_length({ i64, i8* }* %2861)
  %2863 = icmp slt i64 %2860, %2862
  br i1 %2863, label %while_body553, label %while_end554
while_body553:
  call void @llvm.stackrestore(i8* %2859)
  %2864 = load { i64, i8* }*, { i64, i8* }** %2857
  %2865 = load i64, i64* %2858
  %2866 = call i64 @nyx_array_get({ i64, i8* }* %2864, i64 %2865)
  %2867 = inttoptr i64 %2866 to { i64, i8* }*
  %2868 = alloca { i64, i8* }*
  store { i64, i8* }* %2867, { i64, i8* }** %2868
  %2869 = load { i64, i8* }*, { i64, i8* }** %2868
  %2870 = load %Environment, %Environment* %2843
  %2871 = call %Value @eval_stmt({ i64, i8* }* %2869, %Environment %2870)
  %2872 = alloca %Value
  store %Value %2871, %Value* %2872
  %2873 = getelementptr %Value, %Value* %2872, i32 0, i32 0
  %2874 = load %nyx_string*, %nyx_string** %2873
  %2875 = getelementptr [6 x i8], [6 x i8]* @.str282, i32 0, i32 0
  %2876 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str282.c, i8* %2875, i64 5)
  %2877 = call i1 @nyx_string_equals(%nyx_string* %2874, %nyx_string* %2876)
  br i1 %2877, label %then555, label %else556
then555:
  %2878 = load %Value, %Value* %2872
  ret %Value %2878
else556:
  br label %merge557
merge557:
  %2879 = load %Value, %Value* %2872
  %2880 = call i1 @is_loop_control(%Value %2879)
  br i1 %2880, label %then558, label %else559
then558:
  %2881 = load %Value, %Value* %2872
  %2882 = call %Value @loop_control_escaped(%Value %2881)
  ret %Value %2882
else559:
  br label %merge560
merge560:
  %2883 = load i64, i64* %2858
  %2884 = add i64 %2883, 1
  store i64 %2884, i64* %2858
  br label %while_cond552
while_end554:
  %2885 = getelementptr %Environment, %Environment* %2843, i32 0, i32 0
  %2886 = load i8*, i8** %2885
  %2887 = alloca i8*
  store i8* %2886, i8** %2887
  %2888 = load i8*, i8** %2887
  %2889 = getelementptr [5 x i8], [5 x i8]* @.str283, i32 0, i32 0
  %2890 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str283.c, i8* %2889, i64 4)
  %2891 = call i8* @nyx_string_to_cstr(%nyx_string* %2890)
  %2892 = call i1 @nyx_map_contains_str(i8* %2888, i8* %2891)
  br i1 %2892, label %then561, label %else562
then561:
  %2893 = load %Environment, %Environment* %2843
  %2894 = getelementptr [5 x i8], [5 x i8]* @.str284, i32 0, i32 0
  %2895 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str284.c, i8* %2894, i64 4)
  %2896 = call %Value @env_get(%Environment %2893, %nyx_string* %2895)
  %2897 = alloca %Value
  store %Value %2896, %Value* %2897
  %2898 = getelementptr %Value, %Value* %2897, i32 0, i32 0
  %2899 = load %nyx_string*, %nyx_string** %2898
  %2900 = getelementptr [9 x i8], [9 x i8]* @.str285, i32 0, i32 0
  %2901 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str285.c, i8* %2900, i64 8)
  %2902 = call i1 @nyx_string_equals(%nyx_string* %2899, %nyx_string* %2901)
  br i1 %2902, label %then564, label %else565
then564:
  %2903 = load %Value, %Value* %2897
  %2904 = call { i64, i8* }* @get_func_params(%Value %2903)
  %2905 = alloca { i64, i8* }*
  store { i64, i8* }* %2904, { i64, i8* }** %2905
  %2906 = load %Value, %Value* %2897
  %2907 = call %nyx_string* @get_func_body_type(%Value %2906)
  %2908 = alloca %nyx_string*
  store %nyx_string* %2907, %nyx_string** %2908
  %2909 = load %Value, %Value* %2897
  %2910 = call { i64, i8* }* @get_func_body_data(%Value %2909)
  %2911 = alloca { i64, i8* }*
  store { i64, i8* }* %2910, { i64, i8* }** %2911
  %2912 = load %nyx_string*, %nyx_string** %2908
  %2913 = load { i64, i8* }*, { i64, i8* }** %2911
  %2914 = call { i64, i8* }* @make_astnode(%nyx_string* %2912, { i64, i8* }* %2913)
  %2915 = alloca { i64, i8* }*
  store { i64, i8* }* %2914, { i64, i8* }** %2915
  %2916 = load %Value, %Value* %2897
  %2917 = call i8* @get_func_env_bindings(%Value %2916)
  %2918 = alloca i8*
  store i8* %2917, i8** %2918
  %2919 = load %Value, %Value* %2897
  %2920 = call { i64, i8* }* @get_func_env_parent(%Value %2919)
  %2921 = alloca { i64, i8* }*
  store { i64, i8* }* %2920, { i64, i8* }** %2921
  %2922 = getelementptr %Environment, %Environment* null, i32 1
  %2923 = ptrtoint %Environment* %2922 to i64
  %2924 = call i8* @GC_malloc(i64 %2923)
  %2925 = bitcast i8* %2924 to %Environment*
  %2926 = load i8*, i8** %2918
  %2927 = getelementptr %Environment, %Environment* %2925, i32 0, i32 0
  store i8* %2926, i8** %2927
  %2928 = load { i64, i8* }*, { i64, i8* }** %2921
  %2929 = getelementptr %Environment, %Environment* %2925, i32 0, i32 1
  store { i64, i8* }* %2928, { i64, i8* }** %2929
  %2930 = load %Environment, %Environment* %2925
  %2931 = alloca %Environment
  store %Environment %2930, %Environment* %2931
  %2932 = load %Environment, %Environment* %2931
  %2933 = call %Environment @make_child_env(%Environment %2932)
  %2934 = alloca %Environment
  store %Environment %2933, %Environment* %2934
  %2935 = load { i64, i8* }*, { i64, i8* }** %2915
  %2936 = load %Environment, %Environment* %2934
  %2937 = call %Value @eval_stmt({ i64, i8* }* %2935, %Environment %2936)
  %2938 = alloca %Value
  store %Value %2937, %Value* %2938
  %2939 = load %Value, %Value* %2938
  %2940 = call i1 @is_loop_control(%Value %2939)
  br i1 %2940, label %then567, label %else568
then567:
  %2941 = load %Value, %Value* %2938
  %2942 = call %Value @loop_control_escaped(%Value %2941)
  ret %Value %2942
else568:
  br label %merge569
merge569:
  %2943 = load %Value, %Value* %2938
  ret %Value %2943
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
  %2944 = call %Value @make_nil()
  ret %Value %2944
}

; Inicialización de variables globales (llamada automática vía ctor)
define void @__nyx_init_globals() {
entry:
  %2945 = call { i64, i8* }* @nyx_array_new_ptr()
  call void @nyx_array_push_tagged({ i64, i8* }* %2945, i64 0, i64 1)
  store { i64, i8* }* %2945, { i64, i8* }** @g_interp_error_count
  ret void
}

@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @__nyx_init_globals, i8* null }]

attributes #0 = { returns_twice }

