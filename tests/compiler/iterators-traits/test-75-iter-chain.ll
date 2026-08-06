source_filename = "/home/admin/nyx/lang/tests/compiler/iterators-traits/test-75-iter-chain.nx"
target triple = "x86_64-pc-linux-gnu"

@.str0 = private unnamed_addr constant [14 x i8] c"iter chain ok\00"
@.str0.c = internal global %nyx_string* null
@__nyx_test_failed = external global i64
@__nyx_test_mode = external global i64
; Nyx Compiler Bootstrap v3.0
; Generated from: /home/admin/nyx/lang/tests/compiler/iterators-traits/test-75-iter-chain.nx

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


define internal i64 @square(
i64 %x.param) {
  %x.ptr = alloca i64
  store i64 %x.param, i64* %x.ptr
  %1 = load i64, i64* %x.ptr
  %2 = load i64, i64* %x.ptr
  %3 = mul i64 %1, %2
  ret i64 %3
}

define internal i1 @is_big(
i64 %x.param) {
  %x.ptr = alloca i64
  store i64 %x.param, i64* %x.ptr
  %4 = load i64, i64* %x.ptr
  %5 = icmp sgt i64 %4, 10
  ret i1 %5
}

define internal i64 @double(
i64 %x.param) {
  %x.ptr = alloca i64
  store i64 %x.param, i64* %x.ptr
  %6 = load i64, i64* %x.ptr
  %7 = mul i64 %6, 2
  ret i64 %7
}

define i64 @main(
i32 %argc, i8** %argv) {
  call void @nyx_set_args(i32 %argc, i8** %argv)
  %8 = call { i64, i8* }* @nyx_array_new_ptr()
  call void @nyx_array_push_tagged({ i64, i8* }* %8, i64 1, i64 1)
  call void @nyx_array_push_tagged({ i64, i8* }* %8, i64 2, i64 1)
  call void @nyx_array_push_tagged({ i64, i8* }* %8, i64 3, i64 1)
  call void @nyx_array_push_tagged({ i64, i8* }* %8, i64 4, i64 1)
  call void @nyx_array_push_tagged({ i64, i8* }* %8, i64 5, i64 1)
  call void @nyx_array_push_tagged({ i64, i8* }* %8, i64 6, i64 1)
  call void @nyx_array_push_tagged({ i64, i8* }* %8, i64 7, i64 1)
  call void @nyx_array_push_tagged({ i64, i8* }* %8, i64 8, i64 1)
  call void @nyx_array_push_tagged({ i64, i8* }* %8, i64 9, i64 1)
  call void @nyx_array_push_tagged({ i64, i8* }* %8, i64 10, i64 1)
  %9 = alloca { i64, i8* }*
  store { i64, i8* }* %8, { i64, i8* }** %9
  %10 = load { i64, i8* }*, { i64, i8* }** %9
  %11 = call i8* @nyx_iter_from_array({ i64, i8* }* %10)
  %12 = call i8* @GC_malloc(i64 16)
  %13 = bitcast i8* %12 to { i8*, i8* }*
  %14 = bitcast i64 (...)* @square to i8*
  %15 = getelementptr { i8*, i8* }, { i8*, i8* }* %13, i32 0, i32 0
  store i8* %14, i8** %15
  %16 = getelementptr { i8*, i8* }, { i8*, i8* }* %13, i32 0, i32 1
  store i8* null, i8** %16
  %17 = call i8* @nyx_iter_map(i8* %11, i8* %12)
  %18 = call i8* @GC_malloc(i64 16)
  %19 = bitcast i8* %18 to { i8*, i8* }*
  %20 = bitcast i64 (...)* @is_big to i8*
  %21 = getelementptr { i8*, i8* }, { i8*, i8* }* %19, i32 0, i32 0
  store i8* %20, i8** %21
  %22 = getelementptr { i8*, i8* }, { i8*, i8* }* %19, i32 0, i32 1
  store i8* null, i8** %22
  %23 = call i8* @nyx_iter_filter(i8* %17, i8* %18)
  %24 = call { i64, i8* }* @nyx_iter_collect(i8* %23)
  %25 = alloca { i64, i8* }*
  store { i64, i8* }* %24, { i64, i8* }** %25
  %26 = load { i64, i8* }*, { i64, i8* }** %25
  %27 = call i64 @nyx_array_length({ i64, i8* }* %26)
  call void @nyx_print_int(i64 %27)
  %28 = load { i64, i8* }*, { i64, i8* }** %25
  %29 = call i64 @nyx_array_get({ i64, i8* }* %28, i64 0)
  %30 = alloca i64
  store i64 %29, i64* %30
  %31 = load { i64, i8* }*, { i64, i8* }** %25
  %32 = call i64 @nyx_array_get({ i64, i8* }* %31, i64 5)
  %33 = alloca i64
  store i64 %32, i64* %33
  %34 = load i64, i64* %30
  call void @nyx_print_int(i64 %34)
  %35 = load i64, i64* %33
  call void @nyx_print_int(i64 %35)
  %36 = load { i64, i8* }*, { i64, i8* }** %9
  %37 = call i8* @nyx_iter_from_array({ i64, i8* }* %36)
  %38 = call i8* @GC_malloc(i64 16)
  %39 = bitcast i8* %38 to { i8*, i8* }*
  %40 = bitcast i64 (...)* @square to i8*
  %41 = getelementptr { i8*, i8* }, { i8*, i8* }* %39, i32 0, i32 0
  store i8* %40, i8** %41
  %42 = getelementptr { i8*, i8* }, { i8*, i8* }* %39, i32 0, i32 1
  store i8* null, i8** %42
  %43 = call i8* @nyx_iter_map(i8* %37, i8* %38)
  %44 = call i8* @GC_malloc(i64 16)
  %45 = bitcast i8* %44 to { i8*, i8* }*
  %46 = bitcast i64 (...)* @is_big to i8*
  %47 = getelementptr { i8*, i8* }, { i8*, i8* }* %45, i32 0, i32 0
  store i8* %46, i8** %47
  %48 = getelementptr { i8*, i8* }, { i8*, i8* }* %45, i32 0, i32 1
  store i8* null, i8** %48
  %49 = call i8* @nyx_iter_filter(i8* %43, i8* %44)
  %50 = call i64 @nyx_iter_sum(i8* %49)
  %51 = alloca i64
  store i64 %50, i64* %51
  %52 = load i64, i64* %51
  call void @nyx_print_int(i64 %52)
  %53 = load { i64, i8* }*, { i64, i8* }** %9
  %54 = call i8* @nyx_iter_from_array({ i64, i8* }* %53)
  %55 = call i8* @nyx_iter_skip(i8* %54, i64 2)
  %56 = call i8* @nyx_iter_take(i8* %55, i64 5)
  %57 = call { i64, i8* }* @nyx_iter_collect(i8* %56)
  %58 = alloca { i64, i8* }*
  store { i64, i8* }* %57, { i64, i8* }** %58
  %59 = load { i64, i8* }*, { i64, i8* }** %58
  %60 = call i64 @nyx_array_length({ i64, i8* }* %59)
  call void @nyx_print_int(i64 %60)
  %61 = load { i64, i8* }*, { i64, i8* }** %58
  %62 = call i64 @nyx_array_get({ i64, i8* }* %61, i64 0)
  %63 = alloca i64
  store i64 %62, i64* %63
  %64 = load { i64, i8* }*, { i64, i8* }** %58
  %65 = call i64 @nyx_array_get({ i64, i8* }* %64, i64 4)
  %66 = alloca i64
  store i64 %65, i64* %66
  %67 = load i64, i64* %63
  call void @nyx_print_int(i64 %67)
  %68 = load i64, i64* %66
  call void @nyx_print_int(i64 %68)
  %69 = call { i64, i8* }* @nyx_array_new_ptr()
  call void @nyx_array_push_tagged({ i64, i8* }* %69, i64 1, i64 1)
  call void @nyx_array_push_tagged({ i64, i8* }* %69, i64 2, i64 1)
  call void @nyx_array_push_tagged({ i64, i8* }* %69, i64 3, i64 1)
  %70 = alloca { i64, i8* }*
  store { i64, i8* }* %69, { i64, i8* }** %70
  %71 = call { i64, i8* }* @nyx_array_new_ptr()
  call void @nyx_array_push_tagged({ i64, i8* }* %71, i64 4, i64 1)
  call void @nyx_array_push_tagged({ i64, i8* }* %71, i64 5, i64 1)
  call void @nyx_array_push_tagged({ i64, i8* }* %71, i64 6, i64 1)
  %72 = alloca { i64, i8* }*
  store { i64, i8* }* %71, { i64, i8* }** %72
  %73 = load { i64, i8* }*, { i64, i8* }** %70
  %74 = call i8* @nyx_iter_from_array({ i64, i8* }* %73)
  %75 = alloca i8*
  store i8* %74, i8** %75
  %76 = load { i64, i8* }*, { i64, i8* }** %72
  %77 = call i8* @nyx_iter_from_array({ i64, i8* }* %76)
  %78 = alloca i8*
  store i8* %77, i8** %78
  %79 = load i8*, i8** %75
  %80 = load i8*, i8** %78
  %81 = call i8* @nyx_iter_chain(i8* %79, i8* %80)
  %82 = call { i64, i8* }* @nyx_iter_collect(i8* %81)
  %83 = alloca { i64, i8* }*
  store { i64, i8* }* %82, { i64, i8* }** %83
  %84 = load { i64, i8* }*, { i64, i8* }** %83
  %85 = call i64 @nyx_array_length({ i64, i8* }* %84)
  call void @nyx_print_int(i64 %85)
  %86 = load { i64, i8* }*, { i64, i8* }** %83
  %87 = call i64 @nyx_array_get({ i64, i8* }* %86, i64 0)
  %88 = alloca i64
  store i64 %87, i64* %88
  %89 = load { i64, i8* }*, { i64, i8* }** %83
  %90 = call i64 @nyx_array_get({ i64, i8* }* %89, i64 5)
  %91 = alloca i64
  store i64 %90, i64* %91
  %92 = load i64, i64* %88
  call void @nyx_print_int(i64 %92)
  %93 = load i64, i64* %91
  call void @nyx_print_int(i64 %93)
  %94 = load { i64, i8* }*, { i64, i8* }** %70
  %95 = call i8* @nyx_iter_from_array({ i64, i8* }* %94)
  %96 = alloca i8*
  store i8* %95, i8** %96
  %97 = load { i64, i8* }*, { i64, i8* }** %72
  %98 = call i8* @nyx_iter_from_array({ i64, i8* }* %97)
  %99 = alloca i8*
  store i8* %98, i8** %99
  %100 = load i8*, i8** %96
  %101 = load i8*, i8** %99
  %102 = call i8* @nyx_iter_chain(i8* %100, i8* %101)
  %103 = call i8* @GC_malloc(i64 16)
  %104 = bitcast i8* %103 to { i8*, i8* }*
  %105 = bitcast i64 (...)* @double to i8*
  %106 = getelementptr { i8*, i8* }, { i8*, i8* }* %104, i32 0, i32 0
  store i8* %105, i8** %106
  %107 = getelementptr { i8*, i8* }, { i8*, i8* }* %104, i32 0, i32 1
  store i8* null, i8** %107
  %108 = call i8* @nyx_iter_map(i8* %102, i8* %103)
  %109 = call i64 @nyx_iter_sum(i8* %108)
  %110 = alloca i64
  store i64 %109, i64* %110
  %111 = load i64, i64* %110
  call void @nyx_print_int(i64 %111)
  %112 = alloca i64
  store i64 0, i64* %112
  %113 = load { i64, i8* }*, { i64, i8* }** %9
  %114 = call i8* @nyx_iter_from_array({ i64, i8* }* %113)
  %115 = call i8* @GC_malloc(i64 16)
  %116 = bitcast i8* %115 to { i8*, i8* }*
  %117 = bitcast i64 (...)* @square to i8*
  %118 = getelementptr { i8*, i8* }, { i8*, i8* }* %116, i32 0, i32 0
  store i8* %117, i8** %118
  %119 = getelementptr { i8*, i8* }, { i8*, i8* }* %116, i32 0, i32 1
  store i8* null, i8** %119
  %120 = call i8* @nyx_iter_map(i8* %114, i8* %115)
  %121 = call i8* @nyx_iter_take(i8* %120, i64 4)
  %122 = call i8* @llvm.stacksave()
  br label %for_cond0
for_cond0:
  %123 = call i8* @nyx_iter_next(i8* %121)
  %124 = bitcast i8* %123 to { i64, i8* }*
  %125 = getelementptr { i64, i8* }, { i64, i8* }* %124, i32 0, i32 0
  %126 = load i64, i64* %125
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %for_body1, label %for_end2
for_body1:
  call void @llvm.stackrestore(i8* %122)
  %128 = getelementptr { i64, i8* }, { i64, i8* }* %124, i32 0, i32 1
  %129 = load i8*, i8** %128
  %130 = bitcast i8* %129 to i64*
  %131 = load i64, i64* %130
  %132 = alloca i64
  store i64 %131, i64* %132
  %133 = load i64, i64* %112
  %134 = load i64, i64* %132
  %135 = add i64 %133, %134
  store i64 %135, i64* %112
  br label %for_cond0
for_end2:
  %136 = load i64, i64* %112
  call void @nyx_print_int(i64 %136)
  %137 = getelementptr [14 x i8], [14 x i8]* @.str0, i32 0, i32 0
  %138 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str0.c, i8* %137)
  %139 = call i8* @nyx_string_to_cstr(%nyx_string* %138)
  call void @nyx_print_string(i8* %139)
  ret i64 0
}


attributes #0 = { returns_twice }

