%Value = type { %nyx_string*, i64, double, i1, %nyx_string*, { i64, i8* }*, { i64, i8* }*, %nyx_string*, { i64, i8* }*, i8*, { i64, i8* }* }

%Environment = type { i8*, { i64, i8* }* }

@.str0 = private unnamed_addr constant [4 x i8] c"int\00"
@.str1 = private unnamed_addr constant [1 x i8] c"\00"
@.str2 = private unnamed_addr constant [1 x i8] c"\00"
@.str3 = private unnamed_addr constant [6 x i8] c"float\00"
@.str4 = private unnamed_addr constant [1 x i8] c"\00"
@.str5 = private unnamed_addr constant [1 x i8] c"\00"
@.str6 = private unnamed_addr constant [5 x i8] c"bool\00"
@.str7 = private unnamed_addr constant [1 x i8] c"\00"
@.str8 = private unnamed_addr constant [1 x i8] c"\00"
@.str9 = private unnamed_addr constant [7 x i8] c"string\00"
@.str10 = private unnamed_addr constant [1 x i8] c"\00"
@.str11 = private unnamed_addr constant [6 x i8] c"array\00"
@.str12 = private unnamed_addr constant [1 x i8] c"\00"
@.str13 = private unnamed_addr constant [1 x i8] c"\00"
@.str14 = private unnamed_addr constant [9 x i8] c"function\00"
@.str15 = private unnamed_addr constant [1 x i8] c"\00"
@.str16 = private unnamed_addr constant [4 x i8] c"nil\00"
@.str17 = private unnamed_addr constant [1 x i8] c"\00"
@.str18 = private unnamed_addr constant [1 x i8] c"\00"
@.str19 = private unnamed_addr constant [7 x i8] c"return\00"
@.str20 = private unnamed_addr constant [1 x i8] c"\00"
@.str21 = private unnamed_addr constant [1 x i8] c"\00"
@.str22 = private unnamed_addr constant [4 x i8] c"int\00"
@.str23 = private unnamed_addr constant [6 x i8] c"float\00"
@.str24 = private unnamed_addr constant [4 x i8] c"int\00"
@.str25 = private unnamed_addr constant [5 x i8] c"bool\00"
@.str26 = private unnamed_addr constant [4 x i8] c"int\00"
@.str27 = private unnamed_addr constant [6 x i8] c"float\00"
@.str28 = private unnamed_addr constant [5 x i8] c"bool\00"
@.str29 = private unnamed_addr constant [5 x i8] c"true\00"
@.str30 = private unnamed_addr constant [6 x i8] c"false\00"
@.str31 = private unnamed_addr constant [7 x i8] c"string\00"
@.str32 = private unnamed_addr constant [4 x i8] c"nil\00"
@.str33 = private unnamed_addr constant [4 x i8] c"nil\00"
@.str34 = private unnamed_addr constant [2 x i8] c"[\00"
@.str35 = private unnamed_addr constant [2 x i8] c"]\00"
@.str36 = private unnamed_addr constant [5 x i8] c"bool\00"
@.str37 = private unnamed_addr constant [4 x i8] c"nil\00"
@.str38 = private unnamed_addr constant [4 x i8] c"int\00"
@.str39 = private unnamed_addr constant [4 x i8] c"int\00"
@.str40 = private unnamed_addr constant [5 x i8] c"bool\00"
@.str41 = private unnamed_addr constant [7 x i8] c"string\00"
@.str42 = private unnamed_addr constant [4 x i8] c"int\00"
@.str43 = private unnamed_addr constant [6 x i8] c"float\00"
@.str44 = private unnamed_addr constant [5 x i8] c"bool\00"
@.str45 = private unnamed_addr constant [5 x i8] c"true\00"
@.str46 = private unnamed_addr constant [6 x i8] c"false\00"
@.str47 = private unnamed_addr constant [7 x i8] c"string\00"
@.str48 = private unnamed_addr constant [4 x i8] c"nil\00"
@.str49 = private unnamed_addr constant [4 x i8] c"nil\00"
@.str50 = private unnamed_addr constant [2 x i8] c"[\00"
@.str51 = private unnamed_addr constant [2 x i8] c"]\00"
@.str52 = private unnamed_addr constant [30 x i8] c"Error: Variable no definida: \00"
@.str53 = private unnamed_addr constant [7 x i8] c"number\00"
@.str54 = private unnamed_addr constant [5 x i8] c"bool\00"
@.str55 = private unnamed_addr constant [7 x i8] c"string\00"
@.str56 = private unnamed_addr constant [11 x i8] c"identifier\00"
@.str57 = private unnamed_addr constant [6 x i8] c"binop\00"
@.str58 = private unnamed_addr constant [5 x i8] c"unop\00"
@.str59 = private unnamed_addr constant [5 x i8] c"call\00"
@.str60 = private unnamed_addr constant [6 x i8] c"array\00"
@.str61 = private unnamed_addr constant [6 x i8] c"index\00"
@.str62 = private unnamed_addr constant [12 x i8] c"method_call\00"
@.str63 = private unnamed_addr constant [26 x i8] c"Expresión no soportada: \00"
@.str64 = private unnamed_addr constant [2 x i8] c".\00"
@.str65 = private unnamed_addr constant [5 x i8] c"true\00"
@.str66 = private unnamed_addr constant [6 x i8] c"float\00"
@.str67 = private unnamed_addr constant [6 x i8] c"float\00"
@.str68 = private unnamed_addr constant [5 x i8] c"PLUS\00"
@.str69 = private unnamed_addr constant [7 x i8] c"string\00"
@.str70 = private unnamed_addr constant [6 x i8] c"MINUS\00"
@.str71 = private unnamed_addr constant [5 x i8] c"STAR\00"
@.str72 = private unnamed_addr constant [6 x i8] c"SLASH\00"
@.str73 = private unnamed_addr constant [26 x i8] c"Error: División por cero\00"
@.str74 = private unnamed_addr constant [8 x i8] c"PERCENT\00"
@.str75 = private unnamed_addr constant [12 x i8] c"EQUAL_EQUAL\00"
@.str76 = private unnamed_addr constant [10 x i8] c"NOT_EQUAL\00"
@.str77 = private unnamed_addr constant [5 x i8] c"LESS\00"
@.str78 = private unnamed_addr constant [8 x i8] c"GREATER\00"
@.str79 = private unnamed_addr constant [11 x i8] c"LESS_EQUAL\00"
@.str80 = private unnamed_addr constant [14 x i8] c"GREATER_EQUAL\00"
@.str81 = private unnamed_addr constant [8 x i8] c"AND_AND\00"
@.str82 = private unnamed_addr constant [4 x i8] c"AND\00"
@.str83 = private unnamed_addr constant [6 x i8] c"OR_OR\00"
@.str84 = private unnamed_addr constant [3 x i8] c"OR\00"
@.str85 = private unnamed_addr constant [24 x i8] c"Operador no soportado: \00"
@.str86 = private unnamed_addr constant [6 x i8] c"MINUS\00"
@.str87 = private unnamed_addr constant [4 x i8] c"NOT\00"
@.str88 = private unnamed_addr constant [31 x i8] c"Operador unario no soportado: \00"
@.str89 = private unnamed_addr constant [30 x i8] c"Error: Índice fuera de rango\00"
@.str90 = private unnamed_addr constant [4 x i8] c"let\00"
@.str91 = private unnamed_addr constant [4 x i8] c"var\00"
@.str92 = private unnamed_addr constant [7 x i8] c"assign\00"
@.str93 = private unnamed_addr constant [3 x i8] c"if\00"
@.str94 = private unnamed_addr constant [6 x i8] c"while\00"
@.str95 = private unnamed_addr constant [4 x i8] c"for\00"
@.str96 = private unnamed_addr constant [7 x i8] c"return\00"
@.str97 = private unnamed_addr constant [6 x i8] c"block\00"
@.str98 = private unnamed_addr constant [9 x i8] c"function\00"
@.str99 = private unnamed_addr constant [13 x i8] c"index_assign\00"
@.str100 = private unnamed_addr constant [16 x i8] c"compound_assign\00"
@.str101 = private unnamed_addr constant [13 x i8] c"field_assign\00"
@.str102 = private unnamed_addr constant [30 x i8] c"Error: Variable no definida: \00"
@.str103 = private unnamed_addr constant [6 x i8] c"array\00"
@.str104 = private unnamed_addr constant [45 x i8] c"Error: Índice fuera de rango en asignación\00"
@.str105 = private unnamed_addr constant [39 x i8] c"Error: index_assign en tipo no-array: \00"
@.str106 = private unnamed_addr constant [8 x i8] c"PLUS_EQ\00"
@.str107 = private unnamed_addr constant [7 x i8] c"string\00"
@.str108 = private unnamed_addr constant [6 x i8] c"float\00"
@.str109 = private unnamed_addr constant [6 x i8] c"float\00"
@.str110 = private unnamed_addr constant [9 x i8] c"MINUS_EQ\00"
@.str111 = private unnamed_addr constant [6 x i8] c"float\00"
@.str112 = private unnamed_addr constant [6 x i8] c"float\00"
@.str113 = private unnamed_addr constant [8 x i8] c"STAR_EQ\00"
@.str114 = private unnamed_addr constant [6 x i8] c"float\00"
@.str115 = private unnamed_addr constant [6 x i8] c"float\00"
@.str116 = private unnamed_addr constant [9 x i8] c"SLASH_EQ\00"
@.str117 = private unnamed_addr constant [6 x i8] c"float\00"
@.str118 = private unnamed_addr constant [6 x i8] c"float\00"
@.str119 = private unnamed_addr constant [45 x i8] c"Error: División por cero en compound_assign\00"
@.str120 = private unnamed_addr constant [11 x i8] c"PERCENT_EQ\00"
@.str121 = private unnamed_addr constant [40 x i8] c"Operador compound_assign no soportado: \00"
@.str122 = private unnamed_addr constant [49 x i8] c"Error: Variable no definida en compound_assign: \00"
@.str123 = private unnamed_addr constant [44 x i8] c"field_assign no soportado en el intérprete\00"
@.str124 = private unnamed_addr constant [6 x i8] c"empty\00"
@.str125 = private unnamed_addr constant [6 x i8] c"array\00"
@.str126 = private unnamed_addr constant [7 x i8] c"return\00"
@.str127 = private unnamed_addr constant [9 x i8] c"function\00"
@.str128 = private unnamed_addr constant [1 x i8] c"\00"
@.str129 = private unnamed_addr constant [7 x i8] c"string\00"
@.str130 = private unnamed_addr constant [7 x i8] c"length\00"
@.str131 = private unnamed_addr constant [8 x i8] c"toUpper\00"
@.str132 = private unnamed_addr constant [8 x i8] c"toLower\00"
@.str133 = private unnamed_addr constant [5 x i8] c"trim\00"
@.str134 = private unnamed_addr constant [8 x i8] c"indexOf\00"
@.str135 = private unnamed_addr constant [10 x i8] c"substring\00"
@.str136 = private unnamed_addr constant [7 x i8] c"charAt\00"
@.str137 = private unnamed_addr constant [11 x i8] c"startsWith\00"
@.str138 = private unnamed_addr constant [9 x i8] c"endsWith\00"
@.str139 = private unnamed_addr constant [8 x i8] c"replace\00"
@.str140 = private unnamed_addr constant [6 x i8] c"array\00"
@.str141 = private unnamed_addr constant [7 x i8] c"length\00"
@.str142 = private unnamed_addr constant [5 x i8] c"push\00"
@.str143 = private unnamed_addr constant [4 x i8] c"pop\00"
@.str144 = private unnamed_addr constant [23 x i8] c"Método no soportado: \00"
@.str145 = private unnamed_addr constant [10 x i8] c" en tipo \00"
@.str146 = private unnamed_addr constant [6 x i8] c"print\00"
@.str147 = private unnamed_addr constant [10 x i8] c"read_file\00"
@.str148 = private unnamed_addr constant [10 x i8] c"read_line\00"
@.str149 = private unnamed_addr constant [17 x i8] c"print_no_newline\00"
@.str150 = private unnamed_addr constant [9 x i8] c"function\00"
@.str151 = private unnamed_addr constant [8 x i8] c"Error: \00"
@.str152 = private unnamed_addr constant [20 x i8] c" no es una función\00"
@.str153 = private unnamed_addr constant [7 x i8] c"return\00"
@.str154 = private unnamed_addr constant [1 x i8] c"\00"
@.str155 = private unnamed_addr constant [4 x i8] c"nil\00"
@.str156 = private unnamed_addr constant [7 x i8] c"return\00"
@.str157 = private unnamed_addr constant [4 x i8] c"=> \00"
@.str158 = private unnamed_addr constant [6 x i8] c"block\00"
@.str159 = private unnamed_addr constant [5 x i8] c"main\00"
@.str160 = private unnamed_addr constant [5 x i8] c"main\00"
@.str161 = private unnamed_addr constant [9 x i8] c"function\00"
@__nyx_test_failed = external global i64
; Nyx Compiler Bootstrap v3.0
; Generated from: script.nx

%nyx_string = type { i64, i64, i8* }
%ASTNode = type { %nyx_string*, { i64, i8* }* }
declare %nyx_string* @nyx_string_from_cstr(i8*)
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
declare i64 @nyx_tcp_listen(i8*, i64)
declare i64 @nyx_tcp_accept(i64)
declare i64 @nyx_tcp_connect(i8*, i64)
declare %nyx_string* @nyx_tcp_read(i64, i64)
declare %nyx_string* @nyx_tcp_read_line(i64)
declare i64 @nyx_tcp_write(i64, %nyx_string*)
declare void @nyx_tcp_close(i64)
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
declare i8* @nyx_channel_new(i64)
declare void @nyx_channel_send(i8*, i64)
declare i64 @nyx_channel_recv(i8*)
declare void @nyx_channel_destroy(i8*)
declare i64 @nyx_exec(i8*)
declare %nyx_string* @nyx_getenv(i8*)
declare void @nyx_setenv(i8*, i8*)
declare void @nyx_exit(i64)
declare { i64, i8* }* @nyx_get_args()
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
declare %nyx_string* @nyx_https_get(%nyx_string*)
declare %nyx_string* @nyx_https_post(%nyx_string*, %nyx_string*, %nyx_string*)
declare i64 @nyx_tls_connect(%nyx_string*, i64)
declare %nyx_string* @nyx_tls_read(i64, i64)
declare i64 @nyx_tls_write(i64, %nyx_string*)
declare void @nyx_tls_close(i64)
declare i8* @nyx_map_new(i32)
declare void @nyx_map_insert_str(i8*, i8*, i8*)
declare i8* @nyx_map_get_str(i8*, i8*)
declare void @nyx_map_insert_int(i8*, i8*, i64)
declare i64 @nyx_map_get_int(i8*, i8*)
declare i1 @nyx_map_contains_str(i8*, i8*)
declare { i64, i8* }* @nyx_map_keys_array(i8*)
declare { i64, i8* }* @nyx_map_values_array(i8*)
declare i64 @nyx_array_length({ i64, i8* }*)
declare void @nyx_array_push({ i64, i8* }*, i64)
declare i64 @nyx_array_pop({ i64, i8* }*)
declare void @nyx_array_set({ i64, i8* }*, i64, i64)
declare i64 @nyx_array_get({ i64, i8* }*, i64)
declare { i64, i8* }* @nyx_array_new_ptr()
declare void @nyx_array_push_ptr({ i64, i8* }*, i8*)
declare i8* @nyx_array_get_ptr({ i64, i8* }*, i64)
declare void @nyx_array_set_ptr({ i64, i8* }*, i64, i8*)
declare i64 @nyx_string_length(%nyx_string*)
declare i8 @nyx_string_char_at(%nyx_string*, i64)
declare %nyx_string* @nyx_string_substring(%nyx_string*, i64, i64)
declare i1 @nyx_string_contains(%nyx_string*, %nyx_string*)
declare { i64, i8* }* @nyx_string_split(%nyx_string*, %nyx_string*)
declare %nyx_string* @nyx_read_line()
declare void @nyx_print_no_newline(%nyx_string*)
declare i64 @nyx_string_to_int(%nyx_string*)
declare double @nyx_string_to_float(%nyx_string*)
declare %nyx_string* @nyx_string_trim(%nyx_string*)
declare %nyx_string* @nyx_string_to_upper(%nyx_string*)
declare %nyx_string* @nyx_string_to_lower(%nyx_string*)
declare %nyx_string* @nyx_string_replace(%nyx_string*, %nyx_string*, %nyx_string*)
declare %nyx_string* @nyx_string_repeat(%nyx_string*, i64)
declare i1 @nyx_string_starts_with(%nyx_string*, %nyx_string*)
declare i1 @nyx_string_ends_with(%nyx_string*, %nyx_string*)
declare i64 @nyx_string_index_of(%nyx_string*, %nyx_string*)
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


define internal { i64, i8* }* @make_astnode(
%nyx_string* %node_type.param, { i64, i8* }* %data.param) {
  %node_type.ptr = alloca %nyx_string*
  store %nyx_string* %node_type.param, %nyx_string** %node_type.ptr
  %data.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %data.param, { i64, i8* }** %data.ptr
  %1 = call { i64, i8* }* @nyx_array_new_ptr()
  %2 = alloca { i64, i8* }*
  store { i64, i8* }* %1, { i64, i8* }** %2
  %3 = load { i64, i8* }*, { i64, i8* }** %2
  %4 = load %nyx_string*, %nyx_string** %node_type.ptr
  %5 = ptrtoint %nyx_string* %4 to i64
  call void @nyx_array_push({ i64, i8* }* %3, i64 %5)
  %6 = load { i64, i8* }*, { i64, i8* }** %2
  %7 = load { i64, i8* }*, { i64, i8* }** %data.ptr
  %8 = ptrtoint { i64, i8* }* %7 to i64
  call void @nyx_array_push({ i64, i8* }* %6, i64 %8)
  %9 = load { i64, i8* }*, { i64, i8* }** %2
  ret { i64, i8* }* %9
}

define internal %nyx_string* @astnode_get_type(
{ i64, i8* }* %node.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %10 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %11 = call i64 @nyx_array_get({ i64, i8* }* %10, i64 0)
  %12 = inttoptr i64 %11 to %nyx_string*
  ret %nyx_string* %12
}

define internal { i64, i8* }* @astnode_get_data(
{ i64, i8* }* %node.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %13 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %14 = call i64 @nyx_array_get({ i64, i8* }* %13, i64 1)
  %15 = inttoptr i64 %14 to { i64, i8* }*
  ret { i64, i8* }* %15
}

define internal %Value @make_int(
i64 %n.param) {
  %n.ptr = alloca i64
  store i64 %n.param, i64* %n.ptr
  %16 = call i8* @nyx_map_new(i32 0)
  %17 = alloca i8*
  store i8* %16, i8** %17
  %18 = call { i64, i8* }* @nyx_array_new_ptr()
  %19 = alloca { i64, i8* }*
  store { i64, i8* }* %18, { i64, i8* }** %19
  %20 = getelementptr %Value, %Value* null, i32 1
  %21 = ptrtoint %Value* %20 to i64
  %22 = call i8* @GC_malloc(i64 %21)
  %23 = bitcast i8* %22 to %Value*
  %24 = getelementptr [4 x i8], [4 x i8]* @.str0, i32 0, i32 0
  %25 = call %nyx_string* @nyx_string_from_cstr(i8* %24)
  %26 = getelementptr %Value, %Value* %23, i32 0, i32 0
  store %nyx_string* %25, %nyx_string** %26
  %27 = load i64, i64* %n.ptr
  %28 = getelementptr %Value, %Value* %23, i32 0, i32 1
  store i64 %27, i64* %28
  %29 = getelementptr %Value, %Value* %23, i32 0, i32 2
  store double 0.0, double* %29
  %30 = getelementptr %Value, %Value* %23, i32 0, i32 3
  store i1 0, i1* %30
  %31 = getelementptr [1 x i8], [1 x i8]* @.str1, i32 0, i32 0
  %32 = call %nyx_string* @nyx_string_from_cstr(i8* %31)
  %33 = getelementptr %Value, %Value* %23, i32 0, i32 4
  store %nyx_string* %32, %nyx_string** %33
  %34 = load { i64, i8* }*, { i64, i8* }** %19
  %35 = getelementptr %Value, %Value* %23, i32 0, i32 5
  store { i64, i8* }* %34, { i64, i8* }** %35
  %36 = load { i64, i8* }*, { i64, i8* }** %19
  %37 = getelementptr %Value, %Value* %23, i32 0, i32 6
  store { i64, i8* }* %36, { i64, i8* }** %37
  %38 = getelementptr [1 x i8], [1 x i8]* @.str2, i32 0, i32 0
  %39 = call %nyx_string* @nyx_string_from_cstr(i8* %38)
  %40 = getelementptr %Value, %Value* %23, i32 0, i32 7
  store %nyx_string* %39, %nyx_string** %40
  %41 = load { i64, i8* }*, { i64, i8* }** %19
  %42 = getelementptr %Value, %Value* %23, i32 0, i32 8
  store { i64, i8* }* %41, { i64, i8* }** %42
  %43 = load i8*, i8** %17
  %44 = getelementptr %Value, %Value* %23, i32 0, i32 9
  store i8* %43, i8** %44
  %45 = load { i64, i8* }*, { i64, i8* }** %19
  %46 = getelementptr %Value, %Value* %23, i32 0, i32 10
  store { i64, i8* }* %45, { i64, i8* }** %46
  %47 = load %Value, %Value* %23
  ret %Value %47
}

define internal %Value @make_float(
double %f.param) {
  %f.ptr = alloca double
  store double %f.param, double* %f.ptr
  %48 = call i8* @nyx_map_new(i32 0)
  %49 = alloca i8*
  store i8* %48, i8** %49
  %50 = call { i64, i8* }* @nyx_array_new_ptr()
  %51 = alloca { i64, i8* }*
  store { i64, i8* }* %50, { i64, i8* }** %51
  %52 = getelementptr %Value, %Value* null, i32 1
  %53 = ptrtoint %Value* %52 to i64
  %54 = call i8* @GC_malloc(i64 %53)
  %55 = bitcast i8* %54 to %Value*
  %56 = getelementptr [6 x i8], [6 x i8]* @.str3, i32 0, i32 0
  %57 = call %nyx_string* @nyx_string_from_cstr(i8* %56)
  %58 = getelementptr %Value, %Value* %55, i32 0, i32 0
  store %nyx_string* %57, %nyx_string** %58
  %59 = getelementptr %Value, %Value* %55, i32 0, i32 1
  store i64 0, i64* %59
  %60 = load double, double* %f.ptr
  %61 = getelementptr %Value, %Value* %55, i32 0, i32 2
  store double %60, double* %61
  %62 = getelementptr %Value, %Value* %55, i32 0, i32 3
  store i1 0, i1* %62
  %63 = getelementptr [1 x i8], [1 x i8]* @.str4, i32 0, i32 0
  %64 = call %nyx_string* @nyx_string_from_cstr(i8* %63)
  %65 = getelementptr %Value, %Value* %55, i32 0, i32 4
  store %nyx_string* %64, %nyx_string** %65
  %66 = load { i64, i8* }*, { i64, i8* }** %51
  %67 = getelementptr %Value, %Value* %55, i32 0, i32 5
  store { i64, i8* }* %66, { i64, i8* }** %67
  %68 = load { i64, i8* }*, { i64, i8* }** %51
  %69 = getelementptr %Value, %Value* %55, i32 0, i32 6
  store { i64, i8* }* %68, { i64, i8* }** %69
  %70 = getelementptr [1 x i8], [1 x i8]* @.str5, i32 0, i32 0
  %71 = call %nyx_string* @nyx_string_from_cstr(i8* %70)
  %72 = getelementptr %Value, %Value* %55, i32 0, i32 7
  store %nyx_string* %71, %nyx_string** %72
  %73 = load { i64, i8* }*, { i64, i8* }** %51
  %74 = getelementptr %Value, %Value* %55, i32 0, i32 8
  store { i64, i8* }* %73, { i64, i8* }** %74
  %75 = load i8*, i8** %49
  %76 = getelementptr %Value, %Value* %55, i32 0, i32 9
  store i8* %75, i8** %76
  %77 = load { i64, i8* }*, { i64, i8* }** %51
  %78 = getelementptr %Value, %Value* %55, i32 0, i32 10
  store { i64, i8* }* %77, { i64, i8* }** %78
  %79 = load %Value, %Value* %55
  ret %Value %79
}

define internal %Value @make_bool(
i1 %b.param) {
  %b.ptr = alloca i1
  store i1 %b.param, i1* %b.ptr
  %80 = call i8* @nyx_map_new(i32 0)
  %81 = alloca i8*
  store i8* %80, i8** %81
  %82 = call { i64, i8* }* @nyx_array_new_ptr()
  %83 = alloca { i64, i8* }*
  store { i64, i8* }* %82, { i64, i8* }** %83
  %84 = getelementptr %Value, %Value* null, i32 1
  %85 = ptrtoint %Value* %84 to i64
  %86 = call i8* @GC_malloc(i64 %85)
  %87 = bitcast i8* %86 to %Value*
  %88 = getelementptr [5 x i8], [5 x i8]* @.str6, i32 0, i32 0
  %89 = call %nyx_string* @nyx_string_from_cstr(i8* %88)
  %90 = getelementptr %Value, %Value* %87, i32 0, i32 0
  store %nyx_string* %89, %nyx_string** %90
  %91 = getelementptr %Value, %Value* %87, i32 0, i32 1
  store i64 0, i64* %91
  %92 = getelementptr %Value, %Value* %87, i32 0, i32 2
  store double 0.0, double* %92
  %93 = load i1, i1* %b.ptr
  %94 = getelementptr %Value, %Value* %87, i32 0, i32 3
  store i1 %93, i1* %94
  %95 = getelementptr [1 x i8], [1 x i8]* @.str7, i32 0, i32 0
  %96 = call %nyx_string* @nyx_string_from_cstr(i8* %95)
  %97 = getelementptr %Value, %Value* %87, i32 0, i32 4
  store %nyx_string* %96, %nyx_string** %97
  %98 = load { i64, i8* }*, { i64, i8* }** %83
  %99 = getelementptr %Value, %Value* %87, i32 0, i32 5
  store { i64, i8* }* %98, { i64, i8* }** %99
  %100 = load { i64, i8* }*, { i64, i8* }** %83
  %101 = getelementptr %Value, %Value* %87, i32 0, i32 6
  store { i64, i8* }* %100, { i64, i8* }** %101
  %102 = getelementptr [1 x i8], [1 x i8]* @.str8, i32 0, i32 0
  %103 = call %nyx_string* @nyx_string_from_cstr(i8* %102)
  %104 = getelementptr %Value, %Value* %87, i32 0, i32 7
  store %nyx_string* %103, %nyx_string** %104
  %105 = load { i64, i8* }*, { i64, i8* }** %83
  %106 = getelementptr %Value, %Value* %87, i32 0, i32 8
  store { i64, i8* }* %105, { i64, i8* }** %106
  %107 = load i8*, i8** %81
  %108 = getelementptr %Value, %Value* %87, i32 0, i32 9
  store i8* %107, i8** %108
  %109 = load { i64, i8* }*, { i64, i8* }** %83
  %110 = getelementptr %Value, %Value* %87, i32 0, i32 10
  store { i64, i8* }* %109, { i64, i8* }** %110
  %111 = load %Value, %Value* %87
  ret %Value %111
}

define internal %Value @make_string(
%nyx_string* %s.param) {
  %s.ptr = alloca %nyx_string*
  store %nyx_string* %s.param, %nyx_string** %s.ptr
  %112 = call i8* @nyx_map_new(i32 0)
  %113 = alloca i8*
  store i8* %112, i8** %113
  %114 = call { i64, i8* }* @nyx_array_new_ptr()
  %115 = alloca { i64, i8* }*
  store { i64, i8* }* %114, { i64, i8* }** %115
  %116 = getelementptr %Value, %Value* null, i32 1
  %117 = ptrtoint %Value* %116 to i64
  %118 = call i8* @GC_malloc(i64 %117)
  %119 = bitcast i8* %118 to %Value*
  %120 = getelementptr [7 x i8], [7 x i8]* @.str9, i32 0, i32 0
  %121 = call %nyx_string* @nyx_string_from_cstr(i8* %120)
  %122 = getelementptr %Value, %Value* %119, i32 0, i32 0
  store %nyx_string* %121, %nyx_string** %122
  %123 = getelementptr %Value, %Value* %119, i32 0, i32 1
  store i64 0, i64* %123
  %124 = getelementptr %Value, %Value* %119, i32 0, i32 2
  store double 0.0, double* %124
  %125 = getelementptr %Value, %Value* %119, i32 0, i32 3
  store i1 0, i1* %125
  %126 = load %nyx_string*, %nyx_string** %s.ptr
  %127 = getelementptr %Value, %Value* %119, i32 0, i32 4
  store %nyx_string* %126, %nyx_string** %127
  %128 = load { i64, i8* }*, { i64, i8* }** %115
  %129 = getelementptr %Value, %Value* %119, i32 0, i32 5
  store { i64, i8* }* %128, { i64, i8* }** %129
  %130 = load { i64, i8* }*, { i64, i8* }** %115
  %131 = getelementptr %Value, %Value* %119, i32 0, i32 6
  store { i64, i8* }* %130, { i64, i8* }** %131
  %132 = getelementptr [1 x i8], [1 x i8]* @.str10, i32 0, i32 0
  %133 = call %nyx_string* @nyx_string_from_cstr(i8* %132)
  %134 = getelementptr %Value, %Value* %119, i32 0, i32 7
  store %nyx_string* %133, %nyx_string** %134
  %135 = load { i64, i8* }*, { i64, i8* }** %115
  %136 = getelementptr %Value, %Value* %119, i32 0, i32 8
  store { i64, i8* }* %135, { i64, i8* }** %136
  %137 = load i8*, i8** %113
  %138 = getelementptr %Value, %Value* %119, i32 0, i32 9
  store i8* %137, i8** %138
  %139 = load { i64, i8* }*, { i64, i8* }** %115
  %140 = getelementptr %Value, %Value* %119, i32 0, i32 10
  store { i64, i8* }* %139, { i64, i8* }** %140
  %141 = load %Value, %Value* %119
  ret %Value %141
}

define internal %Value @make_array(
{ i64, i8* }* %arr.param) {
  %arr.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %arr.param, { i64, i8* }** %arr.ptr
  %142 = call i8* @nyx_map_new(i32 0)
  %143 = alloca i8*
  store i8* %142, i8** %143
  %144 = call { i64, i8* }* @nyx_array_new_ptr()
  %145 = alloca { i64, i8* }*
  store { i64, i8* }* %144, { i64, i8* }** %145
  %146 = getelementptr %Value, %Value* null, i32 1
  %147 = ptrtoint %Value* %146 to i64
  %148 = call i8* @GC_malloc(i64 %147)
  %149 = bitcast i8* %148 to %Value*
  %150 = getelementptr [6 x i8], [6 x i8]* @.str11, i32 0, i32 0
  %151 = call %nyx_string* @nyx_string_from_cstr(i8* %150)
  %152 = getelementptr %Value, %Value* %149, i32 0, i32 0
  store %nyx_string* %151, %nyx_string** %152
  %153 = getelementptr %Value, %Value* %149, i32 0, i32 1
  store i64 0, i64* %153
  %154 = getelementptr %Value, %Value* %149, i32 0, i32 2
  store double 0.0, double* %154
  %155 = getelementptr %Value, %Value* %149, i32 0, i32 3
  store i1 0, i1* %155
  %156 = getelementptr [1 x i8], [1 x i8]* @.str12, i32 0, i32 0
  %157 = call %nyx_string* @nyx_string_from_cstr(i8* %156)
  %158 = getelementptr %Value, %Value* %149, i32 0, i32 4
  store %nyx_string* %157, %nyx_string** %158
  %159 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %160 = getelementptr %Value, %Value* %149, i32 0, i32 5
  store { i64, i8* }* %159, { i64, i8* }** %160
  %161 = load { i64, i8* }*, { i64, i8* }** %145
  %162 = getelementptr %Value, %Value* %149, i32 0, i32 6
  store { i64, i8* }* %161, { i64, i8* }** %162
  %163 = getelementptr [1 x i8], [1 x i8]* @.str13, i32 0, i32 0
  %164 = call %nyx_string* @nyx_string_from_cstr(i8* %163)
  %165 = getelementptr %Value, %Value* %149, i32 0, i32 7
  store %nyx_string* %164, %nyx_string** %165
  %166 = load { i64, i8* }*, { i64, i8* }** %145
  %167 = getelementptr %Value, %Value* %149, i32 0, i32 8
  store { i64, i8* }* %166, { i64, i8* }** %167
  %168 = load i8*, i8** %143
  %169 = getelementptr %Value, %Value* %149, i32 0, i32 9
  store i8* %168, i8** %169
  %170 = load { i64, i8* }*, { i64, i8* }** %145
  %171 = getelementptr %Value, %Value* %149, i32 0, i32 10
  store { i64, i8* }* %170, { i64, i8* }** %171
  %172 = load %Value, %Value* %149
  ret %Value %172
}

define internal %Value @make_function(
{ i64, i8* }* %params.param, { i64, i8* }* %body.param, %Environment %env.param) {
  %params.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %params.param, { i64, i8* }** %params.ptr
  %body.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %body.param, { i64, i8* }** %body.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %173 = call { i64, i8* }* @nyx_array_new_ptr()
  %174 = alloca { i64, i8* }*
  store { i64, i8* }* %173, { i64, i8* }** %174
  %175 = load { i64, i8* }*, { i64, i8* }** %body.ptr
  %176 = call %nyx_string* @astnode_get_type({ i64, i8* }* %175)
  %177 = alloca %nyx_string*
  store %nyx_string* %176, %nyx_string** %177
  %178 = load { i64, i8* }*, { i64, i8* }** %body.ptr
  %179 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %178)
  %180 = alloca { i64, i8* }*
  store { i64, i8* }* %179, { i64, i8* }** %180
  %181 = getelementptr %Environment, %Environment* %env.ptr, i32 0, i32 0
  %182 = load i8*, i8** %181
  %183 = alloca i8*
  store i8* %182, i8** %183
  %184 = getelementptr %Environment, %Environment* %env.ptr, i32 0, i32 1
  %185 = load { i64, i8* }*, { i64, i8* }** %184
  %186 = alloca { i64, i8* }*
  store { i64, i8* }* %185, { i64, i8* }** %186
  %187 = getelementptr %Value, %Value* null, i32 1
  %188 = ptrtoint %Value* %187 to i64
  %189 = call i8* @GC_malloc(i64 %188)
  %190 = bitcast i8* %189 to %Value*
  %191 = getelementptr [9 x i8], [9 x i8]* @.str14, i32 0, i32 0
  %192 = call %nyx_string* @nyx_string_from_cstr(i8* %191)
  %193 = getelementptr %Value, %Value* %190, i32 0, i32 0
  store %nyx_string* %192, %nyx_string** %193
  %194 = getelementptr %Value, %Value* %190, i32 0, i32 1
  store i64 0, i64* %194
  %195 = getelementptr %Value, %Value* %190, i32 0, i32 2
  store double 0.0, double* %195
  %196 = getelementptr %Value, %Value* %190, i32 0, i32 3
  store i1 0, i1* %196
  %197 = getelementptr [1 x i8], [1 x i8]* @.str15, i32 0, i32 0
  %198 = call %nyx_string* @nyx_string_from_cstr(i8* %197)
  %199 = getelementptr %Value, %Value* %190, i32 0, i32 4
  store %nyx_string* %198, %nyx_string** %199
  %200 = load { i64, i8* }*, { i64, i8* }** %174
  %201 = getelementptr %Value, %Value* %190, i32 0, i32 5
  store { i64, i8* }* %200, { i64, i8* }** %201
  %202 = load { i64, i8* }*, { i64, i8* }** %params.ptr
  %203 = getelementptr %Value, %Value* %190, i32 0, i32 6
  store { i64, i8* }* %202, { i64, i8* }** %203
  %204 = load %nyx_string*, %nyx_string** %177
  %205 = getelementptr %Value, %Value* %190, i32 0, i32 7
  store %nyx_string* %204, %nyx_string** %205
  %206 = load { i64, i8* }*, { i64, i8* }** %180
  %207 = getelementptr %Value, %Value* %190, i32 0, i32 8
  store { i64, i8* }* %206, { i64, i8* }** %207
  %208 = load i8*, i8** %183
  %209 = getelementptr %Value, %Value* %190, i32 0, i32 9
  store i8* %208, i8** %209
  %210 = load { i64, i8* }*, { i64, i8* }** %186
  %211 = getelementptr %Value, %Value* %190, i32 0, i32 10
  store { i64, i8* }* %210, { i64, i8* }** %211
  %212 = load %Value, %Value* %190
  ret %Value %212
}

define internal %Value @make_nil(
) {
  %213 = call i8* @nyx_map_new(i32 0)
  %214 = alloca i8*
  store i8* %213, i8** %214
  %215 = call { i64, i8* }* @nyx_array_new_ptr()
  %216 = alloca { i64, i8* }*
  store { i64, i8* }* %215, { i64, i8* }** %216
  %217 = getelementptr %Value, %Value* null, i32 1
  %218 = ptrtoint %Value* %217 to i64
  %219 = call i8* @GC_malloc(i64 %218)
  %220 = bitcast i8* %219 to %Value*
  %221 = getelementptr [4 x i8], [4 x i8]* @.str16, i32 0, i32 0
  %222 = call %nyx_string* @nyx_string_from_cstr(i8* %221)
  %223 = getelementptr %Value, %Value* %220, i32 0, i32 0
  store %nyx_string* %222, %nyx_string** %223
  %224 = getelementptr %Value, %Value* %220, i32 0, i32 1
  store i64 0, i64* %224
  %225 = getelementptr %Value, %Value* %220, i32 0, i32 2
  store double 0.0, double* %225
  %226 = getelementptr %Value, %Value* %220, i32 0, i32 3
  store i1 0, i1* %226
  %227 = getelementptr [1 x i8], [1 x i8]* @.str17, i32 0, i32 0
  %228 = call %nyx_string* @nyx_string_from_cstr(i8* %227)
  %229 = getelementptr %Value, %Value* %220, i32 0, i32 4
  store %nyx_string* %228, %nyx_string** %229
  %230 = load { i64, i8* }*, { i64, i8* }** %216
  %231 = getelementptr %Value, %Value* %220, i32 0, i32 5
  store { i64, i8* }* %230, { i64, i8* }** %231
  %232 = load { i64, i8* }*, { i64, i8* }** %216
  %233 = getelementptr %Value, %Value* %220, i32 0, i32 6
  store { i64, i8* }* %232, { i64, i8* }** %233
  %234 = getelementptr [1 x i8], [1 x i8]* @.str18, i32 0, i32 0
  %235 = call %nyx_string* @nyx_string_from_cstr(i8* %234)
  %236 = getelementptr %Value, %Value* %220, i32 0, i32 7
  store %nyx_string* %235, %nyx_string** %236
  %237 = load { i64, i8* }*, { i64, i8* }** %216
  %238 = getelementptr %Value, %Value* %220, i32 0, i32 8
  store { i64, i8* }* %237, { i64, i8* }** %238
  %239 = load i8*, i8** %214
  %240 = getelementptr %Value, %Value* %220, i32 0, i32 9
  store i8* %239, i8** %240
  %241 = load { i64, i8* }*, { i64, i8* }** %216
  %242 = getelementptr %Value, %Value* %220, i32 0, i32 10
  store { i64, i8* }* %241, { i64, i8* }** %242
  %243 = load %Value, %Value* %220
  ret %Value %243
}

define internal %Value @make_return_value(
%Value %inner_value.param) {
  %inner_value.ptr = alloca %Value
  store %Value %inner_value.param, %Value* %inner_value.ptr
  %244 = call i8* @nyx_map_new(i32 0)
  %245 = alloca i8*
  store i8* %244, i8** %245
  %246 = call { i64, i8* }* @nyx_array_new_ptr()
  %247 = alloca { i64, i8* }*
  store { i64, i8* }* %246, { i64, i8* }** %247
  %248 = load { i64, i8* }*, { i64, i8* }** %247
  %249 = load %Value, %Value* %inner_value.ptr
  %250 = getelementptr %Value, %Value* null, i32 1
  %251 = ptrtoint %Value* %250 to i64
  %252 = call i8* @GC_malloc(i64 %251)
  %253 = bitcast i8* %252 to %Value*
  store %Value %249, %Value* %253
  %254 = ptrtoint %Value* %253 to i64
  call void @nyx_array_push({ i64, i8* }* %248, i64 %254)
  %255 = getelementptr %Value, %Value* null, i32 1
  %256 = ptrtoint %Value* %255 to i64
  %257 = call i8* @GC_malloc(i64 %256)
  %258 = bitcast i8* %257 to %Value*
  %259 = getelementptr [7 x i8], [7 x i8]* @.str19, i32 0, i32 0
  %260 = call %nyx_string* @nyx_string_from_cstr(i8* %259)
  %261 = getelementptr %Value, %Value* %258, i32 0, i32 0
  store %nyx_string* %260, %nyx_string** %261
  %262 = getelementptr %Value, %Value* %258, i32 0, i32 1
  store i64 0, i64* %262
  %263 = getelementptr %Value, %Value* %258, i32 0, i32 2
  store double 0.0, double* %263
  %264 = getelementptr %Value, %Value* %258, i32 0, i32 3
  store i1 0, i1* %264
  %265 = getelementptr [1 x i8], [1 x i8]* @.str20, i32 0, i32 0
  %266 = call %nyx_string* @nyx_string_from_cstr(i8* %265)
  %267 = getelementptr %Value, %Value* %258, i32 0, i32 4
  store %nyx_string* %266, %nyx_string** %267
  %268 = load { i64, i8* }*, { i64, i8* }** %247
  %269 = getelementptr %Value, %Value* %258, i32 0, i32 5
  store { i64, i8* }* %268, { i64, i8* }** %269
  %270 = call { i64, i8* }* @nyx_array_new_ptr()
  %271 = getelementptr %Value, %Value* %258, i32 0, i32 6
  store { i64, i8* }* %270, { i64, i8* }** %271
  %272 = getelementptr [1 x i8], [1 x i8]* @.str21, i32 0, i32 0
  %273 = call %nyx_string* @nyx_string_from_cstr(i8* %272)
  %274 = getelementptr %Value, %Value* %258, i32 0, i32 7
  store %nyx_string* %273, %nyx_string** %274
  %275 = call { i64, i8* }* @nyx_array_new_ptr()
  %276 = getelementptr %Value, %Value* %258, i32 0, i32 8
  store { i64, i8* }* %275, { i64, i8* }** %276
  %277 = load i8*, i8** %245
  %278 = getelementptr %Value, %Value* %258, i32 0, i32 9
  store i8* %277, i8** %278
  %279 = call { i64, i8* }* @nyx_array_new_ptr()
  %280 = getelementptr %Value, %Value* %258, i32 0, i32 10
  store { i64, i8* }* %279, { i64, i8* }** %280
  %281 = load %Value, %Value* %258
  ret %Value %281
}

define internal %Value @eval_return(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %282 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %283 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %282)
  %284 = alloca { i64, i8* }*
  store { i64, i8* }* %283, { i64, i8* }** %284
  %285 = load { i64, i8* }*, { i64, i8* }** %284
  %286 = call i64 @nyx_array_get({ i64, i8* }* %285, i64 0)
  %287 = inttoptr i64 %286 to { i64, i8* }*
  %288 = alloca { i64, i8* }*
  store { i64, i8* }* %287, { i64, i8* }** %288
  %289 = load { i64, i8* }*, { i64, i8* }** %288
  %290 = load %Environment, %Environment* %env.ptr
  %291 = call %Value @eval_expr({ i64, i8* }* %289, %Environment %290)
  %292 = alloca %Value
  store %Value %291, %Value* %292
  %293 = load %Value, %Value* %292
  %294 = call %Value @make_return_value(%Value %293)
  ret %Value %294
}

define internal i64 @value_to_int(
%Value %v.param) {
  %v.ptr = alloca %Value
  store %Value %v.param, %Value* %v.ptr
  %295 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %296 = load %nyx_string*, %nyx_string** %295
  %297 = getelementptr [4 x i8], [4 x i8]* @.str22, i32 0, i32 0
  %298 = call %nyx_string* @nyx_string_from_cstr(i8* %297)
  %299 = call i8* @nyx_string_to_cstr(%nyx_string* %296)
  %300 = call i8* @nyx_string_to_cstr(%nyx_string* %298)
  %301 = call i32 @strcmp(i8* %299, i8* %300)
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %then0, label %else1
then0:
  %303 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 1
  %304 = load i64, i64* %303
  ret i64 %304
else1:
  br label %merge2
merge2:
  ret i64 0
}

define internal double @value_to_float(
%Value %v.param) {
  %v.ptr = alloca %Value
  store %Value %v.param, %Value* %v.ptr
  %305 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %306 = load %nyx_string*, %nyx_string** %305
  %307 = getelementptr [6 x i8], [6 x i8]* @.str23, i32 0, i32 0
  %308 = call %nyx_string* @nyx_string_from_cstr(i8* %307)
  %309 = call i8* @nyx_string_to_cstr(%nyx_string* %306)
  %310 = call i8* @nyx_string_to_cstr(%nyx_string* %308)
  %311 = call i32 @strcmp(i8* %309, i8* %310)
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %then3, label %else4
then3:
  %313 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 2
  %314 = load double, double* %313
  ret double %314
else4:
  br label %merge5
merge5:
  %315 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %316 = load %nyx_string*, %nyx_string** %315
  %317 = getelementptr [4 x i8], [4 x i8]* @.str24, i32 0, i32 0
  %318 = call %nyx_string* @nyx_string_from_cstr(i8* %317)
  %319 = call i8* @nyx_string_to_cstr(%nyx_string* %316)
  %320 = call i8* @nyx_string_to_cstr(%nyx_string* %318)
  %321 = call i32 @strcmp(i8* %319, i8* %320)
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %then6, label %else7
then6:
  %323 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 1
  %324 = load i64, i64* %323
  %325 = sitofp i64 %324 to double
  %326 = alloca double
  store double %325, double* %326
  %327 = load double, double* %326
  ret double %327
else7:
  br label %merge8
merge8:
  ret double 0.0
}

define internal i1 @value_to_bool(
%Value %v.param) {
  %v.ptr = alloca %Value
  store %Value %v.param, %Value* %v.ptr
  %328 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %329 = load %nyx_string*, %nyx_string** %328
  %330 = getelementptr [5 x i8], [5 x i8]* @.str25, i32 0, i32 0
  %331 = call %nyx_string* @nyx_string_from_cstr(i8* %330)
  %332 = call i8* @nyx_string_to_cstr(%nyx_string* %329)
  %333 = call i8* @nyx_string_to_cstr(%nyx_string* %331)
  %334 = call i32 @strcmp(i8* %332, i8* %333)
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %then9, label %else10
then9:
  %336 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 3
  %337 = load i1, i1* %336
  ret i1 %337
else10:
  br label %merge11
merge11:
  ret i1 0
}

define internal %nyx_string* @value_to_string(
%Value %v.param) {
  %v.ptr = alloca %Value
  store %Value %v.param, %Value* %v.ptr
  %338 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %339 = load %nyx_string*, %nyx_string** %338
  %340 = getelementptr [4 x i8], [4 x i8]* @.str26, i32 0, i32 0
  %341 = call %nyx_string* @nyx_string_from_cstr(i8* %340)
  %342 = call i8* @nyx_string_to_cstr(%nyx_string* %339)
  %343 = call i8* @nyx_string_to_cstr(%nyx_string* %341)
  %344 = call i32 @strcmp(i8* %342, i8* %343)
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %then12, label %else13
then12:
  %346 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 1
  %347 = load i64, i64* %346
  %348 = call %nyx_string* @nyx_string_from_int(i64 %347)
  ret %nyx_string* %348
else13:
  br label %merge14
merge14:
  %349 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %350 = load %nyx_string*, %nyx_string** %349
  %351 = getelementptr [6 x i8], [6 x i8]* @.str27, i32 0, i32 0
  %352 = call %nyx_string* @nyx_string_from_cstr(i8* %351)
  %353 = call i8* @nyx_string_to_cstr(%nyx_string* %350)
  %354 = call i8* @nyx_string_to_cstr(%nyx_string* %352)
  %355 = call i32 @strcmp(i8* %353, i8* %354)
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %then15, label %else16
then15:
  %357 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 2
  %358 = load double, double* %357
  %359 = call %nyx_string* @nyx_string_from_float(double %358)
  ret %nyx_string* %359
else16:
  br label %merge17
merge17:
  %360 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %361 = load %nyx_string*, %nyx_string** %360
  %362 = getelementptr [5 x i8], [5 x i8]* @.str28, i32 0, i32 0
  %363 = call %nyx_string* @nyx_string_from_cstr(i8* %362)
  %364 = call i8* @nyx_string_to_cstr(%nyx_string* %361)
  %365 = call i8* @nyx_string_to_cstr(%nyx_string* %363)
  %366 = call i32 @strcmp(i8* %364, i8* %365)
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %then18, label %else19
then18:
  %368 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 3
  %369 = load i1, i1* %368
  br i1 %369, label %then21, label %else22
then21:
  %370 = getelementptr [5 x i8], [5 x i8]* @.str29, i32 0, i32 0
  %371 = call %nyx_string* @nyx_string_from_cstr(i8* %370)
  ret %nyx_string* %371
else22:
  br label %merge23
merge23:
  %372 = getelementptr [6 x i8], [6 x i8]* @.str30, i32 0, i32 0
  %373 = call %nyx_string* @nyx_string_from_cstr(i8* %372)
  ret %nyx_string* %373
else19:
  br label %merge20
merge20:
  %374 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %375 = load %nyx_string*, %nyx_string** %374
  %376 = getelementptr [7 x i8], [7 x i8]* @.str31, i32 0, i32 0
  %377 = call %nyx_string* @nyx_string_from_cstr(i8* %376)
  %378 = call i8* @nyx_string_to_cstr(%nyx_string* %375)
  %379 = call i8* @nyx_string_to_cstr(%nyx_string* %377)
  %380 = call i32 @strcmp(i8* %378, i8* %379)
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %then24, label %else25
then24:
  %382 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 4
  %383 = load %nyx_string*, %nyx_string** %382
  ret %nyx_string* %383
else25:
  br label %merge26
merge26:
  %384 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %385 = load %nyx_string*, %nyx_string** %384
  %386 = getelementptr [4 x i8], [4 x i8]* @.str32, i32 0, i32 0
  %387 = call %nyx_string* @nyx_string_from_cstr(i8* %386)
  %388 = call i8* @nyx_string_to_cstr(%nyx_string* %385)
  %389 = call i8* @nyx_string_to_cstr(%nyx_string* %387)
  %390 = call i32 @strcmp(i8* %388, i8* %389)
  %391 = icmp eq i32 %390, 0
  br i1 %391, label %then27, label %else28
then27:
  %392 = getelementptr [4 x i8], [4 x i8]* @.str33, i32 0, i32 0
  %393 = call %nyx_string* @nyx_string_from_cstr(i8* %392)
  ret %nyx_string* %393
else28:
  br label %merge29
merge29:
  %394 = getelementptr [2 x i8], [2 x i8]* @.str34, i32 0, i32 0
  %395 = call %nyx_string* @nyx_string_from_cstr(i8* %394)
  %396 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %397 = load %nyx_string*, %nyx_string** %396
  %398 = call %nyx_string* @nyx_string_concat(%nyx_string* %395, %nyx_string* %397)
  %399 = getelementptr [2 x i8], [2 x i8]* @.str35, i32 0, i32 0
  %400 = call %nyx_string* @nyx_string_from_cstr(i8* %399)
  %401 = call %nyx_string* @nyx_string_concat(%nyx_string* %398, %nyx_string* %400)
  ret %nyx_string* %401
}

define internal i1 @is_truthy(
%Value %v.param) {
  %v.ptr = alloca %Value
  store %Value %v.param, %Value* %v.ptr
  %402 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %403 = load %nyx_string*, %nyx_string** %402
  %404 = getelementptr [5 x i8], [5 x i8]* @.str36, i32 0, i32 0
  %405 = call %nyx_string* @nyx_string_from_cstr(i8* %404)
  %406 = call i8* @nyx_string_to_cstr(%nyx_string* %403)
  %407 = call i8* @nyx_string_to_cstr(%nyx_string* %405)
  %408 = call i32 @strcmp(i8* %406, i8* %407)
  %409 = icmp eq i32 %408, 0
  br i1 %409, label %then30, label %else31
then30:
  %410 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 3
  %411 = load i1, i1* %410
  ret i1 %411
else31:
  br label %merge32
merge32:
  %412 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %413 = load %nyx_string*, %nyx_string** %412
  %414 = getelementptr [4 x i8], [4 x i8]* @.str37, i32 0, i32 0
  %415 = call %nyx_string* @nyx_string_from_cstr(i8* %414)
  %416 = call i8* @nyx_string_to_cstr(%nyx_string* %413)
  %417 = call i8* @nyx_string_to_cstr(%nyx_string* %415)
  %418 = call i32 @strcmp(i8* %416, i8* %417)
  %419 = icmp eq i32 %418, 0
  br i1 %419, label %then33, label %else34
then33:
  ret i1 0
else34:
  br label %merge35
merge35:
  %420 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %421 = load %nyx_string*, %nyx_string** %420
  %422 = getelementptr [4 x i8], [4 x i8]* @.str38, i32 0, i32 0
  %423 = call %nyx_string* @nyx_string_from_cstr(i8* %422)
  %424 = call i8* @nyx_string_to_cstr(%nyx_string* %421)
  %425 = call i8* @nyx_string_to_cstr(%nyx_string* %423)
  %426 = call i32 @strcmp(i8* %424, i8* %425)
  %427 = icmp eq i32 %426, 0
  br i1 %427, label %then36, label %else37
then36:
  %428 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 1
  %429 = load i64, i64* %428
  %430 = icmp ne i64 %429, 0
  ret i1 %430
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
  %431 = getelementptr %Value, %Value* %a.ptr, i32 0, i32 0
  %432 = load %nyx_string*, %nyx_string** %431
  %433 = getelementptr %Value, %Value* %b.ptr, i32 0, i32 0
  %434 = load %nyx_string*, %nyx_string** %433
  %435 = call i8* @nyx_string_to_cstr(%nyx_string* %432)
  %436 = call i8* @nyx_string_to_cstr(%nyx_string* %434)
  %437 = call i32 @strcmp(i8* %435, i8* %436)
  %438 = icmp ne i32 %437, 0
  br i1 %438, label %then39, label %else40
then39:
  ret i1 0
else40:
  br label %merge41
merge41:
  %439 = getelementptr %Value, %Value* %a.ptr, i32 0, i32 0
  %440 = load %nyx_string*, %nyx_string** %439
  %441 = getelementptr [4 x i8], [4 x i8]* @.str39, i32 0, i32 0
  %442 = call %nyx_string* @nyx_string_from_cstr(i8* %441)
  %443 = call i8* @nyx_string_to_cstr(%nyx_string* %440)
  %444 = call i8* @nyx_string_to_cstr(%nyx_string* %442)
  %445 = call i32 @strcmp(i8* %443, i8* %444)
  %446 = icmp eq i32 %445, 0
  br i1 %446, label %then42, label %else43
then42:
  %447 = getelementptr %Value, %Value* %a.ptr, i32 0, i32 1
  %448 = load i64, i64* %447
  %449 = getelementptr %Value, %Value* %b.ptr, i32 0, i32 1
  %450 = load i64, i64* %449
  %451 = icmp eq i64 %448, %450
  ret i1 %451
else43:
  br label %merge44
merge44:
  %452 = getelementptr %Value, %Value* %a.ptr, i32 0, i32 0
  %453 = load %nyx_string*, %nyx_string** %452
  %454 = getelementptr [5 x i8], [5 x i8]* @.str40, i32 0, i32 0
  %455 = call %nyx_string* @nyx_string_from_cstr(i8* %454)
  %456 = call i8* @nyx_string_to_cstr(%nyx_string* %453)
  %457 = call i8* @nyx_string_to_cstr(%nyx_string* %455)
  %458 = call i32 @strcmp(i8* %456, i8* %457)
  %459 = icmp eq i32 %458, 0
  br i1 %459, label %then45, label %else46
then45:
  %460 = getelementptr %Value, %Value* %a.ptr, i32 0, i32 3
  %461 = load i1, i1* %460
  %462 = getelementptr %Value, %Value* %b.ptr, i32 0, i32 3
  %463 = load i1, i1* %462
  %464 = icmp eq i1 %461, %463
  ret i1 %464
else46:
  br label %merge47
merge47:
  %465 = getelementptr %Value, %Value* %a.ptr, i32 0, i32 0
  %466 = load %nyx_string*, %nyx_string** %465
  %467 = getelementptr [7 x i8], [7 x i8]* @.str41, i32 0, i32 0
  %468 = call %nyx_string* @nyx_string_from_cstr(i8* %467)
  %469 = call i8* @nyx_string_to_cstr(%nyx_string* %466)
  %470 = call i8* @nyx_string_to_cstr(%nyx_string* %468)
  %471 = call i32 @strcmp(i8* %469, i8* %470)
  %472 = icmp eq i32 %471, 0
  br i1 %472, label %then48, label %else49
then48:
  %473 = getelementptr %Value, %Value* %a.ptr, i32 0, i32 4
  %474 = load %nyx_string*, %nyx_string** %473
  %475 = getelementptr %Value, %Value* %b.ptr, i32 0, i32 4
  %476 = load %nyx_string*, %nyx_string** %475
  %477 = call i8* @nyx_string_to_cstr(%nyx_string* %474)
  %478 = call i8* @nyx_string_to_cstr(%nyx_string* %476)
  %479 = call i32 @strcmp(i8* %477, i8* %478)
  %480 = icmp eq i32 %479, 0
  ret i1 %480
else49:
  br label %merge50
merge50:
  ret i1 0
}

define internal i64 @print_value(
%Value %v.param) {
  %v.ptr = alloca %Value
  store %Value %v.param, %Value* %v.ptr
  %481 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %482 = load %nyx_string*, %nyx_string** %481
  %483 = getelementptr [4 x i8], [4 x i8]* @.str42, i32 0, i32 0
  %484 = call %nyx_string* @nyx_string_from_cstr(i8* %483)
  %485 = call i8* @nyx_string_to_cstr(%nyx_string* %482)
  %486 = call i8* @nyx_string_to_cstr(%nyx_string* %484)
  %487 = call i32 @strcmp(i8* %485, i8* %486)
  %488 = icmp eq i32 %487, 0
  br i1 %488, label %then51, label %else52
then51:
  %489 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 1
  %490 = load i64, i64* %489
  call void @nyx_print_int(i64 %490)
  br label %merge53
else52:
  %491 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %492 = load %nyx_string*, %nyx_string** %491
  %493 = getelementptr [6 x i8], [6 x i8]* @.str43, i32 0, i32 0
  %494 = call %nyx_string* @nyx_string_from_cstr(i8* %493)
  %495 = call i8* @nyx_string_to_cstr(%nyx_string* %492)
  %496 = call i8* @nyx_string_to_cstr(%nyx_string* %494)
  %497 = call i32 @strcmp(i8* %495, i8* %496)
  %498 = icmp eq i32 %497, 0
  br i1 %498, label %then54, label %else55
then54:
  %499 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 2
  %500 = load double, double* %499
  call void @nyx_print_float(double %500)
  br label %merge56
else55:
  %501 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %502 = load %nyx_string*, %nyx_string** %501
  %503 = getelementptr [5 x i8], [5 x i8]* @.str44, i32 0, i32 0
  %504 = call %nyx_string* @nyx_string_from_cstr(i8* %503)
  %505 = call i8* @nyx_string_to_cstr(%nyx_string* %502)
  %506 = call i8* @nyx_string_to_cstr(%nyx_string* %504)
  %507 = call i32 @strcmp(i8* %505, i8* %506)
  %508 = icmp eq i32 %507, 0
  br i1 %508, label %then57, label %else58
then57:
  %509 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 3
  %510 = load i1, i1* %509
  br i1 %510, label %then60, label %else61
then60:
  %511 = getelementptr [5 x i8], [5 x i8]* @.str45, i32 0, i32 0
  %512 = call %nyx_string* @nyx_string_from_cstr(i8* %511)
  %513 = call i8* @nyx_string_to_cstr(%nyx_string* %512)
  call void @nyx_print_string(i8* %513)
  br label %merge62
else61:
  %514 = getelementptr [6 x i8], [6 x i8]* @.str46, i32 0, i32 0
  %515 = call %nyx_string* @nyx_string_from_cstr(i8* %514)
  %516 = call i8* @nyx_string_to_cstr(%nyx_string* %515)
  call void @nyx_print_string(i8* %516)
  br label %merge62
merge62:
  br label %merge59
else58:
  %517 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %518 = load %nyx_string*, %nyx_string** %517
  %519 = getelementptr [7 x i8], [7 x i8]* @.str47, i32 0, i32 0
  %520 = call %nyx_string* @nyx_string_from_cstr(i8* %519)
  %521 = call i8* @nyx_string_to_cstr(%nyx_string* %518)
  %522 = call i8* @nyx_string_to_cstr(%nyx_string* %520)
  %523 = call i32 @strcmp(i8* %521, i8* %522)
  %524 = icmp eq i32 %523, 0
  br i1 %524, label %then63, label %else64
then63:
  %525 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 4
  %526 = load %nyx_string*, %nyx_string** %525
  %527 = call i8* @nyx_string_to_cstr(%nyx_string* %526)
  call void @nyx_print_string(i8* %527)
  br label %merge65
else64:
  %528 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %529 = load %nyx_string*, %nyx_string** %528
  %530 = getelementptr [4 x i8], [4 x i8]* @.str48, i32 0, i32 0
  %531 = call %nyx_string* @nyx_string_from_cstr(i8* %530)
  %532 = call i8* @nyx_string_to_cstr(%nyx_string* %529)
  %533 = call i8* @nyx_string_to_cstr(%nyx_string* %531)
  %534 = call i32 @strcmp(i8* %532, i8* %533)
  %535 = icmp eq i32 %534, 0
  br i1 %535, label %then66, label %else67
then66:
  %536 = getelementptr [4 x i8], [4 x i8]* @.str49, i32 0, i32 0
  %537 = call %nyx_string* @nyx_string_from_cstr(i8* %536)
  %538 = call i8* @nyx_string_to_cstr(%nyx_string* %537)
  call void @nyx_print_string(i8* %538)
  br label %merge68
else67:
  %539 = getelementptr [2 x i8], [2 x i8]* @.str50, i32 0, i32 0
  %540 = call %nyx_string* @nyx_string_from_cstr(i8* %539)
  %541 = getelementptr %Value, %Value* %v.ptr, i32 0, i32 0
  %542 = load %nyx_string*, %nyx_string** %541
  %543 = call %nyx_string* @nyx_string_concat(%nyx_string* %540, %nyx_string* %542)
  %544 = getelementptr [2 x i8], [2 x i8]* @.str51, i32 0, i32 0
  %545 = call %nyx_string* @nyx_string_from_cstr(i8* %544)
  %546 = call %nyx_string* @nyx_string_concat(%nyx_string* %543, %nyx_string* %545)
  %547 = call i8* @nyx_string_to_cstr(%nyx_string* %546)
  call void @nyx_print_string(i8* %547)
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
  %548 = getelementptr %Value, %Value* %func_value.ptr, i32 0, i32 6
  %549 = load { i64, i8* }*, { i64, i8* }** %548
  ret { i64, i8* }* %549
}

define internal %nyx_string* @get_func_body_type(
%Value %func_value.param) {
  %func_value.ptr = alloca %Value
  store %Value %func_value.param, %Value* %func_value.ptr
  %550 = getelementptr %Value, %Value* %func_value.ptr, i32 0, i32 7
  %551 = load %nyx_string*, %nyx_string** %550
  ret %nyx_string* %551
}

define internal { i64, i8* }* @get_func_body_data(
%Value %func_value.param) {
  %func_value.ptr = alloca %Value
  store %Value %func_value.param, %Value* %func_value.ptr
  %552 = getelementptr %Value, %Value* %func_value.ptr, i32 0, i32 8
  %553 = load { i64, i8* }*, { i64, i8* }** %552
  ret { i64, i8* }* %553
}

define internal i8* @get_func_env_bindings(
%Value %func_value.param) {
  %func_value.ptr = alloca %Value
  store %Value %func_value.param, %Value* %func_value.ptr
  %554 = getelementptr %Value, %Value* %func_value.ptr, i32 0, i32 9
  %555 = load i8*, i8** %554
  ret i8* %555
}

define internal { i64, i8* }* @get_func_env_parent(
%Value %func_value.param) {
  %func_value.ptr = alloca %Value
  store %Value %func_value.param, %Value* %func_value.ptr
  %556 = getelementptr %Value, %Value* %func_value.ptr, i32 0, i32 10
  %557 = load { i64, i8* }*, { i64, i8* }** %556
  ret { i64, i8* }* %557
}

define internal %Environment @make_env(
) {
  %558 = call i8* @nyx_map_new(i32 0)
  %559 = alloca i8*
  store i8* %558, i8** %559
  %560 = call { i64, i8* }* @nyx_array_new_ptr()
  %561 = alloca { i64, i8* }*
  store { i64, i8* }* %560, { i64, i8* }** %561
  %562 = getelementptr %Environment, %Environment* null, i32 1
  %563 = ptrtoint %Environment* %562 to i64
  %564 = call i8* @GC_malloc(i64 %563)
  %565 = bitcast i8* %564 to %Environment*
  %566 = load i8*, i8** %559
  %567 = getelementptr %Environment, %Environment* %565, i32 0, i32 0
  store i8* %566, i8** %567
  %568 = load { i64, i8* }*, { i64, i8* }** %561
  %569 = getelementptr %Environment, %Environment* %565, i32 0, i32 1
  store { i64, i8* }* %568, { i64, i8* }** %569
  %570 = load %Environment, %Environment* %565
  ret %Environment %570
}

define internal %Environment @make_child_env(
%Environment %parent.param) {
  %parent.ptr = alloca %Environment
  store %Environment %parent.param, %Environment* %parent.ptr
  %571 = call i8* @nyx_map_new(i32 0)
  %572 = alloca i8*
  store i8* %571, i8** %572
  %573 = call { i64, i8* }* @nyx_array_new_ptr()
  %574 = alloca { i64, i8* }*
  store { i64, i8* }* %573, { i64, i8* }** %574
  %575 = load { i64, i8* }*, { i64, i8* }** %574
  %576 = load %Environment, %Environment* %parent.ptr
  %577 = getelementptr %Environment, %Environment* null, i32 1
  %578 = ptrtoint %Environment* %577 to i64
  %579 = call i8* @GC_malloc(i64 %578)
  %580 = bitcast i8* %579 to %Environment*
  store %Environment %576, %Environment* %580
  %581 = ptrtoint %Environment* %580 to i64
  call void @nyx_array_push({ i64, i8* }* %575, i64 %581)
  %582 = getelementptr %Environment, %Environment* null, i32 1
  %583 = ptrtoint %Environment* %582 to i64
  %584 = call i8* @GC_malloc(i64 %583)
  %585 = bitcast i8* %584 to %Environment*
  %586 = load i8*, i8** %572
  %587 = getelementptr %Environment, %Environment* %585, i32 0, i32 0
  store i8* %586, i8** %587
  %588 = load { i64, i8* }*, { i64, i8* }** %574
  %589 = getelementptr %Environment, %Environment* %585, i32 0, i32 1
  store { i64, i8* }* %588, { i64, i8* }** %589
  %590 = load %Environment, %Environment* %585
  ret %Environment %590
}

define internal i64 @env_define(
%Environment %env.param, %nyx_string* %name.param, %Value %value.param) {
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %value.ptr = alloca %Value
  store %Value %value.param, %Value* %value.ptr
  %591 = getelementptr %Environment, %Environment* %env.ptr, i32 0, i32 0
  %592 = load i8*, i8** %591
  %593 = load %nyx_string*, %nyx_string** %name.ptr
  %594 = load %Value, %Value* %value.ptr
  %595 = call i8* @nyx_string_to_cstr(%nyx_string* %593)
  %596 = getelementptr %Value, %Value* null, i32 1
  %597 = ptrtoint %Value* %596 to i64
  %598 = call i8* @GC_malloc(i64 %597)
  %599 = bitcast i8* %598 to %Value*
  store %Value %594, %Value* %599
  %600 = ptrtoint %Value* %599 to i64
  call void @nyx_map_insert_int(i8* %592, i8* %595, i64 %600)
  ret i64 0
}

define internal %Value @env_get(
%Environment %env.param, %nyx_string* %name.param) {
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %601 = getelementptr %Environment, %Environment* %env.ptr, i32 0, i32 0
  %602 = load i8*, i8** %601
  %603 = load %nyx_string*, %nyx_string** %name.ptr
  %604 = call i8* @nyx_string_to_cstr(%nyx_string* %603)
  %605 = call i1 @nyx_map_contains_str(i8* %602, i8* %604)
  br i1 %605, label %then69, label %else70
then69:
  %606 = getelementptr %Environment, %Environment* %env.ptr, i32 0, i32 0
  %607 = load i8*, i8** %606
  %608 = load %nyx_string*, %nyx_string** %name.ptr
  %609 = call i8* @nyx_string_to_cstr(%nyx_string* %608)
  %610 = call i64 @nyx_map_get_int(i8* %607, i8* %609)
  %611 = inttoptr i64 %610 to %Value*
  %612 = load %Value, %Value* %611
  ret %Value %612
else70:
  br label %merge71
merge71:
  %613 = getelementptr %Environment, %Environment* %env.ptr, i32 0, i32 1
  %614 = load { i64, i8* }*, { i64, i8* }** %613
  %615 = call i64 @nyx_array_length({ i64, i8* }* %614)
  %616 = icmp sgt i64 %615, 0
  br i1 %616, label %then72, label %else73
then72:
  %617 = getelementptr %Environment, %Environment* %env.ptr, i32 0, i32 1
  %618 = load { i64, i8* }*, { i64, i8* }** %617
  %619 = call i64 @nyx_array_get({ i64, i8* }* %618, i64 0)
  %620 = inttoptr i64 %619 to %Environment*
  %621 = load %Environment, %Environment* %620
  %622 = alloca %Environment
  store %Environment %621, %Environment* %622
  %623 = load %Environment, %Environment* %622
  %624 = load %nyx_string*, %nyx_string** %name.ptr
  %625 = call %Value @env_get(%Environment %623, %nyx_string* %624)
  ret %Value %625
else73:
  br label %merge74
merge74:
  %626 = getelementptr [30 x i8], [30 x i8]* @.str52, i32 0, i32 0
  %627 = call %nyx_string* @nyx_string_from_cstr(i8* %626)
  %628 = load %nyx_string*, %nyx_string** %name.ptr
  %629 = call %nyx_string* @nyx_string_concat(%nyx_string* %627, %nyx_string* %628)
  %630 = call i8* @nyx_string_to_cstr(%nyx_string* %629)
  call void @nyx_print_string(i8* %630)
  %631 = call %Value @make_nil()
  ret %Value %631
}

define internal i1 @env_set(
%Environment %env.param, %nyx_string* %name.param, %Value %value.param) {
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %value.ptr = alloca %Value
  store %Value %value.param, %Value* %value.ptr
  %632 = getelementptr %Environment, %Environment* %env.ptr, i32 0, i32 0
  %633 = load i8*, i8** %632
  %634 = load %nyx_string*, %nyx_string** %name.ptr
  %635 = call i8* @nyx_string_to_cstr(%nyx_string* %634)
  %636 = call i1 @nyx_map_contains_str(i8* %633, i8* %635)
  br i1 %636, label %then75, label %else76
then75:
  %637 = getelementptr %Environment, %Environment* %env.ptr, i32 0, i32 0
  %638 = load i8*, i8** %637
  %639 = load %nyx_string*, %nyx_string** %name.ptr
  %640 = load %Value, %Value* %value.ptr
  %641 = call i8* @nyx_string_to_cstr(%nyx_string* %639)
  %642 = getelementptr %Value, %Value* null, i32 1
  %643 = ptrtoint %Value* %642 to i64
  %644 = call i8* @GC_malloc(i64 %643)
  %645 = bitcast i8* %644 to %Value*
  store %Value %640, %Value* %645
  %646 = ptrtoint %Value* %645 to i64
  call void @nyx_map_insert_int(i8* %638, i8* %641, i64 %646)
  ret i1 1
else76:
  br label %merge77
merge77:
  %647 = getelementptr %Environment, %Environment* %env.ptr, i32 0, i32 1
  %648 = load { i64, i8* }*, { i64, i8* }** %647
  %649 = call i64 @nyx_array_length({ i64, i8* }* %648)
  %650 = icmp sgt i64 %649, 0
  br i1 %650, label %then78, label %else79
then78:
  %651 = getelementptr %Environment, %Environment* %env.ptr, i32 0, i32 1
  %652 = load { i64, i8* }*, { i64, i8* }** %651
  %653 = call i64 @nyx_array_get({ i64, i8* }* %652, i64 0)
  %654 = inttoptr i64 %653 to %Environment*
  %655 = load %Environment, %Environment* %654
  %656 = alloca %Environment
  store %Environment %655, %Environment* %656
  %657 = load %Environment, %Environment* %656
  %658 = load %nyx_string*, %nyx_string** %name.ptr
  %659 = load %Value, %Value* %value.ptr
  %660 = call i1 @env_set(%Environment %657, %nyx_string* %658, %Value %659)
  ret i1 %660
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
  %661 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %662 = call %nyx_string* @astnode_get_type({ i64, i8* }* %661)
  %663 = alloca %nyx_string*
  store %nyx_string* %662, %nyx_string** %663
  %664 = load %nyx_string*, %nyx_string** %663
  %665 = getelementptr [7 x i8], [7 x i8]* @.str53, i32 0, i32 0
  %666 = call %nyx_string* @nyx_string_from_cstr(i8* %665)
  %667 = call i8* @nyx_string_to_cstr(%nyx_string* %664)
  %668 = call i8* @nyx_string_to_cstr(%nyx_string* %666)
  %669 = call i32 @strcmp(i8* %667, i8* %668)
  %670 = icmp eq i32 %669, 0
  br i1 %670, label %then81, label %else82
then81:
  %671 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %672 = call %Value @eval_number({ i64, i8* }* %671)
  ret %Value %672
else82:
  br label %merge83
merge83:
  %673 = load %nyx_string*, %nyx_string** %663
  %674 = getelementptr [5 x i8], [5 x i8]* @.str54, i32 0, i32 0
  %675 = call %nyx_string* @nyx_string_from_cstr(i8* %674)
  %676 = call i8* @nyx_string_to_cstr(%nyx_string* %673)
  %677 = call i8* @nyx_string_to_cstr(%nyx_string* %675)
  %678 = call i32 @strcmp(i8* %676, i8* %677)
  %679 = icmp eq i32 %678, 0
  br i1 %679, label %then84, label %else85
then84:
  %680 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %681 = call %Value @eval_bool({ i64, i8* }* %680)
  ret %Value %681
else85:
  br label %merge86
merge86:
  %682 = load %nyx_string*, %nyx_string** %663
  %683 = getelementptr [7 x i8], [7 x i8]* @.str55, i32 0, i32 0
  %684 = call %nyx_string* @nyx_string_from_cstr(i8* %683)
  %685 = call i8* @nyx_string_to_cstr(%nyx_string* %682)
  %686 = call i8* @nyx_string_to_cstr(%nyx_string* %684)
  %687 = call i32 @strcmp(i8* %685, i8* %686)
  %688 = icmp eq i32 %687, 0
  br i1 %688, label %then87, label %else88
then87:
  %689 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %690 = call %Value @eval_string({ i64, i8* }* %689)
  ret %Value %690
else88:
  br label %merge89
merge89:
  %691 = load %nyx_string*, %nyx_string** %663
  %692 = getelementptr [11 x i8], [11 x i8]* @.str56, i32 0, i32 0
  %693 = call %nyx_string* @nyx_string_from_cstr(i8* %692)
  %694 = call i8* @nyx_string_to_cstr(%nyx_string* %691)
  %695 = call i8* @nyx_string_to_cstr(%nyx_string* %693)
  %696 = call i32 @strcmp(i8* %694, i8* %695)
  %697 = icmp eq i32 %696, 0
  br i1 %697, label %then90, label %else91
then90:
  %698 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %699 = load %Environment, %Environment* %env.ptr
  %700 = call %Value @eval_identifier({ i64, i8* }* %698, %Environment %699)
  ret %Value %700
else91:
  br label %merge92
merge92:
  %701 = load %nyx_string*, %nyx_string** %663
  %702 = getelementptr [6 x i8], [6 x i8]* @.str57, i32 0, i32 0
  %703 = call %nyx_string* @nyx_string_from_cstr(i8* %702)
  %704 = call i8* @nyx_string_to_cstr(%nyx_string* %701)
  %705 = call i8* @nyx_string_to_cstr(%nyx_string* %703)
  %706 = call i32 @strcmp(i8* %704, i8* %705)
  %707 = icmp eq i32 %706, 0
  br i1 %707, label %then93, label %else94
then93:
  %708 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %709 = load %Environment, %Environment* %env.ptr
  %710 = call %Value @eval_binop({ i64, i8* }* %708, %Environment %709)
  ret %Value %710
else94:
  br label %merge95
merge95:
  %711 = load %nyx_string*, %nyx_string** %663
  %712 = getelementptr [5 x i8], [5 x i8]* @.str58, i32 0, i32 0
  %713 = call %nyx_string* @nyx_string_from_cstr(i8* %712)
  %714 = call i8* @nyx_string_to_cstr(%nyx_string* %711)
  %715 = call i8* @nyx_string_to_cstr(%nyx_string* %713)
  %716 = call i32 @strcmp(i8* %714, i8* %715)
  %717 = icmp eq i32 %716, 0
  br i1 %717, label %then96, label %else97
then96:
  %718 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %719 = load %Environment, %Environment* %env.ptr
  %720 = call %Value @eval_unop({ i64, i8* }* %718, %Environment %719)
  ret %Value %720
else97:
  br label %merge98
merge98:
  %721 = load %nyx_string*, %nyx_string** %663
  %722 = getelementptr [5 x i8], [5 x i8]* @.str59, i32 0, i32 0
  %723 = call %nyx_string* @nyx_string_from_cstr(i8* %722)
  %724 = call i8* @nyx_string_to_cstr(%nyx_string* %721)
  %725 = call i8* @nyx_string_to_cstr(%nyx_string* %723)
  %726 = call i32 @strcmp(i8* %724, i8* %725)
  %727 = icmp eq i32 %726, 0
  br i1 %727, label %then99, label %else100
then99:
  %728 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %729 = load %Environment, %Environment* %env.ptr
  %730 = call %Value @eval_call({ i64, i8* }* %728, %Environment %729)
  ret %Value %730
else100:
  br label %merge101
merge101:
  %731 = load %nyx_string*, %nyx_string** %663
  %732 = getelementptr [6 x i8], [6 x i8]* @.str60, i32 0, i32 0
  %733 = call %nyx_string* @nyx_string_from_cstr(i8* %732)
  %734 = call i8* @nyx_string_to_cstr(%nyx_string* %731)
  %735 = call i8* @nyx_string_to_cstr(%nyx_string* %733)
  %736 = call i32 @strcmp(i8* %734, i8* %735)
  %737 = icmp eq i32 %736, 0
  br i1 %737, label %then102, label %else103
then102:
  %738 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %739 = load %Environment, %Environment* %env.ptr
  %740 = call %Value @eval_array({ i64, i8* }* %738, %Environment %739)
  ret %Value %740
else103:
  br label %merge104
merge104:
  %741 = load %nyx_string*, %nyx_string** %663
  %742 = getelementptr [6 x i8], [6 x i8]* @.str61, i32 0, i32 0
  %743 = call %nyx_string* @nyx_string_from_cstr(i8* %742)
  %744 = call i8* @nyx_string_to_cstr(%nyx_string* %741)
  %745 = call i8* @nyx_string_to_cstr(%nyx_string* %743)
  %746 = call i32 @strcmp(i8* %744, i8* %745)
  %747 = icmp eq i32 %746, 0
  br i1 %747, label %then105, label %else106
then105:
  %748 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %749 = load %Environment, %Environment* %env.ptr
  %750 = call %Value @eval_index({ i64, i8* }* %748, %Environment %749)
  ret %Value %750
else106:
  br label %merge107
merge107:
  %751 = load %nyx_string*, %nyx_string** %663
  %752 = getelementptr [12 x i8], [12 x i8]* @.str62, i32 0, i32 0
  %753 = call %nyx_string* @nyx_string_from_cstr(i8* %752)
  %754 = call i8* @nyx_string_to_cstr(%nyx_string* %751)
  %755 = call i8* @nyx_string_to_cstr(%nyx_string* %753)
  %756 = call i32 @strcmp(i8* %754, i8* %755)
  %757 = icmp eq i32 %756, 0
  br i1 %757, label %then108, label %else109
then108:
  %758 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %759 = load %Environment, %Environment* %env.ptr
  %760 = call %Value @eval_method_call({ i64, i8* }* %758, %Environment %759)
  ret %Value %760
else109:
  br label %merge110
merge110:
  %761 = getelementptr [26 x i8], [26 x i8]* @.str63, i32 0, i32 0
  %762 = call %nyx_string* @nyx_string_from_cstr(i8* %761)
  %763 = load %nyx_string*, %nyx_string** %663
  %764 = call %nyx_string* @nyx_string_concat(%nyx_string* %762, %nyx_string* %763)
  %765 = call i8* @nyx_string_to_cstr(%nyx_string* %764)
  call void @nyx_print_string(i8* %765)
  %766 = call %Value @make_nil()
  ret %Value %766
}

define internal %Value @eval_number(
{ i64, i8* }* %node.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %767 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %768 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %767)
  %769 = alloca { i64, i8* }*
  store { i64, i8* }* %768, { i64, i8* }** %769
  %770 = load { i64, i8* }*, { i64, i8* }** %769
  %771 = call i64 @nyx_array_get({ i64, i8* }* %770, i64 0)
  %772 = inttoptr i64 %771 to %nyx_string*
  %773 = alloca %nyx_string*
  store %nyx_string* %772, %nyx_string** %773
  %774 = load %nyx_string*, %nyx_string** %773
  %775 = getelementptr [2 x i8], [2 x i8]* @.str64, i32 0, i32 0
  %776 = call %nyx_string* @nyx_string_from_cstr(i8* %775)
  %777 = call i64 @nyx_string_index_of(%nyx_string* %774, %nyx_string* %776)
  %778 = icmp sge i64 %777, 0
  br i1 %778, label %then111, label %else112
then111:
  %779 = load %nyx_string*, %nyx_string** %773
  %780 = call double @nyx_string_to_float(%nyx_string* %779)
  %781 = alloca double
  store double %780, double* %781
  %782 = load double, double* %781
  %783 = call %Value @make_float(double %782)
  ret %Value %783
else112:
  br label %merge113
merge113:
  %784 = load %nyx_string*, %nyx_string** %773
  %785 = call i64 @nyx_string_to_int(%nyx_string* %784)
  %786 = alloca i64
  store i64 %785, i64* %786
  %787 = load i64, i64* %786
  %788 = call %Value @make_int(i64 %787)
  ret %Value %788
}

define internal %Value @eval_bool(
{ i64, i8* }* %node.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %789 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %790 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %789)
  %791 = alloca { i64, i8* }*
  store { i64, i8* }* %790, { i64, i8* }** %791
  %792 = load { i64, i8* }*, { i64, i8* }** %791
  %793 = call i64 @nyx_array_get({ i64, i8* }* %792, i64 0)
  %794 = inttoptr i64 %793 to %nyx_string*
  %795 = alloca %nyx_string*
  store %nyx_string* %794, %nyx_string** %795
  %796 = load %nyx_string*, %nyx_string** %795
  %797 = getelementptr [5 x i8], [5 x i8]* @.str65, i32 0, i32 0
  %798 = call %nyx_string* @nyx_string_from_cstr(i8* %797)
  %799 = call i8* @nyx_string_to_cstr(%nyx_string* %796)
  %800 = call i8* @nyx_string_to_cstr(%nyx_string* %798)
  %801 = call i32 @strcmp(i8* %799, i8* %800)
  %802 = icmp eq i32 %801, 0
  %803 = call %Value @make_bool(i1 %802)
  ret %Value %803
}

define internal %Value @eval_string(
{ i64, i8* }* %node.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %804 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %805 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %804)
  %806 = alloca { i64, i8* }*
  store { i64, i8* }* %805, { i64, i8* }** %806
  %807 = load { i64, i8* }*, { i64, i8* }** %806
  %808 = call i64 @nyx_array_get({ i64, i8* }* %807, i64 0)
  %809 = call %Value @make_string(i64 %808)
  ret %Value %809
}

define internal %Value @eval_identifier(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %810 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %811 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %810)
  %812 = alloca { i64, i8* }*
  store { i64, i8* }* %811, { i64, i8* }** %812
  %813 = load { i64, i8* }*, { i64, i8* }** %812
  %814 = call i64 @nyx_array_get({ i64, i8* }* %813, i64 0)
  %815 = inttoptr i64 %814 to %nyx_string*
  %816 = alloca %nyx_string*
  store %nyx_string* %815, %nyx_string** %816
  %817 = load %Environment, %Environment* %env.ptr
  %818 = load %nyx_string*, %nyx_string** %816
  %819 = call %Value @env_get(%Environment %817, %nyx_string* %818)
  ret %Value %819
}

define internal %Value @eval_binop(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %820 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %821 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %820)
  %822 = alloca { i64, i8* }*
  store { i64, i8* }* %821, { i64, i8* }** %822
  %823 = load { i64, i8* }*, { i64, i8* }** %822
  %824 = call i64 @nyx_array_get({ i64, i8* }* %823, i64 0)
  %825 = inttoptr i64 %824 to %nyx_string*
  %826 = alloca %nyx_string*
  store %nyx_string* %825, %nyx_string** %826
  %827 = load { i64, i8* }*, { i64, i8* }** %822
  %828 = call i64 @nyx_array_get({ i64, i8* }* %827, i64 1)
  %829 = inttoptr i64 %828 to { i64, i8* }*
  %830 = alloca { i64, i8* }*
  store { i64, i8* }* %829, { i64, i8* }** %830
  %831 = load { i64, i8* }*, { i64, i8* }** %830
  %832 = load %Environment, %Environment* %env.ptr
  %833 = call %Value @eval_expr({ i64, i8* }* %831, %Environment %832)
  %834 = alloca %Value
  store %Value %833, %Value* %834
  %835 = load { i64, i8* }*, { i64, i8* }** %822
  %836 = call i64 @nyx_array_get({ i64, i8* }* %835, i64 2)
  %837 = inttoptr i64 %836 to { i64, i8* }*
  %838 = alloca { i64, i8* }*
  store { i64, i8* }* %837, { i64, i8* }** %838
  %839 = load { i64, i8* }*, { i64, i8* }** %838
  %840 = load %Environment, %Environment* %env.ptr
  %841 = call %Value @eval_expr({ i64, i8* }* %839, %Environment %840)
  %842 = alloca %Value
  store %Value %841, %Value* %842
  %843 = getelementptr %Value, %Value* %834, i32 0, i32 0
  %844 = load %nyx_string*, %nyx_string** %843
  %845 = getelementptr [6 x i8], [6 x i8]* @.str66, i32 0, i32 0
  %846 = call %nyx_string* @nyx_string_from_cstr(i8* %845)
  %847 = call i8* @nyx_string_to_cstr(%nyx_string* %844)
  %848 = call i8* @nyx_string_to_cstr(%nyx_string* %846)
  %849 = call i32 @strcmp(i8* %847, i8* %848)
  %850 = icmp eq i32 %849, 0
  %851 = getelementptr %Value, %Value* %842, i32 0, i32 0
  %852 = load %nyx_string*, %nyx_string** %851
  %853 = getelementptr [6 x i8], [6 x i8]* @.str67, i32 0, i32 0
  %854 = call %nyx_string* @nyx_string_from_cstr(i8* %853)
  %855 = call i8* @nyx_string_to_cstr(%nyx_string* %852)
  %856 = call i8* @nyx_string_to_cstr(%nyx_string* %854)
  %857 = call i32 @strcmp(i8* %855, i8* %856)
  %858 = icmp eq i32 %857, 0
  %859 = or i1 %850, %858
  %860 = alloca i1
  store i1 %859, i1* %860
  %861 = load %nyx_string*, %nyx_string** %826
  %862 = getelementptr [5 x i8], [5 x i8]* @.str68, i32 0, i32 0
  %863 = call %nyx_string* @nyx_string_from_cstr(i8* %862)
  %864 = call i8* @nyx_string_to_cstr(%nyx_string* %861)
  %865 = call i8* @nyx_string_to_cstr(%nyx_string* %863)
  %866 = call i32 @strcmp(i8* %864, i8* %865)
  %867 = icmp eq i32 %866, 0
  br i1 %867, label %then114, label %else115
then114:
  %868 = getelementptr %Value, %Value* %834, i32 0, i32 0
  %869 = load %nyx_string*, %nyx_string** %868
  %870 = getelementptr [7 x i8], [7 x i8]* @.str69, i32 0, i32 0
  %871 = call %nyx_string* @nyx_string_from_cstr(i8* %870)
  %872 = call i8* @nyx_string_to_cstr(%nyx_string* %869)
  %873 = call i8* @nyx_string_to_cstr(%nyx_string* %871)
  %874 = call i32 @strcmp(i8* %872, i8* %873)
  %875 = icmp eq i32 %874, 0
  br i1 %875, label %then117, label %else118
then117:
  %876 = load %Value, %Value* %834
  %877 = call %nyx_string* @value_to_string(%Value %876)
  %878 = alloca %nyx_string*
  store %nyx_string* %877, %nyx_string** %878
  %879 = load %Value, %Value* %842
  %880 = call %nyx_string* @value_to_string(%Value %879)
  %881 = alloca %nyx_string*
  store %nyx_string* %880, %nyx_string** %881
  %882 = load %nyx_string*, %nyx_string** %878
  %883 = load %nyx_string*, %nyx_string** %881
  %884 = call %nyx_string* @nyx_string_concat(%nyx_string* %882, %nyx_string* %883)
  %885 = call %Value @make_string(%nyx_string* %884)
  ret %Value %885
else118:
  br label %merge119
merge119:
  %886 = load i1, i1* %860
  br i1 %886, label %then120, label %else121
then120:
  %887 = load %Value, %Value* %834
  %888 = call double @value_to_float(%Value %887)
  %889 = load %Value, %Value* %842
  %890 = call double @value_to_float(%Value %889)
  %891 = fadd double %888, %890
  %892 = call %Value @make_float(double %891)
  ret %Value %892
else121:
  br label %merge122
merge122:
  %893 = load %Value, %Value* %834
  %894 = call i64 @value_to_int(%Value %893)
  %895 = load %Value, %Value* %842
  %896 = call i64 @value_to_int(%Value %895)
  %897 = add i64 %894, %896
  %898 = call %Value @make_int(i64 %897)
  ret %Value %898
else115:
  br label %merge116
merge116:
  %899 = load %nyx_string*, %nyx_string** %826
  %900 = getelementptr [6 x i8], [6 x i8]* @.str70, i32 0, i32 0
  %901 = call %nyx_string* @nyx_string_from_cstr(i8* %900)
  %902 = call i8* @nyx_string_to_cstr(%nyx_string* %899)
  %903 = call i8* @nyx_string_to_cstr(%nyx_string* %901)
  %904 = call i32 @strcmp(i8* %902, i8* %903)
  %905 = icmp eq i32 %904, 0
  br i1 %905, label %then123, label %else124
then123:
  %906 = load i1, i1* %860
  br i1 %906, label %then126, label %else127
then126:
  %907 = load %Value, %Value* %834
  %908 = call double @value_to_float(%Value %907)
  %909 = load %Value, %Value* %842
  %910 = call double @value_to_float(%Value %909)
  %911 = fsub double %908, %910
  %912 = call %Value @make_float(double %911)
  ret %Value %912
else127:
  br label %merge128
merge128:
  %913 = load %Value, %Value* %834
  %914 = call i64 @value_to_int(%Value %913)
  %915 = load %Value, %Value* %842
  %916 = call i64 @value_to_int(%Value %915)
  %917 = sub i64 %914, %916
  %918 = call %Value @make_int(i64 %917)
  ret %Value %918
else124:
  br label %merge125
merge125:
  %919 = load %nyx_string*, %nyx_string** %826
  %920 = getelementptr [5 x i8], [5 x i8]* @.str71, i32 0, i32 0
  %921 = call %nyx_string* @nyx_string_from_cstr(i8* %920)
  %922 = call i8* @nyx_string_to_cstr(%nyx_string* %919)
  %923 = call i8* @nyx_string_to_cstr(%nyx_string* %921)
  %924 = call i32 @strcmp(i8* %922, i8* %923)
  %925 = icmp eq i32 %924, 0
  br i1 %925, label %then129, label %else130
then129:
  %926 = load i1, i1* %860
  br i1 %926, label %then132, label %else133
then132:
  %927 = load %Value, %Value* %834
  %928 = call double @value_to_float(%Value %927)
  %929 = load %Value, %Value* %842
  %930 = call double @value_to_float(%Value %929)
  %931 = fmul double %928, %930
  %932 = call %Value @make_float(double %931)
  ret %Value %932
else133:
  br label %merge134
merge134:
  %933 = load %Value, %Value* %834
  %934 = call i64 @value_to_int(%Value %933)
  %935 = load %Value, %Value* %842
  %936 = call i64 @value_to_int(%Value %935)
  %937 = mul i64 %934, %936
  %938 = call %Value @make_int(i64 %937)
  ret %Value %938
else130:
  br label %merge131
merge131:
  %939 = load %nyx_string*, %nyx_string** %826
  %940 = getelementptr [6 x i8], [6 x i8]* @.str72, i32 0, i32 0
  %941 = call %nyx_string* @nyx_string_from_cstr(i8* %940)
  %942 = call i8* @nyx_string_to_cstr(%nyx_string* %939)
  %943 = call i8* @nyx_string_to_cstr(%nyx_string* %941)
  %944 = call i32 @strcmp(i8* %942, i8* %943)
  %945 = icmp eq i32 %944, 0
  br i1 %945, label %then135, label %else136
then135:
  %946 = load i1, i1* %860
  br i1 %946, label %then138, label %else139
then138:
  %947 = load %Value, %Value* %842
  %948 = call double @value_to_float(%Value %947)
  %949 = alloca double
  store double %948, double* %949
  %950 = load %Value, %Value* %834
  %951 = call double @value_to_float(%Value %950)
  %952 = load double, double* %949
  %953 = fdiv double %951, %952
  %954 = call %Value @make_float(double %953)
  ret %Value %954
else139:
  br label %merge140
merge140:
  %955 = load %Value, %Value* %842
  %956 = call i64 @value_to_int(%Value %955)
  %957 = alloca i64
  store i64 %956, i64* %957
  %958 = load i64, i64* %957
  %959 = icmp ne i64 %958, 0
  br i1 %959, label %then141, label %else142
then141:
  %960 = load %Value, %Value* %834
  %961 = call i64 @value_to_int(%Value %960)
  %962 = load i64, i64* %957
  %963 = sdiv i64 %961, %962
  %964 = call %Value @make_int(i64 %963)
  ret %Value %964
else142:
  br label %merge143
merge143:
  %965 = getelementptr [26 x i8], [26 x i8]* @.str73, i32 0, i32 0
  %966 = call %nyx_string* @nyx_string_from_cstr(i8* %965)
  %967 = call i8* @nyx_string_to_cstr(%nyx_string* %966)
  call void @nyx_print_string(i8* %967)
  %968 = call %Value @make_nil()
  ret %Value %968
else136:
  br label %merge137
merge137:
  %969 = load %nyx_string*, %nyx_string** %826
  %970 = getelementptr [8 x i8], [8 x i8]* @.str74, i32 0, i32 0
  %971 = call %nyx_string* @nyx_string_from_cstr(i8* %970)
  %972 = call i8* @nyx_string_to_cstr(%nyx_string* %969)
  %973 = call i8* @nyx_string_to_cstr(%nyx_string* %971)
  %974 = call i32 @strcmp(i8* %972, i8* %973)
  %975 = icmp eq i32 %974, 0
  br i1 %975, label %then144, label %else145
then144:
  %976 = load %Value, %Value* %834
  %977 = call i64 @value_to_int(%Value %976)
  %978 = alloca i64
  store i64 %977, i64* %978
  %979 = load %Value, %Value* %842
  %980 = call i64 @value_to_int(%Value %979)
  %981 = alloca i64
  store i64 %980, i64* %981
  %982 = load i64, i64* %978
  %983 = load i64, i64* %981
  %984 = srem i64 %982, %983
  %985 = call %Value @make_int(i64 %984)
  ret %Value %985
else145:
  br label %merge146
merge146:
  %986 = load %nyx_string*, %nyx_string** %826
  %987 = getelementptr [12 x i8], [12 x i8]* @.str75, i32 0, i32 0
  %988 = call %nyx_string* @nyx_string_from_cstr(i8* %987)
  %989 = call i8* @nyx_string_to_cstr(%nyx_string* %986)
  %990 = call i8* @nyx_string_to_cstr(%nyx_string* %988)
  %991 = call i32 @strcmp(i8* %989, i8* %990)
  %992 = icmp eq i32 %991, 0
  br i1 %992, label %then147, label %else148
then147:
  %993 = load %Value, %Value* %834
  %994 = load %Value, %Value* %842
  %995 = call i1 @values_equal(%Value %993, %Value %994)
  %996 = call %Value @make_bool(i1 %995)
  ret %Value %996
else148:
  br label %merge149
merge149:
  %997 = load %nyx_string*, %nyx_string** %826
  %998 = getelementptr [10 x i8], [10 x i8]* @.str76, i32 0, i32 0
  %999 = call %nyx_string* @nyx_string_from_cstr(i8* %998)
  %1000 = call i8* @nyx_string_to_cstr(%nyx_string* %997)
  %1001 = call i8* @nyx_string_to_cstr(%nyx_string* %999)
  %1002 = call i32 @strcmp(i8* %1000, i8* %1001)
  %1003 = icmp eq i32 %1002, 0
  br i1 %1003, label %then150, label %else151
then150:
  %1004 = load %Value, %Value* %834
  %1005 = load %Value, %Value* %842
  %1006 = call i1 @values_equal(%Value %1004, %Value %1005)
  %1007 = xor i1 %1006, true
  %1008 = call %Value @make_bool(i1 %1007)
  ret %Value %1008
else151:
  br label %merge152
merge152:
  %1009 = load %nyx_string*, %nyx_string** %826
  %1010 = getelementptr [5 x i8], [5 x i8]* @.str77, i32 0, i32 0
  %1011 = call %nyx_string* @nyx_string_from_cstr(i8* %1010)
  %1012 = call i8* @nyx_string_to_cstr(%nyx_string* %1009)
  %1013 = call i8* @nyx_string_to_cstr(%nyx_string* %1011)
  %1014 = call i32 @strcmp(i8* %1012, i8* %1013)
  %1015 = icmp eq i32 %1014, 0
  br i1 %1015, label %then153, label %else154
then153:
  %1016 = load i1, i1* %860
  br i1 %1016, label %then156, label %else157
then156:
  %1017 = load %Value, %Value* %834
  %1018 = call double @value_to_float(%Value %1017)
  %1019 = load %Value, %Value* %842
  %1020 = call double @value_to_float(%Value %1019)
  %1021 = fcmp olt double %1018, %1020
  %1022 = call %Value @make_bool(i1 %1021)
  ret %Value %1022
else157:
  br label %merge158
merge158:
  %1023 = load %Value, %Value* %834
  %1024 = call i64 @value_to_int(%Value %1023)
  %1025 = load %Value, %Value* %842
  %1026 = call i64 @value_to_int(%Value %1025)
  %1027 = icmp slt i64 %1024, %1026
  %1028 = call %Value @make_bool(i1 %1027)
  ret %Value %1028
else154:
  br label %merge155
merge155:
  %1029 = load %nyx_string*, %nyx_string** %826
  %1030 = getelementptr [8 x i8], [8 x i8]* @.str78, i32 0, i32 0
  %1031 = call %nyx_string* @nyx_string_from_cstr(i8* %1030)
  %1032 = call i8* @nyx_string_to_cstr(%nyx_string* %1029)
  %1033 = call i8* @nyx_string_to_cstr(%nyx_string* %1031)
  %1034 = call i32 @strcmp(i8* %1032, i8* %1033)
  %1035 = icmp eq i32 %1034, 0
  br i1 %1035, label %then159, label %else160
then159:
  %1036 = load i1, i1* %860
  br i1 %1036, label %then162, label %else163
then162:
  %1037 = load %Value, %Value* %834
  %1038 = call double @value_to_float(%Value %1037)
  %1039 = load %Value, %Value* %842
  %1040 = call double @value_to_float(%Value %1039)
  %1041 = fcmp ogt double %1038, %1040
  %1042 = call %Value @make_bool(i1 %1041)
  ret %Value %1042
else163:
  br label %merge164
merge164:
  %1043 = load %Value, %Value* %834
  %1044 = call i64 @value_to_int(%Value %1043)
  %1045 = load %Value, %Value* %842
  %1046 = call i64 @value_to_int(%Value %1045)
  %1047 = icmp sgt i64 %1044, %1046
  %1048 = call %Value @make_bool(i1 %1047)
  ret %Value %1048
else160:
  br label %merge161
merge161:
  %1049 = load %nyx_string*, %nyx_string** %826
  %1050 = getelementptr [11 x i8], [11 x i8]* @.str79, i32 0, i32 0
  %1051 = call %nyx_string* @nyx_string_from_cstr(i8* %1050)
  %1052 = call i8* @nyx_string_to_cstr(%nyx_string* %1049)
  %1053 = call i8* @nyx_string_to_cstr(%nyx_string* %1051)
  %1054 = call i32 @strcmp(i8* %1052, i8* %1053)
  %1055 = icmp eq i32 %1054, 0
  br i1 %1055, label %then165, label %else166
then165:
  %1056 = load i1, i1* %860
  br i1 %1056, label %then168, label %else169
then168:
  %1057 = load %Value, %Value* %834
  %1058 = call double @value_to_float(%Value %1057)
  %1059 = load %Value, %Value* %842
  %1060 = call double @value_to_float(%Value %1059)
  %1061 = fcmp ole double %1058, %1060
  %1062 = call %Value @make_bool(i1 %1061)
  ret %Value %1062
else169:
  br label %merge170
merge170:
  %1063 = load %Value, %Value* %834
  %1064 = call i64 @value_to_int(%Value %1063)
  %1065 = load %Value, %Value* %842
  %1066 = call i64 @value_to_int(%Value %1065)
  %1067 = icmp sle i64 %1064, %1066
  %1068 = call %Value @make_bool(i1 %1067)
  ret %Value %1068
else166:
  br label %merge167
merge167:
  %1069 = load %nyx_string*, %nyx_string** %826
  %1070 = getelementptr [14 x i8], [14 x i8]* @.str80, i32 0, i32 0
  %1071 = call %nyx_string* @nyx_string_from_cstr(i8* %1070)
  %1072 = call i8* @nyx_string_to_cstr(%nyx_string* %1069)
  %1073 = call i8* @nyx_string_to_cstr(%nyx_string* %1071)
  %1074 = call i32 @strcmp(i8* %1072, i8* %1073)
  %1075 = icmp eq i32 %1074, 0
  br i1 %1075, label %then171, label %else172
then171:
  %1076 = load i1, i1* %860
  br i1 %1076, label %then174, label %else175
then174:
  %1077 = load %Value, %Value* %834
  %1078 = call double @value_to_float(%Value %1077)
  %1079 = load %Value, %Value* %842
  %1080 = call double @value_to_float(%Value %1079)
  %1081 = fcmp oge double %1078, %1080
  %1082 = call %Value @make_bool(i1 %1081)
  ret %Value %1082
else175:
  br label %merge176
merge176:
  %1083 = load %Value, %Value* %834
  %1084 = call i64 @value_to_int(%Value %1083)
  %1085 = load %Value, %Value* %842
  %1086 = call i64 @value_to_int(%Value %1085)
  %1087 = icmp sge i64 %1084, %1086
  %1088 = call %Value @make_bool(i1 %1087)
  ret %Value %1088
else172:
  br label %merge173
merge173:
  %1089 = load %nyx_string*, %nyx_string** %826
  %1090 = getelementptr [8 x i8], [8 x i8]* @.str81, i32 0, i32 0
  %1091 = call %nyx_string* @nyx_string_from_cstr(i8* %1090)
  %1092 = call i8* @nyx_string_to_cstr(%nyx_string* %1089)
  %1093 = call i8* @nyx_string_to_cstr(%nyx_string* %1091)
  %1094 = call i32 @strcmp(i8* %1092, i8* %1093)
  %1095 = icmp eq i32 %1094, 0
  %1096 = load %nyx_string*, %nyx_string** %826
  %1097 = getelementptr [4 x i8], [4 x i8]* @.str82, i32 0, i32 0
  %1098 = call %nyx_string* @nyx_string_from_cstr(i8* %1097)
  %1099 = call i8* @nyx_string_to_cstr(%nyx_string* %1096)
  %1100 = call i8* @nyx_string_to_cstr(%nyx_string* %1098)
  %1101 = call i32 @strcmp(i8* %1099, i8* %1100)
  %1102 = icmp eq i32 %1101, 0
  %1103 = or i1 %1095, %1102
  br i1 %1103, label %then177, label %else178
then177:
  %1104 = load %Value, %Value* %834
  %1105 = call i1 @is_truthy(%Value %1104)
  %1106 = load %Value, %Value* %842
  %1107 = call i1 @is_truthy(%Value %1106)
  %1108 = and i1 %1105, %1107
  %1109 = call %Value @make_bool(i1 %1108)
  ret %Value %1109
else178:
  br label %merge179
merge179:
  %1110 = load %nyx_string*, %nyx_string** %826
  %1111 = getelementptr [6 x i8], [6 x i8]* @.str83, i32 0, i32 0
  %1112 = call %nyx_string* @nyx_string_from_cstr(i8* %1111)
  %1113 = call i8* @nyx_string_to_cstr(%nyx_string* %1110)
  %1114 = call i8* @nyx_string_to_cstr(%nyx_string* %1112)
  %1115 = call i32 @strcmp(i8* %1113, i8* %1114)
  %1116 = icmp eq i32 %1115, 0
  %1117 = load %nyx_string*, %nyx_string** %826
  %1118 = getelementptr [3 x i8], [3 x i8]* @.str84, i32 0, i32 0
  %1119 = call %nyx_string* @nyx_string_from_cstr(i8* %1118)
  %1120 = call i8* @nyx_string_to_cstr(%nyx_string* %1117)
  %1121 = call i8* @nyx_string_to_cstr(%nyx_string* %1119)
  %1122 = call i32 @strcmp(i8* %1120, i8* %1121)
  %1123 = icmp eq i32 %1122, 0
  %1124 = or i1 %1116, %1123
  br i1 %1124, label %then180, label %else181
then180:
  %1125 = load %Value, %Value* %834
  %1126 = call i1 @is_truthy(%Value %1125)
  %1127 = load %Value, %Value* %842
  %1128 = call i1 @is_truthy(%Value %1127)
  %1129 = or i1 %1126, %1128
  %1130 = call %Value @make_bool(i1 %1129)
  ret %Value %1130
else181:
  br label %merge182
merge182:
  %1131 = getelementptr [24 x i8], [24 x i8]* @.str85, i32 0, i32 0
  %1132 = call %nyx_string* @nyx_string_from_cstr(i8* %1131)
  %1133 = load %nyx_string*, %nyx_string** %826
  %1134 = call %nyx_string* @nyx_string_concat(%nyx_string* %1132, %nyx_string* %1133)
  %1135 = call i8* @nyx_string_to_cstr(%nyx_string* %1134)
  call void @nyx_print_string(i8* %1135)
  %1136 = call %Value @make_nil()
  ret %Value %1136
}

define internal %Value @eval_unop(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %1137 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1138 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %1137)
  %1139 = alloca { i64, i8* }*
  store { i64, i8* }* %1138, { i64, i8* }** %1139
  %1140 = load { i64, i8* }*, { i64, i8* }** %1139
  %1141 = call i64 @nyx_array_get({ i64, i8* }* %1140, i64 0)
  %1142 = inttoptr i64 %1141 to %nyx_string*
  %1143 = alloca %nyx_string*
  store %nyx_string* %1142, %nyx_string** %1143
  %1144 = load { i64, i8* }*, { i64, i8* }** %1139
  %1145 = call i64 @nyx_array_get({ i64, i8* }* %1144, i64 1)
  %1146 = load %Environment, %Environment* %env.ptr
  %1147 = call %Value @eval_expr(i64 %1145, %Environment %1146)
  %1148 = alloca %Value
  store %Value %1147, %Value* %1148
  %1149 = load %nyx_string*, %nyx_string** %1143
  %1150 = getelementptr [6 x i8], [6 x i8]* @.str86, i32 0, i32 0
  %1151 = call %nyx_string* @nyx_string_from_cstr(i8* %1150)
  %1152 = call i8* @nyx_string_to_cstr(%nyx_string* %1149)
  %1153 = call i8* @nyx_string_to_cstr(%nyx_string* %1151)
  %1154 = call i32 @strcmp(i8* %1152, i8* %1153)
  %1155 = icmp eq i32 %1154, 0
  br i1 %1155, label %then183, label %else184
then183:
  %1156 = load %Value, %Value* %1148
  %1157 = call i64 @value_to_int(%Value %1156)
  %1158 = alloca i64
  store i64 %1157, i64* %1158
  %1159 = load i64, i64* %1158
  %1160 = sub i64 0, %1159
  %1161 = call %Value @make_int(i64 %1160)
  ret %Value %1161
else184:
  br label %merge185
merge185:
  %1162 = load %nyx_string*, %nyx_string** %1143
  %1163 = getelementptr [4 x i8], [4 x i8]* @.str87, i32 0, i32 0
  %1164 = call %nyx_string* @nyx_string_from_cstr(i8* %1163)
  %1165 = call i8* @nyx_string_to_cstr(%nyx_string* %1162)
  %1166 = call i8* @nyx_string_to_cstr(%nyx_string* %1164)
  %1167 = call i32 @strcmp(i8* %1165, i8* %1166)
  %1168 = icmp eq i32 %1167, 0
  br i1 %1168, label %then186, label %else187
then186:
  %1169 = load %Value, %Value* %1148
  %1170 = call i1 @is_truthy(%Value %1169)
  %1171 = alloca i1
  store i1 %1170, i1* %1171
  %1172 = load i1, i1* %1171
  %1173 = xor i1 %1172, true
  %1174 = call %Value @make_bool(i1 %1173)
  ret %Value %1174
else187:
  br label %merge188
merge188:
  %1175 = getelementptr [31 x i8], [31 x i8]* @.str88, i32 0, i32 0
  %1176 = call %nyx_string* @nyx_string_from_cstr(i8* %1175)
  %1177 = load %nyx_string*, %nyx_string** %1143
  %1178 = call %nyx_string* @nyx_string_concat(%nyx_string* %1176, %nyx_string* %1177)
  %1179 = call i8* @nyx_string_to_cstr(%nyx_string* %1178)
  call void @nyx_print_string(i8* %1179)
  %1180 = call %Value @make_nil()
  ret %Value %1180
}

define internal %Value @eval_array(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %1181 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1182 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %1181)
  %1183 = alloca { i64, i8* }*
  store { i64, i8* }* %1182, { i64, i8* }** %1183
  %1184 = load { i64, i8* }*, { i64, i8* }** %1183
  %1185 = alloca { i64, i8* }*
  store { i64, i8* }* %1184, { i64, i8* }** %1185
  %1186 = call { i64, i8* }* @nyx_array_new_ptr()
  %1187 = alloca { i64, i8* }*
  store { i64, i8* }* %1186, { i64, i8* }** %1187
  %1188 = alloca i64
  store i64 0, i64* %1188
  br label %while_cond189
while_cond189:
  %1189 = load i64, i64* %1188
  %1190 = load { i64, i8* }*, { i64, i8* }** %1185
  %1191 = call i64 @nyx_array_length({ i64, i8* }* %1190)
  %1192 = icmp slt i64 %1189, %1191
  br i1 %1192, label %while_body190, label %while_end191
while_body190:
  %1193 = load { i64, i8* }*, { i64, i8* }** %1185
  %1194 = load i64, i64* %1188
  %1195 = call i64 @nyx_array_get({ i64, i8* }* %1193, i64 %1194)
  %1196 = inttoptr i64 %1195 to { i64, i8* }*
  %1197 = alloca { i64, i8* }*
  store { i64, i8* }* %1196, { i64, i8* }** %1197
  %1198 = load { i64, i8* }*, { i64, i8* }** %1197
  %1199 = load %Environment, %Environment* %env.ptr
  %1200 = call %Value @eval_expr({ i64, i8* }* %1198, %Environment %1199)
  %1201 = alloca %Value
  store %Value %1200, %Value* %1201
  %1202 = load { i64, i8* }*, { i64, i8* }** %1187
  %1203 = load %Value, %Value* %1201
  %1204 = getelementptr %Value, %Value* null, i32 1
  %1205 = ptrtoint %Value* %1204 to i64
  %1206 = call i8* @GC_malloc(i64 %1205)
  %1207 = bitcast i8* %1206 to %Value*
  store %Value %1203, %Value* %1207
  %1208 = ptrtoint %Value* %1207 to i64
  call void @nyx_array_push({ i64, i8* }* %1202, i64 %1208)
  %1209 = load i64, i64* %1188
  %1210 = add i64 %1209, 1
  store i64 %1210, i64* %1188
  br label %while_cond189
while_end191:
  %1211 = load { i64, i8* }*, { i64, i8* }** %1187
  %1212 = call %Value @make_array({ i64, i8* }* %1211)
  ret %Value %1212
}

define internal %Value @eval_index(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %1213 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1214 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %1213)
  %1215 = alloca { i64, i8* }*
  store { i64, i8* }* %1214, { i64, i8* }** %1215
  %1216 = load { i64, i8* }*, { i64, i8* }** %1215
  %1217 = call i64 @nyx_array_get({ i64, i8* }* %1216, i64 0)
  %1218 = load %Environment, %Environment* %env.ptr
  %1219 = call %Value @eval_expr(i64 %1217, %Environment %1218)
  %1220 = alloca %Value
  store %Value %1219, %Value* %1220
  %1221 = load { i64, i8* }*, { i64, i8* }** %1215
  %1222 = call i64 @nyx_array_get({ i64, i8* }* %1221, i64 1)
  %1223 = load %Environment, %Environment* %env.ptr
  %1224 = call %Value @eval_expr(i64 %1222, %Environment %1223)
  %1225 = alloca %Value
  store %Value %1224, %Value* %1225
  %1226 = getelementptr %Value, %Value* %1220, i32 0, i32 5
  %1227 = load { i64, i8* }*, { i64, i8* }** %1226
  %1228 = alloca { i64, i8* }*
  store { i64, i8* }* %1227, { i64, i8* }** %1228
  %1229 = load %Value, %Value* %1225
  %1230 = call i64 @value_to_int(%Value %1229)
  %1231 = alloca i64
  store i64 %1230, i64* %1231
  %1232 = load i64, i64* %1231
  %1233 = icmp sge i64 %1232, 0
  %1234 = load i64, i64* %1231
  %1235 = load { i64, i8* }*, { i64, i8* }** %1228
  %1236 = call i64 @nyx_array_length({ i64, i8* }* %1235)
  %1237 = icmp slt i64 %1234, %1236
  %1238 = and i1 %1233, %1237
  br i1 %1238, label %then192, label %else193
then192:
  %1239 = load { i64, i8* }*, { i64, i8* }** %1228
  %1240 = load i64, i64* %1231
  %1241 = call i64 @nyx_array_get({ i64, i8* }* %1239, i64 %1240)
  %1242 = inttoptr i64 %1241 to %Value*
  %1243 = load %Value, %Value* %1242
  %1244 = alloca %Value
  store %Value %1243, %Value* %1244
  %1245 = load %Value, %Value* %1244
  ret %Value %1245
else193:
  br label %merge194
merge194:
  %1246 = getelementptr [30 x i8], [30 x i8]* @.str89, i32 0, i32 0
  %1247 = call %nyx_string* @nyx_string_from_cstr(i8* %1246)
  %1248 = call i8* @nyx_string_to_cstr(%nyx_string* %1247)
  call void @nyx_print_string(i8* %1248)
  %1249 = call %Value @make_nil()
  ret %Value %1249
}

define internal %Value @eval_stmt(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %1250 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1251 = call %nyx_string* @astnode_get_type({ i64, i8* }* %1250)
  %1252 = alloca %nyx_string*
  store %nyx_string* %1251, %nyx_string** %1252
  %1253 = load %nyx_string*, %nyx_string** %1252
  %1254 = getelementptr [4 x i8], [4 x i8]* @.str90, i32 0, i32 0
  %1255 = call %nyx_string* @nyx_string_from_cstr(i8* %1254)
  %1256 = call i8* @nyx_string_to_cstr(%nyx_string* %1253)
  %1257 = call i8* @nyx_string_to_cstr(%nyx_string* %1255)
  %1258 = call i32 @strcmp(i8* %1256, i8* %1257)
  %1259 = icmp eq i32 %1258, 0
  br i1 %1259, label %then195, label %else196
then195:
  %1260 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1261 = load %Environment, %Environment* %env.ptr
  %1262 = call %Value @eval_let({ i64, i8* }* %1260, %Environment %1261)
  ret %Value %1262
else196:
  br label %merge197
merge197:
  %1263 = load %nyx_string*, %nyx_string** %1252
  %1264 = getelementptr [4 x i8], [4 x i8]* @.str91, i32 0, i32 0
  %1265 = call %nyx_string* @nyx_string_from_cstr(i8* %1264)
  %1266 = call i8* @nyx_string_to_cstr(%nyx_string* %1263)
  %1267 = call i8* @nyx_string_to_cstr(%nyx_string* %1265)
  %1268 = call i32 @strcmp(i8* %1266, i8* %1267)
  %1269 = icmp eq i32 %1268, 0
  br i1 %1269, label %then198, label %else199
then198:
  %1270 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1271 = load %Environment, %Environment* %env.ptr
  %1272 = call %Value @eval_let({ i64, i8* }* %1270, %Environment %1271)
  ret %Value %1272
else199:
  br label %merge200
merge200:
  %1273 = load %nyx_string*, %nyx_string** %1252
  %1274 = getelementptr [7 x i8], [7 x i8]* @.str92, i32 0, i32 0
  %1275 = call %nyx_string* @nyx_string_from_cstr(i8* %1274)
  %1276 = call i8* @nyx_string_to_cstr(%nyx_string* %1273)
  %1277 = call i8* @nyx_string_to_cstr(%nyx_string* %1275)
  %1278 = call i32 @strcmp(i8* %1276, i8* %1277)
  %1279 = icmp eq i32 %1278, 0
  br i1 %1279, label %then201, label %else202
then201:
  %1280 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1281 = load %Environment, %Environment* %env.ptr
  %1282 = call %Value @eval_assign({ i64, i8* }* %1280, %Environment %1281)
  ret %Value %1282
else202:
  br label %merge203
merge203:
  %1283 = load %nyx_string*, %nyx_string** %1252
  %1284 = getelementptr [3 x i8], [3 x i8]* @.str93, i32 0, i32 0
  %1285 = call %nyx_string* @nyx_string_from_cstr(i8* %1284)
  %1286 = call i8* @nyx_string_to_cstr(%nyx_string* %1283)
  %1287 = call i8* @nyx_string_to_cstr(%nyx_string* %1285)
  %1288 = call i32 @strcmp(i8* %1286, i8* %1287)
  %1289 = icmp eq i32 %1288, 0
  br i1 %1289, label %then204, label %else205
then204:
  %1290 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1291 = load %Environment, %Environment* %env.ptr
  %1292 = call %Value @eval_if({ i64, i8* }* %1290, %Environment %1291)
  ret %Value %1292
else205:
  br label %merge206
merge206:
  %1293 = load %nyx_string*, %nyx_string** %1252
  %1294 = getelementptr [6 x i8], [6 x i8]* @.str94, i32 0, i32 0
  %1295 = call %nyx_string* @nyx_string_from_cstr(i8* %1294)
  %1296 = call i8* @nyx_string_to_cstr(%nyx_string* %1293)
  %1297 = call i8* @nyx_string_to_cstr(%nyx_string* %1295)
  %1298 = call i32 @strcmp(i8* %1296, i8* %1297)
  %1299 = icmp eq i32 %1298, 0
  br i1 %1299, label %then207, label %else208
then207:
  %1300 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1301 = load %Environment, %Environment* %env.ptr
  %1302 = call %Value @eval_while({ i64, i8* }* %1300, %Environment %1301)
  ret %Value %1302
else208:
  br label %merge209
merge209:
  %1303 = load %nyx_string*, %nyx_string** %1252
  %1304 = getelementptr [4 x i8], [4 x i8]* @.str95, i32 0, i32 0
  %1305 = call %nyx_string* @nyx_string_from_cstr(i8* %1304)
  %1306 = call i8* @nyx_string_to_cstr(%nyx_string* %1303)
  %1307 = call i8* @nyx_string_to_cstr(%nyx_string* %1305)
  %1308 = call i32 @strcmp(i8* %1306, i8* %1307)
  %1309 = icmp eq i32 %1308, 0
  br i1 %1309, label %then210, label %else211
then210:
  %1310 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1311 = load %Environment, %Environment* %env.ptr
  %1312 = call %Value @eval_for({ i64, i8* }* %1310, %Environment %1311)
  ret %Value %1312
else211:
  br label %merge212
merge212:
  %1313 = load %nyx_string*, %nyx_string** %1252
  %1314 = getelementptr [7 x i8], [7 x i8]* @.str96, i32 0, i32 0
  %1315 = call %nyx_string* @nyx_string_from_cstr(i8* %1314)
  %1316 = call i8* @nyx_string_to_cstr(%nyx_string* %1313)
  %1317 = call i8* @nyx_string_to_cstr(%nyx_string* %1315)
  %1318 = call i32 @strcmp(i8* %1316, i8* %1317)
  %1319 = icmp eq i32 %1318, 0
  br i1 %1319, label %then213, label %else214
then213:
  %1320 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1321 = load %Environment, %Environment* %env.ptr
  %1322 = call %Value @eval_return({ i64, i8* }* %1320, %Environment %1321)
  ret %Value %1322
else214:
  br label %merge215
merge215:
  %1323 = load %nyx_string*, %nyx_string** %1252
  %1324 = getelementptr [6 x i8], [6 x i8]* @.str97, i32 0, i32 0
  %1325 = call %nyx_string* @nyx_string_from_cstr(i8* %1324)
  %1326 = call i8* @nyx_string_to_cstr(%nyx_string* %1323)
  %1327 = call i8* @nyx_string_to_cstr(%nyx_string* %1325)
  %1328 = call i32 @strcmp(i8* %1326, i8* %1327)
  %1329 = icmp eq i32 %1328, 0
  br i1 %1329, label %then216, label %else217
then216:
  %1330 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1331 = load %Environment, %Environment* %env.ptr
  %1332 = call %Value @eval_block({ i64, i8* }* %1330, %Environment %1331)
  ret %Value %1332
else217:
  br label %merge218
merge218:
  %1333 = load %nyx_string*, %nyx_string** %1252
  %1334 = getelementptr [9 x i8], [9 x i8]* @.str98, i32 0, i32 0
  %1335 = call %nyx_string* @nyx_string_from_cstr(i8* %1334)
  %1336 = call i8* @nyx_string_to_cstr(%nyx_string* %1333)
  %1337 = call i8* @nyx_string_to_cstr(%nyx_string* %1335)
  %1338 = call i32 @strcmp(i8* %1336, i8* %1337)
  %1339 = icmp eq i32 %1338, 0
  br i1 %1339, label %then219, label %else220
then219:
  %1340 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1341 = load %Environment, %Environment* %env.ptr
  %1342 = call %Value @eval_function_decl({ i64, i8* }* %1340, %Environment %1341)
  ret %Value %1342
else220:
  br label %merge221
merge221:
  %1343 = load %nyx_string*, %nyx_string** %1252
  %1344 = getelementptr [13 x i8], [13 x i8]* @.str99, i32 0, i32 0
  %1345 = call %nyx_string* @nyx_string_from_cstr(i8* %1344)
  %1346 = call i8* @nyx_string_to_cstr(%nyx_string* %1343)
  %1347 = call i8* @nyx_string_to_cstr(%nyx_string* %1345)
  %1348 = call i32 @strcmp(i8* %1346, i8* %1347)
  %1349 = icmp eq i32 %1348, 0
  br i1 %1349, label %then222, label %else223
then222:
  %1350 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1351 = load %Environment, %Environment* %env.ptr
  %1352 = call %Value @eval_index_assign({ i64, i8* }* %1350, %Environment %1351)
  ret %Value %1352
else223:
  br label %merge224
merge224:
  %1353 = load %nyx_string*, %nyx_string** %1252
  %1354 = getelementptr [16 x i8], [16 x i8]* @.str100, i32 0, i32 0
  %1355 = call %nyx_string* @nyx_string_from_cstr(i8* %1354)
  %1356 = call i8* @nyx_string_to_cstr(%nyx_string* %1353)
  %1357 = call i8* @nyx_string_to_cstr(%nyx_string* %1355)
  %1358 = call i32 @strcmp(i8* %1356, i8* %1357)
  %1359 = icmp eq i32 %1358, 0
  br i1 %1359, label %then225, label %else226
then225:
  %1360 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1361 = load %Environment, %Environment* %env.ptr
  %1362 = call %Value @eval_compound_assign({ i64, i8* }* %1360, %Environment %1361)
  ret %Value %1362
else226:
  br label %merge227
merge227:
  %1363 = load %nyx_string*, %nyx_string** %1252
  %1364 = getelementptr [13 x i8], [13 x i8]* @.str101, i32 0, i32 0
  %1365 = call %nyx_string* @nyx_string_from_cstr(i8* %1364)
  %1366 = call i8* @nyx_string_to_cstr(%nyx_string* %1363)
  %1367 = call i8* @nyx_string_to_cstr(%nyx_string* %1365)
  %1368 = call i32 @strcmp(i8* %1366, i8* %1367)
  %1369 = icmp eq i32 %1368, 0
  br i1 %1369, label %then228, label %else229
then228:
  %1370 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1371 = load %Environment, %Environment* %env.ptr
  %1372 = call %Value @eval_field_assign({ i64, i8* }* %1370, %Environment %1371)
  ret %Value %1372
else229:
  br label %merge230
merge230:
  %1373 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1374 = load %Environment, %Environment* %env.ptr
  %1375 = call %Value @eval_expr({ i64, i8* }* %1373, %Environment %1374)
  ret %Value %1375
}

define internal %Value @eval_let(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %1376 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1377 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %1376)
  %1378 = alloca { i64, i8* }*
  store { i64, i8* }* %1377, { i64, i8* }** %1378
  %1379 = load { i64, i8* }*, { i64, i8* }** %1378
  %1380 = call i64 @nyx_array_get({ i64, i8* }* %1379, i64 0)
  %1381 = inttoptr i64 %1380 to { i64, i8* }*
  %1382 = alloca { i64, i8* }*
  store { i64, i8* }* %1381, { i64, i8* }** %1382
  %1383 = load { i64, i8* }*, { i64, i8* }** %1382
  %1384 = call %nyx_string* @astnode_get_type({ i64, i8* }* %1383)
  %1385 = alloca %nyx_string*
  store %nyx_string* %1384, %nyx_string** %1385
  %1386 = load { i64, i8* }*, { i64, i8* }** %1378
  %1387 = call i64 @nyx_array_get({ i64, i8* }* %1386, i64 2)
  %1388 = inttoptr i64 %1387 to { i64, i8* }*
  %1389 = alloca { i64, i8* }*
  store { i64, i8* }* %1388, { i64, i8* }** %1389
  %1390 = load { i64, i8* }*, { i64, i8* }** %1389
  %1391 = load %Environment, %Environment* %env.ptr
  %1392 = call %Value @eval_expr({ i64, i8* }* %1390, %Environment %1391)
  %1393 = alloca %Value
  store %Value %1392, %Value* %1393
  %1394 = load %Environment, %Environment* %env.ptr
  %1395 = load %nyx_string*, %nyx_string** %1385
  %1396 = load %Value, %Value* %1393
  %1397 = call i64 @env_define(%Environment %1394, %nyx_string* %1395, %Value %1396)
  %1398 = call %Value @make_nil()
  ret %Value %1398
}

define internal %Value @eval_assign(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %1399 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1400 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %1399)
  %1401 = alloca { i64, i8* }*
  store { i64, i8* }* %1400, { i64, i8* }** %1401
  %1402 = load { i64, i8* }*, { i64, i8* }** %1401
  %1403 = call i64 @nyx_array_get({ i64, i8* }* %1402, i64 0)
  %1404 = inttoptr i64 %1403 to { i64, i8* }*
  %1405 = alloca { i64, i8* }*
  store { i64, i8* }* %1404, { i64, i8* }** %1405
  %1406 = load { i64, i8* }*, { i64, i8* }** %1405
  %1407 = call %nyx_string* @astnode_get_type({ i64, i8* }* %1406)
  %1408 = alloca %nyx_string*
  store %nyx_string* %1407, %nyx_string** %1408
  %1409 = load { i64, i8* }*, { i64, i8* }** %1401
  %1410 = call i64 @nyx_array_get({ i64, i8* }* %1409, i64 1)
  %1411 = load %Environment, %Environment* %env.ptr
  %1412 = call %Value @eval_expr(i64 %1410, %Environment %1411)
  %1413 = alloca %Value
  store %Value %1412, %Value* %1413
  %1414 = load %Environment, %Environment* %env.ptr
  %1415 = load %nyx_string*, %nyx_string** %1408
  %1416 = load %Value, %Value* %1413
  %1417 = call i1 @env_set(%Environment %1414, %nyx_string* %1415, %Value %1416)
  %1418 = xor i1 %1417, true
  br i1 %1418, label %then231, label %else232
then231:
  %1419 = getelementptr [30 x i8], [30 x i8]* @.str102, i32 0, i32 0
  %1420 = call %nyx_string* @nyx_string_from_cstr(i8* %1419)
  %1421 = load %nyx_string*, %nyx_string** %1408
  %1422 = call %nyx_string* @nyx_string_concat(%nyx_string* %1420, %nyx_string* %1421)
  %1423 = call i8* @nyx_string_to_cstr(%nyx_string* %1422)
  call void @nyx_print_string(i8* %1423)
  br label %merge233
else232:
  br label %merge233
merge233:
  %1424 = call %Value @make_nil()
  ret %Value %1424
}

define internal %Value @eval_index_assign(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %1425 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1426 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %1425)
  %1427 = alloca { i64, i8* }*
  store { i64, i8* }* %1426, { i64, i8* }** %1427
  %1428 = load { i64, i8* }*, { i64, i8* }** %1427
  %1429 = call i64 @nyx_array_get({ i64, i8* }* %1428, i64 0)
  %1430 = inttoptr i64 %1429 to { i64, i8* }*
  %1431 = alloca { i64, i8* }*
  store { i64, i8* }* %1430, { i64, i8* }** %1431
  %1432 = load { i64, i8* }*, { i64, i8* }** %1427
  %1433 = call i64 @nyx_array_get({ i64, i8* }* %1432, i64 1)
  %1434 = inttoptr i64 %1433 to { i64, i8* }*
  %1435 = alloca { i64, i8* }*
  store { i64, i8* }* %1434, { i64, i8* }** %1435
  %1436 = load { i64, i8* }*, { i64, i8* }** %1427
  %1437 = call i64 @nyx_array_get({ i64, i8* }* %1436, i64 2)
  %1438 = inttoptr i64 %1437 to { i64, i8* }*
  %1439 = alloca { i64, i8* }*
  store { i64, i8* }* %1438, { i64, i8* }** %1439
  %1440 = load { i64, i8* }*, { i64, i8* }** %1431
  %1441 = load %Environment, %Environment* %env.ptr
  %1442 = call %Value @eval_expr({ i64, i8* }* %1440, %Environment %1441)
  %1443 = alloca %Value
  store %Value %1442, %Value* %1443
  %1444 = load { i64, i8* }*, { i64, i8* }** %1435
  %1445 = load %Environment, %Environment* %env.ptr
  %1446 = call %Value @eval_expr({ i64, i8* }* %1444, %Environment %1445)
  %1447 = alloca %Value
  store %Value %1446, %Value* %1447
  %1448 = load { i64, i8* }*, { i64, i8* }** %1439
  %1449 = load %Environment, %Environment* %env.ptr
  %1450 = call %Value @eval_expr({ i64, i8* }* %1448, %Environment %1449)
  %1451 = alloca %Value
  store %Value %1450, %Value* %1451
  %1452 = getelementptr %Value, %Value* %1443, i32 0, i32 0
  %1453 = load %nyx_string*, %nyx_string** %1452
  %1454 = getelementptr [6 x i8], [6 x i8]* @.str103, i32 0, i32 0
  %1455 = call %nyx_string* @nyx_string_from_cstr(i8* %1454)
  %1456 = call i8* @nyx_string_to_cstr(%nyx_string* %1453)
  %1457 = call i8* @nyx_string_to_cstr(%nyx_string* %1455)
  %1458 = call i32 @strcmp(i8* %1456, i8* %1457)
  %1459 = icmp eq i32 %1458, 0
  br i1 %1459, label %then234, label %else235
then234:
  %1460 = getelementptr %Value, %Value* %1443, i32 0, i32 5
  %1461 = load { i64, i8* }*, { i64, i8* }** %1460
  %1462 = alloca { i64, i8* }*
  store { i64, i8* }* %1461, { i64, i8* }** %1462
  %1463 = load %Value, %Value* %1447
  %1464 = call i64 @value_to_int(%Value %1463)
  %1465 = alloca i64
  store i64 %1464, i64* %1465
  %1466 = load i64, i64* %1465
  %1467 = icmp sge i64 %1466, 0
  %1468 = load i64, i64* %1465
  %1469 = load { i64, i8* }*, { i64, i8* }** %1462
  %1470 = call i64 @nyx_array_length({ i64, i8* }* %1469)
  %1471 = icmp slt i64 %1468, %1470
  %1472 = and i1 %1467, %1471
  br i1 %1472, label %then237, label %else238
then237:
  %1473 = load { i64, i8* }*, { i64, i8* }** %1462
  %1474 = load i64, i64* %1465
  %1475 = load %Value, %Value* %1451
  %1476 = getelementptr %Value, %Value* null, i32 1
  %1477 = ptrtoint %Value* %1476 to i64
  %1478 = call i8* @GC_malloc(i64 %1477)
  %1479 = bitcast i8* %1478 to %Value*
  store %Value %1475, %Value* %1479
  %1480 = ptrtoint %Value* %1479 to i64
  call void @nyx_array_set({ i64, i8* }* %1473, i64 %1474, i64 %1480)
  br label %merge239
else238:
  %1481 = getelementptr [45 x i8], [45 x i8]* @.str104, i32 0, i32 0
  %1482 = call %nyx_string* @nyx_string_from_cstr(i8* %1481)
  %1483 = call i8* @nyx_string_to_cstr(%nyx_string* %1482)
  call void @nyx_print_string(i8* %1483)
  br label %merge239
merge239:
  br label %merge236
else235:
  %1484 = getelementptr [39 x i8], [39 x i8]* @.str105, i32 0, i32 0
  %1485 = call %nyx_string* @nyx_string_from_cstr(i8* %1484)
  %1486 = getelementptr %Value, %Value* %1443, i32 0, i32 0
  %1487 = load %nyx_string*, %nyx_string** %1486
  %1488 = call %nyx_string* @nyx_string_concat(%nyx_string* %1485, %nyx_string* %1487)
  %1489 = call i8* @nyx_string_to_cstr(%nyx_string* %1488)
  call void @nyx_print_string(i8* %1489)
  br label %merge236
merge236:
  %1490 = call %Value @make_nil()
  ret %Value %1490
}

define internal %Value @eval_compound_assign(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %1491 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1492 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %1491)
  %1493 = alloca { i64, i8* }*
  store { i64, i8* }* %1492, { i64, i8* }** %1493
  %1494 = load { i64, i8* }*, { i64, i8* }** %1493
  %1495 = call i64 @nyx_array_get({ i64, i8* }* %1494, i64 0)
  %1496 = inttoptr i64 %1495 to %nyx_string*
  %1497 = alloca %nyx_string*
  store %nyx_string* %1496, %nyx_string** %1497
  %1498 = load { i64, i8* }*, { i64, i8* }** %1493
  %1499 = call i64 @nyx_array_get({ i64, i8* }* %1498, i64 1)
  %1500 = inttoptr i64 %1499 to { i64, i8* }*
  %1501 = alloca { i64, i8* }*
  store { i64, i8* }* %1500, { i64, i8* }** %1501
  %1502 = load { i64, i8* }*, { i64, i8* }** %1501
  %1503 = call %nyx_string* @astnode_get_type({ i64, i8* }* %1502)
  %1504 = alloca %nyx_string*
  store %nyx_string* %1503, %nyx_string** %1504
  %1505 = load { i64, i8* }*, { i64, i8* }** %1493
  %1506 = call i64 @nyx_array_get({ i64, i8* }* %1505, i64 2)
  %1507 = load %Environment, %Environment* %env.ptr
  %1508 = call %Value @eval_expr(i64 %1506, %Environment %1507)
  %1509 = alloca %Value
  store %Value %1508, %Value* %1509
  %1510 = load %Environment, %Environment* %env.ptr
  %1511 = load %nyx_string*, %nyx_string** %1504
  %1512 = call %Value @env_get(%Environment %1510, %nyx_string* %1511)
  %1513 = alloca %Value
  store %Value %1512, %Value* %1513
  %1514 = call %Value @make_nil()
  %1515 = alloca %Value
  store %Value %1514, %Value* %1515
  %1516 = load %nyx_string*, %nyx_string** %1497
  %1517 = getelementptr [8 x i8], [8 x i8]* @.str106, i32 0, i32 0
  %1518 = call %nyx_string* @nyx_string_from_cstr(i8* %1517)
  %1519 = call i8* @nyx_string_to_cstr(%nyx_string* %1516)
  %1520 = call i8* @nyx_string_to_cstr(%nyx_string* %1518)
  %1521 = call i32 @strcmp(i8* %1519, i8* %1520)
  %1522 = icmp eq i32 %1521, 0
  br i1 %1522, label %then240, label %else241
then240:
  %1523 = getelementptr %Value, %Value* %1513, i32 0, i32 0
  %1524 = load %nyx_string*, %nyx_string** %1523
  %1525 = getelementptr [7 x i8], [7 x i8]* @.str107, i32 0, i32 0
  %1526 = call %nyx_string* @nyx_string_from_cstr(i8* %1525)
  %1527 = call i8* @nyx_string_to_cstr(%nyx_string* %1524)
  %1528 = call i8* @nyx_string_to_cstr(%nyx_string* %1526)
  %1529 = call i32 @strcmp(i8* %1527, i8* %1528)
  %1530 = icmp eq i32 %1529, 0
  br i1 %1530, label %then243, label %else244
then243:
  %1531 = getelementptr %Value, %Value* %1513, i32 0, i32 4
  %1532 = load %nyx_string*, %nyx_string** %1531
  %1533 = load %Value, %Value* %1509
  %1534 = call %nyx_string* @value_to_string(%Value %1533)
  %1535 = call %nyx_string* @nyx_string_concat(%nyx_string* %1532, %nyx_string* %1534)
  %1536 = call %Value @make_string(%nyx_string* %1535)
  store %Value %1536, %Value* %1515
  br label %merge245
else244:
  %1537 = getelementptr %Value, %Value* %1513, i32 0, i32 0
  %1538 = load %nyx_string*, %nyx_string** %1537
  %1539 = getelementptr [6 x i8], [6 x i8]* @.str108, i32 0, i32 0
  %1540 = call %nyx_string* @nyx_string_from_cstr(i8* %1539)
  %1541 = call i8* @nyx_string_to_cstr(%nyx_string* %1538)
  %1542 = call i8* @nyx_string_to_cstr(%nyx_string* %1540)
  %1543 = call i32 @strcmp(i8* %1541, i8* %1542)
  %1544 = icmp eq i32 %1543, 0
  %1545 = getelementptr %Value, %Value* %1509, i32 0, i32 0
  %1546 = load %nyx_string*, %nyx_string** %1545
  %1547 = getelementptr [6 x i8], [6 x i8]* @.str109, i32 0, i32 0
  %1548 = call %nyx_string* @nyx_string_from_cstr(i8* %1547)
  %1549 = call i8* @nyx_string_to_cstr(%nyx_string* %1546)
  %1550 = call i8* @nyx_string_to_cstr(%nyx_string* %1548)
  %1551 = call i32 @strcmp(i8* %1549, i8* %1550)
  %1552 = icmp eq i32 %1551, 0
  %1553 = or i1 %1544, %1552
  br i1 %1553, label %then246, label %else247
then246:
  %1554 = load %Value, %Value* %1513
  %1555 = call double @value_to_float(%Value %1554)
  %1556 = load %Value, %Value* %1509
  %1557 = call double @value_to_float(%Value %1556)
  %1558 = fadd double %1555, %1557
  %1559 = call %Value @make_float(double %1558)
  store %Value %1559, %Value* %1515
  br label %merge248
else247:
  %1560 = load %Value, %Value* %1513
  %1561 = call i64 @value_to_int(%Value %1560)
  %1562 = load %Value, %Value* %1509
  %1563 = call i64 @value_to_int(%Value %1562)
  %1564 = add i64 %1561, %1563
  %1565 = call %Value @make_int(i64 %1564)
  store %Value %1565, %Value* %1515
  br label %merge248
merge248:
  br label %merge245
merge245:
  br label %merge242
else241:
  %1566 = load %nyx_string*, %nyx_string** %1497
  %1567 = getelementptr [9 x i8], [9 x i8]* @.str110, i32 0, i32 0
  %1568 = call %nyx_string* @nyx_string_from_cstr(i8* %1567)
  %1569 = call i8* @nyx_string_to_cstr(%nyx_string* %1566)
  %1570 = call i8* @nyx_string_to_cstr(%nyx_string* %1568)
  %1571 = call i32 @strcmp(i8* %1569, i8* %1570)
  %1572 = icmp eq i32 %1571, 0
  br i1 %1572, label %then249, label %else250
then249:
  %1573 = getelementptr %Value, %Value* %1513, i32 0, i32 0
  %1574 = load %nyx_string*, %nyx_string** %1573
  %1575 = getelementptr [6 x i8], [6 x i8]* @.str111, i32 0, i32 0
  %1576 = call %nyx_string* @nyx_string_from_cstr(i8* %1575)
  %1577 = call i8* @nyx_string_to_cstr(%nyx_string* %1574)
  %1578 = call i8* @nyx_string_to_cstr(%nyx_string* %1576)
  %1579 = call i32 @strcmp(i8* %1577, i8* %1578)
  %1580 = icmp eq i32 %1579, 0
  %1581 = getelementptr %Value, %Value* %1509, i32 0, i32 0
  %1582 = load %nyx_string*, %nyx_string** %1581
  %1583 = getelementptr [6 x i8], [6 x i8]* @.str112, i32 0, i32 0
  %1584 = call %nyx_string* @nyx_string_from_cstr(i8* %1583)
  %1585 = call i8* @nyx_string_to_cstr(%nyx_string* %1582)
  %1586 = call i8* @nyx_string_to_cstr(%nyx_string* %1584)
  %1587 = call i32 @strcmp(i8* %1585, i8* %1586)
  %1588 = icmp eq i32 %1587, 0
  %1589 = or i1 %1580, %1588
  br i1 %1589, label %then252, label %else253
then252:
  %1590 = load %Value, %Value* %1513
  %1591 = call double @value_to_float(%Value %1590)
  %1592 = load %Value, %Value* %1509
  %1593 = call double @value_to_float(%Value %1592)
  %1594 = fsub double %1591, %1593
  %1595 = call %Value @make_float(double %1594)
  store %Value %1595, %Value* %1515
  br label %merge254
else253:
  %1596 = load %Value, %Value* %1513
  %1597 = call i64 @value_to_int(%Value %1596)
  %1598 = load %Value, %Value* %1509
  %1599 = call i64 @value_to_int(%Value %1598)
  %1600 = sub i64 %1597, %1599
  %1601 = call %Value @make_int(i64 %1600)
  store %Value %1601, %Value* %1515
  br label %merge254
merge254:
  br label %merge251
else250:
  %1602 = load %nyx_string*, %nyx_string** %1497
  %1603 = getelementptr [8 x i8], [8 x i8]* @.str113, i32 0, i32 0
  %1604 = call %nyx_string* @nyx_string_from_cstr(i8* %1603)
  %1605 = call i8* @nyx_string_to_cstr(%nyx_string* %1602)
  %1606 = call i8* @nyx_string_to_cstr(%nyx_string* %1604)
  %1607 = call i32 @strcmp(i8* %1605, i8* %1606)
  %1608 = icmp eq i32 %1607, 0
  br i1 %1608, label %then255, label %else256
then255:
  %1609 = getelementptr %Value, %Value* %1513, i32 0, i32 0
  %1610 = load %nyx_string*, %nyx_string** %1609
  %1611 = getelementptr [6 x i8], [6 x i8]* @.str114, i32 0, i32 0
  %1612 = call %nyx_string* @nyx_string_from_cstr(i8* %1611)
  %1613 = call i8* @nyx_string_to_cstr(%nyx_string* %1610)
  %1614 = call i8* @nyx_string_to_cstr(%nyx_string* %1612)
  %1615 = call i32 @strcmp(i8* %1613, i8* %1614)
  %1616 = icmp eq i32 %1615, 0
  %1617 = getelementptr %Value, %Value* %1509, i32 0, i32 0
  %1618 = load %nyx_string*, %nyx_string** %1617
  %1619 = getelementptr [6 x i8], [6 x i8]* @.str115, i32 0, i32 0
  %1620 = call %nyx_string* @nyx_string_from_cstr(i8* %1619)
  %1621 = call i8* @nyx_string_to_cstr(%nyx_string* %1618)
  %1622 = call i8* @nyx_string_to_cstr(%nyx_string* %1620)
  %1623 = call i32 @strcmp(i8* %1621, i8* %1622)
  %1624 = icmp eq i32 %1623, 0
  %1625 = or i1 %1616, %1624
  br i1 %1625, label %then258, label %else259
then258:
  %1626 = load %Value, %Value* %1513
  %1627 = call double @value_to_float(%Value %1626)
  %1628 = load %Value, %Value* %1509
  %1629 = call double @value_to_float(%Value %1628)
  %1630 = fmul double %1627, %1629
  %1631 = call %Value @make_float(double %1630)
  store %Value %1631, %Value* %1515
  br label %merge260
else259:
  %1632 = load %Value, %Value* %1513
  %1633 = call i64 @value_to_int(%Value %1632)
  %1634 = load %Value, %Value* %1509
  %1635 = call i64 @value_to_int(%Value %1634)
  %1636 = mul i64 %1633, %1635
  %1637 = call %Value @make_int(i64 %1636)
  store %Value %1637, %Value* %1515
  br label %merge260
merge260:
  br label %merge257
else256:
  %1638 = load %nyx_string*, %nyx_string** %1497
  %1639 = getelementptr [9 x i8], [9 x i8]* @.str116, i32 0, i32 0
  %1640 = call %nyx_string* @nyx_string_from_cstr(i8* %1639)
  %1641 = call i8* @nyx_string_to_cstr(%nyx_string* %1638)
  %1642 = call i8* @nyx_string_to_cstr(%nyx_string* %1640)
  %1643 = call i32 @strcmp(i8* %1641, i8* %1642)
  %1644 = icmp eq i32 %1643, 0
  br i1 %1644, label %then261, label %else262
then261:
  %1645 = getelementptr %Value, %Value* %1513, i32 0, i32 0
  %1646 = load %nyx_string*, %nyx_string** %1645
  %1647 = getelementptr [6 x i8], [6 x i8]* @.str117, i32 0, i32 0
  %1648 = call %nyx_string* @nyx_string_from_cstr(i8* %1647)
  %1649 = call i8* @nyx_string_to_cstr(%nyx_string* %1646)
  %1650 = call i8* @nyx_string_to_cstr(%nyx_string* %1648)
  %1651 = call i32 @strcmp(i8* %1649, i8* %1650)
  %1652 = icmp eq i32 %1651, 0
  %1653 = getelementptr %Value, %Value* %1509, i32 0, i32 0
  %1654 = load %nyx_string*, %nyx_string** %1653
  %1655 = getelementptr [6 x i8], [6 x i8]* @.str118, i32 0, i32 0
  %1656 = call %nyx_string* @nyx_string_from_cstr(i8* %1655)
  %1657 = call i8* @nyx_string_to_cstr(%nyx_string* %1654)
  %1658 = call i8* @nyx_string_to_cstr(%nyx_string* %1656)
  %1659 = call i32 @strcmp(i8* %1657, i8* %1658)
  %1660 = icmp eq i32 %1659, 0
  %1661 = or i1 %1652, %1660
  br i1 %1661, label %then264, label %else265
then264:
  %1662 = load %Value, %Value* %1509
  %1663 = call double @value_to_float(%Value %1662)
  %1664 = alloca double
  store double %1663, double* %1664
  %1665 = load %Value, %Value* %1513
  %1666 = call double @value_to_float(%Value %1665)
  %1667 = load double, double* %1664
  %1668 = fdiv double %1666, %1667
  %1669 = call %Value @make_float(double %1668)
  store %Value %1669, %Value* %1515
  br label %merge266
else265:
  %1670 = load %Value, %Value* %1509
  %1671 = call i64 @value_to_int(%Value %1670)
  %1672 = alloca i64
  store i64 %1671, i64* %1672
  %1673 = load i64, i64* %1672
  %1674 = icmp ne i64 %1673, 0
  br i1 %1674, label %then267, label %else268
then267:
  %1675 = load %Value, %Value* %1513
  %1676 = call i64 @value_to_int(%Value %1675)
  %1677 = load i64, i64* %1672
  %1678 = sdiv i64 %1676, %1677
  %1679 = call %Value @make_int(i64 %1678)
  store %Value %1679, %Value* %1515
  br label %merge269
else268:
  %1680 = getelementptr [45 x i8], [45 x i8]* @.str119, i32 0, i32 0
  %1681 = call %nyx_string* @nyx_string_from_cstr(i8* %1680)
  %1682 = call i8* @nyx_string_to_cstr(%nyx_string* %1681)
  call void @nyx_print_string(i8* %1682)
  %1683 = call %Value @make_int(i64 0)
  store %Value %1683, %Value* %1515
  br label %merge269
merge269:
  br label %merge266
merge266:
  br label %merge263
else262:
  %1684 = load %nyx_string*, %nyx_string** %1497
  %1685 = getelementptr [11 x i8], [11 x i8]* @.str120, i32 0, i32 0
  %1686 = call %nyx_string* @nyx_string_from_cstr(i8* %1685)
  %1687 = call i8* @nyx_string_to_cstr(%nyx_string* %1684)
  %1688 = call i8* @nyx_string_to_cstr(%nyx_string* %1686)
  %1689 = call i32 @strcmp(i8* %1687, i8* %1688)
  %1690 = icmp eq i32 %1689, 0
  br i1 %1690, label %then270, label %else271
then270:
  %1691 = load %Value, %Value* %1513
  %1692 = call i64 @value_to_int(%Value %1691)
  %1693 = load %Value, %Value* %1509
  %1694 = call i64 @value_to_int(%Value %1693)
  %1695 = srem i64 %1692, %1694
  %1696 = call %Value @make_int(i64 %1695)
  store %Value %1696, %Value* %1515
  br label %merge272
else271:
  %1697 = getelementptr [40 x i8], [40 x i8]* @.str121, i32 0, i32 0
  %1698 = call %nyx_string* @nyx_string_from_cstr(i8* %1697)
  %1699 = load %nyx_string*, %nyx_string** %1497
  %1700 = call %nyx_string* @nyx_string_concat(%nyx_string* %1698, %nyx_string* %1699)
  %1701 = call i8* @nyx_string_to_cstr(%nyx_string* %1700)
  call void @nyx_print_string(i8* %1701)
  %1702 = load %Value, %Value* %1513
  store %Value %1702, %Value* %1515
  br label %merge272
merge272:
  br label %merge263
merge263:
  br label %merge257
merge257:
  br label %merge251
merge251:
  br label %merge242
merge242:
  %1703 = load %Environment, %Environment* %env.ptr
  %1704 = load %nyx_string*, %nyx_string** %1504
  %1705 = load %Value, %Value* %1515
  %1706 = call i1 @env_set(%Environment %1703, %nyx_string* %1704, %Value %1705)
  %1707 = xor i1 %1706, true
  br i1 %1707, label %then273, label %else274
then273:
  %1708 = getelementptr [49 x i8], [49 x i8]* @.str122, i32 0, i32 0
  %1709 = call %nyx_string* @nyx_string_from_cstr(i8* %1708)
  %1710 = load %nyx_string*, %nyx_string** %1504
  %1711 = call %nyx_string* @nyx_string_concat(%nyx_string* %1709, %nyx_string* %1710)
  %1712 = call i8* @nyx_string_to_cstr(%nyx_string* %1711)
  call void @nyx_print_string(i8* %1712)
  br label %merge275
else274:
  br label %merge275
merge275:
  %1713 = call %Value @make_nil()
  ret %Value %1713
}

define internal %Value @eval_field_assign(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %1714 = getelementptr [44 x i8], [44 x i8]* @.str123, i32 0, i32 0
  %1715 = call %nyx_string* @nyx_string_from_cstr(i8* %1714)
  %1716 = call i8* @nyx_string_to_cstr(%nyx_string* %1715)
  call void @nyx_print_string(i8* %1716)
  %1717 = call %Value @make_nil()
  ret %Value %1717
}

define internal %Value @eval_if(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %1718 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1719 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %1718)
  %1720 = alloca { i64, i8* }*
  store { i64, i8* }* %1719, { i64, i8* }** %1720
  %1721 = load { i64, i8* }*, { i64, i8* }** %1720
  %1722 = call i64 @nyx_array_get({ i64, i8* }* %1721, i64 0)
  %1723 = inttoptr i64 %1722 to { i64, i8* }*
  %1724 = alloca { i64, i8* }*
  store { i64, i8* }* %1723, { i64, i8* }** %1724
  %1725 = load { i64, i8* }*, { i64, i8* }** %1724
  %1726 = load %Environment, %Environment* %env.ptr
  %1727 = call %Value @eval_expr({ i64, i8* }* %1725, %Environment %1726)
  %1728 = alloca %Value
  store %Value %1727, %Value* %1728
  %1729 = load { i64, i8* }*, { i64, i8* }** %1720
  %1730 = call i64 @nyx_array_get({ i64, i8* }* %1729, i64 1)
  %1731 = inttoptr i64 %1730 to { i64, i8* }*
  %1732 = alloca { i64, i8* }*
  store { i64, i8* }* %1731, { i64, i8* }** %1732
  %1733 = load { i64, i8* }*, { i64, i8* }** %1720
  %1734 = call i64 @nyx_array_get({ i64, i8* }* %1733, i64 2)
  %1735 = inttoptr i64 %1734 to { i64, i8* }*
  %1736 = alloca { i64, i8* }*
  store { i64, i8* }* %1735, { i64, i8* }** %1736
  %1737 = load %Value, %Value* %1728
  %1738 = call i1 @is_truthy(%Value %1737)
  br i1 %1738, label %then276, label %else277
then276:
  %1739 = load { i64, i8* }*, { i64, i8* }** %1732
  %1740 = load %Environment, %Environment* %env.ptr
  %1741 = call %Value @eval_stmt({ i64, i8* }* %1739, %Environment %1740)
  ret %Value %1741
else277:
  %1742 = load { i64, i8* }*, { i64, i8* }** %1736
  %1743 = call %nyx_string* @astnode_get_type({ i64, i8* }* %1742)
  %1744 = alloca %nyx_string*
  store %nyx_string* %1743, %nyx_string** %1744
  %1745 = load %nyx_string*, %nyx_string** %1744
  %1746 = getelementptr [6 x i8], [6 x i8]* @.str124, i32 0, i32 0
  %1747 = call %nyx_string* @nyx_string_from_cstr(i8* %1746)
  %1748 = call i8* @nyx_string_to_cstr(%nyx_string* %1745)
  %1749 = call i8* @nyx_string_to_cstr(%nyx_string* %1747)
  %1750 = call i32 @strcmp(i8* %1748, i8* %1749)
  %1751 = icmp ne i32 %1750, 0
  br i1 %1751, label %then279, label %else280
then279:
  %1752 = load { i64, i8* }*, { i64, i8* }** %1736
  %1753 = load %Environment, %Environment* %env.ptr
  %1754 = call %Value @eval_stmt({ i64, i8* }* %1752, %Environment %1753)
  ret %Value %1754
else280:
  br label %merge281
merge281:
  br label %merge278
merge278:
  %1755 = call %Value @make_nil()
  ret %Value %1755
}

define internal %Value @eval_while(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %1756 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1757 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %1756)
  %1758 = alloca { i64, i8* }*
  store { i64, i8* }* %1757, { i64, i8* }** %1758
  %1759 = load { i64, i8* }*, { i64, i8* }** %1758
  %1760 = call i64 @nyx_array_get({ i64, i8* }* %1759, i64 0)
  %1761 = inttoptr i64 %1760 to { i64, i8* }*
  %1762 = alloca { i64, i8* }*
  store { i64, i8* }* %1761, { i64, i8* }** %1762
  %1763 = load { i64, i8* }*, { i64, i8* }** %1758
  %1764 = call i64 @nyx_array_get({ i64, i8* }* %1763, i64 1)
  %1765 = inttoptr i64 %1764 to { i64, i8* }*
  %1766 = alloca { i64, i8* }*
  store { i64, i8* }* %1765, { i64, i8* }** %1766
  %1767 = alloca i1
  store i1 1, i1* %1767
  br label %while_cond282
while_cond282:
  %1768 = load i1, i1* %1767
  br i1 %1768, label %while_body283, label %while_end284
while_body283:
  %1769 = load { i64, i8* }*, { i64, i8* }** %1762
  %1770 = load %Environment, %Environment* %env.ptr
  %1771 = call %Value @eval_expr({ i64, i8* }* %1769, %Environment %1770)
  %1772 = alloca %Value
  store %Value %1771, %Value* %1772
  %1773 = load %Value, %Value* %1772
  %1774 = call i1 @is_truthy(%Value %1773)
  br i1 %1774, label %then285, label %else286
then285:
  %1775 = load { i64, i8* }*, { i64, i8* }** %1766
  %1776 = load %Environment, %Environment* %env.ptr
  %1777 = call %Value @eval_stmt({ i64, i8* }* %1775, %Environment %1776)
  br label %merge287
else286:
  store i1 0, i1* %1767
  br label %merge287
merge287:
  br label %while_cond282
while_end284:
  %1778 = call %Value @make_nil()
  ret %Value %1778
}

define internal %Value @eval_for(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %1779 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1780 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %1779)
  %1781 = alloca { i64, i8* }*
  store { i64, i8* }* %1780, { i64, i8* }** %1781
  %1782 = load { i64, i8* }*, { i64, i8* }** %1781
  %1783 = call i64 @nyx_array_get({ i64, i8* }* %1782, i64 0)
  %1784 = inttoptr i64 %1783 to { i64, i8* }*
  %1785 = alloca { i64, i8* }*
  store { i64, i8* }* %1784, { i64, i8* }** %1785
  %1786 = load { i64, i8* }*, { i64, i8* }** %1785
  %1787 = call %nyx_string* @astnode_get_type({ i64, i8* }* %1786)
  %1788 = alloca %nyx_string*
  store %nyx_string* %1787, %nyx_string** %1788
  %1789 = load { i64, i8* }*, { i64, i8* }** %1781
  %1790 = call i64 @nyx_array_get({ i64, i8* }* %1789, i64 1)
  %1791 = load %Environment, %Environment* %env.ptr
  %1792 = call %Value @eval_expr(i64 %1790, %Environment %1791)
  %1793 = alloca %Value
  store %Value %1792, %Value* %1793
  %1794 = load { i64, i8* }*, { i64, i8* }** %1781
  %1795 = call i64 @nyx_array_get({ i64, i8* }* %1794, i64 2)
  %1796 = inttoptr i64 %1795 to { i64, i8* }*
  %1797 = alloca { i64, i8* }*
  store { i64, i8* }* %1796, { i64, i8* }** %1797
  %1798 = load %Environment, %Environment* %env.ptr
  %1799 = call %Environment @make_child_env(%Environment %1798)
  %1800 = alloca %Environment
  store %Environment %1799, %Environment* %1800
  %1801 = getelementptr %Value, %Value* %1793, i32 0, i32 0
  %1802 = load %nyx_string*, %nyx_string** %1801
  %1803 = getelementptr [6 x i8], [6 x i8]* @.str125, i32 0, i32 0
  %1804 = call %nyx_string* @nyx_string_from_cstr(i8* %1803)
  %1805 = call i8* @nyx_string_to_cstr(%nyx_string* %1802)
  %1806 = call i8* @nyx_string_to_cstr(%nyx_string* %1804)
  %1807 = call i32 @strcmp(i8* %1805, i8* %1806)
  %1808 = icmp eq i32 %1807, 0
  br i1 %1808, label %then288, label %else289
then288:
  %1809 = getelementptr %Value, %Value* %1793, i32 0, i32 5
  %1810 = load { i64, i8* }*, { i64, i8* }** %1809
  %1811 = alloca { i64, i8* }*
  store { i64, i8* }* %1810, { i64, i8* }** %1811
  %1812 = alloca i64
  store i64 0, i64* %1812
  br label %while_cond291
while_cond291:
  %1813 = load i64, i64* %1812
  %1814 = load { i64, i8* }*, { i64, i8* }** %1811
  %1815 = call i64 @nyx_array_length({ i64, i8* }* %1814)
  %1816 = icmp slt i64 %1813, %1815
  br i1 %1816, label %while_body292, label %while_end293
while_body292:
  %1817 = load { i64, i8* }*, { i64, i8* }** %1811
  %1818 = load i64, i64* %1812
  %1819 = call i64 @nyx_array_get({ i64, i8* }* %1817, i64 %1818)
  %1820 = inttoptr i64 %1819 to %Value*
  %1821 = load %Value, %Value* %1820
  %1822 = alloca %Value
  store %Value %1821, %Value* %1822
  %1823 = load %Environment, %Environment* %1800
  %1824 = load %nyx_string*, %nyx_string** %1788
  %1825 = load %Value, %Value* %1822
  %1826 = call i64 @env_define(%Environment %1823, %nyx_string* %1824, %Value %1825)
  %1827 = load { i64, i8* }*, { i64, i8* }** %1797
  %1828 = load %Environment, %Environment* %1800
  %1829 = call %Value @eval_stmt({ i64, i8* }* %1827, %Environment %1828)
  %1830 = load i64, i64* %1812
  %1831 = add i64 %1830, 1
  store i64 %1831, i64* %1812
  br label %while_cond291
while_end293:
  br label %merge290
else289:
  br label %merge290
merge290:
  %1832 = call %Value @make_nil()
  ret %Value %1832
}

define internal %Value @eval_block(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %1833 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1834 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %1833)
  %1835 = alloca { i64, i8* }*
  store { i64, i8* }* %1834, { i64, i8* }** %1835
  %1836 = load { i64, i8* }*, { i64, i8* }** %1835
  %1837 = call i64 @nyx_array_get({ i64, i8* }* %1836, i64 0)
  %1838 = inttoptr i64 %1837 to { i64, i8* }*
  %1839 = alloca { i64, i8* }*
  store { i64, i8* }* %1838, { i64, i8* }** %1839
  %1840 = load %Environment, %Environment* %env.ptr
  %1841 = call %Environment @make_child_env(%Environment %1840)
  %1842 = alloca %Environment
  store %Environment %1841, %Environment* %1842
  %1843 = call %Value @make_nil()
  %1844 = alloca %Value
  store %Value %1843, %Value* %1844
  %1845 = alloca i64
  store i64 0, i64* %1845
  %1846 = load { i64, i8* }*, { i64, i8* }** %1839
  %1847 = call i64 @nyx_array_length({ i64, i8* }* %1846)
  %1848 = alloca i64
  store i64 %1847, i64* %1848
  br label %while_cond294
while_cond294:
  %1849 = load i64, i64* %1845
  %1850 = load i64, i64* %1848
  %1851 = icmp slt i64 %1849, %1850
  br i1 %1851, label %while_body295, label %while_end296
while_body295:
  %1852 = load { i64, i8* }*, { i64, i8* }** %1839
  %1853 = load i64, i64* %1845
  %1854 = call i64 @nyx_array_get({ i64, i8* }* %1852, i64 %1853)
  %1855 = inttoptr i64 %1854 to { i64, i8* }*
  %1856 = alloca { i64, i8* }*
  store { i64, i8* }* %1855, { i64, i8* }** %1856
  %1857 = load { i64, i8* }*, { i64, i8* }** %1856
  %1858 = load %Environment, %Environment* %1842
  %1859 = call %Value @eval_stmt({ i64, i8* }* %1857, %Environment %1858)
  store %Value %1859, %Value* %1844
  %1860 = getelementptr %Value, %Value* %1844, i32 0, i32 0
  %1861 = load %nyx_string*, %nyx_string** %1860
  %1862 = getelementptr [7 x i8], [7 x i8]* @.str126, i32 0, i32 0
  %1863 = call %nyx_string* @nyx_string_from_cstr(i8* %1862)
  %1864 = call i8* @nyx_string_to_cstr(%nyx_string* %1861)
  %1865 = call i8* @nyx_string_to_cstr(%nyx_string* %1863)
  %1866 = call i32 @strcmp(i8* %1864, i8* %1865)
  %1867 = icmp eq i32 %1866, 0
  br i1 %1867, label %then297, label %else298
then297:
  %1868 = load %Value, %Value* %1844
  ret %Value %1868
else298:
  br label %merge299
merge299:
  %1869 = load i64, i64* %1845
  %1870 = add i64 %1869, 1
  store i64 %1870, i64* %1845
  br label %while_cond294
while_end296:
  %1871 = load %Value, %Value* %1844
  ret %Value %1871
}

define internal %Value @eval_function_decl(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %1872 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1873 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %1872)
  %1874 = alloca { i64, i8* }*
  store { i64, i8* }* %1873, { i64, i8* }** %1874
  %1875 = load { i64, i8* }*, { i64, i8* }** %1874
  %1876 = call i64 @nyx_array_get({ i64, i8* }* %1875, i64 0)
  %1877 = inttoptr i64 %1876 to %nyx_string*
  %1878 = alloca %nyx_string*
  store %nyx_string* %1877, %nyx_string** %1878
  %1879 = load { i64, i8* }*, { i64, i8* }** %1874
  %1880 = call i64 @nyx_array_get({ i64, i8* }* %1879, i64 1)
  %1881 = inttoptr i64 %1880 to { i64, i8* }*
  %1882 = alloca { i64, i8* }*
  store { i64, i8* }* %1881, { i64, i8* }** %1882
  %1883 = load { i64, i8* }*, { i64, i8* }** %1874
  %1884 = call i64 @nyx_array_get({ i64, i8* }* %1883, i64 2)
  %1885 = alloca i64
  store i64 %1884, i64* %1885
  %1886 = load { i64, i8* }*, { i64, i8* }** %1874
  %1887 = call i64 @nyx_array_get({ i64, i8* }* %1886, i64 3)
  %1888 = inttoptr i64 %1887 to { i64, i8* }*
  %1889 = alloca { i64, i8* }*
  store { i64, i8* }* %1888, { i64, i8* }** %1889
  %1890 = call { i64, i8* }* @nyx_array_new_ptr()
  %1891 = alloca { i64, i8* }*
  store { i64, i8* }* %1890, { i64, i8* }** %1891
  %1892 = load { i64, i8* }*, { i64, i8* }** %1889
  %1893 = call %nyx_string* @astnode_get_type({ i64, i8* }* %1892)
  %1894 = alloca %nyx_string*
  store %nyx_string* %1893, %nyx_string** %1894
  %1895 = load { i64, i8* }*, { i64, i8* }** %1889
  %1896 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %1895)
  %1897 = alloca { i64, i8* }*
  store { i64, i8* }* %1896, { i64, i8* }** %1897
  %1898 = getelementptr %Environment, %Environment* %env.ptr, i32 0, i32 0
  %1899 = load i8*, i8** %1898
  %1900 = alloca i8*
  store i8* %1899, i8** %1900
  %1901 = getelementptr %Environment, %Environment* %env.ptr, i32 0, i32 1
  %1902 = load { i64, i8* }*, { i64, i8* }** %1901
  %1903 = alloca { i64, i8* }*
  store { i64, i8* }* %1902, { i64, i8* }** %1903
  %1904 = getelementptr %Value, %Value* null, i32 1
  %1905 = ptrtoint %Value* %1904 to i64
  %1906 = call i8* @GC_malloc(i64 %1905)
  %1907 = bitcast i8* %1906 to %Value*
  %1908 = getelementptr [9 x i8], [9 x i8]* @.str127, i32 0, i32 0
  %1909 = call %nyx_string* @nyx_string_from_cstr(i8* %1908)
  %1910 = getelementptr %Value, %Value* %1907, i32 0, i32 0
  store %nyx_string* %1909, %nyx_string** %1910
  %1911 = getelementptr %Value, %Value* %1907, i32 0, i32 1
  store i64 0, i64* %1911
  %1912 = getelementptr %Value, %Value* %1907, i32 0, i32 2
  store double 0.0, double* %1912
  %1913 = getelementptr %Value, %Value* %1907, i32 0, i32 3
  store i1 0, i1* %1913
  %1914 = getelementptr [1 x i8], [1 x i8]* @.str128, i32 0, i32 0
  %1915 = call %nyx_string* @nyx_string_from_cstr(i8* %1914)
  %1916 = getelementptr %Value, %Value* %1907, i32 0, i32 4
  store %nyx_string* %1915, %nyx_string** %1916
  %1917 = load { i64, i8* }*, { i64, i8* }** %1891
  %1918 = getelementptr %Value, %Value* %1907, i32 0, i32 5
  store { i64, i8* }* %1917, { i64, i8* }** %1918
  %1919 = load { i64, i8* }*, { i64, i8* }** %1882
  %1920 = getelementptr %Value, %Value* %1907, i32 0, i32 6
  store { i64, i8* }* %1919, { i64, i8* }** %1920
  %1921 = load %nyx_string*, %nyx_string** %1894
  %1922 = getelementptr %Value, %Value* %1907, i32 0, i32 7
  store %nyx_string* %1921, %nyx_string** %1922
  %1923 = load { i64, i8* }*, { i64, i8* }** %1897
  %1924 = getelementptr %Value, %Value* %1907, i32 0, i32 8
  store { i64, i8* }* %1923, { i64, i8* }** %1924
  %1925 = load i8*, i8** %1900
  %1926 = getelementptr %Value, %Value* %1907, i32 0, i32 9
  store i8* %1925, i8** %1926
  %1927 = load { i64, i8* }*, { i64, i8* }** %1903
  %1928 = getelementptr %Value, %Value* %1907, i32 0, i32 10
  store { i64, i8* }* %1927, { i64, i8* }** %1928
  %1929 = load %Value, %Value* %1907
  %1930 = alloca %Value
  store %Value %1929, %Value* %1930
  %1931 = load %Environment, %Environment* %env.ptr
  %1932 = load %nyx_string*, %nyx_string** %1878
  %1933 = load %Value, %Value* %1930
  %1934 = call i64 @env_define(%Environment %1931, %nyx_string* %1932, %Value %1933)
  %1935 = call %Value @make_nil()
  ret %Value %1935
}

define internal %Value @unwrap_return_value(
%Value %return_val.param) {
  %return_val.ptr = alloca %Value
  store %Value %return_val.param, %Value* %return_val.ptr
  %1936 = getelementptr %Value, %Value* %return_val.ptr, i32 0, i32 5
  %1937 = load { i64, i8* }*, { i64, i8* }** %1936
  %1938 = alloca { i64, i8* }*
  store { i64, i8* }* %1937, { i64, i8* }** %1938
  %1939 = load { i64, i8* }*, { i64, i8* }** %1938
  %1940 = call i64 @nyx_array_get({ i64, i8* }* %1939, i64 0)
  %1941 = inttoptr i64 %1940 to %Value*
  %1942 = load %Value, %Value* %1941
  %1943 = alloca %Value
  store %Value %1942, %Value* %1943
  %1944 = load %Value, %Value* %1943
  ret %Value %1944
}

define internal %Value @eval_method_call(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %1945 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1946 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %1945)
  %1947 = alloca { i64, i8* }*
  store { i64, i8* }* %1946, { i64, i8* }** %1947
  %1948 = load { i64, i8* }*, { i64, i8* }** %1947
  %1949 = call i64 @nyx_array_get({ i64, i8* }* %1948, i64 0)
  %1950 = inttoptr i64 %1949 to { i64, i8* }*
  %1951 = alloca { i64, i8* }*
  store { i64, i8* }* %1950, { i64, i8* }** %1951
  %1952 = load { i64, i8* }*, { i64, i8* }** %1947
  %1953 = call i64 @nyx_array_get({ i64, i8* }* %1952, i64 1)
  %1954 = inttoptr i64 %1953 to %nyx_string*
  %1955 = alloca %nyx_string*
  store %nyx_string* %1954, %nyx_string** %1955
  %1956 = load { i64, i8* }*, { i64, i8* }** %1947
  %1957 = call i64 @nyx_array_get({ i64, i8* }* %1956, i64 2)
  %1958 = inttoptr i64 %1957 to { i64, i8* }*
  %1959 = alloca { i64, i8* }*
  store { i64, i8* }* %1958, { i64, i8* }** %1959
  %1960 = load { i64, i8* }*, { i64, i8* }** %1951
  %1961 = load %Environment, %Environment* %env.ptr
  %1962 = call %Value @eval_expr({ i64, i8* }* %1960, %Environment %1961)
  %1963 = alloca %Value
  store %Value %1962, %Value* %1963
  %1964 = getelementptr %Value, %Value* %1963, i32 0, i32 0
  %1965 = load %nyx_string*, %nyx_string** %1964
  %1966 = getelementptr [7 x i8], [7 x i8]* @.str129, i32 0, i32 0
  %1967 = call %nyx_string* @nyx_string_from_cstr(i8* %1966)
  %1968 = call i8* @nyx_string_to_cstr(%nyx_string* %1965)
  %1969 = call i8* @nyx_string_to_cstr(%nyx_string* %1967)
  %1970 = call i32 @strcmp(i8* %1968, i8* %1969)
  %1971 = icmp eq i32 %1970, 0
  br i1 %1971, label %then300, label %else301
then300:
  %1972 = getelementptr %Value, %Value* %1963, i32 0, i32 4
  %1973 = load %nyx_string*, %nyx_string** %1972
  %1974 = alloca %nyx_string*
  store %nyx_string* %1973, %nyx_string** %1974
  %1975 = load %nyx_string*, %nyx_string** %1955
  %1976 = getelementptr [7 x i8], [7 x i8]* @.str130, i32 0, i32 0
  %1977 = call %nyx_string* @nyx_string_from_cstr(i8* %1976)
  %1978 = call i8* @nyx_string_to_cstr(%nyx_string* %1975)
  %1979 = call i8* @nyx_string_to_cstr(%nyx_string* %1977)
  %1980 = call i32 @strcmp(i8* %1978, i8* %1979)
  %1981 = icmp eq i32 %1980, 0
  br i1 %1981, label %then303, label %else304
then303:
  %1982 = load %nyx_string*, %nyx_string** %1974
  %1983 = call i64 @nyx_string_length(%nyx_string* %1982)
  %1984 = call %Value @make_int(i64 %1983)
  ret %Value %1984
else304:
  br label %merge305
merge305:
  %1985 = load %nyx_string*, %nyx_string** %1955
  %1986 = getelementptr [8 x i8], [8 x i8]* @.str131, i32 0, i32 0
  %1987 = call %nyx_string* @nyx_string_from_cstr(i8* %1986)
  %1988 = call i8* @nyx_string_to_cstr(%nyx_string* %1985)
  %1989 = call i8* @nyx_string_to_cstr(%nyx_string* %1987)
  %1990 = call i32 @strcmp(i8* %1988, i8* %1989)
  %1991 = icmp eq i32 %1990, 0
  br i1 %1991, label %then306, label %else307
then306:
  %1992 = load %nyx_string*, %nyx_string** %1974
  %1993 = call %nyx_string* @nyx_string_to_upper(%nyx_string* %1992)
  %1994 = call %Value @make_string(%nyx_string* %1993)
  ret %Value %1994
else307:
  br label %merge308
merge308:
  %1995 = load %nyx_string*, %nyx_string** %1955
  %1996 = getelementptr [8 x i8], [8 x i8]* @.str132, i32 0, i32 0
  %1997 = call %nyx_string* @nyx_string_from_cstr(i8* %1996)
  %1998 = call i8* @nyx_string_to_cstr(%nyx_string* %1995)
  %1999 = call i8* @nyx_string_to_cstr(%nyx_string* %1997)
  %2000 = call i32 @strcmp(i8* %1998, i8* %1999)
  %2001 = icmp eq i32 %2000, 0
  br i1 %2001, label %then309, label %else310
then309:
  %2002 = load %nyx_string*, %nyx_string** %1974
  %2003 = call %nyx_string* @nyx_string_to_lower(%nyx_string* %2002)
  %2004 = call %Value @make_string(%nyx_string* %2003)
  ret %Value %2004
else310:
  br label %merge311
merge311:
  %2005 = load %nyx_string*, %nyx_string** %1955
  %2006 = getelementptr [5 x i8], [5 x i8]* @.str133, i32 0, i32 0
  %2007 = call %nyx_string* @nyx_string_from_cstr(i8* %2006)
  %2008 = call i8* @nyx_string_to_cstr(%nyx_string* %2005)
  %2009 = call i8* @nyx_string_to_cstr(%nyx_string* %2007)
  %2010 = call i32 @strcmp(i8* %2008, i8* %2009)
  %2011 = icmp eq i32 %2010, 0
  br i1 %2011, label %then312, label %else313
then312:
  %2012 = load %nyx_string*, %nyx_string** %1974
  %2013 = call %nyx_string* @nyx_string_trim(%nyx_string* %2012)
  %2014 = call %Value @make_string(%nyx_string* %2013)
  ret %Value %2014
else313:
  br label %merge314
merge314:
  %2015 = load %nyx_string*, %nyx_string** %1955
  %2016 = getelementptr [8 x i8], [8 x i8]* @.str134, i32 0, i32 0
  %2017 = call %nyx_string* @nyx_string_from_cstr(i8* %2016)
  %2018 = call i8* @nyx_string_to_cstr(%nyx_string* %2015)
  %2019 = call i8* @nyx_string_to_cstr(%nyx_string* %2017)
  %2020 = call i32 @strcmp(i8* %2018, i8* %2019)
  %2021 = icmp eq i32 %2020, 0
  br i1 %2021, label %then315, label %else316
then315:
  %2022 = load { i64, i8* }*, { i64, i8* }** %1959
  %2023 = call i64 @nyx_array_get({ i64, i8* }* %2022, i64 0)
  %2024 = load %Environment, %Environment* %env.ptr
  %2025 = call %Value @eval_expr(i64 %2023, %Environment %2024)
  %2026 = alloca %Value
  store %Value %2025, %Value* %2026
  %2027 = load %nyx_string*, %nyx_string** %1974
  %2028 = getelementptr %Value, %Value* %2026, i32 0, i32 4
  %2029 = load %nyx_string*, %nyx_string** %2028
  %2030 = call i64 @nyx_string_index_of(%nyx_string* %2027, %nyx_string* %2029)
  %2031 = call %Value @make_int(i64 %2030)
  ret %Value %2031
else316:
  br label %merge317
merge317:
  %2032 = load %nyx_string*, %nyx_string** %1955
  %2033 = getelementptr [10 x i8], [10 x i8]* @.str135, i32 0, i32 0
  %2034 = call %nyx_string* @nyx_string_from_cstr(i8* %2033)
  %2035 = call i8* @nyx_string_to_cstr(%nyx_string* %2032)
  %2036 = call i8* @nyx_string_to_cstr(%nyx_string* %2034)
  %2037 = call i32 @strcmp(i8* %2035, i8* %2036)
  %2038 = icmp eq i32 %2037, 0
  br i1 %2038, label %then318, label %else319
then318:
  %2039 = load { i64, i8* }*, { i64, i8* }** %1959
  %2040 = call i64 @nyx_array_get({ i64, i8* }* %2039, i64 0)
  %2041 = load %Environment, %Environment* %env.ptr
  %2042 = call %Value @eval_expr(i64 %2040, %Environment %2041)
  %2043 = alloca %Value
  store %Value %2042, %Value* %2043
  %2044 = load { i64, i8* }*, { i64, i8* }** %1959
  %2045 = call i64 @nyx_array_get({ i64, i8* }* %2044, i64 1)
  %2046 = load %Environment, %Environment* %env.ptr
  %2047 = call %Value @eval_expr(i64 %2045, %Environment %2046)
  %2048 = alloca %Value
  store %Value %2047, %Value* %2048
  %2049 = load %nyx_string*, %nyx_string** %1974
  %2050 = getelementptr %Value, %Value* %2043, i32 0, i32 1
  %2051 = load i64, i64* %2050
  %2052 = getelementptr %Value, %Value* %2048, i32 0, i32 1
  %2053 = load i64, i64* %2052
  %2054 = call %nyx_string* @nyx_string_substring(%nyx_string* %2049, i64 %2051, i64 %2053)
  %2055 = call %Value @make_string(%nyx_string* %2054)
  ret %Value %2055
else319:
  br label %merge320
merge320:
  %2056 = load %nyx_string*, %nyx_string** %1955
  %2057 = getelementptr [7 x i8], [7 x i8]* @.str136, i32 0, i32 0
  %2058 = call %nyx_string* @nyx_string_from_cstr(i8* %2057)
  %2059 = call i8* @nyx_string_to_cstr(%nyx_string* %2056)
  %2060 = call i8* @nyx_string_to_cstr(%nyx_string* %2058)
  %2061 = call i32 @strcmp(i8* %2059, i8* %2060)
  %2062 = icmp eq i32 %2061, 0
  br i1 %2062, label %then321, label %else322
then321:
  %2063 = load { i64, i8* }*, { i64, i8* }** %1959
  %2064 = call i64 @nyx_array_get({ i64, i8* }* %2063, i64 0)
  %2065 = load %Environment, %Environment* %env.ptr
  %2066 = call %Value @eval_expr(i64 %2064, %Environment %2065)
  %2067 = alloca %Value
  store %Value %2066, %Value* %2067
  %2068 = load %nyx_string*, %nyx_string** %1974
  %2069 = getelementptr %Value, %Value* %2067, i32 0, i32 1
  %2070 = load i64, i64* %2069
  %2071 = call i8 @nyx_string_char_at(%nyx_string* %2068, i64 %2070)
  %2072 = zext i8 %2071 to i64
  %2073 = trunc i64 %2072 to i8
  %2074 = alloca i8
  store i8 %2073, i8* %2074
  %2075 = load i8, i8* %2074
  %2076 = call %nyx_string* @nyx_string_from_char(i8 %2075)
  %2077 = call %Value @make_string(%nyx_string* %2076)
  ret %Value %2077
else322:
  br label %merge323
merge323:
  %2078 = load %nyx_string*, %nyx_string** %1955
  %2079 = getelementptr [11 x i8], [11 x i8]* @.str137, i32 0, i32 0
  %2080 = call %nyx_string* @nyx_string_from_cstr(i8* %2079)
  %2081 = call i8* @nyx_string_to_cstr(%nyx_string* %2078)
  %2082 = call i8* @nyx_string_to_cstr(%nyx_string* %2080)
  %2083 = call i32 @strcmp(i8* %2081, i8* %2082)
  %2084 = icmp eq i32 %2083, 0
  br i1 %2084, label %then324, label %else325
then324:
  %2085 = load { i64, i8* }*, { i64, i8* }** %1959
  %2086 = call i64 @nyx_array_get({ i64, i8* }* %2085, i64 0)
  %2087 = load %Environment, %Environment* %env.ptr
  %2088 = call %Value @eval_expr(i64 %2086, %Environment %2087)
  %2089 = alloca %Value
  store %Value %2088, %Value* %2089
  %2090 = load %nyx_string*, %nyx_string** %1974
  %2091 = getelementptr %Value, %Value* %2089, i32 0, i32 4
  %2092 = load %nyx_string*, %nyx_string** %2091
  %2093 = call i1 @nyx_string_starts_with(%nyx_string* %2090, %nyx_string* %2092)
  %2094 = call %Value @make_bool(i1 %2093)
  ret %Value %2094
else325:
  br label %merge326
merge326:
  %2095 = load %nyx_string*, %nyx_string** %1955
  %2096 = getelementptr [9 x i8], [9 x i8]* @.str138, i32 0, i32 0
  %2097 = call %nyx_string* @nyx_string_from_cstr(i8* %2096)
  %2098 = call i8* @nyx_string_to_cstr(%nyx_string* %2095)
  %2099 = call i8* @nyx_string_to_cstr(%nyx_string* %2097)
  %2100 = call i32 @strcmp(i8* %2098, i8* %2099)
  %2101 = icmp eq i32 %2100, 0
  br i1 %2101, label %then327, label %else328
then327:
  %2102 = load { i64, i8* }*, { i64, i8* }** %1959
  %2103 = call i64 @nyx_array_get({ i64, i8* }* %2102, i64 0)
  %2104 = load %Environment, %Environment* %env.ptr
  %2105 = call %Value @eval_expr(i64 %2103, %Environment %2104)
  %2106 = alloca %Value
  store %Value %2105, %Value* %2106
  %2107 = load %nyx_string*, %nyx_string** %1974
  %2108 = getelementptr %Value, %Value* %2106, i32 0, i32 4
  %2109 = load %nyx_string*, %nyx_string** %2108
  %2110 = call i1 @nyx_string_ends_with(%nyx_string* %2107, %nyx_string* %2109)
  %2111 = call %Value @make_bool(i1 %2110)
  ret %Value %2111
else328:
  br label %merge329
merge329:
  %2112 = load %nyx_string*, %nyx_string** %1955
  %2113 = getelementptr [8 x i8], [8 x i8]* @.str139, i32 0, i32 0
  %2114 = call %nyx_string* @nyx_string_from_cstr(i8* %2113)
  %2115 = call i8* @nyx_string_to_cstr(%nyx_string* %2112)
  %2116 = call i8* @nyx_string_to_cstr(%nyx_string* %2114)
  %2117 = call i32 @strcmp(i8* %2115, i8* %2116)
  %2118 = icmp eq i32 %2117, 0
  br i1 %2118, label %then330, label %else331
then330:
  %2119 = load { i64, i8* }*, { i64, i8* }** %1959
  %2120 = call i64 @nyx_array_get({ i64, i8* }* %2119, i64 0)
  %2121 = load %Environment, %Environment* %env.ptr
  %2122 = call %Value @eval_expr(i64 %2120, %Environment %2121)
  %2123 = alloca %Value
  store %Value %2122, %Value* %2123
  %2124 = load { i64, i8* }*, { i64, i8* }** %1959
  %2125 = call i64 @nyx_array_get({ i64, i8* }* %2124, i64 1)
  %2126 = load %Environment, %Environment* %env.ptr
  %2127 = call %Value @eval_expr(i64 %2125, %Environment %2126)
  %2128 = alloca %Value
  store %Value %2127, %Value* %2128
  %2129 = load %nyx_string*, %nyx_string** %1974
  %2130 = getelementptr %Value, %Value* %2123, i32 0, i32 4
  %2131 = load %nyx_string*, %nyx_string** %2130
  %2132 = getelementptr %Value, %Value* %2128, i32 0, i32 4
  %2133 = load %nyx_string*, %nyx_string** %2132
  %2134 = call %nyx_string* @nyx_string_replace(%nyx_string* %2129, %nyx_string* %2131, %nyx_string* %2133)
  %2135 = call %Value @make_string(%nyx_string* %2134)
  ret %Value %2135
else331:
  br label %merge332
merge332:
  br label %merge302
else301:
  br label %merge302
merge302:
  %2136 = getelementptr %Value, %Value* %1963, i32 0, i32 0
  %2137 = load %nyx_string*, %nyx_string** %2136
  %2138 = getelementptr [6 x i8], [6 x i8]* @.str140, i32 0, i32 0
  %2139 = call %nyx_string* @nyx_string_from_cstr(i8* %2138)
  %2140 = call i8* @nyx_string_to_cstr(%nyx_string* %2137)
  %2141 = call i8* @nyx_string_to_cstr(%nyx_string* %2139)
  %2142 = call i32 @strcmp(i8* %2140, i8* %2141)
  %2143 = icmp eq i32 %2142, 0
  br i1 %2143, label %then333, label %else334
then333:
  %2144 = getelementptr %Value, %Value* %1963, i32 0, i32 5
  %2145 = load { i64, i8* }*, { i64, i8* }** %2144
  %2146 = alloca { i64, i8* }*
  store { i64, i8* }* %2145, { i64, i8* }** %2146
  %2147 = load %nyx_string*, %nyx_string** %1955
  %2148 = getelementptr [7 x i8], [7 x i8]* @.str141, i32 0, i32 0
  %2149 = call %nyx_string* @nyx_string_from_cstr(i8* %2148)
  %2150 = call i8* @nyx_string_to_cstr(%nyx_string* %2147)
  %2151 = call i8* @nyx_string_to_cstr(%nyx_string* %2149)
  %2152 = call i32 @strcmp(i8* %2150, i8* %2151)
  %2153 = icmp eq i32 %2152, 0
  br i1 %2153, label %then336, label %else337
then336:
  %2154 = load { i64, i8* }*, { i64, i8* }** %2146
  %2155 = call i64 @nyx_array_length({ i64, i8* }* %2154)
  %2156 = call %Value @make_int(i64 %2155)
  ret %Value %2156
else337:
  br label %merge338
merge338:
  %2157 = load %nyx_string*, %nyx_string** %1955
  %2158 = getelementptr [5 x i8], [5 x i8]* @.str142, i32 0, i32 0
  %2159 = call %nyx_string* @nyx_string_from_cstr(i8* %2158)
  %2160 = call i8* @nyx_string_to_cstr(%nyx_string* %2157)
  %2161 = call i8* @nyx_string_to_cstr(%nyx_string* %2159)
  %2162 = call i32 @strcmp(i8* %2160, i8* %2161)
  %2163 = icmp eq i32 %2162, 0
  br i1 %2163, label %then339, label %else340
then339:
  %2164 = load { i64, i8* }*, { i64, i8* }** %1959
  %2165 = call i64 @nyx_array_get({ i64, i8* }* %2164, i64 0)
  %2166 = load %Environment, %Environment* %env.ptr
  %2167 = call %Value @eval_expr(i64 %2165, %Environment %2166)
  %2168 = alloca %Value
  store %Value %2167, %Value* %2168
  %2169 = load { i64, i8* }*, { i64, i8* }** %2146
  %2170 = load %Value, %Value* %2168
  %2171 = getelementptr %Value, %Value* null, i32 1
  %2172 = ptrtoint %Value* %2171 to i64
  %2173 = call i8* @GC_malloc(i64 %2172)
  %2174 = bitcast i8* %2173 to %Value*
  store %Value %2170, %Value* %2174
  %2175 = ptrtoint %Value* %2174 to i64
  call void @nyx_array_push({ i64, i8* }* %2169, i64 %2175)
  %2176 = call %Value @make_nil()
  ret %Value %2176
else340:
  br label %merge341
merge341:
  %2177 = load %nyx_string*, %nyx_string** %1955
  %2178 = getelementptr [4 x i8], [4 x i8]* @.str143, i32 0, i32 0
  %2179 = call %nyx_string* @nyx_string_from_cstr(i8* %2178)
  %2180 = call i8* @nyx_string_to_cstr(%nyx_string* %2177)
  %2181 = call i8* @nyx_string_to_cstr(%nyx_string* %2179)
  %2182 = call i32 @strcmp(i8* %2180, i8* %2181)
  %2183 = icmp eq i32 %2182, 0
  br i1 %2183, label %then342, label %else343
then342:
  %2184 = load { i64, i8* }*, { i64, i8* }** %2146
  %2185 = call i64 @nyx_array_pop({ i64, i8* }* %2184)
  %2186 = call %Value @make_nil()
  ret %Value %2186
else343:
  br label %merge344
merge344:
  br label %merge335
else334:
  br label %merge335
merge335:
  %2187 = getelementptr [23 x i8], [23 x i8]* @.str144, i32 0, i32 0
  %2188 = call %nyx_string* @nyx_string_from_cstr(i8* %2187)
  %2189 = load %nyx_string*, %nyx_string** %1955
  %2190 = call %nyx_string* @nyx_string_concat(%nyx_string* %2188, %nyx_string* %2189)
  %2191 = getelementptr [10 x i8], [10 x i8]* @.str145, i32 0, i32 0
  %2192 = call %nyx_string* @nyx_string_from_cstr(i8* %2191)
  %2193 = call %nyx_string* @nyx_string_concat(%nyx_string* %2190, %nyx_string* %2192)
  %2194 = getelementptr %Value, %Value* %1963, i32 0, i32 0
  %2195 = load %nyx_string*, %nyx_string** %2194
  %2196 = call %nyx_string* @nyx_string_concat(%nyx_string* %2193, %nyx_string* %2195)
  %2197 = call i8* @nyx_string_to_cstr(%nyx_string* %2196)
  call void @nyx_print_string(i8* %2197)
  %2198 = call %Value @make_nil()
  ret %Value %2198
}

define internal %Value @eval_call(
{ i64, i8* }* %node.param, %Environment %env.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %2199 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %2200 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %2199)
  %2201 = alloca { i64, i8* }*
  store { i64, i8* }* %2200, { i64, i8* }** %2201
  %2202 = load { i64, i8* }*, { i64, i8* }** %2201
  %2203 = call i64 @nyx_array_get({ i64, i8* }* %2202, i64 0)
  %2204 = inttoptr i64 %2203 to { i64, i8* }*
  %2205 = alloca { i64, i8* }*
  store { i64, i8* }* %2204, { i64, i8* }** %2205
  %2206 = load { i64, i8* }*, { i64, i8* }** %2201
  %2207 = call i64 @nyx_array_get({ i64, i8* }* %2206, i64 1)
  %2208 = inttoptr i64 %2207 to { i64, i8* }*
  %2209 = alloca { i64, i8* }*
  store { i64, i8* }* %2208, { i64, i8* }** %2209
  %2210 = load { i64, i8* }*, { i64, i8* }** %2205
  %2211 = call i64 @nyx_array_get({ i64, i8* }* %2210, i64 1)
  %2212 = inttoptr i64 %2211 to { i64, i8* }*
  %2213 = alloca { i64, i8* }*
  store { i64, i8* }* %2212, { i64, i8* }** %2213
  %2214 = load { i64, i8* }*, { i64, i8* }** %2213
  %2215 = call i64 @nyx_array_get({ i64, i8* }* %2214, i64 0)
  %2216 = inttoptr i64 %2215 to %nyx_string*
  %2217 = alloca %nyx_string*
  store %nyx_string* %2216, %nyx_string** %2217
  %2218 = load %nyx_string*, %nyx_string** %2217
  %2219 = getelementptr [6 x i8], [6 x i8]* @.str146, i32 0, i32 0
  %2220 = call %nyx_string* @nyx_string_from_cstr(i8* %2219)
  %2221 = call i8* @nyx_string_to_cstr(%nyx_string* %2218)
  %2222 = call i8* @nyx_string_to_cstr(%nyx_string* %2220)
  %2223 = call i32 @strcmp(i8* %2221, i8* %2222)
  %2224 = icmp eq i32 %2223, 0
  br i1 %2224, label %then345, label %else346
then345:
  %2225 = load { i64, i8* }*, { i64, i8* }** %2209
  %2226 = load %Environment, %Environment* %env.ptr
  %2227 = call %Value @eval_builtin_print({ i64, i8* }* %2225, %Environment %2226)
  ret %Value %2227
else346:
  br label %merge347
merge347:
  %2228 = load %nyx_string*, %nyx_string** %2217
  %2229 = getelementptr [10 x i8], [10 x i8]* @.str147, i32 0, i32 0
  %2230 = call %nyx_string* @nyx_string_from_cstr(i8* %2229)
  %2231 = call i8* @nyx_string_to_cstr(%nyx_string* %2228)
  %2232 = call i8* @nyx_string_to_cstr(%nyx_string* %2230)
  %2233 = call i32 @strcmp(i8* %2231, i8* %2232)
  %2234 = icmp eq i32 %2233, 0
  br i1 %2234, label %then348, label %else349
then348:
  %2235 = load { i64, i8* }*, { i64, i8* }** %2209
  %2236 = load %Environment, %Environment* %env.ptr
  %2237 = call %Value @eval_builtin_read_file({ i64, i8* }* %2235, %Environment %2236)
  ret %Value %2237
else349:
  br label %merge350
merge350:
  %2238 = load %nyx_string*, %nyx_string** %2217
  %2239 = getelementptr [10 x i8], [10 x i8]* @.str148, i32 0, i32 0
  %2240 = call %nyx_string* @nyx_string_from_cstr(i8* %2239)
  %2241 = call i8* @nyx_string_to_cstr(%nyx_string* %2238)
  %2242 = call i8* @nyx_string_to_cstr(%nyx_string* %2240)
  %2243 = call i32 @strcmp(i8* %2241, i8* %2242)
  %2244 = icmp eq i32 %2243, 0
  br i1 %2244, label %then351, label %else352
then351:
  %2245 = load { i64, i8* }*, { i64, i8* }** %2209
  %2246 = load %Environment, %Environment* %env.ptr
  %2247 = call %Value @eval_builtin_read_line({ i64, i8* }* %2245, %Environment %2246)
  ret %Value %2247
else352:
  br label %merge353
merge353:
  %2248 = load %nyx_string*, %nyx_string** %2217
  %2249 = getelementptr [17 x i8], [17 x i8]* @.str149, i32 0, i32 0
  %2250 = call %nyx_string* @nyx_string_from_cstr(i8* %2249)
  %2251 = call i8* @nyx_string_to_cstr(%nyx_string* %2248)
  %2252 = call i8* @nyx_string_to_cstr(%nyx_string* %2250)
  %2253 = call i32 @strcmp(i8* %2251, i8* %2252)
  %2254 = icmp eq i32 %2253, 0
  br i1 %2254, label %then354, label %else355
then354:
  %2255 = load { i64, i8* }*, { i64, i8* }** %2209
  %2256 = load %Environment, %Environment* %env.ptr
  %2257 = call %Value @eval_builtin_print_no_newline({ i64, i8* }* %2255, %Environment %2256)
  ret %Value %2257
else355:
  br label %merge356
merge356:
  %2258 = load %Environment, %Environment* %env.ptr
  %2259 = load %nyx_string*, %nyx_string** %2217
  %2260 = call %Value @env_get(%Environment %2258, %nyx_string* %2259)
  %2261 = alloca %Value
  store %Value %2260, %Value* %2261
  %2262 = getelementptr %Value, %Value* %2261, i32 0, i32 0
  %2263 = load %nyx_string*, %nyx_string** %2262
  %2264 = getelementptr [9 x i8], [9 x i8]* @.str150, i32 0, i32 0
  %2265 = call %nyx_string* @nyx_string_from_cstr(i8* %2264)
  %2266 = call i8* @nyx_string_to_cstr(%nyx_string* %2263)
  %2267 = call i8* @nyx_string_to_cstr(%nyx_string* %2265)
  %2268 = call i32 @strcmp(i8* %2266, i8* %2267)
  %2269 = icmp ne i32 %2268, 0
  br i1 %2269, label %then357, label %else358
then357:
  %2270 = getelementptr [8 x i8], [8 x i8]* @.str151, i32 0, i32 0
  %2271 = call %nyx_string* @nyx_string_from_cstr(i8* %2270)
  %2272 = load %nyx_string*, %nyx_string** %2217
  %2273 = call %nyx_string* @nyx_string_concat(%nyx_string* %2271, %nyx_string* %2272)
  %2274 = getelementptr [20 x i8], [20 x i8]* @.str152, i32 0, i32 0
  %2275 = call %nyx_string* @nyx_string_from_cstr(i8* %2274)
  %2276 = call %nyx_string* @nyx_string_concat(%nyx_string* %2273, %nyx_string* %2275)
  %2277 = call i8* @nyx_string_to_cstr(%nyx_string* %2276)
  call void @nyx_print_string(i8* %2277)
  %2278 = call %Value @make_nil()
  ret %Value %2278
else358:
  br label %merge359
merge359:
  %2279 = load %Value, %Value* %2261
  %2280 = call { i64, i8* }* @get_func_params(%Value %2279)
  %2281 = alloca { i64, i8* }*
  store { i64, i8* }* %2280, { i64, i8* }** %2281
  %2282 = load %Value, %Value* %2261
  %2283 = call %nyx_string* @get_func_body_type(%Value %2282)
  %2284 = alloca %nyx_string*
  store %nyx_string* %2283, %nyx_string** %2284
  %2285 = load %Value, %Value* %2261
  %2286 = call { i64, i8* }* @get_func_body_data(%Value %2285)
  %2287 = alloca { i64, i8* }*
  store { i64, i8* }* %2286, { i64, i8* }** %2287
  %2288 = load %nyx_string*, %nyx_string** %2284
  %2289 = load { i64, i8* }*, { i64, i8* }** %2287
  %2290 = call { i64, i8* }* @make_astnode(%nyx_string* %2288, { i64, i8* }* %2289)
  %2291 = alloca { i64, i8* }*
  store { i64, i8* }* %2290, { i64, i8* }** %2291
  %2292 = load %Value, %Value* %2261
  %2293 = call i8* @get_func_env_bindings(%Value %2292)
  %2294 = alloca i8*
  store i8* %2293, i8** %2294
  %2295 = load %Value, %Value* %2261
  %2296 = call { i64, i8* }* @get_func_env_parent(%Value %2295)
  %2297 = alloca { i64, i8* }*
  store { i64, i8* }* %2296, { i64, i8* }** %2297
  %2298 = getelementptr %Environment, %Environment* null, i32 1
  %2299 = ptrtoint %Environment* %2298 to i64
  %2300 = call i8* @GC_malloc(i64 %2299)
  %2301 = bitcast i8* %2300 to %Environment*
  %2302 = load i8*, i8** %2294
  %2303 = getelementptr %Environment, %Environment* %2301, i32 0, i32 0
  store i8* %2302, i8** %2303
  %2304 = load { i64, i8* }*, { i64, i8* }** %2297
  %2305 = getelementptr %Environment, %Environment* %2301, i32 0, i32 1
  store { i64, i8* }* %2304, { i64, i8* }** %2305
  %2306 = load %Environment, %Environment* %2301
  %2307 = alloca %Environment
  store %Environment %2306, %Environment* %2307
  %2308 = load %Environment, %Environment* %2307
  %2309 = call %Environment @make_child_env(%Environment %2308)
  %2310 = alloca %Environment
  store %Environment %2309, %Environment* %2310
  %2311 = alloca i64
  store i64 0, i64* %2311
  br label %while_cond360
while_cond360:
  %2312 = load i64, i64* %2311
  %2313 = load { i64, i8* }*, { i64, i8* }** %2281
  %2314 = call i64 @nyx_array_length({ i64, i8* }* %2313)
  %2315 = icmp slt i64 %2312, %2314
  br i1 %2315, label %while_body361, label %while_end362
while_body361:
  %2316 = load { i64, i8* }*, { i64, i8* }** %2281
  %2317 = load i64, i64* %2311
  %2318 = call i64 @nyx_array_get({ i64, i8* }* %2316, i64 %2317)
  %2319 = inttoptr i64 %2318 to { i64, i8* }*
  %2320 = alloca { i64, i8* }*
  store { i64, i8* }* %2319, { i64, i8* }** %2320
  %2321 = load { i64, i8* }*, { i64, i8* }** %2320
  %2322 = call i64 @nyx_array_get({ i64, i8* }* %2321, i64 0)
  %2323 = inttoptr i64 %2322 to %nyx_string*
  %2324 = alloca %nyx_string*
  store %nyx_string* %2323, %nyx_string** %2324
  %2325 = load { i64, i8* }*, { i64, i8* }** %2209
  %2326 = load i64, i64* %2311
  %2327 = call i64 @nyx_array_get({ i64, i8* }* %2325, i64 %2326)
  %2328 = inttoptr i64 %2327 to { i64, i8* }*
  %2329 = alloca { i64, i8* }*
  store { i64, i8* }* %2328, { i64, i8* }** %2329
  %2330 = load { i64, i8* }*, { i64, i8* }** %2329
  %2331 = load %Environment, %Environment* %env.ptr
  %2332 = call %Value @eval_expr({ i64, i8* }* %2330, %Environment %2331)
  %2333 = alloca %Value
  store %Value %2332, %Value* %2333
  %2334 = load %Environment, %Environment* %2310
  %2335 = load %nyx_string*, %nyx_string** %2324
  %2336 = load %Value, %Value* %2333
  %2337 = call i64 @env_define(%Environment %2334, %nyx_string* %2335, %Value %2336)
  %2338 = load i64, i64* %2311
  %2339 = add i64 %2338, 1
  store i64 %2339, i64* %2311
  br label %while_cond360
while_end362:
  %2340 = load { i64, i8* }*, { i64, i8* }** %2291
  %2341 = load %Environment, %Environment* %2310
  %2342 = call %Value @eval_stmt({ i64, i8* }* %2340, %Environment %2341)
  %2343 = alloca %Value
  store %Value %2342, %Value* %2343
  %2344 = getelementptr %Value, %Value* %2343, i32 0, i32 0
  %2345 = load %nyx_string*, %nyx_string** %2344
  %2346 = getelementptr [7 x i8], [7 x i8]* @.str153, i32 0, i32 0
  %2347 = call %nyx_string* @nyx_string_from_cstr(i8* %2346)
  %2348 = call i8* @nyx_string_to_cstr(%nyx_string* %2345)
  %2349 = call i8* @nyx_string_to_cstr(%nyx_string* %2347)
  %2350 = call i32 @strcmp(i8* %2348, i8* %2349)
  %2351 = icmp eq i32 %2350, 0
  br i1 %2351, label %then363, label %else364
then363:
  %2352 = load %Value, %Value* %2343
  %2353 = call %Value @unwrap_return_value(%Value %2352)
  ret %Value %2353
else364:
  br label %merge365
merge365:
  %2354 = load %Value, %Value* %2343
  ret %Value %2354
}

define internal %Value @eval_builtin_print(
{ i64, i8* }* %args.param, %Environment %env.param) {
  %args.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %args.param, { i64, i8* }** %args.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %2355 = alloca i64
  store i64 0, i64* %2355
  br label %while_cond366
while_cond366:
  %2356 = load i64, i64* %2355
  %2357 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %2358 = call i64 @nyx_array_length({ i64, i8* }* %2357)
  %2359 = icmp slt i64 %2356, %2358
  br i1 %2359, label %while_body367, label %while_end368
while_body367:
  %2360 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %2361 = load i64, i64* %2355
  %2362 = call i64 @nyx_array_get({ i64, i8* }* %2360, i64 %2361)
  %2363 = inttoptr i64 %2362 to { i64, i8* }*
  %2364 = alloca { i64, i8* }*
  store { i64, i8* }* %2363, { i64, i8* }** %2364
  %2365 = load { i64, i8* }*, { i64, i8* }** %2364
  %2366 = load %Environment, %Environment* %env.ptr
  %2367 = call %Value @eval_expr({ i64, i8* }* %2365, %Environment %2366)
  %2368 = alloca %Value
  store %Value %2367, %Value* %2368
  %2369 = load %Value, %Value* %2368
  %2370 = call i64 @print_value(%Value %2369)
  %2371 = load i64, i64* %2355
  %2372 = add i64 %2371, 1
  store i64 %2372, i64* %2355
  br label %while_cond366
while_end368:
  %2373 = call %Value @make_nil()
  ret %Value %2373
}

define internal %Value @eval_builtin_read_line(
{ i64, i8* }* %args.param, %Environment %env.param) {
  %args.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %args.param, { i64, i8* }** %args.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %2374 = call %nyx_string* @nyx_read_line()
  %2375 = alloca %nyx_string*
  store %nyx_string* %2374, %nyx_string** %2375
  %2376 = load %nyx_string*, %nyx_string** %2375
  %2377 = call %Value @make_string(%nyx_string* %2376)
  ret %Value %2377
}

define internal %Value @eval_builtin_print_no_newline(
{ i64, i8* }* %args.param, %Environment %env.param) {
  %args.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %args.param, { i64, i8* }** %args.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %2378 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %2379 = call i64 @nyx_array_length({ i64, i8* }* %2378)
  %2380 = icmp sgt i64 %2379, 0
  br i1 %2380, label %then369, label %else370
then369:
  %2381 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %2382 = call i64 @nyx_array_get({ i64, i8* }* %2381, i64 0)
  %2383 = inttoptr i64 %2382 to { i64, i8* }*
  %2384 = alloca { i64, i8* }*
  store { i64, i8* }* %2383, { i64, i8* }** %2384
  %2385 = load { i64, i8* }*, { i64, i8* }** %2384
  %2386 = load %Environment, %Environment* %env.ptr
  %2387 = call %Value @eval_expr({ i64, i8* }* %2385, %Environment %2386)
  %2388 = alloca %Value
  store %Value %2387, %Value* %2388
  %2389 = load %Value, %Value* %2388
  %2390 = call %nyx_string* @value_to_string(%Value %2389)
  call void @nyx_print_no_newline(%nyx_string* %2390)
  br label %merge371
else370:
  br label %merge371
merge371:
  %2391 = call %Value @make_nil()
  ret %Value %2391
}

define internal %Value @eval_builtin_read_file(
{ i64, i8* }* %args.param, %Environment %env.param) {
  %args.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %args.param, { i64, i8* }** %args.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %2392 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %2393 = call i64 @nyx_array_length({ i64, i8* }* %2392)
  %2394 = icmp sgt i64 %2393, 0
  br i1 %2394, label %then372, label %else373
then372:
  %2395 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %2396 = call i64 @nyx_array_get({ i64, i8* }* %2395, i64 0)
  %2397 = load %Environment, %Environment* %env.ptr
  %2398 = call %Value @eval_expr(i64 %2396, %Environment %2397)
  %2399 = alloca %Value
  store %Value %2398, %Value* %2399
  %2400 = load %Value, %Value* %2399
  %2401 = call %nyx_string* @value_to_string(%Value %2400)
  %2402 = alloca %nyx_string*
  store %nyx_string* %2401, %nyx_string** %2402
  %2403 = load %nyx_string*, %nyx_string** %2402
  %2404 = call i8* @nyx_string_to_cstr(%nyx_string* %2403)
  %2405 = call %nyx_string* @nyx_read_file(i8* %2404)
  %2406 = alloca %nyx_string*
  store %nyx_string* %2405, %nyx_string** %2406
  %2407 = load %nyx_string*, %nyx_string** %2406
  %2408 = call %Value @make_string(%nyx_string* %2407)
  ret %Value %2408
else373:
  br label %merge374
merge374:
  %2409 = call %Value @make_nil()
  ret %Value %2409
}

define %Environment @repl_make_env(
) {
  %2410 = call %Environment @make_env()
  ret %Environment %2410
}

define %nyx_string* @repl_eval(
{ i64, i8* }* %ast.param, %Environment %env.param) {
  %ast.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %ast.param, { i64, i8* }** %ast.ptr
  %env.ptr = alloca %Environment
  store %Environment %env.param, %Environment* %env.ptr
  %2411 = load { i64, i8* }*, { i64, i8* }** %ast.ptr
  %2412 = call i64 @nyx_array_get({ i64, i8* }* %2411, i64 1)
  %2413 = inttoptr i64 %2412 to { i64, i8* }*
  %2414 = alloca { i64, i8* }*
  store { i64, i8* }* %2413, { i64, i8* }** %2414
  %2415 = load { i64, i8* }*, { i64, i8* }** %2414
  %2416 = call i64 @nyx_array_get({ i64, i8* }* %2415, i64 0)
  %2417 = inttoptr i64 %2416 to { i64, i8* }*
  %2418 = alloca { i64, i8* }*
  store { i64, i8* }* %2417, { i64, i8* }** %2418
  %2419 = getelementptr [1 x i8], [1 x i8]* @.str154, i32 0, i32 0
  %2420 = call %nyx_string* @nyx_string_from_cstr(i8* %2419)
  %2421 = alloca %nyx_string*
  store %nyx_string* %2420, %nyx_string** %2421
  %2422 = alloca i64
  store i64 0, i64* %2422
  br label %while_cond375
while_cond375:
  %2423 = load i64, i64* %2422
  %2424 = load { i64, i8* }*, { i64, i8* }** %2418
  %2425 = call i64 @nyx_array_length({ i64, i8* }* %2424)
  %2426 = icmp slt i64 %2423, %2425
  br i1 %2426, label %while_body376, label %while_end377
while_body376:
  %2427 = load { i64, i8* }*, { i64, i8* }** %2418
  %2428 = load i64, i64* %2422
  %2429 = call i64 @nyx_array_get({ i64, i8* }* %2427, i64 %2428)
  %2430 = inttoptr i64 %2429 to { i64, i8* }*
  %2431 = alloca { i64, i8* }*
  store { i64, i8* }* %2430, { i64, i8* }** %2431
  %2432 = load { i64, i8* }*, { i64, i8* }** %2431
  %2433 = load %Environment, %Environment* %env.ptr
  %2434 = call %Value @eval_stmt({ i64, i8* }* %2432, %Environment %2433)
  %2435 = alloca %Value
  store %Value %2434, %Value* %2435
  %2436 = getelementptr %Value, %Value* %2435, i32 0, i32 0
  %2437 = load %nyx_string*, %nyx_string** %2436
  %2438 = getelementptr [4 x i8], [4 x i8]* @.str155, i32 0, i32 0
  %2439 = call %nyx_string* @nyx_string_from_cstr(i8* %2438)
  %2440 = call i8* @nyx_string_to_cstr(%nyx_string* %2437)
  %2441 = call i8* @nyx_string_to_cstr(%nyx_string* %2439)
  %2442 = call i32 @strcmp(i8* %2440, i8* %2441)
  %2443 = icmp ne i32 %2442, 0
  %2444 = getelementptr %Value, %Value* %2435, i32 0, i32 0
  %2445 = load %nyx_string*, %nyx_string** %2444
  %2446 = getelementptr [7 x i8], [7 x i8]* @.str156, i32 0, i32 0
  %2447 = call %nyx_string* @nyx_string_from_cstr(i8* %2446)
  %2448 = call i8* @nyx_string_to_cstr(%nyx_string* %2445)
  %2449 = call i8* @nyx_string_to_cstr(%nyx_string* %2447)
  %2450 = call i32 @strcmp(i8* %2448, i8* %2449)
  %2451 = icmp ne i32 %2450, 0
  %2452 = and i1 %2443, %2451
  br i1 %2452, label %then378, label %else379
then378:
  %2453 = getelementptr [4 x i8], [4 x i8]* @.str157, i32 0, i32 0
  %2454 = call %nyx_string* @nyx_string_from_cstr(i8* %2453)
  %2455 = load %Value, %Value* %2435
  %2456 = call %nyx_string* @value_to_string(%Value %2455)
  %2457 = call %nyx_string* @nyx_string_concat(%nyx_string* %2454, %nyx_string* %2456)
  store %nyx_string* %2457, %nyx_string** %2421
  br label %merge380
else379:
  br label %merge380
merge380:
  %2458 = load i64, i64* %2422
  %2459 = add i64 %2458, 1
  store i64 %2459, i64* %2422
  br label %while_cond375
while_end377:
  %2460 = load %nyx_string*, %nyx_string** %2421
  ret %nyx_string* %2460
}

define i8* @repl_make_map(
) {
  %2461 = call i8* @nyx_map_new(i32 0)
  ret i8* %2461
}

define %nyx_string* @repl_eval_with_map(
{ i64, i8* }* %ast.param, i8* %env_map.param) {
  %ast.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %ast.param, { i64, i8* }** %ast.ptr
  %env_map.ptr = alloca i8*
  store i8* %env_map.param, i8** %env_map.ptr
  %2462 = getelementptr %Environment, %Environment* null, i32 1
  %2463 = ptrtoint %Environment* %2462 to i64
  %2464 = call i8* @GC_malloc(i64 %2463)
  %2465 = bitcast i8* %2464 to %Environment*
  %2466 = load i8*, i8** %env_map.ptr
  %2467 = getelementptr %Environment, %Environment* %2465, i32 0, i32 0
  store i8* %2466, i8** %2467
  %2468 = call { i64, i8* }* @nyx_array_new_ptr()
  %2469 = getelementptr %Environment, %Environment* %2465, i32 0, i32 1
  store { i64, i8* }* %2468, { i64, i8* }** %2469
  %2470 = load %Environment, %Environment* %2465
  %2471 = alloca %Environment
  store %Environment %2470, %Environment* %2471
  %2472 = load { i64, i8* }*, { i64, i8* }** %ast.ptr
  %2473 = load %Environment, %Environment* %2471
  %2474 = call %nyx_string* @repl_eval({ i64, i8* }* %2472, %Environment %2473)
  ret %nyx_string* %2474
}

define %Value @interpret(
{ i64, i8* }* %ast.param) {
  %ast.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %ast.param, { i64, i8* }** %ast.ptr
  %2475 = call %Environment @make_env()
  %2476 = alloca %Environment
  store %Environment %2475, %Environment* %2476
  %2477 = load { i64, i8* }*, { i64, i8* }** %ast.ptr
  %2478 = call %nyx_string* @astnode_get_type({ i64, i8* }* %2477)
  %2479 = alloca %nyx_string*
  store %nyx_string* %2478, %nyx_string** %2479
  %2480 = load %nyx_string*, %nyx_string** %2479
  %2481 = getelementptr [6 x i8], [6 x i8]* @.str158, i32 0, i32 0
  %2482 = call %nyx_string* @nyx_string_from_cstr(i8* %2481)
  %2483 = call i8* @nyx_string_to_cstr(%nyx_string* %2480)
  %2484 = call i8* @nyx_string_to_cstr(%nyx_string* %2482)
  %2485 = call i32 @strcmp(i8* %2483, i8* %2484)
  %2486 = icmp eq i32 %2485, 0
  br i1 %2486, label %then381, label %else382
then381:
  %2487 = load { i64, i8* }*, { i64, i8* }** %ast.ptr
  %2488 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %2487)
  %2489 = alloca { i64, i8* }*
  store { i64, i8* }* %2488, { i64, i8* }** %2489
  %2490 = load { i64, i8* }*, { i64, i8* }** %2489
  %2491 = call i64 @nyx_array_get({ i64, i8* }* %2490, i64 0)
  %2492 = inttoptr i64 %2491 to { i64, i8* }*
  %2493 = alloca { i64, i8* }*
  store { i64, i8* }* %2492, { i64, i8* }** %2493
  %2494 = alloca i64
  store i64 0, i64* %2494
  br label %while_cond384
while_cond384:
  %2495 = load i64, i64* %2494
  %2496 = load { i64, i8* }*, { i64, i8* }** %2493
  %2497 = call i64 @nyx_array_length({ i64, i8* }* %2496)
  %2498 = icmp slt i64 %2495, %2497
  br i1 %2498, label %while_body385, label %while_end386
while_body385:
  %2499 = load { i64, i8* }*, { i64, i8* }** %2493
  %2500 = load i64, i64* %2494
  %2501 = call i64 @nyx_array_get({ i64, i8* }* %2499, i64 %2500)
  %2502 = inttoptr i64 %2501 to { i64, i8* }*
  %2503 = alloca { i64, i8* }*
  store { i64, i8* }* %2502, { i64, i8* }** %2503
  %2504 = load { i64, i8* }*, { i64, i8* }** %2503
  %2505 = load %Environment, %Environment* %2476
  %2506 = call %Value @eval_stmt({ i64, i8* }* %2504, %Environment %2505)
  %2507 = load i64, i64* %2494
  %2508 = add i64 %2507, 1
  store i64 %2508, i64* %2494
  br label %while_cond384
while_end386:
  %2509 = getelementptr %Environment, %Environment* %2476, i32 0, i32 0
  %2510 = load i8*, i8** %2509
  %2511 = alloca i8*
  store i8* %2510, i8** %2511
  %2512 = load i8*, i8** %2511
  %2513 = getelementptr [5 x i8], [5 x i8]* @.str159, i32 0, i32 0
  %2514 = call %nyx_string* @nyx_string_from_cstr(i8* %2513)
  %2515 = call i8* @nyx_string_to_cstr(%nyx_string* %2514)
  %2516 = call i1 @nyx_map_contains_str(i8* %2512, i8* %2515)
  br i1 %2516, label %then387, label %else388
then387:
  %2517 = load %Environment, %Environment* %2476
  %2518 = getelementptr [5 x i8], [5 x i8]* @.str160, i32 0, i32 0
  %2519 = call %nyx_string* @nyx_string_from_cstr(i8* %2518)
  %2520 = call %Value @env_get(%Environment %2517, %nyx_string* %2519)
  %2521 = alloca %Value
  store %Value %2520, %Value* %2521
  %2522 = getelementptr %Value, %Value* %2521, i32 0, i32 0
  %2523 = load %nyx_string*, %nyx_string** %2522
  %2524 = getelementptr [9 x i8], [9 x i8]* @.str161, i32 0, i32 0
  %2525 = call %nyx_string* @nyx_string_from_cstr(i8* %2524)
  %2526 = call i8* @nyx_string_to_cstr(%nyx_string* %2523)
  %2527 = call i8* @nyx_string_to_cstr(%nyx_string* %2525)
  %2528 = call i32 @strcmp(i8* %2526, i8* %2527)
  %2529 = icmp eq i32 %2528, 0
  br i1 %2529, label %then390, label %else391
then390:
  %2530 = load %Value, %Value* %2521
  %2531 = call { i64, i8* }* @get_func_params(%Value %2530)
  %2532 = alloca { i64, i8* }*
  store { i64, i8* }* %2531, { i64, i8* }** %2532
  %2533 = load %Value, %Value* %2521
  %2534 = call %nyx_string* @get_func_body_type(%Value %2533)
  %2535 = alloca %nyx_string*
  store %nyx_string* %2534, %nyx_string** %2535
  %2536 = load %Value, %Value* %2521
  %2537 = call { i64, i8* }* @get_func_body_data(%Value %2536)
  %2538 = alloca { i64, i8* }*
  store { i64, i8* }* %2537, { i64, i8* }** %2538
  %2539 = load %nyx_string*, %nyx_string** %2535
  %2540 = load { i64, i8* }*, { i64, i8* }** %2538
  %2541 = call { i64, i8* }* @make_astnode(%nyx_string* %2539, { i64, i8* }* %2540)
  %2542 = alloca { i64, i8* }*
  store { i64, i8* }* %2541, { i64, i8* }** %2542
  %2543 = load %Value, %Value* %2521
  %2544 = call i8* @get_func_env_bindings(%Value %2543)
  %2545 = alloca i8*
  store i8* %2544, i8** %2545
  %2546 = load %Value, %Value* %2521
  %2547 = call { i64, i8* }* @get_func_env_parent(%Value %2546)
  %2548 = alloca { i64, i8* }*
  store { i64, i8* }* %2547, { i64, i8* }** %2548
  %2549 = getelementptr %Environment, %Environment* null, i32 1
  %2550 = ptrtoint %Environment* %2549 to i64
  %2551 = call i8* @GC_malloc(i64 %2550)
  %2552 = bitcast i8* %2551 to %Environment*
  %2553 = load i8*, i8** %2545
  %2554 = getelementptr %Environment, %Environment* %2552, i32 0, i32 0
  store i8* %2553, i8** %2554
  %2555 = load { i64, i8* }*, { i64, i8* }** %2548
  %2556 = getelementptr %Environment, %Environment* %2552, i32 0, i32 1
  store { i64, i8* }* %2555, { i64, i8* }** %2556
  %2557 = load %Environment, %Environment* %2552
  %2558 = alloca %Environment
  store %Environment %2557, %Environment* %2558
  %2559 = load %Environment, %Environment* %2558
  %2560 = call %Environment @make_child_env(%Environment %2559)
  %2561 = alloca %Environment
  store %Environment %2560, %Environment* %2561
  %2562 = load { i64, i8* }*, { i64, i8* }** %2542
  %2563 = load %Environment, %Environment* %2561
  %2564 = call %Value @eval_stmt({ i64, i8* }* %2562, %Environment %2563)
  %2565 = alloca %Value
  store %Value %2564, %Value* %2565
  %2566 = load %Value, %Value* %2565
  ret %Value %2566
else391:
  br label %merge392
merge392:
  br label %merge389
else388:
  br label %merge389
merge389:
  br label %merge383
else382:
  br label %merge383
merge383:
  %2567 = call %Value @make_nil()
  ret %Value %2567
}


attributes #0 = { returns_twice }
