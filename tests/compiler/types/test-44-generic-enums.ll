source_filename = "/home/admin/nyx/lang/tests/compiler/types/test-44-generic-enums.nx"
target triple = "x86_64-pc-linux-gnu"

@.str0 = private unnamed_addr constant [5 x i8] c"none\00"
@.str0.c = internal global %nyx_string* null
@.str1 = private unnamed_addr constant [5 x i8] c"some\00"
@.str1.c = internal global %nyx_string* null
@.str2 = private unnamed_addr constant [5 x i8] c"None\00"
@.str2.c = internal global %nyx_string* null
@.str3 = private unnamed_addr constant [6 x i8] c"hello\00"
@.str3.c = internal global %nyx_string* null
@.str4 = private unnamed_addr constant [5 x i8] c"none\00"
@.str4.c = internal global %nyx_string* null
@.str5 = private unnamed_addr constant [6 x i8] c"error\00"
@.str5.c = internal global %nyx_string* null
@.str6 = private unnamed_addr constant [3 x i8] c"OK\00"
@.str6.c = internal global %nyx_string* null
@__nyx_test_failed = external global i64
@__nyx_test_mode = external global i64
; Nyx Compiler Bootstrap v3.0
; Generated from: /home/admin/nyx/lang/tests/compiler/types/test-44-generic-enums.nx

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


define i64 @main(
i32 %argc, i8** %argv) {
  call void @nyx_set_args(i32 %argc, i8** %argv)
  %1 = call i8* @GC_malloc(i64 16)
  %2 = bitcast i8* %1 to { i64, i8* }*
  %3 = getelementptr { i64, i8* }, { i64, i8* }* %2, i32 0, i32 0
  store i64 0, i64* %3
  %4 = getelementptr { i64, i8* }, { i64, i8* }* %2, i32 0, i32 1
  %5 = call i8* @GC_malloc(i64 8)
  %6 = bitcast i8* %5 to i64*
  %7 = getelementptr i64, i64* %6, i64 0
  store i64 42, i64* %7
  store i8* %5, i8** %4
  %8 = alloca i8*
  store i8* %1, i8** %8
  %9 = load i8*, i8** %8
  %10 = bitcast i8* %9 to { i64, i8* }*
  %11 = getelementptr { i64, i8* }, { i64, i8* }* %10, i32 0, i32 0
  %12 = load i64, i64* %11
  %13 = alloca i64
  store i64 0, i64* %13
  switch i64 %12, label %match_default0 [ i64 0, label %match_arm2 i64 1, label %match_arm3 ]
match_arm2:
  %14 = getelementptr { i64, i8* }, { i64, i8* }* %10, i32 0, i32 1
  %15 = load i8*, i8** %14
  %16 = bitcast i8* %15 to i64*
  %17 = getelementptr i64, i64* %16, i64 0
  %18 = load i64, i64* %17
  %19 = alloca i64
  store i64 %18, i64* %19
  br label %nested_ok9
nested_fail8:
  br label %match_default0
nested_ok9:
  %20 = load i64, i64* %19
  %21 = call %nyx_string* @nyx_string_from_int(i64 %20)
  %22 = call i8* @nyx_string_to_cstr(%nyx_string* %21)
  call void @nyx_print_string(i8* %22)
  br label %match_end1
match_arm3:
  %23 = getelementptr [5 x i8], [5 x i8]* @.str0, i32 0, i32 0
  %24 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str0.c, i8* %23)
  %25 = call i8* @nyx_string_to_cstr(%nyx_string* %24)
  call void @nyx_print_string(i8* %25)
  br label %match_end1
match_default0:
  br label %match_end1
match_end1:
  %26 = load i64, i64* %13
  %27 = call i8* @GC_malloc(i64 16)
  %28 = bitcast i8* %27 to { i64, i8* }*
  %29 = getelementptr { i64, i8* }, { i64, i8* }* %28, i32 0, i32 0
  store i64 1, i64* %29
  %30 = getelementptr { i64, i8* }, { i64, i8* }* %28, i32 0, i32 1
  store i8* null, i8** %30
  %31 = alloca i8*
  store i8* %27, i8** %31
  %32 = load i8*, i8** %31
  %33 = bitcast i8* %32 to { i64, i8* }*
  %34 = getelementptr { i64, i8* }, { i64, i8* }* %33, i32 0, i32 0
  %35 = load i64, i64* %34
  %36 = alloca i64
  store i64 0, i64* %36
  switch i64 %35, label %match_default10 [ i64 0, label %match_arm12 i64 1, label %match_arm13 ]
match_arm12:
  %37 = getelementptr { i64, i8* }, { i64, i8* }* %33, i32 0, i32 1
  %38 = load i8*, i8** %37
  %39 = bitcast i8* %38 to i64*
  %40 = getelementptr i64, i64* %39, i64 0
  %41 = load i64, i64* %40
  %42 = alloca i64
  store i64 %41, i64* %42
  br label %nested_ok19
nested_fail18:
  br label %match_default10
nested_ok19:
  %43 = getelementptr [5 x i8], [5 x i8]* @.str1, i32 0, i32 0
  %44 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1.c, i8* %43)
  %45 = call i8* @nyx_string_to_cstr(%nyx_string* %44)
  call void @nyx_print_string(i8* %45)
  br label %match_end11
match_arm13:
  %46 = getelementptr [5 x i8], [5 x i8]* @.str2, i32 0, i32 0
  %47 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str2.c, i8* %46)
  %48 = call i8* @nyx_string_to_cstr(%nyx_string* %47)
  call void @nyx_print_string(i8* %48)
  br label %match_end11
match_default10:
  br label %match_end11
match_end11:
  %49 = load i64, i64* %36
  %50 = call i8* @GC_malloc(i64 16)
  %51 = bitcast i8* %50 to { i64, i8* }*
  %52 = getelementptr { i64, i8* }, { i64, i8* }* %51, i32 0, i32 0
  store i64 0, i64* %52
  %53 = getelementptr { i64, i8* }, { i64, i8* }* %51, i32 0, i32 1
  %54 = call i8* @GC_malloc(i64 8)
  %55 = bitcast i8* %54 to i64*
  %56 = getelementptr [6 x i8], [6 x i8]* @.str3, i32 0, i32 0
  %57 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str3.c, i8* %56)
  %58 = ptrtoint %nyx_string* %57 to i64
  %59 = getelementptr i64, i64* %55, i64 0
  store i64 %58, i64* %59
  store i8* %54, i8** %53
  %60 = alloca i8*
  store i8* %50, i8** %60
  %61 = load i8*, i8** %60
  %62 = bitcast i8* %61 to { i64, i8* }*
  %63 = getelementptr { i64, i8* }, { i64, i8* }* %62, i32 0, i32 0
  %64 = load i64, i64* %63
  %65 = alloca i64
  store i64 0, i64* %65
  switch i64 %64, label %match_default20 [ i64 0, label %match_arm22 i64 1, label %match_arm23 ]
match_arm22:
  %66 = getelementptr { i64, i8* }, { i64, i8* }* %62, i32 0, i32 1
  %67 = load i8*, i8** %66
  %68 = bitcast i8* %67 to i64*
  %69 = getelementptr i64, i64* %68, i64 0
  %70 = load i64, i64* %69
  %71 = inttoptr i64 %70 to %nyx_string*
  %72 = alloca %nyx_string*
  store %nyx_string* %71, %nyx_string** %72
  br label %nested_ok29
nested_fail28:
  br label %match_default20
nested_ok29:
  %73 = load %nyx_string*, %nyx_string** %72
  %74 = call i8* @nyx_string_to_cstr(%nyx_string* %73)
  call void @nyx_print_string(i8* %74)
  br label %match_end21
match_arm23:
  %75 = getelementptr [5 x i8], [5 x i8]* @.str4, i32 0, i32 0
  %76 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str4.c, i8* %75)
  %77 = call i8* @nyx_string_to_cstr(%nyx_string* %76)
  call void @nyx_print_string(i8* %77)
  br label %match_end21
match_default20:
  br label %match_end21
match_end21:
  %78 = load i64, i64* %65
  %79 = call i8* @GC_malloc(i64 16)
  %80 = bitcast i8* %79 to { i64, i8* }*
  %81 = getelementptr { i64, i8* }, { i64, i8* }* %80, i32 0, i32 0
  store i64 0, i64* %81
  %82 = getelementptr { i64, i8* }, { i64, i8* }* %80, i32 0, i32 1
  %83 = call i8* @GC_malloc(i64 8)
  %84 = bitcast i8* %83 to i64*
  %85 = getelementptr i64, i64* %84, i64 0
  store i64 100, i64* %85
  store i8* %83, i8** %82
  %86 = alloca i8*
  store i8* %79, i8** %86
  %87 = load i8*, i8** %86
  %88 = bitcast i8* %87 to { i64, i8* }*
  %89 = getelementptr { i64, i8* }, { i64, i8* }* %88, i32 0, i32 0
  %90 = load i64, i64* %89
  %91 = alloca i64
  store i64 0, i64* %91
  switch i64 %90, label %match_default30 [ i64 0, label %match_arm32 i64 1, label %match_arm33 ]
match_arm32:
  %92 = getelementptr { i64, i8* }, { i64, i8* }* %88, i32 0, i32 1
  %93 = load i8*, i8** %92
  %94 = bitcast i8* %93 to i64*
  %95 = getelementptr i64, i64* %94, i64 0
  %96 = load i64, i64* %95
  %97 = alloca i64
  store i64 %96, i64* %97
  br label %nested_ok39
nested_fail38:
  br label %match_default30
nested_ok39:
  %98 = load i64, i64* %97
  %99 = call %nyx_string* @nyx_string_from_int(i64 %98)
  %100 = call i8* @nyx_string_to_cstr(%nyx_string* %99)
  call void @nyx_print_string(i8* %100)
  br label %match_end31
match_arm33:
  %101 = getelementptr { i64, i8* }, { i64, i8* }* %88, i32 0, i32 1
  %102 = load i8*, i8** %101
  %103 = bitcast i8* %102 to i64*
  %104 = getelementptr i64, i64* %103, i64 0
  %105 = load i64, i64* %104
  %106 = inttoptr i64 %105 to %nyx_string*
  %107 = alloca %nyx_string*
  store %nyx_string* %106, %nyx_string** %107
  br label %nested_ok41
nested_fail40:
  br label %match_default30
nested_ok41:
  %108 = load %nyx_string*, %nyx_string** %107
  %109 = call i8* @nyx_string_to_cstr(%nyx_string* %108)
  call void @nyx_print_string(i8* %109)
  br label %match_end31
match_default30:
  br label %match_end31
match_end31:
  %110 = load i64, i64* %91
  %111 = call i8* @GC_malloc(i64 16)
  %112 = bitcast i8* %111 to { i64, i8* }*
  %113 = getelementptr { i64, i8* }, { i64, i8* }* %112, i32 0, i32 0
  store i64 1, i64* %113
  %114 = getelementptr { i64, i8* }, { i64, i8* }* %112, i32 0, i32 1
  %115 = call i8* @GC_malloc(i64 8)
  %116 = bitcast i8* %115 to i64*
  %117 = getelementptr [6 x i8], [6 x i8]* @.str5, i32 0, i32 0
  %118 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str5.c, i8* %117)
  %119 = ptrtoint %nyx_string* %118 to i64
  %120 = getelementptr i64, i64* %116, i64 0
  store i64 %119, i64* %120
  store i8* %115, i8** %114
  %121 = alloca i8*
  store i8* %111, i8** %121
  %122 = load i8*, i8** %121
  %123 = bitcast i8* %122 to { i64, i8* }*
  %124 = getelementptr { i64, i8* }, { i64, i8* }* %123, i32 0, i32 0
  %125 = load i64, i64* %124
  %126 = alloca i64
  store i64 0, i64* %126
  switch i64 %125, label %match_default42 [ i64 0, label %match_arm44 i64 1, label %match_arm45 ]
match_arm44:
  %127 = getelementptr { i64, i8* }, { i64, i8* }* %123, i32 0, i32 1
  %128 = load i8*, i8** %127
  %129 = bitcast i8* %128 to i64*
  %130 = getelementptr i64, i64* %129, i64 0
  %131 = load i64, i64* %130
  %132 = alloca i64
  store i64 %131, i64* %132
  br label %nested_ok51
nested_fail50:
  br label %match_default42
nested_ok51:
  %133 = load i64, i64* %132
  %134 = call %nyx_string* @nyx_string_from_int(i64 %133)
  %135 = call i8* @nyx_string_to_cstr(%nyx_string* %134)
  call void @nyx_print_string(i8* %135)
  br label %match_end43
match_arm45:
  %136 = getelementptr { i64, i8* }, { i64, i8* }* %123, i32 0, i32 1
  %137 = load i8*, i8** %136
  %138 = bitcast i8* %137 to i64*
  %139 = getelementptr i64, i64* %138, i64 0
  %140 = load i64, i64* %139
  %141 = inttoptr i64 %140 to %nyx_string*
  %142 = alloca %nyx_string*
  store %nyx_string* %141, %nyx_string** %142
  br label %nested_ok53
nested_fail52:
  br label %match_default42
nested_ok53:
  %143 = load %nyx_string*, %nyx_string** %142
  %144 = call i8* @nyx_string_to_cstr(%nyx_string* %143)
  call void @nyx_print_string(i8* %144)
  br label %match_end43
match_default42:
  br label %match_end43
match_end43:
  %145 = load i64, i64* %126
  %146 = getelementptr [3 x i8], [3 x i8]* @.str6, i32 0, i32 0
  %147 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str6.c, i8* %146)
  %148 = call i8* @nyx_string_to_cstr(%nyx_string* %147)
  call void @nyx_print_string(i8* %148)
  ret i64 0
}


attributes #0 = { returns_twice }

