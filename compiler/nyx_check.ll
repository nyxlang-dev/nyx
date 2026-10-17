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
@.str18 = private unnamed_addr constant [8 x i8] c"NYX_SRC\00"
@.str18.c = internal global %nyx_string* null
@.str19 = private unnamed_addr constant [1 x i8] c"\00"
@.str19.c = internal global %nyx_string* null
@.str20 = private unnamed_addr constant [10 x i8] c"script.nx\00"
@.str20.c = internal global %nyx_string* null
@.str21 = private unnamed_addr constant [38 x i8] c"DIAG:ERROR:0:0:unresolved import(s): \00"
@.str21.c = internal global %nyx_string* null
@.str22 = private unnamed_addr constant [38 x i8] c" — el detalle NYX0301 salió arriba\00"
@.str22.c = internal global %nyx_string* null
@.str23 = private unnamed_addr constant [4 x i8] c"END\00"
@.str23.c = internal global %nyx_string* null
@.str24 = private unnamed_addr constant [34 x i8] c"DIAG:ERROR:0:0:parse failed with \00"
@.str24.c = internal global %nyx_string* null
@.str25 = private unnamed_addr constant [10 x i8] c" error(s)\00"
@.str25.c = internal global %nyx_string* null
@.str26 = private unnamed_addr constant [4 x i8] c"END\00"
@.str26.c = internal global %nyx_string* null
@.str27 = private unnamed_addr constant [12 x i8] c"DIAG:ERROR:\00"
@.str27.c = internal global %nyx_string* null
@.str28 = private unnamed_addr constant [2 x i8] c":\00"
@.str28.c = internal global %nyx_string* null
@.str29 = private unnamed_addr constant [16 x i8] c"DIAG:ERROR:0:0:\00"
@.str29.c = internal global %nyx_string* null
@.str30 = private unnamed_addr constant [1 x i8] c":"
@.str31 = private unnamed_addr constant [1 x i8] c":"
@.str32 = private unnamed_addr constant [5 x i8] c"SYM:\00"
@.str32.c = internal global %nyx_string* null
@.str33 = private unnamed_addr constant [2 x i8] c":\00"
@.str33.c = internal global %nyx_string* null
@.str34 = private unnamed_addr constant [4 x i8] c"END\00"
@.str34.c = internal global %nyx_string* null
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
  %73 = call i64 @nyx_array_get({ i64, i8* }* %71, i64 %72)
  %74 = inttoptr i64 %73 to %Token*
  %75 = load %Token, %Token* %74
  %76 = alloca %Token
  store %Token %75, %Token* %76
  %77 = load %Token, %Token* %76
  %78 = call %nyx_string* @get_token_type(%Token %77)
  %79 = alloca %nyx_string*
  store %nyx_string* %78, %nyx_string** %79
  %80 = load %Token, %Token* %76
  %81 = call i64 @get_token_line(%Token %80)
  %82 = alloca i64
  store i64 %81, i64* %82
  %83 = alloca i1
  store i1 false, i1* %83
  %84 = load i64, i64* %82
  %85 = icmp sgt i64 %84, 0
  br i1 %85, label %sc_and_rhs3, label %sc_and_end4
sc_and_rhs3:
  %86 = load i64, i64* %82
  %87 = icmp slt i64 %86, 1000000
  store i1 %87, i1* %83
  br label %sc_and_end4
sc_and_end4:
  %88 = load i1, i1* %83
  br i1 %88, label %then5, label %else6
then5:
  %89 = alloca i1
  store i1 false, i1* %89
  %90 = load %nyx_string*, %nyx_string** %79
  %91 = load %nyx_string*, %nyx_string** %15
  %92 = call i1 @nyx_string_equals(%nyx_string* %90, %nyx_string* %91)
  br i1 %92, label %sc_and_rhs8, label %sc_and_end9
sc_and_rhs8:
  %93 = load i64, i64* %9
  %94 = add i64 %93, 1
  %95 = load i64, i64* %12
  %96 = icmp slt i64 %94, %95
  store i1 %96, i1* %89
  br label %sc_and_end9
sc_and_end9:
  %97 = load i1, i1* %89
  br i1 %97, label %then10, label %else11
then10:
  %98 = load { i64, i8* }*, { i64, i8* }** %tokens.ptr
  %99 = load i64, i64* %9
  %100 = add i64 %99, 1
  %101 = call i64 @nyx_array_get({ i64, i8* }* %98, i64 %100)
  %102 = inttoptr i64 %101 to %Token*
  %103 = load %Token, %Token* %102
  %104 = alloca %Token
  store %Token %103, %Token* %104
  %105 = load %Token, %Token* %104
  %106 = call %nyx_string* @get_token_type(%Token %105)
  %107 = load %nyx_string*, %nyx_string** %18
  %108 = call i1 @nyx_string_equals(%nyx_string* %106, %nyx_string* %107)
  br i1 %108, label %then13, label %else14
then13:
  %109 = load %Token, %Token* %104
  %110 = call %nyx_string* @get_token_value(%Token %109)
  %111 = alloca %nyx_string*
  store %nyx_string* %110, %nyx_string** %111
  %112 = load %Token, %Token* %104
  %113 = call i64 @get_token_col(%Token %112)
  %114 = alloca i64
  store i64 %113, i64* %114
  %115 = load %nyx_string*, %nyx_string** %21
  %116 = load %nyx_string*, %nyx_string** %111
  %117 = call %nyx_string* @nyx_string_concat(%nyx_string* %115, %nyx_string* %116)
  %118 = load %nyx_string*, %nyx_string** %24
  %119 = call %nyx_string* @nyx_string_concat(%nyx_string* %117, %nyx_string* %118)
  %120 = load i64, i64* %82
  %121 = call %nyx_string* @nyx_string_from_int(i64 %120)
  %122 = call %nyx_string* @nyx_string_concat(%nyx_string* %119, %nyx_string* %121)
  %123 = load %nyx_string*, %nyx_string** %24
  %124 = call %nyx_string* @nyx_string_concat(%nyx_string* %122, %nyx_string* %123)
  %125 = load i64, i64* %114
  %126 = call %nyx_string* @nyx_string_from_int(i64 %125)
  %127 = call %nyx_string* @nyx_string_concat(%nyx_string* %124, %nyx_string* %126)
  %128 = call i8* @nyx_string_to_cstr(%nyx_string* %127)
  call void @nyx_print_string(i8* %128)
  br label %merge15
else14:
  br label %merge15
merge15:
  br label %merge12
else11:
  br label %merge12
merge12:
  %129 = alloca i1
  store i1 false, i1* %129
  %130 = load %nyx_string*, %nyx_string** %79
  %131 = load %nyx_string*, %nyx_string** %27
  %132 = call i1 @nyx_string_equals(%nyx_string* %130, %nyx_string* %131)
  br i1 %132, label %sc_and_rhs16, label %sc_and_end17
sc_and_rhs16:
  %133 = load i64, i64* %9
  %134 = add i64 %133, 1
  %135 = load i64, i64* %12
  %136 = icmp slt i64 %134, %135
  store i1 %136, i1* %129
  br label %sc_and_end17
sc_and_end17:
  %137 = load i1, i1* %129
  br i1 %137, label %then18, label %else19
then18:
  %138 = load { i64, i8* }*, { i64, i8* }** %tokens.ptr
  %139 = load i64, i64* %9
  %140 = add i64 %139, 1
  %141 = call i64 @nyx_array_get({ i64, i8* }* %138, i64 %140)
  %142 = inttoptr i64 %141 to %Token*
  %143 = load %Token, %Token* %142
  %144 = alloca %Token
  store %Token %143, %Token* %144
  %145 = load %Token, %Token* %144
  %146 = call %nyx_string* @get_token_type(%Token %145)
  %147 = load %nyx_string*, %nyx_string** %18
  %148 = call i1 @nyx_string_equals(%nyx_string* %146, %nyx_string* %147)
  br i1 %148, label %then21, label %else22
then21:
  %149 = load %Token, %Token* %144
  %150 = call %nyx_string* @get_token_value(%Token %149)
  %151 = alloca %nyx_string*
  store %nyx_string* %150, %nyx_string** %151
  %152 = load %Token, %Token* %144
  %153 = call i64 @get_token_col(%Token %152)
  %154 = alloca i64
  store i64 %153, i64* %154
  %155 = load %nyx_string*, %nyx_string** %30
  %156 = load %nyx_string*, %nyx_string** %151
  %157 = call %nyx_string* @nyx_string_concat(%nyx_string* %155, %nyx_string* %156)
  %158 = load %nyx_string*, %nyx_string** %24
  %159 = call %nyx_string* @nyx_string_concat(%nyx_string* %157, %nyx_string* %158)
  %160 = load i64, i64* %82
  %161 = call %nyx_string* @nyx_string_from_int(i64 %160)
  %162 = call %nyx_string* @nyx_string_concat(%nyx_string* %159, %nyx_string* %161)
  %163 = load %nyx_string*, %nyx_string** %24
  %164 = call %nyx_string* @nyx_string_concat(%nyx_string* %162, %nyx_string* %163)
  %165 = load i64, i64* %154
  %166 = call %nyx_string* @nyx_string_from_int(i64 %165)
  %167 = call %nyx_string* @nyx_string_concat(%nyx_string* %164, %nyx_string* %166)
  %168 = call i8* @nyx_string_to_cstr(%nyx_string* %167)
  call void @nyx_print_string(i8* %168)
  br label %merge23
else22:
  br label %merge23
merge23:
  br label %merge20
else19:
  br label %merge20
merge20:
  %169 = alloca i1
  store i1 false, i1* %169
  %170 = load %nyx_string*, %nyx_string** %79
  %171 = load %nyx_string*, %nyx_string** %33
  %172 = call i1 @nyx_string_equals(%nyx_string* %170, %nyx_string* %171)
  br i1 %172, label %sc_and_rhs24, label %sc_and_end25
sc_and_rhs24:
  %173 = load i64, i64* %9
  %174 = add i64 %173, 1
  %175 = load i64, i64* %12
  %176 = icmp slt i64 %174, %175
  store i1 %176, i1* %169
  br label %sc_and_end25
sc_and_end25:
  %177 = load i1, i1* %169
  br i1 %177, label %then26, label %else27
then26:
  %178 = load { i64, i8* }*, { i64, i8* }** %tokens.ptr
  %179 = load i64, i64* %9
  %180 = add i64 %179, 1
  %181 = call i64 @nyx_array_get({ i64, i8* }* %178, i64 %180)
  %182 = inttoptr i64 %181 to %Token*
  %183 = load %Token, %Token* %182
  %184 = alloca %Token
  store %Token %183, %Token* %184
  %185 = load %Token, %Token* %184
  %186 = call %nyx_string* @get_token_type(%Token %185)
  %187 = load %nyx_string*, %nyx_string** %18
  %188 = call i1 @nyx_string_equals(%nyx_string* %186, %nyx_string* %187)
  br i1 %188, label %then29, label %else30
then29:
  %189 = load %Token, %Token* %184
  %190 = call %nyx_string* @get_token_value(%Token %189)
  %191 = alloca %nyx_string*
  store %nyx_string* %190, %nyx_string** %191
  %192 = load %Token, %Token* %184
  %193 = call i64 @get_token_col(%Token %192)
  %194 = alloca i64
  store i64 %193, i64* %194
  %195 = load %nyx_string*, %nyx_string** %36
  %196 = load %nyx_string*, %nyx_string** %191
  %197 = call %nyx_string* @nyx_string_concat(%nyx_string* %195, %nyx_string* %196)
  %198 = load %nyx_string*, %nyx_string** %24
  %199 = call %nyx_string* @nyx_string_concat(%nyx_string* %197, %nyx_string* %198)
  %200 = load i64, i64* %82
  %201 = call %nyx_string* @nyx_string_from_int(i64 %200)
  %202 = call %nyx_string* @nyx_string_concat(%nyx_string* %199, %nyx_string* %201)
  %203 = load %nyx_string*, %nyx_string** %24
  %204 = call %nyx_string* @nyx_string_concat(%nyx_string* %202, %nyx_string* %203)
  %205 = load i64, i64* %194
  %206 = call %nyx_string* @nyx_string_from_int(i64 %205)
  %207 = call %nyx_string* @nyx_string_concat(%nyx_string* %204, %nyx_string* %206)
  %208 = call i8* @nyx_string_to_cstr(%nyx_string* %207)
  call void @nyx_print_string(i8* %208)
  br label %merge31
else30:
  br label %merge31
merge31:
  br label %merge28
else27:
  br label %merge28
merge28:
  %209 = alloca i1
  store i1 false, i1* %209
  %210 = load %nyx_string*, %nyx_string** %79
  %211 = load %nyx_string*, %nyx_string** %39
  %212 = call i1 @nyx_string_equals(%nyx_string* %210, %nyx_string* %211)
  br i1 %212, label %sc_and_rhs32, label %sc_and_end33
sc_and_rhs32:
  %213 = load i64, i64* %9
  %214 = add i64 %213, 1
  %215 = load i64, i64* %12
  %216 = icmp slt i64 %214, %215
  store i1 %216, i1* %209
  br label %sc_and_end33
sc_and_end33:
  %217 = load i1, i1* %209
  br i1 %217, label %then34, label %else35
then34:
  %218 = load { i64, i8* }*, { i64, i8* }** %tokens.ptr
  %219 = load i64, i64* %9
  %220 = add i64 %219, 1
  %221 = call i64 @nyx_array_get({ i64, i8* }* %218, i64 %220)
  %222 = inttoptr i64 %221 to %Token*
  %223 = load %Token, %Token* %222
  %224 = alloca %Token
  store %Token %223, %Token* %224
  %225 = load %Token, %Token* %224
  %226 = call %nyx_string* @get_token_type(%Token %225)
  %227 = load %nyx_string*, %nyx_string** %18
  %228 = call i1 @nyx_string_equals(%nyx_string* %226, %nyx_string* %227)
  br i1 %228, label %then37, label %else38
then37:
  %229 = load %Token, %Token* %224
  %230 = call %nyx_string* @get_token_value(%Token %229)
  %231 = alloca %nyx_string*
  store %nyx_string* %230, %nyx_string** %231
  %232 = load %Token, %Token* %224
  %233 = call i64 @get_token_col(%Token %232)
  %234 = alloca i64
  store i64 %233, i64* %234
  %235 = load %nyx_string*, %nyx_string** %42
  %236 = load %nyx_string*, %nyx_string** %231
  %237 = call %nyx_string* @nyx_string_concat(%nyx_string* %235, %nyx_string* %236)
  %238 = load %nyx_string*, %nyx_string** %24
  %239 = call %nyx_string* @nyx_string_concat(%nyx_string* %237, %nyx_string* %238)
  %240 = load i64, i64* %82
  %241 = call %nyx_string* @nyx_string_from_int(i64 %240)
  %242 = call %nyx_string* @nyx_string_concat(%nyx_string* %239, %nyx_string* %241)
  %243 = load %nyx_string*, %nyx_string** %24
  %244 = call %nyx_string* @nyx_string_concat(%nyx_string* %242, %nyx_string* %243)
  %245 = load i64, i64* %234
  %246 = call %nyx_string* @nyx_string_from_int(i64 %245)
  %247 = call %nyx_string* @nyx_string_concat(%nyx_string* %244, %nyx_string* %246)
  %248 = call i8* @nyx_string_to_cstr(%nyx_string* %247)
  call void @nyx_print_string(i8* %248)
  br label %merge39
else38:
  br label %merge39
merge39:
  br label %merge36
else35:
  br label %merge36
merge36:
  %249 = alloca i1
  store i1 false, i1* %249
  %250 = alloca i1
  store i1 true, i1* %250
  %251 = load %nyx_string*, %nyx_string** %79
  %252 = load %nyx_string*, %nyx_string** %45
  %253 = call i1 @nyx_string_equals(%nyx_string* %251, %nyx_string* %252)
  br i1 %253, label %sc_or_end41, label %sc_or_rhs40
sc_or_rhs40:
  %254 = load %nyx_string*, %nyx_string** %79
  %255 = load %nyx_string*, %nyx_string** %48
  %256 = call i1 @nyx_string_equals(%nyx_string* %254, %nyx_string* %255)
  store i1 %256, i1* %250
  br label %sc_or_end41
sc_or_end41:
  %257 = load i1, i1* %250
  br i1 %257, label %sc_and_rhs42, label %sc_and_end43
sc_and_rhs42:
  %258 = load i64, i64* %9
  %259 = add i64 %258, 1
  %260 = load i64, i64* %12
  %261 = icmp slt i64 %259, %260
  store i1 %261, i1* %249
  br label %sc_and_end43
sc_and_end43:
  %262 = load i1, i1* %249
  br i1 %262, label %then44, label %else45
then44:
  %263 = load { i64, i8* }*, { i64, i8* }** %tokens.ptr
  %264 = load i64, i64* %9
  %265 = add i64 %264, 1
  %266 = call i64 @nyx_array_get({ i64, i8* }* %263, i64 %265)
  %267 = inttoptr i64 %266 to %Token*
  %268 = load %Token, %Token* %267
  %269 = alloca %Token
  store %Token %268, %Token* %269
  %270 = load %Token, %Token* %269
  %271 = call %nyx_string* @get_token_type(%Token %270)
  %272 = load %nyx_string*, %nyx_string** %18
  %273 = call i1 @nyx_string_equals(%nyx_string* %271, %nyx_string* %272)
  br i1 %273, label %then47, label %else48
then47:
  %274 = load %Token, %Token* %269
  %275 = call %nyx_string* @get_token_value(%Token %274)
  %276 = alloca %nyx_string*
  store %nyx_string* %275, %nyx_string** %276
  %277 = load %Token, %Token* %269
  %278 = call i64 @get_token_col(%Token %277)
  %279 = alloca i64
  store i64 %278, i64* %279
  %280 = load %nyx_string*, %nyx_string** %51
  %281 = alloca %nyx_string*
  store %nyx_string* %280, %nyx_string** %281
  %282 = load %nyx_string*, %nyx_string** %79
  %283 = load %nyx_string*, %nyx_string** %48
  %284 = call i1 @nyx_string_equals(%nyx_string* %282, %nyx_string* %283)
  br i1 %284, label %then50, label %else51
then50:
  %285 = load %nyx_string*, %nyx_string** %54
  store %nyx_string* %285, %nyx_string** %281
  br label %merge52
else51:
  br label %merge52
merge52:
  %286 = load %nyx_string*, %nyx_string** %57
  %287 = load %nyx_string*, %nyx_string** %281
  %288 = call %nyx_string* @nyx_string_concat(%nyx_string* %286, %nyx_string* %287)
  %289 = load %nyx_string*, %nyx_string** %24
  %290 = call %nyx_string* @nyx_string_concat(%nyx_string* %288, %nyx_string* %289)
  %291 = load %nyx_string*, %nyx_string** %276
  %292 = call %nyx_string* @nyx_string_concat(%nyx_string* %290, %nyx_string* %291)
  %293 = load %nyx_string*, %nyx_string** %24
  %294 = call %nyx_string* @nyx_string_concat(%nyx_string* %292, %nyx_string* %293)
  %295 = load i64, i64* %82
  %296 = call %nyx_string* @nyx_string_from_int(i64 %295)
  %297 = call %nyx_string* @nyx_string_concat(%nyx_string* %294, %nyx_string* %296)
  %298 = load %nyx_string*, %nyx_string** %24
  %299 = call %nyx_string* @nyx_string_concat(%nyx_string* %297, %nyx_string* %298)
  %300 = load i64, i64* %279
  %301 = call %nyx_string* @nyx_string_from_int(i64 %300)
  %302 = call %nyx_string* @nyx_string_concat(%nyx_string* %299, %nyx_string* %301)
  %303 = call i8* @nyx_string_to_cstr(%nyx_string* %302)
  call void @nyx_print_string(i8* %303)
  br label %merge49
else48:
  br label %merge49
merge49:
  br label %merge46
else45:
  br label %merge46
merge46:
  %304 = alloca i1
  store i1 false, i1* %304
  %305 = load %nyx_string*, %nyx_string** %79
  %306 = load %nyx_string*, %nyx_string** %60
  %307 = call i1 @nyx_string_equals(%nyx_string* %305, %nyx_string* %306)
  br i1 %307, label %sc_and_rhs53, label %sc_and_end54
sc_and_rhs53:
  %308 = load i64, i64* %9
  %309 = add i64 %308, 1
  %310 = load i64, i64* %12
  %311 = icmp slt i64 %309, %310
  store i1 %311, i1* %304
  br label %sc_and_end54
sc_and_end54:
  %312 = load i1, i1* %304
  br i1 %312, label %then55, label %else56
then55:
  %313 = load { i64, i8* }*, { i64, i8* }** %tokens.ptr
  %314 = load i64, i64* %9
  %315 = add i64 %314, 1
  %316 = call i64 @nyx_array_get({ i64, i8* }* %313, i64 %315)
  %317 = inttoptr i64 %316 to %Token*
  %318 = load %Token, %Token* %317
  %319 = alloca %Token
  store %Token %318, %Token* %319
  %320 = load %Token, %Token* %319
  %321 = call %nyx_string* @get_token_type(%Token %320)
  %322 = load %nyx_string*, %nyx_string** %63
  %323 = call i1 @nyx_string_equals(%nyx_string* %321, %nyx_string* %322)
  br i1 %323, label %then58, label %else59
then58:
  %324 = load %Token, %Token* %319
  %325 = call %nyx_string* @get_token_value(%Token %324)
  %326 = alloca %nyx_string*
  store %nyx_string* %325, %nyx_string** %326
  %327 = load %Token, %Token* %319
  %328 = call i64 @get_token_col(%Token %327)
  %329 = alloca i64
  store i64 %328, i64* %329
  %330 = load %nyx_string*, %nyx_string** %66
  %331 = load %nyx_string*, %nyx_string** %326
  %332 = call %nyx_string* @nyx_string_concat(%nyx_string* %330, %nyx_string* %331)
  %333 = load %nyx_string*, %nyx_string** %24
  %334 = call %nyx_string* @nyx_string_concat(%nyx_string* %332, %nyx_string* %333)
  %335 = load i64, i64* %82
  %336 = call %nyx_string* @nyx_string_from_int(i64 %335)
  %337 = call %nyx_string* @nyx_string_concat(%nyx_string* %334, %nyx_string* %336)
  %338 = load %nyx_string*, %nyx_string** %24
  %339 = call %nyx_string* @nyx_string_concat(%nyx_string* %337, %nyx_string* %338)
  %340 = load i64, i64* %329
  %341 = call %nyx_string* @nyx_string_from_int(i64 %340)
  %342 = call %nyx_string* @nyx_string_concat(%nyx_string* %339, %nyx_string* %341)
  %343 = call i8* @nyx_string_to_cstr(%nyx_string* %342)
  call void @nyx_print_string(i8* %343)
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
  %344 = load i64, i64* %9
  %345 = add i64 %344, 1
  store i64 %345, i64* %9
  br label %while_cond0
while_end2:
  ret i64 0
}

define i64 @main(
i32 %argc, i8** %argv) {
  call void @nyx_set_args(i32 %argc, i8** %argv)
  %346 = getelementptr [8 x i8], [8 x i8]* @.str18, i32 0, i32 0
  %347 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str18.c, i8* %346, i64 7)
  %348 = call i8* @nyx_string_to_cstr(%nyx_string* %347)
  %349 = call %nyx_string* @nyx_getenv(i8* %348)
  %350 = alloca %nyx_string*
  store %nyx_string* %349, %nyx_string** %350
  %351 = load %nyx_string*, %nyx_string** %350
  %352 = getelementptr [1 x i8], [1 x i8]* @.str19, i32 0, i32 0
  %353 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str19.c, i8* %352, i64 0)
  %354 = call i1 @nyx_string_equals(%nyx_string* %351, %nyx_string* %353)
  br i1 %354, label %then61, label %else62
then61:
  %355 = getelementptr [10 x i8], [10 x i8]* @.str20, i32 0, i32 0
  %356 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str20.c, i8* %355, i64 9)
  store %nyx_string* %356, %nyx_string** %350
  br label %merge63
else62:
  br label %merge63
merge63:
  %357 = load %nyx_string*, %nyx_string** %350
  %358 = call i8* @nyx_string_to_cstr(%nyx_string* %357)
  %359 = call %nyx_string* @nyx_read_file(i8* %358)
  %360 = alloca %nyx_string*
  store %nyx_string* %359, %nyx_string** %360
  call void @set_resolve_soft_errors(i1 1)
  %361 = load %nyx_string*, %nyx_string** %360
  %362 = call %nyx_string* @resolve_source(%nyx_string* %361)
  %363 = alloca %nyx_string*
  store %nyx_string* %362, %nyx_string** %363
  %364 = call i64 @get_resolve_error_count()
  %365 = icmp sgt i64 %364, 0
  br i1 %365, label %then64, label %else65
then64:
  %366 = getelementptr [38 x i8], [38 x i8]* @.str21, i32 0, i32 0
  %367 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str21.c, i8* %366, i64 37)
  %368 = call i64 @get_resolve_error_count()
  %369 = call %nyx_string* @nyx_string_from_int(i64 %368)
  %370 = call %nyx_string* @nyx_string_concat(%nyx_string* %367, %nyx_string* %369)
  %371 = getelementptr [38 x i8], [38 x i8]* @.str22, i32 0, i32 0
  %372 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str22.c, i8* %371, i64 37)
  %373 = call %nyx_string* @nyx_string_concat(%nyx_string* %370, %nyx_string* %372)
  %374 = call i8* @nyx_string_to_cstr(%nyx_string* %373)
  call void @nyx_print_string(i8* %374)
  %375 = getelementptr [4 x i8], [4 x i8]* @.str23, i32 0, i32 0
  %376 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str23.c, i8* %375, i64 3)
  %377 = call i8* @nyx_string_to_cstr(%nyx_string* %376)
  call void @nyx_print_string(i8* %377)
  ret i64 1
else65:
  br label %merge66
merge66:
  %378 = call { i64, i8* }* @nyx_array_new_ptr()
  %379 = alloca { i64, i8* }*
  store { i64, i8* }* %378, { i64, i8* }** %379
  %380 = load %nyx_string*, %nyx_string** %363
  %381 = load { i64, i8* }*, { i64, i8* }** %379
  %382 = call { i64, i8* }* @tokenize_con_avisos(%nyx_string* %380, { i64, i8* }* %381)
  %383 = alloca { i64, i8* }*
  store { i64, i8* }* %382, { i64, i8* }** %383
  %384 = load { i64, i8* }*, { i64, i8* }** %383
  %385 = load %nyx_string*, %nyx_string** %363
  %386 = call { i64, i8* }* @parse({ i64, i8* }* %384, %nyx_string* %385)
  %387 = alloca { i64, i8* }*
  store { i64, i8* }* %386, { i64, i8* }** %387
  %388 = call i64 @get_parse_error_count()
  %389 = alloca i64
  store i64 %388, i64* %389
  %390 = load i64, i64* %389
  %391 = icmp sgt i64 %390, 0
  br i1 %391, label %then67, label %else68
then67:
  %392 = getelementptr [34 x i8], [34 x i8]* @.str24, i32 0, i32 0
  %393 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str24.c, i8* %392, i64 33)
  %394 = load i64, i64* %389
  %395 = call %nyx_string* @nyx_string_from_int(i64 %394)
  %396 = call %nyx_string* @nyx_string_concat(%nyx_string* %393, %nyx_string* %395)
  %397 = getelementptr [10 x i8], [10 x i8]* @.str25, i32 0, i32 0
  %398 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str25.c, i8* %397, i64 9)
  %399 = call %nyx_string* @nyx_string_concat(%nyx_string* %396, %nyx_string* %398)
  %400 = call i8* @nyx_string_to_cstr(%nyx_string* %399)
  call void @nyx_print_string(i8* %400)
  %401 = getelementptr [4 x i8], [4 x i8]* @.str26, i32 0, i32 0
  %402 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str26.c, i8* %401, i64 3)
  %403 = call i8* @nyx_string_to_cstr(%nyx_string* %402)
  call void @nyx_print_string(i8* %403)
  ret i64 1
else68:
  br label %merge69
merge69:
  %404 = alloca i64
  store i64 0, i64* %404
  %405 = call i8* @llvm.stacksave()
  br label %while_cond70
while_cond70:
  %406 = load i64, i64* %404
  %407 = load { i64, i8* }*, { i64, i8* }** %379
  %408 = call i64 @nyx_array_length({ i64, i8* }* %407)
  %409 = icmp slt i64 %406, %408
  br i1 %409, label %while_body71, label %while_end72
while_body71:
  call void @llvm.stackrestore(i8* %405)
  %410 = load { i64, i8* }*, { i64, i8* }** %379
  %411 = load i64, i64* %404
  %412 = call i64 @nyx_array_get({ i64, i8* }* %410, i64 %411)
  %413 = inttoptr i64 %412 to { i64, i8* }*
  %414 = alloca { i64, i8* }*
  store { i64, i8* }* %413, { i64, i8* }** %414
  %415 = load { i64, i8* }*, { i64, i8* }** %414
  %416 = call i64 @nyx_slot_as_int_checked({ i64, i8* }* %415, i64 0)
  %417 = alloca i64
  store i64 %416, i64* %417
  %418 = load { i64, i8* }*, { i64, i8* }** %414
  %419 = call i64 @nyx_slot_as_int_checked({ i64, i8* }* %418, i64 1)
  %420 = alloca i64
  store i64 %419, i64* %420
  %421 = load { i64, i8* }*, { i64, i8* }** %414
  %422 = call i64 @nyx_array_get_checked({ i64, i8* }* %421, i64 2, i64 2)
  %423 = inttoptr i64 %422 to %nyx_string*
  %424 = alloca %nyx_string*
  store %nyx_string* %423, %nyx_string** %424
  %425 = load i64, i64* %417
  %426 = load i64, i64* %420
  %427 = load %nyx_string*, %nyx_string** %424
  %428 = call i64 @sem_aviso_escape(i64 %425, i64 %426, %nyx_string* %427)
  %429 = load i64, i64* %404
  %430 = add i64 %429, 1
  store i64 %430, i64* %404
  br label %while_cond70
while_end72:
  %431 = load { i64, i8* }*, { i64, i8* }** %387
  %432 = call i64 @nyx_array_get({ i64, i8* }* %431, i64 0)
  %433 = inttoptr i64 %432 to %nyx_string*
  %434 = call i64 @nyx_array_get({ i64, i8* }* %431, i64 1)
  %435 = inttoptr i64 %434 to { i64, i8* }*
  %436 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %431, i64 2)
  %437 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %431, i64 3)
  %438 = insertvalue %ASTNode undef, %nyx_string* %433, 0
  %439 = insertvalue %ASTNode %438, { i64, i8* }* %435, 1
  %440 = insertvalue %ASTNode %439, i64 %436, 2
  %441 = insertvalue %ASTNode %440, i64 %437, 3
  %442 = call i1 @analyze(%ASTNode %441)
  %443 = alloca i1
  store i1 %442, i1* %443
  %444 = alloca i1
  store i1 0, i1* %444
  %445 = load i1, i1* %443
  %446 = xor i1 %445, true
  br i1 %446, label %then73, label %else74
then73:
  store i1 1, i1* %444
  %447 = call { i64, i8* }* @get_errors()
  %448 = alloca { i64, i8* }*
  store { i64, i8* }* %447, { i64, i8* }** %448
  %449 = alloca i64
  store i64 0, i64* %449
  %450 = getelementptr [12 x i8], [12 x i8]* @.str27, i32 0, i32 0
  %451 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str27.c, i8* %450, i64 11)
  %452 = alloca %nyx_string*
  store %nyx_string* %451, %nyx_string** %452
  %453 = getelementptr [2 x i8], [2 x i8]* @.str28, i32 0, i32 0
  %454 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str28.c, i8* %453, i64 1)
  %455 = alloca %nyx_string*
  store %nyx_string* %454, %nyx_string** %455
  %456 = getelementptr [16 x i8], [16 x i8]* @.str29, i32 0, i32 0
  %457 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str29.c, i8* %456, i64 15)
  %458 = alloca %nyx_string*
  store %nyx_string* %457, %nyx_string** %458
  %459 = call i8* @llvm.stacksave()
  br label %while_cond76
while_cond76:
  %460 = load i64, i64* %449
  %461 = load { i64, i8* }*, { i64, i8* }** %448
  %462 = call i64 @nyx_array_length({ i64, i8* }* %461)
  %463 = icmp slt i64 %460, %462
  br i1 %463, label %while_body77, label %while_end78
while_body77:
  call void @llvm.stackrestore(i8* %459)
  %464 = load { i64, i8* }*, { i64, i8* }** %448
  %465 = load i64, i64* %449
  %466 = call i64 @nyx_array_get_checked({ i64, i8* }* %464, i64 %465, i64 2)
  %467 = inttoptr i64 %466 to %nyx_string*
  %468 = alloca %nyx_string*
  store %nyx_string* %467, %nyx_string** %468
  %469 = sub i64 0, 1
  %470 = alloca i64
  store i64 %469, i64* %470
  %471 = alloca i64
  store i64 0, i64* %471
  %472 = call i8* @llvm.stacksave()
  br label %while_cond79
while_cond79:
  %473 = load i64, i64* %471
  %474 = load %nyx_string*, %nyx_string** %468
  %475 = call i64 @nyx_string_byte_length(%nyx_string* %474)
  %476 = icmp slt i64 %473, %475
  br i1 %476, label %while_body80, label %while_end81
while_body80:
  call void @llvm.stackrestore(i8* %472)
  %477 = load %nyx_string*, %nyx_string** %468
  %478 = load i64, i64* %471
  %479 = call i8 @nyx_string_char_at(%nyx_string* %477, i64 %478)
  %480 = zext i8 %479 to i64
  %481 = trunc i64 %480 to i8
  %482 = alloca i8
  store i8 %481, i8* %482
  %483 = load i8, i8* %482
  %484 = getelementptr [1 x i8], [1 x i8]* @.str30, i32 0, i32 0
  %485 = load i8, i8* %484
  %486 = zext i8 %485 to i64
  %487 = zext i8 %483 to i64
  %488 = icmp eq i64 %487, %486
  br i1 %488, label %then82, label %else83
then82:
  %489 = load i64, i64* %470
  %490 = sub i64 0, 1
  %491 = icmp eq i64 %489, %490
  br i1 %491, label %then85, label %else86
then85:
  %492 = load i64, i64* %471
  store i64 %492, i64* %470
  br label %merge87
else86:
  br label %merge87
merge87:
  %493 = load %nyx_string*, %nyx_string** %468
  %494 = call i64 @nyx_string_byte_length(%nyx_string* %493)
  store i64 %494, i64* %471
  br label %merge84
else83:
  br label %merge84
merge84:
  %495 = load i64, i64* %471
  %496 = add i64 %495, 1
  store i64 %496, i64* %471
  br label %while_cond79
while_end81:
  %497 = load i64, i64* %470
  %498 = icmp sgt i64 %497, 0
  br i1 %498, label %then88, label %else89
then88:
  %499 = sub i64 0, 1
  %500 = alloca i64
  store i64 %499, i64* %500
  %501 = load i64, i64* %470
  %502 = add i64 %501, 1
  %503 = alloca i64
  store i64 %502, i64* %503
  %504 = call i8* @llvm.stacksave()
  br label %while_cond91
while_cond91:
  %505 = load i64, i64* %503
  %506 = load %nyx_string*, %nyx_string** %468
  %507 = call i64 @nyx_string_byte_length(%nyx_string* %506)
  %508 = icmp slt i64 %505, %507
  br i1 %508, label %while_body92, label %while_end93
while_body92:
  call void @llvm.stackrestore(i8* %504)
  %509 = load %nyx_string*, %nyx_string** %468
  %510 = load i64, i64* %503
  %511 = call i8 @nyx_string_char_at(%nyx_string* %509, i64 %510)
  %512 = zext i8 %511 to i64
  %513 = trunc i64 %512 to i8
  %514 = alloca i8
  store i8 %513, i8* %514
  %515 = load i8, i8* %514
  %516 = getelementptr [1 x i8], [1 x i8]* @.str31, i32 0, i32 0
  %517 = load i8, i8* %516
  %518 = zext i8 %517 to i64
  %519 = zext i8 %515 to i64
  %520 = icmp eq i64 %519, %518
  br i1 %520, label %then94, label %else95
then94:
  %521 = load i64, i64* %500
  %522 = sub i64 0, 1
  %523 = icmp eq i64 %521, %522
  br i1 %523, label %then97, label %else98
then97:
  %524 = load i64, i64* %503
  store i64 %524, i64* %500
  br label %merge99
else98:
  br label %merge99
merge99:
  %525 = load %nyx_string*, %nyx_string** %468
  %526 = call i64 @nyx_string_byte_length(%nyx_string* %525)
  store i64 %526, i64* %503
  br label %merge96
else95:
  br label %merge96
merge96:
  %527 = load i64, i64* %503
  %528 = add i64 %527, 1
  store i64 %528, i64* %503
  br label %while_cond91
while_end93:
  %529 = load i64, i64* %500
  %530 = load i64, i64* %470
  %531 = icmp sgt i64 %529, %530
  br i1 %531, label %then100, label %else101
then100:
  %532 = load %nyx_string*, %nyx_string** %468
  %533 = load i64, i64* %470
  %534 = call %nyx_string* @nyx_string_substring(%nyx_string* %532, i64 0, i64 %533)
  %535 = alloca %nyx_string*
  store %nyx_string* %534, %nyx_string** %535
  %536 = load %nyx_string*, %nyx_string** %468
  %537 = load i64, i64* %470
  %538 = add i64 %537, 1
  %539 = load i64, i64* %500
  %540 = call %nyx_string* @nyx_string_substring(%nyx_string* %536, i64 %538, i64 %539)
  %541 = alloca %nyx_string*
  store %nyx_string* %540, %nyx_string** %541
  %542 = load %nyx_string*, %nyx_string** %468
  %543 = load i64, i64* %500
  %544 = add i64 %543, 1
  %545 = load %nyx_string*, %nyx_string** %468
  %546 = call i64 @nyx_string_byte_length(%nyx_string* %545)
  %547 = call %nyx_string* @nyx_string_substring(%nyx_string* %542, i64 %544, i64 %546)
  %548 = alloca %nyx_string*
  store %nyx_string* %547, %nyx_string** %548
  %549 = load %nyx_string*, %nyx_string** %452
  %550 = load %nyx_string*, %nyx_string** %535
  %551 = call %nyx_string* @nyx_string_concat(%nyx_string* %549, %nyx_string* %550)
  %552 = load %nyx_string*, %nyx_string** %455
  %553 = call %nyx_string* @nyx_string_concat(%nyx_string* %551, %nyx_string* %552)
  %554 = load %nyx_string*, %nyx_string** %541
  %555 = call %nyx_string* @nyx_string_concat(%nyx_string* %553, %nyx_string* %554)
  %556 = load %nyx_string*, %nyx_string** %455
  %557 = call %nyx_string* @nyx_string_concat(%nyx_string* %555, %nyx_string* %556)
  %558 = load %nyx_string*, %nyx_string** %548
  %559 = call %nyx_string* @nyx_string_concat(%nyx_string* %557, %nyx_string* %558)
  %560 = call i8* @nyx_string_to_cstr(%nyx_string* %559)
  call void @nyx_print_string(i8* %560)
  br label %merge102
else101:
  %561 = load %nyx_string*, %nyx_string** %458
  %562 = load %nyx_string*, %nyx_string** %468
  %563 = call %nyx_string* @nyx_string_concat(%nyx_string* %561, %nyx_string* %562)
  %564 = call i8* @nyx_string_to_cstr(%nyx_string* %563)
  call void @nyx_print_string(i8* %564)
  br label %merge102
merge102:
  br label %merge90
else89:
  %565 = load %nyx_string*, %nyx_string** %458
  %566 = load %nyx_string*, %nyx_string** %468
  %567 = call %nyx_string* @nyx_string_concat(%nyx_string* %565, %nyx_string* %566)
  %568 = call i8* @nyx_string_to_cstr(%nyx_string* %567)
  call void @nyx_print_string(i8* %568)
  br label %merge90
merge90:
  %569 = load i64, i64* %449
  %570 = add i64 %569, 1
  store i64 %570, i64* %449
  br label %while_cond76
while_end78:
  br label %merge75
else74:
  br label %merge75
merge75:
  %571 = load %nyx_string*, %nyx_string** %360
  %572 = call { i64, i8* }* @tokenize(%nyx_string* %571)
  %573 = call i64 @scan_definitions({ i64, i8* }* %572)
  %574 = call { i64, i8* }* @get_sym_names()
  %575 = alloca { i64, i8* }*
  store { i64, i8* }* %574, { i64, i8* }** %575
  %576 = call { i64, i8* }* @get_sym_kinds()
  %577 = alloca { i64, i8* }*
  store { i64, i8* }* %576, { i64, i8* }** %577
  %578 = call i64 @get_sym_count()
  %579 = alloca i64
  store i64 %578, i64* %579
  %580 = alloca i64
  store i64 0, i64* %580
  %581 = getelementptr [5 x i8], [5 x i8]* @.str32, i32 0, i32 0
  %582 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str32.c, i8* %581, i64 4)
  %583 = alloca %nyx_string*
  store %nyx_string* %582, %nyx_string** %583
  %584 = getelementptr [2 x i8], [2 x i8]* @.str33, i32 0, i32 0
  %585 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str33.c, i8* %584, i64 1)
  %586 = alloca %nyx_string*
  store %nyx_string* %585, %nyx_string** %586
  %587 = call i8* @llvm.stacksave()
  br label %while_cond103
while_cond103:
  %588 = load i64, i64* %580
  %589 = load i64, i64* %579
  %590 = icmp slt i64 %588, %589
  br i1 %590, label %while_body104, label %while_end105
while_body104:
  call void @llvm.stackrestore(i8* %587)
  %591 = load { i64, i8* }*, { i64, i8* }** %575
  %592 = load i64, i64* %580
  %593 = call i64 @nyx_array_get_checked({ i64, i8* }* %591, i64 %592, i64 2)
  %594 = inttoptr i64 %593 to %nyx_string*
  %595 = alloca %nyx_string*
  store %nyx_string* %594, %nyx_string** %595
  %596 = load { i64, i8* }*, { i64, i8* }** %577
  %597 = load i64, i64* %580
  %598 = call i64 @nyx_array_get_checked({ i64, i8* }* %596, i64 %597, i64 2)
  %599 = inttoptr i64 %598 to %nyx_string*
  %600 = alloca %nyx_string*
  store %nyx_string* %599, %nyx_string** %600
  %601 = load %nyx_string*, %nyx_string** %583
  %602 = load %nyx_string*, %nyx_string** %600
  %603 = call %nyx_string* @nyx_string_concat(%nyx_string* %601, %nyx_string* %602)
  %604 = load %nyx_string*, %nyx_string** %586
  %605 = call %nyx_string* @nyx_string_concat(%nyx_string* %603, %nyx_string* %604)
  %606 = load %nyx_string*, %nyx_string** %595
  %607 = call %nyx_string* @nyx_string_concat(%nyx_string* %605, %nyx_string* %606)
  %608 = call i8* @nyx_string_to_cstr(%nyx_string* %607)
  call void @nyx_print_string(i8* %608)
  %609 = load i64, i64* %580
  %610 = add i64 %609, 1
  store i64 %610, i64* %580
  br label %while_cond103
while_end105:
  %611 = getelementptr [4 x i8], [4 x i8]* @.str34, i32 0, i32 0
  %612 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str34.c, i8* %611, i64 3)
  %613 = call i8* @nyx_string_to_cstr(%nyx_string* %612)
  call void @nyx_print_string(i8* %613)
  %614 = load i1, i1* %444
  br i1 %614, label %then106, label %else107
then106:
  ret i64 1
else107:
  br label %merge108
merge108:
  ret i64 0
}


attributes #0 = { returns_twice }

