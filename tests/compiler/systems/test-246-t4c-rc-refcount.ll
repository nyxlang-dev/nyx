source_filename = "/home/admin/nyx/lang/tests/compiler/systems/test-246-t4c-rc-refcount.nx"
target triple = "x86_64-pc-linux-gnu"

@.str0 = private unnamed_addr constant [7 x i8] c"frees=\00"
@.str0.c = internal global %nyx_string* null
@.str1 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str1.c = internal global %nyx_string* null
@.str2 = private unnamed_addr constant [3 x i8] c"ok\00"
@.str2.c = internal global %nyx_string* null
@__nyx_test_failed = external global i64
@__nyx_test_mode = external global i64
%Rc_int = type { i64*, i64* }

; Nyx Compiler Bootstrap v3.0
; Generated from: /home/admin/nyx/lang/tests/compiler/systems/test-246-t4c-rc-refcount.nx

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

@g_frees = global i64 0

define internal i64 @use_clone(
%Rc_int* %a.param) {
  %b.dropslot = alloca %Rc_int
  %b.dropflag = alloca i1
  store i1 false, i1* %b.dropflag
  %a.ptr = alloca %Rc_int*
  store %Rc_int* %a.param, %Rc_int** %a.ptr
  %__defer_retval = alloca i64
  store i64 0, i64* %__defer_retval
  %1 = load %Rc_int*, %Rc_int** %a.ptr
  %2 = call %Rc_int @rc_clone_int(%Rc_int* %1)
  %3 = alloca %Rc_int
  store %Rc_int %2, %Rc_int* %3
  store %Rc_int %2, %Rc_int* %b.dropslot
  store i1 true, i1* %b.dropflag
  br label %defer_cleanup_0
defer_cleanup_0:
  %4 = load i1, i1* %b.dropflag
  br i1 %4, label %drop_do_1, label %drop_skip_1
drop_do_1:
  %5 = load %Rc_int, %Rc_int* %b.dropslot
  %6 = call i64 @Rc_int_drop(%Rc_int %5)
  br label %drop_skip_1
drop_skip_1:
  %7 = load i64, i64* %__defer_retval
  ret i64 %7
}

define internal i64 @scope(
) {
  %a.dropslot = alloca %Rc_int
  %a.dropflag = alloca i1
  store i1 false, i1* %a.dropflag
  %__defer_retval = alloca i64
  store i64 0, i64* %__defer_retval
  %8 = call %Rc_int @rc_new_int(i64 42)
  %9 = alloca %Rc_int
  store %Rc_int %8, %Rc_int* %9
  store %Rc_int %8, %Rc_int* %a.dropslot
  store i1 true, i1* %a.dropflag
  %10 = call i64 @use_clone(%Rc_int* %9)
  br label %defer_cleanup_2
defer_cleanup_2:
  %11 = load i1, i1* %a.dropflag
  br i1 %11, label %drop_do_3, label %drop_skip_3
drop_do_3:
  %12 = load %Rc_int, %Rc_int* %a.dropslot
  %13 = call i64 @Rc_int_drop(%Rc_int %12)
  br label %drop_skip_3
drop_skip_3:
  %14 = load i64, i64* %__defer_retval
  ret i64 %14
}

define i64 @main(
i32 %argc, i8** %argv) {
  call void @nyx_set_args(i32 %argc, i8** %argv)
  %15 = call i64 @scope()
  %16 = getelementptr [7 x i8], [7 x i8]* @.str0, i32 0, i32 0
  %17 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str0.c, i8* %16)
  %18 = load i64, i64* @g_frees
  %19 = call %nyx_string* @nyx_string_from_int(i64 %18)
  %20 = call %nyx_string* @nyx_string_concat(%nyx_string* %17, %nyx_string* %19)
  %21 = call i8* @nyx_string_to_cstr(%nyx_string* %20)
  call void @nyx_print_string(i8* %21)
  %22 = load i64, i64* @g_frees
  %23 = icmp eq i64 %22, 1
  %24 = getelementptr [17 x i8], [17 x i8]* @.str1, i32 0, i32 0
  %25 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1.c, i8* %24)
  %26 = call i8* @nyx_string_to_cstr(%nyx_string* %25)
  br i1 %23, label %assert_pass_4, label %assert_fail_4
assert_fail_4:
  call void @nyx_assert_fail(i8* %26)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_4
assert_pass_4:
  %27 = getelementptr [3 x i8], [3 x i8]* @.str2, i32 0, i32 0
  %28 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str2.c, i8* %27)
  %29 = call i8* @nyx_string_to_cstr(%nyx_string* %28)
  call void @nyx_print_string(i8* %29)
  ret i64 0
}

define internal %Rc_int @rc_clone_int(
%Rc_int* %r.param) {
  %r.ptr = alloca %Rc_int*
  store %Rc_int* %r.param, %Rc_int** %r.ptr
  %30 = load %Rc_int*, %Rc_int** %r.ptr
  %31 = getelementptr %Rc_int, %Rc_int* %30, i32 0, i32 1
  %32 = load i64*, i64** %31
  %33 = alloca i64*
  store i64* %32, i64** %33
  %34 = load i64*, i64** %33
  %35 = load i64*, i64** %33
  %36 = load i64, i64* %35
  %37 = add i64 %36, 1
  store i64 %37, i64* %34
  %38 = getelementptr %Rc_int, %Rc_int* null, i32 1
  %39 = ptrtoint %Rc_int* %38 to i64
  %40 = call i8* @GC_malloc(i64 %39)
  %41 = bitcast i8* %40 to %Rc_int*
  %42 = load %Rc_int*, %Rc_int** %r.ptr
  %43 = getelementptr %Rc_int, %Rc_int* %42, i32 0, i32 0
  %44 = load i64*, i64** %43
  %45 = getelementptr %Rc_int, %Rc_int* %41, i32 0, i32 0
  store i64* %44, i64** %45
  %46 = load %Rc_int*, %Rc_int** %r.ptr
  %47 = getelementptr %Rc_int, %Rc_int* %46, i32 0, i32 1
  %48 = load i64*, i64** %47
  %49 = getelementptr %Rc_int, %Rc_int* %41, i32 0, i32 1
  store i64* %48, i64** %49
  %50 = load %Rc_int, %Rc_int* %41
  ret %Rc_int %50
}

define internal %Rc_int @rc_new_int(
i64 %v.param) {
  %v.ptr = alloca i64
  store i64 %v.param, i64* %v.ptr
  %51 = getelementptr i64, i64* null, i32 1
  %52 = ptrtoint i64* %51 to i64
  %53 = mul i64 1, %52
  %54 = call i8* @malloc(i64 %53)
  %55 = bitcast i8* %54 to i64*
  %56 = alloca i64*
  store i64* %55, i64** %56
  %57 = load i64*, i64** %56
  %58 = load i64, i64* %v.ptr
  store i64 %58, i64* %57
  %59 = getelementptr i64, i64* null, i32 1
  %60 = ptrtoint i64* %59 to i64
  %61 = mul i64 1, %60
  %62 = call i8* @malloc(i64 %61)
  %63 = bitcast i8* %62 to i64*
  %64 = alloca i64*
  store i64* %63, i64** %64
  %65 = load i64*, i64** %64
  store i64 1, i64* %65
  %66 = getelementptr %Rc_int, %Rc_int* null, i32 1
  %67 = ptrtoint %Rc_int* %66 to i64
  %68 = call i8* @GC_malloc(i64 %67)
  %69 = bitcast i8* %68 to %Rc_int*
  %70 = load i64*, i64** %56
  %71 = getelementptr %Rc_int, %Rc_int* %69, i32 0, i32 0
  store i64* %70, i64** %71
  %72 = load i64*, i64** %64
  %73 = getelementptr %Rc_int, %Rc_int* %69, i32 0, i32 1
  store i64* %72, i64** %73
  %74 = load %Rc_int, %Rc_int* %69
  ret %Rc_int %74
}

define internal i64 @Rc_int_drop(
%Rc_int %self.param) {
  %self.ptr = alloca %Rc_int
  store %Rc_int %self.param, %Rc_int* %self.ptr
  %75 = getelementptr %Rc_int, %Rc_int* %self.ptr, i32 0, i32 1
  %76 = load i64*, i64** %75
  %77 = alloca i64*
  store i64* %76, i64** %77
  %78 = load i64*, i64** %77
  %79 = load i64*, i64** %77
  %80 = load i64, i64* %79
  %81 = sub i64 %80, 1
  store i64 %81, i64* %78
  %82 = load i64*, i64** %77
  %83 = load i64, i64* %82
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %then5, label %else6
then5:
  %85 = getelementptr %Rc_int, %Rc_int* %self.ptr, i32 0, i32 0
  %86 = load i64*, i64** %85
  %87 = bitcast i64* %86 to i8*
  call void @free(i8* %87)
  %88 = getelementptr %Rc_int, %Rc_int* %self.ptr, i32 0, i32 1
  %89 = load i64*, i64** %88
  %90 = bitcast i64* %89 to i8*
  call void @free(i8* %90)
  %91 = load i64, i64* @g_frees
  %92 = add i64 %91, 1
  store i64 %92, i64* @g_frees
  br label %merge7
else6:
  br label %merge7
merge7:
  ret i64 0
}


attributes #0 = { returns_twice }

