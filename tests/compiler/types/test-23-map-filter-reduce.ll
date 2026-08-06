source_filename = "/home/admin/nyx/lang/tests/compiler/types/test-23-map-filter-reduce.nx"
target triple = "x86_64-pc-linux-gnu"

@__nyx_test_failed = external global i64
@__nyx_test_mode = external global i64
; Nyx Compiler Bootstrap v3.0
; Generated from: /home/admin/nyx/lang/tests/compiler/types/test-23-map-filter-reduce.nx

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


define internal { i64, i8* }* @array_map(
{ i64, i8* }* %arr.param, i8* %f.param) {
  %arr.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %arr.param, { i64, i8* }** %arr.ptr
  %f.ptr = alloca i8*
  store i8* %f.param, i8** %f.ptr
  %1 = call { i64, i8* }* @nyx_array_new_ptr()
  %2 = alloca { i64, i8* }*
  store { i64, i8* }* %1, { i64, i8* }** %2
  %3 = alloca i64
  store i64 0, i64* %3
  %4 = call i8* @llvm.stacksave()
  br label %while_cond0
while_cond0:
  %5 = load i64, i64* %3
  %6 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %7 = call i64 @nyx_array_length({ i64, i8* }* %6)
  %8 = icmp slt i64 %5, %7
  br i1 %8, label %while_body1, label %while_end2
while_body1:
  call void @llvm.stackrestore(i8* %4)
  %9 = load { i64, i8* }*, { i64, i8* }** %2
  %10 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %11 = load i64, i64* %3
  %12 = call i64 @nyx_array_get({ i64, i8* }* %10, i64 %11)
  %13 = load i8*, i8** %f.ptr
  %14 = bitcast i8* %13 to { i8*, i8* }*
  %15 = getelementptr { i8*, i8* }, { i8*, i8* }* %14, i32 0, i32 0
  %16 = load i8*, i8** %15
  %17 = getelementptr { i8*, i8* }, { i8*, i8* }* %14, i32 0, i32 1
  %18 = load i8*, i8** %17
  %19 = icmp ne i8* %18, null
  br i1 %19, label %cl_env3, label %cl_noenv4
cl_env3:
  %20 = bitcast i8* %16 to i64 (i8*, i64)*
  %21 = call i64 %20(i8* %18, i64 %12)
  br label %cl_merge5
cl_noenv4:
  %22 = bitcast i8* %16 to i64 (i64)*
  %23 = call i64 %22(i64 %12)
  br label %cl_merge5
cl_merge5:
  %24 = phi i64 [%21, %cl_env3], [%23, %cl_noenv4]
  call void @nyx_array_push({ i64, i8* }* %9, i64 %24)
  %25 = load i64, i64* %3
  %26 = add i64 %25, 1
  store i64 %26, i64* %3
  br label %while_cond0
while_end2:
  %27 = load { i64, i8* }*, { i64, i8* }** %2
  ret { i64, i8* }* %27
}

define internal { i64, i8* }* @array_filter(
{ i64, i8* }* %arr.param, i8* %predicate.param) {
  %arr.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %arr.param, { i64, i8* }** %arr.ptr
  %predicate.ptr = alloca i8*
  store i8* %predicate.param, i8** %predicate.ptr
  %28 = call { i64, i8* }* @nyx_array_new_ptr()
  %29 = alloca { i64, i8* }*
  store { i64, i8* }* %28, { i64, i8* }** %29
  %30 = alloca i64
  store i64 0, i64* %30
  %31 = call i8* @llvm.stacksave()
  br label %while_cond6
while_cond6:
  %32 = load i64, i64* %30
  %33 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %34 = call i64 @nyx_array_length({ i64, i8* }* %33)
  %35 = icmp slt i64 %32, %34
  br i1 %35, label %while_body7, label %while_end8
while_body7:
  call void @llvm.stackrestore(i8* %31)
  %36 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %37 = load i64, i64* %30
  %38 = call i64 @nyx_array_get({ i64, i8* }* %36, i64 %37)
  %39 = load i8*, i8** %predicate.ptr
  %40 = bitcast i8* %39 to { i8*, i8* }*
  %41 = getelementptr { i8*, i8* }, { i8*, i8* }* %40, i32 0, i32 0
  %42 = load i8*, i8** %41
  %43 = getelementptr { i8*, i8* }, { i8*, i8* }* %40, i32 0, i32 1
  %44 = load i8*, i8** %43
  %45 = icmp ne i8* %44, null
  br i1 %45, label %cl_env9, label %cl_noenv10
cl_env9:
  %46 = bitcast i8* %42 to i64 (i8*, i64)*
  %47 = call i64 %46(i8* %44, i64 %38)
  br label %cl_merge11
cl_noenv10:
  %48 = bitcast i8* %42 to i64 (i64)*
  %49 = call i64 %48(i64 %38)
  br label %cl_merge11
cl_merge11:
  %50 = phi i64 [%47, %cl_env9], [%49, %cl_noenv10]
  %51 = icmp eq i64 %50, 1
  br i1 %51, label %then12, label %else13
then12:
  %52 = load { i64, i8* }*, { i64, i8* }** %29
  %53 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %54 = load i64, i64* %30
  %55 = call i64 @nyx_array_get({ i64, i8* }* %53, i64 %54)
  %56 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %57 = load i64, i64* %30
  %58 = call i64 @nyx_array_get_tag({ i64, i8* }* %56, i64 %57)
  call void @nyx_array_push_tagged({ i64, i8* }* %52, i64 %55, i64 %58)
  br label %merge14
else13:
  br label %merge14
merge14:
  %59 = load i64, i64* %30
  %60 = add i64 %59, 1
  store i64 %60, i64* %30
  br label %while_cond6
while_end8:
  %61 = load { i64, i8* }*, { i64, i8* }** %29
  ret { i64, i8* }* %61
}

define internal i64 @array_reduce(
{ i64, i8* }* %arr.param, i64 %initial.param, i8* %f.param) {
  %arr.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %arr.param, { i64, i8* }** %arr.ptr
  %initial.ptr = alloca i64
  store i64 %initial.param, i64* %initial.ptr
  %f.ptr = alloca i8*
  store i8* %f.param, i8** %f.ptr
  %62 = load i64, i64* %initial.ptr
  %63 = alloca i64
  store i64 %62, i64* %63
  %64 = alloca i64
  store i64 0, i64* %64
  %65 = call i8* @llvm.stacksave()
  br label %while_cond15
while_cond15:
  %66 = load i64, i64* %64
  %67 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %68 = call i64 @nyx_array_length({ i64, i8* }* %67)
  %69 = icmp slt i64 %66, %68
  br i1 %69, label %while_body16, label %while_end17
while_body16:
  call void @llvm.stackrestore(i8* %65)
  %70 = load i64, i64* %63
  %71 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %72 = load i64, i64* %64
  %73 = call i64 @nyx_array_get({ i64, i8* }* %71, i64 %72)
  %74 = load i8*, i8** %f.ptr
  %75 = bitcast i8* %74 to { i8*, i8* }*
  %76 = getelementptr { i8*, i8* }, { i8*, i8* }* %75, i32 0, i32 0
  %77 = load i8*, i8** %76
  %78 = getelementptr { i8*, i8* }, { i8*, i8* }* %75, i32 0, i32 1
  %79 = load i8*, i8** %78
  %80 = icmp ne i8* %79, null
  br i1 %80, label %cl_env18, label %cl_noenv19
cl_env18:
  %81 = bitcast i8* %77 to i64 (i8*, i64, i64)*
  %82 = call i64 %81(i8* %79, i64 %70, i64 %73)
  br label %cl_merge20
cl_noenv19:
  %83 = bitcast i8* %77 to i64 (i64, i64)*
  %84 = call i64 %83(i64 %70, i64 %73)
  br label %cl_merge20
cl_merge20:
  %85 = phi i64 [%82, %cl_env18], [%84, %cl_noenv19]
  store i64 %85, i64* %63
  %86 = load i64, i64* %64
  %87 = add i64 %86, 1
  store i64 %87, i64* %64
  br label %while_cond15
while_end17:
  %88 = load i64, i64* %63
  ret i64 %88
}

define internal i64 @double(
i64 %n.param) {
  %n.ptr = alloca i64
  store i64 %n.param, i64* %n.ptr
  %89 = load i64, i64* %n.ptr
  %90 = mul i64 %89, 2
  ret i64 %90
}

define internal i64 @square(
i64 %n.param) {
  %n.ptr = alloca i64
  store i64 %n.param, i64* %n.ptr
  %91 = load i64, i64* %n.ptr
  %92 = load i64, i64* %n.ptr
  %93 = mul i64 %91, %92
  ret i64 %93
}

define internal i64 @is_positive(
i64 %n.param) {
  %n.ptr = alloca i64
  store i64 %n.param, i64* %n.ptr
  %94 = load i64, i64* %n.ptr
  %95 = icmp sgt i64 %94, 0
  br i1 %95, label %then21, label %else22
then21:
  ret i64 1
else22:
  br label %merge23
merge23:
  ret i64 0
}

define internal i64 @add(
i64 %a.param, i64 %b.param) {
  %a.ptr = alloca i64
  store i64 %a.param, i64* %a.ptr
  %b.ptr = alloca i64
  store i64 %b.param, i64* %b.ptr
  %96 = load i64, i64* %a.ptr
  %97 = load i64, i64* %b.ptr
  %98 = add i64 %96, %97
  ret i64 %98
}

define internal i64 @multiply(
i64 %a.param, i64 %b.param) {
  %a.ptr = alloca i64
  store i64 %a.param, i64* %a.ptr
  %b.ptr = alloca i64
  store i64 %b.param, i64* %b.ptr
  %99 = load i64, i64* %a.ptr
  %100 = load i64, i64* %b.ptr
  %101 = mul i64 %99, %100
  ret i64 %101
}

define i64 @main(
i32 %argc, i8** %argv) {
  call void @nyx_set_args(i32 %argc, i8** %argv)
  %102 = call { i64, i8* }* @nyx_array_new_ptr()
  call void @nyx_array_push_tagged({ i64, i8* }* %102, i64 1, i64 1)
  call void @nyx_array_push_tagged({ i64, i8* }* %102, i64 2, i64 1)
  call void @nyx_array_push_tagged({ i64, i8* }* %102, i64 3, i64 1)
  call void @nyx_array_push_tagged({ i64, i8* }* %102, i64 4, i64 1)
  call void @nyx_array_push_tagged({ i64, i8* }* %102, i64 5, i64 1)
  %103 = alloca { i64, i8* }*
  store { i64, i8* }* %102, { i64, i8* }** %103
  %104 = load { i64, i8* }*, { i64, i8* }** %103
  %105 = call i8* @GC_malloc(i64 16)
  %106 = bitcast i8* %105 to { i8*, i8* }*
  %107 = bitcast i64 (...)* @double to i8*
  %108 = getelementptr { i8*, i8* }, { i8*, i8* }* %106, i32 0, i32 0
  store i8* %107, i8** %108
  %109 = getelementptr { i8*, i8* }, { i8*, i8* }* %106, i32 0, i32 1
  store i8* null, i8** %109
  %110 = call { i64, i8* }* @array_map({ i64, i8* }* %104, i8* %105)
  %111 = alloca { i64, i8* }*
  store { i64, i8* }* %110, { i64, i8* }** %111
  %112 = load { i64, i8* }*, { i64, i8* }** %111
  %113 = call i64 @nyx_array_get({ i64, i8* }* %112, i64 0)
  %114 = call i64 @nyx_array_get_tag({ i64, i8* }* %112, i64 0)
  %115 = call %nyx_string* @nyx_string_from_tagged(i64 %113, i64 %114, i64 0)
  %116 = call i8* @nyx_string_to_cstr(%nyx_string* %115)
  call void @nyx_print_string(i8* %116)
  %117 = load { i64, i8* }*, { i64, i8* }** %111
  %118 = call i64 @nyx_array_get({ i64, i8* }* %117, i64 4)
  %119 = call i64 @nyx_array_get_tag({ i64, i8* }* %117, i64 4)
  %120 = call %nyx_string* @nyx_string_from_tagged(i64 %118, i64 %119, i64 0)
  %121 = call i8* @nyx_string_to_cstr(%nyx_string* %120)
  call void @nyx_print_string(i8* %121)
  %122 = load { i64, i8* }*, { i64, i8* }** %103
  %123 = call i8* @GC_malloc(i64 16)
  %124 = bitcast i8* %123 to { i8*, i8* }*
  %125 = bitcast i64 (...)* @square to i8*
  %126 = getelementptr { i8*, i8* }, { i8*, i8* }* %124, i32 0, i32 0
  store i8* %125, i8** %126
  %127 = getelementptr { i8*, i8* }, { i8*, i8* }* %124, i32 0, i32 1
  store i8* null, i8** %127
  %128 = call { i64, i8* }* @array_map({ i64, i8* }* %122, i8* %123)
  %129 = alloca { i64, i8* }*
  store { i64, i8* }* %128, { i64, i8* }** %129
  %130 = load { i64, i8* }*, { i64, i8* }** %129
  %131 = call i64 @nyx_array_get({ i64, i8* }* %130, i64 2)
  %132 = call i64 @nyx_array_get_tag({ i64, i8* }* %130, i64 2)
  %133 = call %nyx_string* @nyx_string_from_tagged(i64 %131, i64 %132, i64 0)
  %134 = call i8* @nyx_string_to_cstr(%nyx_string* %133)
  call void @nyx_print_string(i8* %134)
  %135 = call { i64, i8* }* @nyx_array_new_ptr()
  %136 = sub i64 0, 2
  call void @nyx_array_push({ i64, i8* }* %135, i64 %136)
  %137 = sub i64 0, 1
  call void @nyx_array_push({ i64, i8* }* %135, i64 %137)
  call void @nyx_array_push_tagged({ i64, i8* }* %135, i64 0, i64 1)
  call void @nyx_array_push_tagged({ i64, i8* }* %135, i64 1, i64 1)
  call void @nyx_array_push_tagged({ i64, i8* }* %135, i64 2, i64 1)
  %138 = alloca { i64, i8* }*
  store { i64, i8* }* %135, { i64, i8* }** %138
  %139 = load { i64, i8* }*, { i64, i8* }** %138
  %140 = call i8* @GC_malloc(i64 16)
  %141 = bitcast i8* %140 to { i8*, i8* }*
  %142 = bitcast i64 (...)* @is_positive to i8*
  %143 = getelementptr { i8*, i8* }, { i8*, i8* }* %141, i32 0, i32 0
  store i8* %142, i8** %143
  %144 = getelementptr { i8*, i8* }, { i8*, i8* }* %141, i32 0, i32 1
  store i8* null, i8** %144
  %145 = call { i64, i8* }* @array_filter({ i64, i8* }* %139, i8* %140)
  %146 = alloca { i64, i8* }*
  store { i64, i8* }* %145, { i64, i8* }** %146
  %147 = load { i64, i8* }*, { i64, i8* }** %146
  %148 = call i64 @nyx_array_length({ i64, i8* }* %147)
  call void @nyx_print_int(i64 %148)
  %149 = load { i64, i8* }*, { i64, i8* }** %146
  %150 = call i64 @nyx_array_get({ i64, i8* }* %149, i64 0)
  %151 = call i64 @nyx_array_get_tag({ i64, i8* }* %149, i64 0)
  %152 = call %nyx_string* @nyx_string_from_tagged(i64 %150, i64 %151, i64 0)
  %153 = call i8* @nyx_string_to_cstr(%nyx_string* %152)
  call void @nyx_print_string(i8* %153)
  %154 = load { i64, i8* }*, { i64, i8* }** %103
  %155 = call i8* @GC_malloc(i64 16)
  %156 = bitcast i8* %155 to { i8*, i8* }*
  %157 = bitcast i64 (...)* @add to i8*
  %158 = getelementptr { i8*, i8* }, { i8*, i8* }* %156, i32 0, i32 0
  store i8* %157, i8** %158
  %159 = getelementptr { i8*, i8* }, { i8*, i8* }* %156, i32 0, i32 1
  store i8* null, i8** %159
  %160 = call i64 @array_reduce({ i64, i8* }* %154, i64 0, i8* %155)
  %161 = alloca i64
  store i64 %160, i64* %161
  %162 = load i64, i64* %161
  call void @nyx_print_int(i64 %162)
  %163 = load { i64, i8* }*, { i64, i8* }** %103
  %164 = call i8* @GC_malloc(i64 16)
  %165 = bitcast i8* %164 to { i8*, i8* }*
  %166 = bitcast i64 (...)* @multiply to i8*
  %167 = getelementptr { i8*, i8* }, { i8*, i8* }* %165, i32 0, i32 0
  store i8* %166, i8** %167
  %168 = getelementptr { i8*, i8* }, { i8*, i8* }* %165, i32 0, i32 1
  store i8* null, i8** %168
  %169 = call i64 @array_reduce({ i64, i8* }* %163, i64 1, i8* %164)
  %170 = alloca i64
  store i64 %169, i64* %170
  %171 = load i64, i64* %170
  call void @nyx_print_int(i64 %171)
  ret i64 0
}


attributes #0 = { returns_twice }

