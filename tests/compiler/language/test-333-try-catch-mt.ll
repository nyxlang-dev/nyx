source_filename = "/home/admin/nyx/lang/tests/compiler/language/test-333-try-catch-mt.nx"
target triple = "x86_64-pc-linux-gnu"

@.str0 = private unnamed_addr constant [5 x i8] c"boom\00"
@.str0.c = internal global %nyx_string* null
@.str1 = private unnamed_addr constant [16 x i8] c"panic-en-thread\00"
@.str1.c = internal global %nyx_string* null
@.str2 = private unnamed_addr constant [16 x i8] c"panic-en-thread\00"
@.str2.c = internal global %nyx_string* null
@.str3 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str3.c = internal global %nyx_string* null
@.str4 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str4.c = internal global %nyx_string* null
@.str5 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str5.c = internal global %nyx_string* null
@.str6 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str6.c = internal global %nyx_string* null
@.str7 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str7.c = internal global %nyx_string* null
@.str8 = private unnamed_addr constant [18 x i8] c"mt try/catch ok: \00"
@.str8.c = internal global %nyx_string* null
@__nyx_test_failed = external global i64
@__nyx_test_mode = external global i64
; Nyx Compiler Bootstrap v3.0
; Generated from: /home/admin/nyx/lang/tests/compiler/language/test-333-try-catch-mt.nx

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


define internal i64 @worker(
) {
  %1 = alloca i64
  store i64 0, i64* %1
  %2 = alloca i64
  store i64 0, i64* %2
  %3 = call i8* @llvm.stacksave()
  br label %while_cond0
while_cond0:
  %4 = load i64, i64* %2
  %5 = icmp slt i64 %4, 1000
  br i1 %5, label %while_body1, label %while_end2
while_body1:
  call void @llvm.stackrestore(i8* %3)
  %6 = bitcast i64* %2 to i8*
  call void @nyx_var_anchor(i8* %6)
  %7 = bitcast i64* %1 to i8*
  call void @nyx_var_anchor(i8* %7)
  %8 = call i8* @nyx_try_push()
  %9 = call i32 @setjmp(i8* %8) #0
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %try_body3, label %catch_body4
try_body3:
  %11 = getelementptr [5 x i8], [5 x i8]* @.str0, i32 0, i32 0
  %12 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str0.c, i8* %11)
  call void @nyx_throw(%nyx_string* %12)
  unreachable
catch_body4:
  %13 = call %nyx_string* @nyx_get_exception()
  %14 = alloca %nyx_string*
  store %nyx_string* %13, %nyx_string** %14
  %15 = load i64, i64* %1
  %16 = add i64 %15, 1
  store i64 %16, i64* %1
  br label %try_merge5
try_merge5:
  %17 = load i64, i64* %2
  %18 = add i64 %17, 1
  store i64 %18, i64* %2
  br label %while_cond0
while_end2:
  %19 = load i64, i64* %1
  ret i64 %19
}

define internal i64 @panicker(
) {
  %20 = alloca i64
  store i64 0, i64* %20
  %21 = bitcast i64* %20 to i8*
  call void @nyx_var_anchor(i8* %21)
  %22 = call i8* @nyx_try_push()
  %23 = call i32 @setjmp(i8* %22) #0
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %try_body6, label %catch_body7
try_body6:
  %25 = getelementptr [16 x i8], [16 x i8]* @.str1, i32 0, i32 0
  %26 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1.c, i8* %25)
  call void @nyx_panic(%nyx_string* %26)
  unreachable
catch_body7:
  %27 = call %nyx_string* @nyx_get_exception()
  %28 = alloca %nyx_string*
  store %nyx_string* %27, %nyx_string** %28
  %29 = load %nyx_string*, %nyx_string** %28
  %30 = getelementptr [16 x i8], [16 x i8]* @.str2, i32 0, i32 0
  %31 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str2.c, i8* %30)
  %32 = call i1 @nyx_string_equals(%nyx_string* %29, %nyx_string* %31)
  br i1 %32, label %then9, label %else10
then9:
  store i64 1, i64* %20
  br label %merge11
else10:
  br label %merge11
merge11:
  br label %try_merge8
try_merge8:
  %33 = load i64, i64* %20
  ret i64 %33
}

define i64 @main(
i32 %argc, i8** %argv) {
  call void @nyx_set_args(i32 %argc, i8** %argv)
  %34 = call i8* @GC_malloc(i64 16)
  %35 = bitcast i8* %34 to { i8*, i8* }*
  %36 = bitcast i64 (...)* @worker to i8*
  %37 = getelementptr { i8*, i8* }, { i8*, i8* }* %35, i32 0, i32 0
  store i8* %36, i8** %37
  %38 = getelementptr { i8*, i8* }, { i8*, i8* }* %35, i32 0, i32 1
  store i8* null, i8** %38
  %39 = call i64 @nyx_thread_spawn(i8* %34)
  %40 = alloca i64
  store i64 %39, i64* %40
  %41 = call i8* @GC_malloc(i64 16)
  %42 = bitcast i8* %41 to { i8*, i8* }*
  %43 = bitcast i64 (...)* @worker to i8*
  %44 = getelementptr { i8*, i8* }, { i8*, i8* }* %42, i32 0, i32 0
  store i8* %43, i8** %44
  %45 = getelementptr { i8*, i8* }, { i8*, i8* }* %42, i32 0, i32 1
  store i8* null, i8** %45
  %46 = call i64 @nyx_thread_spawn(i8* %41)
  %47 = alloca i64
  store i64 %46, i64* %47
  %48 = call i8* @GC_malloc(i64 16)
  %49 = bitcast i8* %48 to { i8*, i8* }*
  %50 = bitcast i64 (...)* @worker to i8*
  %51 = getelementptr { i8*, i8* }, { i8*, i8* }* %49, i32 0, i32 0
  store i8* %50, i8** %51
  %52 = getelementptr { i8*, i8* }, { i8*, i8* }* %49, i32 0, i32 1
  store i8* null, i8** %52
  %53 = call i64 @nyx_thread_spawn(i8* %48)
  %54 = alloca i64
  store i64 %53, i64* %54
  %55 = call i8* @GC_malloc(i64 16)
  %56 = bitcast i8* %55 to { i8*, i8* }*
  %57 = bitcast i64 (...)* @worker to i8*
  %58 = getelementptr { i8*, i8* }, { i8*, i8* }* %56, i32 0, i32 0
  store i8* %57, i8** %58
  %59 = getelementptr { i8*, i8* }, { i8*, i8* }* %56, i32 0, i32 1
  store i8* null, i8** %59
  %60 = call i64 @nyx_thread_spawn(i8* %55)
  %61 = alloca i64
  store i64 %60, i64* %61
  %62 = load i64, i64* %40
  %63 = call i64 @nyx_thread_join(i64 %62)
  %64 = alloca i64
  store i64 %63, i64* %64
  %65 = load i64, i64* %47
  %66 = call i64 @nyx_thread_join(i64 %65)
  %67 = alloca i64
  store i64 %66, i64* %67
  %68 = load i64, i64* %54
  %69 = call i64 @nyx_thread_join(i64 %68)
  %70 = alloca i64
  store i64 %69, i64* %70
  %71 = load i64, i64* %61
  %72 = call i64 @nyx_thread_join(i64 %71)
  %73 = alloca i64
  store i64 %72, i64* %73
  %74 = load i64, i64* %64
  %75 = icmp eq i64 %74, 1000
  %76 = getelementptr [17 x i8], [17 x i8]* @.str3, i32 0, i32 0
  %77 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str3.c, i8* %76)
  %78 = call i8* @nyx_string_to_cstr(%nyx_string* %77)
  br i1 %75, label %assert_pass_12, label %assert_fail_12
assert_fail_12:
  call void @nyx_assert_fail(i8* %78)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_12
assert_pass_12:
  %79 = load i64, i64* %67
  %80 = icmp eq i64 %79, 1000
  %81 = getelementptr [17 x i8], [17 x i8]* @.str4, i32 0, i32 0
  %82 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str4.c, i8* %81)
  %83 = call i8* @nyx_string_to_cstr(%nyx_string* %82)
  br i1 %80, label %assert_pass_13, label %assert_fail_13
assert_fail_13:
  call void @nyx_assert_fail(i8* %83)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_13
assert_pass_13:
  %84 = load i64, i64* %70
  %85 = icmp eq i64 %84, 1000
  %86 = getelementptr [17 x i8], [17 x i8]* @.str5, i32 0, i32 0
  %87 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str5.c, i8* %86)
  %88 = call i8* @nyx_string_to_cstr(%nyx_string* %87)
  br i1 %85, label %assert_pass_14, label %assert_fail_14
assert_fail_14:
  call void @nyx_assert_fail(i8* %88)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_14
assert_pass_14:
  %89 = load i64, i64* %73
  %90 = icmp eq i64 %89, 1000
  %91 = getelementptr [17 x i8], [17 x i8]* @.str6, i32 0, i32 0
  %92 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str6.c, i8* %91)
  %93 = call i8* @nyx_string_to_cstr(%nyx_string* %92)
  br i1 %90, label %assert_pass_15, label %assert_fail_15
assert_fail_15:
  call void @nyx_assert_fail(i8* %93)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_15
assert_pass_15:
  %94 = call i8* @GC_malloc(i64 16)
  %95 = bitcast i8* %94 to { i8*, i8* }*
  %96 = bitcast i64 (...)* @panicker to i8*
  %97 = getelementptr { i8*, i8* }, { i8*, i8* }* %95, i32 0, i32 0
  store i8* %96, i8** %97
  %98 = getelementptr { i8*, i8* }, { i8*, i8* }* %95, i32 0, i32 1
  store i8* null, i8** %98
  %99 = call i64 @nyx_thread_spawn(i8* %94)
  %100 = alloca i64
  store i64 %99, i64* %100
  %101 = load i64, i64* %100
  %102 = call i64 @nyx_thread_join(i64 %101)
  %103 = icmp eq i64 %102, 1
  %104 = getelementptr [17 x i8], [17 x i8]* @.str7, i32 0, i32 0
  %105 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str7.c, i8* %104)
  %106 = call i8* @nyx_string_to_cstr(%nyx_string* %105)
  br i1 %103, label %assert_pass_16, label %assert_fail_16
assert_fail_16:
  call void @nyx_assert_fail(i8* %106)
  store i64 1, i64* @__nyx_test_failed
  br label %assert_pass_16
assert_pass_16:
  %107 = getelementptr [18 x i8], [18 x i8]* @.str8, i32 0, i32 0
  %108 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str8.c, i8* %107)
  %109 = load i64, i64* %64
  %110 = load i64, i64* %67
  %111 = add i64 %109, %110
  %112 = load i64, i64* %70
  %113 = add i64 %111, %112
  %114 = load i64, i64* %73
  %115 = add i64 %113, %114
  %116 = call %nyx_string* @nyx_string_from_int(i64 %115)
  %117 = call %nyx_string* @nyx_string_concat(%nyx_string* %108, %nyx_string* %116)
  %118 = call i8* @nyx_string_to_cstr(%nyx_string* %117)
  call void @nyx_print_string(i8* %118)
  ret i64 0
}


attributes #0 = { returns_twice }

