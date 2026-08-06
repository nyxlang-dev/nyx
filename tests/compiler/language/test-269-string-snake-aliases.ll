source_filename = "/home/admin/nyx/lang/tests/compiler/language/test-269-string-snake-aliases.nx"
target triple = "x86_64-pc-linux-gnu"

@.str0 = private unnamed_addr constant [12 x i8] c"hello world\00"
@.str0.c = internal global %nyx_string* null
@.str1 = private unnamed_addr constant [6 x i8] c"hello\00"
@.str1.c = internal global %nyx_string* null
@.str2 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str2.c = internal global %nyx_string* null
@.str3 = private unnamed_addr constant [6 x i8] c"world\00"
@.str3.c = internal global %nyx_string* null
@.str4 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str4.c = internal global %nyx_string* null
@.str5 = private unnamed_addr constant [6 x i8] c"world\00"
@.str5.c = internal global %nyx_string* null
@.str6 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str6.c = internal global %nyx_string* null
@.str7 = private unnamed_addr constant [6 x i8] c"hello\00"
@.str7.c = internal global %nyx_string* null
@.str8 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str8.c = internal global %nyx_string* null
@.str9 = private unnamed_addr constant [12 x i8] c"HELLO WORLD\00"
@.str9.c = internal global %nyx_string* null
@.str10 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str10.c = internal global %nyx_string* null
@.str11 = private unnamed_addr constant [6 x i8] c"HeLLo\00"
@.str11.c = internal global %nyx_string* null
@.str12 = private unnamed_addr constant [6 x i8] c"hello\00"
@.str12.c = internal global %nyx_string* null
@.str13 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str13.c = internal global %nyx_string* null
@.str14 = private unnamed_addr constant [3 x i8] c"he\00"
@.str14.c = internal global %nyx_string* null
@.str15 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str15.c = internal global %nyx_string* null
@.str16 = private unnamed_addr constant [3 x i8] c"ld\00"
@.str16.c = internal global %nyx_string* null
@.str17 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str17.c = internal global %nyx_string* null
@.str18 = private unnamed_addr constant [6 x i8] c"HELLO\00"
@.str18.c = internal global %nyx_string* null
@.str19 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str19.c = internal global %nyx_string* null
@.str20 = private unnamed_addr constant [6 x i8] c"hello\00"
@.str20.c = internal global %nyx_string* null
@.str21 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str21.c = internal global %nyx_string* null
@.str22 = private unnamed_addr constant [2 x i8] c" \00"
@.str22.c = internal global %nyx_string* null
@.str23 = private unnamed_addr constant [3 x i8] c"he\00"
@.str23.c = internal global %nyx_string* null
@.str24 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str24.c = internal global %nyx_string* null
@.str25 = private unnamed_addr constant [3 x i8] c"ld\00"
@.str25.c = internal global %nyx_string* null
@.str26 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str26.c = internal global %nyx_string* null
@.str27 = private unnamed_addr constant [17 x i8] c"snake aliases OK\00"
@.str27.c = internal global %nyx_string* null
@__nyx_test_failed = external global i64
@__nyx_test_mode = external global i64
; Nyx Compiler Bootstrap v3.0
; Generated from: /home/admin/nyx/lang/tests/compiler/language/test-269-string-snake-aliases.nx

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
  %1 = getelementptr [12 x i8], [12 x i8]* @.str0, i32 0, i32 0
  %2 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str0.c, i8* %1)
  %3 = alloca %nyx_string*
  store %nyx_string* %2, %nyx_string** %3
  %4 = load %nyx_string*, %nyx_string** %3
  %5 = getelementptr [6 x i8], [6 x i8]* @.str1, i32 0, i32 0
  %6 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1.c, i8* %5)
  %7 = call i1 @nyx_string_starts_with(%nyx_string* %4, %nyx_string* %6)
  %8 = getelementptr [17 x i8], [17 x i8]* @.str2, i32 0, i32 0
  %9 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str2.c, i8* %8)
  %10 = call i8* @nyx_string_to_cstr(%nyx_string* %9)
  br i1 %7, label %assert_pass_0, label %assert_fail_0
assert_fail_0:
  call void @nyx_assert_fail(i8* %10)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_0
assert_pass_0:
  %11 = load %nyx_string*, %nyx_string** %3
  %12 = getelementptr [6 x i8], [6 x i8]* @.str3, i32 0, i32 0
  %13 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str3.c, i8* %12)
  %14 = call i1 @nyx_string_starts_with(%nyx_string* %11, %nyx_string* %13)
  %15 = xor i1 %14, true
  %16 = getelementptr [17 x i8], [17 x i8]* @.str4, i32 0, i32 0
  %17 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str4.c, i8* %16)
  %18 = call i8* @nyx_string_to_cstr(%nyx_string* %17)
  br i1 %15, label %assert_pass_1, label %assert_fail_1
assert_fail_1:
  call void @nyx_assert_fail(i8* %18)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_1
assert_pass_1:
  %19 = load %nyx_string*, %nyx_string** %3
  %20 = getelementptr [6 x i8], [6 x i8]* @.str5, i32 0, i32 0
  %21 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str5.c, i8* %20)
  %22 = call i1 @nyx_string_ends_with(%nyx_string* %19, %nyx_string* %21)
  %23 = getelementptr [17 x i8], [17 x i8]* @.str6, i32 0, i32 0
  %24 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str6.c, i8* %23)
  %25 = call i8* @nyx_string_to_cstr(%nyx_string* %24)
  br i1 %22, label %assert_pass_2, label %assert_fail_2
assert_fail_2:
  call void @nyx_assert_fail(i8* %25)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_2
assert_pass_2:
  %26 = load %nyx_string*, %nyx_string** %3
  %27 = getelementptr [6 x i8], [6 x i8]* @.str7, i32 0, i32 0
  %28 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str7.c, i8* %27)
  %29 = call i1 @nyx_string_ends_with(%nyx_string* %26, %nyx_string* %28)
  %30 = xor i1 %29, true
  %31 = getelementptr [17 x i8], [17 x i8]* @.str8, i32 0, i32 0
  %32 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str8.c, i8* %31)
  %33 = call i8* @nyx_string_to_cstr(%nyx_string* %32)
  br i1 %30, label %assert_pass_3, label %assert_fail_3
assert_fail_3:
  call void @nyx_assert_fail(i8* %33)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_3
assert_pass_3:
  %34 = load %nyx_string*, %nyx_string** %3
  %35 = call %nyx_string* @nyx_string_to_upper(%nyx_string* %34)
  %36 = getelementptr [12 x i8], [12 x i8]* @.str9, i32 0, i32 0
  %37 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str9.c, i8* %36)
  %38 = call i1 @nyx_string_equals(%nyx_string* %35, %nyx_string* %37)
  %39 = getelementptr [17 x i8], [17 x i8]* @.str10, i32 0, i32 0
  %40 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str10.c, i8* %39)
  %41 = call i8* @nyx_string_to_cstr(%nyx_string* %40)
  br i1 %38, label %assert_pass_4, label %assert_fail_4
assert_fail_4:
  call void @nyx_assert_fail(i8* %41)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_4
assert_pass_4:
  %42 = getelementptr [6 x i8], [6 x i8]* @.str11, i32 0, i32 0
  %43 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str11.c, i8* %42)
  %44 = alloca %nyx_string*
  store %nyx_string* %43, %nyx_string** %44
  %45 = load %nyx_string*, %nyx_string** %44
  %46 = call %nyx_string* @nyx_string_to_lower(%nyx_string* %45)
  %47 = getelementptr [6 x i8], [6 x i8]* @.str12, i32 0, i32 0
  %48 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str12.c, i8* %47)
  %49 = call i1 @nyx_string_equals(%nyx_string* %46, %nyx_string* %48)
  %50 = getelementptr [17 x i8], [17 x i8]* @.str13, i32 0, i32 0
  %51 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str13.c, i8* %50)
  %52 = call i8* @nyx_string_to_cstr(%nyx_string* %51)
  br i1 %49, label %assert_pass_5, label %assert_fail_5
assert_fail_5:
  call void @nyx_assert_fail(i8* %52)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_5
assert_pass_5:
  %53 = load %nyx_string*, %nyx_string** %3
  %54 = call %nyx_string* @nyx_string_substring(%nyx_string* %53, i64 0, i64 5)
  %55 = getelementptr [3 x i8], [3 x i8]* @.str14, i32 0, i32 0
  %56 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str14.c, i8* %55)
  %57 = call i1 @nyx_string_starts_with(%nyx_string* %54, %nyx_string* %56)
  %58 = getelementptr [17 x i8], [17 x i8]* @.str15, i32 0, i32 0
  %59 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str15.c, i8* %58)
  %60 = call i8* @nyx_string_to_cstr(%nyx_string* %59)
  br i1 %57, label %assert_pass_6, label %assert_fail_6
assert_fail_6:
  call void @nyx_assert_fail(i8* %60)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_6
assert_pass_6:
  %61 = load %nyx_string*, %nyx_string** %3
  %62 = call %nyx_string* @nyx_string_substring(%nyx_string* %61, i64 6, i64 11)
  %63 = getelementptr [3 x i8], [3 x i8]* @.str16, i32 0, i32 0
  %64 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str16.c, i8* %63)
  %65 = call i1 @nyx_string_ends_with(%nyx_string* %62, %nyx_string* %64)
  %66 = getelementptr [17 x i8], [17 x i8]* @.str17, i32 0, i32 0
  %67 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str17.c, i8* %66)
  %68 = call i8* @nyx_string_to_cstr(%nyx_string* %67)
  br i1 %65, label %assert_pass_7, label %assert_fail_7
assert_fail_7:
  call void @nyx_assert_fail(i8* %68)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_7
assert_pass_7:
  %69 = load %nyx_string*, %nyx_string** %3
  %70 = call %nyx_string* @nyx_string_substring(%nyx_string* %69, i64 0, i64 5)
  %71 = call %nyx_string* @nyx_string_to_upper(%nyx_string* %70)
  %72 = getelementptr [6 x i8], [6 x i8]* @.str18, i32 0, i32 0
  %73 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str18.c, i8* %72)
  %74 = call i1 @nyx_string_equals(%nyx_string* %71, %nyx_string* %73)
  %75 = getelementptr [17 x i8], [17 x i8]* @.str19, i32 0, i32 0
  %76 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str19.c, i8* %75)
  %77 = call i8* @nyx_string_to_cstr(%nyx_string* %76)
  br i1 %74, label %assert_pass_8, label %assert_fail_8
assert_fail_8:
  call void @nyx_assert_fail(i8* %77)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_8
assert_pass_8:
  %78 = load %nyx_string*, %nyx_string** %44
  %79 = call %nyx_string* @nyx_string_substring(%nyx_string* %78, i64 0, i64 5)
  %80 = call %nyx_string* @nyx_string_to_lower(%nyx_string* %79)
  %81 = getelementptr [6 x i8], [6 x i8]* @.str20, i32 0, i32 0
  %82 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str20.c, i8* %81)
  %83 = call i1 @nyx_string_equals(%nyx_string* %80, %nyx_string* %82)
  %84 = getelementptr [17 x i8], [17 x i8]* @.str21, i32 0, i32 0
  %85 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str21.c, i8* %84)
  %86 = call i8* @nyx_string_to_cstr(%nyx_string* %85)
  br i1 %83, label %assert_pass_9, label %assert_fail_9
assert_fail_9:
  call void @nyx_assert_fail(i8* %86)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_9
assert_pass_9:
  %87 = load %nyx_string*, %nyx_string** %3
  %88 = getelementptr [2 x i8], [2 x i8]* @.str22, i32 0, i32 0
  %89 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str22.c, i8* %88)
  %90 = call { i64, i8* }* @nyx_string_split(%nyx_string* %87, %nyx_string* %89)
  %91 = alloca { i64, i8* }*
  store { i64, i8* }* %90, { i64, i8* }** %91
  %92 = load { i64, i8* }*, { i64, i8* }** %91
  %93 = call i64 @nyx_array_get_checked({ i64, i8* }* %92, i64 0, i64 2)
  %94 = inttoptr i64 %93 to %nyx_string*
  %95 = getelementptr [3 x i8], [3 x i8]* @.str23, i32 0, i32 0
  %96 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str23.c, i8* %95)
  %97 = call i1 @nyx_string_starts_with(%nyx_string* %94, %nyx_string* %96)
  %98 = getelementptr [17 x i8], [17 x i8]* @.str24, i32 0, i32 0
  %99 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str24.c, i8* %98)
  %100 = call i8* @nyx_string_to_cstr(%nyx_string* %99)
  br i1 %97, label %assert_pass_10, label %assert_fail_10
assert_fail_10:
  call void @nyx_assert_fail(i8* %100)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_10
assert_pass_10:
  %101 = load { i64, i8* }*, { i64, i8* }** %91
  %102 = call i64 @nyx_array_get_checked({ i64, i8* }* %101, i64 1, i64 2)
  %103 = inttoptr i64 %102 to %nyx_string*
  %104 = getelementptr [3 x i8], [3 x i8]* @.str25, i32 0, i32 0
  %105 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str25.c, i8* %104)
  %106 = call i1 @nyx_string_ends_with(%nyx_string* %103, %nyx_string* %105)
  %107 = getelementptr [17 x i8], [17 x i8]* @.str26, i32 0, i32 0
  %108 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str26.c, i8* %107)
  %109 = call i8* @nyx_string_to_cstr(%nyx_string* %108)
  br i1 %106, label %assert_pass_11, label %assert_fail_11
assert_fail_11:
  call void @nyx_assert_fail(i8* %109)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_11
assert_pass_11:
  %110 = getelementptr [17 x i8], [17 x i8]* @.str27, i32 0, i32 0
  %111 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str27.c, i8* %110)
  %112 = call i8* @nyx_string_to_cstr(%nyx_string* %111)
  call void @nyx_print_string(i8* %112)
  ret i64 0
}


attributes #0 = { returns_twice }

