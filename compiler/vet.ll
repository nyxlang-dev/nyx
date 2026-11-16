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

declare { i64, i8* }* @tokenize(%nyx_string*)
declare { i64, i8* }* @parse({ i64, i8* }*, %nyx_string*)
declare { i64, i8* }* @gotchas_table()
declare %nyx_string* @gotcha_field({ i64, i8* }*, %nyx_string*)
declare %nyx_string* @gotcha_scan_line(%nyx_string*)

define internal %VetIssue @make_issue(
%nyx_string* %sev.param, %nyx_string* %code.param, %nyx_string* %msg.param, i64 %line.param) {
  %sev.ptr = alloca %nyx_string*
  %code.ptr = alloca %nyx_string*
  %msg.ptr = alloca %nyx_string*
  %line.ptr = alloca i64
  store %nyx_string* %sev.param, %nyx_string** %sev.ptr
  store %nyx_string* %code.param, %nyx_string** %code.ptr
  store %nyx_string* %msg.param, %nyx_string** %msg.ptr
  store i64 %line.param, i64* %line.ptr
  %t1 = getelementptr %VetIssue, %VetIssue* null, i32 1
  %t2 = ptrtoint %VetIssue* %t1 to i64
  %t3 = call i8* @GC_malloc(i64 %t2)
  %t4 = bitcast i8* %t3 to %VetIssue*
  %t5 = load %nyx_string*, %nyx_string** %sev.ptr
  %t6 = getelementptr %VetIssue, %VetIssue* %t4, i32 0, i32 0
  store %nyx_string* %t5, %nyx_string** %t6
  %t7 = load %nyx_string*, %nyx_string** %code.ptr
  %t8 = getelementptr %VetIssue, %VetIssue* %t4, i32 0, i32 1
  store %nyx_string* %t7, %nyx_string** %t8
  %t9 = load %nyx_string*, %nyx_string** %msg.ptr
  %t10 = getelementptr %VetIssue, %VetIssue* %t4, i32 0, i32 2
  store %nyx_string* %t9, %nyx_string** %t10
  %t11 = load i64, i64* %line.ptr
  %t12 = getelementptr %VetIssue, %VetIssue* %t4, i32 0, i32 3
  store i64 %t11, i64* %t12
  %t13 = load %VetIssue, %VetIssue* %t4
  ret %VetIssue %t13
}

define internal i64 @print_issue(
%VetIssue %issue.param, %nyx_string* %path.param) {
  %issue.ptr = alloca %VetIssue
  %path.ptr = alloca %nyx_string*
  %t25 = alloca %nyx_string*
  %t30 = alloca %nyx_string*
  store %VetIssue %issue.param, %VetIssue* %issue.ptr
  store %nyx_string* %path.param, %nyx_string** %path.ptr
  %t14 = getelementptr %VetIssue, %VetIssue* %issue.ptr, i32 0, i32 0
  %t15 = load %nyx_string*, %nyx_string** %t14
  %t16 = getelementptr [2 x i8], [2 x i8]* @.str0, i32 0, i32 0
  %t17 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str0.c, i8* %t16, i64 1)
  %t18 = call %nyx_string* @nyx_string_concat(%nyx_string* %t15, %nyx_string* %t17)
  %t19 = getelementptr %VetIssue, %VetIssue* %issue.ptr, i32 0, i32 1
  %t20 = load %nyx_string*, %nyx_string** %t19
  %t21 = call %nyx_string* @nyx_string_concat(%nyx_string* %t18, %nyx_string* %t20)
  %t22 = getelementptr [2 x i8], [2 x i8]* @.str1, i32 0, i32 0
  %t23 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1.c, i8* %t22, i64 1)
  %t24 = call %nyx_string* @nyx_string_concat(%nyx_string* %t21, %nyx_string* %t23)
  store %nyx_string* %t24, %nyx_string** %t25
  %t26 = load %nyx_string*, %nyx_string** %path.ptr
  %t27 = getelementptr [3 x i8], [3 x i8]* @.str2, i32 0, i32 0
  %t28 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str2.c, i8* %t27, i64 2)
  %t29 = call %nyx_string* @nyx_string_concat(%nyx_string* %t26, %nyx_string* %t28)
  store %nyx_string* %t29, %nyx_string** %t30
  %t31 = getelementptr %VetIssue, %VetIssue* %issue.ptr, i32 0, i32 3
  %t32 = load i64, i64* %t31
  %t33 = icmp sgt i64 %t32, 0
  br i1 %t33, label %then0, label %else1
then0:
  %t34 = load %nyx_string*, %nyx_string** %path.ptr
  %t35 = getelementptr [2 x i8], [2 x i8]* @.str3, i32 0, i32 0
  %t36 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str3.c, i8* %t35, i64 1)
  %t37 = call %nyx_string* @nyx_string_concat(%nyx_string* %t34, %nyx_string* %t36)
  %t38 = getelementptr %VetIssue, %VetIssue* %issue.ptr, i32 0, i32 3
  %t39 = load i64, i64* %t38
  %t40 = call %nyx_string* @nyx_string_from_int(i64 %t39)
  %t41 = call %nyx_string* @nyx_string_concat(%nyx_string* %t37, %nyx_string* %t40)
  store %nyx_string* %t41, %nyx_string** %t30
  br label %merge2
else1:
  br label %merge2
merge2:
  %t42 = load %nyx_string*, %nyx_string** %t25
  %t43 = getelementptr [2 x i8], [2 x i8]* @.str4, i32 0, i32 0
  %t44 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str4.c, i8* %t43, i64 1)
  %t45 = call %nyx_string* @nyx_string_concat(%nyx_string* %t42, %nyx_string* %t44)
  %t46 = load %nyx_string*, %nyx_string** %t30
  %t47 = call %nyx_string* @nyx_string_concat(%nyx_string* %t45, %nyx_string* %t46)
  %t48 = getelementptr [3 x i8], [3 x i8]* @.str5, i32 0, i32 0
  %t49 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str5.c, i8* %t48, i64 2)
  %t50 = call %nyx_string* @nyx_string_concat(%nyx_string* %t47, %nyx_string* %t49)
  %t51 = getelementptr %VetIssue, %VetIssue* %issue.ptr, i32 0, i32 2
  %t52 = load %nyx_string*, %nyx_string** %t51
  %t53 = call %nyx_string* @nyx_string_concat(%nyx_string* %t50, %nyx_string* %t52)
  %t54 = call i8* @nyx_string_to_cstr(%nyx_string* %t53)
  call void @nyx_print_string(i8* %t54)
  ret i64 0
}

define internal { i64, i8* }* @check_gotcha_patterns(
%nyx_string* %source.param) {
  %source.ptr = alloca %nyx_string*
  %t56 = alloca { i64, i8* }*
  %t58 = alloca { i64, i8* }*
  %t63 = alloca { i64, i8* }*
  %t66 = alloca i64
  %t67 = alloca i64
  %t70 = alloca %nyx_string*
  %t73 = alloca %nyx_string*
  %t76 = alloca %nyx_string*
  %t79 = alloca %nyx_string*
  %t82 = alloca %nyx_string*
  %t85 = alloca %nyx_string*
  %t88 = alloca %nyx_string*
  %t91 = alloca %nyx_string*
  %t100 = alloca { i64, i8* }*
  %t104 = alloca %nyx_string*
  %t112 = alloca %nyx_string*
  %t116 = alloca %nyx_string*
  %t120 = alloca %nyx_string*
  %t128 = alloca %nyx_string*
  %t129 = alloca i64
  %t137 = alloca %nyx_string*
  %t140 = alloca %nyx_string*
  %t151 = alloca %VetIssue
  store %nyx_string* %source.param, %nyx_string** %source.ptr
  %t55 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t55, { i64, i8* }** %t56
  %t57 = call { i64, i8* }* @gotchas_table()
  store { i64, i8* }* %t57, { i64, i8* }** %t58
  %t59 = load %nyx_string*, %nyx_string** %source.ptr
  %t60 = getelementptr [2 x i8], [2 x i8]* @.str6, i32 0, i32 0
  %t61 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str6.c, i8* %t60, i64 1)
  %t62 = call { i64, i8* }* @nyx_string_split(%nyx_string* %t59, %nyx_string* %t61)
  store { i64, i8* }* %t62, { i64, i8* }** %t63
  %t64 = load { i64, i8* }*, { i64, i8* }** %t63
  %t65 = call i64 @nyx_array_length({ i64, i8* }* %t64)
  store i64 %t65, i64* %t66
  store i64 0, i64* %t67
  %t68 = getelementptr [8 x i8], [8 x i8]* @.str7, i32 0, i32 0
  %t69 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str7.c, i8* %t68, i64 7)
  store %nyx_string* %t69, %nyx_string** %t70
  %t71 = getelementptr [1 x i8], [1 x i8]* @.str8, i32 0, i32 0
  %t72 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str8.c, i8* %t71, i64 0)
  store %nyx_string* %t72, %nyx_string** %t73
  %t74 = getelementptr [9 x i8], [9 x i8]* @.str9, i32 0, i32 0
  %t75 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str9.c, i8* %t74, i64 8)
  store %nyx_string* %t75, %nyx_string** %t76
  %t77 = getelementptr [9 x i8], [9 x i8]* @.str10, i32 0, i32 0
  %t78 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str10.c, i8* %t77, i64 8)
  store %nyx_string* %t78, %nyx_string** %t79
  %t80 = getelementptr [3 x i8], [3 x i8]* @.str11, i32 0, i32 0
  %t81 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str11.c, i8* %t80, i64 2)
  store %nyx_string* %t81, %nyx_string** %t82
  %t83 = getelementptr [23 x i8], [23 x i8]* @.str12, i32 0, i32 0
  %t84 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str12.c, i8* %t83, i64 22)
  store %nyx_string* %t84, %nyx_string** %t85
  %t86 = getelementptr [2 x i8], [2 x i8]* @.str13, i32 0, i32 0
  %t87 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str13.c, i8* %t86, i64 1)
  store %nyx_string* %t87, %nyx_string** %t88
  %t89 = getelementptr [8 x i8], [8 x i8]* @.str14, i32 0, i32 0
  %t90 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str14.c, i8* %t89, i64 7)
  store %nyx_string* %t90, %nyx_string** %t91
  br label %while_cond3
while_cond3:
  %t92 = load i64, i64* %t67
  %t93 = load { i64, i8* }*, { i64, i8* }** %t58
  %t94 = call i64 @nyx_array_length({ i64, i8* }* %t93)
  %t95 = icmp slt i64 %t92, %t94
  br i1 %t95, label %while_body4, label %while_end5
while_body4:
  %t96 = load { i64, i8* }*, { i64, i8* }** %t58
  %t97 = load i64, i64* %t67
  %t98 = call i64 @nyx_array_get({ i64, i8* }* %t96, i64 %t97)
  %t99 = inttoptr i64 %t98 to { i64, i8* }*
  store { i64, i8* }* %t99, { i64, i8* }** %t100
  %t101 = load { i64, i8* }*, { i64, i8* }** %t100
  %t102 = load %nyx_string*, %nyx_string** %t70
  %t103 = call %nyx_string* @gotcha_field({ i64, i8* }* %t101, %nyx_string* %t102)
  store %nyx_string* %t103, %nyx_string** %t104
  %t105 = load %nyx_string*, %nyx_string** %t104
  %t106 = load %nyx_string*, %nyx_string** %t73
  %t107 = call i1 @nyx_string_equals(%nyx_string* %t105, %nyx_string* %t106)
  %t108 = xor i1 %t107, true
  br i1 %t108, label %then6, label %else7
then6:
  %t109 = load { i64, i8* }*, { i64, i8* }** %t100
  %t110 = load %nyx_string*, %nyx_string** %t76
  %t111 = call %nyx_string* @gotcha_field({ i64, i8* }* %t109, %nyx_string* %t110)
  store %nyx_string* %t111, %nyx_string** %t112
  %t113 = load { i64, i8* }*, { i64, i8* }** %t100
  %t114 = load %nyx_string*, %nyx_string** %t79
  %t115 = call %nyx_string* @gotcha_field({ i64, i8* }* %t113, %nyx_string* %t114)
  store %nyx_string* %t115, %nyx_string** %t116
  %t117 = load { i64, i8* }*, { i64, i8* }** %t100
  %t118 = load %nyx_string*, %nyx_string** %t82
  %t119 = call %nyx_string* @gotcha_field({ i64, i8* }* %t117, %nyx_string* %t118)
  store %nyx_string* %t119, %nyx_string** %t120
  %t121 = load %nyx_string*, %nyx_string** %t116
  %t122 = load %nyx_string*, %nyx_string** %t85
  %t123 = call %nyx_string* @nyx_string_concat(%nyx_string* %t121, %nyx_string* %t122)
  %t124 = load %nyx_string*, %nyx_string** %t120
  %t125 = call %nyx_string* @nyx_string_concat(%nyx_string* %t123, %nyx_string* %t124)
  %t126 = load %nyx_string*, %nyx_string** %t88
  %t127 = call %nyx_string* @nyx_string_concat(%nyx_string* %t125, %nyx_string* %t126)
  store %nyx_string* %t127, %nyx_string** %t128
  store i64 0, i64* %t129
  br label %while_cond9
while_cond9:
  %t130 = load i64, i64* %t129
  %t131 = load i64, i64* %t66
  %t132 = icmp slt i64 %t130, %t131
  br i1 %t132, label %while_body10, label %while_end11
while_body10:
  %t133 = load { i64, i8* }*, { i64, i8* }** %t63
  %t134 = load i64, i64* %t129
  %t135 = call i64 @nyx_array_get_checked({ i64, i8* }* %t133, i64 %t134, i64 2)
  %t136 = inttoptr i64 %t135 to %nyx_string*
  store %nyx_string* %t136, %nyx_string** %t137
  %t138 = load %nyx_string*, %nyx_string** %t137
  %t139 = call %nyx_string* @gotcha_scan_line(%nyx_string* %t138)
  store %nyx_string* %t139, %nyx_string** %t140
  %t141 = load %nyx_string*, %nyx_string** %t140
  %t142 = load %nyx_string*, %nyx_string** %t104
  %t143 = call i64 @nyx_regex_is_match(%nyx_string* %t141, %nyx_string* %t142)
  %t144 = icmp ne i64 %t143, 0
  br i1 %t144, label %then12, label %else13
then12:
  %t145 = load %nyx_string*, %nyx_string** %t91
  %t146 = load %nyx_string*, %nyx_string** %t112
  %t147 = load %nyx_string*, %nyx_string** %t128
  %t148 = load i64, i64* %t129
  %t149 = add i64 %t148, 1
  %t150 = call %VetIssue @make_issue(%nyx_string* %t145, %nyx_string* %t146, %nyx_string* %t147, i64 %t149)
  store %VetIssue %t150, %VetIssue* %t151
  %t152 = load { i64, i8* }*, { i64, i8* }** %t56
  %t153 = load %VetIssue, %VetIssue* %t151
  %t154 = getelementptr %VetIssue, %VetIssue* null, i32 1
  %t155 = ptrtoint %VetIssue* %t154 to i64
  %t156 = call i8* @GC_malloc(i64 %t155)
  %t157 = bitcast i8* %t156 to %VetIssue*
  store %VetIssue %t153, %VetIssue* %t157
  %t158 = ptrtoint %VetIssue* %t157 to i64
  call void @nyx_array_push({ i64, i8* }* %t152, i64 %t158)
  br label %merge14
else13:
  br label %merge14
merge14:
  %t159 = load i64, i64* %t129
  %t160 = add i64 %t159, 1
  store i64 %t160, i64* %t129
  br label %while_cond9
while_end11:
  br label %merge8
else7:
  br label %merge8
merge8:
  %t161 = load i64, i64* %t67
  %t162 = add i64 %t161, 1
  store i64 %t162, i64* %t67
  br label %while_cond3
while_end5:
  %t163 = load { i64, i8* }*, { i64, i8* }** %t56
  ret { i64, i8* }* %t163
}

define internal { i64, i8* }* @sort_issues_by_line(
{ i64, i8* }* %issues.param) {
  %issues.ptr = alloca { i64, i8* }*
  %t165 = alloca { i64, i8* }*
  %t168 = alloca i64
  %t170 = alloca { i64, i8* }*
  %t171 = alloca i64
  %t178 = alloca i64
  %t183 = alloca i64
  %t184 = alloca i64
  %t185 = alloca i64
  %t192 = alloca i64
  %t201 = alloca %VetIssue
  %t204 = alloca i64
  %t207 = alloca i1
  %t224 = alloca %VetIssue
  store { i64, i8* }* %issues.param, { i64, i8* }** %issues.ptr
  %t164 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t164, { i64, i8* }** %t165
  %t166 = load { i64, i8* }*, { i64, i8* }** %issues.ptr
  %t167 = call i64 @nyx_array_length({ i64, i8* }* %t166)
  store i64 %t167, i64* %t168
  %t169 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t169, { i64, i8* }** %t170
  store i64 0, i64* %t171
  br label %while_cond15
while_cond15:
  %t172 = load i64, i64* %t171
  %t173 = load i64, i64* %t168
  %t174 = icmp slt i64 %t172, %t173
  br i1 %t174, label %while_body16, label %while_end17
while_body16:
  %t175 = load { i64, i8* }*, { i64, i8* }** %t170
  call void @nyx_array_push_tagged({ i64, i8* }* %t175, i64 0, i64 1)
  %t176 = load i64, i64* %t171
  %t177 = add i64 %t176, 1
  store i64 %t177, i64* %t171
  br label %while_cond15
while_end17:
  store i64 0, i64* %t178
  br label %while_cond18
while_cond18:
  %t179 = load i64, i64* %t178
  %t180 = load i64, i64* %t168
  %t181 = icmp slt i64 %t179, %t180
  br i1 %t181, label %while_body19, label %while_end20
while_body19:
  %t182 = sub i64 0, 1
  store i64 %t182, i64* %t183
  store i64 0, i64* %t184
  store i64 0, i64* %t185
  br label %while_cond21
while_cond21:
  %t186 = load i64, i64* %t185
  %t187 = load i64, i64* %t168
  %t188 = icmp slt i64 %t186, %t187
  br i1 %t188, label %while_body22, label %while_end23
while_body22:
  %t189 = load { i64, i8* }*, { i64, i8* }** %t170
  %t190 = load i64, i64* %t185
  %t191 = call i64 @nyx_slot_as_int_checked({ i64, i8* }* %t189, i64 %t190)
  store i64 %t191, i64* %t192
  %t193 = load i64, i64* %t192
  %t194 = icmp eq i64 %t193, 0
  br i1 %t194, label %then24, label %else25
then24:
  %t195 = load { i64, i8* }*, { i64, i8* }** %issues.ptr
  %t196 = load i64, i64* %t185
  %t197 = getelementptr [9 x i8], [9 x i8]* @.slotT15, i32 0, i32 0
  %t198 = call i64 @nyx_slot_as_value_checked({ i64, i8* }* %t195, i64 %t196, i8* %t197)
  %t199 = inttoptr i64 %t198 to %VetIssue*
  %t200 = load %VetIssue, %VetIssue* %t199
  store %VetIssue %t200, %VetIssue* %t201
  %t202 = getelementptr %VetIssue, %VetIssue* %t201, i32 0, i32 3
  %t203 = load i64, i64* %t202
  store i64 %t203, i64* %t204
  %t205 = load i64, i64* %t204
  %t206 = icmp eq i64 %t205, 0
  br i1 %t206, label %then27, label %else28
then27:
  store i64 9223372036854775807, i64* %t204
  br label %merge29
else28:
  br label %merge29
merge29:
  store i1 true, i1* %t207
  %t208 = load i64, i64* %t183
  %t209 = icmp slt i64 %t208, 0
  br i1 %t209, label %sc_or_end31, label %sc_or_rhs30
sc_or_rhs30:
  %t210 = load i64, i64* %t204
  %t211 = load i64, i64* %t184
  %t212 = icmp slt i64 %t210, %t211
  store i1 %t212, i1* %t207
  br label %sc_or_end31
sc_or_end31:
  %t213 = load i1, i1* %t207
  br i1 %t213, label %then32, label %else33
then32:
  %t214 = load i64, i64* %t185
  store i64 %t214, i64* %t183
  %t215 = load i64, i64* %t204
  store i64 %t215, i64* %t184
  br label %merge34
else33:
  br label %merge34
merge34:
  br label %merge26
else25:
  br label %merge26
merge26:
  %t216 = load i64, i64* %t185
  %t217 = add i64 %t216, 1
  store i64 %t217, i64* %t185
  br label %while_cond21
while_end23:
  %t218 = load { i64, i8* }*, { i64, i8* }** %issues.ptr
  %t219 = load i64, i64* %t183
  %t220 = getelementptr [9 x i8], [9 x i8]* @.slotT16, i32 0, i32 0
  %t221 = call i64 @nyx_slot_as_value_checked({ i64, i8* }* %t218, i64 %t219, i8* %t220)
  %t222 = inttoptr i64 %t221 to %VetIssue*
  %t223 = load %VetIssue, %VetIssue* %t222
  store %VetIssue %t223, %VetIssue* %t224
  %t225 = load { i64, i8* }*, { i64, i8* }** %t165
  %t226 = load %VetIssue, %VetIssue* %t224
  %t227 = getelementptr %VetIssue, %VetIssue* null, i32 1
  %t228 = ptrtoint %VetIssue* %t227 to i64
  %t229 = call i8* @GC_malloc(i64 %t228)
  %t230 = bitcast i8* %t229 to %VetIssue*
  store %VetIssue %t226, %VetIssue* %t230
  %t231 = ptrtoint %VetIssue* %t230 to i64
  call void @nyx_array_push({ i64, i8* }* %t225, i64 %t231)
  %t232 = load { i64, i8* }*, { i64, i8* }** %t170
  %t233 = load i64, i64* %t183
  call void @nyx_array_set_tagged({ i64, i8* }* %t232, i64 %t233, i64 1, i64 1)
  %t234 = load i64, i64* %t178
  %t235 = add i64 %t234, 1
  store i64 %t235, i64* %t178
  br label %while_cond18
while_end20:
  %t236 = load { i64, i8* }*, { i64, i8* }** %t165
  ret { i64, i8* }* %t236
}

define internal { i64, i8* }* @collect_declared_vars(
{ i64, i8* }* %stmts.param) {
  %stmts.ptr = alloca { i64, i8* }*
  %t238 = alloca { i64, i8* }*
  %t239 = alloca i64
  %t242 = alloca %nyx_string*
  %t245 = alloca %nyx_string*
  %t254 = alloca { i64, i8* }*
  %t258 = alloca %nyx_string*
  %t259 = alloca i1
  %t270 = alloca { i64, i8* }*
  %t274 = alloca { i64, i8* }*
  %t278 = alloca %nyx_string*
  store { i64, i8* }* %stmts.param, { i64, i8* }** %stmts.ptr
  %t237 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t237, { i64, i8* }** %t238
  store i64 0, i64* %t239
  %t240 = getelementptr [9 x i8], [9 x i8]* @.str17, i32 0, i32 0
  %t241 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str17.c, i8* %t240, i64 8)
  store %nyx_string* %t241, %nyx_string** %t242
  %t243 = getelementptr [9 x i8], [9 x i8]* @.str18, i32 0, i32 0
  %t244 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str18.c, i8* %t243, i64 8)
  store %nyx_string* %t244, %nyx_string** %t245
  br label %while_cond35
while_cond35:
  %t246 = load i64, i64* %t239
  %t247 = load { i64, i8* }*, { i64, i8* }** %stmts.ptr
  %t248 = call i64 @nyx_array_length({ i64, i8* }* %t247)
  %t249 = icmp slt i64 %t246, %t248
  br i1 %t249, label %while_body36, label %while_end37
while_body36:
  %t250 = load { i64, i8* }*, { i64, i8* }** %stmts.ptr
  %t251 = load i64, i64* %t239
  %t252 = call i64 @nyx_array_get({ i64, i8* }* %t250, i64 %t251)
  %t253 = inttoptr i64 %t252 to { i64, i8* }*
  store { i64, i8* }* %t253, { i64, i8* }** %t254
  %t255 = load { i64, i8* }*, { i64, i8* }** %t254
  %t256 = call i64 @nyx_array_get_checked({ i64, i8* }* %t255, i64 0, i64 2)
  %t257 = inttoptr i64 %t256 to %nyx_string*
  store %nyx_string* %t257, %nyx_string** %t258
  store i1 true, i1* %t259
  %t260 = load %nyx_string*, %nyx_string** %t258
  %t261 = load %nyx_string*, %nyx_string** %t242
  %t262 = call i1 @nyx_string_equals(%nyx_string* %t260, %nyx_string* %t261)
  br i1 %t262, label %sc_or_end39, label %sc_or_rhs38
sc_or_rhs38:
  %t263 = load %nyx_string*, %nyx_string** %t258
  %t264 = load %nyx_string*, %nyx_string** %t245
  %t265 = call i1 @nyx_string_equals(%nyx_string* %t263, %nyx_string* %t264)
  store i1 %t265, i1* %t259
  br label %sc_or_end39
sc_or_end39:
  %t266 = load i1, i1* %t259
  br i1 %t266, label %then40, label %else41
then40:
  %t267 = load { i64, i8* }*, { i64, i8* }** %t254
  %t268 = call i64 @nyx_array_get({ i64, i8* }* %t267, i64 1)
  %t269 = inttoptr i64 %t268 to { i64, i8* }*
  store { i64, i8* }* %t269, { i64, i8* }** %t270
  %t271 = load { i64, i8* }*, { i64, i8* }** %t270
  %t272 = call i64 @nyx_array_get({ i64, i8* }* %t271, i64 0)
  %t273 = inttoptr i64 %t272 to { i64, i8* }*
  store { i64, i8* }* %t273, { i64, i8* }** %t274
  %t275 = load { i64, i8* }*, { i64, i8* }** %t274
  %t276 = call i64 @nyx_array_get_checked({ i64, i8* }* %t275, i64 0, i64 2)
  %t277 = inttoptr i64 %t276 to %nyx_string*
  store %nyx_string* %t277, %nyx_string** %t278
  %t279 = load { i64, i8* }*, { i64, i8* }** %t238
  %t280 = load %nyx_string*, %nyx_string** %t278
  %t281 = ptrtoint %nyx_string* %t280 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t279, i64 %t281, i64 2)
  br label %merge42
else41:
  br label %merge42
merge42:
  %t282 = load i64, i64* %t239
  %t283 = add i64 %t282, 1
  store i64 %t283, i64* %t239
  br label %while_cond35
while_end37:
  %t284 = load { i64, i8* }*, { i64, i8* }** %t238
  ret { i64, i8* }* %t284
}

define internal i1 @name_used_in_source(
%nyx_string* %name.param, %nyx_string* %source.param) {
  %name.ptr = alloca %nyx_string*
  %source.ptr = alloca %nyx_string*
  %t288 = alloca { i64, i8* }*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  store %nyx_string* %source.param, %nyx_string** %source.ptr
  %t285 = load %nyx_string*, %nyx_string** %source.ptr
  %t286 = load %nyx_string*, %nyx_string** %name.ptr
  %t287 = call { i64, i8* }* @nyx_string_split(%nyx_string* %t285, %nyx_string* %t286)
  store { i64, i8* }* %t287, { i64, i8* }** %t288
  %t289 = load { i64, i8* }*, { i64, i8* }** %t288
  %t290 = call i64 @nyx_array_length({ i64, i8* }* %t289)
  %t291 = icmp sge i64 %t290, 3
  ret i1 %t291
}

define internal i1 @is_ident_byte(
i64 %c.param) {
  %c.ptr = alloca i64
  %t292 = alloca i1
  %t298 = alloca i1
  %t304 = alloca i1
  store i64 %c.param, i64* %c.ptr
  store i1 false, i1* %t292
  %t293 = load i64, i64* %c.ptr
  %t294 = icmp sge i64 %t293, 97
  br i1 %t294, label %sc_and_rhs43, label %sc_and_end44
sc_and_rhs43:
  %t295 = load i64, i64* %c.ptr
  %t296 = icmp sle i64 %t295, 122
  store i1 %t296, i1* %t292
  br label %sc_and_end44
sc_and_end44:
  %t297 = load i1, i1* %t292
  br i1 %t297, label %then45, label %else46
then45:
  ret i1 1
else46:
  br label %merge47
merge47:
  store i1 false, i1* %t298
  %t299 = load i64, i64* %c.ptr
  %t300 = icmp sge i64 %t299, 65
  br i1 %t300, label %sc_and_rhs48, label %sc_and_end49
sc_and_rhs48:
  %t301 = load i64, i64* %c.ptr
  %t302 = icmp sle i64 %t301, 90
  store i1 %t302, i1* %t298
  br label %sc_and_end49
sc_and_end49:
  %t303 = load i1, i1* %t298
  br i1 %t303, label %then50, label %else51
then50:
  ret i1 1
else51:
  br label %merge52
merge52:
  store i1 false, i1* %t304
  %t305 = load i64, i64* %c.ptr
  %t306 = icmp sge i64 %t305, 48
  br i1 %t306, label %sc_and_rhs53, label %sc_and_end54
sc_and_rhs53:
  %t307 = load i64, i64* %c.ptr
  %t308 = icmp sle i64 %t307, 57
  store i1 %t308, i1* %t304
  br label %sc_and_end54
sc_and_end54:
  %t309 = load i1, i1* %t304
  br i1 %t309, label %then55, label %else56
then55:
  ret i1 1
else56:
  br label %merge57
merge57:
  %t310 = load i64, i64* %c.ptr
  %t311 = icmp eq i64 %t310, 95
  br i1 %t311, label %then58, label %else59
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
  %t312 = alloca i64
  %t315 = alloca i64
  %t323 = alloca i64
  %t324 = alloca i1
  %t340 = alloca i64
  %t341 = alloca i1
  store %nyx_string* %s.param, %nyx_string** %s.ptr
  store i64 0, i64* %t312
  %t313 = load %nyx_string*, %nyx_string** %s.ptr
  %t314 = call i64 @nyx_string_byte_length(%nyx_string* %t313)
  store i64 %t314, i64* %t315
  br label %while_cond61
while_cond61:
  %t316 = load i64, i64* %t312
  %t317 = load i64, i64* %t315
  %t318 = icmp slt i64 %t316, %t317
  br i1 %t318, label %while_body62, label %while_end63
while_body62:
  %t319 = load %nyx_string*, %nyx_string** %s.ptr
  %t320 = load i64, i64* %t312
  %t321 = call i8 @nyx_string_char_at(%nyx_string* %t319, i64 %t320)
  %t322 = zext i8 %t321 to i64
  store i64 %t322, i64* %t323
  store i1 true, i1* %t324
  %t325 = load i64, i64* %t323
  %t326 = icmp eq i64 %t325, 32
  br i1 %t326, label %sc_or_end65, label %sc_or_rhs64
sc_or_rhs64:
  %t327 = load i64, i64* %t323
  %t328 = icmp eq i64 %t327, 9
  store i1 %t328, i1* %t324
  br label %sc_or_end65
sc_or_end65:
  %t329 = load i1, i1* %t324
  br i1 %t329, label %then66, label %else67
then66:
  %t330 = load i64, i64* %t312
  %t331 = add i64 %t330, 1
  store i64 %t331, i64* %t312
  br label %merge68
else67:
  br label %while_end63
merge68:
  br label %while_cond61
while_end63:
  br label %while_cond69
while_cond69:
  %t332 = load i64, i64* %t315
  %t333 = load i64, i64* %t312
  %t334 = icmp sgt i64 %t332, %t333
  br i1 %t334, label %while_body70, label %while_end71
while_body70:
  %t335 = load %nyx_string*, %nyx_string** %s.ptr
  %t336 = load i64, i64* %t315
  %t337 = sub i64 %t336, 1
  %t338 = call i8 @nyx_string_char_at(%nyx_string* %t335, i64 %t337)
  %t339 = zext i8 %t338 to i64
  store i64 %t339, i64* %t340
  store i1 true, i1* %t341
  %t342 = load i64, i64* %t340
  %t343 = icmp eq i64 %t342, 32
  br i1 %t343, label %sc_or_end73, label %sc_or_rhs72
sc_or_rhs72:
  %t344 = load i64, i64* %t340
  %t345 = icmp eq i64 %t344, 9
  store i1 %t345, i1* %t341
  br label %sc_or_end73
sc_or_end73:
  %t346 = load i1, i1* %t341
  br i1 %t346, label %then74, label %else75
then74:
  %t347 = load i64, i64* %t315
  %t348 = sub i64 %t347, 1
  store i64 %t348, i64* %t315
  br label %merge76
else75:
  br label %while_end71
merge76:
  br label %while_cond69
while_end71:
  %t349 = load %nyx_string*, %nyx_string** %s.ptr
  %t350 = load i64, i64* %t312
  %t351 = load i64, i64* %t315
  %t352 = call %nyx_string* @nyx_string_substring(%nyx_string* %t349, i64 %t350, i64 %t351)
  ret %nyx_string* %t352
}

define internal i64 @line_uses_call_result(
{ i64, i8* }* %lines.param, i64 %ini.param, i64 %to.param, %nyx_string* %name.param) {
  %lines.ptr = alloca { i64, i8* }*
  %ini.ptr = alloca i64
  %to.ptr = alloca i64
  %name.ptr = alloca %nyx_string*
  %t357 = alloca %nyx_string*
  %t360 = alloca i64
  %t362 = alloca i64
  %t365 = alloca %nyx_string*
  %t373 = alloca %nyx_string*
  %t376 = alloca %nyx_string*
  %t379 = alloca i64
  %t380 = alloca i64
  %t394 = alloca i1
  %t408 = alloca %nyx_string*
  %t419 = alloca i64
  %t420 = alloca i1
  %t421 = alloca i1
  store { i64, i8* }* %lines.param, { i64, i8* }** %lines.ptr
  store i64 %ini.param, i64* %ini.ptr
  store i64 %to.param, i64* %to.ptr
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %t353 = load %nyx_string*, %nyx_string** %name.ptr
  %t354 = getelementptr [2 x i8], [2 x i8]* @.str19, i32 0, i32 0
  %t355 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str19.c, i8* %t354, i64 1)
  %t356 = call %nyx_string* @nyx_string_concat(%nyx_string* %t353, %nyx_string* %t355)
  store %nyx_string* %t356, %nyx_string** %t357
  %t358 = load %nyx_string*, %nyx_string** %t357
  %t359 = call i64 @nyx_string_byte_length(%nyx_string* %t358)
  store i64 %t359, i64* %t360
  %t361 = load i64, i64* %ini.ptr
  store i64 %t361, i64* %t362
  %t363 = getelementptr [1 x i8], [1 x i8]* @.str20, i32 0, i32 0
  %t364 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str20.c, i8* %t363, i64 0)
  store %nyx_string* %t364, %nyx_string** %t365
  br label %while_cond77
while_cond77:
  %t366 = load i64, i64* %t362
  %t367 = load i64, i64* %to.ptr
  %t368 = icmp slt i64 %t366, %t367
  br i1 %t368, label %while_body78, label %while_end79
while_body78:
  %t369 = load { i64, i8* }*, { i64, i8* }** %lines.ptr
  %t370 = load i64, i64* %t362
  %t371 = call i64 @nyx_array_get_checked({ i64, i8* }* %t369, i64 %t370, i64 2)
  %t372 = inttoptr i64 %t371 to %nyx_string*
  store %nyx_string* %t372, %nyx_string** %t373
  %t374 = load %nyx_string*, %nyx_string** %t373
  %t375 = call %nyx_string* @gotcha_scan_line(%nyx_string* %t374)
  store %nyx_string* %t375, %nyx_string** %t376
  %t377 = load %nyx_string*, %nyx_string** %t376
  %t378 = call i64 @nyx_string_byte_length(%nyx_string* %t377)
  store i64 %t378, i64* %t379
  store i64 0, i64* %t380
  br label %while_cond80
while_cond80:
  %t381 = load i64, i64* %t380
  %t382 = load i64, i64* %t360
  %t383 = add i64 %t381, %t382
  %t384 = load i64, i64* %t379
  %t385 = icmp sle i64 %t383, %t384
  br i1 %t385, label %while_body81, label %while_end82
while_body81:
  %t386 = load %nyx_string*, %nyx_string** %t376
  %t387 = load i64, i64* %t380
  %t388 = load i64, i64* %t380
  %t389 = load i64, i64* %t360
  %t390 = add i64 %t388, %t389
  %t391 = call %nyx_string* @nyx_string_substring(%nyx_string* %t386, i64 %t387, i64 %t390)
  %t392 = load %nyx_string*, %nyx_string** %t357
  %t393 = call i1 @nyx_string_equals(%nyx_string* %t391, %nyx_string* %t392)
  br i1 %t393, label %then83, label %else84
then83:
  store i1 1, i1* %t394
  %t395 = load i64, i64* %t380
  %t396 = icmp sgt i64 %t395, 0
  br i1 %t396, label %then86, label %else87
then86:
  %t397 = load %nyx_string*, %nyx_string** %t376
  %t398 = load i64, i64* %t380
  %t399 = sub i64 %t398, 1
  %t400 = call i8 @nyx_string_char_at(%nyx_string* %t397, i64 %t399)
  %t401 = zext i8 %t400 to i64
  %t402 = call i1 @is_ident_byte(i64 %t401)
  br i1 %t402, label %then89, label %else90
then89:
  store i1 0, i1* %t394
  br label %merge91
else90:
  br label %merge91
merge91:
  br label %merge88
else87:
  br label %merge88
merge88:
  %t403 = load i1, i1* %t394
  br i1 %t403, label %then92, label %else93
then92:
  %t404 = load %nyx_string*, %nyx_string** %t376
  %t405 = load i64, i64* %t380
  %t406 = call %nyx_string* @nyx_string_substring(%nyx_string* %t404, i64 0, i64 %t405)
  %t407 = call %nyx_string* @trim_spaces(%nyx_string* %t406)
  store %nyx_string* %t407, %nyx_string** %t408
  %t409 = load %nyx_string*, %nyx_string** %t408
  %t410 = load %nyx_string*, %nyx_string** %t365
  %t411 = call i1 @nyx_string_equals(%nyx_string* %t409, %nyx_string* %t410)
  %t412 = xor i1 %t411, true
  br i1 %t412, label %then95, label %else96
then95:
  %t413 = load %nyx_string*, %nyx_string** %t408
  %t414 = load %nyx_string*, %nyx_string** %t408
  %t415 = call i64 @nyx_string_byte_length(%nyx_string* %t414)
  %t416 = sub i64 %t415, 1
  %t417 = call i8 @nyx_string_char_at(%nyx_string* %t413, i64 %t416)
  %t418 = zext i8 %t417 to i64
  store i64 %t418, i64* %t419
  store i1 false, i1* %t420
  store i1 false, i1* %t421
  %t422 = load i64, i64* %t419
  %t423 = icmp ne i64 %t422, 123
  br i1 %t423, label %sc_and_rhs98, label %sc_and_end99
sc_and_rhs98:
  %t424 = load i64, i64* %t419
  %t425 = icmp ne i64 %t424, 59
  store i1 %t425, i1* %t421
  br label %sc_and_end99
sc_and_end99:
  %t426 = load i1, i1* %t421
  br i1 %t426, label %sc_and_rhs100, label %sc_and_end101
sc_and_rhs100:
  %t427 = load i64, i64* %t419
  %t428 = icmp ne i64 %t427, 125
  store i1 %t428, i1* %t420
  br label %sc_and_end101
sc_and_end101:
  %t429 = load i1, i1* %t420
  br i1 %t429, label %then102, label %else103
then102:
  %t430 = load i64, i64* %t362
  %t431 = add i64 %t430, 1
  ret i64 %t431
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
  %t432 = load i64, i64* %t380
  %t433 = add i64 %t432, 1
  store i64 %t433, i64* %t380
  br label %while_cond80
while_end82:
  %t434 = load i64, i64* %t362
  %t435 = add i64 %t434, 1
  store i64 %t435, i64* %t362
  br label %while_cond77
while_end79:
  ret i64 0
}

define internal i64 @fn_decl_line(
{ i64, i8* }* %fn_data.param) {
  %fn_data.ptr = alloca { i64, i8* }*
  %t442 = alloca { i64, i8* }*
  %t449 = alloca %nyx_string*
  %t462 = alloca { i64, i8* }*
  %t469 = alloca %nyx_string*
  store { i64, i8* }* %fn_data.param, { i64, i8* }** %fn_data.ptr
  %t436 = load { i64, i8* }*, { i64, i8* }** %fn_data.ptr
  %t437 = call i64 @nyx_array_length({ i64, i8* }* %t436)
  %t438 = icmp sge i64 %t437, 9
  br i1 %t438, label %then105, label %else106
then105:
  %t439 = load { i64, i8* }*, { i64, i8* }** %fn_data.ptr
  %t440 = call i64 @nyx_array_get({ i64, i8* }* %t439, i64 8)
  %t441 = inttoptr i64 %t440 to { i64, i8* }*
  store { i64, i8* }* %t441, { i64, i8* }** %t442
  %t443 = load { i64, i8* }*, { i64, i8* }** %t442
  %t444 = call i64 @nyx_array_length({ i64, i8* }* %t443)
  %t445 = icmp sge i64 %t444, 2
  br i1 %t445, label %then108, label %else109
then108:
  %t446 = load { i64, i8* }*, { i64, i8* }** %t442
  %t447 = call i64 @nyx_array_get_checked({ i64, i8* }* %t446, i64 0, i64 2)
  %t448 = inttoptr i64 %t447 to %nyx_string*
  store %nyx_string* %t448, %nyx_string** %t449
  %t450 = load %nyx_string*, %nyx_string** %t449
  %t451 = getelementptr [13 x i8], [13 x i8]* @.str21, i32 0, i32 0
  %t452 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str21.c, i8* %t451, i64 12)
  %t453 = call i1 @nyx_string_equals(%nyx_string* %t450, %nyx_string* %t452)
  br i1 %t453, label %then111, label %else112
then111:
  %t454 = load { i64, i8* }*, { i64, i8* }** %t442
  %t455 = call i64 @nyx_array_get({ i64, i8* }* %t454, i64 1)
  ret i64 %t455
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
  %t456 = load { i64, i8* }*, { i64, i8* }** %fn_data.ptr
  %t457 = call i64 @nyx_array_length({ i64, i8* }* %t456)
  %t458 = icmp eq i64 %t457, 7
  br i1 %t458, label %then114, label %else115
then114:
  %t459 = load { i64, i8* }*, { i64, i8* }** %fn_data.ptr
  %t460 = call i64 @nyx_array_get({ i64, i8* }* %t459, i64 6)
  %t461 = inttoptr i64 %t460 to { i64, i8* }*
  store { i64, i8* }* %t461, { i64, i8* }** %t462
  %t463 = load { i64, i8* }*, { i64, i8* }** %t462
  %t464 = call i64 @nyx_array_length({ i64, i8* }* %t463)
  %t465 = icmp sge i64 %t464, 2
  br i1 %t465, label %then117, label %else118
then117:
  %t466 = load { i64, i8* }*, { i64, i8* }** %t462
  %t467 = call i64 @nyx_array_get_checked({ i64, i8* }* %t466, i64 0, i64 2)
  %t468 = inttoptr i64 %t467 to %nyx_string*
  store %nyx_string* %t468, %nyx_string** %t469
  %t470 = load %nyx_string*, %nyx_string** %t469
  %t471 = getelementptr [13 x i8], [13 x i8]* @.str22, i32 0, i32 0
  %t472 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str22.c, i8* %t471, i64 12)
  %t473 = call i1 @nyx_string_equals(%nyx_string* %t470, %nyx_string* %t472)
  br i1 %t473, label %then120, label %else121
then120:
  %t474 = load { i64, i8* }*, { i64, i8* }** %t462
  %t475 = call i64 @nyx_array_get({ i64, i8* }* %t474, i64 1)
  ret i64 %t475
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
  %source.ptr = alloca %nyx_string*
  %t477 = alloca { i64, i8* }*
  %t482 = alloca { i64, i8* }*
  %t485 = alloca i64
  %t486 = alloca i64
  %t489 = alloca %nyx_string*
  %t492 = alloca %nyx_string*
  %t495 = alloca %nyx_string*
  %t498 = alloca %nyx_string*
  %t501 = alloca %nyx_string*
  %t504 = alloca %nyx_string*
  %t507 = alloca %nyx_string*
  %t510 = alloca %nyx_string*
  %t513 = alloca %nyx_string*
  %t516 = alloca %nyx_string*
  %t519 = alloca %nyx_string*
  %t522 = alloca %nyx_string*
  %t531 = alloca { i64, i8* }*
  %t535 = alloca %nyx_string*
  %t542 = alloca { i64, i8* }*
  %t549 = alloca { i64, i8* }*
  %t560 = alloca { i64, i8* }*
  %t564 = alloca %nyx_string*
  %t568 = alloca { i64, i8* }*
  %t571 = alloca i64
  %t573 = alloca i64
  %t577 = alloca i64
  %t585 = alloca %nyx_string*
  %t607 = alloca i64
  %t616 = alloca { i64, i8* }*
  %t623 = alloca %nyx_string*
  %t627 = alloca %nyx_string*
  %t631 = alloca i64
  %t641 = alloca i64
  %t662 = alloca %VetIssue
  store { i64, i8* }* %stmts.param, { i64, i8* }** %stmts.ptr
  store %nyx_string* %source.param, %nyx_string** %source.ptr
  %t476 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t476, { i64, i8* }** %t477
  %t478 = load %nyx_string*, %nyx_string** %source.ptr
  %t479 = getelementptr [2 x i8], [2 x i8]* @.str23, i32 0, i32 0
  %t480 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str23.c, i8* %t479, i64 1)
  %t481 = call { i64, i8* }* @nyx_string_split(%nyx_string* %t478, %nyx_string* %t480)
  store { i64, i8* }* %t481, { i64, i8* }** %t482
  %t483 = load { i64, i8* }*, { i64, i8* }** %t482
  %t484 = call i64 @nyx_array_length({ i64, i8* }* %t483)
  store i64 %t484, i64* %t485
  store i64 0, i64* %t486
  %t487 = getelementptr [7 x i8], [7 x i8]* @.str24, i32 0, i32 0
  %t488 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str24.c, i8* %t487, i64 6)
  store %nyx_string* %t488, %nyx_string** %t489
  %t490 = getelementptr [9 x i8], [9 x i8]* @.str25, i32 0, i32 0
  %t491 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str25.c, i8* %t490, i64 8)
  store %nyx_string* %t491, %nyx_string** %t492
  %t493 = getelementptr [4 x i8], [4 x i8]* @.str26, i32 0, i32 0
  %t494 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str26.c, i8* %t493, i64 3)
  store %nyx_string* %t494, %nyx_string** %t495
  %t496 = getelementptr [8 x i8], [8 x i8]* @.str27, i32 0, i32 0
  %t497 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str27.c, i8* %t496, i64 7)
  store %nyx_string* %t497, %nyx_string** %t498
  %t499 = getelementptr [3 x i8], [3 x i8]* @.str28, i32 0, i32 0
  %t500 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str28.c, i8* %t499, i64 2)
  store %nyx_string* %t500, %nyx_string** %t501
  %t502 = getelementptr [8 x i8], [8 x i8]* @.str29, i32 0, i32 0
  %t503 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str29.c, i8* %t502, i64 7)
  store %nyx_string* %t503, %nyx_string** %t504
  %t505 = getelementptr [5 x i8], [5 x i8]* @.str30, i32 0, i32 0
  %t506 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str30.c, i8* %t505, i64 4)
  store %nyx_string* %t506, %nyx_string** %t507
  %t508 = getelementptr [2 x i8], [2 x i8]* @.str31, i32 0, i32 0
  %t509 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str31.c, i8* %t508, i64 1)
  store %nyx_string* %t509, %nyx_string** %t510
  %t511 = getelementptr [61 x i8], [61 x i8]* @.str32, i32 0, i32 0
  %t512 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str32.c, i8* %t511, i64 60)
  store %nyx_string* %t512, %nyx_string** %t513
  %t514 = getelementptr [182 x i8], [182 x i8]* @.str33, i32 0, i32 0
  %t515 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str33.c, i8* %t514, i64 181)
  store %nyx_string* %t515, %nyx_string** %t516
  %t517 = getelementptr [14 x i8], [14 x i8]* @.str34, i32 0, i32 0
  %t518 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str34.c, i8* %t517, i64 13)
  store %nyx_string* %t518, %nyx_string** %t519
  %t520 = getelementptr [1 x i8], [1 x i8]* @.str35, i32 0, i32 0
  %t521 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str35.c, i8* %t520, i64 0)
  store %nyx_string* %t521, %nyx_string** %t522
  br label %while_cond123
while_cond123:
  %t523 = load i64, i64* %t486
  %t524 = load { i64, i8* }*, { i64, i8* }** %stmts.ptr
  %t525 = call i64 @nyx_array_length({ i64, i8* }* %t524)
  %t526 = icmp slt i64 %t523, %t525
  br i1 %t526, label %while_body124, label %while_end125
while_body124:
  %t527 = load { i64, i8* }*, { i64, i8* }** %stmts.ptr
  %t528 = load i64, i64* %t486
  %t529 = call i64 @nyx_array_get({ i64, i8* }* %t527, i64 %t528)
  %t530 = inttoptr i64 %t529 to { i64, i8* }*
  store { i64, i8* }* %t530, { i64, i8* }** %t531
  %t532 = load { i64, i8* }*, { i64, i8* }** %t531
  %t533 = call i64 @nyx_array_get_checked({ i64, i8* }* %t532, i64 0, i64 2)
  %t534 = inttoptr i64 %t533 to %nyx_string*
  store %nyx_string* %t534, %nyx_string** %t535
  %t536 = load %nyx_string*, %nyx_string** %t535
  %t537 = load %nyx_string*, %nyx_string** %t489
  %t538 = call i1 @nyx_string_equals(%nyx_string* %t536, %nyx_string* %t537)
  br i1 %t538, label %then126, label %else127
then126:
  %t539 = load { i64, i8* }*, { i64, i8* }** %t531
  %t540 = call i64 @nyx_array_get({ i64, i8* }* %t539, i64 1)
  %t541 = inttoptr i64 %t540 to { i64, i8* }*
  store { i64, i8* }* %t541, { i64, i8* }** %t542
  %t543 = load { i64, i8* }*, { i64, i8* }** %t542
  %t544 = call i64 @nyx_array_length({ i64, i8* }* %t543)
  %t545 = icmp sgt i64 %t544, 0
  br i1 %t545, label %then129, label %else130
then129:
  %t546 = load { i64, i8* }*, { i64, i8* }** %t542
  %t547 = call i64 @nyx_array_get({ i64, i8* }* %t546, i64 0)
  %t548 = inttoptr i64 %t547 to { i64, i8* }*
  store { i64, i8* }* %t548, { i64, i8* }** %t549
  %t550 = load { i64, i8* }*, { i64, i8* }** %t549
  store { i64, i8* }* %t550, { i64, i8* }** %t531
  %t551 = load { i64, i8* }*, { i64, i8* }** %t549
  %t552 = call i64 @nyx_array_get_checked({ i64, i8* }* %t551, i64 0, i64 2)
  %t553 = inttoptr i64 %t552 to %nyx_string*
  store %nyx_string* %t553, %nyx_string** %t535
  br label %merge131
else130:
  br label %merge131
merge131:
  br label %merge128
else127:
  br label %merge128
merge128:
  %t554 = load %nyx_string*, %nyx_string** %t535
  %t555 = load %nyx_string*, %nyx_string** %t492
  %t556 = call i1 @nyx_string_equals(%nyx_string* %t554, %nyx_string* %t555)
  br i1 %t556, label %then132, label %else133
then132:
  %t557 = load { i64, i8* }*, { i64, i8* }** %t531
  %t558 = call i64 @nyx_array_get({ i64, i8* }* %t557, i64 1)
  %t559 = inttoptr i64 %t558 to { i64, i8* }*
  store { i64, i8* }* %t559, { i64, i8* }** %t560
  %t561 = load { i64, i8* }*, { i64, i8* }** %t560
  %t562 = call i64 @nyx_array_get_checked({ i64, i8* }* %t561, i64 0, i64 2)
  %t563 = inttoptr i64 %t562 to %nyx_string*
  store %nyx_string* %t563, %nyx_string** %t564
  %t565 = load { i64, i8* }*, { i64, i8* }** %t560
  %t566 = call i64 @nyx_array_get({ i64, i8* }* %t565, i64 1)
  %t567 = inttoptr i64 %t566 to { i64, i8* }*
  store { i64, i8* }* %t567, { i64, i8* }** %t568
  %t569 = load { i64, i8* }*, { i64, i8* }** %t560
  %t570 = call i64 @fn_decl_line({ i64, i8* }* %t569)
  store i64 %t570, i64* %t571
  %t572 = load i64, i64* %t485
  store i64 %t572, i64* %t573
  %t574 = load i64, i64* %t571
  %t575 = icmp sgt i64 %t574, 0
  br i1 %t575, label %then135, label %else136
then135:
  %t576 = load i64, i64* %t571
  store i64 %t576, i64* %t577
  br label %while_cond138
while_cond138:
  %t578 = load i64, i64* %t577
  %t579 = load i64, i64* %t485
  %t580 = icmp slt i64 %t578, %t579
  br i1 %t580, label %while_body139, label %while_end140
while_body139:
  %t581 = load { i64, i8* }*, { i64, i8* }** %t482
  %t582 = load i64, i64* %t577
  %t583 = call i64 @nyx_array_get_checked({ i64, i8* }* %t581, i64 %t582, i64 2)
  %t584 = inttoptr i64 %t583 to %nyx_string*
  store %nyx_string* %t584, %nyx_string** %t585
  %t586 = load %nyx_string*, %nyx_string** %t585
  %t587 = call i64 @nyx_string_byte_length(%nyx_string* %t586)
  %t588 = icmp sge i64 %t587, 3
  br i1 %t588, label %then141, label %else142
then141:
  %t589 = load %nyx_string*, %nyx_string** %t585
  %t590 = call %nyx_string* @nyx_string_substring(%nyx_string* %t589, i64 0, i64 3)
  %t591 = load %nyx_string*, %nyx_string** %t495
  %t592 = call i1 @nyx_string_equals(%nyx_string* %t590, %nyx_string* %t591)
  br i1 %t592, label %then144, label %else145
then144:
  %t593 = load i64, i64* %t577
  store i64 %t593, i64* %t573
  br label %merge146
else145:
  br label %merge146
merge146:
  br label %merge143
else142:
  br label %merge143
merge143:
  %t594 = load %nyx_string*, %nyx_string** %t585
  %t595 = call i64 @nyx_string_byte_length(%nyx_string* %t594)
  %t596 = icmp sge i64 %t595, 7
  br i1 %t596, label %then147, label %else148
then147:
  %t597 = load %nyx_string*, %nyx_string** %t585
  %t598 = call %nyx_string* @nyx_string_substring(%nyx_string* %t597, i64 0, i64 7)
  %t599 = load %nyx_string*, %nyx_string** %t498
  %t600 = call i1 @nyx_string_equals(%nyx_string* %t598, %nyx_string* %t599)
  br i1 %t600, label %then150, label %else151
then150:
  %t601 = load i64, i64* %t577
  store i64 %t601, i64* %t573
  br label %merge152
else151:
  br label %merge152
merge152:
  br label %merge149
else148:
  br label %merge149
merge149:
  %t602 = load i64, i64* %t573
  %t603 = load i64, i64* %t485
  %t604 = icmp ne i64 %t602, %t603
  br i1 %t604, label %then153, label %else154
then153:
  br label %while_end140
else154:
  br label %merge155
merge155:
  %t605 = load i64, i64* %t577
  %t606 = add i64 %t605, 1
  store i64 %t606, i64* %t577
  br label %while_cond138
while_end140:
  br label %merge137
else136:
  br label %merge137
merge137:
  store i64 0, i64* %t607
  br label %while_cond156
while_cond156:
  %t608 = load i64, i64* %t607
  %t609 = load { i64, i8* }*, { i64, i8* }** %t568
  %t610 = call i64 @nyx_array_length({ i64, i8* }* %t609)
  %t611 = icmp slt i64 %t608, %t610
  br i1 %t611, label %while_body157, label %while_end158
while_body157:
  %t612 = load { i64, i8* }*, { i64, i8* }** %t568
  %t613 = load i64, i64* %t607
  %t614 = call i64 @nyx_array_get({ i64, i8* }* %t612, i64 %t613)
  %t615 = inttoptr i64 %t614 to { i64, i8* }*
  store { i64, i8* }* %t615, { i64, i8* }** %t616
  %t617 = load { i64, i8* }*, { i64, i8* }** %t616
  %t618 = call i64 @nyx_array_length({ i64, i8* }* %t617)
  %t619 = icmp sge i64 %t618, 2
  br i1 %t619, label %then159, label %else160
then159:
  %t620 = load { i64, i8* }*, { i64, i8* }** %t616
  %t621 = call i64 @nyx_array_get_checked({ i64, i8* }* %t620, i64 0, i64 2)
  %t622 = inttoptr i64 %t621 to %nyx_string*
  store %nyx_string* %t622, %nyx_string** %t623
  %t624 = load { i64, i8* }*, { i64, i8* }** %t616
  %t625 = call i64 @nyx_array_get_checked({ i64, i8* }* %t624, i64 1, i64 2)
  %t626 = inttoptr i64 %t625 to %nyx_string*
  store %nyx_string* %t626, %nyx_string** %t627
  %t628 = load %nyx_string*, %nyx_string** %t627
  %t629 = load %nyx_string*, %nyx_string** %t501
  %t630 = call i1 @nyx_string_equals(%nyx_string* %t628, %nyx_string* %t629)
  br i1 %t630, label %then162, label %else163
then162:
  store i64 0, i64* %t631
  %t632 = load i64, i64* %t571
  %t633 = icmp sgt i64 %t632, 0
  br i1 %t633, label %then165, label %else166
then165:
  %t634 = load i64, i64* %t571
  %t635 = sub i64 %t634, 1
  store i64 %t635, i64* %t631
  br label %merge167
else166:
  br label %merge167
merge167:
  %t636 = load { i64, i8* }*, { i64, i8* }** %t482
  %t637 = load i64, i64* %t631
  %t638 = load i64, i64* %t573
  %t639 = load %nyx_string*, %nyx_string** %t623
  %t640 = call i64 @line_uses_call_result({ i64, i8* }* %t636, i64 %t637, i64 %t638, %nyx_string* %t639)
  store i64 %t640, i64* %t641
  %t642 = load i64, i64* %t641
  %t643 = icmp sgt i64 %t642, 0
  br i1 %t643, label %then168, label %else169
then168:
  %t644 = load %nyx_string*, %nyx_string** %t504
  %t645 = load %nyx_string*, %nyx_string** %t507
  %t646 = load %nyx_string*, %nyx_string** %t510
  %t647 = load %nyx_string*, %nyx_string** %t623
  %t648 = call %nyx_string* @nyx_string_concat(%nyx_string* %t646, %nyx_string* %t647)
  %t649 = load %nyx_string*, %nyx_string** %t513
  %t650 = call %nyx_string* @nyx_string_concat(%nyx_string* %t648, %nyx_string* %t649)
  %t651 = load i64, i64* %t641
  %t652 = call %nyx_string* @nyx_string_from_int(i64 %t651)
  %t653 = call %nyx_string* @nyx_string_concat(%nyx_string* %t650, %nyx_string* %t652)
  %t654 = load %nyx_string*, %nyx_string** %t516
  %t655 = call %nyx_string* @nyx_string_concat(%nyx_string* %t653, %nyx_string* %t654)
  %t656 = load %nyx_string*, %nyx_string** %t623
  %t657 = call %nyx_string* @nyx_string_concat(%nyx_string* %t655, %nyx_string* %t656)
  %t658 = load %nyx_string*, %nyx_string** %t519
  %t659 = call %nyx_string* @nyx_string_concat(%nyx_string* %t657, %nyx_string* %t658)
  %t660 = load i64, i64* %t571
  %t661 = call %VetIssue @make_issue(%nyx_string* %t644, %nyx_string* %t645, %nyx_string* %t659, i64 %t660)
  store %VetIssue %t661, %VetIssue* %t662
  %t663 = load { i64, i8* }*, { i64, i8* }** %t477
  %t664 = load %VetIssue, %VetIssue* %t662
  %t665 = getelementptr %VetIssue, %VetIssue* null, i32 1
  %t666 = ptrtoint %VetIssue* %t665 to i64
  %t667 = call i8* @GC_malloc(i64 %t666)
  %t668 = bitcast i8* %t667 to %VetIssue*
  store %VetIssue %t664, %VetIssue* %t668
  %t669 = ptrtoint %VetIssue* %t668 to i64
  call void @nyx_array_push({ i64, i8* }* %t663, i64 %t669)
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
  %t670 = load i64, i64* %t607
  %t671 = add i64 %t670, 1
  store i64 %t671, i64* %t607
  br label %while_cond156
while_end158:
  %t672 = load %nyx_string*, %nyx_string** %t564
  %t673 = load %nyx_string*, %nyx_string** %t522
  %t674 = call i1 @nyx_string_equals(%nyx_string* %t672, %nyx_string* %t673)
  br i1 %t674, label %then171, label %else172
then171:
  br label %merge173
else172:
  br label %merge173
merge173:
  br label %merge134
else133:
  br label %merge134
merge134:
  %t675 = load i64, i64* %t486
  %t676 = add i64 %t675, 1
  store i64 %t676, i64* %t486
  br label %while_cond123
while_end125:
  %t677 = load { i64, i8* }*, { i64, i8* }** %t477
  ret { i64, i8* }* %t677
}

define internal { i64, i8* }* @check_dead_code(
{ i64, i8* }* %stmts.param) {
  %stmts.ptr = alloca { i64, i8* }*
  %t679 = alloca { i64, i8* }*
  %t680 = alloca i64
  %t681 = alloca i1
  %t682 = alloca i64
  %t685 = alloca %nyx_string*
  %t688 = alloca %nyx_string*
  %t691 = alloca %nyx_string*
  %t694 = alloca %nyx_string*
  %t697 = alloca %nyx_string*
  %t700 = alloca %nyx_string*
  %t703 = alloca %nyx_string*
  %t712 = alloca { i64, i8* }*
  %t716 = alloca %nyx_string*
  %t718 = alloca i64
  %t735 = alloca %VetIssue
  %t743 = alloca i1
  %t744 = alloca i1
  store { i64, i8* }* %stmts.param, { i64, i8* }** %stmts.ptr
  %t678 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t678, { i64, i8* }** %t679
  store i64 0, i64* %t680
  store i1 0, i1* %t681
  store i64 0, i64* %t682
  %t683 = getelementptr [8 x i8], [8 x i8]* @.str36, i32 0, i32 0
  %t684 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str36.c, i8* %t683, i64 7)
  store %nyx_string* %t684, %nyx_string** %t685
  %t686 = getelementptr [5 x i8], [5 x i8]* @.str37, i32 0, i32 0
  %t687 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str37.c, i8* %t686, i64 4)
  store %nyx_string* %t687, %nyx_string** %t688
  %t689 = getelementptr [25 x i8], [25 x i8]* @.str38, i32 0, i32 0
  %t690 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str38.c, i8* %t689, i64 24)
  store %nyx_string* %t690, %nyx_string** %t691
  %t692 = getelementptr [11 x i8], [11 x i8]* @.str39, i32 0, i32 0
  %t693 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str39.c, i8* %t692, i64 10)
  store %nyx_string* %t693, %nyx_string** %t694
  %t695 = getelementptr [7 x i8], [7 x i8]* @.str40, i32 0, i32 0
  %t696 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str40.c, i8* %t695, i64 6)
  store %nyx_string* %t696, %nyx_string** %t697
  %t698 = getelementptr [6 x i8], [6 x i8]* @.str41, i32 0, i32 0
  %t699 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str41.c, i8* %t698, i64 5)
  store %nyx_string* %t699, %nyx_string** %t700
  %t701 = getelementptr [9 x i8], [9 x i8]* @.str42, i32 0, i32 0
  %t702 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str42.c, i8* %t701, i64 8)
  store %nyx_string* %t702, %nyx_string** %t703
  br label %while_cond174
while_cond174:
  %t704 = load i64, i64* %t680
  %t705 = load { i64, i8* }*, { i64, i8* }** %stmts.ptr
  %t706 = call i64 @nyx_array_length({ i64, i8* }* %t705)
  %t707 = icmp slt i64 %t704, %t706
  br i1 %t707, label %while_body175, label %while_end176
while_body175:
  %t708 = load { i64, i8* }*, { i64, i8* }** %stmts.ptr
  %t709 = load i64, i64* %t680
  %t710 = call i64 @nyx_array_get({ i64, i8* }* %t708, i64 %t709)
  %t711 = inttoptr i64 %t710 to { i64, i8* }*
  store { i64, i8* }* %t711, { i64, i8* }** %t712
  %t713 = load { i64, i8* }*, { i64, i8* }** %t712
  %t714 = call i64 @nyx_array_get_checked({ i64, i8* }* %t713, i64 0, i64 2)
  %t715 = inttoptr i64 %t714 to %nyx_string*
  store %nyx_string* %t715, %nyx_string** %t716
  %t717 = load i1, i1* %t681
  br i1 %t717, label %then177, label %else178
then177:
  store i64 0, i64* %t718
  %t719 = load { i64, i8* }*, { i64, i8* }** %t712
  %t720 = call i64 @nyx_array_length({ i64, i8* }* %t719)
  %t721 = icmp sgt i64 %t720, 2
  br i1 %t721, label %then180, label %else181
then180:
  br label %merge182
else181:
  br label %merge182
merge182:
  %t722 = load %nyx_string*, %nyx_string** %t685
  %t723 = load %nyx_string*, %nyx_string** %t688
  %t724 = load %nyx_string*, %nyx_string** %t691
  %t725 = load { i64, i8* }*, { i64, i8* }** %t712
  %t726 = call %nyx_string* @get_terminator_name({ i64, i8* }* %t725)
  %t727 = call %nyx_string* @nyx_string_concat(%nyx_string* %t724, %nyx_string* %t726)
  %t728 = load %nyx_string*, %nyx_string** %t694
  %t729 = call %nyx_string* @nyx_string_concat(%nyx_string* %t727, %nyx_string* %t728)
  %t730 = load i64, i64* %t682
  %t731 = call %nyx_string* @nyx_string_from_int(i64 %t730)
  %t732 = call %nyx_string* @nyx_string_concat(%nyx_string* %t729, %nyx_string* %t731)
  %t733 = load i64, i64* %t682
  %t734 = call %VetIssue @make_issue(%nyx_string* %t722, %nyx_string* %t723, %nyx_string* %t732, i64 %t733)
  store %VetIssue %t734, %VetIssue* %t735
  %t736 = load { i64, i8* }*, { i64, i8* }** %t679
  %t737 = load %VetIssue, %VetIssue* %t735
  %t738 = getelementptr %VetIssue, %VetIssue* null, i32 1
  %t739 = ptrtoint %VetIssue* %t738 to i64
  %t740 = call i8* @GC_malloc(i64 %t739)
  %t741 = bitcast i8* %t740 to %VetIssue*
  store %VetIssue %t737, %VetIssue* %t741
  %t742 = ptrtoint %VetIssue* %t741 to i64
  call void @nyx_array_push({ i64, i8* }* %t736, i64 %t742)
  store i1 0, i1* %t681
  br label %merge179
else178:
  br label %merge179
merge179:
  store i1 true, i1* %t743
  store i1 true, i1* %t744
  %t745 = load %nyx_string*, %nyx_string** %t716
  %t746 = load %nyx_string*, %nyx_string** %t697
  %t747 = call i1 @nyx_string_equals(%nyx_string* %t745, %nyx_string* %t746)
  br i1 %t747, label %sc_or_end184, label %sc_or_rhs183
sc_or_rhs183:
  %t748 = load %nyx_string*, %nyx_string** %t716
  %t749 = load %nyx_string*, %nyx_string** %t700
  %t750 = call i1 @nyx_string_equals(%nyx_string* %t748, %nyx_string* %t749)
  store i1 %t750, i1* %t744
  br label %sc_or_end184
sc_or_end184:
  %t751 = load i1, i1* %t744
  br i1 %t751, label %sc_or_end186, label %sc_or_rhs185
sc_or_rhs185:
  %t752 = load %nyx_string*, %nyx_string** %t716
  %t753 = load %nyx_string*, %nyx_string** %t703
  %t754 = call i1 @nyx_string_equals(%nyx_string* %t752, %nyx_string* %t753)
  store i1 %t754, i1* %t743
  br label %sc_or_end186
sc_or_end186:
  %t755 = load i1, i1* %t743
  br i1 %t755, label %then187, label %else188
then187:
  store i1 1, i1* %t681
  store i64 0, i64* %t682
  br label %merge189
else188:
  br label %merge189
merge189:
  %t756 = load i64, i64* %t680
  %t757 = add i64 %t756, 1
  store i64 %t757, i64* %t680
  br label %while_cond174
while_end176:
  %t758 = load { i64, i8* }*, { i64, i8* }** %t679
  ret { i64, i8* }* %t758
}

define internal %nyx_string* @get_terminator_name(
{ i64, i8* }* %stmt.param) {
  %stmt.ptr = alloca { i64, i8* }*
  %t762 = alloca %nyx_string*
  store { i64, i8* }* %stmt.param, { i64, i8* }** %stmt.ptr
  %t759 = load { i64, i8* }*, { i64, i8* }** %stmt.ptr
  %t760 = call i64 @nyx_array_get_checked({ i64, i8* }* %t759, i64 0, i64 2)
  %t761 = inttoptr i64 %t760 to %nyx_string*
  store %nyx_string* %t761, %nyx_string** %t762
  %t763 = load %nyx_string*, %nyx_string** %t762
  ret %nyx_string* %t763
}

define internal { i64, i8* }* @collect_fn_names(
{ i64, i8* }* %stmts.param) {
  %stmts.ptr = alloca { i64, i8* }*
  %t765 = alloca { i64, i8* }*
  %t766 = alloca i64
  %t769 = alloca %nyx_string*
  %t772 = alloca %nyx_string*
  %t781 = alloca { i64, i8* }*
  %t785 = alloca %nyx_string*
  %t792 = alloca { i64, i8* }*
  %t796 = alloca %nyx_string*
  store { i64, i8* }* %stmts.param, { i64, i8* }** %stmts.ptr
  %t764 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t764, { i64, i8* }** %t765
  store i64 0, i64* %t766
  %t767 = getelementptr [9 x i8], [9 x i8]* @.str43, i32 0, i32 0
  %t768 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str43.c, i8* %t767, i64 8)
  store %nyx_string* %t768, %nyx_string** %t769
  %t770 = getelementptr [5 x i8], [5 x i8]* @.str44, i32 0, i32 0
  %t771 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str44.c, i8* %t770, i64 4)
  store %nyx_string* %t771, %nyx_string** %t772
  br label %while_cond190
while_cond190:
  %t773 = load i64, i64* %t766
  %t774 = load { i64, i8* }*, { i64, i8* }** %stmts.ptr
  %t775 = call i64 @nyx_array_length({ i64, i8* }* %t774)
  %t776 = icmp slt i64 %t773, %t775
  br i1 %t776, label %while_body191, label %while_end192
while_body191:
  %t777 = load { i64, i8* }*, { i64, i8* }** %stmts.ptr
  %t778 = load i64, i64* %t766
  %t779 = call i64 @nyx_array_get({ i64, i8* }* %t777, i64 %t778)
  %t780 = inttoptr i64 %t779 to { i64, i8* }*
  store { i64, i8* }* %t780, { i64, i8* }** %t781
  %t782 = load { i64, i8* }*, { i64, i8* }** %t781
  %t783 = call i64 @nyx_array_get_checked({ i64, i8* }* %t782, i64 0, i64 2)
  %t784 = inttoptr i64 %t783 to %nyx_string*
  store %nyx_string* %t784, %nyx_string** %t785
  %t786 = load %nyx_string*, %nyx_string** %t785
  %t787 = load %nyx_string*, %nyx_string** %t769
  %t788 = call i1 @nyx_string_equals(%nyx_string* %t786, %nyx_string* %t787)
  br i1 %t788, label %then193, label %else194
then193:
  %t789 = load { i64, i8* }*, { i64, i8* }** %t781
  %t790 = call i64 @nyx_array_get({ i64, i8* }* %t789, i64 1)
  %t791 = inttoptr i64 %t790 to { i64, i8* }*
  store { i64, i8* }* %t791, { i64, i8* }** %t792
  %t793 = load { i64, i8* }*, { i64, i8* }** %t792
  %t794 = call i64 @nyx_array_get_checked({ i64, i8* }* %t793, i64 0, i64 2)
  %t795 = inttoptr i64 %t794 to %nyx_string*
  store %nyx_string* %t795, %nyx_string** %t796
  %t797 = load %nyx_string*, %nyx_string** %t796
  %t798 = load %nyx_string*, %nyx_string** %t772
  %t799 = call i1 @nyx_string_equals(%nyx_string* %t797, %nyx_string* %t798)
  %t800 = xor i1 %t799, true
  br i1 %t800, label %then196, label %else197
then196:
  %t801 = load { i64, i8* }*, { i64, i8* }** %t765
  %t802 = load %nyx_string*, %nyx_string** %t796
  %t803 = ptrtoint %nyx_string* %t802 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t801, i64 %t803, i64 2)
  br label %merge198
else197:
  br label %merge198
merge198:
  br label %merge195
else194:
  br label %merge195
merge195:
  %t804 = load i64, i64* %t766
  %t805 = add i64 %t804, 1
  store i64 %t805, i64* %t766
  br label %while_cond190
while_end192:
  %t806 = load { i64, i8* }*, { i64, i8* }** %t765
  ret { i64, i8* }* %t806
}

define internal { i64, i8* }* @check_unused_imports(
{ i64, i8* }* %stmts.param, %nyx_string* %source.param) {
  %stmts.ptr = alloca { i64, i8* }*
  %source.ptr = alloca %nyx_string*
  %t808 = alloca { i64, i8* }*
  %t809 = alloca i64
  %t812 = alloca %nyx_string*
  %t815 = alloca %nyx_string*
  %t818 = alloca %nyx_string*
  %t821 = alloca %nyx_string*
  %t824 = alloca %nyx_string*
  %t827 = alloca %nyx_string*
  %t830 = alloca %nyx_string*
  %t839 = alloca { i64, i8* }*
  %t843 = alloca %nyx_string*
  %t850 = alloca { i64, i8* }*
  %t857 = alloca %nyx_string*
  %t865 = alloca %nyx_string*
  %t869 = alloca i1
  %t880 = alloca %VetIssue
  store { i64, i8* }* %stmts.param, { i64, i8* }** %stmts.ptr
  store %nyx_string* %source.param, %nyx_string** %source.ptr
  %t807 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t807, { i64, i8* }** %t808
  store i64 0, i64* %t809
  %t810 = getelementptr [14 x i8], [14 x i8]* @.str45, i32 0, i32 0
  %t811 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str45.c, i8* %t810, i64 13)
  store %nyx_string* %t811, %nyx_string** %t812
  %t813 = getelementptr [1 x i8], [1 x i8]* @.str46, i32 0, i32 0
  %t814 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str46.c, i8* %t813, i64 0)
  store %nyx_string* %t814, %nyx_string** %t815
  %t816 = getelementptr [2 x i8], [2 x i8]* @.str47, i32 0, i32 0
  %t817 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str47.c, i8* %t816, i64 1)
  store %nyx_string* %t817, %nyx_string** %t818
  %t819 = getelementptr [8 x i8], [8 x i8]* @.str48, i32 0, i32 0
  %t820 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str48.c, i8* %t819, i64 7)
  store %nyx_string* %t820, %nyx_string** %t821
  %t822 = getelementptr [5 x i8], [5 x i8]* @.str49, i32 0, i32 0
  %t823 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str49.c, i8* %t822, i64 4)
  store %nyx_string* %t823, %nyx_string** %t824
  %t825 = getelementptr [18 x i8], [18 x i8]* @.str50, i32 0, i32 0
  %t826 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str50.c, i8* %t825, i64 17)
  store %nyx_string* %t826, %nyx_string** %t827
  %t828 = getelementptr [14 x i8], [14 x i8]* @.str51, i32 0, i32 0
  %t829 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str51.c, i8* %t828, i64 13)
  store %nyx_string* %t829, %nyx_string** %t830
  br label %while_cond199
while_cond199:
  %t831 = load i64, i64* %t809
  %t832 = load { i64, i8* }*, { i64, i8* }** %stmts.ptr
  %t833 = call i64 @nyx_array_length({ i64, i8* }* %t832)
  %t834 = icmp slt i64 %t831, %t833
  br i1 %t834, label %while_body200, label %while_end201
while_body200:
  %t835 = load { i64, i8* }*, { i64, i8* }** %stmts.ptr
  %t836 = load i64, i64* %t809
  %t837 = call i64 @nyx_array_get({ i64, i8* }* %t835, i64 %t836)
  %t838 = inttoptr i64 %t837 to { i64, i8* }*
  store { i64, i8* }* %t838, { i64, i8* }** %t839
  %t840 = load { i64, i8* }*, { i64, i8* }** %t839
  %t841 = call i64 @nyx_array_get_checked({ i64, i8* }* %t840, i64 0, i64 2)
  %t842 = inttoptr i64 %t841 to %nyx_string*
  store %nyx_string* %t842, %nyx_string** %t843
  %t844 = load %nyx_string*, %nyx_string** %t843
  %t845 = load %nyx_string*, %nyx_string** %t812
  %t846 = call i1 @nyx_string_equals(%nyx_string* %t844, %nyx_string* %t845)
  br i1 %t846, label %then202, label %else203
then202:
  %t847 = load { i64, i8* }*, { i64, i8* }** %t839
  %t848 = call i64 @nyx_array_get({ i64, i8* }* %t847, i64 1)
  %t849 = inttoptr i64 %t848 to { i64, i8* }*
  store { i64, i8* }* %t849, { i64, i8* }** %t850
  %t851 = load { i64, i8* }*, { i64, i8* }** %t850
  %t852 = call i64 @nyx_array_length({ i64, i8* }* %t851)
  %t853 = icmp sge i64 %t852, 2
  br i1 %t853, label %then205, label %else206
then205:
  %t854 = load { i64, i8* }*, { i64, i8* }** %t850
  %t855 = call i64 @nyx_array_get_checked({ i64, i8* }* %t854, i64 1, i64 2)
  %t856 = inttoptr i64 %t855 to %nyx_string*
  store %nyx_string* %t856, %nyx_string** %t857
  %t858 = load %nyx_string*, %nyx_string** %t857
  %t859 = load %nyx_string*, %nyx_string** %t815
  %t860 = call i1 @nyx_string_equals(%nyx_string* %t858, %nyx_string* %t859)
  %t861 = xor i1 %t860, true
  br i1 %t861, label %then208, label %else209
then208:
  %t862 = load %nyx_string*, %nyx_string** %t857
  %t863 = load %nyx_string*, %nyx_string** %t818
  %t864 = call %nyx_string* @nyx_string_concat(%nyx_string* %t862, %nyx_string* %t863)
  store %nyx_string* %t864, %nyx_string** %t865
  %t866 = load %nyx_string*, %nyx_string** %t865
  %t867 = load %nyx_string*, %nyx_string** %source.ptr
  %t868 = call i1 @name_used_in_source(%nyx_string* %t866, %nyx_string* %t867)
  store i1 %t868, i1* %t869
  %t870 = load i1, i1* %t869
  %t871 = xor i1 %t870, true
  br i1 %t871, label %then211, label %else212
then211:
  %t872 = load %nyx_string*, %nyx_string** %t821
  %t873 = load %nyx_string*, %nyx_string** %t824
  %t874 = load %nyx_string*, %nyx_string** %t827
  %t875 = load %nyx_string*, %nyx_string** %t857
  %t876 = call %nyx_string* @nyx_string_concat(%nyx_string* %t874, %nyx_string* %t875)
  %t877 = load %nyx_string*, %nyx_string** %t830
  %t878 = call %nyx_string* @nyx_string_concat(%nyx_string* %t876, %nyx_string* %t877)
  %t879 = call %VetIssue @make_issue(%nyx_string* %t872, %nyx_string* %t873, %nyx_string* %t878, i64 0)
  store %VetIssue %t879, %VetIssue* %t880
  %t881 = load { i64, i8* }*, { i64, i8* }** %t808
  %t882 = load %VetIssue, %VetIssue* %t880
  %t883 = getelementptr %VetIssue, %VetIssue* null, i32 1
  %t884 = ptrtoint %VetIssue* %t883 to i64
  %t885 = call i8* @GC_malloc(i64 %t884)
  %t886 = bitcast i8* %t885 to %VetIssue*
  store %VetIssue %t882, %VetIssue* %t886
  %t887 = ptrtoint %VetIssue* %t886 to i64
  call void @nyx_array_push({ i64, i8* }* %t881, i64 %t887)
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
  %t888 = load i64, i64* %t809
  %t889 = add i64 %t888, 1
  store i64 %t889, i64* %t809
  br label %while_cond199
while_end201:
  %t890 = load { i64, i8* }*, { i64, i8* }** %t808
  ret { i64, i8* }* %t890
}

define internal { i64, i8* }* @vet_source(
%nyx_string* %source.param, { i64, i8* }* %ast.param) {
  %source.ptr = alloca %nyx_string*
  %ast.ptr = alloca { i64, i8* }*
  %t892 = alloca { i64, i8* }*
  %t895 = alloca { i64, i8* }*
  %t896 = alloca i64
  %t907 = alloca %VetIssue
  %t920 = alloca { i64, i8* }*
  %t922 = alloca { i64, i8* }*
  %t929 = alloca { i64, i8* }*
  %t935 = alloca { i64, i8* }*
  %t943 = alloca { i64, i8* }*
  %t944 = alloca i64
  %t955 = alloca %VetIssue
  %t968 = alloca { i64, i8* }*
  %t969 = alloca i64
  %t980 = alloca %VetIssue
  %t992 = alloca { i64, i8* }*
  %t993 = alloca i64
  %t1004 = alloca %VetIssue
  %t1014 = alloca i64
  %t1017 = alloca %nyx_string*
  %t1020 = alloca %nyx_string*
  %t1023 = alloca %nyx_string*
  %t1026 = alloca %nyx_string*
  %t1029 = alloca %nyx_string*
  %t1032 = alloca %nyx_string*
  %t1035 = alloca %nyx_string*
  %t1038 = alloca %nyx_string*
  %t1041 = alloca %nyx_string*
  %t1050 = alloca { i64, i8* }*
  %t1054 = alloca %nyx_string*
  %t1061 = alloca { i64, i8* }*
  %t1065 = alloca { i64, i8* }*
  %t1069 = alloca { i64, i8* }*
  %t1070 = alloca i64
  %t1079 = alloca { i64, i8* }*
  %t1083 = alloca %nyx_string*
  %t1084 = alloca i1
  %t1095 = alloca { i64, i8* }*
  %t1099 = alloca { i64, i8* }*
  %t1103 = alloca %nyx_string*
  %t1111 = alloca i1
  %t1117 = alloca %nyx_string*
  %t1130 = alloca %VetIssue
  store %nyx_string* %source.param, %nyx_string** %source.ptr
  store { i64, i8* }* %ast.param, { i64, i8* }** %ast.ptr
  %t891 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t891, { i64, i8* }** %t892
  %t893 = load %nyx_string*, %nyx_string** %source.ptr
  %t894 = call { i64, i8* }* @check_gotcha_patterns(%nyx_string* %t893)
  store { i64, i8* }* %t894, { i64, i8* }** %t895
  store i64 0, i64* %t896
  br label %while_cond214
while_cond214:
  %t897 = load i64, i64* %t896
  %t898 = load { i64, i8* }*, { i64, i8* }** %t895
  %t899 = call i64 @nyx_array_length({ i64, i8* }* %t898)
  %t900 = icmp slt i64 %t897, %t899
  br i1 %t900, label %while_body215, label %while_end216
while_body215:
  %t901 = load { i64, i8* }*, { i64, i8* }** %t895
  %t902 = load i64, i64* %t896
  %t903 = getelementptr [9 x i8], [9 x i8]* @.slotT52, i32 0, i32 0
  %t904 = call i64 @nyx_slot_as_value_checked({ i64, i8* }* %t901, i64 %t902, i8* %t903)
  %t905 = inttoptr i64 %t904 to %VetIssue*
  %t906 = load %VetIssue, %VetIssue* %t905
  store %VetIssue %t906, %VetIssue* %t907
  %t908 = load { i64, i8* }*, { i64, i8* }** %t892
  %t909 = load %VetIssue, %VetIssue* %t907
  %t910 = getelementptr %VetIssue, %VetIssue* null, i32 1
  %t911 = ptrtoint %VetIssue* %t910 to i64
  %t912 = call i8* @GC_malloc(i64 %t911)
  %t913 = bitcast i8* %t912 to %VetIssue*
  store %VetIssue %t909, %VetIssue* %t913
  %t914 = ptrtoint %VetIssue* %t913 to i64
  call void @nyx_array_push({ i64, i8* }* %t908, i64 %t914)
  %t915 = load i64, i64* %t896
  %t916 = add i64 %t915, 1
  store i64 %t916, i64* %t896
  br label %while_cond214
while_end216:
  %t917 = load { i64, i8* }*, { i64, i8* }** %ast.ptr
  %t918 = call i64 @nyx_array_get({ i64, i8* }* %t917, i64 1)
  %t919 = inttoptr i64 %t918 to { i64, i8* }*
  store { i64, i8* }* %t919, { i64, i8* }** %t920
  %t921 = load { i64, i8* }*, { i64, i8* }** %t920
  store { i64, i8* }* %t921, { i64, i8* }** %t922
  %t923 = load { i64, i8* }*, { i64, i8* }** %t920
  %t924 = call i64 @nyx_array_length({ i64, i8* }* %t923)
  %t925 = icmp eq i64 %t924, 1
  br i1 %t925, label %then217, label %else218
then217:
  %t926 = load { i64, i8* }*, { i64, i8* }** %t920
  %t927 = call i64 @nyx_array_get({ i64, i8* }* %t926, i64 0)
  %t928 = inttoptr i64 %t927 to { i64, i8* }*
  store { i64, i8* }* %t928, { i64, i8* }** %t929
  %t930 = load { i64, i8* }*, { i64, i8* }** %t929
  %t931 = call i64 @nyx_array_length({ i64, i8* }* %t930)
  %t932 = icmp sgt i64 %t931, 0
  br i1 %t932, label %then220, label %else221
then220:
  %t933 = load { i64, i8* }*, { i64, i8* }** %t929
  store { i64, i8* }* %t933, { i64, i8* }** %t922
  br label %merge222
else221:
  br label %merge222
merge222:
  br label %merge219
else218:
  br label %merge219
merge219:
  %t934 = load { i64, i8* }*, { i64, i8* }** %t920
  store { i64, i8* }* %t934, { i64, i8* }** %t935
  %t936 = load { i64, i8* }*, { i64, i8* }** %t920
  %t937 = call i64 @nyx_array_length({ i64, i8* }* %t936)
  %t938 = icmp eq i64 %t937, 1
  br i1 %t938, label %then223, label %else224
then223:
  %t939 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t939, { i64, i8* }** %t935
  br label %merge225
else224:
  br label %merge225
merge225:
  %t940 = load { i64, i8* }*, { i64, i8* }** %t935
  %t941 = load %nyx_string*, %nyx_string** %source.ptr
  %t942 = call { i64, i8* }* @check_unused_imports({ i64, i8* }* %t940, %nyx_string* %t941)
  store { i64, i8* }* %t942, { i64, i8* }** %t943
  store i64 0, i64* %t944
  br label %while_cond226
while_cond226:
  %t945 = load i64, i64* %t944
  %t946 = load { i64, i8* }*, { i64, i8* }** %t943
  %t947 = call i64 @nyx_array_length({ i64, i8* }* %t946)
  %t948 = icmp slt i64 %t945, %t947
  br i1 %t948, label %while_body227, label %while_end228
while_body227:
  %t949 = load { i64, i8* }*, { i64, i8* }** %t943
  %t950 = load i64, i64* %t944
  %t951 = getelementptr [9 x i8], [9 x i8]* @.slotT53, i32 0, i32 0
  %t952 = call i64 @nyx_slot_as_value_checked({ i64, i8* }* %t949, i64 %t950, i8* %t951)
  %t953 = inttoptr i64 %t952 to %VetIssue*
  %t954 = load %VetIssue, %VetIssue* %t953
  store %VetIssue %t954, %VetIssue* %t955
  %t956 = load { i64, i8* }*, { i64, i8* }** %t892
  %t957 = load %VetIssue, %VetIssue* %t955
  %t958 = getelementptr %VetIssue, %VetIssue* null, i32 1
  %t959 = ptrtoint %VetIssue* %t958 to i64
  %t960 = call i8* @GC_malloc(i64 %t959)
  %t961 = bitcast i8* %t960 to %VetIssue*
  store %VetIssue %t957, %VetIssue* %t961
  %t962 = ptrtoint %VetIssue* %t961 to i64
  call void @nyx_array_push({ i64, i8* }* %t956, i64 %t962)
  %t963 = load i64, i64* %t944
  %t964 = add i64 %t963, 1
  store i64 %t964, i64* %t944
  br label %while_cond226
while_end228:
  %t965 = load { i64, i8* }*, { i64, i8* }** %t922
  %t966 = load %nyx_string*, %nyx_string** %source.ptr
  %t967 = call { i64, i8* }* @check_bare_fn_result_used({ i64, i8* }* %t965, %nyx_string* %t966)
  store { i64, i8* }* %t967, { i64, i8* }** %t968
  store i64 0, i64* %t969
  br label %while_cond229
while_cond229:
  %t970 = load i64, i64* %t969
  %t971 = load { i64, i8* }*, { i64, i8* }** %t968
  %t972 = call i64 @nyx_array_length({ i64, i8* }* %t971)
  %t973 = icmp slt i64 %t970, %t972
  br i1 %t973, label %while_body230, label %while_end231
while_body230:
  %t974 = load { i64, i8* }*, { i64, i8* }** %t968
  %t975 = load i64, i64* %t969
  %t976 = getelementptr [9 x i8], [9 x i8]* @.slotT54, i32 0, i32 0
  %t977 = call i64 @nyx_slot_as_value_checked({ i64, i8* }* %t974, i64 %t975, i8* %t976)
  %t978 = inttoptr i64 %t977 to %VetIssue*
  %t979 = load %VetIssue, %VetIssue* %t978
  store %VetIssue %t979, %VetIssue* %t980
  %t981 = load { i64, i8* }*, { i64, i8* }** %t892
  %t982 = load %VetIssue, %VetIssue* %t980
  %t983 = getelementptr %VetIssue, %VetIssue* null, i32 1
  %t984 = ptrtoint %VetIssue* %t983 to i64
  %t985 = call i8* @GC_malloc(i64 %t984)
  %t986 = bitcast i8* %t985 to %VetIssue*
  store %VetIssue %t982, %VetIssue* %t986
  %t987 = ptrtoint %VetIssue* %t986 to i64
  call void @nyx_array_push({ i64, i8* }* %t981, i64 %t987)
  %t988 = load i64, i64* %t969
  %t989 = add i64 %t988, 1
  store i64 %t989, i64* %t969
  br label %while_cond229
while_end231:
  %t990 = load { i64, i8* }*, { i64, i8* }** %t935
  %t991 = call { i64, i8* }* @check_dead_code({ i64, i8* }* %t990)
  store { i64, i8* }* %t991, { i64, i8* }** %t992
  store i64 0, i64* %t993
  br label %while_cond232
while_cond232:
  %t994 = load i64, i64* %t993
  %t995 = load { i64, i8* }*, { i64, i8* }** %t992
  %t996 = call i64 @nyx_array_length({ i64, i8* }* %t995)
  %t997 = icmp slt i64 %t994, %t996
  br i1 %t997, label %while_body233, label %while_end234
while_body233:
  %t998 = load { i64, i8* }*, { i64, i8* }** %t992
  %t999 = load i64, i64* %t993
  %t1000 = getelementptr [9 x i8], [9 x i8]* @.slotT55, i32 0, i32 0
  %t1001 = call i64 @nyx_slot_as_value_checked({ i64, i8* }* %t998, i64 %t999, i8* %t1000)
  %t1002 = inttoptr i64 %t1001 to %VetIssue*
  %t1003 = load %VetIssue, %VetIssue* %t1002
  store %VetIssue %t1003, %VetIssue* %t1004
  %t1005 = load { i64, i8* }*, { i64, i8* }** %t892
  %t1006 = load %VetIssue, %VetIssue* %t1004
  %t1007 = getelementptr %VetIssue, %VetIssue* null, i32 1
  %t1008 = ptrtoint %VetIssue* %t1007 to i64
  %t1009 = call i8* @GC_malloc(i64 %t1008)
  %t1010 = bitcast i8* %t1009 to %VetIssue*
  store %VetIssue %t1006, %VetIssue* %t1010
  %t1011 = ptrtoint %VetIssue* %t1010 to i64
  call void @nyx_array_push({ i64, i8* }* %t1005, i64 %t1011)
  %t1012 = load i64, i64* %t993
  %t1013 = add i64 %t1012, 1
  store i64 %t1013, i64* %t993
  br label %while_cond232
while_end234:
  store i64 0, i64* %t1014
  %t1015 = getelementptr [9 x i8], [9 x i8]* @.str56, i32 0, i32 0
  %t1016 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str56.c, i8* %t1015, i64 8)
  store %nyx_string* %t1016, %nyx_string** %t1017
  %t1018 = getelementptr [4 x i8], [4 x i8]* @.str57, i32 0, i32 0
  %t1019 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str57.c, i8* %t1018, i64 3)
  store %nyx_string* %t1019, %nyx_string** %t1020
  %t1021 = getelementptr [4 x i8], [4 x i8]* @.str58, i32 0, i32 0
  %t1022 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str58.c, i8* %t1021, i64 3)
  store %nyx_string* %t1022, %nyx_string** %t1023
  %t1024 = getelementptr [2 x i8], [2 x i8]* @.str59, i32 0, i32 0
  %t1025 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str59.c, i8* %t1024, i64 1)
  store %nyx_string* %t1025, %nyx_string** %t1026
  %t1027 = getelementptr [8 x i8], [8 x i8]* @.str60, i32 0, i32 0
  %t1028 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str60.c, i8* %t1027, i64 7)
  store %nyx_string* %t1028, %nyx_string** %t1029
  %t1030 = getelementptr [5 x i8], [5 x i8]* @.str61, i32 0, i32 0
  %t1031 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str61.c, i8* %t1030, i64 4)
  store %nyx_string* %t1031, %nyx_string** %t1032
  %t1033 = getelementptr [11 x i8], [11 x i8]* @.str62, i32 0, i32 0
  %t1034 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str62.c, i8* %t1033, i64 10)
  store %nyx_string* %t1034, %nyx_string** %t1035
  %t1036 = getelementptr [38 x i8], [38 x i8]* @.str63, i32 0, i32 0
  %t1037 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str63.c, i8* %t1036, i64 37)
  store %nyx_string* %t1037, %nyx_string** %t1038
  %t1039 = getelementptr [2 x i8], [2 x i8]* @.str64, i32 0, i32 0
  %t1040 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str64.c, i8* %t1039, i64 1)
  store %nyx_string* %t1040, %nyx_string** %t1041
  br label %while_cond235
while_cond235:
  %t1042 = load i64, i64* %t1014
  %t1043 = load { i64, i8* }*, { i64, i8* }** %t935
  %t1044 = call i64 @nyx_array_length({ i64, i8* }* %t1043)
  %t1045 = icmp slt i64 %t1042, %t1044
  br i1 %t1045, label %while_body236, label %while_end237
while_body236:
  %t1046 = load { i64, i8* }*, { i64, i8* }** %t935
  %t1047 = load i64, i64* %t1014
  %t1048 = call i64 @nyx_array_get({ i64, i8* }* %t1046, i64 %t1047)
  %t1049 = inttoptr i64 %t1048 to { i64, i8* }*
  store { i64, i8* }* %t1049, { i64, i8* }** %t1050
  %t1051 = load { i64, i8* }*, { i64, i8* }** %t1050
  %t1052 = call i64 @nyx_array_get_checked({ i64, i8* }* %t1051, i64 0, i64 2)
  %t1053 = inttoptr i64 %t1052 to %nyx_string*
  store %nyx_string* %t1053, %nyx_string** %t1054
  %t1055 = load %nyx_string*, %nyx_string** %t1054
  %t1056 = load %nyx_string*, %nyx_string** %t1017
  %t1057 = call i1 @nyx_string_equals(%nyx_string* %t1055, %nyx_string* %t1056)
  br i1 %t1057, label %then238, label %else239
then238:
  %t1058 = load { i64, i8* }*, { i64, i8* }** %t1050
  %t1059 = call i64 @nyx_array_get({ i64, i8* }* %t1058, i64 1)
  %t1060 = inttoptr i64 %t1059 to { i64, i8* }*
  store { i64, i8* }* %t1060, { i64, i8* }** %t1061
  %t1062 = load { i64, i8* }*, { i64, i8* }** %t1061
  %t1063 = call i64 @nyx_array_get({ i64, i8* }* %t1062, i64 3)
  %t1064 = inttoptr i64 %t1063 to { i64, i8* }*
  store { i64, i8* }* %t1064, { i64, i8* }** %t1065
  %t1066 = load { i64, i8* }*, { i64, i8* }** %t1065
  %t1067 = call i64 @nyx_array_get({ i64, i8* }* %t1066, i64 1)
  %t1068 = inttoptr i64 %t1067 to { i64, i8* }*
  store { i64, i8* }* %t1068, { i64, i8* }** %t1069
  store i64 0, i64* %t1070
  br label %while_cond241
while_cond241:
  %t1071 = load i64, i64* %t1070
  %t1072 = load { i64, i8* }*, { i64, i8* }** %t1069
  %t1073 = call i64 @nyx_array_length({ i64, i8* }* %t1072)
  %t1074 = icmp slt i64 %t1071, %t1073
  br i1 %t1074, label %while_body242, label %while_end243
while_body242:
  %t1075 = load { i64, i8* }*, { i64, i8* }** %t1069
  %t1076 = load i64, i64* %t1070
  %t1077 = call i64 @nyx_array_get({ i64, i8* }* %t1075, i64 %t1076)
  %t1078 = inttoptr i64 %t1077 to { i64, i8* }*
  store { i64, i8* }* %t1078, { i64, i8* }** %t1079
  %t1080 = load { i64, i8* }*, { i64, i8* }** %t1079
  %t1081 = call i64 @nyx_array_get_checked({ i64, i8* }* %t1080, i64 0, i64 2)
  %t1082 = inttoptr i64 %t1081 to %nyx_string*
  store %nyx_string* %t1082, %nyx_string** %t1083
  store i1 true, i1* %t1084
  %t1085 = load %nyx_string*, %nyx_string** %t1083
  %t1086 = load %nyx_string*, %nyx_string** %t1020
  %t1087 = call i1 @nyx_string_equals(%nyx_string* %t1085, %nyx_string* %t1086)
  br i1 %t1087, label %sc_or_end245, label %sc_or_rhs244
sc_or_rhs244:
  %t1088 = load %nyx_string*, %nyx_string** %t1083
  %t1089 = load %nyx_string*, %nyx_string** %t1023
  %t1090 = call i1 @nyx_string_equals(%nyx_string* %t1088, %nyx_string* %t1089)
  store i1 %t1090, i1* %t1084
  br label %sc_or_end245
sc_or_end245:
  %t1091 = load i1, i1* %t1084
  br i1 %t1091, label %then246, label %else247
then246:
  %t1092 = load { i64, i8* }*, { i64, i8* }** %t1079
  %t1093 = call i64 @nyx_array_get({ i64, i8* }* %t1092, i64 1)
  %t1094 = inttoptr i64 %t1093 to { i64, i8* }*
  store { i64, i8* }* %t1094, { i64, i8* }** %t1095
  %t1096 = load { i64, i8* }*, { i64, i8* }** %t1095
  %t1097 = call i64 @nyx_array_get({ i64, i8* }* %t1096, i64 0)
  %t1098 = inttoptr i64 %t1097 to { i64, i8* }*
  store { i64, i8* }* %t1098, { i64, i8* }** %t1099
  %t1100 = load { i64, i8* }*, { i64, i8* }** %t1099
  %t1101 = call i64 @nyx_array_get_checked({ i64, i8* }* %t1100, i64 0, i64 2)
  %t1102 = inttoptr i64 %t1101 to %nyx_string*
  store %nyx_string* %t1102, %nyx_string** %t1103
  %t1104 = load %nyx_string*, %nyx_string** %t1103
  %t1105 = load %nyx_string*, %nyx_string** %t1026
  %t1106 = call i1 @nyx_string_starts_with(%nyx_string* %t1104, %nyx_string* %t1105)
  %t1107 = xor i1 %t1106, true
  br i1 %t1107, label %then249, label %else250
then249:
  %t1108 = load %nyx_string*, %nyx_string** %t1103
  %t1109 = load %nyx_string*, %nyx_string** %source.ptr
  %t1110 = call i1 @name_used_in_source(%nyx_string* %t1108, %nyx_string* %t1109)
  store i1 %t1110, i1* %t1111
  %t1112 = load i1, i1* %t1111
  %t1113 = xor i1 %t1112, true
  br i1 %t1113, label %then252, label %else253
then252:
  %t1114 = load { i64, i8* }*, { i64, i8* }** %t1061
  %t1115 = call i64 @nyx_array_get_checked({ i64, i8* }* %t1114, i64 0, i64 2)
  %t1116 = inttoptr i64 %t1115 to %nyx_string*
  store %nyx_string* %t1116, %nyx_string** %t1117
  %t1118 = load %nyx_string*, %nyx_string** %t1029
  %t1119 = load %nyx_string*, %nyx_string** %t1032
  %t1120 = load %nyx_string*, %nyx_string** %t1035
  %t1121 = load %nyx_string*, %nyx_string** %t1103
  %t1122 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1120, %nyx_string* %t1121)
  %t1123 = load %nyx_string*, %nyx_string** %t1038
  %t1124 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1122, %nyx_string* %t1123)
  %t1125 = load %nyx_string*, %nyx_string** %t1117
  %t1126 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1124, %nyx_string* %t1125)
  %t1127 = load %nyx_string*, %nyx_string** %t1041
  %t1128 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1126, %nyx_string* %t1127)
  %t1129 = call %VetIssue @make_issue(%nyx_string* %t1118, %nyx_string* %t1119, %nyx_string* %t1128, i64 0)
  store %VetIssue %t1129, %VetIssue* %t1130
  %t1131 = load { i64, i8* }*, { i64, i8* }** %t892
  %t1132 = load %VetIssue, %VetIssue* %t1130
  %t1133 = getelementptr %VetIssue, %VetIssue* null, i32 1
  %t1134 = ptrtoint %VetIssue* %t1133 to i64
  %t1135 = call i8* @GC_malloc(i64 %t1134)
  %t1136 = bitcast i8* %t1135 to %VetIssue*
  store %VetIssue %t1132, %VetIssue* %t1136
  %t1137 = ptrtoint %VetIssue* %t1136 to i64
  call void @nyx_array_push({ i64, i8* }* %t1131, i64 %t1137)
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
  %t1138 = load i64, i64* %t1070
  %t1139 = add i64 %t1138, 1
  store i64 %t1139, i64* %t1070
  br label %while_cond241
while_end243:
  br label %merge240
else239:
  br label %merge240
merge240:
  %t1140 = load i64, i64* %t1014
  %t1141 = add i64 %t1140, 1
  store i64 %t1141, i64* %t1014
  br label %while_cond235
while_end237:
  %t1142 = load { i64, i8* }*, { i64, i8* }** %t892
  ret { i64, i8* }* %t1142
}

define i64 @main(
i32 %argc, i8** %argv) {
  %t1150 = alloca %nyx_string*
  %t1156 = alloca { i64, i8* }*
  %t1163 = alloca %nyx_string*
  %t1190 = alloca %nyx_string*
  %t1196 = alloca { i64, i8* }*
  %t1203 = alloca { i64, i8* }*
  %t1210 = alloca { i64, i8* }*
  %t1213 = alloca { i64, i8* }*
  %t1216 = alloca i64
  %t1228 = alloca i64
  %t1238 = alloca %VetIssue
  call void @nyx_set_args(i32 %argc, i8** %argv)
  %t1143 = getelementptr [23 x i8], [23 x i8]* @.str65, i32 0, i32 0
  %t1144 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str65.c, i8* %t1143, i64 22)
  %t1145 = call i8* @nyx_string_to_cstr(%nyx_string* %t1144)
  call void @nyx_print_string(i8* %t1145)
  %t1146 = getelementptr [8 x i8], [8 x i8]* @.str66, i32 0, i32 0
  %t1147 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str66.c, i8* %t1146, i64 7)
  %t1148 = call i8* @nyx_string_to_cstr(%nyx_string* %t1147)
  %t1149 = call %nyx_string* @nyx_getenv(i8* %t1148)
  store %nyx_string* %t1149, %nyx_string** %t1150
  %t1151 = load %nyx_string*, %nyx_string** %t1150
  %t1152 = getelementptr [1 x i8], [1 x i8]* @.str67, i32 0, i32 0
  %t1153 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str67.c, i8* %t1152, i64 0)
  %t1154 = call i1 @nyx_string_equals(%nyx_string* %t1151, %nyx_string* %t1153)
  br i1 %t1154, label %then255, label %else256
then255:
  %t1155 = call { i64, i8* }* @nyx_get_args()
  store { i64, i8* }* %t1155, { i64, i8* }** %t1156
  %t1157 = load { i64, i8* }*, { i64, i8* }** %t1156
  %t1158 = call i64 @nyx_array_length({ i64, i8* }* %t1157)
  %t1159 = icmp sgt i64 %t1158, 1
  br i1 %t1159, label %then258, label %else259
then258:
  %t1160 = load { i64, i8* }*, { i64, i8* }** %t1156
  %t1161 = call i64 @nyx_array_get_checked({ i64, i8* }* %t1160, i64 1, i64 2)
  %t1162 = inttoptr i64 %t1161 to %nyx_string*
  store %nyx_string* %t1162, %nyx_string** %t1163
  %t1164 = load %nyx_string*, %nyx_string** %t1163
  store %nyx_string* %t1164, %nyx_string** %t1150
  br label %merge260
else259:
  br label %merge260
merge260:
  br label %merge257
else256:
  br label %merge257
merge257:
  %t1165 = load %nyx_string*, %nyx_string** %t1150
  %t1166 = getelementptr [1 x i8], [1 x i8]* @.str68, i32 0, i32 0
  %t1167 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str68.c, i8* %t1166, i64 0)
  %t1168 = call i1 @nyx_string_equals(%nyx_string* %t1165, %nyx_string* %t1167)
  br i1 %t1168, label %then261, label %else262
then261:
  %t1169 = getelementptr [62 x i8], [62 x i8]* @.str69, i32 0, i32 0
  %t1170 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str69.c, i8* %t1169, i64 61)
  %t1171 = call i8* @nyx_string_to_cstr(%nyx_string* %t1170)
  call void @nyx_print_string(i8* %t1171)
  ret i64 1
else262:
  br label %merge263
merge263:
  %t1172 = load %nyx_string*, %nyx_string** %t1150
  %t1173 = call i8* @nyx_string_to_cstr(%nyx_string* %t1172)
  %t1174 = call i1 @nyx_file_exists(i8* %t1173)
  %t1175 = icmp eq i1 %t1174, 0
  br i1 %t1175, label %then264, label %else265
then264:
  %t1176 = getelementptr [33 x i8], [33 x i8]* @.str70, i32 0, i32 0
  %t1177 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str70.c, i8* %t1176, i64 32)
  %t1178 = load %nyx_string*, %nyx_string** %t1150
  %t1179 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1177, %nyx_string* %t1178)
  %t1180 = getelementptr [3 x i8], [3 x i8]* @.str71, i32 0, i32 0
  %t1181 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str71.c, i8* %t1180, i64 2)
  %t1182 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1179, %nyx_string* %t1181)
  %t1183 = call i8* @nyx_string_to_cstr(%nyx_string* %t1182)
  call void @nyx_print_string(i8* %t1183)
  %t1184 = getelementptr [62 x i8], [62 x i8]* @.str72, i32 0, i32 0
  %t1185 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str72.c, i8* %t1184, i64 61)
  %t1186 = call i8* @nyx_string_to_cstr(%nyx_string* %t1185)
  call void @nyx_print_string(i8* %t1186)
  ret i64 1
else265:
  br label %merge266
merge266:
  %t1187 = load %nyx_string*, %nyx_string** %t1150
  %t1188 = call i8* @nyx_string_to_cstr(%nyx_string* %t1187)
  %t1189 = call %nyx_string* @nyx_read_file(i8* %t1188)
  store %nyx_string* %t1189, %nyx_string** %t1190
  %t1191 = getelementptr [20 x i8], [20 x i8]* @.str73, i32 0, i32 0
  %t1192 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str73.c, i8* %t1191, i64 19)
  %t1193 = call i8* @nyx_string_to_cstr(%nyx_string* %t1192)
  call void @nyx_print_string(i8* %t1193)
  %t1194 = load %nyx_string*, %nyx_string** %t1190
  %t1195 = call { i64, i8* }* @tokenize(%nyx_string* %t1194)
  store { i64, i8* }* %t1195, { i64, i8* }** %t1196
  %t1197 = getelementptr [17 x i8], [17 x i8]* @.str74, i32 0, i32 0
  %t1198 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str74.c, i8* %t1197, i64 16)
  %t1199 = call i8* @nyx_string_to_cstr(%nyx_string* %t1198)
  call void @nyx_print_string(i8* %t1199)
  %t1200 = load { i64, i8* }*, { i64, i8* }** %t1196
  %t1201 = load %nyx_string*, %nyx_string** %t1190
  %t1202 = call { i64, i8* }* @parse({ i64, i8* }* %t1200, %nyx_string* %t1201)
  store { i64, i8* }* %t1202, { i64, i8* }** %t1203
  %t1204 = getelementptr [19 x i8], [19 x i8]* @.str75, i32 0, i32 0
  %t1205 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str75.c, i8* %t1204, i64 18)
  %t1206 = call i8* @nyx_string_to_cstr(%nyx_string* %t1205)
  call void @nyx_print_string(i8* %t1206)
  %t1207 = load %nyx_string*, %nyx_string** %t1190
  %t1208 = load { i64, i8* }*, { i64, i8* }** %t1203
  %t1209 = call { i64, i8* }* @vet_source(%nyx_string* %t1207, { i64, i8* }* %t1208)
  store { i64, i8* }* %t1209, { i64, i8* }** %t1210
  %t1211 = load { i64, i8* }*, { i64, i8* }** %t1210
  %t1212 = call { i64, i8* }* @sort_issues_by_line({ i64, i8* }* %t1211)
  store { i64, i8* }* %t1212, { i64, i8* }** %t1213
  %t1214 = load { i64, i8* }*, { i64, i8* }** %t1213
  %t1215 = call i64 @nyx_array_length({ i64, i8* }* %t1214)
  store i64 %t1215, i64* %t1216
  %t1217 = load i64, i64* %t1216
  %t1218 = icmp eq i64 %t1217, 0
  br i1 %t1218, label %then267, label %else268
then267:
  %t1219 = getelementptr [20 x i8], [20 x i8]* @.str76, i32 0, i32 0
  %t1220 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str76.c, i8* %t1219, i64 19)
  %t1221 = call i8* @nyx_string_to_cstr(%nyx_string* %t1220)
  call void @nyx_print_string(i8* %t1221)
  br label %merge269
else268:
  %t1222 = load i64, i64* %t1216
  %t1223 = call %nyx_string* @nyx_string_from_int(i64 %t1222)
  %t1224 = getelementptr [17 x i8], [17 x i8]* @.str77, i32 0, i32 0
  %t1225 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str77.c, i8* %t1224, i64 16)
  %t1226 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1223, %nyx_string* %t1225)
  %t1227 = call i8* @nyx_string_to_cstr(%nyx_string* %t1226)
  call void @nyx_print_string(i8* %t1227)
  store i64 0, i64* %t1228
  br label %while_cond270
while_cond270:
  %t1229 = load i64, i64* %t1228
  %t1230 = load i64, i64* %t1216
  %t1231 = icmp slt i64 %t1229, %t1230
  br i1 %t1231, label %while_body271, label %while_end272
while_body271:
  %t1232 = load { i64, i8* }*, { i64, i8* }** %t1213
  %t1233 = load i64, i64* %t1228
  %t1234 = getelementptr [9 x i8], [9 x i8]* @.slotT78, i32 0, i32 0
  %t1235 = call i64 @nyx_slot_as_value_checked({ i64, i8* }* %t1232, i64 %t1233, i8* %t1234)
  %t1236 = inttoptr i64 %t1235 to %VetIssue*
  %t1237 = load %VetIssue, %VetIssue* %t1236
  store %VetIssue %t1237, %VetIssue* %t1238
  %t1239 = load %VetIssue, %VetIssue* %t1238
  %t1240 = load %nyx_string*, %nyx_string** %t1150
  %t1241 = call i64 @print_issue(%VetIssue %t1239, %nyx_string* %t1240)
  %t1242 = load i64, i64* %t1228
  %t1243 = add i64 %t1242, 1
  store i64 %t1243, i64* %t1228
  br label %while_cond270
while_end272:
  br label %merge269
merge269:
  %t1244 = getelementptr [6 x i8], [6 x i8]* @.str79, i32 0, i32 0
  %t1245 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str79.c, i8* %t1244, i64 5)
  %t1246 = call i8* @nyx_string_to_cstr(%nyx_string* %t1245)
  call void @nyx_print_string(i8* %t1246)
  ret i64 0
}


attributes #0 = { returns_twice }

