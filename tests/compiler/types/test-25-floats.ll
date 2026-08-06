source_filename = "/home/admin/nyx/lang/tests/compiler/types/test-25-floats.nx"
target triple = "x86_64-pc-linux-gnu"

@.str0 = private unnamed_addr constant [23 x i8] c"=== Float Literals ===\00"
@.str0.c = internal global %nyx_string* null
@.str1 = private unnamed_addr constant [25 x i8] c"=== Float Arithmetic ===\00"
@.str1.c = internal global %nyx_string* null
@.str2 = private unnamed_addr constant [26 x i8] c"=== Float Comparisons ===\00"
@.str2.c = internal global %nyx_string* null
@.str3 = private unnamed_addr constant [18 x i8] c"3.14 > 2.71: true\00"
@.str3.c = internal global %nyx_string* null
@.str4 = private unnamed_addr constant [18 x i8] c"2.71 < 3.14: true\00"
@.str4.c = internal global %nyx_string* null
@.str5 = private unnamed_addr constant [13 x i8] c"x == x: true\00"
@.str5.c = internal global %nyx_string* null
@.str6 = private unnamed_addr constant [13 x i8] c"x != y: true\00"
@.str6.c = internal global %nyx_string* null
@.str7 = private unnamed_addr constant [16 x i8] c"x >= 3.14: true\00"
@.str7.c = internal global %nyx_string* null
@.str8 = private unnamed_addr constant [16 x i8] c"y <= 2.71: true\00"
@.str8.c = internal global %nyx_string* null
@.str9 = private unnamed_addr constant [26 x i8] c"=== Float Conversions ===\00"
@.str9.c = internal global %nyx_string* null
@.str10 = private unnamed_addr constant [18 x i8] c"float as string: \00"
@.str10.c = internal global %nyx_string* null
@.str11 = private unnamed_addr constant [23 x i8] c"=== Float + String ===\00"
@.str11.c = internal global %nyx_string* null
@.str12 = private unnamed_addr constant [11 x i8] c"gravity = \00"
@.str12.c = internal global %nyx_string* null
@.str13 = private unnamed_addr constant [24 x i8] c"=== Float Variables ===\00"
@.str13.c = internal global %nyx_string* null
@.str14 = private unnamed_addr constant [24 x i8] c"=== Float Functions ===\00"
@.str14.c = internal global %nyx_string* null
@.str15 = private unnamed_addr constant [20 x i8] c"=== Float Power ===\00"
@.str15.c = internal global %nyx_string* null
@__nyx_test_failed = external global i64
@__nyx_test_mode = external global i64
; Nyx Compiler Bootstrap v3.0
; Generated from: /home/admin/nyx/lang/tests/compiler/types/test-25-floats.nx

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


define internal i64 @test_float_literals(
) {
  %1 = alloca double
  store double 3.14159, double* %1
  %2 = alloca double
  store double 2.71828, double* %2
  %3 = getelementptr [23 x i8], [23 x i8]* @.str0, i32 0, i32 0
  %4 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str0.c, i8* %3)
  %5 = call i8* @nyx_string_to_cstr(%nyx_string* %4)
  call void @nyx_print_string(i8* %5)
  %6 = load double, double* %1
  call void @nyx_print_float(double %6)
  %7 = load double, double* %2
  call void @nyx_print_float(double %7)
  ret i64 0
}

define internal i64 @test_float_arithmetic(
) {
  %8 = getelementptr [25 x i8], [25 x i8]* @.str1, i32 0, i32 0
  %9 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1.c, i8* %8)
  %10 = call i8* @nyx_string_to_cstr(%nyx_string* %9)
  call void @nyx_print_string(i8* %10)
  %11 = alloca double
  store double 10.5, double* %11
  %12 = alloca double
  store double 3.2, double* %12
  %13 = load double, double* %11
  %14 = load double, double* %12
  %15 = fadd double %13, %14
  %16 = alloca double
  store double %15, double* %16
  %17 = load double, double* %11
  %18 = load double, double* %12
  %19 = fsub double %17, %18
  %20 = alloca double
  store double %19, double* %20
  %21 = load double, double* %11
  %22 = load double, double* %12
  %23 = fmul double %21, %22
  %24 = alloca double
  store double %23, double* %24
  %25 = load double, double* %11
  %26 = load double, double* %12
  %27 = fdiv double %25, %26
  %28 = alloca double
  store double %27, double* %28
  %29 = load double, double* %16
  call void @nyx_print_float(double %29)
  %30 = load double, double* %20
  call void @nyx_print_float(double %30)
  %31 = load double, double* %24
  call void @nyx_print_float(double %31)
  %32 = load double, double* %28
  call void @nyx_print_float(double %32)
  %33 = load double, double* %11
  %34 = fneg double %33
  %35 = alloca double
  store double %34, double* %35
  %36 = load double, double* %35
  call void @nyx_print_float(double %36)
  ret i64 0
}

define internal i64 @test_float_comparisons(
) {
  %37 = getelementptr [26 x i8], [26 x i8]* @.str2, i32 0, i32 0
  %38 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str2.c, i8* %37)
  %39 = call i8* @nyx_string_to_cstr(%nyx_string* %38)
  call void @nyx_print_string(i8* %39)
  %40 = alloca double
  store double 3.14, double* %40
  %41 = alloca double
  store double 2.71, double* %41
  %42 = load double, double* %40
  %43 = load double, double* %41
  %44 = fcmp ogt double %42, %43
  br i1 %44, label %then0, label %else1
then0:
  %45 = getelementptr [18 x i8], [18 x i8]* @.str3, i32 0, i32 0
  %46 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str3.c, i8* %45)
  %47 = call i8* @nyx_string_to_cstr(%nyx_string* %46)
  call void @nyx_print_string(i8* %47)
  br label %merge2
else1:
  br label %merge2
merge2:
  %48 = load double, double* %41
  %49 = load double, double* %40
  %50 = fcmp olt double %48, %49
  br i1 %50, label %then3, label %else4
then3:
  %51 = getelementptr [18 x i8], [18 x i8]* @.str4, i32 0, i32 0
  %52 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str4.c, i8* %51)
  %53 = call i8* @nyx_string_to_cstr(%nyx_string* %52)
  call void @nyx_print_string(i8* %53)
  br label %merge5
else4:
  br label %merge5
merge5:
  %54 = load double, double* %40
  %55 = load double, double* %40
  %56 = fcmp oeq double %54, %55
  br i1 %56, label %then6, label %else7
then6:
  %57 = getelementptr [13 x i8], [13 x i8]* @.str5, i32 0, i32 0
  %58 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str5.c, i8* %57)
  %59 = call i8* @nyx_string_to_cstr(%nyx_string* %58)
  call void @nyx_print_string(i8* %59)
  br label %merge8
else7:
  br label %merge8
merge8:
  %60 = load double, double* %40
  %61 = load double, double* %41
  %62 = fcmp one double %60, %61
  br i1 %62, label %then9, label %else10
then9:
  %63 = getelementptr [13 x i8], [13 x i8]* @.str6, i32 0, i32 0
  %64 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str6.c, i8* %63)
  %65 = call i8* @nyx_string_to_cstr(%nyx_string* %64)
  call void @nyx_print_string(i8* %65)
  br label %merge11
else10:
  br label %merge11
merge11:
  %66 = load double, double* %40
  %67 = fcmp oge double %66, 3.14
  br i1 %67, label %then12, label %else13
then12:
  %68 = getelementptr [16 x i8], [16 x i8]* @.str7, i32 0, i32 0
  %69 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str7.c, i8* %68)
  %70 = call i8* @nyx_string_to_cstr(%nyx_string* %69)
  call void @nyx_print_string(i8* %70)
  br label %merge14
else13:
  br label %merge14
merge14:
  %71 = load double, double* %41
  %72 = fcmp ole double %71, 2.71
  br i1 %72, label %then15, label %else16
then15:
  %73 = getelementptr [16 x i8], [16 x i8]* @.str8, i32 0, i32 0
  %74 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str8.c, i8* %73)
  %75 = call i8* @nyx_string_to_cstr(%nyx_string* %74)
  call void @nyx_print_string(i8* %75)
  br label %merge17
else16:
  br label %merge17
merge17:
  ret i64 0
}

define internal i64 @test_float_conversions(
) {
  %76 = getelementptr [26 x i8], [26 x i8]* @.str9, i32 0, i32 0
  %77 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str9.c, i8* %76)
  %78 = call i8* @nyx_string_to_cstr(%nyx_string* %77)
  call void @nyx_print_string(i8* %78)
  %79 = alloca i64
  store i64 42, i64* %79
  %80 = load i64, i64* %79
  %81 = sitofp i64 %80 to double
  %82 = alloca double
  store double %81, double* %82
  %83 = load double, double* %82
  call void @nyx_print_float(double %83)
  %84 = alloca double
  store double 3.99, double* %84
  %85 = load double, double* %84
  %86 = fptosi double %85 to i64
  %87 = alloca i64
  store i64 %86, i64* %87
  %88 = load i64, i64* %87
  call void @nyx_print_int(i64 %88)
  %89 = call %nyx_string* @nyx_string_from_float(double 1.5)
  %90 = alloca %nyx_string*
  store %nyx_string* %89, %nyx_string** %90
  %91 = getelementptr [18 x i8], [18 x i8]* @.str10, i32 0, i32 0
  %92 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str10.c, i8* %91)
  %93 = load %nyx_string*, %nyx_string** %90
  %94 = call %nyx_string* @nyx_string_concat(%nyx_string* %92, %nyx_string* %93)
  %95 = call i8* @nyx_string_to_cstr(%nyx_string* %94)
  call void @nyx_print_string(i8* %95)
  ret i64 0
}

define internal i64 @test_float_string_concat(
) {
  %96 = getelementptr [23 x i8], [23 x i8]* @.str11, i32 0, i32 0
  %97 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str11.c, i8* %96)
  %98 = call i8* @nyx_string_to_cstr(%nyx_string* %97)
  call void @nyx_print_string(i8* %98)
  %99 = alloca double
  store double 9.81, double* %99
  %100 = getelementptr [11 x i8], [11 x i8]* @.str12, i32 0, i32 0
  %101 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str12.c, i8* %100)
  %102 = load double, double* %99
  %103 = call %nyx_string* @nyx_string_from_float(double %102)
  %104 = call %nyx_string* @nyx_string_concat(%nyx_string* %101, %nyx_string* %103)
  %105 = call i8* @nyx_string_to_cstr(%nyx_string* %104)
  call void @nyx_print_string(i8* %105)
  ret i64 0
}

define internal i64 @test_float_vars(
) {
  %106 = getelementptr [24 x i8], [24 x i8]* @.str13, i32 0, i32 0
  %107 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str13.c, i8* %106)
  %108 = call i8* @nyx_string_to_cstr(%nyx_string* %107)
  call void @nyx_print_string(i8* %108)
  %109 = alloca double
  store double 1.0, double* %109
  %110 = load double, double* %109
  call void @nyx_print_float(double %110)
  store double 2.5, double* %109
  %111 = load double, double* %109
  call void @nyx_print_float(double %111)
  %112 = load double, double* %109
  %113 = fadd double %112, 0.5
  store double %113, double* %109
  %114 = load double, double* %109
  call void @nyx_print_float(double %114)
  ret i64 0
}

define internal double @test_float_in_function(
) {
  ret double 42.0
}

define internal double @add_floats(
double %a.param, double %b.param) {
  %a.ptr = alloca double
  store double %a.param, double* %a.ptr
  %b.ptr = alloca double
  store double %b.param, double* %b.ptr
  %115 = load double, double* %a.ptr
  %116 = load double, double* %b.ptr
  %117 = fadd double %115, %116
  ret double %117
}

define i64 @main(
i32 %argc, i8** %argv) {
  call void @nyx_set_args(i32 %argc, i8** %argv)
  %118 = call i64 @test_float_literals()
  %119 = call i64 @test_float_arithmetic()
  %120 = call i64 @test_float_comparisons()
  %121 = call i64 @test_float_conversions()
  %122 = call i64 @test_float_string_concat()
  %123 = call i64 @test_float_vars()
  %124 = getelementptr [24 x i8], [24 x i8]* @.str14, i32 0, i32 0
  %125 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str14.c, i8* %124)
  %126 = call i8* @nyx_string_to_cstr(%nyx_string* %125)
  call void @nyx_print_string(i8* %126)
  %127 = call double @test_float_in_function()
  %128 = alloca double
  store double %127, double* %128
  %129 = load double, double* %128
  call void @nyx_print_float(double %129)
  %130 = call double @add_floats(double 1.5, double 2.5)
  %131 = alloca double
  store double %130, double* %131
  %132 = load double, double* %131
  call void @nyx_print_float(double %132)
  %133 = getelementptr [20 x i8], [20 x i8]* @.str15, i32 0, i32 0
  %134 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str15.c, i8* %133)
  %135 = call i8* @nyx_string_to_cstr(%nyx_string* %134)
  call void @nyx_print_string(i8* %135)
  %136 = call double @pow(double 2.0, double 10.0)
  %137 = alloca double
  store double %136, double* %137
  %138 = load double, double* %137
  call void @nyx_print_float(double %138)
  ret i64 0
}


attributes #0 = { returns_twice }

