source_filename = "/home/admin/nyx/lang/tests/compiler/language/test-142-nyx-add.nx"
target triple = "x86_64-pc-linux-gnu"

@.str0 = private unnamed_addr constant [1 x i8] c"="
@.str1 = private unnamed_addr constant [1 x i8] c"\00"
@.str1.c = internal global %nyx_string* null
@.str2 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str2.c = internal global %nyx_string* null
@.str3 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str3.c = internal global %nyx_string* null
@.str4 = private unnamed_addr constant [1 x i8] c"="
@.str5 = private unnamed_addr constant [1 x i8] c"\00"
@.str5.c = internal global %nyx_string* null
@.str6 = private unnamed_addr constant [119 x i8] c"[package]\0aname = \22myapp\22\0aversion = \221.0.0\22\0amain = \22src/main.nx\22\0a\0a[dependencies]\0astd-http = \222.0.0\22\0anyx-json = \221.5.0\22\0a\00"
@.str6.c = internal global %nyx_string* null
@.str7 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str7.c = internal global %nyx_string* null
@.str8 = private unnamed_addr constant [1 x i8] c"\00"
@.str8.c = internal global %nyx_string* null
@.str9 = private unnamed_addr constant [1 x i8] c"\00"
@.str9.c = internal global %nyx_string* null
@.str10 = private unnamed_addr constant [2 x i8] c"#\00"
@.str10.c = internal global %nyx_string* null
@.str11 = private unnamed_addr constant [2 x i8] c"[\00"
@.str11.c = internal global %nyx_string* null
@.str12 = private unnamed_addr constant [2 x i8] c"]\00"
@.str12.c = internal global %nyx_string* null
@.str13 = private unnamed_addr constant [8 x i8] c"package\00"
@.str13.c = internal global %nyx_string* null
@.str14 = private unnamed_addr constant [5 x i8] c"name\00"
@.str14.c = internal global %nyx_string* null
@.str15 = private unnamed_addr constant [7 x i8] c"name: \00"
@.str15.c = internal global %nyx_string* null
@.str16 = private unnamed_addr constant [8 x i8] c"version\00"
@.str16.c = internal global %nyx_string* null
@.str17 = private unnamed_addr constant [10 x i8] c"version: \00"
@.str17.c = internal global %nyx_string* null
@.str18 = private unnamed_addr constant [13 x i8] c"dependencies\00"
@.str18.c = internal global %nyx_string* null
@.str19 = private unnamed_addr constant [7 x i8] c"deps: \00"
@.str19.c = internal global %nyx_string* null
@.str20 = private unnamed_addr constant [3 x i8] c"  \00"
@.str20.c = internal global %nyx_string* null
@.str21 = private unnamed_addr constant [4 x i8] c" = \00"
@.str21.c = internal global %nyx_string* null
@.str22 = private unnamed_addr constant [71 x i8] c"# nyx.lock\0a[package]\0aname = \22myapp\22\0aversion = \221.0.0\22\0a\0a[dependencies]\0a\00"
@.str22.c = internal global %nyx_string* null
@.str23 = private unnamed_addr constant [5 x i8] c" = \22\00"
@.str23.c = internal global %nyx_string* null
@.str24 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str24.c = internal global %nyx_string* null
@.str25 = private unnamed_addr constant [9 x i8] c"std-http\00"
@.str25.c = internal global %nyx_string* null
@.str26 = private unnamed_addr constant [9 x i8] c"nyx-json\00"
@.str26.c = internal global %nyx_string* null
@.str27 = private unnamed_addr constant [12 x i8] c"lockfile ok\00"
@.str27.c = internal global %nyx_string* null
@.str28 = private unnamed_addr constant [11 x i8] c"nyx-add ok\00"
@.str28.c = internal global %nyx_string* null
@__nyx_test_failed = external global i64
@__nyx_test_mode = external global i64
; Nyx Compiler Bootstrap v3.0
; Generated from: /home/admin/nyx/lang/tests/compiler/language/test-142-nyx-add.nx

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


define internal %nyx_string* @parse_toml_value(
%nyx_string* %line.param) {
  %line.ptr = alloca %nyx_string*
  store %nyx_string* %line.param, %nyx_string** %line.ptr
  %1 = load %nyx_string*, %nyx_string** %line.ptr
  %2 = call %nyx_string* @nyx_string_trim(%nyx_string* %1)
  %3 = alloca %nyx_string*
  store %nyx_string* %2, %nyx_string** %3
  %4 = sub i64 0, 1
  %5 = alloca i64
  store i64 %4, i64* %5
  %6 = alloca i64
  store i64 0, i64* %6
  %7 = call i8* @llvm.stacksave()
  br label %while_cond0
while_cond0:
  %8 = load i64, i64* %6
  %9 = load %nyx_string*, %nyx_string** %3
  %10 = call i64 @nyx_string_byte_length(%nyx_string* %9)
  %11 = icmp slt i64 %8, %10
  br i1 %11, label %while_body1, label %while_end2
while_body1:
  call void @llvm.stackrestore(i8* %7)
  %12 = load %nyx_string*, %nyx_string** %3
  %13 = load i64, i64* %6
  %14 = call i8 @nyx_string_char_at(%nyx_string* %12, i64 %13)
  %15 = zext i8 %14 to i64
  %16 = trunc i64 %15 to i8
  %17 = alloca i8
  store i8 %16, i8* %17
  %18 = load i8, i8* %17
  %19 = getelementptr [1 x i8], [1 x i8]* @.str0, i32 0, i32 0
  %20 = load i8, i8* %19
  %21 = zext i8 %20 to i64
  %22 = zext i8 %18 to i64
  %23 = icmp eq i64 %22, %21
  br i1 %23, label %then3, label %else4
then3:
  %24 = load i64, i64* %6
  store i64 %24, i64* %5
  %25 = load %nyx_string*, %nyx_string** %3
  %26 = call i64 @nyx_string_byte_length(%nyx_string* %25)
  store i64 %26, i64* %6
  br label %merge5
else4:
  %27 = load i64, i64* %6
  %28 = add i64 %27, 1
  store i64 %28, i64* %6
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %29 = load i64, i64* %5
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %then6, label %else7
then6:
  %31 = getelementptr [1 x i8], [1 x i8]* @.str1, i32 0, i32 0
  %32 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1.c, i8* %31)
  ret %nyx_string* %32
else7:
  br label %merge8
merge8:
  %33 = load %nyx_string*, %nyx_string** %3
  %34 = load i64, i64* %5
  %35 = add i64 %34, 1
  %36 = load %nyx_string*, %nyx_string** %3
  %37 = call i64 @nyx_string_byte_length(%nyx_string* %36)
  %38 = call %nyx_string* @nyx_string_substring(%nyx_string* %33, i64 %35, i64 %37)
  %39 = call %nyx_string* @nyx_string_trim(%nyx_string* %38)
  %40 = alloca %nyx_string*
  store %nyx_string* %39, %nyx_string** %40
  %41 = alloca i1
  store i1 false, i1* %41
  %42 = load %nyx_string*, %nyx_string** %40
  %43 = getelementptr [2 x i8], [2 x i8]* @.str2, i32 0, i32 0
  %44 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str2.c, i8* %43)
  %45 = call i1 @nyx_string_starts_with(%nyx_string* %42, %nyx_string* %44)
  br i1 %45, label %sc_and_rhs9, label %sc_and_end10
sc_and_rhs9:
  %46 = load %nyx_string*, %nyx_string** %40
  %47 = getelementptr [2 x i8], [2 x i8]* @.str3, i32 0, i32 0
  %48 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str3.c, i8* %47)
  %49 = call i1 @nyx_string_ends_with(%nyx_string* %46, %nyx_string* %48)
  store i1 %49, i1* %41
  br label %sc_and_end10
sc_and_end10:
  %50 = load i1, i1* %41
  br i1 %50, label %then11, label %else12
then11:
  %51 = load %nyx_string*, %nyx_string** %40
  %52 = load %nyx_string*, %nyx_string** %40
  %53 = call i64 @nyx_string_byte_length(%nyx_string* %52)
  %54 = sub i64 %53, 1
  %55 = call %nyx_string* @nyx_string_substring(%nyx_string* %51, i64 1, i64 %54)
  ret %nyx_string* %55
else12:
  br label %merge13
merge13:
  %56 = load %nyx_string*, %nyx_string** %40
  ret %nyx_string* %56
}

define internal %nyx_string* @parse_toml_key(
%nyx_string* %line.param) {
  %line.ptr = alloca %nyx_string*
  store %nyx_string* %line.param, %nyx_string** %line.ptr
  %57 = load %nyx_string*, %nyx_string** %line.ptr
  %58 = call %nyx_string* @nyx_string_trim(%nyx_string* %57)
  %59 = alloca %nyx_string*
  store %nyx_string* %58, %nyx_string** %59
  %60 = sub i64 0, 1
  %61 = alloca i64
  store i64 %60, i64* %61
  %62 = alloca i64
  store i64 0, i64* %62
  %63 = call i8* @llvm.stacksave()
  br label %while_cond14
while_cond14:
  %64 = load i64, i64* %62
  %65 = load %nyx_string*, %nyx_string** %59
  %66 = call i64 @nyx_string_byte_length(%nyx_string* %65)
  %67 = icmp slt i64 %64, %66
  br i1 %67, label %while_body15, label %while_end16
while_body15:
  call void @llvm.stackrestore(i8* %63)
  %68 = load %nyx_string*, %nyx_string** %59
  %69 = load i64, i64* %62
  %70 = call i8 @nyx_string_char_at(%nyx_string* %68, i64 %69)
  %71 = zext i8 %70 to i64
  %72 = trunc i64 %71 to i8
  %73 = alloca i8
  store i8 %72, i8* %73
  %74 = load i8, i8* %73
  %75 = getelementptr [1 x i8], [1 x i8]* @.str4, i32 0, i32 0
  %76 = load i8, i8* %75
  %77 = zext i8 %76 to i64
  %78 = zext i8 %74 to i64
  %79 = icmp eq i64 %78, %77
  br i1 %79, label %then17, label %else18
then17:
  %80 = load i64, i64* %62
  store i64 %80, i64* %61
  %81 = load %nyx_string*, %nyx_string** %59
  %82 = call i64 @nyx_string_byte_length(%nyx_string* %81)
  store i64 %82, i64* %62
  br label %merge19
else18:
  %83 = load i64, i64* %62
  %84 = add i64 %83, 1
  store i64 %84, i64* %62
  br label %merge19
merge19:
  br label %while_cond14
while_end16:
  %85 = load i64, i64* %61
  %86 = icmp slt i64 %85, 0
  br i1 %86, label %then20, label %else21
then20:
  %87 = getelementptr [1 x i8], [1 x i8]* @.str5, i32 0, i32 0
  %88 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str5.c, i8* %87)
  ret %nyx_string* %88
else21:
  br label %merge22
merge22:
  %89 = load %nyx_string*, %nyx_string** %59
  %90 = load i64, i64* %61
  %91 = call %nyx_string* @nyx_string_substring(%nyx_string* %89, i64 0, i64 %90)
  %92 = call %nyx_string* @nyx_string_trim(%nyx_string* %91)
  ret %nyx_string* %92
}

define i64 @main(
i32 %argc, i8** %argv) {
  call void @nyx_set_args(i32 %argc, i8** %argv)
  %93 = getelementptr [119 x i8], [119 x i8]* @.str6, i32 0, i32 0
  %94 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str6.c, i8* %93)
  %95 = alloca %nyx_string*
  store %nyx_string* %94, %nyx_string** %95
  %96 = call { i64, i8* }* @nyx_array_new_ptr()
  %97 = alloca { i64, i8* }*
  store { i64, i8* }* %96, { i64, i8* }** %97
  %98 = call { i64, i8* }* @nyx_array_new_ptr()
  %99 = alloca { i64, i8* }*
  store { i64, i8* }* %98, { i64, i8* }** %99
  %100 = load %nyx_string*, %nyx_string** %95
  %101 = getelementptr [2 x i8], [2 x i8]* @.str7, i32 0, i32 0
  %102 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str7.c, i8* %101)
  %103 = call { i64, i8* }* @nyx_string_split(%nyx_string* %100, %nyx_string* %102)
  %104 = alloca { i64, i8* }*
  store { i64, i8* }* %103, { i64, i8* }** %104
  %105 = getelementptr [1 x i8], [1 x i8]* @.str8, i32 0, i32 0
  %106 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str8.c, i8* %105)
  %107 = alloca %nyx_string*
  store %nyx_string* %106, %nyx_string** %107
  %108 = alloca i64
  store i64 0, i64* %108
  %109 = getelementptr [1 x i8], [1 x i8]* @.str9, i32 0, i32 0
  %110 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str9.c, i8* %109)
  %111 = alloca %nyx_string*
  store %nyx_string* %110, %nyx_string** %111
  %112 = getelementptr [2 x i8], [2 x i8]* @.str10, i32 0, i32 0
  %113 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str10.c, i8* %112)
  %114 = alloca %nyx_string*
  store %nyx_string* %113, %nyx_string** %114
  %115 = getelementptr [2 x i8], [2 x i8]* @.str11, i32 0, i32 0
  %116 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str11.c, i8* %115)
  %117 = alloca %nyx_string*
  store %nyx_string* %116, %nyx_string** %117
  %118 = getelementptr [2 x i8], [2 x i8]* @.str12, i32 0, i32 0
  %119 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str12.c, i8* %118)
  %120 = alloca %nyx_string*
  store %nyx_string* %119, %nyx_string** %120
  %121 = getelementptr [8 x i8], [8 x i8]* @.str13, i32 0, i32 0
  %122 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str13.c, i8* %121)
  %123 = alloca %nyx_string*
  store %nyx_string* %122, %nyx_string** %123
  %124 = getelementptr [5 x i8], [5 x i8]* @.str14, i32 0, i32 0
  %125 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str14.c, i8* %124)
  %126 = alloca %nyx_string*
  store %nyx_string* %125, %nyx_string** %126
  %127 = getelementptr [7 x i8], [7 x i8]* @.str15, i32 0, i32 0
  %128 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str15.c, i8* %127)
  %129 = alloca %nyx_string*
  store %nyx_string* %128, %nyx_string** %129
  %130 = getelementptr [8 x i8], [8 x i8]* @.str16, i32 0, i32 0
  %131 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str16.c, i8* %130)
  %132 = alloca %nyx_string*
  store %nyx_string* %131, %nyx_string** %132
  %133 = getelementptr [10 x i8], [10 x i8]* @.str17, i32 0, i32 0
  %134 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str17.c, i8* %133)
  %135 = alloca %nyx_string*
  store %nyx_string* %134, %nyx_string** %135
  %136 = getelementptr [13 x i8], [13 x i8]* @.str18, i32 0, i32 0
  %137 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str18.c, i8* %136)
  %138 = alloca %nyx_string*
  store %nyx_string* %137, %nyx_string** %138
  %139 = call i8* @llvm.stacksave()
  br label %while_cond23
while_cond23:
  %140 = load i64, i64* %108
  %141 = load { i64, i8* }*, { i64, i8* }** %104
  %142 = call i64 @nyx_array_length({ i64, i8* }* %141)
  %143 = icmp slt i64 %140, %142
  br i1 %143, label %while_body24, label %while_end25
while_body24:
  call void @llvm.stackrestore(i8* %139)
  %144 = load { i64, i8* }*, { i64, i8* }** %104
  %145 = load i64, i64* %108
  %146 = call i64 @nyx_array_get_checked({ i64, i8* }* %144, i64 %145, i64 2)
  %147 = inttoptr i64 %146 to %nyx_string*
  %148 = alloca %nyx_string*
  store %nyx_string* %147, %nyx_string** %148
  %149 = load %nyx_string*, %nyx_string** %148
  %150 = call %nyx_string* @nyx_string_trim(%nyx_string* %149)
  %151 = alloca %nyx_string*
  store %nyx_string* %150, %nyx_string** %151
  %152 = alloca i1
  store i1 true, i1* %152
  %153 = load %nyx_string*, %nyx_string** %151
  %154 = load %nyx_string*, %nyx_string** %111
  %155 = call i1 @nyx_string_equals(%nyx_string* %153, %nyx_string* %154)
  br i1 %155, label %sc_or_end27, label %sc_or_rhs26
sc_or_rhs26:
  %156 = load %nyx_string*, %nyx_string** %151
  %157 = load %nyx_string*, %nyx_string** %114
  %158 = call i1 @nyx_string_starts_with(%nyx_string* %156, %nyx_string* %157)
  store i1 %158, i1* %152
  br label %sc_or_end27
sc_or_end27:
  %159 = load i1, i1* %152
  br i1 %159, label %then28, label %else29
then28:
  %160 = load i64, i64* %108
  %161 = add i64 %160, 1
  store i64 %161, i64* %108
  br label %merge30
else29:
  %162 = alloca i1
  store i1 false, i1* %162
  %163 = load %nyx_string*, %nyx_string** %151
  %164 = load %nyx_string*, %nyx_string** %117
  %165 = call i1 @nyx_string_starts_with(%nyx_string* %163, %nyx_string* %164)
  br i1 %165, label %sc_and_rhs31, label %sc_and_end32
sc_and_rhs31:
  %166 = load %nyx_string*, %nyx_string** %151
  %167 = load %nyx_string*, %nyx_string** %120
  %168 = call i1 @nyx_string_ends_with(%nyx_string* %166, %nyx_string* %167)
  store i1 %168, i1* %162
  br label %sc_and_end32
sc_and_end32:
  %169 = load i1, i1* %162
  br i1 %169, label %then33, label %else34
then33:
  %170 = load %nyx_string*, %nyx_string** %151
  %171 = load %nyx_string*, %nyx_string** %151
  %172 = call i64 @nyx_string_byte_length(%nyx_string* %171)
  %173 = sub i64 %172, 1
  %174 = call %nyx_string* @nyx_string_substring(%nyx_string* %170, i64 1, i64 %173)
  %175 = call %nyx_string* @nyx_string_trim(%nyx_string* %174)
  store %nyx_string* %175, %nyx_string** %107
  %176 = load i64, i64* %108
  %177 = add i64 %176, 1
  store i64 %177, i64* %108
  br label %merge35
else34:
  %178 = load %nyx_string*, %nyx_string** %151
  %179 = call %nyx_string* @parse_toml_key(%nyx_string* %178)
  %180 = alloca %nyx_string*
  store %nyx_string* %179, %nyx_string** %180
  %181 = load %nyx_string*, %nyx_string** %151
  %182 = call %nyx_string* @parse_toml_value(%nyx_string* %181)
  %183 = alloca %nyx_string*
  store %nyx_string* %182, %nyx_string** %183
  %184 = load %nyx_string*, %nyx_string** %107
  %185 = load %nyx_string*, %nyx_string** %123
  %186 = call i1 @nyx_string_equals(%nyx_string* %184, %nyx_string* %185)
  br i1 %186, label %then36, label %else37
then36:
  %187 = load %nyx_string*, %nyx_string** %180
  %188 = load %nyx_string*, %nyx_string** %126
  %189 = call i1 @nyx_string_equals(%nyx_string* %187, %nyx_string* %188)
  br i1 %189, label %then39, label %else40
then39:
  %190 = load %nyx_string*, %nyx_string** %129
  %191 = load %nyx_string*, %nyx_string** %183
  %192 = call %nyx_string* @nyx_string_concat(%nyx_string* %190, %nyx_string* %191)
  %193 = call i8* @nyx_string_to_cstr(%nyx_string* %192)
  call void @nyx_print_string(i8* %193)
  br label %merge41
else40:
  br label %merge41
merge41:
  %194 = load %nyx_string*, %nyx_string** %180
  %195 = load %nyx_string*, %nyx_string** %132
  %196 = call i1 @nyx_string_equals(%nyx_string* %194, %nyx_string* %195)
  br i1 %196, label %then42, label %else43
then42:
  %197 = load %nyx_string*, %nyx_string** %135
  %198 = load %nyx_string*, %nyx_string** %183
  %199 = call %nyx_string* @nyx_string_concat(%nyx_string* %197, %nyx_string* %198)
  %200 = call i8* @nyx_string_to_cstr(%nyx_string* %199)
  call void @nyx_print_string(i8* %200)
  br label %merge44
else43:
  br label %merge44
merge44:
  br label %merge38
else37:
  br label %merge38
merge38:
  %201 = load %nyx_string*, %nyx_string** %107
  %202 = load %nyx_string*, %nyx_string** %138
  %203 = call i1 @nyx_string_equals(%nyx_string* %201, %nyx_string* %202)
  br i1 %203, label %then45, label %else46
then45:
  %204 = alloca i1
  store i1 false, i1* %204
  %205 = load %nyx_string*, %nyx_string** %180
  %206 = load %nyx_string*, %nyx_string** %111
  %207 = call i1 @nyx_string_equals(%nyx_string* %205, %nyx_string* %206)
  %208 = xor i1 %207, true
  br i1 %208, label %sc_and_rhs48, label %sc_and_end49
sc_and_rhs48:
  %209 = load %nyx_string*, %nyx_string** %183
  %210 = load %nyx_string*, %nyx_string** %111
  %211 = call i1 @nyx_string_equals(%nyx_string* %209, %nyx_string* %210)
  %212 = xor i1 %211, true
  store i1 %212, i1* %204
  br label %sc_and_end49
sc_and_end49:
  %213 = load i1, i1* %204
  br i1 %213, label %then50, label %else51
then50:
  %214 = load { i64, i8* }*, { i64, i8* }** %97
  %215 = load %nyx_string*, %nyx_string** %180
  %216 = ptrtoint %nyx_string* %215 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %214, i64 %216, i64 2)
  %217 = load { i64, i8* }*, { i64, i8* }** %99
  %218 = load %nyx_string*, %nyx_string** %183
  %219 = ptrtoint %nyx_string* %218 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %217, i64 %219, i64 2)
  br label %merge52
else51:
  br label %merge52
merge52:
  br label %merge47
else46:
  br label %merge47
merge47:
  %220 = load i64, i64* %108
  %221 = add i64 %220, 1
  store i64 %221, i64* %108
  br label %merge35
merge35:
  br label %merge30
merge30:
  br label %while_cond23
while_end25:
  %222 = getelementptr [7 x i8], [7 x i8]* @.str19, i32 0, i32 0
  %223 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str19.c, i8* %222)
  %224 = load { i64, i8* }*, { i64, i8* }** %97
  %225 = call i64 @nyx_array_length({ i64, i8* }* %224)
  %226 = call %nyx_string* @nyx_string_from_int(i64 %225)
  %227 = call %nyx_string* @nyx_string_concat(%nyx_string* %223, %nyx_string* %226)
  %228 = call i8* @nyx_string_to_cstr(%nyx_string* %227)
  call void @nyx_print_string(i8* %228)
  %229 = alloca i64
  store i64 0, i64* %229
  %230 = getelementptr [3 x i8], [3 x i8]* @.str20, i32 0, i32 0
  %231 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str20.c, i8* %230)
  %232 = alloca %nyx_string*
  store %nyx_string* %231, %nyx_string** %232
  %233 = getelementptr [4 x i8], [4 x i8]* @.str21, i32 0, i32 0
  %234 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str21.c, i8* %233)
  %235 = alloca %nyx_string*
  store %nyx_string* %234, %nyx_string** %235
  %236 = call i8* @llvm.stacksave()
  br label %while_cond53
while_cond53:
  %237 = load i64, i64* %229
  %238 = load { i64, i8* }*, { i64, i8* }** %97
  %239 = call i64 @nyx_array_length({ i64, i8* }* %238)
  %240 = icmp slt i64 %237, %239
  br i1 %240, label %while_body54, label %while_end55
while_body54:
  call void @llvm.stackrestore(i8* %236)
  %241 = load { i64, i8* }*, { i64, i8* }** %97
  %242 = load i64, i64* %229
  %243 = call i64 @nyx_array_get_checked({ i64, i8* }* %241, i64 %242, i64 2)
  %244 = inttoptr i64 %243 to %nyx_string*
  %245 = alloca %nyx_string*
  store %nyx_string* %244, %nyx_string** %245
  %246 = load { i64, i8* }*, { i64, i8* }** %99
  %247 = load i64, i64* %229
  %248 = call i64 @nyx_array_get_checked({ i64, i8* }* %246, i64 %247, i64 2)
  %249 = inttoptr i64 %248 to %nyx_string*
  %250 = alloca %nyx_string*
  store %nyx_string* %249, %nyx_string** %250
  %251 = load %nyx_string*, %nyx_string** %232
  %252 = load %nyx_string*, %nyx_string** %245
  %253 = call %nyx_string* @nyx_string_concat(%nyx_string* %251, %nyx_string* %252)
  %254 = load %nyx_string*, %nyx_string** %235
  %255 = call %nyx_string* @nyx_string_concat(%nyx_string* %253, %nyx_string* %254)
  %256 = load %nyx_string*, %nyx_string** %250
  %257 = call %nyx_string* @nyx_string_concat(%nyx_string* %255, %nyx_string* %256)
  %258 = call i8* @nyx_string_to_cstr(%nyx_string* %257)
  call void @nyx_print_string(i8* %258)
  %259 = load i64, i64* %229
  %260 = add i64 %259, 1
  store i64 %260, i64* %229
  br label %while_cond53
while_end55:
  %261 = getelementptr [71 x i8], [71 x i8]* @.str22, i32 0, i32 0
  %262 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str22.c, i8* %261)
  %263 = alloca %nyx_string*
  store %nyx_string* %262, %nyx_string** %263
  %264 = alloca i64
  store i64 0, i64* %264
  %265 = getelementptr [5 x i8], [5 x i8]* @.str23, i32 0, i32 0
  %266 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str23.c, i8* %265)
  %267 = alloca %nyx_string*
  store %nyx_string* %266, %nyx_string** %267
  %268 = getelementptr [3 x i8], [3 x i8]* @.str24, i32 0, i32 0
  %269 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str24.c, i8* %268)
  %270 = alloca %nyx_string*
  store %nyx_string* %269, %nyx_string** %270
  %271 = call i8* @llvm.stacksave()
  br label %while_cond56
while_cond56:
  %272 = load i64, i64* %264
  %273 = load { i64, i8* }*, { i64, i8* }** %97
  %274 = call i64 @nyx_array_length({ i64, i8* }* %273)
  %275 = icmp slt i64 %272, %274
  br i1 %275, label %while_body57, label %while_end58
while_body57:
  call void @llvm.stackrestore(i8* %271)
  %276 = load { i64, i8* }*, { i64, i8* }** %97
  %277 = load i64, i64* %264
  %278 = call i64 @nyx_array_get_checked({ i64, i8* }* %276, i64 %277, i64 2)
  %279 = inttoptr i64 %278 to %nyx_string*
  %280 = alloca %nyx_string*
  store %nyx_string* %279, %nyx_string** %280
  %281 = load { i64, i8* }*, { i64, i8* }** %99
  %282 = load i64, i64* %264
  %283 = call i64 @nyx_array_get_checked({ i64, i8* }* %281, i64 %282, i64 2)
  %284 = inttoptr i64 %283 to %nyx_string*
  %285 = alloca %nyx_string*
  store %nyx_string* %284, %nyx_string** %285
  %286 = load %nyx_string*, %nyx_string** %263
  %287 = load %nyx_string*, %nyx_string** %280
  %288 = call %nyx_string* @nyx_string_concat(%nyx_string* %286, %nyx_string* %287)
  %289 = load %nyx_string*, %nyx_string** %267
  %290 = call %nyx_string* @nyx_string_concat(%nyx_string* %288, %nyx_string* %289)
  %291 = load %nyx_string*, %nyx_string** %285
  %292 = call %nyx_string* @nyx_string_concat(%nyx_string* %290, %nyx_string* %291)
  %293 = load %nyx_string*, %nyx_string** %270
  %294 = call %nyx_string* @nyx_string_concat(%nyx_string* %292, %nyx_string* %293)
  store %nyx_string* %294, %nyx_string** %263
  %295 = load i64, i64* %264
  %296 = add i64 %295, 1
  store i64 %296, i64* %264
  br label %while_cond56
while_end58:
  %297 = load %nyx_string*, %nyx_string** %263
  %298 = getelementptr [9 x i8], [9 x i8]* @.str25, i32 0, i32 0
  %299 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str25.c, i8* %298)
  %300 = call i1 @nyx_string_contains(%nyx_string* %297, %nyx_string* %299)
  %301 = alloca i1
  store i1 %300, i1* %301
  %302 = load %nyx_string*, %nyx_string** %263
  %303 = getelementptr [9 x i8], [9 x i8]* @.str26, i32 0, i32 0
  %304 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str26.c, i8* %303)
  %305 = call i1 @nyx_string_contains(%nyx_string* %302, %nyx_string* %304)
  %306 = alloca i1
  store i1 %305, i1* %306
  %307 = alloca i1
  store i1 false, i1* %307
  %308 = load i1, i1* %301
  br i1 %308, label %sc_and_rhs59, label %sc_and_end60
sc_and_rhs59:
  %309 = load i1, i1* %306
  store i1 %309, i1* %307
  br label %sc_and_end60
sc_and_end60:
  %310 = load i1, i1* %307
  br i1 %310, label %then61, label %else62
then61:
  %311 = getelementptr [12 x i8], [12 x i8]* @.str27, i32 0, i32 0
  %312 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str27.c, i8* %311)
  %313 = call i8* @nyx_string_to_cstr(%nyx_string* %312)
  call void @nyx_print_string(i8* %313)
  br label %merge63
else62:
  br label %merge63
merge63:
  %314 = getelementptr [11 x i8], [11 x i8]* @.str28, i32 0, i32 0
  %315 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str28.c, i8* %314)
  %316 = call i8* @nyx_string_to_cstr(%nyx_string* %315)
  call void @nyx_print_string(i8* %316)
  ret i64 0
}


attributes #0 = { returns_twice }

