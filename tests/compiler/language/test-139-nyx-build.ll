source_filename = "/home/admin/nyx/lang/tests/compiler/language/test-139-nyx-build.nx"
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
@.str6 = private unnamed_addr constant [15 x i8] c"name = \22myapp\22\00"
@.str6.c = internal global %nyx_string* null
@.str7 = private unnamed_addr constant [18 x i8] c"version = \220.1.0\22\00"
@.str7.c = internal global %nyx_string* null
@.str8 = private unnamed_addr constant [10 x i8] c"[package]\00"
@.str8.c = internal global %nyx_string* null
@.str9 = private unnamed_addr constant [2 x i8] c"[\00"
@.str9.c = internal global %nyx_string* null
@.str10 = private unnamed_addr constant [2 x i8] c"]\00"
@.str10.c = internal global %nyx_string* null
@.str11 = private unnamed_addr constant [11 x i8] c"section ok\00"
@.str11.c = internal global %nyx_string* null
@.str12 = private unnamed_addr constant [9 x i8] c"build ok\00"
@.str12.c = internal global %nyx_string* null
@__nyx_test_failed = external global i64
@__nyx_test_mode = external global i64
; Nyx Compiler Bootstrap v3.0
; Generated from: /home/admin/nyx/lang/tests/compiler/language/test-139-nyx-build.nx

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
  %93 = getelementptr [15 x i8], [15 x i8]* @.str6, i32 0, i32 0
  %94 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str6.c, i8* %93)
  %95 = alloca %nyx_string*
  store %nyx_string* %94, %nyx_string** %95
  %96 = load %nyx_string*, %nyx_string** %95
  %97 = call %nyx_string* @parse_toml_key(%nyx_string* %96)
  %98 = alloca %nyx_string*
  store %nyx_string* %97, %nyx_string** %98
  %99 = load %nyx_string*, %nyx_string** %95
  %100 = call %nyx_string* @parse_toml_value(%nyx_string* %99)
  %101 = alloca %nyx_string*
  store %nyx_string* %100, %nyx_string** %101
  %102 = load %nyx_string*, %nyx_string** %98
  %103 = call i8* @nyx_string_to_cstr(%nyx_string* %102)
  call void @nyx_print_string(i8* %103)
  %104 = load %nyx_string*, %nyx_string** %101
  %105 = call i8* @nyx_string_to_cstr(%nyx_string* %104)
  call void @nyx_print_string(i8* %105)
  %106 = getelementptr [18 x i8], [18 x i8]* @.str7, i32 0, i32 0
  %107 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str7.c, i8* %106)
  %108 = alloca %nyx_string*
  store %nyx_string* %107, %nyx_string** %108
  %109 = load %nyx_string*, %nyx_string** %108
  %110 = call %nyx_string* @parse_toml_key(%nyx_string* %109)
  %111 = alloca %nyx_string*
  store %nyx_string* %110, %nyx_string** %111
  %112 = load %nyx_string*, %nyx_string** %108
  %113 = call %nyx_string* @parse_toml_value(%nyx_string* %112)
  %114 = alloca %nyx_string*
  store %nyx_string* %113, %nyx_string** %114
  %115 = load %nyx_string*, %nyx_string** %111
  %116 = call i8* @nyx_string_to_cstr(%nyx_string* %115)
  call void @nyx_print_string(i8* %116)
  %117 = load %nyx_string*, %nyx_string** %114
  %118 = call i8* @nyx_string_to_cstr(%nyx_string* %117)
  call void @nyx_print_string(i8* %118)
  %119 = getelementptr [10 x i8], [10 x i8]* @.str8, i32 0, i32 0
  %120 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str8.c, i8* %119)
  %121 = alloca %nyx_string*
  store %nyx_string* %120, %nyx_string** %121
  %122 = alloca i1
  store i1 false, i1* %122
  %123 = load %nyx_string*, %nyx_string** %121
  %124 = getelementptr [2 x i8], [2 x i8]* @.str9, i32 0, i32 0
  %125 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str9.c, i8* %124)
  %126 = call i1 @nyx_string_starts_with(%nyx_string* %123, %nyx_string* %125)
  br i1 %126, label %sc_and_rhs23, label %sc_and_end24
sc_and_rhs23:
  %127 = load %nyx_string*, %nyx_string** %121
  %128 = getelementptr [2 x i8], [2 x i8]* @.str10, i32 0, i32 0
  %129 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str10.c, i8* %128)
  %130 = call i1 @nyx_string_ends_with(%nyx_string* %127, %nyx_string* %129)
  store i1 %130, i1* %122
  br label %sc_and_end24
sc_and_end24:
  %131 = load i1, i1* %122
  %132 = alloca i1
  store i1 %131, i1* %132
  %133 = load i1, i1* %132
  br i1 %133, label %then25, label %else26
then25:
  %134 = getelementptr [11 x i8], [11 x i8]* @.str11, i32 0, i32 0
  %135 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str11.c, i8* %134)
  %136 = call i8* @nyx_string_to_cstr(%nyx_string* %135)
  call void @nyx_print_string(i8* %136)
  br label %merge27
else26:
  br label %merge27
merge27:
  %137 = getelementptr [9 x i8], [9 x i8]* @.str12, i32 0, i32 0
  %138 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str12.c, i8* %137)
  %139 = call i8* @nyx_string_to_cstr(%nyx_string* %138)
  call void @nyx_print_string(i8* %139)
  ret i64 0
}


attributes #0 = { returns_twice }

