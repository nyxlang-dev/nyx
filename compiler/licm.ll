source_filename = "script.nx"
target triple = "x86_64-pc-linux-gnu"

@.str0 = private unnamed_addr constant [1 x i8] c"\00"
@.str0.c = internal global %nyx_string* null
@.str1 = private unnamed_addr constant [9 x i8] c"function\00"
@.str1.c = internal global %nyx_string* null
@.str2 = private unnamed_addr constant [9 x i8] c"async_fn\00"
@.str2.c = internal global %nyx_string* null
@.str3 = private unnamed_addr constant [7 x i8] c"lambda\00"
@.str3.c = internal global %nyx_string* null
@.str4 = private unnamed_addr constant [8 x i8] c"closure\00"
@.str4.c = internal global %nyx_string* null
@.str5 = private unnamed_addr constant [7 x i8] c"string\00"
@.str5.c = internal global %nyx_string* null
@.str6 = private unnamed_addr constant [6 x i8] c"match\00"
@.str6.c = internal global %nyx_string* null
@.str7 = private unnamed_addr constant [6 x i8] c"const\00"
@.str7.c = internal global %nyx_string* null
@.str8 = private unnamed_addr constant [6 x i8] c"binop\00"
@.str8.c = internal global %nyx_string* null
@.str9 = private unnamed_addr constant [5 x i8] c"unop\00"
@.str9.c = internal global %nyx_string* null
@.str10 = private unnamed_addr constant [5 x i8] c"call\00"
@.str10.c = internal global %nyx_string* null
@.str11 = private unnamed_addr constant [12 x i8] c"method_call\00"
@.str11.c = internal global %nyx_string* null
@.str12 = private unnamed_addr constant [6 x i8] c"index\00"
@.str12.c = internal global %nyx_string* null
@.str13 = private unnamed_addr constant [13 x i8] c"field_access\00"
@.str13.c = internal global %nyx_string* null
@.str14 = private unnamed_addr constant [6 x i8] c"array\00"
@.str14.c = internal global %nyx_string* null
@.str15 = private unnamed_addr constant [12 x i8] c"map_literal\00"
@.str15.c = internal global %nyx_string* null
@.str16 = private unnamed_addr constant [3 x i8] c"if\00"
@.str16.c = internal global %nyx_string* null
@.str17 = private unnamed_addr constant [6 x i8] c"while\00"
@.str17.c = internal global %nyx_string* null
@.str18 = private unnamed_addr constant [4 x i8] c"for\00"
@.str18.c = internal global %nyx_string* null
@.str19 = private unnamed_addr constant [10 x i8] c"while_let\00"
@.str19.c = internal global %nyx_string* null
@.str20 = private unnamed_addr constant [6 x i8] c"block\00"
@.str20.c = internal global %nyx_string* null
@.str21 = private unnamed_addr constant [4 x i8] c"let\00"
@.str21.c = internal global %nyx_string* null
@.str22 = private unnamed_addr constant [22 x i8] c"let_destructure_tuple\00"
@.str22.c = internal global %nyx_string* null
@.str23 = private unnamed_addr constant [7 x i8] c"assign\00"
@.str23.c = internal global %nyx_string* null
@.str24 = private unnamed_addr constant [13 x i8] c"index_assign\00"
@.str24.c = internal global %nyx_string* null
@.str25 = private unnamed_addr constant [13 x i8] c"field_assign\00"
@.str25.c = internal global %nyx_string* null
@.str26 = private unnamed_addr constant [13 x i8] c"deref_assign\00"
@.str26.c = internal global %nyx_string* null
@.str27 = private unnamed_addr constant [7 x i8] c"return\00"
@.str27.c = internal global %nyx_string* null
@.str28 = private unnamed_addr constant [12 x i8] c"struct_init\00"
@.str28.c = internal global %nyx_string* null
@.str29 = private unnamed_addr constant [7 x i8] c"try_op\00"
@.str29.c = internal global %nyx_string* null
@.str30 = private unnamed_addr constant [5 x i8] c"cast\00"
@.str30.c = internal global %nyx_string* null
@.str31 = private unnamed_addr constant [6 x i8] c"range\00"
@.str31.c = internal global %nyx_string* null
@.str32 = private unnamed_addr constant [9 x i8] c"function\00"
@.str32.c = internal global %nyx_string* null
@.str33 = private unnamed_addr constant [9 x i8] c"async_fn\00"
@.str33.c = internal global %nyx_string* null
@.str34 = private unnamed_addr constant [7 x i8] c"lambda\00"
@.str34.c = internal global %nyx_string* null
@.str35 = private unnamed_addr constant [8 x i8] c"closure\00"
@.str35.c = internal global %nyx_string* null
@.str36 = private unnamed_addr constant [6 x i8] c"const\00"
@.str36.c = internal global %nyx_string* null
@.str37 = private unnamed_addr constant [11 x i8] c"identifier\00"
@.str37.c = internal global %nyx_string* null
@.str38 = private unnamed_addr constant [11 x i8] c"identifier\00"
@.str38.c = internal global %nyx_string* null
@.str39 = private unnamed_addr constant [11 x i8] c"identifier\00"
@.str39.c = internal global %nyx_string* null
@.str40 = private unnamed_addr constant [6 x i8] c"index\00"
@.str40.c = internal global %nyx_string* null
@.str41 = private unnamed_addr constant [7 x i8] c"string\00"
@.str41.c = internal global %nyx_string* null
@.str42 = private unnamed_addr constant [1 x i8] c"\00"
@.str42.c = internal global %nyx_string* null
@.str43 = private unnamed_addr constant [11 x i8] c"identifier\00"
@.str43.c = internal global %nyx_string* null
@.str44 = private unnamed_addr constant [6 x i8] c"match\00"
@.str44.c = internal global %nyx_string* null
@.str45 = private unnamed_addr constant [10 x i8] c"match_arm\00"
@.str45.c = internal global %nyx_string* null
@.str46 = private unnamed_addr constant [6 x i8] c"match\00"
@.str46.c = internal global %nyx_string* null
@.str47 = private unnamed_addr constant [6 x i8] c"binop\00"
@.str47.c = internal global %nyx_string* null
@.str48 = private unnamed_addr constant [5 x i8] c"unop\00"
@.str48.c = internal global %nyx_string* null
@.str49 = private unnamed_addr constant [5 x i8] c"call\00"
@.str49.c = internal global %nyx_string* null
@.str50 = private unnamed_addr constant [12 x i8] c"method_call\00"
@.str50.c = internal global %nyx_string* null
@.str51 = private unnamed_addr constant [6 x i8] c"index\00"
@.str51.c = internal global %nyx_string* null
@.str52 = private unnamed_addr constant [13 x i8] c"field_access\00"
@.str52.c = internal global %nyx_string* null
@.str53 = private unnamed_addr constant [6 x i8] c"array\00"
@.str53.c = internal global %nyx_string* null
@.str54 = private unnamed_addr constant [12 x i8] c"map_literal\00"
@.str54.c = internal global %nyx_string* null
@.str55 = private unnamed_addr constant [3 x i8] c"if\00"
@.str55.c = internal global %nyx_string* null
@.str56 = private unnamed_addr constant [6 x i8] c"while\00"
@.str56.c = internal global %nyx_string* null
@.str57 = private unnamed_addr constant [4 x i8] c"for\00"
@.str57.c = internal global %nyx_string* null
@.str58 = private unnamed_addr constant [10 x i8] c"while_let\00"
@.str58.c = internal global %nyx_string* null
@.str59 = private unnamed_addr constant [6 x i8] c"block\00"
@.str59.c = internal global %nyx_string* null
@.str60 = private unnamed_addr constant [4 x i8] c"let\00"
@.str60.c = internal global %nyx_string* null
@.str61 = private unnamed_addr constant [22 x i8] c"let_destructure_tuple\00"
@.str61.c = internal global %nyx_string* null
@.str62 = private unnamed_addr constant [7 x i8] c"assign\00"
@.str62.c = internal global %nyx_string* null
@.str63 = private unnamed_addr constant [13 x i8] c"index_assign\00"
@.str63.c = internal global %nyx_string* null
@.str64 = private unnamed_addr constant [13 x i8] c"field_assign\00"
@.str64.c = internal global %nyx_string* null
@.str65 = private unnamed_addr constant [13 x i8] c"deref_assign\00"
@.str65.c = internal global %nyx_string* null
@.str66 = private unnamed_addr constant [7 x i8] c"return\00"
@.str66.c = internal global %nyx_string* null
@.str67 = private unnamed_addr constant [12 x i8] c"struct_init\00"
@.str67.c = internal global %nyx_string* null
@.str68 = private unnamed_addr constant [7 x i8] c"try_op\00"
@.str68.c = internal global %nyx_string* null
@.str69 = private unnamed_addr constant [5 x i8] c"cast\00"
@.str69.c = internal global %nyx_string* null
@.str70 = private unnamed_addr constant [6 x i8] c"range\00"
@.str70.c = internal global %nyx_string* null
@.str71 = private unnamed_addr constant [4 x i8] c"for\00"
@.str71.c = internal global %nyx_string* null
@.str72 = private unnamed_addr constant [10 x i8] c"while_let\00"
@.str72.c = internal global %nyx_string* null
@.str73 = private unnamed_addr constant [6 x i8] c"while\00"
@.str73.c = internal global %nyx_string* null
@.str74 = private unnamed_addr constant [12 x i8] c"__licm_str_\00"
@.str74.c = internal global %nyx_string* null
@.str75 = private unnamed_addr constant [7 x i8] c"string\00"
@.str75.c = internal global %nyx_string* null
@.str76 = private unnamed_addr constant [4 x i8] c"let\00"
@.str76.c = internal global %nyx_string* null
@.str77 = private unnamed_addr constant [7 x i8] c"String\00"
@.str77.c = internal global %nyx_string* null
@.str78 = private unnamed_addr constant [9 x i8] c"function\00"
@.str78.c = internal global %nyx_string* null
@.str79 = private unnamed_addr constant [9 x i8] c"async_fn\00"
@.str79.c = internal global %nyx_string* null
@.str80 = private unnamed_addr constant [6 x i8] c"block\00"
@.str80.c = internal global %nyx_string* null
@.str81 = private unnamed_addr constant [6 x i8] c"block\00"
@.str81.c = internal global %nyx_string* null
@.str82 = private unnamed_addr constant [6 x i8] c"block\00"
@.str82.c = internal global %nyx_string* null
@.str83 = private unnamed_addr constant [6 x i8] c"block\00"
@.str83.c = internal global %nyx_string* null
@.str84 = private unnamed_addr constant [3 x i8] c"if\00"
@.str84.c = internal global %nyx_string* null
@.str85 = private unnamed_addr constant [3 x i8] c"if\00"
@.str85.c = internal global %nyx_string* null
@.str86 = private unnamed_addr constant [5 x i8] c"impl\00"
@.str86.c = internal global %nyx_string* null
@.str87 = private unnamed_addr constant [11 x i8] c"impl_trait\00"
@.str87.c = internal global %nyx_string* null
@.str88 = private unnamed_addr constant [9 x i8] c"NYX_LICM\00"
@.str88.c = internal global %nyx_string* null
@.str89 = private unnamed_addr constant [4 x i8] c"off\00"
@.str89.c = internal global %nyx_string* null
@.str90 = private unnamed_addr constant [6 x i8] c"block\00"
@.str90.c = internal global %nyx_string* null
@.str91 = private unnamed_addr constant [19 x i8] c"identifier_pattern\00"
@.str91.c = internal global %nyx_string* null
@.str92 = private unnamed_addr constant [14 x i8] c"match_pattern\00"
@.str92.c = internal global %nyx_string* null
@.str93 = private unnamed_addr constant [15 x i8] c"struct_pattern\00"
@.str93.c = internal global %nyx_string* null
@.str94 = private unnamed_addr constant [21 x i8] c"nested_match_pattern\00"
@.str94.c = internal global %nyx_string* null
@.str95 = private unnamed_addr constant [11 x i8] c"or_pattern\00"
@.str95.c = internal global %nyx_string* null
@.str96 = private unnamed_addr constant [9 x i8] c"function\00"
@.str96.c = internal global %nyx_string* null
@.str97 = private unnamed_addr constant [9 x i8] c"async_fn\00"
@.str97.c = internal global %nyx_string* null
@.str98 = private unnamed_addr constant [7 x i8] c"lambda\00"
@.str98.c = internal global %nyx_string* null
@.str99 = private unnamed_addr constant [8 x i8] c"closure\00"
@.str99.c = internal global %nyx_string* null
@.str100 = private unnamed_addr constant [4 x i8] c"let\00"
@.str100.c = internal global %nyx_string* null
@.str101 = private unnamed_addr constant [7 x i8] c"assign\00"
@.str101.c = internal global %nyx_string* null
@.str102 = private unnamed_addr constant [22 x i8] c"let_destructure_tuple\00"
@.str102.c = internal global %nyx_string* null
@.str103 = private unnamed_addr constant [4 x i8] c"for\00"
@.str103.c = internal global %nyx_string* null
@.str104 = private unnamed_addr constant [10 x i8] c"while_let\00"
@.str104.c = internal global %nyx_string* null
@.str105 = private unnamed_addr constant [6 x i8] c"match\00"
@.str105.c = internal global %nyx_string* null
@.str106 = private unnamed_addr constant [5 x i8] c"push\00"
@.str106.c = internal global %nyx_string* null
@.str107 = private unnamed_addr constant [4 x i8] c"pop\00"
@.str107.c = internal global %nyx_string* null
@.str108 = private unnamed_addr constant [4 x i8] c"set\00"
@.str108.c = internal global %nyx_string* null
@.str109 = private unnamed_addr constant [7 x i8] c"insert\00"
@.str109.c = internal global %nyx_string* null
@.str110 = private unnamed_addr constant [7 x i8] c"remove\00"
@.str110.c = internal global %nyx_string* null
@.str111 = private unnamed_addr constant [6 x i8] c"clear\00"
@.str111.c = internal global %nyx_string* null
@.str112 = private unnamed_addr constant [5 x i8] c"sort\00"
@.str112.c = internal global %nyx_string* null
@.str113 = private unnamed_addr constant [8 x i8] c"sort_by\00"
@.str113.c = internal global %nyx_string* null
@.str114 = private unnamed_addr constant [8 x i8] c"reverse\00"
@.str114.c = internal global %nyx_string* null
@.str115 = private unnamed_addr constant [8 x i8] c"unshift\00"
@.str115.c = internal global %nyx_string* null
@.str116 = private unnamed_addr constant [6 x i8] c"shift\00"
@.str116.c = internal global %nyx_string* null
@.str117 = private unnamed_addr constant [7 x i8] c"extend\00"
@.str117.c = internal global %nyx_string* null
@.str118 = private unnamed_addr constant [9 x i8] c"truncate\00"
@.str118.c = internal global %nyx_string* null
@.str119 = private unnamed_addr constant [5 x i8] c"swap\00"
@.str119.c = internal global %nyx_string* null
@.str120 = private unnamed_addr constant [7 x i8] c"retain\00"
@.str120.c = internal global %nyx_string* null
@.str121 = private unnamed_addr constant [6 x i8] c"dedup\00"
@.str121.c = internal global %nyx_string* null
@.str122 = private unnamed_addr constant [5 x i8] c"fill\00"
@.str122.c = internal global %nyx_string* null
@.str123 = private unnamed_addr constant [7 x i8] c"splice\00"
@.str123.c = internal global %nyx_string* null
@.str124 = private unnamed_addr constant [6 x i8] c"drain\00"
@.str124.c = internal global %nyx_string* null
@.str125 = private unnamed_addr constant [7 x i8] c"append\00"
@.str125.c = internal global %nyx_string* null
@.str126 = private unnamed_addr constant [9 x i8] c"function\00"
@.str126.c = internal global %nyx_string* null
@.str127 = private unnamed_addr constant [9 x i8] c"async_fn\00"
@.str127.c = internal global %nyx_string* null
@.str128 = private unnamed_addr constant [7 x i8] c"lambda\00"
@.str128.c = internal global %nyx_string* null
@.str129 = private unnamed_addr constant [8 x i8] c"closure\00"
@.str129.c = internal global %nyx_string* null
@.str130 = private unnamed_addr constant [7 x i8] c"assign\00"
@.str130.c = internal global %nyx_string* null
@.str131 = private unnamed_addr constant [13 x i8] c"index_assign\00"
@.str131.c = internal global %nyx_string* null
@.str132 = private unnamed_addr constant [11 x i8] c"identifier\00"
@.str132.c = internal global %nyx_string* null
@.str133 = private unnamed_addr constant [12 x i8] c"method_call\00"
@.str133.c = internal global %nyx_string* null
@.str134 = private unnamed_addr constant [11 x i8] c"identifier\00"
@.str134.c = internal global %nyx_string* null
@.str135 = private unnamed_addr constant [7 x i8] c"number\00"
@.str135.c = internal global %nyx_string* null
@.str136 = private unnamed_addr constant [6 x i8] c"binop\00"
@.str136.c = internal global %nyx_string* null
@.str137 = private unnamed_addr constant [5 x i8] c"PLUS\00"
@.str137.c = internal global %nyx_string* null
@.str138 = private unnamed_addr constant [6 x i8] c"MINUS\00"
@.str138.c = internal global %nyx_string* null
@.str139 = private unnamed_addr constant [5 x i8] c"STAR\00"
@.str139.c = internal global %nyx_string* null
@.str140 = private unnamed_addr constant [6 x i8] c"SLASH\00"
@.str140.c = internal global %nyx_string* null
@.str141 = private unnamed_addr constant [8 x i8] c"PERCENT\00"
@.str141.c = internal global %nyx_string* null
@.str142 = private unnamed_addr constant [4 x i8] c"AMP\00"
@.str142.c = internal global %nyx_string* null
@.str143 = private unnamed_addr constant [5 x i8] c"PIPE\00"
@.str143.c = internal global %nyx_string* null
@.str144 = private unnamed_addr constant [6 x i8] c"CARET\00"
@.str144.c = internal global %nyx_string* null
@.str145 = private unnamed_addr constant [4 x i8] c"SHL\00"
@.str145.c = internal global %nyx_string* null
@.str146 = private unnamed_addr constant [4 x i8] c"SHR\00"
@.str146.c = internal global %nyx_string* null
@.str147 = private unnamed_addr constant [5 x i8] c"unop\00"
@.str147.c = internal global %nyx_string* null
@.str148 = private unnamed_addr constant [6 x i8] c"MINUS\00"
@.str148.c = internal global %nyx_string* null
@.str149 = private unnamed_addr constant [12 x i8] c"method_call\00"
@.str149.c = internal global %nyx_string* null
@.str150 = private unnamed_addr constant [7 x i8] c"length\00"
@.str150.c = internal global %nyx_string* null
@.str151 = private unnamed_addr constant [12 x i8] c"char_length\00"
@.str151.c = internal global %nyx_string* null
@.str152 = private unnamed_addr constant [12 x i8] c"byte_length\00"
@.str152.c = internal global %nyx_string* null
@.str153 = private unnamed_addr constant [8 x i8] c"indexOf\00"
@.str153.c = internal global %nyx_string* null
@.str154 = private unnamed_addr constant [7 x i8] c"assign\00"
@.str154.c = internal global %nyx_string* null
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


define internal %ASTNode @licm_root_of(
{ i64, i8* }* %arr.param) {
  %arr.ptr = alloca { i64, i8* }*
  %t4 = alloca { i64, i8* }*
  %t14 = alloca %ASTNode
  %t20 = alloca %ASTNode
  store { i64, i8* }* %arr.param, { i64, i8* }** %arr.ptr
  %t1 = call { i64, i8* }* @nyx_array_new_ptr()
  %t2 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %t3 = ptrtoint { i64, i8* }* %t2 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1, i64 %t3, i64 5)
  store { i64, i8* }* %t1, { i64, i8* }** %t4
  %t5 = load { i64, i8* }*, { i64, i8* }** %t4
  %t6 = call i64 @nyx_array_get({ i64, i8* }* %t5, i64 0)
  %t7 = inttoptr i64 %t6 to { i64, i8* }*
  %t8 = call i64 @nyx_array_get({ i64, i8* }* %t7, i64 0)
  %t9 = call i64 @nyx_array_get({ i64, i8* }* %t7, i64 1)
  %t10 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %t7, i64 2)
  %t11 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %t7, i64 3)
  %t12 = inttoptr i64 %t8 to %nyx_string*
  %t13 = inttoptr i64 %t9 to { i64, i8* }*
  %t15 = getelementptr inbounds %ASTNode, %ASTNode* %t14, i32 0, i32 0
  store %nyx_string* %t12, %nyx_string** %t15
  %t16 = getelementptr inbounds %ASTNode, %ASTNode* %t14, i32 0, i32 1
  store { i64, i8* }* %t13, { i64, i8* }** %t16
  %t17 = getelementptr inbounds %ASTNode, %ASTNode* %t14, i32 0, i32 2
  store i64 %t10, i64* %t17
  %t18 = getelementptr inbounds %ASTNode, %ASTNode* %t14, i32 0, i32 3
  store i64 %t11, i64* %t18
  %t19 = load %ASTNode, %ASTNode* %t14
  store %ASTNode %t19, %ASTNode* %t20
  %t21 = load %ASTNode, %ASTNode* %t20
  ret %ASTNode %t21
}

define internal %ASTNode @licm_node_at(
%ASTNode %node.param, i64 %i.param) {
  %node.ptr = alloca %ASTNode
  %i.ptr = alloca i64
  %t24 = alloca { i64, i8* }*
  %t35 = alloca %ASTNode
  %t41 = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  store i64 %i.param, i64* %i.ptr
  %t22 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 1
  %t23 = load { i64, i8* }*, { i64, i8* }** %t22
  store { i64, i8* }* %t23, { i64, i8* }** %t24
  %t25 = load { i64, i8* }*, { i64, i8* }** %t24
  %t26 = load i64, i64* %i.ptr
  %t27 = call i64 @nyx_array_get({ i64, i8* }* %t25, i64 %t26)
  %t28 = inttoptr i64 %t27 to { i64, i8* }*
  %t29 = call i64 @nyx_array_get({ i64, i8* }* %t28, i64 0)
  %t30 = call i64 @nyx_array_get({ i64, i8* }* %t28, i64 1)
  %t31 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %t28, i64 2)
  %t32 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %t28, i64 3)
  %t33 = inttoptr i64 %t29 to %nyx_string*
  %t34 = inttoptr i64 %t30 to { i64, i8* }*
  %t36 = getelementptr inbounds %ASTNode, %ASTNode* %t35, i32 0, i32 0
  store %nyx_string* %t33, %nyx_string** %t36
  %t37 = getelementptr inbounds %ASTNode, %ASTNode* %t35, i32 0, i32 1
  store { i64, i8* }* %t34, { i64, i8* }** %t37
  %t38 = getelementptr inbounds %ASTNode, %ASTNode* %t35, i32 0, i32 2
  store i64 %t31, i64* %t38
  %t39 = getelementptr inbounds %ASTNode, %ASTNode* %t35, i32 0, i32 3
  store i64 %t32, i64* %t39
  %t40 = load %ASTNode, %ASTNode* %t35
  store %ASTNode %t40, %ASTNode* %t41
  %t42 = load %ASTNode, %ASTNode* %t41
  ret %ASTNode %t42
}

define internal { i64, i8* }* @licm_array_at(
%ASTNode %node.param, i64 %i.param) {
  %node.ptr = alloca %ASTNode
  %i.ptr = alloca i64
  %t45 = alloca { i64, i8* }*
  %t50 = alloca { i64, i8* }*
  store %ASTNode %node.param, %ASTNode* %node.ptr
  store i64 %i.param, i64* %i.ptr
  %t43 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 1
  %t44 = load { i64, i8* }*, { i64, i8* }** %t43
  store { i64, i8* }* %t44, { i64, i8* }** %t45
  %t46 = load { i64, i8* }*, { i64, i8* }** %t45
  %t47 = load i64, i64* %i.ptr
  %t48 = call i64 @nyx_array_get({ i64, i8* }* %t46, i64 %t47)
  %t49 = inttoptr i64 %t48 to { i64, i8* }*
  store { i64, i8* }* %t49, { i64, i8* }** %t50
  %t51 = load { i64, i8* }*, { i64, i8* }** %t50
  ret { i64, i8* }* %t51
}

define internal { i64, i8* }* @licm_make(
%nyx_string* %node_type.param, { i64, i8* }* %data.param) {
  %node_type.ptr = alloca %nyx_string*
  %data.ptr = alloca { i64, i8* }*
  %t53 = alloca { i64, i8* }*
  store %nyx_string* %node_type.param, %nyx_string** %node_type.ptr
  store { i64, i8* }* %data.param, { i64, i8* }** %data.ptr
  %t52 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t52, { i64, i8* }** %t53
  %t54 = load { i64, i8* }*, { i64, i8* }** %t53
  %t55 = load %nyx_string*, %nyx_string** %node_type.ptr
  %t56 = ptrtoint %nyx_string* %t55 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t54, i64 %t56, i64 2)
  %t57 = load { i64, i8* }*, { i64, i8* }** %t53
  %t58 = load { i64, i8* }*, { i64, i8* }** %data.ptr
  %t59 = ptrtoint { i64, i8* }* %t58 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t57, i64 %t59, i64 5)
  %t60 = load { i64, i8* }*, { i64, i8* }** %t53
  call void @nyx_array_push_tagged({ i64, i8* }* %t60, i64 0, i64 1)
  %t61 = load { i64, i8* }*, { i64, i8* }** %t53
  call void @nyx_array_push_tagged({ i64, i8* }* %t61, i64 0, i64 1)
  %t62 = load { i64, i8* }*, { i64, i8* }** %t53
  ret { i64, i8* }* %t62
}

define internal i1 @licm_contains(
{ i64, i8* }* %acc.param, %nyx_string* %v.param) {
  %acc.ptr = alloca { i64, i8* }*
  %v.ptr = alloca %nyx_string*
  %t63 = alloca i64
  %t72 = alloca %nyx_string*
  store { i64, i8* }* %acc.param, { i64, i8* }** %acc.ptr
  store %nyx_string* %v.param, %nyx_string** %v.ptr
  store i64 0, i64* %t63
  br label %while_cond0
while_cond0:
  %t64 = load i64, i64* %t63
  %t65 = load { i64, i8* }*, { i64, i8* }** %acc.ptr
  %t66 = call i64 @nyx_array_length({ i64, i8* }* %t65)
  %t67 = icmp slt i64 %t64, %t66
  br i1 %t67, label %while_body1, label %while_end2
while_body1:
  %t68 = load { i64, i8* }*, { i64, i8* }** %acc.ptr
  %t69 = load i64, i64* %t63
  %t70 = call i64 @nyx_array_get_checked({ i64, i8* }* %t68, i64 %t69, i64 2)
  %t71 = inttoptr i64 %t70 to %nyx_string*
  store %nyx_string* %t71, %nyx_string** %t72
  %t73 = load %nyx_string*, %nyx_string** %t72
  %t74 = load %nyx_string*, %nyx_string** %v.ptr
  %t75 = call i1 @nyx_string_equals(%nyx_string* %t73, %nyx_string* %t74)
  br i1 %t75, label %then3, label %else4
then3:
  ret i1 1
else4:
  br label %merge5
merge5:
  %t76 = load i64, i64* %t63
  %t77 = add i64 %t76, 1
  store i64 %t77, i64* %t63
  br label %while_cond0
while_end2:
  ret i1 0
}

define internal %nyx_string* @licm_lookup(
{ i64, i8* }* %litmap.param, %nyx_string* %v.param) {
  %litmap.ptr = alloca { i64, i8* }*
  %v.ptr = alloca %nyx_string*
  %t78 = alloca i64
  %t87 = alloca { i64, i8* }*
  %t91 = alloca %nyx_string*
  %t98 = alloca %nyx_string*
  store { i64, i8* }* %litmap.param, { i64, i8* }** %litmap.ptr
  store %nyx_string* %v.param, %nyx_string** %v.ptr
  store i64 0, i64* %t78
  br label %while_cond6
while_cond6:
  %t79 = load i64, i64* %t78
  %t80 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %t81 = call i64 @nyx_array_length({ i64, i8* }* %t80)
  %t82 = icmp slt i64 %t79, %t81
  br i1 %t82, label %while_body7, label %while_end8
while_body7:
  %t83 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %t84 = load i64, i64* %t78
  %t85 = call i64 @nyx_array_get({ i64, i8* }* %t83, i64 %t84)
  %t86 = inttoptr i64 %t85 to { i64, i8* }*
  store { i64, i8* }* %t86, { i64, i8* }** %t87
  %t88 = load { i64, i8* }*, { i64, i8* }** %t87
  %t89 = call i64 @nyx_array_get_checked({ i64, i8* }* %t88, i64 0, i64 2)
  %t90 = inttoptr i64 %t89 to %nyx_string*
  store %nyx_string* %t90, %nyx_string** %t91
  %t92 = load %nyx_string*, %nyx_string** %t91
  %t93 = load %nyx_string*, %nyx_string** %v.ptr
  %t94 = call i1 @nyx_string_equals(%nyx_string* %t92, %nyx_string* %t93)
  br i1 %t94, label %then9, label %else10
then9:
  %t95 = load { i64, i8* }*, { i64, i8* }** %t87
  %t96 = call i64 @nyx_array_get_checked({ i64, i8* }* %t95, i64 1, i64 2)
  %t97 = inttoptr i64 %t96 to %nyx_string*
  store %nyx_string* %t97, %nyx_string** %t98
  %t99 = load %nyx_string*, %nyx_string** %t98
  ret %nyx_string* %t99
else10:
  br label %merge11
merge11:
  %t100 = load i64, i64* %t78
  %t101 = add i64 %t100, 1
  store i64 %t101, i64* %t78
  br label %while_cond6
while_end8:
  %t102 = getelementptr [1 x i8], [1 x i8]* @.str0, i32 0, i32 0
  %t103 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str0.c, i8* %t102, i64 0)
  ret %nyx_string* %t103
}

define internal i64 @licm_collect(
%ASTNode %node.param, { i64, i8* }* %acc.param) {
  %node.ptr = alloca %ASTNode
  %acc.ptr = alloca { i64, i8* }*
  %t106 = alloca %nyx_string*
  %t109 = alloca { i64, i8* }*
  %t126 = alloca i1
  %t138 = alloca %nyx_string*
  %t146 = alloca i1
  %t157 = alloca %ASTNode
  %t163 = alloca { i64, i8* }*
  %t164 = alloca i64
  %t179 = alloca %ASTNode
  %t185 = alloca %ASTNode
  %t188 = alloca { i64, i8* }*
  %t194 = alloca %ASTNode
  %t203 = alloca %ASTNode
  %t215 = alloca { i64, i8* }*
  %t216 = alloca i64
  %t225 = alloca { i64, i8* }*
  %t228 = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  store { i64, i8* }* %acc.param, { i64, i8* }** %acc.ptr
  %t104 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 0
  %t105 = load %nyx_string*, %nyx_string** %t104
  store %nyx_string* %t105, %nyx_string** %t106
  %t107 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 1
  %t108 = load { i64, i8* }*, { i64, i8* }** %t107
  store { i64, i8* }* %t108, { i64, i8* }** %t109
  %t110 = load %nyx_string*, %nyx_string** %t106
  %t111 = getelementptr [9 x i8], [9 x i8]* @.str1, i32 0, i32 0
  %t112 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1.c, i8* %t111, i64 8)
  %t113 = call i1 @nyx_string_equals(%nyx_string* %t110, %nyx_string* %t112)
  br i1 %t113, label %then12, label %else13
then12:
  ret i64 0
else13:
  br label %merge14
merge14:
  %t114 = load %nyx_string*, %nyx_string** %t106
  %t115 = getelementptr [9 x i8], [9 x i8]* @.str2, i32 0, i32 0
  %t116 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str2.c, i8* %t115, i64 8)
  %t117 = call i1 @nyx_string_equals(%nyx_string* %t114, %nyx_string* %t116)
  br i1 %t117, label %then15, label %else16
then15:
  ret i64 0
else16:
  br label %merge17
merge17:
  %t118 = load %nyx_string*, %nyx_string** %t106
  %t119 = getelementptr [7 x i8], [7 x i8]* @.str3, i32 0, i32 0
  %t120 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str3.c, i8* %t119, i64 6)
  %t121 = call i1 @nyx_string_equals(%nyx_string* %t118, %nyx_string* %t120)
  br i1 %t121, label %then18, label %else19
then18:
  ret i64 0
else19:
  br label %merge20
merge20:
  %t122 = load %nyx_string*, %nyx_string** %t106
  %t123 = getelementptr [8 x i8], [8 x i8]* @.str4, i32 0, i32 0
  %t124 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str4.c, i8* %t123, i64 7)
  %t125 = call i1 @nyx_string_equals(%nyx_string* %t122, %nyx_string* %t124)
  br i1 %t125, label %then21, label %else22
then21:
  ret i64 0
else22:
  br label %merge23
merge23:
  store i1 false, i1* %t126
  %t127 = load %nyx_string*, %nyx_string** %t106
  %t128 = getelementptr [7 x i8], [7 x i8]* @.str5, i32 0, i32 0
  %t129 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str5.c, i8* %t128, i64 6)
  %t130 = call i1 @nyx_string_equals(%nyx_string* %t127, %nyx_string* %t129)
  br i1 %t130, label %sc_and_rhs24, label %sc_and_end25
sc_and_rhs24:
  %t131 = load { i64, i8* }*, { i64, i8* }** %t109
  %t132 = call i64 @nyx_array_length({ i64, i8* }* %t131)
  %t133 = icmp sge i64 %t132, 1
  store i1 %t133, i1* %t126
  br label %sc_and_end25
sc_and_end25:
  %t134 = load i1, i1* %t126
  br i1 %t134, label %then26, label %else27
then26:
  %t135 = load { i64, i8* }*, { i64, i8* }** %t109
  %t136 = call i64 @nyx_array_get_checked({ i64, i8* }* %t135, i64 0, i64 2)
  %t137 = inttoptr i64 %t136 to %nyx_string*
  store %nyx_string* %t137, %nyx_string** %t138
  %t139 = load { i64, i8* }*, { i64, i8* }** %acc.ptr
  %t140 = load %nyx_string*, %nyx_string** %t138
  %t141 = call i1 @licm_contains({ i64, i8* }* %t139, %nyx_string* %t140)
  %t142 = xor i1 %t141, true
  br i1 %t142, label %then29, label %else30
then29:
  %t143 = load { i64, i8* }*, { i64, i8* }** %acc.ptr
  %t144 = load %nyx_string*, %nyx_string** %t138
  %t145 = ptrtoint %nyx_string* %t144 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t143, i64 %t145, i64 2)
  br label %merge31
else30:
  br label %merge31
merge31:
  ret i64 0
else27:
  br label %merge28
merge28:
  store i1 false, i1* %t146
  %t147 = load %nyx_string*, %nyx_string** %t106
  %t148 = getelementptr [6 x i8], [6 x i8]* @.str6, i32 0, i32 0
  %t149 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str6.c, i8* %t148, i64 5)
  %t150 = call i1 @nyx_string_equals(%nyx_string* %t147, %nyx_string* %t149)
  br i1 %t150, label %sc_and_rhs32, label %sc_and_end33
sc_and_rhs32:
  %t151 = load { i64, i8* }*, { i64, i8* }** %t109
  %t152 = call i64 @nyx_array_length({ i64, i8* }* %t151)
  %t153 = icmp sge i64 %t152, 2
  store i1 %t153, i1* %t146
  br label %sc_and_end33
sc_and_end33:
  %t154 = load i1, i1* %t146
  br i1 %t154, label %then34, label %else35
then34:
  %t155 = load %ASTNode, %ASTNode* %node.ptr
  %t156 = call %ASTNode @licm_node_at(%ASTNode %t155, i64 0)
  store %ASTNode %t156, %ASTNode* %t157
  %t158 = load %ASTNode, %ASTNode* %t157
  %t159 = load { i64, i8* }*, { i64, i8* }** %acc.ptr
  %t160 = call i64 @licm_collect(%ASTNode %t158, { i64, i8* }* %t159)
  %t161 = load %ASTNode, %ASTNode* %node.ptr
  %t162 = call { i64, i8* }* @licm_array_at(%ASTNode %t161, i64 1)
  store { i64, i8* }* %t162, { i64, i8* }** %t163
  store i64 0, i64* %t164
  br label %while_cond37
while_cond37:
  %t165 = load i64, i64* %t164
  %t166 = load { i64, i8* }*, { i64, i8* }** %t163
  %t167 = call i64 @nyx_array_length({ i64, i8* }* %t166)
  %t168 = icmp slt i64 %t165, %t167
  br i1 %t168, label %while_body38, label %while_end39
while_body38:
  %t169 = load { i64, i8* }*, { i64, i8* }** %t163
  %t170 = load i64, i64* %t164
  %t171 = call i64 @nyx_array_get({ i64, i8* }* %t169, i64 %t170)
  %t172 = inttoptr i64 %t171 to { i64, i8* }*
  %t173 = call i64 @nyx_array_get({ i64, i8* }* %t172, i64 0)
  %t174 = call i64 @nyx_array_get({ i64, i8* }* %t172, i64 1)
  %t175 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %t172, i64 2)
  %t176 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %t172, i64 3)
  %t177 = inttoptr i64 %t173 to %nyx_string*
  %t178 = inttoptr i64 %t174 to { i64, i8* }*
  %t180 = getelementptr inbounds %ASTNode, %ASTNode* %t179, i32 0, i32 0
  store %nyx_string* %t177, %nyx_string** %t180
  %t181 = getelementptr inbounds %ASTNode, %ASTNode* %t179, i32 0, i32 1
  store { i64, i8* }* %t178, { i64, i8* }** %t181
  %t182 = getelementptr inbounds %ASTNode, %ASTNode* %t179, i32 0, i32 2
  store i64 %t175, i64* %t182
  %t183 = getelementptr inbounds %ASTNode, %ASTNode* %t179, i32 0, i32 3
  store i64 %t176, i64* %t183
  %t184 = load %ASTNode, %ASTNode* %t179
  store %ASTNode %t184, %ASTNode* %t185
  %t186 = getelementptr %ASTNode, %ASTNode* %t185, i32 0, i32 1
  %t187 = load { i64, i8* }*, { i64, i8* }** %t186
  store { i64, i8* }* %t187, { i64, i8* }** %t188
  %t189 = load { i64, i8* }*, { i64, i8* }** %t188
  %t190 = call i64 @nyx_array_length({ i64, i8* }* %t189)
  %t191 = icmp sge i64 %t190, 2
  br i1 %t191, label %then40, label %else41
then40:
  %t192 = load %ASTNode, %ASTNode* %t185
  %t193 = call %ASTNode @licm_node_at(%ASTNode %t192, i64 1)
  store %ASTNode %t193, %ASTNode* %t194
  %t195 = load %ASTNode, %ASTNode* %t194
  %t196 = load { i64, i8* }*, { i64, i8* }** %acc.ptr
  %t197 = call i64 @licm_collect(%ASTNode %t195, { i64, i8* }* %t196)
  br label %merge42
else41:
  br label %merge42
merge42:
  %t198 = load { i64, i8* }*, { i64, i8* }** %t188
  %t199 = call i64 @nyx_array_length({ i64, i8* }* %t198)
  %t200 = icmp sge i64 %t199, 3
  br i1 %t200, label %then43, label %else44
then43:
  %t201 = load %ASTNode, %ASTNode* %t185
  %t202 = call %ASTNode @licm_node_at(%ASTNode %t201, i64 2)
  store %ASTNode %t202, %ASTNode* %t203
  %t204 = load %ASTNode, %ASTNode* %t203
  %t205 = load { i64, i8* }*, { i64, i8* }** %acc.ptr
  %t206 = call i64 @licm_collect(%ASTNode %t204, { i64, i8* }* %t205)
  br label %merge45
else44:
  br label %merge45
merge45:
  %t207 = load i64, i64* %t164
  %t208 = add i64 %t207, 1
  store i64 %t208, i64* %t164
  br label %while_cond37
while_end39:
  ret i64 0
else35:
  br label %merge36
merge36:
  %t209 = load %nyx_string*, %nyx_string** %t106
  %t210 = getelementptr [6 x i8], [6 x i8]* @.str7, i32 0, i32 0
  %t211 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str7.c, i8* %t210, i64 5)
  %t212 = call i1 @nyx_string_equals(%nyx_string* %t209, %nyx_string* %t211)
  br i1 %t212, label %then46, label %else47
then46:
  ret i64 0
else47:
  br label %merge48
merge48:
  %t213 = load %ASTNode, %ASTNode* %node.ptr
  %t214 = call { i64, i8* }* @licm_children(%ASTNode %t213)
  store { i64, i8* }* %t214, { i64, i8* }** %t215
  store i64 0, i64* %t216
  br label %while_cond49
while_cond49:
  %t217 = load i64, i64* %t216
  %t218 = load { i64, i8* }*, { i64, i8* }** %t215
  %t219 = call i64 @nyx_array_length({ i64, i8* }* %t218)
  %t220 = icmp slt i64 %t217, %t219
  br i1 %t220, label %while_body50, label %while_end51
while_body50:
  %t221 = load { i64, i8* }*, { i64, i8* }** %t215
  %t222 = load i64, i64* %t216
  %t223 = call i64 @nyx_array_get({ i64, i8* }* %t221, i64 %t222)
  %t224 = inttoptr i64 %t223 to { i64, i8* }*
  store { i64, i8* }* %t224, { i64, i8* }** %t225
  %t226 = load { i64, i8* }*, { i64, i8* }** %t225
  %t227 = call %ASTNode @licm_root_of({ i64, i8* }* %t226)
  store %ASTNode %t227, %ASTNode* %t228
  %t229 = load %ASTNode, %ASTNode* %t228
  %t230 = load { i64, i8* }*, { i64, i8* }** %acc.ptr
  %t231 = call i64 @licm_collect(%ASTNode %t229, { i64, i8* }* %t230)
  %t232 = load i64, i64* %t216
  %t233 = add i64 %t232, 1
  store i64 %t233, i64* %t216
  br label %while_cond49
while_end51:
  ret i64 0
}

define internal { i64, i8* }* @licm_children(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  %t236 = alloca %nyx_string*
  %t239 = alloca { i64, i8* }*
  %t242 = alloca i64
  %t244 = alloca { i64, i8* }*
  %t245 = alloca i1
  %t256 = alloca { i64, i8* }*
  %t260 = alloca { i64, i8* }*
  %t268 = alloca i1
  %t279 = alloca { i64, i8* }*
  %t284 = alloca i1
  %t295 = alloca { i64, i8* }*
  %t302 = alloca { i64, i8* }*
  %t303 = alloca i64
  %t312 = alloca { i64, i8* }*
  %t319 = alloca i1
  %t330 = alloca { i64, i8* }*
  %t337 = alloca { i64, i8* }*
  %t338 = alloca i64
  %t347 = alloca { i64, i8* }*
  %t354 = alloca i1
  %t365 = alloca { i64, i8* }*
  %t369 = alloca { i64, i8* }*
  %t377 = alloca i1
  %t388 = alloca { i64, i8* }*
  %t393 = alloca i1
  %t404 = alloca { i64, i8* }*
  %t405 = alloca i64
  %t414 = alloca { i64, i8* }*
  %t421 = alloca i1
  %t432 = alloca { i64, i8* }*
  %t433 = alloca i64
  %t442 = alloca { i64, i8* }*
  %t449 = alloca i1
  %t460 = alloca { i64, i8* }*
  %t464 = alloca { i64, i8* }*
  %t468 = alloca { i64, i8* }*
  %t479 = alloca i1
  %t490 = alloca { i64, i8* }*
  %t494 = alloca { i64, i8* }*
  %t502 = alloca i1
  %t513 = alloca { i64, i8* }*
  %t517 = alloca { i64, i8* }*
  %t525 = alloca i1
  %t536 = alloca { i64, i8* }*
  %t540 = alloca { i64, i8* }*
  %t548 = alloca i1
  %t559 = alloca { i64, i8* }*
  %t560 = alloca i64
  %t569 = alloca { i64, i8* }*
  %t576 = alloca i1
  %t587 = alloca { i64, i8* }*
  %t592 = alloca i1
  %t603 = alloca { i64, i8* }*
  %t608 = alloca i1
  %t619 = alloca { i64, i8* }*
  %t624 = alloca i1
  %t635 = alloca { i64, i8* }*
  %t639 = alloca { i64, i8* }*
  %t643 = alloca { i64, i8* }*
  %t654 = alloca i1
  %t665 = alloca { i64, i8* }*
  %t669 = alloca { i64, i8* }*
  %t677 = alloca i1
  %t688 = alloca { i64, i8* }*
  %t692 = alloca { i64, i8* }*
  %t700 = alloca i1
  %t711 = alloca { i64, i8* }*
  %t716 = alloca i1
  %t727 = alloca { i64, i8* }*
  %t728 = alloca i64
  %t737 = alloca { i64, i8* }*
  %t744 = alloca { i64, i8* }*
  %t751 = alloca i1
  %t762 = alloca { i64, i8* }*
  %t767 = alloca i1
  %t778 = alloca { i64, i8* }*
  %t783 = alloca i1
  %t794 = alloca { i64, i8* }*
  %t798 = alloca { i64, i8* }*
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %t234 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 0
  %t235 = load %nyx_string*, %nyx_string** %t234
  store %nyx_string* %t235, %nyx_string** %t236
  %t237 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 1
  %t238 = load { i64, i8* }*, { i64, i8* }** %t237
  store { i64, i8* }* %t238, { i64, i8* }** %t239
  %t240 = load { i64, i8* }*, { i64, i8* }** %t239
  %t241 = call i64 @nyx_array_length({ i64, i8* }* %t240)
  store i64 %t241, i64* %t242
  %t243 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t243, { i64, i8* }** %t244
  store i1 false, i1* %t245
  %t246 = load %nyx_string*, %nyx_string** %t236
  %t247 = getelementptr [6 x i8], [6 x i8]* @.str8, i32 0, i32 0
  %t248 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str8.c, i8* %t247, i64 5)
  %t249 = call i1 @nyx_string_equals(%nyx_string* %t246, %nyx_string* %t248)
  br i1 %t249, label %sc_and_rhs52, label %sc_and_end53
sc_and_rhs52:
  %t250 = load i64, i64* %t242
  %t251 = icmp sge i64 %t250, 3
  store i1 %t251, i1* %t245
  br label %sc_and_end53
sc_and_end53:
  %t252 = load i1, i1* %t245
  br i1 %t252, label %then54, label %else55
then54:
  %t253 = load { i64, i8* }*, { i64, i8* }** %t239
  %t254 = call i64 @nyx_array_get({ i64, i8* }* %t253, i64 1)
  %t255 = inttoptr i64 %t254 to { i64, i8* }*
  store { i64, i8* }* %t255, { i64, i8* }** %t256
  %t257 = load { i64, i8* }*, { i64, i8* }** %t239
  %t258 = call i64 @nyx_array_get({ i64, i8* }* %t257, i64 2)
  %t259 = inttoptr i64 %t258 to { i64, i8* }*
  store { i64, i8* }* %t259, { i64, i8* }** %t260
  %t261 = load { i64, i8* }*, { i64, i8* }** %t244
  %t262 = load { i64, i8* }*, { i64, i8* }** %t256
  %t263 = ptrtoint { i64, i8* }* %t262 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t261, i64 %t263, i64 5)
  %t264 = load { i64, i8* }*, { i64, i8* }** %t244
  %t265 = load { i64, i8* }*, { i64, i8* }** %t260
  %t266 = ptrtoint { i64, i8* }* %t265 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t264, i64 %t266, i64 5)
  %t267 = load { i64, i8* }*, { i64, i8* }** %t244
  ret { i64, i8* }* %t267
else55:
  br label %merge56
merge56:
  store i1 false, i1* %t268
  %t269 = load %nyx_string*, %nyx_string** %t236
  %t270 = getelementptr [5 x i8], [5 x i8]* @.str9, i32 0, i32 0
  %t271 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str9.c, i8* %t270, i64 4)
  %t272 = call i1 @nyx_string_equals(%nyx_string* %t269, %nyx_string* %t271)
  br i1 %t272, label %sc_and_rhs57, label %sc_and_end58
sc_and_rhs57:
  %t273 = load i64, i64* %t242
  %t274 = icmp sge i64 %t273, 2
  store i1 %t274, i1* %t268
  br label %sc_and_end58
sc_and_end58:
  %t275 = load i1, i1* %t268
  br i1 %t275, label %then59, label %else60
then59:
  %t276 = load { i64, i8* }*, { i64, i8* }** %t239
  %t277 = call i64 @nyx_array_get({ i64, i8* }* %t276, i64 1)
  %t278 = inttoptr i64 %t277 to { i64, i8* }*
  store { i64, i8* }* %t278, { i64, i8* }** %t279
  %t280 = load { i64, i8* }*, { i64, i8* }** %t244
  %t281 = load { i64, i8* }*, { i64, i8* }** %t279
  %t282 = ptrtoint { i64, i8* }* %t281 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t280, i64 %t282, i64 5)
  %t283 = load { i64, i8* }*, { i64, i8* }** %t244
  ret { i64, i8* }* %t283
else60:
  br label %merge61
merge61:
  store i1 false, i1* %t284
  %t285 = load %nyx_string*, %nyx_string** %t236
  %t286 = getelementptr [5 x i8], [5 x i8]* @.str10, i32 0, i32 0
  %t287 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str10.c, i8* %t286, i64 4)
  %t288 = call i1 @nyx_string_equals(%nyx_string* %t285, %nyx_string* %t287)
  br i1 %t288, label %sc_and_rhs62, label %sc_and_end63
sc_and_rhs62:
  %t289 = load i64, i64* %t242
  %t290 = icmp sge i64 %t289, 2
  store i1 %t290, i1* %t284
  br label %sc_and_end63
sc_and_end63:
  %t291 = load i1, i1* %t284
  br i1 %t291, label %then64, label %else65
then64:
  %t292 = load { i64, i8* }*, { i64, i8* }** %t239
  %t293 = call i64 @nyx_array_get({ i64, i8* }* %t292, i64 0)
  %t294 = inttoptr i64 %t293 to { i64, i8* }*
  store { i64, i8* }* %t294, { i64, i8* }** %t295
  %t296 = load { i64, i8* }*, { i64, i8* }** %t244
  %t297 = load { i64, i8* }*, { i64, i8* }** %t295
  %t298 = ptrtoint { i64, i8* }* %t297 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t296, i64 %t298, i64 5)
  %t299 = load { i64, i8* }*, { i64, i8* }** %t239
  %t300 = call i64 @nyx_array_get({ i64, i8* }* %t299, i64 1)
  %t301 = inttoptr i64 %t300 to { i64, i8* }*
  store { i64, i8* }* %t301, { i64, i8* }** %t302
  store i64 0, i64* %t303
  br label %while_cond67
while_cond67:
  %t304 = load i64, i64* %t303
  %t305 = load { i64, i8* }*, { i64, i8* }** %t302
  %t306 = call i64 @nyx_array_length({ i64, i8* }* %t305)
  %t307 = icmp slt i64 %t304, %t306
  br i1 %t307, label %while_body68, label %while_end69
while_body68:
  %t308 = load { i64, i8* }*, { i64, i8* }** %t302
  %t309 = load i64, i64* %t303
  %t310 = call i64 @nyx_array_get({ i64, i8* }* %t308, i64 %t309)
  %t311 = inttoptr i64 %t310 to { i64, i8* }*
  store { i64, i8* }* %t311, { i64, i8* }** %t312
  %t313 = load { i64, i8* }*, { i64, i8* }** %t244
  %t314 = load { i64, i8* }*, { i64, i8* }** %t312
  %t315 = ptrtoint { i64, i8* }* %t314 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t313, i64 %t315, i64 5)
  %t316 = load i64, i64* %t303
  %t317 = add i64 %t316, 1
  store i64 %t317, i64* %t303
  br label %while_cond67
while_end69:
  %t318 = load { i64, i8* }*, { i64, i8* }** %t244
  ret { i64, i8* }* %t318
else65:
  br label %merge66
merge66:
  store i1 false, i1* %t319
  %t320 = load %nyx_string*, %nyx_string** %t236
  %t321 = getelementptr [12 x i8], [12 x i8]* @.str11, i32 0, i32 0
  %t322 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str11.c, i8* %t321, i64 11)
  %t323 = call i1 @nyx_string_equals(%nyx_string* %t320, %nyx_string* %t322)
  br i1 %t323, label %sc_and_rhs70, label %sc_and_end71
sc_and_rhs70:
  %t324 = load i64, i64* %t242
  %t325 = icmp sge i64 %t324, 3
  store i1 %t325, i1* %t319
  br label %sc_and_end71
sc_and_end71:
  %t326 = load i1, i1* %t319
  br i1 %t326, label %then72, label %else73
then72:
  %t327 = load { i64, i8* }*, { i64, i8* }** %t239
  %t328 = call i64 @nyx_array_get({ i64, i8* }* %t327, i64 0)
  %t329 = inttoptr i64 %t328 to { i64, i8* }*
  store { i64, i8* }* %t329, { i64, i8* }** %t330
  %t331 = load { i64, i8* }*, { i64, i8* }** %t244
  %t332 = load { i64, i8* }*, { i64, i8* }** %t330
  %t333 = ptrtoint { i64, i8* }* %t332 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t331, i64 %t333, i64 5)
  %t334 = load { i64, i8* }*, { i64, i8* }** %t239
  %t335 = call i64 @nyx_array_get({ i64, i8* }* %t334, i64 2)
  %t336 = inttoptr i64 %t335 to { i64, i8* }*
  store { i64, i8* }* %t336, { i64, i8* }** %t337
  store i64 0, i64* %t338
  br label %while_cond75
while_cond75:
  %t339 = load i64, i64* %t338
  %t340 = load { i64, i8* }*, { i64, i8* }** %t337
  %t341 = call i64 @nyx_array_length({ i64, i8* }* %t340)
  %t342 = icmp slt i64 %t339, %t341
  br i1 %t342, label %while_body76, label %while_end77
while_body76:
  %t343 = load { i64, i8* }*, { i64, i8* }** %t337
  %t344 = load i64, i64* %t338
  %t345 = call i64 @nyx_array_get({ i64, i8* }* %t343, i64 %t344)
  %t346 = inttoptr i64 %t345 to { i64, i8* }*
  store { i64, i8* }* %t346, { i64, i8* }** %t347
  %t348 = load { i64, i8* }*, { i64, i8* }** %t244
  %t349 = load { i64, i8* }*, { i64, i8* }** %t347
  %t350 = ptrtoint { i64, i8* }* %t349 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t348, i64 %t350, i64 5)
  %t351 = load i64, i64* %t338
  %t352 = add i64 %t351, 1
  store i64 %t352, i64* %t338
  br label %while_cond75
while_end77:
  %t353 = load { i64, i8* }*, { i64, i8* }** %t244
  ret { i64, i8* }* %t353
else73:
  br label %merge74
merge74:
  store i1 false, i1* %t354
  %t355 = load %nyx_string*, %nyx_string** %t236
  %t356 = getelementptr [6 x i8], [6 x i8]* @.str12, i32 0, i32 0
  %t357 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str12.c, i8* %t356, i64 5)
  %t358 = call i1 @nyx_string_equals(%nyx_string* %t355, %nyx_string* %t357)
  br i1 %t358, label %sc_and_rhs78, label %sc_and_end79
sc_and_rhs78:
  %t359 = load i64, i64* %t242
  %t360 = icmp sge i64 %t359, 2
  store i1 %t360, i1* %t354
  br label %sc_and_end79
sc_and_end79:
  %t361 = load i1, i1* %t354
  br i1 %t361, label %then80, label %else81
then80:
  %t362 = load { i64, i8* }*, { i64, i8* }** %t239
  %t363 = call i64 @nyx_array_get({ i64, i8* }* %t362, i64 0)
  %t364 = inttoptr i64 %t363 to { i64, i8* }*
  store { i64, i8* }* %t364, { i64, i8* }** %t365
  %t366 = load { i64, i8* }*, { i64, i8* }** %t239
  %t367 = call i64 @nyx_array_get({ i64, i8* }* %t366, i64 1)
  %t368 = inttoptr i64 %t367 to { i64, i8* }*
  store { i64, i8* }* %t368, { i64, i8* }** %t369
  %t370 = load { i64, i8* }*, { i64, i8* }** %t244
  %t371 = load { i64, i8* }*, { i64, i8* }** %t365
  %t372 = ptrtoint { i64, i8* }* %t371 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t370, i64 %t372, i64 5)
  %t373 = load { i64, i8* }*, { i64, i8* }** %t244
  %t374 = load { i64, i8* }*, { i64, i8* }** %t369
  %t375 = ptrtoint { i64, i8* }* %t374 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t373, i64 %t375, i64 5)
  %t376 = load { i64, i8* }*, { i64, i8* }** %t244
  ret { i64, i8* }* %t376
else81:
  br label %merge82
merge82:
  store i1 false, i1* %t377
  %t378 = load %nyx_string*, %nyx_string** %t236
  %t379 = getelementptr [13 x i8], [13 x i8]* @.str13, i32 0, i32 0
  %t380 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str13.c, i8* %t379, i64 12)
  %t381 = call i1 @nyx_string_equals(%nyx_string* %t378, %nyx_string* %t380)
  br i1 %t381, label %sc_and_rhs83, label %sc_and_end84
sc_and_rhs83:
  %t382 = load i64, i64* %t242
  %t383 = icmp sge i64 %t382, 1
  store i1 %t383, i1* %t377
  br label %sc_and_end84
sc_and_end84:
  %t384 = load i1, i1* %t377
  br i1 %t384, label %then85, label %else86
then85:
  %t385 = load { i64, i8* }*, { i64, i8* }** %t239
  %t386 = call i64 @nyx_array_get({ i64, i8* }* %t385, i64 0)
  %t387 = inttoptr i64 %t386 to { i64, i8* }*
  store { i64, i8* }* %t387, { i64, i8* }** %t388
  %t389 = load { i64, i8* }*, { i64, i8* }** %t244
  %t390 = load { i64, i8* }*, { i64, i8* }** %t388
  %t391 = ptrtoint { i64, i8* }* %t390 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t389, i64 %t391, i64 5)
  %t392 = load { i64, i8* }*, { i64, i8* }** %t244
  ret { i64, i8* }* %t392
else86:
  br label %merge87
merge87:
  store i1 false, i1* %t393
  %t394 = load %nyx_string*, %nyx_string** %t236
  %t395 = getelementptr [6 x i8], [6 x i8]* @.str14, i32 0, i32 0
  %t396 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str14.c, i8* %t395, i64 5)
  %t397 = call i1 @nyx_string_equals(%nyx_string* %t394, %nyx_string* %t396)
  br i1 %t397, label %sc_and_rhs88, label %sc_and_end89
sc_and_rhs88:
  %t398 = load i64, i64* %t242
  %t399 = icmp sge i64 %t398, 1
  store i1 %t399, i1* %t393
  br label %sc_and_end89
sc_and_end89:
  %t400 = load i1, i1* %t393
  br i1 %t400, label %then90, label %else91
then90:
  %t401 = load { i64, i8* }*, { i64, i8* }** %t239
  %t402 = call i64 @nyx_array_get({ i64, i8* }* %t401, i64 0)
  %t403 = inttoptr i64 %t402 to { i64, i8* }*
  store { i64, i8* }* %t403, { i64, i8* }** %t404
  store i64 0, i64* %t405
  br label %while_cond93
while_cond93:
  %t406 = load i64, i64* %t405
  %t407 = load { i64, i8* }*, { i64, i8* }** %t404
  %t408 = call i64 @nyx_array_length({ i64, i8* }* %t407)
  %t409 = icmp slt i64 %t406, %t408
  br i1 %t409, label %while_body94, label %while_end95
while_body94:
  %t410 = load { i64, i8* }*, { i64, i8* }** %t404
  %t411 = load i64, i64* %t405
  %t412 = call i64 @nyx_array_get({ i64, i8* }* %t410, i64 %t411)
  %t413 = inttoptr i64 %t412 to { i64, i8* }*
  store { i64, i8* }* %t413, { i64, i8* }** %t414
  %t415 = load { i64, i8* }*, { i64, i8* }** %t244
  %t416 = load { i64, i8* }*, { i64, i8* }** %t414
  %t417 = ptrtoint { i64, i8* }* %t416 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t415, i64 %t417, i64 5)
  %t418 = load i64, i64* %t405
  %t419 = add i64 %t418, 1
  store i64 %t419, i64* %t405
  br label %while_cond93
while_end95:
  %t420 = load { i64, i8* }*, { i64, i8* }** %t244
  ret { i64, i8* }* %t420
else91:
  br label %merge92
merge92:
  store i1 false, i1* %t421
  %t422 = load %nyx_string*, %nyx_string** %t236
  %t423 = getelementptr [12 x i8], [12 x i8]* @.str15, i32 0, i32 0
  %t424 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str15.c, i8* %t423, i64 11)
  %t425 = call i1 @nyx_string_equals(%nyx_string* %t422, %nyx_string* %t424)
  br i1 %t425, label %sc_and_rhs96, label %sc_and_end97
sc_and_rhs96:
  %t426 = load i64, i64* %t242
  %t427 = icmp sge i64 %t426, 2
  store i1 %t427, i1* %t421
  br label %sc_and_end97
sc_and_end97:
  %t428 = load i1, i1* %t421
  br i1 %t428, label %then98, label %else99
then98:
  %t429 = load { i64, i8* }*, { i64, i8* }** %t239
  %t430 = call i64 @nyx_array_get({ i64, i8* }* %t429, i64 1)
  %t431 = inttoptr i64 %t430 to { i64, i8* }*
  store { i64, i8* }* %t431, { i64, i8* }** %t432
  store i64 0, i64* %t433
  br label %while_cond101
while_cond101:
  %t434 = load i64, i64* %t433
  %t435 = load { i64, i8* }*, { i64, i8* }** %t432
  %t436 = call i64 @nyx_array_length({ i64, i8* }* %t435)
  %t437 = icmp slt i64 %t434, %t436
  br i1 %t437, label %while_body102, label %while_end103
while_body102:
  %t438 = load { i64, i8* }*, { i64, i8* }** %t432
  %t439 = load i64, i64* %t433
  %t440 = call i64 @nyx_array_get({ i64, i8* }* %t438, i64 %t439)
  %t441 = inttoptr i64 %t440 to { i64, i8* }*
  store { i64, i8* }* %t441, { i64, i8* }** %t442
  %t443 = load { i64, i8* }*, { i64, i8* }** %t244
  %t444 = load { i64, i8* }*, { i64, i8* }** %t442
  %t445 = ptrtoint { i64, i8* }* %t444 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t443, i64 %t445, i64 5)
  %t446 = load i64, i64* %t433
  %t447 = add i64 %t446, 1
  store i64 %t447, i64* %t433
  br label %while_cond101
while_end103:
  %t448 = load { i64, i8* }*, { i64, i8* }** %t244
  ret { i64, i8* }* %t448
else99:
  br label %merge100
merge100:
  store i1 false, i1* %t449
  %t450 = load %nyx_string*, %nyx_string** %t236
  %t451 = getelementptr [3 x i8], [3 x i8]* @.str16, i32 0, i32 0
  %t452 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str16.c, i8* %t451, i64 2)
  %t453 = call i1 @nyx_string_equals(%nyx_string* %t450, %nyx_string* %t452)
  br i1 %t453, label %sc_and_rhs104, label %sc_and_end105
sc_and_rhs104:
  %t454 = load i64, i64* %t242
  %t455 = icmp sge i64 %t454, 3
  store i1 %t455, i1* %t449
  br label %sc_and_end105
sc_and_end105:
  %t456 = load i1, i1* %t449
  br i1 %t456, label %then106, label %else107
then106:
  %t457 = load { i64, i8* }*, { i64, i8* }** %t239
  %t458 = call i64 @nyx_array_get({ i64, i8* }* %t457, i64 0)
  %t459 = inttoptr i64 %t458 to { i64, i8* }*
  store { i64, i8* }* %t459, { i64, i8* }** %t460
  %t461 = load { i64, i8* }*, { i64, i8* }** %t239
  %t462 = call i64 @nyx_array_get({ i64, i8* }* %t461, i64 1)
  %t463 = inttoptr i64 %t462 to { i64, i8* }*
  store { i64, i8* }* %t463, { i64, i8* }** %t464
  %t465 = load { i64, i8* }*, { i64, i8* }** %t239
  %t466 = call i64 @nyx_array_get({ i64, i8* }* %t465, i64 2)
  %t467 = inttoptr i64 %t466 to { i64, i8* }*
  store { i64, i8* }* %t467, { i64, i8* }** %t468
  %t469 = load { i64, i8* }*, { i64, i8* }** %t244
  %t470 = load { i64, i8* }*, { i64, i8* }** %t460
  %t471 = ptrtoint { i64, i8* }* %t470 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t469, i64 %t471, i64 5)
  %t472 = load { i64, i8* }*, { i64, i8* }** %t244
  %t473 = load { i64, i8* }*, { i64, i8* }** %t464
  %t474 = ptrtoint { i64, i8* }* %t473 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t472, i64 %t474, i64 5)
  %t475 = load { i64, i8* }*, { i64, i8* }** %t244
  %t476 = load { i64, i8* }*, { i64, i8* }** %t468
  %t477 = ptrtoint { i64, i8* }* %t476 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t475, i64 %t477, i64 5)
  %t478 = load { i64, i8* }*, { i64, i8* }** %t244
  ret { i64, i8* }* %t478
else107:
  br label %merge108
merge108:
  store i1 false, i1* %t479
  %t480 = load %nyx_string*, %nyx_string** %t236
  %t481 = getelementptr [6 x i8], [6 x i8]* @.str17, i32 0, i32 0
  %t482 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str17.c, i8* %t481, i64 5)
  %t483 = call i1 @nyx_string_equals(%nyx_string* %t480, %nyx_string* %t482)
  br i1 %t483, label %sc_and_rhs109, label %sc_and_end110
sc_and_rhs109:
  %t484 = load i64, i64* %t242
  %t485 = icmp sge i64 %t484, 2
  store i1 %t485, i1* %t479
  br label %sc_and_end110
sc_and_end110:
  %t486 = load i1, i1* %t479
  br i1 %t486, label %then111, label %else112
then111:
  %t487 = load { i64, i8* }*, { i64, i8* }** %t239
  %t488 = call i64 @nyx_array_get({ i64, i8* }* %t487, i64 0)
  %t489 = inttoptr i64 %t488 to { i64, i8* }*
  store { i64, i8* }* %t489, { i64, i8* }** %t490
  %t491 = load { i64, i8* }*, { i64, i8* }** %t239
  %t492 = call i64 @nyx_array_get({ i64, i8* }* %t491, i64 1)
  %t493 = inttoptr i64 %t492 to { i64, i8* }*
  store { i64, i8* }* %t493, { i64, i8* }** %t494
  %t495 = load { i64, i8* }*, { i64, i8* }** %t244
  %t496 = load { i64, i8* }*, { i64, i8* }** %t490
  %t497 = ptrtoint { i64, i8* }* %t496 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t495, i64 %t497, i64 5)
  %t498 = load { i64, i8* }*, { i64, i8* }** %t244
  %t499 = load { i64, i8* }*, { i64, i8* }** %t494
  %t500 = ptrtoint { i64, i8* }* %t499 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t498, i64 %t500, i64 5)
  %t501 = load { i64, i8* }*, { i64, i8* }** %t244
  ret { i64, i8* }* %t501
else112:
  br label %merge113
merge113:
  store i1 false, i1* %t502
  %t503 = load %nyx_string*, %nyx_string** %t236
  %t504 = getelementptr [4 x i8], [4 x i8]* @.str18, i32 0, i32 0
  %t505 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str18.c, i8* %t504, i64 3)
  %t506 = call i1 @nyx_string_equals(%nyx_string* %t503, %nyx_string* %t505)
  br i1 %t506, label %sc_and_rhs114, label %sc_and_end115
sc_and_rhs114:
  %t507 = load i64, i64* %t242
  %t508 = icmp sge i64 %t507, 3
  store i1 %t508, i1* %t502
  br label %sc_and_end115
sc_and_end115:
  %t509 = load i1, i1* %t502
  br i1 %t509, label %then116, label %else117
then116:
  %t510 = load { i64, i8* }*, { i64, i8* }** %t239
  %t511 = call i64 @nyx_array_get({ i64, i8* }* %t510, i64 1)
  %t512 = inttoptr i64 %t511 to { i64, i8* }*
  store { i64, i8* }* %t512, { i64, i8* }** %t513
  %t514 = load { i64, i8* }*, { i64, i8* }** %t239
  %t515 = call i64 @nyx_array_get({ i64, i8* }* %t514, i64 2)
  %t516 = inttoptr i64 %t515 to { i64, i8* }*
  store { i64, i8* }* %t516, { i64, i8* }** %t517
  %t518 = load { i64, i8* }*, { i64, i8* }** %t244
  %t519 = load { i64, i8* }*, { i64, i8* }** %t513
  %t520 = ptrtoint { i64, i8* }* %t519 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t518, i64 %t520, i64 5)
  %t521 = load { i64, i8* }*, { i64, i8* }** %t244
  %t522 = load { i64, i8* }*, { i64, i8* }** %t517
  %t523 = ptrtoint { i64, i8* }* %t522 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t521, i64 %t523, i64 5)
  %t524 = load { i64, i8* }*, { i64, i8* }** %t244
  ret { i64, i8* }* %t524
else117:
  br label %merge118
merge118:
  store i1 false, i1* %t525
  %t526 = load %nyx_string*, %nyx_string** %t236
  %t527 = getelementptr [10 x i8], [10 x i8]* @.str19, i32 0, i32 0
  %t528 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str19.c, i8* %t527, i64 9)
  %t529 = call i1 @nyx_string_equals(%nyx_string* %t526, %nyx_string* %t528)
  br i1 %t529, label %sc_and_rhs119, label %sc_and_end120
sc_and_rhs119:
  %t530 = load i64, i64* %t242
  %t531 = icmp sge i64 %t530, 3
  store i1 %t531, i1* %t525
  br label %sc_and_end120
sc_and_end120:
  %t532 = load i1, i1* %t525
  br i1 %t532, label %then121, label %else122
then121:
  %t533 = load { i64, i8* }*, { i64, i8* }** %t239
  %t534 = call i64 @nyx_array_get({ i64, i8* }* %t533, i64 1)
  %t535 = inttoptr i64 %t534 to { i64, i8* }*
  store { i64, i8* }* %t535, { i64, i8* }** %t536
  %t537 = load { i64, i8* }*, { i64, i8* }** %t239
  %t538 = call i64 @nyx_array_get({ i64, i8* }* %t537, i64 2)
  %t539 = inttoptr i64 %t538 to { i64, i8* }*
  store { i64, i8* }* %t539, { i64, i8* }** %t540
  %t541 = load { i64, i8* }*, { i64, i8* }** %t244
  %t542 = load { i64, i8* }*, { i64, i8* }** %t536
  %t543 = ptrtoint { i64, i8* }* %t542 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t541, i64 %t543, i64 5)
  %t544 = load { i64, i8* }*, { i64, i8* }** %t244
  %t545 = load { i64, i8* }*, { i64, i8* }** %t540
  %t546 = ptrtoint { i64, i8* }* %t545 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t544, i64 %t546, i64 5)
  %t547 = load { i64, i8* }*, { i64, i8* }** %t244
  ret { i64, i8* }* %t547
else122:
  br label %merge123
merge123:
  store i1 false, i1* %t548
  %t549 = load %nyx_string*, %nyx_string** %t236
  %t550 = getelementptr [6 x i8], [6 x i8]* @.str20, i32 0, i32 0
  %t551 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str20.c, i8* %t550, i64 5)
  %t552 = call i1 @nyx_string_equals(%nyx_string* %t549, %nyx_string* %t551)
  br i1 %t552, label %sc_and_rhs124, label %sc_and_end125
sc_and_rhs124:
  %t553 = load i64, i64* %t242
  %t554 = icmp sge i64 %t553, 1
  store i1 %t554, i1* %t548
  br label %sc_and_end125
sc_and_end125:
  %t555 = load i1, i1* %t548
  br i1 %t555, label %then126, label %else127
then126:
  %t556 = load { i64, i8* }*, { i64, i8* }** %t239
  %t557 = call i64 @nyx_array_get({ i64, i8* }* %t556, i64 0)
  %t558 = inttoptr i64 %t557 to { i64, i8* }*
  store { i64, i8* }* %t558, { i64, i8* }** %t559
  store i64 0, i64* %t560
  br label %while_cond129
while_cond129:
  %t561 = load i64, i64* %t560
  %t562 = load { i64, i8* }*, { i64, i8* }** %t559
  %t563 = call i64 @nyx_array_length({ i64, i8* }* %t562)
  %t564 = icmp slt i64 %t561, %t563
  br i1 %t564, label %while_body130, label %while_end131
while_body130:
  %t565 = load { i64, i8* }*, { i64, i8* }** %t559
  %t566 = load i64, i64* %t560
  %t567 = call i64 @nyx_array_get({ i64, i8* }* %t565, i64 %t566)
  %t568 = inttoptr i64 %t567 to { i64, i8* }*
  store { i64, i8* }* %t568, { i64, i8* }** %t569
  %t570 = load { i64, i8* }*, { i64, i8* }** %t244
  %t571 = load { i64, i8* }*, { i64, i8* }** %t569
  %t572 = ptrtoint { i64, i8* }* %t571 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t570, i64 %t572, i64 5)
  %t573 = load i64, i64* %t560
  %t574 = add i64 %t573, 1
  store i64 %t574, i64* %t560
  br label %while_cond129
while_end131:
  %t575 = load { i64, i8* }*, { i64, i8* }** %t244
  ret { i64, i8* }* %t575
else127:
  br label %merge128
merge128:
  store i1 false, i1* %t576
  %t577 = load %nyx_string*, %nyx_string** %t236
  %t578 = getelementptr [4 x i8], [4 x i8]* @.str21, i32 0, i32 0
  %t579 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str21.c, i8* %t578, i64 3)
  %t580 = call i1 @nyx_string_equals(%nyx_string* %t577, %nyx_string* %t579)
  br i1 %t580, label %sc_and_rhs132, label %sc_and_end133
sc_and_rhs132:
  %t581 = load i64, i64* %t242
  %t582 = icmp sge i64 %t581, 3
  store i1 %t582, i1* %t576
  br label %sc_and_end133
sc_and_end133:
  %t583 = load i1, i1* %t576
  br i1 %t583, label %then134, label %else135
then134:
  %t584 = load { i64, i8* }*, { i64, i8* }** %t239
  %t585 = call i64 @nyx_array_get({ i64, i8* }* %t584, i64 2)
  %t586 = inttoptr i64 %t585 to { i64, i8* }*
  store { i64, i8* }* %t586, { i64, i8* }** %t587
  %t588 = load { i64, i8* }*, { i64, i8* }** %t244
  %t589 = load { i64, i8* }*, { i64, i8* }** %t587
  %t590 = ptrtoint { i64, i8* }* %t589 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t588, i64 %t590, i64 5)
  %t591 = load { i64, i8* }*, { i64, i8* }** %t244
  ret { i64, i8* }* %t591
else135:
  br label %merge136
merge136:
  store i1 false, i1* %t592
  %t593 = load %nyx_string*, %nyx_string** %t236
  %t594 = getelementptr [22 x i8], [22 x i8]* @.str22, i32 0, i32 0
  %t595 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str22.c, i8* %t594, i64 21)
  %t596 = call i1 @nyx_string_equals(%nyx_string* %t593, %nyx_string* %t595)
  br i1 %t596, label %sc_and_rhs137, label %sc_and_end138
sc_and_rhs137:
  %t597 = load i64, i64* %t242
  %t598 = icmp sge i64 %t597, 3
  store i1 %t598, i1* %t592
  br label %sc_and_end138
sc_and_end138:
  %t599 = load i1, i1* %t592
  br i1 %t599, label %then139, label %else140
then139:
  %t600 = load { i64, i8* }*, { i64, i8* }** %t239
  %t601 = call i64 @nyx_array_get({ i64, i8* }* %t600, i64 2)
  %t602 = inttoptr i64 %t601 to { i64, i8* }*
  store { i64, i8* }* %t602, { i64, i8* }** %t603
  %t604 = load { i64, i8* }*, { i64, i8* }** %t244
  %t605 = load { i64, i8* }*, { i64, i8* }** %t603
  %t606 = ptrtoint { i64, i8* }* %t605 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t604, i64 %t606, i64 5)
  %t607 = load { i64, i8* }*, { i64, i8* }** %t244
  ret { i64, i8* }* %t607
else140:
  br label %merge141
merge141:
  store i1 false, i1* %t608
  %t609 = load %nyx_string*, %nyx_string** %t236
  %t610 = getelementptr [7 x i8], [7 x i8]* @.str23, i32 0, i32 0
  %t611 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str23.c, i8* %t610, i64 6)
  %t612 = call i1 @nyx_string_equals(%nyx_string* %t609, %nyx_string* %t611)
  br i1 %t612, label %sc_and_rhs142, label %sc_and_end143
sc_and_rhs142:
  %t613 = load i64, i64* %t242
  %t614 = icmp sge i64 %t613, 2
  store i1 %t614, i1* %t608
  br label %sc_and_end143
sc_and_end143:
  %t615 = load i1, i1* %t608
  br i1 %t615, label %then144, label %else145
then144:
  %t616 = load { i64, i8* }*, { i64, i8* }** %t239
  %t617 = call i64 @nyx_array_get({ i64, i8* }* %t616, i64 1)
  %t618 = inttoptr i64 %t617 to { i64, i8* }*
  store { i64, i8* }* %t618, { i64, i8* }** %t619
  %t620 = load { i64, i8* }*, { i64, i8* }** %t244
  %t621 = load { i64, i8* }*, { i64, i8* }** %t619
  %t622 = ptrtoint { i64, i8* }* %t621 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t620, i64 %t622, i64 5)
  %t623 = load { i64, i8* }*, { i64, i8* }** %t244
  ret { i64, i8* }* %t623
else145:
  br label %merge146
merge146:
  store i1 false, i1* %t624
  %t625 = load %nyx_string*, %nyx_string** %t236
  %t626 = getelementptr [13 x i8], [13 x i8]* @.str24, i32 0, i32 0
  %t627 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str24.c, i8* %t626, i64 12)
  %t628 = call i1 @nyx_string_equals(%nyx_string* %t625, %nyx_string* %t627)
  br i1 %t628, label %sc_and_rhs147, label %sc_and_end148
sc_and_rhs147:
  %t629 = load i64, i64* %t242
  %t630 = icmp sge i64 %t629, 3
  store i1 %t630, i1* %t624
  br label %sc_and_end148
sc_and_end148:
  %t631 = load i1, i1* %t624
  br i1 %t631, label %then149, label %else150
then149:
  %t632 = load { i64, i8* }*, { i64, i8* }** %t239
  %t633 = call i64 @nyx_array_get({ i64, i8* }* %t632, i64 0)
  %t634 = inttoptr i64 %t633 to { i64, i8* }*
  store { i64, i8* }* %t634, { i64, i8* }** %t635
  %t636 = load { i64, i8* }*, { i64, i8* }** %t239
  %t637 = call i64 @nyx_array_get({ i64, i8* }* %t636, i64 1)
  %t638 = inttoptr i64 %t637 to { i64, i8* }*
  store { i64, i8* }* %t638, { i64, i8* }** %t639
  %t640 = load { i64, i8* }*, { i64, i8* }** %t239
  %t641 = call i64 @nyx_array_get({ i64, i8* }* %t640, i64 2)
  %t642 = inttoptr i64 %t641 to { i64, i8* }*
  store { i64, i8* }* %t642, { i64, i8* }** %t643
  %t644 = load { i64, i8* }*, { i64, i8* }** %t244
  %t645 = load { i64, i8* }*, { i64, i8* }** %t635
  %t646 = ptrtoint { i64, i8* }* %t645 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t644, i64 %t646, i64 5)
  %t647 = load { i64, i8* }*, { i64, i8* }** %t244
  %t648 = load { i64, i8* }*, { i64, i8* }** %t639
  %t649 = ptrtoint { i64, i8* }* %t648 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t647, i64 %t649, i64 5)
  %t650 = load { i64, i8* }*, { i64, i8* }** %t244
  %t651 = load { i64, i8* }*, { i64, i8* }** %t643
  %t652 = ptrtoint { i64, i8* }* %t651 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t650, i64 %t652, i64 5)
  %t653 = load { i64, i8* }*, { i64, i8* }** %t244
  ret { i64, i8* }* %t653
else150:
  br label %merge151
merge151:
  store i1 false, i1* %t654
  %t655 = load %nyx_string*, %nyx_string** %t236
  %t656 = getelementptr [13 x i8], [13 x i8]* @.str25, i32 0, i32 0
  %t657 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str25.c, i8* %t656, i64 12)
  %t658 = call i1 @nyx_string_equals(%nyx_string* %t655, %nyx_string* %t657)
  br i1 %t658, label %sc_and_rhs152, label %sc_and_end153
sc_and_rhs152:
  %t659 = load i64, i64* %t242
  %t660 = icmp sge i64 %t659, 3
  store i1 %t660, i1* %t654
  br label %sc_and_end153
sc_and_end153:
  %t661 = load i1, i1* %t654
  br i1 %t661, label %then154, label %else155
then154:
  %t662 = load { i64, i8* }*, { i64, i8* }** %t239
  %t663 = call i64 @nyx_array_get({ i64, i8* }* %t662, i64 0)
  %t664 = inttoptr i64 %t663 to { i64, i8* }*
  store { i64, i8* }* %t664, { i64, i8* }** %t665
  %t666 = load { i64, i8* }*, { i64, i8* }** %t239
  %t667 = call i64 @nyx_array_get({ i64, i8* }* %t666, i64 2)
  %t668 = inttoptr i64 %t667 to { i64, i8* }*
  store { i64, i8* }* %t668, { i64, i8* }** %t669
  %t670 = load { i64, i8* }*, { i64, i8* }** %t244
  %t671 = load { i64, i8* }*, { i64, i8* }** %t665
  %t672 = ptrtoint { i64, i8* }* %t671 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t670, i64 %t672, i64 5)
  %t673 = load { i64, i8* }*, { i64, i8* }** %t244
  %t674 = load { i64, i8* }*, { i64, i8* }** %t669
  %t675 = ptrtoint { i64, i8* }* %t674 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t673, i64 %t675, i64 5)
  %t676 = load { i64, i8* }*, { i64, i8* }** %t244
  ret { i64, i8* }* %t676
else155:
  br label %merge156
merge156:
  store i1 false, i1* %t677
  %t678 = load %nyx_string*, %nyx_string** %t236
  %t679 = getelementptr [13 x i8], [13 x i8]* @.str26, i32 0, i32 0
  %t680 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str26.c, i8* %t679, i64 12)
  %t681 = call i1 @nyx_string_equals(%nyx_string* %t678, %nyx_string* %t680)
  br i1 %t681, label %sc_and_rhs157, label %sc_and_end158
sc_and_rhs157:
  %t682 = load i64, i64* %t242
  %t683 = icmp sge i64 %t682, 2
  store i1 %t683, i1* %t677
  br label %sc_and_end158
sc_and_end158:
  %t684 = load i1, i1* %t677
  br i1 %t684, label %then159, label %else160
then159:
  %t685 = load { i64, i8* }*, { i64, i8* }** %t239
  %t686 = call i64 @nyx_array_get({ i64, i8* }* %t685, i64 0)
  %t687 = inttoptr i64 %t686 to { i64, i8* }*
  store { i64, i8* }* %t687, { i64, i8* }** %t688
  %t689 = load { i64, i8* }*, { i64, i8* }** %t239
  %t690 = call i64 @nyx_array_get({ i64, i8* }* %t689, i64 1)
  %t691 = inttoptr i64 %t690 to { i64, i8* }*
  store { i64, i8* }* %t691, { i64, i8* }** %t692
  %t693 = load { i64, i8* }*, { i64, i8* }** %t244
  %t694 = load { i64, i8* }*, { i64, i8* }** %t688
  %t695 = ptrtoint { i64, i8* }* %t694 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t693, i64 %t695, i64 5)
  %t696 = load { i64, i8* }*, { i64, i8* }** %t244
  %t697 = load { i64, i8* }*, { i64, i8* }** %t692
  %t698 = ptrtoint { i64, i8* }* %t697 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t696, i64 %t698, i64 5)
  %t699 = load { i64, i8* }*, { i64, i8* }** %t244
  ret { i64, i8* }* %t699
else160:
  br label %merge161
merge161:
  store i1 false, i1* %t700
  %t701 = load %nyx_string*, %nyx_string** %t236
  %t702 = getelementptr [7 x i8], [7 x i8]* @.str27, i32 0, i32 0
  %t703 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str27.c, i8* %t702, i64 6)
  %t704 = call i1 @nyx_string_equals(%nyx_string* %t701, %nyx_string* %t703)
  br i1 %t704, label %sc_and_rhs162, label %sc_and_end163
sc_and_rhs162:
  %t705 = load i64, i64* %t242
  %t706 = icmp sge i64 %t705, 1
  store i1 %t706, i1* %t700
  br label %sc_and_end163
sc_and_end163:
  %t707 = load i1, i1* %t700
  br i1 %t707, label %then164, label %else165
then164:
  %t708 = load { i64, i8* }*, { i64, i8* }** %t239
  %t709 = call i64 @nyx_array_get({ i64, i8* }* %t708, i64 0)
  %t710 = inttoptr i64 %t709 to { i64, i8* }*
  store { i64, i8* }* %t710, { i64, i8* }** %t711
  %t712 = load { i64, i8* }*, { i64, i8* }** %t244
  %t713 = load { i64, i8* }*, { i64, i8* }** %t711
  %t714 = ptrtoint { i64, i8* }* %t713 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t712, i64 %t714, i64 5)
  %t715 = load { i64, i8* }*, { i64, i8* }** %t244
  ret { i64, i8* }* %t715
else165:
  br label %merge166
merge166:
  store i1 false, i1* %t716
  %t717 = load %nyx_string*, %nyx_string** %t236
  %t718 = getelementptr [12 x i8], [12 x i8]* @.str28, i32 0, i32 0
  %t719 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str28.c, i8* %t718, i64 11)
  %t720 = call i1 @nyx_string_equals(%nyx_string* %t717, %nyx_string* %t719)
  br i1 %t720, label %sc_and_rhs167, label %sc_and_end168
sc_and_rhs167:
  %t721 = load i64, i64* %t242
  %t722 = icmp sge i64 %t721, 2
  store i1 %t722, i1* %t716
  br label %sc_and_end168
sc_and_end168:
  %t723 = load i1, i1* %t716
  br i1 %t723, label %then169, label %else170
then169:
  %t724 = load { i64, i8* }*, { i64, i8* }** %t239
  %t725 = call i64 @nyx_array_get({ i64, i8* }* %t724, i64 1)
  %t726 = inttoptr i64 %t725 to { i64, i8* }*
  store { i64, i8* }* %t726, { i64, i8* }** %t727
  store i64 0, i64* %t728
  br label %while_cond172
while_cond172:
  %t729 = load i64, i64* %t728
  %t730 = load { i64, i8* }*, { i64, i8* }** %t727
  %t731 = call i64 @nyx_array_length({ i64, i8* }* %t730)
  %t732 = icmp slt i64 %t729, %t731
  br i1 %t732, label %while_body173, label %while_end174
while_body173:
  %t733 = load { i64, i8* }*, { i64, i8* }** %t727
  %t734 = load i64, i64* %t728
  %t735 = call i64 @nyx_array_get({ i64, i8* }* %t733, i64 %t734)
  %t736 = inttoptr i64 %t735 to { i64, i8* }*
  store { i64, i8* }* %t736, { i64, i8* }** %t737
  %t738 = load { i64, i8* }*, { i64, i8* }** %t737
  %t739 = call i64 @nyx_array_length({ i64, i8* }* %t738)
  %t740 = icmp sge i64 %t739, 2
  br i1 %t740, label %then175, label %else176
then175:
  %t741 = load { i64, i8* }*, { i64, i8* }** %t737
  %t742 = call i64 @nyx_array_get({ i64, i8* }* %t741, i64 1)
  %t743 = inttoptr i64 %t742 to { i64, i8* }*
  store { i64, i8* }* %t743, { i64, i8* }** %t744
  %t745 = load { i64, i8* }*, { i64, i8* }** %t244
  %t746 = load { i64, i8* }*, { i64, i8* }** %t744
  %t747 = ptrtoint { i64, i8* }* %t746 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t745, i64 %t747, i64 5)
  br label %merge177
else176:
  br label %merge177
merge177:
  %t748 = load i64, i64* %t728
  %t749 = add i64 %t748, 1
  store i64 %t749, i64* %t728
  br label %while_cond172
while_end174:
  %t750 = load { i64, i8* }*, { i64, i8* }** %t244
  ret { i64, i8* }* %t750
else170:
  br label %merge171
merge171:
  store i1 false, i1* %t751
  %t752 = load %nyx_string*, %nyx_string** %t236
  %t753 = getelementptr [7 x i8], [7 x i8]* @.str29, i32 0, i32 0
  %t754 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str29.c, i8* %t753, i64 6)
  %t755 = call i1 @nyx_string_equals(%nyx_string* %t752, %nyx_string* %t754)
  br i1 %t755, label %sc_and_rhs178, label %sc_and_end179
sc_and_rhs178:
  %t756 = load i64, i64* %t242
  %t757 = icmp sge i64 %t756, 1
  store i1 %t757, i1* %t751
  br label %sc_and_end179
sc_and_end179:
  %t758 = load i1, i1* %t751
  br i1 %t758, label %then180, label %else181
then180:
  %t759 = load { i64, i8* }*, { i64, i8* }** %t239
  %t760 = call i64 @nyx_array_get({ i64, i8* }* %t759, i64 0)
  %t761 = inttoptr i64 %t760 to { i64, i8* }*
  store { i64, i8* }* %t761, { i64, i8* }** %t762
  %t763 = load { i64, i8* }*, { i64, i8* }** %t244
  %t764 = load { i64, i8* }*, { i64, i8* }** %t762
  %t765 = ptrtoint { i64, i8* }* %t764 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t763, i64 %t765, i64 5)
  %t766 = load { i64, i8* }*, { i64, i8* }** %t244
  ret { i64, i8* }* %t766
else181:
  br label %merge182
merge182:
  store i1 false, i1* %t767
  %t768 = load %nyx_string*, %nyx_string** %t236
  %t769 = getelementptr [5 x i8], [5 x i8]* @.str30, i32 0, i32 0
  %t770 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str30.c, i8* %t769, i64 4)
  %t771 = call i1 @nyx_string_equals(%nyx_string* %t768, %nyx_string* %t770)
  br i1 %t771, label %sc_and_rhs183, label %sc_and_end184
sc_and_rhs183:
  %t772 = load i64, i64* %t242
  %t773 = icmp sge i64 %t772, 1
  store i1 %t773, i1* %t767
  br label %sc_and_end184
sc_and_end184:
  %t774 = load i1, i1* %t767
  br i1 %t774, label %then185, label %else186
then185:
  %t775 = load { i64, i8* }*, { i64, i8* }** %t239
  %t776 = call i64 @nyx_array_get({ i64, i8* }* %t775, i64 0)
  %t777 = inttoptr i64 %t776 to { i64, i8* }*
  store { i64, i8* }* %t777, { i64, i8* }** %t778
  %t779 = load { i64, i8* }*, { i64, i8* }** %t244
  %t780 = load { i64, i8* }*, { i64, i8* }** %t778
  %t781 = ptrtoint { i64, i8* }* %t780 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t779, i64 %t781, i64 5)
  %t782 = load { i64, i8* }*, { i64, i8* }** %t244
  ret { i64, i8* }* %t782
else186:
  br label %merge187
merge187:
  store i1 false, i1* %t783
  %t784 = load %nyx_string*, %nyx_string** %t236
  %t785 = getelementptr [6 x i8], [6 x i8]* @.str31, i32 0, i32 0
  %t786 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str31.c, i8* %t785, i64 5)
  %t787 = call i1 @nyx_string_equals(%nyx_string* %t784, %nyx_string* %t786)
  br i1 %t787, label %sc_and_rhs188, label %sc_and_end189
sc_and_rhs188:
  %t788 = load i64, i64* %t242
  %t789 = icmp sge i64 %t788, 2
  store i1 %t789, i1* %t783
  br label %sc_and_end189
sc_and_end189:
  %t790 = load i1, i1* %t783
  br i1 %t790, label %then190, label %else191
then190:
  %t791 = load { i64, i8* }*, { i64, i8* }** %t239
  %t792 = call i64 @nyx_array_get({ i64, i8* }* %t791, i64 0)
  %t793 = inttoptr i64 %t792 to { i64, i8* }*
  store { i64, i8* }* %t793, { i64, i8* }** %t794
  %t795 = load { i64, i8* }*, { i64, i8* }** %t239
  %t796 = call i64 @nyx_array_get({ i64, i8* }* %t795, i64 1)
  %t797 = inttoptr i64 %t796 to { i64, i8* }*
  store { i64, i8* }* %t797, { i64, i8* }** %t798
  %t799 = load { i64, i8* }*, { i64, i8* }** %t244
  %t800 = load { i64, i8* }*, { i64, i8* }** %t794
  %t801 = ptrtoint { i64, i8* }* %t800 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t799, i64 %t801, i64 5)
  %t802 = load { i64, i8* }*, { i64, i8* }** %t244
  %t803 = load { i64, i8* }*, { i64, i8* }** %t798
  %t804 = ptrtoint { i64, i8* }* %t803 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t802, i64 %t804, i64 5)
  %t805 = load { i64, i8* }*, { i64, i8* }** %t244
  ret { i64, i8* }* %t805
else191:
  br label %merge192
merge192:
  %t806 = load { i64, i8* }*, { i64, i8* }** %t244
  ret { i64, i8* }* %t806
}

define internal { i64, i8* }* @licm_rewrite(
{ i64, i8* }* %node.param, { i64, i8* }* %litmap.param, { i64, i8* }* %sust.param) {
  %node.ptr = alloca { i64, i8* }*
  %litmap.ptr = alloca { i64, i8* }*
  %sust.ptr = alloca { i64, i8* }*
  %t809 = alloca %ASTNode
  %t812 = alloca %nyx_string*
  %t815 = alloca { i64, i8* }*
  %t841 = alloca i1
  %t842 = alloca i1
  %t858 = alloca %nyx_string*
  %t862 = alloca %nyx_string*
  %t869 = alloca %nyx_string*
  %t873 = alloca %nyx_string*
  %t876 = alloca i64
  %t879 = alloca i64
  %t888 = alloca { i64, i8* }*
  %t897 = alloca { i64, i8* }*
  %t909 = alloca i1
  %t921 = alloca %nyx_string*
  %t925 = alloca %nyx_string*
  %t938 = alloca i1
  %t950 = alloca { i64, i8* }*
  %t954 = alloca { i64, i8* }*
  %t956 = alloca { i64, i8* }*
  %t957 = alloca i64
  %t960 = alloca %nyx_string*
  %t969 = alloca { i64, i8* }*
  %t972 = alloca %ASTNode
  %t975 = alloca { i64, i8* }*
  %t981 = alloca i64
  %t985 = alloca { i64, i8* }*
  %t989 = alloca { i64, i8* }*
  %t994 = alloca { i64, i8* }*
  %t999 = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  store { i64, i8* }* %litmap.param, { i64, i8* }** %litmap.ptr
  store { i64, i8* }* %sust.param, { i64, i8* }** %sust.ptr
  %t807 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %t808 = call %ASTNode @licm_root_of({ i64, i8* }* %t807)
  store %ASTNode %t808, %ASTNode* %t809
  %t810 = getelementptr %ASTNode, %ASTNode* %t809, i32 0, i32 0
  %t811 = load %nyx_string*, %nyx_string** %t810
  store %nyx_string* %t811, %nyx_string** %t812
  %t813 = getelementptr %ASTNode, %ASTNode* %t809, i32 0, i32 1
  %t814 = load { i64, i8* }*, { i64, i8* }** %t813
  store { i64, i8* }* %t814, { i64, i8* }** %t815
  %t816 = load %nyx_string*, %nyx_string** %t812
  %t817 = getelementptr [9 x i8], [9 x i8]* @.str32, i32 0, i32 0
  %t818 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str32.c, i8* %t817, i64 8)
  %t819 = call i1 @nyx_string_equals(%nyx_string* %t816, %nyx_string* %t818)
  br i1 %t819, label %then193, label %else194
then193:
  %t820 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  ret { i64, i8* }* %t820
else194:
  br label %merge195
merge195:
  %t821 = load %nyx_string*, %nyx_string** %t812
  %t822 = getelementptr [9 x i8], [9 x i8]* @.str33, i32 0, i32 0
  %t823 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str33.c, i8* %t822, i64 8)
  %t824 = call i1 @nyx_string_equals(%nyx_string* %t821, %nyx_string* %t823)
  br i1 %t824, label %then196, label %else197
then196:
  %t825 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  ret { i64, i8* }* %t825
else197:
  br label %merge198
merge198:
  %t826 = load %nyx_string*, %nyx_string** %t812
  %t827 = getelementptr [7 x i8], [7 x i8]* @.str34, i32 0, i32 0
  %t828 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str34.c, i8* %t827, i64 6)
  %t829 = call i1 @nyx_string_equals(%nyx_string* %t826, %nyx_string* %t828)
  br i1 %t829, label %then199, label %else200
then199:
  %t830 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  ret { i64, i8* }* %t830
else200:
  br label %merge201
merge201:
  %t831 = load %nyx_string*, %nyx_string** %t812
  %t832 = getelementptr [8 x i8], [8 x i8]* @.str35, i32 0, i32 0
  %t833 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str35.c, i8* %t832, i64 7)
  %t834 = call i1 @nyx_string_equals(%nyx_string* %t831, %nyx_string* %t833)
  br i1 %t834, label %then202, label %else203
then202:
  %t835 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  ret { i64, i8* }* %t835
else203:
  br label %merge204
merge204:
  %t836 = load %nyx_string*, %nyx_string** %t812
  %t837 = getelementptr [6 x i8], [6 x i8]* @.str36, i32 0, i32 0
  %t838 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str36.c, i8* %t837, i64 5)
  %t839 = call i1 @nyx_string_equals(%nyx_string* %t836, %nyx_string* %t838)
  br i1 %t839, label %then205, label %else206
then205:
  %t840 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  ret { i64, i8* }* %t840
else206:
  br label %merge207
merge207:
  store i1 false, i1* %t841
  store i1 false, i1* %t842
  %t843 = load { i64, i8* }*, { i64, i8* }** %sust.ptr
  %t844 = call i64 @nyx_array_length({ i64, i8* }* %t843)
  %t845 = icmp eq i64 %t844, 3
  br i1 %t845, label %sc_and_rhs208, label %sc_and_end209
sc_and_rhs208:
  %t846 = load %nyx_string*, %nyx_string** %t812
  %t847 = getelementptr [11 x i8], [11 x i8]* @.str37, i32 0, i32 0
  %t848 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str37.c, i8* %t847, i64 10)
  %t849 = call i1 @nyx_string_equals(%nyx_string* %t846, %nyx_string* %t848)
  store i1 %t849, i1* %t842
  br label %sc_and_end209
sc_and_end209:
  %t850 = load i1, i1* %t842
  br i1 %t850, label %sc_and_rhs210, label %sc_and_end211
sc_and_rhs210:
  %t851 = load { i64, i8* }*, { i64, i8* }** %t815
  %t852 = call i64 @nyx_array_length({ i64, i8* }* %t851)
  %t853 = icmp sge i64 %t852, 1
  store i1 %t853, i1* %t841
  br label %sc_and_end211
sc_and_end211:
  %t854 = load i1, i1* %t841
  br i1 %t854, label %then212, label %else213
then212:
  %t855 = load { i64, i8* }*, { i64, i8* }** %t815
  %t856 = call i64 @nyx_array_get_checked({ i64, i8* }* %t855, i64 0, i64 2)
  %t857 = inttoptr i64 %t856 to %nyx_string*
  store %nyx_string* %t857, %nyx_string** %t858
  %t859 = load { i64, i8* }*, { i64, i8* }** %sust.ptr
  %t860 = call i64 @nyx_array_get_checked({ i64, i8* }* %t859, i64 0, i64 2)
  %t861 = inttoptr i64 %t860 to %nyx_string*
  store %nyx_string* %t861, %nyx_string** %t862
  %t863 = load %nyx_string*, %nyx_string** %t858
  %t864 = load %nyx_string*, %nyx_string** %t862
  %t865 = call i1 @nyx_string_equals(%nyx_string* %t863, %nyx_string* %t864)
  br i1 %t865, label %then215, label %else216
then215:
  %t866 = load { i64, i8* }*, { i64, i8* }** %sust.ptr
  %t867 = call i64 @nyx_array_get_checked({ i64, i8* }* %t866, i64 1, i64 2)
  %t868 = inttoptr i64 %t867 to %nyx_string*
  store %nyx_string* %t868, %nyx_string** %t869
  %t870 = load { i64, i8* }*, { i64, i8* }** %sust.ptr
  %t871 = call i64 @nyx_array_get_checked({ i64, i8* }* %t870, i64 2, i64 2)
  %t872 = inttoptr i64 %t871 to %nyx_string*
  store %nyx_string* %t872, %nyx_string** %t873
  %t874 = getelementptr %ASTNode, %ASTNode* %t809, i32 0, i32 2
  %t875 = load i64, i64* %t874
  store i64 %t875, i64* %t876
  %t877 = getelementptr %ASTNode, %ASTNode* %t809, i32 0, i32 3
  %t878 = load i64, i64* %t877
  store i64 %t878, i64* %t879
  %t880 = getelementptr [11 x i8], [11 x i8]* @.str38, i32 0, i32 0
  %t881 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str38.c, i8* %t880, i64 10)
  %t882 = call { i64, i8* }* @nyx_array_new_ptr()
  %t883 = load %nyx_string*, %nyx_string** %t869
  %t884 = ptrtoint %nyx_string* %t883 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t882, i64 %t884, i64 2)
  %t885 = load i64, i64* %t876
  %t886 = load i64, i64* %t879
  %t887 = call { i64, i8* }* @licm_make_en(%nyx_string* %t881, { i64, i8* }* %t882, i64 %t885, i64 %t886)
  store { i64, i8* }* %t887, { i64, i8* }** %t888
  %t889 = getelementptr [11 x i8], [11 x i8]* @.str39, i32 0, i32 0
  %t890 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str39.c, i8* %t889, i64 10)
  %t891 = call { i64, i8* }* @nyx_array_new_ptr()
  %t892 = load %nyx_string*, %nyx_string** %t873
  %t893 = ptrtoint %nyx_string* %t892 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t891, i64 %t893, i64 2)
  %t894 = load i64, i64* %t876
  %t895 = load i64, i64* %t879
  %t896 = call { i64, i8* }* @licm_make_en(%nyx_string* %t890, { i64, i8* }* %t891, i64 %t894, i64 %t895)
  store { i64, i8* }* %t896, { i64, i8* }** %t897
  %t898 = getelementptr [6 x i8], [6 x i8]* @.str40, i32 0, i32 0
  %t899 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str40.c, i8* %t898, i64 5)
  %t900 = call { i64, i8* }* @nyx_array_new_ptr()
  %t901 = load { i64, i8* }*, { i64, i8* }** %t888
  %t902 = ptrtoint { i64, i8* }* %t901 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t900, i64 %t902, i64 5)
  %t903 = load { i64, i8* }*, { i64, i8* }** %t897
  %t904 = ptrtoint { i64, i8* }* %t903 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t900, i64 %t904, i64 5)
  %t905 = load i64, i64* %t876
  %t906 = load i64, i64* %t879
  %t907 = call { i64, i8* }* @licm_make_en(%nyx_string* %t899, { i64, i8* }* %t900, i64 %t905, i64 %t906)
  ret { i64, i8* }* %t907
else216:
  br label %merge217
merge217:
  %t908 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  ret { i64, i8* }* %t908
else213:
  br label %merge214
merge214:
  store i1 false, i1* %t909
  %t910 = load %nyx_string*, %nyx_string** %t812
  %t911 = getelementptr [7 x i8], [7 x i8]* @.str41, i32 0, i32 0
  %t912 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str41.c, i8* %t911, i64 6)
  %t913 = call i1 @nyx_string_equals(%nyx_string* %t910, %nyx_string* %t912)
  br i1 %t913, label %sc_and_rhs218, label %sc_and_end219
sc_and_rhs218:
  %t914 = load { i64, i8* }*, { i64, i8* }** %t815
  %t915 = call i64 @nyx_array_length({ i64, i8* }* %t914)
  %t916 = icmp sge i64 %t915, 1
  store i1 %t916, i1* %t909
  br label %sc_and_end219
sc_and_end219:
  %t917 = load i1, i1* %t909
  br i1 %t917, label %then220, label %else221
then220:
  %t918 = load { i64, i8* }*, { i64, i8* }** %t815
  %t919 = call i64 @nyx_array_get_checked({ i64, i8* }* %t918, i64 0, i64 2)
  %t920 = inttoptr i64 %t919 to %nyx_string*
  store %nyx_string* %t920, %nyx_string** %t921
  %t922 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %t923 = load %nyx_string*, %nyx_string** %t921
  %t924 = call %nyx_string* @licm_lookup({ i64, i8* }* %t922, %nyx_string* %t923)
  store %nyx_string* %t924, %nyx_string** %t925
  %t926 = load %nyx_string*, %nyx_string** %t925
  %t927 = getelementptr [1 x i8], [1 x i8]* @.str42, i32 0, i32 0
  %t928 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str42.c, i8* %t927, i64 0)
  %t929 = call i1 @nyx_string_equals(%nyx_string* %t926, %nyx_string* %t928)
  %t930 = xor i1 %t929, true
  br i1 %t930, label %then223, label %else224
then223:
  %t931 = getelementptr [11 x i8], [11 x i8]* @.str43, i32 0, i32 0
  %t932 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str43.c, i8* %t931, i64 10)
  %t933 = call { i64, i8* }* @nyx_array_new_ptr()
  %t934 = load %nyx_string*, %nyx_string** %t925
  %t935 = ptrtoint %nyx_string* %t934 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t933, i64 %t935, i64 2)
  %t936 = call { i64, i8* }* @licm_make(%nyx_string* %t932, { i64, i8* }* %t933)
  ret { i64, i8* }* %t936
else224:
  br label %merge225
merge225:
  %t937 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  ret { i64, i8* }* %t937
else221:
  br label %merge222
merge222:
  store i1 false, i1* %t938
  %t939 = load %nyx_string*, %nyx_string** %t812
  %t940 = getelementptr [6 x i8], [6 x i8]* @.str44, i32 0, i32 0
  %t941 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str44.c, i8* %t940, i64 5)
  %t942 = call i1 @nyx_string_equals(%nyx_string* %t939, %nyx_string* %t941)
  br i1 %t942, label %sc_and_rhs226, label %sc_and_end227
sc_and_rhs226:
  %t943 = load { i64, i8* }*, { i64, i8* }** %t815
  %t944 = call i64 @nyx_array_length({ i64, i8* }* %t943)
  %t945 = icmp sge i64 %t944, 2
  store i1 %t945, i1* %t938
  br label %sc_and_end227
sc_and_end227:
  %t946 = load i1, i1* %t938
  br i1 %t946, label %then228, label %else229
then228:
  %t947 = load { i64, i8* }*, { i64, i8* }** %t815
  %t948 = call i64 @nyx_array_get({ i64, i8* }* %t947, i64 0)
  %t949 = inttoptr i64 %t948 to { i64, i8* }*
  store { i64, i8* }* %t949, { i64, i8* }** %t950
  %t951 = load { i64, i8* }*, { i64, i8* }** %t815
  %t952 = call i64 @nyx_array_get({ i64, i8* }* %t951, i64 1)
  %t953 = inttoptr i64 %t952 to { i64, i8* }*
  store { i64, i8* }* %t953, { i64, i8* }** %t954
  %t955 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t955, { i64, i8* }** %t956
  store i64 0, i64* %t957
  %t958 = getelementptr [10 x i8], [10 x i8]* @.str45, i32 0, i32 0
  %t959 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str45.c, i8* %t958, i64 9)
  store %nyx_string* %t959, %nyx_string** %t960
  br label %while_cond231
while_cond231:
  %t961 = load i64, i64* %t957
  %t962 = load { i64, i8* }*, { i64, i8* }** %t954
  %t963 = call i64 @nyx_array_length({ i64, i8* }* %t962)
  %t964 = icmp slt i64 %t961, %t963
  br i1 %t964, label %while_body232, label %while_end233
while_body232:
  %t965 = load { i64, i8* }*, { i64, i8* }** %t954
  %t966 = load i64, i64* %t957
  %t967 = call i64 @nyx_array_get({ i64, i8* }* %t965, i64 %t966)
  %t968 = inttoptr i64 %t967 to { i64, i8* }*
  store { i64, i8* }* %t968, { i64, i8* }** %t969
  %t970 = load { i64, i8* }*, { i64, i8* }** %t969
  %t971 = call %ASTNode @licm_root_of({ i64, i8* }* %t970)
  store %ASTNode %t971, %ASTNode* %t972
  %t973 = getelementptr %ASTNode, %ASTNode* %t972, i32 0, i32 1
  %t974 = load { i64, i8* }*, { i64, i8* }** %t973
  store { i64, i8* }* %t974, { i64, i8* }** %t975
  %t976 = load { i64, i8* }*, { i64, i8* }** %t975
  %t977 = call i64 @nyx_array_length({ i64, i8* }* %t976)
  %t978 = icmp sge i64 %t977, 3
  br i1 %t978, label %then234, label %else235
then234:
  %t979 = load { i64, i8* }*, { i64, i8* }** %t975
  %t980 = call i64 @nyx_array_get({ i64, i8* }* %t979, i64 0)
  store i64 %t980, i64* %t981
  %t982 = load { i64, i8* }*, { i64, i8* }** %t975
  %t983 = call i64 @nyx_array_get({ i64, i8* }* %t982, i64 1)
  %t984 = inttoptr i64 %t983 to { i64, i8* }*
  store { i64, i8* }* %t984, { i64, i8* }** %t985
  %t986 = load { i64, i8* }*, { i64, i8* }** %t975
  %t987 = call i64 @nyx_array_get({ i64, i8* }* %t986, i64 2)
  %t988 = inttoptr i64 %t987 to { i64, i8* }*
  store { i64, i8* }* %t988, { i64, i8* }** %t989
  %t990 = load { i64, i8* }*, { i64, i8* }** %t985
  %t991 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %t992 = load { i64, i8* }*, { i64, i8* }** %sust.ptr
  %t993 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %t990, { i64, i8* }* %t991, { i64, i8* }* %t992)
  store { i64, i8* }* %t993, { i64, i8* }** %t994
  %t995 = load { i64, i8* }*, { i64, i8* }** %t989
  %t996 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %t997 = load { i64, i8* }*, { i64, i8* }** %sust.ptr
  %t998 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %t995, { i64, i8* }* %t996, { i64, i8* }* %t997)
  store { i64, i8* }* %t998, { i64, i8* }** %t999
  %t1000 = load { i64, i8* }*, { i64, i8* }** %t956
  %t1001 = load %nyx_string*, %nyx_string** %t960
  %t1002 = call { i64, i8* }* @nyx_array_new_ptr()
  %t1003 = load i64, i64* %t981
  call void @nyx_array_push({ i64, i8* }* %t1002, i64 %t1003)
  %t1004 = load { i64, i8* }*, { i64, i8* }** %t994
  %t1005 = ptrtoint { i64, i8* }* %t1004 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1002, i64 %t1005, i64 5)
  %t1006 = load { i64, i8* }*, { i64, i8* }** %t999
  %t1007 = ptrtoint { i64, i8* }* %t1006 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1002, i64 %t1007, i64 5)
  %t1008 = call { i64, i8* }* @licm_make(%nyx_string* %t1001, { i64, i8* }* %t1002)
  %t1009 = ptrtoint { i64, i8* }* %t1008 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1000, i64 %t1009, i64 5)
  br label %merge236
else235:
  %t1010 = load { i64, i8* }*, { i64, i8* }** %t956
  %t1011 = load { i64, i8* }*, { i64, i8* }** %t969
  %t1012 = ptrtoint { i64, i8* }* %t1011 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1010, i64 %t1012, i64 5)
  br label %merge236
merge236:
  %t1013 = load i64, i64* %t957
  %t1014 = add i64 %t1013, 1
  store i64 %t1014, i64* %t957
  br label %while_cond231
while_end233:
  %t1015 = getelementptr [6 x i8], [6 x i8]* @.str46, i32 0, i32 0
  %t1016 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str46.c, i8* %t1015, i64 5)
  %t1017 = call { i64, i8* }* @nyx_array_new_ptr()
  %t1018 = load { i64, i8* }*, { i64, i8* }** %t950
  %t1019 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %t1020 = load { i64, i8* }*, { i64, i8* }** %sust.ptr
  %t1021 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %t1018, { i64, i8* }* %t1019, { i64, i8* }* %t1020)
  %t1022 = ptrtoint { i64, i8* }* %t1021 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1017, i64 %t1022, i64 5)
  %t1023 = load { i64, i8* }*, { i64, i8* }** %t956
  %t1024 = ptrtoint { i64, i8* }* %t1023 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1017, i64 %t1024, i64 5)
  %t1025 = call { i64, i8* }* @licm_make(%nyx_string* %t1016, { i64, i8* }* %t1017)
  ret { i64, i8* }* %t1025
else229:
  br label %merge230
merge230:
  %t1026 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %t1027 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %t1028 = load { i64, i8* }*, { i64, i8* }** %sust.ptr
  %t1029 = call { i64, i8* }* @licm_rebuild_children({ i64, i8* }* %t1026, { i64, i8* }* %t1027, { i64, i8* }* %t1028)
  ret { i64, i8* }* %t1029
}

define internal { i64, i8* }* @licm_rebuild_children(
{ i64, i8* }* %node.param, { i64, i8* }* %litmap.param, { i64, i8* }* %sust.param) {
  %node.ptr = alloca { i64, i8* }*
  %litmap.ptr = alloca { i64, i8* }*
  %sust.ptr = alloca { i64, i8* }*
  %t1032 = alloca %ASTNode
  %t1035 = alloca %nyx_string*
  %t1038 = alloca { i64, i8* }*
  %t1041 = alloca i64
  %t1042 = alloca i1
  %t1053 = alloca %nyx_string*
  %t1057 = alloca { i64, i8* }*
  %t1061 = alloca { i64, i8* }*
  %t1077 = alloca i1
  %t1088 = alloca %nyx_string*
  %t1092 = alloca { i64, i8* }*
  %t1103 = alloca i1
  %t1114 = alloca { i64, i8* }*
  %t1118 = alloca { i64, i8* }*
  %t1120 = alloca { i64, i8* }*
  %t1121 = alloca i64
  %t1130 = alloca { i64, i8* }*
  %t1149 = alloca i1
  %t1160 = alloca { i64, i8* }*
  %t1164 = alloca %nyx_string*
  %t1168 = alloca { i64, i8* }*
  %t1170 = alloca { i64, i8* }*
  %t1171 = alloca i64
  %t1180 = alloca { i64, i8* }*
  %t1201 = alloca i1
  %t1212 = alloca { i64, i8* }*
  %t1216 = alloca { i64, i8* }*
  %t1230 = alloca i1
  %t1241 = alloca { i64, i8* }*
  %t1245 = alloca %nyx_string*
  %t1256 = alloca i1
  %t1267 = alloca { i64, i8* }*
  %t1269 = alloca { i64, i8* }*
  %t1270 = alloca i64
  %t1279 = alloca { i64, i8* }*
  %t1293 = alloca i1
  %t1304 = alloca { i64, i8* }*
  %t1308 = alloca { i64, i8* }*
  %t1310 = alloca { i64, i8* }*
  %t1311 = alloca i64
  %t1320 = alloca { i64, i8* }*
  %t1336 = alloca i1
  %t1347 = alloca { i64, i8* }*
  %t1351 = alloca { i64, i8* }*
  %t1355 = alloca { i64, i8* }*
  %t1374 = alloca i1
  %t1385 = alloca { i64, i8* }*
  %t1389 = alloca { i64, i8* }*
  %t1403 = alloca i1
  %t1414 = alloca %nyx_string*
  %t1418 = alloca { i64, i8* }*
  %t1422 = alloca { i64, i8* }*
  %t1425 = alloca i64
  %t1442 = alloca i1
  %t1452 = alloca i64
  %t1456 = alloca { i64, i8* }*
  %t1460 = alloca { i64, i8* }*
  %t1475 = alloca i1
  %t1486 = alloca { i64, i8* }*
  %t1488 = alloca { i64, i8* }*
  %t1489 = alloca i64
  %t1498 = alloca { i64, i8* }*
  %t1512 = alloca i1
  %t1522 = alloca i64
  %t1525 = alloca i64
  %t1529 = alloca { i64, i8* }*
  %t1532 = alloca i64
  %t1544 = alloca i1
  %t1554 = alloca i64
  %t1557 = alloca i64
  %t1561 = alloca { i64, i8* }*
  %t1572 = alloca i1
  %t1582 = alloca i64
  %t1586 = alloca { i64, i8* }*
  %t1596 = alloca i1
  %t1607 = alloca { i64, i8* }*
  %t1611 = alloca { i64, i8* }*
  %t1615 = alloca { i64, i8* }*
  %t1634 = alloca i1
  %t1645 = alloca { i64, i8* }*
  %t1649 = alloca %nyx_string*
  %t1653 = alloca { i64, i8* }*
  %t1669 = alloca i1
  %t1680 = alloca { i64, i8* }*
  %t1684 = alloca { i64, i8* }*
  %t1698 = alloca i1
  %t1709 = alloca { i64, i8* }*
  %t1718 = alloca i1
  %t1728 = alloca i64
  %t1732 = alloca { i64, i8* }*
  %t1735 = alloca i64
  %t1737 = alloca { i64, i8* }*
  %t1738 = alloca i64
  %t1747 = alloca { i64, i8* }*
  %t1754 = alloca %nyx_string*
  %t1758 = alloca { i64, i8* }*
  %t1781 = alloca i1
  %t1792 = alloca { i64, i8* }*
  %t1801 = alloca i1
  %t1812 = alloca { i64, i8* }*
  %t1815 = alloca i64
  %t1825 = alloca i1
  %t1836 = alloca { i64, i8* }*
  %t1840 = alloca { i64, i8* }*
  %t1843 = alloca i64
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  store { i64, i8* }* %litmap.param, { i64, i8* }** %litmap.ptr
  store { i64, i8* }* %sust.param, { i64, i8* }** %sust.ptr
  %t1030 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %t1031 = call %ASTNode @licm_root_of({ i64, i8* }* %t1030)
  store %ASTNode %t1031, %ASTNode* %t1032
  %t1033 = getelementptr %ASTNode, %ASTNode* %t1032, i32 0, i32 0
  %t1034 = load %nyx_string*, %nyx_string** %t1033
  store %nyx_string* %t1034, %nyx_string** %t1035
  %t1036 = getelementptr %ASTNode, %ASTNode* %t1032, i32 0, i32 1
  %t1037 = load { i64, i8* }*, { i64, i8* }** %t1036
  store { i64, i8* }* %t1037, { i64, i8* }** %t1038
  %t1039 = load { i64, i8* }*, { i64, i8* }** %t1038
  %t1040 = call i64 @nyx_array_length({ i64, i8* }* %t1039)
  store i64 %t1040, i64* %t1041
  store i1 false, i1* %t1042
  %t1043 = load %nyx_string*, %nyx_string** %t1035
  %t1044 = getelementptr [6 x i8], [6 x i8]* @.str47, i32 0, i32 0
  %t1045 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str47.c, i8* %t1044, i64 5)
  %t1046 = call i1 @nyx_string_equals(%nyx_string* %t1043, %nyx_string* %t1045)
  br i1 %t1046, label %sc_and_rhs237, label %sc_and_end238
sc_and_rhs237:
  %t1047 = load i64, i64* %t1041
  %t1048 = icmp sge i64 %t1047, 3
  store i1 %t1048, i1* %t1042
  br label %sc_and_end238
sc_and_end238:
  %t1049 = load i1, i1* %t1042
  br i1 %t1049, label %then239, label %else240
then239:
  %t1050 = load { i64, i8* }*, { i64, i8* }** %t1038
  %t1051 = call i64 @nyx_array_get_checked({ i64, i8* }* %t1050, i64 0, i64 2)
  %t1052 = inttoptr i64 %t1051 to %nyx_string*
  store %nyx_string* %t1052, %nyx_string** %t1053
  %t1054 = load { i64, i8* }*, { i64, i8* }** %t1038
  %t1055 = call i64 @nyx_array_get({ i64, i8* }* %t1054, i64 1)
  %t1056 = inttoptr i64 %t1055 to { i64, i8* }*
  store { i64, i8* }* %t1056, { i64, i8* }** %t1057
  %t1058 = load { i64, i8* }*, { i64, i8* }** %t1038
  %t1059 = call i64 @nyx_array_get({ i64, i8* }* %t1058, i64 2)
  %t1060 = inttoptr i64 %t1059 to { i64, i8* }*
  store { i64, i8* }* %t1060, { i64, i8* }** %t1061
  %t1062 = load %nyx_string*, %nyx_string** %t1035
  %t1063 = call { i64, i8* }* @nyx_array_new_ptr()
  %t1064 = load %nyx_string*, %nyx_string** %t1053
  %t1065 = ptrtoint %nyx_string* %t1064 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1063, i64 %t1065, i64 2)
  %t1066 = load { i64, i8* }*, { i64, i8* }** %t1057
  %t1067 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %t1068 = load { i64, i8* }*, { i64, i8* }** %sust.ptr
  %t1069 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %t1066, { i64, i8* }* %t1067, { i64, i8* }* %t1068)
  %t1070 = ptrtoint { i64, i8* }* %t1069 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1063, i64 %t1070, i64 5)
  %t1071 = load { i64, i8* }*, { i64, i8* }** %t1061
  %t1072 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %t1073 = load { i64, i8* }*, { i64, i8* }** %sust.ptr
  %t1074 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %t1071, { i64, i8* }* %t1072, { i64, i8* }* %t1073)
  %t1075 = ptrtoint { i64, i8* }* %t1074 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1063, i64 %t1075, i64 5)
  %t1076 = call { i64, i8* }* @licm_make(%nyx_string* %t1062, { i64, i8* }* %t1063)
  ret { i64, i8* }* %t1076
else240:
  br label %merge241
merge241:
  store i1 false, i1* %t1077
  %t1078 = load %nyx_string*, %nyx_string** %t1035
  %t1079 = getelementptr [5 x i8], [5 x i8]* @.str48, i32 0, i32 0
  %t1080 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str48.c, i8* %t1079, i64 4)
  %t1081 = call i1 @nyx_string_equals(%nyx_string* %t1078, %nyx_string* %t1080)
  br i1 %t1081, label %sc_and_rhs242, label %sc_and_end243
sc_and_rhs242:
  %t1082 = load i64, i64* %t1041
  %t1083 = icmp sge i64 %t1082, 2
  store i1 %t1083, i1* %t1077
  br label %sc_and_end243
sc_and_end243:
  %t1084 = load i1, i1* %t1077
  br i1 %t1084, label %then244, label %else245
then244:
  %t1085 = load { i64, i8* }*, { i64, i8* }** %t1038
  %t1086 = call i64 @nyx_array_get_checked({ i64, i8* }* %t1085, i64 0, i64 2)
  %t1087 = inttoptr i64 %t1086 to %nyx_string*
  store %nyx_string* %t1087, %nyx_string** %t1088
  %t1089 = load { i64, i8* }*, { i64, i8* }** %t1038
  %t1090 = call i64 @nyx_array_get({ i64, i8* }* %t1089, i64 1)
  %t1091 = inttoptr i64 %t1090 to { i64, i8* }*
  store { i64, i8* }* %t1091, { i64, i8* }** %t1092
  %t1093 = load %nyx_string*, %nyx_string** %t1035
  %t1094 = call { i64, i8* }* @nyx_array_new_ptr()
  %t1095 = load %nyx_string*, %nyx_string** %t1088
  %t1096 = ptrtoint %nyx_string* %t1095 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1094, i64 %t1096, i64 2)
  %t1097 = load { i64, i8* }*, { i64, i8* }** %t1092
  %t1098 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %t1099 = load { i64, i8* }*, { i64, i8* }** %sust.ptr
  %t1100 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %t1097, { i64, i8* }* %t1098, { i64, i8* }* %t1099)
  %t1101 = ptrtoint { i64, i8* }* %t1100 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1094, i64 %t1101, i64 5)
  %t1102 = call { i64, i8* }* @licm_make(%nyx_string* %t1093, { i64, i8* }* %t1094)
  ret { i64, i8* }* %t1102
else245:
  br label %merge246
merge246:
  store i1 false, i1* %t1103
  %t1104 = load %nyx_string*, %nyx_string** %t1035
  %t1105 = getelementptr [5 x i8], [5 x i8]* @.str49, i32 0, i32 0
  %t1106 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str49.c, i8* %t1105, i64 4)
  %t1107 = call i1 @nyx_string_equals(%nyx_string* %t1104, %nyx_string* %t1106)
  br i1 %t1107, label %sc_and_rhs247, label %sc_and_end248
sc_and_rhs247:
  %t1108 = load i64, i64* %t1041
  %t1109 = icmp sge i64 %t1108, 2
  store i1 %t1109, i1* %t1103
  br label %sc_and_end248
sc_and_end248:
  %t1110 = load i1, i1* %t1103
  br i1 %t1110, label %then249, label %else250
then249:
  %t1111 = load { i64, i8* }*, { i64, i8* }** %t1038
  %t1112 = call i64 @nyx_array_get({ i64, i8* }* %t1111, i64 0)
  %t1113 = inttoptr i64 %t1112 to { i64, i8* }*
  store { i64, i8* }* %t1113, { i64, i8* }** %t1114
  %t1115 = load { i64, i8* }*, { i64, i8* }** %t1038
  %t1116 = call i64 @nyx_array_get({ i64, i8* }* %t1115, i64 1)
  %t1117 = inttoptr i64 %t1116 to { i64, i8* }*
  store { i64, i8* }* %t1117, { i64, i8* }** %t1118
  %t1119 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t1119, { i64, i8* }** %t1120
  store i64 0, i64* %t1121
  br label %while_cond252
while_cond252:
  %t1122 = load i64, i64* %t1121
  %t1123 = load { i64, i8* }*, { i64, i8* }** %t1118
  %t1124 = call i64 @nyx_array_length({ i64, i8* }* %t1123)
  %t1125 = icmp slt i64 %t1122, %t1124
  br i1 %t1125, label %while_body253, label %while_end254
while_body253:
  %t1126 = load { i64, i8* }*, { i64, i8* }** %t1118
  %t1127 = load i64, i64* %t1121
  %t1128 = call i64 @nyx_array_get({ i64, i8* }* %t1126, i64 %t1127)
  %t1129 = inttoptr i64 %t1128 to { i64, i8* }*
  store { i64, i8* }* %t1129, { i64, i8* }** %t1130
  %t1131 = load { i64, i8* }*, { i64, i8* }** %t1120
  %t1132 = load { i64, i8* }*, { i64, i8* }** %t1130
  %t1133 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %t1134 = load { i64, i8* }*, { i64, i8* }** %sust.ptr
  %t1135 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %t1132, { i64, i8* }* %t1133, { i64, i8* }* %t1134)
  %t1136 = ptrtoint { i64, i8* }* %t1135 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1131, i64 %t1136, i64 5)
  %t1137 = load i64, i64* %t1121
  %t1138 = add i64 %t1137, 1
  store i64 %t1138, i64* %t1121
  br label %while_cond252
while_end254:
  %t1139 = load %nyx_string*, %nyx_string** %t1035
  %t1140 = call { i64, i8* }* @nyx_array_new_ptr()
  %t1141 = load { i64, i8* }*, { i64, i8* }** %t1114
  %t1142 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %t1143 = load { i64, i8* }*, { i64, i8* }** %sust.ptr
  %t1144 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %t1141, { i64, i8* }* %t1142, { i64, i8* }* %t1143)
  %t1145 = ptrtoint { i64, i8* }* %t1144 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1140, i64 %t1145, i64 5)
  %t1146 = load { i64, i8* }*, { i64, i8* }** %t1120
  %t1147 = ptrtoint { i64, i8* }* %t1146 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1140, i64 %t1147, i64 5)
  %t1148 = call { i64, i8* }* @licm_make(%nyx_string* %t1139, { i64, i8* }* %t1140)
  ret { i64, i8* }* %t1148
else250:
  br label %merge251
merge251:
  store i1 false, i1* %t1149
  %t1150 = load %nyx_string*, %nyx_string** %t1035
  %t1151 = getelementptr [12 x i8], [12 x i8]* @.str50, i32 0, i32 0
  %t1152 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str50.c, i8* %t1151, i64 11)
  %t1153 = call i1 @nyx_string_equals(%nyx_string* %t1150, %nyx_string* %t1152)
  br i1 %t1153, label %sc_and_rhs255, label %sc_and_end256
sc_and_rhs255:
  %t1154 = load i64, i64* %t1041
  %t1155 = icmp sge i64 %t1154, 3
  store i1 %t1155, i1* %t1149
  br label %sc_and_end256
sc_and_end256:
  %t1156 = load i1, i1* %t1149
  br i1 %t1156, label %then257, label %else258
then257:
  %t1157 = load { i64, i8* }*, { i64, i8* }** %t1038
  %t1158 = call i64 @nyx_array_get({ i64, i8* }* %t1157, i64 0)
  %t1159 = inttoptr i64 %t1158 to { i64, i8* }*
  store { i64, i8* }* %t1159, { i64, i8* }** %t1160
  %t1161 = load { i64, i8* }*, { i64, i8* }** %t1038
  %t1162 = call i64 @nyx_array_get_checked({ i64, i8* }* %t1161, i64 1, i64 2)
  %t1163 = inttoptr i64 %t1162 to %nyx_string*
  store %nyx_string* %t1163, %nyx_string** %t1164
  %t1165 = load { i64, i8* }*, { i64, i8* }** %t1038
  %t1166 = call i64 @nyx_array_get({ i64, i8* }* %t1165, i64 2)
  %t1167 = inttoptr i64 %t1166 to { i64, i8* }*
  store { i64, i8* }* %t1167, { i64, i8* }** %t1168
  %t1169 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t1169, { i64, i8* }** %t1170
  store i64 0, i64* %t1171
  br label %while_cond260
while_cond260:
  %t1172 = load i64, i64* %t1171
  %t1173 = load { i64, i8* }*, { i64, i8* }** %t1168
  %t1174 = call i64 @nyx_array_length({ i64, i8* }* %t1173)
  %t1175 = icmp slt i64 %t1172, %t1174
  br i1 %t1175, label %while_body261, label %while_end262
while_body261:
  %t1176 = load { i64, i8* }*, { i64, i8* }** %t1168
  %t1177 = load i64, i64* %t1171
  %t1178 = call i64 @nyx_array_get({ i64, i8* }* %t1176, i64 %t1177)
  %t1179 = inttoptr i64 %t1178 to { i64, i8* }*
  store { i64, i8* }* %t1179, { i64, i8* }** %t1180
  %t1181 = load { i64, i8* }*, { i64, i8* }** %t1170
  %t1182 = load { i64, i8* }*, { i64, i8* }** %t1180
  %t1183 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %t1184 = load { i64, i8* }*, { i64, i8* }** %sust.ptr
  %t1185 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %t1182, { i64, i8* }* %t1183, { i64, i8* }* %t1184)
  %t1186 = ptrtoint { i64, i8* }* %t1185 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1181, i64 %t1186, i64 5)
  %t1187 = load i64, i64* %t1171
  %t1188 = add i64 %t1187, 1
  store i64 %t1188, i64* %t1171
  br label %while_cond260
while_end262:
  %t1189 = load %nyx_string*, %nyx_string** %t1035
  %t1190 = call { i64, i8* }* @nyx_array_new_ptr()
  %t1191 = load { i64, i8* }*, { i64, i8* }** %t1160
  %t1192 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %t1193 = load { i64, i8* }*, { i64, i8* }** %sust.ptr
  %t1194 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %t1191, { i64, i8* }* %t1192, { i64, i8* }* %t1193)
  %t1195 = ptrtoint { i64, i8* }* %t1194 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1190, i64 %t1195, i64 5)
  %t1196 = load %nyx_string*, %nyx_string** %t1164
  %t1197 = ptrtoint %nyx_string* %t1196 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1190, i64 %t1197, i64 2)
  %t1198 = load { i64, i8* }*, { i64, i8* }** %t1170
  %t1199 = ptrtoint { i64, i8* }* %t1198 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1190, i64 %t1199, i64 5)
  %t1200 = call { i64, i8* }* @licm_make(%nyx_string* %t1189, { i64, i8* }* %t1190)
  ret { i64, i8* }* %t1200
else258:
  br label %merge259
merge259:
  store i1 false, i1* %t1201
  %t1202 = load %nyx_string*, %nyx_string** %t1035
  %t1203 = getelementptr [6 x i8], [6 x i8]* @.str51, i32 0, i32 0
  %t1204 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str51.c, i8* %t1203, i64 5)
  %t1205 = call i1 @nyx_string_equals(%nyx_string* %t1202, %nyx_string* %t1204)
  br i1 %t1205, label %sc_and_rhs263, label %sc_and_end264
sc_and_rhs263:
  %t1206 = load i64, i64* %t1041
  %t1207 = icmp sge i64 %t1206, 2
  store i1 %t1207, i1* %t1201
  br label %sc_and_end264
sc_and_end264:
  %t1208 = load i1, i1* %t1201
  br i1 %t1208, label %then265, label %else266
then265:
  %t1209 = load { i64, i8* }*, { i64, i8* }** %t1038
  %t1210 = call i64 @nyx_array_get({ i64, i8* }* %t1209, i64 0)
  %t1211 = inttoptr i64 %t1210 to { i64, i8* }*
  store { i64, i8* }* %t1211, { i64, i8* }** %t1212
  %t1213 = load { i64, i8* }*, { i64, i8* }** %t1038
  %t1214 = call i64 @nyx_array_get({ i64, i8* }* %t1213, i64 1)
  %t1215 = inttoptr i64 %t1214 to { i64, i8* }*
  store { i64, i8* }* %t1215, { i64, i8* }** %t1216
  %t1217 = load %nyx_string*, %nyx_string** %t1035
  %t1218 = call { i64, i8* }* @nyx_array_new_ptr()
  %t1219 = load { i64, i8* }*, { i64, i8* }** %t1212
  %t1220 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %t1221 = load { i64, i8* }*, { i64, i8* }** %sust.ptr
  %t1222 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %t1219, { i64, i8* }* %t1220, { i64, i8* }* %t1221)
  %t1223 = ptrtoint { i64, i8* }* %t1222 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1218, i64 %t1223, i64 5)
  %t1224 = load { i64, i8* }*, { i64, i8* }** %t1216
  %t1225 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %t1226 = load { i64, i8* }*, { i64, i8* }** %sust.ptr
  %t1227 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %t1224, { i64, i8* }* %t1225, { i64, i8* }* %t1226)
  %t1228 = ptrtoint { i64, i8* }* %t1227 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1218, i64 %t1228, i64 5)
  %t1229 = call { i64, i8* }* @licm_make(%nyx_string* %t1217, { i64, i8* }* %t1218)
  ret { i64, i8* }* %t1229
else266:
  br label %merge267
merge267:
  store i1 false, i1* %t1230
  %t1231 = load %nyx_string*, %nyx_string** %t1035
  %t1232 = getelementptr [13 x i8], [13 x i8]* @.str52, i32 0, i32 0
  %t1233 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str52.c, i8* %t1232, i64 12)
  %t1234 = call i1 @nyx_string_equals(%nyx_string* %t1231, %nyx_string* %t1233)
  br i1 %t1234, label %sc_and_rhs268, label %sc_and_end269
sc_and_rhs268:
  %t1235 = load i64, i64* %t1041
  %t1236 = icmp sge i64 %t1235, 2
  store i1 %t1236, i1* %t1230
  br label %sc_and_end269
sc_and_end269:
  %t1237 = load i1, i1* %t1230
  br i1 %t1237, label %then270, label %else271
then270:
  %t1238 = load { i64, i8* }*, { i64, i8* }** %t1038
  %t1239 = call i64 @nyx_array_get({ i64, i8* }* %t1238, i64 0)
  %t1240 = inttoptr i64 %t1239 to { i64, i8* }*
  store { i64, i8* }* %t1240, { i64, i8* }** %t1241
  %t1242 = load { i64, i8* }*, { i64, i8* }** %t1038
  %t1243 = call i64 @nyx_array_get_checked({ i64, i8* }* %t1242, i64 1, i64 2)
  %t1244 = inttoptr i64 %t1243 to %nyx_string*
  store %nyx_string* %t1244, %nyx_string** %t1245
  %t1246 = load %nyx_string*, %nyx_string** %t1035
  %t1247 = call { i64, i8* }* @nyx_array_new_ptr()
  %t1248 = load { i64, i8* }*, { i64, i8* }** %t1241
  %t1249 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %t1250 = load { i64, i8* }*, { i64, i8* }** %sust.ptr
  %t1251 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %t1248, { i64, i8* }* %t1249, { i64, i8* }* %t1250)
  %t1252 = ptrtoint { i64, i8* }* %t1251 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1247, i64 %t1252, i64 5)
  %t1253 = load %nyx_string*, %nyx_string** %t1245
  %t1254 = ptrtoint %nyx_string* %t1253 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1247, i64 %t1254, i64 2)
  %t1255 = call { i64, i8* }* @licm_make(%nyx_string* %t1246, { i64, i8* }* %t1247)
  ret { i64, i8* }* %t1255
else271:
  br label %merge272
merge272:
  store i1 false, i1* %t1256
  %t1257 = load %nyx_string*, %nyx_string** %t1035
  %t1258 = getelementptr [6 x i8], [6 x i8]* @.str53, i32 0, i32 0
  %t1259 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str53.c, i8* %t1258, i64 5)
  %t1260 = call i1 @nyx_string_equals(%nyx_string* %t1257, %nyx_string* %t1259)
  br i1 %t1260, label %sc_and_rhs273, label %sc_and_end274
sc_and_rhs273:
  %t1261 = load i64, i64* %t1041
  %t1262 = icmp sge i64 %t1261, 1
  store i1 %t1262, i1* %t1256
  br label %sc_and_end274
sc_and_end274:
  %t1263 = load i1, i1* %t1256
  br i1 %t1263, label %then275, label %else276
then275:
  %t1264 = load { i64, i8* }*, { i64, i8* }** %t1038
  %t1265 = call i64 @nyx_array_get({ i64, i8* }* %t1264, i64 0)
  %t1266 = inttoptr i64 %t1265 to { i64, i8* }*
  store { i64, i8* }* %t1266, { i64, i8* }** %t1267
  %t1268 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t1268, { i64, i8* }** %t1269
  store i64 0, i64* %t1270
  br label %while_cond278
while_cond278:
  %t1271 = load i64, i64* %t1270
  %t1272 = load { i64, i8* }*, { i64, i8* }** %t1267
  %t1273 = call i64 @nyx_array_length({ i64, i8* }* %t1272)
  %t1274 = icmp slt i64 %t1271, %t1273
  br i1 %t1274, label %while_body279, label %while_end280
while_body279:
  %t1275 = load { i64, i8* }*, { i64, i8* }** %t1267
  %t1276 = load i64, i64* %t1270
  %t1277 = call i64 @nyx_array_get({ i64, i8* }* %t1275, i64 %t1276)
  %t1278 = inttoptr i64 %t1277 to { i64, i8* }*
  store { i64, i8* }* %t1278, { i64, i8* }** %t1279
  %t1280 = load { i64, i8* }*, { i64, i8* }** %t1269
  %t1281 = load { i64, i8* }*, { i64, i8* }** %t1279
  %t1282 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %t1283 = load { i64, i8* }*, { i64, i8* }** %sust.ptr
  %t1284 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %t1281, { i64, i8* }* %t1282, { i64, i8* }* %t1283)
  %t1285 = ptrtoint { i64, i8* }* %t1284 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1280, i64 %t1285, i64 5)
  %t1286 = load i64, i64* %t1270
  %t1287 = add i64 %t1286, 1
  store i64 %t1287, i64* %t1270
  br label %while_cond278
while_end280:
  %t1288 = load %nyx_string*, %nyx_string** %t1035
  %t1289 = call { i64, i8* }* @nyx_array_new_ptr()
  %t1290 = load { i64, i8* }*, { i64, i8* }** %t1269
  %t1291 = ptrtoint { i64, i8* }* %t1290 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1289, i64 %t1291, i64 5)
  %t1292 = call { i64, i8* }* @licm_make(%nyx_string* %t1288, { i64, i8* }* %t1289)
  ret { i64, i8* }* %t1292
else276:
  br label %merge277
merge277:
  store i1 false, i1* %t1293
  %t1294 = load %nyx_string*, %nyx_string** %t1035
  %t1295 = getelementptr [12 x i8], [12 x i8]* @.str54, i32 0, i32 0
  %t1296 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str54.c, i8* %t1295, i64 11)
  %t1297 = call i1 @nyx_string_equals(%nyx_string* %t1294, %nyx_string* %t1296)
  br i1 %t1297, label %sc_and_rhs281, label %sc_and_end282
sc_and_rhs281:
  %t1298 = load i64, i64* %t1041
  %t1299 = icmp sge i64 %t1298, 2
  store i1 %t1299, i1* %t1293
  br label %sc_and_end282
sc_and_end282:
  %t1300 = load i1, i1* %t1293
  br i1 %t1300, label %then283, label %else284
then283:
  %t1301 = load { i64, i8* }*, { i64, i8* }** %t1038
  %t1302 = call i64 @nyx_array_get({ i64, i8* }* %t1301, i64 0)
  %t1303 = inttoptr i64 %t1302 to { i64, i8* }*
  store { i64, i8* }* %t1303, { i64, i8* }** %t1304
  %t1305 = load { i64, i8* }*, { i64, i8* }** %t1038
  %t1306 = call i64 @nyx_array_get({ i64, i8* }* %t1305, i64 1)
  %t1307 = inttoptr i64 %t1306 to { i64, i8* }*
  store { i64, i8* }* %t1307, { i64, i8* }** %t1308
  %t1309 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t1309, { i64, i8* }** %t1310
  store i64 0, i64* %t1311
  br label %while_cond286
while_cond286:
  %t1312 = load i64, i64* %t1311
  %t1313 = load { i64, i8* }*, { i64, i8* }** %t1308
  %t1314 = call i64 @nyx_array_length({ i64, i8* }* %t1313)
  %t1315 = icmp slt i64 %t1312, %t1314
  br i1 %t1315, label %while_body287, label %while_end288
while_body287:
  %t1316 = load { i64, i8* }*, { i64, i8* }** %t1308
  %t1317 = load i64, i64* %t1311
  %t1318 = call i64 @nyx_array_get({ i64, i8* }* %t1316, i64 %t1317)
  %t1319 = inttoptr i64 %t1318 to { i64, i8* }*
  store { i64, i8* }* %t1319, { i64, i8* }** %t1320
  %t1321 = load { i64, i8* }*, { i64, i8* }** %t1310
  %t1322 = load { i64, i8* }*, { i64, i8* }** %t1320
  %t1323 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %t1324 = load { i64, i8* }*, { i64, i8* }** %sust.ptr
  %t1325 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %t1322, { i64, i8* }* %t1323, { i64, i8* }* %t1324)
  %t1326 = ptrtoint { i64, i8* }* %t1325 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1321, i64 %t1326, i64 5)
  %t1327 = load i64, i64* %t1311
  %t1328 = add i64 %t1327, 1
  store i64 %t1328, i64* %t1311
  br label %while_cond286
while_end288:
  %t1329 = load %nyx_string*, %nyx_string** %t1035
  %t1330 = call { i64, i8* }* @nyx_array_new_ptr()
  %t1331 = load { i64, i8* }*, { i64, i8* }** %t1304
  %t1332 = ptrtoint { i64, i8* }* %t1331 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1330, i64 %t1332, i64 5)
  %t1333 = load { i64, i8* }*, { i64, i8* }** %t1310
  %t1334 = ptrtoint { i64, i8* }* %t1333 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1330, i64 %t1334, i64 5)
  %t1335 = call { i64, i8* }* @licm_make(%nyx_string* %t1329, { i64, i8* }* %t1330)
  ret { i64, i8* }* %t1335
else284:
  br label %merge285
merge285:
  store i1 false, i1* %t1336
  %t1337 = load %nyx_string*, %nyx_string** %t1035
  %t1338 = getelementptr [3 x i8], [3 x i8]* @.str55, i32 0, i32 0
  %t1339 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str55.c, i8* %t1338, i64 2)
  %t1340 = call i1 @nyx_string_equals(%nyx_string* %t1337, %nyx_string* %t1339)
  br i1 %t1340, label %sc_and_rhs289, label %sc_and_end290
sc_and_rhs289:
  %t1341 = load i64, i64* %t1041
  %t1342 = icmp sge i64 %t1341, 3
  store i1 %t1342, i1* %t1336
  br label %sc_and_end290
sc_and_end290:
  %t1343 = load i1, i1* %t1336
  br i1 %t1343, label %then291, label %else292
then291:
  %t1344 = load { i64, i8* }*, { i64, i8* }** %t1038
  %t1345 = call i64 @nyx_array_get({ i64, i8* }* %t1344, i64 0)
  %t1346 = inttoptr i64 %t1345 to { i64, i8* }*
  store { i64, i8* }* %t1346, { i64, i8* }** %t1347
  %t1348 = load { i64, i8* }*, { i64, i8* }** %t1038
  %t1349 = call i64 @nyx_array_get({ i64, i8* }* %t1348, i64 1)
  %t1350 = inttoptr i64 %t1349 to { i64, i8* }*
  store { i64, i8* }* %t1350, { i64, i8* }** %t1351
  %t1352 = load { i64, i8* }*, { i64, i8* }** %t1038
  %t1353 = call i64 @nyx_array_get({ i64, i8* }* %t1352, i64 2)
  %t1354 = inttoptr i64 %t1353 to { i64, i8* }*
  store { i64, i8* }* %t1354, { i64, i8* }** %t1355
  %t1356 = load %nyx_string*, %nyx_string** %t1035
  %t1357 = call { i64, i8* }* @nyx_array_new_ptr()
  %t1358 = load { i64, i8* }*, { i64, i8* }** %t1347
  %t1359 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %t1360 = load { i64, i8* }*, { i64, i8* }** %sust.ptr
  %t1361 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %t1358, { i64, i8* }* %t1359, { i64, i8* }* %t1360)
  %t1362 = ptrtoint { i64, i8* }* %t1361 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1357, i64 %t1362, i64 5)
  %t1363 = load { i64, i8* }*, { i64, i8* }** %t1351
  %t1364 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %t1365 = load { i64, i8* }*, { i64, i8* }** %sust.ptr
  %t1366 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %t1363, { i64, i8* }* %t1364, { i64, i8* }* %t1365)
  %t1367 = ptrtoint { i64, i8* }* %t1366 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1357, i64 %t1367, i64 5)
  %t1368 = load { i64, i8* }*, { i64, i8* }** %t1355
  %t1369 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %t1370 = load { i64, i8* }*, { i64, i8* }** %sust.ptr
  %t1371 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %t1368, { i64, i8* }* %t1369, { i64, i8* }* %t1370)
  %t1372 = ptrtoint { i64, i8* }* %t1371 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1357, i64 %t1372, i64 5)
  %t1373 = call { i64, i8* }* @licm_make(%nyx_string* %t1356, { i64, i8* }* %t1357)
  ret { i64, i8* }* %t1373
else292:
  br label %merge293
merge293:
  store i1 false, i1* %t1374
  %t1375 = load %nyx_string*, %nyx_string** %t1035
  %t1376 = getelementptr [6 x i8], [6 x i8]* @.str56, i32 0, i32 0
  %t1377 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str56.c, i8* %t1376, i64 5)
  %t1378 = call i1 @nyx_string_equals(%nyx_string* %t1375, %nyx_string* %t1377)
  br i1 %t1378, label %sc_and_rhs294, label %sc_and_end295
sc_and_rhs294:
  %t1379 = load i64, i64* %t1041
  %t1380 = icmp sge i64 %t1379, 2
  store i1 %t1380, i1* %t1374
  br label %sc_and_end295
sc_and_end295:
  %t1381 = load i1, i1* %t1374
  br i1 %t1381, label %then296, label %else297
then296:
  %t1382 = load { i64, i8* }*, { i64, i8* }** %t1038
  %t1383 = call i64 @nyx_array_get({ i64, i8* }* %t1382, i64 0)
  %t1384 = inttoptr i64 %t1383 to { i64, i8* }*
  store { i64, i8* }* %t1384, { i64, i8* }** %t1385
  %t1386 = load { i64, i8* }*, { i64, i8* }** %t1038
  %t1387 = call i64 @nyx_array_get({ i64, i8* }* %t1386, i64 1)
  %t1388 = inttoptr i64 %t1387 to { i64, i8* }*
  store { i64, i8* }* %t1388, { i64, i8* }** %t1389
  %t1390 = load %nyx_string*, %nyx_string** %t1035
  %t1391 = call { i64, i8* }* @nyx_array_new_ptr()
  %t1392 = load { i64, i8* }*, { i64, i8* }** %t1385
  %t1393 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %t1394 = load { i64, i8* }*, { i64, i8* }** %sust.ptr
  %t1395 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %t1392, { i64, i8* }* %t1393, { i64, i8* }* %t1394)
  %t1396 = ptrtoint { i64, i8* }* %t1395 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1391, i64 %t1396, i64 5)
  %t1397 = load { i64, i8* }*, { i64, i8* }** %t1389
  %t1398 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %t1399 = load { i64, i8* }*, { i64, i8* }** %sust.ptr
  %t1400 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %t1397, { i64, i8* }* %t1398, { i64, i8* }* %t1399)
  %t1401 = ptrtoint { i64, i8* }* %t1400 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1391, i64 %t1401, i64 5)
  %t1402 = call { i64, i8* }* @licm_make(%nyx_string* %t1390, { i64, i8* }* %t1391)
  ret { i64, i8* }* %t1402
else297:
  br label %merge298
merge298:
  store i1 false, i1* %t1403
  %t1404 = load %nyx_string*, %nyx_string** %t1035
  %t1405 = getelementptr [4 x i8], [4 x i8]* @.str57, i32 0, i32 0
  %t1406 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str57.c, i8* %t1405, i64 3)
  %t1407 = call i1 @nyx_string_equals(%nyx_string* %t1404, %nyx_string* %t1406)
  br i1 %t1407, label %sc_and_rhs299, label %sc_and_end300
sc_and_rhs299:
  %t1408 = load i64, i64* %t1041
  %t1409 = icmp sge i64 %t1408, 4
  store i1 %t1409, i1* %t1403
  br label %sc_and_end300
sc_and_end300:
  %t1410 = load i1, i1* %t1403
  br i1 %t1410, label %then301, label %else302
then301:
  %t1411 = load { i64, i8* }*, { i64, i8* }** %t1038
  %t1412 = call i64 @nyx_array_get_checked({ i64, i8* }* %t1411, i64 0, i64 2)
  %t1413 = inttoptr i64 %t1412 to %nyx_string*
  store %nyx_string* %t1413, %nyx_string** %t1414
  %t1415 = load { i64, i8* }*, { i64, i8* }** %t1038
  %t1416 = call i64 @nyx_array_get({ i64, i8* }* %t1415, i64 1)
  %t1417 = inttoptr i64 %t1416 to { i64, i8* }*
  store { i64, i8* }* %t1417, { i64, i8* }** %t1418
  %t1419 = load { i64, i8* }*, { i64, i8* }** %t1038
  %t1420 = call i64 @nyx_array_get({ i64, i8* }* %t1419, i64 2)
  %t1421 = inttoptr i64 %t1420 to { i64, i8* }*
  store { i64, i8* }* %t1421, { i64, i8* }** %t1422
  %t1423 = load { i64, i8* }*, { i64, i8* }** %t1038
  %t1424 = call i64 @nyx_array_get({ i64, i8* }* %t1423, i64 3)
  store i64 %t1424, i64* %t1425
  %t1426 = load %nyx_string*, %nyx_string** %t1035
  %t1427 = call { i64, i8* }* @nyx_array_new_ptr()
  %t1428 = load %nyx_string*, %nyx_string** %t1414
  %t1429 = ptrtoint %nyx_string* %t1428 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1427, i64 %t1429, i64 2)
  %t1430 = load { i64, i8* }*, { i64, i8* }** %t1418
  %t1431 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %t1432 = load { i64, i8* }*, { i64, i8* }** %sust.ptr
  %t1433 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %t1430, { i64, i8* }* %t1431, { i64, i8* }* %t1432)
  %t1434 = ptrtoint { i64, i8* }* %t1433 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1427, i64 %t1434, i64 5)
  %t1435 = load { i64, i8* }*, { i64, i8* }** %t1422
  %t1436 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %t1437 = load { i64, i8* }*, { i64, i8* }** %sust.ptr
  %t1438 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %t1435, { i64, i8* }* %t1436, { i64, i8* }* %t1437)
  %t1439 = ptrtoint { i64, i8* }* %t1438 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1427, i64 %t1439, i64 5)
  %t1440 = load i64, i64* %t1425
  call void @nyx_array_push({ i64, i8* }* %t1427, i64 %t1440)
  %t1441 = call { i64, i8* }* @licm_make(%nyx_string* %t1426, { i64, i8* }* %t1427)
  ret { i64, i8* }* %t1441
else302:
  br label %merge303
merge303:
  store i1 false, i1* %t1442
  %t1443 = load %nyx_string*, %nyx_string** %t1035
  %t1444 = getelementptr [10 x i8], [10 x i8]* @.str58, i32 0, i32 0
  %t1445 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str58.c, i8* %t1444, i64 9)
  %t1446 = call i1 @nyx_string_equals(%nyx_string* %t1443, %nyx_string* %t1445)
  br i1 %t1446, label %sc_and_rhs304, label %sc_and_end305
sc_and_rhs304:
  %t1447 = load i64, i64* %t1041
  %t1448 = icmp sge i64 %t1447, 3
  store i1 %t1448, i1* %t1442
  br label %sc_and_end305
sc_and_end305:
  %t1449 = load i1, i1* %t1442
  br i1 %t1449, label %then306, label %else307
then306:
  %t1450 = load { i64, i8* }*, { i64, i8* }** %t1038
  %t1451 = call i64 @nyx_array_get({ i64, i8* }* %t1450, i64 0)
  store i64 %t1451, i64* %t1452
  %t1453 = load { i64, i8* }*, { i64, i8* }** %t1038
  %t1454 = call i64 @nyx_array_get({ i64, i8* }* %t1453, i64 1)
  %t1455 = inttoptr i64 %t1454 to { i64, i8* }*
  store { i64, i8* }* %t1455, { i64, i8* }** %t1456
  %t1457 = load { i64, i8* }*, { i64, i8* }** %t1038
  %t1458 = call i64 @nyx_array_get({ i64, i8* }* %t1457, i64 2)
  %t1459 = inttoptr i64 %t1458 to { i64, i8* }*
  store { i64, i8* }* %t1459, { i64, i8* }** %t1460
  %t1461 = load %nyx_string*, %nyx_string** %t1035
  %t1462 = call { i64, i8* }* @nyx_array_new_ptr()
  %t1463 = load i64, i64* %t1452
  call void @nyx_array_push({ i64, i8* }* %t1462, i64 %t1463)
  %t1464 = load { i64, i8* }*, { i64, i8* }** %t1456
  %t1465 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %t1466 = load { i64, i8* }*, { i64, i8* }** %sust.ptr
  %t1467 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %t1464, { i64, i8* }* %t1465, { i64, i8* }* %t1466)
  %t1468 = ptrtoint { i64, i8* }* %t1467 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1462, i64 %t1468, i64 5)
  %t1469 = load { i64, i8* }*, { i64, i8* }** %t1460
  %t1470 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %t1471 = load { i64, i8* }*, { i64, i8* }** %sust.ptr
  %t1472 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %t1469, { i64, i8* }* %t1470, { i64, i8* }* %t1471)
  %t1473 = ptrtoint { i64, i8* }* %t1472 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1462, i64 %t1473, i64 5)
  %t1474 = call { i64, i8* }* @licm_make(%nyx_string* %t1461, { i64, i8* }* %t1462)
  ret { i64, i8* }* %t1474
else307:
  br label %merge308
merge308:
  store i1 false, i1* %t1475
  %t1476 = load %nyx_string*, %nyx_string** %t1035
  %t1477 = getelementptr [6 x i8], [6 x i8]* @.str59, i32 0, i32 0
  %t1478 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str59.c, i8* %t1477, i64 5)
  %t1479 = call i1 @nyx_string_equals(%nyx_string* %t1476, %nyx_string* %t1478)
  br i1 %t1479, label %sc_and_rhs309, label %sc_and_end310
sc_and_rhs309:
  %t1480 = load i64, i64* %t1041
  %t1481 = icmp sge i64 %t1480, 1
  store i1 %t1481, i1* %t1475
  br label %sc_and_end310
sc_and_end310:
  %t1482 = load i1, i1* %t1475
  br i1 %t1482, label %then311, label %else312
then311:
  %t1483 = load { i64, i8* }*, { i64, i8* }** %t1038
  %t1484 = call i64 @nyx_array_get({ i64, i8* }* %t1483, i64 0)
  %t1485 = inttoptr i64 %t1484 to { i64, i8* }*
  store { i64, i8* }* %t1485, { i64, i8* }** %t1486
  %t1487 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t1487, { i64, i8* }** %t1488
  store i64 0, i64* %t1489
  br label %while_cond314
while_cond314:
  %t1490 = load i64, i64* %t1489
  %t1491 = load { i64, i8* }*, { i64, i8* }** %t1486
  %t1492 = call i64 @nyx_array_length({ i64, i8* }* %t1491)
  %t1493 = icmp slt i64 %t1490, %t1492
  br i1 %t1493, label %while_body315, label %while_end316
while_body315:
  %t1494 = load { i64, i8* }*, { i64, i8* }** %t1486
  %t1495 = load i64, i64* %t1489
  %t1496 = call i64 @nyx_array_get({ i64, i8* }* %t1494, i64 %t1495)
  %t1497 = inttoptr i64 %t1496 to { i64, i8* }*
  store { i64, i8* }* %t1497, { i64, i8* }** %t1498
  %t1499 = load { i64, i8* }*, { i64, i8* }** %t1488
  %t1500 = load { i64, i8* }*, { i64, i8* }** %t1498
  %t1501 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %t1502 = load { i64, i8* }*, { i64, i8* }** %sust.ptr
  %t1503 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %t1500, { i64, i8* }* %t1501, { i64, i8* }* %t1502)
  %t1504 = ptrtoint { i64, i8* }* %t1503 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1499, i64 %t1504, i64 5)
  %t1505 = load i64, i64* %t1489
  %t1506 = add i64 %t1505, 1
  store i64 %t1506, i64* %t1489
  br label %while_cond314
while_end316:
  %t1507 = load %nyx_string*, %nyx_string** %t1035
  %t1508 = call { i64, i8* }* @nyx_array_new_ptr()
  %t1509 = load { i64, i8* }*, { i64, i8* }** %t1488
  %t1510 = ptrtoint { i64, i8* }* %t1509 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1508, i64 %t1510, i64 5)
  %t1511 = call { i64, i8* }* @licm_make(%nyx_string* %t1507, { i64, i8* }* %t1508)
  ret { i64, i8* }* %t1511
else312:
  br label %merge313
merge313:
  store i1 false, i1* %t1512
  %t1513 = load %nyx_string*, %nyx_string** %t1035
  %t1514 = getelementptr [4 x i8], [4 x i8]* @.str60, i32 0, i32 0
  %t1515 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str60.c, i8* %t1514, i64 3)
  %t1516 = call i1 @nyx_string_equals(%nyx_string* %t1513, %nyx_string* %t1515)
  br i1 %t1516, label %sc_and_rhs317, label %sc_and_end318
sc_and_rhs317:
  %t1517 = load i64, i64* %t1041
  %t1518 = icmp sge i64 %t1517, 4
  store i1 %t1518, i1* %t1512
  br label %sc_and_end318
sc_and_end318:
  %t1519 = load i1, i1* %t1512
  br i1 %t1519, label %then319, label %else320
then319:
  %t1520 = load { i64, i8* }*, { i64, i8* }** %t1038
  %t1521 = call i64 @nyx_array_get({ i64, i8* }* %t1520, i64 0)
  store i64 %t1521, i64* %t1522
  %t1523 = load { i64, i8* }*, { i64, i8* }** %t1038
  %t1524 = call i64 @nyx_array_get({ i64, i8* }* %t1523, i64 1)
  store i64 %t1524, i64* %t1525
  %t1526 = load { i64, i8* }*, { i64, i8* }** %t1038
  %t1527 = call i64 @nyx_array_get({ i64, i8* }* %t1526, i64 2)
  %t1528 = inttoptr i64 %t1527 to { i64, i8* }*
  store { i64, i8* }* %t1528, { i64, i8* }** %t1529
  %t1530 = load { i64, i8* }*, { i64, i8* }** %t1038
  %t1531 = call i64 @nyx_array_get({ i64, i8* }* %t1530, i64 3)
  store i64 %t1531, i64* %t1532
  %t1533 = load %nyx_string*, %nyx_string** %t1035
  %t1534 = call { i64, i8* }* @nyx_array_new_ptr()
  %t1535 = load i64, i64* %t1522
  call void @nyx_array_push({ i64, i8* }* %t1534, i64 %t1535)
  %t1536 = load i64, i64* %t1525
  call void @nyx_array_push({ i64, i8* }* %t1534, i64 %t1536)
  %t1537 = load { i64, i8* }*, { i64, i8* }** %t1529
  %t1538 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %t1539 = load { i64, i8* }*, { i64, i8* }** %sust.ptr
  %t1540 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %t1537, { i64, i8* }* %t1538, { i64, i8* }* %t1539)
  %t1541 = ptrtoint { i64, i8* }* %t1540 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1534, i64 %t1541, i64 5)
  %t1542 = load i64, i64* %t1532
  call void @nyx_array_push({ i64, i8* }* %t1534, i64 %t1542)
  %t1543 = call { i64, i8* }* @licm_make(%nyx_string* %t1533, { i64, i8* }* %t1534)
  ret { i64, i8* }* %t1543
else320:
  br label %merge321
merge321:
  store i1 false, i1* %t1544
  %t1545 = load %nyx_string*, %nyx_string** %t1035
  %t1546 = getelementptr [22 x i8], [22 x i8]* @.str61, i32 0, i32 0
  %t1547 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str61.c, i8* %t1546, i64 21)
  %t1548 = call i1 @nyx_string_equals(%nyx_string* %t1545, %nyx_string* %t1547)
  br i1 %t1548, label %sc_and_rhs322, label %sc_and_end323
sc_and_rhs322:
  %t1549 = load i64, i64* %t1041
  %t1550 = icmp sge i64 %t1549, 3
  store i1 %t1550, i1* %t1544
  br label %sc_and_end323
sc_and_end323:
  %t1551 = load i1, i1* %t1544
  br i1 %t1551, label %then324, label %else325
then324:
  %t1552 = load { i64, i8* }*, { i64, i8* }** %t1038
  %t1553 = call i64 @nyx_array_get({ i64, i8* }* %t1552, i64 0)
  store i64 %t1553, i64* %t1554
  %t1555 = load { i64, i8* }*, { i64, i8* }** %t1038
  %t1556 = call i64 @nyx_array_get({ i64, i8* }* %t1555, i64 1)
  store i64 %t1556, i64* %t1557
  %t1558 = load { i64, i8* }*, { i64, i8* }** %t1038
  %t1559 = call i64 @nyx_array_get({ i64, i8* }* %t1558, i64 2)
  %t1560 = inttoptr i64 %t1559 to { i64, i8* }*
  store { i64, i8* }* %t1560, { i64, i8* }** %t1561
  %t1562 = load %nyx_string*, %nyx_string** %t1035
  %t1563 = call { i64, i8* }* @nyx_array_new_ptr()
  %t1564 = load i64, i64* %t1554
  call void @nyx_array_push({ i64, i8* }* %t1563, i64 %t1564)
  %t1565 = load i64, i64* %t1557
  call void @nyx_array_push({ i64, i8* }* %t1563, i64 %t1565)
  %t1566 = load { i64, i8* }*, { i64, i8* }** %t1561
  %t1567 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %t1568 = load { i64, i8* }*, { i64, i8* }** %sust.ptr
  %t1569 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %t1566, { i64, i8* }* %t1567, { i64, i8* }* %t1568)
  %t1570 = ptrtoint { i64, i8* }* %t1569 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1563, i64 %t1570, i64 5)
  %t1571 = call { i64, i8* }* @licm_make(%nyx_string* %t1562, { i64, i8* }* %t1563)
  ret { i64, i8* }* %t1571
else325:
  br label %merge326
merge326:
  store i1 false, i1* %t1572
  %t1573 = load %nyx_string*, %nyx_string** %t1035
  %t1574 = getelementptr [7 x i8], [7 x i8]* @.str62, i32 0, i32 0
  %t1575 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str62.c, i8* %t1574, i64 6)
  %t1576 = call i1 @nyx_string_equals(%nyx_string* %t1573, %nyx_string* %t1575)
  br i1 %t1576, label %sc_and_rhs327, label %sc_and_end328
sc_and_rhs327:
  %t1577 = load i64, i64* %t1041
  %t1578 = icmp sge i64 %t1577, 2
  store i1 %t1578, i1* %t1572
  br label %sc_and_end328
sc_and_end328:
  %t1579 = load i1, i1* %t1572
  br i1 %t1579, label %then329, label %else330
then329:
  %t1580 = load { i64, i8* }*, { i64, i8* }** %t1038
  %t1581 = call i64 @nyx_array_get({ i64, i8* }* %t1580, i64 0)
  store i64 %t1581, i64* %t1582
  %t1583 = load { i64, i8* }*, { i64, i8* }** %t1038
  %t1584 = call i64 @nyx_array_get({ i64, i8* }* %t1583, i64 1)
  %t1585 = inttoptr i64 %t1584 to { i64, i8* }*
  store { i64, i8* }* %t1585, { i64, i8* }** %t1586
  %t1587 = load %nyx_string*, %nyx_string** %t1035
  %t1588 = call { i64, i8* }* @nyx_array_new_ptr()
  %t1589 = load i64, i64* %t1582
  call void @nyx_array_push({ i64, i8* }* %t1588, i64 %t1589)
  %t1590 = load { i64, i8* }*, { i64, i8* }** %t1586
  %t1591 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %t1592 = load { i64, i8* }*, { i64, i8* }** %sust.ptr
  %t1593 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %t1590, { i64, i8* }* %t1591, { i64, i8* }* %t1592)
  %t1594 = ptrtoint { i64, i8* }* %t1593 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1588, i64 %t1594, i64 5)
  %t1595 = call { i64, i8* }* @licm_make(%nyx_string* %t1587, { i64, i8* }* %t1588)
  ret { i64, i8* }* %t1595
else330:
  br label %merge331
merge331:
  store i1 false, i1* %t1596
  %t1597 = load %nyx_string*, %nyx_string** %t1035
  %t1598 = getelementptr [13 x i8], [13 x i8]* @.str63, i32 0, i32 0
  %t1599 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str63.c, i8* %t1598, i64 12)
  %t1600 = call i1 @nyx_string_equals(%nyx_string* %t1597, %nyx_string* %t1599)
  br i1 %t1600, label %sc_and_rhs332, label %sc_and_end333
sc_and_rhs332:
  %t1601 = load i64, i64* %t1041
  %t1602 = icmp sge i64 %t1601, 3
  store i1 %t1602, i1* %t1596
  br label %sc_and_end333
sc_and_end333:
  %t1603 = load i1, i1* %t1596
  br i1 %t1603, label %then334, label %else335
then334:
  %t1604 = load { i64, i8* }*, { i64, i8* }** %t1038
  %t1605 = call i64 @nyx_array_get({ i64, i8* }* %t1604, i64 0)
  %t1606 = inttoptr i64 %t1605 to { i64, i8* }*
  store { i64, i8* }* %t1606, { i64, i8* }** %t1607
  %t1608 = load { i64, i8* }*, { i64, i8* }** %t1038
  %t1609 = call i64 @nyx_array_get({ i64, i8* }* %t1608, i64 1)
  %t1610 = inttoptr i64 %t1609 to { i64, i8* }*
  store { i64, i8* }* %t1610, { i64, i8* }** %t1611
  %t1612 = load { i64, i8* }*, { i64, i8* }** %t1038
  %t1613 = call i64 @nyx_array_get({ i64, i8* }* %t1612, i64 2)
  %t1614 = inttoptr i64 %t1613 to { i64, i8* }*
  store { i64, i8* }* %t1614, { i64, i8* }** %t1615
  %t1616 = load %nyx_string*, %nyx_string** %t1035
  %t1617 = call { i64, i8* }* @nyx_array_new_ptr()
  %t1618 = load { i64, i8* }*, { i64, i8* }** %t1607
  %t1619 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %t1620 = load { i64, i8* }*, { i64, i8* }** %sust.ptr
  %t1621 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %t1618, { i64, i8* }* %t1619, { i64, i8* }* %t1620)
  %t1622 = ptrtoint { i64, i8* }* %t1621 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1617, i64 %t1622, i64 5)
  %t1623 = load { i64, i8* }*, { i64, i8* }** %t1611
  %t1624 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %t1625 = load { i64, i8* }*, { i64, i8* }** %sust.ptr
  %t1626 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %t1623, { i64, i8* }* %t1624, { i64, i8* }* %t1625)
  %t1627 = ptrtoint { i64, i8* }* %t1626 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1617, i64 %t1627, i64 5)
  %t1628 = load { i64, i8* }*, { i64, i8* }** %t1615
  %t1629 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %t1630 = load { i64, i8* }*, { i64, i8* }** %sust.ptr
  %t1631 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %t1628, { i64, i8* }* %t1629, { i64, i8* }* %t1630)
  %t1632 = ptrtoint { i64, i8* }* %t1631 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1617, i64 %t1632, i64 5)
  %t1633 = call { i64, i8* }* @licm_make(%nyx_string* %t1616, { i64, i8* }* %t1617)
  ret { i64, i8* }* %t1633
else335:
  br label %merge336
merge336:
  store i1 false, i1* %t1634
  %t1635 = load %nyx_string*, %nyx_string** %t1035
  %t1636 = getelementptr [13 x i8], [13 x i8]* @.str64, i32 0, i32 0
  %t1637 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str64.c, i8* %t1636, i64 12)
  %t1638 = call i1 @nyx_string_equals(%nyx_string* %t1635, %nyx_string* %t1637)
  br i1 %t1638, label %sc_and_rhs337, label %sc_and_end338
sc_and_rhs337:
  %t1639 = load i64, i64* %t1041
  %t1640 = icmp sge i64 %t1639, 3
  store i1 %t1640, i1* %t1634
  br label %sc_and_end338
sc_and_end338:
  %t1641 = load i1, i1* %t1634
  br i1 %t1641, label %then339, label %else340
then339:
  %t1642 = load { i64, i8* }*, { i64, i8* }** %t1038
  %t1643 = call i64 @nyx_array_get({ i64, i8* }* %t1642, i64 0)
  %t1644 = inttoptr i64 %t1643 to { i64, i8* }*
  store { i64, i8* }* %t1644, { i64, i8* }** %t1645
  %t1646 = load { i64, i8* }*, { i64, i8* }** %t1038
  %t1647 = call i64 @nyx_array_get_checked({ i64, i8* }* %t1646, i64 1, i64 2)
  %t1648 = inttoptr i64 %t1647 to %nyx_string*
  store %nyx_string* %t1648, %nyx_string** %t1649
  %t1650 = load { i64, i8* }*, { i64, i8* }** %t1038
  %t1651 = call i64 @nyx_array_get({ i64, i8* }* %t1650, i64 2)
  %t1652 = inttoptr i64 %t1651 to { i64, i8* }*
  store { i64, i8* }* %t1652, { i64, i8* }** %t1653
  %t1654 = load %nyx_string*, %nyx_string** %t1035
  %t1655 = call { i64, i8* }* @nyx_array_new_ptr()
  %t1656 = load { i64, i8* }*, { i64, i8* }** %t1645
  %t1657 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %t1658 = load { i64, i8* }*, { i64, i8* }** %sust.ptr
  %t1659 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %t1656, { i64, i8* }* %t1657, { i64, i8* }* %t1658)
  %t1660 = ptrtoint { i64, i8* }* %t1659 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1655, i64 %t1660, i64 5)
  %t1661 = load %nyx_string*, %nyx_string** %t1649
  %t1662 = ptrtoint %nyx_string* %t1661 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1655, i64 %t1662, i64 2)
  %t1663 = load { i64, i8* }*, { i64, i8* }** %t1653
  %t1664 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %t1665 = load { i64, i8* }*, { i64, i8* }** %sust.ptr
  %t1666 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %t1663, { i64, i8* }* %t1664, { i64, i8* }* %t1665)
  %t1667 = ptrtoint { i64, i8* }* %t1666 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1655, i64 %t1667, i64 5)
  %t1668 = call { i64, i8* }* @licm_make(%nyx_string* %t1654, { i64, i8* }* %t1655)
  ret { i64, i8* }* %t1668
else340:
  br label %merge341
merge341:
  store i1 false, i1* %t1669
  %t1670 = load %nyx_string*, %nyx_string** %t1035
  %t1671 = getelementptr [13 x i8], [13 x i8]* @.str65, i32 0, i32 0
  %t1672 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str65.c, i8* %t1671, i64 12)
  %t1673 = call i1 @nyx_string_equals(%nyx_string* %t1670, %nyx_string* %t1672)
  br i1 %t1673, label %sc_and_rhs342, label %sc_and_end343
sc_and_rhs342:
  %t1674 = load i64, i64* %t1041
  %t1675 = icmp sge i64 %t1674, 2
  store i1 %t1675, i1* %t1669
  br label %sc_and_end343
sc_and_end343:
  %t1676 = load i1, i1* %t1669
  br i1 %t1676, label %then344, label %else345
then344:
  %t1677 = load { i64, i8* }*, { i64, i8* }** %t1038
  %t1678 = call i64 @nyx_array_get({ i64, i8* }* %t1677, i64 0)
  %t1679 = inttoptr i64 %t1678 to { i64, i8* }*
  store { i64, i8* }* %t1679, { i64, i8* }** %t1680
  %t1681 = load { i64, i8* }*, { i64, i8* }** %t1038
  %t1682 = call i64 @nyx_array_get({ i64, i8* }* %t1681, i64 1)
  %t1683 = inttoptr i64 %t1682 to { i64, i8* }*
  store { i64, i8* }* %t1683, { i64, i8* }** %t1684
  %t1685 = load %nyx_string*, %nyx_string** %t1035
  %t1686 = call { i64, i8* }* @nyx_array_new_ptr()
  %t1687 = load { i64, i8* }*, { i64, i8* }** %t1680
  %t1688 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %t1689 = load { i64, i8* }*, { i64, i8* }** %sust.ptr
  %t1690 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %t1687, { i64, i8* }* %t1688, { i64, i8* }* %t1689)
  %t1691 = ptrtoint { i64, i8* }* %t1690 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1686, i64 %t1691, i64 5)
  %t1692 = load { i64, i8* }*, { i64, i8* }** %t1684
  %t1693 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %t1694 = load { i64, i8* }*, { i64, i8* }** %sust.ptr
  %t1695 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %t1692, { i64, i8* }* %t1693, { i64, i8* }* %t1694)
  %t1696 = ptrtoint { i64, i8* }* %t1695 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1686, i64 %t1696, i64 5)
  %t1697 = call { i64, i8* }* @licm_make(%nyx_string* %t1685, { i64, i8* }* %t1686)
  ret { i64, i8* }* %t1697
else345:
  br label %merge346
merge346:
  store i1 false, i1* %t1698
  %t1699 = load %nyx_string*, %nyx_string** %t1035
  %t1700 = getelementptr [7 x i8], [7 x i8]* @.str66, i32 0, i32 0
  %t1701 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str66.c, i8* %t1700, i64 6)
  %t1702 = call i1 @nyx_string_equals(%nyx_string* %t1699, %nyx_string* %t1701)
  br i1 %t1702, label %sc_and_rhs347, label %sc_and_end348
sc_and_rhs347:
  %t1703 = load i64, i64* %t1041
  %t1704 = icmp sge i64 %t1703, 1
  store i1 %t1704, i1* %t1698
  br label %sc_and_end348
sc_and_end348:
  %t1705 = load i1, i1* %t1698
  br i1 %t1705, label %then349, label %else350
then349:
  %t1706 = load { i64, i8* }*, { i64, i8* }** %t1038
  %t1707 = call i64 @nyx_array_get({ i64, i8* }* %t1706, i64 0)
  %t1708 = inttoptr i64 %t1707 to { i64, i8* }*
  store { i64, i8* }* %t1708, { i64, i8* }** %t1709
  %t1710 = load %nyx_string*, %nyx_string** %t1035
  %t1711 = call { i64, i8* }* @nyx_array_new_ptr()
  %t1712 = load { i64, i8* }*, { i64, i8* }** %t1709
  %t1713 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %t1714 = load { i64, i8* }*, { i64, i8* }** %sust.ptr
  %t1715 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %t1712, { i64, i8* }* %t1713, { i64, i8* }* %t1714)
  %t1716 = ptrtoint { i64, i8* }* %t1715 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1711, i64 %t1716, i64 5)
  %t1717 = call { i64, i8* }* @licm_make(%nyx_string* %t1710, { i64, i8* }* %t1711)
  ret { i64, i8* }* %t1717
else350:
  br label %merge351
merge351:
  store i1 false, i1* %t1718
  %t1719 = load %nyx_string*, %nyx_string** %t1035
  %t1720 = getelementptr [12 x i8], [12 x i8]* @.str67, i32 0, i32 0
  %t1721 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str67.c, i8* %t1720, i64 11)
  %t1722 = call i1 @nyx_string_equals(%nyx_string* %t1719, %nyx_string* %t1721)
  br i1 %t1722, label %sc_and_rhs352, label %sc_and_end353
sc_and_rhs352:
  %t1723 = load i64, i64* %t1041
  %t1724 = icmp sge i64 %t1723, 3
  store i1 %t1724, i1* %t1718
  br label %sc_and_end353
sc_and_end353:
  %t1725 = load i1, i1* %t1718
  br i1 %t1725, label %then354, label %else355
then354:
  %t1726 = load { i64, i8* }*, { i64, i8* }** %t1038
  %t1727 = call i64 @nyx_array_get({ i64, i8* }* %t1726, i64 0)
  store i64 %t1727, i64* %t1728
  %t1729 = load { i64, i8* }*, { i64, i8* }** %t1038
  %t1730 = call i64 @nyx_array_get({ i64, i8* }* %t1729, i64 1)
  %t1731 = inttoptr i64 %t1730 to { i64, i8* }*
  store { i64, i8* }* %t1731, { i64, i8* }** %t1732
  %t1733 = load { i64, i8* }*, { i64, i8* }** %t1038
  %t1734 = call i64 @nyx_array_get({ i64, i8* }* %t1733, i64 2)
  store i64 %t1734, i64* %t1735
  %t1736 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t1736, { i64, i8* }** %t1737
  store i64 0, i64* %t1738
  br label %while_cond357
while_cond357:
  %t1739 = load i64, i64* %t1738
  %t1740 = load { i64, i8* }*, { i64, i8* }** %t1732
  %t1741 = call i64 @nyx_array_length({ i64, i8* }* %t1740)
  %t1742 = icmp slt i64 %t1739, %t1741
  br i1 %t1742, label %while_body358, label %while_end359
while_body358:
  %t1743 = load { i64, i8* }*, { i64, i8* }** %t1732
  %t1744 = load i64, i64* %t1738
  %t1745 = call i64 @nyx_array_get({ i64, i8* }* %t1743, i64 %t1744)
  %t1746 = inttoptr i64 %t1745 to { i64, i8* }*
  store { i64, i8* }* %t1746, { i64, i8* }** %t1747
  %t1748 = load { i64, i8* }*, { i64, i8* }** %t1747
  %t1749 = call i64 @nyx_array_length({ i64, i8* }* %t1748)
  %t1750 = icmp sge i64 %t1749, 2
  br i1 %t1750, label %then360, label %else361
then360:
  %t1751 = load { i64, i8* }*, { i64, i8* }** %t1747
  %t1752 = call i64 @nyx_array_get_checked({ i64, i8* }* %t1751, i64 0, i64 2)
  %t1753 = inttoptr i64 %t1752 to %nyx_string*
  store %nyx_string* %t1753, %nyx_string** %t1754
  %t1755 = load { i64, i8* }*, { i64, i8* }** %t1747
  %t1756 = call i64 @nyx_array_get({ i64, i8* }* %t1755, i64 1)
  %t1757 = inttoptr i64 %t1756 to { i64, i8* }*
  store { i64, i8* }* %t1757, { i64, i8* }** %t1758
  %t1759 = load { i64, i8* }*, { i64, i8* }** %t1737
  %t1760 = call { i64, i8* }* @nyx_array_new_ptr()
  %t1761 = load %nyx_string*, %nyx_string** %t1754
  %t1762 = ptrtoint %nyx_string* %t1761 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1760, i64 %t1762, i64 2)
  %t1763 = load { i64, i8* }*, { i64, i8* }** %t1758
  %t1764 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %t1765 = load { i64, i8* }*, { i64, i8* }** %sust.ptr
  %t1766 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %t1763, { i64, i8* }* %t1764, { i64, i8* }* %t1765)
  %t1767 = ptrtoint { i64, i8* }* %t1766 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1760, i64 %t1767, i64 5)
  %t1768 = ptrtoint { i64, i8* }* %t1760 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1759, i64 %t1768, i64 5)
  br label %merge362
else361:
  %t1769 = load { i64, i8* }*, { i64, i8* }** %t1737
  %t1770 = load { i64, i8* }*, { i64, i8* }** %t1747
  %t1771 = ptrtoint { i64, i8* }* %t1770 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1769, i64 %t1771, i64 5)
  br label %merge362
merge362:
  %t1772 = load i64, i64* %t1738
  %t1773 = add i64 %t1772, 1
  store i64 %t1773, i64* %t1738
  br label %while_cond357
while_end359:
  %t1774 = load %nyx_string*, %nyx_string** %t1035
  %t1775 = call { i64, i8* }* @nyx_array_new_ptr()
  %t1776 = load i64, i64* %t1728
  call void @nyx_array_push({ i64, i8* }* %t1775, i64 %t1776)
  %t1777 = load { i64, i8* }*, { i64, i8* }** %t1737
  %t1778 = ptrtoint { i64, i8* }* %t1777 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1775, i64 %t1778, i64 5)
  %t1779 = load i64, i64* %t1735
  call void @nyx_array_push({ i64, i8* }* %t1775, i64 %t1779)
  %t1780 = call { i64, i8* }* @licm_make(%nyx_string* %t1774, { i64, i8* }* %t1775)
  ret { i64, i8* }* %t1780
else355:
  br label %merge356
merge356:
  store i1 false, i1* %t1781
  %t1782 = load %nyx_string*, %nyx_string** %t1035
  %t1783 = getelementptr [7 x i8], [7 x i8]* @.str68, i32 0, i32 0
  %t1784 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str68.c, i8* %t1783, i64 6)
  %t1785 = call i1 @nyx_string_equals(%nyx_string* %t1782, %nyx_string* %t1784)
  br i1 %t1785, label %sc_and_rhs363, label %sc_and_end364
sc_and_rhs363:
  %t1786 = load i64, i64* %t1041
  %t1787 = icmp sge i64 %t1786, 1
  store i1 %t1787, i1* %t1781
  br label %sc_and_end364
sc_and_end364:
  %t1788 = load i1, i1* %t1781
  br i1 %t1788, label %then365, label %else366
then365:
  %t1789 = load { i64, i8* }*, { i64, i8* }** %t1038
  %t1790 = call i64 @nyx_array_get({ i64, i8* }* %t1789, i64 0)
  %t1791 = inttoptr i64 %t1790 to { i64, i8* }*
  store { i64, i8* }* %t1791, { i64, i8* }** %t1792
  %t1793 = load %nyx_string*, %nyx_string** %t1035
  %t1794 = call { i64, i8* }* @nyx_array_new_ptr()
  %t1795 = load { i64, i8* }*, { i64, i8* }** %t1792
  %t1796 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %t1797 = load { i64, i8* }*, { i64, i8* }** %sust.ptr
  %t1798 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %t1795, { i64, i8* }* %t1796, { i64, i8* }* %t1797)
  %t1799 = ptrtoint { i64, i8* }* %t1798 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1794, i64 %t1799, i64 5)
  %t1800 = call { i64, i8* }* @licm_make(%nyx_string* %t1793, { i64, i8* }* %t1794)
  ret { i64, i8* }* %t1800
else366:
  br label %merge367
merge367:
  store i1 false, i1* %t1801
  %t1802 = load %nyx_string*, %nyx_string** %t1035
  %t1803 = getelementptr [5 x i8], [5 x i8]* @.str69, i32 0, i32 0
  %t1804 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str69.c, i8* %t1803, i64 4)
  %t1805 = call i1 @nyx_string_equals(%nyx_string* %t1802, %nyx_string* %t1804)
  br i1 %t1805, label %sc_and_rhs368, label %sc_and_end369
sc_and_rhs368:
  %t1806 = load i64, i64* %t1041
  %t1807 = icmp sge i64 %t1806, 2
  store i1 %t1807, i1* %t1801
  br label %sc_and_end369
sc_and_end369:
  %t1808 = load i1, i1* %t1801
  br i1 %t1808, label %then370, label %else371
then370:
  %t1809 = load { i64, i8* }*, { i64, i8* }** %t1038
  %t1810 = call i64 @nyx_array_get({ i64, i8* }* %t1809, i64 0)
  %t1811 = inttoptr i64 %t1810 to { i64, i8* }*
  store { i64, i8* }* %t1811, { i64, i8* }** %t1812
  %t1813 = load { i64, i8* }*, { i64, i8* }** %t1038
  %t1814 = call i64 @nyx_array_get({ i64, i8* }* %t1813, i64 1)
  store i64 %t1814, i64* %t1815
  %t1816 = load %nyx_string*, %nyx_string** %t1035
  %t1817 = call { i64, i8* }* @nyx_array_new_ptr()
  %t1818 = load { i64, i8* }*, { i64, i8* }** %t1812
  %t1819 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %t1820 = load { i64, i8* }*, { i64, i8* }** %sust.ptr
  %t1821 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %t1818, { i64, i8* }* %t1819, { i64, i8* }* %t1820)
  %t1822 = ptrtoint { i64, i8* }* %t1821 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1817, i64 %t1822, i64 5)
  %t1823 = load i64, i64* %t1815
  call void @nyx_array_push({ i64, i8* }* %t1817, i64 %t1823)
  %t1824 = call { i64, i8* }* @licm_make(%nyx_string* %t1816, { i64, i8* }* %t1817)
  ret { i64, i8* }* %t1824
else371:
  br label %merge372
merge372:
  store i1 false, i1* %t1825
  %t1826 = load %nyx_string*, %nyx_string** %t1035
  %t1827 = getelementptr [6 x i8], [6 x i8]* @.str70, i32 0, i32 0
  %t1828 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str70.c, i8* %t1827, i64 5)
  %t1829 = call i1 @nyx_string_equals(%nyx_string* %t1826, %nyx_string* %t1828)
  br i1 %t1829, label %sc_and_rhs373, label %sc_and_end374
sc_and_rhs373:
  %t1830 = load i64, i64* %t1041
  %t1831 = icmp sge i64 %t1830, 3
  store i1 %t1831, i1* %t1825
  br label %sc_and_end374
sc_and_end374:
  %t1832 = load i1, i1* %t1825
  br i1 %t1832, label %then375, label %else376
then375:
  %t1833 = load { i64, i8* }*, { i64, i8* }** %t1038
  %t1834 = call i64 @nyx_array_get({ i64, i8* }* %t1833, i64 0)
  %t1835 = inttoptr i64 %t1834 to { i64, i8* }*
  store { i64, i8* }* %t1835, { i64, i8* }** %t1836
  %t1837 = load { i64, i8* }*, { i64, i8* }** %t1038
  %t1838 = call i64 @nyx_array_get({ i64, i8* }* %t1837, i64 1)
  %t1839 = inttoptr i64 %t1838 to { i64, i8* }*
  store { i64, i8* }* %t1839, { i64, i8* }** %t1840
  %t1841 = load { i64, i8* }*, { i64, i8* }** %t1038
  %t1842 = call i64 @nyx_array_get({ i64, i8* }* %t1841, i64 2)
  store i64 %t1842, i64* %t1843
  %t1844 = load %nyx_string*, %nyx_string** %t1035
  %t1845 = call { i64, i8* }* @nyx_array_new_ptr()
  %t1846 = load { i64, i8* }*, { i64, i8* }** %t1836
  %t1847 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %t1848 = load { i64, i8* }*, { i64, i8* }** %sust.ptr
  %t1849 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %t1846, { i64, i8* }* %t1847, { i64, i8* }* %t1848)
  %t1850 = ptrtoint { i64, i8* }* %t1849 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1845, i64 %t1850, i64 5)
  %t1851 = load { i64, i8* }*, { i64, i8* }** %t1840
  %t1852 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %t1853 = load { i64, i8* }*, { i64, i8* }** %sust.ptr
  %t1854 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %t1851, { i64, i8* }* %t1852, { i64, i8* }* %t1853)
  %t1855 = ptrtoint { i64, i8* }* %t1854 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1845, i64 %t1855, i64 5)
  %t1856 = load i64, i64* %t1843
  call void @nyx_array_push({ i64, i8* }* %t1845, i64 %t1856)
  %t1857 = call { i64, i8* }* @licm_make(%nyx_string* %t1844, { i64, i8* }* %t1845)
  ret { i64, i8* }* %t1857
else376:
  br label %merge377
merge377:
  %t1858 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  ret { i64, i8* }* %t1858
}

define internal { i64, i8* }* @licm_stmt_list(
{ i64, i8* }* %stmts.param, { i64, i8* }* %counter.param) {
  %stmts.ptr = alloca { i64, i8* }*
  %counter.ptr = alloca { i64, i8* }*
  %t1860 = alloca { i64, i8* }*
  %t1861 = alloca i64
  %t1864 = alloca %nyx_string*
  %t1867 = alloca %nyx_string*
  %t1870 = alloca %nyx_string*
  %t1873 = alloca %nyx_string*
  %t1876 = alloca %nyx_string*
  %t1879 = alloca %nyx_string*
  %t1882 = alloca %nyx_string*
  %t1891 = alloca { i64, i8* }*
  %t1894 = alloca %ASTNode
  %t1897 = alloca %nyx_string*
  %t1900 = alloca { i64, i8* }*
  %t1901 = alloca i64
  %t1908 = alloca i1
  %t1909 = alloca i1
  %t1910 = alloca i1
  %t1930 = alloca %ASTNode
  %t1932 = alloca { i64, i8* }*
  %t1937 = alloca { i64, i8* }*
  %t1938 = alloca i64
  %t1947 = alloca %nyx_string*
  %t1950 = alloca i64
  %t1958 = alloca %nyx_string*
  %t1969 = alloca { i64, i8* }*
  %t1975 = alloca { i64, i8* }*
  %t1986 = alloca { i64, i8* }*
  %t1993 = alloca { i64, i8* }*
  %t1998 = alloca { i64, i8* }*
  store { i64, i8* }* %stmts.param, { i64, i8* }** %stmts.ptr
  store { i64, i8* }* %counter.param, { i64, i8* }** %counter.ptr
  %t1859 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t1859, { i64, i8* }** %t1860
  store i64 0, i64* %t1861
  %t1862 = getelementptr [4 x i8], [4 x i8]* @.str71, i32 0, i32 0
  %t1863 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str71.c, i8* %t1862, i64 3)
  store %nyx_string* %t1863, %nyx_string** %t1864
  %t1865 = getelementptr [10 x i8], [10 x i8]* @.str72, i32 0, i32 0
  %t1866 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str72.c, i8* %t1865, i64 9)
  store %nyx_string* %t1866, %nyx_string** %t1867
  %t1868 = getelementptr [6 x i8], [6 x i8]* @.str73, i32 0, i32 0
  %t1869 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str73.c, i8* %t1868, i64 5)
  store %nyx_string* %t1869, %nyx_string** %t1870
  %t1871 = getelementptr [12 x i8], [12 x i8]* @.str74, i32 0, i32 0
  %t1872 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str74.c, i8* %t1871, i64 11)
  store %nyx_string* %t1872, %nyx_string** %t1873
  %t1874 = getelementptr [7 x i8], [7 x i8]* @.str75, i32 0, i32 0
  %t1875 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str75.c, i8* %t1874, i64 6)
  store %nyx_string* %t1875, %nyx_string** %t1876
  %t1877 = getelementptr [4 x i8], [4 x i8]* @.str76, i32 0, i32 0
  %t1878 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str76.c, i8* %t1877, i64 3)
  store %nyx_string* %t1878, %nyx_string** %t1879
  %t1880 = getelementptr [7 x i8], [7 x i8]* @.str77, i32 0, i32 0
  %t1881 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str77.c, i8* %t1880, i64 6)
  store %nyx_string* %t1881, %nyx_string** %t1882
  br label %while_cond378
while_cond378:
  %t1883 = load i64, i64* %t1861
  %t1884 = load { i64, i8* }*, { i64, i8* }** %stmts.ptr
  %t1885 = call i64 @nyx_array_length({ i64, i8* }* %t1884)
  %t1886 = icmp slt i64 %t1883, %t1885
  br i1 %t1886, label %while_body379, label %while_end380
while_body379:
  %t1887 = load { i64, i8* }*, { i64, i8* }** %stmts.ptr
  %t1888 = load i64, i64* %t1861
  %t1889 = call i64 @nyx_array_get({ i64, i8* }* %t1887, i64 %t1888)
  %t1890 = inttoptr i64 %t1889 to { i64, i8* }*
  store { i64, i8* }* %t1890, { i64, i8* }** %t1891
  %t1892 = load { i64, i8* }*, { i64, i8* }** %t1891
  %t1893 = call %ASTNode @licm_root_of({ i64, i8* }* %t1892)
  store %ASTNode %t1893, %ASTNode* %t1894
  %t1895 = getelementptr %ASTNode, %ASTNode* %t1894, i32 0, i32 0
  %t1896 = load %nyx_string*, %nyx_string** %t1895
  store %nyx_string* %t1896, %nyx_string** %t1897
  %t1898 = getelementptr %ASTNode, %ASTNode* %t1894, i32 0, i32 1
  %t1899 = load { i64, i8* }*, { i64, i8* }** %t1898
  store { i64, i8* }* %t1899, { i64, i8* }** %t1900
  store i64 1, i64* %t1901
  %t1902 = load %nyx_string*, %nyx_string** %t1897
  %t1903 = load %nyx_string*, %nyx_string** %t1864
  %t1904 = call i1 @nyx_string_equals(%nyx_string* %t1902, %nyx_string* %t1903)
  br i1 %t1904, label %then381, label %else382
then381:
  store i64 2, i64* %t1901
  br label %merge383
else382:
  br label %merge383
merge383:
  %t1905 = load %nyx_string*, %nyx_string** %t1897
  %t1906 = load %nyx_string*, %nyx_string** %t1867
  %t1907 = call i1 @nyx_string_equals(%nyx_string* %t1905, %nyx_string* %t1906)
  br i1 %t1907, label %then384, label %else385
then384:
  store i64 2, i64* %t1901
  br label %merge386
else385:
  br label %merge386
merge386:
  store i1 false, i1* %t1908
  store i1 true, i1* %t1909
  store i1 true, i1* %t1910
  %t1911 = load %nyx_string*, %nyx_string** %t1897
  %t1912 = load %nyx_string*, %nyx_string** %t1870
  %t1913 = call i1 @nyx_string_equals(%nyx_string* %t1911, %nyx_string* %t1912)
  br i1 %t1913, label %sc_or_end388, label %sc_or_rhs387
sc_or_rhs387:
  %t1914 = load %nyx_string*, %nyx_string** %t1897
  %t1915 = load %nyx_string*, %nyx_string** %t1864
  %t1916 = call i1 @nyx_string_equals(%nyx_string* %t1914, %nyx_string* %t1915)
  store i1 %t1916, i1* %t1910
  br label %sc_or_end388
sc_or_end388:
  %t1917 = load i1, i1* %t1910
  br i1 %t1917, label %sc_or_end390, label %sc_or_rhs389
sc_or_rhs389:
  %t1918 = load %nyx_string*, %nyx_string** %t1897
  %t1919 = load %nyx_string*, %nyx_string** %t1867
  %t1920 = call i1 @nyx_string_equals(%nyx_string* %t1918, %nyx_string* %t1919)
  store i1 %t1920, i1* %t1909
  br label %sc_or_end390
sc_or_end390:
  %t1921 = load i1, i1* %t1909
  br i1 %t1921, label %sc_and_rhs391, label %sc_and_end392
sc_and_rhs391:
  %t1922 = load { i64, i8* }*, { i64, i8* }** %t1900
  %t1923 = call i64 @nyx_array_length({ i64, i8* }* %t1922)
  %t1924 = load i64, i64* %t1901
  %t1925 = icmp sgt i64 %t1923, %t1924
  store i1 %t1925, i1* %t1908
  br label %sc_and_end392
sc_and_end392:
  %t1926 = load i1, i1* %t1908
  br i1 %t1926, label %then393, label %else394
then393:
  %t1927 = load %ASTNode, %ASTNode* %t1894
  %t1928 = load i64, i64* %t1901
  %t1929 = call %ASTNode @licm_node_at(%ASTNode %t1927, i64 %t1928)
  store %ASTNode %t1929, %ASTNode* %t1930
  %t1931 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t1931, { i64, i8* }** %t1932
  %t1933 = load %ASTNode, %ASTNode* %t1930
  %t1934 = load { i64, i8* }*, { i64, i8* }** %t1932
  %t1935 = call i64 @licm_collect(%ASTNode %t1933, { i64, i8* }* %t1934)
  %t1936 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t1936, { i64, i8* }** %t1937
  store i64 0, i64* %t1938
  br label %while_cond396
while_cond396:
  %t1939 = load i64, i64* %t1938
  %t1940 = load { i64, i8* }*, { i64, i8* }** %t1932
  %t1941 = call i64 @nyx_array_length({ i64, i8* }* %t1940)
  %t1942 = icmp slt i64 %t1939, %t1941
  br i1 %t1942, label %while_body397, label %while_end398
while_body397:
  %t1943 = load { i64, i8* }*, { i64, i8* }** %t1932
  %t1944 = load i64, i64* %t1938
  %t1945 = call i64 @nyx_array_get_checked({ i64, i8* }* %t1943, i64 %t1944, i64 2)
  %t1946 = inttoptr i64 %t1945 to %nyx_string*
  store %nyx_string* %t1946, %nyx_string** %t1947
  %t1948 = load { i64, i8* }*, { i64, i8* }** %counter.ptr
  %t1949 = call i64 @nyx_slot_as_int_checked({ i64, i8* }* %t1948, i64 0)
  store i64 %t1949, i64* %t1950
  %t1951 = load { i64, i8* }*, { i64, i8* }** %counter.ptr
  %t1952 = load i64, i64* %t1950
  %t1953 = add i64 %t1952, 1
  call void @nyx_array_set({ i64, i8* }* %t1951, i64 0, i64 %t1953)
  %t1954 = load %nyx_string*, %nyx_string** %t1873
  %t1955 = load i64, i64* %t1950
  %t1956 = call %nyx_string* @nyx_string_from_int(i64 %t1955)
  %t1957 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1954, %nyx_string* %t1956)
  store %nyx_string* %t1957, %nyx_string** %t1958
  %t1959 = load { i64, i8* }*, { i64, i8* }** %t1937
  %t1960 = call { i64, i8* }* @nyx_array_new_ptr()
  %t1961 = load %nyx_string*, %nyx_string** %t1947
  %t1962 = ptrtoint %nyx_string* %t1961 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1960, i64 %t1962, i64 2)
  %t1963 = load %nyx_string*, %nyx_string** %t1958
  %t1964 = ptrtoint %nyx_string* %t1963 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1960, i64 %t1964, i64 2)
  %t1965 = ptrtoint { i64, i8* }* %t1960 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1959, i64 %t1965, i64 5)
  %t1966 = load %nyx_string*, %nyx_string** %t1958
  %t1967 = call { i64, i8* }* @nyx_array_new_ptr()
  %t1968 = call { i64, i8* }* @licm_make(%nyx_string* %t1966, { i64, i8* }* %t1967)
  store { i64, i8* }* %t1968, { i64, i8* }** %t1969
  %t1970 = load %nyx_string*, %nyx_string** %t1876
  %t1971 = call { i64, i8* }* @nyx_array_new_ptr()
  %t1972 = load %nyx_string*, %nyx_string** %t1947
  %t1973 = ptrtoint %nyx_string* %t1972 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1971, i64 %t1973, i64 2)
  %t1974 = call { i64, i8* }* @licm_make(%nyx_string* %t1970, { i64, i8* }* %t1971)
  store { i64, i8* }* %t1974, { i64, i8* }** %t1975
  %t1976 = load %nyx_string*, %nyx_string** %t1879
  %t1977 = call { i64, i8* }* @nyx_array_new_ptr()
  %t1978 = load { i64, i8* }*, { i64, i8* }** %t1969
  %t1979 = ptrtoint { i64, i8* }* %t1978 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1977, i64 %t1979, i64 5)
  %t1980 = zext i1 0 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1977, i64 %t1980, i64 4)
  %t1981 = load { i64, i8* }*, { i64, i8* }** %t1975
  %t1982 = ptrtoint { i64, i8* }* %t1981 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1977, i64 %t1982, i64 5)
  %t1983 = load %nyx_string*, %nyx_string** %t1882
  %t1984 = ptrtoint %nyx_string* %t1983 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1977, i64 %t1984, i64 2)
  %t1985 = call { i64, i8* }* @licm_make(%nyx_string* %t1976, { i64, i8* }* %t1977)
  store { i64, i8* }* %t1985, { i64, i8* }** %t1986
  %t1987 = load { i64, i8* }*, { i64, i8* }** %t1860
  %t1988 = load { i64, i8* }*, { i64, i8* }** %t1986
  %t1989 = ptrtoint { i64, i8* }* %t1988 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1987, i64 %t1989, i64 5)
  %t1990 = load i64, i64* %t1938
  %t1991 = add i64 %t1990, 1
  store i64 %t1991, i64* %t1938
  br label %while_cond396
while_end398:
  %t1992 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t1992, { i64, i8* }** %t1993
  %t1994 = load { i64, i8* }*, { i64, i8* }** %t1891
  %t1995 = load { i64, i8* }*, { i64, i8* }** %t1937
  %t1996 = load { i64, i8* }*, { i64, i8* }** %t1993
  %t1997 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %t1994, { i64, i8* }* %t1995, { i64, i8* }* %t1996)
  store { i64, i8* }* %t1997, { i64, i8* }** %t1998
  %t1999 = load { i64, i8* }*, { i64, i8* }** %t1860
  %t2000 = load { i64, i8* }*, { i64, i8* }** %t1998
  %t2001 = ptrtoint { i64, i8* }* %t2000 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1999, i64 %t2001, i64 5)
  br label %merge395
else394:
  %t2002 = load { i64, i8* }*, { i64, i8* }** %t1860
  %t2003 = load { i64, i8* }*, { i64, i8* }** %t1891
  %t2004 = load { i64, i8* }*, { i64, i8* }** %counter.ptr
  %t2005 = call { i64, i8* }* @licm_descend_stmt({ i64, i8* }* %t2003, { i64, i8* }* %t2004)
  %t2006 = ptrtoint { i64, i8* }* %t2005 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2002, i64 %t2006, i64 5)
  br label %merge395
merge395:
  %t2007 = load i64, i64* %t1861
  %t2008 = add i64 %t2007, 1
  store i64 %t2008, i64* %t1861
  br label %while_cond378
while_end380:
  %t2009 = load { i64, i8* }*, { i64, i8* }** %t1860
  ret { i64, i8* }* %t2009
}

define internal { i64, i8* }* @licm_descend_stmt(
{ i64, i8* }* %stmt.param, { i64, i8* }* %counter.param) {
  %stmt.ptr = alloca { i64, i8* }*
  %counter.ptr = alloca { i64, i8* }*
  %t2012 = alloca %ASTNode
  %t2015 = alloca %nyx_string*
  %t2018 = alloca { i64, i8* }*
  %t2021 = alloca i64
  %t2022 = alloca i1
  %t2023 = alloca i1
  %t2038 = alloca %ASTNode
  %t2048 = alloca { i64, i8* }*
  %t2052 = alloca { i64, i8* }*
  %t2059 = alloca { i64, i8* }*
  %t2061 = alloca { i64, i8* }*
  %t2062 = alloca i64
  %t2083 = alloca i1
  %t2093 = alloca { i64, i8* }*
  %t2097 = alloca { i64, i8* }*
  %t2104 = alloca i1
  %t2115 = alloca { i64, i8* }*
  %t2119 = alloca { i64, i8* }*
  %t2123 = alloca { i64, i8* }*
  %t2127 = alloca { i64, i8* }*
  %t2131 = alloca { i64, i8* }*
  %t2142 = alloca i1
  %t2153 = alloca { i64, i8* }*
  %t2155 = alloca { i64, i8* }*
  %t2156 = alloca i64
  %t2165 = alloca { i64, i8* }*
  %t2174 = alloca { i64, i8* }*
  %t2175 = alloca i64
  %t2196 = alloca i1
  %t2207 = alloca { i64, i8* }*
  %t2209 = alloca { i64, i8* }*
  %t2210 = alloca i64
  %t2219 = alloca { i64, i8* }*
  %t2228 = alloca { i64, i8* }*
  %t2229 = alloca i64
  store { i64, i8* }* %stmt.param, { i64, i8* }** %stmt.ptr
  store { i64, i8* }* %counter.param, { i64, i8* }** %counter.ptr
  %t2010 = load { i64, i8* }*, { i64, i8* }** %stmt.ptr
  %t2011 = call %ASTNode @licm_root_of({ i64, i8* }* %t2010)
  store %ASTNode %t2011, %ASTNode* %t2012
  %t2013 = getelementptr %ASTNode, %ASTNode* %t2012, i32 0, i32 0
  %t2014 = load %nyx_string*, %nyx_string** %t2013
  store %nyx_string* %t2014, %nyx_string** %t2015
  %t2016 = getelementptr %ASTNode, %ASTNode* %t2012, i32 0, i32 1
  %t2017 = load { i64, i8* }*, { i64, i8* }** %t2016
  store { i64, i8* }* %t2017, { i64, i8* }** %t2018
  %t2019 = load { i64, i8* }*, { i64, i8* }** %t2018
  %t2020 = call i64 @nyx_array_length({ i64, i8* }* %t2019)
  store i64 %t2020, i64* %t2021
  store i1 false, i1* %t2022
  store i1 true, i1* %t2023
  %t2024 = load %nyx_string*, %nyx_string** %t2015
  %t2025 = getelementptr [9 x i8], [9 x i8]* @.str78, i32 0, i32 0
  %t2026 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str78.c, i8* %t2025, i64 8)
  %t2027 = call i1 @nyx_string_equals(%nyx_string* %t2024, %nyx_string* %t2026)
  br i1 %t2027, label %sc_or_end400, label %sc_or_rhs399
sc_or_rhs399:
  %t2028 = load %nyx_string*, %nyx_string** %t2015
  %t2029 = getelementptr [9 x i8], [9 x i8]* @.str79, i32 0, i32 0
  %t2030 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str79.c, i8* %t2029, i64 8)
  %t2031 = call i1 @nyx_string_equals(%nyx_string* %t2028, %nyx_string* %t2030)
  store i1 %t2031, i1* %t2023
  br label %sc_or_end400
sc_or_end400:
  %t2032 = load i1, i1* %t2023
  br i1 %t2032, label %sc_and_rhs401, label %sc_and_end402
sc_and_rhs401:
  %t2033 = load i64, i64* %t2021
  %t2034 = icmp sge i64 %t2033, 4
  store i1 %t2034, i1* %t2022
  br label %sc_and_end402
sc_and_end402:
  %t2035 = load i1, i1* %t2022
  br i1 %t2035, label %then403, label %else404
then403:
  %t2036 = load %ASTNode, %ASTNode* %t2012
  %t2037 = call %ASTNode @licm_node_at(%ASTNode %t2036, i64 3)
  store %ASTNode %t2037, %ASTNode* %t2038
  %t2039 = getelementptr %ASTNode, %ASTNode* %t2038, i32 0, i32 0
  %t2040 = load %nyx_string*, %nyx_string** %t2039
  %t2041 = getelementptr [6 x i8], [6 x i8]* @.str80, i32 0, i32 0
  %t2042 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str80.c, i8* %t2041, i64 5)
  %t2043 = call i1 @nyx_string_equals(%nyx_string* %t2040, %nyx_string* %t2042)
  %t2044 = xor i1 %t2043, true
  br i1 %t2044, label %then406, label %else407
then406:
  %t2045 = load { i64, i8* }*, { i64, i8* }** %stmt.ptr
  ret { i64, i8* }* %t2045
else407:
  br label %merge408
merge408:
  %t2046 = load %ASTNode, %ASTNode* %t2038
  %t2047 = call { i64, i8* }* @licm_array_at(%ASTNode %t2046, i64 0)
  store { i64, i8* }* %t2047, { i64, i8* }** %t2048
  %t2049 = load { i64, i8* }*, { i64, i8* }** %t2048
  %t2050 = load { i64, i8* }*, { i64, i8* }** %counter.ptr
  %t2051 = call { i64, i8* }* @licm_stmt_list({ i64, i8* }* %t2049, { i64, i8* }* %t2050)
  store { i64, i8* }* %t2051, { i64, i8* }** %t2052
  %t2053 = getelementptr [6 x i8], [6 x i8]* @.str81, i32 0, i32 0
  %t2054 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str81.c, i8* %t2053, i64 5)
  %t2055 = call { i64, i8* }* @nyx_array_new_ptr()
  %t2056 = load { i64, i8* }*, { i64, i8* }** %t2052
  %t2057 = ptrtoint { i64, i8* }* %t2056 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2055, i64 %t2057, i64 5)
  %t2058 = call { i64, i8* }* @licm_make(%nyx_string* %t2054, { i64, i8* }* %t2055)
  store { i64, i8* }* %t2058, { i64, i8* }** %t2059
  %t2060 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t2060, { i64, i8* }** %t2061
  store i64 0, i64* %t2062
  br label %while_cond409
while_cond409:
  %t2063 = load i64, i64* %t2062
  %t2064 = load i64, i64* %t2021
  %t2065 = icmp slt i64 %t2063, %t2064
  br i1 %t2065, label %while_body410, label %while_end411
while_body410:
  %t2066 = load i64, i64* %t2062
  %t2067 = icmp eq i64 %t2066, 3
  br i1 %t2067, label %then412, label %else413
then412:
  %t2068 = load { i64, i8* }*, { i64, i8* }** %t2061
  %t2069 = load { i64, i8* }*, { i64, i8* }** %t2059
  %t2070 = ptrtoint { i64, i8* }* %t2069 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2068, i64 %t2070, i64 5)
  br label %merge414
else413:
  %t2071 = load { i64, i8* }*, { i64, i8* }** %t2061
  %t2072 = load { i64, i8* }*, { i64, i8* }** %t2018
  %t2073 = load i64, i64* %t2062
  %t2074 = call i64 @nyx_array_get({ i64, i8* }* %t2072, i64 %t2073)
  %t2075 = load { i64, i8* }*, { i64, i8* }** %t2018
  %t2076 = load i64, i64* %t2062
  %t2077 = call i64 @nyx_array_get_tag({ i64, i8* }* %t2075, i64 %t2076)
  call void @nyx_array_push_tagged({ i64, i8* }* %t2071, i64 %t2074, i64 %t2077)
  br label %merge414
merge414:
  %t2078 = load i64, i64* %t2062
  %t2079 = add i64 %t2078, 1
  store i64 %t2079, i64* %t2062
  br label %while_cond409
while_end411:
  %t2080 = load %nyx_string*, %nyx_string** %t2015
  %t2081 = load { i64, i8* }*, { i64, i8* }** %t2061
  %t2082 = call { i64, i8* }* @licm_make(%nyx_string* %t2080, { i64, i8* }* %t2081)
  ret { i64, i8* }* %t2082
else404:
  br label %merge405
merge405:
  store i1 false, i1* %t2083
  %t2084 = load %nyx_string*, %nyx_string** %t2015
  %t2085 = getelementptr [6 x i8], [6 x i8]* @.str82, i32 0, i32 0
  %t2086 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str82.c, i8* %t2085, i64 5)
  %t2087 = call i1 @nyx_string_equals(%nyx_string* %t2084, %nyx_string* %t2086)
  br i1 %t2087, label %sc_and_rhs415, label %sc_and_end416
sc_and_rhs415:
  %t2088 = load i64, i64* %t2021
  %t2089 = icmp sge i64 %t2088, 1
  store i1 %t2089, i1* %t2083
  br label %sc_and_end416
sc_and_end416:
  %t2090 = load i1, i1* %t2083
  br i1 %t2090, label %then417, label %else418
then417:
  %t2091 = load %ASTNode, %ASTNode* %t2012
  %t2092 = call { i64, i8* }* @licm_array_at(%ASTNode %t2091, i64 0)
  store { i64, i8* }* %t2092, { i64, i8* }** %t2093
  %t2094 = load { i64, i8* }*, { i64, i8* }** %t2093
  %t2095 = load { i64, i8* }*, { i64, i8* }** %counter.ptr
  %t2096 = call { i64, i8* }* @licm_stmt_list({ i64, i8* }* %t2094, { i64, i8* }* %t2095)
  store { i64, i8* }* %t2096, { i64, i8* }** %t2097
  %t2098 = getelementptr [6 x i8], [6 x i8]* @.str83, i32 0, i32 0
  %t2099 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str83.c, i8* %t2098, i64 5)
  %t2100 = call { i64, i8* }* @nyx_array_new_ptr()
  %t2101 = load { i64, i8* }*, { i64, i8* }** %t2097
  %t2102 = ptrtoint { i64, i8* }* %t2101 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2100, i64 %t2102, i64 5)
  %t2103 = call { i64, i8* }* @licm_make(%nyx_string* %t2099, { i64, i8* }* %t2100)
  ret { i64, i8* }* %t2103
else418:
  br label %merge419
merge419:
  store i1 false, i1* %t2104
  %t2105 = load %nyx_string*, %nyx_string** %t2015
  %t2106 = getelementptr [3 x i8], [3 x i8]* @.str84, i32 0, i32 0
  %t2107 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str84.c, i8* %t2106, i64 2)
  %t2108 = call i1 @nyx_string_equals(%nyx_string* %t2105, %nyx_string* %t2107)
  br i1 %t2108, label %sc_and_rhs420, label %sc_and_end421
sc_and_rhs420:
  %t2109 = load i64, i64* %t2021
  %t2110 = icmp sge i64 %t2109, 3
  store i1 %t2110, i1* %t2104
  br label %sc_and_end421
sc_and_end421:
  %t2111 = load i1, i1* %t2104
  br i1 %t2111, label %then422, label %else423
then422:
  %t2112 = load { i64, i8* }*, { i64, i8* }** %t2018
  %t2113 = call i64 @nyx_array_get({ i64, i8* }* %t2112, i64 0)
  %t2114 = inttoptr i64 %t2113 to { i64, i8* }*
  store { i64, i8* }* %t2114, { i64, i8* }** %t2115
  %t2116 = load { i64, i8* }*, { i64, i8* }** %t2018
  %t2117 = call i64 @nyx_array_get({ i64, i8* }* %t2116, i64 1)
  %t2118 = inttoptr i64 %t2117 to { i64, i8* }*
  store { i64, i8* }* %t2118, { i64, i8* }** %t2119
  %t2120 = load { i64, i8* }*, { i64, i8* }** %t2018
  %t2121 = call i64 @nyx_array_get({ i64, i8* }* %t2120, i64 2)
  %t2122 = inttoptr i64 %t2121 to { i64, i8* }*
  store { i64, i8* }* %t2122, { i64, i8* }** %t2123
  %t2124 = load { i64, i8* }*, { i64, i8* }** %t2119
  %t2125 = load { i64, i8* }*, { i64, i8* }** %counter.ptr
  %t2126 = call { i64, i8* }* @licm_descend_stmt({ i64, i8* }* %t2124, { i64, i8* }* %t2125)
  store { i64, i8* }* %t2126, { i64, i8* }** %t2127
  %t2128 = load { i64, i8* }*, { i64, i8* }** %t2123
  %t2129 = load { i64, i8* }*, { i64, i8* }** %counter.ptr
  %t2130 = call { i64, i8* }* @licm_descend_stmt({ i64, i8* }* %t2128, { i64, i8* }* %t2129)
  store { i64, i8* }* %t2130, { i64, i8* }** %t2131
  %t2132 = getelementptr [3 x i8], [3 x i8]* @.str85, i32 0, i32 0
  %t2133 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str85.c, i8* %t2132, i64 2)
  %t2134 = call { i64, i8* }* @nyx_array_new_ptr()
  %t2135 = load { i64, i8* }*, { i64, i8* }** %t2115
  %t2136 = ptrtoint { i64, i8* }* %t2135 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2134, i64 %t2136, i64 5)
  %t2137 = load { i64, i8* }*, { i64, i8* }** %t2127
  %t2138 = ptrtoint { i64, i8* }* %t2137 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2134, i64 %t2138, i64 5)
  %t2139 = load { i64, i8* }*, { i64, i8* }** %t2131
  %t2140 = ptrtoint { i64, i8* }* %t2139 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2134, i64 %t2140, i64 5)
  %t2141 = call { i64, i8* }* @licm_make(%nyx_string* %t2133, { i64, i8* }* %t2134)
  ret { i64, i8* }* %t2141
else423:
  br label %merge424
merge424:
  store i1 false, i1* %t2142
  %t2143 = load %nyx_string*, %nyx_string** %t2015
  %t2144 = getelementptr [5 x i8], [5 x i8]* @.str86, i32 0, i32 0
  %t2145 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str86.c, i8* %t2144, i64 4)
  %t2146 = call i1 @nyx_string_equals(%nyx_string* %t2143, %nyx_string* %t2145)
  br i1 %t2146, label %sc_and_rhs425, label %sc_and_end426
sc_and_rhs425:
  %t2147 = load i64, i64* %t2021
  %t2148 = icmp sge i64 %t2147, 2
  store i1 %t2148, i1* %t2142
  br label %sc_and_end426
sc_and_end426:
  %t2149 = load i1, i1* %t2142
  br i1 %t2149, label %then427, label %else428
then427:
  %t2150 = load { i64, i8* }*, { i64, i8* }** %t2018
  %t2151 = call i64 @nyx_array_get({ i64, i8* }* %t2150, i64 1)
  %t2152 = inttoptr i64 %t2151 to { i64, i8* }*
  store { i64, i8* }* %t2152, { i64, i8* }** %t2153
  %t2154 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t2154, { i64, i8* }** %t2155
  store i64 0, i64* %t2156
  br label %while_cond430
while_cond430:
  %t2157 = load i64, i64* %t2156
  %t2158 = load { i64, i8* }*, { i64, i8* }** %t2153
  %t2159 = call i64 @nyx_array_length({ i64, i8* }* %t2158)
  %t2160 = icmp slt i64 %t2157, %t2159
  br i1 %t2160, label %while_body431, label %while_end432
while_body431:
  %t2161 = load { i64, i8* }*, { i64, i8* }** %t2153
  %t2162 = load i64, i64* %t2156
  %t2163 = call i64 @nyx_array_get({ i64, i8* }* %t2161, i64 %t2162)
  %t2164 = inttoptr i64 %t2163 to { i64, i8* }*
  store { i64, i8* }* %t2164, { i64, i8* }** %t2165
  %t2166 = load { i64, i8* }*, { i64, i8* }** %t2155
  %t2167 = load { i64, i8* }*, { i64, i8* }** %t2165
  %t2168 = load { i64, i8* }*, { i64, i8* }** %counter.ptr
  %t2169 = call { i64, i8* }* @licm_descend_stmt({ i64, i8* }* %t2167, { i64, i8* }* %t2168)
  %t2170 = ptrtoint { i64, i8* }* %t2169 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2166, i64 %t2170, i64 5)
  %t2171 = load i64, i64* %t2156
  %t2172 = add i64 %t2171, 1
  store i64 %t2172, i64* %t2156
  br label %while_cond430
while_end432:
  %t2173 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t2173, { i64, i8* }** %t2174
  store i64 0, i64* %t2175
  br label %while_cond433
while_cond433:
  %t2176 = load i64, i64* %t2175
  %t2177 = load i64, i64* %t2021
  %t2178 = icmp slt i64 %t2176, %t2177
  br i1 %t2178, label %while_body434, label %while_end435
while_body434:
  %t2179 = load i64, i64* %t2175
  %t2180 = icmp eq i64 %t2179, 1
  br i1 %t2180, label %then436, label %else437
then436:
  %t2181 = load { i64, i8* }*, { i64, i8* }** %t2174
  %t2182 = load { i64, i8* }*, { i64, i8* }** %t2155
  %t2183 = ptrtoint { i64, i8* }* %t2182 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2181, i64 %t2183, i64 5)
  br label %merge438
else437:
  %t2184 = load { i64, i8* }*, { i64, i8* }** %t2174
  %t2185 = load { i64, i8* }*, { i64, i8* }** %t2018
  %t2186 = load i64, i64* %t2175
  %t2187 = call i64 @nyx_array_get({ i64, i8* }* %t2185, i64 %t2186)
  %t2188 = load { i64, i8* }*, { i64, i8* }** %t2018
  %t2189 = load i64, i64* %t2175
  %t2190 = call i64 @nyx_array_get_tag({ i64, i8* }* %t2188, i64 %t2189)
  call void @nyx_array_push_tagged({ i64, i8* }* %t2184, i64 %t2187, i64 %t2190)
  br label %merge438
merge438:
  %t2191 = load i64, i64* %t2175
  %t2192 = add i64 %t2191, 1
  store i64 %t2192, i64* %t2175
  br label %while_cond433
while_end435:
  %t2193 = load %nyx_string*, %nyx_string** %t2015
  %t2194 = load { i64, i8* }*, { i64, i8* }** %t2174
  %t2195 = call { i64, i8* }* @licm_make(%nyx_string* %t2193, { i64, i8* }* %t2194)
  ret { i64, i8* }* %t2195
else428:
  br label %merge429
merge429:
  store i1 false, i1* %t2196
  %t2197 = load %nyx_string*, %nyx_string** %t2015
  %t2198 = getelementptr [11 x i8], [11 x i8]* @.str87, i32 0, i32 0
  %t2199 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str87.c, i8* %t2198, i64 10)
  %t2200 = call i1 @nyx_string_equals(%nyx_string* %t2197, %nyx_string* %t2199)
  br i1 %t2200, label %sc_and_rhs439, label %sc_and_end440
sc_and_rhs439:
  %t2201 = load i64, i64* %t2021
  %t2202 = icmp sge i64 %t2201, 3
  store i1 %t2202, i1* %t2196
  br label %sc_and_end440
sc_and_end440:
  %t2203 = load i1, i1* %t2196
  br i1 %t2203, label %then441, label %else442
then441:
  %t2204 = load { i64, i8* }*, { i64, i8* }** %t2018
  %t2205 = call i64 @nyx_array_get({ i64, i8* }* %t2204, i64 2)
  %t2206 = inttoptr i64 %t2205 to { i64, i8* }*
  store { i64, i8* }* %t2206, { i64, i8* }** %t2207
  %t2208 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t2208, { i64, i8* }** %t2209
  store i64 0, i64* %t2210
  br label %while_cond444
while_cond444:
  %t2211 = load i64, i64* %t2210
  %t2212 = load { i64, i8* }*, { i64, i8* }** %t2207
  %t2213 = call i64 @nyx_array_length({ i64, i8* }* %t2212)
  %t2214 = icmp slt i64 %t2211, %t2213
  br i1 %t2214, label %while_body445, label %while_end446
while_body445:
  %t2215 = load { i64, i8* }*, { i64, i8* }** %t2207
  %t2216 = load i64, i64* %t2210
  %t2217 = call i64 @nyx_array_get({ i64, i8* }* %t2215, i64 %t2216)
  %t2218 = inttoptr i64 %t2217 to { i64, i8* }*
  store { i64, i8* }* %t2218, { i64, i8* }** %t2219
  %t2220 = load { i64, i8* }*, { i64, i8* }** %t2209
  %t2221 = load { i64, i8* }*, { i64, i8* }** %t2219
  %t2222 = load { i64, i8* }*, { i64, i8* }** %counter.ptr
  %t2223 = call { i64, i8* }* @licm_descend_stmt({ i64, i8* }* %t2221, { i64, i8* }* %t2222)
  %t2224 = ptrtoint { i64, i8* }* %t2223 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2220, i64 %t2224, i64 5)
  %t2225 = load i64, i64* %t2210
  %t2226 = add i64 %t2225, 1
  store i64 %t2226, i64* %t2210
  br label %while_cond444
while_end446:
  %t2227 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t2227, { i64, i8* }** %t2228
  store i64 0, i64* %t2229
  br label %while_cond447
while_cond447:
  %t2230 = load i64, i64* %t2229
  %t2231 = load i64, i64* %t2021
  %t2232 = icmp slt i64 %t2230, %t2231
  br i1 %t2232, label %while_body448, label %while_end449
while_body448:
  %t2233 = load i64, i64* %t2229
  %t2234 = icmp eq i64 %t2233, 2
  br i1 %t2234, label %then450, label %else451
then450:
  %t2235 = load { i64, i8* }*, { i64, i8* }** %t2228
  %t2236 = load { i64, i8* }*, { i64, i8* }** %t2209
  %t2237 = ptrtoint { i64, i8* }* %t2236 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2235, i64 %t2237, i64 5)
  br label %merge452
else451:
  %t2238 = load { i64, i8* }*, { i64, i8* }** %t2228
  %t2239 = load { i64, i8* }*, { i64, i8* }** %t2018
  %t2240 = load i64, i64* %t2229
  %t2241 = call i64 @nyx_array_get({ i64, i8* }* %t2239, i64 %t2240)
  %t2242 = load { i64, i8* }*, { i64, i8* }** %t2018
  %t2243 = load i64, i64* %t2229
  %t2244 = call i64 @nyx_array_get_tag({ i64, i8* }* %t2242, i64 %t2243)
  call void @nyx_array_push_tagged({ i64, i8* }* %t2238, i64 %t2241, i64 %t2244)
  br label %merge452
merge452:
  %t2245 = load i64, i64* %t2229
  %t2246 = add i64 %t2245, 1
  store i64 %t2246, i64* %t2229
  br label %while_cond447
while_end449:
  %t2247 = load %nyx_string*, %nyx_string** %t2015
  %t2248 = load { i64, i8* }*, { i64, i8* }** %t2228
  %t2249 = call { i64, i8* }* @licm_make(%nyx_string* %t2247, { i64, i8* }* %t2248)
  ret { i64, i8* }* %t2249
else442:
  br label %merge443
merge443:
  %t2250 = load { i64, i8* }*, { i64, i8* }** %stmt.ptr
  ret { i64, i8* }* %t2250
}

define { i64, i8* }* @licm(
{ i64, i8* }* %ast.param) {
  %ast.ptr = alloca { i64, i8* }*
  %t2261 = alloca %ASTNode
  %t2269 = alloca { i64, i8* }*
  %t2271 = alloca { i64, i8* }*
  %t2275 = alloca { i64, i8* }*
  store { i64, i8* }* %ast.param, { i64, i8* }** %ast.ptr
  %t2251 = getelementptr [9 x i8], [9 x i8]* @.str88, i32 0, i32 0
  %t2252 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str88.c, i8* %t2251, i64 8)
  %t2253 = call i8* @nyx_string_to_cstr(%nyx_string* %t2252)
  %t2254 = call %nyx_string* @nyx_getenv(i8* %t2253)
  %t2255 = getelementptr [4 x i8], [4 x i8]* @.str89, i32 0, i32 0
  %t2256 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str89.c, i8* %t2255, i64 3)
  %t2257 = call i1 @nyx_string_equals(%nyx_string* %t2254, %nyx_string* %t2256)
  br i1 %t2257, label %then453, label %else454
then453:
  %t2258 = load { i64, i8* }*, { i64, i8* }** %ast.ptr
  ret { i64, i8* }* %t2258
else454:
  br label %merge455
merge455:
  %t2259 = load { i64, i8* }*, { i64, i8* }** %ast.ptr
  %t2260 = call %ASTNode @licm_root_of({ i64, i8* }* %t2259)
  store %ASTNode %t2260, %ASTNode* %t2261
  %t2262 = getelementptr %ASTNode, %ASTNode* %t2261, i32 0, i32 1
  %t2263 = load { i64, i8* }*, { i64, i8* }** %t2262
  %t2264 = call i64 @nyx_array_length({ i64, i8* }* %t2263)
  %t2265 = icmp slt i64 %t2264, 1
  br i1 %t2265, label %then456, label %else457
then456:
  %t2266 = load { i64, i8* }*, { i64, i8* }** %ast.ptr
  ret { i64, i8* }* %t2266
else457:
  br label %merge458
merge458:
  %t2267 = load %ASTNode, %ASTNode* %t2261
  %t2268 = call { i64, i8* }* @licm_array_at(%ASTNode %t2267, i64 0)
  store { i64, i8* }* %t2268, { i64, i8* }** %t2269
  %t2270 = call { i64, i8* }* @nyx_array_new_ptr()
  call void @nyx_array_push_tagged({ i64, i8* }* %t2270, i64 0, i64 1)
  store { i64, i8* }* %t2270, { i64, i8* }** %t2271
  %t2272 = load { i64, i8* }*, { i64, i8* }** %t2269
  %t2273 = load { i64, i8* }*, { i64, i8* }** %t2271
  %t2274 = call { i64, i8* }* @licm_stmt_list({ i64, i8* }* %t2272, { i64, i8* }* %t2273)
  store { i64, i8* }* %t2274, { i64, i8* }** %t2275
  %t2276 = getelementptr [6 x i8], [6 x i8]* @.str90, i32 0, i32 0
  %t2277 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str90.c, i8* %t2276, i64 5)
  %t2278 = call { i64, i8* }* @nyx_array_new_ptr()
  %t2279 = load { i64, i8* }*, { i64, i8* }** %t2275
  %t2280 = ptrtoint { i64, i8* }* %t2279 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2278, i64 %t2280, i64 5)
  %t2281 = call { i64, i8* }* @licm_make(%nyx_string* %t2277, { i64, i8* }* %t2278)
  ret { i64, i8* }* %t2281
}

define internal { i64, i8* }* @licm_make_en(
%nyx_string* %node_type.param, { i64, i8* }* %data.param, i64 %line.param, i64 %col.param) {
  %node_type.ptr = alloca %nyx_string*
  %data.ptr = alloca { i64, i8* }*
  %line.ptr = alloca i64
  %col.ptr = alloca i64
  %t2283 = alloca { i64, i8* }*
  store %nyx_string* %node_type.param, %nyx_string** %node_type.ptr
  store { i64, i8* }* %data.param, { i64, i8* }** %data.ptr
  store i64 %line.param, i64* %line.ptr
  store i64 %col.param, i64* %col.ptr
  %t2282 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t2282, { i64, i8* }** %t2283
  %t2284 = load { i64, i8* }*, { i64, i8* }** %t2283
  %t2285 = load %nyx_string*, %nyx_string** %node_type.ptr
  %t2286 = ptrtoint %nyx_string* %t2285 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2284, i64 %t2286, i64 2)
  %t2287 = load { i64, i8* }*, { i64, i8* }** %t2283
  %t2288 = load { i64, i8* }*, { i64, i8* }** %data.ptr
  %t2289 = ptrtoint { i64, i8* }* %t2288 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2287, i64 %t2289, i64 5)
  %t2290 = load { i64, i8* }*, { i64, i8* }** %t2283
  %t2291 = load i64, i64* %line.ptr
  call void @nyx_array_push_tagged({ i64, i8* }* %t2290, i64 %t2291, i64 1)
  %t2292 = load { i64, i8* }*, { i64, i8* }** %t2283
  %t2293 = load i64, i64* %col.ptr
  call void @nyx_array_push_tagged({ i64, i8* }* %t2292, i64 %t2293, i64 1)
  %t2294 = load { i64, i8* }*, { i64, i8* }** %t2283
  ret { i64, i8* }* %t2294
}

define { i64, i8* }* @for_sustituir_var(
{ i64, i8* }* %body.param, %nyx_string* %var_name.param, %nyx_string* %arr_name.param, %nyx_string* %idx_name.param) {
  %body.ptr = alloca { i64, i8* }*
  %var_name.ptr = alloca %nyx_string*
  %arr_name.ptr = alloca %nyx_string*
  %idx_name.ptr = alloca %nyx_string*
  %t2296 = alloca { i64, i8* }*
  %t2304 = alloca { i64, i8* }*
  store { i64, i8* }* %body.param, { i64, i8* }** %body.ptr
  store %nyx_string* %var_name.param, %nyx_string** %var_name.ptr
  store %nyx_string* %arr_name.param, %nyx_string** %arr_name.ptr
  store %nyx_string* %idx_name.param, %nyx_string** %idx_name.ptr
  %t2295 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t2295, { i64, i8* }** %t2296
  %t2297 = call { i64, i8* }* @nyx_array_new_ptr()
  %t2298 = load %nyx_string*, %nyx_string** %var_name.ptr
  %t2299 = ptrtoint %nyx_string* %t2298 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2297, i64 %t2299, i64 2)
  %t2300 = load %nyx_string*, %nyx_string** %arr_name.ptr
  %t2301 = ptrtoint %nyx_string* %t2300 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2297, i64 %t2301, i64 2)
  %t2302 = load %nyx_string*, %nyx_string** %idx_name.ptr
  %t2303 = ptrtoint %nyx_string* %t2302 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2297, i64 %t2303, i64 2)
  store { i64, i8* }* %t2297, { i64, i8* }** %t2304
  %t2305 = load { i64, i8* }*, { i64, i8* }** %body.ptr
  %t2306 = load { i64, i8* }*, { i64, i8* }** %t2296
  %t2307 = load { i64, i8* }*, { i64, i8* }** %t2304
  %t2308 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %t2305, { i64, i8* }* %t2306, { i64, i8* }* %t2307)
  ret { i64, i8* }* %t2308
}

define internal i1 @licm_patron_ata(
%ASTNode %pat.param, %nyx_string* %name.param) {
  %pat.ptr = alloca %ASTNode
  %name.ptr = alloca %nyx_string*
  %t2311 = alloca %nyx_string*
  %t2314 = alloca { i64, i8* }*
  %t2315 = alloca i1
  %t2327 = alloca %nyx_string*
  %t2331 = alloca i1
  %t2343 = alloca { i64, i8* }*
  %t2344 = alloca i64
  %t2353 = alloca %nyx_string*
  %t2359 = alloca i1
  %t2371 = alloca { i64, i8* }*
  %t2372 = alloca i64
  %t2381 = alloca { i64, i8* }*
  %t2388 = alloca %nyx_string*
  %t2394 = alloca i1
  %t2406 = alloca { i64, i8* }*
  %t2407 = alloca i64
  %t2422 = alloca %ASTNode
  %t2428 = alloca %ASTNode
  %t2438 = alloca i64
  %t2453 = alloca %ASTNode
  %t2459 = alloca %ASTNode
  store %ASTNode %pat.param, %ASTNode* %pat.ptr
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %t2309 = getelementptr %ASTNode, %ASTNode* %pat.ptr, i32 0, i32 0
  %t2310 = load %nyx_string*, %nyx_string** %t2309
  store %nyx_string* %t2310, %nyx_string** %t2311
  %t2312 = getelementptr %ASTNode, %ASTNode* %pat.ptr, i32 0, i32 1
  %t2313 = load { i64, i8* }*, { i64, i8* }** %t2312
  store { i64, i8* }* %t2313, { i64, i8* }** %t2314
  store i1 false, i1* %t2315
  %t2316 = load %nyx_string*, %nyx_string** %t2311
  %t2317 = getelementptr [19 x i8], [19 x i8]* @.str91, i32 0, i32 0
  %t2318 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str91.c, i8* %t2317, i64 18)
  %t2319 = call i1 @nyx_string_equals(%nyx_string* %t2316, %nyx_string* %t2318)
  br i1 %t2319, label %sc_and_rhs459, label %sc_and_end460
sc_and_rhs459:
  %t2320 = load { i64, i8* }*, { i64, i8* }** %t2314
  %t2321 = call i64 @nyx_array_length({ i64, i8* }* %t2320)
  %t2322 = icmp sge i64 %t2321, 1
  store i1 %t2322, i1* %t2315
  br label %sc_and_end460
sc_and_end460:
  %t2323 = load i1, i1* %t2315
  br i1 %t2323, label %then461, label %else462
then461:
  %t2324 = load { i64, i8* }*, { i64, i8* }** %t2314
  %t2325 = call i64 @nyx_array_get_checked({ i64, i8* }* %t2324, i64 0, i64 2)
  %t2326 = inttoptr i64 %t2325 to %nyx_string*
  store %nyx_string* %t2326, %nyx_string** %t2327
  %t2328 = load %nyx_string*, %nyx_string** %t2327
  %t2329 = load %nyx_string*, %nyx_string** %name.ptr
  %t2330 = call i1 @nyx_string_equals(%nyx_string* %t2328, %nyx_string* %t2329)
  ret i1 %t2330
else462:
  br label %merge463
merge463:
  store i1 false, i1* %t2331
  %t2332 = load %nyx_string*, %nyx_string** %t2311
  %t2333 = getelementptr [14 x i8], [14 x i8]* @.str92, i32 0, i32 0
  %t2334 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str92.c, i8* %t2333, i64 13)
  %t2335 = call i1 @nyx_string_equals(%nyx_string* %t2332, %nyx_string* %t2334)
  br i1 %t2335, label %sc_and_rhs464, label %sc_and_end465
sc_and_rhs464:
  %t2336 = load { i64, i8* }*, { i64, i8* }** %t2314
  %t2337 = call i64 @nyx_array_length({ i64, i8* }* %t2336)
  %t2338 = icmp sge i64 %t2337, 3
  store i1 %t2338, i1* %t2331
  br label %sc_and_end465
sc_and_end465:
  %t2339 = load i1, i1* %t2331
  br i1 %t2339, label %then466, label %else467
then466:
  %t2340 = load { i64, i8* }*, { i64, i8* }** %t2314
  %t2341 = call i64 @nyx_array_get({ i64, i8* }* %t2340, i64 2)
  %t2342 = inttoptr i64 %t2341 to { i64, i8* }*
  store { i64, i8* }* %t2342, { i64, i8* }** %t2343
  store i64 0, i64* %t2344
  br label %while_cond469
while_cond469:
  %t2345 = load i64, i64* %t2344
  %t2346 = load { i64, i8* }*, { i64, i8* }** %t2343
  %t2347 = call i64 @nyx_array_length({ i64, i8* }* %t2346)
  %t2348 = icmp slt i64 %t2345, %t2347
  br i1 %t2348, label %while_body470, label %while_end471
while_body470:
  %t2349 = load { i64, i8* }*, { i64, i8* }** %t2343
  %t2350 = load i64, i64* %t2344
  %t2351 = call i64 @nyx_array_get_checked({ i64, i8* }* %t2349, i64 %t2350, i64 2)
  %t2352 = inttoptr i64 %t2351 to %nyx_string*
  store %nyx_string* %t2352, %nyx_string** %t2353
  %t2354 = load %nyx_string*, %nyx_string** %t2353
  %t2355 = load %nyx_string*, %nyx_string** %name.ptr
  %t2356 = call i1 @nyx_string_equals(%nyx_string* %t2354, %nyx_string* %t2355)
  br i1 %t2356, label %then472, label %else473
then472:
  ret i1 1
else473:
  br label %merge474
merge474:
  %t2357 = load i64, i64* %t2344
  %t2358 = add i64 %t2357, 1
  store i64 %t2358, i64* %t2344
  br label %while_cond469
while_end471:
  ret i1 0
else467:
  br label %merge468
merge468:
  store i1 false, i1* %t2359
  %t2360 = load %nyx_string*, %nyx_string** %t2311
  %t2361 = getelementptr [15 x i8], [15 x i8]* @.str93, i32 0, i32 0
  %t2362 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str93.c, i8* %t2361, i64 14)
  %t2363 = call i1 @nyx_string_equals(%nyx_string* %t2360, %nyx_string* %t2362)
  br i1 %t2363, label %sc_and_rhs475, label %sc_and_end476
sc_and_rhs475:
  %t2364 = load { i64, i8* }*, { i64, i8* }** %t2314
  %t2365 = call i64 @nyx_array_length({ i64, i8* }* %t2364)
  %t2366 = icmp sge i64 %t2365, 2
  store i1 %t2366, i1* %t2359
  br label %sc_and_end476
sc_and_end476:
  %t2367 = load i1, i1* %t2359
  br i1 %t2367, label %then477, label %else478
then477:
  %t2368 = load { i64, i8* }*, { i64, i8* }** %t2314
  %t2369 = call i64 @nyx_array_get({ i64, i8* }* %t2368, i64 1)
  %t2370 = inttoptr i64 %t2369 to { i64, i8* }*
  store { i64, i8* }* %t2370, { i64, i8* }** %t2371
  store i64 0, i64* %t2372
  br label %while_cond480
while_cond480:
  %t2373 = load i64, i64* %t2372
  %t2374 = load { i64, i8* }*, { i64, i8* }** %t2371
  %t2375 = call i64 @nyx_array_length({ i64, i8* }* %t2374)
  %t2376 = icmp slt i64 %t2373, %t2375
  br i1 %t2376, label %while_body481, label %while_end482
while_body481:
  %t2377 = load { i64, i8* }*, { i64, i8* }** %t2371
  %t2378 = load i64, i64* %t2372
  %t2379 = call i64 @nyx_array_get({ i64, i8* }* %t2377, i64 %t2378)
  %t2380 = inttoptr i64 %t2379 to { i64, i8* }*
  store { i64, i8* }* %t2380, { i64, i8* }** %t2381
  %t2382 = load { i64, i8* }*, { i64, i8* }** %t2381
  %t2383 = call i64 @nyx_array_length({ i64, i8* }* %t2382)
  %t2384 = icmp sge i64 %t2383, 2
  br i1 %t2384, label %then483, label %else484
then483:
  %t2385 = load { i64, i8* }*, { i64, i8* }** %t2381
  %t2386 = call i64 @nyx_array_get_checked({ i64, i8* }* %t2385, i64 1, i64 2)
  %t2387 = inttoptr i64 %t2386 to %nyx_string*
  store %nyx_string* %t2387, %nyx_string** %t2388
  %t2389 = load %nyx_string*, %nyx_string** %t2388
  %t2390 = load %nyx_string*, %nyx_string** %name.ptr
  %t2391 = call i1 @nyx_string_equals(%nyx_string* %t2389, %nyx_string* %t2390)
  br i1 %t2391, label %then486, label %else487
then486:
  ret i1 1
else487:
  br label %merge488
merge488:
  br label %merge485
else484:
  br label %merge485
merge485:
  %t2392 = load i64, i64* %t2372
  %t2393 = add i64 %t2392, 1
  store i64 %t2393, i64* %t2372
  br label %while_cond480
while_end482:
  ret i1 0
else478:
  br label %merge479
merge479:
  store i1 false, i1* %t2394
  %t2395 = load %nyx_string*, %nyx_string** %t2311
  %t2396 = getelementptr [21 x i8], [21 x i8]* @.str94, i32 0, i32 0
  %t2397 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str94.c, i8* %t2396, i64 20)
  %t2398 = call i1 @nyx_string_equals(%nyx_string* %t2395, %nyx_string* %t2397)
  br i1 %t2398, label %sc_and_rhs489, label %sc_and_end490
sc_and_rhs489:
  %t2399 = load { i64, i8* }*, { i64, i8* }** %t2314
  %t2400 = call i64 @nyx_array_length({ i64, i8* }* %t2399)
  %t2401 = icmp sge i64 %t2400, 3
  store i1 %t2401, i1* %t2394
  br label %sc_and_end490
sc_and_end490:
  %t2402 = load i1, i1* %t2394
  br i1 %t2402, label %then491, label %else492
then491:
  %t2403 = load { i64, i8* }*, { i64, i8* }** %t2314
  %t2404 = call i64 @nyx_array_get({ i64, i8* }* %t2403, i64 2)
  %t2405 = inttoptr i64 %t2404 to { i64, i8* }*
  store { i64, i8* }* %t2405, { i64, i8* }** %t2406
  store i64 0, i64* %t2407
  br label %while_cond494
while_cond494:
  %t2408 = load i64, i64* %t2407
  %t2409 = load { i64, i8* }*, { i64, i8* }** %t2406
  %t2410 = call i64 @nyx_array_length({ i64, i8* }* %t2409)
  %t2411 = icmp slt i64 %t2408, %t2410
  br i1 %t2411, label %while_body495, label %while_end496
while_body495:
  %t2412 = load { i64, i8* }*, { i64, i8* }** %t2406
  %t2413 = load i64, i64* %t2407
  %t2414 = call i64 @nyx_array_get({ i64, i8* }* %t2412, i64 %t2413)
  %t2415 = inttoptr i64 %t2414 to { i64, i8* }*
  %t2416 = call i64 @nyx_array_get({ i64, i8* }* %t2415, i64 0)
  %t2417 = call i64 @nyx_array_get({ i64, i8* }* %t2415, i64 1)
  %t2418 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %t2415, i64 2)
  %t2419 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %t2415, i64 3)
  %t2420 = inttoptr i64 %t2416 to %nyx_string*
  %t2421 = inttoptr i64 %t2417 to { i64, i8* }*
  %t2423 = getelementptr inbounds %ASTNode, %ASTNode* %t2422, i32 0, i32 0
  store %nyx_string* %t2420, %nyx_string** %t2423
  %t2424 = getelementptr inbounds %ASTNode, %ASTNode* %t2422, i32 0, i32 1
  store { i64, i8* }* %t2421, { i64, i8* }** %t2424
  %t2425 = getelementptr inbounds %ASTNode, %ASTNode* %t2422, i32 0, i32 2
  store i64 %t2418, i64* %t2425
  %t2426 = getelementptr inbounds %ASTNode, %ASTNode* %t2422, i32 0, i32 3
  store i64 %t2419, i64* %t2426
  %t2427 = load %ASTNode, %ASTNode* %t2422
  store %ASTNode %t2427, %ASTNode* %t2428
  %t2429 = load %ASTNode, %ASTNode* %t2428
  %t2430 = load %nyx_string*, %nyx_string** %name.ptr
  %t2431 = call i1 @licm_patron_ata(%ASTNode %t2429, %nyx_string* %t2430)
  br i1 %t2431, label %then497, label %else498
then497:
  ret i1 1
else498:
  br label %merge499
merge499:
  %t2432 = load i64, i64* %t2407
  %t2433 = add i64 %t2432, 1
  store i64 %t2433, i64* %t2407
  br label %while_cond494
while_end496:
  ret i1 0
else492:
  br label %merge493
merge493:
  %t2434 = load %nyx_string*, %nyx_string** %t2311
  %t2435 = getelementptr [11 x i8], [11 x i8]* @.str95, i32 0, i32 0
  %t2436 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str95.c, i8* %t2435, i64 10)
  %t2437 = call i1 @nyx_string_equals(%nyx_string* %t2434, %nyx_string* %t2436)
  br i1 %t2437, label %then500, label %else501
then500:
  store i64 0, i64* %t2438
  br label %while_cond503
while_cond503:
  %t2439 = load i64, i64* %t2438
  %t2440 = load { i64, i8* }*, { i64, i8* }** %t2314
  %t2441 = call i64 @nyx_array_length({ i64, i8* }* %t2440)
  %t2442 = icmp slt i64 %t2439, %t2441
  br i1 %t2442, label %while_body504, label %while_end505
while_body504:
  %t2443 = load { i64, i8* }*, { i64, i8* }** %t2314
  %t2444 = load i64, i64* %t2438
  %t2445 = call i64 @nyx_array_get({ i64, i8* }* %t2443, i64 %t2444)
  %t2446 = inttoptr i64 %t2445 to { i64, i8* }*
  %t2447 = call i64 @nyx_array_get({ i64, i8* }* %t2446, i64 0)
  %t2448 = call i64 @nyx_array_get({ i64, i8* }* %t2446, i64 1)
  %t2449 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %t2446, i64 2)
  %t2450 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %t2446, i64 3)
  %t2451 = inttoptr i64 %t2447 to %nyx_string*
  %t2452 = inttoptr i64 %t2448 to { i64, i8* }*
  %t2454 = getelementptr inbounds %ASTNode, %ASTNode* %t2453, i32 0, i32 0
  store %nyx_string* %t2451, %nyx_string** %t2454
  %t2455 = getelementptr inbounds %ASTNode, %ASTNode* %t2453, i32 0, i32 1
  store { i64, i8* }* %t2452, { i64, i8* }** %t2455
  %t2456 = getelementptr inbounds %ASTNode, %ASTNode* %t2453, i32 0, i32 2
  store i64 %t2449, i64* %t2456
  %t2457 = getelementptr inbounds %ASTNode, %ASTNode* %t2453, i32 0, i32 3
  store i64 %t2450, i64* %t2457
  %t2458 = load %ASTNode, %ASTNode* %t2453
  store %ASTNode %t2458, %ASTNode* %t2459
  %t2460 = load %ASTNode, %ASTNode* %t2459
  %t2461 = load %nyx_string*, %nyx_string** %name.ptr
  %t2462 = call i1 @licm_patron_ata(%ASTNode %t2460, %nyx_string* %t2461)
  br i1 %t2462, label %then506, label %else507
then506:
  ret i1 1
else507:
  br label %merge508
merge508:
  %t2463 = load i64, i64* %t2438
  %t2464 = add i64 %t2463, 1
  store i64 %t2464, i64* %t2438
  br label %while_cond503
while_end505:
  ret i1 0
else501:
  br label %merge502
merge502:
  ret i1 0
}

define i1 @for_cuerpo_reata(
{ i64, i8* }* %body.param, %nyx_string* %name.param) {
  %body.ptr = alloca { i64, i8* }*
  %name.ptr = alloca %nyx_string*
  %t2467 = alloca %ASTNode
  %t2470 = alloca %nyx_string*
  %t2473 = alloca { i64, i8* }*
  %t2474 = alloca i1
  %t2475 = alloca i1
  %t2476 = alloca i1
  %t2496 = alloca i1
  %t2508 = alloca { i64, i8* }*
  %t2512 = alloca %nyx_string*
  %t2516 = alloca i1
  %t2528 = alloca { i64, i8* }*
  %t2532 = alloca %nyx_string*
  %t2536 = alloca i1
  %t2548 = alloca { i64, i8* }*
  %t2549 = alloca i64
  %t2558 = alloca %nyx_string*
  %t2564 = alloca i1
  %t2576 = alloca %nyx_string*
  %t2580 = alloca i1
  %t2591 = alloca %ASTNode
  %t2595 = alloca i1
  %t2606 = alloca { i64, i8* }*
  %t2607 = alloca i64
  %t2622 = alloca %ASTNode
  %t2628 = alloca %ASTNode
  %t2631 = alloca { i64, i8* }*
  %t2637 = alloca %ASTNode
  %t2645 = alloca { i64, i8* }*
  %t2646 = alloca i64
  %t2655 = alloca { i64, i8* }*
  store { i64, i8* }* %body.param, { i64, i8* }** %body.ptr
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %t2465 = load { i64, i8* }*, { i64, i8* }** %body.ptr
  %t2466 = call %ASTNode @licm_root_of({ i64, i8* }* %t2465)
  store %ASTNode %t2466, %ASTNode* %t2467
  %t2468 = getelementptr %ASTNode, %ASTNode* %t2467, i32 0, i32 0
  %t2469 = load %nyx_string*, %nyx_string** %t2468
  store %nyx_string* %t2469, %nyx_string** %t2470
  %t2471 = getelementptr %ASTNode, %ASTNode* %t2467, i32 0, i32 1
  %t2472 = load { i64, i8* }*, { i64, i8* }** %t2471
  store { i64, i8* }* %t2472, { i64, i8* }** %t2473
  store i1 true, i1* %t2474
  store i1 true, i1* %t2475
  store i1 true, i1* %t2476
  %t2477 = load %nyx_string*, %nyx_string** %t2470
  %t2478 = getelementptr [9 x i8], [9 x i8]* @.str96, i32 0, i32 0
  %t2479 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str96.c, i8* %t2478, i64 8)
  %t2480 = call i1 @nyx_string_equals(%nyx_string* %t2477, %nyx_string* %t2479)
  br i1 %t2480, label %sc_or_end510, label %sc_or_rhs509
sc_or_rhs509:
  %t2481 = load %nyx_string*, %nyx_string** %t2470
  %t2482 = getelementptr [9 x i8], [9 x i8]* @.str97, i32 0, i32 0
  %t2483 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str97.c, i8* %t2482, i64 8)
  %t2484 = call i1 @nyx_string_equals(%nyx_string* %t2481, %nyx_string* %t2483)
  store i1 %t2484, i1* %t2476
  br label %sc_or_end510
sc_or_end510:
  %t2485 = load i1, i1* %t2476
  br i1 %t2485, label %sc_or_end512, label %sc_or_rhs511
sc_or_rhs511:
  %t2486 = load %nyx_string*, %nyx_string** %t2470
  %t2487 = getelementptr [7 x i8], [7 x i8]* @.str98, i32 0, i32 0
  %t2488 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str98.c, i8* %t2487, i64 6)
  %t2489 = call i1 @nyx_string_equals(%nyx_string* %t2486, %nyx_string* %t2488)
  store i1 %t2489, i1* %t2475
  br label %sc_or_end512
sc_or_end512:
  %t2490 = load i1, i1* %t2475
  br i1 %t2490, label %sc_or_end514, label %sc_or_rhs513
sc_or_rhs513:
  %t2491 = load %nyx_string*, %nyx_string** %t2470
  %t2492 = getelementptr [8 x i8], [8 x i8]* @.str99, i32 0, i32 0
  %t2493 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str99.c, i8* %t2492, i64 7)
  %t2494 = call i1 @nyx_string_equals(%nyx_string* %t2491, %nyx_string* %t2493)
  store i1 %t2494, i1* %t2474
  br label %sc_or_end514
sc_or_end514:
  %t2495 = load i1, i1* %t2474
  br i1 %t2495, label %then515, label %else516
then515:
  ret i1 0
else516:
  br label %merge517
merge517:
  store i1 false, i1* %t2496
  %t2497 = load %nyx_string*, %nyx_string** %t2470
  %t2498 = getelementptr [4 x i8], [4 x i8]* @.str100, i32 0, i32 0
  %t2499 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str100.c, i8* %t2498, i64 3)
  %t2500 = call i1 @nyx_string_equals(%nyx_string* %t2497, %nyx_string* %t2499)
  br i1 %t2500, label %sc_and_rhs518, label %sc_and_end519
sc_and_rhs518:
  %t2501 = load { i64, i8* }*, { i64, i8* }** %t2473
  %t2502 = call i64 @nyx_array_length({ i64, i8* }* %t2501)
  %t2503 = icmp sge i64 %t2502, 1
  store i1 %t2503, i1* %t2496
  br label %sc_and_end519
sc_and_end519:
  %t2504 = load i1, i1* %t2496
  br i1 %t2504, label %then520, label %else521
then520:
  %t2505 = load { i64, i8* }*, { i64, i8* }** %t2473
  %t2506 = call i64 @nyx_array_get({ i64, i8* }* %t2505, i64 0)
  %t2507 = inttoptr i64 %t2506 to { i64, i8* }*
  store { i64, i8* }* %t2507, { i64, i8* }** %t2508
  %t2509 = load { i64, i8* }*, { i64, i8* }** %t2508
  %t2510 = call i64 @nyx_array_get_checked({ i64, i8* }* %t2509, i64 0, i64 2)
  %t2511 = inttoptr i64 %t2510 to %nyx_string*
  store %nyx_string* %t2511, %nyx_string** %t2512
  %t2513 = load %nyx_string*, %nyx_string** %t2512
  %t2514 = load %nyx_string*, %nyx_string** %name.ptr
  %t2515 = call i1 @nyx_string_equals(%nyx_string* %t2513, %nyx_string* %t2514)
  br i1 %t2515, label %then523, label %else524
then523:
  ret i1 1
else524:
  br label %merge525
merge525:
  br label %merge522
else521:
  br label %merge522
merge522:
  store i1 false, i1* %t2516
  %t2517 = load %nyx_string*, %nyx_string** %t2470
  %t2518 = getelementptr [7 x i8], [7 x i8]* @.str101, i32 0, i32 0
  %t2519 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str101.c, i8* %t2518, i64 6)
  %t2520 = call i1 @nyx_string_equals(%nyx_string* %t2517, %nyx_string* %t2519)
  br i1 %t2520, label %sc_and_rhs526, label %sc_and_end527
sc_and_rhs526:
  %t2521 = load { i64, i8* }*, { i64, i8* }** %t2473
  %t2522 = call i64 @nyx_array_length({ i64, i8* }* %t2521)
  %t2523 = icmp sge i64 %t2522, 1
  store i1 %t2523, i1* %t2516
  br label %sc_and_end527
sc_and_end527:
  %t2524 = load i1, i1* %t2516
  br i1 %t2524, label %then528, label %else529
then528:
  %t2525 = load { i64, i8* }*, { i64, i8* }** %t2473
  %t2526 = call i64 @nyx_array_get({ i64, i8* }* %t2525, i64 0)
  %t2527 = inttoptr i64 %t2526 to { i64, i8* }*
  store { i64, i8* }* %t2527, { i64, i8* }** %t2528
  %t2529 = load { i64, i8* }*, { i64, i8* }** %t2528
  %t2530 = call i64 @nyx_array_get_checked({ i64, i8* }* %t2529, i64 0, i64 2)
  %t2531 = inttoptr i64 %t2530 to %nyx_string*
  store %nyx_string* %t2531, %nyx_string** %t2532
  %t2533 = load %nyx_string*, %nyx_string** %t2532
  %t2534 = load %nyx_string*, %nyx_string** %name.ptr
  %t2535 = call i1 @nyx_string_equals(%nyx_string* %t2533, %nyx_string* %t2534)
  br i1 %t2535, label %then531, label %else532
then531:
  ret i1 1
else532:
  br label %merge533
merge533:
  br label %merge530
else529:
  br label %merge530
merge530:
  store i1 false, i1* %t2536
  %t2537 = load %nyx_string*, %nyx_string** %t2470
  %t2538 = getelementptr [22 x i8], [22 x i8]* @.str102, i32 0, i32 0
  %t2539 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str102.c, i8* %t2538, i64 21)
  %t2540 = call i1 @nyx_string_equals(%nyx_string* %t2537, %nyx_string* %t2539)
  br i1 %t2540, label %sc_and_rhs534, label %sc_and_end535
sc_and_rhs534:
  %t2541 = load { i64, i8* }*, { i64, i8* }** %t2473
  %t2542 = call i64 @nyx_array_length({ i64, i8* }* %t2541)
  %t2543 = icmp sge i64 %t2542, 1
  store i1 %t2543, i1* %t2536
  br label %sc_and_end535
sc_and_end535:
  %t2544 = load i1, i1* %t2536
  br i1 %t2544, label %then536, label %else537
then536:
  %t2545 = load { i64, i8* }*, { i64, i8* }** %t2473
  %t2546 = call i64 @nyx_array_get({ i64, i8* }* %t2545, i64 0)
  %t2547 = inttoptr i64 %t2546 to { i64, i8* }*
  store { i64, i8* }* %t2547, { i64, i8* }** %t2548
  store i64 0, i64* %t2549
  br label %while_cond539
while_cond539:
  %t2550 = load i64, i64* %t2549
  %t2551 = load { i64, i8* }*, { i64, i8* }** %t2548
  %t2552 = call i64 @nyx_array_length({ i64, i8* }* %t2551)
  %t2553 = icmp slt i64 %t2550, %t2552
  br i1 %t2553, label %while_body540, label %while_end541
while_body540:
  %t2554 = load { i64, i8* }*, { i64, i8* }** %t2548
  %t2555 = load i64, i64* %t2549
  %t2556 = call i64 @nyx_array_get_checked({ i64, i8* }* %t2554, i64 %t2555, i64 2)
  %t2557 = inttoptr i64 %t2556 to %nyx_string*
  store %nyx_string* %t2557, %nyx_string** %t2558
  %t2559 = load %nyx_string*, %nyx_string** %t2558
  %t2560 = load %nyx_string*, %nyx_string** %name.ptr
  %t2561 = call i1 @nyx_string_equals(%nyx_string* %t2559, %nyx_string* %t2560)
  br i1 %t2561, label %then542, label %else543
then542:
  ret i1 1
else543:
  br label %merge544
merge544:
  %t2562 = load i64, i64* %t2549
  %t2563 = add i64 %t2562, 1
  store i64 %t2563, i64* %t2549
  br label %while_cond539
while_end541:
  br label %merge538
else537:
  br label %merge538
merge538:
  store i1 false, i1* %t2564
  %t2565 = load %nyx_string*, %nyx_string** %t2470
  %t2566 = getelementptr [4 x i8], [4 x i8]* @.str103, i32 0, i32 0
  %t2567 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str103.c, i8* %t2566, i64 3)
  %t2568 = call i1 @nyx_string_equals(%nyx_string* %t2565, %nyx_string* %t2567)
  br i1 %t2568, label %sc_and_rhs545, label %sc_and_end546
sc_and_rhs545:
  %t2569 = load { i64, i8* }*, { i64, i8* }** %t2473
  %t2570 = call i64 @nyx_array_length({ i64, i8* }* %t2569)
  %t2571 = icmp sge i64 %t2570, 1
  store i1 %t2571, i1* %t2564
  br label %sc_and_end546
sc_and_end546:
  %t2572 = load i1, i1* %t2564
  br i1 %t2572, label %then547, label %else548
then547:
  %t2573 = load { i64, i8* }*, { i64, i8* }** %t2473
  %t2574 = call i64 @nyx_array_get_checked({ i64, i8* }* %t2573, i64 0, i64 2)
  %t2575 = inttoptr i64 %t2574 to %nyx_string*
  store %nyx_string* %t2575, %nyx_string** %t2576
  %t2577 = load %nyx_string*, %nyx_string** %t2576
  %t2578 = load %nyx_string*, %nyx_string** %name.ptr
  %t2579 = call i1 @nyx_string_equals(%nyx_string* %t2577, %nyx_string* %t2578)
  br i1 %t2579, label %then550, label %else551
then550:
  ret i1 1
else551:
  br label %merge552
merge552:
  br label %merge549
else548:
  br label %merge549
merge549:
  store i1 false, i1* %t2580
  %t2581 = load %nyx_string*, %nyx_string** %t2470
  %t2582 = getelementptr [10 x i8], [10 x i8]* @.str104, i32 0, i32 0
  %t2583 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str104.c, i8* %t2582, i64 9)
  %t2584 = call i1 @nyx_string_equals(%nyx_string* %t2581, %nyx_string* %t2583)
  br i1 %t2584, label %sc_and_rhs553, label %sc_and_end554
sc_and_rhs553:
  %t2585 = load { i64, i8* }*, { i64, i8* }** %t2473
  %t2586 = call i64 @nyx_array_length({ i64, i8* }* %t2585)
  %t2587 = icmp sge i64 %t2586, 1
  store i1 %t2587, i1* %t2580
  br label %sc_and_end554
sc_and_end554:
  %t2588 = load i1, i1* %t2580
  br i1 %t2588, label %then555, label %else556
then555:
  %t2589 = load %ASTNode, %ASTNode* %t2467
  %t2590 = call %ASTNode @licm_node_at(%ASTNode %t2589, i64 0)
  store %ASTNode %t2590, %ASTNode* %t2591
  %t2592 = load %ASTNode, %ASTNode* %t2591
  %t2593 = load %nyx_string*, %nyx_string** %name.ptr
  %t2594 = call i1 @licm_patron_ata(%ASTNode %t2592, %nyx_string* %t2593)
  br i1 %t2594, label %then558, label %else559
then558:
  ret i1 1
else559:
  br label %merge560
merge560:
  br label %merge557
else556:
  br label %merge557
merge557:
  store i1 false, i1* %t2595
  %t2596 = load %nyx_string*, %nyx_string** %t2470
  %t2597 = getelementptr [6 x i8], [6 x i8]* @.str105, i32 0, i32 0
  %t2598 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str105.c, i8* %t2597, i64 5)
  %t2599 = call i1 @nyx_string_equals(%nyx_string* %t2596, %nyx_string* %t2598)
  br i1 %t2599, label %sc_and_rhs561, label %sc_and_end562
sc_and_rhs561:
  %t2600 = load { i64, i8* }*, { i64, i8* }** %t2473
  %t2601 = call i64 @nyx_array_length({ i64, i8* }* %t2600)
  %t2602 = icmp sge i64 %t2601, 2
  store i1 %t2602, i1* %t2595
  br label %sc_and_end562
sc_and_end562:
  %t2603 = load i1, i1* %t2595
  br i1 %t2603, label %then563, label %else564
then563:
  %t2604 = load %ASTNode, %ASTNode* %t2467
  %t2605 = call { i64, i8* }* @licm_array_at(%ASTNode %t2604, i64 1)
  store { i64, i8* }* %t2605, { i64, i8* }** %t2606
  store i64 0, i64* %t2607
  br label %while_cond566
while_cond566:
  %t2608 = load i64, i64* %t2607
  %t2609 = load { i64, i8* }*, { i64, i8* }** %t2606
  %t2610 = call i64 @nyx_array_length({ i64, i8* }* %t2609)
  %t2611 = icmp slt i64 %t2608, %t2610
  br i1 %t2611, label %while_body567, label %while_end568
while_body567:
  %t2612 = load { i64, i8* }*, { i64, i8* }** %t2606
  %t2613 = load i64, i64* %t2607
  %t2614 = call i64 @nyx_array_get({ i64, i8* }* %t2612, i64 %t2613)
  %t2615 = inttoptr i64 %t2614 to { i64, i8* }*
  %t2616 = call i64 @nyx_array_get({ i64, i8* }* %t2615, i64 0)
  %t2617 = call i64 @nyx_array_get({ i64, i8* }* %t2615, i64 1)
  %t2618 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %t2615, i64 2)
  %t2619 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %t2615, i64 3)
  %t2620 = inttoptr i64 %t2616 to %nyx_string*
  %t2621 = inttoptr i64 %t2617 to { i64, i8* }*
  %t2623 = getelementptr inbounds %ASTNode, %ASTNode* %t2622, i32 0, i32 0
  store %nyx_string* %t2620, %nyx_string** %t2623
  %t2624 = getelementptr inbounds %ASTNode, %ASTNode* %t2622, i32 0, i32 1
  store { i64, i8* }* %t2621, { i64, i8* }** %t2624
  %t2625 = getelementptr inbounds %ASTNode, %ASTNode* %t2622, i32 0, i32 2
  store i64 %t2618, i64* %t2625
  %t2626 = getelementptr inbounds %ASTNode, %ASTNode* %t2622, i32 0, i32 3
  store i64 %t2619, i64* %t2626
  %t2627 = load %ASTNode, %ASTNode* %t2622
  store %ASTNode %t2627, %ASTNode* %t2628
  %t2629 = getelementptr %ASTNode, %ASTNode* %t2628, i32 0, i32 1
  %t2630 = load { i64, i8* }*, { i64, i8* }** %t2629
  store { i64, i8* }* %t2630, { i64, i8* }** %t2631
  %t2632 = load { i64, i8* }*, { i64, i8* }** %t2631
  %t2633 = call i64 @nyx_array_length({ i64, i8* }* %t2632)
  %t2634 = icmp sge i64 %t2633, 1
  br i1 %t2634, label %then569, label %else570
then569:
  %t2635 = load %ASTNode, %ASTNode* %t2628
  %t2636 = call %ASTNode @licm_node_at(%ASTNode %t2635, i64 0)
  store %ASTNode %t2636, %ASTNode* %t2637
  %t2638 = load %ASTNode, %ASTNode* %t2637
  %t2639 = load %nyx_string*, %nyx_string** %name.ptr
  %t2640 = call i1 @licm_patron_ata(%ASTNode %t2638, %nyx_string* %t2639)
  br i1 %t2640, label %then572, label %else573
then572:
  ret i1 1
else573:
  br label %merge574
merge574:
  br label %merge571
else570:
  br label %merge571
merge571:
  %t2641 = load i64, i64* %t2607
  %t2642 = add i64 %t2641, 1
  store i64 %t2642, i64* %t2607
  br label %while_cond566
while_end568:
  br label %merge565
else564:
  br label %merge565
merge565:
  %t2643 = load %ASTNode, %ASTNode* %t2467
  %t2644 = call { i64, i8* }* @licm_children(%ASTNode %t2643)
  store { i64, i8* }* %t2644, { i64, i8* }** %t2645
  store i64 0, i64* %t2646
  br label %while_cond575
while_cond575:
  %t2647 = load i64, i64* %t2646
  %t2648 = load { i64, i8* }*, { i64, i8* }** %t2645
  %t2649 = call i64 @nyx_array_length({ i64, i8* }* %t2648)
  %t2650 = icmp slt i64 %t2647, %t2649
  br i1 %t2650, label %while_body576, label %while_end577
while_body576:
  %t2651 = load { i64, i8* }*, { i64, i8* }** %t2645
  %t2652 = load i64, i64* %t2646
  %t2653 = call i64 @nyx_array_get({ i64, i8* }* %t2651, i64 %t2652)
  %t2654 = inttoptr i64 %t2653 to { i64, i8* }*
  store { i64, i8* }* %t2654, { i64, i8* }** %t2655
  %t2656 = load { i64, i8* }*, { i64, i8* }** %t2655
  %t2657 = load %nyx_string*, %nyx_string** %name.ptr
  %t2658 = call i1 @for_cuerpo_reata({ i64, i8* }* %t2656, %nyx_string* %t2657)
  br i1 %t2658, label %then578, label %else579
then578:
  ret i1 1
else579:
  br label %merge580
merge580:
  %t2659 = load i64, i64* %t2646
  %t2660 = add i64 %t2659, 1
  store i64 %t2660, i64* %t2646
  br label %while_cond575
while_end577:
  ret i1 0
}

define internal i1 @licm_metodo_muta(
%nyx_string* %m.param) {
  %m.ptr = alloca %nyx_string*
  %t2661 = alloca i1
  %t2662 = alloca i1
  %t2663 = alloca i1
  %t2664 = alloca i1
  %t2689 = alloca i1
  %t2690 = alloca i1
  %t2691 = alloca i1
  %t2692 = alloca i1
  %t2717 = alloca i1
  %t2718 = alloca i1
  %t2719 = alloca i1
  %t2720 = alloca i1
  %t2745 = alloca i1
  %t2746 = alloca i1
  %t2747 = alloca i1
  %t2748 = alloca i1
  store %nyx_string* %m.param, %nyx_string** %m.ptr
  store i1 true, i1* %t2661
  store i1 true, i1* %t2662
  store i1 true, i1* %t2663
  store i1 true, i1* %t2664
  %t2665 = load %nyx_string*, %nyx_string** %m.ptr
  %t2666 = getelementptr [5 x i8], [5 x i8]* @.str106, i32 0, i32 0
  %t2667 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str106.c, i8* %t2666, i64 4)
  %t2668 = call i1 @nyx_string_equals(%nyx_string* %t2665, %nyx_string* %t2667)
  br i1 %t2668, label %sc_or_end582, label %sc_or_rhs581
sc_or_rhs581:
  %t2669 = load %nyx_string*, %nyx_string** %m.ptr
  %t2670 = getelementptr [4 x i8], [4 x i8]* @.str107, i32 0, i32 0
  %t2671 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str107.c, i8* %t2670, i64 3)
  %t2672 = call i1 @nyx_string_equals(%nyx_string* %t2669, %nyx_string* %t2671)
  store i1 %t2672, i1* %t2664
  br label %sc_or_end582
sc_or_end582:
  %t2673 = load i1, i1* %t2664
  br i1 %t2673, label %sc_or_end584, label %sc_or_rhs583
sc_or_rhs583:
  %t2674 = load %nyx_string*, %nyx_string** %m.ptr
  %t2675 = getelementptr [4 x i8], [4 x i8]* @.str108, i32 0, i32 0
  %t2676 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str108.c, i8* %t2675, i64 3)
  %t2677 = call i1 @nyx_string_equals(%nyx_string* %t2674, %nyx_string* %t2676)
  store i1 %t2677, i1* %t2663
  br label %sc_or_end584
sc_or_end584:
  %t2678 = load i1, i1* %t2663
  br i1 %t2678, label %sc_or_end586, label %sc_or_rhs585
sc_or_rhs585:
  %t2679 = load %nyx_string*, %nyx_string** %m.ptr
  %t2680 = getelementptr [7 x i8], [7 x i8]* @.str109, i32 0, i32 0
  %t2681 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str109.c, i8* %t2680, i64 6)
  %t2682 = call i1 @nyx_string_equals(%nyx_string* %t2679, %nyx_string* %t2681)
  store i1 %t2682, i1* %t2662
  br label %sc_or_end586
sc_or_end586:
  %t2683 = load i1, i1* %t2662
  br i1 %t2683, label %sc_or_end588, label %sc_or_rhs587
sc_or_rhs587:
  %t2684 = load %nyx_string*, %nyx_string** %m.ptr
  %t2685 = getelementptr [7 x i8], [7 x i8]* @.str110, i32 0, i32 0
  %t2686 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str110.c, i8* %t2685, i64 6)
  %t2687 = call i1 @nyx_string_equals(%nyx_string* %t2684, %nyx_string* %t2686)
  store i1 %t2687, i1* %t2661
  br label %sc_or_end588
sc_or_end588:
  %t2688 = load i1, i1* %t2661
  br i1 %t2688, label %then589, label %else590
then589:
  ret i1 1
else590:
  br label %merge591
merge591:
  store i1 true, i1* %t2689
  store i1 true, i1* %t2690
  store i1 true, i1* %t2691
  store i1 true, i1* %t2692
  %t2693 = load %nyx_string*, %nyx_string** %m.ptr
  %t2694 = getelementptr [6 x i8], [6 x i8]* @.str111, i32 0, i32 0
  %t2695 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str111.c, i8* %t2694, i64 5)
  %t2696 = call i1 @nyx_string_equals(%nyx_string* %t2693, %nyx_string* %t2695)
  br i1 %t2696, label %sc_or_end593, label %sc_or_rhs592
sc_or_rhs592:
  %t2697 = load %nyx_string*, %nyx_string** %m.ptr
  %t2698 = getelementptr [5 x i8], [5 x i8]* @.str112, i32 0, i32 0
  %t2699 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str112.c, i8* %t2698, i64 4)
  %t2700 = call i1 @nyx_string_equals(%nyx_string* %t2697, %nyx_string* %t2699)
  store i1 %t2700, i1* %t2692
  br label %sc_or_end593
sc_or_end593:
  %t2701 = load i1, i1* %t2692
  br i1 %t2701, label %sc_or_end595, label %sc_or_rhs594
sc_or_rhs594:
  %t2702 = load %nyx_string*, %nyx_string** %m.ptr
  %t2703 = getelementptr [8 x i8], [8 x i8]* @.str113, i32 0, i32 0
  %t2704 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str113.c, i8* %t2703, i64 7)
  %t2705 = call i1 @nyx_string_equals(%nyx_string* %t2702, %nyx_string* %t2704)
  store i1 %t2705, i1* %t2691
  br label %sc_or_end595
sc_or_end595:
  %t2706 = load i1, i1* %t2691
  br i1 %t2706, label %sc_or_end597, label %sc_or_rhs596
sc_or_rhs596:
  %t2707 = load %nyx_string*, %nyx_string** %m.ptr
  %t2708 = getelementptr [8 x i8], [8 x i8]* @.str114, i32 0, i32 0
  %t2709 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str114.c, i8* %t2708, i64 7)
  %t2710 = call i1 @nyx_string_equals(%nyx_string* %t2707, %nyx_string* %t2709)
  store i1 %t2710, i1* %t2690
  br label %sc_or_end597
sc_or_end597:
  %t2711 = load i1, i1* %t2690
  br i1 %t2711, label %sc_or_end599, label %sc_or_rhs598
sc_or_rhs598:
  %t2712 = load %nyx_string*, %nyx_string** %m.ptr
  %t2713 = getelementptr [8 x i8], [8 x i8]* @.str115, i32 0, i32 0
  %t2714 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str115.c, i8* %t2713, i64 7)
  %t2715 = call i1 @nyx_string_equals(%nyx_string* %t2712, %nyx_string* %t2714)
  store i1 %t2715, i1* %t2689
  br label %sc_or_end599
sc_or_end599:
  %t2716 = load i1, i1* %t2689
  br i1 %t2716, label %then600, label %else601
then600:
  ret i1 1
else601:
  br label %merge602
merge602:
  store i1 true, i1* %t2717
  store i1 true, i1* %t2718
  store i1 true, i1* %t2719
  store i1 true, i1* %t2720
  %t2721 = load %nyx_string*, %nyx_string** %m.ptr
  %t2722 = getelementptr [6 x i8], [6 x i8]* @.str116, i32 0, i32 0
  %t2723 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str116.c, i8* %t2722, i64 5)
  %t2724 = call i1 @nyx_string_equals(%nyx_string* %t2721, %nyx_string* %t2723)
  br i1 %t2724, label %sc_or_end604, label %sc_or_rhs603
sc_or_rhs603:
  %t2725 = load %nyx_string*, %nyx_string** %m.ptr
  %t2726 = getelementptr [7 x i8], [7 x i8]* @.str117, i32 0, i32 0
  %t2727 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str117.c, i8* %t2726, i64 6)
  %t2728 = call i1 @nyx_string_equals(%nyx_string* %t2725, %nyx_string* %t2727)
  store i1 %t2728, i1* %t2720
  br label %sc_or_end604
sc_or_end604:
  %t2729 = load i1, i1* %t2720
  br i1 %t2729, label %sc_or_end606, label %sc_or_rhs605
sc_or_rhs605:
  %t2730 = load %nyx_string*, %nyx_string** %m.ptr
  %t2731 = getelementptr [9 x i8], [9 x i8]* @.str118, i32 0, i32 0
  %t2732 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str118.c, i8* %t2731, i64 8)
  %t2733 = call i1 @nyx_string_equals(%nyx_string* %t2730, %nyx_string* %t2732)
  store i1 %t2733, i1* %t2719
  br label %sc_or_end606
sc_or_end606:
  %t2734 = load i1, i1* %t2719
  br i1 %t2734, label %sc_or_end608, label %sc_or_rhs607
sc_or_rhs607:
  %t2735 = load %nyx_string*, %nyx_string** %m.ptr
  %t2736 = getelementptr [5 x i8], [5 x i8]* @.str119, i32 0, i32 0
  %t2737 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str119.c, i8* %t2736, i64 4)
  %t2738 = call i1 @nyx_string_equals(%nyx_string* %t2735, %nyx_string* %t2737)
  store i1 %t2738, i1* %t2718
  br label %sc_or_end608
sc_or_end608:
  %t2739 = load i1, i1* %t2718
  br i1 %t2739, label %sc_or_end610, label %sc_or_rhs609
sc_or_rhs609:
  %t2740 = load %nyx_string*, %nyx_string** %m.ptr
  %t2741 = getelementptr [7 x i8], [7 x i8]* @.str120, i32 0, i32 0
  %t2742 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str120.c, i8* %t2741, i64 6)
  %t2743 = call i1 @nyx_string_equals(%nyx_string* %t2740, %nyx_string* %t2742)
  store i1 %t2743, i1* %t2717
  br label %sc_or_end610
sc_or_end610:
  %t2744 = load i1, i1* %t2717
  br i1 %t2744, label %then611, label %else612
then611:
  ret i1 1
else612:
  br label %merge613
merge613:
  store i1 true, i1* %t2745
  store i1 true, i1* %t2746
  store i1 true, i1* %t2747
  store i1 true, i1* %t2748
  %t2749 = load %nyx_string*, %nyx_string** %m.ptr
  %t2750 = getelementptr [6 x i8], [6 x i8]* @.str121, i32 0, i32 0
  %t2751 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str121.c, i8* %t2750, i64 5)
  %t2752 = call i1 @nyx_string_equals(%nyx_string* %t2749, %nyx_string* %t2751)
  br i1 %t2752, label %sc_or_end615, label %sc_or_rhs614
sc_or_rhs614:
  %t2753 = load %nyx_string*, %nyx_string** %m.ptr
  %t2754 = getelementptr [5 x i8], [5 x i8]* @.str122, i32 0, i32 0
  %t2755 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str122.c, i8* %t2754, i64 4)
  %t2756 = call i1 @nyx_string_equals(%nyx_string* %t2753, %nyx_string* %t2755)
  store i1 %t2756, i1* %t2748
  br label %sc_or_end615
sc_or_end615:
  %t2757 = load i1, i1* %t2748
  br i1 %t2757, label %sc_or_end617, label %sc_or_rhs616
sc_or_rhs616:
  %t2758 = load %nyx_string*, %nyx_string** %m.ptr
  %t2759 = getelementptr [7 x i8], [7 x i8]* @.str123, i32 0, i32 0
  %t2760 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str123.c, i8* %t2759, i64 6)
  %t2761 = call i1 @nyx_string_equals(%nyx_string* %t2758, %nyx_string* %t2760)
  store i1 %t2761, i1* %t2747
  br label %sc_or_end617
sc_or_end617:
  %t2762 = load i1, i1* %t2747
  br i1 %t2762, label %sc_or_end619, label %sc_or_rhs618
sc_or_rhs618:
  %t2763 = load %nyx_string*, %nyx_string** %m.ptr
  %t2764 = getelementptr [6 x i8], [6 x i8]* @.str124, i32 0, i32 0
  %t2765 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str124.c, i8* %t2764, i64 5)
  %t2766 = call i1 @nyx_string_equals(%nyx_string* %t2763, %nyx_string* %t2765)
  store i1 %t2766, i1* %t2746
  br label %sc_or_end619
sc_or_end619:
  %t2767 = load i1, i1* %t2746
  br i1 %t2767, label %sc_or_end621, label %sc_or_rhs620
sc_or_rhs620:
  %t2768 = load %nyx_string*, %nyx_string** %m.ptr
  %t2769 = getelementptr [7 x i8], [7 x i8]* @.str125, i32 0, i32 0
  %t2770 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str125.c, i8* %t2769, i64 6)
  %t2771 = call i1 @nyx_string_equals(%nyx_string* %t2768, %nyx_string* %t2770)
  store i1 %t2771, i1* %t2745
  br label %sc_or_end621
sc_or_end621:
  %t2772 = load i1, i1* %t2745
  br i1 %t2772, label %then622, label %else623
then622:
  ret i1 1
else623:
  br label %merge624
merge624:
  ret i1 0
}

define i1 @for_cuerpo_muta(
{ i64, i8* }* %body.param, %nyx_string* %name.param) {
  %body.ptr = alloca { i64, i8* }*
  %name.ptr = alloca %nyx_string*
  %t2775 = alloca %ASTNode
  %t2778 = alloca %nyx_string*
  %t2781 = alloca { i64, i8* }*
  %t2782 = alloca i1
  %t2783 = alloca i1
  %t2784 = alloca i1
  %t2804 = alloca i1
  %t2816 = alloca { i64, i8* }*
  %t2820 = alloca %nyx_string*
  %t2824 = alloca i1
  %t2835 = alloca %ASTNode
  %t2843 = alloca { i64, i8* }*
  %t2850 = alloca %nyx_string*
  %t2854 = alloca i1
  %t2865 = alloca %ASTNode
  %t2869 = alloca %nyx_string*
  %t2870 = alloca i1
  %t2881 = alloca { i64, i8* }*
  %t2888 = alloca %nyx_string*
  %t2894 = alloca { i64, i8* }*
  %t2895 = alloca i64
  %t2904 = alloca { i64, i8* }*
  store { i64, i8* }* %body.param, { i64, i8* }** %body.ptr
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %t2773 = load { i64, i8* }*, { i64, i8* }** %body.ptr
  %t2774 = call %ASTNode @licm_root_of({ i64, i8* }* %t2773)
  store %ASTNode %t2774, %ASTNode* %t2775
  %t2776 = getelementptr %ASTNode, %ASTNode* %t2775, i32 0, i32 0
  %t2777 = load %nyx_string*, %nyx_string** %t2776
  store %nyx_string* %t2777, %nyx_string** %t2778
  %t2779 = getelementptr %ASTNode, %ASTNode* %t2775, i32 0, i32 1
  %t2780 = load { i64, i8* }*, { i64, i8* }** %t2779
  store { i64, i8* }* %t2780, { i64, i8* }** %t2781
  store i1 true, i1* %t2782
  store i1 true, i1* %t2783
  store i1 true, i1* %t2784
  %t2785 = load %nyx_string*, %nyx_string** %t2778
  %t2786 = getelementptr [9 x i8], [9 x i8]* @.str126, i32 0, i32 0
  %t2787 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str126.c, i8* %t2786, i64 8)
  %t2788 = call i1 @nyx_string_equals(%nyx_string* %t2785, %nyx_string* %t2787)
  br i1 %t2788, label %sc_or_end626, label %sc_or_rhs625
sc_or_rhs625:
  %t2789 = load %nyx_string*, %nyx_string** %t2778
  %t2790 = getelementptr [9 x i8], [9 x i8]* @.str127, i32 0, i32 0
  %t2791 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str127.c, i8* %t2790, i64 8)
  %t2792 = call i1 @nyx_string_equals(%nyx_string* %t2789, %nyx_string* %t2791)
  store i1 %t2792, i1* %t2784
  br label %sc_or_end626
sc_or_end626:
  %t2793 = load i1, i1* %t2784
  br i1 %t2793, label %sc_or_end628, label %sc_or_rhs627
sc_or_rhs627:
  %t2794 = load %nyx_string*, %nyx_string** %t2778
  %t2795 = getelementptr [7 x i8], [7 x i8]* @.str128, i32 0, i32 0
  %t2796 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str128.c, i8* %t2795, i64 6)
  %t2797 = call i1 @nyx_string_equals(%nyx_string* %t2794, %nyx_string* %t2796)
  store i1 %t2797, i1* %t2783
  br label %sc_or_end628
sc_or_end628:
  %t2798 = load i1, i1* %t2783
  br i1 %t2798, label %sc_or_end630, label %sc_or_rhs629
sc_or_rhs629:
  %t2799 = load %nyx_string*, %nyx_string** %t2778
  %t2800 = getelementptr [8 x i8], [8 x i8]* @.str129, i32 0, i32 0
  %t2801 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str129.c, i8* %t2800, i64 7)
  %t2802 = call i1 @nyx_string_equals(%nyx_string* %t2799, %nyx_string* %t2801)
  store i1 %t2802, i1* %t2782
  br label %sc_or_end630
sc_or_end630:
  %t2803 = load i1, i1* %t2782
  br i1 %t2803, label %then631, label %else632
then631:
  ret i1 0
else632:
  br label %merge633
merge633:
  store i1 false, i1* %t2804
  %t2805 = load %nyx_string*, %nyx_string** %t2778
  %t2806 = getelementptr [7 x i8], [7 x i8]* @.str130, i32 0, i32 0
  %t2807 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str130.c, i8* %t2806, i64 6)
  %t2808 = call i1 @nyx_string_equals(%nyx_string* %t2805, %nyx_string* %t2807)
  br i1 %t2808, label %sc_and_rhs634, label %sc_and_end635
sc_and_rhs634:
  %t2809 = load { i64, i8* }*, { i64, i8* }** %t2781
  %t2810 = call i64 @nyx_array_length({ i64, i8* }* %t2809)
  %t2811 = icmp sge i64 %t2810, 1
  store i1 %t2811, i1* %t2804
  br label %sc_and_end635
sc_and_end635:
  %t2812 = load i1, i1* %t2804
  br i1 %t2812, label %then636, label %else637
then636:
  %t2813 = load { i64, i8* }*, { i64, i8* }** %t2781
  %t2814 = call i64 @nyx_array_get({ i64, i8* }* %t2813, i64 0)
  %t2815 = inttoptr i64 %t2814 to { i64, i8* }*
  store { i64, i8* }* %t2815, { i64, i8* }** %t2816
  %t2817 = load { i64, i8* }*, { i64, i8* }** %t2816
  %t2818 = call i64 @nyx_array_get_checked({ i64, i8* }* %t2817, i64 0, i64 2)
  %t2819 = inttoptr i64 %t2818 to %nyx_string*
  store %nyx_string* %t2819, %nyx_string** %t2820
  %t2821 = load %nyx_string*, %nyx_string** %t2820
  %t2822 = load %nyx_string*, %nyx_string** %name.ptr
  %t2823 = call i1 @nyx_string_equals(%nyx_string* %t2821, %nyx_string* %t2822)
  br i1 %t2823, label %then639, label %else640
then639:
  ret i1 1
else640:
  br label %merge641
merge641:
  br label %merge638
else637:
  br label %merge638
merge638:
  store i1 false, i1* %t2824
  %t2825 = load %nyx_string*, %nyx_string** %t2778
  %t2826 = getelementptr [13 x i8], [13 x i8]* @.str131, i32 0, i32 0
  %t2827 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str131.c, i8* %t2826, i64 12)
  %t2828 = call i1 @nyx_string_equals(%nyx_string* %t2825, %nyx_string* %t2827)
  br i1 %t2828, label %sc_and_rhs642, label %sc_and_end643
sc_and_rhs642:
  %t2829 = load { i64, i8* }*, { i64, i8* }** %t2781
  %t2830 = call i64 @nyx_array_length({ i64, i8* }* %t2829)
  %t2831 = icmp sge i64 %t2830, 1
  store i1 %t2831, i1* %t2824
  br label %sc_and_end643
sc_and_end643:
  %t2832 = load i1, i1* %t2824
  br i1 %t2832, label %then644, label %else645
then644:
  %t2833 = load %ASTNode, %ASTNode* %t2775
  %t2834 = call %ASTNode @licm_node_at(%ASTNode %t2833, i64 0)
  store %ASTNode %t2834, %ASTNode* %t2835
  %t2836 = getelementptr %ASTNode, %ASTNode* %t2835, i32 0, i32 0
  %t2837 = load %nyx_string*, %nyx_string** %t2836
  %t2838 = getelementptr [11 x i8], [11 x i8]* @.str132, i32 0, i32 0
  %t2839 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str132.c, i8* %t2838, i64 10)
  %t2840 = call i1 @nyx_string_equals(%nyx_string* %t2837, %nyx_string* %t2839)
  br i1 %t2840, label %then647, label %else648
then647:
  %t2841 = getelementptr %ASTNode, %ASTNode* %t2835, i32 0, i32 1
  %t2842 = load { i64, i8* }*, { i64, i8* }** %t2841
  store { i64, i8* }* %t2842, { i64, i8* }** %t2843
  %t2844 = load { i64, i8* }*, { i64, i8* }** %t2843
  %t2845 = call i64 @nyx_array_length({ i64, i8* }* %t2844)
  %t2846 = icmp sge i64 %t2845, 1
  br i1 %t2846, label %then650, label %else651
then650:
  %t2847 = load { i64, i8* }*, { i64, i8* }** %t2843
  %t2848 = call i64 @nyx_array_get_checked({ i64, i8* }* %t2847, i64 0, i64 2)
  %t2849 = inttoptr i64 %t2848 to %nyx_string*
  store %nyx_string* %t2849, %nyx_string** %t2850
  %t2851 = load %nyx_string*, %nyx_string** %t2850
  %t2852 = load %nyx_string*, %nyx_string** %name.ptr
  %t2853 = call i1 @nyx_string_equals(%nyx_string* %t2851, %nyx_string* %t2852)
  br i1 %t2853, label %then653, label %else654
then653:
  ret i1 1
else654:
  br label %merge655
merge655:
  br label %merge652
else651:
  br label %merge652
merge652:
  br label %merge649
else648:
  br label %merge649
merge649:
  br label %merge646
else645:
  br label %merge646
merge646:
  store i1 false, i1* %t2854
  %t2855 = load %nyx_string*, %nyx_string** %t2778
  %t2856 = getelementptr [12 x i8], [12 x i8]* @.str133, i32 0, i32 0
  %t2857 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str133.c, i8* %t2856, i64 11)
  %t2858 = call i1 @nyx_string_equals(%nyx_string* %t2855, %nyx_string* %t2857)
  br i1 %t2858, label %sc_and_rhs656, label %sc_and_end657
sc_and_rhs656:
  %t2859 = load { i64, i8* }*, { i64, i8* }** %t2781
  %t2860 = call i64 @nyx_array_length({ i64, i8* }* %t2859)
  %t2861 = icmp sge i64 %t2860, 2
  store i1 %t2861, i1* %t2854
  br label %sc_and_end657
sc_and_end657:
  %t2862 = load i1, i1* %t2854
  br i1 %t2862, label %then658, label %else659
then658:
  %t2863 = load %ASTNode, %ASTNode* %t2775
  %t2864 = call %ASTNode @licm_node_at(%ASTNode %t2863, i64 0)
  store %ASTNode %t2864, %ASTNode* %t2865
  %t2866 = load { i64, i8* }*, { i64, i8* }** %t2781
  %t2867 = call i64 @nyx_array_get_checked({ i64, i8* }* %t2866, i64 1, i64 2)
  %t2868 = inttoptr i64 %t2867 to %nyx_string*
  store %nyx_string* %t2868, %nyx_string** %t2869
  store i1 false, i1* %t2870
  %t2871 = getelementptr %ASTNode, %ASTNode* %t2865, i32 0, i32 0
  %t2872 = load %nyx_string*, %nyx_string** %t2871
  %t2873 = getelementptr [11 x i8], [11 x i8]* @.str134, i32 0, i32 0
  %t2874 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str134.c, i8* %t2873, i64 10)
  %t2875 = call i1 @nyx_string_equals(%nyx_string* %t2872, %nyx_string* %t2874)
  br i1 %t2875, label %sc_and_rhs661, label %sc_and_end662
sc_and_rhs661:
  %t2876 = load %nyx_string*, %nyx_string** %t2869
  %t2877 = call i1 @licm_metodo_muta(%nyx_string* %t2876)
  store i1 %t2877, i1* %t2870
  br label %sc_and_end662
sc_and_end662:
  %t2878 = load i1, i1* %t2870
  br i1 %t2878, label %then663, label %else664
then663:
  %t2879 = getelementptr %ASTNode, %ASTNode* %t2865, i32 0, i32 1
  %t2880 = load { i64, i8* }*, { i64, i8* }** %t2879
  store { i64, i8* }* %t2880, { i64, i8* }** %t2881
  %t2882 = load { i64, i8* }*, { i64, i8* }** %t2881
  %t2883 = call i64 @nyx_array_length({ i64, i8* }* %t2882)
  %t2884 = icmp sge i64 %t2883, 1
  br i1 %t2884, label %then666, label %else667
then666:
  %t2885 = load { i64, i8* }*, { i64, i8* }** %t2881
  %t2886 = call i64 @nyx_array_get_checked({ i64, i8* }* %t2885, i64 0, i64 2)
  %t2887 = inttoptr i64 %t2886 to %nyx_string*
  store %nyx_string* %t2887, %nyx_string** %t2888
  %t2889 = load %nyx_string*, %nyx_string** %t2888
  %t2890 = load %nyx_string*, %nyx_string** %name.ptr
  %t2891 = call i1 @nyx_string_equals(%nyx_string* %t2889, %nyx_string* %t2890)
  br i1 %t2891, label %then669, label %else670
then669:
  ret i1 1
else670:
  br label %merge671
merge671:
  br label %merge668
else667:
  br label %merge668
merge668:
  br label %merge665
else664:
  br label %merge665
merge665:
  br label %merge660
else659:
  br label %merge660
merge660:
  %t2892 = load %ASTNode, %ASTNode* %t2775
  %t2893 = call { i64, i8* }* @licm_children(%ASTNode %t2892)
  store { i64, i8* }* %t2893, { i64, i8* }** %t2894
  store i64 0, i64* %t2895
  br label %while_cond672
while_cond672:
  %t2896 = load i64, i64* %t2895
  %t2897 = load { i64, i8* }*, { i64, i8* }** %t2894
  %t2898 = call i64 @nyx_array_length({ i64, i8* }* %t2897)
  %t2899 = icmp slt i64 %t2896, %t2898
  br i1 %t2899, label %while_body673, label %while_end674
while_body673:
  %t2900 = load { i64, i8* }*, { i64, i8* }** %t2894
  %t2901 = load i64, i64* %t2895
  %t2902 = call i64 @nyx_array_get({ i64, i8* }* %t2900, i64 %t2901)
  %t2903 = inttoptr i64 %t2902 to { i64, i8* }*
  store { i64, i8* }* %t2903, { i64, i8* }** %t2904
  %t2905 = load { i64, i8* }*, { i64, i8* }** %t2904
  %t2906 = load %nyx_string*, %nyx_string** %name.ptr
  %t2907 = call i1 @for_cuerpo_muta({ i64, i8* }* %t2905, %nyx_string* %t2906)
  br i1 %t2907, label %then675, label %else676
then675:
  ret i1 1
else676:
  br label %merge677
merge677:
  %t2908 = load i64, i64* %t2895
  %t2909 = add i64 %t2908, 1
  store i64 %t2909, i64* %t2895
  br label %while_cond672
while_end674:
  ret i1 0
}

define internal i1 @licm_entero_por_forma(
{ i64, i8* }* %raw.param) {
  %raw.ptr = alloca { i64, i8* }*
  %t2912 = alloca %ASTNode
  %t2915 = alloca %nyx_string*
  %t2918 = alloca { i64, i8* }*
  %t2923 = alloca i1
  %t2935 = alloca %nyx_string*
  %t2936 = alloca i1
  %t2937 = alloca i1
  %t2938 = alloca i1
  %t2939 = alloca i1
  %t2964 = alloca i1
  %t2965 = alloca i1
  %t2966 = alloca i1
  %t2967 = alloca i1
  %t2992 = alloca i1
  %t3004 = alloca %nyx_string*
  %t3009 = alloca i1
  %t3021 = alloca %nyx_string*
  %t3022 = alloca i1
  %t3023 = alloca i1
  %t3024 = alloca i1
  store { i64, i8* }* %raw.param, { i64, i8* }** %raw.ptr
  %t2910 = load { i64, i8* }*, { i64, i8* }** %raw.ptr
  %t2911 = call %ASTNode @licm_root_of({ i64, i8* }* %t2910)
  store %ASTNode %t2911, %ASTNode* %t2912
  %t2913 = getelementptr %ASTNode, %ASTNode* %t2912, i32 0, i32 0
  %t2914 = load %nyx_string*, %nyx_string** %t2913
  store %nyx_string* %t2914, %nyx_string** %t2915
  %t2916 = getelementptr %ASTNode, %ASTNode* %t2912, i32 0, i32 1
  %t2917 = load { i64, i8* }*, { i64, i8* }** %t2916
  store { i64, i8* }* %t2917, { i64, i8* }** %t2918
  %t2919 = load %nyx_string*, %nyx_string** %t2915
  %t2920 = getelementptr [7 x i8], [7 x i8]* @.str135, i32 0, i32 0
  %t2921 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str135.c, i8* %t2920, i64 6)
  %t2922 = call i1 @nyx_string_equals(%nyx_string* %t2919, %nyx_string* %t2921)
  br i1 %t2922, label %then678, label %else679
then678:
  ret i1 1
else679:
  br label %merge680
merge680:
  store i1 false, i1* %t2923
  %t2924 = load %nyx_string*, %nyx_string** %t2915
  %t2925 = getelementptr [6 x i8], [6 x i8]* @.str136, i32 0, i32 0
  %t2926 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str136.c, i8* %t2925, i64 5)
  %t2927 = call i1 @nyx_string_equals(%nyx_string* %t2924, %nyx_string* %t2926)
  br i1 %t2927, label %sc_and_rhs681, label %sc_and_end682
sc_and_rhs681:
  %t2928 = load { i64, i8* }*, { i64, i8* }** %t2918
  %t2929 = call i64 @nyx_array_length({ i64, i8* }* %t2928)
  %t2930 = icmp sge i64 %t2929, 3
  store i1 %t2930, i1* %t2923
  br label %sc_and_end682
sc_and_end682:
  %t2931 = load i1, i1* %t2923
  br i1 %t2931, label %then683, label %else684
then683:
  %t2932 = load { i64, i8* }*, { i64, i8* }** %t2918
  %t2933 = call i64 @nyx_array_get_checked({ i64, i8* }* %t2932, i64 0, i64 2)
  %t2934 = inttoptr i64 %t2933 to %nyx_string*
  store %nyx_string* %t2934, %nyx_string** %t2935
  store i1 true, i1* %t2936
  store i1 true, i1* %t2937
  store i1 true, i1* %t2938
  store i1 true, i1* %t2939
  %t2940 = load %nyx_string*, %nyx_string** %t2935
  %t2941 = getelementptr [5 x i8], [5 x i8]* @.str137, i32 0, i32 0
  %t2942 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str137.c, i8* %t2941, i64 4)
  %t2943 = call i1 @nyx_string_equals(%nyx_string* %t2940, %nyx_string* %t2942)
  br i1 %t2943, label %sc_or_end687, label %sc_or_rhs686
sc_or_rhs686:
  %t2944 = load %nyx_string*, %nyx_string** %t2935
  %t2945 = getelementptr [6 x i8], [6 x i8]* @.str138, i32 0, i32 0
  %t2946 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str138.c, i8* %t2945, i64 5)
  %t2947 = call i1 @nyx_string_equals(%nyx_string* %t2944, %nyx_string* %t2946)
  store i1 %t2947, i1* %t2939
  br label %sc_or_end687
sc_or_end687:
  %t2948 = load i1, i1* %t2939
  br i1 %t2948, label %sc_or_end689, label %sc_or_rhs688
sc_or_rhs688:
  %t2949 = load %nyx_string*, %nyx_string** %t2935
  %t2950 = getelementptr [5 x i8], [5 x i8]* @.str139, i32 0, i32 0
  %t2951 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str139.c, i8* %t2950, i64 4)
  %t2952 = call i1 @nyx_string_equals(%nyx_string* %t2949, %nyx_string* %t2951)
  store i1 %t2952, i1* %t2938
  br label %sc_or_end689
sc_or_end689:
  %t2953 = load i1, i1* %t2938
  br i1 %t2953, label %sc_or_end691, label %sc_or_rhs690
sc_or_rhs690:
  %t2954 = load %nyx_string*, %nyx_string** %t2935
  %t2955 = getelementptr [6 x i8], [6 x i8]* @.str140, i32 0, i32 0
  %t2956 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str140.c, i8* %t2955, i64 5)
  %t2957 = call i1 @nyx_string_equals(%nyx_string* %t2954, %nyx_string* %t2956)
  store i1 %t2957, i1* %t2937
  br label %sc_or_end691
sc_or_end691:
  %t2958 = load i1, i1* %t2937
  br i1 %t2958, label %sc_or_end693, label %sc_or_rhs692
sc_or_rhs692:
  %t2959 = load %nyx_string*, %nyx_string** %t2935
  %t2960 = getelementptr [8 x i8], [8 x i8]* @.str141, i32 0, i32 0
  %t2961 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str141.c, i8* %t2960, i64 7)
  %t2962 = call i1 @nyx_string_equals(%nyx_string* %t2959, %nyx_string* %t2961)
  store i1 %t2962, i1* %t2936
  br label %sc_or_end693
sc_or_end693:
  %t2963 = load i1, i1* %t2936
  br i1 %t2963, label %then694, label %else695
then694:
  ret i1 1
else695:
  br label %merge696
merge696:
  store i1 true, i1* %t2964
  store i1 true, i1* %t2965
  store i1 true, i1* %t2966
  store i1 true, i1* %t2967
  %t2968 = load %nyx_string*, %nyx_string** %t2935
  %t2969 = getelementptr [4 x i8], [4 x i8]* @.str142, i32 0, i32 0
  %t2970 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str142.c, i8* %t2969, i64 3)
  %t2971 = call i1 @nyx_string_equals(%nyx_string* %t2968, %nyx_string* %t2970)
  br i1 %t2971, label %sc_or_end698, label %sc_or_rhs697
sc_or_rhs697:
  %t2972 = load %nyx_string*, %nyx_string** %t2935
  %t2973 = getelementptr [5 x i8], [5 x i8]* @.str143, i32 0, i32 0
  %t2974 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str143.c, i8* %t2973, i64 4)
  %t2975 = call i1 @nyx_string_equals(%nyx_string* %t2972, %nyx_string* %t2974)
  store i1 %t2975, i1* %t2967
  br label %sc_or_end698
sc_or_end698:
  %t2976 = load i1, i1* %t2967
  br i1 %t2976, label %sc_or_end700, label %sc_or_rhs699
sc_or_rhs699:
  %t2977 = load %nyx_string*, %nyx_string** %t2935
  %t2978 = getelementptr [6 x i8], [6 x i8]* @.str144, i32 0, i32 0
  %t2979 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str144.c, i8* %t2978, i64 5)
  %t2980 = call i1 @nyx_string_equals(%nyx_string* %t2977, %nyx_string* %t2979)
  store i1 %t2980, i1* %t2966
  br label %sc_or_end700
sc_or_end700:
  %t2981 = load i1, i1* %t2966
  br i1 %t2981, label %sc_or_end702, label %sc_or_rhs701
sc_or_rhs701:
  %t2982 = load %nyx_string*, %nyx_string** %t2935
  %t2983 = getelementptr [4 x i8], [4 x i8]* @.str145, i32 0, i32 0
  %t2984 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str145.c, i8* %t2983, i64 3)
  %t2985 = call i1 @nyx_string_equals(%nyx_string* %t2982, %nyx_string* %t2984)
  store i1 %t2985, i1* %t2965
  br label %sc_or_end702
sc_or_end702:
  %t2986 = load i1, i1* %t2965
  br i1 %t2986, label %sc_or_end704, label %sc_or_rhs703
sc_or_rhs703:
  %t2987 = load %nyx_string*, %nyx_string** %t2935
  %t2988 = getelementptr [4 x i8], [4 x i8]* @.str146, i32 0, i32 0
  %t2989 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str146.c, i8* %t2988, i64 3)
  %t2990 = call i1 @nyx_string_equals(%nyx_string* %t2987, %nyx_string* %t2989)
  store i1 %t2990, i1* %t2964
  br label %sc_or_end704
sc_or_end704:
  %t2991 = load i1, i1* %t2964
  br i1 %t2991, label %then705, label %else706
then705:
  ret i1 1
else706:
  br label %merge707
merge707:
  ret i1 0
else684:
  br label %merge685
merge685:
  store i1 false, i1* %t2992
  %t2993 = load %nyx_string*, %nyx_string** %t2915
  %t2994 = getelementptr [5 x i8], [5 x i8]* @.str147, i32 0, i32 0
  %t2995 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str147.c, i8* %t2994, i64 4)
  %t2996 = call i1 @nyx_string_equals(%nyx_string* %t2993, %nyx_string* %t2995)
  br i1 %t2996, label %sc_and_rhs708, label %sc_and_end709
sc_and_rhs708:
  %t2997 = load { i64, i8* }*, { i64, i8* }** %t2918
  %t2998 = call i64 @nyx_array_length({ i64, i8* }* %t2997)
  %t2999 = icmp sge i64 %t2998, 2
  store i1 %t2999, i1* %t2992
  br label %sc_and_end709
sc_and_end709:
  %t3000 = load i1, i1* %t2992
  br i1 %t3000, label %then710, label %else711
then710:
  %t3001 = load { i64, i8* }*, { i64, i8* }** %t2918
  %t3002 = call i64 @nyx_array_get_checked({ i64, i8* }* %t3001, i64 0, i64 2)
  %t3003 = inttoptr i64 %t3002 to %nyx_string*
  store %nyx_string* %t3003, %nyx_string** %t3004
  %t3005 = load %nyx_string*, %nyx_string** %t3004
  %t3006 = getelementptr [6 x i8], [6 x i8]* @.str148, i32 0, i32 0
  %t3007 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str148.c, i8* %t3006, i64 5)
  %t3008 = call i1 @nyx_string_equals(%nyx_string* %t3005, %nyx_string* %t3007)
  ret i1 %t3008
else711:
  br label %merge712
merge712:
  store i1 false, i1* %t3009
  %t3010 = load %nyx_string*, %nyx_string** %t2915
  %t3011 = getelementptr [12 x i8], [12 x i8]* @.str149, i32 0, i32 0
  %t3012 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str149.c, i8* %t3011, i64 11)
  %t3013 = call i1 @nyx_string_equals(%nyx_string* %t3010, %nyx_string* %t3012)
  br i1 %t3013, label %sc_and_rhs713, label %sc_and_end714
sc_and_rhs713:
  %t3014 = load { i64, i8* }*, { i64, i8* }** %t2918
  %t3015 = call i64 @nyx_array_length({ i64, i8* }* %t3014)
  %t3016 = icmp sge i64 %t3015, 2
  store i1 %t3016, i1* %t3009
  br label %sc_and_end714
sc_and_end714:
  %t3017 = load i1, i1* %t3009
  br i1 %t3017, label %then715, label %else716
then715:
  %t3018 = load { i64, i8* }*, { i64, i8* }** %t2918
  %t3019 = call i64 @nyx_array_get_checked({ i64, i8* }* %t3018, i64 1, i64 2)
  %t3020 = inttoptr i64 %t3019 to %nyx_string*
  store %nyx_string* %t3020, %nyx_string** %t3021
  store i1 true, i1* %t3022
  store i1 true, i1* %t3023
  store i1 true, i1* %t3024
  %t3025 = load %nyx_string*, %nyx_string** %t3021
  %t3026 = getelementptr [7 x i8], [7 x i8]* @.str150, i32 0, i32 0
  %t3027 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str150.c, i8* %t3026, i64 6)
  %t3028 = call i1 @nyx_string_equals(%nyx_string* %t3025, %nyx_string* %t3027)
  br i1 %t3028, label %sc_or_end719, label %sc_or_rhs718
sc_or_rhs718:
  %t3029 = load %nyx_string*, %nyx_string** %t3021
  %t3030 = getelementptr [12 x i8], [12 x i8]* @.str151, i32 0, i32 0
  %t3031 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str151.c, i8* %t3030, i64 11)
  %t3032 = call i1 @nyx_string_equals(%nyx_string* %t3029, %nyx_string* %t3031)
  store i1 %t3032, i1* %t3024
  br label %sc_or_end719
sc_or_end719:
  %t3033 = load i1, i1* %t3024
  br i1 %t3033, label %sc_or_end721, label %sc_or_rhs720
sc_or_rhs720:
  %t3034 = load %nyx_string*, %nyx_string** %t3021
  %t3035 = getelementptr [12 x i8], [12 x i8]* @.str152, i32 0, i32 0
  %t3036 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str152.c, i8* %t3035, i64 11)
  %t3037 = call i1 @nyx_string_equals(%nyx_string* %t3034, %nyx_string* %t3036)
  store i1 %t3037, i1* %t3023
  br label %sc_or_end721
sc_or_end721:
  %t3038 = load i1, i1* %t3023
  br i1 %t3038, label %sc_or_end723, label %sc_or_rhs722
sc_or_rhs722:
  %t3039 = load %nyx_string*, %nyx_string** %t3021
  %t3040 = getelementptr [8 x i8], [8 x i8]* @.str153, i32 0, i32 0
  %t3041 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str153.c, i8* %t3040, i64 7)
  %t3042 = call i1 @nyx_string_equals(%nyx_string* %t3039, %nyx_string* %t3041)
  store i1 %t3042, i1* %t3022
  br label %sc_or_end723
sc_or_end723:
  %t3043 = load i1, i1* %t3022
  ret i1 %t3043
else716:
  br label %merge717
merge717:
  ret i1 0
}

define i64 @cuerpo_asigna_no_entero(
{ i64, i8* }* %body.param, { i64, i8* }* %acc.param) {
  %body.ptr = alloca { i64, i8* }*
  %acc.ptr = alloca { i64, i8* }*
  %t3046 = alloca %ASTNode
  %t3049 = alloca { i64, i8* }*
  %t3050 = alloca i1
  %t3063 = alloca { i64, i8* }*
  %t3067 = alloca %nyx_string*
  %t3071 = alloca { i64, i8* }*
  %t3072 = alloca i1
  %t3086 = alloca { i64, i8* }*
  %t3087 = alloca i64
  %t3096 = alloca { i64, i8* }*
  store { i64, i8* }* %body.param, { i64, i8* }** %body.ptr
  store { i64, i8* }* %acc.param, { i64, i8* }** %acc.ptr
  %t3044 = load { i64, i8* }*, { i64, i8* }** %body.ptr
  %t3045 = call %ASTNode @licm_root_of({ i64, i8* }* %t3044)
  store %ASTNode %t3045, %ASTNode* %t3046
  %t3047 = getelementptr %ASTNode, %ASTNode* %t3046, i32 0, i32 1
  %t3048 = load { i64, i8* }*, { i64, i8* }** %t3047
  store { i64, i8* }* %t3048, { i64, i8* }** %t3049
  store i1 false, i1* %t3050
  %t3051 = getelementptr %ASTNode, %ASTNode* %t3046, i32 0, i32 0
  %t3052 = load %nyx_string*, %nyx_string** %t3051
  %t3053 = getelementptr [7 x i8], [7 x i8]* @.str154, i32 0, i32 0
  %t3054 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str154.c, i8* %t3053, i64 6)
  %t3055 = call i1 @nyx_string_equals(%nyx_string* %t3052, %nyx_string* %t3054)
  br i1 %t3055, label %sc_and_rhs724, label %sc_and_end725
sc_and_rhs724:
  %t3056 = load { i64, i8* }*, { i64, i8* }** %t3049
  %t3057 = call i64 @nyx_array_length({ i64, i8* }* %t3056)
  %t3058 = icmp sge i64 %t3057, 2
  store i1 %t3058, i1* %t3050
  br label %sc_and_end725
sc_and_end725:
  %t3059 = load i1, i1* %t3050
  br i1 %t3059, label %then726, label %else727
then726:
  %t3060 = load { i64, i8* }*, { i64, i8* }** %t3049
  %t3061 = call i64 @nyx_array_get({ i64, i8* }* %t3060, i64 0)
  %t3062 = inttoptr i64 %t3061 to { i64, i8* }*
  store { i64, i8* }* %t3062, { i64, i8* }** %t3063
  %t3064 = load { i64, i8* }*, { i64, i8* }** %t3063
  %t3065 = call i64 @nyx_array_get_checked({ i64, i8* }* %t3064, i64 0, i64 2)
  %t3066 = inttoptr i64 %t3065 to %nyx_string*
  store %nyx_string* %t3066, %nyx_string** %t3067
  %t3068 = load { i64, i8* }*, { i64, i8* }** %t3049
  %t3069 = call i64 @nyx_array_get({ i64, i8* }* %t3068, i64 1)
  %t3070 = inttoptr i64 %t3069 to { i64, i8* }*
  store { i64, i8* }* %t3070, { i64, i8* }** %t3071
  store i1 false, i1* %t3072
  %t3073 = load { i64, i8* }*, { i64, i8* }** %t3071
  %t3074 = call i1 @licm_entero_por_forma({ i64, i8* }* %t3073)
  %t3075 = xor i1 %t3074, true
  br i1 %t3075, label %sc_and_rhs729, label %sc_and_end730
sc_and_rhs729:
  %t3076 = load { i64, i8* }*, { i64, i8* }** %acc.ptr
  %t3077 = load %nyx_string*, %nyx_string** %t3067
  %t3078 = call i1 @licm_contains({ i64, i8* }* %t3076, %nyx_string* %t3077)
  %t3079 = xor i1 %t3078, true
  store i1 %t3079, i1* %t3072
  br label %sc_and_end730
sc_and_end730:
  %t3080 = load i1, i1* %t3072
  br i1 %t3080, label %then731, label %else732
then731:
  %t3081 = load { i64, i8* }*, { i64, i8* }** %acc.ptr
  %t3082 = load %nyx_string*, %nyx_string** %t3067
  %t3083 = ptrtoint %nyx_string* %t3082 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3081, i64 %t3083, i64 2)
  br label %merge733
else732:
  br label %merge733
merge733:
  br label %merge728
else727:
  br label %merge728
merge728:
  %t3084 = load %ASTNode, %ASTNode* %t3046
  %t3085 = call { i64, i8* }* @licm_children(%ASTNode %t3084)
  store { i64, i8* }* %t3085, { i64, i8* }** %t3086
  store i64 0, i64* %t3087
  br label %while_cond734
while_cond734:
  %t3088 = load i64, i64* %t3087
  %t3089 = load { i64, i8* }*, { i64, i8* }** %t3086
  %t3090 = call i64 @nyx_array_length({ i64, i8* }* %t3089)
  %t3091 = icmp slt i64 %t3088, %t3090
  br i1 %t3091, label %while_body735, label %while_end736
while_body735:
  %t3092 = load { i64, i8* }*, { i64, i8* }** %t3086
  %t3093 = load i64, i64* %t3087
  %t3094 = call i64 @nyx_array_get({ i64, i8* }* %t3092, i64 %t3093)
  %t3095 = inttoptr i64 %t3094 to { i64, i8* }*
  store { i64, i8* }* %t3095, { i64, i8* }** %t3096
  %t3097 = load { i64, i8* }*, { i64, i8* }** %t3096
  %t3098 = load { i64, i8* }*, { i64, i8* }** %acc.ptr
  %t3099 = call i64 @cuerpo_asigna_no_entero({ i64, i8* }* %t3097, { i64, i8* }* %t3098)
  %t3100 = load i64, i64* %t3087
  %t3101 = add i64 %t3100, 1
  store i64 %t3101, i64* %t3087
  br label %while_cond734
while_end736:
  ret i64 0
}


attributes #0 = { returns_twice }

