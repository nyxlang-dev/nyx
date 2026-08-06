source_filename = "/home/admin/nyx/lang/tests/compiler/stdlib-suite/test-102-format.nx"
target triple = "x86_64-pc-linux-gnu"

@.str0 = private unnamed_addr constant [6 x i8] c"World\00"
@.str0.c = internal global %nyx_string* null
@.str1 = private unnamed_addr constant [11 x i8] c"Hello, {}!\00"
@.str1.c = internal global %nyx_string* null
@.str2 = private unnamed_addr constant [14 x i8] c"Hello, World!\00"
@.str2.c = internal global %nyx_string* null
@.str3 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str3.c = internal global %nyx_string* null
@.str4 = private unnamed_addr constant [17 x i8] c"Basic format: OK\00"
@.str4.c = internal global %nyx_string* null
@.str5 = private unnamed_addr constant [8 x i8] c"Age: {}\00"
@.str5.c = internal global %nyx_string* null
@.str6 = private unnamed_addr constant [8 x i8] c"Age: 25\00"
@.str6.c = internal global %nyx_string* null
@.str7 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str7.c = internal global %nyx_string* null
@.str8 = private unnamed_addr constant [15 x i8] c"Int format: OK\00"
@.str8.c = internal global %nyx_string* null
@.str9 = private unnamed_addr constant [19 x i8] c"{} is {} years old\00"
@.str9.c = internal global %nyx_string* null
@.str10 = private unnamed_addr constant [22 x i8] c"World is 25 years old\00"
@.str10.c = internal global %nyx_string* null
@.str11 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str11.c = internal global %nyx_string* null
@.str12 = private unnamed_addr constant [21 x i8] c"Multi-arg format: OK\00"
@.str12.c = internal global %nyx_string* null
@.str13 = private unnamed_addr constant [9 x i8] c"Pi is {}\00"
@.str13.c = internal global %nyx_string* null
@.str14 = private unnamed_addr constant [11 x i8] c"Pi is 3.14\00"
@.str14.c = internal global %nyx_string* null
@.str15 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str15.c = internal global %nyx_string* null
@.str16 = private unnamed_addr constant [17 x i8] c"Float format: OK\00"
@.str16.c = internal global %nyx_string* null
@.str17 = private unnamed_addr constant [11 x i8] c"Active: {}\00"
@.str17.c = internal global %nyx_string* null
@.str18 = private unnamed_addr constant [13 x i8] c"Active: true\00"
@.str18.c = internal global %nyx_string* null
@.str19 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str19.c = internal global %nyx_string* null
@.str20 = private unnamed_addr constant [16 x i8] c"Bool format: OK\00"
@.str20.c = internal global %nyx_string* null
@.str21 = private unnamed_addr constant [21 x i8] c"No placeholders here\00"
@.str21.c = internal global %nyx_string* null
@.str22 = private unnamed_addr constant [21 x i8] c"No placeholders here\00"
@.str22.c = internal global %nyx_string* null
@.str23 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str23.c = internal global %nyx_string* null
@.str24 = private unnamed_addr constant [20 x i8] c"No placeholders: OK\00"
@.str24.c = internal global %nyx_string* null
@.str25 = private unnamed_addr constant [6 x i8] c"Hello\00"
@.str25.c = internal global %nyx_string* null
@.str26 = private unnamed_addr constant [6 x i8] c"World\00"
@.str26.c = internal global %nyx_string* null
@.str27 = private unnamed_addr constant [5 x i8] c"{}{}\00"
@.str27.c = internal global %nyx_string* null
@.str28 = private unnamed_addr constant [11 x i8] c"HelloWorld\00"
@.str28.c = internal global %nyx_string* null
@.str29 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str29.c = internal global %nyx_string* null
@.str30 = private unnamed_addr constant [26 x i8] c"Adjacent placeholders: OK\00"
@.str30.c = internal global %nyx_string* null
@.str31 = private unnamed_addr constant [3 x i8] c"{}\00"
@.str31.c = internal global %nyx_string* null
@.str32 = private unnamed_addr constant [6 x i8] c"World\00"
@.str32.c = internal global %nyx_string* null
@.str33 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str33.c = internal global %nyx_string* null
@.str34 = private unnamed_addr constant [23 x i8] c"Single placeholder: OK\00"
@.str34.c = internal global %nyx_string* null
@.str35 = private unnamed_addr constant [20 x i8] c"Test 102 completado\00"
@.str35.c = internal global %nyx_string* null
@__nyx_test_failed = external global i64
@__nyx_test_mode = external global i64
; Nyx Compiler Bootstrap v3.0
; Generated from: /home/admin/nyx/lang/tests/compiler/stdlib-suite/test-102-format.nx

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
  %4 = getelementptr [11 x i8], [11 x i8]* @.str1, i32 0, i32 0
  %5 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1.c, i8* %4)
  %6 = call { i64, i8* }* @nyx_array_new_ptr()
  %7 = load %nyx_string*, %nyx_string** %3
  %8 = bitcast %nyx_string* %7 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %6, i8* %8)
  %9 = call %nyx_string* @nyx_format(%nyx_string* %5, { i64, i8* }* %6)
  %10 = alloca %nyx_string*
  store %nyx_string* %9, %nyx_string** %10
  %11 = load %nyx_string*, %nyx_string** %10
  %12 = getelementptr [14 x i8], [14 x i8]* @.str2, i32 0, i32 0
  %13 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str2.c, i8* %12)
  %14 = call i1 @nyx_string_equals(%nyx_string* %11, %nyx_string* %13)
  %15 = getelementptr [17 x i8], [17 x i8]* @.str3, i32 0, i32 0
  %16 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str3.c, i8* %15)
  %17 = call i8* @nyx_string_to_cstr(%nyx_string* %16)
  br i1 %14, label %assert_pass_0, label %assert_fail_0
assert_fail_0:
  call void @nyx_assert_fail(i8* %17)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_0
assert_pass_0:
  %18 = getelementptr [17 x i8], [17 x i8]* @.str4, i32 0, i32 0
  %19 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str4.c, i8* %18)
  %20 = call i8* @nyx_string_to_cstr(%nyx_string* %19)
  call void @nyx_print_string(i8* %20)
  %21 = alloca i64
  store i64 25, i64* %21
  %22 = getelementptr [8 x i8], [8 x i8]* @.str5, i32 0, i32 0
  %23 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str5.c, i8* %22)
  %24 = call { i64, i8* }* @nyx_array_new_ptr()
  %25 = load i64, i64* %21
  %26 = call %nyx_string* @nyx_string_from_int(i64 %25)
  %27 = bitcast %nyx_string* %26 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %24, i8* %27)
  %28 = call %nyx_string* @nyx_format(%nyx_string* %23, { i64, i8* }* %24)
  %29 = alloca %nyx_string*
  store %nyx_string* %28, %nyx_string** %29
  %30 = load %nyx_string*, %nyx_string** %29
  %31 = getelementptr [8 x i8], [8 x i8]* @.str6, i32 0, i32 0
  %32 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str6.c, i8* %31)
  %33 = call i1 @nyx_string_equals(%nyx_string* %30, %nyx_string* %32)
  %34 = getelementptr [17 x i8], [17 x i8]* @.str7, i32 0, i32 0
  %35 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str7.c, i8* %34)
  %36 = call i8* @nyx_string_to_cstr(%nyx_string* %35)
  br i1 %33, label %assert_pass_1, label %assert_fail_1
assert_fail_1:
  call void @nyx_assert_fail(i8* %36)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_1
assert_pass_1:
  %37 = getelementptr [15 x i8], [15 x i8]* @.str8, i32 0, i32 0
  %38 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str8.c, i8* %37)
  %39 = call i8* @nyx_string_to_cstr(%nyx_string* %38)
  call void @nyx_print_string(i8* %39)
  %40 = getelementptr [19 x i8], [19 x i8]* @.str9, i32 0, i32 0
  %41 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str9.c, i8* %40)
  %42 = call { i64, i8* }* @nyx_array_new_ptr()
  %43 = load %nyx_string*, %nyx_string** %3
  %44 = bitcast %nyx_string* %43 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %42, i8* %44)
  %45 = load i64, i64* %21
  %46 = call %nyx_string* @nyx_string_from_int(i64 %45)
  %47 = bitcast %nyx_string* %46 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %42, i8* %47)
  %48 = call %nyx_string* @nyx_format(%nyx_string* %41, { i64, i8* }* %42)
  %49 = alloca %nyx_string*
  store %nyx_string* %48, %nyx_string** %49
  %50 = load %nyx_string*, %nyx_string** %49
  %51 = getelementptr [22 x i8], [22 x i8]* @.str10, i32 0, i32 0
  %52 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str10.c, i8* %51)
  %53 = call i1 @nyx_string_equals(%nyx_string* %50, %nyx_string* %52)
  %54 = getelementptr [17 x i8], [17 x i8]* @.str11, i32 0, i32 0
  %55 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str11.c, i8* %54)
  %56 = call i8* @nyx_string_to_cstr(%nyx_string* %55)
  br i1 %53, label %assert_pass_2, label %assert_fail_2
assert_fail_2:
  call void @nyx_assert_fail(i8* %56)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_2
assert_pass_2:
  %57 = getelementptr [21 x i8], [21 x i8]* @.str12, i32 0, i32 0
  %58 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str12.c, i8* %57)
  %59 = call i8* @nyx_string_to_cstr(%nyx_string* %58)
  call void @nyx_print_string(i8* %59)
  %60 = alloca double
  store double 3.14, double* %60
  %61 = getelementptr [9 x i8], [9 x i8]* @.str13, i32 0, i32 0
  %62 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str13.c, i8* %61)
  %63 = call { i64, i8* }* @nyx_array_new_ptr()
  %64 = load double, double* %60
  %65 = call %nyx_string* @nyx_string_from_float(double %64)
  %66 = bitcast %nyx_string* %65 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %63, i8* %66)
  %67 = call %nyx_string* @nyx_format(%nyx_string* %62, { i64, i8* }* %63)
  %68 = alloca %nyx_string*
  store %nyx_string* %67, %nyx_string** %68
  %69 = load %nyx_string*, %nyx_string** %68
  %70 = getelementptr [11 x i8], [11 x i8]* @.str14, i32 0, i32 0
  %71 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str14.c, i8* %70)
  %72 = call i1 @nyx_string_equals(%nyx_string* %69, %nyx_string* %71)
  %73 = getelementptr [17 x i8], [17 x i8]* @.str15, i32 0, i32 0
  %74 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str15.c, i8* %73)
  %75 = call i8* @nyx_string_to_cstr(%nyx_string* %74)
  br i1 %72, label %assert_pass_3, label %assert_fail_3
assert_fail_3:
  call void @nyx_assert_fail(i8* %75)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_3
assert_pass_3:
  %76 = getelementptr [17 x i8], [17 x i8]* @.str16, i32 0, i32 0
  %77 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str16.c, i8* %76)
  %78 = call i8* @nyx_string_to_cstr(%nyx_string* %77)
  call void @nyx_print_string(i8* %78)
  %79 = alloca i1
  store i1 1, i1* %79
  %80 = getelementptr [11 x i8], [11 x i8]* @.str17, i32 0, i32 0
  %81 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str17.c, i8* %80)
  %82 = call { i64, i8* }* @nyx_array_new_ptr()
  %83 = load i1, i1* %79
  %84 = zext i1 %83 to i64
  %85 = call %nyx_string* @nyx_string_from_bool(i64 %84)
  %86 = bitcast %nyx_string* %85 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %82, i8* %86)
  %87 = call %nyx_string* @nyx_format(%nyx_string* %81, { i64, i8* }* %82)
  %88 = alloca %nyx_string*
  store %nyx_string* %87, %nyx_string** %88
  %89 = load %nyx_string*, %nyx_string** %88
  %90 = getelementptr [13 x i8], [13 x i8]* @.str18, i32 0, i32 0
  %91 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str18.c, i8* %90)
  %92 = call i1 @nyx_string_equals(%nyx_string* %89, %nyx_string* %91)
  %93 = getelementptr [17 x i8], [17 x i8]* @.str19, i32 0, i32 0
  %94 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str19.c, i8* %93)
  %95 = call i8* @nyx_string_to_cstr(%nyx_string* %94)
  br i1 %92, label %assert_pass_4, label %assert_fail_4
assert_fail_4:
  call void @nyx_assert_fail(i8* %95)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_4
assert_pass_4:
  %96 = getelementptr [16 x i8], [16 x i8]* @.str20, i32 0, i32 0
  %97 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str20.c, i8* %96)
  %98 = call i8* @nyx_string_to_cstr(%nyx_string* %97)
  call void @nyx_print_string(i8* %98)
  %99 = getelementptr [21 x i8], [21 x i8]* @.str21, i32 0, i32 0
  %100 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str21.c, i8* %99)
  %101 = call { i64, i8* }* @nyx_array_new_ptr()
  %102 = call %nyx_string* @nyx_format(%nyx_string* %100, { i64, i8* }* %101)
  %103 = alloca %nyx_string*
  store %nyx_string* %102, %nyx_string** %103
  %104 = load %nyx_string*, %nyx_string** %103
  %105 = getelementptr [21 x i8], [21 x i8]* @.str22, i32 0, i32 0
  %106 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str22.c, i8* %105)
  %107 = call i1 @nyx_string_equals(%nyx_string* %104, %nyx_string* %106)
  %108 = getelementptr [17 x i8], [17 x i8]* @.str23, i32 0, i32 0
  %109 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str23.c, i8* %108)
  %110 = call i8* @nyx_string_to_cstr(%nyx_string* %109)
  br i1 %107, label %assert_pass_5, label %assert_fail_5
assert_fail_5:
  call void @nyx_assert_fail(i8* %110)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_5
assert_pass_5:
  %111 = getelementptr [20 x i8], [20 x i8]* @.str24, i32 0, i32 0
  %112 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str24.c, i8* %111)
  %113 = call i8* @nyx_string_to_cstr(%nyx_string* %112)
  call void @nyx_print_string(i8* %113)
  %114 = getelementptr [6 x i8], [6 x i8]* @.str25, i32 0, i32 0
  %115 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str25.c, i8* %114)
  %116 = alloca %nyx_string*
  store %nyx_string* %115, %nyx_string** %116
  %117 = getelementptr [6 x i8], [6 x i8]* @.str26, i32 0, i32 0
  %118 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str26.c, i8* %117)
  %119 = alloca %nyx_string*
  store %nyx_string* %118, %nyx_string** %119
  %120 = getelementptr [5 x i8], [5 x i8]* @.str27, i32 0, i32 0
  %121 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str27.c, i8* %120)
  %122 = call { i64, i8* }* @nyx_array_new_ptr()
  %123 = load %nyx_string*, %nyx_string** %116
  %124 = bitcast %nyx_string* %123 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %122, i8* %124)
  %125 = load %nyx_string*, %nyx_string** %119
  %126 = bitcast %nyx_string* %125 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %122, i8* %126)
  %127 = call %nyx_string* @nyx_format(%nyx_string* %121, { i64, i8* }* %122)
  %128 = alloca %nyx_string*
  store %nyx_string* %127, %nyx_string** %128
  %129 = load %nyx_string*, %nyx_string** %128
  %130 = getelementptr [11 x i8], [11 x i8]* @.str28, i32 0, i32 0
  %131 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str28.c, i8* %130)
  %132 = call i1 @nyx_string_equals(%nyx_string* %129, %nyx_string* %131)
  %133 = getelementptr [17 x i8], [17 x i8]* @.str29, i32 0, i32 0
  %134 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str29.c, i8* %133)
  %135 = call i8* @nyx_string_to_cstr(%nyx_string* %134)
  br i1 %132, label %assert_pass_6, label %assert_fail_6
assert_fail_6:
  call void @nyx_assert_fail(i8* %135)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_6
assert_pass_6:
  %136 = getelementptr [26 x i8], [26 x i8]* @.str30, i32 0, i32 0
  %137 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str30.c, i8* %136)
  %138 = call i8* @nyx_string_to_cstr(%nyx_string* %137)
  call void @nyx_print_string(i8* %138)
  %139 = getelementptr [3 x i8], [3 x i8]* @.str31, i32 0, i32 0
  %140 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str31.c, i8* %139)
  %141 = call { i64, i8* }* @nyx_array_new_ptr()
  %142 = load %nyx_string*, %nyx_string** %3
  %143 = bitcast %nyx_string* %142 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %141, i8* %143)
  %144 = call %nyx_string* @nyx_format(%nyx_string* %140, { i64, i8* }* %141)
  %145 = alloca %nyx_string*
  store %nyx_string* %144, %nyx_string** %145
  %146 = load %nyx_string*, %nyx_string** %145
  %147 = getelementptr [6 x i8], [6 x i8]* @.str32, i32 0, i32 0
  %148 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str32.c, i8* %147)
  %149 = call i1 @nyx_string_equals(%nyx_string* %146, %nyx_string* %148)
  %150 = getelementptr [17 x i8], [17 x i8]* @.str33, i32 0, i32 0
  %151 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str33.c, i8* %150)
  %152 = call i8* @nyx_string_to_cstr(%nyx_string* %151)
  br i1 %149, label %assert_pass_7, label %assert_fail_7
assert_fail_7:
  call void @nyx_assert_fail(i8* %152)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_7
assert_pass_7:
  %153 = getelementptr [23 x i8], [23 x i8]* @.str34, i32 0, i32 0
  %154 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str34.c, i8* %153)
  %155 = call i8* @nyx_string_to_cstr(%nyx_string* %154)
  call void @nyx_print_string(i8* %155)
  %156 = getelementptr [20 x i8], [20 x i8]* @.str35, i32 0, i32 0
  %157 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str35.c, i8* %156)
  %158 = call i8* @nyx_string_to_cstr(%nyx_string* %157)
  call void @nyx_print_string(i8* %158)
  ret i64 0
}


attributes #0 = { returns_twice }

