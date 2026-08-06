source_filename = "/home/admin/nyx/lang/tests/compiler/language/test-296-struct-init-in-condition.nx"
target triple = "x86_64-pc-linux-gnu"

%Point = type { i64 }

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
@.str7 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str7.c = internal global %nyx_string* null
@.str8 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str8.c = internal global %nyx_string* null
@.str9 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str9.c = internal global %nyx_string* null
@.str10 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str10.c = internal global %nyx_string* null
@.str11 = private unnamed_addr constant [28 x i8] c"struct-init-in-condition OK\00"
@.str11.c = internal global %nyx_string* null
@__nyx_test_failed = external global i64
@__nyx_test_mode = external global i64
; Nyx Compiler Bootstrap v3.0
; Generated from: /home/admin/nyx/lang/tests/compiler/language/test-296-struct-init-in-condition.nx

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


define internal i1 @takes_point(
%Point %p.param) {
  %p.ptr = alloca %Point
  store %Point %p.param, %Point* %p.ptr
  %1 = getelementptr %Point, %Point* %p.ptr, i32 0, i32 0
  %2 = load i64, i64* %1
  %3 = icmp eq i64 %2, 5
  ret i1 %3
}

define internal i64 @point_x(
%Point %p.param) {
  %p.ptr = alloca %Point
  store %Point %p.param, %Point* %p.ptr
  %4 = getelementptr %Point, %Point* %p.ptr, i32 0, i32 0
  %5 = load i64, i64* %4
  ret i64 %5
}

define i64 @main(
i32 %argc, i8** %argv) {
  call void @nyx_set_args(i32 %argc, i8** %argv)
  %6 = alloca i1
  store i1 0, i1* %6
  %7 = alloca i64
  store i64 0, i64* %7
  %8 = load i1, i1* %6
  br i1 %8, label %then0, label %else1
then0:
  br label %merge2
else1:
  store i64 1, i64* %7
  br label %merge2
merge2:
  %9 = load i64, i64* %7
  %10 = icmp eq i64 %9, 1
  %11 = getelementptr [17 x i8], [17 x i8]* @.str0, i32 0, i32 0
  %12 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str0.c, i8* %11)
  %13 = call i8* @nyx_string_to_cstr(%nyx_string* %12)
  br i1 %10, label %assert_pass_3, label %assert_fail_3
assert_fail_3:
  call void @nyx_assert_fail(i8* %13)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_3
assert_pass_3:
  %14 = load i1, i1* %6
  br i1 %14, label %then4, label %else5
then4:
  br label %merge6
else5:
  br label %merge6
merge6:
  %15 = load i64, i64* %7
  %16 = icmp eq i64 %15, 1
  %17 = getelementptr [17 x i8], [17 x i8]* @.str1, i32 0, i32 0
  %18 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1.c, i8* %17)
  %19 = call i8* @nyx_string_to_cstr(%nyx_string* %18)
  br i1 %16, label %assert_pass_7, label %assert_fail_7
assert_fail_7:
  call void @nyx_assert_fail(i8* %19)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_7
assert_pass_7:
  %20 = call i8* @llvm.stacksave()
  br label %while_cond8
while_cond8:
  %21 = load i1, i1* %6
  br i1 %21, label %while_body9, label %while_end10
while_body9:
  call void @llvm.stackrestore(i8* %20)
  br label %while_cond8
while_end10:
  %22 = load i64, i64* %7
  %23 = icmp eq i64 %22, 1
  %24 = getelementptr [17 x i8], [17 x i8]* @.str2, i32 0, i32 0
  %25 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str2.c, i8* %24)
  %26 = call i8* @nyx_string_to_cstr(%nyx_string* %25)
  br i1 %23, label %assert_pass_11, label %assert_fail_11
assert_fail_11:
  call void @nyx_assert_fail(i8* %26)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_11
assert_pass_11:
  %27 = call { i64, i8* }* @nyx_array_new_ptr()
  call void @nyx_array_push_tagged({ i64, i8* }* %27, i64 1, i64 1)
  call void @nyx_array_push_tagged({ i64, i8* }* %27, i64 2, i64 1)
  call void @nyx_array_push_tagged({ i64, i8* }* %27, i64 3, i64 1)
  %28 = alloca { i64, i8* }*
  store { i64, i8* }* %27, { i64, i8* }** %28
  %29 = alloca i64
  store i64 0, i64* %29
  %30 = load { i64, i8* }*, { i64, i8* }** %28
  %31 = call i64 @nyx_array_length({ i64, i8* }* %30)
  %for_idx15 = alloca i64
  store i64 0, i64* %for_idx15
  %32 = call i8* @llvm.stacksave()
  br label %for_cond12
for_cond12:
  %33 = load i64, i64* %for_idx15
  %34 = icmp slt i64 %33, %31
  br i1 %34, label %for_body13, label %for_end14
for_body13:
  call void @llvm.stackrestore(i8* %32)
  %35 = call i64 @nyx_array_get({ i64, i8* }* %30, i64 %33)
  %36 = alloca i64
  store i64 %35, i64* %36
  %37 = load i64, i64* %for_idx15
  %38 = add i64 %37, 1
  store i64 %38, i64* %for_idx15
  br label %for_cond12
for_end14:
  %39 = load i64, i64* %29
  %40 = icmp eq i64 %39, 0
  %41 = getelementptr [17 x i8], [17 x i8]* @.str3, i32 0, i32 0
  %42 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str3.c, i8* %41)
  %43 = call i8* @nyx_string_to_cstr(%nyx_string* %42)
  br i1 %40, label %assert_pass_16, label %assert_fail_16
assert_fail_16:
  call void @nyx_assert_fail(i8* %43)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_16
assert_pass_16:
  %44 = alloca i1
  store i1 1, i1* %44
  %45 = alloca i64
  store i64 0, i64* %45
  %46 = load i1, i1* %44
  br i1 %46, label %then17, label %else18
then17:
  %47 = load i1, i1* %6
  br i1 %47, label %then20, label %else21
then20:
  br label %merge22
else21:
  store i64 1, i64* %45
  br label %merge22
merge22:
  br label %merge19
else18:
  br label %merge19
merge19:
  %48 = load i64, i64* %45
  %49 = icmp eq i64 %48, 1
  %50 = getelementptr [17 x i8], [17 x i8]* @.str4, i32 0, i32 0
  %51 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str4.c, i8* %50)
  %52 = call i8* @nyx_string_to_cstr(%nyx_string* %51)
  br i1 %49, label %assert_pass_23, label %assert_fail_23
assert_fail_23:
  call void @nyx_assert_fail(i8* %52)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_23
assert_pass_23:
  %53 = getelementptr %Point, %Point* null, i32 1
  %54 = ptrtoint %Point* %53 to i64
  %55 = call i8* @GC_malloc(i64 %54)
  %56 = bitcast i8* %55 to %Point*
  %57 = getelementptr %Point, %Point* %56, i32 0, i32 0
  store i64 5, i64* %57
  %58 = load %Point, %Point* %56
  %59 = alloca %Point
  store %Point %58, %Point* %59
  %60 = getelementptr %Point, %Point* %59, i32 0, i32 0
  %61 = load i64, i64* %60
  %62 = icmp eq i64 %61, 5
  %63 = getelementptr [17 x i8], [17 x i8]* @.str5, i32 0, i32 0
  %64 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str5.c, i8* %63)
  %65 = call i8* @nyx_string_to_cstr(%nyx_string* %64)
  br i1 %62, label %assert_pass_24, label %assert_fail_24
assert_fail_24:
  call void @nyx_assert_fail(i8* %65)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_24
assert_pass_24:
  %66 = alloca i64
  store i64 0, i64* %66
  %67 = getelementptr %Point, %Point* null, i32 1
  %68 = ptrtoint %Point* %67 to i64
  %69 = call i8* @GC_malloc(i64 %68)
  %70 = bitcast i8* %69 to %Point*
  %71 = getelementptr %Point, %Point* %70, i32 0, i32 0
  store i64 5, i64* %71
  %72 = load %Point, %Point* %70
  %73 = call i1 @takes_point(%Point %72)
  br i1 %73, label %then25, label %else26
then25:
  store i64 1, i64* %66
  br label %merge27
else26:
  br label %merge27
merge27:
  %74 = load i64, i64* %66
  %75 = icmp eq i64 %74, 1
  %76 = getelementptr [17 x i8], [17 x i8]* @.str6, i32 0, i32 0
  %77 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str6.c, i8* %76)
  %78 = call i8* @nyx_string_to_cstr(%nyx_string* %77)
  br i1 %75, label %assert_pass_28, label %assert_fail_28
assert_fail_28:
  call void @nyx_assert_fail(i8* %78)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_28
assert_pass_28:
  %79 = alloca i64
  store i64 0, i64* %79
  %80 = getelementptr %Point, %Point* null, i32 1
  %81 = ptrtoint %Point* %80 to i64
  %82 = call i8* @GC_malloc(i64 %81)
  %83 = bitcast i8* %82 to %Point*
  %84 = getelementptr %Point, %Point* %83, i32 0, i32 0
  store i64 5, i64* %84
  %85 = load %Point, %Point* %83
  %86 = call i1 @takes_point(%Point %85)
  br i1 %86, label %then29, label %else30
then29:
  store i64 1, i64* %79
  br label %merge31
else30:
  br label %merge31
merge31:
  %87 = load i64, i64* %79
  %88 = icmp eq i64 %87, 1
  %89 = getelementptr [17 x i8], [17 x i8]* @.str7, i32 0, i32 0
  %90 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str7.c, i8* %89)
  %91 = call i8* @nyx_string_to_cstr(%nyx_string* %90)
  br i1 %88, label %assert_pass_32, label %assert_fail_32
assert_fail_32:
  call void @nyx_assert_fail(i8* %91)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_32
assert_pass_32:
  %92 = alloca i64
  store i64 0, i64* %92
  %93 = call { i64, i8* }* @nyx_array_new_ptr()
  %94 = getelementptr %Point, %Point* null, i32 1
  %95 = ptrtoint %Point* %94 to i64
  %96 = call i8* @GC_malloc(i64 %95)
  %97 = bitcast i8* %96 to %Point*
  %98 = getelementptr %Point, %Point* %97, i32 0, i32 0
  store i64 1, i64* %98
  %99 = load %Point, %Point* %97
  %100 = getelementptr %Point, %Point* null, i32 1
  %101 = ptrtoint %Point* %100 to i64
  %102 = call i8* @GC_malloc(i64 %101)
  %103 = bitcast i8* %102 to %Point*
  store %Point %99, %Point* %103
  %104 = ptrtoint %Point* %103 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %93, i64 %104, i64 7)
  %105 = getelementptr %Point, %Point* null, i32 1
  %106 = ptrtoint %Point* %105 to i64
  %107 = call i8* @GC_malloc(i64 %106)
  %108 = bitcast i8* %107 to %Point*
  %109 = getelementptr %Point, %Point* %108, i32 0, i32 0
  store i64 2, i64* %109
  %110 = load %Point, %Point* %108
  %111 = getelementptr %Point, %Point* null, i32 1
  %112 = ptrtoint %Point* %111 to i64
  %113 = call i8* @GC_malloc(i64 %112)
  %114 = bitcast i8* %113 to %Point*
  store %Point %110, %Point* %114
  %115 = ptrtoint %Point* %114 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %93, i64 %115, i64 7)
  %116 = call i64 @nyx_array_length({ i64, i8* }* %93)
  %for_idx36 = alloca i64
  store i64 0, i64* %for_idx36
  %117 = call i8* @llvm.stacksave()
  br label %for_cond33
for_cond33:
  %118 = load i64, i64* %for_idx36
  %119 = icmp slt i64 %118, %116
  br i1 %119, label %for_body34, label %for_end35
for_body34:
  call void @llvm.stackrestore(i8* %117)
  %120 = call i64 @nyx_array_get({ i64, i8* }* %93, i64 %118)
  %121 = alloca i64
  store i64 %120, i64* %121
  %122 = load i64, i64* %92
  %123 = add i64 %122, 1
  store i64 %123, i64* %92
  %124 = load i64, i64* %for_idx36
  %125 = add i64 %124, 1
  store i64 %125, i64* %for_idx36
  br label %for_cond33
for_end35:
  %126 = load i64, i64* %92
  %127 = icmp eq i64 %126, 2
  %128 = getelementptr [17 x i8], [17 x i8]* @.str8, i32 0, i32 0
  %129 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str8.c, i8* %128)
  %130 = call i8* @nyx_string_to_cstr(%nyx_string* %129)
  br i1 %127, label %assert_pass_37, label %assert_fail_37
assert_fail_37:
  call void @nyx_assert_fail(i8* %130)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_37
assert_pass_37:
  %131 = call { i64, i8* }* @nyx_array_new_ptr()
  call void @nyx_array_push_tagged({ i64, i8* }* %131, i64 10, i64 1)
  call void @nyx_array_push_tagged({ i64, i8* }* %131, i64 20, i64 1)
  call void @nyx_array_push_tagged({ i64, i8* }* %131, i64 30, i64 1)
  %132 = alloca { i64, i8* }*
  store { i64, i8* }* %131, { i64, i8* }** %132
  %133 = alloca i64
  store i64 0, i64* %133
  %134 = load { i64, i8* }*, { i64, i8* }** %132
  %135 = getelementptr %Point, %Point* null, i32 1
  %136 = ptrtoint %Point* %135 to i64
  %137 = call i8* @GC_malloc(i64 %136)
  %138 = bitcast i8* %137 to %Point*
  %139 = getelementptr %Point, %Point* %138, i32 0, i32 0
  store i64 0, i64* %139
  %140 = load %Point, %Point* %138
  %141 = call i64 @point_x(%Point %140)
  %142 = call i64 @nyx_array_get({ i64, i8* }* %134, i64 %141)
  %143 = icmp eq i64 %142, 10
  br i1 %143, label %then38, label %else39
then38:
  store i64 1, i64* %133
  br label %merge40
else39:
  br label %merge40
merge40:
  %144 = load i64, i64* %133
  %145 = icmp eq i64 %144, 1
  %146 = getelementptr [17 x i8], [17 x i8]* @.str9, i32 0, i32 0
  %147 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str9.c, i8* %146)
  %148 = call i8* @nyx_string_to_cstr(%nyx_string* %147)
  br i1 %145, label %assert_pass_41, label %assert_fail_41
assert_fail_41:
  call void @nyx_assert_fail(i8* %148)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_41
assert_pass_41:
  %149 = alloca i64
  store i64 2, i64* %149
  %150 = alloca i64
  store i64 0, i64* %150
  %151 = load i64, i64* %149
  %152 = alloca i64
  store i64 0, i64* %152
  br label %match_arm44
match_arm44:
  %153 = icmp eq i64 %151, 1
  br i1 %153, label %lit_body53, label %match_arm45
lit_body53:
  store i64 10, i64* %150
  br label %match_end43
match_arm45:
  %154 = icmp eq i64 %151, 2
  br i1 %154, label %lit_body54, label %match_arm46
lit_body54:
  store i64 20, i64* %150
  br label %match_end43
match_arm46:
  store i64 0, i64* %150
  br label %match_end43
match_end43:
  %155 = load i64, i64* %152
  %156 = load i64, i64* %150
  %157 = icmp eq i64 %156, 20
  %158 = getelementptr [17 x i8], [17 x i8]* @.str10, i32 0, i32 0
  %159 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str10.c, i8* %158)
  %160 = call i8* @nyx_string_to_cstr(%nyx_string* %159)
  br i1 %157, label %assert_pass_56, label %assert_fail_56
assert_fail_56:
  call void @nyx_assert_fail(i8* %160)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_56
assert_pass_56:
  %161 = getelementptr [28 x i8], [28 x i8]* @.str11, i32 0, i32 0
  %162 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str11.c, i8* %161)
  %163 = call i8* @nyx_string_to_cstr(%nyx_string* %162)
  call void @nyx_print_string(i8* %163)
  ret i64 0
}


attributes #0 = { returns_twice }

