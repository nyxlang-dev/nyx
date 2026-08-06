source_filename = "/home/admin/nyx/lang/tests/compiler/systems/test-325-field-array-contains.nx"
target triple = "x86_64-pc-linux-gnu"

%S = type { { i64, i8* }* }

%SS = type { { i64, i8* }* }

%Anidada = type { %S }

@.str0 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str0.c = internal global %nyx_string* null
@.str1 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str1.c = internal global %nyx_string* null
@.str2 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str2.c = internal global %nyx_string* null
@.str3 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str3.c = internal global %nyx_string* null
@.str4 = private unnamed_addr constant [3 x i8] c"si\00"
@.str4.c = internal global %nyx_string* null
@.str5 = private unnamed_addr constant [3 x i8] c"no\00"
@.str5.c = internal global %nyx_string* null
@.str6 = private unnamed_addr constant [3 x i8] c"si\00"
@.str6.c = internal global %nyx_string* null
@.str7 = private unnamed_addr constant [3 x i8] c"no\00"
@.str7.c = internal global %nyx_string* null
@.str8 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str8.c = internal global %nyx_string* null
@.str9 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str9.c = internal global %nyx_string* null
@.str10 = private unnamed_addr constant [5 x i8] c"alfa\00"
@.str10.c = internal global %nyx_string* null
@.str11 = private unnamed_addr constant [5 x i8] c"beta\00"
@.str11.c = internal global %nyx_string* null
@.str12 = private unnamed_addr constant [5 x i8] c"beta\00"
@.str12.c = internal global %nyx_string* null
@.str13 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str13.c = internal global %nyx_string* null
@.str14 = private unnamed_addr constant [6 x i8] c"gamma\00"
@.str14.c = internal global %nyx_string* null
@.str15 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str15.c = internal global %nyx_string* null
@.str16 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str16.c = internal global %nyx_string* null
@.str17 = private unnamed_addr constant [5 x i8] c"beta\00"
@.str17.c = internal global %nyx_string* null
@.str18 = private unnamed_addr constant [3 x i8] c"si\00"
@.str18.c = internal global %nyx_string* null
@.str19 = private unnamed_addr constant [3 x i8] c"no\00"
@.str19.c = internal global %nyx_string* null
@.str20 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str20.c = internal global %nyx_string* null
@.str21 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str21.c = internal global %nyx_string* null
@.str22 = private unnamed_addr constant [3 x i8] c"si\00"
@.str22.c = internal global %nyx_string* null
@.str23 = private unnamed_addr constant [3 x i8] c"no\00"
@.str23.c = internal global %nyx_string* null
@.str24 = private unnamed_addr constant [3 x i8] c"ok\00"
@.str24.c = internal global %nyx_string* null
@__nyx_test_failed = external global i64
@__nyx_test_mode = external global i64
; Nyx Compiler Bootstrap v3.0
; Generated from: /home/admin/nyx/lang/tests/compiler/systems/test-325-field-array-contains.nx

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
  %1 = call { i64, i8* }* @nyx_array_new_ptr()
  call void @nyx_array_push_tagged({ i64, i8* }* %1, i64 1, i64 1)
  call void @nyx_array_push_tagged({ i64, i8* }* %1, i64 2, i64 1)
  call void @nyx_array_push_tagged({ i64, i8* }* %1, i64 3, i64 1)
  call void @nyx_array_retag_unknown({ i64, i8* }* %1, i64 1)
  %2 = alloca { i64, i8* }*
  store { i64, i8* }* %1, { i64, i8* }** %2
  %3 = getelementptr %S, %S* null, i32 1
  %4 = ptrtoint %S* %3 to i64
  %5 = call i8* @GC_malloc(i64 %4)
  %6 = bitcast i8* %5 to %S*
  %7 = load { i64, i8* }*, { i64, i8* }** %2
  %8 = getelementptr %S, %S* %6, i32 0, i32 0
  store { i64, i8* }* %7, { i64, i8* }** %8
  %9 = load %S, %S* %6
  %10 = alloca %S
  store %S %9, %S* %10
  %11 = getelementptr %S, %S* %10, i32 0, i32 0
  %12 = load { i64, i8* }*, { i64, i8* }** %11
  %13 = alloca { i64, i8* }*
  store { i64, i8* }* %12, { i64, i8* }** %13
  %14 = load { i64, i8* }*, { i64, i8* }** %13
  %15 = call i64 @nyx_array_contains({ i64, i8* }* %14, i64 2)
  %16 = trunc i64 %15 to i1
  %17 = getelementptr [17 x i8], [17 x i8]* @.str0, i32 0, i32 0
  %18 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str0.c, i8* %17)
  %19 = call i8* @nyx_string_to_cstr(%nyx_string* %18)
  br i1 %16, label %assert_pass_0, label %assert_fail_0
assert_fail_0:
  call void @nyx_assert_fail(i8* %19)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_0
assert_pass_0:
  %20 = getelementptr %S, %S* %10, i32 0, i32 0
  %21 = load { i64, i8* }*, { i64, i8* }** %20
  %22 = getelementptr %S, %S* %10, i32 0, i32 0
  %23 = load { i64, i8* }*, { i64, i8* }** %22
  %24 = call i64 @nyx_array_contains({ i64, i8* }* %23, i64 2)
  %25 = trunc i64 %24 to i1
  %26 = getelementptr [17 x i8], [17 x i8]* @.str1, i32 0, i32 0
  %27 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1.c, i8* %26)
  %28 = call i8* @nyx_string_to_cstr(%nyx_string* %27)
  br i1 %25, label %assert_pass_1, label %assert_fail_1
assert_fail_1:
  call void @nyx_assert_fail(i8* %28)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_1
assert_pass_1:
  %29 = load { i64, i8* }*, { i64, i8* }** %13
  %30 = call i64 @nyx_array_contains({ i64, i8* }* %29, i64 99)
  %31 = trunc i64 %30 to i1
  %32 = xor i1 %31, true
  %33 = getelementptr [17 x i8], [17 x i8]* @.str2, i32 0, i32 0
  %34 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str2.c, i8* %33)
  %35 = call i8* @nyx_string_to_cstr(%nyx_string* %34)
  br i1 %32, label %assert_pass_2, label %assert_fail_2
assert_fail_2:
  call void @nyx_assert_fail(i8* %35)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_2
assert_pass_2:
  %36 = getelementptr %S, %S* %10, i32 0, i32 0
  %37 = load { i64, i8* }*, { i64, i8* }** %36
  %38 = getelementptr %S, %S* %10, i32 0, i32 0
  %39 = load { i64, i8* }*, { i64, i8* }** %38
  %40 = call i64 @nyx_array_contains({ i64, i8* }* %39, i64 99)
  %41 = trunc i64 %40 to i1
  %42 = xor i1 %41, true
  %43 = getelementptr [17 x i8], [17 x i8]* @.str3, i32 0, i32 0
  %44 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str3.c, i8* %43)
  %45 = call i8* @nyx_string_to_cstr(%nyx_string* %44)
  br i1 %42, label %assert_pass_3, label %assert_fail_3
assert_fail_3:
  call void @nyx_assert_fail(i8* %45)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_3
assert_pass_3:
  %46 = getelementptr %S, %S* %10, i32 0, i32 0
  %47 = load { i64, i8* }*, { i64, i8* }** %46
  %48 = getelementptr %S, %S* %10, i32 0, i32 0
  %49 = load { i64, i8* }*, { i64, i8* }** %48
  %50 = call i64 @nyx_array_contains({ i64, i8* }* %49, i64 2)
  %51 = trunc i64 %50 to i1
  br i1 %51, label %then4, label %else5
then4:
  %52 = getelementptr [3 x i8], [3 x i8]* @.str4, i32 0, i32 0
  %53 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str4.c, i8* %52)
  %54 = call i8* @nyx_string_to_cstr(%nyx_string* %53)
  call void @nyx_print_string(i8* %54)
  br label %merge6
else5:
  %55 = getelementptr [3 x i8], [3 x i8]* @.str5, i32 0, i32 0
  %56 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str5.c, i8* %55)
  %57 = call i8* @nyx_string_to_cstr(%nyx_string* %56)
  call void @nyx_print_string(i8* %57)
  br label %merge6
merge6:
  %58 = getelementptr %S, %S* %10, i32 0, i32 0
  %59 = load { i64, i8* }*, { i64, i8* }** %58
  %60 = getelementptr %S, %S* %10, i32 0, i32 0
  %61 = load { i64, i8* }*, { i64, i8* }** %60
  %62 = call i64 @nyx_array_contains({ i64, i8* }* %61, i64 99)
  %63 = trunc i64 %62 to i1
  br i1 %63, label %then7, label %else8
then7:
  %64 = getelementptr [3 x i8], [3 x i8]* @.str6, i32 0, i32 0
  %65 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str6.c, i8* %64)
  %66 = call i8* @nyx_string_to_cstr(%nyx_string* %65)
  call void @nyx_print_string(i8* %66)
  br label %merge9
else8:
  %67 = getelementptr [3 x i8], [3 x i8]* @.str7, i32 0, i32 0
  %68 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str7.c, i8* %67)
  %69 = call i8* @nyx_string_to_cstr(%nyx_string* %68)
  call void @nyx_print_string(i8* %69)
  br label %merge9
merge9:
  %70 = getelementptr %S, %S* %10, i32 0, i32 0
  %71 = load { i64, i8* }*, { i64, i8* }** %70
  %72 = getelementptr %S, %S* %10, i32 0, i32 0
  %73 = load { i64, i8* }*, { i64, i8* }** %72
  %74 = call i64 @nyx_array_index_of({ i64, i8* }* %73, i64 3)
  %75 = icmp eq i64 %74, 2
  %76 = getelementptr [17 x i8], [17 x i8]* @.str8, i32 0, i32 0
  %77 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str8.c, i8* %76)
  %78 = call i8* @nyx_string_to_cstr(%nyx_string* %77)
  br i1 %75, label %assert_pass_10, label %assert_fail_10
assert_fail_10:
  call void @nyx_assert_fail(i8* %78)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_10
assert_pass_10:
  %79 = getelementptr %S, %S* %10, i32 0, i32 0
  %80 = load { i64, i8* }*, { i64, i8* }** %79
  %81 = call i64 @nyx_array_length({ i64, i8* }* %80)
  %82 = icmp eq i64 %81, 3
  %83 = getelementptr [17 x i8], [17 x i8]* @.str9, i32 0, i32 0
  %84 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str9.c, i8* %83)
  %85 = call i8* @nyx_string_to_cstr(%nyx_string* %84)
  br i1 %82, label %assert_pass_11, label %assert_fail_11
assert_fail_11:
  call void @nyx_assert_fail(i8* %85)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_11
assert_pass_11:
  %86 = getelementptr %S, %S* %10, i32 0, i32 0
  %87 = load { i64, i8* }*, { i64, i8* }** %86
  %88 = getelementptr %S, %S* %10, i32 0, i32 0
  %89 = load { i64, i8* }*, { i64, i8* }** %88
  %90 = call i64 @nyx_array_index_of({ i64, i8* }* %89, i64 3)
  %91 = call %nyx_string* @nyx_string_from_int(i64 %90)
  %92 = call i8* @nyx_string_to_cstr(%nyx_string* %91)
  call void @nyx_print_string(i8* %92)
  %93 = getelementptr %SS, %SS* null, i32 1
  %94 = ptrtoint %SS* %93 to i64
  %95 = call i8* @GC_malloc(i64 %94)
  %96 = bitcast i8* %95 to %SS*
  %97 = call { i64, i8* }* @nyx_array_new_ptr()
  %98 = getelementptr [5 x i8], [5 x i8]* @.str10, i32 0, i32 0
  %99 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str10.c, i8* %98)
  %100 = ptrtoint %nyx_string* %99 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %97, i64 %100, i64 2)
  %101 = getelementptr [5 x i8], [5 x i8]* @.str11, i32 0, i32 0
  %102 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str11.c, i8* %101)
  %103 = ptrtoint %nyx_string* %102 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %97, i64 %103, i64 2)
  %104 = getelementptr %SS, %SS* %96, i32 0, i32 0
  store { i64, i8* }* %97, { i64, i8* }** %104
  %105 = load %SS, %SS* %96
  %106 = alloca %SS
  store %SS %105, %SS* %106
  %107 = getelementptr %SS, %SS* %106, i32 0, i32 0
  %108 = load { i64, i8* }*, { i64, i8* }** %107
  %109 = getelementptr %SS, %SS* %106, i32 0, i32 0
  %110 = load { i64, i8* }*, { i64, i8* }** %109
  %111 = getelementptr [5 x i8], [5 x i8]* @.str12, i32 0, i32 0
  %112 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str12.c, i8* %111)
  %113 = ptrtoint %nyx_string* %112 to i64
  %114 = call i64 @nyx_array_contains_tagged({ i64, i8* }* %110, i64 %113, i64 2)
  %115 = trunc i64 %114 to i1
  %116 = getelementptr [17 x i8], [17 x i8]* @.str13, i32 0, i32 0
  %117 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str13.c, i8* %116)
  %118 = call i8* @nyx_string_to_cstr(%nyx_string* %117)
  br i1 %115, label %assert_pass_12, label %assert_fail_12
assert_fail_12:
  call void @nyx_assert_fail(i8* %118)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_12
assert_pass_12:
  %119 = getelementptr %SS, %SS* %106, i32 0, i32 0
  %120 = load { i64, i8* }*, { i64, i8* }** %119
  %121 = getelementptr %SS, %SS* %106, i32 0, i32 0
  %122 = load { i64, i8* }*, { i64, i8* }** %121
  %123 = getelementptr [6 x i8], [6 x i8]* @.str14, i32 0, i32 0
  %124 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str14.c, i8* %123)
  %125 = ptrtoint %nyx_string* %124 to i64
  %126 = call i64 @nyx_array_contains_tagged({ i64, i8* }* %122, i64 %125, i64 2)
  %127 = trunc i64 %126 to i1
  %128 = xor i1 %127, true
  %129 = getelementptr [17 x i8], [17 x i8]* @.str15, i32 0, i32 0
  %130 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str15.c, i8* %129)
  %131 = call i8* @nyx_string_to_cstr(%nyx_string* %130)
  br i1 %128, label %assert_pass_13, label %assert_fail_13
assert_fail_13:
  call void @nyx_assert_fail(i8* %131)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_13
assert_pass_13:
  %132 = getelementptr %SS, %SS* %106, i32 0, i32 0
  %133 = load { i64, i8* }*, { i64, i8* }** %132
  %134 = call i64 @nyx_array_length({ i64, i8* }* %133)
  %135 = icmp eq i64 %134, 2
  %136 = getelementptr [17 x i8], [17 x i8]* @.str16, i32 0, i32 0
  %137 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str16.c, i8* %136)
  %138 = call i8* @nyx_string_to_cstr(%nyx_string* %137)
  br i1 %135, label %assert_pass_14, label %assert_fail_14
assert_fail_14:
  call void @nyx_assert_fail(i8* %138)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_14
assert_pass_14:
  %139 = getelementptr %SS, %SS* %106, i32 0, i32 0
  %140 = load { i64, i8* }*, { i64, i8* }** %139
  %141 = getelementptr %SS, %SS* %106, i32 0, i32 0
  %142 = load { i64, i8* }*, { i64, i8* }** %141
  %143 = getelementptr [5 x i8], [5 x i8]* @.str17, i32 0, i32 0
  %144 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str17.c, i8* %143)
  %145 = ptrtoint %nyx_string* %144 to i64
  %146 = call i64 @nyx_array_contains_tagged({ i64, i8* }* %142, i64 %145, i64 2)
  %147 = trunc i64 %146 to i1
  br i1 %147, label %then15, label %else16
then15:
  %148 = getelementptr [3 x i8], [3 x i8]* @.str18, i32 0, i32 0
  %149 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str18.c, i8* %148)
  %150 = call i8* @nyx_string_to_cstr(%nyx_string* %149)
  call void @nyx_print_string(i8* %150)
  br label %merge17
else16:
  %151 = getelementptr [3 x i8], [3 x i8]* @.str19, i32 0, i32 0
  %152 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str19.c, i8* %151)
  %153 = call i8* @nyx_string_to_cstr(%nyx_string* %152)
  call void @nyx_print_string(i8* %153)
  br label %merge17
merge17:
  %154 = getelementptr %Anidada, %Anidada* null, i32 1
  %155 = ptrtoint %Anidada* %154 to i64
  %156 = call i8* @GC_malloc(i64 %155)
  %157 = bitcast i8* %156 to %Anidada*
  %158 = getelementptr %S, %S* null, i32 1
  %159 = ptrtoint %S* %158 to i64
  %160 = call i8* @GC_malloc(i64 %159)
  %161 = bitcast i8* %160 to %S*
  %162 = call { i64, i8* }* @nyx_array_new_ptr()
  call void @nyx_array_push_tagged({ i64, i8* }* %162, i64 7, i64 1)
  call void @nyx_array_push_tagged({ i64, i8* }* %162, i64 8, i64 1)
  %163 = getelementptr %S, %S* %161, i32 0, i32 0
  store { i64, i8* }* %162, { i64, i8* }** %163
  %164 = load %S, %S* %161
  %165 = getelementptr %Anidada, %Anidada* %157, i32 0, i32 0
  store %S %164, %S* %165
  %166 = load %Anidada, %Anidada* %157
  %167 = alloca %Anidada
  store %Anidada %166, %Anidada* %167
  %168 = getelementptr %Anidada, %Anidada* %167, i32 0, i32 0
  %169 = load %S, %S* %168
  %170 = alloca %S
  store %S %169, %S* %170
  %171 = getelementptr %S, %S* %170, i32 0, i32 0
  %172 = load { i64, i8* }*, { i64, i8* }** %171
  %173 = getelementptr %Anidada, %Anidada* %167, i32 0, i32 0
  %174 = load %S, %S* %173
  %175 = alloca %S
  store %S %174, %S* %175
  %176 = getelementptr %S, %S* %175, i32 0, i32 0
  %177 = load { i64, i8* }*, { i64, i8* }** %176
  %178 = call i64 @nyx_array_contains({ i64, i8* }* %177, i64 8)
  %179 = trunc i64 %178 to i1
  %180 = getelementptr [17 x i8], [17 x i8]* @.str20, i32 0, i32 0
  %181 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str20.c, i8* %180)
  %182 = call i8* @nyx_string_to_cstr(%nyx_string* %181)
  br i1 %179, label %assert_pass_18, label %assert_fail_18
assert_fail_18:
  call void @nyx_assert_fail(i8* %182)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_18
assert_pass_18:
  %183 = getelementptr %Anidada, %Anidada* %167, i32 0, i32 0
  %184 = load %S, %S* %183
  %185 = alloca %S
  store %S %184, %S* %185
  %186 = getelementptr %S, %S* %185, i32 0, i32 0
  %187 = load { i64, i8* }*, { i64, i8* }** %186
  %188 = getelementptr %Anidada, %Anidada* %167, i32 0, i32 0
  %189 = load %S, %S* %188
  %190 = alloca %S
  store %S %189, %S* %190
  %191 = getelementptr %S, %S* %190, i32 0, i32 0
  %192 = load { i64, i8* }*, { i64, i8* }** %191
  %193 = call i64 @nyx_array_contains({ i64, i8* }* %192, i64 5)
  %194 = trunc i64 %193 to i1
  %195 = xor i1 %194, true
  %196 = getelementptr [17 x i8], [17 x i8]* @.str21, i32 0, i32 0
  %197 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str21.c, i8* %196)
  %198 = call i8* @nyx_string_to_cstr(%nyx_string* %197)
  br i1 %195, label %assert_pass_19, label %assert_fail_19
assert_fail_19:
  call void @nyx_assert_fail(i8* %198)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_19
assert_pass_19:
  %199 = getelementptr %Anidada, %Anidada* %167, i32 0, i32 0
  %200 = load %S, %S* %199
  %201 = alloca %S
  store %S %200, %S* %201
  %202 = getelementptr %S, %S* %201, i32 0, i32 0
  %203 = load { i64, i8* }*, { i64, i8* }** %202
  %204 = getelementptr %Anidada, %Anidada* %167, i32 0, i32 0
  %205 = load %S, %S* %204
  %206 = alloca %S
  store %S %205, %S* %206
  %207 = getelementptr %S, %S* %206, i32 0, i32 0
  %208 = load { i64, i8* }*, { i64, i8* }** %207
  %209 = call i64 @nyx_array_contains({ i64, i8* }* %208, i64 8)
  %210 = trunc i64 %209 to i1
  br i1 %210, label %then20, label %else21
then20:
  %211 = getelementptr [3 x i8], [3 x i8]* @.str22, i32 0, i32 0
  %212 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str22.c, i8* %211)
  %213 = call i8* @nyx_string_to_cstr(%nyx_string* %212)
  call void @nyx_print_string(i8* %213)
  br label %merge22
else21:
  %214 = getelementptr [3 x i8], [3 x i8]* @.str23, i32 0, i32 0
  %215 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str23.c, i8* %214)
  %216 = call i8* @nyx_string_to_cstr(%nyx_string* %215)
  call void @nyx_print_string(i8* %216)
  br label %merge22
merge22:
  %217 = getelementptr [3 x i8], [3 x i8]* @.str24, i32 0, i32 0
  %218 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str24.c, i8* %217)
  %219 = call i8* @nyx_string_to_cstr(%nyx_string* %218)
  call void @nyx_print_string(i8* %219)
  ret i64 0
}


attributes #0 = { returns_twice }

