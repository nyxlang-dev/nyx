source_filename = "/home/admin/nyx/lang/tests/compiler/language/test-299-string-method-arity-ok.nx"
target triple = "x86_64-pc-linux-gnu"

@.str0 = private unnamed_addr constant [11 x i8] c"Hola Mundo\00"
@.str0.c = internal global %nyx_string* null
@.str1 = private unnamed_addr constant [11 x i8] c"Hola Mundo\00"
@.str1.c = internal global %nyx_string* null
@.str2 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str2.c = internal global %nyx_string* null
@.str3 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str3.c = internal global %nyx_string* null
@.str4 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str4.c = internal global %nyx_string* null
@.str5 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str5.c = internal global %nyx_string* null
@.str6 = private unnamed_addr constant [11 x i8] c"HOLA MUNDO\00"
@.str6.c = internal global %nyx_string* null
@.str7 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str7.c = internal global %nyx_string* null
@.str8 = private unnamed_addr constant [11 x i8] c"hola mundo\00"
@.str8.c = internal global %nyx_string* null
@.str9 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str9.c = internal global %nyx_string* null
@.str10 = private unnamed_addr constant [11 x i8] c"HOLA MUNDO\00"
@.str10.c = internal global %nyx_string* null
@.str11 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str11.c = internal global %nyx_string* null
@.str12 = private unnamed_addr constant [11 x i8] c"hola mundo\00"
@.str12.c = internal global %nyx_string* null
@.str13 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str13.c = internal global %nyx_string* null
@.str14 = private unnamed_addr constant [6 x i8] c"Mundo\00"
@.str14.c = internal global %nyx_string* null
@.str15 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str15.c = internal global %nyx_string* null
@.str16 = private unnamed_addr constant [5 x i8] c"Hola\00"
@.str16.c = internal global %nyx_string* null
@.str17 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str17.c = internal global %nyx_string* null
@.str18 = private unnamed_addr constant [5 x i8] c"Hola\00"
@.str18.c = internal global %nyx_string* null
@.str19 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str19.c = internal global %nyx_string* null
@.str20 = private unnamed_addr constant [6 x i8] c"Mundo\00"
@.str20.c = internal global %nyx_string* null
@.str21 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str21.c = internal global %nyx_string* null
@.str22 = private unnamed_addr constant [6 x i8] c"Mundo\00"
@.str22.c = internal global %nyx_string* null
@.str23 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str23.c = internal global %nyx_string* null
@.str24 = private unnamed_addr constant [2 x i8] c" \00"
@.str24.c = internal global %nyx_string* null
@.str25 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str25.c = internal global %nyx_string* null
@.str26 = private unnamed_addr constant [2 x i8] c"-\00"
@.str26.c = internal global %nyx_string* null
@.str27 = private unnamed_addr constant [4 x i8] c"---\00"
@.str27.c = internal global %nyx_string* null
@.str28 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str28.c = internal global %nyx_string* null
@.str29 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str29.c = internal global %nyx_string* null
@.str30 = private unnamed_addr constant [6 x i8] c"Mundo\00"
@.str30.c = internal global %nyx_string* null
@.str31 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str31.c = internal global %nyx_string* null
@.str32 = private unnamed_addr constant [6 x i8] c"Mundo\00"
@.str32.c = internal global %nyx_string* null
@.str33 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str33.c = internal global %nyx_string* null
@.str34 = private unnamed_addr constant [5 x i8] c"Hola\00"
@.str34.c = internal global %nyx_string* null
@.str35 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str35.c = internal global %nyx_string* null
@.str36 = private unnamed_addr constant [5 x i8] c"Hola\00"
@.str36.c = internal global %nyx_string* null
@.str37 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str37.c = internal global %nyx_string* null
@.str38 = private unnamed_addr constant [6 x i8] c"Mundo\00"
@.str38.c = internal global %nyx_string* null
@.str39 = private unnamed_addr constant [4 x i8] c"Nyx\00"
@.str39.c = internal global %nyx_string* null
@.str40 = private unnamed_addr constant [9 x i8] c"Hola Nyx\00"
@.str40.c = internal global %nyx_string* null
@.str41 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str41.c = internal global %nyx_string* null
@.str42 = private unnamed_addr constant [23 x i8] c"string method arity ok\00"
@.str42.c = internal global %nyx_string* null
@__nyx_test_failed = external global i64
@__nyx_test_mode = external global i64
; Nyx Compiler Bootstrap v3.0
; Generated from: /home/admin/nyx/lang/tests/compiler/language/test-299-string-method-arity-ok.nx

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
  %1 = getelementptr [11 x i8], [11 x i8]* @.str0, i32 0, i32 0
  %2 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str0.c, i8* %1)
  %3 = alloca %nyx_string*
  store %nyx_string* %2, %nyx_string** %3
  %4 = load %nyx_string*, %nyx_string** %3
  %5 = call %nyx_string* @nyx_string_trim(%nyx_string* %4)
  %6 = getelementptr [11 x i8], [11 x i8]* @.str1, i32 0, i32 0
  %7 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1.c, i8* %6)
  %8 = call i1 @nyx_string_equals(%nyx_string* %5, %nyx_string* %7)
  %9 = getelementptr [17 x i8], [17 x i8]* @.str2, i32 0, i32 0
  %10 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str2.c, i8* %9)
  %11 = call i8* @nyx_string_to_cstr(%nyx_string* %10)
  br i1 %8, label %assert_pass_0, label %assert_fail_0
assert_fail_0:
  call void @nyx_assert_fail(i8* %11)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_0
assert_pass_0:
  %12 = load %nyx_string*, %nyx_string** %3
  %13 = call i64 @nyx_string_byte_length(%nyx_string* %12)
  %14 = icmp eq i64 %13, 10
  %15 = getelementptr [17 x i8], [17 x i8]* @.str3, i32 0, i32 0
  %16 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str3.c, i8* %15)
  %17 = call i8* @nyx_string_to_cstr(%nyx_string* %16)
  br i1 %14, label %assert_pass_1, label %assert_fail_1
assert_fail_1:
  call void @nyx_assert_fail(i8* %17)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_1
assert_pass_1:
  %18 = load %nyx_string*, %nyx_string** %3
  %19 = call i64 @nyx_string_byte_length(%nyx_string* %18)
  %20 = icmp eq i64 %19, 10
  %21 = getelementptr [17 x i8], [17 x i8]* @.str4, i32 0, i32 0
  %22 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str4.c, i8* %21)
  %23 = call i8* @nyx_string_to_cstr(%nyx_string* %22)
  br i1 %20, label %assert_pass_2, label %assert_fail_2
assert_fail_2:
  call void @nyx_assert_fail(i8* %23)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_2
assert_pass_2:
  %24 = load %nyx_string*, %nyx_string** %3
  %25 = call i64 @nyx_string_length_utf8(%nyx_string* %24)
  %26 = icmp eq i64 %25, 10
  %27 = getelementptr [17 x i8], [17 x i8]* @.str5, i32 0, i32 0
  %28 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str5.c, i8* %27)
  %29 = call i8* @nyx_string_to_cstr(%nyx_string* %28)
  br i1 %26, label %assert_pass_3, label %assert_fail_3
assert_fail_3:
  call void @nyx_assert_fail(i8* %29)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_3
assert_pass_3:
  %30 = load %nyx_string*, %nyx_string** %3
  %31 = call %nyx_string* @nyx_string_to_upper(%nyx_string* %30)
  %32 = getelementptr [11 x i8], [11 x i8]* @.str6, i32 0, i32 0
  %33 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str6.c, i8* %32)
  %34 = call i1 @nyx_string_equals(%nyx_string* %31, %nyx_string* %33)
  %35 = getelementptr [17 x i8], [17 x i8]* @.str7, i32 0, i32 0
  %36 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str7.c, i8* %35)
  %37 = call i8* @nyx_string_to_cstr(%nyx_string* %36)
  br i1 %34, label %assert_pass_4, label %assert_fail_4
assert_fail_4:
  call void @nyx_assert_fail(i8* %37)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_4
assert_pass_4:
  %38 = load %nyx_string*, %nyx_string** %3
  %39 = call %nyx_string* @nyx_string_to_lower(%nyx_string* %38)
  %40 = getelementptr [11 x i8], [11 x i8]* @.str8, i32 0, i32 0
  %41 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str8.c, i8* %40)
  %42 = call i1 @nyx_string_equals(%nyx_string* %39, %nyx_string* %41)
  %43 = getelementptr [17 x i8], [17 x i8]* @.str9, i32 0, i32 0
  %44 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str9.c, i8* %43)
  %45 = call i8* @nyx_string_to_cstr(%nyx_string* %44)
  br i1 %42, label %assert_pass_5, label %assert_fail_5
assert_fail_5:
  call void @nyx_assert_fail(i8* %45)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_5
assert_pass_5:
  %46 = load %nyx_string*, %nyx_string** %3
  %47 = call %nyx_string* @nyx_string_to_upper(%nyx_string* %46)
  %48 = getelementptr [11 x i8], [11 x i8]* @.str10, i32 0, i32 0
  %49 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str10.c, i8* %48)
  %50 = call i1 @nyx_string_equals(%nyx_string* %47, %nyx_string* %49)
  %51 = getelementptr [17 x i8], [17 x i8]* @.str11, i32 0, i32 0
  %52 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str11.c, i8* %51)
  %53 = call i8* @nyx_string_to_cstr(%nyx_string* %52)
  br i1 %50, label %assert_pass_6, label %assert_fail_6
assert_fail_6:
  call void @nyx_assert_fail(i8* %53)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_6
assert_pass_6:
  %54 = load %nyx_string*, %nyx_string** %3
  %55 = call %nyx_string* @nyx_string_to_lower(%nyx_string* %54)
  %56 = getelementptr [11 x i8], [11 x i8]* @.str12, i32 0, i32 0
  %57 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str12.c, i8* %56)
  %58 = call i1 @nyx_string_equals(%nyx_string* %55, %nyx_string* %57)
  %59 = getelementptr [17 x i8], [17 x i8]* @.str13, i32 0, i32 0
  %60 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str13.c, i8* %59)
  %61 = call i8* @nyx_string_to_cstr(%nyx_string* %60)
  br i1 %58, label %assert_pass_7, label %assert_fail_7
assert_fail_7:
  call void @nyx_assert_fail(i8* %61)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_7
assert_pass_7:
  %62 = load %nyx_string*, %nyx_string** %3
  %63 = getelementptr [6 x i8], [6 x i8]* @.str14, i32 0, i32 0
  %64 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str14.c, i8* %63)
  %65 = call i1 @nyx_string_contains(%nyx_string* %62, %nyx_string* %64)
  %66 = getelementptr [17 x i8], [17 x i8]* @.str15, i32 0, i32 0
  %67 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str15.c, i8* %66)
  %68 = call i8* @nyx_string_to_cstr(%nyx_string* %67)
  br i1 %65, label %assert_pass_8, label %assert_fail_8
assert_fail_8:
  call void @nyx_assert_fail(i8* %68)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_8
assert_pass_8:
  %69 = load %nyx_string*, %nyx_string** %3
  %70 = getelementptr [5 x i8], [5 x i8]* @.str16, i32 0, i32 0
  %71 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str16.c, i8* %70)
  %72 = call i1 @nyx_string_starts_with(%nyx_string* %69, %nyx_string* %71)
  %73 = getelementptr [17 x i8], [17 x i8]* @.str17, i32 0, i32 0
  %74 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str17.c, i8* %73)
  %75 = call i8* @nyx_string_to_cstr(%nyx_string* %74)
  br i1 %72, label %assert_pass_9, label %assert_fail_9
assert_fail_9:
  call void @nyx_assert_fail(i8* %75)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_9
assert_pass_9:
  %76 = load %nyx_string*, %nyx_string** %3
  %77 = getelementptr [5 x i8], [5 x i8]* @.str18, i32 0, i32 0
  %78 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str18.c, i8* %77)
  %79 = call i1 @nyx_string_starts_with(%nyx_string* %76, %nyx_string* %78)
  %80 = getelementptr [17 x i8], [17 x i8]* @.str19, i32 0, i32 0
  %81 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str19.c, i8* %80)
  %82 = call i8* @nyx_string_to_cstr(%nyx_string* %81)
  br i1 %79, label %assert_pass_10, label %assert_fail_10
assert_fail_10:
  call void @nyx_assert_fail(i8* %82)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_10
assert_pass_10:
  %83 = load %nyx_string*, %nyx_string** %3
  %84 = getelementptr [6 x i8], [6 x i8]* @.str20, i32 0, i32 0
  %85 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str20.c, i8* %84)
  %86 = call i1 @nyx_string_ends_with(%nyx_string* %83, %nyx_string* %85)
  %87 = getelementptr [17 x i8], [17 x i8]* @.str21, i32 0, i32 0
  %88 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str21.c, i8* %87)
  %89 = call i8* @nyx_string_to_cstr(%nyx_string* %88)
  br i1 %86, label %assert_pass_11, label %assert_fail_11
assert_fail_11:
  call void @nyx_assert_fail(i8* %89)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_11
assert_pass_11:
  %90 = load %nyx_string*, %nyx_string** %3
  %91 = getelementptr [6 x i8], [6 x i8]* @.str22, i32 0, i32 0
  %92 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str22.c, i8* %91)
  %93 = call i1 @nyx_string_ends_with(%nyx_string* %90, %nyx_string* %92)
  %94 = getelementptr [17 x i8], [17 x i8]* @.str23, i32 0, i32 0
  %95 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str23.c, i8* %94)
  %96 = call i8* @nyx_string_to_cstr(%nyx_string* %95)
  br i1 %93, label %assert_pass_12, label %assert_fail_12
assert_fail_12:
  call void @nyx_assert_fail(i8* %96)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_12
assert_pass_12:
  %97 = load %nyx_string*, %nyx_string** %3
  %98 = getelementptr [2 x i8], [2 x i8]* @.str24, i32 0, i32 0
  %99 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str24.c, i8* %98)
  %100 = call { i64, i8* }* @nyx_string_split(%nyx_string* %97, %nyx_string* %99)
  %101 = alloca { i64, i8* }*
  store { i64, i8* }* %100, { i64, i8* }** %101
  %102 = load { i64, i8* }*, { i64, i8* }** %101
  %103 = call i64 @nyx_array_length({ i64, i8* }* %102)
  %104 = icmp eq i64 %103, 2
  %105 = getelementptr [17 x i8], [17 x i8]* @.str25, i32 0, i32 0
  %106 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str25.c, i8* %105)
  %107 = call i8* @nyx_string_to_cstr(%nyx_string* %106)
  br i1 %104, label %assert_pass_13, label %assert_fail_13
assert_fail_13:
  call void @nyx_assert_fail(i8* %107)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_13
assert_pass_13:
  %108 = getelementptr [2 x i8], [2 x i8]* @.str26, i32 0, i32 0
  %109 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str26.c, i8* %108)
  %110 = call %nyx_string* @nyx_string_repeat(%nyx_string* %109, i64 3)
  %111 = getelementptr [4 x i8], [4 x i8]* @.str27, i32 0, i32 0
  %112 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str27.c, i8* %111)
  %113 = call i1 @nyx_string_equals(%nyx_string* %110, %nyx_string* %112)
  %114 = getelementptr [17 x i8], [17 x i8]* @.str28, i32 0, i32 0
  %115 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str28.c, i8* %114)
  %116 = call i8* @nyx_string_to_cstr(%nyx_string* %115)
  br i1 %113, label %assert_pass_14, label %assert_fail_14
assert_fail_14:
  call void @nyx_assert_fail(i8* %116)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_14
assert_pass_14:
  %117 = load %nyx_string*, %nyx_string** %3
  %118 = call i8 @nyx_string_char_at(%nyx_string* %117, i64 0)
  %119 = zext i8 %118 to i64
  %120 = icmp eq i64 %119, 72
  %121 = getelementptr [17 x i8], [17 x i8]* @.str29, i32 0, i32 0
  %122 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str29.c, i8* %121)
  %123 = call i8* @nyx_string_to_cstr(%nyx_string* %122)
  br i1 %120, label %assert_pass_15, label %assert_fail_15
assert_fail_15:
  call void @nyx_assert_fail(i8* %123)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_15
assert_pass_15:
  %124 = load %nyx_string*, %nyx_string** %3
  %125 = getelementptr [6 x i8], [6 x i8]* @.str30, i32 0, i32 0
  %126 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str30.c, i8* %125)
  %127 = call i64 @nyx_string_index_of(%nyx_string* %124, %nyx_string* %126)
  %128 = icmp eq i64 %127, 5
  %129 = getelementptr [17 x i8], [17 x i8]* @.str31, i32 0, i32 0
  %130 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str31.c, i8* %129)
  %131 = call i8* @nyx_string_to_cstr(%nyx_string* %130)
  br i1 %128, label %assert_pass_16, label %assert_fail_16
assert_fail_16:
  call void @nyx_assert_fail(i8* %131)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_16
assert_pass_16:
  %132 = load %nyx_string*, %nyx_string** %3
  %133 = getelementptr [6 x i8], [6 x i8]* @.str32, i32 0, i32 0
  %134 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str32.c, i8* %133)
  %135 = call i64 @nyx_string_index_of_from(%nyx_string* %132, %nyx_string* %134, i64 0)
  %136 = icmp eq i64 %135, 5
  %137 = getelementptr [17 x i8], [17 x i8]* @.str33, i32 0, i32 0
  %138 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str33.c, i8* %137)
  %139 = call i8* @nyx_string_to_cstr(%nyx_string* %138)
  br i1 %136, label %assert_pass_17, label %assert_fail_17
assert_fail_17:
  call void @nyx_assert_fail(i8* %139)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_17
assert_pass_17:
  %140 = load %nyx_string*, %nyx_string** %3
  %141 = call %nyx_string* @nyx_string_substring(%nyx_string* %140, i64 0, i64 4)
  %142 = getelementptr [5 x i8], [5 x i8]* @.str34, i32 0, i32 0
  %143 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str34.c, i8* %142)
  %144 = call i1 @nyx_string_equals(%nyx_string* %141, %nyx_string* %143)
  %145 = getelementptr [17 x i8], [17 x i8]* @.str35, i32 0, i32 0
  %146 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str35.c, i8* %145)
  %147 = call i8* @nyx_string_to_cstr(%nyx_string* %146)
  br i1 %144, label %assert_pass_18, label %assert_fail_18
assert_fail_18:
  call void @nyx_assert_fail(i8* %147)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_18
assert_pass_18:
  %148 = load %nyx_string*, %nyx_string** %3
  %149 = call %nyx_string* @nyx_string_char_substring(%nyx_string* %148, i64 0, i64 4)
  %150 = getelementptr [5 x i8], [5 x i8]* @.str36, i32 0, i32 0
  %151 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str36.c, i8* %150)
  %152 = call i1 @nyx_string_equals(%nyx_string* %149, %nyx_string* %151)
  %153 = getelementptr [17 x i8], [17 x i8]* @.str37, i32 0, i32 0
  %154 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str37.c, i8* %153)
  %155 = call i8* @nyx_string_to_cstr(%nyx_string* %154)
  br i1 %152, label %assert_pass_19, label %assert_fail_19
assert_fail_19:
  call void @nyx_assert_fail(i8* %155)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_19
assert_pass_19:
  %156 = load %nyx_string*, %nyx_string** %3
  %157 = getelementptr [6 x i8], [6 x i8]* @.str38, i32 0, i32 0
  %158 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str38.c, i8* %157)
  %159 = getelementptr [4 x i8], [4 x i8]* @.str39, i32 0, i32 0
  %160 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str39.c, i8* %159)
  %161 = call %nyx_string* @nyx_string_replace(%nyx_string* %156, %nyx_string* %158, %nyx_string* %160)
  %162 = getelementptr [9 x i8], [9 x i8]* @.str40, i32 0, i32 0
  %163 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str40.c, i8* %162)
  %164 = call i1 @nyx_string_equals(%nyx_string* %161, %nyx_string* %163)
  %165 = getelementptr [17 x i8], [17 x i8]* @.str41, i32 0, i32 0
  %166 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str41.c, i8* %165)
  %167 = call i8* @nyx_string_to_cstr(%nyx_string* %166)
  br i1 %164, label %assert_pass_20, label %assert_fail_20
assert_fail_20:
  call void @nyx_assert_fail(i8* %167)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_20
assert_pass_20:
  %168 = getelementptr [23 x i8], [23 x i8]* @.str42, i32 0, i32 0
  %169 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str42.c, i8* %168)
  %170 = call i8* @nyx_string_to_cstr(%nyx_string* %169)
  call void @nyx_print_string(i8* %170)
  ret i64 0
}


attributes #0 = { returns_twice }

