source_filename = "/home/admin/nyx/lang/tests/compiler/language/test-276-match-block-arm-value.nx"
target triple = "x86_64-pc-linux-gnu"

@.str0 = private unnamed_addr constant [3 x i8] c"A:\00"
@.str0.c = internal global %nyx_string* null
@.str1 = private unnamed_addr constant [3 x i8] c"B:\00"
@.str1.c = internal global %nyx_string* null
@.str2 = private unnamed_addr constant [2 x i8] c":\00"
@.str2.c = internal global %nyx_string* null
@.str3 = private unnamed_addr constant [2 x i8] c"a\00"
@.str4 = private unnamed_addr constant [4 x i8] c"es-\00"
@.str4.c = internal global %nyx_string* null
@.str5 = private unnamed_addr constant [2 x i8] c"a\00"
@.str5.c = internal global %nyx_string* null
@.str6 = private unnamed_addr constant [5 x i8] c"otro\00"
@.str6.c = internal global %nyx_string* null
@.str7 = private unnamed_addr constant [5 x i8] c"hola\00"
@.str7.c = internal global %nyx_string* null
@.str8 = private unnamed_addr constant [10 x i8] c"B:hola:42\00"
@.str8.c = internal global %nyx_string* null
@.str9 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str9.c = internal global %nyx_string* null
@.str10 = private unnamed_addr constant [2 x i8] c"x\00"
@.str10.c = internal global %nyx_string* null
@.str11 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str11.c = internal global %nyx_string* null
@.str12 = private unnamed_addr constant [2 x i8] c"y\00"
@.str12.c = internal global %nyx_string* null
@.str13 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str13.c = internal global %nyx_string* null
@.str14 = private unnamed_addr constant [2 x i8] c"a\00"
@.str14.c = internal global %nyx_string* null
@.str15 = private unnamed_addr constant [5 x i8] c"es-a\00"
@.str15.c = internal global %nyx_string* null
@.str16 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str16.c = internal global %nyx_string* null
@.str17 = private unnamed_addr constant [2 x i8] c"z\00"
@.str17.c = internal global %nyx_string* null
@.str18 = private unnamed_addr constant [5 x i8] c"otro\00"
@.str18.c = internal global %nyx_string* null
@.str19 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str19.c = internal global %nyx_string* null
@.str20 = private unnamed_addr constant [25 x i8] c"match block-arm value OK\00"
@.str20.c = internal global %nyx_string* null
@__nyx_test_failed = external global i64
@__nyx_test_mode = external global i64
; Nyx Compiler Bootstrap v3.0
; Generated from: /home/admin/nyx/lang/tests/compiler/language/test-276-match-block-arm-value.nx

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
  %1 = load i8*, i8** %v.ptr
  %2 = bitcast i8* %1 to { i64, i8* }*
  %3 = getelementptr { i64, i8* }, { i64, i8* }* %2, i32 0, i32 0
  %4 = load i64, i64* %3
  %5 = alloca i64
  store i64 0, i64* %5
  switch i64 %4, label %match_default0 [ i64 0, label %match_arm2 i64 1, label %match_arm3 ]
match_arm2:
  %6 = getelementptr { i64, i8* }, { i64, i8* }* %2, i32 0, i32 1
  %7 = load i8*, i8** %6
  %8 = bitcast i8* %7 to i64*
  %9 = getelementptr i64, i64* %8, i64 0
  %10 = load i64, i64* %9
  %11 = inttoptr i64 %10 to %nyx_string*
  %12 = alloca %nyx_string*
  store %nyx_string* %11, %nyx_string** %12
  br label %nested_ok9
nested_fail8:
  br label %match_default0
nested_ok9:
  %13 = getelementptr [3 x i8], [3 x i8]* @.str0, i32 0, i32 0
  %14 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str0.c, i8* %13)
  %15 = load %nyx_string*, %nyx_string** %12
  %16 = call %nyx_string* @nyx_string_concat(%nyx_string* %14, %nyx_string* %15)
  %17 = ptrtoint %nyx_string* %16 to i64
  store i64 %17, i64* %5
  br label %match_end1
match_arm3:
  %18 = getelementptr { i64, i8* }, { i64, i8* }* %2, i32 0, i32 1
  %19 = load i8*, i8** %18
  %20 = bitcast i8* %19 to i64*
  %21 = getelementptr i64, i64* %20, i64 0
  %22 = load i64, i64* %21
  %23 = inttoptr i64 %22 to %nyx_string*
  %24 = alloca %nyx_string*
  store %nyx_string* %23, %nyx_string** %24
  %25 = getelementptr i64, i64* %20, i64 1
  %26 = load i64, i64* %25
  %27 = alloca i64
  store i64 %26, i64* %27
  br label %nested_ok11
nested_fail10:
  br label %match_default0
nested_ok11:
  %28 = getelementptr [3 x i8], [3 x i8]* @.str1, i32 0, i32 0
  %29 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1.c, i8* %28)
  %30 = load %nyx_string*, %nyx_string** %24
  %31 = call %nyx_string* @nyx_string_concat(%nyx_string* %29, %nyx_string* %30)
  %32 = getelementptr [2 x i8], [2 x i8]* @.str2, i32 0, i32 0
  %33 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str2.c, i8* %32)
  %34 = call %nyx_string* @nyx_string_concat(%nyx_string* %31, %nyx_string* %33)
  %35 = load i64, i64* %27
  %36 = call %nyx_string* @nyx_string_from_int(i64 %35)
  %37 = call %nyx_string* @nyx_string_concat(%nyx_string* %34, %nyx_string* %36)
  %38 = ptrtoint %nyx_string* %37 to i64
  store i64 %38, i64* %5
  br label %match_end1
match_default0:
  br label %match_end1
match_end1:
  %39 = load i64, i64* %5
  %40 = inttoptr i64 %39 to %nyx_string*
  ret %nyx_string* %40
}

define internal i8* @make_b(
i8* %v.param, i64 %n.param) {
  %v.ptr = alloca i8*
  store i8* %v.param, i8** %v.ptr
  %n.ptr = alloca i64
  store i64 %n.param, i64* %n.ptr
  %41 = load i8*, i8** %v.ptr
  %42 = bitcast i8* %41 to { i64, i8* }*
  %43 = getelementptr { i64, i8* }, { i64, i8* }* %42, i32 0, i32 0
  %44 = load i64, i64* %43
  %45 = alloca i64
  store i64 0, i64* %45
  switch i64 %44, label %match_default12 [ i64 0, label %match_arm14 i64 1, label %match_arm15 ]
match_arm14:
  %46 = getelementptr { i64, i8* }, { i64, i8* }* %42, i32 0, i32 1
  %47 = load i8*, i8** %46
  %48 = bitcast i8* %47 to i64*
  %49 = getelementptr i64, i64* %48, i64 0
  %50 = load i64, i64* %49
  %51 = inttoptr i64 %50 to %nyx_string*
  %52 = alloca %nyx_string*
  store %nyx_string* %51, %nyx_string** %52
  br label %nested_ok21
nested_fail20:
  br label %match_default12
nested_ok21:
  %53 = load i64, i64* %n.ptr
  %54 = add i64 %53, 1
  %55 = alloca i64
  store i64 %54, i64* %55
  %56 = call i8* @GC_malloc(i64 16)
  %57 = bitcast i8* %56 to { i64, i8* }*
  %58 = getelementptr { i64, i8* }, { i64, i8* }* %57, i32 0, i32 0
  store i64 1, i64* %58
  %59 = getelementptr { i64, i8* }, { i64, i8* }* %57, i32 0, i32 1
  %60 = call i8* @GC_malloc(i64 16)
  %61 = bitcast i8* %60 to i64*
  %62 = load %nyx_string*, %nyx_string** %52
  %63 = ptrtoint %nyx_string* %62 to i64
  %64 = getelementptr i64, i64* %61, i64 0
  store i64 %63, i64* %64
  %65 = load i64, i64* %55
  %66 = getelementptr i64, i64* %61, i64 1
  store i64 %65, i64* %66
  store i8* %60, i8** %59
  %67 = ptrtoint i8* %56 to i64
  store i64 %67, i64* %45
  br label %match_end13
match_arm15:
  %68 = getelementptr { i64, i8* }, { i64, i8* }* %42, i32 0, i32 1
  %69 = load i8*, i8** %68
  %70 = bitcast i8* %69 to i64*
  %71 = getelementptr i64, i64* %70, i64 0
  %72 = load i64, i64* %71
  %73 = inttoptr i64 %72 to %nyx_string*
  %74 = alloca %nyx_string*
  store %nyx_string* %73, %nyx_string** %74
  %75 = getelementptr i64, i64* %70, i64 1
  %76 = load i64, i64* %75
  %77 = alloca i64
  store i64 %76, i64* %77
  br label %nested_ok23
nested_fail22:
  br label %match_default12
nested_ok23:
  %78 = call i8* @GC_malloc(i64 16)
  %79 = bitcast i8* %78 to { i64, i8* }*
  %80 = getelementptr { i64, i8* }, { i64, i8* }* %79, i32 0, i32 0
  store i64 1, i64* %80
  %81 = getelementptr { i64, i8* }, { i64, i8* }* %79, i32 0, i32 1
  %82 = call i8* @GC_malloc(i64 16)
  %83 = bitcast i8* %82 to i64*
  %84 = load %nyx_string*, %nyx_string** %74
  %85 = ptrtoint %nyx_string* %84 to i64
  %86 = getelementptr i64, i64* %83, i64 0
  store i64 %85, i64* %86
  %87 = load i64, i64* %77
  %88 = getelementptr i64, i64* %83, i64 1
  store i64 %87, i64* %88
  store i8* %82, i8** %81
  %89 = ptrtoint i8* %78 to i64
  store i64 %89, i64* %45
  br label %match_end13
match_default12:
  br label %match_end13
match_end13:
  %90 = load i64, i64* %45
  %91 = inttoptr i64 %90 to i8*
  ret i8* %91
}

define internal i64 @pick_int(
i8* %v.param) {
  %v.ptr = alloca i8*
  store i8* %v.param, i8** %v.ptr
  %92 = load i8*, i8** %v.ptr
  %93 = bitcast i8* %92 to { i64, i8* }*
  %94 = getelementptr { i64, i8* }, { i64, i8* }* %93, i32 0, i32 0
  %95 = load i64, i64* %94
  %96 = alloca i64
  store i64 0, i64* %96
  switch i64 %95, label %match_default24 [ i64 0, label %match_arm26 i64 1, label %match_arm27 ]
match_arm26:
  %97 = getelementptr { i64, i8* }, { i64, i8* }* %93, i32 0, i32 1
  %98 = load i8*, i8** %97
  %99 = bitcast i8* %98 to i64*
  %100 = getelementptr i64, i64* %99, i64 0
  %101 = load i64, i64* %100
  %102 = inttoptr i64 %101 to %nyx_string*
  %103 = alloca %nyx_string*
  store %nyx_string* %102, %nyx_string** %103
  br label %nested_ok33
nested_fail32:
  br label %match_default24
nested_ok33:
  %104 = alloca i64
  store i64 10, i64* %104
  %105 = load i64, i64* %104
  store i64 %105, i64* %96
  br label %match_end25
match_arm27:
  %106 = getelementptr { i64, i8* }, { i64, i8* }* %93, i32 0, i32 1
  %107 = load i8*, i8** %106
  %108 = bitcast i8* %107 to i64*
  %109 = getelementptr i64, i64* %108, i64 0
  %110 = load i64, i64* %109
  %111 = inttoptr i64 %110 to %nyx_string*
  %112 = alloca %nyx_string*
  store %nyx_string* %111, %nyx_string** %112
  %113 = getelementptr i64, i64* %108, i64 1
  %114 = load i64, i64* %113
  %115 = alloca i64
  store i64 %114, i64* %115
  br label %nested_ok35
nested_fail34:
  br label %match_default24
nested_ok35:
  %116 = load i64, i64* %115
  store i64 %116, i64* %96
  br label %match_end25
match_default24:
  br label %match_end25
match_end25:
  %117 = load i64, i64* %96
  ret i64 %117
}

define internal %nyx_string* @label_of(
%nyx_string* %s.param) {
  %s.ptr = alloca %nyx_string*
  store %nyx_string* %s.param, %nyx_string** %s.ptr
  %118 = load %nyx_string*, %nyx_string** %s.ptr
  %119 = alloca i64
  store i64 0, i64* %119
  br label %match_arm38
match_arm38:
  %120 = getelementptr [2 x i8], [2 x i8]* @.str3, i32 0, i32 0
  %121 = call %nyx_string* @nyx_string_from_cstr(i8* %120)
  %122 = call i1 @nyx_string_equals(%nyx_string* %118, %nyx_string* %121)
  br i1 %122, label %lit_body44, label %match_arm39
lit_body44:
  %123 = getelementptr [4 x i8], [4 x i8]* @.str4, i32 0, i32 0
  %124 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str4.c, i8* %123)
  %125 = alloca %nyx_string*
  store %nyx_string* %124, %nyx_string** %125
  %126 = load %nyx_string*, %nyx_string** %125
  %127 = getelementptr [2 x i8], [2 x i8]* @.str5, i32 0, i32 0
  %128 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str5.c, i8* %127)
  %129 = call %nyx_string* @nyx_string_concat(%nyx_string* %126, %nyx_string* %128)
  %130 = ptrtoint %nyx_string* %129 to i64
  store i64 %130, i64* %119
  br label %match_end37
match_arm39:
  %131 = getelementptr [5 x i8], [5 x i8]* @.str6, i32 0, i32 0
  %132 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str6.c, i8* %131)
  %133 = ptrtoint %nyx_string* %132 to i64
  store i64 %133, i64* %119
  br label %match_end37
match_end37:
  %134 = load i64, i64* %119
  %135 = inttoptr i64 %134 to %nyx_string*
  ret %nyx_string* %135
}

define i64 @main(
i32 %argc, i8** %argv) {
  call void @nyx_set_args(i32 %argc, i8** %argv)
  %136 = call i8* @GC_malloc(i64 16)
  %137 = bitcast i8* %136 to { i64, i8* }*
  %138 = getelementptr { i64, i8* }, { i64, i8* }* %137, i32 0, i32 0
  store i64 0, i64* %138
  %139 = getelementptr { i64, i8* }, { i64, i8* }* %137, i32 0, i32 1
  %140 = call i8* @GC_malloc(i64 8)
  %141 = bitcast i8* %140 to i64*
  %142 = getelementptr [5 x i8], [5 x i8]* @.str7, i32 0, i32 0
  %143 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str7.c, i8* %142)
  %144 = ptrtoint %nyx_string* %143 to i64
  %145 = getelementptr i64, i64* %141, i64 0
  store i64 %144, i64* %145
  store i8* %140, i8** %139
  %146 = call i8* @make_b(i8* %136, i64 41)
  %147 = alloca i8*
  store i8* %146, i8** %147
  %148 = load i8*, i8** %147
  %149 = call %nyx_string* @describe(i8* %148)
  %150 = getelementptr [10 x i8], [10 x i8]* @.str8, i32 0, i32 0
  %151 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str8.c, i8* %150)
  %152 = call i1 @nyx_string_equals(%nyx_string* %149, %nyx_string* %151)
  %153 = getelementptr [17 x i8], [17 x i8]* @.str9, i32 0, i32 0
  %154 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str9.c, i8* %153)
  %155 = call i8* @nyx_string_to_cstr(%nyx_string* %154)
  br i1 %152, label %assert_pass_46, label %assert_fail_46
assert_fail_46:
  call void @nyx_assert_fail(i8* %155)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_46
assert_pass_46:
  %156 = call i8* @GC_malloc(i64 16)
  %157 = bitcast i8* %156 to { i64, i8* }*
  %158 = getelementptr { i64, i8* }, { i64, i8* }* %157, i32 0, i32 0
  store i64 0, i64* %158
  %159 = getelementptr { i64, i8* }, { i64, i8* }* %157, i32 0, i32 1
  %160 = call i8* @GC_malloc(i64 8)
  %161 = bitcast i8* %160 to i64*
  %162 = getelementptr [2 x i8], [2 x i8]* @.str10, i32 0, i32 0
  %163 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str10.c, i8* %162)
  %164 = ptrtoint %nyx_string* %163 to i64
  %165 = getelementptr i64, i64* %161, i64 0
  store i64 %164, i64* %165
  store i8* %160, i8** %159
  %166 = call i64 @pick_int(i8* %156)
  %167 = icmp eq i64 %166, 10
  %168 = getelementptr [17 x i8], [17 x i8]* @.str11, i32 0, i32 0
  %169 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str11.c, i8* %168)
  %170 = call i8* @nyx_string_to_cstr(%nyx_string* %169)
  br i1 %167, label %assert_pass_47, label %assert_fail_47
assert_fail_47:
  call void @nyx_assert_fail(i8* %170)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_47
assert_pass_47:
  %171 = call i8* @GC_malloc(i64 16)
  %172 = bitcast i8* %171 to { i64, i8* }*
  %173 = getelementptr { i64, i8* }, { i64, i8* }* %172, i32 0, i32 0
  store i64 1, i64* %173
  %174 = getelementptr { i64, i8* }, { i64, i8* }* %172, i32 0, i32 1
  %175 = call i8* @GC_malloc(i64 16)
  %176 = bitcast i8* %175 to i64*
  %177 = getelementptr [2 x i8], [2 x i8]* @.str12, i32 0, i32 0
  %178 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str12.c, i8* %177)
  %179 = ptrtoint %nyx_string* %178 to i64
  %180 = getelementptr i64, i64* %176, i64 0
  store i64 %179, i64* %180
  %181 = getelementptr i64, i64* %176, i64 1
  store i64 7, i64* %181
  store i8* %175, i8** %174
  %182 = call i64 @pick_int(i8* %171)
  %183 = icmp eq i64 %182, 7
  %184 = getelementptr [17 x i8], [17 x i8]* @.str13, i32 0, i32 0
  %185 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str13.c, i8* %184)
  %186 = call i8* @nyx_string_to_cstr(%nyx_string* %185)
  br i1 %183, label %assert_pass_48, label %assert_fail_48
assert_fail_48:
  call void @nyx_assert_fail(i8* %186)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_48
assert_pass_48:
  %187 = getelementptr [2 x i8], [2 x i8]* @.str14, i32 0, i32 0
  %188 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str14.c, i8* %187)
  %189 = call %nyx_string* @label_of(%nyx_string* %188)
  %190 = getelementptr [5 x i8], [5 x i8]* @.str15, i32 0, i32 0
  %191 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str15.c, i8* %190)
  %192 = call i1 @nyx_string_equals(%nyx_string* %189, %nyx_string* %191)
  %193 = getelementptr [17 x i8], [17 x i8]* @.str16, i32 0, i32 0
  %194 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str16.c, i8* %193)
  %195 = call i8* @nyx_string_to_cstr(%nyx_string* %194)
  br i1 %192, label %assert_pass_49, label %assert_fail_49
assert_fail_49:
  call void @nyx_assert_fail(i8* %195)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_49
assert_pass_49:
  %196 = getelementptr [2 x i8], [2 x i8]* @.str17, i32 0, i32 0
  %197 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str17.c, i8* %196)
  %198 = call %nyx_string* @label_of(%nyx_string* %197)
  %199 = getelementptr [5 x i8], [5 x i8]* @.str18, i32 0, i32 0
  %200 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str18.c, i8* %199)
  %201 = call i1 @nyx_string_equals(%nyx_string* %198, %nyx_string* %200)
  %202 = getelementptr [17 x i8], [17 x i8]* @.str19, i32 0, i32 0
  %203 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str19.c, i8* %202)
  %204 = call i8* @nyx_string_to_cstr(%nyx_string* %203)
  br i1 %201, label %assert_pass_50, label %assert_fail_50
assert_fail_50:
  call void @nyx_assert_fail(i8* %204)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_50
assert_pass_50:
  %205 = getelementptr [25 x i8], [25 x i8]* @.str20, i32 0, i32 0
  %206 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str20.c, i8* %205)
  %207 = call i8* @nyx_string_to_cstr(%nyx_string* %206)
  call void @nyx_print_string(i8* %207)
  ret i64 0
}


attributes #0 = { returns_twice }

