source_filename = "/home/admin/nyx/lang/tests/compiler/systems/test-62-typed-fn.nx"
target triple = "x86_64-pc-linux-gnu"

@.str0 = private unnamed_addr constant [4 x i8] c"ten\00"
@.str0.c = internal global %nyx_string* null
@.str1 = private unnamed_addr constant [8 x i8] c"fifteen\00"
@.str1.c = internal global %nyx_string* null
@.str2 = private unnamed_addr constant [6 x i8] c"other\00"
@.str2.c = internal global %nyx_string* null
@.str3 = private unnamed_addr constant [27 x i8] c"All typed fn tests passed!\00"
@.str3.c = internal global %nyx_string* null
@__nyx_test_failed = external global i64
@__nyx_test_mode = external global i64
; Nyx Compiler Bootstrap v3.0
; Generated from: /home/admin/nyx/lang/tests/compiler/systems/test-62-typed-fn.nx

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
i64 %x.param) {
  %x.ptr = alloca i64
  store i64 %x.param, i64* %x.ptr
  %1 = load i64, i64* %x.ptr
  %2 = mul i64 %1, 2
  ret i64 %2
}

define internal i64 @triple(
i64 %x.param) {
  %x.ptr = alloca i64
  store i64 %x.param, i64* %x.ptr
  %3 = load i64, i64* %x.ptr
  %4 = mul i64 %3, 3
  ret i64 %4
}

define internal %nyx_string* @to_str(
i64 %x.param) {
  %x.ptr = alloca i64
  store i64 %x.param, i64* %x.ptr
  %5 = load i64, i64* %x.ptr
  %6 = icmp eq i64 %5, 10
  br i1 %6, label %then0, label %else1
then0:
  %7 = getelementptr [4 x i8], [4 x i8]* @.str0, i32 0, i32 0
  %8 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str0.c, i8* %7)
  ret %nyx_string* %8
else1:
  br label %merge2
merge2:
  %9 = load i64, i64* %x.ptr
  %10 = icmp eq i64 %9, 15
  br i1 %10, label %then3, label %else4
then3:
  %11 = getelementptr [8 x i8], [8 x i8]* @.str1, i32 0, i32 0
  %12 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1.c, i8* %11)
  ret %nyx_string* %12
else4:
  br label %merge5
merge5:
  %13 = getelementptr [6 x i8], [6 x i8]* @.str2, i32 0, i32 0
  %14 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str2.c, i8* %13)
  ret %nyx_string* %14
}

define internal i64 @apply_int(
i8* %f.param, i64 %x.param) {
  %f.ptr = alloca i8*
  store i8* %f.param, i8** %f.ptr
  %x.ptr = alloca i64
  store i64 %x.param, i64* %x.ptr
  %15 = load i64, i64* %x.ptr
  %16 = load i8*, i8** %f.ptr
  %17 = bitcast i8* %16 to { i8*, i8* }*
  %18 = getelementptr { i8*, i8* }, { i8*, i8* }* %17, i32 0, i32 0
  %19 = load i8*, i8** %18
  %20 = getelementptr { i8*, i8* }, { i8*, i8* }* %17, i32 0, i32 1
  %21 = load i8*, i8** %20
  %22 = icmp ne i8* %21, null
  br i1 %22, label %cl_env6, label %cl_noenv7
cl_env6:
  %23 = bitcast i8* %19 to i64 (i8*, i64)*
  %24 = call i64 %23(i8* %21, i64 %15)
  br label %cl_merge8
cl_noenv7:
  %25 = bitcast i8* %19 to i64 (i64)*
  %26 = call i64 %25(i64 %15)
  br label %cl_merge8
cl_merge8:
  %27 = phi i64 [%24, %cl_env6], [%26, %cl_noenv7]
  ret i64 %27
}

define internal %nyx_string* @apply_to_string(
i8* %f.param, i64 %x.param) {
  %f.ptr = alloca i8*
  store i8* %f.param, i8** %f.ptr
  %x.ptr = alloca i64
  store i64 %x.param, i64* %x.ptr
  %28 = load i64, i64* %x.ptr
  %29 = load i8*, i8** %f.ptr
  %30 = bitcast i8* %29 to { i8*, i8* }*
  %31 = getelementptr { i8*, i8* }, { i8*, i8* }* %30, i32 0, i32 0
  %32 = load i8*, i8** %31
  %33 = getelementptr { i8*, i8* }, { i8*, i8* }* %30, i32 0, i32 1
  %34 = load i8*, i8** %33
  %35 = icmp ne i8* %34, null
  br i1 %35, label %cl_env9, label %cl_noenv10
cl_env9:
  %36 = bitcast i8* %32 to %nyx_string* (i8*, i64)*
  %37 = call %nyx_string* %36(i8* %34, i64 %28)
  br label %cl_merge11
cl_noenv10:
  %38 = bitcast i8* %32 to %nyx_string* (i64)*
  %39 = call %nyx_string* %38(i64 %28)
  br label %cl_merge11
cl_merge11:
  %40 = phi %nyx_string* [%37, %cl_env9], [%39, %cl_noenv10]
  ret %nyx_string* %40
}

%SharedEnv_make_adder = type { i64 }
define internal i8* @make_adder(
i64 %n.param) {
  %41 = getelementptr %SharedEnv_make_adder, %SharedEnv_make_adder* null, i32 1
  %42 = ptrtoint %SharedEnv_make_adder* %41 to i64
  %43 = call i8* @GC_malloc(i64 %42)
  %44 = bitcast i8* %43 to %SharedEnv_make_adder*
  %45 = getelementptr %SharedEnv_make_adder, %SharedEnv_make_adder* %44, i32 0, i32 0
  store i64 %n.param, i64* %45
  %46 = bitcast %SharedEnv_make_adder* %44 to i8*
  %47 = call i8* @GC_malloc(i64 16)
  %48 = bitcast i8* %47 to { i8*, i8* }*
  %49 = bitcast i64 (...)* @make_adder__add to i8*
  %50 = getelementptr { i8*, i8* }, { i8*, i8* }* %48, i32 0, i32 0
  store i8* %49, i8** %50
  %51 = getelementptr { i8*, i8* }, { i8*, i8* }* %48, i32 0, i32 1
  store i8* %46, i8** %51
  ret i8* %47
}

define internal i64 @make_adder__add(%SharedEnv_make_adder* %env.param, i64 %x.param) {
  %1 = getelementptr %SharedEnv_make_adder, %SharedEnv_make_adder* %env.param, i32 0, i32 0
  %2 = alloca i64
  store i64 %x.param, i64* %2
  %3 = load i64, i64* %1
  %4 = load i64, i64* %2
  %5 = add i64 %3, %4
  ret i64 %5
}

define i64 @main(
i32 %argc, i8** %argv) {
  call void @nyx_set_args(i32 %argc, i8** %argv)
  %52 = call i8* @GC_malloc(i64 16)
  %53 = bitcast i8* %52 to { i8*, i8* }*
  %54 = bitcast i64 (...)* @double to i8*
  %55 = getelementptr { i8*, i8* }, { i8*, i8* }* %53, i32 0, i32 0
  store i8* %54, i8** %55
  %56 = getelementptr { i8*, i8* }, { i8*, i8* }* %53, i32 0, i32 1
  store i8* null, i8** %56
  %57 = call i64 @apply_int(i8* %52, i64 5)
  call void @nyx_print_int(i64 %57)
  %58 = call i8* @GC_malloc(i64 16)
  %59 = bitcast i8* %58 to { i8*, i8* }*
  %60 = bitcast i64 (...)* @triple to i8*
  %61 = getelementptr { i8*, i8* }, { i8*, i8* }* %59, i32 0, i32 0
  store i8* %60, i8** %61
  %62 = getelementptr { i8*, i8* }, { i8*, i8* }* %59, i32 0, i32 1
  store i8* null, i8** %62
  %63 = call i64 @apply_int(i8* %58, i64 5)
  call void @nyx_print_int(i64 %63)
  %64 = call i8* @GC_malloc(i64 16)
  %65 = bitcast i8* %64 to { i8*, i8* }*
  %66 = bitcast i64 (...)* @to_str to i8*
  %67 = getelementptr { i8*, i8* }, { i8*, i8* }* %65, i32 0, i32 0
  store i8* %66, i8** %67
  %68 = getelementptr { i8*, i8* }, { i8*, i8* }* %65, i32 0, i32 1
  store i8* null, i8** %68
  %69 = call %nyx_string* @apply_to_string(i8* %64, i64 10)
  %70 = call i8* @nyx_string_to_cstr(%nyx_string* %69)
  call void @nyx_print_string(i8* %70)
  %71 = call i8* @GC_malloc(i64 16)
  %72 = bitcast i8* %71 to { i8*, i8* }*
  %73 = bitcast i64 (...)* @to_str to i8*
  %74 = getelementptr { i8*, i8* }, { i8*, i8* }* %72, i32 0, i32 0
  store i8* %73, i8** %74
  %75 = getelementptr { i8*, i8* }, { i8*, i8* }* %72, i32 0, i32 1
  store i8* null, i8** %75
  %76 = call %nyx_string* @apply_to_string(i8* %71, i64 15)
  %77 = call i8* @nyx_string_to_cstr(%nyx_string* %76)
  call void @nyx_print_string(i8* %77)
  %78 = call i8* @GC_malloc(i64 16)
  %79 = bitcast i8* %78 to { i8*, i8* }*
  %80 = bitcast i64 (...)* @double to i8*
  %81 = getelementptr { i8*, i8* }, { i8*, i8* }* %79, i32 0, i32 0
  store i8* %80, i8** %81
  %82 = getelementptr { i8*, i8* }, { i8*, i8* }* %79, i32 0, i32 1
  store i8* null, i8** %82
  %83 = alloca i8*
  store i8* %78, i8** %83
  %84 = load i8*, i8** %83
  %85 = bitcast i8* %84 to { i8*, i8* }*
  %86 = getelementptr { i8*, i8* }, { i8*, i8* }* %85, i32 0, i32 0
  %87 = load i8*, i8** %86
  %88 = getelementptr { i8*, i8* }, { i8*, i8* }* %85, i32 0, i32 1
  %89 = load i8*, i8** %88
  %90 = icmp ne i8* %89, null
  br i1 %90, label %cl_env12, label %cl_noenv13
cl_env12:
  %91 = bitcast i8* %87 to i64 (i8*, i64)*
  %92 = call i64 %91(i8* %89, i64 7)
  br label %cl_merge14
cl_noenv13:
  %93 = bitcast i8* %87 to i64 (i64)*
  %94 = call i64 %93(i64 7)
  br label %cl_merge14
cl_merge14:
  %95 = phi i64 [%92, %cl_env12], [%94, %cl_noenv13]
  call void @nyx_print_int(i64 %95)
  %96 = call i8* @make_adder(i64 5)
  %97 = alloca i8*
  store i8* %96, i8** %97
  %98 = load i8*, i8** %97
  %99 = bitcast i8* %98 to { i8*, i8* }*
  %100 = getelementptr { i8*, i8* }, { i8*, i8* }* %99, i32 0, i32 0
  %101 = load i8*, i8** %100
  %102 = getelementptr { i8*, i8* }, { i8*, i8* }* %99, i32 0, i32 1
  %103 = load i8*, i8** %102
  %104 = icmp ne i8* %103, null
  br i1 %104, label %cl_env15, label %cl_noenv16
cl_env15:
  %105 = bitcast i8* %101 to i64 (i8*, i64)*
  %106 = call i64 %105(i8* %103, i64 10)
  br label %cl_merge17
cl_noenv16:
  %107 = bitcast i8* %101 to i64 (i64)*
  %108 = call i64 %107(i64 10)
  br label %cl_merge17
cl_merge17:
  %109 = phi i64 [%106, %cl_env15], [%108, %cl_noenv16]
  call void @nyx_print_int(i64 %109)
  %110 = call i8* @GC_malloc(i64 16)
  %111 = bitcast i8* %110 to { i8*, i8* }*
  %112 = bitcast i64 (...)* @triple to i8*
  %113 = getelementptr { i8*, i8* }, { i8*, i8* }* %111, i32 0, i32 0
  store i8* %112, i8** %113
  %114 = getelementptr { i8*, i8* }, { i8*, i8* }* %111, i32 0, i32 1
  store i8* null, i8** %114
  %115 = alloca i8*
  store i8* %110, i8** %115
  %116 = load i8*, i8** %115
  %117 = bitcast i8* %116 to { i8*, i8* }*
  %118 = getelementptr { i8*, i8* }, { i8*, i8* }* %117, i32 0, i32 0
  %119 = load i8*, i8** %118
  %120 = getelementptr { i8*, i8* }, { i8*, i8* }* %117, i32 0, i32 1
  %121 = load i8*, i8** %120
  %122 = icmp ne i8* %121, null
  br i1 %122, label %cl_env18, label %cl_noenv19
cl_env18:
  %123 = bitcast i8* %119 to i64 (i8*, i64)*
  %124 = call i64 %123(i8* %121, i64 4)
  br label %cl_merge20
cl_noenv19:
  %125 = bitcast i8* %119 to i64 (i64)*
  %126 = call i64 %125(i64 4)
  br label %cl_merge20
cl_merge20:
  %127 = phi i64 [%124, %cl_env18], [%126, %cl_noenv19]
  call void @nyx_print_int(i64 %127)
  %128 = getelementptr [27 x i8], [27 x i8]* @.str3, i32 0, i32 0
  %129 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str3.c, i8* %128)
  %130 = call i8* @nyx_string_to_cstr(%nyx_string* %129)
  call void @nyx_print_string(i8* %130)
  ret i64 0
}


attributes #0 = { returns_twice }

