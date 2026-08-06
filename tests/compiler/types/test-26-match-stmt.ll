source_filename = "/home/admin/nyx/lang/tests/compiler/types/test-26-match-stmt.nx"
target triple = "x86_64-pc-linux-gnu"

@.str0 = private unnamed_addr constant [5 x i8] c"Rojo\00"
@.str0.c = internal global %nyx_string* null
@.str1 = private unnamed_addr constant [6 x i8] c"Verde\00"
@.str1.c = internal global %nyx_string* null
@.str2 = private unnamed_addr constant [5 x i8] c"Azul\00"
@.str2.c = internal global %nyx_string* null
@.str3 = private unnamed_addr constant [14 x i8] c"Circle area ~\00"
@.str3.c = internal global %nyx_string* null
@.str4 = private unnamed_addr constant [13 x i8] c"Rect area = \00"
@.str4.c = internal global %nyx_string* null
@.str5 = private unnamed_addr constant [27 x i8] c"=== Match as Statement ===\00"
@.str5.c = internal global %nyx_string* null
@.str6 = private unnamed_addr constant [32 x i8] c"=== Match with Side Effects ===\00"
@.str6.c = internal global %nyx_string* null
@.str7 = private unnamed_addr constant [7 x i8] c"Is red\00"
@.str7.c = internal global %nyx_string* null
@.str8 = private unnamed_addr constant [9 x i8] c"Is green\00"
@.str8.c = internal global %nyx_string* null
@.str9 = private unnamed_addr constant [8 x i8] c"Is blue\00"
@.str9.c = internal global %nyx_string* null
@.str10 = private unnamed_addr constant [5 x i8] c"Done\00"
@.str10.c = internal global %nyx_string* null
@__nyx_test_failed = external global i64
@__nyx_test_mode = external global i64
; Nyx Compiler Bootstrap v3.0
; Generated from: /home/admin/nyx/lang/tests/compiler/types/test-26-match-stmt.nx

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


define internal i64 @describe_color(
i8* %c.param) {
  %c.ptr = alloca i8*
  store i8* %c.param, i8** %c.ptr
  %1 = load i8*, i8** %c.ptr
  %2 = bitcast i8* %1 to { i64, i8* }*
  %3 = getelementptr { i64, i8* }, { i64, i8* }* %2, i32 0, i32 0
  %4 = load i64, i64* %3
  %5 = alloca i64
  store i64 0, i64* %5
  switch i64 %4, label %match_default0 [ i64 0, label %match_arm2 i64 1, label %match_arm3 i64 2, label %match_arm4 ]
match_arm2:
  %6 = getelementptr [5 x i8], [5 x i8]* @.str0, i32 0, i32 0
  %7 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str0.c, i8* %6)
  %8 = call i8* @nyx_string_to_cstr(%nyx_string* %7)
  call void @nyx_print_string(i8* %8)
  br label %match_end1
match_arm3:
  %9 = getelementptr [6 x i8], [6 x i8]* @.str1, i32 0, i32 0
  %10 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1.c, i8* %9)
  %11 = call i8* @nyx_string_to_cstr(%nyx_string* %10)
  call void @nyx_print_string(i8* %11)
  br label %match_end1
match_arm4:
  %12 = getelementptr [5 x i8], [5 x i8]* @.str2, i32 0, i32 0
  %13 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str2.c, i8* %12)
  %14 = call i8* @nyx_string_to_cstr(%nyx_string* %13)
  call void @nyx_print_string(i8* %14)
  br label %match_end1
match_default0:
  br label %match_end1
match_end1:
  %15 = load i64, i64* %5
  ret i64 0
}

define internal i64 @print_area(
i8* %s.param) {
  %s.ptr = alloca i8*
  store i8* %s.param, i8** %s.ptr
  %16 = load i8*, i8** %s.ptr
  %17 = bitcast i8* %16 to { i64, i8* }*
  %18 = getelementptr { i64, i8* }, { i64, i8* }* %17, i32 0, i32 0
  %19 = load i64, i64* %18
  %20 = alloca i64
  store i64 0, i64* %20
  switch i64 %19, label %match_default11 [ i64 0, label %match_arm13 i64 1, label %match_arm14 ]
match_arm13:
  %21 = getelementptr { i64, i8* }, { i64, i8* }* %17, i32 0, i32 1
  %22 = load i8*, i8** %21
  %23 = bitcast i8* %22 to i64*
  %24 = getelementptr i64, i64* %23, i64 0
  %25 = load i64, i64* %24
  %26 = alloca i64
  store i64 %25, i64* %26
  br label %nested_ok20
nested_fail19:
  br label %match_default11
nested_ok20:
  %27 = load i64, i64* %26
  %28 = load i64, i64* %26
  %29 = mul i64 %27, %28
  %30 = mul i64 %29, 3
  %31 = alloca i64
  store i64 %30, i64* %31
  %32 = getelementptr [14 x i8], [14 x i8]* @.str3, i32 0, i32 0
  %33 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str3.c, i8* %32)
  %34 = load i64, i64* %31
  %35 = call %nyx_string* @nyx_string_from_int(i64 %34)
  %36 = call %nyx_string* @nyx_string_concat(%nyx_string* %33, %nyx_string* %35)
  %37 = call i8* @nyx_string_to_cstr(%nyx_string* %36)
  call void @nyx_print_string(i8* %37)
  br label %match_end12
match_arm14:
  %38 = getelementptr { i64, i8* }, { i64, i8* }* %17, i32 0, i32 1
  %39 = load i8*, i8** %38
  %40 = bitcast i8* %39 to i64*
  %41 = getelementptr i64, i64* %40, i64 0
  %42 = load i64, i64* %41
  %43 = alloca i64
  store i64 %42, i64* %43
  br label %nested_ok22
nested_fail21:
  br label %match_default11
nested_ok22:
  %44 = load i64, i64* %43
  %45 = load i64, i64* %43
  %46 = mul i64 %44, %45
  %47 = alloca i64
  store i64 %46, i64* %47
  %48 = getelementptr [13 x i8], [13 x i8]* @.str4, i32 0, i32 0
  %49 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str4.c, i8* %48)
  %50 = load i64, i64* %47
  %51 = call %nyx_string* @nyx_string_from_int(i64 %50)
  %52 = call %nyx_string* @nyx_string_concat(%nyx_string* %49, %nyx_string* %51)
  %53 = call i8* @nyx_string_to_cstr(%nyx_string* %52)
  call void @nyx_print_string(i8* %53)
  br label %match_end12
match_default11:
  br label %match_end12
match_end12:
  %54 = load i64, i64* %20
  ret i64 0
}

define i64 @main(
i32 %argc, i8** %argv) {
  call void @nyx_set_args(i32 %argc, i8** %argv)
  %55 = getelementptr [27 x i8], [27 x i8]* @.str5, i32 0, i32 0
  %56 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str5.c, i8* %55)
  %57 = call i8* @nyx_string_to_cstr(%nyx_string* %56)
  call void @nyx_print_string(i8* %57)
  %58 = call i8* @GC_malloc(i64 16)
  %59 = bitcast i8* %58 to { i64, i8* }*
  %60 = getelementptr { i64, i8* }, { i64, i8* }* %59, i32 0, i32 0
  store i64 0, i64* %60
  %61 = getelementptr { i64, i8* }, { i64, i8* }* %59, i32 0, i32 1
  store i8* null, i8** %61
  %62 = call i64 @describe_color(i8* %58)
  %63 = call i8* @GC_malloc(i64 16)
  %64 = bitcast i8* %63 to { i64, i8* }*
  %65 = getelementptr { i64, i8* }, { i64, i8* }* %64, i32 0, i32 0
  store i64 1, i64* %65
  %66 = getelementptr { i64, i8* }, { i64, i8* }* %64, i32 0, i32 1
  store i8* null, i8** %66
  %67 = call i64 @describe_color(i8* %63)
  %68 = call i8* @GC_malloc(i64 16)
  %69 = bitcast i8* %68 to { i64, i8* }*
  %70 = getelementptr { i64, i8* }, { i64, i8* }* %69, i32 0, i32 0
  store i64 2, i64* %70
  %71 = getelementptr { i64, i8* }, { i64, i8* }* %69, i32 0, i32 1
  store i8* null, i8** %71
  %72 = call i64 @describe_color(i8* %68)
  %73 = getelementptr [32 x i8], [32 x i8]* @.str6, i32 0, i32 0
  %74 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str6.c, i8* %73)
  %75 = call i8* @nyx_string_to_cstr(%nyx_string* %74)
  call void @nyx_print_string(i8* %75)
  %76 = call i8* @GC_malloc(i64 16)
  %77 = bitcast i8* %76 to { i64, i8* }*
  %78 = getelementptr { i64, i8* }, { i64, i8* }* %77, i32 0, i32 0
  store i64 0, i64* %78
  %79 = getelementptr { i64, i8* }, { i64, i8* }* %77, i32 0, i32 1
  %80 = call i8* @GC_malloc(i64 8)
  %81 = bitcast i8* %80 to i64*
  %82 = getelementptr i64, i64* %81, i64 0
  store i64 5, i64* %82
  store i8* %80, i8** %79
  %83 = call i64 @print_area(i8* %76)
  %84 = call i8* @GC_malloc(i64 16)
  %85 = bitcast i8* %84 to { i64, i8* }*
  %86 = getelementptr { i64, i8* }, { i64, i8* }* %85, i32 0, i32 0
  store i64 1, i64* %86
  %87 = getelementptr { i64, i8* }, { i64, i8* }* %85, i32 0, i32 1
  %88 = call i8* @GC_malloc(i64 8)
  %89 = bitcast i8* %88 to i64*
  %90 = getelementptr i64, i64* %89, i64 0
  store i64 4, i64* %90
  store i8* %88, i8** %87
  %91 = call i64 @print_area(i8* %84)
  %92 = call i8* @GC_malloc(i64 16)
  %93 = bitcast i8* %92 to { i64, i8* }*
  %94 = getelementptr { i64, i8* }, { i64, i8* }* %93, i32 0, i32 0
  store i64 2, i64* %94
  %95 = getelementptr { i64, i8* }, { i64, i8* }* %93, i32 0, i32 1
  store i8* null, i8** %95
  %96 = alloca i8*
  store i8* %92, i8** %96
  %97 = load i8*, i8** %96
  %98 = bitcast i8* %97 to { i64, i8* }*
  %99 = getelementptr { i64, i8* }, { i64, i8* }* %98, i32 0, i32 0
  %100 = load i64, i64* %99
  %101 = alloca i64
  store i64 0, i64* %101
  switch i64 %100, label %match_default23 [ i64 0, label %match_arm25 i64 1, label %match_arm26 i64 2, label %match_arm27 ]
match_arm25:
  %102 = getelementptr [7 x i8], [7 x i8]* @.str7, i32 0, i32 0
  %103 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str7.c, i8* %102)
  %104 = call i8* @nyx_string_to_cstr(%nyx_string* %103)
  call void @nyx_print_string(i8* %104)
  br label %match_end24
match_arm26:
  %105 = getelementptr [9 x i8], [9 x i8]* @.str8, i32 0, i32 0
  %106 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str8.c, i8* %105)
  %107 = call i8* @nyx_string_to_cstr(%nyx_string* %106)
  call void @nyx_print_string(i8* %107)
  br label %match_end24
match_arm27:
  %108 = getelementptr [8 x i8], [8 x i8]* @.str9, i32 0, i32 0
  %109 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str9.c, i8* %108)
  %110 = call i8* @nyx_string_to_cstr(%nyx_string* %109)
  call void @nyx_print_string(i8* %110)
  br label %match_end24
match_default23:
  br label %match_end24
match_end24:
  %111 = load i64, i64* %101
  %112 = getelementptr [5 x i8], [5 x i8]* @.str10, i32 0, i32 0
  %113 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str10.c, i8* %112)
  %114 = call i8* @nyx_string_to_cstr(%nyx_string* %113)
  call void @nyx_print_string(i8* %114)
  ret i64 0
}


attributes #0 = { returns_twice }

