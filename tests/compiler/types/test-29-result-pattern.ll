source_filename = "/home/admin/nyx/lang/tests/compiler/types/test-29-result-pattern.nx"
target triple = "x86_64-pc-linux-gnu"

@.str0 = private unnamed_addr constant [17 x i8] c"division by zero\00"
@.str0.c = internal global %nyx_string* null
@.str1 = private unnamed_addr constant [15 x i8] c"negative input\00"
@.str1.c = internal global %nyx_string* null
@.str2 = private unnamed_addr constant [9 x i8] c"100/4 = \00"
@.str2.c = internal global %nyx_string* null
@.str3 = private unnamed_addr constant [12 x i8] c"sqrt(16) = \00"
@.str3.c = internal global %nyx_string* null
@.str4 = private unnamed_addr constant [11 x i8] c"unexpected\00"
@.str4.c = internal global %nyx_string* null
@.str5 = private unnamed_addr constant [9 x i8] c"caught: \00"
@.str5.c = internal global %nyx_string* null
@.str6 = private unnamed_addr constant [11 x i8] c"unexpected\00"
@.str6.c = internal global %nyx_string* null
@.str7 = private unnamed_addr constant [9 x i8] c"caught: \00"
@.str7.c = internal global %nyx_string* null
@.str8 = private unnamed_addr constant [15 x i8] c"sqrt(100/5) = \00"
@.str8.c = internal global %nyx_string* null
@.str9 = private unnamed_addr constant [15 x i8] c"is_ok(Ok(1)): \00"
@.str9.c = internal global %nyx_string* null
@.str10 = private unnamed_addr constant [13 x i8] c"is_ok(Err): \00"
@.str10.c = internal global %nyx_string* null
@.str11 = private unnamed_addr constant [5 x i8] c"fail\00"
@.str11.c = internal global %nyx_string* null
@__nyx_test_failed = external global i64
@__nyx_test_mode = external global i64
; Nyx Compiler Bootstrap v3.0
; Generated from: /home/admin/nyx/lang/tests/compiler/types/test-29-result-pattern.nx

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


define internal i8* @safe_divide(
i64 %a.param, i64 %b.param) {
  %a.ptr = alloca i64
  store i64 %a.param, i64* %a.ptr
  %b.ptr = alloca i64
  store i64 %b.param, i64* %b.ptr
  %1 = load i64, i64* %b.ptr
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %then0, label %else1
then0:
  %3 = call i8* @GC_malloc(i64 16)
  %4 = bitcast i8* %3 to { i64, i8* }*
  %5 = getelementptr { i64, i8* }, { i64, i8* }* %4, i32 0, i32 0
  store i64 1, i64* %5
  %6 = getelementptr { i64, i8* }, { i64, i8* }* %4, i32 0, i32 1
  %7 = call i8* @GC_malloc(i64 8)
  %8 = bitcast i8* %7 to i64*
  %9 = getelementptr [17 x i8], [17 x i8]* @.str0, i32 0, i32 0
  %10 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str0.c, i8* %9)
  %11 = ptrtoint %nyx_string* %10 to i64
  %12 = getelementptr i64, i64* %8, i64 0
  store i64 %11, i64* %12
  store i8* %7, i8** %6
  ret i8* %3
else1:
  br label %merge2
merge2:
  %13 = call i8* @GC_malloc(i64 16)
  %14 = bitcast i8* %13 to { i64, i8* }*
  %15 = getelementptr { i64, i8* }, { i64, i8* }* %14, i32 0, i32 0
  store i64 0, i64* %15
  %16 = getelementptr { i64, i8* }, { i64, i8* }* %14, i32 0, i32 1
  %17 = call i8* @GC_malloc(i64 8)
  %18 = bitcast i8* %17 to i64*
  %19 = load i64, i64* %a.ptr
  %20 = load i64, i64* %b.ptr
  %21 = sdiv i64 %19, %20
  %22 = getelementptr i64, i64* %18, i64 0
  store i64 %21, i64* %22
  store i8* %17, i8** %16
  ret i8* %13
}

define internal i8* @safe_sqrt(
i64 %n.param) {
  %n.ptr = alloca i64
  store i64 %n.param, i64* %n.ptr
  %23 = load i64, i64* %n.ptr
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %then3, label %else4
then3:
  %25 = call i8* @GC_malloc(i64 16)
  %26 = bitcast i8* %25 to { i64, i8* }*
  %27 = getelementptr { i64, i8* }, { i64, i8* }* %26, i32 0, i32 0
  store i64 1, i64* %27
  %28 = getelementptr { i64, i8* }, { i64, i8* }* %26, i32 0, i32 1
  %29 = call i8* @GC_malloc(i64 8)
  %30 = bitcast i8* %29 to i64*
  %31 = getelementptr [15 x i8], [15 x i8]* @.str1, i32 0, i32 0
  %32 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1.c, i8* %31)
  %33 = ptrtoint %nyx_string* %32 to i64
  %34 = getelementptr i64, i64* %30, i64 0
  store i64 %33, i64* %34
  store i8* %29, i8** %28
  ret i8* %25
else4:
  br label %merge5
merge5:
  %35 = alloca i64
  store i64 0, i64* %35
  %36 = call i8* @llvm.stacksave()
  br label %while_cond6
while_cond6:
  %37 = load i64, i64* %35
  %38 = load i64, i64* %35
  %39 = mul i64 %37, %38
  %40 = load i64, i64* %n.ptr
  %41 = icmp sle i64 %39, %40
  br i1 %41, label %while_body7, label %while_end8
while_body7:
  call void @llvm.stackrestore(i8* %36)
  %42 = load i64, i64* %35
  %43 = add i64 %42, 1
  store i64 %43, i64* %35
  br label %while_cond6
while_end8:
  %44 = call i8* @GC_malloc(i64 16)
  %45 = bitcast i8* %44 to { i64, i8* }*
  %46 = getelementptr { i64, i8* }, { i64, i8* }* %45, i32 0, i32 0
  store i64 0, i64* %46
  %47 = getelementptr { i64, i8* }, { i64, i8* }* %45, i32 0, i32 1
  %48 = call i8* @GC_malloc(i64 8)
  %49 = bitcast i8* %48 to i64*
  %50 = load i64, i64* %35
  %51 = sub i64 %50, 1
  %52 = getelementptr i64, i64* %49, i64 0
  store i64 %51, i64* %52
  store i8* %48, i8** %47
  ret i8* %44
}

define internal i64 @unwrap_or(
i8* %r.param, i64 %default_val.param) {
  %r.ptr = alloca i8*
  store i8* %r.param, i8** %r.ptr
  %default_val.ptr = alloca i64
  store i64 %default_val.param, i64* %default_val.ptr
  %53 = load i8*, i8** %r.ptr
  %54 = bitcast i8* %53 to { i64, i8* }*
  %55 = getelementptr { i64, i8* }, { i64, i8* }* %54, i32 0, i32 0
  %56 = load i64, i64* %55
  %57 = alloca i64
  store i64 0, i64* %57
  switch i64 %56, label %match_default9 [ i64 0, label %match_arm11 i64 1, label %match_arm12 ]
match_arm11:
  %58 = getelementptr { i64, i8* }, { i64, i8* }* %54, i32 0, i32 1
  %59 = load i8*, i8** %58
  %60 = bitcast i8* %59 to i64*
  %61 = getelementptr i64, i64* %60, i64 0
  %62 = load i64, i64* %61
  %63 = alloca i64
  store i64 %62, i64* %63
  br label %nested_ok18
nested_fail17:
  br label %match_default9
nested_ok18:
  %64 = load i64, i64* %63
  store i64 %64, i64* %57
  br label %match_end10
match_arm12:
  %65 = getelementptr { i64, i8* }, { i64, i8* }* %54, i32 0, i32 1
  %66 = load i8*, i8** %65
  %67 = bitcast i8* %66 to i64*
  %68 = getelementptr i64, i64* %67, i64 0
  %69 = load i64, i64* %68
  %70 = inttoptr i64 %69 to %nyx_string*
  %71 = alloca %nyx_string*
  store %nyx_string* %70, %nyx_string** %71
  br label %nested_ok20
nested_fail19:
  br label %match_default9
nested_ok20:
  %72 = load i64, i64* %default_val.ptr
  store i64 %72, i64* %57
  br label %match_end10
match_default9:
  br label %match_end10
match_end10:
  %73 = load i64, i64* %57
  ret i64 %73
}

define internal i1 @is_ok(
i8* %r.param) {
  %r.ptr = alloca i8*
  store i8* %r.param, i8** %r.ptr
  %74 = load i8*, i8** %r.ptr
  %75 = bitcast i8* %74 to { i64, i8* }*
  %76 = getelementptr { i64, i8* }, { i64, i8* }* %75, i32 0, i32 0
  %77 = load i64, i64* %76
  %78 = alloca i64
  store i64 0, i64* %78
  switch i64 %77, label %match_default21 [ i64 0, label %match_arm23 i64 1, label %match_arm24 ]
match_arm23:
  %79 = getelementptr { i64, i8* }, { i64, i8* }* %75, i32 0, i32 1
  %80 = load i8*, i8** %79
  %81 = bitcast i8* %80 to i64*
  %82 = getelementptr i64, i64* %81, i64 0
  %83 = load i64, i64* %82
  %84 = alloca i64
  store i64 %83, i64* %84
  br label %nested_ok30
nested_fail29:
  br label %match_default21
nested_ok30:
  %85 = zext i1 1 to i64
  store i64 %85, i64* %78
  br label %match_end22
match_arm24:
  %86 = getelementptr { i64, i8* }, { i64, i8* }* %75, i32 0, i32 1
  %87 = load i8*, i8** %86
  %88 = bitcast i8* %87 to i64*
  %89 = getelementptr i64, i64* %88, i64 0
  %90 = load i64, i64* %89
  %91 = inttoptr i64 %90 to %nyx_string*
  %92 = alloca %nyx_string*
  store %nyx_string* %91, %nyx_string** %92
  br label %nested_ok32
nested_fail31:
  br label %match_default21
nested_ok32:
  %93 = zext i1 0 to i64
  store i64 %93, i64* %78
  br label %match_end22
match_default21:
  br label %match_end22
match_end22:
  %94 = load i64, i64* %78
  %95 = trunc i64 %94 to i1
  ret i1 %95
}

define i64 @main(
i32 %argc, i8** %argv) {
  call void @nyx_set_args(i32 %argc, i8** %argv)
  %96 = call i8* @safe_divide(i64 100, i64 4)
  %97 = alloca i8*
  store i8* %96, i8** %97
  %98 = getelementptr [9 x i8], [9 x i8]* @.str2, i32 0, i32 0
  %99 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str2.c, i8* %98)
  %100 = load i8*, i8** %97
  %101 = call i64 @unwrap_or(i8* %100, i64 0)
  %102 = call %nyx_string* @nyx_string_from_int(i64 %101)
  %103 = call %nyx_string* @nyx_string_concat(%nyx_string* %99, %nyx_string* %102)
  %104 = call i8* @nyx_string_to_cstr(%nyx_string* %103)
  call void @nyx_print_string(i8* %104)
  %105 = call i8* @safe_sqrt(i64 16)
  %106 = alloca i8*
  store i8* %105, i8** %106
  %107 = getelementptr [12 x i8], [12 x i8]* @.str3, i32 0, i32 0
  %108 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str3.c, i8* %107)
  %109 = load i8*, i8** %106
  %110 = call i64 @unwrap_or(i8* %109, i64 0)
  %111 = call %nyx_string* @nyx_string_from_int(i64 %110)
  %112 = call %nyx_string* @nyx_string_concat(%nyx_string* %108, %nyx_string* %111)
  %113 = call i8* @nyx_string_to_cstr(%nyx_string* %112)
  call void @nyx_print_string(i8* %113)
  %114 = call i8* @safe_divide(i64 10, i64 0)
  %115 = alloca i8*
  store i8* %114, i8** %115
  %116 = load i8*, i8** %115
  %117 = bitcast i8* %116 to { i64, i8* }*
  %118 = getelementptr { i64, i8* }, { i64, i8* }* %117, i32 0, i32 0
  %119 = load i64, i64* %118
  %120 = alloca i64
  store i64 0, i64* %120
  switch i64 %119, label %match_default33 [ i64 0, label %match_arm35 i64 1, label %match_arm36 ]
match_arm35:
  %121 = getelementptr { i64, i8* }, { i64, i8* }* %117, i32 0, i32 1
  %122 = load i8*, i8** %121
  %123 = bitcast i8* %122 to i64*
  %124 = getelementptr i64, i64* %123, i64 0
  %125 = load i64, i64* %124
  %126 = alloca i64
  store i64 %125, i64* %126
  br label %nested_ok42
nested_fail41:
  br label %match_default33
nested_ok42:
  %127 = getelementptr [11 x i8], [11 x i8]* @.str4, i32 0, i32 0
  %128 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str4.c, i8* %127)
  %129 = call i8* @nyx_string_to_cstr(%nyx_string* %128)
  call void @nyx_print_string(i8* %129)
  br label %match_end34
match_arm36:
  %130 = getelementptr { i64, i8* }, { i64, i8* }* %117, i32 0, i32 1
  %131 = load i8*, i8** %130
  %132 = bitcast i8* %131 to i64*
  %133 = getelementptr i64, i64* %132, i64 0
  %134 = load i64, i64* %133
  %135 = inttoptr i64 %134 to %nyx_string*
  %136 = alloca %nyx_string*
  store %nyx_string* %135, %nyx_string** %136
  br label %nested_ok44
nested_fail43:
  br label %match_default33
nested_ok44:
  %137 = getelementptr [9 x i8], [9 x i8]* @.str5, i32 0, i32 0
  %138 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str5.c, i8* %137)
  %139 = load %nyx_string*, %nyx_string** %136
  %140 = call %nyx_string* @nyx_string_concat(%nyx_string* %138, %nyx_string* %139)
  %141 = call i8* @nyx_string_to_cstr(%nyx_string* %140)
  call void @nyx_print_string(i8* %141)
  br label %match_end34
match_default33:
  br label %match_end34
match_end34:
  %142 = load i64, i64* %120
  %143 = sub i64 0, 5
  %144 = call i8* @safe_sqrt(i64 %143)
  %145 = alloca i8*
  store i8* %144, i8** %145
  %146 = load i8*, i8** %145
  %147 = bitcast i8* %146 to { i64, i8* }*
  %148 = getelementptr { i64, i8* }, { i64, i8* }* %147, i32 0, i32 0
  %149 = load i64, i64* %148
  %150 = alloca i64
  store i64 0, i64* %150
  switch i64 %149, label %match_default45 [ i64 0, label %match_arm47 i64 1, label %match_arm48 ]
match_arm47:
  %151 = getelementptr { i64, i8* }, { i64, i8* }* %147, i32 0, i32 1
  %152 = load i8*, i8** %151
  %153 = bitcast i8* %152 to i64*
  %154 = getelementptr i64, i64* %153, i64 0
  %155 = load i64, i64* %154
  %156 = alloca i64
  store i64 %155, i64* %156
  br label %nested_ok54
nested_fail53:
  br label %match_default45
nested_ok54:
  %157 = getelementptr [11 x i8], [11 x i8]* @.str6, i32 0, i32 0
  %158 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str6.c, i8* %157)
  %159 = call i8* @nyx_string_to_cstr(%nyx_string* %158)
  call void @nyx_print_string(i8* %159)
  br label %match_end46
match_arm48:
  %160 = getelementptr { i64, i8* }, { i64, i8* }* %147, i32 0, i32 1
  %161 = load i8*, i8** %160
  %162 = bitcast i8* %161 to i64*
  %163 = getelementptr i64, i64* %162, i64 0
  %164 = load i64, i64* %163
  %165 = inttoptr i64 %164 to %nyx_string*
  %166 = alloca %nyx_string*
  store %nyx_string* %165, %nyx_string** %166
  br label %nested_ok56
nested_fail55:
  br label %match_default45
nested_ok56:
  %167 = getelementptr [9 x i8], [9 x i8]* @.str7, i32 0, i32 0
  %168 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str7.c, i8* %167)
  %169 = load %nyx_string*, %nyx_string** %166
  %170 = call %nyx_string* @nyx_string_concat(%nyx_string* %168, %nyx_string* %169)
  %171 = call i8* @nyx_string_to_cstr(%nyx_string* %170)
  call void @nyx_print_string(i8* %171)
  br label %match_end46
match_default45:
  br label %match_end46
match_end46:
  %172 = load i64, i64* %150
  %173 = call i8* @safe_divide(i64 100, i64 5)
  %174 = alloca i8*
  store i8* %173, i8** %174
  %175 = load i8*, i8** %174
  %176 = call i1 @is_ok(i8* %175)
  br i1 %176, label %then57, label %else58
then57:
  %177 = load i8*, i8** %174
  %178 = call i64 @unwrap_or(i8* %177, i64 0)
  %179 = alloca i64
  store i64 %178, i64* %179
  %180 = load i64, i64* %179
  %181 = call i8* @safe_sqrt(i64 %180)
  %182 = alloca i8*
  store i8* %181, i8** %182
  %183 = getelementptr [15 x i8], [15 x i8]* @.str8, i32 0, i32 0
  %184 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str8.c, i8* %183)
  %185 = load i8*, i8** %182
  %186 = call i64 @unwrap_or(i8* %185, i64 0)
  %187 = call %nyx_string* @nyx_string_from_int(i64 %186)
  %188 = call %nyx_string* @nyx_string_concat(%nyx_string* %184, %nyx_string* %187)
  %189 = call i8* @nyx_string_to_cstr(%nyx_string* %188)
  call void @nyx_print_string(i8* %189)
  br label %merge59
else58:
  br label %merge59
merge59:
  %190 = getelementptr [15 x i8], [15 x i8]* @.str9, i32 0, i32 0
  %191 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str9.c, i8* %190)
  %192 = call i8* @GC_malloc(i64 16)
  %193 = bitcast i8* %192 to { i64, i8* }*
  %194 = getelementptr { i64, i8* }, { i64, i8* }* %193, i32 0, i32 0
  store i64 0, i64* %194
  %195 = getelementptr { i64, i8* }, { i64, i8* }* %193, i32 0, i32 1
  %196 = call i8* @GC_malloc(i64 8)
  %197 = bitcast i8* %196 to i64*
  %198 = getelementptr i64, i64* %197, i64 0
  store i64 1, i64* %198
  store i8* %196, i8** %195
  %199 = call i1 @is_ok(i8* %192)
  %200 = zext i1 %199 to i64
  %201 = call %nyx_string* @nyx_string_from_bool(i64 %200)
  %202 = call %nyx_string* @nyx_string_concat(%nyx_string* %191, %nyx_string* %201)
  %203 = call i8* @nyx_string_to_cstr(%nyx_string* %202)
  call void @nyx_print_string(i8* %203)
  %204 = getelementptr [13 x i8], [13 x i8]* @.str10, i32 0, i32 0
  %205 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str10.c, i8* %204)
  %206 = call i8* @GC_malloc(i64 16)
  %207 = bitcast i8* %206 to { i64, i8* }*
  %208 = getelementptr { i64, i8* }, { i64, i8* }* %207, i32 0, i32 0
  store i64 1, i64* %208
  %209 = getelementptr { i64, i8* }, { i64, i8* }* %207, i32 0, i32 1
  %210 = call i8* @GC_malloc(i64 8)
  %211 = bitcast i8* %210 to i64*
  %212 = getelementptr [5 x i8], [5 x i8]* @.str11, i32 0, i32 0
  %213 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str11.c, i8* %212)
  %214 = ptrtoint %nyx_string* %213 to i64
  %215 = getelementptr i64, i64* %211, i64 0
  store i64 %214, i64* %215
  store i8* %210, i8** %209
  %216 = call i1 @is_ok(i8* %206)
  %217 = zext i1 %216 to i64
  %218 = call %nyx_string* @nyx_string_from_bool(i64 %217)
  %219 = call %nyx_string* @nyx_string_concat(%nyx_string* %205, %nyx_string* %218)
  %220 = call i8* @nyx_string_to_cstr(%nyx_string* %219)
  call void @nyx_print_string(i8* %220)
  ret i64 0
}


attributes #0 = { returns_twice }

