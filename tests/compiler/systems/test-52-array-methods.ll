source_filename = "/home/admin/nyx/lang/tests/compiler/systems/test-52-array-methods.nx"
target triple = "x86_64-pc-linux-gnu"

@.str0 = private unnamed_addr constant [6 x i8] c"hello\00"
@.str0.c = internal global %nyx_string* null
@.str1 = private unnamed_addr constant [10 x i8] c"beautiful\00"
@.str1.c = internal global %nyx_string* null
@.str2 = private unnamed_addr constant [6 x i8] c"world\00"
@.str2.c = internal global %nyx_string* null
@.str3 = private unnamed_addr constant [2 x i8] c" \00"
@.str3.c = internal global %nyx_string* null
@.str4 = private unnamed_addr constant [2 x i8] c"a\00"
@.str4.c = internal global %nyx_string* null
@.str5 = private unnamed_addr constant [2 x i8] c"b\00"
@.str5.c = internal global %nyx_string* null
@.str6 = private unnamed_addr constant [2 x i8] c"c\00"
@.str6.c = internal global %nyx_string* null
@.str7 = private unnamed_addr constant [2 x i8] c",\00"
@.str7.c = internal global %nyx_string* null
@.str8 = private unnamed_addr constant [30 x i8] c"all array method tests passed\00"
@.str8.c = internal global %nyx_string* null
@__nyx_test_failed = external global i64
@__nyx_test_mode = external global i64
; Nyx Compiler Bootstrap v3.0
; Generated from: /home/admin/nyx/lang/tests/compiler/systems/test-52-array-methods.nx

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
  call void @nyx_array_push_tagged({ i64, i8* }* %1, i64 10, i64 1)
  call void @nyx_array_push_tagged({ i64, i8* }* %1, i64 20, i64 1)
  call void @nyx_array_push_tagged({ i64, i8* }* %1, i64 30, i64 1)
  call void @nyx_array_push_tagged({ i64, i8* }* %1, i64 40, i64 1)
  call void @nyx_array_push_tagged({ i64, i8* }* %1, i64 50, i64 1)
  %2 = alloca { i64, i8* }*
  store { i64, i8* }* %1, { i64, i8* }** %2
  %3 = load { i64, i8* }*, { i64, i8* }** %2
  %4 = call { i64, i8* }* @nyx_array_slice({ i64, i8* }* %3, i64 1, i64 4)
  %5 = alloca { i64, i8* }*
  store { i64, i8* }* %4, { i64, i8* }** %5
  %6 = load { i64, i8* }*, { i64, i8* }** %5
  %7 = call i64 @nyx_array_length({ i64, i8* }* %6)
  call void @nyx_print_int(i64 %7)
  %8 = load { i64, i8* }*, { i64, i8* }** %5
  %9 = call i64 @nyx_array_get({ i64, i8* }* %8, i64 0)
  %10 = call i64 @nyx_array_get_tag({ i64, i8* }* %8, i64 0)
  %11 = call %nyx_string* @nyx_string_from_tagged(i64 %9, i64 %10, i64 0)
  %12 = call i8* @nyx_string_to_cstr(%nyx_string* %11)
  call void @nyx_print_string(i8* %12)
  %13 = load { i64, i8* }*, { i64, i8* }** %5
  %14 = call i64 @nyx_array_get({ i64, i8* }* %13, i64 1)
  %15 = call i64 @nyx_array_get_tag({ i64, i8* }* %13, i64 1)
  %16 = call %nyx_string* @nyx_string_from_tagged(i64 %14, i64 %15, i64 0)
  %17 = call i8* @nyx_string_to_cstr(%nyx_string* %16)
  call void @nyx_print_string(i8* %17)
  %18 = load { i64, i8* }*, { i64, i8* }** %5
  %19 = call i64 @nyx_array_get({ i64, i8* }* %18, i64 2)
  %20 = call i64 @nyx_array_get_tag({ i64, i8* }* %18, i64 2)
  %21 = call %nyx_string* @nyx_string_from_tagged(i64 %19, i64 %20, i64 0)
  %22 = call i8* @nyx_string_to_cstr(%nyx_string* %21)
  call void @nyx_print_string(i8* %22)
  %23 = call { i64, i8* }* @nyx_array_new_ptr()
  call void @nyx_array_push_tagged({ i64, i8* }* %23, i64 1, i64 1)
  call void @nyx_array_push_tagged({ i64, i8* }* %23, i64 2, i64 1)
  call void @nyx_array_push_tagged({ i64, i8* }* %23, i64 3, i64 1)
  call void @nyx_array_push_tagged({ i64, i8* }* %23, i64 4, i64 1)
  call void @nyx_array_push_tagged({ i64, i8* }* %23, i64 5, i64 1)
  %24 = alloca { i64, i8* }*
  store { i64, i8* }* %23, { i64, i8* }** %24
  %25 = load { i64, i8* }*, { i64, i8* }** %24
  call void @nyx_array_reverse({ i64, i8* }* %25)
  %26 = load { i64, i8* }*, { i64, i8* }** %24
  %27 = call i64 @nyx_array_get({ i64, i8* }* %26, i64 0)
  %28 = call i64 @nyx_array_get_tag({ i64, i8* }* %26, i64 0)
  %29 = call %nyx_string* @nyx_string_from_tagged(i64 %27, i64 %28, i64 1)
  %30 = call i8* @nyx_string_to_cstr(%nyx_string* %29)
  call void @nyx_print_string(i8* %30)
  %31 = load { i64, i8* }*, { i64, i8* }** %24
  %32 = call i64 @nyx_array_get({ i64, i8* }* %31, i64 4)
  %33 = call i64 @nyx_array_get_tag({ i64, i8* }* %31, i64 4)
  %34 = call %nyx_string* @nyx_string_from_tagged(i64 %32, i64 %33, i64 1)
  %35 = call i8* @nyx_string_to_cstr(%nyx_string* %34)
  call void @nyx_print_string(i8* %35)
  %36 = call { i64, i8* }* @nyx_array_new_ptr()
  call void @nyx_array_push_tagged({ i64, i8* }* %36, i64 10, i64 1)
  call void @nyx_array_push_tagged({ i64, i8* }* %36, i64 20, i64 1)
  call void @nyx_array_push_tagged({ i64, i8* }* %36, i64 30, i64 1)
  call void @nyx_array_push_tagged({ i64, i8* }* %36, i64 40, i64 1)
  %37 = alloca { i64, i8* }*
  store { i64, i8* }* %36, { i64, i8* }** %37
  %38 = load { i64, i8* }*, { i64, i8* }** %37
  %39 = call i64 @nyx_array_index_of({ i64, i8* }* %38, i64 30)
  %40 = alloca i64
  store i64 %39, i64* %40
  %41 = load i64, i64* %40
  call void @nyx_print_int(i64 %41)
  %42 = load { i64, i8* }*, { i64, i8* }** %37
  %43 = call i64 @nyx_array_index_of({ i64, i8* }* %42, i64 99)
  %44 = alloca i64
  store i64 %43, i64* %44
  %45 = load i64, i64* %44
  call void @nyx_print_int(i64 %45)
  %46 = call { i64, i8* }* @nyx_array_new_ptr()
  %47 = getelementptr [6 x i8], [6 x i8]* @.str0, i32 0, i32 0
  %48 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str0.c, i8* %47)
  %49 = ptrtoint %nyx_string* %48 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %46, i64 %49, i64 2)
  %50 = getelementptr [10 x i8], [10 x i8]* @.str1, i32 0, i32 0
  %51 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1.c, i8* %50)
  %52 = ptrtoint %nyx_string* %51 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %46, i64 %52, i64 2)
  %53 = getelementptr [6 x i8], [6 x i8]* @.str2, i32 0, i32 0
  %54 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str2.c, i8* %53)
  %55 = ptrtoint %nyx_string* %54 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %46, i64 %55, i64 2)
  %56 = alloca { i64, i8* }*
  store { i64, i8* }* %46, { i64, i8* }** %56
  %57 = load { i64, i8* }*, { i64, i8* }** %56
  %58 = getelementptr [2 x i8], [2 x i8]* @.str3, i32 0, i32 0
  %59 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str3.c, i8* %58)
  %60 = call %nyx_string* @nyx_string_join({ i64, i8* }* %57, %nyx_string* %59)
  %61 = alloca %nyx_string*
  store %nyx_string* %60, %nyx_string** %61
  %62 = load %nyx_string*, %nyx_string** %61
  %63 = call i8* @nyx_string_to_cstr(%nyx_string* %62)
  call void @nyx_print_string(i8* %63)
  %64 = call { i64, i8* }* @nyx_array_new_ptr()
  %65 = getelementptr [2 x i8], [2 x i8]* @.str4, i32 0, i32 0
  %66 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str4.c, i8* %65)
  %67 = ptrtoint %nyx_string* %66 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %64, i64 %67, i64 2)
  %68 = getelementptr [2 x i8], [2 x i8]* @.str5, i32 0, i32 0
  %69 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str5.c, i8* %68)
  %70 = ptrtoint %nyx_string* %69 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %64, i64 %70, i64 2)
  %71 = getelementptr [2 x i8], [2 x i8]* @.str6, i32 0, i32 0
  %72 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str6.c, i8* %71)
  %73 = ptrtoint %nyx_string* %72 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %64, i64 %73, i64 2)
  %74 = alloca { i64, i8* }*
  store { i64, i8* }* %64, { i64, i8* }** %74
  %75 = load { i64, i8* }*, { i64, i8* }** %74
  %76 = getelementptr [2 x i8], [2 x i8]* @.str7, i32 0, i32 0
  %77 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str7.c, i8* %76)
  %78 = call %nyx_string* @nyx_string_join({ i64, i8* }* %75, %nyx_string* %77)
  %79 = alloca %nyx_string*
  store %nyx_string* %78, %nyx_string** %79
  %80 = load %nyx_string*, %nyx_string** %79
  %81 = call i8* @nyx_string_to_cstr(%nyx_string* %80)
  call void @nyx_print_string(i8* %81)
  %82 = getelementptr [30 x i8], [30 x i8]* @.str8, i32 0, i32 0
  %83 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str8.c, i8* %82)
  %84 = call i8* @nyx_string_to_cstr(%nyx_string* %83)
  call void @nyx_print_string(i8* %84)
  ret i64 0
}


attributes #0 = { returns_twice }

