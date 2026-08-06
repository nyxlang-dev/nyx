source_filename = "/home/admin/nyx/lang/tests/compiler/stdlib-suite/test-101-defer.nx"
target triple = "x86_64-pc-linux-gnu"

@.str0 = private unnamed_addr constant [14 x i8] c"before return\00"
@.str0.c = internal global %nyx_string* null
@.str1 = private unnamed_addr constant [9 x i8] c"deferred\00"
@.str1.c = internal global %nyx_string* null
@.str2 = private unnamed_addr constant [5 x i8] c"body\00"
@.str2.c = internal global %nyx_string* null
@.str3 = private unnamed_addr constant [7 x i8] c"defer1\00"
@.str3.c = internal global %nyx_string* null
@.str4 = private unnamed_addr constant [7 x i8] c"defer2\00"
@.str4.c = internal global %nyx_string* null
@.str5 = private unnamed_addr constant [7 x i8] c"defer3\00"
@.str5.c = internal global %nyx_string* null
@.str6 = private unnamed_addr constant [14 x i8] c"implicit_body\00"
@.str6.c = internal global %nyx_string* null
@.str7 = private unnamed_addr constant [15 x i8] c"implicit_defer\00"
@.str7.c = internal global %nyx_string* null
@.str8 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str8.c = internal global %nyx_string* null
@.str9 = private unnamed_addr constant [14 x i8] c"before return\00"
@.str9.c = internal global %nyx_string* null
@.str10 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str10.c = internal global %nyx_string* null
@.str11 = private unnamed_addr constant [9 x i8] c"deferred\00"
@.str11.c = internal global %nyx_string* null
@.str12 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str12.c = internal global %nyx_string* null
@.str13 = private unnamed_addr constant [16 x i8] c"Basic defer: OK\00"
@.str13.c = internal global %nyx_string* null
@.str14 = private unnamed_addr constant [5 x i8] c"body\00"
@.str14.c = internal global %nyx_string* null
@.str15 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str15.c = internal global %nyx_string* null
@.str16 = private unnamed_addr constant [7 x i8] c"defer1\00"
@.str16.c = internal global %nyx_string* null
@.str17 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str17.c = internal global %nyx_string* null
@.str18 = private unnamed_addr constant [7 x i8] c"defer2\00"
@.str18.c = internal global %nyx_string* null
@.str19 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str19.c = internal global %nyx_string* null
@.str20 = private unnamed_addr constant [7 x i8] c"defer3\00"
@.str20.c = internal global %nyx_string* null
@.str21 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str21.c = internal global %nyx_string* null
@.str22 = private unnamed_addr constant [21 x i8] c"LIFO defer order: OK\00"
@.str22.c = internal global %nyx_string* null
@.str23 = private unnamed_addr constant [14 x i8] c"implicit_body\00"
@.str23.c = internal global %nyx_string* null
@.str24 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str24.c = internal global %nyx_string* null
@.str25 = private unnamed_addr constant [15 x i8] c"implicit_defer\00"
@.str25.c = internal global %nyx_string* null
@.str26 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str26.c = internal global %nyx_string* null
@.str27 = private unnamed_addr constant [26 x i8] c"Implicit return defer: OK\00"
@.str27.c = internal global %nyx_string* null
@.str28 = private unnamed_addr constant [24 x i8] c"✅ Test 101 completado\00"
@.str28.c = internal global %nyx_string* null
@__nyx_test_failed = external global i64
@__nyx_test_mode = external global i64
; Nyx Compiler Bootstrap v3.0
; Generated from: /home/admin/nyx/lang/tests/compiler/stdlib-suite/test-101-defer.nx

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

@log = global { i64, i8* }* null


define internal i64 @test_basic_defer(
) {
  %__defer_retval = alloca i64
  store i64 0, i64* %__defer_retval
  %1 = load { i64, i8* }*, { i64, i8* }** @log
  %2 = getelementptr [14 x i8], [14 x i8]* @.str0, i32 0, i32 0
  %3 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str0.c, i8* %2)
  %4 = ptrtoint %nyx_string* %3 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1, i64 %4, i64 2)
  store i64 42, i64* %__defer_retval
  br label %defer_cleanup_0
defer_cleanup_0:
  %5 = load { i64, i8* }*, { i64, i8* }** @log
  %6 = getelementptr [9 x i8], [9 x i8]* @.str1, i32 0, i32 0
  %7 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1.c, i8* %6)
  %8 = ptrtoint %nyx_string* %7 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %5, i64 %8, i64 2)
  %9 = load i64, i64* %__defer_retval
  ret i64 %9
}

define internal i64 @test_multiple_defer(
) {
  %__defer_retval = alloca i64
  store i64 0, i64* %__defer_retval
  %10 = load { i64, i8* }*, { i64, i8* }** @log
  %11 = getelementptr [5 x i8], [5 x i8]* @.str2, i32 0, i32 0
  %12 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str2.c, i8* %11)
  %13 = ptrtoint %nyx_string* %12 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %10, i64 %13, i64 2)
  store i64 0, i64* %__defer_retval
  br label %defer_cleanup_1
defer_cleanup_1:
  %14 = load { i64, i8* }*, { i64, i8* }** @log
  %15 = getelementptr [7 x i8], [7 x i8]* @.str3, i32 0, i32 0
  %16 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str3.c, i8* %15)
  %17 = ptrtoint %nyx_string* %16 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %14, i64 %17, i64 2)
  %18 = load { i64, i8* }*, { i64, i8* }** @log
  %19 = getelementptr [7 x i8], [7 x i8]* @.str4, i32 0, i32 0
  %20 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str4.c, i8* %19)
  %21 = ptrtoint %nyx_string* %20 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %18, i64 %21, i64 2)
  %22 = load { i64, i8* }*, { i64, i8* }** @log
  %23 = getelementptr [7 x i8], [7 x i8]* @.str5, i32 0, i32 0
  %24 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str5.c, i8* %23)
  %25 = ptrtoint %nyx_string* %24 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %22, i64 %25, i64 2)
  %26 = load i64, i64* %__defer_retval
  ret i64 %26
}

define internal i64 @test_defer_implicit_return(
) {
  %__defer_retval = alloca i64
  store i64 0, i64* %__defer_retval
  %27 = load { i64, i8* }*, { i64, i8* }** @log
  %28 = getelementptr [14 x i8], [14 x i8]* @.str6, i32 0, i32 0
  %29 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str6.c, i8* %28)
  %30 = ptrtoint %nyx_string* %29 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %27, i64 %30, i64 2)
  br label %defer_cleanup_2
defer_cleanup_2:
  %31 = load { i64, i8* }*, { i64, i8* }** @log
  %32 = getelementptr [15 x i8], [15 x i8]* @.str7, i32 0, i32 0
  %33 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str7.c, i8* %32)
  %34 = ptrtoint %nyx_string* %33 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %31, i64 %34, i64 2)
  %35 = load i64, i64* %__defer_retval
  ret i64 %35
}

define i64 @main(
i32 %argc, i8** %argv) {
  call void @nyx_set_args(i32 %argc, i8** %argv)
  %36 = call i64 @test_basic_defer()
  %37 = alloca i64
  store i64 %36, i64* %37
  %38 = load i64, i64* %37
  %39 = icmp eq i64 %38, 42
  %40 = getelementptr [17 x i8], [17 x i8]* @.str8, i32 0, i32 0
  %41 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str8.c, i8* %40)
  %42 = call i8* @nyx_string_to_cstr(%nyx_string* %41)
  br i1 %39, label %assert_pass_3, label %assert_fail_3
assert_fail_3:
  call void @nyx_assert_fail(i8* %42)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_3
assert_pass_3:
  %43 = load { i64, i8* }*, { i64, i8* }** @log
  %44 = call i64 @nyx_array_get_checked({ i64, i8* }* %43, i64 0, i64 2)
  %45 = inttoptr i64 %44 to %nyx_string*
  %46 = alloca %nyx_string*
  store %nyx_string* %45, %nyx_string** %46
  %47 = load { i64, i8* }*, { i64, i8* }** @log
  %48 = call i64 @nyx_array_get_checked({ i64, i8* }* %47, i64 1, i64 2)
  %49 = inttoptr i64 %48 to %nyx_string*
  %50 = alloca %nyx_string*
  store %nyx_string* %49, %nyx_string** %50
  %51 = load %nyx_string*, %nyx_string** %46
  %52 = getelementptr [14 x i8], [14 x i8]* @.str9, i32 0, i32 0
  %53 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str9.c, i8* %52)
  %54 = call i1 @nyx_string_equals(%nyx_string* %51, %nyx_string* %53)
  %55 = getelementptr [17 x i8], [17 x i8]* @.str10, i32 0, i32 0
  %56 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str10.c, i8* %55)
  %57 = call i8* @nyx_string_to_cstr(%nyx_string* %56)
  br i1 %54, label %assert_pass_4, label %assert_fail_4
assert_fail_4:
  call void @nyx_assert_fail(i8* %57)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_4
assert_pass_4:
  %58 = load %nyx_string*, %nyx_string** %50
  %59 = getelementptr [9 x i8], [9 x i8]* @.str11, i32 0, i32 0
  %60 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str11.c, i8* %59)
  %61 = call i1 @nyx_string_equals(%nyx_string* %58, %nyx_string* %60)
  %62 = getelementptr [17 x i8], [17 x i8]* @.str12, i32 0, i32 0
  %63 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str12.c, i8* %62)
  %64 = call i8* @nyx_string_to_cstr(%nyx_string* %63)
  br i1 %61, label %assert_pass_5, label %assert_fail_5
assert_fail_5:
  call void @nyx_assert_fail(i8* %64)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_5
assert_pass_5:
  %65 = getelementptr [16 x i8], [16 x i8]* @.str13, i32 0, i32 0
  %66 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str13.c, i8* %65)
  %67 = call i8* @nyx_string_to_cstr(%nyx_string* %66)
  call void @nyx_print_string(i8* %67)
  %68 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %68, { i64, i8* }** @log
  %69 = call i64 @test_multiple_defer()
  %70 = load { i64, i8* }*, { i64, i8* }** @log
  %71 = call i64 @nyx_array_get_checked({ i64, i8* }* %70, i64 0, i64 2)
  %72 = inttoptr i64 %71 to %nyx_string*
  %73 = alloca %nyx_string*
  store %nyx_string* %72, %nyx_string** %73
  %74 = load { i64, i8* }*, { i64, i8* }** @log
  %75 = call i64 @nyx_array_get_checked({ i64, i8* }* %74, i64 1, i64 2)
  %76 = inttoptr i64 %75 to %nyx_string*
  %77 = alloca %nyx_string*
  store %nyx_string* %76, %nyx_string** %77
  %78 = load { i64, i8* }*, { i64, i8* }** @log
  %79 = call i64 @nyx_array_get_checked({ i64, i8* }* %78, i64 2, i64 2)
  %80 = inttoptr i64 %79 to %nyx_string*
  %81 = alloca %nyx_string*
  store %nyx_string* %80, %nyx_string** %81
  %82 = load { i64, i8* }*, { i64, i8* }** @log
  %83 = call i64 @nyx_array_get_checked({ i64, i8* }* %82, i64 3, i64 2)
  %84 = inttoptr i64 %83 to %nyx_string*
  %85 = alloca %nyx_string*
  store %nyx_string* %84, %nyx_string** %85
  %86 = load %nyx_string*, %nyx_string** %73
  %87 = getelementptr [5 x i8], [5 x i8]* @.str14, i32 0, i32 0
  %88 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str14.c, i8* %87)
  %89 = call i1 @nyx_string_equals(%nyx_string* %86, %nyx_string* %88)
  %90 = getelementptr [17 x i8], [17 x i8]* @.str15, i32 0, i32 0
  %91 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str15.c, i8* %90)
  %92 = call i8* @nyx_string_to_cstr(%nyx_string* %91)
  br i1 %89, label %assert_pass_6, label %assert_fail_6
assert_fail_6:
  call void @nyx_assert_fail(i8* %92)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_6
assert_pass_6:
  %93 = load %nyx_string*, %nyx_string** %77
  %94 = getelementptr [7 x i8], [7 x i8]* @.str16, i32 0, i32 0
  %95 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str16.c, i8* %94)
  %96 = call i1 @nyx_string_equals(%nyx_string* %93, %nyx_string* %95)
  %97 = getelementptr [17 x i8], [17 x i8]* @.str17, i32 0, i32 0
  %98 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str17.c, i8* %97)
  %99 = call i8* @nyx_string_to_cstr(%nyx_string* %98)
  br i1 %96, label %assert_pass_7, label %assert_fail_7
assert_fail_7:
  call void @nyx_assert_fail(i8* %99)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_7
assert_pass_7:
  %100 = load %nyx_string*, %nyx_string** %81
  %101 = getelementptr [7 x i8], [7 x i8]* @.str18, i32 0, i32 0
  %102 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str18.c, i8* %101)
  %103 = call i1 @nyx_string_equals(%nyx_string* %100, %nyx_string* %102)
  %104 = getelementptr [17 x i8], [17 x i8]* @.str19, i32 0, i32 0
  %105 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str19.c, i8* %104)
  %106 = call i8* @nyx_string_to_cstr(%nyx_string* %105)
  br i1 %103, label %assert_pass_8, label %assert_fail_8
assert_fail_8:
  call void @nyx_assert_fail(i8* %106)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_8
assert_pass_8:
  %107 = load %nyx_string*, %nyx_string** %85
  %108 = getelementptr [7 x i8], [7 x i8]* @.str20, i32 0, i32 0
  %109 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str20.c, i8* %108)
  %110 = call i1 @nyx_string_equals(%nyx_string* %107, %nyx_string* %109)
  %111 = getelementptr [17 x i8], [17 x i8]* @.str21, i32 0, i32 0
  %112 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str21.c, i8* %111)
  %113 = call i8* @nyx_string_to_cstr(%nyx_string* %112)
  br i1 %110, label %assert_pass_9, label %assert_fail_9
assert_fail_9:
  call void @nyx_assert_fail(i8* %113)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_9
assert_pass_9:
  %114 = getelementptr [21 x i8], [21 x i8]* @.str22, i32 0, i32 0
  %115 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str22.c, i8* %114)
  %116 = call i8* @nyx_string_to_cstr(%nyx_string* %115)
  call void @nyx_print_string(i8* %116)
  %117 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %117, { i64, i8* }** @log
  %118 = call i64 @test_defer_implicit_return()
  %119 = load { i64, i8* }*, { i64, i8* }** @log
  %120 = call i64 @nyx_array_get_checked({ i64, i8* }* %119, i64 0, i64 2)
  %121 = inttoptr i64 %120 to %nyx_string*
  %122 = alloca %nyx_string*
  store %nyx_string* %121, %nyx_string** %122
  %123 = load { i64, i8* }*, { i64, i8* }** @log
  %124 = call i64 @nyx_array_get_checked({ i64, i8* }* %123, i64 1, i64 2)
  %125 = inttoptr i64 %124 to %nyx_string*
  %126 = alloca %nyx_string*
  store %nyx_string* %125, %nyx_string** %126
  %127 = load %nyx_string*, %nyx_string** %122
  %128 = getelementptr [14 x i8], [14 x i8]* @.str23, i32 0, i32 0
  %129 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str23.c, i8* %128)
  %130 = call i1 @nyx_string_equals(%nyx_string* %127, %nyx_string* %129)
  %131 = getelementptr [17 x i8], [17 x i8]* @.str24, i32 0, i32 0
  %132 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str24.c, i8* %131)
  %133 = call i8* @nyx_string_to_cstr(%nyx_string* %132)
  br i1 %130, label %assert_pass_10, label %assert_fail_10
assert_fail_10:
  call void @nyx_assert_fail(i8* %133)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_10
assert_pass_10:
  %134 = load %nyx_string*, %nyx_string** %126
  %135 = getelementptr [15 x i8], [15 x i8]* @.str25, i32 0, i32 0
  %136 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str25.c, i8* %135)
  %137 = call i1 @nyx_string_equals(%nyx_string* %134, %nyx_string* %136)
  %138 = getelementptr [17 x i8], [17 x i8]* @.str26, i32 0, i32 0
  %139 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str26.c, i8* %138)
  %140 = call i8* @nyx_string_to_cstr(%nyx_string* %139)
  br i1 %137, label %assert_pass_11, label %assert_fail_11
assert_fail_11:
  call void @nyx_assert_fail(i8* %140)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_11
assert_pass_11:
  %141 = getelementptr [26 x i8], [26 x i8]* @.str27, i32 0, i32 0
  %142 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str27.c, i8* %141)
  %143 = call i8* @nyx_string_to_cstr(%nyx_string* %142)
  call void @nyx_print_string(i8* %143)
  %144 = getelementptr [24 x i8], [24 x i8]* @.str28, i32 0, i32 0
  %145 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str28.c, i8* %144)
  %146 = call i8* @nyx_string_to_cstr(%nyx_string* %145)
  call void @nyx_print_string(i8* %146)
  ret i64 0
}

; Inicialización de variables globales (llamada automática vía ctor)
define void @__nyx_init_globals() {
entry:
  %147 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %147, { i64, i8* }** @log
  ret void
}

@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @__nyx_init_globals, i8* null }]

attributes #0 = { returns_twice }

