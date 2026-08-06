source_filename = "/home/admin/nyx/lang/tests/compiler/language/test-225-map-get-string-arg.nx"
target triple = "x86_64-pc-linux-gnu"

%Req = type { i8*, %nyx_string* }

@.str0 = private unnamed_addr constant [2 x i8] c"!\00"
@.str0.c = internal global %nyx_string* null
@.str1 = private unnamed_addr constant [5 x i8] c"name\00"
@.str1.c = internal global %nyx_string* null
@.str2 = private unnamed_addr constant [4 x i8] c"Ada\00"
@.str2.c = internal global %nyx_string* null
@.str3 = private unnamed_addr constant [5 x i8] c"lang\00"
@.str3.c = internal global %nyx_string* null
@.str4 = private unnamed_addr constant [4 x i8] c"Nyx\00"
@.str4.c = internal global %nyx_string* null
@.str5 = private unnamed_addr constant [5 x i8] c"name\00"
@.str5.c = internal global %nyx_string* null
@.str6 = private unnamed_addr constant [5 x i8] c"Ada!\00"
@.str6.c = internal global %nyx_string* null
@.str7 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str7.c = internal global %nyx_string* null
@.str8 = private unnamed_addr constant [5 x i8] c"lang\00"
@.str8.c = internal global %nyx_string* null
@.str9 = private unnamed_addr constant [2 x i8] c"N\00"
@.str9.c = internal global %nyx_string* null
@.str10 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str10.c = internal global %nyx_string* null
@.str11 = private unnamed_addr constant [2 x i8] c"/\00"
@.str11.c = internal global %nyx_string* null
@.str12 = private unnamed_addr constant [5 x i8] c"name\00"
@.str12.c = internal global %nyx_string* null
@.str13 = private unnamed_addr constant [5 x i8] c"Ada!\00"
@.str13.c = internal global %nyx_string* null
@.str14 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str14.c = internal global %nyx_string* null
@.str15 = private unnamed_addr constant [5 x i8] c"lang\00"
@.str15.c = internal global %nyx_string* null
@.str16 = private unnamed_addr constant [4 x i8] c"Nyx\00"
@.str16.c = internal global %nyx_string* null
@.str17 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str17.c = internal global %nyx_string* null
@.str18 = private unnamed_addr constant [5 x i8] c"name\00"
@.str18.c = internal global %nyx_string* null
@.str19 = private unnamed_addr constant [4 x i8] c"Ada\00"
@.str19.c = internal global %nyx_string* null
@.str20 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str20.c = internal global %nyx_string* null
@.str21 = private unnamed_addr constant [22 x i8] c"map-get-string-arg OK\00"
@.str21.c = internal global %nyx_string* null
@__nyx_test_failed = external global i64
@__nyx_test_mode = external global i64
; Nyx Compiler Bootstrap v3.0
; Generated from: /home/admin/nyx/lang/tests/compiler/language/test-225-map-get-string-arg.nx

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


define internal %nyx_string* @shout(
%nyx_string* %s.param) {
  %s.ptr = alloca %nyx_string*
  store %nyx_string* %s.param, %nyx_string** %s.ptr
  %1 = load %nyx_string*, %nyx_string** %s.ptr
  %2 = getelementptr [2 x i8], [2 x i8]* @.str0, i32 0, i32 0
  %3 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str0.c, i8* %2)
  %4 = call %nyx_string* @nyx_string_concat(%nyx_string* %1, %nyx_string* %3)
  ret %nyx_string* %4
}

define internal %nyx_string* @first_char(
%nyx_string* %s.param) {
  %s.ptr = alloca %nyx_string*
  store %nyx_string* %s.param, %nyx_string** %s.ptr
  %5 = load %nyx_string*, %nyx_string** %s.ptr
  %6 = call %nyx_string* @nyx_string_substring(%nyx_string* %5, i64 0, i64 1)
  ret %nyx_string* %6
}

define i64 @main(
i32 %argc, i8** %argv) {
  call void @nyx_set_args(i32 %argc, i8** %argv)
  %7 = call i8* @nyx_map_new(i32 0)
  %8 = alloca i8*
  store i8* %7, i8** %8
  %9 = load i8*, i8** %8
  %10 = getelementptr [5 x i8], [5 x i8]* @.str1, i32 0, i32 0
  %11 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1.c, i8* %10)
  %12 = getelementptr [4 x i8], [4 x i8]* @.str2, i32 0, i32 0
  %13 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str2.c, i8* %12)
  %14 = call i8* @nyx_string_to_cstr(%nyx_string* %11)
  %15 = call i8* @nyx_string_to_cstr(%nyx_string* %13)
  call void @nyx_map_insert_str(i8* %9, i8* %14, i8* %15)
  %16 = load i8*, i8** %8
  %17 = getelementptr [5 x i8], [5 x i8]* @.str3, i32 0, i32 0
  %18 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str3.c, i8* %17)
  %19 = getelementptr [4 x i8], [4 x i8]* @.str4, i32 0, i32 0
  %20 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str4.c, i8* %19)
  %21 = call i8* @nyx_string_to_cstr(%nyx_string* %18)
  %22 = call i8* @nyx_string_to_cstr(%nyx_string* %20)
  call void @nyx_map_insert_str(i8* %16, i8* %21, i8* %22)
  %23 = load i8*, i8** %8
  %24 = getelementptr [5 x i8], [5 x i8]* @.str5, i32 0, i32 0
  %25 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str5.c, i8* %24)
  %26 = call i8* @nyx_string_to_cstr(%nyx_string* %25)
  %27 = call i8* @nyx_map_get_str(i8* %23, i8* %26)
  %28 = call %nyx_string* @nyx_string_from_cstr(i8* %27)
  %29 = call %nyx_string* @shout(%nyx_string* %28)
  %30 = getelementptr [5 x i8], [5 x i8]* @.str6, i32 0, i32 0
  %31 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str6.c, i8* %30)
  %32 = call i1 @nyx_string_equals(%nyx_string* %29, %nyx_string* %31)
  %33 = getelementptr [17 x i8], [17 x i8]* @.str7, i32 0, i32 0
  %34 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str7.c, i8* %33)
  %35 = call i8* @nyx_string_to_cstr(%nyx_string* %34)
  br i1 %32, label %assert_pass_0, label %assert_fail_0
assert_fail_0:
  call void @nyx_assert_fail(i8* %35)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_0
assert_pass_0:
  %36 = load i8*, i8** %8
  %37 = getelementptr [5 x i8], [5 x i8]* @.str8, i32 0, i32 0
  %38 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str8.c, i8* %37)
  %39 = call i8* @nyx_string_to_cstr(%nyx_string* %38)
  %40 = call i8* @nyx_map_get_str(i8* %36, i8* %39)
  %41 = call %nyx_string* @nyx_string_from_cstr(i8* %40)
  %42 = call %nyx_string* @first_char(%nyx_string* %41)
  %43 = getelementptr [2 x i8], [2 x i8]* @.str9, i32 0, i32 0
  %44 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str9.c, i8* %43)
  %45 = call i1 @nyx_string_equals(%nyx_string* %42, %nyx_string* %44)
  %46 = getelementptr [17 x i8], [17 x i8]* @.str10, i32 0, i32 0
  %47 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str10.c, i8* %46)
  %48 = call i8* @nyx_string_to_cstr(%nyx_string* %47)
  br i1 %45, label %assert_pass_1, label %assert_fail_1
assert_fail_1:
  call void @nyx_assert_fail(i8* %48)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_1
assert_pass_1:
  %49 = getelementptr %Req, %Req* null, i32 1
  %50 = ptrtoint %Req* %49 to i64
  %51 = call i8* @GC_malloc(i64 %50)
  %52 = bitcast i8* %51 to %Req*
  %53 = load i8*, i8** %8
  %54 = getelementptr %Req, %Req* %52, i32 0, i32 0
  store i8* %53, i8** %54
  %55 = getelementptr [2 x i8], [2 x i8]* @.str11, i32 0, i32 0
  %56 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str11.c, i8* %55)
  %57 = getelementptr %Req, %Req* %52, i32 0, i32 1
  store %nyx_string* %56, %nyx_string** %57
  %58 = load %Req, %Req* %52
  %59 = alloca %Req
  store %Req %58, %Req* %59
  %60 = getelementptr %Req, %Req* %59, i32 0, i32 0
  %61 = load i8*, i8** %60
  %62 = getelementptr [5 x i8], [5 x i8]* @.str12, i32 0, i32 0
  %63 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str12.c, i8* %62)
  %64 = call i8* @nyx_string_to_cstr(%nyx_string* %63)
  %65 = call i8* @nyx_map_get_str(i8* %61, i8* %64)
  %66 = call %nyx_string* @nyx_string_from_cstr(i8* %65)
  %67 = call %nyx_string* @shout(%nyx_string* %66)
  %68 = getelementptr [5 x i8], [5 x i8]* @.str13, i32 0, i32 0
  %69 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str13.c, i8* %68)
  %70 = call i1 @nyx_string_equals(%nyx_string* %67, %nyx_string* %69)
  %71 = getelementptr [17 x i8], [17 x i8]* @.str14, i32 0, i32 0
  %72 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str14.c, i8* %71)
  %73 = call i8* @nyx_string_to_cstr(%nyx_string* %72)
  br i1 %70, label %assert_pass_2, label %assert_fail_2
assert_fail_2:
  call void @nyx_assert_fail(i8* %73)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_2
assert_pass_2:
  %74 = getelementptr %Req, %Req* %59, i32 0, i32 0
  %75 = load i8*, i8** %74
  %76 = getelementptr [5 x i8], [5 x i8]* @.str15, i32 0, i32 0
  %77 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str15.c, i8* %76)
  %78 = call i8* @nyx_string_to_cstr(%nyx_string* %77)
  %79 = call i8* @nyx_map_get_str(i8* %75, i8* %78)
  %80 = call %nyx_string* @nyx_string_from_cstr(i8* %79)
  %81 = alloca %nyx_string*
  store %nyx_string* %80, %nyx_string** %81
  %82 = load %nyx_string*, %nyx_string** %81
  %83 = getelementptr [4 x i8], [4 x i8]* @.str16, i32 0, i32 0
  %84 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str16.c, i8* %83)
  %85 = call i1 @nyx_string_equals(%nyx_string* %82, %nyx_string* %84)
  %86 = getelementptr [17 x i8], [17 x i8]* @.str17, i32 0, i32 0
  %87 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str17.c, i8* %86)
  %88 = call i8* @nyx_string_to_cstr(%nyx_string* %87)
  br i1 %85, label %assert_pass_3, label %assert_fail_3
assert_fail_3:
  call void @nyx_assert_fail(i8* %88)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_3
assert_pass_3:
  %89 = getelementptr %Req, %Req* %59, i32 0, i32 0
  %90 = load i8*, i8** %89
  %91 = getelementptr [5 x i8], [5 x i8]* @.str18, i32 0, i32 0
  %92 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str18.c, i8* %91)
  %93 = call i8* @nyx_string_to_cstr(%nyx_string* %92)
  %94 = call i8* @nyx_map_get_str(i8* %90, i8* %93)
  %95 = call %nyx_string* @nyx_string_from_cstr(i8* %94)
  %96 = getelementptr [4 x i8], [4 x i8]* @.str19, i32 0, i32 0
  %97 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str19.c, i8* %96)
  %98 = call i1 @nyx_string_equals(%nyx_string* %95, %nyx_string* %97)
  %99 = getelementptr [17 x i8], [17 x i8]* @.str20, i32 0, i32 0
  %100 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str20.c, i8* %99)
  %101 = call i8* @nyx_string_to_cstr(%nyx_string* %100)
  br i1 %98, label %assert_pass_4, label %assert_fail_4
assert_fail_4:
  call void @nyx_assert_fail(i8* %101)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_4
assert_pass_4:
  %102 = getelementptr [22 x i8], [22 x i8]* @.str21, i32 0, i32 0
  %103 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str21.c, i8* %102)
  %104 = call i8* @nyx_string_to_cstr(%nyx_string* %103)
  call void @nyx_print_string(i8* %104)
  ret i64 0
}


attributes #0 = { returns_twice }

