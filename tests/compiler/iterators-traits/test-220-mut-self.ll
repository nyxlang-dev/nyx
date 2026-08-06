source_filename = "/home/admin/nyx/lang/tests/compiler/iterators-traits/test-220-mut-self.nx"
target triple = "x86_64-pc-linux-gnu"

%Counter = type { i64 }

%Rect = type { i64, i64 }

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
@.str6 = private unnamed_addr constant [12 x i8] c"mut-self OK\00"
@.str6.c = internal global %nyx_string* null
@__nyx_test_failed = external global i64
@__nyx_test_mode = external global i64
; Nyx Compiler Bootstrap v3.0
; Generated from: /home/admin/nyx/lang/tests/compiler/iterators-traits/test-220-mut-self.nx

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


define internal i64 @Counter_bump(
%Counter* %self.param, i64 %k.param) {
  %k.ptr = alloca i64
  store i64 %k.param, i64* %k.ptr
  %1 = getelementptr %Counter, %Counter* %self.param, i32 0, i32 0
  %2 = load i64, i64* %1
  %3 = load i64, i64* %k.ptr
  %4 = add i64 %2, %3
  %5 = getelementptr %Counter, %Counter* %self.param, i32 0, i32 0
  store i64 %4, i64* %5
  ret i64 0
}

define internal i64 @Counter_reset(
%Counter* %self.param) {
  %6 = getelementptr %Counter, %Counter* %self.param, i32 0, i32 0
  store i64 0, i64* %6
  ret i64 0
}

define internal i64 @Counter_get(
%Counter %self.param) {
  %self.ptr = alloca %Counter
  store %Counter %self.param, %Counter* %self.ptr
  %7 = getelementptr %Counter, %Counter* %self.ptr, i32 0, i32 0
  %8 = load i64, i64* %7
  ret i64 %8
}

define internal i64 @Rect_grow(
%Rect* %self.param, i64 %dw.param, i64 %dh.param) {
  %dw.ptr = alloca i64
  store i64 %dw.param, i64* %dw.ptr
  %dh.ptr = alloca i64
  store i64 %dh.param, i64* %dh.ptr
  %9 = getelementptr %Rect, %Rect* %self.param, i32 0, i32 0
  %10 = load i64, i64* %9
  %11 = load i64, i64* %dw.ptr
  %12 = add i64 %10, %11
  %13 = getelementptr %Rect, %Rect* %self.param, i32 0, i32 0
  store i64 %12, i64* %13
  %14 = getelementptr %Rect, %Rect* %self.param, i32 0, i32 1
  %15 = load i64, i64* %14
  %16 = load i64, i64* %dh.ptr
  %17 = add i64 %15, %16
  %18 = getelementptr %Rect, %Rect* %self.param, i32 0, i32 1
  store i64 %17, i64* %18
  ret i64 0
}

define internal i64 @Rect_area(
%Rect %self.param) {
  %self.ptr = alloca %Rect
  store %Rect %self.param, %Rect* %self.ptr
  %19 = getelementptr %Rect, %Rect* %self.ptr, i32 0, i32 0
  %20 = load i64, i64* %19
  %21 = getelementptr %Rect, %Rect* %self.ptr, i32 0, i32 1
  %22 = load i64, i64* %21
  %23 = mul i64 %20, %22
  ret i64 %23
}

define i64 @main(
i32 %argc, i8** %argv) {
  call void @nyx_set_args(i32 %argc, i8** %argv)
  %24 = getelementptr %Counter, %Counter* null, i32 1
  %25 = ptrtoint %Counter* %24 to i64
  %26 = call i8* @GC_malloc(i64 %25)
  %27 = bitcast i8* %26 to %Counter*
  %28 = getelementptr %Counter, %Counter* %27, i32 0, i32 0
  store i64 0, i64* %28
  %29 = load %Counter, %Counter* %27
  %30 = alloca %Counter
  store %Counter %29, %Counter* %30
  %31 = call i64 @Counter_bump(%Counter* %30, i64 5)
  %32 = call i64 @Counter_bump(%Counter* %30, i64 3)
  %33 = getelementptr %Counter, %Counter* %30, i32 0, i32 0
  %34 = load i64, i64* %33
  %35 = icmp eq i64 %34, 8
  %36 = getelementptr [17 x i8], [17 x i8]* @.str0, i32 0, i32 0
  %37 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str0.c, i8* %36)
  %38 = call i8* @nyx_string_to_cstr(%nyx_string* %37)
  br i1 %35, label %assert_pass_0, label %assert_fail_0
assert_fail_0:
  call void @nyx_assert_fail(i8* %38)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_0
assert_pass_0:
  %39 = load %Counter, %Counter* %30
  %40 = call i64 @Counter_get(%Counter %39)
  %41 = icmp eq i64 %40, 8
  %42 = getelementptr [17 x i8], [17 x i8]* @.str1, i32 0, i32 0
  %43 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1.c, i8* %42)
  %44 = call i8* @nyx_string_to_cstr(%nyx_string* %43)
  br i1 %41, label %assert_pass_1, label %assert_fail_1
assert_fail_1:
  call void @nyx_assert_fail(i8* %44)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_1
assert_pass_1:
  %45 = call i64 @Counter_reset(%Counter* %30)
  %46 = getelementptr %Counter, %Counter* %30, i32 0, i32 0
  %47 = load i64, i64* %46
  %48 = icmp eq i64 %47, 0
  %49 = getelementptr [17 x i8], [17 x i8]* @.str2, i32 0, i32 0
  %50 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str2.c, i8* %49)
  %51 = call i8* @nyx_string_to_cstr(%nyx_string* %50)
  br i1 %48, label %assert_pass_2, label %assert_fail_2
assert_fail_2:
  call void @nyx_assert_fail(i8* %51)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_2
assert_pass_2:
  %52 = getelementptr %Rect, %Rect* null, i32 1
  %53 = ptrtoint %Rect* %52 to i64
  %54 = call i8* @GC_malloc(i64 %53)
  %55 = bitcast i8* %54 to %Rect*
  %56 = getelementptr %Rect, %Rect* %55, i32 0, i32 0
  store i64 2, i64* %56
  %57 = getelementptr %Rect, %Rect* %55, i32 0, i32 1
  store i64 3, i64* %57
  %58 = load %Rect, %Rect* %55
  %59 = alloca %Rect
  store %Rect %58, %Rect* %59
  %60 = call i64 @Rect_grow(%Rect* %59, i64 1, i64 2)
  %61 = getelementptr %Rect, %Rect* %59, i32 0, i32 0
  %62 = load i64, i64* %61
  %63 = icmp eq i64 %62, 3
  %64 = getelementptr [17 x i8], [17 x i8]* @.str3, i32 0, i32 0
  %65 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str3.c, i8* %64)
  %66 = call i8* @nyx_string_to_cstr(%nyx_string* %65)
  br i1 %63, label %assert_pass_3, label %assert_fail_3
assert_fail_3:
  call void @nyx_assert_fail(i8* %66)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_3
assert_pass_3:
  %67 = getelementptr %Rect, %Rect* %59, i32 0, i32 1
  %68 = load i64, i64* %67
  %69 = icmp eq i64 %68, 5
  %70 = getelementptr [17 x i8], [17 x i8]* @.str4, i32 0, i32 0
  %71 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str4.c, i8* %70)
  %72 = call i8* @nyx_string_to_cstr(%nyx_string* %71)
  br i1 %69, label %assert_pass_4, label %assert_fail_4
assert_fail_4:
  call void @nyx_assert_fail(i8* %72)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_4
assert_pass_4:
  %73 = load %Rect, %Rect* %59
  %74 = call i64 @Rect_area(%Rect %73)
  %75 = icmp eq i64 %74, 15
  %76 = getelementptr [17 x i8], [17 x i8]* @.str5, i32 0, i32 0
  %77 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str5.c, i8* %76)
  %78 = call i8* @nyx_string_to_cstr(%nyx_string* %77)
  br i1 %75, label %assert_pass_5, label %assert_fail_5
assert_fail_5:
  call void @nyx_assert_fail(i8* %78)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_5
assert_pass_5:
  %79 = getelementptr [12 x i8], [12 x i8]* @.str6, i32 0, i32 0
  %80 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str6.c, i8* %79)
  %81 = call i8* @nyx_string_to_cstr(%nyx_string* %80)
  call void @nyx_print_string(i8* %81)
  ret i64 0
}


attributes #0 = { returns_twice }

