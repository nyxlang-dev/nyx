source_filename = "/home/admin/nyx/lang/tests/compiler/language/test-268-string-binary-safe.nx"
target triple = "x86_64-pc-linux-gnu"

@.str0 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str0.c = internal global %nyx_string* null
@.str1 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str1.c = internal global %nyx_string* null
@.str2 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str2.c = internal global %nyx_string* null
@.str3 = private unnamed_addr constant [3 x i8] c"cd\00"
@.str3.c = internal global %nyx_string* null
@.str4 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str4.c = internal global %nyx_string* null
@.str5 = private unnamed_addr constant [3 x i8] c"cd\00"
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
@.str14 = private unnamed_addr constant [2 x i8] c",\00"
@.str14.c = internal global %nyx_string* null
@.str15 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str15.c = internal global %nyx_string* null
@.str16 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str16.c = internal global %nyx_string* null
@.str17 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str17.c = internal global %nyx_string* null
@.str18 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str18.c = internal global %nyx_string* null
@.str19 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str19.c = internal global %nyx_string* null
@.str20 = private unnamed_addr constant [2 x i8] c"-\00"
@.str20.c = internal global %nyx_string* null
@.str21 = private unnamed_addr constant [2 x i8] c"+\00"
@.str21.c = internal global %nyx_string* null
@.str22 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str22.c = internal global %nyx_string* null
@.str23 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str23.c = internal global %nyx_string* null
@.str24 = private unnamed_addr constant [15 x i8] c"binary-safe OK\00"
@.str24.c = internal global %nyx_string* null
@__nyx_test_failed = external global i64
@__nyx_test_mode = external global i64
; Nyx Compiler Bootstrap v3.0
; Generated from: /home/admin/nyx/lang/tests/compiler/language/test-268-string-binary-safe.nx

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
  %1 = call { i64, i8* }* @nyx_array_new_ptr()
  call void @nyx_array_push_tagged({ i64, i8* }* %1, i64 97, i64 1)
  call void @nyx_array_push_tagged({ i64, i8* }* %1, i64 0, i64 1)
  call void @nyx_array_push_tagged({ i64, i8* }* %1, i64 120, i64 1)
  %2 = alloca { i64, i8* }*
  store { i64, i8* }* %1, { i64, i8* }** %2
  %3 = call { i64, i8* }* @nyx_array_new_ptr()
  call void @nyx_array_push_tagged({ i64, i8* }* %3, i64 97, i64 1)
  call void @nyx_array_push_tagged({ i64, i8* }* %3, i64 0, i64 1)
  call void @nyx_array_push_tagged({ i64, i8* }* %3, i64 121, i64 1)
  %4 = alloca { i64, i8* }*
  store { i64, i8* }* %3, { i64, i8* }** %4
  %5 = load { i64, i8* }*, { i64, i8* }** %2
  %6 = call %nyx_string* @nyx_string_from_bytes({ i64, i8* }* %5, i64 0, i64 3)
  %7 = alloca %nyx_string*
  store %nyx_string* %6, %nyx_string** %7
  %8 = load { i64, i8* }*, { i64, i8* }** %4
  %9 = call %nyx_string* @nyx_string_from_bytes({ i64, i8* }* %8, i64 0, i64 3)
  %10 = alloca %nyx_string*
  store %nyx_string* %9, %nyx_string** %10
  %11 = load { i64, i8* }*, { i64, i8* }** %2
  %12 = call %nyx_string* @nyx_string_from_bytes({ i64, i8* }* %11, i64 0, i64 3)
  %13 = alloca %nyx_string*
  store %nyx_string* %12, %nyx_string** %13
  %14 = load %nyx_string*, %nyx_string** %7
  %15 = call i64 @nyx_string_byte_length(%nyx_string* %14)
  %16 = icmp eq i64 %15, 3
  %17 = getelementptr [17 x i8], [17 x i8]* @.str0, i32 0, i32 0
  %18 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str0.c, i8* %17)
  %19 = call i8* @nyx_string_to_cstr(%nyx_string* %18)
  br i1 %16, label %assert_pass_0, label %assert_fail_0
assert_fail_0:
  call void @nyx_assert_fail(i8* %19)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_0
assert_pass_0:
  %20 = load %nyx_string*, %nyx_string** %7
  %21 = load %nyx_string*, %nyx_string** %13
  %22 = call i1 @nyx_string_equals(%nyx_string* %20, %nyx_string* %21)
  %23 = getelementptr [17 x i8], [17 x i8]* @.str1, i32 0, i32 0
  %24 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1.c, i8* %23)
  %25 = call i8* @nyx_string_to_cstr(%nyx_string* %24)
  br i1 %22, label %assert_pass_1, label %assert_fail_1
assert_fail_1:
  call void @nyx_assert_fail(i8* %25)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_1
assert_pass_1:
  %26 = load %nyx_string*, %nyx_string** %7
  %27 = load %nyx_string*, %nyx_string** %10
  %28 = call i1 @nyx_string_equals(%nyx_string* %26, %nyx_string* %27)
  %29 = xor i1 %28, true
  %30 = getelementptr [17 x i8], [17 x i8]* @.str2, i32 0, i32 0
  %31 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str2.c, i8* %30)
  %32 = call i8* @nyx_string_to_cstr(%nyx_string* %31)
  br i1 %29, label %assert_pass_2, label %assert_fail_2
assert_fail_2:
  call void @nyx_assert_fail(i8* %32)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_2
assert_pass_2:
  %33 = call { i64, i8* }* @nyx_array_new_ptr()
  call void @nyx_array_push_tagged({ i64, i8* }* %33, i64 97, i64 1)
  call void @nyx_array_push_tagged({ i64, i8* }* %33, i64 98, i64 1)
  call void @nyx_array_push_tagged({ i64, i8* }* %33, i64 0, i64 1)
  call void @nyx_array_push_tagged({ i64, i8* }* %33, i64 99, i64 1)
  call void @nyx_array_push_tagged({ i64, i8* }* %33, i64 100, i64 1)
  %34 = alloca { i64, i8* }*
  store { i64, i8* }* %33, { i64, i8* }** %34
  %35 = load { i64, i8* }*, { i64, i8* }** %34
  %36 = call %nyx_string* @nyx_string_from_bytes({ i64, i8* }* %35, i64 0, i64 5)
  %37 = alloca %nyx_string*
  store %nyx_string* %36, %nyx_string** %37
  %38 = load %nyx_string*, %nyx_string** %37
  %39 = getelementptr [3 x i8], [3 x i8]* @.str3, i32 0, i32 0
  %40 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str3.c, i8* %39)
  %41 = call i64 @nyx_string_index_of(%nyx_string* %38, %nyx_string* %40)
  %42 = icmp eq i64 %41, 3
  %43 = getelementptr [17 x i8], [17 x i8]* @.str4, i32 0, i32 0
  %44 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str4.c, i8* %43)
  %45 = call i8* @nyx_string_to_cstr(%nyx_string* %44)
  br i1 %42, label %assert_pass_3, label %assert_fail_3
assert_fail_3:
  call void @nyx_assert_fail(i8* %45)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_3
assert_pass_3:
  %46 = load %nyx_string*, %nyx_string** %37
  %47 = getelementptr [3 x i8], [3 x i8]* @.str5, i32 0, i32 0
  %48 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str5.c, i8* %47)
  %49 = call i1 @nyx_string_contains(%nyx_string* %46, %nyx_string* %48)
  %50 = getelementptr [17 x i8], [17 x i8]* @.str6, i32 0, i32 0
  %51 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str6.c, i8* %50)
  %52 = call i8* @nyx_string_to_cstr(%nyx_string* %51)
  br i1 %49, label %assert_pass_4, label %assert_fail_4
assert_fail_4:
  call void @nyx_assert_fail(i8* %52)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_4
assert_pass_4:
  %53 = call { i64, i8* }* @nyx_array_new_ptr()
  call void @nyx_array_push_tagged({ i64, i8* }* %53, i64 98, i64 1)
  call void @nyx_array_push_tagged({ i64, i8* }* %53, i64 0, i64 1)
  call void @nyx_array_push_tagged({ i64, i8* }* %53, i64 99, i64 1)
  %54 = alloca { i64, i8* }*
  store { i64, i8* }* %53, { i64, i8* }** %54
  %55 = load { i64, i8* }*, { i64, i8* }** %54
  %56 = call %nyx_string* @nyx_string_from_bytes({ i64, i8* }* %55, i64 0, i64 3)
  %57 = alloca %nyx_string*
  store %nyx_string* %56, %nyx_string** %57
  %58 = load %nyx_string*, %nyx_string** %37
  %59 = load %nyx_string*, %nyx_string** %57
  %60 = call i64 @nyx_string_index_of(%nyx_string* %58, %nyx_string* %59)
  %61 = icmp eq i64 %60, 1
  %62 = getelementptr [17 x i8], [17 x i8]* @.str7, i32 0, i32 0
  %63 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str7.c, i8* %62)
  %64 = call i8* @nyx_string_to_cstr(%nyx_string* %63)
  br i1 %61, label %assert_pass_5, label %assert_fail_5
assert_fail_5:
  call void @nyx_assert_fail(i8* %64)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_5
assert_pass_5:
  %65 = call { i64, i8* }* @nyx_array_new_ptr()
  call void @nyx_array_push_tagged({ i64, i8* }* %65, i64 98, i64 1)
  call void @nyx_array_push_tagged({ i64, i8* }* %65, i64 0, i64 1)
  call void @nyx_array_push_tagged({ i64, i8* }* %65, i64 100, i64 1)
  %66 = alloca { i64, i8* }*
  store { i64, i8* }* %65, { i64, i8* }** %66
  %67 = load { i64, i8* }*, { i64, i8* }** %66
  %68 = call %nyx_string* @nyx_string_from_bytes({ i64, i8* }* %67, i64 0, i64 3)
  %69 = alloca %nyx_string*
  store %nyx_string* %68, %nyx_string** %69
  %70 = load %nyx_string*, %nyx_string** %37
  %71 = load %nyx_string*, %nyx_string** %69
  %72 = call i64 @nyx_string_index_of(%nyx_string* %70, %nyx_string* %71)
  %73 = sub i64 0, 1
  %74 = icmp eq i64 %72, %73
  %75 = getelementptr [17 x i8], [17 x i8]* @.str8, i32 0, i32 0
  %76 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str8.c, i8* %75)
  %77 = call i8* @nyx_string_to_cstr(%nyx_string* %76)
  br i1 %74, label %assert_pass_6, label %assert_fail_6
assert_fail_6:
  call void @nyx_assert_fail(i8* %77)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_6
assert_pass_6:
  %78 = load %nyx_string*, %nyx_string** %37
  %79 = load %nyx_string*, %nyx_string** %69
  %80 = call i1 @nyx_string_contains(%nyx_string* %78, %nyx_string* %79)
  %81 = xor i1 %80, true
  %82 = getelementptr [17 x i8], [17 x i8]* @.str9, i32 0, i32 0
  %83 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str9.c, i8* %82)
  %84 = call i8* @nyx_string_to_cstr(%nyx_string* %83)
  br i1 %81, label %assert_pass_7, label %assert_fail_7
assert_fail_7:
  call void @nyx_assert_fail(i8* %84)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_7
assert_pass_7:
  %85 = call { i64, i8* }* @nyx_array_new_ptr()
  call void @nyx_array_push_tagged({ i64, i8* }* %85, i64 97, i64 1)
  call void @nyx_array_push_tagged({ i64, i8* }* %85, i64 0, i64 1)
  call void @nyx_array_push_tagged({ i64, i8* }* %85, i64 120, i64 1)
  call void @nyx_array_push_tagged({ i64, i8* }* %85, i64 122, i64 1)
  %86 = alloca { i64, i8* }*
  store { i64, i8* }* %85, { i64, i8* }** %86
  %87 = load { i64, i8* }*, { i64, i8* }** %86
  %88 = call %nyx_string* @nyx_string_from_bytes({ i64, i8* }* %87, i64 0, i64 4)
  %89 = alloca %nyx_string*
  store %nyx_string* %88, %nyx_string** %89
  %90 = load %nyx_string*, %nyx_string** %89
  %91 = load %nyx_string*, %nyx_string** %7
  %92 = call i1 @nyx_string_starts_with(%nyx_string* %90, %nyx_string* %91)
  %93 = getelementptr [17 x i8], [17 x i8]* @.str10, i32 0, i32 0
  %94 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str10.c, i8* %93)
  %95 = call i8* @nyx_string_to_cstr(%nyx_string* %94)
  br i1 %92, label %assert_pass_8, label %assert_fail_8
assert_fail_8:
  call void @nyx_assert_fail(i8* %95)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_8
assert_pass_8:
  %96 = load %nyx_string*, %nyx_string** %89
  %97 = load %nyx_string*, %nyx_string** %10
  %98 = call i1 @nyx_string_starts_with(%nyx_string* %96, %nyx_string* %97)
  %99 = xor i1 %98, true
  %100 = getelementptr [17 x i8], [17 x i8]* @.str11, i32 0, i32 0
  %101 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str11.c, i8* %100)
  %102 = call i8* @nyx_string_to_cstr(%nyx_string* %101)
  br i1 %99, label %assert_pass_9, label %assert_fail_9
assert_fail_9:
  call void @nyx_assert_fail(i8* %102)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_9
assert_pass_9:
  %103 = call { i64, i8* }* @nyx_array_new_ptr()
  call void @nyx_array_push_tagged({ i64, i8* }* %103, i64 122, i64 1)
  call void @nyx_array_push_tagged({ i64, i8* }* %103, i64 97, i64 1)
  call void @nyx_array_push_tagged({ i64, i8* }* %103, i64 0, i64 1)
  call void @nyx_array_push_tagged({ i64, i8* }* %103, i64 120, i64 1)
  %104 = alloca { i64, i8* }*
  store { i64, i8* }* %103, { i64, i8* }** %104
  %105 = load { i64, i8* }*, { i64, i8* }** %104
  %106 = call %nyx_string* @nyx_string_from_bytes({ i64, i8* }* %105, i64 0, i64 4)
  %107 = alloca %nyx_string*
  store %nyx_string* %106, %nyx_string** %107
  %108 = load %nyx_string*, %nyx_string** %107
  %109 = load %nyx_string*, %nyx_string** %7
  %110 = call i1 @nyx_string_ends_with(%nyx_string* %108, %nyx_string* %109)
  %111 = getelementptr [17 x i8], [17 x i8]* @.str12, i32 0, i32 0
  %112 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str12.c, i8* %111)
  %113 = call i8* @nyx_string_to_cstr(%nyx_string* %112)
  br i1 %110, label %assert_pass_10, label %assert_fail_10
assert_fail_10:
  call void @nyx_assert_fail(i8* %113)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_10
assert_pass_10:
  %114 = load %nyx_string*, %nyx_string** %107
  %115 = load %nyx_string*, %nyx_string** %10
  %116 = call i1 @nyx_string_ends_with(%nyx_string* %114, %nyx_string* %115)
  %117 = xor i1 %116, true
  %118 = getelementptr [17 x i8], [17 x i8]* @.str13, i32 0, i32 0
  %119 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str13.c, i8* %118)
  %120 = call i8* @nyx_string_to_cstr(%nyx_string* %119)
  br i1 %117, label %assert_pass_11, label %assert_fail_11
assert_fail_11:
  call void @nyx_assert_fail(i8* %120)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_11
assert_pass_11:
  %121 = call { i64, i8* }* @nyx_array_new_ptr()
  call void @nyx_array_push_tagged({ i64, i8* }* %121, i64 97, i64 1)
  call void @nyx_array_push_tagged({ i64, i8* }* %121, i64 0, i64 1)
  call void @nyx_array_push_tagged({ i64, i8* }* %121, i64 98, i64 1)
  call void @nyx_array_push_tagged({ i64, i8* }* %121, i64 44, i64 1)
  call void @nyx_array_push_tagged({ i64, i8* }* %121, i64 99, i64 1)
  call void @nyx_array_push_tagged({ i64, i8* }* %121, i64 44, i64 1)
  call void @nyx_array_push_tagged({ i64, i8* }* %121, i64 100, i64 1)
  call void @nyx_array_push_tagged({ i64, i8* }* %121, i64 0, i64 1)
  %122 = alloca { i64, i8* }*
  store { i64, i8* }* %121, { i64, i8* }** %122
  %123 = load { i64, i8* }*, { i64, i8* }** %122
  %124 = call %nyx_string* @nyx_string_from_bytes({ i64, i8* }* %123, i64 0, i64 8)
  %125 = alloca %nyx_string*
  store %nyx_string* %124, %nyx_string** %125
  %126 = load %nyx_string*, %nyx_string** %125
  %127 = getelementptr [2 x i8], [2 x i8]* @.str14, i32 0, i32 0
  %128 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str14.c, i8* %127)
  %129 = call { i64, i8* }* @nyx_string_split(%nyx_string* %126, %nyx_string* %128)
  %130 = alloca { i64, i8* }*
  store { i64, i8* }* %129, { i64, i8* }** %130
  %131 = load { i64, i8* }*, { i64, i8* }** %130
  %132 = call i64 @nyx_array_length({ i64, i8* }* %131)
  %133 = icmp eq i64 %132, 3
  %134 = getelementptr [17 x i8], [17 x i8]* @.str15, i32 0, i32 0
  %135 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str15.c, i8* %134)
  %136 = call i8* @nyx_string_to_cstr(%nyx_string* %135)
  br i1 %133, label %assert_pass_12, label %assert_fail_12
assert_fail_12:
  call void @nyx_assert_fail(i8* %136)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_12
assert_pass_12:
  %137 = load { i64, i8* }*, { i64, i8* }** %130
  %138 = call i64 @nyx_array_get_checked({ i64, i8* }* %137, i64 0, i64 2)
  %139 = inttoptr i64 %138 to %nyx_string*
  %140 = alloca %nyx_string*
  store %nyx_string* %139, %nyx_string** %140
  %141 = load { i64, i8* }*, { i64, i8* }** %130
  %142 = call i64 @nyx_array_get_checked({ i64, i8* }* %141, i64 2, i64 2)
  %143 = inttoptr i64 %142 to %nyx_string*
  %144 = alloca %nyx_string*
  store %nyx_string* %143, %nyx_string** %144
  %145 = load %nyx_string*, %nyx_string** %140
  %146 = call i64 @nyx_string_byte_length(%nyx_string* %145)
  %147 = icmp eq i64 %146, 3
  %148 = getelementptr [17 x i8], [17 x i8]* @.str16, i32 0, i32 0
  %149 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str16.c, i8* %148)
  %150 = call i8* @nyx_string_to_cstr(%nyx_string* %149)
  br i1 %147, label %assert_pass_13, label %assert_fail_13
assert_fail_13:
  call void @nyx_assert_fail(i8* %150)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_13
assert_pass_13:
  %151 = call { i64, i8* }* @nyx_array_new_ptr()
  call void @nyx_array_push_tagged({ i64, i8* }* %151, i64 97, i64 1)
  call void @nyx_array_push_tagged({ i64, i8* }* %151, i64 0, i64 1)
  call void @nyx_array_push_tagged({ i64, i8* }* %151, i64 98, i64 1)
  %152 = alloca { i64, i8* }*
  store { i64, i8* }* %151, { i64, i8* }** %152
  %153 = load { i64, i8* }*, { i64, i8* }** %152
  %154 = call %nyx_string* @nyx_string_from_bytes({ i64, i8* }* %153, i64 0, i64 3)
  %155 = alloca %nyx_string*
  store %nyx_string* %154, %nyx_string** %155
  %156 = load %nyx_string*, %nyx_string** %140
  %157 = load %nyx_string*, %nyx_string** %155
  %158 = call i1 @nyx_string_equals(%nyx_string* %156, %nyx_string* %157)
  %159 = getelementptr [17 x i8], [17 x i8]* @.str17, i32 0, i32 0
  %160 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str17.c, i8* %159)
  %161 = call i8* @nyx_string_to_cstr(%nyx_string* %160)
  br i1 %158, label %assert_pass_14, label %assert_fail_14
assert_fail_14:
  call void @nyx_assert_fail(i8* %161)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_14
assert_pass_14:
  %162 = load %nyx_string*, %nyx_string** %144
  %163 = call i64 @nyx_string_byte_length(%nyx_string* %162)
  %164 = icmp eq i64 %163, 2
  %165 = getelementptr [17 x i8], [17 x i8]* @.str18, i32 0, i32 0
  %166 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str18.c, i8* %165)
  %167 = call i8* @nyx_string_to_cstr(%nyx_string* %166)
  br i1 %164, label %assert_pass_15, label %assert_fail_15
assert_fail_15:
  call void @nyx_assert_fail(i8* %167)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_15
assert_pass_15:
  %168 = call { i64, i8* }* @nyx_array_new_ptr()
  call void @nyx_array_push_tagged({ i64, i8* }* %168, i64 100, i64 1)
  call void @nyx_array_push_tagged({ i64, i8* }* %168, i64 0, i64 1)
  %169 = alloca { i64, i8* }*
  store { i64, i8* }* %168, { i64, i8* }** %169
  %170 = load { i64, i8* }*, { i64, i8* }** %169
  %171 = call %nyx_string* @nyx_string_from_bytes({ i64, i8* }* %170, i64 0, i64 2)
  %172 = alloca %nyx_string*
  store %nyx_string* %171, %nyx_string** %172
  %173 = load %nyx_string*, %nyx_string** %144
  %174 = load %nyx_string*, %nyx_string** %172
  %175 = call i1 @nyx_string_equals(%nyx_string* %173, %nyx_string* %174)
  %176 = getelementptr [17 x i8], [17 x i8]* @.str19, i32 0, i32 0
  %177 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str19.c, i8* %176)
  %178 = call i8* @nyx_string_to_cstr(%nyx_string* %177)
  br i1 %175, label %assert_pass_16, label %assert_fail_16
assert_fail_16:
  call void @nyx_assert_fail(i8* %178)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_16
assert_pass_16:
  %179 = call { i64, i8* }* @nyx_array_new_ptr()
  call void @nyx_array_push_tagged({ i64, i8* }* %179, i64 97, i64 1)
  call void @nyx_array_push_tagged({ i64, i8* }* %179, i64 0, i64 1)
  call void @nyx_array_push_tagged({ i64, i8* }* %179, i64 98, i64 1)
  call void @nyx_array_push_tagged({ i64, i8* }* %179, i64 45, i64 1)
  call void @nyx_array_push_tagged({ i64, i8* }* %179, i64 99, i64 1)
  %180 = alloca { i64, i8* }*
  store { i64, i8* }* %179, { i64, i8* }** %180
  %181 = load { i64, i8* }*, { i64, i8* }** %180
  %182 = call %nyx_string* @nyx_string_from_bytes({ i64, i8* }* %181, i64 0, i64 5)
  %183 = alloca %nyx_string*
  store %nyx_string* %182, %nyx_string** %183
  %184 = load %nyx_string*, %nyx_string** %183
  %185 = getelementptr [2 x i8], [2 x i8]* @.str20, i32 0, i32 0
  %186 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str20.c, i8* %185)
  %187 = getelementptr [2 x i8], [2 x i8]* @.str21, i32 0, i32 0
  %188 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str21.c, i8* %187)
  %189 = call %nyx_string* @nyx_string_replace(%nyx_string* %184, %nyx_string* %186, %nyx_string* %188)
  %190 = alloca %nyx_string*
  store %nyx_string* %189, %nyx_string** %190
  %191 = load %nyx_string*, %nyx_string** %190
  %192 = call i64 @nyx_string_byte_length(%nyx_string* %191)
  %193 = icmp eq i64 %192, 5
  %194 = getelementptr [17 x i8], [17 x i8]* @.str22, i32 0, i32 0
  %195 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str22.c, i8* %194)
  %196 = call i8* @nyx_string_to_cstr(%nyx_string* %195)
  br i1 %193, label %assert_pass_17, label %assert_fail_17
assert_fail_17:
  call void @nyx_assert_fail(i8* %196)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_17
assert_pass_17:
  %197 = call { i64, i8* }* @nyx_array_new_ptr()
  call void @nyx_array_push_tagged({ i64, i8* }* %197, i64 97, i64 1)
  call void @nyx_array_push_tagged({ i64, i8* }* %197, i64 0, i64 1)
  call void @nyx_array_push_tagged({ i64, i8* }* %197, i64 98, i64 1)
  call void @nyx_array_push_tagged({ i64, i8* }* %197, i64 43, i64 1)
  call void @nyx_array_push_tagged({ i64, i8* }* %197, i64 99, i64 1)
  %198 = alloca { i64, i8* }*
  store { i64, i8* }* %197, { i64, i8* }** %198
  %199 = load { i64, i8* }*, { i64, i8* }** %198
  %200 = call %nyx_string* @nyx_string_from_bytes({ i64, i8* }* %199, i64 0, i64 5)
  %201 = alloca %nyx_string*
  store %nyx_string* %200, %nyx_string** %201
  %202 = load %nyx_string*, %nyx_string** %190
  %203 = load %nyx_string*, %nyx_string** %201
  %204 = call i1 @nyx_string_equals(%nyx_string* %202, %nyx_string* %203)
  %205 = getelementptr [17 x i8], [17 x i8]* @.str23, i32 0, i32 0
  %206 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str23.c, i8* %205)
  %207 = call i8* @nyx_string_to_cstr(%nyx_string* %206)
  br i1 %204, label %assert_pass_18, label %assert_fail_18
assert_fail_18:
  call void @nyx_assert_fail(i8* %207)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_18
assert_pass_18:
  %208 = getelementptr [15 x i8], [15 x i8]* @.str24, i32 0, i32 0
  %209 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str24.c, i8* %208)
  %210 = call i8* @nyx_string_to_cstr(%nyx_string* %209)
  call void @nyx_print_string(i8* %210)
  ret i64 0
}


attributes #0 = { returns_twice }

