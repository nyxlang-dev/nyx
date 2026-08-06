source_filename = "/home/admin/nyx/lang/tests/compiler/systems/test-323-method-name-inttoptr.nx"
target triple = "x86_64-pc-linux-gnu"

%Caja = type { { i64, i8* }* }

@.str0 = private unnamed_addr constant [5 x i8] c"alfa\00"
@.str0.c = internal global %nyx_string* null
@.str1 = private unnamed_addr constant [5 x i8] c"beta\00"
@.str1.c = internal global %nyx_string* null
@.str2 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str2.c = internal global %nyx_string* null
@.str3 = private unnamed_addr constant [5 x i8] c"alfa\00"
@.str3.c = internal global %nyx_string* null
@.str4 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str4.c = internal global %nyx_string* null
@.str5 = private unnamed_addr constant [5 x i8] c"beta\00"
@.str5.c = internal global %nyx_string* null
@.str6 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str6.c = internal global %nyx_string* null
@.str7 = private unnamed_addr constant [11 x i8] c"hola mundo\00"
@.str7.c = internal global %nyx_string* null
@.str8 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str8.c = internal global %nyx_string* null
@.str9 = private unnamed_addr constant [6 x i8] c"mundo\00"
@.str9.c = internal global %nyx_string* null
@.str10 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str10.c = internal global %nyx_string* null
@.str11 = private unnamed_addr constant [5 x i8] c"hola\00"
@.str11.c = internal global %nyx_string* null
@.str12 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str12.c = internal global %nyx_string* null
@.str13 = private unnamed_addr constant [6 x i8] c"mundo\00"
@.str13.c = internal global %nyx_string* null
@.str14 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str14.c = internal global %nyx_string* null
@.str15 = private unnamed_addr constant [2 x i8] c"k\00"
@.str15.c = internal global %nyx_string* null
@.str16 = private unnamed_addr constant [11 x i8] c"hola mundo\00"
@.str16.c = internal global %nyx_string* null
@.str17 = private unnamed_addr constant [2 x i8] c"k\00"
@.str17.c = internal global %nyx_string* null
@.str18 = private unnamed_addr constant [6 x i8] c"mundo\00"
@.str18.c = internal global %nyx_string* null
@.str19 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str19.c = internal global %nyx_string* null
@.str20 = private unnamed_addr constant [2 x i8] c"k\00"
@.str20.c = internal global %nyx_string* null
@.str21 = private unnamed_addr constant [5 x i8] c"hola\00"
@.str21.c = internal global %nyx_string* null
@.str22 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str22.c = internal global %nyx_string* null
@.str23 = private unnamed_addr constant [4 x i8] c"dos\00"
@.str23.c = internal global %nyx_string* null
@.str24 = private unnamed_addr constant [2 x i8] c"d\00"
@.str24.c = internal global %nyx_string* null
@.str25 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str25.c = internal global %nyx_string* null
@.str26 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str26.c = internal global %nyx_string* null
@.str27 = private unnamed_addr constant [5 x i8] c"tres\00"
@.str27.c = internal global %nyx_string* null
@.str28 = private unnamed_addr constant [4 x i8] c"res\00"
@.str28.c = internal global %nyx_string* null
@.str29 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str29.c = internal global %nyx_string* null
@.str30 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str30.c = internal global %nyx_string* null
@.str31 = private unnamed_addr constant [3 x i8] c"v=\00"
@.str31.c = internal global %nyx_string* null
@.str32 = private unnamed_addr constant [5 x i8] c"v=42\00"
@.str32.c = internal global %nyx_string* null
@.str33 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str33.c = internal global %nyx_string* null
@.str34 = private unnamed_addr constant [6 x i8] c"texto\00"
@.str34.c = internal global %nyx_string* null
@.str35 = private unnamed_addr constant [4 x i8] c"ext\00"
@.str35.c = internal global %nyx_string* null
@.str36 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str36.c = internal global %nyx_string* null
@.str37 = private unnamed_addr constant [4 x i8] c"dos\00"
@.str37.c = internal global %nyx_string* null
@.str38 = private unnamed_addr constant [2 x i8] c"d\00"
@.str38.c = internal global %nyx_string* null
@.str39 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str39.c = internal global %nyx_string* null
@.str40 = private unnamed_addr constant [4 x i8] c"dos\00"
@.str40.c = internal global %nyx_string* null
@.str41 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str41.c = internal global %nyx_string* null
@.str42 = private unnamed_addr constant [4 x i8] c"dos\00"
@.str42.c = internal global %nyx_string* null
@.str43 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str43.c = internal global %nyx_string* null
@.str44 = private unnamed_addr constant [4 x i8] c"dos\00"
@.str44.c = internal global %nyx_string* null
@.str45 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str45.c = internal global %nyx_string* null
@.str46 = private unnamed_addr constant [2 x i8] c"d\00"
@.str46.c = internal global %nyx_string* null
@.str47 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str47.c = internal global %nyx_string* null
@.str48 = private unnamed_addr constant [2 x i8] c"d\00"
@.str48.c = internal global %nyx_string* null
@.str49 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str49.c = internal global %nyx_string* null
@.str50 = private unnamed_addr constant [2 x i8] c"d\00"
@.str50.c = internal global %nyx_string* null
@.str51 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str51.c = internal global %nyx_string* null
@.str52 = private unnamed_addr constant [5 x i8] c"done\00"
@.str52.c = internal global %nyx_string* null
@__nyx_test_failed = external global i64
@__nyx_test_mode = external global i64
; Nyx Compiler Bootstrap v3.0
; Generated from: /home/admin/nyx/lang/tests/compiler/systems/test-323-method-name-inttoptr.nx

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


define internal i64 @uno(
) {
  ret i64 1
}

define i64 @main(
i32 %argc, i8** %argv) {
  call void @nyx_set_args(i32 %argc, i8** %argv)
  %1 = call { i64, i8* }* @nyx_array_new_ptr()
  %2 = alloca { i64, i8* }*
  store { i64, i8* }* %1, { i64, i8* }** %2
  %3 = load { i64, i8* }*, { i64, i8* }** %2
  %4 = getelementptr [5 x i8], [5 x i8]* @.str0, i32 0, i32 0
  %5 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str0.c, i8* %4)
  %6 = ptrtoint %nyx_string* %5 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %3, i64 %6, i64 2)
  %7 = load { i64, i8* }*, { i64, i8* }** %2
  %8 = getelementptr [5 x i8], [5 x i8]* @.str1, i32 0, i32 0
  %9 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1.c, i8* %8)
  %10 = ptrtoint %nyx_string* %9 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %7, i64 %10, i64 2)
  %11 = call { i64, i8* }* @nyx_array_new_ptr()
  %12 = alloca { i64, i8* }*
  store { i64, i8* }* %11, { i64, i8* }** %12
  %13 = load { i64, i8* }*, { i64, i8* }** %12
  %14 = load { i64, i8* }*, { i64, i8* }** %2
  %15 = ptrtoint { i64, i8* }* %14 to i64
  call void @nyx_array_push({ i64, i8* }* %13, i64 %15)
  %16 = load { i64, i8* }*, { i64, i8* }** %12
  %17 = call i64 @nyx_array_get({ i64, i8* }* %16, i64 0)
  %18 = inttoptr i64 %17 to { i64, i8* }*
  %19 = call i64 @nyx_array_length({ i64, i8* }* %18)
  %20 = icmp eq i64 %19, 2
  %21 = getelementptr [17 x i8], [17 x i8]* @.str2, i32 0, i32 0
  %22 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str2.c, i8* %21)
  %23 = call i8* @nyx_string_to_cstr(%nyx_string* %22)
  br i1 %20, label %assert_pass_0, label %assert_fail_0
assert_fail_0:
  call void @nyx_assert_fail(i8* %23)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_0
assert_pass_0:
  %24 = load { i64, i8* }*, { i64, i8* }** %12
  %25 = call i64 @nyx_array_get({ i64, i8* }* %24, i64 0)
  %26 = inttoptr i64 %25 to { i64, i8* }*
  %27 = getelementptr [5 x i8], [5 x i8]* @.str3, i32 0, i32 0
  %28 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str3.c, i8* %27)
  %29 = ptrtoint %nyx_string* %28 to i64
  %30 = call i64 @nyx_array_contains_tagged({ i64, i8* }* %26, i64 %29, i64 2)
  %31 = trunc i64 %30 to i1
  %32 = getelementptr [17 x i8], [17 x i8]* @.str4, i32 0, i32 0
  %33 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str4.c, i8* %32)
  %34 = call i8* @nyx_string_to_cstr(%nyx_string* %33)
  br i1 %31, label %assert_pass_1, label %assert_fail_1
assert_fail_1:
  call void @nyx_assert_fail(i8* %34)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_1
assert_pass_1:
  %35 = load { i64, i8* }*, { i64, i8* }** %12
  %36 = call i64 @nyx_array_get({ i64, i8* }* %35, i64 0)
  %37 = inttoptr i64 %36 to { i64, i8* }*
  %38 = getelementptr [5 x i8], [5 x i8]* @.str5, i32 0, i32 0
  %39 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str5.c, i8* %38)
  %40 = ptrtoint %nyx_string* %39 to i64
  %41 = call i64 @nyx_array_index_of_tagged({ i64, i8* }* %37, i64 %40, i64 2)
  %42 = icmp eq i64 %41, 1
  %43 = getelementptr [17 x i8], [17 x i8]* @.str6, i32 0, i32 0
  %44 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str6.c, i8* %43)
  %45 = call i8* @nyx_string_to_cstr(%nyx_string* %44)
  br i1 %42, label %assert_pass_2, label %assert_fail_2
assert_fail_2:
  call void @nyx_assert_fail(i8* %45)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_2
assert_pass_2:
  %46 = call { i64, i8* }* @nyx_array_new_ptr()
  call void @nyx_array_retag_unknown({ i64, i8* }* %46, i64 2)
  %47 = alloca { i64, i8* }*
  store { i64, i8* }* %46, { i64, i8* }** %47
  %48 = load { i64, i8* }*, { i64, i8* }** %47
  %49 = getelementptr [11 x i8], [11 x i8]* @.str7, i32 0, i32 0
  %50 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str7.c, i8* %49)
  %51 = ptrtoint %nyx_string* %50 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %48, i64 %51, i64 2)
  %52 = load { i64, i8* }*, { i64, i8* }** %47
  %53 = call i64 @nyx_array_get_checked({ i64, i8* }* %52, i64 0, i64 2)
  %54 = inttoptr i64 %53 to %nyx_string*
  %55 = call i64 @nyx_string_byte_length(%nyx_string* %54)
  %56 = icmp eq i64 %55, 10
  %57 = getelementptr [17 x i8], [17 x i8]* @.str8, i32 0, i32 0
  %58 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str8.c, i8* %57)
  %59 = call i8* @nyx_string_to_cstr(%nyx_string* %58)
  br i1 %56, label %assert_pass_3, label %assert_fail_3
assert_fail_3:
  call void @nyx_assert_fail(i8* %59)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_3
assert_pass_3:
  %60 = load { i64, i8* }*, { i64, i8* }** %47
  %61 = call i64 @nyx_array_get_checked({ i64, i8* }* %60, i64 0, i64 2)
  %62 = inttoptr i64 %61 to %nyx_string*
  %63 = getelementptr [6 x i8], [6 x i8]* @.str9, i32 0, i32 0
  %64 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str9.c, i8* %63)
  %65 = call i1 @nyx_string_contains(%nyx_string* %62, %nyx_string* %64)
  %66 = getelementptr [17 x i8], [17 x i8]* @.str10, i32 0, i32 0
  %67 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str10.c, i8* %66)
  %68 = call i8* @nyx_string_to_cstr(%nyx_string* %67)
  br i1 %65, label %assert_pass_4, label %assert_fail_4
assert_fail_4:
  call void @nyx_assert_fail(i8* %68)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_4
assert_pass_4:
  %69 = load { i64, i8* }*, { i64, i8* }** %47
  %70 = call i64 @nyx_array_get_checked({ i64, i8* }* %69, i64 0, i64 2)
  %71 = inttoptr i64 %70 to %nyx_string*
  %72 = call %nyx_string* @nyx_string_substring(%nyx_string* %71, i64 0, i64 4)
  %73 = getelementptr [5 x i8], [5 x i8]* @.str11, i32 0, i32 0
  %74 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str11.c, i8* %73)
  %75 = call i1 @nyx_string_equals(%nyx_string* %72, %nyx_string* %74)
  %76 = getelementptr [17 x i8], [17 x i8]* @.str12, i32 0, i32 0
  %77 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str12.c, i8* %76)
  %78 = call i8* @nyx_string_to_cstr(%nyx_string* %77)
  br i1 %75, label %assert_pass_5, label %assert_fail_5
assert_fail_5:
  call void @nyx_assert_fail(i8* %78)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_5
assert_pass_5:
  %79 = load { i64, i8* }*, { i64, i8* }** %47
  %80 = call i64 @nyx_array_get_checked({ i64, i8* }* %79, i64 0, i64 2)
  %81 = inttoptr i64 %80 to %nyx_string*
  %82 = getelementptr [6 x i8], [6 x i8]* @.str13, i32 0, i32 0
  %83 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str13.c, i8* %82)
  %84 = call i64 @nyx_string_index_of(%nyx_string* %81, %nyx_string* %83)
  %85 = icmp eq i64 %84, 5
  %86 = getelementptr [17 x i8], [17 x i8]* @.str14, i32 0, i32 0
  %87 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str14.c, i8* %86)
  %88 = call i8* @nyx_string_to_cstr(%nyx_string* %87)
  br i1 %85, label %assert_pass_6, label %assert_fail_6
assert_fail_6:
  call void @nyx_assert_fail(i8* %88)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_6
assert_pass_6:
  %89 = call i8* @nyx_map_new(i32 0)
  %90 = alloca i8*
  store i8* %89, i8** %90
  %91 = load i8*, i8** %90
  %92 = getelementptr [2 x i8], [2 x i8]* @.str15, i32 0, i32 0
  %93 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str15.c, i8* %92)
  %94 = getelementptr [11 x i8], [11 x i8]* @.str16, i32 0, i32 0
  %95 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str16.c, i8* %94)
  %96 = call i8* @nyx_string_to_cstr(%nyx_string* %93)
  %97 = call i8* @nyx_string_to_cstr(%nyx_string* %95)
  call void @nyx_map_insert_str(i8* %91, i8* %96, i8* %97)
  %98 = load i8*, i8** %90
  %99 = getelementptr [2 x i8], [2 x i8]* @.str17, i32 0, i32 0
  %100 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str17.c, i8* %99)
  %101 = call i8* @nyx_string_to_cstr(%nyx_string* %100)
  %102 = call i8* @nyx_map_get_str(i8* %98, i8* %101)
  %103 = call %nyx_string* @nyx_string_from_cstr(i8* %102)
  %104 = getelementptr [6 x i8], [6 x i8]* @.str18, i32 0, i32 0
  %105 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str18.c, i8* %104)
  %106 = call i1 @nyx_string_contains(%nyx_string* %103, %nyx_string* %105)
  %107 = getelementptr [17 x i8], [17 x i8]* @.str19, i32 0, i32 0
  %108 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str19.c, i8* %107)
  %109 = call i8* @nyx_string_to_cstr(%nyx_string* %108)
  br i1 %106, label %assert_pass_7, label %assert_fail_7
assert_fail_7:
  call void @nyx_assert_fail(i8* %109)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_7
assert_pass_7:
  %110 = load i8*, i8** %90
  %111 = getelementptr [2 x i8], [2 x i8]* @.str20, i32 0, i32 0
  %112 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str20.c, i8* %111)
  %113 = call i8* @nyx_string_to_cstr(%nyx_string* %112)
  %114 = call i8* @nyx_map_get_str(i8* %110, i8* %113)
  %115 = call %nyx_string* @nyx_string_from_cstr(i8* %114)
  %116 = call %nyx_string* @nyx_string_substring(%nyx_string* %115, i64 0, i64 4)
  %117 = getelementptr [5 x i8], [5 x i8]* @.str21, i32 0, i32 0
  %118 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str21.c, i8* %117)
  %119 = call i1 @nyx_string_equals(%nyx_string* %116, %nyx_string* %118)
  %120 = getelementptr [17 x i8], [17 x i8]* @.str22, i32 0, i32 0
  %121 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str22.c, i8* %120)
  %122 = call i8* @nyx_string_to_cstr(%nyx_string* %121)
  br i1 %119, label %assert_pass_8, label %assert_fail_8
assert_fail_8:
  call void @nyx_assert_fail(i8* %122)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_8
assert_pass_8:
  %123 = call { i64, i8* }* @nyx_array_new_ptr()
  call void @nyx_array_push_tagged({ i64, i8* }* %123, i64 1, i64 1)
  %124 = getelementptr [4 x i8], [4 x i8]* @.str23, i32 0, i32 0
  %125 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str23.c, i8* %124)
  %126 = ptrtoint %nyx_string* %125 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %123, i64 %126, i64 2)
  %127 = alloca { i64, i8* }*
  store { i64, i8* }* %123, { i64, i8* }** %127
  %128 = load { i64, i8* }*, { i64, i8* }** %127
  %129 = call i64 @nyx_array_get_checked({ i64, i8* }* %128, i64 1, i64 2)
  %130 = inttoptr i64 %129 to %nyx_string*
  %131 = getelementptr [2 x i8], [2 x i8]* @.str24, i32 0, i32 0
  %132 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str24.c, i8* %131)
  %133 = call i1 @nyx_string_contains(%nyx_string* %130, %nyx_string* %132)
  %134 = getelementptr [17 x i8], [17 x i8]* @.str25, i32 0, i32 0
  %135 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str25.c, i8* %134)
  %136 = call i8* @nyx_string_to_cstr(%nyx_string* %135)
  br i1 %133, label %assert_pass_9, label %assert_fail_9
assert_fail_9:
  call void @nyx_assert_fail(i8* %136)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_9
assert_pass_9:
  %137 = load { i64, i8* }*, { i64, i8* }** %127
  %138 = call i64 @nyx_array_get_checked({ i64, i8* }* %137, i64 1, i64 2)
  %139 = inttoptr i64 %138 to %nyx_string*
  %140 = call i64 @nyx_string_byte_length(%nyx_string* %139)
  %141 = icmp eq i64 %140, 3
  %142 = getelementptr [17 x i8], [17 x i8]* @.str26, i32 0, i32 0
  %143 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str26.c, i8* %142)
  %144 = call i8* @nyx_string_to_cstr(%nyx_string* %143)
  br i1 %141, label %assert_pass_10, label %assert_fail_10
assert_fail_10:
  call void @nyx_assert_fail(i8* %144)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_10
assert_pass_10:
  %145 = call { i64, i8* }* @nyx_array_new_ptr()
  call void @nyx_array_push_tagged({ i64, i8* }* %145, i64 7, i64 1)
  %146 = getelementptr [5 x i8], [5 x i8]* @.str27, i32 0, i32 0
  %147 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str27.c, i8* %146)
  %148 = ptrtoint %nyx_string* %147 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %145, i64 %148, i64 2)
  %149 = alloca { i64, i8* }*
  store { i64, i8* }* %145, { i64, i8* }** %149
  %150 = load { i64, i8* }*, { i64, i8* }** %149
  %151 = call i64 @nyx_array_get_checked({ i64, i8* }* %150, i64 1, i64 2)
  %152 = inttoptr i64 %151 to %nyx_string*
  %153 = getelementptr [4 x i8], [4 x i8]* @.str28, i32 0, i32 0
  %154 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str28.c, i8* %153)
  %155 = call i64 @nyx_string_index_of(%nyx_string* %152, %nyx_string* %154)
  %156 = icmp eq i64 %155, 1
  %157 = getelementptr [17 x i8], [17 x i8]* @.str29, i32 0, i32 0
  %158 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str29.c, i8* %157)
  %159 = call i8* @nyx_string_to_cstr(%nyx_string* %158)
  br i1 %156, label %assert_pass_11, label %assert_fail_11
assert_fail_11:
  call void @nyx_assert_fail(i8* %159)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_11
assert_pass_11:
  %160 = call { i64, i8* }* @nyx_array_new_ptr()
  call void @nyx_array_retag_unknown({ i64, i8* }* %160, i64 1)
  %161 = alloca { i64, i8* }*
  store { i64, i8* }* %160, { i64, i8* }** %161
  %162 = alloca i64
  store i64 42, i64* %162
  %163 = load { i64, i8* }*, { i64, i8* }** %161
  %164 = load i64, i64* %162
  call void @nyx_array_push_tagged({ i64, i8* }* %163, i64 %164, i64 1)
  %165 = load { i64, i8* }*, { i64, i8* }** %161
  %166 = call i64 @nyx_array_get({ i64, i8* }* %165, i64 0)
  %167 = icmp eq i64 %166, 42
  %168 = getelementptr [17 x i8], [17 x i8]* @.str30, i32 0, i32 0
  %169 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str30.c, i8* %168)
  %170 = call i8* @nyx_string_to_cstr(%nyx_string* %169)
  br i1 %167, label %assert_pass_12, label %assert_fail_12
assert_fail_12:
  call void @nyx_assert_fail(i8* %170)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_12
assert_pass_12:
  %171 = getelementptr [3 x i8], [3 x i8]* @.str31, i32 0, i32 0
  %172 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str31.c, i8* %171)
  %173 = load { i64, i8* }*, { i64, i8* }** %161
  %174 = call i64 @nyx_array_get({ i64, i8* }* %173, i64 0)
  %175 = call %nyx_string* @nyx_string_from_int(i64 %174)
  %176 = call %nyx_string* @nyx_string_concat(%nyx_string* %172, %nyx_string* %175)
  %177 = getelementptr [5 x i8], [5 x i8]* @.str32, i32 0, i32 0
  %178 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str32.c, i8* %177)
  %179 = call i1 @nyx_string_equals(%nyx_string* %176, %nyx_string* %178)
  %180 = getelementptr [17 x i8], [17 x i8]* @.str33, i32 0, i32 0
  %181 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str33.c, i8* %180)
  %182 = call i8* @nyx_string_to_cstr(%nyx_string* %181)
  br i1 %179, label %assert_pass_13, label %assert_fail_13
assert_fail_13:
  call void @nyx_assert_fail(i8* %182)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_13
assert_pass_13:
  %183 = call { i64, i8* }* @nyx_array_new_ptr()
  %184 = alloca { i64, i8* }*
  store { i64, i8* }* %183, { i64, i8* }** %184
  %185 = getelementptr [6 x i8], [6 x i8]* @.str34, i32 0, i32 0
  %186 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str34.c, i8* %185)
  %187 = alloca %nyx_string*
  store %nyx_string* %186, %nyx_string** %187
  %188 = load { i64, i8* }*, { i64, i8* }** %184
  %189 = load %nyx_string*, %nyx_string** %187
  %190 = ptrtoint %nyx_string* %189 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %188, i64 %190, i64 2)
  %191 = load { i64, i8* }*, { i64, i8* }** %184
  %192 = call i64 @nyx_array_get_checked({ i64, i8* }* %191, i64 0, i64 2)
  %193 = inttoptr i64 %192 to %nyx_string*
  %194 = getelementptr [4 x i8], [4 x i8]* @.str35, i32 0, i32 0
  %195 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str35.c, i8* %194)
  %196 = call i1 @nyx_string_contains(%nyx_string* %193, %nyx_string* %195)
  %197 = getelementptr [17 x i8], [17 x i8]* @.str36, i32 0, i32 0
  %198 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str36.c, i8* %197)
  %199 = call i8* @nyx_string_to_cstr(%nyx_string* %198)
  br i1 %196, label %assert_pass_14, label %assert_fail_14
assert_fail_14:
  call void @nyx_assert_fail(i8* %199)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_14
assert_pass_14:
  %200 = call { i64, i8* }* @nyx_array_new_ptr()
  call void @nyx_array_push_tagged({ i64, i8* }* %200, i64 1, i64 1)
  %201 = getelementptr [4 x i8], [4 x i8]* @.str37, i32 0, i32 0
  %202 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str37.c, i8* %201)
  %203 = ptrtoint %nyx_string* %202 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %200, i64 %203, i64 2)
  %204 = alloca { i64, i8* }*
  store { i64, i8* }* %200, { i64, i8* }** %204
  %205 = call { i64, i8* }* @nyx_array_new_ptr()
  call void @nyx_array_push_tagged({ i64, i8* }* %205, i64 9, i64 1)
  %206 = alloca { i64, i8* }*
  store { i64, i8* }* %205, { i64, i8* }** %206
  %207 = load { i64, i8* }*, { i64, i8* }** %206
  %208 = load { i64, i8* }*, { i64, i8* }** %204
  %209 = call i64 @nyx_array_get({ i64, i8* }* %208, i64 1)
  %210 = load { i64, i8* }*, { i64, i8* }** %204
  %211 = call i64 @nyx_array_get_tag({ i64, i8* }* %210, i64 1)
  call void @nyx_array_push_tagged({ i64, i8* }* %207, i64 %209, i64 %211)
  %212 = load { i64, i8* }*, { i64, i8* }** %206
  %213 = call i64 @nyx_array_get_checked({ i64, i8* }* %212, i64 1, i64 2)
  %214 = inttoptr i64 %213 to %nyx_string*
  %215 = getelementptr [2 x i8], [2 x i8]* @.str38, i32 0, i32 0
  %216 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str38.c, i8* %215)
  %217 = call i1 @nyx_string_contains(%nyx_string* %214, %nyx_string* %216)
  %218 = getelementptr [17 x i8], [17 x i8]* @.str39, i32 0, i32 0
  %219 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str39.c, i8* %218)
  %220 = call i8* @nyx_string_to_cstr(%nyx_string* %219)
  br i1 %217, label %assert_pass_15, label %assert_fail_15
assert_fail_15:
  call void @nyx_assert_fail(i8* %220)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_15
assert_pass_15:
  %221 = load { i64, i8* }*, { i64, i8* }** %206
  %222 = call i64 @nyx_array_get({ i64, i8* }* %221, i64 1)
  %223 = getelementptr [4 x i8], [4 x i8]* @.str40, i32 0, i32 0
  %224 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str40.c, i8* %223)
  %225 = inttoptr i64 %222 to %nyx_string*
  %226 = call i1 @nyx_string_equals(%nyx_string* %225, %nyx_string* %224)
  %227 = getelementptr [17 x i8], [17 x i8]* @.str41, i32 0, i32 0
  %228 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str41.c, i8* %227)
  %229 = call i8* @nyx_string_to_cstr(%nyx_string* %228)
  br i1 %226, label %assert_pass_16, label %assert_fail_16
assert_fail_16:
  call void @nyx_assert_fail(i8* %229)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_16
assert_pass_16:
  %230 = call { i64, i8* }* @nyx_array_new_ptr()
  call void @nyx_array_push_tagged({ i64, i8* }* %230, i64 9, i64 1)
  %231 = alloca { i64, i8* }*
  store { i64, i8* }* %230, { i64, i8* }** %231
  %232 = load { i64, i8* }*, { i64, i8* }** %231
  %233 = load { i64, i8* }*, { i64, i8* }** %204
  %234 = call i64 @nyx_array_get({ i64, i8* }* %233, i64 1)
  %235 = load { i64, i8* }*, { i64, i8* }** %204
  %236 = call i64 @nyx_array_get_tag({ i64, i8* }* %235, i64 1)
  call void @nyx_array_unshift({ i64, i8* }* %232, i64 %234)
  call void @nyx_array_set_tagged({ i64, i8* }* %232, i64 0, i64 %234, i64 %236)
  %237 = load { i64, i8* }*, { i64, i8* }** %231
  %238 = call i64 @nyx_array_get({ i64, i8* }* %237, i64 0)
  %239 = getelementptr [4 x i8], [4 x i8]* @.str42, i32 0, i32 0
  %240 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str42.c, i8* %239)
  %241 = inttoptr i64 %238 to %nyx_string*
  %242 = call i1 @nyx_string_equals(%nyx_string* %241, %nyx_string* %240)
  %243 = getelementptr [17 x i8], [17 x i8]* @.str43, i32 0, i32 0
  %244 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str43.c, i8* %243)
  %245 = call i8* @nyx_string_to_cstr(%nyx_string* %244)
  br i1 %242, label %assert_pass_17, label %assert_fail_17
assert_fail_17:
  call void @nyx_assert_fail(i8* %245)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_17
assert_pass_17:
  %246 = call { i64, i8* }* @nyx_array_new_ptr()
  call void @nyx_array_push_tagged({ i64, i8* }* %246, i64 5, i64 1)
  %247 = alloca { i64, i8* }*
  store { i64, i8* }* %246, { i64, i8* }** %247
  %248 = load { i64, i8* }*, { i64, i8* }** %247
  %249 = load { i64, i8* }*, { i64, i8* }** %204
  %250 = call i64 @nyx_array_get({ i64, i8* }* %249, i64 1)
  %251 = load { i64, i8* }*, { i64, i8* }** %204
  %252 = call i64 @nyx_array_get_tag({ i64, i8* }* %251, i64 1)
  call void @nyx_array_insert({ i64, i8* }* %248, i64 1, i64 %250)
  call void @nyx_array_set_tagged({ i64, i8* }* %248, i64 1, i64 %250, i64 %252)
  %253 = load { i64, i8* }*, { i64, i8* }** %247
  %254 = call i64 @nyx_array_get({ i64, i8* }* %253, i64 1)
  %255 = getelementptr [4 x i8], [4 x i8]* @.str44, i32 0, i32 0
  %256 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str44.c, i8* %255)
  %257 = inttoptr i64 %254 to %nyx_string*
  %258 = call i1 @nyx_string_equals(%nyx_string* %257, %nyx_string* %256)
  %259 = getelementptr [17 x i8], [17 x i8]* @.str45, i32 0, i32 0
  %260 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str45.c, i8* %259)
  %261 = call i8* @nyx_string_to_cstr(%nyx_string* %260)
  br i1 %258, label %assert_pass_18, label %assert_fail_18
assert_fail_18:
  call void @nyx_assert_fail(i8* %261)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_18
assert_pass_18:
  %262 = getelementptr %Caja, %Caja* null, i32 1
  %263 = ptrtoint %Caja* %262 to i64
  %264 = call i8* @GC_malloc(i64 %263)
  %265 = bitcast i8* %264 to %Caja*
  %266 = load { i64, i8* }*, { i64, i8* }** %204
  %267 = getelementptr %Caja, %Caja* %265, i32 0, i32 0
  store { i64, i8* }* %266, { i64, i8* }** %267
  %268 = load %Caja, %Caja* %265
  %269 = alloca %Caja
  store %Caja %268, %Caja* %269
  %270 = call { i64, i8* }* @nyx_array_new_ptr()
  call void @nyx_array_push_tagged({ i64, i8* }* %270, i64 9, i64 1)
  %271 = alloca { i64, i8* }*
  store { i64, i8* }* %270, { i64, i8* }** %271
  %272 = load { i64, i8* }*, { i64, i8* }** %271
  %273 = getelementptr %Caja, %Caja* %269, i32 0, i32 0
  %274 = load { i64, i8* }*, { i64, i8* }** %273
  %275 = call i64 @nyx_array_get({ i64, i8* }* %274, i64 1)
  call void @nyx_array_push({ i64, i8* }* %272, i64 %275)
  %276 = load { i64, i8* }*, { i64, i8* }** %271
  %277 = call i64 @nyx_array_get_checked({ i64, i8* }* %276, i64 1, i64 2)
  %278 = inttoptr i64 %277 to %nyx_string*
  %279 = getelementptr [2 x i8], [2 x i8]* @.str46, i32 0, i32 0
  %280 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str46.c, i8* %279)
  %281 = call i1 @nyx_string_contains(%nyx_string* %278, %nyx_string* %280)
  %282 = getelementptr [17 x i8], [17 x i8]* @.str47, i32 0, i32 0
  %283 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str47.c, i8* %282)
  %284 = call i8* @nyx_string_to_cstr(%nyx_string* %283)
  br i1 %281, label %assert_pass_19, label %assert_fail_19
assert_fail_19:
  call void @nyx_assert_fail(i8* %284)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_19
assert_pass_19:
  %285 = call { i64, i8* }* @nyx_array_new_ptr()
  call void @nyx_array_push_tagged({ i64, i8* }* %285, i64 9, i64 1)
  %286 = alloca { i64, i8* }*
  store { i64, i8* }* %285, { i64, i8* }** %286
  %287 = load { i64, i8* }*, { i64, i8* }** %286
  %288 = load { i64, i8* }*, { i64, i8* }** %204
  %289 = call i64 @uno()
  %290 = call i64 @nyx_array_get({ i64, i8* }* %288, i64 %289)
  call void @nyx_array_push({ i64, i8* }* %287, i64 %290)
  %291 = load { i64, i8* }*, { i64, i8* }** %286
  %292 = call i64 @nyx_array_get_checked({ i64, i8* }* %291, i64 1, i64 2)
  %293 = inttoptr i64 %292 to %nyx_string*
  %294 = getelementptr [2 x i8], [2 x i8]* @.str48, i32 0, i32 0
  %295 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str48.c, i8* %294)
  %296 = call i1 @nyx_string_contains(%nyx_string* %293, %nyx_string* %295)
  %297 = getelementptr [17 x i8], [17 x i8]* @.str49, i32 0, i32 0
  %298 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str49.c, i8* %297)
  %299 = call i8* @nyx_string_to_cstr(%nyx_string* %298)
  br i1 %296, label %assert_pass_20, label %assert_fail_20
assert_fail_20:
  call void @nyx_assert_fail(i8* %299)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_20
assert_pass_20:
  %300 = call { i64, i8* }* @nyx_array_new_ptr()
  %301 = alloca { i64, i8* }*
  store { i64, i8* }* %300, { i64, i8* }** %301
  %302 = load { i64, i8* }*, { i64, i8* }** %301
  %303 = load { i64, i8* }*, { i64, i8* }** %204
  %304 = ptrtoint { i64, i8* }* %303 to i64
  call void @nyx_array_push({ i64, i8* }* %302, i64 %304)
  %305 = call { i64, i8* }* @nyx_array_new_ptr()
  call void @nyx_array_push_tagged({ i64, i8* }* %305, i64 9, i64 1)
  %306 = alloca { i64, i8* }*
  store { i64, i8* }* %305, { i64, i8* }** %306
  %307 = load { i64, i8* }*, { i64, i8* }** %306
  %308 = load { i64, i8* }*, { i64, i8* }** %301
  %309 = call i64 @nyx_array_get({ i64, i8* }* %308, i64 0)
  %310 = inttoptr i64 %309 to { i64, i8* }*
  %311 = call i64 @nyx_array_get({ i64, i8* }* %310, i64 1)
  call void @nyx_array_push({ i64, i8* }* %307, i64 %311)
  %312 = load { i64, i8* }*, { i64, i8* }** %306
  %313 = call i64 @nyx_array_get_checked({ i64, i8* }* %312, i64 1, i64 2)
  %314 = inttoptr i64 %313 to %nyx_string*
  %315 = getelementptr [2 x i8], [2 x i8]* @.str50, i32 0, i32 0
  %316 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str50.c, i8* %315)
  %317 = call i1 @nyx_string_contains(%nyx_string* %314, %nyx_string* %316)
  %318 = getelementptr [17 x i8], [17 x i8]* @.str51, i32 0, i32 0
  %319 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str51.c, i8* %318)
  %320 = call i8* @nyx_string_to_cstr(%nyx_string* %319)
  br i1 %317, label %assert_pass_21, label %assert_fail_21
assert_fail_21:
  call void @nyx_assert_fail(i8* %320)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_21
assert_pass_21:
  %321 = getelementptr [5 x i8], [5 x i8]* @.str52, i32 0, i32 0
  %322 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str52.c, i8* %321)
  %323 = call i8* @nyx_string_to_cstr(%nyx_string* %322)
  call void @nyx_print_string(i8* %323)
  ret i64 0
}


attributes #0 = { returns_twice }

