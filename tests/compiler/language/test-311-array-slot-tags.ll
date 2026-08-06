source_filename = "/home/admin/nyx/lang/tests/compiler/language/test-311-array-slot-tags.nx"
target triple = "x86_64-pc-linux-gnu"

@.str0 = private unnamed_addr constant [4 x i8] c"dos\00"
@.str0.c = internal global %nyx_string* null
@.str1 = private unnamed_addr constant [2 x i8] c"x\00"
@.str1.c = internal global %nyx_string* null
@.str2 = private unnamed_addr constant [2 x i8] c"y\00"
@.str2.c = internal global %nyx_string* null
@.str3 = private unnamed_addr constant [5 x i8] c"xdos\00"
@.str3.c = internal global %nyx_string* null
@.str4 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str4.c = internal global %nyx_string* null
@.str5 = private unnamed_addr constant [5 x i8] c"dosy\00"
@.str5.c = internal global %nyx_string* null
@.str6 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str6.c = internal global %nyx_string* null
@.str7 = private unnamed_addr constant [27 x i8] c"ambos ordenes coinciden ok\00"
@.str7.c = internal global %nyx_string* null
@.str8 = private unnamed_addr constant [4 x i8] c"dos\00"
@.str8.c = internal global %nyx_string* null
@.str9 = private unnamed_addr constant [3 x i8] c"i=\00"
@.str9.c = internal global %nyx_string* null
@.str10 = private unnamed_addr constant [4 x i8] c"i=1\00"
@.str10.c = internal global %nyx_string* null
@.str11 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str11.c = internal global %nyx_string* null
@.str12 = private unnamed_addr constant [3 x i8] c"s=\00"
@.str12.c = internal global %nyx_string* null
@.str13 = private unnamed_addr constant [6 x i8] c"s=dos\00"
@.str13.c = internal global %nyx_string* null
@.str14 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str14.c = internal global %nyx_string* null
@.str15 = private unnamed_addr constant [3 x i8] c"f=\00"
@.str15.c = internal global %nyx_string* null
@.str16 = private unnamed_addr constant [6 x i8] c"f=3.5\00"
@.str16.c = internal global %nyx_string* null
@.str17 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str17.c = internal global %nyx_string* null
@.str18 = private unnamed_addr constant [3 x i8] c"b=\00"
@.str18.c = internal global %nyx_string* null
@.str19 = private unnamed_addr constant [7 x i8] c"b=true\00"
@.str19.c = internal global %nyx_string* null
@.str20 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str20.c = internal global %nyx_string* null
@.str21 = private unnamed_addr constant [29 x i8] c"cuatro tipos heterogeneos ok\00"
@.str21.c = internal global %nyx_string* null
@.str22 = private unnamed_addr constant [2 x i8] c"x\00"
@.str22.c = internal global %nyx_string* null
@.str23 = private unnamed_addr constant [2 x i8] c"y\00"
@.str23.c = internal global %nyx_string* null
@.str24 = private unnamed_addr constant [3 x i8] c"a=\00"
@.str24.c = internal global %nyx_string* null
@.str25 = private unnamed_addr constant [4 x i8] c"a=x\00"
@.str25.c = internal global %nyx_string* null
@.str26 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str26.c = internal global %nyx_string* null
@.str27 = private unnamed_addr constant [3 x i8] c"n=\00"
@.str27.c = internal global %nyx_string* null
@.str28 = private unnamed_addr constant [4 x i8] c"n=8\00"
@.str28.c = internal global %nyx_string* null
@.str29 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str29.c = internal global %nyx_string* null
@.str30 = private unnamed_addr constant [26 x i8] c"camino anotado intacto ok\00"
@.str30.c = internal global %nyx_string* null
@.str31 = private unnamed_addr constant [5 x i8] c"once\00"
@.str31.c = internal global %nyx_string* null
@.str32 = private unnamed_addr constant [3 x i8] c"v=\00"
@.str32.c = internal global %nyx_string* null
@.str33 = private unnamed_addr constant [7 x i8] c"v=once\00"
@.str33.c = internal global %nyx_string* null
@.str34 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str34.c = internal global %nyx_string* null
@.str35 = private unnamed_addr constant [3 x i8] c"w=\00"
@.str35.c = internal global %nyx_string* null
@.str36 = private unnamed_addr constant [5 x i8] c"w=12\00"
@.str36.c = internal global %nyx_string* null
@.str37 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str37.c = internal global %nyx_string* null
@.str38 = private unnamed_addr constant [20 x i8] c"indice calculado ok\00"
@.str38.c = internal global %nyx_string* null
@.str39 = private unnamed_addr constant [28 x i8] c"test-311-array-slot-tags ok\00"
@.str39.c = internal global %nyx_string* null
@__nyx_test_failed = external global i64
@__nyx_test_mode = external global i64
; Nyx Compiler Bootstrap v3.0
; Generated from: /home/admin/nyx/lang/tests/compiler/language/test-311-array-slot-tags.nx

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


define internal i64 @test_ambos_ordenes_coinciden(
) {
  %1 = call { i64, i8* }* @nyx_array_new_ptr()
  call void @nyx_array_push_tagged({ i64, i8* }* %1, i64 1, i64 1)
  %2 = getelementptr [4 x i8], [4 x i8]* @.str0, i32 0, i32 0
  %3 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str0.c, i8* %2)
  %4 = ptrtoint %nyx_string* %3 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1, i64 %4, i64 2)
  %5 = alloca { i64, i8* }*
  store { i64, i8* }* %1, { i64, i8* }** %5
  %6 = load { i64, i8* }*, { i64, i8* }** %5
  %7 = call i64 @nyx_array_get({ i64, i8* }* %6, i64 1)
  %8 = call i64 @nyx_array_get_tag({ i64, i8* }* %6, i64 1)
  %9 = call %nyx_string* @nyx_string_from_tagged(i64 %7, i64 %8, i64 1)
  %10 = getelementptr [2 x i8], [2 x i8]* @.str1, i32 0, i32 0
  %11 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1.c, i8* %10)
  %12 = call %nyx_string* @nyx_string_concat(%nyx_string* %11, %nyx_string* %9)
  %13 = alloca %nyx_string*
  store %nyx_string* %12, %nyx_string** %13
  %14 = load { i64, i8* }*, { i64, i8* }** %5
  %15 = call i64 @nyx_array_get({ i64, i8* }* %14, i64 1)
  %16 = call i64 @nyx_array_get_tag({ i64, i8* }* %14, i64 1)
  %17 = call %nyx_string* @nyx_string_from_tagged(i64 %15, i64 %16, i64 1)
  %18 = getelementptr [2 x i8], [2 x i8]* @.str2, i32 0, i32 0
  %19 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str2.c, i8* %18)
  %20 = call %nyx_string* @nyx_string_concat(%nyx_string* %17, %nyx_string* %19)
  %21 = alloca %nyx_string*
  store %nyx_string* %20, %nyx_string** %21
  %22 = load %nyx_string*, %nyx_string** %13
  %23 = getelementptr [5 x i8], [5 x i8]* @.str3, i32 0, i32 0
  %24 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str3.c, i8* %23)
  %25 = call i1 @nyx_string_equals(%nyx_string* %22, %nyx_string* %24)
  %26 = getelementptr [17 x i8], [17 x i8]* @.str4, i32 0, i32 0
  %27 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str4.c, i8* %26)
  %28 = call i8* @nyx_string_to_cstr(%nyx_string* %27)
  br i1 %25, label %assert_pass_0, label %assert_fail_0
assert_fail_0:
  call void @nyx_assert_fail(i8* %28)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_0
assert_pass_0:
  %29 = load %nyx_string*, %nyx_string** %21
  %30 = getelementptr [5 x i8], [5 x i8]* @.str5, i32 0, i32 0
  %31 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str5.c, i8* %30)
  %32 = call i1 @nyx_string_equals(%nyx_string* %29, %nyx_string* %31)
  %33 = getelementptr [17 x i8], [17 x i8]* @.str6, i32 0, i32 0
  %34 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str6.c, i8* %33)
  %35 = call i8* @nyx_string_to_cstr(%nyx_string* %34)
  br i1 %32, label %assert_pass_1, label %assert_fail_1
assert_fail_1:
  call void @nyx_assert_fail(i8* %35)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_1
assert_pass_1:
  %36 = getelementptr [27 x i8], [27 x i8]* @.str7, i32 0, i32 0
  %37 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str7.c, i8* %36)
  %38 = call i8* @nyx_string_to_cstr(%nyx_string* %37)
  call void @nyx_print_string(i8* %38)
  ret i64 0
}

define internal i64 @test_cuatro_tipos_en_array_heterogeneo(
) {
  %39 = call { i64, i8* }* @nyx_array_new_ptr()
  call void @nyx_array_push_tagged({ i64, i8* }* %39, i64 1, i64 1)
  %40 = getelementptr [4 x i8], [4 x i8]* @.str8, i32 0, i32 0
  %41 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str8.c, i8* %40)
  %42 = ptrtoint %nyx_string* %41 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %39, i64 %42, i64 2)
  %43 = bitcast double 3.5 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %39, i64 %43, i64 3)
  %44 = zext i1 1 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %39, i64 %44, i64 4)
  %45 = alloca { i64, i8* }*
  store { i64, i8* }* %39, { i64, i8* }** %45
  %46 = load { i64, i8* }*, { i64, i8* }** %45
  %47 = call i64 @nyx_array_get({ i64, i8* }* %46, i64 0)
  %48 = call i64 @nyx_array_get_tag({ i64, i8* }* %46, i64 0)
  %49 = call %nyx_string* @nyx_string_from_tagged(i64 %47, i64 %48, i64 1)
  %50 = getelementptr [3 x i8], [3 x i8]* @.str9, i32 0, i32 0
  %51 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str9.c, i8* %50)
  %52 = call %nyx_string* @nyx_string_concat(%nyx_string* %51, %nyx_string* %49)
  %53 = getelementptr [4 x i8], [4 x i8]* @.str10, i32 0, i32 0
  %54 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str10.c, i8* %53)
  %55 = call i1 @nyx_string_equals(%nyx_string* %52, %nyx_string* %54)
  %56 = getelementptr [17 x i8], [17 x i8]* @.str11, i32 0, i32 0
  %57 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str11.c, i8* %56)
  %58 = call i8* @nyx_string_to_cstr(%nyx_string* %57)
  br i1 %55, label %assert_pass_2, label %assert_fail_2
assert_fail_2:
  call void @nyx_assert_fail(i8* %58)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_2
assert_pass_2:
  %59 = load { i64, i8* }*, { i64, i8* }** %45
  %60 = call i64 @nyx_array_get({ i64, i8* }* %59, i64 1)
  %61 = call i64 @nyx_array_get_tag({ i64, i8* }* %59, i64 1)
  %62 = call %nyx_string* @nyx_string_from_tagged(i64 %60, i64 %61, i64 1)
  %63 = getelementptr [3 x i8], [3 x i8]* @.str12, i32 0, i32 0
  %64 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str12.c, i8* %63)
  %65 = call %nyx_string* @nyx_string_concat(%nyx_string* %64, %nyx_string* %62)
  %66 = getelementptr [6 x i8], [6 x i8]* @.str13, i32 0, i32 0
  %67 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str13.c, i8* %66)
  %68 = call i1 @nyx_string_equals(%nyx_string* %65, %nyx_string* %67)
  %69 = getelementptr [17 x i8], [17 x i8]* @.str14, i32 0, i32 0
  %70 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str14.c, i8* %69)
  %71 = call i8* @nyx_string_to_cstr(%nyx_string* %70)
  br i1 %68, label %assert_pass_3, label %assert_fail_3
assert_fail_3:
  call void @nyx_assert_fail(i8* %71)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_3
assert_pass_3:
  %72 = load { i64, i8* }*, { i64, i8* }** %45
  %73 = call i64 @nyx_array_get({ i64, i8* }* %72, i64 2)
  %74 = call i64 @nyx_array_get_tag({ i64, i8* }* %72, i64 2)
  %75 = call %nyx_string* @nyx_string_from_tagged(i64 %73, i64 %74, i64 1)
  %76 = getelementptr [3 x i8], [3 x i8]* @.str15, i32 0, i32 0
  %77 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str15.c, i8* %76)
  %78 = call %nyx_string* @nyx_string_concat(%nyx_string* %77, %nyx_string* %75)
  %79 = getelementptr [6 x i8], [6 x i8]* @.str16, i32 0, i32 0
  %80 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str16.c, i8* %79)
  %81 = call i1 @nyx_string_equals(%nyx_string* %78, %nyx_string* %80)
  %82 = getelementptr [17 x i8], [17 x i8]* @.str17, i32 0, i32 0
  %83 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str17.c, i8* %82)
  %84 = call i8* @nyx_string_to_cstr(%nyx_string* %83)
  br i1 %81, label %assert_pass_4, label %assert_fail_4
assert_fail_4:
  call void @nyx_assert_fail(i8* %84)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_4
assert_pass_4:
  %85 = load { i64, i8* }*, { i64, i8* }** %45
  %86 = call i64 @nyx_array_get({ i64, i8* }* %85, i64 3)
  %87 = call i64 @nyx_array_get_tag({ i64, i8* }* %85, i64 3)
  %88 = call %nyx_string* @nyx_string_from_tagged(i64 %86, i64 %87, i64 1)
  %89 = getelementptr [3 x i8], [3 x i8]* @.str18, i32 0, i32 0
  %90 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str18.c, i8* %89)
  %91 = call %nyx_string* @nyx_string_concat(%nyx_string* %90, %nyx_string* %88)
  %92 = getelementptr [7 x i8], [7 x i8]* @.str19, i32 0, i32 0
  %93 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str19.c, i8* %92)
  %94 = call i1 @nyx_string_equals(%nyx_string* %91, %nyx_string* %93)
  %95 = getelementptr [17 x i8], [17 x i8]* @.str20, i32 0, i32 0
  %96 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str20.c, i8* %95)
  %97 = call i8* @nyx_string_to_cstr(%nyx_string* %96)
  br i1 %94, label %assert_pass_5, label %assert_fail_5
assert_fail_5:
  call void @nyx_assert_fail(i8* %97)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_5
assert_pass_5:
  %98 = getelementptr [29 x i8], [29 x i8]* @.str21, i32 0, i32 0
  %99 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str21.c, i8* %98)
  %100 = call i8* @nyx_string_to_cstr(%nyx_string* %99)
  call void @nyx_print_string(i8* %100)
  ret i64 0
}

define internal i64 @test_anotado_sigue_igual(
) {
  %101 = call { i64, i8* }* @nyx_array_new_ptr()
  %102 = getelementptr [2 x i8], [2 x i8]* @.str22, i32 0, i32 0
  %103 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str22.c, i8* %102)
  %104 = ptrtoint %nyx_string* %103 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %101, i64 %104, i64 2)
  %105 = getelementptr [2 x i8], [2 x i8]* @.str23, i32 0, i32 0
  %106 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str23.c, i8* %105)
  %107 = ptrtoint %nyx_string* %106 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %101, i64 %107, i64 2)
  call void @nyx_array_retag_unknown({ i64, i8* }* %101, i64 2)
  %108 = alloca { i64, i8* }*
  store { i64, i8* }* %101, { i64, i8* }** %108
  %109 = load { i64, i8* }*, { i64, i8* }** %108
  %110 = call i64 @nyx_array_get({ i64, i8* }* %109, i64 0)
  %111 = call i64 @nyx_array_get_tag({ i64, i8* }* %109, i64 0)
  %112 = call %nyx_string* @nyx_string_from_tagged(i64 %110, i64 %111, i64 2)
  %113 = getelementptr [3 x i8], [3 x i8]* @.str24, i32 0, i32 0
  %114 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str24.c, i8* %113)
  %115 = call %nyx_string* @nyx_string_concat(%nyx_string* %114, %nyx_string* %112)
  %116 = getelementptr [4 x i8], [4 x i8]* @.str25, i32 0, i32 0
  %117 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str25.c, i8* %116)
  %118 = call i1 @nyx_string_equals(%nyx_string* %115, %nyx_string* %117)
  %119 = getelementptr [17 x i8], [17 x i8]* @.str26, i32 0, i32 0
  %120 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str26.c, i8* %119)
  %121 = call i8* @nyx_string_to_cstr(%nyx_string* %120)
  br i1 %118, label %assert_pass_6, label %assert_fail_6
assert_fail_6:
  call void @nyx_assert_fail(i8* %121)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_6
assert_pass_6:
  %122 = call { i64, i8* }* @nyx_array_new_ptr()
  call void @nyx_array_push_tagged({ i64, i8* }* %122, i64 7, i64 1)
  call void @nyx_array_push_tagged({ i64, i8* }* %122, i64 8, i64 1)
  call void @nyx_array_retag_unknown({ i64, i8* }* %122, i64 1)
  %123 = alloca { i64, i8* }*
  store { i64, i8* }* %122, { i64, i8* }** %123
  %124 = load { i64, i8* }*, { i64, i8* }** %123
  %125 = call i64 @nyx_array_get({ i64, i8* }* %124, i64 1)
  %126 = call i64 @nyx_array_get_tag({ i64, i8* }* %124, i64 1)
  %127 = call %nyx_string* @nyx_string_from_tagged(i64 %125, i64 %126, i64 1)
  %128 = getelementptr [3 x i8], [3 x i8]* @.str27, i32 0, i32 0
  %129 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str27.c, i8* %128)
  %130 = call %nyx_string* @nyx_string_concat(%nyx_string* %129, %nyx_string* %127)
  %131 = getelementptr [4 x i8], [4 x i8]* @.str28, i32 0, i32 0
  %132 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str28.c, i8* %131)
  %133 = call i1 @nyx_string_equals(%nyx_string* %130, %nyx_string* %132)
  %134 = getelementptr [17 x i8], [17 x i8]* @.str29, i32 0, i32 0
  %135 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str29.c, i8* %134)
  %136 = call i8* @nyx_string_to_cstr(%nyx_string* %135)
  br i1 %133, label %assert_pass_7, label %assert_fail_7
assert_fail_7:
  call void @nyx_assert_fail(i8* %136)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_7
assert_pass_7:
  %137 = getelementptr [26 x i8], [26 x i8]* @.str30, i32 0, i32 0
  %138 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str30.c, i8* %137)
  %139 = call i8* @nyx_string_to_cstr(%nyx_string* %138)
  call void @nyx_print_string(i8* %139)
  ret i64 0
}

define internal i64 @test_indice_calculado(
) {
  %140 = call { i64, i8* }* @nyx_array_new_ptr()
  call void @nyx_array_push_tagged({ i64, i8* }* %140, i64 10, i64 1)
  %141 = getelementptr [5 x i8], [5 x i8]* @.str31, i32 0, i32 0
  %142 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str31.c, i8* %141)
  %143 = ptrtoint %nyx_string* %142 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %140, i64 %143, i64 2)
  call void @nyx_array_push_tagged({ i64, i8* }* %140, i64 12, i64 1)
  %144 = alloca { i64, i8* }*
  store { i64, i8* }* %140, { i64, i8* }** %144
  %145 = alloca i64
  store i64 0, i64* %145
  %146 = load i64, i64* %145
  %147 = add i64 %146, 1
  store i64 %147, i64* %145
  %148 = load { i64, i8* }*, { i64, i8* }** %144
  %149 = load i64, i64* %145
  %150 = call i64 @nyx_array_get({ i64, i8* }* %148, i64 %149)
  %151 = call i64 @nyx_array_get_tag({ i64, i8* }* %148, i64 %149)
  %152 = call %nyx_string* @nyx_string_from_tagged(i64 %150, i64 %151, i64 1)
  %153 = getelementptr [3 x i8], [3 x i8]* @.str32, i32 0, i32 0
  %154 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str32.c, i8* %153)
  %155 = call %nyx_string* @nyx_string_concat(%nyx_string* %154, %nyx_string* %152)
  %156 = getelementptr [7 x i8], [7 x i8]* @.str33, i32 0, i32 0
  %157 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str33.c, i8* %156)
  %158 = call i1 @nyx_string_equals(%nyx_string* %155, %nyx_string* %157)
  %159 = getelementptr [17 x i8], [17 x i8]* @.str34, i32 0, i32 0
  %160 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str34.c, i8* %159)
  %161 = call i8* @nyx_string_to_cstr(%nyx_string* %160)
  br i1 %158, label %assert_pass_8, label %assert_fail_8
assert_fail_8:
  call void @nyx_assert_fail(i8* %161)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_8
assert_pass_8:
  %162 = load { i64, i8* }*, { i64, i8* }** %144
  %163 = load i64, i64* %145
  %164 = add i64 %163, 1
  %165 = call i64 @nyx_array_get({ i64, i8* }* %162, i64 %164)
  %166 = call i64 @nyx_array_get_tag({ i64, i8* }* %162, i64 %164)
  %167 = call %nyx_string* @nyx_string_from_tagged(i64 %165, i64 %166, i64 1)
  %168 = getelementptr [3 x i8], [3 x i8]* @.str35, i32 0, i32 0
  %169 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str35.c, i8* %168)
  %170 = call %nyx_string* @nyx_string_concat(%nyx_string* %169, %nyx_string* %167)
  %171 = getelementptr [5 x i8], [5 x i8]* @.str36, i32 0, i32 0
  %172 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str36.c, i8* %171)
  %173 = call i1 @nyx_string_equals(%nyx_string* %170, %nyx_string* %172)
  %174 = getelementptr [17 x i8], [17 x i8]* @.str37, i32 0, i32 0
  %175 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str37.c, i8* %174)
  %176 = call i8* @nyx_string_to_cstr(%nyx_string* %175)
  br i1 %173, label %assert_pass_9, label %assert_fail_9
assert_fail_9:
  call void @nyx_assert_fail(i8* %176)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_9
assert_pass_9:
  %177 = getelementptr [20 x i8], [20 x i8]* @.str38, i32 0, i32 0
  %178 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str38.c, i8* %177)
  %179 = call i8* @nyx_string_to_cstr(%nyx_string* %178)
  call void @nyx_print_string(i8* %179)
  ret i64 0
}

define i64 @main(
i32 %argc, i8** %argv) {
  call void @nyx_set_args(i32 %argc, i8** %argv)
  %180 = call i64 @test_ambos_ordenes_coinciden()
  %181 = call i64 @test_cuatro_tipos_en_array_heterogeneo()
  %182 = call i64 @test_anotado_sigue_igual()
  %183 = call i64 @test_indice_calculado()
  %184 = getelementptr [28 x i8], [28 x i8]* @.str39, i32 0, i32 0
  %185 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str39.c, i8* %184)
  %186 = call i8* @nyx_string_to_cstr(%nyx_string* %185)
  call void @nyx_print_string(i8* %186)
  ret i64 0
}


attributes #0 = { returns_twice }

