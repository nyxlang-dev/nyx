source_filename = "/home/admin/nyx/lang/tests/compiler/types/test-24-fn-as-value.nx"
target triple = "x86_64-pc-linux-gnu"

@__nyx_test_failed = external global i64
@__nyx_test_mode = external global i64
; Nyx Compiler Bootstrap v3.0
; Generated from: /home/admin/nyx/lang/tests/compiler/types/test-24-fn-as-value.nx

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


define internal i64 @double(
i64 %n.param) {
  %n.ptr = alloca i64
  store i64 %n.param, i64* %n.ptr
  %1 = load i64, i64* %n.ptr
  %2 = mul i64 %1, 2
  ret i64 %2
}

define internal i64 @triple(
i64 %n.param) {
  %n.ptr = alloca i64
  store i64 %n.param, i64* %n.ptr
  %3 = load i64, i64* %n.ptr
  %4 = mul i64 %3, 3
  ret i64 %4
}

define internal i64 @negate(
i64 %n.param) {
  %n.ptr = alloca i64
  store i64 %n.param, i64* %n.ptr
  %5 = load i64, i64* %n.ptr
  %6 = sub i64 0, %5
  ret i64 %6
}

define internal i64 @compose(
i8* %f.param, i8* %g.param, i64 %x.param) {
  %f.ptr = alloca i8*
  store i8* %f.param, i8** %f.ptr
  %g.ptr = alloca i8*
  store i8* %g.param, i8** %g.ptr
  %x.ptr = alloca i64
  store i64 %x.param, i64* %x.ptr
  %7 = load i64, i64* %x.ptr
  %8 = load i8*, i8** %g.ptr
  %9 = bitcast i8* %8 to { i8*, i8* }*
  %10 = getelementptr { i8*, i8* }, { i8*, i8* }* %9, i32 0, i32 0
  %11 = load i8*, i8** %10
  %12 = getelementptr { i8*, i8* }, { i8*, i8* }* %9, i32 0, i32 1
  %13 = load i8*, i8** %12
  %14 = icmp ne i8* %13, null
  br i1 %14, label %cl_env0, label %cl_noenv1
cl_env0:
  %15 = bitcast i8* %11 to i64 (i8*, i64)*
  %16 = call i64 %15(i8* %13, i64 %7)
  br label %cl_merge2
cl_noenv1:
  %17 = bitcast i8* %11 to i64 (i64)*
  %18 = call i64 %17(i64 %7)
  br label %cl_merge2
cl_merge2:
  %19 = phi i64 [%16, %cl_env0], [%18, %cl_noenv1]
  %20 = load i8*, i8** %f.ptr
  %21 = bitcast i8* %20 to { i8*, i8* }*
  %22 = getelementptr { i8*, i8* }, { i8*, i8* }* %21, i32 0, i32 0
  %23 = load i8*, i8** %22
  %24 = getelementptr { i8*, i8* }, { i8*, i8* }* %21, i32 0, i32 1
  %25 = load i8*, i8** %24
  %26 = icmp ne i8* %25, null
  br i1 %26, label %cl_env3, label %cl_noenv4
cl_env3:
  %27 = bitcast i8* %23 to i64 (i8*, i64)*
  %28 = call i64 %27(i8* %25, i64 %19)
  br label %cl_merge5
cl_noenv4:
  %29 = bitcast i8* %23 to i64 (i64)*
  %30 = call i64 %29(i64 %19)
  br label %cl_merge5
cl_merge5:
  %31 = phi i64 [%28, %cl_env3], [%30, %cl_noenv4]
  ret i64 %31
}

define i64 @main(
i32 %argc, i8** %argv) {
  call void @nyx_set_args(i32 %argc, i8** %argv)
  %32 = call i8* @GC_malloc(i64 16)
  %33 = bitcast i8* %32 to { i8*, i8* }*
  %34 = bitcast i64 (...)* @double to i8*
  %35 = getelementptr { i8*, i8* }, { i8*, i8* }* %33, i32 0, i32 0
  store i8* %34, i8** %35
  %36 = getelementptr { i8*, i8* }, { i8*, i8* }* %33, i32 0, i32 1
  store i8* null, i8** %36
  %37 = alloca i8*
  store i8* %32, i8** %37
  %38 = load i8*, i8** %37
  %39 = bitcast i8* %38 to { i8*, i8* }*
  %40 = getelementptr { i8*, i8* }, { i8*, i8* }* %39, i32 0, i32 0
  %41 = load i8*, i8** %40
  %42 = getelementptr { i8*, i8* }, { i8*, i8* }* %39, i32 0, i32 1
  %43 = load i8*, i8** %42
  %44 = icmp ne i8* %43, null
  br i1 %44, label %cl_env6, label %cl_noenv7
cl_env6:
  %45 = bitcast i8* %41 to i64 (i8*, i64)*
  %46 = call i64 %45(i8* %43, i64 7)
  br label %cl_merge8
cl_noenv7:
  %47 = bitcast i8* %41 to i64 (i64)*
  %48 = call i64 %47(i64 7)
  br label %cl_merge8
cl_merge8:
  %49 = phi i64 [%46, %cl_env6], [%48, %cl_noenv7]
  call void @nyx_print_int(i64 %49)
  %50 = call i8* @GC_malloc(i64 16)
  %51 = bitcast i8* %50 to { i8*, i8* }*
  %52 = bitcast i64 (...)* @double to i8*
  %53 = getelementptr { i8*, i8* }, { i8*, i8* }* %51, i32 0, i32 0
  store i8* %52, i8** %53
  %54 = getelementptr { i8*, i8* }, { i8*, i8* }* %51, i32 0, i32 1
  store i8* null, i8** %54
  %55 = alloca i8*
  store i8* %50, i8** %55
  %56 = load i8*, i8** %55
  %57 = bitcast i8* %56 to { i8*, i8* }*
  %58 = getelementptr { i8*, i8* }, { i8*, i8* }* %57, i32 0, i32 0
  %59 = load i8*, i8** %58
  %60 = getelementptr { i8*, i8* }, { i8*, i8* }* %57, i32 0, i32 1
  %61 = load i8*, i8** %60
  %62 = icmp ne i8* %61, null
  br i1 %62, label %cl_env9, label %cl_noenv10
cl_env9:
  %63 = bitcast i8* %59 to i64 (i8*, i64)*
  %64 = call i64 %63(i8* %61, i64 5)
  br label %cl_merge11
cl_noenv10:
  %65 = bitcast i8* %59 to i64 (i64)*
  %66 = call i64 %65(i64 5)
  br label %cl_merge11
cl_merge11:
  %67 = phi i64 [%64, %cl_env9], [%66, %cl_noenv10]
  call void @nyx_print_int(i64 %67)
  %68 = call i8* @GC_malloc(i64 16)
  %69 = bitcast i8* %68 to { i8*, i8* }*
  %70 = bitcast i64 (...)* @triple to i8*
  %71 = getelementptr { i8*, i8* }, { i8*, i8* }* %69, i32 0, i32 0
  store i8* %70, i8** %71
  %72 = getelementptr { i8*, i8* }, { i8*, i8* }* %69, i32 0, i32 1
  store i8* null, i8** %72
  store i8* %68, i8** %55
  %73 = load i8*, i8** %55
  %74 = bitcast i8* %73 to { i8*, i8* }*
  %75 = getelementptr { i8*, i8* }, { i8*, i8* }* %74, i32 0, i32 0
  %76 = load i8*, i8** %75
  %77 = getelementptr { i8*, i8* }, { i8*, i8* }* %74, i32 0, i32 1
  %78 = load i8*, i8** %77
  %79 = icmp ne i8* %78, null
  br i1 %79, label %cl_env12, label %cl_noenv13
cl_env12:
  %80 = bitcast i8* %76 to i64 (i8*, i64)*
  %81 = call i64 %80(i8* %78, i64 5)
  br label %cl_merge14
cl_noenv13:
  %82 = bitcast i8* %76 to i64 (i64)*
  %83 = call i64 %82(i64 5)
  br label %cl_merge14
cl_merge14:
  %84 = phi i64 [%81, %cl_env12], [%83, %cl_noenv13]
  call void @nyx_print_int(i64 %84)
  %85 = call i8* @GC_malloc(i64 16)
  %86 = bitcast i8* %85 to { i8*, i8* }*
  %87 = bitcast i64 (...)* @negate to i8*
  %88 = getelementptr { i8*, i8* }, { i8*, i8* }* %86, i32 0, i32 0
  store i8* %87, i8** %88
  %89 = getelementptr { i8*, i8* }, { i8*, i8* }* %86, i32 0, i32 1
  store i8* null, i8** %89
  store i8* %85, i8** %55
  %90 = load i8*, i8** %55
  %91 = bitcast i8* %90 to { i8*, i8* }*
  %92 = getelementptr { i8*, i8* }, { i8*, i8* }* %91, i32 0, i32 0
  %93 = load i8*, i8** %92
  %94 = getelementptr { i8*, i8* }, { i8*, i8* }* %91, i32 0, i32 1
  %95 = load i8*, i8** %94
  %96 = icmp ne i8* %95, null
  br i1 %96, label %cl_env15, label %cl_noenv16
cl_env15:
  %97 = bitcast i8* %93 to i64 (i8*, i64)*
  %98 = call i64 %97(i8* %95, i64 5)
  br label %cl_merge17
cl_noenv16:
  %99 = bitcast i8* %93 to i64 (i64)*
  %100 = call i64 %99(i64 5)
  br label %cl_merge17
cl_merge17:
  %101 = phi i64 [%98, %cl_env15], [%100, %cl_noenv16]
  call void @nyx_print_int(i64 %101)
  %102 = call i8* @GC_malloc(i64 16)
  %103 = bitcast i8* %102 to { i8*, i8* }*
  %104 = bitcast i64 (...)* @double to i8*
  %105 = getelementptr { i8*, i8* }, { i8*, i8* }* %103, i32 0, i32 0
  store i8* %104, i8** %105
  %106 = getelementptr { i8*, i8* }, { i8*, i8* }* %103, i32 0, i32 1
  store i8* null, i8** %106
  %107 = call i8* @GC_malloc(i64 16)
  %108 = bitcast i8* %107 to { i8*, i8* }*
  %109 = bitcast i64 (...)* @triple to i8*
  %110 = getelementptr { i8*, i8* }, { i8*, i8* }* %108, i32 0, i32 0
  store i8* %109, i8** %110
  %111 = getelementptr { i8*, i8* }, { i8*, i8* }* %108, i32 0, i32 1
  store i8* null, i8** %111
  %112 = call i64 @compose(i8* %102, i8* %107, i64 4)
  call void @nyx_print_int(i64 %112)
  %113 = call i8* @GC_malloc(i64 16)
  %114 = bitcast i8* %113 to { i8*, i8* }*
  %115 = bitcast i64 (...)* @negate to i8*
  %116 = getelementptr { i8*, i8* }, { i8*, i8* }* %114, i32 0, i32 0
  store i8* %115, i8** %116
  %117 = getelementptr { i8*, i8* }, { i8*, i8* }* %114, i32 0, i32 1
  store i8* null, i8** %117
  %118 = call i8* @GC_malloc(i64 16)
  %119 = bitcast i8* %118 to { i8*, i8* }*
  %120 = bitcast i64 (...)* @double to i8*
  %121 = getelementptr { i8*, i8* }, { i8*, i8* }* %119, i32 0, i32 0
  store i8* %120, i8** %121
  %122 = getelementptr { i8*, i8* }, { i8*, i8* }* %119, i32 0, i32 1
  store i8* null, i8** %122
  %123 = call i64 @compose(i8* %113, i8* %118, i64 3)
  call void @nyx_print_int(i64 %123)
  ret i64 0
}


attributes #0 = { returns_twice }

