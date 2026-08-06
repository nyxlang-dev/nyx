source_filename = "/home/admin/nyx/lang/tests/compiler/language/test-132-range-patterns.nx"
target triple = "x86_64-pc-linux-gnu"

@.str0 = private unnamed_addr constant [5 x i8] c"zero\00"
@.str0.c = internal global %nyx_string* null
@.str1 = private unnamed_addr constant [7 x i8] c"single\00"
@.str1.c = internal global %nyx_string* null
@.str2 = private unnamed_addr constant [7 x i8] c"double\00"
@.str2.c = internal global %nyx_string* null
@.str3 = private unnamed_addr constant [6 x i8] c"large\00"
@.str3.c = internal global %nyx_string* null
@.str4 = private unnamed_addr constant [2 x i8] c"A\00"
@.str4.c = internal global %nyx_string* null
@.str5 = private unnamed_addr constant [2 x i8] c"B\00"
@.str5.c = internal global %nyx_string* null
@.str6 = private unnamed_addr constant [2 x i8] c"C\00"
@.str6.c = internal global %nyx_string* null
@.str7 = private unnamed_addr constant [2 x i8] c"F\00"
@.str7.c = internal global %nyx_string* null
@.str8 = private unnamed_addr constant [9 x i8] c"negative\00"
@.str8.c = internal global %nyx_string* null
@.str9 = private unnamed_addr constant [5 x i8] c"zero\00"
@.str9.c = internal global %nyx_string* null
@.str10 = private unnamed_addr constant [9 x i8] c"positive\00"
@.str10.c = internal global %nyx_string* null
@.str11 = private unnamed_addr constant [6 x i8] c"large\00"
@.str11.c = internal global %nyx_string* null
@__nyx_test_failed = external global i64
@__nyx_test_mode = external global i64
; Nyx Compiler Bootstrap v3.0
; Generated from: /home/admin/nyx/lang/tests/compiler/language/test-132-range-patterns.nx

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


define internal %nyx_string* @classify(
i64 %n.param) {
  %n.ptr = alloca i64
  store i64 %n.param, i64* %n.ptr
  %1 = load i64, i64* %n.ptr
  %2 = alloca i64
  store i64 0, i64* %2
  br label %match_arm2
match_arm2:
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %lit_body14, label %match_arm3
lit_body14:
  %4 = getelementptr [5 x i8], [5 x i8]* @.str0, i32 0, i32 0
  %5 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str0.c, i8* %4)
  ret %nyx_string* %5
match_arm3:
  %6 = icmp sge i64 %1, 1
  %7 = icmp sle i64 %1, 9
  %8 = and i1 %6, %7
  br i1 %8, label %lit_body15, label %match_arm4
lit_body15:
  %9 = getelementptr [7 x i8], [7 x i8]* @.str1, i32 0, i32 0
  %10 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1.c, i8* %9)
  ret %nyx_string* %10
match_arm4:
  %11 = icmp sge i64 %1, 10
  %12 = icmp sle i64 %1, 99
  %13 = and i1 %11, %12
  br i1 %13, label %lit_body16, label %match_arm5
lit_body16:
  %14 = getelementptr [7 x i8], [7 x i8]* @.str2, i32 0, i32 0
  %15 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str2.c, i8* %14)
  ret %nyx_string* %15
match_arm5:
  %16 = getelementptr [6 x i8], [6 x i8]* @.str3, i32 0, i32 0
  %17 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str3.c, i8* %16)
  ret %nyx_string* %17
match_end1:
  unreachable
  ret %nyx_string* null
}

define internal %nyx_string* @grade(
i64 %score.param) {
  %score.ptr = alloca i64
  store i64 %score.param, i64* %score.ptr
  %18 = load i64, i64* %score.ptr
  %19 = alloca i64
  store i64 0, i64* %19
  br label %match_arm20
match_arm20:
  %20 = icmp sge i64 %18, 90
  %21 = icmp sle i64 %18, 100
  %22 = and i1 %20, %21
  br i1 %22, label %lit_body32, label %match_arm21
lit_body32:
  %23 = getelementptr [2 x i8], [2 x i8]* @.str4, i32 0, i32 0
  %24 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str4.c, i8* %23)
  ret %nyx_string* %24
match_arm21:
  %25 = icmp sge i64 %18, 80
  %26 = icmp sle i64 %18, 89
  %27 = and i1 %25, %26
  br i1 %27, label %lit_body33, label %match_arm22
lit_body33:
  %28 = getelementptr [2 x i8], [2 x i8]* @.str5, i32 0, i32 0
  %29 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str5.c, i8* %28)
  ret %nyx_string* %29
match_arm22:
  %30 = icmp sge i64 %18, 70
  %31 = icmp sle i64 %18, 79
  %32 = and i1 %30, %31
  br i1 %32, label %lit_body34, label %match_arm23
lit_body34:
  %33 = getelementptr [2 x i8], [2 x i8]* @.str6, i32 0, i32 0
  %34 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str6.c, i8* %33)
  ret %nyx_string* %34
match_arm23:
  %35 = getelementptr [2 x i8], [2 x i8]* @.str7, i32 0, i32 0
  %36 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str7.c, i8* %35)
  ret %nyx_string* %36
match_end19:
  unreachable
  ret %nyx_string* null
}

define internal %nyx_string* @sign(
i64 %n.param) {
  %n.ptr = alloca i64
  store i64 %n.param, i64* %n.ptr
  %37 = load i64, i64* %n.ptr
  %38 = alloca i64
  store i64 0, i64* %38
  br label %match_arm38
match_arm38:
  %39 = icmp sge i64 %37, -100
  %40 = icmp sle i64 %37, -1
  %41 = and i1 %39, %40
  br i1 %41, label %lit_body50, label %match_arm39
lit_body50:
  %42 = getelementptr [9 x i8], [9 x i8]* @.str8, i32 0, i32 0
  %43 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str8.c, i8* %42)
  ret %nyx_string* %43
match_arm39:
  %44 = icmp eq i64 %37, 0
  br i1 %44, label %lit_body51, label %match_arm40
lit_body51:
  %45 = getelementptr [5 x i8], [5 x i8]* @.str9, i32 0, i32 0
  %46 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str9.c, i8* %45)
  ret %nyx_string* %46
match_arm40:
  %47 = icmp sge i64 %37, 1
  %48 = icmp slt i64 %37, 100
  %49 = and i1 %47, %48
  br i1 %49, label %lit_body52, label %match_arm41
lit_body52:
  %50 = getelementptr [9 x i8], [9 x i8]* @.str10, i32 0, i32 0
  %51 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str10.c, i8* %50)
  ret %nyx_string* %51
match_arm41:
  %52 = getelementptr [6 x i8], [6 x i8]* @.str11, i32 0, i32 0
  %53 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str11.c, i8* %52)
  ret %nyx_string* %53
match_end37:
  unreachable
  ret %nyx_string* null
}

define i64 @main(
i32 %argc, i8** %argv) {
  call void @nyx_set_args(i32 %argc, i8** %argv)
  %54 = call %nyx_string* @classify(i64 0)
  %55 = call i8* @nyx_string_to_cstr(%nyx_string* %54)
  call void @nyx_print_string(i8* %55)
  %56 = call %nyx_string* @classify(i64 5)
  %57 = call i8* @nyx_string_to_cstr(%nyx_string* %56)
  call void @nyx_print_string(i8* %57)
  %58 = call %nyx_string* @classify(i64 42)
  %59 = call i8* @nyx_string_to_cstr(%nyx_string* %58)
  call void @nyx_print_string(i8* %59)
  %60 = call %nyx_string* @classify(i64 200)
  %61 = call i8* @nyx_string_to_cstr(%nyx_string* %60)
  call void @nyx_print_string(i8* %61)
  %62 = call %nyx_string* @grade(i64 95)
  %63 = call i8* @nyx_string_to_cstr(%nyx_string* %62)
  call void @nyx_print_string(i8* %63)
  %64 = call %nyx_string* @grade(i64 83)
  %65 = call i8* @nyx_string_to_cstr(%nyx_string* %64)
  call void @nyx_print_string(i8* %65)
  %66 = call %nyx_string* @grade(i64 71)
  %67 = call i8* @nyx_string_to_cstr(%nyx_string* %66)
  call void @nyx_print_string(i8* %67)
  %68 = call %nyx_string* @grade(i64 50)
  %69 = call i8* @nyx_string_to_cstr(%nyx_string* %68)
  call void @nyx_print_string(i8* %69)
  %70 = sub i64 0, 5
  %71 = call %nyx_string* @sign(i64 %70)
  %72 = call i8* @nyx_string_to_cstr(%nyx_string* %71)
  call void @nyx_print_string(i8* %72)
  %73 = call %nyx_string* @sign(i64 0)
  %74 = call i8* @nyx_string_to_cstr(%nyx_string* %73)
  call void @nyx_print_string(i8* %74)
  %75 = call %nyx_string* @sign(i64 50)
  %76 = call i8* @nyx_string_to_cstr(%nyx_string* %75)
  call void @nyx_print_string(i8* %76)
  ret i64 0
}


attributes #0 = { returns_twice }

