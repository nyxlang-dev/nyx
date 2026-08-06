source_filename = "/home/admin/nyx/lang/tests/compiler/language/test-232-nested-arrays.nx"
target triple = "x86_64-pc-linux-gnu"

@.str0 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str0.c = internal global %nyx_string* null
@.str1 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str1.c = internal global %nyx_string* null
@.str2 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str2.c = internal global %nyx_string* null
@.str3 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str3.c = internal global %nyx_string* null
@.str4 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str4.c = internal global %nyx_string* null
@.str5 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str5.c = internal global %nyx_string* null
@.str6 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str6.c = internal global %nyx_string* null
@.str7 = private unnamed_addr constant [5 x i8] c"hola\00"
@.str7.c = internal global %nyx_string* null
@.str8 = private unnamed_addr constant [6 x i8] c"mundo\00"
@.str8.c = internal global %nyx_string* null
@.str9 = private unnamed_addr constant [4 x i8] c"nyx\00"
@.str9.c = internal global %nyx_string* null
@.str10 = private unnamed_addr constant [5 x i8] c"lang\00"
@.str10.c = internal global %nyx_string* null
@.str11 = private unnamed_addr constant [4 x i8] c"nyx\00"
@.str11.c = internal global %nyx_string* null
@.str12 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str12.c = internal global %nyx_string* null
@.str13 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str13.c = internal global %nyx_string* null
@.str14 = private unnamed_addr constant [17 x i8] c"nested arrays ok\00"
@.str14.c = internal global %nyx_string* null
@__nyx_test_failed = external global i64
@__nyx_test_mode = external global i64
; Nyx Compiler Bootstrap v3.0
; Generated from: /home/admin/nyx/lang/tests/compiler/language/test-232-nested-arrays.nx

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


define internal i64 @sum_row(
{ i64, i8* }* %row.param) {
  %row.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %row.param, { i64, i8* }** %row.ptr
  %1 = alloca i64
  store i64 0, i64* %1
  %2 = alloca i64
  store i64 0, i64* %2
  %3 = call i8* @llvm.stacksave()
  br label %while_cond0
while_cond0:
  %4 = load i64, i64* %2
  %5 = load { i64, i8* }*, { i64, i8* }** %row.ptr
  %6 = call i64 @nyx_array_length({ i64, i8* }* %5)
  %7 = icmp slt i64 %4, %6
  br i1 %7, label %while_body1, label %while_end2
while_body1:
  call void @llvm.stackrestore(i8* %3)
  %8 = load { i64, i8* }*, { i64, i8* }** %row.ptr
  %9 = load i64, i64* %2
  %10 = call i64 @nyx_array_get({ i64, i8* }* %8, i64 %9)
  %11 = alloca i64
  store i64 %10, i64* %11
  %12 = load i64, i64* %1
  %13 = load i64, i64* %11
  %14 = add i64 %12, %13
  store i64 %14, i64* %1
  %15 = load i64, i64* %2
  %16 = add i64 %15, 1
  store i64 %16, i64* %2
  br label %while_cond0
while_end2:
  %17 = load i64, i64* %1
  ret i64 %17
}

define i64 @main(
i32 %argc, i8** %argv) {
  call void @nyx_set_args(i32 %argc, i8** %argv)
  %18 = call { i64, i8* }* @nyx_array_new_ptr()
  %19 = call { i64, i8* }* @nyx_array_new_ptr()
  call void @nyx_array_push_tagged({ i64, i8* }* %19, i64 1, i64 1)
  call void @nyx_array_push_tagged({ i64, i8* }* %19, i64 2, i64 1)
  %20 = bitcast { i64, i8* }* %19 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %18, i8* %20)
  %21 = call { i64, i8* }* @nyx_array_new_ptr()
  call void @nyx_array_push_tagged({ i64, i8* }* %21, i64 3, i64 1)
  call void @nyx_array_push_tagged({ i64, i8* }* %21, i64 4, i64 1)
  %22 = bitcast { i64, i8* }* %21 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %18, i8* %22)
  %23 = call { i64, i8* }* @nyx_array_new_ptr()
  call void @nyx_array_push_tagged({ i64, i8* }* %23, i64 5, i64 1)
  call void @nyx_array_push_tagged({ i64, i8* }* %23, i64 6, i64 1)
  %24 = bitcast { i64, i8* }* %23 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %18, i8* %24)
  %25 = alloca { i64, i8* }*
  store { i64, i8* }* %18, { i64, i8* }** %25
  %26 = load { i64, i8* }*, { i64, i8* }** %25
  %27 = call i64 @nyx_array_get({ i64, i8* }* %26, i64 0)
  %28 = inttoptr i64 %27 to { i64, i8* }*
  %29 = call i64 @nyx_array_get({ i64, i8* }* %28, i64 0)
  %30 = icmp eq i64 %29, 1
  %31 = getelementptr [17 x i8], [17 x i8]* @.str0, i32 0, i32 0
  %32 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str0.c, i8* %31)
  %33 = call i8* @nyx_string_to_cstr(%nyx_string* %32)
  br i1 %30, label %assert_pass_3, label %assert_fail_3
assert_fail_3:
  call void @nyx_assert_fail(i8* %33)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_3
assert_pass_3:
  %34 = load { i64, i8* }*, { i64, i8* }** %25
  %35 = call i64 @nyx_array_get({ i64, i8* }* %34, i64 1)
  %36 = inttoptr i64 %35 to { i64, i8* }*
  %37 = call i64 @nyx_array_get({ i64, i8* }* %36, i64 1)
  %38 = icmp eq i64 %37, 4
  %39 = getelementptr [17 x i8], [17 x i8]* @.str1, i32 0, i32 0
  %40 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1.c, i8* %39)
  %41 = call i8* @nyx_string_to_cstr(%nyx_string* %40)
  br i1 %38, label %assert_pass_4, label %assert_fail_4
assert_fail_4:
  call void @nyx_assert_fail(i8* %41)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_4
assert_pass_4:
  %42 = load { i64, i8* }*, { i64, i8* }** %25
  %43 = call i64 @nyx_array_get({ i64, i8* }* %42, i64 2)
  %44 = inttoptr i64 %43 to { i64, i8* }*
  %45 = call i64 @nyx_array_get({ i64, i8* }* %44, i64 0)
  %46 = icmp eq i64 %45, 5
  %47 = getelementptr [17 x i8], [17 x i8]* @.str2, i32 0, i32 0
  %48 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str2.c, i8* %47)
  %49 = call i8* @nyx_string_to_cstr(%nyx_string* %48)
  br i1 %46, label %assert_pass_5, label %assert_fail_5
assert_fail_5:
  call void @nyx_assert_fail(i8* %49)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_5
assert_pass_5:
  %50 = load { i64, i8* }*, { i64, i8* }** %25
  %51 = call i64 @nyx_array_get({ i64, i8* }* %50, i64 1)
  %52 = inttoptr i64 %51 to { i64, i8* }*
  %53 = alloca { i64, i8* }*
  store { i64, i8* }* %52, { i64, i8* }** %53
  %54 = load { i64, i8* }*, { i64, i8* }** %53
  %55 = call i64 @nyx_array_get({ i64, i8* }* %54, i64 0)
  %56 = icmp eq i64 %55, 3
  %57 = getelementptr [17 x i8], [17 x i8]* @.str3, i32 0, i32 0
  %58 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str3.c, i8* %57)
  %59 = call i8* @nyx_string_to_cstr(%nyx_string* %58)
  br i1 %56, label %assert_pass_6, label %assert_fail_6
assert_fail_6:
  call void @nyx_assert_fail(i8* %59)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_6
assert_pass_6:
  %60 = load { i64, i8* }*, { i64, i8* }** %53
  %61 = call i64 @nyx_array_length({ i64, i8* }* %60)
  %62 = icmp eq i64 %61, 2
  %63 = getelementptr [17 x i8], [17 x i8]* @.str4, i32 0, i32 0
  %64 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str4.c, i8* %63)
  %65 = call i8* @nyx_string_to_cstr(%nyx_string* %64)
  br i1 %62, label %assert_pass_7, label %assert_fail_7
assert_fail_7:
  call void @nyx_assert_fail(i8* %65)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_7
assert_pass_7:
  %66 = load { i64, i8* }*, { i64, i8* }** %25
  %67 = call i64 @nyx_array_get({ i64, i8* }* %66, i64 0)
  %68 = inttoptr i64 %67 to { i64, i8* }*
  %69 = call i64 @sum_row({ i64, i8* }* %68)
  %70 = icmp eq i64 %69, 3
  %71 = getelementptr [17 x i8], [17 x i8]* @.str5, i32 0, i32 0
  %72 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str5.c, i8* %71)
  %73 = call i8* @nyx_string_to_cstr(%nyx_string* %72)
  br i1 %70, label %assert_pass_8, label %assert_fail_8
assert_fail_8:
  call void @nyx_assert_fail(i8* %73)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_8
assert_pass_8:
  %74 = load { i64, i8* }*, { i64, i8* }** %25
  %75 = call i64 @nyx_array_get({ i64, i8* }* %74, i64 2)
  %76 = inttoptr i64 %75 to { i64, i8* }*
  %77 = call i64 @sum_row({ i64, i8* }* %76)
  %78 = icmp eq i64 %77, 11
  %79 = getelementptr [17 x i8], [17 x i8]* @.str6, i32 0, i32 0
  %80 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str6.c, i8* %79)
  %81 = call i8* @nyx_string_to_cstr(%nyx_string* %80)
  br i1 %78, label %assert_pass_9, label %assert_fail_9
assert_fail_9:
  call void @nyx_assert_fail(i8* %81)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_9
assert_pass_9:
  %82 = call { i64, i8* }* @nyx_array_new_ptr()
  %83 = call { i64, i8* }* @nyx_array_new_ptr()
  %84 = getelementptr [5 x i8], [5 x i8]* @.str7, i32 0, i32 0
  %85 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str7.c, i8* %84)
  %86 = ptrtoint %nyx_string* %85 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %83, i64 %86, i64 2)
  %87 = getelementptr [6 x i8], [6 x i8]* @.str8, i32 0, i32 0
  %88 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str8.c, i8* %87)
  %89 = ptrtoint %nyx_string* %88 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %83, i64 %89, i64 2)
  %90 = bitcast { i64, i8* }* %83 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %82, i8* %90)
  %91 = call { i64, i8* }* @nyx_array_new_ptr()
  %92 = getelementptr [4 x i8], [4 x i8]* @.str9, i32 0, i32 0
  %93 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str9.c, i8* %92)
  %94 = ptrtoint %nyx_string* %93 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %91, i64 %94, i64 2)
  %95 = getelementptr [5 x i8], [5 x i8]* @.str10, i32 0, i32 0
  %96 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str10.c, i8* %95)
  %97 = ptrtoint %nyx_string* %96 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %91, i64 %97, i64 2)
  %98 = bitcast { i64, i8* }* %91 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %82, i8* %98)
  %99 = alloca { i64, i8* }*
  store { i64, i8* }* %82, { i64, i8* }** %99
  %100 = load { i64, i8* }*, { i64, i8* }** %99
  %101 = call i64 @nyx_array_get({ i64, i8* }* %100, i64 1)
  %102 = inttoptr i64 %101 to { i64, i8* }*
  %103 = call i64 @nyx_array_get({ i64, i8* }* %102, i64 0)
  %104 = inttoptr i64 %103 to %nyx_string*
  %105 = alloca %nyx_string*
  store %nyx_string* %104, %nyx_string** %105
  %106 = load %nyx_string*, %nyx_string** %105
  %107 = getelementptr [4 x i8], [4 x i8]* @.str11, i32 0, i32 0
  %108 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str11.c, i8* %107)
  %109 = call i1 @nyx_string_equals(%nyx_string* %106, %nyx_string* %108)
  %110 = getelementptr [17 x i8], [17 x i8]* @.str12, i32 0, i32 0
  %111 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str12.c, i8* %110)
  %112 = call i8* @nyx_string_to_cstr(%nyx_string* %111)
  br i1 %109, label %assert_pass_10, label %assert_fail_10
assert_fail_10:
  call void @nyx_assert_fail(i8* %112)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_10
assert_pass_10:
  %113 = load { i64, i8* }*, { i64, i8* }** %53
  call void @nyx_array_push_tagged({ i64, i8* }* %113, i64 99, i64 1)
  %114 = load { i64, i8* }*, { i64, i8* }** %25
  %115 = call i64 @nyx_array_get({ i64, i8* }* %114, i64 1)
  %116 = inttoptr i64 %115 to { i64, i8* }*
  %117 = call i64 @nyx_array_get({ i64, i8* }* %116, i64 2)
  %118 = icmp eq i64 %117, 99
  %119 = getelementptr [17 x i8], [17 x i8]* @.str13, i32 0, i32 0
  %120 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str13.c, i8* %119)
  %121 = call i8* @nyx_string_to_cstr(%nyx_string* %120)
  br i1 %118, label %assert_pass_11, label %assert_fail_11
assert_fail_11:
  call void @nyx_assert_fail(i8* %121)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_11
assert_pass_11:
  %122 = getelementptr [17 x i8], [17 x i8]* @.str14, i32 0, i32 0
  %123 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str14.c, i8* %122)
  %124 = call i8* @nyx_string_to_cstr(%nyx_string* %123)
  call void @nyx_print_string(i8* %124)
  ret i64 0
}


attributes #0 = { returns_twice }

