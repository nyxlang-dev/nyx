source_filename = "script.nx"
target triple = "x86_64-pc-linux-gnu"

%Value = type { %nyx_string*, i64, double, i1, %nyx_string*, { i64, i8* }*, { i64, i8* }*, %nyx_string*, { i64, i8* }*, i8*, { i64, i8* }* }

%Environment = type { i8*, { i64, i8* }* }

@.str0 = private unnamed_addr constant [4 x i8] c"int\00"
@.str0.c = internal global %nyx_string* null
@.str1 = private unnamed_addr constant [1 x i8] c"\00"
@.str1.c = internal global %nyx_string* null
@.str2 = private unnamed_addr constant [1 x i8] c"\00"
@.str2.c = internal global %nyx_string* null
@.str3 = private unnamed_addr constant [6 x i8] c"float\00"
@.str3.c = internal global %nyx_string* null
@.str4 = private unnamed_addr constant [1 x i8] c"\00"
@.str4.c = internal global %nyx_string* null
@.str5 = private unnamed_addr constant [1 x i8] c"\00"
@.str5.c = internal global %nyx_string* null
@.str6 = private unnamed_addr constant [5 x i8] c"bool\00"
@.str6.c = internal global %nyx_string* null
@.str7 = private unnamed_addr constant [1 x i8] c"\00"
@.str7.c = internal global %nyx_string* null
@.str8 = private unnamed_addr constant [1 x i8] c"\00"
@.str8.c = internal global %nyx_string* null
@.str9 = private unnamed_addr constant [7 x i8] c"string\00"
@.str9.c = internal global %nyx_string* null
@.str10 = private unnamed_addr constant [1 x i8] c"\00"
@.str10.c = internal global %nyx_string* null
@.str11 = private unnamed_addr constant [6 x i8] c"array\00"
@.str11.c = internal global %nyx_string* null
@.str12 = private unnamed_addr constant [1 x i8] c"\00"
@.str12.c = internal global %nyx_string* null
@.str13 = private unnamed_addr constant [1 x i8] c"\00"
@.str13.c = internal global %nyx_string* null
@.str14 = private unnamed_addr constant [9 x i8] c"function\00"
@.str14.c = internal global %nyx_string* null
@.str15 = private unnamed_addr constant [1 x i8] c"\00"
@.str15.c = internal global %nyx_string* null
@.str16 = private unnamed_addr constant [4 x i8] c"nil\00"
@.str16.c = internal global %nyx_string* null
@.str17 = private unnamed_addr constant [1 x i8] c"\00"
@.str17.c = internal global %nyx_string* null
@.str18 = private unnamed_addr constant [1 x i8] c"\00"
@.str18.c = internal global %nyx_string* null
@.str19 = private unnamed_addr constant [7 x i8] c"return\00"
@.str19.c = internal global %nyx_string* null
@.str20 = private unnamed_addr constant [1 x i8] c"\00"
@.str20.c = internal global %nyx_string* null
@.str21 = private unnamed_addr constant [1 x i8] c"\00"
@.str21.c = internal global %nyx_string* null
@.str22 = private unnamed_addr constant [4 x i8] c"int\00"
@.str22.c = internal global %nyx_string* null
@.str23 = private unnamed_addr constant [6 x i8] c"float\00"
@.str23.c = internal global %nyx_string* null
@.str24 = private unnamed_addr constant [4 x i8] c"int\00"
@.str24.c = internal global %nyx_string* null
@.str25 = private unnamed_addr constant [5 x i8] c"bool\00"
@.str25.c = internal global %nyx_string* null
@.str26 = private unnamed_addr constant [4 x i8] c"int\00"
@.str26.c = internal global %nyx_string* null
@.str27 = private unnamed_addr constant [6 x i8] c"float\00"
@.str27.c = internal global %nyx_string* null
@.str28 = private unnamed_addr constant [5 x i8] c"bool\00"
@.str28.c = internal global %nyx_string* null
@.str29 = private unnamed_addr constant [5 x i8] c"true\00"
@.str29.c = internal global %nyx_string* null
@.str30 = private unnamed_addr constant [6 x i8] c"false\00"
@.str30.c = internal global %nyx_string* null
@.str31 = private unnamed_addr constant [7 x i8] c"string\00"
@.str31.c = internal global %nyx_string* null
@.str32 = private unnamed_addr constant [4 x i8] c"nil\00"
@.str32.c = internal global %nyx_string* null
@.str33 = private unnamed_addr constant [4 x i8] c"nil\00"
@.str33.c = internal global %nyx_string* null
@.str34 = private unnamed_addr constant [2 x i8] c"[\00"
@.str34.c = internal global %nyx_string* null
@.str35 = private unnamed_addr constant [2 x i8] c"]\00"
@.str35.c = internal global %nyx_string* null
@.str36 = private unnamed_addr constant [5 x i8] c"bool\00"
@.str36.c = internal global %nyx_string* null
@.str37 = private unnamed_addr constant [4 x i8] c"nil\00"
@.str37.c = internal global %nyx_string* null
@.str38 = private unnamed_addr constant [4 x i8] c"int\00"
@.str38.c = internal global %nyx_string* null
@.str39 = private unnamed_addr constant [4 x i8] c"int\00"
@.str39.c = internal global %nyx_string* null
@.str40 = private unnamed_addr constant [5 x i8] c"bool\00"
@.str40.c = internal global %nyx_string* null
@.str41 = private unnamed_addr constant [7 x i8] c"string\00"
@.str41.c = internal global %nyx_string* null
@.str42 = private unnamed_addr constant [4 x i8] c"int\00"
@.str42.c = internal global %nyx_string* null
@.str43 = private unnamed_addr constant [6 x i8] c"float\00"
@.str43.c = internal global %nyx_string* null
@.str44 = private unnamed_addr constant [5 x i8] c"bool\00"
@.str44.c = internal global %nyx_string* null
@.str45 = private unnamed_addr constant [5 x i8] c"true\00"
@.str45.c = internal global %nyx_string* null
@.str46 = private unnamed_addr constant [6 x i8] c"false\00"
@.str46.c = internal global %nyx_string* null
@.str47 = private unnamed_addr constant [7 x i8] c"string\00"
@.str47.c = internal global %nyx_string* null
@.str48 = private unnamed_addr constant [4 x i8] c"nil\00"
@.str48.c = internal global %nyx_string* null
@.str49 = private unnamed_addr constant [4 x i8] c"nil\00"
@.str49.c = internal global %nyx_string* null
@.str50 = private unnamed_addr constant [2 x i8] c"[\00"
@.str50.c = internal global %nyx_string* null
@.str51 = private unnamed_addr constant [2 x i8] c"]\00"
@.str51.c = internal global %nyx_string* null
@.str52 = private unnamed_addr constant [30 x i8] c"Error: Variable no definida: \00"
@.str52.c = internal global %nyx_string* null
@.str53 = private unnamed_addr constant [7 x i8] c"number\00"
@.str53.c = internal global %nyx_string* null
@.str54 = private unnamed_addr constant [5 x i8] c"bool\00"
@.str54.c = internal global %nyx_string* null
@.str55 = private unnamed_addr constant [7 x i8] c"string\00"
@.str55.c = internal global %nyx_string* null
@.str56 = private unnamed_addr constant [11 x i8] c"identifier\00"
@.str56.c = internal global %nyx_string* null
@.str57 = private unnamed_addr constant [6 x i8] c"binop\00"
@.str57.c = internal global %nyx_string* null
@.str58 = private unnamed_addr constant [5 x i8] c"unop\00"
@.str58.c = internal global %nyx_string* null
@.str59 = private unnamed_addr constant [5 x i8] c"call\00"
@.str59.c = internal global %nyx_string* null
@.str60 = private unnamed_addr constant [6 x i8] c"array\00"
@.str60.c = internal global %nyx_string* null
@.str61 = private unnamed_addr constant [6 x i8] c"index\00"
@.str61.c = internal global %nyx_string* null
@.str62 = private unnamed_addr constant [12 x i8] c"method_call\00"
@.str62.c = internal global %nyx_string* null
@.str63 = private unnamed_addr constant [26 x i8] c"Expresión no soportada: \00"
@.str63.c = internal global %nyx_string* null
@.str64 = private unnamed_addr constant [2 x i8] c".\00"
@.str64.c = internal global %nyx_string* null
@.str65 = private unnamed_addr constant [5 x i8] c"true\00"
@.str65.c = internal global %nyx_string* null
@.str66 = private unnamed_addr constant [6 x i8] c"float\00"
@.str66.c = internal global %nyx_string* null
@.str67 = private unnamed_addr constant [6 x i8] c"float\00"
@.str67.c = internal global %nyx_string* null
@.str68 = private unnamed_addr constant [5 x i8] c"PLUS\00"
@.str68.c = internal global %nyx_string* null
@.str69 = private unnamed_addr constant [7 x i8] c"string\00"
@.str69.c = internal global %nyx_string* null
@.str70 = private unnamed_addr constant [6 x i8] c"MINUS\00"
@.str70.c = internal global %nyx_string* null
@.str71 = private unnamed_addr constant [5 x i8] c"STAR\00"
@.str71.c = internal global %nyx_string* null
@.str72 = private unnamed_addr constant [6 x i8] c"SLASH\00"
@.str72.c = internal global %nyx_string* null
@.str73 = private unnamed_addr constant [26 x i8] c"Error: División por cero\00"
@.str73.c = internal global %nyx_string* null
@.str74 = private unnamed_addr constant [8 x i8] c"PERCENT\00"
@.str74.c = internal global %nyx_string* null
@.str75 = private unnamed_addr constant [12 x i8] c"EQUAL_EQUAL\00"
@.str75.c = internal global %nyx_string* null
@.str76 = private unnamed_addr constant [10 x i8] c"NOT_EQUAL\00"
@.str76.c = internal global %nyx_string* null
@.str77 = private unnamed_addr constant [5 x i8] c"LESS\00"
@.str77.c = internal global %nyx_string* null
@.str78 = private unnamed_addr constant [8 x i8] c"GREATER\00"
@.str78.c = internal global %nyx_string* null
@.str79 = private unnamed_addr constant [11 x i8] c"LESS_EQUAL\00"
@.str79.c = internal global %nyx_string* null
@.str80 = private unnamed_addr constant [14 x i8] c"GREATER_EQUAL\00"
@.str80.c = internal global %nyx_string* null
@.str81 = private unnamed_addr constant [8 x i8] c"AND_AND\00"
@.str81.c = internal global %nyx_string* null
@.str82 = private unnamed_addr constant [4 x i8] c"AND\00"
@.str82.c = internal global %nyx_string* null
@.str83 = private unnamed_addr constant [6 x i8] c"OR_OR\00"
@.str83.c = internal global %nyx_string* null
@.str84 = private unnamed_addr constant [3 x i8] c"OR\00"
@.str84.c = internal global %nyx_string* null
@.str85 = private unnamed_addr constant [24 x i8] c"Operador no soportado: \00"
@.str85.c = internal global %nyx_string* null
@.str86 = private unnamed_addr constant [6 x i8] c"MINUS\00"
@.str86.c = internal global %nyx_string* null
@.str87 = private unnamed_addr constant [4 x i8] c"NOT\00"
@.str87.c = internal global %nyx_string* null
@.str88 = private unnamed_addr constant [31 x i8] c"Operador unario no soportado: \00"
@.str88.c = internal global %nyx_string* null
@.str89 = private unnamed_addr constant [30 x i8] c"Error: Índice fuera de rango\00"
@.str89.c = internal global %nyx_string* null
@.str90 = private unnamed_addr constant [4 x i8] c"let\00"
@.str90.c = internal global %nyx_string* null
@.str91 = private unnamed_addr constant [4 x i8] c"var\00"
@.str91.c = internal global %nyx_string* null
@.str92 = private unnamed_addr constant [7 x i8] c"assign\00"
@.str92.c = internal global %nyx_string* null
@.str93 = private unnamed_addr constant [3 x i8] c"if\00"
@.str93.c = internal global %nyx_string* null
@.str94 = private unnamed_addr constant [6 x i8] c"while\00"
@.str94.c = internal global %nyx_string* null
@.str95 = private unnamed_addr constant [4 x i8] c"for\00"
@.str95.c = internal global %nyx_string* null
@.str96 = private unnamed_addr constant [7 x i8] c"return\00"
@.str96.c = internal global %nyx_string* null
@.str97 = private unnamed_addr constant [6 x i8] c"block\00"
@.str97.c = internal global %nyx_string* null
@.str98 = private unnamed_addr constant [9 x i8] c"function\00"
@.str98.c = internal global %nyx_string* null
@.str99 = private unnamed_addr constant [13 x i8] c"index_assign\00"
@.str99.c = internal global %nyx_string* null
@.str100 = private unnamed_addr constant [16 x i8] c"compound_assign\00"
@.str100.c = internal global %nyx_string* null
@.str101 = private unnamed_addr constant [13 x i8] c"field_assign\00"
@.str101.c = internal global %nyx_string* null
@.str102 = private unnamed_addr constant [30 x i8] c"Error: Variable no definida: \00"
@.str102.c = internal global %nyx_string* null
@.str103 = private unnamed_addr constant [6 x i8] c"array\00"
@.str103.c = internal global %nyx_string* null
@.str104 = private unnamed_addr constant [45 x i8] c"Error: Índice fuera de rango en asignación\00"
@.str104.c = internal global %nyx_string* null
@.str105 = private unnamed_addr constant [39 x i8] c"Error: index_assign en tipo no-array: \00"
@.str105.c = internal global %nyx_string* null
@.str106 = private unnamed_addr constant [8 x i8] c"PLUS_EQ\00"
@.str106.c = internal global %nyx_string* null
@.str107 = private unnamed_addr constant [7 x i8] c"string\00"
@.str107.c = internal global %nyx_string* null
@.str108 = private unnamed_addr constant [6 x i8] c"float\00"
@.str108.c = internal global %nyx_string* null
@.str109 = private unnamed_addr constant [6 x i8] c"float\00"
@.str109.c = internal global %nyx_string* null
@.str110 = private unnamed_addr constant [9 x i8] c"MINUS_EQ\00"
@.str110.c = internal global %nyx_string* null
@.str111 = private unnamed_addr constant [6 x i8] c"float\00"
@.str111.c = internal global %nyx_string* null
@.str112 = private unnamed_addr constant [6 x i8] c"float\00"
@.str112.c = internal global %nyx_string* null
@.str113 = private unnamed_addr constant [8 x i8] c"STAR_EQ\00"
@.str113.c = internal global %nyx_string* null
@.str114 = private unnamed_addr constant [6 x i8] c"float\00"
@.str114.c = internal global %nyx_string* null
@.str115 = private unnamed_addr constant [6 x i8] c"float\00"
@.str115.c = internal global %nyx_string* null
@.str116 = private unnamed_addr constant [9 x i8] c"SLASH_EQ\00"
@.str116.c = internal global %nyx_string* null
@.str117 = private unnamed_addr constant [6 x i8] c"float\00"
@.str117.c = internal global %nyx_string* null
@.str118 = private unnamed_addr constant [6 x i8] c"float\00"
@.str118.c = internal global %nyx_string* null
@.str119 = private unnamed_addr constant [45 x i8] c"Error: División por cero en compound_assign\00"
@.str119.c = internal global %nyx_string* null
@.str120 = private unnamed_addr constant [11 x i8] c"PERCENT_EQ\00"
@.str120.c = internal global %nyx_string* null
@.str121 = private unnamed_addr constant [40 x i8] c"Operador compound_assign no soportado: \00"
@.str121.c = internal global %nyx_string* null
@.str122 = private unnamed_addr constant [49 x i8] c"Error: Variable no definida en compound_assign: \00"
@.str122.c = internal global %nyx_string* null
@.str123 = private unnamed_addr constant [44 x i8] c"field_assign no soportado en el intérprete\00"
@.str123.c = internal global %nyx_string* null
@.str124 = private unnamed_addr constant [6 x i8] c"empty\00"
@.str124.c = internal global %nyx_string* null
@.str125 = private unnamed_addr constant [6 x i8] c"array\00"
@.str125.c = internal global %nyx_string* null
@.str126 = private unnamed_addr constant [7 x i8] c"return\00"
@.str126.c = internal global %nyx_string* null
@.str127 = private unnamed_addr constant [9 x i8] c"function\00"
@.str127.c = internal global %nyx_string* null
@.str128 = private unnamed_addr constant [1 x i8] c"\00"
@.str128.c = internal global %nyx_string* null
@.str129 = private unnamed_addr constant [7 x i8] c"string\00"
@.str129.c = internal global %nyx_string* null
@.str130 = private unnamed_addr constant [7 x i8] c"length\00"
@.str130.c = internal global %nyx_string* null
@.str131 = private unnamed_addr constant [12 x i8] c"char_length\00"
@.str131.c = internal global %nyx_string* null
@.str132 = private unnamed_addr constant [12 x i8] c"byte_length\00"
@.str132.c = internal global %nyx_string* null
@.str133 = private unnamed_addr constant [8 x i8] c"toUpper\00"
@.str133.c = internal global %nyx_string* null
@.str134 = private unnamed_addr constant [8 x i8] c"toLower\00"
@.str134.c = internal global %nyx_string* null
@.str135 = private unnamed_addr constant [5 x i8] c"trim\00"
@.str135.c = internal global %nyx_string* null
@.str136 = private unnamed_addr constant [8 x i8] c"indexOf\00"
@.str136.c = internal global %nyx_string* null
@.str137 = private unnamed_addr constant [10 x i8] c"substring\00"
@.str137.c = internal global %nyx_string* null
@.str138 = private unnamed_addr constant [7 x i8] c"charAt\00"
@.str138.c = internal global %nyx_string* null
@.str139 = private unnamed_addr constant [11 x i8] c"startsWith\00"
@.str139.c = internal global %nyx_string* null
@.str140 = private unnamed_addr constant [9 x i8] c"endsWith\00"
@.str140.c = internal global %nyx_string* null
@.str141 = private unnamed_addr constant [8 x i8] c"replace\00"
@.str141.c = internal global %nyx_string* null
@.str142 = private unnamed_addr constant [6 x i8] c"array\00"
@.str142.c = internal global %nyx_string* null
@.str143 = private unnamed_addr constant [7 x i8] c"length\00"
@.str143.c = internal global %nyx_string* null
@.str144 = private unnamed_addr constant [5 x i8] c"push\00"
@.str144.c = internal global %nyx_string* null
@.str145 = private unnamed_addr constant [4 x i8] c"pop\00"
@.str145.c = internal global %nyx_string* null
@.str146 = private unnamed_addr constant [9 x i8] c"NYX_LANG\00"
@.str146.c = internal global %nyx_string* null
@.str147 = private unnamed_addr constant [3 x i8] c"es\00"
@.str147.c = internal global %nyx_string* null
@.str148 = private unnamed_addr constant [56 x i8] c"error [NYX3001]: el intérprete no soporta el método '\00"
@.str148.c = internal global %nyx_string* null
@.str149 = private unnamed_addr constant [17 x i8] c"' sobre el tipo \00"
@.str149.c = internal global %nyx_string* null
@.str150 = private unnamed_addr constant [85 x i8] c"  el intérprete cubre un SUBCONJUNTO del lenguaje (ver cabecera de interpreter.nx);\00"
@.str150.c = internal global %nyx_string* null
@.str151 = private unnamed_addr constant [85 x i8] c"  el binario compilado (nyx build / make run) sí lo soporta si el lenguaje lo tiene\00"
@.str151.c = internal global %nyx_string* null
@.str152 = private unnamed_addr constant [59 x i8] c"error [NYX3001]: the interpreter does not support method '\00"
@.str152.c = internal global %nyx_string* null
@.str153 = private unnamed_addr constant [11 x i8] c"' on type \00"
@.str153.c = internal global %nyx_string* null
@.str154 = private unnamed_addr constant [79 x i8] c"  the interpreter covers a SUBSET of the language (see interpreter.nx header);\00"
@.str154.c = internal global %nyx_string* null
@.str155 = private unnamed_addr constant [84 x i8] c"  the compiled binary (nyx build / make run) does support it if the language has it\00"
@.str155.c = internal global %nyx_string* null
@.str156 = private unnamed_addr constant [6 x i8] c"print\00"
@.str156.c = internal global %nyx_string* null
@.str157 = private unnamed_addr constant [10 x i8] c"read_file\00"
@.str157.c = internal global %nyx_string* null
@.str158 = private unnamed_addr constant [10 x i8] c"read_line\00"
@.str158.c = internal global %nyx_string* null
@.str159 = private unnamed_addr constant [17 x i8] c"print_no_newline\00"
@.str159.c = internal global %nyx_string* null
@.str160 = private unnamed_addr constant [9 x i8] c"function\00"
@.str160.c = internal global %nyx_string* null
@.str161 = private unnamed_addr constant [8 x i8] c"Error: \00"
@.str161.c = internal global %nyx_string* null
@.str162 = private unnamed_addr constant [20 x i8] c" no es una función\00"
@.str162.c = internal global %nyx_string* null
@.str163 = private unnamed_addr constant [7 x i8] c"return\00"
@.str163.c = internal global %nyx_string* null
@.str164 = private unnamed_addr constant [1 x i8] c"\00"
@.str164.c = internal global %nyx_string* null
@.str165 = private unnamed_addr constant [4 x i8] c"nil\00"
@.str165.c = internal global %nyx_string* null
@.str166 = private unnamed_addr constant [7 x i8] c"return\00"
@.str166.c = internal global %nyx_string* null
@.str167 = private unnamed_addr constant [4 x i8] c"=> \00"
@.str167.c = internal global %nyx_string* null
@.str168 = private unnamed_addr constant [6 x i8] c"block\00"
@.str168.c = internal global %nyx_string* null
@.str169 = private unnamed_addr constant [5 x i8] c"main\00"
@.str169.c = internal global %nyx_string* null
@.str170 = private unnamed_addr constant [5 x i8] c"main\00"
@.str170.c = internal global %nyx_string* null
@.str171 = private unnamed_addr constant [9 x i8] c"function\00"
@.str171.c = internal global %nyx_string* null
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

define internal { i64, i8* }* @make_astnode(
%nyx_string* %node_type.param, { i64, i8* }* %data.param) {
  %node_type.ptr = alloca %nyx_string*
  store %nyx_string* %node_type.param, %nyx_string** %node_type.ptr
  %data.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %data.param, { i64, i8* }** %data.ptr
  %3 = call { i64, i8* }* @nyx_array_new_ptr()
  %4 = alloca { i64, i8* }*
  store { i64, i8* }* %3, { i64, i8* }** %4
  %5 = load { i64, i8* }*, { i64, i8* }** %4
  %6 = load %nyx_string*, %nyx_string** %node_type.ptr
  %7 = ptrtoint %nyx_string* %6 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %5, i64 %7, i64 2)
  %8 = load { i64, i8* }*, { i64, i8* }** %4
  %9 = load { i64, i8* }*, { i64, i8* }** %data.ptr
  %10 = ptrtoint { i64, i8* }* %9 to i64
  call void @nyx_array_push({ i64, i8* }* %8, i64 %10)
  %11 = load { i64, i8* }*, { i64, i8* }** %4
  ret { i64, i8* }* %11
}

define internal %nyx_string* @astnode_get_type(
{ i64, i8* }* %node.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %12 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %13 = call i64 @nyx_array_get({ i64, i8* }* %12, i64 0)
  %14 = inttoptr i64 %13 to %nyx_string*
  ret %nyx_string* %14
}

define internal { i64, i8* }* @astnode_get_data(
{ i64, i8* }* %node.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %15 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %16 = call i64 @nyx_array_get({ i64, i8* }* %15, i64 1)
  %17 = inttoptr i64 %16 to { i64, i8* }*
  ret { i64, i8* }* %17
}

define internal %Value @make_int(
i64 %n.param) {
  %n.ptr = alloca i64
  store i64 %n.param, i64* %n.ptr
  %18 = call i8* @nyx_map_new(i32 0)
  %19 = alloca i8*
  store i8* %18, i8** %19
  %20 = call { i64, i8* }* @nyx_array_new_ptr()
  %21 = alloca { i64, i8* }*
  store { i64, i8* }* %20, { i64, i8* }** %21
  %22 = getelementptr %Value, %Value* null, i32 1
  %23 = ptrtoint %Value* %22 to i64
  %24 = call i8* @GC_malloc(i64 %23)
  %25 = bitcast i8* %24 to %Value*
  %26 = getelementptr [4 x i8], [4 x i8]* @.str0, i32 0, i32 0
  %27 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str0.c, i8* %26)
  %28 = getelementptr %Value, %Value* %25, i32 0, i32 0
  store %nyx_string* %27, %nyx_string** %28
  %29 = load i64, i64* %n.ptr
  %30 = getelementptr %Value, %Value* %25, i32 0, i32 1
  store i64 %29, i64* %30
  %31 = getelementptr %Value, %Value* %25, i32 0, i32 2
  store double 0.0, double* %31
  %32 = getelementptr %Value, %Value* %25, i32 0, i32 3
  store i1 0, i1* %32
  %33 = getelementptr [1 x i8], [1 x i8]* @.str1, i32 0, i32 0
  %34 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1.c, i8* %33)
  %35 = getelementptr %Value, %Value* %25, i32 0, i32 4
  store %nyx_string* %34, %nyx_string** %35
  %36 = load { i64, i8* }*, { i64, i8* }** %21
  %37 = getelementptr %Value, %Value* %25, i32 0, i32 5
  store { i64, i8* }* %36, { i64, i8* }** %37
  %38 = load { i64, i8* }*, { i64, i8* }** %21
  %39 = getelementptr %Value, %Value* %25, i32 0, i32 6
  store { i64, i8* }* %38, { i64, i8* }** %39
  %40 = getelementptr [1 x i8], [1 x i8]* @.str2, i32 0, i32 0
  %41 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str2.c, i8* %40)
  %42 = getelementptr %Value, %Value* %25, i32 0, i32 7
  store %nyx_string* %41, %nyx_string** %42
  %43 = load { i64, i8* }*, { i64, i8* }** %21
  %44 = getelementptr %Value, %Value* %25, i32 0, i32 8
  store { i64, i8* }* %43, { i64, i8* }** %44
  %45 = load i8*, i8** %19
  %46 = getelementptr %Value, %Value* %25, i32 0, i32 9
  store i8* %45, i8** %46
  %47 = load { i64, i8* }*, { i64, i8* }** %21
  %48 = getelementptr %Value, %Value* %25, i32 0, i32 10
  store { i64, i8* }* %47, { i64, i8* }** %48
  %49 = load %Value, %Value* %25
  ret %Value %49
}

define internal %Value @make_float(
double %f.param) {
  %f.ptr = alloca double
  store double %f.param, double* %f.ptr
  %50 = call i8* @nyx_map_new(i32 0)
  %51 = alloca i8*
  store i8* %50, i8** %51
  %52 = call { i64, i8* }* @nyx_array_new_ptr()
  %53 = alloca { i64, i8* }*
  store { i64, i8* }* %52, { i64, i8* }** %53
  %54 = getelementptr %Value, %Value* null, i32 1
  %55 = ptrtoint %Value* %54 to i64
  %56 = call i8* @GC_malloc(i64 %55)
  %57 = bitcast i8* %56 to %Value*
  %58 = getelementptr [6 x i8], [6 x i8]* @.str3, i32 0, i32 0
  %59 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str3.c, i8* %58)
  %60 = getelementptr %Value, %Value* %57, i32 0, i32 0
  store %nyx_string* %59, %nyx_string** %60
  %61 = getelementptr %Value, %Value* %57, i32 0, i32 1
  store i64 0, i64* %61
  %62 = load double, double* %f.ptr
  %63 = getelementptr %Value, %Value* %57, i32 0, i32 2
  store double %62, double* %63
  %64 = getelementptr %Value, %Value* %57, i32 0, i32 3
  store i1 0, i1* %64
  %65 = getelementptr [1 x i8], [1 x i8]* @.str4, i32 0, i32 0
  %66 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str4.c, i8* %65)
  %67 = getelementptr %Value, %Value* %57, i32 0, i32 4
  store %nyx_string* %66, %nyx_string** %67
  %68 = load { i64, i8* }*, { i64, i8* }** %53
  %69 = getelementptr %Value, %Value* %57, i32 0, i32 5
  store { i64, i8* }* %68, { i64, i8* }** %69
  %70 = load { i64, i8* }*, { i64, i8* }** %53
  %71 = getelementptr %Value, %Value* %57, i32 0, i32 6
  store { i64, i8* }* %70, { i64, i8* }** %71
  %72 = getelementptr [1 x i8], [1 x i8]* @.str5, i32 0, i32 0
  %73 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str5.c, i8* %72)
  %74 = getelementptr %Value, %Value* %57, i32 0, i32 7
  store %nyx_string* %73, %nyx_string** %74
  %75 = load { i64, i8* }*, { i64, i8* }** %53
  %76 = getelementptr %Value, %Value* %57, i32 0, i32 8
  store { i64, i8* }* %75, { i64, i8* }** %76
  %77 = load i8*, i8** %51
  %78 = getelementptr %Value, %Value* %57, i32 0, i32 9
  store i8* %77, i8** %78
  %79 = load { i64, i8* }*, { i64, i8* }** %53
  %80 = getelementptr %Value, %Value* %57, i32 0, i32 10
  store { i64, i8* }* %79, { i64, i8* }** %80
  %81 = load %Value, %Value* %57
  ret %Value %81
}

define internal %Value @make_bool(
i1 %b.param) {
  %b.ptr = alloca i1
  store i1 %b.param, i1* %b.ptr
  %82 = call i8* @nyx_map_new(i32 0)
  %83 = alloca i8*
  store i8* %82, i8** %83
  %84 = call { i64, i8* }* @nyx_array_new_ptr()
  %85 = alloca { i64, i8* }*
  store { i64, i8* }* %84, { i64, i8* }** %85
  %86 = getelementptr %Value, %Value* null, i32 1
  %87 = ptrtoint %Value* %86 to i64
  %88 = call i8* @GC_malloc(i64 %87)
  %89 = bitcast i8* %88 to %Value*
  %90 = getelementptr [5 x i8], [5 x i8]* @.str6, i32 0, i32 0
  %91 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str6.c, i8* %90)
  %92 = getelementptr %Value, %Value* %89, i32 0, i32 0
  store %nyx_string* %91, %nyx_string** %92
  %93 = getelementptr %Value, %Value* %89, i32 0, i32 1
  store i64 0, i64* %93
  %94 = getelementptr %Value, %Value* %89, i32 0, i32 2
  store double 0.0, double* %94
  %95 = load i1, i1* %b.ptr
  %96 = getelementptr %Value, %Value* %89, i32 0, i32 3
  store i1 %95, i1* %96
  %97 = getelementptr [1 x i8], [1 x i8]* @.str7, i32 0, i32 0
  %98 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str7.c, i8* %97)
  %99 = getelementptr %Value, %Value* %89, i32 0, i32 4
  store %nyx_string* %98, %nyx_string** %99
  %100 = load { i64, i8* }*, { i64, i8* }** %85
  %101 = getelementptr %Value, %Value* %89, i32 0, i32 5
  store { i64, i8* }* %100, { i64, i8* }** %101
  %102 = load { i64, i8* }*, { i64, i8* }** %85
  %103 = getelementptr %Value, %Value* %89, i32 0, i32 6
  store { i64, i8* }* %102, { i64, i8* }** %103
  %104 = getelementptr [1 x i8], [1 x i8]* @.str8, i32 0, i32 0
  %105 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str8.c, i8* %104)
  %106 = getelementptr %Value, %Value* %89, i32 0, i32 7
  store %nyx_string* %105, %nyx_string** %106
  %107 = load { i64, i8* }*, { i64, i8* }** %85
  %108 = getelementptr %Value, %Value* %89, i32 0, i32 8
  store { i64, i8* }* %107, { i64, i8* }** %108
  %109 = load i8*, i8** %83
  %110 = getelementptr %Value, %Value* %89, i32 0, i32 9
  store i8* %109, i8** %110
  %111 = load { i64, i8* }*, { i64, i8* }** %85
  %112 = getelementptr %Value, %Value* %89, i32 0, i32 10
  store { i64, i8* }* %111, { i64, i8* }** %112
  %113 = load %Value, %Value* %89
  ret %Value %113
}

define internal %Value @make_string(
%nyx_string* %s.param) {
  %s.ptr = alloca %nyx_string*
  store %nyx_string* %s.param, %nyx_string** %s.ptr
  %114 = call i8* @nyx_map_new(i32 0)
  %115 = alloca i8*
  store i8* %114, i8** %115
  %116 = call { i64, i8* }* @nyx_array_new_ptr()
  %117 = alloca { i64, i8* }*
  store { i64, i8* }* %116, { i64, i8* }** %117
  %118 = getelementptr %Value, %Value* null, i32 1
  %119 = ptrtoint %Value* %118 to i64
  %120 = call i8* @GC_malloc(i64 %119)
  %121 = bitcast i8* %120 to %Value*
  %122 = getelementptr [7 x i8], [7 x i8]* @.str9, i32 0, i32 0
  %123 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str9.c, i8* %122)
  %124 = getelementptr %Value, %Value* %121, i32 0, i32 0
  store %nyx_string* %123, %nyx_string** %124
  %125 = getelementptr %Value, %Value* %121, i32 0, i32 1
  store i64 0, i64* %125
  %126 = getelementptr %Value, %Value* %121, i32 0, i32 2
  store double 0.0, double* %126
  %127 = getelementptr %Value, %Value* %121, i32 0, i32 3
  store i1 0, i1* %127
  %128 = load %nyx_string*, %nyx_string** %s.ptr
  %129 = getelementptr %Value, %Value* %121, i32 0, i32 4
  store %nyx_string* %128, %nyx_string** %129
  %130 = load { i64, i8* }*, { i64, i8* }** %117
  %131 = getelementptr %Value, %Value* %121, i32 0, i32 5
  store { i64, i8* }* %130, { i64, i8* }** %131
  %132 = load { i64, i8* }*, { i64, i8* }** %117
  %133 = getelementptr %Value, %Value* %121, i32 0, i32 6
  store { i64, i8* }* %132, { i64, i8* }** %133
  %134 = getelementptr [1 x i8], [1 x i8]* @.str10, i32 0, i32 0
  %135 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str10.c, i8* %134)
  %136 = getelementptr %Value, %Value* %121, i32 0, i32 7
  store %nyx_string* %135, %nyx_string** %136
  %137 = load { i64, i8* }*, { i64, i8* }** %117
  %138 = getelementptr %Value, %Value* %121, i32 0, i32 8
  store { i64, i8* }* %137, { i64, i8* }** %138
  %139 = load i8*, i8** %115
  %140 = getelementptr %Value, %Value* %121, i32 0, i32 9
  store i8* %139, i8** %140
  %141 = load { i64, i8* }*, { i64, i8* }** %117
  %142 = getelementptr %Value, %Value* %121, i32 0, i32 10
  store { i64, i8* }* %141, { i64, i8* }** %142
  %143 = load %Value, %Value* %121
  ret %Value %143
}

define internal %Value @make_array(
{ i64, i8* }* %arr.param) {
  %arr.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %arr.param, { i64, i8* }** %arr.ptr
  %144 = call i8* @nyx_map_new(i32 0)
  %145 = alloca i8*
  store i8* %144, i8** %145
  %146 = call { i64, i8* }* @nyx_array_new_ptr()
  %147 = alloca { i64, i8* }*
  store { i64, i8* }* %146, { i64, i8* }** %147
  %148 = getelementptr %Value, %Value* null, i32 1
  %149 = ptrtoint %Value* %148 to i64
  %150 = call i8* @GC_malloc(i64 %149)
  %151 = bitcast i8* %150 to %Value*
  %152 = getelementptr [6 x i8], [6 x i8]* @.str11, i32 0, i32 0
  %153 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str11.c, i8* %152)
  %154 = getelementptr %Value, %Value* %151, i32 0, i32 0
  store %nyx_string* %153, %nyx_string** %154
  %155 = getelementptr %Value, %Value* %151, i32 0, i32 1
  store i64 0, i64* %155
  %156 = getelementptr %Value, %Value* %151, i32 0, i32 2
  store double 0.0, double* %156
  %157 = getelementptr %Value, %Value* %151, i32 0, i32 3
  store i1 0, i1* %157
  %158 = getelementptr [1 x i8], [1 x i8]* @.str12, i32 0, i32 0
  %159 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str12.c, i8* %158)
  %160 = getelementptr %Value, %Value* %151, i32 0, i32 4
  store %nyx_string* %159, %nyx_string** %160
  %161 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %162 = getelementptr %Value, %Value* %151, i32 0, i32 5
  store { i64, i8* }* %161, { i64, i8* }** %162
  %163 = load { i64, i8* }*, { i64, i8* }** %147
  %164 = getelementptr %Value, %Value* %151, i32 0, i32 6
  store { i64, i8* }* %163, { i64, i8* }** %164
  %165 = getelementptr [1 x i8], [1 x i8]* @.str13, i32 0, i32 0
  %166 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str13.c, i8* %165)
  %167 = getelementptr %Value, %Value* %151, i32 0, i32 7
  store %nyx_string* %166, %nyx_string** %167
  %168 = load { i64, i8* }*, { i64, i8* }** %147
  %169 = getelementptr %Value, %Value* %151, i32 0, i32 8
  store { i64, i8* }* %168, { i64, i8* }** %169
  %170 = load i8*, i8** %145
  %171 = getelementptr %Value, %Value* %151, i32 0, i32 9
  store i8* %170, i8** %171
  %172 = load { i64, i8* }*, { i64, i8* }** %147
  %173 = getelementptr %Value, %Value* %151, i32 0, i32 10
  store { i64, i8* }* %172, { i64, i8* }** %173
  %174 = load %Value, %Value* %151
  ret %Value %174
}

define internal %Value @make_function(
{ i64, i8* }* %params.param, { i64, i8* }* %body.param, %Environment %env.param) {
  %params.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %params.param, { i64, i8* }** %params.ptr
  %body.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %body.param, { i64, i8* }** %body.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %175 = call { i64, i8* }* @nyx_array_new_ptr()
  %176 = alloca { i64, i8* }*
  store { i64, i8* }* %175, { i64, i8* }** %176
  %177 = load { i64, i8* }*, { i64, i8* }** %body.ptr
  %178 = call %nyx_string* @astnode_get_type({ i64, i8* }* %177)
  %179 = alloca %nyx_string*
  store %nyx_string* %178, %nyx_string** %179
  %180 = load { i64, i8* }*, { i64, i8* }** %body.ptr
  %181 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %180)
  %182 = alloca { i64, i8* }*
  store { i64, i8* }* %181, { i64, i8* }** %182
  %183 = getelementptr %Environment, %Environment* %env.ptr, i32 0, i32 0
  %184 = load i8*, i8** %183
  %185 = alloca i8*
  store i8* %184, i8** %185
  %186 = getelementptr %Environment, %Environment* %env.ptr, i32 0, i32 1
  %187 = load { i64, i8* }*, { i64, i8* }** %186
  %188 = alloca { i64, i8* }*
  store { i64, i8* }* %187, { i64, i8* }** %188
  %189 = getelementptr %Value, %Value* null, i32 1
  %190 = ptrtoint %Value* %189 to i64
  %191 = call i8* @GC_malloc(i64 %190)
  %192 = bitcast i8* %191 to %Value*
  %193 = getelementptr [9 x i8], [9 x i8]* @.str14, i32 0, i32 0
  %194 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str14.c, i8* %193)
  %195 = getelementptr %Value, %Value* %192, i32 0, i32 0
  store %nyx_string* %194, %nyx_string** %195
  %196 = getelementptr %Value, %Value* %192, i32 0, i32 1
  store i64 0, i64* %196
  %197 = getelementptr %Value, %Value* %192, i32 0, i32 2
  store double 0.0, double* %197
  %198 = getelementptr %Value, %Value* %192, i32 0, i32 3
  store i1 0, i1* %198
  %199 = getelementptr [1 x i8], [1 x i8]* @.str15, i32 0, i32 0
  %200 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str15.c, i8* %199)
  %201 = getelementptr %Value, %Value* %192, i32 0, i32 4
  store %nyx_string* %200, %nyx_string** %201
  %202 = load { i64, i8* }*, { i64, i8* }** %176
  %203 = getelementptr %Value, %Value* %192, i32 0, i32 5
  store { i64, i8* }* %202, { i64, i8* }** %203
  %204 = load { i64, i8* }*, { i64, i8* }** %params.ptr
  %205 = getelementptr %Value, %Value* %192, i32 0, i32 6
  store { i64, i8* }* %204, { i64, i8* }** %205
  %206 = load %nyx_string*, %nyx_string** %179
  %207 = getelementptr %Value, %Value* %192, i32 0, i32 7
  store %nyx_string* %206, %nyx_string** %207
  %208 = load { i64, i8* }*, { i64, i8* }** %182
  %209 = getelementptr %Value, %Value* %192, i32 0, i32 8
  store { i64, i8* }* %208, { i64, i8* }** %209
  %210 = load i8*, i8** %185
  %211 = getelementptr %Value, %Value* %192, i32 0, i32 9
  store i8* %210, i8** %211
  %212 = load { i64, i8* }*, { i64, i8* }** %188
  %213 = getelementptr %Value, %Value* %192, i32 0, i32 10
  store { i64, i8* }* %212, { i64, i8* }** %213
  %214 = load %Value, %Value* %192
  ret %Value %214
}

define internal %Value @make_nil(
) {
  %215 = call i8* @nyx_map_new(i32 0)
  %216 = alloca i8*
  store i8* %215, i8** %216
  %217 = call { i64, i8* }* @nyx_array_new_ptr()
  %218 = alloca { i64, i8* }*
  store { i64, i8* }* %217, { i64, i8* }** %218
  %219 = getelementptr %Value, %Value* null, i32 1
  %220 = ptrtoint %Value* %219 to i64
  %221 = call i8* @GC_malloc(i64 %220)
  %222 = bitcast i8* %221 to %Value*
  %223 = getelementptr [4 x i8], [4 x i8]* @.str16, i32 0, i32 0
  %224 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str16.c, i8* %223)
  %225 = getelementptr %Value, %Value* %222, i32 0, i32 0
  store %nyx_string* %224, %nyx_string** %225
  %226 = getelementptr %Value, %Value* %222, i32 0, i32 1
  store i64 0, i64* %226
  %227 = getelementptr %Value, %Value* %222, i32 0, i32 2
  store double 0.0, double* %227
  %228 = getelementptr %Value, %Value* %222, i32 0, i32 3
  store i1 0, i1* %228
  %229 = getelementptr [1 x i8], [1 x i8]* @.str17, i32 0, i32 0
  %230 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str17.c, i8* %229)
  %231 = getelementptr %Value, %Value* %222, i32 0, i32 4
  store %nyx_string* %230, %nyx_string** %231
  %232 = load { i64, i8* }*, { i64, i8* }** %218
  %233 = getelementptr %Value, %Value* %222, i32 0, i32 5
  store { i64, i8* }* %232, { i64, i8* }** %233
  %234 = load { i64, i8* }*, { i64, i8* }** %218
  %235 = getelementptr %Value, %Value* %222, i32 0, i32 6
  store { i64, i8* }* %234, { i64, i8* }** %235
  %236 = getelementptr [1 x i8], [1 x i8]* @.str18, i32 0, i32 0
  %237 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str18.c, i8* %236)
  %238 = getelementptr %Value, %Value* %222, i32 0, i32 7
  store %nyx_string* %237, %nyx_string** %238
  %239 = load { i64, i8* }*, { i64, i8* }** %218
  %240 = getelementptr %Value, %Value* %222, i32 0, i32 8
  store { i64, i8* }* %239, { i64, i8* }** %240
  %241 = load i8*, i8** %216
  %242 = getelementptr %Value, %Value* %222, i32 0, i32 9
  store i8* %241, i8** %242
  %243 = load { i64, i8* }*, { i64, i8* }** %218
  %244 = getelementptr %Value, %Value* %222, i32 0, i32 10
  store { i64, i8* }* %243, { i64, i8* }** %244
  %245 = load %Value, %Value* %222
  ret %Value %245
}

define internal %Value @make_return_value(
%Value %inner_value.param) {
  %inner_value.ptr = alloca %Value
  store %Value %inner_value.param, %Value* %inner_value.ptr
  %246 = call i8* @nyx_map_new(i32 0)
  %247 = alloca i8*
  store i8* %246, i8** %247
  %248 = call { i64, i8* }* @nyx_array_new_ptr()
  %249 = alloca { i64, i8* }*
  store { i64, i8* }* %248, { i64, i8* }** %249
  %250 = load { i64, i8* }*, { i64, i8* }** %249
  %251 = load %Value, %Value* %inner_value.ptr
  %252 = getelementptr %Value, %Value* null, i32 1
  %253 = ptrtoint %Value* %252 to i64
  %254 = call i8* @GC_malloc(i64 %253)
  %255 = bitcast i8* %254 to %Value*
  store %Value %251, %Value* %255
  %256 = ptrtoint %Value* %255 to i64
  call void @nyx_array_push({ i64, i8* }* %250, i64 %256)
  %257 = getelementptr %Value, %Value* null, i32 1
  %258 = ptrtoint %Value* %257 to i64
  %259 = call i8* @GC_malloc(i64 %258)
  %260 = bitcast i8* %259 to %Value*
  %261 = getelementptr [7 x i8], [7 x i8]* @.str19, i32 0, i32 0
  %262 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str19.c, i8* %261)
  %263 = getelementptr %Value, %Value* %260, i32 0, i32 0
  store %nyx_string* %262, %nyx_string** %263
  %264 = getelementptr %Value, %Value* %260, i32 0, i32 1
  store i64 0, i64* %264
  %265 = getelementptr %Value, %Value* %260, i32 0, i32 2
  store double 0.0, double* %265
  %266 = getelementptr %Value, %Value* %260, i32 0, i32 3
  store i1 0, i1* %266
  %267 = getelementptr [1 x i8], [1 x i8]* @.str20, i32 0, i32 0
  %268 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str20.c, i8* %267)
  %269 = getelementptr %Value, %Value* %260, i32 0, i32 4
  store %nyx_string* %268, %nyx_string** %269
  %270 = load { i64, i8* }*, { i64, i8* }** %249
  %271 = getelementptr %Value, %Value* %260, i32 0, i32 5
  store { i64, i8* }* %270, { i64, i8* }** %271
  %272 = call { i64, i8* }* @nyx_array_new_ptr()
  %273 = getelementptr %Value, %Value* %260, i32 0, i32 6
  store { i64, i8* }* %272, { i64, i8* }** %273
  %274 = getelementptr [1 x i8], [1 x i8]* @.str21, i32 0, i32 0
  %275 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str21.c, i8* %274)
  %276 = getelementptr %Value, %Value* %260, i32 0, i32 7
  store %nyx_string* %275, %nyx_string** %276
  %277 = call { i64, i8* }* @nyx_array_new_ptr()
  %278 = getelementptr %Value, %Value* %260, i32 0, i32 8
  store { i64, i8* }* %277, { i64, i8* }** %278
  %279 = load i8*, i8** %247
  %280 = getelementptr %Value, %Value* %260, i32 0, i32 9
  store i8* %279, i8** %280
  %281 = call { i64, i8* }* @nyx_array_new_ptr()
  %282 = getelementptr %Value, %Value* %260, i32 0, i32 10
  store { i64, i8* }* %281, { i64, i8* }** %282
  %283 = load %Value, %Value* %260
  ret %Value %283
}

define internal %Value @eval_return(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %284 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %285 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %284)
  %286 = alloca { i64, i8* }*
  store { i64, i8* }* %285, { i64, i8* }** %286
  %287 = load { i64, i8* }*, { i64, i8* }** %286
  %288 = call i64 @nyx_array_get({ i64, i8* }* %287, i64 0)
  %289 = inttoptr i64 %288 to { i64, i8* }*
  %290 = alloca { i64, i8* }*
  store { i64, i8* }* %289, { i64, i8* }** %290
  %291 = load { i64, i8* }*, { i64, i8* }** %290
  %292 = load %Environment, %Environment* %env.ptr
  %293 = call %Value @eval_expr({ i64, i8* }* %291, %Environment %292)
  %294 = alloca %Value
  store %Value %293, %Value* %294
  %295 = load %Value, %Value* %294
  %296 = call %Value @make_return_value(%Value %295)
  ret %Value %296
}

define internal i64 @value_to_int(
%Value %v.param) {
  %v.ptr = alloca %Value
  store %Value %v.param, %Value* %v.ptr
  %297 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %298 = load %nyx_string*, %nyx_string** %297
  %299 = getelementptr [4 x i8], [4 x i8]* @.str22, i32 0, i32 0
  %300 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str22.c, i8* %299)
  %301 = call i1 @nyx_string_equals(%nyx_string* %298, %nyx_string* %300)
  br i1 %301, label %then0, label %else1
then0:
  %302 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 1
  %303 = load i64, i64* %302
  ret i64 %303
else1:
  br label %merge2
merge2:
  ret i64 0
}

define internal double @value_to_float(
%Value %v.param) {
  %v.ptr = alloca %Value
  store %Value %v.param, %Value* %v.ptr
  %304 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %305 = load %nyx_string*, %nyx_string** %304
  %306 = getelementptr [6 x i8], [6 x i8]* @.str23, i32 0, i32 0
  %307 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str23.c, i8* %306)
  %308 = call i1 @nyx_string_equals(%nyx_string* %305, %nyx_string* %307)
  br i1 %308, label %then3, label %else4
then3:
  %309 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 2
  %310 = load double, double* %309
  ret double %310
else4:
  br label %merge5
merge5:
  %311 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %312 = load %nyx_string*, %nyx_string** %311
  %313 = getelementptr [4 x i8], [4 x i8]* @.str24, i32 0, i32 0
  %314 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str24.c, i8* %313)
  %315 = call i1 @nyx_string_equals(%nyx_string* %312, %nyx_string* %314)
  br i1 %315, label %then6, label %else7
then6:
  %316 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 1
  %317 = load i64, i64* %316
  %318 = sitofp i64 %317 to double
  %319 = alloca double
  store double %318, double* %319
  %320 = load double, double* %319
  ret double %320
else7:
  br label %merge8
merge8:
  ret double 0.0
}

define internal i1 @value_to_bool(
%Value %v.param) {
  %v.ptr = alloca %Value
  store %Value %v.param, %Value* %v.ptr
  %321 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %322 = load %nyx_string*, %nyx_string** %321
  %323 = getelementptr [5 x i8], [5 x i8]* @.str25, i32 0, i32 0
  %324 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str25.c, i8* %323)
  %325 = call i1 @nyx_string_equals(%nyx_string* %322, %nyx_string* %324)
  br i1 %325, label %then9, label %else10
then9:
  %326 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 3
  %327 = load i1, i1* %326
  ret i1 %327
else10:
  br label %merge11
merge11:
  ret i1 0
}

define internal %nyx_string* @value_to_string(
%Value %v.param) {
  %v.ptr = alloca %Value
  store %Value %v.param, %Value* %v.ptr
  %328 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %329 = load %nyx_string*, %nyx_string** %328
  %330 = getelementptr [4 x i8], [4 x i8]* @.str26, i32 0, i32 0
  %331 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str26.c, i8* %330)
  %332 = call i1 @nyx_string_equals(%nyx_string* %329, %nyx_string* %331)
  br i1 %332, label %then12, label %else13
then12:
  %333 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 1
  %334 = load i64, i64* %333
  %335 = call %nyx_string* @nyx_string_from_int(i64 %334)
  ret %nyx_string* %335
else13:
  br label %merge14
merge14:
  %336 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %337 = load %nyx_string*, %nyx_string** %336
  %338 = getelementptr [6 x i8], [6 x i8]* @.str27, i32 0, i32 0
  %339 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str27.c, i8* %338)
  %340 = call i1 @nyx_string_equals(%nyx_string* %337, %nyx_string* %339)
  br i1 %340, label %then15, label %else16
then15:
  %341 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 2
  %342 = load double, double* %341
  %343 = call %nyx_string* @nyx_string_from_float(double %342)
  ret %nyx_string* %343
else16:
  br label %merge17
merge17:
  %344 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %345 = load %nyx_string*, %nyx_string** %344
  %346 = getelementptr [5 x i8], [5 x i8]* @.str28, i32 0, i32 0
  %347 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str28.c, i8* %346)
  %348 = call i1 @nyx_string_equals(%nyx_string* %345, %nyx_string* %347)
  br i1 %348, label %then18, label %else19
then18:
  %349 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 3
  %350 = load i1, i1* %349
  br i1 %350, label %then21, label %else22
then21:
  %351 = getelementptr [5 x i8], [5 x i8]* @.str29, i32 0, i32 0
  %352 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str29.c, i8* %351)
  ret %nyx_string* %352
else22:
  br label %merge23
merge23:
  %353 = getelementptr [6 x i8], [6 x i8]* @.str30, i32 0, i32 0
  %354 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str30.c, i8* %353)
  ret %nyx_string* %354
else19:
  br label %merge20
merge20:
  %355 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %356 = load %nyx_string*, %nyx_string** %355
  %357 = getelementptr [7 x i8], [7 x i8]* @.str31, i32 0, i32 0
  %358 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str31.c, i8* %357)
  %359 = call i1 @nyx_string_equals(%nyx_string* %356, %nyx_string* %358)
  br i1 %359, label %then24, label %else25
then24:
  %360 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 4
  %361 = load %nyx_string*, %nyx_string** %360
  ret %nyx_string* %361
else25:
  br label %merge26
merge26:
  %362 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %363 = load %nyx_string*, %nyx_string** %362
  %364 = getelementptr [4 x i8], [4 x i8]* @.str32, i32 0, i32 0
  %365 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str32.c, i8* %364)
  %366 = call i1 @nyx_string_equals(%nyx_string* %363, %nyx_string* %365)
  br i1 %366, label %then27, label %else28
then27:
  %367 = getelementptr [4 x i8], [4 x i8]* @.str33, i32 0, i32 0
  %368 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str33.c, i8* %367)
  ret %nyx_string* %368
else28:
  br label %merge29
merge29:
  %369 = getelementptr [2 x i8], [2 x i8]* @.str34, i32 0, i32 0
  %370 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str34.c, i8* %369)
  %371 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %372 = load %nyx_string*, %nyx_string** %371
  %373 = call %nyx_string* @nyx_string_concat(%nyx_string* %370, %nyx_string* %372)
  %374 = getelementptr [2 x i8], [2 x i8]* @.str35, i32 0, i32 0
  %375 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str35.c, i8* %374)
  %376 = call %nyx_string* @nyx_string_concat(%nyx_string* %373, %nyx_string* %375)
  ret %nyx_string* %376
}

define internal i1 @is_truthy(
%Value %v.param) {
  %v.ptr = alloca %Value
  store %Value %v.param, %Value* %v.ptr
  %377 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %378 = load %nyx_string*, %nyx_string** %377
  %379 = getelementptr [5 x i8], [5 x i8]* @.str36, i32 0, i32 0
  %380 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str36.c, i8* %379)
  %381 = call i1 @nyx_string_equals(%nyx_string* %378, %nyx_string* %380)
  br i1 %381, label %then30, label %else31
then30:
  %382 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 3
  %383 = load i1, i1* %382
  ret i1 %383
else31:
  br label %merge32
merge32:
  %384 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %385 = load %nyx_string*, %nyx_string** %384
  %386 = getelementptr [4 x i8], [4 x i8]* @.str37, i32 0, i32 0
  %387 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str37.c, i8* %386)
  %388 = call i1 @nyx_string_equals(%nyx_string* %385, %nyx_string* %387)
  br i1 %388, label %then33, label %else34
then33:
  ret i1 0
else34:
  br label %merge35
merge35:
  %389 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %390 = load %nyx_string*, %nyx_string** %389
  %391 = getelementptr [4 x i8], [4 x i8]* @.str38, i32 0, i32 0
  %392 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str38.c, i8* %391)
  %393 = call i1 @nyx_string_equals(%nyx_string* %390, %nyx_string* %392)
  br i1 %393, label %then36, label %else37
then36:
  %394 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 1
  %395 = load i64, i64* %394
  %396 = icmp ne i64 %395, 0
  ret i1 %396
else37:
  br label %merge38
merge38:
  ret i1 1
}

define internal i1 @values_equal(
%Value %a.param, %Value %b.param) {
  %a.ptr = alloca %Value
  store %Value %a.param, %Value* %a.ptr
  %b.ptr = alloca %Value
  store %Value %b.param, %Value* %b.ptr
  %397 = getelementptr %Value, %Value* %a.ptr, i32 0, i32 0
  %398 = load %nyx_string*, %nyx_string** %397
  %399 = getelementptr %Value, %Value* %b.ptr, i32 0, i32 0
  %400 = load %nyx_string*, %nyx_string** %399
  %401 = call i1 @nyx_string_equals(%nyx_string* %398, %nyx_string* %400)
  %402 = xor i1 %401, true
  br i1 %402, label %then39, label %else40
then39:
  ret i1 0
else40:
  br label %merge41
merge41:
  %403 = getelementptr %Value, %Value* %a.ptr, i32 0, i32 0
  %404 = load %nyx_string*, %nyx_string** %403
  %405 = getelementptr [4 x i8], [4 x i8]* @.str39, i32 0, i32 0
  %406 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str39.c, i8* %405)
  %407 = call i1 @nyx_string_equals(%nyx_string* %404, %nyx_string* %406)
  br i1 %407, label %then42, label %else43
then42:
  %408 = getelementptr %Value, %Value* %a.ptr, i32 0, i32 1
  %409 = load i64, i64* %408
  %410 = getelementptr %Value, %Value* %b.ptr, i32 0, i32 1
  %411 = load i64, i64* %410
  %412 = icmp eq i64 %409, %411
  ret i1 %412
else43:
  br label %merge44
merge44:
  %413 = getelementptr %Value, %Value* %a.ptr, i32 0, i32 0
  %414 = load %nyx_string*, %nyx_string** %413
  %415 = getelementptr [5 x i8], [5 x i8]* @.str40, i32 0, i32 0
  %416 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str40.c, i8* %415)
  %417 = call i1 @nyx_string_equals(%nyx_string* %414, %nyx_string* %416)
  br i1 %417, label %then45, label %else46
then45:
  %418 = getelementptr %Value, %Value* %a.ptr, i32 0, i32 3
  %419 = load i1, i1* %418
  %420 = getelementptr %Value, %Value* %b.ptr, i32 0, i32 3
  %421 = load i1, i1* %420
  %422 = icmp eq i1 %419, %421
  ret i1 %422
else46:
  br label %merge47
merge47:
  %423 = getelementptr %Value, %Value* %a.ptr, i32 0, i32 0
  %424 = load %nyx_string*, %nyx_string** %423
  %425 = getelementptr [7 x i8], [7 x i8]* @.str41, i32 0, i32 0
  %426 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str41.c, i8* %425)
  %427 = call i1 @nyx_string_equals(%nyx_string* %424, %nyx_string* %426)
  br i1 %427, label %then48, label %else49
then48:
  %428 = getelementptr %Value, %Value* %a.ptr, i32 0, i32 4
  %429 = load %nyx_string*, %nyx_string** %428
  %430 = getelementptr %Value, %Value* %b.ptr, i32 0, i32 4
  %431 = load %nyx_string*, %nyx_string** %430
  %432 = call i1 @nyx_string_equals(%nyx_string* %429, %nyx_string* %431)
  ret i1 %432
else49:
  br label %merge50
merge50:
  ret i1 0
}

define internal i64 @print_value(
%Value %v.param) {
  %v.ptr = alloca %Value
  store %Value %v.param, %Value* %v.ptr
  %433 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %434 = load %nyx_string*, %nyx_string** %433
  %435 = getelementptr [4 x i8], [4 x i8]* @.str42, i32 0, i32 0
  %436 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str42.c, i8* %435)
  %437 = call i1 @nyx_string_equals(%nyx_string* %434, %nyx_string* %436)
  br i1 %437, label %then51, label %else52
then51:
  %438 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 1
  %439 = load i64, i64* %438
  call void @nyx_print_int(i64 %439)
  br label %merge53
else52:
  %440 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %441 = load %nyx_string*, %nyx_string** %440
  %442 = getelementptr [6 x i8], [6 x i8]* @.str43, i32 0, i32 0
  %443 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str43.c, i8* %442)
  %444 = call i1 @nyx_string_equals(%nyx_string* %441, %nyx_string* %443)
  br i1 %444, label %then54, label %else55
then54:
  %445 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 2
  %446 = load double, double* %445
  call void @nyx_print_float(double %446)
  br label %merge56
else55:
  %447 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %448 = load %nyx_string*, %nyx_string** %447
  %449 = getelementptr [5 x i8], [5 x i8]* @.str44, i32 0, i32 0
  %450 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str44.c, i8* %449)
  %451 = call i1 @nyx_string_equals(%nyx_string* %448, %nyx_string* %450)
  br i1 %451, label %then57, label %else58
then57:
  %452 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 3
  %453 = load i1, i1* %452
  br i1 %453, label %then60, label %else61
then60:
  %454 = getelementptr [5 x i8], [5 x i8]* @.str45, i32 0, i32 0
  %455 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str45.c, i8* %454)
  %456 = call i8* @nyx_string_to_cstr(%nyx_string* %455)
  call void @nyx_print_string(i8* %456)
  br label %merge62
else61:
  %457 = getelementptr [6 x i8], [6 x i8]* @.str46, i32 0, i32 0
  %458 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str46.c, i8* %457)
  %459 = call i8* @nyx_string_to_cstr(%nyx_string* %458)
  call void @nyx_print_string(i8* %459)
  br label %merge62
merge62:
  br label %merge59
else58:
  %460 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %461 = load %nyx_string*, %nyx_string** %460
  %462 = getelementptr [7 x i8], [7 x i8]* @.str47, i32 0, i32 0
  %463 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str47.c, i8* %462)
  %464 = call i1 @nyx_string_equals(%nyx_string* %461, %nyx_string* %463)
  br i1 %464, label %then63, label %else64
then63:
  %465 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 4
  %466 = load %nyx_string*, %nyx_string** %465
  %467 = call i8* @nyx_string_to_cstr(%nyx_string* %466)
  call void @nyx_print_string(i8* %467)
  br label %merge65
else64:
  %468 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %469 = load %nyx_string*, %nyx_string** %468
  %470 = getelementptr [4 x i8], [4 x i8]* @.str48, i32 0, i32 0
  %471 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str48.c, i8* %470)
  %472 = call i1 @nyx_string_equals(%nyx_string* %469, %nyx_string* %471)
  br i1 %472, label %then66, label %else67
then66:
  %473 = getelementptr [4 x i8], [4 x i8]* @.str49, i32 0, i32 0
  %474 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str49.c, i8* %473)
  %475 = call i8* @nyx_string_to_cstr(%nyx_string* %474)
  call void @nyx_print_string(i8* %475)
  br label %merge68
else67:
  %476 = getelementptr [2 x i8], [2 x i8]* @.str50, i32 0, i32 0
  %477 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str50.c, i8* %476)
  %478 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %479 = load %nyx_string*, %nyx_string** %478
  %480 = call %nyx_string* @nyx_string_concat(%nyx_string* %477, %nyx_string* %479)
  %481 = getelementptr [2 x i8], [2 x i8]* @.str51, i32 0, i32 0
  %482 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str51.c, i8* %481)
  %483 = call %nyx_string* @nyx_string_concat(%nyx_string* %480, %nyx_string* %482)
  %484 = call i8* @nyx_string_to_cstr(%nyx_string* %483)
  call void @nyx_print_string(i8* %484)
  br label %merge68
merge68:
  br label %merge65
merge65:
  br label %merge59
merge59:
  br label %merge56
merge56:
  br label %merge53
merge53:
  ret i64 0
}

define internal { i64, i8* }* @get_func_params(
%Value %func_value.param) {
  %func_value.ptr = alloca %Value
  store %Value %func_value.param, %Value* %func_value.ptr
  %485 = getelementptr %Value, %Value* %func_value.ptr, i32 0, i32 6
  %486 = load { i64, i8* }*, { i64, i8* }** %485
  ret { i64, i8* }* %486
}

define internal %nyx_string* @get_func_body_type(
%Value %func_value.param) {
  %func_value.ptr = alloca %Value
  store %Value %func_value.param, %Value* %func_value.ptr
  %487 = getelementptr %Value, %Value* %func_value.ptr, i32 0, i32 7
  %488 = load %nyx_string*, %nyx_string** %487
  ret %nyx_string* %488
}

define internal { i64, i8* }* @get_func_body_data(
%Value %func_value.param) {
  %func_value.ptr = alloca %Value
  store %Value %func_value.param, %Value* %func_value.ptr
  %489 = getelementptr %Value, %Value* %func_value.ptr, i32 0, i32 8
  %490 = load { i64, i8* }*, { i64, i8* }** %489
  ret { i64, i8* }* %490
}

define internal i8* @get_func_env_bindings(
%Value %func_value.param) {
  %func_value.ptr = alloca %Value
  store %Value %func_value.param, %Value* %func_value.ptr
  %491 = getelementptr %Value, %Value* %func_value.ptr, i32 0, i32 9
  %492 = load i8*, i8** %491
  ret i8* %492
}

define internal { i64, i8* }* @get_func_env_parent(
%Value %func_value.param) {
  %func_value.ptr = alloca %Value
  store %Value %func_value.param, %Value* %func_value.ptr
  %493 = getelementptr %Value, %Value* %func_value.ptr, i32 0, i32 10
  %494 = load { i64, i8* }*, { i64, i8* }** %493
  ret { i64, i8* }* %494
}

define internal %Environment @make_env(
) {
  %495 = call i8* @nyx_map_new(i32 0)
  %496 = alloca i8*
  store i8* %495, i8** %496
  %497 = call { i64, i8* }* @nyx_array_new_ptr()
  %498 = alloca { i64, i8* }*
  store { i64, i8* }* %497, { i64, i8* }** %498
  %499 = getelementptr %Environment, %Environment* null, i32 1
  %500 = ptrtoint %Environment* %499 to i64
  %501 = call i8* @GC_malloc(i64 %500)
  %502 = bitcast i8* %501 to %Environment*
  %503 = load i8*, i8** %496
  %504 = getelementptr %Environment, %Environment* %502, i32 0, i32 0
  store i8* %503, i8** %504
  %505 = load { i64, i8* }*, { i64, i8* }** %498
  %506 = getelementptr %Environment, %Environment* %502, i32 0, i32 1
  store { i64, i8* }* %505, { i64, i8* }** %506
  %507 = load %Environment, %Environment* %502
  ret %Environment %507
}

define internal %Environment @make_child_env(
%Environment %parent.param) {
  %parent.ptr = alloca %Environment
  store %Environment %parent.param, %Environment* %parent.ptr
  %508 = call i8* @nyx_map_new(i32 0)
  %509 = alloca i8*
  store i8* %508, i8** %509
  %510 = call { i64, i8* }* @nyx_array_new_ptr()
  %511 = alloca { i64, i8* }*
  store { i64, i8* }* %510, { i64, i8* }** %511
  %512 = load { i64, i8* }*, { i64, i8* }** %511
  %513 = load %Environment, %Environment* %parent.ptr
  %514 = getelementptr %Environment, %Environment* null, i32 1
  %515 = ptrtoint %Environment* %514 to i64
  %516 = call i8* @GC_malloc(i64 %515)
  %517 = bitcast i8* %516 to %Environment*
  store %Environment %513, %Environment* %517
  %518 = ptrtoint %Environment* %517 to i64
  call void @nyx_array_push({ i64, i8* }* %512, i64 %518)
  %519 = getelementptr %Environment, %Environment* null, i32 1
  %520 = ptrtoint %Environment* %519 to i64
  %521 = call i8* @GC_malloc(i64 %520)
  %522 = bitcast i8* %521 to %Environment*
  %523 = load i8*, i8** %509
  %524 = getelementptr %Environment, %Environment* %522, i32 0, i32 0
  store i8* %523, i8** %524
  %525 = load { i64, i8* }*, { i64, i8* }** %511
  %526 = getelementptr %Environment, %Environment* %522, i32 0, i32 1
  store { i64, i8* }* %525, { i64, i8* }** %526
  %527 = load %Environment, %Environment* %522
  ret %Environment %527
}

define internal i64 @env_define(
%Environment %env.param, %nyx_string* %name.param, %Value %value.param) {
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %value.ptr = alloca %Value
  store %Value %value.param, %Value* %value.ptr
  %528 = getelementptr %Environment, %Environment* %env.ptr, i32 0, i32 0
  %529 = load i8*, i8** %528
  %530 = load %nyx_string*, %nyx_string** %name.ptr
  %531 = load %Value, %Value* %value.ptr
  %532 = call i8* @nyx_string_to_cstr(%nyx_string* %530)
  %533 = getelementptr %Value, %Value* null, i32 1
  %534 = ptrtoint %Value* %533 to i64
  %535 = call i8* @GC_malloc(i64 %534)
  %536 = bitcast i8* %535 to %Value*
  store %Value %531, %Value* %536
  %537 = ptrtoint %Value* %536 to i64
  call void @nyx_map_insert_int(i8* %529, i8* %532, i64 %537)
  ret i64 0
}

define internal %Value @env_get(
%Environment %env.param, %nyx_string* %name.param) {
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %538 = getelementptr %Environment, %Environment* %env.ptr, i32 0, i32 0
  %539 = load i8*, i8** %538
  %540 = load %nyx_string*, %nyx_string** %name.ptr
  %541 = call i8* @nyx_string_to_cstr(%nyx_string* %540)
  %542 = call i1 @nyx_map_contains_str(i8* %539, i8* %541)
  br i1 %542, label %then69, label %else70
then69:
  %543 = getelementptr %Environment, %Environment* %env.ptr, i32 0, i32 0
  %544 = load i8*, i8** %543
  %545 = load %nyx_string*, %nyx_string** %name.ptr
  %546 = call i8* @nyx_string_to_cstr(%nyx_string* %545)
  %547 = call i64 @nyx_map_get_int(i8* %544, i8* %546)
  %548 = inttoptr i64 %547 to %Value*
  %549 = load %Value, %Value* %548
  ret %Value %549
else70:
  br label %merge71
merge71:
  %550 = getelementptr %Environment, %Environment* %env.ptr, i32 0, i32 1
  %551 = load { i64, i8* }*, { i64, i8* }** %550
  %552 = call i64 @nyx_array_length({ i64, i8* }* %551)
  %553 = icmp sgt i64 %552, 0
  br i1 %553, label %then72, label %else73
then72:
  %554 = getelementptr %Environment, %Environment* %env.ptr, i32 0, i32 1
  %555 = load { i64, i8* }*, { i64, i8* }** %554
  %556 = call i64 @nyx_array_get({ i64, i8* }* %555, i64 0)
  %557 = inttoptr i64 %556 to %Environment*
  %558 = load %Environment, %Environment* %557
  %559 = alloca %Environment
  store %Environment %558, %Environment* %559
  %560 = load %Environment, %Environment* %559
  %561 = load %nyx_string*, %nyx_string** %name.ptr
  %562 = call %Value @env_get(%Environment %560, %nyx_string* %561)
  ret %Value %562
else73:
  br label %merge74
merge74:
  %563 = getelementptr [30 x i8], [30 x i8]* @.str52, i32 0, i32 0
  %564 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str52.c, i8* %563)
  %565 = load %nyx_string*, %nyx_string** %name.ptr
  %566 = call %nyx_string* @nyx_string_concat(%nyx_string* %564, %nyx_string* %565)
  %567 = call i8* @nyx_string_to_cstr(%nyx_string* %566)
  call void @nyx_print_string(i8* %567)
  %568 = call %Value @make_nil()
  ret %Value %568
}

define internal i1 @env_set(
%Environment %env.param, %nyx_string* %name.param, %Value %value.param) {
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %value.ptr = alloca %Value
  store %Value %value.param, %Value* %value.ptr
  %569 = getelementptr %Environment, %Environment* %env.ptr, i32 0, i32 0
  %570 = load i8*, i8** %569
  %571 = load %nyx_string*, %nyx_string** %name.ptr
  %572 = call i8* @nyx_string_to_cstr(%nyx_string* %571)
  %573 = call i1 @nyx_map_contains_str(i8* %570, i8* %572)
  br i1 %573, label %then75, label %else76
then75:
  %574 = getelementptr %Environment, %Environment* %env.ptr, i32 0, i32 0
  %575 = load i8*, i8** %574
  %576 = load %nyx_string*, %nyx_string** %name.ptr
  %577 = load %Value, %Value* %value.ptr
  %578 = call i8* @nyx_string_to_cstr(%nyx_string* %576)
  %579 = getelementptr %Value, %Value* null, i32 1
  %580 = ptrtoint %Value* %579 to i64
  %581 = call i8* @GC_malloc(i64 %580)
  %582 = bitcast i8* %581 to %Value*
  store %Value %577, %Value* %582
  %583 = ptrtoint %Value* %582 to i64
  call void @nyx_map_insert_int(i8* %575, i8* %578, i64 %583)
  ret i1 1
else76:
  br label %merge77
merge77:
  %584 = getelementptr %Environment, %Environment* %env.ptr, i32 0, i32 1
  %585 = load { i64, i8* }*, { i64, i8* }** %584
  %586 = call i64 @nyx_array_length({ i64, i8* }* %585)
  %587 = icmp sgt i64 %586, 0
  br i1 %587, label %then78, label %else79
then78:
  %588 = getelementptr %Environment, %Environment* %env.ptr, i32 0, i32 1
  %589 = load { i64, i8* }*, { i64, i8* }** %588
  %590 = call i64 @nyx_array_get({ i64, i8* }* %589, i64 0)
  %591 = inttoptr i64 %590 to %Environment*
  %592 = load %Environment, %Environment* %591
  %593 = alloca %Environment
  store %Environment %592, %Environment* %593
  %594 = load %Environment, %Environment* %593
  %595 = load %nyx_string*, %nyx_string** %name.ptr
  %596 = load %Value, %Value* %value.ptr
  %597 = call i1 @env_set(%Environment %594, %nyx_string* %595, %Value %596)
  ret i1 %597
else79:
  br label %merge80
merge80:
  ret i1 0
}

define internal %Value @eval_expr(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %598 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %599 = call %nyx_string* @astnode_get_type({ i64, i8* }* %598)
  %600 = alloca %nyx_string*
  store %nyx_string* %599, %nyx_string** %600
  %601 = load %nyx_string*, %nyx_string** %600
  %602 = getelementptr [7 x i8], [7 x i8]* @.str53, i32 0, i32 0
  %603 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str53.c, i8* %602)
  %604 = call i1 @nyx_string_equals(%nyx_string* %601, %nyx_string* %603)
  br i1 %604, label %then81, label %else82
then81:
  %605 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %606 = call %Value @eval_number({ i64, i8* }* %605)
  ret %Value %606
else82:
  br label %merge83
merge83:
  %607 = load %nyx_string*, %nyx_string** %600
  %608 = getelementptr [5 x i8], [5 x i8]* @.str54, i32 0, i32 0
  %609 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str54.c, i8* %608)
  %610 = call i1 @nyx_string_equals(%nyx_string* %607, %nyx_string* %609)
  br i1 %610, label %then84, label %else85
then84:
  %611 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %612 = call %Value @eval_bool({ i64, i8* }* %611)
  ret %Value %612
else85:
  br label %merge86
merge86:
  %613 = load %nyx_string*, %nyx_string** %600
  %614 = getelementptr [7 x i8], [7 x i8]* @.str55, i32 0, i32 0
  %615 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str55.c, i8* %614)
  %616 = call i1 @nyx_string_equals(%nyx_string* %613, %nyx_string* %615)
  br i1 %616, label %then87, label %else88
then87:
  %617 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %618 = call %Value @eval_string({ i64, i8* }* %617)
  ret %Value %618
else88:
  br label %merge89
merge89:
  %619 = load %nyx_string*, %nyx_string** %600
  %620 = getelementptr [11 x i8], [11 x i8]* @.str56, i32 0, i32 0
  %621 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str56.c, i8* %620)
  %622 = call i1 @nyx_string_equals(%nyx_string* %619, %nyx_string* %621)
  br i1 %622, label %then90, label %else91
then90:
  %623 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %624 = load %Environment, %Environment* %env.ptr
  %625 = call %Value @eval_identifier({ i64, i8* }* %623, %Environment %624)
  ret %Value %625
else91:
  br label %merge92
merge92:
  %626 = load %nyx_string*, %nyx_string** %600
  %627 = getelementptr [6 x i8], [6 x i8]* @.str57, i32 0, i32 0
  %628 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str57.c, i8* %627)
  %629 = call i1 @nyx_string_equals(%nyx_string* %626, %nyx_string* %628)
  br i1 %629, label %then93, label %else94
then93:
  %630 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %631 = load %Environment, %Environment* %env.ptr
  %632 = call %Value @eval_binop({ i64, i8* }* %630, %Environment %631)
  ret %Value %632
else94:
  br label %merge95
merge95:
  %633 = load %nyx_string*, %nyx_string** %600
  %634 = getelementptr [5 x i8], [5 x i8]* @.str58, i32 0, i32 0
  %635 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str58.c, i8* %634)
  %636 = call i1 @nyx_string_equals(%nyx_string* %633, %nyx_string* %635)
  br i1 %636, label %then96, label %else97
then96:
  %637 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %638 = load %Environment, %Environment* %env.ptr
  %639 = call %Value @eval_unop({ i64, i8* }* %637, %Environment %638)
  ret %Value %639
else97:
  br label %merge98
merge98:
  %640 = load %nyx_string*, %nyx_string** %600
  %641 = getelementptr [5 x i8], [5 x i8]* @.str59, i32 0, i32 0
  %642 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str59.c, i8* %641)
  %643 = call i1 @nyx_string_equals(%nyx_string* %640, %nyx_string* %642)
  br i1 %643, label %then99, label %else100
then99:
  %644 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %645 = load %Environment, %Environment* %env.ptr
  %646 = call %Value @eval_call({ i64, i8* }* %644, %Environment %645)
  ret %Value %646
else100:
  br label %merge101
merge101:
  %647 = load %nyx_string*, %nyx_string** %600
  %648 = getelementptr [6 x i8], [6 x i8]* @.str60, i32 0, i32 0
  %649 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str60.c, i8* %648)
  %650 = call i1 @nyx_string_equals(%nyx_string* %647, %nyx_string* %649)
  br i1 %650, label %then102, label %else103
then102:
  %651 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %652 = load %Environment, %Environment* %env.ptr
  %653 = call %Value @eval_array({ i64, i8* }* %651, %Environment %652)
  ret %Value %653
else103:
  br label %merge104
merge104:
  %654 = load %nyx_string*, %nyx_string** %600
  %655 = getelementptr [6 x i8], [6 x i8]* @.str61, i32 0, i32 0
  %656 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str61.c, i8* %655)
  %657 = call i1 @nyx_string_equals(%nyx_string* %654, %nyx_string* %656)
  br i1 %657, label %then105, label %else106
then105:
  %658 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %659 = load %Environment, %Environment* %env.ptr
  %660 = call %Value @eval_index({ i64, i8* }* %658, %Environment %659)
  ret %Value %660
else106:
  br label %merge107
merge107:
  %661 = load %nyx_string*, %nyx_string** %600
  %662 = getelementptr [12 x i8], [12 x i8]* @.str62, i32 0, i32 0
  %663 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str62.c, i8* %662)
  %664 = call i1 @nyx_string_equals(%nyx_string* %661, %nyx_string* %663)
  br i1 %664, label %then108, label %else109
then108:
  %665 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %666 = load %Environment, %Environment* %env.ptr
  %667 = call %Value @eval_method_call({ i64, i8* }* %665, %Environment %666)
  ret %Value %667
else109:
  br label %merge110
merge110:
  %668 = getelementptr [26 x i8], [26 x i8]* @.str63, i32 0, i32 0
  %669 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str63.c, i8* %668)
  %670 = load %nyx_string*, %nyx_string** %600
  %671 = call %nyx_string* @nyx_string_concat(%nyx_string* %669, %nyx_string* %670)
  %672 = call i8* @nyx_string_to_cstr(%nyx_string* %671)
  call void @nyx_print_string(i8* %672)
  %673 = call %Value @make_nil()
  ret %Value %673
}

define internal %Value @eval_number(
{ i64, i8* }* %node.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %674 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %675 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %674)
  %676 = alloca { i64, i8* }*
  store { i64, i8* }* %675, { i64, i8* }** %676
  %677 = load { i64, i8* }*, { i64, i8* }** %676
  %678 = call i64 @nyx_array_get_checked({ i64, i8* }* %677, i64 0, i64 2)
  %679 = inttoptr i64 %678 to %nyx_string*
  %680 = alloca %nyx_string*
  store %nyx_string* %679, %nyx_string** %680
  %681 = load %nyx_string*, %nyx_string** %680
  %682 = getelementptr [2 x i8], [2 x i8]* @.str64, i32 0, i32 0
  %683 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str64.c, i8* %682)
  %684 = call i64 @nyx_string_index_of(%nyx_string* %681, %nyx_string* %683)
  %685 = icmp sge i64 %684, 0
  br i1 %685, label %then111, label %else112
then111:
  %686 = load %nyx_string*, %nyx_string** %680
  %687 = call double @nyx_string_to_float(%nyx_string* %686)
  %688 = alloca double
  store double %687, double* %688
  %689 = load double, double* %688
  %690 = call %Value @make_float(double %689)
  ret %Value %690
else112:
  br label %merge113
merge113:
  %691 = load %nyx_string*, %nyx_string** %680
  %692 = call i64 @nyx_string_to_int(%nyx_string* %691)
  %693 = alloca i64
  store i64 %692, i64* %693
  %694 = load i64, i64* %693
  %695 = call %Value @make_int(i64 %694)
  ret %Value %695
}

define internal %Value @eval_bool(
{ i64, i8* }* %node.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %696 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %697 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %696)
  %698 = alloca { i64, i8* }*
  store { i64, i8* }* %697, { i64, i8* }** %698
  %699 = load { i64, i8* }*, { i64, i8* }** %698
  %700 = call i64 @nyx_array_get_checked({ i64, i8* }* %699, i64 0, i64 2)
  %701 = inttoptr i64 %700 to %nyx_string*
  %702 = alloca %nyx_string*
  store %nyx_string* %701, %nyx_string** %702
  %703 = load %nyx_string*, %nyx_string** %702
  %704 = getelementptr [5 x i8], [5 x i8]* @.str65, i32 0, i32 0
  %705 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str65.c, i8* %704)
  %706 = call i1 @nyx_string_equals(%nyx_string* %703, %nyx_string* %705)
  %707 = call %Value @make_bool(i1 %706)
  ret %Value %707
}

define internal %Value @eval_string(
{ i64, i8* }* %node.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %708 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %709 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %708)
  %710 = alloca { i64, i8* }*
  store { i64, i8* }* %709, { i64, i8* }** %710
  %711 = load { i64, i8* }*, { i64, i8* }** %710
  %712 = call i64 @nyx_array_get({ i64, i8* }* %711, i64 0)
  %713 = inttoptr i64 %712 to %nyx_string*
  %714 = call %Value @make_string(%nyx_string* %713)
  ret %Value %714
}

define internal %Value @eval_identifier(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %715 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %716 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %715)
  %717 = alloca { i64, i8* }*
  store { i64, i8* }* %716, { i64, i8* }** %717
  %718 = load { i64, i8* }*, { i64, i8* }** %717
  %719 = call i64 @nyx_array_get_checked({ i64, i8* }* %718, i64 0, i64 2)
  %720 = inttoptr i64 %719 to %nyx_string*
  %721 = alloca %nyx_string*
  store %nyx_string* %720, %nyx_string** %721
  %722 = load %Environment, %Environment* %env.ptr
  %723 = load %nyx_string*, %nyx_string** %721
  %724 = call %Value @env_get(%Environment %722, %nyx_string* %723)
  ret %Value %724
}

define internal %Value @eval_binop(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %725 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %726 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %725)
  %727 = alloca { i64, i8* }*
  store { i64, i8* }* %726, { i64, i8* }** %727
  %728 = load { i64, i8* }*, { i64, i8* }** %727
  %729 = call i64 @nyx_array_get_checked({ i64, i8* }* %728, i64 0, i64 2)
  %730 = inttoptr i64 %729 to %nyx_string*
  %731 = alloca %nyx_string*
  store %nyx_string* %730, %nyx_string** %731
  %732 = load { i64, i8* }*, { i64, i8* }** %727
  %733 = call i64 @nyx_array_get({ i64, i8* }* %732, i64 1)
  %734 = inttoptr i64 %733 to { i64, i8* }*
  %735 = alloca { i64, i8* }*
  store { i64, i8* }* %734, { i64, i8* }** %735
  %736 = load { i64, i8* }*, { i64, i8* }** %735
  %737 = load %Environment, %Environment* %env.ptr
  %738 = call %Value @eval_expr({ i64, i8* }* %736, %Environment %737)
  %739 = alloca %Value
  store %Value %738, %Value* %739
  %740 = load { i64, i8* }*, { i64, i8* }** %727
  %741 = call i64 @nyx_array_get({ i64, i8* }* %740, i64 2)
  %742 = inttoptr i64 %741 to { i64, i8* }*
  %743 = alloca { i64, i8* }*
  store { i64, i8* }* %742, { i64, i8* }** %743
  %744 = load { i64, i8* }*, { i64, i8* }** %743
  %745 = load %Environment, %Environment* %env.ptr
  %746 = call %Value @eval_expr({ i64, i8* }* %744, %Environment %745)
  %747 = alloca %Value
  store %Value %746, %Value* %747
  %748 = alloca i1
  store i1 true, i1* %748
  %749 = getelementptr %Value, %Value* %739, i32 0, i32 0
  %750 = load %nyx_string*, %nyx_string** %749
  %751 = getelementptr [6 x i8], [6 x i8]* @.str66, i32 0, i32 0
  %752 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str66.c, i8* %751)
  %753 = call i1 @nyx_string_equals(%nyx_string* %750, %nyx_string* %752)
  br i1 %753, label %sc_or_end115, label %sc_or_rhs114
sc_or_rhs114:
  %754 = getelementptr %Value, %Value* %747, i32 0, i32 0
  %755 = load %nyx_string*, %nyx_string** %754
  %756 = getelementptr [6 x i8], [6 x i8]* @.str67, i32 0, i32 0
  %757 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str67.c, i8* %756)
  %758 = call i1 @nyx_string_equals(%nyx_string* %755, %nyx_string* %757)
  store i1 %758, i1* %748
  br label %sc_or_end115
sc_or_end115:
  %759 = load i1, i1* %748
  %760 = alloca i1
  store i1 %759, i1* %760
  %761 = load %nyx_string*, %nyx_string** %731
  %762 = getelementptr [5 x i8], [5 x i8]* @.str68, i32 0, i32 0
  %763 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str68.c, i8* %762)
  %764 = call i1 @nyx_string_equals(%nyx_string* %761, %nyx_string* %763)
  br i1 %764, label %then116, label %else117
then116:
  %765 = getelementptr %Value, %Value* %739, i32 0, i32 0
  %766 = load %nyx_string*, %nyx_string** %765
  %767 = getelementptr [7 x i8], [7 x i8]* @.str69, i32 0, i32 0
  %768 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str69.c, i8* %767)
  %769 = call i1 @nyx_string_equals(%nyx_string* %766, %nyx_string* %768)
  br i1 %769, label %then119, label %else120
then119:
  %770 = load %Value, %Value* %739
  %771 = call %nyx_string* @value_to_string(%Value %770)
  %772 = alloca %nyx_string*
  store %nyx_string* %771, %nyx_string** %772
  %773 = load %Value, %Value* %747
  %774 = call %nyx_string* @value_to_string(%Value %773)
  %775 = alloca %nyx_string*
  store %nyx_string* %774, %nyx_string** %775
  %776 = load %nyx_string*, %nyx_string** %772
  %777 = load %nyx_string*, %nyx_string** %775
  %778 = call %nyx_string* @nyx_string_concat(%nyx_string* %776, %nyx_string* %777)
  %779 = call %Value @make_string(%nyx_string* %778)
  ret %Value %779
else120:
  br label %merge121
merge121:
  %780 = load i1, i1* %760
  br i1 %780, label %then122, label %else123
then122:
  %781 = load %Value, %Value* %739
  %782 = call double @value_to_float(%Value %781)
  %783 = load %Value, %Value* %747
  %784 = call double @value_to_float(%Value %783)
  %785 = fadd double %782, %784
  %786 = call %Value @make_float(double %785)
  ret %Value %786
else123:
  br label %merge124
merge124:
  %787 = load %Value, %Value* %739
  %788 = call i64 @value_to_int(%Value %787)
  %789 = load %Value, %Value* %747
  %790 = call i64 @value_to_int(%Value %789)
  %791 = add i64 %788, %790
  %792 = call %Value @make_int(i64 %791)
  ret %Value %792
else117:
  br label %merge118
merge118:
  %793 = load %nyx_string*, %nyx_string** %731
  %794 = getelementptr [6 x i8], [6 x i8]* @.str70, i32 0, i32 0
  %795 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str70.c, i8* %794)
  %796 = call i1 @nyx_string_equals(%nyx_string* %793, %nyx_string* %795)
  br i1 %796, label %then125, label %else126
then125:
  %797 = load i1, i1* %760
  br i1 %797, label %then128, label %else129
then128:
  %798 = load %Value, %Value* %739
  %799 = call double @value_to_float(%Value %798)
  %800 = load %Value, %Value* %747
  %801 = call double @value_to_float(%Value %800)
  %802 = fsub double %799, %801
  %803 = call %Value @make_float(double %802)
  ret %Value %803
else129:
  br label %merge130
merge130:
  %804 = load %Value, %Value* %739
  %805 = call i64 @value_to_int(%Value %804)
  %806 = load %Value, %Value* %747
  %807 = call i64 @value_to_int(%Value %806)
  %808 = sub i64 %805, %807
  %809 = call %Value @make_int(i64 %808)
  ret %Value %809
else126:
  br label %merge127
merge127:
  %810 = load %nyx_string*, %nyx_string** %731
  %811 = getelementptr [5 x i8], [5 x i8]* @.str71, i32 0, i32 0
  %812 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str71.c, i8* %811)
  %813 = call i1 @nyx_string_equals(%nyx_string* %810, %nyx_string* %812)
  br i1 %813, label %then131, label %else132
then131:
  %814 = load i1, i1* %760
  br i1 %814, label %then134, label %else135
then134:
  %815 = load %Value, %Value* %739
  %816 = call double @value_to_float(%Value %815)
  %817 = load %Value, %Value* %747
  %818 = call double @value_to_float(%Value %817)
  %819 = fmul double %816, %818
  %820 = call %Value @make_float(double %819)
  ret %Value %820
else135:
  br label %merge136
merge136:
  %821 = load %Value, %Value* %739
  %822 = call i64 @value_to_int(%Value %821)
  %823 = load %Value, %Value* %747
  %824 = call i64 @value_to_int(%Value %823)
  %825 = mul i64 %822, %824
  %826 = call %Value @make_int(i64 %825)
  ret %Value %826
else132:
  br label %merge133
merge133:
  %827 = load %nyx_string*, %nyx_string** %731
  %828 = getelementptr [6 x i8], [6 x i8]* @.str72, i32 0, i32 0
  %829 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str72.c, i8* %828)
  %830 = call i1 @nyx_string_equals(%nyx_string* %827, %nyx_string* %829)
  br i1 %830, label %then137, label %else138
then137:
  %831 = load i1, i1* %760
  br i1 %831, label %then140, label %else141
then140:
  %832 = load %Value, %Value* %747
  %833 = call double @value_to_float(%Value %832)
  %834 = alloca double
  store double %833, double* %834
  %835 = load %Value, %Value* %739
  %836 = call double @value_to_float(%Value %835)
  %837 = load double, double* %834
  %838 = fdiv double %836, %837
  %839 = call %Value @make_float(double %838)
  ret %Value %839
else141:
  br label %merge142
merge142:
  %840 = load %Value, %Value* %747
  %841 = call i64 @value_to_int(%Value %840)
  %842 = alloca i64
  store i64 %841, i64* %842
  %843 = load i64, i64* %842
  %844 = icmp ne i64 %843, 0
  br i1 %844, label %then143, label %else144
then143:
  %845 = load %Value, %Value* %739
  %846 = call i64 @value_to_int(%Value %845)
  %847 = load i64, i64* %842
  %848 = sdiv i64 %846, %847
  %849 = call %Value @make_int(i64 %848)
  ret %Value %849
else144:
  br label %merge145
merge145:
  %850 = getelementptr [26 x i8], [26 x i8]* @.str73, i32 0, i32 0
  %851 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str73.c, i8* %850)
  %852 = call i8* @nyx_string_to_cstr(%nyx_string* %851)
  call void @nyx_print_string(i8* %852)
  %853 = call %Value @make_nil()
  ret %Value %853
else138:
  br label %merge139
merge139:
  %854 = load %nyx_string*, %nyx_string** %731
  %855 = getelementptr [8 x i8], [8 x i8]* @.str74, i32 0, i32 0
  %856 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str74.c, i8* %855)
  %857 = call i1 @nyx_string_equals(%nyx_string* %854, %nyx_string* %856)
  br i1 %857, label %then146, label %else147
then146:
  %858 = load %Value, %Value* %739
  %859 = call i64 @value_to_int(%Value %858)
  %860 = alloca i64
  store i64 %859, i64* %860
  %861 = load %Value, %Value* %747
  %862 = call i64 @value_to_int(%Value %861)
  %863 = alloca i64
  store i64 %862, i64* %863
  %864 = load i64, i64* %860
  %865 = load i64, i64* %863
  %866 = srem i64 %864, %865
  %867 = call %Value @make_int(i64 %866)
  ret %Value %867
else147:
  br label %merge148
merge148:
  %868 = load %nyx_string*, %nyx_string** %731
  %869 = getelementptr [12 x i8], [12 x i8]* @.str75, i32 0, i32 0
  %870 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str75.c, i8* %869)
  %871 = call i1 @nyx_string_equals(%nyx_string* %868, %nyx_string* %870)
  br i1 %871, label %then149, label %else150
then149:
  %872 = load %Value, %Value* %739
  %873 = load %Value, %Value* %747
  %874 = call i1 @values_equal(%Value %872, %Value %873)
  %875 = call %Value @make_bool(i1 %874)
  ret %Value %875
else150:
  br label %merge151
merge151:
  %876 = load %nyx_string*, %nyx_string** %731
  %877 = getelementptr [10 x i8], [10 x i8]* @.str76, i32 0, i32 0
  %878 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str76.c, i8* %877)
  %879 = call i1 @nyx_string_equals(%nyx_string* %876, %nyx_string* %878)
  br i1 %879, label %then152, label %else153
then152:
  %880 = load %Value, %Value* %739
  %881 = load %Value, %Value* %747
  %882 = call i1 @values_equal(%Value %880, %Value %881)
  %883 = xor i1 %882, true
  %884 = call %Value @make_bool(i1 %883)
  ret %Value %884
else153:
  br label %merge154
merge154:
  %885 = load %nyx_string*, %nyx_string** %731
  %886 = getelementptr [5 x i8], [5 x i8]* @.str77, i32 0, i32 0
  %887 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str77.c, i8* %886)
  %888 = call i1 @nyx_string_equals(%nyx_string* %885, %nyx_string* %887)
  br i1 %888, label %then155, label %else156
then155:
  %889 = load i1, i1* %760
  br i1 %889, label %then158, label %else159
then158:
  %890 = load %Value, %Value* %739
  %891 = call double @value_to_float(%Value %890)
  %892 = load %Value, %Value* %747
  %893 = call double @value_to_float(%Value %892)
  %894 = fcmp olt double %891, %893
  %895 = call %Value @make_bool(i1 %894)
  ret %Value %895
else159:
  br label %merge160
merge160:
  %896 = load %Value, %Value* %739
  %897 = call i64 @value_to_int(%Value %896)
  %898 = load %Value, %Value* %747
  %899 = call i64 @value_to_int(%Value %898)
  %900 = icmp slt i64 %897, %899
  %901 = call %Value @make_bool(i1 %900)
  ret %Value %901
else156:
  br label %merge157
merge157:
  %902 = load %nyx_string*, %nyx_string** %731
  %903 = getelementptr [8 x i8], [8 x i8]* @.str78, i32 0, i32 0
  %904 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str78.c, i8* %903)
  %905 = call i1 @nyx_string_equals(%nyx_string* %902, %nyx_string* %904)
  br i1 %905, label %then161, label %else162
then161:
  %906 = load i1, i1* %760
  br i1 %906, label %then164, label %else165
then164:
  %907 = load %Value, %Value* %739
  %908 = call double @value_to_float(%Value %907)
  %909 = load %Value, %Value* %747
  %910 = call double @value_to_float(%Value %909)
  %911 = fcmp ogt double %908, %910
  %912 = call %Value @make_bool(i1 %911)
  ret %Value %912
else165:
  br label %merge166
merge166:
  %913 = load %Value, %Value* %739
  %914 = call i64 @value_to_int(%Value %913)
  %915 = load %Value, %Value* %747
  %916 = call i64 @value_to_int(%Value %915)
  %917 = icmp sgt i64 %914, %916
  %918 = call %Value @make_bool(i1 %917)
  ret %Value %918
else162:
  br label %merge163
merge163:
  %919 = load %nyx_string*, %nyx_string** %731
  %920 = getelementptr [11 x i8], [11 x i8]* @.str79, i32 0, i32 0
  %921 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str79.c, i8* %920)
  %922 = call i1 @nyx_string_equals(%nyx_string* %919, %nyx_string* %921)
  br i1 %922, label %then167, label %else168
then167:
  %923 = load i1, i1* %760
  br i1 %923, label %then170, label %else171
then170:
  %924 = load %Value, %Value* %739
  %925 = call double @value_to_float(%Value %924)
  %926 = load %Value, %Value* %747
  %927 = call double @value_to_float(%Value %926)
  %928 = fcmp ole double %925, %927
  %929 = call %Value @make_bool(i1 %928)
  ret %Value %929
else171:
  br label %merge172
merge172:
  %930 = load %Value, %Value* %739
  %931 = call i64 @value_to_int(%Value %930)
  %932 = load %Value, %Value* %747
  %933 = call i64 @value_to_int(%Value %932)
  %934 = icmp sle i64 %931, %933
  %935 = call %Value @make_bool(i1 %934)
  ret %Value %935
else168:
  br label %merge169
merge169:
  %936 = load %nyx_string*, %nyx_string** %731
  %937 = getelementptr [14 x i8], [14 x i8]* @.str80, i32 0, i32 0
  %938 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str80.c, i8* %937)
  %939 = call i1 @nyx_string_equals(%nyx_string* %936, %nyx_string* %938)
  br i1 %939, label %then173, label %else174
then173:
  %940 = load i1, i1* %760
  br i1 %940, label %then176, label %else177
then176:
  %941 = load %Value, %Value* %739
  %942 = call double @value_to_float(%Value %941)
  %943 = load %Value, %Value* %747
  %944 = call double @value_to_float(%Value %943)
  %945 = fcmp oge double %942, %944
  %946 = call %Value @make_bool(i1 %945)
  ret %Value %946
else177:
  br label %merge178
merge178:
  %947 = load %Value, %Value* %739
  %948 = call i64 @value_to_int(%Value %947)
  %949 = load %Value, %Value* %747
  %950 = call i64 @value_to_int(%Value %949)
  %951 = icmp sge i64 %948, %950
  %952 = call %Value @make_bool(i1 %951)
  ret %Value %952
else174:
  br label %merge175
merge175:
  %953 = alloca i1
  store i1 true, i1* %953
  %954 = load %nyx_string*, %nyx_string** %731
  %955 = getelementptr [8 x i8], [8 x i8]* @.str81, i32 0, i32 0
  %956 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str81.c, i8* %955)
  %957 = call i1 @nyx_string_equals(%nyx_string* %954, %nyx_string* %956)
  br i1 %957, label %sc_or_end180, label %sc_or_rhs179
sc_or_rhs179:
  %958 = load %nyx_string*, %nyx_string** %731
  %959 = getelementptr [4 x i8], [4 x i8]* @.str82, i32 0, i32 0
  %960 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str82.c, i8* %959)
  %961 = call i1 @nyx_string_equals(%nyx_string* %958, %nyx_string* %960)
  store i1 %961, i1* %953
  br label %sc_or_end180
sc_or_end180:
  %962 = load i1, i1* %953
  br i1 %962, label %then181, label %else182
then181:
  %963 = alloca i1
  store i1 false, i1* %963
  %964 = load %Value, %Value* %739
  %965 = call i1 @is_truthy(%Value %964)
  br i1 %965, label %sc_and_rhs184, label %sc_and_end185
sc_and_rhs184:
  %966 = load %Value, %Value* %747
  %967 = call i1 @is_truthy(%Value %966)
  store i1 %967, i1* %963
  br label %sc_and_end185
sc_and_end185:
  %968 = load i1, i1* %963
  %969 = call %Value @make_bool(i1 %968)
  ret %Value %969
else182:
  br label %merge183
merge183:
  %970 = alloca i1
  store i1 true, i1* %970
  %971 = load %nyx_string*, %nyx_string** %731
  %972 = getelementptr [6 x i8], [6 x i8]* @.str83, i32 0, i32 0
  %973 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str83.c, i8* %972)
  %974 = call i1 @nyx_string_equals(%nyx_string* %971, %nyx_string* %973)
  br i1 %974, label %sc_or_end187, label %sc_or_rhs186
sc_or_rhs186:
  %975 = load %nyx_string*, %nyx_string** %731
  %976 = getelementptr [3 x i8], [3 x i8]* @.str84, i32 0, i32 0
  %977 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str84.c, i8* %976)
  %978 = call i1 @nyx_string_equals(%nyx_string* %975, %nyx_string* %977)
  store i1 %978, i1* %970
  br label %sc_or_end187
sc_or_end187:
  %979 = load i1, i1* %970
  br i1 %979, label %then188, label %else189
then188:
  %980 = alloca i1
  store i1 true, i1* %980
  %981 = load %Value, %Value* %739
  %982 = call i1 @is_truthy(%Value %981)
  br i1 %982, label %sc_or_end192, label %sc_or_rhs191
sc_or_rhs191:
  %983 = load %Value, %Value* %747
  %984 = call i1 @is_truthy(%Value %983)
  store i1 %984, i1* %980
  br label %sc_or_end192
sc_or_end192:
  %985 = load i1, i1* %980
  %986 = call %Value @make_bool(i1 %985)
  ret %Value %986
else189:
  br label %merge190
merge190:
  %987 = getelementptr [24 x i8], [24 x i8]* @.str85, i32 0, i32 0
  %988 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str85.c, i8* %987)
  %989 = load %nyx_string*, %nyx_string** %731
  %990 = call %nyx_string* @nyx_string_concat(%nyx_string* %988, %nyx_string* %989)
  %991 = call i8* @nyx_string_to_cstr(%nyx_string* %990)
  call void @nyx_print_string(i8* %991)
  %992 = call %Value @make_nil()
  ret %Value %992
}

define internal %Value @eval_unop(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %993 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %994 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %993)
  %995 = alloca { i64, i8* }*
  store { i64, i8* }* %994, { i64, i8* }** %995
  %996 = load { i64, i8* }*, { i64, i8* }** %995
  %997 = call i64 @nyx_array_get_checked({ i64, i8* }* %996, i64 0, i64 2)
  %998 = inttoptr i64 %997 to %nyx_string*
  %999 = alloca %nyx_string*
  store %nyx_string* %998, %nyx_string** %999
  %1000 = load { i64, i8* }*, { i64, i8* }** %995
  %1001 = call i64 @nyx_array_get({ i64, i8* }* %1000, i64 1)
  %1002 = inttoptr i64 %1001 to { i64, i8* }*
  %1003 = load %Environment, %Environment* %env.ptr
  %1004 = call %Value @eval_expr({ i64, i8* }* %1002, %Environment %1003)
  %1005 = alloca %Value
  store %Value %1004, %Value* %1005
  %1006 = load %nyx_string*, %nyx_string** %999
  %1007 = getelementptr [6 x i8], [6 x i8]* @.str86, i32 0, i32 0
  %1008 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str86.c, i8* %1007)
  %1009 = call i1 @nyx_string_equals(%nyx_string* %1006, %nyx_string* %1008)
  br i1 %1009, label %then193, label %else194
then193:
  %1010 = load %Value, %Value* %1005
  %1011 = call i64 @value_to_int(%Value %1010)
  %1012 = alloca i64
  store i64 %1011, i64* %1012
  %1013 = load i64, i64* %1012
  %1014 = sub i64 0, %1013
  %1015 = call %Value @make_int(i64 %1014)
  ret %Value %1015
else194:
  br label %merge195
merge195:
  %1016 = load %nyx_string*, %nyx_string** %999
  %1017 = getelementptr [4 x i8], [4 x i8]* @.str87, i32 0, i32 0
  %1018 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str87.c, i8* %1017)
  %1019 = call i1 @nyx_string_equals(%nyx_string* %1016, %nyx_string* %1018)
  br i1 %1019, label %then196, label %else197
then196:
  %1020 = load %Value, %Value* %1005
  %1021 = call i1 @is_truthy(%Value %1020)
  %1022 = alloca i1
  store i1 %1021, i1* %1022
  %1023 = load i1, i1* %1022
  %1024 = xor i1 %1023, true
  %1025 = call %Value @make_bool(i1 %1024)
  ret %Value %1025
else197:
  br label %merge198
merge198:
  %1026 = getelementptr [31 x i8], [31 x i8]* @.str88, i32 0, i32 0
  %1027 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str88.c, i8* %1026)
  %1028 = load %nyx_string*, %nyx_string** %999
  %1029 = call %nyx_string* @nyx_string_concat(%nyx_string* %1027, %nyx_string* %1028)
  %1030 = call i8* @nyx_string_to_cstr(%nyx_string* %1029)
  call void @nyx_print_string(i8* %1030)
  %1031 = call %Value @make_nil()
  ret %Value %1031
}

define internal %Value @eval_array(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %1032 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1033 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %1032)
  %1034 = alloca { i64, i8* }*
  store { i64, i8* }* %1033, { i64, i8* }** %1034
  %1035 = load { i64, i8* }*, { i64, i8* }** %1034
  %1036 = alloca { i64, i8* }*
  store { i64, i8* }* %1035, { i64, i8* }** %1036
  %1037 = call { i64, i8* }* @nyx_array_new_ptr()
  %1038 = alloca { i64, i8* }*
  store { i64, i8* }* %1037, { i64, i8* }** %1038
  %1039 = alloca i64
  store i64 0, i64* %1039
  %1040 = call i8* @llvm.stacksave()
  br label %while_cond199
while_cond199:
  %1041 = load i64, i64* %1039
  %1042 = load { i64, i8* }*, { i64, i8* }** %1036
  %1043 = call i64 @nyx_array_length({ i64, i8* }* %1042)
  %1044 = icmp slt i64 %1041, %1043
  br i1 %1044, label %while_body200, label %while_end201
while_body200:
  call void @llvm.stackrestore(i8* %1040)
  %1045 = load { i64, i8* }*, { i64, i8* }** %1036
  %1046 = load i64, i64* %1039
  %1047 = call i64 @nyx_array_get({ i64, i8* }* %1045, i64 %1046)
  %1048 = inttoptr i64 %1047 to { i64, i8* }*
  %1049 = alloca { i64, i8* }*
  store { i64, i8* }* %1048, { i64, i8* }** %1049
  %1050 = load { i64, i8* }*, { i64, i8* }** %1049
  %1051 = load %Environment, %Environment* %env.ptr
  %1052 = call %Value @eval_expr({ i64, i8* }* %1050, %Environment %1051)
  %1053 = alloca %Value
  store %Value %1052, %Value* %1053
  %1054 = load { i64, i8* }*, { i64, i8* }** %1038
  %1055 = load %Value, %Value* %1053
  %1056 = getelementptr %Value, %Value* null, i32 1
  %1057 = ptrtoint %Value* %1056 to i64
  %1058 = call i8* @GC_malloc(i64 %1057)
  %1059 = bitcast i8* %1058 to %Value*
  store %Value %1055, %Value* %1059
  %1060 = ptrtoint %Value* %1059 to i64
  call void @nyx_array_push({ i64, i8* }* %1054, i64 %1060)
  %1061 = load i64, i64* %1039
  %1062 = add i64 %1061, 1
  store i64 %1062, i64* %1039
  br label %while_cond199
while_end201:
  %1063 = load { i64, i8* }*, { i64, i8* }** %1038
  %1064 = call %Value @make_array({ i64, i8* }* %1063)
  ret %Value %1064
}

define internal %Value @eval_index(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %1065 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1066 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %1065)
  %1067 = alloca { i64, i8* }*
  store { i64, i8* }* %1066, { i64, i8* }** %1067
  %1068 = load { i64, i8* }*, { i64, i8* }** %1067
  %1069 = call i64 @nyx_array_get({ i64, i8* }* %1068, i64 0)
  %1070 = inttoptr i64 %1069 to { i64, i8* }*
  %1071 = load %Environment, %Environment* %env.ptr
  %1072 = call %Value @eval_expr({ i64, i8* }* %1070, %Environment %1071)
  %1073 = alloca %Value
  store %Value %1072, %Value* %1073
  %1074 = load { i64, i8* }*, { i64, i8* }** %1067
  %1075 = call i64 @nyx_array_get({ i64, i8* }* %1074, i64 1)
  %1076 = inttoptr i64 %1075 to { i64, i8* }*
  %1077 = load %Environment, %Environment* %env.ptr
  %1078 = call %Value @eval_expr({ i64, i8* }* %1076, %Environment %1077)
  %1079 = alloca %Value
  store %Value %1078, %Value* %1079
  %1080 = getelementptr %Value, %Value* %1073, i32 0, i32 5
  %1081 = load { i64, i8* }*, { i64, i8* }** %1080
  %1082 = alloca { i64, i8* }*
  store { i64, i8* }* %1081, { i64, i8* }** %1082
  %1083 = load %Value, %Value* %1079
  %1084 = call i64 @value_to_int(%Value %1083)
  %1085 = alloca i64
  store i64 %1084, i64* %1085
  %1086 = alloca i1
  store i1 false, i1* %1086
  %1087 = load i64, i64* %1085
  %1088 = icmp sge i64 %1087, 0
  br i1 %1088, label %sc_and_rhs202, label %sc_and_end203
sc_and_rhs202:
  %1089 = load i64, i64* %1085
  %1090 = load { i64, i8* }*, { i64, i8* }** %1082
  %1091 = call i64 @nyx_array_length({ i64, i8* }* %1090)
  %1092 = icmp slt i64 %1089, %1091
  store i1 %1092, i1* %1086
  br label %sc_and_end203
sc_and_end203:
  %1093 = load i1, i1* %1086
  br i1 %1093, label %then204, label %else205
then204:
  %1094 = load { i64, i8* }*, { i64, i8* }** %1082
  %1095 = load i64, i64* %1085
  %1096 = call i64 @nyx_array_get({ i64, i8* }* %1094, i64 %1095)
  %1097 = inttoptr i64 %1096 to %Value*
  %1098 = load %Value, %Value* %1097
  %1099 = alloca %Value
  store %Value %1098, %Value* %1099
  %1100 = load %Value, %Value* %1099
  ret %Value %1100
else205:
  br label %merge206
merge206:
  %1101 = getelementptr [30 x i8], [30 x i8]* @.str89, i32 0, i32 0
  %1102 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str89.c, i8* %1101)
  %1103 = call i8* @nyx_string_to_cstr(%nyx_string* %1102)
  call void @nyx_print_string(i8* %1103)
  %1104 = call %Value @make_nil()
  ret %Value %1104
}

define internal %Value @eval_stmt(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %1105 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1106 = call %nyx_string* @astnode_get_type({ i64, i8* }* %1105)
  %1107 = alloca %nyx_string*
  store %nyx_string* %1106, %nyx_string** %1107
  %1108 = load %nyx_string*, %nyx_string** %1107
  %1109 = getelementptr [4 x i8], [4 x i8]* @.str90, i32 0, i32 0
  %1110 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str90.c, i8* %1109)
  %1111 = call i1 @nyx_string_equals(%nyx_string* %1108, %nyx_string* %1110)
  br i1 %1111, label %then207, label %else208
then207:
  %1112 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1113 = load %Environment, %Environment* %env.ptr
  %1114 = call %Value @eval_let({ i64, i8* }* %1112, %Environment %1113)
  ret %Value %1114
else208:
  br label %merge209
merge209:
  %1115 = load %nyx_string*, %nyx_string** %1107
  %1116 = getelementptr [4 x i8], [4 x i8]* @.str91, i32 0, i32 0
  %1117 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str91.c, i8* %1116)
  %1118 = call i1 @nyx_string_equals(%nyx_string* %1115, %nyx_string* %1117)
  br i1 %1118, label %then210, label %else211
then210:
  %1119 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1120 = load %Environment, %Environment* %env.ptr
  %1121 = call %Value @eval_let({ i64, i8* }* %1119, %Environment %1120)
  ret %Value %1121
else211:
  br label %merge212
merge212:
  %1122 = load %nyx_string*, %nyx_string** %1107
  %1123 = getelementptr [7 x i8], [7 x i8]* @.str92, i32 0, i32 0
  %1124 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str92.c, i8* %1123)
  %1125 = call i1 @nyx_string_equals(%nyx_string* %1122, %nyx_string* %1124)
  br i1 %1125, label %then213, label %else214
then213:
  %1126 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1127 = load %Environment, %Environment* %env.ptr
  %1128 = call %Value @eval_assign({ i64, i8* }* %1126, %Environment %1127)
  ret %Value %1128
else214:
  br label %merge215
merge215:
  %1129 = load %nyx_string*, %nyx_string** %1107
  %1130 = getelementptr [3 x i8], [3 x i8]* @.str93, i32 0, i32 0
  %1131 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str93.c, i8* %1130)
  %1132 = call i1 @nyx_string_equals(%nyx_string* %1129, %nyx_string* %1131)
  br i1 %1132, label %then216, label %else217
then216:
  %1133 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1134 = load %Environment, %Environment* %env.ptr
  %1135 = call %Value @eval_if({ i64, i8* }* %1133, %Environment %1134)
  ret %Value %1135
else217:
  br label %merge218
merge218:
  %1136 = load %nyx_string*, %nyx_string** %1107
  %1137 = getelementptr [6 x i8], [6 x i8]* @.str94, i32 0, i32 0
  %1138 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str94.c, i8* %1137)
  %1139 = call i1 @nyx_string_equals(%nyx_string* %1136, %nyx_string* %1138)
  br i1 %1139, label %then219, label %else220
then219:
  %1140 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1141 = load %Environment, %Environment* %env.ptr
  %1142 = call %Value @eval_while({ i64, i8* }* %1140, %Environment %1141)
  ret %Value %1142
else220:
  br label %merge221
merge221:
  %1143 = load %nyx_string*, %nyx_string** %1107
  %1144 = getelementptr [4 x i8], [4 x i8]* @.str95, i32 0, i32 0
  %1145 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str95.c, i8* %1144)
  %1146 = call i1 @nyx_string_equals(%nyx_string* %1143, %nyx_string* %1145)
  br i1 %1146, label %then222, label %else223
then222:
  %1147 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1148 = load %Environment, %Environment* %env.ptr
  %1149 = call %Value @eval_for({ i64, i8* }* %1147, %Environment %1148)
  ret %Value %1149
else223:
  br label %merge224
merge224:
  %1150 = load %nyx_string*, %nyx_string** %1107
  %1151 = getelementptr [7 x i8], [7 x i8]* @.str96, i32 0, i32 0
  %1152 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str96.c, i8* %1151)
  %1153 = call i1 @nyx_string_equals(%nyx_string* %1150, %nyx_string* %1152)
  br i1 %1153, label %then225, label %else226
then225:
  %1154 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1155 = load %Environment, %Environment* %env.ptr
  %1156 = call %Value @eval_return({ i64, i8* }* %1154, %Environment %1155)
  ret %Value %1156
else226:
  br label %merge227
merge227:
  %1157 = load %nyx_string*, %nyx_string** %1107
  %1158 = getelementptr [6 x i8], [6 x i8]* @.str97, i32 0, i32 0
  %1159 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str97.c, i8* %1158)
  %1160 = call i1 @nyx_string_equals(%nyx_string* %1157, %nyx_string* %1159)
  br i1 %1160, label %then228, label %else229
then228:
  %1161 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1162 = load %Environment, %Environment* %env.ptr
  %1163 = call %Value @eval_block({ i64, i8* }* %1161, %Environment %1162)
  ret %Value %1163
else229:
  br label %merge230
merge230:
  %1164 = load %nyx_string*, %nyx_string** %1107
  %1165 = getelementptr [9 x i8], [9 x i8]* @.str98, i32 0, i32 0
  %1166 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str98.c, i8* %1165)
  %1167 = call i1 @nyx_string_equals(%nyx_string* %1164, %nyx_string* %1166)
  br i1 %1167, label %then231, label %else232
then231:
  %1168 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1169 = load %Environment, %Environment* %env.ptr
  %1170 = call %Value @eval_function_decl({ i64, i8* }* %1168, %Environment %1169)
  ret %Value %1170
else232:
  br label %merge233
merge233:
  %1171 = load %nyx_string*, %nyx_string** %1107
  %1172 = getelementptr [13 x i8], [13 x i8]* @.str99, i32 0, i32 0
  %1173 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str99.c, i8* %1172)
  %1174 = call i1 @nyx_string_equals(%nyx_string* %1171, %nyx_string* %1173)
  br i1 %1174, label %then234, label %else235
then234:
  %1175 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1176 = load %Environment, %Environment* %env.ptr
  %1177 = call %Value @eval_index_assign({ i64, i8* }* %1175, %Environment %1176)
  ret %Value %1177
else235:
  br label %merge236
merge236:
  %1178 = load %nyx_string*, %nyx_string** %1107
  %1179 = getelementptr [16 x i8], [16 x i8]* @.str100, i32 0, i32 0
  %1180 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str100.c, i8* %1179)
  %1181 = call i1 @nyx_string_equals(%nyx_string* %1178, %nyx_string* %1180)
  br i1 %1181, label %then237, label %else238
then237:
  %1182 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1183 = load %Environment, %Environment* %env.ptr
  %1184 = call %Value @eval_compound_assign({ i64, i8* }* %1182, %Environment %1183)
  ret %Value %1184
else238:
  br label %merge239
merge239:
  %1185 = load %nyx_string*, %nyx_string** %1107
  %1186 = getelementptr [13 x i8], [13 x i8]* @.str101, i32 0, i32 0
  %1187 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str101.c, i8* %1186)
  %1188 = call i1 @nyx_string_equals(%nyx_string* %1185, %nyx_string* %1187)
  br i1 %1188, label %then240, label %else241
then240:
  %1189 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1190 = load %Environment, %Environment* %env.ptr
  %1191 = call %Value @eval_field_assign({ i64, i8* }* %1189, %Environment %1190)
  ret %Value %1191
else241:
  br label %merge242
merge242:
  %1192 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1193 = load %Environment, %Environment* %env.ptr
  %1194 = call %Value @eval_expr({ i64, i8* }* %1192, %Environment %1193)
  ret %Value %1194
}

define internal %Value @eval_let(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %1195 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1196 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %1195)
  %1197 = alloca { i64, i8* }*
  store { i64, i8* }* %1196, { i64, i8* }** %1197
  %1198 = load { i64, i8* }*, { i64, i8* }** %1197
  %1199 = call i64 @nyx_array_get({ i64, i8* }* %1198, i64 0)
  %1200 = inttoptr i64 %1199 to { i64, i8* }*
  %1201 = alloca { i64, i8* }*
  store { i64, i8* }* %1200, { i64, i8* }** %1201
  %1202 = load { i64, i8* }*, { i64, i8* }** %1201
  %1203 = call %nyx_string* @astnode_get_type({ i64, i8* }* %1202)
  %1204 = alloca %nyx_string*
  store %nyx_string* %1203, %nyx_string** %1204
  %1205 = load { i64, i8* }*, { i64, i8* }** %1197
  %1206 = call i64 @nyx_array_get({ i64, i8* }* %1205, i64 2)
  %1207 = inttoptr i64 %1206 to { i64, i8* }*
  %1208 = alloca { i64, i8* }*
  store { i64, i8* }* %1207, { i64, i8* }** %1208
  %1209 = load { i64, i8* }*, { i64, i8* }** %1208
  %1210 = load %Environment, %Environment* %env.ptr
  %1211 = call %Value @eval_expr({ i64, i8* }* %1209, %Environment %1210)
  %1212 = alloca %Value
  store %Value %1211, %Value* %1212
  %1213 = load %Environment, %Environment* %env.ptr
  %1214 = load %nyx_string*, %nyx_string** %1204
  %1215 = load %Value, %Value* %1212
  %1216 = call i64 @env_define(%Environment %1213, %nyx_string* %1214, %Value %1215)
  %1217 = call %Value @make_nil()
  ret %Value %1217
}

define internal %Value @eval_assign(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %1218 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1219 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %1218)
  %1220 = alloca { i64, i8* }*
  store { i64, i8* }* %1219, { i64, i8* }** %1220
  %1221 = load { i64, i8* }*, { i64, i8* }** %1220
  %1222 = call i64 @nyx_array_get({ i64, i8* }* %1221, i64 0)
  %1223 = inttoptr i64 %1222 to { i64, i8* }*
  %1224 = alloca { i64, i8* }*
  store { i64, i8* }* %1223, { i64, i8* }** %1224
  %1225 = load { i64, i8* }*, { i64, i8* }** %1224
  %1226 = call %nyx_string* @astnode_get_type({ i64, i8* }* %1225)
  %1227 = alloca %nyx_string*
  store %nyx_string* %1226, %nyx_string** %1227
  %1228 = load { i64, i8* }*, { i64, i8* }** %1220
  %1229 = call i64 @nyx_array_get({ i64, i8* }* %1228, i64 1)
  %1230 = inttoptr i64 %1229 to { i64, i8* }*
  %1231 = load %Environment, %Environment* %env.ptr
  %1232 = call %Value @eval_expr({ i64, i8* }* %1230, %Environment %1231)
  %1233 = alloca %Value
  store %Value %1232, %Value* %1233
  %1234 = load %Environment, %Environment* %env.ptr
  %1235 = load %nyx_string*, %nyx_string** %1227
  %1236 = load %Value, %Value* %1233
  %1237 = call i1 @env_set(%Environment %1234, %nyx_string* %1235, %Value %1236)
  %1238 = xor i1 %1237, true
  br i1 %1238, label %then243, label %else244
then243:
  %1239 = getelementptr [30 x i8], [30 x i8]* @.str102, i32 0, i32 0
  %1240 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str102.c, i8* %1239)
  %1241 = load %nyx_string*, %nyx_string** %1227
  %1242 = call %nyx_string* @nyx_string_concat(%nyx_string* %1240, %nyx_string* %1241)
  %1243 = call i8* @nyx_string_to_cstr(%nyx_string* %1242)
  call void @nyx_print_string(i8* %1243)
  br label %merge245
else244:
  br label %merge245
merge245:
  %1244 = call %Value @make_nil()
  ret %Value %1244
}

define internal %Value @eval_index_assign(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %1245 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1246 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %1245)
  %1247 = alloca { i64, i8* }*
  store { i64, i8* }* %1246, { i64, i8* }** %1247
  %1248 = load { i64, i8* }*, { i64, i8* }** %1247
  %1249 = call i64 @nyx_array_get({ i64, i8* }* %1248, i64 0)
  %1250 = inttoptr i64 %1249 to { i64, i8* }*
  %1251 = alloca { i64, i8* }*
  store { i64, i8* }* %1250, { i64, i8* }** %1251
  %1252 = load { i64, i8* }*, { i64, i8* }** %1247
  %1253 = call i64 @nyx_array_get({ i64, i8* }* %1252, i64 1)
  %1254 = inttoptr i64 %1253 to { i64, i8* }*
  %1255 = alloca { i64, i8* }*
  store { i64, i8* }* %1254, { i64, i8* }** %1255
  %1256 = load { i64, i8* }*, { i64, i8* }** %1247
  %1257 = call i64 @nyx_array_get({ i64, i8* }* %1256, i64 2)
  %1258 = inttoptr i64 %1257 to { i64, i8* }*
  %1259 = alloca { i64, i8* }*
  store { i64, i8* }* %1258, { i64, i8* }** %1259
  %1260 = load { i64, i8* }*, { i64, i8* }** %1251
  %1261 = load %Environment, %Environment* %env.ptr
  %1262 = call %Value @eval_expr({ i64, i8* }* %1260, %Environment %1261)
  %1263 = alloca %Value
  store %Value %1262, %Value* %1263
  %1264 = load { i64, i8* }*, { i64, i8* }** %1255
  %1265 = load %Environment, %Environment* %env.ptr
  %1266 = call %Value @eval_expr({ i64, i8* }* %1264, %Environment %1265)
  %1267 = alloca %Value
  store %Value %1266, %Value* %1267
  %1268 = load { i64, i8* }*, { i64, i8* }** %1259
  %1269 = load %Environment, %Environment* %env.ptr
  %1270 = call %Value @eval_expr({ i64, i8* }* %1268, %Environment %1269)
  %1271 = alloca %Value
  store %Value %1270, %Value* %1271
  %1272 = getelementptr %Value, %Value* %1263, i32 0, i32 0
  %1273 = load %nyx_string*, %nyx_string** %1272
  %1274 = getelementptr [6 x i8], [6 x i8]* @.str103, i32 0, i32 0
  %1275 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str103.c, i8* %1274)
  %1276 = call i1 @nyx_string_equals(%nyx_string* %1273, %nyx_string* %1275)
  br i1 %1276, label %then246, label %else247
then246:
  %1277 = getelementptr %Value, %Value* %1263, i32 0, i32 5
  %1278 = load { i64, i8* }*, { i64, i8* }** %1277
  %1279 = alloca { i64, i8* }*
  store { i64, i8* }* %1278, { i64, i8* }** %1279
  %1280 = load %Value, %Value* %1267
  %1281 = call i64 @value_to_int(%Value %1280)
  %1282 = alloca i64
  store i64 %1281, i64* %1282
  %1283 = alloca i1
  store i1 false, i1* %1283
  %1284 = load i64, i64* %1282
  %1285 = icmp sge i64 %1284, 0
  br i1 %1285, label %sc_and_rhs249, label %sc_and_end250
sc_and_rhs249:
  %1286 = load i64, i64* %1282
  %1287 = load { i64, i8* }*, { i64, i8* }** %1279
  %1288 = call i64 @nyx_array_length({ i64, i8* }* %1287)
  %1289 = icmp slt i64 %1286, %1288
  store i1 %1289, i1* %1283
  br label %sc_and_end250
sc_and_end250:
  %1290 = load i1, i1* %1283
  br i1 %1290, label %then251, label %else252
then251:
  %1291 = load { i64, i8* }*, { i64, i8* }** %1279
  %1292 = load i64, i64* %1282
  %1293 = load %Value, %Value* %1271
  %1294 = getelementptr %Value, %Value* null, i32 1
  %1295 = ptrtoint %Value* %1294 to i64
  %1296 = call i8* @GC_malloc(i64 %1295)
  %1297 = bitcast i8* %1296 to %Value*
  store %Value %1293, %Value* %1297
  %1298 = ptrtoint %Value* %1297 to i64
  call void @nyx_array_set({ i64, i8* }* %1291, i64 %1292, i64 %1298)
  br label %merge253
else252:
  %1299 = getelementptr [45 x i8], [45 x i8]* @.str104, i32 0, i32 0
  %1300 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str104.c, i8* %1299)
  %1301 = call i8* @nyx_string_to_cstr(%nyx_string* %1300)
  call void @nyx_print_string(i8* %1301)
  br label %merge253
merge253:
  br label %merge248
else247:
  %1302 = getelementptr [39 x i8], [39 x i8]* @.str105, i32 0, i32 0
  %1303 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str105.c, i8* %1302)
  %1304 = getelementptr %Value, %Value* %1263, i32 0, i32 0
  %1305 = load %nyx_string*, %nyx_string** %1304
  %1306 = call %nyx_string* @nyx_string_concat(%nyx_string* %1303, %nyx_string* %1305)
  %1307 = call i8* @nyx_string_to_cstr(%nyx_string* %1306)
  call void @nyx_print_string(i8* %1307)
  br label %merge248
merge248:
  %1308 = call %Value @make_nil()
  ret %Value %1308
}

define internal %Value @eval_compound_assign(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %1309 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1310 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %1309)
  %1311 = alloca { i64, i8* }*
  store { i64, i8* }* %1310, { i64, i8* }** %1311
  %1312 = load { i64, i8* }*, { i64, i8* }** %1311
  %1313 = call i64 @nyx_array_get_checked({ i64, i8* }* %1312, i64 0, i64 2)
  %1314 = inttoptr i64 %1313 to %nyx_string*
  %1315 = alloca %nyx_string*
  store %nyx_string* %1314, %nyx_string** %1315
  %1316 = load { i64, i8* }*, { i64, i8* }** %1311
  %1317 = call i64 @nyx_array_get({ i64, i8* }* %1316, i64 1)
  %1318 = inttoptr i64 %1317 to { i64, i8* }*
  %1319 = alloca { i64, i8* }*
  store { i64, i8* }* %1318, { i64, i8* }** %1319
  %1320 = load { i64, i8* }*, { i64, i8* }** %1319
  %1321 = call %nyx_string* @astnode_get_type({ i64, i8* }* %1320)
  %1322 = alloca %nyx_string*
  store %nyx_string* %1321, %nyx_string** %1322
  %1323 = load { i64, i8* }*, { i64, i8* }** %1311
  %1324 = call i64 @nyx_array_get({ i64, i8* }* %1323, i64 2)
  %1325 = inttoptr i64 %1324 to { i64, i8* }*
  %1326 = load %Environment, %Environment* %env.ptr
  %1327 = call %Value @eval_expr({ i64, i8* }* %1325, %Environment %1326)
  %1328 = alloca %Value
  store %Value %1327, %Value* %1328
  %1329 = load %Environment, %Environment* %env.ptr
  %1330 = load %nyx_string*, %nyx_string** %1322
  %1331 = call %Value @env_get(%Environment %1329, %nyx_string* %1330)
  %1332 = alloca %Value
  store %Value %1331, %Value* %1332
  %1333 = call %Value @make_nil()
  %1334 = alloca %Value
  store %Value %1333, %Value* %1334
  %1335 = load %nyx_string*, %nyx_string** %1315
  %1336 = getelementptr [8 x i8], [8 x i8]* @.str106, i32 0, i32 0
  %1337 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str106.c, i8* %1336)
  %1338 = call i1 @nyx_string_equals(%nyx_string* %1335, %nyx_string* %1337)
  br i1 %1338, label %then254, label %else255
then254:
  %1339 = getelementptr %Value, %Value* %1332, i32 0, i32 0
  %1340 = load %nyx_string*, %nyx_string** %1339
  %1341 = getelementptr [7 x i8], [7 x i8]* @.str107, i32 0, i32 0
  %1342 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str107.c, i8* %1341)
  %1343 = call i1 @nyx_string_equals(%nyx_string* %1340, %nyx_string* %1342)
  br i1 %1343, label %then257, label %else258
then257:
  %1344 = getelementptr %Value, %Value* %1332, i32 0, i32 4
  %1345 = load %nyx_string*, %nyx_string** %1344
  %1346 = load %Value, %Value* %1328
  %1347 = call %nyx_string* @value_to_string(%Value %1346)
  %1348 = call %nyx_string* @nyx_string_concat(%nyx_string* %1345, %nyx_string* %1347)
  %1349 = call %Value @make_string(%nyx_string* %1348)
  store %Value %1349, %Value* %1334
  br label %merge259
else258:
  %1350 = alloca i1
  store i1 true, i1* %1350
  %1351 = getelementptr %Value, %Value* %1332, i32 0, i32 0
  %1352 = load %nyx_string*, %nyx_string** %1351
  %1353 = getelementptr [6 x i8], [6 x i8]* @.str108, i32 0, i32 0
  %1354 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str108.c, i8* %1353)
  %1355 = call i1 @nyx_string_equals(%nyx_string* %1352, %nyx_string* %1354)
  br i1 %1355, label %sc_or_end261, label %sc_or_rhs260
sc_or_rhs260:
  %1356 = getelementptr %Value, %Value* %1328, i32 0, i32 0
  %1357 = load %nyx_string*, %nyx_string** %1356
  %1358 = getelementptr [6 x i8], [6 x i8]* @.str109, i32 0, i32 0
  %1359 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str109.c, i8* %1358)
  %1360 = call i1 @nyx_string_equals(%nyx_string* %1357, %nyx_string* %1359)
  store i1 %1360, i1* %1350
  br label %sc_or_end261
sc_or_end261:
  %1361 = load i1, i1* %1350
  br i1 %1361, label %then262, label %else263
then262:
  %1362 = load %Value, %Value* %1332
  %1363 = call double @value_to_float(%Value %1362)
  %1364 = load %Value, %Value* %1328
  %1365 = call double @value_to_float(%Value %1364)
  %1366 = fadd double %1363, %1365
  %1367 = call %Value @make_float(double %1366)
  store %Value %1367, %Value* %1334
  br label %merge264
else263:
  %1368 = load %Value, %Value* %1332
  %1369 = call i64 @value_to_int(%Value %1368)
  %1370 = load %Value, %Value* %1328
  %1371 = call i64 @value_to_int(%Value %1370)
  %1372 = add i64 %1369, %1371
  %1373 = call %Value @make_int(i64 %1372)
  store %Value %1373, %Value* %1334
  br label %merge264
merge264:
  br label %merge259
merge259:
  br label %merge256
else255:
  %1374 = load %nyx_string*, %nyx_string** %1315
  %1375 = getelementptr [9 x i8], [9 x i8]* @.str110, i32 0, i32 0
  %1376 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str110.c, i8* %1375)
  %1377 = call i1 @nyx_string_equals(%nyx_string* %1374, %nyx_string* %1376)
  br i1 %1377, label %then265, label %else266
then265:
  %1378 = alloca i1
  store i1 true, i1* %1378
  %1379 = getelementptr %Value, %Value* %1332, i32 0, i32 0
  %1380 = load %nyx_string*, %nyx_string** %1379
  %1381 = getelementptr [6 x i8], [6 x i8]* @.str111, i32 0, i32 0
  %1382 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str111.c, i8* %1381)
  %1383 = call i1 @nyx_string_equals(%nyx_string* %1380, %nyx_string* %1382)
  br i1 %1383, label %sc_or_end269, label %sc_or_rhs268
sc_or_rhs268:
  %1384 = getelementptr %Value, %Value* %1328, i32 0, i32 0
  %1385 = load %nyx_string*, %nyx_string** %1384
  %1386 = getelementptr [6 x i8], [6 x i8]* @.str112, i32 0, i32 0
  %1387 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str112.c, i8* %1386)
  %1388 = call i1 @nyx_string_equals(%nyx_string* %1385, %nyx_string* %1387)
  store i1 %1388, i1* %1378
  br label %sc_or_end269
sc_or_end269:
  %1389 = load i1, i1* %1378
  br i1 %1389, label %then270, label %else271
then270:
  %1390 = load %Value, %Value* %1332
  %1391 = call double @value_to_float(%Value %1390)
  %1392 = load %Value, %Value* %1328
  %1393 = call double @value_to_float(%Value %1392)
  %1394 = fsub double %1391, %1393
  %1395 = call %Value @make_float(double %1394)
  store %Value %1395, %Value* %1334
  br label %merge272
else271:
  %1396 = load %Value, %Value* %1332
  %1397 = call i64 @value_to_int(%Value %1396)
  %1398 = load %Value, %Value* %1328
  %1399 = call i64 @value_to_int(%Value %1398)
  %1400 = sub i64 %1397, %1399
  %1401 = call %Value @make_int(i64 %1400)
  store %Value %1401, %Value* %1334
  br label %merge272
merge272:
  br label %merge267
else266:
  %1402 = load %nyx_string*, %nyx_string** %1315
  %1403 = getelementptr [8 x i8], [8 x i8]* @.str113, i32 0, i32 0
  %1404 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str113.c, i8* %1403)
  %1405 = call i1 @nyx_string_equals(%nyx_string* %1402, %nyx_string* %1404)
  br i1 %1405, label %then273, label %else274
then273:
  %1406 = alloca i1
  store i1 true, i1* %1406
  %1407 = getelementptr %Value, %Value* %1332, i32 0, i32 0
  %1408 = load %nyx_string*, %nyx_string** %1407
  %1409 = getelementptr [6 x i8], [6 x i8]* @.str114, i32 0, i32 0
  %1410 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str114.c, i8* %1409)
  %1411 = call i1 @nyx_string_equals(%nyx_string* %1408, %nyx_string* %1410)
  br i1 %1411, label %sc_or_end277, label %sc_or_rhs276
sc_or_rhs276:
  %1412 = getelementptr %Value, %Value* %1328, i32 0, i32 0
  %1413 = load %nyx_string*, %nyx_string** %1412
  %1414 = getelementptr [6 x i8], [6 x i8]* @.str115, i32 0, i32 0
  %1415 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str115.c, i8* %1414)
  %1416 = call i1 @nyx_string_equals(%nyx_string* %1413, %nyx_string* %1415)
  store i1 %1416, i1* %1406
  br label %sc_or_end277
sc_or_end277:
  %1417 = load i1, i1* %1406
  br i1 %1417, label %then278, label %else279
then278:
  %1418 = load %Value, %Value* %1332
  %1419 = call double @value_to_float(%Value %1418)
  %1420 = load %Value, %Value* %1328
  %1421 = call double @value_to_float(%Value %1420)
  %1422 = fmul double %1419, %1421
  %1423 = call %Value @make_float(double %1422)
  store %Value %1423, %Value* %1334
  br label %merge280
else279:
  %1424 = load %Value, %Value* %1332
  %1425 = call i64 @value_to_int(%Value %1424)
  %1426 = load %Value, %Value* %1328
  %1427 = call i64 @value_to_int(%Value %1426)
  %1428 = mul i64 %1425, %1427
  %1429 = call %Value @make_int(i64 %1428)
  store %Value %1429, %Value* %1334
  br label %merge280
merge280:
  br label %merge275
else274:
  %1430 = load %nyx_string*, %nyx_string** %1315
  %1431 = getelementptr [9 x i8], [9 x i8]* @.str116, i32 0, i32 0
  %1432 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str116.c, i8* %1431)
  %1433 = call i1 @nyx_string_equals(%nyx_string* %1430, %nyx_string* %1432)
  br i1 %1433, label %then281, label %else282
then281:
  %1434 = alloca i1
  store i1 true, i1* %1434
  %1435 = getelementptr %Value, %Value* %1332, i32 0, i32 0
  %1436 = load %nyx_string*, %nyx_string** %1435
  %1437 = getelementptr [6 x i8], [6 x i8]* @.str117, i32 0, i32 0
  %1438 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str117.c, i8* %1437)
  %1439 = call i1 @nyx_string_equals(%nyx_string* %1436, %nyx_string* %1438)
  br i1 %1439, label %sc_or_end285, label %sc_or_rhs284
sc_or_rhs284:
  %1440 = getelementptr %Value, %Value* %1328, i32 0, i32 0
  %1441 = load %nyx_string*, %nyx_string** %1440
  %1442 = getelementptr [6 x i8], [6 x i8]* @.str118, i32 0, i32 0
  %1443 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str118.c, i8* %1442)
  %1444 = call i1 @nyx_string_equals(%nyx_string* %1441, %nyx_string* %1443)
  store i1 %1444, i1* %1434
  br label %sc_or_end285
sc_or_end285:
  %1445 = load i1, i1* %1434
  br i1 %1445, label %then286, label %else287
then286:
  %1446 = load %Value, %Value* %1328
  %1447 = call double @value_to_float(%Value %1446)
  %1448 = alloca double
  store double %1447, double* %1448
  %1449 = load %Value, %Value* %1332
  %1450 = call double @value_to_float(%Value %1449)
  %1451 = load double, double* %1448
  %1452 = fdiv double %1450, %1451
  %1453 = call %Value @make_float(double %1452)
  store %Value %1453, %Value* %1334
  br label %merge288
else287:
  %1454 = load %Value, %Value* %1328
  %1455 = call i64 @value_to_int(%Value %1454)
  %1456 = alloca i64
  store i64 %1455, i64* %1456
  %1457 = load i64, i64* %1456
  %1458 = icmp ne i64 %1457, 0
  br i1 %1458, label %then289, label %else290
then289:
  %1459 = load %Value, %Value* %1332
  %1460 = call i64 @value_to_int(%Value %1459)
  %1461 = load i64, i64* %1456
  %1462 = sdiv i64 %1460, %1461
  %1463 = call %Value @make_int(i64 %1462)
  store %Value %1463, %Value* %1334
  br label %merge291
else290:
  %1464 = getelementptr [45 x i8], [45 x i8]* @.str119, i32 0, i32 0
  %1465 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str119.c, i8* %1464)
  %1466 = call i8* @nyx_string_to_cstr(%nyx_string* %1465)
  call void @nyx_print_string(i8* %1466)
  %1467 = call %Value @make_int(i64 0)
  store %Value %1467, %Value* %1334
  br label %merge291
merge291:
  br label %merge288
merge288:
  br label %merge283
else282:
  %1468 = load %nyx_string*, %nyx_string** %1315
  %1469 = getelementptr [11 x i8], [11 x i8]* @.str120, i32 0, i32 0
  %1470 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str120.c, i8* %1469)
  %1471 = call i1 @nyx_string_equals(%nyx_string* %1468, %nyx_string* %1470)
  br i1 %1471, label %then292, label %else293
then292:
  %1472 = load %Value, %Value* %1332
  %1473 = call i64 @value_to_int(%Value %1472)
  %1474 = load %Value, %Value* %1328
  %1475 = call i64 @value_to_int(%Value %1474)
  %1476 = srem i64 %1473, %1475
  %1477 = call %Value @make_int(i64 %1476)
  store %Value %1477, %Value* %1334
  br label %merge294
else293:
  %1478 = getelementptr [40 x i8], [40 x i8]* @.str121, i32 0, i32 0
  %1479 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str121.c, i8* %1478)
  %1480 = load %nyx_string*, %nyx_string** %1315
  %1481 = call %nyx_string* @nyx_string_concat(%nyx_string* %1479, %nyx_string* %1480)
  %1482 = call i8* @nyx_string_to_cstr(%nyx_string* %1481)
  call void @nyx_print_string(i8* %1482)
  %1483 = load %Value, %Value* %1332
  store %Value %1483, %Value* %1334
  br label %merge294
merge294:
  br label %merge283
merge283:
  br label %merge275
merge275:
  br label %merge267
merge267:
  br label %merge256
merge256:
  %1484 = load %Environment, %Environment* %env.ptr
  %1485 = load %nyx_string*, %nyx_string** %1322
  %1486 = load %Value, %Value* %1334
  %1487 = call i1 @env_set(%Environment %1484, %nyx_string* %1485, %Value %1486)
  %1488 = xor i1 %1487, true
  br i1 %1488, label %then295, label %else296
then295:
  %1489 = getelementptr [49 x i8], [49 x i8]* @.str122, i32 0, i32 0
  %1490 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str122.c, i8* %1489)
  %1491 = load %nyx_string*, %nyx_string** %1322
  %1492 = call %nyx_string* @nyx_string_concat(%nyx_string* %1490, %nyx_string* %1491)
  %1493 = call i8* @nyx_string_to_cstr(%nyx_string* %1492)
  call void @nyx_print_string(i8* %1493)
  br label %merge297
else296:
  br label %merge297
merge297:
  %1494 = call %Value @make_nil()
  ret %Value %1494
}

define internal %Value @eval_field_assign(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %1495 = getelementptr [44 x i8], [44 x i8]* @.str123, i32 0, i32 0
  %1496 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str123.c, i8* %1495)
  %1497 = call i8* @nyx_string_to_cstr(%nyx_string* %1496)
  call void @nyx_print_string(i8* %1497)
  %1498 = call %Value @make_nil()
  ret %Value %1498
}

define internal %Value @eval_if(
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
  %1507 = load %Environment, %Environment* %env.ptr
  %1508 = call %Value @eval_expr({ i64, i8* }* %1506, %Environment %1507)
  %1509 = alloca %Value
  store %Value %1508, %Value* %1509
  %1510 = load { i64, i8* }*, { i64, i8* }** %1501
  %1511 = call i64 @nyx_array_get({ i64, i8* }* %1510, i64 1)
  %1512 = inttoptr i64 %1511 to { i64, i8* }*
  %1513 = alloca { i64, i8* }*
  store { i64, i8* }* %1512, { i64, i8* }** %1513
  %1514 = load { i64, i8* }*, { i64, i8* }** %1501
  %1515 = call i64 @nyx_array_get({ i64, i8* }* %1514, i64 2)
  %1516 = inttoptr i64 %1515 to { i64, i8* }*
  %1517 = alloca { i64, i8* }*
  store { i64, i8* }* %1516, { i64, i8* }** %1517
  %1518 = load %Value, %Value* %1509
  %1519 = call i1 @is_truthy(%Value %1518)
  br i1 %1519, label %then298, label %else299
then298:
  %1520 = load { i64, i8* }*, { i64, i8* }** %1513
  %1521 = load %Environment, %Environment* %env.ptr
  %1522 = call %Value @eval_stmt({ i64, i8* }* %1520, %Environment %1521)
  ret %Value %1522
else299:
  %1523 = load { i64, i8* }*, { i64, i8* }** %1517
  %1524 = call %nyx_string* @astnode_get_type({ i64, i8* }* %1523)
  %1525 = alloca %nyx_string*
  store %nyx_string* %1524, %nyx_string** %1525
  %1526 = load %nyx_string*, %nyx_string** %1525
  %1527 = getelementptr [6 x i8], [6 x i8]* @.str124, i32 0, i32 0
  %1528 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str124.c, i8* %1527)
  %1529 = call i1 @nyx_string_equals(%nyx_string* %1526, %nyx_string* %1528)
  %1530 = xor i1 %1529, true
  br i1 %1530, label %then301, label %else302
then301:
  %1531 = load { i64, i8* }*, { i64, i8* }** %1517
  %1532 = load %Environment, %Environment* %env.ptr
  %1533 = call %Value @eval_stmt({ i64, i8* }* %1531, %Environment %1532)
  ret %Value %1533
else302:
  br label %merge303
merge303:
  br label %merge300
merge300:
  %1534 = call %Value @make_nil()
  ret %Value %1534
}

define internal %Value @eval_while(
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
  %1546 = alloca i1
  store i1 1, i1* %1546
  %1547 = call i8* @llvm.stacksave()
  br label %while_cond304
while_cond304:
  %1548 = load i1, i1* %1546
  br i1 %1548, label %while_body305, label %while_end306
while_body305:
  call void @llvm.stackrestore(i8* %1547)
  %1549 = load { i64, i8* }*, { i64, i8* }** %1541
  %1550 = load %Environment, %Environment* %env.ptr
  %1551 = call %Value @eval_expr({ i64, i8* }* %1549, %Environment %1550)
  %1552 = alloca %Value
  store %Value %1551, %Value* %1552
  %1553 = load %Value, %Value* %1552
  %1554 = call i1 @is_truthy(%Value %1553)
  br i1 %1554, label %then307, label %else308
then307:
  %1555 = load { i64, i8* }*, { i64, i8* }** %1545
  %1556 = load %Environment, %Environment* %env.ptr
  %1557 = call %Value @eval_stmt({ i64, i8* }* %1555, %Environment %1556)
  br label %merge309
else308:
  store i1 0, i1* %1546
  br label %merge309
merge309:
  br label %while_cond304
while_end306:
  %1558 = call %Value @make_nil()
  ret %Value %1558
}

define internal %Value @eval_for(
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
  %1567 = call %nyx_string* @astnode_get_type({ i64, i8* }* %1566)
  %1568 = alloca %nyx_string*
  store %nyx_string* %1567, %nyx_string** %1568
  %1569 = load { i64, i8* }*, { i64, i8* }** %1561
  %1570 = call i64 @nyx_array_get({ i64, i8* }* %1569, i64 1)
  %1571 = inttoptr i64 %1570 to { i64, i8* }*
  %1572 = load %Environment, %Environment* %env.ptr
  %1573 = call %Value @eval_expr({ i64, i8* }* %1571, %Environment %1572)
  %1574 = alloca %Value
  store %Value %1573, %Value* %1574
  %1575 = load { i64, i8* }*, { i64, i8* }** %1561
  %1576 = call i64 @nyx_array_get({ i64, i8* }* %1575, i64 2)
  %1577 = inttoptr i64 %1576 to { i64, i8* }*
  %1578 = alloca { i64, i8* }*
  store { i64, i8* }* %1577, { i64, i8* }** %1578
  %1579 = load %Environment, %Environment* %env.ptr
  %1580 = call %Environment @make_child_env(%Environment %1579)
  %1581 = alloca %Environment
  store %Environment %1580, %Environment* %1581
  %1582 = getelementptr %Value, %Value* %1574, i32 0, i32 0
  %1583 = load %nyx_string*, %nyx_string** %1582
  %1584 = getelementptr [6 x i8], [6 x i8]* @.str125, i32 0, i32 0
  %1585 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str125.c, i8* %1584)
  %1586 = call i1 @nyx_string_equals(%nyx_string* %1583, %nyx_string* %1585)
  br i1 %1586, label %then310, label %else311
then310:
  %1587 = getelementptr %Value, %Value* %1574, i32 0, i32 5
  %1588 = load { i64, i8* }*, { i64, i8* }** %1587
  %1589 = alloca { i64, i8* }*
  store { i64, i8* }* %1588, { i64, i8* }** %1589
  %1590 = alloca i64
  store i64 0, i64* %1590
  %1591 = call i8* @llvm.stacksave()
  br label %while_cond313
while_cond313:
  %1592 = load i64, i64* %1590
  %1593 = load { i64, i8* }*, { i64, i8* }** %1589
  %1594 = call i64 @nyx_array_length({ i64, i8* }* %1593)
  %1595 = icmp slt i64 %1592, %1594
  br i1 %1595, label %while_body314, label %while_end315
while_body314:
  call void @llvm.stackrestore(i8* %1591)
  %1596 = load { i64, i8* }*, { i64, i8* }** %1589
  %1597 = load i64, i64* %1590
  %1598 = call i64 @nyx_array_get({ i64, i8* }* %1596, i64 %1597)
  %1599 = inttoptr i64 %1598 to %Value*
  %1600 = load %Value, %Value* %1599
  %1601 = alloca %Value
  store %Value %1600, %Value* %1601
  %1602 = load %Environment, %Environment* %1581
  %1603 = load %nyx_string*, %nyx_string** %1568
  %1604 = load %Value, %Value* %1601
  %1605 = call i64 @env_define(%Environment %1602, %nyx_string* %1603, %Value %1604)
  %1606 = load { i64, i8* }*, { i64, i8* }** %1578
  %1607 = load %Environment, %Environment* %1581
  %1608 = call %Value @eval_stmt({ i64, i8* }* %1606, %Environment %1607)
  %1609 = load i64, i64* %1590
  %1610 = add i64 %1609, 1
  store i64 %1610, i64* %1590
  br label %while_cond313
while_end315:
  br label %merge312
else311:
  br label %merge312
merge312:
  %1611 = call %Value @make_nil()
  ret %Value %1611
}

define internal %Value @eval_block(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %1612 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1613 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %1612)
  %1614 = alloca { i64, i8* }*
  store { i64, i8* }* %1613, { i64, i8* }** %1614
  %1615 = load { i64, i8* }*, { i64, i8* }** %1614
  %1616 = call i64 @nyx_array_get({ i64, i8* }* %1615, i64 0)
  %1617 = inttoptr i64 %1616 to { i64, i8* }*
  %1618 = alloca { i64, i8* }*
  store { i64, i8* }* %1617, { i64, i8* }** %1618
  %1619 = load %Environment, %Environment* %env.ptr
  %1620 = call %Environment @make_child_env(%Environment %1619)
  %1621 = alloca %Environment
  store %Environment %1620, %Environment* %1621
  %1622 = call %Value @make_nil()
  %1623 = alloca %Value
  store %Value %1622, %Value* %1623
  %1624 = alloca i64
  store i64 0, i64* %1624
  %1625 = load { i64, i8* }*, { i64, i8* }** %1618
  %1626 = call i64 @nyx_array_length({ i64, i8* }* %1625)
  %1627 = alloca i64
  store i64 %1626, i64* %1627
  %1628 = getelementptr [7 x i8], [7 x i8]* @.str126, i32 0, i32 0
  %1629 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str126.c, i8* %1628)
  %1630 = alloca %nyx_string*
  store %nyx_string* %1629, %nyx_string** %1630
  %1631 = call i8* @llvm.stacksave()
  br label %while_cond316
while_cond316:
  %1632 = load i64, i64* %1624
  %1633 = load i64, i64* %1627
  %1634 = icmp slt i64 %1632, %1633
  br i1 %1634, label %while_body317, label %while_end318
while_body317:
  call void @llvm.stackrestore(i8* %1631)
  %1635 = load { i64, i8* }*, { i64, i8* }** %1618
  %1636 = load i64, i64* %1624
  %1637 = call i64 @nyx_array_get({ i64, i8* }* %1635, i64 %1636)
  %1638 = inttoptr i64 %1637 to { i64, i8* }*
  %1639 = alloca { i64, i8* }*
  store { i64, i8* }* %1638, { i64, i8* }** %1639
  %1640 = load { i64, i8* }*, { i64, i8* }** %1639
  %1641 = load %Environment, %Environment* %1621
  %1642 = call %Value @eval_stmt({ i64, i8* }* %1640, %Environment %1641)
  store %Value %1642, %Value* %1623
  %1643 = getelementptr %Value, %Value* %1623, i32 0, i32 0
  %1644 = load %nyx_string*, %nyx_string** %1643
  %1645 = load %nyx_string*, %nyx_string** %1630
  %1646 = call i1 @nyx_string_equals(%nyx_string* %1644, %nyx_string* %1645)
  br i1 %1646, label %then319, label %else320
then319:
  %1647 = load %Value, %Value* %1623
  ret %Value %1647
else320:
  br label %merge321
merge321:
  %1648 = load i64, i64* %1624
  %1649 = add i64 %1648, 1
  store i64 %1649, i64* %1624
  br label %while_cond316
while_end318:
  %1650 = load %Value, %Value* %1623
  ret %Value %1650
}

define internal %Value @eval_function_decl(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %1651 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1652 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %1651)
  %1653 = alloca { i64, i8* }*
  store { i64, i8* }* %1652, { i64, i8* }** %1653
  %1654 = load { i64, i8* }*, { i64, i8* }** %1653
  %1655 = call i64 @nyx_array_get_checked({ i64, i8* }* %1654, i64 0, i64 2)
  %1656 = inttoptr i64 %1655 to %nyx_string*
  %1657 = alloca %nyx_string*
  store %nyx_string* %1656, %nyx_string** %1657
  %1658 = load { i64, i8* }*, { i64, i8* }** %1653
  %1659 = call i64 @nyx_array_get({ i64, i8* }* %1658, i64 1)
  %1660 = inttoptr i64 %1659 to { i64, i8* }*
  %1661 = alloca { i64, i8* }*
  store { i64, i8* }* %1660, { i64, i8* }** %1661
  %1662 = load { i64, i8* }*, { i64, i8* }** %1653
  %1663 = call i64 @nyx_array_get({ i64, i8* }* %1662, i64 2)
  %1664 = alloca i64
  store i64 %1663, i64* %1664
  %1665 = load { i64, i8* }*, { i64, i8* }** %1653
  %1666 = call i64 @nyx_array_get({ i64, i8* }* %1665, i64 3)
  %1667 = inttoptr i64 %1666 to { i64, i8* }*
  %1668 = alloca { i64, i8* }*
  store { i64, i8* }* %1667, { i64, i8* }** %1668
  %1669 = call { i64, i8* }* @nyx_array_new_ptr()
  %1670 = alloca { i64, i8* }*
  store { i64, i8* }* %1669, { i64, i8* }** %1670
  %1671 = load { i64, i8* }*, { i64, i8* }** %1668
  %1672 = call %nyx_string* @astnode_get_type({ i64, i8* }* %1671)
  %1673 = alloca %nyx_string*
  store %nyx_string* %1672, %nyx_string** %1673
  %1674 = load { i64, i8* }*, { i64, i8* }** %1668
  %1675 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %1674)
  %1676 = alloca { i64, i8* }*
  store { i64, i8* }* %1675, { i64, i8* }** %1676
  %1677 = getelementptr %Environment, %Environment* %env.ptr, i32 0, i32 0
  %1678 = load i8*, i8** %1677
  %1679 = alloca i8*
  store i8* %1678, i8** %1679
  %1680 = getelementptr %Environment, %Environment* %env.ptr, i32 0, i32 1
  %1681 = load { i64, i8* }*, { i64, i8* }** %1680
  %1682 = alloca { i64, i8* }*
  store { i64, i8* }* %1681, { i64, i8* }** %1682
  %1683 = getelementptr %Value, %Value* null, i32 1
  %1684 = ptrtoint %Value* %1683 to i64
  %1685 = call i8* @GC_malloc(i64 %1684)
  %1686 = bitcast i8* %1685 to %Value*
  %1687 = getelementptr [9 x i8], [9 x i8]* @.str127, i32 0, i32 0
  %1688 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str127.c, i8* %1687)
  %1689 = getelementptr %Value, %Value* %1686, i32 0, i32 0
  store %nyx_string* %1688, %nyx_string** %1689
  %1690 = getelementptr %Value, %Value* %1686, i32 0, i32 1
  store i64 0, i64* %1690
  %1691 = getelementptr %Value, %Value* %1686, i32 0, i32 2
  store double 0.0, double* %1691
  %1692 = getelementptr %Value, %Value* %1686, i32 0, i32 3
  store i1 0, i1* %1692
  %1693 = getelementptr [1 x i8], [1 x i8]* @.str128, i32 0, i32 0
  %1694 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str128.c, i8* %1693)
  %1695 = getelementptr %Value, %Value* %1686, i32 0, i32 4
  store %nyx_string* %1694, %nyx_string** %1695
  %1696 = load { i64, i8* }*, { i64, i8* }** %1670
  %1697 = getelementptr %Value, %Value* %1686, i32 0, i32 5
  store { i64, i8* }* %1696, { i64, i8* }** %1697
  %1698 = load { i64, i8* }*, { i64, i8* }** %1661
  %1699 = getelementptr %Value, %Value* %1686, i32 0, i32 6
  store { i64, i8* }* %1698, { i64, i8* }** %1699
  %1700 = load %nyx_string*, %nyx_string** %1673
  %1701 = getelementptr %Value, %Value* %1686, i32 0, i32 7
  store %nyx_string* %1700, %nyx_string** %1701
  %1702 = load { i64, i8* }*, { i64, i8* }** %1676
  %1703 = getelementptr %Value, %Value* %1686, i32 0, i32 8
  store { i64, i8* }* %1702, { i64, i8* }** %1703
  %1704 = load i8*, i8** %1679
  %1705 = getelementptr %Value, %Value* %1686, i32 0, i32 9
  store i8* %1704, i8** %1705
  %1706 = load { i64, i8* }*, { i64, i8* }** %1682
  %1707 = getelementptr %Value, %Value* %1686, i32 0, i32 10
  store { i64, i8* }* %1706, { i64, i8* }** %1707
  %1708 = load %Value, %Value* %1686
  %1709 = alloca %Value
  store %Value %1708, %Value* %1709
  %1710 = load %Environment, %Environment* %env.ptr
  %1711 = load %nyx_string*, %nyx_string** %1657
  %1712 = load %Value, %Value* %1709
  %1713 = call i64 @env_define(%Environment %1710, %nyx_string* %1711, %Value %1712)
  %1714 = call %Value @make_nil()
  ret %Value %1714
}

define internal %Value @unwrap_return_value(
%Value %return_val.param) {
  %return_val.ptr = alloca %Value
  store %Value %return_val.param, %Value* %return_val.ptr
  %1715 = getelementptr %Value, %Value* %return_val.ptr, i32 0, i32 5
  %1716 = load { i64, i8* }*, { i64, i8* }** %1715
  %1717 = alloca { i64, i8* }*
  store { i64, i8* }* %1716, { i64, i8* }** %1717
  %1718 = load { i64, i8* }*, { i64, i8* }** %1717
  %1719 = call i64 @nyx_array_get({ i64, i8* }* %1718, i64 0)
  %1720 = inttoptr i64 %1719 to %Value*
  %1721 = load %Value, %Value* %1720
  %1722 = alloca %Value
  store %Value %1721, %Value* %1722
  %1723 = load %Value, %Value* %1722
  ret %Value %1723
}

define internal %Value @eval_method_call(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %1724 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1725 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %1724)
  %1726 = alloca { i64, i8* }*
  store { i64, i8* }* %1725, { i64, i8* }** %1726
  %1727 = load { i64, i8* }*, { i64, i8* }** %1726
  %1728 = call i64 @nyx_array_get({ i64, i8* }* %1727, i64 0)
  %1729 = inttoptr i64 %1728 to { i64, i8* }*
  %1730 = alloca { i64, i8* }*
  store { i64, i8* }* %1729, { i64, i8* }** %1730
  %1731 = load { i64, i8* }*, { i64, i8* }** %1726
  %1732 = call i64 @nyx_array_get_checked({ i64, i8* }* %1731, i64 1, i64 2)
  %1733 = inttoptr i64 %1732 to %nyx_string*
  %1734 = alloca %nyx_string*
  store %nyx_string* %1733, %nyx_string** %1734
  %1735 = load { i64, i8* }*, { i64, i8* }** %1726
  %1736 = call i64 @nyx_array_get({ i64, i8* }* %1735, i64 2)
  %1737 = inttoptr i64 %1736 to { i64, i8* }*
  %1738 = alloca { i64, i8* }*
  store { i64, i8* }* %1737, { i64, i8* }** %1738
  %1739 = load { i64, i8* }*, { i64, i8* }** %1730
  %1740 = load %Environment, %Environment* %env.ptr
  %1741 = call %Value @eval_expr({ i64, i8* }* %1739, %Environment %1740)
  %1742 = alloca %Value
  store %Value %1741, %Value* %1742
  %1743 = getelementptr %Value, %Value* %1742, i32 0, i32 0
  %1744 = load %nyx_string*, %nyx_string** %1743
  %1745 = getelementptr [7 x i8], [7 x i8]* @.str129, i32 0, i32 0
  %1746 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str129.c, i8* %1745)
  %1747 = call i1 @nyx_string_equals(%nyx_string* %1744, %nyx_string* %1746)
  br i1 %1747, label %then322, label %else323
then322:
  %1748 = getelementptr %Value, %Value* %1742, i32 0, i32 4
  %1749 = load %nyx_string*, %nyx_string** %1748
  %1750 = alloca %nyx_string*
  store %nyx_string* %1749, %nyx_string** %1750
  %1751 = load %nyx_string*, %nyx_string** %1734
  %1752 = getelementptr [7 x i8], [7 x i8]* @.str130, i32 0, i32 0
  %1753 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str130.c, i8* %1752)
  %1754 = call i1 @nyx_string_equals(%nyx_string* %1751, %nyx_string* %1753)
  br i1 %1754, label %then325, label %else326
then325:
  %1755 = load %nyx_string*, %nyx_string** %1750
  %1756 = call i64 @nyx_string_byte_length(%nyx_string* %1755)
  %1757 = call %Value @make_int(i64 %1756)
  ret %Value %1757
else326:
  br label %merge327
merge327:
  %1758 = load %nyx_string*, %nyx_string** %1734
  %1759 = getelementptr [12 x i8], [12 x i8]* @.str131, i32 0, i32 0
  %1760 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str131.c, i8* %1759)
  %1761 = call i1 @nyx_string_equals(%nyx_string* %1758, %nyx_string* %1760)
  br i1 %1761, label %then328, label %else329
then328:
  %1762 = load %nyx_string*, %nyx_string** %1750
  %1763 = call i64 @nyx_string_length_utf8(%nyx_string* %1762)
  %1764 = call %Value @make_int(i64 %1763)
  ret %Value %1764
else329:
  br label %merge330
merge330:
  %1765 = load %nyx_string*, %nyx_string** %1734
  %1766 = getelementptr [12 x i8], [12 x i8]* @.str132, i32 0, i32 0
  %1767 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str132.c, i8* %1766)
  %1768 = call i1 @nyx_string_equals(%nyx_string* %1765, %nyx_string* %1767)
  br i1 %1768, label %then331, label %else332
then331:
  %1769 = load %nyx_string*, %nyx_string** %1750
  %1770 = call i64 @nyx_string_byte_length(%nyx_string* %1769)
  %1771 = call %Value @make_int(i64 %1770)
  ret %Value %1771
else332:
  br label %merge333
merge333:
  %1772 = load %nyx_string*, %nyx_string** %1734
  %1773 = getelementptr [8 x i8], [8 x i8]* @.str133, i32 0, i32 0
  %1774 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str133.c, i8* %1773)
  %1775 = call i1 @nyx_string_equals(%nyx_string* %1772, %nyx_string* %1774)
  br i1 %1775, label %then334, label %else335
then334:
  %1776 = load %nyx_string*, %nyx_string** %1750
  %1777 = call %nyx_string* @nyx_string_to_upper(%nyx_string* %1776)
  %1778 = call %Value @make_string(%nyx_string* %1777)
  ret %Value %1778
else335:
  br label %merge336
merge336:
  %1779 = load %nyx_string*, %nyx_string** %1734
  %1780 = getelementptr [8 x i8], [8 x i8]* @.str134, i32 0, i32 0
  %1781 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str134.c, i8* %1780)
  %1782 = call i1 @nyx_string_equals(%nyx_string* %1779, %nyx_string* %1781)
  br i1 %1782, label %then337, label %else338
then337:
  %1783 = load %nyx_string*, %nyx_string** %1750
  %1784 = call %nyx_string* @nyx_string_to_lower(%nyx_string* %1783)
  %1785 = call %Value @make_string(%nyx_string* %1784)
  ret %Value %1785
else338:
  br label %merge339
merge339:
  %1786 = load %nyx_string*, %nyx_string** %1734
  %1787 = getelementptr [5 x i8], [5 x i8]* @.str135, i32 0, i32 0
  %1788 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str135.c, i8* %1787)
  %1789 = call i1 @nyx_string_equals(%nyx_string* %1786, %nyx_string* %1788)
  br i1 %1789, label %then340, label %else341
then340:
  %1790 = load %nyx_string*, %nyx_string** %1750
  %1791 = call %nyx_string* @nyx_string_trim(%nyx_string* %1790)
  %1792 = call %Value @make_string(%nyx_string* %1791)
  ret %Value %1792
else341:
  br label %merge342
merge342:
  %1793 = load %nyx_string*, %nyx_string** %1734
  %1794 = getelementptr [8 x i8], [8 x i8]* @.str136, i32 0, i32 0
  %1795 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str136.c, i8* %1794)
  %1796 = call i1 @nyx_string_equals(%nyx_string* %1793, %nyx_string* %1795)
  br i1 %1796, label %then343, label %else344
then343:
  %1797 = load { i64, i8* }*, { i64, i8* }** %1738
  %1798 = call i64 @nyx_array_get({ i64, i8* }* %1797, i64 0)
  %1799 = inttoptr i64 %1798 to { i64, i8* }*
  %1800 = load %Environment, %Environment* %env.ptr
  %1801 = call %Value @eval_expr({ i64, i8* }* %1799, %Environment %1800)
  %1802 = alloca %Value
  store %Value %1801, %Value* %1802
  %1803 = load %nyx_string*, %nyx_string** %1750
  %1804 = getelementptr %Value, %Value* %1802, i32 0, i32 4
  %1805 = load %nyx_string*, %nyx_string** %1804
  %1806 = call i64 @nyx_string_index_of(%nyx_string* %1803, %nyx_string* %1805)
  %1807 = call %Value @make_int(i64 %1806)
  ret %Value %1807
else344:
  br label %merge345
merge345:
  %1808 = load %nyx_string*, %nyx_string** %1734
  %1809 = getelementptr [10 x i8], [10 x i8]* @.str137, i32 0, i32 0
  %1810 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str137.c, i8* %1809)
  %1811 = call i1 @nyx_string_equals(%nyx_string* %1808, %nyx_string* %1810)
  br i1 %1811, label %then346, label %else347
then346:
  %1812 = load { i64, i8* }*, { i64, i8* }** %1738
  %1813 = call i64 @nyx_array_get({ i64, i8* }* %1812, i64 0)
  %1814 = inttoptr i64 %1813 to { i64, i8* }*
  %1815 = load %Environment, %Environment* %env.ptr
  %1816 = call %Value @eval_expr({ i64, i8* }* %1814, %Environment %1815)
  %1817 = alloca %Value
  store %Value %1816, %Value* %1817
  %1818 = load { i64, i8* }*, { i64, i8* }** %1738
  %1819 = call i64 @nyx_array_get({ i64, i8* }* %1818, i64 1)
  %1820 = inttoptr i64 %1819 to { i64, i8* }*
  %1821 = load %Environment, %Environment* %env.ptr
  %1822 = call %Value @eval_expr({ i64, i8* }* %1820, %Environment %1821)
  %1823 = alloca %Value
  store %Value %1822, %Value* %1823
  %1824 = load %nyx_string*, %nyx_string** %1750
  %1825 = getelementptr %Value, %Value* %1817, i32 0, i32 1
  %1826 = load i64, i64* %1825
  %1827 = getelementptr %Value, %Value* %1823, i32 0, i32 1
  %1828 = load i64, i64* %1827
  %1829 = call %nyx_string* @nyx_string_substring(%nyx_string* %1824, i64 %1826, i64 %1828)
  %1830 = call %Value @make_string(%nyx_string* %1829)
  ret %Value %1830
else347:
  br label %merge348
merge348:
  %1831 = load %nyx_string*, %nyx_string** %1734
  %1832 = getelementptr [7 x i8], [7 x i8]* @.str138, i32 0, i32 0
  %1833 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str138.c, i8* %1832)
  %1834 = call i1 @nyx_string_equals(%nyx_string* %1831, %nyx_string* %1833)
  br i1 %1834, label %then349, label %else350
then349:
  %1835 = load { i64, i8* }*, { i64, i8* }** %1738
  %1836 = call i64 @nyx_array_get({ i64, i8* }* %1835, i64 0)
  %1837 = inttoptr i64 %1836 to { i64, i8* }*
  %1838 = load %Environment, %Environment* %env.ptr
  %1839 = call %Value @eval_expr({ i64, i8* }* %1837, %Environment %1838)
  %1840 = alloca %Value
  store %Value %1839, %Value* %1840
  %1841 = load %nyx_string*, %nyx_string** %1750
  %1842 = getelementptr %Value, %Value* %1840, i32 0, i32 1
  %1843 = load i64, i64* %1842
  %1844 = call i8 @nyx_string_char_at(%nyx_string* %1841, i64 %1843)
  %1845 = zext i8 %1844 to i64
  %1846 = trunc i64 %1845 to i8
  %1847 = alloca i8
  store i8 %1846, i8* %1847
  %1848 = load i8, i8* %1847
  %1849 = call %nyx_string* @nyx_string_from_char(i8 %1848)
  %1850 = call %Value @make_string(%nyx_string* %1849)
  ret %Value %1850
else350:
  br label %merge351
merge351:
  %1851 = load %nyx_string*, %nyx_string** %1734
  %1852 = getelementptr [11 x i8], [11 x i8]* @.str139, i32 0, i32 0
  %1853 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str139.c, i8* %1852)
  %1854 = call i1 @nyx_string_equals(%nyx_string* %1851, %nyx_string* %1853)
  br i1 %1854, label %then352, label %else353
then352:
  %1855 = load { i64, i8* }*, { i64, i8* }** %1738
  %1856 = call i64 @nyx_array_get({ i64, i8* }* %1855, i64 0)
  %1857 = inttoptr i64 %1856 to { i64, i8* }*
  %1858 = load %Environment, %Environment* %env.ptr
  %1859 = call %Value @eval_expr({ i64, i8* }* %1857, %Environment %1858)
  %1860 = alloca %Value
  store %Value %1859, %Value* %1860
  %1861 = load %nyx_string*, %nyx_string** %1750
  %1862 = getelementptr %Value, %Value* %1860, i32 0, i32 4
  %1863 = load %nyx_string*, %nyx_string** %1862
  %1864 = call i1 @nyx_string_starts_with(%nyx_string* %1861, %nyx_string* %1863)
  %1865 = call %Value @make_bool(i1 %1864)
  ret %Value %1865
else353:
  br label %merge354
merge354:
  %1866 = load %nyx_string*, %nyx_string** %1734
  %1867 = getelementptr [9 x i8], [9 x i8]* @.str140, i32 0, i32 0
  %1868 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str140.c, i8* %1867)
  %1869 = call i1 @nyx_string_equals(%nyx_string* %1866, %nyx_string* %1868)
  br i1 %1869, label %then355, label %else356
then355:
  %1870 = load { i64, i8* }*, { i64, i8* }** %1738
  %1871 = call i64 @nyx_array_get({ i64, i8* }* %1870, i64 0)
  %1872 = inttoptr i64 %1871 to { i64, i8* }*
  %1873 = load %Environment, %Environment* %env.ptr
  %1874 = call %Value @eval_expr({ i64, i8* }* %1872, %Environment %1873)
  %1875 = alloca %Value
  store %Value %1874, %Value* %1875
  %1876 = load %nyx_string*, %nyx_string** %1750
  %1877 = getelementptr %Value, %Value* %1875, i32 0, i32 4
  %1878 = load %nyx_string*, %nyx_string** %1877
  %1879 = call i1 @nyx_string_ends_with(%nyx_string* %1876, %nyx_string* %1878)
  %1880 = call %Value @make_bool(i1 %1879)
  ret %Value %1880
else356:
  br label %merge357
merge357:
  %1881 = load %nyx_string*, %nyx_string** %1734
  %1882 = getelementptr [8 x i8], [8 x i8]* @.str141, i32 0, i32 0
  %1883 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str141.c, i8* %1882)
  %1884 = call i1 @nyx_string_equals(%nyx_string* %1881, %nyx_string* %1883)
  br i1 %1884, label %then358, label %else359
then358:
  %1885 = load { i64, i8* }*, { i64, i8* }** %1738
  %1886 = call i64 @nyx_array_get({ i64, i8* }* %1885, i64 0)
  %1887 = inttoptr i64 %1886 to { i64, i8* }*
  %1888 = load %Environment, %Environment* %env.ptr
  %1889 = call %Value @eval_expr({ i64, i8* }* %1887, %Environment %1888)
  %1890 = alloca %Value
  store %Value %1889, %Value* %1890
  %1891 = load { i64, i8* }*, { i64, i8* }** %1738
  %1892 = call i64 @nyx_array_get({ i64, i8* }* %1891, i64 1)
  %1893 = inttoptr i64 %1892 to { i64, i8* }*
  %1894 = load %Environment, %Environment* %env.ptr
  %1895 = call %Value @eval_expr({ i64, i8* }* %1893, %Environment %1894)
  %1896 = alloca %Value
  store %Value %1895, %Value* %1896
  %1897 = load %nyx_string*, %nyx_string** %1750
  %1898 = getelementptr %Value, %Value* %1890, i32 0, i32 4
  %1899 = load %nyx_string*, %nyx_string** %1898
  %1900 = getelementptr %Value, %Value* %1896, i32 0, i32 4
  %1901 = load %nyx_string*, %nyx_string** %1900
  %1902 = call %nyx_string* @nyx_string_replace(%nyx_string* %1897, %nyx_string* %1899, %nyx_string* %1901)
  %1903 = call %Value @make_string(%nyx_string* %1902)
  ret %Value %1903
else359:
  br label %merge360
merge360:
  br label %merge324
else323:
  br label %merge324
merge324:
  %1904 = getelementptr %Value, %Value* %1742, i32 0, i32 0
  %1905 = load %nyx_string*, %nyx_string** %1904
  %1906 = getelementptr [6 x i8], [6 x i8]* @.str142, i32 0, i32 0
  %1907 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str142.c, i8* %1906)
  %1908 = call i1 @nyx_string_equals(%nyx_string* %1905, %nyx_string* %1907)
  br i1 %1908, label %then361, label %else362
then361:
  %1909 = getelementptr %Value, %Value* %1742, i32 0, i32 5
  %1910 = load { i64, i8* }*, { i64, i8* }** %1909
  %1911 = alloca { i64, i8* }*
  store { i64, i8* }* %1910, { i64, i8* }** %1911
  %1912 = load %nyx_string*, %nyx_string** %1734
  %1913 = getelementptr [7 x i8], [7 x i8]* @.str143, i32 0, i32 0
  %1914 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str143.c, i8* %1913)
  %1915 = call i1 @nyx_string_equals(%nyx_string* %1912, %nyx_string* %1914)
  br i1 %1915, label %then364, label %else365
then364:
  %1916 = load { i64, i8* }*, { i64, i8* }** %1911
  %1917 = call i64 @nyx_array_length({ i64, i8* }* %1916)
  %1918 = call %Value @make_int(i64 %1917)
  ret %Value %1918
else365:
  br label %merge366
merge366:
  %1919 = load %nyx_string*, %nyx_string** %1734
  %1920 = getelementptr [5 x i8], [5 x i8]* @.str144, i32 0, i32 0
  %1921 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str144.c, i8* %1920)
  %1922 = call i1 @nyx_string_equals(%nyx_string* %1919, %nyx_string* %1921)
  br i1 %1922, label %then367, label %else368
then367:
  %1923 = load { i64, i8* }*, { i64, i8* }** %1738
  %1924 = call i64 @nyx_array_get({ i64, i8* }* %1923, i64 0)
  %1925 = inttoptr i64 %1924 to { i64, i8* }*
  %1926 = load %Environment, %Environment* %env.ptr
  %1927 = call %Value @eval_expr({ i64, i8* }* %1925, %Environment %1926)
  %1928 = alloca %Value
  store %Value %1927, %Value* %1928
  %1929 = load { i64, i8* }*, { i64, i8* }** %1911
  %1930 = load %Value, %Value* %1928
  %1931 = getelementptr %Value, %Value* null, i32 1
  %1932 = ptrtoint %Value* %1931 to i64
  %1933 = call i8* @GC_malloc(i64 %1932)
  %1934 = bitcast i8* %1933 to %Value*
  store %Value %1930, %Value* %1934
  %1935 = ptrtoint %Value* %1934 to i64
  call void @nyx_array_push({ i64, i8* }* %1929, i64 %1935)
  %1936 = call %Value @make_nil()
  ret %Value %1936
else368:
  br label %merge369
merge369:
  %1937 = load %nyx_string*, %nyx_string** %1734
  %1938 = getelementptr [4 x i8], [4 x i8]* @.str145, i32 0, i32 0
  %1939 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str145.c, i8* %1938)
  %1940 = call i1 @nyx_string_equals(%nyx_string* %1937, %nyx_string* %1939)
  br i1 %1940, label %then370, label %else371
then370:
  %1941 = load { i64, i8* }*, { i64, i8* }** %1911
  %1942 = call i64 @nyx_array_pop({ i64, i8* }* %1941)
  %1943 = call %Value @make_nil()
  ret %Value %1943
else371:
  br label %merge372
merge372:
  br label %merge363
else362:
  br label %merge363
merge363:
  %1944 = load { i64, i8* }*, { i64, i8* }** @g_interp_error_count
  %1945 = load { i64, i8* }*, { i64, i8* }** @g_interp_error_count
  %1946 = call i64 @nyx_array_get({ i64, i8* }* %1945, i64 0)
  %1947 = add i64 %1946, 1
  call void @nyx_array_set({ i64, i8* }* %1944, i64 0, i64 %1947)
  %1948 = getelementptr [9 x i8], [9 x i8]* @.str146, i32 0, i32 0
  %1949 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str146.c, i8* %1948)
  %1950 = call i8* @nyx_string_to_cstr(%nyx_string* %1949)
  %1951 = call %nyx_string* @nyx_getenv(i8* %1950)
  %1952 = alloca %nyx_string*
  store %nyx_string* %1951, %nyx_string** %1952
  %1953 = load %nyx_string*, %nyx_string** %1952
  %1954 = getelementptr [3 x i8], [3 x i8]* @.str147, i32 0, i32 0
  %1955 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str147.c, i8* %1954)
  %1956 = call i1 @nyx_string_equals(%nyx_string* %1953, %nyx_string* %1955)
  br i1 %1956, label %then373, label %else374
then373:
  %1957 = getelementptr [56 x i8], [56 x i8]* @.str148, i32 0, i32 0
  %1958 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str148.c, i8* %1957)
  %1959 = load %nyx_string*, %nyx_string** %1734
  %1960 = call %nyx_string* @nyx_string_concat(%nyx_string* %1958, %nyx_string* %1959)
  %1961 = getelementptr [17 x i8], [17 x i8]* @.str149, i32 0, i32 0
  %1962 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str149.c, i8* %1961)
  %1963 = call %nyx_string* @nyx_string_concat(%nyx_string* %1960, %nyx_string* %1962)
  %1964 = getelementptr %Value, %Value* %1742, i32 0, i32 0
  %1965 = load %nyx_string*, %nyx_string** %1964
  %1966 = call %nyx_string* @nyx_string_concat(%nyx_string* %1963, %nyx_string* %1965)
  %1967 = call i8* @nyx_string_to_cstr(%nyx_string* %1966)
  call void @nyx_print_string(i8* %1967)
  %1968 = getelementptr [85 x i8], [85 x i8]* @.str150, i32 0, i32 0
  %1969 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str150.c, i8* %1968)
  %1970 = call i8* @nyx_string_to_cstr(%nyx_string* %1969)
  call void @nyx_print_string(i8* %1970)
  %1971 = getelementptr [85 x i8], [85 x i8]* @.str151, i32 0, i32 0
  %1972 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str151.c, i8* %1971)
  %1973 = call i8* @nyx_string_to_cstr(%nyx_string* %1972)
  call void @nyx_print_string(i8* %1973)
  br label %merge375
else374:
  %1974 = getelementptr [59 x i8], [59 x i8]* @.str152, i32 0, i32 0
  %1975 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str152.c, i8* %1974)
  %1976 = load %nyx_string*, %nyx_string** %1734
  %1977 = call %nyx_string* @nyx_string_concat(%nyx_string* %1975, %nyx_string* %1976)
  %1978 = getelementptr [11 x i8], [11 x i8]* @.str153, i32 0, i32 0
  %1979 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str153.c, i8* %1978)
  %1980 = call %nyx_string* @nyx_string_concat(%nyx_string* %1977, %nyx_string* %1979)
  %1981 = getelementptr %Value, %Value* %1742, i32 0, i32 0
  %1982 = load %nyx_string*, %nyx_string** %1981
  %1983 = call %nyx_string* @nyx_string_concat(%nyx_string* %1980, %nyx_string* %1982)
  %1984 = call i8* @nyx_string_to_cstr(%nyx_string* %1983)
  call void @nyx_print_string(i8* %1984)
  %1985 = getelementptr [79 x i8], [79 x i8]* @.str154, i32 0, i32 0
  %1986 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str154.c, i8* %1985)
  %1987 = call i8* @nyx_string_to_cstr(%nyx_string* %1986)
  call void @nyx_print_string(i8* %1987)
  %1988 = getelementptr [84 x i8], [84 x i8]* @.str155, i32 0, i32 0
  %1989 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str155.c, i8* %1988)
  %1990 = call i8* @nyx_string_to_cstr(%nyx_string* %1989)
  call void @nyx_print_string(i8* %1990)
  br label %merge375
merge375:
  %1991 = call %Value @make_nil()
  ret %Value %1991
}

define internal %Value @eval_call(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %1992 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1993 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %1992)
  %1994 = alloca { i64, i8* }*
  store { i64, i8* }* %1993, { i64, i8* }** %1994
  %1995 = load { i64, i8* }*, { i64, i8* }** %1994
  %1996 = call i64 @nyx_array_get({ i64, i8* }* %1995, i64 0)
  %1997 = inttoptr i64 %1996 to { i64, i8* }*
  %1998 = alloca { i64, i8* }*
  store { i64, i8* }* %1997, { i64, i8* }** %1998
  %1999 = load { i64, i8* }*, { i64, i8* }** %1994
  %2000 = call i64 @nyx_array_get({ i64, i8* }* %1999, i64 1)
  %2001 = inttoptr i64 %2000 to { i64, i8* }*
  %2002 = alloca { i64, i8* }*
  store { i64, i8* }* %2001, { i64, i8* }** %2002
  %2003 = load { i64, i8* }*, { i64, i8* }** %1998
  %2004 = call i64 @nyx_array_get({ i64, i8* }* %2003, i64 1)
  %2005 = inttoptr i64 %2004 to { i64, i8* }*
  %2006 = alloca { i64, i8* }*
  store { i64, i8* }* %2005, { i64, i8* }** %2006
  %2007 = load { i64, i8* }*, { i64, i8* }** %2006
  %2008 = call i64 @nyx_array_get_checked({ i64, i8* }* %2007, i64 0, i64 2)
  %2009 = inttoptr i64 %2008 to %nyx_string*
  %2010 = alloca %nyx_string*
  store %nyx_string* %2009, %nyx_string** %2010
  %2011 = load %nyx_string*, %nyx_string** %2010
  %2012 = getelementptr [6 x i8], [6 x i8]* @.str156, i32 0, i32 0
  %2013 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str156.c, i8* %2012)
  %2014 = call i1 @nyx_string_equals(%nyx_string* %2011, %nyx_string* %2013)
  br i1 %2014, label %then376, label %else377
then376:
  %2015 = load { i64, i8* }*, { i64, i8* }** %2002
  %2016 = load %Environment, %Environment* %env.ptr
  %2017 = call %Value @eval_builtin_print({ i64, i8* }* %2015, %Environment %2016)
  ret %Value %2017
else377:
  br label %merge378
merge378:
  %2018 = load %nyx_string*, %nyx_string** %2010
  %2019 = getelementptr [10 x i8], [10 x i8]* @.str157, i32 0, i32 0
  %2020 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str157.c, i8* %2019)
  %2021 = call i1 @nyx_string_equals(%nyx_string* %2018, %nyx_string* %2020)
  br i1 %2021, label %then379, label %else380
then379:
  %2022 = load { i64, i8* }*, { i64, i8* }** %2002
  %2023 = load %Environment, %Environment* %env.ptr
  %2024 = call %Value @eval_builtin_read_file({ i64, i8* }* %2022, %Environment %2023)
  ret %Value %2024
else380:
  br label %merge381
merge381:
  %2025 = load %nyx_string*, %nyx_string** %2010
  %2026 = getelementptr [10 x i8], [10 x i8]* @.str158, i32 0, i32 0
  %2027 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str158.c, i8* %2026)
  %2028 = call i1 @nyx_string_equals(%nyx_string* %2025, %nyx_string* %2027)
  br i1 %2028, label %then382, label %else383
then382:
  %2029 = load { i64, i8* }*, { i64, i8* }** %2002
  %2030 = load %Environment, %Environment* %env.ptr
  %2031 = call %Value @eval_builtin_read_line({ i64, i8* }* %2029, %Environment %2030)
  ret %Value %2031
else383:
  br label %merge384
merge384:
  %2032 = load %nyx_string*, %nyx_string** %2010
  %2033 = getelementptr [17 x i8], [17 x i8]* @.str159, i32 0, i32 0
  %2034 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str159.c, i8* %2033)
  %2035 = call i1 @nyx_string_equals(%nyx_string* %2032, %nyx_string* %2034)
  br i1 %2035, label %then385, label %else386
then385:
  %2036 = load { i64, i8* }*, { i64, i8* }** %2002
  %2037 = load %Environment, %Environment* %env.ptr
  %2038 = call %Value @eval_builtin_print_no_newline({ i64, i8* }* %2036, %Environment %2037)
  ret %Value %2038
else386:
  br label %merge387
merge387:
  %2039 = load %Environment, %Environment* %env.ptr
  %2040 = load %nyx_string*, %nyx_string** %2010
  %2041 = call %Value @env_get(%Environment %2039, %nyx_string* %2040)
  %2042 = alloca %Value
  store %Value %2041, %Value* %2042
  %2043 = getelementptr %Value, %Value* %2042, i32 0, i32 0
  %2044 = load %nyx_string*, %nyx_string** %2043
  %2045 = getelementptr [9 x i8], [9 x i8]* @.str160, i32 0, i32 0
  %2046 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str160.c, i8* %2045)
  %2047 = call i1 @nyx_string_equals(%nyx_string* %2044, %nyx_string* %2046)
  %2048 = xor i1 %2047, true
  br i1 %2048, label %then388, label %else389
then388:
  %2049 = getelementptr [8 x i8], [8 x i8]* @.str161, i32 0, i32 0
  %2050 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str161.c, i8* %2049)
  %2051 = load %nyx_string*, %nyx_string** %2010
  %2052 = call %nyx_string* @nyx_string_concat(%nyx_string* %2050, %nyx_string* %2051)
  %2053 = getelementptr [20 x i8], [20 x i8]* @.str162, i32 0, i32 0
  %2054 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str162.c, i8* %2053)
  %2055 = call %nyx_string* @nyx_string_concat(%nyx_string* %2052, %nyx_string* %2054)
  %2056 = call i8* @nyx_string_to_cstr(%nyx_string* %2055)
  call void @nyx_print_string(i8* %2056)
  %2057 = call %Value @make_nil()
  ret %Value %2057
else389:
  br label %merge390
merge390:
  %2058 = load %Value, %Value* %2042
  %2059 = call { i64, i8* }* @get_func_params(%Value %2058)
  %2060 = alloca { i64, i8* }*
  store { i64, i8* }* %2059, { i64, i8* }** %2060
  %2061 = load %Value, %Value* %2042
  %2062 = call %nyx_string* @get_func_body_type(%Value %2061)
  %2063 = alloca %nyx_string*
  store %nyx_string* %2062, %nyx_string** %2063
  %2064 = load %Value, %Value* %2042
  %2065 = call { i64, i8* }* @get_func_body_data(%Value %2064)
  %2066 = alloca { i64, i8* }*
  store { i64, i8* }* %2065, { i64, i8* }** %2066
  %2067 = load %nyx_string*, %nyx_string** %2063
  %2068 = load { i64, i8* }*, { i64, i8* }** %2066
  %2069 = call { i64, i8* }* @make_astnode(%nyx_string* %2067, { i64, i8* }* %2068)
  %2070 = alloca { i64, i8* }*
  store { i64, i8* }* %2069, { i64, i8* }** %2070
  %2071 = load %Value, %Value* %2042
  %2072 = call i8* @get_func_env_bindings(%Value %2071)
  %2073 = alloca i8*
  store i8* %2072, i8** %2073
  %2074 = load %Value, %Value* %2042
  %2075 = call { i64, i8* }* @get_func_env_parent(%Value %2074)
  %2076 = alloca { i64, i8* }*
  store { i64, i8* }* %2075, { i64, i8* }** %2076
  %2077 = getelementptr %Environment, %Environment* null, i32 1
  %2078 = ptrtoint %Environment* %2077 to i64
  %2079 = call i8* @GC_malloc(i64 %2078)
  %2080 = bitcast i8* %2079 to %Environment*
  %2081 = load i8*, i8** %2073
  %2082 = getelementptr %Environment, %Environment* %2080, i32 0, i32 0
  store i8* %2081, i8** %2082
  %2083 = load { i64, i8* }*, { i64, i8* }** %2076
  %2084 = getelementptr %Environment, %Environment* %2080, i32 0, i32 1
  store { i64, i8* }* %2083, { i64, i8* }** %2084
  %2085 = load %Environment, %Environment* %2080
  %2086 = alloca %Environment
  store %Environment %2085, %Environment* %2086
  %2087 = load %Environment, %Environment* %2086
  %2088 = call %Environment @make_child_env(%Environment %2087)
  %2089 = alloca %Environment
  store %Environment %2088, %Environment* %2089
  %2090 = alloca i64
  store i64 0, i64* %2090
  %2091 = call i8* @llvm.stacksave()
  br label %while_cond391
while_cond391:
  %2092 = load i64, i64* %2090
  %2093 = load { i64, i8* }*, { i64, i8* }** %2060
  %2094 = call i64 @nyx_array_length({ i64, i8* }* %2093)
  %2095 = icmp slt i64 %2092, %2094
  br i1 %2095, label %while_body392, label %while_end393
while_body392:
  call void @llvm.stackrestore(i8* %2091)
  %2096 = load { i64, i8* }*, { i64, i8* }** %2060
  %2097 = load i64, i64* %2090
  %2098 = call i64 @nyx_array_get({ i64, i8* }* %2096, i64 %2097)
  %2099 = inttoptr i64 %2098 to { i64, i8* }*
  %2100 = alloca { i64, i8* }*
  store { i64, i8* }* %2099, { i64, i8* }** %2100
  %2101 = load { i64, i8* }*, { i64, i8* }** %2100
  %2102 = call i64 @nyx_array_get_checked({ i64, i8* }* %2101, i64 0, i64 2)
  %2103 = inttoptr i64 %2102 to %nyx_string*
  %2104 = alloca %nyx_string*
  store %nyx_string* %2103, %nyx_string** %2104
  %2105 = load { i64, i8* }*, { i64, i8* }** %2002
  %2106 = load i64, i64* %2090
  %2107 = call i64 @nyx_array_get({ i64, i8* }* %2105, i64 %2106)
  %2108 = inttoptr i64 %2107 to { i64, i8* }*
  %2109 = alloca { i64, i8* }*
  store { i64, i8* }* %2108, { i64, i8* }** %2109
  %2110 = load { i64, i8* }*, { i64, i8* }** %2109
  %2111 = load %Environment, %Environment* %env.ptr
  %2112 = call %Value @eval_expr({ i64, i8* }* %2110, %Environment %2111)
  %2113 = alloca %Value
  store %Value %2112, %Value* %2113
  %2114 = load %Environment, %Environment* %2089
  %2115 = load %nyx_string*, %nyx_string** %2104
  %2116 = load %Value, %Value* %2113
  %2117 = call i64 @env_define(%Environment %2114, %nyx_string* %2115, %Value %2116)
  %2118 = load i64, i64* %2090
  %2119 = add i64 %2118, 1
  store i64 %2119, i64* %2090
  br label %while_cond391
while_end393:
  %2120 = load { i64, i8* }*, { i64, i8* }** %2070
  %2121 = load %Environment, %Environment* %2089
  %2122 = call %Value @eval_stmt({ i64, i8* }* %2120, %Environment %2121)
  %2123 = alloca %Value
  store %Value %2122, %Value* %2123
  %2124 = getelementptr %Value, %Value* %2123, i32 0, i32 0
  %2125 = load %nyx_string*, %nyx_string** %2124
  %2126 = getelementptr [7 x i8], [7 x i8]* @.str163, i32 0, i32 0
  %2127 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str163.c, i8* %2126)
  %2128 = call i1 @nyx_string_equals(%nyx_string* %2125, %nyx_string* %2127)
  br i1 %2128, label %then394, label %else395
then394:
  %2129 = load %Value, %Value* %2123
  %2130 = call %Value @unwrap_return_value(%Value %2129)
  ret %Value %2130
else395:
  br label %merge396
merge396:
  %2131 = load %Value, %Value* %2123
  ret %Value %2131
}

define internal %Value @eval_builtin_print(
{ i64, i8* }* %args.param, %Environment %env.param) {
  %args.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %args.param, { i64, i8* }** %args.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %2132 = alloca i64
  store i64 0, i64* %2132
  %2133 = call i8* @llvm.stacksave()
  br label %while_cond397
while_cond397:
  %2134 = load i64, i64* %2132
  %2135 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %2136 = call i64 @nyx_array_length({ i64, i8* }* %2135)
  %2137 = icmp slt i64 %2134, %2136
  br i1 %2137, label %while_body398, label %while_end399
while_body398:
  call void @llvm.stackrestore(i8* %2133)
  %2138 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %2139 = load i64, i64* %2132
  %2140 = call i64 @nyx_array_get({ i64, i8* }* %2138, i64 %2139)
  %2141 = inttoptr i64 %2140 to { i64, i8* }*
  %2142 = alloca { i64, i8* }*
  store { i64, i8* }* %2141, { i64, i8* }** %2142
  %2143 = load { i64, i8* }*, { i64, i8* }** %2142
  %2144 = load %Environment, %Environment* %env.ptr
  %2145 = call %Value @eval_expr({ i64, i8* }* %2143, %Environment %2144)
  %2146 = alloca %Value
  store %Value %2145, %Value* %2146
  %2147 = load %Value, %Value* %2146
  %2148 = call i64 @print_value(%Value %2147)
  %2149 = load i64, i64* %2132
  %2150 = add i64 %2149, 1
  store i64 %2150, i64* %2132
  br label %while_cond397
while_end399:
  %2151 = call %Value @make_nil()
  ret %Value %2151
}

define internal %Value @eval_builtin_read_line(
{ i64, i8* }* %args.param, %Environment %env.param) {
  %args.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %args.param, { i64, i8* }** %args.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %2152 = call %nyx_string* @nyx_read_line()
  %2153 = alloca %nyx_string*
  store %nyx_string* %2152, %nyx_string** %2153
  %2154 = load %nyx_string*, %nyx_string** %2153
  %2155 = call %Value @make_string(%nyx_string* %2154)
  ret %Value %2155
}

define internal %Value @eval_builtin_print_no_newline(
{ i64, i8* }* %args.param, %Environment %env.param) {
  %args.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %args.param, { i64, i8* }** %args.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %2156 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %2157 = call i64 @nyx_array_length({ i64, i8* }* %2156)
  %2158 = icmp sgt i64 %2157, 0
  br i1 %2158, label %then400, label %else401
then400:
  %2159 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %2160 = call i64 @nyx_array_get({ i64, i8* }* %2159, i64 0)
  %2161 = inttoptr i64 %2160 to { i64, i8* }*
  %2162 = alloca { i64, i8* }*
  store { i64, i8* }* %2161, { i64, i8* }** %2162
  %2163 = load { i64, i8* }*, { i64, i8* }** %2162
  %2164 = load %Environment, %Environment* %env.ptr
  %2165 = call %Value @eval_expr({ i64, i8* }* %2163, %Environment %2164)
  %2166 = alloca %Value
  store %Value %2165, %Value* %2166
  %2167 = load %Value, %Value* %2166
  %2168 = call %nyx_string* @value_to_string(%Value %2167)
  call void @nyx_print_no_newline(%nyx_string* %2168)
  br label %merge402
else401:
  br label %merge402
merge402:
  %2169 = call %Value @make_nil()
  ret %Value %2169
}

define internal %Value @eval_builtin_read_file(
{ i64, i8* }* %args.param, %Environment %env.param) {
  %args.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %args.param, { i64, i8* }** %args.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %2170 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %2171 = call i64 @nyx_array_length({ i64, i8* }* %2170)
  %2172 = icmp sgt i64 %2171, 0
  br i1 %2172, label %then403, label %else404
then403:
  %2173 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %2174 = call i64 @nyx_array_get({ i64, i8* }* %2173, i64 0)
  %2175 = inttoptr i64 %2174 to { i64, i8* }*
  %2176 = load %Environment, %Environment* %env.ptr
  %2177 = call %Value @eval_expr({ i64, i8* }* %2175, %Environment %2176)
  %2178 = alloca %Value
  store %Value %2177, %Value* %2178
  %2179 = load %Value, %Value* %2178
  %2180 = call %nyx_string* @value_to_string(%Value %2179)
  %2181 = alloca %nyx_string*
  store %nyx_string* %2180, %nyx_string** %2181
  %2182 = load %nyx_string*, %nyx_string** %2181
  %2183 = call i8* @nyx_string_to_cstr(%nyx_string* %2182)
  %2184 = call %nyx_string* @nyx_read_file(i8* %2183)
  %2185 = alloca %nyx_string*
  store %nyx_string* %2184, %nyx_string** %2185
  %2186 = load %nyx_string*, %nyx_string** %2185
  %2187 = call %Value @make_string(%nyx_string* %2186)
  ret %Value %2187
else404:
  br label %merge405
merge405:
  %2188 = call %Value @make_nil()
  ret %Value %2188
}

define %Environment @repl_make_env(
) {
  %2189 = call %Environment @make_env()
  ret %Environment %2189
}

define %nyx_string* @repl_eval(
{ i64, i8* }* %ast.param, %Environment %env.param) {
  %ast.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %ast.param, { i64, i8* }** %ast.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %2190 = load { i64, i8* }*, { i64, i8* }** %ast.ptr
  %2191 = call i64 @nyx_array_get({ i64, i8* }* %2190, i64 1)
  %2192 = inttoptr i64 %2191 to { i64, i8* }*
  %2193 = alloca { i64, i8* }*
  store { i64, i8* }* %2192, { i64, i8* }** %2193
  %2194 = load { i64, i8* }*, { i64, i8* }** %2193
  %2195 = call i64 @nyx_array_get({ i64, i8* }* %2194, i64 0)
  %2196 = inttoptr i64 %2195 to { i64, i8* }*
  %2197 = alloca { i64, i8* }*
  store { i64, i8* }* %2196, { i64, i8* }** %2197
  %2198 = getelementptr [1 x i8], [1 x i8]* @.str164, i32 0, i32 0
  %2199 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str164.c, i8* %2198)
  %2200 = alloca %nyx_string*
  store %nyx_string* %2199, %nyx_string** %2200
  %2201 = alloca i64
  store i64 0, i64* %2201
  %2202 = call i8* @llvm.stacksave()
  br label %while_cond406
while_cond406:
  %2203 = load i64, i64* %2201
  %2204 = load { i64, i8* }*, { i64, i8* }** %2197
  %2205 = call i64 @nyx_array_length({ i64, i8* }* %2204)
  %2206 = icmp slt i64 %2203, %2205
  br i1 %2206, label %while_body407, label %while_end408
while_body407:
  call void @llvm.stackrestore(i8* %2202)
  %2207 = load { i64, i8* }*, { i64, i8* }** %2197
  %2208 = load i64, i64* %2201
  %2209 = call i64 @nyx_array_get({ i64, i8* }* %2207, i64 %2208)
  %2210 = inttoptr i64 %2209 to { i64, i8* }*
  %2211 = alloca { i64, i8* }*
  store { i64, i8* }* %2210, { i64, i8* }** %2211
  %2212 = load { i64, i8* }*, { i64, i8* }** %2211
  %2213 = load %Environment, %Environment* %env.ptr
  %2214 = call %Value @eval_stmt({ i64, i8* }* %2212, %Environment %2213)
  %2215 = alloca %Value
  store %Value %2214, %Value* %2215
  %2216 = alloca i1
  store i1 false, i1* %2216
  %2217 = getelementptr %Value, %Value* %2215, i32 0, i32 0
  %2218 = load %nyx_string*, %nyx_string** %2217
  %2219 = getelementptr [4 x i8], [4 x i8]* @.str165, i32 0, i32 0
  %2220 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str165.c, i8* %2219)
  %2221 = call i1 @nyx_string_equals(%nyx_string* %2218, %nyx_string* %2220)
  %2222 = xor i1 %2221, true
  br i1 %2222, label %sc_and_rhs409, label %sc_and_end410
sc_and_rhs409:
  %2223 = getelementptr %Value, %Value* %2215, i32 0, i32 0
  %2224 = load %nyx_string*, %nyx_string** %2223
  %2225 = getelementptr [7 x i8], [7 x i8]* @.str166, i32 0, i32 0
  %2226 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str166.c, i8* %2225)
  %2227 = call i1 @nyx_string_equals(%nyx_string* %2224, %nyx_string* %2226)
  %2228 = xor i1 %2227, true
  store i1 %2228, i1* %2216
  br label %sc_and_end410
sc_and_end410:
  %2229 = load i1, i1* %2216
  br i1 %2229, label %then411, label %else412
then411:
  %2230 = getelementptr [4 x i8], [4 x i8]* @.str167, i32 0, i32 0
  %2231 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str167.c, i8* %2230)
  %2232 = load %Value, %Value* %2215
  %2233 = call %nyx_string* @value_to_string(%Value %2232)
  %2234 = call %nyx_string* @nyx_string_concat(%nyx_string* %2231, %nyx_string* %2233)
  store %nyx_string* %2234, %nyx_string** %2200
  br label %merge413
else412:
  br label %merge413
merge413:
  %2235 = load i64, i64* %2201
  %2236 = add i64 %2235, 1
  store i64 %2236, i64* %2201
  br label %while_cond406
while_end408:
  %2237 = load %nyx_string*, %nyx_string** %2200
  ret %nyx_string* %2237
}

define i8* @repl_make_map(
) {
  %2238 = call i8* @nyx_map_new(i32 0)
  ret i8* %2238
}

define %nyx_string* @repl_eval_with_map(
{ i64, i8* }* %ast.param, i8* %env_map.param) {
  %ast.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %ast.param, { i64, i8* }** %ast.ptr
  %env_map.ptr = alloca i8*
  store i8* %env_map.param, i8** %env_map.ptr
  %2239 = getelementptr %Environment, %Environment* null, i32 1
  %2240 = ptrtoint %Environment* %2239 to i64
  %2241 = call i8* @GC_malloc(i64 %2240)
  %2242 = bitcast i8* %2241 to %Environment*
  %2243 = load i8*, i8** %env_map.ptr
  %2244 = getelementptr %Environment, %Environment* %2242, i32 0, i32 0
  store i8* %2243, i8** %2244
  %2245 = call { i64, i8* }* @nyx_array_new_ptr()
  %2246 = getelementptr %Environment, %Environment* %2242, i32 0, i32 1
  store { i64, i8* }* %2245, { i64, i8* }** %2246
  %2247 = load %Environment, %Environment* %2242
  %2248 = alloca %Environment
  store %Environment %2247, %Environment* %2248
  %2249 = load { i64, i8* }*, { i64, i8* }** %ast.ptr
  %2250 = load %Environment, %Environment* %2248
  %2251 = call %nyx_string* @repl_eval({ i64, i8* }* %2249, %Environment %2250)
  ret %nyx_string* %2251
}

define %Value @interpret(
{ i64, i8* }* %ast.param) {
  %ast.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %ast.param, { i64, i8* }** %ast.ptr
  %2252 = call %Environment @make_env()
  %2253 = alloca %Environment
  store %Environment %2252, %Environment* %2253
  %2254 = load { i64, i8* }*, { i64, i8* }** %ast.ptr
  %2255 = call %nyx_string* @astnode_get_type({ i64, i8* }* %2254)
  %2256 = alloca %nyx_string*
  store %nyx_string* %2255, %nyx_string** %2256
  %2257 = load %nyx_string*, %nyx_string** %2256
  %2258 = getelementptr [6 x i8], [6 x i8]* @.str168, i32 0, i32 0
  %2259 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str168.c, i8* %2258)
  %2260 = call i1 @nyx_string_equals(%nyx_string* %2257, %nyx_string* %2259)
  br i1 %2260, label %then414, label %else415
then414:
  %2261 = load { i64, i8* }*, { i64, i8* }** %ast.ptr
  %2262 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %2261)
  %2263 = alloca { i64, i8* }*
  store { i64, i8* }* %2262, { i64, i8* }** %2263
  %2264 = load { i64, i8* }*, { i64, i8* }** %2263
  %2265 = call i64 @nyx_array_get({ i64, i8* }* %2264, i64 0)
  %2266 = inttoptr i64 %2265 to { i64, i8* }*
  %2267 = alloca { i64, i8* }*
  store { i64, i8* }* %2266, { i64, i8* }** %2267
  %2268 = alloca i64
  store i64 0, i64* %2268
  %2269 = call i8* @llvm.stacksave()
  br label %while_cond417
while_cond417:
  %2270 = load i64, i64* %2268
  %2271 = load { i64, i8* }*, { i64, i8* }** %2267
  %2272 = call i64 @nyx_array_length({ i64, i8* }* %2271)
  %2273 = icmp slt i64 %2270, %2272
  br i1 %2273, label %while_body418, label %while_end419
while_body418:
  call void @llvm.stackrestore(i8* %2269)
  %2274 = load { i64, i8* }*, { i64, i8* }** %2267
  %2275 = load i64, i64* %2268
  %2276 = call i64 @nyx_array_get({ i64, i8* }* %2274, i64 %2275)
  %2277 = inttoptr i64 %2276 to { i64, i8* }*
  %2278 = alloca { i64, i8* }*
  store { i64, i8* }* %2277, { i64, i8* }** %2278
  %2279 = load { i64, i8* }*, { i64, i8* }** %2278
  %2280 = load %Environment, %Environment* %2253
  %2281 = call %Value @eval_stmt({ i64, i8* }* %2279, %Environment %2280)
  %2282 = load i64, i64* %2268
  %2283 = add i64 %2282, 1
  store i64 %2283, i64* %2268
  br label %while_cond417
while_end419:
  %2284 = getelementptr %Environment, %Environment* %2253, i32 0, i32 0
  %2285 = load i8*, i8** %2284
  %2286 = alloca i8*
  store i8* %2285, i8** %2286
  %2287 = load i8*, i8** %2286
  %2288 = getelementptr [5 x i8], [5 x i8]* @.str169, i32 0, i32 0
  %2289 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str169.c, i8* %2288)
  %2290 = call i8* @nyx_string_to_cstr(%nyx_string* %2289)
  %2291 = call i1 @nyx_map_contains_str(i8* %2287, i8* %2290)
  br i1 %2291, label %then420, label %else421
then420:
  %2292 = load %Environment, %Environment* %2253
  %2293 = getelementptr [5 x i8], [5 x i8]* @.str170, i32 0, i32 0
  %2294 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str170.c, i8* %2293)
  %2295 = call %Value @env_get(%Environment %2292, %nyx_string* %2294)
  %2296 = alloca %Value
  store %Value %2295, %Value* %2296
  %2297 = getelementptr %Value, %Value* %2296, i32 0, i32 0
  %2298 = load %nyx_string*, %nyx_string** %2297
  %2299 = getelementptr [9 x i8], [9 x i8]* @.str171, i32 0, i32 0
  %2300 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str171.c, i8* %2299)
  %2301 = call i1 @nyx_string_equals(%nyx_string* %2298, %nyx_string* %2300)
  br i1 %2301, label %then423, label %else424
then423:
  %2302 = load %Value, %Value* %2296
  %2303 = call { i64, i8* }* @get_func_params(%Value %2302)
  %2304 = alloca { i64, i8* }*
  store { i64, i8* }* %2303, { i64, i8* }** %2304
  %2305 = load %Value, %Value* %2296
  %2306 = call %nyx_string* @get_func_body_type(%Value %2305)
  %2307 = alloca %nyx_string*
  store %nyx_string* %2306, %nyx_string** %2307
  %2308 = load %Value, %Value* %2296
  %2309 = call { i64, i8* }* @get_func_body_data(%Value %2308)
  %2310 = alloca { i64, i8* }*
  store { i64, i8* }* %2309, { i64, i8* }** %2310
  %2311 = load %nyx_string*, %nyx_string** %2307
  %2312 = load { i64, i8* }*, { i64, i8* }** %2310
  %2313 = call { i64, i8* }* @make_astnode(%nyx_string* %2311, { i64, i8* }* %2312)
  %2314 = alloca { i64, i8* }*
  store { i64, i8* }* %2313, { i64, i8* }** %2314
  %2315 = load %Value, %Value* %2296
  %2316 = call i8* @get_func_env_bindings(%Value %2315)
  %2317 = alloca i8*
  store i8* %2316, i8** %2317
  %2318 = load %Value, %Value* %2296
  %2319 = call { i64, i8* }* @get_func_env_parent(%Value %2318)
  %2320 = alloca { i64, i8* }*
  store { i64, i8* }* %2319, { i64, i8* }** %2320
  %2321 = getelementptr %Environment, %Environment* null, i32 1
  %2322 = ptrtoint %Environment* %2321 to i64
  %2323 = call i8* @GC_malloc(i64 %2322)
  %2324 = bitcast i8* %2323 to %Environment*
  %2325 = load i8*, i8** %2317
  %2326 = getelementptr %Environment, %Environment* %2324, i32 0, i32 0
  store i8* %2325, i8** %2326
  %2327 = load { i64, i8* }*, { i64, i8* }** %2320
  %2328 = getelementptr %Environment, %Environment* %2324, i32 0, i32 1
  store { i64, i8* }* %2327, { i64, i8* }** %2328
  %2329 = load %Environment, %Environment* %2324
  %2330 = alloca %Environment
  store %Environment %2329, %Environment* %2330
  %2331 = load %Environment, %Environment* %2330
  %2332 = call %Environment @make_child_env(%Environment %2331)
  %2333 = alloca %Environment
  store %Environment %2332, %Environment* %2333
  %2334 = load { i64, i8* }*, { i64, i8* }** %2314
  %2335 = load %Environment, %Environment* %2333
  %2336 = call %Value @eval_stmt({ i64, i8* }* %2334, %Environment %2335)
  %2337 = alloca %Value
  store %Value %2336, %Value* %2337
  %2338 = load %Value, %Value* %2337
  ret %Value %2338
else424:
  br label %merge425
merge425:
  br label %merge422
else421:
  br label %merge422
merge422:
  br label %merge416
else415:
  br label %merge416
merge416:
  %2339 = call %Value @make_nil()
  ret %Value %2339
}

; Inicialización de variables globales (llamada automática vía ctor)
define void @__nyx_init_globals() {
entry:
  %2340 = call { i64, i8* }* @nyx_array_new_ptr()
  call void @nyx_array_push_tagged({ i64, i8* }* %2340, i64 0, i64 1)
  store { i64, i8* }* %2340, { i64, i8* }** @g_interp_error_count
  ret void
}

@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @__nyx_init_globals, i8* null }]

attributes #0 = { returns_twice }

