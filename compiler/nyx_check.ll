source_filename = "script.nx"
target triple = "x86_64-pc-linux-gnu"

%Token = type { %nyx_string*, %nyx_string*, i64, i64 }

@.str0 = private unnamed_addr constant [3 x i8] c"FN\00"
@.str0.c = internal global %nyx_string* null
@.str1 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str1.c = internal global %nyx_string* null
@.str2 = private unnamed_addr constant [8 x i8] c"DEF:fn:\00"
@.str2.c = internal global %nyx_string* null
@.str3 = private unnamed_addr constant [2 x i8] c":\00"
@.str3.c = internal global %nyx_string* null
@.str4 = private unnamed_addr constant [7 x i8] c"STRUCT\00"
@.str4.c = internal global %nyx_string* null
@.str5 = private unnamed_addr constant [12 x i8] c"DEF:struct:\00"
@.str5.c = internal global %nyx_string* null
@.str6 = private unnamed_addr constant [5 x i8] c"ENUM\00"
@.str6.c = internal global %nyx_string* null
@.str7 = private unnamed_addr constant [10 x i8] c"DEF:enum:\00"
@.str7.c = internal global %nyx_string* null
@.str8 = private unnamed_addr constant [6 x i8] c"TRAIT\00"
@.str8.c = internal global %nyx_string* null
@.str9 = private unnamed_addr constant [11 x i8] c"DEF:trait:\00"
@.str9.c = internal global %nyx_string* null
@.str10 = private unnamed_addr constant [4 x i8] c"LET\00"
@.str10.c = internal global %nyx_string* null
@.str11 = private unnamed_addr constant [4 x i8] c"VAR\00"
@.str11.c = internal global %nyx_string* null
@.str12 = private unnamed_addr constant [4 x i8] c"let\00"
@.str12.c = internal global %nyx_string* null
@.str13 = private unnamed_addr constant [4 x i8] c"var\00"
@.str13.c = internal global %nyx_string* null
@.str14 = private unnamed_addr constant [5 x i8] c"DEF:\00"
@.str14.c = internal global %nyx_string* null
@.str15 = private unnamed_addr constant [5 x i8] c"TEST\00"
@.str15.c = internal global %nyx_string* null
@.str16 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str16.c = internal global %nyx_string* null
@.str17 = private unnamed_addr constant [10 x i8] c"DEF:test:\00"
@.str17.c = internal global %nyx_string* null
@.slotT18 = private unnamed_addr constant [6 x i8] c"Token\00"
@.slotT19 = private unnamed_addr constant [6 x i8] c"Token\00"
@.slotT20 = private unnamed_addr constant [6 x i8] c"Token\00"
@.slotT21 = private unnamed_addr constant [6 x i8] c"Token\00"
@.slotT22 = private unnamed_addr constant [6 x i8] c"Token\00"
@.slotT23 = private unnamed_addr constant [6 x i8] c"Token\00"
@.slotT24 = private unnamed_addr constant [6 x i8] c"Token\00"
@.str25 = private unnamed_addr constant [8 x i8] c"NYX_SRC\00"
@.str25.c = internal global %nyx_string* null
@.str26 = private unnamed_addr constant [1 x i8] c"\00"
@.str26.c = internal global %nyx_string* null
@.str27 = private unnamed_addr constant [10 x i8] c"script.nx\00"
@.str27.c = internal global %nyx_string* null
@.str28 = private unnamed_addr constant [38 x i8] c"DIAG:ERROR:0:0:unresolved import(s): \00"
@.str28.c = internal global %nyx_string* null
@.str29 = private unnamed_addr constant [38 x i8] c" — el detalle NYX0301 salió arriba\00"
@.str29.c = internal global %nyx_string* null
@.str30 = private unnamed_addr constant [4 x i8] c"END\00"
@.str30.c = internal global %nyx_string* null
@.str31 = private unnamed_addr constant [34 x i8] c"DIAG:ERROR:0:0:parse failed with \00"
@.str31.c = internal global %nyx_string* null
@.str32 = private unnamed_addr constant [10 x i8] c" error(s)\00"
@.str32.c = internal global %nyx_string* null
@.str33 = private unnamed_addr constant [4 x i8] c"END\00"
@.str33.c = internal global %nyx_string* null
@.str34 = private unnamed_addr constant [12 x i8] c"DIAG:ERROR:\00"
@.str34.c = internal global %nyx_string* null
@.str35 = private unnamed_addr constant [2 x i8] c":\00"
@.str35.c = internal global %nyx_string* null
@.str36 = private unnamed_addr constant [16 x i8] c"DIAG:ERROR:0:0:\00"
@.str36.c = internal global %nyx_string* null
@.str37 = private unnamed_addr constant [1 x i8] c":"
@.str38 = private unnamed_addr constant [1 x i8] c":"
@.str39 = private unnamed_addr constant [5 x i8] c"SYM:\00"
@.str39.c = internal global %nyx_string* null
@.str40 = private unnamed_addr constant [2 x i8] c":\00"
@.str40.c = internal global %nyx_string* null
@.str41 = private unnamed_addr constant [4 x i8] c"END\00"
@.str41.c = internal global %nyx_string* null
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
declare { i64, i8* }* @tokenize_con_avisos(%nyx_string*, { i64, i8* }*)
declare { i64, i8* }* @parse({ i64, i8* }*, %nyx_string*)
declare i64 @get_parse_error_count()
declare i1 @analyze(%ASTNode)
declare i64 @sem_aviso_escape(i64, i64, %nyx_string*)
declare { i64, i8* }* @get_errors()
declare { i64, i8* }* @get_sym_names()
declare { i64, i8* }* @get_sym_kinds()
declare i64 @get_sym_count()
declare %nyx_string* @resolve_source(%nyx_string*)
declare void @set_resolve_soft_errors(i1)
declare i64 @get_resolve_error_count()

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

define internal i64 @scan_definitions(
{ i64, i8* }* %tokens.param) {
  %tokens.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %tokens.param, { i64, i8* }** %tokens.ptr
  %9 = alloca i64
  store i64 0, i64* %9
  %10 = load { i64, i8* }*, { i64, i8* }** %tokens.ptr
  %11 = call i64 @nyx_array_length({ i64, i8* }* %10)
  %12 = alloca i64
  store i64 %11, i64* %12
  %13 = getelementptr [3 x i8], [3 x i8]* @.str0, i32 0, i32 0
  %14 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str0.c, i8* %13, i64 2)
  %15 = alloca %nyx_string*
  store %nyx_string* %14, %nyx_string** %15
  %16 = getelementptr [11 x i8], [11 x i8]* @.str1, i32 0, i32 0
  %17 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1.c, i8* %16, i64 10)
  %18 = alloca %nyx_string*
  store %nyx_string* %17, %nyx_string** %18
  %19 = getelementptr [8 x i8], [8 x i8]* @.str2, i32 0, i32 0
  %20 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str2.c, i8* %19, i64 7)
  %21 = alloca %nyx_string*
  store %nyx_string* %20, %nyx_string** %21
  %22 = getelementptr [2 x i8], [2 x i8]* @.str3, i32 0, i32 0
  %23 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str3.c, i8* %22, i64 1)
  %24 = alloca %nyx_string*
  store %nyx_string* %23, %nyx_string** %24
  %25 = getelementptr [7 x i8], [7 x i8]* @.str4, i32 0, i32 0
  %26 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str4.c, i8* %25, i64 6)
  %27 = alloca %nyx_string*
  store %nyx_string* %26, %nyx_string** %27
  %28 = getelementptr [12 x i8], [12 x i8]* @.str5, i32 0, i32 0
  %29 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str5.c, i8* %28, i64 11)
  %30 = alloca %nyx_string*
  store %nyx_string* %29, %nyx_string** %30
  %31 = getelementptr [5 x i8], [5 x i8]* @.str6, i32 0, i32 0
  %32 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str6.c, i8* %31, i64 4)
  %33 = alloca %nyx_string*
  store %nyx_string* %32, %nyx_string** %33
  %34 = getelementptr [10 x i8], [10 x i8]* @.str7, i32 0, i32 0
  %35 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str7.c, i8* %34, i64 9)
  %36 = alloca %nyx_string*
  store %nyx_string* %35, %nyx_string** %36
  %37 = getelementptr [6 x i8], [6 x i8]* @.str8, i32 0, i32 0
  %38 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str8.c, i8* %37, i64 5)
  %39 = alloca %nyx_string*
  store %nyx_string* %38, %nyx_string** %39
  %40 = getelementptr [11 x i8], [11 x i8]* @.str9, i32 0, i32 0
  %41 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str9.c, i8* %40, i64 10)
  %42 = alloca %nyx_string*
  store %nyx_string* %41, %nyx_string** %42
  %43 = getelementptr [4 x i8], [4 x i8]* @.str10, i32 0, i32 0
  %44 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str10.c, i8* %43, i64 3)
  %45 = alloca %nyx_string*
  store %nyx_string* %44, %nyx_string** %45
  %46 = getelementptr [4 x i8], [4 x i8]* @.str11, i32 0, i32 0
  %47 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str11.c, i8* %46, i64 3)
  %48 = alloca %nyx_string*
  store %nyx_string* %47, %nyx_string** %48
  %49 = getelementptr [4 x i8], [4 x i8]* @.str12, i32 0, i32 0
  %50 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str12.c, i8* %49, i64 3)
  %51 = alloca %nyx_string*
  store %nyx_string* %50, %nyx_string** %51
  %52 = getelementptr [4 x i8], [4 x i8]* @.str13, i32 0, i32 0
  %53 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str13.c, i8* %52, i64 3)
  %54 = alloca %nyx_string*
  store %nyx_string* %53, %nyx_string** %54
  %55 = getelementptr [5 x i8], [5 x i8]* @.str14, i32 0, i32 0
  %56 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str14.c, i8* %55, i64 4)
  %57 = alloca %nyx_string*
  store %nyx_string* %56, %nyx_string** %57
  %58 = getelementptr [5 x i8], [5 x i8]* @.str15, i32 0, i32 0
  %59 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str15.c, i8* %58, i64 4)
  %60 = alloca %nyx_string*
  store %nyx_string* %59, %nyx_string** %60
  %61 = getelementptr [7 x i8], [7 x i8]* @.str16, i32 0, i32 0
  %62 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str16.c, i8* %61, i64 6)
  %63 = alloca %nyx_string*
  store %nyx_string* %62, %nyx_string** %63
  %64 = getelementptr [10 x i8], [10 x i8]* @.str17, i32 0, i32 0
  %65 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str17.c, i8* %64, i64 9)
  %66 = alloca %nyx_string*
  store %nyx_string* %65, %nyx_string** %66
  %67 = call i8* @llvm.stacksave()
  br label %while_cond0
while_cond0:
  %68 = load i64, i64* %9
  %69 = load i64, i64* %12
  %70 = icmp slt i64 %68, %69
  br i1 %70, label %while_body1, label %while_end2
while_body1:
  call void @llvm.stackrestore(i8* %67)
  %71 = load { i64, i8* }*, { i64, i8* }** %tokens.ptr
  %72 = load i64, i64* %9
  %73 = getelementptr [6 x i8], [6 x i8]* @.slotT18, i32 0, i32 0
  %74 = call i64 @nyx_slot_as_value_checked({ i64, i8* }* %71, i64 %72, i8* %73)
  %75 = inttoptr i64 %74 to %Token*
  %76 = load %Token, %Token* %75
  %77 = alloca %Token
  store %Token %76, %Token* %77
  %78 = load %Token, %Token* %77
  %79 = call %nyx_string* @get_token_type(%Token %78)
  %80 = alloca %nyx_string*
  store %nyx_string* %79, %nyx_string** %80
  %81 = load %Token, %Token* %77
  %82 = call i64 @get_token_line(%Token %81)
  %83 = alloca i64
  store i64 %82, i64* %83
  %84 = alloca i1
  store i1 false, i1* %84
  %85 = load i64, i64* %83
  %86 = icmp sgt i64 %85, 0
  br i1 %86, label %sc_and_rhs3, label %sc_and_end4
sc_and_rhs3:
  %87 = load i64, i64* %83
  %88 = icmp slt i64 %87, 1000000
  store i1 %88, i1* %84
  br label %sc_and_end4
sc_and_end4:
  %89 = load i1, i1* %84
  br i1 %89, label %then5, label %else6
then5:
  %90 = alloca i1
  store i1 false, i1* %90
  %91 = load %nyx_string*, %nyx_string** %80
  %92 = load %nyx_string*, %nyx_string** %15
  %93 = call i1 @nyx_string_equals(%nyx_string* %91, %nyx_string* %92)
  br i1 %93, label %sc_and_rhs8, label %sc_and_end9
sc_and_rhs8:
  %94 = load i64, i64* %9
  %95 = add i64 %94, 1
  %96 = load i64, i64* %12
  %97 = icmp slt i64 %95, %96
  store i1 %97, i1* %90
  br label %sc_and_end9
sc_and_end9:
  %98 = load i1, i1* %90
  br i1 %98, label %then10, label %else11
then10:
  %99 = load { i64, i8* }*, { i64, i8* }** %tokens.ptr
  %100 = load i64, i64* %9
  %101 = add i64 %100, 1
  %102 = getelementptr [6 x i8], [6 x i8]* @.slotT19, i32 0, i32 0
  %103 = call i64 @nyx_slot_as_value_checked({ i64, i8* }* %99, i64 %101, i8* %102)
  %104 = inttoptr i64 %103 to %Token*
  %105 = load %Token, %Token* %104
  %106 = alloca %Token
  store %Token %105, %Token* %106
  %107 = load %Token, %Token* %106
  %108 = call %nyx_string* @get_token_type(%Token %107)
  %109 = load %nyx_string*, %nyx_string** %18
  %110 = call i1 @nyx_string_equals(%nyx_string* %108, %nyx_string* %109)
  br i1 %110, label %then13, label %else14
then13:
  %111 = load %Token, %Token* %106
  %112 = call %nyx_string* @get_token_value(%Token %111)
  %113 = alloca %nyx_string*
  store %nyx_string* %112, %nyx_string** %113
  %114 = load %Token, %Token* %106
  %115 = call i64 @get_token_col(%Token %114)
  %116 = alloca i64
  store i64 %115, i64* %116
  %117 = load %nyx_string*, %nyx_string** %21
  %118 = load %nyx_string*, %nyx_string** %113
  %119 = call %nyx_string* @nyx_string_concat(%nyx_string* %117, %nyx_string* %118)
  %120 = load %nyx_string*, %nyx_string** %24
  %121 = call %nyx_string* @nyx_string_concat(%nyx_string* %119, %nyx_string* %120)
  %122 = load i64, i64* %83
  %123 = call %nyx_string* @nyx_string_from_int(i64 %122)
  %124 = call %nyx_string* @nyx_string_concat(%nyx_string* %121, %nyx_string* %123)
  %125 = load %nyx_string*, %nyx_string** %24
  %126 = call %nyx_string* @nyx_string_concat(%nyx_string* %124, %nyx_string* %125)
  %127 = load i64, i64* %116
  %128 = call %nyx_string* @nyx_string_from_int(i64 %127)
  %129 = call %nyx_string* @nyx_string_concat(%nyx_string* %126, %nyx_string* %128)
  %130 = call i8* @nyx_string_to_cstr(%nyx_string* %129)
  call void @nyx_print_string(i8* %130)
  br label %merge15
else14:
  br label %merge15
merge15:
  br label %merge12
else11:
  br label %merge12
merge12:
  %131 = alloca i1
  store i1 false, i1* %131
  %132 = load %nyx_string*, %nyx_string** %80
  %133 = load %nyx_string*, %nyx_string** %27
  %134 = call i1 @nyx_string_equals(%nyx_string* %132, %nyx_string* %133)
  br i1 %134, label %sc_and_rhs16, label %sc_and_end17
sc_and_rhs16:
  %135 = load i64, i64* %9
  %136 = add i64 %135, 1
  %137 = load i64, i64* %12
  %138 = icmp slt i64 %136, %137
  store i1 %138, i1* %131
  br label %sc_and_end17
sc_and_end17:
  %139 = load i1, i1* %131
  br i1 %139, label %then18, label %else19
then18:
  %140 = load { i64, i8* }*, { i64, i8* }** %tokens.ptr
  %141 = load i64, i64* %9
  %142 = add i64 %141, 1
  %143 = getelementptr [6 x i8], [6 x i8]* @.slotT20, i32 0, i32 0
  %144 = call i64 @nyx_slot_as_value_checked({ i64, i8* }* %140, i64 %142, i8* %143)
  %145 = inttoptr i64 %144 to %Token*
  %146 = load %Token, %Token* %145
  %147 = alloca %Token
  store %Token %146, %Token* %147
  %148 = load %Token, %Token* %147
  %149 = call %nyx_string* @get_token_type(%Token %148)
  %150 = load %nyx_string*, %nyx_string** %18
  %151 = call i1 @nyx_string_equals(%nyx_string* %149, %nyx_string* %150)
  br i1 %151, label %then21, label %else22
then21:
  %152 = load %Token, %Token* %147
  %153 = call %nyx_string* @get_token_value(%Token %152)
  %154 = alloca %nyx_string*
  store %nyx_string* %153, %nyx_string** %154
  %155 = load %Token, %Token* %147
  %156 = call i64 @get_token_col(%Token %155)
  %157 = alloca i64
  store i64 %156, i64* %157
  %158 = load %nyx_string*, %nyx_string** %30
  %159 = load %nyx_string*, %nyx_string** %154
  %160 = call %nyx_string* @nyx_string_concat(%nyx_string* %158, %nyx_string* %159)
  %161 = load %nyx_string*, %nyx_string** %24
  %162 = call %nyx_string* @nyx_string_concat(%nyx_string* %160, %nyx_string* %161)
  %163 = load i64, i64* %83
  %164 = call %nyx_string* @nyx_string_from_int(i64 %163)
  %165 = call %nyx_string* @nyx_string_concat(%nyx_string* %162, %nyx_string* %164)
  %166 = load %nyx_string*, %nyx_string** %24
  %167 = call %nyx_string* @nyx_string_concat(%nyx_string* %165, %nyx_string* %166)
  %168 = load i64, i64* %157
  %169 = call %nyx_string* @nyx_string_from_int(i64 %168)
  %170 = call %nyx_string* @nyx_string_concat(%nyx_string* %167, %nyx_string* %169)
  %171 = call i8* @nyx_string_to_cstr(%nyx_string* %170)
  call void @nyx_print_string(i8* %171)
  br label %merge23
else22:
  br label %merge23
merge23:
  br label %merge20
else19:
  br label %merge20
merge20:
  %172 = alloca i1
  store i1 false, i1* %172
  %173 = load %nyx_string*, %nyx_string** %80
  %174 = load %nyx_string*, %nyx_string** %33
  %175 = call i1 @nyx_string_equals(%nyx_string* %173, %nyx_string* %174)
  br i1 %175, label %sc_and_rhs24, label %sc_and_end25
sc_and_rhs24:
  %176 = load i64, i64* %9
  %177 = add i64 %176, 1
  %178 = load i64, i64* %12
  %179 = icmp slt i64 %177, %178
  store i1 %179, i1* %172
  br label %sc_and_end25
sc_and_end25:
  %180 = load i1, i1* %172
  br i1 %180, label %then26, label %else27
then26:
  %181 = load { i64, i8* }*, { i64, i8* }** %tokens.ptr
  %182 = load i64, i64* %9
  %183 = add i64 %182, 1
  %184 = getelementptr [6 x i8], [6 x i8]* @.slotT21, i32 0, i32 0
  %185 = call i64 @nyx_slot_as_value_checked({ i64, i8* }* %181, i64 %183, i8* %184)
  %186 = inttoptr i64 %185 to %Token*
  %187 = load %Token, %Token* %186
  %188 = alloca %Token
  store %Token %187, %Token* %188
  %189 = load %Token, %Token* %188
  %190 = call %nyx_string* @get_token_type(%Token %189)
  %191 = load %nyx_string*, %nyx_string** %18
  %192 = call i1 @nyx_string_equals(%nyx_string* %190, %nyx_string* %191)
  br i1 %192, label %then29, label %else30
then29:
  %193 = load %Token, %Token* %188
  %194 = call %nyx_string* @get_token_value(%Token %193)
  %195 = alloca %nyx_string*
  store %nyx_string* %194, %nyx_string** %195
  %196 = load %Token, %Token* %188
  %197 = call i64 @get_token_col(%Token %196)
  %198 = alloca i64
  store i64 %197, i64* %198
  %199 = load %nyx_string*, %nyx_string** %36
  %200 = load %nyx_string*, %nyx_string** %195
  %201 = call %nyx_string* @nyx_string_concat(%nyx_string* %199, %nyx_string* %200)
  %202 = load %nyx_string*, %nyx_string** %24
  %203 = call %nyx_string* @nyx_string_concat(%nyx_string* %201, %nyx_string* %202)
  %204 = load i64, i64* %83
  %205 = call %nyx_string* @nyx_string_from_int(i64 %204)
  %206 = call %nyx_string* @nyx_string_concat(%nyx_string* %203, %nyx_string* %205)
  %207 = load %nyx_string*, %nyx_string** %24
  %208 = call %nyx_string* @nyx_string_concat(%nyx_string* %206, %nyx_string* %207)
  %209 = load i64, i64* %198
  %210 = call %nyx_string* @nyx_string_from_int(i64 %209)
  %211 = call %nyx_string* @nyx_string_concat(%nyx_string* %208, %nyx_string* %210)
  %212 = call i8* @nyx_string_to_cstr(%nyx_string* %211)
  call void @nyx_print_string(i8* %212)
  br label %merge31
else30:
  br label %merge31
merge31:
  br label %merge28
else27:
  br label %merge28
merge28:
  %213 = alloca i1
  store i1 false, i1* %213
  %214 = load %nyx_string*, %nyx_string** %80
  %215 = load %nyx_string*, %nyx_string** %39
  %216 = call i1 @nyx_string_equals(%nyx_string* %214, %nyx_string* %215)
  br i1 %216, label %sc_and_rhs32, label %sc_and_end33
sc_and_rhs32:
  %217 = load i64, i64* %9
  %218 = add i64 %217, 1
  %219 = load i64, i64* %12
  %220 = icmp slt i64 %218, %219
  store i1 %220, i1* %213
  br label %sc_and_end33
sc_and_end33:
  %221 = load i1, i1* %213
  br i1 %221, label %then34, label %else35
then34:
  %222 = load { i64, i8* }*, { i64, i8* }** %tokens.ptr
  %223 = load i64, i64* %9
  %224 = add i64 %223, 1
  %225 = getelementptr [6 x i8], [6 x i8]* @.slotT22, i32 0, i32 0
  %226 = call i64 @nyx_slot_as_value_checked({ i64, i8* }* %222, i64 %224, i8* %225)
  %227 = inttoptr i64 %226 to %Token*
  %228 = load %Token, %Token* %227
  %229 = alloca %Token
  store %Token %228, %Token* %229
  %230 = load %Token, %Token* %229
  %231 = call %nyx_string* @get_token_type(%Token %230)
  %232 = load %nyx_string*, %nyx_string** %18
  %233 = call i1 @nyx_string_equals(%nyx_string* %231, %nyx_string* %232)
  br i1 %233, label %then37, label %else38
then37:
  %234 = load %Token, %Token* %229
  %235 = call %nyx_string* @get_token_value(%Token %234)
  %236 = alloca %nyx_string*
  store %nyx_string* %235, %nyx_string** %236
  %237 = load %Token, %Token* %229
  %238 = call i64 @get_token_col(%Token %237)
  %239 = alloca i64
  store i64 %238, i64* %239
  %240 = load %nyx_string*, %nyx_string** %42
  %241 = load %nyx_string*, %nyx_string** %236
  %242 = call %nyx_string* @nyx_string_concat(%nyx_string* %240, %nyx_string* %241)
  %243 = load %nyx_string*, %nyx_string** %24
  %244 = call %nyx_string* @nyx_string_concat(%nyx_string* %242, %nyx_string* %243)
  %245 = load i64, i64* %83
  %246 = call %nyx_string* @nyx_string_from_int(i64 %245)
  %247 = call %nyx_string* @nyx_string_concat(%nyx_string* %244, %nyx_string* %246)
  %248 = load %nyx_string*, %nyx_string** %24
  %249 = call %nyx_string* @nyx_string_concat(%nyx_string* %247, %nyx_string* %248)
  %250 = load i64, i64* %239
  %251 = call %nyx_string* @nyx_string_from_int(i64 %250)
  %252 = call %nyx_string* @nyx_string_concat(%nyx_string* %249, %nyx_string* %251)
  %253 = call i8* @nyx_string_to_cstr(%nyx_string* %252)
  call void @nyx_print_string(i8* %253)
  br label %merge39
else38:
  br label %merge39
merge39:
  br label %merge36
else35:
  br label %merge36
merge36:
  %254 = alloca i1
  store i1 false, i1* %254
  %255 = alloca i1
  store i1 true, i1* %255
  %256 = load %nyx_string*, %nyx_string** %80
  %257 = load %nyx_string*, %nyx_string** %45
  %258 = call i1 @nyx_string_equals(%nyx_string* %256, %nyx_string* %257)
  br i1 %258, label %sc_or_end41, label %sc_or_rhs40
sc_or_rhs40:
  %259 = load %nyx_string*, %nyx_string** %80
  %260 = load %nyx_string*, %nyx_string** %48
  %261 = call i1 @nyx_string_equals(%nyx_string* %259, %nyx_string* %260)
  store i1 %261, i1* %255
  br label %sc_or_end41
sc_or_end41:
  %262 = load i1, i1* %255
  br i1 %262, label %sc_and_rhs42, label %sc_and_end43
sc_and_rhs42:
  %263 = load i64, i64* %9
  %264 = add i64 %263, 1
  %265 = load i64, i64* %12
  %266 = icmp slt i64 %264, %265
  store i1 %266, i1* %254
  br label %sc_and_end43
sc_and_end43:
  %267 = load i1, i1* %254
  br i1 %267, label %then44, label %else45
then44:
  %268 = load { i64, i8* }*, { i64, i8* }** %tokens.ptr
  %269 = load i64, i64* %9
  %270 = add i64 %269, 1
  %271 = getelementptr [6 x i8], [6 x i8]* @.slotT23, i32 0, i32 0
  %272 = call i64 @nyx_slot_as_value_checked({ i64, i8* }* %268, i64 %270, i8* %271)
  %273 = inttoptr i64 %272 to %Token*
  %274 = load %Token, %Token* %273
  %275 = alloca %Token
  store %Token %274, %Token* %275
  %276 = load %Token, %Token* %275
  %277 = call %nyx_string* @get_token_type(%Token %276)
  %278 = load %nyx_string*, %nyx_string** %18
  %279 = call i1 @nyx_string_equals(%nyx_string* %277, %nyx_string* %278)
  br i1 %279, label %then47, label %else48
then47:
  %280 = load %Token, %Token* %275
  %281 = call %nyx_string* @get_token_value(%Token %280)
  %282 = alloca %nyx_string*
  store %nyx_string* %281, %nyx_string** %282
  %283 = load %Token, %Token* %275
  %284 = call i64 @get_token_col(%Token %283)
  %285 = alloca i64
  store i64 %284, i64* %285
  %286 = load %nyx_string*, %nyx_string** %51
  %287 = alloca %nyx_string*
  store %nyx_string* %286, %nyx_string** %287
  %288 = load %nyx_string*, %nyx_string** %80
  %289 = load %nyx_string*, %nyx_string** %48
  %290 = call i1 @nyx_string_equals(%nyx_string* %288, %nyx_string* %289)
  br i1 %290, label %then50, label %else51
then50:
  %291 = load %nyx_string*, %nyx_string** %54
  store %nyx_string* %291, %nyx_string** %287
  br label %merge52
else51:
  br label %merge52
merge52:
  %292 = load %nyx_string*, %nyx_string** %57
  %293 = load %nyx_string*, %nyx_string** %287
  %294 = call %nyx_string* @nyx_string_concat(%nyx_string* %292, %nyx_string* %293)
  %295 = load %nyx_string*, %nyx_string** %24
  %296 = call %nyx_string* @nyx_string_concat(%nyx_string* %294, %nyx_string* %295)
  %297 = load %nyx_string*, %nyx_string** %282
  %298 = call %nyx_string* @nyx_string_concat(%nyx_string* %296, %nyx_string* %297)
  %299 = load %nyx_string*, %nyx_string** %24
  %300 = call %nyx_string* @nyx_string_concat(%nyx_string* %298, %nyx_string* %299)
  %301 = load i64, i64* %83
  %302 = call %nyx_string* @nyx_string_from_int(i64 %301)
  %303 = call %nyx_string* @nyx_string_concat(%nyx_string* %300, %nyx_string* %302)
  %304 = load %nyx_string*, %nyx_string** %24
  %305 = call %nyx_string* @nyx_string_concat(%nyx_string* %303, %nyx_string* %304)
  %306 = load i64, i64* %285
  %307 = call %nyx_string* @nyx_string_from_int(i64 %306)
  %308 = call %nyx_string* @nyx_string_concat(%nyx_string* %305, %nyx_string* %307)
  %309 = call i8* @nyx_string_to_cstr(%nyx_string* %308)
  call void @nyx_print_string(i8* %309)
  br label %merge49
else48:
  br label %merge49
merge49:
  br label %merge46
else45:
  br label %merge46
merge46:
  %310 = alloca i1
  store i1 false, i1* %310
  %311 = load %nyx_string*, %nyx_string** %80
  %312 = load %nyx_string*, %nyx_string** %60
  %313 = call i1 @nyx_string_equals(%nyx_string* %311, %nyx_string* %312)
  br i1 %313, label %sc_and_rhs53, label %sc_and_end54
sc_and_rhs53:
  %314 = load i64, i64* %9
  %315 = add i64 %314, 1
  %316 = load i64, i64* %12
  %317 = icmp slt i64 %315, %316
  store i1 %317, i1* %310
  br label %sc_and_end54
sc_and_end54:
  %318 = load i1, i1* %310
  br i1 %318, label %then55, label %else56
then55:
  %319 = load { i64, i8* }*, { i64, i8* }** %tokens.ptr
  %320 = load i64, i64* %9
  %321 = add i64 %320, 1
  %322 = getelementptr [6 x i8], [6 x i8]* @.slotT24, i32 0, i32 0
  %323 = call i64 @nyx_slot_as_value_checked({ i64, i8* }* %319, i64 %321, i8* %322)
  %324 = inttoptr i64 %323 to %Token*
  %325 = load %Token, %Token* %324
  %326 = alloca %Token
  store %Token %325, %Token* %326
  %327 = load %Token, %Token* %326
  %328 = call %nyx_string* @get_token_type(%Token %327)
  %329 = load %nyx_string*, %nyx_string** %63
  %330 = call i1 @nyx_string_equals(%nyx_string* %328, %nyx_string* %329)
  br i1 %330, label %then58, label %else59
then58:
  %331 = load %Token, %Token* %326
  %332 = call %nyx_string* @get_token_value(%Token %331)
  %333 = alloca %nyx_string*
  store %nyx_string* %332, %nyx_string** %333
  %334 = load %Token, %Token* %326
  %335 = call i64 @get_token_col(%Token %334)
  %336 = alloca i64
  store i64 %335, i64* %336
  %337 = load %nyx_string*, %nyx_string** %66
  %338 = load %nyx_string*, %nyx_string** %333
  %339 = call %nyx_string* @nyx_string_concat(%nyx_string* %337, %nyx_string* %338)
  %340 = load %nyx_string*, %nyx_string** %24
  %341 = call %nyx_string* @nyx_string_concat(%nyx_string* %339, %nyx_string* %340)
  %342 = load i64, i64* %83
  %343 = call %nyx_string* @nyx_string_from_int(i64 %342)
  %344 = call %nyx_string* @nyx_string_concat(%nyx_string* %341, %nyx_string* %343)
  %345 = load %nyx_string*, %nyx_string** %24
  %346 = call %nyx_string* @nyx_string_concat(%nyx_string* %344, %nyx_string* %345)
  %347 = load i64, i64* %336
  %348 = call %nyx_string* @nyx_string_from_int(i64 %347)
  %349 = call %nyx_string* @nyx_string_concat(%nyx_string* %346, %nyx_string* %348)
  %350 = call i8* @nyx_string_to_cstr(%nyx_string* %349)
  call void @nyx_print_string(i8* %350)
  br label %merge60
else59:
  br label %merge60
merge60:
  br label %merge57
else56:
  br label %merge57
merge57:
  br label %merge7
else6:
  br label %merge7
merge7:
  %351 = load i64, i64* %9
  %352 = add i64 %351, 1
  store i64 %352, i64* %9
  br label %while_cond0
while_end2:
  ret i64 0
}

define i64 @main(
i32 %argc, i8** %argv) {
  call void @nyx_set_args(i32 %argc, i8** %argv)
  %353 = getelementptr [8 x i8], [8 x i8]* @.str25, i32 0, i32 0
  %354 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str25.c, i8* %353, i64 7)
  %355 = call i8* @nyx_string_to_cstr(%nyx_string* %354)
  %356 = call %nyx_string* @nyx_getenv(i8* %355)
  %357 = alloca %nyx_string*
  store %nyx_string* %356, %nyx_string** %357
  %358 = load %nyx_string*, %nyx_string** %357
  %359 = getelementptr [1 x i8], [1 x i8]* @.str26, i32 0, i32 0
  %360 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str26.c, i8* %359, i64 0)
  %361 = call i1 @nyx_string_equals(%nyx_string* %358, %nyx_string* %360)
  br i1 %361, label %then61, label %else62
then61:
  %362 = getelementptr [10 x i8], [10 x i8]* @.str27, i32 0, i32 0
  %363 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str27.c, i8* %362, i64 9)
  store %nyx_string* %363, %nyx_string** %357
  br label %merge63
else62:
  br label %merge63
merge63:
  %364 = load %nyx_string*, %nyx_string** %357
  %365 = call i8* @nyx_string_to_cstr(%nyx_string* %364)
  %366 = call %nyx_string* @nyx_read_file(i8* %365)
  %367 = alloca %nyx_string*
  store %nyx_string* %366, %nyx_string** %367
  call void @set_resolve_soft_errors(i1 1)
  %368 = load %nyx_string*, %nyx_string** %367
  %369 = call %nyx_string* @resolve_source(%nyx_string* %368)
  %370 = alloca %nyx_string*
  store %nyx_string* %369, %nyx_string** %370
  %371 = call i64 @get_resolve_error_count()
  %372 = icmp sgt i64 %371, 0
  br i1 %372, label %then64, label %else65
then64:
  %373 = getelementptr [38 x i8], [38 x i8]* @.str28, i32 0, i32 0
  %374 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str28.c, i8* %373, i64 37)
  %375 = call i64 @get_resolve_error_count()
  %376 = call %nyx_string* @nyx_string_from_int(i64 %375)
  %377 = call %nyx_string* @nyx_string_concat(%nyx_string* %374, %nyx_string* %376)
  %378 = getelementptr [38 x i8], [38 x i8]* @.str29, i32 0, i32 0
  %379 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str29.c, i8* %378, i64 37)
  %380 = call %nyx_string* @nyx_string_concat(%nyx_string* %377, %nyx_string* %379)
  %381 = call i8* @nyx_string_to_cstr(%nyx_string* %380)
  call void @nyx_print_string(i8* %381)
  %382 = getelementptr [4 x i8], [4 x i8]* @.str30, i32 0, i32 0
  %383 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str30.c, i8* %382, i64 3)
  %384 = call i8* @nyx_string_to_cstr(%nyx_string* %383)
  call void @nyx_print_string(i8* %384)
  ret i64 1
else65:
  br label %merge66
merge66:
  %385 = call { i64, i8* }* @nyx_array_new_ptr()
  %386 = alloca { i64, i8* }*
  store { i64, i8* }* %385, { i64, i8* }** %386
  %387 = load %nyx_string*, %nyx_string** %370
  %388 = load { i64, i8* }*, { i64, i8* }** %386
  %389 = call { i64, i8* }* @tokenize_con_avisos(%nyx_string* %387, { i64, i8* }* %388)
  %390 = alloca { i64, i8* }*
  store { i64, i8* }* %389, { i64, i8* }** %390
  %391 = load { i64, i8* }*, { i64, i8* }** %390
  %392 = load %nyx_string*, %nyx_string** %370
  %393 = call { i64, i8* }* @parse({ i64, i8* }* %391, %nyx_string* %392)
  %394 = alloca { i64, i8* }*
  store { i64, i8* }* %393, { i64, i8* }** %394
  %395 = call i64 @get_parse_error_count()
  %396 = alloca i64
  store i64 %395, i64* %396
  %397 = load i64, i64* %396
  %398 = icmp sgt i64 %397, 0
  br i1 %398, label %then67, label %else68
then67:
  %399 = getelementptr [34 x i8], [34 x i8]* @.str31, i32 0, i32 0
  %400 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str31.c, i8* %399, i64 33)
  %401 = load i64, i64* %396
  %402 = call %nyx_string* @nyx_string_from_int(i64 %401)
  %403 = call %nyx_string* @nyx_string_concat(%nyx_string* %400, %nyx_string* %402)
  %404 = getelementptr [10 x i8], [10 x i8]* @.str32, i32 0, i32 0
  %405 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str32.c, i8* %404, i64 9)
  %406 = call %nyx_string* @nyx_string_concat(%nyx_string* %403, %nyx_string* %405)
  %407 = call i8* @nyx_string_to_cstr(%nyx_string* %406)
  call void @nyx_print_string(i8* %407)
  %408 = getelementptr [4 x i8], [4 x i8]* @.str33, i32 0, i32 0
  %409 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str33.c, i8* %408, i64 3)
  %410 = call i8* @nyx_string_to_cstr(%nyx_string* %409)
  call void @nyx_print_string(i8* %410)
  ret i64 1
else68:
  br label %merge69
merge69:
  %411 = alloca i64
  store i64 0, i64* %411
  %412 = call i8* @llvm.stacksave()
  br label %while_cond70
while_cond70:
  %413 = load i64, i64* %411
  %414 = load { i64, i8* }*, { i64, i8* }** %386
  %415 = call i64 @nyx_array_length({ i64, i8* }* %414)
  %416 = icmp slt i64 %413, %415
  br i1 %416, label %while_body71, label %while_end72
while_body71:
  call void @llvm.stackrestore(i8* %412)
  %417 = load { i64, i8* }*, { i64, i8* }** %386
  %418 = load i64, i64* %411
  %419 = call i64 @nyx_array_get({ i64, i8* }* %417, i64 %418)
  %420 = inttoptr i64 %419 to { i64, i8* }*
  %421 = alloca { i64, i8* }*
  store { i64, i8* }* %420, { i64, i8* }** %421
  %422 = load { i64, i8* }*, { i64, i8* }** %421
  %423 = call i64 @nyx_slot_as_int_checked({ i64, i8* }* %422, i64 0)
  %424 = alloca i64
  store i64 %423, i64* %424
  %425 = load { i64, i8* }*, { i64, i8* }** %421
  %426 = call i64 @nyx_slot_as_int_checked({ i64, i8* }* %425, i64 1)
  %427 = alloca i64
  store i64 %426, i64* %427
  %428 = load { i64, i8* }*, { i64, i8* }** %421
  %429 = call i64 @nyx_array_get_checked({ i64, i8* }* %428, i64 2, i64 2)
  %430 = inttoptr i64 %429 to %nyx_string*
  %431 = alloca %nyx_string*
  store %nyx_string* %430, %nyx_string** %431
  %432 = load i64, i64* %424
  %433 = load i64, i64* %427
  %434 = load %nyx_string*, %nyx_string** %431
  %435 = call i64 @sem_aviso_escape(i64 %432, i64 %433, %nyx_string* %434)
  %436 = load i64, i64* %411
  %437 = add i64 %436, 1
  store i64 %437, i64* %411
  br label %while_cond70
while_end72:
  %438 = load { i64, i8* }*, { i64, i8* }** %394
  %439 = call i64 @nyx_array_get({ i64, i8* }* %438, i64 0)
  %440 = inttoptr i64 %439 to %nyx_string*
  %441 = call i64 @nyx_array_get({ i64, i8* }* %438, i64 1)
  %442 = inttoptr i64 %441 to { i64, i8* }*
  %443 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %438, i64 2)
  %444 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %438, i64 3)
  %445 = insertvalue %ASTNode undef, %nyx_string* %440, 0
  %446 = insertvalue %ASTNode %445, { i64, i8* }* %442, 1
  %447 = insertvalue %ASTNode %446, i64 %443, 2
  %448 = insertvalue %ASTNode %447, i64 %444, 3
  %449 = call i1 @analyze(%ASTNode %448)
  %450 = alloca i1
  store i1 %449, i1* %450
  %451 = alloca i1
  store i1 0, i1* %451
  %452 = load i1, i1* %450
  %453 = xor i1 %452, true
  br i1 %453, label %then73, label %else74
then73:
  store i1 1, i1* %451
  %454 = call { i64, i8* }* @get_errors()
  %455 = alloca { i64, i8* }*
  store { i64, i8* }* %454, { i64, i8* }** %455
  %456 = alloca i64
  store i64 0, i64* %456
  %457 = getelementptr [12 x i8], [12 x i8]* @.str34, i32 0, i32 0
  %458 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str34.c, i8* %457, i64 11)
  %459 = alloca %nyx_string*
  store %nyx_string* %458, %nyx_string** %459
  %460 = getelementptr [2 x i8], [2 x i8]* @.str35, i32 0, i32 0
  %461 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str35.c, i8* %460, i64 1)
  %462 = alloca %nyx_string*
  store %nyx_string* %461, %nyx_string** %462
  %463 = getelementptr [16 x i8], [16 x i8]* @.str36, i32 0, i32 0
  %464 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str36.c, i8* %463, i64 15)
  %465 = alloca %nyx_string*
  store %nyx_string* %464, %nyx_string** %465
  %466 = call i8* @llvm.stacksave()
  br label %while_cond76
while_cond76:
  %467 = load i64, i64* %456
  %468 = load { i64, i8* }*, { i64, i8* }** %455
  %469 = call i64 @nyx_array_length({ i64, i8* }* %468)
  %470 = icmp slt i64 %467, %469
  br i1 %470, label %while_body77, label %while_end78
while_body77:
  call void @llvm.stackrestore(i8* %466)
  %471 = load { i64, i8* }*, { i64, i8* }** %455
  %472 = load i64, i64* %456
  %473 = call i64 @nyx_array_get_checked({ i64, i8* }* %471, i64 %472, i64 2)
  %474 = inttoptr i64 %473 to %nyx_string*
  %475 = alloca %nyx_string*
  store %nyx_string* %474, %nyx_string** %475
  %476 = sub i64 0, 1
  %477 = alloca i64
  store i64 %476, i64* %477
  %478 = alloca i64
  store i64 0, i64* %478
  %479 = call i8* @llvm.stacksave()
  br label %while_cond79
while_cond79:
  %480 = load i64, i64* %478
  %481 = load %nyx_string*, %nyx_string** %475
  %482 = call i64 @nyx_string_byte_length(%nyx_string* %481)
  %483 = icmp slt i64 %480, %482
  br i1 %483, label %while_body80, label %while_end81
while_body80:
  call void @llvm.stackrestore(i8* %479)
  %484 = load %nyx_string*, %nyx_string** %475
  %485 = load i64, i64* %478
  %486 = call i8 @nyx_string_char_at(%nyx_string* %484, i64 %485)
  %487 = zext i8 %486 to i64
  %488 = trunc i64 %487 to i8
  %489 = alloca i8
  store i8 %488, i8* %489
  %490 = load i8, i8* %489
  %491 = getelementptr [1 x i8], [1 x i8]* @.str37, i32 0, i32 0
  %492 = load i8, i8* %491
  %493 = zext i8 %492 to i64
  %494 = zext i8 %490 to i64
  %495 = icmp eq i64 %494, %493
  br i1 %495, label %then82, label %else83
then82:
  %496 = load i64, i64* %477
  %497 = sub i64 0, 1
  %498 = icmp eq i64 %496, %497
  br i1 %498, label %then85, label %else86
then85:
  %499 = load i64, i64* %478
  store i64 %499, i64* %477
  br label %merge87
else86:
  br label %merge87
merge87:
  %500 = load %nyx_string*, %nyx_string** %475
  %501 = call i64 @nyx_string_byte_length(%nyx_string* %500)
  store i64 %501, i64* %478
  br label %merge84
else83:
  br label %merge84
merge84:
  %502 = load i64, i64* %478
  %503 = add i64 %502, 1
  store i64 %503, i64* %478
  br label %while_cond79
while_end81:
  %504 = load i64, i64* %477
  %505 = icmp sgt i64 %504, 0
  br i1 %505, label %then88, label %else89
then88:
  %506 = sub i64 0, 1
  %507 = alloca i64
  store i64 %506, i64* %507
  %508 = load i64, i64* %477
  %509 = add i64 %508, 1
  %510 = alloca i64
  store i64 %509, i64* %510
  %511 = call i8* @llvm.stacksave()
  br label %while_cond91
while_cond91:
  %512 = load i64, i64* %510
  %513 = load %nyx_string*, %nyx_string** %475
  %514 = call i64 @nyx_string_byte_length(%nyx_string* %513)
  %515 = icmp slt i64 %512, %514
  br i1 %515, label %while_body92, label %while_end93
while_body92:
  call void @llvm.stackrestore(i8* %511)
  %516 = load %nyx_string*, %nyx_string** %475
  %517 = load i64, i64* %510
  %518 = call i8 @nyx_string_char_at(%nyx_string* %516, i64 %517)
  %519 = zext i8 %518 to i64
  %520 = trunc i64 %519 to i8
  %521 = alloca i8
  store i8 %520, i8* %521
  %522 = load i8, i8* %521
  %523 = getelementptr [1 x i8], [1 x i8]* @.str38, i32 0, i32 0
  %524 = load i8, i8* %523
  %525 = zext i8 %524 to i64
  %526 = zext i8 %522 to i64
  %527 = icmp eq i64 %526, %525
  br i1 %527, label %then94, label %else95
then94:
  %528 = load i64, i64* %507
  %529 = sub i64 0, 1
  %530 = icmp eq i64 %528, %529
  br i1 %530, label %then97, label %else98
then97:
  %531 = load i64, i64* %510
  store i64 %531, i64* %507
  br label %merge99
else98:
  br label %merge99
merge99:
  %532 = load %nyx_string*, %nyx_string** %475
  %533 = call i64 @nyx_string_byte_length(%nyx_string* %532)
  store i64 %533, i64* %510
  br label %merge96
else95:
  br label %merge96
merge96:
  %534 = load i64, i64* %510
  %535 = add i64 %534, 1
  store i64 %535, i64* %510
  br label %while_cond91
while_end93:
  %536 = load i64, i64* %507
  %537 = load i64, i64* %477
  %538 = icmp sgt i64 %536, %537
  br i1 %538, label %then100, label %else101
then100:
  %539 = load %nyx_string*, %nyx_string** %475
  %540 = load i64, i64* %477
  %541 = call %nyx_string* @nyx_string_substring(%nyx_string* %539, i64 0, i64 %540)
  %542 = alloca %nyx_string*
  store %nyx_string* %541, %nyx_string** %542
  %543 = load %nyx_string*, %nyx_string** %475
  %544 = load i64, i64* %477
  %545 = add i64 %544, 1
  %546 = load i64, i64* %507
  %547 = call %nyx_string* @nyx_string_substring(%nyx_string* %543, i64 %545, i64 %546)
  %548 = alloca %nyx_string*
  store %nyx_string* %547, %nyx_string** %548
  %549 = load %nyx_string*, %nyx_string** %475
  %550 = load i64, i64* %507
  %551 = add i64 %550, 1
  %552 = load %nyx_string*, %nyx_string** %475
  %553 = call i64 @nyx_string_byte_length(%nyx_string* %552)
  %554 = call %nyx_string* @nyx_string_substring(%nyx_string* %549, i64 %551, i64 %553)
  %555 = alloca %nyx_string*
  store %nyx_string* %554, %nyx_string** %555
  %556 = load %nyx_string*, %nyx_string** %459
  %557 = load %nyx_string*, %nyx_string** %542
  %558 = call %nyx_string* @nyx_string_concat(%nyx_string* %556, %nyx_string* %557)
  %559 = load %nyx_string*, %nyx_string** %462
  %560 = call %nyx_string* @nyx_string_concat(%nyx_string* %558, %nyx_string* %559)
  %561 = load %nyx_string*, %nyx_string** %548
  %562 = call %nyx_string* @nyx_string_concat(%nyx_string* %560, %nyx_string* %561)
  %563 = load %nyx_string*, %nyx_string** %462
  %564 = call %nyx_string* @nyx_string_concat(%nyx_string* %562, %nyx_string* %563)
  %565 = load %nyx_string*, %nyx_string** %555
  %566 = call %nyx_string* @nyx_string_concat(%nyx_string* %564, %nyx_string* %565)
  %567 = call i8* @nyx_string_to_cstr(%nyx_string* %566)
  call void @nyx_print_string(i8* %567)
  br label %merge102
else101:
  %568 = load %nyx_string*, %nyx_string** %465
  %569 = load %nyx_string*, %nyx_string** %475
  %570 = call %nyx_string* @nyx_string_concat(%nyx_string* %568, %nyx_string* %569)
  %571 = call i8* @nyx_string_to_cstr(%nyx_string* %570)
  call void @nyx_print_string(i8* %571)
  br label %merge102
merge102:
  br label %merge90
else89:
  %572 = load %nyx_string*, %nyx_string** %465
  %573 = load %nyx_string*, %nyx_string** %475
  %574 = call %nyx_string* @nyx_string_concat(%nyx_string* %572, %nyx_string* %573)
  %575 = call i8* @nyx_string_to_cstr(%nyx_string* %574)
  call void @nyx_print_string(i8* %575)
  br label %merge90
merge90:
  %576 = load i64, i64* %456
  %577 = add i64 %576, 1
  store i64 %577, i64* %456
  br label %while_cond76
while_end78:
  br label %merge75
else74:
  br label %merge75
merge75:
  %578 = load %nyx_string*, %nyx_string** %367
  %579 = call { i64, i8* }* @tokenize(%nyx_string* %578)
  %580 = call i64 @scan_definitions({ i64, i8* }* %579)
  %581 = call { i64, i8* }* @get_sym_names()
  %582 = alloca { i64, i8* }*
  store { i64, i8* }* %581, { i64, i8* }** %582
  %583 = call { i64, i8* }* @get_sym_kinds()
  %584 = alloca { i64, i8* }*
  store { i64, i8* }* %583, { i64, i8* }** %584
  %585 = call i64 @get_sym_count()
  %586 = alloca i64
  store i64 %585, i64* %586
  %587 = alloca i64
  store i64 0, i64* %587
  %588 = getelementptr [5 x i8], [5 x i8]* @.str39, i32 0, i32 0
  %589 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str39.c, i8* %588, i64 4)
  %590 = alloca %nyx_string*
  store %nyx_string* %589, %nyx_string** %590
  %591 = getelementptr [2 x i8], [2 x i8]* @.str40, i32 0, i32 0
  %592 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str40.c, i8* %591, i64 1)
  %593 = alloca %nyx_string*
  store %nyx_string* %592, %nyx_string** %593
  %594 = call i8* @llvm.stacksave()
  br label %while_cond103
while_cond103:
  %595 = load i64, i64* %587
  %596 = load i64, i64* %586
  %597 = icmp slt i64 %595, %596
  br i1 %597, label %while_body104, label %while_end105
while_body104:
  call void @llvm.stackrestore(i8* %594)
  %598 = load { i64, i8* }*, { i64, i8* }** %582
  %599 = load i64, i64* %587
  %600 = call i64 @nyx_array_get_checked({ i64, i8* }* %598, i64 %599, i64 2)
  %601 = inttoptr i64 %600 to %nyx_string*
  %602 = alloca %nyx_string*
  store %nyx_string* %601, %nyx_string** %602
  %603 = load { i64, i8* }*, { i64, i8* }** %584
  %604 = load i64, i64* %587
  %605 = call i64 @nyx_array_get_checked({ i64, i8* }* %603, i64 %604, i64 2)
  %606 = inttoptr i64 %605 to %nyx_string*
  %607 = alloca %nyx_string*
  store %nyx_string* %606, %nyx_string** %607
  %608 = load %nyx_string*, %nyx_string** %590
  %609 = load %nyx_string*, %nyx_string** %607
  %610 = call %nyx_string* @nyx_string_concat(%nyx_string* %608, %nyx_string* %609)
  %611 = load %nyx_string*, %nyx_string** %593
  %612 = call %nyx_string* @nyx_string_concat(%nyx_string* %610, %nyx_string* %611)
  %613 = load %nyx_string*, %nyx_string** %602
  %614 = call %nyx_string* @nyx_string_concat(%nyx_string* %612, %nyx_string* %613)
  %615 = call i8* @nyx_string_to_cstr(%nyx_string* %614)
  call void @nyx_print_string(i8* %615)
  %616 = load i64, i64* %587
  %617 = add i64 %616, 1
  store i64 %617, i64* %587
  br label %while_cond103
while_end105:
  %618 = getelementptr [4 x i8], [4 x i8]* @.str41, i32 0, i32 0
  %619 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str41.c, i8* %618, i64 3)
  %620 = call i8* @nyx_string_to_cstr(%nyx_string* %619)
  call void @nyx_print_string(i8* %620)
  %621 = load i1, i1* %451
  br i1 %621, label %then106, label %else107
then106:
  ret i64 1
else107:
  br label %merge108
merge108:
  ret i64 0
}


attributes #0 = { returns_twice }

