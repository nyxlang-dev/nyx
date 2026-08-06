source_filename = "/home/admin/nyx/lang/tests/compiler/systems/test-321-field-assign-ref-generic.nx"
target triple = "x86_64-pc-linux-gnu"

%Punto = type { i64, i64 }

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
@.str7 = private unnamed_addr constant [2 x i8] c"k\00"
@.str7.c = internal global %nyx_string* null
@.str8 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str8.c = internal global %nyx_string* null
@.str9 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str9.c = internal global %nyx_string* null
@.str10 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str10.c = internal global %nyx_string* null
@.str11 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str11.c = internal global %nyx_string* null
@.str12 = private unnamed_addr constant [28 x i8] c"field-assign-ref-generic OK\00"
@.str12.c = internal global %nyx_string* null
@__nyx_test_failed = external global i64
@__nyx_test_mode = external global i64
%Contenedor_int = type { i64, i64 }

%Par_int_Map_String_int = type { i64, i8* }

; Nyx Compiler Bootstrap v3.0
; Generated from: /home/admin/nyx/lang/tests/compiler/systems/test-321-field-assign-ref-generic.nx

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
  %1 = getelementptr %Punto, %Punto* null, i32 1
  %2 = ptrtoint %Punto* %1 to i64
  %3 = call i8* @GC_malloc(i64 %2)
  %4 = bitcast i8* %3 to %Punto*
  %5 = getelementptr %Punto, %Punto* %4, i32 0, i32 0
  store i64 10, i64* %5
  %6 = getelementptr %Punto, %Punto* %4, i32 0, i32 1
  store i64 20, i64* %6
  %7 = load %Punto, %Punto* %4
  %8 = alloca %Punto
  store %Punto %7, %Punto* %8
  %9 = call i64 @bump(%Punto* %8)
  %10 = getelementptr %Punto, %Punto* %8, i32 0, i32 0
  %11 = load i64, i64* %10
  %12 = icmp eq i64 %11, 11
  %13 = getelementptr [17 x i8], [17 x i8]* @.str0, i32 0, i32 0
  %14 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str0.c, i8* %13)
  %15 = call i8* @nyx_string_to_cstr(%nyx_string* %14)
  br i1 %12, label %assert_pass_0, label %assert_fail_0
assert_fail_0:
  call void @nyx_assert_fail(i8* %15)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_0
assert_pass_0:
  %16 = getelementptr %Punto, %Punto* %8, i32 0, i32 1
  %17 = load i64, i64* %16
  %18 = icmp eq i64 %17, 20
  %19 = getelementptr [17 x i8], [17 x i8]* @.str1, i32 0, i32 0
  %20 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1.c, i8* %19)
  %21 = call i8* @nyx_string_to_cstr(%nyx_string* %20)
  br i1 %18, label %assert_pass_1, label %assert_fail_1
assert_fail_1:
  call void @nyx_assert_fail(i8* %21)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_1
assert_pass_1:
  %22 = call i64 @leer_x(%Punto* %8)
  %23 = icmp eq i64 %22, 11
  %24 = getelementptr [17 x i8], [17 x i8]* @.str2, i32 0, i32 0
  %25 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str2.c, i8* %24)
  %26 = call i8* @nyx_string_to_cstr(%nyx_string* %25)
  br i1 %23, label %assert_pass_2, label %assert_fail_2
assert_fail_2:
  call void @nyx_assert_fail(i8* %26)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_2
assert_pass_2:
  %27 = call i64 @bump(%Punto* %8)
  %28 = getelementptr %Punto, %Punto* %8, i32 0, i32 0
  %29 = load i64, i64* %28
  %30 = icmp eq i64 %29, 12
  %31 = getelementptr [17 x i8], [17 x i8]* @.str3, i32 0, i32 0
  %32 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str3.c, i8* %31)
  %33 = call i8* @nyx_string_to_cstr(%nyx_string* %32)
  br i1 %30, label %assert_pass_3, label %assert_fail_3
assert_fail_3:
  call void @nyx_assert_fail(i8* %33)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_3
assert_pass_3:
  %34 = getelementptr %Contenedor_int, %Contenedor_int* null, i32 1
  %35 = ptrtoint %Contenedor_int* %34 to i64
  %36 = call i8* @GC_malloc(i64 %35)
  %37 = bitcast i8* %36 to %Contenedor_int*
  %38 = getelementptr %Contenedor_int, %Contenedor_int* %37, i32 0, i32 0
  store i64 1, i64* %38
  %39 = getelementptr %Contenedor_int, %Contenedor_int* %37, i32 0, i32 1
  store i64 7, i64* %39
  %40 = load %Contenedor_int, %Contenedor_int* %37
  %41 = alloca %Contenedor_int
  store %Contenedor_int %40, %Contenedor_int* %41
  %42 = call i64 @leer_c(%Contenedor_int* %41)
  %43 = icmp eq i64 %42, 1
  %44 = getelementptr [17 x i8], [17 x i8]* @.str4, i32 0, i32 0
  %45 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str4.c, i8* %44)
  %46 = call i8* @nyx_string_to_cstr(%nyx_string* %45)
  br i1 %43, label %assert_pass_4, label %assert_fail_4
assert_fail_4:
  call void @nyx_assert_fail(i8* %46)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_4
assert_pass_4:
  %47 = call i64 @poner(%Contenedor_int* %41, i64 42)
  %48 = getelementptr %Contenedor_int, %Contenedor_int* %41, i32 0, i32 0
  %49 = load i64, i64* %48
  %50 = icmp eq i64 %49, 42
  %51 = getelementptr [17 x i8], [17 x i8]* @.str5, i32 0, i32 0
  %52 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str5.c, i8* %51)
  %53 = call i8* @nyx_string_to_cstr(%nyx_string* %52)
  br i1 %50, label %assert_pass_5, label %assert_fail_5
assert_fail_5:
  call void @nyx_assert_fail(i8* %53)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_5
assert_pass_5:
  %54 = getelementptr %Contenedor_int, %Contenedor_int* %41, i32 0, i32 1
  %55 = load i64, i64* %54
  %56 = icmp eq i64 %55, 7
  %57 = getelementptr [17 x i8], [17 x i8]* @.str6, i32 0, i32 0
  %58 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str6.c, i8* %57)
  %59 = call i8* @nyx_string_to_cstr(%nyx_string* %58)
  br i1 %56, label %assert_pass_6, label %assert_fail_6
assert_fail_6:
  call void @nyx_assert_fail(i8* %59)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_6
assert_pass_6:
  %60 = call i8* @nyx_map_new(i32 0)
  %61 = alloca i8*
  store i8* %60, i8** %61
  %62 = load i8*, i8** %61
  %63 = getelementptr [2 x i8], [2 x i8]* @.str7, i32 0, i32 0
  %64 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str7.c, i8* %63)
  %65 = call i8* @nyx_string_to_cstr(%nyx_string* %64)
  call void @nyx_map_insert_int(i8* %62, i8* %65, i64 5)
  %66 = getelementptr %Par_int_Map_String_int, %Par_int_Map_String_int* null, i32 1
  %67 = ptrtoint %Par_int_Map_String_int* %66 to i64
  %68 = call i8* @GC_malloc(i64 %67)
  %69 = bitcast i8* %68 to %Par_int_Map_String_int*
  %70 = getelementptr %Par_int_Map_String_int, %Par_int_Map_String_int* %69, i32 0, i32 0
  store i64 1, i64* %70
  %71 = load i8*, i8** %61
  %72 = getelementptr %Par_int_Map_String_int, %Par_int_Map_String_int* %69, i32 0, i32 1
  store i8* %71, i8** %72
  %73 = load %Par_int_Map_String_int, %Par_int_Map_String_int* %69
  %74 = alloca %Par_int_Map_String_int
  store %Par_int_Map_String_int %73, %Par_int_Map_String_int* %74
  %75 = call i64 @leer_izq(%Par_int_Map_String_int* %74)
  %76 = icmp eq i64 %75, 1
  %77 = getelementptr [17 x i8], [17 x i8]* @.str8, i32 0, i32 0
  %78 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str8.c, i8* %77)
  %79 = call i8* @nyx_string_to_cstr(%nyx_string* %78)
  br i1 %76, label %assert_pass_7, label %assert_fail_7
assert_fail_7:
  call void @nyx_assert_fail(i8* %79)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_7
assert_pass_7:
  %80 = call i64 @set_izq(%Par_int_Map_String_int* %74)
  %81 = getelementptr %Par_int_Map_String_int, %Par_int_Map_String_int* %74, i32 0, i32 0
  %82 = load i64, i64* %81
  %83 = icmp eq i64 %82, 9
  %84 = getelementptr [17 x i8], [17 x i8]* @.str9, i32 0, i32 0
  %85 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str9.c, i8* %84)
  %86 = call i8* @nyx_string_to_cstr(%nyx_string* %85)
  br i1 %83, label %assert_pass_8, label %assert_fail_8
assert_fail_8:
  call void @nyx_assert_fail(i8* %86)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_8
assert_pass_8:
  %87 = getelementptr %Punto, %Punto* null, i32 1
  %88 = ptrtoint %Punto* %87 to i64
  %89 = call i8* @GC_malloc(i64 %88)
  %90 = bitcast i8* %89 to %Punto*
  %91 = getelementptr %Punto, %Punto* %90, i32 0, i32 0
  store i64 1, i64* %91
  %92 = getelementptr %Punto, %Punto* %90, i32 0, i32 1
  store i64 2, i64* %92
  %93 = load %Punto, %Punto* %90
  %94 = alloca %Punto
  store %Punto %93, %Punto* %94
  %95 = call i64 @bump_ptr(%Punto* %94)
  %96 = getelementptr %Punto, %Punto* %94, i32 0, i32 0
  %97 = load i64, i64* %96
  %98 = icmp eq i64 %97, 101
  %99 = getelementptr [17 x i8], [17 x i8]* @.str10, i32 0, i32 0
  %100 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str10.c, i8* %99)
  %101 = call i8* @nyx_string_to_cstr(%nyx_string* %100)
  br i1 %98, label %assert_pass_9, label %assert_fail_9
assert_fail_9:
  call void @nyx_assert_fail(i8* %101)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_9
assert_pass_9:
  %102 = getelementptr %Punto, %Punto* %94, i32 0, i32 1
  %103 = load i64, i64* %102
  %104 = icmp eq i64 %103, 2
  %105 = getelementptr [17 x i8], [17 x i8]* @.str11, i32 0, i32 0
  %106 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str11.c, i8* %105)
  %107 = call i8* @nyx_string_to_cstr(%nyx_string* %106)
  br i1 %104, label %assert_pass_10, label %assert_fail_10
assert_fail_10:
  call void @nyx_assert_fail(i8* %107)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_10
assert_pass_10:
  %108 = getelementptr [28 x i8], [28 x i8]* @.str12, i32 0, i32 0
  %109 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str12.c, i8* %108)
  %110 = call i8* @nyx_string_to_cstr(%nyx_string* %109)
  call void @nyx_print_string(i8* %110)
  ret i64 0
}

define internal i64 @bump(
%Punto* %p.param) {
  %p.ptr = alloca %Punto*
  store %Punto* %p.param, %Punto** %p.ptr
  %111 = load %Punto*, %Punto** %p.ptr
  %112 = load %Punto*, %Punto** %p.ptr
  %113 = getelementptr %Punto, %Punto* %112, i32 0, i32 0
  %114 = load i64, i64* %113
  %115 = add i64 %114, 1
  %116 = getelementptr %Punto, %Punto* %111, i32 0, i32 0
  store i64 %115, i64* %116
  ret i64 0
}

define internal i64 @leer_x(
%Punto* %p.param) {
  %p.ptr = alloca %Punto*
  store %Punto* %p.param, %Punto** %p.ptr
  %117 = load %Punto*, %Punto** %p.ptr
  %118 = getelementptr %Punto, %Punto* %117, i32 0, i32 0
  %119 = load i64, i64* %118
  ret i64 %119
}

define internal i64 @poner(
%Contenedor_int* %c.param, i64 %v.param) {
  %c.ptr = alloca %Contenedor_int*
  store %Contenedor_int* %c.param, %Contenedor_int** %c.ptr
  %v.ptr = alloca i64
  store i64 %v.param, i64* %v.ptr
  %120 = load %Contenedor_int*, %Contenedor_int** %c.ptr
  %121 = load i64, i64* %v.ptr
  %122 = getelementptr %Contenedor_int, %Contenedor_int* %120, i32 0, i32 0
  store i64 %121, i64* %122
  ret i64 0
}

define internal i64 @leer_c(
%Contenedor_int* %c.param) {
  %c.ptr = alloca %Contenedor_int*
  store %Contenedor_int* %c.param, %Contenedor_int** %c.ptr
  %123 = load %Contenedor_int*, %Contenedor_int** %c.ptr
  %124 = getelementptr %Contenedor_int, %Contenedor_int* %123, i32 0, i32 0
  %125 = load i64, i64* %124
  ret i64 %125
}

define internal i64 @set_izq(
%Par_int_Map_String_int* %p.param) {
  %p.ptr = alloca %Par_int_Map_String_int*
  store %Par_int_Map_String_int* %p.param, %Par_int_Map_String_int** %p.ptr
  %126 = load %Par_int_Map_String_int*, %Par_int_Map_String_int** %p.ptr
  %127 = getelementptr %Par_int_Map_String_int, %Par_int_Map_String_int* %126, i32 0, i32 0
  store i64 9, i64* %127
  ret i64 0
}

define internal i64 @leer_izq(
%Par_int_Map_String_int* %p.param) {
  %p.ptr = alloca %Par_int_Map_String_int*
  store %Par_int_Map_String_int* %p.param, %Par_int_Map_String_int** %p.ptr
  %128 = load %Par_int_Map_String_int*, %Par_int_Map_String_int** %p.ptr
  %129 = getelementptr %Par_int_Map_String_int, %Par_int_Map_String_int* %128, i32 0, i32 0
  %130 = load i64, i64* %129
  ret i64 %130
}

define internal i64 @bump_ptr(
%Punto* %p.param) {
  %p.ptr = alloca %Punto*
  store %Punto* %p.param, %Punto** %p.ptr
  %131 = load %Punto*, %Punto** %p.ptr
  %132 = load %Punto*, %Punto** %p.ptr
  %133 = getelementptr %Punto, %Punto* %132, i32 0, i32 0
  %134 = load i64, i64* %133
  %135 = add i64 %134, 100
  %136 = getelementptr %Punto, %Punto* %131, i32 0, i32 0
  store i64 %135, i64* %136
  ret i64 0
}


attributes #0 = { returns_twice }

