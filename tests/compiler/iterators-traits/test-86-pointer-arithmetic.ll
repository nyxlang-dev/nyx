source_filename = "/home/admin/nyx/lang/tests/compiler/iterators-traits/test-86-pointer-arithmetic.nx"
target triple = "x86_64-pc-linux-gnu"

@.str0 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
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
@.str8 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str8.c = internal global %nyx_string* null
@.str9 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str9.c = internal global %nyx_string* null
@.str10 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str10.c = internal global %nyx_string* null
@.str11 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str11.c = internal global %nyx_string* null
@.str12 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str12.c = internal global %nyx_string* null
@.str13 = private unnamed_addr constant [5 x i8] c"done\00"
@.str13.c = internal global %nyx_string* null
@__nyx_test_failed = external global i64
@__nyx_test_mode = external global i64
; Nyx Compiler Bootstrap v3.0
; Generated from: /home/admin/nyx/lang/tests/compiler/iterators-traits/test-86-pointer-arithmetic.nx

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
  %1 = getelementptr i64, i64* null, i32 1
  %2 = ptrtoint i64* %1 to i64
  %3 = mul i64 5, %2
  %4 = call i8* @malloc(i64 %3)
  %5 = bitcast i8* %4 to i64*
  %6 = alloca i64*
  store i64* %5, i64** %6
  %7 = load i64*, i64** %6
  store i64 10, i64* %7
  %8 = load i64*, i64** %6
  %10 = getelementptr i64, i64* %8, i64 1
  store i64 20, i64* %10
  %11 = load i64*, i64** %6
  %13 = getelementptr i64, i64* %11, i64 2
  store i64 30, i64* %13
  %14 = load i64*, i64** %6
  %16 = getelementptr i64, i64* %14, i64 3
  store i64 40, i64* %16
  %17 = load i64*, i64** %6
  %19 = getelementptr i64, i64* %17, i64 4
  store i64 50, i64* %19
  %20 = load i64*, i64** %6
  %21 = load i64, i64* %20
  call void @nyx_print_int(i64 %21)
  %22 = load i64*, i64** %6
  %23 = load i64, i64* %22
  %24 = icmp eq i64 %23, 10
  %25 = getelementptr [17 x i8], [17 x i8]* @.str0, i32 0, i32 0
  %26 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str0.c, i8* %25)
  %27 = call i8* @nyx_string_to_cstr(%nyx_string* %26)
  br i1 %24, label %assert_pass_0, label %assert_fail_0
assert_fail_0:
  call void @nyx_assert_fail(i8* %27)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_0
assert_pass_0:
  %28 = load i64*, i64** %6
  %30 = getelementptr i64, i64* %28, i64 1
  %31 = load i64, i64* %30
  call void @nyx_print_int(i64 %31)
  %32 = load i64*, i64** %6
  %34 = getelementptr i64, i64* %32, i64 1
  %35 = load i64, i64* %34
  %36 = icmp eq i64 %35, 20
  %37 = getelementptr [17 x i8], [17 x i8]* @.str1, i32 0, i32 0
  %38 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1.c, i8* %37)
  %39 = call i8* @nyx_string_to_cstr(%nyx_string* %38)
  br i1 %36, label %assert_pass_1, label %assert_fail_1
assert_fail_1:
  call void @nyx_assert_fail(i8* %39)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_1
assert_pass_1:
  %40 = load i64*, i64** %6
  %42 = getelementptr i64, i64* %40, i64 2
  %43 = load i64, i64* %42
  call void @nyx_print_int(i64 %43)
  %44 = load i64*, i64** %6
  %46 = getelementptr i64, i64* %44, i64 2
  %47 = load i64, i64* %46
  %48 = icmp eq i64 %47, 30
  %49 = getelementptr [17 x i8], [17 x i8]* @.str2, i32 0, i32 0
  %50 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str2.c, i8* %49)
  %51 = call i8* @nyx_string_to_cstr(%nyx_string* %50)
  br i1 %48, label %assert_pass_2, label %assert_fail_2
assert_fail_2:
  call void @nyx_assert_fail(i8* %51)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_2
assert_pass_2:
  %52 = load i64*, i64** %6
  %54 = getelementptr i64, i64* %52, i64 4
  %55 = load i64, i64* %54
  call void @nyx_print_int(i64 %55)
  %56 = load i64*, i64** %6
  %58 = getelementptr i64, i64* %56, i64 4
  %59 = load i64, i64* %58
  %60 = icmp eq i64 %59, 50
  %61 = getelementptr [17 x i8], [17 x i8]* @.str3, i32 0, i32 0
  %62 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str3.c, i8* %61)
  %63 = call i8* @nyx_string_to_cstr(%nyx_string* %62)
  br i1 %60, label %assert_pass_3, label %assert_fail_3
assert_fail_3:
  call void @nyx_assert_fail(i8* %63)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_3
assert_pass_3:
  %64 = load i64*, i64** %6
  %66 = getelementptr i64, i64* %64, i64 3
  %67 = load i64*, i64** %6
  %69 = ptrtoint i64* %66 to i64
  %70 = ptrtoint i64* %67 to i64
  %71 = sub i64 %69, %70
  %72 = getelementptr i64, i64* null, i32 1
  %73 = ptrtoint i64* %72 to i64
  %74 = sdiv i64 %71, %73
  %75 = alloca i64
  store i64 %74, i64* %75
  %76 = load i64, i64* %75
  call void @nyx_print_int(i64 %76)
  %77 = load i64, i64* %75
  %78 = icmp eq i64 %77, 3
  %79 = getelementptr [17 x i8], [17 x i8]* @.str4, i32 0, i32 0
  %80 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str4.c, i8* %79)
  %81 = call i8* @nyx_string_to_cstr(%nyx_string* %80)
  br i1 %78, label %assert_pass_4, label %assert_fail_4
assert_fail_4:
  call void @nyx_assert_fail(i8* %81)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_4
assert_pass_4:
  %82 = load i64*, i64** %6
  %84 = getelementptr i64, i64* %82, i64 4
  %85 = load i64*, i64** %6
  %87 = getelementptr i64, i64* %85, i64 1
  %89 = ptrtoint i64* %84 to i64
  %90 = ptrtoint i64* %87 to i64
  %91 = sub i64 %89, %90
  %92 = getelementptr i64, i64* null, i32 1
  %93 = ptrtoint i64* %92 to i64
  %94 = sdiv i64 %91, %93
  %95 = alloca i64
  store i64 %94, i64* %95
  %96 = load i64, i64* %95
  call void @nyx_print_int(i64 %96)
  %97 = load i64, i64* %95
  %98 = icmp eq i64 %97, 3
  %99 = getelementptr [17 x i8], [17 x i8]* @.str5, i32 0, i32 0
  %100 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str5.c, i8* %99)
  %101 = call i8* @nyx_string_to_cstr(%nyx_string* %100)
  br i1 %98, label %assert_pass_5, label %assert_fail_5
assert_fail_5:
  call void @nyx_assert_fail(i8* %101)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_5
assert_pass_5:
  %102 = load i64*, i64** %6
  %104 = getelementptr i64, i64* %102, i64 1
  %105 = alloca i64*
  store i64* %104, i64** %105
  %106 = load i64*, i64** %6
  %108 = getelementptr i64, i64* %106, i64 2
  %109 = alloca i64*
  store i64* %108, i64** %109
  %110 = load i64*, i64** %105
  %111 = load i64*, i64** %109
  %112 = icmp ult i64* %110, %111
  call void @nyx_print_bool(i1 %112)
  %113 = load i64*, i64** %105
  %114 = load i64*, i64** %109
  %115 = icmp ult i64* %113, %114
  %116 = getelementptr [17 x i8], [17 x i8]* @.str6, i32 0, i32 0
  %117 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str6.c, i8* %116)
  %118 = call i8* @nyx_string_to_cstr(%nyx_string* %117)
  br i1 %115, label %assert_pass_6, label %assert_fail_6
assert_fail_6:
  call void @nyx_assert_fail(i8* %118)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_6
assert_pass_6:
  %119 = load i64*, i64** %109
  %120 = load i64*, i64** %105
  %121 = icmp ugt i64* %119, %120
  call void @nyx_print_bool(i1 %121)
  %122 = load i64*, i64** %109
  %123 = load i64*, i64** %105
  %124 = icmp ugt i64* %122, %123
  %125 = getelementptr [17 x i8], [17 x i8]* @.str7, i32 0, i32 0
  %126 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str7.c, i8* %125)
  %127 = call i8* @nyx_string_to_cstr(%nyx_string* %126)
  br i1 %124, label %assert_pass_7, label %assert_fail_7
assert_fail_7:
  call void @nyx_assert_fail(i8* %127)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_7
assert_pass_7:
  %128 = load i64*, i64** %105
  %129 = load i64*, i64** %105
  %130 = icmp eq i64* %128, %129
  call void @nyx_print_bool(i1 %130)
  %131 = load i64*, i64** %105
  %132 = load i64*, i64** %105
  %133 = icmp eq i64* %131, %132
  %134 = getelementptr [17 x i8], [17 x i8]* @.str8, i32 0, i32 0
  %135 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str8.c, i8* %134)
  %136 = call i8* @nyx_string_to_cstr(%nyx_string* %135)
  br i1 %133, label %assert_pass_8, label %assert_fail_8
assert_fail_8:
  call void @nyx_assert_fail(i8* %136)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_8
assert_pass_8:
  %137 = load i64*, i64** %105
  %138 = load i64*, i64** %109
  %139 = icmp ne i64* %137, %138
  call void @nyx_print_bool(i1 %139)
  %140 = load i64*, i64** %105
  %141 = load i64*, i64** %109
  %142 = icmp ne i64* %140, %141
  %143 = getelementptr [17 x i8], [17 x i8]* @.str9, i32 0, i32 0
  %144 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str9.c, i8* %143)
  %145 = call i8* @nyx_string_to_cstr(%nyx_string* %144)
  br i1 %142, label %assert_pass_9, label %assert_fail_9
assert_fail_9:
  call void @nyx_assert_fail(i8* %145)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_9
assert_pass_9:
  %146 = load i64*, i64** %105
  %147 = load i64*, i64** %105
  %148 = icmp uge i64* %146, %147
  call void @nyx_print_bool(i1 %148)
  %149 = load i64*, i64** %105
  %150 = load i64*, i64** %105
  %151 = icmp uge i64* %149, %150
  %152 = getelementptr [17 x i8], [17 x i8]* @.str10, i32 0, i32 0
  %153 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str10.c, i8* %152)
  %154 = call i8* @nyx_string_to_cstr(%nyx_string* %153)
  br i1 %151, label %assert_pass_10, label %assert_fail_10
assert_fail_10:
  call void @nyx_assert_fail(i8* %154)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_10
assert_pass_10:
  %155 = load i64*, i64** %105
  %156 = load i64*, i64** %109
  %157 = icmp ule i64* %155, %156
  call void @nyx_print_bool(i1 %157)
  %158 = load i64*, i64** %105
  %159 = load i64*, i64** %109
  %160 = icmp ule i64* %158, %159
  %161 = getelementptr [17 x i8], [17 x i8]* @.str11, i32 0, i32 0
  %162 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str11.c, i8* %161)
  %163 = call i8* @nyx_string_to_cstr(%nyx_string* %162)
  br i1 %160, label %assert_pass_11, label %assert_fail_11
assert_fail_11:
  call void @nyx_assert_fail(i8* %163)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_11
assert_pass_11:
  %164 = load i64*, i64** %6
  %166 = getelementptr i64, i64* %164, i64 4
  %167 = alloca i64*
  store i64* %166, i64** %167
  %168 = load i64*, i64** %167
  %170 = sub i64 0, 2
  %171 = getelementptr i64, i64* %168, i64 %170
  %172 = alloca i64*
  store i64* %171, i64** %172
  %173 = load i64*, i64** %172
  %174 = load i64, i64* %173
  call void @nyx_print_int(i64 %174)
  %175 = load i64*, i64** %172
  %176 = load i64, i64* %175
  %177 = icmp eq i64 %176, 30
  %178 = getelementptr [17 x i8], [17 x i8]* @.str12, i32 0, i32 0
  %179 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str12.c, i8* %178)
  %180 = call i8* @nyx_string_to_cstr(%nyx_string* %179)
  br i1 %177, label %assert_pass_12, label %assert_fail_12
assert_fail_12:
  call void @nyx_assert_fail(i8* %180)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_12
assert_pass_12:
  %181 = load i64*, i64** %6
  %182 = bitcast i64* %181 to i8*
  call void @free(i8* %182)
  %183 = getelementptr [5 x i8], [5 x i8]* @.str13, i32 0, i32 0
  %184 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str13.c, i8* %183)
  %185 = call i8* @nyx_string_to_cstr(%nyx_string* %184)
  call void @nyx_print_string(i8* %185)
  ret i64 0
}


attributes #0 = { returns_twice }

