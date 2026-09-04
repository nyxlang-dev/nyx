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
@.str17 = private unnamed_addr constant [8 x i8] c"warning\00"
@.str17.c = internal global %nyx_string* null
@.str18 = private unnamed_addr constant [5 x i8] c"W003\00"
@.str18.c = internal global %nyx_string* null
@.str19 = private unnamed_addr constant [25 x i8] c"unreachable code after '\00"
@.str19.c = internal global %nyx_string* null
@.str20 = private unnamed_addr constant [11 x i8] c"' on line \00"
@.str20.c = internal global %nyx_string* null
@.str21 = private unnamed_addr constant [7 x i8] c"return\00"
@.str21.c = internal global %nyx_string* null
@.str22 = private unnamed_addr constant [6 x i8] c"break\00"
@.str22.c = internal global %nyx_string* null
@.str23 = private unnamed_addr constant [9 x i8] c"continue\00"
@.str23.c = internal global %nyx_string* null
@.str24 = private unnamed_addr constant [9 x i8] c"function\00"
@.str24.c = internal global %nyx_string* null
@.str25 = private unnamed_addr constant [5 x i8] c"main\00"
@.str25.c = internal global %nyx_string* null
@.str26 = private unnamed_addr constant [14 x i8] c"import_module\00"
@.str26.c = internal global %nyx_string* null
@.str27 = private unnamed_addr constant [1 x i8] c"\00"
@.str27.c = internal global %nyx_string* null
@.str28 = private unnamed_addr constant [2 x i8] c".\00"
@.str28.c = internal global %nyx_string* null
@.str29 = private unnamed_addr constant [8 x i8] c"warning\00"
@.str29.c = internal global %nyx_string* null
@.str30 = private unnamed_addr constant [5 x i8] c"W002\00"
@.str30.c = internal global %nyx_string* null
@.str31 = private unnamed_addr constant [18 x i8] c"imported module '\00"
@.str31.c = internal global %nyx_string* null
@.str32 = private unnamed_addr constant [14 x i8] c"' is not used\00"
@.str32.c = internal global %nyx_string* null
@.str33 = private unnamed_addr constant [9 x i8] c"function\00"
@.str33.c = internal global %nyx_string* null
@.str34 = private unnamed_addr constant [4 x i8] c"let\00"
@.str34.c = internal global %nyx_string* null
@.str35 = private unnamed_addr constant [4 x i8] c"var\00"
@.str35.c = internal global %nyx_string* null
@.str36 = private unnamed_addr constant [2 x i8] c"_\00"
@.str36.c = internal global %nyx_string* null
@.str37 = private unnamed_addr constant [8 x i8] c"warning\00"
@.str37.c = internal global %nyx_string* null
@.str38 = private unnamed_addr constant [5 x i8] c"W001\00"
@.str38.c = internal global %nyx_string* null
@.str39 = private unnamed_addr constant [11 x i8] c"variable '\00"
@.str39.c = internal global %nyx_string* null
@.str40 = private unnamed_addr constant [38 x i8] c"' declared but not used in function '\00"
@.str40.c = internal global %nyx_string* null
@.str41 = private unnamed_addr constant [2 x i8] c"'\00"
@.str41.c = internal global %nyx_string* null
@.str42 = private unnamed_addr constant [23 x i8] c"=== Nyx Vet v1.8.0 ===\00"
@.str42.c = internal global %nyx_string* null
@.str43 = private unnamed_addr constant [8 x i8] c"NYX_SRC\00"
@.str43.c = internal global %nyx_string* null
@.str44 = private unnamed_addr constant [1 x i8] c"\00"
@.str44.c = internal global %nyx_string* null
@.str45 = private unnamed_addr constant [1 x i8] c"\00"
@.str45.c = internal global %nyx_string* null
@.str46 = private unnamed_addr constant [62 x i8] c"uso: nyx vet <archivo.nx>    (o NYX_SRC=<archivo.nx> nyx_vet)\00"
@.str46.c = internal global %nyx_string* null
@.str47 = private unnamed_addr constant [33 x i8] c"nyx_vet: no existe el archivo «\00"
@.str47.c = internal global %nyx_string* null
@.str48 = private unnamed_addr constant [3 x i8] c"»\00"
@.str48.c = internal global %nyx_string* null
@.str49 = private unnamed_addr constant [62 x i8] c"uso: nyx vet <archivo.nx>    (o NYX_SRC=<archivo.nx> nyx_vet)\00"
@.str49.c = internal global %nyx_string* null
@.str50 = private unnamed_addr constant [20 x i8] c"[1/3] Tokenizing...\00"
@.str50.c = internal global %nyx_string* null
@.str51 = private unnamed_addr constant [17 x i8] c"[2/3] Parsing...\00"
@.str51.c = internal global %nyx_string* null
@.str52 = private unnamed_addr constant [19 x i8] c"[3/3] Analyzing...\00"
@.str52.c = internal global %nyx_string* null
@.str53 = private unnamed_addr constant [20 x i8] c"✓ No issues found\00"
@.str53.c = internal global %nyx_string* null
@.str54 = private unnamed_addr constant [17 x i8] c" issue(s) found:\00"
@.str54.c = internal global %nyx_string* null
@.str55 = private unnamed_addr constant [6 x i8] c"Done.\00"
@.str55.c = internal global %nyx_string* null
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
declare { i64, i8* }* @gotchas_table(...)
declare %nyx_string* @gotcha_field(...)
declare %nyx_string* @gotcha_scan_line(...)

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
  %196 = call i64 @nyx_array_get({ i64, i8* }* %194, i64 %195)
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

define internal { i64, i8* }* @check_dead_code(
{ i64, i8* }* %stmts.param) {
  %stmts.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %stmts.param, { i64, i8* }** %stmts.ptr
  %296 = call { i64, i8* }* @nyx_array_new_ptr()
  %297 = alloca { i64, i8* }*
  store { i64, i8* }* %296, { i64, i8* }** %297
  %298 = alloca i64
  store i64 0, i64* %298
  %299 = alloca i1
  store i1 0, i1* %299
  %300 = alloca i64
  store i64 0, i64* %300
  %301 = getelementptr [8 x i8], [8 x i8]* @.str17, i32 0, i32 0
  %302 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str17.c, i8* %301, i64 7)
  %303 = alloca %nyx_string*
  store %nyx_string* %302, %nyx_string** %303
  %304 = getelementptr [5 x i8], [5 x i8]* @.str18, i32 0, i32 0
  %305 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str18.c, i8* %304, i64 4)
  %306 = alloca %nyx_string*
  store %nyx_string* %305, %nyx_string** %306
  %307 = getelementptr [25 x i8], [25 x i8]* @.str19, i32 0, i32 0
  %308 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str19.c, i8* %307, i64 24)
  %309 = alloca %nyx_string*
  store %nyx_string* %308, %nyx_string** %309
  %310 = getelementptr [11 x i8], [11 x i8]* @.str20, i32 0, i32 0
  %311 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str20.c, i8* %310, i64 10)
  %312 = alloca %nyx_string*
  store %nyx_string* %311, %nyx_string** %312
  %313 = getelementptr [7 x i8], [7 x i8]* @.str21, i32 0, i32 0
  %314 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str21.c, i8* %313, i64 6)
  %315 = alloca %nyx_string*
  store %nyx_string* %314, %nyx_string** %315
  %316 = getelementptr [6 x i8], [6 x i8]* @.str22, i32 0, i32 0
  %317 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str22.c, i8* %316, i64 5)
  %318 = alloca %nyx_string*
  store %nyx_string* %317, %nyx_string** %318
  %319 = getelementptr [9 x i8], [9 x i8]* @.str23, i32 0, i32 0
  %320 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str23.c, i8* %319, i64 8)
  %321 = alloca %nyx_string*
  store %nyx_string* %320, %nyx_string** %321
  %322 = call i8* @llvm.stacksave()
  br label %while_cond43
while_cond43:
  %323 = load i64, i64* %298
  %324 = load { i64, i8* }*, { i64, i8* }** %stmts.ptr
  %325 = call i64 @nyx_array_length({ i64, i8* }* %324)
  %326 = icmp slt i64 %323, %325
  br i1 %326, label %while_body44, label %while_end45
while_body44:
  call void @llvm.stackrestore(i8* %322)
  %327 = load { i64, i8* }*, { i64, i8* }** %stmts.ptr
  %328 = load i64, i64* %298
  %329 = call i64 @nyx_array_get({ i64, i8* }* %327, i64 %328)
  %330 = inttoptr i64 %329 to { i64, i8* }*
  %331 = alloca { i64, i8* }*
  store { i64, i8* }* %330, { i64, i8* }** %331
  %332 = load { i64, i8* }*, { i64, i8* }** %331
  %333 = call i64 @nyx_array_get_checked({ i64, i8* }* %332, i64 0, i64 2)
  %334 = inttoptr i64 %333 to %nyx_string*
  %335 = alloca %nyx_string*
  store %nyx_string* %334, %nyx_string** %335
  %336 = load i1, i1* %299
  br i1 %336, label %then46, label %else47
then46:
  %337 = alloca i64
  store i64 0, i64* %337
  %338 = load { i64, i8* }*, { i64, i8* }** %331
  %339 = call i64 @nyx_array_length({ i64, i8* }* %338)
  %340 = icmp sgt i64 %339, 2
  br i1 %340, label %then49, label %else50
then49:
  br label %merge51
else50:
  br label %merge51
merge51:
  %341 = load %nyx_string*, %nyx_string** %303
  %342 = load %nyx_string*, %nyx_string** %306
  %343 = load %nyx_string*, %nyx_string** %309
  %344 = load { i64, i8* }*, { i64, i8* }** %331
  %345 = call %nyx_string* @get_terminator_name({ i64, i8* }* %344)
  %346 = call %nyx_string* @nyx_string_concat(%nyx_string* %343, %nyx_string* %345)
  %347 = load %nyx_string*, %nyx_string** %312
  %348 = call %nyx_string* @nyx_string_concat(%nyx_string* %346, %nyx_string* %347)
  %349 = load i64, i64* %300
  %350 = call %nyx_string* @nyx_string_from_int(i64 %349)
  %351 = call %nyx_string* @nyx_string_concat(%nyx_string* %348, %nyx_string* %350)
  %352 = load i64, i64* %300
  %353 = call %VetIssue @make_issue(%nyx_string* %341, %nyx_string* %342, %nyx_string* %351, i64 %352)
  %354 = alloca %VetIssue
  store %VetIssue %353, %VetIssue* %354
  %355 = load { i64, i8* }*, { i64, i8* }** %297
  %356 = load %VetIssue, %VetIssue* %354
  %357 = getelementptr %VetIssue, %VetIssue* null, i32 1
  %358 = ptrtoint %VetIssue* %357 to i64
  %359 = call i8* @GC_malloc(i64 %358)
  %360 = bitcast i8* %359 to %VetIssue*
  store %VetIssue %356, %VetIssue* %360
  %361 = ptrtoint %VetIssue* %360 to i64
  call void @nyx_array_push({ i64, i8* }* %355, i64 %361)
  store i1 0, i1* %299
  br label %merge48
else47:
  br label %merge48
merge48:
  %362 = alloca i1
  store i1 true, i1* %362
  %363 = alloca i1
  store i1 true, i1* %363
  %364 = load %nyx_string*, %nyx_string** %335
  %365 = load %nyx_string*, %nyx_string** %315
  %366 = call i1 @nyx_string_equals(%nyx_string* %364, %nyx_string* %365)
  br i1 %366, label %sc_or_end53, label %sc_or_rhs52
sc_or_rhs52:
  %367 = load %nyx_string*, %nyx_string** %335
  %368 = load %nyx_string*, %nyx_string** %318
  %369 = call i1 @nyx_string_equals(%nyx_string* %367, %nyx_string* %368)
  store i1 %369, i1* %363
  br label %sc_or_end53
sc_or_end53:
  %370 = load i1, i1* %363
  br i1 %370, label %sc_or_end55, label %sc_or_rhs54
sc_or_rhs54:
  %371 = load %nyx_string*, %nyx_string** %335
  %372 = load %nyx_string*, %nyx_string** %321
  %373 = call i1 @nyx_string_equals(%nyx_string* %371, %nyx_string* %372)
  store i1 %373, i1* %362
  br label %sc_or_end55
sc_or_end55:
  %374 = load i1, i1* %362
  br i1 %374, label %then56, label %else57
then56:
  store i1 1, i1* %299
  store i64 0, i64* %300
  br label %merge58
else57:
  br label %merge58
merge58:
  %375 = load i64, i64* %298
  %376 = add i64 %375, 1
  store i64 %376, i64* %298
  br label %while_cond43
while_end45:
  %377 = load { i64, i8* }*, { i64, i8* }** %297
  ret { i64, i8* }* %377
}

define internal %nyx_string* @get_terminator_name(
{ i64, i8* }* %stmt.param) {
  %stmt.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %stmt.param, { i64, i8* }** %stmt.ptr
  %378 = load { i64, i8* }*, { i64, i8* }** %stmt.ptr
  %379 = call i64 @nyx_array_get_checked({ i64, i8* }* %378, i64 0, i64 2)
  %380 = inttoptr i64 %379 to %nyx_string*
  %381 = alloca %nyx_string*
  store %nyx_string* %380, %nyx_string** %381
  %382 = load %nyx_string*, %nyx_string** %381
  ret %nyx_string* %382
}

define internal { i64, i8* }* @collect_fn_names(
{ i64, i8* }* %stmts.param) {
  %stmts.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %stmts.param, { i64, i8* }** %stmts.ptr
  %383 = call { i64, i8* }* @nyx_array_new_ptr()
  %384 = alloca { i64, i8* }*
  store { i64, i8* }* %383, { i64, i8* }** %384
  %385 = alloca i64
  store i64 0, i64* %385
  %386 = getelementptr [9 x i8], [9 x i8]* @.str24, i32 0, i32 0
  %387 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str24.c, i8* %386, i64 8)
  %388 = alloca %nyx_string*
  store %nyx_string* %387, %nyx_string** %388
  %389 = getelementptr [5 x i8], [5 x i8]* @.str25, i32 0, i32 0
  %390 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str25.c, i8* %389, i64 4)
  %391 = alloca %nyx_string*
  store %nyx_string* %390, %nyx_string** %391
  %392 = call i8* @llvm.stacksave()
  br label %while_cond59
while_cond59:
  %393 = load i64, i64* %385
  %394 = load { i64, i8* }*, { i64, i8* }** %stmts.ptr
  %395 = call i64 @nyx_array_length({ i64, i8* }* %394)
  %396 = icmp slt i64 %393, %395
  br i1 %396, label %while_body60, label %while_end61
while_body60:
  call void @llvm.stackrestore(i8* %392)
  %397 = load { i64, i8* }*, { i64, i8* }** %stmts.ptr
  %398 = load i64, i64* %385
  %399 = call i64 @nyx_array_get({ i64, i8* }* %397, i64 %398)
  %400 = inttoptr i64 %399 to { i64, i8* }*
  %401 = alloca { i64, i8* }*
  store { i64, i8* }* %400, { i64, i8* }** %401
  %402 = load { i64, i8* }*, { i64, i8* }** %401
  %403 = call i64 @nyx_array_get_checked({ i64, i8* }* %402, i64 0, i64 2)
  %404 = inttoptr i64 %403 to %nyx_string*
  %405 = alloca %nyx_string*
  store %nyx_string* %404, %nyx_string** %405
  %406 = load %nyx_string*, %nyx_string** %405
  %407 = load %nyx_string*, %nyx_string** %388
  %408 = call i1 @nyx_string_equals(%nyx_string* %406, %nyx_string* %407)
  br i1 %408, label %then62, label %else63
then62:
  %409 = load { i64, i8* }*, { i64, i8* }** %401
  %410 = call i64 @nyx_array_get({ i64, i8* }* %409, i64 1)
  %411 = inttoptr i64 %410 to { i64, i8* }*
  %412 = alloca { i64, i8* }*
  store { i64, i8* }* %411, { i64, i8* }** %412
  %413 = load { i64, i8* }*, { i64, i8* }** %412
  %414 = call i64 @nyx_array_get_checked({ i64, i8* }* %413, i64 0, i64 2)
  %415 = inttoptr i64 %414 to %nyx_string*
  %416 = alloca %nyx_string*
  store %nyx_string* %415, %nyx_string** %416
  %417 = load %nyx_string*, %nyx_string** %416
  %418 = load %nyx_string*, %nyx_string** %391
  %419 = call i1 @nyx_string_equals(%nyx_string* %417, %nyx_string* %418)
  %420 = xor i1 %419, true
  br i1 %420, label %then65, label %else66
then65:
  %421 = load { i64, i8* }*, { i64, i8* }** %384
  %422 = load %nyx_string*, %nyx_string** %416
  %423 = ptrtoint %nyx_string* %422 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %421, i64 %423, i64 2)
  br label %merge67
else66:
  br label %merge67
merge67:
  br label %merge64
else63:
  br label %merge64
merge64:
  %424 = load i64, i64* %385
  %425 = add i64 %424, 1
  store i64 %425, i64* %385
  br label %while_cond59
while_end61:
  %426 = load { i64, i8* }*, { i64, i8* }** %384
  ret { i64, i8* }* %426
}

define internal { i64, i8* }* @check_unused_imports(
{ i64, i8* }* %stmts.param, %nyx_string* %source.param) {
  %stmts.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %stmts.param, { i64, i8* }** %stmts.ptr
  %source.ptr = alloca %nyx_string*
  store %nyx_string* %source.param, %nyx_string** %source.ptr
  %427 = call { i64, i8* }* @nyx_array_new_ptr()
  %428 = alloca { i64, i8* }*
  store { i64, i8* }* %427, { i64, i8* }** %428
  %429 = alloca i64
  store i64 0, i64* %429
  %430 = getelementptr [14 x i8], [14 x i8]* @.str26, i32 0, i32 0
  %431 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str26.c, i8* %430, i64 13)
  %432 = alloca %nyx_string*
  store %nyx_string* %431, %nyx_string** %432
  %433 = getelementptr [1 x i8], [1 x i8]* @.str27, i32 0, i32 0
  %434 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str27.c, i8* %433, i64 0)
  %435 = alloca %nyx_string*
  store %nyx_string* %434, %nyx_string** %435
  %436 = getelementptr [2 x i8], [2 x i8]* @.str28, i32 0, i32 0
  %437 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str28.c, i8* %436, i64 1)
  %438 = alloca %nyx_string*
  store %nyx_string* %437, %nyx_string** %438
  %439 = getelementptr [8 x i8], [8 x i8]* @.str29, i32 0, i32 0
  %440 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str29.c, i8* %439, i64 7)
  %441 = alloca %nyx_string*
  store %nyx_string* %440, %nyx_string** %441
  %442 = getelementptr [5 x i8], [5 x i8]* @.str30, i32 0, i32 0
  %443 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str30.c, i8* %442, i64 4)
  %444 = alloca %nyx_string*
  store %nyx_string* %443, %nyx_string** %444
  %445 = getelementptr [18 x i8], [18 x i8]* @.str31, i32 0, i32 0
  %446 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str31.c, i8* %445, i64 17)
  %447 = alloca %nyx_string*
  store %nyx_string* %446, %nyx_string** %447
  %448 = getelementptr [14 x i8], [14 x i8]* @.str32, i32 0, i32 0
  %449 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str32.c, i8* %448, i64 13)
  %450 = alloca %nyx_string*
  store %nyx_string* %449, %nyx_string** %450
  %451 = call i8* @llvm.stacksave()
  br label %while_cond68
while_cond68:
  %452 = load i64, i64* %429
  %453 = load { i64, i8* }*, { i64, i8* }** %stmts.ptr
  %454 = call i64 @nyx_array_length({ i64, i8* }* %453)
  %455 = icmp slt i64 %452, %454
  br i1 %455, label %while_body69, label %while_end70
while_body69:
  call void @llvm.stackrestore(i8* %451)
  %456 = load { i64, i8* }*, { i64, i8* }** %stmts.ptr
  %457 = load i64, i64* %429
  %458 = call i64 @nyx_array_get({ i64, i8* }* %456, i64 %457)
  %459 = inttoptr i64 %458 to { i64, i8* }*
  %460 = alloca { i64, i8* }*
  store { i64, i8* }* %459, { i64, i8* }** %460
  %461 = load { i64, i8* }*, { i64, i8* }** %460
  %462 = call i64 @nyx_array_get_checked({ i64, i8* }* %461, i64 0, i64 2)
  %463 = inttoptr i64 %462 to %nyx_string*
  %464 = alloca %nyx_string*
  store %nyx_string* %463, %nyx_string** %464
  %465 = load %nyx_string*, %nyx_string** %464
  %466 = load %nyx_string*, %nyx_string** %432
  %467 = call i1 @nyx_string_equals(%nyx_string* %465, %nyx_string* %466)
  br i1 %467, label %then71, label %else72
then71:
  %468 = load { i64, i8* }*, { i64, i8* }** %460
  %469 = call i64 @nyx_array_get({ i64, i8* }* %468, i64 1)
  %470 = inttoptr i64 %469 to { i64, i8* }*
  %471 = alloca { i64, i8* }*
  store { i64, i8* }* %470, { i64, i8* }** %471
  %472 = load { i64, i8* }*, { i64, i8* }** %471
  %473 = call i64 @nyx_array_length({ i64, i8* }* %472)
  %474 = icmp sge i64 %473, 2
  br i1 %474, label %then74, label %else75
then74:
  %475 = load { i64, i8* }*, { i64, i8* }** %471
  %476 = call i64 @nyx_array_get_checked({ i64, i8* }* %475, i64 1, i64 2)
  %477 = inttoptr i64 %476 to %nyx_string*
  %478 = alloca %nyx_string*
  store %nyx_string* %477, %nyx_string** %478
  %479 = load %nyx_string*, %nyx_string** %478
  %480 = load %nyx_string*, %nyx_string** %435
  %481 = call i1 @nyx_string_equals(%nyx_string* %479, %nyx_string* %480)
  %482 = xor i1 %481, true
  br i1 %482, label %then77, label %else78
then77:
  %483 = load %nyx_string*, %nyx_string** %478
  %484 = load %nyx_string*, %nyx_string** %438
  %485 = call %nyx_string* @nyx_string_concat(%nyx_string* %483, %nyx_string* %484)
  %486 = alloca %nyx_string*
  store %nyx_string* %485, %nyx_string** %486
  %487 = load %nyx_string*, %nyx_string** %486
  %488 = load %nyx_string*, %nyx_string** %source.ptr
  %489 = call i1 @name_used_in_source(%nyx_string* %487, %nyx_string* %488)
  %490 = alloca i1
  store i1 %489, i1* %490
  %491 = load i1, i1* %490
  %492 = xor i1 %491, true
  br i1 %492, label %then80, label %else81
then80:
  %493 = load %nyx_string*, %nyx_string** %441
  %494 = load %nyx_string*, %nyx_string** %444
  %495 = load %nyx_string*, %nyx_string** %447
  %496 = load %nyx_string*, %nyx_string** %478
  %497 = call %nyx_string* @nyx_string_concat(%nyx_string* %495, %nyx_string* %496)
  %498 = load %nyx_string*, %nyx_string** %450
  %499 = call %nyx_string* @nyx_string_concat(%nyx_string* %497, %nyx_string* %498)
  %500 = call %VetIssue @make_issue(%nyx_string* %493, %nyx_string* %494, %nyx_string* %499, i64 0)
  %501 = alloca %VetIssue
  store %VetIssue %500, %VetIssue* %501
  %502 = load { i64, i8* }*, { i64, i8* }** %428
  %503 = load %VetIssue, %VetIssue* %501
  %504 = getelementptr %VetIssue, %VetIssue* null, i32 1
  %505 = ptrtoint %VetIssue* %504 to i64
  %506 = call i8* @GC_malloc(i64 %505)
  %507 = bitcast i8* %506 to %VetIssue*
  store %VetIssue %503, %VetIssue* %507
  %508 = ptrtoint %VetIssue* %507 to i64
  call void @nyx_array_push({ i64, i8* }* %502, i64 %508)
  br label %merge82
else81:
  br label %merge82
merge82:
  br label %merge79
else78:
  br label %merge79
merge79:
  br label %merge76
else75:
  br label %merge76
merge76:
  br label %merge73
else72:
  br label %merge73
merge73:
  %509 = load i64, i64* %429
  %510 = add i64 %509, 1
  store i64 %510, i64* %429
  br label %while_cond68
while_end70:
  %511 = load { i64, i8* }*, { i64, i8* }** %428
  ret { i64, i8* }* %511
}

define internal { i64, i8* }* @vet_source(
%nyx_string* %source.param, { i64, i8* }* %ast.param) {
  %source.ptr = alloca %nyx_string*
  store %nyx_string* %source.param, %nyx_string** %source.ptr
  %ast.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %ast.param, { i64, i8* }** %ast.ptr
  %512 = call { i64, i8* }* @nyx_array_new_ptr()
  %513 = alloca { i64, i8* }*
  store { i64, i8* }* %512, { i64, i8* }** %513
  %514 = load %nyx_string*, %nyx_string** %source.ptr
  %515 = call { i64, i8* }* @check_gotcha_patterns(%nyx_string* %514)
  %516 = alloca { i64, i8* }*
  store { i64, i8* }* %515, { i64, i8* }** %516
  %517 = alloca i64
  store i64 0, i64* %517
  %518 = call i8* @llvm.stacksave()
  br label %while_cond83
while_cond83:
  %519 = load i64, i64* %517
  %520 = load { i64, i8* }*, { i64, i8* }** %516
  %521 = call i64 @nyx_array_length({ i64, i8* }* %520)
  %522 = icmp slt i64 %519, %521
  br i1 %522, label %while_body84, label %while_end85
while_body84:
  call void @llvm.stackrestore(i8* %518)
  %523 = load { i64, i8* }*, { i64, i8* }** %516
  %524 = load i64, i64* %517
  %525 = call i64 @nyx_array_get({ i64, i8* }* %523, i64 %524)
  %526 = inttoptr i64 %525 to %VetIssue*
  %527 = load %VetIssue, %VetIssue* %526
  %528 = alloca %VetIssue
  store %VetIssue %527, %VetIssue* %528
  %529 = load { i64, i8* }*, { i64, i8* }** %513
  %530 = load %VetIssue, %VetIssue* %528
  %531 = getelementptr %VetIssue, %VetIssue* null, i32 1
  %532 = ptrtoint %VetIssue* %531 to i64
  %533 = call i8* @GC_malloc(i64 %532)
  %534 = bitcast i8* %533 to %VetIssue*
  store %VetIssue %530, %VetIssue* %534
  %535 = ptrtoint %VetIssue* %534 to i64
  call void @nyx_array_push({ i64, i8* }* %529, i64 %535)
  %536 = load i64, i64* %517
  %537 = add i64 %536, 1
  store i64 %537, i64* %517
  br label %while_cond83
while_end85:
  %538 = load { i64, i8* }*, { i64, i8* }** %ast.ptr
  %539 = call i64 @nyx_array_get({ i64, i8* }* %538, i64 1)
  %540 = inttoptr i64 %539 to { i64, i8* }*
  %541 = alloca { i64, i8* }*
  store { i64, i8* }* %540, { i64, i8* }** %541
  %542 = load { i64, i8* }*, { i64, i8* }** %541
  %543 = load %nyx_string*, %nyx_string** %source.ptr
  %544 = call { i64, i8* }* @check_unused_imports({ i64, i8* }* %542, %nyx_string* %543)
  %545 = alloca { i64, i8* }*
  store { i64, i8* }* %544, { i64, i8* }** %545
  %546 = alloca i64
  store i64 0, i64* %546
  %547 = call i8* @llvm.stacksave()
  br label %while_cond86
while_cond86:
  %548 = load i64, i64* %546
  %549 = load { i64, i8* }*, { i64, i8* }** %545
  %550 = call i64 @nyx_array_length({ i64, i8* }* %549)
  %551 = icmp slt i64 %548, %550
  br i1 %551, label %while_body87, label %while_end88
while_body87:
  call void @llvm.stackrestore(i8* %547)
  %552 = load { i64, i8* }*, { i64, i8* }** %545
  %553 = load i64, i64* %546
  %554 = call i64 @nyx_array_get({ i64, i8* }* %552, i64 %553)
  %555 = inttoptr i64 %554 to %VetIssue*
  %556 = load %VetIssue, %VetIssue* %555
  %557 = alloca %VetIssue
  store %VetIssue %556, %VetIssue* %557
  %558 = load { i64, i8* }*, { i64, i8* }** %513
  %559 = load %VetIssue, %VetIssue* %557
  %560 = getelementptr %VetIssue, %VetIssue* null, i32 1
  %561 = ptrtoint %VetIssue* %560 to i64
  %562 = call i8* @GC_malloc(i64 %561)
  %563 = bitcast i8* %562 to %VetIssue*
  store %VetIssue %559, %VetIssue* %563
  %564 = ptrtoint %VetIssue* %563 to i64
  call void @nyx_array_push({ i64, i8* }* %558, i64 %564)
  %565 = load i64, i64* %546
  %566 = add i64 %565, 1
  store i64 %566, i64* %546
  br label %while_cond86
while_end88:
  %567 = load { i64, i8* }*, { i64, i8* }** %541
  %568 = call { i64, i8* }* @check_dead_code({ i64, i8* }* %567)
  %569 = alloca { i64, i8* }*
  store { i64, i8* }* %568, { i64, i8* }** %569
  %570 = alloca i64
  store i64 0, i64* %570
  %571 = call i8* @llvm.stacksave()
  br label %while_cond89
while_cond89:
  %572 = load i64, i64* %570
  %573 = load { i64, i8* }*, { i64, i8* }** %569
  %574 = call i64 @nyx_array_length({ i64, i8* }* %573)
  %575 = icmp slt i64 %572, %574
  br i1 %575, label %while_body90, label %while_end91
while_body90:
  call void @llvm.stackrestore(i8* %571)
  %576 = load { i64, i8* }*, { i64, i8* }** %569
  %577 = load i64, i64* %570
  %578 = call i64 @nyx_array_get({ i64, i8* }* %576, i64 %577)
  %579 = inttoptr i64 %578 to %VetIssue*
  %580 = load %VetIssue, %VetIssue* %579
  %581 = alloca %VetIssue
  store %VetIssue %580, %VetIssue* %581
  %582 = load { i64, i8* }*, { i64, i8* }** %513
  %583 = load %VetIssue, %VetIssue* %581
  %584 = getelementptr %VetIssue, %VetIssue* null, i32 1
  %585 = ptrtoint %VetIssue* %584 to i64
  %586 = call i8* @GC_malloc(i64 %585)
  %587 = bitcast i8* %586 to %VetIssue*
  store %VetIssue %583, %VetIssue* %587
  %588 = ptrtoint %VetIssue* %587 to i64
  call void @nyx_array_push({ i64, i8* }* %582, i64 %588)
  %589 = load i64, i64* %570
  %590 = add i64 %589, 1
  store i64 %590, i64* %570
  br label %while_cond89
while_end91:
  %591 = alloca i64
  store i64 0, i64* %591
  %592 = getelementptr [9 x i8], [9 x i8]* @.str33, i32 0, i32 0
  %593 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str33.c, i8* %592, i64 8)
  %594 = alloca %nyx_string*
  store %nyx_string* %593, %nyx_string** %594
  %595 = getelementptr [4 x i8], [4 x i8]* @.str34, i32 0, i32 0
  %596 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str34.c, i8* %595, i64 3)
  %597 = alloca %nyx_string*
  store %nyx_string* %596, %nyx_string** %597
  %598 = getelementptr [4 x i8], [4 x i8]* @.str35, i32 0, i32 0
  %599 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str35.c, i8* %598, i64 3)
  %600 = alloca %nyx_string*
  store %nyx_string* %599, %nyx_string** %600
  %601 = getelementptr [2 x i8], [2 x i8]* @.str36, i32 0, i32 0
  %602 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str36.c, i8* %601, i64 1)
  %603 = alloca %nyx_string*
  store %nyx_string* %602, %nyx_string** %603
  %604 = getelementptr [8 x i8], [8 x i8]* @.str37, i32 0, i32 0
  %605 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str37.c, i8* %604, i64 7)
  %606 = alloca %nyx_string*
  store %nyx_string* %605, %nyx_string** %606
  %607 = getelementptr [5 x i8], [5 x i8]* @.str38, i32 0, i32 0
  %608 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str38.c, i8* %607, i64 4)
  %609 = alloca %nyx_string*
  store %nyx_string* %608, %nyx_string** %609
  %610 = getelementptr [11 x i8], [11 x i8]* @.str39, i32 0, i32 0
  %611 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str39.c, i8* %610, i64 10)
  %612 = alloca %nyx_string*
  store %nyx_string* %611, %nyx_string** %612
  %613 = getelementptr [38 x i8], [38 x i8]* @.str40, i32 0, i32 0
  %614 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str40.c, i8* %613, i64 37)
  %615 = alloca %nyx_string*
  store %nyx_string* %614, %nyx_string** %615
  %616 = getelementptr [2 x i8], [2 x i8]* @.str41, i32 0, i32 0
  %617 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str41.c, i8* %616, i64 1)
  %618 = alloca %nyx_string*
  store %nyx_string* %617, %nyx_string** %618
  %619 = call i8* @llvm.stacksave()
  br label %while_cond92
while_cond92:
  %620 = load i64, i64* %591
  %621 = load { i64, i8* }*, { i64, i8* }** %541
  %622 = call i64 @nyx_array_length({ i64, i8* }* %621)
  %623 = icmp slt i64 %620, %622
  br i1 %623, label %while_body93, label %while_end94
while_body93:
  call void @llvm.stackrestore(i8* %619)
  %624 = load { i64, i8* }*, { i64, i8* }** %541
  %625 = load i64, i64* %591
  %626 = call i64 @nyx_array_get({ i64, i8* }* %624, i64 %625)
  %627 = inttoptr i64 %626 to { i64, i8* }*
  %628 = alloca { i64, i8* }*
  store { i64, i8* }* %627, { i64, i8* }** %628
  %629 = load { i64, i8* }*, { i64, i8* }** %628
  %630 = call i64 @nyx_array_get_checked({ i64, i8* }* %629, i64 0, i64 2)
  %631 = inttoptr i64 %630 to %nyx_string*
  %632 = alloca %nyx_string*
  store %nyx_string* %631, %nyx_string** %632
  %633 = load %nyx_string*, %nyx_string** %632
  %634 = load %nyx_string*, %nyx_string** %594
  %635 = call i1 @nyx_string_equals(%nyx_string* %633, %nyx_string* %634)
  br i1 %635, label %then95, label %else96
then95:
  %636 = load { i64, i8* }*, { i64, i8* }** %628
  %637 = call i64 @nyx_array_get({ i64, i8* }* %636, i64 1)
  %638 = inttoptr i64 %637 to { i64, i8* }*
  %639 = alloca { i64, i8* }*
  store { i64, i8* }* %638, { i64, i8* }** %639
  %640 = load { i64, i8* }*, { i64, i8* }** %639
  %641 = call i64 @nyx_array_get({ i64, i8* }* %640, i64 3)
  %642 = inttoptr i64 %641 to { i64, i8* }*
  %643 = alloca { i64, i8* }*
  store { i64, i8* }* %642, { i64, i8* }** %643
  %644 = load { i64, i8* }*, { i64, i8* }** %643
  %645 = call i64 @nyx_array_get({ i64, i8* }* %644, i64 1)
  %646 = inttoptr i64 %645 to { i64, i8* }*
  %647 = alloca { i64, i8* }*
  store { i64, i8* }* %646, { i64, i8* }** %647
  %648 = alloca i64
  store i64 0, i64* %648
  %649 = call i8* @llvm.stacksave()
  br label %while_cond98
while_cond98:
  %650 = load i64, i64* %648
  %651 = load { i64, i8* }*, { i64, i8* }** %647
  %652 = call i64 @nyx_array_length({ i64, i8* }* %651)
  %653 = icmp slt i64 %650, %652
  br i1 %653, label %while_body99, label %while_end100
while_body99:
  call void @llvm.stackrestore(i8* %649)
  %654 = load { i64, i8* }*, { i64, i8* }** %647
  %655 = load i64, i64* %648
  %656 = call i64 @nyx_array_get({ i64, i8* }* %654, i64 %655)
  %657 = inttoptr i64 %656 to { i64, i8* }*
  %658 = alloca { i64, i8* }*
  store { i64, i8* }* %657, { i64, i8* }** %658
  %659 = load { i64, i8* }*, { i64, i8* }** %658
  %660 = call i64 @nyx_array_get_checked({ i64, i8* }* %659, i64 0, i64 2)
  %661 = inttoptr i64 %660 to %nyx_string*
  %662 = alloca %nyx_string*
  store %nyx_string* %661, %nyx_string** %662
  %663 = alloca i1
  store i1 true, i1* %663
  %664 = load %nyx_string*, %nyx_string** %662
  %665 = load %nyx_string*, %nyx_string** %597
  %666 = call i1 @nyx_string_equals(%nyx_string* %664, %nyx_string* %665)
  br i1 %666, label %sc_or_end102, label %sc_or_rhs101
sc_or_rhs101:
  %667 = load %nyx_string*, %nyx_string** %662
  %668 = load %nyx_string*, %nyx_string** %600
  %669 = call i1 @nyx_string_equals(%nyx_string* %667, %nyx_string* %668)
  store i1 %669, i1* %663
  br label %sc_or_end102
sc_or_end102:
  %670 = load i1, i1* %663
  br i1 %670, label %then103, label %else104
then103:
  %671 = load { i64, i8* }*, { i64, i8* }** %658
  %672 = call i64 @nyx_array_get({ i64, i8* }* %671, i64 1)
  %673 = inttoptr i64 %672 to { i64, i8* }*
  %674 = alloca { i64, i8* }*
  store { i64, i8* }* %673, { i64, i8* }** %674
  %675 = load { i64, i8* }*, { i64, i8* }** %674
  %676 = call i64 @nyx_array_get({ i64, i8* }* %675, i64 0)
  %677 = inttoptr i64 %676 to { i64, i8* }*
  %678 = alloca { i64, i8* }*
  store { i64, i8* }* %677, { i64, i8* }** %678
  %679 = load { i64, i8* }*, { i64, i8* }** %678
  %680 = call i64 @nyx_array_get_checked({ i64, i8* }* %679, i64 0, i64 2)
  %681 = inttoptr i64 %680 to %nyx_string*
  %682 = alloca %nyx_string*
  store %nyx_string* %681, %nyx_string** %682
  %683 = load %nyx_string*, %nyx_string** %682
  %684 = load %nyx_string*, %nyx_string** %603
  %685 = call i1 @nyx_string_starts_with(%nyx_string* %683, %nyx_string* %684)
  %686 = xor i1 %685, true
  br i1 %686, label %then106, label %else107
then106:
  %687 = load %nyx_string*, %nyx_string** %682
  %688 = load %nyx_string*, %nyx_string** %source.ptr
  %689 = call i1 @name_used_in_source(%nyx_string* %687, %nyx_string* %688)
  %690 = alloca i1
  store i1 %689, i1* %690
  %691 = load i1, i1* %690
  %692 = xor i1 %691, true
  br i1 %692, label %then109, label %else110
then109:
  %693 = load { i64, i8* }*, { i64, i8* }** %639
  %694 = call i64 @nyx_array_get_checked({ i64, i8* }* %693, i64 0, i64 2)
  %695 = inttoptr i64 %694 to %nyx_string*
  %696 = alloca %nyx_string*
  store %nyx_string* %695, %nyx_string** %696
  %697 = load %nyx_string*, %nyx_string** %606
  %698 = load %nyx_string*, %nyx_string** %609
  %699 = load %nyx_string*, %nyx_string** %612
  %700 = load %nyx_string*, %nyx_string** %682
  %701 = call %nyx_string* @nyx_string_concat(%nyx_string* %699, %nyx_string* %700)
  %702 = load %nyx_string*, %nyx_string** %615
  %703 = call %nyx_string* @nyx_string_concat(%nyx_string* %701, %nyx_string* %702)
  %704 = load %nyx_string*, %nyx_string** %696
  %705 = call %nyx_string* @nyx_string_concat(%nyx_string* %703, %nyx_string* %704)
  %706 = load %nyx_string*, %nyx_string** %618
  %707 = call %nyx_string* @nyx_string_concat(%nyx_string* %705, %nyx_string* %706)
  %708 = call %VetIssue @make_issue(%nyx_string* %697, %nyx_string* %698, %nyx_string* %707, i64 0)
  %709 = alloca %VetIssue
  store %VetIssue %708, %VetIssue* %709
  %710 = load { i64, i8* }*, { i64, i8* }** %513
  %711 = load %VetIssue, %VetIssue* %709
  %712 = getelementptr %VetIssue, %VetIssue* null, i32 1
  %713 = ptrtoint %VetIssue* %712 to i64
  %714 = call i8* @GC_malloc(i64 %713)
  %715 = bitcast i8* %714 to %VetIssue*
  store %VetIssue %711, %VetIssue* %715
  %716 = ptrtoint %VetIssue* %715 to i64
  call void @nyx_array_push({ i64, i8* }* %710, i64 %716)
  br label %merge111
else110:
  br label %merge111
merge111:
  br label %merge108
else107:
  br label %merge108
merge108:
  br label %merge105
else104:
  br label %merge105
merge105:
  %717 = load i64, i64* %648
  %718 = add i64 %717, 1
  store i64 %718, i64* %648
  br label %while_cond98
while_end100:
  br label %merge97
else96:
  br label %merge97
merge97:
  %719 = load i64, i64* %591
  %720 = add i64 %719, 1
  store i64 %720, i64* %591
  br label %while_cond92
while_end94:
  %721 = load { i64, i8* }*, { i64, i8* }** %513
  ret { i64, i8* }* %721
}

define i64 @main(
i32 %argc, i8** %argv) {
  call void @nyx_set_args(i32 %argc, i8** %argv)
  %722 = getelementptr [23 x i8], [23 x i8]* @.str42, i32 0, i32 0
  %723 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str42.c, i8* %722, i64 22)
  %724 = call i8* @nyx_string_to_cstr(%nyx_string* %723)
  call void @nyx_print_string(i8* %724)
  %725 = getelementptr [8 x i8], [8 x i8]* @.str43, i32 0, i32 0
  %726 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str43.c, i8* %725, i64 7)
  %727 = call i8* @nyx_string_to_cstr(%nyx_string* %726)
  %728 = call %nyx_string* @nyx_getenv(i8* %727)
  %729 = alloca %nyx_string*
  store %nyx_string* %728, %nyx_string** %729
  %730 = load %nyx_string*, %nyx_string** %729
  %731 = getelementptr [1 x i8], [1 x i8]* @.str44, i32 0, i32 0
  %732 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str44.c, i8* %731, i64 0)
  %733 = call i1 @nyx_string_equals(%nyx_string* %730, %nyx_string* %732)
  br i1 %733, label %then112, label %else113
then112:
  %734 = call { i64, i8* }* @nyx_get_args()
  %735 = alloca { i64, i8* }*
  store { i64, i8* }* %734, { i64, i8* }** %735
  %736 = load { i64, i8* }*, { i64, i8* }** %735
  %737 = call i64 @nyx_array_length({ i64, i8* }* %736)
  %738 = icmp sgt i64 %737, 1
  br i1 %738, label %then115, label %else116
then115:
  %739 = load { i64, i8* }*, { i64, i8* }** %735
  %740 = call i64 @nyx_array_get_checked({ i64, i8* }* %739, i64 1, i64 2)
  %741 = inttoptr i64 %740 to %nyx_string*
  %742 = alloca %nyx_string*
  store %nyx_string* %741, %nyx_string** %742
  %743 = load %nyx_string*, %nyx_string** %742
  store %nyx_string* %743, %nyx_string** %729
  br label %merge117
else116:
  br label %merge117
merge117:
  br label %merge114
else113:
  br label %merge114
merge114:
  %744 = load %nyx_string*, %nyx_string** %729
  %745 = getelementptr [1 x i8], [1 x i8]* @.str45, i32 0, i32 0
  %746 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str45.c, i8* %745, i64 0)
  %747 = call i1 @nyx_string_equals(%nyx_string* %744, %nyx_string* %746)
  br i1 %747, label %then118, label %else119
then118:
  %748 = getelementptr [62 x i8], [62 x i8]* @.str46, i32 0, i32 0
  %749 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str46.c, i8* %748, i64 61)
  %750 = call i8* @nyx_string_to_cstr(%nyx_string* %749)
  call void @nyx_print_string(i8* %750)
  ret i64 1
else119:
  br label %merge120
merge120:
  %751 = load %nyx_string*, %nyx_string** %729
  %752 = call i8* @nyx_string_to_cstr(%nyx_string* %751)
  %753 = call i1 @nyx_file_exists(i8* %752)
  %754 = icmp eq i1 %753, 0
  br i1 %754, label %then121, label %else122
then121:
  %755 = getelementptr [33 x i8], [33 x i8]* @.str47, i32 0, i32 0
  %756 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str47.c, i8* %755, i64 32)
  %757 = load %nyx_string*, %nyx_string** %729
  %758 = call %nyx_string* @nyx_string_concat(%nyx_string* %756, %nyx_string* %757)
  %759 = getelementptr [3 x i8], [3 x i8]* @.str48, i32 0, i32 0
  %760 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str48.c, i8* %759, i64 2)
  %761 = call %nyx_string* @nyx_string_concat(%nyx_string* %758, %nyx_string* %760)
  %762 = call i8* @nyx_string_to_cstr(%nyx_string* %761)
  call void @nyx_print_string(i8* %762)
  %763 = getelementptr [62 x i8], [62 x i8]* @.str49, i32 0, i32 0
  %764 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str49.c, i8* %763, i64 61)
  %765 = call i8* @nyx_string_to_cstr(%nyx_string* %764)
  call void @nyx_print_string(i8* %765)
  ret i64 1
else122:
  br label %merge123
merge123:
  %766 = load %nyx_string*, %nyx_string** %729
  %767 = call i8* @nyx_string_to_cstr(%nyx_string* %766)
  %768 = call %nyx_string* @nyx_read_file(i8* %767)
  %769 = alloca %nyx_string*
  store %nyx_string* %768, %nyx_string** %769
  %770 = getelementptr [20 x i8], [20 x i8]* @.str50, i32 0, i32 0
  %771 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str50.c, i8* %770, i64 19)
  %772 = call i8* @nyx_string_to_cstr(%nyx_string* %771)
  call void @nyx_print_string(i8* %772)
  %773 = load %nyx_string*, %nyx_string** %769
  %774 = call { i64, i8* }* @tokenize(%nyx_string* %773)
  %775 = alloca { i64, i8* }*
  store { i64, i8* }* %774, { i64, i8* }** %775
  %776 = getelementptr [17 x i8], [17 x i8]* @.str51, i32 0, i32 0
  %777 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str51.c, i8* %776, i64 16)
  %778 = call i8* @nyx_string_to_cstr(%nyx_string* %777)
  call void @nyx_print_string(i8* %778)
  %779 = load { i64, i8* }*, { i64, i8* }** %775
  %780 = load %nyx_string*, %nyx_string** %769
  %781 = call { i64, i8* }* @parse({ i64, i8* }* %779, %nyx_string* %780)
  %782 = alloca { i64, i8* }*
  store { i64, i8* }* %781, { i64, i8* }** %782
  %783 = getelementptr [19 x i8], [19 x i8]* @.str52, i32 0, i32 0
  %784 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str52.c, i8* %783, i64 18)
  %785 = call i8* @nyx_string_to_cstr(%nyx_string* %784)
  call void @nyx_print_string(i8* %785)
  %786 = load %nyx_string*, %nyx_string** %769
  %787 = load { i64, i8* }*, { i64, i8* }** %782
  %788 = call { i64, i8* }* @vet_source(%nyx_string* %786, { i64, i8* }* %787)
  %789 = alloca { i64, i8* }*
  store { i64, i8* }* %788, { i64, i8* }** %789
  %790 = load { i64, i8* }*, { i64, i8* }** %789
  %791 = call { i64, i8* }* @sort_issues_by_line({ i64, i8* }* %790)
  %792 = alloca { i64, i8* }*
  store { i64, i8* }* %791, { i64, i8* }** %792
  %793 = load { i64, i8* }*, { i64, i8* }** %792
  %794 = call i64 @nyx_array_length({ i64, i8* }* %793)
  %795 = alloca i64
  store i64 %794, i64* %795
  %796 = load i64, i64* %795
  %797 = icmp eq i64 %796, 0
  br i1 %797, label %then124, label %else125
then124:
  %798 = getelementptr [20 x i8], [20 x i8]* @.str53, i32 0, i32 0
  %799 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str53.c, i8* %798, i64 19)
  %800 = call i8* @nyx_string_to_cstr(%nyx_string* %799)
  call void @nyx_print_string(i8* %800)
  br label %merge126
else125:
  %801 = load i64, i64* %795
  %802 = call %nyx_string* @nyx_string_from_int(i64 %801)
  %803 = getelementptr [17 x i8], [17 x i8]* @.str54, i32 0, i32 0
  %804 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str54.c, i8* %803, i64 16)
  %805 = call %nyx_string* @nyx_string_concat(%nyx_string* %802, %nyx_string* %804)
  %806 = call i8* @nyx_string_to_cstr(%nyx_string* %805)
  call void @nyx_print_string(i8* %806)
  %807 = alloca i64
  store i64 0, i64* %807
  %808 = call i8* @llvm.stacksave()
  br label %while_cond127
while_cond127:
  %809 = load i64, i64* %807
  %810 = load i64, i64* %795
  %811 = icmp slt i64 %809, %810
  br i1 %811, label %while_body128, label %while_end129
while_body128:
  call void @llvm.stackrestore(i8* %808)
  %812 = load { i64, i8* }*, { i64, i8* }** %792
  %813 = load i64, i64* %807
  %814 = call i64 @nyx_array_get({ i64, i8* }* %812, i64 %813)
  %815 = inttoptr i64 %814 to %VetIssue*
  %816 = load %VetIssue, %VetIssue* %815
  %817 = alloca %VetIssue
  store %VetIssue %816, %VetIssue* %817
  %818 = load %VetIssue, %VetIssue* %817
  %819 = load %nyx_string*, %nyx_string** %729
  %820 = call i64 @print_issue(%VetIssue %818, %nyx_string* %819)
  %821 = load i64, i64* %807
  %822 = add i64 %821, 1
  store i64 %822, i64* %807
  br label %while_cond127
while_end129:
  br label %merge126
merge126:
  %823 = getelementptr [6 x i8], [6 x i8]* @.str55, i32 0, i32 0
  %824 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str55.c, i8* %823, i64 5)
  %825 = call i8* @nyx_string_to_cstr(%nyx_string* %824)
  call void @nyx_print_string(i8* %825)
  ret i64 0
}


attributes #0 = { returns_twice }

