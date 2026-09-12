source_filename = "script.nx"
target triple = "x86_64-pc-linux-gnu"

@.str0 = private unnamed_addr constant [12 x i8] c"NYX_VERBOSE\00"
@.str0.c = internal global %nyx_string* null
@.str1 = private unnamed_addr constant [2 x i8] c"1\00"
@.str1.c = internal global %nyx_string* null
@.str2 = private unnamed_addr constant [31 x i8] c"error: argumento desconocido '\00"
@.str2.c = internal global %nyx_string* null
@.str3 = private unnamed_addr constant [109 x i8] c"' — el driver crudo no acepta argumentos; usá el CLI `nyx build|run|init` (wrapper) o NYX_SRC=archivo.nx.\00"
@.str3.c = internal global %nyx_string* null
@.str4 = private unnamed_addr constant [26 x i8] c"error: unknown argument '\00"
@.str4.c = internal global %nyx_string* null
@.str5 = private unnamed_addr constant [106 x i8] c"' — the raw driver accepts no arguments; use the `nyx build|run|init` CLI (wrapper) or NYX_SRC=file.nx.\00"
@.str5.c = internal global %nyx_string* null
@.str6 = private unnamed_addr constant [8 x i8] c"unknown\00"
@.str6.c = internal global %nyx_string* null
@.str7 = private unnamed_addr constant [9 x i8] c"NYX_HOME\00"
@.str7.c = internal global %nyx_string* null
@.str8 = private unnamed_addr constant [1 x i8] c"\00"
@.str8.c = internal global %nyx_string* null
@.str9 = private unnamed_addr constant [9 x i8] c"/VERSION\00"
@.str9.c = internal global %nyx_string* null
@.str10 = private unnamed_addr constant [9 x i8] c"/VERSION\00"
@.str10.c = internal global %nyx_string* null
@.str11 = private unnamed_addr constant [8 x i8] c"VERSION\00"
@.str11.c = internal global %nyx_string* null
@.str12 = private unnamed_addr constant [8 x i8] c"VERSION\00"
@.str12.c = internal global %nyx_string* null
@.str13 = private unnamed_addr constant [5 x i8] c"HOME\00"
@.str13.c = internal global %nyx_string* null
@.str14 = private unnamed_addr constant [1 x i8] c"\00"
@.str14.c = internal global %nyx_string* null
@.str15 = private unnamed_addr constant [14 x i8] c"/.nyx/VERSION\00"
@.str15.c = internal global %nyx_string* null
@.str16 = private unnamed_addr constant [14 x i8] c"/.nyx/VERSION\00"
@.str16.c = internal global %nyx_string* null
@.str17 = private unnamed_addr constant [10 x i8] c"=== Nyx v\00"
@.str17.c = internal global %nyx_string* null
@.str18 = private unnamed_addr constant [5 x i8] c" ===\00"
@.str18.c = internal global %nyx_string* null
@.str19 = private unnamed_addr constant [1 x i8] c"\00"
@.str19.c = internal global %nyx_string* null
@.str20 = private unnamed_addr constant [8 x i8] c"  nyx v\00"
@.str20.c = internal global %nyx_string* null
@.str21 = private unnamed_addr constant [1 x i8] c"\00"
@.str21.c = internal global %nyx_string* null
@.str22 = private unnamed_addr constant [8 x i8] c"NYX_SRC\00"
@.str22.c = internal global %nyx_string* null
@.str23 = private unnamed_addr constant [1 x i8] c"\00"
@.str23.c = internal global %nyx_string* null
@.str24 = private unnamed_addr constant [10 x i8] c"script.nx\00"
@.str24.c = internal global %nyx_string* null
@.str25 = private unnamed_addr constant [4 x i8] c".nx\00"
@.str25.c = internal global %nyx_string* null
@.str26 = private unnamed_addr constant [4 x i8] c".ll\00"
@.str26.c = internal global %nyx_string* null
@.str27 = private unnamed_addr constant [4 x i8] c".ll\00"
@.str27.c = internal global %nyx_string* null
@.str28 = private unnamed_addr constant [37 x i8] c"error: no existe el archivo fuente '\00"
@.str28.c = internal global %nyx_string* null
@.str29 = private unnamed_addr constant [82 x i8] c"' (o está vacío) — pasá NYX_SRC=archivo.nx o corré desde un directorio con \00"
@.str29.c = internal global %nyx_string* null
@.str30 = private unnamed_addr constant [2 x i8] c".\00"
@.str30.c = internal global %nyx_string* null
@.str31 = private unnamed_addr constant [21 x i8] c"error: source file '\00"
@.str31.c = internal global %nyx_string* null
@.str32 = private unnamed_addr constant [92 x i8] c"' does not exist (or is empty) — pass NYX_SRC=file.nx or run from a directory containing \00"
@.str32.c = internal global %nyx_string* null
@.str33 = private unnamed_addr constant [2 x i8] c".\00"
@.str33.c = internal global %nyx_string* null
@.str34 = private unnamed_addr constant [1 x i8] c"\00"
@.str34.c = internal global %nyx_string* null
@.str35 = private unnamed_addr constant [27 x i8] c"error: el archivo fuente '\00"
@.str35.c = internal global %nyx_string* null
@.str36 = private unnamed_addr constant [92 x i8] c"' está vacío (o no existe) — pasá NYX_SRC=archivo.nx o corré desde un directorio con \00"
@.str36.c = internal global %nyx_string* null
@.str37 = private unnamed_addr constant [2 x i8] c".\00"
@.str37.c = internal global %nyx_string* null
@.str38 = private unnamed_addr constant [21 x i8] c"error: source file '\00"
@.str38.c = internal global %nyx_string* null
@.str39 = private unnamed_addr constant [92 x i8] c"' is empty (or does not exist) — pass NYX_SRC=file.nx or run from a directory containing \00"
@.str39.c = internal global %nyx_string* null
@.str40 = private unnamed_addr constant [2 x i8] c".\00"
@.str40.c = internal global %nyx_string* null
@.str41 = private unnamed_addr constant [3 x i8] c"#!\00"
@.str41.c = internal global %nyx_string* null
@.str42 = private unnamed_addr constant [1 x i8] c"\0a"
@.str43 = private unnamed_addr constant [1 x i8] c"\00"
@.str43.c = internal global %nyx_string* null
@.str44 = private unnamed_addr constant [26 x i8] c"[1/4] Lexical analysis...\00"
@.str44.c = internal global %nyx_string* null
@.str45 = private unnamed_addr constant [19 x i8] c"  ❌ Lex errors: \00"
@.str45.c = internal global %nyx_string* null
@.str46 = private unnamed_addr constant [11 x i8] c"  lex     \00"
@.str46.c = internal global %nyx_string* null
@.str47 = private unnamed_addr constant [7 x i8] c"FALLÓ\00"
@.str47.c = internal global %nyx_string* null
@.str48 = private unnamed_addr constant [7 x i8] c"FAILED\00"
@.str48.c = internal global %nyx_string* null
@.str49 = private unnamed_addr constant [15 x i8] c"  → tokens: \00"
@.str49.c = internal global %nyx_string* null
@.str50 = private unnamed_addr constant [11 x i8] c"  lex     \00"
@.str50.c = internal global %nyx_string* null
@.str51 = private unnamed_addr constant [8 x i8] c" tokens\00"
@.str51.c = internal global %nyx_string* null
@.str52 = private unnamed_addr constant [17 x i8] c"[2/4] Parsing...\00"
@.str52.c = internal global %nyx_string* null
@.str53 = private unnamed_addr constant [21 x i8] c"  ❌ Parse errors: \00"
@.str53.c = internal global %nyx_string* null
@.str54 = private unnamed_addr constant [11 x i8] c"  parse   \00"
@.str54.c = internal global %nyx_string* null
@.str55 = private unnamed_addr constant [7 x i8] c"FALLÓ\00"
@.str55.c = internal global %nyx_string* null
@.str56 = private unnamed_addr constant [7 x i8] c"FAILED\00"
@.str56.c = internal global %nyx_string* null
@.str57 = private unnamed_addr constant [17 x i8] c"  → AST root: \00"
@.str57.c = internal global %nyx_string* null
@.str58 = private unnamed_addr constant [13 x i8] c"  parse   OK\00"
@.str58.c = internal global %nyx_string* null
@.str59 = private unnamed_addr constant [18 x i8] c"NYX_SKIP_SEMANTIC\00"
@.str59.c = internal global %nyx_string* null
@.str60 = private unnamed_addr constant [1 x i8] c"\00"
@.str60.c = internal global %nyx_string* null
@.str61 = private unnamed_addr constant [27 x i8] c"[3/4] Semantic analysis...\00"
@.str61.c = internal global %nyx_string* null
@.str62 = private unnamed_addr constant [38 x i8] c"  → SKIPPED (NYX_SKIP_SEMANTIC set)\00"
@.str62.c = internal global %nyx_string* null
@.str63 = private unnamed_addr constant [11 x i8] c"  check   \00"
@.str63.c = internal global %nyx_string* null
@.str64 = private unnamed_addr constant [8 x i8] c"omitido\00"
@.str64.c = internal global %nyx_string* null
@.str65 = private unnamed_addr constant [8 x i8] c"skipped\00"
@.str65.c = internal global %nyx_string* null
@.str66 = private unnamed_addr constant [28 x i8] c"  ❌ Semantic errors found\00"
@.str66.c = internal global %nyx_string* null
@.str67 = private unnamed_addr constant [11 x i8] c"  check   \00"
@.str67.c = internal global %nyx_string* null
@.str68 = private unnamed_addr constant [7 x i8] c"FALLÓ\00"
@.str68.c = internal global %nyx_string* null
@.str69 = private unnamed_addr constant [7 x i8] c"FAILED\00"
@.str69.c = internal global %nyx_string* null
@.str70 = private unnamed_addr constant [9 x i8] c"  → OK\00"
@.str70.c = internal global %nyx_string* null
@.str71 = private unnamed_addr constant [13 x i8] c"  check   OK\00"
@.str71.c = internal global %nyx_string* null
@.str72 = private unnamed_addr constant [25 x i8] c"[4/4] Code generation...\00"
@.str72.c = internal global %nyx_string* null
@.str73 = private unnamed_addr constant [23 x i8] c"  ❌ Codegen errors: \00"
@.str73.c = internal global %nyx_string* null
@.str74 = private unnamed_addr constant [11 x i8] c"  gen     \00"
@.str74.c = internal global %nyx_string* null
@.str75 = private unnamed_addr constant [7 x i8] c"FALLÓ\00"
@.str75.c = internal global %nyx_string* null
@.str76 = private unnamed_addr constant [7 x i8] c"FAILED\00"
@.str76.c = internal global %nyx_string* null
@.str77 = private unnamed_addr constant [16 x i8] c"  → Written: \00"
@.str77.c = internal global %nyx_string* null
@.str78 = private unnamed_addr constant [3 x i8] c" (\00"
@.str78.c = internal global %nyx_string* null
@.str79 = private unnamed_addr constant [8 x i8] c" chars)\00"
@.str79.c = internal global %nyx_string* null
@.str80 = private unnamed_addr constant [23 x i8] c"✅ Bootstrap complete\00"
@.str80.c = internal global %nyx_string* null
@.str81 = private unnamed_addr constant [11 x i8] c"  gen     \00"
@.str81.c = internal global %nyx_string* null
@.str82 = private unnamed_addr constant [2 x i8] c" \00"
@.str82.c = internal global %nyx_string* null
@.str83 = private unnamed_addr constant [10 x i8] c"funciones\00"
@.str83.c = internal global %nyx_string* null
@.str84 = private unnamed_addr constant [10 x i8] c"functions\00"
@.str84.c = internal global %nyx_string* null
@.str85 = private unnamed_addr constant [3 x i8] c", \00"
@.str85.c = internal global %nyx_string* null
@.str86 = private unnamed_addr constant [6 x i8] c"KB IR\00"
@.str86.c = internal global %nyx_string* null
@.str87 = private unnamed_addr constant [1 x i8] c"\00"
@.str87.c = internal global %nyx_string* null
@.str88 = private unnamed_addr constant [7 x i8] c"  ✓ \00"
@.str88.c = internal global %nyx_string* null
@.str89 = private unnamed_addr constant [1 x i8] c"\00"
@.str89.c = internal global %nyx_string* null
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

declare { i64, i8* }* @tokenize(%nyx_string*)
declare i64 @get_lex_error_count(...)
declare { i64, i8* }* @parse({ i64, i8* }*, %nyx_string*)
declare i64 @get_parse_error_count(...)
declare i1 @analyze(%ASTNode)
declare i1 @borrow_check(...)
declare { i64, i8* }* @licm(...)
declare %nyx_string* @generate_llvm(%ASTNode, %nyx_string*)
declare i64 @get_fn_count(...)
declare i64 @get_codegen_error_count(...)
declare %nyx_string* @resolve_source(...)
declare %nyx_string* @nyx_msg(...)

define i64 @main(
i32 %argc, i8** %argv) {
  call void @nyx_set_args(i32 %argc, i8** %argv)
  %1 = getelementptr [12 x i8], [12 x i8]* @.str0, i32 0, i32 0
  %2 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str0.c, i8* %1, i64 11)
  %3 = call i8* @nyx_string_to_cstr(%nyx_string* %2)
  %4 = call %nyx_string* @nyx_getenv(i8* %3)
  %5 = getelementptr [2 x i8], [2 x i8]* @.str1, i32 0, i32 0
  %6 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1.c, i8* %5, i64 1)
  %7 = call i1 @nyx_string_equals(%nyx_string* %4, %nyx_string* %6)
  %8 = alloca i1
  store i1 %7, i1* %8
  %9 = call { i64, i8* }* @nyx_get_args()
  %10 = alloca { i64, i8* }*
  store { i64, i8* }* %9, { i64, i8* }** %10
  %11 = load { i64, i8* }*, { i64, i8* }** %10
  %12 = call i64 @nyx_array_length({ i64, i8* }* %11)
  %13 = icmp sge i64 %12, 2
  br i1 %13, label %then0, label %else1
then0:
  %14 = getelementptr [31 x i8], [31 x i8]* @.str2, i32 0, i32 0
  %15 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str2.c, i8* %14, i64 30)
  %16 = load { i64, i8* }*, { i64, i8* }** %10
  %17 = call i64 @nyx_array_get({ i64, i8* }* %16, i64 1)
  %18 = call i64 @nyx_array_get_tag({ i64, i8* }* %16, i64 1)
  %19 = call %nyx_string* @nyx_string_from_tagged(i64 %17, i64 %18, i64 2)
  %20 = call %nyx_string* @nyx_string_concat(%nyx_string* %15, %nyx_string* %19)
  %21 = getelementptr [109 x i8], [109 x i8]* @.str3, i32 0, i32 0
  %22 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str3.c, i8* %21, i64 108)
  %23 = call %nyx_string* @nyx_string_concat(%nyx_string* %20, %nyx_string* %22)
  %24 = getelementptr [26 x i8], [26 x i8]* @.str4, i32 0, i32 0
  %25 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str4.c, i8* %24, i64 25)
  %26 = load { i64, i8* }*, { i64, i8* }** %10
  %27 = call i64 @nyx_array_get({ i64, i8* }* %26, i64 1)
  %28 = call i64 @nyx_array_get_tag({ i64, i8* }* %26, i64 1)
  %29 = call %nyx_string* @nyx_string_from_tagged(i64 %27, i64 %28, i64 2)
  %30 = call %nyx_string* @nyx_string_concat(%nyx_string* %25, %nyx_string* %29)
  %31 = getelementptr [106 x i8], [106 x i8]* @.str5, i32 0, i32 0
  %32 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str5.c, i8* %31, i64 105)
  %33 = call %nyx_string* @nyx_string_concat(%nyx_string* %30, %nyx_string* %32)
  %34 = call %nyx_string* @nyx_msg(%nyx_string* %23, %nyx_string* %33)
  %35 = call i8* @nyx_string_to_cstr(%nyx_string* %34)
  call void @nyx_print_string(i8* %35)
  ret i64 1
else1:
  br label %merge2
merge2:
  %36 = getelementptr [8 x i8], [8 x i8]* @.str6, i32 0, i32 0
  %37 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str6.c, i8* %36, i64 7)
  %38 = alloca %nyx_string*
  store %nyx_string* %37, %nyx_string** %38
  %39 = getelementptr [9 x i8], [9 x i8]* @.str7, i32 0, i32 0
  %40 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str7.c, i8* %39, i64 8)
  %41 = call i8* @nyx_string_to_cstr(%nyx_string* %40)
  %42 = call %nyx_string* @nyx_getenv(i8* %41)
  %43 = alloca %nyx_string*
  store %nyx_string* %42, %nyx_string** %43
  %44 = alloca i1
  store i1 false, i1* %44
  %45 = load %nyx_string*, %nyx_string** %43
  %46 = getelementptr [1 x i8], [1 x i8]* @.str8, i32 0, i32 0
  %47 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str8.c, i8* %46, i64 0)
  %48 = call i1 @nyx_string_equals(%nyx_string* %45, %nyx_string* %47)
  %49 = xor i1 %48, true
  br i1 %49, label %sc_and_rhs3, label %sc_and_end4
sc_and_rhs3:
  %50 = load %nyx_string*, %nyx_string** %43
  %51 = getelementptr [9 x i8], [9 x i8]* @.str9, i32 0, i32 0
  %52 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str9.c, i8* %51, i64 8)
  %53 = call %nyx_string* @nyx_string_concat(%nyx_string* %50, %nyx_string* %52)
  %54 = call i8* @nyx_string_to_cstr(%nyx_string* %53)
  %55 = call i1 @nyx_file_exists(i8* %54)
  store i1 %55, i1* %44
  br label %sc_and_end4
sc_and_end4:
  %56 = load i1, i1* %44
  br i1 %56, label %then5, label %else6
then5:
  %57 = load %nyx_string*, %nyx_string** %43
  %58 = getelementptr [9 x i8], [9 x i8]* @.str10, i32 0, i32 0
  %59 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str10.c, i8* %58, i64 8)
  %60 = call %nyx_string* @nyx_string_concat(%nyx_string* %57, %nyx_string* %59)
  %61 = call i8* @nyx_string_to_cstr(%nyx_string* %60)
  %62 = call %nyx_string* @nyx_read_file(i8* %61)
  %63 = alloca %nyx_string*
  store %nyx_string* %62, %nyx_string** %63
  %64 = load %nyx_string*, %nyx_string** %63
  %65 = call %nyx_string* @nyx_string_trim(%nyx_string* %64)
  store %nyx_string* %65, %nyx_string** %38
  br label %merge7
else6:
  %66 = getelementptr [8 x i8], [8 x i8]* @.str11, i32 0, i32 0
  %67 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str11.c, i8* %66, i64 7)
  %68 = call i8* @nyx_string_to_cstr(%nyx_string* %67)
  %69 = call i1 @nyx_file_exists(i8* %68)
  br i1 %69, label %then8, label %else9
then8:
  %70 = getelementptr [8 x i8], [8 x i8]* @.str12, i32 0, i32 0
  %71 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str12.c, i8* %70, i64 7)
  %72 = call i8* @nyx_string_to_cstr(%nyx_string* %71)
  %73 = call %nyx_string* @nyx_read_file(i8* %72)
  %74 = alloca %nyx_string*
  store %nyx_string* %73, %nyx_string** %74
  %75 = load %nyx_string*, %nyx_string** %74
  %76 = call %nyx_string* @nyx_string_trim(%nyx_string* %75)
  store %nyx_string* %76, %nyx_string** %38
  br label %merge10
else9:
  %77 = getelementptr [5 x i8], [5 x i8]* @.str13, i32 0, i32 0
  %78 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str13.c, i8* %77, i64 4)
  %79 = call i8* @nyx_string_to_cstr(%nyx_string* %78)
  %80 = call %nyx_string* @nyx_getenv(i8* %79)
  %81 = alloca %nyx_string*
  store %nyx_string* %80, %nyx_string** %81
  %82 = alloca i1
  store i1 false, i1* %82
  %83 = load %nyx_string*, %nyx_string** %81
  %84 = getelementptr [1 x i8], [1 x i8]* @.str14, i32 0, i32 0
  %85 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str14.c, i8* %84, i64 0)
  %86 = call i1 @nyx_string_equals(%nyx_string* %83, %nyx_string* %85)
  %87 = xor i1 %86, true
  br i1 %87, label %sc_and_rhs11, label %sc_and_end12
sc_and_rhs11:
  %88 = load %nyx_string*, %nyx_string** %81
  %89 = getelementptr [14 x i8], [14 x i8]* @.str15, i32 0, i32 0
  %90 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str15.c, i8* %89, i64 13)
  %91 = call %nyx_string* @nyx_string_concat(%nyx_string* %88, %nyx_string* %90)
  %92 = call i8* @nyx_string_to_cstr(%nyx_string* %91)
  %93 = call i1 @nyx_file_exists(i8* %92)
  store i1 %93, i1* %82
  br label %sc_and_end12
sc_and_end12:
  %94 = load i1, i1* %82
  br i1 %94, label %then13, label %else14
then13:
  %95 = load %nyx_string*, %nyx_string** %81
  %96 = getelementptr [14 x i8], [14 x i8]* @.str16, i32 0, i32 0
  %97 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str16.c, i8* %96, i64 13)
  %98 = call %nyx_string* @nyx_string_concat(%nyx_string* %95, %nyx_string* %97)
  %99 = call i8* @nyx_string_to_cstr(%nyx_string* %98)
  %100 = call %nyx_string* @nyx_read_file(i8* %99)
  %101 = alloca %nyx_string*
  store %nyx_string* %100, %nyx_string** %101
  %102 = load %nyx_string*, %nyx_string** %101
  %103 = call %nyx_string* @nyx_string_trim(%nyx_string* %102)
  store %nyx_string* %103, %nyx_string** %38
  br label %merge15
else14:
  br label %merge15
merge15:
  br label %merge10
merge10:
  br label %merge7
merge7:
  %104 = load i1, i1* %8
  br i1 %104, label %then16, label %else17
then16:
  %105 = getelementptr [10 x i8], [10 x i8]* @.str17, i32 0, i32 0
  %106 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str17.c, i8* %105, i64 9)
  %107 = load %nyx_string*, %nyx_string** %38
  %108 = call %nyx_string* @nyx_string_concat(%nyx_string* %106, %nyx_string* %107)
  %109 = getelementptr [5 x i8], [5 x i8]* @.str18, i32 0, i32 0
  %110 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str18.c, i8* %109, i64 4)
  %111 = call %nyx_string* @nyx_string_concat(%nyx_string* %108, %nyx_string* %110)
  %112 = call i8* @nyx_string_to_cstr(%nyx_string* %111)
  call void @nyx_print_string(i8* %112)
  br label %merge18
else17:
  %113 = getelementptr [1 x i8], [1 x i8]* @.str19, i32 0, i32 0
  %114 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str19.c, i8* %113, i64 0)
  %115 = call i8* @nyx_string_to_cstr(%nyx_string* %114)
  call void @nyx_print_string(i8* %115)
  %116 = getelementptr [8 x i8], [8 x i8]* @.str20, i32 0, i32 0
  %117 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str20.c, i8* %116, i64 7)
  %118 = load %nyx_string*, %nyx_string** %38
  %119 = call %nyx_string* @nyx_string_concat(%nyx_string* %117, %nyx_string* %118)
  %120 = call i8* @nyx_string_to_cstr(%nyx_string* %119)
  call void @nyx_print_string(i8* %120)
  %121 = getelementptr [1 x i8], [1 x i8]* @.str21, i32 0, i32 0
  %122 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str21.c, i8* %121, i64 0)
  %123 = call i8* @nyx_string_to_cstr(%nyx_string* %122)
  call void @nyx_print_string(i8* %123)
  br label %merge18
merge18:
  %124 = getelementptr [8 x i8], [8 x i8]* @.str22, i32 0, i32 0
  %125 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str22.c, i8* %124, i64 7)
  %126 = call i8* @nyx_string_to_cstr(%nyx_string* %125)
  %127 = call %nyx_string* @nyx_getenv(i8* %126)
  %128 = alloca %nyx_string*
  store %nyx_string* %127, %nyx_string** %128
  %129 = load %nyx_string*, %nyx_string** %128
  %130 = getelementptr [1 x i8], [1 x i8]* @.str23, i32 0, i32 0
  %131 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str23.c, i8* %130, i64 0)
  %132 = call i1 @nyx_string_equals(%nyx_string* %129, %nyx_string* %131)
  br i1 %132, label %then19, label %else20
then19:
  %133 = getelementptr [10 x i8], [10 x i8]* @.str24, i32 0, i32 0
  %134 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str24.c, i8* %133, i64 9)
  store %nyx_string* %134, %nyx_string** %128
  br label %merge21
else20:
  br label %merge21
merge21:
  %135 = load %nyx_string*, %nyx_string** %128
  %136 = alloca %nyx_string*
  store %nyx_string* %135, %nyx_string** %136
  %137 = load %nyx_string*, %nyx_string** %128
  %138 = getelementptr [4 x i8], [4 x i8]* @.str25, i32 0, i32 0
  %139 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str25.c, i8* %138, i64 3)
  %140 = call i1 @nyx_string_ends_with(%nyx_string* %137, %nyx_string* %139)
  br i1 %140, label %then22, label %else23
then22:
  %141 = load %nyx_string*, %nyx_string** %128
  %142 = load %nyx_string*, %nyx_string** %128
  %143 = call i64 @nyx_string_byte_length(%nyx_string* %142)
  %144 = sub i64 %143, 3
  %145 = call %nyx_string* @nyx_string_substring(%nyx_string* %141, i64 0, i64 %144)
  %146 = getelementptr [4 x i8], [4 x i8]* @.str26, i32 0, i32 0
  %147 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str26.c, i8* %146, i64 3)
  %148 = call %nyx_string* @nyx_string_concat(%nyx_string* %145, %nyx_string* %147)
  store %nyx_string* %148, %nyx_string** %136
  br label %merge24
else23:
  %149 = load %nyx_string*, %nyx_string** %128
  %150 = getelementptr [4 x i8], [4 x i8]* @.str27, i32 0, i32 0
  %151 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str27.c, i8* %150, i64 3)
  %152 = call %nyx_string* @nyx_string_concat(%nyx_string* %149, %nyx_string* %151)
  store %nyx_string* %152, %nyx_string** %136
  br label %merge24
merge24:
  %153 = load %nyx_string*, %nyx_string** %128
  %154 = call i8* @nyx_string_to_cstr(%nyx_string* %153)
  %155 = call i1 @nyx_file_exists(i8* %154)
  %156 = xor i1 %155, true
  br i1 %156, label %then25, label %else26
then25:
  %157 = getelementptr [37 x i8], [37 x i8]* @.str28, i32 0, i32 0
  %158 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str28.c, i8* %157, i64 36)
  %159 = load %nyx_string*, %nyx_string** %128
  %160 = call %nyx_string* @nyx_string_concat(%nyx_string* %158, %nyx_string* %159)
  %161 = getelementptr [82 x i8], [82 x i8]* @.str29, i32 0, i32 0
  %162 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str29.c, i8* %161, i64 81)
  %163 = call %nyx_string* @nyx_string_concat(%nyx_string* %160, %nyx_string* %162)
  %164 = load %nyx_string*, %nyx_string** %128
  %165 = call %nyx_string* @nyx_string_concat(%nyx_string* %163, %nyx_string* %164)
  %166 = getelementptr [2 x i8], [2 x i8]* @.str30, i32 0, i32 0
  %167 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str30.c, i8* %166, i64 1)
  %168 = call %nyx_string* @nyx_string_concat(%nyx_string* %165, %nyx_string* %167)
  %169 = getelementptr [21 x i8], [21 x i8]* @.str31, i32 0, i32 0
  %170 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str31.c, i8* %169, i64 20)
  %171 = load %nyx_string*, %nyx_string** %128
  %172 = call %nyx_string* @nyx_string_concat(%nyx_string* %170, %nyx_string* %171)
  %173 = getelementptr [92 x i8], [92 x i8]* @.str32, i32 0, i32 0
  %174 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str32.c, i8* %173, i64 91)
  %175 = call %nyx_string* @nyx_string_concat(%nyx_string* %172, %nyx_string* %174)
  %176 = load %nyx_string*, %nyx_string** %128
  %177 = call %nyx_string* @nyx_string_concat(%nyx_string* %175, %nyx_string* %176)
  %178 = getelementptr [2 x i8], [2 x i8]* @.str33, i32 0, i32 0
  %179 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str33.c, i8* %178, i64 1)
  %180 = call %nyx_string* @nyx_string_concat(%nyx_string* %177, %nyx_string* %179)
  %181 = call %nyx_string* @nyx_msg(%nyx_string* %168, %nyx_string* %180)
  %182 = call i8* @nyx_string_to_cstr(%nyx_string* %181)
  call void @nyx_print_string(i8* %182)
  ret i64 1
else26:
  br label %merge27
merge27:
  %183 = load %nyx_string*, %nyx_string** %128
  %184 = call i8* @nyx_string_to_cstr(%nyx_string* %183)
  %185 = call %nyx_string* @nyx_read_file(i8* %184)
  %186 = alloca %nyx_string*
  store %nyx_string* %185, %nyx_string** %186
  %187 = load %nyx_string*, %nyx_string** %186
  %188 = getelementptr [1 x i8], [1 x i8]* @.str34, i32 0, i32 0
  %189 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str34.c, i8* %188, i64 0)
  %190 = call i1 @nyx_string_equals(%nyx_string* %187, %nyx_string* %189)
  br i1 %190, label %then28, label %else29
then28:
  %191 = getelementptr [27 x i8], [27 x i8]* @.str35, i32 0, i32 0
  %192 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str35.c, i8* %191, i64 26)
  %193 = load %nyx_string*, %nyx_string** %128
  %194 = call %nyx_string* @nyx_string_concat(%nyx_string* %192, %nyx_string* %193)
  %195 = getelementptr [92 x i8], [92 x i8]* @.str36, i32 0, i32 0
  %196 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str36.c, i8* %195, i64 91)
  %197 = call %nyx_string* @nyx_string_concat(%nyx_string* %194, %nyx_string* %196)
  %198 = load %nyx_string*, %nyx_string** %128
  %199 = call %nyx_string* @nyx_string_concat(%nyx_string* %197, %nyx_string* %198)
  %200 = getelementptr [2 x i8], [2 x i8]* @.str37, i32 0, i32 0
  %201 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str37.c, i8* %200, i64 1)
  %202 = call %nyx_string* @nyx_string_concat(%nyx_string* %199, %nyx_string* %201)
  %203 = getelementptr [21 x i8], [21 x i8]* @.str38, i32 0, i32 0
  %204 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str38.c, i8* %203, i64 20)
  %205 = load %nyx_string*, %nyx_string** %128
  %206 = call %nyx_string* @nyx_string_concat(%nyx_string* %204, %nyx_string* %205)
  %207 = getelementptr [92 x i8], [92 x i8]* @.str39, i32 0, i32 0
  %208 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str39.c, i8* %207, i64 91)
  %209 = call %nyx_string* @nyx_string_concat(%nyx_string* %206, %nyx_string* %208)
  %210 = load %nyx_string*, %nyx_string** %128
  %211 = call %nyx_string* @nyx_string_concat(%nyx_string* %209, %nyx_string* %210)
  %212 = getelementptr [2 x i8], [2 x i8]* @.str40, i32 0, i32 0
  %213 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str40.c, i8* %212, i64 1)
  %214 = call %nyx_string* @nyx_string_concat(%nyx_string* %211, %nyx_string* %213)
  %215 = call %nyx_string* @nyx_msg(%nyx_string* %202, %nyx_string* %214)
  %216 = call i8* @nyx_string_to_cstr(%nyx_string* %215)
  call void @nyx_print_string(i8* %216)
  ret i64 1
else29:
  br label %merge30
merge30:
  %217 = load %nyx_string*, %nyx_string** %186
  %218 = getelementptr [3 x i8], [3 x i8]* @.str41, i32 0, i32 0
  %219 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str41.c, i8* %218, i64 2)
  %220 = call i1 @nyx_string_starts_with(%nyx_string* %217, %nyx_string* %219)
  br i1 %220, label %then31, label %else32
then31:
  %221 = alloca i64
  store i64 0, i64* %221
  %222 = alloca i1
  store i1 0, i1* %222
  %223 = call i8* @llvm.stacksave()
  br label %while_cond34
while_cond34:
  %224 = load i64, i64* %221
  %225 = load %nyx_string*, %nyx_string** %186
  %226 = call i64 @nyx_string_byte_length(%nyx_string* %225)
  %227 = icmp slt i64 %224, %226
  br i1 %227, label %while_body35, label %while_end36
while_body35:
  call void @llvm.stackrestore(i8* %223)
  %228 = load %nyx_string*, %nyx_string** %186
  %229 = load i64, i64* %221
  %230 = call i8 @nyx_string_char_at(%nyx_string* %228, i64 %229)
  %231 = zext i8 %230 to i64
  %232 = trunc i64 %231 to i8
  %233 = alloca i8
  store i8 %232, i8* %233
  %234 = load i8, i8* %233
  %235 = getelementptr [1 x i8], [1 x i8]* @.str42, i32 0, i32 0
  %236 = load i8, i8* %235
  %237 = zext i8 %236 to i64
  %238 = zext i8 %234 to i64
  %239 = icmp eq i64 %238, %237
  br i1 %239, label %then37, label %else38
then37:
  store i1 1, i1* %222
  %240 = load %nyx_string*, %nyx_string** %186
  %241 = load i64, i64* %221
  %242 = add i64 %241, 1
  %243 = load %nyx_string*, %nyx_string** %186
  %244 = call i64 @nyx_string_byte_length(%nyx_string* %243)
  %245 = call %nyx_string* @nyx_string_substring(%nyx_string* %240, i64 %242, i64 %244)
  store %nyx_string* %245, %nyx_string** %186
  %246 = load %nyx_string*, %nyx_string** %186
  %247 = call i64 @nyx_string_byte_length(%nyx_string* %246)
  store i64 %247, i64* %221
  br label %merge39
else38:
  %248 = load i64, i64* %221
  %249 = add i64 %248, 1
  store i64 %249, i64* %221
  br label %merge39
merge39:
  br label %while_cond34
while_end36:
  %250 = load i1, i1* %222
  %251 = xor i1 %250, true
  br i1 %251, label %then40, label %else41
then40:
  %252 = getelementptr [1 x i8], [1 x i8]* @.str43, i32 0, i32 0
  %253 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str43.c, i8* %252, i64 0)
  store %nyx_string* %253, %nyx_string** %186
  br label %merge42
else41:
  br label %merge42
merge42:
  br label %merge33
else32:
  br label %merge33
merge33:
  %254 = load %nyx_string*, %nyx_string** %186
  %255 = call %nyx_string* @resolve_source(%nyx_string* %254)
  %256 = alloca %nyx_string*
  store %nyx_string* %255, %nyx_string** %256
  %257 = load i1, i1* %8
  br i1 %257, label %then43, label %else44
then43:
  %258 = getelementptr [26 x i8], [26 x i8]* @.str44, i32 0, i32 0
  %259 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str44.c, i8* %258, i64 25)
  %260 = call i8* @nyx_string_to_cstr(%nyx_string* %259)
  call void @nyx_print_string(i8* %260)
  br label %merge45
else44:
  br label %merge45
merge45:
  %261 = load %nyx_string*, %nyx_string** %256
  %262 = call { i64, i8* }* @tokenize(%nyx_string* %261)
  %263 = alloca { i64, i8* }*
  store { i64, i8* }* %262, { i64, i8* }** %263
  %264 = call i64 @get_lex_error_count()
  %265 = alloca i64
  store i64 %264, i64* %265
  %266 = load i64, i64* %265
  %267 = icmp sgt i64 %266, 0
  br i1 %267, label %then46, label %else47
then46:
  %268 = load i1, i1* %8
  br i1 %268, label %then49, label %else50
then49:
  %269 = getelementptr [19 x i8], [19 x i8]* @.str45, i32 0, i32 0
  %270 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str45.c, i8* %269, i64 18)
  %271 = load i64, i64* %265
  %272 = call %nyx_string* @nyx_string_from_int(i64 %271)
  %273 = call %nyx_string* @nyx_string_concat(%nyx_string* %270, %nyx_string* %272)
  %274 = call i8* @nyx_string_to_cstr(%nyx_string* %273)
  call void @nyx_print_string(i8* %274)
  br label %merge51
else50:
  %275 = getelementptr [11 x i8], [11 x i8]* @.str46, i32 0, i32 0
  %276 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str46.c, i8* %275, i64 10)
  %277 = getelementptr [7 x i8], [7 x i8]* @.str47, i32 0, i32 0
  %278 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str47.c, i8* %277, i64 6)
  %279 = getelementptr [7 x i8], [7 x i8]* @.str48, i32 0, i32 0
  %280 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str48.c, i8* %279, i64 6)
  %281 = call %nyx_string* @nyx_msg(%nyx_string* %278, %nyx_string* %280)
  %282 = call %nyx_string* @nyx_string_concat(%nyx_string* %276, %nyx_string* %281)
  %283 = call i8* @nyx_string_to_cstr(%nyx_string* %282)
  call void @nyx_print_string(i8* %283)
  br label %merge51
merge51:
  ret i64 1
else47:
  br label %merge48
merge48:
  %284 = load i1, i1* %8
  br i1 %284, label %then52, label %else53
then52:
  %285 = getelementptr [15 x i8], [15 x i8]* @.str49, i32 0, i32 0
  %286 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str49.c, i8* %285, i64 14)
  %287 = load { i64, i8* }*, { i64, i8* }** %263
  %288 = call i64 @nyx_array_length({ i64, i8* }* %287)
  %289 = call %nyx_string* @nyx_string_from_int(i64 %288)
  %290 = call %nyx_string* @nyx_string_concat(%nyx_string* %286, %nyx_string* %289)
  %291 = call i8* @nyx_string_to_cstr(%nyx_string* %290)
  call void @nyx_print_string(i8* %291)
  br label %merge54
else53:
  %292 = getelementptr [11 x i8], [11 x i8]* @.str50, i32 0, i32 0
  %293 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str50.c, i8* %292, i64 10)
  %294 = load { i64, i8* }*, { i64, i8* }** %263
  %295 = call i64 @nyx_array_length({ i64, i8* }* %294)
  %296 = call %nyx_string* @nyx_string_from_int(i64 %295)
  %297 = call %nyx_string* @nyx_string_concat(%nyx_string* %293, %nyx_string* %296)
  %298 = getelementptr [8 x i8], [8 x i8]* @.str51, i32 0, i32 0
  %299 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str51.c, i8* %298, i64 7)
  %300 = call %nyx_string* @nyx_string_concat(%nyx_string* %297, %nyx_string* %299)
  %301 = call i8* @nyx_string_to_cstr(%nyx_string* %300)
  call void @nyx_print_string(i8* %301)
  br label %merge54
merge54:
  %302 = load i1, i1* %8
  br i1 %302, label %then55, label %else56
then55:
  %303 = getelementptr [17 x i8], [17 x i8]* @.str52, i32 0, i32 0
  %304 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str52.c, i8* %303, i64 16)
  %305 = call i8* @nyx_string_to_cstr(%nyx_string* %304)
  call void @nyx_print_string(i8* %305)
  br label %merge57
else56:
  br label %merge57
merge57:
  %306 = load { i64, i8* }*, { i64, i8* }** %263
  %307 = load %nyx_string*, %nyx_string** %256
  %308 = call { i64, i8* }* @parse({ i64, i8* }* %306, %nyx_string* %307)
  %309 = alloca { i64, i8* }*
  store { i64, i8* }* %308, { i64, i8* }** %309
  %310 = load { i64, i8* }*, { i64, i8* }** %309
  %311 = call i64 @nyx_array_get_checked({ i64, i8* }* %310, i64 0, i64 2)
  %312 = inttoptr i64 %311 to %nyx_string*
  %313 = alloca %nyx_string*
  store %nyx_string* %312, %nyx_string** %313
  %314 = call i64 @get_parse_error_count()
  %315 = alloca i64
  store i64 %314, i64* %315
  %316 = load i64, i64* %315
  %317 = icmp sgt i64 %316, 0
  br i1 %317, label %then58, label %else59
then58:
  %318 = load i1, i1* %8
  br i1 %318, label %then61, label %else62
then61:
  %319 = getelementptr [21 x i8], [21 x i8]* @.str53, i32 0, i32 0
  %320 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str53.c, i8* %319, i64 20)
  %321 = load i64, i64* %315
  %322 = call %nyx_string* @nyx_string_from_int(i64 %321)
  %323 = call %nyx_string* @nyx_string_concat(%nyx_string* %320, %nyx_string* %322)
  %324 = call i8* @nyx_string_to_cstr(%nyx_string* %323)
  call void @nyx_print_string(i8* %324)
  br label %merge63
else62:
  %325 = getelementptr [11 x i8], [11 x i8]* @.str54, i32 0, i32 0
  %326 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str54.c, i8* %325, i64 10)
  %327 = getelementptr [7 x i8], [7 x i8]* @.str55, i32 0, i32 0
  %328 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str55.c, i8* %327, i64 6)
  %329 = getelementptr [7 x i8], [7 x i8]* @.str56, i32 0, i32 0
  %330 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str56.c, i8* %329, i64 6)
  %331 = call %nyx_string* @nyx_msg(%nyx_string* %328, %nyx_string* %330)
  %332 = call %nyx_string* @nyx_string_concat(%nyx_string* %326, %nyx_string* %331)
  %333 = call i8* @nyx_string_to_cstr(%nyx_string* %332)
  call void @nyx_print_string(i8* %333)
  br label %merge63
merge63:
  ret i64 1
else59:
  br label %merge60
merge60:
  %334 = load i1, i1* %8
  br i1 %334, label %then64, label %else65
then64:
  %335 = getelementptr [17 x i8], [17 x i8]* @.str57, i32 0, i32 0
  %336 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str57.c, i8* %335, i64 16)
  %337 = load %nyx_string*, %nyx_string** %313
  %338 = call %nyx_string* @nyx_string_concat(%nyx_string* %336, %nyx_string* %337)
  %339 = call i8* @nyx_string_to_cstr(%nyx_string* %338)
  call void @nyx_print_string(i8* %339)
  br label %merge66
else65:
  %340 = getelementptr [13 x i8], [13 x i8]* @.str58, i32 0, i32 0
  %341 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str58.c, i8* %340, i64 12)
  %342 = call i8* @nyx_string_to_cstr(%nyx_string* %341)
  call void @nyx_print_string(i8* %342)
  br label %merge66
merge66:
  %343 = getelementptr [18 x i8], [18 x i8]* @.str59, i32 0, i32 0
  %344 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str59.c, i8* %343, i64 17)
  %345 = call i8* @nyx_string_to_cstr(%nyx_string* %344)
  %346 = call %nyx_string* @nyx_getenv(i8* %345)
  %347 = getelementptr [1 x i8], [1 x i8]* @.str60, i32 0, i32 0
  %348 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str60.c, i8* %347, i64 0)
  %349 = call i1 @nyx_string_equals(%nyx_string* %346, %nyx_string* %348)
  %350 = xor i1 %349, true
  %351 = alloca i1
  store i1 %350, i1* %351
  %352 = load i1, i1* %8
  br i1 %352, label %then67, label %else68
then67:
  %353 = getelementptr [27 x i8], [27 x i8]* @.str61, i32 0, i32 0
  %354 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str61.c, i8* %353, i64 26)
  %355 = call i8* @nyx_string_to_cstr(%nyx_string* %354)
  call void @nyx_print_string(i8* %355)
  br label %merge69
else68:
  br label %merge69
merge69:
  %356 = load i1, i1* %351
  br i1 %356, label %then70, label %else71
then70:
  %357 = load i1, i1* %8
  br i1 %357, label %then73, label %else74
then73:
  %358 = getelementptr [38 x i8], [38 x i8]* @.str62, i32 0, i32 0
  %359 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str62.c, i8* %358, i64 37)
  %360 = call i8* @nyx_string_to_cstr(%nyx_string* %359)
  call void @nyx_print_string(i8* %360)
  br label %merge75
else74:
  %361 = getelementptr [11 x i8], [11 x i8]* @.str63, i32 0, i32 0
  %362 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str63.c, i8* %361, i64 10)
  %363 = getelementptr [8 x i8], [8 x i8]* @.str64, i32 0, i32 0
  %364 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str64.c, i8* %363, i64 7)
  %365 = getelementptr [8 x i8], [8 x i8]* @.str65, i32 0, i32 0
  %366 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str65.c, i8* %365, i64 7)
  %367 = call %nyx_string* @nyx_msg(%nyx_string* %364, %nyx_string* %366)
  %368 = call %nyx_string* @nyx_string_concat(%nyx_string* %362, %nyx_string* %367)
  %369 = call i8* @nyx_string_to_cstr(%nyx_string* %368)
  call void @nyx_print_string(i8* %369)
  br label %merge75
merge75:
  br label %merge72
else71:
  %370 = load { i64, i8* }*, { i64, i8* }** %309
  %371 = call i64 @nyx_array_get({ i64, i8* }* %370, i64 0)
  %372 = inttoptr i64 %371 to %nyx_string*
  %373 = call i64 @nyx_array_get({ i64, i8* }* %370, i64 1)
  %374 = inttoptr i64 %373 to { i64, i8* }*
  %375 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %370, i64 2)
  %376 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %370, i64 3)
  %377 = insertvalue %ASTNode undef, %nyx_string* %372, 0
  %378 = insertvalue %ASTNode %377, { i64, i8* }* %374, 1
  %379 = insertvalue %ASTNode %378, i64 %375, 2
  %380 = insertvalue %ASTNode %379, i64 %376, 3
  %381 = call i1 @analyze(%ASTNode %380)
  %382 = alloca i1
  store i1 %381, i1* %382
  %383 = load i1, i1* %382
  %384 = xor i1 %383, true
  br i1 %384, label %then76, label %else77
then76:
  %385 = load i1, i1* %8
  br i1 %385, label %then79, label %else80
then79:
  %386 = getelementptr [28 x i8], [28 x i8]* @.str66, i32 0, i32 0
  %387 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str66.c, i8* %386, i64 27)
  %388 = call i8* @nyx_string_to_cstr(%nyx_string* %387)
  call void @nyx_print_string(i8* %388)
  br label %merge81
else80:
  %389 = getelementptr [11 x i8], [11 x i8]* @.str67, i32 0, i32 0
  %390 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str67.c, i8* %389, i64 10)
  %391 = getelementptr [7 x i8], [7 x i8]* @.str68, i32 0, i32 0
  %392 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str68.c, i8* %391, i64 6)
  %393 = getelementptr [7 x i8], [7 x i8]* @.str69, i32 0, i32 0
  %394 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str69.c, i8* %393, i64 6)
  %395 = call %nyx_string* @nyx_msg(%nyx_string* %392, %nyx_string* %394)
  %396 = call %nyx_string* @nyx_string_concat(%nyx_string* %390, %nyx_string* %395)
  %397 = call i8* @nyx_string_to_cstr(%nyx_string* %396)
  call void @nyx_print_string(i8* %397)
  br label %merge81
merge81:
  ret i64 1
else77:
  br label %merge78
merge78:
  %398 = load i1, i1* %8
  br i1 %398, label %then82, label %else83
then82:
  %399 = getelementptr [9 x i8], [9 x i8]* @.str70, i32 0, i32 0
  %400 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str70.c, i8* %399, i64 8)
  %401 = call i8* @nyx_string_to_cstr(%nyx_string* %400)
  call void @nyx_print_string(i8* %401)
  br label %merge84
else83:
  %402 = getelementptr [13 x i8], [13 x i8]* @.str71, i32 0, i32 0
  %403 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str71.c, i8* %402, i64 12)
  %404 = call i8* @nyx_string_to_cstr(%nyx_string* %403)
  call void @nyx_print_string(i8* %404)
  br label %merge84
merge84:
  %405 = load { i64, i8* }*, { i64, i8* }** %309
  %406 = call i1 @borrow_check({ i64, i8* }* %405)
  %407 = alloca i1
  store i1 %406, i1* %407
  br label %merge72
merge72:
  %408 = load { i64, i8* }*, { i64, i8* }** %309
  %409 = call { i64, i8* }* @licm({ i64, i8* }* %408)
  store { i64, i8* }* %409, { i64, i8* }** %309
  %410 = load i1, i1* %8
  br i1 %410, label %then85, label %else86
then85:
  %411 = getelementptr [25 x i8], [25 x i8]* @.str72, i32 0, i32 0
  %412 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str72.c, i8* %411, i64 24)
  %413 = call i8* @nyx_string_to_cstr(%nyx_string* %412)
  call void @nyx_print_string(i8* %413)
  br label %merge87
else86:
  br label %merge87
merge87:
  %414 = load { i64, i8* }*, { i64, i8* }** %309
  %415 = load %nyx_string*, %nyx_string** %128
  %416 = call i64 @nyx_array_get({ i64, i8* }* %414, i64 0)
  %417 = inttoptr i64 %416 to %nyx_string*
  %418 = call i64 @nyx_array_get({ i64, i8* }* %414, i64 1)
  %419 = inttoptr i64 %418 to { i64, i8* }*
  %420 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %414, i64 2)
  %421 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %414, i64 3)
  %422 = insertvalue %ASTNode undef, %nyx_string* %417, 0
  %423 = insertvalue %ASTNode %422, { i64, i8* }* %419, 1
  %424 = insertvalue %ASTNode %423, i64 %420, 2
  %425 = insertvalue %ASTNode %424, i64 %421, 3
  %426 = call %nyx_string* @generate_llvm(%ASTNode %425, %nyx_string* %415)
  %427 = alloca %nyx_string*
  store %nyx_string* %426, %nyx_string** %427
  %428 = call i64 @get_codegen_error_count()
  %429 = alloca i64
  store i64 %428, i64* %429
  %430 = load i64, i64* %429
  %431 = icmp sgt i64 %430, 0
  br i1 %431, label %then88, label %else89
then88:
  %432 = load i1, i1* %8
  br i1 %432, label %then91, label %else92
then91:
  %433 = getelementptr [23 x i8], [23 x i8]* @.str73, i32 0, i32 0
  %434 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str73.c, i8* %433, i64 22)
  %435 = load i64, i64* %429
  %436 = call %nyx_string* @nyx_string_from_int(i64 %435)
  %437 = call %nyx_string* @nyx_string_concat(%nyx_string* %434, %nyx_string* %436)
  %438 = call i8* @nyx_string_to_cstr(%nyx_string* %437)
  call void @nyx_print_string(i8* %438)
  br label %merge93
else92:
  %439 = getelementptr [11 x i8], [11 x i8]* @.str74, i32 0, i32 0
  %440 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str74.c, i8* %439, i64 10)
  %441 = getelementptr [7 x i8], [7 x i8]* @.str75, i32 0, i32 0
  %442 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str75.c, i8* %441, i64 6)
  %443 = getelementptr [7 x i8], [7 x i8]* @.str76, i32 0, i32 0
  %444 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str76.c, i8* %443, i64 6)
  %445 = call %nyx_string* @nyx_msg(%nyx_string* %442, %nyx_string* %444)
  %446 = call %nyx_string* @nyx_string_concat(%nyx_string* %440, %nyx_string* %445)
  %447 = call i8* @nyx_string_to_cstr(%nyx_string* %446)
  call void @nyx_print_string(i8* %447)
  br label %merge93
merge93:
  ret i64 1
else89:
  br label %merge90
merge90:
  %448 = load %nyx_string*, %nyx_string** %136
  %449 = load %nyx_string*, %nyx_string** %427
  %450 = call i8* @nyx_string_to_cstr(%nyx_string* %448)
  %451 = call i8* @nyx_string_to_cstr(%nyx_string* %449)
  %452 = call i1 @nyx_write_file(i8* %450, i8* %451)
  %453 = call i64 @get_fn_count()
  %454 = alloca i64
  store i64 %453, i64* %454
  %455 = load %nyx_string*, %nyx_string** %427
  %456 = call i64 @nyx_string_byte_length(%nyx_string* %455)
  %457 = sdiv i64 %456, 1024
  %458 = alloca i64
  store i64 %457, i64* %458
  %459 = load i1, i1* %8
  br i1 %459, label %then94, label %else95
then94:
  %460 = getelementptr [16 x i8], [16 x i8]* @.str77, i32 0, i32 0
  %461 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str77.c, i8* %460, i64 15)
  %462 = load %nyx_string*, %nyx_string** %136
  %463 = call %nyx_string* @nyx_string_concat(%nyx_string* %461, %nyx_string* %462)
  %464 = getelementptr [3 x i8], [3 x i8]* @.str78, i32 0, i32 0
  %465 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str78.c, i8* %464, i64 2)
  %466 = call %nyx_string* @nyx_string_concat(%nyx_string* %463, %nyx_string* %465)
  %467 = load %nyx_string*, %nyx_string** %427
  %468 = call i64 @nyx_string_byte_length(%nyx_string* %467)
  %469 = call %nyx_string* @nyx_string_from_int(i64 %468)
  %470 = call %nyx_string* @nyx_string_concat(%nyx_string* %466, %nyx_string* %469)
  %471 = getelementptr [8 x i8], [8 x i8]* @.str79, i32 0, i32 0
  %472 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str79.c, i8* %471, i64 7)
  %473 = call %nyx_string* @nyx_string_concat(%nyx_string* %470, %nyx_string* %472)
  %474 = call i8* @nyx_string_to_cstr(%nyx_string* %473)
  call void @nyx_print_string(i8* %474)
  %475 = getelementptr [23 x i8], [23 x i8]* @.str80, i32 0, i32 0
  %476 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str80.c, i8* %475, i64 22)
  %477 = call i8* @nyx_string_to_cstr(%nyx_string* %476)
  call void @nyx_print_string(i8* %477)
  br label %merge96
else95:
  %478 = getelementptr [11 x i8], [11 x i8]* @.str81, i32 0, i32 0
  %479 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str81.c, i8* %478, i64 10)
  %480 = load i64, i64* %454
  %481 = call %nyx_string* @nyx_string_from_int(i64 %480)
  %482 = call %nyx_string* @nyx_string_concat(%nyx_string* %479, %nyx_string* %481)
  %483 = getelementptr [2 x i8], [2 x i8]* @.str82, i32 0, i32 0
  %484 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str82.c, i8* %483, i64 1)
  %485 = call %nyx_string* @nyx_string_concat(%nyx_string* %482, %nyx_string* %484)
  %486 = getelementptr [10 x i8], [10 x i8]* @.str83, i32 0, i32 0
  %487 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str83.c, i8* %486, i64 9)
  %488 = getelementptr [10 x i8], [10 x i8]* @.str84, i32 0, i32 0
  %489 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str84.c, i8* %488, i64 9)
  %490 = call %nyx_string* @nyx_msg(%nyx_string* %487, %nyx_string* %489)
  %491 = call %nyx_string* @nyx_string_concat(%nyx_string* %485, %nyx_string* %490)
  %492 = getelementptr [3 x i8], [3 x i8]* @.str85, i32 0, i32 0
  %493 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str85.c, i8* %492, i64 2)
  %494 = call %nyx_string* @nyx_string_concat(%nyx_string* %491, %nyx_string* %493)
  %495 = load i64, i64* %458
  %496 = call %nyx_string* @nyx_string_from_int(i64 %495)
  %497 = call %nyx_string* @nyx_string_concat(%nyx_string* %494, %nyx_string* %496)
  %498 = getelementptr [6 x i8], [6 x i8]* @.str86, i32 0, i32 0
  %499 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str86.c, i8* %498, i64 5)
  %500 = call %nyx_string* @nyx_string_concat(%nyx_string* %497, %nyx_string* %499)
  %501 = call i8* @nyx_string_to_cstr(%nyx_string* %500)
  call void @nyx_print_string(i8* %501)
  %502 = getelementptr [1 x i8], [1 x i8]* @.str87, i32 0, i32 0
  %503 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str87.c, i8* %502, i64 0)
  %504 = call i8* @nyx_string_to_cstr(%nyx_string* %503)
  call void @nyx_print_string(i8* %504)
  %505 = getelementptr [7 x i8], [7 x i8]* @.str88, i32 0, i32 0
  %506 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str88.c, i8* %505, i64 6)
  %507 = load %nyx_string*, %nyx_string** %136
  %508 = call %nyx_string* @nyx_string_concat(%nyx_string* %506, %nyx_string* %507)
  %509 = call i8* @nyx_string_to_cstr(%nyx_string* %508)
  call void @nyx_print_string(i8* %509)
  %510 = getelementptr [1 x i8], [1 x i8]* @.str89, i32 0, i32 0
  %511 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str89.c, i8* %510, i64 0)
  %512 = call i8* @nyx_string_to_cstr(%nyx_string* %511)
  call void @nyx_print_string(i8* %512)
  br label %merge96
merge96:
  ret i64 0
}


attributes #0 = { returns_twice }

