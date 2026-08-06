source_filename = "/home/admin/nyx/lang/tests/compiler/stdlib-suite/test-128-union-types.nx"
target triple = "x86_64-pc-linux-gnu"

@.str0 = private unnamed_addr constant [1 x i8] c"\00"
@.str0.c = internal global %nyx_string* null
@.str1 = private unnamed_addr constant [5 x i8] c"int:\00"
@.str1.c = internal global %nyx_string* null
@.str2 = private unnamed_addr constant [5 x i8] c"str:\00"
@.str2.c = internal global %nyx_string* null
@.str3 = private unnamed_addr constant [9 x i8] c"bool:val\00"
@.str3.c = internal global %nyx_string* null
@.str4 = private unnamed_addr constant [6 x i8] c"hello\00"
@.str4.c = internal global %nyx_string* null
@.str5 = private unnamed_addr constant [5 x i8] c"bool\00"
@.str5.c = internal global %nyx_string* null
@__nyx_test_failed = external global i64
@__nyx_test_mode = external global i64
; Nyx Compiler Bootstrap v3.0
; Generated from: /home/admin/nyx/lang/tests/compiler/stdlib-suite/test-128-union-types.nx

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


define internal %nyx_string* @describe(
i8* %v.param) {
  %v.ptr = alloca i8*
  store i8* %v.param, i8** %v.ptr
  %1 = getelementptr [1 x i8], [1 x i8]* @.str0, i32 0, i32 0
  %2 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str0.c, i8* %1)
  %3 = alloca %nyx_string*
  store %nyx_string* %2, %nyx_string** %3
  %4 = load i8*, i8** %v.ptr
  %5 = bitcast i8* %4 to { i64, i8* }*
  %6 = getelementptr { i64, i8* }, { i64, i8* }* %5, i32 0, i32 0
  %7 = load i64, i64* %6
  %8 = alloca i64
  store i64 0, i64* %8
  switch i64 %7, label %match_default0 [ i64 0, label %match_arm2 i64 1, label %match_arm3 i64 2, label %match_arm4 ]
match_arm2:
  %9 = getelementptr { i64, i8* }, { i64, i8* }* %5, i32 0, i32 1
  %10 = load i8*, i8** %9
  %11 = bitcast i8* %10 to i64*
  %12 = getelementptr i64, i64* %11, i64 0
  %13 = load i64, i64* %12
  %14 = alloca i64
  store i64 %13, i64* %14
  br label %nested_ok12
nested_fail11:
  br label %match_default0
nested_ok12:
  %15 = getelementptr [5 x i8], [5 x i8]* @.str1, i32 0, i32 0
  %16 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1.c, i8* %15)
  %17 = load i64, i64* %14
  %18 = call %nyx_string* @nyx_string_from_int(i64 %17)
  %19 = call %nyx_string* @nyx_string_concat(%nyx_string* %16, %nyx_string* %18)
  store %nyx_string* %19, %nyx_string** %3
  br label %match_end1
match_arm3:
  %20 = getelementptr { i64, i8* }, { i64, i8* }* %5, i32 0, i32 1
  %21 = load i8*, i8** %20
  %22 = bitcast i8* %21 to i64*
  %23 = getelementptr i64, i64* %22, i64 0
  %24 = load i64, i64* %23
  %25 = inttoptr i64 %24 to %nyx_string*
  %26 = alloca %nyx_string*
  store %nyx_string* %25, %nyx_string** %26
  br label %nested_ok14
nested_fail13:
  br label %match_default0
nested_ok14:
  %27 = getelementptr [5 x i8], [5 x i8]* @.str2, i32 0, i32 0
  %28 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str2.c, i8* %27)
  %29 = load %nyx_string*, %nyx_string** %26
  %30 = call %nyx_string* @nyx_string_concat(%nyx_string* %28, %nyx_string* %29)
  store %nyx_string* %30, %nyx_string** %3
  br label %match_end1
match_arm4:
  %31 = getelementptr { i64, i8* }, { i64, i8* }* %5, i32 0, i32 1
  %32 = load i8*, i8** %31
  %33 = bitcast i8* %32 to i64*
  %34 = getelementptr i64, i64* %33, i64 0
  %35 = load i64, i64* %34
  br label %nested_ok16
nested_fail15:
  br label %match_default0
nested_ok16:
  %36 = getelementptr [9 x i8], [9 x i8]* @.str3, i32 0, i32 0
  %37 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str3.c, i8* %36)
  store %nyx_string* %37, %nyx_string** %3
  br label %match_end1
match_default0:
  br label %match_end1
match_end1:
  %38 = load i64, i64* %8
  %39 = load %nyx_string*, %nyx_string** %3
  ret %nyx_string* %39
}

define i64 @main(
i32 %argc, i8** %argv) {
  call void @nyx_set_args(i32 %argc, i8** %argv)
  %40 = call i8* @GC_malloc(i64 16)
  %41 = bitcast i8* %40 to { i64, i8* }*
  %42 = getelementptr { i64, i8* }, { i64, i8* }* %41, i32 0, i32 0
  store i64 0, i64* %42
  %43 = getelementptr { i64, i8* }, { i64, i8* }* %41, i32 0, i32 1
  %44 = call i8* @GC_malloc(i64 8)
  %45 = bitcast i8* %44 to i64*
  %46 = getelementptr i64, i64* %45, i64 0
  store i64 42, i64* %46
  store i8* %44, i8** %43
  %47 = alloca i8*
  store i8* %40, i8** %47
  %48 = call i8* @GC_malloc(i64 16)
  %49 = bitcast i8* %48 to { i64, i8* }*
  %50 = getelementptr { i64, i8* }, { i64, i8* }* %49, i32 0, i32 0
  store i64 1, i64* %50
  %51 = getelementptr { i64, i8* }, { i64, i8* }* %49, i32 0, i32 1
  %52 = call i8* @GC_malloc(i64 8)
  %53 = bitcast i8* %52 to i64*
  %54 = getelementptr [6 x i8], [6 x i8]* @.str4, i32 0, i32 0
  %55 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str4.c, i8* %54)
  %56 = ptrtoint %nyx_string* %55 to i64
  %57 = getelementptr i64, i64* %53, i64 0
  store i64 %56, i64* %57
  store i8* %52, i8** %51
  %58 = alloca i8*
  store i8* %48, i8** %58
  %59 = call i8* @GC_malloc(i64 16)
  %60 = bitcast i8* %59 to { i64, i8* }*
  %61 = getelementptr { i64, i8* }, { i64, i8* }* %60, i32 0, i32 0
  store i64 2, i64* %61
  %62 = getelementptr { i64, i8* }, { i64, i8* }* %60, i32 0, i32 1
  %63 = call i8* @GC_malloc(i64 8)
  %64 = bitcast i8* %63 to i64*
  %65 = zext i1 1 to i64
  %66 = getelementptr i64, i64* %64, i64 0
  store i64 %65, i64* %66
  store i8* %63, i8** %62
  %67 = alloca i8*
  store i8* %59, i8** %67
  %68 = load i8*, i8** %47
  %69 = call %nyx_string* @describe(i8* %68)
  %70 = call i8* @nyx_string_to_cstr(%nyx_string* %69)
  call void @nyx_print_string(i8* %70)
  %71 = load i8*, i8** %58
  %72 = call %nyx_string* @describe(i8* %71)
  %73 = call i8* @nyx_string_to_cstr(%nyx_string* %72)
  call void @nyx_print_string(i8* %73)
  %74 = load i8*, i8** %67
  %75 = call %nyx_string* @describe(i8* %74)
  %76 = call i8* @nyx_string_to_cstr(%nyx_string* %75)
  call void @nyx_print_string(i8* %76)
  %77 = call i8* @GC_malloc(i64 16)
  %78 = bitcast i8* %77 to { i64, i8* }*
  %79 = getelementptr { i64, i8* }, { i64, i8* }* %78, i32 0, i32 0
  store i64 0, i64* %79
  %80 = getelementptr { i64, i8* }, { i64, i8* }* %78, i32 0, i32 1
  %81 = call i8* @GC_malloc(i64 8)
  %82 = bitcast i8* %81 to i64*
  %83 = getelementptr i64, i64* %82, i64 0
  store i64 10, i64* %83
  store i8* %81, i8** %80
  %84 = alloca i8*
  store i8* %77, i8** %84
  %85 = load i8*, i8** %84
  %86 = bitcast i8* %85 to { i64, i8* }*
  %87 = getelementptr { i64, i8* }, { i64, i8* }* %86, i32 0, i32 0
  %88 = load i64, i64* %87
  %89 = alloca i64
  store i64 0, i64* %89
  switch i64 %88, label %match_default17 [ i64 0, label %match_arm19 i64 1, label %match_arm20 i64 2, label %match_arm21 ]
match_arm19:
  %90 = getelementptr { i64, i8* }, { i64, i8* }* %86, i32 0, i32 1
  %91 = load i8*, i8** %90
  %92 = bitcast i8* %91 to i64*
  %93 = getelementptr i64, i64* %92, i64 0
  %94 = load i64, i64* %93
  %95 = alloca i64
  store i64 %94, i64* %95
  br label %nested_ok29
nested_fail28:
  br label %match_default17
nested_ok29:
  %96 = load i64, i64* %95
  call void @nyx_print_int(i64 %96)
  br label %match_end18
match_arm20:
  %97 = getelementptr { i64, i8* }, { i64, i8* }* %86, i32 0, i32 1
  %98 = load i8*, i8** %97
  %99 = bitcast i8* %98 to i64*
  %100 = getelementptr i64, i64* %99, i64 0
  %101 = load i64, i64* %100
  %102 = inttoptr i64 %101 to %nyx_string*
  %103 = alloca %nyx_string*
  store %nyx_string* %102, %nyx_string** %103
  br label %nested_ok31
nested_fail30:
  br label %match_default17
nested_ok31:
  %104 = load %nyx_string*, %nyx_string** %103
  %105 = call i8* @nyx_string_to_cstr(%nyx_string* %104)
  call void @nyx_print_string(i8* %105)
  br label %match_end18
match_arm21:
  %106 = getelementptr { i64, i8* }, { i64, i8* }* %86, i32 0, i32 1
  %107 = load i8*, i8** %106
  %108 = bitcast i8* %107 to i64*
  %109 = getelementptr i64, i64* %108, i64 0
  %110 = load i64, i64* %109
  br label %nested_ok33
nested_fail32:
  br label %match_default17
nested_ok33:
  %111 = getelementptr [5 x i8], [5 x i8]* @.str5, i32 0, i32 0
  %112 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str5.c, i8* %111)
  %113 = call i8* @nyx_string_to_cstr(%nyx_string* %112)
  call void @nyx_print_string(i8* %113)
  br label %match_end18
match_default17:
  br label %match_end18
match_end18:
  %114 = load i64, i64* %89
  ret i64 0
}


attributes #0 = { returns_twice }

