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
@.str15 = private unnamed_addr constant [9 x i8] c"let_decl\00"
@.str15.c = internal global %nyx_string* null
@.str16 = private unnamed_addr constant [9 x i8] c"var_decl\00"
@.str16.c = internal global %nyx_string* null
@.str17 = private unnamed_addr constant [2 x i8] c"(\00"
@.str17.c = internal global %nyx_string* null
@.str18 = private unnamed_addr constant [1 x i8] c"\00"
@.str18.c = internal global %nyx_string* null
@.str19 = private unnamed_addr constant [13 x i8] c"__declline__\00"
@.str19.c = internal global %nyx_string* null
@.str20 = private unnamed_addr constant [13 x i8] c"__declline__\00"
@.str20.c = internal global %nyx_string* null
@.str21 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str21.c = internal global %nyx_string* null
@.str22 = private unnamed_addr constant [7 x i8] c"export\00"
@.str22.c = internal global %nyx_string* null
@.str23 = private unnamed_addr constant [9 x i8] c"function\00"
@.str23.c = internal global %nyx_string* null
@.str24 = private unnamed_addr constant [4 x i8] c"fn \00"
@.str24.c = internal global %nyx_string* null
@.str25 = private unnamed_addr constant [8 x i8] c"pub fn \00"
@.str25.c = internal global %nyx_string* null
@.str26 = private unnamed_addr constant [3 x i8] c"Fn\00"
@.str26.c = internal global %nyx_string* null
@.str27 = private unnamed_addr constant [8 x i8] c"warning\00"
@.str27.c = internal global %nyx_string* null
@.str28 = private unnamed_addr constant [5 x i8] c"W004\00"
@.str28.c = internal global %nyx_string* null
@.str29 = private unnamed_addr constant [2 x i8] c"'\00"
@.str29.c = internal global %nyx_string* null
@.str30 = private unnamed_addr constant [61 x i8] c"' is declared bare `Fn` and its call result is used on line \00"
@.str30.c = internal global %nyx_string* null
@.str31 = private unnamed_addr constant [182 x i8] c": a Fn value without a signature is called assuming an i64 return, so a callback returning a struct crashes and one returning float returns garbage — declare the signature, e.g. `\00"
@.str31.c = internal global %nyx_string* null
@.str32 = private unnamed_addr constant [14 x i8] c": Fn(T) -> R`\00"
@.str32.c = internal global %nyx_string* null
@.str33 = private unnamed_addr constant [1 x i8] c"\00"
@.str33.c = internal global %nyx_string* null
@.str34 = private unnamed_addr constant [8 x i8] c"warning\00"
@.str34.c = internal global %nyx_string* null
@.str35 = private unnamed_addr constant [5 x i8] c"W003\00"
@.str35.c = internal global %nyx_string* null
@.str36 = private unnamed_addr constant [25 x i8] c"unreachable code after '\00"
@.str36.c = internal global %nyx_string* null
@.str37 = private unnamed_addr constant [11 x i8] c"' on line \00"
@.str37.c = internal global %nyx_string* null
@.str38 = private unnamed_addr constant [7 x i8] c"return\00"
@.str38.c = internal global %nyx_string* null
@.str39 = private unnamed_addr constant [6 x i8] c"break\00"
@.str39.c = internal global %nyx_string* null
@.str40 = private unnamed_addr constant [9 x i8] c"continue\00"
@.str40.c = internal global %nyx_string* null
@.str41 = private unnamed_addr constant [9 x i8] c"function\00"
@.str41.c = internal global %nyx_string* null
@.str42 = private unnamed_addr constant [5 x i8] c"main\00"
@.str42.c = internal global %nyx_string* null
@.str43 = private unnamed_addr constant [14 x i8] c"import_module\00"
@.str43.c = internal global %nyx_string* null
@.str44 = private unnamed_addr constant [1 x i8] c"\00"
@.str44.c = internal global %nyx_string* null
@.str45 = private unnamed_addr constant [2 x i8] c".\00"
@.str45.c = internal global %nyx_string* null
@.str46 = private unnamed_addr constant [8 x i8] c"warning\00"
@.str46.c = internal global %nyx_string* null
@.str47 = private unnamed_addr constant [5 x i8] c"W002\00"
@.str47.c = internal global %nyx_string* null
@.str48 = private unnamed_addr constant [18 x i8] c"imported module '\00"
@.str48.c = internal global %nyx_string* null
@.str49 = private unnamed_addr constant [14 x i8] c"' is not used\00"
@.str49.c = internal global %nyx_string* null
@.str50 = private unnamed_addr constant [9 x i8] c"function\00"
@.str50.c = internal global %nyx_string* null
@.str51 = private unnamed_addr constant [4 x i8] c"let\00"
@.str51.c = internal global %nyx_string* null
@.str52 = private unnamed_addr constant [4 x i8] c"var\00"
@.str52.c = internal global %nyx_string* null
@.str53 = private unnamed_addr constant [2 x i8] c"_\00"
@.str53.c = internal global %nyx_string* null
@.str54 = private unnamed_addr constant [8 x i8] c"warning\00"
@.str54.c = internal global %nyx_string* null
@.str55 = private unnamed_addr constant [5 x i8] c"W001\00"
@.str55.c = internal global %nyx_string* null
@.str56 = private unnamed_addr constant [11 x i8] c"variable '\00"
@.str56.c = internal global %nyx_string* null
@.str57 = private unnamed_addr constant [38 x i8] c"' declared but not used in function '\00"
@.str57.c = internal global %nyx_string* null
@.str58 = private unnamed_addr constant [2 x i8] c"'\00"
@.str58.c = internal global %nyx_string* null
@.str59 = private unnamed_addr constant [23 x i8] c"=== Nyx Vet v1.8.0 ===\00"
@.str59.c = internal global %nyx_string* null
@.str60 = private unnamed_addr constant [8 x i8] c"NYX_SRC\00"
@.str60.c = internal global %nyx_string* null
@.str61 = private unnamed_addr constant [1 x i8] c"\00"
@.str61.c = internal global %nyx_string* null
@.str62 = private unnamed_addr constant [1 x i8] c"\00"
@.str62.c = internal global %nyx_string* null
@.str63 = private unnamed_addr constant [62 x i8] c"uso: nyx vet <archivo.nx>    (o NYX_SRC=<archivo.nx> nyx_vet)\00"
@.str63.c = internal global %nyx_string* null
@.str64 = private unnamed_addr constant [33 x i8] c"nyx_vet: no existe el archivo «\00"
@.str64.c = internal global %nyx_string* null
@.str65 = private unnamed_addr constant [3 x i8] c"»\00"
@.str65.c = internal global %nyx_string* null
@.str66 = private unnamed_addr constant [62 x i8] c"uso: nyx vet <archivo.nx>    (o NYX_SRC=<archivo.nx> nyx_vet)\00"
@.str66.c = internal global %nyx_string* null
@.str67 = private unnamed_addr constant [20 x i8] c"[1/3] Tokenizing...\00"
@.str67.c = internal global %nyx_string* null
@.str68 = private unnamed_addr constant [17 x i8] c"[2/3] Parsing...\00"
@.str68.c = internal global %nyx_string* null
@.str69 = private unnamed_addr constant [19 x i8] c"[3/3] Analyzing...\00"
@.str69.c = internal global %nyx_string* null
@.str70 = private unnamed_addr constant [20 x i8] c"✓ No issues found\00"
@.str70.c = internal global %nyx_string* null
@.str71 = private unnamed_addr constant [17 x i8] c" issue(s) found:\00"
@.str71.c = internal global %nyx_string* null
@.str72 = private unnamed_addr constant [6 x i8] c"Done.\00"
@.str72.c = internal global %nyx_string* null
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
declare i64 @nyx_slot_as_array_checked({ i64, i8* }*, i64)
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
  %202 = call i64 @nyx_array_get({ i64, i8* }* %200, i64 %201)
  %203 = inttoptr i64 %202 to %VetIssue*
  %204 = load %VetIssue, %VetIssue* %203
  %205 = alloca %VetIssue
  store %VetIssue %204, %VetIssue* %205
  %206 = getelementptr %VetIssue, %VetIssue* %205, i32 0, i32 3
  %207 = load i64, i64* %206
  %208 = alloca i64
  store i64 %207, i64* %208
  %209 = load i64, i64* %208
  %210 = icmp eq i64 %209, 0
  br i1 %210, label %then27, label %else28
then27:
  store i64 9223372036854775807, i64* %208
  br label %merge29
else28:
  br label %merge29
merge29:
  %211 = alloca i1
  store i1 true, i1* %211
  %212 = load i64, i64* %187
  %213 = icmp slt i64 %212, 0
  br i1 %213, label %sc_or_end31, label %sc_or_rhs30
sc_or_rhs30:
  %214 = load i64, i64* %208
  %215 = load i64, i64* %188
  %216 = icmp slt i64 %214, %215
  store i1 %216, i1* %211
  br label %sc_or_end31
sc_or_end31:
  %217 = load i1, i1* %211
  br i1 %217, label %then32, label %else33
then32:
  %218 = load i64, i64* %189
  store i64 %218, i64* %187
  %219 = load i64, i64* %208
  store i64 %219, i64* %188
  br label %merge34
else33:
  br label %merge34
merge34:
  br label %merge26
else25:
  br label %merge26
merge26:
  %220 = load i64, i64* %189
  %221 = add i64 %220, 1
  store i64 %221, i64* %189
  br label %while_cond21
while_end23:
  %222 = load { i64, i8* }*, { i64, i8* }** %issues.ptr
  %223 = load i64, i64* %187
  %224 = call i64 @nyx_array_get({ i64, i8* }* %222, i64 %223)
  %225 = inttoptr i64 %224 to %VetIssue*
  %226 = load %VetIssue, %VetIssue* %225
  %227 = alloca %VetIssue
  store %VetIssue %226, %VetIssue* %227
  %228 = load { i64, i8* }*, { i64, i8* }** %167
  %229 = load %VetIssue, %VetIssue* %227
  %230 = getelementptr %VetIssue, %VetIssue* null, i32 1
  %231 = ptrtoint %VetIssue* %230 to i64
  %232 = call i8* @GC_malloc(i64 %231)
  %233 = bitcast i8* %232 to %VetIssue*
  store %VetIssue %229, %VetIssue* %233
  %234 = ptrtoint %VetIssue* %233 to i64
  call void @nyx_array_push({ i64, i8* }* %228, i64 %234)
  %235 = load { i64, i8* }*, { i64, i8* }** %172
  %236 = load i64, i64* %187
  call void @nyx_array_set_tagged({ i64, i8* }* %235, i64 %236, i64 1, i64 1)
  %237 = load i64, i64* %181
  %238 = add i64 %237, 1
  store i64 %238, i64* %181
  br label %while_cond18
while_end20:
  %239 = load { i64, i8* }*, { i64, i8* }** %167
  ret { i64, i8* }* %239
}

define internal { i64, i8* }* @collect_declared_vars(
{ i64, i8* }* %stmts.param) {
  %stmts.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %stmts.param, { i64, i8* }** %stmts.ptr
  %240 = call { i64, i8* }* @nyx_array_new_ptr()
  %241 = alloca { i64, i8* }*
  store { i64, i8* }* %240, { i64, i8* }** %241
  %242 = alloca i64
  store i64 0, i64* %242
  %243 = getelementptr [9 x i8], [9 x i8]* @.str15, i32 0, i32 0
  %244 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str15.c, i8* %243, i64 8)
  %245 = alloca %nyx_string*
  store %nyx_string* %244, %nyx_string** %245
  %246 = getelementptr [9 x i8], [9 x i8]* @.str16, i32 0, i32 0
  %247 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str16.c, i8* %246, i64 8)
  %248 = alloca %nyx_string*
  store %nyx_string* %247, %nyx_string** %248
  %249 = call i8* @llvm.stacksave()
  br label %while_cond35
while_cond35:
  %250 = load i64, i64* %242
  %251 = load { i64, i8* }*, { i64, i8* }** %stmts.ptr
  %252 = call i64 @nyx_array_length({ i64, i8* }* %251)
  %253 = icmp slt i64 %250, %252
  br i1 %253, label %while_body36, label %while_end37
while_body36:
  call void @llvm.stackrestore(i8* %249)
  %254 = load { i64, i8* }*, { i64, i8* }** %stmts.ptr
  %255 = load i64, i64* %242
  %256 = call i64 @nyx_array_get({ i64, i8* }* %254, i64 %255)
  %257 = inttoptr i64 %256 to { i64, i8* }*
  %258 = alloca { i64, i8* }*
  store { i64, i8* }* %257, { i64, i8* }** %258
  %259 = load { i64, i8* }*, { i64, i8* }** %258
  %260 = call i64 @nyx_array_get_checked({ i64, i8* }* %259, i64 0, i64 2)
  %261 = inttoptr i64 %260 to %nyx_string*
  %262 = alloca %nyx_string*
  store %nyx_string* %261, %nyx_string** %262
  %263 = alloca i1
  store i1 true, i1* %263
  %264 = load %nyx_string*, %nyx_string** %262
  %265 = load %nyx_string*, %nyx_string** %245
  %266 = call i1 @nyx_string_equals(%nyx_string* %264, %nyx_string* %265)
  br i1 %266, label %sc_or_end39, label %sc_or_rhs38
sc_or_rhs38:
  %267 = load %nyx_string*, %nyx_string** %262
  %268 = load %nyx_string*, %nyx_string** %248
  %269 = call i1 @nyx_string_equals(%nyx_string* %267, %nyx_string* %268)
  store i1 %269, i1* %263
  br label %sc_or_end39
sc_or_end39:
  %270 = load i1, i1* %263
  br i1 %270, label %then40, label %else41
then40:
  %271 = load { i64, i8* }*, { i64, i8* }** %258
  %272 = call i64 @nyx_array_get({ i64, i8* }* %271, i64 1)
  %273 = inttoptr i64 %272 to { i64, i8* }*
  %274 = alloca { i64, i8* }*
  store { i64, i8* }* %273, { i64, i8* }** %274
  %275 = load { i64, i8* }*, { i64, i8* }** %274
  %276 = call i64 @nyx_array_get({ i64, i8* }* %275, i64 0)
  %277 = inttoptr i64 %276 to { i64, i8* }*
  %278 = alloca { i64, i8* }*
  store { i64, i8* }* %277, { i64, i8* }** %278
  %279 = load { i64, i8* }*, { i64, i8* }** %278
  %280 = call i64 @nyx_array_get_checked({ i64, i8* }* %279, i64 0, i64 2)
  %281 = inttoptr i64 %280 to %nyx_string*
  %282 = alloca %nyx_string*
  store %nyx_string* %281, %nyx_string** %282
  %283 = load { i64, i8* }*, { i64, i8* }** %241
  %284 = load %nyx_string*, %nyx_string** %282
  %285 = ptrtoint %nyx_string* %284 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %283, i64 %285, i64 2)
  br label %merge42
else41:
  br label %merge42
merge42:
  %286 = load i64, i64* %242
  %287 = add i64 %286, 1
  store i64 %287, i64* %242
  br label %while_cond35
while_end37:
  %288 = load { i64, i8* }*, { i64, i8* }** %241
  ret { i64, i8* }* %288
}

define internal i1 @name_used_in_source(
%nyx_string* %name.param, %nyx_string* %source.param) {
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %source.ptr = alloca %nyx_string*
  store %nyx_string* %source.param, %nyx_string** %source.ptr
  %289 = load %nyx_string*, %nyx_string** %source.ptr
  %290 = load %nyx_string*, %nyx_string** %name.ptr
  %291 = call { i64, i8* }* @nyx_string_split(%nyx_string* %289, %nyx_string* %290)
  %292 = alloca { i64, i8* }*
  store { i64, i8* }* %291, { i64, i8* }** %292
  %293 = load { i64, i8* }*, { i64, i8* }** %292
  %294 = call i64 @nyx_array_length({ i64, i8* }* %293)
  %295 = icmp sge i64 %294, 3
  ret i1 %295
}

define internal i1 @is_ident_byte(
i64 %c.param) {
  %c.ptr = alloca i64
  store i64 %c.param, i64* %c.ptr
  %296 = alloca i1
  store i1 false, i1* %296
  %297 = load i64, i64* %c.ptr
  %298 = icmp sge i64 %297, 97
  br i1 %298, label %sc_and_rhs43, label %sc_and_end44
sc_and_rhs43:
  %299 = load i64, i64* %c.ptr
  %300 = icmp sle i64 %299, 122
  store i1 %300, i1* %296
  br label %sc_and_end44
sc_and_end44:
  %301 = load i1, i1* %296
  br i1 %301, label %then45, label %else46
then45:
  ret i1 1
else46:
  br label %merge47
merge47:
  %302 = alloca i1
  store i1 false, i1* %302
  %303 = load i64, i64* %c.ptr
  %304 = icmp sge i64 %303, 65
  br i1 %304, label %sc_and_rhs48, label %sc_and_end49
sc_and_rhs48:
  %305 = load i64, i64* %c.ptr
  %306 = icmp sle i64 %305, 90
  store i1 %306, i1* %302
  br label %sc_and_end49
sc_and_end49:
  %307 = load i1, i1* %302
  br i1 %307, label %then50, label %else51
then50:
  ret i1 1
else51:
  br label %merge52
merge52:
  %308 = alloca i1
  store i1 false, i1* %308
  %309 = load i64, i64* %c.ptr
  %310 = icmp sge i64 %309, 48
  br i1 %310, label %sc_and_rhs53, label %sc_and_end54
sc_and_rhs53:
  %311 = load i64, i64* %c.ptr
  %312 = icmp sle i64 %311, 57
  store i1 %312, i1* %308
  br label %sc_and_end54
sc_and_end54:
  %313 = load i1, i1* %308
  br i1 %313, label %then55, label %else56
then55:
  ret i1 1
else56:
  br label %merge57
merge57:
  %314 = load i64, i64* %c.ptr
  %315 = icmp eq i64 %314, 95
  br i1 %315, label %then58, label %else59
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
  %316 = alloca i64
  store i64 0, i64* %316
  %317 = load %nyx_string*, %nyx_string** %s.ptr
  %318 = call i64 @nyx_string_byte_length(%nyx_string* %317)
  %319 = alloca i64
  store i64 %318, i64* %319
  %320 = call i8* @llvm.stacksave()
  br label %while_cond61
while_cond61:
  %321 = load i64, i64* %316
  %322 = load i64, i64* %319
  %323 = icmp slt i64 %321, %322
  br i1 %323, label %while_body62, label %while_end63
while_body62:
  call void @llvm.stackrestore(i8* %320)
  %324 = load %nyx_string*, %nyx_string** %s.ptr
  %325 = load i64, i64* %316
  %326 = call i8 @nyx_string_char_at(%nyx_string* %324, i64 %325)
  %327 = zext i8 %326 to i64
  %328 = alloca i64
  store i64 %327, i64* %328
  %329 = alloca i1
  store i1 true, i1* %329
  %330 = load i64, i64* %328
  %331 = icmp eq i64 %330, 32
  br i1 %331, label %sc_or_end65, label %sc_or_rhs64
sc_or_rhs64:
  %332 = load i64, i64* %328
  %333 = icmp eq i64 %332, 9
  store i1 %333, i1* %329
  br label %sc_or_end65
sc_or_end65:
  %334 = load i1, i1* %329
  br i1 %334, label %then66, label %else67
then66:
  %335 = load i64, i64* %316
  %336 = add i64 %335, 1
  store i64 %336, i64* %316
  br label %merge68
else67:
  br label %while_end63
merge68:
  br label %while_cond61
while_end63:
  %337 = call i8* @llvm.stacksave()
  br label %while_cond69
while_cond69:
  %338 = load i64, i64* %319
  %339 = load i64, i64* %316
  %340 = icmp sgt i64 %338, %339
  br i1 %340, label %while_body70, label %while_end71
while_body70:
  call void @llvm.stackrestore(i8* %337)
  %341 = load %nyx_string*, %nyx_string** %s.ptr
  %342 = load i64, i64* %319
  %343 = sub i64 %342, 1
  %344 = call i8 @nyx_string_char_at(%nyx_string* %341, i64 %343)
  %345 = zext i8 %344 to i64
  %346 = alloca i64
  store i64 %345, i64* %346
  %347 = alloca i1
  store i1 true, i1* %347
  %348 = load i64, i64* %346
  %349 = icmp eq i64 %348, 32
  br i1 %349, label %sc_or_end73, label %sc_or_rhs72
sc_or_rhs72:
  %350 = load i64, i64* %346
  %351 = icmp eq i64 %350, 9
  store i1 %351, i1* %347
  br label %sc_or_end73
sc_or_end73:
  %352 = load i1, i1* %347
  br i1 %352, label %then74, label %else75
then74:
  %353 = load i64, i64* %319
  %354 = sub i64 %353, 1
  store i64 %354, i64* %319
  br label %merge76
else75:
  br label %while_end71
merge76:
  br label %while_cond69
while_end71:
  %355 = load %nyx_string*, %nyx_string** %s.ptr
  %356 = load i64, i64* %316
  %357 = load i64, i64* %319
  %358 = call %nyx_string* @nyx_string_substring(%nyx_string* %355, i64 %356, i64 %357)
  ret %nyx_string* %358
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
  %359 = load %nyx_string*, %nyx_string** %name.ptr
  %360 = getelementptr [2 x i8], [2 x i8]* @.str17, i32 0, i32 0
  %361 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str17.c, i8* %360, i64 1)
  %362 = call %nyx_string* @nyx_string_concat(%nyx_string* %359, %nyx_string* %361)
  %363 = alloca %nyx_string*
  store %nyx_string* %362, %nyx_string** %363
  %364 = load %nyx_string*, %nyx_string** %363
  %365 = call i64 @nyx_string_byte_length(%nyx_string* %364)
  %366 = alloca i64
  store i64 %365, i64* %366
  %367 = load i64, i64* %ini.ptr
  %368 = alloca i64
  store i64 %367, i64* %368
  %369 = getelementptr [1 x i8], [1 x i8]* @.str18, i32 0, i32 0
  %370 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str18.c, i8* %369, i64 0)
  %371 = alloca %nyx_string*
  store %nyx_string* %370, %nyx_string** %371
  %372 = call i8* @llvm.stacksave()
  br label %while_cond77
while_cond77:
  %373 = load i64, i64* %368
  %374 = load i64, i64* %to.ptr
  %375 = icmp slt i64 %373, %374
  br i1 %375, label %while_body78, label %while_end79
while_body78:
  call void @llvm.stackrestore(i8* %372)
  %376 = load { i64, i8* }*, { i64, i8* }** %lines.ptr
  %377 = load i64, i64* %368
  %378 = call i64 @nyx_array_get_checked({ i64, i8* }* %376, i64 %377, i64 2)
  %379 = inttoptr i64 %378 to %nyx_string*
  %380 = alloca %nyx_string*
  store %nyx_string* %379, %nyx_string** %380
  %381 = load %nyx_string*, %nyx_string** %380
  %382 = call %nyx_string* @gotcha_scan_line(%nyx_string* %381)
  %383 = alloca %nyx_string*
  store %nyx_string* %382, %nyx_string** %383
  %384 = load %nyx_string*, %nyx_string** %383
  %385 = call i64 @nyx_string_byte_length(%nyx_string* %384)
  %386 = alloca i64
  store i64 %385, i64* %386
  %387 = alloca i64
  store i64 0, i64* %387
  %388 = call i8* @llvm.stacksave()
  br label %while_cond80
while_cond80:
  %389 = load i64, i64* %387
  %390 = load i64, i64* %366
  %391 = add i64 %389, %390
  %392 = load i64, i64* %386
  %393 = icmp sle i64 %391, %392
  br i1 %393, label %while_body81, label %while_end82
while_body81:
  call void @llvm.stackrestore(i8* %388)
  %394 = load %nyx_string*, %nyx_string** %383
  %395 = load i64, i64* %387
  %396 = load i64, i64* %387
  %397 = load i64, i64* %366
  %398 = add i64 %396, %397
  %399 = call %nyx_string* @nyx_string_substring(%nyx_string* %394, i64 %395, i64 %398)
  %400 = load %nyx_string*, %nyx_string** %363
  %401 = call i1 @nyx_string_equals(%nyx_string* %399, %nyx_string* %400)
  br i1 %401, label %then83, label %else84
then83:
  %402 = alloca i1
  store i1 1, i1* %402
  %403 = load i64, i64* %387
  %404 = icmp sgt i64 %403, 0
  br i1 %404, label %then86, label %else87
then86:
  %405 = load %nyx_string*, %nyx_string** %383
  %406 = load i64, i64* %387
  %407 = sub i64 %406, 1
  %408 = call i8 @nyx_string_char_at(%nyx_string* %405, i64 %407)
  %409 = zext i8 %408 to i64
  %410 = call i1 @is_ident_byte(i64 %409)
  br i1 %410, label %then89, label %else90
then89:
  store i1 0, i1* %402
  br label %merge91
else90:
  br label %merge91
merge91:
  br label %merge88
else87:
  br label %merge88
merge88:
  %411 = load i1, i1* %402
  br i1 %411, label %then92, label %else93
then92:
  %412 = load %nyx_string*, %nyx_string** %383
  %413 = load i64, i64* %387
  %414 = call %nyx_string* @nyx_string_substring(%nyx_string* %412, i64 0, i64 %413)
  %415 = call %nyx_string* @trim_spaces(%nyx_string* %414)
  %416 = alloca %nyx_string*
  store %nyx_string* %415, %nyx_string** %416
  %417 = load %nyx_string*, %nyx_string** %416
  %418 = load %nyx_string*, %nyx_string** %371
  %419 = call i1 @nyx_string_equals(%nyx_string* %417, %nyx_string* %418)
  %420 = xor i1 %419, true
  br i1 %420, label %then95, label %else96
then95:
  %421 = load %nyx_string*, %nyx_string** %416
  %422 = load %nyx_string*, %nyx_string** %416
  %423 = call i64 @nyx_string_byte_length(%nyx_string* %422)
  %424 = sub i64 %423, 1
  %425 = call i8 @nyx_string_char_at(%nyx_string* %421, i64 %424)
  %426 = zext i8 %425 to i64
  %427 = alloca i64
  store i64 %426, i64* %427
  %428 = alloca i1
  store i1 false, i1* %428
  %429 = alloca i1
  store i1 false, i1* %429
  %430 = load i64, i64* %427
  %431 = icmp ne i64 %430, 123
  br i1 %431, label %sc_and_rhs98, label %sc_and_end99
sc_and_rhs98:
  %432 = load i64, i64* %427
  %433 = icmp ne i64 %432, 59
  store i1 %433, i1* %429
  br label %sc_and_end99
sc_and_end99:
  %434 = load i1, i1* %429
  br i1 %434, label %sc_and_rhs100, label %sc_and_end101
sc_and_rhs100:
  %435 = load i64, i64* %427
  %436 = icmp ne i64 %435, 125
  store i1 %436, i1* %428
  br label %sc_and_end101
sc_and_end101:
  %437 = load i1, i1* %428
  br i1 %437, label %then102, label %else103
then102:
  %438 = load i64, i64* %368
  %439 = add i64 %438, 1
  ret i64 %439
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
  %440 = load i64, i64* %387
  %441 = add i64 %440, 1
  store i64 %441, i64* %387
  br label %while_cond80
while_end82:
  %442 = load i64, i64* %368
  %443 = add i64 %442, 1
  store i64 %443, i64* %368
  br label %while_cond77
while_end79:
  ret i64 0
}

define internal i64 @fn_decl_line(
{ i64, i8* }* %fn_data.param) {
  %fn_data.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %fn_data.param, { i64, i8* }** %fn_data.ptr
  %444 = load { i64, i8* }*, { i64, i8* }** %fn_data.ptr
  %445 = call i64 @nyx_array_length({ i64, i8* }* %444)
  %446 = icmp sge i64 %445, 9
  br i1 %446, label %then105, label %else106
then105:
  %447 = load { i64, i8* }*, { i64, i8* }** %fn_data.ptr
  %448 = call i64 @nyx_array_get({ i64, i8* }* %447, i64 8)
  %449 = inttoptr i64 %448 to { i64, i8* }*
  %450 = alloca { i64, i8* }*
  store { i64, i8* }* %449, { i64, i8* }** %450
  %451 = load { i64, i8* }*, { i64, i8* }** %450
  %452 = call i64 @nyx_array_length({ i64, i8* }* %451)
  %453 = icmp sge i64 %452, 2
  br i1 %453, label %then108, label %else109
then108:
  %454 = load { i64, i8* }*, { i64, i8* }** %450
  %455 = call i64 @nyx_array_get_checked({ i64, i8* }* %454, i64 0, i64 2)
  %456 = inttoptr i64 %455 to %nyx_string*
  %457 = alloca %nyx_string*
  store %nyx_string* %456, %nyx_string** %457
  %458 = load %nyx_string*, %nyx_string** %457
  %459 = getelementptr [13 x i8], [13 x i8]* @.str19, i32 0, i32 0
  %460 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str19.c, i8* %459, i64 12)
  %461 = call i1 @nyx_string_equals(%nyx_string* %458, %nyx_string* %460)
  br i1 %461, label %then111, label %else112
then111:
  %462 = load { i64, i8* }*, { i64, i8* }** %450
  %463 = call i64 @nyx_array_get({ i64, i8* }* %462, i64 1)
  ret i64 %463
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
  %464 = load { i64, i8* }*, { i64, i8* }** %fn_data.ptr
  %465 = call i64 @nyx_array_length({ i64, i8* }* %464)
  %466 = icmp eq i64 %465, 7
  br i1 %466, label %then114, label %else115
then114:
  %467 = load { i64, i8* }*, { i64, i8* }** %fn_data.ptr
  %468 = call i64 @nyx_array_get({ i64, i8* }* %467, i64 6)
  %469 = inttoptr i64 %468 to { i64, i8* }*
  %470 = alloca { i64, i8* }*
  store { i64, i8* }* %469, { i64, i8* }** %470
  %471 = load { i64, i8* }*, { i64, i8* }** %470
  %472 = call i64 @nyx_array_length({ i64, i8* }* %471)
  %473 = icmp sge i64 %472, 2
  br i1 %473, label %then117, label %else118
then117:
  %474 = load { i64, i8* }*, { i64, i8* }** %470
  %475 = call i64 @nyx_array_get_checked({ i64, i8* }* %474, i64 0, i64 2)
  %476 = inttoptr i64 %475 to %nyx_string*
  %477 = alloca %nyx_string*
  store %nyx_string* %476, %nyx_string** %477
  %478 = load %nyx_string*, %nyx_string** %477
  %479 = getelementptr [13 x i8], [13 x i8]* @.str20, i32 0, i32 0
  %480 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str20.c, i8* %479, i64 12)
  %481 = call i1 @nyx_string_equals(%nyx_string* %478, %nyx_string* %480)
  br i1 %481, label %then120, label %else121
then120:
  %482 = load { i64, i8* }*, { i64, i8* }** %470
  %483 = call i64 @nyx_array_get({ i64, i8* }* %482, i64 1)
  ret i64 %483
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
  %484 = call { i64, i8* }* @nyx_array_new_ptr()
  %485 = alloca { i64, i8* }*
  store { i64, i8* }* %484, { i64, i8* }** %485
  %486 = load %nyx_string*, %nyx_string** %source.ptr
  %487 = getelementptr [2 x i8], [2 x i8]* @.str21, i32 0, i32 0
  %488 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str21.c, i8* %487, i64 1)
  %489 = call { i64, i8* }* @nyx_string_split(%nyx_string* %486, %nyx_string* %488)
  %490 = alloca { i64, i8* }*
  store { i64, i8* }* %489, { i64, i8* }** %490
  %491 = load { i64, i8* }*, { i64, i8* }** %490
  %492 = call i64 @nyx_array_length({ i64, i8* }* %491)
  %493 = alloca i64
  store i64 %492, i64* %493
  %494 = alloca i64
  store i64 0, i64* %494
  %495 = getelementptr [7 x i8], [7 x i8]* @.str22, i32 0, i32 0
  %496 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str22.c, i8* %495, i64 6)
  %497 = alloca %nyx_string*
  store %nyx_string* %496, %nyx_string** %497
  %498 = getelementptr [9 x i8], [9 x i8]* @.str23, i32 0, i32 0
  %499 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str23.c, i8* %498, i64 8)
  %500 = alloca %nyx_string*
  store %nyx_string* %499, %nyx_string** %500
  %501 = getelementptr [4 x i8], [4 x i8]* @.str24, i32 0, i32 0
  %502 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str24.c, i8* %501, i64 3)
  %503 = alloca %nyx_string*
  store %nyx_string* %502, %nyx_string** %503
  %504 = getelementptr [8 x i8], [8 x i8]* @.str25, i32 0, i32 0
  %505 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str25.c, i8* %504, i64 7)
  %506 = alloca %nyx_string*
  store %nyx_string* %505, %nyx_string** %506
  %507 = getelementptr [3 x i8], [3 x i8]* @.str26, i32 0, i32 0
  %508 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str26.c, i8* %507, i64 2)
  %509 = alloca %nyx_string*
  store %nyx_string* %508, %nyx_string** %509
  %510 = getelementptr [8 x i8], [8 x i8]* @.str27, i32 0, i32 0
  %511 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str27.c, i8* %510, i64 7)
  %512 = alloca %nyx_string*
  store %nyx_string* %511, %nyx_string** %512
  %513 = getelementptr [5 x i8], [5 x i8]* @.str28, i32 0, i32 0
  %514 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str28.c, i8* %513, i64 4)
  %515 = alloca %nyx_string*
  store %nyx_string* %514, %nyx_string** %515
  %516 = getelementptr [2 x i8], [2 x i8]* @.str29, i32 0, i32 0
  %517 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str29.c, i8* %516, i64 1)
  %518 = alloca %nyx_string*
  store %nyx_string* %517, %nyx_string** %518
  %519 = getelementptr [61 x i8], [61 x i8]* @.str30, i32 0, i32 0
  %520 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str30.c, i8* %519, i64 60)
  %521 = alloca %nyx_string*
  store %nyx_string* %520, %nyx_string** %521
  %522 = getelementptr [182 x i8], [182 x i8]* @.str31, i32 0, i32 0
  %523 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str31.c, i8* %522, i64 181)
  %524 = alloca %nyx_string*
  store %nyx_string* %523, %nyx_string** %524
  %525 = getelementptr [14 x i8], [14 x i8]* @.str32, i32 0, i32 0
  %526 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str32.c, i8* %525, i64 13)
  %527 = alloca %nyx_string*
  store %nyx_string* %526, %nyx_string** %527
  %528 = getelementptr [1 x i8], [1 x i8]* @.str33, i32 0, i32 0
  %529 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str33.c, i8* %528, i64 0)
  %530 = alloca %nyx_string*
  store %nyx_string* %529, %nyx_string** %530
  %531 = call i8* @llvm.stacksave()
  br label %while_cond123
while_cond123:
  %532 = load i64, i64* %494
  %533 = load { i64, i8* }*, { i64, i8* }** %stmts.ptr
  %534 = call i64 @nyx_array_length({ i64, i8* }* %533)
  %535 = icmp slt i64 %532, %534
  br i1 %535, label %while_body124, label %while_end125
while_body124:
  call void @llvm.stackrestore(i8* %531)
  %536 = load { i64, i8* }*, { i64, i8* }** %stmts.ptr
  %537 = load i64, i64* %494
  %538 = call i64 @nyx_array_get({ i64, i8* }* %536, i64 %537)
  %539 = inttoptr i64 %538 to { i64, i8* }*
  %540 = alloca { i64, i8* }*
  store { i64, i8* }* %539, { i64, i8* }** %540
  %541 = load { i64, i8* }*, { i64, i8* }** %540
  %542 = call i64 @nyx_array_get_checked({ i64, i8* }* %541, i64 0, i64 2)
  %543 = inttoptr i64 %542 to %nyx_string*
  %544 = alloca %nyx_string*
  store %nyx_string* %543, %nyx_string** %544
  %545 = load %nyx_string*, %nyx_string** %544
  %546 = load %nyx_string*, %nyx_string** %497
  %547 = call i1 @nyx_string_equals(%nyx_string* %545, %nyx_string* %546)
  br i1 %547, label %then126, label %else127
then126:
  %548 = load { i64, i8* }*, { i64, i8* }** %540
  %549 = call i64 @nyx_array_get({ i64, i8* }* %548, i64 1)
  %550 = inttoptr i64 %549 to { i64, i8* }*
  %551 = alloca { i64, i8* }*
  store { i64, i8* }* %550, { i64, i8* }** %551
  %552 = load { i64, i8* }*, { i64, i8* }** %551
  %553 = call i64 @nyx_array_length({ i64, i8* }* %552)
  %554 = icmp sgt i64 %553, 0
  br i1 %554, label %then129, label %else130
then129:
  %555 = load { i64, i8* }*, { i64, i8* }** %551
  %556 = call i64 @nyx_array_get({ i64, i8* }* %555, i64 0)
  %557 = inttoptr i64 %556 to { i64, i8* }*
  %558 = alloca { i64, i8* }*
  store { i64, i8* }* %557, { i64, i8* }** %558
  %559 = load { i64, i8* }*, { i64, i8* }** %558
  store { i64, i8* }* %559, { i64, i8* }** %540
  %560 = load { i64, i8* }*, { i64, i8* }** %558
  %561 = call i64 @nyx_array_get({ i64, i8* }* %560, i64 0)
  %562 = inttoptr i64 %561 to %nyx_string*
  store %nyx_string* %562, %nyx_string** %544
  br label %merge131
else130:
  br label %merge131
merge131:
  br label %merge128
else127:
  br label %merge128
merge128:
  %563 = load %nyx_string*, %nyx_string** %544
  %564 = load %nyx_string*, %nyx_string** %500
  %565 = call i1 @nyx_string_equals(%nyx_string* %563, %nyx_string* %564)
  br i1 %565, label %then132, label %else133
then132:
  %566 = load { i64, i8* }*, { i64, i8* }** %540
  %567 = call i64 @nyx_array_get({ i64, i8* }* %566, i64 1)
  %568 = inttoptr i64 %567 to { i64, i8* }*
  %569 = alloca { i64, i8* }*
  store { i64, i8* }* %568, { i64, i8* }** %569
  %570 = load { i64, i8* }*, { i64, i8* }** %569
  %571 = call i64 @nyx_array_get_checked({ i64, i8* }* %570, i64 0, i64 2)
  %572 = inttoptr i64 %571 to %nyx_string*
  %573 = alloca %nyx_string*
  store %nyx_string* %572, %nyx_string** %573
  %574 = load { i64, i8* }*, { i64, i8* }** %569
  %575 = call i64 @nyx_array_get({ i64, i8* }* %574, i64 1)
  %576 = inttoptr i64 %575 to { i64, i8* }*
  %577 = alloca { i64, i8* }*
  store { i64, i8* }* %576, { i64, i8* }** %577
  %578 = load { i64, i8* }*, { i64, i8* }** %569
  %579 = call i64 @fn_decl_line({ i64, i8* }* %578)
  %580 = alloca i64
  store i64 %579, i64* %580
  %581 = load i64, i64* %493
  %582 = alloca i64
  store i64 %581, i64* %582
  %583 = load i64, i64* %580
  %584 = icmp sgt i64 %583, 0
  br i1 %584, label %then135, label %else136
then135:
  %585 = load i64, i64* %580
  %586 = alloca i64
  store i64 %585, i64* %586
  %587 = call i8* @llvm.stacksave()
  br label %while_cond138
while_cond138:
  %588 = load i64, i64* %586
  %589 = load i64, i64* %493
  %590 = icmp slt i64 %588, %589
  br i1 %590, label %while_body139, label %while_end140
while_body139:
  call void @llvm.stackrestore(i8* %587)
  %591 = load { i64, i8* }*, { i64, i8* }** %490
  %592 = load i64, i64* %586
  %593 = call i64 @nyx_array_get_checked({ i64, i8* }* %591, i64 %592, i64 2)
  %594 = inttoptr i64 %593 to %nyx_string*
  %595 = alloca %nyx_string*
  store %nyx_string* %594, %nyx_string** %595
  %596 = load %nyx_string*, %nyx_string** %595
  %597 = call i64 @nyx_string_byte_length(%nyx_string* %596)
  %598 = icmp sge i64 %597, 3
  br i1 %598, label %then141, label %else142
then141:
  %599 = load %nyx_string*, %nyx_string** %595
  %600 = call %nyx_string* @nyx_string_substring(%nyx_string* %599, i64 0, i64 3)
  %601 = load %nyx_string*, %nyx_string** %503
  %602 = call i1 @nyx_string_equals(%nyx_string* %600, %nyx_string* %601)
  br i1 %602, label %then144, label %else145
then144:
  %603 = load i64, i64* %586
  store i64 %603, i64* %582
  br label %merge146
else145:
  br label %merge146
merge146:
  br label %merge143
else142:
  br label %merge143
merge143:
  %604 = load %nyx_string*, %nyx_string** %595
  %605 = call i64 @nyx_string_byte_length(%nyx_string* %604)
  %606 = icmp sge i64 %605, 7
  br i1 %606, label %then147, label %else148
then147:
  %607 = load %nyx_string*, %nyx_string** %595
  %608 = call %nyx_string* @nyx_string_substring(%nyx_string* %607, i64 0, i64 7)
  %609 = load %nyx_string*, %nyx_string** %506
  %610 = call i1 @nyx_string_equals(%nyx_string* %608, %nyx_string* %609)
  br i1 %610, label %then150, label %else151
then150:
  %611 = load i64, i64* %586
  store i64 %611, i64* %582
  br label %merge152
else151:
  br label %merge152
merge152:
  br label %merge149
else148:
  br label %merge149
merge149:
  %612 = load i64, i64* %582
  %613 = load i64, i64* %493
  %614 = icmp ne i64 %612, %613
  br i1 %614, label %then153, label %else154
then153:
  br label %while_end140
else154:
  br label %merge155
merge155:
  %615 = load i64, i64* %586
  %616 = add i64 %615, 1
  store i64 %616, i64* %586
  br label %while_cond138
while_end140:
  br label %merge137
else136:
  br label %merge137
merge137:
  %617 = alloca i64
  store i64 0, i64* %617
  %618 = call i8* @llvm.stacksave()
  br label %while_cond156
while_cond156:
  %619 = load i64, i64* %617
  %620 = load { i64, i8* }*, { i64, i8* }** %577
  %621 = call i64 @nyx_array_length({ i64, i8* }* %620)
  %622 = icmp slt i64 %619, %621
  br i1 %622, label %while_body157, label %while_end158
while_body157:
  call void @llvm.stackrestore(i8* %618)
  %623 = load { i64, i8* }*, { i64, i8* }** %577
  %624 = load i64, i64* %617
  %625 = call i64 @nyx_array_get({ i64, i8* }* %623, i64 %624)
  %626 = inttoptr i64 %625 to { i64, i8* }*
  %627 = alloca { i64, i8* }*
  store { i64, i8* }* %626, { i64, i8* }** %627
  %628 = load { i64, i8* }*, { i64, i8* }** %627
  %629 = call i64 @nyx_array_length({ i64, i8* }* %628)
  %630 = icmp sge i64 %629, 2
  br i1 %630, label %then159, label %else160
then159:
  %631 = load { i64, i8* }*, { i64, i8* }** %627
  %632 = call i64 @nyx_array_get_checked({ i64, i8* }* %631, i64 0, i64 2)
  %633 = inttoptr i64 %632 to %nyx_string*
  %634 = alloca %nyx_string*
  store %nyx_string* %633, %nyx_string** %634
  %635 = load { i64, i8* }*, { i64, i8* }** %627
  %636 = call i64 @nyx_array_get_checked({ i64, i8* }* %635, i64 1, i64 2)
  %637 = inttoptr i64 %636 to %nyx_string*
  %638 = alloca %nyx_string*
  store %nyx_string* %637, %nyx_string** %638
  %639 = load %nyx_string*, %nyx_string** %638
  %640 = load %nyx_string*, %nyx_string** %509
  %641 = call i1 @nyx_string_equals(%nyx_string* %639, %nyx_string* %640)
  br i1 %641, label %then162, label %else163
then162:
  %642 = alloca i64
  store i64 0, i64* %642
  %643 = load i64, i64* %580
  %644 = icmp sgt i64 %643, 0
  br i1 %644, label %then165, label %else166
then165:
  %645 = load i64, i64* %580
  %646 = sub i64 %645, 1
  store i64 %646, i64* %642
  br label %merge167
else166:
  br label %merge167
merge167:
  %647 = load { i64, i8* }*, { i64, i8* }** %490
  %648 = load i64, i64* %642
  %649 = load i64, i64* %582
  %650 = load %nyx_string*, %nyx_string** %634
  %651 = call i64 @line_uses_call_result({ i64, i8* }* %647, i64 %648, i64 %649, %nyx_string* %650)
  %652 = alloca i64
  store i64 %651, i64* %652
  %653 = load i64, i64* %652
  %654 = icmp sgt i64 %653, 0
  br i1 %654, label %then168, label %else169
then168:
  %655 = load %nyx_string*, %nyx_string** %512
  %656 = load %nyx_string*, %nyx_string** %515
  %657 = load %nyx_string*, %nyx_string** %518
  %658 = load %nyx_string*, %nyx_string** %634
  %659 = call %nyx_string* @nyx_string_concat(%nyx_string* %657, %nyx_string* %658)
  %660 = load %nyx_string*, %nyx_string** %521
  %661 = call %nyx_string* @nyx_string_concat(%nyx_string* %659, %nyx_string* %660)
  %662 = load i64, i64* %652
  %663 = call %nyx_string* @nyx_string_from_int(i64 %662)
  %664 = call %nyx_string* @nyx_string_concat(%nyx_string* %661, %nyx_string* %663)
  %665 = load %nyx_string*, %nyx_string** %524
  %666 = call %nyx_string* @nyx_string_concat(%nyx_string* %664, %nyx_string* %665)
  %667 = load %nyx_string*, %nyx_string** %634
  %668 = call %nyx_string* @nyx_string_concat(%nyx_string* %666, %nyx_string* %667)
  %669 = load %nyx_string*, %nyx_string** %527
  %670 = call %nyx_string* @nyx_string_concat(%nyx_string* %668, %nyx_string* %669)
  %671 = load i64, i64* %580
  %672 = call %VetIssue @make_issue(%nyx_string* %655, %nyx_string* %656, %nyx_string* %670, i64 %671)
  %673 = alloca %VetIssue
  store %VetIssue %672, %VetIssue* %673
  %674 = load { i64, i8* }*, { i64, i8* }** %485
  %675 = load %VetIssue, %VetIssue* %673
  %676 = getelementptr %VetIssue, %VetIssue* null, i32 1
  %677 = ptrtoint %VetIssue* %676 to i64
  %678 = call i8* @GC_malloc(i64 %677)
  %679 = bitcast i8* %678 to %VetIssue*
  store %VetIssue %675, %VetIssue* %679
  %680 = ptrtoint %VetIssue* %679 to i64
  call void @nyx_array_push({ i64, i8* }* %674, i64 %680)
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
  %681 = load i64, i64* %617
  %682 = add i64 %681, 1
  store i64 %682, i64* %617
  br label %while_cond156
while_end158:
  %683 = load %nyx_string*, %nyx_string** %573
  %684 = load %nyx_string*, %nyx_string** %530
  %685 = call i1 @nyx_string_equals(%nyx_string* %683, %nyx_string* %684)
  br i1 %685, label %then171, label %else172
then171:
  br label %merge173
else172:
  br label %merge173
merge173:
  br label %merge134
else133:
  br label %merge134
merge134:
  %686 = load i64, i64* %494
  %687 = add i64 %686, 1
  store i64 %687, i64* %494
  br label %while_cond123
while_end125:
  %688 = load { i64, i8* }*, { i64, i8* }** %485
  ret { i64, i8* }* %688
}

define internal { i64, i8* }* @check_dead_code(
{ i64, i8* }* %stmts.param) {
  %stmts.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %stmts.param, { i64, i8* }** %stmts.ptr
  %689 = call { i64, i8* }* @nyx_array_new_ptr()
  %690 = alloca { i64, i8* }*
  store { i64, i8* }* %689, { i64, i8* }** %690
  %691 = alloca i64
  store i64 0, i64* %691
  %692 = alloca i1
  store i1 0, i1* %692
  %693 = alloca i64
  store i64 0, i64* %693
  %694 = getelementptr [8 x i8], [8 x i8]* @.str34, i32 0, i32 0
  %695 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str34.c, i8* %694, i64 7)
  %696 = alloca %nyx_string*
  store %nyx_string* %695, %nyx_string** %696
  %697 = getelementptr [5 x i8], [5 x i8]* @.str35, i32 0, i32 0
  %698 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str35.c, i8* %697, i64 4)
  %699 = alloca %nyx_string*
  store %nyx_string* %698, %nyx_string** %699
  %700 = getelementptr [25 x i8], [25 x i8]* @.str36, i32 0, i32 0
  %701 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str36.c, i8* %700, i64 24)
  %702 = alloca %nyx_string*
  store %nyx_string* %701, %nyx_string** %702
  %703 = getelementptr [11 x i8], [11 x i8]* @.str37, i32 0, i32 0
  %704 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str37.c, i8* %703, i64 10)
  %705 = alloca %nyx_string*
  store %nyx_string* %704, %nyx_string** %705
  %706 = getelementptr [7 x i8], [7 x i8]* @.str38, i32 0, i32 0
  %707 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str38.c, i8* %706, i64 6)
  %708 = alloca %nyx_string*
  store %nyx_string* %707, %nyx_string** %708
  %709 = getelementptr [6 x i8], [6 x i8]* @.str39, i32 0, i32 0
  %710 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str39.c, i8* %709, i64 5)
  %711 = alloca %nyx_string*
  store %nyx_string* %710, %nyx_string** %711
  %712 = getelementptr [9 x i8], [9 x i8]* @.str40, i32 0, i32 0
  %713 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str40.c, i8* %712, i64 8)
  %714 = alloca %nyx_string*
  store %nyx_string* %713, %nyx_string** %714
  %715 = call i8* @llvm.stacksave()
  br label %while_cond174
while_cond174:
  %716 = load i64, i64* %691
  %717 = load { i64, i8* }*, { i64, i8* }** %stmts.ptr
  %718 = call i64 @nyx_array_length({ i64, i8* }* %717)
  %719 = icmp slt i64 %716, %718
  br i1 %719, label %while_body175, label %while_end176
while_body175:
  call void @llvm.stackrestore(i8* %715)
  %720 = load { i64, i8* }*, { i64, i8* }** %stmts.ptr
  %721 = load i64, i64* %691
  %722 = call i64 @nyx_array_get({ i64, i8* }* %720, i64 %721)
  %723 = inttoptr i64 %722 to { i64, i8* }*
  %724 = alloca { i64, i8* }*
  store { i64, i8* }* %723, { i64, i8* }** %724
  %725 = load { i64, i8* }*, { i64, i8* }** %724
  %726 = call i64 @nyx_array_get_checked({ i64, i8* }* %725, i64 0, i64 2)
  %727 = inttoptr i64 %726 to %nyx_string*
  %728 = alloca %nyx_string*
  store %nyx_string* %727, %nyx_string** %728
  %729 = load i1, i1* %692
  br i1 %729, label %then177, label %else178
then177:
  %730 = alloca i64
  store i64 0, i64* %730
  %731 = load { i64, i8* }*, { i64, i8* }** %724
  %732 = call i64 @nyx_array_length({ i64, i8* }* %731)
  %733 = icmp sgt i64 %732, 2
  br i1 %733, label %then180, label %else181
then180:
  br label %merge182
else181:
  br label %merge182
merge182:
  %734 = load %nyx_string*, %nyx_string** %696
  %735 = load %nyx_string*, %nyx_string** %699
  %736 = load %nyx_string*, %nyx_string** %702
  %737 = load { i64, i8* }*, { i64, i8* }** %724
  %738 = call %nyx_string* @get_terminator_name({ i64, i8* }* %737)
  %739 = call %nyx_string* @nyx_string_concat(%nyx_string* %736, %nyx_string* %738)
  %740 = load %nyx_string*, %nyx_string** %705
  %741 = call %nyx_string* @nyx_string_concat(%nyx_string* %739, %nyx_string* %740)
  %742 = load i64, i64* %693
  %743 = call %nyx_string* @nyx_string_from_int(i64 %742)
  %744 = call %nyx_string* @nyx_string_concat(%nyx_string* %741, %nyx_string* %743)
  %745 = load i64, i64* %693
  %746 = call %VetIssue @make_issue(%nyx_string* %734, %nyx_string* %735, %nyx_string* %744, i64 %745)
  %747 = alloca %VetIssue
  store %VetIssue %746, %VetIssue* %747
  %748 = load { i64, i8* }*, { i64, i8* }** %690
  %749 = load %VetIssue, %VetIssue* %747
  %750 = getelementptr %VetIssue, %VetIssue* null, i32 1
  %751 = ptrtoint %VetIssue* %750 to i64
  %752 = call i8* @GC_malloc(i64 %751)
  %753 = bitcast i8* %752 to %VetIssue*
  store %VetIssue %749, %VetIssue* %753
  %754 = ptrtoint %VetIssue* %753 to i64
  call void @nyx_array_push({ i64, i8* }* %748, i64 %754)
  store i1 0, i1* %692
  br label %merge179
else178:
  br label %merge179
merge179:
  %755 = alloca i1
  store i1 true, i1* %755
  %756 = alloca i1
  store i1 true, i1* %756
  %757 = load %nyx_string*, %nyx_string** %728
  %758 = load %nyx_string*, %nyx_string** %708
  %759 = call i1 @nyx_string_equals(%nyx_string* %757, %nyx_string* %758)
  br i1 %759, label %sc_or_end184, label %sc_or_rhs183
sc_or_rhs183:
  %760 = load %nyx_string*, %nyx_string** %728
  %761 = load %nyx_string*, %nyx_string** %711
  %762 = call i1 @nyx_string_equals(%nyx_string* %760, %nyx_string* %761)
  store i1 %762, i1* %756
  br label %sc_or_end184
sc_or_end184:
  %763 = load i1, i1* %756
  br i1 %763, label %sc_or_end186, label %sc_or_rhs185
sc_or_rhs185:
  %764 = load %nyx_string*, %nyx_string** %728
  %765 = load %nyx_string*, %nyx_string** %714
  %766 = call i1 @nyx_string_equals(%nyx_string* %764, %nyx_string* %765)
  store i1 %766, i1* %755
  br label %sc_or_end186
sc_or_end186:
  %767 = load i1, i1* %755
  br i1 %767, label %then187, label %else188
then187:
  store i1 1, i1* %692
  store i64 0, i64* %693
  br label %merge189
else188:
  br label %merge189
merge189:
  %768 = load i64, i64* %691
  %769 = add i64 %768, 1
  store i64 %769, i64* %691
  br label %while_cond174
while_end176:
  %770 = load { i64, i8* }*, { i64, i8* }** %690
  ret { i64, i8* }* %770
}

define internal %nyx_string* @get_terminator_name(
{ i64, i8* }* %stmt.param) {
  %stmt.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %stmt.param, { i64, i8* }** %stmt.ptr
  %771 = load { i64, i8* }*, { i64, i8* }** %stmt.ptr
  %772 = call i64 @nyx_array_get_checked({ i64, i8* }* %771, i64 0, i64 2)
  %773 = inttoptr i64 %772 to %nyx_string*
  %774 = alloca %nyx_string*
  store %nyx_string* %773, %nyx_string** %774
  %775 = load %nyx_string*, %nyx_string** %774
  ret %nyx_string* %775
}

define internal { i64, i8* }* @collect_fn_names(
{ i64, i8* }* %stmts.param) {
  %stmts.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %stmts.param, { i64, i8* }** %stmts.ptr
  %776 = call { i64, i8* }* @nyx_array_new_ptr()
  %777 = alloca { i64, i8* }*
  store { i64, i8* }* %776, { i64, i8* }** %777
  %778 = alloca i64
  store i64 0, i64* %778
  %779 = getelementptr [9 x i8], [9 x i8]* @.str41, i32 0, i32 0
  %780 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str41.c, i8* %779, i64 8)
  %781 = alloca %nyx_string*
  store %nyx_string* %780, %nyx_string** %781
  %782 = getelementptr [5 x i8], [5 x i8]* @.str42, i32 0, i32 0
  %783 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str42.c, i8* %782, i64 4)
  %784 = alloca %nyx_string*
  store %nyx_string* %783, %nyx_string** %784
  %785 = call i8* @llvm.stacksave()
  br label %while_cond190
while_cond190:
  %786 = load i64, i64* %778
  %787 = load { i64, i8* }*, { i64, i8* }** %stmts.ptr
  %788 = call i64 @nyx_array_length({ i64, i8* }* %787)
  %789 = icmp slt i64 %786, %788
  br i1 %789, label %while_body191, label %while_end192
while_body191:
  call void @llvm.stackrestore(i8* %785)
  %790 = load { i64, i8* }*, { i64, i8* }** %stmts.ptr
  %791 = load i64, i64* %778
  %792 = call i64 @nyx_array_get({ i64, i8* }* %790, i64 %791)
  %793 = inttoptr i64 %792 to { i64, i8* }*
  %794 = alloca { i64, i8* }*
  store { i64, i8* }* %793, { i64, i8* }** %794
  %795 = load { i64, i8* }*, { i64, i8* }** %794
  %796 = call i64 @nyx_array_get_checked({ i64, i8* }* %795, i64 0, i64 2)
  %797 = inttoptr i64 %796 to %nyx_string*
  %798 = alloca %nyx_string*
  store %nyx_string* %797, %nyx_string** %798
  %799 = load %nyx_string*, %nyx_string** %798
  %800 = load %nyx_string*, %nyx_string** %781
  %801 = call i1 @nyx_string_equals(%nyx_string* %799, %nyx_string* %800)
  br i1 %801, label %then193, label %else194
then193:
  %802 = load { i64, i8* }*, { i64, i8* }** %794
  %803 = call i64 @nyx_array_get({ i64, i8* }* %802, i64 1)
  %804 = inttoptr i64 %803 to { i64, i8* }*
  %805 = alloca { i64, i8* }*
  store { i64, i8* }* %804, { i64, i8* }** %805
  %806 = load { i64, i8* }*, { i64, i8* }** %805
  %807 = call i64 @nyx_array_get_checked({ i64, i8* }* %806, i64 0, i64 2)
  %808 = inttoptr i64 %807 to %nyx_string*
  %809 = alloca %nyx_string*
  store %nyx_string* %808, %nyx_string** %809
  %810 = load %nyx_string*, %nyx_string** %809
  %811 = load %nyx_string*, %nyx_string** %784
  %812 = call i1 @nyx_string_equals(%nyx_string* %810, %nyx_string* %811)
  %813 = xor i1 %812, true
  br i1 %813, label %then196, label %else197
then196:
  %814 = load { i64, i8* }*, { i64, i8* }** %777
  %815 = load %nyx_string*, %nyx_string** %809
  %816 = ptrtoint %nyx_string* %815 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %814, i64 %816, i64 2)
  br label %merge198
else197:
  br label %merge198
merge198:
  br label %merge195
else194:
  br label %merge195
merge195:
  %817 = load i64, i64* %778
  %818 = add i64 %817, 1
  store i64 %818, i64* %778
  br label %while_cond190
while_end192:
  %819 = load { i64, i8* }*, { i64, i8* }** %777
  ret { i64, i8* }* %819
}

define internal { i64, i8* }* @check_unused_imports(
{ i64, i8* }* %stmts.param, %nyx_string* %source.param) {
  %stmts.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %stmts.param, { i64, i8* }** %stmts.ptr
  %source.ptr = alloca %nyx_string*
  store %nyx_string* %source.param, %nyx_string** %source.ptr
  %820 = call { i64, i8* }* @nyx_array_new_ptr()
  %821 = alloca { i64, i8* }*
  store { i64, i8* }* %820, { i64, i8* }** %821
  %822 = alloca i64
  store i64 0, i64* %822
  %823 = getelementptr [14 x i8], [14 x i8]* @.str43, i32 0, i32 0
  %824 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str43.c, i8* %823, i64 13)
  %825 = alloca %nyx_string*
  store %nyx_string* %824, %nyx_string** %825
  %826 = getelementptr [1 x i8], [1 x i8]* @.str44, i32 0, i32 0
  %827 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str44.c, i8* %826, i64 0)
  %828 = alloca %nyx_string*
  store %nyx_string* %827, %nyx_string** %828
  %829 = getelementptr [2 x i8], [2 x i8]* @.str45, i32 0, i32 0
  %830 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str45.c, i8* %829, i64 1)
  %831 = alloca %nyx_string*
  store %nyx_string* %830, %nyx_string** %831
  %832 = getelementptr [8 x i8], [8 x i8]* @.str46, i32 0, i32 0
  %833 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str46.c, i8* %832, i64 7)
  %834 = alloca %nyx_string*
  store %nyx_string* %833, %nyx_string** %834
  %835 = getelementptr [5 x i8], [5 x i8]* @.str47, i32 0, i32 0
  %836 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str47.c, i8* %835, i64 4)
  %837 = alloca %nyx_string*
  store %nyx_string* %836, %nyx_string** %837
  %838 = getelementptr [18 x i8], [18 x i8]* @.str48, i32 0, i32 0
  %839 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str48.c, i8* %838, i64 17)
  %840 = alloca %nyx_string*
  store %nyx_string* %839, %nyx_string** %840
  %841 = getelementptr [14 x i8], [14 x i8]* @.str49, i32 0, i32 0
  %842 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str49.c, i8* %841, i64 13)
  %843 = alloca %nyx_string*
  store %nyx_string* %842, %nyx_string** %843
  %844 = call i8* @llvm.stacksave()
  br label %while_cond199
while_cond199:
  %845 = load i64, i64* %822
  %846 = load { i64, i8* }*, { i64, i8* }** %stmts.ptr
  %847 = call i64 @nyx_array_length({ i64, i8* }* %846)
  %848 = icmp slt i64 %845, %847
  br i1 %848, label %while_body200, label %while_end201
while_body200:
  call void @llvm.stackrestore(i8* %844)
  %849 = load { i64, i8* }*, { i64, i8* }** %stmts.ptr
  %850 = load i64, i64* %822
  %851 = call i64 @nyx_array_get({ i64, i8* }* %849, i64 %850)
  %852 = inttoptr i64 %851 to { i64, i8* }*
  %853 = alloca { i64, i8* }*
  store { i64, i8* }* %852, { i64, i8* }** %853
  %854 = load { i64, i8* }*, { i64, i8* }** %853
  %855 = call i64 @nyx_array_get_checked({ i64, i8* }* %854, i64 0, i64 2)
  %856 = inttoptr i64 %855 to %nyx_string*
  %857 = alloca %nyx_string*
  store %nyx_string* %856, %nyx_string** %857
  %858 = load %nyx_string*, %nyx_string** %857
  %859 = load %nyx_string*, %nyx_string** %825
  %860 = call i1 @nyx_string_equals(%nyx_string* %858, %nyx_string* %859)
  br i1 %860, label %then202, label %else203
then202:
  %861 = load { i64, i8* }*, { i64, i8* }** %853
  %862 = call i64 @nyx_array_get({ i64, i8* }* %861, i64 1)
  %863 = inttoptr i64 %862 to { i64, i8* }*
  %864 = alloca { i64, i8* }*
  store { i64, i8* }* %863, { i64, i8* }** %864
  %865 = load { i64, i8* }*, { i64, i8* }** %864
  %866 = call i64 @nyx_array_length({ i64, i8* }* %865)
  %867 = icmp sge i64 %866, 2
  br i1 %867, label %then205, label %else206
then205:
  %868 = load { i64, i8* }*, { i64, i8* }** %864
  %869 = call i64 @nyx_array_get_checked({ i64, i8* }* %868, i64 1, i64 2)
  %870 = inttoptr i64 %869 to %nyx_string*
  %871 = alloca %nyx_string*
  store %nyx_string* %870, %nyx_string** %871
  %872 = load %nyx_string*, %nyx_string** %871
  %873 = load %nyx_string*, %nyx_string** %828
  %874 = call i1 @nyx_string_equals(%nyx_string* %872, %nyx_string* %873)
  %875 = xor i1 %874, true
  br i1 %875, label %then208, label %else209
then208:
  %876 = load %nyx_string*, %nyx_string** %871
  %877 = load %nyx_string*, %nyx_string** %831
  %878 = call %nyx_string* @nyx_string_concat(%nyx_string* %876, %nyx_string* %877)
  %879 = alloca %nyx_string*
  store %nyx_string* %878, %nyx_string** %879
  %880 = load %nyx_string*, %nyx_string** %879
  %881 = load %nyx_string*, %nyx_string** %source.ptr
  %882 = call i1 @name_used_in_source(%nyx_string* %880, %nyx_string* %881)
  %883 = alloca i1
  store i1 %882, i1* %883
  %884 = load i1, i1* %883
  %885 = xor i1 %884, true
  br i1 %885, label %then211, label %else212
then211:
  %886 = load %nyx_string*, %nyx_string** %834
  %887 = load %nyx_string*, %nyx_string** %837
  %888 = load %nyx_string*, %nyx_string** %840
  %889 = load %nyx_string*, %nyx_string** %871
  %890 = call %nyx_string* @nyx_string_concat(%nyx_string* %888, %nyx_string* %889)
  %891 = load %nyx_string*, %nyx_string** %843
  %892 = call %nyx_string* @nyx_string_concat(%nyx_string* %890, %nyx_string* %891)
  %893 = call %VetIssue @make_issue(%nyx_string* %886, %nyx_string* %887, %nyx_string* %892, i64 0)
  %894 = alloca %VetIssue
  store %VetIssue %893, %VetIssue* %894
  %895 = load { i64, i8* }*, { i64, i8* }** %821
  %896 = load %VetIssue, %VetIssue* %894
  %897 = getelementptr %VetIssue, %VetIssue* null, i32 1
  %898 = ptrtoint %VetIssue* %897 to i64
  %899 = call i8* @GC_malloc(i64 %898)
  %900 = bitcast i8* %899 to %VetIssue*
  store %VetIssue %896, %VetIssue* %900
  %901 = ptrtoint %VetIssue* %900 to i64
  call void @nyx_array_push({ i64, i8* }* %895, i64 %901)
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
  %902 = load i64, i64* %822
  %903 = add i64 %902, 1
  store i64 %903, i64* %822
  br label %while_cond199
while_end201:
  %904 = load { i64, i8* }*, { i64, i8* }** %821
  ret { i64, i8* }* %904
}

define internal { i64, i8* }* @vet_source(
%nyx_string* %source.param, { i64, i8* }* %ast.param) {
  %source.ptr = alloca %nyx_string*
  store %nyx_string* %source.param, %nyx_string** %source.ptr
  %ast.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %ast.param, { i64, i8* }** %ast.ptr
  %905 = call { i64, i8* }* @nyx_array_new_ptr()
  %906 = alloca { i64, i8* }*
  store { i64, i8* }* %905, { i64, i8* }** %906
  %907 = load %nyx_string*, %nyx_string** %source.ptr
  %908 = call { i64, i8* }* @check_gotcha_patterns(%nyx_string* %907)
  %909 = alloca { i64, i8* }*
  store { i64, i8* }* %908, { i64, i8* }** %909
  %910 = alloca i64
  store i64 0, i64* %910
  %911 = call i8* @llvm.stacksave()
  br label %while_cond214
while_cond214:
  %912 = load i64, i64* %910
  %913 = load { i64, i8* }*, { i64, i8* }** %909
  %914 = call i64 @nyx_array_length({ i64, i8* }* %913)
  %915 = icmp slt i64 %912, %914
  br i1 %915, label %while_body215, label %while_end216
while_body215:
  call void @llvm.stackrestore(i8* %911)
  %916 = load { i64, i8* }*, { i64, i8* }** %909
  %917 = load i64, i64* %910
  %918 = call i64 @nyx_array_get({ i64, i8* }* %916, i64 %917)
  %919 = inttoptr i64 %918 to %VetIssue*
  %920 = load %VetIssue, %VetIssue* %919
  %921 = alloca %VetIssue
  store %VetIssue %920, %VetIssue* %921
  %922 = load { i64, i8* }*, { i64, i8* }** %906
  %923 = load %VetIssue, %VetIssue* %921
  %924 = getelementptr %VetIssue, %VetIssue* null, i32 1
  %925 = ptrtoint %VetIssue* %924 to i64
  %926 = call i8* @GC_malloc(i64 %925)
  %927 = bitcast i8* %926 to %VetIssue*
  store %VetIssue %923, %VetIssue* %927
  %928 = ptrtoint %VetIssue* %927 to i64
  call void @nyx_array_push({ i64, i8* }* %922, i64 %928)
  %929 = load i64, i64* %910
  %930 = add i64 %929, 1
  store i64 %930, i64* %910
  br label %while_cond214
while_end216:
  %931 = load { i64, i8* }*, { i64, i8* }** %ast.ptr
  %932 = call i64 @nyx_array_get({ i64, i8* }* %931, i64 1)
  %933 = inttoptr i64 %932 to { i64, i8* }*
  %934 = alloca { i64, i8* }*
  store { i64, i8* }* %933, { i64, i8* }** %934
  %935 = load { i64, i8* }*, { i64, i8* }** %934
  %936 = load %nyx_string*, %nyx_string** %source.ptr
  %937 = call { i64, i8* }* @check_unused_imports({ i64, i8* }* %935, %nyx_string* %936)
  %938 = alloca { i64, i8* }*
  store { i64, i8* }* %937, { i64, i8* }** %938
  %939 = alloca i64
  store i64 0, i64* %939
  %940 = call i8* @llvm.stacksave()
  br label %while_cond217
while_cond217:
  %941 = load i64, i64* %939
  %942 = load { i64, i8* }*, { i64, i8* }** %938
  %943 = call i64 @nyx_array_length({ i64, i8* }* %942)
  %944 = icmp slt i64 %941, %943
  br i1 %944, label %while_body218, label %while_end219
while_body218:
  call void @llvm.stackrestore(i8* %940)
  %945 = load { i64, i8* }*, { i64, i8* }** %938
  %946 = load i64, i64* %939
  %947 = call i64 @nyx_array_get({ i64, i8* }* %945, i64 %946)
  %948 = inttoptr i64 %947 to %VetIssue*
  %949 = load %VetIssue, %VetIssue* %948
  %950 = alloca %VetIssue
  store %VetIssue %949, %VetIssue* %950
  %951 = load { i64, i8* }*, { i64, i8* }** %906
  %952 = load %VetIssue, %VetIssue* %950
  %953 = getelementptr %VetIssue, %VetIssue* null, i32 1
  %954 = ptrtoint %VetIssue* %953 to i64
  %955 = call i8* @GC_malloc(i64 %954)
  %956 = bitcast i8* %955 to %VetIssue*
  store %VetIssue %952, %VetIssue* %956
  %957 = ptrtoint %VetIssue* %956 to i64
  call void @nyx_array_push({ i64, i8* }* %951, i64 %957)
  %958 = load i64, i64* %939
  %959 = add i64 %958, 1
  store i64 %959, i64* %939
  br label %while_cond217
while_end219:
  %960 = load { i64, i8* }*, { i64, i8* }** %934
  %961 = alloca { i64, i8* }*
  store { i64, i8* }* %960, { i64, i8* }** %961
  %962 = load { i64, i8* }*, { i64, i8* }** %934
  %963 = call i64 @nyx_array_length({ i64, i8* }* %962)
  %964 = icmp eq i64 %963, 1
  br i1 %964, label %then220, label %else221
then220:
  %965 = load { i64, i8* }*, { i64, i8* }** %934
  %966 = call i64 @nyx_array_get({ i64, i8* }* %965, i64 0)
  %967 = inttoptr i64 %966 to { i64, i8* }*
  %968 = alloca { i64, i8* }*
  store { i64, i8* }* %967, { i64, i8* }** %968
  %969 = load { i64, i8* }*, { i64, i8* }** %968
  %970 = call i64 @nyx_array_length({ i64, i8* }* %969)
  %971 = icmp sgt i64 %970, 0
  br i1 %971, label %then223, label %else224
then223:
  %972 = load { i64, i8* }*, { i64, i8* }** %968
  store { i64, i8* }* %972, { i64, i8* }** %961
  br label %merge225
else224:
  br label %merge225
merge225:
  br label %merge222
else221:
  br label %merge222
merge222:
  %973 = load { i64, i8* }*, { i64, i8* }** %961
  %974 = load %nyx_string*, %nyx_string** %source.ptr
  %975 = call { i64, i8* }* @check_bare_fn_result_used({ i64, i8* }* %973, %nyx_string* %974)
  %976 = alloca { i64, i8* }*
  store { i64, i8* }* %975, { i64, i8* }** %976
  %977 = alloca i64
  store i64 0, i64* %977
  %978 = call i8* @llvm.stacksave()
  br label %while_cond226
while_cond226:
  %979 = load i64, i64* %977
  %980 = load { i64, i8* }*, { i64, i8* }** %976
  %981 = call i64 @nyx_array_length({ i64, i8* }* %980)
  %982 = icmp slt i64 %979, %981
  br i1 %982, label %while_body227, label %while_end228
while_body227:
  call void @llvm.stackrestore(i8* %978)
  %983 = load { i64, i8* }*, { i64, i8* }** %976
  %984 = load i64, i64* %977
  %985 = call i64 @nyx_array_get({ i64, i8* }* %983, i64 %984)
  %986 = inttoptr i64 %985 to %VetIssue*
  %987 = load %VetIssue, %VetIssue* %986
  %988 = alloca %VetIssue
  store %VetIssue %987, %VetIssue* %988
  %989 = load { i64, i8* }*, { i64, i8* }** %906
  %990 = load %VetIssue, %VetIssue* %988
  %991 = getelementptr %VetIssue, %VetIssue* null, i32 1
  %992 = ptrtoint %VetIssue* %991 to i64
  %993 = call i8* @GC_malloc(i64 %992)
  %994 = bitcast i8* %993 to %VetIssue*
  store %VetIssue %990, %VetIssue* %994
  %995 = ptrtoint %VetIssue* %994 to i64
  call void @nyx_array_push({ i64, i8* }* %989, i64 %995)
  %996 = load i64, i64* %977
  %997 = add i64 %996, 1
  store i64 %997, i64* %977
  br label %while_cond226
while_end228:
  %998 = load { i64, i8* }*, { i64, i8* }** %934
  %999 = call { i64, i8* }* @check_dead_code({ i64, i8* }* %998)
  %1000 = alloca { i64, i8* }*
  store { i64, i8* }* %999, { i64, i8* }** %1000
  %1001 = alloca i64
  store i64 0, i64* %1001
  %1002 = call i8* @llvm.stacksave()
  br label %while_cond229
while_cond229:
  %1003 = load i64, i64* %1001
  %1004 = load { i64, i8* }*, { i64, i8* }** %1000
  %1005 = call i64 @nyx_array_length({ i64, i8* }* %1004)
  %1006 = icmp slt i64 %1003, %1005
  br i1 %1006, label %while_body230, label %while_end231
while_body230:
  call void @llvm.stackrestore(i8* %1002)
  %1007 = load { i64, i8* }*, { i64, i8* }** %1000
  %1008 = load i64, i64* %1001
  %1009 = call i64 @nyx_array_get({ i64, i8* }* %1007, i64 %1008)
  %1010 = inttoptr i64 %1009 to %VetIssue*
  %1011 = load %VetIssue, %VetIssue* %1010
  %1012 = alloca %VetIssue
  store %VetIssue %1011, %VetIssue* %1012
  %1013 = load { i64, i8* }*, { i64, i8* }** %906
  %1014 = load %VetIssue, %VetIssue* %1012
  %1015 = getelementptr %VetIssue, %VetIssue* null, i32 1
  %1016 = ptrtoint %VetIssue* %1015 to i64
  %1017 = call i8* @GC_malloc(i64 %1016)
  %1018 = bitcast i8* %1017 to %VetIssue*
  store %VetIssue %1014, %VetIssue* %1018
  %1019 = ptrtoint %VetIssue* %1018 to i64
  call void @nyx_array_push({ i64, i8* }* %1013, i64 %1019)
  %1020 = load i64, i64* %1001
  %1021 = add i64 %1020, 1
  store i64 %1021, i64* %1001
  br label %while_cond229
while_end231:
  %1022 = alloca i64
  store i64 0, i64* %1022
  %1023 = getelementptr [9 x i8], [9 x i8]* @.str50, i32 0, i32 0
  %1024 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str50.c, i8* %1023, i64 8)
  %1025 = alloca %nyx_string*
  store %nyx_string* %1024, %nyx_string** %1025
  %1026 = getelementptr [4 x i8], [4 x i8]* @.str51, i32 0, i32 0
  %1027 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str51.c, i8* %1026, i64 3)
  %1028 = alloca %nyx_string*
  store %nyx_string* %1027, %nyx_string** %1028
  %1029 = getelementptr [4 x i8], [4 x i8]* @.str52, i32 0, i32 0
  %1030 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str52.c, i8* %1029, i64 3)
  %1031 = alloca %nyx_string*
  store %nyx_string* %1030, %nyx_string** %1031
  %1032 = getelementptr [2 x i8], [2 x i8]* @.str53, i32 0, i32 0
  %1033 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str53.c, i8* %1032, i64 1)
  %1034 = alloca %nyx_string*
  store %nyx_string* %1033, %nyx_string** %1034
  %1035 = getelementptr [8 x i8], [8 x i8]* @.str54, i32 0, i32 0
  %1036 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str54.c, i8* %1035, i64 7)
  %1037 = alloca %nyx_string*
  store %nyx_string* %1036, %nyx_string** %1037
  %1038 = getelementptr [5 x i8], [5 x i8]* @.str55, i32 0, i32 0
  %1039 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str55.c, i8* %1038, i64 4)
  %1040 = alloca %nyx_string*
  store %nyx_string* %1039, %nyx_string** %1040
  %1041 = getelementptr [11 x i8], [11 x i8]* @.str56, i32 0, i32 0
  %1042 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str56.c, i8* %1041, i64 10)
  %1043 = alloca %nyx_string*
  store %nyx_string* %1042, %nyx_string** %1043
  %1044 = getelementptr [38 x i8], [38 x i8]* @.str57, i32 0, i32 0
  %1045 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str57.c, i8* %1044, i64 37)
  %1046 = alloca %nyx_string*
  store %nyx_string* %1045, %nyx_string** %1046
  %1047 = getelementptr [2 x i8], [2 x i8]* @.str58, i32 0, i32 0
  %1048 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str58.c, i8* %1047, i64 1)
  %1049 = alloca %nyx_string*
  store %nyx_string* %1048, %nyx_string** %1049
  %1050 = call i8* @llvm.stacksave()
  br label %while_cond232
while_cond232:
  %1051 = load i64, i64* %1022
  %1052 = load { i64, i8* }*, { i64, i8* }** %934
  %1053 = call i64 @nyx_array_length({ i64, i8* }* %1052)
  %1054 = icmp slt i64 %1051, %1053
  br i1 %1054, label %while_body233, label %while_end234
while_body233:
  call void @llvm.stackrestore(i8* %1050)
  %1055 = load { i64, i8* }*, { i64, i8* }** %934
  %1056 = load i64, i64* %1022
  %1057 = call i64 @nyx_array_get({ i64, i8* }* %1055, i64 %1056)
  %1058 = inttoptr i64 %1057 to { i64, i8* }*
  %1059 = alloca { i64, i8* }*
  store { i64, i8* }* %1058, { i64, i8* }** %1059
  %1060 = load { i64, i8* }*, { i64, i8* }** %1059
  %1061 = call i64 @nyx_array_get_checked({ i64, i8* }* %1060, i64 0, i64 2)
  %1062 = inttoptr i64 %1061 to %nyx_string*
  %1063 = alloca %nyx_string*
  store %nyx_string* %1062, %nyx_string** %1063
  %1064 = load %nyx_string*, %nyx_string** %1063
  %1065 = load %nyx_string*, %nyx_string** %1025
  %1066 = call i1 @nyx_string_equals(%nyx_string* %1064, %nyx_string* %1065)
  br i1 %1066, label %then235, label %else236
then235:
  %1067 = load { i64, i8* }*, { i64, i8* }** %1059
  %1068 = call i64 @nyx_array_get({ i64, i8* }* %1067, i64 1)
  %1069 = inttoptr i64 %1068 to { i64, i8* }*
  %1070 = alloca { i64, i8* }*
  store { i64, i8* }* %1069, { i64, i8* }** %1070
  %1071 = load { i64, i8* }*, { i64, i8* }** %1070
  %1072 = call i64 @nyx_array_get({ i64, i8* }* %1071, i64 3)
  %1073 = inttoptr i64 %1072 to { i64, i8* }*
  %1074 = alloca { i64, i8* }*
  store { i64, i8* }* %1073, { i64, i8* }** %1074
  %1075 = load { i64, i8* }*, { i64, i8* }** %1074
  %1076 = call i64 @nyx_array_get({ i64, i8* }* %1075, i64 1)
  %1077 = inttoptr i64 %1076 to { i64, i8* }*
  %1078 = alloca { i64, i8* }*
  store { i64, i8* }* %1077, { i64, i8* }** %1078
  %1079 = alloca i64
  store i64 0, i64* %1079
  %1080 = call i8* @llvm.stacksave()
  br label %while_cond238
while_cond238:
  %1081 = load i64, i64* %1079
  %1082 = load { i64, i8* }*, { i64, i8* }** %1078
  %1083 = call i64 @nyx_array_length({ i64, i8* }* %1082)
  %1084 = icmp slt i64 %1081, %1083
  br i1 %1084, label %while_body239, label %while_end240
while_body239:
  call void @llvm.stackrestore(i8* %1080)
  %1085 = load { i64, i8* }*, { i64, i8* }** %1078
  %1086 = load i64, i64* %1079
  %1087 = call i64 @nyx_array_get({ i64, i8* }* %1085, i64 %1086)
  %1088 = inttoptr i64 %1087 to { i64, i8* }*
  %1089 = alloca { i64, i8* }*
  store { i64, i8* }* %1088, { i64, i8* }** %1089
  %1090 = load { i64, i8* }*, { i64, i8* }** %1089
  %1091 = call i64 @nyx_array_get_checked({ i64, i8* }* %1090, i64 0, i64 2)
  %1092 = inttoptr i64 %1091 to %nyx_string*
  %1093 = alloca %nyx_string*
  store %nyx_string* %1092, %nyx_string** %1093
  %1094 = alloca i1
  store i1 true, i1* %1094
  %1095 = load %nyx_string*, %nyx_string** %1093
  %1096 = load %nyx_string*, %nyx_string** %1028
  %1097 = call i1 @nyx_string_equals(%nyx_string* %1095, %nyx_string* %1096)
  br i1 %1097, label %sc_or_end242, label %sc_or_rhs241
sc_or_rhs241:
  %1098 = load %nyx_string*, %nyx_string** %1093
  %1099 = load %nyx_string*, %nyx_string** %1031
  %1100 = call i1 @nyx_string_equals(%nyx_string* %1098, %nyx_string* %1099)
  store i1 %1100, i1* %1094
  br label %sc_or_end242
sc_or_end242:
  %1101 = load i1, i1* %1094
  br i1 %1101, label %then243, label %else244
then243:
  %1102 = load { i64, i8* }*, { i64, i8* }** %1089
  %1103 = call i64 @nyx_array_get({ i64, i8* }* %1102, i64 1)
  %1104 = inttoptr i64 %1103 to { i64, i8* }*
  %1105 = alloca { i64, i8* }*
  store { i64, i8* }* %1104, { i64, i8* }** %1105
  %1106 = load { i64, i8* }*, { i64, i8* }** %1105
  %1107 = call i64 @nyx_array_get({ i64, i8* }* %1106, i64 0)
  %1108 = inttoptr i64 %1107 to { i64, i8* }*
  %1109 = alloca { i64, i8* }*
  store { i64, i8* }* %1108, { i64, i8* }** %1109
  %1110 = load { i64, i8* }*, { i64, i8* }** %1109
  %1111 = call i64 @nyx_array_get_checked({ i64, i8* }* %1110, i64 0, i64 2)
  %1112 = inttoptr i64 %1111 to %nyx_string*
  %1113 = alloca %nyx_string*
  store %nyx_string* %1112, %nyx_string** %1113
  %1114 = load %nyx_string*, %nyx_string** %1113
  %1115 = load %nyx_string*, %nyx_string** %1034
  %1116 = call i1 @nyx_string_starts_with(%nyx_string* %1114, %nyx_string* %1115)
  %1117 = xor i1 %1116, true
  br i1 %1117, label %then246, label %else247
then246:
  %1118 = load %nyx_string*, %nyx_string** %1113
  %1119 = load %nyx_string*, %nyx_string** %source.ptr
  %1120 = call i1 @name_used_in_source(%nyx_string* %1118, %nyx_string* %1119)
  %1121 = alloca i1
  store i1 %1120, i1* %1121
  %1122 = load i1, i1* %1121
  %1123 = xor i1 %1122, true
  br i1 %1123, label %then249, label %else250
then249:
  %1124 = load { i64, i8* }*, { i64, i8* }** %1070
  %1125 = call i64 @nyx_array_get_checked({ i64, i8* }* %1124, i64 0, i64 2)
  %1126 = inttoptr i64 %1125 to %nyx_string*
  %1127 = alloca %nyx_string*
  store %nyx_string* %1126, %nyx_string** %1127
  %1128 = load %nyx_string*, %nyx_string** %1037
  %1129 = load %nyx_string*, %nyx_string** %1040
  %1130 = load %nyx_string*, %nyx_string** %1043
  %1131 = load %nyx_string*, %nyx_string** %1113
  %1132 = call %nyx_string* @nyx_string_concat(%nyx_string* %1130, %nyx_string* %1131)
  %1133 = load %nyx_string*, %nyx_string** %1046
  %1134 = call %nyx_string* @nyx_string_concat(%nyx_string* %1132, %nyx_string* %1133)
  %1135 = load %nyx_string*, %nyx_string** %1127
  %1136 = call %nyx_string* @nyx_string_concat(%nyx_string* %1134, %nyx_string* %1135)
  %1137 = load %nyx_string*, %nyx_string** %1049
  %1138 = call %nyx_string* @nyx_string_concat(%nyx_string* %1136, %nyx_string* %1137)
  %1139 = call %VetIssue @make_issue(%nyx_string* %1128, %nyx_string* %1129, %nyx_string* %1138, i64 0)
  %1140 = alloca %VetIssue
  store %VetIssue %1139, %VetIssue* %1140
  %1141 = load { i64, i8* }*, { i64, i8* }** %906
  %1142 = load %VetIssue, %VetIssue* %1140
  %1143 = getelementptr %VetIssue, %VetIssue* null, i32 1
  %1144 = ptrtoint %VetIssue* %1143 to i64
  %1145 = call i8* @GC_malloc(i64 %1144)
  %1146 = bitcast i8* %1145 to %VetIssue*
  store %VetIssue %1142, %VetIssue* %1146
  %1147 = ptrtoint %VetIssue* %1146 to i64
  call void @nyx_array_push({ i64, i8* }* %1141, i64 %1147)
  br label %merge251
else250:
  br label %merge251
merge251:
  br label %merge248
else247:
  br label %merge248
merge248:
  br label %merge245
else244:
  br label %merge245
merge245:
  %1148 = load i64, i64* %1079
  %1149 = add i64 %1148, 1
  store i64 %1149, i64* %1079
  br label %while_cond238
while_end240:
  br label %merge237
else236:
  br label %merge237
merge237:
  %1150 = load i64, i64* %1022
  %1151 = add i64 %1150, 1
  store i64 %1151, i64* %1022
  br label %while_cond232
while_end234:
  %1152 = load { i64, i8* }*, { i64, i8* }** %906
  ret { i64, i8* }* %1152
}

define i64 @main(
i32 %argc, i8** %argv) {
  call void @nyx_set_args(i32 %argc, i8** %argv)
  %1153 = getelementptr [23 x i8], [23 x i8]* @.str59, i32 0, i32 0
  %1154 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str59.c, i8* %1153, i64 22)
  %1155 = call i8* @nyx_string_to_cstr(%nyx_string* %1154)
  call void @nyx_print_string(i8* %1155)
  %1156 = getelementptr [8 x i8], [8 x i8]* @.str60, i32 0, i32 0
  %1157 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str60.c, i8* %1156, i64 7)
  %1158 = call i8* @nyx_string_to_cstr(%nyx_string* %1157)
  %1159 = call %nyx_string* @nyx_getenv(i8* %1158)
  %1160 = alloca %nyx_string*
  store %nyx_string* %1159, %nyx_string** %1160
  %1161 = load %nyx_string*, %nyx_string** %1160
  %1162 = getelementptr [1 x i8], [1 x i8]* @.str61, i32 0, i32 0
  %1163 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str61.c, i8* %1162, i64 0)
  %1164 = call i1 @nyx_string_equals(%nyx_string* %1161, %nyx_string* %1163)
  br i1 %1164, label %then252, label %else253
then252:
  %1165 = call { i64, i8* }* @nyx_get_args()
  %1166 = alloca { i64, i8* }*
  store { i64, i8* }* %1165, { i64, i8* }** %1166
  %1167 = load { i64, i8* }*, { i64, i8* }** %1166
  %1168 = call i64 @nyx_array_length({ i64, i8* }* %1167)
  %1169 = icmp sgt i64 %1168, 1
  br i1 %1169, label %then255, label %else256
then255:
  %1170 = load { i64, i8* }*, { i64, i8* }** %1166
  %1171 = call i64 @nyx_array_get_checked({ i64, i8* }* %1170, i64 1, i64 2)
  %1172 = inttoptr i64 %1171 to %nyx_string*
  %1173 = alloca %nyx_string*
  store %nyx_string* %1172, %nyx_string** %1173
  %1174 = load %nyx_string*, %nyx_string** %1173
  store %nyx_string* %1174, %nyx_string** %1160
  br label %merge257
else256:
  br label %merge257
merge257:
  br label %merge254
else253:
  br label %merge254
merge254:
  %1175 = load %nyx_string*, %nyx_string** %1160
  %1176 = getelementptr [1 x i8], [1 x i8]* @.str62, i32 0, i32 0
  %1177 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str62.c, i8* %1176, i64 0)
  %1178 = call i1 @nyx_string_equals(%nyx_string* %1175, %nyx_string* %1177)
  br i1 %1178, label %then258, label %else259
then258:
  %1179 = getelementptr [62 x i8], [62 x i8]* @.str63, i32 0, i32 0
  %1180 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str63.c, i8* %1179, i64 61)
  %1181 = call i8* @nyx_string_to_cstr(%nyx_string* %1180)
  call void @nyx_print_string(i8* %1181)
  ret i64 1
else259:
  br label %merge260
merge260:
  %1182 = load %nyx_string*, %nyx_string** %1160
  %1183 = call i8* @nyx_string_to_cstr(%nyx_string* %1182)
  %1184 = call i1 @nyx_file_exists(i8* %1183)
  %1185 = icmp eq i1 %1184, 0
  br i1 %1185, label %then261, label %else262
then261:
  %1186 = getelementptr [33 x i8], [33 x i8]* @.str64, i32 0, i32 0
  %1187 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str64.c, i8* %1186, i64 32)
  %1188 = load %nyx_string*, %nyx_string** %1160
  %1189 = call %nyx_string* @nyx_string_concat(%nyx_string* %1187, %nyx_string* %1188)
  %1190 = getelementptr [3 x i8], [3 x i8]* @.str65, i32 0, i32 0
  %1191 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str65.c, i8* %1190, i64 2)
  %1192 = call %nyx_string* @nyx_string_concat(%nyx_string* %1189, %nyx_string* %1191)
  %1193 = call i8* @nyx_string_to_cstr(%nyx_string* %1192)
  call void @nyx_print_string(i8* %1193)
  %1194 = getelementptr [62 x i8], [62 x i8]* @.str66, i32 0, i32 0
  %1195 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str66.c, i8* %1194, i64 61)
  %1196 = call i8* @nyx_string_to_cstr(%nyx_string* %1195)
  call void @nyx_print_string(i8* %1196)
  ret i64 1
else262:
  br label %merge263
merge263:
  %1197 = load %nyx_string*, %nyx_string** %1160
  %1198 = call i8* @nyx_string_to_cstr(%nyx_string* %1197)
  %1199 = call %nyx_string* @nyx_read_file(i8* %1198)
  %1200 = alloca %nyx_string*
  store %nyx_string* %1199, %nyx_string** %1200
  %1201 = getelementptr [20 x i8], [20 x i8]* @.str67, i32 0, i32 0
  %1202 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str67.c, i8* %1201, i64 19)
  %1203 = call i8* @nyx_string_to_cstr(%nyx_string* %1202)
  call void @nyx_print_string(i8* %1203)
  %1204 = load %nyx_string*, %nyx_string** %1200
  %1205 = call { i64, i8* }* @tokenize(%nyx_string* %1204)
  %1206 = alloca { i64, i8* }*
  store { i64, i8* }* %1205, { i64, i8* }** %1206
  %1207 = getelementptr [17 x i8], [17 x i8]* @.str68, i32 0, i32 0
  %1208 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str68.c, i8* %1207, i64 16)
  %1209 = call i8* @nyx_string_to_cstr(%nyx_string* %1208)
  call void @nyx_print_string(i8* %1209)
  %1210 = load { i64, i8* }*, { i64, i8* }** %1206
  %1211 = load %nyx_string*, %nyx_string** %1200
  %1212 = call { i64, i8* }* @parse({ i64, i8* }* %1210, %nyx_string* %1211)
  %1213 = alloca { i64, i8* }*
  store { i64, i8* }* %1212, { i64, i8* }** %1213
  %1214 = getelementptr [19 x i8], [19 x i8]* @.str69, i32 0, i32 0
  %1215 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str69.c, i8* %1214, i64 18)
  %1216 = call i8* @nyx_string_to_cstr(%nyx_string* %1215)
  call void @nyx_print_string(i8* %1216)
  %1217 = load %nyx_string*, %nyx_string** %1200
  %1218 = load { i64, i8* }*, { i64, i8* }** %1213
  %1219 = call { i64, i8* }* @vet_source(%nyx_string* %1217, { i64, i8* }* %1218)
  %1220 = alloca { i64, i8* }*
  store { i64, i8* }* %1219, { i64, i8* }** %1220
  %1221 = load { i64, i8* }*, { i64, i8* }** %1220
  %1222 = call { i64, i8* }* @sort_issues_by_line({ i64, i8* }* %1221)
  %1223 = alloca { i64, i8* }*
  store { i64, i8* }* %1222, { i64, i8* }** %1223
  %1224 = load { i64, i8* }*, { i64, i8* }** %1223
  %1225 = call i64 @nyx_array_length({ i64, i8* }* %1224)
  %1226 = alloca i64
  store i64 %1225, i64* %1226
  %1227 = load i64, i64* %1226
  %1228 = icmp eq i64 %1227, 0
  br i1 %1228, label %then264, label %else265
then264:
  %1229 = getelementptr [20 x i8], [20 x i8]* @.str70, i32 0, i32 0
  %1230 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str70.c, i8* %1229, i64 19)
  %1231 = call i8* @nyx_string_to_cstr(%nyx_string* %1230)
  call void @nyx_print_string(i8* %1231)
  br label %merge266
else265:
  %1232 = load i64, i64* %1226
  %1233 = call %nyx_string* @nyx_string_from_int(i64 %1232)
  %1234 = getelementptr [17 x i8], [17 x i8]* @.str71, i32 0, i32 0
  %1235 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str71.c, i8* %1234, i64 16)
  %1236 = call %nyx_string* @nyx_string_concat(%nyx_string* %1233, %nyx_string* %1235)
  %1237 = call i8* @nyx_string_to_cstr(%nyx_string* %1236)
  call void @nyx_print_string(i8* %1237)
  %1238 = alloca i64
  store i64 0, i64* %1238
  %1239 = call i8* @llvm.stacksave()
  br label %while_cond267
while_cond267:
  %1240 = load i64, i64* %1238
  %1241 = load i64, i64* %1226
  %1242 = icmp slt i64 %1240, %1241
  br i1 %1242, label %while_body268, label %while_end269
while_body268:
  call void @llvm.stackrestore(i8* %1239)
  %1243 = load { i64, i8* }*, { i64, i8* }** %1223
  %1244 = load i64, i64* %1238
  %1245 = call i64 @nyx_array_get({ i64, i8* }* %1243, i64 %1244)
  %1246 = inttoptr i64 %1245 to %VetIssue*
  %1247 = load %VetIssue, %VetIssue* %1246
  %1248 = alloca %VetIssue
  store %VetIssue %1247, %VetIssue* %1248
  %1249 = load %VetIssue, %VetIssue* %1248
  %1250 = load %nyx_string*, %nyx_string** %1160
  %1251 = call i64 @print_issue(%VetIssue %1249, %nyx_string* %1250)
  %1252 = load i64, i64* %1238
  %1253 = add i64 %1252, 1
  store i64 %1253, i64* %1238
  br label %while_cond267
while_end269:
  br label %merge266
merge266:
  %1254 = getelementptr [6 x i8], [6 x i8]* @.str72, i32 0, i32 0
  %1255 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str72.c, i8* %1254, i64 5)
  %1256 = call i8* @nyx_string_to_cstr(%nyx_string* %1255)
  call void @nyx_print_string(i8* %1256)
  ret i64 0
}


attributes #0 = { returns_twice }

