source_filename = "/home/admin/nyx/lang/tests/compiler/language/test-254-string-literal-intern.nx"
target triple = "x86_64-pc-linux-gnu"

@.str0 = private unnamed_addr constant [6 x i8] c"hello\00"
@.str0.c = internal global %nyx_string* null
@.str1 = private unnamed_addr constant [6 x i8] c"hello\00"
@.str1.c = internal global %nyx_string* null
@.str2 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str2.c = internal global %nyx_string* null
@.str3 = private unnamed_addr constant [6 x i8] c"hello\00"
@.str3.c = internal global %nyx_string* null
@.str4 = private unnamed_addr constant [6 x i8] c"hello\00"
@.str4.c = internal global %nyx_string* null
@.str5 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str5.c = internal global %nyx_string* null
@.str6 = private unnamed_addr constant [6 x i8] c"hello\00"
@.str6.c = internal global %nyx_string* null
@.str7 = private unnamed_addr constant [7 x i8] c" world\00"
@.str7.c = internal global %nyx_string* null
@.str8 = private unnamed_addr constant [12 x i8] c"hello world\00"
@.str8.c = internal global %nyx_string* null
@.str9 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str9.c = internal global %nyx_string* null
@.str10 = private unnamed_addr constant [6 x i8] c"hello\00"
@.str10.c = internal global %nyx_string* null
@.str11 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str11.c = internal global %nyx_string* null
@.str12 = private unnamed_addr constant [2 x i8] c"x\00"
@.str12.c = internal global %nyx_string* null
@.str13 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str13.c = internal global %nyx_string* null
@.str14 = private unnamed_addr constant [3 x i8] c"ab\00"
@.str14.c = internal global %nyx_string* null
@.str15 = private unnamed_addr constant [11 x i8] c"ababababab\00"
@.str15.c = internal global %nyx_string* null
@.str16 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str16.c = internal global %nyx_string* null
@.str17 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str17.c = internal global %nyx_string* null
@.str18 = private unnamed_addr constant [3 x i8] c"ab\00"
@.str18.c = internal global %nyx_string* null
@.str19 = private unnamed_addr constant [3 x i8] c"ab\00"
@.str19.c = internal global %nyx_string* null
@.str20 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str20.c = internal global %nyx_string* null
@.str21 = private unnamed_addr constant [4 x i8] c"key\00"
@.str21.c = internal global %nyx_string* null
@.str22 = private unnamed_addr constant [4 x i8] c"val\00"
@.str22.c = internal global %nyx_string* null
@.str23 = private unnamed_addr constant [4 x i8] c"key\00"
@.str23.c = internal global %nyx_string* null
@.str24 = private unnamed_addr constant [4 x i8] c"val\00"
@.str24.c = internal global %nyx_string* null
@.str25 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str25.c = internal global %nyx_string* null
@.str26 = private unnamed_addr constant [1 x i8] c"\00"
@.str26.c = internal global %nyx_string* null
@.str27 = private unnamed_addr constant [1 x i8] c"\00"
@.str27.c = internal global %nyx_string* null
@.str28 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str28.c = internal global %nyx_string* null
@.str29 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str29.c = internal global %nyx_string* null
@.str30 = private unnamed_addr constant [25 x i8] c"string-literal-intern OK\00"
@.str30.c = internal global %nyx_string* null
@__nyx_test_failed = external global i64
@__nyx_test_mode = external global i64
; Nyx Compiler Bootstrap v3.0
; Generated from: /home/admin/nyx/lang/tests/compiler/language/test-254-string-literal-intern.nx

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


define i64 @main(
i32 %argc, i8** %argv) {
  call void @nyx_set_args(i32 %argc, i8** %argv)
  %1 = getelementptr [6 x i8], [6 x i8]* @.str0, i32 0, i32 0
  %2 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str0.c, i8* %1)
  %3 = alloca %nyx_string*
  store %nyx_string* %2, %nyx_string** %3
  %4 = getelementptr [6 x i8], [6 x i8]* @.str1, i32 0, i32 0
  %5 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1.c, i8* %4)
  %6 = alloca %nyx_string*
  store %nyx_string* %5, %nyx_string** %6
  %7 = load %nyx_string*, %nyx_string** %3
  %8 = load %nyx_string*, %nyx_string** %6
  %9 = call i1 @nyx_string_equals(%nyx_string* %7, %nyx_string* %8)
  %10 = getelementptr [17 x i8], [17 x i8]* @.str2, i32 0, i32 0
  %11 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str2.c, i8* %10)
  %12 = call i8* @nyx_string_to_cstr(%nyx_string* %11)
  br i1 %9, label %assert_pass_0, label %assert_fail_0
assert_fail_0:
  call void @nyx_assert_fail(i8* %12)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_0
assert_pass_0:
  %13 = getelementptr [6 x i8], [6 x i8]* @.str3, i32 0, i32 0
  %14 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str3.c, i8* %13)
  %15 = getelementptr [6 x i8], [6 x i8]* @.str4, i32 0, i32 0
  %16 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str4.c, i8* %15)
  %17 = call i1 @nyx_string_equals(%nyx_string* %14, %nyx_string* %16)
  %18 = getelementptr [17 x i8], [17 x i8]* @.str5, i32 0, i32 0
  %19 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str5.c, i8* %18)
  %20 = call i8* @nyx_string_to_cstr(%nyx_string* %19)
  br i1 %17, label %assert_pass_1, label %assert_fail_1
assert_fail_1:
  call void @nyx_assert_fail(i8* %20)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_1
assert_pass_1:
  %21 = getelementptr [6 x i8], [6 x i8]* @.str6, i32 0, i32 0
  %22 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str6.c, i8* %21)
  %23 = getelementptr [7 x i8], [7 x i8]* @.str7, i32 0, i32 0
  %24 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str7.c, i8* %23)
  %25 = call %nyx_string* @nyx_string_concat(%nyx_string* %22, %nyx_string* %24)
  %26 = alloca %nyx_string*
  store %nyx_string* %25, %nyx_string** %26
  %27 = load %nyx_string*, %nyx_string** %26
  %28 = getelementptr [12 x i8], [12 x i8]* @.str8, i32 0, i32 0
  %29 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str8.c, i8* %28)
  %30 = call i1 @nyx_string_equals(%nyx_string* %27, %nyx_string* %29)
  %31 = getelementptr [17 x i8], [17 x i8]* @.str9, i32 0, i32 0
  %32 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str9.c, i8* %31)
  %33 = call i8* @nyx_string_to_cstr(%nyx_string* %32)
  br i1 %30, label %assert_pass_2, label %assert_fail_2
assert_fail_2:
  call void @nyx_assert_fail(i8* %33)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_2
assert_pass_2:
  %34 = getelementptr [6 x i8], [6 x i8]* @.str10, i32 0, i32 0
  %35 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str10.c, i8* %34)
  %36 = load %nyx_string*, %nyx_string** %3
  %37 = call i1 @nyx_string_equals(%nyx_string* %35, %nyx_string* %36)
  %38 = getelementptr [17 x i8], [17 x i8]* @.str11, i32 0, i32 0
  %39 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str11.c, i8* %38)
  %40 = call i8* @nyx_string_to_cstr(%nyx_string* %39)
  br i1 %37, label %assert_pass_3, label %assert_fail_3
assert_fail_3:
  call void @nyx_assert_fail(i8* %40)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_3
assert_pass_3:
  %41 = alloca i64
  store i64 0, i64* %41
  %42 = alloca i64
  store i64 0, i64* %42
  %43 = getelementptr [2 x i8], [2 x i8]* @.str12, i32 0, i32 0
  %44 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str12.c, i8* %43)
  %45 = alloca %nyx_string*
  store %nyx_string* %44, %nyx_string** %45
  %46 = call i8* @llvm.stacksave()
  br label %while_cond4
while_cond4:
  %47 = load i64, i64* %42
  %48 = icmp slt i64 %47, 1000
  br i1 %48, label %while_body5, label %while_end6
while_body5:
  call void @llvm.stackrestore(i8* %46)
  %49 = load %nyx_string*, %nyx_string** %45
  %50 = load %nyx_string*, %nyx_string** %45
  %51 = call i1 @nyx_string_equals(%nyx_string* %49, %nyx_string* %50)
  br i1 %51, label %then7, label %else8
then7:
  %52 = load i64, i64* %41
  %53 = add i64 %52, 1
  store i64 %53, i64* %41
  br label %merge9
else8:
  br label %merge9
merge9:
  %54 = load i64, i64* %42
  %55 = add i64 %54, 1
  store i64 %55, i64* %42
  br label %while_cond4
while_end6:
  %56 = load i64, i64* %41
  %57 = icmp eq i64 %56, 1000
  %58 = getelementptr [17 x i8], [17 x i8]* @.str13, i32 0, i32 0
  %59 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str13.c, i8* %58)
  %60 = call i8* @nyx_string_to_cstr(%nyx_string* %59)
  br i1 %57, label %assert_pass_10, label %assert_fail_10
assert_fail_10:
  call void @nyx_assert_fail(i8* %60)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_10
assert_pass_10:
  %61 = call i8* @nyx_sb_new(i64 16)
  %62 = alloca i8*
  store i8* %61, i8** %62
  %63 = alloca i64
  store i64 0, i64* %63
  %64 = getelementptr [3 x i8], [3 x i8]* @.str14, i32 0, i32 0
  %65 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str14.c, i8* %64)
  %66 = alloca %nyx_string*
  store %nyx_string* %65, %nyx_string** %66
  %67 = call i8* @llvm.stacksave()
  br label %while_cond11
while_cond11:
  %68 = load i64, i64* %63
  %69 = icmp slt i64 %68, 5
  br i1 %69, label %while_body12, label %while_end13
while_body12:
  call void @llvm.stackrestore(i8* %67)
  %70 = load i8*, i8** %62
  %71 = load %nyx_string*, %nyx_string** %66
  call void @nyx_sb_append(i8* %70, %nyx_string* %71)
  %72 = load i64, i64* %63
  %73 = add i64 %72, 1
  store i64 %73, i64* %63
  br label %while_cond11
while_end13:
  %74 = load i8*, i8** %62
  %75 = call %nyx_string* @nyx_sb_to_string(i8* %74)
  %76 = alloca %nyx_string*
  store %nyx_string* %75, %nyx_string** %76
  %77 = load %nyx_string*, %nyx_string** %76
  %78 = getelementptr [11 x i8], [11 x i8]* @.str15, i32 0, i32 0
  %79 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str15.c, i8* %78)
  %80 = call i1 @nyx_string_equals(%nyx_string* %77, %nyx_string* %79)
  %81 = getelementptr [17 x i8], [17 x i8]* @.str16, i32 0, i32 0
  %82 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str16.c, i8* %81)
  %83 = call i8* @nyx_string_to_cstr(%nyx_string* %82)
  br i1 %80, label %assert_pass_14, label %assert_fail_14
assert_fail_14:
  call void @nyx_assert_fail(i8* %83)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_14
assert_pass_14:
  %84 = load %nyx_string*, %nyx_string** %76
  %85 = call i64 @nyx_string_byte_length(%nyx_string* %84)
  %86 = icmp eq i64 %85, 10
  %87 = getelementptr [17 x i8], [17 x i8]* @.str17, i32 0, i32 0
  %88 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str17.c, i8* %87)
  %89 = call i8* @nyx_string_to_cstr(%nyx_string* %88)
  br i1 %86, label %assert_pass_15, label %assert_fail_15
assert_fail_15:
  call void @nyx_assert_fail(i8* %89)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_15
assert_pass_15:
  %90 = getelementptr [3 x i8], [3 x i8]* @.str18, i32 0, i32 0
  %91 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str18.c, i8* %90)
  %92 = getelementptr [3 x i8], [3 x i8]* @.str19, i32 0, i32 0
  %93 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str19.c, i8* %92)
  %94 = call i1 @nyx_string_equals(%nyx_string* %91, %nyx_string* %93)
  %95 = getelementptr [17 x i8], [17 x i8]* @.str20, i32 0, i32 0
  %96 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str20.c, i8* %95)
  %97 = call i8* @nyx_string_to_cstr(%nyx_string* %96)
  br i1 %94, label %assert_pass_16, label %assert_fail_16
assert_fail_16:
  call void @nyx_assert_fail(i8* %97)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_16
assert_pass_16:
  %98 = call i8* @nyx_map_new(i32 0)
  %99 = alloca i8*
  store i8* %98, i8** %99
  %100 = load i8*, i8** %99
  %101 = getelementptr [4 x i8], [4 x i8]* @.str21, i32 0, i32 0
  %102 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str21.c, i8* %101)
  %103 = getelementptr [4 x i8], [4 x i8]* @.str22, i32 0, i32 0
  %104 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str22.c, i8* %103)
  %105 = call i8* @nyx_string_to_cstr(%nyx_string* %102)
  %106 = call i8* @nyx_string_to_cstr(%nyx_string* %104)
  call void @nyx_map_insert_str(i8* %100, i8* %105, i8* %106)
  %107 = load i8*, i8** %99
  %108 = getelementptr [4 x i8], [4 x i8]* @.str23, i32 0, i32 0
  %109 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str23.c, i8* %108)
  %110 = call i8* @nyx_string_to_cstr(%nyx_string* %109)
  %111 = call i8* @nyx_map_get_str(i8* %107, i8* %110)
  %112 = call %nyx_string* @nyx_string_from_cstr(i8* %111)
  %113 = getelementptr [4 x i8], [4 x i8]* @.str24, i32 0, i32 0
  %114 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str24.c, i8* %113)
  %115 = call i1 @nyx_string_equals(%nyx_string* %112, %nyx_string* %114)
  %116 = getelementptr [17 x i8], [17 x i8]* @.str25, i32 0, i32 0
  %117 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str25.c, i8* %116)
  %118 = call i8* @nyx_string_to_cstr(%nyx_string* %117)
  br i1 %115, label %assert_pass_17, label %assert_fail_17
assert_fail_17:
  call void @nyx_assert_fail(i8* %118)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_17
assert_pass_17:
  %119 = getelementptr [1 x i8], [1 x i8]* @.str26, i32 0, i32 0
  %120 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str26.c, i8* %119)
  %121 = alloca %nyx_string*
  store %nyx_string* %120, %nyx_string** %121
  %122 = load %nyx_string*, %nyx_string** %121
  %123 = getelementptr [1 x i8], [1 x i8]* @.str27, i32 0, i32 0
  %124 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str27.c, i8* %123)
  %125 = call i1 @nyx_string_equals(%nyx_string* %122, %nyx_string* %124)
  %126 = getelementptr [17 x i8], [17 x i8]* @.str28, i32 0, i32 0
  %127 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str28.c, i8* %126)
  %128 = call i8* @nyx_string_to_cstr(%nyx_string* %127)
  br i1 %125, label %assert_pass_18, label %assert_fail_18
assert_fail_18:
  call void @nyx_assert_fail(i8* %128)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_18
assert_pass_18:
  %129 = load %nyx_string*, %nyx_string** %121
  %130 = call i64 @nyx_string_byte_length(%nyx_string* %129)
  %131 = icmp eq i64 %130, 0
  %132 = getelementptr [17 x i8], [17 x i8]* @.str29, i32 0, i32 0
  %133 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str29.c, i8* %132)
  %134 = call i8* @nyx_string_to_cstr(%nyx_string* %133)
  br i1 %131, label %assert_pass_19, label %assert_fail_19
assert_fail_19:
  call void @nyx_assert_fail(i8* %134)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_19
assert_pass_19:
  %135 = getelementptr [25 x i8], [25 x i8]* @.str30, i32 0, i32 0
  %136 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str30.c, i8* %135)
  %137 = call i8* @nyx_string_to_cstr(%nyx_string* %136)
  call void @nyx_print_string(i8* %137)
  ret i64 0
}


attributes #0 = { returns_twice }

