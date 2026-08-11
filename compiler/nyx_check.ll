source_filename = "script.nx"
target triple = "x86_64-pc-linux-gnu"

%Token = type { %nyx_string*, %nyx_string*, i64, i64 }

@.str0 = private unnamed_addr constant [1 x i8] c"\22"
@.str1 = private unnamed_addr constant [1 x i8] c"\22"
@.str2 = private unnamed_addr constant [1 x i8] c"\00"
@.str2.c = internal global %nyx_string* null
@.str3 = private unnamed_addr constant [7 x i8] c"import\00"
@.str3.c = internal global %nyx_string* null
@.str4 = private unnamed_addr constant [5 x i8] c"from\00"
@.str4.c = internal global %nyx_string* null
@.str5 = private unnamed_addr constant [10 x i8] c"compiler/\00"
@.str5.c = internal global %nyx_string* null
@.str6 = private unnamed_addr constant [4 x i8] c".nx\00"
@.str6.c = internal global %nyx_string* null
@.str7 = private unnamed_addr constant [5 x i8] c"std/\00"
@.str7.c = internal global %nyx_string* null
@.str8 = private unnamed_addr constant [4 x i8] c".nx\00"
@.str8.c = internal global %nyx_string* null
@.str9 = private unnamed_addr constant [10 x i8] c"packages/\00"
@.str9.c = internal global %nyx_string* null
@.str10 = private unnamed_addr constant [4 x i8] c".nx\00"
@.str10.c = internal global %nyx_string* null
@.str11 = private unnamed_addr constant [1 x i8] c"\00"
@.str11.c = internal global %nyx_string* null
@.str12 = private unnamed_addr constant [10 x i8] c"compiler/\00"
@.str12.c = internal global %nyx_string* null
@.str13 = private unnamed_addr constant [1 x i8] c"\00"
@.str13.c = internal global %nyx_string* null
@.str14 = private unnamed_addr constant [15 x i8] c"std/prelude.nx\00"
@.str14.c = internal global %nyx_string* null
@.str15 = private unnamed_addr constant [15 x i8] c"std/prelude.nx\00"
@.str15.c = internal global %nyx_string* null
@.str16 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str16.c = internal global %nyx_string* null
@.str17 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str17.c = internal global %nyx_string* null
@.str18 = private unnamed_addr constant [1 x i8] c"\00"
@.str18.c = internal global %nyx_string* null
@.str19 = private unnamed_addr constant [1 x i8] c"\00"
@.str19.c = internal global %nyx_string* null
@.str20 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str20.c = internal global %nyx_string* null
@.str21 = private unnamed_addr constant [3 x i8] c"FN\00"
@.str21.c = internal global %nyx_string* null
@.str22 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str22.c = internal global %nyx_string* null
@.str23 = private unnamed_addr constant [8 x i8] c"DEF:fn:\00"
@.str23.c = internal global %nyx_string* null
@.str24 = private unnamed_addr constant [2 x i8] c":\00"
@.str24.c = internal global %nyx_string* null
@.str25 = private unnamed_addr constant [7 x i8] c"STRUCT\00"
@.str25.c = internal global %nyx_string* null
@.str26 = private unnamed_addr constant [12 x i8] c"DEF:struct:\00"
@.str26.c = internal global %nyx_string* null
@.str27 = private unnamed_addr constant [5 x i8] c"ENUM\00"
@.str27.c = internal global %nyx_string* null
@.str28 = private unnamed_addr constant [10 x i8] c"DEF:enum:\00"
@.str28.c = internal global %nyx_string* null
@.str29 = private unnamed_addr constant [6 x i8] c"TRAIT\00"
@.str29.c = internal global %nyx_string* null
@.str30 = private unnamed_addr constant [11 x i8] c"DEF:trait:\00"
@.str30.c = internal global %nyx_string* null
@.str31 = private unnamed_addr constant [4 x i8] c"LET\00"
@.str31.c = internal global %nyx_string* null
@.str32 = private unnamed_addr constant [4 x i8] c"VAR\00"
@.str32.c = internal global %nyx_string* null
@.str33 = private unnamed_addr constant [4 x i8] c"let\00"
@.str33.c = internal global %nyx_string* null
@.str34 = private unnamed_addr constant [4 x i8] c"var\00"
@.str34.c = internal global %nyx_string* null
@.str35 = private unnamed_addr constant [5 x i8] c"DEF:\00"
@.str35.c = internal global %nyx_string* null
@.str36 = private unnamed_addr constant [5 x i8] c"TEST\00"
@.str36.c = internal global %nyx_string* null
@.str37 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str37.c = internal global %nyx_string* null
@.str38 = private unnamed_addr constant [10 x i8] c"DEF:test:\00"
@.str38.c = internal global %nyx_string* null
@.str39 = private unnamed_addr constant [15 x i8] c"std/prelude.nx\00"
@.str39.c = internal global %nyx_string* null
@.str40 = private unnamed_addr constant [15 x i8] c"std/prelude.nx\00"
@.str40.c = internal global %nyx_string* null
@.str41 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str41.c = internal global %nyx_string* null
@.str42 = private unnamed_addr constant [8 x i8] c"NYX_SRC\00"
@.str42.c = internal global %nyx_string* null
@.str43 = private unnamed_addr constant [1 x i8] c"\00"
@.str43.c = internal global %nyx_string* null
@.str44 = private unnamed_addr constant [10 x i8] c"script.nx\00"
@.str44.c = internal global %nyx_string* null
@.str45 = private unnamed_addr constant [34 x i8] c"DIAG:ERROR:0:0:parse failed with \00"
@.str45.c = internal global %nyx_string* null
@.str46 = private unnamed_addr constant [10 x i8] c" error(s)\00"
@.str46.c = internal global %nyx_string* null
@.str47 = private unnamed_addr constant [4 x i8] c"END\00"
@.str47.c = internal global %nyx_string* null
@.str48 = private unnamed_addr constant [12 x i8] c"DIAG:ERROR:\00"
@.str48.c = internal global %nyx_string* null
@.str49 = private unnamed_addr constant [2 x i8] c":\00"
@.str49.c = internal global %nyx_string* null
@.str50 = private unnamed_addr constant [16 x i8] c"DIAG:ERROR:0:0:\00"
@.str50.c = internal global %nyx_string* null
@.str51 = private unnamed_addr constant [1 x i8] c":"
@.str52 = private unnamed_addr constant [1 x i8] c":"
@.str53 = private unnamed_addr constant [5 x i8] c"SYM:\00"
@.str53.c = internal global %nyx_string* null
@.str54 = private unnamed_addr constant [2 x i8] c":\00"
@.str54.c = internal global %nyx_string* null
@.str55 = private unnamed_addr constant [4 x i8] c"END\00"
@.str55.c = internal global %nyx_string* null
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
declare i64 @get_parse_error_count(...)
declare i1 @analyze(%ASTNode)
declare { i64, i8* }* @get_errors(...)
declare { i64, i8* }* @get_sym_names(...)
declare { i64, i8* }* @get_sym_kinds(...)
declare i64 @get_sym_count(...)

define internal %nyx_string* @get_token_type(
%Token %tok.param) {
  %tok.ptr = alloca %Token
  store %Token %tok.param, %Token* %tok.ptr
  %1 = getelementptr %Token, %Token* %tok.ptr, i32 0, i32 0
  %2 = load %nyx_string*, %nyx_string** %1
  ret %nyx_string* %2
}

define internal %nyx_string* @get_token_value(
%Token %tok.param) {
  %tok.ptr = alloca %Token
  store %Token %tok.param, %Token* %tok.ptr
  %3 = getelementptr %Token, %Token* %tok.ptr, i32 0, i32 1
  %4 = load %nyx_string*, %nyx_string** %3
  ret %nyx_string* %4
}

define internal i64 @get_token_line(
%Token %tok.param) {
  %tok.ptr = alloca %Token
  store %Token %tok.param, %Token* %tok.ptr
  %5 = getelementptr %Token, %Token* %tok.ptr, i32 0, i32 2
  %6 = load i64, i64* %5
  ret i64 %6
}

define internal i64 @get_token_col(
%Token %tok.param) {
  %tok.ptr = alloca %Token
  store %Token %tok.param, %Token* %tok.ptr
  %7 = getelementptr %Token, %Token* %tok.ptr, i32 0, i32 3
  %8 = load i64, i64* %7
  ret i64 %8
}

define internal %nyx_string* @find_import_path(
%nyx_string* %line.param) {
  %line.ptr = alloca %nyx_string*
  store %nyx_string* %line.param, %nyx_string** %line.ptr
  %9 = load %nyx_string*, %nyx_string** %line.ptr
  %10 = call i64 @nyx_string_byte_length(%nyx_string* %9)
  %11 = sub i64 %10, 1
  %12 = alloca i64
  store i64 %11, i64* %12
  %13 = call i8* @llvm.stacksave()
  br label %while_cond0
while_cond0:
  %14 = load i64, i64* %12
  %15 = icmp sge i64 %14, 0
  br i1 %15, label %while_body1, label %while_end2
while_body1:
  call void @llvm.stackrestore(i8* %13)
  %16 = load %nyx_string*, %nyx_string** %line.ptr
  %17 = load i64, i64* %12
  %18 = call i8 @nyx_string_char_at(%nyx_string* %16, i64 %17)
  %19 = zext i8 %18 to i64
  %20 = trunc i64 %19 to i8
  %21 = alloca i8
  store i8 %20, i8* %21
  %22 = load i8, i8* %21
  %23 = getelementptr [1 x i8], [1 x i8]* @.str0, i32 0, i32 0
  %24 = load i8, i8* %23
  %25 = zext i8 %24 to i64
  %26 = zext i8 %22 to i64
  %27 = icmp eq i64 %26, %25
  br i1 %27, label %then3, label %else4
then3:
  %28 = load i64, i64* %12
  %29 = alloca i64
  store i64 %28, i64* %29
  %30 = load i64, i64* %12
  %31 = sub i64 %30, 1
  store i64 %31, i64* %12
  %32 = call i8* @llvm.stacksave()
  br label %while_cond6
while_cond6:
  %33 = load i64, i64* %12
  %34 = icmp sge i64 %33, 0
  br i1 %34, label %while_body7, label %while_end8
while_body7:
  call void @llvm.stackrestore(i8* %32)
  %35 = load %nyx_string*, %nyx_string** %line.ptr
  %36 = load i64, i64* %12
  %37 = call i8 @nyx_string_char_at(%nyx_string* %35, i64 %36)
  %38 = zext i8 %37 to i64
  %39 = trunc i64 %38 to i8
  %40 = alloca i8
  store i8 %39, i8* %40
  %41 = load i8, i8* %40
  %42 = getelementptr [1 x i8], [1 x i8]* @.str1, i32 0, i32 0
  %43 = load i8, i8* %42
  %44 = zext i8 %43 to i64
  %45 = zext i8 %41 to i64
  %46 = icmp eq i64 %45, %44
  br i1 %46, label %then9, label %else10
then9:
  %47 = load %nyx_string*, %nyx_string** %line.ptr
  %48 = load i64, i64* %12
  %49 = add i64 %48, 1
  %50 = load i64, i64* %29
  %51 = call %nyx_string* @nyx_string_substring(%nyx_string* %47, i64 %49, i64 %50)
  ret %nyx_string* %51
else10:
  br label %merge11
merge11:
  %52 = load i64, i64* %12
  %53 = sub i64 %52, 1
  store i64 %53, i64* %12
  br label %while_cond6
while_end8:
  br label %merge5
else4:
  br label %merge5
merge5:
  %54 = load i64, i64* %12
  %55 = sub i64 %54, 1
  store i64 %55, i64* %12
  br label %while_cond0
while_end2:
  %56 = getelementptr [1 x i8], [1 x i8]* @.str2, i32 0, i32 0
  %57 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str2.c, i8* %56)
  ret %nyx_string* %57
}

define internal i1 @is_user_import(
%nyx_string* %line.param) {
  %line.ptr = alloca %nyx_string*
  store %nyx_string* %line.param, %nyx_string** %line.ptr
  %58 = load %nyx_string*, %nyx_string** %line.ptr
  %59 = getelementptr [7 x i8], [7 x i8]* @.str3, i32 0, i32 0
  %60 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str3.c, i8* %59)
  %61 = call i1 @nyx_string_contains(%nyx_string* %58, %nyx_string* %60)
  %62 = xor i1 %61, true
  br i1 %62, label %then12, label %else13
then12:
  ret i1 0
else13:
  br label %merge14
merge14:
  %63 = load %nyx_string*, %nyx_string** %line.ptr
  %64 = getelementptr [5 x i8], [5 x i8]* @.str4, i32 0, i32 0
  %65 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str4.c, i8* %64)
  %66 = call i1 @nyx_string_contains(%nyx_string* %63, %nyx_string* %65)
  %67 = xor i1 %66, true
  br i1 %67, label %then15, label %else16
then15:
  ret i1 0
else16:
  br label %merge17
merge17:
  %68 = load %nyx_string*, %nyx_string** %line.ptr
  %69 = getelementptr [10 x i8], [10 x i8]* @.str5, i32 0, i32 0
  %70 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str5.c, i8* %69)
  %71 = call i1 @nyx_string_contains(%nyx_string* %68, %nyx_string* %70)
  br i1 %71, label %then18, label %else19
then18:
  ret i1 0
else19:
  br label %merge20
merge20:
  ret i1 1
}

define internal %nyx_string* @resolve_module_path(
%nyx_string* %path.param) {
  %path.ptr = alloca %nyx_string*
  store %nyx_string* %path.param, %nyx_string** %path.ptr
  %72 = load %nyx_string*, %nyx_string** %path.ptr
  %73 = getelementptr [4 x i8], [4 x i8]* @.str6, i32 0, i32 0
  %74 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str6.c, i8* %73)
  %75 = call %nyx_string* @nyx_string_concat(%nyx_string* %72, %nyx_string* %74)
  %76 = alloca %nyx_string*
  store %nyx_string* %75, %nyx_string** %76
  %77 = load %nyx_string*, %nyx_string** %76
  %78 = call i8* @nyx_string_to_cstr(%nyx_string* %77)
  %79 = call i1 @nyx_file_exists(i8* %78)
  br i1 %79, label %then21, label %else22
then21:
  %80 = load %nyx_string*, %nyx_string** %76
  ret %nyx_string* %80
else22:
  br label %merge23
merge23:
  %81 = getelementptr [5 x i8], [5 x i8]* @.str7, i32 0, i32 0
  %82 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str7.c, i8* %81)
  %83 = load %nyx_string*, %nyx_string** %path.ptr
  %84 = call %nyx_string* @nyx_string_concat(%nyx_string* %82, %nyx_string* %83)
  %85 = getelementptr [4 x i8], [4 x i8]* @.str8, i32 0, i32 0
  %86 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str8.c, i8* %85)
  %87 = call %nyx_string* @nyx_string_concat(%nyx_string* %84, %nyx_string* %86)
  %88 = alloca %nyx_string*
  store %nyx_string* %87, %nyx_string** %88
  %89 = load %nyx_string*, %nyx_string** %88
  %90 = call i8* @nyx_string_to_cstr(%nyx_string* %89)
  %91 = call i1 @nyx_file_exists(i8* %90)
  br i1 %91, label %then24, label %else25
then24:
  %92 = load %nyx_string*, %nyx_string** %88
  ret %nyx_string* %92
else25:
  br label %merge26
merge26:
  %93 = getelementptr [10 x i8], [10 x i8]* @.str9, i32 0, i32 0
  %94 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str9.c, i8* %93)
  %95 = load %nyx_string*, %nyx_string** %path.ptr
  %96 = call %nyx_string* @nyx_string_concat(%nyx_string* %94, %nyx_string* %95)
  %97 = getelementptr [4 x i8], [4 x i8]* @.str10, i32 0, i32 0
  %98 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str10.c, i8* %97)
  %99 = call %nyx_string* @nyx_string_concat(%nyx_string* %96, %nyx_string* %98)
  %100 = alloca %nyx_string*
  store %nyx_string* %99, %nyx_string** %100
  %101 = load %nyx_string*, %nyx_string** %100
  %102 = call i8* @nyx_string_to_cstr(%nyx_string* %101)
  %103 = call i1 @nyx_file_exists(i8* %102)
  br i1 %103, label %then27, label %else28
then27:
  %104 = load %nyx_string*, %nyx_string** %100
  ret %nyx_string* %104
else28:
  br label %merge29
merge29:
  %105 = getelementptr [1 x i8], [1 x i8]* @.str11, i32 0, i32 0
  %106 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str11.c, i8* %105)
  ret %nyx_string* %106
}

define internal %nyx_string* @resolve_source(
%nyx_string* %raw.param) {
  %raw.ptr = alloca %nyx_string*
  store %nyx_string* %raw.param, %nyx_string** %raw.ptr
  %107 = load %nyx_string*, %nyx_string** %raw.ptr
  %108 = getelementptr [10 x i8], [10 x i8]* @.str12, i32 0, i32 0
  %109 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str12.c, i8* %108)
  %110 = call i1 @nyx_string_contains(%nyx_string* %107, %nyx_string* %109)
  %111 = alloca i1
  store i1 %110, i1* %111
  %112 = getelementptr [1 x i8], [1 x i8]* @.str13, i32 0, i32 0
  %113 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str13.c, i8* %112)
  %114 = alloca %nyx_string*
  store %nyx_string* %113, %nyx_string** %114
  %115 = load i1, i1* %111
  %116 = xor i1 %115, true
  br i1 %116, label %then30, label %else31
then30:
  %117 = getelementptr [15 x i8], [15 x i8]* @.str14, i32 0, i32 0
  %118 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str14.c, i8* %117)
  %119 = call i8* @nyx_string_to_cstr(%nyx_string* %118)
  %120 = call i1 @nyx_file_exists(i8* %119)
  br i1 %120, label %then33, label %else34
then33:
  %121 = getelementptr [15 x i8], [15 x i8]* @.str15, i32 0, i32 0
  %122 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str15.c, i8* %121)
  %123 = call i8* @nyx_string_to_cstr(%nyx_string* %122)
  %124 = call %nyx_string* @nyx_read_file(i8* %123)
  %125 = alloca %nyx_string*
  store %nyx_string* %124, %nyx_string** %125
  %126 = load %nyx_string*, %nyx_string** %125
  %127 = getelementptr [2 x i8], [2 x i8]* @.str16, i32 0, i32 0
  %128 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str16.c, i8* %127)
  %129 = call %nyx_string* @nyx_string_concat(%nyx_string* %126, %nyx_string* %128)
  store %nyx_string* %129, %nyx_string** %114
  br label %merge35
else34:
  br label %merge35
merge35:
  br label %merge32
else31:
  br label %merge32
merge32:
  %130 = call i8* @nyx_map_new(i32 0)
  %131 = alloca i8*
  store i8* %130, i8** %131
  %132 = load %nyx_string*, %nyx_string** %raw.ptr
  %133 = getelementptr [2 x i8], [2 x i8]* @.str17, i32 0, i32 0
  %134 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str17.c, i8* %133)
  %135 = call { i64, i8* }* @nyx_string_split(%nyx_string* %132, %nyx_string* %134)
  %136 = alloca { i64, i8* }*
  store { i64, i8* }* %135, { i64, i8* }** %136
  %137 = getelementptr [1 x i8], [1 x i8]* @.str18, i32 0, i32 0
  %138 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str18.c, i8* %137)
  %139 = alloca %nyx_string*
  store %nyx_string* %138, %nyx_string** %139
  %140 = alloca i64
  store i64 0, i64* %140
  %141 = getelementptr [1 x i8], [1 x i8]* @.str19, i32 0, i32 0
  %142 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str19.c, i8* %141)
  %143 = alloca %nyx_string*
  store %nyx_string* %142, %nyx_string** %143
  %144 = getelementptr [2 x i8], [2 x i8]* @.str20, i32 0, i32 0
  %145 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str20.c, i8* %144)
  %146 = alloca %nyx_string*
  store %nyx_string* %145, %nyx_string** %146
  %147 = call i8* @llvm.stacksave()
  br label %while_cond36
while_cond36:
  %148 = load i64, i64* %140
  %149 = load { i64, i8* }*, { i64, i8* }** %136
  %150 = call i64 @nyx_array_length({ i64, i8* }* %149)
  %151 = icmp slt i64 %148, %150
  br i1 %151, label %while_body37, label %while_end38
while_body37:
  call void @llvm.stackrestore(i8* %147)
  %152 = load { i64, i8* }*, { i64, i8* }** %136
  %153 = load i64, i64* %140
  %154 = call i64 @nyx_array_get_checked({ i64, i8* }* %152, i64 %153, i64 2)
  %155 = inttoptr i64 %154 to %nyx_string*
  %156 = alloca %nyx_string*
  store %nyx_string* %155, %nyx_string** %156
  %157 = load %nyx_string*, %nyx_string** %156
  %158 = call i1 @is_user_import(%nyx_string* %157)
  br i1 %158, label %then39, label %else40
then39:
  %159 = load %nyx_string*, %nyx_string** %156
  %160 = call %nyx_string* @find_import_path(%nyx_string* %159)
  %161 = alloca %nyx_string*
  store %nyx_string* %160, %nyx_string** %161
  %162 = load %nyx_string*, %nyx_string** %161
  %163 = load %nyx_string*, %nyx_string** %143
  %164 = call i1 @nyx_string_equals(%nyx_string* %162, %nyx_string* %163)
  %165 = xor i1 %164, true
  br i1 %165, label %then42, label %else43
then42:
  %166 = load i8*, i8** %131
  %167 = load %nyx_string*, %nyx_string** %161
  %168 = call i8* @nyx_string_to_cstr(%nyx_string* %167)
  %169 = call i1 @nyx_map_contains_str(i8* %166, i8* %168)
  %170 = xor i1 %169, true
  br i1 %170, label %then45, label %else46
then45:
  %171 = load i8*, i8** %131
  %172 = load %nyx_string*, %nyx_string** %161
  %173 = call i8* @nyx_string_to_cstr(%nyx_string* %172)
  call void @nyx_map_insert_int(i8* %171, i8* %173, i64 1)
  %174 = load %nyx_string*, %nyx_string** %161
  %175 = call %nyx_string* @resolve_module_path(%nyx_string* %174)
  %176 = alloca %nyx_string*
  store %nyx_string* %175, %nyx_string** %176
  %177 = load %nyx_string*, %nyx_string** %176
  %178 = load %nyx_string*, %nyx_string** %143
  %179 = call i1 @nyx_string_equals(%nyx_string* %177, %nyx_string* %178)
  %180 = xor i1 %179, true
  br i1 %180, label %then48, label %else49
then48:
  %181 = load %nyx_string*, %nyx_string** %176
  %182 = call i8* @nyx_string_to_cstr(%nyx_string* %181)
  %183 = call %nyx_string* @nyx_read_file(i8* %182)
  %184 = alloca %nyx_string*
  store %nyx_string* %183, %nyx_string** %184
  %185 = load %nyx_string*, %nyx_string** %139
  %186 = load %nyx_string*, %nyx_string** %184
  %187 = call %nyx_string* @nyx_string_concat(%nyx_string* %185, %nyx_string* %186)
  %188 = load %nyx_string*, %nyx_string** %146
  %189 = call %nyx_string* @nyx_string_concat(%nyx_string* %187, %nyx_string* %188)
  store %nyx_string* %189, %nyx_string** %139
  br label %merge50
else49:
  %190 = load %nyx_string*, %nyx_string** %139
  %191 = load %nyx_string*, %nyx_string** %156
  %192 = call %nyx_string* @nyx_string_concat(%nyx_string* %190, %nyx_string* %191)
  %193 = load %nyx_string*, %nyx_string** %146
  %194 = call %nyx_string* @nyx_string_concat(%nyx_string* %192, %nyx_string* %193)
  store %nyx_string* %194, %nyx_string** %139
  br label %merge50
merge50:
  br label %merge47
else46:
  br label %merge47
merge47:
  br label %merge44
else43:
  %195 = load %nyx_string*, %nyx_string** %139
  %196 = load %nyx_string*, %nyx_string** %156
  %197 = call %nyx_string* @nyx_string_concat(%nyx_string* %195, %nyx_string* %196)
  %198 = load %nyx_string*, %nyx_string** %146
  %199 = call %nyx_string* @nyx_string_concat(%nyx_string* %197, %nyx_string* %198)
  store %nyx_string* %199, %nyx_string** %139
  br label %merge44
merge44:
  br label %merge41
else40:
  %200 = load %nyx_string*, %nyx_string** %139
  %201 = load %nyx_string*, %nyx_string** %156
  %202 = call %nyx_string* @nyx_string_concat(%nyx_string* %200, %nyx_string* %201)
  %203 = load %nyx_string*, %nyx_string** %146
  %204 = call %nyx_string* @nyx_string_concat(%nyx_string* %202, %nyx_string* %203)
  store %nyx_string* %204, %nyx_string** %139
  br label %merge41
merge41:
  %205 = load i64, i64* %140
  %206 = add i64 %205, 1
  store i64 %206, i64* %140
  br label %while_cond36
while_end38:
  %207 = load %nyx_string*, %nyx_string** %114
  %208 = load %nyx_string*, %nyx_string** %139
  %209 = call %nyx_string* @nyx_string_concat(%nyx_string* %207, %nyx_string* %208)
  ret %nyx_string* %209
}

define internal i64 @scan_definitions(
{ i64, i8* }* %tokens.param, i64 %prelude_lines.param) {
  %tokens.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %tokens.param, { i64, i8* }** %tokens.ptr
  %prelude_lines.ptr = alloca i64
  store i64 %prelude_lines.param, i64* %prelude_lines.ptr
  %210 = alloca i64
  store i64 0, i64* %210
  %211 = load { i64, i8* }*, { i64, i8* }** %tokens.ptr
  %212 = call i64 @nyx_array_length({ i64, i8* }* %211)
  %213 = alloca i64
  store i64 %212, i64* %213
  %214 = getelementptr [3 x i8], [3 x i8]* @.str21, i32 0, i32 0
  %215 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str21.c, i8* %214)
  %216 = alloca %nyx_string*
  store %nyx_string* %215, %nyx_string** %216
  %217 = getelementptr [11 x i8], [11 x i8]* @.str22, i32 0, i32 0
  %218 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str22.c, i8* %217)
  %219 = alloca %nyx_string*
  store %nyx_string* %218, %nyx_string** %219
  %220 = getelementptr [8 x i8], [8 x i8]* @.str23, i32 0, i32 0
  %221 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str23.c, i8* %220)
  %222 = alloca %nyx_string*
  store %nyx_string* %221, %nyx_string** %222
  %223 = getelementptr [2 x i8], [2 x i8]* @.str24, i32 0, i32 0
  %224 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str24.c, i8* %223)
  %225 = alloca %nyx_string*
  store %nyx_string* %224, %nyx_string** %225
  %226 = getelementptr [7 x i8], [7 x i8]* @.str25, i32 0, i32 0
  %227 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str25.c, i8* %226)
  %228 = alloca %nyx_string*
  store %nyx_string* %227, %nyx_string** %228
  %229 = getelementptr [12 x i8], [12 x i8]* @.str26, i32 0, i32 0
  %230 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str26.c, i8* %229)
  %231 = alloca %nyx_string*
  store %nyx_string* %230, %nyx_string** %231
  %232 = getelementptr [5 x i8], [5 x i8]* @.str27, i32 0, i32 0
  %233 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str27.c, i8* %232)
  %234 = alloca %nyx_string*
  store %nyx_string* %233, %nyx_string** %234
  %235 = getelementptr [10 x i8], [10 x i8]* @.str28, i32 0, i32 0
  %236 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str28.c, i8* %235)
  %237 = alloca %nyx_string*
  store %nyx_string* %236, %nyx_string** %237
  %238 = getelementptr [6 x i8], [6 x i8]* @.str29, i32 0, i32 0
  %239 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str29.c, i8* %238)
  %240 = alloca %nyx_string*
  store %nyx_string* %239, %nyx_string** %240
  %241 = getelementptr [11 x i8], [11 x i8]* @.str30, i32 0, i32 0
  %242 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str30.c, i8* %241)
  %243 = alloca %nyx_string*
  store %nyx_string* %242, %nyx_string** %243
  %244 = getelementptr [4 x i8], [4 x i8]* @.str31, i32 0, i32 0
  %245 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str31.c, i8* %244)
  %246 = alloca %nyx_string*
  store %nyx_string* %245, %nyx_string** %246
  %247 = getelementptr [4 x i8], [4 x i8]* @.str32, i32 0, i32 0
  %248 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str32.c, i8* %247)
  %249 = alloca %nyx_string*
  store %nyx_string* %248, %nyx_string** %249
  %250 = getelementptr [4 x i8], [4 x i8]* @.str33, i32 0, i32 0
  %251 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str33.c, i8* %250)
  %252 = alloca %nyx_string*
  store %nyx_string* %251, %nyx_string** %252
  %253 = getelementptr [4 x i8], [4 x i8]* @.str34, i32 0, i32 0
  %254 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str34.c, i8* %253)
  %255 = alloca %nyx_string*
  store %nyx_string* %254, %nyx_string** %255
  %256 = getelementptr [5 x i8], [5 x i8]* @.str35, i32 0, i32 0
  %257 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str35.c, i8* %256)
  %258 = alloca %nyx_string*
  store %nyx_string* %257, %nyx_string** %258
  %259 = getelementptr [5 x i8], [5 x i8]* @.str36, i32 0, i32 0
  %260 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str36.c, i8* %259)
  %261 = alloca %nyx_string*
  store %nyx_string* %260, %nyx_string** %261
  %262 = getelementptr [7 x i8], [7 x i8]* @.str37, i32 0, i32 0
  %263 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str37.c, i8* %262)
  %264 = alloca %nyx_string*
  store %nyx_string* %263, %nyx_string** %264
  %265 = getelementptr [10 x i8], [10 x i8]* @.str38, i32 0, i32 0
  %266 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str38.c, i8* %265)
  %267 = alloca %nyx_string*
  store %nyx_string* %266, %nyx_string** %267
  %268 = call i8* @llvm.stacksave()
  br label %while_cond51
while_cond51:
  %269 = load i64, i64* %210
  %270 = load i64, i64* %213
  %271 = icmp slt i64 %269, %270
  br i1 %271, label %while_body52, label %while_end53
while_body52:
  call void @llvm.stackrestore(i8* %268)
  %272 = load { i64, i8* }*, { i64, i8* }** %tokens.ptr
  %273 = load i64, i64* %210
  %274 = call i64 @nyx_array_get({ i64, i8* }* %272, i64 %273)
  %275 = inttoptr i64 %274 to %Token*
  %276 = load %Token, %Token* %275
  %277 = alloca %Token
  store %Token %276, %Token* %277
  %278 = load %Token, %Token* %277
  %279 = call %nyx_string* @get_token_type(%Token %278)
  %280 = alloca %nyx_string*
  store %nyx_string* %279, %nyx_string** %280
  %281 = load %Token, %Token* %277
  %282 = call i64 @get_token_line(%Token %281)
  %283 = load i64, i64* %prelude_lines.ptr
  %284 = sub i64 %282, %283
  %285 = alloca i64
  store i64 %284, i64* %285
  %286 = load i64, i64* %285
  %287 = icmp sgt i64 %286, 0
  br i1 %287, label %then54, label %else55
then54:
  %288 = alloca i1
  store i1 false, i1* %288
  %289 = load %nyx_string*, %nyx_string** %280
  %290 = load %nyx_string*, %nyx_string** %216
  %291 = call i1 @nyx_string_equals(%nyx_string* %289, %nyx_string* %290)
  br i1 %291, label %sc_and_rhs57, label %sc_and_end58
sc_and_rhs57:
  %292 = load i64, i64* %210
  %293 = add i64 %292, 1
  %294 = load i64, i64* %213
  %295 = icmp slt i64 %293, %294
  store i1 %295, i1* %288
  br label %sc_and_end58
sc_and_end58:
  %296 = load i1, i1* %288
  br i1 %296, label %then59, label %else60
then59:
  %297 = load { i64, i8* }*, { i64, i8* }** %tokens.ptr
  %298 = load i64, i64* %210
  %299 = add i64 %298, 1
  %300 = call i64 @nyx_array_get({ i64, i8* }* %297, i64 %299)
  %301 = inttoptr i64 %300 to %Token*
  %302 = load %Token, %Token* %301
  %303 = alloca %Token
  store %Token %302, %Token* %303
  %304 = load %Token, %Token* %303
  %305 = call %nyx_string* @get_token_type(%Token %304)
  %306 = load %nyx_string*, %nyx_string** %219
  %307 = call i1 @nyx_string_equals(%nyx_string* %305, %nyx_string* %306)
  br i1 %307, label %then62, label %else63
then62:
  %308 = load %Token, %Token* %303
  %309 = call %nyx_string* @get_token_value(%Token %308)
  %310 = alloca %nyx_string*
  store %nyx_string* %309, %nyx_string** %310
  %311 = load %Token, %Token* %303
  %312 = call i64 @get_token_col(%Token %311)
  %313 = alloca i64
  store i64 %312, i64* %313
  %314 = load %nyx_string*, %nyx_string** %222
  %315 = load %nyx_string*, %nyx_string** %310
  %316 = call %nyx_string* @nyx_string_concat(%nyx_string* %314, %nyx_string* %315)
  %317 = load %nyx_string*, %nyx_string** %225
  %318 = call %nyx_string* @nyx_string_concat(%nyx_string* %316, %nyx_string* %317)
  %319 = load i64, i64* %285
  %320 = call %nyx_string* @nyx_string_from_int(i64 %319)
  %321 = call %nyx_string* @nyx_string_concat(%nyx_string* %318, %nyx_string* %320)
  %322 = load %nyx_string*, %nyx_string** %225
  %323 = call %nyx_string* @nyx_string_concat(%nyx_string* %321, %nyx_string* %322)
  %324 = load i64, i64* %313
  %325 = call %nyx_string* @nyx_string_from_int(i64 %324)
  %326 = call %nyx_string* @nyx_string_concat(%nyx_string* %323, %nyx_string* %325)
  %327 = call i8* @nyx_string_to_cstr(%nyx_string* %326)
  call void @nyx_print_string(i8* %327)
  br label %merge64
else63:
  br label %merge64
merge64:
  br label %merge61
else60:
  br label %merge61
merge61:
  %328 = alloca i1
  store i1 false, i1* %328
  %329 = load %nyx_string*, %nyx_string** %280
  %330 = load %nyx_string*, %nyx_string** %228
  %331 = call i1 @nyx_string_equals(%nyx_string* %329, %nyx_string* %330)
  br i1 %331, label %sc_and_rhs65, label %sc_and_end66
sc_and_rhs65:
  %332 = load i64, i64* %210
  %333 = add i64 %332, 1
  %334 = load i64, i64* %213
  %335 = icmp slt i64 %333, %334
  store i1 %335, i1* %328
  br label %sc_and_end66
sc_and_end66:
  %336 = load i1, i1* %328
  br i1 %336, label %then67, label %else68
then67:
  %337 = load { i64, i8* }*, { i64, i8* }** %tokens.ptr
  %338 = load i64, i64* %210
  %339 = add i64 %338, 1
  %340 = call i64 @nyx_array_get({ i64, i8* }* %337, i64 %339)
  %341 = inttoptr i64 %340 to %Token*
  %342 = load %Token, %Token* %341
  %343 = alloca %Token
  store %Token %342, %Token* %343
  %344 = load %Token, %Token* %343
  %345 = call %nyx_string* @get_token_type(%Token %344)
  %346 = load %nyx_string*, %nyx_string** %219
  %347 = call i1 @nyx_string_equals(%nyx_string* %345, %nyx_string* %346)
  br i1 %347, label %then70, label %else71
then70:
  %348 = load %Token, %Token* %343
  %349 = call %nyx_string* @get_token_value(%Token %348)
  %350 = alloca %nyx_string*
  store %nyx_string* %349, %nyx_string** %350
  %351 = load %Token, %Token* %343
  %352 = call i64 @get_token_col(%Token %351)
  %353 = alloca i64
  store i64 %352, i64* %353
  %354 = load %nyx_string*, %nyx_string** %231
  %355 = load %nyx_string*, %nyx_string** %350
  %356 = call %nyx_string* @nyx_string_concat(%nyx_string* %354, %nyx_string* %355)
  %357 = load %nyx_string*, %nyx_string** %225
  %358 = call %nyx_string* @nyx_string_concat(%nyx_string* %356, %nyx_string* %357)
  %359 = load i64, i64* %285
  %360 = call %nyx_string* @nyx_string_from_int(i64 %359)
  %361 = call %nyx_string* @nyx_string_concat(%nyx_string* %358, %nyx_string* %360)
  %362 = load %nyx_string*, %nyx_string** %225
  %363 = call %nyx_string* @nyx_string_concat(%nyx_string* %361, %nyx_string* %362)
  %364 = load i64, i64* %353
  %365 = call %nyx_string* @nyx_string_from_int(i64 %364)
  %366 = call %nyx_string* @nyx_string_concat(%nyx_string* %363, %nyx_string* %365)
  %367 = call i8* @nyx_string_to_cstr(%nyx_string* %366)
  call void @nyx_print_string(i8* %367)
  br label %merge72
else71:
  br label %merge72
merge72:
  br label %merge69
else68:
  br label %merge69
merge69:
  %368 = alloca i1
  store i1 false, i1* %368
  %369 = load %nyx_string*, %nyx_string** %280
  %370 = load %nyx_string*, %nyx_string** %234
  %371 = call i1 @nyx_string_equals(%nyx_string* %369, %nyx_string* %370)
  br i1 %371, label %sc_and_rhs73, label %sc_and_end74
sc_and_rhs73:
  %372 = load i64, i64* %210
  %373 = add i64 %372, 1
  %374 = load i64, i64* %213
  %375 = icmp slt i64 %373, %374
  store i1 %375, i1* %368
  br label %sc_and_end74
sc_and_end74:
  %376 = load i1, i1* %368
  br i1 %376, label %then75, label %else76
then75:
  %377 = load { i64, i8* }*, { i64, i8* }** %tokens.ptr
  %378 = load i64, i64* %210
  %379 = add i64 %378, 1
  %380 = call i64 @nyx_array_get({ i64, i8* }* %377, i64 %379)
  %381 = inttoptr i64 %380 to %Token*
  %382 = load %Token, %Token* %381
  %383 = alloca %Token
  store %Token %382, %Token* %383
  %384 = load %Token, %Token* %383
  %385 = call %nyx_string* @get_token_type(%Token %384)
  %386 = load %nyx_string*, %nyx_string** %219
  %387 = call i1 @nyx_string_equals(%nyx_string* %385, %nyx_string* %386)
  br i1 %387, label %then78, label %else79
then78:
  %388 = load %Token, %Token* %383
  %389 = call %nyx_string* @get_token_value(%Token %388)
  %390 = alloca %nyx_string*
  store %nyx_string* %389, %nyx_string** %390
  %391 = load %Token, %Token* %383
  %392 = call i64 @get_token_col(%Token %391)
  %393 = alloca i64
  store i64 %392, i64* %393
  %394 = load %nyx_string*, %nyx_string** %237
  %395 = load %nyx_string*, %nyx_string** %390
  %396 = call %nyx_string* @nyx_string_concat(%nyx_string* %394, %nyx_string* %395)
  %397 = load %nyx_string*, %nyx_string** %225
  %398 = call %nyx_string* @nyx_string_concat(%nyx_string* %396, %nyx_string* %397)
  %399 = load i64, i64* %285
  %400 = call %nyx_string* @nyx_string_from_int(i64 %399)
  %401 = call %nyx_string* @nyx_string_concat(%nyx_string* %398, %nyx_string* %400)
  %402 = load %nyx_string*, %nyx_string** %225
  %403 = call %nyx_string* @nyx_string_concat(%nyx_string* %401, %nyx_string* %402)
  %404 = load i64, i64* %393
  %405 = call %nyx_string* @nyx_string_from_int(i64 %404)
  %406 = call %nyx_string* @nyx_string_concat(%nyx_string* %403, %nyx_string* %405)
  %407 = call i8* @nyx_string_to_cstr(%nyx_string* %406)
  call void @nyx_print_string(i8* %407)
  br label %merge80
else79:
  br label %merge80
merge80:
  br label %merge77
else76:
  br label %merge77
merge77:
  %408 = alloca i1
  store i1 false, i1* %408
  %409 = load %nyx_string*, %nyx_string** %280
  %410 = load %nyx_string*, %nyx_string** %240
  %411 = call i1 @nyx_string_equals(%nyx_string* %409, %nyx_string* %410)
  br i1 %411, label %sc_and_rhs81, label %sc_and_end82
sc_and_rhs81:
  %412 = load i64, i64* %210
  %413 = add i64 %412, 1
  %414 = load i64, i64* %213
  %415 = icmp slt i64 %413, %414
  store i1 %415, i1* %408
  br label %sc_and_end82
sc_and_end82:
  %416 = load i1, i1* %408
  br i1 %416, label %then83, label %else84
then83:
  %417 = load { i64, i8* }*, { i64, i8* }** %tokens.ptr
  %418 = load i64, i64* %210
  %419 = add i64 %418, 1
  %420 = call i64 @nyx_array_get({ i64, i8* }* %417, i64 %419)
  %421 = inttoptr i64 %420 to %Token*
  %422 = load %Token, %Token* %421
  %423 = alloca %Token
  store %Token %422, %Token* %423
  %424 = load %Token, %Token* %423
  %425 = call %nyx_string* @get_token_type(%Token %424)
  %426 = load %nyx_string*, %nyx_string** %219
  %427 = call i1 @nyx_string_equals(%nyx_string* %425, %nyx_string* %426)
  br i1 %427, label %then86, label %else87
then86:
  %428 = load %Token, %Token* %423
  %429 = call %nyx_string* @get_token_value(%Token %428)
  %430 = alloca %nyx_string*
  store %nyx_string* %429, %nyx_string** %430
  %431 = load %Token, %Token* %423
  %432 = call i64 @get_token_col(%Token %431)
  %433 = alloca i64
  store i64 %432, i64* %433
  %434 = load %nyx_string*, %nyx_string** %243
  %435 = load %nyx_string*, %nyx_string** %430
  %436 = call %nyx_string* @nyx_string_concat(%nyx_string* %434, %nyx_string* %435)
  %437 = load %nyx_string*, %nyx_string** %225
  %438 = call %nyx_string* @nyx_string_concat(%nyx_string* %436, %nyx_string* %437)
  %439 = load i64, i64* %285
  %440 = call %nyx_string* @nyx_string_from_int(i64 %439)
  %441 = call %nyx_string* @nyx_string_concat(%nyx_string* %438, %nyx_string* %440)
  %442 = load %nyx_string*, %nyx_string** %225
  %443 = call %nyx_string* @nyx_string_concat(%nyx_string* %441, %nyx_string* %442)
  %444 = load i64, i64* %433
  %445 = call %nyx_string* @nyx_string_from_int(i64 %444)
  %446 = call %nyx_string* @nyx_string_concat(%nyx_string* %443, %nyx_string* %445)
  %447 = call i8* @nyx_string_to_cstr(%nyx_string* %446)
  call void @nyx_print_string(i8* %447)
  br label %merge88
else87:
  br label %merge88
merge88:
  br label %merge85
else84:
  br label %merge85
merge85:
  %448 = alloca i1
  store i1 false, i1* %448
  %449 = alloca i1
  store i1 true, i1* %449
  %450 = load %nyx_string*, %nyx_string** %280
  %451 = load %nyx_string*, %nyx_string** %246
  %452 = call i1 @nyx_string_equals(%nyx_string* %450, %nyx_string* %451)
  br i1 %452, label %sc_or_end90, label %sc_or_rhs89
sc_or_rhs89:
  %453 = load %nyx_string*, %nyx_string** %280
  %454 = load %nyx_string*, %nyx_string** %249
  %455 = call i1 @nyx_string_equals(%nyx_string* %453, %nyx_string* %454)
  store i1 %455, i1* %449
  br label %sc_or_end90
sc_or_end90:
  %456 = load i1, i1* %449
  br i1 %456, label %sc_and_rhs91, label %sc_and_end92
sc_and_rhs91:
  %457 = load i64, i64* %210
  %458 = add i64 %457, 1
  %459 = load i64, i64* %213
  %460 = icmp slt i64 %458, %459
  store i1 %460, i1* %448
  br label %sc_and_end92
sc_and_end92:
  %461 = load i1, i1* %448
  br i1 %461, label %then93, label %else94
then93:
  %462 = load { i64, i8* }*, { i64, i8* }** %tokens.ptr
  %463 = load i64, i64* %210
  %464 = add i64 %463, 1
  %465 = call i64 @nyx_array_get({ i64, i8* }* %462, i64 %464)
  %466 = inttoptr i64 %465 to %Token*
  %467 = load %Token, %Token* %466
  %468 = alloca %Token
  store %Token %467, %Token* %468
  %469 = load %Token, %Token* %468
  %470 = call %nyx_string* @get_token_type(%Token %469)
  %471 = load %nyx_string*, %nyx_string** %219
  %472 = call i1 @nyx_string_equals(%nyx_string* %470, %nyx_string* %471)
  br i1 %472, label %then96, label %else97
then96:
  %473 = load %Token, %Token* %468
  %474 = call %nyx_string* @get_token_value(%Token %473)
  %475 = alloca %nyx_string*
  store %nyx_string* %474, %nyx_string** %475
  %476 = load %Token, %Token* %468
  %477 = call i64 @get_token_col(%Token %476)
  %478 = alloca i64
  store i64 %477, i64* %478
  %479 = load %nyx_string*, %nyx_string** %252
  %480 = alloca %nyx_string*
  store %nyx_string* %479, %nyx_string** %480
  %481 = load %nyx_string*, %nyx_string** %280
  %482 = load %nyx_string*, %nyx_string** %249
  %483 = call i1 @nyx_string_equals(%nyx_string* %481, %nyx_string* %482)
  br i1 %483, label %then99, label %else100
then99:
  %484 = load %nyx_string*, %nyx_string** %255
  store %nyx_string* %484, %nyx_string** %480
  br label %merge101
else100:
  br label %merge101
merge101:
  %485 = load %nyx_string*, %nyx_string** %258
  %486 = load %nyx_string*, %nyx_string** %480
  %487 = call %nyx_string* @nyx_string_concat(%nyx_string* %485, %nyx_string* %486)
  %488 = load %nyx_string*, %nyx_string** %225
  %489 = call %nyx_string* @nyx_string_concat(%nyx_string* %487, %nyx_string* %488)
  %490 = load %nyx_string*, %nyx_string** %475
  %491 = call %nyx_string* @nyx_string_concat(%nyx_string* %489, %nyx_string* %490)
  %492 = load %nyx_string*, %nyx_string** %225
  %493 = call %nyx_string* @nyx_string_concat(%nyx_string* %491, %nyx_string* %492)
  %494 = load i64, i64* %285
  %495 = call %nyx_string* @nyx_string_from_int(i64 %494)
  %496 = call %nyx_string* @nyx_string_concat(%nyx_string* %493, %nyx_string* %495)
  %497 = load %nyx_string*, %nyx_string** %225
  %498 = call %nyx_string* @nyx_string_concat(%nyx_string* %496, %nyx_string* %497)
  %499 = load i64, i64* %478
  %500 = call %nyx_string* @nyx_string_from_int(i64 %499)
  %501 = call %nyx_string* @nyx_string_concat(%nyx_string* %498, %nyx_string* %500)
  %502 = call i8* @nyx_string_to_cstr(%nyx_string* %501)
  call void @nyx_print_string(i8* %502)
  br label %merge98
else97:
  br label %merge98
merge98:
  br label %merge95
else94:
  br label %merge95
merge95:
  %503 = alloca i1
  store i1 false, i1* %503
  %504 = load %nyx_string*, %nyx_string** %280
  %505 = load %nyx_string*, %nyx_string** %261
  %506 = call i1 @nyx_string_equals(%nyx_string* %504, %nyx_string* %505)
  br i1 %506, label %sc_and_rhs102, label %sc_and_end103
sc_and_rhs102:
  %507 = load i64, i64* %210
  %508 = add i64 %507, 1
  %509 = load i64, i64* %213
  %510 = icmp slt i64 %508, %509
  store i1 %510, i1* %503
  br label %sc_and_end103
sc_and_end103:
  %511 = load i1, i1* %503
  br i1 %511, label %then104, label %else105
then104:
  %512 = load { i64, i8* }*, { i64, i8* }** %tokens.ptr
  %513 = load i64, i64* %210
  %514 = add i64 %513, 1
  %515 = call i64 @nyx_array_get({ i64, i8* }* %512, i64 %514)
  %516 = inttoptr i64 %515 to %Token*
  %517 = load %Token, %Token* %516
  %518 = alloca %Token
  store %Token %517, %Token* %518
  %519 = load %Token, %Token* %518
  %520 = call %nyx_string* @get_token_type(%Token %519)
  %521 = load %nyx_string*, %nyx_string** %264
  %522 = call i1 @nyx_string_equals(%nyx_string* %520, %nyx_string* %521)
  br i1 %522, label %then107, label %else108
then107:
  %523 = load %Token, %Token* %518
  %524 = call %nyx_string* @get_token_value(%Token %523)
  %525 = alloca %nyx_string*
  store %nyx_string* %524, %nyx_string** %525
  %526 = load %Token, %Token* %518
  %527 = call i64 @get_token_col(%Token %526)
  %528 = alloca i64
  store i64 %527, i64* %528
  %529 = load %nyx_string*, %nyx_string** %267
  %530 = load %nyx_string*, %nyx_string** %525
  %531 = call %nyx_string* @nyx_string_concat(%nyx_string* %529, %nyx_string* %530)
  %532 = load %nyx_string*, %nyx_string** %225
  %533 = call %nyx_string* @nyx_string_concat(%nyx_string* %531, %nyx_string* %532)
  %534 = load i64, i64* %285
  %535 = call %nyx_string* @nyx_string_from_int(i64 %534)
  %536 = call %nyx_string* @nyx_string_concat(%nyx_string* %533, %nyx_string* %535)
  %537 = load %nyx_string*, %nyx_string** %225
  %538 = call %nyx_string* @nyx_string_concat(%nyx_string* %536, %nyx_string* %537)
  %539 = load i64, i64* %528
  %540 = call %nyx_string* @nyx_string_from_int(i64 %539)
  %541 = call %nyx_string* @nyx_string_concat(%nyx_string* %538, %nyx_string* %540)
  %542 = call i8* @nyx_string_to_cstr(%nyx_string* %541)
  call void @nyx_print_string(i8* %542)
  br label %merge109
else108:
  br label %merge109
merge109:
  br label %merge106
else105:
  br label %merge106
merge106:
  br label %merge56
else55:
  br label %merge56
merge56:
  %543 = load i64, i64* %210
  %544 = add i64 %543, 1
  store i64 %544, i64* %210
  br label %while_cond51
while_end53:
  ret i64 0
}

define internal i64 @count_prelude_lines(
) {
  %545 = getelementptr [15 x i8], [15 x i8]* @.str39, i32 0, i32 0
  %546 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str39.c, i8* %545)
  %547 = call i8* @nyx_string_to_cstr(%nyx_string* %546)
  %548 = call i1 @nyx_file_exists(i8* %547)
  br i1 %548, label %then110, label %else111
then110:
  %549 = getelementptr [15 x i8], [15 x i8]* @.str40, i32 0, i32 0
  %550 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str40.c, i8* %549)
  %551 = call i8* @nyx_string_to_cstr(%nyx_string* %550)
  %552 = call %nyx_string* @nyx_read_file(i8* %551)
  %553 = alloca %nyx_string*
  store %nyx_string* %552, %nyx_string** %553
  %554 = load %nyx_string*, %nyx_string** %553
  %555 = getelementptr [2 x i8], [2 x i8]* @.str41, i32 0, i32 0
  %556 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str41.c, i8* %555)
  %557 = call { i64, i8* }* @nyx_string_split(%nyx_string* %554, %nyx_string* %556)
  %558 = alloca { i64, i8* }*
  store { i64, i8* }* %557, { i64, i8* }** %558
  %559 = load { i64, i8* }*, { i64, i8* }** %558
  %560 = call i64 @nyx_array_length({ i64, i8* }* %559)
  ret i64 %560
else111:
  br label %merge112
merge112:
  ret i64 0
}

define i64 @main(
i32 %argc, i8** %argv) {
  call void @nyx_set_args(i32 %argc, i8** %argv)
  %561 = getelementptr [8 x i8], [8 x i8]* @.str42, i32 0, i32 0
  %562 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str42.c, i8* %561)
  %563 = call i8* @nyx_string_to_cstr(%nyx_string* %562)
  %564 = call %nyx_string* @nyx_getenv(i8* %563)
  %565 = alloca %nyx_string*
  store %nyx_string* %564, %nyx_string** %565
  %566 = load %nyx_string*, %nyx_string** %565
  %567 = getelementptr [1 x i8], [1 x i8]* @.str43, i32 0, i32 0
  %568 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str43.c, i8* %567)
  %569 = call i1 @nyx_string_equals(%nyx_string* %566, %nyx_string* %568)
  br i1 %569, label %then113, label %else114
then113:
  %570 = getelementptr [10 x i8], [10 x i8]* @.str44, i32 0, i32 0
  %571 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str44.c, i8* %570)
  store %nyx_string* %571, %nyx_string** %565
  br label %merge115
else114:
  br label %merge115
merge115:
  %572 = load %nyx_string*, %nyx_string** %565
  %573 = call i8* @nyx_string_to_cstr(%nyx_string* %572)
  %574 = call %nyx_string* @nyx_read_file(i8* %573)
  %575 = alloca %nyx_string*
  store %nyx_string* %574, %nyx_string** %575
  %576 = load %nyx_string*, %nyx_string** %575
  %577 = call %nyx_string* @resolve_source(%nyx_string* %576)
  %578 = alloca %nyx_string*
  store %nyx_string* %577, %nyx_string** %578
  %579 = call i64 @count_prelude_lines()
  %580 = alloca i64
  store i64 %579, i64* %580
  %581 = load %nyx_string*, %nyx_string** %578
  %582 = call { i64, i8* }* @tokenize(%nyx_string* %581)
  %583 = alloca { i64, i8* }*
  store { i64, i8* }* %582, { i64, i8* }** %583
  %584 = load { i64, i8* }*, { i64, i8* }** %583
  %585 = load %nyx_string*, %nyx_string** %578
  %586 = call { i64, i8* }* @parse({ i64, i8* }* %584, %nyx_string* %585)
  %587 = alloca { i64, i8* }*
  store { i64, i8* }* %586, { i64, i8* }** %587
  %588 = call i64 @get_parse_error_count()
  %589 = alloca i64
  store i64 %588, i64* %589
  %590 = load i64, i64* %589
  %591 = icmp sgt i64 %590, 0
  br i1 %591, label %then116, label %else117
then116:
  %592 = getelementptr [34 x i8], [34 x i8]* @.str45, i32 0, i32 0
  %593 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str45.c, i8* %592)
  %594 = load i64, i64* %589
  %595 = call %nyx_string* @nyx_string_from_int(i64 %594)
  %596 = call %nyx_string* @nyx_string_concat(%nyx_string* %593, %nyx_string* %595)
  %597 = getelementptr [10 x i8], [10 x i8]* @.str46, i32 0, i32 0
  %598 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str46.c, i8* %597)
  %599 = call %nyx_string* @nyx_string_concat(%nyx_string* %596, %nyx_string* %598)
  %600 = call i8* @nyx_string_to_cstr(%nyx_string* %599)
  call void @nyx_print_string(i8* %600)
  %601 = getelementptr [4 x i8], [4 x i8]* @.str47, i32 0, i32 0
  %602 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str47.c, i8* %601)
  %603 = call i8* @nyx_string_to_cstr(%nyx_string* %602)
  call void @nyx_print_string(i8* %603)
  ret i64 1
else117:
  br label %merge118
merge118:
  %604 = load { i64, i8* }*, { i64, i8* }** %587
  %605 = call i64 @nyx_array_get({ i64, i8* }* %604, i64 0)
  %606 = inttoptr i64 %605 to %nyx_string*
  %607 = call i64 @nyx_array_get({ i64, i8* }* %604, i64 1)
  %608 = inttoptr i64 %607 to { i64, i8* }*
  %609 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %604, i64 2)
  %610 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %604, i64 3)
  %611 = insertvalue %ASTNode undef, %nyx_string* %606, 0
  %612 = insertvalue %ASTNode %611, { i64, i8* }* %608, 1
  %613 = insertvalue %ASTNode %612, i64 %609, 2
  %614 = insertvalue %ASTNode %613, i64 %610, 3
  %615 = call i1 @analyze(%ASTNode %614)
  %616 = alloca i1
  store i1 %615, i1* %616
  %617 = alloca i1
  store i1 0, i1* %617
  %618 = load i1, i1* %616
  %619 = xor i1 %618, true
  br i1 %619, label %then119, label %else120
then119:
  store i1 1, i1* %617
  %620 = call { i64, i8* }* @get_errors()
  %621 = alloca { i64, i8* }*
  store { i64, i8* }* %620, { i64, i8* }** %621
  %622 = alloca i64
  store i64 0, i64* %622
  %623 = getelementptr [12 x i8], [12 x i8]* @.str48, i32 0, i32 0
  %624 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str48.c, i8* %623)
  %625 = alloca %nyx_string*
  store %nyx_string* %624, %nyx_string** %625
  %626 = getelementptr [2 x i8], [2 x i8]* @.str49, i32 0, i32 0
  %627 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str49.c, i8* %626)
  %628 = alloca %nyx_string*
  store %nyx_string* %627, %nyx_string** %628
  %629 = getelementptr [16 x i8], [16 x i8]* @.str50, i32 0, i32 0
  %630 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str50.c, i8* %629)
  %631 = alloca %nyx_string*
  store %nyx_string* %630, %nyx_string** %631
  %632 = call i8* @llvm.stacksave()
  br label %while_cond122
while_cond122:
  %633 = load i64, i64* %622
  %634 = load { i64, i8* }*, { i64, i8* }** %621
  %635 = call i64 @nyx_array_length({ i64, i8* }* %634)
  %636 = icmp slt i64 %633, %635
  br i1 %636, label %while_body123, label %while_end124
while_body123:
  call void @llvm.stackrestore(i8* %632)
  %637 = load { i64, i8* }*, { i64, i8* }** %621
  %638 = load i64, i64* %622
  %639 = call i64 @nyx_array_get_checked({ i64, i8* }* %637, i64 %638, i64 2)
  %640 = inttoptr i64 %639 to %nyx_string*
  %641 = alloca %nyx_string*
  store %nyx_string* %640, %nyx_string** %641
  %642 = sub i64 0, 1
  %643 = alloca i64
  store i64 %642, i64* %643
  %644 = alloca i64
  store i64 0, i64* %644
  %645 = call i8* @llvm.stacksave()
  br label %while_cond125
while_cond125:
  %646 = load i64, i64* %644
  %647 = load %nyx_string*, %nyx_string** %641
  %648 = call i64 @nyx_string_byte_length(%nyx_string* %647)
  %649 = icmp slt i64 %646, %648
  br i1 %649, label %while_body126, label %while_end127
while_body126:
  call void @llvm.stackrestore(i8* %645)
  %650 = load %nyx_string*, %nyx_string** %641
  %651 = load i64, i64* %644
  %652 = call i8 @nyx_string_char_at(%nyx_string* %650, i64 %651)
  %653 = zext i8 %652 to i64
  %654 = trunc i64 %653 to i8
  %655 = alloca i8
  store i8 %654, i8* %655
  %656 = load i8, i8* %655
  %657 = getelementptr [1 x i8], [1 x i8]* @.str51, i32 0, i32 0
  %658 = load i8, i8* %657
  %659 = zext i8 %658 to i64
  %660 = zext i8 %656 to i64
  %661 = icmp eq i64 %660, %659
  br i1 %661, label %then128, label %else129
then128:
  %662 = load i64, i64* %643
  %663 = sub i64 0, 1
  %664 = icmp eq i64 %662, %663
  br i1 %664, label %then131, label %else132
then131:
  %665 = load i64, i64* %644
  store i64 %665, i64* %643
  br label %merge133
else132:
  br label %merge133
merge133:
  %666 = load %nyx_string*, %nyx_string** %641
  %667 = call i64 @nyx_string_byte_length(%nyx_string* %666)
  store i64 %667, i64* %644
  br label %merge130
else129:
  br label %merge130
merge130:
  %668 = load i64, i64* %644
  %669 = add i64 %668, 1
  store i64 %669, i64* %644
  br label %while_cond125
while_end127:
  %670 = load i64, i64* %643
  %671 = icmp sgt i64 %670, 0
  br i1 %671, label %then134, label %else135
then134:
  %672 = sub i64 0, 1
  %673 = alloca i64
  store i64 %672, i64* %673
  %674 = load i64, i64* %643
  %675 = add i64 %674, 1
  %676 = alloca i64
  store i64 %675, i64* %676
  %677 = call i8* @llvm.stacksave()
  br label %while_cond137
while_cond137:
  %678 = load i64, i64* %676
  %679 = load %nyx_string*, %nyx_string** %641
  %680 = call i64 @nyx_string_byte_length(%nyx_string* %679)
  %681 = icmp slt i64 %678, %680
  br i1 %681, label %while_body138, label %while_end139
while_body138:
  call void @llvm.stackrestore(i8* %677)
  %682 = load %nyx_string*, %nyx_string** %641
  %683 = load i64, i64* %676
  %684 = call i8 @nyx_string_char_at(%nyx_string* %682, i64 %683)
  %685 = zext i8 %684 to i64
  %686 = trunc i64 %685 to i8
  %687 = alloca i8
  store i8 %686, i8* %687
  %688 = load i8, i8* %687
  %689 = getelementptr [1 x i8], [1 x i8]* @.str52, i32 0, i32 0
  %690 = load i8, i8* %689
  %691 = zext i8 %690 to i64
  %692 = zext i8 %688 to i64
  %693 = icmp eq i64 %692, %691
  br i1 %693, label %then140, label %else141
then140:
  %694 = load i64, i64* %673
  %695 = sub i64 0, 1
  %696 = icmp eq i64 %694, %695
  br i1 %696, label %then143, label %else144
then143:
  %697 = load i64, i64* %676
  store i64 %697, i64* %673
  br label %merge145
else144:
  br label %merge145
merge145:
  %698 = load %nyx_string*, %nyx_string** %641
  %699 = call i64 @nyx_string_byte_length(%nyx_string* %698)
  store i64 %699, i64* %676
  br label %merge142
else141:
  br label %merge142
merge142:
  %700 = load i64, i64* %676
  %701 = add i64 %700, 1
  store i64 %701, i64* %676
  br label %while_cond137
while_end139:
  %702 = load i64, i64* %673
  %703 = load i64, i64* %643
  %704 = icmp sgt i64 %702, %703
  br i1 %704, label %then146, label %else147
then146:
  %705 = load %nyx_string*, %nyx_string** %641
  %706 = load i64, i64* %643
  %707 = call %nyx_string* @nyx_string_substring(%nyx_string* %705, i64 0, i64 %706)
  %708 = alloca %nyx_string*
  store %nyx_string* %707, %nyx_string** %708
  %709 = load %nyx_string*, %nyx_string** %641
  %710 = load i64, i64* %643
  %711 = add i64 %710, 1
  %712 = load i64, i64* %673
  %713 = call %nyx_string* @nyx_string_substring(%nyx_string* %709, i64 %711, i64 %712)
  %714 = alloca %nyx_string*
  store %nyx_string* %713, %nyx_string** %714
  %715 = load %nyx_string*, %nyx_string** %641
  %716 = load i64, i64* %673
  %717 = add i64 %716, 1
  %718 = load %nyx_string*, %nyx_string** %641
  %719 = call i64 @nyx_string_byte_length(%nyx_string* %718)
  %720 = call %nyx_string* @nyx_string_substring(%nyx_string* %715, i64 %717, i64 %719)
  %721 = alloca %nyx_string*
  store %nyx_string* %720, %nyx_string** %721
  %722 = load %nyx_string*, %nyx_string** %625
  %723 = load %nyx_string*, %nyx_string** %708
  %724 = call %nyx_string* @nyx_string_concat(%nyx_string* %722, %nyx_string* %723)
  %725 = load %nyx_string*, %nyx_string** %628
  %726 = call %nyx_string* @nyx_string_concat(%nyx_string* %724, %nyx_string* %725)
  %727 = load %nyx_string*, %nyx_string** %714
  %728 = call %nyx_string* @nyx_string_concat(%nyx_string* %726, %nyx_string* %727)
  %729 = load %nyx_string*, %nyx_string** %628
  %730 = call %nyx_string* @nyx_string_concat(%nyx_string* %728, %nyx_string* %729)
  %731 = load %nyx_string*, %nyx_string** %721
  %732 = call %nyx_string* @nyx_string_concat(%nyx_string* %730, %nyx_string* %731)
  %733 = call i8* @nyx_string_to_cstr(%nyx_string* %732)
  call void @nyx_print_string(i8* %733)
  br label %merge148
else147:
  %734 = load %nyx_string*, %nyx_string** %631
  %735 = load %nyx_string*, %nyx_string** %641
  %736 = call %nyx_string* @nyx_string_concat(%nyx_string* %734, %nyx_string* %735)
  %737 = call i8* @nyx_string_to_cstr(%nyx_string* %736)
  call void @nyx_print_string(i8* %737)
  br label %merge148
merge148:
  br label %merge136
else135:
  %738 = load %nyx_string*, %nyx_string** %631
  %739 = load %nyx_string*, %nyx_string** %641
  %740 = call %nyx_string* @nyx_string_concat(%nyx_string* %738, %nyx_string* %739)
  %741 = call i8* @nyx_string_to_cstr(%nyx_string* %740)
  call void @nyx_print_string(i8* %741)
  br label %merge136
merge136:
  %742 = load i64, i64* %622
  %743 = add i64 %742, 1
  store i64 %743, i64* %622
  br label %while_cond122
while_end124:
  br label %merge121
else120:
  br label %merge121
merge121:
  %744 = load { i64, i8* }*, { i64, i8* }** %583
  %745 = load i64, i64* %580
  %746 = call i64 @scan_definitions({ i64, i8* }* %744, i64 %745)
  %747 = call { i64, i8* }* @get_sym_names()
  %748 = alloca { i64, i8* }*
  store { i64, i8* }* %747, { i64, i8* }** %748
  %749 = call { i64, i8* }* @get_sym_kinds()
  %750 = alloca { i64, i8* }*
  store { i64, i8* }* %749, { i64, i8* }** %750
  %751 = call i64 @get_sym_count()
  %752 = alloca i64
  store i64 %751, i64* %752
  %753 = alloca i64
  store i64 0, i64* %753
  %754 = getelementptr [5 x i8], [5 x i8]* @.str53, i32 0, i32 0
  %755 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str53.c, i8* %754)
  %756 = alloca %nyx_string*
  store %nyx_string* %755, %nyx_string** %756
  %757 = getelementptr [2 x i8], [2 x i8]* @.str54, i32 0, i32 0
  %758 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str54.c, i8* %757)
  %759 = alloca %nyx_string*
  store %nyx_string* %758, %nyx_string** %759
  %760 = call i8* @llvm.stacksave()
  br label %while_cond149
while_cond149:
  %761 = load i64, i64* %753
  %762 = load i64, i64* %752
  %763 = icmp slt i64 %761, %762
  br i1 %763, label %while_body150, label %while_end151
while_body150:
  call void @llvm.stackrestore(i8* %760)
  %764 = load { i64, i8* }*, { i64, i8* }** %748
  %765 = load i64, i64* %753
  %766 = call i64 @nyx_array_get_checked({ i64, i8* }* %764, i64 %765, i64 2)
  %767 = inttoptr i64 %766 to %nyx_string*
  %768 = alloca %nyx_string*
  store %nyx_string* %767, %nyx_string** %768
  %769 = load { i64, i8* }*, { i64, i8* }** %750
  %770 = load i64, i64* %753
  %771 = call i64 @nyx_array_get_checked({ i64, i8* }* %769, i64 %770, i64 2)
  %772 = inttoptr i64 %771 to %nyx_string*
  %773 = alloca %nyx_string*
  store %nyx_string* %772, %nyx_string** %773
  %774 = load %nyx_string*, %nyx_string** %756
  %775 = load %nyx_string*, %nyx_string** %773
  %776 = call %nyx_string* @nyx_string_concat(%nyx_string* %774, %nyx_string* %775)
  %777 = load %nyx_string*, %nyx_string** %759
  %778 = call %nyx_string* @nyx_string_concat(%nyx_string* %776, %nyx_string* %777)
  %779 = load %nyx_string*, %nyx_string** %768
  %780 = call %nyx_string* @nyx_string_concat(%nyx_string* %778, %nyx_string* %779)
  %781 = call i8* @nyx_string_to_cstr(%nyx_string* %780)
  call void @nyx_print_string(i8* %781)
  %782 = load i64, i64* %753
  %783 = add i64 %782, 1
  store i64 %783, i64* %753
  br label %while_cond149
while_end151:
  %784 = getelementptr [4 x i8], [4 x i8]* @.str55, i32 0, i32 0
  %785 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str55.c, i8* %784)
  %786 = call i8* @nyx_string_to_cstr(%nyx_string* %785)
  call void @nyx_print_string(i8* %786)
  %787 = load i1, i1* %617
  br i1 %787, label %then152, label %else153
then152:
  ret i64 1
else153:
  br label %merge154
merge154:
  ret i64 0
}


attributes #0 = { returns_twice }

