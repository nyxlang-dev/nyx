source_filename = "/home/admin/nyx/lang/tests/compiler/iterators-traits/test-100-enum-methods.nx"
target triple = "x86_64-pc-linux-gnu"

@.str0 = private unnamed_addr constant [4 x i8] c"red\00"
@.str0.c = internal global %nyx_string* null
@.str1 = private unnamed_addr constant [6 x i8] c"green\00"
@.str1.c = internal global %nyx_string* null
@.str2 = private unnamed_addr constant [5 x i8] c"blue\00"
@.str2.c = internal global %nyx_string* null
@.str3 = private unnamed_addr constant [8 x i8] c"unknown\00"
@.str3.c = internal global %nyx_string* null
@.str4 = private unnamed_addr constant [7 x i8] c"circle\00"
@.str4.c = internal global %nyx_string* null
@.str5 = private unnamed_addr constant [10 x i8] c"rectangle\00"
@.str5.c = internal global %nyx_string* null
@.str6 = private unnamed_addr constant [8 x i8] c"unknown\00"
@.str6.c = internal global %nyx_string* null
@.str7 = private unnamed_addr constant [4 x i8] c"red\00"
@.str7.c = internal global %nyx_string* null
@.str8 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str8.c = internal global %nyx_string* null
@.str9 = private unnamed_addr constant [27 x i8] c"Color.Red.name() = red: OK\00"
@.str9.c = internal global %nyx_string* null
@.str10 = private unnamed_addr constant [6 x i8] c"green\00"
@.str10.c = internal global %nyx_string* null
@.str11 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str11.c = internal global %nyx_string* null
@.str12 = private unnamed_addr constant [31 x i8] c"Color.Green.name() = green: OK\00"
@.str12.c = internal global %nyx_string* null
@.str13 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str13.c = internal global %nyx_string* null
@.str14 = private unnamed_addr constant [34 x i8] c"Color.Red.is_primary() = true: OK\00"
@.str14.c = internal global %nyx_string* null
@.str15 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str15.c = internal global %nyx_string* null
@.str16 = private unnamed_addr constant [37 x i8] c"Color.Green.is_primary() = false: OK\00"
@.str16.c = internal global %nyx_string* null
@.str17 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str17.c = internal global %nyx_string* null
@.str18 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str18.c = internal global %nyx_string* null
@.str19 = private unnamed_addr constant [34 x i8] c"Shape.Circle(5).area() ~ 78.5: OK\00"
@.str19.c = internal global %nyx_string* null
@.str20 = private unnamed_addr constant [7 x i8] c"circle\00"
@.str20.c = internal global %nyx_string* null
@.str21 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str21.c = internal global %nyx_string* null
@.str22 = private unnamed_addr constant [37 x i8] c"Shape.Circle.describe() = circle: OK\00"
@.str22.c = internal global %nyx_string* null
@.str23 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str23.c = internal global %nyx_string* null
@.str24 = private unnamed_addr constant [35 x i8] c"Shape.Rectangle(4).area() = 16: OK\00"
@.str24.c = internal global %nyx_string* null
@.str25 = private unnamed_addr constant [24 x i8] c"✅ Test 100 completado\00"
@.str25.c = internal global %nyx_string* null
@__nyx_test_failed = external global i64
@__nyx_test_mode = external global i64
; Nyx Compiler Bootstrap v3.0
; Generated from: /home/admin/nyx/lang/tests/compiler/iterators-traits/test-100-enum-methods.nx

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


define internal %nyx_string* @Color_name(
i8* %self.param) {
  %self.ptr = alloca i8*
  store i8* %self.param, i8** %self.ptr
  %1 = load i8*, i8** %self.ptr
  %2 = bitcast i8* %1 to { i64, i8* }*
  %3 = getelementptr { i64, i8* }, { i64, i8* }* %2, i32 0, i32 0
  %4 = load i64, i64* %3
  %5 = alloca i64
  store i64 0, i64* %5
  switch i64 %4, label %match_default0 [ i64 0, label %match_arm2 i64 1, label %match_arm3 i64 2, label %match_arm4 ]
match_arm2:
  %6 = getelementptr [4 x i8], [4 x i8]* @.str0, i32 0, i32 0
  %7 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str0.c, i8* %6)
  ret %nyx_string* %7
match_arm3:
  %8 = getelementptr [6 x i8], [6 x i8]* @.str1, i32 0, i32 0
  %9 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1.c, i8* %8)
  ret %nyx_string* %9
match_arm4:
  %10 = getelementptr [5 x i8], [5 x i8]* @.str2, i32 0, i32 0
  %11 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str2.c, i8* %10)
  ret %nyx_string* %11
match_default0:
  br label %match_end1
match_end1:
  %12 = load i64, i64* %5
  %13 = getelementptr [8 x i8], [8 x i8]* @.str3, i32 0, i32 0
  %14 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str3.c, i8* %13)
  ret %nyx_string* %14
}

define internal i1 @Color_is_primary(
i8* %self.param) {
  %self.ptr = alloca i8*
  store i8* %self.param, i8** %self.ptr
  %15 = load i8*, i8** %self.ptr
  %16 = bitcast i8* %15 to { i64, i8* }*
  %17 = getelementptr { i64, i8* }, { i64, i8* }* %16, i32 0, i32 0
  %18 = load i64, i64* %17
  %19 = alloca i64
  store i64 0, i64* %19
  switch i64 %18, label %match_arm15 [ i64 0, label %match_arm13 i64 2, label %match_arm14 ]
match_arm13:
  ret i1 1
match_arm14:
  ret i1 1
match_arm15:
  ret i1 0
match_end12:
  unreachable
}

define internal double @Shape_area(
i8* %self.param) {
  %self.ptr = alloca i8*
  store i8* %self.param, i8** %self.ptr
  %20 = load i8*, i8** %self.ptr
  %21 = bitcast i8* %20 to { i64, i8* }*
  %22 = getelementptr { i64, i8* }, { i64, i8* }* %21, i32 0, i32 0
  %23 = load i64, i64* %22
  %24 = alloca i64
  store i64 0, i64* %24
  switch i64 %23, label %match_default22 [ i64 0, label %match_arm24 i64 1, label %match_arm25 ]
match_arm24:
  %25 = getelementptr { i64, i8* }, { i64, i8* }* %21, i32 0, i32 1
  %26 = load i8*, i8** %25
  %27 = bitcast i8* %26 to i64*
  %28 = getelementptr i64, i64* %27, i64 0
  %29 = load i64, i64* %28
  %30 = bitcast i64 %29 to double
  %31 = alloca double
  store double %30, double* %31
  br label %nested_ok31
nested_fail30:
  br label %match_default22
nested_ok31:
  %32 = load double, double* %31
  %33 = fmul double 3.14, %32
  %34 = load double, double* %31
  %35 = fmul double %33, %34
  ret double %35
match_arm25:
  %36 = getelementptr { i64, i8* }, { i64, i8* }* %21, i32 0, i32 1
  %37 = load i8*, i8** %36
  %38 = bitcast i8* %37 to i64*
  %39 = getelementptr i64, i64* %38, i64 0
  %40 = load i64, i64* %39
  %41 = bitcast i64 %40 to double
  %42 = alloca double
  store double %41, double* %42
  br label %nested_ok33
nested_fail32:
  br label %match_default22
nested_ok33:
  %43 = load double, double* %42
  %44 = load double, double* %42
  %45 = fmul double %43, %44
  ret double %45
match_default22:
  br label %match_end23
match_end23:
  %46 = load i64, i64* %24
  ret double 0.0
}

define internal %nyx_string* @Shape_describe(
i8* %self.param) {
  %self.ptr = alloca i8*
  store i8* %self.param, i8** %self.ptr
  %47 = load i8*, i8** %self.ptr
  %48 = bitcast i8* %47 to { i64, i8* }*
  %49 = getelementptr { i64, i8* }, { i64, i8* }* %48, i32 0, i32 0
  %50 = load i64, i64* %49
  %51 = alloca i64
  store i64 0, i64* %51
  switch i64 %50, label %match_default34 [ i64 0, label %match_arm36 i64 1, label %match_arm37 ]
match_arm36:
  %52 = getelementptr { i64, i8* }, { i64, i8* }* %48, i32 0, i32 1
  %53 = load i8*, i8** %52
  %54 = bitcast i8* %53 to i64*
  %55 = getelementptr i64, i64* %54, i64 0
  %56 = load i64, i64* %55
  %57 = bitcast i64 %56 to double
  %58 = alloca double
  store double %57, double* %58
  br label %nested_ok43
nested_fail42:
  br label %match_default34
nested_ok43:
  %59 = getelementptr [7 x i8], [7 x i8]* @.str4, i32 0, i32 0
  %60 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str4.c, i8* %59)
  ret %nyx_string* %60
match_arm37:
  %61 = getelementptr { i64, i8* }, { i64, i8* }* %48, i32 0, i32 1
  %62 = load i8*, i8** %61
  %63 = bitcast i8* %62 to i64*
  %64 = getelementptr i64, i64* %63, i64 0
  %65 = load i64, i64* %64
  %66 = bitcast i64 %65 to double
  %67 = alloca double
  store double %66, double* %67
  br label %nested_ok45
nested_fail44:
  br label %match_default34
nested_ok45:
  %68 = getelementptr [10 x i8], [10 x i8]* @.str5, i32 0, i32 0
  %69 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str5.c, i8* %68)
  ret %nyx_string* %69
match_default34:
  br label %match_end35
match_end35:
  %70 = load i64, i64* %51
  %71 = getelementptr [8 x i8], [8 x i8]* @.str6, i32 0, i32 0
  %72 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str6.c, i8* %71)
  ret %nyx_string* %72
}

define i64 @main(
i32 %argc, i8** %argv) {
  call void @nyx_set_args(i32 %argc, i8** %argv)
  %73 = call i8* @GC_malloc(i64 16)
  %74 = bitcast i8* %73 to { i64, i8* }*
  %75 = getelementptr { i64, i8* }, { i64, i8* }* %74, i32 0, i32 0
  store i64 0, i64* %75
  %76 = getelementptr { i64, i8* }, { i64, i8* }* %74, i32 0, i32 1
  store i8* null, i8** %76
  %77 = alloca i8*
  store i8* %73, i8** %77
  %78 = load i8*, i8** %77
  %79 = call %nyx_string* @Color_name(i8* %78)
  %80 = alloca %nyx_string*
  store %nyx_string* %79, %nyx_string** %80
  %81 = load %nyx_string*, %nyx_string** %80
  %82 = getelementptr [4 x i8], [4 x i8]* @.str7, i32 0, i32 0
  %83 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str7.c, i8* %82)
  %84 = call i1 @nyx_string_equals(%nyx_string* %81, %nyx_string* %83)
  %85 = getelementptr [17 x i8], [17 x i8]* @.str8, i32 0, i32 0
  %86 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str8.c, i8* %85)
  %87 = call i8* @nyx_string_to_cstr(%nyx_string* %86)
  br i1 %84, label %assert_pass_46, label %assert_fail_46
assert_fail_46:
  call void @nyx_assert_fail(i8* %87)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_46
assert_pass_46:
  %88 = getelementptr [27 x i8], [27 x i8]* @.str9, i32 0, i32 0
  %89 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str9.c, i8* %88)
  %90 = call i8* @nyx_string_to_cstr(%nyx_string* %89)
  call void @nyx_print_string(i8* %90)
  %91 = call i8* @GC_malloc(i64 16)
  %92 = bitcast i8* %91 to { i64, i8* }*
  %93 = getelementptr { i64, i8* }, { i64, i8* }* %92, i32 0, i32 0
  store i64 1, i64* %93
  %94 = getelementptr { i64, i8* }, { i64, i8* }* %92, i32 0, i32 1
  store i8* null, i8** %94
  %95 = alloca i8*
  store i8* %91, i8** %95
  %96 = load i8*, i8** %95
  %97 = call %nyx_string* @Color_name(i8* %96)
  %98 = getelementptr [6 x i8], [6 x i8]* @.str10, i32 0, i32 0
  %99 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str10.c, i8* %98)
  %100 = call i1 @nyx_string_equals(%nyx_string* %97, %nyx_string* %99)
  %101 = getelementptr [17 x i8], [17 x i8]* @.str11, i32 0, i32 0
  %102 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str11.c, i8* %101)
  %103 = call i8* @nyx_string_to_cstr(%nyx_string* %102)
  br i1 %100, label %assert_pass_47, label %assert_fail_47
assert_fail_47:
  call void @nyx_assert_fail(i8* %103)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_47
assert_pass_47:
  %104 = getelementptr [31 x i8], [31 x i8]* @.str12, i32 0, i32 0
  %105 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str12.c, i8* %104)
  %106 = call i8* @nyx_string_to_cstr(%nyx_string* %105)
  call void @nyx_print_string(i8* %106)
  %107 = load i8*, i8** %77
  %108 = call i1 @Color_is_primary(i8* %107)
  %109 = icmp eq i1 %108, 1
  %110 = getelementptr [17 x i8], [17 x i8]* @.str13, i32 0, i32 0
  %111 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str13.c, i8* %110)
  %112 = call i8* @nyx_string_to_cstr(%nyx_string* %111)
  br i1 %109, label %assert_pass_48, label %assert_fail_48
assert_fail_48:
  call void @nyx_assert_fail(i8* %112)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_48
assert_pass_48:
  %113 = getelementptr [34 x i8], [34 x i8]* @.str14, i32 0, i32 0
  %114 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str14.c, i8* %113)
  %115 = call i8* @nyx_string_to_cstr(%nyx_string* %114)
  call void @nyx_print_string(i8* %115)
  %116 = load i8*, i8** %95
  %117 = call i1 @Color_is_primary(i8* %116)
  %118 = icmp eq i1 %117, 0
  %119 = getelementptr [17 x i8], [17 x i8]* @.str15, i32 0, i32 0
  %120 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str15.c, i8* %119)
  %121 = call i8* @nyx_string_to_cstr(%nyx_string* %120)
  br i1 %118, label %assert_pass_49, label %assert_fail_49
assert_fail_49:
  call void @nyx_assert_fail(i8* %121)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_49
assert_pass_49:
  %122 = getelementptr [37 x i8], [37 x i8]* @.str16, i32 0, i32 0
  %123 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str16.c, i8* %122)
  %124 = call i8* @nyx_string_to_cstr(%nyx_string* %123)
  call void @nyx_print_string(i8* %124)
  %125 = call i8* @GC_malloc(i64 16)
  %126 = bitcast i8* %125 to { i64, i8* }*
  %127 = getelementptr { i64, i8* }, { i64, i8* }* %126, i32 0, i32 0
  store i64 0, i64* %127
  %128 = getelementptr { i64, i8* }, { i64, i8* }* %126, i32 0, i32 1
  %129 = call i8* @GC_malloc(i64 8)
  %130 = bitcast i8* %129 to i64*
  %131 = bitcast double 5.0 to i64
  %132 = getelementptr i64, i64* %130, i64 0
  store i64 %131, i64* %132
  store i8* %129, i8** %128
  %133 = alloca i8*
  store i8* %125, i8** %133
  %134 = load i8*, i8** %133
  %135 = call double @Shape_area(i8* %134)
  %136 = alloca double
  store double %135, double* %136
  %137 = load double, double* %136
  %138 = fcmp ogt double %137, 78.0
  %139 = getelementptr [17 x i8], [17 x i8]* @.str17, i32 0, i32 0
  %140 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str17.c, i8* %139)
  %141 = call i8* @nyx_string_to_cstr(%nyx_string* %140)
  br i1 %138, label %assert_pass_50, label %assert_fail_50
assert_fail_50:
  call void @nyx_assert_fail(i8* %141)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_50
assert_pass_50:
  %142 = load double, double* %136
  %143 = fcmp olt double %142, 79.0
  %144 = getelementptr [17 x i8], [17 x i8]* @.str18, i32 0, i32 0
  %145 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str18.c, i8* %144)
  %146 = call i8* @nyx_string_to_cstr(%nyx_string* %145)
  br i1 %143, label %assert_pass_51, label %assert_fail_51
assert_fail_51:
  call void @nyx_assert_fail(i8* %146)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_51
assert_pass_51:
  %147 = getelementptr [34 x i8], [34 x i8]* @.str19, i32 0, i32 0
  %148 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str19.c, i8* %147)
  %149 = call i8* @nyx_string_to_cstr(%nyx_string* %148)
  call void @nyx_print_string(i8* %149)
  %150 = load i8*, i8** %133
  %151 = call %nyx_string* @Shape_describe(i8* %150)
  %152 = getelementptr [7 x i8], [7 x i8]* @.str20, i32 0, i32 0
  %153 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str20.c, i8* %152)
  %154 = call i1 @nyx_string_equals(%nyx_string* %151, %nyx_string* %153)
  %155 = getelementptr [17 x i8], [17 x i8]* @.str21, i32 0, i32 0
  %156 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str21.c, i8* %155)
  %157 = call i8* @nyx_string_to_cstr(%nyx_string* %156)
  br i1 %154, label %assert_pass_52, label %assert_fail_52
assert_fail_52:
  call void @nyx_assert_fail(i8* %157)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_52
assert_pass_52:
  %158 = getelementptr [37 x i8], [37 x i8]* @.str22, i32 0, i32 0
  %159 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str22.c, i8* %158)
  %160 = call i8* @nyx_string_to_cstr(%nyx_string* %159)
  call void @nyx_print_string(i8* %160)
  %161 = call i8* @GC_malloc(i64 16)
  %162 = bitcast i8* %161 to { i64, i8* }*
  %163 = getelementptr { i64, i8* }, { i64, i8* }* %162, i32 0, i32 0
  store i64 1, i64* %163
  %164 = getelementptr { i64, i8* }, { i64, i8* }* %162, i32 0, i32 1
  %165 = call i8* @GC_malloc(i64 8)
  %166 = bitcast i8* %165 to i64*
  %167 = bitcast double 4.0 to i64
  %168 = getelementptr i64, i64* %166, i64 0
  store i64 %167, i64* %168
  store i8* %165, i8** %164
  %169 = alloca i8*
  store i8* %161, i8** %169
  %170 = load i8*, i8** %169
  %171 = call double @Shape_area(i8* %170)
  %172 = fcmp oeq double %171, 16.0
  %173 = getelementptr [17 x i8], [17 x i8]* @.str23, i32 0, i32 0
  %174 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str23.c, i8* %173)
  %175 = call i8* @nyx_string_to_cstr(%nyx_string* %174)
  br i1 %172, label %assert_pass_53, label %assert_fail_53
assert_fail_53:
  call void @nyx_assert_fail(i8* %175)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_53
assert_pass_53:
  %176 = getelementptr [35 x i8], [35 x i8]* @.str24, i32 0, i32 0
  %177 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str24.c, i8* %176)
  %178 = call i8* @nyx_string_to_cstr(%nyx_string* %177)
  call void @nyx_print_string(i8* %178)
  %179 = getelementptr [24 x i8], [24 x i8]* @.str25, i32 0, i32 0
  %180 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str25.c, i8* %179)
  %181 = call i8* @nyx_string_to_cstr(%nyx_string* %180)
  call void @nyx_print_string(i8* %181)
  ret i64 0
}


attributes #0 = { returns_twice }

