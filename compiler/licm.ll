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
  store { i64, i8* }* %arr.param, { i64, i8* }** %arr.ptr
  %1 = call { i64, i8* }* @nyx_array_new_ptr()
  %2 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %3 = ptrtoint { i64, i8* }* %2 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1, i64 %3, i64 5)
  %4 = alloca { i64, i8* }*
  store { i64, i8* }* %1, { i64, i8* }** %4
  %5 = load { i64, i8* }*, { i64, i8* }** %4
  %6 = call i64 @nyx_array_get({ i64, i8* }* %5, i64 0)
  %7 = inttoptr i64 %6 to { i64, i8* }*
  %8 = call i64 @nyx_array_get({ i64, i8* }* %7, i64 0)
  %9 = call i64 @nyx_array_get({ i64, i8* }* %7, i64 1)
  %10 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %7, i64 2)
  %11 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %7, i64 3)
  %12 = inttoptr i64 %8 to %nyx_string*
  %13 = inttoptr i64 %9 to { i64, i8* }*
  %14 = alloca %ASTNode
  %15 = getelementptr inbounds %ASTNode, %ASTNode* %14, i32 0, i32 0
  store %nyx_string* %12, %nyx_string** %15
  %16 = getelementptr inbounds %ASTNode, %ASTNode* %14, i32 0, i32 1
  store { i64, i8* }* %13, { i64, i8* }** %16
  %17 = getelementptr inbounds %ASTNode, %ASTNode* %14, i32 0, i32 2
  store i64 %10, i64* %17
  %18 = getelementptr inbounds %ASTNode, %ASTNode* %14, i32 0, i32 3
  store i64 %11, i64* %18
  %19 = load %ASTNode, %ASTNode* %14
  %20 = alloca %ASTNode
  store %ASTNode %19, %ASTNode* %20
  %21 = load %ASTNode, %ASTNode* %20
  ret %ASTNode %21
}

define internal %ASTNode @licm_node_at(
%ASTNode %node.param, i64 %i.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %i.ptr = alloca i64
  store i64 %i.param, i64* %i.ptr
  %22 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 1
  %23 = load { i64, i8* }*, { i64, i8* }** %22
  %24 = alloca { i64, i8* }*
  store { i64, i8* }* %23, { i64, i8* }** %24
  %25 = load { i64, i8* }*, { i64, i8* }** %24
  %26 = load i64, i64* %i.ptr
  %27 = call i64 @nyx_array_get({ i64, i8* }* %25, i64 %26)
  %28 = inttoptr i64 %27 to { i64, i8* }*
  %29 = call i64 @nyx_array_get({ i64, i8* }* %28, i64 0)
  %30 = call i64 @nyx_array_get({ i64, i8* }* %28, i64 1)
  %31 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %28, i64 2)
  %32 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %28, i64 3)
  %33 = inttoptr i64 %29 to %nyx_string*
  %34 = inttoptr i64 %30 to { i64, i8* }*
  %35 = alloca %ASTNode
  %36 = getelementptr inbounds %ASTNode, %ASTNode* %35, i32 0, i32 0
  store %nyx_string* %33, %nyx_string** %36
  %37 = getelementptr inbounds %ASTNode, %ASTNode* %35, i32 0, i32 1
  store { i64, i8* }* %34, { i64, i8* }** %37
  %38 = getelementptr inbounds %ASTNode, %ASTNode* %35, i32 0, i32 2
  store i64 %31, i64* %38
  %39 = getelementptr inbounds %ASTNode, %ASTNode* %35, i32 0, i32 3
  store i64 %32, i64* %39
  %40 = load %ASTNode, %ASTNode* %35
  %41 = alloca %ASTNode
  store %ASTNode %40, %ASTNode* %41
  %42 = load %ASTNode, %ASTNode* %41
  ret %ASTNode %42
}

define internal { i64, i8* }* @licm_array_at(
%ASTNode %node.param, i64 %i.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %i.ptr = alloca i64
  store i64 %i.param, i64* %i.ptr
  %43 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 1
  %44 = load { i64, i8* }*, { i64, i8* }** %43
  %45 = alloca { i64, i8* }*
  store { i64, i8* }* %44, { i64, i8* }** %45
  %46 = load { i64, i8* }*, { i64, i8* }** %45
  %47 = load i64, i64* %i.ptr
  %48 = call i64 @nyx_array_get({ i64, i8* }* %46, i64 %47)
  %49 = inttoptr i64 %48 to { i64, i8* }*
  %50 = alloca { i64, i8* }*
  store { i64, i8* }* %49, { i64, i8* }** %50
  %51 = load { i64, i8* }*, { i64, i8* }** %50
  ret { i64, i8* }* %51
}

define internal { i64, i8* }* @licm_make(
%nyx_string* %node_type.param, { i64, i8* }* %data.param) {
  %node_type.ptr = alloca %nyx_string*
  store %nyx_string* %node_type.param, %nyx_string** %node_type.ptr
  %data.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %data.param, { i64, i8* }** %data.ptr
  %52 = call { i64, i8* }* @nyx_array_new_ptr()
  %53 = alloca { i64, i8* }*
  store { i64, i8* }* %52, { i64, i8* }** %53
  %54 = load { i64, i8* }*, { i64, i8* }** %53
  %55 = load %nyx_string*, %nyx_string** %node_type.ptr
  %56 = ptrtoint %nyx_string* %55 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %54, i64 %56, i64 2)
  %57 = load { i64, i8* }*, { i64, i8* }** %53
  %58 = load { i64, i8* }*, { i64, i8* }** %data.ptr
  %59 = ptrtoint { i64, i8* }* %58 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %57, i64 %59, i64 5)
  %60 = load { i64, i8* }*, { i64, i8* }** %53
  call void @nyx_array_push_tagged({ i64, i8* }* %60, i64 0, i64 1)
  %61 = load { i64, i8* }*, { i64, i8* }** %53
  call void @nyx_array_push_tagged({ i64, i8* }* %61, i64 0, i64 1)
  %62 = load { i64, i8* }*, { i64, i8* }** %53
  ret { i64, i8* }* %62
}

define internal i1 @licm_contains(
{ i64, i8* }* %acc.param, %nyx_string* %v.param) {
  %acc.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %acc.param, { i64, i8* }** %acc.ptr
  %v.ptr = alloca %nyx_string*
  store %nyx_string* %v.param, %nyx_string** %v.ptr
  %63 = alloca i64
  store i64 0, i64* %63
  %64 = call i8* @llvm.stacksave()
  br label %while_cond0
while_cond0:
  %65 = load i64, i64* %63
  %66 = load { i64, i8* }*, { i64, i8* }** %acc.ptr
  %67 = call i64 @nyx_array_length({ i64, i8* }* %66)
  %68 = icmp slt i64 %65, %67
  br i1 %68, label %while_body1, label %while_end2
while_body1:
  call void @llvm.stackrestore(i8* %64)
  %69 = load { i64, i8* }*, { i64, i8* }** %acc.ptr
  %70 = load i64, i64* %63
  %71 = call i64 @nyx_array_get_checked({ i64, i8* }* %69, i64 %70, i64 2)
  %72 = inttoptr i64 %71 to %nyx_string*
  %73 = alloca %nyx_string*
  store %nyx_string* %72, %nyx_string** %73
  %74 = load %nyx_string*, %nyx_string** %73
  %75 = load %nyx_string*, %nyx_string** %v.ptr
  %76 = call i1 @nyx_string_equals(%nyx_string* %74, %nyx_string* %75)
  br i1 %76, label %then3, label %else4
then3:
  ret i1 1
else4:
  br label %merge5
merge5:
  %77 = load i64, i64* %63
  %78 = add i64 %77, 1
  store i64 %78, i64* %63
  br label %while_cond0
while_end2:
  ret i1 0
}

define internal %nyx_string* @licm_lookup(
{ i64, i8* }* %litmap.param, %nyx_string* %v.param) {
  %litmap.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %litmap.param, { i64, i8* }** %litmap.ptr
  %v.ptr = alloca %nyx_string*
  store %nyx_string* %v.param, %nyx_string** %v.ptr
  %79 = alloca i64
  store i64 0, i64* %79
  %80 = call i8* @llvm.stacksave()
  br label %while_cond6
while_cond6:
  %81 = load i64, i64* %79
  %82 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %83 = call i64 @nyx_array_length({ i64, i8* }* %82)
  %84 = icmp slt i64 %81, %83
  br i1 %84, label %while_body7, label %while_end8
while_body7:
  call void @llvm.stackrestore(i8* %80)
  %85 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %86 = load i64, i64* %79
  %87 = call i64 @nyx_array_get({ i64, i8* }* %85, i64 %86)
  %88 = inttoptr i64 %87 to { i64, i8* }*
  %89 = alloca { i64, i8* }*
  store { i64, i8* }* %88, { i64, i8* }** %89
  %90 = load { i64, i8* }*, { i64, i8* }** %89
  %91 = call i64 @nyx_array_get_checked({ i64, i8* }* %90, i64 0, i64 2)
  %92 = inttoptr i64 %91 to %nyx_string*
  %93 = alloca %nyx_string*
  store %nyx_string* %92, %nyx_string** %93
  %94 = load %nyx_string*, %nyx_string** %93
  %95 = load %nyx_string*, %nyx_string** %v.ptr
  %96 = call i1 @nyx_string_equals(%nyx_string* %94, %nyx_string* %95)
  br i1 %96, label %then9, label %else10
then9:
  %97 = load { i64, i8* }*, { i64, i8* }** %89
  %98 = call i64 @nyx_array_get_checked({ i64, i8* }* %97, i64 1, i64 2)
  %99 = inttoptr i64 %98 to %nyx_string*
  %100 = alloca %nyx_string*
  store %nyx_string* %99, %nyx_string** %100
  %101 = load %nyx_string*, %nyx_string** %100
  ret %nyx_string* %101
else10:
  br label %merge11
merge11:
  %102 = load i64, i64* %79
  %103 = add i64 %102, 1
  store i64 %103, i64* %79
  br label %while_cond6
while_end8:
  %104 = getelementptr [1 x i8], [1 x i8]* @.str0, i32 0, i32 0
  %105 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str0.c, i8* %104, i64 0)
  ret %nyx_string* %105
}

define internal i64 @licm_collect(
%ASTNode %node.param, { i64, i8* }* %acc.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %acc.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %acc.param, { i64, i8* }** %acc.ptr
  %106 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 0
  %107 = load %nyx_string*, %nyx_string** %106
  %108 = alloca %nyx_string*
  store %nyx_string* %107, %nyx_string** %108
  %109 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 1
  %110 = load { i64, i8* }*, { i64, i8* }** %109
  %111 = alloca { i64, i8* }*
  store { i64, i8* }* %110, { i64, i8* }** %111
  %112 = load %nyx_string*, %nyx_string** %108
  %113 = getelementptr [9 x i8], [9 x i8]* @.str1, i32 0, i32 0
  %114 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1.c, i8* %113, i64 8)
  %115 = call i1 @nyx_string_equals(%nyx_string* %112, %nyx_string* %114)
  br i1 %115, label %then12, label %else13
then12:
  ret i64 0
else13:
  br label %merge14
merge14:
  %116 = load %nyx_string*, %nyx_string** %108
  %117 = getelementptr [9 x i8], [9 x i8]* @.str2, i32 0, i32 0
  %118 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str2.c, i8* %117, i64 8)
  %119 = call i1 @nyx_string_equals(%nyx_string* %116, %nyx_string* %118)
  br i1 %119, label %then15, label %else16
then15:
  ret i64 0
else16:
  br label %merge17
merge17:
  %120 = load %nyx_string*, %nyx_string** %108
  %121 = getelementptr [7 x i8], [7 x i8]* @.str3, i32 0, i32 0
  %122 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str3.c, i8* %121, i64 6)
  %123 = call i1 @nyx_string_equals(%nyx_string* %120, %nyx_string* %122)
  br i1 %123, label %then18, label %else19
then18:
  ret i64 0
else19:
  br label %merge20
merge20:
  %124 = load %nyx_string*, %nyx_string** %108
  %125 = getelementptr [8 x i8], [8 x i8]* @.str4, i32 0, i32 0
  %126 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str4.c, i8* %125, i64 7)
  %127 = call i1 @nyx_string_equals(%nyx_string* %124, %nyx_string* %126)
  br i1 %127, label %then21, label %else22
then21:
  ret i64 0
else22:
  br label %merge23
merge23:
  %128 = alloca i1
  store i1 false, i1* %128
  %129 = load %nyx_string*, %nyx_string** %108
  %130 = getelementptr [7 x i8], [7 x i8]* @.str5, i32 0, i32 0
  %131 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str5.c, i8* %130, i64 6)
  %132 = call i1 @nyx_string_equals(%nyx_string* %129, %nyx_string* %131)
  br i1 %132, label %sc_and_rhs24, label %sc_and_end25
sc_and_rhs24:
  %133 = load { i64, i8* }*, { i64, i8* }** %111
  %134 = call i64 @nyx_array_length({ i64, i8* }* %133)
  %135 = icmp sge i64 %134, 1
  store i1 %135, i1* %128
  br label %sc_and_end25
sc_and_end25:
  %136 = load i1, i1* %128
  br i1 %136, label %then26, label %else27
then26:
  %137 = load { i64, i8* }*, { i64, i8* }** %111
  %138 = call i64 @nyx_array_get_checked({ i64, i8* }* %137, i64 0, i64 2)
  %139 = inttoptr i64 %138 to %nyx_string*
  %140 = alloca %nyx_string*
  store %nyx_string* %139, %nyx_string** %140
  %141 = load { i64, i8* }*, { i64, i8* }** %acc.ptr
  %142 = load %nyx_string*, %nyx_string** %140
  %143 = call i1 @licm_contains({ i64, i8* }* %141, %nyx_string* %142)
  %144 = xor i1 %143, true
  br i1 %144, label %then29, label %else30
then29:
  %145 = load { i64, i8* }*, { i64, i8* }** %acc.ptr
  %146 = load %nyx_string*, %nyx_string** %140
  %147 = ptrtoint %nyx_string* %146 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %145, i64 %147, i64 2)
  br label %merge31
else30:
  br label %merge31
merge31:
  ret i64 0
else27:
  br label %merge28
merge28:
  %148 = alloca i1
  store i1 false, i1* %148
  %149 = load %nyx_string*, %nyx_string** %108
  %150 = getelementptr [6 x i8], [6 x i8]* @.str6, i32 0, i32 0
  %151 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str6.c, i8* %150, i64 5)
  %152 = call i1 @nyx_string_equals(%nyx_string* %149, %nyx_string* %151)
  br i1 %152, label %sc_and_rhs32, label %sc_and_end33
sc_and_rhs32:
  %153 = load { i64, i8* }*, { i64, i8* }** %111
  %154 = call i64 @nyx_array_length({ i64, i8* }* %153)
  %155 = icmp sge i64 %154, 2
  store i1 %155, i1* %148
  br label %sc_and_end33
sc_and_end33:
  %156 = load i1, i1* %148
  br i1 %156, label %then34, label %else35
then34:
  %157 = load %ASTNode, %ASTNode* %node.ptr
  %158 = call %ASTNode @licm_node_at(%ASTNode %157, i64 0)
  %159 = alloca %ASTNode
  store %ASTNode %158, %ASTNode* %159
  %160 = load %ASTNode, %ASTNode* %159
  %161 = load { i64, i8* }*, { i64, i8* }** %acc.ptr
  %162 = call i64 @licm_collect(%ASTNode %160, { i64, i8* }* %161)
  %163 = load %ASTNode, %ASTNode* %node.ptr
  %164 = call { i64, i8* }* @licm_array_at(%ASTNode %163, i64 1)
  %165 = alloca { i64, i8* }*
  store { i64, i8* }* %164, { i64, i8* }** %165
  %166 = alloca i64
  store i64 0, i64* %166
  %167 = call i8* @llvm.stacksave()
  br label %while_cond37
while_cond37:
  %168 = load i64, i64* %166
  %169 = load { i64, i8* }*, { i64, i8* }** %165
  %170 = call i64 @nyx_array_length({ i64, i8* }* %169)
  %171 = icmp slt i64 %168, %170
  br i1 %171, label %while_body38, label %while_end39
while_body38:
  call void @llvm.stackrestore(i8* %167)
  %172 = load { i64, i8* }*, { i64, i8* }** %165
  %173 = load i64, i64* %166
  %174 = call i64 @nyx_array_get({ i64, i8* }* %172, i64 %173)
  %175 = inttoptr i64 %174 to { i64, i8* }*
  %176 = call i64 @nyx_array_get({ i64, i8* }* %175, i64 0)
  %177 = call i64 @nyx_array_get({ i64, i8* }* %175, i64 1)
  %178 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %175, i64 2)
  %179 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %175, i64 3)
  %180 = inttoptr i64 %176 to %nyx_string*
  %181 = inttoptr i64 %177 to { i64, i8* }*
  %182 = alloca %ASTNode
  %183 = getelementptr inbounds %ASTNode, %ASTNode* %182, i32 0, i32 0
  store %nyx_string* %180, %nyx_string** %183
  %184 = getelementptr inbounds %ASTNode, %ASTNode* %182, i32 0, i32 1
  store { i64, i8* }* %181, { i64, i8* }** %184
  %185 = getelementptr inbounds %ASTNode, %ASTNode* %182, i32 0, i32 2
  store i64 %178, i64* %185
  %186 = getelementptr inbounds %ASTNode, %ASTNode* %182, i32 0, i32 3
  store i64 %179, i64* %186
  %187 = load %ASTNode, %ASTNode* %182
  %188 = alloca %ASTNode
  store %ASTNode %187, %ASTNode* %188
  %189 = getelementptr %ASTNode, %ASTNode* %188, i32 0, i32 1
  %190 = load { i64, i8* }*, { i64, i8* }** %189
  %191 = alloca { i64, i8* }*
  store { i64, i8* }* %190, { i64, i8* }** %191
  %192 = load { i64, i8* }*, { i64, i8* }** %191
  %193 = call i64 @nyx_array_length({ i64, i8* }* %192)
  %194 = icmp sge i64 %193, 2
  br i1 %194, label %then40, label %else41
then40:
  %195 = load %ASTNode, %ASTNode* %188
  %196 = call %ASTNode @licm_node_at(%ASTNode %195, i64 1)
  %197 = alloca %ASTNode
  store %ASTNode %196, %ASTNode* %197
  %198 = load %ASTNode, %ASTNode* %197
  %199 = load { i64, i8* }*, { i64, i8* }** %acc.ptr
  %200 = call i64 @licm_collect(%ASTNode %198, { i64, i8* }* %199)
  br label %merge42
else41:
  br label %merge42
merge42:
  %201 = load { i64, i8* }*, { i64, i8* }** %191
  %202 = call i64 @nyx_array_length({ i64, i8* }* %201)
  %203 = icmp sge i64 %202, 3
  br i1 %203, label %then43, label %else44
then43:
  %204 = load %ASTNode, %ASTNode* %188
  %205 = call %ASTNode @licm_node_at(%ASTNode %204, i64 2)
  %206 = alloca %ASTNode
  store %ASTNode %205, %ASTNode* %206
  %207 = load %ASTNode, %ASTNode* %206
  %208 = load { i64, i8* }*, { i64, i8* }** %acc.ptr
  %209 = call i64 @licm_collect(%ASTNode %207, { i64, i8* }* %208)
  br label %merge45
else44:
  br label %merge45
merge45:
  %210 = load i64, i64* %166
  %211 = add i64 %210, 1
  store i64 %211, i64* %166
  br label %while_cond37
while_end39:
  ret i64 0
else35:
  br label %merge36
merge36:
  %212 = load %nyx_string*, %nyx_string** %108
  %213 = getelementptr [6 x i8], [6 x i8]* @.str7, i32 0, i32 0
  %214 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str7.c, i8* %213, i64 5)
  %215 = call i1 @nyx_string_equals(%nyx_string* %212, %nyx_string* %214)
  br i1 %215, label %then46, label %else47
then46:
  ret i64 0
else47:
  br label %merge48
merge48:
  %216 = load %ASTNode, %ASTNode* %node.ptr
  %217 = call { i64, i8* }* @licm_children(%ASTNode %216)
  %218 = alloca { i64, i8* }*
  store { i64, i8* }* %217, { i64, i8* }** %218
  %219 = alloca i64
  store i64 0, i64* %219
  %220 = call i8* @llvm.stacksave()
  br label %while_cond49
while_cond49:
  %221 = load i64, i64* %219
  %222 = load { i64, i8* }*, { i64, i8* }** %218
  %223 = call i64 @nyx_array_length({ i64, i8* }* %222)
  %224 = icmp slt i64 %221, %223
  br i1 %224, label %while_body50, label %while_end51
while_body50:
  call void @llvm.stackrestore(i8* %220)
  %225 = load { i64, i8* }*, { i64, i8* }** %218
  %226 = load i64, i64* %219
  %227 = call i64 @nyx_array_get({ i64, i8* }* %225, i64 %226)
  %228 = inttoptr i64 %227 to { i64, i8* }*
  %229 = alloca { i64, i8* }*
  store { i64, i8* }* %228, { i64, i8* }** %229
  %230 = load { i64, i8* }*, { i64, i8* }** %229
  %231 = call %ASTNode @licm_root_of({ i64, i8* }* %230)
  %232 = alloca %ASTNode
  store %ASTNode %231, %ASTNode* %232
  %233 = load %ASTNode, %ASTNode* %232
  %234 = load { i64, i8* }*, { i64, i8* }** %acc.ptr
  %235 = call i64 @licm_collect(%ASTNode %233, { i64, i8* }* %234)
  %236 = load i64, i64* %219
  %237 = add i64 %236, 1
  store i64 %237, i64* %219
  br label %while_cond49
while_end51:
  ret i64 0
}

define internal { i64, i8* }* @licm_children(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %238 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 0
  %239 = load %nyx_string*, %nyx_string** %238
  %240 = alloca %nyx_string*
  store %nyx_string* %239, %nyx_string** %240
  %241 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 1
  %242 = load { i64, i8* }*, { i64, i8* }** %241
  %243 = alloca { i64, i8* }*
  store { i64, i8* }* %242, { i64, i8* }** %243
  %244 = load { i64, i8* }*, { i64, i8* }** %243
  %245 = call i64 @nyx_array_length({ i64, i8* }* %244)
  %246 = alloca i64
  store i64 %245, i64* %246
  %247 = call { i64, i8* }* @nyx_array_new_ptr()
  %248 = alloca { i64, i8* }*
  store { i64, i8* }* %247, { i64, i8* }** %248
  %249 = alloca i1
  store i1 false, i1* %249
  %250 = load %nyx_string*, %nyx_string** %240
  %251 = getelementptr [6 x i8], [6 x i8]* @.str8, i32 0, i32 0
  %252 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str8.c, i8* %251, i64 5)
  %253 = call i1 @nyx_string_equals(%nyx_string* %250, %nyx_string* %252)
  br i1 %253, label %sc_and_rhs52, label %sc_and_end53
sc_and_rhs52:
  %254 = load i64, i64* %246
  %255 = icmp sge i64 %254, 3
  store i1 %255, i1* %249
  br label %sc_and_end53
sc_and_end53:
  %256 = load i1, i1* %249
  br i1 %256, label %then54, label %else55
then54:
  %257 = load { i64, i8* }*, { i64, i8* }** %243
  %258 = call i64 @nyx_array_get({ i64, i8* }* %257, i64 1)
  %259 = inttoptr i64 %258 to { i64, i8* }*
  %260 = alloca { i64, i8* }*
  store { i64, i8* }* %259, { i64, i8* }** %260
  %261 = load { i64, i8* }*, { i64, i8* }** %243
  %262 = call i64 @nyx_array_get({ i64, i8* }* %261, i64 2)
  %263 = inttoptr i64 %262 to { i64, i8* }*
  %264 = alloca { i64, i8* }*
  store { i64, i8* }* %263, { i64, i8* }** %264
  %265 = load { i64, i8* }*, { i64, i8* }** %248
  %266 = load { i64, i8* }*, { i64, i8* }** %260
  %267 = ptrtoint { i64, i8* }* %266 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %265, i64 %267, i64 5)
  %268 = load { i64, i8* }*, { i64, i8* }** %248
  %269 = load { i64, i8* }*, { i64, i8* }** %264
  %270 = ptrtoint { i64, i8* }* %269 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %268, i64 %270, i64 5)
  %271 = load { i64, i8* }*, { i64, i8* }** %248
  ret { i64, i8* }* %271
else55:
  br label %merge56
merge56:
  %272 = alloca i1
  store i1 false, i1* %272
  %273 = load %nyx_string*, %nyx_string** %240
  %274 = getelementptr [5 x i8], [5 x i8]* @.str9, i32 0, i32 0
  %275 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str9.c, i8* %274, i64 4)
  %276 = call i1 @nyx_string_equals(%nyx_string* %273, %nyx_string* %275)
  br i1 %276, label %sc_and_rhs57, label %sc_and_end58
sc_and_rhs57:
  %277 = load i64, i64* %246
  %278 = icmp sge i64 %277, 2
  store i1 %278, i1* %272
  br label %sc_and_end58
sc_and_end58:
  %279 = load i1, i1* %272
  br i1 %279, label %then59, label %else60
then59:
  %280 = load { i64, i8* }*, { i64, i8* }** %243
  %281 = call i64 @nyx_array_get({ i64, i8* }* %280, i64 1)
  %282 = inttoptr i64 %281 to { i64, i8* }*
  %283 = alloca { i64, i8* }*
  store { i64, i8* }* %282, { i64, i8* }** %283
  %284 = load { i64, i8* }*, { i64, i8* }** %248
  %285 = load { i64, i8* }*, { i64, i8* }** %283
  %286 = ptrtoint { i64, i8* }* %285 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %284, i64 %286, i64 5)
  %287 = load { i64, i8* }*, { i64, i8* }** %248
  ret { i64, i8* }* %287
else60:
  br label %merge61
merge61:
  %288 = alloca i1
  store i1 false, i1* %288
  %289 = load %nyx_string*, %nyx_string** %240
  %290 = getelementptr [5 x i8], [5 x i8]* @.str10, i32 0, i32 0
  %291 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str10.c, i8* %290, i64 4)
  %292 = call i1 @nyx_string_equals(%nyx_string* %289, %nyx_string* %291)
  br i1 %292, label %sc_and_rhs62, label %sc_and_end63
sc_and_rhs62:
  %293 = load i64, i64* %246
  %294 = icmp sge i64 %293, 2
  store i1 %294, i1* %288
  br label %sc_and_end63
sc_and_end63:
  %295 = load i1, i1* %288
  br i1 %295, label %then64, label %else65
then64:
  %296 = load { i64, i8* }*, { i64, i8* }** %243
  %297 = call i64 @nyx_array_get({ i64, i8* }* %296, i64 0)
  %298 = inttoptr i64 %297 to { i64, i8* }*
  %299 = alloca { i64, i8* }*
  store { i64, i8* }* %298, { i64, i8* }** %299
  %300 = load { i64, i8* }*, { i64, i8* }** %248
  %301 = load { i64, i8* }*, { i64, i8* }** %299
  %302 = ptrtoint { i64, i8* }* %301 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %300, i64 %302, i64 5)
  %303 = load { i64, i8* }*, { i64, i8* }** %243
  %304 = call i64 @nyx_array_get({ i64, i8* }* %303, i64 1)
  %305 = inttoptr i64 %304 to { i64, i8* }*
  %306 = alloca { i64, i8* }*
  store { i64, i8* }* %305, { i64, i8* }** %306
  %307 = alloca i64
  store i64 0, i64* %307
  %308 = call i8* @llvm.stacksave()
  br label %while_cond67
while_cond67:
  %309 = load i64, i64* %307
  %310 = load { i64, i8* }*, { i64, i8* }** %306
  %311 = call i64 @nyx_array_length({ i64, i8* }* %310)
  %312 = icmp slt i64 %309, %311
  br i1 %312, label %while_body68, label %while_end69
while_body68:
  call void @llvm.stackrestore(i8* %308)
  %313 = load { i64, i8* }*, { i64, i8* }** %306
  %314 = load i64, i64* %307
  %315 = call i64 @nyx_array_get({ i64, i8* }* %313, i64 %314)
  %316 = inttoptr i64 %315 to { i64, i8* }*
  %317 = alloca { i64, i8* }*
  store { i64, i8* }* %316, { i64, i8* }** %317
  %318 = load { i64, i8* }*, { i64, i8* }** %248
  %319 = load { i64, i8* }*, { i64, i8* }** %317
  %320 = ptrtoint { i64, i8* }* %319 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %318, i64 %320, i64 5)
  %321 = load i64, i64* %307
  %322 = add i64 %321, 1
  store i64 %322, i64* %307
  br label %while_cond67
while_end69:
  %323 = load { i64, i8* }*, { i64, i8* }** %248
  ret { i64, i8* }* %323
else65:
  br label %merge66
merge66:
  %324 = alloca i1
  store i1 false, i1* %324
  %325 = load %nyx_string*, %nyx_string** %240
  %326 = getelementptr [12 x i8], [12 x i8]* @.str11, i32 0, i32 0
  %327 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str11.c, i8* %326, i64 11)
  %328 = call i1 @nyx_string_equals(%nyx_string* %325, %nyx_string* %327)
  br i1 %328, label %sc_and_rhs70, label %sc_and_end71
sc_and_rhs70:
  %329 = load i64, i64* %246
  %330 = icmp sge i64 %329, 3
  store i1 %330, i1* %324
  br label %sc_and_end71
sc_and_end71:
  %331 = load i1, i1* %324
  br i1 %331, label %then72, label %else73
then72:
  %332 = load { i64, i8* }*, { i64, i8* }** %243
  %333 = call i64 @nyx_array_get({ i64, i8* }* %332, i64 0)
  %334 = inttoptr i64 %333 to { i64, i8* }*
  %335 = alloca { i64, i8* }*
  store { i64, i8* }* %334, { i64, i8* }** %335
  %336 = load { i64, i8* }*, { i64, i8* }** %248
  %337 = load { i64, i8* }*, { i64, i8* }** %335
  %338 = ptrtoint { i64, i8* }* %337 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %336, i64 %338, i64 5)
  %339 = load { i64, i8* }*, { i64, i8* }** %243
  %340 = call i64 @nyx_array_get({ i64, i8* }* %339, i64 2)
  %341 = inttoptr i64 %340 to { i64, i8* }*
  %342 = alloca { i64, i8* }*
  store { i64, i8* }* %341, { i64, i8* }** %342
  %343 = alloca i64
  store i64 0, i64* %343
  %344 = call i8* @llvm.stacksave()
  br label %while_cond75
while_cond75:
  %345 = load i64, i64* %343
  %346 = load { i64, i8* }*, { i64, i8* }** %342
  %347 = call i64 @nyx_array_length({ i64, i8* }* %346)
  %348 = icmp slt i64 %345, %347
  br i1 %348, label %while_body76, label %while_end77
while_body76:
  call void @llvm.stackrestore(i8* %344)
  %349 = load { i64, i8* }*, { i64, i8* }** %342
  %350 = load i64, i64* %343
  %351 = call i64 @nyx_array_get({ i64, i8* }* %349, i64 %350)
  %352 = inttoptr i64 %351 to { i64, i8* }*
  %353 = alloca { i64, i8* }*
  store { i64, i8* }* %352, { i64, i8* }** %353
  %354 = load { i64, i8* }*, { i64, i8* }** %248
  %355 = load { i64, i8* }*, { i64, i8* }** %353
  %356 = ptrtoint { i64, i8* }* %355 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %354, i64 %356, i64 5)
  %357 = load i64, i64* %343
  %358 = add i64 %357, 1
  store i64 %358, i64* %343
  br label %while_cond75
while_end77:
  %359 = load { i64, i8* }*, { i64, i8* }** %248
  ret { i64, i8* }* %359
else73:
  br label %merge74
merge74:
  %360 = alloca i1
  store i1 false, i1* %360
  %361 = load %nyx_string*, %nyx_string** %240
  %362 = getelementptr [6 x i8], [6 x i8]* @.str12, i32 0, i32 0
  %363 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str12.c, i8* %362, i64 5)
  %364 = call i1 @nyx_string_equals(%nyx_string* %361, %nyx_string* %363)
  br i1 %364, label %sc_and_rhs78, label %sc_and_end79
sc_and_rhs78:
  %365 = load i64, i64* %246
  %366 = icmp sge i64 %365, 2
  store i1 %366, i1* %360
  br label %sc_and_end79
sc_and_end79:
  %367 = load i1, i1* %360
  br i1 %367, label %then80, label %else81
then80:
  %368 = load { i64, i8* }*, { i64, i8* }** %243
  %369 = call i64 @nyx_array_get({ i64, i8* }* %368, i64 0)
  %370 = inttoptr i64 %369 to { i64, i8* }*
  %371 = alloca { i64, i8* }*
  store { i64, i8* }* %370, { i64, i8* }** %371
  %372 = load { i64, i8* }*, { i64, i8* }** %243
  %373 = call i64 @nyx_array_get({ i64, i8* }* %372, i64 1)
  %374 = inttoptr i64 %373 to { i64, i8* }*
  %375 = alloca { i64, i8* }*
  store { i64, i8* }* %374, { i64, i8* }** %375
  %376 = load { i64, i8* }*, { i64, i8* }** %248
  %377 = load { i64, i8* }*, { i64, i8* }** %371
  %378 = ptrtoint { i64, i8* }* %377 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %376, i64 %378, i64 5)
  %379 = load { i64, i8* }*, { i64, i8* }** %248
  %380 = load { i64, i8* }*, { i64, i8* }** %375
  %381 = ptrtoint { i64, i8* }* %380 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %379, i64 %381, i64 5)
  %382 = load { i64, i8* }*, { i64, i8* }** %248
  ret { i64, i8* }* %382
else81:
  br label %merge82
merge82:
  %383 = alloca i1
  store i1 false, i1* %383
  %384 = load %nyx_string*, %nyx_string** %240
  %385 = getelementptr [13 x i8], [13 x i8]* @.str13, i32 0, i32 0
  %386 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str13.c, i8* %385, i64 12)
  %387 = call i1 @nyx_string_equals(%nyx_string* %384, %nyx_string* %386)
  br i1 %387, label %sc_and_rhs83, label %sc_and_end84
sc_and_rhs83:
  %388 = load i64, i64* %246
  %389 = icmp sge i64 %388, 1
  store i1 %389, i1* %383
  br label %sc_and_end84
sc_and_end84:
  %390 = load i1, i1* %383
  br i1 %390, label %then85, label %else86
then85:
  %391 = load { i64, i8* }*, { i64, i8* }** %243
  %392 = call i64 @nyx_array_get({ i64, i8* }* %391, i64 0)
  %393 = inttoptr i64 %392 to { i64, i8* }*
  %394 = alloca { i64, i8* }*
  store { i64, i8* }* %393, { i64, i8* }** %394
  %395 = load { i64, i8* }*, { i64, i8* }** %248
  %396 = load { i64, i8* }*, { i64, i8* }** %394
  %397 = ptrtoint { i64, i8* }* %396 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %395, i64 %397, i64 5)
  %398 = load { i64, i8* }*, { i64, i8* }** %248
  ret { i64, i8* }* %398
else86:
  br label %merge87
merge87:
  %399 = alloca i1
  store i1 false, i1* %399
  %400 = load %nyx_string*, %nyx_string** %240
  %401 = getelementptr [6 x i8], [6 x i8]* @.str14, i32 0, i32 0
  %402 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str14.c, i8* %401, i64 5)
  %403 = call i1 @nyx_string_equals(%nyx_string* %400, %nyx_string* %402)
  br i1 %403, label %sc_and_rhs88, label %sc_and_end89
sc_and_rhs88:
  %404 = load i64, i64* %246
  %405 = icmp sge i64 %404, 1
  store i1 %405, i1* %399
  br label %sc_and_end89
sc_and_end89:
  %406 = load i1, i1* %399
  br i1 %406, label %then90, label %else91
then90:
  %407 = load { i64, i8* }*, { i64, i8* }** %243
  %408 = call i64 @nyx_array_get({ i64, i8* }* %407, i64 0)
  %409 = inttoptr i64 %408 to { i64, i8* }*
  %410 = alloca { i64, i8* }*
  store { i64, i8* }* %409, { i64, i8* }** %410
  %411 = alloca i64
  store i64 0, i64* %411
  %412 = call i8* @llvm.stacksave()
  br label %while_cond93
while_cond93:
  %413 = load i64, i64* %411
  %414 = load { i64, i8* }*, { i64, i8* }** %410
  %415 = call i64 @nyx_array_length({ i64, i8* }* %414)
  %416 = icmp slt i64 %413, %415
  br i1 %416, label %while_body94, label %while_end95
while_body94:
  call void @llvm.stackrestore(i8* %412)
  %417 = load { i64, i8* }*, { i64, i8* }** %410
  %418 = load i64, i64* %411
  %419 = call i64 @nyx_array_get({ i64, i8* }* %417, i64 %418)
  %420 = inttoptr i64 %419 to { i64, i8* }*
  %421 = alloca { i64, i8* }*
  store { i64, i8* }* %420, { i64, i8* }** %421
  %422 = load { i64, i8* }*, { i64, i8* }** %248
  %423 = load { i64, i8* }*, { i64, i8* }** %421
  %424 = ptrtoint { i64, i8* }* %423 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %422, i64 %424, i64 5)
  %425 = load i64, i64* %411
  %426 = add i64 %425, 1
  store i64 %426, i64* %411
  br label %while_cond93
while_end95:
  %427 = load { i64, i8* }*, { i64, i8* }** %248
  ret { i64, i8* }* %427
else91:
  br label %merge92
merge92:
  %428 = alloca i1
  store i1 false, i1* %428
  %429 = load %nyx_string*, %nyx_string** %240
  %430 = getelementptr [12 x i8], [12 x i8]* @.str15, i32 0, i32 0
  %431 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str15.c, i8* %430, i64 11)
  %432 = call i1 @nyx_string_equals(%nyx_string* %429, %nyx_string* %431)
  br i1 %432, label %sc_and_rhs96, label %sc_and_end97
sc_and_rhs96:
  %433 = load i64, i64* %246
  %434 = icmp sge i64 %433, 2
  store i1 %434, i1* %428
  br label %sc_and_end97
sc_and_end97:
  %435 = load i1, i1* %428
  br i1 %435, label %then98, label %else99
then98:
  %436 = load { i64, i8* }*, { i64, i8* }** %243
  %437 = call i64 @nyx_array_get({ i64, i8* }* %436, i64 1)
  %438 = inttoptr i64 %437 to { i64, i8* }*
  %439 = alloca { i64, i8* }*
  store { i64, i8* }* %438, { i64, i8* }** %439
  %440 = alloca i64
  store i64 0, i64* %440
  %441 = call i8* @llvm.stacksave()
  br label %while_cond101
while_cond101:
  %442 = load i64, i64* %440
  %443 = load { i64, i8* }*, { i64, i8* }** %439
  %444 = call i64 @nyx_array_length({ i64, i8* }* %443)
  %445 = icmp slt i64 %442, %444
  br i1 %445, label %while_body102, label %while_end103
while_body102:
  call void @llvm.stackrestore(i8* %441)
  %446 = load { i64, i8* }*, { i64, i8* }** %439
  %447 = load i64, i64* %440
  %448 = call i64 @nyx_array_get({ i64, i8* }* %446, i64 %447)
  %449 = inttoptr i64 %448 to { i64, i8* }*
  %450 = alloca { i64, i8* }*
  store { i64, i8* }* %449, { i64, i8* }** %450
  %451 = load { i64, i8* }*, { i64, i8* }** %248
  %452 = load { i64, i8* }*, { i64, i8* }** %450
  %453 = ptrtoint { i64, i8* }* %452 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %451, i64 %453, i64 5)
  %454 = load i64, i64* %440
  %455 = add i64 %454, 1
  store i64 %455, i64* %440
  br label %while_cond101
while_end103:
  %456 = load { i64, i8* }*, { i64, i8* }** %248
  ret { i64, i8* }* %456
else99:
  br label %merge100
merge100:
  %457 = alloca i1
  store i1 false, i1* %457
  %458 = load %nyx_string*, %nyx_string** %240
  %459 = getelementptr [3 x i8], [3 x i8]* @.str16, i32 0, i32 0
  %460 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str16.c, i8* %459, i64 2)
  %461 = call i1 @nyx_string_equals(%nyx_string* %458, %nyx_string* %460)
  br i1 %461, label %sc_and_rhs104, label %sc_and_end105
sc_and_rhs104:
  %462 = load i64, i64* %246
  %463 = icmp sge i64 %462, 3
  store i1 %463, i1* %457
  br label %sc_and_end105
sc_and_end105:
  %464 = load i1, i1* %457
  br i1 %464, label %then106, label %else107
then106:
  %465 = load { i64, i8* }*, { i64, i8* }** %243
  %466 = call i64 @nyx_array_get({ i64, i8* }* %465, i64 0)
  %467 = inttoptr i64 %466 to { i64, i8* }*
  %468 = alloca { i64, i8* }*
  store { i64, i8* }* %467, { i64, i8* }** %468
  %469 = load { i64, i8* }*, { i64, i8* }** %243
  %470 = call i64 @nyx_array_get({ i64, i8* }* %469, i64 1)
  %471 = inttoptr i64 %470 to { i64, i8* }*
  %472 = alloca { i64, i8* }*
  store { i64, i8* }* %471, { i64, i8* }** %472
  %473 = load { i64, i8* }*, { i64, i8* }** %243
  %474 = call i64 @nyx_array_get({ i64, i8* }* %473, i64 2)
  %475 = inttoptr i64 %474 to { i64, i8* }*
  %476 = alloca { i64, i8* }*
  store { i64, i8* }* %475, { i64, i8* }** %476
  %477 = load { i64, i8* }*, { i64, i8* }** %248
  %478 = load { i64, i8* }*, { i64, i8* }** %468
  %479 = ptrtoint { i64, i8* }* %478 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %477, i64 %479, i64 5)
  %480 = load { i64, i8* }*, { i64, i8* }** %248
  %481 = load { i64, i8* }*, { i64, i8* }** %472
  %482 = ptrtoint { i64, i8* }* %481 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %480, i64 %482, i64 5)
  %483 = load { i64, i8* }*, { i64, i8* }** %248
  %484 = load { i64, i8* }*, { i64, i8* }** %476
  %485 = ptrtoint { i64, i8* }* %484 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %483, i64 %485, i64 5)
  %486 = load { i64, i8* }*, { i64, i8* }** %248
  ret { i64, i8* }* %486
else107:
  br label %merge108
merge108:
  %487 = alloca i1
  store i1 false, i1* %487
  %488 = load %nyx_string*, %nyx_string** %240
  %489 = getelementptr [6 x i8], [6 x i8]* @.str17, i32 0, i32 0
  %490 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str17.c, i8* %489, i64 5)
  %491 = call i1 @nyx_string_equals(%nyx_string* %488, %nyx_string* %490)
  br i1 %491, label %sc_and_rhs109, label %sc_and_end110
sc_and_rhs109:
  %492 = load i64, i64* %246
  %493 = icmp sge i64 %492, 2
  store i1 %493, i1* %487
  br label %sc_and_end110
sc_and_end110:
  %494 = load i1, i1* %487
  br i1 %494, label %then111, label %else112
then111:
  %495 = load { i64, i8* }*, { i64, i8* }** %243
  %496 = call i64 @nyx_array_get({ i64, i8* }* %495, i64 0)
  %497 = inttoptr i64 %496 to { i64, i8* }*
  %498 = alloca { i64, i8* }*
  store { i64, i8* }* %497, { i64, i8* }** %498
  %499 = load { i64, i8* }*, { i64, i8* }** %243
  %500 = call i64 @nyx_array_get({ i64, i8* }* %499, i64 1)
  %501 = inttoptr i64 %500 to { i64, i8* }*
  %502 = alloca { i64, i8* }*
  store { i64, i8* }* %501, { i64, i8* }** %502
  %503 = load { i64, i8* }*, { i64, i8* }** %248
  %504 = load { i64, i8* }*, { i64, i8* }** %498
  %505 = ptrtoint { i64, i8* }* %504 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %503, i64 %505, i64 5)
  %506 = load { i64, i8* }*, { i64, i8* }** %248
  %507 = load { i64, i8* }*, { i64, i8* }** %502
  %508 = ptrtoint { i64, i8* }* %507 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %506, i64 %508, i64 5)
  %509 = load { i64, i8* }*, { i64, i8* }** %248
  ret { i64, i8* }* %509
else112:
  br label %merge113
merge113:
  %510 = alloca i1
  store i1 false, i1* %510
  %511 = load %nyx_string*, %nyx_string** %240
  %512 = getelementptr [4 x i8], [4 x i8]* @.str18, i32 0, i32 0
  %513 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str18.c, i8* %512, i64 3)
  %514 = call i1 @nyx_string_equals(%nyx_string* %511, %nyx_string* %513)
  br i1 %514, label %sc_and_rhs114, label %sc_and_end115
sc_and_rhs114:
  %515 = load i64, i64* %246
  %516 = icmp sge i64 %515, 3
  store i1 %516, i1* %510
  br label %sc_and_end115
sc_and_end115:
  %517 = load i1, i1* %510
  br i1 %517, label %then116, label %else117
then116:
  %518 = load { i64, i8* }*, { i64, i8* }** %243
  %519 = call i64 @nyx_array_get({ i64, i8* }* %518, i64 1)
  %520 = inttoptr i64 %519 to { i64, i8* }*
  %521 = alloca { i64, i8* }*
  store { i64, i8* }* %520, { i64, i8* }** %521
  %522 = load { i64, i8* }*, { i64, i8* }** %243
  %523 = call i64 @nyx_array_get({ i64, i8* }* %522, i64 2)
  %524 = inttoptr i64 %523 to { i64, i8* }*
  %525 = alloca { i64, i8* }*
  store { i64, i8* }* %524, { i64, i8* }** %525
  %526 = load { i64, i8* }*, { i64, i8* }** %248
  %527 = load { i64, i8* }*, { i64, i8* }** %521
  %528 = ptrtoint { i64, i8* }* %527 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %526, i64 %528, i64 5)
  %529 = load { i64, i8* }*, { i64, i8* }** %248
  %530 = load { i64, i8* }*, { i64, i8* }** %525
  %531 = ptrtoint { i64, i8* }* %530 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %529, i64 %531, i64 5)
  %532 = load { i64, i8* }*, { i64, i8* }** %248
  ret { i64, i8* }* %532
else117:
  br label %merge118
merge118:
  %533 = alloca i1
  store i1 false, i1* %533
  %534 = load %nyx_string*, %nyx_string** %240
  %535 = getelementptr [10 x i8], [10 x i8]* @.str19, i32 0, i32 0
  %536 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str19.c, i8* %535, i64 9)
  %537 = call i1 @nyx_string_equals(%nyx_string* %534, %nyx_string* %536)
  br i1 %537, label %sc_and_rhs119, label %sc_and_end120
sc_and_rhs119:
  %538 = load i64, i64* %246
  %539 = icmp sge i64 %538, 3
  store i1 %539, i1* %533
  br label %sc_and_end120
sc_and_end120:
  %540 = load i1, i1* %533
  br i1 %540, label %then121, label %else122
then121:
  %541 = load { i64, i8* }*, { i64, i8* }** %243
  %542 = call i64 @nyx_array_get({ i64, i8* }* %541, i64 1)
  %543 = inttoptr i64 %542 to { i64, i8* }*
  %544 = alloca { i64, i8* }*
  store { i64, i8* }* %543, { i64, i8* }** %544
  %545 = load { i64, i8* }*, { i64, i8* }** %243
  %546 = call i64 @nyx_array_get({ i64, i8* }* %545, i64 2)
  %547 = inttoptr i64 %546 to { i64, i8* }*
  %548 = alloca { i64, i8* }*
  store { i64, i8* }* %547, { i64, i8* }** %548
  %549 = load { i64, i8* }*, { i64, i8* }** %248
  %550 = load { i64, i8* }*, { i64, i8* }** %544
  %551 = ptrtoint { i64, i8* }* %550 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %549, i64 %551, i64 5)
  %552 = load { i64, i8* }*, { i64, i8* }** %248
  %553 = load { i64, i8* }*, { i64, i8* }** %548
  %554 = ptrtoint { i64, i8* }* %553 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %552, i64 %554, i64 5)
  %555 = load { i64, i8* }*, { i64, i8* }** %248
  ret { i64, i8* }* %555
else122:
  br label %merge123
merge123:
  %556 = alloca i1
  store i1 false, i1* %556
  %557 = load %nyx_string*, %nyx_string** %240
  %558 = getelementptr [6 x i8], [6 x i8]* @.str20, i32 0, i32 0
  %559 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str20.c, i8* %558, i64 5)
  %560 = call i1 @nyx_string_equals(%nyx_string* %557, %nyx_string* %559)
  br i1 %560, label %sc_and_rhs124, label %sc_and_end125
sc_and_rhs124:
  %561 = load i64, i64* %246
  %562 = icmp sge i64 %561, 1
  store i1 %562, i1* %556
  br label %sc_and_end125
sc_and_end125:
  %563 = load i1, i1* %556
  br i1 %563, label %then126, label %else127
then126:
  %564 = load { i64, i8* }*, { i64, i8* }** %243
  %565 = call i64 @nyx_array_get({ i64, i8* }* %564, i64 0)
  %566 = inttoptr i64 %565 to { i64, i8* }*
  %567 = alloca { i64, i8* }*
  store { i64, i8* }* %566, { i64, i8* }** %567
  %568 = alloca i64
  store i64 0, i64* %568
  %569 = call i8* @llvm.stacksave()
  br label %while_cond129
while_cond129:
  %570 = load i64, i64* %568
  %571 = load { i64, i8* }*, { i64, i8* }** %567
  %572 = call i64 @nyx_array_length({ i64, i8* }* %571)
  %573 = icmp slt i64 %570, %572
  br i1 %573, label %while_body130, label %while_end131
while_body130:
  call void @llvm.stackrestore(i8* %569)
  %574 = load { i64, i8* }*, { i64, i8* }** %567
  %575 = load i64, i64* %568
  %576 = call i64 @nyx_array_get({ i64, i8* }* %574, i64 %575)
  %577 = inttoptr i64 %576 to { i64, i8* }*
  %578 = alloca { i64, i8* }*
  store { i64, i8* }* %577, { i64, i8* }** %578
  %579 = load { i64, i8* }*, { i64, i8* }** %248
  %580 = load { i64, i8* }*, { i64, i8* }** %578
  %581 = ptrtoint { i64, i8* }* %580 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %579, i64 %581, i64 5)
  %582 = load i64, i64* %568
  %583 = add i64 %582, 1
  store i64 %583, i64* %568
  br label %while_cond129
while_end131:
  %584 = load { i64, i8* }*, { i64, i8* }** %248
  ret { i64, i8* }* %584
else127:
  br label %merge128
merge128:
  %585 = alloca i1
  store i1 false, i1* %585
  %586 = load %nyx_string*, %nyx_string** %240
  %587 = getelementptr [4 x i8], [4 x i8]* @.str21, i32 0, i32 0
  %588 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str21.c, i8* %587, i64 3)
  %589 = call i1 @nyx_string_equals(%nyx_string* %586, %nyx_string* %588)
  br i1 %589, label %sc_and_rhs132, label %sc_and_end133
sc_and_rhs132:
  %590 = load i64, i64* %246
  %591 = icmp sge i64 %590, 3
  store i1 %591, i1* %585
  br label %sc_and_end133
sc_and_end133:
  %592 = load i1, i1* %585
  br i1 %592, label %then134, label %else135
then134:
  %593 = load { i64, i8* }*, { i64, i8* }** %243
  %594 = call i64 @nyx_array_get({ i64, i8* }* %593, i64 2)
  %595 = inttoptr i64 %594 to { i64, i8* }*
  %596 = alloca { i64, i8* }*
  store { i64, i8* }* %595, { i64, i8* }** %596
  %597 = load { i64, i8* }*, { i64, i8* }** %248
  %598 = load { i64, i8* }*, { i64, i8* }** %596
  %599 = ptrtoint { i64, i8* }* %598 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %597, i64 %599, i64 5)
  %600 = load { i64, i8* }*, { i64, i8* }** %248
  ret { i64, i8* }* %600
else135:
  br label %merge136
merge136:
  %601 = alloca i1
  store i1 false, i1* %601
  %602 = load %nyx_string*, %nyx_string** %240
  %603 = getelementptr [22 x i8], [22 x i8]* @.str22, i32 0, i32 0
  %604 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str22.c, i8* %603, i64 21)
  %605 = call i1 @nyx_string_equals(%nyx_string* %602, %nyx_string* %604)
  br i1 %605, label %sc_and_rhs137, label %sc_and_end138
sc_and_rhs137:
  %606 = load i64, i64* %246
  %607 = icmp sge i64 %606, 3
  store i1 %607, i1* %601
  br label %sc_and_end138
sc_and_end138:
  %608 = load i1, i1* %601
  br i1 %608, label %then139, label %else140
then139:
  %609 = load { i64, i8* }*, { i64, i8* }** %243
  %610 = call i64 @nyx_array_get({ i64, i8* }* %609, i64 2)
  %611 = inttoptr i64 %610 to { i64, i8* }*
  %612 = alloca { i64, i8* }*
  store { i64, i8* }* %611, { i64, i8* }** %612
  %613 = load { i64, i8* }*, { i64, i8* }** %248
  %614 = load { i64, i8* }*, { i64, i8* }** %612
  %615 = ptrtoint { i64, i8* }* %614 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %613, i64 %615, i64 5)
  %616 = load { i64, i8* }*, { i64, i8* }** %248
  ret { i64, i8* }* %616
else140:
  br label %merge141
merge141:
  %617 = alloca i1
  store i1 false, i1* %617
  %618 = load %nyx_string*, %nyx_string** %240
  %619 = getelementptr [7 x i8], [7 x i8]* @.str23, i32 0, i32 0
  %620 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str23.c, i8* %619, i64 6)
  %621 = call i1 @nyx_string_equals(%nyx_string* %618, %nyx_string* %620)
  br i1 %621, label %sc_and_rhs142, label %sc_and_end143
sc_and_rhs142:
  %622 = load i64, i64* %246
  %623 = icmp sge i64 %622, 2
  store i1 %623, i1* %617
  br label %sc_and_end143
sc_and_end143:
  %624 = load i1, i1* %617
  br i1 %624, label %then144, label %else145
then144:
  %625 = load { i64, i8* }*, { i64, i8* }** %243
  %626 = call i64 @nyx_array_get({ i64, i8* }* %625, i64 1)
  %627 = inttoptr i64 %626 to { i64, i8* }*
  %628 = alloca { i64, i8* }*
  store { i64, i8* }* %627, { i64, i8* }** %628
  %629 = load { i64, i8* }*, { i64, i8* }** %248
  %630 = load { i64, i8* }*, { i64, i8* }** %628
  %631 = ptrtoint { i64, i8* }* %630 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %629, i64 %631, i64 5)
  %632 = load { i64, i8* }*, { i64, i8* }** %248
  ret { i64, i8* }* %632
else145:
  br label %merge146
merge146:
  %633 = alloca i1
  store i1 false, i1* %633
  %634 = load %nyx_string*, %nyx_string** %240
  %635 = getelementptr [13 x i8], [13 x i8]* @.str24, i32 0, i32 0
  %636 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str24.c, i8* %635, i64 12)
  %637 = call i1 @nyx_string_equals(%nyx_string* %634, %nyx_string* %636)
  br i1 %637, label %sc_and_rhs147, label %sc_and_end148
sc_and_rhs147:
  %638 = load i64, i64* %246
  %639 = icmp sge i64 %638, 3
  store i1 %639, i1* %633
  br label %sc_and_end148
sc_and_end148:
  %640 = load i1, i1* %633
  br i1 %640, label %then149, label %else150
then149:
  %641 = load { i64, i8* }*, { i64, i8* }** %243
  %642 = call i64 @nyx_array_get({ i64, i8* }* %641, i64 0)
  %643 = inttoptr i64 %642 to { i64, i8* }*
  %644 = alloca { i64, i8* }*
  store { i64, i8* }* %643, { i64, i8* }** %644
  %645 = load { i64, i8* }*, { i64, i8* }** %243
  %646 = call i64 @nyx_array_get({ i64, i8* }* %645, i64 1)
  %647 = inttoptr i64 %646 to { i64, i8* }*
  %648 = alloca { i64, i8* }*
  store { i64, i8* }* %647, { i64, i8* }** %648
  %649 = load { i64, i8* }*, { i64, i8* }** %243
  %650 = call i64 @nyx_array_get({ i64, i8* }* %649, i64 2)
  %651 = inttoptr i64 %650 to { i64, i8* }*
  %652 = alloca { i64, i8* }*
  store { i64, i8* }* %651, { i64, i8* }** %652
  %653 = load { i64, i8* }*, { i64, i8* }** %248
  %654 = load { i64, i8* }*, { i64, i8* }** %644
  %655 = ptrtoint { i64, i8* }* %654 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %653, i64 %655, i64 5)
  %656 = load { i64, i8* }*, { i64, i8* }** %248
  %657 = load { i64, i8* }*, { i64, i8* }** %648
  %658 = ptrtoint { i64, i8* }* %657 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %656, i64 %658, i64 5)
  %659 = load { i64, i8* }*, { i64, i8* }** %248
  %660 = load { i64, i8* }*, { i64, i8* }** %652
  %661 = ptrtoint { i64, i8* }* %660 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %659, i64 %661, i64 5)
  %662 = load { i64, i8* }*, { i64, i8* }** %248
  ret { i64, i8* }* %662
else150:
  br label %merge151
merge151:
  %663 = alloca i1
  store i1 false, i1* %663
  %664 = load %nyx_string*, %nyx_string** %240
  %665 = getelementptr [13 x i8], [13 x i8]* @.str25, i32 0, i32 0
  %666 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str25.c, i8* %665, i64 12)
  %667 = call i1 @nyx_string_equals(%nyx_string* %664, %nyx_string* %666)
  br i1 %667, label %sc_and_rhs152, label %sc_and_end153
sc_and_rhs152:
  %668 = load i64, i64* %246
  %669 = icmp sge i64 %668, 3
  store i1 %669, i1* %663
  br label %sc_and_end153
sc_and_end153:
  %670 = load i1, i1* %663
  br i1 %670, label %then154, label %else155
then154:
  %671 = load { i64, i8* }*, { i64, i8* }** %243
  %672 = call i64 @nyx_array_get({ i64, i8* }* %671, i64 0)
  %673 = inttoptr i64 %672 to { i64, i8* }*
  %674 = alloca { i64, i8* }*
  store { i64, i8* }* %673, { i64, i8* }** %674
  %675 = load { i64, i8* }*, { i64, i8* }** %243
  %676 = call i64 @nyx_array_get({ i64, i8* }* %675, i64 2)
  %677 = inttoptr i64 %676 to { i64, i8* }*
  %678 = alloca { i64, i8* }*
  store { i64, i8* }* %677, { i64, i8* }** %678
  %679 = load { i64, i8* }*, { i64, i8* }** %248
  %680 = load { i64, i8* }*, { i64, i8* }** %674
  %681 = ptrtoint { i64, i8* }* %680 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %679, i64 %681, i64 5)
  %682 = load { i64, i8* }*, { i64, i8* }** %248
  %683 = load { i64, i8* }*, { i64, i8* }** %678
  %684 = ptrtoint { i64, i8* }* %683 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %682, i64 %684, i64 5)
  %685 = load { i64, i8* }*, { i64, i8* }** %248
  ret { i64, i8* }* %685
else155:
  br label %merge156
merge156:
  %686 = alloca i1
  store i1 false, i1* %686
  %687 = load %nyx_string*, %nyx_string** %240
  %688 = getelementptr [13 x i8], [13 x i8]* @.str26, i32 0, i32 0
  %689 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str26.c, i8* %688, i64 12)
  %690 = call i1 @nyx_string_equals(%nyx_string* %687, %nyx_string* %689)
  br i1 %690, label %sc_and_rhs157, label %sc_and_end158
sc_and_rhs157:
  %691 = load i64, i64* %246
  %692 = icmp sge i64 %691, 2
  store i1 %692, i1* %686
  br label %sc_and_end158
sc_and_end158:
  %693 = load i1, i1* %686
  br i1 %693, label %then159, label %else160
then159:
  %694 = load { i64, i8* }*, { i64, i8* }** %243
  %695 = call i64 @nyx_array_get({ i64, i8* }* %694, i64 0)
  %696 = inttoptr i64 %695 to { i64, i8* }*
  %697 = alloca { i64, i8* }*
  store { i64, i8* }* %696, { i64, i8* }** %697
  %698 = load { i64, i8* }*, { i64, i8* }** %243
  %699 = call i64 @nyx_array_get({ i64, i8* }* %698, i64 1)
  %700 = inttoptr i64 %699 to { i64, i8* }*
  %701 = alloca { i64, i8* }*
  store { i64, i8* }* %700, { i64, i8* }** %701
  %702 = load { i64, i8* }*, { i64, i8* }** %248
  %703 = load { i64, i8* }*, { i64, i8* }** %697
  %704 = ptrtoint { i64, i8* }* %703 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %702, i64 %704, i64 5)
  %705 = load { i64, i8* }*, { i64, i8* }** %248
  %706 = load { i64, i8* }*, { i64, i8* }** %701
  %707 = ptrtoint { i64, i8* }* %706 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %705, i64 %707, i64 5)
  %708 = load { i64, i8* }*, { i64, i8* }** %248
  ret { i64, i8* }* %708
else160:
  br label %merge161
merge161:
  %709 = alloca i1
  store i1 false, i1* %709
  %710 = load %nyx_string*, %nyx_string** %240
  %711 = getelementptr [7 x i8], [7 x i8]* @.str27, i32 0, i32 0
  %712 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str27.c, i8* %711, i64 6)
  %713 = call i1 @nyx_string_equals(%nyx_string* %710, %nyx_string* %712)
  br i1 %713, label %sc_and_rhs162, label %sc_and_end163
sc_and_rhs162:
  %714 = load i64, i64* %246
  %715 = icmp sge i64 %714, 1
  store i1 %715, i1* %709
  br label %sc_and_end163
sc_and_end163:
  %716 = load i1, i1* %709
  br i1 %716, label %then164, label %else165
then164:
  %717 = load { i64, i8* }*, { i64, i8* }** %243
  %718 = call i64 @nyx_array_get({ i64, i8* }* %717, i64 0)
  %719 = inttoptr i64 %718 to { i64, i8* }*
  %720 = alloca { i64, i8* }*
  store { i64, i8* }* %719, { i64, i8* }** %720
  %721 = load { i64, i8* }*, { i64, i8* }** %248
  %722 = load { i64, i8* }*, { i64, i8* }** %720
  %723 = ptrtoint { i64, i8* }* %722 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %721, i64 %723, i64 5)
  %724 = load { i64, i8* }*, { i64, i8* }** %248
  ret { i64, i8* }* %724
else165:
  br label %merge166
merge166:
  %725 = alloca i1
  store i1 false, i1* %725
  %726 = load %nyx_string*, %nyx_string** %240
  %727 = getelementptr [12 x i8], [12 x i8]* @.str28, i32 0, i32 0
  %728 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str28.c, i8* %727, i64 11)
  %729 = call i1 @nyx_string_equals(%nyx_string* %726, %nyx_string* %728)
  br i1 %729, label %sc_and_rhs167, label %sc_and_end168
sc_and_rhs167:
  %730 = load i64, i64* %246
  %731 = icmp sge i64 %730, 2
  store i1 %731, i1* %725
  br label %sc_and_end168
sc_and_end168:
  %732 = load i1, i1* %725
  br i1 %732, label %then169, label %else170
then169:
  %733 = load { i64, i8* }*, { i64, i8* }** %243
  %734 = call i64 @nyx_array_get({ i64, i8* }* %733, i64 1)
  %735 = inttoptr i64 %734 to { i64, i8* }*
  %736 = alloca { i64, i8* }*
  store { i64, i8* }* %735, { i64, i8* }** %736
  %737 = alloca i64
  store i64 0, i64* %737
  %738 = call i8* @llvm.stacksave()
  br label %while_cond172
while_cond172:
  %739 = load i64, i64* %737
  %740 = load { i64, i8* }*, { i64, i8* }** %736
  %741 = call i64 @nyx_array_length({ i64, i8* }* %740)
  %742 = icmp slt i64 %739, %741
  br i1 %742, label %while_body173, label %while_end174
while_body173:
  call void @llvm.stackrestore(i8* %738)
  %743 = load { i64, i8* }*, { i64, i8* }** %736
  %744 = load i64, i64* %737
  %745 = call i64 @nyx_array_get({ i64, i8* }* %743, i64 %744)
  %746 = inttoptr i64 %745 to { i64, i8* }*
  %747 = alloca { i64, i8* }*
  store { i64, i8* }* %746, { i64, i8* }** %747
  %748 = load { i64, i8* }*, { i64, i8* }** %747
  %749 = call i64 @nyx_array_length({ i64, i8* }* %748)
  %750 = icmp sge i64 %749, 2
  br i1 %750, label %then175, label %else176
then175:
  %751 = load { i64, i8* }*, { i64, i8* }** %747
  %752 = call i64 @nyx_array_get({ i64, i8* }* %751, i64 1)
  %753 = inttoptr i64 %752 to { i64, i8* }*
  %754 = alloca { i64, i8* }*
  store { i64, i8* }* %753, { i64, i8* }** %754
  %755 = load { i64, i8* }*, { i64, i8* }** %248
  %756 = load { i64, i8* }*, { i64, i8* }** %754
  %757 = ptrtoint { i64, i8* }* %756 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %755, i64 %757, i64 5)
  br label %merge177
else176:
  br label %merge177
merge177:
  %758 = load i64, i64* %737
  %759 = add i64 %758, 1
  store i64 %759, i64* %737
  br label %while_cond172
while_end174:
  %760 = load { i64, i8* }*, { i64, i8* }** %248
  ret { i64, i8* }* %760
else170:
  br label %merge171
merge171:
  %761 = alloca i1
  store i1 false, i1* %761
  %762 = load %nyx_string*, %nyx_string** %240
  %763 = getelementptr [7 x i8], [7 x i8]* @.str29, i32 0, i32 0
  %764 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str29.c, i8* %763, i64 6)
  %765 = call i1 @nyx_string_equals(%nyx_string* %762, %nyx_string* %764)
  br i1 %765, label %sc_and_rhs178, label %sc_and_end179
sc_and_rhs178:
  %766 = load i64, i64* %246
  %767 = icmp sge i64 %766, 1
  store i1 %767, i1* %761
  br label %sc_and_end179
sc_and_end179:
  %768 = load i1, i1* %761
  br i1 %768, label %then180, label %else181
then180:
  %769 = load { i64, i8* }*, { i64, i8* }** %243
  %770 = call i64 @nyx_array_get({ i64, i8* }* %769, i64 0)
  %771 = inttoptr i64 %770 to { i64, i8* }*
  %772 = alloca { i64, i8* }*
  store { i64, i8* }* %771, { i64, i8* }** %772
  %773 = load { i64, i8* }*, { i64, i8* }** %248
  %774 = load { i64, i8* }*, { i64, i8* }** %772
  %775 = ptrtoint { i64, i8* }* %774 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %773, i64 %775, i64 5)
  %776 = load { i64, i8* }*, { i64, i8* }** %248
  ret { i64, i8* }* %776
else181:
  br label %merge182
merge182:
  %777 = alloca i1
  store i1 false, i1* %777
  %778 = load %nyx_string*, %nyx_string** %240
  %779 = getelementptr [5 x i8], [5 x i8]* @.str30, i32 0, i32 0
  %780 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str30.c, i8* %779, i64 4)
  %781 = call i1 @nyx_string_equals(%nyx_string* %778, %nyx_string* %780)
  br i1 %781, label %sc_and_rhs183, label %sc_and_end184
sc_and_rhs183:
  %782 = load i64, i64* %246
  %783 = icmp sge i64 %782, 1
  store i1 %783, i1* %777
  br label %sc_and_end184
sc_and_end184:
  %784 = load i1, i1* %777
  br i1 %784, label %then185, label %else186
then185:
  %785 = load { i64, i8* }*, { i64, i8* }** %243
  %786 = call i64 @nyx_array_get({ i64, i8* }* %785, i64 0)
  %787 = inttoptr i64 %786 to { i64, i8* }*
  %788 = alloca { i64, i8* }*
  store { i64, i8* }* %787, { i64, i8* }** %788
  %789 = load { i64, i8* }*, { i64, i8* }** %248
  %790 = load { i64, i8* }*, { i64, i8* }** %788
  %791 = ptrtoint { i64, i8* }* %790 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %789, i64 %791, i64 5)
  %792 = load { i64, i8* }*, { i64, i8* }** %248
  ret { i64, i8* }* %792
else186:
  br label %merge187
merge187:
  %793 = alloca i1
  store i1 false, i1* %793
  %794 = load %nyx_string*, %nyx_string** %240
  %795 = getelementptr [6 x i8], [6 x i8]* @.str31, i32 0, i32 0
  %796 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str31.c, i8* %795, i64 5)
  %797 = call i1 @nyx_string_equals(%nyx_string* %794, %nyx_string* %796)
  br i1 %797, label %sc_and_rhs188, label %sc_and_end189
sc_and_rhs188:
  %798 = load i64, i64* %246
  %799 = icmp sge i64 %798, 2
  store i1 %799, i1* %793
  br label %sc_and_end189
sc_and_end189:
  %800 = load i1, i1* %793
  br i1 %800, label %then190, label %else191
then190:
  %801 = load { i64, i8* }*, { i64, i8* }** %243
  %802 = call i64 @nyx_array_get({ i64, i8* }* %801, i64 0)
  %803 = inttoptr i64 %802 to { i64, i8* }*
  %804 = alloca { i64, i8* }*
  store { i64, i8* }* %803, { i64, i8* }** %804
  %805 = load { i64, i8* }*, { i64, i8* }** %243
  %806 = call i64 @nyx_array_get({ i64, i8* }* %805, i64 1)
  %807 = inttoptr i64 %806 to { i64, i8* }*
  %808 = alloca { i64, i8* }*
  store { i64, i8* }* %807, { i64, i8* }** %808
  %809 = load { i64, i8* }*, { i64, i8* }** %248
  %810 = load { i64, i8* }*, { i64, i8* }** %804
  %811 = ptrtoint { i64, i8* }* %810 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %809, i64 %811, i64 5)
  %812 = load { i64, i8* }*, { i64, i8* }** %248
  %813 = load { i64, i8* }*, { i64, i8* }** %808
  %814 = ptrtoint { i64, i8* }* %813 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %812, i64 %814, i64 5)
  %815 = load { i64, i8* }*, { i64, i8* }** %248
  ret { i64, i8* }* %815
else191:
  br label %merge192
merge192:
  %816 = load { i64, i8* }*, { i64, i8* }** %248
  ret { i64, i8* }* %816
}

define internal { i64, i8* }* @licm_rewrite(
{ i64, i8* }* %node.param, { i64, i8* }* %litmap.param, { i64, i8* }* %sust.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %litmap.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %litmap.param, { i64, i8* }** %litmap.ptr
  %sust.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %sust.param, { i64, i8* }** %sust.ptr
  %817 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %818 = call %ASTNode @licm_root_of({ i64, i8* }* %817)
  %819 = alloca %ASTNode
  store %ASTNode %818, %ASTNode* %819
  %820 = getelementptr %ASTNode, %ASTNode* %819, i32 0, i32 0
  %821 = load %nyx_string*, %nyx_string** %820
  %822 = alloca %nyx_string*
  store %nyx_string* %821, %nyx_string** %822
  %823 = getelementptr %ASTNode, %ASTNode* %819, i32 0, i32 1
  %824 = load { i64, i8* }*, { i64, i8* }** %823
  %825 = alloca { i64, i8* }*
  store { i64, i8* }* %824, { i64, i8* }** %825
  %826 = load %nyx_string*, %nyx_string** %822
  %827 = getelementptr [9 x i8], [9 x i8]* @.str32, i32 0, i32 0
  %828 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str32.c, i8* %827, i64 8)
  %829 = call i1 @nyx_string_equals(%nyx_string* %826, %nyx_string* %828)
  br i1 %829, label %then193, label %else194
then193:
  %830 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  ret { i64, i8* }* %830
else194:
  br label %merge195
merge195:
  %831 = load %nyx_string*, %nyx_string** %822
  %832 = getelementptr [9 x i8], [9 x i8]* @.str33, i32 0, i32 0
  %833 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str33.c, i8* %832, i64 8)
  %834 = call i1 @nyx_string_equals(%nyx_string* %831, %nyx_string* %833)
  br i1 %834, label %then196, label %else197
then196:
  %835 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  ret { i64, i8* }* %835
else197:
  br label %merge198
merge198:
  %836 = load %nyx_string*, %nyx_string** %822
  %837 = getelementptr [7 x i8], [7 x i8]* @.str34, i32 0, i32 0
  %838 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str34.c, i8* %837, i64 6)
  %839 = call i1 @nyx_string_equals(%nyx_string* %836, %nyx_string* %838)
  br i1 %839, label %then199, label %else200
then199:
  %840 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  ret { i64, i8* }* %840
else200:
  br label %merge201
merge201:
  %841 = load %nyx_string*, %nyx_string** %822
  %842 = getelementptr [8 x i8], [8 x i8]* @.str35, i32 0, i32 0
  %843 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str35.c, i8* %842, i64 7)
  %844 = call i1 @nyx_string_equals(%nyx_string* %841, %nyx_string* %843)
  br i1 %844, label %then202, label %else203
then202:
  %845 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  ret { i64, i8* }* %845
else203:
  br label %merge204
merge204:
  %846 = load %nyx_string*, %nyx_string** %822
  %847 = getelementptr [6 x i8], [6 x i8]* @.str36, i32 0, i32 0
  %848 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str36.c, i8* %847, i64 5)
  %849 = call i1 @nyx_string_equals(%nyx_string* %846, %nyx_string* %848)
  br i1 %849, label %then205, label %else206
then205:
  %850 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  ret { i64, i8* }* %850
else206:
  br label %merge207
merge207:
  %851 = alloca i1
  store i1 false, i1* %851
  %852 = alloca i1
  store i1 false, i1* %852
  %853 = load { i64, i8* }*, { i64, i8* }** %sust.ptr
  %854 = call i64 @nyx_array_length({ i64, i8* }* %853)
  %855 = icmp eq i64 %854, 3
  br i1 %855, label %sc_and_rhs208, label %sc_and_end209
sc_and_rhs208:
  %856 = load %nyx_string*, %nyx_string** %822
  %857 = getelementptr [11 x i8], [11 x i8]* @.str37, i32 0, i32 0
  %858 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str37.c, i8* %857, i64 10)
  %859 = call i1 @nyx_string_equals(%nyx_string* %856, %nyx_string* %858)
  store i1 %859, i1* %852
  br label %sc_and_end209
sc_and_end209:
  %860 = load i1, i1* %852
  br i1 %860, label %sc_and_rhs210, label %sc_and_end211
sc_and_rhs210:
  %861 = load { i64, i8* }*, { i64, i8* }** %825
  %862 = call i64 @nyx_array_length({ i64, i8* }* %861)
  %863 = icmp sge i64 %862, 1
  store i1 %863, i1* %851
  br label %sc_and_end211
sc_and_end211:
  %864 = load i1, i1* %851
  br i1 %864, label %then212, label %else213
then212:
  %865 = load { i64, i8* }*, { i64, i8* }** %825
  %866 = call i64 @nyx_array_get_checked({ i64, i8* }* %865, i64 0, i64 2)
  %867 = inttoptr i64 %866 to %nyx_string*
  %868 = alloca %nyx_string*
  store %nyx_string* %867, %nyx_string** %868
  %869 = load { i64, i8* }*, { i64, i8* }** %sust.ptr
  %870 = call i64 @nyx_array_get_checked({ i64, i8* }* %869, i64 0, i64 2)
  %871 = inttoptr i64 %870 to %nyx_string*
  %872 = alloca %nyx_string*
  store %nyx_string* %871, %nyx_string** %872
  %873 = load %nyx_string*, %nyx_string** %868
  %874 = load %nyx_string*, %nyx_string** %872
  %875 = call i1 @nyx_string_equals(%nyx_string* %873, %nyx_string* %874)
  br i1 %875, label %then215, label %else216
then215:
  %876 = load { i64, i8* }*, { i64, i8* }** %sust.ptr
  %877 = call i64 @nyx_array_get_checked({ i64, i8* }* %876, i64 1, i64 2)
  %878 = inttoptr i64 %877 to %nyx_string*
  %879 = alloca %nyx_string*
  store %nyx_string* %878, %nyx_string** %879
  %880 = load { i64, i8* }*, { i64, i8* }** %sust.ptr
  %881 = call i64 @nyx_array_get_checked({ i64, i8* }* %880, i64 2, i64 2)
  %882 = inttoptr i64 %881 to %nyx_string*
  %883 = alloca %nyx_string*
  store %nyx_string* %882, %nyx_string** %883
  %884 = getelementptr %ASTNode, %ASTNode* %819, i32 0, i32 2
  %885 = load i64, i64* %884
  %886 = alloca i64
  store i64 %885, i64* %886
  %887 = getelementptr %ASTNode, %ASTNode* %819, i32 0, i32 3
  %888 = load i64, i64* %887
  %889 = alloca i64
  store i64 %888, i64* %889
  %890 = getelementptr [11 x i8], [11 x i8]* @.str38, i32 0, i32 0
  %891 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str38.c, i8* %890, i64 10)
  %892 = call { i64, i8* }* @nyx_array_new_ptr()
  %893 = load %nyx_string*, %nyx_string** %879
  %894 = ptrtoint %nyx_string* %893 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %892, i64 %894, i64 2)
  %895 = load i64, i64* %886
  %896 = load i64, i64* %889
  %897 = call { i64, i8* }* @licm_make_en(%nyx_string* %891, { i64, i8* }* %892, i64 %895, i64 %896)
  %898 = alloca { i64, i8* }*
  store { i64, i8* }* %897, { i64, i8* }** %898
  %899 = getelementptr [11 x i8], [11 x i8]* @.str39, i32 0, i32 0
  %900 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str39.c, i8* %899, i64 10)
  %901 = call { i64, i8* }* @nyx_array_new_ptr()
  %902 = load %nyx_string*, %nyx_string** %883
  %903 = ptrtoint %nyx_string* %902 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %901, i64 %903, i64 2)
  %904 = load i64, i64* %886
  %905 = load i64, i64* %889
  %906 = call { i64, i8* }* @licm_make_en(%nyx_string* %900, { i64, i8* }* %901, i64 %904, i64 %905)
  %907 = alloca { i64, i8* }*
  store { i64, i8* }* %906, { i64, i8* }** %907
  %908 = getelementptr [6 x i8], [6 x i8]* @.str40, i32 0, i32 0
  %909 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str40.c, i8* %908, i64 5)
  %910 = call { i64, i8* }* @nyx_array_new_ptr()
  %911 = load { i64, i8* }*, { i64, i8* }** %898
  %912 = ptrtoint { i64, i8* }* %911 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %910, i64 %912, i64 5)
  %913 = load { i64, i8* }*, { i64, i8* }** %907
  %914 = ptrtoint { i64, i8* }* %913 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %910, i64 %914, i64 5)
  %915 = load i64, i64* %886
  %916 = load i64, i64* %889
  %917 = call { i64, i8* }* @licm_make_en(%nyx_string* %909, { i64, i8* }* %910, i64 %915, i64 %916)
  ret { i64, i8* }* %917
else216:
  br label %merge217
merge217:
  %918 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  ret { i64, i8* }* %918
else213:
  br label %merge214
merge214:
  %919 = alloca i1
  store i1 false, i1* %919
  %920 = load %nyx_string*, %nyx_string** %822
  %921 = getelementptr [7 x i8], [7 x i8]* @.str41, i32 0, i32 0
  %922 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str41.c, i8* %921, i64 6)
  %923 = call i1 @nyx_string_equals(%nyx_string* %920, %nyx_string* %922)
  br i1 %923, label %sc_and_rhs218, label %sc_and_end219
sc_and_rhs218:
  %924 = load { i64, i8* }*, { i64, i8* }** %825
  %925 = call i64 @nyx_array_length({ i64, i8* }* %924)
  %926 = icmp sge i64 %925, 1
  store i1 %926, i1* %919
  br label %sc_and_end219
sc_and_end219:
  %927 = load i1, i1* %919
  br i1 %927, label %then220, label %else221
then220:
  %928 = load { i64, i8* }*, { i64, i8* }** %825
  %929 = call i64 @nyx_array_get_checked({ i64, i8* }* %928, i64 0, i64 2)
  %930 = inttoptr i64 %929 to %nyx_string*
  %931 = alloca %nyx_string*
  store %nyx_string* %930, %nyx_string** %931
  %932 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %933 = load %nyx_string*, %nyx_string** %931
  %934 = call %nyx_string* @licm_lookup({ i64, i8* }* %932, %nyx_string* %933)
  %935 = alloca %nyx_string*
  store %nyx_string* %934, %nyx_string** %935
  %936 = load %nyx_string*, %nyx_string** %935
  %937 = getelementptr [1 x i8], [1 x i8]* @.str42, i32 0, i32 0
  %938 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str42.c, i8* %937, i64 0)
  %939 = call i1 @nyx_string_equals(%nyx_string* %936, %nyx_string* %938)
  %940 = xor i1 %939, true
  br i1 %940, label %then223, label %else224
then223:
  %941 = getelementptr [11 x i8], [11 x i8]* @.str43, i32 0, i32 0
  %942 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str43.c, i8* %941, i64 10)
  %943 = call { i64, i8* }* @nyx_array_new_ptr()
  %944 = load %nyx_string*, %nyx_string** %935
  %945 = ptrtoint %nyx_string* %944 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %943, i64 %945, i64 2)
  %946 = call { i64, i8* }* @licm_make(%nyx_string* %942, { i64, i8* }* %943)
  ret { i64, i8* }* %946
else224:
  br label %merge225
merge225:
  %947 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  ret { i64, i8* }* %947
else221:
  br label %merge222
merge222:
  %948 = alloca i1
  store i1 false, i1* %948
  %949 = load %nyx_string*, %nyx_string** %822
  %950 = getelementptr [6 x i8], [6 x i8]* @.str44, i32 0, i32 0
  %951 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str44.c, i8* %950, i64 5)
  %952 = call i1 @nyx_string_equals(%nyx_string* %949, %nyx_string* %951)
  br i1 %952, label %sc_and_rhs226, label %sc_and_end227
sc_and_rhs226:
  %953 = load { i64, i8* }*, { i64, i8* }** %825
  %954 = call i64 @nyx_array_length({ i64, i8* }* %953)
  %955 = icmp sge i64 %954, 2
  store i1 %955, i1* %948
  br label %sc_and_end227
sc_and_end227:
  %956 = load i1, i1* %948
  br i1 %956, label %then228, label %else229
then228:
  %957 = load { i64, i8* }*, { i64, i8* }** %825
  %958 = call i64 @nyx_array_get({ i64, i8* }* %957, i64 0)
  %959 = inttoptr i64 %958 to { i64, i8* }*
  %960 = alloca { i64, i8* }*
  store { i64, i8* }* %959, { i64, i8* }** %960
  %961 = load { i64, i8* }*, { i64, i8* }** %825
  %962 = call i64 @nyx_array_get({ i64, i8* }* %961, i64 1)
  %963 = inttoptr i64 %962 to { i64, i8* }*
  %964 = alloca { i64, i8* }*
  store { i64, i8* }* %963, { i64, i8* }** %964
  %965 = call { i64, i8* }* @nyx_array_new_ptr()
  %966 = alloca { i64, i8* }*
  store { i64, i8* }* %965, { i64, i8* }** %966
  %967 = alloca i64
  store i64 0, i64* %967
  %968 = getelementptr [10 x i8], [10 x i8]* @.str45, i32 0, i32 0
  %969 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str45.c, i8* %968, i64 9)
  %970 = alloca %nyx_string*
  store %nyx_string* %969, %nyx_string** %970
  %971 = call i8* @llvm.stacksave()
  br label %while_cond231
while_cond231:
  %972 = load i64, i64* %967
  %973 = load { i64, i8* }*, { i64, i8* }** %964
  %974 = call i64 @nyx_array_length({ i64, i8* }* %973)
  %975 = icmp slt i64 %972, %974
  br i1 %975, label %while_body232, label %while_end233
while_body232:
  call void @llvm.stackrestore(i8* %971)
  %976 = load { i64, i8* }*, { i64, i8* }** %964
  %977 = load i64, i64* %967
  %978 = call i64 @nyx_array_get({ i64, i8* }* %976, i64 %977)
  %979 = inttoptr i64 %978 to { i64, i8* }*
  %980 = alloca { i64, i8* }*
  store { i64, i8* }* %979, { i64, i8* }** %980
  %981 = load { i64, i8* }*, { i64, i8* }** %980
  %982 = call %ASTNode @licm_root_of({ i64, i8* }* %981)
  %983 = alloca %ASTNode
  store %ASTNode %982, %ASTNode* %983
  %984 = getelementptr %ASTNode, %ASTNode* %983, i32 0, i32 1
  %985 = load { i64, i8* }*, { i64, i8* }** %984
  %986 = alloca { i64, i8* }*
  store { i64, i8* }* %985, { i64, i8* }** %986
  %987 = load { i64, i8* }*, { i64, i8* }** %986
  %988 = call i64 @nyx_array_length({ i64, i8* }* %987)
  %989 = icmp sge i64 %988, 3
  br i1 %989, label %then234, label %else235
then234:
  %990 = load { i64, i8* }*, { i64, i8* }** %986
  %991 = call i64 @nyx_array_get({ i64, i8* }* %990, i64 0)
  %992 = alloca i64
  store i64 %991, i64* %992
  %993 = load { i64, i8* }*, { i64, i8* }** %986
  %994 = call i64 @nyx_array_get({ i64, i8* }* %993, i64 1)
  %995 = inttoptr i64 %994 to { i64, i8* }*
  %996 = alloca { i64, i8* }*
  store { i64, i8* }* %995, { i64, i8* }** %996
  %997 = load { i64, i8* }*, { i64, i8* }** %986
  %998 = call i64 @nyx_array_get({ i64, i8* }* %997, i64 2)
  %999 = inttoptr i64 %998 to { i64, i8* }*
  %1000 = alloca { i64, i8* }*
  store { i64, i8* }* %999, { i64, i8* }** %1000
  %1001 = load { i64, i8* }*, { i64, i8* }** %996
  %1002 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1003 = load { i64, i8* }*, { i64, i8* }** %sust.ptr
  %1004 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1001, { i64, i8* }* %1002, { i64, i8* }* %1003)
  %1005 = alloca { i64, i8* }*
  store { i64, i8* }* %1004, { i64, i8* }** %1005
  %1006 = load { i64, i8* }*, { i64, i8* }** %1000
  %1007 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1008 = load { i64, i8* }*, { i64, i8* }** %sust.ptr
  %1009 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1006, { i64, i8* }* %1007, { i64, i8* }* %1008)
  %1010 = alloca { i64, i8* }*
  store { i64, i8* }* %1009, { i64, i8* }** %1010
  %1011 = load { i64, i8* }*, { i64, i8* }** %966
  %1012 = load %nyx_string*, %nyx_string** %970
  %1013 = call { i64, i8* }* @nyx_array_new_ptr()
  %1014 = load i64, i64* %992
  call void @nyx_array_push({ i64, i8* }* %1013, i64 %1014)
  %1015 = load { i64, i8* }*, { i64, i8* }** %1005
  %1016 = ptrtoint { i64, i8* }* %1015 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1013, i64 %1016, i64 5)
  %1017 = load { i64, i8* }*, { i64, i8* }** %1010
  %1018 = ptrtoint { i64, i8* }* %1017 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1013, i64 %1018, i64 5)
  %1019 = call { i64, i8* }* @licm_make(%nyx_string* %1012, { i64, i8* }* %1013)
  %1020 = ptrtoint { i64, i8* }* %1019 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1011, i64 %1020, i64 5)
  br label %merge236
else235:
  %1021 = load { i64, i8* }*, { i64, i8* }** %966
  %1022 = load { i64, i8* }*, { i64, i8* }** %980
  %1023 = ptrtoint { i64, i8* }* %1022 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1021, i64 %1023, i64 5)
  br label %merge236
merge236:
  %1024 = load i64, i64* %967
  %1025 = add i64 %1024, 1
  store i64 %1025, i64* %967
  br label %while_cond231
while_end233:
  %1026 = getelementptr [6 x i8], [6 x i8]* @.str46, i32 0, i32 0
  %1027 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str46.c, i8* %1026, i64 5)
  %1028 = call { i64, i8* }* @nyx_array_new_ptr()
  %1029 = load { i64, i8* }*, { i64, i8* }** %960
  %1030 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1031 = load { i64, i8* }*, { i64, i8* }** %sust.ptr
  %1032 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1029, { i64, i8* }* %1030, { i64, i8* }* %1031)
  %1033 = ptrtoint { i64, i8* }* %1032 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1028, i64 %1033, i64 5)
  %1034 = load { i64, i8* }*, { i64, i8* }** %966
  %1035 = ptrtoint { i64, i8* }* %1034 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1028, i64 %1035, i64 5)
  %1036 = call { i64, i8* }* @licm_make(%nyx_string* %1027, { i64, i8* }* %1028)
  ret { i64, i8* }* %1036
else229:
  br label %merge230
merge230:
  %1037 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1038 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1039 = load { i64, i8* }*, { i64, i8* }** %sust.ptr
  %1040 = call { i64, i8* }* @licm_rebuild_children({ i64, i8* }* %1037, { i64, i8* }* %1038, { i64, i8* }* %1039)
  ret { i64, i8* }* %1040
}

define internal { i64, i8* }* @licm_rebuild_children(
{ i64, i8* }* %node.param, { i64, i8* }* %litmap.param, { i64, i8* }* %sust.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %litmap.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %litmap.param, { i64, i8* }** %litmap.ptr
  %sust.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %sust.param, { i64, i8* }** %sust.ptr
  %1041 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %1042 = call %ASTNode @licm_root_of({ i64, i8* }* %1041)
  %1043 = alloca %ASTNode
  store %ASTNode %1042, %ASTNode* %1043
  %1044 = getelementptr %ASTNode, %ASTNode* %1043, i32 0, i32 0
  %1045 = load %nyx_string*, %nyx_string** %1044
  %1046 = alloca %nyx_string*
  store %nyx_string* %1045, %nyx_string** %1046
  %1047 = getelementptr %ASTNode, %ASTNode* %1043, i32 0, i32 1
  %1048 = load { i64, i8* }*, { i64, i8* }** %1047
  %1049 = alloca { i64, i8* }*
  store { i64, i8* }* %1048, { i64, i8* }** %1049
  %1050 = load { i64, i8* }*, { i64, i8* }** %1049
  %1051 = call i64 @nyx_array_length({ i64, i8* }* %1050)
  %1052 = alloca i64
  store i64 %1051, i64* %1052
  %1053 = alloca i1
  store i1 false, i1* %1053
  %1054 = load %nyx_string*, %nyx_string** %1046
  %1055 = getelementptr [6 x i8], [6 x i8]* @.str47, i32 0, i32 0
  %1056 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str47.c, i8* %1055, i64 5)
  %1057 = call i1 @nyx_string_equals(%nyx_string* %1054, %nyx_string* %1056)
  br i1 %1057, label %sc_and_rhs237, label %sc_and_end238
sc_and_rhs237:
  %1058 = load i64, i64* %1052
  %1059 = icmp sge i64 %1058, 3
  store i1 %1059, i1* %1053
  br label %sc_and_end238
sc_and_end238:
  %1060 = load i1, i1* %1053
  br i1 %1060, label %then239, label %else240
then239:
  %1061 = load { i64, i8* }*, { i64, i8* }** %1049
  %1062 = call i64 @nyx_array_get_checked({ i64, i8* }* %1061, i64 0, i64 2)
  %1063 = inttoptr i64 %1062 to %nyx_string*
  %1064 = alloca %nyx_string*
  store %nyx_string* %1063, %nyx_string** %1064
  %1065 = load { i64, i8* }*, { i64, i8* }** %1049
  %1066 = call i64 @nyx_array_get({ i64, i8* }* %1065, i64 1)
  %1067 = inttoptr i64 %1066 to { i64, i8* }*
  %1068 = alloca { i64, i8* }*
  store { i64, i8* }* %1067, { i64, i8* }** %1068
  %1069 = load { i64, i8* }*, { i64, i8* }** %1049
  %1070 = call i64 @nyx_array_get({ i64, i8* }* %1069, i64 2)
  %1071 = inttoptr i64 %1070 to { i64, i8* }*
  %1072 = alloca { i64, i8* }*
  store { i64, i8* }* %1071, { i64, i8* }** %1072
  %1073 = load %nyx_string*, %nyx_string** %1046
  %1074 = call { i64, i8* }* @nyx_array_new_ptr()
  %1075 = load %nyx_string*, %nyx_string** %1064
  %1076 = ptrtoint %nyx_string* %1075 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1074, i64 %1076, i64 2)
  %1077 = load { i64, i8* }*, { i64, i8* }** %1068
  %1078 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1079 = load { i64, i8* }*, { i64, i8* }** %sust.ptr
  %1080 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1077, { i64, i8* }* %1078, { i64, i8* }* %1079)
  %1081 = ptrtoint { i64, i8* }* %1080 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1074, i64 %1081, i64 5)
  %1082 = load { i64, i8* }*, { i64, i8* }** %1072
  %1083 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1084 = load { i64, i8* }*, { i64, i8* }** %sust.ptr
  %1085 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1082, { i64, i8* }* %1083, { i64, i8* }* %1084)
  %1086 = ptrtoint { i64, i8* }* %1085 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1074, i64 %1086, i64 5)
  %1087 = call { i64, i8* }* @licm_make(%nyx_string* %1073, { i64, i8* }* %1074)
  ret { i64, i8* }* %1087
else240:
  br label %merge241
merge241:
  %1088 = alloca i1
  store i1 false, i1* %1088
  %1089 = load %nyx_string*, %nyx_string** %1046
  %1090 = getelementptr [5 x i8], [5 x i8]* @.str48, i32 0, i32 0
  %1091 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str48.c, i8* %1090, i64 4)
  %1092 = call i1 @nyx_string_equals(%nyx_string* %1089, %nyx_string* %1091)
  br i1 %1092, label %sc_and_rhs242, label %sc_and_end243
sc_and_rhs242:
  %1093 = load i64, i64* %1052
  %1094 = icmp sge i64 %1093, 2
  store i1 %1094, i1* %1088
  br label %sc_and_end243
sc_and_end243:
  %1095 = load i1, i1* %1088
  br i1 %1095, label %then244, label %else245
then244:
  %1096 = load { i64, i8* }*, { i64, i8* }** %1049
  %1097 = call i64 @nyx_array_get_checked({ i64, i8* }* %1096, i64 0, i64 2)
  %1098 = inttoptr i64 %1097 to %nyx_string*
  %1099 = alloca %nyx_string*
  store %nyx_string* %1098, %nyx_string** %1099
  %1100 = load { i64, i8* }*, { i64, i8* }** %1049
  %1101 = call i64 @nyx_array_get({ i64, i8* }* %1100, i64 1)
  %1102 = inttoptr i64 %1101 to { i64, i8* }*
  %1103 = alloca { i64, i8* }*
  store { i64, i8* }* %1102, { i64, i8* }** %1103
  %1104 = load %nyx_string*, %nyx_string** %1046
  %1105 = call { i64, i8* }* @nyx_array_new_ptr()
  %1106 = load %nyx_string*, %nyx_string** %1099
  %1107 = ptrtoint %nyx_string* %1106 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1105, i64 %1107, i64 2)
  %1108 = load { i64, i8* }*, { i64, i8* }** %1103
  %1109 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1110 = load { i64, i8* }*, { i64, i8* }** %sust.ptr
  %1111 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1108, { i64, i8* }* %1109, { i64, i8* }* %1110)
  %1112 = ptrtoint { i64, i8* }* %1111 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1105, i64 %1112, i64 5)
  %1113 = call { i64, i8* }* @licm_make(%nyx_string* %1104, { i64, i8* }* %1105)
  ret { i64, i8* }* %1113
else245:
  br label %merge246
merge246:
  %1114 = alloca i1
  store i1 false, i1* %1114
  %1115 = load %nyx_string*, %nyx_string** %1046
  %1116 = getelementptr [5 x i8], [5 x i8]* @.str49, i32 0, i32 0
  %1117 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str49.c, i8* %1116, i64 4)
  %1118 = call i1 @nyx_string_equals(%nyx_string* %1115, %nyx_string* %1117)
  br i1 %1118, label %sc_and_rhs247, label %sc_and_end248
sc_and_rhs247:
  %1119 = load i64, i64* %1052
  %1120 = icmp sge i64 %1119, 2
  store i1 %1120, i1* %1114
  br label %sc_and_end248
sc_and_end248:
  %1121 = load i1, i1* %1114
  br i1 %1121, label %then249, label %else250
then249:
  %1122 = load { i64, i8* }*, { i64, i8* }** %1049
  %1123 = call i64 @nyx_array_get({ i64, i8* }* %1122, i64 0)
  %1124 = inttoptr i64 %1123 to { i64, i8* }*
  %1125 = alloca { i64, i8* }*
  store { i64, i8* }* %1124, { i64, i8* }** %1125
  %1126 = load { i64, i8* }*, { i64, i8* }** %1049
  %1127 = call i64 @nyx_array_get({ i64, i8* }* %1126, i64 1)
  %1128 = inttoptr i64 %1127 to { i64, i8* }*
  %1129 = alloca { i64, i8* }*
  store { i64, i8* }* %1128, { i64, i8* }** %1129
  %1130 = call { i64, i8* }* @nyx_array_new_ptr()
  %1131 = alloca { i64, i8* }*
  store { i64, i8* }* %1130, { i64, i8* }** %1131
  %1132 = alloca i64
  store i64 0, i64* %1132
  %1133 = call i8* @llvm.stacksave()
  br label %while_cond252
while_cond252:
  %1134 = load i64, i64* %1132
  %1135 = load { i64, i8* }*, { i64, i8* }** %1129
  %1136 = call i64 @nyx_array_length({ i64, i8* }* %1135)
  %1137 = icmp slt i64 %1134, %1136
  br i1 %1137, label %while_body253, label %while_end254
while_body253:
  call void @llvm.stackrestore(i8* %1133)
  %1138 = load { i64, i8* }*, { i64, i8* }** %1129
  %1139 = load i64, i64* %1132
  %1140 = call i64 @nyx_array_get({ i64, i8* }* %1138, i64 %1139)
  %1141 = inttoptr i64 %1140 to { i64, i8* }*
  %1142 = alloca { i64, i8* }*
  store { i64, i8* }* %1141, { i64, i8* }** %1142
  %1143 = load { i64, i8* }*, { i64, i8* }** %1131
  %1144 = load { i64, i8* }*, { i64, i8* }** %1142
  %1145 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1146 = load { i64, i8* }*, { i64, i8* }** %sust.ptr
  %1147 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1144, { i64, i8* }* %1145, { i64, i8* }* %1146)
  %1148 = ptrtoint { i64, i8* }* %1147 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1143, i64 %1148, i64 5)
  %1149 = load i64, i64* %1132
  %1150 = add i64 %1149, 1
  store i64 %1150, i64* %1132
  br label %while_cond252
while_end254:
  %1151 = load %nyx_string*, %nyx_string** %1046
  %1152 = call { i64, i8* }* @nyx_array_new_ptr()
  %1153 = load { i64, i8* }*, { i64, i8* }** %1125
  %1154 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1155 = load { i64, i8* }*, { i64, i8* }** %sust.ptr
  %1156 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1153, { i64, i8* }* %1154, { i64, i8* }* %1155)
  %1157 = ptrtoint { i64, i8* }* %1156 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1152, i64 %1157, i64 5)
  %1158 = load { i64, i8* }*, { i64, i8* }** %1131
  %1159 = ptrtoint { i64, i8* }* %1158 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1152, i64 %1159, i64 5)
  %1160 = call { i64, i8* }* @licm_make(%nyx_string* %1151, { i64, i8* }* %1152)
  ret { i64, i8* }* %1160
else250:
  br label %merge251
merge251:
  %1161 = alloca i1
  store i1 false, i1* %1161
  %1162 = load %nyx_string*, %nyx_string** %1046
  %1163 = getelementptr [12 x i8], [12 x i8]* @.str50, i32 0, i32 0
  %1164 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str50.c, i8* %1163, i64 11)
  %1165 = call i1 @nyx_string_equals(%nyx_string* %1162, %nyx_string* %1164)
  br i1 %1165, label %sc_and_rhs255, label %sc_and_end256
sc_and_rhs255:
  %1166 = load i64, i64* %1052
  %1167 = icmp sge i64 %1166, 3
  store i1 %1167, i1* %1161
  br label %sc_and_end256
sc_and_end256:
  %1168 = load i1, i1* %1161
  br i1 %1168, label %then257, label %else258
then257:
  %1169 = load { i64, i8* }*, { i64, i8* }** %1049
  %1170 = call i64 @nyx_array_get({ i64, i8* }* %1169, i64 0)
  %1171 = inttoptr i64 %1170 to { i64, i8* }*
  %1172 = alloca { i64, i8* }*
  store { i64, i8* }* %1171, { i64, i8* }** %1172
  %1173 = load { i64, i8* }*, { i64, i8* }** %1049
  %1174 = call i64 @nyx_array_get_checked({ i64, i8* }* %1173, i64 1, i64 2)
  %1175 = inttoptr i64 %1174 to %nyx_string*
  %1176 = alloca %nyx_string*
  store %nyx_string* %1175, %nyx_string** %1176
  %1177 = load { i64, i8* }*, { i64, i8* }** %1049
  %1178 = call i64 @nyx_array_get({ i64, i8* }* %1177, i64 2)
  %1179 = inttoptr i64 %1178 to { i64, i8* }*
  %1180 = alloca { i64, i8* }*
  store { i64, i8* }* %1179, { i64, i8* }** %1180
  %1181 = call { i64, i8* }* @nyx_array_new_ptr()
  %1182 = alloca { i64, i8* }*
  store { i64, i8* }* %1181, { i64, i8* }** %1182
  %1183 = alloca i64
  store i64 0, i64* %1183
  %1184 = call i8* @llvm.stacksave()
  br label %while_cond260
while_cond260:
  %1185 = load i64, i64* %1183
  %1186 = load { i64, i8* }*, { i64, i8* }** %1180
  %1187 = call i64 @nyx_array_length({ i64, i8* }* %1186)
  %1188 = icmp slt i64 %1185, %1187
  br i1 %1188, label %while_body261, label %while_end262
while_body261:
  call void @llvm.stackrestore(i8* %1184)
  %1189 = load { i64, i8* }*, { i64, i8* }** %1180
  %1190 = load i64, i64* %1183
  %1191 = call i64 @nyx_array_get({ i64, i8* }* %1189, i64 %1190)
  %1192 = inttoptr i64 %1191 to { i64, i8* }*
  %1193 = alloca { i64, i8* }*
  store { i64, i8* }* %1192, { i64, i8* }** %1193
  %1194 = load { i64, i8* }*, { i64, i8* }** %1182
  %1195 = load { i64, i8* }*, { i64, i8* }** %1193
  %1196 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1197 = load { i64, i8* }*, { i64, i8* }** %sust.ptr
  %1198 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1195, { i64, i8* }* %1196, { i64, i8* }* %1197)
  %1199 = ptrtoint { i64, i8* }* %1198 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1194, i64 %1199, i64 5)
  %1200 = load i64, i64* %1183
  %1201 = add i64 %1200, 1
  store i64 %1201, i64* %1183
  br label %while_cond260
while_end262:
  %1202 = load %nyx_string*, %nyx_string** %1046
  %1203 = call { i64, i8* }* @nyx_array_new_ptr()
  %1204 = load { i64, i8* }*, { i64, i8* }** %1172
  %1205 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1206 = load { i64, i8* }*, { i64, i8* }** %sust.ptr
  %1207 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1204, { i64, i8* }* %1205, { i64, i8* }* %1206)
  %1208 = ptrtoint { i64, i8* }* %1207 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1203, i64 %1208, i64 5)
  %1209 = load %nyx_string*, %nyx_string** %1176
  %1210 = ptrtoint %nyx_string* %1209 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1203, i64 %1210, i64 2)
  %1211 = load { i64, i8* }*, { i64, i8* }** %1182
  %1212 = ptrtoint { i64, i8* }* %1211 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1203, i64 %1212, i64 5)
  %1213 = call { i64, i8* }* @licm_make(%nyx_string* %1202, { i64, i8* }* %1203)
  ret { i64, i8* }* %1213
else258:
  br label %merge259
merge259:
  %1214 = alloca i1
  store i1 false, i1* %1214
  %1215 = load %nyx_string*, %nyx_string** %1046
  %1216 = getelementptr [6 x i8], [6 x i8]* @.str51, i32 0, i32 0
  %1217 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str51.c, i8* %1216, i64 5)
  %1218 = call i1 @nyx_string_equals(%nyx_string* %1215, %nyx_string* %1217)
  br i1 %1218, label %sc_and_rhs263, label %sc_and_end264
sc_and_rhs263:
  %1219 = load i64, i64* %1052
  %1220 = icmp sge i64 %1219, 2
  store i1 %1220, i1* %1214
  br label %sc_and_end264
sc_and_end264:
  %1221 = load i1, i1* %1214
  br i1 %1221, label %then265, label %else266
then265:
  %1222 = load { i64, i8* }*, { i64, i8* }** %1049
  %1223 = call i64 @nyx_array_get({ i64, i8* }* %1222, i64 0)
  %1224 = inttoptr i64 %1223 to { i64, i8* }*
  %1225 = alloca { i64, i8* }*
  store { i64, i8* }* %1224, { i64, i8* }** %1225
  %1226 = load { i64, i8* }*, { i64, i8* }** %1049
  %1227 = call i64 @nyx_array_get({ i64, i8* }* %1226, i64 1)
  %1228 = inttoptr i64 %1227 to { i64, i8* }*
  %1229 = alloca { i64, i8* }*
  store { i64, i8* }* %1228, { i64, i8* }** %1229
  %1230 = load %nyx_string*, %nyx_string** %1046
  %1231 = call { i64, i8* }* @nyx_array_new_ptr()
  %1232 = load { i64, i8* }*, { i64, i8* }** %1225
  %1233 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1234 = load { i64, i8* }*, { i64, i8* }** %sust.ptr
  %1235 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1232, { i64, i8* }* %1233, { i64, i8* }* %1234)
  %1236 = ptrtoint { i64, i8* }* %1235 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1231, i64 %1236, i64 5)
  %1237 = load { i64, i8* }*, { i64, i8* }** %1229
  %1238 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1239 = load { i64, i8* }*, { i64, i8* }** %sust.ptr
  %1240 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1237, { i64, i8* }* %1238, { i64, i8* }* %1239)
  %1241 = ptrtoint { i64, i8* }* %1240 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1231, i64 %1241, i64 5)
  %1242 = call { i64, i8* }* @licm_make(%nyx_string* %1230, { i64, i8* }* %1231)
  ret { i64, i8* }* %1242
else266:
  br label %merge267
merge267:
  %1243 = alloca i1
  store i1 false, i1* %1243
  %1244 = load %nyx_string*, %nyx_string** %1046
  %1245 = getelementptr [13 x i8], [13 x i8]* @.str52, i32 0, i32 0
  %1246 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str52.c, i8* %1245, i64 12)
  %1247 = call i1 @nyx_string_equals(%nyx_string* %1244, %nyx_string* %1246)
  br i1 %1247, label %sc_and_rhs268, label %sc_and_end269
sc_and_rhs268:
  %1248 = load i64, i64* %1052
  %1249 = icmp sge i64 %1248, 2
  store i1 %1249, i1* %1243
  br label %sc_and_end269
sc_and_end269:
  %1250 = load i1, i1* %1243
  br i1 %1250, label %then270, label %else271
then270:
  %1251 = load { i64, i8* }*, { i64, i8* }** %1049
  %1252 = call i64 @nyx_array_get({ i64, i8* }* %1251, i64 0)
  %1253 = inttoptr i64 %1252 to { i64, i8* }*
  %1254 = alloca { i64, i8* }*
  store { i64, i8* }* %1253, { i64, i8* }** %1254
  %1255 = load { i64, i8* }*, { i64, i8* }** %1049
  %1256 = call i64 @nyx_array_get_checked({ i64, i8* }* %1255, i64 1, i64 2)
  %1257 = inttoptr i64 %1256 to %nyx_string*
  %1258 = alloca %nyx_string*
  store %nyx_string* %1257, %nyx_string** %1258
  %1259 = load %nyx_string*, %nyx_string** %1046
  %1260 = call { i64, i8* }* @nyx_array_new_ptr()
  %1261 = load { i64, i8* }*, { i64, i8* }** %1254
  %1262 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1263 = load { i64, i8* }*, { i64, i8* }** %sust.ptr
  %1264 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1261, { i64, i8* }* %1262, { i64, i8* }* %1263)
  %1265 = ptrtoint { i64, i8* }* %1264 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1260, i64 %1265, i64 5)
  %1266 = load %nyx_string*, %nyx_string** %1258
  %1267 = ptrtoint %nyx_string* %1266 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1260, i64 %1267, i64 2)
  %1268 = call { i64, i8* }* @licm_make(%nyx_string* %1259, { i64, i8* }* %1260)
  ret { i64, i8* }* %1268
else271:
  br label %merge272
merge272:
  %1269 = alloca i1
  store i1 false, i1* %1269
  %1270 = load %nyx_string*, %nyx_string** %1046
  %1271 = getelementptr [6 x i8], [6 x i8]* @.str53, i32 0, i32 0
  %1272 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str53.c, i8* %1271, i64 5)
  %1273 = call i1 @nyx_string_equals(%nyx_string* %1270, %nyx_string* %1272)
  br i1 %1273, label %sc_and_rhs273, label %sc_and_end274
sc_and_rhs273:
  %1274 = load i64, i64* %1052
  %1275 = icmp sge i64 %1274, 1
  store i1 %1275, i1* %1269
  br label %sc_and_end274
sc_and_end274:
  %1276 = load i1, i1* %1269
  br i1 %1276, label %then275, label %else276
then275:
  %1277 = load { i64, i8* }*, { i64, i8* }** %1049
  %1278 = call i64 @nyx_array_get({ i64, i8* }* %1277, i64 0)
  %1279 = inttoptr i64 %1278 to { i64, i8* }*
  %1280 = alloca { i64, i8* }*
  store { i64, i8* }* %1279, { i64, i8* }** %1280
  %1281 = call { i64, i8* }* @nyx_array_new_ptr()
  %1282 = alloca { i64, i8* }*
  store { i64, i8* }* %1281, { i64, i8* }** %1282
  %1283 = alloca i64
  store i64 0, i64* %1283
  %1284 = call i8* @llvm.stacksave()
  br label %while_cond278
while_cond278:
  %1285 = load i64, i64* %1283
  %1286 = load { i64, i8* }*, { i64, i8* }** %1280
  %1287 = call i64 @nyx_array_length({ i64, i8* }* %1286)
  %1288 = icmp slt i64 %1285, %1287
  br i1 %1288, label %while_body279, label %while_end280
while_body279:
  call void @llvm.stackrestore(i8* %1284)
  %1289 = load { i64, i8* }*, { i64, i8* }** %1280
  %1290 = load i64, i64* %1283
  %1291 = call i64 @nyx_array_get({ i64, i8* }* %1289, i64 %1290)
  %1292 = inttoptr i64 %1291 to { i64, i8* }*
  %1293 = alloca { i64, i8* }*
  store { i64, i8* }* %1292, { i64, i8* }** %1293
  %1294 = load { i64, i8* }*, { i64, i8* }** %1282
  %1295 = load { i64, i8* }*, { i64, i8* }** %1293
  %1296 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1297 = load { i64, i8* }*, { i64, i8* }** %sust.ptr
  %1298 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1295, { i64, i8* }* %1296, { i64, i8* }* %1297)
  %1299 = ptrtoint { i64, i8* }* %1298 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1294, i64 %1299, i64 5)
  %1300 = load i64, i64* %1283
  %1301 = add i64 %1300, 1
  store i64 %1301, i64* %1283
  br label %while_cond278
while_end280:
  %1302 = load %nyx_string*, %nyx_string** %1046
  %1303 = call { i64, i8* }* @nyx_array_new_ptr()
  %1304 = load { i64, i8* }*, { i64, i8* }** %1282
  %1305 = ptrtoint { i64, i8* }* %1304 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1303, i64 %1305, i64 5)
  %1306 = call { i64, i8* }* @licm_make(%nyx_string* %1302, { i64, i8* }* %1303)
  ret { i64, i8* }* %1306
else276:
  br label %merge277
merge277:
  %1307 = alloca i1
  store i1 false, i1* %1307
  %1308 = load %nyx_string*, %nyx_string** %1046
  %1309 = getelementptr [12 x i8], [12 x i8]* @.str54, i32 0, i32 0
  %1310 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str54.c, i8* %1309, i64 11)
  %1311 = call i1 @nyx_string_equals(%nyx_string* %1308, %nyx_string* %1310)
  br i1 %1311, label %sc_and_rhs281, label %sc_and_end282
sc_and_rhs281:
  %1312 = load i64, i64* %1052
  %1313 = icmp sge i64 %1312, 2
  store i1 %1313, i1* %1307
  br label %sc_and_end282
sc_and_end282:
  %1314 = load i1, i1* %1307
  br i1 %1314, label %then283, label %else284
then283:
  %1315 = load { i64, i8* }*, { i64, i8* }** %1049
  %1316 = call i64 @nyx_array_get({ i64, i8* }* %1315, i64 0)
  %1317 = inttoptr i64 %1316 to { i64, i8* }*
  %1318 = alloca { i64, i8* }*
  store { i64, i8* }* %1317, { i64, i8* }** %1318
  %1319 = load { i64, i8* }*, { i64, i8* }** %1049
  %1320 = call i64 @nyx_array_get({ i64, i8* }* %1319, i64 1)
  %1321 = inttoptr i64 %1320 to { i64, i8* }*
  %1322 = alloca { i64, i8* }*
  store { i64, i8* }* %1321, { i64, i8* }** %1322
  %1323 = call { i64, i8* }* @nyx_array_new_ptr()
  %1324 = alloca { i64, i8* }*
  store { i64, i8* }* %1323, { i64, i8* }** %1324
  %1325 = alloca i64
  store i64 0, i64* %1325
  %1326 = call i8* @llvm.stacksave()
  br label %while_cond286
while_cond286:
  %1327 = load i64, i64* %1325
  %1328 = load { i64, i8* }*, { i64, i8* }** %1322
  %1329 = call i64 @nyx_array_length({ i64, i8* }* %1328)
  %1330 = icmp slt i64 %1327, %1329
  br i1 %1330, label %while_body287, label %while_end288
while_body287:
  call void @llvm.stackrestore(i8* %1326)
  %1331 = load { i64, i8* }*, { i64, i8* }** %1322
  %1332 = load i64, i64* %1325
  %1333 = call i64 @nyx_array_get({ i64, i8* }* %1331, i64 %1332)
  %1334 = inttoptr i64 %1333 to { i64, i8* }*
  %1335 = alloca { i64, i8* }*
  store { i64, i8* }* %1334, { i64, i8* }** %1335
  %1336 = load { i64, i8* }*, { i64, i8* }** %1324
  %1337 = load { i64, i8* }*, { i64, i8* }** %1335
  %1338 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1339 = load { i64, i8* }*, { i64, i8* }** %sust.ptr
  %1340 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1337, { i64, i8* }* %1338, { i64, i8* }* %1339)
  %1341 = ptrtoint { i64, i8* }* %1340 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1336, i64 %1341, i64 5)
  %1342 = load i64, i64* %1325
  %1343 = add i64 %1342, 1
  store i64 %1343, i64* %1325
  br label %while_cond286
while_end288:
  %1344 = load %nyx_string*, %nyx_string** %1046
  %1345 = call { i64, i8* }* @nyx_array_new_ptr()
  %1346 = load { i64, i8* }*, { i64, i8* }** %1318
  %1347 = ptrtoint { i64, i8* }* %1346 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1345, i64 %1347, i64 5)
  %1348 = load { i64, i8* }*, { i64, i8* }** %1324
  %1349 = ptrtoint { i64, i8* }* %1348 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1345, i64 %1349, i64 5)
  %1350 = call { i64, i8* }* @licm_make(%nyx_string* %1344, { i64, i8* }* %1345)
  ret { i64, i8* }* %1350
else284:
  br label %merge285
merge285:
  %1351 = alloca i1
  store i1 false, i1* %1351
  %1352 = load %nyx_string*, %nyx_string** %1046
  %1353 = getelementptr [3 x i8], [3 x i8]* @.str55, i32 0, i32 0
  %1354 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str55.c, i8* %1353, i64 2)
  %1355 = call i1 @nyx_string_equals(%nyx_string* %1352, %nyx_string* %1354)
  br i1 %1355, label %sc_and_rhs289, label %sc_and_end290
sc_and_rhs289:
  %1356 = load i64, i64* %1052
  %1357 = icmp sge i64 %1356, 3
  store i1 %1357, i1* %1351
  br label %sc_and_end290
sc_and_end290:
  %1358 = load i1, i1* %1351
  br i1 %1358, label %then291, label %else292
then291:
  %1359 = load { i64, i8* }*, { i64, i8* }** %1049
  %1360 = call i64 @nyx_array_get({ i64, i8* }* %1359, i64 0)
  %1361 = inttoptr i64 %1360 to { i64, i8* }*
  %1362 = alloca { i64, i8* }*
  store { i64, i8* }* %1361, { i64, i8* }** %1362
  %1363 = load { i64, i8* }*, { i64, i8* }** %1049
  %1364 = call i64 @nyx_array_get({ i64, i8* }* %1363, i64 1)
  %1365 = inttoptr i64 %1364 to { i64, i8* }*
  %1366 = alloca { i64, i8* }*
  store { i64, i8* }* %1365, { i64, i8* }** %1366
  %1367 = load { i64, i8* }*, { i64, i8* }** %1049
  %1368 = call i64 @nyx_array_get({ i64, i8* }* %1367, i64 2)
  %1369 = inttoptr i64 %1368 to { i64, i8* }*
  %1370 = alloca { i64, i8* }*
  store { i64, i8* }* %1369, { i64, i8* }** %1370
  %1371 = load %nyx_string*, %nyx_string** %1046
  %1372 = call { i64, i8* }* @nyx_array_new_ptr()
  %1373 = load { i64, i8* }*, { i64, i8* }** %1362
  %1374 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1375 = load { i64, i8* }*, { i64, i8* }** %sust.ptr
  %1376 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1373, { i64, i8* }* %1374, { i64, i8* }* %1375)
  %1377 = ptrtoint { i64, i8* }* %1376 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1372, i64 %1377, i64 5)
  %1378 = load { i64, i8* }*, { i64, i8* }** %1366
  %1379 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1380 = load { i64, i8* }*, { i64, i8* }** %sust.ptr
  %1381 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1378, { i64, i8* }* %1379, { i64, i8* }* %1380)
  %1382 = ptrtoint { i64, i8* }* %1381 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1372, i64 %1382, i64 5)
  %1383 = load { i64, i8* }*, { i64, i8* }** %1370
  %1384 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1385 = load { i64, i8* }*, { i64, i8* }** %sust.ptr
  %1386 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1383, { i64, i8* }* %1384, { i64, i8* }* %1385)
  %1387 = ptrtoint { i64, i8* }* %1386 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1372, i64 %1387, i64 5)
  %1388 = call { i64, i8* }* @licm_make(%nyx_string* %1371, { i64, i8* }* %1372)
  ret { i64, i8* }* %1388
else292:
  br label %merge293
merge293:
  %1389 = alloca i1
  store i1 false, i1* %1389
  %1390 = load %nyx_string*, %nyx_string** %1046
  %1391 = getelementptr [6 x i8], [6 x i8]* @.str56, i32 0, i32 0
  %1392 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str56.c, i8* %1391, i64 5)
  %1393 = call i1 @nyx_string_equals(%nyx_string* %1390, %nyx_string* %1392)
  br i1 %1393, label %sc_and_rhs294, label %sc_and_end295
sc_and_rhs294:
  %1394 = load i64, i64* %1052
  %1395 = icmp sge i64 %1394, 2
  store i1 %1395, i1* %1389
  br label %sc_and_end295
sc_and_end295:
  %1396 = load i1, i1* %1389
  br i1 %1396, label %then296, label %else297
then296:
  %1397 = load { i64, i8* }*, { i64, i8* }** %1049
  %1398 = call i64 @nyx_array_get({ i64, i8* }* %1397, i64 0)
  %1399 = inttoptr i64 %1398 to { i64, i8* }*
  %1400 = alloca { i64, i8* }*
  store { i64, i8* }* %1399, { i64, i8* }** %1400
  %1401 = load { i64, i8* }*, { i64, i8* }** %1049
  %1402 = call i64 @nyx_array_get({ i64, i8* }* %1401, i64 1)
  %1403 = inttoptr i64 %1402 to { i64, i8* }*
  %1404 = alloca { i64, i8* }*
  store { i64, i8* }* %1403, { i64, i8* }** %1404
  %1405 = load %nyx_string*, %nyx_string** %1046
  %1406 = call { i64, i8* }* @nyx_array_new_ptr()
  %1407 = load { i64, i8* }*, { i64, i8* }** %1400
  %1408 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1409 = load { i64, i8* }*, { i64, i8* }** %sust.ptr
  %1410 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1407, { i64, i8* }* %1408, { i64, i8* }* %1409)
  %1411 = ptrtoint { i64, i8* }* %1410 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1406, i64 %1411, i64 5)
  %1412 = load { i64, i8* }*, { i64, i8* }** %1404
  %1413 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1414 = load { i64, i8* }*, { i64, i8* }** %sust.ptr
  %1415 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1412, { i64, i8* }* %1413, { i64, i8* }* %1414)
  %1416 = ptrtoint { i64, i8* }* %1415 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1406, i64 %1416, i64 5)
  %1417 = call { i64, i8* }* @licm_make(%nyx_string* %1405, { i64, i8* }* %1406)
  ret { i64, i8* }* %1417
else297:
  br label %merge298
merge298:
  %1418 = alloca i1
  store i1 false, i1* %1418
  %1419 = load %nyx_string*, %nyx_string** %1046
  %1420 = getelementptr [4 x i8], [4 x i8]* @.str57, i32 0, i32 0
  %1421 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str57.c, i8* %1420, i64 3)
  %1422 = call i1 @nyx_string_equals(%nyx_string* %1419, %nyx_string* %1421)
  br i1 %1422, label %sc_and_rhs299, label %sc_and_end300
sc_and_rhs299:
  %1423 = load i64, i64* %1052
  %1424 = icmp sge i64 %1423, 4
  store i1 %1424, i1* %1418
  br label %sc_and_end300
sc_and_end300:
  %1425 = load i1, i1* %1418
  br i1 %1425, label %then301, label %else302
then301:
  %1426 = load { i64, i8* }*, { i64, i8* }** %1049
  %1427 = call i64 @nyx_array_get_checked({ i64, i8* }* %1426, i64 0, i64 2)
  %1428 = inttoptr i64 %1427 to %nyx_string*
  %1429 = alloca %nyx_string*
  store %nyx_string* %1428, %nyx_string** %1429
  %1430 = load { i64, i8* }*, { i64, i8* }** %1049
  %1431 = call i64 @nyx_array_get({ i64, i8* }* %1430, i64 1)
  %1432 = inttoptr i64 %1431 to { i64, i8* }*
  %1433 = alloca { i64, i8* }*
  store { i64, i8* }* %1432, { i64, i8* }** %1433
  %1434 = load { i64, i8* }*, { i64, i8* }** %1049
  %1435 = call i64 @nyx_array_get({ i64, i8* }* %1434, i64 2)
  %1436 = inttoptr i64 %1435 to { i64, i8* }*
  %1437 = alloca { i64, i8* }*
  store { i64, i8* }* %1436, { i64, i8* }** %1437
  %1438 = load { i64, i8* }*, { i64, i8* }** %1049
  %1439 = call i64 @nyx_array_get({ i64, i8* }* %1438, i64 3)
  %1440 = alloca i64
  store i64 %1439, i64* %1440
  %1441 = load %nyx_string*, %nyx_string** %1046
  %1442 = call { i64, i8* }* @nyx_array_new_ptr()
  %1443 = load %nyx_string*, %nyx_string** %1429
  %1444 = ptrtoint %nyx_string* %1443 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1442, i64 %1444, i64 2)
  %1445 = load { i64, i8* }*, { i64, i8* }** %1433
  %1446 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1447 = load { i64, i8* }*, { i64, i8* }** %sust.ptr
  %1448 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1445, { i64, i8* }* %1446, { i64, i8* }* %1447)
  %1449 = ptrtoint { i64, i8* }* %1448 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1442, i64 %1449, i64 5)
  %1450 = load { i64, i8* }*, { i64, i8* }** %1437
  %1451 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1452 = load { i64, i8* }*, { i64, i8* }** %sust.ptr
  %1453 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1450, { i64, i8* }* %1451, { i64, i8* }* %1452)
  %1454 = ptrtoint { i64, i8* }* %1453 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1442, i64 %1454, i64 5)
  %1455 = load i64, i64* %1440
  call void @nyx_array_push({ i64, i8* }* %1442, i64 %1455)
  %1456 = call { i64, i8* }* @licm_make(%nyx_string* %1441, { i64, i8* }* %1442)
  ret { i64, i8* }* %1456
else302:
  br label %merge303
merge303:
  %1457 = alloca i1
  store i1 false, i1* %1457
  %1458 = load %nyx_string*, %nyx_string** %1046
  %1459 = getelementptr [10 x i8], [10 x i8]* @.str58, i32 0, i32 0
  %1460 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str58.c, i8* %1459, i64 9)
  %1461 = call i1 @nyx_string_equals(%nyx_string* %1458, %nyx_string* %1460)
  br i1 %1461, label %sc_and_rhs304, label %sc_and_end305
sc_and_rhs304:
  %1462 = load i64, i64* %1052
  %1463 = icmp sge i64 %1462, 3
  store i1 %1463, i1* %1457
  br label %sc_and_end305
sc_and_end305:
  %1464 = load i1, i1* %1457
  br i1 %1464, label %then306, label %else307
then306:
  %1465 = load { i64, i8* }*, { i64, i8* }** %1049
  %1466 = call i64 @nyx_array_get({ i64, i8* }* %1465, i64 0)
  %1467 = alloca i64
  store i64 %1466, i64* %1467
  %1468 = load { i64, i8* }*, { i64, i8* }** %1049
  %1469 = call i64 @nyx_array_get({ i64, i8* }* %1468, i64 1)
  %1470 = inttoptr i64 %1469 to { i64, i8* }*
  %1471 = alloca { i64, i8* }*
  store { i64, i8* }* %1470, { i64, i8* }** %1471
  %1472 = load { i64, i8* }*, { i64, i8* }** %1049
  %1473 = call i64 @nyx_array_get({ i64, i8* }* %1472, i64 2)
  %1474 = inttoptr i64 %1473 to { i64, i8* }*
  %1475 = alloca { i64, i8* }*
  store { i64, i8* }* %1474, { i64, i8* }** %1475
  %1476 = load %nyx_string*, %nyx_string** %1046
  %1477 = call { i64, i8* }* @nyx_array_new_ptr()
  %1478 = load i64, i64* %1467
  call void @nyx_array_push({ i64, i8* }* %1477, i64 %1478)
  %1479 = load { i64, i8* }*, { i64, i8* }** %1471
  %1480 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1481 = load { i64, i8* }*, { i64, i8* }** %sust.ptr
  %1482 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1479, { i64, i8* }* %1480, { i64, i8* }* %1481)
  %1483 = ptrtoint { i64, i8* }* %1482 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1477, i64 %1483, i64 5)
  %1484 = load { i64, i8* }*, { i64, i8* }** %1475
  %1485 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1486 = load { i64, i8* }*, { i64, i8* }** %sust.ptr
  %1487 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1484, { i64, i8* }* %1485, { i64, i8* }* %1486)
  %1488 = ptrtoint { i64, i8* }* %1487 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1477, i64 %1488, i64 5)
  %1489 = call { i64, i8* }* @licm_make(%nyx_string* %1476, { i64, i8* }* %1477)
  ret { i64, i8* }* %1489
else307:
  br label %merge308
merge308:
  %1490 = alloca i1
  store i1 false, i1* %1490
  %1491 = load %nyx_string*, %nyx_string** %1046
  %1492 = getelementptr [6 x i8], [6 x i8]* @.str59, i32 0, i32 0
  %1493 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str59.c, i8* %1492, i64 5)
  %1494 = call i1 @nyx_string_equals(%nyx_string* %1491, %nyx_string* %1493)
  br i1 %1494, label %sc_and_rhs309, label %sc_and_end310
sc_and_rhs309:
  %1495 = load i64, i64* %1052
  %1496 = icmp sge i64 %1495, 1
  store i1 %1496, i1* %1490
  br label %sc_and_end310
sc_and_end310:
  %1497 = load i1, i1* %1490
  br i1 %1497, label %then311, label %else312
then311:
  %1498 = load { i64, i8* }*, { i64, i8* }** %1049
  %1499 = call i64 @nyx_array_get({ i64, i8* }* %1498, i64 0)
  %1500 = inttoptr i64 %1499 to { i64, i8* }*
  %1501 = alloca { i64, i8* }*
  store { i64, i8* }* %1500, { i64, i8* }** %1501
  %1502 = call { i64, i8* }* @nyx_array_new_ptr()
  %1503 = alloca { i64, i8* }*
  store { i64, i8* }* %1502, { i64, i8* }** %1503
  %1504 = alloca i64
  store i64 0, i64* %1504
  %1505 = call i8* @llvm.stacksave()
  br label %while_cond314
while_cond314:
  %1506 = load i64, i64* %1504
  %1507 = load { i64, i8* }*, { i64, i8* }** %1501
  %1508 = call i64 @nyx_array_length({ i64, i8* }* %1507)
  %1509 = icmp slt i64 %1506, %1508
  br i1 %1509, label %while_body315, label %while_end316
while_body315:
  call void @llvm.stackrestore(i8* %1505)
  %1510 = load { i64, i8* }*, { i64, i8* }** %1501
  %1511 = load i64, i64* %1504
  %1512 = call i64 @nyx_array_get({ i64, i8* }* %1510, i64 %1511)
  %1513 = inttoptr i64 %1512 to { i64, i8* }*
  %1514 = alloca { i64, i8* }*
  store { i64, i8* }* %1513, { i64, i8* }** %1514
  %1515 = load { i64, i8* }*, { i64, i8* }** %1503
  %1516 = load { i64, i8* }*, { i64, i8* }** %1514
  %1517 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1518 = load { i64, i8* }*, { i64, i8* }** %sust.ptr
  %1519 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1516, { i64, i8* }* %1517, { i64, i8* }* %1518)
  %1520 = ptrtoint { i64, i8* }* %1519 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1515, i64 %1520, i64 5)
  %1521 = load i64, i64* %1504
  %1522 = add i64 %1521, 1
  store i64 %1522, i64* %1504
  br label %while_cond314
while_end316:
  %1523 = load %nyx_string*, %nyx_string** %1046
  %1524 = call { i64, i8* }* @nyx_array_new_ptr()
  %1525 = load { i64, i8* }*, { i64, i8* }** %1503
  %1526 = ptrtoint { i64, i8* }* %1525 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1524, i64 %1526, i64 5)
  %1527 = call { i64, i8* }* @licm_make(%nyx_string* %1523, { i64, i8* }* %1524)
  ret { i64, i8* }* %1527
else312:
  br label %merge313
merge313:
  %1528 = alloca i1
  store i1 false, i1* %1528
  %1529 = load %nyx_string*, %nyx_string** %1046
  %1530 = getelementptr [4 x i8], [4 x i8]* @.str60, i32 0, i32 0
  %1531 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str60.c, i8* %1530, i64 3)
  %1532 = call i1 @nyx_string_equals(%nyx_string* %1529, %nyx_string* %1531)
  br i1 %1532, label %sc_and_rhs317, label %sc_and_end318
sc_and_rhs317:
  %1533 = load i64, i64* %1052
  %1534 = icmp sge i64 %1533, 4
  store i1 %1534, i1* %1528
  br label %sc_and_end318
sc_and_end318:
  %1535 = load i1, i1* %1528
  br i1 %1535, label %then319, label %else320
then319:
  %1536 = load { i64, i8* }*, { i64, i8* }** %1049
  %1537 = call i64 @nyx_array_get({ i64, i8* }* %1536, i64 0)
  %1538 = alloca i64
  store i64 %1537, i64* %1538
  %1539 = load { i64, i8* }*, { i64, i8* }** %1049
  %1540 = call i64 @nyx_array_get({ i64, i8* }* %1539, i64 1)
  %1541 = alloca i64
  store i64 %1540, i64* %1541
  %1542 = load { i64, i8* }*, { i64, i8* }** %1049
  %1543 = call i64 @nyx_array_get({ i64, i8* }* %1542, i64 2)
  %1544 = inttoptr i64 %1543 to { i64, i8* }*
  %1545 = alloca { i64, i8* }*
  store { i64, i8* }* %1544, { i64, i8* }** %1545
  %1546 = load { i64, i8* }*, { i64, i8* }** %1049
  %1547 = call i64 @nyx_array_get({ i64, i8* }* %1546, i64 3)
  %1548 = alloca i64
  store i64 %1547, i64* %1548
  %1549 = load %nyx_string*, %nyx_string** %1046
  %1550 = call { i64, i8* }* @nyx_array_new_ptr()
  %1551 = load i64, i64* %1538
  call void @nyx_array_push({ i64, i8* }* %1550, i64 %1551)
  %1552 = load i64, i64* %1541
  call void @nyx_array_push({ i64, i8* }* %1550, i64 %1552)
  %1553 = load { i64, i8* }*, { i64, i8* }** %1545
  %1554 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1555 = load { i64, i8* }*, { i64, i8* }** %sust.ptr
  %1556 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1553, { i64, i8* }* %1554, { i64, i8* }* %1555)
  %1557 = ptrtoint { i64, i8* }* %1556 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1550, i64 %1557, i64 5)
  %1558 = load i64, i64* %1548
  call void @nyx_array_push({ i64, i8* }* %1550, i64 %1558)
  %1559 = call { i64, i8* }* @licm_make(%nyx_string* %1549, { i64, i8* }* %1550)
  ret { i64, i8* }* %1559
else320:
  br label %merge321
merge321:
  %1560 = alloca i1
  store i1 false, i1* %1560
  %1561 = load %nyx_string*, %nyx_string** %1046
  %1562 = getelementptr [22 x i8], [22 x i8]* @.str61, i32 0, i32 0
  %1563 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str61.c, i8* %1562, i64 21)
  %1564 = call i1 @nyx_string_equals(%nyx_string* %1561, %nyx_string* %1563)
  br i1 %1564, label %sc_and_rhs322, label %sc_and_end323
sc_and_rhs322:
  %1565 = load i64, i64* %1052
  %1566 = icmp sge i64 %1565, 3
  store i1 %1566, i1* %1560
  br label %sc_and_end323
sc_and_end323:
  %1567 = load i1, i1* %1560
  br i1 %1567, label %then324, label %else325
then324:
  %1568 = load { i64, i8* }*, { i64, i8* }** %1049
  %1569 = call i64 @nyx_array_get({ i64, i8* }* %1568, i64 0)
  %1570 = alloca i64
  store i64 %1569, i64* %1570
  %1571 = load { i64, i8* }*, { i64, i8* }** %1049
  %1572 = call i64 @nyx_array_get({ i64, i8* }* %1571, i64 1)
  %1573 = alloca i64
  store i64 %1572, i64* %1573
  %1574 = load { i64, i8* }*, { i64, i8* }** %1049
  %1575 = call i64 @nyx_array_get({ i64, i8* }* %1574, i64 2)
  %1576 = inttoptr i64 %1575 to { i64, i8* }*
  %1577 = alloca { i64, i8* }*
  store { i64, i8* }* %1576, { i64, i8* }** %1577
  %1578 = load %nyx_string*, %nyx_string** %1046
  %1579 = call { i64, i8* }* @nyx_array_new_ptr()
  %1580 = load i64, i64* %1570
  call void @nyx_array_push({ i64, i8* }* %1579, i64 %1580)
  %1581 = load i64, i64* %1573
  call void @nyx_array_push({ i64, i8* }* %1579, i64 %1581)
  %1582 = load { i64, i8* }*, { i64, i8* }** %1577
  %1583 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1584 = load { i64, i8* }*, { i64, i8* }** %sust.ptr
  %1585 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1582, { i64, i8* }* %1583, { i64, i8* }* %1584)
  %1586 = ptrtoint { i64, i8* }* %1585 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1579, i64 %1586, i64 5)
  %1587 = call { i64, i8* }* @licm_make(%nyx_string* %1578, { i64, i8* }* %1579)
  ret { i64, i8* }* %1587
else325:
  br label %merge326
merge326:
  %1588 = alloca i1
  store i1 false, i1* %1588
  %1589 = load %nyx_string*, %nyx_string** %1046
  %1590 = getelementptr [7 x i8], [7 x i8]* @.str62, i32 0, i32 0
  %1591 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str62.c, i8* %1590, i64 6)
  %1592 = call i1 @nyx_string_equals(%nyx_string* %1589, %nyx_string* %1591)
  br i1 %1592, label %sc_and_rhs327, label %sc_and_end328
sc_and_rhs327:
  %1593 = load i64, i64* %1052
  %1594 = icmp sge i64 %1593, 2
  store i1 %1594, i1* %1588
  br label %sc_and_end328
sc_and_end328:
  %1595 = load i1, i1* %1588
  br i1 %1595, label %then329, label %else330
then329:
  %1596 = load { i64, i8* }*, { i64, i8* }** %1049
  %1597 = call i64 @nyx_array_get({ i64, i8* }* %1596, i64 0)
  %1598 = alloca i64
  store i64 %1597, i64* %1598
  %1599 = load { i64, i8* }*, { i64, i8* }** %1049
  %1600 = call i64 @nyx_array_get({ i64, i8* }* %1599, i64 1)
  %1601 = inttoptr i64 %1600 to { i64, i8* }*
  %1602 = alloca { i64, i8* }*
  store { i64, i8* }* %1601, { i64, i8* }** %1602
  %1603 = load %nyx_string*, %nyx_string** %1046
  %1604 = call { i64, i8* }* @nyx_array_new_ptr()
  %1605 = load i64, i64* %1598
  call void @nyx_array_push({ i64, i8* }* %1604, i64 %1605)
  %1606 = load { i64, i8* }*, { i64, i8* }** %1602
  %1607 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1608 = load { i64, i8* }*, { i64, i8* }** %sust.ptr
  %1609 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1606, { i64, i8* }* %1607, { i64, i8* }* %1608)
  %1610 = ptrtoint { i64, i8* }* %1609 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1604, i64 %1610, i64 5)
  %1611 = call { i64, i8* }* @licm_make(%nyx_string* %1603, { i64, i8* }* %1604)
  ret { i64, i8* }* %1611
else330:
  br label %merge331
merge331:
  %1612 = alloca i1
  store i1 false, i1* %1612
  %1613 = load %nyx_string*, %nyx_string** %1046
  %1614 = getelementptr [13 x i8], [13 x i8]* @.str63, i32 0, i32 0
  %1615 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str63.c, i8* %1614, i64 12)
  %1616 = call i1 @nyx_string_equals(%nyx_string* %1613, %nyx_string* %1615)
  br i1 %1616, label %sc_and_rhs332, label %sc_and_end333
sc_and_rhs332:
  %1617 = load i64, i64* %1052
  %1618 = icmp sge i64 %1617, 3
  store i1 %1618, i1* %1612
  br label %sc_and_end333
sc_and_end333:
  %1619 = load i1, i1* %1612
  br i1 %1619, label %then334, label %else335
then334:
  %1620 = load { i64, i8* }*, { i64, i8* }** %1049
  %1621 = call i64 @nyx_array_get({ i64, i8* }* %1620, i64 0)
  %1622 = inttoptr i64 %1621 to { i64, i8* }*
  %1623 = alloca { i64, i8* }*
  store { i64, i8* }* %1622, { i64, i8* }** %1623
  %1624 = load { i64, i8* }*, { i64, i8* }** %1049
  %1625 = call i64 @nyx_array_get({ i64, i8* }* %1624, i64 1)
  %1626 = inttoptr i64 %1625 to { i64, i8* }*
  %1627 = alloca { i64, i8* }*
  store { i64, i8* }* %1626, { i64, i8* }** %1627
  %1628 = load { i64, i8* }*, { i64, i8* }** %1049
  %1629 = call i64 @nyx_array_get({ i64, i8* }* %1628, i64 2)
  %1630 = inttoptr i64 %1629 to { i64, i8* }*
  %1631 = alloca { i64, i8* }*
  store { i64, i8* }* %1630, { i64, i8* }** %1631
  %1632 = load %nyx_string*, %nyx_string** %1046
  %1633 = call { i64, i8* }* @nyx_array_new_ptr()
  %1634 = load { i64, i8* }*, { i64, i8* }** %1623
  %1635 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1636 = load { i64, i8* }*, { i64, i8* }** %sust.ptr
  %1637 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1634, { i64, i8* }* %1635, { i64, i8* }* %1636)
  %1638 = ptrtoint { i64, i8* }* %1637 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1633, i64 %1638, i64 5)
  %1639 = load { i64, i8* }*, { i64, i8* }** %1627
  %1640 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1641 = load { i64, i8* }*, { i64, i8* }** %sust.ptr
  %1642 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1639, { i64, i8* }* %1640, { i64, i8* }* %1641)
  %1643 = ptrtoint { i64, i8* }* %1642 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1633, i64 %1643, i64 5)
  %1644 = load { i64, i8* }*, { i64, i8* }** %1631
  %1645 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1646 = load { i64, i8* }*, { i64, i8* }** %sust.ptr
  %1647 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1644, { i64, i8* }* %1645, { i64, i8* }* %1646)
  %1648 = ptrtoint { i64, i8* }* %1647 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1633, i64 %1648, i64 5)
  %1649 = call { i64, i8* }* @licm_make(%nyx_string* %1632, { i64, i8* }* %1633)
  ret { i64, i8* }* %1649
else335:
  br label %merge336
merge336:
  %1650 = alloca i1
  store i1 false, i1* %1650
  %1651 = load %nyx_string*, %nyx_string** %1046
  %1652 = getelementptr [13 x i8], [13 x i8]* @.str64, i32 0, i32 0
  %1653 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str64.c, i8* %1652, i64 12)
  %1654 = call i1 @nyx_string_equals(%nyx_string* %1651, %nyx_string* %1653)
  br i1 %1654, label %sc_and_rhs337, label %sc_and_end338
sc_and_rhs337:
  %1655 = load i64, i64* %1052
  %1656 = icmp sge i64 %1655, 3
  store i1 %1656, i1* %1650
  br label %sc_and_end338
sc_and_end338:
  %1657 = load i1, i1* %1650
  br i1 %1657, label %then339, label %else340
then339:
  %1658 = load { i64, i8* }*, { i64, i8* }** %1049
  %1659 = call i64 @nyx_array_get({ i64, i8* }* %1658, i64 0)
  %1660 = inttoptr i64 %1659 to { i64, i8* }*
  %1661 = alloca { i64, i8* }*
  store { i64, i8* }* %1660, { i64, i8* }** %1661
  %1662 = load { i64, i8* }*, { i64, i8* }** %1049
  %1663 = call i64 @nyx_array_get_checked({ i64, i8* }* %1662, i64 1, i64 2)
  %1664 = inttoptr i64 %1663 to %nyx_string*
  %1665 = alloca %nyx_string*
  store %nyx_string* %1664, %nyx_string** %1665
  %1666 = load { i64, i8* }*, { i64, i8* }** %1049
  %1667 = call i64 @nyx_array_get({ i64, i8* }* %1666, i64 2)
  %1668 = inttoptr i64 %1667 to { i64, i8* }*
  %1669 = alloca { i64, i8* }*
  store { i64, i8* }* %1668, { i64, i8* }** %1669
  %1670 = load %nyx_string*, %nyx_string** %1046
  %1671 = call { i64, i8* }* @nyx_array_new_ptr()
  %1672 = load { i64, i8* }*, { i64, i8* }** %1661
  %1673 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1674 = load { i64, i8* }*, { i64, i8* }** %sust.ptr
  %1675 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1672, { i64, i8* }* %1673, { i64, i8* }* %1674)
  %1676 = ptrtoint { i64, i8* }* %1675 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1671, i64 %1676, i64 5)
  %1677 = load %nyx_string*, %nyx_string** %1665
  %1678 = ptrtoint %nyx_string* %1677 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1671, i64 %1678, i64 2)
  %1679 = load { i64, i8* }*, { i64, i8* }** %1669
  %1680 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1681 = load { i64, i8* }*, { i64, i8* }** %sust.ptr
  %1682 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1679, { i64, i8* }* %1680, { i64, i8* }* %1681)
  %1683 = ptrtoint { i64, i8* }* %1682 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1671, i64 %1683, i64 5)
  %1684 = call { i64, i8* }* @licm_make(%nyx_string* %1670, { i64, i8* }* %1671)
  ret { i64, i8* }* %1684
else340:
  br label %merge341
merge341:
  %1685 = alloca i1
  store i1 false, i1* %1685
  %1686 = load %nyx_string*, %nyx_string** %1046
  %1687 = getelementptr [13 x i8], [13 x i8]* @.str65, i32 0, i32 0
  %1688 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str65.c, i8* %1687, i64 12)
  %1689 = call i1 @nyx_string_equals(%nyx_string* %1686, %nyx_string* %1688)
  br i1 %1689, label %sc_and_rhs342, label %sc_and_end343
sc_and_rhs342:
  %1690 = load i64, i64* %1052
  %1691 = icmp sge i64 %1690, 2
  store i1 %1691, i1* %1685
  br label %sc_and_end343
sc_and_end343:
  %1692 = load i1, i1* %1685
  br i1 %1692, label %then344, label %else345
then344:
  %1693 = load { i64, i8* }*, { i64, i8* }** %1049
  %1694 = call i64 @nyx_array_get({ i64, i8* }* %1693, i64 0)
  %1695 = inttoptr i64 %1694 to { i64, i8* }*
  %1696 = alloca { i64, i8* }*
  store { i64, i8* }* %1695, { i64, i8* }** %1696
  %1697 = load { i64, i8* }*, { i64, i8* }** %1049
  %1698 = call i64 @nyx_array_get({ i64, i8* }* %1697, i64 1)
  %1699 = inttoptr i64 %1698 to { i64, i8* }*
  %1700 = alloca { i64, i8* }*
  store { i64, i8* }* %1699, { i64, i8* }** %1700
  %1701 = load %nyx_string*, %nyx_string** %1046
  %1702 = call { i64, i8* }* @nyx_array_new_ptr()
  %1703 = load { i64, i8* }*, { i64, i8* }** %1696
  %1704 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1705 = load { i64, i8* }*, { i64, i8* }** %sust.ptr
  %1706 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1703, { i64, i8* }* %1704, { i64, i8* }* %1705)
  %1707 = ptrtoint { i64, i8* }* %1706 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1702, i64 %1707, i64 5)
  %1708 = load { i64, i8* }*, { i64, i8* }** %1700
  %1709 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1710 = load { i64, i8* }*, { i64, i8* }** %sust.ptr
  %1711 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1708, { i64, i8* }* %1709, { i64, i8* }* %1710)
  %1712 = ptrtoint { i64, i8* }* %1711 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1702, i64 %1712, i64 5)
  %1713 = call { i64, i8* }* @licm_make(%nyx_string* %1701, { i64, i8* }* %1702)
  ret { i64, i8* }* %1713
else345:
  br label %merge346
merge346:
  %1714 = alloca i1
  store i1 false, i1* %1714
  %1715 = load %nyx_string*, %nyx_string** %1046
  %1716 = getelementptr [7 x i8], [7 x i8]* @.str66, i32 0, i32 0
  %1717 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str66.c, i8* %1716, i64 6)
  %1718 = call i1 @nyx_string_equals(%nyx_string* %1715, %nyx_string* %1717)
  br i1 %1718, label %sc_and_rhs347, label %sc_and_end348
sc_and_rhs347:
  %1719 = load i64, i64* %1052
  %1720 = icmp sge i64 %1719, 1
  store i1 %1720, i1* %1714
  br label %sc_and_end348
sc_and_end348:
  %1721 = load i1, i1* %1714
  br i1 %1721, label %then349, label %else350
then349:
  %1722 = load { i64, i8* }*, { i64, i8* }** %1049
  %1723 = call i64 @nyx_array_get({ i64, i8* }* %1722, i64 0)
  %1724 = inttoptr i64 %1723 to { i64, i8* }*
  %1725 = alloca { i64, i8* }*
  store { i64, i8* }* %1724, { i64, i8* }** %1725
  %1726 = load %nyx_string*, %nyx_string** %1046
  %1727 = call { i64, i8* }* @nyx_array_new_ptr()
  %1728 = load { i64, i8* }*, { i64, i8* }** %1725
  %1729 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1730 = load { i64, i8* }*, { i64, i8* }** %sust.ptr
  %1731 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1728, { i64, i8* }* %1729, { i64, i8* }* %1730)
  %1732 = ptrtoint { i64, i8* }* %1731 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1727, i64 %1732, i64 5)
  %1733 = call { i64, i8* }* @licm_make(%nyx_string* %1726, { i64, i8* }* %1727)
  ret { i64, i8* }* %1733
else350:
  br label %merge351
merge351:
  %1734 = alloca i1
  store i1 false, i1* %1734
  %1735 = load %nyx_string*, %nyx_string** %1046
  %1736 = getelementptr [12 x i8], [12 x i8]* @.str67, i32 0, i32 0
  %1737 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str67.c, i8* %1736, i64 11)
  %1738 = call i1 @nyx_string_equals(%nyx_string* %1735, %nyx_string* %1737)
  br i1 %1738, label %sc_and_rhs352, label %sc_and_end353
sc_and_rhs352:
  %1739 = load i64, i64* %1052
  %1740 = icmp sge i64 %1739, 3
  store i1 %1740, i1* %1734
  br label %sc_and_end353
sc_and_end353:
  %1741 = load i1, i1* %1734
  br i1 %1741, label %then354, label %else355
then354:
  %1742 = load { i64, i8* }*, { i64, i8* }** %1049
  %1743 = call i64 @nyx_array_get({ i64, i8* }* %1742, i64 0)
  %1744 = alloca i64
  store i64 %1743, i64* %1744
  %1745 = load { i64, i8* }*, { i64, i8* }** %1049
  %1746 = call i64 @nyx_array_get({ i64, i8* }* %1745, i64 1)
  %1747 = inttoptr i64 %1746 to { i64, i8* }*
  %1748 = alloca { i64, i8* }*
  store { i64, i8* }* %1747, { i64, i8* }** %1748
  %1749 = load { i64, i8* }*, { i64, i8* }** %1049
  %1750 = call i64 @nyx_array_get({ i64, i8* }* %1749, i64 2)
  %1751 = alloca i64
  store i64 %1750, i64* %1751
  %1752 = call { i64, i8* }* @nyx_array_new_ptr()
  %1753 = alloca { i64, i8* }*
  store { i64, i8* }* %1752, { i64, i8* }** %1753
  %1754 = alloca i64
  store i64 0, i64* %1754
  %1755 = call i8* @llvm.stacksave()
  br label %while_cond357
while_cond357:
  %1756 = load i64, i64* %1754
  %1757 = load { i64, i8* }*, { i64, i8* }** %1748
  %1758 = call i64 @nyx_array_length({ i64, i8* }* %1757)
  %1759 = icmp slt i64 %1756, %1758
  br i1 %1759, label %while_body358, label %while_end359
while_body358:
  call void @llvm.stackrestore(i8* %1755)
  %1760 = load { i64, i8* }*, { i64, i8* }** %1748
  %1761 = load i64, i64* %1754
  %1762 = call i64 @nyx_array_get({ i64, i8* }* %1760, i64 %1761)
  %1763 = inttoptr i64 %1762 to { i64, i8* }*
  %1764 = alloca { i64, i8* }*
  store { i64, i8* }* %1763, { i64, i8* }** %1764
  %1765 = load { i64, i8* }*, { i64, i8* }** %1764
  %1766 = call i64 @nyx_array_length({ i64, i8* }* %1765)
  %1767 = icmp sge i64 %1766, 2
  br i1 %1767, label %then360, label %else361
then360:
  %1768 = load { i64, i8* }*, { i64, i8* }** %1764
  %1769 = call i64 @nyx_array_get_checked({ i64, i8* }* %1768, i64 0, i64 2)
  %1770 = inttoptr i64 %1769 to %nyx_string*
  %1771 = alloca %nyx_string*
  store %nyx_string* %1770, %nyx_string** %1771
  %1772 = load { i64, i8* }*, { i64, i8* }** %1764
  %1773 = call i64 @nyx_array_get({ i64, i8* }* %1772, i64 1)
  %1774 = inttoptr i64 %1773 to { i64, i8* }*
  %1775 = alloca { i64, i8* }*
  store { i64, i8* }* %1774, { i64, i8* }** %1775
  %1776 = load { i64, i8* }*, { i64, i8* }** %1753
  %1777 = call { i64, i8* }* @nyx_array_new_ptr()
  %1778 = load %nyx_string*, %nyx_string** %1771
  %1779 = ptrtoint %nyx_string* %1778 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1777, i64 %1779, i64 2)
  %1780 = load { i64, i8* }*, { i64, i8* }** %1775
  %1781 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1782 = load { i64, i8* }*, { i64, i8* }** %sust.ptr
  %1783 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1780, { i64, i8* }* %1781, { i64, i8* }* %1782)
  %1784 = ptrtoint { i64, i8* }* %1783 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1777, i64 %1784, i64 5)
  %1785 = ptrtoint { i64, i8* }* %1777 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1776, i64 %1785, i64 5)
  br label %merge362
else361:
  %1786 = load { i64, i8* }*, { i64, i8* }** %1753
  %1787 = load { i64, i8* }*, { i64, i8* }** %1764
  %1788 = ptrtoint { i64, i8* }* %1787 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1786, i64 %1788, i64 5)
  br label %merge362
merge362:
  %1789 = load i64, i64* %1754
  %1790 = add i64 %1789, 1
  store i64 %1790, i64* %1754
  br label %while_cond357
while_end359:
  %1791 = load %nyx_string*, %nyx_string** %1046
  %1792 = call { i64, i8* }* @nyx_array_new_ptr()
  %1793 = load i64, i64* %1744
  call void @nyx_array_push({ i64, i8* }* %1792, i64 %1793)
  %1794 = load { i64, i8* }*, { i64, i8* }** %1753
  %1795 = ptrtoint { i64, i8* }* %1794 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1792, i64 %1795, i64 5)
  %1796 = load i64, i64* %1751
  call void @nyx_array_push({ i64, i8* }* %1792, i64 %1796)
  %1797 = call { i64, i8* }* @licm_make(%nyx_string* %1791, { i64, i8* }* %1792)
  ret { i64, i8* }* %1797
else355:
  br label %merge356
merge356:
  %1798 = alloca i1
  store i1 false, i1* %1798
  %1799 = load %nyx_string*, %nyx_string** %1046
  %1800 = getelementptr [7 x i8], [7 x i8]* @.str68, i32 0, i32 0
  %1801 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str68.c, i8* %1800, i64 6)
  %1802 = call i1 @nyx_string_equals(%nyx_string* %1799, %nyx_string* %1801)
  br i1 %1802, label %sc_and_rhs363, label %sc_and_end364
sc_and_rhs363:
  %1803 = load i64, i64* %1052
  %1804 = icmp sge i64 %1803, 1
  store i1 %1804, i1* %1798
  br label %sc_and_end364
sc_and_end364:
  %1805 = load i1, i1* %1798
  br i1 %1805, label %then365, label %else366
then365:
  %1806 = load { i64, i8* }*, { i64, i8* }** %1049
  %1807 = call i64 @nyx_array_get({ i64, i8* }* %1806, i64 0)
  %1808 = inttoptr i64 %1807 to { i64, i8* }*
  %1809 = alloca { i64, i8* }*
  store { i64, i8* }* %1808, { i64, i8* }** %1809
  %1810 = load %nyx_string*, %nyx_string** %1046
  %1811 = call { i64, i8* }* @nyx_array_new_ptr()
  %1812 = load { i64, i8* }*, { i64, i8* }** %1809
  %1813 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1814 = load { i64, i8* }*, { i64, i8* }** %sust.ptr
  %1815 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1812, { i64, i8* }* %1813, { i64, i8* }* %1814)
  %1816 = ptrtoint { i64, i8* }* %1815 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1811, i64 %1816, i64 5)
  %1817 = call { i64, i8* }* @licm_make(%nyx_string* %1810, { i64, i8* }* %1811)
  ret { i64, i8* }* %1817
else366:
  br label %merge367
merge367:
  %1818 = alloca i1
  store i1 false, i1* %1818
  %1819 = load %nyx_string*, %nyx_string** %1046
  %1820 = getelementptr [5 x i8], [5 x i8]* @.str69, i32 0, i32 0
  %1821 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str69.c, i8* %1820, i64 4)
  %1822 = call i1 @nyx_string_equals(%nyx_string* %1819, %nyx_string* %1821)
  br i1 %1822, label %sc_and_rhs368, label %sc_and_end369
sc_and_rhs368:
  %1823 = load i64, i64* %1052
  %1824 = icmp sge i64 %1823, 2
  store i1 %1824, i1* %1818
  br label %sc_and_end369
sc_and_end369:
  %1825 = load i1, i1* %1818
  br i1 %1825, label %then370, label %else371
then370:
  %1826 = load { i64, i8* }*, { i64, i8* }** %1049
  %1827 = call i64 @nyx_array_get({ i64, i8* }* %1826, i64 0)
  %1828 = inttoptr i64 %1827 to { i64, i8* }*
  %1829 = alloca { i64, i8* }*
  store { i64, i8* }* %1828, { i64, i8* }** %1829
  %1830 = load { i64, i8* }*, { i64, i8* }** %1049
  %1831 = call i64 @nyx_array_get({ i64, i8* }* %1830, i64 1)
  %1832 = alloca i64
  store i64 %1831, i64* %1832
  %1833 = load %nyx_string*, %nyx_string** %1046
  %1834 = call { i64, i8* }* @nyx_array_new_ptr()
  %1835 = load { i64, i8* }*, { i64, i8* }** %1829
  %1836 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1837 = load { i64, i8* }*, { i64, i8* }** %sust.ptr
  %1838 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1835, { i64, i8* }* %1836, { i64, i8* }* %1837)
  %1839 = ptrtoint { i64, i8* }* %1838 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1834, i64 %1839, i64 5)
  %1840 = load i64, i64* %1832
  call void @nyx_array_push({ i64, i8* }* %1834, i64 %1840)
  %1841 = call { i64, i8* }* @licm_make(%nyx_string* %1833, { i64, i8* }* %1834)
  ret { i64, i8* }* %1841
else371:
  br label %merge372
merge372:
  %1842 = alloca i1
  store i1 false, i1* %1842
  %1843 = load %nyx_string*, %nyx_string** %1046
  %1844 = getelementptr [6 x i8], [6 x i8]* @.str70, i32 0, i32 0
  %1845 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str70.c, i8* %1844, i64 5)
  %1846 = call i1 @nyx_string_equals(%nyx_string* %1843, %nyx_string* %1845)
  br i1 %1846, label %sc_and_rhs373, label %sc_and_end374
sc_and_rhs373:
  %1847 = load i64, i64* %1052
  %1848 = icmp sge i64 %1847, 3
  store i1 %1848, i1* %1842
  br label %sc_and_end374
sc_and_end374:
  %1849 = load i1, i1* %1842
  br i1 %1849, label %then375, label %else376
then375:
  %1850 = load { i64, i8* }*, { i64, i8* }** %1049
  %1851 = call i64 @nyx_array_get({ i64, i8* }* %1850, i64 0)
  %1852 = inttoptr i64 %1851 to { i64, i8* }*
  %1853 = alloca { i64, i8* }*
  store { i64, i8* }* %1852, { i64, i8* }** %1853
  %1854 = load { i64, i8* }*, { i64, i8* }** %1049
  %1855 = call i64 @nyx_array_get({ i64, i8* }* %1854, i64 1)
  %1856 = inttoptr i64 %1855 to { i64, i8* }*
  %1857 = alloca { i64, i8* }*
  store { i64, i8* }* %1856, { i64, i8* }** %1857
  %1858 = load { i64, i8* }*, { i64, i8* }** %1049
  %1859 = call i64 @nyx_array_get({ i64, i8* }* %1858, i64 2)
  %1860 = alloca i64
  store i64 %1859, i64* %1860
  %1861 = load %nyx_string*, %nyx_string** %1046
  %1862 = call { i64, i8* }* @nyx_array_new_ptr()
  %1863 = load { i64, i8* }*, { i64, i8* }** %1853
  %1864 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1865 = load { i64, i8* }*, { i64, i8* }** %sust.ptr
  %1866 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1863, { i64, i8* }* %1864, { i64, i8* }* %1865)
  %1867 = ptrtoint { i64, i8* }* %1866 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1862, i64 %1867, i64 5)
  %1868 = load { i64, i8* }*, { i64, i8* }** %1857
  %1869 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1870 = load { i64, i8* }*, { i64, i8* }** %sust.ptr
  %1871 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1868, { i64, i8* }* %1869, { i64, i8* }* %1870)
  %1872 = ptrtoint { i64, i8* }* %1871 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1862, i64 %1872, i64 5)
  %1873 = load i64, i64* %1860
  call void @nyx_array_push({ i64, i8* }* %1862, i64 %1873)
  %1874 = call { i64, i8* }* @licm_make(%nyx_string* %1861, { i64, i8* }* %1862)
  ret { i64, i8* }* %1874
else376:
  br label %merge377
merge377:
  %1875 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  ret { i64, i8* }* %1875
}

define internal { i64, i8* }* @licm_stmt_list(
{ i64, i8* }* %stmts.param, { i64, i8* }* %counter.param) {
  %stmts.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %stmts.param, { i64, i8* }** %stmts.ptr
  %counter.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %counter.param, { i64, i8* }** %counter.ptr
  %1876 = call { i64, i8* }* @nyx_array_new_ptr()
  %1877 = alloca { i64, i8* }*
  store { i64, i8* }* %1876, { i64, i8* }** %1877
  %1878 = alloca i64
  store i64 0, i64* %1878
  %1879 = getelementptr [4 x i8], [4 x i8]* @.str71, i32 0, i32 0
  %1880 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str71.c, i8* %1879, i64 3)
  %1881 = alloca %nyx_string*
  store %nyx_string* %1880, %nyx_string** %1881
  %1882 = getelementptr [10 x i8], [10 x i8]* @.str72, i32 0, i32 0
  %1883 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str72.c, i8* %1882, i64 9)
  %1884 = alloca %nyx_string*
  store %nyx_string* %1883, %nyx_string** %1884
  %1885 = getelementptr [6 x i8], [6 x i8]* @.str73, i32 0, i32 0
  %1886 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str73.c, i8* %1885, i64 5)
  %1887 = alloca %nyx_string*
  store %nyx_string* %1886, %nyx_string** %1887
  %1888 = getelementptr [12 x i8], [12 x i8]* @.str74, i32 0, i32 0
  %1889 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str74.c, i8* %1888, i64 11)
  %1890 = alloca %nyx_string*
  store %nyx_string* %1889, %nyx_string** %1890
  %1891 = getelementptr [7 x i8], [7 x i8]* @.str75, i32 0, i32 0
  %1892 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str75.c, i8* %1891, i64 6)
  %1893 = alloca %nyx_string*
  store %nyx_string* %1892, %nyx_string** %1893
  %1894 = getelementptr [4 x i8], [4 x i8]* @.str76, i32 0, i32 0
  %1895 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str76.c, i8* %1894, i64 3)
  %1896 = alloca %nyx_string*
  store %nyx_string* %1895, %nyx_string** %1896
  %1897 = getelementptr [7 x i8], [7 x i8]* @.str77, i32 0, i32 0
  %1898 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str77.c, i8* %1897, i64 6)
  %1899 = alloca %nyx_string*
  store %nyx_string* %1898, %nyx_string** %1899
  %1900 = call i8* @llvm.stacksave()
  br label %while_cond378
while_cond378:
  %1901 = load i64, i64* %1878
  %1902 = load { i64, i8* }*, { i64, i8* }** %stmts.ptr
  %1903 = call i64 @nyx_array_length({ i64, i8* }* %1902)
  %1904 = icmp slt i64 %1901, %1903
  br i1 %1904, label %while_body379, label %while_end380
while_body379:
  call void @llvm.stackrestore(i8* %1900)
  %1905 = load { i64, i8* }*, { i64, i8* }** %stmts.ptr
  %1906 = load i64, i64* %1878
  %1907 = call i64 @nyx_array_get({ i64, i8* }* %1905, i64 %1906)
  %1908 = inttoptr i64 %1907 to { i64, i8* }*
  %1909 = alloca { i64, i8* }*
  store { i64, i8* }* %1908, { i64, i8* }** %1909
  %1910 = load { i64, i8* }*, { i64, i8* }** %1909
  %1911 = call %ASTNode @licm_root_of({ i64, i8* }* %1910)
  %1912 = alloca %ASTNode
  store %ASTNode %1911, %ASTNode* %1912
  %1913 = getelementptr %ASTNode, %ASTNode* %1912, i32 0, i32 0
  %1914 = load %nyx_string*, %nyx_string** %1913
  %1915 = alloca %nyx_string*
  store %nyx_string* %1914, %nyx_string** %1915
  %1916 = getelementptr %ASTNode, %ASTNode* %1912, i32 0, i32 1
  %1917 = load { i64, i8* }*, { i64, i8* }** %1916
  %1918 = alloca { i64, i8* }*
  store { i64, i8* }* %1917, { i64, i8* }** %1918
  %1919 = alloca i64
  store i64 1, i64* %1919
  %1920 = load %nyx_string*, %nyx_string** %1915
  %1921 = load %nyx_string*, %nyx_string** %1881
  %1922 = call i1 @nyx_string_equals(%nyx_string* %1920, %nyx_string* %1921)
  br i1 %1922, label %then381, label %else382
then381:
  store i64 2, i64* %1919
  br label %merge383
else382:
  br label %merge383
merge383:
  %1923 = load %nyx_string*, %nyx_string** %1915
  %1924 = load %nyx_string*, %nyx_string** %1884
  %1925 = call i1 @nyx_string_equals(%nyx_string* %1923, %nyx_string* %1924)
  br i1 %1925, label %then384, label %else385
then384:
  store i64 2, i64* %1919
  br label %merge386
else385:
  br label %merge386
merge386:
  %1926 = alloca i1
  store i1 false, i1* %1926
  %1927 = alloca i1
  store i1 true, i1* %1927
  %1928 = alloca i1
  store i1 true, i1* %1928
  %1929 = load %nyx_string*, %nyx_string** %1915
  %1930 = load %nyx_string*, %nyx_string** %1887
  %1931 = call i1 @nyx_string_equals(%nyx_string* %1929, %nyx_string* %1930)
  br i1 %1931, label %sc_or_end388, label %sc_or_rhs387
sc_or_rhs387:
  %1932 = load %nyx_string*, %nyx_string** %1915
  %1933 = load %nyx_string*, %nyx_string** %1881
  %1934 = call i1 @nyx_string_equals(%nyx_string* %1932, %nyx_string* %1933)
  store i1 %1934, i1* %1928
  br label %sc_or_end388
sc_or_end388:
  %1935 = load i1, i1* %1928
  br i1 %1935, label %sc_or_end390, label %sc_or_rhs389
sc_or_rhs389:
  %1936 = load %nyx_string*, %nyx_string** %1915
  %1937 = load %nyx_string*, %nyx_string** %1884
  %1938 = call i1 @nyx_string_equals(%nyx_string* %1936, %nyx_string* %1937)
  store i1 %1938, i1* %1927
  br label %sc_or_end390
sc_or_end390:
  %1939 = load i1, i1* %1927
  br i1 %1939, label %sc_and_rhs391, label %sc_and_end392
sc_and_rhs391:
  %1940 = load { i64, i8* }*, { i64, i8* }** %1918
  %1941 = call i64 @nyx_array_length({ i64, i8* }* %1940)
  %1942 = load i64, i64* %1919
  %1943 = icmp sgt i64 %1941, %1942
  store i1 %1943, i1* %1926
  br label %sc_and_end392
sc_and_end392:
  %1944 = load i1, i1* %1926
  br i1 %1944, label %then393, label %else394
then393:
  %1945 = load %ASTNode, %ASTNode* %1912
  %1946 = load i64, i64* %1919
  %1947 = call %ASTNode @licm_node_at(%ASTNode %1945, i64 %1946)
  %1948 = alloca %ASTNode
  store %ASTNode %1947, %ASTNode* %1948
  %1949 = call { i64, i8* }* @nyx_array_new_ptr()
  %1950 = alloca { i64, i8* }*
  store { i64, i8* }* %1949, { i64, i8* }** %1950
  %1951 = load %ASTNode, %ASTNode* %1948
  %1952 = load { i64, i8* }*, { i64, i8* }** %1950
  %1953 = call i64 @licm_collect(%ASTNode %1951, { i64, i8* }* %1952)
  %1954 = call { i64, i8* }* @nyx_array_new_ptr()
  %1955 = alloca { i64, i8* }*
  store { i64, i8* }* %1954, { i64, i8* }** %1955
  %1956 = alloca i64
  store i64 0, i64* %1956
  %1957 = call i8* @llvm.stacksave()
  br label %while_cond396
while_cond396:
  %1958 = load i64, i64* %1956
  %1959 = load { i64, i8* }*, { i64, i8* }** %1950
  %1960 = call i64 @nyx_array_length({ i64, i8* }* %1959)
  %1961 = icmp slt i64 %1958, %1960
  br i1 %1961, label %while_body397, label %while_end398
while_body397:
  call void @llvm.stackrestore(i8* %1957)
  %1962 = load { i64, i8* }*, { i64, i8* }** %1950
  %1963 = load i64, i64* %1956
  %1964 = call i64 @nyx_array_get_checked({ i64, i8* }* %1962, i64 %1963, i64 2)
  %1965 = inttoptr i64 %1964 to %nyx_string*
  %1966 = alloca %nyx_string*
  store %nyx_string* %1965, %nyx_string** %1966
  %1967 = load { i64, i8* }*, { i64, i8* }** %counter.ptr
  %1968 = call i64 @nyx_slot_as_int_checked({ i64, i8* }* %1967, i64 0)
  %1969 = alloca i64
  store i64 %1968, i64* %1969
  %1970 = load { i64, i8* }*, { i64, i8* }** %counter.ptr
  %1971 = load i64, i64* %1969
  %1972 = add i64 %1971, 1
  call void @nyx_array_set({ i64, i8* }* %1970, i64 0, i64 %1972)
  %1973 = load %nyx_string*, %nyx_string** %1890
  %1974 = load i64, i64* %1969
  %1975 = call %nyx_string* @nyx_string_from_int(i64 %1974)
  %1976 = call %nyx_string* @nyx_string_concat(%nyx_string* %1973, %nyx_string* %1975)
  %1977 = alloca %nyx_string*
  store %nyx_string* %1976, %nyx_string** %1977
  %1978 = load { i64, i8* }*, { i64, i8* }** %1955
  %1979 = call { i64, i8* }* @nyx_array_new_ptr()
  %1980 = load %nyx_string*, %nyx_string** %1966
  %1981 = ptrtoint %nyx_string* %1980 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1979, i64 %1981, i64 2)
  %1982 = load %nyx_string*, %nyx_string** %1977
  %1983 = ptrtoint %nyx_string* %1982 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1979, i64 %1983, i64 2)
  %1984 = ptrtoint { i64, i8* }* %1979 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1978, i64 %1984, i64 5)
  %1985 = load %nyx_string*, %nyx_string** %1977
  %1986 = call { i64, i8* }* @nyx_array_new_ptr()
  %1987 = call { i64, i8* }* @licm_make(%nyx_string* %1985, { i64, i8* }* %1986)
  %1988 = alloca { i64, i8* }*
  store { i64, i8* }* %1987, { i64, i8* }** %1988
  %1989 = load %nyx_string*, %nyx_string** %1893
  %1990 = call { i64, i8* }* @nyx_array_new_ptr()
  %1991 = load %nyx_string*, %nyx_string** %1966
  %1992 = ptrtoint %nyx_string* %1991 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1990, i64 %1992, i64 2)
  %1993 = call { i64, i8* }* @licm_make(%nyx_string* %1989, { i64, i8* }* %1990)
  %1994 = alloca { i64, i8* }*
  store { i64, i8* }* %1993, { i64, i8* }** %1994
  %1995 = load %nyx_string*, %nyx_string** %1896
  %1996 = call { i64, i8* }* @nyx_array_new_ptr()
  %1997 = load { i64, i8* }*, { i64, i8* }** %1988
  %1998 = ptrtoint { i64, i8* }* %1997 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1996, i64 %1998, i64 5)
  %1999 = zext i1 0 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1996, i64 %1999, i64 4)
  %2000 = load { i64, i8* }*, { i64, i8* }** %1994
  %2001 = ptrtoint { i64, i8* }* %2000 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1996, i64 %2001, i64 5)
  %2002 = load %nyx_string*, %nyx_string** %1899
  %2003 = ptrtoint %nyx_string* %2002 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1996, i64 %2003, i64 2)
  %2004 = call { i64, i8* }* @licm_make(%nyx_string* %1995, { i64, i8* }* %1996)
  %2005 = alloca { i64, i8* }*
  store { i64, i8* }* %2004, { i64, i8* }** %2005
  %2006 = load { i64, i8* }*, { i64, i8* }** %1877
  %2007 = load { i64, i8* }*, { i64, i8* }** %2005
  %2008 = ptrtoint { i64, i8* }* %2007 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2006, i64 %2008, i64 5)
  %2009 = load i64, i64* %1956
  %2010 = add i64 %2009, 1
  store i64 %2010, i64* %1956
  br label %while_cond396
while_end398:
  %2011 = call { i64, i8* }* @nyx_array_new_ptr()
  %2012 = alloca { i64, i8* }*
  store { i64, i8* }* %2011, { i64, i8* }** %2012
  %2013 = load { i64, i8* }*, { i64, i8* }** %1909
  %2014 = load { i64, i8* }*, { i64, i8* }** %1955
  %2015 = load { i64, i8* }*, { i64, i8* }** %2012
  %2016 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %2013, { i64, i8* }* %2014, { i64, i8* }* %2015)
  %2017 = alloca { i64, i8* }*
  store { i64, i8* }* %2016, { i64, i8* }** %2017
  %2018 = load { i64, i8* }*, { i64, i8* }** %1877
  %2019 = load { i64, i8* }*, { i64, i8* }** %2017
  %2020 = ptrtoint { i64, i8* }* %2019 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2018, i64 %2020, i64 5)
  br label %merge395
else394:
  %2021 = load { i64, i8* }*, { i64, i8* }** %1877
  %2022 = load { i64, i8* }*, { i64, i8* }** %1909
  %2023 = load { i64, i8* }*, { i64, i8* }** %counter.ptr
  %2024 = call { i64, i8* }* @licm_descend_stmt({ i64, i8* }* %2022, { i64, i8* }* %2023)
  %2025 = ptrtoint { i64, i8* }* %2024 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2021, i64 %2025, i64 5)
  br label %merge395
merge395:
  %2026 = load i64, i64* %1878
  %2027 = add i64 %2026, 1
  store i64 %2027, i64* %1878
  br label %while_cond378
while_end380:
  %2028 = load { i64, i8* }*, { i64, i8* }** %1877
  ret { i64, i8* }* %2028
}

define internal { i64, i8* }* @licm_descend_stmt(
{ i64, i8* }* %stmt.param, { i64, i8* }* %counter.param) {
  %stmt.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %stmt.param, { i64, i8* }** %stmt.ptr
  %counter.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %counter.param, { i64, i8* }** %counter.ptr
  %2029 = load { i64, i8* }*, { i64, i8* }** %stmt.ptr
  %2030 = call %ASTNode @licm_root_of({ i64, i8* }* %2029)
  %2031 = alloca %ASTNode
  store %ASTNode %2030, %ASTNode* %2031
  %2032 = getelementptr %ASTNode, %ASTNode* %2031, i32 0, i32 0
  %2033 = load %nyx_string*, %nyx_string** %2032
  %2034 = alloca %nyx_string*
  store %nyx_string* %2033, %nyx_string** %2034
  %2035 = getelementptr %ASTNode, %ASTNode* %2031, i32 0, i32 1
  %2036 = load { i64, i8* }*, { i64, i8* }** %2035
  %2037 = alloca { i64, i8* }*
  store { i64, i8* }* %2036, { i64, i8* }** %2037
  %2038 = load { i64, i8* }*, { i64, i8* }** %2037
  %2039 = call i64 @nyx_array_length({ i64, i8* }* %2038)
  %2040 = alloca i64
  store i64 %2039, i64* %2040
  %2041 = alloca i1
  store i1 false, i1* %2041
  %2042 = alloca i1
  store i1 true, i1* %2042
  %2043 = load %nyx_string*, %nyx_string** %2034
  %2044 = getelementptr [9 x i8], [9 x i8]* @.str78, i32 0, i32 0
  %2045 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str78.c, i8* %2044, i64 8)
  %2046 = call i1 @nyx_string_equals(%nyx_string* %2043, %nyx_string* %2045)
  br i1 %2046, label %sc_or_end400, label %sc_or_rhs399
sc_or_rhs399:
  %2047 = load %nyx_string*, %nyx_string** %2034
  %2048 = getelementptr [9 x i8], [9 x i8]* @.str79, i32 0, i32 0
  %2049 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str79.c, i8* %2048, i64 8)
  %2050 = call i1 @nyx_string_equals(%nyx_string* %2047, %nyx_string* %2049)
  store i1 %2050, i1* %2042
  br label %sc_or_end400
sc_or_end400:
  %2051 = load i1, i1* %2042
  br i1 %2051, label %sc_and_rhs401, label %sc_and_end402
sc_and_rhs401:
  %2052 = load i64, i64* %2040
  %2053 = icmp sge i64 %2052, 4
  store i1 %2053, i1* %2041
  br label %sc_and_end402
sc_and_end402:
  %2054 = load i1, i1* %2041
  br i1 %2054, label %then403, label %else404
then403:
  %2055 = load %ASTNode, %ASTNode* %2031
  %2056 = call %ASTNode @licm_node_at(%ASTNode %2055, i64 3)
  %2057 = alloca %ASTNode
  store %ASTNode %2056, %ASTNode* %2057
  %2058 = getelementptr %ASTNode, %ASTNode* %2057, i32 0, i32 0
  %2059 = load %nyx_string*, %nyx_string** %2058
  %2060 = getelementptr [6 x i8], [6 x i8]* @.str80, i32 0, i32 0
  %2061 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str80.c, i8* %2060, i64 5)
  %2062 = call i1 @nyx_string_equals(%nyx_string* %2059, %nyx_string* %2061)
  %2063 = xor i1 %2062, true
  br i1 %2063, label %then406, label %else407
then406:
  %2064 = load { i64, i8* }*, { i64, i8* }** %stmt.ptr
  ret { i64, i8* }* %2064
else407:
  br label %merge408
merge408:
  %2065 = load %ASTNode, %ASTNode* %2057
  %2066 = call { i64, i8* }* @licm_array_at(%ASTNode %2065, i64 0)
  %2067 = alloca { i64, i8* }*
  store { i64, i8* }* %2066, { i64, i8* }** %2067
  %2068 = load { i64, i8* }*, { i64, i8* }** %2067
  %2069 = load { i64, i8* }*, { i64, i8* }** %counter.ptr
  %2070 = call { i64, i8* }* @licm_stmt_list({ i64, i8* }* %2068, { i64, i8* }* %2069)
  %2071 = alloca { i64, i8* }*
  store { i64, i8* }* %2070, { i64, i8* }** %2071
  %2072 = getelementptr [6 x i8], [6 x i8]* @.str81, i32 0, i32 0
  %2073 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str81.c, i8* %2072, i64 5)
  %2074 = call { i64, i8* }* @nyx_array_new_ptr()
  %2075 = load { i64, i8* }*, { i64, i8* }** %2071
  %2076 = ptrtoint { i64, i8* }* %2075 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2074, i64 %2076, i64 5)
  %2077 = call { i64, i8* }* @licm_make(%nyx_string* %2073, { i64, i8* }* %2074)
  %2078 = alloca { i64, i8* }*
  store { i64, i8* }* %2077, { i64, i8* }** %2078
  %2079 = call { i64, i8* }* @nyx_array_new_ptr()
  %2080 = alloca { i64, i8* }*
  store { i64, i8* }* %2079, { i64, i8* }** %2080
  %2081 = alloca i64
  store i64 0, i64* %2081
  %2082 = call i8* @llvm.stacksave()
  br label %while_cond409
while_cond409:
  %2083 = load i64, i64* %2081
  %2084 = load i64, i64* %2040
  %2085 = icmp slt i64 %2083, %2084
  br i1 %2085, label %while_body410, label %while_end411
while_body410:
  call void @llvm.stackrestore(i8* %2082)
  %2086 = load i64, i64* %2081
  %2087 = icmp eq i64 %2086, 3
  br i1 %2087, label %then412, label %else413
then412:
  %2088 = load { i64, i8* }*, { i64, i8* }** %2080
  %2089 = load { i64, i8* }*, { i64, i8* }** %2078
  %2090 = ptrtoint { i64, i8* }* %2089 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2088, i64 %2090, i64 5)
  br label %merge414
else413:
  %2091 = load { i64, i8* }*, { i64, i8* }** %2080
  %2092 = load { i64, i8* }*, { i64, i8* }** %2037
  %2093 = load i64, i64* %2081
  %2094 = call i64 @nyx_array_get({ i64, i8* }* %2092, i64 %2093)
  %2095 = load { i64, i8* }*, { i64, i8* }** %2037
  %2096 = load i64, i64* %2081
  %2097 = call i64 @nyx_array_get_tag({ i64, i8* }* %2095, i64 %2096)
  call void @nyx_array_push_tagged({ i64, i8* }* %2091, i64 %2094, i64 %2097)
  br label %merge414
merge414:
  %2098 = load i64, i64* %2081
  %2099 = add i64 %2098, 1
  store i64 %2099, i64* %2081
  br label %while_cond409
while_end411:
  %2100 = load %nyx_string*, %nyx_string** %2034
  %2101 = load { i64, i8* }*, { i64, i8* }** %2080
  %2102 = call { i64, i8* }* @licm_make(%nyx_string* %2100, { i64, i8* }* %2101)
  ret { i64, i8* }* %2102
else404:
  br label %merge405
merge405:
  %2103 = alloca i1
  store i1 false, i1* %2103
  %2104 = load %nyx_string*, %nyx_string** %2034
  %2105 = getelementptr [6 x i8], [6 x i8]* @.str82, i32 0, i32 0
  %2106 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str82.c, i8* %2105, i64 5)
  %2107 = call i1 @nyx_string_equals(%nyx_string* %2104, %nyx_string* %2106)
  br i1 %2107, label %sc_and_rhs415, label %sc_and_end416
sc_and_rhs415:
  %2108 = load i64, i64* %2040
  %2109 = icmp sge i64 %2108, 1
  store i1 %2109, i1* %2103
  br label %sc_and_end416
sc_and_end416:
  %2110 = load i1, i1* %2103
  br i1 %2110, label %then417, label %else418
then417:
  %2111 = load %ASTNode, %ASTNode* %2031
  %2112 = call { i64, i8* }* @licm_array_at(%ASTNode %2111, i64 0)
  %2113 = alloca { i64, i8* }*
  store { i64, i8* }* %2112, { i64, i8* }** %2113
  %2114 = load { i64, i8* }*, { i64, i8* }** %2113
  %2115 = load { i64, i8* }*, { i64, i8* }** %counter.ptr
  %2116 = call { i64, i8* }* @licm_stmt_list({ i64, i8* }* %2114, { i64, i8* }* %2115)
  %2117 = alloca { i64, i8* }*
  store { i64, i8* }* %2116, { i64, i8* }** %2117
  %2118 = getelementptr [6 x i8], [6 x i8]* @.str83, i32 0, i32 0
  %2119 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str83.c, i8* %2118, i64 5)
  %2120 = call { i64, i8* }* @nyx_array_new_ptr()
  %2121 = load { i64, i8* }*, { i64, i8* }** %2117
  %2122 = ptrtoint { i64, i8* }* %2121 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2120, i64 %2122, i64 5)
  %2123 = call { i64, i8* }* @licm_make(%nyx_string* %2119, { i64, i8* }* %2120)
  ret { i64, i8* }* %2123
else418:
  br label %merge419
merge419:
  %2124 = alloca i1
  store i1 false, i1* %2124
  %2125 = load %nyx_string*, %nyx_string** %2034
  %2126 = getelementptr [3 x i8], [3 x i8]* @.str84, i32 0, i32 0
  %2127 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str84.c, i8* %2126, i64 2)
  %2128 = call i1 @nyx_string_equals(%nyx_string* %2125, %nyx_string* %2127)
  br i1 %2128, label %sc_and_rhs420, label %sc_and_end421
sc_and_rhs420:
  %2129 = load i64, i64* %2040
  %2130 = icmp sge i64 %2129, 3
  store i1 %2130, i1* %2124
  br label %sc_and_end421
sc_and_end421:
  %2131 = load i1, i1* %2124
  br i1 %2131, label %then422, label %else423
then422:
  %2132 = load { i64, i8* }*, { i64, i8* }** %2037
  %2133 = call i64 @nyx_array_get({ i64, i8* }* %2132, i64 0)
  %2134 = inttoptr i64 %2133 to { i64, i8* }*
  %2135 = alloca { i64, i8* }*
  store { i64, i8* }* %2134, { i64, i8* }** %2135
  %2136 = load { i64, i8* }*, { i64, i8* }** %2037
  %2137 = call i64 @nyx_array_get({ i64, i8* }* %2136, i64 1)
  %2138 = inttoptr i64 %2137 to { i64, i8* }*
  %2139 = alloca { i64, i8* }*
  store { i64, i8* }* %2138, { i64, i8* }** %2139
  %2140 = load { i64, i8* }*, { i64, i8* }** %2037
  %2141 = call i64 @nyx_array_get({ i64, i8* }* %2140, i64 2)
  %2142 = inttoptr i64 %2141 to { i64, i8* }*
  %2143 = alloca { i64, i8* }*
  store { i64, i8* }* %2142, { i64, i8* }** %2143
  %2144 = load { i64, i8* }*, { i64, i8* }** %2139
  %2145 = load { i64, i8* }*, { i64, i8* }** %counter.ptr
  %2146 = call { i64, i8* }* @licm_descend_stmt({ i64, i8* }* %2144, { i64, i8* }* %2145)
  %2147 = alloca { i64, i8* }*
  store { i64, i8* }* %2146, { i64, i8* }** %2147
  %2148 = load { i64, i8* }*, { i64, i8* }** %2143
  %2149 = load { i64, i8* }*, { i64, i8* }** %counter.ptr
  %2150 = call { i64, i8* }* @licm_descend_stmt({ i64, i8* }* %2148, { i64, i8* }* %2149)
  %2151 = alloca { i64, i8* }*
  store { i64, i8* }* %2150, { i64, i8* }** %2151
  %2152 = getelementptr [3 x i8], [3 x i8]* @.str85, i32 0, i32 0
  %2153 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str85.c, i8* %2152, i64 2)
  %2154 = call { i64, i8* }* @nyx_array_new_ptr()
  %2155 = load { i64, i8* }*, { i64, i8* }** %2135
  %2156 = ptrtoint { i64, i8* }* %2155 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2154, i64 %2156, i64 5)
  %2157 = load { i64, i8* }*, { i64, i8* }** %2147
  %2158 = ptrtoint { i64, i8* }* %2157 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2154, i64 %2158, i64 5)
  %2159 = load { i64, i8* }*, { i64, i8* }** %2151
  %2160 = ptrtoint { i64, i8* }* %2159 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2154, i64 %2160, i64 5)
  %2161 = call { i64, i8* }* @licm_make(%nyx_string* %2153, { i64, i8* }* %2154)
  ret { i64, i8* }* %2161
else423:
  br label %merge424
merge424:
  %2162 = alloca i1
  store i1 false, i1* %2162
  %2163 = load %nyx_string*, %nyx_string** %2034
  %2164 = getelementptr [5 x i8], [5 x i8]* @.str86, i32 0, i32 0
  %2165 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str86.c, i8* %2164, i64 4)
  %2166 = call i1 @nyx_string_equals(%nyx_string* %2163, %nyx_string* %2165)
  br i1 %2166, label %sc_and_rhs425, label %sc_and_end426
sc_and_rhs425:
  %2167 = load i64, i64* %2040
  %2168 = icmp sge i64 %2167, 2
  store i1 %2168, i1* %2162
  br label %sc_and_end426
sc_and_end426:
  %2169 = load i1, i1* %2162
  br i1 %2169, label %then427, label %else428
then427:
  %2170 = load { i64, i8* }*, { i64, i8* }** %2037
  %2171 = call i64 @nyx_array_get({ i64, i8* }* %2170, i64 1)
  %2172 = inttoptr i64 %2171 to { i64, i8* }*
  %2173 = alloca { i64, i8* }*
  store { i64, i8* }* %2172, { i64, i8* }** %2173
  %2174 = call { i64, i8* }* @nyx_array_new_ptr()
  %2175 = alloca { i64, i8* }*
  store { i64, i8* }* %2174, { i64, i8* }** %2175
  %2176 = alloca i64
  store i64 0, i64* %2176
  %2177 = call i8* @llvm.stacksave()
  br label %while_cond430
while_cond430:
  %2178 = load i64, i64* %2176
  %2179 = load { i64, i8* }*, { i64, i8* }** %2173
  %2180 = call i64 @nyx_array_length({ i64, i8* }* %2179)
  %2181 = icmp slt i64 %2178, %2180
  br i1 %2181, label %while_body431, label %while_end432
while_body431:
  call void @llvm.stackrestore(i8* %2177)
  %2182 = load { i64, i8* }*, { i64, i8* }** %2173
  %2183 = load i64, i64* %2176
  %2184 = call i64 @nyx_array_get({ i64, i8* }* %2182, i64 %2183)
  %2185 = inttoptr i64 %2184 to { i64, i8* }*
  %2186 = alloca { i64, i8* }*
  store { i64, i8* }* %2185, { i64, i8* }** %2186
  %2187 = load { i64, i8* }*, { i64, i8* }** %2175
  %2188 = load { i64, i8* }*, { i64, i8* }** %2186
  %2189 = load { i64, i8* }*, { i64, i8* }** %counter.ptr
  %2190 = call { i64, i8* }* @licm_descend_stmt({ i64, i8* }* %2188, { i64, i8* }* %2189)
  %2191 = ptrtoint { i64, i8* }* %2190 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2187, i64 %2191, i64 5)
  %2192 = load i64, i64* %2176
  %2193 = add i64 %2192, 1
  store i64 %2193, i64* %2176
  br label %while_cond430
while_end432:
  %2194 = call { i64, i8* }* @nyx_array_new_ptr()
  %2195 = alloca { i64, i8* }*
  store { i64, i8* }* %2194, { i64, i8* }** %2195
  %2196 = alloca i64
  store i64 0, i64* %2196
  %2197 = call i8* @llvm.stacksave()
  br label %while_cond433
while_cond433:
  %2198 = load i64, i64* %2196
  %2199 = load i64, i64* %2040
  %2200 = icmp slt i64 %2198, %2199
  br i1 %2200, label %while_body434, label %while_end435
while_body434:
  call void @llvm.stackrestore(i8* %2197)
  %2201 = load i64, i64* %2196
  %2202 = icmp eq i64 %2201, 1
  br i1 %2202, label %then436, label %else437
then436:
  %2203 = load { i64, i8* }*, { i64, i8* }** %2195
  %2204 = load { i64, i8* }*, { i64, i8* }** %2175
  %2205 = ptrtoint { i64, i8* }* %2204 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2203, i64 %2205, i64 5)
  br label %merge438
else437:
  %2206 = load { i64, i8* }*, { i64, i8* }** %2195
  %2207 = load { i64, i8* }*, { i64, i8* }** %2037
  %2208 = load i64, i64* %2196
  %2209 = call i64 @nyx_array_get({ i64, i8* }* %2207, i64 %2208)
  %2210 = load { i64, i8* }*, { i64, i8* }** %2037
  %2211 = load i64, i64* %2196
  %2212 = call i64 @nyx_array_get_tag({ i64, i8* }* %2210, i64 %2211)
  call void @nyx_array_push_tagged({ i64, i8* }* %2206, i64 %2209, i64 %2212)
  br label %merge438
merge438:
  %2213 = load i64, i64* %2196
  %2214 = add i64 %2213, 1
  store i64 %2214, i64* %2196
  br label %while_cond433
while_end435:
  %2215 = load %nyx_string*, %nyx_string** %2034
  %2216 = load { i64, i8* }*, { i64, i8* }** %2195
  %2217 = call { i64, i8* }* @licm_make(%nyx_string* %2215, { i64, i8* }* %2216)
  ret { i64, i8* }* %2217
else428:
  br label %merge429
merge429:
  %2218 = alloca i1
  store i1 false, i1* %2218
  %2219 = load %nyx_string*, %nyx_string** %2034
  %2220 = getelementptr [11 x i8], [11 x i8]* @.str87, i32 0, i32 0
  %2221 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str87.c, i8* %2220, i64 10)
  %2222 = call i1 @nyx_string_equals(%nyx_string* %2219, %nyx_string* %2221)
  br i1 %2222, label %sc_and_rhs439, label %sc_and_end440
sc_and_rhs439:
  %2223 = load i64, i64* %2040
  %2224 = icmp sge i64 %2223, 3
  store i1 %2224, i1* %2218
  br label %sc_and_end440
sc_and_end440:
  %2225 = load i1, i1* %2218
  br i1 %2225, label %then441, label %else442
then441:
  %2226 = load { i64, i8* }*, { i64, i8* }** %2037
  %2227 = call i64 @nyx_array_get({ i64, i8* }* %2226, i64 2)
  %2228 = inttoptr i64 %2227 to { i64, i8* }*
  %2229 = alloca { i64, i8* }*
  store { i64, i8* }* %2228, { i64, i8* }** %2229
  %2230 = call { i64, i8* }* @nyx_array_new_ptr()
  %2231 = alloca { i64, i8* }*
  store { i64, i8* }* %2230, { i64, i8* }** %2231
  %2232 = alloca i64
  store i64 0, i64* %2232
  %2233 = call i8* @llvm.stacksave()
  br label %while_cond444
while_cond444:
  %2234 = load i64, i64* %2232
  %2235 = load { i64, i8* }*, { i64, i8* }** %2229
  %2236 = call i64 @nyx_array_length({ i64, i8* }* %2235)
  %2237 = icmp slt i64 %2234, %2236
  br i1 %2237, label %while_body445, label %while_end446
while_body445:
  call void @llvm.stackrestore(i8* %2233)
  %2238 = load { i64, i8* }*, { i64, i8* }** %2229
  %2239 = load i64, i64* %2232
  %2240 = call i64 @nyx_array_get({ i64, i8* }* %2238, i64 %2239)
  %2241 = inttoptr i64 %2240 to { i64, i8* }*
  %2242 = alloca { i64, i8* }*
  store { i64, i8* }* %2241, { i64, i8* }** %2242
  %2243 = load { i64, i8* }*, { i64, i8* }** %2231
  %2244 = load { i64, i8* }*, { i64, i8* }** %2242
  %2245 = load { i64, i8* }*, { i64, i8* }** %counter.ptr
  %2246 = call { i64, i8* }* @licm_descend_stmt({ i64, i8* }* %2244, { i64, i8* }* %2245)
  %2247 = ptrtoint { i64, i8* }* %2246 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2243, i64 %2247, i64 5)
  %2248 = load i64, i64* %2232
  %2249 = add i64 %2248, 1
  store i64 %2249, i64* %2232
  br label %while_cond444
while_end446:
  %2250 = call { i64, i8* }* @nyx_array_new_ptr()
  %2251 = alloca { i64, i8* }*
  store { i64, i8* }* %2250, { i64, i8* }** %2251
  %2252 = alloca i64
  store i64 0, i64* %2252
  %2253 = call i8* @llvm.stacksave()
  br label %while_cond447
while_cond447:
  %2254 = load i64, i64* %2252
  %2255 = load i64, i64* %2040
  %2256 = icmp slt i64 %2254, %2255
  br i1 %2256, label %while_body448, label %while_end449
while_body448:
  call void @llvm.stackrestore(i8* %2253)
  %2257 = load i64, i64* %2252
  %2258 = icmp eq i64 %2257, 2
  br i1 %2258, label %then450, label %else451
then450:
  %2259 = load { i64, i8* }*, { i64, i8* }** %2251
  %2260 = load { i64, i8* }*, { i64, i8* }** %2231
  %2261 = ptrtoint { i64, i8* }* %2260 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2259, i64 %2261, i64 5)
  br label %merge452
else451:
  %2262 = load { i64, i8* }*, { i64, i8* }** %2251
  %2263 = load { i64, i8* }*, { i64, i8* }** %2037
  %2264 = load i64, i64* %2252
  %2265 = call i64 @nyx_array_get({ i64, i8* }* %2263, i64 %2264)
  %2266 = load { i64, i8* }*, { i64, i8* }** %2037
  %2267 = load i64, i64* %2252
  %2268 = call i64 @nyx_array_get_tag({ i64, i8* }* %2266, i64 %2267)
  call void @nyx_array_push_tagged({ i64, i8* }* %2262, i64 %2265, i64 %2268)
  br label %merge452
merge452:
  %2269 = load i64, i64* %2252
  %2270 = add i64 %2269, 1
  store i64 %2270, i64* %2252
  br label %while_cond447
while_end449:
  %2271 = load %nyx_string*, %nyx_string** %2034
  %2272 = load { i64, i8* }*, { i64, i8* }** %2251
  %2273 = call { i64, i8* }* @licm_make(%nyx_string* %2271, { i64, i8* }* %2272)
  ret { i64, i8* }* %2273
else442:
  br label %merge443
merge443:
  %2274 = load { i64, i8* }*, { i64, i8* }** %stmt.ptr
  ret { i64, i8* }* %2274
}

define { i64, i8* }* @licm(
{ i64, i8* }* %ast.param) {
  %ast.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %ast.param, { i64, i8* }** %ast.ptr
  %2275 = getelementptr [9 x i8], [9 x i8]* @.str88, i32 0, i32 0
  %2276 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str88.c, i8* %2275, i64 8)
  %2277 = call i8* @nyx_string_to_cstr(%nyx_string* %2276)
  %2278 = call %nyx_string* @nyx_getenv(i8* %2277)
  %2279 = getelementptr [4 x i8], [4 x i8]* @.str89, i32 0, i32 0
  %2280 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str89.c, i8* %2279, i64 3)
  %2281 = call i1 @nyx_string_equals(%nyx_string* %2278, %nyx_string* %2280)
  br i1 %2281, label %then453, label %else454
then453:
  %2282 = load { i64, i8* }*, { i64, i8* }** %ast.ptr
  ret { i64, i8* }* %2282
else454:
  br label %merge455
merge455:
  %2283 = load { i64, i8* }*, { i64, i8* }** %ast.ptr
  %2284 = call %ASTNode @licm_root_of({ i64, i8* }* %2283)
  %2285 = alloca %ASTNode
  store %ASTNode %2284, %ASTNode* %2285
  %2286 = getelementptr %ASTNode, %ASTNode* %2285, i32 0, i32 1
  %2287 = load { i64, i8* }*, { i64, i8* }** %2286
  %2288 = call i64 @nyx_array_length({ i64, i8* }* %2287)
  %2289 = icmp slt i64 %2288, 1
  br i1 %2289, label %then456, label %else457
then456:
  %2290 = load { i64, i8* }*, { i64, i8* }** %ast.ptr
  ret { i64, i8* }* %2290
else457:
  br label %merge458
merge458:
  %2291 = load %ASTNode, %ASTNode* %2285
  %2292 = call { i64, i8* }* @licm_array_at(%ASTNode %2291, i64 0)
  %2293 = alloca { i64, i8* }*
  store { i64, i8* }* %2292, { i64, i8* }** %2293
  %2294 = call { i64, i8* }* @nyx_array_new_ptr()
  call void @nyx_array_push_tagged({ i64, i8* }* %2294, i64 0, i64 1)
  %2295 = alloca { i64, i8* }*
  store { i64, i8* }* %2294, { i64, i8* }** %2295
  %2296 = load { i64, i8* }*, { i64, i8* }** %2293
  %2297 = load { i64, i8* }*, { i64, i8* }** %2295
  %2298 = call { i64, i8* }* @licm_stmt_list({ i64, i8* }* %2296, { i64, i8* }* %2297)
  %2299 = alloca { i64, i8* }*
  store { i64, i8* }* %2298, { i64, i8* }** %2299
  %2300 = getelementptr [6 x i8], [6 x i8]* @.str90, i32 0, i32 0
  %2301 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str90.c, i8* %2300, i64 5)
  %2302 = call { i64, i8* }* @nyx_array_new_ptr()
  %2303 = load { i64, i8* }*, { i64, i8* }** %2299
  %2304 = ptrtoint { i64, i8* }* %2303 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2302, i64 %2304, i64 5)
  %2305 = call { i64, i8* }* @licm_make(%nyx_string* %2301, { i64, i8* }* %2302)
  ret { i64, i8* }* %2305
}

define internal { i64, i8* }* @licm_make_en(
%nyx_string* %node_type.param, { i64, i8* }* %data.param, i64 %line.param, i64 %col.param) {
  %node_type.ptr = alloca %nyx_string*
  store %nyx_string* %node_type.param, %nyx_string** %node_type.ptr
  %data.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %data.param, { i64, i8* }** %data.ptr
  %line.ptr = alloca i64
  store i64 %line.param, i64* %line.ptr
  %col.ptr = alloca i64
  store i64 %col.param, i64* %col.ptr
  %2306 = call { i64, i8* }* @nyx_array_new_ptr()
  %2307 = alloca { i64, i8* }*
  store { i64, i8* }* %2306, { i64, i8* }** %2307
  %2308 = load { i64, i8* }*, { i64, i8* }** %2307
  %2309 = load %nyx_string*, %nyx_string** %node_type.ptr
  %2310 = ptrtoint %nyx_string* %2309 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2308, i64 %2310, i64 2)
  %2311 = load { i64, i8* }*, { i64, i8* }** %2307
  %2312 = load { i64, i8* }*, { i64, i8* }** %data.ptr
  %2313 = ptrtoint { i64, i8* }* %2312 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2311, i64 %2313, i64 5)
  %2314 = load { i64, i8* }*, { i64, i8* }** %2307
  %2315 = load i64, i64* %line.ptr
  call void @nyx_array_push_tagged({ i64, i8* }* %2314, i64 %2315, i64 1)
  %2316 = load { i64, i8* }*, { i64, i8* }** %2307
  %2317 = load i64, i64* %col.ptr
  call void @nyx_array_push_tagged({ i64, i8* }* %2316, i64 %2317, i64 1)
  %2318 = load { i64, i8* }*, { i64, i8* }** %2307
  ret { i64, i8* }* %2318
}

define { i64, i8* }* @for_sustituir_var(
{ i64, i8* }* %body.param, %nyx_string* %var_name.param, %nyx_string* %arr_name.param, %nyx_string* %idx_name.param) {
  %body.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %body.param, { i64, i8* }** %body.ptr
  %var_name.ptr = alloca %nyx_string*
  store %nyx_string* %var_name.param, %nyx_string** %var_name.ptr
  %arr_name.ptr = alloca %nyx_string*
  store %nyx_string* %arr_name.param, %nyx_string** %arr_name.ptr
  %idx_name.ptr = alloca %nyx_string*
  store %nyx_string* %idx_name.param, %nyx_string** %idx_name.ptr
  %2319 = call { i64, i8* }* @nyx_array_new_ptr()
  %2320 = alloca { i64, i8* }*
  store { i64, i8* }* %2319, { i64, i8* }** %2320
  %2321 = call { i64, i8* }* @nyx_array_new_ptr()
  %2322 = load %nyx_string*, %nyx_string** %var_name.ptr
  %2323 = ptrtoint %nyx_string* %2322 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2321, i64 %2323, i64 2)
  %2324 = load %nyx_string*, %nyx_string** %arr_name.ptr
  %2325 = ptrtoint %nyx_string* %2324 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2321, i64 %2325, i64 2)
  %2326 = load %nyx_string*, %nyx_string** %idx_name.ptr
  %2327 = ptrtoint %nyx_string* %2326 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2321, i64 %2327, i64 2)
  %2328 = alloca { i64, i8* }*
  store { i64, i8* }* %2321, { i64, i8* }** %2328
  %2329 = load { i64, i8* }*, { i64, i8* }** %body.ptr
  %2330 = load { i64, i8* }*, { i64, i8* }** %2320
  %2331 = load { i64, i8* }*, { i64, i8* }** %2328
  %2332 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %2329, { i64, i8* }* %2330, { i64, i8* }* %2331)
  ret { i64, i8* }* %2332
}

define internal i1 @licm_patron_ata(
%ASTNode %pat.param, %nyx_string* %name.param) {
  %pat.ptr = alloca %ASTNode
  store %ASTNode %pat.param, %ASTNode* %pat.ptr
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %2333 = getelementptr %ASTNode, %ASTNode* %pat.ptr, i32 0, i32 0
  %2334 = load %nyx_string*, %nyx_string** %2333
  %2335 = alloca %nyx_string*
  store %nyx_string* %2334, %nyx_string** %2335
  %2336 = getelementptr %ASTNode, %ASTNode* %pat.ptr, i32 0, i32 1
  %2337 = load { i64, i8* }*, { i64, i8* }** %2336
  %2338 = alloca { i64, i8* }*
  store { i64, i8* }* %2337, { i64, i8* }** %2338
  %2339 = alloca i1
  store i1 false, i1* %2339
  %2340 = load %nyx_string*, %nyx_string** %2335
  %2341 = getelementptr [19 x i8], [19 x i8]* @.str91, i32 0, i32 0
  %2342 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str91.c, i8* %2341, i64 18)
  %2343 = call i1 @nyx_string_equals(%nyx_string* %2340, %nyx_string* %2342)
  br i1 %2343, label %sc_and_rhs459, label %sc_and_end460
sc_and_rhs459:
  %2344 = load { i64, i8* }*, { i64, i8* }** %2338
  %2345 = call i64 @nyx_array_length({ i64, i8* }* %2344)
  %2346 = icmp sge i64 %2345, 1
  store i1 %2346, i1* %2339
  br label %sc_and_end460
sc_and_end460:
  %2347 = load i1, i1* %2339
  br i1 %2347, label %then461, label %else462
then461:
  %2348 = load { i64, i8* }*, { i64, i8* }** %2338
  %2349 = call i64 @nyx_array_get_checked({ i64, i8* }* %2348, i64 0, i64 2)
  %2350 = inttoptr i64 %2349 to %nyx_string*
  %2351 = alloca %nyx_string*
  store %nyx_string* %2350, %nyx_string** %2351
  %2352 = load %nyx_string*, %nyx_string** %2351
  %2353 = load %nyx_string*, %nyx_string** %name.ptr
  %2354 = call i1 @nyx_string_equals(%nyx_string* %2352, %nyx_string* %2353)
  ret i1 %2354
else462:
  br label %merge463
merge463:
  %2355 = alloca i1
  store i1 false, i1* %2355
  %2356 = load %nyx_string*, %nyx_string** %2335
  %2357 = getelementptr [14 x i8], [14 x i8]* @.str92, i32 0, i32 0
  %2358 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str92.c, i8* %2357, i64 13)
  %2359 = call i1 @nyx_string_equals(%nyx_string* %2356, %nyx_string* %2358)
  br i1 %2359, label %sc_and_rhs464, label %sc_and_end465
sc_and_rhs464:
  %2360 = load { i64, i8* }*, { i64, i8* }** %2338
  %2361 = call i64 @nyx_array_length({ i64, i8* }* %2360)
  %2362 = icmp sge i64 %2361, 3
  store i1 %2362, i1* %2355
  br label %sc_and_end465
sc_and_end465:
  %2363 = load i1, i1* %2355
  br i1 %2363, label %then466, label %else467
then466:
  %2364 = load { i64, i8* }*, { i64, i8* }** %2338
  %2365 = call i64 @nyx_array_get({ i64, i8* }* %2364, i64 2)
  %2366 = inttoptr i64 %2365 to { i64, i8* }*
  %2367 = alloca { i64, i8* }*
  store { i64, i8* }* %2366, { i64, i8* }** %2367
  %2368 = alloca i64
  store i64 0, i64* %2368
  %2369 = call i8* @llvm.stacksave()
  br label %while_cond469
while_cond469:
  %2370 = load i64, i64* %2368
  %2371 = load { i64, i8* }*, { i64, i8* }** %2367
  %2372 = call i64 @nyx_array_length({ i64, i8* }* %2371)
  %2373 = icmp slt i64 %2370, %2372
  br i1 %2373, label %while_body470, label %while_end471
while_body470:
  call void @llvm.stackrestore(i8* %2369)
  %2374 = load { i64, i8* }*, { i64, i8* }** %2367
  %2375 = load i64, i64* %2368
  %2376 = call i64 @nyx_array_get_checked({ i64, i8* }* %2374, i64 %2375, i64 2)
  %2377 = inttoptr i64 %2376 to %nyx_string*
  %2378 = alloca %nyx_string*
  store %nyx_string* %2377, %nyx_string** %2378
  %2379 = load %nyx_string*, %nyx_string** %2378
  %2380 = load %nyx_string*, %nyx_string** %name.ptr
  %2381 = call i1 @nyx_string_equals(%nyx_string* %2379, %nyx_string* %2380)
  br i1 %2381, label %then472, label %else473
then472:
  ret i1 1
else473:
  br label %merge474
merge474:
  %2382 = load i64, i64* %2368
  %2383 = add i64 %2382, 1
  store i64 %2383, i64* %2368
  br label %while_cond469
while_end471:
  ret i1 0
else467:
  br label %merge468
merge468:
  %2384 = alloca i1
  store i1 false, i1* %2384
  %2385 = load %nyx_string*, %nyx_string** %2335
  %2386 = getelementptr [15 x i8], [15 x i8]* @.str93, i32 0, i32 0
  %2387 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str93.c, i8* %2386, i64 14)
  %2388 = call i1 @nyx_string_equals(%nyx_string* %2385, %nyx_string* %2387)
  br i1 %2388, label %sc_and_rhs475, label %sc_and_end476
sc_and_rhs475:
  %2389 = load { i64, i8* }*, { i64, i8* }** %2338
  %2390 = call i64 @nyx_array_length({ i64, i8* }* %2389)
  %2391 = icmp sge i64 %2390, 2
  store i1 %2391, i1* %2384
  br label %sc_and_end476
sc_and_end476:
  %2392 = load i1, i1* %2384
  br i1 %2392, label %then477, label %else478
then477:
  %2393 = load { i64, i8* }*, { i64, i8* }** %2338
  %2394 = call i64 @nyx_array_get({ i64, i8* }* %2393, i64 1)
  %2395 = inttoptr i64 %2394 to { i64, i8* }*
  %2396 = alloca { i64, i8* }*
  store { i64, i8* }* %2395, { i64, i8* }** %2396
  %2397 = alloca i64
  store i64 0, i64* %2397
  %2398 = call i8* @llvm.stacksave()
  br label %while_cond480
while_cond480:
  %2399 = load i64, i64* %2397
  %2400 = load { i64, i8* }*, { i64, i8* }** %2396
  %2401 = call i64 @nyx_array_length({ i64, i8* }* %2400)
  %2402 = icmp slt i64 %2399, %2401
  br i1 %2402, label %while_body481, label %while_end482
while_body481:
  call void @llvm.stackrestore(i8* %2398)
  %2403 = load { i64, i8* }*, { i64, i8* }** %2396
  %2404 = load i64, i64* %2397
  %2405 = call i64 @nyx_array_get({ i64, i8* }* %2403, i64 %2404)
  %2406 = inttoptr i64 %2405 to { i64, i8* }*
  %2407 = alloca { i64, i8* }*
  store { i64, i8* }* %2406, { i64, i8* }** %2407
  %2408 = load { i64, i8* }*, { i64, i8* }** %2407
  %2409 = call i64 @nyx_array_length({ i64, i8* }* %2408)
  %2410 = icmp sge i64 %2409, 2
  br i1 %2410, label %then483, label %else484
then483:
  %2411 = load { i64, i8* }*, { i64, i8* }** %2407
  %2412 = call i64 @nyx_array_get_checked({ i64, i8* }* %2411, i64 1, i64 2)
  %2413 = inttoptr i64 %2412 to %nyx_string*
  %2414 = alloca %nyx_string*
  store %nyx_string* %2413, %nyx_string** %2414
  %2415 = load %nyx_string*, %nyx_string** %2414
  %2416 = load %nyx_string*, %nyx_string** %name.ptr
  %2417 = call i1 @nyx_string_equals(%nyx_string* %2415, %nyx_string* %2416)
  br i1 %2417, label %then486, label %else487
then486:
  ret i1 1
else487:
  br label %merge488
merge488:
  br label %merge485
else484:
  br label %merge485
merge485:
  %2418 = load i64, i64* %2397
  %2419 = add i64 %2418, 1
  store i64 %2419, i64* %2397
  br label %while_cond480
while_end482:
  ret i1 0
else478:
  br label %merge479
merge479:
  %2420 = alloca i1
  store i1 false, i1* %2420
  %2421 = load %nyx_string*, %nyx_string** %2335
  %2422 = getelementptr [21 x i8], [21 x i8]* @.str94, i32 0, i32 0
  %2423 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str94.c, i8* %2422, i64 20)
  %2424 = call i1 @nyx_string_equals(%nyx_string* %2421, %nyx_string* %2423)
  br i1 %2424, label %sc_and_rhs489, label %sc_and_end490
sc_and_rhs489:
  %2425 = load { i64, i8* }*, { i64, i8* }** %2338
  %2426 = call i64 @nyx_array_length({ i64, i8* }* %2425)
  %2427 = icmp sge i64 %2426, 3
  store i1 %2427, i1* %2420
  br label %sc_and_end490
sc_and_end490:
  %2428 = load i1, i1* %2420
  br i1 %2428, label %then491, label %else492
then491:
  %2429 = load { i64, i8* }*, { i64, i8* }** %2338
  %2430 = call i64 @nyx_array_get({ i64, i8* }* %2429, i64 2)
  %2431 = inttoptr i64 %2430 to { i64, i8* }*
  %2432 = alloca { i64, i8* }*
  store { i64, i8* }* %2431, { i64, i8* }** %2432
  %2433 = alloca i64
  store i64 0, i64* %2433
  %2434 = call i8* @llvm.stacksave()
  br label %while_cond494
while_cond494:
  %2435 = load i64, i64* %2433
  %2436 = load { i64, i8* }*, { i64, i8* }** %2432
  %2437 = call i64 @nyx_array_length({ i64, i8* }* %2436)
  %2438 = icmp slt i64 %2435, %2437
  br i1 %2438, label %while_body495, label %while_end496
while_body495:
  call void @llvm.stackrestore(i8* %2434)
  %2439 = load { i64, i8* }*, { i64, i8* }** %2432
  %2440 = load i64, i64* %2433
  %2441 = call i64 @nyx_array_get({ i64, i8* }* %2439, i64 %2440)
  %2442 = inttoptr i64 %2441 to { i64, i8* }*
  %2443 = call i64 @nyx_array_get({ i64, i8* }* %2442, i64 0)
  %2444 = call i64 @nyx_array_get({ i64, i8* }* %2442, i64 1)
  %2445 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %2442, i64 2)
  %2446 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %2442, i64 3)
  %2447 = inttoptr i64 %2443 to %nyx_string*
  %2448 = inttoptr i64 %2444 to { i64, i8* }*
  %2449 = alloca %ASTNode
  %2450 = getelementptr inbounds %ASTNode, %ASTNode* %2449, i32 0, i32 0
  store %nyx_string* %2447, %nyx_string** %2450
  %2451 = getelementptr inbounds %ASTNode, %ASTNode* %2449, i32 0, i32 1
  store { i64, i8* }* %2448, { i64, i8* }** %2451
  %2452 = getelementptr inbounds %ASTNode, %ASTNode* %2449, i32 0, i32 2
  store i64 %2445, i64* %2452
  %2453 = getelementptr inbounds %ASTNode, %ASTNode* %2449, i32 0, i32 3
  store i64 %2446, i64* %2453
  %2454 = load %ASTNode, %ASTNode* %2449
  %2455 = alloca %ASTNode
  store %ASTNode %2454, %ASTNode* %2455
  %2456 = load %ASTNode, %ASTNode* %2455
  %2457 = load %nyx_string*, %nyx_string** %name.ptr
  %2458 = call i1 @licm_patron_ata(%ASTNode %2456, %nyx_string* %2457)
  br i1 %2458, label %then497, label %else498
then497:
  ret i1 1
else498:
  br label %merge499
merge499:
  %2459 = load i64, i64* %2433
  %2460 = add i64 %2459, 1
  store i64 %2460, i64* %2433
  br label %while_cond494
while_end496:
  ret i1 0
else492:
  br label %merge493
merge493:
  %2461 = load %nyx_string*, %nyx_string** %2335
  %2462 = getelementptr [11 x i8], [11 x i8]* @.str95, i32 0, i32 0
  %2463 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str95.c, i8* %2462, i64 10)
  %2464 = call i1 @nyx_string_equals(%nyx_string* %2461, %nyx_string* %2463)
  br i1 %2464, label %then500, label %else501
then500:
  %2465 = alloca i64
  store i64 0, i64* %2465
  %2466 = call i8* @llvm.stacksave()
  br label %while_cond503
while_cond503:
  %2467 = load i64, i64* %2465
  %2468 = load { i64, i8* }*, { i64, i8* }** %2338
  %2469 = call i64 @nyx_array_length({ i64, i8* }* %2468)
  %2470 = icmp slt i64 %2467, %2469
  br i1 %2470, label %while_body504, label %while_end505
while_body504:
  call void @llvm.stackrestore(i8* %2466)
  %2471 = load { i64, i8* }*, { i64, i8* }** %2338
  %2472 = load i64, i64* %2465
  %2473 = call i64 @nyx_array_get({ i64, i8* }* %2471, i64 %2472)
  %2474 = inttoptr i64 %2473 to { i64, i8* }*
  %2475 = call i64 @nyx_array_get({ i64, i8* }* %2474, i64 0)
  %2476 = call i64 @nyx_array_get({ i64, i8* }* %2474, i64 1)
  %2477 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %2474, i64 2)
  %2478 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %2474, i64 3)
  %2479 = inttoptr i64 %2475 to %nyx_string*
  %2480 = inttoptr i64 %2476 to { i64, i8* }*
  %2481 = alloca %ASTNode
  %2482 = getelementptr inbounds %ASTNode, %ASTNode* %2481, i32 0, i32 0
  store %nyx_string* %2479, %nyx_string** %2482
  %2483 = getelementptr inbounds %ASTNode, %ASTNode* %2481, i32 0, i32 1
  store { i64, i8* }* %2480, { i64, i8* }** %2483
  %2484 = getelementptr inbounds %ASTNode, %ASTNode* %2481, i32 0, i32 2
  store i64 %2477, i64* %2484
  %2485 = getelementptr inbounds %ASTNode, %ASTNode* %2481, i32 0, i32 3
  store i64 %2478, i64* %2485
  %2486 = load %ASTNode, %ASTNode* %2481
  %2487 = alloca %ASTNode
  store %ASTNode %2486, %ASTNode* %2487
  %2488 = load %ASTNode, %ASTNode* %2487
  %2489 = load %nyx_string*, %nyx_string** %name.ptr
  %2490 = call i1 @licm_patron_ata(%ASTNode %2488, %nyx_string* %2489)
  br i1 %2490, label %then506, label %else507
then506:
  ret i1 1
else507:
  br label %merge508
merge508:
  %2491 = load i64, i64* %2465
  %2492 = add i64 %2491, 1
  store i64 %2492, i64* %2465
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
  store { i64, i8* }* %body.param, { i64, i8* }** %body.ptr
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %2493 = load { i64, i8* }*, { i64, i8* }** %body.ptr
  %2494 = call %ASTNode @licm_root_of({ i64, i8* }* %2493)
  %2495 = alloca %ASTNode
  store %ASTNode %2494, %ASTNode* %2495
  %2496 = getelementptr %ASTNode, %ASTNode* %2495, i32 0, i32 0
  %2497 = load %nyx_string*, %nyx_string** %2496
  %2498 = alloca %nyx_string*
  store %nyx_string* %2497, %nyx_string** %2498
  %2499 = getelementptr %ASTNode, %ASTNode* %2495, i32 0, i32 1
  %2500 = load { i64, i8* }*, { i64, i8* }** %2499
  %2501 = alloca { i64, i8* }*
  store { i64, i8* }* %2500, { i64, i8* }** %2501
  %2502 = alloca i1
  store i1 true, i1* %2502
  %2503 = alloca i1
  store i1 true, i1* %2503
  %2504 = alloca i1
  store i1 true, i1* %2504
  %2505 = load %nyx_string*, %nyx_string** %2498
  %2506 = getelementptr [9 x i8], [9 x i8]* @.str96, i32 0, i32 0
  %2507 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str96.c, i8* %2506, i64 8)
  %2508 = call i1 @nyx_string_equals(%nyx_string* %2505, %nyx_string* %2507)
  br i1 %2508, label %sc_or_end510, label %sc_or_rhs509
sc_or_rhs509:
  %2509 = load %nyx_string*, %nyx_string** %2498
  %2510 = getelementptr [9 x i8], [9 x i8]* @.str97, i32 0, i32 0
  %2511 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str97.c, i8* %2510, i64 8)
  %2512 = call i1 @nyx_string_equals(%nyx_string* %2509, %nyx_string* %2511)
  store i1 %2512, i1* %2504
  br label %sc_or_end510
sc_or_end510:
  %2513 = load i1, i1* %2504
  br i1 %2513, label %sc_or_end512, label %sc_or_rhs511
sc_or_rhs511:
  %2514 = load %nyx_string*, %nyx_string** %2498
  %2515 = getelementptr [7 x i8], [7 x i8]* @.str98, i32 0, i32 0
  %2516 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str98.c, i8* %2515, i64 6)
  %2517 = call i1 @nyx_string_equals(%nyx_string* %2514, %nyx_string* %2516)
  store i1 %2517, i1* %2503
  br label %sc_or_end512
sc_or_end512:
  %2518 = load i1, i1* %2503
  br i1 %2518, label %sc_or_end514, label %sc_or_rhs513
sc_or_rhs513:
  %2519 = load %nyx_string*, %nyx_string** %2498
  %2520 = getelementptr [8 x i8], [8 x i8]* @.str99, i32 0, i32 0
  %2521 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str99.c, i8* %2520, i64 7)
  %2522 = call i1 @nyx_string_equals(%nyx_string* %2519, %nyx_string* %2521)
  store i1 %2522, i1* %2502
  br label %sc_or_end514
sc_or_end514:
  %2523 = load i1, i1* %2502
  br i1 %2523, label %then515, label %else516
then515:
  ret i1 0
else516:
  br label %merge517
merge517:
  %2524 = alloca i1
  store i1 false, i1* %2524
  %2525 = load %nyx_string*, %nyx_string** %2498
  %2526 = getelementptr [4 x i8], [4 x i8]* @.str100, i32 0, i32 0
  %2527 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str100.c, i8* %2526, i64 3)
  %2528 = call i1 @nyx_string_equals(%nyx_string* %2525, %nyx_string* %2527)
  br i1 %2528, label %sc_and_rhs518, label %sc_and_end519
sc_and_rhs518:
  %2529 = load { i64, i8* }*, { i64, i8* }** %2501
  %2530 = call i64 @nyx_array_length({ i64, i8* }* %2529)
  %2531 = icmp sge i64 %2530, 1
  store i1 %2531, i1* %2524
  br label %sc_and_end519
sc_and_end519:
  %2532 = load i1, i1* %2524
  br i1 %2532, label %then520, label %else521
then520:
  %2533 = load { i64, i8* }*, { i64, i8* }** %2501
  %2534 = call i64 @nyx_array_get({ i64, i8* }* %2533, i64 0)
  %2535 = inttoptr i64 %2534 to { i64, i8* }*
  %2536 = alloca { i64, i8* }*
  store { i64, i8* }* %2535, { i64, i8* }** %2536
  %2537 = load { i64, i8* }*, { i64, i8* }** %2536
  %2538 = call i64 @nyx_array_get_checked({ i64, i8* }* %2537, i64 0, i64 2)
  %2539 = inttoptr i64 %2538 to %nyx_string*
  %2540 = alloca %nyx_string*
  store %nyx_string* %2539, %nyx_string** %2540
  %2541 = load %nyx_string*, %nyx_string** %2540
  %2542 = load %nyx_string*, %nyx_string** %name.ptr
  %2543 = call i1 @nyx_string_equals(%nyx_string* %2541, %nyx_string* %2542)
  br i1 %2543, label %then523, label %else524
then523:
  ret i1 1
else524:
  br label %merge525
merge525:
  br label %merge522
else521:
  br label %merge522
merge522:
  %2544 = alloca i1
  store i1 false, i1* %2544
  %2545 = load %nyx_string*, %nyx_string** %2498
  %2546 = getelementptr [7 x i8], [7 x i8]* @.str101, i32 0, i32 0
  %2547 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str101.c, i8* %2546, i64 6)
  %2548 = call i1 @nyx_string_equals(%nyx_string* %2545, %nyx_string* %2547)
  br i1 %2548, label %sc_and_rhs526, label %sc_and_end527
sc_and_rhs526:
  %2549 = load { i64, i8* }*, { i64, i8* }** %2501
  %2550 = call i64 @nyx_array_length({ i64, i8* }* %2549)
  %2551 = icmp sge i64 %2550, 1
  store i1 %2551, i1* %2544
  br label %sc_and_end527
sc_and_end527:
  %2552 = load i1, i1* %2544
  br i1 %2552, label %then528, label %else529
then528:
  %2553 = load { i64, i8* }*, { i64, i8* }** %2501
  %2554 = call i64 @nyx_array_get({ i64, i8* }* %2553, i64 0)
  %2555 = inttoptr i64 %2554 to { i64, i8* }*
  %2556 = alloca { i64, i8* }*
  store { i64, i8* }* %2555, { i64, i8* }** %2556
  %2557 = load { i64, i8* }*, { i64, i8* }** %2556
  %2558 = call i64 @nyx_array_get_checked({ i64, i8* }* %2557, i64 0, i64 2)
  %2559 = inttoptr i64 %2558 to %nyx_string*
  %2560 = alloca %nyx_string*
  store %nyx_string* %2559, %nyx_string** %2560
  %2561 = load %nyx_string*, %nyx_string** %2560
  %2562 = load %nyx_string*, %nyx_string** %name.ptr
  %2563 = call i1 @nyx_string_equals(%nyx_string* %2561, %nyx_string* %2562)
  br i1 %2563, label %then531, label %else532
then531:
  ret i1 1
else532:
  br label %merge533
merge533:
  br label %merge530
else529:
  br label %merge530
merge530:
  %2564 = alloca i1
  store i1 false, i1* %2564
  %2565 = load %nyx_string*, %nyx_string** %2498
  %2566 = getelementptr [22 x i8], [22 x i8]* @.str102, i32 0, i32 0
  %2567 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str102.c, i8* %2566, i64 21)
  %2568 = call i1 @nyx_string_equals(%nyx_string* %2565, %nyx_string* %2567)
  br i1 %2568, label %sc_and_rhs534, label %sc_and_end535
sc_and_rhs534:
  %2569 = load { i64, i8* }*, { i64, i8* }** %2501
  %2570 = call i64 @nyx_array_length({ i64, i8* }* %2569)
  %2571 = icmp sge i64 %2570, 1
  store i1 %2571, i1* %2564
  br label %sc_and_end535
sc_and_end535:
  %2572 = load i1, i1* %2564
  br i1 %2572, label %then536, label %else537
then536:
  %2573 = load { i64, i8* }*, { i64, i8* }** %2501
  %2574 = call i64 @nyx_array_get({ i64, i8* }* %2573, i64 0)
  %2575 = inttoptr i64 %2574 to { i64, i8* }*
  %2576 = alloca { i64, i8* }*
  store { i64, i8* }* %2575, { i64, i8* }** %2576
  %2577 = alloca i64
  store i64 0, i64* %2577
  %2578 = call i8* @llvm.stacksave()
  br label %while_cond539
while_cond539:
  %2579 = load i64, i64* %2577
  %2580 = load { i64, i8* }*, { i64, i8* }** %2576
  %2581 = call i64 @nyx_array_length({ i64, i8* }* %2580)
  %2582 = icmp slt i64 %2579, %2581
  br i1 %2582, label %while_body540, label %while_end541
while_body540:
  call void @llvm.stackrestore(i8* %2578)
  %2583 = load { i64, i8* }*, { i64, i8* }** %2576
  %2584 = load i64, i64* %2577
  %2585 = call i64 @nyx_array_get_checked({ i64, i8* }* %2583, i64 %2584, i64 2)
  %2586 = inttoptr i64 %2585 to %nyx_string*
  %2587 = alloca %nyx_string*
  store %nyx_string* %2586, %nyx_string** %2587
  %2588 = load %nyx_string*, %nyx_string** %2587
  %2589 = load %nyx_string*, %nyx_string** %name.ptr
  %2590 = call i1 @nyx_string_equals(%nyx_string* %2588, %nyx_string* %2589)
  br i1 %2590, label %then542, label %else543
then542:
  ret i1 1
else543:
  br label %merge544
merge544:
  %2591 = load i64, i64* %2577
  %2592 = add i64 %2591, 1
  store i64 %2592, i64* %2577
  br label %while_cond539
while_end541:
  br label %merge538
else537:
  br label %merge538
merge538:
  %2593 = alloca i1
  store i1 false, i1* %2593
  %2594 = load %nyx_string*, %nyx_string** %2498
  %2595 = getelementptr [4 x i8], [4 x i8]* @.str103, i32 0, i32 0
  %2596 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str103.c, i8* %2595, i64 3)
  %2597 = call i1 @nyx_string_equals(%nyx_string* %2594, %nyx_string* %2596)
  br i1 %2597, label %sc_and_rhs545, label %sc_and_end546
sc_and_rhs545:
  %2598 = load { i64, i8* }*, { i64, i8* }** %2501
  %2599 = call i64 @nyx_array_length({ i64, i8* }* %2598)
  %2600 = icmp sge i64 %2599, 1
  store i1 %2600, i1* %2593
  br label %sc_and_end546
sc_and_end546:
  %2601 = load i1, i1* %2593
  br i1 %2601, label %then547, label %else548
then547:
  %2602 = load { i64, i8* }*, { i64, i8* }** %2501
  %2603 = call i64 @nyx_array_get_checked({ i64, i8* }* %2602, i64 0, i64 2)
  %2604 = inttoptr i64 %2603 to %nyx_string*
  %2605 = alloca %nyx_string*
  store %nyx_string* %2604, %nyx_string** %2605
  %2606 = load %nyx_string*, %nyx_string** %2605
  %2607 = load %nyx_string*, %nyx_string** %name.ptr
  %2608 = call i1 @nyx_string_equals(%nyx_string* %2606, %nyx_string* %2607)
  br i1 %2608, label %then550, label %else551
then550:
  ret i1 1
else551:
  br label %merge552
merge552:
  br label %merge549
else548:
  br label %merge549
merge549:
  %2609 = alloca i1
  store i1 false, i1* %2609
  %2610 = load %nyx_string*, %nyx_string** %2498
  %2611 = getelementptr [10 x i8], [10 x i8]* @.str104, i32 0, i32 0
  %2612 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str104.c, i8* %2611, i64 9)
  %2613 = call i1 @nyx_string_equals(%nyx_string* %2610, %nyx_string* %2612)
  br i1 %2613, label %sc_and_rhs553, label %sc_and_end554
sc_and_rhs553:
  %2614 = load { i64, i8* }*, { i64, i8* }** %2501
  %2615 = call i64 @nyx_array_length({ i64, i8* }* %2614)
  %2616 = icmp sge i64 %2615, 1
  store i1 %2616, i1* %2609
  br label %sc_and_end554
sc_and_end554:
  %2617 = load i1, i1* %2609
  br i1 %2617, label %then555, label %else556
then555:
  %2618 = load %ASTNode, %ASTNode* %2495
  %2619 = call %ASTNode @licm_node_at(%ASTNode %2618, i64 0)
  %2620 = alloca %ASTNode
  store %ASTNode %2619, %ASTNode* %2620
  %2621 = load %ASTNode, %ASTNode* %2620
  %2622 = load %nyx_string*, %nyx_string** %name.ptr
  %2623 = call i1 @licm_patron_ata(%ASTNode %2621, %nyx_string* %2622)
  br i1 %2623, label %then558, label %else559
then558:
  ret i1 1
else559:
  br label %merge560
merge560:
  br label %merge557
else556:
  br label %merge557
merge557:
  %2624 = alloca i1
  store i1 false, i1* %2624
  %2625 = load %nyx_string*, %nyx_string** %2498
  %2626 = getelementptr [6 x i8], [6 x i8]* @.str105, i32 0, i32 0
  %2627 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str105.c, i8* %2626, i64 5)
  %2628 = call i1 @nyx_string_equals(%nyx_string* %2625, %nyx_string* %2627)
  br i1 %2628, label %sc_and_rhs561, label %sc_and_end562
sc_and_rhs561:
  %2629 = load { i64, i8* }*, { i64, i8* }** %2501
  %2630 = call i64 @nyx_array_length({ i64, i8* }* %2629)
  %2631 = icmp sge i64 %2630, 2
  store i1 %2631, i1* %2624
  br label %sc_and_end562
sc_and_end562:
  %2632 = load i1, i1* %2624
  br i1 %2632, label %then563, label %else564
then563:
  %2633 = load %ASTNode, %ASTNode* %2495
  %2634 = call { i64, i8* }* @licm_array_at(%ASTNode %2633, i64 1)
  %2635 = alloca { i64, i8* }*
  store { i64, i8* }* %2634, { i64, i8* }** %2635
  %2636 = alloca i64
  store i64 0, i64* %2636
  %2637 = call i8* @llvm.stacksave()
  br label %while_cond566
while_cond566:
  %2638 = load i64, i64* %2636
  %2639 = load { i64, i8* }*, { i64, i8* }** %2635
  %2640 = call i64 @nyx_array_length({ i64, i8* }* %2639)
  %2641 = icmp slt i64 %2638, %2640
  br i1 %2641, label %while_body567, label %while_end568
while_body567:
  call void @llvm.stackrestore(i8* %2637)
  %2642 = load { i64, i8* }*, { i64, i8* }** %2635
  %2643 = load i64, i64* %2636
  %2644 = call i64 @nyx_array_get({ i64, i8* }* %2642, i64 %2643)
  %2645 = inttoptr i64 %2644 to { i64, i8* }*
  %2646 = call i64 @nyx_array_get({ i64, i8* }* %2645, i64 0)
  %2647 = call i64 @nyx_array_get({ i64, i8* }* %2645, i64 1)
  %2648 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %2645, i64 2)
  %2649 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %2645, i64 3)
  %2650 = inttoptr i64 %2646 to %nyx_string*
  %2651 = inttoptr i64 %2647 to { i64, i8* }*
  %2652 = alloca %ASTNode
  %2653 = getelementptr inbounds %ASTNode, %ASTNode* %2652, i32 0, i32 0
  store %nyx_string* %2650, %nyx_string** %2653
  %2654 = getelementptr inbounds %ASTNode, %ASTNode* %2652, i32 0, i32 1
  store { i64, i8* }* %2651, { i64, i8* }** %2654
  %2655 = getelementptr inbounds %ASTNode, %ASTNode* %2652, i32 0, i32 2
  store i64 %2648, i64* %2655
  %2656 = getelementptr inbounds %ASTNode, %ASTNode* %2652, i32 0, i32 3
  store i64 %2649, i64* %2656
  %2657 = load %ASTNode, %ASTNode* %2652
  %2658 = alloca %ASTNode
  store %ASTNode %2657, %ASTNode* %2658
  %2659 = getelementptr %ASTNode, %ASTNode* %2658, i32 0, i32 1
  %2660 = load { i64, i8* }*, { i64, i8* }** %2659
  %2661 = alloca { i64, i8* }*
  store { i64, i8* }* %2660, { i64, i8* }** %2661
  %2662 = load { i64, i8* }*, { i64, i8* }** %2661
  %2663 = call i64 @nyx_array_length({ i64, i8* }* %2662)
  %2664 = icmp sge i64 %2663, 1
  br i1 %2664, label %then569, label %else570
then569:
  %2665 = load %ASTNode, %ASTNode* %2658
  %2666 = call %ASTNode @licm_node_at(%ASTNode %2665, i64 0)
  %2667 = alloca %ASTNode
  store %ASTNode %2666, %ASTNode* %2667
  %2668 = load %ASTNode, %ASTNode* %2667
  %2669 = load %nyx_string*, %nyx_string** %name.ptr
  %2670 = call i1 @licm_patron_ata(%ASTNode %2668, %nyx_string* %2669)
  br i1 %2670, label %then572, label %else573
then572:
  ret i1 1
else573:
  br label %merge574
merge574:
  br label %merge571
else570:
  br label %merge571
merge571:
  %2671 = load i64, i64* %2636
  %2672 = add i64 %2671, 1
  store i64 %2672, i64* %2636
  br label %while_cond566
while_end568:
  br label %merge565
else564:
  br label %merge565
merge565:
  %2673 = load %ASTNode, %ASTNode* %2495
  %2674 = call { i64, i8* }* @licm_children(%ASTNode %2673)
  %2675 = alloca { i64, i8* }*
  store { i64, i8* }* %2674, { i64, i8* }** %2675
  %2676 = alloca i64
  store i64 0, i64* %2676
  %2677 = call i8* @llvm.stacksave()
  br label %while_cond575
while_cond575:
  %2678 = load i64, i64* %2676
  %2679 = load { i64, i8* }*, { i64, i8* }** %2675
  %2680 = call i64 @nyx_array_length({ i64, i8* }* %2679)
  %2681 = icmp slt i64 %2678, %2680
  br i1 %2681, label %while_body576, label %while_end577
while_body576:
  call void @llvm.stackrestore(i8* %2677)
  %2682 = load { i64, i8* }*, { i64, i8* }** %2675
  %2683 = load i64, i64* %2676
  %2684 = call i64 @nyx_array_get({ i64, i8* }* %2682, i64 %2683)
  %2685 = inttoptr i64 %2684 to { i64, i8* }*
  %2686 = alloca { i64, i8* }*
  store { i64, i8* }* %2685, { i64, i8* }** %2686
  %2687 = load { i64, i8* }*, { i64, i8* }** %2686
  %2688 = load %nyx_string*, %nyx_string** %name.ptr
  %2689 = call i1 @for_cuerpo_reata({ i64, i8* }* %2687, %nyx_string* %2688)
  br i1 %2689, label %then578, label %else579
then578:
  ret i1 1
else579:
  br label %merge580
merge580:
  %2690 = load i64, i64* %2676
  %2691 = add i64 %2690, 1
  store i64 %2691, i64* %2676
  br label %while_cond575
while_end577:
  ret i1 0
}

define internal i1 @licm_metodo_muta(
%nyx_string* %m.param) {
  %m.ptr = alloca %nyx_string*
  store %nyx_string* %m.param, %nyx_string** %m.ptr
  %2692 = alloca i1
  store i1 true, i1* %2692
  %2693 = alloca i1
  store i1 true, i1* %2693
  %2694 = alloca i1
  store i1 true, i1* %2694
  %2695 = alloca i1
  store i1 true, i1* %2695
  %2696 = load %nyx_string*, %nyx_string** %m.ptr
  %2697 = getelementptr [5 x i8], [5 x i8]* @.str106, i32 0, i32 0
  %2698 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str106.c, i8* %2697, i64 4)
  %2699 = call i1 @nyx_string_equals(%nyx_string* %2696, %nyx_string* %2698)
  br i1 %2699, label %sc_or_end582, label %sc_or_rhs581
sc_or_rhs581:
  %2700 = load %nyx_string*, %nyx_string** %m.ptr
  %2701 = getelementptr [4 x i8], [4 x i8]* @.str107, i32 0, i32 0
  %2702 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str107.c, i8* %2701, i64 3)
  %2703 = call i1 @nyx_string_equals(%nyx_string* %2700, %nyx_string* %2702)
  store i1 %2703, i1* %2695
  br label %sc_or_end582
sc_or_end582:
  %2704 = load i1, i1* %2695
  br i1 %2704, label %sc_or_end584, label %sc_or_rhs583
sc_or_rhs583:
  %2705 = load %nyx_string*, %nyx_string** %m.ptr
  %2706 = getelementptr [4 x i8], [4 x i8]* @.str108, i32 0, i32 0
  %2707 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str108.c, i8* %2706, i64 3)
  %2708 = call i1 @nyx_string_equals(%nyx_string* %2705, %nyx_string* %2707)
  store i1 %2708, i1* %2694
  br label %sc_or_end584
sc_or_end584:
  %2709 = load i1, i1* %2694
  br i1 %2709, label %sc_or_end586, label %sc_or_rhs585
sc_or_rhs585:
  %2710 = load %nyx_string*, %nyx_string** %m.ptr
  %2711 = getelementptr [7 x i8], [7 x i8]* @.str109, i32 0, i32 0
  %2712 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str109.c, i8* %2711, i64 6)
  %2713 = call i1 @nyx_string_equals(%nyx_string* %2710, %nyx_string* %2712)
  store i1 %2713, i1* %2693
  br label %sc_or_end586
sc_or_end586:
  %2714 = load i1, i1* %2693
  br i1 %2714, label %sc_or_end588, label %sc_or_rhs587
sc_or_rhs587:
  %2715 = load %nyx_string*, %nyx_string** %m.ptr
  %2716 = getelementptr [7 x i8], [7 x i8]* @.str110, i32 0, i32 0
  %2717 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str110.c, i8* %2716, i64 6)
  %2718 = call i1 @nyx_string_equals(%nyx_string* %2715, %nyx_string* %2717)
  store i1 %2718, i1* %2692
  br label %sc_or_end588
sc_or_end588:
  %2719 = load i1, i1* %2692
  br i1 %2719, label %then589, label %else590
then589:
  ret i1 1
else590:
  br label %merge591
merge591:
  %2720 = alloca i1
  store i1 true, i1* %2720
  %2721 = alloca i1
  store i1 true, i1* %2721
  %2722 = alloca i1
  store i1 true, i1* %2722
  %2723 = alloca i1
  store i1 true, i1* %2723
  %2724 = load %nyx_string*, %nyx_string** %m.ptr
  %2725 = getelementptr [6 x i8], [6 x i8]* @.str111, i32 0, i32 0
  %2726 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str111.c, i8* %2725, i64 5)
  %2727 = call i1 @nyx_string_equals(%nyx_string* %2724, %nyx_string* %2726)
  br i1 %2727, label %sc_or_end593, label %sc_or_rhs592
sc_or_rhs592:
  %2728 = load %nyx_string*, %nyx_string** %m.ptr
  %2729 = getelementptr [5 x i8], [5 x i8]* @.str112, i32 0, i32 0
  %2730 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str112.c, i8* %2729, i64 4)
  %2731 = call i1 @nyx_string_equals(%nyx_string* %2728, %nyx_string* %2730)
  store i1 %2731, i1* %2723
  br label %sc_or_end593
sc_or_end593:
  %2732 = load i1, i1* %2723
  br i1 %2732, label %sc_or_end595, label %sc_or_rhs594
sc_or_rhs594:
  %2733 = load %nyx_string*, %nyx_string** %m.ptr
  %2734 = getelementptr [8 x i8], [8 x i8]* @.str113, i32 0, i32 0
  %2735 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str113.c, i8* %2734, i64 7)
  %2736 = call i1 @nyx_string_equals(%nyx_string* %2733, %nyx_string* %2735)
  store i1 %2736, i1* %2722
  br label %sc_or_end595
sc_or_end595:
  %2737 = load i1, i1* %2722
  br i1 %2737, label %sc_or_end597, label %sc_or_rhs596
sc_or_rhs596:
  %2738 = load %nyx_string*, %nyx_string** %m.ptr
  %2739 = getelementptr [8 x i8], [8 x i8]* @.str114, i32 0, i32 0
  %2740 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str114.c, i8* %2739, i64 7)
  %2741 = call i1 @nyx_string_equals(%nyx_string* %2738, %nyx_string* %2740)
  store i1 %2741, i1* %2721
  br label %sc_or_end597
sc_or_end597:
  %2742 = load i1, i1* %2721
  br i1 %2742, label %sc_or_end599, label %sc_or_rhs598
sc_or_rhs598:
  %2743 = load %nyx_string*, %nyx_string** %m.ptr
  %2744 = getelementptr [8 x i8], [8 x i8]* @.str115, i32 0, i32 0
  %2745 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str115.c, i8* %2744, i64 7)
  %2746 = call i1 @nyx_string_equals(%nyx_string* %2743, %nyx_string* %2745)
  store i1 %2746, i1* %2720
  br label %sc_or_end599
sc_or_end599:
  %2747 = load i1, i1* %2720
  br i1 %2747, label %then600, label %else601
then600:
  ret i1 1
else601:
  br label %merge602
merge602:
  %2748 = alloca i1
  store i1 true, i1* %2748
  %2749 = alloca i1
  store i1 true, i1* %2749
  %2750 = alloca i1
  store i1 true, i1* %2750
  %2751 = alloca i1
  store i1 true, i1* %2751
  %2752 = load %nyx_string*, %nyx_string** %m.ptr
  %2753 = getelementptr [6 x i8], [6 x i8]* @.str116, i32 0, i32 0
  %2754 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str116.c, i8* %2753, i64 5)
  %2755 = call i1 @nyx_string_equals(%nyx_string* %2752, %nyx_string* %2754)
  br i1 %2755, label %sc_or_end604, label %sc_or_rhs603
sc_or_rhs603:
  %2756 = load %nyx_string*, %nyx_string** %m.ptr
  %2757 = getelementptr [7 x i8], [7 x i8]* @.str117, i32 0, i32 0
  %2758 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str117.c, i8* %2757, i64 6)
  %2759 = call i1 @nyx_string_equals(%nyx_string* %2756, %nyx_string* %2758)
  store i1 %2759, i1* %2751
  br label %sc_or_end604
sc_or_end604:
  %2760 = load i1, i1* %2751
  br i1 %2760, label %sc_or_end606, label %sc_or_rhs605
sc_or_rhs605:
  %2761 = load %nyx_string*, %nyx_string** %m.ptr
  %2762 = getelementptr [9 x i8], [9 x i8]* @.str118, i32 0, i32 0
  %2763 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str118.c, i8* %2762, i64 8)
  %2764 = call i1 @nyx_string_equals(%nyx_string* %2761, %nyx_string* %2763)
  store i1 %2764, i1* %2750
  br label %sc_or_end606
sc_or_end606:
  %2765 = load i1, i1* %2750
  br i1 %2765, label %sc_or_end608, label %sc_or_rhs607
sc_or_rhs607:
  %2766 = load %nyx_string*, %nyx_string** %m.ptr
  %2767 = getelementptr [5 x i8], [5 x i8]* @.str119, i32 0, i32 0
  %2768 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str119.c, i8* %2767, i64 4)
  %2769 = call i1 @nyx_string_equals(%nyx_string* %2766, %nyx_string* %2768)
  store i1 %2769, i1* %2749
  br label %sc_or_end608
sc_or_end608:
  %2770 = load i1, i1* %2749
  br i1 %2770, label %sc_or_end610, label %sc_or_rhs609
sc_or_rhs609:
  %2771 = load %nyx_string*, %nyx_string** %m.ptr
  %2772 = getelementptr [7 x i8], [7 x i8]* @.str120, i32 0, i32 0
  %2773 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str120.c, i8* %2772, i64 6)
  %2774 = call i1 @nyx_string_equals(%nyx_string* %2771, %nyx_string* %2773)
  store i1 %2774, i1* %2748
  br label %sc_or_end610
sc_or_end610:
  %2775 = load i1, i1* %2748
  br i1 %2775, label %then611, label %else612
then611:
  ret i1 1
else612:
  br label %merge613
merge613:
  %2776 = alloca i1
  store i1 true, i1* %2776
  %2777 = alloca i1
  store i1 true, i1* %2777
  %2778 = alloca i1
  store i1 true, i1* %2778
  %2779 = alloca i1
  store i1 true, i1* %2779
  %2780 = load %nyx_string*, %nyx_string** %m.ptr
  %2781 = getelementptr [6 x i8], [6 x i8]* @.str121, i32 0, i32 0
  %2782 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str121.c, i8* %2781, i64 5)
  %2783 = call i1 @nyx_string_equals(%nyx_string* %2780, %nyx_string* %2782)
  br i1 %2783, label %sc_or_end615, label %sc_or_rhs614
sc_or_rhs614:
  %2784 = load %nyx_string*, %nyx_string** %m.ptr
  %2785 = getelementptr [5 x i8], [5 x i8]* @.str122, i32 0, i32 0
  %2786 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str122.c, i8* %2785, i64 4)
  %2787 = call i1 @nyx_string_equals(%nyx_string* %2784, %nyx_string* %2786)
  store i1 %2787, i1* %2779
  br label %sc_or_end615
sc_or_end615:
  %2788 = load i1, i1* %2779
  br i1 %2788, label %sc_or_end617, label %sc_or_rhs616
sc_or_rhs616:
  %2789 = load %nyx_string*, %nyx_string** %m.ptr
  %2790 = getelementptr [7 x i8], [7 x i8]* @.str123, i32 0, i32 0
  %2791 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str123.c, i8* %2790, i64 6)
  %2792 = call i1 @nyx_string_equals(%nyx_string* %2789, %nyx_string* %2791)
  store i1 %2792, i1* %2778
  br label %sc_or_end617
sc_or_end617:
  %2793 = load i1, i1* %2778
  br i1 %2793, label %sc_or_end619, label %sc_or_rhs618
sc_or_rhs618:
  %2794 = load %nyx_string*, %nyx_string** %m.ptr
  %2795 = getelementptr [6 x i8], [6 x i8]* @.str124, i32 0, i32 0
  %2796 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str124.c, i8* %2795, i64 5)
  %2797 = call i1 @nyx_string_equals(%nyx_string* %2794, %nyx_string* %2796)
  store i1 %2797, i1* %2777
  br label %sc_or_end619
sc_or_end619:
  %2798 = load i1, i1* %2777
  br i1 %2798, label %sc_or_end621, label %sc_or_rhs620
sc_or_rhs620:
  %2799 = load %nyx_string*, %nyx_string** %m.ptr
  %2800 = getelementptr [7 x i8], [7 x i8]* @.str125, i32 0, i32 0
  %2801 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str125.c, i8* %2800, i64 6)
  %2802 = call i1 @nyx_string_equals(%nyx_string* %2799, %nyx_string* %2801)
  store i1 %2802, i1* %2776
  br label %sc_or_end621
sc_or_end621:
  %2803 = load i1, i1* %2776
  br i1 %2803, label %then622, label %else623
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
  store { i64, i8* }* %body.param, { i64, i8* }** %body.ptr
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %2804 = load { i64, i8* }*, { i64, i8* }** %body.ptr
  %2805 = call %ASTNode @licm_root_of({ i64, i8* }* %2804)
  %2806 = alloca %ASTNode
  store %ASTNode %2805, %ASTNode* %2806
  %2807 = getelementptr %ASTNode, %ASTNode* %2806, i32 0, i32 0
  %2808 = load %nyx_string*, %nyx_string** %2807
  %2809 = alloca %nyx_string*
  store %nyx_string* %2808, %nyx_string** %2809
  %2810 = getelementptr %ASTNode, %ASTNode* %2806, i32 0, i32 1
  %2811 = load { i64, i8* }*, { i64, i8* }** %2810
  %2812 = alloca { i64, i8* }*
  store { i64, i8* }* %2811, { i64, i8* }** %2812
  %2813 = alloca i1
  store i1 true, i1* %2813
  %2814 = alloca i1
  store i1 true, i1* %2814
  %2815 = alloca i1
  store i1 true, i1* %2815
  %2816 = load %nyx_string*, %nyx_string** %2809
  %2817 = getelementptr [9 x i8], [9 x i8]* @.str126, i32 0, i32 0
  %2818 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str126.c, i8* %2817, i64 8)
  %2819 = call i1 @nyx_string_equals(%nyx_string* %2816, %nyx_string* %2818)
  br i1 %2819, label %sc_or_end626, label %sc_or_rhs625
sc_or_rhs625:
  %2820 = load %nyx_string*, %nyx_string** %2809
  %2821 = getelementptr [9 x i8], [9 x i8]* @.str127, i32 0, i32 0
  %2822 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str127.c, i8* %2821, i64 8)
  %2823 = call i1 @nyx_string_equals(%nyx_string* %2820, %nyx_string* %2822)
  store i1 %2823, i1* %2815
  br label %sc_or_end626
sc_or_end626:
  %2824 = load i1, i1* %2815
  br i1 %2824, label %sc_or_end628, label %sc_or_rhs627
sc_or_rhs627:
  %2825 = load %nyx_string*, %nyx_string** %2809
  %2826 = getelementptr [7 x i8], [7 x i8]* @.str128, i32 0, i32 0
  %2827 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str128.c, i8* %2826, i64 6)
  %2828 = call i1 @nyx_string_equals(%nyx_string* %2825, %nyx_string* %2827)
  store i1 %2828, i1* %2814
  br label %sc_or_end628
sc_or_end628:
  %2829 = load i1, i1* %2814
  br i1 %2829, label %sc_or_end630, label %sc_or_rhs629
sc_or_rhs629:
  %2830 = load %nyx_string*, %nyx_string** %2809
  %2831 = getelementptr [8 x i8], [8 x i8]* @.str129, i32 0, i32 0
  %2832 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str129.c, i8* %2831, i64 7)
  %2833 = call i1 @nyx_string_equals(%nyx_string* %2830, %nyx_string* %2832)
  store i1 %2833, i1* %2813
  br label %sc_or_end630
sc_or_end630:
  %2834 = load i1, i1* %2813
  br i1 %2834, label %then631, label %else632
then631:
  ret i1 0
else632:
  br label %merge633
merge633:
  %2835 = alloca i1
  store i1 false, i1* %2835
  %2836 = load %nyx_string*, %nyx_string** %2809
  %2837 = getelementptr [7 x i8], [7 x i8]* @.str130, i32 0, i32 0
  %2838 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str130.c, i8* %2837, i64 6)
  %2839 = call i1 @nyx_string_equals(%nyx_string* %2836, %nyx_string* %2838)
  br i1 %2839, label %sc_and_rhs634, label %sc_and_end635
sc_and_rhs634:
  %2840 = load { i64, i8* }*, { i64, i8* }** %2812
  %2841 = call i64 @nyx_array_length({ i64, i8* }* %2840)
  %2842 = icmp sge i64 %2841, 1
  store i1 %2842, i1* %2835
  br label %sc_and_end635
sc_and_end635:
  %2843 = load i1, i1* %2835
  br i1 %2843, label %then636, label %else637
then636:
  %2844 = load { i64, i8* }*, { i64, i8* }** %2812
  %2845 = call i64 @nyx_array_get({ i64, i8* }* %2844, i64 0)
  %2846 = inttoptr i64 %2845 to { i64, i8* }*
  %2847 = alloca { i64, i8* }*
  store { i64, i8* }* %2846, { i64, i8* }** %2847
  %2848 = load { i64, i8* }*, { i64, i8* }** %2847
  %2849 = call i64 @nyx_array_get_checked({ i64, i8* }* %2848, i64 0, i64 2)
  %2850 = inttoptr i64 %2849 to %nyx_string*
  %2851 = alloca %nyx_string*
  store %nyx_string* %2850, %nyx_string** %2851
  %2852 = load %nyx_string*, %nyx_string** %2851
  %2853 = load %nyx_string*, %nyx_string** %name.ptr
  %2854 = call i1 @nyx_string_equals(%nyx_string* %2852, %nyx_string* %2853)
  br i1 %2854, label %then639, label %else640
then639:
  ret i1 1
else640:
  br label %merge641
merge641:
  br label %merge638
else637:
  br label %merge638
merge638:
  %2855 = alloca i1
  store i1 false, i1* %2855
  %2856 = load %nyx_string*, %nyx_string** %2809
  %2857 = getelementptr [13 x i8], [13 x i8]* @.str131, i32 0, i32 0
  %2858 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str131.c, i8* %2857, i64 12)
  %2859 = call i1 @nyx_string_equals(%nyx_string* %2856, %nyx_string* %2858)
  br i1 %2859, label %sc_and_rhs642, label %sc_and_end643
sc_and_rhs642:
  %2860 = load { i64, i8* }*, { i64, i8* }** %2812
  %2861 = call i64 @nyx_array_length({ i64, i8* }* %2860)
  %2862 = icmp sge i64 %2861, 1
  store i1 %2862, i1* %2855
  br label %sc_and_end643
sc_and_end643:
  %2863 = load i1, i1* %2855
  br i1 %2863, label %then644, label %else645
then644:
  %2864 = load %ASTNode, %ASTNode* %2806
  %2865 = call %ASTNode @licm_node_at(%ASTNode %2864, i64 0)
  %2866 = alloca %ASTNode
  store %ASTNode %2865, %ASTNode* %2866
  %2867 = getelementptr %ASTNode, %ASTNode* %2866, i32 0, i32 0
  %2868 = load %nyx_string*, %nyx_string** %2867
  %2869 = getelementptr [11 x i8], [11 x i8]* @.str132, i32 0, i32 0
  %2870 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str132.c, i8* %2869, i64 10)
  %2871 = call i1 @nyx_string_equals(%nyx_string* %2868, %nyx_string* %2870)
  br i1 %2871, label %then647, label %else648
then647:
  %2872 = getelementptr %ASTNode, %ASTNode* %2866, i32 0, i32 1
  %2873 = load { i64, i8* }*, { i64, i8* }** %2872
  %2874 = alloca { i64, i8* }*
  store { i64, i8* }* %2873, { i64, i8* }** %2874
  %2875 = load { i64, i8* }*, { i64, i8* }** %2874
  %2876 = call i64 @nyx_array_length({ i64, i8* }* %2875)
  %2877 = icmp sge i64 %2876, 1
  br i1 %2877, label %then650, label %else651
then650:
  %2878 = load { i64, i8* }*, { i64, i8* }** %2874
  %2879 = call i64 @nyx_array_get_checked({ i64, i8* }* %2878, i64 0, i64 2)
  %2880 = inttoptr i64 %2879 to %nyx_string*
  %2881 = alloca %nyx_string*
  store %nyx_string* %2880, %nyx_string** %2881
  %2882 = load %nyx_string*, %nyx_string** %2881
  %2883 = load %nyx_string*, %nyx_string** %name.ptr
  %2884 = call i1 @nyx_string_equals(%nyx_string* %2882, %nyx_string* %2883)
  br i1 %2884, label %then653, label %else654
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
  %2885 = alloca i1
  store i1 false, i1* %2885
  %2886 = load %nyx_string*, %nyx_string** %2809
  %2887 = getelementptr [12 x i8], [12 x i8]* @.str133, i32 0, i32 0
  %2888 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str133.c, i8* %2887, i64 11)
  %2889 = call i1 @nyx_string_equals(%nyx_string* %2886, %nyx_string* %2888)
  br i1 %2889, label %sc_and_rhs656, label %sc_and_end657
sc_and_rhs656:
  %2890 = load { i64, i8* }*, { i64, i8* }** %2812
  %2891 = call i64 @nyx_array_length({ i64, i8* }* %2890)
  %2892 = icmp sge i64 %2891, 2
  store i1 %2892, i1* %2885
  br label %sc_and_end657
sc_and_end657:
  %2893 = load i1, i1* %2885
  br i1 %2893, label %then658, label %else659
then658:
  %2894 = load %ASTNode, %ASTNode* %2806
  %2895 = call %ASTNode @licm_node_at(%ASTNode %2894, i64 0)
  %2896 = alloca %ASTNode
  store %ASTNode %2895, %ASTNode* %2896
  %2897 = load { i64, i8* }*, { i64, i8* }** %2812
  %2898 = call i64 @nyx_array_get_checked({ i64, i8* }* %2897, i64 1, i64 2)
  %2899 = inttoptr i64 %2898 to %nyx_string*
  %2900 = alloca %nyx_string*
  store %nyx_string* %2899, %nyx_string** %2900
  %2901 = alloca i1
  store i1 false, i1* %2901
  %2902 = getelementptr %ASTNode, %ASTNode* %2896, i32 0, i32 0
  %2903 = load %nyx_string*, %nyx_string** %2902
  %2904 = getelementptr [11 x i8], [11 x i8]* @.str134, i32 0, i32 0
  %2905 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str134.c, i8* %2904, i64 10)
  %2906 = call i1 @nyx_string_equals(%nyx_string* %2903, %nyx_string* %2905)
  br i1 %2906, label %sc_and_rhs661, label %sc_and_end662
sc_and_rhs661:
  %2907 = load %nyx_string*, %nyx_string** %2900
  %2908 = call i1 @licm_metodo_muta(%nyx_string* %2907)
  store i1 %2908, i1* %2901
  br label %sc_and_end662
sc_and_end662:
  %2909 = load i1, i1* %2901
  br i1 %2909, label %then663, label %else664
then663:
  %2910 = getelementptr %ASTNode, %ASTNode* %2896, i32 0, i32 1
  %2911 = load { i64, i8* }*, { i64, i8* }** %2910
  %2912 = alloca { i64, i8* }*
  store { i64, i8* }* %2911, { i64, i8* }** %2912
  %2913 = load { i64, i8* }*, { i64, i8* }** %2912
  %2914 = call i64 @nyx_array_length({ i64, i8* }* %2913)
  %2915 = icmp sge i64 %2914, 1
  br i1 %2915, label %then666, label %else667
then666:
  %2916 = load { i64, i8* }*, { i64, i8* }** %2912
  %2917 = call i64 @nyx_array_get_checked({ i64, i8* }* %2916, i64 0, i64 2)
  %2918 = inttoptr i64 %2917 to %nyx_string*
  %2919 = alloca %nyx_string*
  store %nyx_string* %2918, %nyx_string** %2919
  %2920 = load %nyx_string*, %nyx_string** %2919
  %2921 = load %nyx_string*, %nyx_string** %name.ptr
  %2922 = call i1 @nyx_string_equals(%nyx_string* %2920, %nyx_string* %2921)
  br i1 %2922, label %then669, label %else670
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
  %2923 = load %ASTNode, %ASTNode* %2806
  %2924 = call { i64, i8* }* @licm_children(%ASTNode %2923)
  %2925 = alloca { i64, i8* }*
  store { i64, i8* }* %2924, { i64, i8* }** %2925
  %2926 = alloca i64
  store i64 0, i64* %2926
  %2927 = call i8* @llvm.stacksave()
  br label %while_cond672
while_cond672:
  %2928 = load i64, i64* %2926
  %2929 = load { i64, i8* }*, { i64, i8* }** %2925
  %2930 = call i64 @nyx_array_length({ i64, i8* }* %2929)
  %2931 = icmp slt i64 %2928, %2930
  br i1 %2931, label %while_body673, label %while_end674
while_body673:
  call void @llvm.stackrestore(i8* %2927)
  %2932 = load { i64, i8* }*, { i64, i8* }** %2925
  %2933 = load i64, i64* %2926
  %2934 = call i64 @nyx_array_get({ i64, i8* }* %2932, i64 %2933)
  %2935 = inttoptr i64 %2934 to { i64, i8* }*
  %2936 = alloca { i64, i8* }*
  store { i64, i8* }* %2935, { i64, i8* }** %2936
  %2937 = load { i64, i8* }*, { i64, i8* }** %2936
  %2938 = load %nyx_string*, %nyx_string** %name.ptr
  %2939 = call i1 @for_cuerpo_muta({ i64, i8* }* %2937, %nyx_string* %2938)
  br i1 %2939, label %then675, label %else676
then675:
  ret i1 1
else676:
  br label %merge677
merge677:
  %2940 = load i64, i64* %2926
  %2941 = add i64 %2940, 1
  store i64 %2941, i64* %2926
  br label %while_cond672
while_end674:
  ret i1 0
}


attributes #0 = { returns_twice }

