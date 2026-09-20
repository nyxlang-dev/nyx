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
@.str88 = private unnamed_addr constant [5 x i8] c"true\00"
@.str88.c = internal global %nyx_string* null
@.str89 = private unnamed_addr constant [6 x i8] c"error\00"
@.str89.c = internal global %nyx_string* null
@.str90 = private unnamed_addr constant [6 x i8] c"error\00"
@.str90.c = internal global %nyx_string* null
@.str91 = private unnamed_addr constant [6 x i8] c"float\00"
@.str91.c = internal global %nyx_string* null
@.str92 = private unnamed_addr constant [6 x i8] c"float\00"
@.str92.c = internal global %nyx_string* null
@.str93 = private unnamed_addr constant [5 x i8] c"PLUS\00"
@.str93.c = internal global %nyx_string* null
@.str94 = private unnamed_addr constant [7 x i8] c"string\00"
@.str94.c = internal global %nyx_string* null
@.str95 = private unnamed_addr constant [6 x i8] c"MINUS\00"
@.str95.c = internal global %nyx_string* null
@.str96 = private unnamed_addr constant [5 x i8] c"STAR\00"
@.str96.c = internal global %nyx_string* null
@.str97 = private unnamed_addr constant [6 x i8] c"SLASH\00"
@.str97.c = internal global %nyx_string* null
@.str98 = private unnamed_addr constant [8 x i8] c"NYX3005\00"
@.str98.c = internal global %nyx_string* null
@.str99 = private unnamed_addr constant [19 x i8] c"división por cero\00"
@.str99.c = internal global %nyx_string* null
@.str100 = private unnamed_addr constant [17 x i8] c"division by zero\00"
@.str100.c = internal global %nyx_string* null
@.str101 = private unnamed_addr constant [8 x i8] c"PERCENT\00"
@.str101.c = internal global %nyx_string* null
@.str102 = private unnamed_addr constant [8 x i8] c"NYX3005\00"
@.str102.c = internal global %nyx_string* null
@.str103 = private unnamed_addr constant [17 x i8] c"módulo por cero\00"
@.str103.c = internal global %nyx_string* null
@.str104 = private unnamed_addr constant [15 x i8] c"modulo by zero\00"
@.str104.c = internal global %nyx_string* null
@.str105 = private unnamed_addr constant [12 x i8] c"EQUAL_EQUAL\00"
@.str105.c = internal global %nyx_string* null
@.str106 = private unnamed_addr constant [10 x i8] c"NOT_EQUAL\00"
@.str106.c = internal global %nyx_string* null
@.str107 = private unnamed_addr constant [5 x i8] c"LESS\00"
@.str107.c = internal global %nyx_string* null
@.str108 = private unnamed_addr constant [8 x i8] c"GREATER\00"
@.str108.c = internal global %nyx_string* null
@.str109 = private unnamed_addr constant [11 x i8] c"LESS_EQUAL\00"
@.str109.c = internal global %nyx_string* null
@.str110 = private unnamed_addr constant [14 x i8] c"GREATER_EQUAL\00"
@.str110.c = internal global %nyx_string* null
@.str111 = private unnamed_addr constant [8 x i8] c"AND_AND\00"
@.str111.c = internal global %nyx_string* null
@.str112 = private unnamed_addr constant [4 x i8] c"AND\00"
@.str112.c = internal global %nyx_string* null
@.str113 = private unnamed_addr constant [6 x i8] c"OR_OR\00"
@.str113.c = internal global %nyx_string* null
@.str114 = private unnamed_addr constant [3 x i8] c"OR\00"
@.str114.c = internal global %nyx_string* null
@.str115 = private unnamed_addr constant [8 x i8] c"NYX3002\00"
@.str115.c = internal global %nyx_string* null
@.str116 = private unnamed_addr constant [24 x i8] c"operador no soportado: \00"
@.str116.c = internal global %nyx_string* null
@.str117 = private unnamed_addr constant [25 x i8] c"operator not supported: \00"
@.str117.c = internal global %nyx_string* null
@.str118 = private unnamed_addr constant [6 x i8] c"error\00"
@.str118.c = internal global %nyx_string* null
@.str119 = private unnamed_addr constant [6 x i8] c"MINUS\00"
@.str119.c = internal global %nyx_string* null
@.str120 = private unnamed_addr constant [4 x i8] c"NOT\00"
@.str120.c = internal global %nyx_string* null
@.str121 = private unnamed_addr constant [8 x i8] c"NYX3002\00"
@.str121.c = internal global %nyx_string* null
@.str122 = private unnamed_addr constant [31 x i8] c"operador unario no soportado: \00"
@.str122.c = internal global %nyx_string* null
@.str123 = private unnamed_addr constant [31 x i8] c"unary operator not supported: \00"
@.str123.c = internal global %nyx_string* null
@.str124 = private unnamed_addr constant [6 x i8] c"error\00"
@.str124.c = internal global %nyx_string* null
@.str125 = private unnamed_addr constant [6 x i8] c"error\00"
@.str125.c = internal global %nyx_string* null
@.str126 = private unnamed_addr constant [6 x i8] c"error\00"
@.str126.c = internal global %nyx_string* null
@.str127 = private unnamed_addr constant [6 x i8] c"array\00"
@.str127.c = internal global %nyx_string* null
@.str128 = private unnamed_addr constant [8 x i8] c"NYX3002\00"
@.str128.c = internal global %nyx_string* null
@.str129 = private unnamed_addr constant [56 x i8] c"indexado no soportado por el intérprete sobre el tipo \00"
@.str129.c = internal global %nyx_string* null
@.str130 = private unnamed_addr constant [51 x i8] c"indexing not supported by the interpreter on type \00"
@.str130.c = internal global %nyx_string* null
@.str131 = private unnamed_addr constant [8 x i8] c"NYX3005\00"
@.str131.c = internal global %nyx_string* null
@.str132 = private unnamed_addr constant [23 x i8] c"índice fuera de rango\00"
@.str132.c = internal global %nyx_string* null
@.str133 = private unnamed_addr constant [19 x i8] c"index out of range\00"
@.str133.c = internal global %nyx_string* null
@.str134 = private unnamed_addr constant [4 x i8] c"let\00"
@.str134.c = internal global %nyx_string* null
@.str135 = private unnamed_addr constant [4 x i8] c"var\00"
@.str135.c = internal global %nyx_string* null
@.str136 = private unnamed_addr constant [7 x i8] c"assign\00"
@.str136.c = internal global %nyx_string* null
@.str137 = private unnamed_addr constant [3 x i8] c"if\00"
@.str137.c = internal global %nyx_string* null
@.str138 = private unnamed_addr constant [6 x i8] c"while\00"
@.str138.c = internal global %nyx_string* null
@.str139 = private unnamed_addr constant [4 x i8] c"for\00"
@.str139.c = internal global %nyx_string* null
@.str140 = private unnamed_addr constant [7 x i8] c"return\00"
@.str140.c = internal global %nyx_string* null
@.str141 = private unnamed_addr constant [6 x i8] c"block\00"
@.str141.c = internal global %nyx_string* null
@.str142 = private unnamed_addr constant [9 x i8] c"function\00"
@.str142.c = internal global %nyx_string* null
@.str143 = private unnamed_addr constant [13 x i8] c"index_assign\00"
@.str143.c = internal global %nyx_string* null
@.str144 = private unnamed_addr constant [13 x i8] c"field_assign\00"
@.str144.c = internal global %nyx_string* null
@.str145 = private unnamed_addr constant [6 x i8] c"break\00"
@.str145.c = internal global %nyx_string* null
@.str146 = private unnamed_addr constant [6 x i8] c"break\00"
@.str146.c = internal global %nyx_string* null
@.str147 = private unnamed_addr constant [9 x i8] c"continue\00"
@.str147.c = internal global %nyx_string* null
@.str148 = private unnamed_addr constant [9 x i8] c"continue\00"
@.str148.c = internal global %nyx_string* null
@.str149 = private unnamed_addr constant [6 x i8] c"error\00"
@.str149.c = internal global %nyx_string* null
@.str150 = private unnamed_addr constant [6 x i8] c"error\00"
@.str150.c = internal global %nyx_string* null
@.str151 = private unnamed_addr constant [8 x i8] c"NYX3003\00"
@.str151.c = internal global %nyx_string* null
@.str152 = private unnamed_addr constant [23 x i8] c"variable no definida: \00"
@.str152.c = internal global %nyx_string* null
@.str153 = private unnamed_addr constant [21 x i8] c"undefined variable: \00"
@.str153.c = internal global %nyx_string* null
@.str154 = private unnamed_addr constant [6 x i8] c"error\00"
@.str154.c = internal global %nyx_string* null
@.str155 = private unnamed_addr constant [6 x i8] c"error\00"
@.str155.c = internal global %nyx_string* null
@.str156 = private unnamed_addr constant [6 x i8] c"error\00"
@.str156.c = internal global %nyx_string* null
@.str157 = private unnamed_addr constant [6 x i8] c"array\00"
@.str157.c = internal global %nyx_string* null
@.str158 = private unnamed_addr constant [8 x i8] c"NYX3005\00"
@.str158.c = internal global %nyx_string* null
@.str159 = private unnamed_addr constant [38 x i8] c"índice fuera de rango en asignación\00"
@.str159.c = internal global %nyx_string* null
@.str160 = private unnamed_addr constant [33 x i8] c"index out of range in assignment\00"
@.str160.c = internal global %nyx_string* null
@.str161 = private unnamed_addr constant [8 x i8] c"NYX3005\00"
@.str161.c = internal global %nyx_string* null
@.str162 = private unnamed_addr constant [38 x i8] c"index_assign sobre un tipo no-array: \00"
@.str162.c = internal global %nyx_string* null
@.str163 = private unnamed_addr constant [35 x i8] c"index_assign on a non-array type: \00"
@.str163.c = internal global %nyx_string* null
@.str164 = private unnamed_addr constant [8 x i8] c"NYX3002\00"
@.str164.c = internal global %nyx_string* null
@.str165 = private unnamed_addr constant [45 x i8] c"field_assign no soportado por el intérprete\00"
@.str165.c = internal global %nyx_string* null
@.str166 = private unnamed_addr constant [46 x i8] c"field_assign not supported by the interpreter\00"
@.str166.c = internal global %nyx_string* null
@.str167 = private unnamed_addr constant [6 x i8] c"error\00"
@.str167.c = internal global %nyx_string* null
@.str168 = private unnamed_addr constant [6 x i8] c"empty\00"
@.str168.c = internal global %nyx_string* null
@.str169 = private unnamed_addr constant [6 x i8] c"error\00"
@.str169.c = internal global %nyx_string* null
@.str170 = private unnamed_addr constant [7 x i8] c"return\00"
@.str170.c = internal global %nyx_string* null
@.str171 = private unnamed_addr constant [6 x i8] c"break\00"
@.str171.c = internal global %nyx_string* null
@.str172 = private unnamed_addr constant [6 x i8] c"range\00"
@.str172.c = internal global %nyx_string* null
@.str173 = private unnamed_addr constant [6 x i8] c"error\00"
@.str173.c = internal global %nyx_string* null
@.str174 = private unnamed_addr constant [6 x i8] c"error\00"
@.str174.c = internal global %nyx_string* null
@.str175 = private unnamed_addr constant [4 x i8] c"int\00"
@.str175.c = internal global %nyx_string* null
@.str176 = private unnamed_addr constant [4 x i8] c"int\00"
@.str176.c = internal global %nyx_string* null
@.str177 = private unnamed_addr constant [8 x i8] c"NYX3002\00"
@.str177.c = internal global %nyx_string* null
@.str178 = private unnamed_addr constant [28 x i8] c"rango con extremos de tipo \00"
@.str178.c = internal global %nyx_string* null
@.str179 = private unnamed_addr constant [3 x i8] c"..\00"
@.str179.c = internal global %nyx_string* null
@.str180 = private unnamed_addr constant [44 x i8] c": el intérprete solo recorre rangos de int\00"
@.str180.c = internal global %nyx_string* null
@.str181 = private unnamed_addr constant [27 x i8] c"range with bounds of type \00"
@.str181.c = internal global %nyx_string* null
@.str182 = private unnamed_addr constant [3 x i8] c"..\00"
@.str182.c = internal global %nyx_string* null
@.str183 = private unnamed_addr constant [43 x i8] c": the interpreter only iterates int ranges\00"
@.str183.c = internal global %nyx_string* null
@.str184 = private unnamed_addr constant [6 x i8] c"error\00"
@.str184.c = internal global %nyx_string* null
@.str185 = private unnamed_addr constant [7 x i8] c"return\00"
@.str185.c = internal global %nyx_string* null
@.str186 = private unnamed_addr constant [6 x i8] c"break\00"
@.str186.c = internal global %nyx_string* null
@.str187 = private unnamed_addr constant [5 x i8] c"true\00"
@.str187.c = internal global %nyx_string* null
@.str188 = private unnamed_addr constant [6 x i8] c"error\00"
@.str188.c = internal global %nyx_string* null
@.str189 = private unnamed_addr constant [6 x i8] c"array\00"
@.str189.c = internal global %nyx_string* null
@.str190 = private unnamed_addr constant [8 x i8] c"NYX3002\00"
@.str190.c = internal global %nyx_string* null
@.str191 = private unnamed_addr constant [26 x i8] c"for … in sobre el tipo \00"
@.str191.c = internal global %nyx_string* null
@.str192 = private unnamed_addr constant [62 x i8] c" no está soportado por el intérprete (solo rangos y arrays)\00"
@.str192.c = internal global %nyx_string* null
@.str193 = private unnamed_addr constant [22 x i8] c"for … in over type \00"
@.str193.c = internal global %nyx_string* null
@.str194 = private unnamed_addr constant [62 x i8] c" is not supported by the interpreter (only ranges and arrays)\00"
@.str194.c = internal global %nyx_string* null
@.str195 = private unnamed_addr constant [6 x i8] c"error\00"
@.str195.c = internal global %nyx_string* null
@.str196 = private unnamed_addr constant [7 x i8] c"return\00"
@.str196.c = internal global %nyx_string* null
@.str197 = private unnamed_addr constant [6 x i8] c"break\00"
@.str197.c = internal global %nyx_string* null
@.str198 = private unnamed_addr constant [7 x i8] c"return\00"
@.str198.c = internal global %nyx_string* null
@.str199 = private unnamed_addr constant [6 x i8] c"error\00"
@.str199.c = internal global %nyx_string* null
@.str200 = private unnamed_addr constant [9 x i8] c"function\00"
@.str200.c = internal global %nyx_string* null
@.str201 = private unnamed_addr constant [1 x i8] c"\00"
@.str201.c = internal global %nyx_string* null
@.str202 = private unnamed_addr constant [6 x i8] c"error\00"
@.str202.c = internal global %nyx_string* null
@.str203 = private unnamed_addr constant [7 x i8] c"string\00"
@.str203.c = internal global %nyx_string* null
@.str204 = private unnamed_addr constant [7 x i8] c"length\00"
@.str204.c = internal global %nyx_string* null
@.str205 = private unnamed_addr constant [12 x i8] c"char_length\00"
@.str205.c = internal global %nyx_string* null
@.str206 = private unnamed_addr constant [12 x i8] c"byte_length\00"
@.str206.c = internal global %nyx_string* null
@.str207 = private unnamed_addr constant [8 x i8] c"toUpper\00"
@.str207.c = internal global %nyx_string* null
@.str208 = private unnamed_addr constant [8 x i8] c"toLower\00"
@.str208.c = internal global %nyx_string* null
@.str209 = private unnamed_addr constant [5 x i8] c"trim\00"
@.str209.c = internal global %nyx_string* null
@.str210 = private unnamed_addr constant [8 x i8] c"indexOf\00"
@.str210.c = internal global %nyx_string* null
@.str211 = private unnamed_addr constant [6 x i8] c"error\00"
@.str211.c = internal global %nyx_string* null
@.str212 = private unnamed_addr constant [10 x i8] c"substring\00"
@.str212.c = internal global %nyx_string* null
@.str213 = private unnamed_addr constant [6 x i8] c"error\00"
@.str213.c = internal global %nyx_string* null
@.str214 = private unnamed_addr constant [6 x i8] c"error\00"
@.str214.c = internal global %nyx_string* null
@.str215 = private unnamed_addr constant [7 x i8] c"charAt\00"
@.str215.c = internal global %nyx_string* null
@.str216 = private unnamed_addr constant [6 x i8] c"error\00"
@.str216.c = internal global %nyx_string* null
@.str217 = private unnamed_addr constant [11 x i8] c"startsWith\00"
@.str217.c = internal global %nyx_string* null
@.str218 = private unnamed_addr constant [6 x i8] c"error\00"
@.str218.c = internal global %nyx_string* null
@.str219 = private unnamed_addr constant [9 x i8] c"endsWith\00"
@.str219.c = internal global %nyx_string* null
@.str220 = private unnamed_addr constant [6 x i8] c"error\00"
@.str220.c = internal global %nyx_string* null
@.str221 = private unnamed_addr constant [8 x i8] c"replace\00"
@.str221.c = internal global %nyx_string* null
@.str222 = private unnamed_addr constant [6 x i8] c"error\00"
@.str222.c = internal global %nyx_string* null
@.str223 = private unnamed_addr constant [6 x i8] c"error\00"
@.str223.c = internal global %nyx_string* null
@.str224 = private unnamed_addr constant [6 x i8] c"array\00"
@.str224.c = internal global %nyx_string* null
@.str225 = private unnamed_addr constant [7 x i8] c"length\00"
@.str225.c = internal global %nyx_string* null
@.str226 = private unnamed_addr constant [5 x i8] c"push\00"
@.str226.c = internal global %nyx_string* null
@.str227 = private unnamed_addr constant [6 x i8] c"error\00"
@.str227.c = internal global %nyx_string* null
@.str228 = private unnamed_addr constant [4 x i8] c"pop\00"
@.str228.c = internal global %nyx_string* null
@.str229 = private unnamed_addr constant [8 x i8] c"NYX3001\00"
@.str229.c = internal global %nyx_string* null
@.str230 = private unnamed_addr constant [39 x i8] c"el intérprete no soporta el método '\00"
@.str230.c = internal global %nyx_string* null
@.str231 = private unnamed_addr constant [17 x i8] c"' sobre el tipo \00"
@.str231.c = internal global %nyx_string* null
@.str232 = private unnamed_addr constant [42 x i8] c"the interpreter does not support method '\00"
@.str232.c = internal global %nyx_string* null
@.str233 = private unnamed_addr constant [11 x i8] c"' on type \00"
@.str233.c = internal global %nyx_string* null
@.str234 = private unnamed_addr constant [9 x i8] c"NYX_LANG\00"
@.str234.c = internal global %nyx_string* null
@.str235 = private unnamed_addr constant [3 x i8] c"es\00"
@.str235.c = internal global %nyx_string* null
@.str236 = private unnamed_addr constant [85 x i8] c"  el intérprete cubre un SUBCONJUNTO del lenguaje (ver cabecera de interpreter.nx);\00"
@.str236.c = internal global %nyx_string* null
@.str237 = private unnamed_addr constant [85 x i8] c"  el binario compilado (nyx build / make run) sí lo soporta si el lenguaje lo tiene\00"
@.str237.c = internal global %nyx_string* null
@.str238 = private unnamed_addr constant [79 x i8] c"  the interpreter covers a SUBSET of the language (see interpreter.nx header);\00"
@.str238.c = internal global %nyx_string* null
@.str239 = private unnamed_addr constant [84 x i8] c"  the compiled binary (nyx build / make run) does support it if the language has it\00"
@.str239.c = internal global %nyx_string* null
@.str240 = private unnamed_addr constant [6 x i8] c"print\00"
@.str240.c = internal global %nyx_string* null
@.str241 = private unnamed_addr constant [10 x i8] c"read_file\00"
@.str241.c = internal global %nyx_string* null
@.str242 = private unnamed_addr constant [14 x i8] c"include_bytes\00"
@.str242.c = internal global %nyx_string* null
@.str243 = private unnamed_addr constant [8 x i8] c"NYX3007\00"
@.str243.c = internal global %nyx_string* null
@.str244 = private unnamed_addr constant [122 x i8] c"'include_bytes' solo existe al compilar: el archivo se lee y se embebe al generar el binario. Usa 'nyx build' o 'nyx run'\00"
@.str244.c = internal global %nyx_string* null
@.str245 = private unnamed_addr constant [134 x i8] c"'include_bytes' only exists at compile time: the file is read and embedded when the binary is generated. Use 'nyx build' or 'nyx run'\00"
@.str245.c = internal global %nyx_string* null
@.str246 = private unnamed_addr constant [10 x i8] c"read_line\00"
@.str246.c = internal global %nyx_string* null
@.str247 = private unnamed_addr constant [17 x i8] c"print_no_newline\00"
@.str247.c = internal global %nyx_string* null
@.str248 = private unnamed_addr constant [8 x i8] c"NYX3003\00"
@.str248.c = internal global %nyx_string* null
@.str249 = private unnamed_addr constant [23 x i8] c"variable no definida: \00"
@.str249.c = internal global %nyx_string* null
@.str250 = private unnamed_addr constant [21 x i8] c"undefined variable: \00"
@.str250.c = internal global %nyx_string* null
@.str251 = private unnamed_addr constant [9 x i8] c"function\00"
@.str251.c = internal global %nyx_string* null
@.str252 = private unnamed_addr constant [8 x i8] c"NYX3004\00"
@.str252.c = internal global %nyx_string* null
@.str253 = private unnamed_addr constant [2 x i8] c"'\00"
@.str253.c = internal global %nyx_string* null
@.str254 = private unnamed_addr constant [21 x i8] c"' no es una función\00"
@.str254.c = internal global %nyx_string* null
@.str255 = private unnamed_addr constant [2 x i8] c"'\00"
@.str255.c = internal global %nyx_string* null
@.str256 = private unnamed_addr constant [20 x i8] c"' is not a function\00"
@.str256.c = internal global %nyx_string* null
@.str257 = private unnamed_addr constant [8 x i8] c"NYX3006\00"
@.str257.c = internal global %nyx_string* null
@.str258 = private unnamed_addr constant [2 x i8] c"'\00"
@.str258.c = internal global %nyx_string* null
@.str259 = private unnamed_addr constant [10 x i8] c"' espera \00"
@.str259.c = internal global %nyx_string* null
@.str260 = private unnamed_addr constant [25 x i8] c" argumento(s), recibió \00"
@.str260.c = internal global %nyx_string* null
@.str261 = private unnamed_addr constant [2 x i8] c"'\00"
@.str261.c = internal global %nyx_string* null
@.str262 = private unnamed_addr constant [11 x i8] c"' expects \00"
@.str262.c = internal global %nyx_string* null
@.str263 = private unnamed_addr constant [19 x i8] c" argument(s), got \00"
@.str263.c = internal global %nyx_string* null
@.str264 = private unnamed_addr constant [6 x i8] c"error\00"
@.str264.c = internal global %nyx_string* null
@.str265 = private unnamed_addr constant [7 x i8] c"return\00"
@.str265.c = internal global %nyx_string* null
@.str266 = private unnamed_addr constant [6 x i8] c"error\00"
@.str266.c = internal global %nyx_string* null
@.str267 = private unnamed_addr constant [6 x i8] c"error\00"
@.str267.c = internal global %nyx_string* null
@.str268 = private unnamed_addr constant [1 x i8] c"\00"
@.str268.c = internal global %nyx_string* null
@.str269 = private unnamed_addr constant [6 x i8] c"error\00"
@.str269.c = internal global %nyx_string* null
@.str270 = private unnamed_addr constant [1 x i8] c"\00"
@.str270.c = internal global %nyx_string* null
@.str271 = private unnamed_addr constant [1 x i8] c"\00"
@.str271.c = internal global %nyx_string* null
@.str272 = private unnamed_addr constant [4 x i8] c"nil\00"
@.str272.c = internal global %nyx_string* null
@.str273 = private unnamed_addr constant [7 x i8] c"return\00"
@.str273.c = internal global %nyx_string* null
@.str274 = private unnamed_addr constant [4 x i8] c"=> \00"
@.str274.c = internal global %nyx_string* null
@.str275 = private unnamed_addr constant [6 x i8] c"block\00"
@.str275.c = internal global %nyx_string* null
@.str276 = private unnamed_addr constant [6 x i8] c"error\00"
@.str276.c = internal global %nyx_string* null
@.str277 = private unnamed_addr constant [5 x i8] c"main\00"
@.str277.c = internal global %nyx_string* null
@.str278 = private unnamed_addr constant [5 x i8] c"main\00"
@.str278.c = internal global %nyx_string* null
@.str279 = private unnamed_addr constant [9 x i8] c"function\00"
@.str279.c = internal global %nyx_string* null
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
  call void @nyx_array_push({ i64, i8* }* %41, i64 %43)
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
  %866 = call i64 @nyx_string_to_int(%nyx_string* %865)
  %867 = alloca i64
  store i64 %866, i64* %867
  %868 = load i64, i64* %867
  %869 = call %Value @make_int(i64 %868)
  ret %Value %869
}

define internal %Value @eval_bool(
{ i64, i8* }* %node.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %870 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %871 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %870)
  %872 = alloca { i64, i8* }*
  store { i64, i8* }* %871, { i64, i8* }** %872
  %873 = load { i64, i8* }*, { i64, i8* }** %872
  %874 = call i64 @nyx_array_get_checked({ i64, i8* }* %873, i64 0, i64 2)
  %875 = inttoptr i64 %874 to %nyx_string*
  %876 = alloca %nyx_string*
  store %nyx_string* %875, %nyx_string** %876
  %877 = load %nyx_string*, %nyx_string** %876
  %878 = getelementptr [5 x i8], [5 x i8]* @.str88, i32 0, i32 0
  %879 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str88.c, i8* %878, i64 4)
  %880 = call i1 @nyx_string_equals(%nyx_string* %877, %nyx_string* %879)
  %881 = call %Value @make_bool(i1 %880)
  ret %Value %881
}

define internal %Value @eval_string(
{ i64, i8* }* %node.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %882 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %883 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %882)
  %884 = alloca { i64, i8* }*
  store { i64, i8* }* %883, { i64, i8* }** %884
  %885 = load { i64, i8* }*, { i64, i8* }** %884
  %886 = call i64 @nyx_array_get({ i64, i8* }* %885, i64 0)
  %887 = inttoptr i64 %886 to %nyx_string*
  %888 = call %Value @make_string(%nyx_string* %887)
  ret %Value %888
}

define internal %Value @eval_identifier(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %889 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %890 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %889)
  %891 = alloca { i64, i8* }*
  store { i64, i8* }* %890, { i64, i8* }** %891
  %892 = load { i64, i8* }*, { i64, i8* }** %891
  %893 = call i64 @nyx_array_get_checked({ i64, i8* }* %892, i64 0, i64 2)
  %894 = inttoptr i64 %893 to %nyx_string*
  %895 = alloca %nyx_string*
  store %nyx_string* %894, %nyx_string** %895
  %896 = load %Environment, %Environment* %env.ptr
  %897 = load %nyx_string*, %nyx_string** %895
  %898 = call %Value @env_get(%Environment %896, %nyx_string* %897)
  ret %Value %898
}

define internal %Value @eval_binop(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %899 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %900 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %899)
  %901 = alloca { i64, i8* }*
  store { i64, i8* }* %900, { i64, i8* }** %901
  %902 = load { i64, i8* }*, { i64, i8* }** %901
  %903 = call i64 @nyx_array_get_checked({ i64, i8* }* %902, i64 0, i64 2)
  %904 = inttoptr i64 %903 to %nyx_string*
  %905 = alloca %nyx_string*
  store %nyx_string* %904, %nyx_string** %905
  %906 = load { i64, i8* }*, { i64, i8* }** %901
  %907 = call i64 @nyx_array_get({ i64, i8* }* %906, i64 1)
  %908 = inttoptr i64 %907 to { i64, i8* }*
  %909 = alloca { i64, i8* }*
  store { i64, i8* }* %908, { i64, i8* }** %909
  %910 = load { i64, i8* }*, { i64, i8* }** %909
  %911 = load %Environment, %Environment* %env.ptr
  %912 = call %Value @eval_expr({ i64, i8* }* %910, %Environment %911)
  %913 = alloca %Value
  store %Value %912, %Value* %913
  %914 = getelementptr %Value, %Value* %913, i32 0, i32 0
  %915 = load %nyx_string*, %nyx_string** %914
  %916 = getelementptr [6 x i8], [6 x i8]* @.str89, i32 0, i32 0
  %917 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str89.c, i8* %916, i64 5)
  %918 = call i1 @nyx_string_equals(%nyx_string* %915, %nyx_string* %917)
  br i1 %918, label %then128, label %else129
then128:
  %919 = load %Value, %Value* %913
  ret %Value %919
else129:
  br label %merge130
merge130:
  %920 = load { i64, i8* }*, { i64, i8* }** %901
  %921 = call i64 @nyx_array_get({ i64, i8* }* %920, i64 2)
  %922 = inttoptr i64 %921 to { i64, i8* }*
  %923 = alloca { i64, i8* }*
  store { i64, i8* }* %922, { i64, i8* }** %923
  %924 = load { i64, i8* }*, { i64, i8* }** %923
  %925 = load %Environment, %Environment* %env.ptr
  %926 = call %Value @eval_expr({ i64, i8* }* %924, %Environment %925)
  %927 = alloca %Value
  store %Value %926, %Value* %927
  %928 = getelementptr %Value, %Value* %927, i32 0, i32 0
  %929 = load %nyx_string*, %nyx_string** %928
  %930 = getelementptr [6 x i8], [6 x i8]* @.str90, i32 0, i32 0
  %931 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str90.c, i8* %930, i64 5)
  %932 = call i1 @nyx_string_equals(%nyx_string* %929, %nyx_string* %931)
  br i1 %932, label %then131, label %else132
then131:
  %933 = load %Value, %Value* %927
  ret %Value %933
else132:
  br label %merge133
merge133:
  %934 = alloca i1
  store i1 true, i1* %934
  %935 = getelementptr %Value, %Value* %913, i32 0, i32 0
  %936 = load %nyx_string*, %nyx_string** %935
  %937 = getelementptr [6 x i8], [6 x i8]* @.str91, i32 0, i32 0
  %938 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str91.c, i8* %937, i64 5)
  %939 = call i1 @nyx_string_equals(%nyx_string* %936, %nyx_string* %938)
  br i1 %939, label %sc_or_end135, label %sc_or_rhs134
sc_or_rhs134:
  %940 = getelementptr %Value, %Value* %927, i32 0, i32 0
  %941 = load %nyx_string*, %nyx_string** %940
  %942 = getelementptr [6 x i8], [6 x i8]* @.str92, i32 0, i32 0
  %943 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str92.c, i8* %942, i64 5)
  %944 = call i1 @nyx_string_equals(%nyx_string* %941, %nyx_string* %943)
  store i1 %944, i1* %934
  br label %sc_or_end135
sc_or_end135:
  %945 = load i1, i1* %934
  %946 = alloca i1
  store i1 %945, i1* %946
  %947 = load %nyx_string*, %nyx_string** %905
  %948 = getelementptr [5 x i8], [5 x i8]* @.str93, i32 0, i32 0
  %949 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str93.c, i8* %948, i64 4)
  %950 = call i1 @nyx_string_equals(%nyx_string* %947, %nyx_string* %949)
  br i1 %950, label %then136, label %else137
then136:
  %951 = getelementptr %Value, %Value* %913, i32 0, i32 0
  %952 = load %nyx_string*, %nyx_string** %951
  %953 = getelementptr [7 x i8], [7 x i8]* @.str94, i32 0, i32 0
  %954 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str94.c, i8* %953, i64 6)
  %955 = call i1 @nyx_string_equals(%nyx_string* %952, %nyx_string* %954)
  br i1 %955, label %then139, label %else140
then139:
  %956 = load %Value, %Value* %913
  %957 = call %nyx_string* @value_to_string(%Value %956)
  %958 = alloca %nyx_string*
  store %nyx_string* %957, %nyx_string** %958
  %959 = load %Value, %Value* %927
  %960 = call %nyx_string* @value_to_string(%Value %959)
  %961 = alloca %nyx_string*
  store %nyx_string* %960, %nyx_string** %961
  %962 = load %nyx_string*, %nyx_string** %958
  %963 = load %nyx_string*, %nyx_string** %961
  %964 = call %nyx_string* @nyx_string_concat(%nyx_string* %962, %nyx_string* %963)
  %965 = call %Value @make_string(%nyx_string* %964)
  ret %Value %965
else140:
  br label %merge141
merge141:
  %966 = load i1, i1* %946
  br i1 %966, label %then142, label %else143
then142:
  %967 = load %Value, %Value* %913
  %968 = call double @value_to_float(%Value %967)
  %969 = load %Value, %Value* %927
  %970 = call double @value_to_float(%Value %969)
  %971 = fadd double %968, %970
  %972 = call %Value @make_float(double %971)
  ret %Value %972
else143:
  br label %merge144
merge144:
  %973 = load %Value, %Value* %913
  %974 = call i64 @value_to_int(%Value %973)
  %975 = load %Value, %Value* %927
  %976 = call i64 @value_to_int(%Value %975)
  %977 = add i64 %974, %976
  %978 = call %Value @make_int(i64 %977)
  ret %Value %978
else137:
  br label %merge138
merge138:
  %979 = load %nyx_string*, %nyx_string** %905
  %980 = getelementptr [6 x i8], [6 x i8]* @.str95, i32 0, i32 0
  %981 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str95.c, i8* %980, i64 5)
  %982 = call i1 @nyx_string_equals(%nyx_string* %979, %nyx_string* %981)
  br i1 %982, label %then145, label %else146
then145:
  %983 = load i1, i1* %946
  br i1 %983, label %then148, label %else149
then148:
  %984 = load %Value, %Value* %913
  %985 = call double @value_to_float(%Value %984)
  %986 = load %Value, %Value* %927
  %987 = call double @value_to_float(%Value %986)
  %988 = fsub double %985, %987
  %989 = call %Value @make_float(double %988)
  ret %Value %989
else149:
  br label %merge150
merge150:
  %990 = load %Value, %Value* %913
  %991 = call i64 @value_to_int(%Value %990)
  %992 = load %Value, %Value* %927
  %993 = call i64 @value_to_int(%Value %992)
  %994 = sub i64 %991, %993
  %995 = call %Value @make_int(i64 %994)
  ret %Value %995
else146:
  br label %merge147
merge147:
  %996 = load %nyx_string*, %nyx_string** %905
  %997 = getelementptr [5 x i8], [5 x i8]* @.str96, i32 0, i32 0
  %998 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str96.c, i8* %997, i64 4)
  %999 = call i1 @nyx_string_equals(%nyx_string* %996, %nyx_string* %998)
  br i1 %999, label %then151, label %else152
then151:
  %1000 = load i1, i1* %946
  br i1 %1000, label %then154, label %else155
then154:
  %1001 = load %Value, %Value* %913
  %1002 = call double @value_to_float(%Value %1001)
  %1003 = load %Value, %Value* %927
  %1004 = call double @value_to_float(%Value %1003)
  %1005 = fmul double %1002, %1004
  %1006 = call %Value @make_float(double %1005)
  ret %Value %1006
else155:
  br label %merge156
merge156:
  %1007 = load %Value, %Value* %913
  %1008 = call i64 @value_to_int(%Value %1007)
  %1009 = load %Value, %Value* %927
  %1010 = call i64 @value_to_int(%Value %1009)
  %1011 = mul i64 %1008, %1010
  %1012 = call %Value @make_int(i64 %1011)
  ret %Value %1012
else152:
  br label %merge153
merge153:
  %1013 = load %nyx_string*, %nyx_string** %905
  %1014 = getelementptr [6 x i8], [6 x i8]* @.str97, i32 0, i32 0
  %1015 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str97.c, i8* %1014, i64 5)
  %1016 = call i1 @nyx_string_equals(%nyx_string* %1013, %nyx_string* %1015)
  br i1 %1016, label %then157, label %else158
then157:
  %1017 = load i1, i1* %946
  br i1 %1017, label %then160, label %else161
then160:
  %1018 = load %Value, %Value* %927
  %1019 = call double @value_to_float(%Value %1018)
  %1020 = alloca double
  store double %1019, double* %1020
  %1021 = load %Value, %Value* %913
  %1022 = call double @value_to_float(%Value %1021)
  %1023 = load double, double* %1020
  %1024 = fdiv double %1022, %1023
  %1025 = call %Value @make_float(double %1024)
  ret %Value %1025
else161:
  br label %merge162
merge162:
  %1026 = load %Value, %Value* %927
  %1027 = call i64 @value_to_int(%Value %1026)
  %1028 = alloca i64
  store i64 %1027, i64* %1028
  %1029 = load i64, i64* %1028
  %1030 = icmp ne i64 %1029, 0
  br i1 %1030, label %then163, label %else164
then163:
  %1031 = load %Value, %Value* %913
  %1032 = call i64 @value_to_int(%Value %1031)
  %1033 = load i64, i64* %1028
  %1034 = sdiv i64 %1032, %1033
  %1035 = call %Value @make_int(i64 %1034)
  ret %Value %1035
else164:
  br label %merge165
merge165:
  %1036 = getelementptr [8 x i8], [8 x i8]* @.str98, i32 0, i32 0
  %1037 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str98.c, i8* %1036, i64 7)
  %1038 = getelementptr [19 x i8], [19 x i8]* @.str99, i32 0, i32 0
  %1039 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str99.c, i8* %1038, i64 18)
  %1040 = getelementptr [17 x i8], [17 x i8]* @.str100, i32 0, i32 0
  %1041 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str100.c, i8* %1040, i64 16)
  %1042 = call i64 @interp_err(%nyx_string* %1037, %nyx_string* %1039, %nyx_string* %1041)
  %1043 = call %Value @make_error()
  ret %Value %1043
else158:
  br label %merge159
merge159:
  %1044 = load %nyx_string*, %nyx_string** %905
  %1045 = getelementptr [8 x i8], [8 x i8]* @.str101, i32 0, i32 0
  %1046 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str101.c, i8* %1045, i64 7)
  %1047 = call i1 @nyx_string_equals(%nyx_string* %1044, %nyx_string* %1046)
  br i1 %1047, label %then166, label %else167
then166:
  %1048 = load %Value, %Value* %913
  %1049 = call i64 @value_to_int(%Value %1048)
  %1050 = alloca i64
  store i64 %1049, i64* %1050
  %1051 = load %Value, %Value* %927
  %1052 = call i64 @value_to_int(%Value %1051)
  %1053 = alloca i64
  store i64 %1052, i64* %1053
  %1054 = load i64, i64* %1053
  %1055 = icmp eq i64 %1054, 0
  br i1 %1055, label %then169, label %else170
then169:
  %1056 = getelementptr [8 x i8], [8 x i8]* @.str102, i32 0, i32 0
  %1057 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str102.c, i8* %1056, i64 7)
  %1058 = getelementptr [17 x i8], [17 x i8]* @.str103, i32 0, i32 0
  %1059 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str103.c, i8* %1058, i64 16)
  %1060 = getelementptr [15 x i8], [15 x i8]* @.str104, i32 0, i32 0
  %1061 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str104.c, i8* %1060, i64 14)
  %1062 = call i64 @interp_err(%nyx_string* %1057, %nyx_string* %1059, %nyx_string* %1061)
  %1063 = call %Value @make_error()
  ret %Value %1063
else170:
  br label %merge171
merge171:
  %1064 = load i64, i64* %1050
  %1065 = load i64, i64* %1053
  %1066 = srem i64 %1064, %1065
  %1067 = call %Value @make_int(i64 %1066)
  ret %Value %1067
else167:
  br label %merge168
merge168:
  %1068 = load %nyx_string*, %nyx_string** %905
  %1069 = getelementptr [12 x i8], [12 x i8]* @.str105, i32 0, i32 0
  %1070 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str105.c, i8* %1069, i64 11)
  %1071 = call i1 @nyx_string_equals(%nyx_string* %1068, %nyx_string* %1070)
  br i1 %1071, label %then172, label %else173
then172:
  %1072 = load %Value, %Value* %913
  %1073 = load %Value, %Value* %927
  %1074 = call i1 @values_equal(%Value %1072, %Value %1073)
  %1075 = call %Value @make_bool(i1 %1074)
  ret %Value %1075
else173:
  br label %merge174
merge174:
  %1076 = load %nyx_string*, %nyx_string** %905
  %1077 = getelementptr [10 x i8], [10 x i8]* @.str106, i32 0, i32 0
  %1078 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str106.c, i8* %1077, i64 9)
  %1079 = call i1 @nyx_string_equals(%nyx_string* %1076, %nyx_string* %1078)
  br i1 %1079, label %then175, label %else176
then175:
  %1080 = load %Value, %Value* %913
  %1081 = load %Value, %Value* %927
  %1082 = call i1 @values_equal(%Value %1080, %Value %1081)
  %1083 = xor i1 %1082, true
  %1084 = call %Value @make_bool(i1 %1083)
  ret %Value %1084
else176:
  br label %merge177
merge177:
  %1085 = load %nyx_string*, %nyx_string** %905
  %1086 = getelementptr [5 x i8], [5 x i8]* @.str107, i32 0, i32 0
  %1087 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str107.c, i8* %1086, i64 4)
  %1088 = call i1 @nyx_string_equals(%nyx_string* %1085, %nyx_string* %1087)
  br i1 %1088, label %then178, label %else179
then178:
  %1089 = load i1, i1* %946
  br i1 %1089, label %then181, label %else182
then181:
  %1090 = load %Value, %Value* %913
  %1091 = call double @value_to_float(%Value %1090)
  %1092 = load %Value, %Value* %927
  %1093 = call double @value_to_float(%Value %1092)
  %1094 = fcmp olt double %1091, %1093
  %1095 = call %Value @make_bool(i1 %1094)
  ret %Value %1095
else182:
  br label %merge183
merge183:
  %1096 = load %Value, %Value* %913
  %1097 = call i64 @value_to_int(%Value %1096)
  %1098 = load %Value, %Value* %927
  %1099 = call i64 @value_to_int(%Value %1098)
  %1100 = icmp slt i64 %1097, %1099
  %1101 = call %Value @make_bool(i1 %1100)
  ret %Value %1101
else179:
  br label %merge180
merge180:
  %1102 = load %nyx_string*, %nyx_string** %905
  %1103 = getelementptr [8 x i8], [8 x i8]* @.str108, i32 0, i32 0
  %1104 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str108.c, i8* %1103, i64 7)
  %1105 = call i1 @nyx_string_equals(%nyx_string* %1102, %nyx_string* %1104)
  br i1 %1105, label %then184, label %else185
then184:
  %1106 = load i1, i1* %946
  br i1 %1106, label %then187, label %else188
then187:
  %1107 = load %Value, %Value* %913
  %1108 = call double @value_to_float(%Value %1107)
  %1109 = load %Value, %Value* %927
  %1110 = call double @value_to_float(%Value %1109)
  %1111 = fcmp ogt double %1108, %1110
  %1112 = call %Value @make_bool(i1 %1111)
  ret %Value %1112
else188:
  br label %merge189
merge189:
  %1113 = load %Value, %Value* %913
  %1114 = call i64 @value_to_int(%Value %1113)
  %1115 = load %Value, %Value* %927
  %1116 = call i64 @value_to_int(%Value %1115)
  %1117 = icmp sgt i64 %1114, %1116
  %1118 = call %Value @make_bool(i1 %1117)
  ret %Value %1118
else185:
  br label %merge186
merge186:
  %1119 = load %nyx_string*, %nyx_string** %905
  %1120 = getelementptr [11 x i8], [11 x i8]* @.str109, i32 0, i32 0
  %1121 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str109.c, i8* %1120, i64 10)
  %1122 = call i1 @nyx_string_equals(%nyx_string* %1119, %nyx_string* %1121)
  br i1 %1122, label %then190, label %else191
then190:
  %1123 = load i1, i1* %946
  br i1 %1123, label %then193, label %else194
then193:
  %1124 = load %Value, %Value* %913
  %1125 = call double @value_to_float(%Value %1124)
  %1126 = load %Value, %Value* %927
  %1127 = call double @value_to_float(%Value %1126)
  %1128 = fcmp ole double %1125, %1127
  %1129 = call %Value @make_bool(i1 %1128)
  ret %Value %1129
else194:
  br label %merge195
merge195:
  %1130 = load %Value, %Value* %913
  %1131 = call i64 @value_to_int(%Value %1130)
  %1132 = load %Value, %Value* %927
  %1133 = call i64 @value_to_int(%Value %1132)
  %1134 = icmp sle i64 %1131, %1133
  %1135 = call %Value @make_bool(i1 %1134)
  ret %Value %1135
else191:
  br label %merge192
merge192:
  %1136 = load %nyx_string*, %nyx_string** %905
  %1137 = getelementptr [14 x i8], [14 x i8]* @.str110, i32 0, i32 0
  %1138 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str110.c, i8* %1137, i64 13)
  %1139 = call i1 @nyx_string_equals(%nyx_string* %1136, %nyx_string* %1138)
  br i1 %1139, label %then196, label %else197
then196:
  %1140 = load i1, i1* %946
  br i1 %1140, label %then199, label %else200
then199:
  %1141 = load %Value, %Value* %913
  %1142 = call double @value_to_float(%Value %1141)
  %1143 = load %Value, %Value* %927
  %1144 = call double @value_to_float(%Value %1143)
  %1145 = fcmp oge double %1142, %1144
  %1146 = call %Value @make_bool(i1 %1145)
  ret %Value %1146
else200:
  br label %merge201
merge201:
  %1147 = load %Value, %Value* %913
  %1148 = call i64 @value_to_int(%Value %1147)
  %1149 = load %Value, %Value* %927
  %1150 = call i64 @value_to_int(%Value %1149)
  %1151 = icmp sge i64 %1148, %1150
  %1152 = call %Value @make_bool(i1 %1151)
  ret %Value %1152
else197:
  br label %merge198
merge198:
  %1153 = alloca i1
  store i1 true, i1* %1153
  %1154 = load %nyx_string*, %nyx_string** %905
  %1155 = getelementptr [8 x i8], [8 x i8]* @.str111, i32 0, i32 0
  %1156 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str111.c, i8* %1155, i64 7)
  %1157 = call i1 @nyx_string_equals(%nyx_string* %1154, %nyx_string* %1156)
  br i1 %1157, label %sc_or_end203, label %sc_or_rhs202
sc_or_rhs202:
  %1158 = load %nyx_string*, %nyx_string** %905
  %1159 = getelementptr [4 x i8], [4 x i8]* @.str112, i32 0, i32 0
  %1160 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str112.c, i8* %1159, i64 3)
  %1161 = call i1 @nyx_string_equals(%nyx_string* %1158, %nyx_string* %1160)
  store i1 %1161, i1* %1153
  br label %sc_or_end203
sc_or_end203:
  %1162 = load i1, i1* %1153
  br i1 %1162, label %then204, label %else205
then204:
  %1163 = alloca i1
  store i1 false, i1* %1163
  %1164 = load %Value, %Value* %913
  %1165 = call i1 @is_truthy(%Value %1164)
  br i1 %1165, label %sc_and_rhs207, label %sc_and_end208
sc_and_rhs207:
  %1166 = load %Value, %Value* %927
  %1167 = call i1 @is_truthy(%Value %1166)
  store i1 %1167, i1* %1163
  br label %sc_and_end208
sc_and_end208:
  %1168 = load i1, i1* %1163
  %1169 = call %Value @make_bool(i1 %1168)
  ret %Value %1169
else205:
  br label %merge206
merge206:
  %1170 = alloca i1
  store i1 true, i1* %1170
  %1171 = load %nyx_string*, %nyx_string** %905
  %1172 = getelementptr [6 x i8], [6 x i8]* @.str113, i32 0, i32 0
  %1173 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str113.c, i8* %1172, i64 5)
  %1174 = call i1 @nyx_string_equals(%nyx_string* %1171, %nyx_string* %1173)
  br i1 %1174, label %sc_or_end210, label %sc_or_rhs209
sc_or_rhs209:
  %1175 = load %nyx_string*, %nyx_string** %905
  %1176 = getelementptr [3 x i8], [3 x i8]* @.str114, i32 0, i32 0
  %1177 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str114.c, i8* %1176, i64 2)
  %1178 = call i1 @nyx_string_equals(%nyx_string* %1175, %nyx_string* %1177)
  store i1 %1178, i1* %1170
  br label %sc_or_end210
sc_or_end210:
  %1179 = load i1, i1* %1170
  br i1 %1179, label %then211, label %else212
then211:
  %1180 = alloca i1
  store i1 true, i1* %1180
  %1181 = load %Value, %Value* %913
  %1182 = call i1 @is_truthy(%Value %1181)
  br i1 %1182, label %sc_or_end215, label %sc_or_rhs214
sc_or_rhs214:
  %1183 = load %Value, %Value* %927
  %1184 = call i1 @is_truthy(%Value %1183)
  store i1 %1184, i1* %1180
  br label %sc_or_end215
sc_or_end215:
  %1185 = load i1, i1* %1180
  %1186 = call %Value @make_bool(i1 %1185)
  ret %Value %1186
else212:
  br label %merge213
merge213:
  %1187 = getelementptr [8 x i8], [8 x i8]* @.str115, i32 0, i32 0
  %1188 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str115.c, i8* %1187, i64 7)
  %1189 = getelementptr [24 x i8], [24 x i8]* @.str116, i32 0, i32 0
  %1190 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str116.c, i8* %1189, i64 23)
  %1191 = load %nyx_string*, %nyx_string** %905
  %1192 = call %nyx_string* @nyx_string_concat(%nyx_string* %1190, %nyx_string* %1191)
  %1193 = getelementptr [25 x i8], [25 x i8]* @.str117, i32 0, i32 0
  %1194 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str117.c, i8* %1193, i64 24)
  %1195 = load %nyx_string*, %nyx_string** %905
  %1196 = call %nyx_string* @nyx_string_concat(%nyx_string* %1194, %nyx_string* %1195)
  %1197 = call i64 @interp_err(%nyx_string* %1188, %nyx_string* %1192, %nyx_string* %1196)
  %1198 = call %Value @make_nil()
  ret %Value %1198
}

define internal %Value @eval_unop(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %1199 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1200 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %1199)
  %1201 = alloca { i64, i8* }*
  store { i64, i8* }* %1200, { i64, i8* }** %1201
  %1202 = load { i64, i8* }*, { i64, i8* }** %1201
  %1203 = call i64 @nyx_array_get_checked({ i64, i8* }* %1202, i64 0, i64 2)
  %1204 = inttoptr i64 %1203 to %nyx_string*
  %1205 = alloca %nyx_string*
  store %nyx_string* %1204, %nyx_string** %1205
  %1206 = load { i64, i8* }*, { i64, i8* }** %1201
  %1207 = call i64 @nyx_array_get({ i64, i8* }* %1206, i64 1)
  %1208 = inttoptr i64 %1207 to { i64, i8* }*
  %1209 = load %Environment, %Environment* %env.ptr
  %1210 = call %Value @eval_expr({ i64, i8* }* %1208, %Environment %1209)
  %1211 = alloca %Value
  store %Value %1210, %Value* %1211
  %1212 = getelementptr %Value, %Value* %1211, i32 0, i32 0
  %1213 = load %nyx_string*, %nyx_string** %1212
  %1214 = getelementptr [6 x i8], [6 x i8]* @.str118, i32 0, i32 0
  %1215 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str118.c, i8* %1214, i64 5)
  %1216 = call i1 @nyx_string_equals(%nyx_string* %1213, %nyx_string* %1215)
  br i1 %1216, label %then216, label %else217
then216:
  %1217 = load %Value, %Value* %1211
  ret %Value %1217
else217:
  br label %merge218
merge218:
  %1218 = load %nyx_string*, %nyx_string** %1205
  %1219 = getelementptr [6 x i8], [6 x i8]* @.str119, i32 0, i32 0
  %1220 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str119.c, i8* %1219, i64 5)
  %1221 = call i1 @nyx_string_equals(%nyx_string* %1218, %nyx_string* %1220)
  br i1 %1221, label %then219, label %else220
then219:
  %1222 = load %Value, %Value* %1211
  %1223 = call i64 @value_to_int(%Value %1222)
  %1224 = alloca i64
  store i64 %1223, i64* %1224
  %1225 = load i64, i64* %1224
  %1226 = sub i64 0, %1225
  %1227 = call %Value @make_int(i64 %1226)
  ret %Value %1227
else220:
  br label %merge221
merge221:
  %1228 = load %nyx_string*, %nyx_string** %1205
  %1229 = getelementptr [4 x i8], [4 x i8]* @.str120, i32 0, i32 0
  %1230 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str120.c, i8* %1229, i64 3)
  %1231 = call i1 @nyx_string_equals(%nyx_string* %1228, %nyx_string* %1230)
  br i1 %1231, label %then222, label %else223
then222:
  %1232 = load %Value, %Value* %1211
  %1233 = call i1 @is_truthy(%Value %1232)
  %1234 = alloca i1
  store i1 %1233, i1* %1234
  %1235 = load i1, i1* %1234
  %1236 = xor i1 %1235, true
  %1237 = call %Value @make_bool(i1 %1236)
  ret %Value %1237
else223:
  br label %merge224
merge224:
  %1238 = getelementptr [8 x i8], [8 x i8]* @.str121, i32 0, i32 0
  %1239 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str121.c, i8* %1238, i64 7)
  %1240 = getelementptr [31 x i8], [31 x i8]* @.str122, i32 0, i32 0
  %1241 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str122.c, i8* %1240, i64 30)
  %1242 = load %nyx_string*, %nyx_string** %1205
  %1243 = call %nyx_string* @nyx_string_concat(%nyx_string* %1241, %nyx_string* %1242)
  %1244 = getelementptr [31 x i8], [31 x i8]* @.str123, i32 0, i32 0
  %1245 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str123.c, i8* %1244, i64 30)
  %1246 = load %nyx_string*, %nyx_string** %1205
  %1247 = call %nyx_string* @nyx_string_concat(%nyx_string* %1245, %nyx_string* %1246)
  %1248 = call i64 @interp_err(%nyx_string* %1239, %nyx_string* %1243, %nyx_string* %1247)
  %1249 = call %Value @make_nil()
  ret %Value %1249
}

define internal %Value @eval_array(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %1250 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1251 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %1250)
  %1252 = alloca { i64, i8* }*
  store { i64, i8* }* %1251, { i64, i8* }** %1252
  %1253 = load { i64, i8* }*, { i64, i8* }** %1252
  %1254 = call i64 @nyx_array_get({ i64, i8* }* %1253, i64 0)
  %1255 = inttoptr i64 %1254 to { i64, i8* }*
  %1256 = alloca { i64, i8* }*
  store { i64, i8* }* %1255, { i64, i8* }** %1256
  %1257 = call { i64, i8* }* @nyx_array_new_ptr()
  %1258 = alloca { i64, i8* }*
  store { i64, i8* }* %1257, { i64, i8* }** %1258
  %1259 = alloca i64
  store i64 0, i64* %1259
  %1260 = getelementptr [6 x i8], [6 x i8]* @.str124, i32 0, i32 0
  %1261 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str124.c, i8* %1260, i64 5)
  %1262 = alloca %nyx_string*
  store %nyx_string* %1261, %nyx_string** %1262
  %1263 = call i8* @llvm.stacksave()
  br label %while_cond225
while_cond225:
  %1264 = load i64, i64* %1259
  %1265 = load { i64, i8* }*, { i64, i8* }** %1256
  %1266 = call i64 @nyx_array_length({ i64, i8* }* %1265)
  %1267 = icmp slt i64 %1264, %1266
  br i1 %1267, label %while_body226, label %while_end227
while_body226:
  call void @llvm.stackrestore(i8* %1263)
  %1268 = load { i64, i8* }*, { i64, i8* }** %1256
  %1269 = load i64, i64* %1259
  %1270 = call i64 @nyx_array_get({ i64, i8* }* %1268, i64 %1269)
  %1271 = inttoptr i64 %1270 to { i64, i8* }*
  %1272 = alloca { i64, i8* }*
  store { i64, i8* }* %1271, { i64, i8* }** %1272
  %1273 = load { i64, i8* }*, { i64, i8* }** %1272
  %1274 = load %Environment, %Environment* %env.ptr
  %1275 = call %Value @eval_expr({ i64, i8* }* %1273, %Environment %1274)
  %1276 = alloca %Value
  store %Value %1275, %Value* %1276
  %1277 = getelementptr %Value, %Value* %1276, i32 0, i32 0
  %1278 = load %nyx_string*, %nyx_string** %1277
  %1279 = load %nyx_string*, %nyx_string** %1262
  %1280 = call i1 @nyx_string_equals(%nyx_string* %1278, %nyx_string* %1279)
  br i1 %1280, label %then228, label %else229
then228:
  %1281 = load %Value, %Value* %1276
  ret %Value %1281
else229:
  br label %merge230
merge230:
  %1282 = load { i64, i8* }*, { i64, i8* }** %1258
  %1283 = load %Value, %Value* %1276
  %1284 = getelementptr %Value, %Value* null, i32 1
  %1285 = ptrtoint %Value* %1284 to i64
  %1286 = call i8* @GC_malloc(i64 %1285)
  %1287 = bitcast i8* %1286 to %Value*
  store %Value %1283, %Value* %1287
  %1288 = ptrtoint %Value* %1287 to i64
  call void @nyx_array_push({ i64, i8* }* %1282, i64 %1288)
  %1289 = load i64, i64* %1259
  %1290 = add i64 %1289, 1
  store i64 %1290, i64* %1259
  br label %while_cond225
while_end227:
  %1291 = load { i64, i8* }*, { i64, i8* }** %1258
  %1292 = call %Value @make_array({ i64, i8* }* %1291)
  ret %Value %1292
}

define internal %Value @eval_index(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %1293 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1294 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %1293)
  %1295 = alloca { i64, i8* }*
  store { i64, i8* }* %1294, { i64, i8* }** %1295
  %1296 = load { i64, i8* }*, { i64, i8* }** %1295
  %1297 = call i64 @nyx_array_get({ i64, i8* }* %1296, i64 0)
  %1298 = inttoptr i64 %1297 to { i64, i8* }*
  %1299 = load %Environment, %Environment* %env.ptr
  %1300 = call %Value @eval_expr({ i64, i8* }* %1298, %Environment %1299)
  %1301 = alloca %Value
  store %Value %1300, %Value* %1301
  %1302 = getelementptr %Value, %Value* %1301, i32 0, i32 0
  %1303 = load %nyx_string*, %nyx_string** %1302
  %1304 = getelementptr [6 x i8], [6 x i8]* @.str125, i32 0, i32 0
  %1305 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str125.c, i8* %1304, i64 5)
  %1306 = call i1 @nyx_string_equals(%nyx_string* %1303, %nyx_string* %1305)
  br i1 %1306, label %then231, label %else232
then231:
  %1307 = load %Value, %Value* %1301
  ret %Value %1307
else232:
  br label %merge233
merge233:
  %1308 = load { i64, i8* }*, { i64, i8* }** %1295
  %1309 = call i64 @nyx_array_get({ i64, i8* }* %1308, i64 1)
  %1310 = inttoptr i64 %1309 to { i64, i8* }*
  %1311 = load %Environment, %Environment* %env.ptr
  %1312 = call %Value @eval_expr({ i64, i8* }* %1310, %Environment %1311)
  %1313 = alloca %Value
  store %Value %1312, %Value* %1313
  %1314 = getelementptr %Value, %Value* %1313, i32 0, i32 0
  %1315 = load %nyx_string*, %nyx_string** %1314
  %1316 = getelementptr [6 x i8], [6 x i8]* @.str126, i32 0, i32 0
  %1317 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str126.c, i8* %1316, i64 5)
  %1318 = call i1 @nyx_string_equals(%nyx_string* %1315, %nyx_string* %1317)
  br i1 %1318, label %then234, label %else235
then234:
  %1319 = load %Value, %Value* %1313
  ret %Value %1319
else235:
  br label %merge236
merge236:
  %1320 = getelementptr %Value, %Value* %1301, i32 0, i32 0
  %1321 = load %nyx_string*, %nyx_string** %1320
  %1322 = getelementptr [6 x i8], [6 x i8]* @.str127, i32 0, i32 0
  %1323 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str127.c, i8* %1322, i64 5)
  %1324 = call i1 @nyx_string_equals(%nyx_string* %1321, %nyx_string* %1323)
  %1325 = xor i1 %1324, true
  br i1 %1325, label %then237, label %else238
then237:
  %1326 = getelementptr [8 x i8], [8 x i8]* @.str128, i32 0, i32 0
  %1327 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str128.c, i8* %1326, i64 7)
  %1328 = getelementptr [56 x i8], [56 x i8]* @.str129, i32 0, i32 0
  %1329 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str129.c, i8* %1328, i64 55)
  %1330 = getelementptr %Value, %Value* %1301, i32 0, i32 0
  %1331 = load %nyx_string*, %nyx_string** %1330
  %1332 = call %nyx_string* @nyx_string_concat(%nyx_string* %1329, %nyx_string* %1331)
  %1333 = getelementptr [51 x i8], [51 x i8]* @.str130, i32 0, i32 0
  %1334 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str130.c, i8* %1333, i64 50)
  %1335 = getelementptr %Value, %Value* %1301, i32 0, i32 0
  %1336 = load %nyx_string*, %nyx_string** %1335
  %1337 = call %nyx_string* @nyx_string_concat(%nyx_string* %1334, %nyx_string* %1336)
  %1338 = call i64 @interp_err(%nyx_string* %1327, %nyx_string* %1332, %nyx_string* %1337)
  %1339 = call %Value @make_error()
  ret %Value %1339
else238:
  br label %merge239
merge239:
  %1340 = getelementptr %Value, %Value* %1301, i32 0, i32 5
  %1341 = load { i64, i8* }*, { i64, i8* }** %1340
  %1342 = alloca { i64, i8* }*
  store { i64, i8* }* %1341, { i64, i8* }** %1342
  %1343 = load %Value, %Value* %1313
  %1344 = call i64 @value_to_int(%Value %1343)
  %1345 = alloca i64
  store i64 %1344, i64* %1345
  %1346 = alloca i1
  store i1 false, i1* %1346
  %1347 = load i64, i64* %1345
  %1348 = icmp sge i64 %1347, 0
  br i1 %1348, label %sc_and_rhs240, label %sc_and_end241
sc_and_rhs240:
  %1349 = load i64, i64* %1345
  %1350 = load { i64, i8* }*, { i64, i8* }** %1342
  %1351 = call i64 @nyx_array_length({ i64, i8* }* %1350)
  %1352 = icmp slt i64 %1349, %1351
  store i1 %1352, i1* %1346
  br label %sc_and_end241
sc_and_end241:
  %1353 = load i1, i1* %1346
  br i1 %1353, label %then242, label %else243
then242:
  %1354 = load { i64, i8* }*, { i64, i8* }** %1342
  %1355 = load i64, i64* %1345
  %1356 = call i64 @nyx_array_get({ i64, i8* }* %1354, i64 %1355)
  %1357 = inttoptr i64 %1356 to %Value*
  %1358 = load %Value, %Value* %1357
  %1359 = alloca %Value
  store %Value %1358, %Value* %1359
  %1360 = load %Value, %Value* %1359
  ret %Value %1360
else243:
  br label %merge244
merge244:
  %1361 = getelementptr [8 x i8], [8 x i8]* @.str131, i32 0, i32 0
  %1362 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str131.c, i8* %1361, i64 7)
  %1363 = getelementptr [23 x i8], [23 x i8]* @.str132, i32 0, i32 0
  %1364 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str132.c, i8* %1363, i64 22)
  %1365 = getelementptr [19 x i8], [19 x i8]* @.str133, i32 0, i32 0
  %1366 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str133.c, i8* %1365, i64 18)
  %1367 = call i64 @interp_err(%nyx_string* %1362, %nyx_string* %1364, %nyx_string* %1366)
  %1368 = call %Value @make_error()
  ret %Value %1368
}

define internal %Value @eval_stmt(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %1369 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1370 = call %nyx_string* @astnode_get_type({ i64, i8* }* %1369)
  %1371 = alloca %nyx_string*
  store %nyx_string* %1370, %nyx_string** %1371
  %1372 = load %nyx_string*, %nyx_string** %1371
  %1373 = getelementptr [4 x i8], [4 x i8]* @.str134, i32 0, i32 0
  %1374 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str134.c, i8* %1373, i64 3)
  %1375 = call i1 @nyx_string_equals(%nyx_string* %1372, %nyx_string* %1374)
  br i1 %1375, label %then245, label %else246
then245:
  %1376 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1377 = load %Environment, %Environment* %env.ptr
  %1378 = call %Value @eval_let({ i64, i8* }* %1376, %Environment %1377)
  ret %Value %1378
else246:
  br label %merge247
merge247:
  %1379 = load %nyx_string*, %nyx_string** %1371
  %1380 = getelementptr [4 x i8], [4 x i8]* @.str135, i32 0, i32 0
  %1381 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str135.c, i8* %1380, i64 3)
  %1382 = call i1 @nyx_string_equals(%nyx_string* %1379, %nyx_string* %1381)
  br i1 %1382, label %then248, label %else249
then248:
  %1383 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1384 = load %Environment, %Environment* %env.ptr
  %1385 = call %Value @eval_let({ i64, i8* }* %1383, %Environment %1384)
  ret %Value %1385
else249:
  br label %merge250
merge250:
  %1386 = load %nyx_string*, %nyx_string** %1371
  %1387 = getelementptr [7 x i8], [7 x i8]* @.str136, i32 0, i32 0
  %1388 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str136.c, i8* %1387, i64 6)
  %1389 = call i1 @nyx_string_equals(%nyx_string* %1386, %nyx_string* %1388)
  br i1 %1389, label %then251, label %else252
then251:
  %1390 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1391 = load %Environment, %Environment* %env.ptr
  %1392 = call %Value @eval_assign({ i64, i8* }* %1390, %Environment %1391)
  ret %Value %1392
else252:
  br label %merge253
merge253:
  %1393 = load %nyx_string*, %nyx_string** %1371
  %1394 = getelementptr [3 x i8], [3 x i8]* @.str137, i32 0, i32 0
  %1395 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str137.c, i8* %1394, i64 2)
  %1396 = call i1 @nyx_string_equals(%nyx_string* %1393, %nyx_string* %1395)
  br i1 %1396, label %then254, label %else255
then254:
  %1397 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1398 = load %Environment, %Environment* %env.ptr
  %1399 = call %Value @eval_if({ i64, i8* }* %1397, %Environment %1398)
  ret %Value %1399
else255:
  br label %merge256
merge256:
  %1400 = load %nyx_string*, %nyx_string** %1371
  %1401 = getelementptr [6 x i8], [6 x i8]* @.str138, i32 0, i32 0
  %1402 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str138.c, i8* %1401, i64 5)
  %1403 = call i1 @nyx_string_equals(%nyx_string* %1400, %nyx_string* %1402)
  br i1 %1403, label %then257, label %else258
then257:
  %1404 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1405 = load %Environment, %Environment* %env.ptr
  %1406 = call %Value @eval_while({ i64, i8* }* %1404, %Environment %1405)
  ret %Value %1406
else258:
  br label %merge259
merge259:
  %1407 = load %nyx_string*, %nyx_string** %1371
  %1408 = getelementptr [4 x i8], [4 x i8]* @.str139, i32 0, i32 0
  %1409 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str139.c, i8* %1408, i64 3)
  %1410 = call i1 @nyx_string_equals(%nyx_string* %1407, %nyx_string* %1409)
  br i1 %1410, label %then260, label %else261
then260:
  %1411 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1412 = load %Environment, %Environment* %env.ptr
  %1413 = call %Value @eval_for({ i64, i8* }* %1411, %Environment %1412)
  ret %Value %1413
else261:
  br label %merge262
merge262:
  %1414 = load %nyx_string*, %nyx_string** %1371
  %1415 = getelementptr [7 x i8], [7 x i8]* @.str140, i32 0, i32 0
  %1416 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str140.c, i8* %1415, i64 6)
  %1417 = call i1 @nyx_string_equals(%nyx_string* %1414, %nyx_string* %1416)
  br i1 %1417, label %then263, label %else264
then263:
  %1418 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1419 = load %Environment, %Environment* %env.ptr
  %1420 = call %Value @eval_return({ i64, i8* }* %1418, %Environment %1419)
  ret %Value %1420
else264:
  br label %merge265
merge265:
  %1421 = load %nyx_string*, %nyx_string** %1371
  %1422 = getelementptr [6 x i8], [6 x i8]* @.str141, i32 0, i32 0
  %1423 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str141.c, i8* %1422, i64 5)
  %1424 = call i1 @nyx_string_equals(%nyx_string* %1421, %nyx_string* %1423)
  br i1 %1424, label %then266, label %else267
then266:
  %1425 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1426 = load %Environment, %Environment* %env.ptr
  %1427 = call %Value @eval_block({ i64, i8* }* %1425, %Environment %1426)
  ret %Value %1427
else267:
  br label %merge268
merge268:
  %1428 = load %nyx_string*, %nyx_string** %1371
  %1429 = getelementptr [9 x i8], [9 x i8]* @.str142, i32 0, i32 0
  %1430 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str142.c, i8* %1429, i64 8)
  %1431 = call i1 @nyx_string_equals(%nyx_string* %1428, %nyx_string* %1430)
  br i1 %1431, label %then269, label %else270
then269:
  %1432 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1433 = load %Environment, %Environment* %env.ptr
  %1434 = call %Value @eval_function_decl({ i64, i8* }* %1432, %Environment %1433)
  ret %Value %1434
else270:
  br label %merge271
merge271:
  %1435 = load %nyx_string*, %nyx_string** %1371
  %1436 = getelementptr [13 x i8], [13 x i8]* @.str143, i32 0, i32 0
  %1437 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str143.c, i8* %1436, i64 12)
  %1438 = call i1 @nyx_string_equals(%nyx_string* %1435, %nyx_string* %1437)
  br i1 %1438, label %then272, label %else273
then272:
  %1439 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1440 = load %Environment, %Environment* %env.ptr
  %1441 = call %Value @eval_index_assign({ i64, i8* }* %1439, %Environment %1440)
  ret %Value %1441
else273:
  br label %merge274
merge274:
  %1442 = load %nyx_string*, %nyx_string** %1371
  %1443 = getelementptr [13 x i8], [13 x i8]* @.str144, i32 0, i32 0
  %1444 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str144.c, i8* %1443, i64 12)
  %1445 = call i1 @nyx_string_equals(%nyx_string* %1442, %nyx_string* %1444)
  br i1 %1445, label %then275, label %else276
then275:
  %1446 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1447 = load %Environment, %Environment* %env.ptr
  %1448 = call %Value @eval_field_assign({ i64, i8* }* %1446, %Environment %1447)
  ret %Value %1448
else276:
  br label %merge277
merge277:
  %1449 = load %nyx_string*, %nyx_string** %1371
  %1450 = getelementptr [6 x i8], [6 x i8]* @.str145, i32 0, i32 0
  %1451 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str145.c, i8* %1450, i64 5)
  %1452 = call i1 @nyx_string_equals(%nyx_string* %1449, %nyx_string* %1451)
  br i1 %1452, label %then278, label %else279
then278:
  %1453 = getelementptr [6 x i8], [6 x i8]* @.str146, i32 0, i32 0
  %1454 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str146.c, i8* %1453, i64 5)
  %1455 = call %Value @make_control(%nyx_string* %1454)
  ret %Value %1455
else279:
  br label %merge280
merge280:
  %1456 = load %nyx_string*, %nyx_string** %1371
  %1457 = getelementptr [9 x i8], [9 x i8]* @.str147, i32 0, i32 0
  %1458 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str147.c, i8* %1457, i64 8)
  %1459 = call i1 @nyx_string_equals(%nyx_string* %1456, %nyx_string* %1458)
  br i1 %1459, label %then281, label %else282
then281:
  %1460 = getelementptr [9 x i8], [9 x i8]* @.str148, i32 0, i32 0
  %1461 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str148.c, i8* %1460, i64 8)
  %1462 = call %Value @make_control(%nyx_string* %1461)
  ret %Value %1462
else282:
  br label %merge283
merge283:
  %1463 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1464 = load %Environment, %Environment* %env.ptr
  %1465 = call %Value @eval_expr({ i64, i8* }* %1463, %Environment %1464)
  ret %Value %1465
}

define internal %Value @eval_let(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %1466 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1467 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %1466)
  %1468 = alloca { i64, i8* }*
  store { i64, i8* }* %1467, { i64, i8* }** %1468
  %1469 = load { i64, i8* }*, { i64, i8* }** %1468
  %1470 = call i64 @nyx_array_get({ i64, i8* }* %1469, i64 0)
  %1471 = inttoptr i64 %1470 to { i64, i8* }*
  %1472 = alloca { i64, i8* }*
  store { i64, i8* }* %1471, { i64, i8* }** %1472
  %1473 = load { i64, i8* }*, { i64, i8* }** %1472
  %1474 = call %nyx_string* @astnode_get_type({ i64, i8* }* %1473)
  %1475 = alloca %nyx_string*
  store %nyx_string* %1474, %nyx_string** %1475
  %1476 = load { i64, i8* }*, { i64, i8* }** %1468
  %1477 = call i64 @nyx_array_get({ i64, i8* }* %1476, i64 2)
  %1478 = inttoptr i64 %1477 to { i64, i8* }*
  %1479 = alloca { i64, i8* }*
  store { i64, i8* }* %1478, { i64, i8* }** %1479
  %1480 = load { i64, i8* }*, { i64, i8* }** %1479
  %1481 = load %Environment, %Environment* %env.ptr
  %1482 = call %Value @eval_expr({ i64, i8* }* %1480, %Environment %1481)
  %1483 = alloca %Value
  store %Value %1482, %Value* %1483
  %1484 = getelementptr %Value, %Value* %1483, i32 0, i32 0
  %1485 = load %nyx_string*, %nyx_string** %1484
  %1486 = getelementptr [6 x i8], [6 x i8]* @.str149, i32 0, i32 0
  %1487 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str149.c, i8* %1486, i64 5)
  %1488 = call i1 @nyx_string_equals(%nyx_string* %1485, %nyx_string* %1487)
  br i1 %1488, label %then284, label %else285
then284:
  %1489 = load %Value, %Value* %1483
  ret %Value %1489
else285:
  br label %merge286
merge286:
  %1490 = load %Environment, %Environment* %env.ptr
  %1491 = load %nyx_string*, %nyx_string** %1475
  %1492 = load %Value, %Value* %1483
  %1493 = call i64 @env_define(%Environment %1490, %nyx_string* %1491, %Value %1492)
  %1494 = call %Value @make_nil()
  ret %Value %1494
}

define internal %Value @eval_assign(
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
  %1506 = call i64 @nyx_array_get({ i64, i8* }* %1505, i64 1)
  %1507 = inttoptr i64 %1506 to { i64, i8* }*
  %1508 = load %Environment, %Environment* %env.ptr
  %1509 = call %Value @eval_expr({ i64, i8* }* %1507, %Environment %1508)
  %1510 = alloca %Value
  store %Value %1509, %Value* %1510
  %1511 = getelementptr %Value, %Value* %1510, i32 0, i32 0
  %1512 = load %nyx_string*, %nyx_string** %1511
  %1513 = getelementptr [6 x i8], [6 x i8]* @.str150, i32 0, i32 0
  %1514 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str150.c, i8* %1513, i64 5)
  %1515 = call i1 @nyx_string_equals(%nyx_string* %1512, %nyx_string* %1514)
  br i1 %1515, label %then287, label %else288
then287:
  %1516 = load %Value, %Value* %1510
  ret %Value %1516
else288:
  br label %merge289
merge289:
  %1517 = load %Environment, %Environment* %env.ptr
  %1518 = load %nyx_string*, %nyx_string** %1504
  %1519 = load %Value, %Value* %1510
  %1520 = call i1 @env_set(%Environment %1517, %nyx_string* %1518, %Value %1519)
  %1521 = xor i1 %1520, true
  br i1 %1521, label %then290, label %else291
then290:
  %1522 = getelementptr [8 x i8], [8 x i8]* @.str151, i32 0, i32 0
  %1523 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str151.c, i8* %1522, i64 7)
  %1524 = getelementptr [23 x i8], [23 x i8]* @.str152, i32 0, i32 0
  %1525 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str152.c, i8* %1524, i64 22)
  %1526 = load %nyx_string*, %nyx_string** %1504
  %1527 = call %nyx_string* @nyx_string_concat(%nyx_string* %1525, %nyx_string* %1526)
  %1528 = getelementptr [21 x i8], [21 x i8]* @.str153, i32 0, i32 0
  %1529 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str153.c, i8* %1528, i64 20)
  %1530 = load %nyx_string*, %nyx_string** %1504
  %1531 = call %nyx_string* @nyx_string_concat(%nyx_string* %1529, %nyx_string* %1530)
  %1532 = call i64 @interp_err(%nyx_string* %1523, %nyx_string* %1527, %nyx_string* %1531)
  %1533 = call %Value @make_error()
  ret %Value %1533
else291:
  br label %merge292
merge292:
  %1534 = call %Value @make_nil()
  ret %Value %1534
}

define internal %Value @eval_index_assign(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %1535 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1536 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %1535)
  %1537 = alloca { i64, i8* }*
  store { i64, i8* }* %1536, { i64, i8* }** %1537
  %1538 = load { i64, i8* }*, { i64, i8* }** %1537
  %1539 = call i64 @nyx_array_get({ i64, i8* }* %1538, i64 0)
  %1540 = inttoptr i64 %1539 to { i64, i8* }*
  %1541 = alloca { i64, i8* }*
  store { i64, i8* }* %1540, { i64, i8* }** %1541
  %1542 = load { i64, i8* }*, { i64, i8* }** %1537
  %1543 = call i64 @nyx_array_get({ i64, i8* }* %1542, i64 1)
  %1544 = inttoptr i64 %1543 to { i64, i8* }*
  %1545 = alloca { i64, i8* }*
  store { i64, i8* }* %1544, { i64, i8* }** %1545
  %1546 = load { i64, i8* }*, { i64, i8* }** %1537
  %1547 = call i64 @nyx_array_get({ i64, i8* }* %1546, i64 2)
  %1548 = inttoptr i64 %1547 to { i64, i8* }*
  %1549 = alloca { i64, i8* }*
  store { i64, i8* }* %1548, { i64, i8* }** %1549
  %1550 = load { i64, i8* }*, { i64, i8* }** %1541
  %1551 = load %Environment, %Environment* %env.ptr
  %1552 = call %Value @eval_expr({ i64, i8* }* %1550, %Environment %1551)
  %1553 = alloca %Value
  store %Value %1552, %Value* %1553
  %1554 = getelementptr %Value, %Value* %1553, i32 0, i32 0
  %1555 = load %nyx_string*, %nyx_string** %1554
  %1556 = getelementptr [6 x i8], [6 x i8]* @.str154, i32 0, i32 0
  %1557 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str154.c, i8* %1556, i64 5)
  %1558 = call i1 @nyx_string_equals(%nyx_string* %1555, %nyx_string* %1557)
  br i1 %1558, label %then293, label %else294
then293:
  %1559 = load %Value, %Value* %1553
  ret %Value %1559
else294:
  br label %merge295
merge295:
  %1560 = load { i64, i8* }*, { i64, i8* }** %1545
  %1561 = load %Environment, %Environment* %env.ptr
  %1562 = call %Value @eval_expr({ i64, i8* }* %1560, %Environment %1561)
  %1563 = alloca %Value
  store %Value %1562, %Value* %1563
  %1564 = getelementptr %Value, %Value* %1563, i32 0, i32 0
  %1565 = load %nyx_string*, %nyx_string** %1564
  %1566 = getelementptr [6 x i8], [6 x i8]* @.str155, i32 0, i32 0
  %1567 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str155.c, i8* %1566, i64 5)
  %1568 = call i1 @nyx_string_equals(%nyx_string* %1565, %nyx_string* %1567)
  br i1 %1568, label %then296, label %else297
then296:
  %1569 = load %Value, %Value* %1563
  ret %Value %1569
else297:
  br label %merge298
merge298:
  %1570 = load { i64, i8* }*, { i64, i8* }** %1549
  %1571 = load %Environment, %Environment* %env.ptr
  %1572 = call %Value @eval_expr({ i64, i8* }* %1570, %Environment %1571)
  %1573 = alloca %Value
  store %Value %1572, %Value* %1573
  %1574 = getelementptr %Value, %Value* %1573, i32 0, i32 0
  %1575 = load %nyx_string*, %nyx_string** %1574
  %1576 = getelementptr [6 x i8], [6 x i8]* @.str156, i32 0, i32 0
  %1577 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str156.c, i8* %1576, i64 5)
  %1578 = call i1 @nyx_string_equals(%nyx_string* %1575, %nyx_string* %1577)
  br i1 %1578, label %then299, label %else300
then299:
  %1579 = load %Value, %Value* %1573
  ret %Value %1579
else300:
  br label %merge301
merge301:
  %1580 = getelementptr %Value, %Value* %1553, i32 0, i32 0
  %1581 = load %nyx_string*, %nyx_string** %1580
  %1582 = getelementptr [6 x i8], [6 x i8]* @.str157, i32 0, i32 0
  %1583 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str157.c, i8* %1582, i64 5)
  %1584 = call i1 @nyx_string_equals(%nyx_string* %1581, %nyx_string* %1583)
  br i1 %1584, label %then302, label %else303
then302:
  %1585 = getelementptr %Value, %Value* %1553, i32 0, i32 5
  %1586 = load { i64, i8* }*, { i64, i8* }** %1585
  %1587 = alloca { i64, i8* }*
  store { i64, i8* }* %1586, { i64, i8* }** %1587
  %1588 = load %Value, %Value* %1563
  %1589 = call i64 @value_to_int(%Value %1588)
  %1590 = alloca i64
  store i64 %1589, i64* %1590
  %1591 = alloca i1
  store i1 false, i1* %1591
  %1592 = load i64, i64* %1590
  %1593 = icmp sge i64 %1592, 0
  br i1 %1593, label %sc_and_rhs305, label %sc_and_end306
sc_and_rhs305:
  %1594 = load i64, i64* %1590
  %1595 = load { i64, i8* }*, { i64, i8* }** %1587
  %1596 = call i64 @nyx_array_length({ i64, i8* }* %1595)
  %1597 = icmp slt i64 %1594, %1596
  store i1 %1597, i1* %1591
  br label %sc_and_end306
sc_and_end306:
  %1598 = load i1, i1* %1591
  br i1 %1598, label %then307, label %else308
then307:
  %1599 = load { i64, i8* }*, { i64, i8* }** %1587
  %1600 = load i64, i64* %1590
  %1601 = load %Value, %Value* %1573
  %1602 = getelementptr %Value, %Value* null, i32 1
  %1603 = ptrtoint %Value* %1602 to i64
  %1604 = call i8* @GC_malloc(i64 %1603)
  %1605 = bitcast i8* %1604 to %Value*
  store %Value %1601, %Value* %1605
  %1606 = ptrtoint %Value* %1605 to i64
  call void @nyx_array_set({ i64, i8* }* %1599, i64 %1600, i64 %1606)
  br label %merge309
else308:
  %1607 = getelementptr [8 x i8], [8 x i8]* @.str158, i32 0, i32 0
  %1608 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str158.c, i8* %1607, i64 7)
  %1609 = getelementptr [38 x i8], [38 x i8]* @.str159, i32 0, i32 0
  %1610 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str159.c, i8* %1609, i64 37)
  %1611 = getelementptr [33 x i8], [33 x i8]* @.str160, i32 0, i32 0
  %1612 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str160.c, i8* %1611, i64 32)
  %1613 = call i64 @interp_err(%nyx_string* %1608, %nyx_string* %1610, %nyx_string* %1612)
  %1614 = call %Value @make_error()
  ret %Value %1614
merge309:
  br label %merge304
else303:
  %1615 = getelementptr [8 x i8], [8 x i8]* @.str161, i32 0, i32 0
  %1616 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str161.c, i8* %1615, i64 7)
  %1617 = getelementptr [38 x i8], [38 x i8]* @.str162, i32 0, i32 0
  %1618 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str162.c, i8* %1617, i64 37)
  %1619 = getelementptr %Value, %Value* %1553, i32 0, i32 0
  %1620 = load %nyx_string*, %nyx_string** %1619
  %1621 = call %nyx_string* @nyx_string_concat(%nyx_string* %1618, %nyx_string* %1620)
  %1622 = getelementptr [35 x i8], [35 x i8]* @.str163, i32 0, i32 0
  %1623 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str163.c, i8* %1622, i64 34)
  %1624 = getelementptr %Value, %Value* %1553, i32 0, i32 0
  %1625 = load %nyx_string*, %nyx_string** %1624
  %1626 = call %nyx_string* @nyx_string_concat(%nyx_string* %1623, %nyx_string* %1625)
  %1627 = call i64 @interp_err(%nyx_string* %1616, %nyx_string* %1621, %nyx_string* %1626)
  %1628 = call %Value @make_error()
  ret %Value %1628
merge304:
  %1629 = call %Value @make_nil()
  ret %Value %1629
}

define internal %Value @eval_field_assign(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %1630 = getelementptr [8 x i8], [8 x i8]* @.str164, i32 0, i32 0
  %1631 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str164.c, i8* %1630, i64 7)
  %1632 = getelementptr [45 x i8], [45 x i8]* @.str165, i32 0, i32 0
  %1633 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str165.c, i8* %1632, i64 44)
  %1634 = getelementptr [46 x i8], [46 x i8]* @.str166, i32 0, i32 0
  %1635 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str166.c, i8* %1634, i64 45)
  %1636 = call i64 @interp_err(%nyx_string* %1631, %nyx_string* %1633, %nyx_string* %1635)
  %1637 = call %Value @make_error()
  ret %Value %1637
}

define internal %Value @eval_if(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %1638 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1639 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %1638)
  %1640 = alloca { i64, i8* }*
  store { i64, i8* }* %1639, { i64, i8* }** %1640
  %1641 = load { i64, i8* }*, { i64, i8* }** %1640
  %1642 = call i64 @nyx_array_get({ i64, i8* }* %1641, i64 0)
  %1643 = inttoptr i64 %1642 to { i64, i8* }*
  %1644 = alloca { i64, i8* }*
  store { i64, i8* }* %1643, { i64, i8* }** %1644
  %1645 = load { i64, i8* }*, { i64, i8* }** %1644
  %1646 = load %Environment, %Environment* %env.ptr
  %1647 = call %Value @eval_expr({ i64, i8* }* %1645, %Environment %1646)
  %1648 = alloca %Value
  store %Value %1647, %Value* %1648
  %1649 = getelementptr %Value, %Value* %1648, i32 0, i32 0
  %1650 = load %nyx_string*, %nyx_string** %1649
  %1651 = getelementptr [6 x i8], [6 x i8]* @.str167, i32 0, i32 0
  %1652 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str167.c, i8* %1651, i64 5)
  %1653 = call i1 @nyx_string_equals(%nyx_string* %1650, %nyx_string* %1652)
  br i1 %1653, label %then310, label %else311
then310:
  %1654 = load %Value, %Value* %1648
  ret %Value %1654
else311:
  br label %merge312
merge312:
  %1655 = load { i64, i8* }*, { i64, i8* }** %1640
  %1656 = call i64 @nyx_array_get({ i64, i8* }* %1655, i64 1)
  %1657 = inttoptr i64 %1656 to { i64, i8* }*
  %1658 = alloca { i64, i8* }*
  store { i64, i8* }* %1657, { i64, i8* }** %1658
  %1659 = load { i64, i8* }*, { i64, i8* }** %1640
  %1660 = call i64 @nyx_array_get({ i64, i8* }* %1659, i64 2)
  %1661 = inttoptr i64 %1660 to { i64, i8* }*
  %1662 = alloca { i64, i8* }*
  store { i64, i8* }* %1661, { i64, i8* }** %1662
  %1663 = load %Value, %Value* %1648
  %1664 = call i1 @is_truthy(%Value %1663)
  br i1 %1664, label %then313, label %else314
then313:
  %1665 = load { i64, i8* }*, { i64, i8* }** %1658
  %1666 = load %Environment, %Environment* %env.ptr
  %1667 = call %Value @eval_stmt({ i64, i8* }* %1665, %Environment %1666)
  ret %Value %1667
else314:
  %1668 = load { i64, i8* }*, { i64, i8* }** %1662
  %1669 = call %nyx_string* @astnode_get_type({ i64, i8* }* %1668)
  %1670 = alloca %nyx_string*
  store %nyx_string* %1669, %nyx_string** %1670
  %1671 = load %nyx_string*, %nyx_string** %1670
  %1672 = getelementptr [6 x i8], [6 x i8]* @.str168, i32 0, i32 0
  %1673 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str168.c, i8* %1672, i64 5)
  %1674 = call i1 @nyx_string_equals(%nyx_string* %1671, %nyx_string* %1673)
  %1675 = xor i1 %1674, true
  br i1 %1675, label %then316, label %else317
then316:
  %1676 = load { i64, i8* }*, { i64, i8* }** %1662
  %1677 = load %Environment, %Environment* %env.ptr
  %1678 = call %Value @eval_stmt({ i64, i8* }* %1676, %Environment %1677)
  ret %Value %1678
else317:
  br label %merge318
merge318:
  br label %merge315
merge315:
  %1679 = call %Value @make_nil()
  ret %Value %1679
}

define internal %Value @eval_while(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %1680 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1681 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %1680)
  %1682 = alloca { i64, i8* }*
  store { i64, i8* }* %1681, { i64, i8* }** %1682
  %1683 = load { i64, i8* }*, { i64, i8* }** %1682
  %1684 = call i64 @nyx_array_get({ i64, i8* }* %1683, i64 0)
  %1685 = inttoptr i64 %1684 to { i64, i8* }*
  %1686 = alloca { i64, i8* }*
  store { i64, i8* }* %1685, { i64, i8* }** %1686
  %1687 = load { i64, i8* }*, { i64, i8* }** %1682
  %1688 = call i64 @nyx_array_get({ i64, i8* }* %1687, i64 1)
  %1689 = inttoptr i64 %1688 to { i64, i8* }*
  %1690 = alloca { i64, i8* }*
  store { i64, i8* }* %1689, { i64, i8* }** %1690
  %1691 = alloca i1
  store i1 1, i1* %1691
  %1692 = getelementptr [6 x i8], [6 x i8]* @.str169, i32 0, i32 0
  %1693 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str169.c, i8* %1692, i64 5)
  %1694 = alloca %nyx_string*
  store %nyx_string* %1693, %nyx_string** %1694
  %1695 = getelementptr [7 x i8], [7 x i8]* @.str170, i32 0, i32 0
  %1696 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str170.c, i8* %1695, i64 6)
  %1697 = alloca %nyx_string*
  store %nyx_string* %1696, %nyx_string** %1697
  %1698 = getelementptr [6 x i8], [6 x i8]* @.str171, i32 0, i32 0
  %1699 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str171.c, i8* %1698, i64 5)
  %1700 = alloca %nyx_string*
  store %nyx_string* %1699, %nyx_string** %1700
  %1701 = call i8* @llvm.stacksave()
  br label %while_cond319
while_cond319:
  %1702 = load i1, i1* %1691
  br i1 %1702, label %while_body320, label %while_end321
while_body320:
  call void @llvm.stackrestore(i8* %1701)
  %1703 = load { i64, i8* }*, { i64, i8* }** %1686
  %1704 = load %Environment, %Environment* %env.ptr
  %1705 = call %Value @eval_expr({ i64, i8* }* %1703, %Environment %1704)
  %1706 = alloca %Value
  store %Value %1705, %Value* %1706
  %1707 = getelementptr %Value, %Value* %1706, i32 0, i32 0
  %1708 = load %nyx_string*, %nyx_string** %1707
  %1709 = load %nyx_string*, %nyx_string** %1694
  %1710 = call i1 @nyx_string_equals(%nyx_string* %1708, %nyx_string* %1709)
  br i1 %1710, label %then322, label %else323
then322:
  %1711 = load %Value, %Value* %1706
  ret %Value %1711
else323:
  br label %merge324
merge324:
  %1712 = load %Value, %Value* %1706
  %1713 = call i1 @is_truthy(%Value %1712)
  br i1 %1713, label %then325, label %else326
then325:
  %1714 = load { i64, i8* }*, { i64, i8* }** %1690
  %1715 = load %Environment, %Environment* %env.ptr
  %1716 = call %Value @eval_stmt({ i64, i8* }* %1714, %Environment %1715)
  %1717 = alloca %Value
  store %Value %1716, %Value* %1717
  %1718 = alloca i1
  store i1 true, i1* %1718
  %1719 = getelementptr %Value, %Value* %1717, i32 0, i32 0
  %1720 = load %nyx_string*, %nyx_string** %1719
  %1721 = load %nyx_string*, %nyx_string** %1694
  %1722 = call i1 @nyx_string_equals(%nyx_string* %1720, %nyx_string* %1721)
  br i1 %1722, label %sc_or_end329, label %sc_or_rhs328
sc_or_rhs328:
  %1723 = getelementptr %Value, %Value* %1717, i32 0, i32 0
  %1724 = load %nyx_string*, %nyx_string** %1723
  %1725 = load %nyx_string*, %nyx_string** %1697
  %1726 = call i1 @nyx_string_equals(%nyx_string* %1724, %nyx_string* %1725)
  store i1 %1726, i1* %1718
  br label %sc_or_end329
sc_or_end329:
  %1727 = load i1, i1* %1718
  br i1 %1727, label %then330, label %else331
then330:
  %1728 = load %Value, %Value* %1717
  ret %Value %1728
else331:
  br label %merge332
merge332:
  %1729 = getelementptr %Value, %Value* %1717, i32 0, i32 0
  %1730 = load %nyx_string*, %nyx_string** %1729
  %1731 = load %nyx_string*, %nyx_string** %1700
  %1732 = call i1 @nyx_string_equals(%nyx_string* %1730, %nyx_string* %1731)
  br i1 %1732, label %then333, label %else334
then333:
  store i1 0, i1* %1691
  br label %merge335
else334:
  br label %merge335
merge335:
  br label %merge327
else326:
  store i1 0, i1* %1691
  br label %merge327
merge327:
  br label %while_cond319
while_end321:
  %1733 = call %Value @make_nil()
  ret %Value %1733
}

define internal %Value @eval_for(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %1734 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1735 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %1734)
  %1736 = alloca { i64, i8* }*
  store { i64, i8* }* %1735, { i64, i8* }** %1736
  %1737 = load { i64, i8* }*, { i64, i8* }** %1736
  %1738 = call i64 @nyx_array_get_checked({ i64, i8* }* %1737, i64 0, i64 2)
  %1739 = inttoptr i64 %1738 to %nyx_string*
  %1740 = alloca %nyx_string*
  store %nyx_string* %1739, %nyx_string** %1740
  %1741 = load { i64, i8* }*, { i64, i8* }** %1736
  %1742 = call i64 @nyx_array_get({ i64, i8* }* %1741, i64 1)
  %1743 = inttoptr i64 %1742 to { i64, i8* }*
  %1744 = alloca { i64, i8* }*
  store { i64, i8* }* %1743, { i64, i8* }** %1744
  %1745 = load { i64, i8* }*, { i64, i8* }** %1736
  %1746 = call i64 @nyx_array_get({ i64, i8* }* %1745, i64 2)
  %1747 = inttoptr i64 %1746 to { i64, i8* }*
  %1748 = alloca { i64, i8* }*
  store { i64, i8* }* %1747, { i64, i8* }** %1748
  %1749 = load %Environment, %Environment* %env.ptr
  %1750 = call %Environment @make_child_env(%Environment %1749)
  %1751 = alloca %Environment
  store %Environment %1750, %Environment* %1751
  %1752 = load { i64, i8* }*, { i64, i8* }** %1744
  %1753 = call %nyx_string* @astnode_get_type({ i64, i8* }* %1752)
  %1754 = getelementptr [6 x i8], [6 x i8]* @.str172, i32 0, i32 0
  %1755 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str172.c, i8* %1754, i64 5)
  %1756 = call i1 @nyx_string_equals(%nyx_string* %1753, %nyx_string* %1755)
  br i1 %1756, label %then336, label %else337
then336:
  %1757 = load { i64, i8* }*, { i64, i8* }** %1744
  %1758 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %1757)
  %1759 = alloca { i64, i8* }*
  store { i64, i8* }* %1758, { i64, i8* }** %1759
  %1760 = load { i64, i8* }*, { i64, i8* }** %1759
  %1761 = call i64 @nyx_array_get({ i64, i8* }* %1760, i64 0)
  %1762 = inttoptr i64 %1761 to { i64, i8* }*
  %1763 = alloca { i64, i8* }*
  store { i64, i8* }* %1762, { i64, i8* }** %1763
  %1764 = load { i64, i8* }*, { i64, i8* }** %1759
  %1765 = call i64 @nyx_array_get({ i64, i8* }* %1764, i64 1)
  %1766 = inttoptr i64 %1765 to { i64, i8* }*
  %1767 = alloca { i64, i8* }*
  store { i64, i8* }* %1766, { i64, i8* }** %1767
  %1768 = load { i64, i8* }*, { i64, i8* }** %1759
  %1769 = call i64 @nyx_array_get_checked({ i64, i8* }* %1768, i64 2, i64 2)
  %1770 = inttoptr i64 %1769 to %nyx_string*
  %1771 = alloca %nyx_string*
  store %nyx_string* %1770, %nyx_string** %1771
  %1772 = load { i64, i8* }*, { i64, i8* }** %1763
  %1773 = load %Environment, %Environment* %env.ptr
  %1774 = call %Value @eval_expr({ i64, i8* }* %1772, %Environment %1773)
  %1775 = alloca %Value
  store %Value %1774, %Value* %1775
  %1776 = getelementptr %Value, %Value* %1775, i32 0, i32 0
  %1777 = load %nyx_string*, %nyx_string** %1776
  %1778 = getelementptr [6 x i8], [6 x i8]* @.str173, i32 0, i32 0
  %1779 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str173.c, i8* %1778, i64 5)
  %1780 = call i1 @nyx_string_equals(%nyx_string* %1777, %nyx_string* %1779)
  br i1 %1780, label %then339, label %else340
then339:
  %1781 = load %Value, %Value* %1775
  ret %Value %1781
else340:
  br label %merge341
merge341:
  %1782 = load { i64, i8* }*, { i64, i8* }** %1767
  %1783 = load %Environment, %Environment* %env.ptr
  %1784 = call %Value @eval_expr({ i64, i8* }* %1782, %Environment %1783)
  %1785 = alloca %Value
  store %Value %1784, %Value* %1785
  %1786 = getelementptr %Value, %Value* %1785, i32 0, i32 0
  %1787 = load %nyx_string*, %nyx_string** %1786
  %1788 = getelementptr [6 x i8], [6 x i8]* @.str174, i32 0, i32 0
  %1789 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str174.c, i8* %1788, i64 5)
  %1790 = call i1 @nyx_string_equals(%nyx_string* %1787, %nyx_string* %1789)
  br i1 %1790, label %then342, label %else343
then342:
  %1791 = load %Value, %Value* %1785
  ret %Value %1791
else343:
  br label %merge344
merge344:
  %1792 = alloca i1
  store i1 true, i1* %1792
  %1793 = getelementptr %Value, %Value* %1775, i32 0, i32 0
  %1794 = load %nyx_string*, %nyx_string** %1793
  %1795 = getelementptr [4 x i8], [4 x i8]* @.str175, i32 0, i32 0
  %1796 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str175.c, i8* %1795, i64 3)
  %1797 = call i1 @nyx_string_equals(%nyx_string* %1794, %nyx_string* %1796)
  %1798 = xor i1 %1797, true
  br i1 %1798, label %sc_or_end346, label %sc_or_rhs345
sc_or_rhs345:
  %1799 = getelementptr %Value, %Value* %1785, i32 0, i32 0
  %1800 = load %nyx_string*, %nyx_string** %1799
  %1801 = getelementptr [4 x i8], [4 x i8]* @.str176, i32 0, i32 0
  %1802 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str176.c, i8* %1801, i64 3)
  %1803 = call i1 @nyx_string_equals(%nyx_string* %1800, %nyx_string* %1802)
  %1804 = xor i1 %1803, true
  store i1 %1804, i1* %1792
  br label %sc_or_end346
sc_or_end346:
  %1805 = load i1, i1* %1792
  br i1 %1805, label %then347, label %else348
then347:
  %1806 = getelementptr [8 x i8], [8 x i8]* @.str177, i32 0, i32 0
  %1807 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str177.c, i8* %1806, i64 7)
  %1808 = getelementptr [28 x i8], [28 x i8]* @.str178, i32 0, i32 0
  %1809 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str178.c, i8* %1808, i64 27)
  %1810 = getelementptr %Value, %Value* %1775, i32 0, i32 0
  %1811 = load %nyx_string*, %nyx_string** %1810
  %1812 = call %nyx_string* @nyx_string_concat(%nyx_string* %1809, %nyx_string* %1811)
  %1813 = getelementptr [3 x i8], [3 x i8]* @.str179, i32 0, i32 0
  %1814 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str179.c, i8* %1813, i64 2)
  %1815 = call %nyx_string* @nyx_string_concat(%nyx_string* %1812, %nyx_string* %1814)
  %1816 = getelementptr %Value, %Value* %1785, i32 0, i32 0
  %1817 = load %nyx_string*, %nyx_string** %1816
  %1818 = call %nyx_string* @nyx_string_concat(%nyx_string* %1815, %nyx_string* %1817)
  %1819 = getelementptr [44 x i8], [44 x i8]* @.str180, i32 0, i32 0
  %1820 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str180.c, i8* %1819, i64 43)
  %1821 = call %nyx_string* @nyx_string_concat(%nyx_string* %1818, %nyx_string* %1820)
  %1822 = getelementptr [27 x i8], [27 x i8]* @.str181, i32 0, i32 0
  %1823 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str181.c, i8* %1822, i64 26)
  %1824 = getelementptr %Value, %Value* %1775, i32 0, i32 0
  %1825 = load %nyx_string*, %nyx_string** %1824
  %1826 = call %nyx_string* @nyx_string_concat(%nyx_string* %1823, %nyx_string* %1825)
  %1827 = getelementptr [3 x i8], [3 x i8]* @.str182, i32 0, i32 0
  %1828 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str182.c, i8* %1827, i64 2)
  %1829 = call %nyx_string* @nyx_string_concat(%nyx_string* %1826, %nyx_string* %1828)
  %1830 = getelementptr %Value, %Value* %1785, i32 0, i32 0
  %1831 = load %nyx_string*, %nyx_string** %1830
  %1832 = call %nyx_string* @nyx_string_concat(%nyx_string* %1829, %nyx_string* %1831)
  %1833 = getelementptr [43 x i8], [43 x i8]* @.str183, i32 0, i32 0
  %1834 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str183.c, i8* %1833, i64 42)
  %1835 = call %nyx_string* @nyx_string_concat(%nyx_string* %1832, %nyx_string* %1834)
  %1836 = call i64 @interp_err(%nyx_string* %1807, %nyx_string* %1821, %nyx_string* %1835)
  %1837 = call %Value @make_error()
  ret %Value %1837
else348:
  br label %merge349
merge349:
  %1838 = getelementptr %Value, %Value* %1785, i32 0, i32 1
  %1839 = load i64, i64* %1838
  %1840 = alloca i64
  store i64 %1839, i64* %1840
  %1841 = getelementptr %Value, %Value* %1775, i32 0, i32 1
  %1842 = load i64, i64* %1841
  %1843 = alloca i64
  store i64 %1842, i64* %1843
  %1844 = getelementptr [6 x i8], [6 x i8]* @.str184, i32 0, i32 0
  %1845 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str184.c, i8* %1844, i64 5)
  %1846 = alloca %nyx_string*
  store %nyx_string* %1845, %nyx_string** %1846
  %1847 = getelementptr [7 x i8], [7 x i8]* @.str185, i32 0, i32 0
  %1848 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str185.c, i8* %1847, i64 6)
  %1849 = alloca %nyx_string*
  store %nyx_string* %1848, %nyx_string** %1849
  %1850 = getelementptr [6 x i8], [6 x i8]* @.str186, i32 0, i32 0
  %1851 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str186.c, i8* %1850, i64 5)
  %1852 = alloca %nyx_string*
  store %nyx_string* %1851, %nyx_string** %1852
  %1853 = call i8* @llvm.stacksave()
  br label %while_cond350
while_cond350:
  %1854 = alloca i1
  store i1 true, i1* %1854
  %1855 = load i64, i64* %1843
  %1856 = load i64, i64* %1840
  %1857 = icmp slt i64 %1855, %1856
  br i1 %1857, label %sc_or_end354, label %sc_or_rhs353
sc_or_rhs353:
  %1858 = alloca i1
  store i1 false, i1* %1858
  %1859 = load %nyx_string*, %nyx_string** %1771
  %1860 = getelementptr [5 x i8], [5 x i8]* @.str187, i32 0, i32 0
  %1861 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str187.c, i8* %1860, i64 4)
  %1862 = call i1 @nyx_string_equals(%nyx_string* %1859, %nyx_string* %1861)
  br i1 %1862, label %sc_and_rhs355, label %sc_and_end356
sc_and_rhs355:
  %1863 = load i64, i64* %1843
  %1864 = load i64, i64* %1840
  %1865 = icmp eq i64 %1863, %1864
  store i1 %1865, i1* %1858
  br label %sc_and_end356
sc_and_end356:
  %1866 = load i1, i1* %1858
  store i1 %1866, i1* %1854
  br label %sc_or_end354
sc_or_end354:
  %1867 = load i1, i1* %1854
  br i1 %1867, label %while_body351, label %while_end352
while_body351:
  call void @llvm.stackrestore(i8* %1853)
  %1868 = load %Environment, %Environment* %1751
  %1869 = load %nyx_string*, %nyx_string** %1740
  %1870 = load i64, i64* %1843
  %1871 = call %Value @make_int(i64 %1870)
  %1872 = call i64 @env_define(%Environment %1868, %nyx_string* %1869, %Value %1871)
  %1873 = load { i64, i8* }*, { i64, i8* }** %1748
  %1874 = load %Environment, %Environment* %1751
  %1875 = call %Value @eval_stmt({ i64, i8* }* %1873, %Environment %1874)
  %1876 = alloca %Value
  store %Value %1875, %Value* %1876
  %1877 = alloca i1
  store i1 true, i1* %1877
  %1878 = getelementptr %Value, %Value* %1876, i32 0, i32 0
  %1879 = load %nyx_string*, %nyx_string** %1878
  %1880 = load %nyx_string*, %nyx_string** %1846
  %1881 = call i1 @nyx_string_equals(%nyx_string* %1879, %nyx_string* %1880)
  br i1 %1881, label %sc_or_end358, label %sc_or_rhs357
sc_or_rhs357:
  %1882 = getelementptr %Value, %Value* %1876, i32 0, i32 0
  %1883 = load %nyx_string*, %nyx_string** %1882
  %1884 = load %nyx_string*, %nyx_string** %1849
  %1885 = call i1 @nyx_string_equals(%nyx_string* %1883, %nyx_string* %1884)
  store i1 %1885, i1* %1877
  br label %sc_or_end358
sc_or_end358:
  %1886 = load i1, i1* %1877
  br i1 %1886, label %then359, label %else360
then359:
  %1887 = load %Value, %Value* %1876
  ret %Value %1887
else360:
  br label %merge361
merge361:
  %1888 = getelementptr %Value, %Value* %1876, i32 0, i32 0
  %1889 = load %nyx_string*, %nyx_string** %1888
  %1890 = load %nyx_string*, %nyx_string** %1852
  %1891 = call i1 @nyx_string_equals(%nyx_string* %1889, %nyx_string* %1890)
  br i1 %1891, label %then362, label %else363
then362:
  %1892 = call %Value @make_nil()
  ret %Value %1892
else363:
  br label %merge364
merge364:
  %1893 = load i64, i64* %1843
  %1894 = add i64 %1893, 1
  store i64 %1894, i64* %1843
  br label %while_cond350
while_end352:
  %1895 = call %Value @make_nil()
  ret %Value %1895
else337:
  br label %merge338
merge338:
  %1896 = load { i64, i8* }*, { i64, i8* }** %1744
  %1897 = load %Environment, %Environment* %env.ptr
  %1898 = call %Value @eval_expr({ i64, i8* }* %1896, %Environment %1897)
  %1899 = alloca %Value
  store %Value %1898, %Value* %1899
  %1900 = getelementptr %Value, %Value* %1899, i32 0, i32 0
  %1901 = load %nyx_string*, %nyx_string** %1900
  %1902 = getelementptr [6 x i8], [6 x i8]* @.str188, i32 0, i32 0
  %1903 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str188.c, i8* %1902, i64 5)
  %1904 = call i1 @nyx_string_equals(%nyx_string* %1901, %nyx_string* %1903)
  br i1 %1904, label %then365, label %else366
then365:
  %1905 = load %Value, %Value* %1899
  ret %Value %1905
else366:
  br label %merge367
merge367:
  %1906 = getelementptr %Value, %Value* %1899, i32 0, i32 0
  %1907 = load %nyx_string*, %nyx_string** %1906
  %1908 = getelementptr [6 x i8], [6 x i8]* @.str189, i32 0, i32 0
  %1909 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str189.c, i8* %1908, i64 5)
  %1910 = call i1 @nyx_string_equals(%nyx_string* %1907, %nyx_string* %1909)
  %1911 = xor i1 %1910, true
  br i1 %1911, label %then368, label %else369
then368:
  %1912 = getelementptr [8 x i8], [8 x i8]* @.str190, i32 0, i32 0
  %1913 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str190.c, i8* %1912, i64 7)
  %1914 = getelementptr [26 x i8], [26 x i8]* @.str191, i32 0, i32 0
  %1915 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str191.c, i8* %1914, i64 25)
  %1916 = getelementptr %Value, %Value* %1899, i32 0, i32 0
  %1917 = load %nyx_string*, %nyx_string** %1916
  %1918 = call %nyx_string* @nyx_string_concat(%nyx_string* %1915, %nyx_string* %1917)
  %1919 = getelementptr [62 x i8], [62 x i8]* @.str192, i32 0, i32 0
  %1920 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str192.c, i8* %1919, i64 61)
  %1921 = call %nyx_string* @nyx_string_concat(%nyx_string* %1918, %nyx_string* %1920)
  %1922 = getelementptr [22 x i8], [22 x i8]* @.str193, i32 0, i32 0
  %1923 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str193.c, i8* %1922, i64 21)
  %1924 = getelementptr %Value, %Value* %1899, i32 0, i32 0
  %1925 = load %nyx_string*, %nyx_string** %1924
  %1926 = call %nyx_string* @nyx_string_concat(%nyx_string* %1923, %nyx_string* %1925)
  %1927 = getelementptr [62 x i8], [62 x i8]* @.str194, i32 0, i32 0
  %1928 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str194.c, i8* %1927, i64 61)
  %1929 = call %nyx_string* @nyx_string_concat(%nyx_string* %1926, %nyx_string* %1928)
  %1930 = call i64 @interp_err(%nyx_string* %1913, %nyx_string* %1921, %nyx_string* %1929)
  %1931 = call %Value @make_error()
  ret %Value %1931
else369:
  br label %merge370
merge370:
  %1932 = getelementptr %Value, %Value* %1899, i32 0, i32 5
  %1933 = load { i64, i8* }*, { i64, i8* }** %1932
  %1934 = alloca { i64, i8* }*
  store { i64, i8* }* %1933, { i64, i8* }** %1934
  %1935 = alloca i64
  store i64 0, i64* %1935
  %1936 = getelementptr [6 x i8], [6 x i8]* @.str195, i32 0, i32 0
  %1937 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str195.c, i8* %1936, i64 5)
  %1938 = alloca %nyx_string*
  store %nyx_string* %1937, %nyx_string** %1938
  %1939 = getelementptr [7 x i8], [7 x i8]* @.str196, i32 0, i32 0
  %1940 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str196.c, i8* %1939, i64 6)
  %1941 = alloca %nyx_string*
  store %nyx_string* %1940, %nyx_string** %1941
  %1942 = getelementptr [6 x i8], [6 x i8]* @.str197, i32 0, i32 0
  %1943 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str197.c, i8* %1942, i64 5)
  %1944 = alloca %nyx_string*
  store %nyx_string* %1943, %nyx_string** %1944
  %1945 = call i8* @llvm.stacksave()
  br label %while_cond371
while_cond371:
  %1946 = load i64, i64* %1935
  %1947 = load { i64, i8* }*, { i64, i8* }** %1934
  %1948 = call i64 @nyx_array_length({ i64, i8* }* %1947)
  %1949 = icmp slt i64 %1946, %1948
  br i1 %1949, label %while_body372, label %while_end373
while_body372:
  call void @llvm.stackrestore(i8* %1945)
  %1950 = load { i64, i8* }*, { i64, i8* }** %1934
  %1951 = load i64, i64* %1935
  %1952 = call i64 @nyx_array_get({ i64, i8* }* %1950, i64 %1951)
  %1953 = inttoptr i64 %1952 to %Value*
  %1954 = load %Value, %Value* %1953
  %1955 = alloca %Value
  store %Value %1954, %Value* %1955
  %1956 = load %Environment, %Environment* %1751
  %1957 = load %nyx_string*, %nyx_string** %1740
  %1958 = load %Value, %Value* %1955
  %1959 = call i64 @env_define(%Environment %1956, %nyx_string* %1957, %Value %1958)
  %1960 = load { i64, i8* }*, { i64, i8* }** %1748
  %1961 = load %Environment, %Environment* %1751
  %1962 = call %Value @eval_stmt({ i64, i8* }* %1960, %Environment %1961)
  %1963 = alloca %Value
  store %Value %1962, %Value* %1963
  %1964 = alloca i1
  store i1 true, i1* %1964
  %1965 = getelementptr %Value, %Value* %1963, i32 0, i32 0
  %1966 = load %nyx_string*, %nyx_string** %1965
  %1967 = load %nyx_string*, %nyx_string** %1938
  %1968 = call i1 @nyx_string_equals(%nyx_string* %1966, %nyx_string* %1967)
  br i1 %1968, label %sc_or_end375, label %sc_or_rhs374
sc_or_rhs374:
  %1969 = getelementptr %Value, %Value* %1963, i32 0, i32 0
  %1970 = load %nyx_string*, %nyx_string** %1969
  %1971 = load %nyx_string*, %nyx_string** %1941
  %1972 = call i1 @nyx_string_equals(%nyx_string* %1970, %nyx_string* %1971)
  store i1 %1972, i1* %1964
  br label %sc_or_end375
sc_or_end375:
  %1973 = load i1, i1* %1964
  br i1 %1973, label %then376, label %else377
then376:
  %1974 = load %Value, %Value* %1963
  ret %Value %1974
else377:
  br label %merge378
merge378:
  %1975 = getelementptr %Value, %Value* %1963, i32 0, i32 0
  %1976 = load %nyx_string*, %nyx_string** %1975
  %1977 = load %nyx_string*, %nyx_string** %1944
  %1978 = call i1 @nyx_string_equals(%nyx_string* %1976, %nyx_string* %1977)
  br i1 %1978, label %then379, label %else380
then379:
  %1979 = call %Value @make_nil()
  ret %Value %1979
else380:
  br label %merge381
merge381:
  %1980 = load i64, i64* %1935
  %1981 = add i64 %1980, 1
  store i64 %1981, i64* %1935
  br label %while_cond371
while_end373:
  %1982 = call %Value @make_nil()
  ret %Value %1982
}

define internal %Value @eval_block(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %1983 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1984 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %1983)
  %1985 = alloca { i64, i8* }*
  store { i64, i8* }* %1984, { i64, i8* }** %1985
  %1986 = load { i64, i8* }*, { i64, i8* }** %1985
  %1987 = call i64 @nyx_array_get({ i64, i8* }* %1986, i64 0)
  %1988 = inttoptr i64 %1987 to { i64, i8* }*
  %1989 = alloca { i64, i8* }*
  store { i64, i8* }* %1988, { i64, i8* }** %1989
  %1990 = load %Environment, %Environment* %env.ptr
  %1991 = call %Environment @make_child_env(%Environment %1990)
  %1992 = alloca %Environment
  store %Environment %1991, %Environment* %1992
  %1993 = call %Value @make_nil()
  %1994 = alloca %Value
  store %Value %1993, %Value* %1994
  %1995 = alloca i64
  store i64 0, i64* %1995
  %1996 = load { i64, i8* }*, { i64, i8* }** %1989
  %1997 = call i64 @nyx_array_length({ i64, i8* }* %1996)
  %1998 = alloca i64
  store i64 %1997, i64* %1998
  %1999 = getelementptr [7 x i8], [7 x i8]* @.str198, i32 0, i32 0
  %2000 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str198.c, i8* %1999, i64 6)
  %2001 = alloca %nyx_string*
  store %nyx_string* %2000, %nyx_string** %2001
  %2002 = getelementptr [6 x i8], [6 x i8]* @.str199, i32 0, i32 0
  %2003 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str199.c, i8* %2002, i64 5)
  %2004 = alloca %nyx_string*
  store %nyx_string* %2003, %nyx_string** %2004
  %2005 = call i8* @llvm.stacksave()
  br label %while_cond382
while_cond382:
  %2006 = load i64, i64* %1995
  %2007 = load i64, i64* %1998
  %2008 = icmp slt i64 %2006, %2007
  br i1 %2008, label %while_body383, label %while_end384
while_body383:
  call void @llvm.stackrestore(i8* %2005)
  %2009 = load { i64, i8* }*, { i64, i8* }** %1989
  %2010 = load i64, i64* %1995
  %2011 = call i64 @nyx_array_get({ i64, i8* }* %2009, i64 %2010)
  %2012 = inttoptr i64 %2011 to { i64, i8* }*
  %2013 = alloca { i64, i8* }*
  store { i64, i8* }* %2012, { i64, i8* }** %2013
  %2014 = load { i64, i8* }*, { i64, i8* }** %2013
  %2015 = load %Environment, %Environment* %1992
  %2016 = call %Value @eval_stmt({ i64, i8* }* %2014, %Environment %2015)
  store %Value %2016, %Value* %1994
  %2017 = getelementptr %Value, %Value* %1994, i32 0, i32 0
  %2018 = load %nyx_string*, %nyx_string** %2017
  %2019 = load %nyx_string*, %nyx_string** %2001
  %2020 = call i1 @nyx_string_equals(%nyx_string* %2018, %nyx_string* %2019)
  br i1 %2020, label %then385, label %else386
then385:
  %2021 = load %Value, %Value* %1994
  ret %Value %2021
else386:
  br label %merge387
merge387:
  %2022 = getelementptr %Value, %Value* %1994, i32 0, i32 0
  %2023 = load %nyx_string*, %nyx_string** %2022
  %2024 = load %nyx_string*, %nyx_string** %2004
  %2025 = call i1 @nyx_string_equals(%nyx_string* %2023, %nyx_string* %2024)
  br i1 %2025, label %then388, label %else389
then388:
  %2026 = load %Value, %Value* %1994
  ret %Value %2026
else389:
  br label %merge390
merge390:
  %2027 = load %Value, %Value* %1994
  %2028 = call i1 @is_loop_control(%Value %2027)
  br i1 %2028, label %then391, label %else392
then391:
  %2029 = load %Value, %Value* %1994
  ret %Value %2029
else392:
  br label %merge393
merge393:
  %2030 = load i64, i64* %1995
  %2031 = add i64 %2030, 1
  store i64 %2031, i64* %1995
  br label %while_cond382
while_end384:
  %2032 = load %Value, %Value* %1994
  ret %Value %2032
}

define internal %Value @eval_function_decl(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %2033 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %2034 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %2033)
  %2035 = alloca { i64, i8* }*
  store { i64, i8* }* %2034, { i64, i8* }** %2035
  %2036 = load { i64, i8* }*, { i64, i8* }** %2035
  %2037 = call i64 @nyx_array_get_checked({ i64, i8* }* %2036, i64 0, i64 2)
  %2038 = inttoptr i64 %2037 to %nyx_string*
  %2039 = alloca %nyx_string*
  store %nyx_string* %2038, %nyx_string** %2039
  %2040 = load { i64, i8* }*, { i64, i8* }** %2035
  %2041 = call i64 @nyx_array_get({ i64, i8* }* %2040, i64 1)
  %2042 = inttoptr i64 %2041 to { i64, i8* }*
  %2043 = alloca { i64, i8* }*
  store { i64, i8* }* %2042, { i64, i8* }** %2043
  %2044 = load { i64, i8* }*, { i64, i8* }** %2035
  %2045 = call i64 @nyx_array_get({ i64, i8* }* %2044, i64 2)
  %2046 = alloca i64
  store i64 %2045, i64* %2046
  %2047 = load { i64, i8* }*, { i64, i8* }** %2035
  %2048 = call i64 @nyx_array_get({ i64, i8* }* %2047, i64 3)
  %2049 = inttoptr i64 %2048 to { i64, i8* }*
  %2050 = alloca { i64, i8* }*
  store { i64, i8* }* %2049, { i64, i8* }** %2050
  %2051 = call { i64, i8* }* @nyx_array_new_ptr()
  %2052 = alloca { i64, i8* }*
  store { i64, i8* }* %2051, { i64, i8* }** %2052
  %2053 = load { i64, i8* }*, { i64, i8* }** %2050
  %2054 = call %nyx_string* @astnode_get_type({ i64, i8* }* %2053)
  %2055 = alloca %nyx_string*
  store %nyx_string* %2054, %nyx_string** %2055
  %2056 = load { i64, i8* }*, { i64, i8* }** %2050
  %2057 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %2056)
  %2058 = alloca { i64, i8* }*
  store { i64, i8* }* %2057, { i64, i8* }** %2058
  %2059 = getelementptr %Environment, %Environment* %env.ptr, i32 0, i32 0
  %2060 = load i8*, i8** %2059
  %2061 = alloca i8*
  store i8* %2060, i8** %2061
  %2062 = getelementptr %Environment, %Environment* %env.ptr, i32 0, i32 1
  %2063 = load { i64, i8* }*, { i64, i8* }** %2062
  %2064 = alloca { i64, i8* }*
  store { i64, i8* }* %2063, { i64, i8* }** %2064
  %2065 = getelementptr %Value, %Value* null, i32 1
  %2066 = ptrtoint %Value* %2065 to i64
  %2067 = call i8* @GC_malloc(i64 %2066)
  %2068 = bitcast i8* %2067 to %Value*
  %2069 = getelementptr [9 x i8], [9 x i8]* @.str200, i32 0, i32 0
  %2070 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str200.c, i8* %2069, i64 8)
  %2071 = getelementptr %Value, %Value* %2068, i32 0, i32 0
  store %nyx_string* %2070, %nyx_string** %2071
  %2072 = getelementptr %Value, %Value* %2068, i32 0, i32 1
  store i64 0, i64* %2072
  %2073 = getelementptr %Value, %Value* %2068, i32 0, i32 2
  store double 0.0, double* %2073
  %2074 = getelementptr %Value, %Value* %2068, i32 0, i32 3
  store i1 0, i1* %2074
  %2075 = getelementptr [1 x i8], [1 x i8]* @.str201, i32 0, i32 0
  %2076 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str201.c, i8* %2075, i64 0)
  %2077 = getelementptr %Value, %Value* %2068, i32 0, i32 4
  store %nyx_string* %2076, %nyx_string** %2077
  %2078 = load { i64, i8* }*, { i64, i8* }** %2052
  %2079 = getelementptr %Value, %Value* %2068, i32 0, i32 5
  store { i64, i8* }* %2078, { i64, i8* }** %2079
  %2080 = load { i64, i8* }*, { i64, i8* }** %2043
  %2081 = getelementptr %Value, %Value* %2068, i32 0, i32 6
  store { i64, i8* }* %2080, { i64, i8* }** %2081
  %2082 = load %nyx_string*, %nyx_string** %2055
  %2083 = getelementptr %Value, %Value* %2068, i32 0, i32 7
  store %nyx_string* %2082, %nyx_string** %2083
  %2084 = load { i64, i8* }*, { i64, i8* }** %2058
  %2085 = getelementptr %Value, %Value* %2068, i32 0, i32 8
  store { i64, i8* }* %2084, { i64, i8* }** %2085
  %2086 = load i8*, i8** %2061
  %2087 = getelementptr %Value, %Value* %2068, i32 0, i32 9
  store i8* %2086, i8** %2087
  %2088 = load { i64, i8* }*, { i64, i8* }** %2064
  %2089 = getelementptr %Value, %Value* %2068, i32 0, i32 10
  store { i64, i8* }* %2088, { i64, i8* }** %2089
  %2090 = load %Value, %Value* %2068
  %2091 = alloca %Value
  store %Value %2090, %Value* %2091
  %2092 = load %Environment, %Environment* %env.ptr
  %2093 = load %nyx_string*, %nyx_string** %2039
  %2094 = load %Value, %Value* %2091
  %2095 = call i64 @env_define(%Environment %2092, %nyx_string* %2093, %Value %2094)
  %2096 = call %Value @make_nil()
  ret %Value %2096
}

define internal %Value @unwrap_return_value(
%Value %return_val.param) {
  %return_val.ptr = alloca %Value
  store %Value %return_val.param, %Value* %return_val.ptr
  %2097 = getelementptr %Value, %Value* %return_val.ptr, i32 0, i32 5
  %2098 = load { i64, i8* }*, { i64, i8* }** %2097
  %2099 = alloca { i64, i8* }*
  store { i64, i8* }* %2098, { i64, i8* }** %2099
  %2100 = load { i64, i8* }*, { i64, i8* }** %2099
  %2101 = call i64 @nyx_array_get({ i64, i8* }* %2100, i64 0)
  %2102 = inttoptr i64 %2101 to %Value*
  %2103 = load %Value, %Value* %2102
  %2104 = alloca %Value
  store %Value %2103, %Value* %2104
  %2105 = load %Value, %Value* %2104
  ret %Value %2105
}

define internal %Value @eval_method_call(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %2106 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %2107 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %2106)
  %2108 = alloca { i64, i8* }*
  store { i64, i8* }* %2107, { i64, i8* }** %2108
  %2109 = load { i64, i8* }*, { i64, i8* }** %2108
  %2110 = call i64 @nyx_array_get({ i64, i8* }* %2109, i64 0)
  %2111 = inttoptr i64 %2110 to { i64, i8* }*
  %2112 = alloca { i64, i8* }*
  store { i64, i8* }* %2111, { i64, i8* }** %2112
  %2113 = load { i64, i8* }*, { i64, i8* }** %2108
  %2114 = call i64 @nyx_array_get_checked({ i64, i8* }* %2113, i64 1, i64 2)
  %2115 = inttoptr i64 %2114 to %nyx_string*
  %2116 = alloca %nyx_string*
  store %nyx_string* %2115, %nyx_string** %2116
  %2117 = load { i64, i8* }*, { i64, i8* }** %2108
  %2118 = call i64 @nyx_array_get({ i64, i8* }* %2117, i64 2)
  %2119 = inttoptr i64 %2118 to { i64, i8* }*
  %2120 = alloca { i64, i8* }*
  store { i64, i8* }* %2119, { i64, i8* }** %2120
  %2121 = load { i64, i8* }*, { i64, i8* }** %2112
  %2122 = load %Environment, %Environment* %env.ptr
  %2123 = call %Value @eval_expr({ i64, i8* }* %2121, %Environment %2122)
  %2124 = alloca %Value
  store %Value %2123, %Value* %2124
  %2125 = getelementptr %Value, %Value* %2124, i32 0, i32 0
  %2126 = load %nyx_string*, %nyx_string** %2125
  %2127 = getelementptr [6 x i8], [6 x i8]* @.str202, i32 0, i32 0
  %2128 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str202.c, i8* %2127, i64 5)
  %2129 = call i1 @nyx_string_equals(%nyx_string* %2126, %nyx_string* %2128)
  br i1 %2129, label %then394, label %else395
then394:
  %2130 = load %Value, %Value* %2124
  ret %Value %2130
else395:
  br label %merge396
merge396:
  %2131 = getelementptr %Value, %Value* %2124, i32 0, i32 0
  %2132 = load %nyx_string*, %nyx_string** %2131
  %2133 = getelementptr [7 x i8], [7 x i8]* @.str203, i32 0, i32 0
  %2134 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str203.c, i8* %2133, i64 6)
  %2135 = call i1 @nyx_string_equals(%nyx_string* %2132, %nyx_string* %2134)
  br i1 %2135, label %then397, label %else398
then397:
  %2136 = getelementptr %Value, %Value* %2124, i32 0, i32 4
  %2137 = load %nyx_string*, %nyx_string** %2136
  %2138 = alloca %nyx_string*
  store %nyx_string* %2137, %nyx_string** %2138
  %2139 = load %nyx_string*, %nyx_string** %2116
  %2140 = getelementptr [7 x i8], [7 x i8]* @.str204, i32 0, i32 0
  %2141 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str204.c, i8* %2140, i64 6)
  %2142 = call i1 @nyx_string_equals(%nyx_string* %2139, %nyx_string* %2141)
  br i1 %2142, label %then400, label %else401
then400:
  %2143 = load %nyx_string*, %nyx_string** %2138
  %2144 = call i64 @nyx_string_byte_length(%nyx_string* %2143)
  %2145 = call %Value @make_int(i64 %2144)
  ret %Value %2145
else401:
  br label %merge402
merge402:
  %2146 = load %nyx_string*, %nyx_string** %2116
  %2147 = getelementptr [12 x i8], [12 x i8]* @.str205, i32 0, i32 0
  %2148 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str205.c, i8* %2147, i64 11)
  %2149 = call i1 @nyx_string_equals(%nyx_string* %2146, %nyx_string* %2148)
  br i1 %2149, label %then403, label %else404
then403:
  %2150 = load %nyx_string*, %nyx_string** %2138
  %2151 = call i64 @nyx_string_length_utf8(%nyx_string* %2150)
  %2152 = call %Value @make_int(i64 %2151)
  ret %Value %2152
else404:
  br label %merge405
merge405:
  %2153 = load %nyx_string*, %nyx_string** %2116
  %2154 = getelementptr [12 x i8], [12 x i8]* @.str206, i32 0, i32 0
  %2155 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str206.c, i8* %2154, i64 11)
  %2156 = call i1 @nyx_string_equals(%nyx_string* %2153, %nyx_string* %2155)
  br i1 %2156, label %then406, label %else407
then406:
  %2157 = load %nyx_string*, %nyx_string** %2138
  %2158 = call i64 @nyx_string_byte_length(%nyx_string* %2157)
  %2159 = call %Value @make_int(i64 %2158)
  ret %Value %2159
else407:
  br label %merge408
merge408:
  %2160 = load %nyx_string*, %nyx_string** %2116
  %2161 = getelementptr [8 x i8], [8 x i8]* @.str207, i32 0, i32 0
  %2162 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str207.c, i8* %2161, i64 7)
  %2163 = call i1 @nyx_string_equals(%nyx_string* %2160, %nyx_string* %2162)
  br i1 %2163, label %then409, label %else410
then409:
  %2164 = load %nyx_string*, %nyx_string** %2138
  %2165 = call %nyx_string* @nyx_string_to_upper(%nyx_string* %2164)
  %2166 = call %Value @make_string(%nyx_string* %2165)
  ret %Value %2166
else410:
  br label %merge411
merge411:
  %2167 = load %nyx_string*, %nyx_string** %2116
  %2168 = getelementptr [8 x i8], [8 x i8]* @.str208, i32 0, i32 0
  %2169 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str208.c, i8* %2168, i64 7)
  %2170 = call i1 @nyx_string_equals(%nyx_string* %2167, %nyx_string* %2169)
  br i1 %2170, label %then412, label %else413
then412:
  %2171 = load %nyx_string*, %nyx_string** %2138
  %2172 = call %nyx_string* @nyx_string_to_lower(%nyx_string* %2171)
  %2173 = call %Value @make_string(%nyx_string* %2172)
  ret %Value %2173
else413:
  br label %merge414
merge414:
  %2174 = load %nyx_string*, %nyx_string** %2116
  %2175 = getelementptr [5 x i8], [5 x i8]* @.str209, i32 0, i32 0
  %2176 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str209.c, i8* %2175, i64 4)
  %2177 = call i1 @nyx_string_equals(%nyx_string* %2174, %nyx_string* %2176)
  br i1 %2177, label %then415, label %else416
then415:
  %2178 = load %nyx_string*, %nyx_string** %2138
  %2179 = call %nyx_string* @nyx_string_trim(%nyx_string* %2178)
  %2180 = call %Value @make_string(%nyx_string* %2179)
  ret %Value %2180
else416:
  br label %merge417
merge417:
  %2181 = load %nyx_string*, %nyx_string** %2116
  %2182 = getelementptr [8 x i8], [8 x i8]* @.str210, i32 0, i32 0
  %2183 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str210.c, i8* %2182, i64 7)
  %2184 = call i1 @nyx_string_equals(%nyx_string* %2181, %nyx_string* %2183)
  br i1 %2184, label %then418, label %else419
then418:
  %2185 = load { i64, i8* }*, { i64, i8* }** %2120
  %2186 = call i64 @nyx_array_get({ i64, i8* }* %2185, i64 0)
  %2187 = inttoptr i64 %2186 to { i64, i8* }*
  %2188 = load %Environment, %Environment* %env.ptr
  %2189 = call %Value @eval_expr({ i64, i8* }* %2187, %Environment %2188)
  %2190 = alloca %Value
  store %Value %2189, %Value* %2190
  %2191 = getelementptr %Value, %Value* %2190, i32 0, i32 0
  %2192 = load %nyx_string*, %nyx_string** %2191
  %2193 = getelementptr [6 x i8], [6 x i8]* @.str211, i32 0, i32 0
  %2194 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str211.c, i8* %2193, i64 5)
  %2195 = call i1 @nyx_string_equals(%nyx_string* %2192, %nyx_string* %2194)
  br i1 %2195, label %then421, label %else422
then421:
  %2196 = load %Value, %Value* %2190
  ret %Value %2196
else422:
  br label %merge423
merge423:
  %2197 = load %nyx_string*, %nyx_string** %2138
  %2198 = getelementptr %Value, %Value* %2190, i32 0, i32 4
  %2199 = load %nyx_string*, %nyx_string** %2198
  %2200 = call i64 @nyx_string_index_of(%nyx_string* %2197, %nyx_string* %2199)
  %2201 = call %Value @make_int(i64 %2200)
  ret %Value %2201
else419:
  br label %merge420
merge420:
  %2202 = load %nyx_string*, %nyx_string** %2116
  %2203 = getelementptr [10 x i8], [10 x i8]* @.str212, i32 0, i32 0
  %2204 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str212.c, i8* %2203, i64 9)
  %2205 = call i1 @nyx_string_equals(%nyx_string* %2202, %nyx_string* %2204)
  br i1 %2205, label %then424, label %else425
then424:
  %2206 = load { i64, i8* }*, { i64, i8* }** %2120
  %2207 = call i64 @nyx_array_get({ i64, i8* }* %2206, i64 0)
  %2208 = inttoptr i64 %2207 to { i64, i8* }*
  %2209 = load %Environment, %Environment* %env.ptr
  %2210 = call %Value @eval_expr({ i64, i8* }* %2208, %Environment %2209)
  %2211 = alloca %Value
  store %Value %2210, %Value* %2211
  %2212 = getelementptr %Value, %Value* %2211, i32 0, i32 0
  %2213 = load %nyx_string*, %nyx_string** %2212
  %2214 = getelementptr [6 x i8], [6 x i8]* @.str213, i32 0, i32 0
  %2215 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str213.c, i8* %2214, i64 5)
  %2216 = call i1 @nyx_string_equals(%nyx_string* %2213, %nyx_string* %2215)
  br i1 %2216, label %then427, label %else428
then427:
  %2217 = load %Value, %Value* %2211
  ret %Value %2217
else428:
  br label %merge429
merge429:
  %2218 = load { i64, i8* }*, { i64, i8* }** %2120
  %2219 = call i64 @nyx_array_get({ i64, i8* }* %2218, i64 1)
  %2220 = inttoptr i64 %2219 to { i64, i8* }*
  %2221 = load %Environment, %Environment* %env.ptr
  %2222 = call %Value @eval_expr({ i64, i8* }* %2220, %Environment %2221)
  %2223 = alloca %Value
  store %Value %2222, %Value* %2223
  %2224 = getelementptr %Value, %Value* %2223, i32 0, i32 0
  %2225 = load %nyx_string*, %nyx_string** %2224
  %2226 = getelementptr [6 x i8], [6 x i8]* @.str214, i32 0, i32 0
  %2227 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str214.c, i8* %2226, i64 5)
  %2228 = call i1 @nyx_string_equals(%nyx_string* %2225, %nyx_string* %2227)
  br i1 %2228, label %then430, label %else431
then430:
  %2229 = load %Value, %Value* %2223
  ret %Value %2229
else431:
  br label %merge432
merge432:
  %2230 = load %nyx_string*, %nyx_string** %2138
  %2231 = getelementptr %Value, %Value* %2211, i32 0, i32 1
  %2232 = load i64, i64* %2231
  %2233 = getelementptr %Value, %Value* %2223, i32 0, i32 1
  %2234 = load i64, i64* %2233
  %2235 = call %nyx_string* @nyx_string_substring(%nyx_string* %2230, i64 %2232, i64 %2234)
  %2236 = call %Value @make_string(%nyx_string* %2235)
  ret %Value %2236
else425:
  br label %merge426
merge426:
  %2237 = load %nyx_string*, %nyx_string** %2116
  %2238 = getelementptr [7 x i8], [7 x i8]* @.str215, i32 0, i32 0
  %2239 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str215.c, i8* %2238, i64 6)
  %2240 = call i1 @nyx_string_equals(%nyx_string* %2237, %nyx_string* %2239)
  br i1 %2240, label %then433, label %else434
then433:
  %2241 = load { i64, i8* }*, { i64, i8* }** %2120
  %2242 = call i64 @nyx_array_get({ i64, i8* }* %2241, i64 0)
  %2243 = inttoptr i64 %2242 to { i64, i8* }*
  %2244 = load %Environment, %Environment* %env.ptr
  %2245 = call %Value @eval_expr({ i64, i8* }* %2243, %Environment %2244)
  %2246 = alloca %Value
  store %Value %2245, %Value* %2246
  %2247 = getelementptr %Value, %Value* %2246, i32 0, i32 0
  %2248 = load %nyx_string*, %nyx_string** %2247
  %2249 = getelementptr [6 x i8], [6 x i8]* @.str216, i32 0, i32 0
  %2250 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str216.c, i8* %2249, i64 5)
  %2251 = call i1 @nyx_string_equals(%nyx_string* %2248, %nyx_string* %2250)
  br i1 %2251, label %then436, label %else437
then436:
  %2252 = load %Value, %Value* %2246
  ret %Value %2252
else437:
  br label %merge438
merge438:
  %2253 = load %nyx_string*, %nyx_string** %2138
  %2254 = getelementptr %Value, %Value* %2246, i32 0, i32 1
  %2255 = load i64, i64* %2254
  %2256 = call i8 @nyx_string_char_at(%nyx_string* %2253, i64 %2255)
  %2257 = zext i8 %2256 to i64
  %2258 = trunc i64 %2257 to i8
  %2259 = alloca i8
  store i8 %2258, i8* %2259
  %2260 = load i8, i8* %2259
  %2261 = call %nyx_string* @nyx_string_from_char(i8 %2260)
  %2262 = call %Value @make_string(%nyx_string* %2261)
  ret %Value %2262
else434:
  br label %merge435
merge435:
  %2263 = load %nyx_string*, %nyx_string** %2116
  %2264 = getelementptr [11 x i8], [11 x i8]* @.str217, i32 0, i32 0
  %2265 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str217.c, i8* %2264, i64 10)
  %2266 = call i1 @nyx_string_equals(%nyx_string* %2263, %nyx_string* %2265)
  br i1 %2266, label %then439, label %else440
then439:
  %2267 = load { i64, i8* }*, { i64, i8* }** %2120
  %2268 = call i64 @nyx_array_get({ i64, i8* }* %2267, i64 0)
  %2269 = inttoptr i64 %2268 to { i64, i8* }*
  %2270 = load %Environment, %Environment* %env.ptr
  %2271 = call %Value @eval_expr({ i64, i8* }* %2269, %Environment %2270)
  %2272 = alloca %Value
  store %Value %2271, %Value* %2272
  %2273 = getelementptr %Value, %Value* %2272, i32 0, i32 0
  %2274 = load %nyx_string*, %nyx_string** %2273
  %2275 = getelementptr [6 x i8], [6 x i8]* @.str218, i32 0, i32 0
  %2276 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str218.c, i8* %2275, i64 5)
  %2277 = call i1 @nyx_string_equals(%nyx_string* %2274, %nyx_string* %2276)
  br i1 %2277, label %then442, label %else443
then442:
  %2278 = load %Value, %Value* %2272
  ret %Value %2278
else443:
  br label %merge444
merge444:
  %2279 = load %nyx_string*, %nyx_string** %2138
  %2280 = getelementptr %Value, %Value* %2272, i32 0, i32 4
  %2281 = load %nyx_string*, %nyx_string** %2280
  %2282 = call i1 @nyx_string_starts_with(%nyx_string* %2279, %nyx_string* %2281)
  %2283 = call %Value @make_bool(i1 %2282)
  ret %Value %2283
else440:
  br label %merge441
merge441:
  %2284 = load %nyx_string*, %nyx_string** %2116
  %2285 = getelementptr [9 x i8], [9 x i8]* @.str219, i32 0, i32 0
  %2286 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str219.c, i8* %2285, i64 8)
  %2287 = call i1 @nyx_string_equals(%nyx_string* %2284, %nyx_string* %2286)
  br i1 %2287, label %then445, label %else446
then445:
  %2288 = load { i64, i8* }*, { i64, i8* }** %2120
  %2289 = call i64 @nyx_array_get({ i64, i8* }* %2288, i64 0)
  %2290 = inttoptr i64 %2289 to { i64, i8* }*
  %2291 = load %Environment, %Environment* %env.ptr
  %2292 = call %Value @eval_expr({ i64, i8* }* %2290, %Environment %2291)
  %2293 = alloca %Value
  store %Value %2292, %Value* %2293
  %2294 = getelementptr %Value, %Value* %2293, i32 0, i32 0
  %2295 = load %nyx_string*, %nyx_string** %2294
  %2296 = getelementptr [6 x i8], [6 x i8]* @.str220, i32 0, i32 0
  %2297 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str220.c, i8* %2296, i64 5)
  %2298 = call i1 @nyx_string_equals(%nyx_string* %2295, %nyx_string* %2297)
  br i1 %2298, label %then448, label %else449
then448:
  %2299 = load %Value, %Value* %2293
  ret %Value %2299
else449:
  br label %merge450
merge450:
  %2300 = load %nyx_string*, %nyx_string** %2138
  %2301 = getelementptr %Value, %Value* %2293, i32 0, i32 4
  %2302 = load %nyx_string*, %nyx_string** %2301
  %2303 = call i1 @nyx_string_ends_with(%nyx_string* %2300, %nyx_string* %2302)
  %2304 = call %Value @make_bool(i1 %2303)
  ret %Value %2304
else446:
  br label %merge447
merge447:
  %2305 = load %nyx_string*, %nyx_string** %2116
  %2306 = getelementptr [8 x i8], [8 x i8]* @.str221, i32 0, i32 0
  %2307 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str221.c, i8* %2306, i64 7)
  %2308 = call i1 @nyx_string_equals(%nyx_string* %2305, %nyx_string* %2307)
  br i1 %2308, label %then451, label %else452
then451:
  %2309 = load { i64, i8* }*, { i64, i8* }** %2120
  %2310 = call i64 @nyx_array_get({ i64, i8* }* %2309, i64 0)
  %2311 = inttoptr i64 %2310 to { i64, i8* }*
  %2312 = load %Environment, %Environment* %env.ptr
  %2313 = call %Value @eval_expr({ i64, i8* }* %2311, %Environment %2312)
  %2314 = alloca %Value
  store %Value %2313, %Value* %2314
  %2315 = getelementptr %Value, %Value* %2314, i32 0, i32 0
  %2316 = load %nyx_string*, %nyx_string** %2315
  %2317 = getelementptr [6 x i8], [6 x i8]* @.str222, i32 0, i32 0
  %2318 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str222.c, i8* %2317, i64 5)
  %2319 = call i1 @nyx_string_equals(%nyx_string* %2316, %nyx_string* %2318)
  br i1 %2319, label %then454, label %else455
then454:
  %2320 = load %Value, %Value* %2314
  ret %Value %2320
else455:
  br label %merge456
merge456:
  %2321 = load { i64, i8* }*, { i64, i8* }** %2120
  %2322 = call i64 @nyx_array_get({ i64, i8* }* %2321, i64 1)
  %2323 = inttoptr i64 %2322 to { i64, i8* }*
  %2324 = load %Environment, %Environment* %env.ptr
  %2325 = call %Value @eval_expr({ i64, i8* }* %2323, %Environment %2324)
  %2326 = alloca %Value
  store %Value %2325, %Value* %2326
  %2327 = getelementptr %Value, %Value* %2326, i32 0, i32 0
  %2328 = load %nyx_string*, %nyx_string** %2327
  %2329 = getelementptr [6 x i8], [6 x i8]* @.str223, i32 0, i32 0
  %2330 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str223.c, i8* %2329, i64 5)
  %2331 = call i1 @nyx_string_equals(%nyx_string* %2328, %nyx_string* %2330)
  br i1 %2331, label %then457, label %else458
then457:
  %2332 = load %Value, %Value* %2326
  ret %Value %2332
else458:
  br label %merge459
merge459:
  %2333 = load %nyx_string*, %nyx_string** %2138
  %2334 = getelementptr %Value, %Value* %2314, i32 0, i32 4
  %2335 = load %nyx_string*, %nyx_string** %2334
  %2336 = getelementptr %Value, %Value* %2326, i32 0, i32 4
  %2337 = load %nyx_string*, %nyx_string** %2336
  %2338 = call %nyx_string* @nyx_string_replace(%nyx_string* %2333, %nyx_string* %2335, %nyx_string* %2337)
  %2339 = call %Value @make_string(%nyx_string* %2338)
  ret %Value %2339
else452:
  br label %merge453
merge453:
  br label %merge399
else398:
  br label %merge399
merge399:
  %2340 = getelementptr %Value, %Value* %2124, i32 0, i32 0
  %2341 = load %nyx_string*, %nyx_string** %2340
  %2342 = getelementptr [6 x i8], [6 x i8]* @.str224, i32 0, i32 0
  %2343 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str224.c, i8* %2342, i64 5)
  %2344 = call i1 @nyx_string_equals(%nyx_string* %2341, %nyx_string* %2343)
  br i1 %2344, label %then460, label %else461
then460:
  %2345 = getelementptr %Value, %Value* %2124, i32 0, i32 5
  %2346 = load { i64, i8* }*, { i64, i8* }** %2345
  %2347 = alloca { i64, i8* }*
  store { i64, i8* }* %2346, { i64, i8* }** %2347
  %2348 = load %nyx_string*, %nyx_string** %2116
  %2349 = getelementptr [7 x i8], [7 x i8]* @.str225, i32 0, i32 0
  %2350 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str225.c, i8* %2349, i64 6)
  %2351 = call i1 @nyx_string_equals(%nyx_string* %2348, %nyx_string* %2350)
  br i1 %2351, label %then463, label %else464
then463:
  %2352 = load { i64, i8* }*, { i64, i8* }** %2347
  %2353 = call i64 @nyx_array_length({ i64, i8* }* %2352)
  %2354 = call %Value @make_int(i64 %2353)
  ret %Value %2354
else464:
  br label %merge465
merge465:
  %2355 = load %nyx_string*, %nyx_string** %2116
  %2356 = getelementptr [5 x i8], [5 x i8]* @.str226, i32 0, i32 0
  %2357 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str226.c, i8* %2356, i64 4)
  %2358 = call i1 @nyx_string_equals(%nyx_string* %2355, %nyx_string* %2357)
  br i1 %2358, label %then466, label %else467
then466:
  %2359 = load { i64, i8* }*, { i64, i8* }** %2120
  %2360 = call i64 @nyx_array_get({ i64, i8* }* %2359, i64 0)
  %2361 = inttoptr i64 %2360 to { i64, i8* }*
  %2362 = load %Environment, %Environment* %env.ptr
  %2363 = call %Value @eval_expr({ i64, i8* }* %2361, %Environment %2362)
  %2364 = alloca %Value
  store %Value %2363, %Value* %2364
  %2365 = getelementptr %Value, %Value* %2364, i32 0, i32 0
  %2366 = load %nyx_string*, %nyx_string** %2365
  %2367 = getelementptr [6 x i8], [6 x i8]* @.str227, i32 0, i32 0
  %2368 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str227.c, i8* %2367, i64 5)
  %2369 = call i1 @nyx_string_equals(%nyx_string* %2366, %nyx_string* %2368)
  br i1 %2369, label %then469, label %else470
then469:
  %2370 = load %Value, %Value* %2364
  ret %Value %2370
else470:
  br label %merge471
merge471:
  %2371 = load { i64, i8* }*, { i64, i8* }** %2347
  %2372 = load %Value, %Value* %2364
  %2373 = getelementptr %Value, %Value* null, i32 1
  %2374 = ptrtoint %Value* %2373 to i64
  %2375 = call i8* @GC_malloc(i64 %2374)
  %2376 = bitcast i8* %2375 to %Value*
  store %Value %2372, %Value* %2376
  %2377 = ptrtoint %Value* %2376 to i64
  call void @nyx_array_push({ i64, i8* }* %2371, i64 %2377)
  %2378 = call %Value @make_nil()
  ret %Value %2378
else467:
  br label %merge468
merge468:
  %2379 = load %nyx_string*, %nyx_string** %2116
  %2380 = getelementptr [4 x i8], [4 x i8]* @.str228, i32 0, i32 0
  %2381 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str228.c, i8* %2380, i64 3)
  %2382 = call i1 @nyx_string_equals(%nyx_string* %2379, %nyx_string* %2381)
  br i1 %2382, label %then472, label %else473
then472:
  %2383 = load { i64, i8* }*, { i64, i8* }** %2347
  %2384 = call i64 @nyx_array_pop({ i64, i8* }* %2383)
  %2385 = call %Value @make_nil()
  ret %Value %2385
else473:
  br label %merge474
merge474:
  br label %merge462
else461:
  br label %merge462
merge462:
  %2386 = getelementptr [8 x i8], [8 x i8]* @.str229, i32 0, i32 0
  %2387 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str229.c, i8* %2386, i64 7)
  %2388 = getelementptr [39 x i8], [39 x i8]* @.str230, i32 0, i32 0
  %2389 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str230.c, i8* %2388, i64 38)
  %2390 = load %nyx_string*, %nyx_string** %2116
  %2391 = call %nyx_string* @nyx_string_concat(%nyx_string* %2389, %nyx_string* %2390)
  %2392 = getelementptr [17 x i8], [17 x i8]* @.str231, i32 0, i32 0
  %2393 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str231.c, i8* %2392, i64 16)
  %2394 = call %nyx_string* @nyx_string_concat(%nyx_string* %2391, %nyx_string* %2393)
  %2395 = getelementptr %Value, %Value* %2124, i32 0, i32 0
  %2396 = load %nyx_string*, %nyx_string** %2395
  %2397 = call %nyx_string* @nyx_string_concat(%nyx_string* %2394, %nyx_string* %2396)
  %2398 = getelementptr [42 x i8], [42 x i8]* @.str232, i32 0, i32 0
  %2399 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str232.c, i8* %2398, i64 41)
  %2400 = load %nyx_string*, %nyx_string** %2116
  %2401 = call %nyx_string* @nyx_string_concat(%nyx_string* %2399, %nyx_string* %2400)
  %2402 = getelementptr [11 x i8], [11 x i8]* @.str233, i32 0, i32 0
  %2403 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str233.c, i8* %2402, i64 10)
  %2404 = call %nyx_string* @nyx_string_concat(%nyx_string* %2401, %nyx_string* %2403)
  %2405 = getelementptr %Value, %Value* %2124, i32 0, i32 0
  %2406 = load %nyx_string*, %nyx_string** %2405
  %2407 = call %nyx_string* @nyx_string_concat(%nyx_string* %2404, %nyx_string* %2406)
  %2408 = call i64 @interp_err(%nyx_string* %2387, %nyx_string* %2397, %nyx_string* %2407)
  %2409 = getelementptr [9 x i8], [9 x i8]* @.str234, i32 0, i32 0
  %2410 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str234.c, i8* %2409, i64 8)
  %2411 = call i8* @nyx_string_to_cstr(%nyx_string* %2410)
  %2412 = call %nyx_string* @nyx_getenv(i8* %2411)
  %2413 = alloca %nyx_string*
  store %nyx_string* %2412, %nyx_string** %2413
  %2414 = load %nyx_string*, %nyx_string** %2413
  %2415 = getelementptr [3 x i8], [3 x i8]* @.str235, i32 0, i32 0
  %2416 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str235.c, i8* %2415, i64 2)
  %2417 = call i1 @nyx_string_equals(%nyx_string* %2414, %nyx_string* %2416)
  br i1 %2417, label %then475, label %else476
then475:
  %2418 = getelementptr [85 x i8], [85 x i8]* @.str236, i32 0, i32 0
  %2419 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str236.c, i8* %2418, i64 84)
  %2420 = call i8* @nyx_string_to_cstr(%nyx_string* %2419)
  call void @nyx_print_string(i8* %2420)
  %2421 = getelementptr [85 x i8], [85 x i8]* @.str237, i32 0, i32 0
  %2422 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str237.c, i8* %2421, i64 84)
  %2423 = call i8* @nyx_string_to_cstr(%nyx_string* %2422)
  call void @nyx_print_string(i8* %2423)
  br label %merge477
else476:
  %2424 = getelementptr [79 x i8], [79 x i8]* @.str238, i32 0, i32 0
  %2425 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str238.c, i8* %2424, i64 78)
  %2426 = call i8* @nyx_string_to_cstr(%nyx_string* %2425)
  call void @nyx_print_string(i8* %2426)
  %2427 = getelementptr [84 x i8], [84 x i8]* @.str239, i32 0, i32 0
  %2428 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str239.c, i8* %2427, i64 83)
  %2429 = call i8* @nyx_string_to_cstr(%nyx_string* %2428)
  call void @nyx_print_string(i8* %2429)
  br label %merge477
merge477:
  %2430 = call %Value @make_error()
  ret %Value %2430
}

define internal %Value @eval_call(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %2431 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %2432 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %2431)
  %2433 = alloca { i64, i8* }*
  store { i64, i8* }* %2432, { i64, i8* }** %2433
  %2434 = load { i64, i8* }*, { i64, i8* }** %2433
  %2435 = call i64 @nyx_array_get({ i64, i8* }* %2434, i64 0)
  %2436 = inttoptr i64 %2435 to { i64, i8* }*
  %2437 = alloca { i64, i8* }*
  store { i64, i8* }* %2436, { i64, i8* }** %2437
  %2438 = load { i64, i8* }*, { i64, i8* }** %2433
  %2439 = call i64 @nyx_array_get({ i64, i8* }* %2438, i64 1)
  %2440 = inttoptr i64 %2439 to { i64, i8* }*
  %2441 = alloca { i64, i8* }*
  store { i64, i8* }* %2440, { i64, i8* }** %2441
  %2442 = load { i64, i8* }*, { i64, i8* }** %2437
  %2443 = call i64 @nyx_array_get({ i64, i8* }* %2442, i64 1)
  %2444 = inttoptr i64 %2443 to { i64, i8* }*
  %2445 = alloca { i64, i8* }*
  store { i64, i8* }* %2444, { i64, i8* }** %2445
  %2446 = load { i64, i8* }*, { i64, i8* }** %2445
  %2447 = call i64 @nyx_array_get_checked({ i64, i8* }* %2446, i64 0, i64 2)
  %2448 = inttoptr i64 %2447 to %nyx_string*
  %2449 = alloca %nyx_string*
  store %nyx_string* %2448, %nyx_string** %2449
  %2450 = load %nyx_string*, %nyx_string** %2449
  %2451 = getelementptr [6 x i8], [6 x i8]* @.str240, i32 0, i32 0
  %2452 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str240.c, i8* %2451, i64 5)
  %2453 = call i1 @nyx_string_equals(%nyx_string* %2450, %nyx_string* %2452)
  br i1 %2453, label %then478, label %else479
then478:
  %2454 = load { i64, i8* }*, { i64, i8* }** %2441
  %2455 = load %Environment, %Environment* %env.ptr
  %2456 = call %Value @eval_builtin_print({ i64, i8* }* %2454, %Environment %2455)
  ret %Value %2456
else479:
  br label %merge480
merge480:
  %2457 = load %nyx_string*, %nyx_string** %2449
  %2458 = getelementptr [10 x i8], [10 x i8]* @.str241, i32 0, i32 0
  %2459 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str241.c, i8* %2458, i64 9)
  %2460 = call i1 @nyx_string_equals(%nyx_string* %2457, %nyx_string* %2459)
  br i1 %2460, label %then481, label %else482
then481:
  %2461 = load { i64, i8* }*, { i64, i8* }** %2441
  %2462 = load %Environment, %Environment* %env.ptr
  %2463 = call %Value @eval_builtin_read_file({ i64, i8* }* %2461, %Environment %2462)
  ret %Value %2463
else482:
  br label %merge483
merge483:
  %2464 = load %nyx_string*, %nyx_string** %2449
  %2465 = getelementptr [14 x i8], [14 x i8]* @.str242, i32 0, i32 0
  %2466 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str242.c, i8* %2465, i64 13)
  %2467 = call i1 @nyx_string_equals(%nyx_string* %2464, %nyx_string* %2466)
  br i1 %2467, label %then484, label %else485
then484:
  %2468 = getelementptr [8 x i8], [8 x i8]* @.str243, i32 0, i32 0
  %2469 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str243.c, i8* %2468, i64 7)
  %2470 = getelementptr [122 x i8], [122 x i8]* @.str244, i32 0, i32 0
  %2471 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str244.c, i8* %2470, i64 121)
  %2472 = getelementptr [134 x i8], [134 x i8]* @.str245, i32 0, i32 0
  %2473 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str245.c, i8* %2472, i64 133)
  %2474 = call i64 @interp_err(%nyx_string* %2469, %nyx_string* %2471, %nyx_string* %2473)
  %2475 = call %Value @make_nil()
  ret %Value %2475
else485:
  br label %merge486
merge486:
  %2476 = load %nyx_string*, %nyx_string** %2449
  %2477 = getelementptr [10 x i8], [10 x i8]* @.str246, i32 0, i32 0
  %2478 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str246.c, i8* %2477, i64 9)
  %2479 = call i1 @nyx_string_equals(%nyx_string* %2476, %nyx_string* %2478)
  br i1 %2479, label %then487, label %else488
then487:
  %2480 = load { i64, i8* }*, { i64, i8* }** %2441
  %2481 = load %Environment, %Environment* %env.ptr
  %2482 = call %Value @eval_builtin_read_line({ i64, i8* }* %2480, %Environment %2481)
  ret %Value %2482
else488:
  br label %merge489
merge489:
  %2483 = load %nyx_string*, %nyx_string** %2449
  %2484 = getelementptr [17 x i8], [17 x i8]* @.str247, i32 0, i32 0
  %2485 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str247.c, i8* %2484, i64 16)
  %2486 = call i1 @nyx_string_equals(%nyx_string* %2483, %nyx_string* %2485)
  br i1 %2486, label %then490, label %else491
then490:
  %2487 = load { i64, i8* }*, { i64, i8* }** %2441
  %2488 = load %Environment, %Environment* %env.ptr
  %2489 = call %Value @eval_builtin_print_no_newline({ i64, i8* }* %2487, %Environment %2488)
  ret %Value %2489
else491:
  br label %merge492
merge492:
  %2490 = load %Environment, %Environment* %env.ptr
  %2491 = load %nyx_string*, %nyx_string** %2449
  %2492 = call i1 @env_has(%Environment %2490, %nyx_string* %2491)
  %2493 = xor i1 %2492, true
  br i1 %2493, label %then493, label %else494
then493:
  %2494 = getelementptr [8 x i8], [8 x i8]* @.str248, i32 0, i32 0
  %2495 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str248.c, i8* %2494, i64 7)
  %2496 = getelementptr [23 x i8], [23 x i8]* @.str249, i32 0, i32 0
  %2497 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str249.c, i8* %2496, i64 22)
  %2498 = load %nyx_string*, %nyx_string** %2449
  %2499 = call %nyx_string* @nyx_string_concat(%nyx_string* %2497, %nyx_string* %2498)
  %2500 = getelementptr [21 x i8], [21 x i8]* @.str250, i32 0, i32 0
  %2501 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str250.c, i8* %2500, i64 20)
  %2502 = load %nyx_string*, %nyx_string** %2449
  %2503 = call %nyx_string* @nyx_string_concat(%nyx_string* %2501, %nyx_string* %2502)
  %2504 = call i64 @interp_err(%nyx_string* %2495, %nyx_string* %2499, %nyx_string* %2503)
  %2505 = call %Value @make_error()
  ret %Value %2505
else494:
  br label %merge495
merge495:
  %2506 = load %Environment, %Environment* %env.ptr
  %2507 = load %nyx_string*, %nyx_string** %2449
  %2508 = call %Value @env_get(%Environment %2506, %nyx_string* %2507)
  %2509 = alloca %Value
  store %Value %2508, %Value* %2509
  %2510 = getelementptr %Value, %Value* %2509, i32 0, i32 0
  %2511 = load %nyx_string*, %nyx_string** %2510
  %2512 = getelementptr [9 x i8], [9 x i8]* @.str251, i32 0, i32 0
  %2513 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str251.c, i8* %2512, i64 8)
  %2514 = call i1 @nyx_string_equals(%nyx_string* %2511, %nyx_string* %2513)
  %2515 = xor i1 %2514, true
  br i1 %2515, label %then496, label %else497
then496:
  %2516 = getelementptr [8 x i8], [8 x i8]* @.str252, i32 0, i32 0
  %2517 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str252.c, i8* %2516, i64 7)
  %2518 = getelementptr [2 x i8], [2 x i8]* @.str253, i32 0, i32 0
  %2519 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str253.c, i8* %2518, i64 1)
  %2520 = load %nyx_string*, %nyx_string** %2449
  %2521 = call %nyx_string* @nyx_string_concat(%nyx_string* %2519, %nyx_string* %2520)
  %2522 = getelementptr [21 x i8], [21 x i8]* @.str254, i32 0, i32 0
  %2523 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str254.c, i8* %2522, i64 20)
  %2524 = call %nyx_string* @nyx_string_concat(%nyx_string* %2521, %nyx_string* %2523)
  %2525 = getelementptr [2 x i8], [2 x i8]* @.str255, i32 0, i32 0
  %2526 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str255.c, i8* %2525, i64 1)
  %2527 = load %nyx_string*, %nyx_string** %2449
  %2528 = call %nyx_string* @nyx_string_concat(%nyx_string* %2526, %nyx_string* %2527)
  %2529 = getelementptr [20 x i8], [20 x i8]* @.str256, i32 0, i32 0
  %2530 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str256.c, i8* %2529, i64 19)
  %2531 = call %nyx_string* @nyx_string_concat(%nyx_string* %2528, %nyx_string* %2530)
  %2532 = call i64 @interp_err(%nyx_string* %2517, %nyx_string* %2524, %nyx_string* %2531)
  %2533 = call %Value @make_error()
  ret %Value %2533
else497:
  br label %merge498
merge498:
  %2534 = load %Value, %Value* %2509
  %2535 = call { i64, i8* }* @get_func_params(%Value %2534)
  %2536 = alloca { i64, i8* }*
  store { i64, i8* }* %2535, { i64, i8* }** %2536
  %2537 = load %Value, %Value* %2509
  %2538 = call %nyx_string* @get_func_body_type(%Value %2537)
  %2539 = alloca %nyx_string*
  store %nyx_string* %2538, %nyx_string** %2539
  %2540 = load %Value, %Value* %2509
  %2541 = call { i64, i8* }* @get_func_body_data(%Value %2540)
  %2542 = alloca { i64, i8* }*
  store { i64, i8* }* %2541, { i64, i8* }** %2542
  %2543 = load %nyx_string*, %nyx_string** %2539
  %2544 = load { i64, i8* }*, { i64, i8* }** %2542
  %2545 = call { i64, i8* }* @make_astnode(%nyx_string* %2543, { i64, i8* }* %2544)
  %2546 = alloca { i64, i8* }*
  store { i64, i8* }* %2545, { i64, i8* }** %2546
  %2547 = load %Value, %Value* %2509
  %2548 = call i8* @get_func_env_bindings(%Value %2547)
  %2549 = alloca i8*
  store i8* %2548, i8** %2549
  %2550 = load %Value, %Value* %2509
  %2551 = call { i64, i8* }* @get_func_env_parent(%Value %2550)
  %2552 = alloca { i64, i8* }*
  store { i64, i8* }* %2551, { i64, i8* }** %2552
  %2553 = getelementptr %Environment, %Environment* null, i32 1
  %2554 = ptrtoint %Environment* %2553 to i64
  %2555 = call i8* @GC_malloc(i64 %2554)
  %2556 = bitcast i8* %2555 to %Environment*
  %2557 = load i8*, i8** %2549
  %2558 = getelementptr %Environment, %Environment* %2556, i32 0, i32 0
  store i8* %2557, i8** %2558
  %2559 = load { i64, i8* }*, { i64, i8* }** %2552
  %2560 = getelementptr %Environment, %Environment* %2556, i32 0, i32 1
  store { i64, i8* }* %2559, { i64, i8* }** %2560
  %2561 = load %Environment, %Environment* %2556
  %2562 = alloca %Environment
  store %Environment %2561, %Environment* %2562
  %2563 = load %Environment, %Environment* %2562
  %2564 = call %Environment @make_child_env(%Environment %2563)
  %2565 = alloca %Environment
  store %Environment %2564, %Environment* %2565
  %2566 = load { i64, i8* }*, { i64, i8* }** %2441
  %2567 = call i64 @nyx_array_length({ i64, i8* }* %2566)
  %2568 = load { i64, i8* }*, { i64, i8* }** %2536
  %2569 = call i64 @nyx_array_length({ i64, i8* }* %2568)
  %2570 = icmp ne i64 %2567, %2569
  br i1 %2570, label %then499, label %else500
then499:
  %2571 = getelementptr [8 x i8], [8 x i8]* @.str257, i32 0, i32 0
  %2572 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str257.c, i8* %2571, i64 7)
  %2573 = getelementptr [2 x i8], [2 x i8]* @.str258, i32 0, i32 0
  %2574 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str258.c, i8* %2573, i64 1)
  %2575 = load %nyx_string*, %nyx_string** %2449
  %2576 = call %nyx_string* @nyx_string_concat(%nyx_string* %2574, %nyx_string* %2575)
  %2577 = getelementptr [10 x i8], [10 x i8]* @.str259, i32 0, i32 0
  %2578 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str259.c, i8* %2577, i64 9)
  %2579 = call %nyx_string* @nyx_string_concat(%nyx_string* %2576, %nyx_string* %2578)
  %2580 = load { i64, i8* }*, { i64, i8* }** %2536
  %2581 = call i64 @nyx_array_length({ i64, i8* }* %2580)
  %2582 = call %nyx_string* @nyx_string_from_int(i64 %2581)
  %2583 = call %nyx_string* @nyx_string_concat(%nyx_string* %2579, %nyx_string* %2582)
  %2584 = getelementptr [25 x i8], [25 x i8]* @.str260, i32 0, i32 0
  %2585 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str260.c, i8* %2584, i64 24)
  %2586 = call %nyx_string* @nyx_string_concat(%nyx_string* %2583, %nyx_string* %2585)
  %2587 = load { i64, i8* }*, { i64, i8* }** %2441
  %2588 = call i64 @nyx_array_length({ i64, i8* }* %2587)
  %2589 = call %nyx_string* @nyx_string_from_int(i64 %2588)
  %2590 = call %nyx_string* @nyx_string_concat(%nyx_string* %2586, %nyx_string* %2589)
  %2591 = getelementptr [2 x i8], [2 x i8]* @.str261, i32 0, i32 0
  %2592 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str261.c, i8* %2591, i64 1)
  %2593 = load %nyx_string*, %nyx_string** %2449
  %2594 = call %nyx_string* @nyx_string_concat(%nyx_string* %2592, %nyx_string* %2593)
  %2595 = getelementptr [11 x i8], [11 x i8]* @.str262, i32 0, i32 0
  %2596 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str262.c, i8* %2595, i64 10)
  %2597 = call %nyx_string* @nyx_string_concat(%nyx_string* %2594, %nyx_string* %2596)
  %2598 = load { i64, i8* }*, { i64, i8* }** %2536
  %2599 = call i64 @nyx_array_length({ i64, i8* }* %2598)
  %2600 = call %nyx_string* @nyx_string_from_int(i64 %2599)
  %2601 = call %nyx_string* @nyx_string_concat(%nyx_string* %2597, %nyx_string* %2600)
  %2602 = getelementptr [19 x i8], [19 x i8]* @.str263, i32 0, i32 0
  %2603 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str263.c, i8* %2602, i64 18)
  %2604 = call %nyx_string* @nyx_string_concat(%nyx_string* %2601, %nyx_string* %2603)
  %2605 = load { i64, i8* }*, { i64, i8* }** %2441
  %2606 = call i64 @nyx_array_length({ i64, i8* }* %2605)
  %2607 = call %nyx_string* @nyx_string_from_int(i64 %2606)
  %2608 = call %nyx_string* @nyx_string_concat(%nyx_string* %2604, %nyx_string* %2607)
  %2609 = call i64 @interp_err(%nyx_string* %2572, %nyx_string* %2590, %nyx_string* %2608)
  %2610 = call %Value @make_error()
  ret %Value %2610
else500:
  br label %merge501
merge501:
  %2611 = alloca i64
  store i64 0, i64* %2611
  %2612 = getelementptr [6 x i8], [6 x i8]* @.str264, i32 0, i32 0
  %2613 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str264.c, i8* %2612, i64 5)
  %2614 = alloca %nyx_string*
  store %nyx_string* %2613, %nyx_string** %2614
  %2615 = call i8* @llvm.stacksave()
  br label %while_cond502
while_cond502:
  %2616 = load i64, i64* %2611
  %2617 = load { i64, i8* }*, { i64, i8* }** %2536
  %2618 = call i64 @nyx_array_length({ i64, i8* }* %2617)
  %2619 = icmp slt i64 %2616, %2618
  br i1 %2619, label %while_body503, label %while_end504
while_body503:
  call void @llvm.stackrestore(i8* %2615)
  %2620 = load { i64, i8* }*, { i64, i8* }** %2536
  %2621 = load i64, i64* %2611
  %2622 = call i64 @nyx_array_get({ i64, i8* }* %2620, i64 %2621)
  %2623 = inttoptr i64 %2622 to { i64, i8* }*
  %2624 = alloca { i64, i8* }*
  store { i64, i8* }* %2623, { i64, i8* }** %2624
  %2625 = load { i64, i8* }*, { i64, i8* }** %2624
  %2626 = call i64 @nyx_array_get_checked({ i64, i8* }* %2625, i64 0, i64 2)
  %2627 = inttoptr i64 %2626 to %nyx_string*
  %2628 = alloca %nyx_string*
  store %nyx_string* %2627, %nyx_string** %2628
  %2629 = load { i64, i8* }*, { i64, i8* }** %2441
  %2630 = load i64, i64* %2611
  %2631 = call i64 @nyx_array_get({ i64, i8* }* %2629, i64 %2630)
  %2632 = inttoptr i64 %2631 to { i64, i8* }*
  %2633 = alloca { i64, i8* }*
  store { i64, i8* }* %2632, { i64, i8* }** %2633
  %2634 = load { i64, i8* }*, { i64, i8* }** %2633
  %2635 = load %Environment, %Environment* %env.ptr
  %2636 = call %Value @eval_expr({ i64, i8* }* %2634, %Environment %2635)
  %2637 = alloca %Value
  store %Value %2636, %Value* %2637
  %2638 = getelementptr %Value, %Value* %2637, i32 0, i32 0
  %2639 = load %nyx_string*, %nyx_string** %2638
  %2640 = load %nyx_string*, %nyx_string** %2614
  %2641 = call i1 @nyx_string_equals(%nyx_string* %2639, %nyx_string* %2640)
  br i1 %2641, label %then505, label %else506
then505:
  %2642 = load %Value, %Value* %2637
  ret %Value %2642
else506:
  br label %merge507
merge507:
  %2643 = load %Environment, %Environment* %2565
  %2644 = load %nyx_string*, %nyx_string** %2628
  %2645 = load %Value, %Value* %2637
  %2646 = call i64 @env_define(%Environment %2643, %nyx_string* %2644, %Value %2645)
  %2647 = load i64, i64* %2611
  %2648 = add i64 %2647, 1
  store i64 %2648, i64* %2611
  br label %while_cond502
while_end504:
  %2649 = load { i64, i8* }*, { i64, i8* }** %2546
  %2650 = load %Environment, %Environment* %2565
  %2651 = call %Value @eval_stmt({ i64, i8* }* %2649, %Environment %2650)
  %2652 = alloca %Value
  store %Value %2651, %Value* %2652
  %2653 = getelementptr %Value, %Value* %2652, i32 0, i32 0
  %2654 = load %nyx_string*, %nyx_string** %2653
  %2655 = getelementptr [7 x i8], [7 x i8]* @.str265, i32 0, i32 0
  %2656 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str265.c, i8* %2655, i64 6)
  %2657 = call i1 @nyx_string_equals(%nyx_string* %2654, %nyx_string* %2656)
  br i1 %2657, label %then508, label %else509
then508:
  %2658 = load %Value, %Value* %2652
  %2659 = call %Value @unwrap_return_value(%Value %2658)
  ret %Value %2659
else509:
  br label %merge510
merge510:
  %2660 = load %Value, %Value* %2652
  %2661 = call i1 @is_loop_control(%Value %2660)
  br i1 %2661, label %then511, label %else512
then511:
  %2662 = load %Value, %Value* %2652
  %2663 = call %Value @loop_control_escaped(%Value %2662)
  ret %Value %2663
else512:
  br label %merge513
merge513:
  %2664 = load %Value, %Value* %2652
  ret %Value %2664
}

define internal %Value @eval_builtin_print(
{ i64, i8* }* %args.param, %Environment %env.param) {
  %args.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %args.param, { i64, i8* }** %args.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %2665 = alloca i64
  store i64 0, i64* %2665
  %2666 = getelementptr [6 x i8], [6 x i8]* @.str266, i32 0, i32 0
  %2667 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str266.c, i8* %2666, i64 5)
  %2668 = alloca %nyx_string*
  store %nyx_string* %2667, %nyx_string** %2668
  %2669 = call i8* @llvm.stacksave()
  br label %while_cond514
while_cond514:
  %2670 = load i64, i64* %2665
  %2671 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %2672 = call i64 @nyx_array_length({ i64, i8* }* %2671)
  %2673 = icmp slt i64 %2670, %2672
  br i1 %2673, label %while_body515, label %while_end516
while_body515:
  call void @llvm.stackrestore(i8* %2669)
  %2674 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %2675 = load i64, i64* %2665
  %2676 = call i64 @nyx_array_get({ i64, i8* }* %2674, i64 %2675)
  %2677 = inttoptr i64 %2676 to { i64, i8* }*
  %2678 = alloca { i64, i8* }*
  store { i64, i8* }* %2677, { i64, i8* }** %2678
  %2679 = load { i64, i8* }*, { i64, i8* }** %2678
  %2680 = load %Environment, %Environment* %env.ptr
  %2681 = call %Value @eval_expr({ i64, i8* }* %2679, %Environment %2680)
  %2682 = alloca %Value
  store %Value %2681, %Value* %2682
  %2683 = getelementptr %Value, %Value* %2682, i32 0, i32 0
  %2684 = load %nyx_string*, %nyx_string** %2683
  %2685 = load %nyx_string*, %nyx_string** %2668
  %2686 = call i1 @nyx_string_equals(%nyx_string* %2684, %nyx_string* %2685)
  br i1 %2686, label %then517, label %else518
then517:
  %2687 = load %Value, %Value* %2682
  ret %Value %2687
else518:
  br label %merge519
merge519:
  %2688 = load %Value, %Value* %2682
  %2689 = call i64 @print_value(%Value %2688)
  %2690 = load i64, i64* %2665
  %2691 = add i64 %2690, 1
  store i64 %2691, i64* %2665
  br label %while_cond514
while_end516:
  %2692 = call %Value @make_nil()
  ret %Value %2692
}

define internal %Value @eval_builtin_read_line(
{ i64, i8* }* %args.param, %Environment %env.param) {
  %args.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %args.param, { i64, i8* }** %args.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %2693 = call %nyx_string* @nyx_read_line()
  %2694 = alloca %nyx_string*
  store %nyx_string* %2693, %nyx_string** %2694
  %2695 = load %nyx_string*, %nyx_string** %2694
  %2696 = call %Value @make_string(%nyx_string* %2695)
  ret %Value %2696
}

define internal %Value @eval_builtin_print_no_newline(
{ i64, i8* }* %args.param, %Environment %env.param) {
  %args.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %args.param, { i64, i8* }** %args.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %2697 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %2698 = call i64 @nyx_array_length({ i64, i8* }* %2697)
  %2699 = icmp sgt i64 %2698, 0
  br i1 %2699, label %then520, label %else521
then520:
  %2700 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %2701 = call i64 @nyx_array_get({ i64, i8* }* %2700, i64 0)
  %2702 = inttoptr i64 %2701 to { i64, i8* }*
  %2703 = alloca { i64, i8* }*
  store { i64, i8* }* %2702, { i64, i8* }** %2703
  %2704 = load { i64, i8* }*, { i64, i8* }** %2703
  %2705 = load %Environment, %Environment* %env.ptr
  %2706 = call %Value @eval_expr({ i64, i8* }* %2704, %Environment %2705)
  %2707 = alloca %Value
  store %Value %2706, %Value* %2707
  %2708 = getelementptr %Value, %Value* %2707, i32 0, i32 0
  %2709 = load %nyx_string*, %nyx_string** %2708
  %2710 = getelementptr [6 x i8], [6 x i8]* @.str267, i32 0, i32 0
  %2711 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str267.c, i8* %2710, i64 5)
  %2712 = call i1 @nyx_string_equals(%nyx_string* %2709, %nyx_string* %2711)
  br i1 %2712, label %then523, label %else524
then523:
  %2713 = load %Value, %Value* %2707
  ret %Value %2713
else524:
  br label %merge525
merge525:
  %2714 = load %Value, %Value* %2707
  %2715 = call %nyx_string* @value_to_string(%Value %2714)
  call void @nyx_print_no_newline(%nyx_string* %2715)
  br label %merge522
else521:
  br label %merge522
merge522:
  %2716 = call %Value @make_nil()
  ret %Value %2716
}

define internal %Value @eval_builtin_read_file(
{ i64, i8* }* %args.param, %Environment %env.param) {
  %args.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %args.param, { i64, i8* }** %args.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %2717 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %2718 = call i64 @nyx_array_length({ i64, i8* }* %2717)
  %2719 = icmp sgt i64 %2718, 0
  br i1 %2719, label %then526, label %else527
then526:
  %2720 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %2721 = call i64 @nyx_array_get({ i64, i8* }* %2720, i64 0)
  %2722 = inttoptr i64 %2721 to { i64, i8* }*
  %2723 = load %Environment, %Environment* %env.ptr
  %2724 = call %Value @eval_expr({ i64, i8* }* %2722, %Environment %2723)
  %2725 = alloca %Value
  store %Value %2724, %Value* %2725
  %2726 = load %Value, %Value* %2725
  %2727 = call %nyx_string* @value_to_string(%Value %2726)
  %2728 = alloca %nyx_string*
  store %nyx_string* %2727, %nyx_string** %2728
  %2729 = load %nyx_string*, %nyx_string** %2728
  %2730 = call i8* @nyx_string_to_cstr(%nyx_string* %2729)
  %2731 = call %nyx_string* @nyx_read_file(i8* %2730)
  %2732 = alloca %nyx_string*
  store %nyx_string* %2731, %nyx_string** %2732
  %2733 = load %nyx_string*, %nyx_string** %2732
  %2734 = call %Value @make_string(%nyx_string* %2733)
  ret %Value %2734
else527:
  br label %merge528
merge528:
  %2735 = call %Value @make_nil()
  ret %Value %2735
}

define %Environment @repl_make_env(
) {
  %2736 = call %Environment @make_env()
  ret %Environment %2736
}

define %nyx_string* @repl_eval(
{ i64, i8* }* %ast.param, %Environment %env.param) {
  %ast.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %ast.param, { i64, i8* }** %ast.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %2737 = load { i64, i8* }*, { i64, i8* }** %ast.ptr
  %2738 = call i64 @nyx_array_get({ i64, i8* }* %2737, i64 1)
  %2739 = inttoptr i64 %2738 to { i64, i8* }*
  %2740 = alloca { i64, i8* }*
  store { i64, i8* }* %2739, { i64, i8* }** %2740
  %2741 = load { i64, i8* }*, { i64, i8* }** %2740
  %2742 = call i64 @nyx_array_get({ i64, i8* }* %2741, i64 0)
  %2743 = inttoptr i64 %2742 to { i64, i8* }*
  %2744 = alloca { i64, i8* }*
  store { i64, i8* }* %2743, { i64, i8* }** %2744
  %2745 = getelementptr [1 x i8], [1 x i8]* @.str268, i32 0, i32 0
  %2746 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str268.c, i8* %2745, i64 0)
  %2747 = alloca %nyx_string*
  store %nyx_string* %2746, %nyx_string** %2747
  %2748 = alloca i64
  store i64 0, i64* %2748
  %2749 = call i8* @llvm.stacksave()
  br label %while_cond529
while_cond529:
  %2750 = load i64, i64* %2748
  %2751 = load { i64, i8* }*, { i64, i8* }** %2744
  %2752 = call i64 @nyx_array_length({ i64, i8* }* %2751)
  %2753 = icmp slt i64 %2750, %2752
  br i1 %2753, label %while_body530, label %while_end531
while_body530:
  call void @llvm.stackrestore(i8* %2749)
  %2754 = load { i64, i8* }*, { i64, i8* }** %2744
  %2755 = load i64, i64* %2748
  %2756 = call i64 @nyx_array_get({ i64, i8* }* %2754, i64 %2755)
  %2757 = inttoptr i64 %2756 to { i64, i8* }*
  %2758 = alloca { i64, i8* }*
  store { i64, i8* }* %2757, { i64, i8* }** %2758
  %2759 = load { i64, i8* }*, { i64, i8* }** %2758
  %2760 = load %Environment, %Environment* %env.ptr
  %2761 = call %Value @eval_stmt({ i64, i8* }* %2759, %Environment %2760)
  %2762 = alloca %Value
  store %Value %2761, %Value* %2762
  %2763 = getelementptr %Value, %Value* %2762, i32 0, i32 0
  %2764 = load %nyx_string*, %nyx_string** %2763
  %2765 = getelementptr [6 x i8], [6 x i8]* @.str269, i32 0, i32 0
  %2766 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str269.c, i8* %2765, i64 5)
  %2767 = call i1 @nyx_string_equals(%nyx_string* %2764, %nyx_string* %2766)
  br i1 %2767, label %then532, label %else533
then532:
  %2768 = getelementptr [1 x i8], [1 x i8]* @.str270, i32 0, i32 0
  %2769 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str270.c, i8* %2768, i64 0)
  ret %nyx_string* %2769
else533:
  br label %merge534
merge534:
  %2770 = load %Value, %Value* %2762
  %2771 = call i1 @is_loop_control(%Value %2770)
  br i1 %2771, label %then535, label %else536
then535:
  %2772 = load %Value, %Value* %2762
  %2773 = call %Value @loop_control_escaped(%Value %2772)
  %2774 = alloca %Value
  store %Value %2773, %Value* %2774
  %2775 = getelementptr [1 x i8], [1 x i8]* @.str271, i32 0, i32 0
  %2776 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str271.c, i8* %2775, i64 0)
  ret %nyx_string* %2776
else536:
  br label %merge537
merge537:
  %2777 = alloca i1
  store i1 false, i1* %2777
  %2778 = getelementptr %Value, %Value* %2762, i32 0, i32 0
  %2779 = load %nyx_string*, %nyx_string** %2778
  %2780 = getelementptr [4 x i8], [4 x i8]* @.str272, i32 0, i32 0
  %2781 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str272.c, i8* %2780, i64 3)
  %2782 = call i1 @nyx_string_equals(%nyx_string* %2779, %nyx_string* %2781)
  %2783 = xor i1 %2782, true
  br i1 %2783, label %sc_and_rhs538, label %sc_and_end539
sc_and_rhs538:
  %2784 = getelementptr %Value, %Value* %2762, i32 0, i32 0
  %2785 = load %nyx_string*, %nyx_string** %2784
  %2786 = getelementptr [7 x i8], [7 x i8]* @.str273, i32 0, i32 0
  %2787 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str273.c, i8* %2786, i64 6)
  %2788 = call i1 @nyx_string_equals(%nyx_string* %2785, %nyx_string* %2787)
  %2789 = xor i1 %2788, true
  store i1 %2789, i1* %2777
  br label %sc_and_end539
sc_and_end539:
  %2790 = load i1, i1* %2777
  br i1 %2790, label %then540, label %else541
then540:
  %2791 = getelementptr [4 x i8], [4 x i8]* @.str274, i32 0, i32 0
  %2792 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str274.c, i8* %2791, i64 3)
  %2793 = load %Value, %Value* %2762
  %2794 = call %nyx_string* @value_to_string(%Value %2793)
  %2795 = call %nyx_string* @nyx_string_concat(%nyx_string* %2792, %nyx_string* %2794)
  store %nyx_string* %2795, %nyx_string** %2747
  br label %merge542
else541:
  br label %merge542
merge542:
  %2796 = load i64, i64* %2748
  %2797 = add i64 %2796, 1
  store i64 %2797, i64* %2748
  br label %while_cond529
while_end531:
  %2798 = load %nyx_string*, %nyx_string** %2747
  ret %nyx_string* %2798
}

define i8* @repl_make_map(
) {
  %2799 = call i8* @nyx_map_new(i32 0)
  ret i8* %2799
}

define %nyx_string* @repl_eval_with_map(
{ i64, i8* }* %ast.param, i8* %env_map.param) {
  %ast.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %ast.param, { i64, i8* }** %ast.ptr
  %env_map.ptr = alloca i8*
  store i8* %env_map.param, i8** %env_map.ptr
  %2800 = getelementptr %Environment, %Environment* null, i32 1
  %2801 = ptrtoint %Environment* %2800 to i64
  %2802 = call i8* @GC_malloc(i64 %2801)
  %2803 = bitcast i8* %2802 to %Environment*
  %2804 = load i8*, i8** %env_map.ptr
  %2805 = getelementptr %Environment, %Environment* %2803, i32 0, i32 0
  store i8* %2804, i8** %2805
  %2806 = call { i64, i8* }* @nyx_array_new_ptr()
  %2807 = getelementptr %Environment, %Environment* %2803, i32 0, i32 1
  store { i64, i8* }* %2806, { i64, i8* }** %2807
  %2808 = load %Environment, %Environment* %2803
  %2809 = alloca %Environment
  store %Environment %2808, %Environment* %2809
  %2810 = load { i64, i8* }*, { i64, i8* }** %ast.ptr
  %2811 = load %Environment, %Environment* %2809
  %2812 = call %nyx_string* @repl_eval({ i64, i8* }* %2810, %Environment %2811)
  ret %nyx_string* %2812
}

define %Value @interpret(
{ i64, i8* }* %ast.param) {
  %ast.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %ast.param, { i64, i8* }** %ast.ptr
  %2813 = call %Environment @make_env()
  %2814 = alloca %Environment
  store %Environment %2813, %Environment* %2814
  %2815 = load { i64, i8* }*, { i64, i8* }** %ast.ptr
  %2816 = call %nyx_string* @astnode_get_type({ i64, i8* }* %2815)
  %2817 = alloca %nyx_string*
  store %nyx_string* %2816, %nyx_string** %2817
  %2818 = load %nyx_string*, %nyx_string** %2817
  %2819 = getelementptr [6 x i8], [6 x i8]* @.str275, i32 0, i32 0
  %2820 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str275.c, i8* %2819, i64 5)
  %2821 = call i1 @nyx_string_equals(%nyx_string* %2818, %nyx_string* %2820)
  br i1 %2821, label %then543, label %else544
then543:
  %2822 = load { i64, i8* }*, { i64, i8* }** %ast.ptr
  %2823 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %2822)
  %2824 = alloca { i64, i8* }*
  store { i64, i8* }* %2823, { i64, i8* }** %2824
  %2825 = load { i64, i8* }*, { i64, i8* }** %2824
  %2826 = call i64 @nyx_array_get({ i64, i8* }* %2825, i64 0)
  %2827 = inttoptr i64 %2826 to { i64, i8* }*
  %2828 = alloca { i64, i8* }*
  store { i64, i8* }* %2827, { i64, i8* }** %2828
  %2829 = alloca i64
  store i64 0, i64* %2829
  %2830 = call i8* @llvm.stacksave()
  br label %while_cond546
while_cond546:
  %2831 = load i64, i64* %2829
  %2832 = load { i64, i8* }*, { i64, i8* }** %2828
  %2833 = call i64 @nyx_array_length({ i64, i8* }* %2832)
  %2834 = icmp slt i64 %2831, %2833
  br i1 %2834, label %while_body547, label %while_end548
while_body547:
  call void @llvm.stackrestore(i8* %2830)
  %2835 = load { i64, i8* }*, { i64, i8* }** %2828
  %2836 = load i64, i64* %2829
  %2837 = call i64 @nyx_array_get({ i64, i8* }* %2835, i64 %2836)
  %2838 = inttoptr i64 %2837 to { i64, i8* }*
  %2839 = alloca { i64, i8* }*
  store { i64, i8* }* %2838, { i64, i8* }** %2839
  %2840 = load { i64, i8* }*, { i64, i8* }** %2839
  %2841 = load %Environment, %Environment* %2814
  %2842 = call %Value @eval_stmt({ i64, i8* }* %2840, %Environment %2841)
  %2843 = alloca %Value
  store %Value %2842, %Value* %2843
  %2844 = getelementptr %Value, %Value* %2843, i32 0, i32 0
  %2845 = load %nyx_string*, %nyx_string** %2844
  %2846 = getelementptr [6 x i8], [6 x i8]* @.str276, i32 0, i32 0
  %2847 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str276.c, i8* %2846, i64 5)
  %2848 = call i1 @nyx_string_equals(%nyx_string* %2845, %nyx_string* %2847)
  br i1 %2848, label %then549, label %else550
then549:
  %2849 = load %Value, %Value* %2843
  ret %Value %2849
else550:
  br label %merge551
merge551:
  %2850 = load %Value, %Value* %2843
  %2851 = call i1 @is_loop_control(%Value %2850)
  br i1 %2851, label %then552, label %else553
then552:
  %2852 = load %Value, %Value* %2843
  %2853 = call %Value @loop_control_escaped(%Value %2852)
  ret %Value %2853
else553:
  br label %merge554
merge554:
  %2854 = load i64, i64* %2829
  %2855 = add i64 %2854, 1
  store i64 %2855, i64* %2829
  br label %while_cond546
while_end548:
  %2856 = getelementptr %Environment, %Environment* %2814, i32 0, i32 0
  %2857 = load i8*, i8** %2856
  %2858 = alloca i8*
  store i8* %2857, i8** %2858
  %2859 = load i8*, i8** %2858
  %2860 = getelementptr [5 x i8], [5 x i8]* @.str277, i32 0, i32 0
  %2861 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str277.c, i8* %2860, i64 4)
  %2862 = call i8* @nyx_string_to_cstr(%nyx_string* %2861)
  %2863 = call i1 @nyx_map_contains_str(i8* %2859, i8* %2862)
  br i1 %2863, label %then555, label %else556
then555:
  %2864 = load %Environment, %Environment* %2814
  %2865 = getelementptr [5 x i8], [5 x i8]* @.str278, i32 0, i32 0
  %2866 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str278.c, i8* %2865, i64 4)
  %2867 = call %Value @env_get(%Environment %2864, %nyx_string* %2866)
  %2868 = alloca %Value
  store %Value %2867, %Value* %2868
  %2869 = getelementptr %Value, %Value* %2868, i32 0, i32 0
  %2870 = load %nyx_string*, %nyx_string** %2869
  %2871 = getelementptr [9 x i8], [9 x i8]* @.str279, i32 0, i32 0
  %2872 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str279.c, i8* %2871, i64 8)
  %2873 = call i1 @nyx_string_equals(%nyx_string* %2870, %nyx_string* %2872)
  br i1 %2873, label %then558, label %else559
then558:
  %2874 = load %Value, %Value* %2868
  %2875 = call { i64, i8* }* @get_func_params(%Value %2874)
  %2876 = alloca { i64, i8* }*
  store { i64, i8* }* %2875, { i64, i8* }** %2876
  %2877 = load %Value, %Value* %2868
  %2878 = call %nyx_string* @get_func_body_type(%Value %2877)
  %2879 = alloca %nyx_string*
  store %nyx_string* %2878, %nyx_string** %2879
  %2880 = load %Value, %Value* %2868
  %2881 = call { i64, i8* }* @get_func_body_data(%Value %2880)
  %2882 = alloca { i64, i8* }*
  store { i64, i8* }* %2881, { i64, i8* }** %2882
  %2883 = load %nyx_string*, %nyx_string** %2879
  %2884 = load { i64, i8* }*, { i64, i8* }** %2882
  %2885 = call { i64, i8* }* @make_astnode(%nyx_string* %2883, { i64, i8* }* %2884)
  %2886 = alloca { i64, i8* }*
  store { i64, i8* }* %2885, { i64, i8* }** %2886
  %2887 = load %Value, %Value* %2868
  %2888 = call i8* @get_func_env_bindings(%Value %2887)
  %2889 = alloca i8*
  store i8* %2888, i8** %2889
  %2890 = load %Value, %Value* %2868
  %2891 = call { i64, i8* }* @get_func_env_parent(%Value %2890)
  %2892 = alloca { i64, i8* }*
  store { i64, i8* }* %2891, { i64, i8* }** %2892
  %2893 = getelementptr %Environment, %Environment* null, i32 1
  %2894 = ptrtoint %Environment* %2893 to i64
  %2895 = call i8* @GC_malloc(i64 %2894)
  %2896 = bitcast i8* %2895 to %Environment*
  %2897 = load i8*, i8** %2889
  %2898 = getelementptr %Environment, %Environment* %2896, i32 0, i32 0
  store i8* %2897, i8** %2898
  %2899 = load { i64, i8* }*, { i64, i8* }** %2892
  %2900 = getelementptr %Environment, %Environment* %2896, i32 0, i32 1
  store { i64, i8* }* %2899, { i64, i8* }** %2900
  %2901 = load %Environment, %Environment* %2896
  %2902 = alloca %Environment
  store %Environment %2901, %Environment* %2902
  %2903 = load %Environment, %Environment* %2902
  %2904 = call %Environment @make_child_env(%Environment %2903)
  %2905 = alloca %Environment
  store %Environment %2904, %Environment* %2905
  %2906 = load { i64, i8* }*, { i64, i8* }** %2886
  %2907 = load %Environment, %Environment* %2905
  %2908 = call %Value @eval_stmt({ i64, i8* }* %2906, %Environment %2907)
  %2909 = alloca %Value
  store %Value %2908, %Value* %2909
  %2910 = load %Value, %Value* %2909
  %2911 = call i1 @is_loop_control(%Value %2910)
  br i1 %2911, label %then561, label %else562
then561:
  %2912 = load %Value, %Value* %2909
  %2913 = call %Value @loop_control_escaped(%Value %2912)
  ret %Value %2913
else562:
  br label %merge563
merge563:
  %2914 = load %Value, %Value* %2909
  ret %Value %2914
else559:
  br label %merge560
merge560:
  br label %merge557
else556:
  br label %merge557
merge557:
  br label %merge545
else544:
  br label %merge545
merge545:
  %2915 = call %Value @make_nil()
  ret %Value %2915
}

; Inicialización de variables globales (llamada automática vía ctor)
define void @__nyx_init_globals() {
entry:
  %2916 = call { i64, i8* }* @nyx_array_new_ptr()
  call void @nyx_array_push_tagged({ i64, i8* }* %2916, i64 0, i64 1)
  store { i64, i8* }* %2916, { i64, i8* }** @g_interp_error_count
  ret void
}

@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @__nyx_init_globals, i8* null }]

attributes #0 = { returns_twice }

