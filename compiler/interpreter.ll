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
@.str31 = private unnamed_addr constant [4 x i8] c"int\00"
@.str31.c = internal global %nyx_string* null
@.str32 = private unnamed_addr constant [6 x i8] c"float\00"
@.str32.c = internal global %nyx_string* null
@.str33 = private unnamed_addr constant [4 x i8] c"int\00"
@.str33.c = internal global %nyx_string* null
@.str34 = private unnamed_addr constant [5 x i8] c"bool\00"
@.str34.c = internal global %nyx_string* null
@.str35 = private unnamed_addr constant [4 x i8] c"int\00"
@.str35.c = internal global %nyx_string* null
@.str36 = private unnamed_addr constant [6 x i8] c"float\00"
@.str36.c = internal global %nyx_string* null
@.str37 = private unnamed_addr constant [5 x i8] c"bool\00"
@.str37.c = internal global %nyx_string* null
@.str38 = private unnamed_addr constant [5 x i8] c"true\00"
@.str38.c = internal global %nyx_string* null
@.str39 = private unnamed_addr constant [6 x i8] c"false\00"
@.str39.c = internal global %nyx_string* null
@.str40 = private unnamed_addr constant [7 x i8] c"string\00"
@.str40.c = internal global %nyx_string* null
@.str41 = private unnamed_addr constant [4 x i8] c"nil\00"
@.str41.c = internal global %nyx_string* null
@.str42 = private unnamed_addr constant [4 x i8] c"nil\00"
@.str42.c = internal global %nyx_string* null
@.str43 = private unnamed_addr constant [2 x i8] c"[\00"
@.str43.c = internal global %nyx_string* null
@.str44 = private unnamed_addr constant [2 x i8] c"]\00"
@.str44.c = internal global %nyx_string* null
@.str45 = private unnamed_addr constant [5 x i8] c"bool\00"
@.str45.c = internal global %nyx_string* null
@.str46 = private unnamed_addr constant [4 x i8] c"nil\00"
@.str46.c = internal global %nyx_string* null
@.str47 = private unnamed_addr constant [4 x i8] c"int\00"
@.str47.c = internal global %nyx_string* null
@.str48 = private unnamed_addr constant [4 x i8] c"int\00"
@.str48.c = internal global %nyx_string* null
@.str49 = private unnamed_addr constant [5 x i8] c"bool\00"
@.str49.c = internal global %nyx_string* null
@.str50 = private unnamed_addr constant [7 x i8] c"string\00"
@.str50.c = internal global %nyx_string* null
@.str51 = private unnamed_addr constant [4 x i8] c"int\00"
@.str51.c = internal global %nyx_string* null
@.str52 = private unnamed_addr constant [6 x i8] c"float\00"
@.str52.c = internal global %nyx_string* null
@.str53 = private unnamed_addr constant [5 x i8] c"bool\00"
@.str53.c = internal global %nyx_string* null
@.str54 = private unnamed_addr constant [5 x i8] c"true\00"
@.str54.c = internal global %nyx_string* null
@.str55 = private unnamed_addr constant [6 x i8] c"false\00"
@.str55.c = internal global %nyx_string* null
@.str56 = private unnamed_addr constant [7 x i8] c"string\00"
@.str56.c = internal global %nyx_string* null
@.str57 = private unnamed_addr constant [4 x i8] c"nil\00"
@.str57.c = internal global %nyx_string* null
@.str58 = private unnamed_addr constant [4 x i8] c"nil\00"
@.str58.c = internal global %nyx_string* null
@.str59 = private unnamed_addr constant [2 x i8] c"[\00"
@.str59.c = internal global %nyx_string* null
@.str60 = private unnamed_addr constant [2 x i8] c"]\00"
@.str60.c = internal global %nyx_string* null
@.str61 = private unnamed_addr constant [8 x i8] c"NYX3003\00"
@.str61.c = internal global %nyx_string* null
@.str62 = private unnamed_addr constant [23 x i8] c"variable no definida: \00"
@.str62.c = internal global %nyx_string* null
@.str63 = private unnamed_addr constant [21 x i8] c"undefined variable: \00"
@.str63.c = internal global %nyx_string* null
@.str64 = private unnamed_addr constant [7 x i8] c"number\00"
@.str64.c = internal global %nyx_string* null
@.str65 = private unnamed_addr constant [8 x i8] c"integer\00"
@.str65.c = internal global %nyx_string* null
@.str66 = private unnamed_addr constant [5 x i8] c"bool\00"
@.str66.c = internal global %nyx_string* null
@.str67 = private unnamed_addr constant [7 x i8] c"string\00"
@.str67.c = internal global %nyx_string* null
@.str68 = private unnamed_addr constant [11 x i8] c"identifier\00"
@.str68.c = internal global %nyx_string* null
@.str69 = private unnamed_addr constant [6 x i8] c"binop\00"
@.str69.c = internal global %nyx_string* null
@.str70 = private unnamed_addr constant [5 x i8] c"unop\00"
@.str70.c = internal global %nyx_string* null
@.str71 = private unnamed_addr constant [5 x i8] c"call\00"
@.str71.c = internal global %nyx_string* null
@.str72 = private unnamed_addr constant [6 x i8] c"array\00"
@.str72.c = internal global %nyx_string* null
@.str73 = private unnamed_addr constant [6 x i8] c"index\00"
@.str73.c = internal global %nyx_string* null
@.str74 = private unnamed_addr constant [12 x i8] c"method_call\00"
@.str74.c = internal global %nyx_string* null
@.str75 = private unnamed_addr constant [8 x i8] c"NYX3002\00"
@.str75.c = internal global %nyx_string* null
@.str76 = private unnamed_addr constant [45 x i8] c"expresión no soportada por el intérprete: \00"
@.str76.c = internal global %nyx_string* null
@.str77 = private unnamed_addr constant [46 x i8] c"expression not supported by the interpreter: \00"
@.str77.c = internal global %nyx_string* null
@.str78 = private unnamed_addr constant [2 x i8] c".\00"
@.str78.c = internal global %nyx_string* null
@.str79 = private unnamed_addr constant [5 x i8] c"true\00"
@.str79.c = internal global %nyx_string* null
@.str80 = private unnamed_addr constant [6 x i8] c"error\00"
@.str80.c = internal global %nyx_string* null
@.str81 = private unnamed_addr constant [6 x i8] c"error\00"
@.str81.c = internal global %nyx_string* null
@.str82 = private unnamed_addr constant [6 x i8] c"float\00"
@.str82.c = internal global %nyx_string* null
@.str83 = private unnamed_addr constant [6 x i8] c"float\00"
@.str83.c = internal global %nyx_string* null
@.str84 = private unnamed_addr constant [5 x i8] c"PLUS\00"
@.str84.c = internal global %nyx_string* null
@.str85 = private unnamed_addr constant [7 x i8] c"string\00"
@.str85.c = internal global %nyx_string* null
@.str86 = private unnamed_addr constant [6 x i8] c"MINUS\00"
@.str86.c = internal global %nyx_string* null
@.str87 = private unnamed_addr constant [5 x i8] c"STAR\00"
@.str87.c = internal global %nyx_string* null
@.str88 = private unnamed_addr constant [6 x i8] c"SLASH\00"
@.str88.c = internal global %nyx_string* null
@.str89 = private unnamed_addr constant [8 x i8] c"NYX3005\00"
@.str89.c = internal global %nyx_string* null
@.str90 = private unnamed_addr constant [19 x i8] c"división por cero\00"
@.str90.c = internal global %nyx_string* null
@.str91 = private unnamed_addr constant [17 x i8] c"division by zero\00"
@.str91.c = internal global %nyx_string* null
@.str92 = private unnamed_addr constant [8 x i8] c"PERCENT\00"
@.str92.c = internal global %nyx_string* null
@.str93 = private unnamed_addr constant [8 x i8] c"NYX3005\00"
@.str93.c = internal global %nyx_string* null
@.str94 = private unnamed_addr constant [17 x i8] c"módulo por cero\00"
@.str94.c = internal global %nyx_string* null
@.str95 = private unnamed_addr constant [15 x i8] c"modulo by zero\00"
@.str95.c = internal global %nyx_string* null
@.str96 = private unnamed_addr constant [12 x i8] c"EQUAL_EQUAL\00"
@.str96.c = internal global %nyx_string* null
@.str97 = private unnamed_addr constant [10 x i8] c"NOT_EQUAL\00"
@.str97.c = internal global %nyx_string* null
@.str98 = private unnamed_addr constant [5 x i8] c"LESS\00"
@.str98.c = internal global %nyx_string* null
@.str99 = private unnamed_addr constant [8 x i8] c"GREATER\00"
@.str99.c = internal global %nyx_string* null
@.str100 = private unnamed_addr constant [11 x i8] c"LESS_EQUAL\00"
@.str100.c = internal global %nyx_string* null
@.str101 = private unnamed_addr constant [14 x i8] c"GREATER_EQUAL\00"
@.str101.c = internal global %nyx_string* null
@.str102 = private unnamed_addr constant [8 x i8] c"AND_AND\00"
@.str102.c = internal global %nyx_string* null
@.str103 = private unnamed_addr constant [4 x i8] c"AND\00"
@.str103.c = internal global %nyx_string* null
@.str104 = private unnamed_addr constant [6 x i8] c"OR_OR\00"
@.str104.c = internal global %nyx_string* null
@.str105 = private unnamed_addr constant [3 x i8] c"OR\00"
@.str105.c = internal global %nyx_string* null
@.str106 = private unnamed_addr constant [8 x i8] c"NYX3002\00"
@.str106.c = internal global %nyx_string* null
@.str107 = private unnamed_addr constant [24 x i8] c"operador no soportado: \00"
@.str107.c = internal global %nyx_string* null
@.str108 = private unnamed_addr constant [25 x i8] c"operator not supported: \00"
@.str108.c = internal global %nyx_string* null
@.str109 = private unnamed_addr constant [6 x i8] c"error\00"
@.str109.c = internal global %nyx_string* null
@.str110 = private unnamed_addr constant [6 x i8] c"MINUS\00"
@.str110.c = internal global %nyx_string* null
@.str111 = private unnamed_addr constant [4 x i8] c"NOT\00"
@.str111.c = internal global %nyx_string* null
@.str112 = private unnamed_addr constant [8 x i8] c"NYX3002\00"
@.str112.c = internal global %nyx_string* null
@.str113 = private unnamed_addr constant [31 x i8] c"operador unario no soportado: \00"
@.str113.c = internal global %nyx_string* null
@.str114 = private unnamed_addr constant [31 x i8] c"unary operator not supported: \00"
@.str114.c = internal global %nyx_string* null
@.str115 = private unnamed_addr constant [6 x i8] c"error\00"
@.str115.c = internal global %nyx_string* null
@.str116 = private unnamed_addr constant [6 x i8] c"error\00"
@.str116.c = internal global %nyx_string* null
@.str117 = private unnamed_addr constant [6 x i8] c"error\00"
@.str117.c = internal global %nyx_string* null
@.str118 = private unnamed_addr constant [6 x i8] c"array\00"
@.str118.c = internal global %nyx_string* null
@.str119 = private unnamed_addr constant [8 x i8] c"NYX3002\00"
@.str119.c = internal global %nyx_string* null
@.str120 = private unnamed_addr constant [56 x i8] c"indexado no soportado por el intérprete sobre el tipo \00"
@.str120.c = internal global %nyx_string* null
@.str121 = private unnamed_addr constant [51 x i8] c"indexing not supported by the interpreter on type \00"
@.str121.c = internal global %nyx_string* null
@.str122 = private unnamed_addr constant [8 x i8] c"NYX3005\00"
@.str122.c = internal global %nyx_string* null
@.str123 = private unnamed_addr constant [23 x i8] c"índice fuera de rango\00"
@.str123.c = internal global %nyx_string* null
@.str124 = private unnamed_addr constant [19 x i8] c"index out of range\00"
@.str124.c = internal global %nyx_string* null
@.str125 = private unnamed_addr constant [4 x i8] c"let\00"
@.str125.c = internal global %nyx_string* null
@.str126 = private unnamed_addr constant [4 x i8] c"var\00"
@.str126.c = internal global %nyx_string* null
@.str127 = private unnamed_addr constant [7 x i8] c"assign\00"
@.str127.c = internal global %nyx_string* null
@.str128 = private unnamed_addr constant [3 x i8] c"if\00"
@.str128.c = internal global %nyx_string* null
@.str129 = private unnamed_addr constant [6 x i8] c"while\00"
@.str129.c = internal global %nyx_string* null
@.str130 = private unnamed_addr constant [4 x i8] c"for\00"
@.str130.c = internal global %nyx_string* null
@.str131 = private unnamed_addr constant [7 x i8] c"return\00"
@.str131.c = internal global %nyx_string* null
@.str132 = private unnamed_addr constant [6 x i8] c"block\00"
@.str132.c = internal global %nyx_string* null
@.str133 = private unnamed_addr constant [9 x i8] c"function\00"
@.str133.c = internal global %nyx_string* null
@.str134 = private unnamed_addr constant [13 x i8] c"index_assign\00"
@.str134.c = internal global %nyx_string* null
@.str135 = private unnamed_addr constant [13 x i8] c"field_assign\00"
@.str135.c = internal global %nyx_string* null
@.str136 = private unnamed_addr constant [6 x i8] c"error\00"
@.str136.c = internal global %nyx_string* null
@.str137 = private unnamed_addr constant [6 x i8] c"error\00"
@.str137.c = internal global %nyx_string* null
@.str138 = private unnamed_addr constant [8 x i8] c"NYX3003\00"
@.str138.c = internal global %nyx_string* null
@.str139 = private unnamed_addr constant [23 x i8] c"variable no definida: \00"
@.str139.c = internal global %nyx_string* null
@.str140 = private unnamed_addr constant [21 x i8] c"undefined variable: \00"
@.str140.c = internal global %nyx_string* null
@.str141 = private unnamed_addr constant [6 x i8] c"error\00"
@.str141.c = internal global %nyx_string* null
@.str142 = private unnamed_addr constant [6 x i8] c"error\00"
@.str142.c = internal global %nyx_string* null
@.str143 = private unnamed_addr constant [6 x i8] c"error\00"
@.str143.c = internal global %nyx_string* null
@.str144 = private unnamed_addr constant [6 x i8] c"array\00"
@.str144.c = internal global %nyx_string* null
@.str145 = private unnamed_addr constant [8 x i8] c"NYX3005\00"
@.str145.c = internal global %nyx_string* null
@.str146 = private unnamed_addr constant [38 x i8] c"índice fuera de rango en asignación\00"
@.str146.c = internal global %nyx_string* null
@.str147 = private unnamed_addr constant [33 x i8] c"index out of range in assignment\00"
@.str147.c = internal global %nyx_string* null
@.str148 = private unnamed_addr constant [8 x i8] c"NYX3005\00"
@.str148.c = internal global %nyx_string* null
@.str149 = private unnamed_addr constant [38 x i8] c"index_assign sobre un tipo no-array: \00"
@.str149.c = internal global %nyx_string* null
@.str150 = private unnamed_addr constant [35 x i8] c"index_assign on a non-array type: \00"
@.str150.c = internal global %nyx_string* null
@.str151 = private unnamed_addr constant [8 x i8] c"NYX3002\00"
@.str151.c = internal global %nyx_string* null
@.str152 = private unnamed_addr constant [45 x i8] c"field_assign no soportado por el intérprete\00"
@.str152.c = internal global %nyx_string* null
@.str153 = private unnamed_addr constant [46 x i8] c"field_assign not supported by the interpreter\00"
@.str153.c = internal global %nyx_string* null
@.str154 = private unnamed_addr constant [6 x i8] c"error\00"
@.str154.c = internal global %nyx_string* null
@.str155 = private unnamed_addr constant [6 x i8] c"empty\00"
@.str155.c = internal global %nyx_string* null
@.str156 = private unnamed_addr constant [6 x i8] c"error\00"
@.str156.c = internal global %nyx_string* null
@.str157 = private unnamed_addr constant [6 x i8] c"error\00"
@.str157.c = internal global %nyx_string* null
@.str158 = private unnamed_addr constant [6 x i8] c"array\00"
@.str158.c = internal global %nyx_string* null
@.str159 = private unnamed_addr constant [6 x i8] c"error\00"
@.str159.c = internal global %nyx_string* null
@.str160 = private unnamed_addr constant [7 x i8] c"return\00"
@.str160.c = internal global %nyx_string* null
@.str161 = private unnamed_addr constant [6 x i8] c"error\00"
@.str161.c = internal global %nyx_string* null
@.str162 = private unnamed_addr constant [9 x i8] c"function\00"
@.str162.c = internal global %nyx_string* null
@.str163 = private unnamed_addr constant [1 x i8] c"\00"
@.str163.c = internal global %nyx_string* null
@.str164 = private unnamed_addr constant [6 x i8] c"error\00"
@.str164.c = internal global %nyx_string* null
@.str165 = private unnamed_addr constant [7 x i8] c"string\00"
@.str165.c = internal global %nyx_string* null
@.str166 = private unnamed_addr constant [7 x i8] c"length\00"
@.str166.c = internal global %nyx_string* null
@.str167 = private unnamed_addr constant [12 x i8] c"char_length\00"
@.str167.c = internal global %nyx_string* null
@.str168 = private unnamed_addr constant [12 x i8] c"byte_length\00"
@.str168.c = internal global %nyx_string* null
@.str169 = private unnamed_addr constant [8 x i8] c"toUpper\00"
@.str169.c = internal global %nyx_string* null
@.str170 = private unnamed_addr constant [8 x i8] c"toLower\00"
@.str170.c = internal global %nyx_string* null
@.str171 = private unnamed_addr constant [5 x i8] c"trim\00"
@.str171.c = internal global %nyx_string* null
@.str172 = private unnamed_addr constant [8 x i8] c"indexOf\00"
@.str172.c = internal global %nyx_string* null
@.str173 = private unnamed_addr constant [6 x i8] c"error\00"
@.str173.c = internal global %nyx_string* null
@.str174 = private unnamed_addr constant [10 x i8] c"substring\00"
@.str174.c = internal global %nyx_string* null
@.str175 = private unnamed_addr constant [6 x i8] c"error\00"
@.str175.c = internal global %nyx_string* null
@.str176 = private unnamed_addr constant [6 x i8] c"error\00"
@.str176.c = internal global %nyx_string* null
@.str177 = private unnamed_addr constant [7 x i8] c"charAt\00"
@.str177.c = internal global %nyx_string* null
@.str178 = private unnamed_addr constant [6 x i8] c"error\00"
@.str178.c = internal global %nyx_string* null
@.str179 = private unnamed_addr constant [11 x i8] c"startsWith\00"
@.str179.c = internal global %nyx_string* null
@.str180 = private unnamed_addr constant [6 x i8] c"error\00"
@.str180.c = internal global %nyx_string* null
@.str181 = private unnamed_addr constant [9 x i8] c"endsWith\00"
@.str181.c = internal global %nyx_string* null
@.str182 = private unnamed_addr constant [6 x i8] c"error\00"
@.str182.c = internal global %nyx_string* null
@.str183 = private unnamed_addr constant [8 x i8] c"replace\00"
@.str183.c = internal global %nyx_string* null
@.str184 = private unnamed_addr constant [6 x i8] c"error\00"
@.str184.c = internal global %nyx_string* null
@.str185 = private unnamed_addr constant [6 x i8] c"error\00"
@.str185.c = internal global %nyx_string* null
@.str186 = private unnamed_addr constant [6 x i8] c"array\00"
@.str186.c = internal global %nyx_string* null
@.str187 = private unnamed_addr constant [7 x i8] c"length\00"
@.str187.c = internal global %nyx_string* null
@.str188 = private unnamed_addr constant [5 x i8] c"push\00"
@.str188.c = internal global %nyx_string* null
@.str189 = private unnamed_addr constant [6 x i8] c"error\00"
@.str189.c = internal global %nyx_string* null
@.str190 = private unnamed_addr constant [4 x i8] c"pop\00"
@.str190.c = internal global %nyx_string* null
@.str191 = private unnamed_addr constant [8 x i8] c"NYX3001\00"
@.str191.c = internal global %nyx_string* null
@.str192 = private unnamed_addr constant [39 x i8] c"el intérprete no soporta el método '\00"
@.str192.c = internal global %nyx_string* null
@.str193 = private unnamed_addr constant [17 x i8] c"' sobre el tipo \00"
@.str193.c = internal global %nyx_string* null
@.str194 = private unnamed_addr constant [42 x i8] c"the interpreter does not support method '\00"
@.str194.c = internal global %nyx_string* null
@.str195 = private unnamed_addr constant [11 x i8] c"' on type \00"
@.str195.c = internal global %nyx_string* null
@.str196 = private unnamed_addr constant [9 x i8] c"NYX_LANG\00"
@.str196.c = internal global %nyx_string* null
@.str197 = private unnamed_addr constant [3 x i8] c"es\00"
@.str197.c = internal global %nyx_string* null
@.str198 = private unnamed_addr constant [85 x i8] c"  el intérprete cubre un SUBCONJUNTO del lenguaje (ver cabecera de interpreter.nx);\00"
@.str198.c = internal global %nyx_string* null
@.str199 = private unnamed_addr constant [85 x i8] c"  el binario compilado (nyx build / make run) sí lo soporta si el lenguaje lo tiene\00"
@.str199.c = internal global %nyx_string* null
@.str200 = private unnamed_addr constant [79 x i8] c"  the interpreter covers a SUBSET of the language (see interpreter.nx header);\00"
@.str200.c = internal global %nyx_string* null
@.str201 = private unnamed_addr constant [84 x i8] c"  the compiled binary (nyx build / make run) does support it if the language has it\00"
@.str201.c = internal global %nyx_string* null
@.str202 = private unnamed_addr constant [6 x i8] c"print\00"
@.str202.c = internal global %nyx_string* null
@.str203 = private unnamed_addr constant [10 x i8] c"read_file\00"
@.str203.c = internal global %nyx_string* null
@.str204 = private unnamed_addr constant [10 x i8] c"read_line\00"
@.str204.c = internal global %nyx_string* null
@.str205 = private unnamed_addr constant [17 x i8] c"print_no_newline\00"
@.str205.c = internal global %nyx_string* null
@.str206 = private unnamed_addr constant [8 x i8] c"NYX3003\00"
@.str206.c = internal global %nyx_string* null
@.str207 = private unnamed_addr constant [23 x i8] c"variable no definida: \00"
@.str207.c = internal global %nyx_string* null
@.str208 = private unnamed_addr constant [21 x i8] c"undefined variable: \00"
@.str208.c = internal global %nyx_string* null
@.str209 = private unnamed_addr constant [9 x i8] c"function\00"
@.str209.c = internal global %nyx_string* null
@.str210 = private unnamed_addr constant [8 x i8] c"NYX3004\00"
@.str210.c = internal global %nyx_string* null
@.str211 = private unnamed_addr constant [2 x i8] c"'\00"
@.str211.c = internal global %nyx_string* null
@.str212 = private unnamed_addr constant [21 x i8] c"' no es una función\00"
@.str212.c = internal global %nyx_string* null
@.str213 = private unnamed_addr constant [2 x i8] c"'\00"
@.str213.c = internal global %nyx_string* null
@.str214 = private unnamed_addr constant [20 x i8] c"' is not a function\00"
@.str214.c = internal global %nyx_string* null
@.str215 = private unnamed_addr constant [8 x i8] c"NYX3006\00"
@.str215.c = internal global %nyx_string* null
@.str216 = private unnamed_addr constant [2 x i8] c"'\00"
@.str216.c = internal global %nyx_string* null
@.str217 = private unnamed_addr constant [10 x i8] c"' espera \00"
@.str217.c = internal global %nyx_string* null
@.str218 = private unnamed_addr constant [25 x i8] c" argumento(s), recibió \00"
@.str218.c = internal global %nyx_string* null
@.str219 = private unnamed_addr constant [2 x i8] c"'\00"
@.str219.c = internal global %nyx_string* null
@.str220 = private unnamed_addr constant [11 x i8] c"' expects \00"
@.str220.c = internal global %nyx_string* null
@.str221 = private unnamed_addr constant [19 x i8] c" argument(s), got \00"
@.str221.c = internal global %nyx_string* null
@.str222 = private unnamed_addr constant [6 x i8] c"error\00"
@.str222.c = internal global %nyx_string* null
@.str223 = private unnamed_addr constant [7 x i8] c"return\00"
@.str223.c = internal global %nyx_string* null
@.str224 = private unnamed_addr constant [6 x i8] c"error\00"
@.str224.c = internal global %nyx_string* null
@.str225 = private unnamed_addr constant [6 x i8] c"error\00"
@.str225.c = internal global %nyx_string* null
@.str226 = private unnamed_addr constant [1 x i8] c"\00"
@.str226.c = internal global %nyx_string* null
@.str227 = private unnamed_addr constant [6 x i8] c"error\00"
@.str227.c = internal global %nyx_string* null
@.str228 = private unnamed_addr constant [1 x i8] c"\00"
@.str228.c = internal global %nyx_string* null
@.str229 = private unnamed_addr constant [4 x i8] c"nil\00"
@.str229.c = internal global %nyx_string* null
@.str230 = private unnamed_addr constant [7 x i8] c"return\00"
@.str230.c = internal global %nyx_string* null
@.str231 = private unnamed_addr constant [4 x i8] c"=> \00"
@.str231.c = internal global %nyx_string* null
@.str232 = private unnamed_addr constant [6 x i8] c"block\00"
@.str232.c = internal global %nyx_string* null
@.str233 = private unnamed_addr constant [6 x i8] c"error\00"
@.str233.c = internal global %nyx_string* null
@.str234 = private unnamed_addr constant [5 x i8] c"main\00"
@.str234.c = internal global %nyx_string* null
@.str235 = private unnamed_addr constant [5 x i8] c"main\00"
@.str235.c = internal global %nyx_string* null
@.str236 = private unnamed_addr constant [9 x i8] c"function\00"
@.str236.c = internal global %nyx_string* null
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
  %255 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str22.c, i8* %254)
  %256 = getelementptr %Value, %Value* %253, i32 0, i32 0
  store %nyx_string* %255, %nyx_string** %256
  %257 = getelementptr %Value, %Value* %253, i32 0, i32 1
  store i64 0, i64* %257
  %258 = getelementptr %Value, %Value* %253, i32 0, i32 2
  store double 0.0, double* %258
  %259 = getelementptr %Value, %Value* %253, i32 0, i32 3
  store i1 0, i1* %259
  %260 = getelementptr [1 x i8], [1 x i8]* @.str23, i32 0, i32 0
  %261 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str23.c, i8* %260)
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
  %270 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str24.c, i8* %269)
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
  %291 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str25.c, i8* %290)
  %292 = getelementptr %Value, %Value* %289, i32 0, i32 0
  store %nyx_string* %291, %nyx_string** %292
  %293 = getelementptr %Value, %Value* %289, i32 0, i32 1
  store i64 0, i64* %293
  %294 = getelementptr %Value, %Value* %289, i32 0, i32 2
  store double 0.0, double* %294
  %295 = getelementptr %Value, %Value* %289, i32 0, i32 3
  store i1 0, i1* %295
  %296 = getelementptr [1 x i8], [1 x i8]* @.str26, i32 0, i32 0
  %297 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str26.c, i8* %296)
  %298 = getelementptr %Value, %Value* %289, i32 0, i32 4
  store %nyx_string* %297, %nyx_string** %298
  %299 = load { i64, i8* }*, { i64, i8* }** %285
  %300 = getelementptr %Value, %Value* %289, i32 0, i32 5
  store { i64, i8* }* %299, { i64, i8* }** %300
  %301 = load { i64, i8* }*, { i64, i8* }** %285
  %302 = getelementptr %Value, %Value* %289, i32 0, i32 6
  store { i64, i8* }* %301, { i64, i8* }** %302
  %303 = getelementptr [1 x i8], [1 x i8]* @.str27, i32 0, i32 0
  %304 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str27.c, i8* %303)
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
  %329 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str28.c, i8* %328)
  %330 = getelementptr %Value, %Value* %327, i32 0, i32 0
  store %nyx_string* %329, %nyx_string** %330
  %331 = getelementptr %Value, %Value* %327, i32 0, i32 1
  store i64 0, i64* %331
  %332 = getelementptr %Value, %Value* %327, i32 0, i32 2
  store double 0.0, double* %332
  %333 = getelementptr %Value, %Value* %327, i32 0, i32 3
  store i1 0, i1* %333
  %334 = getelementptr [1 x i8], [1 x i8]* @.str29, i32 0, i32 0
  %335 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str29.c, i8* %334)
  %336 = getelementptr %Value, %Value* %327, i32 0, i32 4
  store %nyx_string* %335, %nyx_string** %336
  %337 = load { i64, i8* }*, { i64, i8* }** %316
  %338 = getelementptr %Value, %Value* %327, i32 0, i32 5
  store { i64, i8* }* %337, { i64, i8* }** %338
  %339 = call { i64, i8* }* @nyx_array_new_ptr()
  %340 = getelementptr %Value, %Value* %327, i32 0, i32 6
  store { i64, i8* }* %339, { i64, i8* }** %340
  %341 = getelementptr [1 x i8], [1 x i8]* @.str30, i32 0, i32 0
  %342 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str30.c, i8* %341)
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

define internal %Value @eval_return(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %351 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %352 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %351)
  %353 = alloca { i64, i8* }*
  store { i64, i8* }* %352, { i64, i8* }** %353
  %354 = load { i64, i8* }*, { i64, i8* }** %353
  %355 = call i64 @nyx_array_get({ i64, i8* }* %354, i64 0)
  %356 = inttoptr i64 %355 to { i64, i8* }*
  %357 = alloca { i64, i8* }*
  store { i64, i8* }* %356, { i64, i8* }** %357
  %358 = load { i64, i8* }*, { i64, i8* }** %357
  %359 = load %Environment, %Environment* %env.ptr
  %360 = call %Value @eval_expr({ i64, i8* }* %358, %Environment %359)
  %361 = alloca %Value
  store %Value %360, %Value* %361
  %362 = load %Value, %Value* %361
  %363 = call %Value @make_return_value(%Value %362)
  ret %Value %363
}

define internal i64 @value_to_int(
%Value %v.param) {
  %v.ptr = alloca %Value
  store %Value %v.param, %Value* %v.ptr
  %364 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %365 = load %nyx_string*, %nyx_string** %364
  %366 = getelementptr [4 x i8], [4 x i8]* @.str31, i32 0, i32 0
  %367 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str31.c, i8* %366)
  %368 = call i1 @nyx_string_equals(%nyx_string* %365, %nyx_string* %367)
  br i1 %368, label %then3, label %else4
then3:
  %369 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 1
  %370 = load i64, i64* %369
  ret i64 %370
else4:
  br label %merge5
merge5:
  ret i64 0
}

define internal double @value_to_float(
%Value %v.param) {
  %v.ptr = alloca %Value
  store %Value %v.param, %Value* %v.ptr
  %371 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %372 = load %nyx_string*, %nyx_string** %371
  %373 = getelementptr [6 x i8], [6 x i8]* @.str32, i32 0, i32 0
  %374 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str32.c, i8* %373)
  %375 = call i1 @nyx_string_equals(%nyx_string* %372, %nyx_string* %374)
  br i1 %375, label %then6, label %else7
then6:
  %376 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 2
  %377 = load double, double* %376
  ret double %377
else7:
  br label %merge8
merge8:
  %378 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %379 = load %nyx_string*, %nyx_string** %378
  %380 = getelementptr [4 x i8], [4 x i8]* @.str33, i32 0, i32 0
  %381 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str33.c, i8* %380)
  %382 = call i1 @nyx_string_equals(%nyx_string* %379, %nyx_string* %381)
  br i1 %382, label %then9, label %else10
then9:
  %383 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 1
  %384 = load i64, i64* %383
  %385 = sitofp i64 %384 to double
  %386 = alloca double
  store double %385, double* %386
  %387 = load double, double* %386
  ret double %387
else10:
  br label %merge11
merge11:
  ret double 0.0
}

define internal i1 @value_to_bool(
%Value %v.param) {
  %v.ptr = alloca %Value
  store %Value %v.param, %Value* %v.ptr
  %388 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %389 = load %nyx_string*, %nyx_string** %388
  %390 = getelementptr [5 x i8], [5 x i8]* @.str34, i32 0, i32 0
  %391 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str34.c, i8* %390)
  %392 = call i1 @nyx_string_equals(%nyx_string* %389, %nyx_string* %391)
  br i1 %392, label %then12, label %else13
then12:
  %393 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 3
  %394 = load i1, i1* %393
  ret i1 %394
else13:
  br label %merge14
merge14:
  ret i1 0
}

define internal %nyx_string* @value_to_string(
%Value %v.param) {
  %v.ptr = alloca %Value
  store %Value %v.param, %Value* %v.ptr
  %395 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %396 = load %nyx_string*, %nyx_string** %395
  %397 = getelementptr [4 x i8], [4 x i8]* @.str35, i32 0, i32 0
  %398 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str35.c, i8* %397)
  %399 = call i1 @nyx_string_equals(%nyx_string* %396, %nyx_string* %398)
  br i1 %399, label %then15, label %else16
then15:
  %400 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 1
  %401 = load i64, i64* %400
  %402 = call %nyx_string* @nyx_string_from_int(i64 %401)
  ret %nyx_string* %402
else16:
  br label %merge17
merge17:
  %403 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %404 = load %nyx_string*, %nyx_string** %403
  %405 = getelementptr [6 x i8], [6 x i8]* @.str36, i32 0, i32 0
  %406 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str36.c, i8* %405)
  %407 = call i1 @nyx_string_equals(%nyx_string* %404, %nyx_string* %406)
  br i1 %407, label %then18, label %else19
then18:
  %408 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 2
  %409 = load double, double* %408
  %410 = call %nyx_string* @nyx_string_from_float(double %409)
  ret %nyx_string* %410
else19:
  br label %merge20
merge20:
  %411 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %412 = load %nyx_string*, %nyx_string** %411
  %413 = getelementptr [5 x i8], [5 x i8]* @.str37, i32 0, i32 0
  %414 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str37.c, i8* %413)
  %415 = call i1 @nyx_string_equals(%nyx_string* %412, %nyx_string* %414)
  br i1 %415, label %then21, label %else22
then21:
  %416 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 3
  %417 = load i1, i1* %416
  br i1 %417, label %then24, label %else25
then24:
  %418 = getelementptr [5 x i8], [5 x i8]* @.str38, i32 0, i32 0
  %419 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str38.c, i8* %418)
  ret %nyx_string* %419
else25:
  br label %merge26
merge26:
  %420 = getelementptr [6 x i8], [6 x i8]* @.str39, i32 0, i32 0
  %421 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str39.c, i8* %420)
  ret %nyx_string* %421
else22:
  br label %merge23
merge23:
  %422 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %423 = load %nyx_string*, %nyx_string** %422
  %424 = getelementptr [7 x i8], [7 x i8]* @.str40, i32 0, i32 0
  %425 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str40.c, i8* %424)
  %426 = call i1 @nyx_string_equals(%nyx_string* %423, %nyx_string* %425)
  br i1 %426, label %then27, label %else28
then27:
  %427 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 4
  %428 = load %nyx_string*, %nyx_string** %427
  ret %nyx_string* %428
else28:
  br label %merge29
merge29:
  %429 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %430 = load %nyx_string*, %nyx_string** %429
  %431 = getelementptr [4 x i8], [4 x i8]* @.str41, i32 0, i32 0
  %432 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str41.c, i8* %431)
  %433 = call i1 @nyx_string_equals(%nyx_string* %430, %nyx_string* %432)
  br i1 %433, label %then30, label %else31
then30:
  %434 = getelementptr [4 x i8], [4 x i8]* @.str42, i32 0, i32 0
  %435 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str42.c, i8* %434)
  ret %nyx_string* %435
else31:
  br label %merge32
merge32:
  %436 = getelementptr [2 x i8], [2 x i8]* @.str43, i32 0, i32 0
  %437 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str43.c, i8* %436)
  %438 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %439 = load %nyx_string*, %nyx_string** %438
  %440 = call %nyx_string* @nyx_string_concat(%nyx_string* %437, %nyx_string* %439)
  %441 = getelementptr [2 x i8], [2 x i8]* @.str44, i32 0, i32 0
  %442 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str44.c, i8* %441)
  %443 = call %nyx_string* @nyx_string_concat(%nyx_string* %440, %nyx_string* %442)
  ret %nyx_string* %443
}

define internal i1 @is_truthy(
%Value %v.param) {
  %v.ptr = alloca %Value
  store %Value %v.param, %Value* %v.ptr
  %444 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %445 = load %nyx_string*, %nyx_string** %444
  %446 = getelementptr [5 x i8], [5 x i8]* @.str45, i32 0, i32 0
  %447 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str45.c, i8* %446)
  %448 = call i1 @nyx_string_equals(%nyx_string* %445, %nyx_string* %447)
  br i1 %448, label %then33, label %else34
then33:
  %449 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 3
  %450 = load i1, i1* %449
  ret i1 %450
else34:
  br label %merge35
merge35:
  %451 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %452 = load %nyx_string*, %nyx_string** %451
  %453 = getelementptr [4 x i8], [4 x i8]* @.str46, i32 0, i32 0
  %454 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str46.c, i8* %453)
  %455 = call i1 @nyx_string_equals(%nyx_string* %452, %nyx_string* %454)
  br i1 %455, label %then36, label %else37
then36:
  ret i1 0
else37:
  br label %merge38
merge38:
  %456 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %457 = load %nyx_string*, %nyx_string** %456
  %458 = getelementptr [4 x i8], [4 x i8]* @.str47, i32 0, i32 0
  %459 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str47.c, i8* %458)
  %460 = call i1 @nyx_string_equals(%nyx_string* %457, %nyx_string* %459)
  br i1 %460, label %then39, label %else40
then39:
  %461 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 1
  %462 = load i64, i64* %461
  %463 = icmp ne i64 %462, 0
  ret i1 %463
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
  %464 = getelementptr %Value, %Value* %a.ptr, i32 0, i32 0
  %465 = load %nyx_string*, %nyx_string** %464
  %466 = getelementptr %Value, %Value* %b.ptr, i32 0, i32 0
  %467 = load %nyx_string*, %nyx_string** %466
  %468 = call i1 @nyx_string_equals(%nyx_string* %465, %nyx_string* %467)
  %469 = xor i1 %468, true
  br i1 %469, label %then42, label %else43
then42:
  ret i1 0
else43:
  br label %merge44
merge44:
  %470 = getelementptr %Value, %Value* %a.ptr, i32 0, i32 0
  %471 = load %nyx_string*, %nyx_string** %470
  %472 = getelementptr [4 x i8], [4 x i8]* @.str48, i32 0, i32 0
  %473 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str48.c, i8* %472)
  %474 = call i1 @nyx_string_equals(%nyx_string* %471, %nyx_string* %473)
  br i1 %474, label %then45, label %else46
then45:
  %475 = getelementptr %Value, %Value* %a.ptr, i32 0, i32 1
  %476 = load i64, i64* %475
  %477 = getelementptr %Value, %Value* %b.ptr, i32 0, i32 1
  %478 = load i64, i64* %477
  %479 = icmp eq i64 %476, %478
  ret i1 %479
else46:
  br label %merge47
merge47:
  %480 = getelementptr %Value, %Value* %a.ptr, i32 0, i32 0
  %481 = load %nyx_string*, %nyx_string** %480
  %482 = getelementptr [5 x i8], [5 x i8]* @.str49, i32 0, i32 0
  %483 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str49.c, i8* %482)
  %484 = call i1 @nyx_string_equals(%nyx_string* %481, %nyx_string* %483)
  br i1 %484, label %then48, label %else49
then48:
  %485 = getelementptr %Value, %Value* %a.ptr, i32 0, i32 3
  %486 = load i1, i1* %485
  %487 = getelementptr %Value, %Value* %b.ptr, i32 0, i32 3
  %488 = load i1, i1* %487
  %489 = icmp eq i1 %486, %488
  ret i1 %489
else49:
  br label %merge50
merge50:
  %490 = getelementptr %Value, %Value* %a.ptr, i32 0, i32 0
  %491 = load %nyx_string*, %nyx_string** %490
  %492 = getelementptr [7 x i8], [7 x i8]* @.str50, i32 0, i32 0
  %493 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str50.c, i8* %492)
  %494 = call i1 @nyx_string_equals(%nyx_string* %491, %nyx_string* %493)
  br i1 %494, label %then51, label %else52
then51:
  %495 = getelementptr %Value, %Value* %a.ptr, i32 0, i32 4
  %496 = load %nyx_string*, %nyx_string** %495
  %497 = getelementptr %Value, %Value* %b.ptr, i32 0, i32 4
  %498 = load %nyx_string*, %nyx_string** %497
  %499 = call i1 @nyx_string_equals(%nyx_string* %496, %nyx_string* %498)
  ret i1 %499
else52:
  br label %merge53
merge53:
  ret i1 0
}

define internal i64 @print_value(
%Value %v.param) {
  %v.ptr = alloca %Value
  store %Value %v.param, %Value* %v.ptr
  %500 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %501 = load %nyx_string*, %nyx_string** %500
  %502 = getelementptr [4 x i8], [4 x i8]* @.str51, i32 0, i32 0
  %503 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str51.c, i8* %502)
  %504 = call i1 @nyx_string_equals(%nyx_string* %501, %nyx_string* %503)
  br i1 %504, label %then54, label %else55
then54:
  %505 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 1
  %506 = load i64, i64* %505
  call void @nyx_print_int(i64 %506)
  br label %merge56
else55:
  %507 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %508 = load %nyx_string*, %nyx_string** %507
  %509 = getelementptr [6 x i8], [6 x i8]* @.str52, i32 0, i32 0
  %510 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str52.c, i8* %509)
  %511 = call i1 @nyx_string_equals(%nyx_string* %508, %nyx_string* %510)
  br i1 %511, label %then57, label %else58
then57:
  %512 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 2
  %513 = load double, double* %512
  call void @nyx_print_float(double %513)
  br label %merge59
else58:
  %514 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %515 = load %nyx_string*, %nyx_string** %514
  %516 = getelementptr [5 x i8], [5 x i8]* @.str53, i32 0, i32 0
  %517 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str53.c, i8* %516)
  %518 = call i1 @nyx_string_equals(%nyx_string* %515, %nyx_string* %517)
  br i1 %518, label %then60, label %else61
then60:
  %519 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 3
  %520 = load i1, i1* %519
  br i1 %520, label %then63, label %else64
then63:
  %521 = getelementptr [5 x i8], [5 x i8]* @.str54, i32 0, i32 0
  %522 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str54.c, i8* %521)
  %523 = call i8* @nyx_string_to_cstr(%nyx_string* %522)
  call void @nyx_print_string(i8* %523)
  br label %merge65
else64:
  %524 = getelementptr [6 x i8], [6 x i8]* @.str55, i32 0, i32 0
  %525 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str55.c, i8* %524)
  %526 = call i8* @nyx_string_to_cstr(%nyx_string* %525)
  call void @nyx_print_string(i8* %526)
  br label %merge65
merge65:
  br label %merge62
else61:
  %527 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %528 = load %nyx_string*, %nyx_string** %527
  %529 = getelementptr [7 x i8], [7 x i8]* @.str56, i32 0, i32 0
  %530 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str56.c, i8* %529)
  %531 = call i1 @nyx_string_equals(%nyx_string* %528, %nyx_string* %530)
  br i1 %531, label %then66, label %else67
then66:
  %532 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 4
  %533 = load %nyx_string*, %nyx_string** %532
  %534 = call i8* @nyx_string_to_cstr(%nyx_string* %533)
  call void @nyx_print_string(i8* %534)
  br label %merge68
else67:
  %535 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %536 = load %nyx_string*, %nyx_string** %535
  %537 = getelementptr [4 x i8], [4 x i8]* @.str57, i32 0, i32 0
  %538 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str57.c, i8* %537)
  %539 = call i1 @nyx_string_equals(%nyx_string* %536, %nyx_string* %538)
  br i1 %539, label %then69, label %else70
then69:
  %540 = getelementptr [4 x i8], [4 x i8]* @.str58, i32 0, i32 0
  %541 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str58.c, i8* %540)
  %542 = call i8* @nyx_string_to_cstr(%nyx_string* %541)
  call void @nyx_print_string(i8* %542)
  br label %merge71
else70:
  %543 = getelementptr [2 x i8], [2 x i8]* @.str59, i32 0, i32 0
  %544 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str59.c, i8* %543)
  %545 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %546 = load %nyx_string*, %nyx_string** %545
  %547 = call %nyx_string* @nyx_string_concat(%nyx_string* %544, %nyx_string* %546)
  %548 = getelementptr [2 x i8], [2 x i8]* @.str60, i32 0, i32 0
  %549 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str60.c, i8* %548)
  %550 = call %nyx_string* @nyx_string_concat(%nyx_string* %547, %nyx_string* %549)
  %551 = call i8* @nyx_string_to_cstr(%nyx_string* %550)
  call void @nyx_print_string(i8* %551)
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
  %552 = getelementptr %Value, %Value* %func_value.ptr, i32 0, i32 6
  %553 = load { i64, i8* }*, { i64, i8* }** %552
  ret { i64, i8* }* %553
}

define internal %nyx_string* @get_func_body_type(
%Value %func_value.param) {
  %func_value.ptr = alloca %Value
  store %Value %func_value.param, %Value* %func_value.ptr
  %554 = getelementptr %Value, %Value* %func_value.ptr, i32 0, i32 7
  %555 = load %nyx_string*, %nyx_string** %554
  ret %nyx_string* %555
}

define internal { i64, i8* }* @get_func_body_data(
%Value %func_value.param) {
  %func_value.ptr = alloca %Value
  store %Value %func_value.param, %Value* %func_value.ptr
  %556 = getelementptr %Value, %Value* %func_value.ptr, i32 0, i32 8
  %557 = load { i64, i8* }*, { i64, i8* }** %556
  ret { i64, i8* }* %557
}

define internal i8* @get_func_env_bindings(
%Value %func_value.param) {
  %func_value.ptr = alloca %Value
  store %Value %func_value.param, %Value* %func_value.ptr
  %558 = getelementptr %Value, %Value* %func_value.ptr, i32 0, i32 9
  %559 = load i8*, i8** %558
  ret i8* %559
}

define internal { i64, i8* }* @get_func_env_parent(
%Value %func_value.param) {
  %func_value.ptr = alloca %Value
  store %Value %func_value.param, %Value* %func_value.ptr
  %560 = getelementptr %Value, %Value* %func_value.ptr, i32 0, i32 10
  %561 = load { i64, i8* }*, { i64, i8* }** %560
  ret { i64, i8* }* %561
}

define internal %Environment @make_env(
) {
  %562 = call i8* @nyx_map_new(i32 0)
  %563 = alloca i8*
  store i8* %562, i8** %563
  %564 = call { i64, i8* }* @nyx_array_new_ptr()
  %565 = alloca { i64, i8* }*
  store { i64, i8* }* %564, { i64, i8* }** %565
  %566 = getelementptr %Environment, %Environment* null, i32 1
  %567 = ptrtoint %Environment* %566 to i64
  %568 = call i8* @GC_malloc(i64 %567)
  %569 = bitcast i8* %568 to %Environment*
  %570 = load i8*, i8** %563
  %571 = getelementptr %Environment, %Environment* %569, i32 0, i32 0
  store i8* %570, i8** %571
  %572 = load { i64, i8* }*, { i64, i8* }** %565
  %573 = getelementptr %Environment, %Environment* %569, i32 0, i32 1
  store { i64, i8* }* %572, { i64, i8* }** %573
  %574 = load %Environment, %Environment* %569
  ret %Environment %574
}

define internal %Environment @make_child_env(
%Environment %parent.param) {
  %parent.ptr = alloca %Environment
  store %Environment %parent.param, %Environment* %parent.ptr
  %575 = call i8* @nyx_map_new(i32 0)
  %576 = alloca i8*
  store i8* %575, i8** %576
  %577 = call { i64, i8* }* @nyx_array_new_ptr()
  %578 = alloca { i64, i8* }*
  store { i64, i8* }* %577, { i64, i8* }** %578
  %579 = load { i64, i8* }*, { i64, i8* }** %578
  %580 = load %Environment, %Environment* %parent.ptr
  %581 = getelementptr %Environment, %Environment* null, i32 1
  %582 = ptrtoint %Environment* %581 to i64
  %583 = call i8* @GC_malloc(i64 %582)
  %584 = bitcast i8* %583 to %Environment*
  store %Environment %580, %Environment* %584
  %585 = ptrtoint %Environment* %584 to i64
  call void @nyx_array_push({ i64, i8* }* %579, i64 %585)
  %586 = getelementptr %Environment, %Environment* null, i32 1
  %587 = ptrtoint %Environment* %586 to i64
  %588 = call i8* @GC_malloc(i64 %587)
  %589 = bitcast i8* %588 to %Environment*
  %590 = load i8*, i8** %576
  %591 = getelementptr %Environment, %Environment* %589, i32 0, i32 0
  store i8* %590, i8** %591
  %592 = load { i64, i8* }*, { i64, i8* }** %578
  %593 = getelementptr %Environment, %Environment* %589, i32 0, i32 1
  store { i64, i8* }* %592, { i64, i8* }** %593
  %594 = load %Environment, %Environment* %589
  ret %Environment %594
}

define internal i64 @env_define(
%Environment %env.param, %nyx_string* %name.param, %Value %value.param) {
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %value.ptr = alloca %Value
  store %Value %value.param, %Value* %value.ptr
  %595 = getelementptr %Environment, %Environment* %env.ptr, i32 0, i32 0
  %596 = load i8*, i8** %595
  %597 = load %nyx_string*, %nyx_string** %name.ptr
  %598 = load %Value, %Value* %value.ptr
  %599 = call i8* @nyx_string_to_cstr(%nyx_string* %597)
  %600 = getelementptr %Value, %Value* null, i32 1
  %601 = ptrtoint %Value* %600 to i64
  %602 = call i8* @GC_malloc(i64 %601)
  %603 = bitcast i8* %602 to %Value*
  store %Value %598, %Value* %603
  %604 = ptrtoint %Value* %603 to i64
  call void @nyx_map_insert_int(i8* %596, i8* %599, i64 %604)
  ret i64 0
}

define internal i1 @env_has(
%Environment %env.param, %nyx_string* %name.param) {
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %605 = getelementptr %Environment, %Environment* %env.ptr, i32 0, i32 0
  %606 = load i8*, i8** %605
  %607 = load %nyx_string*, %nyx_string** %name.ptr
  %608 = call i8* @nyx_string_to_cstr(%nyx_string* %607)
  %609 = call i1 @nyx_map_contains_str(i8* %606, i8* %608)
  br i1 %609, label %then72, label %else73
then72:
  ret i1 1
else73:
  br label %merge74
merge74:
  %610 = getelementptr %Environment, %Environment* %env.ptr, i32 0, i32 1
  %611 = load { i64, i8* }*, { i64, i8* }** %610
  %612 = call i64 @nyx_array_length({ i64, i8* }* %611)
  %613 = icmp sgt i64 %612, 0
  br i1 %613, label %then75, label %else76
then75:
  %614 = getelementptr %Environment, %Environment* %env.ptr, i32 0, i32 1
  %615 = load { i64, i8* }*, { i64, i8* }** %614
  %616 = call i64 @nyx_array_get({ i64, i8* }* %615, i64 0)
  %617 = inttoptr i64 %616 to %Environment*
  %618 = load %Environment, %Environment* %617
  %619 = alloca %Environment
  store %Environment %618, %Environment* %619
  %620 = load %Environment, %Environment* %619
  %621 = load %nyx_string*, %nyx_string** %name.ptr
  %622 = call i1 @env_has(%Environment %620, %nyx_string* %621)
  ret i1 %622
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
  %623 = getelementptr %Environment, %Environment* %env.ptr, i32 0, i32 0
  %624 = load i8*, i8** %623
  %625 = load %nyx_string*, %nyx_string** %name.ptr
  %626 = call i8* @nyx_string_to_cstr(%nyx_string* %625)
  %627 = call i1 @nyx_map_contains_str(i8* %624, i8* %626)
  br i1 %627, label %then78, label %else79
then78:
  %628 = getelementptr %Environment, %Environment* %env.ptr, i32 0, i32 0
  %629 = load i8*, i8** %628
  %630 = load %nyx_string*, %nyx_string** %name.ptr
  %631 = call i8* @nyx_string_to_cstr(%nyx_string* %630)
  %632 = call i64 @nyx_map_get_int(i8* %629, i8* %631)
  %633 = inttoptr i64 %632 to %Value*
  %634 = load %Value, %Value* %633
  ret %Value %634
else79:
  br label %merge80
merge80:
  %635 = getelementptr %Environment, %Environment* %env.ptr, i32 0, i32 1
  %636 = load { i64, i8* }*, { i64, i8* }** %635
  %637 = call i64 @nyx_array_length({ i64, i8* }* %636)
  %638 = icmp sgt i64 %637, 0
  br i1 %638, label %then81, label %else82
then81:
  %639 = getelementptr %Environment, %Environment* %env.ptr, i32 0, i32 1
  %640 = load { i64, i8* }*, { i64, i8* }** %639
  %641 = call i64 @nyx_array_get({ i64, i8* }* %640, i64 0)
  %642 = inttoptr i64 %641 to %Environment*
  %643 = load %Environment, %Environment* %642
  %644 = alloca %Environment
  store %Environment %643, %Environment* %644
  %645 = load %Environment, %Environment* %644
  %646 = load %nyx_string*, %nyx_string** %name.ptr
  %647 = call %Value @env_get(%Environment %645, %nyx_string* %646)
  ret %Value %647
else82:
  br label %merge83
merge83:
  %648 = getelementptr [8 x i8], [8 x i8]* @.str61, i32 0, i32 0
  %649 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str61.c, i8* %648)
  %650 = getelementptr [23 x i8], [23 x i8]* @.str62, i32 0, i32 0
  %651 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str62.c, i8* %650)
  %652 = load %nyx_string*, %nyx_string** %name.ptr
  %653 = call %nyx_string* @nyx_string_concat(%nyx_string* %651, %nyx_string* %652)
  %654 = getelementptr [21 x i8], [21 x i8]* @.str63, i32 0, i32 0
  %655 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str63.c, i8* %654)
  %656 = load %nyx_string*, %nyx_string** %name.ptr
  %657 = call %nyx_string* @nyx_string_concat(%nyx_string* %655, %nyx_string* %656)
  %658 = call i64 @interp_err(%nyx_string* %649, %nyx_string* %653, %nyx_string* %657)
  %659 = call %Value @make_error()
  ret %Value %659
}

define internal i1 @env_set(
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
  %663 = call i8* @nyx_string_to_cstr(%nyx_string* %662)
  %664 = call i1 @nyx_map_contains_str(i8* %661, i8* %663)
  br i1 %664, label %then84, label %else85
then84:
  %665 = getelementptr %Environment, %Environment* %env.ptr, i32 0, i32 0
  %666 = load i8*, i8** %665
  %667 = load %nyx_string*, %nyx_string** %name.ptr
  %668 = load %Value, %Value* %value.ptr
  %669 = call i8* @nyx_string_to_cstr(%nyx_string* %667)
  %670 = getelementptr %Value, %Value* null, i32 1
  %671 = ptrtoint %Value* %670 to i64
  %672 = call i8* @GC_malloc(i64 %671)
  %673 = bitcast i8* %672 to %Value*
  store %Value %668, %Value* %673
  %674 = ptrtoint %Value* %673 to i64
  call void @nyx_map_insert_int(i8* %666, i8* %669, i64 %674)
  ret i1 1
else85:
  br label %merge86
merge86:
  %675 = getelementptr %Environment, %Environment* %env.ptr, i32 0, i32 1
  %676 = load { i64, i8* }*, { i64, i8* }** %675
  %677 = call i64 @nyx_array_length({ i64, i8* }* %676)
  %678 = icmp sgt i64 %677, 0
  br i1 %678, label %then87, label %else88
then87:
  %679 = getelementptr %Environment, %Environment* %env.ptr, i32 0, i32 1
  %680 = load { i64, i8* }*, { i64, i8* }** %679
  %681 = call i64 @nyx_array_get({ i64, i8* }* %680, i64 0)
  %682 = inttoptr i64 %681 to %Environment*
  %683 = load %Environment, %Environment* %682
  %684 = alloca %Environment
  store %Environment %683, %Environment* %684
  %685 = load %Environment, %Environment* %684
  %686 = load %nyx_string*, %nyx_string** %name.ptr
  %687 = load %Value, %Value* %value.ptr
  %688 = call i1 @env_set(%Environment %685, %nyx_string* %686, %Value %687)
  ret i1 %688
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
  %689 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %690 = call %nyx_string* @astnode_get_type({ i64, i8* }* %689)
  %691 = alloca %nyx_string*
  store %nyx_string* %690, %nyx_string** %691
  %692 = load %nyx_string*, %nyx_string** %691
  %693 = getelementptr [7 x i8], [7 x i8]* @.str64, i32 0, i32 0
  %694 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str64.c, i8* %693)
  %695 = call i1 @nyx_string_equals(%nyx_string* %692, %nyx_string* %694)
  br i1 %695, label %then90, label %else91
then90:
  %696 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %697 = call %Value @eval_number({ i64, i8* }* %696)
  ret %Value %697
else91:
  br label %merge92
merge92:
  %698 = load %nyx_string*, %nyx_string** %691
  %699 = getelementptr [8 x i8], [8 x i8]* @.str65, i32 0, i32 0
  %700 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str65.c, i8* %699)
  %701 = call i1 @nyx_string_equals(%nyx_string* %698, %nyx_string* %700)
  br i1 %701, label %then93, label %else94
then93:
  %702 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %703 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %702)
  %704 = alloca { i64, i8* }*
  store { i64, i8* }* %703, { i64, i8* }** %704
  %705 = load { i64, i8* }*, { i64, i8* }** %704
  %706 = call i64 @nyx_array_get({ i64, i8* }* %705, i64 0)
  %707 = alloca i64
  store i64 %706, i64* %707
  %708 = load i64, i64* %707
  %709 = call %Value @make_int(i64 %708)
  ret %Value %709
else94:
  br label %merge95
merge95:
  %710 = load %nyx_string*, %nyx_string** %691
  %711 = getelementptr [5 x i8], [5 x i8]* @.str66, i32 0, i32 0
  %712 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str66.c, i8* %711)
  %713 = call i1 @nyx_string_equals(%nyx_string* %710, %nyx_string* %712)
  br i1 %713, label %then96, label %else97
then96:
  %714 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %715 = call %Value @eval_bool({ i64, i8* }* %714)
  ret %Value %715
else97:
  br label %merge98
merge98:
  %716 = load %nyx_string*, %nyx_string** %691
  %717 = getelementptr [7 x i8], [7 x i8]* @.str67, i32 0, i32 0
  %718 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str67.c, i8* %717)
  %719 = call i1 @nyx_string_equals(%nyx_string* %716, %nyx_string* %718)
  br i1 %719, label %then99, label %else100
then99:
  %720 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %721 = call %Value @eval_string({ i64, i8* }* %720)
  ret %Value %721
else100:
  br label %merge101
merge101:
  %722 = load %nyx_string*, %nyx_string** %691
  %723 = getelementptr [11 x i8], [11 x i8]* @.str68, i32 0, i32 0
  %724 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str68.c, i8* %723)
  %725 = call i1 @nyx_string_equals(%nyx_string* %722, %nyx_string* %724)
  br i1 %725, label %then102, label %else103
then102:
  %726 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %727 = load %Environment, %Environment* %env.ptr
  %728 = call %Value @eval_identifier({ i64, i8* }* %726, %Environment %727)
  ret %Value %728
else103:
  br label %merge104
merge104:
  %729 = load %nyx_string*, %nyx_string** %691
  %730 = getelementptr [6 x i8], [6 x i8]* @.str69, i32 0, i32 0
  %731 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str69.c, i8* %730)
  %732 = call i1 @nyx_string_equals(%nyx_string* %729, %nyx_string* %731)
  br i1 %732, label %then105, label %else106
then105:
  %733 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %734 = load %Environment, %Environment* %env.ptr
  %735 = call %Value @eval_binop({ i64, i8* }* %733, %Environment %734)
  ret %Value %735
else106:
  br label %merge107
merge107:
  %736 = load %nyx_string*, %nyx_string** %691
  %737 = getelementptr [5 x i8], [5 x i8]* @.str70, i32 0, i32 0
  %738 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str70.c, i8* %737)
  %739 = call i1 @nyx_string_equals(%nyx_string* %736, %nyx_string* %738)
  br i1 %739, label %then108, label %else109
then108:
  %740 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %741 = load %Environment, %Environment* %env.ptr
  %742 = call %Value @eval_unop({ i64, i8* }* %740, %Environment %741)
  ret %Value %742
else109:
  br label %merge110
merge110:
  %743 = load %nyx_string*, %nyx_string** %691
  %744 = getelementptr [5 x i8], [5 x i8]* @.str71, i32 0, i32 0
  %745 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str71.c, i8* %744)
  %746 = call i1 @nyx_string_equals(%nyx_string* %743, %nyx_string* %745)
  br i1 %746, label %then111, label %else112
then111:
  %747 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %748 = load %Environment, %Environment* %env.ptr
  %749 = call %Value @eval_call({ i64, i8* }* %747, %Environment %748)
  ret %Value %749
else112:
  br label %merge113
merge113:
  %750 = load %nyx_string*, %nyx_string** %691
  %751 = getelementptr [6 x i8], [6 x i8]* @.str72, i32 0, i32 0
  %752 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str72.c, i8* %751)
  %753 = call i1 @nyx_string_equals(%nyx_string* %750, %nyx_string* %752)
  br i1 %753, label %then114, label %else115
then114:
  %754 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %755 = load %Environment, %Environment* %env.ptr
  %756 = call %Value @eval_array({ i64, i8* }* %754, %Environment %755)
  ret %Value %756
else115:
  br label %merge116
merge116:
  %757 = load %nyx_string*, %nyx_string** %691
  %758 = getelementptr [6 x i8], [6 x i8]* @.str73, i32 0, i32 0
  %759 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str73.c, i8* %758)
  %760 = call i1 @nyx_string_equals(%nyx_string* %757, %nyx_string* %759)
  br i1 %760, label %then117, label %else118
then117:
  %761 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %762 = load %Environment, %Environment* %env.ptr
  %763 = call %Value @eval_index({ i64, i8* }* %761, %Environment %762)
  ret %Value %763
else118:
  br label %merge119
merge119:
  %764 = load %nyx_string*, %nyx_string** %691
  %765 = getelementptr [12 x i8], [12 x i8]* @.str74, i32 0, i32 0
  %766 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str74.c, i8* %765)
  %767 = call i1 @nyx_string_equals(%nyx_string* %764, %nyx_string* %766)
  br i1 %767, label %then120, label %else121
then120:
  %768 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %769 = load %Environment, %Environment* %env.ptr
  %770 = call %Value @eval_method_call({ i64, i8* }* %768, %Environment %769)
  ret %Value %770
else121:
  br label %merge122
merge122:
  %771 = getelementptr [8 x i8], [8 x i8]* @.str75, i32 0, i32 0
  %772 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str75.c, i8* %771)
  %773 = getelementptr [45 x i8], [45 x i8]* @.str76, i32 0, i32 0
  %774 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str76.c, i8* %773)
  %775 = load %nyx_string*, %nyx_string** %691
  %776 = call %nyx_string* @nyx_string_concat(%nyx_string* %774, %nyx_string* %775)
  %777 = getelementptr [46 x i8], [46 x i8]* @.str77, i32 0, i32 0
  %778 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str77.c, i8* %777)
  %779 = load %nyx_string*, %nyx_string** %691
  %780 = call %nyx_string* @nyx_string_concat(%nyx_string* %778, %nyx_string* %779)
  %781 = call i64 @interp_err(%nyx_string* %772, %nyx_string* %776, %nyx_string* %780)
  %782 = call %Value @make_error()
  ret %Value %782
}

define internal %Value @eval_number(
{ i64, i8* }* %node.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %783 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %784 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %783)
  %785 = alloca { i64, i8* }*
  store { i64, i8* }* %784, { i64, i8* }** %785
  %786 = load { i64, i8* }*, { i64, i8* }** %785
  %787 = call i64 @nyx_array_get_checked({ i64, i8* }* %786, i64 0, i64 2)
  %788 = inttoptr i64 %787 to %nyx_string*
  %789 = alloca %nyx_string*
  store %nyx_string* %788, %nyx_string** %789
  %790 = load %nyx_string*, %nyx_string** %789
  %791 = getelementptr [2 x i8], [2 x i8]* @.str78, i32 0, i32 0
  %792 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str78.c, i8* %791)
  %793 = call i64 @nyx_string_index_of(%nyx_string* %790, %nyx_string* %792)
  %794 = icmp sge i64 %793, 0
  br i1 %794, label %then123, label %else124
then123:
  %795 = load %nyx_string*, %nyx_string** %789
  %796 = call double @nyx_string_to_float(%nyx_string* %795)
  %797 = alloca double
  store double %796, double* %797
  %798 = load double, double* %797
  %799 = call %Value @make_float(double %798)
  ret %Value %799
else124:
  br label %merge125
merge125:
  %800 = load %nyx_string*, %nyx_string** %789
  %801 = call i64 @nyx_string_to_int(%nyx_string* %800)
  %802 = alloca i64
  store i64 %801, i64* %802
  %803 = load i64, i64* %802
  %804 = call %Value @make_int(i64 %803)
  ret %Value %804
}

define internal %Value @eval_bool(
{ i64, i8* }* %node.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %805 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %806 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %805)
  %807 = alloca { i64, i8* }*
  store { i64, i8* }* %806, { i64, i8* }** %807
  %808 = load { i64, i8* }*, { i64, i8* }** %807
  %809 = call i64 @nyx_array_get_checked({ i64, i8* }* %808, i64 0, i64 2)
  %810 = inttoptr i64 %809 to %nyx_string*
  %811 = alloca %nyx_string*
  store %nyx_string* %810, %nyx_string** %811
  %812 = load %nyx_string*, %nyx_string** %811
  %813 = getelementptr [5 x i8], [5 x i8]* @.str79, i32 0, i32 0
  %814 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str79.c, i8* %813)
  %815 = call i1 @nyx_string_equals(%nyx_string* %812, %nyx_string* %814)
  %816 = call %Value @make_bool(i1 %815)
  ret %Value %816
}

define internal %Value @eval_string(
{ i64, i8* }* %node.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %817 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %818 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %817)
  %819 = alloca { i64, i8* }*
  store { i64, i8* }* %818, { i64, i8* }** %819
  %820 = load { i64, i8* }*, { i64, i8* }** %819
  %821 = call i64 @nyx_array_get({ i64, i8* }* %820, i64 0)
  %822 = inttoptr i64 %821 to %nyx_string*
  %823 = call %Value @make_string(%nyx_string* %822)
  ret %Value %823
}

define internal %Value @eval_identifier(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %824 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %825 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %824)
  %826 = alloca { i64, i8* }*
  store { i64, i8* }* %825, { i64, i8* }** %826
  %827 = load { i64, i8* }*, { i64, i8* }** %826
  %828 = call i64 @nyx_array_get_checked({ i64, i8* }* %827, i64 0, i64 2)
  %829 = inttoptr i64 %828 to %nyx_string*
  %830 = alloca %nyx_string*
  store %nyx_string* %829, %nyx_string** %830
  %831 = load %Environment, %Environment* %env.ptr
  %832 = load %nyx_string*, %nyx_string** %830
  %833 = call %Value @env_get(%Environment %831, %nyx_string* %832)
  ret %Value %833
}

define internal %Value @eval_binop(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %834 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %835 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %834)
  %836 = alloca { i64, i8* }*
  store { i64, i8* }* %835, { i64, i8* }** %836
  %837 = load { i64, i8* }*, { i64, i8* }** %836
  %838 = call i64 @nyx_array_get_checked({ i64, i8* }* %837, i64 0, i64 2)
  %839 = inttoptr i64 %838 to %nyx_string*
  %840 = alloca %nyx_string*
  store %nyx_string* %839, %nyx_string** %840
  %841 = load { i64, i8* }*, { i64, i8* }** %836
  %842 = call i64 @nyx_array_get({ i64, i8* }* %841, i64 1)
  %843 = inttoptr i64 %842 to { i64, i8* }*
  %844 = alloca { i64, i8* }*
  store { i64, i8* }* %843, { i64, i8* }** %844
  %845 = load { i64, i8* }*, { i64, i8* }** %844
  %846 = load %Environment, %Environment* %env.ptr
  %847 = call %Value @eval_expr({ i64, i8* }* %845, %Environment %846)
  %848 = alloca %Value
  store %Value %847, %Value* %848
  %849 = getelementptr %Value, %Value* %848, i32 0, i32 0
  %850 = load %nyx_string*, %nyx_string** %849
  %851 = getelementptr [6 x i8], [6 x i8]* @.str80, i32 0, i32 0
  %852 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str80.c, i8* %851)
  %853 = call i1 @nyx_string_equals(%nyx_string* %850, %nyx_string* %852)
  br i1 %853, label %then126, label %else127
then126:
  %854 = load %Value, %Value* %848
  ret %Value %854
else127:
  br label %merge128
merge128:
  %855 = load { i64, i8* }*, { i64, i8* }** %836
  %856 = call i64 @nyx_array_get({ i64, i8* }* %855, i64 2)
  %857 = inttoptr i64 %856 to { i64, i8* }*
  %858 = alloca { i64, i8* }*
  store { i64, i8* }* %857, { i64, i8* }** %858
  %859 = load { i64, i8* }*, { i64, i8* }** %858
  %860 = load %Environment, %Environment* %env.ptr
  %861 = call %Value @eval_expr({ i64, i8* }* %859, %Environment %860)
  %862 = alloca %Value
  store %Value %861, %Value* %862
  %863 = getelementptr %Value, %Value* %862, i32 0, i32 0
  %864 = load %nyx_string*, %nyx_string** %863
  %865 = getelementptr [6 x i8], [6 x i8]* @.str81, i32 0, i32 0
  %866 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str81.c, i8* %865)
  %867 = call i1 @nyx_string_equals(%nyx_string* %864, %nyx_string* %866)
  br i1 %867, label %then129, label %else130
then129:
  %868 = load %Value, %Value* %862
  ret %Value %868
else130:
  br label %merge131
merge131:
  %869 = alloca i1
  store i1 true, i1* %869
  %870 = getelementptr %Value, %Value* %848, i32 0, i32 0
  %871 = load %nyx_string*, %nyx_string** %870
  %872 = getelementptr [6 x i8], [6 x i8]* @.str82, i32 0, i32 0
  %873 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str82.c, i8* %872)
  %874 = call i1 @nyx_string_equals(%nyx_string* %871, %nyx_string* %873)
  br i1 %874, label %sc_or_end133, label %sc_or_rhs132
sc_or_rhs132:
  %875 = getelementptr %Value, %Value* %862, i32 0, i32 0
  %876 = load %nyx_string*, %nyx_string** %875
  %877 = getelementptr [6 x i8], [6 x i8]* @.str83, i32 0, i32 0
  %878 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str83.c, i8* %877)
  %879 = call i1 @nyx_string_equals(%nyx_string* %876, %nyx_string* %878)
  store i1 %879, i1* %869
  br label %sc_or_end133
sc_or_end133:
  %880 = load i1, i1* %869
  %881 = alloca i1
  store i1 %880, i1* %881
  %882 = load %nyx_string*, %nyx_string** %840
  %883 = getelementptr [5 x i8], [5 x i8]* @.str84, i32 0, i32 0
  %884 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str84.c, i8* %883)
  %885 = call i1 @nyx_string_equals(%nyx_string* %882, %nyx_string* %884)
  br i1 %885, label %then134, label %else135
then134:
  %886 = getelementptr %Value, %Value* %848, i32 0, i32 0
  %887 = load %nyx_string*, %nyx_string** %886
  %888 = getelementptr [7 x i8], [7 x i8]* @.str85, i32 0, i32 0
  %889 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str85.c, i8* %888)
  %890 = call i1 @nyx_string_equals(%nyx_string* %887, %nyx_string* %889)
  br i1 %890, label %then137, label %else138
then137:
  %891 = load %Value, %Value* %848
  %892 = call %nyx_string* @value_to_string(%Value %891)
  %893 = alloca %nyx_string*
  store %nyx_string* %892, %nyx_string** %893
  %894 = load %Value, %Value* %862
  %895 = call %nyx_string* @value_to_string(%Value %894)
  %896 = alloca %nyx_string*
  store %nyx_string* %895, %nyx_string** %896
  %897 = load %nyx_string*, %nyx_string** %893
  %898 = load %nyx_string*, %nyx_string** %896
  %899 = call %nyx_string* @nyx_string_concat(%nyx_string* %897, %nyx_string* %898)
  %900 = call %Value @make_string(%nyx_string* %899)
  ret %Value %900
else138:
  br label %merge139
merge139:
  %901 = load i1, i1* %881
  br i1 %901, label %then140, label %else141
then140:
  %902 = load %Value, %Value* %848
  %903 = call double @value_to_float(%Value %902)
  %904 = load %Value, %Value* %862
  %905 = call double @value_to_float(%Value %904)
  %906 = fadd double %903, %905
  %907 = call %Value @make_float(double %906)
  ret %Value %907
else141:
  br label %merge142
merge142:
  %908 = load %Value, %Value* %848
  %909 = call i64 @value_to_int(%Value %908)
  %910 = load %Value, %Value* %862
  %911 = call i64 @value_to_int(%Value %910)
  %912 = add i64 %909, %911
  %913 = call %Value @make_int(i64 %912)
  ret %Value %913
else135:
  br label %merge136
merge136:
  %914 = load %nyx_string*, %nyx_string** %840
  %915 = getelementptr [6 x i8], [6 x i8]* @.str86, i32 0, i32 0
  %916 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str86.c, i8* %915)
  %917 = call i1 @nyx_string_equals(%nyx_string* %914, %nyx_string* %916)
  br i1 %917, label %then143, label %else144
then143:
  %918 = load i1, i1* %881
  br i1 %918, label %then146, label %else147
then146:
  %919 = load %Value, %Value* %848
  %920 = call double @value_to_float(%Value %919)
  %921 = load %Value, %Value* %862
  %922 = call double @value_to_float(%Value %921)
  %923 = fsub double %920, %922
  %924 = call %Value @make_float(double %923)
  ret %Value %924
else147:
  br label %merge148
merge148:
  %925 = load %Value, %Value* %848
  %926 = call i64 @value_to_int(%Value %925)
  %927 = load %Value, %Value* %862
  %928 = call i64 @value_to_int(%Value %927)
  %929 = sub i64 %926, %928
  %930 = call %Value @make_int(i64 %929)
  ret %Value %930
else144:
  br label %merge145
merge145:
  %931 = load %nyx_string*, %nyx_string** %840
  %932 = getelementptr [5 x i8], [5 x i8]* @.str87, i32 0, i32 0
  %933 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str87.c, i8* %932)
  %934 = call i1 @nyx_string_equals(%nyx_string* %931, %nyx_string* %933)
  br i1 %934, label %then149, label %else150
then149:
  %935 = load i1, i1* %881
  br i1 %935, label %then152, label %else153
then152:
  %936 = load %Value, %Value* %848
  %937 = call double @value_to_float(%Value %936)
  %938 = load %Value, %Value* %862
  %939 = call double @value_to_float(%Value %938)
  %940 = fmul double %937, %939
  %941 = call %Value @make_float(double %940)
  ret %Value %941
else153:
  br label %merge154
merge154:
  %942 = load %Value, %Value* %848
  %943 = call i64 @value_to_int(%Value %942)
  %944 = load %Value, %Value* %862
  %945 = call i64 @value_to_int(%Value %944)
  %946 = mul i64 %943, %945
  %947 = call %Value @make_int(i64 %946)
  ret %Value %947
else150:
  br label %merge151
merge151:
  %948 = load %nyx_string*, %nyx_string** %840
  %949 = getelementptr [6 x i8], [6 x i8]* @.str88, i32 0, i32 0
  %950 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str88.c, i8* %949)
  %951 = call i1 @nyx_string_equals(%nyx_string* %948, %nyx_string* %950)
  br i1 %951, label %then155, label %else156
then155:
  %952 = load i1, i1* %881
  br i1 %952, label %then158, label %else159
then158:
  %953 = load %Value, %Value* %862
  %954 = call double @value_to_float(%Value %953)
  %955 = alloca double
  store double %954, double* %955
  %956 = load %Value, %Value* %848
  %957 = call double @value_to_float(%Value %956)
  %958 = load double, double* %955
  %959 = fdiv double %957, %958
  %960 = call %Value @make_float(double %959)
  ret %Value %960
else159:
  br label %merge160
merge160:
  %961 = load %Value, %Value* %862
  %962 = call i64 @value_to_int(%Value %961)
  %963 = alloca i64
  store i64 %962, i64* %963
  %964 = load i64, i64* %963
  %965 = icmp ne i64 %964, 0
  br i1 %965, label %then161, label %else162
then161:
  %966 = load %Value, %Value* %848
  %967 = call i64 @value_to_int(%Value %966)
  %968 = load i64, i64* %963
  %969 = sdiv i64 %967, %968
  %970 = call %Value @make_int(i64 %969)
  ret %Value %970
else162:
  br label %merge163
merge163:
  %971 = getelementptr [8 x i8], [8 x i8]* @.str89, i32 0, i32 0
  %972 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str89.c, i8* %971)
  %973 = getelementptr [19 x i8], [19 x i8]* @.str90, i32 0, i32 0
  %974 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str90.c, i8* %973)
  %975 = getelementptr [17 x i8], [17 x i8]* @.str91, i32 0, i32 0
  %976 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str91.c, i8* %975)
  %977 = call i64 @interp_err(%nyx_string* %972, %nyx_string* %974, %nyx_string* %976)
  %978 = call %Value @make_error()
  ret %Value %978
else156:
  br label %merge157
merge157:
  %979 = load %nyx_string*, %nyx_string** %840
  %980 = getelementptr [8 x i8], [8 x i8]* @.str92, i32 0, i32 0
  %981 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str92.c, i8* %980)
  %982 = call i1 @nyx_string_equals(%nyx_string* %979, %nyx_string* %981)
  br i1 %982, label %then164, label %else165
then164:
  %983 = load %Value, %Value* %848
  %984 = call i64 @value_to_int(%Value %983)
  %985 = alloca i64
  store i64 %984, i64* %985
  %986 = load %Value, %Value* %862
  %987 = call i64 @value_to_int(%Value %986)
  %988 = alloca i64
  store i64 %987, i64* %988
  %989 = load i64, i64* %988
  %990 = icmp eq i64 %989, 0
  br i1 %990, label %then167, label %else168
then167:
  %991 = getelementptr [8 x i8], [8 x i8]* @.str93, i32 0, i32 0
  %992 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str93.c, i8* %991)
  %993 = getelementptr [17 x i8], [17 x i8]* @.str94, i32 0, i32 0
  %994 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str94.c, i8* %993)
  %995 = getelementptr [15 x i8], [15 x i8]* @.str95, i32 0, i32 0
  %996 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str95.c, i8* %995)
  %997 = call i64 @interp_err(%nyx_string* %992, %nyx_string* %994, %nyx_string* %996)
  %998 = call %Value @make_error()
  ret %Value %998
else168:
  br label %merge169
merge169:
  %999 = load i64, i64* %985
  %1000 = load i64, i64* %988
  %1001 = srem i64 %999, %1000
  %1002 = call %Value @make_int(i64 %1001)
  ret %Value %1002
else165:
  br label %merge166
merge166:
  %1003 = load %nyx_string*, %nyx_string** %840
  %1004 = getelementptr [12 x i8], [12 x i8]* @.str96, i32 0, i32 0
  %1005 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str96.c, i8* %1004)
  %1006 = call i1 @nyx_string_equals(%nyx_string* %1003, %nyx_string* %1005)
  br i1 %1006, label %then170, label %else171
then170:
  %1007 = load %Value, %Value* %848
  %1008 = load %Value, %Value* %862
  %1009 = call i1 @values_equal(%Value %1007, %Value %1008)
  %1010 = call %Value @make_bool(i1 %1009)
  ret %Value %1010
else171:
  br label %merge172
merge172:
  %1011 = load %nyx_string*, %nyx_string** %840
  %1012 = getelementptr [10 x i8], [10 x i8]* @.str97, i32 0, i32 0
  %1013 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str97.c, i8* %1012)
  %1014 = call i1 @nyx_string_equals(%nyx_string* %1011, %nyx_string* %1013)
  br i1 %1014, label %then173, label %else174
then173:
  %1015 = load %Value, %Value* %848
  %1016 = load %Value, %Value* %862
  %1017 = call i1 @values_equal(%Value %1015, %Value %1016)
  %1018 = xor i1 %1017, true
  %1019 = call %Value @make_bool(i1 %1018)
  ret %Value %1019
else174:
  br label %merge175
merge175:
  %1020 = load %nyx_string*, %nyx_string** %840
  %1021 = getelementptr [5 x i8], [5 x i8]* @.str98, i32 0, i32 0
  %1022 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str98.c, i8* %1021)
  %1023 = call i1 @nyx_string_equals(%nyx_string* %1020, %nyx_string* %1022)
  br i1 %1023, label %then176, label %else177
then176:
  %1024 = load i1, i1* %881
  br i1 %1024, label %then179, label %else180
then179:
  %1025 = load %Value, %Value* %848
  %1026 = call double @value_to_float(%Value %1025)
  %1027 = load %Value, %Value* %862
  %1028 = call double @value_to_float(%Value %1027)
  %1029 = fcmp olt double %1026, %1028
  %1030 = call %Value @make_bool(i1 %1029)
  ret %Value %1030
else180:
  br label %merge181
merge181:
  %1031 = load %Value, %Value* %848
  %1032 = call i64 @value_to_int(%Value %1031)
  %1033 = load %Value, %Value* %862
  %1034 = call i64 @value_to_int(%Value %1033)
  %1035 = icmp slt i64 %1032, %1034
  %1036 = call %Value @make_bool(i1 %1035)
  ret %Value %1036
else177:
  br label %merge178
merge178:
  %1037 = load %nyx_string*, %nyx_string** %840
  %1038 = getelementptr [8 x i8], [8 x i8]* @.str99, i32 0, i32 0
  %1039 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str99.c, i8* %1038)
  %1040 = call i1 @nyx_string_equals(%nyx_string* %1037, %nyx_string* %1039)
  br i1 %1040, label %then182, label %else183
then182:
  %1041 = load i1, i1* %881
  br i1 %1041, label %then185, label %else186
then185:
  %1042 = load %Value, %Value* %848
  %1043 = call double @value_to_float(%Value %1042)
  %1044 = load %Value, %Value* %862
  %1045 = call double @value_to_float(%Value %1044)
  %1046 = fcmp ogt double %1043, %1045
  %1047 = call %Value @make_bool(i1 %1046)
  ret %Value %1047
else186:
  br label %merge187
merge187:
  %1048 = load %Value, %Value* %848
  %1049 = call i64 @value_to_int(%Value %1048)
  %1050 = load %Value, %Value* %862
  %1051 = call i64 @value_to_int(%Value %1050)
  %1052 = icmp sgt i64 %1049, %1051
  %1053 = call %Value @make_bool(i1 %1052)
  ret %Value %1053
else183:
  br label %merge184
merge184:
  %1054 = load %nyx_string*, %nyx_string** %840
  %1055 = getelementptr [11 x i8], [11 x i8]* @.str100, i32 0, i32 0
  %1056 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str100.c, i8* %1055)
  %1057 = call i1 @nyx_string_equals(%nyx_string* %1054, %nyx_string* %1056)
  br i1 %1057, label %then188, label %else189
then188:
  %1058 = load i1, i1* %881
  br i1 %1058, label %then191, label %else192
then191:
  %1059 = load %Value, %Value* %848
  %1060 = call double @value_to_float(%Value %1059)
  %1061 = load %Value, %Value* %862
  %1062 = call double @value_to_float(%Value %1061)
  %1063 = fcmp ole double %1060, %1062
  %1064 = call %Value @make_bool(i1 %1063)
  ret %Value %1064
else192:
  br label %merge193
merge193:
  %1065 = load %Value, %Value* %848
  %1066 = call i64 @value_to_int(%Value %1065)
  %1067 = load %Value, %Value* %862
  %1068 = call i64 @value_to_int(%Value %1067)
  %1069 = icmp sle i64 %1066, %1068
  %1070 = call %Value @make_bool(i1 %1069)
  ret %Value %1070
else189:
  br label %merge190
merge190:
  %1071 = load %nyx_string*, %nyx_string** %840
  %1072 = getelementptr [14 x i8], [14 x i8]* @.str101, i32 0, i32 0
  %1073 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str101.c, i8* %1072)
  %1074 = call i1 @nyx_string_equals(%nyx_string* %1071, %nyx_string* %1073)
  br i1 %1074, label %then194, label %else195
then194:
  %1075 = load i1, i1* %881
  br i1 %1075, label %then197, label %else198
then197:
  %1076 = load %Value, %Value* %848
  %1077 = call double @value_to_float(%Value %1076)
  %1078 = load %Value, %Value* %862
  %1079 = call double @value_to_float(%Value %1078)
  %1080 = fcmp oge double %1077, %1079
  %1081 = call %Value @make_bool(i1 %1080)
  ret %Value %1081
else198:
  br label %merge199
merge199:
  %1082 = load %Value, %Value* %848
  %1083 = call i64 @value_to_int(%Value %1082)
  %1084 = load %Value, %Value* %862
  %1085 = call i64 @value_to_int(%Value %1084)
  %1086 = icmp sge i64 %1083, %1085
  %1087 = call %Value @make_bool(i1 %1086)
  ret %Value %1087
else195:
  br label %merge196
merge196:
  %1088 = alloca i1
  store i1 true, i1* %1088
  %1089 = load %nyx_string*, %nyx_string** %840
  %1090 = getelementptr [8 x i8], [8 x i8]* @.str102, i32 0, i32 0
  %1091 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str102.c, i8* %1090)
  %1092 = call i1 @nyx_string_equals(%nyx_string* %1089, %nyx_string* %1091)
  br i1 %1092, label %sc_or_end201, label %sc_or_rhs200
sc_or_rhs200:
  %1093 = load %nyx_string*, %nyx_string** %840
  %1094 = getelementptr [4 x i8], [4 x i8]* @.str103, i32 0, i32 0
  %1095 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str103.c, i8* %1094)
  %1096 = call i1 @nyx_string_equals(%nyx_string* %1093, %nyx_string* %1095)
  store i1 %1096, i1* %1088
  br label %sc_or_end201
sc_or_end201:
  %1097 = load i1, i1* %1088
  br i1 %1097, label %then202, label %else203
then202:
  %1098 = alloca i1
  store i1 false, i1* %1098
  %1099 = load %Value, %Value* %848
  %1100 = call i1 @is_truthy(%Value %1099)
  br i1 %1100, label %sc_and_rhs205, label %sc_and_end206
sc_and_rhs205:
  %1101 = load %Value, %Value* %862
  %1102 = call i1 @is_truthy(%Value %1101)
  store i1 %1102, i1* %1098
  br label %sc_and_end206
sc_and_end206:
  %1103 = load i1, i1* %1098
  %1104 = call %Value @make_bool(i1 %1103)
  ret %Value %1104
else203:
  br label %merge204
merge204:
  %1105 = alloca i1
  store i1 true, i1* %1105
  %1106 = load %nyx_string*, %nyx_string** %840
  %1107 = getelementptr [6 x i8], [6 x i8]* @.str104, i32 0, i32 0
  %1108 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str104.c, i8* %1107)
  %1109 = call i1 @nyx_string_equals(%nyx_string* %1106, %nyx_string* %1108)
  br i1 %1109, label %sc_or_end208, label %sc_or_rhs207
sc_or_rhs207:
  %1110 = load %nyx_string*, %nyx_string** %840
  %1111 = getelementptr [3 x i8], [3 x i8]* @.str105, i32 0, i32 0
  %1112 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str105.c, i8* %1111)
  %1113 = call i1 @nyx_string_equals(%nyx_string* %1110, %nyx_string* %1112)
  store i1 %1113, i1* %1105
  br label %sc_or_end208
sc_or_end208:
  %1114 = load i1, i1* %1105
  br i1 %1114, label %then209, label %else210
then209:
  %1115 = alloca i1
  store i1 true, i1* %1115
  %1116 = load %Value, %Value* %848
  %1117 = call i1 @is_truthy(%Value %1116)
  br i1 %1117, label %sc_or_end213, label %sc_or_rhs212
sc_or_rhs212:
  %1118 = load %Value, %Value* %862
  %1119 = call i1 @is_truthy(%Value %1118)
  store i1 %1119, i1* %1115
  br label %sc_or_end213
sc_or_end213:
  %1120 = load i1, i1* %1115
  %1121 = call %Value @make_bool(i1 %1120)
  ret %Value %1121
else210:
  br label %merge211
merge211:
  %1122 = getelementptr [8 x i8], [8 x i8]* @.str106, i32 0, i32 0
  %1123 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str106.c, i8* %1122)
  %1124 = getelementptr [24 x i8], [24 x i8]* @.str107, i32 0, i32 0
  %1125 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str107.c, i8* %1124)
  %1126 = load %nyx_string*, %nyx_string** %840
  %1127 = call %nyx_string* @nyx_string_concat(%nyx_string* %1125, %nyx_string* %1126)
  %1128 = getelementptr [25 x i8], [25 x i8]* @.str108, i32 0, i32 0
  %1129 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str108.c, i8* %1128)
  %1130 = load %nyx_string*, %nyx_string** %840
  %1131 = call %nyx_string* @nyx_string_concat(%nyx_string* %1129, %nyx_string* %1130)
  %1132 = call i64 @interp_err(%nyx_string* %1123, %nyx_string* %1127, %nyx_string* %1131)
  %1133 = call %Value @make_nil()
  ret %Value %1133
}

define internal %Value @eval_unop(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %1134 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1135 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %1134)
  %1136 = alloca { i64, i8* }*
  store { i64, i8* }* %1135, { i64, i8* }** %1136
  %1137 = load { i64, i8* }*, { i64, i8* }** %1136
  %1138 = call i64 @nyx_array_get_checked({ i64, i8* }* %1137, i64 0, i64 2)
  %1139 = inttoptr i64 %1138 to %nyx_string*
  %1140 = alloca %nyx_string*
  store %nyx_string* %1139, %nyx_string** %1140
  %1141 = load { i64, i8* }*, { i64, i8* }** %1136
  %1142 = call i64 @nyx_array_get({ i64, i8* }* %1141, i64 1)
  %1143 = inttoptr i64 %1142 to { i64, i8* }*
  %1144 = load %Environment, %Environment* %env.ptr
  %1145 = call %Value @eval_expr({ i64, i8* }* %1143, %Environment %1144)
  %1146 = alloca %Value
  store %Value %1145, %Value* %1146
  %1147 = getelementptr %Value, %Value* %1146, i32 0, i32 0
  %1148 = load %nyx_string*, %nyx_string** %1147
  %1149 = getelementptr [6 x i8], [6 x i8]* @.str109, i32 0, i32 0
  %1150 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str109.c, i8* %1149)
  %1151 = call i1 @nyx_string_equals(%nyx_string* %1148, %nyx_string* %1150)
  br i1 %1151, label %then214, label %else215
then214:
  %1152 = load %Value, %Value* %1146
  ret %Value %1152
else215:
  br label %merge216
merge216:
  %1153 = load %nyx_string*, %nyx_string** %1140
  %1154 = getelementptr [6 x i8], [6 x i8]* @.str110, i32 0, i32 0
  %1155 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str110.c, i8* %1154)
  %1156 = call i1 @nyx_string_equals(%nyx_string* %1153, %nyx_string* %1155)
  br i1 %1156, label %then217, label %else218
then217:
  %1157 = load %Value, %Value* %1146
  %1158 = call i64 @value_to_int(%Value %1157)
  %1159 = alloca i64
  store i64 %1158, i64* %1159
  %1160 = load i64, i64* %1159
  %1161 = sub i64 0, %1160
  %1162 = call %Value @make_int(i64 %1161)
  ret %Value %1162
else218:
  br label %merge219
merge219:
  %1163 = load %nyx_string*, %nyx_string** %1140
  %1164 = getelementptr [4 x i8], [4 x i8]* @.str111, i32 0, i32 0
  %1165 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str111.c, i8* %1164)
  %1166 = call i1 @nyx_string_equals(%nyx_string* %1163, %nyx_string* %1165)
  br i1 %1166, label %then220, label %else221
then220:
  %1167 = load %Value, %Value* %1146
  %1168 = call i1 @is_truthy(%Value %1167)
  %1169 = alloca i1
  store i1 %1168, i1* %1169
  %1170 = load i1, i1* %1169
  %1171 = xor i1 %1170, true
  %1172 = call %Value @make_bool(i1 %1171)
  ret %Value %1172
else221:
  br label %merge222
merge222:
  %1173 = getelementptr [8 x i8], [8 x i8]* @.str112, i32 0, i32 0
  %1174 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str112.c, i8* %1173)
  %1175 = getelementptr [31 x i8], [31 x i8]* @.str113, i32 0, i32 0
  %1176 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str113.c, i8* %1175)
  %1177 = load %nyx_string*, %nyx_string** %1140
  %1178 = call %nyx_string* @nyx_string_concat(%nyx_string* %1176, %nyx_string* %1177)
  %1179 = getelementptr [31 x i8], [31 x i8]* @.str114, i32 0, i32 0
  %1180 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str114.c, i8* %1179)
  %1181 = load %nyx_string*, %nyx_string** %1140
  %1182 = call %nyx_string* @nyx_string_concat(%nyx_string* %1180, %nyx_string* %1181)
  %1183 = call i64 @interp_err(%nyx_string* %1174, %nyx_string* %1178, %nyx_string* %1182)
  %1184 = call %Value @make_nil()
  ret %Value %1184
}

define internal %Value @eval_array(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %1185 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1186 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %1185)
  %1187 = alloca { i64, i8* }*
  store { i64, i8* }* %1186, { i64, i8* }** %1187
  %1188 = load { i64, i8* }*, { i64, i8* }** %1187
  %1189 = call i64 @nyx_array_get({ i64, i8* }* %1188, i64 0)
  %1190 = inttoptr i64 %1189 to { i64, i8* }*
  %1191 = alloca { i64, i8* }*
  store { i64, i8* }* %1190, { i64, i8* }** %1191
  %1192 = call { i64, i8* }* @nyx_array_new_ptr()
  %1193 = alloca { i64, i8* }*
  store { i64, i8* }* %1192, { i64, i8* }** %1193
  %1194 = alloca i64
  store i64 0, i64* %1194
  %1195 = getelementptr [6 x i8], [6 x i8]* @.str115, i32 0, i32 0
  %1196 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str115.c, i8* %1195)
  %1197 = alloca %nyx_string*
  store %nyx_string* %1196, %nyx_string** %1197
  %1198 = call i8* @llvm.stacksave()
  br label %while_cond223
while_cond223:
  %1199 = load i64, i64* %1194
  %1200 = load { i64, i8* }*, { i64, i8* }** %1191
  %1201 = call i64 @nyx_array_length({ i64, i8* }* %1200)
  %1202 = icmp slt i64 %1199, %1201
  br i1 %1202, label %while_body224, label %while_end225
while_body224:
  call void @llvm.stackrestore(i8* %1198)
  %1203 = load { i64, i8* }*, { i64, i8* }** %1191
  %1204 = load i64, i64* %1194
  %1205 = call i64 @nyx_array_get({ i64, i8* }* %1203, i64 %1204)
  %1206 = inttoptr i64 %1205 to { i64, i8* }*
  %1207 = alloca { i64, i8* }*
  store { i64, i8* }* %1206, { i64, i8* }** %1207
  %1208 = load { i64, i8* }*, { i64, i8* }** %1207
  %1209 = load %Environment, %Environment* %env.ptr
  %1210 = call %Value @eval_expr({ i64, i8* }* %1208, %Environment %1209)
  %1211 = alloca %Value
  store %Value %1210, %Value* %1211
  %1212 = getelementptr %Value, %Value* %1211, i32 0, i32 0
  %1213 = load %nyx_string*, %nyx_string** %1212
  %1214 = load %nyx_string*, %nyx_string** %1197
  %1215 = call i1 @nyx_string_equals(%nyx_string* %1213, %nyx_string* %1214)
  br i1 %1215, label %then226, label %else227
then226:
  %1216 = load %Value, %Value* %1211
  ret %Value %1216
else227:
  br label %merge228
merge228:
  %1217 = load { i64, i8* }*, { i64, i8* }** %1193
  %1218 = load %Value, %Value* %1211
  %1219 = getelementptr %Value, %Value* null, i32 1
  %1220 = ptrtoint %Value* %1219 to i64
  %1221 = call i8* @GC_malloc(i64 %1220)
  %1222 = bitcast i8* %1221 to %Value*
  store %Value %1218, %Value* %1222
  %1223 = ptrtoint %Value* %1222 to i64
  call void @nyx_array_push({ i64, i8* }* %1217, i64 %1223)
  %1224 = load i64, i64* %1194
  %1225 = add i64 %1224, 1
  store i64 %1225, i64* %1194
  br label %while_cond223
while_end225:
  %1226 = load { i64, i8* }*, { i64, i8* }** %1193
  %1227 = call %Value @make_array({ i64, i8* }* %1226)
  ret %Value %1227
}

define internal %Value @eval_index(
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
  %1232 = call i64 @nyx_array_get({ i64, i8* }* %1231, i64 0)
  %1233 = inttoptr i64 %1232 to { i64, i8* }*
  %1234 = load %Environment, %Environment* %env.ptr
  %1235 = call %Value @eval_expr({ i64, i8* }* %1233, %Environment %1234)
  %1236 = alloca %Value
  store %Value %1235, %Value* %1236
  %1237 = getelementptr %Value, %Value* %1236, i32 0, i32 0
  %1238 = load %nyx_string*, %nyx_string** %1237
  %1239 = getelementptr [6 x i8], [6 x i8]* @.str116, i32 0, i32 0
  %1240 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str116.c, i8* %1239)
  %1241 = call i1 @nyx_string_equals(%nyx_string* %1238, %nyx_string* %1240)
  br i1 %1241, label %then229, label %else230
then229:
  %1242 = load %Value, %Value* %1236
  ret %Value %1242
else230:
  br label %merge231
merge231:
  %1243 = load { i64, i8* }*, { i64, i8* }** %1230
  %1244 = call i64 @nyx_array_get({ i64, i8* }* %1243, i64 1)
  %1245 = inttoptr i64 %1244 to { i64, i8* }*
  %1246 = load %Environment, %Environment* %env.ptr
  %1247 = call %Value @eval_expr({ i64, i8* }* %1245, %Environment %1246)
  %1248 = alloca %Value
  store %Value %1247, %Value* %1248
  %1249 = getelementptr %Value, %Value* %1248, i32 0, i32 0
  %1250 = load %nyx_string*, %nyx_string** %1249
  %1251 = getelementptr [6 x i8], [6 x i8]* @.str117, i32 0, i32 0
  %1252 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str117.c, i8* %1251)
  %1253 = call i1 @nyx_string_equals(%nyx_string* %1250, %nyx_string* %1252)
  br i1 %1253, label %then232, label %else233
then232:
  %1254 = load %Value, %Value* %1248
  ret %Value %1254
else233:
  br label %merge234
merge234:
  %1255 = getelementptr %Value, %Value* %1236, i32 0, i32 0
  %1256 = load %nyx_string*, %nyx_string** %1255
  %1257 = getelementptr [6 x i8], [6 x i8]* @.str118, i32 0, i32 0
  %1258 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str118.c, i8* %1257)
  %1259 = call i1 @nyx_string_equals(%nyx_string* %1256, %nyx_string* %1258)
  %1260 = xor i1 %1259, true
  br i1 %1260, label %then235, label %else236
then235:
  %1261 = getelementptr [8 x i8], [8 x i8]* @.str119, i32 0, i32 0
  %1262 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str119.c, i8* %1261)
  %1263 = getelementptr [56 x i8], [56 x i8]* @.str120, i32 0, i32 0
  %1264 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str120.c, i8* %1263)
  %1265 = getelementptr %Value, %Value* %1236, i32 0, i32 0
  %1266 = load %nyx_string*, %nyx_string** %1265
  %1267 = call %nyx_string* @nyx_string_concat(%nyx_string* %1264, %nyx_string* %1266)
  %1268 = getelementptr [51 x i8], [51 x i8]* @.str121, i32 0, i32 0
  %1269 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str121.c, i8* %1268)
  %1270 = getelementptr %Value, %Value* %1236, i32 0, i32 0
  %1271 = load %nyx_string*, %nyx_string** %1270
  %1272 = call %nyx_string* @nyx_string_concat(%nyx_string* %1269, %nyx_string* %1271)
  %1273 = call i64 @interp_err(%nyx_string* %1262, %nyx_string* %1267, %nyx_string* %1272)
  %1274 = call %Value @make_error()
  ret %Value %1274
else236:
  br label %merge237
merge237:
  %1275 = getelementptr %Value, %Value* %1236, i32 0, i32 5
  %1276 = load { i64, i8* }*, { i64, i8* }** %1275
  %1277 = alloca { i64, i8* }*
  store { i64, i8* }* %1276, { i64, i8* }** %1277
  %1278 = load %Value, %Value* %1248
  %1279 = call i64 @value_to_int(%Value %1278)
  %1280 = alloca i64
  store i64 %1279, i64* %1280
  %1281 = alloca i1
  store i1 false, i1* %1281
  %1282 = load i64, i64* %1280
  %1283 = icmp sge i64 %1282, 0
  br i1 %1283, label %sc_and_rhs238, label %sc_and_end239
sc_and_rhs238:
  %1284 = load i64, i64* %1280
  %1285 = load { i64, i8* }*, { i64, i8* }** %1277
  %1286 = call i64 @nyx_array_length({ i64, i8* }* %1285)
  %1287 = icmp slt i64 %1284, %1286
  store i1 %1287, i1* %1281
  br label %sc_and_end239
sc_and_end239:
  %1288 = load i1, i1* %1281
  br i1 %1288, label %then240, label %else241
then240:
  %1289 = load { i64, i8* }*, { i64, i8* }** %1277
  %1290 = load i64, i64* %1280
  %1291 = call i64 @nyx_array_get({ i64, i8* }* %1289, i64 %1290)
  %1292 = inttoptr i64 %1291 to %Value*
  %1293 = load %Value, %Value* %1292
  %1294 = alloca %Value
  store %Value %1293, %Value* %1294
  %1295 = load %Value, %Value* %1294
  ret %Value %1295
else241:
  br label %merge242
merge242:
  %1296 = getelementptr [8 x i8], [8 x i8]* @.str122, i32 0, i32 0
  %1297 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str122.c, i8* %1296)
  %1298 = getelementptr [23 x i8], [23 x i8]* @.str123, i32 0, i32 0
  %1299 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str123.c, i8* %1298)
  %1300 = getelementptr [19 x i8], [19 x i8]* @.str124, i32 0, i32 0
  %1301 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str124.c, i8* %1300)
  %1302 = call i64 @interp_err(%nyx_string* %1297, %nyx_string* %1299, %nyx_string* %1301)
  %1303 = call %Value @make_error()
  ret %Value %1303
}

define internal %Value @eval_stmt(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %1304 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1305 = call %nyx_string* @astnode_get_type({ i64, i8* }* %1304)
  %1306 = alloca %nyx_string*
  store %nyx_string* %1305, %nyx_string** %1306
  %1307 = load %nyx_string*, %nyx_string** %1306
  %1308 = getelementptr [4 x i8], [4 x i8]* @.str125, i32 0, i32 0
  %1309 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str125.c, i8* %1308)
  %1310 = call i1 @nyx_string_equals(%nyx_string* %1307, %nyx_string* %1309)
  br i1 %1310, label %then243, label %else244
then243:
  %1311 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1312 = load %Environment, %Environment* %env.ptr
  %1313 = call %Value @eval_let({ i64, i8* }* %1311, %Environment %1312)
  ret %Value %1313
else244:
  br label %merge245
merge245:
  %1314 = load %nyx_string*, %nyx_string** %1306
  %1315 = getelementptr [4 x i8], [4 x i8]* @.str126, i32 0, i32 0
  %1316 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str126.c, i8* %1315)
  %1317 = call i1 @nyx_string_equals(%nyx_string* %1314, %nyx_string* %1316)
  br i1 %1317, label %then246, label %else247
then246:
  %1318 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1319 = load %Environment, %Environment* %env.ptr
  %1320 = call %Value @eval_let({ i64, i8* }* %1318, %Environment %1319)
  ret %Value %1320
else247:
  br label %merge248
merge248:
  %1321 = load %nyx_string*, %nyx_string** %1306
  %1322 = getelementptr [7 x i8], [7 x i8]* @.str127, i32 0, i32 0
  %1323 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str127.c, i8* %1322)
  %1324 = call i1 @nyx_string_equals(%nyx_string* %1321, %nyx_string* %1323)
  br i1 %1324, label %then249, label %else250
then249:
  %1325 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1326 = load %Environment, %Environment* %env.ptr
  %1327 = call %Value @eval_assign({ i64, i8* }* %1325, %Environment %1326)
  ret %Value %1327
else250:
  br label %merge251
merge251:
  %1328 = load %nyx_string*, %nyx_string** %1306
  %1329 = getelementptr [3 x i8], [3 x i8]* @.str128, i32 0, i32 0
  %1330 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str128.c, i8* %1329)
  %1331 = call i1 @nyx_string_equals(%nyx_string* %1328, %nyx_string* %1330)
  br i1 %1331, label %then252, label %else253
then252:
  %1332 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1333 = load %Environment, %Environment* %env.ptr
  %1334 = call %Value @eval_if({ i64, i8* }* %1332, %Environment %1333)
  ret %Value %1334
else253:
  br label %merge254
merge254:
  %1335 = load %nyx_string*, %nyx_string** %1306
  %1336 = getelementptr [6 x i8], [6 x i8]* @.str129, i32 0, i32 0
  %1337 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str129.c, i8* %1336)
  %1338 = call i1 @nyx_string_equals(%nyx_string* %1335, %nyx_string* %1337)
  br i1 %1338, label %then255, label %else256
then255:
  %1339 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1340 = load %Environment, %Environment* %env.ptr
  %1341 = call %Value @eval_while({ i64, i8* }* %1339, %Environment %1340)
  ret %Value %1341
else256:
  br label %merge257
merge257:
  %1342 = load %nyx_string*, %nyx_string** %1306
  %1343 = getelementptr [4 x i8], [4 x i8]* @.str130, i32 0, i32 0
  %1344 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str130.c, i8* %1343)
  %1345 = call i1 @nyx_string_equals(%nyx_string* %1342, %nyx_string* %1344)
  br i1 %1345, label %then258, label %else259
then258:
  %1346 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1347 = load %Environment, %Environment* %env.ptr
  %1348 = call %Value @eval_for({ i64, i8* }* %1346, %Environment %1347)
  ret %Value %1348
else259:
  br label %merge260
merge260:
  %1349 = load %nyx_string*, %nyx_string** %1306
  %1350 = getelementptr [7 x i8], [7 x i8]* @.str131, i32 0, i32 0
  %1351 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str131.c, i8* %1350)
  %1352 = call i1 @nyx_string_equals(%nyx_string* %1349, %nyx_string* %1351)
  br i1 %1352, label %then261, label %else262
then261:
  %1353 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1354 = load %Environment, %Environment* %env.ptr
  %1355 = call %Value @eval_return({ i64, i8* }* %1353, %Environment %1354)
  ret %Value %1355
else262:
  br label %merge263
merge263:
  %1356 = load %nyx_string*, %nyx_string** %1306
  %1357 = getelementptr [6 x i8], [6 x i8]* @.str132, i32 0, i32 0
  %1358 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str132.c, i8* %1357)
  %1359 = call i1 @nyx_string_equals(%nyx_string* %1356, %nyx_string* %1358)
  br i1 %1359, label %then264, label %else265
then264:
  %1360 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1361 = load %Environment, %Environment* %env.ptr
  %1362 = call %Value @eval_block({ i64, i8* }* %1360, %Environment %1361)
  ret %Value %1362
else265:
  br label %merge266
merge266:
  %1363 = load %nyx_string*, %nyx_string** %1306
  %1364 = getelementptr [9 x i8], [9 x i8]* @.str133, i32 0, i32 0
  %1365 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str133.c, i8* %1364)
  %1366 = call i1 @nyx_string_equals(%nyx_string* %1363, %nyx_string* %1365)
  br i1 %1366, label %then267, label %else268
then267:
  %1367 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1368 = load %Environment, %Environment* %env.ptr
  %1369 = call %Value @eval_function_decl({ i64, i8* }* %1367, %Environment %1368)
  ret %Value %1369
else268:
  br label %merge269
merge269:
  %1370 = load %nyx_string*, %nyx_string** %1306
  %1371 = getelementptr [13 x i8], [13 x i8]* @.str134, i32 0, i32 0
  %1372 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str134.c, i8* %1371)
  %1373 = call i1 @nyx_string_equals(%nyx_string* %1370, %nyx_string* %1372)
  br i1 %1373, label %then270, label %else271
then270:
  %1374 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1375 = load %Environment, %Environment* %env.ptr
  %1376 = call %Value @eval_index_assign({ i64, i8* }* %1374, %Environment %1375)
  ret %Value %1376
else271:
  br label %merge272
merge272:
  %1377 = load %nyx_string*, %nyx_string** %1306
  %1378 = getelementptr [13 x i8], [13 x i8]* @.str135, i32 0, i32 0
  %1379 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str135.c, i8* %1378)
  %1380 = call i1 @nyx_string_equals(%nyx_string* %1377, %nyx_string* %1379)
  br i1 %1380, label %then273, label %else274
then273:
  %1381 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1382 = load %Environment, %Environment* %env.ptr
  %1383 = call %Value @eval_field_assign({ i64, i8* }* %1381, %Environment %1382)
  ret %Value %1383
else274:
  br label %merge275
merge275:
  %1384 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1385 = load %Environment, %Environment* %env.ptr
  %1386 = call %Value @eval_expr({ i64, i8* }* %1384, %Environment %1385)
  ret %Value %1386
}

define internal %Value @eval_let(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %1387 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1388 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %1387)
  %1389 = alloca { i64, i8* }*
  store { i64, i8* }* %1388, { i64, i8* }** %1389
  %1390 = load { i64, i8* }*, { i64, i8* }** %1389
  %1391 = call i64 @nyx_array_get({ i64, i8* }* %1390, i64 0)
  %1392 = inttoptr i64 %1391 to { i64, i8* }*
  %1393 = alloca { i64, i8* }*
  store { i64, i8* }* %1392, { i64, i8* }** %1393
  %1394 = load { i64, i8* }*, { i64, i8* }** %1393
  %1395 = call %nyx_string* @astnode_get_type({ i64, i8* }* %1394)
  %1396 = alloca %nyx_string*
  store %nyx_string* %1395, %nyx_string** %1396
  %1397 = load { i64, i8* }*, { i64, i8* }** %1389
  %1398 = call i64 @nyx_array_get({ i64, i8* }* %1397, i64 2)
  %1399 = inttoptr i64 %1398 to { i64, i8* }*
  %1400 = alloca { i64, i8* }*
  store { i64, i8* }* %1399, { i64, i8* }** %1400
  %1401 = load { i64, i8* }*, { i64, i8* }** %1400
  %1402 = load %Environment, %Environment* %env.ptr
  %1403 = call %Value @eval_expr({ i64, i8* }* %1401, %Environment %1402)
  %1404 = alloca %Value
  store %Value %1403, %Value* %1404
  %1405 = getelementptr %Value, %Value* %1404, i32 0, i32 0
  %1406 = load %nyx_string*, %nyx_string** %1405
  %1407 = getelementptr [6 x i8], [6 x i8]* @.str136, i32 0, i32 0
  %1408 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str136.c, i8* %1407)
  %1409 = call i1 @nyx_string_equals(%nyx_string* %1406, %nyx_string* %1408)
  br i1 %1409, label %then276, label %else277
then276:
  %1410 = load %Value, %Value* %1404
  ret %Value %1410
else277:
  br label %merge278
merge278:
  %1411 = load %Environment, %Environment* %env.ptr
  %1412 = load %nyx_string*, %nyx_string** %1396
  %1413 = load %Value, %Value* %1404
  %1414 = call i64 @env_define(%Environment %1411, %nyx_string* %1412, %Value %1413)
  %1415 = call %Value @make_nil()
  ret %Value %1415
}

define internal %Value @eval_assign(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %1416 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1417 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %1416)
  %1418 = alloca { i64, i8* }*
  store { i64, i8* }* %1417, { i64, i8* }** %1418
  %1419 = load { i64, i8* }*, { i64, i8* }** %1418
  %1420 = call i64 @nyx_array_get({ i64, i8* }* %1419, i64 0)
  %1421 = inttoptr i64 %1420 to { i64, i8* }*
  %1422 = alloca { i64, i8* }*
  store { i64, i8* }* %1421, { i64, i8* }** %1422
  %1423 = load { i64, i8* }*, { i64, i8* }** %1422
  %1424 = call %nyx_string* @astnode_get_type({ i64, i8* }* %1423)
  %1425 = alloca %nyx_string*
  store %nyx_string* %1424, %nyx_string** %1425
  %1426 = load { i64, i8* }*, { i64, i8* }** %1418
  %1427 = call i64 @nyx_array_get({ i64, i8* }* %1426, i64 1)
  %1428 = inttoptr i64 %1427 to { i64, i8* }*
  %1429 = load %Environment, %Environment* %env.ptr
  %1430 = call %Value @eval_expr({ i64, i8* }* %1428, %Environment %1429)
  %1431 = alloca %Value
  store %Value %1430, %Value* %1431
  %1432 = getelementptr %Value, %Value* %1431, i32 0, i32 0
  %1433 = load %nyx_string*, %nyx_string** %1432
  %1434 = getelementptr [6 x i8], [6 x i8]* @.str137, i32 0, i32 0
  %1435 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str137.c, i8* %1434)
  %1436 = call i1 @nyx_string_equals(%nyx_string* %1433, %nyx_string* %1435)
  br i1 %1436, label %then279, label %else280
then279:
  %1437 = load %Value, %Value* %1431
  ret %Value %1437
else280:
  br label %merge281
merge281:
  %1438 = load %Environment, %Environment* %env.ptr
  %1439 = load %nyx_string*, %nyx_string** %1425
  %1440 = load %Value, %Value* %1431
  %1441 = call i1 @env_set(%Environment %1438, %nyx_string* %1439, %Value %1440)
  %1442 = xor i1 %1441, true
  br i1 %1442, label %then282, label %else283
then282:
  %1443 = getelementptr [8 x i8], [8 x i8]* @.str138, i32 0, i32 0
  %1444 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str138.c, i8* %1443)
  %1445 = getelementptr [23 x i8], [23 x i8]* @.str139, i32 0, i32 0
  %1446 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str139.c, i8* %1445)
  %1447 = load %nyx_string*, %nyx_string** %1425
  %1448 = call %nyx_string* @nyx_string_concat(%nyx_string* %1446, %nyx_string* %1447)
  %1449 = getelementptr [21 x i8], [21 x i8]* @.str140, i32 0, i32 0
  %1450 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str140.c, i8* %1449)
  %1451 = load %nyx_string*, %nyx_string** %1425
  %1452 = call %nyx_string* @nyx_string_concat(%nyx_string* %1450, %nyx_string* %1451)
  %1453 = call i64 @interp_err(%nyx_string* %1444, %nyx_string* %1448, %nyx_string* %1452)
  %1454 = call %Value @make_error()
  ret %Value %1454
else283:
  br label %merge284
merge284:
  %1455 = call %Value @make_nil()
  ret %Value %1455
}

define internal %Value @eval_index_assign(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %1456 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1457 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %1456)
  %1458 = alloca { i64, i8* }*
  store { i64, i8* }* %1457, { i64, i8* }** %1458
  %1459 = load { i64, i8* }*, { i64, i8* }** %1458
  %1460 = call i64 @nyx_array_get({ i64, i8* }* %1459, i64 0)
  %1461 = inttoptr i64 %1460 to { i64, i8* }*
  %1462 = alloca { i64, i8* }*
  store { i64, i8* }* %1461, { i64, i8* }** %1462
  %1463 = load { i64, i8* }*, { i64, i8* }** %1458
  %1464 = call i64 @nyx_array_get({ i64, i8* }* %1463, i64 1)
  %1465 = inttoptr i64 %1464 to { i64, i8* }*
  %1466 = alloca { i64, i8* }*
  store { i64, i8* }* %1465, { i64, i8* }** %1466
  %1467 = load { i64, i8* }*, { i64, i8* }** %1458
  %1468 = call i64 @nyx_array_get({ i64, i8* }* %1467, i64 2)
  %1469 = inttoptr i64 %1468 to { i64, i8* }*
  %1470 = alloca { i64, i8* }*
  store { i64, i8* }* %1469, { i64, i8* }** %1470
  %1471 = load { i64, i8* }*, { i64, i8* }** %1462
  %1472 = load %Environment, %Environment* %env.ptr
  %1473 = call %Value @eval_expr({ i64, i8* }* %1471, %Environment %1472)
  %1474 = alloca %Value
  store %Value %1473, %Value* %1474
  %1475 = getelementptr %Value, %Value* %1474, i32 0, i32 0
  %1476 = load %nyx_string*, %nyx_string** %1475
  %1477 = getelementptr [6 x i8], [6 x i8]* @.str141, i32 0, i32 0
  %1478 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str141.c, i8* %1477)
  %1479 = call i1 @nyx_string_equals(%nyx_string* %1476, %nyx_string* %1478)
  br i1 %1479, label %then285, label %else286
then285:
  %1480 = load %Value, %Value* %1474
  ret %Value %1480
else286:
  br label %merge287
merge287:
  %1481 = load { i64, i8* }*, { i64, i8* }** %1466
  %1482 = load %Environment, %Environment* %env.ptr
  %1483 = call %Value @eval_expr({ i64, i8* }* %1481, %Environment %1482)
  %1484 = alloca %Value
  store %Value %1483, %Value* %1484
  %1485 = getelementptr %Value, %Value* %1484, i32 0, i32 0
  %1486 = load %nyx_string*, %nyx_string** %1485
  %1487 = getelementptr [6 x i8], [6 x i8]* @.str142, i32 0, i32 0
  %1488 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str142.c, i8* %1487)
  %1489 = call i1 @nyx_string_equals(%nyx_string* %1486, %nyx_string* %1488)
  br i1 %1489, label %then288, label %else289
then288:
  %1490 = load %Value, %Value* %1484
  ret %Value %1490
else289:
  br label %merge290
merge290:
  %1491 = load { i64, i8* }*, { i64, i8* }** %1470
  %1492 = load %Environment, %Environment* %env.ptr
  %1493 = call %Value @eval_expr({ i64, i8* }* %1491, %Environment %1492)
  %1494 = alloca %Value
  store %Value %1493, %Value* %1494
  %1495 = getelementptr %Value, %Value* %1494, i32 0, i32 0
  %1496 = load %nyx_string*, %nyx_string** %1495
  %1497 = getelementptr [6 x i8], [6 x i8]* @.str143, i32 0, i32 0
  %1498 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str143.c, i8* %1497)
  %1499 = call i1 @nyx_string_equals(%nyx_string* %1496, %nyx_string* %1498)
  br i1 %1499, label %then291, label %else292
then291:
  %1500 = load %Value, %Value* %1494
  ret %Value %1500
else292:
  br label %merge293
merge293:
  %1501 = getelementptr %Value, %Value* %1474, i32 0, i32 0
  %1502 = load %nyx_string*, %nyx_string** %1501
  %1503 = getelementptr [6 x i8], [6 x i8]* @.str144, i32 0, i32 0
  %1504 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str144.c, i8* %1503)
  %1505 = call i1 @nyx_string_equals(%nyx_string* %1502, %nyx_string* %1504)
  br i1 %1505, label %then294, label %else295
then294:
  %1506 = getelementptr %Value, %Value* %1474, i32 0, i32 5
  %1507 = load { i64, i8* }*, { i64, i8* }** %1506
  %1508 = alloca { i64, i8* }*
  store { i64, i8* }* %1507, { i64, i8* }** %1508
  %1509 = load %Value, %Value* %1484
  %1510 = call i64 @value_to_int(%Value %1509)
  %1511 = alloca i64
  store i64 %1510, i64* %1511
  %1512 = alloca i1
  store i1 false, i1* %1512
  %1513 = load i64, i64* %1511
  %1514 = icmp sge i64 %1513, 0
  br i1 %1514, label %sc_and_rhs297, label %sc_and_end298
sc_and_rhs297:
  %1515 = load i64, i64* %1511
  %1516 = load { i64, i8* }*, { i64, i8* }** %1508
  %1517 = call i64 @nyx_array_length({ i64, i8* }* %1516)
  %1518 = icmp slt i64 %1515, %1517
  store i1 %1518, i1* %1512
  br label %sc_and_end298
sc_and_end298:
  %1519 = load i1, i1* %1512
  br i1 %1519, label %then299, label %else300
then299:
  %1520 = load { i64, i8* }*, { i64, i8* }** %1508
  %1521 = load i64, i64* %1511
  %1522 = load %Value, %Value* %1494
  %1523 = getelementptr %Value, %Value* null, i32 1
  %1524 = ptrtoint %Value* %1523 to i64
  %1525 = call i8* @GC_malloc(i64 %1524)
  %1526 = bitcast i8* %1525 to %Value*
  store %Value %1522, %Value* %1526
  %1527 = ptrtoint %Value* %1526 to i64
  call void @nyx_array_set({ i64, i8* }* %1520, i64 %1521, i64 %1527)
  br label %merge301
else300:
  %1528 = getelementptr [8 x i8], [8 x i8]* @.str145, i32 0, i32 0
  %1529 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str145.c, i8* %1528)
  %1530 = getelementptr [38 x i8], [38 x i8]* @.str146, i32 0, i32 0
  %1531 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str146.c, i8* %1530)
  %1532 = getelementptr [33 x i8], [33 x i8]* @.str147, i32 0, i32 0
  %1533 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str147.c, i8* %1532)
  %1534 = call i64 @interp_err(%nyx_string* %1529, %nyx_string* %1531, %nyx_string* %1533)
  %1535 = call %Value @make_error()
  ret %Value %1535
merge301:
  br label %merge296
else295:
  %1536 = getelementptr [8 x i8], [8 x i8]* @.str148, i32 0, i32 0
  %1537 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str148.c, i8* %1536)
  %1538 = getelementptr [38 x i8], [38 x i8]* @.str149, i32 0, i32 0
  %1539 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str149.c, i8* %1538)
  %1540 = getelementptr %Value, %Value* %1474, i32 0, i32 0
  %1541 = load %nyx_string*, %nyx_string** %1540
  %1542 = call %nyx_string* @nyx_string_concat(%nyx_string* %1539, %nyx_string* %1541)
  %1543 = getelementptr [35 x i8], [35 x i8]* @.str150, i32 0, i32 0
  %1544 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str150.c, i8* %1543)
  %1545 = getelementptr %Value, %Value* %1474, i32 0, i32 0
  %1546 = load %nyx_string*, %nyx_string** %1545
  %1547 = call %nyx_string* @nyx_string_concat(%nyx_string* %1544, %nyx_string* %1546)
  %1548 = call i64 @interp_err(%nyx_string* %1537, %nyx_string* %1542, %nyx_string* %1547)
  %1549 = call %Value @make_error()
  ret %Value %1549
merge296:
  %1550 = call %Value @make_nil()
  ret %Value %1550
}

define internal %Value @eval_field_assign(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %1551 = getelementptr [8 x i8], [8 x i8]* @.str151, i32 0, i32 0
  %1552 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str151.c, i8* %1551)
  %1553 = getelementptr [45 x i8], [45 x i8]* @.str152, i32 0, i32 0
  %1554 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str152.c, i8* %1553)
  %1555 = getelementptr [46 x i8], [46 x i8]* @.str153, i32 0, i32 0
  %1556 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str153.c, i8* %1555)
  %1557 = call i64 @interp_err(%nyx_string* %1552, %nyx_string* %1554, %nyx_string* %1556)
  %1558 = call %Value @make_error()
  ret %Value %1558
}

define internal %Value @eval_if(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %1559 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1560 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %1559)
  %1561 = alloca { i64, i8* }*
  store { i64, i8* }* %1560, { i64, i8* }** %1561
  %1562 = load { i64, i8* }*, { i64, i8* }** %1561
  %1563 = call i64 @nyx_array_get({ i64, i8* }* %1562, i64 0)
  %1564 = inttoptr i64 %1563 to { i64, i8* }*
  %1565 = alloca { i64, i8* }*
  store { i64, i8* }* %1564, { i64, i8* }** %1565
  %1566 = load { i64, i8* }*, { i64, i8* }** %1565
  %1567 = load %Environment, %Environment* %env.ptr
  %1568 = call %Value @eval_expr({ i64, i8* }* %1566, %Environment %1567)
  %1569 = alloca %Value
  store %Value %1568, %Value* %1569
  %1570 = getelementptr %Value, %Value* %1569, i32 0, i32 0
  %1571 = load %nyx_string*, %nyx_string** %1570
  %1572 = getelementptr [6 x i8], [6 x i8]* @.str154, i32 0, i32 0
  %1573 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str154.c, i8* %1572)
  %1574 = call i1 @nyx_string_equals(%nyx_string* %1571, %nyx_string* %1573)
  br i1 %1574, label %then302, label %else303
then302:
  %1575 = load %Value, %Value* %1569
  ret %Value %1575
else303:
  br label %merge304
merge304:
  %1576 = load { i64, i8* }*, { i64, i8* }** %1561
  %1577 = call i64 @nyx_array_get({ i64, i8* }* %1576, i64 1)
  %1578 = inttoptr i64 %1577 to { i64, i8* }*
  %1579 = alloca { i64, i8* }*
  store { i64, i8* }* %1578, { i64, i8* }** %1579
  %1580 = load { i64, i8* }*, { i64, i8* }** %1561
  %1581 = call i64 @nyx_array_get({ i64, i8* }* %1580, i64 2)
  %1582 = inttoptr i64 %1581 to { i64, i8* }*
  %1583 = alloca { i64, i8* }*
  store { i64, i8* }* %1582, { i64, i8* }** %1583
  %1584 = load %Value, %Value* %1569
  %1585 = call i1 @is_truthy(%Value %1584)
  br i1 %1585, label %then305, label %else306
then305:
  %1586 = load { i64, i8* }*, { i64, i8* }** %1579
  %1587 = load %Environment, %Environment* %env.ptr
  %1588 = call %Value @eval_stmt({ i64, i8* }* %1586, %Environment %1587)
  ret %Value %1588
else306:
  %1589 = load { i64, i8* }*, { i64, i8* }** %1583
  %1590 = call %nyx_string* @astnode_get_type({ i64, i8* }* %1589)
  %1591 = alloca %nyx_string*
  store %nyx_string* %1590, %nyx_string** %1591
  %1592 = load %nyx_string*, %nyx_string** %1591
  %1593 = getelementptr [6 x i8], [6 x i8]* @.str155, i32 0, i32 0
  %1594 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str155.c, i8* %1593)
  %1595 = call i1 @nyx_string_equals(%nyx_string* %1592, %nyx_string* %1594)
  %1596 = xor i1 %1595, true
  br i1 %1596, label %then308, label %else309
then308:
  %1597 = load { i64, i8* }*, { i64, i8* }** %1583
  %1598 = load %Environment, %Environment* %env.ptr
  %1599 = call %Value @eval_stmt({ i64, i8* }* %1597, %Environment %1598)
  ret %Value %1599
else309:
  br label %merge310
merge310:
  br label %merge307
merge307:
  %1600 = call %Value @make_nil()
  ret %Value %1600
}

define internal %Value @eval_while(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %1601 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1602 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %1601)
  %1603 = alloca { i64, i8* }*
  store { i64, i8* }* %1602, { i64, i8* }** %1603
  %1604 = load { i64, i8* }*, { i64, i8* }** %1603
  %1605 = call i64 @nyx_array_get({ i64, i8* }* %1604, i64 0)
  %1606 = inttoptr i64 %1605 to { i64, i8* }*
  %1607 = alloca { i64, i8* }*
  store { i64, i8* }* %1606, { i64, i8* }** %1607
  %1608 = load { i64, i8* }*, { i64, i8* }** %1603
  %1609 = call i64 @nyx_array_get({ i64, i8* }* %1608, i64 1)
  %1610 = inttoptr i64 %1609 to { i64, i8* }*
  %1611 = alloca { i64, i8* }*
  store { i64, i8* }* %1610, { i64, i8* }** %1611
  %1612 = alloca i1
  store i1 1, i1* %1612
  %1613 = getelementptr [6 x i8], [6 x i8]* @.str156, i32 0, i32 0
  %1614 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str156.c, i8* %1613)
  %1615 = alloca %nyx_string*
  store %nyx_string* %1614, %nyx_string** %1615
  %1616 = call i8* @llvm.stacksave()
  br label %while_cond311
while_cond311:
  %1617 = load i1, i1* %1612
  br i1 %1617, label %while_body312, label %while_end313
while_body312:
  call void @llvm.stackrestore(i8* %1616)
  %1618 = load { i64, i8* }*, { i64, i8* }** %1607
  %1619 = load %Environment, %Environment* %env.ptr
  %1620 = call %Value @eval_expr({ i64, i8* }* %1618, %Environment %1619)
  %1621 = alloca %Value
  store %Value %1620, %Value* %1621
  %1622 = getelementptr %Value, %Value* %1621, i32 0, i32 0
  %1623 = load %nyx_string*, %nyx_string** %1622
  %1624 = load %nyx_string*, %nyx_string** %1615
  %1625 = call i1 @nyx_string_equals(%nyx_string* %1623, %nyx_string* %1624)
  br i1 %1625, label %then314, label %else315
then314:
  %1626 = load %Value, %Value* %1621
  ret %Value %1626
else315:
  br label %merge316
merge316:
  %1627 = load %Value, %Value* %1621
  %1628 = call i1 @is_truthy(%Value %1627)
  br i1 %1628, label %then317, label %else318
then317:
  %1629 = load { i64, i8* }*, { i64, i8* }** %1611
  %1630 = load %Environment, %Environment* %env.ptr
  %1631 = call %Value @eval_stmt({ i64, i8* }* %1629, %Environment %1630)
  %1632 = alloca %Value
  store %Value %1631, %Value* %1632
  %1633 = getelementptr %Value, %Value* %1632, i32 0, i32 0
  %1634 = load %nyx_string*, %nyx_string** %1633
  %1635 = load %nyx_string*, %nyx_string** %1615
  %1636 = call i1 @nyx_string_equals(%nyx_string* %1634, %nyx_string* %1635)
  br i1 %1636, label %then320, label %else321
then320:
  %1637 = load %Value, %Value* %1632
  ret %Value %1637
else321:
  br label %merge322
merge322:
  br label %merge319
else318:
  store i1 0, i1* %1612
  br label %merge319
merge319:
  br label %while_cond311
while_end313:
  %1638 = call %Value @make_nil()
  ret %Value %1638
}

define internal %Value @eval_for(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %1639 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1640 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %1639)
  %1641 = alloca { i64, i8* }*
  store { i64, i8* }* %1640, { i64, i8* }** %1641
  %1642 = load { i64, i8* }*, { i64, i8* }** %1641
  %1643 = call i64 @nyx_array_get_checked({ i64, i8* }* %1642, i64 0, i64 2)
  %1644 = inttoptr i64 %1643 to %nyx_string*
  %1645 = alloca %nyx_string*
  store %nyx_string* %1644, %nyx_string** %1645
  %1646 = load { i64, i8* }*, { i64, i8* }** %1641
  %1647 = call i64 @nyx_array_get({ i64, i8* }* %1646, i64 1)
  %1648 = inttoptr i64 %1647 to { i64, i8* }*
  %1649 = load %Environment, %Environment* %env.ptr
  %1650 = call %Value @eval_expr({ i64, i8* }* %1648, %Environment %1649)
  %1651 = alloca %Value
  store %Value %1650, %Value* %1651
  %1652 = getelementptr %Value, %Value* %1651, i32 0, i32 0
  %1653 = load %nyx_string*, %nyx_string** %1652
  %1654 = getelementptr [6 x i8], [6 x i8]* @.str157, i32 0, i32 0
  %1655 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str157.c, i8* %1654)
  %1656 = call i1 @nyx_string_equals(%nyx_string* %1653, %nyx_string* %1655)
  br i1 %1656, label %then323, label %else324
then323:
  %1657 = load %Value, %Value* %1651
  ret %Value %1657
else324:
  br label %merge325
merge325:
  %1658 = load { i64, i8* }*, { i64, i8* }** %1641
  %1659 = call i64 @nyx_array_get({ i64, i8* }* %1658, i64 2)
  %1660 = inttoptr i64 %1659 to { i64, i8* }*
  %1661 = alloca { i64, i8* }*
  store { i64, i8* }* %1660, { i64, i8* }** %1661
  %1662 = load %Environment, %Environment* %env.ptr
  %1663 = call %Environment @make_child_env(%Environment %1662)
  %1664 = alloca %Environment
  store %Environment %1663, %Environment* %1664
  %1665 = getelementptr %Value, %Value* %1651, i32 0, i32 0
  %1666 = load %nyx_string*, %nyx_string** %1665
  %1667 = getelementptr [6 x i8], [6 x i8]* @.str158, i32 0, i32 0
  %1668 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str158.c, i8* %1667)
  %1669 = call i1 @nyx_string_equals(%nyx_string* %1666, %nyx_string* %1668)
  br i1 %1669, label %then326, label %else327
then326:
  %1670 = getelementptr %Value, %Value* %1651, i32 0, i32 5
  %1671 = load { i64, i8* }*, { i64, i8* }** %1670
  %1672 = alloca { i64, i8* }*
  store { i64, i8* }* %1671, { i64, i8* }** %1672
  %1673 = alloca i64
  store i64 0, i64* %1673
  %1674 = getelementptr [6 x i8], [6 x i8]* @.str159, i32 0, i32 0
  %1675 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str159.c, i8* %1674)
  %1676 = alloca %nyx_string*
  store %nyx_string* %1675, %nyx_string** %1676
  %1677 = call i8* @llvm.stacksave()
  br label %while_cond329
while_cond329:
  %1678 = load i64, i64* %1673
  %1679 = load { i64, i8* }*, { i64, i8* }** %1672
  %1680 = call i64 @nyx_array_length({ i64, i8* }* %1679)
  %1681 = icmp slt i64 %1678, %1680
  br i1 %1681, label %while_body330, label %while_end331
while_body330:
  call void @llvm.stackrestore(i8* %1677)
  %1682 = load { i64, i8* }*, { i64, i8* }** %1672
  %1683 = load i64, i64* %1673
  %1684 = call i64 @nyx_array_get({ i64, i8* }* %1682, i64 %1683)
  %1685 = inttoptr i64 %1684 to %Value*
  %1686 = load %Value, %Value* %1685
  %1687 = alloca %Value
  store %Value %1686, %Value* %1687
  %1688 = load %Environment, %Environment* %1664
  %1689 = load %nyx_string*, %nyx_string** %1645
  %1690 = load %Value, %Value* %1687
  %1691 = call i64 @env_define(%Environment %1688, %nyx_string* %1689, %Value %1690)
  %1692 = load { i64, i8* }*, { i64, i8* }** %1661
  %1693 = load %Environment, %Environment* %1664
  %1694 = call %Value @eval_stmt({ i64, i8* }* %1692, %Environment %1693)
  %1695 = alloca %Value
  store %Value %1694, %Value* %1695
  %1696 = getelementptr %Value, %Value* %1695, i32 0, i32 0
  %1697 = load %nyx_string*, %nyx_string** %1696
  %1698 = load %nyx_string*, %nyx_string** %1676
  %1699 = call i1 @nyx_string_equals(%nyx_string* %1697, %nyx_string* %1698)
  br i1 %1699, label %then332, label %else333
then332:
  %1700 = load %Value, %Value* %1695
  ret %Value %1700
else333:
  br label %merge334
merge334:
  %1701 = load i64, i64* %1673
  %1702 = add i64 %1701, 1
  store i64 %1702, i64* %1673
  br label %while_cond329
while_end331:
  br label %merge328
else327:
  br label %merge328
merge328:
  %1703 = call %Value @make_nil()
  ret %Value %1703
}

define internal %Value @eval_block(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %1704 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1705 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %1704)
  %1706 = alloca { i64, i8* }*
  store { i64, i8* }* %1705, { i64, i8* }** %1706
  %1707 = load { i64, i8* }*, { i64, i8* }** %1706
  %1708 = call i64 @nyx_array_get({ i64, i8* }* %1707, i64 0)
  %1709 = inttoptr i64 %1708 to { i64, i8* }*
  %1710 = alloca { i64, i8* }*
  store { i64, i8* }* %1709, { i64, i8* }** %1710
  %1711 = load %Environment, %Environment* %env.ptr
  %1712 = call %Environment @make_child_env(%Environment %1711)
  %1713 = alloca %Environment
  store %Environment %1712, %Environment* %1713
  %1714 = call %Value @make_nil()
  %1715 = alloca %Value
  store %Value %1714, %Value* %1715
  %1716 = alloca i64
  store i64 0, i64* %1716
  %1717 = load { i64, i8* }*, { i64, i8* }** %1710
  %1718 = call i64 @nyx_array_length({ i64, i8* }* %1717)
  %1719 = alloca i64
  store i64 %1718, i64* %1719
  %1720 = getelementptr [7 x i8], [7 x i8]* @.str160, i32 0, i32 0
  %1721 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str160.c, i8* %1720)
  %1722 = alloca %nyx_string*
  store %nyx_string* %1721, %nyx_string** %1722
  %1723 = getelementptr [6 x i8], [6 x i8]* @.str161, i32 0, i32 0
  %1724 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str161.c, i8* %1723)
  %1725 = alloca %nyx_string*
  store %nyx_string* %1724, %nyx_string** %1725
  %1726 = call i8* @llvm.stacksave()
  br label %while_cond335
while_cond335:
  %1727 = load i64, i64* %1716
  %1728 = load i64, i64* %1719
  %1729 = icmp slt i64 %1727, %1728
  br i1 %1729, label %while_body336, label %while_end337
while_body336:
  call void @llvm.stackrestore(i8* %1726)
  %1730 = load { i64, i8* }*, { i64, i8* }** %1710
  %1731 = load i64, i64* %1716
  %1732 = call i64 @nyx_array_get({ i64, i8* }* %1730, i64 %1731)
  %1733 = inttoptr i64 %1732 to { i64, i8* }*
  %1734 = alloca { i64, i8* }*
  store { i64, i8* }* %1733, { i64, i8* }** %1734
  %1735 = load { i64, i8* }*, { i64, i8* }** %1734
  %1736 = load %Environment, %Environment* %1713
  %1737 = call %Value @eval_stmt({ i64, i8* }* %1735, %Environment %1736)
  store %Value %1737, %Value* %1715
  %1738 = getelementptr %Value, %Value* %1715, i32 0, i32 0
  %1739 = load %nyx_string*, %nyx_string** %1738
  %1740 = load %nyx_string*, %nyx_string** %1722
  %1741 = call i1 @nyx_string_equals(%nyx_string* %1739, %nyx_string* %1740)
  br i1 %1741, label %then338, label %else339
then338:
  %1742 = load %Value, %Value* %1715
  ret %Value %1742
else339:
  br label %merge340
merge340:
  %1743 = getelementptr %Value, %Value* %1715, i32 0, i32 0
  %1744 = load %nyx_string*, %nyx_string** %1743
  %1745 = load %nyx_string*, %nyx_string** %1725
  %1746 = call i1 @nyx_string_equals(%nyx_string* %1744, %nyx_string* %1745)
  br i1 %1746, label %then341, label %else342
then341:
  %1747 = load %Value, %Value* %1715
  ret %Value %1747
else342:
  br label %merge343
merge343:
  %1748 = load i64, i64* %1716
  %1749 = add i64 %1748, 1
  store i64 %1749, i64* %1716
  br label %while_cond335
while_end337:
  %1750 = load %Value, %Value* %1715
  ret %Value %1750
}

define internal %Value @eval_function_decl(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %1751 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1752 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %1751)
  %1753 = alloca { i64, i8* }*
  store { i64, i8* }* %1752, { i64, i8* }** %1753
  %1754 = load { i64, i8* }*, { i64, i8* }** %1753
  %1755 = call i64 @nyx_array_get_checked({ i64, i8* }* %1754, i64 0, i64 2)
  %1756 = inttoptr i64 %1755 to %nyx_string*
  %1757 = alloca %nyx_string*
  store %nyx_string* %1756, %nyx_string** %1757
  %1758 = load { i64, i8* }*, { i64, i8* }** %1753
  %1759 = call i64 @nyx_array_get({ i64, i8* }* %1758, i64 1)
  %1760 = inttoptr i64 %1759 to { i64, i8* }*
  %1761 = alloca { i64, i8* }*
  store { i64, i8* }* %1760, { i64, i8* }** %1761
  %1762 = load { i64, i8* }*, { i64, i8* }** %1753
  %1763 = call i64 @nyx_array_get({ i64, i8* }* %1762, i64 2)
  %1764 = alloca i64
  store i64 %1763, i64* %1764
  %1765 = load { i64, i8* }*, { i64, i8* }** %1753
  %1766 = call i64 @nyx_array_get({ i64, i8* }* %1765, i64 3)
  %1767 = inttoptr i64 %1766 to { i64, i8* }*
  %1768 = alloca { i64, i8* }*
  store { i64, i8* }* %1767, { i64, i8* }** %1768
  %1769 = call { i64, i8* }* @nyx_array_new_ptr()
  %1770 = alloca { i64, i8* }*
  store { i64, i8* }* %1769, { i64, i8* }** %1770
  %1771 = load { i64, i8* }*, { i64, i8* }** %1768
  %1772 = call %nyx_string* @astnode_get_type({ i64, i8* }* %1771)
  %1773 = alloca %nyx_string*
  store %nyx_string* %1772, %nyx_string** %1773
  %1774 = load { i64, i8* }*, { i64, i8* }** %1768
  %1775 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %1774)
  %1776 = alloca { i64, i8* }*
  store { i64, i8* }* %1775, { i64, i8* }** %1776
  %1777 = getelementptr %Environment, %Environment* %env.ptr, i32 0, i32 0
  %1778 = load i8*, i8** %1777
  %1779 = alloca i8*
  store i8* %1778, i8** %1779
  %1780 = getelementptr %Environment, %Environment* %env.ptr, i32 0, i32 1
  %1781 = load { i64, i8* }*, { i64, i8* }** %1780
  %1782 = alloca { i64, i8* }*
  store { i64, i8* }* %1781, { i64, i8* }** %1782
  %1783 = getelementptr %Value, %Value* null, i32 1
  %1784 = ptrtoint %Value* %1783 to i64
  %1785 = call i8* @GC_malloc(i64 %1784)
  %1786 = bitcast i8* %1785 to %Value*
  %1787 = getelementptr [9 x i8], [9 x i8]* @.str162, i32 0, i32 0
  %1788 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str162.c, i8* %1787)
  %1789 = getelementptr %Value, %Value* %1786, i32 0, i32 0
  store %nyx_string* %1788, %nyx_string** %1789
  %1790 = getelementptr %Value, %Value* %1786, i32 0, i32 1
  store i64 0, i64* %1790
  %1791 = getelementptr %Value, %Value* %1786, i32 0, i32 2
  store double 0.0, double* %1791
  %1792 = getelementptr %Value, %Value* %1786, i32 0, i32 3
  store i1 0, i1* %1792
  %1793 = getelementptr [1 x i8], [1 x i8]* @.str163, i32 0, i32 0
  %1794 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str163.c, i8* %1793)
  %1795 = getelementptr %Value, %Value* %1786, i32 0, i32 4
  store %nyx_string* %1794, %nyx_string** %1795
  %1796 = load { i64, i8* }*, { i64, i8* }** %1770
  %1797 = getelementptr %Value, %Value* %1786, i32 0, i32 5
  store { i64, i8* }* %1796, { i64, i8* }** %1797
  %1798 = load { i64, i8* }*, { i64, i8* }** %1761
  %1799 = getelementptr %Value, %Value* %1786, i32 0, i32 6
  store { i64, i8* }* %1798, { i64, i8* }** %1799
  %1800 = load %nyx_string*, %nyx_string** %1773
  %1801 = getelementptr %Value, %Value* %1786, i32 0, i32 7
  store %nyx_string* %1800, %nyx_string** %1801
  %1802 = load { i64, i8* }*, { i64, i8* }** %1776
  %1803 = getelementptr %Value, %Value* %1786, i32 0, i32 8
  store { i64, i8* }* %1802, { i64, i8* }** %1803
  %1804 = load i8*, i8** %1779
  %1805 = getelementptr %Value, %Value* %1786, i32 0, i32 9
  store i8* %1804, i8** %1805
  %1806 = load { i64, i8* }*, { i64, i8* }** %1782
  %1807 = getelementptr %Value, %Value* %1786, i32 0, i32 10
  store { i64, i8* }* %1806, { i64, i8* }** %1807
  %1808 = load %Value, %Value* %1786
  %1809 = alloca %Value
  store %Value %1808, %Value* %1809
  %1810 = load %Environment, %Environment* %env.ptr
  %1811 = load %nyx_string*, %nyx_string** %1757
  %1812 = load %Value, %Value* %1809
  %1813 = call i64 @env_define(%Environment %1810, %nyx_string* %1811, %Value %1812)
  %1814 = call %Value @make_nil()
  ret %Value %1814
}

define internal %Value @unwrap_return_value(
%Value %return_val.param) {
  %return_val.ptr = alloca %Value
  store %Value %return_val.param, %Value* %return_val.ptr
  %1815 = getelementptr %Value, %Value* %return_val.ptr, i32 0, i32 5
  %1816 = load { i64, i8* }*, { i64, i8* }** %1815
  %1817 = alloca { i64, i8* }*
  store { i64, i8* }* %1816, { i64, i8* }** %1817
  %1818 = load { i64, i8* }*, { i64, i8* }** %1817
  %1819 = call i64 @nyx_array_get({ i64, i8* }* %1818, i64 0)
  %1820 = inttoptr i64 %1819 to %Value*
  %1821 = load %Value, %Value* %1820
  %1822 = alloca %Value
  store %Value %1821, %Value* %1822
  %1823 = load %Value, %Value* %1822
  ret %Value %1823
}

define internal %Value @eval_method_call(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %1824 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1825 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %1824)
  %1826 = alloca { i64, i8* }*
  store { i64, i8* }* %1825, { i64, i8* }** %1826
  %1827 = load { i64, i8* }*, { i64, i8* }** %1826
  %1828 = call i64 @nyx_array_get({ i64, i8* }* %1827, i64 0)
  %1829 = inttoptr i64 %1828 to { i64, i8* }*
  %1830 = alloca { i64, i8* }*
  store { i64, i8* }* %1829, { i64, i8* }** %1830
  %1831 = load { i64, i8* }*, { i64, i8* }** %1826
  %1832 = call i64 @nyx_array_get_checked({ i64, i8* }* %1831, i64 1, i64 2)
  %1833 = inttoptr i64 %1832 to %nyx_string*
  %1834 = alloca %nyx_string*
  store %nyx_string* %1833, %nyx_string** %1834
  %1835 = load { i64, i8* }*, { i64, i8* }** %1826
  %1836 = call i64 @nyx_array_get({ i64, i8* }* %1835, i64 2)
  %1837 = inttoptr i64 %1836 to { i64, i8* }*
  %1838 = alloca { i64, i8* }*
  store { i64, i8* }* %1837, { i64, i8* }** %1838
  %1839 = load { i64, i8* }*, { i64, i8* }** %1830
  %1840 = load %Environment, %Environment* %env.ptr
  %1841 = call %Value @eval_expr({ i64, i8* }* %1839, %Environment %1840)
  %1842 = alloca %Value
  store %Value %1841, %Value* %1842
  %1843 = getelementptr %Value, %Value* %1842, i32 0, i32 0
  %1844 = load %nyx_string*, %nyx_string** %1843
  %1845 = getelementptr [6 x i8], [6 x i8]* @.str164, i32 0, i32 0
  %1846 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str164.c, i8* %1845)
  %1847 = call i1 @nyx_string_equals(%nyx_string* %1844, %nyx_string* %1846)
  br i1 %1847, label %then344, label %else345
then344:
  %1848 = load %Value, %Value* %1842
  ret %Value %1848
else345:
  br label %merge346
merge346:
  %1849 = getelementptr %Value, %Value* %1842, i32 0, i32 0
  %1850 = load %nyx_string*, %nyx_string** %1849
  %1851 = getelementptr [7 x i8], [7 x i8]* @.str165, i32 0, i32 0
  %1852 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str165.c, i8* %1851)
  %1853 = call i1 @nyx_string_equals(%nyx_string* %1850, %nyx_string* %1852)
  br i1 %1853, label %then347, label %else348
then347:
  %1854 = getelementptr %Value, %Value* %1842, i32 0, i32 4
  %1855 = load %nyx_string*, %nyx_string** %1854
  %1856 = alloca %nyx_string*
  store %nyx_string* %1855, %nyx_string** %1856
  %1857 = load %nyx_string*, %nyx_string** %1834
  %1858 = getelementptr [7 x i8], [7 x i8]* @.str166, i32 0, i32 0
  %1859 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str166.c, i8* %1858)
  %1860 = call i1 @nyx_string_equals(%nyx_string* %1857, %nyx_string* %1859)
  br i1 %1860, label %then350, label %else351
then350:
  %1861 = load %nyx_string*, %nyx_string** %1856
  %1862 = call i64 @nyx_string_byte_length(%nyx_string* %1861)
  %1863 = call %Value @make_int(i64 %1862)
  ret %Value %1863
else351:
  br label %merge352
merge352:
  %1864 = load %nyx_string*, %nyx_string** %1834
  %1865 = getelementptr [12 x i8], [12 x i8]* @.str167, i32 0, i32 0
  %1866 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str167.c, i8* %1865)
  %1867 = call i1 @nyx_string_equals(%nyx_string* %1864, %nyx_string* %1866)
  br i1 %1867, label %then353, label %else354
then353:
  %1868 = load %nyx_string*, %nyx_string** %1856
  %1869 = call i64 @nyx_string_length_utf8(%nyx_string* %1868)
  %1870 = call %Value @make_int(i64 %1869)
  ret %Value %1870
else354:
  br label %merge355
merge355:
  %1871 = load %nyx_string*, %nyx_string** %1834
  %1872 = getelementptr [12 x i8], [12 x i8]* @.str168, i32 0, i32 0
  %1873 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str168.c, i8* %1872)
  %1874 = call i1 @nyx_string_equals(%nyx_string* %1871, %nyx_string* %1873)
  br i1 %1874, label %then356, label %else357
then356:
  %1875 = load %nyx_string*, %nyx_string** %1856
  %1876 = call i64 @nyx_string_byte_length(%nyx_string* %1875)
  %1877 = call %Value @make_int(i64 %1876)
  ret %Value %1877
else357:
  br label %merge358
merge358:
  %1878 = load %nyx_string*, %nyx_string** %1834
  %1879 = getelementptr [8 x i8], [8 x i8]* @.str169, i32 0, i32 0
  %1880 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str169.c, i8* %1879)
  %1881 = call i1 @nyx_string_equals(%nyx_string* %1878, %nyx_string* %1880)
  br i1 %1881, label %then359, label %else360
then359:
  %1882 = load %nyx_string*, %nyx_string** %1856
  %1883 = call %nyx_string* @nyx_string_to_upper(%nyx_string* %1882)
  %1884 = call %Value @make_string(%nyx_string* %1883)
  ret %Value %1884
else360:
  br label %merge361
merge361:
  %1885 = load %nyx_string*, %nyx_string** %1834
  %1886 = getelementptr [8 x i8], [8 x i8]* @.str170, i32 0, i32 0
  %1887 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str170.c, i8* %1886)
  %1888 = call i1 @nyx_string_equals(%nyx_string* %1885, %nyx_string* %1887)
  br i1 %1888, label %then362, label %else363
then362:
  %1889 = load %nyx_string*, %nyx_string** %1856
  %1890 = call %nyx_string* @nyx_string_to_lower(%nyx_string* %1889)
  %1891 = call %Value @make_string(%nyx_string* %1890)
  ret %Value %1891
else363:
  br label %merge364
merge364:
  %1892 = load %nyx_string*, %nyx_string** %1834
  %1893 = getelementptr [5 x i8], [5 x i8]* @.str171, i32 0, i32 0
  %1894 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str171.c, i8* %1893)
  %1895 = call i1 @nyx_string_equals(%nyx_string* %1892, %nyx_string* %1894)
  br i1 %1895, label %then365, label %else366
then365:
  %1896 = load %nyx_string*, %nyx_string** %1856
  %1897 = call %nyx_string* @nyx_string_trim(%nyx_string* %1896)
  %1898 = call %Value @make_string(%nyx_string* %1897)
  ret %Value %1898
else366:
  br label %merge367
merge367:
  %1899 = load %nyx_string*, %nyx_string** %1834
  %1900 = getelementptr [8 x i8], [8 x i8]* @.str172, i32 0, i32 0
  %1901 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str172.c, i8* %1900)
  %1902 = call i1 @nyx_string_equals(%nyx_string* %1899, %nyx_string* %1901)
  br i1 %1902, label %then368, label %else369
then368:
  %1903 = load { i64, i8* }*, { i64, i8* }** %1838
  %1904 = call i64 @nyx_array_get({ i64, i8* }* %1903, i64 0)
  %1905 = inttoptr i64 %1904 to { i64, i8* }*
  %1906 = load %Environment, %Environment* %env.ptr
  %1907 = call %Value @eval_expr({ i64, i8* }* %1905, %Environment %1906)
  %1908 = alloca %Value
  store %Value %1907, %Value* %1908
  %1909 = getelementptr %Value, %Value* %1908, i32 0, i32 0
  %1910 = load %nyx_string*, %nyx_string** %1909
  %1911 = getelementptr [6 x i8], [6 x i8]* @.str173, i32 0, i32 0
  %1912 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str173.c, i8* %1911)
  %1913 = call i1 @nyx_string_equals(%nyx_string* %1910, %nyx_string* %1912)
  br i1 %1913, label %then371, label %else372
then371:
  %1914 = load %Value, %Value* %1908
  ret %Value %1914
else372:
  br label %merge373
merge373:
  %1915 = load %nyx_string*, %nyx_string** %1856
  %1916 = getelementptr %Value, %Value* %1908, i32 0, i32 4
  %1917 = load %nyx_string*, %nyx_string** %1916
  %1918 = call i64 @nyx_string_index_of(%nyx_string* %1915, %nyx_string* %1917)
  %1919 = call %Value @make_int(i64 %1918)
  ret %Value %1919
else369:
  br label %merge370
merge370:
  %1920 = load %nyx_string*, %nyx_string** %1834
  %1921 = getelementptr [10 x i8], [10 x i8]* @.str174, i32 0, i32 0
  %1922 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str174.c, i8* %1921)
  %1923 = call i1 @nyx_string_equals(%nyx_string* %1920, %nyx_string* %1922)
  br i1 %1923, label %then374, label %else375
then374:
  %1924 = load { i64, i8* }*, { i64, i8* }** %1838
  %1925 = call i64 @nyx_array_get({ i64, i8* }* %1924, i64 0)
  %1926 = inttoptr i64 %1925 to { i64, i8* }*
  %1927 = load %Environment, %Environment* %env.ptr
  %1928 = call %Value @eval_expr({ i64, i8* }* %1926, %Environment %1927)
  %1929 = alloca %Value
  store %Value %1928, %Value* %1929
  %1930 = getelementptr %Value, %Value* %1929, i32 0, i32 0
  %1931 = load %nyx_string*, %nyx_string** %1930
  %1932 = getelementptr [6 x i8], [6 x i8]* @.str175, i32 0, i32 0
  %1933 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str175.c, i8* %1932)
  %1934 = call i1 @nyx_string_equals(%nyx_string* %1931, %nyx_string* %1933)
  br i1 %1934, label %then377, label %else378
then377:
  %1935 = load %Value, %Value* %1929
  ret %Value %1935
else378:
  br label %merge379
merge379:
  %1936 = load { i64, i8* }*, { i64, i8* }** %1838
  %1937 = call i64 @nyx_array_get({ i64, i8* }* %1936, i64 1)
  %1938 = inttoptr i64 %1937 to { i64, i8* }*
  %1939 = load %Environment, %Environment* %env.ptr
  %1940 = call %Value @eval_expr({ i64, i8* }* %1938, %Environment %1939)
  %1941 = alloca %Value
  store %Value %1940, %Value* %1941
  %1942 = getelementptr %Value, %Value* %1941, i32 0, i32 0
  %1943 = load %nyx_string*, %nyx_string** %1942
  %1944 = getelementptr [6 x i8], [6 x i8]* @.str176, i32 0, i32 0
  %1945 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str176.c, i8* %1944)
  %1946 = call i1 @nyx_string_equals(%nyx_string* %1943, %nyx_string* %1945)
  br i1 %1946, label %then380, label %else381
then380:
  %1947 = load %Value, %Value* %1941
  ret %Value %1947
else381:
  br label %merge382
merge382:
  %1948 = load %nyx_string*, %nyx_string** %1856
  %1949 = getelementptr %Value, %Value* %1929, i32 0, i32 1
  %1950 = load i64, i64* %1949
  %1951 = getelementptr %Value, %Value* %1941, i32 0, i32 1
  %1952 = load i64, i64* %1951
  %1953 = call %nyx_string* @nyx_string_substring(%nyx_string* %1948, i64 %1950, i64 %1952)
  %1954 = call %Value @make_string(%nyx_string* %1953)
  ret %Value %1954
else375:
  br label %merge376
merge376:
  %1955 = load %nyx_string*, %nyx_string** %1834
  %1956 = getelementptr [7 x i8], [7 x i8]* @.str177, i32 0, i32 0
  %1957 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str177.c, i8* %1956)
  %1958 = call i1 @nyx_string_equals(%nyx_string* %1955, %nyx_string* %1957)
  br i1 %1958, label %then383, label %else384
then383:
  %1959 = load { i64, i8* }*, { i64, i8* }** %1838
  %1960 = call i64 @nyx_array_get({ i64, i8* }* %1959, i64 0)
  %1961 = inttoptr i64 %1960 to { i64, i8* }*
  %1962 = load %Environment, %Environment* %env.ptr
  %1963 = call %Value @eval_expr({ i64, i8* }* %1961, %Environment %1962)
  %1964 = alloca %Value
  store %Value %1963, %Value* %1964
  %1965 = getelementptr %Value, %Value* %1964, i32 0, i32 0
  %1966 = load %nyx_string*, %nyx_string** %1965
  %1967 = getelementptr [6 x i8], [6 x i8]* @.str178, i32 0, i32 0
  %1968 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str178.c, i8* %1967)
  %1969 = call i1 @nyx_string_equals(%nyx_string* %1966, %nyx_string* %1968)
  br i1 %1969, label %then386, label %else387
then386:
  %1970 = load %Value, %Value* %1964
  ret %Value %1970
else387:
  br label %merge388
merge388:
  %1971 = load %nyx_string*, %nyx_string** %1856
  %1972 = getelementptr %Value, %Value* %1964, i32 0, i32 1
  %1973 = load i64, i64* %1972
  %1974 = call i8 @nyx_string_char_at(%nyx_string* %1971, i64 %1973)
  %1975 = zext i8 %1974 to i64
  %1976 = trunc i64 %1975 to i8
  %1977 = alloca i8
  store i8 %1976, i8* %1977
  %1978 = load i8, i8* %1977
  %1979 = call %nyx_string* @nyx_string_from_char(i8 %1978)
  %1980 = call %Value @make_string(%nyx_string* %1979)
  ret %Value %1980
else384:
  br label %merge385
merge385:
  %1981 = load %nyx_string*, %nyx_string** %1834
  %1982 = getelementptr [11 x i8], [11 x i8]* @.str179, i32 0, i32 0
  %1983 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str179.c, i8* %1982)
  %1984 = call i1 @nyx_string_equals(%nyx_string* %1981, %nyx_string* %1983)
  br i1 %1984, label %then389, label %else390
then389:
  %1985 = load { i64, i8* }*, { i64, i8* }** %1838
  %1986 = call i64 @nyx_array_get({ i64, i8* }* %1985, i64 0)
  %1987 = inttoptr i64 %1986 to { i64, i8* }*
  %1988 = load %Environment, %Environment* %env.ptr
  %1989 = call %Value @eval_expr({ i64, i8* }* %1987, %Environment %1988)
  %1990 = alloca %Value
  store %Value %1989, %Value* %1990
  %1991 = getelementptr %Value, %Value* %1990, i32 0, i32 0
  %1992 = load %nyx_string*, %nyx_string** %1991
  %1993 = getelementptr [6 x i8], [6 x i8]* @.str180, i32 0, i32 0
  %1994 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str180.c, i8* %1993)
  %1995 = call i1 @nyx_string_equals(%nyx_string* %1992, %nyx_string* %1994)
  br i1 %1995, label %then392, label %else393
then392:
  %1996 = load %Value, %Value* %1990
  ret %Value %1996
else393:
  br label %merge394
merge394:
  %1997 = load %nyx_string*, %nyx_string** %1856
  %1998 = getelementptr %Value, %Value* %1990, i32 0, i32 4
  %1999 = load %nyx_string*, %nyx_string** %1998
  %2000 = call i1 @nyx_string_starts_with(%nyx_string* %1997, %nyx_string* %1999)
  %2001 = call %Value @make_bool(i1 %2000)
  ret %Value %2001
else390:
  br label %merge391
merge391:
  %2002 = load %nyx_string*, %nyx_string** %1834
  %2003 = getelementptr [9 x i8], [9 x i8]* @.str181, i32 0, i32 0
  %2004 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str181.c, i8* %2003)
  %2005 = call i1 @nyx_string_equals(%nyx_string* %2002, %nyx_string* %2004)
  br i1 %2005, label %then395, label %else396
then395:
  %2006 = load { i64, i8* }*, { i64, i8* }** %1838
  %2007 = call i64 @nyx_array_get({ i64, i8* }* %2006, i64 0)
  %2008 = inttoptr i64 %2007 to { i64, i8* }*
  %2009 = load %Environment, %Environment* %env.ptr
  %2010 = call %Value @eval_expr({ i64, i8* }* %2008, %Environment %2009)
  %2011 = alloca %Value
  store %Value %2010, %Value* %2011
  %2012 = getelementptr %Value, %Value* %2011, i32 0, i32 0
  %2013 = load %nyx_string*, %nyx_string** %2012
  %2014 = getelementptr [6 x i8], [6 x i8]* @.str182, i32 0, i32 0
  %2015 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str182.c, i8* %2014)
  %2016 = call i1 @nyx_string_equals(%nyx_string* %2013, %nyx_string* %2015)
  br i1 %2016, label %then398, label %else399
then398:
  %2017 = load %Value, %Value* %2011
  ret %Value %2017
else399:
  br label %merge400
merge400:
  %2018 = load %nyx_string*, %nyx_string** %1856
  %2019 = getelementptr %Value, %Value* %2011, i32 0, i32 4
  %2020 = load %nyx_string*, %nyx_string** %2019
  %2021 = call i1 @nyx_string_ends_with(%nyx_string* %2018, %nyx_string* %2020)
  %2022 = call %Value @make_bool(i1 %2021)
  ret %Value %2022
else396:
  br label %merge397
merge397:
  %2023 = load %nyx_string*, %nyx_string** %1834
  %2024 = getelementptr [8 x i8], [8 x i8]* @.str183, i32 0, i32 0
  %2025 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str183.c, i8* %2024)
  %2026 = call i1 @nyx_string_equals(%nyx_string* %2023, %nyx_string* %2025)
  br i1 %2026, label %then401, label %else402
then401:
  %2027 = load { i64, i8* }*, { i64, i8* }** %1838
  %2028 = call i64 @nyx_array_get({ i64, i8* }* %2027, i64 0)
  %2029 = inttoptr i64 %2028 to { i64, i8* }*
  %2030 = load %Environment, %Environment* %env.ptr
  %2031 = call %Value @eval_expr({ i64, i8* }* %2029, %Environment %2030)
  %2032 = alloca %Value
  store %Value %2031, %Value* %2032
  %2033 = getelementptr %Value, %Value* %2032, i32 0, i32 0
  %2034 = load %nyx_string*, %nyx_string** %2033
  %2035 = getelementptr [6 x i8], [6 x i8]* @.str184, i32 0, i32 0
  %2036 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str184.c, i8* %2035)
  %2037 = call i1 @nyx_string_equals(%nyx_string* %2034, %nyx_string* %2036)
  br i1 %2037, label %then404, label %else405
then404:
  %2038 = load %Value, %Value* %2032
  ret %Value %2038
else405:
  br label %merge406
merge406:
  %2039 = load { i64, i8* }*, { i64, i8* }** %1838
  %2040 = call i64 @nyx_array_get({ i64, i8* }* %2039, i64 1)
  %2041 = inttoptr i64 %2040 to { i64, i8* }*
  %2042 = load %Environment, %Environment* %env.ptr
  %2043 = call %Value @eval_expr({ i64, i8* }* %2041, %Environment %2042)
  %2044 = alloca %Value
  store %Value %2043, %Value* %2044
  %2045 = getelementptr %Value, %Value* %2044, i32 0, i32 0
  %2046 = load %nyx_string*, %nyx_string** %2045
  %2047 = getelementptr [6 x i8], [6 x i8]* @.str185, i32 0, i32 0
  %2048 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str185.c, i8* %2047)
  %2049 = call i1 @nyx_string_equals(%nyx_string* %2046, %nyx_string* %2048)
  br i1 %2049, label %then407, label %else408
then407:
  %2050 = load %Value, %Value* %2044
  ret %Value %2050
else408:
  br label %merge409
merge409:
  %2051 = load %nyx_string*, %nyx_string** %1856
  %2052 = getelementptr %Value, %Value* %2032, i32 0, i32 4
  %2053 = load %nyx_string*, %nyx_string** %2052
  %2054 = getelementptr %Value, %Value* %2044, i32 0, i32 4
  %2055 = load %nyx_string*, %nyx_string** %2054
  %2056 = call %nyx_string* @nyx_string_replace(%nyx_string* %2051, %nyx_string* %2053, %nyx_string* %2055)
  %2057 = call %Value @make_string(%nyx_string* %2056)
  ret %Value %2057
else402:
  br label %merge403
merge403:
  br label %merge349
else348:
  br label %merge349
merge349:
  %2058 = getelementptr %Value, %Value* %1842, i32 0, i32 0
  %2059 = load %nyx_string*, %nyx_string** %2058
  %2060 = getelementptr [6 x i8], [6 x i8]* @.str186, i32 0, i32 0
  %2061 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str186.c, i8* %2060)
  %2062 = call i1 @nyx_string_equals(%nyx_string* %2059, %nyx_string* %2061)
  br i1 %2062, label %then410, label %else411
then410:
  %2063 = getelementptr %Value, %Value* %1842, i32 0, i32 5
  %2064 = load { i64, i8* }*, { i64, i8* }** %2063
  %2065 = alloca { i64, i8* }*
  store { i64, i8* }* %2064, { i64, i8* }** %2065
  %2066 = load %nyx_string*, %nyx_string** %1834
  %2067 = getelementptr [7 x i8], [7 x i8]* @.str187, i32 0, i32 0
  %2068 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str187.c, i8* %2067)
  %2069 = call i1 @nyx_string_equals(%nyx_string* %2066, %nyx_string* %2068)
  br i1 %2069, label %then413, label %else414
then413:
  %2070 = load { i64, i8* }*, { i64, i8* }** %2065
  %2071 = call i64 @nyx_array_length({ i64, i8* }* %2070)
  %2072 = call %Value @make_int(i64 %2071)
  ret %Value %2072
else414:
  br label %merge415
merge415:
  %2073 = load %nyx_string*, %nyx_string** %1834
  %2074 = getelementptr [5 x i8], [5 x i8]* @.str188, i32 0, i32 0
  %2075 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str188.c, i8* %2074)
  %2076 = call i1 @nyx_string_equals(%nyx_string* %2073, %nyx_string* %2075)
  br i1 %2076, label %then416, label %else417
then416:
  %2077 = load { i64, i8* }*, { i64, i8* }** %1838
  %2078 = call i64 @nyx_array_get({ i64, i8* }* %2077, i64 0)
  %2079 = inttoptr i64 %2078 to { i64, i8* }*
  %2080 = load %Environment, %Environment* %env.ptr
  %2081 = call %Value @eval_expr({ i64, i8* }* %2079, %Environment %2080)
  %2082 = alloca %Value
  store %Value %2081, %Value* %2082
  %2083 = getelementptr %Value, %Value* %2082, i32 0, i32 0
  %2084 = load %nyx_string*, %nyx_string** %2083
  %2085 = getelementptr [6 x i8], [6 x i8]* @.str189, i32 0, i32 0
  %2086 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str189.c, i8* %2085)
  %2087 = call i1 @nyx_string_equals(%nyx_string* %2084, %nyx_string* %2086)
  br i1 %2087, label %then419, label %else420
then419:
  %2088 = load %Value, %Value* %2082
  ret %Value %2088
else420:
  br label %merge421
merge421:
  %2089 = load { i64, i8* }*, { i64, i8* }** %2065
  %2090 = load %Value, %Value* %2082
  %2091 = getelementptr %Value, %Value* null, i32 1
  %2092 = ptrtoint %Value* %2091 to i64
  %2093 = call i8* @GC_malloc(i64 %2092)
  %2094 = bitcast i8* %2093 to %Value*
  store %Value %2090, %Value* %2094
  %2095 = ptrtoint %Value* %2094 to i64
  call void @nyx_array_push({ i64, i8* }* %2089, i64 %2095)
  %2096 = call %Value @make_nil()
  ret %Value %2096
else417:
  br label %merge418
merge418:
  %2097 = load %nyx_string*, %nyx_string** %1834
  %2098 = getelementptr [4 x i8], [4 x i8]* @.str190, i32 0, i32 0
  %2099 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str190.c, i8* %2098)
  %2100 = call i1 @nyx_string_equals(%nyx_string* %2097, %nyx_string* %2099)
  br i1 %2100, label %then422, label %else423
then422:
  %2101 = load { i64, i8* }*, { i64, i8* }** %2065
  %2102 = call i64 @nyx_array_pop({ i64, i8* }* %2101)
  %2103 = call %Value @make_nil()
  ret %Value %2103
else423:
  br label %merge424
merge424:
  br label %merge412
else411:
  br label %merge412
merge412:
  %2104 = getelementptr [8 x i8], [8 x i8]* @.str191, i32 0, i32 0
  %2105 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str191.c, i8* %2104)
  %2106 = getelementptr [39 x i8], [39 x i8]* @.str192, i32 0, i32 0
  %2107 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str192.c, i8* %2106)
  %2108 = load %nyx_string*, %nyx_string** %1834
  %2109 = call %nyx_string* @nyx_string_concat(%nyx_string* %2107, %nyx_string* %2108)
  %2110 = getelementptr [17 x i8], [17 x i8]* @.str193, i32 0, i32 0
  %2111 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str193.c, i8* %2110)
  %2112 = call %nyx_string* @nyx_string_concat(%nyx_string* %2109, %nyx_string* %2111)
  %2113 = getelementptr %Value, %Value* %1842, i32 0, i32 0
  %2114 = load %nyx_string*, %nyx_string** %2113
  %2115 = call %nyx_string* @nyx_string_concat(%nyx_string* %2112, %nyx_string* %2114)
  %2116 = getelementptr [42 x i8], [42 x i8]* @.str194, i32 0, i32 0
  %2117 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str194.c, i8* %2116)
  %2118 = load %nyx_string*, %nyx_string** %1834
  %2119 = call %nyx_string* @nyx_string_concat(%nyx_string* %2117, %nyx_string* %2118)
  %2120 = getelementptr [11 x i8], [11 x i8]* @.str195, i32 0, i32 0
  %2121 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str195.c, i8* %2120)
  %2122 = call %nyx_string* @nyx_string_concat(%nyx_string* %2119, %nyx_string* %2121)
  %2123 = getelementptr %Value, %Value* %1842, i32 0, i32 0
  %2124 = load %nyx_string*, %nyx_string** %2123
  %2125 = call %nyx_string* @nyx_string_concat(%nyx_string* %2122, %nyx_string* %2124)
  %2126 = call i64 @interp_err(%nyx_string* %2105, %nyx_string* %2115, %nyx_string* %2125)
  %2127 = getelementptr [9 x i8], [9 x i8]* @.str196, i32 0, i32 0
  %2128 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str196.c, i8* %2127)
  %2129 = call i8* @nyx_string_to_cstr(%nyx_string* %2128)
  %2130 = call %nyx_string* @nyx_getenv(i8* %2129)
  %2131 = alloca %nyx_string*
  store %nyx_string* %2130, %nyx_string** %2131
  %2132 = load %nyx_string*, %nyx_string** %2131
  %2133 = getelementptr [3 x i8], [3 x i8]* @.str197, i32 0, i32 0
  %2134 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str197.c, i8* %2133)
  %2135 = call i1 @nyx_string_equals(%nyx_string* %2132, %nyx_string* %2134)
  br i1 %2135, label %then425, label %else426
then425:
  %2136 = getelementptr [85 x i8], [85 x i8]* @.str198, i32 0, i32 0
  %2137 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str198.c, i8* %2136)
  %2138 = call i8* @nyx_string_to_cstr(%nyx_string* %2137)
  call void @nyx_print_string(i8* %2138)
  %2139 = getelementptr [85 x i8], [85 x i8]* @.str199, i32 0, i32 0
  %2140 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str199.c, i8* %2139)
  %2141 = call i8* @nyx_string_to_cstr(%nyx_string* %2140)
  call void @nyx_print_string(i8* %2141)
  br label %merge427
else426:
  %2142 = getelementptr [79 x i8], [79 x i8]* @.str200, i32 0, i32 0
  %2143 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str200.c, i8* %2142)
  %2144 = call i8* @nyx_string_to_cstr(%nyx_string* %2143)
  call void @nyx_print_string(i8* %2144)
  %2145 = getelementptr [84 x i8], [84 x i8]* @.str201, i32 0, i32 0
  %2146 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str201.c, i8* %2145)
  %2147 = call i8* @nyx_string_to_cstr(%nyx_string* %2146)
  call void @nyx_print_string(i8* %2147)
  br label %merge427
merge427:
  %2148 = call %Value @make_error()
  ret %Value %2148
}

define internal %Value @eval_call(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %2149 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %2150 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %2149)
  %2151 = alloca { i64, i8* }*
  store { i64, i8* }* %2150, { i64, i8* }** %2151
  %2152 = load { i64, i8* }*, { i64, i8* }** %2151
  %2153 = call i64 @nyx_array_get({ i64, i8* }* %2152, i64 0)
  %2154 = inttoptr i64 %2153 to { i64, i8* }*
  %2155 = alloca { i64, i8* }*
  store { i64, i8* }* %2154, { i64, i8* }** %2155
  %2156 = load { i64, i8* }*, { i64, i8* }** %2151
  %2157 = call i64 @nyx_array_get({ i64, i8* }* %2156, i64 1)
  %2158 = inttoptr i64 %2157 to { i64, i8* }*
  %2159 = alloca { i64, i8* }*
  store { i64, i8* }* %2158, { i64, i8* }** %2159
  %2160 = load { i64, i8* }*, { i64, i8* }** %2155
  %2161 = call i64 @nyx_array_get({ i64, i8* }* %2160, i64 1)
  %2162 = inttoptr i64 %2161 to { i64, i8* }*
  %2163 = alloca { i64, i8* }*
  store { i64, i8* }* %2162, { i64, i8* }** %2163
  %2164 = load { i64, i8* }*, { i64, i8* }** %2163
  %2165 = call i64 @nyx_array_get_checked({ i64, i8* }* %2164, i64 0, i64 2)
  %2166 = inttoptr i64 %2165 to %nyx_string*
  %2167 = alloca %nyx_string*
  store %nyx_string* %2166, %nyx_string** %2167
  %2168 = load %nyx_string*, %nyx_string** %2167
  %2169 = getelementptr [6 x i8], [6 x i8]* @.str202, i32 0, i32 0
  %2170 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str202.c, i8* %2169)
  %2171 = call i1 @nyx_string_equals(%nyx_string* %2168, %nyx_string* %2170)
  br i1 %2171, label %then428, label %else429
then428:
  %2172 = load { i64, i8* }*, { i64, i8* }** %2159
  %2173 = load %Environment, %Environment* %env.ptr
  %2174 = call %Value @eval_builtin_print({ i64, i8* }* %2172, %Environment %2173)
  ret %Value %2174
else429:
  br label %merge430
merge430:
  %2175 = load %nyx_string*, %nyx_string** %2167
  %2176 = getelementptr [10 x i8], [10 x i8]* @.str203, i32 0, i32 0
  %2177 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str203.c, i8* %2176)
  %2178 = call i1 @nyx_string_equals(%nyx_string* %2175, %nyx_string* %2177)
  br i1 %2178, label %then431, label %else432
then431:
  %2179 = load { i64, i8* }*, { i64, i8* }** %2159
  %2180 = load %Environment, %Environment* %env.ptr
  %2181 = call %Value @eval_builtin_read_file({ i64, i8* }* %2179, %Environment %2180)
  ret %Value %2181
else432:
  br label %merge433
merge433:
  %2182 = load %nyx_string*, %nyx_string** %2167
  %2183 = getelementptr [10 x i8], [10 x i8]* @.str204, i32 0, i32 0
  %2184 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str204.c, i8* %2183)
  %2185 = call i1 @nyx_string_equals(%nyx_string* %2182, %nyx_string* %2184)
  br i1 %2185, label %then434, label %else435
then434:
  %2186 = load { i64, i8* }*, { i64, i8* }** %2159
  %2187 = load %Environment, %Environment* %env.ptr
  %2188 = call %Value @eval_builtin_read_line({ i64, i8* }* %2186, %Environment %2187)
  ret %Value %2188
else435:
  br label %merge436
merge436:
  %2189 = load %nyx_string*, %nyx_string** %2167
  %2190 = getelementptr [17 x i8], [17 x i8]* @.str205, i32 0, i32 0
  %2191 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str205.c, i8* %2190)
  %2192 = call i1 @nyx_string_equals(%nyx_string* %2189, %nyx_string* %2191)
  br i1 %2192, label %then437, label %else438
then437:
  %2193 = load { i64, i8* }*, { i64, i8* }** %2159
  %2194 = load %Environment, %Environment* %env.ptr
  %2195 = call %Value @eval_builtin_print_no_newline({ i64, i8* }* %2193, %Environment %2194)
  ret %Value %2195
else438:
  br label %merge439
merge439:
  %2196 = load %Environment, %Environment* %env.ptr
  %2197 = load %nyx_string*, %nyx_string** %2167
  %2198 = call i1 @env_has(%Environment %2196, %nyx_string* %2197)
  %2199 = xor i1 %2198, true
  br i1 %2199, label %then440, label %else441
then440:
  %2200 = getelementptr [8 x i8], [8 x i8]* @.str206, i32 0, i32 0
  %2201 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str206.c, i8* %2200)
  %2202 = getelementptr [23 x i8], [23 x i8]* @.str207, i32 0, i32 0
  %2203 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str207.c, i8* %2202)
  %2204 = load %nyx_string*, %nyx_string** %2167
  %2205 = call %nyx_string* @nyx_string_concat(%nyx_string* %2203, %nyx_string* %2204)
  %2206 = getelementptr [21 x i8], [21 x i8]* @.str208, i32 0, i32 0
  %2207 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str208.c, i8* %2206)
  %2208 = load %nyx_string*, %nyx_string** %2167
  %2209 = call %nyx_string* @nyx_string_concat(%nyx_string* %2207, %nyx_string* %2208)
  %2210 = call i64 @interp_err(%nyx_string* %2201, %nyx_string* %2205, %nyx_string* %2209)
  %2211 = call %Value @make_error()
  ret %Value %2211
else441:
  br label %merge442
merge442:
  %2212 = load %Environment, %Environment* %env.ptr
  %2213 = load %nyx_string*, %nyx_string** %2167
  %2214 = call %Value @env_get(%Environment %2212, %nyx_string* %2213)
  %2215 = alloca %Value
  store %Value %2214, %Value* %2215
  %2216 = getelementptr %Value, %Value* %2215, i32 0, i32 0
  %2217 = load %nyx_string*, %nyx_string** %2216
  %2218 = getelementptr [9 x i8], [9 x i8]* @.str209, i32 0, i32 0
  %2219 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str209.c, i8* %2218)
  %2220 = call i1 @nyx_string_equals(%nyx_string* %2217, %nyx_string* %2219)
  %2221 = xor i1 %2220, true
  br i1 %2221, label %then443, label %else444
then443:
  %2222 = getelementptr [8 x i8], [8 x i8]* @.str210, i32 0, i32 0
  %2223 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str210.c, i8* %2222)
  %2224 = getelementptr [2 x i8], [2 x i8]* @.str211, i32 0, i32 0
  %2225 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str211.c, i8* %2224)
  %2226 = load %nyx_string*, %nyx_string** %2167
  %2227 = call %nyx_string* @nyx_string_concat(%nyx_string* %2225, %nyx_string* %2226)
  %2228 = getelementptr [21 x i8], [21 x i8]* @.str212, i32 0, i32 0
  %2229 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str212.c, i8* %2228)
  %2230 = call %nyx_string* @nyx_string_concat(%nyx_string* %2227, %nyx_string* %2229)
  %2231 = getelementptr [2 x i8], [2 x i8]* @.str213, i32 0, i32 0
  %2232 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str213.c, i8* %2231)
  %2233 = load %nyx_string*, %nyx_string** %2167
  %2234 = call %nyx_string* @nyx_string_concat(%nyx_string* %2232, %nyx_string* %2233)
  %2235 = getelementptr [20 x i8], [20 x i8]* @.str214, i32 0, i32 0
  %2236 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str214.c, i8* %2235)
  %2237 = call %nyx_string* @nyx_string_concat(%nyx_string* %2234, %nyx_string* %2236)
  %2238 = call i64 @interp_err(%nyx_string* %2223, %nyx_string* %2230, %nyx_string* %2237)
  %2239 = call %Value @make_error()
  ret %Value %2239
else444:
  br label %merge445
merge445:
  %2240 = load %Value, %Value* %2215
  %2241 = call { i64, i8* }* @get_func_params(%Value %2240)
  %2242 = alloca { i64, i8* }*
  store { i64, i8* }* %2241, { i64, i8* }** %2242
  %2243 = load %Value, %Value* %2215
  %2244 = call %nyx_string* @get_func_body_type(%Value %2243)
  %2245 = alloca %nyx_string*
  store %nyx_string* %2244, %nyx_string** %2245
  %2246 = load %Value, %Value* %2215
  %2247 = call { i64, i8* }* @get_func_body_data(%Value %2246)
  %2248 = alloca { i64, i8* }*
  store { i64, i8* }* %2247, { i64, i8* }** %2248
  %2249 = load %nyx_string*, %nyx_string** %2245
  %2250 = load { i64, i8* }*, { i64, i8* }** %2248
  %2251 = call { i64, i8* }* @make_astnode(%nyx_string* %2249, { i64, i8* }* %2250)
  %2252 = alloca { i64, i8* }*
  store { i64, i8* }* %2251, { i64, i8* }** %2252
  %2253 = load %Value, %Value* %2215
  %2254 = call i8* @get_func_env_bindings(%Value %2253)
  %2255 = alloca i8*
  store i8* %2254, i8** %2255
  %2256 = load %Value, %Value* %2215
  %2257 = call { i64, i8* }* @get_func_env_parent(%Value %2256)
  %2258 = alloca { i64, i8* }*
  store { i64, i8* }* %2257, { i64, i8* }** %2258
  %2259 = getelementptr %Environment, %Environment* null, i32 1
  %2260 = ptrtoint %Environment* %2259 to i64
  %2261 = call i8* @GC_malloc(i64 %2260)
  %2262 = bitcast i8* %2261 to %Environment*
  %2263 = load i8*, i8** %2255
  %2264 = getelementptr %Environment, %Environment* %2262, i32 0, i32 0
  store i8* %2263, i8** %2264
  %2265 = load { i64, i8* }*, { i64, i8* }** %2258
  %2266 = getelementptr %Environment, %Environment* %2262, i32 0, i32 1
  store { i64, i8* }* %2265, { i64, i8* }** %2266
  %2267 = load %Environment, %Environment* %2262
  %2268 = alloca %Environment
  store %Environment %2267, %Environment* %2268
  %2269 = load %Environment, %Environment* %2268
  %2270 = call %Environment @make_child_env(%Environment %2269)
  %2271 = alloca %Environment
  store %Environment %2270, %Environment* %2271
  %2272 = load { i64, i8* }*, { i64, i8* }** %2159
  %2273 = call i64 @nyx_array_length({ i64, i8* }* %2272)
  %2274 = load { i64, i8* }*, { i64, i8* }** %2242
  %2275 = call i64 @nyx_array_length({ i64, i8* }* %2274)
  %2276 = icmp ne i64 %2273, %2275
  br i1 %2276, label %then446, label %else447
then446:
  %2277 = getelementptr [8 x i8], [8 x i8]* @.str215, i32 0, i32 0
  %2278 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str215.c, i8* %2277)
  %2279 = getelementptr [2 x i8], [2 x i8]* @.str216, i32 0, i32 0
  %2280 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str216.c, i8* %2279)
  %2281 = load %nyx_string*, %nyx_string** %2167
  %2282 = call %nyx_string* @nyx_string_concat(%nyx_string* %2280, %nyx_string* %2281)
  %2283 = getelementptr [10 x i8], [10 x i8]* @.str217, i32 0, i32 0
  %2284 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str217.c, i8* %2283)
  %2285 = call %nyx_string* @nyx_string_concat(%nyx_string* %2282, %nyx_string* %2284)
  %2286 = load { i64, i8* }*, { i64, i8* }** %2242
  %2287 = call i64 @nyx_array_length({ i64, i8* }* %2286)
  %2288 = call %nyx_string* @nyx_string_from_int(i64 %2287)
  %2289 = call %nyx_string* @nyx_string_concat(%nyx_string* %2285, %nyx_string* %2288)
  %2290 = getelementptr [25 x i8], [25 x i8]* @.str218, i32 0, i32 0
  %2291 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str218.c, i8* %2290)
  %2292 = call %nyx_string* @nyx_string_concat(%nyx_string* %2289, %nyx_string* %2291)
  %2293 = load { i64, i8* }*, { i64, i8* }** %2159
  %2294 = call i64 @nyx_array_length({ i64, i8* }* %2293)
  %2295 = call %nyx_string* @nyx_string_from_int(i64 %2294)
  %2296 = call %nyx_string* @nyx_string_concat(%nyx_string* %2292, %nyx_string* %2295)
  %2297 = getelementptr [2 x i8], [2 x i8]* @.str219, i32 0, i32 0
  %2298 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str219.c, i8* %2297)
  %2299 = load %nyx_string*, %nyx_string** %2167
  %2300 = call %nyx_string* @nyx_string_concat(%nyx_string* %2298, %nyx_string* %2299)
  %2301 = getelementptr [11 x i8], [11 x i8]* @.str220, i32 0, i32 0
  %2302 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str220.c, i8* %2301)
  %2303 = call %nyx_string* @nyx_string_concat(%nyx_string* %2300, %nyx_string* %2302)
  %2304 = load { i64, i8* }*, { i64, i8* }** %2242
  %2305 = call i64 @nyx_array_length({ i64, i8* }* %2304)
  %2306 = call %nyx_string* @nyx_string_from_int(i64 %2305)
  %2307 = call %nyx_string* @nyx_string_concat(%nyx_string* %2303, %nyx_string* %2306)
  %2308 = getelementptr [19 x i8], [19 x i8]* @.str221, i32 0, i32 0
  %2309 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str221.c, i8* %2308)
  %2310 = call %nyx_string* @nyx_string_concat(%nyx_string* %2307, %nyx_string* %2309)
  %2311 = load { i64, i8* }*, { i64, i8* }** %2159
  %2312 = call i64 @nyx_array_length({ i64, i8* }* %2311)
  %2313 = call %nyx_string* @nyx_string_from_int(i64 %2312)
  %2314 = call %nyx_string* @nyx_string_concat(%nyx_string* %2310, %nyx_string* %2313)
  %2315 = call i64 @interp_err(%nyx_string* %2278, %nyx_string* %2296, %nyx_string* %2314)
  %2316 = call %Value @make_error()
  ret %Value %2316
else447:
  br label %merge448
merge448:
  %2317 = alloca i64
  store i64 0, i64* %2317
  %2318 = getelementptr [6 x i8], [6 x i8]* @.str222, i32 0, i32 0
  %2319 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str222.c, i8* %2318)
  %2320 = alloca %nyx_string*
  store %nyx_string* %2319, %nyx_string** %2320
  %2321 = call i8* @llvm.stacksave()
  br label %while_cond449
while_cond449:
  %2322 = load i64, i64* %2317
  %2323 = load { i64, i8* }*, { i64, i8* }** %2242
  %2324 = call i64 @nyx_array_length({ i64, i8* }* %2323)
  %2325 = icmp slt i64 %2322, %2324
  br i1 %2325, label %while_body450, label %while_end451
while_body450:
  call void @llvm.stackrestore(i8* %2321)
  %2326 = load { i64, i8* }*, { i64, i8* }** %2242
  %2327 = load i64, i64* %2317
  %2328 = call i64 @nyx_array_get({ i64, i8* }* %2326, i64 %2327)
  %2329 = inttoptr i64 %2328 to { i64, i8* }*
  %2330 = alloca { i64, i8* }*
  store { i64, i8* }* %2329, { i64, i8* }** %2330
  %2331 = load { i64, i8* }*, { i64, i8* }** %2330
  %2332 = call i64 @nyx_array_get_checked({ i64, i8* }* %2331, i64 0, i64 2)
  %2333 = inttoptr i64 %2332 to %nyx_string*
  %2334 = alloca %nyx_string*
  store %nyx_string* %2333, %nyx_string** %2334
  %2335 = load { i64, i8* }*, { i64, i8* }** %2159
  %2336 = load i64, i64* %2317
  %2337 = call i64 @nyx_array_get({ i64, i8* }* %2335, i64 %2336)
  %2338 = inttoptr i64 %2337 to { i64, i8* }*
  %2339 = alloca { i64, i8* }*
  store { i64, i8* }* %2338, { i64, i8* }** %2339
  %2340 = load { i64, i8* }*, { i64, i8* }** %2339
  %2341 = load %Environment, %Environment* %env.ptr
  %2342 = call %Value @eval_expr({ i64, i8* }* %2340, %Environment %2341)
  %2343 = alloca %Value
  store %Value %2342, %Value* %2343
  %2344 = getelementptr %Value, %Value* %2343, i32 0, i32 0
  %2345 = load %nyx_string*, %nyx_string** %2344
  %2346 = load %nyx_string*, %nyx_string** %2320
  %2347 = call i1 @nyx_string_equals(%nyx_string* %2345, %nyx_string* %2346)
  br i1 %2347, label %then452, label %else453
then452:
  %2348 = load %Value, %Value* %2343
  ret %Value %2348
else453:
  br label %merge454
merge454:
  %2349 = load %Environment, %Environment* %2271
  %2350 = load %nyx_string*, %nyx_string** %2334
  %2351 = load %Value, %Value* %2343
  %2352 = call i64 @env_define(%Environment %2349, %nyx_string* %2350, %Value %2351)
  %2353 = load i64, i64* %2317
  %2354 = add i64 %2353, 1
  store i64 %2354, i64* %2317
  br label %while_cond449
while_end451:
  %2355 = load { i64, i8* }*, { i64, i8* }** %2252
  %2356 = load %Environment, %Environment* %2271
  %2357 = call %Value @eval_stmt({ i64, i8* }* %2355, %Environment %2356)
  %2358 = alloca %Value
  store %Value %2357, %Value* %2358
  %2359 = getelementptr %Value, %Value* %2358, i32 0, i32 0
  %2360 = load %nyx_string*, %nyx_string** %2359
  %2361 = getelementptr [7 x i8], [7 x i8]* @.str223, i32 0, i32 0
  %2362 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str223.c, i8* %2361)
  %2363 = call i1 @nyx_string_equals(%nyx_string* %2360, %nyx_string* %2362)
  br i1 %2363, label %then455, label %else456
then455:
  %2364 = load %Value, %Value* %2358
  %2365 = call %Value @unwrap_return_value(%Value %2364)
  ret %Value %2365
else456:
  br label %merge457
merge457:
  %2366 = load %Value, %Value* %2358
  ret %Value %2366
}

define internal %Value @eval_builtin_print(
{ i64, i8* }* %args.param, %Environment %env.param) {
  %args.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %args.param, { i64, i8* }** %args.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %2367 = alloca i64
  store i64 0, i64* %2367
  %2368 = getelementptr [6 x i8], [6 x i8]* @.str224, i32 0, i32 0
  %2369 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str224.c, i8* %2368)
  %2370 = alloca %nyx_string*
  store %nyx_string* %2369, %nyx_string** %2370
  %2371 = call i8* @llvm.stacksave()
  br label %while_cond458
while_cond458:
  %2372 = load i64, i64* %2367
  %2373 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %2374 = call i64 @nyx_array_length({ i64, i8* }* %2373)
  %2375 = icmp slt i64 %2372, %2374
  br i1 %2375, label %while_body459, label %while_end460
while_body459:
  call void @llvm.stackrestore(i8* %2371)
  %2376 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %2377 = load i64, i64* %2367
  %2378 = call i64 @nyx_array_get({ i64, i8* }* %2376, i64 %2377)
  %2379 = inttoptr i64 %2378 to { i64, i8* }*
  %2380 = alloca { i64, i8* }*
  store { i64, i8* }* %2379, { i64, i8* }** %2380
  %2381 = load { i64, i8* }*, { i64, i8* }** %2380
  %2382 = load %Environment, %Environment* %env.ptr
  %2383 = call %Value @eval_expr({ i64, i8* }* %2381, %Environment %2382)
  %2384 = alloca %Value
  store %Value %2383, %Value* %2384
  %2385 = getelementptr %Value, %Value* %2384, i32 0, i32 0
  %2386 = load %nyx_string*, %nyx_string** %2385
  %2387 = load %nyx_string*, %nyx_string** %2370
  %2388 = call i1 @nyx_string_equals(%nyx_string* %2386, %nyx_string* %2387)
  br i1 %2388, label %then461, label %else462
then461:
  %2389 = load %Value, %Value* %2384
  ret %Value %2389
else462:
  br label %merge463
merge463:
  %2390 = load %Value, %Value* %2384
  %2391 = call i64 @print_value(%Value %2390)
  %2392 = load i64, i64* %2367
  %2393 = add i64 %2392, 1
  store i64 %2393, i64* %2367
  br label %while_cond458
while_end460:
  %2394 = call %Value @make_nil()
  ret %Value %2394
}

define internal %Value @eval_builtin_read_line(
{ i64, i8* }* %args.param, %Environment %env.param) {
  %args.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %args.param, { i64, i8* }** %args.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %2395 = call %nyx_string* @nyx_read_line()
  %2396 = alloca %nyx_string*
  store %nyx_string* %2395, %nyx_string** %2396
  %2397 = load %nyx_string*, %nyx_string** %2396
  %2398 = call %Value @make_string(%nyx_string* %2397)
  ret %Value %2398
}

define internal %Value @eval_builtin_print_no_newline(
{ i64, i8* }* %args.param, %Environment %env.param) {
  %args.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %args.param, { i64, i8* }** %args.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %2399 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %2400 = call i64 @nyx_array_length({ i64, i8* }* %2399)
  %2401 = icmp sgt i64 %2400, 0
  br i1 %2401, label %then464, label %else465
then464:
  %2402 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %2403 = call i64 @nyx_array_get({ i64, i8* }* %2402, i64 0)
  %2404 = inttoptr i64 %2403 to { i64, i8* }*
  %2405 = alloca { i64, i8* }*
  store { i64, i8* }* %2404, { i64, i8* }** %2405
  %2406 = load { i64, i8* }*, { i64, i8* }** %2405
  %2407 = load %Environment, %Environment* %env.ptr
  %2408 = call %Value @eval_expr({ i64, i8* }* %2406, %Environment %2407)
  %2409 = alloca %Value
  store %Value %2408, %Value* %2409
  %2410 = getelementptr %Value, %Value* %2409, i32 0, i32 0
  %2411 = load %nyx_string*, %nyx_string** %2410
  %2412 = getelementptr [6 x i8], [6 x i8]* @.str225, i32 0, i32 0
  %2413 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str225.c, i8* %2412)
  %2414 = call i1 @nyx_string_equals(%nyx_string* %2411, %nyx_string* %2413)
  br i1 %2414, label %then467, label %else468
then467:
  %2415 = load %Value, %Value* %2409
  ret %Value %2415
else468:
  br label %merge469
merge469:
  %2416 = load %Value, %Value* %2409
  %2417 = call %nyx_string* @value_to_string(%Value %2416)
  call void @nyx_print_no_newline(%nyx_string* %2417)
  br label %merge466
else465:
  br label %merge466
merge466:
  %2418 = call %Value @make_nil()
  ret %Value %2418
}

define internal %Value @eval_builtin_read_file(
{ i64, i8* }* %args.param, %Environment %env.param) {
  %args.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %args.param, { i64, i8* }** %args.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %2419 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %2420 = call i64 @nyx_array_length({ i64, i8* }* %2419)
  %2421 = icmp sgt i64 %2420, 0
  br i1 %2421, label %then470, label %else471
then470:
  %2422 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %2423 = call i64 @nyx_array_get({ i64, i8* }* %2422, i64 0)
  %2424 = inttoptr i64 %2423 to { i64, i8* }*
  %2425 = load %Environment, %Environment* %env.ptr
  %2426 = call %Value @eval_expr({ i64, i8* }* %2424, %Environment %2425)
  %2427 = alloca %Value
  store %Value %2426, %Value* %2427
  %2428 = load %Value, %Value* %2427
  %2429 = call %nyx_string* @value_to_string(%Value %2428)
  %2430 = alloca %nyx_string*
  store %nyx_string* %2429, %nyx_string** %2430
  %2431 = load %nyx_string*, %nyx_string** %2430
  %2432 = call i8* @nyx_string_to_cstr(%nyx_string* %2431)
  %2433 = call %nyx_string* @nyx_read_file(i8* %2432)
  %2434 = alloca %nyx_string*
  store %nyx_string* %2433, %nyx_string** %2434
  %2435 = load %nyx_string*, %nyx_string** %2434
  %2436 = call %Value @make_string(%nyx_string* %2435)
  ret %Value %2436
else471:
  br label %merge472
merge472:
  %2437 = call %Value @make_nil()
  ret %Value %2437
}

define %Environment @repl_make_env(
) {
  %2438 = call %Environment @make_env()
  ret %Environment %2438
}

define %nyx_string* @repl_eval(
{ i64, i8* }* %ast.param, %Environment %env.param) {
  %ast.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %ast.param, { i64, i8* }** %ast.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %2439 = load { i64, i8* }*, { i64, i8* }** %ast.ptr
  %2440 = call i64 @nyx_array_get({ i64, i8* }* %2439, i64 1)
  %2441 = inttoptr i64 %2440 to { i64, i8* }*
  %2442 = alloca { i64, i8* }*
  store { i64, i8* }* %2441, { i64, i8* }** %2442
  %2443 = load { i64, i8* }*, { i64, i8* }** %2442
  %2444 = call i64 @nyx_array_get({ i64, i8* }* %2443, i64 0)
  %2445 = inttoptr i64 %2444 to { i64, i8* }*
  %2446 = alloca { i64, i8* }*
  store { i64, i8* }* %2445, { i64, i8* }** %2446
  %2447 = getelementptr [1 x i8], [1 x i8]* @.str226, i32 0, i32 0
  %2448 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str226.c, i8* %2447)
  %2449 = alloca %nyx_string*
  store %nyx_string* %2448, %nyx_string** %2449
  %2450 = alloca i64
  store i64 0, i64* %2450
  %2451 = call i8* @llvm.stacksave()
  br label %while_cond473
while_cond473:
  %2452 = load i64, i64* %2450
  %2453 = load { i64, i8* }*, { i64, i8* }** %2446
  %2454 = call i64 @nyx_array_length({ i64, i8* }* %2453)
  %2455 = icmp slt i64 %2452, %2454
  br i1 %2455, label %while_body474, label %while_end475
while_body474:
  call void @llvm.stackrestore(i8* %2451)
  %2456 = load { i64, i8* }*, { i64, i8* }** %2446
  %2457 = load i64, i64* %2450
  %2458 = call i64 @nyx_array_get({ i64, i8* }* %2456, i64 %2457)
  %2459 = inttoptr i64 %2458 to { i64, i8* }*
  %2460 = alloca { i64, i8* }*
  store { i64, i8* }* %2459, { i64, i8* }** %2460
  %2461 = load { i64, i8* }*, { i64, i8* }** %2460
  %2462 = load %Environment, %Environment* %env.ptr
  %2463 = call %Value @eval_stmt({ i64, i8* }* %2461, %Environment %2462)
  %2464 = alloca %Value
  store %Value %2463, %Value* %2464
  %2465 = getelementptr %Value, %Value* %2464, i32 0, i32 0
  %2466 = load %nyx_string*, %nyx_string** %2465
  %2467 = getelementptr [6 x i8], [6 x i8]* @.str227, i32 0, i32 0
  %2468 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str227.c, i8* %2467)
  %2469 = call i1 @nyx_string_equals(%nyx_string* %2466, %nyx_string* %2468)
  br i1 %2469, label %then476, label %else477
then476:
  %2470 = getelementptr [1 x i8], [1 x i8]* @.str228, i32 0, i32 0
  %2471 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str228.c, i8* %2470)
  ret %nyx_string* %2471
else477:
  br label %merge478
merge478:
  %2472 = alloca i1
  store i1 false, i1* %2472
  %2473 = getelementptr %Value, %Value* %2464, i32 0, i32 0
  %2474 = load %nyx_string*, %nyx_string** %2473
  %2475 = getelementptr [4 x i8], [4 x i8]* @.str229, i32 0, i32 0
  %2476 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str229.c, i8* %2475)
  %2477 = call i1 @nyx_string_equals(%nyx_string* %2474, %nyx_string* %2476)
  %2478 = xor i1 %2477, true
  br i1 %2478, label %sc_and_rhs479, label %sc_and_end480
sc_and_rhs479:
  %2479 = getelementptr %Value, %Value* %2464, i32 0, i32 0
  %2480 = load %nyx_string*, %nyx_string** %2479
  %2481 = getelementptr [7 x i8], [7 x i8]* @.str230, i32 0, i32 0
  %2482 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str230.c, i8* %2481)
  %2483 = call i1 @nyx_string_equals(%nyx_string* %2480, %nyx_string* %2482)
  %2484 = xor i1 %2483, true
  store i1 %2484, i1* %2472
  br label %sc_and_end480
sc_and_end480:
  %2485 = load i1, i1* %2472
  br i1 %2485, label %then481, label %else482
then481:
  %2486 = getelementptr [4 x i8], [4 x i8]* @.str231, i32 0, i32 0
  %2487 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str231.c, i8* %2486)
  %2488 = load %Value, %Value* %2464
  %2489 = call %nyx_string* @value_to_string(%Value %2488)
  %2490 = call %nyx_string* @nyx_string_concat(%nyx_string* %2487, %nyx_string* %2489)
  store %nyx_string* %2490, %nyx_string** %2449
  br label %merge483
else482:
  br label %merge483
merge483:
  %2491 = load i64, i64* %2450
  %2492 = add i64 %2491, 1
  store i64 %2492, i64* %2450
  br label %while_cond473
while_end475:
  %2493 = load %nyx_string*, %nyx_string** %2449
  ret %nyx_string* %2493
}

define i8* @repl_make_map(
) {
  %2494 = call i8* @nyx_map_new(i32 0)
  ret i8* %2494
}

define %nyx_string* @repl_eval_with_map(
{ i64, i8* }* %ast.param, i8* %env_map.param) {
  %ast.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %ast.param, { i64, i8* }** %ast.ptr
  %env_map.ptr = alloca i8*
  store i8* %env_map.param, i8** %env_map.ptr
  %2495 = getelementptr %Environment, %Environment* null, i32 1
  %2496 = ptrtoint %Environment* %2495 to i64
  %2497 = call i8* @GC_malloc(i64 %2496)
  %2498 = bitcast i8* %2497 to %Environment*
  %2499 = load i8*, i8** %env_map.ptr
  %2500 = getelementptr %Environment, %Environment* %2498, i32 0, i32 0
  store i8* %2499, i8** %2500
  %2501 = call { i64, i8* }* @nyx_array_new_ptr()
  %2502 = getelementptr %Environment, %Environment* %2498, i32 0, i32 1
  store { i64, i8* }* %2501, { i64, i8* }** %2502
  %2503 = load %Environment, %Environment* %2498
  %2504 = alloca %Environment
  store %Environment %2503, %Environment* %2504
  %2505 = load { i64, i8* }*, { i64, i8* }** %ast.ptr
  %2506 = load %Environment, %Environment* %2504
  %2507 = call %nyx_string* @repl_eval({ i64, i8* }* %2505, %Environment %2506)
  ret %nyx_string* %2507
}

define %Value @interpret(
{ i64, i8* }* %ast.param) {
  %ast.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %ast.param, { i64, i8* }** %ast.ptr
  %2508 = call %Environment @make_env()
  %2509 = alloca %Environment
  store %Environment %2508, %Environment* %2509
  %2510 = load { i64, i8* }*, { i64, i8* }** %ast.ptr
  %2511 = call %nyx_string* @astnode_get_type({ i64, i8* }* %2510)
  %2512 = alloca %nyx_string*
  store %nyx_string* %2511, %nyx_string** %2512
  %2513 = load %nyx_string*, %nyx_string** %2512
  %2514 = getelementptr [6 x i8], [6 x i8]* @.str232, i32 0, i32 0
  %2515 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str232.c, i8* %2514)
  %2516 = call i1 @nyx_string_equals(%nyx_string* %2513, %nyx_string* %2515)
  br i1 %2516, label %then484, label %else485
then484:
  %2517 = load { i64, i8* }*, { i64, i8* }** %ast.ptr
  %2518 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %2517)
  %2519 = alloca { i64, i8* }*
  store { i64, i8* }* %2518, { i64, i8* }** %2519
  %2520 = load { i64, i8* }*, { i64, i8* }** %2519
  %2521 = call i64 @nyx_array_get({ i64, i8* }* %2520, i64 0)
  %2522 = inttoptr i64 %2521 to { i64, i8* }*
  %2523 = alloca { i64, i8* }*
  store { i64, i8* }* %2522, { i64, i8* }** %2523
  %2524 = alloca i64
  store i64 0, i64* %2524
  %2525 = call i8* @llvm.stacksave()
  br label %while_cond487
while_cond487:
  %2526 = load i64, i64* %2524
  %2527 = load { i64, i8* }*, { i64, i8* }** %2523
  %2528 = call i64 @nyx_array_length({ i64, i8* }* %2527)
  %2529 = icmp slt i64 %2526, %2528
  br i1 %2529, label %while_body488, label %while_end489
while_body488:
  call void @llvm.stackrestore(i8* %2525)
  %2530 = load { i64, i8* }*, { i64, i8* }** %2523
  %2531 = load i64, i64* %2524
  %2532 = call i64 @nyx_array_get({ i64, i8* }* %2530, i64 %2531)
  %2533 = inttoptr i64 %2532 to { i64, i8* }*
  %2534 = alloca { i64, i8* }*
  store { i64, i8* }* %2533, { i64, i8* }** %2534
  %2535 = load { i64, i8* }*, { i64, i8* }** %2534
  %2536 = load %Environment, %Environment* %2509
  %2537 = call %Value @eval_stmt({ i64, i8* }* %2535, %Environment %2536)
  %2538 = alloca %Value
  store %Value %2537, %Value* %2538
  %2539 = getelementptr %Value, %Value* %2538, i32 0, i32 0
  %2540 = load %nyx_string*, %nyx_string** %2539
  %2541 = getelementptr [6 x i8], [6 x i8]* @.str233, i32 0, i32 0
  %2542 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str233.c, i8* %2541)
  %2543 = call i1 @nyx_string_equals(%nyx_string* %2540, %nyx_string* %2542)
  br i1 %2543, label %then490, label %else491
then490:
  %2544 = load %Value, %Value* %2538
  ret %Value %2544
else491:
  br label %merge492
merge492:
  %2545 = load i64, i64* %2524
  %2546 = add i64 %2545, 1
  store i64 %2546, i64* %2524
  br label %while_cond487
while_end489:
  %2547 = getelementptr %Environment, %Environment* %2509, i32 0, i32 0
  %2548 = load i8*, i8** %2547
  %2549 = alloca i8*
  store i8* %2548, i8** %2549
  %2550 = load i8*, i8** %2549
  %2551 = getelementptr [5 x i8], [5 x i8]* @.str234, i32 0, i32 0
  %2552 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str234.c, i8* %2551)
  %2553 = call i8* @nyx_string_to_cstr(%nyx_string* %2552)
  %2554 = call i1 @nyx_map_contains_str(i8* %2550, i8* %2553)
  br i1 %2554, label %then493, label %else494
then493:
  %2555 = load %Environment, %Environment* %2509
  %2556 = getelementptr [5 x i8], [5 x i8]* @.str235, i32 0, i32 0
  %2557 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str235.c, i8* %2556)
  %2558 = call %Value @env_get(%Environment %2555, %nyx_string* %2557)
  %2559 = alloca %Value
  store %Value %2558, %Value* %2559
  %2560 = getelementptr %Value, %Value* %2559, i32 0, i32 0
  %2561 = load %nyx_string*, %nyx_string** %2560
  %2562 = getelementptr [9 x i8], [9 x i8]* @.str236, i32 0, i32 0
  %2563 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str236.c, i8* %2562)
  %2564 = call i1 @nyx_string_equals(%nyx_string* %2561, %nyx_string* %2563)
  br i1 %2564, label %then496, label %else497
then496:
  %2565 = load %Value, %Value* %2559
  %2566 = call { i64, i8* }* @get_func_params(%Value %2565)
  %2567 = alloca { i64, i8* }*
  store { i64, i8* }* %2566, { i64, i8* }** %2567
  %2568 = load %Value, %Value* %2559
  %2569 = call %nyx_string* @get_func_body_type(%Value %2568)
  %2570 = alloca %nyx_string*
  store %nyx_string* %2569, %nyx_string** %2570
  %2571 = load %Value, %Value* %2559
  %2572 = call { i64, i8* }* @get_func_body_data(%Value %2571)
  %2573 = alloca { i64, i8* }*
  store { i64, i8* }* %2572, { i64, i8* }** %2573
  %2574 = load %nyx_string*, %nyx_string** %2570
  %2575 = load { i64, i8* }*, { i64, i8* }** %2573
  %2576 = call { i64, i8* }* @make_astnode(%nyx_string* %2574, { i64, i8* }* %2575)
  %2577 = alloca { i64, i8* }*
  store { i64, i8* }* %2576, { i64, i8* }** %2577
  %2578 = load %Value, %Value* %2559
  %2579 = call i8* @get_func_env_bindings(%Value %2578)
  %2580 = alloca i8*
  store i8* %2579, i8** %2580
  %2581 = load %Value, %Value* %2559
  %2582 = call { i64, i8* }* @get_func_env_parent(%Value %2581)
  %2583 = alloca { i64, i8* }*
  store { i64, i8* }* %2582, { i64, i8* }** %2583
  %2584 = getelementptr %Environment, %Environment* null, i32 1
  %2585 = ptrtoint %Environment* %2584 to i64
  %2586 = call i8* @GC_malloc(i64 %2585)
  %2587 = bitcast i8* %2586 to %Environment*
  %2588 = load i8*, i8** %2580
  %2589 = getelementptr %Environment, %Environment* %2587, i32 0, i32 0
  store i8* %2588, i8** %2589
  %2590 = load { i64, i8* }*, { i64, i8* }** %2583
  %2591 = getelementptr %Environment, %Environment* %2587, i32 0, i32 1
  store { i64, i8* }* %2590, { i64, i8* }** %2591
  %2592 = load %Environment, %Environment* %2587
  %2593 = alloca %Environment
  store %Environment %2592, %Environment* %2593
  %2594 = load %Environment, %Environment* %2593
  %2595 = call %Environment @make_child_env(%Environment %2594)
  %2596 = alloca %Environment
  store %Environment %2595, %Environment* %2596
  %2597 = load { i64, i8* }*, { i64, i8* }** %2577
  %2598 = load %Environment, %Environment* %2596
  %2599 = call %Value @eval_stmt({ i64, i8* }* %2597, %Environment %2598)
  %2600 = alloca %Value
  store %Value %2599, %Value* %2600
  %2601 = load %Value, %Value* %2600
  ret %Value %2601
else497:
  br label %merge498
merge498:
  br label %merge495
else494:
  br label %merge495
merge495:
  br label %merge486
else485:
  br label %merge486
merge486:
  %2602 = call %Value @make_nil()
  ret %Value %2602
}

; Inicialización de variables globales (llamada automática vía ctor)
define void @__nyx_init_globals() {
entry:
  %2603 = call { i64, i8* }* @nyx_array_new_ptr()
  call void @nyx_array_push_tagged({ i64, i8* }* %2603, i64 0, i64 1)
  store { i64, i8* }* %2603, { i64, i8* }** @g_interp_error_count
  ret void
}

@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @__nyx_init_globals, i8* null }]

attributes #0 = { returns_twice }

