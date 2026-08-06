source_filename = "/home/admin/nyx/lang/tests/compiler/language/test-313-c-built-array-tags.nx"
target triple = "x86_64-pc-linux-gnu"

@.str0 = private unnamed_addr constant [16 x i8] c"alfa,beta,gamma\00"
@.str0.c = internal global %nyx_string* null
@.str1 = private unnamed_addr constant [2 x i8] c",\00"
@.str1.c = internal global %nyx_string* null
@.str2 = private unnamed_addr constant [3 x i8] c"x \00"
@.str2.c = internal global %nyx_string* null
@.str3 = private unnamed_addr constant [7 x i8] c"x alfa\00"
@.str3.c = internal global %nyx_string* null
@.str4 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str4.c = internal global %nyx_string* null
@.str5 = private unnamed_addr constant [3 x i8] c"y \00"
@.str5.c = internal global %nyx_string* null
@.str6 = private unnamed_addr constant [8 x i8] c"y gamma\00"
@.str6.c = internal global %nyx_string* null
@.str7 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str7.c = internal global %nyx_string* null
@.str8 = private unnamed_addr constant [5 x i8] c"beta\00"
@.str8.c = internal global %nyx_string* null
@.str9 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str9.c = internal global %nyx_string* null
@.str10 = private unnamed_addr constant [17 x i8] c"split C-built ok\00"
@.str10.c = internal global %nyx_string* null
@.str11 = private unnamed_addr constant [8 x i8] c"VERSION\00"
@.str11.c = internal global %nyx_string* null
@.str12 = private unnamed_addr constant [3 x i8] c"d:\00"
@.str12.c = internal global %nyx_string* null
@.str13 = private unnamed_addr constant [8 x i8] c"d:false\00"
@.str13.c = internal global %nyx_string* null
@.str14 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str14.c = internal global %nyx_string* null
@.str15 = private unnamed_addr constant [3 x i8] c"f:\00"
@.str15.c = internal global %nyx_string* null
@.str16 = private unnamed_addr constant [7 x i8] c"f:true\00"
@.str16.c = internal global %nyx_string* null
@.str17 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str17.c = internal global %nyx_string* null
@.str18 = private unnamed_addr constant [20 x i8] c"stat heterogeneo ok\00"
@.str18.c = internal global %nyx_string* null
@.str19 = private unnamed_addr constant [4 x i8] c"uno\00"
@.str19.c = internal global %nyx_string* null
@.str20 = private unnamed_addr constant [4 x i8] c"dos\00"
@.str20.c = internal global %nyx_string* null
@.str21 = private unnamed_addr constant [4 x i8] c"c: \00"
@.str21.c = internal global %nyx_string* null
@.str22 = private unnamed_addr constant [7 x i8] c"c: dos\00"
@.str22.c = internal global %nyx_string* null
@.str23 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str23.c = internal global %nyx_string* null
@.str24 = private unnamed_addr constant [20 x i8] c"propagacion push ok\00"
@.str24.c = internal global %nyx_string* null
@.str25 = private unnamed_addr constant [8 x i8] c"primero\00"
@.str25.c = internal global %nyx_string* null
@.str26 = private unnamed_addr constant [4 x i8] c"u: \00"
@.str26.c = internal global %nyx_string* null
@.str27 = private unnamed_addr constant [11 x i8] c"u: primero\00"
@.str27.c = internal global %nyx_string* null
@.str28 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str28.c = internal global %nyx_string* null
@.str29 = private unnamed_addr constant [2 x i8] c"x\00"
@.str29.c = internal global %nyx_string* null
@.str30 = private unnamed_addr constant [6 x i8] c"nuevo\00"
@.str30.c = internal global %nyx_string* null
@.str31 = private unnamed_addr constant [4 x i8] c"i: \00"
@.str31.c = internal global %nyx_string* null
@.str32 = private unnamed_addr constant [9 x i8] c"i: nuevo\00"
@.str32.c = internal global %nyx_string* null
@.str33 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str33.c = internal global %nyx_string* null
@.str34 = private unnamed_addr constant [4 x i8] c"j: \00"
@.str34.c = internal global %nyx_string* null
@.str35 = private unnamed_addr constant [5 x i8] c"j: x\00"
@.str35.c = internal global %nyx_string* null
@.str36 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str36.c = internal global %nyx_string* null
@.str37 = private unnamed_addr constant [18 x i8] c"unshift insert ok\00"
@.str37.c = internal global %nyx_string* null
@.str38 = private unnamed_addr constant [31 x i8] c"test-313-c-built-array-tags ok\00"
@.str38.c = internal global %nyx_string* null
@__nyx_test_failed = external global i64
@__nyx_test_mode = external global i64
; Nyx Compiler Bootstrap v3.0
; Generated from: /home/admin/nyx/lang/tests/compiler/language/test-313-c-built-array-tags.nx

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


define internal i64 @test_split(
) {
  %1 = getelementptr [16 x i8], [16 x i8]* @.str0, i32 0, i32 0
  %2 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str0.c, i8* %1)
  %3 = getelementptr [2 x i8], [2 x i8]* @.str1, i32 0, i32 0
  %4 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1.c, i8* %3)
  %5 = call { i64, i8* }* @nyx_string_split(%nyx_string* %2, %nyx_string* %4)
  %6 = alloca { i64, i8* }*
  store { i64, i8* }* %5, { i64, i8* }** %6
  %7 = load { i64, i8* }*, { i64, i8* }** %6
  %8 = call i64 @nyx_array_get({ i64, i8* }* %7, i64 0)
  %9 = call i64 @nyx_array_get_tag({ i64, i8* }* %7, i64 0)
  %10 = call %nyx_string* @nyx_string_from_tagged(i64 %8, i64 %9, i64 2)
  %11 = getelementptr [3 x i8], [3 x i8]* @.str2, i32 0, i32 0
  %12 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str2.c, i8* %11)
  %13 = call %nyx_string* @nyx_string_concat(%nyx_string* %12, %nyx_string* %10)
  %14 = getelementptr [7 x i8], [7 x i8]* @.str3, i32 0, i32 0
  %15 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str3.c, i8* %14)
  %16 = call i1 @nyx_string_equals(%nyx_string* %13, %nyx_string* %15)
  %17 = getelementptr [17 x i8], [17 x i8]* @.str4, i32 0, i32 0
  %18 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str4.c, i8* %17)
  %19 = call i8* @nyx_string_to_cstr(%nyx_string* %18)
  br i1 %16, label %assert_pass_0, label %assert_fail_0
assert_fail_0:
  call void @nyx_assert_fail(i8* %19)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_0
assert_pass_0:
  %20 = load { i64, i8* }*, { i64, i8* }** %6
  %21 = call i64 @nyx_array_get({ i64, i8* }* %20, i64 2)
  %22 = call i64 @nyx_array_get_tag({ i64, i8* }* %20, i64 2)
  %23 = call %nyx_string* @nyx_string_from_tagged(i64 %21, i64 %22, i64 2)
  %24 = getelementptr [3 x i8], [3 x i8]* @.str5, i32 0, i32 0
  %25 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str5.c, i8* %24)
  %26 = call %nyx_string* @nyx_string_concat(%nyx_string* %25, %nyx_string* %23)
  %27 = getelementptr [8 x i8], [8 x i8]* @.str6, i32 0, i32 0
  %28 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str6.c, i8* %27)
  %29 = call i1 @nyx_string_equals(%nyx_string* %26, %nyx_string* %28)
  %30 = getelementptr [17 x i8], [17 x i8]* @.str7, i32 0, i32 0
  %31 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str7.c, i8* %30)
  %32 = call i8* @nyx_string_to_cstr(%nyx_string* %31)
  br i1 %29, label %assert_pass_1, label %assert_fail_1
assert_fail_1:
  call void @nyx_assert_fail(i8* %32)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_1
assert_pass_1:
  %33 = load { i64, i8* }*, { i64, i8* }** %6
  %34 = getelementptr [5 x i8], [5 x i8]* @.str8, i32 0, i32 0
  %35 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str8.c, i8* %34)
  %36 = ptrtoint %nyx_string* %35 to i64
  %37 = call i64 @nyx_array_contains_tagged({ i64, i8* }* %33, i64 %36, i64 2)
  %38 = trunc i64 %37 to i1
  %39 = getelementptr [17 x i8], [17 x i8]* @.str9, i32 0, i32 0
  %40 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str9.c, i8* %39)
  %41 = call i8* @nyx_string_to_cstr(%nyx_string* %40)
  br i1 %38, label %assert_pass_2, label %assert_fail_2
assert_fail_2:
  call void @nyx_assert_fail(i8* %41)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_2
assert_pass_2:
  %42 = getelementptr [17 x i8], [17 x i8]* @.str10, i32 0, i32 0
  %43 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str10.c, i8* %42)
  %44 = call i8* @nyx_string_to_cstr(%nyx_string* %43)
  call void @nyx_print_string(i8* %44)
  ret i64 0
}

define internal i64 @test_stat_heterogeneo(
) {
  %45 = getelementptr [8 x i8], [8 x i8]* @.str11, i32 0, i32 0
  %46 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str11.c, i8* %45)
  %47 = call { i64, i8* }* @nyx_stat(%nyx_string* %46)
  %48 = alloca { i64, i8* }*
  store { i64, i8* }* %47, { i64, i8* }** %48
  %49 = load { i64, i8* }*, { i64, i8* }** %48
  %50 = call i64 @nyx_array_get({ i64, i8* }* %49, i64 3)
  %51 = call i64 @nyx_array_get_tag({ i64, i8* }* %49, i64 3)
  %52 = call %nyx_string* @nyx_string_from_tagged(i64 %50, i64 %51, i64 0)
  %53 = getelementptr [3 x i8], [3 x i8]* @.str12, i32 0, i32 0
  %54 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str12.c, i8* %53)
  %55 = call %nyx_string* @nyx_string_concat(%nyx_string* %54, %nyx_string* %52)
  %56 = getelementptr [8 x i8], [8 x i8]* @.str13, i32 0, i32 0
  %57 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str13.c, i8* %56)
  %58 = call i1 @nyx_string_equals(%nyx_string* %55, %nyx_string* %57)
  %59 = getelementptr [17 x i8], [17 x i8]* @.str14, i32 0, i32 0
  %60 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str14.c, i8* %59)
  %61 = call i8* @nyx_string_to_cstr(%nyx_string* %60)
  br i1 %58, label %assert_pass_3, label %assert_fail_3
assert_fail_3:
  call void @nyx_assert_fail(i8* %61)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_3
assert_pass_3:
  %62 = load { i64, i8* }*, { i64, i8* }** %48
  %63 = call i64 @nyx_array_get({ i64, i8* }* %62, i64 4)
  %64 = call i64 @nyx_array_get_tag({ i64, i8* }* %62, i64 4)
  %65 = call %nyx_string* @nyx_string_from_tagged(i64 %63, i64 %64, i64 0)
  %66 = getelementptr [3 x i8], [3 x i8]* @.str15, i32 0, i32 0
  %67 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str15.c, i8* %66)
  %68 = call %nyx_string* @nyx_string_concat(%nyx_string* %67, %nyx_string* %65)
  %69 = getelementptr [7 x i8], [7 x i8]* @.str16, i32 0, i32 0
  %70 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str16.c, i8* %69)
  %71 = call i1 @nyx_string_equals(%nyx_string* %68, %nyx_string* %70)
  %72 = getelementptr [17 x i8], [17 x i8]* @.str17, i32 0, i32 0
  %73 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str17.c, i8* %72)
  %74 = call i8* @nyx_string_to_cstr(%nyx_string* %73)
  br i1 %71, label %assert_pass_4, label %assert_fail_4
assert_fail_4:
  call void @nyx_assert_fail(i8* %74)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_4
assert_pass_4:
  %75 = getelementptr [20 x i8], [20 x i8]* @.str18, i32 0, i32 0
  %76 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str18.c, i8* %75)
  %77 = call i8* @nyx_string_to_cstr(%nyx_string* %76)
  call void @nyx_print_string(i8* %77)
  ret i64 0
}

define internal i64 @test_propagacion_push(
) {
  %78 = call { i64, i8* }* @nyx_array_new_ptr()
  %79 = getelementptr [4 x i8], [4 x i8]* @.str19, i32 0, i32 0
  %80 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str19.c, i8* %79)
  %81 = ptrtoint %nyx_string* %80 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %78, i64 %81, i64 2)
  %82 = getelementptr [4 x i8], [4 x i8]* @.str20, i32 0, i32 0
  %83 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str20.c, i8* %82)
  %84 = ptrtoint %nyx_string* %83 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %78, i64 %84, i64 2)
  %85 = alloca { i64, i8* }*
  store { i64, i8* }* %78, { i64, i8* }** %85
  %86 = call { i64, i8* }* @nyx_array_new_ptr()
  %87 = alloca { i64, i8* }*
  store { i64, i8* }* %86, { i64, i8* }** %87
  %88 = load { i64, i8* }*, { i64, i8* }** %87
  %89 = load { i64, i8* }*, { i64, i8* }** %85
  %90 = call i64 @nyx_array_get_checked({ i64, i8* }* %89, i64 1, i64 2)
  %91 = inttoptr i64 %90 to %nyx_string*
  %92 = ptrtoint %nyx_string* %91 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %88, i64 %92, i64 2)
  %93 = load { i64, i8* }*, { i64, i8* }** %87
  %94 = call i64 @nyx_array_get({ i64, i8* }* %93, i64 0)
  %95 = call i64 @nyx_array_get_tag({ i64, i8* }* %93, i64 0)
  %96 = call %nyx_string* @nyx_string_from_tagged(i64 %94, i64 %95, i64 0)
  %97 = getelementptr [4 x i8], [4 x i8]* @.str21, i32 0, i32 0
  %98 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str21.c, i8* %97)
  %99 = call %nyx_string* @nyx_string_concat(%nyx_string* %98, %nyx_string* %96)
  %100 = getelementptr [7 x i8], [7 x i8]* @.str22, i32 0, i32 0
  %101 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str22.c, i8* %100)
  %102 = call i1 @nyx_string_equals(%nyx_string* %99, %nyx_string* %101)
  %103 = getelementptr [17 x i8], [17 x i8]* @.str23, i32 0, i32 0
  %104 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str23.c, i8* %103)
  %105 = call i8* @nyx_string_to_cstr(%nyx_string* %104)
  br i1 %102, label %assert_pass_5, label %assert_fail_5
assert_fail_5:
  call void @nyx_assert_fail(i8* %105)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_5
assert_pass_5:
  %106 = getelementptr [20 x i8], [20 x i8]* @.str24, i32 0, i32 0
  %107 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str24.c, i8* %106)
  %108 = call i8* @nyx_string_to_cstr(%nyx_string* %107)
  call void @nyx_print_string(i8* %108)
  ret i64 0
}

define internal i64 @test_unshift_insert(
) {
  %109 = call { i64, i8* }* @nyx_array_new_ptr()
  %110 = alloca { i64, i8* }*
  store { i64, i8* }* %109, { i64, i8* }** %110
  %111 = load { i64, i8* }*, { i64, i8* }** %110
  %112 = getelementptr [8 x i8], [8 x i8]* @.str25, i32 0, i32 0
  %113 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str25.c, i8* %112)
  %114 = ptrtoint %nyx_string* %113 to i64
  call void @nyx_array_unshift({ i64, i8* }* %111, i64 %114)
  call void @nyx_array_set_tagged({ i64, i8* }* %111, i64 0, i64 %114, i64 2)
  %115 = load { i64, i8* }*, { i64, i8* }** %110
  %116 = call i64 @nyx_array_get({ i64, i8* }* %115, i64 0)
  %117 = call i64 @nyx_array_get_tag({ i64, i8* }* %115, i64 0)
  %118 = call %nyx_string* @nyx_string_from_tagged(i64 %116, i64 %117, i64 0)
  %119 = getelementptr [4 x i8], [4 x i8]* @.str26, i32 0, i32 0
  %120 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str26.c, i8* %119)
  %121 = call %nyx_string* @nyx_string_concat(%nyx_string* %120, %nyx_string* %118)
  %122 = getelementptr [11 x i8], [11 x i8]* @.str27, i32 0, i32 0
  %123 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str27.c, i8* %122)
  %124 = call i1 @nyx_string_equals(%nyx_string* %121, %nyx_string* %123)
  %125 = getelementptr [17 x i8], [17 x i8]* @.str28, i32 0, i32 0
  %126 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str28.c, i8* %125)
  %127 = call i8* @nyx_string_to_cstr(%nyx_string* %126)
  br i1 %124, label %assert_pass_6, label %assert_fail_6
assert_fail_6:
  call void @nyx_assert_fail(i8* %127)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_6
assert_pass_6:
  %128 = call { i64, i8* }* @nyx_array_new_ptr()
  %129 = alloca { i64, i8* }*
  store { i64, i8* }* %128, { i64, i8* }** %129
  %130 = load { i64, i8* }*, { i64, i8* }** %129
  %131 = getelementptr [2 x i8], [2 x i8]* @.str29, i32 0, i32 0
  %132 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str29.c, i8* %131)
  %133 = ptrtoint %nyx_string* %132 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %130, i64 %133, i64 2)
  %134 = load { i64, i8* }*, { i64, i8* }** %129
  %135 = getelementptr [6 x i8], [6 x i8]* @.str30, i32 0, i32 0
  %136 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str30.c, i8* %135)
  %137 = ptrtoint %nyx_string* %136 to i64
  call void @nyx_array_insert({ i64, i8* }* %134, i64 0, i64 %137)
  call void @nyx_array_set_tagged({ i64, i8* }* %134, i64 0, i64 %137, i64 2)
  %138 = load { i64, i8* }*, { i64, i8* }** %129
  %139 = call i64 @nyx_array_get({ i64, i8* }* %138, i64 0)
  %140 = call i64 @nyx_array_get_tag({ i64, i8* }* %138, i64 0)
  %141 = call %nyx_string* @nyx_string_from_tagged(i64 %139, i64 %140, i64 0)
  %142 = getelementptr [4 x i8], [4 x i8]* @.str31, i32 0, i32 0
  %143 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str31.c, i8* %142)
  %144 = call %nyx_string* @nyx_string_concat(%nyx_string* %143, %nyx_string* %141)
  %145 = getelementptr [9 x i8], [9 x i8]* @.str32, i32 0, i32 0
  %146 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str32.c, i8* %145)
  %147 = call i1 @nyx_string_equals(%nyx_string* %144, %nyx_string* %146)
  %148 = getelementptr [17 x i8], [17 x i8]* @.str33, i32 0, i32 0
  %149 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str33.c, i8* %148)
  %150 = call i8* @nyx_string_to_cstr(%nyx_string* %149)
  br i1 %147, label %assert_pass_7, label %assert_fail_7
assert_fail_7:
  call void @nyx_assert_fail(i8* %150)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_7
assert_pass_7:
  %151 = load { i64, i8* }*, { i64, i8* }** %129
  %152 = call i64 @nyx_array_get({ i64, i8* }* %151, i64 1)
  %153 = call i64 @nyx_array_get_tag({ i64, i8* }* %151, i64 1)
  %154 = call %nyx_string* @nyx_string_from_tagged(i64 %152, i64 %153, i64 0)
  %155 = getelementptr [4 x i8], [4 x i8]* @.str34, i32 0, i32 0
  %156 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str34.c, i8* %155)
  %157 = call %nyx_string* @nyx_string_concat(%nyx_string* %156, %nyx_string* %154)
  %158 = getelementptr [5 x i8], [5 x i8]* @.str35, i32 0, i32 0
  %159 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str35.c, i8* %158)
  %160 = call i1 @nyx_string_equals(%nyx_string* %157, %nyx_string* %159)
  %161 = getelementptr [17 x i8], [17 x i8]* @.str36, i32 0, i32 0
  %162 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str36.c, i8* %161)
  %163 = call i8* @nyx_string_to_cstr(%nyx_string* %162)
  br i1 %160, label %assert_pass_8, label %assert_fail_8
assert_fail_8:
  call void @nyx_assert_fail(i8* %163)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_8
assert_pass_8:
  %164 = getelementptr [18 x i8], [18 x i8]* @.str37, i32 0, i32 0
  %165 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str37.c, i8* %164)
  %166 = call i8* @nyx_string_to_cstr(%nyx_string* %165)
  call void @nyx_print_string(i8* %166)
  ret i64 0
}

define i64 @main(
i32 %argc, i8** %argv) {
  call void @nyx_set_args(i32 %argc, i8** %argv)
  %167 = call i64 @test_split()
  %168 = call i64 @test_stat_heterogeneo()
  %169 = call i64 @test_propagacion_push()
  %170 = call i64 @test_unshift_insert()
  %171 = getelementptr [31 x i8], [31 x i8]* @.str38, i32 0, i32 0
  %172 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str38.c, i8* %171)
  %173 = call i8* @nyx_string_to_cstr(%nyx_string* %172)
  call void @nyx_print_string(i8* %173)
  ret i64 0
}


attributes #0 = { returns_twice }

