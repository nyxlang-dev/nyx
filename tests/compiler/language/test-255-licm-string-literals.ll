source_filename = "/home/admin/nyx/lang/tests/compiler/language/test-255-licm-string-literals.nx"
target triple = "x86_64-pc-linux-gnu"

@.str0 = private unnamed_addr constant [4 x i8] c"hot\00"
@.str1 = private unnamed_addr constant [2 x i8] c"H\00"
@.str1.c = internal global %nyx_string* null
@.str2 = private unnamed_addr constant [5 x i8] c"cold\00"
@.str3 = private unnamed_addr constant [2 x i8] c"C\00"
@.str3.c = internal global %nyx_string* null
@.str4 = private unnamed_addr constant [2 x i8] c"?\00"
@.str4.c = internal global %nyx_string* null
@.str5 = private unnamed_addr constant [3 x i8] c"ab\00"
@.str5.c = internal global %nyx_string* null
@.str6 = private unnamed_addr constant [11 x i8] c"ababababab\00"
@.str6.c = internal global %nyx_string* null
@.str7 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str7.c = internal global %nyx_string* null
@.str8 = private unnamed_addr constant [2 x i8] c"x\00"
@.str8.c = internal global %nyx_string* null
@.str9 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str9.c = internal global %nyx_string* null
@.str10 = private unnamed_addr constant [6 x i8] c"count\00"
@.str10.c = internal global %nyx_string* null
@.str11 = private unnamed_addr constant [6 x i8] c"count\00"
@.str11.c = internal global %nyx_string* null
@.str12 = private unnamed_addr constant [2 x i8] c"2\00"
@.str12.c = internal global %nyx_string* null
@.str13 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str13.c = internal global %nyx_string* null
@.str14 = private unnamed_addr constant [4 x i8] c"hot\00"
@.str14.c = internal global %nyx_string* null
@.str15 = private unnamed_addr constant [5 x i8] c"cold\00"
@.str15.c = internal global %nyx_string* null
@.str16 = private unnamed_addr constant [5 x i8] c"warm\00"
@.str16.c = internal global %nyx_string* null
@.str17 = private unnamed_addr constant [1 x i8] c"\00"
@.str17.c = internal global %nyx_string* null
@.str18 = private unnamed_addr constant [4 x i8] c"HC?\00"
@.str18.c = internal global %nyx_string* null
@.str19 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str19.c = internal global %nyx_string* null
@.str20 = private unnamed_addr constant [1 x i8] c"\00"
@.str20.c = internal global %nyx_string* null
@.str21 = private unnamed_addr constant [4 x i8] c"hot\00"
@.str21.c = internal global %nyx_string* null
@.str22 = private unnamed_addr constant [2 x i8] c"C\00"
@.str22.c = internal global %nyx_string* null
@.str23 = private unnamed_addr constant [2 x i8] c"?\00"
@.str23.c = internal global %nyx_string* null
@.str24 = private unnamed_addr constant [4 x i8] c"hot\00"
@.str25 = private unnamed_addr constant [5 x i8] c"cold\00"
@.str26 = private unnamed_addr constant [6 x i8] c"hotC?\00"
@.str26.c = internal global %nyx_string* null
@.str27 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str27.c = internal global %nyx_string* null
@.str28 = private unnamed_addr constant [24 x i8] c"licm-string-literals OK\00"
@.str28.c = internal global %nyx_string* null
@__nyx_test_failed = external global i64
@__nyx_test_mode = external global i64
; Nyx Compiler Bootstrap v3.0
; Generated from: /home/admin/nyx/lang/tests/compiler/language/test-255-licm-string-literals.nx

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
%nyx_string* %s.param) {
  %s.ptr = alloca %nyx_string*
  store %nyx_string* %s.param, %nyx_string** %s.ptr
  %1 = load %nyx_string*, %nyx_string** %s.ptr
  %2 = alloca i64
  store i64 0, i64* %2
  br label %match_arm2
match_arm2:
  %3 = getelementptr [4 x i8], [4 x i8]* @.str0, i32 0, i32 0
  %4 = call %nyx_string* @nyx_string_from_cstr(i8* %3)
  %5 = call i1 @nyx_string_equals(%nyx_string* %1, %nyx_string* %4)
  br i1 %5, label %lit_body11, label %match_arm3
lit_body11:
  %6 = getelementptr [2 x i8], [2 x i8]* @.str1, i32 0, i32 0
  %7 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1.c, i8* %6)
  ret %nyx_string* %7
match_arm3:
  %8 = getelementptr [5 x i8], [5 x i8]* @.str2, i32 0, i32 0
  %9 = call %nyx_string* @nyx_string_from_cstr(i8* %8)
  %10 = call i1 @nyx_string_equals(%nyx_string* %1, %nyx_string* %9)
  br i1 %10, label %lit_body12, label %match_arm4
lit_body12:
  %11 = getelementptr [2 x i8], [2 x i8]* @.str3, i32 0, i32 0
  %12 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str3.c, i8* %11)
  ret %nyx_string* %12
match_arm4:
  %13 = getelementptr [2 x i8], [2 x i8]* @.str4, i32 0, i32 0
  %14 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str4.c, i8* %13)
  ret %nyx_string* %14
match_end1:
  unreachable
  ret %nyx_string* null
}

define i64 @main(
i32 %argc, i8** %argv) {
  call void @nyx_set_args(i32 %argc, i8** %argv)
  %15 = call i8* @nyx_sb_new(i64 16)
  %16 = alloca i8*
  store i8* %15, i8** %16
  %17 = alloca i64
  store i64 0, i64* %17
  %18 = getelementptr [3 x i8], [3 x i8]* @.str5, i32 0, i32 0
  %19 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str5.c, i8* %18)
  %20 = alloca %nyx_string*
  store %nyx_string* %19, %nyx_string** %20
  %21 = call i8* @llvm.stacksave()
  br label %while_cond14
while_cond14:
  %22 = load i64, i64* %17
  %23 = icmp slt i64 %22, 5
  br i1 %23, label %while_body15, label %while_end16
while_body15:
  call void @llvm.stackrestore(i8* %21)
  %24 = load i8*, i8** %16
  %25 = load %nyx_string*, %nyx_string** %20
  call void @nyx_sb_append(i8* %24, %nyx_string* %25)
  %26 = load i64, i64* %17
  %27 = add i64 %26, 1
  store i64 %27, i64* %17
  br label %while_cond14
while_end16:
  %28 = load i8*, i8** %16
  %29 = call %nyx_string* @nyx_sb_to_string(i8* %28)
  %30 = getelementptr [11 x i8], [11 x i8]* @.str6, i32 0, i32 0
  %31 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str6.c, i8* %30)
  %32 = call i1 @nyx_string_equals(%nyx_string* %29, %nyx_string* %31)
  %33 = getelementptr [17 x i8], [17 x i8]* @.str7, i32 0, i32 0
  %34 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str7.c, i8* %33)
  %35 = call i8* @nyx_string_to_cstr(%nyx_string* %34)
  br i1 %32, label %assert_pass_17, label %assert_fail_17
assert_fail_17:
  call void @nyx_assert_fail(i8* %35)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_17
assert_pass_17:
  %36 = alloca i64
  store i64 0, i64* %36
  %37 = alloca i64
  store i64 0, i64* %37
  %38 = getelementptr [2 x i8], [2 x i8]* @.str8, i32 0, i32 0
  %39 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str8.c, i8* %38)
  %40 = alloca %nyx_string*
  store %nyx_string* %39, %nyx_string** %40
  %41 = call i8* @llvm.stacksave()
  br label %while_cond18
while_cond18:
  %42 = load i64, i64* %36
  %43 = icmp slt i64 %42, 3
  br i1 %43, label %while_body19, label %while_end20
while_body19:
  call void @llvm.stackrestore(i8* %41)
  %44 = alloca i64
  store i64 0, i64* %44
  %45 = call i8* @llvm.stacksave()
  br label %while_cond21
while_cond21:
  %46 = load i64, i64* %44
  %47 = icmp slt i64 %46, 4
  br i1 %47, label %while_body22, label %while_end23
while_body22:
  call void @llvm.stackrestore(i8* %45)
  %48 = load %nyx_string*, %nyx_string** %40
  %49 = load %nyx_string*, %nyx_string** %40
  %50 = call i1 @nyx_string_equals(%nyx_string* %48, %nyx_string* %49)
  br i1 %50, label %then24, label %else25
then24:
  %51 = load i64, i64* %37
  %52 = add i64 %51, 1
  store i64 %52, i64* %37
  br label %merge26
else25:
  br label %merge26
merge26:
  %53 = load i64, i64* %44
  %54 = add i64 %53, 1
  store i64 %54, i64* %44
  br label %while_cond21
while_end23:
  %55 = load i64, i64* %36
  %56 = add i64 %55, 1
  store i64 %56, i64* %36
  br label %while_cond18
while_end20:
  %57 = load i64, i64* %37
  %58 = icmp eq i64 %57, 12
  %59 = getelementptr [17 x i8], [17 x i8]* @.str9, i32 0, i32 0
  %60 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str9.c, i8* %59)
  %61 = call i8* @nyx_string_to_cstr(%nyx_string* %60)
  br i1 %58, label %assert_pass_27, label %assert_fail_27
assert_fail_27:
  call void @nyx_assert_fail(i8* %61)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_27
assert_pass_27:
  %62 = call i8* @nyx_map_new(i32 0)
  %63 = alloca i8*
  store i8* %62, i8** %63
  %64 = alloca i64
  store i64 0, i64* %64
  %65 = getelementptr [6 x i8], [6 x i8]* @.str10, i32 0, i32 0
  %66 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str10.c, i8* %65)
  %67 = alloca %nyx_string*
  store %nyx_string* %66, %nyx_string** %67
  %68 = call i8* @llvm.stacksave()
  br label %while_cond28
while_cond28:
  %69 = load i64, i64* %64
  %70 = icmp slt i64 %69, 3
  br i1 %70, label %while_body29, label %while_end30
while_body29:
  call void @llvm.stackrestore(i8* %68)
  %71 = load i8*, i8** %63
  %72 = load %nyx_string*, %nyx_string** %67
  %73 = load i64, i64* %64
  %74 = call %nyx_string* @nyx_string_from_int(i64 %73)
  %75 = call i8* @nyx_string_to_cstr(%nyx_string* %72)
  %76 = call i8* @nyx_string_to_cstr(%nyx_string* %74)
  call void @nyx_map_insert_str(i8* %71, i8* %75, i8* %76)
  %77 = load i64, i64* %64
  %78 = add i64 %77, 1
  store i64 %78, i64* %64
  br label %while_cond28
while_end30:
  %79 = load i8*, i8** %63
  %80 = getelementptr [6 x i8], [6 x i8]* @.str11, i32 0, i32 0
  %81 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str11.c, i8* %80)
  %82 = call i8* @nyx_string_to_cstr(%nyx_string* %81)
  %83 = call i8* @nyx_map_get_str(i8* %79, i8* %82)
  %84 = call %nyx_string* @nyx_string_from_cstr(i8* %83)
  %85 = getelementptr [2 x i8], [2 x i8]* @.str12, i32 0, i32 0
  %86 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str12.c, i8* %85)
  %87 = call i1 @nyx_string_equals(%nyx_string* %84, %nyx_string* %86)
  %88 = getelementptr [17 x i8], [17 x i8]* @.str13, i32 0, i32 0
  %89 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str13.c, i8* %88)
  %90 = call i8* @nyx_string_to_cstr(%nyx_string* %89)
  br i1 %87, label %assert_pass_31, label %assert_fail_31
assert_fail_31:
  call void @nyx_assert_fail(i8* %90)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_31
assert_pass_31:
  %91 = call { i64, i8* }* @nyx_array_new_ptr()
  %92 = getelementptr [4 x i8], [4 x i8]* @.str14, i32 0, i32 0
  %93 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str14.c, i8* %92)
  %94 = ptrtoint %nyx_string* %93 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %91, i64 %94, i64 2)
  %95 = getelementptr [5 x i8], [5 x i8]* @.str15, i32 0, i32 0
  %96 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str15.c, i8* %95)
  %97 = ptrtoint %nyx_string* %96 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %91, i64 %97, i64 2)
  %98 = getelementptr [5 x i8], [5 x i8]* @.str16, i32 0, i32 0
  %99 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str16.c, i8* %98)
  %100 = ptrtoint %nyx_string* %99 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %91, i64 %100, i64 2)
  %101 = alloca { i64, i8* }*
  store { i64, i8* }* %91, { i64, i8* }** %101
  %102 = getelementptr [1 x i8], [1 x i8]* @.str17, i32 0, i32 0
  %103 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str17.c, i8* %102)
  %104 = alloca %nyx_string*
  store %nyx_string* %103, %nyx_string** %104
  %105 = alloca i64
  store i64 0, i64* %105
  %106 = call i8* @llvm.stacksave()
  br label %while_cond32
while_cond32:
  %107 = load i64, i64* %105
  %108 = icmp slt i64 %107, 3
  br i1 %108, label %while_body33, label %while_end34
while_body33:
  call void @llvm.stackrestore(i8* %106)
  %109 = load %nyx_string*, %nyx_string** %104
  %110 = load { i64, i8* }*, { i64, i8* }** %101
  %111 = load i64, i64* %105
  %112 = call i64 @nyx_array_get_checked({ i64, i8* }* %110, i64 %111, i64 2)
  %113 = inttoptr i64 %112 to %nyx_string*
  %114 = call %nyx_string* @classify(%nyx_string* %113)
  %115 = call %nyx_string* @nyx_string_concat(%nyx_string* %109, %nyx_string* %114)
  store %nyx_string* %115, %nyx_string** %104
  %116 = load i64, i64* %105
  %117 = add i64 %116, 1
  store i64 %117, i64* %105
  br label %while_cond32
while_end34:
  %118 = load %nyx_string*, %nyx_string** %104
  %119 = getelementptr [4 x i8], [4 x i8]* @.str18, i32 0, i32 0
  %120 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str18.c, i8* %119)
  %121 = call i1 @nyx_string_equals(%nyx_string* %118, %nyx_string* %120)
  %122 = getelementptr [17 x i8], [17 x i8]* @.str19, i32 0, i32 0
  %123 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str19.c, i8* %122)
  %124 = call i8* @nyx_string_to_cstr(%nyx_string* %123)
  br i1 %121, label %assert_pass_35, label %assert_fail_35
assert_fail_35:
  call void @nyx_assert_fail(i8* %124)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_35
assert_pass_35:
  %125 = getelementptr [1 x i8], [1 x i8]* @.str20, i32 0, i32 0
  %126 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str20.c, i8* %125)
  %127 = alloca %nyx_string*
  store %nyx_string* %126, %nyx_string** %127
  %128 = alloca i64
  store i64 0, i64* %128
  %129 = getelementptr [4 x i8], [4 x i8]* @.str21, i32 0, i32 0
  %130 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str21.c, i8* %129)
  %131 = alloca %nyx_string*
  store %nyx_string* %130, %nyx_string** %131
  %132 = getelementptr [2 x i8], [2 x i8]* @.str22, i32 0, i32 0
  %133 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str22.c, i8* %132)
  %134 = alloca %nyx_string*
  store %nyx_string* %133, %nyx_string** %134
  %135 = getelementptr [2 x i8], [2 x i8]* @.str23, i32 0, i32 0
  %136 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str23.c, i8* %135)
  %137 = alloca %nyx_string*
  store %nyx_string* %136, %nyx_string** %137
  %138 = call i8* @llvm.stacksave()
  br label %while_cond36
while_cond36:
  %139 = load i64, i64* %128
  %140 = icmp slt i64 %139, 3
  br i1 %140, label %while_body37, label %while_end38
while_body37:
  call void @llvm.stackrestore(i8* %138)
  %141 = load { i64, i8* }*, { i64, i8* }** %101
  %142 = load i64, i64* %128
  %143 = call i64 @nyx_array_get_checked({ i64, i8* }* %141, i64 %142, i64 2)
  %144 = inttoptr i64 %143 to %nyx_string*
  %145 = alloca %nyx_string*
  store %nyx_string* %144, %nyx_string** %145
  %146 = load %nyx_string*, %nyx_string** %145
  %147 = alloca i64
  store i64 0, i64* %147
  br label %match_arm41
match_arm41:
  %148 = getelementptr [4 x i8], [4 x i8]* @.str24, i32 0, i32 0
  %149 = call %nyx_string* @nyx_string_from_cstr(i8* %148)
  %150 = call i1 @nyx_string_equals(%nyx_string* %146, %nyx_string* %149)
  br i1 %150, label %lit_body50, label %match_arm42
lit_body50:
  %151 = load %nyx_string*, %nyx_string** %127
  %152 = load %nyx_string*, %nyx_string** %131
  %153 = call %nyx_string* @nyx_string_concat(%nyx_string* %151, %nyx_string* %152)
  store %nyx_string* %153, %nyx_string** %127
  br label %match_end40
match_arm42:
  %154 = getelementptr [5 x i8], [5 x i8]* @.str25, i32 0, i32 0
  %155 = call %nyx_string* @nyx_string_from_cstr(i8* %154)
  %156 = call i1 @nyx_string_equals(%nyx_string* %146, %nyx_string* %155)
  br i1 %156, label %lit_body51, label %match_arm43
lit_body51:
  %157 = load %nyx_string*, %nyx_string** %127
  %158 = load %nyx_string*, %nyx_string** %134
  %159 = call %nyx_string* @nyx_string_concat(%nyx_string* %157, %nyx_string* %158)
  store %nyx_string* %159, %nyx_string** %127
  br label %match_end40
match_arm43:
  %160 = load %nyx_string*, %nyx_string** %127
  %161 = load %nyx_string*, %nyx_string** %137
  %162 = call %nyx_string* @nyx_string_concat(%nyx_string* %160, %nyx_string* %161)
  store %nyx_string* %162, %nyx_string** %127
  br label %match_end40
match_end40:
  %163 = load i64, i64* %147
  %164 = load i64, i64* %128
  %165 = add i64 %164, 1
  store i64 %165, i64* %128
  br label %while_cond36
while_end38:
  %166 = load %nyx_string*, %nyx_string** %127
  %167 = getelementptr [6 x i8], [6 x i8]* @.str26, i32 0, i32 0
  %168 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str26.c, i8* %167)
  %169 = call i1 @nyx_string_equals(%nyx_string* %166, %nyx_string* %168)
  %170 = getelementptr [17 x i8], [17 x i8]* @.str27, i32 0, i32 0
  %171 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str27.c, i8* %170)
  %172 = call i8* @nyx_string_to_cstr(%nyx_string* %171)
  br i1 %169, label %assert_pass_53, label %assert_fail_53
assert_fail_53:
  call void @nyx_assert_fail(i8* %172)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_53
assert_pass_53:
  %173 = getelementptr [24 x i8], [24 x i8]* @.str28, i32 0, i32 0
  %174 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str28.c, i8* %173)
  %175 = call i8* @nyx_string_to_cstr(%nyx_string* %174)
  call void @nyx_print_string(i8* %175)
  ret i64 0
}


attributes #0 = { returns_twice }

