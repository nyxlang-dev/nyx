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
@.str22 = private unnamed_addr constant [4 x i8] c"nil\00"
@.str22.c = internal global %nyx_string* null
@.str23 = private unnamed_addr constant [1 x i8] c"\00"
@.str23.c = internal global %nyx_string* null
@.str24 = private unnamed_addr constant [1 x i8] c"\00"
@.str24.c = internal global %nyx_string* null
@.str25 = private unnamed_addr constant [7 x i8] c"return\00"
@.str25.c = internal global %nyx_string* null
@.str26 = private unnamed_addr constant [1 x i8] c"\00"
@.str26.c = internal global %nyx_string* null
@.str27 = private unnamed_addr constant [1 x i8] c"\00"
@.str27.c = internal global %nyx_string* null
@.str28 = private unnamed_addr constant [4 x i8] c"int\00"
@.str28.c = internal global %nyx_string* null
@.str29 = private unnamed_addr constant [6 x i8] c"float\00"
@.str29.c = internal global %nyx_string* null
@.str30 = private unnamed_addr constant [4 x i8] c"int\00"
@.str30.c = internal global %nyx_string* null
@.str31 = private unnamed_addr constant [5 x i8] c"bool\00"
@.str31.c = internal global %nyx_string* null
@.str32 = private unnamed_addr constant [4 x i8] c"int\00"
@.str32.c = internal global %nyx_string* null
@.str33 = private unnamed_addr constant [6 x i8] c"float\00"
@.str33.c = internal global %nyx_string* null
@.str34 = private unnamed_addr constant [5 x i8] c"bool\00"
@.str34.c = internal global %nyx_string* null
@.str35 = private unnamed_addr constant [5 x i8] c"true\00"
@.str35.c = internal global %nyx_string* null
@.str36 = private unnamed_addr constant [6 x i8] c"false\00"
@.str36.c = internal global %nyx_string* null
@.str37 = private unnamed_addr constant [7 x i8] c"string\00"
@.str37.c = internal global %nyx_string* null
@.str38 = private unnamed_addr constant [4 x i8] c"nil\00"
@.str38.c = internal global %nyx_string* null
@.str39 = private unnamed_addr constant [4 x i8] c"nil\00"
@.str39.c = internal global %nyx_string* null
@.str40 = private unnamed_addr constant [2 x i8] c"[\00"
@.str40.c = internal global %nyx_string* null
@.str41 = private unnamed_addr constant [2 x i8] c"]\00"
@.str41.c = internal global %nyx_string* null
@.str42 = private unnamed_addr constant [5 x i8] c"bool\00"
@.str42.c = internal global %nyx_string* null
@.str43 = private unnamed_addr constant [4 x i8] c"nil\00"
@.str43.c = internal global %nyx_string* null
@.str44 = private unnamed_addr constant [4 x i8] c"int\00"
@.str44.c = internal global %nyx_string* null
@.str45 = private unnamed_addr constant [4 x i8] c"int\00"
@.str45.c = internal global %nyx_string* null
@.str46 = private unnamed_addr constant [5 x i8] c"bool\00"
@.str46.c = internal global %nyx_string* null
@.str47 = private unnamed_addr constant [7 x i8] c"string\00"
@.str47.c = internal global %nyx_string* null
@.str48 = private unnamed_addr constant [4 x i8] c"int\00"
@.str48.c = internal global %nyx_string* null
@.str49 = private unnamed_addr constant [6 x i8] c"float\00"
@.str49.c = internal global %nyx_string* null
@.str50 = private unnamed_addr constant [5 x i8] c"bool\00"
@.str50.c = internal global %nyx_string* null
@.str51 = private unnamed_addr constant [5 x i8] c"true\00"
@.str51.c = internal global %nyx_string* null
@.str52 = private unnamed_addr constant [6 x i8] c"false\00"
@.str52.c = internal global %nyx_string* null
@.str53 = private unnamed_addr constant [7 x i8] c"string\00"
@.str53.c = internal global %nyx_string* null
@.str54 = private unnamed_addr constant [4 x i8] c"nil\00"
@.str54.c = internal global %nyx_string* null
@.str55 = private unnamed_addr constant [4 x i8] c"nil\00"
@.str55.c = internal global %nyx_string* null
@.str56 = private unnamed_addr constant [2 x i8] c"[\00"
@.str56.c = internal global %nyx_string* null
@.str57 = private unnamed_addr constant [2 x i8] c"]\00"
@.str57.c = internal global %nyx_string* null
@.str58 = private unnamed_addr constant [8 x i8] c"NYX3003\00"
@.str58.c = internal global %nyx_string* null
@.str59 = private unnamed_addr constant [23 x i8] c"variable no definida: \00"
@.str59.c = internal global %nyx_string* null
@.str60 = private unnamed_addr constant [21 x i8] c"undefined variable: \00"
@.str60.c = internal global %nyx_string* null
@.str61 = private unnamed_addr constant [7 x i8] c"number\00"
@.str61.c = internal global %nyx_string* null
@.str62 = private unnamed_addr constant [8 x i8] c"integer\00"
@.str62.c = internal global %nyx_string* null
@.str63 = private unnamed_addr constant [5 x i8] c"bool\00"
@.str63.c = internal global %nyx_string* null
@.str64 = private unnamed_addr constant [7 x i8] c"string\00"
@.str64.c = internal global %nyx_string* null
@.str65 = private unnamed_addr constant [11 x i8] c"identifier\00"
@.str65.c = internal global %nyx_string* null
@.str66 = private unnamed_addr constant [6 x i8] c"binop\00"
@.str66.c = internal global %nyx_string* null
@.str67 = private unnamed_addr constant [5 x i8] c"unop\00"
@.str67.c = internal global %nyx_string* null
@.str68 = private unnamed_addr constant [5 x i8] c"call\00"
@.str68.c = internal global %nyx_string* null
@.str69 = private unnamed_addr constant [6 x i8] c"array\00"
@.str69.c = internal global %nyx_string* null
@.str70 = private unnamed_addr constant [6 x i8] c"index\00"
@.str70.c = internal global %nyx_string* null
@.str71 = private unnamed_addr constant [12 x i8] c"method_call\00"
@.str71.c = internal global %nyx_string* null
@.str72 = private unnamed_addr constant [8 x i8] c"NYX3002\00"
@.str72.c = internal global %nyx_string* null
@.str73 = private unnamed_addr constant [45 x i8] c"expresión no soportada por el intérprete: \00"
@.str73.c = internal global %nyx_string* null
@.str74 = private unnamed_addr constant [46 x i8] c"expression not supported by the interpreter: \00"
@.str74.c = internal global %nyx_string* null
@.str75 = private unnamed_addr constant [2 x i8] c".\00"
@.str75.c = internal global %nyx_string* null
@.str76 = private unnamed_addr constant [5 x i8] c"true\00"
@.str76.c = internal global %nyx_string* null
@.str77 = private unnamed_addr constant [6 x i8] c"float\00"
@.str77.c = internal global %nyx_string* null
@.str78 = private unnamed_addr constant [6 x i8] c"float\00"
@.str78.c = internal global %nyx_string* null
@.str79 = private unnamed_addr constant [5 x i8] c"PLUS\00"
@.str79.c = internal global %nyx_string* null
@.str80 = private unnamed_addr constant [7 x i8] c"string\00"
@.str80.c = internal global %nyx_string* null
@.str81 = private unnamed_addr constant [6 x i8] c"MINUS\00"
@.str81.c = internal global %nyx_string* null
@.str82 = private unnamed_addr constant [5 x i8] c"STAR\00"
@.str82.c = internal global %nyx_string* null
@.str83 = private unnamed_addr constant [6 x i8] c"SLASH\00"
@.str83.c = internal global %nyx_string* null
@.str84 = private unnamed_addr constant [8 x i8] c"NYX3005\00"
@.str84.c = internal global %nyx_string* null
@.str85 = private unnamed_addr constant [19 x i8] c"división por cero\00"
@.str85.c = internal global %nyx_string* null
@.str86 = private unnamed_addr constant [17 x i8] c"division by zero\00"
@.str86.c = internal global %nyx_string* null
@.str87 = private unnamed_addr constant [8 x i8] c"PERCENT\00"
@.str87.c = internal global %nyx_string* null
@.str88 = private unnamed_addr constant [8 x i8] c"NYX3005\00"
@.str88.c = internal global %nyx_string* null
@.str89 = private unnamed_addr constant [17 x i8] c"módulo por cero\00"
@.str89.c = internal global %nyx_string* null
@.str90 = private unnamed_addr constant [15 x i8] c"modulo by zero\00"
@.str90.c = internal global %nyx_string* null
@.str91 = private unnamed_addr constant [12 x i8] c"EQUAL_EQUAL\00"
@.str91.c = internal global %nyx_string* null
@.str92 = private unnamed_addr constant [10 x i8] c"NOT_EQUAL\00"
@.str92.c = internal global %nyx_string* null
@.str93 = private unnamed_addr constant [5 x i8] c"LESS\00"
@.str93.c = internal global %nyx_string* null
@.str94 = private unnamed_addr constant [8 x i8] c"GREATER\00"
@.str94.c = internal global %nyx_string* null
@.str95 = private unnamed_addr constant [11 x i8] c"LESS_EQUAL\00"
@.str95.c = internal global %nyx_string* null
@.str96 = private unnamed_addr constant [14 x i8] c"GREATER_EQUAL\00"
@.str96.c = internal global %nyx_string* null
@.str97 = private unnamed_addr constant [8 x i8] c"AND_AND\00"
@.str97.c = internal global %nyx_string* null
@.str98 = private unnamed_addr constant [4 x i8] c"AND\00"
@.str98.c = internal global %nyx_string* null
@.str99 = private unnamed_addr constant [6 x i8] c"OR_OR\00"
@.str99.c = internal global %nyx_string* null
@.str100 = private unnamed_addr constant [3 x i8] c"OR\00"
@.str100.c = internal global %nyx_string* null
@.str101 = private unnamed_addr constant [8 x i8] c"NYX3002\00"
@.str101.c = internal global %nyx_string* null
@.str102 = private unnamed_addr constant [24 x i8] c"operador no soportado: \00"
@.str102.c = internal global %nyx_string* null
@.str103 = private unnamed_addr constant [25 x i8] c"operator not supported: \00"
@.str103.c = internal global %nyx_string* null
@.str104 = private unnamed_addr constant [6 x i8] c"MINUS\00"
@.str104.c = internal global %nyx_string* null
@.str105 = private unnamed_addr constant [4 x i8] c"NOT\00"
@.str105.c = internal global %nyx_string* null
@.str106 = private unnamed_addr constant [8 x i8] c"NYX3002\00"
@.str106.c = internal global %nyx_string* null
@.str107 = private unnamed_addr constant [31 x i8] c"operador unario no soportado: \00"
@.str107.c = internal global %nyx_string* null
@.str108 = private unnamed_addr constant [31 x i8] c"unary operator not supported: \00"
@.str108.c = internal global %nyx_string* null
@.str109 = private unnamed_addr constant [6 x i8] c"array\00"
@.str109.c = internal global %nyx_string* null
@.str110 = private unnamed_addr constant [8 x i8] c"NYX3002\00"
@.str110.c = internal global %nyx_string* null
@.str111 = private unnamed_addr constant [56 x i8] c"indexado no soportado por el intérprete sobre el tipo \00"
@.str111.c = internal global %nyx_string* null
@.str112 = private unnamed_addr constant [51 x i8] c"indexing not supported by the interpreter on type \00"
@.str112.c = internal global %nyx_string* null
@.str113 = private unnamed_addr constant [8 x i8] c"NYX3005\00"
@.str113.c = internal global %nyx_string* null
@.str114 = private unnamed_addr constant [23 x i8] c"índice fuera de rango\00"
@.str114.c = internal global %nyx_string* null
@.str115 = private unnamed_addr constant [19 x i8] c"index out of range\00"
@.str115.c = internal global %nyx_string* null
@.str116 = private unnamed_addr constant [4 x i8] c"let\00"
@.str116.c = internal global %nyx_string* null
@.str117 = private unnamed_addr constant [4 x i8] c"var\00"
@.str117.c = internal global %nyx_string* null
@.str118 = private unnamed_addr constant [7 x i8] c"assign\00"
@.str118.c = internal global %nyx_string* null
@.str119 = private unnamed_addr constant [3 x i8] c"if\00"
@.str119.c = internal global %nyx_string* null
@.str120 = private unnamed_addr constant [6 x i8] c"while\00"
@.str120.c = internal global %nyx_string* null
@.str121 = private unnamed_addr constant [4 x i8] c"for\00"
@.str121.c = internal global %nyx_string* null
@.str122 = private unnamed_addr constant [7 x i8] c"return\00"
@.str122.c = internal global %nyx_string* null
@.str123 = private unnamed_addr constant [6 x i8] c"block\00"
@.str123.c = internal global %nyx_string* null
@.str124 = private unnamed_addr constant [9 x i8] c"function\00"
@.str124.c = internal global %nyx_string* null
@.str125 = private unnamed_addr constant [13 x i8] c"index_assign\00"
@.str125.c = internal global %nyx_string* null
@.str126 = private unnamed_addr constant [13 x i8] c"field_assign\00"
@.str126.c = internal global %nyx_string* null
@.str127 = private unnamed_addr constant [8 x i8] c"NYX3003\00"
@.str127.c = internal global %nyx_string* null
@.str128 = private unnamed_addr constant [23 x i8] c"variable no definida: \00"
@.str128.c = internal global %nyx_string* null
@.str129 = private unnamed_addr constant [21 x i8] c"undefined variable: \00"
@.str129.c = internal global %nyx_string* null
@.str130 = private unnamed_addr constant [6 x i8] c"array\00"
@.str130.c = internal global %nyx_string* null
@.str131 = private unnamed_addr constant [8 x i8] c"NYX3005\00"
@.str131.c = internal global %nyx_string* null
@.str132 = private unnamed_addr constant [38 x i8] c"índice fuera de rango en asignación\00"
@.str132.c = internal global %nyx_string* null
@.str133 = private unnamed_addr constant [33 x i8] c"index out of range in assignment\00"
@.str133.c = internal global %nyx_string* null
@.str134 = private unnamed_addr constant [8 x i8] c"NYX3005\00"
@.str134.c = internal global %nyx_string* null
@.str135 = private unnamed_addr constant [38 x i8] c"index_assign sobre un tipo no-array: \00"
@.str135.c = internal global %nyx_string* null
@.str136 = private unnamed_addr constant [35 x i8] c"index_assign on a non-array type: \00"
@.str136.c = internal global %nyx_string* null
@.str137 = private unnamed_addr constant [8 x i8] c"NYX3002\00"
@.str137.c = internal global %nyx_string* null
@.str138 = private unnamed_addr constant [45 x i8] c"field_assign no soportado por el intérprete\00"
@.str138.c = internal global %nyx_string* null
@.str139 = private unnamed_addr constant [46 x i8] c"field_assign not supported by the interpreter\00"
@.str139.c = internal global %nyx_string* null
@.str140 = private unnamed_addr constant [6 x i8] c"empty\00"
@.str140.c = internal global %nyx_string* null
@.str141 = private unnamed_addr constant [6 x i8] c"array\00"
@.str141.c = internal global %nyx_string* null
@.str142 = private unnamed_addr constant [7 x i8] c"return\00"
@.str142.c = internal global %nyx_string* null
@.str143 = private unnamed_addr constant [9 x i8] c"function\00"
@.str143.c = internal global %nyx_string* null
@.str144 = private unnamed_addr constant [1 x i8] c"\00"
@.str144.c = internal global %nyx_string* null
@.str145 = private unnamed_addr constant [7 x i8] c"string\00"
@.str145.c = internal global %nyx_string* null
@.str146 = private unnamed_addr constant [7 x i8] c"length\00"
@.str146.c = internal global %nyx_string* null
@.str147 = private unnamed_addr constant [12 x i8] c"char_length\00"
@.str147.c = internal global %nyx_string* null
@.str148 = private unnamed_addr constant [12 x i8] c"byte_length\00"
@.str148.c = internal global %nyx_string* null
@.str149 = private unnamed_addr constant [8 x i8] c"toUpper\00"
@.str149.c = internal global %nyx_string* null
@.str150 = private unnamed_addr constant [8 x i8] c"toLower\00"
@.str150.c = internal global %nyx_string* null
@.str151 = private unnamed_addr constant [5 x i8] c"trim\00"
@.str151.c = internal global %nyx_string* null
@.str152 = private unnamed_addr constant [8 x i8] c"indexOf\00"
@.str152.c = internal global %nyx_string* null
@.str153 = private unnamed_addr constant [10 x i8] c"substring\00"
@.str153.c = internal global %nyx_string* null
@.str154 = private unnamed_addr constant [7 x i8] c"charAt\00"
@.str154.c = internal global %nyx_string* null
@.str155 = private unnamed_addr constant [11 x i8] c"startsWith\00"
@.str155.c = internal global %nyx_string* null
@.str156 = private unnamed_addr constant [9 x i8] c"endsWith\00"
@.str156.c = internal global %nyx_string* null
@.str157 = private unnamed_addr constant [8 x i8] c"replace\00"
@.str157.c = internal global %nyx_string* null
@.str158 = private unnamed_addr constant [6 x i8] c"array\00"
@.str158.c = internal global %nyx_string* null
@.str159 = private unnamed_addr constant [7 x i8] c"length\00"
@.str159.c = internal global %nyx_string* null
@.str160 = private unnamed_addr constant [5 x i8] c"push\00"
@.str160.c = internal global %nyx_string* null
@.str161 = private unnamed_addr constant [4 x i8] c"pop\00"
@.str161.c = internal global %nyx_string* null
@.str162 = private unnamed_addr constant [8 x i8] c"NYX3001\00"
@.str162.c = internal global %nyx_string* null
@.str163 = private unnamed_addr constant [39 x i8] c"el intérprete no soporta el método '\00"
@.str163.c = internal global %nyx_string* null
@.str164 = private unnamed_addr constant [17 x i8] c"' sobre el tipo \00"
@.str164.c = internal global %nyx_string* null
@.str165 = private unnamed_addr constant [42 x i8] c"the interpreter does not support method '\00"
@.str165.c = internal global %nyx_string* null
@.str166 = private unnamed_addr constant [11 x i8] c"' on type \00"
@.str166.c = internal global %nyx_string* null
@.str167 = private unnamed_addr constant [9 x i8] c"NYX_LANG\00"
@.str167.c = internal global %nyx_string* null
@.str168 = private unnamed_addr constant [3 x i8] c"es\00"
@.str168.c = internal global %nyx_string* null
@.str169 = private unnamed_addr constant [85 x i8] c"  el intérprete cubre un SUBCONJUNTO del lenguaje (ver cabecera de interpreter.nx);\00"
@.str169.c = internal global %nyx_string* null
@.str170 = private unnamed_addr constant [85 x i8] c"  el binario compilado (nyx build / make run) sí lo soporta si el lenguaje lo tiene\00"
@.str170.c = internal global %nyx_string* null
@.str171 = private unnamed_addr constant [79 x i8] c"  the interpreter covers a SUBSET of the language (see interpreter.nx header);\00"
@.str171.c = internal global %nyx_string* null
@.str172 = private unnamed_addr constant [84 x i8] c"  the compiled binary (nyx build / make run) does support it if the language has it\00"
@.str172.c = internal global %nyx_string* null
@.str173 = private unnamed_addr constant [6 x i8] c"print\00"
@.str173.c = internal global %nyx_string* null
@.str174 = private unnamed_addr constant [10 x i8] c"read_file\00"
@.str174.c = internal global %nyx_string* null
@.str175 = private unnamed_addr constant [10 x i8] c"read_line\00"
@.str175.c = internal global %nyx_string* null
@.str176 = private unnamed_addr constant [17 x i8] c"print_no_newline\00"
@.str176.c = internal global %nyx_string* null
@.str177 = private unnamed_addr constant [8 x i8] c"NYX3003\00"
@.str177.c = internal global %nyx_string* null
@.str178 = private unnamed_addr constant [23 x i8] c"variable no definida: \00"
@.str178.c = internal global %nyx_string* null
@.str179 = private unnamed_addr constant [21 x i8] c"undefined variable: \00"
@.str179.c = internal global %nyx_string* null
@.str180 = private unnamed_addr constant [9 x i8] c"function\00"
@.str180.c = internal global %nyx_string* null
@.str181 = private unnamed_addr constant [8 x i8] c"NYX3004\00"
@.str181.c = internal global %nyx_string* null
@.str182 = private unnamed_addr constant [2 x i8] c"'\00"
@.str182.c = internal global %nyx_string* null
@.str183 = private unnamed_addr constant [21 x i8] c"' no es una función\00"
@.str183.c = internal global %nyx_string* null
@.str184 = private unnamed_addr constant [2 x i8] c"'\00"
@.str184.c = internal global %nyx_string* null
@.str185 = private unnamed_addr constant [20 x i8] c"' is not a function\00"
@.str185.c = internal global %nyx_string* null
@.str186 = private unnamed_addr constant [8 x i8] c"NYX3006\00"
@.str186.c = internal global %nyx_string* null
@.str187 = private unnamed_addr constant [2 x i8] c"'\00"
@.str187.c = internal global %nyx_string* null
@.str188 = private unnamed_addr constant [10 x i8] c"' espera \00"
@.str188.c = internal global %nyx_string* null
@.str189 = private unnamed_addr constant [25 x i8] c" argumento(s), recibió \00"
@.str189.c = internal global %nyx_string* null
@.str190 = private unnamed_addr constant [2 x i8] c"'\00"
@.str190.c = internal global %nyx_string* null
@.str191 = private unnamed_addr constant [11 x i8] c"' expects \00"
@.str191.c = internal global %nyx_string* null
@.str192 = private unnamed_addr constant [19 x i8] c" argument(s), got \00"
@.str192.c = internal global %nyx_string* null
@.str193 = private unnamed_addr constant [7 x i8] c"return\00"
@.str193.c = internal global %nyx_string* null
@.str194 = private unnamed_addr constant [1 x i8] c"\00"
@.str194.c = internal global %nyx_string* null
@.str195 = private unnamed_addr constant [4 x i8] c"nil\00"
@.str195.c = internal global %nyx_string* null
@.str196 = private unnamed_addr constant [7 x i8] c"return\00"
@.str196.c = internal global %nyx_string* null
@.str197 = private unnamed_addr constant [4 x i8] c"=> \00"
@.str197.c = internal global %nyx_string* null
@.str198 = private unnamed_addr constant [6 x i8] c"block\00"
@.str198.c = internal global %nyx_string* null
@.str199 = private unnamed_addr constant [5 x i8] c"main\00"
@.str199.c = internal global %nyx_string* null
@.str200 = private unnamed_addr constant [5 x i8] c"main\00"
@.str200.c = internal global %nyx_string* null
@.str201 = private unnamed_addr constant [9 x i8] c"function\00"
@.str201.c = internal global %nyx_string* null
@__nyx_test_failed = external global i64
@__nyx_test_mode = external global i64
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
  %8 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str0.c, i8* %7)
  %9 = call i8* @nyx_string_to_cstr(%nyx_string* %8)
  %10 = call %nyx_string* @nyx_getenv(i8* %9)
  %11 = alloca %nyx_string*
  store %nyx_string* %10, %nyx_string** %11
  %12 = load %nyx_string*, %nyx_string** %11
  %13 = getelementptr [3 x i8], [3 x i8]* @.str1, i32 0, i32 0
  %14 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1.c, i8* %13)
  %15 = call i1 @nyx_string_equals(%nyx_string* %12, %nyx_string* %14)
  br i1 %15, label %then0, label %else1
then0:
  %16 = getelementptr [8 x i8], [8 x i8]* @.str2, i32 0, i32 0
  %17 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str2.c, i8* %16)
  %18 = load %nyx_string*, %nyx_string** %code.ptr
  %19 = call %nyx_string* @nyx_string_concat(%nyx_string* %17, %nyx_string* %18)
  %20 = getelementptr [4 x i8], [4 x i8]* @.str3, i32 0, i32 0
  %21 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str3.c, i8* %20)
  %22 = call %nyx_string* @nyx_string_concat(%nyx_string* %19, %nyx_string* %21)
  %23 = load %nyx_string*, %nyx_string** %msg_es.ptr
  %24 = call %nyx_string* @nyx_string_concat(%nyx_string* %22, %nyx_string* %23)
  %25 = call i8* @nyx_string_to_cstr(%nyx_string* %24)
  call void @nyx_print_string(i8* %25)
  br label %merge2
else1:
  %26 = getelementptr [8 x i8], [8 x i8]* @.str4, i32 0, i32 0
  %27 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str4.c, i8* %26)
  %28 = load %nyx_string*, %nyx_string** %code.ptr
  %29 = call %nyx_string* @nyx_string_concat(%nyx_string* %27, %nyx_string* %28)
  %30 = getelementptr [4 x i8], [4 x i8]* @.str5, i32 0, i32 0
  %31 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str5.c, i8* %30)
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
  %60 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str6.c, i8* %59)
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
  %67 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str7.c, i8* %66)
  %68 = getelementptr %Value, %Value* %58, i32 0, i32 4
  store %nyx_string* %67, %nyx_string** %68
  %69 = load { i64, i8* }*, { i64, i8* }** %54
  %70 = getelementptr %Value, %Value* %58, i32 0, i32 5
  store { i64, i8* }* %69, { i64, i8* }** %70
  %71 = load { i64, i8* }*, { i64, i8* }** %54
  %72 = getelementptr %Value, %Value* %58, i32 0, i32 6
  store { i64, i8* }* %71, { i64, i8* }** %72
  %73 = getelementptr [1 x i8], [1 x i8]* @.str8, i32 0, i32 0
  %74 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str8.c, i8* %73)
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
  %92 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str9.c, i8* %91)
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
  %99 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str10.c, i8* %98)
  %100 = getelementptr %Value, %Value* %90, i32 0, i32 4
  store %nyx_string* %99, %nyx_string** %100
  %101 = load { i64, i8* }*, { i64, i8* }** %86
  %102 = getelementptr %Value, %Value* %90, i32 0, i32 5
  store { i64, i8* }* %101, { i64, i8* }** %102
  %103 = load { i64, i8* }*, { i64, i8* }** %86
  %104 = getelementptr %Value, %Value* %90, i32 0, i32 6
  store { i64, i8* }* %103, { i64, i8* }** %104
  %105 = getelementptr [1 x i8], [1 x i8]* @.str11, i32 0, i32 0
  %106 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str11.c, i8* %105)
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
  %124 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str12.c, i8* %123)
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
  %131 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str13.c, i8* %130)
  %132 = getelementptr %Value, %Value* %122, i32 0, i32 4
  store %nyx_string* %131, %nyx_string** %132
  %133 = load { i64, i8* }*, { i64, i8* }** %118
  %134 = getelementptr %Value, %Value* %122, i32 0, i32 5
  store { i64, i8* }* %133, { i64, i8* }** %134
  %135 = load { i64, i8* }*, { i64, i8* }** %118
  %136 = getelementptr %Value, %Value* %122, i32 0, i32 6
  store { i64, i8* }* %135, { i64, i8* }** %136
  %137 = getelementptr [1 x i8], [1 x i8]* @.str14, i32 0, i32 0
  %138 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str14.c, i8* %137)
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
  %156 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str15.c, i8* %155)
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
  %168 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str16.c, i8* %167)
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
  %186 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str17.c, i8* %185)
  %187 = getelementptr %Value, %Value* %184, i32 0, i32 0
  store %nyx_string* %186, %nyx_string** %187
  %188 = getelementptr %Value, %Value* %184, i32 0, i32 1
  store i64 0, i64* %188
  %189 = getelementptr %Value, %Value* %184, i32 0, i32 2
  store double 0.0, double* %189
  %190 = getelementptr %Value, %Value* %184, i32 0, i32 3
  store i1 0, i1* %190
  %191 = getelementptr [1 x i8], [1 x i8]* @.str18, i32 0, i32 0
  %192 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str18.c, i8* %191)
  %193 = getelementptr %Value, %Value* %184, i32 0, i32 4
  store %nyx_string* %192, %nyx_string** %193
  %194 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %195 = getelementptr %Value, %Value* %184, i32 0, i32 5
  store { i64, i8* }* %194, { i64, i8* }** %195
  %196 = load { i64, i8* }*, { i64, i8* }** %180
  %197 = getelementptr %Value, %Value* %184, i32 0, i32 6
  store { i64, i8* }* %196, { i64, i8* }** %197
  %198 = getelementptr [1 x i8], [1 x i8]* @.str19, i32 0, i32 0
  %199 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str19.c, i8* %198)
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
  %227 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str20.c, i8* %226)
  %228 = getelementptr %Value, %Value* %225, i32 0, i32 0
  store %nyx_string* %227, %nyx_string** %228
  %229 = getelementptr %Value, %Value* %225, i32 0, i32 1
  store i64 0, i64* %229
  %230 = getelementptr %Value, %Value* %225, i32 0, i32 2
  store double 0.0, double* %230
  %231 = getelementptr %Value, %Value* %225, i32 0, i32 3
  store i1 0, i1* %231
  %232 = getelementptr [1 x i8], [1 x i8]* @.str21, i32 0, i32 0
  %233 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str21.c, i8* %232)
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

define internal %Value @make_nil(
) {
  %248 = call i8* @nyx_map_new(i32 0)
  %249 = alloca i8*
  store i8* %248, i8** %249
  %250 = call { i64, i8* }* @nyx_array_new_ptr()
  %251 = alloca { i64, i8* }*
  store { i64, i8* }* %250, { i64, i8* }** %251
  %252 = getelementptr %Value, %Value* null, i32 1
  %253 = ptrtoint %Value* %252 to i64
  %254 = call i8* @GC_malloc(i64 %253)
  %255 = bitcast i8* %254 to %Value*
  %256 = getelementptr [4 x i8], [4 x i8]* @.str22, i32 0, i32 0
  %257 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str22.c, i8* %256)
  %258 = getelementptr %Value, %Value* %255, i32 0, i32 0
  store %nyx_string* %257, %nyx_string** %258
  %259 = getelementptr %Value, %Value* %255, i32 0, i32 1
  store i64 0, i64* %259
  %260 = getelementptr %Value, %Value* %255, i32 0, i32 2
  store double 0.0, double* %260
  %261 = getelementptr %Value, %Value* %255, i32 0, i32 3
  store i1 0, i1* %261
  %262 = getelementptr [1 x i8], [1 x i8]* @.str23, i32 0, i32 0
  %263 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str23.c, i8* %262)
  %264 = getelementptr %Value, %Value* %255, i32 0, i32 4
  store %nyx_string* %263, %nyx_string** %264
  %265 = load { i64, i8* }*, { i64, i8* }** %251
  %266 = getelementptr %Value, %Value* %255, i32 0, i32 5
  store { i64, i8* }* %265, { i64, i8* }** %266
  %267 = load { i64, i8* }*, { i64, i8* }** %251
  %268 = getelementptr %Value, %Value* %255, i32 0, i32 6
  store { i64, i8* }* %267, { i64, i8* }** %268
  %269 = getelementptr [1 x i8], [1 x i8]* @.str24, i32 0, i32 0
  %270 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str24.c, i8* %269)
  %271 = getelementptr %Value, %Value* %255, i32 0, i32 7
  store %nyx_string* %270, %nyx_string** %271
  %272 = load { i64, i8* }*, { i64, i8* }** %251
  %273 = getelementptr %Value, %Value* %255, i32 0, i32 8
  store { i64, i8* }* %272, { i64, i8* }** %273
  %274 = load i8*, i8** %249
  %275 = getelementptr %Value, %Value* %255, i32 0, i32 9
  store i8* %274, i8** %275
  %276 = load { i64, i8* }*, { i64, i8* }** %251
  %277 = getelementptr %Value, %Value* %255, i32 0, i32 10
  store { i64, i8* }* %276, { i64, i8* }** %277
  %278 = load %Value, %Value* %255
  ret %Value %278
}

define internal %Value @make_return_value(
%Value %inner_value.param) {
  %inner_value.ptr = alloca %Value
  store %Value %inner_value.param, %Value* %inner_value.ptr
  %279 = call i8* @nyx_map_new(i32 0)
  %280 = alloca i8*
  store i8* %279, i8** %280
  %281 = call { i64, i8* }* @nyx_array_new_ptr()
  %282 = alloca { i64, i8* }*
  store { i64, i8* }* %281, { i64, i8* }** %282
  %283 = load { i64, i8* }*, { i64, i8* }** %282
  %284 = load %Value, %Value* %inner_value.ptr
  %285 = getelementptr %Value, %Value* null, i32 1
  %286 = ptrtoint %Value* %285 to i64
  %287 = call i8* @GC_malloc(i64 %286)
  %288 = bitcast i8* %287 to %Value*
  store %Value %284, %Value* %288
  %289 = ptrtoint %Value* %288 to i64
  call void @nyx_array_push({ i64, i8* }* %283, i64 %289)
  %290 = getelementptr %Value, %Value* null, i32 1
  %291 = ptrtoint %Value* %290 to i64
  %292 = call i8* @GC_malloc(i64 %291)
  %293 = bitcast i8* %292 to %Value*
  %294 = getelementptr [7 x i8], [7 x i8]* @.str25, i32 0, i32 0
  %295 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str25.c, i8* %294)
  %296 = getelementptr %Value, %Value* %293, i32 0, i32 0
  store %nyx_string* %295, %nyx_string** %296
  %297 = getelementptr %Value, %Value* %293, i32 0, i32 1
  store i64 0, i64* %297
  %298 = getelementptr %Value, %Value* %293, i32 0, i32 2
  store double 0.0, double* %298
  %299 = getelementptr %Value, %Value* %293, i32 0, i32 3
  store i1 0, i1* %299
  %300 = getelementptr [1 x i8], [1 x i8]* @.str26, i32 0, i32 0
  %301 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str26.c, i8* %300)
  %302 = getelementptr %Value, %Value* %293, i32 0, i32 4
  store %nyx_string* %301, %nyx_string** %302
  %303 = load { i64, i8* }*, { i64, i8* }** %282
  %304 = getelementptr %Value, %Value* %293, i32 0, i32 5
  store { i64, i8* }* %303, { i64, i8* }** %304
  %305 = call { i64, i8* }* @nyx_array_new_ptr()
  %306 = getelementptr %Value, %Value* %293, i32 0, i32 6
  store { i64, i8* }* %305, { i64, i8* }** %306
  %307 = getelementptr [1 x i8], [1 x i8]* @.str27, i32 0, i32 0
  %308 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str27.c, i8* %307)
  %309 = getelementptr %Value, %Value* %293, i32 0, i32 7
  store %nyx_string* %308, %nyx_string** %309
  %310 = call { i64, i8* }* @nyx_array_new_ptr()
  %311 = getelementptr %Value, %Value* %293, i32 0, i32 8
  store { i64, i8* }* %310, { i64, i8* }** %311
  %312 = load i8*, i8** %280
  %313 = getelementptr %Value, %Value* %293, i32 0, i32 9
  store i8* %312, i8** %313
  %314 = call { i64, i8* }* @nyx_array_new_ptr()
  %315 = getelementptr %Value, %Value* %293, i32 0, i32 10
  store { i64, i8* }* %314, { i64, i8* }** %315
  %316 = load %Value, %Value* %293
  ret %Value %316
}

define internal %Value @eval_return(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %317 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %318 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %317)
  %319 = alloca { i64, i8* }*
  store { i64, i8* }* %318, { i64, i8* }** %319
  %320 = load { i64, i8* }*, { i64, i8* }** %319
  %321 = call i64 @nyx_array_get({ i64, i8* }* %320, i64 0)
  %322 = inttoptr i64 %321 to { i64, i8* }*
  %323 = alloca { i64, i8* }*
  store { i64, i8* }* %322, { i64, i8* }** %323
  %324 = load { i64, i8* }*, { i64, i8* }** %323
  %325 = load %Environment, %Environment* %env.ptr
  %326 = call %Value @eval_expr({ i64, i8* }* %324, %Environment %325)
  %327 = alloca %Value
  store %Value %326, %Value* %327
  %328 = load %Value, %Value* %327
  %329 = call %Value @make_return_value(%Value %328)
  ret %Value %329
}

define internal i64 @value_to_int(
%Value %v.param) {
  %v.ptr = alloca %Value
  store %Value %v.param, %Value* %v.ptr
  %330 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %331 = load %nyx_string*, %nyx_string** %330
  %332 = getelementptr [4 x i8], [4 x i8]* @.str28, i32 0, i32 0
  %333 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str28.c, i8* %332)
  %334 = call i1 @nyx_string_equals(%nyx_string* %331, %nyx_string* %333)
  br i1 %334, label %then3, label %else4
then3:
  %335 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 1
  %336 = load i64, i64* %335
  ret i64 %336
else4:
  br label %merge5
merge5:
  ret i64 0
}

define internal double @value_to_float(
%Value %v.param) {
  %v.ptr = alloca %Value
  store %Value %v.param, %Value* %v.ptr
  %337 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %338 = load %nyx_string*, %nyx_string** %337
  %339 = getelementptr [6 x i8], [6 x i8]* @.str29, i32 0, i32 0
  %340 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str29.c, i8* %339)
  %341 = call i1 @nyx_string_equals(%nyx_string* %338, %nyx_string* %340)
  br i1 %341, label %then6, label %else7
then6:
  %342 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 2
  %343 = load double, double* %342
  ret double %343
else7:
  br label %merge8
merge8:
  %344 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %345 = load %nyx_string*, %nyx_string** %344
  %346 = getelementptr [4 x i8], [4 x i8]* @.str30, i32 0, i32 0
  %347 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str30.c, i8* %346)
  %348 = call i1 @nyx_string_equals(%nyx_string* %345, %nyx_string* %347)
  br i1 %348, label %then9, label %else10
then9:
  %349 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 1
  %350 = load i64, i64* %349
  %351 = sitofp i64 %350 to double
  %352 = alloca double
  store double %351, double* %352
  %353 = load double, double* %352
  ret double %353
else10:
  br label %merge11
merge11:
  ret double 0.0
}

define internal i1 @value_to_bool(
%Value %v.param) {
  %v.ptr = alloca %Value
  store %Value %v.param, %Value* %v.ptr
  %354 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %355 = load %nyx_string*, %nyx_string** %354
  %356 = getelementptr [5 x i8], [5 x i8]* @.str31, i32 0, i32 0
  %357 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str31.c, i8* %356)
  %358 = call i1 @nyx_string_equals(%nyx_string* %355, %nyx_string* %357)
  br i1 %358, label %then12, label %else13
then12:
  %359 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 3
  %360 = load i1, i1* %359
  ret i1 %360
else13:
  br label %merge14
merge14:
  ret i1 0
}

define internal %nyx_string* @value_to_string(
%Value %v.param) {
  %v.ptr = alloca %Value
  store %Value %v.param, %Value* %v.ptr
  %361 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %362 = load %nyx_string*, %nyx_string** %361
  %363 = getelementptr [4 x i8], [4 x i8]* @.str32, i32 0, i32 0
  %364 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str32.c, i8* %363)
  %365 = call i1 @nyx_string_equals(%nyx_string* %362, %nyx_string* %364)
  br i1 %365, label %then15, label %else16
then15:
  %366 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 1
  %367 = load i64, i64* %366
  %368 = call %nyx_string* @nyx_string_from_int(i64 %367)
  ret %nyx_string* %368
else16:
  br label %merge17
merge17:
  %369 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %370 = load %nyx_string*, %nyx_string** %369
  %371 = getelementptr [6 x i8], [6 x i8]* @.str33, i32 0, i32 0
  %372 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str33.c, i8* %371)
  %373 = call i1 @nyx_string_equals(%nyx_string* %370, %nyx_string* %372)
  br i1 %373, label %then18, label %else19
then18:
  %374 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 2
  %375 = load double, double* %374
  %376 = call %nyx_string* @nyx_string_from_float(double %375)
  ret %nyx_string* %376
else19:
  br label %merge20
merge20:
  %377 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %378 = load %nyx_string*, %nyx_string** %377
  %379 = getelementptr [5 x i8], [5 x i8]* @.str34, i32 0, i32 0
  %380 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str34.c, i8* %379)
  %381 = call i1 @nyx_string_equals(%nyx_string* %378, %nyx_string* %380)
  br i1 %381, label %then21, label %else22
then21:
  %382 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 3
  %383 = load i1, i1* %382
  br i1 %383, label %then24, label %else25
then24:
  %384 = getelementptr [5 x i8], [5 x i8]* @.str35, i32 0, i32 0
  %385 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str35.c, i8* %384)
  ret %nyx_string* %385
else25:
  br label %merge26
merge26:
  %386 = getelementptr [6 x i8], [6 x i8]* @.str36, i32 0, i32 0
  %387 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str36.c, i8* %386)
  ret %nyx_string* %387
else22:
  br label %merge23
merge23:
  %388 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %389 = load %nyx_string*, %nyx_string** %388
  %390 = getelementptr [7 x i8], [7 x i8]* @.str37, i32 0, i32 0
  %391 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str37.c, i8* %390)
  %392 = call i1 @nyx_string_equals(%nyx_string* %389, %nyx_string* %391)
  br i1 %392, label %then27, label %else28
then27:
  %393 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 4
  %394 = load %nyx_string*, %nyx_string** %393
  ret %nyx_string* %394
else28:
  br label %merge29
merge29:
  %395 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %396 = load %nyx_string*, %nyx_string** %395
  %397 = getelementptr [4 x i8], [4 x i8]* @.str38, i32 0, i32 0
  %398 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str38.c, i8* %397)
  %399 = call i1 @nyx_string_equals(%nyx_string* %396, %nyx_string* %398)
  br i1 %399, label %then30, label %else31
then30:
  %400 = getelementptr [4 x i8], [4 x i8]* @.str39, i32 0, i32 0
  %401 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str39.c, i8* %400)
  ret %nyx_string* %401
else31:
  br label %merge32
merge32:
  %402 = getelementptr [2 x i8], [2 x i8]* @.str40, i32 0, i32 0
  %403 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str40.c, i8* %402)
  %404 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %405 = load %nyx_string*, %nyx_string** %404
  %406 = call %nyx_string* @nyx_string_concat(%nyx_string* %403, %nyx_string* %405)
  %407 = getelementptr [2 x i8], [2 x i8]* @.str41, i32 0, i32 0
  %408 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str41.c, i8* %407)
  %409 = call %nyx_string* @nyx_string_concat(%nyx_string* %406, %nyx_string* %408)
  ret %nyx_string* %409
}

define internal i1 @is_truthy(
%Value %v.param) {
  %v.ptr = alloca %Value
  store %Value %v.param, %Value* %v.ptr
  %410 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %411 = load %nyx_string*, %nyx_string** %410
  %412 = getelementptr [5 x i8], [5 x i8]* @.str42, i32 0, i32 0
  %413 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str42.c, i8* %412)
  %414 = call i1 @nyx_string_equals(%nyx_string* %411, %nyx_string* %413)
  br i1 %414, label %then33, label %else34
then33:
  %415 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 3
  %416 = load i1, i1* %415
  ret i1 %416
else34:
  br label %merge35
merge35:
  %417 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %418 = load %nyx_string*, %nyx_string** %417
  %419 = getelementptr [4 x i8], [4 x i8]* @.str43, i32 0, i32 0
  %420 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str43.c, i8* %419)
  %421 = call i1 @nyx_string_equals(%nyx_string* %418, %nyx_string* %420)
  br i1 %421, label %then36, label %else37
then36:
  ret i1 0
else37:
  br label %merge38
merge38:
  %422 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %423 = load %nyx_string*, %nyx_string** %422
  %424 = getelementptr [4 x i8], [4 x i8]* @.str44, i32 0, i32 0
  %425 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str44.c, i8* %424)
  %426 = call i1 @nyx_string_equals(%nyx_string* %423, %nyx_string* %425)
  br i1 %426, label %then39, label %else40
then39:
  %427 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 1
  %428 = load i64, i64* %427
  %429 = icmp ne i64 %428, 0
  ret i1 %429
else40:
  br label %merge41
merge41:
  ret i1 1
}

define internal i1 @values_equal(
%Value %a.param, %Value %b.param) {
  %a.ptr = alloca %Value
  store %Value %a.param, %Value* %a.ptr
  %b.ptr = alloca %Value
  store %Value %b.param, %Value* %b.ptr
  %430 = getelementptr %Value, %Value* %a.ptr, i32 0, i32 0
  %431 = load %nyx_string*, %nyx_string** %430
  %432 = getelementptr %Value, %Value* %b.ptr, i32 0, i32 0
  %433 = load %nyx_string*, %nyx_string** %432
  %434 = call i1 @nyx_string_equals(%nyx_string* %431, %nyx_string* %433)
  %435 = xor i1 %434, true
  br i1 %435, label %then42, label %else43
then42:
  ret i1 0
else43:
  br label %merge44
merge44:
  %436 = getelementptr %Value, %Value* %a.ptr, i32 0, i32 0
  %437 = load %nyx_string*, %nyx_string** %436
  %438 = getelementptr [4 x i8], [4 x i8]* @.str45, i32 0, i32 0
  %439 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str45.c, i8* %438)
  %440 = call i1 @nyx_string_equals(%nyx_string* %437, %nyx_string* %439)
  br i1 %440, label %then45, label %else46
then45:
  %441 = getelementptr %Value, %Value* %a.ptr, i32 0, i32 1
  %442 = load i64, i64* %441
  %443 = getelementptr %Value, %Value* %b.ptr, i32 0, i32 1
  %444 = load i64, i64* %443
  %445 = icmp eq i64 %442, %444
  ret i1 %445
else46:
  br label %merge47
merge47:
  %446 = getelementptr %Value, %Value* %a.ptr, i32 0, i32 0
  %447 = load %nyx_string*, %nyx_string** %446
  %448 = getelementptr [5 x i8], [5 x i8]* @.str46, i32 0, i32 0
  %449 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str46.c, i8* %448)
  %450 = call i1 @nyx_string_equals(%nyx_string* %447, %nyx_string* %449)
  br i1 %450, label %then48, label %else49
then48:
  %451 = getelementptr %Value, %Value* %a.ptr, i32 0, i32 3
  %452 = load i1, i1* %451
  %453 = getelementptr %Value, %Value* %b.ptr, i32 0, i32 3
  %454 = load i1, i1* %453
  %455 = icmp eq i1 %452, %454
  ret i1 %455
else49:
  br label %merge50
merge50:
  %456 = getelementptr %Value, %Value* %a.ptr, i32 0, i32 0
  %457 = load %nyx_string*, %nyx_string** %456
  %458 = getelementptr [7 x i8], [7 x i8]* @.str47, i32 0, i32 0
  %459 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str47.c, i8* %458)
  %460 = call i1 @nyx_string_equals(%nyx_string* %457, %nyx_string* %459)
  br i1 %460, label %then51, label %else52
then51:
  %461 = getelementptr %Value, %Value* %a.ptr, i32 0, i32 4
  %462 = load %nyx_string*, %nyx_string** %461
  %463 = getelementptr %Value, %Value* %b.ptr, i32 0, i32 4
  %464 = load %nyx_string*, %nyx_string** %463
  %465 = call i1 @nyx_string_equals(%nyx_string* %462, %nyx_string* %464)
  ret i1 %465
else52:
  br label %merge53
merge53:
  ret i1 0
}

define internal i64 @print_value(
%Value %v.param) {
  %v.ptr = alloca %Value
  store %Value %v.param, %Value* %v.ptr
  %466 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %467 = load %nyx_string*, %nyx_string** %466
  %468 = getelementptr [4 x i8], [4 x i8]* @.str48, i32 0, i32 0
  %469 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str48.c, i8* %468)
  %470 = call i1 @nyx_string_equals(%nyx_string* %467, %nyx_string* %469)
  br i1 %470, label %then54, label %else55
then54:
  %471 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 1
  %472 = load i64, i64* %471
  call void @nyx_print_int(i64 %472)
  br label %merge56
else55:
  %473 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %474 = load %nyx_string*, %nyx_string** %473
  %475 = getelementptr [6 x i8], [6 x i8]* @.str49, i32 0, i32 0
  %476 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str49.c, i8* %475)
  %477 = call i1 @nyx_string_equals(%nyx_string* %474, %nyx_string* %476)
  br i1 %477, label %then57, label %else58
then57:
  %478 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 2
  %479 = load double, double* %478
  call void @nyx_print_float(double %479)
  br label %merge59
else58:
  %480 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %481 = load %nyx_string*, %nyx_string** %480
  %482 = getelementptr [5 x i8], [5 x i8]* @.str50, i32 0, i32 0
  %483 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str50.c, i8* %482)
  %484 = call i1 @nyx_string_equals(%nyx_string* %481, %nyx_string* %483)
  br i1 %484, label %then60, label %else61
then60:
  %485 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 3
  %486 = load i1, i1* %485
  br i1 %486, label %then63, label %else64
then63:
  %487 = getelementptr [5 x i8], [5 x i8]* @.str51, i32 0, i32 0
  %488 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str51.c, i8* %487)
  %489 = call i8* @nyx_string_to_cstr(%nyx_string* %488)
  call void @nyx_print_string(i8* %489)
  br label %merge65
else64:
  %490 = getelementptr [6 x i8], [6 x i8]* @.str52, i32 0, i32 0
  %491 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str52.c, i8* %490)
  %492 = call i8* @nyx_string_to_cstr(%nyx_string* %491)
  call void @nyx_print_string(i8* %492)
  br label %merge65
merge65:
  br label %merge62
else61:
  %493 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %494 = load %nyx_string*, %nyx_string** %493
  %495 = getelementptr [7 x i8], [7 x i8]* @.str53, i32 0, i32 0
  %496 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str53.c, i8* %495)
  %497 = call i1 @nyx_string_equals(%nyx_string* %494, %nyx_string* %496)
  br i1 %497, label %then66, label %else67
then66:
  %498 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 4
  %499 = load %nyx_string*, %nyx_string** %498
  %500 = call i8* @nyx_string_to_cstr(%nyx_string* %499)
  call void @nyx_print_string(i8* %500)
  br label %merge68
else67:
  %501 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %502 = load %nyx_string*, %nyx_string** %501
  %503 = getelementptr [4 x i8], [4 x i8]* @.str54, i32 0, i32 0
  %504 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str54.c, i8* %503)
  %505 = call i1 @nyx_string_equals(%nyx_string* %502, %nyx_string* %504)
  br i1 %505, label %then69, label %else70
then69:
  %506 = getelementptr [4 x i8], [4 x i8]* @.str55, i32 0, i32 0
  %507 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str55.c, i8* %506)
  %508 = call i8* @nyx_string_to_cstr(%nyx_string* %507)
  call void @nyx_print_string(i8* %508)
  br label %merge71
else70:
  %509 = getelementptr [2 x i8], [2 x i8]* @.str56, i32 0, i32 0
  %510 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str56.c, i8* %509)
  %511 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %512 = load %nyx_string*, %nyx_string** %511
  %513 = call %nyx_string* @nyx_string_concat(%nyx_string* %510, %nyx_string* %512)
  %514 = getelementptr [2 x i8], [2 x i8]* @.str57, i32 0, i32 0
  %515 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str57.c, i8* %514)
  %516 = call %nyx_string* @nyx_string_concat(%nyx_string* %513, %nyx_string* %515)
  %517 = call i8* @nyx_string_to_cstr(%nyx_string* %516)
  call void @nyx_print_string(i8* %517)
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
  ret i64 0
}

define internal { i64, i8* }* @get_func_params(
%Value %func_value.param) {
  %func_value.ptr = alloca %Value
  store %Value %func_value.param, %Value* %func_value.ptr
  %518 = getelementptr %Value, %Value* %func_value.ptr, i32 0, i32 6
  %519 = load { i64, i8* }*, { i64, i8* }** %518
  ret { i64, i8* }* %519
}

define internal %nyx_string* @get_func_body_type(
%Value %func_value.param) {
  %func_value.ptr = alloca %Value
  store %Value %func_value.param, %Value* %func_value.ptr
  %520 = getelementptr %Value, %Value* %func_value.ptr, i32 0, i32 7
  %521 = load %nyx_string*, %nyx_string** %520
  ret %nyx_string* %521
}

define internal { i64, i8* }* @get_func_body_data(
%Value %func_value.param) {
  %func_value.ptr = alloca %Value
  store %Value %func_value.param, %Value* %func_value.ptr
  %522 = getelementptr %Value, %Value* %func_value.ptr, i32 0, i32 8
  %523 = load { i64, i8* }*, { i64, i8* }** %522
  ret { i64, i8* }* %523
}

define internal i8* @get_func_env_bindings(
%Value %func_value.param) {
  %func_value.ptr = alloca %Value
  store %Value %func_value.param, %Value* %func_value.ptr
  %524 = getelementptr %Value, %Value* %func_value.ptr, i32 0, i32 9
  %525 = load i8*, i8** %524
  ret i8* %525
}

define internal { i64, i8* }* @get_func_env_parent(
%Value %func_value.param) {
  %func_value.ptr = alloca %Value
  store %Value %func_value.param, %Value* %func_value.ptr
  %526 = getelementptr %Value, %Value* %func_value.ptr, i32 0, i32 10
  %527 = load { i64, i8* }*, { i64, i8* }** %526
  ret { i64, i8* }* %527
}

define internal %Environment @make_env(
) {
  %528 = call i8* @nyx_map_new(i32 0)
  %529 = alloca i8*
  store i8* %528, i8** %529
  %530 = call { i64, i8* }* @nyx_array_new_ptr()
  %531 = alloca { i64, i8* }*
  store { i64, i8* }* %530, { i64, i8* }** %531
  %532 = getelementptr %Environment, %Environment* null, i32 1
  %533 = ptrtoint %Environment* %532 to i64
  %534 = call i8* @GC_malloc(i64 %533)
  %535 = bitcast i8* %534 to %Environment*
  %536 = load i8*, i8** %529
  %537 = getelementptr %Environment, %Environment* %535, i32 0, i32 0
  store i8* %536, i8** %537
  %538 = load { i64, i8* }*, { i64, i8* }** %531
  %539 = getelementptr %Environment, %Environment* %535, i32 0, i32 1
  store { i64, i8* }* %538, { i64, i8* }** %539
  %540 = load %Environment, %Environment* %535
  ret %Environment %540
}

define internal %Environment @make_child_env(
%Environment %parent.param) {
  %parent.ptr = alloca %Environment
  store %Environment %parent.param, %Environment* %parent.ptr
  %541 = call i8* @nyx_map_new(i32 0)
  %542 = alloca i8*
  store i8* %541, i8** %542
  %543 = call { i64, i8* }* @nyx_array_new_ptr()
  %544 = alloca { i64, i8* }*
  store { i64, i8* }* %543, { i64, i8* }** %544
  %545 = load { i64, i8* }*, { i64, i8* }** %544
  %546 = load %Environment, %Environment* %parent.ptr
  %547 = getelementptr %Environment, %Environment* null, i32 1
  %548 = ptrtoint %Environment* %547 to i64
  %549 = call i8* @GC_malloc(i64 %548)
  %550 = bitcast i8* %549 to %Environment*
  store %Environment %546, %Environment* %550
  %551 = ptrtoint %Environment* %550 to i64
  call void @nyx_array_push({ i64, i8* }* %545, i64 %551)
  %552 = getelementptr %Environment, %Environment* null, i32 1
  %553 = ptrtoint %Environment* %552 to i64
  %554 = call i8* @GC_malloc(i64 %553)
  %555 = bitcast i8* %554 to %Environment*
  %556 = load i8*, i8** %542
  %557 = getelementptr %Environment, %Environment* %555, i32 0, i32 0
  store i8* %556, i8** %557
  %558 = load { i64, i8* }*, { i64, i8* }** %544
  %559 = getelementptr %Environment, %Environment* %555, i32 0, i32 1
  store { i64, i8* }* %558, { i64, i8* }** %559
  %560 = load %Environment, %Environment* %555
  ret %Environment %560
}

define internal i64 @env_define(
%Environment %env.param, %nyx_string* %name.param, %Value %value.param) {
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %value.ptr = alloca %Value
  store %Value %value.param, %Value* %value.ptr
  %561 = getelementptr %Environment, %Environment* %env.ptr, i32 0, i32 0
  %562 = load i8*, i8** %561
  %563 = load %nyx_string*, %nyx_string** %name.ptr
  %564 = load %Value, %Value* %value.ptr
  %565 = call i8* @nyx_string_to_cstr(%nyx_string* %563)
  %566 = getelementptr %Value, %Value* null, i32 1
  %567 = ptrtoint %Value* %566 to i64
  %568 = call i8* @GC_malloc(i64 %567)
  %569 = bitcast i8* %568 to %Value*
  store %Value %564, %Value* %569
  %570 = ptrtoint %Value* %569 to i64
  call void @nyx_map_insert_int(i8* %562, i8* %565, i64 %570)
  ret i64 0
}

define internal i1 @env_has(
%Environment %env.param, %nyx_string* %name.param) {
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %571 = getelementptr %Environment, %Environment* %env.ptr, i32 0, i32 0
  %572 = load i8*, i8** %571
  %573 = load %nyx_string*, %nyx_string** %name.ptr
  %574 = call i8* @nyx_string_to_cstr(%nyx_string* %573)
  %575 = call i1 @nyx_map_contains_str(i8* %572, i8* %574)
  br i1 %575, label %then72, label %else73
then72:
  ret i1 1
else73:
  br label %merge74
merge74:
  %576 = getelementptr %Environment, %Environment* %env.ptr, i32 0, i32 1
  %577 = load { i64, i8* }*, { i64, i8* }** %576
  %578 = call i64 @nyx_array_length({ i64, i8* }* %577)
  %579 = icmp sgt i64 %578, 0
  br i1 %579, label %then75, label %else76
then75:
  %580 = getelementptr %Environment, %Environment* %env.ptr, i32 0, i32 1
  %581 = load { i64, i8* }*, { i64, i8* }** %580
  %582 = call i64 @nyx_array_get({ i64, i8* }* %581, i64 0)
  %583 = inttoptr i64 %582 to %Environment*
  %584 = load %Environment, %Environment* %583
  %585 = alloca %Environment
  store %Environment %584, %Environment* %585
  %586 = load %Environment, %Environment* %585
  %587 = load %nyx_string*, %nyx_string** %name.ptr
  %588 = call i1 @env_has(%Environment %586, %nyx_string* %587)
  ret i1 %588
else76:
  br label %merge77
merge77:
  ret i1 0
}

define internal %Value @env_get(
%Environment %env.param, %nyx_string* %name.param) {
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %589 = getelementptr %Environment, %Environment* %env.ptr, i32 0, i32 0
  %590 = load i8*, i8** %589
  %591 = load %nyx_string*, %nyx_string** %name.ptr
  %592 = call i8* @nyx_string_to_cstr(%nyx_string* %591)
  %593 = call i1 @nyx_map_contains_str(i8* %590, i8* %592)
  br i1 %593, label %then78, label %else79
then78:
  %594 = getelementptr %Environment, %Environment* %env.ptr, i32 0, i32 0
  %595 = load i8*, i8** %594
  %596 = load %nyx_string*, %nyx_string** %name.ptr
  %597 = call i8* @nyx_string_to_cstr(%nyx_string* %596)
  %598 = call i64 @nyx_map_get_int(i8* %595, i8* %597)
  %599 = inttoptr i64 %598 to %Value*
  %600 = load %Value, %Value* %599
  ret %Value %600
else79:
  br label %merge80
merge80:
  %601 = getelementptr %Environment, %Environment* %env.ptr, i32 0, i32 1
  %602 = load { i64, i8* }*, { i64, i8* }** %601
  %603 = call i64 @nyx_array_length({ i64, i8* }* %602)
  %604 = icmp sgt i64 %603, 0
  br i1 %604, label %then81, label %else82
then81:
  %605 = getelementptr %Environment, %Environment* %env.ptr, i32 0, i32 1
  %606 = load { i64, i8* }*, { i64, i8* }** %605
  %607 = call i64 @nyx_array_get({ i64, i8* }* %606, i64 0)
  %608 = inttoptr i64 %607 to %Environment*
  %609 = load %Environment, %Environment* %608
  %610 = alloca %Environment
  store %Environment %609, %Environment* %610
  %611 = load %Environment, %Environment* %610
  %612 = load %nyx_string*, %nyx_string** %name.ptr
  %613 = call %Value @env_get(%Environment %611, %nyx_string* %612)
  ret %Value %613
else82:
  br label %merge83
merge83:
  %614 = getelementptr [8 x i8], [8 x i8]* @.str58, i32 0, i32 0
  %615 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str58.c, i8* %614)
  %616 = getelementptr [23 x i8], [23 x i8]* @.str59, i32 0, i32 0
  %617 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str59.c, i8* %616)
  %618 = load %nyx_string*, %nyx_string** %name.ptr
  %619 = call %nyx_string* @nyx_string_concat(%nyx_string* %617, %nyx_string* %618)
  %620 = getelementptr [21 x i8], [21 x i8]* @.str60, i32 0, i32 0
  %621 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str60.c, i8* %620)
  %622 = load %nyx_string*, %nyx_string** %name.ptr
  %623 = call %nyx_string* @nyx_string_concat(%nyx_string* %621, %nyx_string* %622)
  %624 = call i64 @interp_err(%nyx_string* %615, %nyx_string* %619, %nyx_string* %623)
  %625 = call %Value @make_nil()
  ret %Value %625
}

define internal i1 @env_set(
%Environment %env.param, %nyx_string* %name.param, %Value %value.param) {
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %value.ptr = alloca %Value
  store %Value %value.param, %Value* %value.ptr
  %626 = getelementptr %Environment, %Environment* %env.ptr, i32 0, i32 0
  %627 = load i8*, i8** %626
  %628 = load %nyx_string*, %nyx_string** %name.ptr
  %629 = call i8* @nyx_string_to_cstr(%nyx_string* %628)
  %630 = call i1 @nyx_map_contains_str(i8* %627, i8* %629)
  br i1 %630, label %then84, label %else85
then84:
  %631 = getelementptr %Environment, %Environment* %env.ptr, i32 0, i32 0
  %632 = load i8*, i8** %631
  %633 = load %nyx_string*, %nyx_string** %name.ptr
  %634 = load %Value, %Value* %value.ptr
  %635 = call i8* @nyx_string_to_cstr(%nyx_string* %633)
  %636 = getelementptr %Value, %Value* null, i32 1
  %637 = ptrtoint %Value* %636 to i64
  %638 = call i8* @GC_malloc(i64 %637)
  %639 = bitcast i8* %638 to %Value*
  store %Value %634, %Value* %639
  %640 = ptrtoint %Value* %639 to i64
  call void @nyx_map_insert_int(i8* %632, i8* %635, i64 %640)
  ret i1 1
else85:
  br label %merge86
merge86:
  %641 = getelementptr %Environment, %Environment* %env.ptr, i32 0, i32 1
  %642 = load { i64, i8* }*, { i64, i8* }** %641
  %643 = call i64 @nyx_array_length({ i64, i8* }* %642)
  %644 = icmp sgt i64 %643, 0
  br i1 %644, label %then87, label %else88
then87:
  %645 = getelementptr %Environment, %Environment* %env.ptr, i32 0, i32 1
  %646 = load { i64, i8* }*, { i64, i8* }** %645
  %647 = call i64 @nyx_array_get({ i64, i8* }* %646, i64 0)
  %648 = inttoptr i64 %647 to %Environment*
  %649 = load %Environment, %Environment* %648
  %650 = alloca %Environment
  store %Environment %649, %Environment* %650
  %651 = load %Environment, %Environment* %650
  %652 = load %nyx_string*, %nyx_string** %name.ptr
  %653 = load %Value, %Value* %value.ptr
  %654 = call i1 @env_set(%Environment %651, %nyx_string* %652, %Value %653)
  ret i1 %654
else88:
  br label %merge89
merge89:
  ret i1 0
}

define internal %Value @eval_expr(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %655 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %656 = call %nyx_string* @astnode_get_type({ i64, i8* }* %655)
  %657 = alloca %nyx_string*
  store %nyx_string* %656, %nyx_string** %657
  %658 = load %nyx_string*, %nyx_string** %657
  %659 = getelementptr [7 x i8], [7 x i8]* @.str61, i32 0, i32 0
  %660 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str61.c, i8* %659)
  %661 = call i1 @nyx_string_equals(%nyx_string* %658, %nyx_string* %660)
  br i1 %661, label %then90, label %else91
then90:
  %662 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %663 = call %Value @eval_number({ i64, i8* }* %662)
  ret %Value %663
else91:
  br label %merge92
merge92:
  %664 = load %nyx_string*, %nyx_string** %657
  %665 = getelementptr [8 x i8], [8 x i8]* @.str62, i32 0, i32 0
  %666 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str62.c, i8* %665)
  %667 = call i1 @nyx_string_equals(%nyx_string* %664, %nyx_string* %666)
  br i1 %667, label %then93, label %else94
then93:
  %668 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %669 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %668)
  %670 = alloca { i64, i8* }*
  store { i64, i8* }* %669, { i64, i8* }** %670
  %671 = load { i64, i8* }*, { i64, i8* }** %670
  %672 = call i64 @nyx_array_get({ i64, i8* }* %671, i64 0)
  %673 = alloca i64
  store i64 %672, i64* %673
  %674 = load i64, i64* %673
  %675 = call %Value @make_int(i64 %674)
  ret %Value %675
else94:
  br label %merge95
merge95:
  %676 = load %nyx_string*, %nyx_string** %657
  %677 = getelementptr [5 x i8], [5 x i8]* @.str63, i32 0, i32 0
  %678 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str63.c, i8* %677)
  %679 = call i1 @nyx_string_equals(%nyx_string* %676, %nyx_string* %678)
  br i1 %679, label %then96, label %else97
then96:
  %680 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %681 = call %Value @eval_bool({ i64, i8* }* %680)
  ret %Value %681
else97:
  br label %merge98
merge98:
  %682 = load %nyx_string*, %nyx_string** %657
  %683 = getelementptr [7 x i8], [7 x i8]* @.str64, i32 0, i32 0
  %684 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str64.c, i8* %683)
  %685 = call i1 @nyx_string_equals(%nyx_string* %682, %nyx_string* %684)
  br i1 %685, label %then99, label %else100
then99:
  %686 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %687 = call %Value @eval_string({ i64, i8* }* %686)
  ret %Value %687
else100:
  br label %merge101
merge101:
  %688 = load %nyx_string*, %nyx_string** %657
  %689 = getelementptr [11 x i8], [11 x i8]* @.str65, i32 0, i32 0
  %690 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str65.c, i8* %689)
  %691 = call i1 @nyx_string_equals(%nyx_string* %688, %nyx_string* %690)
  br i1 %691, label %then102, label %else103
then102:
  %692 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %693 = load %Environment, %Environment* %env.ptr
  %694 = call %Value @eval_identifier({ i64, i8* }* %692, %Environment %693)
  ret %Value %694
else103:
  br label %merge104
merge104:
  %695 = load %nyx_string*, %nyx_string** %657
  %696 = getelementptr [6 x i8], [6 x i8]* @.str66, i32 0, i32 0
  %697 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str66.c, i8* %696)
  %698 = call i1 @nyx_string_equals(%nyx_string* %695, %nyx_string* %697)
  br i1 %698, label %then105, label %else106
then105:
  %699 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %700 = load %Environment, %Environment* %env.ptr
  %701 = call %Value @eval_binop({ i64, i8* }* %699, %Environment %700)
  ret %Value %701
else106:
  br label %merge107
merge107:
  %702 = load %nyx_string*, %nyx_string** %657
  %703 = getelementptr [5 x i8], [5 x i8]* @.str67, i32 0, i32 0
  %704 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str67.c, i8* %703)
  %705 = call i1 @nyx_string_equals(%nyx_string* %702, %nyx_string* %704)
  br i1 %705, label %then108, label %else109
then108:
  %706 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %707 = load %Environment, %Environment* %env.ptr
  %708 = call %Value @eval_unop({ i64, i8* }* %706, %Environment %707)
  ret %Value %708
else109:
  br label %merge110
merge110:
  %709 = load %nyx_string*, %nyx_string** %657
  %710 = getelementptr [5 x i8], [5 x i8]* @.str68, i32 0, i32 0
  %711 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str68.c, i8* %710)
  %712 = call i1 @nyx_string_equals(%nyx_string* %709, %nyx_string* %711)
  br i1 %712, label %then111, label %else112
then111:
  %713 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %714 = load %Environment, %Environment* %env.ptr
  %715 = call %Value @eval_call({ i64, i8* }* %713, %Environment %714)
  ret %Value %715
else112:
  br label %merge113
merge113:
  %716 = load %nyx_string*, %nyx_string** %657
  %717 = getelementptr [6 x i8], [6 x i8]* @.str69, i32 0, i32 0
  %718 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str69.c, i8* %717)
  %719 = call i1 @nyx_string_equals(%nyx_string* %716, %nyx_string* %718)
  br i1 %719, label %then114, label %else115
then114:
  %720 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %721 = load %Environment, %Environment* %env.ptr
  %722 = call %Value @eval_array({ i64, i8* }* %720, %Environment %721)
  ret %Value %722
else115:
  br label %merge116
merge116:
  %723 = load %nyx_string*, %nyx_string** %657
  %724 = getelementptr [6 x i8], [6 x i8]* @.str70, i32 0, i32 0
  %725 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str70.c, i8* %724)
  %726 = call i1 @nyx_string_equals(%nyx_string* %723, %nyx_string* %725)
  br i1 %726, label %then117, label %else118
then117:
  %727 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %728 = load %Environment, %Environment* %env.ptr
  %729 = call %Value @eval_index({ i64, i8* }* %727, %Environment %728)
  ret %Value %729
else118:
  br label %merge119
merge119:
  %730 = load %nyx_string*, %nyx_string** %657
  %731 = getelementptr [12 x i8], [12 x i8]* @.str71, i32 0, i32 0
  %732 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str71.c, i8* %731)
  %733 = call i1 @nyx_string_equals(%nyx_string* %730, %nyx_string* %732)
  br i1 %733, label %then120, label %else121
then120:
  %734 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %735 = load %Environment, %Environment* %env.ptr
  %736 = call %Value @eval_method_call({ i64, i8* }* %734, %Environment %735)
  ret %Value %736
else121:
  br label %merge122
merge122:
  %737 = getelementptr [8 x i8], [8 x i8]* @.str72, i32 0, i32 0
  %738 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str72.c, i8* %737)
  %739 = getelementptr [45 x i8], [45 x i8]* @.str73, i32 0, i32 0
  %740 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str73.c, i8* %739)
  %741 = load %nyx_string*, %nyx_string** %657
  %742 = call %nyx_string* @nyx_string_concat(%nyx_string* %740, %nyx_string* %741)
  %743 = getelementptr [46 x i8], [46 x i8]* @.str74, i32 0, i32 0
  %744 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str74.c, i8* %743)
  %745 = load %nyx_string*, %nyx_string** %657
  %746 = call %nyx_string* @nyx_string_concat(%nyx_string* %744, %nyx_string* %745)
  %747 = call i64 @interp_err(%nyx_string* %738, %nyx_string* %742, %nyx_string* %746)
  %748 = call %Value @make_nil()
  ret %Value %748
}

define internal %Value @eval_number(
{ i64, i8* }* %node.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %749 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %750 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %749)
  %751 = alloca { i64, i8* }*
  store { i64, i8* }* %750, { i64, i8* }** %751
  %752 = load { i64, i8* }*, { i64, i8* }** %751
  %753 = call i64 @nyx_array_get_checked({ i64, i8* }* %752, i64 0, i64 2)
  %754 = inttoptr i64 %753 to %nyx_string*
  %755 = alloca %nyx_string*
  store %nyx_string* %754, %nyx_string** %755
  %756 = load %nyx_string*, %nyx_string** %755
  %757 = getelementptr [2 x i8], [2 x i8]* @.str75, i32 0, i32 0
  %758 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str75.c, i8* %757)
  %759 = call i64 @nyx_string_index_of(%nyx_string* %756, %nyx_string* %758)
  %760 = icmp sge i64 %759, 0
  br i1 %760, label %then123, label %else124
then123:
  %761 = load %nyx_string*, %nyx_string** %755
  %762 = call double @nyx_string_to_float(%nyx_string* %761)
  %763 = alloca double
  store double %762, double* %763
  %764 = load double, double* %763
  %765 = call %Value @make_float(double %764)
  ret %Value %765
else124:
  br label %merge125
merge125:
  %766 = load %nyx_string*, %nyx_string** %755
  %767 = call i64 @nyx_string_to_int(%nyx_string* %766)
  %768 = alloca i64
  store i64 %767, i64* %768
  %769 = load i64, i64* %768
  %770 = call %Value @make_int(i64 %769)
  ret %Value %770
}

define internal %Value @eval_bool(
{ i64, i8* }* %node.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %771 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %772 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %771)
  %773 = alloca { i64, i8* }*
  store { i64, i8* }* %772, { i64, i8* }** %773
  %774 = load { i64, i8* }*, { i64, i8* }** %773
  %775 = call i64 @nyx_array_get_checked({ i64, i8* }* %774, i64 0, i64 2)
  %776 = inttoptr i64 %775 to %nyx_string*
  %777 = alloca %nyx_string*
  store %nyx_string* %776, %nyx_string** %777
  %778 = load %nyx_string*, %nyx_string** %777
  %779 = getelementptr [5 x i8], [5 x i8]* @.str76, i32 0, i32 0
  %780 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str76.c, i8* %779)
  %781 = call i1 @nyx_string_equals(%nyx_string* %778, %nyx_string* %780)
  %782 = call %Value @make_bool(i1 %781)
  ret %Value %782
}

define internal %Value @eval_string(
{ i64, i8* }* %node.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %783 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %784 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %783)
  %785 = alloca { i64, i8* }*
  store { i64, i8* }* %784, { i64, i8* }** %785
  %786 = load { i64, i8* }*, { i64, i8* }** %785
  %787 = call i64 @nyx_array_get({ i64, i8* }* %786, i64 0)
  %788 = inttoptr i64 %787 to %nyx_string*
  %789 = call %Value @make_string(%nyx_string* %788)
  ret %Value %789
}

define internal %Value @eval_identifier(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %790 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %791 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %790)
  %792 = alloca { i64, i8* }*
  store { i64, i8* }* %791, { i64, i8* }** %792
  %793 = load { i64, i8* }*, { i64, i8* }** %792
  %794 = call i64 @nyx_array_get_checked({ i64, i8* }* %793, i64 0, i64 2)
  %795 = inttoptr i64 %794 to %nyx_string*
  %796 = alloca %nyx_string*
  store %nyx_string* %795, %nyx_string** %796
  %797 = load %Environment, %Environment* %env.ptr
  %798 = load %nyx_string*, %nyx_string** %796
  %799 = call %Value @env_get(%Environment %797, %nyx_string* %798)
  ret %Value %799
}

define internal %Value @eval_binop(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %800 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %801 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %800)
  %802 = alloca { i64, i8* }*
  store { i64, i8* }* %801, { i64, i8* }** %802
  %803 = load { i64, i8* }*, { i64, i8* }** %802
  %804 = call i64 @nyx_array_get_checked({ i64, i8* }* %803, i64 0, i64 2)
  %805 = inttoptr i64 %804 to %nyx_string*
  %806 = alloca %nyx_string*
  store %nyx_string* %805, %nyx_string** %806
  %807 = load { i64, i8* }*, { i64, i8* }** %802
  %808 = call i64 @nyx_array_get({ i64, i8* }* %807, i64 1)
  %809 = inttoptr i64 %808 to { i64, i8* }*
  %810 = alloca { i64, i8* }*
  store { i64, i8* }* %809, { i64, i8* }** %810
  %811 = load { i64, i8* }*, { i64, i8* }** %810
  %812 = load %Environment, %Environment* %env.ptr
  %813 = call %Value @eval_expr({ i64, i8* }* %811, %Environment %812)
  %814 = alloca %Value
  store %Value %813, %Value* %814
  %815 = load { i64, i8* }*, { i64, i8* }** %802
  %816 = call i64 @nyx_array_get({ i64, i8* }* %815, i64 2)
  %817 = inttoptr i64 %816 to { i64, i8* }*
  %818 = alloca { i64, i8* }*
  store { i64, i8* }* %817, { i64, i8* }** %818
  %819 = load { i64, i8* }*, { i64, i8* }** %818
  %820 = load %Environment, %Environment* %env.ptr
  %821 = call %Value @eval_expr({ i64, i8* }* %819, %Environment %820)
  %822 = alloca %Value
  store %Value %821, %Value* %822
  %823 = alloca i1
  store i1 true, i1* %823
  %824 = getelementptr %Value, %Value* %814, i32 0, i32 0
  %825 = load %nyx_string*, %nyx_string** %824
  %826 = getelementptr [6 x i8], [6 x i8]* @.str77, i32 0, i32 0
  %827 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str77.c, i8* %826)
  %828 = call i1 @nyx_string_equals(%nyx_string* %825, %nyx_string* %827)
  br i1 %828, label %sc_or_end127, label %sc_or_rhs126
sc_or_rhs126:
  %829 = getelementptr %Value, %Value* %822, i32 0, i32 0
  %830 = load %nyx_string*, %nyx_string** %829
  %831 = getelementptr [6 x i8], [6 x i8]* @.str78, i32 0, i32 0
  %832 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str78.c, i8* %831)
  %833 = call i1 @nyx_string_equals(%nyx_string* %830, %nyx_string* %832)
  store i1 %833, i1* %823
  br label %sc_or_end127
sc_or_end127:
  %834 = load i1, i1* %823
  %835 = alloca i1
  store i1 %834, i1* %835
  %836 = load %nyx_string*, %nyx_string** %806
  %837 = getelementptr [5 x i8], [5 x i8]* @.str79, i32 0, i32 0
  %838 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str79.c, i8* %837)
  %839 = call i1 @nyx_string_equals(%nyx_string* %836, %nyx_string* %838)
  br i1 %839, label %then128, label %else129
then128:
  %840 = getelementptr %Value, %Value* %814, i32 0, i32 0
  %841 = load %nyx_string*, %nyx_string** %840
  %842 = getelementptr [7 x i8], [7 x i8]* @.str80, i32 0, i32 0
  %843 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str80.c, i8* %842)
  %844 = call i1 @nyx_string_equals(%nyx_string* %841, %nyx_string* %843)
  br i1 %844, label %then131, label %else132
then131:
  %845 = load %Value, %Value* %814
  %846 = call %nyx_string* @value_to_string(%Value %845)
  %847 = alloca %nyx_string*
  store %nyx_string* %846, %nyx_string** %847
  %848 = load %Value, %Value* %822
  %849 = call %nyx_string* @value_to_string(%Value %848)
  %850 = alloca %nyx_string*
  store %nyx_string* %849, %nyx_string** %850
  %851 = load %nyx_string*, %nyx_string** %847
  %852 = load %nyx_string*, %nyx_string** %850
  %853 = call %nyx_string* @nyx_string_concat(%nyx_string* %851, %nyx_string* %852)
  %854 = call %Value @make_string(%nyx_string* %853)
  ret %Value %854
else132:
  br label %merge133
merge133:
  %855 = load i1, i1* %835
  br i1 %855, label %then134, label %else135
then134:
  %856 = load %Value, %Value* %814
  %857 = call double @value_to_float(%Value %856)
  %858 = load %Value, %Value* %822
  %859 = call double @value_to_float(%Value %858)
  %860 = fadd double %857, %859
  %861 = call %Value @make_float(double %860)
  ret %Value %861
else135:
  br label %merge136
merge136:
  %862 = load %Value, %Value* %814
  %863 = call i64 @value_to_int(%Value %862)
  %864 = load %Value, %Value* %822
  %865 = call i64 @value_to_int(%Value %864)
  %866 = add i64 %863, %865
  %867 = call %Value @make_int(i64 %866)
  ret %Value %867
else129:
  br label %merge130
merge130:
  %868 = load %nyx_string*, %nyx_string** %806
  %869 = getelementptr [6 x i8], [6 x i8]* @.str81, i32 0, i32 0
  %870 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str81.c, i8* %869)
  %871 = call i1 @nyx_string_equals(%nyx_string* %868, %nyx_string* %870)
  br i1 %871, label %then137, label %else138
then137:
  %872 = load i1, i1* %835
  br i1 %872, label %then140, label %else141
then140:
  %873 = load %Value, %Value* %814
  %874 = call double @value_to_float(%Value %873)
  %875 = load %Value, %Value* %822
  %876 = call double @value_to_float(%Value %875)
  %877 = fsub double %874, %876
  %878 = call %Value @make_float(double %877)
  ret %Value %878
else141:
  br label %merge142
merge142:
  %879 = load %Value, %Value* %814
  %880 = call i64 @value_to_int(%Value %879)
  %881 = load %Value, %Value* %822
  %882 = call i64 @value_to_int(%Value %881)
  %883 = sub i64 %880, %882
  %884 = call %Value @make_int(i64 %883)
  ret %Value %884
else138:
  br label %merge139
merge139:
  %885 = load %nyx_string*, %nyx_string** %806
  %886 = getelementptr [5 x i8], [5 x i8]* @.str82, i32 0, i32 0
  %887 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str82.c, i8* %886)
  %888 = call i1 @nyx_string_equals(%nyx_string* %885, %nyx_string* %887)
  br i1 %888, label %then143, label %else144
then143:
  %889 = load i1, i1* %835
  br i1 %889, label %then146, label %else147
then146:
  %890 = load %Value, %Value* %814
  %891 = call double @value_to_float(%Value %890)
  %892 = load %Value, %Value* %822
  %893 = call double @value_to_float(%Value %892)
  %894 = fmul double %891, %893
  %895 = call %Value @make_float(double %894)
  ret %Value %895
else147:
  br label %merge148
merge148:
  %896 = load %Value, %Value* %814
  %897 = call i64 @value_to_int(%Value %896)
  %898 = load %Value, %Value* %822
  %899 = call i64 @value_to_int(%Value %898)
  %900 = mul i64 %897, %899
  %901 = call %Value @make_int(i64 %900)
  ret %Value %901
else144:
  br label %merge145
merge145:
  %902 = load %nyx_string*, %nyx_string** %806
  %903 = getelementptr [6 x i8], [6 x i8]* @.str83, i32 0, i32 0
  %904 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str83.c, i8* %903)
  %905 = call i1 @nyx_string_equals(%nyx_string* %902, %nyx_string* %904)
  br i1 %905, label %then149, label %else150
then149:
  %906 = load i1, i1* %835
  br i1 %906, label %then152, label %else153
then152:
  %907 = load %Value, %Value* %822
  %908 = call double @value_to_float(%Value %907)
  %909 = alloca double
  store double %908, double* %909
  %910 = load %Value, %Value* %814
  %911 = call double @value_to_float(%Value %910)
  %912 = load double, double* %909
  %913 = fdiv double %911, %912
  %914 = call %Value @make_float(double %913)
  ret %Value %914
else153:
  br label %merge154
merge154:
  %915 = load %Value, %Value* %822
  %916 = call i64 @value_to_int(%Value %915)
  %917 = alloca i64
  store i64 %916, i64* %917
  %918 = load i64, i64* %917
  %919 = icmp ne i64 %918, 0
  br i1 %919, label %then155, label %else156
then155:
  %920 = load %Value, %Value* %814
  %921 = call i64 @value_to_int(%Value %920)
  %922 = load i64, i64* %917
  %923 = sdiv i64 %921, %922
  %924 = call %Value @make_int(i64 %923)
  ret %Value %924
else156:
  br label %merge157
merge157:
  %925 = getelementptr [8 x i8], [8 x i8]* @.str84, i32 0, i32 0
  %926 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str84.c, i8* %925)
  %927 = getelementptr [19 x i8], [19 x i8]* @.str85, i32 0, i32 0
  %928 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str85.c, i8* %927)
  %929 = getelementptr [17 x i8], [17 x i8]* @.str86, i32 0, i32 0
  %930 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str86.c, i8* %929)
  %931 = call i64 @interp_err(%nyx_string* %926, %nyx_string* %928, %nyx_string* %930)
  %932 = call %Value @make_nil()
  ret %Value %932
else150:
  br label %merge151
merge151:
  %933 = load %nyx_string*, %nyx_string** %806
  %934 = getelementptr [8 x i8], [8 x i8]* @.str87, i32 0, i32 0
  %935 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str87.c, i8* %934)
  %936 = call i1 @nyx_string_equals(%nyx_string* %933, %nyx_string* %935)
  br i1 %936, label %then158, label %else159
then158:
  %937 = load %Value, %Value* %814
  %938 = call i64 @value_to_int(%Value %937)
  %939 = alloca i64
  store i64 %938, i64* %939
  %940 = load %Value, %Value* %822
  %941 = call i64 @value_to_int(%Value %940)
  %942 = alloca i64
  store i64 %941, i64* %942
  %943 = load i64, i64* %942
  %944 = icmp eq i64 %943, 0
  br i1 %944, label %then161, label %else162
then161:
  %945 = getelementptr [8 x i8], [8 x i8]* @.str88, i32 0, i32 0
  %946 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str88.c, i8* %945)
  %947 = getelementptr [17 x i8], [17 x i8]* @.str89, i32 0, i32 0
  %948 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str89.c, i8* %947)
  %949 = getelementptr [15 x i8], [15 x i8]* @.str90, i32 0, i32 0
  %950 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str90.c, i8* %949)
  %951 = call i64 @interp_err(%nyx_string* %946, %nyx_string* %948, %nyx_string* %950)
  %952 = call %Value @make_nil()
  ret %Value %952
else162:
  br label %merge163
merge163:
  %953 = load i64, i64* %939
  %954 = load i64, i64* %942
  %955 = srem i64 %953, %954
  %956 = call %Value @make_int(i64 %955)
  ret %Value %956
else159:
  br label %merge160
merge160:
  %957 = load %nyx_string*, %nyx_string** %806
  %958 = getelementptr [12 x i8], [12 x i8]* @.str91, i32 0, i32 0
  %959 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str91.c, i8* %958)
  %960 = call i1 @nyx_string_equals(%nyx_string* %957, %nyx_string* %959)
  br i1 %960, label %then164, label %else165
then164:
  %961 = load %Value, %Value* %814
  %962 = load %Value, %Value* %822
  %963 = call i1 @values_equal(%Value %961, %Value %962)
  %964 = call %Value @make_bool(i1 %963)
  ret %Value %964
else165:
  br label %merge166
merge166:
  %965 = load %nyx_string*, %nyx_string** %806
  %966 = getelementptr [10 x i8], [10 x i8]* @.str92, i32 0, i32 0
  %967 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str92.c, i8* %966)
  %968 = call i1 @nyx_string_equals(%nyx_string* %965, %nyx_string* %967)
  br i1 %968, label %then167, label %else168
then167:
  %969 = load %Value, %Value* %814
  %970 = load %Value, %Value* %822
  %971 = call i1 @values_equal(%Value %969, %Value %970)
  %972 = xor i1 %971, true
  %973 = call %Value @make_bool(i1 %972)
  ret %Value %973
else168:
  br label %merge169
merge169:
  %974 = load %nyx_string*, %nyx_string** %806
  %975 = getelementptr [5 x i8], [5 x i8]* @.str93, i32 0, i32 0
  %976 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str93.c, i8* %975)
  %977 = call i1 @nyx_string_equals(%nyx_string* %974, %nyx_string* %976)
  br i1 %977, label %then170, label %else171
then170:
  %978 = load i1, i1* %835
  br i1 %978, label %then173, label %else174
then173:
  %979 = load %Value, %Value* %814
  %980 = call double @value_to_float(%Value %979)
  %981 = load %Value, %Value* %822
  %982 = call double @value_to_float(%Value %981)
  %983 = fcmp olt double %980, %982
  %984 = call %Value @make_bool(i1 %983)
  ret %Value %984
else174:
  br label %merge175
merge175:
  %985 = load %Value, %Value* %814
  %986 = call i64 @value_to_int(%Value %985)
  %987 = load %Value, %Value* %822
  %988 = call i64 @value_to_int(%Value %987)
  %989 = icmp slt i64 %986, %988
  %990 = call %Value @make_bool(i1 %989)
  ret %Value %990
else171:
  br label %merge172
merge172:
  %991 = load %nyx_string*, %nyx_string** %806
  %992 = getelementptr [8 x i8], [8 x i8]* @.str94, i32 0, i32 0
  %993 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str94.c, i8* %992)
  %994 = call i1 @nyx_string_equals(%nyx_string* %991, %nyx_string* %993)
  br i1 %994, label %then176, label %else177
then176:
  %995 = load i1, i1* %835
  br i1 %995, label %then179, label %else180
then179:
  %996 = load %Value, %Value* %814
  %997 = call double @value_to_float(%Value %996)
  %998 = load %Value, %Value* %822
  %999 = call double @value_to_float(%Value %998)
  %1000 = fcmp ogt double %997, %999
  %1001 = call %Value @make_bool(i1 %1000)
  ret %Value %1001
else180:
  br label %merge181
merge181:
  %1002 = load %Value, %Value* %814
  %1003 = call i64 @value_to_int(%Value %1002)
  %1004 = load %Value, %Value* %822
  %1005 = call i64 @value_to_int(%Value %1004)
  %1006 = icmp sgt i64 %1003, %1005
  %1007 = call %Value @make_bool(i1 %1006)
  ret %Value %1007
else177:
  br label %merge178
merge178:
  %1008 = load %nyx_string*, %nyx_string** %806
  %1009 = getelementptr [11 x i8], [11 x i8]* @.str95, i32 0, i32 0
  %1010 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str95.c, i8* %1009)
  %1011 = call i1 @nyx_string_equals(%nyx_string* %1008, %nyx_string* %1010)
  br i1 %1011, label %then182, label %else183
then182:
  %1012 = load i1, i1* %835
  br i1 %1012, label %then185, label %else186
then185:
  %1013 = load %Value, %Value* %814
  %1014 = call double @value_to_float(%Value %1013)
  %1015 = load %Value, %Value* %822
  %1016 = call double @value_to_float(%Value %1015)
  %1017 = fcmp ole double %1014, %1016
  %1018 = call %Value @make_bool(i1 %1017)
  ret %Value %1018
else186:
  br label %merge187
merge187:
  %1019 = load %Value, %Value* %814
  %1020 = call i64 @value_to_int(%Value %1019)
  %1021 = load %Value, %Value* %822
  %1022 = call i64 @value_to_int(%Value %1021)
  %1023 = icmp sle i64 %1020, %1022
  %1024 = call %Value @make_bool(i1 %1023)
  ret %Value %1024
else183:
  br label %merge184
merge184:
  %1025 = load %nyx_string*, %nyx_string** %806
  %1026 = getelementptr [14 x i8], [14 x i8]* @.str96, i32 0, i32 0
  %1027 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str96.c, i8* %1026)
  %1028 = call i1 @nyx_string_equals(%nyx_string* %1025, %nyx_string* %1027)
  br i1 %1028, label %then188, label %else189
then188:
  %1029 = load i1, i1* %835
  br i1 %1029, label %then191, label %else192
then191:
  %1030 = load %Value, %Value* %814
  %1031 = call double @value_to_float(%Value %1030)
  %1032 = load %Value, %Value* %822
  %1033 = call double @value_to_float(%Value %1032)
  %1034 = fcmp oge double %1031, %1033
  %1035 = call %Value @make_bool(i1 %1034)
  ret %Value %1035
else192:
  br label %merge193
merge193:
  %1036 = load %Value, %Value* %814
  %1037 = call i64 @value_to_int(%Value %1036)
  %1038 = load %Value, %Value* %822
  %1039 = call i64 @value_to_int(%Value %1038)
  %1040 = icmp sge i64 %1037, %1039
  %1041 = call %Value @make_bool(i1 %1040)
  ret %Value %1041
else189:
  br label %merge190
merge190:
  %1042 = alloca i1
  store i1 true, i1* %1042
  %1043 = load %nyx_string*, %nyx_string** %806
  %1044 = getelementptr [8 x i8], [8 x i8]* @.str97, i32 0, i32 0
  %1045 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str97.c, i8* %1044)
  %1046 = call i1 @nyx_string_equals(%nyx_string* %1043, %nyx_string* %1045)
  br i1 %1046, label %sc_or_end195, label %sc_or_rhs194
sc_or_rhs194:
  %1047 = load %nyx_string*, %nyx_string** %806
  %1048 = getelementptr [4 x i8], [4 x i8]* @.str98, i32 0, i32 0
  %1049 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str98.c, i8* %1048)
  %1050 = call i1 @nyx_string_equals(%nyx_string* %1047, %nyx_string* %1049)
  store i1 %1050, i1* %1042
  br label %sc_or_end195
sc_or_end195:
  %1051 = load i1, i1* %1042
  br i1 %1051, label %then196, label %else197
then196:
  %1052 = alloca i1
  store i1 false, i1* %1052
  %1053 = load %Value, %Value* %814
  %1054 = call i1 @is_truthy(%Value %1053)
  br i1 %1054, label %sc_and_rhs199, label %sc_and_end200
sc_and_rhs199:
  %1055 = load %Value, %Value* %822
  %1056 = call i1 @is_truthy(%Value %1055)
  store i1 %1056, i1* %1052
  br label %sc_and_end200
sc_and_end200:
  %1057 = load i1, i1* %1052
  %1058 = call %Value @make_bool(i1 %1057)
  ret %Value %1058
else197:
  br label %merge198
merge198:
  %1059 = alloca i1
  store i1 true, i1* %1059
  %1060 = load %nyx_string*, %nyx_string** %806
  %1061 = getelementptr [6 x i8], [6 x i8]* @.str99, i32 0, i32 0
  %1062 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str99.c, i8* %1061)
  %1063 = call i1 @nyx_string_equals(%nyx_string* %1060, %nyx_string* %1062)
  br i1 %1063, label %sc_or_end202, label %sc_or_rhs201
sc_or_rhs201:
  %1064 = load %nyx_string*, %nyx_string** %806
  %1065 = getelementptr [3 x i8], [3 x i8]* @.str100, i32 0, i32 0
  %1066 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str100.c, i8* %1065)
  %1067 = call i1 @nyx_string_equals(%nyx_string* %1064, %nyx_string* %1066)
  store i1 %1067, i1* %1059
  br label %sc_or_end202
sc_or_end202:
  %1068 = load i1, i1* %1059
  br i1 %1068, label %then203, label %else204
then203:
  %1069 = alloca i1
  store i1 true, i1* %1069
  %1070 = load %Value, %Value* %814
  %1071 = call i1 @is_truthy(%Value %1070)
  br i1 %1071, label %sc_or_end207, label %sc_or_rhs206
sc_or_rhs206:
  %1072 = load %Value, %Value* %822
  %1073 = call i1 @is_truthy(%Value %1072)
  store i1 %1073, i1* %1069
  br label %sc_or_end207
sc_or_end207:
  %1074 = load i1, i1* %1069
  %1075 = call %Value @make_bool(i1 %1074)
  ret %Value %1075
else204:
  br label %merge205
merge205:
  %1076 = getelementptr [8 x i8], [8 x i8]* @.str101, i32 0, i32 0
  %1077 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str101.c, i8* %1076)
  %1078 = getelementptr [24 x i8], [24 x i8]* @.str102, i32 0, i32 0
  %1079 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str102.c, i8* %1078)
  %1080 = load %nyx_string*, %nyx_string** %806
  %1081 = call %nyx_string* @nyx_string_concat(%nyx_string* %1079, %nyx_string* %1080)
  %1082 = getelementptr [25 x i8], [25 x i8]* @.str103, i32 0, i32 0
  %1083 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str103.c, i8* %1082)
  %1084 = load %nyx_string*, %nyx_string** %806
  %1085 = call %nyx_string* @nyx_string_concat(%nyx_string* %1083, %nyx_string* %1084)
  %1086 = call i64 @interp_err(%nyx_string* %1077, %nyx_string* %1081, %nyx_string* %1085)
  %1087 = call %Value @make_nil()
  ret %Value %1087
}

define internal %Value @eval_unop(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %1088 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1089 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %1088)
  %1090 = alloca { i64, i8* }*
  store { i64, i8* }* %1089, { i64, i8* }** %1090
  %1091 = load { i64, i8* }*, { i64, i8* }** %1090
  %1092 = call i64 @nyx_array_get_checked({ i64, i8* }* %1091, i64 0, i64 2)
  %1093 = inttoptr i64 %1092 to %nyx_string*
  %1094 = alloca %nyx_string*
  store %nyx_string* %1093, %nyx_string** %1094
  %1095 = load { i64, i8* }*, { i64, i8* }** %1090
  %1096 = call i64 @nyx_array_get({ i64, i8* }* %1095, i64 1)
  %1097 = inttoptr i64 %1096 to { i64, i8* }*
  %1098 = load %Environment, %Environment* %env.ptr
  %1099 = call %Value @eval_expr({ i64, i8* }* %1097, %Environment %1098)
  %1100 = alloca %Value
  store %Value %1099, %Value* %1100
  %1101 = load %nyx_string*, %nyx_string** %1094
  %1102 = getelementptr [6 x i8], [6 x i8]* @.str104, i32 0, i32 0
  %1103 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str104.c, i8* %1102)
  %1104 = call i1 @nyx_string_equals(%nyx_string* %1101, %nyx_string* %1103)
  br i1 %1104, label %then208, label %else209
then208:
  %1105 = load %Value, %Value* %1100
  %1106 = call i64 @value_to_int(%Value %1105)
  %1107 = alloca i64
  store i64 %1106, i64* %1107
  %1108 = load i64, i64* %1107
  %1109 = sub i64 0, %1108
  %1110 = call %Value @make_int(i64 %1109)
  ret %Value %1110
else209:
  br label %merge210
merge210:
  %1111 = load %nyx_string*, %nyx_string** %1094
  %1112 = getelementptr [4 x i8], [4 x i8]* @.str105, i32 0, i32 0
  %1113 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str105.c, i8* %1112)
  %1114 = call i1 @nyx_string_equals(%nyx_string* %1111, %nyx_string* %1113)
  br i1 %1114, label %then211, label %else212
then211:
  %1115 = load %Value, %Value* %1100
  %1116 = call i1 @is_truthy(%Value %1115)
  %1117 = alloca i1
  store i1 %1116, i1* %1117
  %1118 = load i1, i1* %1117
  %1119 = xor i1 %1118, true
  %1120 = call %Value @make_bool(i1 %1119)
  ret %Value %1120
else212:
  br label %merge213
merge213:
  %1121 = getelementptr [8 x i8], [8 x i8]* @.str106, i32 0, i32 0
  %1122 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str106.c, i8* %1121)
  %1123 = getelementptr [31 x i8], [31 x i8]* @.str107, i32 0, i32 0
  %1124 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str107.c, i8* %1123)
  %1125 = load %nyx_string*, %nyx_string** %1094
  %1126 = call %nyx_string* @nyx_string_concat(%nyx_string* %1124, %nyx_string* %1125)
  %1127 = getelementptr [31 x i8], [31 x i8]* @.str108, i32 0, i32 0
  %1128 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str108.c, i8* %1127)
  %1129 = load %nyx_string*, %nyx_string** %1094
  %1130 = call %nyx_string* @nyx_string_concat(%nyx_string* %1128, %nyx_string* %1129)
  %1131 = call i64 @interp_err(%nyx_string* %1122, %nyx_string* %1126, %nyx_string* %1130)
  %1132 = call %Value @make_nil()
  ret %Value %1132
}

define internal %Value @eval_array(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %1133 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1134 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %1133)
  %1135 = alloca { i64, i8* }*
  store { i64, i8* }* %1134, { i64, i8* }** %1135
  %1136 = load { i64, i8* }*, { i64, i8* }** %1135
  %1137 = call i64 @nyx_array_get({ i64, i8* }* %1136, i64 0)
  %1138 = inttoptr i64 %1137 to { i64, i8* }*
  %1139 = alloca { i64, i8* }*
  store { i64, i8* }* %1138, { i64, i8* }** %1139
  %1140 = call { i64, i8* }* @nyx_array_new_ptr()
  %1141 = alloca { i64, i8* }*
  store { i64, i8* }* %1140, { i64, i8* }** %1141
  %1142 = alloca i64
  store i64 0, i64* %1142
  %1143 = call i8* @llvm.stacksave()
  br label %while_cond214
while_cond214:
  %1144 = load i64, i64* %1142
  %1145 = load { i64, i8* }*, { i64, i8* }** %1139
  %1146 = call i64 @nyx_array_length({ i64, i8* }* %1145)
  %1147 = icmp slt i64 %1144, %1146
  br i1 %1147, label %while_body215, label %while_end216
while_body215:
  call void @llvm.stackrestore(i8* %1143)
  %1148 = load { i64, i8* }*, { i64, i8* }** %1139
  %1149 = load i64, i64* %1142
  %1150 = call i64 @nyx_array_get({ i64, i8* }* %1148, i64 %1149)
  %1151 = inttoptr i64 %1150 to { i64, i8* }*
  %1152 = alloca { i64, i8* }*
  store { i64, i8* }* %1151, { i64, i8* }** %1152
  %1153 = load { i64, i8* }*, { i64, i8* }** %1152
  %1154 = load %Environment, %Environment* %env.ptr
  %1155 = call %Value @eval_expr({ i64, i8* }* %1153, %Environment %1154)
  %1156 = alloca %Value
  store %Value %1155, %Value* %1156
  %1157 = load { i64, i8* }*, { i64, i8* }** %1141
  %1158 = load %Value, %Value* %1156
  %1159 = getelementptr %Value, %Value* null, i32 1
  %1160 = ptrtoint %Value* %1159 to i64
  %1161 = call i8* @GC_malloc(i64 %1160)
  %1162 = bitcast i8* %1161 to %Value*
  store %Value %1158, %Value* %1162
  %1163 = ptrtoint %Value* %1162 to i64
  call void @nyx_array_push({ i64, i8* }* %1157, i64 %1163)
  %1164 = load i64, i64* %1142
  %1165 = add i64 %1164, 1
  store i64 %1165, i64* %1142
  br label %while_cond214
while_end216:
  %1166 = load { i64, i8* }*, { i64, i8* }** %1141
  %1167 = call %Value @make_array({ i64, i8* }* %1166)
  ret %Value %1167
}

define internal %Value @eval_index(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %1168 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1169 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %1168)
  %1170 = alloca { i64, i8* }*
  store { i64, i8* }* %1169, { i64, i8* }** %1170
  %1171 = load { i64, i8* }*, { i64, i8* }** %1170
  %1172 = call i64 @nyx_array_get({ i64, i8* }* %1171, i64 0)
  %1173 = inttoptr i64 %1172 to { i64, i8* }*
  %1174 = load %Environment, %Environment* %env.ptr
  %1175 = call %Value @eval_expr({ i64, i8* }* %1173, %Environment %1174)
  %1176 = alloca %Value
  store %Value %1175, %Value* %1176
  %1177 = load { i64, i8* }*, { i64, i8* }** %1170
  %1178 = call i64 @nyx_array_get({ i64, i8* }* %1177, i64 1)
  %1179 = inttoptr i64 %1178 to { i64, i8* }*
  %1180 = load %Environment, %Environment* %env.ptr
  %1181 = call %Value @eval_expr({ i64, i8* }* %1179, %Environment %1180)
  %1182 = alloca %Value
  store %Value %1181, %Value* %1182
  %1183 = getelementptr %Value, %Value* %1176, i32 0, i32 0
  %1184 = load %nyx_string*, %nyx_string** %1183
  %1185 = getelementptr [6 x i8], [6 x i8]* @.str109, i32 0, i32 0
  %1186 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str109.c, i8* %1185)
  %1187 = call i1 @nyx_string_equals(%nyx_string* %1184, %nyx_string* %1186)
  %1188 = xor i1 %1187, true
  br i1 %1188, label %then217, label %else218
then217:
  %1189 = getelementptr [8 x i8], [8 x i8]* @.str110, i32 0, i32 0
  %1190 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str110.c, i8* %1189)
  %1191 = getelementptr [56 x i8], [56 x i8]* @.str111, i32 0, i32 0
  %1192 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str111.c, i8* %1191)
  %1193 = getelementptr %Value, %Value* %1176, i32 0, i32 0
  %1194 = load %nyx_string*, %nyx_string** %1193
  %1195 = call %nyx_string* @nyx_string_concat(%nyx_string* %1192, %nyx_string* %1194)
  %1196 = getelementptr [51 x i8], [51 x i8]* @.str112, i32 0, i32 0
  %1197 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str112.c, i8* %1196)
  %1198 = getelementptr %Value, %Value* %1176, i32 0, i32 0
  %1199 = load %nyx_string*, %nyx_string** %1198
  %1200 = call %nyx_string* @nyx_string_concat(%nyx_string* %1197, %nyx_string* %1199)
  %1201 = call i64 @interp_err(%nyx_string* %1190, %nyx_string* %1195, %nyx_string* %1200)
  %1202 = call %Value @make_nil()
  ret %Value %1202
else218:
  br label %merge219
merge219:
  %1203 = getelementptr %Value, %Value* %1176, i32 0, i32 5
  %1204 = load { i64, i8* }*, { i64, i8* }** %1203
  %1205 = alloca { i64, i8* }*
  store { i64, i8* }* %1204, { i64, i8* }** %1205
  %1206 = load %Value, %Value* %1182
  %1207 = call i64 @value_to_int(%Value %1206)
  %1208 = alloca i64
  store i64 %1207, i64* %1208
  %1209 = alloca i1
  store i1 false, i1* %1209
  %1210 = load i64, i64* %1208
  %1211 = icmp sge i64 %1210, 0
  br i1 %1211, label %sc_and_rhs220, label %sc_and_end221
sc_and_rhs220:
  %1212 = load i64, i64* %1208
  %1213 = load { i64, i8* }*, { i64, i8* }** %1205
  %1214 = call i64 @nyx_array_length({ i64, i8* }* %1213)
  %1215 = icmp slt i64 %1212, %1214
  store i1 %1215, i1* %1209
  br label %sc_and_end221
sc_and_end221:
  %1216 = load i1, i1* %1209
  br i1 %1216, label %then222, label %else223
then222:
  %1217 = load { i64, i8* }*, { i64, i8* }** %1205
  %1218 = load i64, i64* %1208
  %1219 = call i64 @nyx_array_get({ i64, i8* }* %1217, i64 %1218)
  %1220 = inttoptr i64 %1219 to %Value*
  %1221 = load %Value, %Value* %1220
  %1222 = alloca %Value
  store %Value %1221, %Value* %1222
  %1223 = load %Value, %Value* %1222
  ret %Value %1223
else223:
  br label %merge224
merge224:
  %1224 = getelementptr [8 x i8], [8 x i8]* @.str113, i32 0, i32 0
  %1225 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str113.c, i8* %1224)
  %1226 = getelementptr [23 x i8], [23 x i8]* @.str114, i32 0, i32 0
  %1227 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str114.c, i8* %1226)
  %1228 = getelementptr [19 x i8], [19 x i8]* @.str115, i32 0, i32 0
  %1229 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str115.c, i8* %1228)
  %1230 = call i64 @interp_err(%nyx_string* %1225, %nyx_string* %1227, %nyx_string* %1229)
  %1231 = call %Value @make_nil()
  ret %Value %1231
}

define internal %Value @eval_stmt(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %1232 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1233 = call %nyx_string* @astnode_get_type({ i64, i8* }* %1232)
  %1234 = alloca %nyx_string*
  store %nyx_string* %1233, %nyx_string** %1234
  %1235 = load %nyx_string*, %nyx_string** %1234
  %1236 = getelementptr [4 x i8], [4 x i8]* @.str116, i32 0, i32 0
  %1237 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str116.c, i8* %1236)
  %1238 = call i1 @nyx_string_equals(%nyx_string* %1235, %nyx_string* %1237)
  br i1 %1238, label %then225, label %else226
then225:
  %1239 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1240 = load %Environment, %Environment* %env.ptr
  %1241 = call %Value @eval_let({ i64, i8* }* %1239, %Environment %1240)
  ret %Value %1241
else226:
  br label %merge227
merge227:
  %1242 = load %nyx_string*, %nyx_string** %1234
  %1243 = getelementptr [4 x i8], [4 x i8]* @.str117, i32 0, i32 0
  %1244 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str117.c, i8* %1243)
  %1245 = call i1 @nyx_string_equals(%nyx_string* %1242, %nyx_string* %1244)
  br i1 %1245, label %then228, label %else229
then228:
  %1246 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1247 = load %Environment, %Environment* %env.ptr
  %1248 = call %Value @eval_let({ i64, i8* }* %1246, %Environment %1247)
  ret %Value %1248
else229:
  br label %merge230
merge230:
  %1249 = load %nyx_string*, %nyx_string** %1234
  %1250 = getelementptr [7 x i8], [7 x i8]* @.str118, i32 0, i32 0
  %1251 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str118.c, i8* %1250)
  %1252 = call i1 @nyx_string_equals(%nyx_string* %1249, %nyx_string* %1251)
  br i1 %1252, label %then231, label %else232
then231:
  %1253 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1254 = load %Environment, %Environment* %env.ptr
  %1255 = call %Value @eval_assign({ i64, i8* }* %1253, %Environment %1254)
  ret %Value %1255
else232:
  br label %merge233
merge233:
  %1256 = load %nyx_string*, %nyx_string** %1234
  %1257 = getelementptr [3 x i8], [3 x i8]* @.str119, i32 0, i32 0
  %1258 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str119.c, i8* %1257)
  %1259 = call i1 @nyx_string_equals(%nyx_string* %1256, %nyx_string* %1258)
  br i1 %1259, label %then234, label %else235
then234:
  %1260 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1261 = load %Environment, %Environment* %env.ptr
  %1262 = call %Value @eval_if({ i64, i8* }* %1260, %Environment %1261)
  ret %Value %1262
else235:
  br label %merge236
merge236:
  %1263 = load %nyx_string*, %nyx_string** %1234
  %1264 = getelementptr [6 x i8], [6 x i8]* @.str120, i32 0, i32 0
  %1265 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str120.c, i8* %1264)
  %1266 = call i1 @nyx_string_equals(%nyx_string* %1263, %nyx_string* %1265)
  br i1 %1266, label %then237, label %else238
then237:
  %1267 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1268 = load %Environment, %Environment* %env.ptr
  %1269 = call %Value @eval_while({ i64, i8* }* %1267, %Environment %1268)
  ret %Value %1269
else238:
  br label %merge239
merge239:
  %1270 = load %nyx_string*, %nyx_string** %1234
  %1271 = getelementptr [4 x i8], [4 x i8]* @.str121, i32 0, i32 0
  %1272 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str121.c, i8* %1271)
  %1273 = call i1 @nyx_string_equals(%nyx_string* %1270, %nyx_string* %1272)
  br i1 %1273, label %then240, label %else241
then240:
  %1274 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1275 = load %Environment, %Environment* %env.ptr
  %1276 = call %Value @eval_for({ i64, i8* }* %1274, %Environment %1275)
  ret %Value %1276
else241:
  br label %merge242
merge242:
  %1277 = load %nyx_string*, %nyx_string** %1234
  %1278 = getelementptr [7 x i8], [7 x i8]* @.str122, i32 0, i32 0
  %1279 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str122.c, i8* %1278)
  %1280 = call i1 @nyx_string_equals(%nyx_string* %1277, %nyx_string* %1279)
  br i1 %1280, label %then243, label %else244
then243:
  %1281 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1282 = load %Environment, %Environment* %env.ptr
  %1283 = call %Value @eval_return({ i64, i8* }* %1281, %Environment %1282)
  ret %Value %1283
else244:
  br label %merge245
merge245:
  %1284 = load %nyx_string*, %nyx_string** %1234
  %1285 = getelementptr [6 x i8], [6 x i8]* @.str123, i32 0, i32 0
  %1286 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str123.c, i8* %1285)
  %1287 = call i1 @nyx_string_equals(%nyx_string* %1284, %nyx_string* %1286)
  br i1 %1287, label %then246, label %else247
then246:
  %1288 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1289 = load %Environment, %Environment* %env.ptr
  %1290 = call %Value @eval_block({ i64, i8* }* %1288, %Environment %1289)
  ret %Value %1290
else247:
  br label %merge248
merge248:
  %1291 = load %nyx_string*, %nyx_string** %1234
  %1292 = getelementptr [9 x i8], [9 x i8]* @.str124, i32 0, i32 0
  %1293 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str124.c, i8* %1292)
  %1294 = call i1 @nyx_string_equals(%nyx_string* %1291, %nyx_string* %1293)
  br i1 %1294, label %then249, label %else250
then249:
  %1295 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1296 = load %Environment, %Environment* %env.ptr
  %1297 = call %Value @eval_function_decl({ i64, i8* }* %1295, %Environment %1296)
  ret %Value %1297
else250:
  br label %merge251
merge251:
  %1298 = load %nyx_string*, %nyx_string** %1234
  %1299 = getelementptr [13 x i8], [13 x i8]* @.str125, i32 0, i32 0
  %1300 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str125.c, i8* %1299)
  %1301 = call i1 @nyx_string_equals(%nyx_string* %1298, %nyx_string* %1300)
  br i1 %1301, label %then252, label %else253
then252:
  %1302 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1303 = load %Environment, %Environment* %env.ptr
  %1304 = call %Value @eval_index_assign({ i64, i8* }* %1302, %Environment %1303)
  ret %Value %1304
else253:
  br label %merge254
merge254:
  %1305 = load %nyx_string*, %nyx_string** %1234
  %1306 = getelementptr [13 x i8], [13 x i8]* @.str126, i32 0, i32 0
  %1307 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str126.c, i8* %1306)
  %1308 = call i1 @nyx_string_equals(%nyx_string* %1305, %nyx_string* %1307)
  br i1 %1308, label %then255, label %else256
then255:
  %1309 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1310 = load %Environment, %Environment* %env.ptr
  %1311 = call %Value @eval_field_assign({ i64, i8* }* %1309, %Environment %1310)
  ret %Value %1311
else256:
  br label %merge257
merge257:
  %1312 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1313 = load %Environment, %Environment* %env.ptr
  %1314 = call %Value @eval_expr({ i64, i8* }* %1312, %Environment %1313)
  ret %Value %1314
}

define internal %Value @eval_let(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %1315 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1316 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %1315)
  %1317 = alloca { i64, i8* }*
  store { i64, i8* }* %1316, { i64, i8* }** %1317
  %1318 = load { i64, i8* }*, { i64, i8* }** %1317
  %1319 = call i64 @nyx_array_get({ i64, i8* }* %1318, i64 0)
  %1320 = inttoptr i64 %1319 to { i64, i8* }*
  %1321 = alloca { i64, i8* }*
  store { i64, i8* }* %1320, { i64, i8* }** %1321
  %1322 = load { i64, i8* }*, { i64, i8* }** %1321
  %1323 = call %nyx_string* @astnode_get_type({ i64, i8* }* %1322)
  %1324 = alloca %nyx_string*
  store %nyx_string* %1323, %nyx_string** %1324
  %1325 = load { i64, i8* }*, { i64, i8* }** %1317
  %1326 = call i64 @nyx_array_get({ i64, i8* }* %1325, i64 2)
  %1327 = inttoptr i64 %1326 to { i64, i8* }*
  %1328 = alloca { i64, i8* }*
  store { i64, i8* }* %1327, { i64, i8* }** %1328
  %1329 = load { i64, i8* }*, { i64, i8* }** %1328
  %1330 = load %Environment, %Environment* %env.ptr
  %1331 = call %Value @eval_expr({ i64, i8* }* %1329, %Environment %1330)
  %1332 = alloca %Value
  store %Value %1331, %Value* %1332
  %1333 = load %Environment, %Environment* %env.ptr
  %1334 = load %nyx_string*, %nyx_string** %1324
  %1335 = load %Value, %Value* %1332
  %1336 = call i64 @env_define(%Environment %1333, %nyx_string* %1334, %Value %1335)
  %1337 = call %Value @make_nil()
  ret %Value %1337
}

define internal %Value @eval_assign(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %1338 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1339 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %1338)
  %1340 = alloca { i64, i8* }*
  store { i64, i8* }* %1339, { i64, i8* }** %1340
  %1341 = load { i64, i8* }*, { i64, i8* }** %1340
  %1342 = call i64 @nyx_array_get({ i64, i8* }* %1341, i64 0)
  %1343 = inttoptr i64 %1342 to { i64, i8* }*
  %1344 = alloca { i64, i8* }*
  store { i64, i8* }* %1343, { i64, i8* }** %1344
  %1345 = load { i64, i8* }*, { i64, i8* }** %1344
  %1346 = call %nyx_string* @astnode_get_type({ i64, i8* }* %1345)
  %1347 = alloca %nyx_string*
  store %nyx_string* %1346, %nyx_string** %1347
  %1348 = load { i64, i8* }*, { i64, i8* }** %1340
  %1349 = call i64 @nyx_array_get({ i64, i8* }* %1348, i64 1)
  %1350 = inttoptr i64 %1349 to { i64, i8* }*
  %1351 = load %Environment, %Environment* %env.ptr
  %1352 = call %Value @eval_expr({ i64, i8* }* %1350, %Environment %1351)
  %1353 = alloca %Value
  store %Value %1352, %Value* %1353
  %1354 = load %Environment, %Environment* %env.ptr
  %1355 = load %nyx_string*, %nyx_string** %1347
  %1356 = load %Value, %Value* %1353
  %1357 = call i1 @env_set(%Environment %1354, %nyx_string* %1355, %Value %1356)
  %1358 = xor i1 %1357, true
  br i1 %1358, label %then258, label %else259
then258:
  %1359 = getelementptr [8 x i8], [8 x i8]* @.str127, i32 0, i32 0
  %1360 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str127.c, i8* %1359)
  %1361 = getelementptr [23 x i8], [23 x i8]* @.str128, i32 0, i32 0
  %1362 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str128.c, i8* %1361)
  %1363 = load %nyx_string*, %nyx_string** %1347
  %1364 = call %nyx_string* @nyx_string_concat(%nyx_string* %1362, %nyx_string* %1363)
  %1365 = getelementptr [21 x i8], [21 x i8]* @.str129, i32 0, i32 0
  %1366 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str129.c, i8* %1365)
  %1367 = load %nyx_string*, %nyx_string** %1347
  %1368 = call %nyx_string* @nyx_string_concat(%nyx_string* %1366, %nyx_string* %1367)
  %1369 = call i64 @interp_err(%nyx_string* %1360, %nyx_string* %1364, %nyx_string* %1368)
  br label %merge260
else259:
  br label %merge260
merge260:
  %1370 = call %Value @make_nil()
  ret %Value %1370
}

define internal %Value @eval_index_assign(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %1371 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1372 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %1371)
  %1373 = alloca { i64, i8* }*
  store { i64, i8* }* %1372, { i64, i8* }** %1373
  %1374 = load { i64, i8* }*, { i64, i8* }** %1373
  %1375 = call i64 @nyx_array_get({ i64, i8* }* %1374, i64 0)
  %1376 = inttoptr i64 %1375 to { i64, i8* }*
  %1377 = alloca { i64, i8* }*
  store { i64, i8* }* %1376, { i64, i8* }** %1377
  %1378 = load { i64, i8* }*, { i64, i8* }** %1373
  %1379 = call i64 @nyx_array_get({ i64, i8* }* %1378, i64 1)
  %1380 = inttoptr i64 %1379 to { i64, i8* }*
  %1381 = alloca { i64, i8* }*
  store { i64, i8* }* %1380, { i64, i8* }** %1381
  %1382 = load { i64, i8* }*, { i64, i8* }** %1373
  %1383 = call i64 @nyx_array_get({ i64, i8* }* %1382, i64 2)
  %1384 = inttoptr i64 %1383 to { i64, i8* }*
  %1385 = alloca { i64, i8* }*
  store { i64, i8* }* %1384, { i64, i8* }** %1385
  %1386 = load { i64, i8* }*, { i64, i8* }** %1377
  %1387 = load %Environment, %Environment* %env.ptr
  %1388 = call %Value @eval_expr({ i64, i8* }* %1386, %Environment %1387)
  %1389 = alloca %Value
  store %Value %1388, %Value* %1389
  %1390 = load { i64, i8* }*, { i64, i8* }** %1381
  %1391 = load %Environment, %Environment* %env.ptr
  %1392 = call %Value @eval_expr({ i64, i8* }* %1390, %Environment %1391)
  %1393 = alloca %Value
  store %Value %1392, %Value* %1393
  %1394 = load { i64, i8* }*, { i64, i8* }** %1385
  %1395 = load %Environment, %Environment* %env.ptr
  %1396 = call %Value @eval_expr({ i64, i8* }* %1394, %Environment %1395)
  %1397 = alloca %Value
  store %Value %1396, %Value* %1397
  %1398 = getelementptr %Value, %Value* %1389, i32 0, i32 0
  %1399 = load %nyx_string*, %nyx_string** %1398
  %1400 = getelementptr [6 x i8], [6 x i8]* @.str130, i32 0, i32 0
  %1401 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str130.c, i8* %1400)
  %1402 = call i1 @nyx_string_equals(%nyx_string* %1399, %nyx_string* %1401)
  br i1 %1402, label %then261, label %else262
then261:
  %1403 = getelementptr %Value, %Value* %1389, i32 0, i32 5
  %1404 = load { i64, i8* }*, { i64, i8* }** %1403
  %1405 = alloca { i64, i8* }*
  store { i64, i8* }* %1404, { i64, i8* }** %1405
  %1406 = load %Value, %Value* %1393
  %1407 = call i64 @value_to_int(%Value %1406)
  %1408 = alloca i64
  store i64 %1407, i64* %1408
  %1409 = alloca i1
  store i1 false, i1* %1409
  %1410 = load i64, i64* %1408
  %1411 = icmp sge i64 %1410, 0
  br i1 %1411, label %sc_and_rhs264, label %sc_and_end265
sc_and_rhs264:
  %1412 = load i64, i64* %1408
  %1413 = load { i64, i8* }*, { i64, i8* }** %1405
  %1414 = call i64 @nyx_array_length({ i64, i8* }* %1413)
  %1415 = icmp slt i64 %1412, %1414
  store i1 %1415, i1* %1409
  br label %sc_and_end265
sc_and_end265:
  %1416 = load i1, i1* %1409
  br i1 %1416, label %then266, label %else267
then266:
  %1417 = load { i64, i8* }*, { i64, i8* }** %1405
  %1418 = load i64, i64* %1408
  %1419 = load %Value, %Value* %1397
  %1420 = getelementptr %Value, %Value* null, i32 1
  %1421 = ptrtoint %Value* %1420 to i64
  %1422 = call i8* @GC_malloc(i64 %1421)
  %1423 = bitcast i8* %1422 to %Value*
  store %Value %1419, %Value* %1423
  %1424 = ptrtoint %Value* %1423 to i64
  call void @nyx_array_set({ i64, i8* }* %1417, i64 %1418, i64 %1424)
  br label %merge268
else267:
  %1425 = getelementptr [8 x i8], [8 x i8]* @.str131, i32 0, i32 0
  %1426 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str131.c, i8* %1425)
  %1427 = getelementptr [38 x i8], [38 x i8]* @.str132, i32 0, i32 0
  %1428 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str132.c, i8* %1427)
  %1429 = getelementptr [33 x i8], [33 x i8]* @.str133, i32 0, i32 0
  %1430 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str133.c, i8* %1429)
  %1431 = call i64 @interp_err(%nyx_string* %1426, %nyx_string* %1428, %nyx_string* %1430)
  br label %merge268
merge268:
  br label %merge263
else262:
  %1432 = getelementptr [8 x i8], [8 x i8]* @.str134, i32 0, i32 0
  %1433 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str134.c, i8* %1432)
  %1434 = getelementptr [38 x i8], [38 x i8]* @.str135, i32 0, i32 0
  %1435 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str135.c, i8* %1434)
  %1436 = getelementptr %Value, %Value* %1389, i32 0, i32 0
  %1437 = load %nyx_string*, %nyx_string** %1436
  %1438 = call %nyx_string* @nyx_string_concat(%nyx_string* %1435, %nyx_string* %1437)
  %1439 = getelementptr [35 x i8], [35 x i8]* @.str136, i32 0, i32 0
  %1440 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str136.c, i8* %1439)
  %1441 = getelementptr %Value, %Value* %1389, i32 0, i32 0
  %1442 = load %nyx_string*, %nyx_string** %1441
  %1443 = call %nyx_string* @nyx_string_concat(%nyx_string* %1440, %nyx_string* %1442)
  %1444 = call i64 @interp_err(%nyx_string* %1433, %nyx_string* %1438, %nyx_string* %1443)
  br label %merge263
merge263:
  %1445 = call %Value @make_nil()
  ret %Value %1445
}

define internal %Value @eval_field_assign(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %1446 = getelementptr [8 x i8], [8 x i8]* @.str137, i32 0, i32 0
  %1447 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str137.c, i8* %1446)
  %1448 = getelementptr [45 x i8], [45 x i8]* @.str138, i32 0, i32 0
  %1449 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str138.c, i8* %1448)
  %1450 = getelementptr [46 x i8], [46 x i8]* @.str139, i32 0, i32 0
  %1451 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str139.c, i8* %1450)
  %1452 = call i64 @interp_err(%nyx_string* %1447, %nyx_string* %1449, %nyx_string* %1451)
  %1453 = call %Value @make_nil()
  ret %Value %1453
}

define internal %Value @eval_if(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %1454 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1455 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %1454)
  %1456 = alloca { i64, i8* }*
  store { i64, i8* }* %1455, { i64, i8* }** %1456
  %1457 = load { i64, i8* }*, { i64, i8* }** %1456
  %1458 = call i64 @nyx_array_get({ i64, i8* }* %1457, i64 0)
  %1459 = inttoptr i64 %1458 to { i64, i8* }*
  %1460 = alloca { i64, i8* }*
  store { i64, i8* }* %1459, { i64, i8* }** %1460
  %1461 = load { i64, i8* }*, { i64, i8* }** %1460
  %1462 = load %Environment, %Environment* %env.ptr
  %1463 = call %Value @eval_expr({ i64, i8* }* %1461, %Environment %1462)
  %1464 = alloca %Value
  store %Value %1463, %Value* %1464
  %1465 = load { i64, i8* }*, { i64, i8* }** %1456
  %1466 = call i64 @nyx_array_get({ i64, i8* }* %1465, i64 1)
  %1467 = inttoptr i64 %1466 to { i64, i8* }*
  %1468 = alloca { i64, i8* }*
  store { i64, i8* }* %1467, { i64, i8* }** %1468
  %1469 = load { i64, i8* }*, { i64, i8* }** %1456
  %1470 = call i64 @nyx_array_get({ i64, i8* }* %1469, i64 2)
  %1471 = inttoptr i64 %1470 to { i64, i8* }*
  %1472 = alloca { i64, i8* }*
  store { i64, i8* }* %1471, { i64, i8* }** %1472
  %1473 = load %Value, %Value* %1464
  %1474 = call i1 @is_truthy(%Value %1473)
  br i1 %1474, label %then269, label %else270
then269:
  %1475 = load { i64, i8* }*, { i64, i8* }** %1468
  %1476 = load %Environment, %Environment* %env.ptr
  %1477 = call %Value @eval_stmt({ i64, i8* }* %1475, %Environment %1476)
  ret %Value %1477
else270:
  %1478 = load { i64, i8* }*, { i64, i8* }** %1472
  %1479 = call %nyx_string* @astnode_get_type({ i64, i8* }* %1478)
  %1480 = alloca %nyx_string*
  store %nyx_string* %1479, %nyx_string** %1480
  %1481 = load %nyx_string*, %nyx_string** %1480
  %1482 = getelementptr [6 x i8], [6 x i8]* @.str140, i32 0, i32 0
  %1483 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str140.c, i8* %1482)
  %1484 = call i1 @nyx_string_equals(%nyx_string* %1481, %nyx_string* %1483)
  %1485 = xor i1 %1484, true
  br i1 %1485, label %then272, label %else273
then272:
  %1486 = load { i64, i8* }*, { i64, i8* }** %1472
  %1487 = load %Environment, %Environment* %env.ptr
  %1488 = call %Value @eval_stmt({ i64, i8* }* %1486, %Environment %1487)
  ret %Value %1488
else273:
  br label %merge274
merge274:
  br label %merge271
merge271:
  %1489 = call %Value @make_nil()
  ret %Value %1489
}

define internal %Value @eval_while(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %1490 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1491 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %1490)
  %1492 = alloca { i64, i8* }*
  store { i64, i8* }* %1491, { i64, i8* }** %1492
  %1493 = load { i64, i8* }*, { i64, i8* }** %1492
  %1494 = call i64 @nyx_array_get({ i64, i8* }* %1493, i64 0)
  %1495 = inttoptr i64 %1494 to { i64, i8* }*
  %1496 = alloca { i64, i8* }*
  store { i64, i8* }* %1495, { i64, i8* }** %1496
  %1497 = load { i64, i8* }*, { i64, i8* }** %1492
  %1498 = call i64 @nyx_array_get({ i64, i8* }* %1497, i64 1)
  %1499 = inttoptr i64 %1498 to { i64, i8* }*
  %1500 = alloca { i64, i8* }*
  store { i64, i8* }* %1499, { i64, i8* }** %1500
  %1501 = alloca i1
  store i1 1, i1* %1501
  %1502 = call i8* @llvm.stacksave()
  br label %while_cond275
while_cond275:
  %1503 = load i1, i1* %1501
  br i1 %1503, label %while_body276, label %while_end277
while_body276:
  call void @llvm.stackrestore(i8* %1502)
  %1504 = load { i64, i8* }*, { i64, i8* }** %1496
  %1505 = load %Environment, %Environment* %env.ptr
  %1506 = call %Value @eval_expr({ i64, i8* }* %1504, %Environment %1505)
  %1507 = alloca %Value
  store %Value %1506, %Value* %1507
  %1508 = load %Value, %Value* %1507
  %1509 = call i1 @is_truthy(%Value %1508)
  br i1 %1509, label %then278, label %else279
then278:
  %1510 = load { i64, i8* }*, { i64, i8* }** %1500
  %1511 = load %Environment, %Environment* %env.ptr
  %1512 = call %Value @eval_stmt({ i64, i8* }* %1510, %Environment %1511)
  br label %merge280
else279:
  store i1 0, i1* %1501
  br label %merge280
merge280:
  br label %while_cond275
while_end277:
  %1513 = call %Value @make_nil()
  ret %Value %1513
}

define internal %Value @eval_for(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %1514 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1515 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %1514)
  %1516 = alloca { i64, i8* }*
  store { i64, i8* }* %1515, { i64, i8* }** %1516
  %1517 = load { i64, i8* }*, { i64, i8* }** %1516
  %1518 = call i64 @nyx_array_get_checked({ i64, i8* }* %1517, i64 0, i64 2)
  %1519 = inttoptr i64 %1518 to %nyx_string*
  %1520 = alloca %nyx_string*
  store %nyx_string* %1519, %nyx_string** %1520
  %1521 = load { i64, i8* }*, { i64, i8* }** %1516
  %1522 = call i64 @nyx_array_get({ i64, i8* }* %1521, i64 1)
  %1523 = inttoptr i64 %1522 to { i64, i8* }*
  %1524 = load %Environment, %Environment* %env.ptr
  %1525 = call %Value @eval_expr({ i64, i8* }* %1523, %Environment %1524)
  %1526 = alloca %Value
  store %Value %1525, %Value* %1526
  %1527 = load { i64, i8* }*, { i64, i8* }** %1516
  %1528 = call i64 @nyx_array_get({ i64, i8* }* %1527, i64 2)
  %1529 = inttoptr i64 %1528 to { i64, i8* }*
  %1530 = alloca { i64, i8* }*
  store { i64, i8* }* %1529, { i64, i8* }** %1530
  %1531 = load %Environment, %Environment* %env.ptr
  %1532 = call %Environment @make_child_env(%Environment %1531)
  %1533 = alloca %Environment
  store %Environment %1532, %Environment* %1533
  %1534 = getelementptr %Value, %Value* %1526, i32 0, i32 0
  %1535 = load %nyx_string*, %nyx_string** %1534
  %1536 = getelementptr [6 x i8], [6 x i8]* @.str141, i32 0, i32 0
  %1537 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str141.c, i8* %1536)
  %1538 = call i1 @nyx_string_equals(%nyx_string* %1535, %nyx_string* %1537)
  br i1 %1538, label %then281, label %else282
then281:
  %1539 = getelementptr %Value, %Value* %1526, i32 0, i32 5
  %1540 = load { i64, i8* }*, { i64, i8* }** %1539
  %1541 = alloca { i64, i8* }*
  store { i64, i8* }* %1540, { i64, i8* }** %1541
  %1542 = alloca i64
  store i64 0, i64* %1542
  %1543 = call i8* @llvm.stacksave()
  br label %while_cond284
while_cond284:
  %1544 = load i64, i64* %1542
  %1545 = load { i64, i8* }*, { i64, i8* }** %1541
  %1546 = call i64 @nyx_array_length({ i64, i8* }* %1545)
  %1547 = icmp slt i64 %1544, %1546
  br i1 %1547, label %while_body285, label %while_end286
while_body285:
  call void @llvm.stackrestore(i8* %1543)
  %1548 = load { i64, i8* }*, { i64, i8* }** %1541
  %1549 = load i64, i64* %1542
  %1550 = call i64 @nyx_array_get({ i64, i8* }* %1548, i64 %1549)
  %1551 = inttoptr i64 %1550 to %Value*
  %1552 = load %Value, %Value* %1551
  %1553 = alloca %Value
  store %Value %1552, %Value* %1553
  %1554 = load %Environment, %Environment* %1533
  %1555 = load %nyx_string*, %nyx_string** %1520
  %1556 = load %Value, %Value* %1553
  %1557 = call i64 @env_define(%Environment %1554, %nyx_string* %1555, %Value %1556)
  %1558 = load { i64, i8* }*, { i64, i8* }** %1530
  %1559 = load %Environment, %Environment* %1533
  %1560 = call %Value @eval_stmt({ i64, i8* }* %1558, %Environment %1559)
  %1561 = load i64, i64* %1542
  %1562 = add i64 %1561, 1
  store i64 %1562, i64* %1542
  br label %while_cond284
while_end286:
  br label %merge283
else282:
  br label %merge283
merge283:
  %1563 = call %Value @make_nil()
  ret %Value %1563
}

define internal %Value @eval_block(
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
  %1571 = load %Environment, %Environment* %env.ptr
  %1572 = call %Environment @make_child_env(%Environment %1571)
  %1573 = alloca %Environment
  store %Environment %1572, %Environment* %1573
  %1574 = call %Value @make_nil()
  %1575 = alloca %Value
  store %Value %1574, %Value* %1575
  %1576 = alloca i64
  store i64 0, i64* %1576
  %1577 = load { i64, i8* }*, { i64, i8* }** %1570
  %1578 = call i64 @nyx_array_length({ i64, i8* }* %1577)
  %1579 = alloca i64
  store i64 %1578, i64* %1579
  %1580 = getelementptr [7 x i8], [7 x i8]* @.str142, i32 0, i32 0
  %1581 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str142.c, i8* %1580)
  %1582 = alloca %nyx_string*
  store %nyx_string* %1581, %nyx_string** %1582
  %1583 = call i8* @llvm.stacksave()
  br label %while_cond287
while_cond287:
  %1584 = load i64, i64* %1576
  %1585 = load i64, i64* %1579
  %1586 = icmp slt i64 %1584, %1585
  br i1 %1586, label %while_body288, label %while_end289
while_body288:
  call void @llvm.stackrestore(i8* %1583)
  %1587 = load { i64, i8* }*, { i64, i8* }** %1570
  %1588 = load i64, i64* %1576
  %1589 = call i64 @nyx_array_get({ i64, i8* }* %1587, i64 %1588)
  %1590 = inttoptr i64 %1589 to { i64, i8* }*
  %1591 = alloca { i64, i8* }*
  store { i64, i8* }* %1590, { i64, i8* }** %1591
  %1592 = load { i64, i8* }*, { i64, i8* }** %1591
  %1593 = load %Environment, %Environment* %1573
  %1594 = call %Value @eval_stmt({ i64, i8* }* %1592, %Environment %1593)
  store %Value %1594, %Value* %1575
  %1595 = getelementptr %Value, %Value* %1575, i32 0, i32 0
  %1596 = load %nyx_string*, %nyx_string** %1595
  %1597 = load %nyx_string*, %nyx_string** %1582
  %1598 = call i1 @nyx_string_equals(%nyx_string* %1596, %nyx_string* %1597)
  br i1 %1598, label %then290, label %else291
then290:
  %1599 = load %Value, %Value* %1575
  ret %Value %1599
else291:
  br label %merge292
merge292:
  %1600 = load i64, i64* %1576
  %1601 = add i64 %1600, 1
  store i64 %1601, i64* %1576
  br label %while_cond287
while_end289:
  %1602 = load %Value, %Value* %1575
  ret %Value %1602
}

define internal %Value @eval_function_decl(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %1603 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1604 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %1603)
  %1605 = alloca { i64, i8* }*
  store { i64, i8* }* %1604, { i64, i8* }** %1605
  %1606 = load { i64, i8* }*, { i64, i8* }** %1605
  %1607 = call i64 @nyx_array_get_checked({ i64, i8* }* %1606, i64 0, i64 2)
  %1608 = inttoptr i64 %1607 to %nyx_string*
  %1609 = alloca %nyx_string*
  store %nyx_string* %1608, %nyx_string** %1609
  %1610 = load { i64, i8* }*, { i64, i8* }** %1605
  %1611 = call i64 @nyx_array_get({ i64, i8* }* %1610, i64 1)
  %1612 = inttoptr i64 %1611 to { i64, i8* }*
  %1613 = alloca { i64, i8* }*
  store { i64, i8* }* %1612, { i64, i8* }** %1613
  %1614 = load { i64, i8* }*, { i64, i8* }** %1605
  %1615 = call i64 @nyx_array_get({ i64, i8* }* %1614, i64 2)
  %1616 = alloca i64
  store i64 %1615, i64* %1616
  %1617 = load { i64, i8* }*, { i64, i8* }** %1605
  %1618 = call i64 @nyx_array_get({ i64, i8* }* %1617, i64 3)
  %1619 = inttoptr i64 %1618 to { i64, i8* }*
  %1620 = alloca { i64, i8* }*
  store { i64, i8* }* %1619, { i64, i8* }** %1620
  %1621 = call { i64, i8* }* @nyx_array_new_ptr()
  %1622 = alloca { i64, i8* }*
  store { i64, i8* }* %1621, { i64, i8* }** %1622
  %1623 = load { i64, i8* }*, { i64, i8* }** %1620
  %1624 = call %nyx_string* @astnode_get_type({ i64, i8* }* %1623)
  %1625 = alloca %nyx_string*
  store %nyx_string* %1624, %nyx_string** %1625
  %1626 = load { i64, i8* }*, { i64, i8* }** %1620
  %1627 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %1626)
  %1628 = alloca { i64, i8* }*
  store { i64, i8* }* %1627, { i64, i8* }** %1628
  %1629 = getelementptr %Environment, %Environment* %env.ptr, i32 0, i32 0
  %1630 = load i8*, i8** %1629
  %1631 = alloca i8*
  store i8* %1630, i8** %1631
  %1632 = getelementptr %Environment, %Environment* %env.ptr, i32 0, i32 1
  %1633 = load { i64, i8* }*, { i64, i8* }** %1632
  %1634 = alloca { i64, i8* }*
  store { i64, i8* }* %1633, { i64, i8* }** %1634
  %1635 = getelementptr %Value, %Value* null, i32 1
  %1636 = ptrtoint %Value* %1635 to i64
  %1637 = call i8* @GC_malloc(i64 %1636)
  %1638 = bitcast i8* %1637 to %Value*
  %1639 = getelementptr [9 x i8], [9 x i8]* @.str143, i32 0, i32 0
  %1640 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str143.c, i8* %1639)
  %1641 = getelementptr %Value, %Value* %1638, i32 0, i32 0
  store %nyx_string* %1640, %nyx_string** %1641
  %1642 = getelementptr %Value, %Value* %1638, i32 0, i32 1
  store i64 0, i64* %1642
  %1643 = getelementptr %Value, %Value* %1638, i32 0, i32 2
  store double 0.0, double* %1643
  %1644 = getelementptr %Value, %Value* %1638, i32 0, i32 3
  store i1 0, i1* %1644
  %1645 = getelementptr [1 x i8], [1 x i8]* @.str144, i32 0, i32 0
  %1646 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str144.c, i8* %1645)
  %1647 = getelementptr %Value, %Value* %1638, i32 0, i32 4
  store %nyx_string* %1646, %nyx_string** %1647
  %1648 = load { i64, i8* }*, { i64, i8* }** %1622
  %1649 = getelementptr %Value, %Value* %1638, i32 0, i32 5
  store { i64, i8* }* %1648, { i64, i8* }** %1649
  %1650 = load { i64, i8* }*, { i64, i8* }** %1613
  %1651 = getelementptr %Value, %Value* %1638, i32 0, i32 6
  store { i64, i8* }* %1650, { i64, i8* }** %1651
  %1652 = load %nyx_string*, %nyx_string** %1625
  %1653 = getelementptr %Value, %Value* %1638, i32 0, i32 7
  store %nyx_string* %1652, %nyx_string** %1653
  %1654 = load { i64, i8* }*, { i64, i8* }** %1628
  %1655 = getelementptr %Value, %Value* %1638, i32 0, i32 8
  store { i64, i8* }* %1654, { i64, i8* }** %1655
  %1656 = load i8*, i8** %1631
  %1657 = getelementptr %Value, %Value* %1638, i32 0, i32 9
  store i8* %1656, i8** %1657
  %1658 = load { i64, i8* }*, { i64, i8* }** %1634
  %1659 = getelementptr %Value, %Value* %1638, i32 0, i32 10
  store { i64, i8* }* %1658, { i64, i8* }** %1659
  %1660 = load %Value, %Value* %1638
  %1661 = alloca %Value
  store %Value %1660, %Value* %1661
  %1662 = load %Environment, %Environment* %env.ptr
  %1663 = load %nyx_string*, %nyx_string** %1609
  %1664 = load %Value, %Value* %1661
  %1665 = call i64 @env_define(%Environment %1662, %nyx_string* %1663, %Value %1664)
  %1666 = call %Value @make_nil()
  ret %Value %1666
}

define internal %Value @unwrap_return_value(
%Value %return_val.param) {
  %return_val.ptr = alloca %Value
  store %Value %return_val.param, %Value* %return_val.ptr
  %1667 = getelementptr %Value, %Value* %return_val.ptr, i32 0, i32 5
  %1668 = load { i64, i8* }*, { i64, i8* }** %1667
  %1669 = alloca { i64, i8* }*
  store { i64, i8* }* %1668, { i64, i8* }** %1669
  %1670 = load { i64, i8* }*, { i64, i8* }** %1669
  %1671 = call i64 @nyx_array_get({ i64, i8* }* %1670, i64 0)
  %1672 = inttoptr i64 %1671 to %Value*
  %1673 = load %Value, %Value* %1672
  %1674 = alloca %Value
  store %Value %1673, %Value* %1674
  %1675 = load %Value, %Value* %1674
  ret %Value %1675
}

define internal %Value @eval_method_call(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %1676 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1677 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %1676)
  %1678 = alloca { i64, i8* }*
  store { i64, i8* }* %1677, { i64, i8* }** %1678
  %1679 = load { i64, i8* }*, { i64, i8* }** %1678
  %1680 = call i64 @nyx_array_get({ i64, i8* }* %1679, i64 0)
  %1681 = inttoptr i64 %1680 to { i64, i8* }*
  %1682 = alloca { i64, i8* }*
  store { i64, i8* }* %1681, { i64, i8* }** %1682
  %1683 = load { i64, i8* }*, { i64, i8* }** %1678
  %1684 = call i64 @nyx_array_get_checked({ i64, i8* }* %1683, i64 1, i64 2)
  %1685 = inttoptr i64 %1684 to %nyx_string*
  %1686 = alloca %nyx_string*
  store %nyx_string* %1685, %nyx_string** %1686
  %1687 = load { i64, i8* }*, { i64, i8* }** %1678
  %1688 = call i64 @nyx_array_get({ i64, i8* }* %1687, i64 2)
  %1689 = inttoptr i64 %1688 to { i64, i8* }*
  %1690 = alloca { i64, i8* }*
  store { i64, i8* }* %1689, { i64, i8* }** %1690
  %1691 = load { i64, i8* }*, { i64, i8* }** %1682
  %1692 = load %Environment, %Environment* %env.ptr
  %1693 = call %Value @eval_expr({ i64, i8* }* %1691, %Environment %1692)
  %1694 = alloca %Value
  store %Value %1693, %Value* %1694
  %1695 = getelementptr %Value, %Value* %1694, i32 0, i32 0
  %1696 = load %nyx_string*, %nyx_string** %1695
  %1697 = getelementptr [7 x i8], [7 x i8]* @.str145, i32 0, i32 0
  %1698 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str145.c, i8* %1697)
  %1699 = call i1 @nyx_string_equals(%nyx_string* %1696, %nyx_string* %1698)
  br i1 %1699, label %then293, label %else294
then293:
  %1700 = getelementptr %Value, %Value* %1694, i32 0, i32 4
  %1701 = load %nyx_string*, %nyx_string** %1700
  %1702 = alloca %nyx_string*
  store %nyx_string* %1701, %nyx_string** %1702
  %1703 = load %nyx_string*, %nyx_string** %1686
  %1704 = getelementptr [7 x i8], [7 x i8]* @.str146, i32 0, i32 0
  %1705 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str146.c, i8* %1704)
  %1706 = call i1 @nyx_string_equals(%nyx_string* %1703, %nyx_string* %1705)
  br i1 %1706, label %then296, label %else297
then296:
  %1707 = load %nyx_string*, %nyx_string** %1702
  %1708 = call i64 @nyx_string_byte_length(%nyx_string* %1707)
  %1709 = call %Value @make_int(i64 %1708)
  ret %Value %1709
else297:
  br label %merge298
merge298:
  %1710 = load %nyx_string*, %nyx_string** %1686
  %1711 = getelementptr [12 x i8], [12 x i8]* @.str147, i32 0, i32 0
  %1712 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str147.c, i8* %1711)
  %1713 = call i1 @nyx_string_equals(%nyx_string* %1710, %nyx_string* %1712)
  br i1 %1713, label %then299, label %else300
then299:
  %1714 = load %nyx_string*, %nyx_string** %1702
  %1715 = call i64 @nyx_string_length_utf8(%nyx_string* %1714)
  %1716 = call %Value @make_int(i64 %1715)
  ret %Value %1716
else300:
  br label %merge301
merge301:
  %1717 = load %nyx_string*, %nyx_string** %1686
  %1718 = getelementptr [12 x i8], [12 x i8]* @.str148, i32 0, i32 0
  %1719 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str148.c, i8* %1718)
  %1720 = call i1 @nyx_string_equals(%nyx_string* %1717, %nyx_string* %1719)
  br i1 %1720, label %then302, label %else303
then302:
  %1721 = load %nyx_string*, %nyx_string** %1702
  %1722 = call i64 @nyx_string_byte_length(%nyx_string* %1721)
  %1723 = call %Value @make_int(i64 %1722)
  ret %Value %1723
else303:
  br label %merge304
merge304:
  %1724 = load %nyx_string*, %nyx_string** %1686
  %1725 = getelementptr [8 x i8], [8 x i8]* @.str149, i32 0, i32 0
  %1726 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str149.c, i8* %1725)
  %1727 = call i1 @nyx_string_equals(%nyx_string* %1724, %nyx_string* %1726)
  br i1 %1727, label %then305, label %else306
then305:
  %1728 = load %nyx_string*, %nyx_string** %1702
  %1729 = call %nyx_string* @nyx_string_to_upper(%nyx_string* %1728)
  %1730 = call %Value @make_string(%nyx_string* %1729)
  ret %Value %1730
else306:
  br label %merge307
merge307:
  %1731 = load %nyx_string*, %nyx_string** %1686
  %1732 = getelementptr [8 x i8], [8 x i8]* @.str150, i32 0, i32 0
  %1733 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str150.c, i8* %1732)
  %1734 = call i1 @nyx_string_equals(%nyx_string* %1731, %nyx_string* %1733)
  br i1 %1734, label %then308, label %else309
then308:
  %1735 = load %nyx_string*, %nyx_string** %1702
  %1736 = call %nyx_string* @nyx_string_to_lower(%nyx_string* %1735)
  %1737 = call %Value @make_string(%nyx_string* %1736)
  ret %Value %1737
else309:
  br label %merge310
merge310:
  %1738 = load %nyx_string*, %nyx_string** %1686
  %1739 = getelementptr [5 x i8], [5 x i8]* @.str151, i32 0, i32 0
  %1740 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str151.c, i8* %1739)
  %1741 = call i1 @nyx_string_equals(%nyx_string* %1738, %nyx_string* %1740)
  br i1 %1741, label %then311, label %else312
then311:
  %1742 = load %nyx_string*, %nyx_string** %1702
  %1743 = call %nyx_string* @nyx_string_trim(%nyx_string* %1742)
  %1744 = call %Value @make_string(%nyx_string* %1743)
  ret %Value %1744
else312:
  br label %merge313
merge313:
  %1745 = load %nyx_string*, %nyx_string** %1686
  %1746 = getelementptr [8 x i8], [8 x i8]* @.str152, i32 0, i32 0
  %1747 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str152.c, i8* %1746)
  %1748 = call i1 @nyx_string_equals(%nyx_string* %1745, %nyx_string* %1747)
  br i1 %1748, label %then314, label %else315
then314:
  %1749 = load { i64, i8* }*, { i64, i8* }** %1690
  %1750 = call i64 @nyx_array_get({ i64, i8* }* %1749, i64 0)
  %1751 = inttoptr i64 %1750 to { i64, i8* }*
  %1752 = load %Environment, %Environment* %env.ptr
  %1753 = call %Value @eval_expr({ i64, i8* }* %1751, %Environment %1752)
  %1754 = alloca %Value
  store %Value %1753, %Value* %1754
  %1755 = load %nyx_string*, %nyx_string** %1702
  %1756 = getelementptr %Value, %Value* %1754, i32 0, i32 4
  %1757 = load %nyx_string*, %nyx_string** %1756
  %1758 = call i64 @nyx_string_index_of(%nyx_string* %1755, %nyx_string* %1757)
  %1759 = call %Value @make_int(i64 %1758)
  ret %Value %1759
else315:
  br label %merge316
merge316:
  %1760 = load %nyx_string*, %nyx_string** %1686
  %1761 = getelementptr [10 x i8], [10 x i8]* @.str153, i32 0, i32 0
  %1762 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str153.c, i8* %1761)
  %1763 = call i1 @nyx_string_equals(%nyx_string* %1760, %nyx_string* %1762)
  br i1 %1763, label %then317, label %else318
then317:
  %1764 = load { i64, i8* }*, { i64, i8* }** %1690
  %1765 = call i64 @nyx_array_get({ i64, i8* }* %1764, i64 0)
  %1766 = inttoptr i64 %1765 to { i64, i8* }*
  %1767 = load %Environment, %Environment* %env.ptr
  %1768 = call %Value @eval_expr({ i64, i8* }* %1766, %Environment %1767)
  %1769 = alloca %Value
  store %Value %1768, %Value* %1769
  %1770 = load { i64, i8* }*, { i64, i8* }** %1690
  %1771 = call i64 @nyx_array_get({ i64, i8* }* %1770, i64 1)
  %1772 = inttoptr i64 %1771 to { i64, i8* }*
  %1773 = load %Environment, %Environment* %env.ptr
  %1774 = call %Value @eval_expr({ i64, i8* }* %1772, %Environment %1773)
  %1775 = alloca %Value
  store %Value %1774, %Value* %1775
  %1776 = load %nyx_string*, %nyx_string** %1702
  %1777 = getelementptr %Value, %Value* %1769, i32 0, i32 1
  %1778 = load i64, i64* %1777
  %1779 = getelementptr %Value, %Value* %1775, i32 0, i32 1
  %1780 = load i64, i64* %1779
  %1781 = call %nyx_string* @nyx_string_substring(%nyx_string* %1776, i64 %1778, i64 %1780)
  %1782 = call %Value @make_string(%nyx_string* %1781)
  ret %Value %1782
else318:
  br label %merge319
merge319:
  %1783 = load %nyx_string*, %nyx_string** %1686
  %1784 = getelementptr [7 x i8], [7 x i8]* @.str154, i32 0, i32 0
  %1785 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str154.c, i8* %1784)
  %1786 = call i1 @nyx_string_equals(%nyx_string* %1783, %nyx_string* %1785)
  br i1 %1786, label %then320, label %else321
then320:
  %1787 = load { i64, i8* }*, { i64, i8* }** %1690
  %1788 = call i64 @nyx_array_get({ i64, i8* }* %1787, i64 0)
  %1789 = inttoptr i64 %1788 to { i64, i8* }*
  %1790 = load %Environment, %Environment* %env.ptr
  %1791 = call %Value @eval_expr({ i64, i8* }* %1789, %Environment %1790)
  %1792 = alloca %Value
  store %Value %1791, %Value* %1792
  %1793 = load %nyx_string*, %nyx_string** %1702
  %1794 = getelementptr %Value, %Value* %1792, i32 0, i32 1
  %1795 = load i64, i64* %1794
  %1796 = call i8 @nyx_string_char_at(%nyx_string* %1793, i64 %1795)
  %1797 = zext i8 %1796 to i64
  %1798 = trunc i64 %1797 to i8
  %1799 = alloca i8
  store i8 %1798, i8* %1799
  %1800 = load i8, i8* %1799
  %1801 = call %nyx_string* @nyx_string_from_char(i8 %1800)
  %1802 = call %Value @make_string(%nyx_string* %1801)
  ret %Value %1802
else321:
  br label %merge322
merge322:
  %1803 = load %nyx_string*, %nyx_string** %1686
  %1804 = getelementptr [11 x i8], [11 x i8]* @.str155, i32 0, i32 0
  %1805 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str155.c, i8* %1804)
  %1806 = call i1 @nyx_string_equals(%nyx_string* %1803, %nyx_string* %1805)
  br i1 %1806, label %then323, label %else324
then323:
  %1807 = load { i64, i8* }*, { i64, i8* }** %1690
  %1808 = call i64 @nyx_array_get({ i64, i8* }* %1807, i64 0)
  %1809 = inttoptr i64 %1808 to { i64, i8* }*
  %1810 = load %Environment, %Environment* %env.ptr
  %1811 = call %Value @eval_expr({ i64, i8* }* %1809, %Environment %1810)
  %1812 = alloca %Value
  store %Value %1811, %Value* %1812
  %1813 = load %nyx_string*, %nyx_string** %1702
  %1814 = getelementptr %Value, %Value* %1812, i32 0, i32 4
  %1815 = load %nyx_string*, %nyx_string** %1814
  %1816 = call i1 @nyx_string_starts_with(%nyx_string* %1813, %nyx_string* %1815)
  %1817 = call %Value @make_bool(i1 %1816)
  ret %Value %1817
else324:
  br label %merge325
merge325:
  %1818 = load %nyx_string*, %nyx_string** %1686
  %1819 = getelementptr [9 x i8], [9 x i8]* @.str156, i32 0, i32 0
  %1820 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str156.c, i8* %1819)
  %1821 = call i1 @nyx_string_equals(%nyx_string* %1818, %nyx_string* %1820)
  br i1 %1821, label %then326, label %else327
then326:
  %1822 = load { i64, i8* }*, { i64, i8* }** %1690
  %1823 = call i64 @nyx_array_get({ i64, i8* }* %1822, i64 0)
  %1824 = inttoptr i64 %1823 to { i64, i8* }*
  %1825 = load %Environment, %Environment* %env.ptr
  %1826 = call %Value @eval_expr({ i64, i8* }* %1824, %Environment %1825)
  %1827 = alloca %Value
  store %Value %1826, %Value* %1827
  %1828 = load %nyx_string*, %nyx_string** %1702
  %1829 = getelementptr %Value, %Value* %1827, i32 0, i32 4
  %1830 = load %nyx_string*, %nyx_string** %1829
  %1831 = call i1 @nyx_string_ends_with(%nyx_string* %1828, %nyx_string* %1830)
  %1832 = call %Value @make_bool(i1 %1831)
  ret %Value %1832
else327:
  br label %merge328
merge328:
  %1833 = load %nyx_string*, %nyx_string** %1686
  %1834 = getelementptr [8 x i8], [8 x i8]* @.str157, i32 0, i32 0
  %1835 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str157.c, i8* %1834)
  %1836 = call i1 @nyx_string_equals(%nyx_string* %1833, %nyx_string* %1835)
  br i1 %1836, label %then329, label %else330
then329:
  %1837 = load { i64, i8* }*, { i64, i8* }** %1690
  %1838 = call i64 @nyx_array_get({ i64, i8* }* %1837, i64 0)
  %1839 = inttoptr i64 %1838 to { i64, i8* }*
  %1840 = load %Environment, %Environment* %env.ptr
  %1841 = call %Value @eval_expr({ i64, i8* }* %1839, %Environment %1840)
  %1842 = alloca %Value
  store %Value %1841, %Value* %1842
  %1843 = load { i64, i8* }*, { i64, i8* }** %1690
  %1844 = call i64 @nyx_array_get({ i64, i8* }* %1843, i64 1)
  %1845 = inttoptr i64 %1844 to { i64, i8* }*
  %1846 = load %Environment, %Environment* %env.ptr
  %1847 = call %Value @eval_expr({ i64, i8* }* %1845, %Environment %1846)
  %1848 = alloca %Value
  store %Value %1847, %Value* %1848
  %1849 = load %nyx_string*, %nyx_string** %1702
  %1850 = getelementptr %Value, %Value* %1842, i32 0, i32 4
  %1851 = load %nyx_string*, %nyx_string** %1850
  %1852 = getelementptr %Value, %Value* %1848, i32 0, i32 4
  %1853 = load %nyx_string*, %nyx_string** %1852
  %1854 = call %nyx_string* @nyx_string_replace(%nyx_string* %1849, %nyx_string* %1851, %nyx_string* %1853)
  %1855 = call %Value @make_string(%nyx_string* %1854)
  ret %Value %1855
else330:
  br label %merge331
merge331:
  br label %merge295
else294:
  br label %merge295
merge295:
  %1856 = getelementptr %Value, %Value* %1694, i32 0, i32 0
  %1857 = load %nyx_string*, %nyx_string** %1856
  %1858 = getelementptr [6 x i8], [6 x i8]* @.str158, i32 0, i32 0
  %1859 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str158.c, i8* %1858)
  %1860 = call i1 @nyx_string_equals(%nyx_string* %1857, %nyx_string* %1859)
  br i1 %1860, label %then332, label %else333
then332:
  %1861 = getelementptr %Value, %Value* %1694, i32 0, i32 5
  %1862 = load { i64, i8* }*, { i64, i8* }** %1861
  %1863 = alloca { i64, i8* }*
  store { i64, i8* }* %1862, { i64, i8* }** %1863
  %1864 = load %nyx_string*, %nyx_string** %1686
  %1865 = getelementptr [7 x i8], [7 x i8]* @.str159, i32 0, i32 0
  %1866 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str159.c, i8* %1865)
  %1867 = call i1 @nyx_string_equals(%nyx_string* %1864, %nyx_string* %1866)
  br i1 %1867, label %then335, label %else336
then335:
  %1868 = load { i64, i8* }*, { i64, i8* }** %1863
  %1869 = call i64 @nyx_array_length({ i64, i8* }* %1868)
  %1870 = call %Value @make_int(i64 %1869)
  ret %Value %1870
else336:
  br label %merge337
merge337:
  %1871 = load %nyx_string*, %nyx_string** %1686
  %1872 = getelementptr [5 x i8], [5 x i8]* @.str160, i32 0, i32 0
  %1873 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str160.c, i8* %1872)
  %1874 = call i1 @nyx_string_equals(%nyx_string* %1871, %nyx_string* %1873)
  br i1 %1874, label %then338, label %else339
then338:
  %1875 = load { i64, i8* }*, { i64, i8* }** %1690
  %1876 = call i64 @nyx_array_get({ i64, i8* }* %1875, i64 0)
  %1877 = inttoptr i64 %1876 to { i64, i8* }*
  %1878 = load %Environment, %Environment* %env.ptr
  %1879 = call %Value @eval_expr({ i64, i8* }* %1877, %Environment %1878)
  %1880 = alloca %Value
  store %Value %1879, %Value* %1880
  %1881 = load { i64, i8* }*, { i64, i8* }** %1863
  %1882 = load %Value, %Value* %1880
  %1883 = getelementptr %Value, %Value* null, i32 1
  %1884 = ptrtoint %Value* %1883 to i64
  %1885 = call i8* @GC_malloc(i64 %1884)
  %1886 = bitcast i8* %1885 to %Value*
  store %Value %1882, %Value* %1886
  %1887 = ptrtoint %Value* %1886 to i64
  call void @nyx_array_push({ i64, i8* }* %1881, i64 %1887)
  %1888 = call %Value @make_nil()
  ret %Value %1888
else339:
  br label %merge340
merge340:
  %1889 = load %nyx_string*, %nyx_string** %1686
  %1890 = getelementptr [4 x i8], [4 x i8]* @.str161, i32 0, i32 0
  %1891 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str161.c, i8* %1890)
  %1892 = call i1 @nyx_string_equals(%nyx_string* %1889, %nyx_string* %1891)
  br i1 %1892, label %then341, label %else342
then341:
  %1893 = load { i64, i8* }*, { i64, i8* }** %1863
  %1894 = call i64 @nyx_array_pop({ i64, i8* }* %1893)
  %1895 = call %Value @make_nil()
  ret %Value %1895
else342:
  br label %merge343
merge343:
  br label %merge334
else333:
  br label %merge334
merge334:
  %1896 = getelementptr [8 x i8], [8 x i8]* @.str162, i32 0, i32 0
  %1897 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str162.c, i8* %1896)
  %1898 = getelementptr [39 x i8], [39 x i8]* @.str163, i32 0, i32 0
  %1899 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str163.c, i8* %1898)
  %1900 = load %nyx_string*, %nyx_string** %1686
  %1901 = call %nyx_string* @nyx_string_concat(%nyx_string* %1899, %nyx_string* %1900)
  %1902 = getelementptr [17 x i8], [17 x i8]* @.str164, i32 0, i32 0
  %1903 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str164.c, i8* %1902)
  %1904 = call %nyx_string* @nyx_string_concat(%nyx_string* %1901, %nyx_string* %1903)
  %1905 = getelementptr %Value, %Value* %1694, i32 0, i32 0
  %1906 = load %nyx_string*, %nyx_string** %1905
  %1907 = call %nyx_string* @nyx_string_concat(%nyx_string* %1904, %nyx_string* %1906)
  %1908 = getelementptr [42 x i8], [42 x i8]* @.str165, i32 0, i32 0
  %1909 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str165.c, i8* %1908)
  %1910 = load %nyx_string*, %nyx_string** %1686
  %1911 = call %nyx_string* @nyx_string_concat(%nyx_string* %1909, %nyx_string* %1910)
  %1912 = getelementptr [11 x i8], [11 x i8]* @.str166, i32 0, i32 0
  %1913 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str166.c, i8* %1912)
  %1914 = call %nyx_string* @nyx_string_concat(%nyx_string* %1911, %nyx_string* %1913)
  %1915 = getelementptr %Value, %Value* %1694, i32 0, i32 0
  %1916 = load %nyx_string*, %nyx_string** %1915
  %1917 = call %nyx_string* @nyx_string_concat(%nyx_string* %1914, %nyx_string* %1916)
  %1918 = call i64 @interp_err(%nyx_string* %1897, %nyx_string* %1907, %nyx_string* %1917)
  %1919 = getelementptr [9 x i8], [9 x i8]* @.str167, i32 0, i32 0
  %1920 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str167.c, i8* %1919)
  %1921 = call i8* @nyx_string_to_cstr(%nyx_string* %1920)
  %1922 = call %nyx_string* @nyx_getenv(i8* %1921)
  %1923 = alloca %nyx_string*
  store %nyx_string* %1922, %nyx_string** %1923
  %1924 = load %nyx_string*, %nyx_string** %1923
  %1925 = getelementptr [3 x i8], [3 x i8]* @.str168, i32 0, i32 0
  %1926 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str168.c, i8* %1925)
  %1927 = call i1 @nyx_string_equals(%nyx_string* %1924, %nyx_string* %1926)
  br i1 %1927, label %then344, label %else345
then344:
  %1928 = getelementptr [85 x i8], [85 x i8]* @.str169, i32 0, i32 0
  %1929 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str169.c, i8* %1928)
  %1930 = call i8* @nyx_string_to_cstr(%nyx_string* %1929)
  call void @nyx_print_string(i8* %1930)
  %1931 = getelementptr [85 x i8], [85 x i8]* @.str170, i32 0, i32 0
  %1932 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str170.c, i8* %1931)
  %1933 = call i8* @nyx_string_to_cstr(%nyx_string* %1932)
  call void @nyx_print_string(i8* %1933)
  br label %merge346
else345:
  %1934 = getelementptr [79 x i8], [79 x i8]* @.str171, i32 0, i32 0
  %1935 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str171.c, i8* %1934)
  %1936 = call i8* @nyx_string_to_cstr(%nyx_string* %1935)
  call void @nyx_print_string(i8* %1936)
  %1937 = getelementptr [84 x i8], [84 x i8]* @.str172, i32 0, i32 0
  %1938 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str172.c, i8* %1937)
  %1939 = call i8* @nyx_string_to_cstr(%nyx_string* %1938)
  call void @nyx_print_string(i8* %1939)
  br label %merge346
merge346:
  %1940 = call %Value @make_nil()
  ret %Value %1940
}

define internal %Value @eval_call(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %1941 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1942 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %1941)
  %1943 = alloca { i64, i8* }*
  store { i64, i8* }* %1942, { i64, i8* }** %1943
  %1944 = load { i64, i8* }*, { i64, i8* }** %1943
  %1945 = call i64 @nyx_array_get({ i64, i8* }* %1944, i64 0)
  %1946 = inttoptr i64 %1945 to { i64, i8* }*
  %1947 = alloca { i64, i8* }*
  store { i64, i8* }* %1946, { i64, i8* }** %1947
  %1948 = load { i64, i8* }*, { i64, i8* }** %1943
  %1949 = call i64 @nyx_array_get({ i64, i8* }* %1948, i64 1)
  %1950 = inttoptr i64 %1949 to { i64, i8* }*
  %1951 = alloca { i64, i8* }*
  store { i64, i8* }* %1950, { i64, i8* }** %1951
  %1952 = load { i64, i8* }*, { i64, i8* }** %1947
  %1953 = call i64 @nyx_array_get({ i64, i8* }* %1952, i64 1)
  %1954 = inttoptr i64 %1953 to { i64, i8* }*
  %1955 = alloca { i64, i8* }*
  store { i64, i8* }* %1954, { i64, i8* }** %1955
  %1956 = load { i64, i8* }*, { i64, i8* }** %1955
  %1957 = call i64 @nyx_array_get_checked({ i64, i8* }* %1956, i64 0, i64 2)
  %1958 = inttoptr i64 %1957 to %nyx_string*
  %1959 = alloca %nyx_string*
  store %nyx_string* %1958, %nyx_string** %1959
  %1960 = load %nyx_string*, %nyx_string** %1959
  %1961 = getelementptr [6 x i8], [6 x i8]* @.str173, i32 0, i32 0
  %1962 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str173.c, i8* %1961)
  %1963 = call i1 @nyx_string_equals(%nyx_string* %1960, %nyx_string* %1962)
  br i1 %1963, label %then347, label %else348
then347:
  %1964 = load { i64, i8* }*, { i64, i8* }** %1951
  %1965 = load %Environment, %Environment* %env.ptr
  %1966 = call %Value @eval_builtin_print({ i64, i8* }* %1964, %Environment %1965)
  ret %Value %1966
else348:
  br label %merge349
merge349:
  %1967 = load %nyx_string*, %nyx_string** %1959
  %1968 = getelementptr [10 x i8], [10 x i8]* @.str174, i32 0, i32 0
  %1969 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str174.c, i8* %1968)
  %1970 = call i1 @nyx_string_equals(%nyx_string* %1967, %nyx_string* %1969)
  br i1 %1970, label %then350, label %else351
then350:
  %1971 = load { i64, i8* }*, { i64, i8* }** %1951
  %1972 = load %Environment, %Environment* %env.ptr
  %1973 = call %Value @eval_builtin_read_file({ i64, i8* }* %1971, %Environment %1972)
  ret %Value %1973
else351:
  br label %merge352
merge352:
  %1974 = load %nyx_string*, %nyx_string** %1959
  %1975 = getelementptr [10 x i8], [10 x i8]* @.str175, i32 0, i32 0
  %1976 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str175.c, i8* %1975)
  %1977 = call i1 @nyx_string_equals(%nyx_string* %1974, %nyx_string* %1976)
  br i1 %1977, label %then353, label %else354
then353:
  %1978 = load { i64, i8* }*, { i64, i8* }** %1951
  %1979 = load %Environment, %Environment* %env.ptr
  %1980 = call %Value @eval_builtin_read_line({ i64, i8* }* %1978, %Environment %1979)
  ret %Value %1980
else354:
  br label %merge355
merge355:
  %1981 = load %nyx_string*, %nyx_string** %1959
  %1982 = getelementptr [17 x i8], [17 x i8]* @.str176, i32 0, i32 0
  %1983 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str176.c, i8* %1982)
  %1984 = call i1 @nyx_string_equals(%nyx_string* %1981, %nyx_string* %1983)
  br i1 %1984, label %then356, label %else357
then356:
  %1985 = load { i64, i8* }*, { i64, i8* }** %1951
  %1986 = load %Environment, %Environment* %env.ptr
  %1987 = call %Value @eval_builtin_print_no_newline({ i64, i8* }* %1985, %Environment %1986)
  ret %Value %1987
else357:
  br label %merge358
merge358:
  %1988 = load %Environment, %Environment* %env.ptr
  %1989 = load %nyx_string*, %nyx_string** %1959
  %1990 = call i1 @env_has(%Environment %1988, %nyx_string* %1989)
  %1991 = xor i1 %1990, true
  br i1 %1991, label %then359, label %else360
then359:
  %1992 = getelementptr [8 x i8], [8 x i8]* @.str177, i32 0, i32 0
  %1993 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str177.c, i8* %1992)
  %1994 = getelementptr [23 x i8], [23 x i8]* @.str178, i32 0, i32 0
  %1995 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str178.c, i8* %1994)
  %1996 = load %nyx_string*, %nyx_string** %1959
  %1997 = call %nyx_string* @nyx_string_concat(%nyx_string* %1995, %nyx_string* %1996)
  %1998 = getelementptr [21 x i8], [21 x i8]* @.str179, i32 0, i32 0
  %1999 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str179.c, i8* %1998)
  %2000 = load %nyx_string*, %nyx_string** %1959
  %2001 = call %nyx_string* @nyx_string_concat(%nyx_string* %1999, %nyx_string* %2000)
  %2002 = call i64 @interp_err(%nyx_string* %1993, %nyx_string* %1997, %nyx_string* %2001)
  %2003 = call %Value @make_nil()
  ret %Value %2003
else360:
  br label %merge361
merge361:
  %2004 = load %Environment, %Environment* %env.ptr
  %2005 = load %nyx_string*, %nyx_string** %1959
  %2006 = call %Value @env_get(%Environment %2004, %nyx_string* %2005)
  %2007 = alloca %Value
  store %Value %2006, %Value* %2007
  %2008 = getelementptr %Value, %Value* %2007, i32 0, i32 0
  %2009 = load %nyx_string*, %nyx_string** %2008
  %2010 = getelementptr [9 x i8], [9 x i8]* @.str180, i32 0, i32 0
  %2011 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str180.c, i8* %2010)
  %2012 = call i1 @nyx_string_equals(%nyx_string* %2009, %nyx_string* %2011)
  %2013 = xor i1 %2012, true
  br i1 %2013, label %then362, label %else363
then362:
  %2014 = getelementptr [8 x i8], [8 x i8]* @.str181, i32 0, i32 0
  %2015 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str181.c, i8* %2014)
  %2016 = getelementptr [2 x i8], [2 x i8]* @.str182, i32 0, i32 0
  %2017 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str182.c, i8* %2016)
  %2018 = load %nyx_string*, %nyx_string** %1959
  %2019 = call %nyx_string* @nyx_string_concat(%nyx_string* %2017, %nyx_string* %2018)
  %2020 = getelementptr [21 x i8], [21 x i8]* @.str183, i32 0, i32 0
  %2021 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str183.c, i8* %2020)
  %2022 = call %nyx_string* @nyx_string_concat(%nyx_string* %2019, %nyx_string* %2021)
  %2023 = getelementptr [2 x i8], [2 x i8]* @.str184, i32 0, i32 0
  %2024 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str184.c, i8* %2023)
  %2025 = load %nyx_string*, %nyx_string** %1959
  %2026 = call %nyx_string* @nyx_string_concat(%nyx_string* %2024, %nyx_string* %2025)
  %2027 = getelementptr [20 x i8], [20 x i8]* @.str185, i32 0, i32 0
  %2028 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str185.c, i8* %2027)
  %2029 = call %nyx_string* @nyx_string_concat(%nyx_string* %2026, %nyx_string* %2028)
  %2030 = call i64 @interp_err(%nyx_string* %2015, %nyx_string* %2022, %nyx_string* %2029)
  %2031 = call %Value @make_nil()
  ret %Value %2031
else363:
  br label %merge364
merge364:
  %2032 = load %Value, %Value* %2007
  %2033 = call { i64, i8* }* @get_func_params(%Value %2032)
  %2034 = alloca { i64, i8* }*
  store { i64, i8* }* %2033, { i64, i8* }** %2034
  %2035 = load %Value, %Value* %2007
  %2036 = call %nyx_string* @get_func_body_type(%Value %2035)
  %2037 = alloca %nyx_string*
  store %nyx_string* %2036, %nyx_string** %2037
  %2038 = load %Value, %Value* %2007
  %2039 = call { i64, i8* }* @get_func_body_data(%Value %2038)
  %2040 = alloca { i64, i8* }*
  store { i64, i8* }* %2039, { i64, i8* }** %2040
  %2041 = load %nyx_string*, %nyx_string** %2037
  %2042 = load { i64, i8* }*, { i64, i8* }** %2040
  %2043 = call { i64, i8* }* @make_astnode(%nyx_string* %2041, { i64, i8* }* %2042)
  %2044 = alloca { i64, i8* }*
  store { i64, i8* }* %2043, { i64, i8* }** %2044
  %2045 = load %Value, %Value* %2007
  %2046 = call i8* @get_func_env_bindings(%Value %2045)
  %2047 = alloca i8*
  store i8* %2046, i8** %2047
  %2048 = load %Value, %Value* %2007
  %2049 = call { i64, i8* }* @get_func_env_parent(%Value %2048)
  %2050 = alloca { i64, i8* }*
  store { i64, i8* }* %2049, { i64, i8* }** %2050
  %2051 = getelementptr %Environment, %Environment* null, i32 1
  %2052 = ptrtoint %Environment* %2051 to i64
  %2053 = call i8* @GC_malloc(i64 %2052)
  %2054 = bitcast i8* %2053 to %Environment*
  %2055 = load i8*, i8** %2047
  %2056 = getelementptr %Environment, %Environment* %2054, i32 0, i32 0
  store i8* %2055, i8** %2056
  %2057 = load { i64, i8* }*, { i64, i8* }** %2050
  %2058 = getelementptr %Environment, %Environment* %2054, i32 0, i32 1
  store { i64, i8* }* %2057, { i64, i8* }** %2058
  %2059 = load %Environment, %Environment* %2054
  %2060 = alloca %Environment
  store %Environment %2059, %Environment* %2060
  %2061 = load %Environment, %Environment* %2060
  %2062 = call %Environment @make_child_env(%Environment %2061)
  %2063 = alloca %Environment
  store %Environment %2062, %Environment* %2063
  %2064 = load { i64, i8* }*, { i64, i8* }** %1951
  %2065 = call i64 @nyx_array_length({ i64, i8* }* %2064)
  %2066 = load { i64, i8* }*, { i64, i8* }** %2034
  %2067 = call i64 @nyx_array_length({ i64, i8* }* %2066)
  %2068 = icmp ne i64 %2065, %2067
  br i1 %2068, label %then365, label %else366
then365:
  %2069 = getelementptr [8 x i8], [8 x i8]* @.str186, i32 0, i32 0
  %2070 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str186.c, i8* %2069)
  %2071 = getelementptr [2 x i8], [2 x i8]* @.str187, i32 0, i32 0
  %2072 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str187.c, i8* %2071)
  %2073 = load %nyx_string*, %nyx_string** %1959
  %2074 = call %nyx_string* @nyx_string_concat(%nyx_string* %2072, %nyx_string* %2073)
  %2075 = getelementptr [10 x i8], [10 x i8]* @.str188, i32 0, i32 0
  %2076 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str188.c, i8* %2075)
  %2077 = call %nyx_string* @nyx_string_concat(%nyx_string* %2074, %nyx_string* %2076)
  %2078 = load { i64, i8* }*, { i64, i8* }** %2034
  %2079 = call i64 @nyx_array_length({ i64, i8* }* %2078)
  %2080 = call %nyx_string* @nyx_string_from_int(i64 %2079)
  %2081 = call %nyx_string* @nyx_string_concat(%nyx_string* %2077, %nyx_string* %2080)
  %2082 = getelementptr [25 x i8], [25 x i8]* @.str189, i32 0, i32 0
  %2083 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str189.c, i8* %2082)
  %2084 = call %nyx_string* @nyx_string_concat(%nyx_string* %2081, %nyx_string* %2083)
  %2085 = load { i64, i8* }*, { i64, i8* }** %1951
  %2086 = call i64 @nyx_array_length({ i64, i8* }* %2085)
  %2087 = call %nyx_string* @nyx_string_from_int(i64 %2086)
  %2088 = call %nyx_string* @nyx_string_concat(%nyx_string* %2084, %nyx_string* %2087)
  %2089 = getelementptr [2 x i8], [2 x i8]* @.str190, i32 0, i32 0
  %2090 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str190.c, i8* %2089)
  %2091 = load %nyx_string*, %nyx_string** %1959
  %2092 = call %nyx_string* @nyx_string_concat(%nyx_string* %2090, %nyx_string* %2091)
  %2093 = getelementptr [11 x i8], [11 x i8]* @.str191, i32 0, i32 0
  %2094 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str191.c, i8* %2093)
  %2095 = call %nyx_string* @nyx_string_concat(%nyx_string* %2092, %nyx_string* %2094)
  %2096 = load { i64, i8* }*, { i64, i8* }** %2034
  %2097 = call i64 @nyx_array_length({ i64, i8* }* %2096)
  %2098 = call %nyx_string* @nyx_string_from_int(i64 %2097)
  %2099 = call %nyx_string* @nyx_string_concat(%nyx_string* %2095, %nyx_string* %2098)
  %2100 = getelementptr [19 x i8], [19 x i8]* @.str192, i32 0, i32 0
  %2101 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str192.c, i8* %2100)
  %2102 = call %nyx_string* @nyx_string_concat(%nyx_string* %2099, %nyx_string* %2101)
  %2103 = load { i64, i8* }*, { i64, i8* }** %1951
  %2104 = call i64 @nyx_array_length({ i64, i8* }* %2103)
  %2105 = call %nyx_string* @nyx_string_from_int(i64 %2104)
  %2106 = call %nyx_string* @nyx_string_concat(%nyx_string* %2102, %nyx_string* %2105)
  %2107 = call i64 @interp_err(%nyx_string* %2070, %nyx_string* %2088, %nyx_string* %2106)
  %2108 = call %Value @make_nil()
  ret %Value %2108
else366:
  br label %merge367
merge367:
  %2109 = alloca i64
  store i64 0, i64* %2109
  %2110 = call i8* @llvm.stacksave()
  br label %while_cond368
while_cond368:
  %2111 = load i64, i64* %2109
  %2112 = load { i64, i8* }*, { i64, i8* }** %2034
  %2113 = call i64 @nyx_array_length({ i64, i8* }* %2112)
  %2114 = icmp slt i64 %2111, %2113
  br i1 %2114, label %while_body369, label %while_end370
while_body369:
  call void @llvm.stackrestore(i8* %2110)
  %2115 = load { i64, i8* }*, { i64, i8* }** %2034
  %2116 = load i64, i64* %2109
  %2117 = call i64 @nyx_array_get({ i64, i8* }* %2115, i64 %2116)
  %2118 = inttoptr i64 %2117 to { i64, i8* }*
  %2119 = alloca { i64, i8* }*
  store { i64, i8* }* %2118, { i64, i8* }** %2119
  %2120 = load { i64, i8* }*, { i64, i8* }** %2119
  %2121 = call i64 @nyx_array_get_checked({ i64, i8* }* %2120, i64 0, i64 2)
  %2122 = inttoptr i64 %2121 to %nyx_string*
  %2123 = alloca %nyx_string*
  store %nyx_string* %2122, %nyx_string** %2123
  %2124 = load { i64, i8* }*, { i64, i8* }** %1951
  %2125 = load i64, i64* %2109
  %2126 = call i64 @nyx_array_get({ i64, i8* }* %2124, i64 %2125)
  %2127 = inttoptr i64 %2126 to { i64, i8* }*
  %2128 = alloca { i64, i8* }*
  store { i64, i8* }* %2127, { i64, i8* }** %2128
  %2129 = load { i64, i8* }*, { i64, i8* }** %2128
  %2130 = load %Environment, %Environment* %env.ptr
  %2131 = call %Value @eval_expr({ i64, i8* }* %2129, %Environment %2130)
  %2132 = alloca %Value
  store %Value %2131, %Value* %2132
  %2133 = load %Environment, %Environment* %2063
  %2134 = load %nyx_string*, %nyx_string** %2123
  %2135 = load %Value, %Value* %2132
  %2136 = call i64 @env_define(%Environment %2133, %nyx_string* %2134, %Value %2135)
  %2137 = load i64, i64* %2109
  %2138 = add i64 %2137, 1
  store i64 %2138, i64* %2109
  br label %while_cond368
while_end370:
  %2139 = load { i64, i8* }*, { i64, i8* }** %2044
  %2140 = load %Environment, %Environment* %2063
  %2141 = call %Value @eval_stmt({ i64, i8* }* %2139, %Environment %2140)
  %2142 = alloca %Value
  store %Value %2141, %Value* %2142
  %2143 = getelementptr %Value, %Value* %2142, i32 0, i32 0
  %2144 = load %nyx_string*, %nyx_string** %2143
  %2145 = getelementptr [7 x i8], [7 x i8]* @.str193, i32 0, i32 0
  %2146 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str193.c, i8* %2145)
  %2147 = call i1 @nyx_string_equals(%nyx_string* %2144, %nyx_string* %2146)
  br i1 %2147, label %then371, label %else372
then371:
  %2148 = load %Value, %Value* %2142
  %2149 = call %Value @unwrap_return_value(%Value %2148)
  ret %Value %2149
else372:
  br label %merge373
merge373:
  %2150 = load %Value, %Value* %2142
  ret %Value %2150
}

define internal %Value @eval_builtin_print(
{ i64, i8* }* %args.param, %Environment %env.param) {
  %args.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %args.param, { i64, i8* }** %args.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %2151 = alloca i64
  store i64 0, i64* %2151
  %2152 = call i8* @llvm.stacksave()
  br label %while_cond374
while_cond374:
  %2153 = load i64, i64* %2151
  %2154 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %2155 = call i64 @nyx_array_length({ i64, i8* }* %2154)
  %2156 = icmp slt i64 %2153, %2155
  br i1 %2156, label %while_body375, label %while_end376
while_body375:
  call void @llvm.stackrestore(i8* %2152)
  %2157 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %2158 = load i64, i64* %2151
  %2159 = call i64 @nyx_array_get({ i64, i8* }* %2157, i64 %2158)
  %2160 = inttoptr i64 %2159 to { i64, i8* }*
  %2161 = alloca { i64, i8* }*
  store { i64, i8* }* %2160, { i64, i8* }** %2161
  %2162 = load { i64, i8* }*, { i64, i8* }** %2161
  %2163 = load %Environment, %Environment* %env.ptr
  %2164 = call %Value @eval_expr({ i64, i8* }* %2162, %Environment %2163)
  %2165 = alloca %Value
  store %Value %2164, %Value* %2165
  %2166 = load %Value, %Value* %2165
  %2167 = call i64 @print_value(%Value %2166)
  %2168 = load i64, i64* %2151
  %2169 = add i64 %2168, 1
  store i64 %2169, i64* %2151
  br label %while_cond374
while_end376:
  %2170 = call %Value @make_nil()
  ret %Value %2170
}

define internal %Value @eval_builtin_read_line(
{ i64, i8* }* %args.param, %Environment %env.param) {
  %args.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %args.param, { i64, i8* }** %args.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %2171 = call %nyx_string* @nyx_read_line()
  %2172 = alloca %nyx_string*
  store %nyx_string* %2171, %nyx_string** %2172
  %2173 = load %nyx_string*, %nyx_string** %2172
  %2174 = call %Value @make_string(%nyx_string* %2173)
  ret %Value %2174
}

define internal %Value @eval_builtin_print_no_newline(
{ i64, i8* }* %args.param, %Environment %env.param) {
  %args.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %args.param, { i64, i8* }** %args.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %2175 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %2176 = call i64 @nyx_array_length({ i64, i8* }* %2175)
  %2177 = icmp sgt i64 %2176, 0
  br i1 %2177, label %then377, label %else378
then377:
  %2178 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %2179 = call i64 @nyx_array_get({ i64, i8* }* %2178, i64 0)
  %2180 = inttoptr i64 %2179 to { i64, i8* }*
  %2181 = alloca { i64, i8* }*
  store { i64, i8* }* %2180, { i64, i8* }** %2181
  %2182 = load { i64, i8* }*, { i64, i8* }** %2181
  %2183 = load %Environment, %Environment* %env.ptr
  %2184 = call %Value @eval_expr({ i64, i8* }* %2182, %Environment %2183)
  %2185 = alloca %Value
  store %Value %2184, %Value* %2185
  %2186 = load %Value, %Value* %2185
  %2187 = call %nyx_string* @value_to_string(%Value %2186)
  call void @nyx_print_no_newline(%nyx_string* %2187)
  br label %merge379
else378:
  br label %merge379
merge379:
  %2188 = call %Value @make_nil()
  ret %Value %2188
}

define internal %Value @eval_builtin_read_file(
{ i64, i8* }* %args.param, %Environment %env.param) {
  %args.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %args.param, { i64, i8* }** %args.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %2189 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %2190 = call i64 @nyx_array_length({ i64, i8* }* %2189)
  %2191 = icmp sgt i64 %2190, 0
  br i1 %2191, label %then380, label %else381
then380:
  %2192 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %2193 = call i64 @nyx_array_get({ i64, i8* }* %2192, i64 0)
  %2194 = inttoptr i64 %2193 to { i64, i8* }*
  %2195 = load %Environment, %Environment* %env.ptr
  %2196 = call %Value @eval_expr({ i64, i8* }* %2194, %Environment %2195)
  %2197 = alloca %Value
  store %Value %2196, %Value* %2197
  %2198 = load %Value, %Value* %2197
  %2199 = call %nyx_string* @value_to_string(%Value %2198)
  %2200 = alloca %nyx_string*
  store %nyx_string* %2199, %nyx_string** %2200
  %2201 = load %nyx_string*, %nyx_string** %2200
  %2202 = call i8* @nyx_string_to_cstr(%nyx_string* %2201)
  %2203 = call %nyx_string* @nyx_read_file(i8* %2202)
  %2204 = alloca %nyx_string*
  store %nyx_string* %2203, %nyx_string** %2204
  %2205 = load %nyx_string*, %nyx_string** %2204
  %2206 = call %Value @make_string(%nyx_string* %2205)
  ret %Value %2206
else381:
  br label %merge382
merge382:
  %2207 = call %Value @make_nil()
  ret %Value %2207
}

define %Environment @repl_make_env(
) {
  %2208 = call %Environment @make_env()
  ret %Environment %2208
}

define %nyx_string* @repl_eval(
{ i64, i8* }* %ast.param, %Environment %env.param) {
  %ast.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %ast.param, { i64, i8* }** %ast.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %2209 = load { i64, i8* }*, { i64, i8* }** %ast.ptr
  %2210 = call i64 @nyx_array_get({ i64, i8* }* %2209, i64 1)
  %2211 = inttoptr i64 %2210 to { i64, i8* }*
  %2212 = alloca { i64, i8* }*
  store { i64, i8* }* %2211, { i64, i8* }** %2212
  %2213 = load { i64, i8* }*, { i64, i8* }** %2212
  %2214 = call i64 @nyx_array_get({ i64, i8* }* %2213, i64 0)
  %2215 = inttoptr i64 %2214 to { i64, i8* }*
  %2216 = alloca { i64, i8* }*
  store { i64, i8* }* %2215, { i64, i8* }** %2216
  %2217 = getelementptr [1 x i8], [1 x i8]* @.str194, i32 0, i32 0
  %2218 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str194.c, i8* %2217)
  %2219 = alloca %nyx_string*
  store %nyx_string* %2218, %nyx_string** %2219
  %2220 = alloca i64
  store i64 0, i64* %2220
  %2221 = call i8* @llvm.stacksave()
  br label %while_cond383
while_cond383:
  %2222 = load i64, i64* %2220
  %2223 = load { i64, i8* }*, { i64, i8* }** %2216
  %2224 = call i64 @nyx_array_length({ i64, i8* }* %2223)
  %2225 = icmp slt i64 %2222, %2224
  br i1 %2225, label %while_body384, label %while_end385
while_body384:
  call void @llvm.stackrestore(i8* %2221)
  %2226 = load { i64, i8* }*, { i64, i8* }** %2216
  %2227 = load i64, i64* %2220
  %2228 = call i64 @nyx_array_get({ i64, i8* }* %2226, i64 %2227)
  %2229 = inttoptr i64 %2228 to { i64, i8* }*
  %2230 = alloca { i64, i8* }*
  store { i64, i8* }* %2229, { i64, i8* }** %2230
  %2231 = load { i64, i8* }*, { i64, i8* }** %2230
  %2232 = load %Environment, %Environment* %env.ptr
  %2233 = call %Value @eval_stmt({ i64, i8* }* %2231, %Environment %2232)
  %2234 = alloca %Value
  store %Value %2233, %Value* %2234
  %2235 = alloca i1
  store i1 false, i1* %2235
  %2236 = getelementptr %Value, %Value* %2234, i32 0, i32 0
  %2237 = load %nyx_string*, %nyx_string** %2236
  %2238 = getelementptr [4 x i8], [4 x i8]* @.str195, i32 0, i32 0
  %2239 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str195.c, i8* %2238)
  %2240 = call i1 @nyx_string_equals(%nyx_string* %2237, %nyx_string* %2239)
  %2241 = xor i1 %2240, true
  br i1 %2241, label %sc_and_rhs386, label %sc_and_end387
sc_and_rhs386:
  %2242 = getelementptr %Value, %Value* %2234, i32 0, i32 0
  %2243 = load %nyx_string*, %nyx_string** %2242
  %2244 = getelementptr [7 x i8], [7 x i8]* @.str196, i32 0, i32 0
  %2245 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str196.c, i8* %2244)
  %2246 = call i1 @nyx_string_equals(%nyx_string* %2243, %nyx_string* %2245)
  %2247 = xor i1 %2246, true
  store i1 %2247, i1* %2235
  br label %sc_and_end387
sc_and_end387:
  %2248 = load i1, i1* %2235
  br i1 %2248, label %then388, label %else389
then388:
  %2249 = getelementptr [4 x i8], [4 x i8]* @.str197, i32 0, i32 0
  %2250 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str197.c, i8* %2249)
  %2251 = load %Value, %Value* %2234
  %2252 = call %nyx_string* @value_to_string(%Value %2251)
  %2253 = call %nyx_string* @nyx_string_concat(%nyx_string* %2250, %nyx_string* %2252)
  store %nyx_string* %2253, %nyx_string** %2219
  br label %merge390
else389:
  br label %merge390
merge390:
  %2254 = load i64, i64* %2220
  %2255 = add i64 %2254, 1
  store i64 %2255, i64* %2220
  br label %while_cond383
while_end385:
  %2256 = load %nyx_string*, %nyx_string** %2219
  ret %nyx_string* %2256
}

define i8* @repl_make_map(
) {
  %2257 = call i8* @nyx_map_new(i32 0)
  ret i8* %2257
}

define %nyx_string* @repl_eval_with_map(
{ i64, i8* }* %ast.param, i8* %env_map.param) {
  %ast.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %ast.param, { i64, i8* }** %ast.ptr
  %env_map.ptr = alloca i8*
  store i8* %env_map.param, i8** %env_map.ptr
  %2258 = getelementptr %Environment, %Environment* null, i32 1
  %2259 = ptrtoint %Environment* %2258 to i64
  %2260 = call i8* @GC_malloc(i64 %2259)
  %2261 = bitcast i8* %2260 to %Environment*
  %2262 = load i8*, i8** %env_map.ptr
  %2263 = getelementptr %Environment, %Environment* %2261, i32 0, i32 0
  store i8* %2262, i8** %2263
  %2264 = call { i64, i8* }* @nyx_array_new_ptr()
  %2265 = getelementptr %Environment, %Environment* %2261, i32 0, i32 1
  store { i64, i8* }* %2264, { i64, i8* }** %2265
  %2266 = load %Environment, %Environment* %2261
  %2267 = alloca %Environment
  store %Environment %2266, %Environment* %2267
  %2268 = load { i64, i8* }*, { i64, i8* }** %ast.ptr
  %2269 = load %Environment, %Environment* %2267
  %2270 = call %nyx_string* @repl_eval({ i64, i8* }* %2268, %Environment %2269)
  ret %nyx_string* %2270
}

define %Value @interpret(
{ i64, i8* }* %ast.param) {
  %ast.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %ast.param, { i64, i8* }** %ast.ptr
  %2271 = call %Environment @make_env()
  %2272 = alloca %Environment
  store %Environment %2271, %Environment* %2272
  %2273 = load { i64, i8* }*, { i64, i8* }** %ast.ptr
  %2274 = call %nyx_string* @astnode_get_type({ i64, i8* }* %2273)
  %2275 = alloca %nyx_string*
  store %nyx_string* %2274, %nyx_string** %2275
  %2276 = load %nyx_string*, %nyx_string** %2275
  %2277 = getelementptr [6 x i8], [6 x i8]* @.str198, i32 0, i32 0
  %2278 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str198.c, i8* %2277)
  %2279 = call i1 @nyx_string_equals(%nyx_string* %2276, %nyx_string* %2278)
  br i1 %2279, label %then391, label %else392
then391:
  %2280 = load { i64, i8* }*, { i64, i8* }** %ast.ptr
  %2281 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %2280)
  %2282 = alloca { i64, i8* }*
  store { i64, i8* }* %2281, { i64, i8* }** %2282
  %2283 = load { i64, i8* }*, { i64, i8* }** %2282
  %2284 = call i64 @nyx_array_get({ i64, i8* }* %2283, i64 0)
  %2285 = inttoptr i64 %2284 to { i64, i8* }*
  %2286 = alloca { i64, i8* }*
  store { i64, i8* }* %2285, { i64, i8* }** %2286
  %2287 = alloca i64
  store i64 0, i64* %2287
  %2288 = call i8* @llvm.stacksave()
  br label %while_cond394
while_cond394:
  %2289 = load i64, i64* %2287
  %2290 = load { i64, i8* }*, { i64, i8* }** %2286
  %2291 = call i64 @nyx_array_length({ i64, i8* }* %2290)
  %2292 = icmp slt i64 %2289, %2291
  br i1 %2292, label %while_body395, label %while_end396
while_body395:
  call void @llvm.stackrestore(i8* %2288)
  %2293 = load { i64, i8* }*, { i64, i8* }** %2286
  %2294 = load i64, i64* %2287
  %2295 = call i64 @nyx_array_get({ i64, i8* }* %2293, i64 %2294)
  %2296 = inttoptr i64 %2295 to { i64, i8* }*
  %2297 = alloca { i64, i8* }*
  store { i64, i8* }* %2296, { i64, i8* }** %2297
  %2298 = load { i64, i8* }*, { i64, i8* }** %2297
  %2299 = load %Environment, %Environment* %2272
  %2300 = call %Value @eval_stmt({ i64, i8* }* %2298, %Environment %2299)
  %2301 = load i64, i64* %2287
  %2302 = add i64 %2301, 1
  store i64 %2302, i64* %2287
  br label %while_cond394
while_end396:
  %2303 = getelementptr %Environment, %Environment* %2272, i32 0, i32 0
  %2304 = load i8*, i8** %2303
  %2305 = alloca i8*
  store i8* %2304, i8** %2305
  %2306 = load i8*, i8** %2305
  %2307 = getelementptr [5 x i8], [5 x i8]* @.str199, i32 0, i32 0
  %2308 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str199.c, i8* %2307)
  %2309 = call i8* @nyx_string_to_cstr(%nyx_string* %2308)
  %2310 = call i1 @nyx_map_contains_str(i8* %2306, i8* %2309)
  br i1 %2310, label %then397, label %else398
then397:
  %2311 = load %Environment, %Environment* %2272
  %2312 = getelementptr [5 x i8], [5 x i8]* @.str200, i32 0, i32 0
  %2313 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str200.c, i8* %2312)
  %2314 = call %Value @env_get(%Environment %2311, %nyx_string* %2313)
  %2315 = alloca %Value
  store %Value %2314, %Value* %2315
  %2316 = getelementptr %Value, %Value* %2315, i32 0, i32 0
  %2317 = load %nyx_string*, %nyx_string** %2316
  %2318 = getelementptr [9 x i8], [9 x i8]* @.str201, i32 0, i32 0
  %2319 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str201.c, i8* %2318)
  %2320 = call i1 @nyx_string_equals(%nyx_string* %2317, %nyx_string* %2319)
  br i1 %2320, label %then400, label %else401
then400:
  %2321 = load %Value, %Value* %2315
  %2322 = call { i64, i8* }* @get_func_params(%Value %2321)
  %2323 = alloca { i64, i8* }*
  store { i64, i8* }* %2322, { i64, i8* }** %2323
  %2324 = load %Value, %Value* %2315
  %2325 = call %nyx_string* @get_func_body_type(%Value %2324)
  %2326 = alloca %nyx_string*
  store %nyx_string* %2325, %nyx_string** %2326
  %2327 = load %Value, %Value* %2315
  %2328 = call { i64, i8* }* @get_func_body_data(%Value %2327)
  %2329 = alloca { i64, i8* }*
  store { i64, i8* }* %2328, { i64, i8* }** %2329
  %2330 = load %nyx_string*, %nyx_string** %2326
  %2331 = load { i64, i8* }*, { i64, i8* }** %2329
  %2332 = call { i64, i8* }* @make_astnode(%nyx_string* %2330, { i64, i8* }* %2331)
  %2333 = alloca { i64, i8* }*
  store { i64, i8* }* %2332, { i64, i8* }** %2333
  %2334 = load %Value, %Value* %2315
  %2335 = call i8* @get_func_env_bindings(%Value %2334)
  %2336 = alloca i8*
  store i8* %2335, i8** %2336
  %2337 = load %Value, %Value* %2315
  %2338 = call { i64, i8* }* @get_func_env_parent(%Value %2337)
  %2339 = alloca { i64, i8* }*
  store { i64, i8* }* %2338, { i64, i8* }** %2339
  %2340 = getelementptr %Environment, %Environment* null, i32 1
  %2341 = ptrtoint %Environment* %2340 to i64
  %2342 = call i8* @GC_malloc(i64 %2341)
  %2343 = bitcast i8* %2342 to %Environment*
  %2344 = load i8*, i8** %2336
  %2345 = getelementptr %Environment, %Environment* %2343, i32 0, i32 0
  store i8* %2344, i8** %2345
  %2346 = load { i64, i8* }*, { i64, i8* }** %2339
  %2347 = getelementptr %Environment, %Environment* %2343, i32 0, i32 1
  store { i64, i8* }* %2346, { i64, i8* }** %2347
  %2348 = load %Environment, %Environment* %2343
  %2349 = alloca %Environment
  store %Environment %2348, %Environment* %2349
  %2350 = load %Environment, %Environment* %2349
  %2351 = call %Environment @make_child_env(%Environment %2350)
  %2352 = alloca %Environment
  store %Environment %2351, %Environment* %2352
  %2353 = load { i64, i8* }*, { i64, i8* }** %2333
  %2354 = load %Environment, %Environment* %2352
  %2355 = call %Value @eval_stmt({ i64, i8* }* %2353, %Environment %2354)
  %2356 = alloca %Value
  store %Value %2355, %Value* %2356
  %2357 = load %Value, %Value* %2356
  ret %Value %2357
else401:
  br label %merge402
merge402:
  br label %merge399
else398:
  br label %merge399
merge399:
  br label %merge393
else392:
  br label %merge393
merge393:
  %2358 = call %Value @make_nil()
  ret %Value %2358
}

; Inicialización de variables globales (llamada automática vía ctor)
define void @__nyx_init_globals() {
entry:
  %2359 = call { i64, i8* }* @nyx_array_new_ptr()
  call void @nyx_array_push_tagged({ i64, i8* }* %2359, i64 0, i64 1)
  store { i64, i8* }* %2359, { i64, i8* }** @g_interp_error_count
  ret void
}

@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @__nyx_init_globals, i8* null }]

attributes #0 = { returns_twice }

