source_filename = "/home/admin/nyx/lang/tests/compiler/systems/test-322-nested-field-assign.nx"
target triple = "x86_64-pc-linux-gnu"

%Inner = type { i64, %nyx_string* }

%Config = type { %Inner, i64 }

%App = type { %Config, i64 }

%WithAlias = type { %Inner, i64 }

%Holder = type { %Inner*, i64 }

@.str0 = private unnamed_addr constant [4 x i8] c"old\00"
@.str0.c = internal global %nyx_string* null
@.str1 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str1.c = internal global %nyx_string* null
@.str2 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str2.c = internal global %nyx_string* null
@.str3 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str3.c = internal global %nyx_string* null
@.str4 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str4.c = internal global %nyx_string* null
@.str5 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str5.c = internal global %nyx_string* null
@.str6 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str6.c = internal global %nyx_string* null
@.str7 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str7.c = internal global %nyx_string* null
@.str8 = private unnamed_addr constant [4 x i8] c"new\00"
@.str8.c = internal global %nyx_string* null
@.str9 = private unnamed_addr constant [4 x i8] c"new\00"
@.str9.c = internal global %nyx_string* null
@.str10 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str10.c = internal global %nyx_string* null
@.str11 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str11.c = internal global %nyx_string* null
@.str12 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str12.c = internal global %nyx_string* null
@.str13 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str13.c = internal global %nyx_string* null
@.str14 = private unnamed_addr constant [2 x i8] c"h\00"
@.str14.c = internal global %nyx_string* null
@.str15 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str15.c = internal global %nyx_string* null
@.str16 = private unnamed_addr constant [2 x i8] c"h\00"
@.str16.c = internal global %nyx_string* null
@.str17 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str17.c = internal global %nyx_string* null
@.str18 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str18.c = internal global %nyx_string* null
@.str19 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str19.c = internal global %nyx_string* null
@.str20 = private unnamed_addr constant [2 x i8] c"h\00"
@.str20.c = internal global %nyx_string* null
@.str21 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str21.c = internal global %nyx_string* null
@.str22 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str22.c = internal global %nyx_string* null
@.str23 = private unnamed_addr constant [2 x i8] c"h\00"
@.str23.c = internal global %nyx_string* null
@.str24 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str24.c = internal global %nyx_string* null
@.str25 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str25.c = internal global %nyx_string* null
@.str26 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str26.c = internal global %nyx_string* null
@.str27 = private unnamed_addr constant [2 x i8] c"h\00"
@.str27.c = internal global %nyx_string* null
@.str28 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str28.c = internal global %nyx_string* null
@.str29 = private unnamed_addr constant [2 x i8] c"h\00"
@.str29.c = internal global %nyx_string* null
@.str30 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str30.c = internal global %nyx_string* null
@.str31 = private unnamed_addr constant [12 x i8] c"test-322 OK\00"
@.str31.c = internal global %nyx_string* null
@__nyx_test_failed = external global i64
@__nyx_test_mode = external global i64
; Nyx Compiler Bootstrap v3.0
; Generated from: /home/admin/nyx/lang/tests/compiler/systems/test-322-nested-field-assign.nx

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
  %1 = getelementptr %App, %App* null, i32 1
  %2 = ptrtoint %App* %1 to i64
  %3 = call i8* @GC_malloc(i64 %2)
  %4 = bitcast i8* %3 to %App*
  %5 = getelementptr %Config, %Config* null, i32 1
  %6 = ptrtoint %Config* %5 to i64
  %7 = call i8* @GC_malloc(i64 %6)
  %8 = bitcast i8* %7 to %Config*
  %9 = getelementptr %Inner, %Inner* null, i32 1
  %10 = ptrtoint %Inner* %9 to i64
  %11 = call i8* @GC_malloc(i64 %10)
  %12 = bitcast i8* %11 to %Inner*
  %13 = getelementptr %Inner, %Inner* %12, i32 0, i32 0
  store i64 80, i64* %13
  %14 = getelementptr [4 x i8], [4 x i8]* @.str0, i32 0, i32 0
  %15 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str0.c, i8* %14)
  %16 = getelementptr %Inner, %Inner* %12, i32 0, i32 1
  store %nyx_string* %15, %nyx_string** %16
  %17 = load %Inner, %Inner* %12
  %18 = getelementptr %Config, %Config* %8, i32 0, i32 0
  store %Inner %17, %Inner* %18
  %19 = getelementptr %Config, %Config* %8, i32 0, i32 1
  store i64 0, i64* %19
  %20 = load %Config, %Config* %8
  %21 = getelementptr %App, %App* %4, i32 0, i32 0
  store %Config %20, %Config* %21
  %22 = getelementptr %App, %App* %4, i32 0, i32 1
  store i64 7, i64* %22
  %23 = load %App, %App* %4
  %24 = alloca %App
  store %App %23, %App* %24
  %25 = getelementptr %App, %App* %24, i32 0, i32 0
  %26 = load %Config, %Config* %25
  %27 = alloca %Config
  store %Config %26, %Config* %27
  %28 = getelementptr %Config, %Config* %27, i32 0, i32 1
  %29 = load i64, i64* %28
  %30 = icmp eq i64 %29, 0
  %31 = getelementptr [17 x i8], [17 x i8]* @.str1, i32 0, i32 0
  %32 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1.c, i8* %31)
  %33 = call i8* @nyx_string_to_cstr(%nyx_string* %32)
  br i1 %30, label %assert_pass_0, label %assert_fail_0
assert_fail_0:
  call void @nyx_assert_fail(i8* %33)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_0
assert_pass_0:
  %34 = getelementptr %App, %App* %24, i32 0, i32 0
  %35 = load %Config, %Config* %34
  %36 = alloca %Config
  store %Config %35, %Config* %36
  %37 = getelementptr %Config, %Config* %36, i32 0, i32 0
  %38 = load %Inner, %Inner* %37
  %39 = alloca %Inner
  store %Inner %38, %Inner* %39
  %40 = getelementptr %Inner, %Inner* %39, i32 0, i32 0
  %41 = load i64, i64* %40
  %42 = icmp eq i64 %41, 80
  %43 = getelementptr [17 x i8], [17 x i8]* @.str2, i32 0, i32 0
  %44 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str2.c, i8* %43)
  %45 = call i8* @nyx_string_to_cstr(%nyx_string* %44)
  br i1 %42, label %assert_pass_1, label %assert_fail_1
assert_fail_1:
  call void @nyx_assert_fail(i8* %45)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_1
assert_pass_1:
  %46 = getelementptr %App, %App* %24, i32 0, i32 0
  %47 = getelementptr %Config, %Config* %46, i32 0, i32 1
  store i64 5, i64* %47
  %48 = getelementptr %App, %App* %24, i32 0, i32 0
  %49 = load %Config, %Config* %48
  %50 = alloca %Config
  store %Config %49, %Config* %50
  %51 = getelementptr %Config, %Config* %50, i32 0, i32 1
  %52 = load i64, i64* %51
  %53 = icmp eq i64 %52, 5
  %54 = getelementptr [17 x i8], [17 x i8]* @.str3, i32 0, i32 0
  %55 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str3.c, i8* %54)
  %56 = call i8* @nyx_string_to_cstr(%nyx_string* %55)
  br i1 %53, label %assert_pass_2, label %assert_fail_2
assert_fail_2:
  call void @nyx_assert_fail(i8* %56)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_2
assert_pass_2:
  %57 = getelementptr %App, %App* %24, i32 0, i32 1
  %58 = load i64, i64* %57
  %59 = icmp eq i64 %58, 7
  %60 = getelementptr [17 x i8], [17 x i8]* @.str4, i32 0, i32 0
  %61 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str4.c, i8* %60)
  %62 = call i8* @nyx_string_to_cstr(%nyx_string* %61)
  br i1 %59, label %assert_pass_3, label %assert_fail_3
assert_fail_3:
  call void @nyx_assert_fail(i8* %62)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_3
assert_pass_3:
  %63 = getelementptr %App, %App* %24, i32 0, i32 0
  %64 = getelementptr %Config, %Config* %63, i32 0, i32 0
  %65 = getelementptr %Inner, %Inner* %64, i32 0, i32 0
  store i64 8080, i64* %65
  %66 = getelementptr %App, %App* %24, i32 0, i32 0
  %67 = load %Config, %Config* %66
  %68 = alloca %Config
  store %Config %67, %Config* %68
  %69 = getelementptr %Config, %Config* %68, i32 0, i32 0
  %70 = load %Inner, %Inner* %69
  %71 = alloca %Inner
  store %Inner %70, %Inner* %71
  %72 = getelementptr %Inner, %Inner* %71, i32 0, i32 0
  %73 = load i64, i64* %72
  %74 = icmp eq i64 %73, 8080
  %75 = getelementptr [17 x i8], [17 x i8]* @.str5, i32 0, i32 0
  %76 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str5.c, i8* %75)
  %77 = call i8* @nyx_string_to_cstr(%nyx_string* %76)
  br i1 %74, label %assert_pass_4, label %assert_fail_4
assert_fail_4:
  call void @nyx_assert_fail(i8* %77)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_4
assert_pass_4:
  %78 = getelementptr %App, %App* %24, i32 0, i32 0
  %79 = load %Config, %Config* %78
  %80 = alloca %Config
  store %Config %79, %Config* %80
  %81 = getelementptr %Config, %Config* %80, i32 0, i32 1
  %82 = load i64, i64* %81
  %83 = icmp eq i64 %82, 5
  %84 = getelementptr [17 x i8], [17 x i8]* @.str6, i32 0, i32 0
  %85 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str6.c, i8* %84)
  %86 = call i8* @nyx_string_to_cstr(%nyx_string* %85)
  br i1 %83, label %assert_pass_5, label %assert_fail_5
assert_fail_5:
  call void @nyx_assert_fail(i8* %86)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_5
assert_pass_5:
  %87 = getelementptr %App, %App* %24, i32 0, i32 1
  %88 = load i64, i64* %87
  %89 = icmp eq i64 %88, 7
  %90 = getelementptr [17 x i8], [17 x i8]* @.str7, i32 0, i32 0
  %91 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str7.c, i8* %90)
  %92 = call i8* @nyx_string_to_cstr(%nyx_string* %91)
  br i1 %89, label %assert_pass_6, label %assert_fail_6
assert_fail_6:
  call void @nyx_assert_fail(i8* %92)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_6
assert_pass_6:
  %93 = getelementptr %App, %App* %24, i32 0, i32 0
  %94 = getelementptr %Config, %Config* %93, i32 0, i32 0
  %95 = getelementptr [4 x i8], [4 x i8]* @.str8, i32 0, i32 0
  %96 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str8.c, i8* %95)
  %97 = getelementptr %Inner, %Inner* %94, i32 0, i32 1
  store %nyx_string* %96, %nyx_string** %97
  %98 = getelementptr %App, %App* %24, i32 0, i32 0
  %99 = load %Config, %Config* %98
  %100 = alloca %Config
  store %Config %99, %Config* %100
  %101 = getelementptr %Config, %Config* %100, i32 0, i32 0
  %102 = load %Inner, %Inner* %101
  %103 = alloca %Inner
  store %Inner %102, %Inner* %103
  %104 = getelementptr %Inner, %Inner* %103, i32 0, i32 1
  %105 = load %nyx_string*, %nyx_string** %104
  %106 = getelementptr [4 x i8], [4 x i8]* @.str9, i32 0, i32 0
  %107 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str9.c, i8* %106)
  %108 = call i1 @nyx_string_equals(%nyx_string* %105, %nyx_string* %107)
  %109 = getelementptr [17 x i8], [17 x i8]* @.str10, i32 0, i32 0
  %110 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str10.c, i8* %109)
  %111 = call i8* @nyx_string_to_cstr(%nyx_string* %110)
  br i1 %108, label %assert_pass_7, label %assert_fail_7
assert_fail_7:
  call void @nyx_assert_fail(i8* %111)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_7
assert_pass_7:
  %112 = getelementptr %App, %App* %24, i32 0, i32 0
  %113 = load %Config, %Config* %112
  %114 = alloca %Config
  store %Config %113, %Config* %114
  %115 = getelementptr %Config, %Config* %114, i32 0, i32 0
  %116 = load %Inner, %Inner* %115
  %117 = alloca %Inner
  store %Inner %116, %Inner* %117
  %118 = getelementptr %Inner, %Inner* %117, i32 0, i32 0
  %119 = load i64, i64* %118
  %120 = icmp eq i64 %119, 8080
  %121 = getelementptr [17 x i8], [17 x i8]* @.str11, i32 0, i32 0
  %122 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str11.c, i8* %121)
  %123 = call i8* @nyx_string_to_cstr(%nyx_string* %122)
  br i1 %120, label %assert_pass_8, label %assert_fail_8
assert_fail_8:
  call void @nyx_assert_fail(i8* %123)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_8
assert_pass_8:
  %124 = getelementptr %App, %App* %24, i32 0, i32 0
  %125 = load %Config, %Config* %124
  %126 = alloca %Config
  store %Config %125, %Config* %126
  %127 = getelementptr %Config, %Config* %126, i32 0, i32 1
  %128 = load i64, i64* %127
  %129 = icmp eq i64 %128, 5
  %130 = getelementptr [17 x i8], [17 x i8]* @.str12, i32 0, i32 0
  %131 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str12.c, i8* %130)
  %132 = call i8* @nyx_string_to_cstr(%nyx_string* %131)
  br i1 %129, label %assert_pass_9, label %assert_fail_9
assert_fail_9:
  call void @nyx_assert_fail(i8* %132)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_9
assert_pass_9:
  %133 = getelementptr %Config, %Config* %126, i32 0, i32 0
  %134 = load %Inner, %Inner* %133
  %135 = alloca %Inner
  store %Inner %134, %Inner* %135
  %136 = getelementptr %Inner, %Inner* %135, i32 0, i32 0
  %137 = load i64, i64* %136
  %138 = icmp eq i64 %137, 8080
  %139 = getelementptr [17 x i8], [17 x i8]* @.str13, i32 0, i32 0
  %140 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str13.c, i8* %139)
  %141 = call i8* @nyx_string_to_cstr(%nyx_string* %140)
  br i1 %138, label %assert_pass_10, label %assert_fail_10
assert_fail_10:
  call void @nyx_assert_fail(i8* %141)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_10
assert_pass_10:
  %142 = getelementptr %Inner, %Inner* null, i32 1
  %143 = ptrtoint %Inner* %142 to i64
  %144 = call i8* @GC_malloc(i64 %143)
  %145 = bitcast i8* %144 to %Inner*
  %146 = getelementptr %Inner, %Inner* %145, i32 0, i32 0
  store i64 1, i64* %146
  %147 = getelementptr [2 x i8], [2 x i8]* @.str14, i32 0, i32 0
  %148 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str14.c, i8* %147)
  %149 = getelementptr %Inner, %Inner* %145, i32 0, i32 1
  store %nyx_string* %148, %nyx_string** %149
  %150 = load %Inner, %Inner* %145
  %151 = alloca %Inner
  store %Inner %150, %Inner* %151
  %152 = getelementptr %Inner, %Inner* %151, i32 0, i32 0
  store i64 2, i64* %152
  %153 = getelementptr %Inner, %Inner* %151, i32 0, i32 0
  %154 = load i64, i64* %153
  %155 = icmp eq i64 %154, 2
  %156 = getelementptr [17 x i8], [17 x i8]* @.str15, i32 0, i32 0
  %157 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str15.c, i8* %156)
  %158 = call i8* @nyx_string_to_cstr(%nyx_string* %157)
  br i1 %155, label %assert_pass_11, label %assert_fail_11
assert_fail_11:
  call void @nyx_assert_fail(i8* %158)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_11
assert_pass_11:
  %159 = getelementptr %Inner, %Inner* %151, i32 0, i32 1
  %160 = load %nyx_string*, %nyx_string** %159
  %161 = getelementptr [2 x i8], [2 x i8]* @.str16, i32 0, i32 0
  %162 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str16.c, i8* %161)
  %163 = call i1 @nyx_string_equals(%nyx_string* %160, %nyx_string* %162)
  %164 = getelementptr [17 x i8], [17 x i8]* @.str17, i32 0, i32 0
  %165 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str17.c, i8* %164)
  %166 = call i8* @nyx_string_to_cstr(%nyx_string* %165)
  br i1 %163, label %assert_pass_12, label %assert_fail_12
assert_fail_12:
  call void @nyx_assert_fail(i8* %166)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_12
assert_pass_12:
  %167 = getelementptr %App, %App* %24, i32 0, i32 1
  store i64 99, i64* %167
  %168 = getelementptr %App, %App* %24, i32 0, i32 1
  %169 = load i64, i64* %168
  %170 = icmp eq i64 %169, 99
  %171 = getelementptr [17 x i8], [17 x i8]* @.str18, i32 0, i32 0
  %172 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str18.c, i8* %171)
  %173 = call i8* @nyx_string_to_cstr(%nyx_string* %172)
  br i1 %170, label %assert_pass_13, label %assert_fail_13
assert_fail_13:
  call void @nyx_assert_fail(i8* %173)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_13
assert_pass_13:
  %174 = getelementptr %App, %App* %24, i32 0, i32 0
  %175 = load %Config, %Config* %174
  %176 = alloca %Config
  store %Config %175, %Config* %176
  %177 = getelementptr %Config, %Config* %176, i32 0, i32 0
  %178 = load %Inner, %Inner* %177
  %179 = alloca %Inner
  store %Inner %178, %Inner* %179
  %180 = getelementptr %Inner, %Inner* %179, i32 0, i32 0
  %181 = load i64, i64* %180
  %182 = icmp eq i64 %181, 8080
  %183 = getelementptr [17 x i8], [17 x i8]* @.str19, i32 0, i32 0
  %184 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str19.c, i8* %183)
  %185 = call i8* @nyx_string_to_cstr(%nyx_string* %184)
  br i1 %182, label %assert_pass_14, label %assert_fail_14
assert_fail_14:
  call void @nyx_assert_fail(i8* %185)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_14
assert_pass_14:
  %186 = getelementptr %App, %App* null, i32 1
  %187 = ptrtoint %App* %186 to i64
  %188 = call i8* @GC_malloc(i64 %187)
  %189 = bitcast i8* %188 to %App*
  %190 = getelementptr %Config, %Config* null, i32 1
  %191 = ptrtoint %Config* %190 to i64
  %192 = call i8* @GC_malloc(i64 %191)
  %193 = bitcast i8* %192 to %Config*
  %194 = getelementptr %Inner, %Inner* null, i32 1
  %195 = ptrtoint %Inner* %194 to i64
  %196 = call i8* @GC_malloc(i64 %195)
  %197 = bitcast i8* %196 to %Inner*
  %198 = getelementptr %Inner, %Inner* %197, i32 0, i32 0
  store i64 1, i64* %198
  %199 = getelementptr [2 x i8], [2 x i8]* @.str20, i32 0, i32 0
  %200 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str20.c, i8* %199)
  %201 = getelementptr %Inner, %Inner* %197, i32 0, i32 1
  store %nyx_string* %200, %nyx_string** %201
  %202 = load %Inner, %Inner* %197
  %203 = getelementptr %Config, %Config* %193, i32 0, i32 0
  store %Inner %202, %Inner* %203
  %204 = getelementptr %Config, %Config* %193, i32 0, i32 1
  store i64 0, i64* %204
  %205 = load %Config, %Config* %193
  %206 = getelementptr %App, %App* %189, i32 0, i32 0
  store %Config %205, %Config* %206
  %207 = getelementptr %App, %App* %189, i32 0, i32 1
  store i64 1, i64* %207
  %208 = load %App, %App* %189
  %209 = alloca %App
  store %App %208, %App* %209
  %210 = call i64 @App_set_port(%App* %209, i64 8080)
  %211 = getelementptr %App, %App* %209, i32 0, i32 0
  %212 = load %Config, %Config* %211
  %213 = alloca %Config
  store %Config %212, %Config* %213
  %214 = getelementptr %Config, %Config* %213, i32 0, i32 0
  %215 = load %Inner, %Inner* %214
  %216 = alloca %Inner
  store %Inner %215, %Inner* %216
  %217 = getelementptr %Inner, %Inner* %216, i32 0, i32 0
  %218 = load i64, i64* %217
  %219 = icmp eq i64 %218, 8080
  %220 = getelementptr [17 x i8], [17 x i8]* @.str21, i32 0, i32 0
  %221 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str21.c, i8* %220)
  %222 = call i8* @nyx_string_to_cstr(%nyx_string* %221)
  br i1 %219, label %assert_pass_15, label %assert_fail_15
assert_fail_15:
  call void @nyx_assert_fail(i8* %222)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_15
assert_pass_15:
  %223 = getelementptr %App, %App* %209, i32 0, i32 1
  %224 = load i64, i64* %223
  %225 = icmp eq i64 %224, 1
  %226 = getelementptr [17 x i8], [17 x i8]* @.str22, i32 0, i32 0
  %227 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str22.c, i8* %226)
  %228 = call i8* @nyx_string_to_cstr(%nyx_string* %227)
  br i1 %225, label %assert_pass_16, label %assert_fail_16
assert_fail_16:
  call void @nyx_assert_fail(i8* %228)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_16
assert_pass_16:
  %229 = getelementptr %WithAlias, %WithAlias* null, i32 1
  %230 = ptrtoint %WithAlias* %229 to i64
  %231 = call i8* @GC_malloc(i64 %230)
  %232 = bitcast i8* %231 to %WithAlias*
  %233 = getelementptr %Inner, %Inner* null, i32 1
  %234 = ptrtoint %Inner* %233 to i64
  %235 = call i8* @GC_malloc(i64 %234)
  %236 = bitcast i8* %235 to %Inner*
  %237 = getelementptr %Inner, %Inner* %236, i32 0, i32 0
  store i64 2, i64* %237
  %238 = getelementptr [2 x i8], [2 x i8]* @.str23, i32 0, i32 0
  %239 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str23.c, i8* %238)
  %240 = getelementptr %Inner, %Inner* %236, i32 0, i32 1
  store %nyx_string* %239, %nyx_string** %240
  %241 = load %Inner, %Inner* %236
  %242 = getelementptr %WithAlias, %WithAlias* %232, i32 0, i32 0
  store %Inner %241, %Inner* %242
  %243 = getelementptr %WithAlias, %WithAlias* %232, i32 0, i32 1
  store i64 1, i64* %243
  %244 = load %WithAlias, %WithAlias* %232
  %245 = alloca %WithAlias
  store %WithAlias %244, %WithAlias* %245
  %246 = getelementptr %WithAlias, %WithAlias* %245, i32 0, i32 0
  %247 = load %Inner, %Inner* %246
  %248 = alloca %Inner
  store %Inner %247, %Inner* %248
  %249 = getelementptr %Inner, %Inner* %248, i32 0, i32 0
  %250 = load i64, i64* %249
  %251 = icmp eq i64 %250, 2
  %252 = getelementptr [17 x i8], [17 x i8]* @.str24, i32 0, i32 0
  %253 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str24.c, i8* %252)
  %254 = call i8* @nyx_string_to_cstr(%nyx_string* %253)
  br i1 %251, label %assert_pass_17, label %assert_fail_17
assert_fail_17:
  call void @nyx_assert_fail(i8* %254)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_17
assert_pass_17:
  %255 = getelementptr %WithAlias, %WithAlias* %245, i32 0, i32 0
  %256 = getelementptr %Inner, %Inner* %255, i32 0, i32 0
  store i64 9, i64* %256
  %257 = getelementptr %WithAlias, %WithAlias* %245, i32 0, i32 0
  %258 = load %Inner, %Inner* %257
  %259 = alloca %Inner
  store %Inner %258, %Inner* %259
  %260 = getelementptr %Inner, %Inner* %259, i32 0, i32 0
  %261 = load i64, i64* %260
  %262 = icmp eq i64 %261, 9
  %263 = getelementptr [17 x i8], [17 x i8]* @.str25, i32 0, i32 0
  %264 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str25.c, i8* %263)
  %265 = call i8* @nyx_string_to_cstr(%nyx_string* %264)
  br i1 %262, label %assert_pass_18, label %assert_fail_18
assert_fail_18:
  call void @nyx_assert_fail(i8* %265)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_18
assert_pass_18:
  %266 = getelementptr %WithAlias, %WithAlias* %245, i32 0, i32 1
  %267 = load i64, i64* %266
  %268 = icmp eq i64 %267, 1
  %269 = getelementptr [17 x i8], [17 x i8]* @.str26, i32 0, i32 0
  %270 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str26.c, i8* %269)
  %271 = call i8* @nyx_string_to_cstr(%nyx_string* %270)
  br i1 %268, label %assert_pass_19, label %assert_fail_19
assert_fail_19:
  call void @nyx_assert_fail(i8* %271)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_19
assert_pass_19:
  %272 = getelementptr %Inner, %Inner* null, i32 1
  %273 = ptrtoint %Inner* %272 to i64
  %274 = call i8* @GC_malloc(i64 %273)
  %275 = bitcast i8* %274 to %Inner*
  %276 = getelementptr %Inner, %Inner* %275, i32 0, i32 0
  store i64 1, i64* %276
  %277 = getelementptr [2 x i8], [2 x i8]* @.str27, i32 0, i32 0
  %278 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str27.c, i8* %277)
  %279 = getelementptr %Inner, %Inner* %275, i32 0, i32 1
  store %nyx_string* %278, %nyx_string** %279
  %280 = load %Inner, %Inner* %275
  %281 = alloca %Inner
  store %Inner %280, %Inner* %281
  %282 = getelementptr %Inner, %Inner* %281, i32 0, i32 0
  store i64 7, i64* %282
  %283 = getelementptr %Inner, %Inner* %281, i32 0, i32 0
  %284 = load i64, i64* %283
  %285 = icmp eq i64 %284, 7
  %286 = getelementptr [17 x i8], [17 x i8]* @.str28, i32 0, i32 0
  %287 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str28.c, i8* %286)
  %288 = call i8* @nyx_string_to_cstr(%nyx_string* %287)
  br i1 %285, label %assert_pass_20, label %assert_fail_20
assert_fail_20:
  call void @nyx_assert_fail(i8* %288)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_20
assert_pass_20:
  %289 = getelementptr %Inner, %Inner* null, i32 1
  %290 = ptrtoint %Inner* %289 to i64
  %291 = call i8* @GC_malloc(i64 %290)
  %292 = bitcast i8* %291 to %Inner*
  %293 = getelementptr %Inner, %Inner* %292, i32 0, i32 0
  store i64 1, i64* %293
  %294 = getelementptr [2 x i8], [2 x i8]* @.str29, i32 0, i32 0
  %295 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str29.c, i8* %294)
  %296 = getelementptr %Inner, %Inner* %292, i32 0, i32 1
  store %nyx_string* %295, %nyx_string** %296
  %297 = load %Inner, %Inner* %292
  %298 = alloca %Inner
  store %Inner %297, %Inner* %298
  %299 = getelementptr %Holder, %Holder* null, i32 1
  %300 = ptrtoint %Holder* %299 to i64
  %301 = call i8* @GC_malloc(i64 %300)
  %302 = bitcast i8* %301 to %Holder*
  %303 = getelementptr %Holder, %Holder* %302, i32 0, i32 0
  store %Inner* %298, %Inner** %303
  %304 = getelementptr %Holder, %Holder* %302, i32 0, i32 1
  store i64 0, i64* %304
  %305 = load %Holder, %Holder* %302
  %306 = alloca %Holder
  store %Holder %305, %Holder* %306
  %307 = getelementptr %Holder, %Holder* %306, i32 0, i32 0
  %308 = load %Inner*, %Inner** %307
  %309 = getelementptr %Inner, %Inner* %308, i32 0, i32 0
  store i64 5, i64* %309
  %310 = getelementptr %Inner, %Inner* %298, i32 0, i32 0
  %311 = load i64, i64* %310
  %312 = icmp eq i64 %311, 5
  %313 = getelementptr [17 x i8], [17 x i8]* @.str30, i32 0, i32 0
  %314 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str30.c, i8* %313)
  %315 = call i8* @nyx_string_to_cstr(%nyx_string* %314)
  br i1 %312, label %assert_pass_21, label %assert_fail_21
assert_fail_21:
  call void @nyx_assert_fail(i8* %315)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_21
assert_pass_21:
  %316 = getelementptr [12 x i8], [12 x i8]* @.str31, i32 0, i32 0
  %317 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str31.c, i8* %316)
  %318 = call i8* @nyx_string_to_cstr(%nyx_string* %317)
  call void @nyx_print_string(i8* %318)
  ret i64 0
}

define internal i64 @App_set_port(
%App* %self.param, i64 %p.param) {
  %p.ptr = alloca i64
  store i64 %p.param, i64* %p.ptr
  %319 = getelementptr %App, %App* %self.param, i32 0, i32 0
  %320 = getelementptr %Config, %Config* %319, i32 0, i32 0
  %321 = load i64, i64* %p.ptr
  %322 = getelementptr %Inner, %Inner* %320, i32 0, i32 0
  store i64 %321, i64* %322
  ret i64 0
}


attributes #0 = { returns_twice }

