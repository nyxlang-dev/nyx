source_filename = "/home/admin/nyx/lang/tests/compiler/ecosystem/test-166-macro-patterns.nx"
target triple = "x86_64-pc-linux-gnu"

@.str0 = private unnamed_addr constant [22 x i8] c"--- Assert Macros ---\00"
@.str0.c = internal global %nyx_string* null
@.str1 = private unnamed_addr constant [7 x i8] c"FAIL: \00"
@.str1.c = internal global %nyx_string* null
@.str2 = private unnamed_addr constant [9 x i8] c"10 == 10\00"
@.str2.c = internal global %nyx_string* null
@.str3 = private unnamed_addr constant [5 x i8] c"ok: \00"
@.str3.c = internal global %nyx_string* null
@.str4 = private unnamed_addr constant [9 x i8] c"10 == 10\00"
@.str4.c = internal global %nyx_string* null
@.str5 = private unnamed_addr constant [7 x i8] c"FAIL: \00"
@.str5.c = internal global %nyx_string* null
@.str6 = private unnamed_addr constant [7 x i8] c"1 != 2\00"
@.str6.c = internal global %nyx_string* null
@.str7 = private unnamed_addr constant [5 x i8] c"ok: \00"
@.str7.c = internal global %nyx_string* null
@.str8 = private unnamed_addr constant [7 x i8] c"1 != 2\00"
@.str8.c = internal global %nyx_string* null
@.str9 = private unnamed_addr constant [7 x i8] c"FAIL: \00"
@.str9.c = internal global %nyx_string* null
@.str10 = private unnamed_addr constant [9 x i8] c"1+1 == 2\00"
@.str10.c = internal global %nyx_string* null
@.str11 = private unnamed_addr constant [5 x i8] c"ok: \00"
@.str11.c = internal global %nyx_string* null
@.str12 = private unnamed_addr constant [9 x i8] c"1+1 == 2\00"
@.str12.c = internal global %nyx_string* null
@.str13 = private unnamed_addr constant [6 x i8] c"hello\00"
@.str13.c = internal global %nyx_string* null
@.str14 = private unnamed_addr constant [6 x i8] c"world\00"
@.str14.c = internal global %nyx_string* null
@.str15 = private unnamed_addr constant [7 x i8] c"FAIL: \00"
@.str15.c = internal global %nyx_string* null
@.str16 = private unnamed_addr constant [15 x i8] c"hello != world\00"
@.str16.c = internal global %nyx_string* null
@.str17 = private unnamed_addr constant [5 x i8] c"ok: \00"
@.str17.c = internal global %nyx_string* null
@.str18 = private unnamed_addr constant [15 x i8] c"hello != world\00"
@.str18.c = internal global %nyx_string* null
@.str19 = private unnamed_addr constant [25 x i8] c"FAIL: assert_true failed\00"
@.str19.c = internal global %nyx_string* null
@.str20 = private unnamed_addr constant [25 x i8] c"FAIL: assert_true failed\00"
@.str20.c = internal global %nyx_string* null
@.str21 = private unnamed_addr constant [21 x i8] c"--- Array Macros ---\00"
@.str21.c = internal global %nyx_string* null
@.str22 = private unnamed_addr constant [6 x i8] c"alpha\00"
@.str22.c = internal global %nyx_string* null
@.str23 = private unnamed_addr constant [5 x i8] c"beta\00"
@.str23.c = internal global %nyx_string* null
@.str24 = private unnamed_addr constant [6 x i8] c"gamma\00"
@.str24.c = internal global %nyx_string* null
@.str25 = private unnamed_addr constant [9 x i8] c"size: {}\00"
@.str25.c = internal global %nyx_string* null
@.str26 = private unnamed_addr constant [9 x i8] c"nums: {}\00"
@.str26.c = internal global %nyx_string* null
@.str27 = private unnamed_addr constant [23 x i8] c"--- Control Macros ---\00"
@.str27.c = internal global %nyx_string* null
@.str28 = private unnamed_addr constant [13 x i8] c"not done yet\00"
@.str28.c = internal global %nyx_string* null
@.str29 = private unnamed_addr constant [11 x i8] c"x is small\00"
@.str29.c = internal global %nyx_string* null
@.str30 = private unnamed_addr constant [7 x i8] c"hello!\00"
@.str30.c = internal global %nyx_string* null
@.str31 = private unnamed_addr constant [19 x i8] c"--- Log Macros ---\00"
@.str31.c = internal global %nyx_string* null
@.str32 = private unnamed_addr constant [8 x i8] c"[INFO] \00"
@.str32.c = internal global %nyx_string* null
@.str33 = private unnamed_addr constant [15 x i8] c"system started\00"
@.str33.c = internal global %nyx_string* null
@.str34 = private unnamed_addr constant [8 x i8] c"[WARN] \00"
@.str34.c = internal global %nyx_string* null
@.str35 = private unnamed_addr constant [18 x i8] c"memory usage high\00"
@.str35.c = internal global %nyx_string* null
@.str36 = private unnamed_addr constant [8 x i8] c"[INFO] \00"
@.str36.c = internal global %nyx_string* null
@.str37 = private unnamed_addr constant [20 x i8] c"processing complete\00"
@.str37.c = internal global %nyx_string* null
@.str38 = private unnamed_addr constant [23 x i8] c"--- Try Or Default ---\00"
@.str38.c = internal global %nyx_string* null
@.str39 = private unnamed_addr constant [11 x i8] c"result: {}\00"
@.str39.c = internal global %nyx_string* null
@.str40 = private unnamed_addr constant [7 x i8] c"r2: {}\00"
@.str40.c = internal global %nyx_string* null
@.str41 = private unnamed_addr constant [14 x i8] c"--- Timed ---\00"
@.str41.c = internal global %nyx_string* null
@.str42 = private unnamed_addr constant [9 x i8] c"timing: \00"
@.str42.c = internal global %nyx_string* null
@.str43 = private unnamed_addr constant [15 x i8] c"test operation\00"
@.str43.c = internal global %nyx_string* null
@.str44 = private unnamed_addr constant [11 x i8] c"elapsed ok\00"
@.str44.c = internal global %nyx_string* null
@.str45 = private unnamed_addr constant [20 x i8] c"macro patterns test\00"
@.str45.c = internal global %nyx_string* null
@.str46 = private unnamed_addr constant [18 x i8] c"macro patterns ok\00"
@.str46.c = internal global %nyx_string* null
@__nyx_test_failed = external global i64
@__nyx_test_mode = external global i64
; Nyx Compiler Bootstrap v3.0
; Generated from: /home/admin/nyx/lang/tests/compiler/ecosystem/test-166-macro-patterns.nx

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


define internal i64 @test_assert_macros(
) {
  %1 = getelementptr [22 x i8], [22 x i8]* @.str0, i32 0, i32 0
  %2 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str0.c, i8* %1)
  %3 = call i8* @nyx_string_to_cstr(%nyx_string* %2)
  call void @nyx_print_string(i8* %3)
  %4 = icmp ne i64 10, 10
  br i1 %4, label %then0, label %else1
then0:
  %5 = getelementptr [7 x i8], [7 x i8]* @.str1, i32 0, i32 0
  %6 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1.c, i8* %5)
  %7 = getelementptr [9 x i8], [9 x i8]* @.str2, i32 0, i32 0
  %8 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str2.c, i8* %7)
  %9 = call %nyx_string* @nyx_string_concat(%nyx_string* %6, %nyx_string* %8)
  %10 = call i8* @nyx_string_to_cstr(%nyx_string* %9)
  call void @nyx_print_string(i8* %10)
  br label %merge2
else1:
  %11 = getelementptr [5 x i8], [5 x i8]* @.str3, i32 0, i32 0
  %12 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str3.c, i8* %11)
  %13 = getelementptr [9 x i8], [9 x i8]* @.str4, i32 0, i32 0
  %14 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str4.c, i8* %13)
  %15 = call %nyx_string* @nyx_string_concat(%nyx_string* %12, %nyx_string* %14)
  %16 = call i8* @nyx_string_to_cstr(%nyx_string* %15)
  call void @nyx_print_string(i8* %16)
  br label %merge2
merge2:
  %17 = icmp eq i64 1, 2
  br i1 %17, label %then3, label %else4
then3:
  %18 = getelementptr [7 x i8], [7 x i8]* @.str5, i32 0, i32 0
  %19 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str5.c, i8* %18)
  %20 = getelementptr [7 x i8], [7 x i8]* @.str6, i32 0, i32 0
  %21 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str6.c, i8* %20)
  %22 = call %nyx_string* @nyx_string_concat(%nyx_string* %19, %nyx_string* %21)
  %23 = call i8* @nyx_string_to_cstr(%nyx_string* %22)
  call void @nyx_print_string(i8* %23)
  br label %merge5
else4:
  %24 = getelementptr [5 x i8], [5 x i8]* @.str7, i32 0, i32 0
  %25 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str7.c, i8* %24)
  %26 = getelementptr [7 x i8], [7 x i8]* @.str8, i32 0, i32 0
  %27 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str8.c, i8* %26)
  %28 = call %nyx_string* @nyx_string_concat(%nyx_string* %25, %nyx_string* %27)
  %29 = call i8* @nyx_string_to_cstr(%nyx_string* %28)
  call void @nyx_print_string(i8* %29)
  br label %merge5
merge5:
  %30 = add i64 1, 1
  %31 = icmp ne i64 %30, 2
  br i1 %31, label %then6, label %else7
then6:
  %32 = getelementptr [7 x i8], [7 x i8]* @.str9, i32 0, i32 0
  %33 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str9.c, i8* %32)
  %34 = getelementptr [9 x i8], [9 x i8]* @.str10, i32 0, i32 0
  %35 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str10.c, i8* %34)
  %36 = call %nyx_string* @nyx_string_concat(%nyx_string* %33, %nyx_string* %35)
  %37 = call i8* @nyx_string_to_cstr(%nyx_string* %36)
  call void @nyx_print_string(i8* %37)
  br label %merge8
else7:
  %38 = getelementptr [5 x i8], [5 x i8]* @.str11, i32 0, i32 0
  %39 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str11.c, i8* %38)
  %40 = getelementptr [9 x i8], [9 x i8]* @.str12, i32 0, i32 0
  %41 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str12.c, i8* %40)
  %42 = call %nyx_string* @nyx_string_concat(%nyx_string* %39, %nyx_string* %41)
  %43 = call i8* @nyx_string_to_cstr(%nyx_string* %42)
  call void @nyx_print_string(i8* %43)
  br label %merge8
merge8:
  %44 = getelementptr [6 x i8], [6 x i8]* @.str13, i32 0, i32 0
  %45 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str13.c, i8* %44)
  %46 = getelementptr [6 x i8], [6 x i8]* @.str14, i32 0, i32 0
  %47 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str14.c, i8* %46)
  %48 = call i1 @nyx_string_equals(%nyx_string* %45, %nyx_string* %47)
  br i1 %48, label %then9, label %else10
then9:
  %49 = getelementptr [7 x i8], [7 x i8]* @.str15, i32 0, i32 0
  %50 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str15.c, i8* %49)
  %51 = getelementptr [15 x i8], [15 x i8]* @.str16, i32 0, i32 0
  %52 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str16.c, i8* %51)
  %53 = call %nyx_string* @nyx_string_concat(%nyx_string* %50, %nyx_string* %52)
  %54 = call i8* @nyx_string_to_cstr(%nyx_string* %53)
  call void @nyx_print_string(i8* %54)
  br label %merge11
else10:
  %55 = getelementptr [5 x i8], [5 x i8]* @.str17, i32 0, i32 0
  %56 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str17.c, i8* %55)
  %57 = getelementptr [15 x i8], [15 x i8]* @.str18, i32 0, i32 0
  %58 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str18.c, i8* %57)
  %59 = call %nyx_string* @nyx_string_concat(%nyx_string* %56, %nyx_string* %58)
  %60 = call i8* @nyx_string_to_cstr(%nyx_string* %59)
  call void @nyx_print_string(i8* %60)
  br label %merge11
merge11:
  %61 = alloca i64
  store i64 42, i64* %61
  %62 = load i64, i64* %61
  %63 = icmp sgt i64 %62, 0
  %64 = xor i1 %63, true
  br i1 %64, label %then12, label %else13
then12:
  %65 = getelementptr [25 x i8], [25 x i8]* @.str19, i32 0, i32 0
  %66 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str19.c, i8* %65)
  %67 = call i8* @nyx_string_to_cstr(%nyx_string* %66)
  call void @nyx_print_string(i8* %67)
  br label %merge14
else13:
  br label %merge14
merge14:
  %68 = load i64, i64* %61
  %69 = icmp eq i64 %68, 42
  %70 = xor i1 %69, true
  br i1 %70, label %then15, label %else16
then15:
  %71 = getelementptr [25 x i8], [25 x i8]* @.str20, i32 0, i32 0
  %72 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str20.c, i8* %71)
  %73 = call i8* @nyx_string_to_cstr(%nyx_string* %72)
  call void @nyx_print_string(i8* %73)
  br label %merge17
else16:
  br label %merge17
merge17:
  ret i64 0
}

define internal i64 @test_array_macros(
) {
  %74 = getelementptr [21 x i8], [21 x i8]* @.str21, i32 0, i32 0
  %75 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str21.c, i8* %74)
  %76 = call i8* @nyx_string_to_cstr(%nyx_string* %75)
  call void @nyx_print_string(i8* %76)
  %77 = call { i64, i8* }* @nyx_array_new_ptr()
  %78 = alloca { i64, i8* }*
  store { i64, i8* }* %77, { i64, i8* }** %78
  %79 = load { i64, i8* }*, { i64, i8* }** %78
  %80 = getelementptr [6 x i8], [6 x i8]* @.str22, i32 0, i32 0
  %81 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str22.c, i8* %80)
  %82 = ptrtoint %nyx_string* %81 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %79, i64 %82, i64 2)
  %83 = load { i64, i8* }*, { i64, i8* }** %78
  %84 = getelementptr [5 x i8], [5 x i8]* @.str23, i32 0, i32 0
  %85 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str23.c, i8* %84)
  %86 = ptrtoint %nyx_string* %85 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %83, i64 %86, i64 2)
  %87 = load { i64, i8* }*, { i64, i8* }** %78
  %88 = getelementptr [6 x i8], [6 x i8]* @.str24, i32 0, i32 0
  %89 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str24.c, i8* %88)
  %90 = ptrtoint %nyx_string* %89 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %87, i64 %90, i64 2)
  %91 = getelementptr [9 x i8], [9 x i8]* @.str25, i32 0, i32 0
  %92 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str25.c, i8* %91)
  %93 = call { i64, i8* }* @nyx_array_new_ptr()
  %94 = load { i64, i8* }*, { i64, i8* }** %78
  %95 = call i64 @nyx_array_length({ i64, i8* }* %94)
  %96 = call %nyx_string* @nyx_string_from_int(i64 %95)
  %97 = bitcast %nyx_string* %96 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %93, i8* %97)
  %98 = call %nyx_string* @nyx_format(%nyx_string* %92, { i64, i8* }* %93)
  %99 = call i8* @nyx_string_to_cstr(%nyx_string* %98)
  call void @nyx_print_string(i8* %99)
  %100 = call { i64, i8* }* @nyx_array_new_ptr()
  %101 = alloca { i64, i8* }*
  store { i64, i8* }* %100, { i64, i8* }** %101
  %102 = alloca i64
  store i64 0, i64* %102
  %103 = call i8* @llvm.stacksave()
  br label %while_cond18
while_cond18:
  %104 = load i64, i64* %102
  %105 = icmp slt i64 %104, 5
  br i1 %105, label %while_body19, label %while_end20
while_body19:
  call void @llvm.stackrestore(i8* %103)
  %106 = load { i64, i8* }*, { i64, i8* }** %101
  %107 = load i64, i64* %102
  call void @nyx_array_push({ i64, i8* }* %106, i64 %107)
  %108 = load i64, i64* %102
  %109 = add i64 %108, 1
  store i64 %109, i64* %102
  br label %while_cond18
while_end20:
  %110 = getelementptr [9 x i8], [9 x i8]* @.str26, i32 0, i32 0
  %111 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str26.c, i8* %110)
  %112 = call { i64, i8* }* @nyx_array_new_ptr()
  %113 = load { i64, i8* }*, { i64, i8* }** %101
  %114 = call i64 @nyx_array_length({ i64, i8* }* %113)
  %115 = call %nyx_string* @nyx_string_from_int(i64 %114)
  %116 = bitcast %nyx_string* %115 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %112, i8* %116)
  %117 = call %nyx_string* @nyx_format(%nyx_string* %111, { i64, i8* }* %112)
  %118 = call i8* @nyx_string_to_cstr(%nyx_string* %117)
  call void @nyx_print_string(i8* %118)
  %119 = alloca i64
  store i64 0, i64* %119
  %120 = call i8* @llvm.stacksave()
  br label %while_cond21
while_cond21:
  %121 = load i64, i64* %119
  %122 = load { i64, i8* }*, { i64, i8* }** %101
  %123 = call i64 @nyx_array_length({ i64, i8* }* %122)
  %124 = icmp slt i64 %121, %123
  br i1 %124, label %while_body22, label %while_end23
while_body22:
  call void @llvm.stackrestore(i8* %120)
  %125 = load { i64, i8* }*, { i64, i8* }** %101
  %126 = load i64, i64* %119
  %127 = call i64 @nyx_array_get({ i64, i8* }* %125, i64 %126)
  %128 = alloca i64
  store i64 %127, i64* %128
  %129 = load i64, i64* %128
  call void @nyx_print_int(i64 %129)
  %130 = load i64, i64* %119
  %131 = add i64 %130, 1
  store i64 %131, i64* %119
  br label %while_cond21
while_end23:
  ret i64 0
}

define internal i64 @test_control_macros(
) {
  %132 = getelementptr [23 x i8], [23 x i8]* @.str27, i32 0, i32 0
  %133 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str27.c, i8* %132)
  %134 = call i8* @nyx_string_to_cstr(%nyx_string* %133)
  call void @nyx_print_string(i8* %134)
  %135 = alloca i1
  store i1 0, i1* %135
  %136 = load i1, i1* %135
  %137 = xor i1 %136, true
  br i1 %137, label %then24, label %else25
then24:
  %138 = getelementptr [13 x i8], [13 x i8]* @.str28, i32 0, i32 0
  %139 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str28.c, i8* %138)
  %140 = call i8* @nyx_string_to_cstr(%nyx_string* %139)
  call void @nyx_print_string(i8* %140)
  br label %merge26
else25:
  br label %merge26
merge26:
  %141 = alloca i64
  store i64 5, i64* %141
  %142 = load i64, i64* %141
  %143 = icmp sgt i64 %142, 10
  %144 = xor i1 %143, true
  br i1 %144, label %then27, label %else28
then27:
  %145 = getelementptr [11 x i8], [11 x i8]* @.str29, i32 0, i32 0
  %146 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str29.c, i8* %145)
  %147 = call i8* @nyx_string_to_cstr(%nyx_string* %146)
  call void @nyx_print_string(i8* %147)
  br label %merge29
else28:
  br label %merge29
merge29:
  %148 = alloca i64
  store i64 0, i64* %148
  %149 = getelementptr [7 x i8], [7 x i8]* @.str30, i32 0, i32 0
  %150 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str30.c, i8* %149)
  %151 = alloca %nyx_string*
  store %nyx_string* %150, %nyx_string** %151
  %152 = call i8* @llvm.stacksave()
  br label %while_cond30
while_cond30:
  %153 = load i64, i64* %148
  %154 = icmp slt i64 %153, 3
  br i1 %154, label %while_body31, label %while_end32
while_body31:
  call void @llvm.stackrestore(i8* %152)
  %155 = load %nyx_string*, %nyx_string** %151
  %156 = call i8* @nyx_string_to_cstr(%nyx_string* %155)
  call void @nyx_print_string(i8* %156)
  %157 = load i64, i64* %148
  %158 = add i64 %157, 1
  store i64 %158, i64* %148
  br label %while_cond30
while_end32:
  ret i64 0
}

define internal i64 @test_log_macros(
) {
  %159 = getelementptr [19 x i8], [19 x i8]* @.str31, i32 0, i32 0
  %160 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str31.c, i8* %159)
  %161 = call i8* @nyx_string_to_cstr(%nyx_string* %160)
  call void @nyx_print_string(i8* %161)
  %162 = getelementptr [8 x i8], [8 x i8]* @.str32, i32 0, i32 0
  %163 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str32.c, i8* %162)
  %164 = getelementptr [15 x i8], [15 x i8]* @.str33, i32 0, i32 0
  %165 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str33.c, i8* %164)
  %166 = call %nyx_string* @nyx_string_concat(%nyx_string* %163, %nyx_string* %165)
  %167 = call i8* @nyx_string_to_cstr(%nyx_string* %166)
  call void @nyx_print_string(i8* %167)
  %168 = getelementptr [8 x i8], [8 x i8]* @.str34, i32 0, i32 0
  %169 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str34.c, i8* %168)
  %170 = getelementptr [18 x i8], [18 x i8]* @.str35, i32 0, i32 0
  %171 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str35.c, i8* %170)
  %172 = call %nyx_string* @nyx_string_concat(%nyx_string* %169, %nyx_string* %171)
  %173 = call i8* @nyx_string_to_cstr(%nyx_string* %172)
  call void @nyx_print_string(i8* %173)
  %174 = getelementptr [8 x i8], [8 x i8]* @.str36, i32 0, i32 0
  %175 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str36.c, i8* %174)
  %176 = getelementptr [20 x i8], [20 x i8]* @.str37, i32 0, i32 0
  %177 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str37.c, i8* %176)
  %178 = call %nyx_string* @nyx_string_concat(%nyx_string* %175, %nyx_string* %177)
  %179 = call i8* @nyx_string_to_cstr(%nyx_string* %178)
  call void @nyx_print_string(i8* %179)
  ret i64 0
}

define internal i64 @test_try_macro(
) {
  %180 = getelementptr [23 x i8], [23 x i8]* @.str38, i32 0, i32 0
  %181 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str38.c, i8* %180)
  %182 = call i8* @nyx_string_to_cstr(%nyx_string* %181)
  call void @nyx_print_string(i8* %182)
  %183 = alloca i64
  store i64 0, i64* %183
  %184 = sub i64 0, 1
  store i64 %184, i64* %183
  %185 = load i64, i64* %183
  %186 = sub i64 0, 1
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %then33, label %else34
then33:
  store i64 42, i64* %183
  br label %merge35
else34:
  br label %merge35
merge35:
  %188 = getelementptr [11 x i8], [11 x i8]* @.str39, i32 0, i32 0
  %189 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str39.c, i8* %188)
  %190 = call { i64, i8* }* @nyx_array_new_ptr()
  %191 = load i64, i64* %183
  %192 = call %nyx_string* @nyx_string_from_int(i64 %191)
  %193 = bitcast %nyx_string* %192 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %190, i8* %193)
  %194 = call %nyx_string* @nyx_format(%nyx_string* %189, { i64, i8* }* %190)
  %195 = call i8* @nyx_string_to_cstr(%nyx_string* %194)
  call void @nyx_print_string(i8* %195)
  %196 = alloca i64
  store i64 0, i64* %196
  store i64 100, i64* %196
  %197 = load i64, i64* %196
  %198 = sub i64 0, 1
  %199 = icmp eq i64 %197, %198
  br i1 %199, label %then36, label %else37
then36:
  store i64 42, i64* %196
  br label %merge38
else37:
  br label %merge38
merge38:
  %200 = getelementptr [7 x i8], [7 x i8]* @.str40, i32 0, i32 0
  %201 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str40.c, i8* %200)
  %202 = call { i64, i8* }* @nyx_array_new_ptr()
  %203 = load i64, i64* %196
  %204 = call %nyx_string* @nyx_string_from_int(i64 %203)
  %205 = bitcast %nyx_string* %204 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %202, i8* %205)
  %206 = call %nyx_string* @nyx_format(%nyx_string* %201, { i64, i8* }* %202)
  %207 = call i8* @nyx_string_to_cstr(%nyx_string* %206)
  call void @nyx_print_string(i8* %207)
  ret i64 0
}

define internal i64 @test_timed_macro(
) {
  %208 = getelementptr [14 x i8], [14 x i8]* @.str41, i32 0, i32 0
  %209 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str41.c, i8* %208)
  %210 = call i8* @nyx_string_to_cstr(%nyx_string* %209)
  call void @nyx_print_string(i8* %210)
  %211 = call i64 @nyx_time_ms()
  %212 = alloca i64
  store i64 %211, i64* %212
  %213 = getelementptr [9 x i8], [9 x i8]* @.str42, i32 0, i32 0
  %214 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str42.c, i8* %213)
  %215 = getelementptr [15 x i8], [15 x i8]* @.str43, i32 0, i32 0
  %216 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str43.c, i8* %215)
  %217 = call %nyx_string* @nyx_string_concat(%nyx_string* %214, %nyx_string* %216)
  %218 = call i8* @nyx_string_to_cstr(%nyx_string* %217)
  call void @nyx_print_string(i8* %218)
  %219 = call i64 @nyx_time_ms()
  %220 = alloca i64
  store i64 %219, i64* %220
  %221 = load i64, i64* %220
  %222 = load i64, i64* %212
  %223 = sub i64 %221, %222
  %224 = alloca i64
  store i64 %223, i64* %224
  %225 = load i64, i64* %224
  %226 = icmp sge i64 %225, 0
  br i1 %226, label %then39, label %else40
then39:
  %227 = getelementptr [11 x i8], [11 x i8]* @.str44, i32 0, i32 0
  %228 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str44.c, i8* %227)
  %229 = call i8* @nyx_string_to_cstr(%nyx_string* %228)
  call void @nyx_print_string(i8* %229)
  br label %merge41
else40:
  br label %merge41
merge41:
  ret i64 0
}

define i64 @main(
i32 %argc, i8** %argv) {
  call void @nyx_set_args(i32 %argc, i8** %argv)
  %230 = getelementptr [20 x i8], [20 x i8]* @.str45, i32 0, i32 0
  %231 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str45.c, i8* %230)
  %232 = call i8* @nyx_string_to_cstr(%nyx_string* %231)
  call void @nyx_print_string(i8* %232)
  %233 = call i64 @test_assert_macros()
  %234 = call i64 @test_array_macros()
  %235 = call i64 @test_control_macros()
  %236 = call i64 @test_log_macros()
  %237 = call i64 @test_try_macro()
  %238 = call i64 @test_timed_macro()
  %239 = getelementptr [18 x i8], [18 x i8]* @.str46, i32 0, i32 0
  %240 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str46.c, i8* %239)
  %241 = call i8* @nyx_string_to_cstr(%nyx_string* %240)
  call void @nyx_print_string(i8* %241)
  ret i64 0
}


attributes #0 = { returns_twice }

