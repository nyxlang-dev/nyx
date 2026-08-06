source_filename = "/home/admin/nyx/lang/tests/compiler/systems/test-63-typed-arrays.nx"
target triple = "x86_64-pc-linux-gnu"

%Point = type { i64, i64 }

@.str0 = private unnamed_addr constant [6 x i8] c"hello\00"
@.str0.c = internal global %nyx_string* null
@.str1 = private unnamed_addr constant [6 x i8] c"world\00"
@.str1.c = internal global %nyx_string* null
@.str2 = private unnamed_addr constant [4 x i8] c"red\00"
@.str2.c = internal global %nyx_string* null
@.str3 = private unnamed_addr constant [6 x i8] c"green\00"
@.str3.c = internal global %nyx_string* null
@.str4 = private unnamed_addr constant [5 x i8] c"blue\00"
@.str4.c = internal global %nyx_string* null
@.str5 = private unnamed_addr constant [6 x i8] c"Alice\00"
@.str5.c = internal global %nyx_string* null
@.str6 = private unnamed_addr constant [4 x i8] c"Bob\00"
@.str6.c = internal global %nyx_string* null
@.str7 = private unnamed_addr constant [30 x i8] c"All typed array tests passed!\00"
@.str7.c = internal global %nyx_string* null
@__nyx_test_failed = external global i64
@__nyx_test_mode = external global i64
; Nyx Compiler Bootstrap v3.0
; Generated from: /home/admin/nyx/lang/tests/compiler/systems/test-63-typed-arrays.nx

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


define internal i64 @sum_array(
{ i64, i8* }* %arr.param) {
  %arr.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %arr.param, { i64, i8* }** %arr.ptr
  %1 = alloca i64
  store i64 0, i64* %1
  %2 = alloca i64
  store i64 0, i64* %2
  %3 = call i8* @llvm.stacksave()
  br label %while_cond0
while_cond0:
  %4 = load i64, i64* %2
  %5 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %6 = call i64 @nyx_array_length({ i64, i8* }* %5)
  %7 = icmp slt i64 %4, %6
  br i1 %7, label %while_body1, label %while_end2
while_body1:
  call void @llvm.stackrestore(i8* %3)
  %8 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
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

define internal %nyx_string* @first_name(
{ i64, i8* }* %names.param) {
  %names.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %names.param, { i64, i8* }** %names.ptr
  %18 = load { i64, i8* }*, { i64, i8* }** %names.ptr
  %19 = call i64 @nyx_array_get_checked({ i64, i8* }* %18, i64 0, i64 2)
  %20 = inttoptr i64 %19 to %nyx_string*
  ret %nyx_string* %20
}

define i64 @main(
i32 %argc, i8** %argv) {
  call void @nyx_set_args(i32 %argc, i8** %argv)
  %21 = call { i64, i8* }* @nyx_array_new_ptr()
  call void @nyx_array_push_tagged({ i64, i8* }* %21, i64 10, i64 1)
  call void @nyx_array_push_tagged({ i64, i8* }* %21, i64 20, i64 1)
  call void @nyx_array_push_tagged({ i64, i8* }* %21, i64 30, i64 1)
  call void @nyx_array_retag_unknown({ i64, i8* }* %21, i64 1)
  %22 = alloca { i64, i8* }*
  store { i64, i8* }* %21, { i64, i8* }** %22
  %23 = load { i64, i8* }*, { i64, i8* }** %22
  %24 = call i64 @nyx_array_get({ i64, i8* }* %23, i64 0)
  %25 = alloca i64
  store i64 %24, i64* %25
  %26 = load i64, i64* %25
  call void @nyx_print_int(i64 %26)
  %27 = load { i64, i8* }*, { i64, i8* }** %22
  %28 = call i64 @nyx_array_get({ i64, i8* }* %27, i64 1)
  %29 = call i64 @nyx_array_get_tag({ i64, i8* }* %27, i64 1)
  %30 = call %nyx_string* @nyx_string_from_tagged(i64 %28, i64 %29, i64 1)
  %31 = call i8* @nyx_string_to_cstr(%nyx_string* %30)
  call void @nyx_print_string(i8* %31)
  %32 = load { i64, i8* }*, { i64, i8* }** %22
  %33 = call i64 @nyx_array_get({ i64, i8* }* %32, i64 2)
  %34 = call i64 @nyx_array_get_tag({ i64, i8* }* %32, i64 2)
  %35 = call %nyx_string* @nyx_string_from_tagged(i64 %33, i64 %34, i64 1)
  %36 = call i8* @nyx_string_to_cstr(%nyx_string* %35)
  call void @nyx_print_string(i8* %36)
  %37 = call { i64, i8* }* @nyx_array_new_ptr()
  %38 = getelementptr [6 x i8], [6 x i8]* @.str0, i32 0, i32 0
  %39 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str0.c, i8* %38)
  %40 = ptrtoint %nyx_string* %39 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %37, i64 %40, i64 2)
  %41 = getelementptr [6 x i8], [6 x i8]* @.str1, i32 0, i32 0
  %42 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1.c, i8* %41)
  %43 = ptrtoint %nyx_string* %42 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %37, i64 %43, i64 2)
  call void @nyx_array_retag_unknown({ i64, i8* }* %37, i64 2)
  %44 = alloca { i64, i8* }*
  store { i64, i8* }* %37, { i64, i8* }** %44
  %45 = load { i64, i8* }*, { i64, i8* }** %44
  %46 = call i64 @nyx_array_get_checked({ i64, i8* }* %45, i64 0, i64 2)
  %47 = inttoptr i64 %46 to %nyx_string*
  %48 = alloca %nyx_string*
  store %nyx_string* %47, %nyx_string** %48
  %49 = load %nyx_string*, %nyx_string** %48
  %50 = call i8* @nyx_string_to_cstr(%nyx_string* %49)
  call void @nyx_print_string(i8* %50)
  %51 = load { i64, i8* }*, { i64, i8* }** %44
  %52 = call i64 @nyx_array_get({ i64, i8* }* %51, i64 1)
  %53 = call i64 @nyx_array_get_tag({ i64, i8* }* %51, i64 1)
  %54 = call %nyx_string* @nyx_string_from_tagged(i64 %52, i64 %53, i64 2)
  %55 = call i8* @nyx_string_to_cstr(%nyx_string* %54)
  call void @nyx_print_string(i8* %55)
  %56 = call { i64, i8* }* @nyx_array_new_ptr()
  %57 = bitcast double 1.5 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %56, i64 %57, i64 3)
  %58 = bitcast double 2.5 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %56, i64 %58, i64 3)
  %59 = bitcast double 3.5 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %56, i64 %59, i64 3)
  call void @nyx_array_retag_unknown({ i64, i8* }* %56, i64 3)
  %60 = alloca { i64, i8* }*
  store { i64, i8* }* %56, { i64, i8* }** %60
  %61 = load { i64, i8* }*, { i64, i8* }** %60
  %62 = call double @nyx_slot_as_float_st({ i64, i8* }* %61, i64 0, i64 3)
  %63 = alloca double
  store double %62, double* %63
  %64 = load double, double* %63
  call void @nyx_print_float(double %64)
  %65 = call { i64, i8* }* @nyx_array_new_ptr()
  %66 = getelementptr [4 x i8], [4 x i8]* @.str2, i32 0, i32 0
  %67 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str2.c, i8* %66)
  %68 = ptrtoint %nyx_string* %67 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %65, i64 %68, i64 2)
  %69 = getelementptr [6 x i8], [6 x i8]* @.str3, i32 0, i32 0
  %70 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str3.c, i8* %69)
  %71 = ptrtoint %nyx_string* %70 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %65, i64 %71, i64 2)
  %72 = getelementptr [5 x i8], [5 x i8]* @.str4, i32 0, i32 0
  %73 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str4.c, i8* %72)
  %74 = ptrtoint %nyx_string* %73 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %65, i64 %74, i64 2)
  call void @nyx_array_retag_unknown({ i64, i8* }* %65, i64 2)
  %75 = alloca { i64, i8* }*
  store { i64, i8* }* %65, { i64, i8* }** %75
  %76 = load { i64, i8* }*, { i64, i8* }** %75
  %77 = call i64 @nyx_array_length({ i64, i8* }* %76)
  %for_idx6 = alloca i64
  store i64 0, i64* %for_idx6
  %78 = call i8* @llvm.stacksave()
  br label %for_cond3
for_cond3:
  %79 = load i64, i64* %for_idx6
  %80 = icmp slt i64 %79, %77
  br i1 %80, label %for_body4, label %for_end5
for_body4:
  call void @llvm.stackrestore(i8* %78)
  %81 = call i64 @nyx_array_get({ i64, i8* }* %76, i64 %79)
  %82 = inttoptr i64 %81 to %nyx_string*
  %83 = alloca %nyx_string*
  store %nyx_string* %82, %nyx_string** %83
  %84 = load %nyx_string*, %nyx_string** %83
  %85 = call i8* @nyx_string_to_cstr(%nyx_string* %84)
  call void @nyx_print_string(i8* %85)
  %86 = load i64, i64* %for_idx6
  %87 = add i64 %86, 1
  store i64 %87, i64* %for_idx6
  br label %for_cond3
for_end5:
  %88 = call { i64, i8* }* @nyx_array_new_ptr()
  call void @nyx_array_push_tagged({ i64, i8* }* %88, i64 1, i64 1)
  call void @nyx_array_push_tagged({ i64, i8* }* %88, i64 2, i64 1)
  call void @nyx_array_push_tagged({ i64, i8* }* %88, i64 3, i64 1)
  call void @nyx_array_push_tagged({ i64, i8* }* %88, i64 4, i64 1)
  call void @nyx_array_push_tagged({ i64, i8* }* %88, i64 5, i64 1)
  call void @nyx_array_retag_unknown({ i64, i8* }* %88, i64 1)
  %89 = alloca { i64, i8* }*
  store { i64, i8* }* %88, { i64, i8* }** %89
  %90 = load { i64, i8* }*, { i64, i8* }** %89
  %91 = call i64 @sum_array({ i64, i8* }* %90)
  call void @nyx_print_int(i64 %91)
  %92 = call { i64, i8* }* @nyx_array_new_ptr()
  %93 = getelementptr [6 x i8], [6 x i8]* @.str5, i32 0, i32 0
  %94 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str5.c, i8* %93)
  %95 = ptrtoint %nyx_string* %94 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %92, i64 %95, i64 2)
  %96 = getelementptr [4 x i8], [4 x i8]* @.str6, i32 0, i32 0
  %97 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str6.c, i8* %96)
  %98 = ptrtoint %nyx_string* %97 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %92, i64 %98, i64 2)
  call void @nyx_array_retag_unknown({ i64, i8* }* %92, i64 2)
  %99 = alloca { i64, i8* }*
  store { i64, i8* }* %92, { i64, i8* }** %99
  %100 = load { i64, i8* }*, { i64, i8* }** %99
  %101 = call %nyx_string* @first_name({ i64, i8* }* %100)
  %102 = call i8* @nyx_string_to_cstr(%nyx_string* %101)
  call void @nyx_print_string(i8* %102)
  %103 = getelementptr %Point, %Point* null, i32 1
  %104 = ptrtoint %Point* %103 to i64
  %105 = call i8* @GC_malloc(i64 %104)
  %106 = bitcast i8* %105 to %Point*
  %107 = getelementptr %Point, %Point* %106, i32 0, i32 0
  store i64 1, i64* %107
  %108 = getelementptr %Point, %Point* %106, i32 0, i32 1
  store i64 2, i64* %108
  %109 = load %Point, %Point* %106
  %110 = alloca %Point
  store %Point %109, %Point* %110
  %111 = getelementptr %Point, %Point* null, i32 1
  %112 = ptrtoint %Point* %111 to i64
  %113 = call i8* @GC_malloc(i64 %112)
  %114 = bitcast i8* %113 to %Point*
  %115 = getelementptr %Point, %Point* %114, i32 0, i32 0
  store i64 3, i64* %115
  %116 = getelementptr %Point, %Point* %114, i32 0, i32 1
  store i64 4, i64* %116
  %117 = load %Point, %Point* %114
  %118 = alloca %Point
  store %Point %117, %Point* %118
  %119 = call { i64, i8* }* @nyx_array_new_ptr()
  %120 = load %Point, %Point* %110
  %121 = getelementptr %Point, %Point* null, i32 1
  %122 = ptrtoint %Point* %121 to i64
  %123 = call i8* @GC_malloc(i64 %122)
  %124 = bitcast i8* %123 to %Point*
  store %Point %120, %Point* %124
  %125 = ptrtoint %Point* %124 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %119, i64 %125, i64 7)
  %126 = load %Point, %Point* %118
  %127 = getelementptr %Point, %Point* null, i32 1
  %128 = ptrtoint %Point* %127 to i64
  %129 = call i8* @GC_malloc(i64 %128)
  %130 = bitcast i8* %129 to %Point*
  store %Point %126, %Point* %130
  %131 = ptrtoint %Point* %130 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %119, i64 %131, i64 7)
  %132 = alloca { i64, i8* }*
  store { i64, i8* }* %119, { i64, i8* }** %132
  %133 = load { i64, i8* }*, { i64, i8* }** %132
  %134 = call i64 @nyx_array_get({ i64, i8* }* %133, i64 0)
  %135 = inttoptr i64 %134 to %Point*
  %136 = load %Point, %Point* %135
  %137 = alloca %Point
  store %Point %136, %Point* %137
  %138 = getelementptr %Point, %Point* %137, i32 0, i32 0
  %139 = load i64, i64* %138
  call void @nyx_print_int(i64 %139)
  %140 = getelementptr %Point, %Point* %137, i32 0, i32 1
  %141 = load i64, i64* %140
  call void @nyx_print_int(i64 %141)
  %142 = getelementptr [30 x i8], [30 x i8]* @.str7, i32 0, i32 0
  %143 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str7.c, i8* %142)
  %144 = call i8* @nyx_string_to_cstr(%nyx_string* %143)
  call void @nyx_print_string(i8* %144)
  ret i64 0
}


attributes #0 = { returns_twice }

