source_filename = "/home/admin/nyx/lang/tests/compiler/types/test-33-returnable-closures.nx"
target triple = "x86_64-pc-linux-gnu"

@.str0 = private unnamed_addr constant [11 x i8] c"add5(3) = \00"
@.str0.c = internal global %nyx_string* null
@.str1 = private unnamed_addr constant [12 x i8] c"add10(3) = \00"
@.str1.c = internal global %nyx_string* null
@.str2 = private unnamed_addr constant [11 x i8] c"add5(0) = \00"
@.str2.c = internal global %nyx_string* null
@.str3 = private unnamed_addr constant [10 x i8] c"counter: \00"
@.str3.c = internal global %nyx_string* null
@.str4 = private unnamed_addr constant [10 x i8] c"counter: \00"
@.str4.c = internal global %nyx_string* null
@.str5 = private unnamed_addr constant [10 x i8] c"counter: \00"
@.str5.c = internal global %nyx_string* null
@.str6 = private unnamed_addr constant [19 x i8] c"apply(add1, 99) = \00"
@.str6.c = internal global %nyx_string* null
@.str7 = private unnamed_addr constant [12 x i8] c"closures OK\00"
@.str7.c = internal global %nyx_string* null
@__nyx_test_failed = external global i64
@__nyx_test_mode = external global i64
; Nyx Compiler Bootstrap v3.0
; Generated from: /home/admin/nyx/lang/tests/compiler/types/test-33-returnable-closures.nx

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


%SharedEnv_make_adder = type { i64 }
define internal i8* @make_adder(
i64 %n.param) {
  %1 = getelementptr %SharedEnv_make_adder, %SharedEnv_make_adder* null, i32 1
  %2 = ptrtoint %SharedEnv_make_adder* %1 to i64
  %3 = call i8* @GC_malloc(i64 %2)
  %4 = bitcast i8* %3 to %SharedEnv_make_adder*
  %5 = getelementptr %SharedEnv_make_adder, %SharedEnv_make_adder* %4, i32 0, i32 0
  store i64 %n.param, i64* %5
  %6 = bitcast %SharedEnv_make_adder* %4 to i8*
  %7 = call i8* @GC_malloc(i64 16)
  %8 = bitcast i8* %7 to { i8*, i8* }*
  %9 = bitcast i64 (...)* @make_adder__add to i8*
  %10 = getelementptr { i8*, i8* }, { i8*, i8* }* %8, i32 0, i32 0
  store i8* %9, i8** %10
  %11 = getelementptr { i8*, i8* }, { i8*, i8* }* %8, i32 0, i32 1
  store i8* %6, i8** %11
  ret i8* %7
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

%SharedEnv_make_counter = type { i64, i64 }
define internal i8* @make_counter(
i64 %start.param) {
  %12 = getelementptr %SharedEnv_make_counter, %SharedEnv_make_counter* null, i32 1
  %13 = ptrtoint %SharedEnv_make_counter* %12 to i64
  %14 = call i8* @GC_malloc(i64 %13)
  %15 = bitcast i8* %14 to %SharedEnv_make_counter*
  %16 = getelementptr %SharedEnv_make_counter, %SharedEnv_make_counter* %15, i32 0, i32 0
  store i64 %start.param, i64* %16
  %17 = load i64, i64* %16
  %18 = getelementptr %SharedEnv_make_counter, %SharedEnv_make_counter* %15, i32 0, i32 1
  store i64 %17, i64* %18
  %19 = bitcast %SharedEnv_make_counter* %15 to i8*
  %20 = call i8* @GC_malloc(i64 16)
  %21 = bitcast i8* %20 to { i8*, i8* }*
  %22 = bitcast i64 (...)* @make_counter__increment to i8*
  %23 = getelementptr { i8*, i8* }, { i8*, i8* }* %21, i32 0, i32 0
  store i8* %22, i8** %23
  %24 = getelementptr { i8*, i8* }, { i8*, i8* }* %21, i32 0, i32 1
  store i8* %19, i8** %24
  ret i8* %20
}

define internal i64 @make_counter__increment(%SharedEnv_make_counter* %env.param) {
  %1 = getelementptr %SharedEnv_make_counter, %SharedEnv_make_counter* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_make_counter, %SharedEnv_make_counter* %env.param, i32 0, i32 1
  %3 = load i64, i64* %2
  %4 = add i64 %3, 1
  store i64 %4, i64* %2
  %5 = load i64, i64* %2
  ret i64 %5
}

define internal i64 @apply(
i8* %f.param, i64 %x.param) {
  %f.ptr = alloca i8*
  store i8* %f.param, i8** %f.ptr
  %x.ptr = alloca i64
  store i64 %x.param, i64* %x.ptr
  %25 = load i64, i64* %x.ptr
  %26 = load i8*, i8** %f.ptr
  %27 = bitcast i8* %26 to { i8*, i8* }*
  %28 = getelementptr { i8*, i8* }, { i8*, i8* }* %27, i32 0, i32 0
  %29 = load i8*, i8** %28
  %30 = getelementptr { i8*, i8* }, { i8*, i8* }* %27, i32 0, i32 1
  %31 = load i8*, i8** %30
  %32 = icmp ne i8* %31, null
  br i1 %32, label %cl_env0, label %cl_noenv1
cl_env0:
  %33 = bitcast i8* %29 to i64 (i8*, i64)*
  %34 = call i64 %33(i8* %31, i64 %25)
  br label %cl_merge2
cl_noenv1:
  %35 = bitcast i8* %29 to i64 (i64)*
  %36 = call i64 %35(i64 %25)
  br label %cl_merge2
cl_merge2:
  %37 = phi i64 [%34, %cl_env0], [%36, %cl_noenv1]
  ret i64 %37
}

define i64 @main(
i32 %argc, i8** %argv) {
  call void @nyx_set_args(i32 %argc, i8** %argv)
  %38 = call i8* @make_adder(i64 5)
  %39 = alloca i8*
  store i8* %38, i8** %39
  %40 = call i8* @make_adder(i64 10)
  %41 = alloca i8*
  store i8* %40, i8** %41
  %42 = getelementptr [11 x i8], [11 x i8]* @.str0, i32 0, i32 0
  %43 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str0.c, i8* %42)
  %44 = load i8*, i8** %39
  %45 = bitcast i8* %44 to { i8*, i8* }*
  %46 = getelementptr { i8*, i8* }, { i8*, i8* }* %45, i32 0, i32 0
  %47 = load i8*, i8** %46
  %48 = getelementptr { i8*, i8* }, { i8*, i8* }* %45, i32 0, i32 1
  %49 = load i8*, i8** %48
  %50 = icmp ne i8* %49, null
  br i1 %50, label %cl_env3, label %cl_noenv4
cl_env3:
  %51 = bitcast i8* %47 to i64 (i8*, i64)*
  %52 = call i64 %51(i8* %49, i64 3)
  br label %cl_merge5
cl_noenv4:
  %53 = bitcast i8* %47 to i64 (i64)*
  %54 = call i64 %53(i64 3)
  br label %cl_merge5
cl_merge5:
  %55 = phi i64 [%52, %cl_env3], [%54, %cl_noenv4]
  %56 = call %nyx_string* @nyx_string_from_int(i64 %55)
  %57 = call %nyx_string* @nyx_string_concat(%nyx_string* %43, %nyx_string* %56)
  %58 = call i8* @nyx_string_to_cstr(%nyx_string* %57)
  call void @nyx_print_string(i8* %58)
  %59 = getelementptr [12 x i8], [12 x i8]* @.str1, i32 0, i32 0
  %60 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1.c, i8* %59)
  %61 = load i8*, i8** %41
  %62 = bitcast i8* %61 to { i8*, i8* }*
  %63 = getelementptr { i8*, i8* }, { i8*, i8* }* %62, i32 0, i32 0
  %64 = load i8*, i8** %63
  %65 = getelementptr { i8*, i8* }, { i8*, i8* }* %62, i32 0, i32 1
  %66 = load i8*, i8** %65
  %67 = icmp ne i8* %66, null
  br i1 %67, label %cl_env6, label %cl_noenv7
cl_env6:
  %68 = bitcast i8* %64 to i64 (i8*, i64)*
  %69 = call i64 %68(i8* %66, i64 3)
  br label %cl_merge8
cl_noenv7:
  %70 = bitcast i8* %64 to i64 (i64)*
  %71 = call i64 %70(i64 3)
  br label %cl_merge8
cl_merge8:
  %72 = phi i64 [%69, %cl_env6], [%71, %cl_noenv7]
  %73 = call %nyx_string* @nyx_string_from_int(i64 %72)
  %74 = call %nyx_string* @nyx_string_concat(%nyx_string* %60, %nyx_string* %73)
  %75 = call i8* @nyx_string_to_cstr(%nyx_string* %74)
  call void @nyx_print_string(i8* %75)
  %76 = getelementptr [11 x i8], [11 x i8]* @.str2, i32 0, i32 0
  %77 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str2.c, i8* %76)
  %78 = load i8*, i8** %39
  %79 = bitcast i8* %78 to { i8*, i8* }*
  %80 = getelementptr { i8*, i8* }, { i8*, i8* }* %79, i32 0, i32 0
  %81 = load i8*, i8** %80
  %82 = getelementptr { i8*, i8* }, { i8*, i8* }* %79, i32 0, i32 1
  %83 = load i8*, i8** %82
  %84 = icmp ne i8* %83, null
  br i1 %84, label %cl_env9, label %cl_noenv10
cl_env9:
  %85 = bitcast i8* %81 to i64 (i8*, i64)*
  %86 = call i64 %85(i8* %83, i64 0)
  br label %cl_merge11
cl_noenv10:
  %87 = bitcast i8* %81 to i64 (i64)*
  %88 = call i64 %87(i64 0)
  br label %cl_merge11
cl_merge11:
  %89 = phi i64 [%86, %cl_env9], [%88, %cl_noenv10]
  %90 = call %nyx_string* @nyx_string_from_int(i64 %89)
  %91 = call %nyx_string* @nyx_string_concat(%nyx_string* %77, %nyx_string* %90)
  %92 = call i8* @nyx_string_to_cstr(%nyx_string* %91)
  call void @nyx_print_string(i8* %92)
  %93 = call i8* @make_counter(i64 0)
  %94 = alloca i8*
  store i8* %93, i8** %94
  %95 = getelementptr [10 x i8], [10 x i8]* @.str3, i32 0, i32 0
  %96 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str3.c, i8* %95)
  %97 = load i8*, i8** %94
  %98 = bitcast i8* %97 to { i8*, i8* }*
  %99 = getelementptr { i8*, i8* }, { i8*, i8* }* %98, i32 0, i32 0
  %100 = load i8*, i8** %99
  %101 = getelementptr { i8*, i8* }, { i8*, i8* }* %98, i32 0, i32 1
  %102 = load i8*, i8** %101
  %103 = icmp ne i8* %102, null
  br i1 %103, label %cl_env12, label %cl_noenv13
cl_env12:
  %104 = bitcast i8* %100 to i64 (i8*)*
  %105 = call i64 %104(i8* %102)
  br label %cl_merge14
cl_noenv13:
  %106 = bitcast i8* %100 to i64 ()*
  %107 = call i64 %106()
  br label %cl_merge14
cl_merge14:
  %108 = phi i64 [%105, %cl_env12], [%107, %cl_noenv13]
  %109 = call %nyx_string* @nyx_string_from_int(i64 %108)
  %110 = call %nyx_string* @nyx_string_concat(%nyx_string* %96, %nyx_string* %109)
  %111 = call i8* @nyx_string_to_cstr(%nyx_string* %110)
  call void @nyx_print_string(i8* %111)
  %112 = getelementptr [10 x i8], [10 x i8]* @.str4, i32 0, i32 0
  %113 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str4.c, i8* %112)
  %114 = load i8*, i8** %94
  %115 = bitcast i8* %114 to { i8*, i8* }*
  %116 = getelementptr { i8*, i8* }, { i8*, i8* }* %115, i32 0, i32 0
  %117 = load i8*, i8** %116
  %118 = getelementptr { i8*, i8* }, { i8*, i8* }* %115, i32 0, i32 1
  %119 = load i8*, i8** %118
  %120 = icmp ne i8* %119, null
  br i1 %120, label %cl_env15, label %cl_noenv16
cl_env15:
  %121 = bitcast i8* %117 to i64 (i8*)*
  %122 = call i64 %121(i8* %119)
  br label %cl_merge17
cl_noenv16:
  %123 = bitcast i8* %117 to i64 ()*
  %124 = call i64 %123()
  br label %cl_merge17
cl_merge17:
  %125 = phi i64 [%122, %cl_env15], [%124, %cl_noenv16]
  %126 = call %nyx_string* @nyx_string_from_int(i64 %125)
  %127 = call %nyx_string* @nyx_string_concat(%nyx_string* %113, %nyx_string* %126)
  %128 = call i8* @nyx_string_to_cstr(%nyx_string* %127)
  call void @nyx_print_string(i8* %128)
  %129 = getelementptr [10 x i8], [10 x i8]* @.str5, i32 0, i32 0
  %130 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str5.c, i8* %129)
  %131 = load i8*, i8** %94
  %132 = bitcast i8* %131 to { i8*, i8* }*
  %133 = getelementptr { i8*, i8* }, { i8*, i8* }* %132, i32 0, i32 0
  %134 = load i8*, i8** %133
  %135 = getelementptr { i8*, i8* }, { i8*, i8* }* %132, i32 0, i32 1
  %136 = load i8*, i8** %135
  %137 = icmp ne i8* %136, null
  br i1 %137, label %cl_env18, label %cl_noenv19
cl_env18:
  %138 = bitcast i8* %134 to i64 (i8*)*
  %139 = call i64 %138(i8* %136)
  br label %cl_merge20
cl_noenv19:
  %140 = bitcast i8* %134 to i64 ()*
  %141 = call i64 %140()
  br label %cl_merge20
cl_merge20:
  %142 = phi i64 [%139, %cl_env18], [%141, %cl_noenv19]
  %143 = call %nyx_string* @nyx_string_from_int(i64 %142)
  %144 = call %nyx_string* @nyx_string_concat(%nyx_string* %130, %nyx_string* %143)
  %145 = call i8* @nyx_string_to_cstr(%nyx_string* %144)
  call void @nyx_print_string(i8* %145)
  %146 = call i8* @make_adder(i64 1)
  %147 = alloca i8*
  store i8* %146, i8** %147
  %148 = getelementptr [19 x i8], [19 x i8]* @.str6, i32 0, i32 0
  %149 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str6.c, i8* %148)
  %150 = load i8*, i8** %147
  %151 = call i64 @apply(i8* %150, i64 99)
  %152 = call %nyx_string* @nyx_string_from_int(i64 %151)
  %153 = call %nyx_string* @nyx_string_concat(%nyx_string* %149, %nyx_string* %152)
  %154 = call i8* @nyx_string_to_cstr(%nyx_string* %153)
  call void @nyx_print_string(i8* %154)
  %155 = getelementptr [12 x i8], [12 x i8]* @.str7, i32 0, i32 0
  %156 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str7.c, i8* %155)
  %157 = call i8* @nyx_string_to_cstr(%nyx_string* %156)
  call void @nyx_print_string(i8* %157)
  ret i64 0
}


attributes #0 = { returns_twice }

