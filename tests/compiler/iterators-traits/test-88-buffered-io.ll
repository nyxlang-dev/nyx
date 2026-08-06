source_filename = "/home/admin/nyx/lang/tests/compiler/iterators-traits/test-88-buffered-io.nx"
target triple = "x86_64-pc-linux-gnu"

@.str0 = private unnamed_addr constant [21 x i8] c"/tmp/nyx_test_88.txt\00"
@.str0.c = internal global %nyx_string* null
@.str1 = private unnamed_addr constant [2 x i8] c"w\00"
@.str1.c = internal global %nyx_string* null
@.str2 = private unnamed_addr constant [7 x i8] c"hello\0a\00"
@.str2.c = internal global %nyx_string* null
@.str3 = private unnamed_addr constant [7 x i8] c"world\0a\00"
@.str3.c = internal global %nyx_string* null
@.str4 = private unnamed_addr constant [5 x i8] c"nyx\0a\00"
@.str4.c = internal global %nyx_string* null
@.str5 = private unnamed_addr constant [21 x i8] c"/tmp/nyx_test_88.txt\00"
@.str5.c = internal global %nyx_string* null
@.str6 = private unnamed_addr constant [2 x i8] c"r\00"
@.str6.c = internal global %nyx_string* null
@.str7 = private unnamed_addr constant [21 x i8] c"/tmp/nyx_test_88.txt\00"
@.str7.c = internal global %nyx_string* null
@.str8 = private unnamed_addr constant [2 x i8] c"r\00"
@.str8.c = internal global %nyx_string* null
@.str9 = private unnamed_addr constant [5 x i8] c"/tmp\00"
@.str9.c = internal global %nyx_string* null
@.str10 = private unnamed_addr constant [21 x i8] c"/tmp/nyx_test_88.txt\00"
@.str10.c = internal global %nyx_string* null
@.str11 = private unnamed_addr constant [21 x i8] c"/tmp/nyx_test_88.txt\00"
@.str11.c = internal global %nyx_string* null
@.str12 = private unnamed_addr constant [5 x i8] c"done\00"
@.str12.c = internal global %nyx_string* null
@__nyx_test_failed = external global i64
@__nyx_test_mode = external global i64
; Nyx Compiler Bootstrap v3.0
; Generated from: /home/admin/nyx/lang/tests/compiler/iterators-traits/test-88-buffered-io.nx

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
  %1 = getelementptr [21 x i8], [21 x i8]* @.str0, i32 0, i32 0
  %2 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str0.c, i8* %1)
  %3 = getelementptr [2 x i8], [2 x i8]* @.str1, i32 0, i32 0
  %4 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1.c, i8* %3)
  %5 = call i8* @nyx_string_to_cstr(%nyx_string* %2)
  %6 = call i8* @nyx_string_to_cstr(%nyx_string* %4)
  %7 = call i8* @nyx_file_open(i8* %5, i8* %6)
  %8 = alloca i8*
  store i8* %7, i8** %8
  %9 = load i8*, i8** %8
  %10 = getelementptr [7 x i8], [7 x i8]* @.str2, i32 0, i32 0
  %11 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str2.c, i8* %10)
  %12 = call i64 @nyx_file_write_string(i8* %9, %nyx_string* %11)
  %13 = load i8*, i8** %8
  %14 = getelementptr [7 x i8], [7 x i8]* @.str3, i32 0, i32 0
  %15 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str3.c, i8* %14)
  %16 = call i64 @nyx_file_write_string(i8* %13, %nyx_string* %15)
  %17 = load i8*, i8** %8
  %18 = getelementptr [5 x i8], [5 x i8]* @.str4, i32 0, i32 0
  %19 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str4.c, i8* %18)
  %20 = call i64 @nyx_file_write_string(i8* %17, %nyx_string* %19)
  %21 = load i8*, i8** %8
  call void @nyx_file_close(i8* %21)
  %22 = getelementptr [21 x i8], [21 x i8]* @.str5, i32 0, i32 0
  %23 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str5.c, i8* %22)
  %24 = getelementptr [2 x i8], [2 x i8]* @.str6, i32 0, i32 0
  %25 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str6.c, i8* %24)
  %26 = call i8* @nyx_string_to_cstr(%nyx_string* %23)
  %27 = call i8* @nyx_string_to_cstr(%nyx_string* %25)
  %28 = call i8* @nyx_file_open(i8* %26, i8* %27)
  %29 = alloca i8*
  store i8* %28, i8** %29
  %30 = load i8*, i8** %29
  %31 = call %nyx_string* @nyx_file_read_line(i8* %30)
  %32 = alloca %nyx_string*
  store %nyx_string* %31, %nyx_string** %32
  %33 = load i8*, i8** %29
  %34 = call %nyx_string* @nyx_file_read_line(i8* %33)
  %35 = alloca %nyx_string*
  store %nyx_string* %34, %nyx_string** %35
  %36 = load i8*, i8** %29
  %37 = call %nyx_string* @nyx_file_read_line(i8* %36)
  %38 = alloca %nyx_string*
  store %nyx_string* %37, %nyx_string** %38
  %39 = load i8*, i8** %29
  call void @nyx_file_close(i8* %39)
  %40 = load %nyx_string*, %nyx_string** %32
  %41 = call i8* @nyx_string_to_cstr(%nyx_string* %40)
  call void @nyx_print_string(i8* %41)
  %42 = load %nyx_string*, %nyx_string** %35
  %43 = call i8* @nyx_string_to_cstr(%nyx_string* %42)
  call void @nyx_print_string(i8* %43)
  %44 = load %nyx_string*, %nyx_string** %38
  %45 = call i8* @nyx_string_to_cstr(%nyx_string* %44)
  call void @nyx_print_string(i8* %45)
  %46 = getelementptr [21 x i8], [21 x i8]* @.str7, i32 0, i32 0
  %47 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str7.c, i8* %46)
  %48 = getelementptr [2 x i8], [2 x i8]* @.str8, i32 0, i32 0
  %49 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str8.c, i8* %48)
  %50 = call i8* @nyx_string_to_cstr(%nyx_string* %47)
  %51 = call i8* @nyx_string_to_cstr(%nyx_string* %49)
  %52 = call i8* @nyx_file_open(i8* %50, i8* %51)
  %53 = alloca i8*
  store i8* %52, i8** %53
  %54 = load i8*, i8** %53
  %55 = call i64 @nyx_file_tell(i8* %54)
  %56 = alloca i64
  store i64 %55, i64* %56
  %57 = load i64, i64* %56
  call void @nyx_print_int(i64 %57)
  %58 = load i8*, i8** %53
  %59 = call i64 @nyx_file_seek(i8* %58, i64 6, i64 0)
  %60 = load i8*, i8** %53
  %61 = call %nyx_string* @nyx_file_read_line(i8* %60)
  %62 = alloca %nyx_string*
  store %nyx_string* %61, %nyx_string** %62
  %63 = load %nyx_string*, %nyx_string** %62
  %64 = call i8* @nyx_string_to_cstr(%nyx_string* %63)
  call void @nyx_print_string(i8* %64)
  %65 = load i8*, i8** %53
  call void @nyx_file_close(i8* %65)
  %66 = getelementptr [5 x i8], [5 x i8]* @.str9, i32 0, i32 0
  %67 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str9.c, i8* %66)
  %68 = call i8* @nyx_string_to_cstr(%nyx_string* %67)
  %69 = call { i64, i8* }* @nyx_readdir(i8* %68)
  %70 = alloca { i64, i8* }*
  store { i64, i8* }* %69, { i64, i8* }** %70
  %71 = load { i64, i8* }*, { i64, i8* }** %70
  %72 = call i64 @nyx_array_length({ i64, i8* }* %71)
  %73 = icmp sgt i64 %72, 0
  %74 = alloca i1
  store i1 %73, i1* %74
  %75 = load i1, i1* %74
  call void @nyx_print_bool(i1 %75)
  %76 = getelementptr [21 x i8], [21 x i8]* @.str10, i32 0, i32 0
  %77 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str10.c, i8* %76)
  %78 = call i8* @nyx_string_to_cstr(%nyx_string* %77)
  %79 = call i64 @nyx_remove(i8* %78)
  %80 = getelementptr [21 x i8], [21 x i8]* @.str11, i32 0, i32 0
  %81 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str11.c, i8* %80)
  %82 = call i8* @nyx_string_to_cstr(%nyx_string* %81)
  %83 = call i1 @nyx_file_exists(i8* %82)
  %84 = alloca i1
  store i1 %83, i1* %84
  %85 = load i1, i1* %84
  call void @nyx_print_bool(i1 %85)
  %86 = getelementptr [5 x i8], [5 x i8]* @.str12, i32 0, i32 0
  %87 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str12.c, i8* %86)
  %88 = call i8* @nyx_string_to_cstr(%nyx_string* %87)
  call void @nyx_print_string(i8* %88)
  ret i64 0
}


attributes #0 = { returns_twice }

