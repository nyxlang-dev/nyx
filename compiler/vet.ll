source_filename = "script.nx"
target triple = "x86_64-pc-linux-gnu"

%VetIssue = type { %nyx_string*, %nyx_string*, %nyx_string*, i64 }

@.str0 = private unnamed_addr constant [2 x i8] c"[\00"
@.str0.c = internal global %nyx_string* null
@.str1 = private unnamed_addr constant [2 x i8] c"]\00"
@.str1.c = internal global %nyx_string* null
@.str2 = private unnamed_addr constant [3 x i8] c":?\00"
@.str2.c = internal global %nyx_string* null
@.str3 = private unnamed_addr constant [2 x i8] c":\00"
@.str3.c = internal global %nyx_string* null
@.str4 = private unnamed_addr constant [2 x i8] c" \00"
@.str4.c = internal global %nyx_string* null
@.str5 = private unnamed_addr constant [3 x i8] c": \00"
@.str5.c = internal global %nyx_string* null
@.str6 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str6.c = internal global %nyx_string* null
@.str7 = private unnamed_addr constant [8 x i8] c"pattern\00"
@.str7.c = internal global %nyx_string* null
@.str8 = private unnamed_addr constant [1 x i8] c"\00"
@.str8.c = internal global %nyx_string* null
@.str9 = private unnamed_addr constant [9 x i8] c"vet_code\00"
@.str9.c = internal global %nyx_string* null
@.str10 = private unnamed_addr constant [9 x i8] c"title_en\00"
@.str10.c = internal global %nyx_string* null
@.str11 = private unnamed_addr constant [3 x i8] c"id\00"
@.str11.c = internal global %nyx_string* null
@.str12 = private unnamed_addr constant [23 x i8] c" (docs/nyx/LLM.md §5 \00"
@.str12.c = internal global %nyx_string* null
@.str13 = private unnamed_addr constant [2 x i8] c")\00"
@.str13.c = internal global %nyx_string* null
@.str14 = private unnamed_addr constant [8 x i8] c"warning\00"
@.str14.c = internal global %nyx_string* null
@.slotT15 = private unnamed_addr constant [9 x i8] c"VetIssue\00"
@.slotT16 = private unnamed_addr constant [9 x i8] c"VetIssue\00"
@.str17 = private unnamed_addr constant [9 x i8] c"let_decl\00"
@.str17.c = internal global %nyx_string* null
@.str18 = private unnamed_addr constant [9 x i8] c"var_decl\00"
@.str18.c = internal global %nyx_string* null
@.str19 = private unnamed_addr constant [2 x i8] c"(\00"
@.str19.c = internal global %nyx_string* null
@.str20 = private unnamed_addr constant [1 x i8] c"\00"
@.str20.c = internal global %nyx_string* null
@.str21 = private unnamed_addr constant [13 x i8] c"__declline__\00"
@.str21.c = internal global %nyx_string* null
@.str22 = private unnamed_addr constant [13 x i8] c"__declline__\00"
@.str22.c = internal global %nyx_string* null
@.str23 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str23.c = internal global %nyx_string* null
@.str24 = private unnamed_addr constant [7 x i8] c"export\00"
@.str24.c = internal global %nyx_string* null
@.str25 = private unnamed_addr constant [9 x i8] c"function\00"
@.str25.c = internal global %nyx_string* null
@.str26 = private unnamed_addr constant [4 x i8] c"fn \00"
@.str26.c = internal global %nyx_string* null
@.str27 = private unnamed_addr constant [8 x i8] c"pub fn \00"
@.str27.c = internal global %nyx_string* null
@.str28 = private unnamed_addr constant [3 x i8] c"Fn\00"
@.str28.c = internal global %nyx_string* null
@.str29 = private unnamed_addr constant [8 x i8] c"warning\00"
@.str29.c = internal global %nyx_string* null
@.str30 = private unnamed_addr constant [5 x i8] c"W004\00"
@.str30.c = internal global %nyx_string* null
@.str31 = private unnamed_addr constant [2 x i8] c"'\00"
@.str31.c = internal global %nyx_string* null
@.str32 = private unnamed_addr constant [61 x i8] c"' is declared bare `Fn` and its call result is used on line \00"
@.str32.c = internal global %nyx_string* null
@.str33 = private unnamed_addr constant [182 x i8] c": a Fn value without a signature is called assuming an i64 return, so a callback returning a struct crashes and one returning float returns garbage — declare the signature, e.g. `\00"
@.str33.c = internal global %nyx_string* null
@.str34 = private unnamed_addr constant [14 x i8] c": Fn(T) -> R`\00"
@.str34.c = internal global %nyx_string* null
@.str35 = private unnamed_addr constant [1 x i8] c"\00"
@.str35.c = internal global %nyx_string* null
@.str36 = private unnamed_addr constant [8 x i8] c"warning\00"
@.str36.c = internal global %nyx_string* null
@.str37 = private unnamed_addr constant [5 x i8] c"W003\00"
@.str37.c = internal global %nyx_string* null
@.str38 = private unnamed_addr constant [25 x i8] c"unreachable code after '\00"
@.str38.c = internal global %nyx_string* null
@.str39 = private unnamed_addr constant [11 x i8] c"' on line \00"
@.str39.c = internal global %nyx_string* null
@.str40 = private unnamed_addr constant [7 x i8] c"return\00"
@.str40.c = internal global %nyx_string* null
@.str41 = private unnamed_addr constant [6 x i8] c"break\00"
@.str41.c = internal global %nyx_string* null
@.str42 = private unnamed_addr constant [9 x i8] c"continue\00"
@.str42.c = internal global %nyx_string* null
@.str43 = private unnamed_addr constant [9 x i8] c"function\00"
@.str43.c = internal global %nyx_string* null
@.str44 = private unnamed_addr constant [5 x i8] c"main\00"
@.str44.c = internal global %nyx_string* null
@.str45 = private unnamed_addr constant [14 x i8] c"import_module\00"
@.str45.c = internal global %nyx_string* null
@.str46 = private unnamed_addr constant [1 x i8] c"\00"
@.str46.c = internal global %nyx_string* null
@.str47 = private unnamed_addr constant [2 x i8] c".\00"
@.str47.c = internal global %nyx_string* null
@.str48 = private unnamed_addr constant [8 x i8] c"warning\00"
@.str48.c = internal global %nyx_string* null
@.str49 = private unnamed_addr constant [5 x i8] c"W002\00"
@.str49.c = internal global %nyx_string* null
@.str50 = private unnamed_addr constant [18 x i8] c"imported module '\00"
@.str50.c = internal global %nyx_string* null
@.str51 = private unnamed_addr constant [14 x i8] c"' is not used\00"
@.str51.c = internal global %nyx_string* null
@.slotT52 = private unnamed_addr constant [9 x i8] c"VetIssue\00"
@.slotT53 = private unnamed_addr constant [9 x i8] c"VetIssue\00"
@.slotT54 = private unnamed_addr constant [9 x i8] c"VetIssue\00"
@.slotT55 = private unnamed_addr constant [9 x i8] c"VetIssue\00"
@.str56 = private unnamed_addr constant [9 x i8] c"function\00"
@.str56.c = internal global %nyx_string* null
@.str57 = private unnamed_addr constant [4 x i8] c"let\00"
@.str57.c = internal global %nyx_string* null
@.str58 = private unnamed_addr constant [4 x i8] c"var\00"
@.str58.c = internal global %nyx_string* null
@.str59 = private unnamed_addr constant [2 x i8] c"_\00"
@.str59.c = internal global %nyx_string* null
@.str60 = private unnamed_addr constant [8 x i8] c"warning\00"
@.str60.c = internal global %nyx_string* null
@.str61 = private unnamed_addr constant [5 x i8] c"W001\00"
@.str61.c = internal global %nyx_string* null
@.str62 = private unnamed_addr constant [11 x i8] c"variable '\00"
@.str62.c = internal global %nyx_string* null
@.str63 = private unnamed_addr constant [38 x i8] c"' declared but not used in function '\00"
@.str63.c = internal global %nyx_string* null
@.str64 = private unnamed_addr constant [2 x i8] c"'\00"
@.str64.c = internal global %nyx_string* null
@.str65 = private unnamed_addr constant [23 x i8] c"=== Nyx Vet v1.8.0 ===\00"
@.str65.c = internal global %nyx_string* null
@.str66 = private unnamed_addr constant [8 x i8] c"NYX_SRC\00"
@.str66.c = internal global %nyx_string* null
@.str67 = private unnamed_addr constant [1 x i8] c"\00"
@.str67.c = internal global %nyx_string* null
@.str68 = private unnamed_addr constant [1 x i8] c"\00"
@.str68.c = internal global %nyx_string* null
@.str69 = private unnamed_addr constant [62 x i8] c"uso: nyx vet <archivo.nx>    (o NYX_SRC=<archivo.nx> nyx_vet)\00"
@.str69.c = internal global %nyx_string* null
@.str70 = private unnamed_addr constant [33 x i8] c"nyx_vet: no existe el archivo «\00"
@.str70.c = internal global %nyx_string* null
@.str71 = private unnamed_addr constant [3 x i8] c"»\00"
@.str71.c = internal global %nyx_string* null
@.str72 = private unnamed_addr constant [62 x i8] c"uso: nyx vet <archivo.nx>    (o NYX_SRC=<archivo.nx> nyx_vet)\00"
@.str72.c = internal global %nyx_string* null
@.str73 = private unnamed_addr constant [20 x i8] c"[1/3] Tokenizing...\00"
@.str73.c = internal global %nyx_string* null
@.str74 = private unnamed_addr constant [17 x i8] c"[2/3] Parsing...\00"
@.str74.c = internal global %nyx_string* null
@.str75 = private unnamed_addr constant [19 x i8] c"[3/3] Analyzing...\00"
@.str75.c = internal global %nyx_string* null
@.str76 = private unnamed_addr constant [20 x i8] c"✓ No issues found\00"
@.str76.c = internal global %nyx_string* null
@.str77 = private unnamed_addr constant [17 x i8] c" issue(s) found:\00"
@.str77.c = internal global %nyx_string* null
@.slotT78 = private unnamed_addr constant [9 x i8] c"VetIssue\00"
@.str79 = private unnamed_addr constant [6 x i8] c"Done.\00"
@.str79.c = internal global %nyx_string* null
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

declare { i64, i8* }* @tokenize(%nyx_string*)
declare { i64, i8* }* @parse({ i64, i8* }*, %nyx_string*)
declare { i64, i8* }* @gotchas_table()
declare %nyx_string* @gotcha_field({ i64, i8* }*, %nyx_string*)
declare %nyx_string* @gotcha_scan_line(%nyx_string*)

define internal %VetIssue @make_issue(
%nyx_string* %sev.param, %nyx_string* %code.param, %nyx_string* %msg.param, i64 %line.param) {
  %sev.ptr = alloca %nyx_string*
  store %nyx_string* %sev.param, %nyx_string** %sev.ptr
  %code.ptr = alloca %nyx_string*
  store %nyx_string* %code.param, %nyx_string** %code.ptr
  %msg.ptr = alloca %nyx_string*
  store %nyx_string* %msg.param, %nyx_string** %msg.ptr
  %line.ptr = alloca i64
  store i64 %line.param, i64* %line.ptr
  %1 = getelementptr %VetIssue, %VetIssue* null, i32 1
  %2 = ptrtoint %VetIssue* %1 to i64
  %3 = call i8* @GC_malloc(i64 %2)
  %4 = bitcast i8* %3 to %VetIssue*
  %5 = load %nyx_string*, %nyx_string** %sev.ptr
  %6 = getelementptr %VetIssue, %VetIssue* %4, i32 0, i32 0
  store %nyx_string* %5, %nyx_string** %6
  %7 = load %nyx_string*, %nyx_string** %code.ptr
  %8 = getelementptr %VetIssue, %VetIssue* %4, i32 0, i32 1
  store %nyx_string* %7, %nyx_string** %8
  %9 = load %nyx_string*, %nyx_string** %msg.ptr
  %10 = getelementptr %VetIssue, %VetIssue* %4, i32 0, i32 2
  store %nyx_string* %9, %nyx_string** %10
  %11 = load i64, i64* %line.ptr
  %12 = getelementptr %VetIssue, %VetIssue* %4, i32 0, i32 3
  store i64 %11, i64* %12
  %13 = load %VetIssue, %VetIssue* %4
  ret %VetIssue %13
}

define internal i64 @print_issue(
%VetIssue %issue.param, %nyx_string* %path.param) {
  %issue.ptr = alloca %VetIssue
  store %VetIssue %issue.param, %VetIssue* %issue.ptr
  %path.ptr = alloca %nyx_string*
  store %nyx_string* %path.param, %nyx_string** %path.ptr
  %14 = getelementptr %VetIssue, %VetIssue* %issue.ptr, i32 0, i32 0
  %15 = load %nyx_string*, %nyx_string** %14
  %16 = getelementptr [2 x i8], [2 x i8]* @.str0, i32 0, i32 0
  %17 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str0.c, i8* %16, i64 1)
  %18 = call %nyx_string* @nyx_string_concat(%nyx_string* %15, %nyx_string* %17)
  %19 = getelementptr %VetIssue, %VetIssue* %issue.ptr, i32 0, i32 1
  %20 = load %nyx_string*, %nyx_string** %19
  %21 = call %nyx_string* @nyx_string_concat(%nyx_string* %18, %nyx_string* %20)
  %22 = getelementptr [2 x i8], [2 x i8]* @.str1, i32 0, i32 0
  %23 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1.c, i8* %22, i64 1)
  %24 = call %nyx_string* @nyx_string_concat(%nyx_string* %21, %nyx_string* %23)
  %25 = alloca %nyx_string*
  store %nyx_string* %24, %nyx_string** %25
  %26 = load %nyx_string*, %nyx_string** %path.ptr
  %27 = getelementptr [3 x i8], [3 x i8]* @.str2, i32 0, i32 0
  %28 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str2.c, i8* %27, i64 2)
  %29 = call %nyx_string* @nyx_string_concat(%nyx_string* %26, %nyx_string* %28)
  %30 = alloca %nyx_string*
  store %nyx_string* %29, %nyx_string** %30
  %31 = getelementptr %VetIssue, %VetIssue* %issue.ptr, i32 0, i32 3
  %32 = load i64, i64* %31
  %33 = icmp sgt i64 %32, 0
  br i1 %33, label %then0, label %else1
then0:
  %34 = load %nyx_string*, %nyx_string** %path.ptr
  %35 = getelementptr [2 x i8], [2 x i8]* @.str3, i32 0, i32 0
  %36 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str3.c, i8* %35, i64 1)
  %37 = call %nyx_string* @nyx_string_concat(%nyx_string* %34, %nyx_string* %36)
  %38 = getelementptr %VetIssue, %VetIssue* %issue.ptr, i32 0, i32 3
  %39 = load i64, i64* %38
  %40 = call %nyx_string* @nyx_string_from_int(i64 %39)
  %41 = call %nyx_string* @nyx_string_concat(%nyx_string* %37, %nyx_string* %40)
  store %nyx_string* %41, %nyx_string** %30
  br label %merge2
else1:
  br label %merge2
merge2:
  %42 = load %nyx_string*, %nyx_string** %25
  %43 = getelementptr [2 x i8], [2 x i8]* @.str4, i32 0, i32 0
  %44 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str4.c, i8* %43, i64 1)
  %45 = call %nyx_string* @nyx_string_concat(%nyx_string* %42, %nyx_string* %44)
  %46 = load %nyx_string*, %nyx_string** %30
  %47 = call %nyx_string* @nyx_string_concat(%nyx_string* %45, %nyx_string* %46)
  %48 = getelementptr [3 x i8], [3 x i8]* @.str5, i32 0, i32 0
  %49 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str5.c, i8* %48, i64 2)
  %50 = call %nyx_string* @nyx_string_concat(%nyx_string* %47, %nyx_string* %49)
  %51 = getelementptr %VetIssue, %VetIssue* %issue.ptr, i32 0, i32 2
  %52 = load %nyx_string*, %nyx_string** %51
  %53 = call %nyx_string* @nyx_string_concat(%nyx_string* %50, %nyx_string* %52)
  %54 = call i8* @nyx_string_to_cstr(%nyx_string* %53)
  call void @nyx_print_string(i8* %54)
  ret i64 0
}

define internal { i64, i8* }* @check_gotcha_patterns(
%nyx_string* %source.param) {
  %source.ptr = alloca %nyx_string*
  store %nyx_string* %source.param, %nyx_string** %source.ptr
  %55 = call { i64, i8* }* @nyx_array_new_ptr()
  %56 = alloca { i64, i8* }*
  store { i64, i8* }* %55, { i64, i8* }** %56
  %57 = call { i64, i8* }* @gotchas_table()
  %58 = alloca { i64, i8* }*
  store { i64, i8* }* %57, { i64, i8* }** %58
  %59 = load %nyx_string*, %nyx_string** %source.ptr
  %60 = getelementptr [2 x i8], [2 x i8]* @.str6, i32 0, i32 0
  %61 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str6.c, i8* %60, i64 1)
  %62 = call { i64, i8* }* @nyx_string_split(%nyx_string* %59, %nyx_string* %61)
  %63 = alloca { i64, i8* }*
  store { i64, i8* }* %62, { i64, i8* }** %63
  %64 = load { i64, i8* }*, { i64, i8* }** %63
  %65 = call i64 @nyx_array_length({ i64, i8* }* %64)
  %66 = alloca i64
  store i64 %65, i64* %66
  %67 = alloca i64
  store i64 0, i64* %67
  %68 = getelementptr [8 x i8], [8 x i8]* @.str7, i32 0, i32 0
  %69 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str7.c, i8* %68, i64 7)
  %70 = alloca %nyx_string*
  store %nyx_string* %69, %nyx_string** %70
  %71 = getelementptr [1 x i8], [1 x i8]* @.str8, i32 0, i32 0
  %72 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str8.c, i8* %71, i64 0)
  %73 = alloca %nyx_string*
  store %nyx_string* %72, %nyx_string** %73
  %74 = getelementptr [9 x i8], [9 x i8]* @.str9, i32 0, i32 0
  %75 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str9.c, i8* %74, i64 8)
  %76 = alloca %nyx_string*
  store %nyx_string* %75, %nyx_string** %76
  %77 = getelementptr [9 x i8], [9 x i8]* @.str10, i32 0, i32 0
  %78 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str10.c, i8* %77, i64 8)
  %79 = alloca %nyx_string*
  store %nyx_string* %78, %nyx_string** %79
  %80 = getelementptr [3 x i8], [3 x i8]* @.str11, i32 0, i32 0
  %81 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str11.c, i8* %80, i64 2)
  %82 = alloca %nyx_string*
  store %nyx_string* %81, %nyx_string** %82
  %83 = getelementptr [23 x i8], [23 x i8]* @.str12, i32 0, i32 0
  %84 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str12.c, i8* %83, i64 22)
  %85 = alloca %nyx_string*
  store %nyx_string* %84, %nyx_string** %85
  %86 = getelementptr [2 x i8], [2 x i8]* @.str13, i32 0, i32 0
  %87 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str13.c, i8* %86, i64 1)
  %88 = alloca %nyx_string*
  store %nyx_string* %87, %nyx_string** %88
  %89 = getelementptr [8 x i8], [8 x i8]* @.str14, i32 0, i32 0
  %90 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str14.c, i8* %89, i64 7)
  %91 = alloca %nyx_string*
  store %nyx_string* %90, %nyx_string** %91
  %92 = call i8* @llvm.stacksave()
  br label %while_cond3
while_cond3:
  %93 = load i64, i64* %67
  %94 = load { i64, i8* }*, { i64, i8* }** %58
  %95 = call i64 @nyx_array_length({ i64, i8* }* %94)
  %96 = icmp slt i64 %93, %95
  br i1 %96, label %while_body4, label %while_end5
while_body4:
  call void @llvm.stackrestore(i8* %92)
  %97 = load { i64, i8* }*, { i64, i8* }** %58
  %98 = load i64, i64* %67
  %99 = call i64 @nyx_array_get({ i64, i8* }* %97, i64 %98)
  %100 = inttoptr i64 %99 to { i64, i8* }*
  %101 = alloca { i64, i8* }*
  store { i64, i8* }* %100, { i64, i8* }** %101
  %102 = load { i64, i8* }*, { i64, i8* }** %101
  %103 = load %nyx_string*, %nyx_string** %70
  %104 = call %nyx_string* @gotcha_field({ i64, i8* }* %102, %nyx_string* %103)
  %105 = alloca %nyx_string*
  store %nyx_string* %104, %nyx_string** %105
  %106 = load %nyx_string*, %nyx_string** %105
  %107 = load %nyx_string*, %nyx_string** %73
  %108 = call i1 @nyx_string_equals(%nyx_string* %106, %nyx_string* %107)
  %109 = xor i1 %108, true
  br i1 %109, label %then6, label %else7
then6:
  %110 = load { i64, i8* }*, { i64, i8* }** %101
  %111 = load %nyx_string*, %nyx_string** %76
  %112 = call %nyx_string* @gotcha_field({ i64, i8* }* %110, %nyx_string* %111)
  %113 = alloca %nyx_string*
  store %nyx_string* %112, %nyx_string** %113
  %114 = load { i64, i8* }*, { i64, i8* }** %101
  %115 = load %nyx_string*, %nyx_string** %79
  %116 = call %nyx_string* @gotcha_field({ i64, i8* }* %114, %nyx_string* %115)
  %117 = alloca %nyx_string*
  store %nyx_string* %116, %nyx_string** %117
  %118 = load { i64, i8* }*, { i64, i8* }** %101
  %119 = load %nyx_string*, %nyx_string** %82
  %120 = call %nyx_string* @gotcha_field({ i64, i8* }* %118, %nyx_string* %119)
  %121 = alloca %nyx_string*
  store %nyx_string* %120, %nyx_string** %121
  %122 = load %nyx_string*, %nyx_string** %117
  %123 = load %nyx_string*, %nyx_string** %85
  %124 = call %nyx_string* @nyx_string_concat(%nyx_string* %122, %nyx_string* %123)
  %125 = load %nyx_string*, %nyx_string** %121
  %126 = call %nyx_string* @nyx_string_concat(%nyx_string* %124, %nyx_string* %125)
  %127 = load %nyx_string*, %nyx_string** %88
  %128 = call %nyx_string* @nyx_string_concat(%nyx_string* %126, %nyx_string* %127)
  %129 = alloca %nyx_string*
  store %nyx_string* %128, %nyx_string** %129
  %130 = alloca i64
  store i64 0, i64* %130
  %131 = call i8* @llvm.stacksave()
  br label %while_cond9
while_cond9:
  %132 = load i64, i64* %130
  %133 = load i64, i64* %66
  %134 = icmp slt i64 %132, %133
  br i1 %134, label %while_body10, label %while_end11
while_body10:
  call void @llvm.stackrestore(i8* %131)
  %135 = load { i64, i8* }*, { i64, i8* }** %63
  %136 = load i64, i64* %130
  %137 = call i64 @nyx_array_get_checked({ i64, i8* }* %135, i64 %136, i64 2)
  %138 = inttoptr i64 %137 to %nyx_string*
  %139 = alloca %nyx_string*
  store %nyx_string* %138, %nyx_string** %139
  %140 = load %nyx_string*, %nyx_string** %139
  %141 = call %nyx_string* @gotcha_scan_line(%nyx_string* %140)
  %142 = alloca %nyx_string*
  store %nyx_string* %141, %nyx_string** %142
  %143 = load %nyx_string*, %nyx_string** %142
  %144 = load %nyx_string*, %nyx_string** %105
  %145 = call i64 @nyx_regex_is_match(%nyx_string* %143, %nyx_string* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %then12, label %else13
then12:
  %147 = load %nyx_string*, %nyx_string** %91
  %148 = load %nyx_string*, %nyx_string** %113
  %149 = load %nyx_string*, %nyx_string** %129
  %150 = load i64, i64* %130
  %151 = add i64 %150, 1
  %152 = call %VetIssue @make_issue(%nyx_string* %147, %nyx_string* %148, %nyx_string* %149, i64 %151)
  %153 = alloca %VetIssue
  store %VetIssue %152, %VetIssue* %153
  %154 = load { i64, i8* }*, { i64, i8* }** %56
  %155 = load %VetIssue, %VetIssue* %153
  %156 = getelementptr %VetIssue, %VetIssue* null, i32 1
  %157 = ptrtoint %VetIssue* %156 to i64
  %158 = call i8* @GC_malloc(i64 %157)
  %159 = bitcast i8* %158 to %VetIssue*
  store %VetIssue %155, %VetIssue* %159
  %160 = ptrtoint %VetIssue* %159 to i64
  call void @nyx_array_push({ i64, i8* }* %154, i64 %160)
  br label %merge14
else13:
  br label %merge14
merge14:
  %161 = load i64, i64* %130
  %162 = add i64 %161, 1
  store i64 %162, i64* %130
  br label %while_cond9
while_end11:
  br label %merge8
else7:
  br label %merge8
merge8:
  %163 = load i64, i64* %67
  %164 = add i64 %163, 1
  store i64 %164, i64* %67
  br label %while_cond3
while_end5:
  %165 = load { i64, i8* }*, { i64, i8* }** %56
  ret { i64, i8* }* %165
}

define internal { i64, i8* }* @sort_issues_by_line(
{ i64, i8* }* %issues.param) {
  %issues.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %issues.param, { i64, i8* }** %issues.ptr
  %166 = call { i64, i8* }* @nyx_array_new_ptr()
  %167 = alloca { i64, i8* }*
  store { i64, i8* }* %166, { i64, i8* }** %167
  %168 = load { i64, i8* }*, { i64, i8* }** %issues.ptr
  %169 = call i64 @nyx_array_length({ i64, i8* }* %168)
  %170 = alloca i64
  store i64 %169, i64* %170
  %171 = call { i64, i8* }* @nyx_array_new_ptr()
  %172 = alloca { i64, i8* }*
  store { i64, i8* }* %171, { i64, i8* }** %172
  %173 = alloca i64
  store i64 0, i64* %173
  %174 = call i8* @llvm.stacksave()
  br label %while_cond15
while_cond15:
  %175 = load i64, i64* %173
  %176 = load i64, i64* %170
  %177 = icmp slt i64 %175, %176
  br i1 %177, label %while_body16, label %while_end17
while_body16:
  call void @llvm.stackrestore(i8* %174)
  %178 = load { i64, i8* }*, { i64, i8* }** %172
  call void @nyx_array_push_tagged({ i64, i8* }* %178, i64 0, i64 1)
  %179 = load i64, i64* %173
  %180 = add i64 %179, 1
  store i64 %180, i64* %173
  br label %while_cond15
while_end17:
  %181 = alloca i64
  store i64 0, i64* %181
  %182 = call i8* @llvm.stacksave()
  br label %while_cond18
while_cond18:
  %183 = load i64, i64* %181
  %184 = load i64, i64* %170
  %185 = icmp slt i64 %183, %184
  br i1 %185, label %while_body19, label %while_end20
while_body19:
  call void @llvm.stackrestore(i8* %182)
  %186 = sub i64 0, 1
  %187 = alloca i64
  store i64 %186, i64* %187
  %188 = alloca i64
  store i64 0, i64* %188
  %189 = alloca i64
  store i64 0, i64* %189
  %190 = call i8* @llvm.stacksave()
  br label %while_cond21
while_cond21:
  %191 = load i64, i64* %189
  %192 = load i64, i64* %170
  %193 = icmp slt i64 %191, %192
  br i1 %193, label %while_body22, label %while_end23
while_body22:
  call void @llvm.stackrestore(i8* %190)
  %194 = load { i64, i8* }*, { i64, i8* }** %172
  %195 = load i64, i64* %189
  %196 = call i64 @nyx_slot_as_int_checked({ i64, i8* }* %194, i64 %195)
  %197 = alloca i64
  store i64 %196, i64* %197
  %198 = load i64, i64* %197
  %199 = icmp eq i64 %198, 0
  br i1 %199, label %then24, label %else25
then24:
  %200 = load { i64, i8* }*, { i64, i8* }** %issues.ptr
  %201 = load i64, i64* %189
  %202 = getelementptr [9 x i8], [9 x i8]* @.slotT15, i32 0, i32 0
  %203 = call i64 @nyx_slot_as_value_checked({ i64, i8* }* %200, i64 %201, i8* %202)
  %204 = inttoptr i64 %203 to %VetIssue*
  %205 = load %VetIssue, %VetIssue* %204
  %206 = alloca %VetIssue
  store %VetIssue %205, %VetIssue* %206
  %207 = getelementptr %VetIssue, %VetIssue* %206, i32 0, i32 3
  %208 = load i64, i64* %207
  %209 = alloca i64
  store i64 %208, i64* %209
  %210 = load i64, i64* %209
  %211 = icmp eq i64 %210, 0
  br i1 %211, label %then27, label %else28
then27:
  store i64 9223372036854775807, i64* %209
  br label %merge29
else28:
  br label %merge29
merge29:
  %212 = alloca i1
  store i1 true, i1* %212
  %213 = load i64, i64* %187
  %214 = icmp slt i64 %213, 0
  br i1 %214, label %sc_or_end31, label %sc_or_rhs30
sc_or_rhs30:
  %215 = load i64, i64* %209
  %216 = load i64, i64* %188
  %217 = icmp slt i64 %215, %216
  store i1 %217, i1* %212
  br label %sc_or_end31
sc_or_end31:
  %218 = load i1, i1* %212
  br i1 %218, label %then32, label %else33
then32:
  %219 = load i64, i64* %189
  store i64 %219, i64* %187
  %220 = load i64, i64* %209
  store i64 %220, i64* %188
  br label %merge34
else33:
  br label %merge34
merge34:
  br label %merge26
else25:
  br label %merge26
merge26:
  %221 = load i64, i64* %189
  %222 = add i64 %221, 1
  store i64 %222, i64* %189
  br label %while_cond21
while_end23:
  %223 = load { i64, i8* }*, { i64, i8* }** %issues.ptr
  %224 = load i64, i64* %187
  %225 = getelementptr [9 x i8], [9 x i8]* @.slotT16, i32 0, i32 0
  %226 = call i64 @nyx_slot_as_value_checked({ i64, i8* }* %223, i64 %224, i8* %225)
  %227 = inttoptr i64 %226 to %VetIssue*
  %228 = load %VetIssue, %VetIssue* %227
  %229 = alloca %VetIssue
  store %VetIssue %228, %VetIssue* %229
  %230 = load { i64, i8* }*, { i64, i8* }** %167
  %231 = load %VetIssue, %VetIssue* %229
  %232 = getelementptr %VetIssue, %VetIssue* null, i32 1
  %233 = ptrtoint %VetIssue* %232 to i64
  %234 = call i8* @GC_malloc(i64 %233)
  %235 = bitcast i8* %234 to %VetIssue*
  store %VetIssue %231, %VetIssue* %235
  %236 = ptrtoint %VetIssue* %235 to i64
  call void @nyx_array_push({ i64, i8* }* %230, i64 %236)
  %237 = load { i64, i8* }*, { i64, i8* }** %172
  %238 = load i64, i64* %187
  call void @nyx_array_set_tagged({ i64, i8* }* %237, i64 %238, i64 1, i64 1)
  %239 = load i64, i64* %181
  %240 = add i64 %239, 1
  store i64 %240, i64* %181
  br label %while_cond18
while_end20:
  %241 = load { i64, i8* }*, { i64, i8* }** %167
  ret { i64, i8* }* %241
}

define internal { i64, i8* }* @collect_declared_vars(
{ i64, i8* }* %stmts.param) {
  %stmts.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %stmts.param, { i64, i8* }** %stmts.ptr
  %242 = call { i64, i8* }* @nyx_array_new_ptr()
  %243 = alloca { i64, i8* }*
  store { i64, i8* }* %242, { i64, i8* }** %243
  %244 = alloca i64
  store i64 0, i64* %244
  %245 = getelementptr [9 x i8], [9 x i8]* @.str17, i32 0, i32 0
  %246 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str17.c, i8* %245, i64 8)
  %247 = alloca %nyx_string*
  store %nyx_string* %246, %nyx_string** %247
  %248 = getelementptr [9 x i8], [9 x i8]* @.str18, i32 0, i32 0
  %249 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str18.c, i8* %248, i64 8)
  %250 = alloca %nyx_string*
  store %nyx_string* %249, %nyx_string** %250
  %251 = call i8* @llvm.stacksave()
  br label %while_cond35
while_cond35:
  %252 = load i64, i64* %244
  %253 = load { i64, i8* }*, { i64, i8* }** %stmts.ptr
  %254 = call i64 @nyx_array_length({ i64, i8* }* %253)
  %255 = icmp slt i64 %252, %254
  br i1 %255, label %while_body36, label %while_end37
while_body36:
  call void @llvm.stackrestore(i8* %251)
  %256 = load { i64, i8* }*, { i64, i8* }** %stmts.ptr
  %257 = load i64, i64* %244
  %258 = call i64 @nyx_array_get({ i64, i8* }* %256, i64 %257)
  %259 = inttoptr i64 %258 to { i64, i8* }*
  %260 = alloca { i64, i8* }*
  store { i64, i8* }* %259, { i64, i8* }** %260
  %261 = load { i64, i8* }*, { i64, i8* }** %260
  %262 = call i64 @nyx_array_get_checked({ i64, i8* }* %261, i64 0, i64 2)
  %263 = inttoptr i64 %262 to %nyx_string*
  %264 = alloca %nyx_string*
  store %nyx_string* %263, %nyx_string** %264
  %265 = alloca i1
  store i1 true, i1* %265
  %266 = load %nyx_string*, %nyx_string** %264
  %267 = load %nyx_string*, %nyx_string** %247
  %268 = call i1 @nyx_string_equals(%nyx_string* %266, %nyx_string* %267)
  br i1 %268, label %sc_or_end39, label %sc_or_rhs38
sc_or_rhs38:
  %269 = load %nyx_string*, %nyx_string** %264
  %270 = load %nyx_string*, %nyx_string** %250
  %271 = call i1 @nyx_string_equals(%nyx_string* %269, %nyx_string* %270)
  store i1 %271, i1* %265
  br label %sc_or_end39
sc_or_end39:
  %272 = load i1, i1* %265
  br i1 %272, label %then40, label %else41
then40:
  %273 = load { i64, i8* }*, { i64, i8* }** %260
  %274 = call i64 @nyx_array_get({ i64, i8* }* %273, i64 1)
  %275 = inttoptr i64 %274 to { i64, i8* }*
  %276 = alloca { i64, i8* }*
  store { i64, i8* }* %275, { i64, i8* }** %276
  %277 = load { i64, i8* }*, { i64, i8* }** %276
  %278 = call i64 @nyx_array_get({ i64, i8* }* %277, i64 0)
  %279 = inttoptr i64 %278 to { i64, i8* }*
  %280 = alloca { i64, i8* }*
  store { i64, i8* }* %279, { i64, i8* }** %280
  %281 = load { i64, i8* }*, { i64, i8* }** %280
  %282 = call i64 @nyx_array_get_checked({ i64, i8* }* %281, i64 0, i64 2)
  %283 = inttoptr i64 %282 to %nyx_string*
  %284 = alloca %nyx_string*
  store %nyx_string* %283, %nyx_string** %284
  %285 = load { i64, i8* }*, { i64, i8* }** %243
  %286 = load %nyx_string*, %nyx_string** %284
  %287 = ptrtoint %nyx_string* %286 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %285, i64 %287, i64 2)
  br label %merge42
else41:
  br label %merge42
merge42:
  %288 = load i64, i64* %244
  %289 = add i64 %288, 1
  store i64 %289, i64* %244
  br label %while_cond35
while_end37:
  %290 = load { i64, i8* }*, { i64, i8* }** %243
  ret { i64, i8* }* %290
}

define internal i1 @name_used_in_source(
%nyx_string* %name.param, %nyx_string* %source.param) {
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %source.ptr = alloca %nyx_string*
  store %nyx_string* %source.param, %nyx_string** %source.ptr
  %291 = load %nyx_string*, %nyx_string** %source.ptr
  %292 = load %nyx_string*, %nyx_string** %name.ptr
  %293 = call { i64, i8* }* @nyx_string_split(%nyx_string* %291, %nyx_string* %292)
  %294 = alloca { i64, i8* }*
  store { i64, i8* }* %293, { i64, i8* }** %294
  %295 = load { i64, i8* }*, { i64, i8* }** %294
  %296 = call i64 @nyx_array_length({ i64, i8* }* %295)
  %297 = icmp sge i64 %296, 3
  ret i1 %297
}

define internal i1 @is_ident_byte(
i64 %c.param) {
  %c.ptr = alloca i64
  store i64 %c.param, i64* %c.ptr
  %298 = alloca i1
  store i1 false, i1* %298
  %299 = load i64, i64* %c.ptr
  %300 = icmp sge i64 %299, 97
  br i1 %300, label %sc_and_rhs43, label %sc_and_end44
sc_and_rhs43:
  %301 = load i64, i64* %c.ptr
  %302 = icmp sle i64 %301, 122
  store i1 %302, i1* %298
  br label %sc_and_end44
sc_and_end44:
  %303 = load i1, i1* %298
  br i1 %303, label %then45, label %else46
then45:
  ret i1 1
else46:
  br label %merge47
merge47:
  %304 = alloca i1
  store i1 false, i1* %304
  %305 = load i64, i64* %c.ptr
  %306 = icmp sge i64 %305, 65
  br i1 %306, label %sc_and_rhs48, label %sc_and_end49
sc_and_rhs48:
  %307 = load i64, i64* %c.ptr
  %308 = icmp sle i64 %307, 90
  store i1 %308, i1* %304
  br label %sc_and_end49
sc_and_end49:
  %309 = load i1, i1* %304
  br i1 %309, label %then50, label %else51
then50:
  ret i1 1
else51:
  br label %merge52
merge52:
  %310 = alloca i1
  store i1 false, i1* %310
  %311 = load i64, i64* %c.ptr
  %312 = icmp sge i64 %311, 48
  br i1 %312, label %sc_and_rhs53, label %sc_and_end54
sc_and_rhs53:
  %313 = load i64, i64* %c.ptr
  %314 = icmp sle i64 %313, 57
  store i1 %314, i1* %310
  br label %sc_and_end54
sc_and_end54:
  %315 = load i1, i1* %310
  br i1 %315, label %then55, label %else56
then55:
  ret i1 1
else56:
  br label %merge57
merge57:
  %316 = load i64, i64* %c.ptr
  %317 = icmp eq i64 %316, 95
  br i1 %317, label %then58, label %else59
then58:
  ret i1 1
else59:
  br label %merge60
merge60:
  ret i1 0
}

define internal %nyx_string* @trim_spaces(
%nyx_string* %s.param) {
  %s.ptr = alloca %nyx_string*
  store %nyx_string* %s.param, %nyx_string** %s.ptr
  %318 = alloca i64
  store i64 0, i64* %318
  %319 = load %nyx_string*, %nyx_string** %s.ptr
  %320 = call i64 @nyx_string_byte_length(%nyx_string* %319)
  %321 = alloca i64
  store i64 %320, i64* %321
  %322 = call i8* @llvm.stacksave()
  br label %while_cond61
while_cond61:
  %323 = load i64, i64* %318
  %324 = load i64, i64* %321
  %325 = icmp slt i64 %323, %324
  br i1 %325, label %while_body62, label %while_end63
while_body62:
  call void @llvm.stackrestore(i8* %322)
  %326 = load %nyx_string*, %nyx_string** %s.ptr
  %327 = load i64, i64* %318
  %328 = call i8 @nyx_string_char_at(%nyx_string* %326, i64 %327)
  %329 = zext i8 %328 to i64
  %330 = alloca i64
  store i64 %329, i64* %330
  %331 = alloca i1
  store i1 true, i1* %331
  %332 = load i64, i64* %330
  %333 = icmp eq i64 %332, 32
  br i1 %333, label %sc_or_end65, label %sc_or_rhs64
sc_or_rhs64:
  %334 = load i64, i64* %330
  %335 = icmp eq i64 %334, 9
  store i1 %335, i1* %331
  br label %sc_or_end65
sc_or_end65:
  %336 = load i1, i1* %331
  br i1 %336, label %then66, label %else67
then66:
  %337 = load i64, i64* %318
  %338 = add i64 %337, 1
  store i64 %338, i64* %318
  br label %merge68
else67:
  br label %while_end63
merge68:
  br label %while_cond61
while_end63:
  %339 = call i8* @llvm.stacksave()
  br label %while_cond69
while_cond69:
  %340 = load i64, i64* %321
  %341 = load i64, i64* %318
  %342 = icmp sgt i64 %340, %341
  br i1 %342, label %while_body70, label %while_end71
while_body70:
  call void @llvm.stackrestore(i8* %339)
  %343 = load %nyx_string*, %nyx_string** %s.ptr
  %344 = load i64, i64* %321
  %345 = sub i64 %344, 1
  %346 = call i8 @nyx_string_char_at(%nyx_string* %343, i64 %345)
  %347 = zext i8 %346 to i64
  %348 = alloca i64
  store i64 %347, i64* %348
  %349 = alloca i1
  store i1 true, i1* %349
  %350 = load i64, i64* %348
  %351 = icmp eq i64 %350, 32
  br i1 %351, label %sc_or_end73, label %sc_or_rhs72
sc_or_rhs72:
  %352 = load i64, i64* %348
  %353 = icmp eq i64 %352, 9
  store i1 %353, i1* %349
  br label %sc_or_end73
sc_or_end73:
  %354 = load i1, i1* %349
  br i1 %354, label %then74, label %else75
then74:
  %355 = load i64, i64* %321
  %356 = sub i64 %355, 1
  store i64 %356, i64* %321
  br label %merge76
else75:
  br label %while_end71
merge76:
  br label %while_cond69
while_end71:
  %357 = load %nyx_string*, %nyx_string** %s.ptr
  %358 = load i64, i64* %318
  %359 = load i64, i64* %321
  %360 = call %nyx_string* @nyx_string_substring(%nyx_string* %357, i64 %358, i64 %359)
  ret %nyx_string* %360
}

define internal i64 @line_uses_call_result(
{ i64, i8* }* %lines.param, i64 %ini.param, i64 %to.param, %nyx_string* %name.param) {
  %lines.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %lines.param, { i64, i8* }** %lines.ptr
  %ini.ptr = alloca i64
  store i64 %ini.param, i64* %ini.ptr
  %to.ptr = alloca i64
  store i64 %to.param, i64* %to.ptr
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %361 = load %nyx_string*, %nyx_string** %name.ptr
  %362 = getelementptr [2 x i8], [2 x i8]* @.str19, i32 0, i32 0
  %363 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str19.c, i8* %362, i64 1)
  %364 = call %nyx_string* @nyx_string_concat(%nyx_string* %361, %nyx_string* %363)
  %365 = alloca %nyx_string*
  store %nyx_string* %364, %nyx_string** %365
  %366 = load %nyx_string*, %nyx_string** %365
  %367 = call i64 @nyx_string_byte_length(%nyx_string* %366)
  %368 = alloca i64
  store i64 %367, i64* %368
  %369 = load i64, i64* %ini.ptr
  %370 = alloca i64
  store i64 %369, i64* %370
  %371 = getelementptr [1 x i8], [1 x i8]* @.str20, i32 0, i32 0
  %372 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str20.c, i8* %371, i64 0)
  %373 = alloca %nyx_string*
  store %nyx_string* %372, %nyx_string** %373
  %374 = call i8* @llvm.stacksave()
  br label %while_cond77
while_cond77:
  %375 = load i64, i64* %370
  %376 = load i64, i64* %to.ptr
  %377 = icmp slt i64 %375, %376
  br i1 %377, label %while_body78, label %while_end79
while_body78:
  call void @llvm.stackrestore(i8* %374)
  %378 = load { i64, i8* }*, { i64, i8* }** %lines.ptr
  %379 = load i64, i64* %370
  %380 = call i64 @nyx_array_get_checked({ i64, i8* }* %378, i64 %379, i64 2)
  %381 = inttoptr i64 %380 to %nyx_string*
  %382 = alloca %nyx_string*
  store %nyx_string* %381, %nyx_string** %382
  %383 = load %nyx_string*, %nyx_string** %382
  %384 = call %nyx_string* @gotcha_scan_line(%nyx_string* %383)
  %385 = alloca %nyx_string*
  store %nyx_string* %384, %nyx_string** %385
  %386 = load %nyx_string*, %nyx_string** %385
  %387 = call i64 @nyx_string_byte_length(%nyx_string* %386)
  %388 = alloca i64
  store i64 %387, i64* %388
  %389 = alloca i64
  store i64 0, i64* %389
  %390 = call i8* @llvm.stacksave()
  br label %while_cond80
while_cond80:
  %391 = load i64, i64* %389
  %392 = load i64, i64* %368
  %393 = add i64 %391, %392
  %394 = load i64, i64* %388
  %395 = icmp sle i64 %393, %394
  br i1 %395, label %while_body81, label %while_end82
while_body81:
  call void @llvm.stackrestore(i8* %390)
  %396 = load %nyx_string*, %nyx_string** %385
  %397 = load i64, i64* %389
  %398 = load i64, i64* %389
  %399 = load i64, i64* %368
  %400 = add i64 %398, %399
  %401 = call %nyx_string* @nyx_string_substring(%nyx_string* %396, i64 %397, i64 %400)
  %402 = load %nyx_string*, %nyx_string** %365
  %403 = call i1 @nyx_string_equals(%nyx_string* %401, %nyx_string* %402)
  br i1 %403, label %then83, label %else84
then83:
  %404 = alloca i1
  store i1 1, i1* %404
  %405 = load i64, i64* %389
  %406 = icmp sgt i64 %405, 0
  br i1 %406, label %then86, label %else87
then86:
  %407 = load %nyx_string*, %nyx_string** %385
  %408 = load i64, i64* %389
  %409 = sub i64 %408, 1
  %410 = call i8 @nyx_string_char_at(%nyx_string* %407, i64 %409)
  %411 = zext i8 %410 to i64
  %412 = call i1 @is_ident_byte(i64 %411)
  br i1 %412, label %then89, label %else90
then89:
  store i1 0, i1* %404
  br label %merge91
else90:
  br label %merge91
merge91:
  br label %merge88
else87:
  br label %merge88
merge88:
  %413 = load i1, i1* %404
  br i1 %413, label %then92, label %else93
then92:
  %414 = load %nyx_string*, %nyx_string** %385
  %415 = load i64, i64* %389
  %416 = call %nyx_string* @nyx_string_substring(%nyx_string* %414, i64 0, i64 %415)
  %417 = call %nyx_string* @trim_spaces(%nyx_string* %416)
  %418 = alloca %nyx_string*
  store %nyx_string* %417, %nyx_string** %418
  %419 = load %nyx_string*, %nyx_string** %418
  %420 = load %nyx_string*, %nyx_string** %373
  %421 = call i1 @nyx_string_equals(%nyx_string* %419, %nyx_string* %420)
  %422 = xor i1 %421, true
  br i1 %422, label %then95, label %else96
then95:
  %423 = load %nyx_string*, %nyx_string** %418
  %424 = load %nyx_string*, %nyx_string** %418
  %425 = call i64 @nyx_string_byte_length(%nyx_string* %424)
  %426 = sub i64 %425, 1
  %427 = call i8 @nyx_string_char_at(%nyx_string* %423, i64 %426)
  %428 = zext i8 %427 to i64
  %429 = alloca i64
  store i64 %428, i64* %429
  %430 = alloca i1
  store i1 false, i1* %430
  %431 = alloca i1
  store i1 false, i1* %431
  %432 = load i64, i64* %429
  %433 = icmp ne i64 %432, 123
  br i1 %433, label %sc_and_rhs98, label %sc_and_end99
sc_and_rhs98:
  %434 = load i64, i64* %429
  %435 = icmp ne i64 %434, 59
  store i1 %435, i1* %431
  br label %sc_and_end99
sc_and_end99:
  %436 = load i1, i1* %431
  br i1 %436, label %sc_and_rhs100, label %sc_and_end101
sc_and_rhs100:
  %437 = load i64, i64* %429
  %438 = icmp ne i64 %437, 125
  store i1 %438, i1* %430
  br label %sc_and_end101
sc_and_end101:
  %439 = load i1, i1* %430
  br i1 %439, label %then102, label %else103
then102:
  %440 = load i64, i64* %370
  %441 = add i64 %440, 1
  ret i64 %441
else103:
  br label %merge104
merge104:
  br label %merge97
else96:
  br label %merge97
merge97:
  br label %merge94
else93:
  br label %merge94
merge94:
  br label %merge85
else84:
  br label %merge85
merge85:
  %442 = load i64, i64* %389
  %443 = add i64 %442, 1
  store i64 %443, i64* %389
  br label %while_cond80
while_end82:
  %444 = load i64, i64* %370
  %445 = add i64 %444, 1
  store i64 %445, i64* %370
  br label %while_cond77
while_end79:
  ret i64 0
}

define internal i64 @fn_decl_line(
{ i64, i8* }* %fn_data.param) {
  %fn_data.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %fn_data.param, { i64, i8* }** %fn_data.ptr
  %446 = load { i64, i8* }*, { i64, i8* }** %fn_data.ptr
  %447 = call i64 @nyx_array_length({ i64, i8* }* %446)
  %448 = icmp sge i64 %447, 9
  br i1 %448, label %then105, label %else106
then105:
  %449 = load { i64, i8* }*, { i64, i8* }** %fn_data.ptr
  %450 = call i64 @nyx_array_get({ i64, i8* }* %449, i64 8)
  %451 = inttoptr i64 %450 to { i64, i8* }*
  %452 = alloca { i64, i8* }*
  store { i64, i8* }* %451, { i64, i8* }** %452
  %453 = load { i64, i8* }*, { i64, i8* }** %452
  %454 = call i64 @nyx_array_length({ i64, i8* }* %453)
  %455 = icmp sge i64 %454, 2
  br i1 %455, label %then108, label %else109
then108:
  %456 = load { i64, i8* }*, { i64, i8* }** %452
  %457 = call i64 @nyx_array_get_checked({ i64, i8* }* %456, i64 0, i64 2)
  %458 = inttoptr i64 %457 to %nyx_string*
  %459 = alloca %nyx_string*
  store %nyx_string* %458, %nyx_string** %459
  %460 = load %nyx_string*, %nyx_string** %459
  %461 = getelementptr [13 x i8], [13 x i8]* @.str21, i32 0, i32 0
  %462 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str21.c, i8* %461, i64 12)
  %463 = call i1 @nyx_string_equals(%nyx_string* %460, %nyx_string* %462)
  br i1 %463, label %then111, label %else112
then111:
  %464 = load { i64, i8* }*, { i64, i8* }** %452
  %465 = call i64 @nyx_array_get({ i64, i8* }* %464, i64 1)
  ret i64 %465
else112:
  br label %merge113
merge113:
  br label %merge110
else109:
  br label %merge110
merge110:
  ret i64 0
else106:
  br label %merge107
merge107:
  %466 = load { i64, i8* }*, { i64, i8* }** %fn_data.ptr
  %467 = call i64 @nyx_array_length({ i64, i8* }* %466)
  %468 = icmp eq i64 %467, 7
  br i1 %468, label %then114, label %else115
then114:
  %469 = load { i64, i8* }*, { i64, i8* }** %fn_data.ptr
  %470 = call i64 @nyx_array_get({ i64, i8* }* %469, i64 6)
  %471 = inttoptr i64 %470 to { i64, i8* }*
  %472 = alloca { i64, i8* }*
  store { i64, i8* }* %471, { i64, i8* }** %472
  %473 = load { i64, i8* }*, { i64, i8* }** %472
  %474 = call i64 @nyx_array_length({ i64, i8* }* %473)
  %475 = icmp sge i64 %474, 2
  br i1 %475, label %then117, label %else118
then117:
  %476 = load { i64, i8* }*, { i64, i8* }** %472
  %477 = call i64 @nyx_array_get_checked({ i64, i8* }* %476, i64 0, i64 2)
  %478 = inttoptr i64 %477 to %nyx_string*
  %479 = alloca %nyx_string*
  store %nyx_string* %478, %nyx_string** %479
  %480 = load %nyx_string*, %nyx_string** %479
  %481 = getelementptr [13 x i8], [13 x i8]* @.str22, i32 0, i32 0
  %482 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str22.c, i8* %481, i64 12)
  %483 = call i1 @nyx_string_equals(%nyx_string* %480, %nyx_string* %482)
  br i1 %483, label %then120, label %else121
then120:
  %484 = load { i64, i8* }*, { i64, i8* }** %472
  %485 = call i64 @nyx_array_get({ i64, i8* }* %484, i64 1)
  ret i64 %485
else121:
  br label %merge122
merge122:
  br label %merge119
else118:
  br label %merge119
merge119:
  br label %merge116
else115:
  br label %merge116
merge116:
  ret i64 0
}

define internal { i64, i8* }* @check_bare_fn_result_used(
{ i64, i8* }* %stmts.param, %nyx_string* %source.param) {
  %stmts.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %stmts.param, { i64, i8* }** %stmts.ptr
  %source.ptr = alloca %nyx_string*
  store %nyx_string* %source.param, %nyx_string** %source.ptr
  %486 = call { i64, i8* }* @nyx_array_new_ptr()
  %487 = alloca { i64, i8* }*
  store { i64, i8* }* %486, { i64, i8* }** %487
  %488 = load %nyx_string*, %nyx_string** %source.ptr
  %489 = getelementptr [2 x i8], [2 x i8]* @.str23, i32 0, i32 0
  %490 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str23.c, i8* %489, i64 1)
  %491 = call { i64, i8* }* @nyx_string_split(%nyx_string* %488, %nyx_string* %490)
  %492 = alloca { i64, i8* }*
  store { i64, i8* }* %491, { i64, i8* }** %492
  %493 = load { i64, i8* }*, { i64, i8* }** %492
  %494 = call i64 @nyx_array_length({ i64, i8* }* %493)
  %495 = alloca i64
  store i64 %494, i64* %495
  %496 = alloca i64
  store i64 0, i64* %496
  %497 = getelementptr [7 x i8], [7 x i8]* @.str24, i32 0, i32 0
  %498 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str24.c, i8* %497, i64 6)
  %499 = alloca %nyx_string*
  store %nyx_string* %498, %nyx_string** %499
  %500 = getelementptr [9 x i8], [9 x i8]* @.str25, i32 0, i32 0
  %501 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str25.c, i8* %500, i64 8)
  %502 = alloca %nyx_string*
  store %nyx_string* %501, %nyx_string** %502
  %503 = getelementptr [4 x i8], [4 x i8]* @.str26, i32 0, i32 0
  %504 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str26.c, i8* %503, i64 3)
  %505 = alloca %nyx_string*
  store %nyx_string* %504, %nyx_string** %505
  %506 = getelementptr [8 x i8], [8 x i8]* @.str27, i32 0, i32 0
  %507 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str27.c, i8* %506, i64 7)
  %508 = alloca %nyx_string*
  store %nyx_string* %507, %nyx_string** %508
  %509 = getelementptr [3 x i8], [3 x i8]* @.str28, i32 0, i32 0
  %510 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str28.c, i8* %509, i64 2)
  %511 = alloca %nyx_string*
  store %nyx_string* %510, %nyx_string** %511
  %512 = getelementptr [8 x i8], [8 x i8]* @.str29, i32 0, i32 0
  %513 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str29.c, i8* %512, i64 7)
  %514 = alloca %nyx_string*
  store %nyx_string* %513, %nyx_string** %514
  %515 = getelementptr [5 x i8], [5 x i8]* @.str30, i32 0, i32 0
  %516 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str30.c, i8* %515, i64 4)
  %517 = alloca %nyx_string*
  store %nyx_string* %516, %nyx_string** %517
  %518 = getelementptr [2 x i8], [2 x i8]* @.str31, i32 0, i32 0
  %519 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str31.c, i8* %518, i64 1)
  %520 = alloca %nyx_string*
  store %nyx_string* %519, %nyx_string** %520
  %521 = getelementptr [61 x i8], [61 x i8]* @.str32, i32 0, i32 0
  %522 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str32.c, i8* %521, i64 60)
  %523 = alloca %nyx_string*
  store %nyx_string* %522, %nyx_string** %523
  %524 = getelementptr [182 x i8], [182 x i8]* @.str33, i32 0, i32 0
  %525 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str33.c, i8* %524, i64 181)
  %526 = alloca %nyx_string*
  store %nyx_string* %525, %nyx_string** %526
  %527 = getelementptr [14 x i8], [14 x i8]* @.str34, i32 0, i32 0
  %528 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str34.c, i8* %527, i64 13)
  %529 = alloca %nyx_string*
  store %nyx_string* %528, %nyx_string** %529
  %530 = getelementptr [1 x i8], [1 x i8]* @.str35, i32 0, i32 0
  %531 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str35.c, i8* %530, i64 0)
  %532 = alloca %nyx_string*
  store %nyx_string* %531, %nyx_string** %532
  %533 = call i8* @llvm.stacksave()
  br label %while_cond123
while_cond123:
  %534 = load i64, i64* %496
  %535 = load { i64, i8* }*, { i64, i8* }** %stmts.ptr
  %536 = call i64 @nyx_array_length({ i64, i8* }* %535)
  %537 = icmp slt i64 %534, %536
  br i1 %537, label %while_body124, label %while_end125
while_body124:
  call void @llvm.stackrestore(i8* %533)
  %538 = load { i64, i8* }*, { i64, i8* }** %stmts.ptr
  %539 = load i64, i64* %496
  %540 = call i64 @nyx_array_get({ i64, i8* }* %538, i64 %539)
  %541 = inttoptr i64 %540 to { i64, i8* }*
  %542 = alloca { i64, i8* }*
  store { i64, i8* }* %541, { i64, i8* }** %542
  %543 = load { i64, i8* }*, { i64, i8* }** %542
  %544 = call i64 @nyx_array_get_checked({ i64, i8* }* %543, i64 0, i64 2)
  %545 = inttoptr i64 %544 to %nyx_string*
  %546 = alloca %nyx_string*
  store %nyx_string* %545, %nyx_string** %546
  %547 = load %nyx_string*, %nyx_string** %546
  %548 = load %nyx_string*, %nyx_string** %499
  %549 = call i1 @nyx_string_equals(%nyx_string* %547, %nyx_string* %548)
  br i1 %549, label %then126, label %else127
then126:
  %550 = load { i64, i8* }*, { i64, i8* }** %542
  %551 = call i64 @nyx_array_get({ i64, i8* }* %550, i64 1)
  %552 = inttoptr i64 %551 to { i64, i8* }*
  %553 = alloca { i64, i8* }*
  store { i64, i8* }* %552, { i64, i8* }** %553
  %554 = load { i64, i8* }*, { i64, i8* }** %553
  %555 = call i64 @nyx_array_length({ i64, i8* }* %554)
  %556 = icmp sgt i64 %555, 0
  br i1 %556, label %then129, label %else130
then129:
  %557 = load { i64, i8* }*, { i64, i8* }** %553
  %558 = call i64 @nyx_array_get({ i64, i8* }* %557, i64 0)
  %559 = inttoptr i64 %558 to { i64, i8* }*
  %560 = alloca { i64, i8* }*
  store { i64, i8* }* %559, { i64, i8* }** %560
  %561 = load { i64, i8* }*, { i64, i8* }** %560
  store { i64, i8* }* %561, { i64, i8* }** %542
  %562 = load { i64, i8* }*, { i64, i8* }** %560
  %563 = call i64 @nyx_array_get_checked({ i64, i8* }* %562, i64 0, i64 2)
  %564 = inttoptr i64 %563 to %nyx_string*
  store %nyx_string* %564, %nyx_string** %546
  br label %merge131
else130:
  br label %merge131
merge131:
  br label %merge128
else127:
  br label %merge128
merge128:
  %565 = load %nyx_string*, %nyx_string** %546
  %566 = load %nyx_string*, %nyx_string** %502
  %567 = call i1 @nyx_string_equals(%nyx_string* %565, %nyx_string* %566)
  br i1 %567, label %then132, label %else133
then132:
  %568 = load { i64, i8* }*, { i64, i8* }** %542
  %569 = call i64 @nyx_array_get({ i64, i8* }* %568, i64 1)
  %570 = inttoptr i64 %569 to { i64, i8* }*
  %571 = alloca { i64, i8* }*
  store { i64, i8* }* %570, { i64, i8* }** %571
  %572 = load { i64, i8* }*, { i64, i8* }** %571
  %573 = call i64 @nyx_array_get_checked({ i64, i8* }* %572, i64 0, i64 2)
  %574 = inttoptr i64 %573 to %nyx_string*
  %575 = alloca %nyx_string*
  store %nyx_string* %574, %nyx_string** %575
  %576 = load { i64, i8* }*, { i64, i8* }** %571
  %577 = call i64 @nyx_array_get({ i64, i8* }* %576, i64 1)
  %578 = inttoptr i64 %577 to { i64, i8* }*
  %579 = alloca { i64, i8* }*
  store { i64, i8* }* %578, { i64, i8* }** %579
  %580 = load { i64, i8* }*, { i64, i8* }** %571
  %581 = call i64 @fn_decl_line({ i64, i8* }* %580)
  %582 = alloca i64
  store i64 %581, i64* %582
  %583 = load i64, i64* %495
  %584 = alloca i64
  store i64 %583, i64* %584
  %585 = load i64, i64* %582
  %586 = icmp sgt i64 %585, 0
  br i1 %586, label %then135, label %else136
then135:
  %587 = load i64, i64* %582
  %588 = alloca i64
  store i64 %587, i64* %588
  %589 = call i8* @llvm.stacksave()
  br label %while_cond138
while_cond138:
  %590 = load i64, i64* %588
  %591 = load i64, i64* %495
  %592 = icmp slt i64 %590, %591
  br i1 %592, label %while_body139, label %while_end140
while_body139:
  call void @llvm.stackrestore(i8* %589)
  %593 = load { i64, i8* }*, { i64, i8* }** %492
  %594 = load i64, i64* %588
  %595 = call i64 @nyx_array_get_checked({ i64, i8* }* %593, i64 %594, i64 2)
  %596 = inttoptr i64 %595 to %nyx_string*
  %597 = alloca %nyx_string*
  store %nyx_string* %596, %nyx_string** %597
  %598 = load %nyx_string*, %nyx_string** %597
  %599 = call i64 @nyx_string_byte_length(%nyx_string* %598)
  %600 = icmp sge i64 %599, 3
  br i1 %600, label %then141, label %else142
then141:
  %601 = load %nyx_string*, %nyx_string** %597
  %602 = call %nyx_string* @nyx_string_substring(%nyx_string* %601, i64 0, i64 3)
  %603 = load %nyx_string*, %nyx_string** %505
  %604 = call i1 @nyx_string_equals(%nyx_string* %602, %nyx_string* %603)
  br i1 %604, label %then144, label %else145
then144:
  %605 = load i64, i64* %588
  store i64 %605, i64* %584
  br label %merge146
else145:
  br label %merge146
merge146:
  br label %merge143
else142:
  br label %merge143
merge143:
  %606 = load %nyx_string*, %nyx_string** %597
  %607 = call i64 @nyx_string_byte_length(%nyx_string* %606)
  %608 = icmp sge i64 %607, 7
  br i1 %608, label %then147, label %else148
then147:
  %609 = load %nyx_string*, %nyx_string** %597
  %610 = call %nyx_string* @nyx_string_substring(%nyx_string* %609, i64 0, i64 7)
  %611 = load %nyx_string*, %nyx_string** %508
  %612 = call i1 @nyx_string_equals(%nyx_string* %610, %nyx_string* %611)
  br i1 %612, label %then150, label %else151
then150:
  %613 = load i64, i64* %588
  store i64 %613, i64* %584
  br label %merge152
else151:
  br label %merge152
merge152:
  br label %merge149
else148:
  br label %merge149
merge149:
  %614 = load i64, i64* %584
  %615 = load i64, i64* %495
  %616 = icmp ne i64 %614, %615
  br i1 %616, label %then153, label %else154
then153:
  br label %while_end140
else154:
  br label %merge155
merge155:
  %617 = load i64, i64* %588
  %618 = add i64 %617, 1
  store i64 %618, i64* %588
  br label %while_cond138
while_end140:
  br label %merge137
else136:
  br label %merge137
merge137:
  %619 = alloca i64
  store i64 0, i64* %619
  %620 = call i8* @llvm.stacksave()
  br label %while_cond156
while_cond156:
  %621 = load i64, i64* %619
  %622 = load { i64, i8* }*, { i64, i8* }** %579
  %623 = call i64 @nyx_array_length({ i64, i8* }* %622)
  %624 = icmp slt i64 %621, %623
  br i1 %624, label %while_body157, label %while_end158
while_body157:
  call void @llvm.stackrestore(i8* %620)
  %625 = load { i64, i8* }*, { i64, i8* }** %579
  %626 = load i64, i64* %619
  %627 = call i64 @nyx_array_get({ i64, i8* }* %625, i64 %626)
  %628 = inttoptr i64 %627 to { i64, i8* }*
  %629 = alloca { i64, i8* }*
  store { i64, i8* }* %628, { i64, i8* }** %629
  %630 = load { i64, i8* }*, { i64, i8* }** %629
  %631 = call i64 @nyx_array_length({ i64, i8* }* %630)
  %632 = icmp sge i64 %631, 2
  br i1 %632, label %then159, label %else160
then159:
  %633 = load { i64, i8* }*, { i64, i8* }** %629
  %634 = call i64 @nyx_array_get_checked({ i64, i8* }* %633, i64 0, i64 2)
  %635 = inttoptr i64 %634 to %nyx_string*
  %636 = alloca %nyx_string*
  store %nyx_string* %635, %nyx_string** %636
  %637 = load { i64, i8* }*, { i64, i8* }** %629
  %638 = call i64 @nyx_array_get_checked({ i64, i8* }* %637, i64 1, i64 2)
  %639 = inttoptr i64 %638 to %nyx_string*
  %640 = alloca %nyx_string*
  store %nyx_string* %639, %nyx_string** %640
  %641 = load %nyx_string*, %nyx_string** %640
  %642 = load %nyx_string*, %nyx_string** %511
  %643 = call i1 @nyx_string_equals(%nyx_string* %641, %nyx_string* %642)
  br i1 %643, label %then162, label %else163
then162:
  %644 = alloca i64
  store i64 0, i64* %644
  %645 = load i64, i64* %582
  %646 = icmp sgt i64 %645, 0
  br i1 %646, label %then165, label %else166
then165:
  %647 = load i64, i64* %582
  %648 = sub i64 %647, 1
  store i64 %648, i64* %644
  br label %merge167
else166:
  br label %merge167
merge167:
  %649 = load { i64, i8* }*, { i64, i8* }** %492
  %650 = load i64, i64* %644
  %651 = load i64, i64* %584
  %652 = load %nyx_string*, %nyx_string** %636
  %653 = call i64 @line_uses_call_result({ i64, i8* }* %649, i64 %650, i64 %651, %nyx_string* %652)
  %654 = alloca i64
  store i64 %653, i64* %654
  %655 = load i64, i64* %654
  %656 = icmp sgt i64 %655, 0
  br i1 %656, label %then168, label %else169
then168:
  %657 = load %nyx_string*, %nyx_string** %514
  %658 = load %nyx_string*, %nyx_string** %517
  %659 = load %nyx_string*, %nyx_string** %520
  %660 = load %nyx_string*, %nyx_string** %636
  %661 = call %nyx_string* @nyx_string_concat(%nyx_string* %659, %nyx_string* %660)
  %662 = load %nyx_string*, %nyx_string** %523
  %663 = call %nyx_string* @nyx_string_concat(%nyx_string* %661, %nyx_string* %662)
  %664 = load i64, i64* %654
  %665 = call %nyx_string* @nyx_string_from_int(i64 %664)
  %666 = call %nyx_string* @nyx_string_concat(%nyx_string* %663, %nyx_string* %665)
  %667 = load %nyx_string*, %nyx_string** %526
  %668 = call %nyx_string* @nyx_string_concat(%nyx_string* %666, %nyx_string* %667)
  %669 = load %nyx_string*, %nyx_string** %636
  %670 = call %nyx_string* @nyx_string_concat(%nyx_string* %668, %nyx_string* %669)
  %671 = load %nyx_string*, %nyx_string** %529
  %672 = call %nyx_string* @nyx_string_concat(%nyx_string* %670, %nyx_string* %671)
  %673 = load i64, i64* %582
  %674 = call %VetIssue @make_issue(%nyx_string* %657, %nyx_string* %658, %nyx_string* %672, i64 %673)
  %675 = alloca %VetIssue
  store %VetIssue %674, %VetIssue* %675
  %676 = load { i64, i8* }*, { i64, i8* }** %487
  %677 = load %VetIssue, %VetIssue* %675
  %678 = getelementptr %VetIssue, %VetIssue* null, i32 1
  %679 = ptrtoint %VetIssue* %678 to i64
  %680 = call i8* @GC_malloc(i64 %679)
  %681 = bitcast i8* %680 to %VetIssue*
  store %VetIssue %677, %VetIssue* %681
  %682 = ptrtoint %VetIssue* %681 to i64
  call void @nyx_array_push({ i64, i8* }* %676, i64 %682)
  br label %merge170
else169:
  br label %merge170
merge170:
  br label %merge164
else163:
  br label %merge164
merge164:
  br label %merge161
else160:
  br label %merge161
merge161:
  %683 = load i64, i64* %619
  %684 = add i64 %683, 1
  store i64 %684, i64* %619
  br label %while_cond156
while_end158:
  %685 = load %nyx_string*, %nyx_string** %575
  %686 = load %nyx_string*, %nyx_string** %532
  %687 = call i1 @nyx_string_equals(%nyx_string* %685, %nyx_string* %686)
  br i1 %687, label %then171, label %else172
then171:
  br label %merge173
else172:
  br label %merge173
merge173:
  br label %merge134
else133:
  br label %merge134
merge134:
  %688 = load i64, i64* %496
  %689 = add i64 %688, 1
  store i64 %689, i64* %496
  br label %while_cond123
while_end125:
  %690 = load { i64, i8* }*, { i64, i8* }** %487
  ret { i64, i8* }* %690
}

define internal { i64, i8* }* @check_dead_code(
{ i64, i8* }* %stmts.param) {
  %stmts.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %stmts.param, { i64, i8* }** %stmts.ptr
  %691 = call { i64, i8* }* @nyx_array_new_ptr()
  %692 = alloca { i64, i8* }*
  store { i64, i8* }* %691, { i64, i8* }** %692
  %693 = alloca i64
  store i64 0, i64* %693
  %694 = alloca i1
  store i1 0, i1* %694
  %695 = alloca i64
  store i64 0, i64* %695
  %696 = getelementptr [8 x i8], [8 x i8]* @.str36, i32 0, i32 0
  %697 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str36.c, i8* %696, i64 7)
  %698 = alloca %nyx_string*
  store %nyx_string* %697, %nyx_string** %698
  %699 = getelementptr [5 x i8], [5 x i8]* @.str37, i32 0, i32 0
  %700 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str37.c, i8* %699, i64 4)
  %701 = alloca %nyx_string*
  store %nyx_string* %700, %nyx_string** %701
  %702 = getelementptr [25 x i8], [25 x i8]* @.str38, i32 0, i32 0
  %703 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str38.c, i8* %702, i64 24)
  %704 = alloca %nyx_string*
  store %nyx_string* %703, %nyx_string** %704
  %705 = getelementptr [11 x i8], [11 x i8]* @.str39, i32 0, i32 0
  %706 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str39.c, i8* %705, i64 10)
  %707 = alloca %nyx_string*
  store %nyx_string* %706, %nyx_string** %707
  %708 = getelementptr [7 x i8], [7 x i8]* @.str40, i32 0, i32 0
  %709 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str40.c, i8* %708, i64 6)
  %710 = alloca %nyx_string*
  store %nyx_string* %709, %nyx_string** %710
  %711 = getelementptr [6 x i8], [6 x i8]* @.str41, i32 0, i32 0
  %712 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str41.c, i8* %711, i64 5)
  %713 = alloca %nyx_string*
  store %nyx_string* %712, %nyx_string** %713
  %714 = getelementptr [9 x i8], [9 x i8]* @.str42, i32 0, i32 0
  %715 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str42.c, i8* %714, i64 8)
  %716 = alloca %nyx_string*
  store %nyx_string* %715, %nyx_string** %716
  %717 = call i8* @llvm.stacksave()
  br label %while_cond174
while_cond174:
  %718 = load i64, i64* %693
  %719 = load { i64, i8* }*, { i64, i8* }** %stmts.ptr
  %720 = call i64 @nyx_array_length({ i64, i8* }* %719)
  %721 = icmp slt i64 %718, %720
  br i1 %721, label %while_body175, label %while_end176
while_body175:
  call void @llvm.stackrestore(i8* %717)
  %722 = load { i64, i8* }*, { i64, i8* }** %stmts.ptr
  %723 = load i64, i64* %693
  %724 = call i64 @nyx_array_get({ i64, i8* }* %722, i64 %723)
  %725 = inttoptr i64 %724 to { i64, i8* }*
  %726 = alloca { i64, i8* }*
  store { i64, i8* }* %725, { i64, i8* }** %726
  %727 = load { i64, i8* }*, { i64, i8* }** %726
  %728 = call i64 @nyx_array_get_checked({ i64, i8* }* %727, i64 0, i64 2)
  %729 = inttoptr i64 %728 to %nyx_string*
  %730 = alloca %nyx_string*
  store %nyx_string* %729, %nyx_string** %730
  %731 = load i1, i1* %694
  br i1 %731, label %then177, label %else178
then177:
  %732 = alloca i64
  store i64 0, i64* %732
  %733 = load { i64, i8* }*, { i64, i8* }** %726
  %734 = call i64 @nyx_array_length({ i64, i8* }* %733)
  %735 = icmp sgt i64 %734, 2
  br i1 %735, label %then180, label %else181
then180:
  br label %merge182
else181:
  br label %merge182
merge182:
  %736 = load %nyx_string*, %nyx_string** %698
  %737 = load %nyx_string*, %nyx_string** %701
  %738 = load %nyx_string*, %nyx_string** %704
  %739 = load { i64, i8* }*, { i64, i8* }** %726
  %740 = call %nyx_string* @get_terminator_name({ i64, i8* }* %739)
  %741 = call %nyx_string* @nyx_string_concat(%nyx_string* %738, %nyx_string* %740)
  %742 = load %nyx_string*, %nyx_string** %707
  %743 = call %nyx_string* @nyx_string_concat(%nyx_string* %741, %nyx_string* %742)
  %744 = load i64, i64* %695
  %745 = call %nyx_string* @nyx_string_from_int(i64 %744)
  %746 = call %nyx_string* @nyx_string_concat(%nyx_string* %743, %nyx_string* %745)
  %747 = load i64, i64* %695
  %748 = call %VetIssue @make_issue(%nyx_string* %736, %nyx_string* %737, %nyx_string* %746, i64 %747)
  %749 = alloca %VetIssue
  store %VetIssue %748, %VetIssue* %749
  %750 = load { i64, i8* }*, { i64, i8* }** %692
  %751 = load %VetIssue, %VetIssue* %749
  %752 = getelementptr %VetIssue, %VetIssue* null, i32 1
  %753 = ptrtoint %VetIssue* %752 to i64
  %754 = call i8* @GC_malloc(i64 %753)
  %755 = bitcast i8* %754 to %VetIssue*
  store %VetIssue %751, %VetIssue* %755
  %756 = ptrtoint %VetIssue* %755 to i64
  call void @nyx_array_push({ i64, i8* }* %750, i64 %756)
  store i1 0, i1* %694
  br label %merge179
else178:
  br label %merge179
merge179:
  %757 = alloca i1
  store i1 true, i1* %757
  %758 = alloca i1
  store i1 true, i1* %758
  %759 = load %nyx_string*, %nyx_string** %730
  %760 = load %nyx_string*, %nyx_string** %710
  %761 = call i1 @nyx_string_equals(%nyx_string* %759, %nyx_string* %760)
  br i1 %761, label %sc_or_end184, label %sc_or_rhs183
sc_or_rhs183:
  %762 = load %nyx_string*, %nyx_string** %730
  %763 = load %nyx_string*, %nyx_string** %713
  %764 = call i1 @nyx_string_equals(%nyx_string* %762, %nyx_string* %763)
  store i1 %764, i1* %758
  br label %sc_or_end184
sc_or_end184:
  %765 = load i1, i1* %758
  br i1 %765, label %sc_or_end186, label %sc_or_rhs185
sc_or_rhs185:
  %766 = load %nyx_string*, %nyx_string** %730
  %767 = load %nyx_string*, %nyx_string** %716
  %768 = call i1 @nyx_string_equals(%nyx_string* %766, %nyx_string* %767)
  store i1 %768, i1* %757
  br label %sc_or_end186
sc_or_end186:
  %769 = load i1, i1* %757
  br i1 %769, label %then187, label %else188
then187:
  store i1 1, i1* %694
  store i64 0, i64* %695
  br label %merge189
else188:
  br label %merge189
merge189:
  %770 = load i64, i64* %693
  %771 = add i64 %770, 1
  store i64 %771, i64* %693
  br label %while_cond174
while_end176:
  %772 = load { i64, i8* }*, { i64, i8* }** %692
  ret { i64, i8* }* %772
}

define internal %nyx_string* @get_terminator_name(
{ i64, i8* }* %stmt.param) {
  %stmt.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %stmt.param, { i64, i8* }** %stmt.ptr
  %773 = load { i64, i8* }*, { i64, i8* }** %stmt.ptr
  %774 = call i64 @nyx_array_get_checked({ i64, i8* }* %773, i64 0, i64 2)
  %775 = inttoptr i64 %774 to %nyx_string*
  %776 = alloca %nyx_string*
  store %nyx_string* %775, %nyx_string** %776
  %777 = load %nyx_string*, %nyx_string** %776
  ret %nyx_string* %777
}

define internal { i64, i8* }* @collect_fn_names(
{ i64, i8* }* %stmts.param) {
  %stmts.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %stmts.param, { i64, i8* }** %stmts.ptr
  %778 = call { i64, i8* }* @nyx_array_new_ptr()
  %779 = alloca { i64, i8* }*
  store { i64, i8* }* %778, { i64, i8* }** %779
  %780 = alloca i64
  store i64 0, i64* %780
  %781 = getelementptr [9 x i8], [9 x i8]* @.str43, i32 0, i32 0
  %782 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str43.c, i8* %781, i64 8)
  %783 = alloca %nyx_string*
  store %nyx_string* %782, %nyx_string** %783
  %784 = getelementptr [5 x i8], [5 x i8]* @.str44, i32 0, i32 0
  %785 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str44.c, i8* %784, i64 4)
  %786 = alloca %nyx_string*
  store %nyx_string* %785, %nyx_string** %786
  %787 = call i8* @llvm.stacksave()
  br label %while_cond190
while_cond190:
  %788 = load i64, i64* %780
  %789 = load { i64, i8* }*, { i64, i8* }** %stmts.ptr
  %790 = call i64 @nyx_array_length({ i64, i8* }* %789)
  %791 = icmp slt i64 %788, %790
  br i1 %791, label %while_body191, label %while_end192
while_body191:
  call void @llvm.stackrestore(i8* %787)
  %792 = load { i64, i8* }*, { i64, i8* }** %stmts.ptr
  %793 = load i64, i64* %780
  %794 = call i64 @nyx_array_get({ i64, i8* }* %792, i64 %793)
  %795 = inttoptr i64 %794 to { i64, i8* }*
  %796 = alloca { i64, i8* }*
  store { i64, i8* }* %795, { i64, i8* }** %796
  %797 = load { i64, i8* }*, { i64, i8* }** %796
  %798 = call i64 @nyx_array_get_checked({ i64, i8* }* %797, i64 0, i64 2)
  %799 = inttoptr i64 %798 to %nyx_string*
  %800 = alloca %nyx_string*
  store %nyx_string* %799, %nyx_string** %800
  %801 = load %nyx_string*, %nyx_string** %800
  %802 = load %nyx_string*, %nyx_string** %783
  %803 = call i1 @nyx_string_equals(%nyx_string* %801, %nyx_string* %802)
  br i1 %803, label %then193, label %else194
then193:
  %804 = load { i64, i8* }*, { i64, i8* }** %796
  %805 = call i64 @nyx_array_get({ i64, i8* }* %804, i64 1)
  %806 = inttoptr i64 %805 to { i64, i8* }*
  %807 = alloca { i64, i8* }*
  store { i64, i8* }* %806, { i64, i8* }** %807
  %808 = load { i64, i8* }*, { i64, i8* }** %807
  %809 = call i64 @nyx_array_get_checked({ i64, i8* }* %808, i64 0, i64 2)
  %810 = inttoptr i64 %809 to %nyx_string*
  %811 = alloca %nyx_string*
  store %nyx_string* %810, %nyx_string** %811
  %812 = load %nyx_string*, %nyx_string** %811
  %813 = load %nyx_string*, %nyx_string** %786
  %814 = call i1 @nyx_string_equals(%nyx_string* %812, %nyx_string* %813)
  %815 = xor i1 %814, true
  br i1 %815, label %then196, label %else197
then196:
  %816 = load { i64, i8* }*, { i64, i8* }** %779
  %817 = load %nyx_string*, %nyx_string** %811
  %818 = ptrtoint %nyx_string* %817 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %816, i64 %818, i64 2)
  br label %merge198
else197:
  br label %merge198
merge198:
  br label %merge195
else194:
  br label %merge195
merge195:
  %819 = load i64, i64* %780
  %820 = add i64 %819, 1
  store i64 %820, i64* %780
  br label %while_cond190
while_end192:
  %821 = load { i64, i8* }*, { i64, i8* }** %779
  ret { i64, i8* }* %821
}

define internal { i64, i8* }* @check_unused_imports(
{ i64, i8* }* %stmts.param, %nyx_string* %source.param) {
  %stmts.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %stmts.param, { i64, i8* }** %stmts.ptr
  %source.ptr = alloca %nyx_string*
  store %nyx_string* %source.param, %nyx_string** %source.ptr
  %822 = call { i64, i8* }* @nyx_array_new_ptr()
  %823 = alloca { i64, i8* }*
  store { i64, i8* }* %822, { i64, i8* }** %823
  %824 = alloca i64
  store i64 0, i64* %824
  %825 = getelementptr [14 x i8], [14 x i8]* @.str45, i32 0, i32 0
  %826 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str45.c, i8* %825, i64 13)
  %827 = alloca %nyx_string*
  store %nyx_string* %826, %nyx_string** %827
  %828 = getelementptr [1 x i8], [1 x i8]* @.str46, i32 0, i32 0
  %829 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str46.c, i8* %828, i64 0)
  %830 = alloca %nyx_string*
  store %nyx_string* %829, %nyx_string** %830
  %831 = getelementptr [2 x i8], [2 x i8]* @.str47, i32 0, i32 0
  %832 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str47.c, i8* %831, i64 1)
  %833 = alloca %nyx_string*
  store %nyx_string* %832, %nyx_string** %833
  %834 = getelementptr [8 x i8], [8 x i8]* @.str48, i32 0, i32 0
  %835 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str48.c, i8* %834, i64 7)
  %836 = alloca %nyx_string*
  store %nyx_string* %835, %nyx_string** %836
  %837 = getelementptr [5 x i8], [5 x i8]* @.str49, i32 0, i32 0
  %838 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str49.c, i8* %837, i64 4)
  %839 = alloca %nyx_string*
  store %nyx_string* %838, %nyx_string** %839
  %840 = getelementptr [18 x i8], [18 x i8]* @.str50, i32 0, i32 0
  %841 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str50.c, i8* %840, i64 17)
  %842 = alloca %nyx_string*
  store %nyx_string* %841, %nyx_string** %842
  %843 = getelementptr [14 x i8], [14 x i8]* @.str51, i32 0, i32 0
  %844 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str51.c, i8* %843, i64 13)
  %845 = alloca %nyx_string*
  store %nyx_string* %844, %nyx_string** %845
  %846 = call i8* @llvm.stacksave()
  br label %while_cond199
while_cond199:
  %847 = load i64, i64* %824
  %848 = load { i64, i8* }*, { i64, i8* }** %stmts.ptr
  %849 = call i64 @nyx_array_length({ i64, i8* }* %848)
  %850 = icmp slt i64 %847, %849
  br i1 %850, label %while_body200, label %while_end201
while_body200:
  call void @llvm.stackrestore(i8* %846)
  %851 = load { i64, i8* }*, { i64, i8* }** %stmts.ptr
  %852 = load i64, i64* %824
  %853 = call i64 @nyx_array_get({ i64, i8* }* %851, i64 %852)
  %854 = inttoptr i64 %853 to { i64, i8* }*
  %855 = alloca { i64, i8* }*
  store { i64, i8* }* %854, { i64, i8* }** %855
  %856 = load { i64, i8* }*, { i64, i8* }** %855
  %857 = call i64 @nyx_array_get_checked({ i64, i8* }* %856, i64 0, i64 2)
  %858 = inttoptr i64 %857 to %nyx_string*
  %859 = alloca %nyx_string*
  store %nyx_string* %858, %nyx_string** %859
  %860 = load %nyx_string*, %nyx_string** %859
  %861 = load %nyx_string*, %nyx_string** %827
  %862 = call i1 @nyx_string_equals(%nyx_string* %860, %nyx_string* %861)
  br i1 %862, label %then202, label %else203
then202:
  %863 = load { i64, i8* }*, { i64, i8* }** %855
  %864 = call i64 @nyx_array_get({ i64, i8* }* %863, i64 1)
  %865 = inttoptr i64 %864 to { i64, i8* }*
  %866 = alloca { i64, i8* }*
  store { i64, i8* }* %865, { i64, i8* }** %866
  %867 = load { i64, i8* }*, { i64, i8* }** %866
  %868 = call i64 @nyx_array_length({ i64, i8* }* %867)
  %869 = icmp sge i64 %868, 2
  br i1 %869, label %then205, label %else206
then205:
  %870 = load { i64, i8* }*, { i64, i8* }** %866
  %871 = call i64 @nyx_array_get_checked({ i64, i8* }* %870, i64 1, i64 2)
  %872 = inttoptr i64 %871 to %nyx_string*
  %873 = alloca %nyx_string*
  store %nyx_string* %872, %nyx_string** %873
  %874 = load %nyx_string*, %nyx_string** %873
  %875 = load %nyx_string*, %nyx_string** %830
  %876 = call i1 @nyx_string_equals(%nyx_string* %874, %nyx_string* %875)
  %877 = xor i1 %876, true
  br i1 %877, label %then208, label %else209
then208:
  %878 = load %nyx_string*, %nyx_string** %873
  %879 = load %nyx_string*, %nyx_string** %833
  %880 = call %nyx_string* @nyx_string_concat(%nyx_string* %878, %nyx_string* %879)
  %881 = alloca %nyx_string*
  store %nyx_string* %880, %nyx_string** %881
  %882 = load %nyx_string*, %nyx_string** %881
  %883 = load %nyx_string*, %nyx_string** %source.ptr
  %884 = call i1 @name_used_in_source(%nyx_string* %882, %nyx_string* %883)
  %885 = alloca i1
  store i1 %884, i1* %885
  %886 = load i1, i1* %885
  %887 = xor i1 %886, true
  br i1 %887, label %then211, label %else212
then211:
  %888 = load %nyx_string*, %nyx_string** %836
  %889 = load %nyx_string*, %nyx_string** %839
  %890 = load %nyx_string*, %nyx_string** %842
  %891 = load %nyx_string*, %nyx_string** %873
  %892 = call %nyx_string* @nyx_string_concat(%nyx_string* %890, %nyx_string* %891)
  %893 = load %nyx_string*, %nyx_string** %845
  %894 = call %nyx_string* @nyx_string_concat(%nyx_string* %892, %nyx_string* %893)
  %895 = call %VetIssue @make_issue(%nyx_string* %888, %nyx_string* %889, %nyx_string* %894, i64 0)
  %896 = alloca %VetIssue
  store %VetIssue %895, %VetIssue* %896
  %897 = load { i64, i8* }*, { i64, i8* }** %823
  %898 = load %VetIssue, %VetIssue* %896
  %899 = getelementptr %VetIssue, %VetIssue* null, i32 1
  %900 = ptrtoint %VetIssue* %899 to i64
  %901 = call i8* @GC_malloc(i64 %900)
  %902 = bitcast i8* %901 to %VetIssue*
  store %VetIssue %898, %VetIssue* %902
  %903 = ptrtoint %VetIssue* %902 to i64
  call void @nyx_array_push({ i64, i8* }* %897, i64 %903)
  br label %merge213
else212:
  br label %merge213
merge213:
  br label %merge210
else209:
  br label %merge210
merge210:
  br label %merge207
else206:
  br label %merge207
merge207:
  br label %merge204
else203:
  br label %merge204
merge204:
  %904 = load i64, i64* %824
  %905 = add i64 %904, 1
  store i64 %905, i64* %824
  br label %while_cond199
while_end201:
  %906 = load { i64, i8* }*, { i64, i8* }** %823
  ret { i64, i8* }* %906
}

define internal { i64, i8* }* @vet_source(
%nyx_string* %source.param, { i64, i8* }* %ast.param) {
  %source.ptr = alloca %nyx_string*
  store %nyx_string* %source.param, %nyx_string** %source.ptr
  %ast.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %ast.param, { i64, i8* }** %ast.ptr
  %907 = call { i64, i8* }* @nyx_array_new_ptr()
  %908 = alloca { i64, i8* }*
  store { i64, i8* }* %907, { i64, i8* }** %908
  %909 = load %nyx_string*, %nyx_string** %source.ptr
  %910 = call { i64, i8* }* @check_gotcha_patterns(%nyx_string* %909)
  %911 = alloca { i64, i8* }*
  store { i64, i8* }* %910, { i64, i8* }** %911
  %912 = alloca i64
  store i64 0, i64* %912
  %913 = call i8* @llvm.stacksave()
  br label %while_cond214
while_cond214:
  %914 = load i64, i64* %912
  %915 = load { i64, i8* }*, { i64, i8* }** %911
  %916 = call i64 @nyx_array_length({ i64, i8* }* %915)
  %917 = icmp slt i64 %914, %916
  br i1 %917, label %while_body215, label %while_end216
while_body215:
  call void @llvm.stackrestore(i8* %913)
  %918 = load { i64, i8* }*, { i64, i8* }** %911
  %919 = load i64, i64* %912
  %920 = getelementptr [9 x i8], [9 x i8]* @.slotT52, i32 0, i32 0
  %921 = call i64 @nyx_slot_as_value_checked({ i64, i8* }* %918, i64 %919, i8* %920)
  %922 = inttoptr i64 %921 to %VetIssue*
  %923 = load %VetIssue, %VetIssue* %922
  %924 = alloca %VetIssue
  store %VetIssue %923, %VetIssue* %924
  %925 = load { i64, i8* }*, { i64, i8* }** %908
  %926 = load %VetIssue, %VetIssue* %924
  %927 = getelementptr %VetIssue, %VetIssue* null, i32 1
  %928 = ptrtoint %VetIssue* %927 to i64
  %929 = call i8* @GC_malloc(i64 %928)
  %930 = bitcast i8* %929 to %VetIssue*
  store %VetIssue %926, %VetIssue* %930
  %931 = ptrtoint %VetIssue* %930 to i64
  call void @nyx_array_push({ i64, i8* }* %925, i64 %931)
  %932 = load i64, i64* %912
  %933 = add i64 %932, 1
  store i64 %933, i64* %912
  br label %while_cond214
while_end216:
  %934 = load { i64, i8* }*, { i64, i8* }** %ast.ptr
  %935 = call i64 @nyx_array_get({ i64, i8* }* %934, i64 1)
  %936 = inttoptr i64 %935 to { i64, i8* }*
  %937 = alloca { i64, i8* }*
  store { i64, i8* }* %936, { i64, i8* }** %937
  %938 = load { i64, i8* }*, { i64, i8* }** %937
  %939 = alloca { i64, i8* }*
  store { i64, i8* }* %938, { i64, i8* }** %939
  %940 = load { i64, i8* }*, { i64, i8* }** %937
  %941 = call i64 @nyx_array_length({ i64, i8* }* %940)
  %942 = icmp eq i64 %941, 1
  br i1 %942, label %then217, label %else218
then217:
  %943 = load { i64, i8* }*, { i64, i8* }** %937
  %944 = call i64 @nyx_array_get({ i64, i8* }* %943, i64 0)
  %945 = inttoptr i64 %944 to { i64, i8* }*
  %946 = alloca { i64, i8* }*
  store { i64, i8* }* %945, { i64, i8* }** %946
  %947 = load { i64, i8* }*, { i64, i8* }** %946
  %948 = call i64 @nyx_array_length({ i64, i8* }* %947)
  %949 = icmp sgt i64 %948, 0
  br i1 %949, label %then220, label %else221
then220:
  %950 = load { i64, i8* }*, { i64, i8* }** %946
  store { i64, i8* }* %950, { i64, i8* }** %939
  br label %merge222
else221:
  br label %merge222
merge222:
  br label %merge219
else218:
  br label %merge219
merge219:
  %951 = load { i64, i8* }*, { i64, i8* }** %937
  %952 = alloca { i64, i8* }*
  store { i64, i8* }* %951, { i64, i8* }** %952
  %953 = load { i64, i8* }*, { i64, i8* }** %937
  %954 = call i64 @nyx_array_length({ i64, i8* }* %953)
  %955 = icmp eq i64 %954, 1
  br i1 %955, label %then223, label %else224
then223:
  %956 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %956, { i64, i8* }** %952
  br label %merge225
else224:
  br label %merge225
merge225:
  %957 = load { i64, i8* }*, { i64, i8* }** %952
  %958 = load %nyx_string*, %nyx_string** %source.ptr
  %959 = call { i64, i8* }* @check_unused_imports({ i64, i8* }* %957, %nyx_string* %958)
  %960 = alloca { i64, i8* }*
  store { i64, i8* }* %959, { i64, i8* }** %960
  %961 = alloca i64
  store i64 0, i64* %961
  %962 = call i8* @llvm.stacksave()
  br label %while_cond226
while_cond226:
  %963 = load i64, i64* %961
  %964 = load { i64, i8* }*, { i64, i8* }** %960
  %965 = call i64 @nyx_array_length({ i64, i8* }* %964)
  %966 = icmp slt i64 %963, %965
  br i1 %966, label %while_body227, label %while_end228
while_body227:
  call void @llvm.stackrestore(i8* %962)
  %967 = load { i64, i8* }*, { i64, i8* }** %960
  %968 = load i64, i64* %961
  %969 = getelementptr [9 x i8], [9 x i8]* @.slotT53, i32 0, i32 0
  %970 = call i64 @nyx_slot_as_value_checked({ i64, i8* }* %967, i64 %968, i8* %969)
  %971 = inttoptr i64 %970 to %VetIssue*
  %972 = load %VetIssue, %VetIssue* %971
  %973 = alloca %VetIssue
  store %VetIssue %972, %VetIssue* %973
  %974 = load { i64, i8* }*, { i64, i8* }** %908
  %975 = load %VetIssue, %VetIssue* %973
  %976 = getelementptr %VetIssue, %VetIssue* null, i32 1
  %977 = ptrtoint %VetIssue* %976 to i64
  %978 = call i8* @GC_malloc(i64 %977)
  %979 = bitcast i8* %978 to %VetIssue*
  store %VetIssue %975, %VetIssue* %979
  %980 = ptrtoint %VetIssue* %979 to i64
  call void @nyx_array_push({ i64, i8* }* %974, i64 %980)
  %981 = load i64, i64* %961
  %982 = add i64 %981, 1
  store i64 %982, i64* %961
  br label %while_cond226
while_end228:
  %983 = load { i64, i8* }*, { i64, i8* }** %939
  %984 = load %nyx_string*, %nyx_string** %source.ptr
  %985 = call { i64, i8* }* @check_bare_fn_result_used({ i64, i8* }* %983, %nyx_string* %984)
  %986 = alloca { i64, i8* }*
  store { i64, i8* }* %985, { i64, i8* }** %986
  %987 = alloca i64
  store i64 0, i64* %987
  %988 = call i8* @llvm.stacksave()
  br label %while_cond229
while_cond229:
  %989 = load i64, i64* %987
  %990 = load { i64, i8* }*, { i64, i8* }** %986
  %991 = call i64 @nyx_array_length({ i64, i8* }* %990)
  %992 = icmp slt i64 %989, %991
  br i1 %992, label %while_body230, label %while_end231
while_body230:
  call void @llvm.stackrestore(i8* %988)
  %993 = load { i64, i8* }*, { i64, i8* }** %986
  %994 = load i64, i64* %987
  %995 = getelementptr [9 x i8], [9 x i8]* @.slotT54, i32 0, i32 0
  %996 = call i64 @nyx_slot_as_value_checked({ i64, i8* }* %993, i64 %994, i8* %995)
  %997 = inttoptr i64 %996 to %VetIssue*
  %998 = load %VetIssue, %VetIssue* %997
  %999 = alloca %VetIssue
  store %VetIssue %998, %VetIssue* %999
  %1000 = load { i64, i8* }*, { i64, i8* }** %908
  %1001 = load %VetIssue, %VetIssue* %999
  %1002 = getelementptr %VetIssue, %VetIssue* null, i32 1
  %1003 = ptrtoint %VetIssue* %1002 to i64
  %1004 = call i8* @GC_malloc(i64 %1003)
  %1005 = bitcast i8* %1004 to %VetIssue*
  store %VetIssue %1001, %VetIssue* %1005
  %1006 = ptrtoint %VetIssue* %1005 to i64
  call void @nyx_array_push({ i64, i8* }* %1000, i64 %1006)
  %1007 = load i64, i64* %987
  %1008 = add i64 %1007, 1
  store i64 %1008, i64* %987
  br label %while_cond229
while_end231:
  %1009 = load { i64, i8* }*, { i64, i8* }** %952
  %1010 = call { i64, i8* }* @check_dead_code({ i64, i8* }* %1009)
  %1011 = alloca { i64, i8* }*
  store { i64, i8* }* %1010, { i64, i8* }** %1011
  %1012 = alloca i64
  store i64 0, i64* %1012
  %1013 = call i8* @llvm.stacksave()
  br label %while_cond232
while_cond232:
  %1014 = load i64, i64* %1012
  %1015 = load { i64, i8* }*, { i64, i8* }** %1011
  %1016 = call i64 @nyx_array_length({ i64, i8* }* %1015)
  %1017 = icmp slt i64 %1014, %1016
  br i1 %1017, label %while_body233, label %while_end234
while_body233:
  call void @llvm.stackrestore(i8* %1013)
  %1018 = load { i64, i8* }*, { i64, i8* }** %1011
  %1019 = load i64, i64* %1012
  %1020 = getelementptr [9 x i8], [9 x i8]* @.slotT55, i32 0, i32 0
  %1021 = call i64 @nyx_slot_as_value_checked({ i64, i8* }* %1018, i64 %1019, i8* %1020)
  %1022 = inttoptr i64 %1021 to %VetIssue*
  %1023 = load %VetIssue, %VetIssue* %1022
  %1024 = alloca %VetIssue
  store %VetIssue %1023, %VetIssue* %1024
  %1025 = load { i64, i8* }*, { i64, i8* }** %908
  %1026 = load %VetIssue, %VetIssue* %1024
  %1027 = getelementptr %VetIssue, %VetIssue* null, i32 1
  %1028 = ptrtoint %VetIssue* %1027 to i64
  %1029 = call i8* @GC_malloc(i64 %1028)
  %1030 = bitcast i8* %1029 to %VetIssue*
  store %VetIssue %1026, %VetIssue* %1030
  %1031 = ptrtoint %VetIssue* %1030 to i64
  call void @nyx_array_push({ i64, i8* }* %1025, i64 %1031)
  %1032 = load i64, i64* %1012
  %1033 = add i64 %1032, 1
  store i64 %1033, i64* %1012
  br label %while_cond232
while_end234:
  %1034 = alloca i64
  store i64 0, i64* %1034
  %1035 = getelementptr [9 x i8], [9 x i8]* @.str56, i32 0, i32 0
  %1036 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str56.c, i8* %1035, i64 8)
  %1037 = alloca %nyx_string*
  store %nyx_string* %1036, %nyx_string** %1037
  %1038 = getelementptr [4 x i8], [4 x i8]* @.str57, i32 0, i32 0
  %1039 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str57.c, i8* %1038, i64 3)
  %1040 = alloca %nyx_string*
  store %nyx_string* %1039, %nyx_string** %1040
  %1041 = getelementptr [4 x i8], [4 x i8]* @.str58, i32 0, i32 0
  %1042 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str58.c, i8* %1041, i64 3)
  %1043 = alloca %nyx_string*
  store %nyx_string* %1042, %nyx_string** %1043
  %1044 = getelementptr [2 x i8], [2 x i8]* @.str59, i32 0, i32 0
  %1045 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str59.c, i8* %1044, i64 1)
  %1046 = alloca %nyx_string*
  store %nyx_string* %1045, %nyx_string** %1046
  %1047 = getelementptr [8 x i8], [8 x i8]* @.str60, i32 0, i32 0
  %1048 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str60.c, i8* %1047, i64 7)
  %1049 = alloca %nyx_string*
  store %nyx_string* %1048, %nyx_string** %1049
  %1050 = getelementptr [5 x i8], [5 x i8]* @.str61, i32 0, i32 0
  %1051 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str61.c, i8* %1050, i64 4)
  %1052 = alloca %nyx_string*
  store %nyx_string* %1051, %nyx_string** %1052
  %1053 = getelementptr [11 x i8], [11 x i8]* @.str62, i32 0, i32 0
  %1054 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str62.c, i8* %1053, i64 10)
  %1055 = alloca %nyx_string*
  store %nyx_string* %1054, %nyx_string** %1055
  %1056 = getelementptr [38 x i8], [38 x i8]* @.str63, i32 0, i32 0
  %1057 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str63.c, i8* %1056, i64 37)
  %1058 = alloca %nyx_string*
  store %nyx_string* %1057, %nyx_string** %1058
  %1059 = getelementptr [2 x i8], [2 x i8]* @.str64, i32 0, i32 0
  %1060 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str64.c, i8* %1059, i64 1)
  %1061 = alloca %nyx_string*
  store %nyx_string* %1060, %nyx_string** %1061
  %1062 = call i8* @llvm.stacksave()
  br label %while_cond235
while_cond235:
  %1063 = load i64, i64* %1034
  %1064 = load { i64, i8* }*, { i64, i8* }** %952
  %1065 = call i64 @nyx_array_length({ i64, i8* }* %1064)
  %1066 = icmp slt i64 %1063, %1065
  br i1 %1066, label %while_body236, label %while_end237
while_body236:
  call void @llvm.stackrestore(i8* %1062)
  %1067 = load { i64, i8* }*, { i64, i8* }** %952
  %1068 = load i64, i64* %1034
  %1069 = call i64 @nyx_array_get({ i64, i8* }* %1067, i64 %1068)
  %1070 = inttoptr i64 %1069 to { i64, i8* }*
  %1071 = alloca { i64, i8* }*
  store { i64, i8* }* %1070, { i64, i8* }** %1071
  %1072 = load { i64, i8* }*, { i64, i8* }** %1071
  %1073 = call i64 @nyx_array_get_checked({ i64, i8* }* %1072, i64 0, i64 2)
  %1074 = inttoptr i64 %1073 to %nyx_string*
  %1075 = alloca %nyx_string*
  store %nyx_string* %1074, %nyx_string** %1075
  %1076 = load %nyx_string*, %nyx_string** %1075
  %1077 = load %nyx_string*, %nyx_string** %1037
  %1078 = call i1 @nyx_string_equals(%nyx_string* %1076, %nyx_string* %1077)
  br i1 %1078, label %then238, label %else239
then238:
  %1079 = load { i64, i8* }*, { i64, i8* }** %1071
  %1080 = call i64 @nyx_array_get({ i64, i8* }* %1079, i64 1)
  %1081 = inttoptr i64 %1080 to { i64, i8* }*
  %1082 = alloca { i64, i8* }*
  store { i64, i8* }* %1081, { i64, i8* }** %1082
  %1083 = load { i64, i8* }*, { i64, i8* }** %1082
  %1084 = call i64 @nyx_array_get({ i64, i8* }* %1083, i64 3)
  %1085 = inttoptr i64 %1084 to { i64, i8* }*
  %1086 = alloca { i64, i8* }*
  store { i64, i8* }* %1085, { i64, i8* }** %1086
  %1087 = load { i64, i8* }*, { i64, i8* }** %1086
  %1088 = call i64 @nyx_array_get({ i64, i8* }* %1087, i64 1)
  %1089 = inttoptr i64 %1088 to { i64, i8* }*
  %1090 = alloca { i64, i8* }*
  store { i64, i8* }* %1089, { i64, i8* }** %1090
  %1091 = alloca i64
  store i64 0, i64* %1091
  %1092 = call i8* @llvm.stacksave()
  br label %while_cond241
while_cond241:
  %1093 = load i64, i64* %1091
  %1094 = load { i64, i8* }*, { i64, i8* }** %1090
  %1095 = call i64 @nyx_array_length({ i64, i8* }* %1094)
  %1096 = icmp slt i64 %1093, %1095
  br i1 %1096, label %while_body242, label %while_end243
while_body242:
  call void @llvm.stackrestore(i8* %1092)
  %1097 = load { i64, i8* }*, { i64, i8* }** %1090
  %1098 = load i64, i64* %1091
  %1099 = call i64 @nyx_array_get({ i64, i8* }* %1097, i64 %1098)
  %1100 = inttoptr i64 %1099 to { i64, i8* }*
  %1101 = alloca { i64, i8* }*
  store { i64, i8* }* %1100, { i64, i8* }** %1101
  %1102 = load { i64, i8* }*, { i64, i8* }** %1101
  %1103 = call i64 @nyx_array_get_checked({ i64, i8* }* %1102, i64 0, i64 2)
  %1104 = inttoptr i64 %1103 to %nyx_string*
  %1105 = alloca %nyx_string*
  store %nyx_string* %1104, %nyx_string** %1105
  %1106 = alloca i1
  store i1 true, i1* %1106
  %1107 = load %nyx_string*, %nyx_string** %1105
  %1108 = load %nyx_string*, %nyx_string** %1040
  %1109 = call i1 @nyx_string_equals(%nyx_string* %1107, %nyx_string* %1108)
  br i1 %1109, label %sc_or_end245, label %sc_or_rhs244
sc_or_rhs244:
  %1110 = load %nyx_string*, %nyx_string** %1105
  %1111 = load %nyx_string*, %nyx_string** %1043
  %1112 = call i1 @nyx_string_equals(%nyx_string* %1110, %nyx_string* %1111)
  store i1 %1112, i1* %1106
  br label %sc_or_end245
sc_or_end245:
  %1113 = load i1, i1* %1106
  br i1 %1113, label %then246, label %else247
then246:
  %1114 = load { i64, i8* }*, { i64, i8* }** %1101
  %1115 = call i64 @nyx_array_get({ i64, i8* }* %1114, i64 1)
  %1116 = inttoptr i64 %1115 to { i64, i8* }*
  %1117 = alloca { i64, i8* }*
  store { i64, i8* }* %1116, { i64, i8* }** %1117
  %1118 = load { i64, i8* }*, { i64, i8* }** %1117
  %1119 = call i64 @nyx_array_get({ i64, i8* }* %1118, i64 0)
  %1120 = inttoptr i64 %1119 to { i64, i8* }*
  %1121 = alloca { i64, i8* }*
  store { i64, i8* }* %1120, { i64, i8* }** %1121
  %1122 = load { i64, i8* }*, { i64, i8* }** %1121
  %1123 = call i64 @nyx_array_get_checked({ i64, i8* }* %1122, i64 0, i64 2)
  %1124 = inttoptr i64 %1123 to %nyx_string*
  %1125 = alloca %nyx_string*
  store %nyx_string* %1124, %nyx_string** %1125
  %1126 = load %nyx_string*, %nyx_string** %1125
  %1127 = load %nyx_string*, %nyx_string** %1046
  %1128 = call i1 @nyx_string_starts_with(%nyx_string* %1126, %nyx_string* %1127)
  %1129 = xor i1 %1128, true
  br i1 %1129, label %then249, label %else250
then249:
  %1130 = load %nyx_string*, %nyx_string** %1125
  %1131 = load %nyx_string*, %nyx_string** %source.ptr
  %1132 = call i1 @name_used_in_source(%nyx_string* %1130, %nyx_string* %1131)
  %1133 = alloca i1
  store i1 %1132, i1* %1133
  %1134 = load i1, i1* %1133
  %1135 = xor i1 %1134, true
  br i1 %1135, label %then252, label %else253
then252:
  %1136 = load { i64, i8* }*, { i64, i8* }** %1082
  %1137 = call i64 @nyx_array_get_checked({ i64, i8* }* %1136, i64 0, i64 2)
  %1138 = inttoptr i64 %1137 to %nyx_string*
  %1139 = alloca %nyx_string*
  store %nyx_string* %1138, %nyx_string** %1139
  %1140 = load %nyx_string*, %nyx_string** %1049
  %1141 = load %nyx_string*, %nyx_string** %1052
  %1142 = load %nyx_string*, %nyx_string** %1055
  %1143 = load %nyx_string*, %nyx_string** %1125
  %1144 = call %nyx_string* @nyx_string_concat(%nyx_string* %1142, %nyx_string* %1143)
  %1145 = load %nyx_string*, %nyx_string** %1058
  %1146 = call %nyx_string* @nyx_string_concat(%nyx_string* %1144, %nyx_string* %1145)
  %1147 = load %nyx_string*, %nyx_string** %1139
  %1148 = call %nyx_string* @nyx_string_concat(%nyx_string* %1146, %nyx_string* %1147)
  %1149 = load %nyx_string*, %nyx_string** %1061
  %1150 = call %nyx_string* @nyx_string_concat(%nyx_string* %1148, %nyx_string* %1149)
  %1151 = call %VetIssue @make_issue(%nyx_string* %1140, %nyx_string* %1141, %nyx_string* %1150, i64 0)
  %1152 = alloca %VetIssue
  store %VetIssue %1151, %VetIssue* %1152
  %1153 = load { i64, i8* }*, { i64, i8* }** %908
  %1154 = load %VetIssue, %VetIssue* %1152
  %1155 = getelementptr %VetIssue, %VetIssue* null, i32 1
  %1156 = ptrtoint %VetIssue* %1155 to i64
  %1157 = call i8* @GC_malloc(i64 %1156)
  %1158 = bitcast i8* %1157 to %VetIssue*
  store %VetIssue %1154, %VetIssue* %1158
  %1159 = ptrtoint %VetIssue* %1158 to i64
  call void @nyx_array_push({ i64, i8* }* %1153, i64 %1159)
  br label %merge254
else253:
  br label %merge254
merge254:
  br label %merge251
else250:
  br label %merge251
merge251:
  br label %merge248
else247:
  br label %merge248
merge248:
  %1160 = load i64, i64* %1091
  %1161 = add i64 %1160, 1
  store i64 %1161, i64* %1091
  br label %while_cond241
while_end243:
  br label %merge240
else239:
  br label %merge240
merge240:
  %1162 = load i64, i64* %1034
  %1163 = add i64 %1162, 1
  store i64 %1163, i64* %1034
  br label %while_cond235
while_end237:
  %1164 = load { i64, i8* }*, { i64, i8* }** %908
  ret { i64, i8* }* %1164
}

define i64 @main(
i32 %argc, i8** %argv) {
  call void @nyx_set_args(i32 %argc, i8** %argv)
  %1165 = getelementptr [23 x i8], [23 x i8]* @.str65, i32 0, i32 0
  %1166 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str65.c, i8* %1165, i64 22)
  %1167 = call i8* @nyx_string_to_cstr(%nyx_string* %1166)
  call void @nyx_print_string(i8* %1167)
  %1168 = getelementptr [8 x i8], [8 x i8]* @.str66, i32 0, i32 0
  %1169 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str66.c, i8* %1168, i64 7)
  %1170 = call i8* @nyx_string_to_cstr(%nyx_string* %1169)
  %1171 = call %nyx_string* @nyx_getenv(i8* %1170)
  %1172 = alloca %nyx_string*
  store %nyx_string* %1171, %nyx_string** %1172
  %1173 = load %nyx_string*, %nyx_string** %1172
  %1174 = getelementptr [1 x i8], [1 x i8]* @.str67, i32 0, i32 0
  %1175 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str67.c, i8* %1174, i64 0)
  %1176 = call i1 @nyx_string_equals(%nyx_string* %1173, %nyx_string* %1175)
  br i1 %1176, label %then255, label %else256
then255:
  %1177 = call { i64, i8* }* @nyx_get_args()
  %1178 = alloca { i64, i8* }*
  store { i64, i8* }* %1177, { i64, i8* }** %1178
  %1179 = load { i64, i8* }*, { i64, i8* }** %1178
  %1180 = call i64 @nyx_array_length({ i64, i8* }* %1179)
  %1181 = icmp sgt i64 %1180, 1
  br i1 %1181, label %then258, label %else259
then258:
  %1182 = load { i64, i8* }*, { i64, i8* }** %1178
  %1183 = call i64 @nyx_array_get_checked({ i64, i8* }* %1182, i64 1, i64 2)
  %1184 = inttoptr i64 %1183 to %nyx_string*
  %1185 = alloca %nyx_string*
  store %nyx_string* %1184, %nyx_string** %1185
  %1186 = load %nyx_string*, %nyx_string** %1185
  store %nyx_string* %1186, %nyx_string** %1172
  br label %merge260
else259:
  br label %merge260
merge260:
  br label %merge257
else256:
  br label %merge257
merge257:
  %1187 = load %nyx_string*, %nyx_string** %1172
  %1188 = getelementptr [1 x i8], [1 x i8]* @.str68, i32 0, i32 0
  %1189 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str68.c, i8* %1188, i64 0)
  %1190 = call i1 @nyx_string_equals(%nyx_string* %1187, %nyx_string* %1189)
  br i1 %1190, label %then261, label %else262
then261:
  %1191 = getelementptr [62 x i8], [62 x i8]* @.str69, i32 0, i32 0
  %1192 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str69.c, i8* %1191, i64 61)
  %1193 = call i8* @nyx_string_to_cstr(%nyx_string* %1192)
  call void @nyx_print_string(i8* %1193)
  ret i64 1
else262:
  br label %merge263
merge263:
  %1194 = load %nyx_string*, %nyx_string** %1172
  %1195 = call i8* @nyx_string_to_cstr(%nyx_string* %1194)
  %1196 = call i1 @nyx_file_exists(i8* %1195)
  %1197 = icmp eq i1 %1196, 0
  br i1 %1197, label %then264, label %else265
then264:
  %1198 = getelementptr [33 x i8], [33 x i8]* @.str70, i32 0, i32 0
  %1199 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str70.c, i8* %1198, i64 32)
  %1200 = load %nyx_string*, %nyx_string** %1172
  %1201 = call %nyx_string* @nyx_string_concat(%nyx_string* %1199, %nyx_string* %1200)
  %1202 = getelementptr [3 x i8], [3 x i8]* @.str71, i32 0, i32 0
  %1203 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str71.c, i8* %1202, i64 2)
  %1204 = call %nyx_string* @nyx_string_concat(%nyx_string* %1201, %nyx_string* %1203)
  %1205 = call i8* @nyx_string_to_cstr(%nyx_string* %1204)
  call void @nyx_print_string(i8* %1205)
  %1206 = getelementptr [62 x i8], [62 x i8]* @.str72, i32 0, i32 0
  %1207 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str72.c, i8* %1206, i64 61)
  %1208 = call i8* @nyx_string_to_cstr(%nyx_string* %1207)
  call void @nyx_print_string(i8* %1208)
  ret i64 1
else265:
  br label %merge266
merge266:
  %1209 = load %nyx_string*, %nyx_string** %1172
  %1210 = call i8* @nyx_string_to_cstr(%nyx_string* %1209)
  %1211 = call %nyx_string* @nyx_read_file(i8* %1210)
  %1212 = alloca %nyx_string*
  store %nyx_string* %1211, %nyx_string** %1212
  %1213 = getelementptr [20 x i8], [20 x i8]* @.str73, i32 0, i32 0
  %1214 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str73.c, i8* %1213, i64 19)
  %1215 = call i8* @nyx_string_to_cstr(%nyx_string* %1214)
  call void @nyx_print_string(i8* %1215)
  %1216 = load %nyx_string*, %nyx_string** %1212
  %1217 = call { i64, i8* }* @tokenize(%nyx_string* %1216)
  %1218 = alloca { i64, i8* }*
  store { i64, i8* }* %1217, { i64, i8* }** %1218
  %1219 = getelementptr [17 x i8], [17 x i8]* @.str74, i32 0, i32 0
  %1220 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str74.c, i8* %1219, i64 16)
  %1221 = call i8* @nyx_string_to_cstr(%nyx_string* %1220)
  call void @nyx_print_string(i8* %1221)
  %1222 = load { i64, i8* }*, { i64, i8* }** %1218
  %1223 = load %nyx_string*, %nyx_string** %1212
  %1224 = call { i64, i8* }* @parse({ i64, i8* }* %1222, %nyx_string* %1223)
  %1225 = alloca { i64, i8* }*
  store { i64, i8* }* %1224, { i64, i8* }** %1225
  %1226 = getelementptr [19 x i8], [19 x i8]* @.str75, i32 0, i32 0
  %1227 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str75.c, i8* %1226, i64 18)
  %1228 = call i8* @nyx_string_to_cstr(%nyx_string* %1227)
  call void @nyx_print_string(i8* %1228)
  %1229 = load %nyx_string*, %nyx_string** %1212
  %1230 = load { i64, i8* }*, { i64, i8* }** %1225
  %1231 = call { i64, i8* }* @vet_source(%nyx_string* %1229, { i64, i8* }* %1230)
  %1232 = alloca { i64, i8* }*
  store { i64, i8* }* %1231, { i64, i8* }** %1232
  %1233 = load { i64, i8* }*, { i64, i8* }** %1232
  %1234 = call { i64, i8* }* @sort_issues_by_line({ i64, i8* }* %1233)
  %1235 = alloca { i64, i8* }*
  store { i64, i8* }* %1234, { i64, i8* }** %1235
  %1236 = load { i64, i8* }*, { i64, i8* }** %1235
  %1237 = call i64 @nyx_array_length({ i64, i8* }* %1236)
  %1238 = alloca i64
  store i64 %1237, i64* %1238
  %1239 = load i64, i64* %1238
  %1240 = icmp eq i64 %1239, 0
  br i1 %1240, label %then267, label %else268
then267:
  %1241 = getelementptr [20 x i8], [20 x i8]* @.str76, i32 0, i32 0
  %1242 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str76.c, i8* %1241, i64 19)
  %1243 = call i8* @nyx_string_to_cstr(%nyx_string* %1242)
  call void @nyx_print_string(i8* %1243)
  br label %merge269
else268:
  %1244 = load i64, i64* %1238
  %1245 = call %nyx_string* @nyx_string_from_int(i64 %1244)
  %1246 = getelementptr [17 x i8], [17 x i8]* @.str77, i32 0, i32 0
  %1247 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str77.c, i8* %1246, i64 16)
  %1248 = call %nyx_string* @nyx_string_concat(%nyx_string* %1245, %nyx_string* %1247)
  %1249 = call i8* @nyx_string_to_cstr(%nyx_string* %1248)
  call void @nyx_print_string(i8* %1249)
  %1250 = alloca i64
  store i64 0, i64* %1250
  %1251 = call i8* @llvm.stacksave()
  br label %while_cond270
while_cond270:
  %1252 = load i64, i64* %1250
  %1253 = load i64, i64* %1238
  %1254 = icmp slt i64 %1252, %1253
  br i1 %1254, label %while_body271, label %while_end272
while_body271:
  call void @llvm.stackrestore(i8* %1251)
  %1255 = load { i64, i8* }*, { i64, i8* }** %1235
  %1256 = load i64, i64* %1250
  %1257 = getelementptr [9 x i8], [9 x i8]* @.slotT78, i32 0, i32 0
  %1258 = call i64 @nyx_slot_as_value_checked({ i64, i8* }* %1255, i64 %1256, i8* %1257)
  %1259 = inttoptr i64 %1258 to %VetIssue*
  %1260 = load %VetIssue, %VetIssue* %1259
  %1261 = alloca %VetIssue
  store %VetIssue %1260, %VetIssue* %1261
  %1262 = load %VetIssue, %VetIssue* %1261
  %1263 = load %nyx_string*, %nyx_string** %1172
  %1264 = call i64 @print_issue(%VetIssue %1262, %nyx_string* %1263)
  %1265 = load i64, i64* %1250
  %1266 = add i64 %1265, 1
  store i64 %1266, i64* %1250
  br label %while_cond270
while_end272:
  br label %merge269
merge269:
  %1267 = getelementptr [6 x i8], [6 x i8]* @.str79, i32 0, i32 0
  %1268 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str79.c, i8* %1267, i64 5)
  %1269 = call i8* @nyx_string_to_cstr(%nyx_string* %1268)
  call void @nyx_print_string(i8* %1269)
  ret i64 0
}


attributes #0 = { returns_twice }

