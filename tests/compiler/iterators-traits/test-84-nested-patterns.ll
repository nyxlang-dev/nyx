source_filename = "/home/admin/nyx/lang/tests/compiler/iterators-traits/test-84-nested-patterns.nx"
target triple = "x86_64-pc-linux-gnu"

@.str0 = private unnamed_addr constant [10 x i8] c"got inner\00"
@.str0.c = internal global %nyx_string* null
@.str1 = private unnamed_addr constant [12 x i8] c"inner empty\00"
@.str1.c = internal global %nyx_string* null
@.str2 = private unnamed_addr constant [11 x i8] c"outer none\00"
@.str2.c = internal global %nyx_string* null
@.str3 = private unnamed_addr constant [10 x i8] c"got inner\00"
@.str3.c = internal global %nyx_string* null
@.str4 = private unnamed_addr constant [12 x i8] c"inner empty\00"
@.str4.c = internal global %nyx_string* null
@.str5 = private unnamed_addr constant [11 x i8] c"outer none\00"
@.str5.c = internal global %nyx_string* null
@.str6 = private unnamed_addr constant [10 x i8] c"got inner\00"
@.str6.c = internal global %nyx_string* null
@.str7 = private unnamed_addr constant [5 x i8] c"nope\00"
@.str7.c = internal global %nyx_string* null
@.str8 = private unnamed_addr constant [19 x i8] c"nested patterns OK\00"
@.str8.c = internal global %nyx_string* null
@__nyx_test_failed = external global i64
@__nyx_test_mode = external global i64
; Nyx Compiler Bootstrap v3.0
; Generated from: /home/admin/nyx/lang/tests/compiler/iterators-traits/test-84-nested-patterns.nx

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
  %1 = call i8* @GC_malloc(i64 16)
  %2 = bitcast i8* %1 to { i64, i8* }*
  %3 = getelementptr { i64, i8* }, { i64, i8* }* %2, i32 0, i32 0
  store i64 0, i64* %3
  %4 = getelementptr { i64, i8* }, { i64, i8* }* %2, i32 0, i32 1
  %5 = call i8* @GC_malloc(i64 8)
  %6 = bitcast i8* %5 to i64*
  %7 = call i8* @GC_malloc(i64 16)
  %8 = bitcast i8* %7 to { i64, i8* }*
  %9 = getelementptr { i64, i8* }, { i64, i8* }* %8, i32 0, i32 0
  store i64 0, i64* %9
  %10 = getelementptr { i64, i8* }, { i64, i8* }* %8, i32 0, i32 1
  %11 = call i8* @GC_malloc(i64 8)
  %12 = bitcast i8* %11 to i64*
  %13 = getelementptr i64, i64* %12, i64 0
  store i64 42, i64* %13
  store i8* %11, i8** %10
  %14 = ptrtoint i8* %7 to i64
  %15 = getelementptr i64, i64* %6, i64 0
  store i64 %14, i64* %15
  store i8* %5, i8** %4
  %16 = alloca i8*
  store i8* %1, i8** %16
  %17 = call i8* @GC_malloc(i64 16)
  %18 = bitcast i8* %17 to { i64, i8* }*
  %19 = getelementptr { i64, i8* }, { i64, i8* }* %18, i32 0, i32 0
  store i64 0, i64* %19
  %20 = getelementptr { i64, i8* }, { i64, i8* }* %18, i32 0, i32 1
  %21 = call i8* @GC_malloc(i64 8)
  %22 = bitcast i8* %21 to i64*
  %23 = call i8* @GC_malloc(i64 16)
  %24 = bitcast i8* %23 to { i64, i8* }*
  %25 = getelementptr { i64, i8* }, { i64, i8* }* %24, i32 0, i32 0
  store i64 1, i64* %25
  %26 = getelementptr { i64, i8* }, { i64, i8* }* %24, i32 0, i32 1
  store i8* null, i8** %26
  %27 = ptrtoint i8* %23 to i64
  %28 = getelementptr i64, i64* %22, i64 0
  store i64 %27, i64* %28
  store i8* %21, i8** %20
  %29 = alloca i8*
  store i8* %17, i8** %29
  %30 = call i8* @GC_malloc(i64 16)
  %31 = bitcast i8* %30 to { i64, i8* }*
  %32 = getelementptr { i64, i8* }, { i64, i8* }* %31, i32 0, i32 0
  store i64 1, i64* %32
  %33 = getelementptr { i64, i8* }, { i64, i8* }* %31, i32 0, i32 1
  store i8* null, i8** %33
  %34 = alloca i8*
  store i8* %30, i8** %34
  %35 = load i8*, i8** %16
  %36 = bitcast i8* %35 to { i64, i8* }*
  %37 = getelementptr { i64, i8* }, { i64, i8* }* %36, i32 0, i32 0
  %38 = load i64, i64* %37
  %39 = alloca i64
  store i64 0, i64* %39
  switch i64 %38, label %match_arm4 [ i64 0, label %match_arm2 ]
match_arm2:
  %40 = getelementptr { i64, i8* }, { i64, i8* }* %36, i32 0, i32 1
  %41 = load i8*, i8** %40
  %42 = bitcast i8* %41 to i64*
  %43 = getelementptr i64, i64* %42, i64 0
  %44 = load i64, i64* %43
  %45 = inttoptr i64 %44 to { i64, i8* }*
  %46 = getelementptr { i64, i8* }, { i64, i8* }* %45, i32 0, i32 0
  %47 = load i64, i64* %46
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %nested_pass12, label %nested_fail11
nested_pass12:
  br label %nested_ok13
nested_fail11:
  br label %match_arm3
nested_ok13:
  %49 = getelementptr [10 x i8], [10 x i8]* @.str0, i32 0, i32 0
  %50 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str0.c, i8* %49)
  %51 = ptrtoint %nyx_string* %50 to i64
  store i64 %51, i64* %39
  br label %match_end1
match_arm3:
  %52 = getelementptr { i64, i8* }, { i64, i8* }* %36, i32 0, i32 1
  %53 = load i8*, i8** %52
  %54 = bitcast i8* %53 to i64*
  %55 = getelementptr i64, i64* %54, i64 0
  %56 = load i64, i64* %55
  %57 = inttoptr i64 %56 to { i64, i8* }*
  %58 = getelementptr { i64, i8* }, { i64, i8* }* %57, i32 0, i32 0
  %59 = load i64, i64* %58
  %60 = icmp eq i64 %59, 1
  br i1 %60, label %nested_pass15, label %nested_fail14
nested_pass15:
  br label %nested_ok16
nested_fail14:
  br label %match_arm4
nested_ok16:
  %61 = getelementptr [12 x i8], [12 x i8]* @.str1, i32 0, i32 0
  %62 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1.c, i8* %61)
  %63 = ptrtoint %nyx_string* %62 to i64
  store i64 %63, i64* %39
  br label %match_end1
match_arm4:
  %64 = getelementptr [11 x i8], [11 x i8]* @.str2, i32 0, i32 0
  %65 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str2.c, i8* %64)
  %66 = ptrtoint %nyx_string* %65 to i64
  store i64 %66, i64* %39
  br label %match_end1
match_end1:
  %67 = load i64, i64* %39
  %68 = inttoptr i64 %67 to %nyx_string*
  %69 = alloca %nyx_string*
  store %nyx_string* %68, %nyx_string** %69
  %70 = load %nyx_string*, %nyx_string** %69
  %71 = call i8* @nyx_string_to_cstr(%nyx_string* %70)
  call void @nyx_print_string(i8* %71)
  %72 = load i8*, i8** %29
  %73 = bitcast i8* %72 to { i64, i8* }*
  %74 = getelementptr { i64, i8* }, { i64, i8* }* %73, i32 0, i32 0
  %75 = load i64, i64* %74
  %76 = alloca i64
  store i64 0, i64* %76
  switch i64 %75, label %match_arm21 [ i64 0, label %match_arm19 ]
match_arm19:
  %77 = getelementptr { i64, i8* }, { i64, i8* }* %73, i32 0, i32 1
  %78 = load i8*, i8** %77
  %79 = bitcast i8* %78 to i64*
  %80 = getelementptr i64, i64* %79, i64 0
  %81 = load i64, i64* %80
  %82 = inttoptr i64 %81 to { i64, i8* }*
  %83 = getelementptr { i64, i8* }, { i64, i8* }* %82, i32 0, i32 0
  %84 = load i64, i64* %83
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %nested_pass29, label %nested_fail28
nested_pass29:
  br label %nested_ok30
nested_fail28:
  br label %match_arm20
nested_ok30:
  %86 = getelementptr [10 x i8], [10 x i8]* @.str3, i32 0, i32 0
  %87 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str3.c, i8* %86)
  %88 = ptrtoint %nyx_string* %87 to i64
  store i64 %88, i64* %76
  br label %match_end18
match_arm20:
  %89 = getelementptr { i64, i8* }, { i64, i8* }* %73, i32 0, i32 1
  %90 = load i8*, i8** %89
  %91 = bitcast i8* %90 to i64*
  %92 = getelementptr i64, i64* %91, i64 0
  %93 = load i64, i64* %92
  %94 = inttoptr i64 %93 to { i64, i8* }*
  %95 = getelementptr { i64, i8* }, { i64, i8* }* %94, i32 0, i32 0
  %96 = load i64, i64* %95
  %97 = icmp eq i64 %96, 1
  br i1 %97, label %nested_pass32, label %nested_fail31
nested_pass32:
  br label %nested_ok33
nested_fail31:
  br label %match_arm21
nested_ok33:
  %98 = getelementptr [12 x i8], [12 x i8]* @.str4, i32 0, i32 0
  %99 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str4.c, i8* %98)
  %100 = ptrtoint %nyx_string* %99 to i64
  store i64 %100, i64* %76
  br label %match_end18
match_arm21:
  %101 = getelementptr [11 x i8], [11 x i8]* @.str5, i32 0, i32 0
  %102 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str5.c, i8* %101)
  %103 = ptrtoint %nyx_string* %102 to i64
  store i64 %103, i64* %76
  br label %match_end18
match_end18:
  %104 = load i64, i64* %76
  %105 = inttoptr i64 %104 to %nyx_string*
  %106 = alloca %nyx_string*
  store %nyx_string* %105, %nyx_string** %106
  %107 = load %nyx_string*, %nyx_string** %106
  %108 = call i8* @nyx_string_to_cstr(%nyx_string* %107)
  call void @nyx_print_string(i8* %108)
  %109 = load i8*, i8** %34
  %110 = bitcast i8* %109 to { i64, i8* }*
  %111 = getelementptr { i64, i8* }, { i64, i8* }* %110, i32 0, i32 0
  %112 = load i64, i64* %111
  %113 = alloca i64
  store i64 0, i64* %113
  switch i64 %112, label %match_arm37 [ i64 0, label %match_arm36 ]
match_arm36:
  %114 = getelementptr { i64, i8* }, { i64, i8* }* %110, i32 0, i32 1
  %115 = load i8*, i8** %114
  %116 = bitcast i8* %115 to i64*
  %117 = getelementptr i64, i64* %116, i64 0
  %118 = load i64, i64* %117
  %119 = inttoptr i64 %118 to { i64, i8* }*
  %120 = getelementptr { i64, i8* }, { i64, i8* }* %119, i32 0, i32 0
  %121 = load i64, i64* %120
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %nested_pass43, label %nested_fail42
nested_pass43:
  br label %nested_ok44
nested_fail42:
  br label %match_arm37
nested_ok44:
  %123 = getelementptr [10 x i8], [10 x i8]* @.str6, i32 0, i32 0
  %124 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str6.c, i8* %123)
  %125 = ptrtoint %nyx_string* %124 to i64
  store i64 %125, i64* %113
  br label %match_end35
match_arm37:
  %126 = getelementptr [5 x i8], [5 x i8]* @.str7, i32 0, i32 0
  %127 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str7.c, i8* %126)
  %128 = ptrtoint %nyx_string* %127 to i64
  store i64 %128, i64* %113
  br label %match_end35
match_end35:
  %129 = load i64, i64* %113
  %130 = inttoptr i64 %129 to %nyx_string*
  %131 = alloca %nyx_string*
  store %nyx_string* %130, %nyx_string** %131
  %132 = load %nyx_string*, %nyx_string** %131
  %133 = call i8* @nyx_string_to_cstr(%nyx_string* %132)
  call void @nyx_print_string(i8* %133)
  %134 = getelementptr [19 x i8], [19 x i8]* @.str8, i32 0, i32 0
  %135 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str8.c, i8* %134)
  %136 = call i8* @nyx_string_to_cstr(%nyx_string* %135)
  call void @nyx_print_string(i8* %136)
  ret i64 0
}


attributes #0 = { returns_twice }

