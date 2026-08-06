source_filename = "/home/admin/nyx/lang/tests/compiler/types/test-32-exhaustive-match.nx"
target triple = "x86_64-pc-linux-gnu"

@.str0 = private unnamed_addr constant [4 x i8] c"red\00"
@.str0.c = internal global %nyx_string* null
@.str1 = private unnamed_addr constant [6 x i8] c"green\00"
@.str1.c = internal global %nyx_string* null
@.str2 = private unnamed_addr constant [5 x i8] c"blue\00"
@.str2.c = internal global %nyx_string* null
@.str3 = private unnamed_addr constant [8 x i8] c"circle \00"
@.str3.c = internal global %nyx_string* null
@.str4 = private unnamed_addr constant [6 x i8] c"rect \00"
@.str4.c = internal global %nyx_string* null
@.str5 = private unnamed_addr constant [5 x i8] c"tri \00"
@.str5.c = internal global %nyx_string* null
@.str6 = private unnamed_addr constant [17 x i8] c"Red is red: true\00"
@.str6.c = internal global %nyx_string* null
@.str7 = private unnamed_addr constant [19 x i8] c"Blue is red: false\00"
@.str7.c = internal global %nyx_string* null
@.str8 = private unnamed_addr constant [20 x i8] c"exhaustive match OK\00"
@.str8.c = internal global %nyx_string* null
@__nyx_test_failed = external global i64
@__nyx_test_mode = external global i64
; Nyx Compiler Bootstrap v3.0
; Generated from: /home/admin/nyx/lang/tests/compiler/types/test-32-exhaustive-match.nx

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


define internal %nyx_string* @color_name(
i8* %c.param) {
  %c.ptr = alloca i8*
  store i8* %c.param, i8** %c.ptr
  %1 = load i8*, i8** %c.ptr
  %2 = bitcast i8* %1 to { i64, i8* }*
  %3 = getelementptr { i64, i8* }, { i64, i8* }* %2, i32 0, i32 0
  %4 = load i64, i64* %3
  %5 = alloca i64
  store i64 0, i64* %5
  switch i64 %4, label %match_default0 [ i64 0, label %match_arm2 i64 1, label %match_arm3 i64 2, label %match_arm4 ]
match_arm2:
  %6 = getelementptr [4 x i8], [4 x i8]* @.str0, i32 0, i32 0
  %7 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str0.c, i8* %6)
  %8 = ptrtoint %nyx_string* %7 to i64
  store i64 %8, i64* %5
  br label %match_end1
match_arm3:
  %9 = getelementptr [6 x i8], [6 x i8]* @.str1, i32 0, i32 0
  %10 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1.c, i8* %9)
  %11 = ptrtoint %nyx_string* %10 to i64
  store i64 %11, i64* %5
  br label %match_end1
match_arm4:
  %12 = getelementptr [5 x i8], [5 x i8]* @.str2, i32 0, i32 0
  %13 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str2.c, i8* %12)
  %14 = ptrtoint %nyx_string* %13 to i64
  store i64 %14, i64* %5
  br label %match_end1
match_default0:
  br label %match_end1
match_end1:
  %15 = load i64, i64* %5
  %16 = inttoptr i64 %15 to %nyx_string*
  ret %nyx_string* %16
}

define internal i1 @is_red(
i8* %c.param) {
  %c.ptr = alloca i8*
  store i8* %c.param, i8** %c.ptr
  %17 = load i8*, i8** %c.ptr
  %18 = bitcast i8* %17 to { i64, i8* }*
  %19 = getelementptr { i64, i8* }, { i64, i8* }* %18, i32 0, i32 0
  %20 = load i64, i64* %19
  %21 = alloca i64
  store i64 0, i64* %21
  switch i64 %20, label %match_arm14 [ i64 0, label %match_arm13 ]
match_arm13:
  %22 = zext i1 1 to i64
  store i64 %22, i64* %21
  br label %match_end12
match_arm14:
  %23 = zext i1 0 to i64
  store i64 %23, i64* %21
  br label %match_end12
match_end12:
  %24 = load i64, i64* %21
  %25 = trunc i64 %24 to i1
  ret i1 %25
}

define internal %nyx_string* @describe(
i8* %s.param) {
  %s.ptr = alloca i8*
  store i8* %s.param, i8** %s.ptr
  %26 = load i8*, i8** %s.ptr
  %27 = bitcast i8* %26 to { i64, i8* }*
  %28 = getelementptr { i64, i8* }, { i64, i8* }* %27, i32 0, i32 0
  %29 = load i64, i64* %28
  %30 = alloca i64
  store i64 0, i64* %30
  switch i64 %29, label %match_default19 [ i64 0, label %match_arm21 i64 1, label %match_arm22 i64 2, label %match_arm23 ]
match_arm21:
  %31 = getelementptr { i64, i8* }, { i64, i8* }* %27, i32 0, i32 1
  %32 = load i8*, i8** %31
  %33 = bitcast i8* %32 to i64*
  %34 = getelementptr i64, i64* %33, i64 0
  %35 = load i64, i64* %34
  %36 = alloca i64
  store i64 %35, i64* %36
  br label %nested_ok31
nested_fail30:
  br label %match_default19
nested_ok31:
  %37 = getelementptr [8 x i8], [8 x i8]* @.str3, i32 0, i32 0
  %38 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str3.c, i8* %37)
  %39 = load i64, i64* %36
  %40 = call %nyx_string* @nyx_string_from_int(i64 %39)
  %41 = call %nyx_string* @nyx_string_concat(%nyx_string* %38, %nyx_string* %40)
  %42 = ptrtoint %nyx_string* %41 to i64
  store i64 %42, i64* %30
  br label %match_end20
match_arm22:
  %43 = getelementptr { i64, i8* }, { i64, i8* }* %27, i32 0, i32 1
  %44 = load i8*, i8** %43
  %45 = bitcast i8* %44 to i64*
  %46 = getelementptr i64, i64* %45, i64 0
  %47 = load i64, i64* %46
  %48 = alloca i64
  store i64 %47, i64* %48
  br label %nested_ok33
nested_fail32:
  br label %match_default19
nested_ok33:
  %49 = getelementptr [6 x i8], [6 x i8]* @.str4, i32 0, i32 0
  %50 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str4.c, i8* %49)
  %51 = load i64, i64* %48
  %52 = call %nyx_string* @nyx_string_from_int(i64 %51)
  %53 = call %nyx_string* @nyx_string_concat(%nyx_string* %50, %nyx_string* %52)
  %54 = ptrtoint %nyx_string* %53 to i64
  store i64 %54, i64* %30
  br label %match_end20
match_arm23:
  %55 = getelementptr { i64, i8* }, { i64, i8* }* %27, i32 0, i32 1
  %56 = load i8*, i8** %55
  %57 = bitcast i8* %56 to i64*
  %58 = getelementptr i64, i64* %57, i64 0
  %59 = load i64, i64* %58
  %60 = alloca i64
  store i64 %59, i64* %60
  br label %nested_ok35
nested_fail34:
  br label %match_default19
nested_ok35:
  %61 = getelementptr [5 x i8], [5 x i8]* @.str5, i32 0, i32 0
  %62 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str5.c, i8* %61)
  %63 = load i64, i64* %60
  %64 = call %nyx_string* @nyx_string_from_int(i64 %63)
  %65 = call %nyx_string* @nyx_string_concat(%nyx_string* %62, %nyx_string* %64)
  %66 = ptrtoint %nyx_string* %65 to i64
  store i64 %66, i64* %30
  br label %match_end20
match_default19:
  br label %match_end20
match_end20:
  %67 = load i64, i64* %30
  %68 = inttoptr i64 %67 to %nyx_string*
  ret %nyx_string* %68
}

define i64 @main(
i32 %argc, i8** %argv) {
  call void @nyx_set_args(i32 %argc, i8** %argv)
  %69 = call i8* @GC_malloc(i64 16)
  %70 = bitcast i8* %69 to { i64, i8* }*
  %71 = getelementptr { i64, i8* }, { i64, i8* }* %70, i32 0, i32 0
  store i64 0, i64* %71
  %72 = getelementptr { i64, i8* }, { i64, i8* }* %70, i32 0, i32 1
  store i8* null, i8** %72
  %73 = call %nyx_string* @color_name(i8* %69)
  %74 = call i8* @nyx_string_to_cstr(%nyx_string* %73)
  call void @nyx_print_string(i8* %74)
  %75 = call i8* @GC_malloc(i64 16)
  %76 = bitcast i8* %75 to { i64, i8* }*
  %77 = getelementptr { i64, i8* }, { i64, i8* }* %76, i32 0, i32 0
  store i64 1, i64* %77
  %78 = getelementptr { i64, i8* }, { i64, i8* }* %76, i32 0, i32 1
  store i8* null, i8** %78
  %79 = call %nyx_string* @color_name(i8* %75)
  %80 = call i8* @nyx_string_to_cstr(%nyx_string* %79)
  call void @nyx_print_string(i8* %80)
  %81 = call i8* @GC_malloc(i64 16)
  %82 = bitcast i8* %81 to { i64, i8* }*
  %83 = getelementptr { i64, i8* }, { i64, i8* }* %82, i32 0, i32 0
  store i64 2, i64* %83
  %84 = getelementptr { i64, i8* }, { i64, i8* }* %82, i32 0, i32 1
  store i8* null, i8** %84
  %85 = call %nyx_string* @color_name(i8* %81)
  %86 = call i8* @nyx_string_to_cstr(%nyx_string* %85)
  call void @nyx_print_string(i8* %86)
  %87 = call i8* @GC_malloc(i64 16)
  %88 = bitcast i8* %87 to { i64, i8* }*
  %89 = getelementptr { i64, i8* }, { i64, i8* }* %88, i32 0, i32 0
  store i64 0, i64* %89
  %90 = getelementptr { i64, i8* }, { i64, i8* }* %88, i32 0, i32 1
  store i8* null, i8** %90
  %91 = call i1 @is_red(i8* %87)
  br i1 %91, label %then36, label %else37
then36:
  %92 = getelementptr [17 x i8], [17 x i8]* @.str6, i32 0, i32 0
  %93 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str6.c, i8* %92)
  %94 = call i8* @nyx_string_to_cstr(%nyx_string* %93)
  call void @nyx_print_string(i8* %94)
  br label %merge38
else37:
  br label %merge38
merge38:
  %95 = call i8* @GC_malloc(i64 16)
  %96 = bitcast i8* %95 to { i64, i8* }*
  %97 = getelementptr { i64, i8* }, { i64, i8* }* %96, i32 0, i32 0
  store i64 2, i64* %97
  %98 = getelementptr { i64, i8* }, { i64, i8* }* %96, i32 0, i32 1
  store i8* null, i8** %98
  %99 = call i1 @is_red(i8* %95)
  %100 = xor i1 %99, true
  br i1 %100, label %then39, label %else40
then39:
  %101 = getelementptr [19 x i8], [19 x i8]* @.str7, i32 0, i32 0
  %102 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str7.c, i8* %101)
  %103 = call i8* @nyx_string_to_cstr(%nyx_string* %102)
  call void @nyx_print_string(i8* %103)
  br label %merge41
else40:
  br label %merge41
merge41:
  %104 = call i8* @GC_malloc(i64 16)
  %105 = bitcast i8* %104 to { i64, i8* }*
  %106 = getelementptr { i64, i8* }, { i64, i8* }* %105, i32 0, i32 0
  store i64 0, i64* %106
  %107 = getelementptr { i64, i8* }, { i64, i8* }* %105, i32 0, i32 1
  %108 = call i8* @GC_malloc(i64 8)
  %109 = bitcast i8* %108 to i64*
  %110 = getelementptr i64, i64* %109, i64 0
  store i64 5, i64* %110
  store i8* %108, i8** %107
  %111 = call %nyx_string* @describe(i8* %104)
  %112 = call i8* @nyx_string_to_cstr(%nyx_string* %111)
  call void @nyx_print_string(i8* %112)
  %113 = call i8* @GC_malloc(i64 16)
  %114 = bitcast i8* %113 to { i64, i8* }*
  %115 = getelementptr { i64, i8* }, { i64, i8* }* %114, i32 0, i32 0
  store i64 1, i64* %115
  %116 = getelementptr { i64, i8* }, { i64, i8* }* %114, i32 0, i32 1
  %117 = call i8* @GC_malloc(i64 8)
  %118 = bitcast i8* %117 to i64*
  %119 = getelementptr i64, i64* %118, i64 0
  store i64 4, i64* %119
  store i8* %117, i8** %116
  %120 = call %nyx_string* @describe(i8* %113)
  %121 = call i8* @nyx_string_to_cstr(%nyx_string* %120)
  call void @nyx_print_string(i8* %121)
  %122 = call i8* @GC_malloc(i64 16)
  %123 = bitcast i8* %122 to { i64, i8* }*
  %124 = getelementptr { i64, i8* }, { i64, i8* }* %123, i32 0, i32 0
  store i64 2, i64* %124
  %125 = getelementptr { i64, i8* }, { i64, i8* }* %123, i32 0, i32 1
  %126 = call i8* @GC_malloc(i64 8)
  %127 = bitcast i8* %126 to i64*
  %128 = getelementptr i64, i64* %127, i64 0
  store i64 3, i64* %128
  store i8* %126, i8** %125
  %129 = call %nyx_string* @describe(i8* %122)
  %130 = call i8* @nyx_string_to_cstr(%nyx_string* %129)
  call void @nyx_print_string(i8* %130)
  %131 = getelementptr [20 x i8], [20 x i8]* @.str8, i32 0, i32 0
  %132 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str8.c, i8* %131)
  %133 = call i8* @nyx_string_to_cstr(%nyx_string* %132)
  call void @nyx_print_string(i8* %133)
  ret i64 0
}


attributes #0 = { returns_twice }

