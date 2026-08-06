source_filename = "/home/admin/nyx/lang/tests/compiler/ecosystem/test-194-file-exists-dynamic.nx"
target triple = "x86_64-pc-linux-gnu"

@.str0 = private unnamed_addr constant [18 x i8] c"/tmp/nyx-test-194\00"
@.str0.c = internal global %nyx_string* null
@.str1 = private unnamed_addr constant [8 x i8] c"/static\00"
@.str1.c = internal global %nyx_string* null
@.str2 = private unnamed_addr constant [7 x i8] c"/learn\00"
@.str2.c = internal global %nyx_string* null
@.str3 = private unnamed_addr constant [36 x i8] c"/tmp/nyx-test-194/static/index.html\00"
@.str3.c = internal global %nyx_string* null
@.str4 = private unnamed_addr constant [13 x i8] c"<h1>nyx</h1>\00"
@.str4.c = internal global %nyx_string* null
@.str5 = private unnamed_addr constant [16 x i8] c"/learn/book.css\00"
@.str5.c = internal global %nyx_string* null
@.str6 = private unnamed_addr constant [7 x i8] c"body{}\00"
@.str6.c = internal global %nyx_string* null
@.str7 = private unnamed_addr constant [36 x i8] c"/tmp/nyx-test-194/static/index.html\00"
@.str7.c = internal global %nyx_string* null
@.str8 = private unnamed_addr constant [14 x i8] c"literal: true\00"
@.str8.c = internal global %nyx_string* null
@.str9 = private unnamed_addr constant [15 x i8] c"literal: false\00"
@.str9.c = internal global %nyx_string* null
@.str10 = private unnamed_addr constant [12 x i8] c"/index.html\00"
@.str10.c = internal global %nyx_string* null
@.str11 = private unnamed_addr constant [14 x i8] c"dynamic: true\00"
@.str11.c = internal global %nyx_string* null
@.str12 = private unnamed_addr constant [15 x i8] c"dynamic: false\00"
@.str12.c = internal global %nyx_string* null
@.str13 = private unnamed_addr constant [16 x i8] c"/learn/book.css\00"
@.str13.c = internal global %nyx_string* null
@.str14 = private unnamed_addr constant [13 x i8] c"subdir: true\00"
@.str14.c = internal global %nyx_string* null
@.str15 = private unnamed_addr constant [14 x i8] c"subdir: false\00"
@.str15.c = internal global %nyx_string* null
@.str16 = private unnamed_addr constant [18 x i8] c"/nonexistent.html\00"
@.str16.c = internal global %nyx_string* null
@.str17 = private unnamed_addr constant [14 x i8] c"missing: true\00"
@.str17.c = internal global %nyx_string* null
@.str18 = private unnamed_addr constant [15 x i8] c"missing: false\00"
@.str18.c = internal global %nyx_string* null
@__nyx_test_failed = external global i64
@__nyx_test_mode = external global i64
; Nyx Compiler Bootstrap v3.0
; Generated from: /home/admin/nyx/lang/tests/compiler/ecosystem/test-194-file-exists-dynamic.nx

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
  %1 = getelementptr [18 x i8], [18 x i8]* @.str0, i32 0, i32 0
  %2 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str0.c, i8* %1)
  %3 = alloca %nyx_string*
  store %nyx_string* %2, %nyx_string** %3
  %4 = load %nyx_string*, %nyx_string** %3
  %5 = getelementptr [8 x i8], [8 x i8]* @.str1, i32 0, i32 0
  %6 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1.c, i8* %5)
  %7 = call %nyx_string* @nyx_string_concat(%nyx_string* %4, %nyx_string* %6)
  %8 = alloca %nyx_string*
  store %nyx_string* %7, %nyx_string** %8
  %9 = load %nyx_string*, %nyx_string** %3
  %10 = call i8* @nyx_string_to_cstr(%nyx_string* %9)
  %11 = call i64 @nyx_mkdir(i8* %10)
  %12 = load %nyx_string*, %nyx_string** %8
  %13 = call i8* @nyx_string_to_cstr(%nyx_string* %12)
  %14 = call i64 @nyx_mkdir(i8* %13)
  %15 = load %nyx_string*, %nyx_string** %8
  %16 = getelementptr [7 x i8], [7 x i8]* @.str2, i32 0, i32 0
  %17 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str2.c, i8* %16)
  %18 = call %nyx_string* @nyx_string_concat(%nyx_string* %15, %nyx_string* %17)
  %19 = call i8* @nyx_string_to_cstr(%nyx_string* %18)
  %20 = call i64 @nyx_mkdir(i8* %19)
  %21 = getelementptr [36 x i8], [36 x i8]* @.str3, i32 0, i32 0
  %22 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str3.c, i8* %21)
  %23 = getelementptr [13 x i8], [13 x i8]* @.str4, i32 0, i32 0
  %24 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str4.c, i8* %23)
  %25 = call i8* @nyx_string_to_cstr(%nyx_string* %22)
  %26 = call i8* @nyx_string_to_cstr(%nyx_string* %24)
  %27 = call i1 @nyx_write_file(i8* %25, i8* %26)
  %28 = load %nyx_string*, %nyx_string** %8
  %29 = getelementptr [16 x i8], [16 x i8]* @.str5, i32 0, i32 0
  %30 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str5.c, i8* %29)
  %31 = call %nyx_string* @nyx_string_concat(%nyx_string* %28, %nyx_string* %30)
  %32 = getelementptr [7 x i8], [7 x i8]* @.str6, i32 0, i32 0
  %33 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str6.c, i8* %32)
  %34 = call i8* @nyx_string_to_cstr(%nyx_string* %31)
  %35 = call i8* @nyx_string_to_cstr(%nyx_string* %33)
  %36 = call i1 @nyx_write_file(i8* %34, i8* %35)
  %37 = getelementptr [36 x i8], [36 x i8]* @.str7, i32 0, i32 0
  %38 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str7.c, i8* %37)
  %39 = call i8* @nyx_string_to_cstr(%nyx_string* %38)
  %40 = call i1 @nyx_file_exists(i8* %39)
  br i1 %40, label %then0, label %else1
then0:
  %41 = getelementptr [14 x i8], [14 x i8]* @.str8, i32 0, i32 0
  %42 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str8.c, i8* %41)
  %43 = call i8* @nyx_string_to_cstr(%nyx_string* %42)
  call void @nyx_print_string(i8* %43)
  br label %merge2
else1:
  %44 = getelementptr [15 x i8], [15 x i8]* @.str9, i32 0, i32 0
  %45 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str9.c, i8* %44)
  %46 = call i8* @nyx_string_to_cstr(%nyx_string* %45)
  call void @nyx_print_string(i8* %46)
  br label %merge2
merge2:
  %47 = getelementptr [12 x i8], [12 x i8]* @.str10, i32 0, i32 0
  %48 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str10.c, i8* %47)
  %49 = alloca %nyx_string*
  store %nyx_string* %48, %nyx_string** %49
  %50 = load %nyx_string*, %nyx_string** %8
  %51 = load %nyx_string*, %nyx_string** %49
  %52 = call %nyx_string* @nyx_string_concat(%nyx_string* %50, %nyx_string* %51)
  %53 = alloca %nyx_string*
  store %nyx_string* %52, %nyx_string** %53
  %54 = load %nyx_string*, %nyx_string** %53
  %55 = call i8* @nyx_string_to_cstr(%nyx_string* %54)
  %56 = call i1 @nyx_file_exists(i8* %55)
  br i1 %56, label %then3, label %else4
then3:
  %57 = getelementptr [14 x i8], [14 x i8]* @.str11, i32 0, i32 0
  %58 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str11.c, i8* %57)
  %59 = call i8* @nyx_string_to_cstr(%nyx_string* %58)
  call void @nyx_print_string(i8* %59)
  br label %merge5
else4:
  %60 = getelementptr [15 x i8], [15 x i8]* @.str12, i32 0, i32 0
  %61 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str12.c, i8* %60)
  %62 = call i8* @nyx_string_to_cstr(%nyx_string* %61)
  call void @nyx_print_string(i8* %62)
  br label %merge5
merge5:
  %63 = getelementptr [16 x i8], [16 x i8]* @.str13, i32 0, i32 0
  %64 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str13.c, i8* %63)
  %65 = alloca %nyx_string*
  store %nyx_string* %64, %nyx_string** %65
  %66 = load %nyx_string*, %nyx_string** %8
  %67 = load %nyx_string*, %nyx_string** %65
  %68 = call %nyx_string* @nyx_string_concat(%nyx_string* %66, %nyx_string* %67)
  %69 = alloca %nyx_string*
  store %nyx_string* %68, %nyx_string** %69
  %70 = load %nyx_string*, %nyx_string** %69
  %71 = call i8* @nyx_string_to_cstr(%nyx_string* %70)
  %72 = call i1 @nyx_file_exists(i8* %71)
  br i1 %72, label %then6, label %else7
then6:
  %73 = getelementptr [13 x i8], [13 x i8]* @.str14, i32 0, i32 0
  %74 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str14.c, i8* %73)
  %75 = call i8* @nyx_string_to_cstr(%nyx_string* %74)
  call void @nyx_print_string(i8* %75)
  br label %merge8
else7:
  %76 = getelementptr [14 x i8], [14 x i8]* @.str15, i32 0, i32 0
  %77 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str15.c, i8* %76)
  %78 = call i8* @nyx_string_to_cstr(%nyx_string* %77)
  call void @nyx_print_string(i8* %78)
  br label %merge8
merge8:
  %79 = load %nyx_string*, %nyx_string** %8
  %80 = getelementptr [18 x i8], [18 x i8]* @.str16, i32 0, i32 0
  %81 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str16.c, i8* %80)
  %82 = call %nyx_string* @nyx_string_concat(%nyx_string* %79, %nyx_string* %81)
  %83 = call i8* @nyx_string_to_cstr(%nyx_string* %82)
  %84 = call i1 @nyx_file_exists(i8* %83)
  br i1 %84, label %then9, label %else10
then9:
  %85 = getelementptr [14 x i8], [14 x i8]* @.str17, i32 0, i32 0
  %86 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str17.c, i8* %85)
  %87 = call i8* @nyx_string_to_cstr(%nyx_string* %86)
  call void @nyx_print_string(i8* %87)
  br label %merge11
else10:
  %88 = getelementptr [15 x i8], [15 x i8]* @.str18, i32 0, i32 0
  %89 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str18.c, i8* %88)
  %90 = call i8* @nyx_string_to_cstr(%nyx_string* %89)
  call void @nyx_print_string(i8* %90)
  br label %merge11
merge11:
  ret i64 0
}


attributes #0 = { returns_twice }

