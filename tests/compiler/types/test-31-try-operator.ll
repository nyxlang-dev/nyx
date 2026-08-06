source_filename = "/home/admin/nyx/lang/tests/compiler/types/test-31-try-operator.nx"
target triple = "x86_64-pc-linux-gnu"

@.str0 = private unnamed_addr constant [17 x i8] c"division by zero\00"
@.str0.c = internal global %nyx_string* null
@.str1 = private unnamed_addr constant [18 x i8] c"compute(100,5) = \00"
@.str1.c = internal global %nyx_string* null
@.str2 = private unnamed_addr constant [8 x i8] c"error: \00"
@.str2.c = internal global %nyx_string* null
@.str3 = private unnamed_addr constant [13 x i8] c"unexpected: \00"
@.str3.c = internal global %nyx_string* null
@.str4 = private unnamed_addr constant [9 x i8] c"caught: \00"
@.str4.c = internal global %nyx_string* null
@__nyx_test_failed = external global i64
@__nyx_test_mode = external global i64
; Nyx Compiler Bootstrap v3.0
; Generated from: /home/admin/nyx/lang/tests/compiler/types/test-31-try-operator.nx

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

define internal i8* @compute(
i64 %x.param, i64 %y.param) {
  %x.ptr = alloca i64
  store i64 %x.param, i64* %x.ptr
  %y.ptr = alloca i64
  store i64 %y.param, i64* %y.ptr
  %23 = load i64, i64* %x.ptr
  %24 = load i64, i64* %y.ptr
  %25 = call i8* @safe_divide(i64 %23, i64 %24)
  %26 = bitcast i8* %25 to { i64, i8* }*
  %27 = getelementptr { i64, i8* }, { i64, i8* }* %26, i32 0, i32 0
  %28 = load i64, i64* %27
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %try_ok3, label %try_err4
try_err4:
  ret i8* %25
try_ok3:
  %30 = getelementptr { i64, i8* }, { i64, i8* }* %26, i32 0, i32 1
  %31 = load i8*, i8** %30
  %32 = bitcast i8* %31 to i64*
  %33 = load i64, i64* %32
  %34 = alloca i64
  store i64 %33, i64* %34
  %35 = load i64, i64* %34
  %36 = call i8* @safe_divide(i64 %35, i64 2)
  %37 = bitcast i8* %36 to { i64, i8* }*
  %38 = getelementptr { i64, i8* }, { i64, i8* }* %37, i32 0, i32 0
  %39 = load i64, i64* %38
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %try_ok6, label %try_err7
try_err7:
  ret i8* %36
try_ok6:
  %41 = getelementptr { i64, i8* }, { i64, i8* }* %37, i32 0, i32 1
  %42 = load i8*, i8** %41
  %43 = bitcast i8* %42 to i64*
  %44 = load i64, i64* %43
  %45 = alloca i64
  store i64 %44, i64* %45
  %46 = call i8* @GC_malloc(i64 16)
  %47 = bitcast i8* %46 to { i64, i8* }*
  %48 = getelementptr { i64, i8* }, { i64, i8* }* %47, i32 0, i32 0
  store i64 0, i64* %48
  %49 = getelementptr { i64, i8* }, { i64, i8* }* %47, i32 0, i32 1
  %50 = call i8* @GC_malloc(i64 8)
  %51 = bitcast i8* %50 to i64*
  %52 = load i64, i64* %45
  %53 = getelementptr i64, i64* %51, i64 0
  store i64 %52, i64* %53
  store i8* %50, i8** %49
  ret i8* %46
}

define i64 @main(
i32 %argc, i8** %argv) {
  call void @nyx_set_args(i32 %argc, i8** %argv)
  %54 = call i8* @compute(i64 100, i64 5)
  %55 = alloca i8*
  store i8* %54, i8** %55
  %56 = load i8*, i8** %55
  %57 = bitcast i8* %56 to { i64, i8* }*
  %58 = getelementptr { i64, i8* }, { i64, i8* }* %57, i32 0, i32 0
  %59 = load i64, i64* %58
  %60 = alloca i64
  store i64 0, i64* %60
  switch i64 %59, label %match_default9 [ i64 0, label %match_arm11 i64 1, label %match_arm12 ]
match_arm11:
  %61 = getelementptr { i64, i8* }, { i64, i8* }* %57, i32 0, i32 1
  %62 = load i8*, i8** %61
  %63 = bitcast i8* %62 to i64*
  %64 = getelementptr i64, i64* %63, i64 0
  %65 = load i64, i64* %64
  %66 = alloca i64
  store i64 %65, i64* %66
  br label %nested_ok18
nested_fail17:
  br label %match_default9
nested_ok18:
  %67 = getelementptr [18 x i8], [18 x i8]* @.str1, i32 0, i32 0
  %68 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1.c, i8* %67)
  %69 = load i64, i64* %66
  %70 = call %nyx_string* @nyx_string_from_int(i64 %69)
  %71 = call %nyx_string* @nyx_string_concat(%nyx_string* %68, %nyx_string* %70)
  %72 = call i8* @nyx_string_to_cstr(%nyx_string* %71)
  call void @nyx_print_string(i8* %72)
  br label %match_end10
match_arm12:
  %73 = getelementptr { i64, i8* }, { i64, i8* }* %57, i32 0, i32 1
  %74 = load i8*, i8** %73
  %75 = bitcast i8* %74 to i64*
  %76 = getelementptr i64, i64* %75, i64 0
  %77 = load i64, i64* %76
  %78 = inttoptr i64 %77 to %nyx_string*
  %79 = alloca %nyx_string*
  store %nyx_string* %78, %nyx_string** %79
  br label %nested_ok20
nested_fail19:
  br label %match_default9
nested_ok20:
  %80 = getelementptr [8 x i8], [8 x i8]* @.str2, i32 0, i32 0
  %81 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str2.c, i8* %80)
  %82 = load %nyx_string*, %nyx_string** %79
  %83 = call %nyx_string* @nyx_string_concat(%nyx_string* %81, %nyx_string* %82)
  %84 = call i8* @nyx_string_to_cstr(%nyx_string* %83)
  call void @nyx_print_string(i8* %84)
  br label %match_end10
match_default9:
  br label %match_end10
match_end10:
  %85 = load i64, i64* %60
  %86 = call i8* @compute(i64 100, i64 0)
  %87 = alloca i8*
  store i8* %86, i8** %87
  %88 = load i8*, i8** %87
  %89 = bitcast i8* %88 to { i64, i8* }*
  %90 = getelementptr { i64, i8* }, { i64, i8* }* %89, i32 0, i32 0
  %91 = load i64, i64* %90
  %92 = alloca i64
  store i64 0, i64* %92
  switch i64 %91, label %match_default21 [ i64 0, label %match_arm23 i64 1, label %match_arm24 ]
match_arm23:
  %93 = getelementptr { i64, i8* }, { i64, i8* }* %89, i32 0, i32 1
  %94 = load i8*, i8** %93
  %95 = bitcast i8* %94 to i64*
  %96 = getelementptr i64, i64* %95, i64 0
  %97 = load i64, i64* %96
  %98 = alloca i64
  store i64 %97, i64* %98
  br label %nested_ok30
nested_fail29:
  br label %match_default21
nested_ok30:
  %99 = getelementptr [13 x i8], [13 x i8]* @.str3, i32 0, i32 0
  %100 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str3.c, i8* %99)
  %101 = load i64, i64* %98
  %102 = call %nyx_string* @nyx_string_from_int(i64 %101)
  %103 = call %nyx_string* @nyx_string_concat(%nyx_string* %100, %nyx_string* %102)
  %104 = call i8* @nyx_string_to_cstr(%nyx_string* %103)
  call void @nyx_print_string(i8* %104)
  br label %match_end22
match_arm24:
  %105 = getelementptr { i64, i8* }, { i64, i8* }* %89, i32 0, i32 1
  %106 = load i8*, i8** %105
  %107 = bitcast i8* %106 to i64*
  %108 = getelementptr i64, i64* %107, i64 0
  %109 = load i64, i64* %108
  %110 = inttoptr i64 %109 to %nyx_string*
  %111 = alloca %nyx_string*
  store %nyx_string* %110, %nyx_string** %111
  br label %nested_ok32
nested_fail31:
  br label %match_default21
nested_ok32:
  %112 = getelementptr [9 x i8], [9 x i8]* @.str4, i32 0, i32 0
  %113 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str4.c, i8* %112)
  %114 = load %nyx_string*, %nyx_string** %111
  %115 = call %nyx_string* @nyx_string_concat(%nyx_string* %113, %nyx_string* %114)
  %116 = call i8* @nyx_string_to_cstr(%nyx_string* %115)
  call void @nyx_print_string(i8* %116)
  br label %match_end22
match_default21:
  br label %match_end22
match_end22:
  %117 = load i64, i64* %92
  ret i64 0
}


attributes #0 = { returns_twice }

