source_filename = "/home/admin/nyx/lang/tests/compiler/systems/test-324-field-string-length-property.nx"
target triple = "x86_64-pc-linux-gnu"

%S = type { %nyx_string* }

%Caja = type { { i64, i8* }* }

%Anidada = type { %S }

@.str0 = private unnamed_addr constant [5 x i8] c"hola\00"
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
@.str7 = private unnamed_addr constant [8 x i8] c"abcdefg\00"
@.str7.c = internal global %nyx_string* null
@.str8 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str8.c = internal global %nyx_string* null
@.str9 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str9.c = internal global %nyx_string* null
@.str10 = private unnamed_addr constant [1 x i8] c"\00"
@.str10.c = internal global %nyx_string* null
@.str11 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str11.c = internal global %nyx_string* null
@.str12 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str12.c = internal global %nyx_string* null
@.str13 = private unnamed_addr constant [3 x i8] c"ok\00"
@.str13.c = internal global %nyx_string* null
@__nyx_test_failed = external global i64
@__nyx_test_mode = external global i64
; Nyx Compiler Bootstrap v3.0
; Generated from: /home/admin/nyx/lang/tests/compiler/systems/test-324-field-string-length-property.nx

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
  %1 = getelementptr %S, %S* null, i32 1
  %2 = ptrtoint %S* %1 to i64
  %3 = call i8* @GC_malloc(i64 %2)
  %4 = bitcast i8* %3 to %S*
  %5 = getelementptr [5 x i8], [5 x i8]* @.str0, i32 0, i32 0
  %6 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str0.c, i8* %5)
  %7 = getelementptr %S, %S* %4, i32 0, i32 0
  store %nyx_string* %6, %nyx_string** %7
  %8 = load %S, %S* %4
  %9 = alloca %S
  store %S %8, %S* %9
  %10 = getelementptr %S, %S* %9, i32 0, i32 0
  %11 = load %nyx_string*, %nyx_string** %10
  %12 = alloca %nyx_string*
  store %nyx_string* %11, %nyx_string** %12
  %13 = load %nyx_string*, %nyx_string** %12
  %14 = call i64 @nyx_string_byte_length(%nyx_string* %13)
  %15 = icmp eq i64 %14, 4
  %16 = getelementptr [17 x i8], [17 x i8]* @.str1, i32 0, i32 0
  %17 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1.c, i8* %16)
  %18 = call i8* @nyx_string_to_cstr(%nyx_string* %17)
  br i1 %15, label %assert_pass_0, label %assert_fail_0
assert_fail_0:
  call void @nyx_assert_fail(i8* %18)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_0
assert_pass_0:
  %19 = getelementptr %S, %S* %9, i32 0, i32 0
  %20 = load %nyx_string*, %nyx_string** %19
  %21 = call i64 @nyx_string_byte_length(%nyx_string* %20)
  %22 = icmp eq i64 %21, 4
  %23 = getelementptr [17 x i8], [17 x i8]* @.str2, i32 0, i32 0
  %24 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str2.c, i8* %23)
  %25 = call i8* @nyx_string_to_cstr(%nyx_string* %24)
  br i1 %22, label %assert_pass_1, label %assert_fail_1
assert_fail_1:
  call void @nyx_assert_fail(i8* %25)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_1
assert_pass_1:
  %26 = getelementptr %S, %S* %9, i32 0, i32 0
  %27 = load %nyx_string*, %nyx_string** %26
  %28 = getelementptr %S, %S* %9, i32 0, i32 0
  %29 = load %nyx_string*, %nyx_string** %28
  %30 = call i64 @nyx_string_byte_length(%nyx_string* %29)
  %31 = icmp eq i64 %30, 4
  %32 = getelementptr [17 x i8], [17 x i8]* @.str3, i32 0, i32 0
  %33 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str3.c, i8* %32)
  %34 = call i8* @nyx_string_to_cstr(%nyx_string* %33)
  br i1 %31, label %assert_pass_2, label %assert_fail_2
assert_fail_2:
  call void @nyx_assert_fail(i8* %34)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_2
assert_pass_2:
  %35 = load %nyx_string*, %nyx_string** %12
  %36 = call i64 @nyx_string_byte_length(%nyx_string* %35)
  %37 = call %nyx_string* @nyx_string_from_int(i64 %36)
  %38 = call i8* @nyx_string_to_cstr(%nyx_string* %37)
  call void @nyx_print_string(i8* %38)
  %39 = getelementptr %S, %S* %9, i32 0, i32 0
  %40 = load %nyx_string*, %nyx_string** %39
  %41 = call i64 @nyx_string_byte_length(%nyx_string* %40)
  %42 = call %nyx_string* @nyx_string_from_int(i64 %41)
  %43 = call i8* @nyx_string_to_cstr(%nyx_string* %42)
  call void @nyx_print_string(i8* %43)
  %44 = getelementptr %S, %S* %9, i32 0, i32 0
  %45 = load %nyx_string*, %nyx_string** %44
  %46 = getelementptr %S, %S* %9, i32 0, i32 0
  %47 = load %nyx_string*, %nyx_string** %46
  %48 = call i64 @nyx_string_byte_length(%nyx_string* %47)
  %49 = call %nyx_string* @nyx_string_from_int(i64 %48)
  %50 = call i8* @nyx_string_to_cstr(%nyx_string* %49)
  call void @nyx_print_string(i8* %50)
  %51 = getelementptr %Caja, %Caja* null, i32 1
  %52 = ptrtoint %Caja* %51 to i64
  %53 = call i8* @GC_malloc(i64 %52)
  %54 = bitcast i8* %53 to %Caja*
  %55 = call { i64, i8* }* @nyx_array_new_ptr()
  call void @nyx_array_push_tagged({ i64, i8* }* %55, i64 1, i64 1)
  call void @nyx_array_push_tagged({ i64, i8* }* %55, i64 2, i64 1)
  call void @nyx_array_push_tagged({ i64, i8* }* %55, i64 3, i64 1)
  %56 = getelementptr %Caja, %Caja* %54, i32 0, i32 0
  store { i64, i8* }* %55, { i64, i8* }** %56
  %57 = load %Caja, %Caja* %54
  %58 = alloca %Caja
  store %Caja %57, %Caja* %58
  %59 = getelementptr %Caja, %Caja* %58, i32 0, i32 0
  %60 = load { i64, i8* }*, { i64, i8* }** %59
  %61 = alloca { i64, i8* }*
  store { i64, i8* }* %60, { i64, i8* }** %61
  %62 = load { i64, i8* }*, { i64, i8* }** %61
  %63 = call i64 @nyx_array_length({ i64, i8* }* %62)
  %64 = icmp eq i64 %63, 3
  %65 = getelementptr [17 x i8], [17 x i8]* @.str4, i32 0, i32 0
  %66 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str4.c, i8* %65)
  %67 = call i8* @nyx_string_to_cstr(%nyx_string* %66)
  br i1 %64, label %assert_pass_3, label %assert_fail_3
assert_fail_3:
  call void @nyx_assert_fail(i8* %67)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_3
assert_pass_3:
  %68 = getelementptr %Caja, %Caja* %58, i32 0, i32 0
  %69 = load { i64, i8* }*, { i64, i8* }** %68
  %70 = call i64 @nyx_array_length({ i64, i8* }* %69)
  %71 = icmp eq i64 %70, 3
  %72 = getelementptr [17 x i8], [17 x i8]* @.str5, i32 0, i32 0
  %73 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str5.c, i8* %72)
  %74 = call i8* @nyx_string_to_cstr(%nyx_string* %73)
  br i1 %71, label %assert_pass_4, label %assert_fail_4
assert_fail_4:
  call void @nyx_assert_fail(i8* %74)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_4
assert_pass_4:
  %75 = getelementptr %Caja, %Caja* %58, i32 0, i32 0
  %76 = load { i64, i8* }*, { i64, i8* }** %75
  %77 = call i64 @nyx_array_length({ i64, i8* }* %76)
  %78 = icmp eq i64 %77, 3
  %79 = getelementptr [17 x i8], [17 x i8]* @.str6, i32 0, i32 0
  %80 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str6.c, i8* %79)
  %81 = call i8* @nyx_string_to_cstr(%nyx_string* %80)
  br i1 %78, label %assert_pass_5, label %assert_fail_5
assert_fail_5:
  call void @nyx_assert_fail(i8* %81)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_5
assert_pass_5:
  %82 = getelementptr %Caja, %Caja* %58, i32 0, i32 0
  %83 = load { i64, i8* }*, { i64, i8* }** %82
  %84 = call i64 @nyx_array_length({ i64, i8* }* %83)
  %85 = call %nyx_string* @nyx_string_from_int(i64 %84)
  %86 = call i8* @nyx_string_to_cstr(%nyx_string* %85)
  call void @nyx_print_string(i8* %86)
  %87 = getelementptr %Anidada, %Anidada* null, i32 1
  %88 = ptrtoint %Anidada* %87 to i64
  %89 = call i8* @GC_malloc(i64 %88)
  %90 = bitcast i8* %89 to %Anidada*
  %91 = getelementptr %S, %S* null, i32 1
  %92 = ptrtoint %S* %91 to i64
  %93 = call i8* @GC_malloc(i64 %92)
  %94 = bitcast i8* %93 to %S*
  %95 = getelementptr [8 x i8], [8 x i8]* @.str7, i32 0, i32 0
  %96 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str7.c, i8* %95)
  %97 = getelementptr %S, %S* %94, i32 0, i32 0
  store %nyx_string* %96, %nyx_string** %97
  %98 = load %S, %S* %94
  %99 = getelementptr %Anidada, %Anidada* %90, i32 0, i32 0
  store %S %98, %S* %99
  %100 = load %Anidada, %Anidada* %90
  %101 = alloca %Anidada
  store %Anidada %100, %Anidada* %101
  %102 = getelementptr %Anidada, %Anidada* %101, i32 0, i32 0
  %103 = load %S, %S* %102
  %104 = alloca %S
  store %S %103, %S* %104
  %105 = getelementptr %S, %S* %104, i32 0, i32 0
  %106 = load %nyx_string*, %nyx_string** %105
  %107 = call i64 @nyx_string_byte_length(%nyx_string* %106)
  %108 = icmp eq i64 %107, 7
  %109 = getelementptr [17 x i8], [17 x i8]* @.str8, i32 0, i32 0
  %110 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str8.c, i8* %109)
  %111 = call i8* @nyx_string_to_cstr(%nyx_string* %110)
  br i1 %108, label %assert_pass_6, label %assert_fail_6
assert_fail_6:
  call void @nyx_assert_fail(i8* %111)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_6
assert_pass_6:
  %112 = getelementptr %Anidada, %Anidada* %101, i32 0, i32 0
  %113 = load %S, %S* %112
  %114 = alloca %S
  store %S %113, %S* %114
  %115 = getelementptr %S, %S* %114, i32 0, i32 0
  %116 = load %nyx_string*, %nyx_string** %115
  %117 = getelementptr %Anidada, %Anidada* %101, i32 0, i32 0
  %118 = load %S, %S* %117
  %119 = alloca %S
  store %S %118, %S* %119
  %120 = getelementptr %S, %S* %119, i32 0, i32 0
  %121 = load %nyx_string*, %nyx_string** %120
  %122 = call i64 @nyx_string_byte_length(%nyx_string* %121)
  %123 = icmp eq i64 %122, 7
  %124 = getelementptr [17 x i8], [17 x i8]* @.str9, i32 0, i32 0
  %125 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str9.c, i8* %124)
  %126 = call i8* @nyx_string_to_cstr(%nyx_string* %125)
  br i1 %123, label %assert_pass_7, label %assert_fail_7
assert_fail_7:
  call void @nyx_assert_fail(i8* %126)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_7
assert_pass_7:
  %127 = getelementptr %Anidada, %Anidada* %101, i32 0, i32 0
  %128 = load %S, %S* %127
  %129 = alloca %S
  store %S %128, %S* %129
  %130 = getelementptr %S, %S* %129, i32 0, i32 0
  %131 = load %nyx_string*, %nyx_string** %130
  %132 = call i64 @nyx_string_byte_length(%nyx_string* %131)
  %133 = call %nyx_string* @nyx_string_from_int(i64 %132)
  %134 = call i8* @nyx_string_to_cstr(%nyx_string* %133)
  call void @nyx_print_string(i8* %134)
  %135 = getelementptr %S, %S* null, i32 1
  %136 = ptrtoint %S* %135 to i64
  %137 = call i8* @GC_malloc(i64 %136)
  %138 = bitcast i8* %137 to %S*
  %139 = getelementptr [1 x i8], [1 x i8]* @.str10, i32 0, i32 0
  %140 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str10.c, i8* %139)
  %141 = getelementptr %S, %S* %138, i32 0, i32 0
  store %nyx_string* %140, %nyx_string** %141
  %142 = load %S, %S* %138
  %143 = alloca %S
  store %S %142, %S* %143
  %144 = getelementptr %S, %S* %143, i32 0, i32 0
  %145 = load %nyx_string*, %nyx_string** %144
  %146 = call i64 @nyx_string_byte_length(%nyx_string* %145)
  %147 = icmp eq i64 %146, 0
  %148 = getelementptr [17 x i8], [17 x i8]* @.str11, i32 0, i32 0
  %149 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str11.c, i8* %148)
  %150 = call i8* @nyx_string_to_cstr(%nyx_string* %149)
  br i1 %147, label %assert_pass_8, label %assert_fail_8
assert_fail_8:
  call void @nyx_assert_fail(i8* %150)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_8
assert_pass_8:
  %151 = getelementptr %S, %S* %143, i32 0, i32 0
  %152 = load %nyx_string*, %nyx_string** %151
  %153 = getelementptr %S, %S* %143, i32 0, i32 0
  %154 = load %nyx_string*, %nyx_string** %153
  %155 = call i64 @nyx_string_byte_length(%nyx_string* %154)
  %156 = icmp eq i64 %155, 0
  %157 = getelementptr [17 x i8], [17 x i8]* @.str12, i32 0, i32 0
  %158 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str12.c, i8* %157)
  %159 = call i8* @nyx_string_to_cstr(%nyx_string* %158)
  br i1 %156, label %assert_pass_9, label %assert_fail_9
assert_fail_9:
  call void @nyx_assert_fail(i8* %159)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_9
assert_pass_9:
  %160 = getelementptr %S, %S* %143, i32 0, i32 0
  %161 = load %nyx_string*, %nyx_string** %160
  %162 = call i64 @nyx_string_byte_length(%nyx_string* %161)
  %163 = call %nyx_string* @nyx_string_from_int(i64 %162)
  %164 = call i8* @nyx_string_to_cstr(%nyx_string* %163)
  call void @nyx_print_string(i8* %164)
  %165 = getelementptr [3 x i8], [3 x i8]* @.str13, i32 0, i32 0
  %166 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str13.c, i8* %165)
  %167 = call i8* @nyx_string_to_cstr(%nyx_string* %166)
  call void @nyx_print_string(i8* %167)
  ret i64 0
}


attributes #0 = { returns_twice }

