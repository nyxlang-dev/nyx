source_filename = "/home/admin/nyx/lang/tests/compiler/systems/test-46-test-framework.nx"
target triple = "x86_64-pc-linux-gnu"

@__nyx_test_failed = external global i64
@__nyx_test_mode = external global i64
@.str0 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str0.c = internal global %nyx_string* null
@.str1 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str1.c = internal global %nyx_string* null
@.str2 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str2.c = internal global %nyx_string* null
@.str3 = private unnamed_addr constant [6 x i8] c"hello\00"
@.str3.c = internal global %nyx_string* null
@.str4 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str4.c = internal global %nyx_string* null
@.str5 = private unnamed_addr constant [6 x i8] c"hello\00"
@.str5.c = internal global %nyx_string* null
@.str6 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str6.c = internal global %nyx_string* null
@.str7 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str7.c = internal global %nyx_string* null
@.str8 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str8.c = internal global %nyx_string* null
@.str9 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str9.c = internal global %nyx_string* null
@.str10 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str10.c = internal global %nyx_string* null
@.str11 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str11.c = internal global %nyx_string* null
@.str12 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str12.c = internal global %nyx_string* null
@.str13 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str13.c = internal global %nyx_string* null
@.str14 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str14.c = internal global %nyx_string* null
@.str_test_header = private unnamed_addr constant [25 x i8] c"=== Nyx Test Runner ===\0A\00"
@.str_test_pass = private unnamed_addr constant [9 x i8] c"  PASS: \00"
@.str_test_fail = private unnamed_addr constant [9 x i8] c"  FAIL: \00"
@.str_test_results = private unnamed_addr constant [10 x i8] c"Results: \00"
@.str_test_passed = private unnamed_addr constant [10 x i8] c" passed, \00"
@.str_test_failed_word = private unnamed_addr constant [8 x i8] c" failed\00"
@.str_tname_0 = private unnamed_addr constant [17 x i8] c"basic arithmetic\00"
@.str_tname_1 = private unnamed_addr constant [18 x i8] c"string operations\00"
@.str_tname_2 = private unnamed_addr constant [14 x i8] c"boolean logic\00"
@.str_tname_3 = private unnamed_addr constant [25 x i8] c"variables and assignment\00"
@.str_tname_4 = private unnamed_addr constant [7 x i8] c"arrays\00"
; Nyx Compiler Bootstrap v3.0
; Generated from: /home/admin/nyx/lang/tests/compiler/systems/test-46-test-framework.nx

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


define void @__test_0() {
entry:
  %1 = add i64 1, 1
  %2 = icmp eq i64 %1, 2
  %3 = getelementptr [17 x i8], [17 x i8]* @.str0, i32 0, i32 0
  %4 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str0.c, i8* %3)
  %5 = call i8* @nyx_string_to_cstr(%nyx_string* %4)
  br i1 %2, label %assert_pass_0, label %assert_fail_0
assert_fail_0:
  call void @nyx_assert_fail(i8* %5)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_0
assert_pass_0:
  %6 = mul i64 3, 4
  %7 = icmp eq i64 %6, 12
  %8 = getelementptr [17 x i8], [17 x i8]* @.str1, i32 0, i32 0
  %9 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1.c, i8* %8)
  %10 = call i8* @nyx_string_to_cstr(%nyx_string* %9)
  br i1 %7, label %assert_pass_1, label %assert_fail_1
assert_fail_1:
  call void @nyx_assert_fail(i8* %10)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_1
assert_pass_1:
  %11 = sub i64 10, 3
  %12 = icmp eq i64 %11, 7
  %13 = getelementptr [17 x i8], [17 x i8]* @.str2, i32 0, i32 0
  %14 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str2.c, i8* %13)
  %15 = call i8* @nyx_string_to_cstr(%nyx_string* %14)
  br i1 %12, label %assert_pass_2, label %assert_fail_2
assert_fail_2:
  call void @nyx_assert_fail(i8* %15)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_2
assert_pass_2:
  ret void
}

define void @__test_1() {
entry:
  %16 = getelementptr [6 x i8], [6 x i8]* @.str3, i32 0, i32 0
  %17 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str3.c, i8* %16)
  %18 = alloca %nyx_string*
  store %nyx_string* %17, %nyx_string** %18
  %19 = load %nyx_string*, %nyx_string** %18
  %20 = call i64 @nyx_string_byte_length(%nyx_string* %19)
  %21 = icmp eq i64 %20, 5
  %22 = getelementptr [17 x i8], [17 x i8]* @.str4, i32 0, i32 0
  %23 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str4.c, i8* %22)
  %24 = call i8* @nyx_string_to_cstr(%nyx_string* %23)
  br i1 %21, label %assert_pass_3, label %assert_fail_3
assert_fail_3:
  call void @nyx_assert_fail(i8* %24)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_3
assert_pass_3:
  %25 = load %nyx_string*, %nyx_string** %18
  %26 = getelementptr [6 x i8], [6 x i8]* @.str5, i32 0, i32 0
  %27 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str5.c, i8* %26)
  %28 = call i1 @nyx_string_equals(%nyx_string* %25, %nyx_string* %27)
  %29 = getelementptr [17 x i8], [17 x i8]* @.str6, i32 0, i32 0
  %30 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str6.c, i8* %29)
  %31 = call i8* @nyx_string_to_cstr(%nyx_string* %30)
  br i1 %28, label %assert_pass_4, label %assert_fail_4
assert_fail_4:
  call void @nyx_assert_fail(i8* %31)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_4
assert_pass_4:
  ret void
}

define void @__test_2() {
entry:
  %32 = getelementptr [17 x i8], [17 x i8]* @.str7, i32 0, i32 0
  %33 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str7.c, i8* %32)
  %34 = call i8* @nyx_string_to_cstr(%nyx_string* %33)
  br i1 1, label %assert_pass_5, label %assert_fail_5
assert_fail_5:
  call void @nyx_assert_fail(i8* %34)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_5
assert_pass_5:
  %35 = xor i1 0, true
  %36 = getelementptr [17 x i8], [17 x i8]* @.str8, i32 0, i32 0
  %37 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str8.c, i8* %36)
  %38 = call i8* @nyx_string_to_cstr(%nyx_string* %37)
  br i1 %35, label %assert_pass_6, label %assert_fail_6
assert_fail_6:
  call void @nyx_assert_fail(i8* %38)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_6
assert_pass_6:
  %39 = alloca i1
  store i1 false, i1* %39
  br i1 1, label %sc_and_rhs7, label %sc_and_end8
sc_and_rhs7:
  store i1 1, i1* %39
  br label %sc_and_end8
sc_and_end8:
  %40 = load i1, i1* %39
  %41 = getelementptr [17 x i8], [17 x i8]* @.str9, i32 0, i32 0
  %42 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str9.c, i8* %41)
  %43 = call i8* @nyx_string_to_cstr(%nyx_string* %42)
  br i1 %40, label %assert_pass_9, label %assert_fail_9
assert_fail_9:
  call void @nyx_assert_fail(i8* %43)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_9
assert_pass_9:
  %44 = alloca i1
  store i1 true, i1* %44
  br i1 1, label %sc_or_end11, label %sc_or_rhs10
sc_or_rhs10:
  store i1 0, i1* %44
  br label %sc_or_end11
sc_or_end11:
  %45 = load i1, i1* %44
  %46 = getelementptr [17 x i8], [17 x i8]* @.str10, i32 0, i32 0
  %47 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str10.c, i8* %46)
  %48 = call i8* @nyx_string_to_cstr(%nyx_string* %47)
  br i1 %45, label %assert_pass_12, label %assert_fail_12
assert_fail_12:
  call void @nyx_assert_fail(i8* %48)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_12
assert_pass_12:
  ret void
}

define void @__test_3() {
entry:
  %49 = alloca i64
  store i64 42, i64* %49
  %50 = load i64, i64* %49
  %51 = icmp eq i64 %50, 42
  %52 = getelementptr [17 x i8], [17 x i8]* @.str11, i32 0, i32 0
  %53 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str11.c, i8* %52)
  %54 = call i8* @nyx_string_to_cstr(%nyx_string* %53)
  br i1 %51, label %assert_pass_13, label %assert_fail_13
assert_fail_13:
  call void @nyx_assert_fail(i8* %54)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_13
assert_pass_13:
  %55 = alloca i64
  store i64 10, i64* %55
  store i64 20, i64* %55
  %56 = load i64, i64* %55
  %57 = icmp eq i64 %56, 20
  %58 = getelementptr [17 x i8], [17 x i8]* @.str12, i32 0, i32 0
  %59 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str12.c, i8* %58)
  %60 = call i8* @nyx_string_to_cstr(%nyx_string* %59)
  br i1 %57, label %assert_pass_14, label %assert_fail_14
assert_fail_14:
  call void @nyx_assert_fail(i8* %60)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_14
assert_pass_14:
  ret void
}

define void @__test_4() {
entry:
  %61 = call { i64, i8* }* @nyx_array_new_ptr()
  call void @nyx_array_push_tagged({ i64, i8* }* %61, i64 1, i64 1)
  call void @nyx_array_push_tagged({ i64, i8* }* %61, i64 2, i64 1)
  call void @nyx_array_push_tagged({ i64, i8* }* %61, i64 3, i64 1)
  %62 = alloca { i64, i8* }*
  store { i64, i8* }* %61, { i64, i8* }** %62
  %63 = load { i64, i8* }*, { i64, i8* }** %62
  %64 = call i64 @nyx_array_length({ i64, i8* }* %63)
  %65 = icmp eq i64 %64, 3
  %66 = getelementptr [17 x i8], [17 x i8]* @.str13, i32 0, i32 0
  %67 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str13.c, i8* %66)
  %68 = call i8* @nyx_string_to_cstr(%nyx_string* %67)
  br i1 %65, label %assert_pass_15, label %assert_fail_15
assert_fail_15:
  call void @nyx_assert_fail(i8* %68)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_15
assert_pass_15:
  %69 = load { i64, i8* }*, { i64, i8* }** %62
  call void @nyx_array_push_tagged({ i64, i8* }* %69, i64 4, i64 1)
  %70 = load { i64, i8* }*, { i64, i8* }** %62
  %71 = call i64 @nyx_array_length({ i64, i8* }* %70)
  %72 = icmp eq i64 %71, 4
  %73 = getelementptr [17 x i8], [17 x i8]* @.str14, i32 0, i32 0
  %74 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str14.c, i8* %73)
  %75 = call i8* @nyx_string_to_cstr(%nyx_string* %74)
  br i1 %72, label %assert_pass_16, label %assert_fail_16
assert_fail_16:
  call void @nyx_assert_fail(i8* %75)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_16
assert_pass_16:
  ret void
}

define i64 @main(i32 %argc, i8** %argv) {
entry:
  call void @nyx_set_args(i32 %argc, i8** %argv)
  store i64 1, i64* @__nyx_test_mode
  %76 = call %nyx_string* @nyx_string_from_cstr(i8* getelementptr([25 x i8], [25 x i8]* @.str_test_header, i32 0, i32 0))
  %77 = call i8* @nyx_string_to_cstr(%nyx_string* %76)
  call void @nyx_print_string(i8* %77)
  %78 = alloca i64
  store i64 0, i64* %78
  %79 = alloca i64
  store i64 0, i64* %79
  store i64 0, i64* @__nyx_test_failed
  call void @__test_0()
  %80 = load i64, i64* @__nyx_test_failed
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %test_fail_17, label %test_pass_17
test_pass_17:
  %83 = call %nyx_string* @nyx_string_from_cstr(i8* getelementptr([9 x i8], [9 x i8]* @.str_test_pass, i32 0, i32 0))
  %84 = call %nyx_string* @nyx_string_from_cstr(i8* getelementptr([17 x i8], [17 x i8]* @.str_tname_0, i32 0, i32 0))
  %85 = call %nyx_string* @nyx_string_concat(%nyx_string* %83, %nyx_string* %84)
  %86 = call i8* @nyx_string_to_cstr(%nyx_string* %85)
  call void @nyx_print_string(i8* %86)
  %87 = load i64, i64* %78
  %88 = add i64 %87, 1
  store i64 %88, i64* %78
  br label %test_done_17
test_fail_17:
  %89 = call %nyx_string* @nyx_string_from_cstr(i8* getelementptr([9 x i8], [9 x i8]* @.str_test_fail, i32 0, i32 0))
  %90 = call %nyx_string* @nyx_string_from_cstr(i8* getelementptr([17 x i8], [17 x i8]* @.str_tname_0, i32 0, i32 0))
  %91 = call %nyx_string* @nyx_string_concat(%nyx_string* %89, %nyx_string* %90)
  %92 = call i8* @nyx_string_to_cstr(%nyx_string* %91)
  call void @nyx_print_string(i8* %92)
  %93 = load i64, i64* %79
  %94 = add i64 %93, 1
  store i64 %94, i64* %79
  br label %test_done_17
test_done_17:
  store i64 0, i64* @__nyx_test_failed
  call void @__test_1()
  %95 = load i64, i64* @__nyx_test_failed
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %test_fail_18, label %test_pass_18
test_pass_18:
  %98 = call %nyx_string* @nyx_string_from_cstr(i8* getelementptr([9 x i8], [9 x i8]* @.str_test_pass, i32 0, i32 0))
  %99 = call %nyx_string* @nyx_string_from_cstr(i8* getelementptr([18 x i8], [18 x i8]* @.str_tname_1, i32 0, i32 0))
  %100 = call %nyx_string* @nyx_string_concat(%nyx_string* %98, %nyx_string* %99)
  %101 = call i8* @nyx_string_to_cstr(%nyx_string* %100)
  call void @nyx_print_string(i8* %101)
  %102 = load i64, i64* %78
  %103 = add i64 %102, 1
  store i64 %103, i64* %78
  br label %test_done_18
test_fail_18:
  %104 = call %nyx_string* @nyx_string_from_cstr(i8* getelementptr([9 x i8], [9 x i8]* @.str_test_fail, i32 0, i32 0))
  %105 = call %nyx_string* @nyx_string_from_cstr(i8* getelementptr([18 x i8], [18 x i8]* @.str_tname_1, i32 0, i32 0))
  %106 = call %nyx_string* @nyx_string_concat(%nyx_string* %104, %nyx_string* %105)
  %107 = call i8* @nyx_string_to_cstr(%nyx_string* %106)
  call void @nyx_print_string(i8* %107)
  %108 = load i64, i64* %79
  %109 = add i64 %108, 1
  store i64 %109, i64* %79
  br label %test_done_18
test_done_18:
  store i64 0, i64* @__nyx_test_failed
  call void @__test_2()
  %110 = load i64, i64* @__nyx_test_failed
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %test_fail_19, label %test_pass_19
test_pass_19:
  %113 = call %nyx_string* @nyx_string_from_cstr(i8* getelementptr([9 x i8], [9 x i8]* @.str_test_pass, i32 0, i32 0))
  %114 = call %nyx_string* @nyx_string_from_cstr(i8* getelementptr([14 x i8], [14 x i8]* @.str_tname_2, i32 0, i32 0))
  %115 = call %nyx_string* @nyx_string_concat(%nyx_string* %113, %nyx_string* %114)
  %116 = call i8* @nyx_string_to_cstr(%nyx_string* %115)
  call void @nyx_print_string(i8* %116)
  %117 = load i64, i64* %78
  %118 = add i64 %117, 1
  store i64 %118, i64* %78
  br label %test_done_19
test_fail_19:
  %119 = call %nyx_string* @nyx_string_from_cstr(i8* getelementptr([9 x i8], [9 x i8]* @.str_test_fail, i32 0, i32 0))
  %120 = call %nyx_string* @nyx_string_from_cstr(i8* getelementptr([14 x i8], [14 x i8]* @.str_tname_2, i32 0, i32 0))
  %121 = call %nyx_string* @nyx_string_concat(%nyx_string* %119, %nyx_string* %120)
  %122 = call i8* @nyx_string_to_cstr(%nyx_string* %121)
  call void @nyx_print_string(i8* %122)
  %123 = load i64, i64* %79
  %124 = add i64 %123, 1
  store i64 %124, i64* %79
  br label %test_done_19
test_done_19:
  store i64 0, i64* @__nyx_test_failed
  call void @__test_3()
  %125 = load i64, i64* @__nyx_test_failed
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %test_fail_20, label %test_pass_20
test_pass_20:
  %128 = call %nyx_string* @nyx_string_from_cstr(i8* getelementptr([9 x i8], [9 x i8]* @.str_test_pass, i32 0, i32 0))
  %129 = call %nyx_string* @nyx_string_from_cstr(i8* getelementptr([25 x i8], [25 x i8]* @.str_tname_3, i32 0, i32 0))
  %130 = call %nyx_string* @nyx_string_concat(%nyx_string* %128, %nyx_string* %129)
  %131 = call i8* @nyx_string_to_cstr(%nyx_string* %130)
  call void @nyx_print_string(i8* %131)
  %132 = load i64, i64* %78
  %133 = add i64 %132, 1
  store i64 %133, i64* %78
  br label %test_done_20
test_fail_20:
  %134 = call %nyx_string* @nyx_string_from_cstr(i8* getelementptr([9 x i8], [9 x i8]* @.str_test_fail, i32 0, i32 0))
  %135 = call %nyx_string* @nyx_string_from_cstr(i8* getelementptr([25 x i8], [25 x i8]* @.str_tname_3, i32 0, i32 0))
  %136 = call %nyx_string* @nyx_string_concat(%nyx_string* %134, %nyx_string* %135)
  %137 = call i8* @nyx_string_to_cstr(%nyx_string* %136)
  call void @nyx_print_string(i8* %137)
  %138 = load i64, i64* %79
  %139 = add i64 %138, 1
  store i64 %139, i64* %79
  br label %test_done_20
test_done_20:
  store i64 0, i64* @__nyx_test_failed
  call void @__test_4()
  %140 = load i64, i64* @__nyx_test_failed
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %test_fail_21, label %test_pass_21
test_pass_21:
  %143 = call %nyx_string* @nyx_string_from_cstr(i8* getelementptr([9 x i8], [9 x i8]* @.str_test_pass, i32 0, i32 0))
  %144 = call %nyx_string* @nyx_string_from_cstr(i8* getelementptr([7 x i8], [7 x i8]* @.str_tname_4, i32 0, i32 0))
  %145 = call %nyx_string* @nyx_string_concat(%nyx_string* %143, %nyx_string* %144)
  %146 = call i8* @nyx_string_to_cstr(%nyx_string* %145)
  call void @nyx_print_string(i8* %146)
  %147 = load i64, i64* %78
  %148 = add i64 %147, 1
  store i64 %148, i64* %78
  br label %test_done_21
test_fail_21:
  %149 = call %nyx_string* @nyx_string_from_cstr(i8* getelementptr([9 x i8], [9 x i8]* @.str_test_fail, i32 0, i32 0))
  %150 = call %nyx_string* @nyx_string_from_cstr(i8* getelementptr([7 x i8], [7 x i8]* @.str_tname_4, i32 0, i32 0))
  %151 = call %nyx_string* @nyx_string_concat(%nyx_string* %149, %nyx_string* %150)
  %152 = call i8* @nyx_string_to_cstr(%nyx_string* %151)
  call void @nyx_print_string(i8* %152)
  %153 = load i64, i64* %79
  %154 = add i64 %153, 1
  store i64 %154, i64* %79
  br label %test_done_21
test_done_21:
  %155 = load i64, i64* %78
  %156 = load i64, i64* %79
  %157 = call %nyx_string* @nyx_string_from_cstr(i8* getelementptr([10 x i8], [10 x i8]* @.str_test_results, i32 0, i32 0))
  %158 = call %nyx_string* @nyx_string_from_int(i64 %155)
  %159 = call %nyx_string* @nyx_string_from_cstr(i8* getelementptr([10 x i8], [10 x i8]* @.str_test_passed, i32 0, i32 0))
  %160 = call %nyx_string* @nyx_string_from_int(i64 %156)
  %161 = call %nyx_string* @nyx_string_from_cstr(i8* getelementptr([8 x i8], [8 x i8]* @.str_test_failed_word, i32 0, i32 0))
  %162 = call %nyx_string* @nyx_string_concat(%nyx_string* %157, %nyx_string* %158)
  %163 = call %nyx_string* @nyx_string_concat(%nyx_string* %162, %nyx_string* %159)
  %164 = call %nyx_string* @nyx_string_concat(%nyx_string* %163, %nyx_string* %160)
  %165 = call %nyx_string* @nyx_string_concat(%nyx_string* %164, %nyx_string* %161)
  %166 = call i8* @nyx_string_to_cstr(%nyx_string* %165)
  call void @nyx_print_string(i8* %166)
  %167 = icmp ne i64 %156, 0
  %168 = select i1 %167, i64 1, i64 0
  ret i64 %168
}


attributes #0 = { returns_twice }

