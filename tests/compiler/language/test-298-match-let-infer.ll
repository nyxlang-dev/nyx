source_filename = "/home/admin/nyx/lang/tests/compiler/language/test-298-match-let-infer.nx"
target triple = "x86_64-pc-linux-gnu"

@.str0 = private unnamed_addr constant [4 x i8] c"uno\00"
@.str0.c = internal global %nyx_string* null
@.str1 = private unnamed_addr constant [4 x i8] c"dos\00"
@.str1.c = internal global %nyx_string* null
@.str2 = private unnamed_addr constant [5 x i8] c"otro\00"
@.str2.c = internal global %nyx_string* null
@.str3 = private unnamed_addr constant [4 x i8] c"dos\00"
@.str3.c = internal global %nyx_string* null
@.str4 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str4.c = internal global %nyx_string* null
@.str5 = private unnamed_addr constant [4 x i8] c"uno\00"
@.str5.c = internal global %nyx_string* null
@.str6 = private unnamed_addr constant [4 x i8] c"dos\00"
@.str6.c = internal global %nyx_string* null
@.str7 = private unnamed_addr constant [5 x i8] c"otro\00"
@.str7.c = internal global %nyx_string* null
@.str8 = private unnamed_addr constant [4 x i8] c"dos\00"
@.str8.c = internal global %nyx_string* null
@.str9 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str9.c = internal global %nyx_string* null
@.str10 = private unnamed_addr constant [2 x i8] c"b\00"
@.str10.c = internal global %nyx_string* null
@.str11 = private unnamed_addr constant [2 x i8] c"a\00"
@.str12 = private unnamed_addr constant [2 x i8] c"x\00"
@.str12.c = internal global %nyx_string* null
@.str13 = private unnamed_addr constant [2 x i8] c"b\00"
@.str14 = private unnamed_addr constant [2 x i8] c"y\00"
@.str14.c = internal global %nyx_string* null
@.str15 = private unnamed_addr constant [2 x i8] c"z\00"
@.str15.c = internal global %nyx_string* null
@.str16 = private unnamed_addr constant [2 x i8] c"y\00"
@.str16.c = internal global %nyx_string* null
@.str17 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str17.c = internal global %nyx_string* null
@.str18 = private unnamed_addr constant [2 x i8] c"a\00"
@.str18.c = internal global %nyx_string* null
@.str19 = private unnamed_addr constant [2 x i8] c"b\00"
@.str19.c = internal global %nyx_string* null
@.str20 = private unnamed_addr constant [2 x i8] c"z\00"
@.str20.c = internal global %nyx_string* null
@.str21 = private unnamed_addr constant [2 x i8] c"z\00"
@.str21.c = internal global %nyx_string* null
@.str22 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str22.c = internal global %nyx_string* null
@.str23 = private unnamed_addr constant [2 x i8] c"a\00"
@.str23.c = internal global %nyx_string* null
@.str24 = private unnamed_addr constant [2 x i8] c"b\00"
@.str24.c = internal global %nyx_string* null
@.str25 = private unnamed_addr constant [2 x i8] c"z\00"
@.str25.c = internal global %nyx_string* null
@.str26 = private unnamed_addr constant [3 x i8] c"ab\00"
@.str26.c = internal global %nyx_string* null
@.str27 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str27.c = internal global %nyx_string* null
@.str28 = private unnamed_addr constant [3 x i8] c"r=\00"
@.str28.c = internal global %nyx_string* null
@.str29 = private unnamed_addr constant [6 x i8] c"r=dos\00"
@.str29.c = internal global %nyx_string* null
@.str30 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str30.c = internal global %nyx_string* null
@.str31 = private unnamed_addr constant [3 x i8] c"r=\00"
@.str31.c = internal global %nyx_string* null
@.str32 = private unnamed_addr constant [6 x i8] c"r=dos\00"
@.str32.c = internal global %nyx_string* null
@.str33 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str33.c = internal global %nyx_string* null
@.str34 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str34.c = internal global %nyx_string* null
@.str35 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str35.c = internal global %nyx_string* null
@.str36 = private unnamed_addr constant [4 x i8] c"uno\00"
@.str36.c = internal global %nyx_string* null
@.str37 = private unnamed_addr constant [4 x i8] c"dos\00"
@.str37.c = internal global %nyx_string* null
@.str38 = private unnamed_addr constant [5 x i8] c"otro\00"
@.str38.c = internal global %nyx_string* null
@.str39 = private unnamed_addr constant [4 x i8] c"dos\00"
@.str39.c = internal global %nyx_string* null
@.str40 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str40.c = internal global %nyx_string* null
@.str41 = private unnamed_addr constant [8 x i8] c"stmt-ok\00"
@.str41.c = internal global %nyx_string* null
@.str42 = private unnamed_addr constant [9 x i8] c"stmt-bad\00"
@.str42.c = internal global %nyx_string* null
@.str43 = private unnamed_addr constant [4 x i8] c"red\00"
@.str43.c = internal global %nyx_string* null
@.str44 = private unnamed_addr constant [5 x i8] c"blue\00"
@.str44.c = internal global %nyx_string* null
@.str45 = private unnamed_addr constant [5 x i8] c"blue\00"
@.str45.c = internal global %nyx_string* null
@.str46 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str46.c = internal global %nyx_string* null
@.str47 = private unnamed_addr constant [23 x i8] c"match let inference OK\00"
@.str47.c = internal global %nyx_string* null
@__nyx_test_failed = external global i64
@__nyx_test_mode = external global i64
; Nyx Compiler Bootstrap v3.0
; Generated from: /home/admin/nyx/lang/tests/compiler/language/test-298-match-let-infer.nx

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
  %1 = alloca i64
  store i64 2, i64* %1
  %2 = load i64, i64* %1
  %3 = alloca i64
  store i64 0, i64* %3
  br label %match_arm2
match_arm2:
  %4 = icmp eq i64 %2, 1
  br i1 %4, label %lit_body11, label %match_arm3
lit_body11:
  %5 = getelementptr [4 x i8], [4 x i8]* @.str0, i32 0, i32 0
  %6 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str0.c, i8* %5)
  %7 = ptrtoint %nyx_string* %6 to i64
  store i64 %7, i64* %3
  br label %match_end1
match_arm3:
  %8 = icmp eq i64 %2, 2
  br i1 %8, label %lit_body12, label %match_arm4
lit_body12:
  %9 = getelementptr [4 x i8], [4 x i8]* @.str1, i32 0, i32 0
  %10 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1.c, i8* %9)
  %11 = ptrtoint %nyx_string* %10 to i64
  store i64 %11, i64* %3
  br label %match_end1
match_arm4:
  %12 = getelementptr [5 x i8], [5 x i8]* @.str2, i32 0, i32 0
  %13 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str2.c, i8* %12)
  %14 = ptrtoint %nyx_string* %13 to i64
  store i64 %14, i64* %3
  br label %match_end1
match_end1:
  %15 = load i64, i64* %3
  %16 = inttoptr i64 %15 to %nyx_string*
  %17 = alloca %nyx_string*
  store %nyx_string* %16, %nyx_string** %17
  %18 = load %nyx_string*, %nyx_string** %17
  %19 = getelementptr [4 x i8], [4 x i8]* @.str3, i32 0, i32 0
  %20 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str3.c, i8* %19)
  %21 = call i1 @nyx_string_equals(%nyx_string* %18, %nyx_string* %20)
  %22 = getelementptr [17 x i8], [17 x i8]* @.str4, i32 0, i32 0
  %23 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str4.c, i8* %22)
  %24 = call i8* @nyx_string_to_cstr(%nyx_string* %23)
  br i1 %21, label %assert_pass_14, label %assert_fail_14
assert_fail_14:
  call void @nyx_assert_fail(i8* %24)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_14
assert_pass_14:
  %25 = load i64, i64* %1
  %26 = alloca i64
  store i64 0, i64* %26
  br label %match_arm17
match_arm17:
  %27 = icmp eq i64 %25, 1
  br i1 %27, label %lit_body26, label %match_arm18
lit_body26:
  %28 = getelementptr [4 x i8], [4 x i8]* @.str5, i32 0, i32 0
  %29 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str5.c, i8* %28)
  %30 = ptrtoint %nyx_string* %29 to i64
  store i64 %30, i64* %26
  br label %match_end16
match_arm18:
  %31 = icmp eq i64 %25, 2
  br i1 %31, label %lit_body27, label %match_arm19
lit_body27:
  %32 = getelementptr [4 x i8], [4 x i8]* @.str6, i32 0, i32 0
  %33 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str6.c, i8* %32)
  %34 = ptrtoint %nyx_string* %33 to i64
  store i64 %34, i64* %26
  br label %match_end16
match_arm19:
  %35 = getelementptr [5 x i8], [5 x i8]* @.str7, i32 0, i32 0
  %36 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str7.c, i8* %35)
  %37 = ptrtoint %nyx_string* %36 to i64
  store i64 %37, i64* %26
  br label %match_end16
match_end16:
  %38 = load i64, i64* %26
  %39 = inttoptr i64 %38 to %nyx_string*
  %40 = alloca %nyx_string*
  store %nyx_string* %39, %nyx_string** %40
  %41 = load %nyx_string*, %nyx_string** %40
  %42 = getelementptr [4 x i8], [4 x i8]* @.str8, i32 0, i32 0
  %43 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str8.c, i8* %42)
  %44 = call i1 @nyx_string_equals(%nyx_string* %41, %nyx_string* %43)
  %45 = getelementptr [17 x i8], [17 x i8]* @.str9, i32 0, i32 0
  %46 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str9.c, i8* %45)
  %47 = call i8* @nyx_string_to_cstr(%nyx_string* %46)
  br i1 %44, label %assert_pass_29, label %assert_fail_29
assert_fail_29:
  call void @nyx_assert_fail(i8* %47)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_29
assert_pass_29:
  %48 = getelementptr [2 x i8], [2 x i8]* @.str10, i32 0, i32 0
  %49 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str10.c, i8* %48)
  %50 = alloca %nyx_string*
  store %nyx_string* %49, %nyx_string** %50
  %51 = load %nyx_string*, %nyx_string** %50
  %52 = alloca i64
  store i64 0, i64* %52
  br label %match_arm32
match_arm32:
  %53 = getelementptr [2 x i8], [2 x i8]* @.str11, i32 0, i32 0
  %54 = call %nyx_string* @nyx_string_from_cstr(i8* %53)
  %55 = call i1 @nyx_string_equals(%nyx_string* %51, %nyx_string* %54)
  br i1 %55, label %lit_body41, label %match_arm33
lit_body41:
  %56 = getelementptr [2 x i8], [2 x i8]* @.str12, i32 0, i32 0
  %57 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str12.c, i8* %56)
  %58 = ptrtoint %nyx_string* %57 to i64
  store i64 %58, i64* %52
  br label %match_end31
match_arm33:
  %59 = getelementptr [2 x i8], [2 x i8]* @.str13, i32 0, i32 0
  %60 = call %nyx_string* @nyx_string_from_cstr(i8* %59)
  %61 = call i1 @nyx_string_equals(%nyx_string* %51, %nyx_string* %60)
  br i1 %61, label %lit_body42, label %match_arm34
lit_body42:
  %62 = getelementptr [2 x i8], [2 x i8]* @.str14, i32 0, i32 0
  %63 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str14.c, i8* %62)
  %64 = ptrtoint %nyx_string* %63 to i64
  store i64 %64, i64* %52
  br label %match_end31
match_arm34:
  %65 = getelementptr [2 x i8], [2 x i8]* @.str15, i32 0, i32 0
  %66 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str15.c, i8* %65)
  %67 = ptrtoint %nyx_string* %66 to i64
  store i64 %67, i64* %52
  br label %match_end31
match_end31:
  %68 = load i64, i64* %52
  %69 = inttoptr i64 %68 to %nyx_string*
  %70 = alloca %nyx_string*
  store %nyx_string* %69, %nyx_string** %70
  %71 = load %nyx_string*, %nyx_string** %70
  %72 = getelementptr [2 x i8], [2 x i8]* @.str16, i32 0, i32 0
  %73 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str16.c, i8* %72)
  %74 = call i1 @nyx_string_equals(%nyx_string* %71, %nyx_string* %73)
  %75 = getelementptr [17 x i8], [17 x i8]* @.str17, i32 0, i32 0
  %76 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str17.c, i8* %75)
  %77 = call i8* @nyx_string_to_cstr(%nyx_string* %76)
  br i1 %74, label %assert_pass_44, label %assert_fail_44
assert_fail_44:
  call void @nyx_assert_fail(i8* %77)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_44
assert_pass_44:
  %78 = load i64, i64* %1
  %79 = alloca i64
  store i64 0, i64* %79
  br label %match_arm47
match_arm47:
  %80 = icmp eq i64 %78, 1
  br i1 %80, label %lit_body53, label %match_arm48
lit_body53:
  %81 = getelementptr [2 x i8], [2 x i8]* @.str18, i32 0, i32 0
  %82 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str18.c, i8* %81)
  %83 = getelementptr [2 x i8], [2 x i8]* @.str19, i32 0, i32 0
  %84 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str19.c, i8* %83)
  %85 = call %nyx_string* @nyx_string_concat(%nyx_string* %82, %nyx_string* %84)
  %86 = alloca %nyx_string*
  store %nyx_string* %85, %nyx_string** %86
  %87 = load %nyx_string*, %nyx_string** %86
  %88 = ptrtoint %nyx_string* %87 to i64
  store i64 %88, i64* %79
  br label %match_end46
match_arm48:
  %89 = getelementptr [2 x i8], [2 x i8]* @.str20, i32 0, i32 0
  %90 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str20.c, i8* %89)
  %91 = ptrtoint %nyx_string* %90 to i64
  store i64 %91, i64* %79
  br label %match_end46
match_end46:
  %92 = load i64, i64* %79
  %93 = inttoptr i64 %92 to %nyx_string*
  %94 = alloca %nyx_string*
  store %nyx_string* %93, %nyx_string** %94
  %95 = load %nyx_string*, %nyx_string** %94
  %96 = getelementptr [2 x i8], [2 x i8]* @.str21, i32 0, i32 0
  %97 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str21.c, i8* %96)
  %98 = call i1 @nyx_string_equals(%nyx_string* %95, %nyx_string* %97)
  %99 = getelementptr [17 x i8], [17 x i8]* @.str22, i32 0, i32 0
  %100 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str22.c, i8* %99)
  %101 = call i8* @nyx_string_to_cstr(%nyx_string* %100)
  br i1 %98, label %assert_pass_55, label %assert_fail_55
assert_fail_55:
  call void @nyx_assert_fail(i8* %101)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_55
assert_pass_55:
  %102 = load i64, i64* %1
  %103 = alloca i64
  store i64 0, i64* %103
  br label %match_arm58
match_arm58:
  %104 = icmp eq i64 %102, 2
  br i1 %104, label %lit_body64, label %match_arm59
lit_body64:
  %105 = getelementptr [2 x i8], [2 x i8]* @.str23, i32 0, i32 0
  %106 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str23.c, i8* %105)
  %107 = getelementptr [2 x i8], [2 x i8]* @.str24, i32 0, i32 0
  %108 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str24.c, i8* %107)
  %109 = call %nyx_string* @nyx_string_concat(%nyx_string* %106, %nyx_string* %108)
  %110 = alloca %nyx_string*
  store %nyx_string* %109, %nyx_string** %110
  %111 = load %nyx_string*, %nyx_string** %110
  %112 = ptrtoint %nyx_string* %111 to i64
  store i64 %112, i64* %103
  br label %match_end57
match_arm59:
  %113 = getelementptr [2 x i8], [2 x i8]* @.str25, i32 0, i32 0
  %114 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str25.c, i8* %113)
  %115 = ptrtoint %nyx_string* %114 to i64
  store i64 %115, i64* %103
  br label %match_end57
match_end57:
  %116 = load i64, i64* %103
  %117 = inttoptr i64 %116 to %nyx_string*
  %118 = alloca %nyx_string*
  store %nyx_string* %117, %nyx_string** %118
  %119 = load %nyx_string*, %nyx_string** %118
  %120 = getelementptr [3 x i8], [3 x i8]* @.str26, i32 0, i32 0
  %121 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str26.c, i8* %120)
  %122 = call i1 @nyx_string_equals(%nyx_string* %119, %nyx_string* %121)
  %123 = getelementptr [17 x i8], [17 x i8]* @.str27, i32 0, i32 0
  %124 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str27.c, i8* %123)
  %125 = call i8* @nyx_string_to_cstr(%nyx_string* %124)
  br i1 %122, label %assert_pass_66, label %assert_fail_66
assert_fail_66:
  call void @nyx_assert_fail(i8* %125)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_66
assert_pass_66:
  %126 = getelementptr [3 x i8], [3 x i8]* @.str28, i32 0, i32 0
  %127 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str28.c, i8* %126)
  %128 = load %nyx_string*, %nyx_string** %17
  %129 = call %nyx_string* @nyx_string_concat(%nyx_string* %127, %nyx_string* %128)
  %130 = getelementptr [6 x i8], [6 x i8]* @.str29, i32 0, i32 0
  %131 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str29.c, i8* %130)
  %132 = call i1 @nyx_string_equals(%nyx_string* %129, %nyx_string* %131)
  %133 = getelementptr [17 x i8], [17 x i8]* @.str30, i32 0, i32 0
  %134 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str30.c, i8* %133)
  %135 = call i8* @nyx_string_to_cstr(%nyx_string* %134)
  br i1 %132, label %assert_pass_67, label %assert_fail_67
assert_fail_67:
  call void @nyx_assert_fail(i8* %135)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_67
assert_pass_67:
  %136 = getelementptr [3 x i8], [3 x i8]* @.str31, i32 0, i32 0
  %137 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str31.c, i8* %136)
  %138 = load %nyx_string*, %nyx_string** %17
  %139 = call %nyx_string* @nyx_string_concat(%nyx_string* %137, %nyx_string* %138)
  %140 = alloca %nyx_string*
  store %nyx_string* %139, %nyx_string** %140
  %141 = load %nyx_string*, %nyx_string** %140
  %142 = getelementptr [6 x i8], [6 x i8]* @.str32, i32 0, i32 0
  %143 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str32.c, i8* %142)
  %144 = call i1 @nyx_string_equals(%nyx_string* %141, %nyx_string* %143)
  %145 = getelementptr [17 x i8], [17 x i8]* @.str33, i32 0, i32 0
  %146 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str33.c, i8* %145)
  %147 = call i8* @nyx_string_to_cstr(%nyx_string* %146)
  br i1 %144, label %assert_pass_68, label %assert_fail_68
assert_fail_68:
  call void @nyx_assert_fail(i8* %147)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_68
assert_pass_68:
  %148 = load i64, i64* %1
  %149 = alloca i64
  store i64 0, i64* %149
  br label %match_arm71
match_arm71:
  %150 = icmp eq i64 %148, 1
  br i1 %150, label %lit_body80, label %match_arm72
lit_body80:
  store i64 10, i64* %149
  br label %match_end70
match_arm72:
  %151 = icmp eq i64 %148, 2
  br i1 %151, label %lit_body81, label %match_arm73
lit_body81:
  store i64 20, i64* %149
  br label %match_end70
match_arm73:
  store i64 0, i64* %149
  br label %match_end70
match_end70:
  %152 = load i64, i64* %149
  %153 = alloca i64
  store i64 %152, i64* %153
  %154 = load i64, i64* %153
  %155 = icmp eq i64 %154, 20
  %156 = getelementptr [17 x i8], [17 x i8]* @.str34, i32 0, i32 0
  %157 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str34.c, i8* %156)
  %158 = call i8* @nyx_string_to_cstr(%nyx_string* %157)
  br i1 %155, label %assert_pass_83, label %assert_fail_83
assert_fail_83:
  call void @nyx_assert_fail(i8* %158)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_83
assert_pass_83:
  %159 = load i64, i64* %153
  %160 = add i64 %159, 1
  %161 = icmp eq i64 %160, 21
  %162 = getelementptr [17 x i8], [17 x i8]* @.str35, i32 0, i32 0
  %163 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str35.c, i8* %162)
  %164 = call i8* @nyx_string_to_cstr(%nyx_string* %163)
  br i1 %161, label %assert_pass_84, label %assert_fail_84
assert_fail_84:
  call void @nyx_assert_fail(i8* %164)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_84
assert_pass_84:
  %165 = load i64, i64* %1
  %166 = alloca i64
  store i64 0, i64* %166
  br label %match_arm87
match_arm87:
  %167 = icmp eq i64 %165, 1
  br i1 %167, label %lit_body96, label %match_arm88
lit_body96:
  %168 = getelementptr [4 x i8], [4 x i8]* @.str36, i32 0, i32 0
  %169 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str36.c, i8* %168)
  %170 = ptrtoint %nyx_string* %169 to i64
  store i64 %170, i64* %166
  br label %match_end86
match_arm88:
  %171 = icmp eq i64 %165, 2
  br i1 %171, label %lit_body97, label %match_arm89
lit_body97:
  %172 = getelementptr [4 x i8], [4 x i8]* @.str37, i32 0, i32 0
  %173 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str37.c, i8* %172)
  %174 = ptrtoint %nyx_string* %173 to i64
  store i64 %174, i64* %166
  br label %match_end86
match_arm89:
  %175 = getelementptr [5 x i8], [5 x i8]* @.str38, i32 0, i32 0
  %176 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str38.c, i8* %175)
  %177 = ptrtoint %nyx_string* %176 to i64
  store i64 %177, i64* %166
  br label %match_end86
match_end86:
  %178 = load i64, i64* %166
  %179 = inttoptr i64 %178 to %nyx_string*
  %180 = alloca %nyx_string*
  store %nyx_string* %179, %nyx_string** %180
  %181 = load %nyx_string*, %nyx_string** %180
  %182 = getelementptr [4 x i8], [4 x i8]* @.str39, i32 0, i32 0
  %183 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str39.c, i8* %182)
  %184 = call i1 @nyx_string_equals(%nyx_string* %181, %nyx_string* %183)
  %185 = getelementptr [17 x i8], [17 x i8]* @.str40, i32 0, i32 0
  %186 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str40.c, i8* %185)
  %187 = call i8* @nyx_string_to_cstr(%nyx_string* %186)
  br i1 %184, label %assert_pass_99, label %assert_fail_99
assert_fail_99:
  call void @nyx_assert_fail(i8* %187)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_99
assert_pass_99:
  %188 = load i64, i64* %1
  %189 = alloca i64
  store i64 0, i64* %189
  br label %match_arm102
match_arm102:
  %190 = icmp eq i64 %188, 2
  br i1 %190, label %lit_body108, label %match_arm103
lit_body108:
  %191 = getelementptr [8 x i8], [8 x i8]* @.str41, i32 0, i32 0
  %192 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str41.c, i8* %191)
  %193 = call i8* @nyx_string_to_cstr(%nyx_string* %192)
  call void @nyx_print_string(i8* %193)
  br label %match_end101
match_arm103:
  %194 = getelementptr [9 x i8], [9 x i8]* @.str42, i32 0, i32 0
  %195 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str42.c, i8* %194)
  %196 = call i8* @nyx_string_to_cstr(%nyx_string* %195)
  call void @nyx_print_string(i8* %196)
  br label %match_end101
match_end101:
  %197 = load i64, i64* %189
  %198 = call i8* @GC_malloc(i64 16)
  %199 = bitcast i8* %198 to { i64, i8* }*
  %200 = getelementptr { i64, i8* }, { i64, i8* }* %199, i32 0, i32 0
  store i64 1, i64* %200
  %201 = getelementptr { i64, i8* }, { i64, i8* }* %199, i32 0, i32 1
  store i8* null, i8** %201
  %202 = alloca i8*
  store i8* %198, i8** %202
  %203 = load i8*, i8** %202
  %204 = bitcast i8* %203 to { i64, i8* }*
  %205 = getelementptr { i64, i8* }, { i64, i8* }* %204, i32 0, i32 0
  %206 = load i64, i64* %205
  %207 = alloca i64
  store i64 0, i64* %207
  switch i64 %206, label %match_default110 [ i64 0, label %match_arm112 i64 1, label %match_arm113 ]
match_arm112:
  %208 = getelementptr [4 x i8], [4 x i8]* @.str43, i32 0, i32 0
  %209 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str43.c, i8* %208)
  %210 = ptrtoint %nyx_string* %209 to i64
  store i64 %210, i64* %207
  br label %match_end111
match_arm113:
  %211 = getelementptr [5 x i8], [5 x i8]* @.str44, i32 0, i32 0
  %212 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str44.c, i8* %211)
  %213 = ptrtoint %nyx_string* %212 to i64
  store i64 %213, i64* %207
  br label %match_end111
match_default110:
  br label %match_end111
match_end111:
  %214 = load i64, i64* %207
  %215 = inttoptr i64 %214 to %nyx_string*
  %216 = alloca %nyx_string*
  store %nyx_string* %215, %nyx_string** %216
  %217 = load %nyx_string*, %nyx_string** %216
  %218 = getelementptr [5 x i8], [5 x i8]* @.str45, i32 0, i32 0
  %219 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str45.c, i8* %218)
  %220 = call i1 @nyx_string_equals(%nyx_string* %217, %nyx_string* %219)
  %221 = getelementptr [17 x i8], [17 x i8]* @.str46, i32 0, i32 0
  %222 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str46.c, i8* %221)
  %223 = call i8* @nyx_string_to_cstr(%nyx_string* %222)
  br i1 %220, label %assert_pass_118, label %assert_fail_118
assert_fail_118:
  call void @nyx_assert_fail(i8* %223)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_118
assert_pass_118:
  %224 = getelementptr [23 x i8], [23 x i8]* @.str47, i32 0, i32 0
  %225 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str47.c, i8* %224)
  %226 = call i8* @nyx_string_to_cstr(%nyx_string* %225)
  call void @nyx_print_string(i8* %226)
  ret i64 0
}


attributes #0 = { returns_twice }

