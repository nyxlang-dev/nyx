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
declare i64 @nyx_enum_eq(i8*, i8*)
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
declare i8* @GC_malloc_atomic(i64)
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
  %t1 = getelementptr %Token, %Token* %tok.ptr, i32 0, i32 0
  %t2 = load %nyx_string*, %nyx_string** %t1
  ret %nyx_string* %t2
}

define internal %nyx_string* @get_token_value(
%Token %tok.param) {
  %tok.ptr = alloca %Token
  store %Token %tok.param, %Token* %tok.ptr
  %t3 = getelementptr %Token, %Token* %tok.ptr, i32 0, i32 1
  %t4 = load %nyx_string*, %nyx_string** %t3
  ret %nyx_string* %t4
}

define internal i64 @get_token_line(
%Token %tok.param) {
  %tok.ptr = alloca %Token
  store %Token %tok.param, %Token* %tok.ptr
  %t5 = getelementptr %Token, %Token* %tok.ptr, i32 0, i32 2
  %t6 = load i64, i64* %t5
  ret i64 %t6
}

define internal i64 @get_token_col(
%Token %tok.param) {
  %tok.ptr = alloca %Token
  store %Token %tok.param, %Token* %tok.ptr
  %t7 = getelementptr %Token, %Token* %tok.ptr, i32 0, i32 3
  %t8 = load i64, i64* %t7
  ret i64 %t8
}

define internal i64 @scan_definitions(
{ i64, i8* }* %tokens.param) {
  %tokens.ptr = alloca { i64, i8* }*
  %t9 = alloca i64
  %t12 = alloca i64
  %t15 = alloca %nyx_string*
  %t18 = alloca %nyx_string*
  %t21 = alloca %nyx_string*
  %t24 = alloca %nyx_string*
  %t27 = alloca %nyx_string*
  %t30 = alloca %nyx_string*
  %t33 = alloca %nyx_string*
  %t36 = alloca %nyx_string*
  %t39 = alloca %nyx_string*
  %t42 = alloca %nyx_string*
  %t45 = alloca %nyx_string*
  %t48 = alloca %nyx_string*
  %t51 = alloca %nyx_string*
  %t54 = alloca %nyx_string*
  %t57 = alloca %nyx_string*
  %t60 = alloca %nyx_string*
  %t63 = alloca %nyx_string*
  %t66 = alloca %nyx_string*
  %t76 = alloca %Token
  %t79 = alloca %nyx_string*
  %t82 = alloca i64
  %t83 = alloca i1
  %t89 = alloca i1
  %t105 = alloca %Token
  %t112 = alloca %nyx_string*
  %t115 = alloca i64
  %t130 = alloca i1
  %t146 = alloca %Token
  %t153 = alloca %nyx_string*
  %t156 = alloca i64
  %t171 = alloca i1
  %t187 = alloca %Token
  %t194 = alloca %nyx_string*
  %t197 = alloca i64
  %t212 = alloca i1
  %t228 = alloca %Token
  %t235 = alloca %nyx_string*
  %t238 = alloca i64
  %t253 = alloca i1
  %t254 = alloca i1
  %t274 = alloca %Token
  %t281 = alloca %nyx_string*
  %t284 = alloca i64
  %t286 = alloca %nyx_string*
  %t309 = alloca i1
  %t325 = alloca %Token
  %t332 = alloca %nyx_string*
  %t335 = alloca i64
  store { i64, i8* }* %tokens.param, { i64, i8* }** %tokens.ptr
  store i64 0, i64* %t9
  %t10 = load { i64, i8* }*, { i64, i8* }** %tokens.ptr
  %t11 = call i64 @nyx_array_length({ i64, i8* }* %t10)
  store i64 %t11, i64* %t12
  %t13 = getelementptr [3 x i8], [3 x i8]* @.str0, i32 0, i32 0
  %t14 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str0.c, i8* %t13, i64 2)
  store %nyx_string* %t14, %nyx_string** %t15
  %t16 = getelementptr [11 x i8], [11 x i8]* @.str1, i32 0, i32 0
  %t17 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1.c, i8* %t16, i64 10)
  store %nyx_string* %t17, %nyx_string** %t18
  %t19 = getelementptr [8 x i8], [8 x i8]* @.str2, i32 0, i32 0
  %t20 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str2.c, i8* %t19, i64 7)
  store %nyx_string* %t20, %nyx_string** %t21
  %t22 = getelementptr [2 x i8], [2 x i8]* @.str3, i32 0, i32 0
  %t23 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str3.c, i8* %t22, i64 1)
  store %nyx_string* %t23, %nyx_string** %t24
  %t25 = getelementptr [7 x i8], [7 x i8]* @.str4, i32 0, i32 0
  %t26 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str4.c, i8* %t25, i64 6)
  store %nyx_string* %t26, %nyx_string** %t27
  %t28 = getelementptr [12 x i8], [12 x i8]* @.str5, i32 0, i32 0
  %t29 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str5.c, i8* %t28, i64 11)
  store %nyx_string* %t29, %nyx_string** %t30
  %t31 = getelementptr [5 x i8], [5 x i8]* @.str6, i32 0, i32 0
  %t32 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str6.c, i8* %t31, i64 4)
  store %nyx_string* %t32, %nyx_string** %t33
  %t34 = getelementptr [10 x i8], [10 x i8]* @.str7, i32 0, i32 0
  %t35 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str7.c, i8* %t34, i64 9)
  store %nyx_string* %t35, %nyx_string** %t36
  %t37 = getelementptr [6 x i8], [6 x i8]* @.str8, i32 0, i32 0
  %t38 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str8.c, i8* %t37, i64 5)
  store %nyx_string* %t38, %nyx_string** %t39
  %t40 = getelementptr [11 x i8], [11 x i8]* @.str9, i32 0, i32 0
  %t41 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str9.c, i8* %t40, i64 10)
  store %nyx_string* %t41, %nyx_string** %t42
  %t43 = getelementptr [4 x i8], [4 x i8]* @.str10, i32 0, i32 0
  %t44 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str10.c, i8* %t43, i64 3)
  store %nyx_string* %t44, %nyx_string** %t45
  %t46 = getelementptr [4 x i8], [4 x i8]* @.str11, i32 0, i32 0
  %t47 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str11.c, i8* %t46, i64 3)
  store %nyx_string* %t47, %nyx_string** %t48
  %t49 = getelementptr [4 x i8], [4 x i8]* @.str12, i32 0, i32 0
  %t50 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str12.c, i8* %t49, i64 3)
  store %nyx_string* %t50, %nyx_string** %t51
  %t52 = getelementptr [4 x i8], [4 x i8]* @.str13, i32 0, i32 0
  %t53 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str13.c, i8* %t52, i64 3)
  store %nyx_string* %t53, %nyx_string** %t54
  %t55 = getelementptr [5 x i8], [5 x i8]* @.str14, i32 0, i32 0
  %t56 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str14.c, i8* %t55, i64 4)
  store %nyx_string* %t56, %nyx_string** %t57
  %t58 = getelementptr [5 x i8], [5 x i8]* @.str15, i32 0, i32 0
  %t59 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str15.c, i8* %t58, i64 4)
  store %nyx_string* %t59, %nyx_string** %t60
  %t61 = getelementptr [7 x i8], [7 x i8]* @.str16, i32 0, i32 0
  %t62 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str16.c, i8* %t61, i64 6)
  store %nyx_string* %t62, %nyx_string** %t63
  %t64 = getelementptr [10 x i8], [10 x i8]* @.str17, i32 0, i32 0
  %t65 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str17.c, i8* %t64, i64 9)
  store %nyx_string* %t65, %nyx_string** %t66
  br label %while_cond0
while_cond0:
  %t67 = load i64, i64* %t9
  %t68 = load i64, i64* %t12
  %t69 = icmp slt i64 %t67, %t68
  br i1 %t69, label %while_body1, label %while_end2
while_body1:
  %t70 = load { i64, i8* }*, { i64, i8* }** %tokens.ptr
  %t71 = load i64, i64* %t9
  %t72 = getelementptr [6 x i8], [6 x i8]* @.slotT18, i32 0, i32 0
  %t73 = call i64 @nyx_slot_as_value_checked({ i64, i8* }* %t70, i64 %t71, i8* %t72)
  %t74 = inttoptr i64 %t73 to %Token*
  %t75 = load %Token, %Token* %t74
  store %Token %t75, %Token* %t76
  %t77 = load %Token, %Token* %t76
  %t78 = call %nyx_string* @get_token_type(%Token %t77)
  store %nyx_string* %t78, %nyx_string** %t79
  %t80 = load %Token, %Token* %t76
  %t81 = call i64 @get_token_line(%Token %t80)
  store i64 %t81, i64* %t82
  store i1 false, i1* %t83
  %t84 = load i64, i64* %t82
  %t85 = icmp sgt i64 %t84, 0
  br i1 %t85, label %sc_and_rhs3, label %sc_and_end4
sc_and_rhs3:
  %t86 = load i64, i64* %t82
  %t87 = icmp slt i64 %t86, 1000000
  store i1 %t87, i1* %t83
  br label %sc_and_end4
sc_and_end4:
  %t88 = load i1, i1* %t83
  br i1 %t88, label %then5, label %else6
then5:
  store i1 false, i1* %t89
  %t90 = load %nyx_string*, %nyx_string** %t79
  %t91 = load %nyx_string*, %nyx_string** %t15
  %t92 = call i1 @nyx_string_equals(%nyx_string* %t90, %nyx_string* %t91)
  br i1 %t92, label %sc_and_rhs8, label %sc_and_end9
sc_and_rhs8:
  %t93 = load i64, i64* %t9
  %t94 = add i64 %t93, 1
  %t95 = load i64, i64* %t12
  %t96 = icmp slt i64 %t94, %t95
  store i1 %t96, i1* %t89
  br label %sc_and_end9
sc_and_end9:
  %t97 = load i1, i1* %t89
  br i1 %t97, label %then10, label %else11
then10:
  %t98 = load { i64, i8* }*, { i64, i8* }** %tokens.ptr
  %t99 = load i64, i64* %t9
  %t100 = add i64 %t99, 1
  %t101 = getelementptr [6 x i8], [6 x i8]* @.slotT19, i32 0, i32 0
  %t102 = call i64 @nyx_slot_as_value_checked({ i64, i8* }* %t98, i64 %t100, i8* %t101)
  %t103 = inttoptr i64 %t102 to %Token*
  %t104 = load %Token, %Token* %t103
  store %Token %t104, %Token* %t105
  %t106 = load %Token, %Token* %t105
  %t107 = call %nyx_string* @get_token_type(%Token %t106)
  %t108 = load %nyx_string*, %nyx_string** %t18
  %t109 = call i1 @nyx_string_equals(%nyx_string* %t107, %nyx_string* %t108)
  br i1 %t109, label %then13, label %else14
then13:
  %t110 = load %Token, %Token* %t105
  %t111 = call %nyx_string* @get_token_value(%Token %t110)
  store %nyx_string* %t111, %nyx_string** %t112
  %t113 = load %Token, %Token* %t105
  %t114 = call i64 @get_token_col(%Token %t113)
  store i64 %t114, i64* %t115
  %t116 = load %nyx_string*, %nyx_string** %t21
  %t117 = load %nyx_string*, %nyx_string** %t112
  %t118 = call %nyx_string* @nyx_string_concat(%nyx_string* %t116, %nyx_string* %t117)
  %t119 = load %nyx_string*, %nyx_string** %t24
  %t120 = call %nyx_string* @nyx_string_concat(%nyx_string* %t118, %nyx_string* %t119)
  %t121 = load i64, i64* %t82
  %t122 = call %nyx_string* @nyx_string_from_int(i64 %t121)
  %t123 = call %nyx_string* @nyx_string_concat(%nyx_string* %t120, %nyx_string* %t122)
  %t124 = load %nyx_string*, %nyx_string** %t24
  %t125 = call %nyx_string* @nyx_string_concat(%nyx_string* %t123, %nyx_string* %t124)
  %t126 = load i64, i64* %t115
  %t127 = call %nyx_string* @nyx_string_from_int(i64 %t126)
  %t128 = call %nyx_string* @nyx_string_concat(%nyx_string* %t125, %nyx_string* %t127)
  %t129 = call i8* @nyx_string_to_cstr(%nyx_string* %t128)
  call void @nyx_print_string(i8* %t129)
  br label %merge15
else14:
  br label %merge15
merge15:
  br label %merge12
else11:
  br label %merge12
merge12:
  store i1 false, i1* %t130
  %t131 = load %nyx_string*, %nyx_string** %t79
  %t132 = load %nyx_string*, %nyx_string** %t27
  %t133 = call i1 @nyx_string_equals(%nyx_string* %t131, %nyx_string* %t132)
  br i1 %t133, label %sc_and_rhs16, label %sc_and_end17
sc_and_rhs16:
  %t134 = load i64, i64* %t9
  %t135 = add i64 %t134, 1
  %t136 = load i64, i64* %t12
  %t137 = icmp slt i64 %t135, %t136
  store i1 %t137, i1* %t130
  br label %sc_and_end17
sc_and_end17:
  %t138 = load i1, i1* %t130
  br i1 %t138, label %then18, label %else19
then18:
  %t139 = load { i64, i8* }*, { i64, i8* }** %tokens.ptr
  %t140 = load i64, i64* %t9
  %t141 = add i64 %t140, 1
  %t142 = getelementptr [6 x i8], [6 x i8]* @.slotT20, i32 0, i32 0
  %t143 = call i64 @nyx_slot_as_value_checked({ i64, i8* }* %t139, i64 %t141, i8* %t142)
  %t144 = inttoptr i64 %t143 to %Token*
  %t145 = load %Token, %Token* %t144
  store %Token %t145, %Token* %t146
  %t147 = load %Token, %Token* %t146
  %t148 = call %nyx_string* @get_token_type(%Token %t147)
  %t149 = load %nyx_string*, %nyx_string** %t18
  %t150 = call i1 @nyx_string_equals(%nyx_string* %t148, %nyx_string* %t149)
  br i1 %t150, label %then21, label %else22
then21:
  %t151 = load %Token, %Token* %t146
  %t152 = call %nyx_string* @get_token_value(%Token %t151)
  store %nyx_string* %t152, %nyx_string** %t153
  %t154 = load %Token, %Token* %t146
  %t155 = call i64 @get_token_col(%Token %t154)
  store i64 %t155, i64* %t156
  %t157 = load %nyx_string*, %nyx_string** %t30
  %t158 = load %nyx_string*, %nyx_string** %t153
  %t159 = call %nyx_string* @nyx_string_concat(%nyx_string* %t157, %nyx_string* %t158)
  %t160 = load %nyx_string*, %nyx_string** %t24
  %t161 = call %nyx_string* @nyx_string_concat(%nyx_string* %t159, %nyx_string* %t160)
  %t162 = load i64, i64* %t82
  %t163 = call %nyx_string* @nyx_string_from_int(i64 %t162)
  %t164 = call %nyx_string* @nyx_string_concat(%nyx_string* %t161, %nyx_string* %t163)
  %t165 = load %nyx_string*, %nyx_string** %t24
  %t166 = call %nyx_string* @nyx_string_concat(%nyx_string* %t164, %nyx_string* %t165)
  %t167 = load i64, i64* %t156
  %t168 = call %nyx_string* @nyx_string_from_int(i64 %t167)
  %t169 = call %nyx_string* @nyx_string_concat(%nyx_string* %t166, %nyx_string* %t168)
  %t170 = call i8* @nyx_string_to_cstr(%nyx_string* %t169)
  call void @nyx_print_string(i8* %t170)
  br label %merge23
else22:
  br label %merge23
merge23:
  br label %merge20
else19:
  br label %merge20
merge20:
  store i1 false, i1* %t171
  %t172 = load %nyx_string*, %nyx_string** %t79
  %t173 = load %nyx_string*, %nyx_string** %t33
  %t174 = call i1 @nyx_string_equals(%nyx_string* %t172, %nyx_string* %t173)
  br i1 %t174, label %sc_and_rhs24, label %sc_and_end25
sc_and_rhs24:
  %t175 = load i64, i64* %t9
  %t176 = add i64 %t175, 1
  %t177 = load i64, i64* %t12
  %t178 = icmp slt i64 %t176, %t177
  store i1 %t178, i1* %t171
  br label %sc_and_end25
sc_and_end25:
  %t179 = load i1, i1* %t171
  br i1 %t179, label %then26, label %else27
then26:
  %t180 = load { i64, i8* }*, { i64, i8* }** %tokens.ptr
  %t181 = load i64, i64* %t9
  %t182 = add i64 %t181, 1
  %t183 = getelementptr [6 x i8], [6 x i8]* @.slotT21, i32 0, i32 0
  %t184 = call i64 @nyx_slot_as_value_checked({ i64, i8* }* %t180, i64 %t182, i8* %t183)
  %t185 = inttoptr i64 %t184 to %Token*
  %t186 = load %Token, %Token* %t185
  store %Token %t186, %Token* %t187
  %t188 = load %Token, %Token* %t187
  %t189 = call %nyx_string* @get_token_type(%Token %t188)
  %t190 = load %nyx_string*, %nyx_string** %t18
  %t191 = call i1 @nyx_string_equals(%nyx_string* %t189, %nyx_string* %t190)
  br i1 %t191, label %then29, label %else30
then29:
  %t192 = load %Token, %Token* %t187
  %t193 = call %nyx_string* @get_token_value(%Token %t192)
  store %nyx_string* %t193, %nyx_string** %t194
  %t195 = load %Token, %Token* %t187
  %t196 = call i64 @get_token_col(%Token %t195)
  store i64 %t196, i64* %t197
  %t198 = load %nyx_string*, %nyx_string** %t36
  %t199 = load %nyx_string*, %nyx_string** %t194
  %t200 = call %nyx_string* @nyx_string_concat(%nyx_string* %t198, %nyx_string* %t199)
  %t201 = load %nyx_string*, %nyx_string** %t24
  %t202 = call %nyx_string* @nyx_string_concat(%nyx_string* %t200, %nyx_string* %t201)
  %t203 = load i64, i64* %t82
  %t204 = call %nyx_string* @nyx_string_from_int(i64 %t203)
  %t205 = call %nyx_string* @nyx_string_concat(%nyx_string* %t202, %nyx_string* %t204)
  %t206 = load %nyx_string*, %nyx_string** %t24
  %t207 = call %nyx_string* @nyx_string_concat(%nyx_string* %t205, %nyx_string* %t206)
  %t208 = load i64, i64* %t197
  %t209 = call %nyx_string* @nyx_string_from_int(i64 %t208)
  %t210 = call %nyx_string* @nyx_string_concat(%nyx_string* %t207, %nyx_string* %t209)
  %t211 = call i8* @nyx_string_to_cstr(%nyx_string* %t210)
  call void @nyx_print_string(i8* %t211)
  br label %merge31
else30:
  br label %merge31
merge31:
  br label %merge28
else27:
  br label %merge28
merge28:
  store i1 false, i1* %t212
  %t213 = load %nyx_string*, %nyx_string** %t79
  %t214 = load %nyx_string*, %nyx_string** %t39
  %t215 = call i1 @nyx_string_equals(%nyx_string* %t213, %nyx_string* %t214)
  br i1 %t215, label %sc_and_rhs32, label %sc_and_end33
sc_and_rhs32:
  %t216 = load i64, i64* %t9
  %t217 = add i64 %t216, 1
  %t218 = load i64, i64* %t12
  %t219 = icmp slt i64 %t217, %t218
  store i1 %t219, i1* %t212
  br label %sc_and_end33
sc_and_end33:
  %t220 = load i1, i1* %t212
  br i1 %t220, label %then34, label %else35
then34:
  %t221 = load { i64, i8* }*, { i64, i8* }** %tokens.ptr
  %t222 = load i64, i64* %t9
  %t223 = add i64 %t222, 1
  %t224 = getelementptr [6 x i8], [6 x i8]* @.slotT22, i32 0, i32 0
  %t225 = call i64 @nyx_slot_as_value_checked({ i64, i8* }* %t221, i64 %t223, i8* %t224)
  %t226 = inttoptr i64 %t225 to %Token*
  %t227 = load %Token, %Token* %t226
  store %Token %t227, %Token* %t228
  %t229 = load %Token, %Token* %t228
  %t230 = call %nyx_string* @get_token_type(%Token %t229)
  %t231 = load %nyx_string*, %nyx_string** %t18
  %t232 = call i1 @nyx_string_equals(%nyx_string* %t230, %nyx_string* %t231)
  br i1 %t232, label %then37, label %else38
then37:
  %t233 = load %Token, %Token* %t228
  %t234 = call %nyx_string* @get_token_value(%Token %t233)
  store %nyx_string* %t234, %nyx_string** %t235
  %t236 = load %Token, %Token* %t228
  %t237 = call i64 @get_token_col(%Token %t236)
  store i64 %t237, i64* %t238
  %t239 = load %nyx_string*, %nyx_string** %t42
  %t240 = load %nyx_string*, %nyx_string** %t235
  %t241 = call %nyx_string* @nyx_string_concat(%nyx_string* %t239, %nyx_string* %t240)
  %t242 = load %nyx_string*, %nyx_string** %t24
  %t243 = call %nyx_string* @nyx_string_concat(%nyx_string* %t241, %nyx_string* %t242)
  %t244 = load i64, i64* %t82
  %t245 = call %nyx_string* @nyx_string_from_int(i64 %t244)
  %t246 = call %nyx_string* @nyx_string_concat(%nyx_string* %t243, %nyx_string* %t245)
  %t247 = load %nyx_string*, %nyx_string** %t24
  %t248 = call %nyx_string* @nyx_string_concat(%nyx_string* %t246, %nyx_string* %t247)
  %t249 = load i64, i64* %t238
  %t250 = call %nyx_string* @nyx_string_from_int(i64 %t249)
  %t251 = call %nyx_string* @nyx_string_concat(%nyx_string* %t248, %nyx_string* %t250)
  %t252 = call i8* @nyx_string_to_cstr(%nyx_string* %t251)
  call void @nyx_print_string(i8* %t252)
  br label %merge39
else38:
  br label %merge39
merge39:
  br label %merge36
else35:
  br label %merge36
merge36:
  store i1 false, i1* %t253
  store i1 true, i1* %t254
  %t255 = load %nyx_string*, %nyx_string** %t79
  %t256 = load %nyx_string*, %nyx_string** %t45
  %t257 = call i1 @nyx_string_equals(%nyx_string* %t255, %nyx_string* %t256)
  br i1 %t257, label %sc_or_end41, label %sc_or_rhs40
sc_or_rhs40:
  %t258 = load %nyx_string*, %nyx_string** %t79
  %t259 = load %nyx_string*, %nyx_string** %t48
  %t260 = call i1 @nyx_string_equals(%nyx_string* %t258, %nyx_string* %t259)
  store i1 %t260, i1* %t254
  br label %sc_or_end41
sc_or_end41:
  %t261 = load i1, i1* %t254
  br i1 %t261, label %sc_and_rhs42, label %sc_and_end43
sc_and_rhs42:
  %t262 = load i64, i64* %t9
  %t263 = add i64 %t262, 1
  %t264 = load i64, i64* %t12
  %t265 = icmp slt i64 %t263, %t264
  store i1 %t265, i1* %t253
  br label %sc_and_end43
sc_and_end43:
  %t266 = load i1, i1* %t253
  br i1 %t266, label %then44, label %else45
then44:
  %t267 = load { i64, i8* }*, { i64, i8* }** %tokens.ptr
  %t268 = load i64, i64* %t9
  %t269 = add i64 %t268, 1
  %t270 = getelementptr [6 x i8], [6 x i8]* @.slotT23, i32 0, i32 0
  %t271 = call i64 @nyx_slot_as_value_checked({ i64, i8* }* %t267, i64 %t269, i8* %t270)
  %t272 = inttoptr i64 %t271 to %Token*
  %t273 = load %Token, %Token* %t272
  store %Token %t273, %Token* %t274
  %t275 = load %Token, %Token* %t274
  %t276 = call %nyx_string* @get_token_type(%Token %t275)
  %t277 = load %nyx_string*, %nyx_string** %t18
  %t278 = call i1 @nyx_string_equals(%nyx_string* %t276, %nyx_string* %t277)
  br i1 %t278, label %then47, label %else48
then47:
  %t279 = load %Token, %Token* %t274
  %t280 = call %nyx_string* @get_token_value(%Token %t279)
  store %nyx_string* %t280, %nyx_string** %t281
  %t282 = load %Token, %Token* %t274
  %t283 = call i64 @get_token_col(%Token %t282)
  store i64 %t283, i64* %t284
  %t285 = load %nyx_string*, %nyx_string** %t51
  store %nyx_string* %t285, %nyx_string** %t286
  %t287 = load %nyx_string*, %nyx_string** %t79
  %t288 = load %nyx_string*, %nyx_string** %t48
  %t289 = call i1 @nyx_string_equals(%nyx_string* %t287, %nyx_string* %t288)
  br i1 %t289, label %then50, label %else51
then50:
  %t290 = load %nyx_string*, %nyx_string** %t54
  store %nyx_string* %t290, %nyx_string** %t286
  br label %merge52
else51:
  br label %merge52
merge52:
  %t291 = load %nyx_string*, %nyx_string** %t57
  %t292 = load %nyx_string*, %nyx_string** %t286
  %t293 = call %nyx_string* @nyx_string_concat(%nyx_string* %t291, %nyx_string* %t292)
  %t294 = load %nyx_string*, %nyx_string** %t24
  %t295 = call %nyx_string* @nyx_string_concat(%nyx_string* %t293, %nyx_string* %t294)
  %t296 = load %nyx_string*, %nyx_string** %t281
  %t297 = call %nyx_string* @nyx_string_concat(%nyx_string* %t295, %nyx_string* %t296)
  %t298 = load %nyx_string*, %nyx_string** %t24
  %t299 = call %nyx_string* @nyx_string_concat(%nyx_string* %t297, %nyx_string* %t298)
  %t300 = load i64, i64* %t82
  %t301 = call %nyx_string* @nyx_string_from_int(i64 %t300)
  %t302 = call %nyx_string* @nyx_string_concat(%nyx_string* %t299, %nyx_string* %t301)
  %t303 = load %nyx_string*, %nyx_string** %t24
  %t304 = call %nyx_string* @nyx_string_concat(%nyx_string* %t302, %nyx_string* %t303)
  %t305 = load i64, i64* %t284
  %t306 = call %nyx_string* @nyx_string_from_int(i64 %t305)
  %t307 = call %nyx_string* @nyx_string_concat(%nyx_string* %t304, %nyx_string* %t306)
  %t308 = call i8* @nyx_string_to_cstr(%nyx_string* %t307)
  call void @nyx_print_string(i8* %t308)
  br label %merge49
else48:
  br label %merge49
merge49:
  br label %merge46
else45:
  br label %merge46
merge46:
  store i1 false, i1* %t309
  %t310 = load %nyx_string*, %nyx_string** %t79
  %t311 = load %nyx_string*, %nyx_string** %t60
  %t312 = call i1 @nyx_string_equals(%nyx_string* %t310, %nyx_string* %t311)
  br i1 %t312, label %sc_and_rhs53, label %sc_and_end54
sc_and_rhs53:
  %t313 = load i64, i64* %t9
  %t314 = add i64 %t313, 1
  %t315 = load i64, i64* %t12
  %t316 = icmp slt i64 %t314, %t315
  store i1 %t316, i1* %t309
  br label %sc_and_end54
sc_and_end54:
  %t317 = load i1, i1* %t309
  br i1 %t317, label %then55, label %else56
then55:
  %t318 = load { i64, i8* }*, { i64, i8* }** %tokens.ptr
  %t319 = load i64, i64* %t9
  %t320 = add i64 %t319, 1
  %t321 = getelementptr [6 x i8], [6 x i8]* @.slotT24, i32 0, i32 0
  %t322 = call i64 @nyx_slot_as_value_checked({ i64, i8* }* %t318, i64 %t320, i8* %t321)
  %t323 = inttoptr i64 %t322 to %Token*
  %t324 = load %Token, %Token* %t323
  store %Token %t324, %Token* %t325
  %t326 = load %Token, %Token* %t325
  %t327 = call %nyx_string* @get_token_type(%Token %t326)
  %t328 = load %nyx_string*, %nyx_string** %t63
  %t329 = call i1 @nyx_string_equals(%nyx_string* %t327, %nyx_string* %t328)
  br i1 %t329, label %then58, label %else59
then58:
  %t330 = load %Token, %Token* %t325
  %t331 = call %nyx_string* @get_token_value(%Token %t330)
  store %nyx_string* %t331, %nyx_string** %t332
  %t333 = load %Token, %Token* %t325
  %t334 = call i64 @get_token_col(%Token %t333)
  store i64 %t334, i64* %t335
  %t336 = load %nyx_string*, %nyx_string** %t66
  %t337 = load %nyx_string*, %nyx_string** %t332
  %t338 = call %nyx_string* @nyx_string_concat(%nyx_string* %t336, %nyx_string* %t337)
  %t339 = load %nyx_string*, %nyx_string** %t24
  %t340 = call %nyx_string* @nyx_string_concat(%nyx_string* %t338, %nyx_string* %t339)
  %t341 = load i64, i64* %t82
  %t342 = call %nyx_string* @nyx_string_from_int(i64 %t341)
  %t343 = call %nyx_string* @nyx_string_concat(%nyx_string* %t340, %nyx_string* %t342)
  %t344 = load %nyx_string*, %nyx_string** %t24
  %t345 = call %nyx_string* @nyx_string_concat(%nyx_string* %t343, %nyx_string* %t344)
  %t346 = load i64, i64* %t335
  %t347 = call %nyx_string* @nyx_string_from_int(i64 %t346)
  %t348 = call %nyx_string* @nyx_string_concat(%nyx_string* %t345, %nyx_string* %t347)
  %t349 = call i8* @nyx_string_to_cstr(%nyx_string* %t348)
  call void @nyx_print_string(i8* %t349)
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
  %t350 = load i64, i64* %t9
  %t351 = add i64 %t350, 1
  store i64 %t351, i64* %t9
  br label %while_cond0
while_end2:
  ret i64 0
}

define i64 @main(
i32 %argc, i8** %argv) {
  %t356 = alloca %nyx_string*
  %t366 = alloca %nyx_string*
  %t369 = alloca %nyx_string*
  %t385 = alloca { i64, i8* }*
  %t389 = alloca { i64, i8* }*
  %t393 = alloca { i64, i8* }*
  %t395 = alloca i64
  %t410 = alloca i64
  %t419 = alloca { i64, i8* }*
  %t422 = alloca i64
  %t425 = alloca i64
  %t429 = alloca %nyx_string*
  %t448 = alloca i1
  %t449 = alloca i1
  %t453 = alloca { i64, i8* }*
  %t454 = alloca i64
  %t457 = alloca %nyx_string*
  %t460 = alloca %nyx_string*
  %t463 = alloca %nyx_string*
  %t472 = alloca %nyx_string*
  %t474 = alloca i64
  %t475 = alloca i64
  %t485 = alloca i8
  %t503 = alloca i64
  %t506 = alloca i64
  %t516 = alloca i8
  %t537 = alloca %nyx_string*
  %t543 = alloca %nyx_string*
  %t550 = alloca %nyx_string*
  %t577 = alloca { i64, i8* }*
  %t579 = alloca { i64, i8* }*
  %t581 = alloca i64
  %t582 = alloca i64
  %t585 = alloca %nyx_string*
  %t588 = alloca %nyx_string*
  %t596 = alloca %nyx_string*
  %t601 = alloca %nyx_string*
  call void @nyx_set_args(i32 %argc, i8** %argv)
  %t352 = getelementptr [8 x i8], [8 x i8]* @.str25, i32 0, i32 0
  %t353 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str25.c, i8* %t352, i64 7)
  %t354 = call i8* @nyx_string_to_cstr(%nyx_string* %t353)
  %t355 = call %nyx_string* @nyx_getenv(i8* %t354)
  store %nyx_string* %t355, %nyx_string** %t356
  %t357 = load %nyx_string*, %nyx_string** %t356
  %t358 = getelementptr [1 x i8], [1 x i8]* @.str26, i32 0, i32 0
  %t359 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str26.c, i8* %t358, i64 0)
  %t360 = call i1 @nyx_string_equals(%nyx_string* %t357, %nyx_string* %t359)
  br i1 %t360, label %then61, label %else62
then61:
  %t361 = getelementptr [10 x i8], [10 x i8]* @.str27, i32 0, i32 0
  %t362 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str27.c, i8* %t361, i64 9)
  store %nyx_string* %t362, %nyx_string** %t356
  br label %merge63
else62:
  br label %merge63
merge63:
  %t363 = load %nyx_string*, %nyx_string** %t356
  %t364 = call i8* @nyx_string_to_cstr(%nyx_string* %t363)
  %t365 = call %nyx_string* @nyx_read_file(i8* %t364)
  store %nyx_string* %t365, %nyx_string** %t366
  call void @set_resolve_soft_errors(i1 1)
  %t367 = load %nyx_string*, %nyx_string** %t366
  %t368 = call %nyx_string* @resolve_source(%nyx_string* %t367)
  store %nyx_string* %t368, %nyx_string** %t369
  %t370 = call i64 @get_resolve_error_count()
  %t371 = icmp sgt i64 %t370, 0
  br i1 %t371, label %then64, label %else65
then64:
  %t372 = getelementptr [38 x i8], [38 x i8]* @.str28, i32 0, i32 0
  %t373 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str28.c, i8* %t372, i64 37)
  %t374 = call i64 @get_resolve_error_count()
  %t375 = call %nyx_string* @nyx_string_from_int(i64 %t374)
  %t376 = call %nyx_string* @nyx_string_concat(%nyx_string* %t373, %nyx_string* %t375)
  %t377 = getelementptr [38 x i8], [38 x i8]* @.str29, i32 0, i32 0
  %t378 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str29.c, i8* %t377, i64 37)
  %t379 = call %nyx_string* @nyx_string_concat(%nyx_string* %t376, %nyx_string* %t378)
  %t380 = call i8* @nyx_string_to_cstr(%nyx_string* %t379)
  call void @nyx_print_string(i8* %t380)
  %t381 = getelementptr [4 x i8], [4 x i8]* @.str30, i32 0, i32 0
  %t382 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str30.c, i8* %t381, i64 3)
  %t383 = call i8* @nyx_string_to_cstr(%nyx_string* %t382)
  call void @nyx_print_string(i8* %t383)
  ret i64 1
else65:
  br label %merge66
merge66:
  %t384 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t384, { i64, i8* }** %t385
  %t386 = load %nyx_string*, %nyx_string** %t369
  %t387 = load { i64, i8* }*, { i64, i8* }** %t385
  %t388 = call { i64, i8* }* @tokenize_con_avisos(%nyx_string* %t386, { i64, i8* }* %t387)
  store { i64, i8* }* %t388, { i64, i8* }** %t389
  %t390 = load { i64, i8* }*, { i64, i8* }** %t389
  %t391 = load %nyx_string*, %nyx_string** %t369
  %t392 = call { i64, i8* }* @parse({ i64, i8* }* %t390, %nyx_string* %t391)
  store { i64, i8* }* %t392, { i64, i8* }** %t393
  %t394 = call i64 @get_parse_error_count()
  store i64 %t394, i64* %t395
  %t396 = load i64, i64* %t395
  %t397 = icmp sgt i64 %t396, 0
  br i1 %t397, label %then67, label %else68
then67:
  %t398 = getelementptr [34 x i8], [34 x i8]* @.str31, i32 0, i32 0
  %t399 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str31.c, i8* %t398, i64 33)
  %t400 = load i64, i64* %t395
  %t401 = call %nyx_string* @nyx_string_from_int(i64 %t400)
  %t402 = call %nyx_string* @nyx_string_concat(%nyx_string* %t399, %nyx_string* %t401)
  %t403 = getelementptr [10 x i8], [10 x i8]* @.str32, i32 0, i32 0
  %t404 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str32.c, i8* %t403, i64 9)
  %t405 = call %nyx_string* @nyx_string_concat(%nyx_string* %t402, %nyx_string* %t404)
  %t406 = call i8* @nyx_string_to_cstr(%nyx_string* %t405)
  call void @nyx_print_string(i8* %t406)
  %t407 = getelementptr [4 x i8], [4 x i8]* @.str33, i32 0, i32 0
  %t408 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str33.c, i8* %t407, i64 3)
  %t409 = call i8* @nyx_string_to_cstr(%nyx_string* %t408)
  call void @nyx_print_string(i8* %t409)
  ret i64 1
else68:
  br label %merge69
merge69:
  store i64 0, i64* %t410
  br label %while_cond70
while_cond70:
  %t411 = load i64, i64* %t410
  %t412 = load { i64, i8* }*, { i64, i8* }** %t385
  %t413 = call i64 @nyx_array_length({ i64, i8* }* %t412)
  %t414 = icmp slt i64 %t411, %t413
  br i1 %t414, label %while_body71, label %while_end72
while_body71:
  %t415 = load { i64, i8* }*, { i64, i8* }** %t385
  %t416 = load i64, i64* %t410
  %t417 = call i64 @nyx_array_get({ i64, i8* }* %t415, i64 %t416)
  %t418 = inttoptr i64 %t417 to { i64, i8* }*
  store { i64, i8* }* %t418, { i64, i8* }** %t419
  %t420 = load { i64, i8* }*, { i64, i8* }** %t419
  %t421 = call i64 @nyx_slot_as_int_checked({ i64, i8* }* %t420, i64 0)
  store i64 %t421, i64* %t422
  %t423 = load { i64, i8* }*, { i64, i8* }** %t419
  %t424 = call i64 @nyx_slot_as_int_checked({ i64, i8* }* %t423, i64 1)
  store i64 %t424, i64* %t425
  %t426 = load { i64, i8* }*, { i64, i8* }** %t419
  %t427 = call i64 @nyx_array_get_checked({ i64, i8* }* %t426, i64 2, i64 2)
  %t428 = inttoptr i64 %t427 to %nyx_string*
  store %nyx_string* %t428, %nyx_string** %t429
  %t430 = load i64, i64* %t422
  %t431 = load i64, i64* %t425
  %t432 = load %nyx_string*, %nyx_string** %t429
  %t433 = call i64 @sem_aviso_escape(i64 %t430, i64 %t431, %nyx_string* %t432)
  %t434 = load i64, i64* %t410
  %t435 = add i64 %t434, 1
  store i64 %t435, i64* %t410
  br label %while_cond70
while_end72:
  %t436 = load { i64, i8* }*, { i64, i8* }** %t393
  %t437 = call i64 @nyx_array_get({ i64, i8* }* %t436, i64 0)
  %t438 = inttoptr i64 %t437 to %nyx_string*
  %t439 = call i64 @nyx_array_get({ i64, i8* }* %t436, i64 1)
  %t440 = inttoptr i64 %t439 to { i64, i8* }*
  %t441 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %t436, i64 2)
  %t442 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %t436, i64 3)
  %t443 = insertvalue %ASTNode undef, %nyx_string* %t438, 0
  %t444 = insertvalue %ASTNode %t443, { i64, i8* }* %t440, 1
  %t445 = insertvalue %ASTNode %t444, i64 %t441, 2
  %t446 = insertvalue %ASTNode %t445, i64 %t442, 3
  %t447 = call i1 @analyze(%ASTNode %t446)
  store i1 %t447, i1* %t448
  store i1 0, i1* %t449
  %t450 = load i1, i1* %t448
  %t451 = xor i1 %t450, true
  br i1 %t451, label %then73, label %else74
then73:
  store i1 1, i1* %t449
  %t452 = call { i64, i8* }* @get_errors()
  store { i64, i8* }* %t452, { i64, i8* }** %t453
  store i64 0, i64* %t454
  %t455 = getelementptr [12 x i8], [12 x i8]* @.str34, i32 0, i32 0
  %t456 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str34.c, i8* %t455, i64 11)
  store %nyx_string* %t456, %nyx_string** %t457
  %t458 = getelementptr [2 x i8], [2 x i8]* @.str35, i32 0, i32 0
  %t459 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str35.c, i8* %t458, i64 1)
  store %nyx_string* %t459, %nyx_string** %t460
  %t461 = getelementptr [16 x i8], [16 x i8]* @.str36, i32 0, i32 0
  %t462 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str36.c, i8* %t461, i64 15)
  store %nyx_string* %t462, %nyx_string** %t463
  br label %while_cond76
while_cond76:
  %t464 = load i64, i64* %t454
  %t465 = load { i64, i8* }*, { i64, i8* }** %t453
  %t466 = call i64 @nyx_array_length({ i64, i8* }* %t465)
  %t467 = icmp slt i64 %t464, %t466
  br i1 %t467, label %while_body77, label %while_end78
while_body77:
  %t468 = load { i64, i8* }*, { i64, i8* }** %t453
  %t469 = load i64, i64* %t454
  %t470 = call i64 @nyx_array_get_checked({ i64, i8* }* %t468, i64 %t469, i64 2)
  %t471 = inttoptr i64 %t470 to %nyx_string*
  store %nyx_string* %t471, %nyx_string** %t472
  %t473 = sub i64 0, 1
  store i64 %t473, i64* %t474
  store i64 0, i64* %t475
  br label %while_cond79
while_cond79:
  %t476 = load i64, i64* %t475
  %t477 = load %nyx_string*, %nyx_string** %t472
  %t478 = call i64 @nyx_string_byte_length(%nyx_string* %t477)
  %t479 = icmp slt i64 %t476, %t478
  br i1 %t479, label %while_body80, label %while_end81
while_body80:
  %t480 = load %nyx_string*, %nyx_string** %t472
  %t481 = load i64, i64* %t475
  %t482 = call i8 @nyx_string_char_at(%nyx_string* %t480, i64 %t481)
  %t483 = zext i8 %t482 to i64
  %t484 = trunc i64 %t483 to i8
  store i8 %t484, i8* %t485
  %t486 = load i8, i8* %t485
  %t487 = getelementptr [1 x i8], [1 x i8]* @.str37, i32 0, i32 0
  %t488 = load i8, i8* %t487
  %t489 = zext i8 %t488 to i64
  %t490 = zext i8 %t486 to i64
  %t491 = icmp eq i64 %t490, %t489
  br i1 %t491, label %then82, label %else83
then82:
  %t492 = load i64, i64* %t474
  %t493 = sub i64 0, 1
  %t494 = icmp eq i64 %t492, %t493
  br i1 %t494, label %then85, label %else86
then85:
  %t495 = load i64, i64* %t475
  store i64 %t495, i64* %t474
  br label %merge87
else86:
  br label %merge87
merge87:
  %t496 = load %nyx_string*, %nyx_string** %t472
  %t497 = call i64 @nyx_string_byte_length(%nyx_string* %t496)
  store i64 %t497, i64* %t475
  br label %merge84
else83:
  br label %merge84
merge84:
  %t498 = load i64, i64* %t475
  %t499 = add i64 %t498, 1
  store i64 %t499, i64* %t475
  br label %while_cond79
while_end81:
  %t500 = load i64, i64* %t474
  %t501 = icmp sgt i64 %t500, 0
  br i1 %t501, label %then88, label %else89
then88:
  %t502 = sub i64 0, 1
  store i64 %t502, i64* %t503
  %t504 = load i64, i64* %t474
  %t505 = add i64 %t504, 1
  store i64 %t505, i64* %t506
  br label %while_cond91
while_cond91:
  %t507 = load i64, i64* %t506
  %t508 = load %nyx_string*, %nyx_string** %t472
  %t509 = call i64 @nyx_string_byte_length(%nyx_string* %t508)
  %t510 = icmp slt i64 %t507, %t509
  br i1 %t510, label %while_body92, label %while_end93
while_body92:
  %t511 = load %nyx_string*, %nyx_string** %t472
  %t512 = load i64, i64* %t506
  %t513 = call i8 @nyx_string_char_at(%nyx_string* %t511, i64 %t512)
  %t514 = zext i8 %t513 to i64
  %t515 = trunc i64 %t514 to i8
  store i8 %t515, i8* %t516
  %t517 = load i8, i8* %t516
  %t518 = getelementptr [1 x i8], [1 x i8]* @.str38, i32 0, i32 0
  %t519 = load i8, i8* %t518
  %t520 = zext i8 %t519 to i64
  %t521 = zext i8 %t517 to i64
  %t522 = icmp eq i64 %t521, %t520
  br i1 %t522, label %then94, label %else95
then94:
  %t523 = load i64, i64* %t503
  %t524 = sub i64 0, 1
  %t525 = icmp eq i64 %t523, %t524
  br i1 %t525, label %then97, label %else98
then97:
  %t526 = load i64, i64* %t506
  store i64 %t526, i64* %t503
  br label %merge99
else98:
  br label %merge99
merge99:
  %t527 = load %nyx_string*, %nyx_string** %t472
  %t528 = call i64 @nyx_string_byte_length(%nyx_string* %t527)
  store i64 %t528, i64* %t506
  br label %merge96
else95:
  br label %merge96
merge96:
  %t529 = load i64, i64* %t506
  %t530 = add i64 %t529, 1
  store i64 %t530, i64* %t506
  br label %while_cond91
while_end93:
  %t531 = load i64, i64* %t503
  %t532 = load i64, i64* %t474
  %t533 = icmp sgt i64 %t531, %t532
  br i1 %t533, label %then100, label %else101
then100:
  %t534 = load %nyx_string*, %nyx_string** %t472
  %t535 = load i64, i64* %t474
  %t536 = call %nyx_string* @nyx_string_substring(%nyx_string* %t534, i64 0, i64 %t535)
  store %nyx_string* %t536, %nyx_string** %t537
  %t538 = load %nyx_string*, %nyx_string** %t472
  %t539 = load i64, i64* %t474
  %t540 = add i64 %t539, 1
  %t541 = load i64, i64* %t503
  %t542 = call %nyx_string* @nyx_string_substring(%nyx_string* %t538, i64 %t540, i64 %t541)
  store %nyx_string* %t542, %nyx_string** %t543
  %t544 = load %nyx_string*, %nyx_string** %t472
  %t545 = load i64, i64* %t503
  %t546 = add i64 %t545, 1
  %t547 = load %nyx_string*, %nyx_string** %t472
  %t548 = call i64 @nyx_string_byte_length(%nyx_string* %t547)
  %t549 = call %nyx_string* @nyx_string_substring(%nyx_string* %t544, i64 %t546, i64 %t548)
  store %nyx_string* %t549, %nyx_string** %t550
  %t551 = load %nyx_string*, %nyx_string** %t457
  %t552 = load %nyx_string*, %nyx_string** %t537
  %t553 = call %nyx_string* @nyx_string_concat(%nyx_string* %t551, %nyx_string* %t552)
  %t554 = load %nyx_string*, %nyx_string** %t460
  %t555 = call %nyx_string* @nyx_string_concat(%nyx_string* %t553, %nyx_string* %t554)
  %t556 = load %nyx_string*, %nyx_string** %t543
  %t557 = call %nyx_string* @nyx_string_concat(%nyx_string* %t555, %nyx_string* %t556)
  %t558 = load %nyx_string*, %nyx_string** %t460
  %t559 = call %nyx_string* @nyx_string_concat(%nyx_string* %t557, %nyx_string* %t558)
  %t560 = load %nyx_string*, %nyx_string** %t550
  %t561 = call %nyx_string* @nyx_string_concat(%nyx_string* %t559, %nyx_string* %t560)
  %t562 = call i8* @nyx_string_to_cstr(%nyx_string* %t561)
  call void @nyx_print_string(i8* %t562)
  br label %merge102
else101:
  %t563 = load %nyx_string*, %nyx_string** %t463
  %t564 = load %nyx_string*, %nyx_string** %t472
  %t565 = call %nyx_string* @nyx_string_concat(%nyx_string* %t563, %nyx_string* %t564)
  %t566 = call i8* @nyx_string_to_cstr(%nyx_string* %t565)
  call void @nyx_print_string(i8* %t566)
  br label %merge102
merge102:
  br label %merge90
else89:
  %t567 = load %nyx_string*, %nyx_string** %t463
  %t568 = load %nyx_string*, %nyx_string** %t472
  %t569 = call %nyx_string* @nyx_string_concat(%nyx_string* %t567, %nyx_string* %t568)
  %t570 = call i8* @nyx_string_to_cstr(%nyx_string* %t569)
  call void @nyx_print_string(i8* %t570)
  br label %merge90
merge90:
  %t571 = load i64, i64* %t454
  %t572 = add i64 %t571, 1
  store i64 %t572, i64* %t454
  br label %while_cond76
while_end78:
  br label %merge75
else74:
  br label %merge75
merge75:
  %t573 = load %nyx_string*, %nyx_string** %t366
  %t574 = call { i64, i8* }* @tokenize(%nyx_string* %t573)
  %t575 = call i64 @scan_definitions({ i64, i8* }* %t574)
  %t576 = call { i64, i8* }* @get_sym_names()
  store { i64, i8* }* %t576, { i64, i8* }** %t577
  %t578 = call { i64, i8* }* @get_sym_kinds()
  store { i64, i8* }* %t578, { i64, i8* }** %t579
  %t580 = call i64 @get_sym_count()
  store i64 %t580, i64* %t581
  store i64 0, i64* %t582
  %t583 = getelementptr [5 x i8], [5 x i8]* @.str39, i32 0, i32 0
  %t584 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str39.c, i8* %t583, i64 4)
  store %nyx_string* %t584, %nyx_string** %t585
  %t586 = getelementptr [2 x i8], [2 x i8]* @.str40, i32 0, i32 0
  %t587 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str40.c, i8* %t586, i64 1)
  store %nyx_string* %t587, %nyx_string** %t588
  br label %while_cond103
while_cond103:
  %t589 = load i64, i64* %t582
  %t590 = load i64, i64* %t581
  %t591 = icmp slt i64 %t589, %t590
  br i1 %t591, label %while_body104, label %while_end105
while_body104:
  %t592 = load { i64, i8* }*, { i64, i8* }** %t577
  %t593 = load i64, i64* %t582
  %t594 = call i64 @nyx_array_get_checked({ i64, i8* }* %t592, i64 %t593, i64 2)
  %t595 = inttoptr i64 %t594 to %nyx_string*
  store %nyx_string* %t595, %nyx_string** %t596
  %t597 = load { i64, i8* }*, { i64, i8* }** %t579
  %t598 = load i64, i64* %t582
  %t599 = call i64 @nyx_array_get_checked({ i64, i8* }* %t597, i64 %t598, i64 2)
  %t600 = inttoptr i64 %t599 to %nyx_string*
  store %nyx_string* %t600, %nyx_string** %t601
  %t602 = load %nyx_string*, %nyx_string** %t585
  %t603 = load %nyx_string*, %nyx_string** %t601
  %t604 = call %nyx_string* @nyx_string_concat(%nyx_string* %t602, %nyx_string* %t603)
  %t605 = load %nyx_string*, %nyx_string** %t588
  %t606 = call %nyx_string* @nyx_string_concat(%nyx_string* %t604, %nyx_string* %t605)
  %t607 = load %nyx_string*, %nyx_string** %t596
  %t608 = call %nyx_string* @nyx_string_concat(%nyx_string* %t606, %nyx_string* %t607)
  %t609 = call i8* @nyx_string_to_cstr(%nyx_string* %t608)
  call void @nyx_print_string(i8* %t609)
  %t610 = load i64, i64* %t582
  %t611 = add i64 %t610, 1
  store i64 %t611, i64* %t582
  br label %while_cond103
while_end105:
  %t612 = getelementptr [4 x i8], [4 x i8]* @.str41, i32 0, i32 0
  %t613 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str41.c, i8* %t612, i64 3)
  %t614 = call i8* @nyx_string_to_cstr(%nyx_string* %t613)
  call void @nyx_print_string(i8* %t614)
  %t615 = load i1, i1* %t449
  br i1 %t615, label %then106, label %else107
then106:
  ret i64 1
else107:
  br label %merge108
merge108:
  ret i64 0
}


attributes #0 = { returns_twice }

