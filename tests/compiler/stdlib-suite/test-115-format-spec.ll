source_filename = "/home/admin/nyx/lang/tests/compiler/stdlib-suite/test-115-format-spec.nx"
target triple = "x86_64-pc-linux-gnu"

@.str0 = private unnamed_addr constant [5 x i8] c"{:x}\00"
@.str0.c = internal global %nyx_string* null
@.str1 = private unnamed_addr constant [3 x i8] c"ff\00"
@.str1.c = internal global %nyx_string* null
@.str2 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str2.c = internal global %nyx_string* null
@.str3 = private unnamed_addr constant [5 x i8] c"{:x}\00"
@.str3.c = internal global %nyx_string* null
@.str4 = private unnamed_addr constant [2 x i8] c"0\00"
@.str4.c = internal global %nyx_string* null
@.str5 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str5.c = internal global %nyx_string* null
@.str6 = private unnamed_addr constant [5 x i8] c"{:X}\00"
@.str6.c = internal global %nyx_string* null
@.str7 = private unnamed_addr constant [3 x i8] c"FF\00"
@.str7.c = internal global %nyx_string* null
@.str8 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str8.c = internal global %nyx_string* null
@.str9 = private unnamed_addr constant [5 x i8] c"{:o}\00"
@.str9.c = internal global %nyx_string* null
@.str10 = private unnamed_addr constant [4 x i8] c"377\00"
@.str10.c = internal global %nyx_string* null
@.str11 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str11.c = internal global %nyx_string* null
@.str12 = private unnamed_addr constant [5 x i8] c"{:o}\00"
@.str12.c = internal global %nyx_string* null
@.str13 = private unnamed_addr constant [3 x i8] c"10\00"
@.str13.c = internal global %nyx_string* null
@.str14 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str14.c = internal global %nyx_string* null
@.str15 = private unnamed_addr constant [5 x i8] c"{:b}\00"
@.str15.c = internal global %nyx_string* null
@.str16 = private unnamed_addr constant [5 x i8] c"1010\00"
@.str16.c = internal global %nyx_string* null
@.str17 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str17.c = internal global %nyx_string* null
@.str18 = private unnamed_addr constant [5 x i8] c"{:b}\00"
@.str18.c = internal global %nyx_string* null
@.str19 = private unnamed_addr constant [2 x i8] c"0\00"
@.str19.c = internal global %nyx_string* null
@.str20 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str20.c = internal global %nyx_string* null
@.str21 = private unnamed_addr constant [7 x i8] c"{:.2f}\00"
@.str21.c = internal global %nyx_string* null
@.fmtspec22 = private unnamed_addr constant [2 x i8] c"2\00"
@.str23 = private unnamed_addr constant [5 x i8] c"3.14\00"
@.str23.c = internal global %nyx_string* null
@.str24 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str24.c = internal global %nyx_string* null
@.str25 = private unnamed_addr constant [7 x i8] c"{:.4f}\00"
@.str25.c = internal global %nyx_string* null
@.fmtspec26 = private unnamed_addr constant [2 x i8] c"4\00"
@.str27 = private unnamed_addr constant [7 x i8] c"3.1416\00"
@.str27.c = internal global %nyx_string* null
@.str28 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str28.c = internal global %nyx_string* null
@.str29 = private unnamed_addr constant [7 x i8] c"{:.0f}\00"
@.str29.c = internal global %nyx_string* null
@.fmtspec30 = private unnamed_addr constant [2 x i8] c"0\00"
@.str31 = private unnamed_addr constant [2 x i8] c"3\00"
@.str31.c = internal global %nyx_string* null
@.str32 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str32.c = internal global %nyx_string* null
@.str33 = private unnamed_addr constant [6 x i8] c"{:5d}\00"
@.str33.c = internal global %nyx_string* null
@.fmtspec34 = private unnamed_addr constant [2 x i8] c"5\00"
@.str35 = private unnamed_addr constant [6 x i8] c"   42\00"
@.str35.c = internal global %nyx_string* null
@.str36 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str36.c = internal global %nyx_string* null
@.str37 = private unnamed_addr constant [7 x i8] c"{:05d}\00"
@.str37.c = internal global %nyx_string* null
@.fmtspec38 = private unnamed_addr constant [3 x i8] c"05\00"
@.str39 = private unnamed_addr constant [6 x i8] c"00042\00"
@.str39.c = internal global %nyx_string* null
@.str40 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str40.c = internal global %nyx_string* null
@.str41 = private unnamed_addr constant [27 x i8] c"hex={:x} oct={:o} bin={:b}\00"
@.str41.c = internal global %nyx_string* null
@.str42 = private unnamed_addr constant [22 x i8] c"hex=a oct=12 bin=1010\00"
@.str42.c = internal global %nyx_string* null
@.str43 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str43.c = internal global %nyx_string* null
@.str44 = private unnamed_addr constant [10 x i8] c"n={} f={}\00"
@.str44.c = internal global %nyx_string* null
@.str45 = private unnamed_addr constant [11 x i8] c"n=42 f=1.5\00"
@.str45.c = internal global %nyx_string* null
@.str46 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str46.c = internal global %nyx_string* null
@.str47 = private unnamed_addr constant [3 x i8] c"ok\00"
@.str47.c = internal global %nyx_string* null
@__nyx_test_failed = external global i64
@__nyx_test_mode = external global i64
; Nyx Compiler Bootstrap v3.0
; Generated from: /home/admin/nyx/lang/tests/compiler/stdlib-suite/test-115-format-spec.nx

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
  %1 = getelementptr [5 x i8], [5 x i8]* @.str0, i32 0, i32 0
  %2 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str0.c, i8* %1)
  %3 = call { i64, i8* }* @nyx_array_new_ptr()
  %4 = call %nyx_string* @nyx_int_to_hex(i64 255)
  %5 = bitcast %nyx_string* %4 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %3, i8* %5)
  %6 = call %nyx_string* @nyx_format(%nyx_string* %2, { i64, i8* }* %3)
  %7 = alloca %nyx_string*
  store %nyx_string* %6, %nyx_string** %7
  %8 = load %nyx_string*, %nyx_string** %7
  %9 = getelementptr [3 x i8], [3 x i8]* @.str1, i32 0, i32 0
  %10 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1.c, i8* %9)
  %11 = call i1 @nyx_string_equals(%nyx_string* %8, %nyx_string* %10)
  %12 = getelementptr [17 x i8], [17 x i8]* @.str2, i32 0, i32 0
  %13 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str2.c, i8* %12)
  %14 = call i8* @nyx_string_to_cstr(%nyx_string* %13)
  br i1 %11, label %assert_pass_0, label %assert_fail_0
assert_fail_0:
  call void @nyx_assert_fail(i8* %14)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_0
assert_pass_0:
  %15 = getelementptr [5 x i8], [5 x i8]* @.str3, i32 0, i32 0
  %16 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str3.c, i8* %15)
  %17 = call { i64, i8* }* @nyx_array_new_ptr()
  %18 = call %nyx_string* @nyx_int_to_hex(i64 0)
  %19 = bitcast %nyx_string* %18 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %17, i8* %19)
  %20 = call %nyx_string* @nyx_format(%nyx_string* %16, { i64, i8* }* %17)
  %21 = alloca %nyx_string*
  store %nyx_string* %20, %nyx_string** %21
  %22 = load %nyx_string*, %nyx_string** %21
  %23 = getelementptr [2 x i8], [2 x i8]* @.str4, i32 0, i32 0
  %24 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str4.c, i8* %23)
  %25 = call i1 @nyx_string_equals(%nyx_string* %22, %nyx_string* %24)
  %26 = getelementptr [17 x i8], [17 x i8]* @.str5, i32 0, i32 0
  %27 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str5.c, i8* %26)
  %28 = call i8* @nyx_string_to_cstr(%nyx_string* %27)
  br i1 %25, label %assert_pass_1, label %assert_fail_1
assert_fail_1:
  call void @nyx_assert_fail(i8* %28)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_1
assert_pass_1:
  %29 = getelementptr [5 x i8], [5 x i8]* @.str6, i32 0, i32 0
  %30 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str6.c, i8* %29)
  %31 = call { i64, i8* }* @nyx_array_new_ptr()
  %32 = call %nyx_string* @nyx_int_to_hex_upper(i64 255)
  %33 = bitcast %nyx_string* %32 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %31, i8* %33)
  %34 = call %nyx_string* @nyx_format(%nyx_string* %30, { i64, i8* }* %31)
  %35 = alloca %nyx_string*
  store %nyx_string* %34, %nyx_string** %35
  %36 = load %nyx_string*, %nyx_string** %35
  %37 = getelementptr [3 x i8], [3 x i8]* @.str7, i32 0, i32 0
  %38 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str7.c, i8* %37)
  %39 = call i1 @nyx_string_equals(%nyx_string* %36, %nyx_string* %38)
  %40 = getelementptr [17 x i8], [17 x i8]* @.str8, i32 0, i32 0
  %41 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str8.c, i8* %40)
  %42 = call i8* @nyx_string_to_cstr(%nyx_string* %41)
  br i1 %39, label %assert_pass_2, label %assert_fail_2
assert_fail_2:
  call void @nyx_assert_fail(i8* %42)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_2
assert_pass_2:
  %43 = getelementptr [5 x i8], [5 x i8]* @.str9, i32 0, i32 0
  %44 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str9.c, i8* %43)
  %45 = call { i64, i8* }* @nyx_array_new_ptr()
  %46 = call %nyx_string* @nyx_int_to_oct(i64 255)
  %47 = bitcast %nyx_string* %46 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %45, i8* %47)
  %48 = call %nyx_string* @nyx_format(%nyx_string* %44, { i64, i8* }* %45)
  %49 = alloca %nyx_string*
  store %nyx_string* %48, %nyx_string** %49
  %50 = load %nyx_string*, %nyx_string** %49
  %51 = getelementptr [4 x i8], [4 x i8]* @.str10, i32 0, i32 0
  %52 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str10.c, i8* %51)
  %53 = call i1 @nyx_string_equals(%nyx_string* %50, %nyx_string* %52)
  %54 = getelementptr [17 x i8], [17 x i8]* @.str11, i32 0, i32 0
  %55 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str11.c, i8* %54)
  %56 = call i8* @nyx_string_to_cstr(%nyx_string* %55)
  br i1 %53, label %assert_pass_3, label %assert_fail_3
assert_fail_3:
  call void @nyx_assert_fail(i8* %56)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_3
assert_pass_3:
  %57 = getelementptr [5 x i8], [5 x i8]* @.str12, i32 0, i32 0
  %58 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str12.c, i8* %57)
  %59 = call { i64, i8* }* @nyx_array_new_ptr()
  %60 = call %nyx_string* @nyx_int_to_oct(i64 8)
  %61 = bitcast %nyx_string* %60 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %59, i8* %61)
  %62 = call %nyx_string* @nyx_format(%nyx_string* %58, { i64, i8* }* %59)
  %63 = alloca %nyx_string*
  store %nyx_string* %62, %nyx_string** %63
  %64 = load %nyx_string*, %nyx_string** %63
  %65 = getelementptr [3 x i8], [3 x i8]* @.str13, i32 0, i32 0
  %66 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str13.c, i8* %65)
  %67 = call i1 @nyx_string_equals(%nyx_string* %64, %nyx_string* %66)
  %68 = getelementptr [17 x i8], [17 x i8]* @.str14, i32 0, i32 0
  %69 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str14.c, i8* %68)
  %70 = call i8* @nyx_string_to_cstr(%nyx_string* %69)
  br i1 %67, label %assert_pass_4, label %assert_fail_4
assert_fail_4:
  call void @nyx_assert_fail(i8* %70)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_4
assert_pass_4:
  %71 = getelementptr [5 x i8], [5 x i8]* @.str15, i32 0, i32 0
  %72 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str15.c, i8* %71)
  %73 = call { i64, i8* }* @nyx_array_new_ptr()
  %74 = call %nyx_string* @nyx_int_to_bin(i64 10)
  %75 = bitcast %nyx_string* %74 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %73, i8* %75)
  %76 = call %nyx_string* @nyx_format(%nyx_string* %72, { i64, i8* }* %73)
  %77 = alloca %nyx_string*
  store %nyx_string* %76, %nyx_string** %77
  %78 = load %nyx_string*, %nyx_string** %77
  %79 = getelementptr [5 x i8], [5 x i8]* @.str16, i32 0, i32 0
  %80 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str16.c, i8* %79)
  %81 = call i1 @nyx_string_equals(%nyx_string* %78, %nyx_string* %80)
  %82 = getelementptr [17 x i8], [17 x i8]* @.str17, i32 0, i32 0
  %83 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str17.c, i8* %82)
  %84 = call i8* @nyx_string_to_cstr(%nyx_string* %83)
  br i1 %81, label %assert_pass_5, label %assert_fail_5
assert_fail_5:
  call void @nyx_assert_fail(i8* %84)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_5
assert_pass_5:
  %85 = getelementptr [5 x i8], [5 x i8]* @.str18, i32 0, i32 0
  %86 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str18.c, i8* %85)
  %87 = call { i64, i8* }* @nyx_array_new_ptr()
  %88 = call %nyx_string* @nyx_int_to_bin(i64 0)
  %89 = bitcast %nyx_string* %88 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %87, i8* %89)
  %90 = call %nyx_string* @nyx_format(%nyx_string* %86, { i64, i8* }* %87)
  %91 = alloca %nyx_string*
  store %nyx_string* %90, %nyx_string** %91
  %92 = load %nyx_string*, %nyx_string** %91
  %93 = getelementptr [2 x i8], [2 x i8]* @.str19, i32 0, i32 0
  %94 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str19.c, i8* %93)
  %95 = call i1 @nyx_string_equals(%nyx_string* %92, %nyx_string* %94)
  %96 = getelementptr [17 x i8], [17 x i8]* @.str20, i32 0, i32 0
  %97 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str20.c, i8* %96)
  %98 = call i8* @nyx_string_to_cstr(%nyx_string* %97)
  br i1 %95, label %assert_pass_6, label %assert_fail_6
assert_fail_6:
  call void @nyx_assert_fail(i8* %98)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_6
assert_pass_6:
  %99 = getelementptr [7 x i8], [7 x i8]* @.str21, i32 0, i32 0
  %100 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str21.c, i8* %99)
  %101 = call { i64, i8* }* @nyx_array_new_ptr()
  %102 = getelementptr [2 x i8], [2 x i8]* @.fmtspec22, i32 0, i32 0
  %103 = call %nyx_string* @nyx_string_from_cstr(i8* %102)
  %104 = call %nyx_string* @nyx_float_to_prec(double 3.14159, %nyx_string* %103)
  %105 = bitcast %nyx_string* %104 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %101, i8* %105)
  %106 = call %nyx_string* @nyx_format(%nyx_string* %100, { i64, i8* }* %101)
  %107 = alloca %nyx_string*
  store %nyx_string* %106, %nyx_string** %107
  %108 = load %nyx_string*, %nyx_string** %107
  %109 = getelementptr [5 x i8], [5 x i8]* @.str23, i32 0, i32 0
  %110 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str23.c, i8* %109)
  %111 = call i1 @nyx_string_equals(%nyx_string* %108, %nyx_string* %110)
  %112 = getelementptr [17 x i8], [17 x i8]* @.str24, i32 0, i32 0
  %113 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str24.c, i8* %112)
  %114 = call i8* @nyx_string_to_cstr(%nyx_string* %113)
  br i1 %111, label %assert_pass_7, label %assert_fail_7
assert_fail_7:
  call void @nyx_assert_fail(i8* %114)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_7
assert_pass_7:
  %115 = getelementptr [7 x i8], [7 x i8]* @.str25, i32 0, i32 0
  %116 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str25.c, i8* %115)
  %117 = call { i64, i8* }* @nyx_array_new_ptr()
  %118 = getelementptr [2 x i8], [2 x i8]* @.fmtspec26, i32 0, i32 0
  %119 = call %nyx_string* @nyx_string_from_cstr(i8* %118)
  %120 = call %nyx_string* @nyx_float_to_prec(double 3.14159, %nyx_string* %119)
  %121 = bitcast %nyx_string* %120 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %117, i8* %121)
  %122 = call %nyx_string* @nyx_format(%nyx_string* %116, { i64, i8* }* %117)
  %123 = alloca %nyx_string*
  store %nyx_string* %122, %nyx_string** %123
  %124 = load %nyx_string*, %nyx_string** %123
  %125 = getelementptr [7 x i8], [7 x i8]* @.str27, i32 0, i32 0
  %126 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str27.c, i8* %125)
  %127 = call i1 @nyx_string_equals(%nyx_string* %124, %nyx_string* %126)
  %128 = getelementptr [17 x i8], [17 x i8]* @.str28, i32 0, i32 0
  %129 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str28.c, i8* %128)
  %130 = call i8* @nyx_string_to_cstr(%nyx_string* %129)
  br i1 %127, label %assert_pass_8, label %assert_fail_8
assert_fail_8:
  call void @nyx_assert_fail(i8* %130)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_8
assert_pass_8:
  %131 = getelementptr [7 x i8], [7 x i8]* @.str29, i32 0, i32 0
  %132 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str29.c, i8* %131)
  %133 = call { i64, i8* }* @nyx_array_new_ptr()
  %134 = getelementptr [2 x i8], [2 x i8]* @.fmtspec30, i32 0, i32 0
  %135 = call %nyx_string* @nyx_string_from_cstr(i8* %134)
  %136 = call %nyx_string* @nyx_float_to_prec(double 2.7, %nyx_string* %135)
  %137 = bitcast %nyx_string* %136 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %133, i8* %137)
  %138 = call %nyx_string* @nyx_format(%nyx_string* %132, { i64, i8* }* %133)
  %139 = alloca %nyx_string*
  store %nyx_string* %138, %nyx_string** %139
  %140 = load %nyx_string*, %nyx_string** %139
  %141 = getelementptr [2 x i8], [2 x i8]* @.str31, i32 0, i32 0
  %142 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str31.c, i8* %141)
  %143 = call i1 @nyx_string_equals(%nyx_string* %140, %nyx_string* %142)
  %144 = getelementptr [17 x i8], [17 x i8]* @.str32, i32 0, i32 0
  %145 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str32.c, i8* %144)
  %146 = call i8* @nyx_string_to_cstr(%nyx_string* %145)
  br i1 %143, label %assert_pass_9, label %assert_fail_9
assert_fail_9:
  call void @nyx_assert_fail(i8* %146)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_9
assert_pass_9:
  %147 = getelementptr [6 x i8], [6 x i8]* @.str33, i32 0, i32 0
  %148 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str33.c, i8* %147)
  %149 = call { i64, i8* }* @nyx_array_new_ptr()
  %150 = getelementptr [2 x i8], [2 x i8]* @.fmtspec34, i32 0, i32 0
  %151 = call %nyx_string* @nyx_string_from_cstr(i8* %150)
  %152 = call %nyx_string* @nyx_int_to_width(i64 42, %nyx_string* %151)
  %153 = bitcast %nyx_string* %152 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %149, i8* %153)
  %154 = call %nyx_string* @nyx_format(%nyx_string* %148, { i64, i8* }* %149)
  %155 = alloca %nyx_string*
  store %nyx_string* %154, %nyx_string** %155
  %156 = load %nyx_string*, %nyx_string** %155
  %157 = getelementptr [6 x i8], [6 x i8]* @.str35, i32 0, i32 0
  %158 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str35.c, i8* %157)
  %159 = call i1 @nyx_string_equals(%nyx_string* %156, %nyx_string* %158)
  %160 = getelementptr [17 x i8], [17 x i8]* @.str36, i32 0, i32 0
  %161 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str36.c, i8* %160)
  %162 = call i8* @nyx_string_to_cstr(%nyx_string* %161)
  br i1 %159, label %assert_pass_10, label %assert_fail_10
assert_fail_10:
  call void @nyx_assert_fail(i8* %162)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_10
assert_pass_10:
  %163 = getelementptr [7 x i8], [7 x i8]* @.str37, i32 0, i32 0
  %164 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str37.c, i8* %163)
  %165 = call { i64, i8* }* @nyx_array_new_ptr()
  %166 = getelementptr [3 x i8], [3 x i8]* @.fmtspec38, i32 0, i32 0
  %167 = call %nyx_string* @nyx_string_from_cstr(i8* %166)
  %168 = call %nyx_string* @nyx_int_to_width(i64 42, %nyx_string* %167)
  %169 = bitcast %nyx_string* %168 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %165, i8* %169)
  %170 = call %nyx_string* @nyx_format(%nyx_string* %164, { i64, i8* }* %165)
  %171 = alloca %nyx_string*
  store %nyx_string* %170, %nyx_string** %171
  %172 = load %nyx_string*, %nyx_string** %171
  %173 = getelementptr [6 x i8], [6 x i8]* @.str39, i32 0, i32 0
  %174 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str39.c, i8* %173)
  %175 = call i1 @nyx_string_equals(%nyx_string* %172, %nyx_string* %174)
  %176 = getelementptr [17 x i8], [17 x i8]* @.str40, i32 0, i32 0
  %177 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str40.c, i8* %176)
  %178 = call i8* @nyx_string_to_cstr(%nyx_string* %177)
  br i1 %175, label %assert_pass_11, label %assert_fail_11
assert_fail_11:
  call void @nyx_assert_fail(i8* %178)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_11
assert_pass_11:
  %179 = getelementptr [27 x i8], [27 x i8]* @.str41, i32 0, i32 0
  %180 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str41.c, i8* %179)
  %181 = call { i64, i8* }* @nyx_array_new_ptr()
  %182 = call %nyx_string* @nyx_int_to_hex(i64 10)
  %183 = bitcast %nyx_string* %182 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %181, i8* %183)
  %184 = call %nyx_string* @nyx_int_to_oct(i64 10)
  %185 = bitcast %nyx_string* %184 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %181, i8* %185)
  %186 = call %nyx_string* @nyx_int_to_bin(i64 10)
  %187 = bitcast %nyx_string* %186 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %181, i8* %187)
  %188 = call %nyx_string* @nyx_format(%nyx_string* %180, { i64, i8* }* %181)
  %189 = alloca %nyx_string*
  store %nyx_string* %188, %nyx_string** %189
  %190 = load %nyx_string*, %nyx_string** %189
  %191 = getelementptr [22 x i8], [22 x i8]* @.str42, i32 0, i32 0
  %192 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str42.c, i8* %191)
  %193 = call i1 @nyx_string_equals(%nyx_string* %190, %nyx_string* %192)
  %194 = getelementptr [17 x i8], [17 x i8]* @.str43, i32 0, i32 0
  %195 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str43.c, i8* %194)
  %196 = call i8* @nyx_string_to_cstr(%nyx_string* %195)
  br i1 %193, label %assert_pass_12, label %assert_fail_12
assert_fail_12:
  call void @nyx_assert_fail(i8* %196)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_12
assert_pass_12:
  %197 = getelementptr [10 x i8], [10 x i8]* @.str44, i32 0, i32 0
  %198 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str44.c, i8* %197)
  %199 = call { i64, i8* }* @nyx_array_new_ptr()
  %200 = call %nyx_string* @nyx_string_from_int(i64 42)
  %201 = bitcast %nyx_string* %200 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %199, i8* %201)
  %202 = call %nyx_string* @nyx_string_from_float(double 1.5)
  %203 = bitcast %nyx_string* %202 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %199, i8* %203)
  %204 = call %nyx_string* @nyx_format(%nyx_string* %198, { i64, i8* }* %199)
  %205 = alloca %nyx_string*
  store %nyx_string* %204, %nyx_string** %205
  %206 = load %nyx_string*, %nyx_string** %205
  %207 = getelementptr [11 x i8], [11 x i8]* @.str45, i32 0, i32 0
  %208 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str45.c, i8* %207)
  %209 = call i1 @nyx_string_equals(%nyx_string* %206, %nyx_string* %208)
  %210 = getelementptr [17 x i8], [17 x i8]* @.str46, i32 0, i32 0
  %211 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str46.c, i8* %210)
  %212 = call i8* @nyx_string_to_cstr(%nyx_string* %211)
  br i1 %209, label %assert_pass_13, label %assert_fail_13
assert_fail_13:
  call void @nyx_assert_fail(i8* %212)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_13
assert_pass_13:
  %213 = getelementptr [3 x i8], [3 x i8]* @.str47, i32 0, i32 0
  %214 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str47.c, i8* %213)
  %215 = call i8* @nyx_string_to_cstr(%nyx_string* %214)
  call void @nyx_print_string(i8* %215)
  ret i64 0
}


attributes #0 = { returns_twice }

