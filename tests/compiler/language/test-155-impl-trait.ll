source_filename = "/home/admin/nyx/lang/tests/compiler/language/test-155-impl-trait.nx"
target triple = "x86_64-pc-linux-gnu"

%Circle = type { i64 }

%Square = type { i64 }

@.str0 = private unnamed_addr constant [8 x i8] c"Circle(\00"
@.str0.c = internal global %nyx_string* null
@.str1 = private unnamed_addr constant [2 x i8] c")\00"
@.str1.c = internal global %nyx_string* null
@.str2 = private unnamed_addr constant [8 x i8] c"Square(\00"
@.str2.c = internal global %nyx_string* null
@.str3 = private unnamed_addr constant [2 x i8] c")\00"
@.str3.c = internal global %nyx_string* null
@.str4 = private unnamed_addr constant [22 x i8] c"A circle with radius \00"
@.str4.c = internal global %nyx_string* null
@.str5 = private unnamed_addr constant [14 x i8] c"impl_trait ok\00"
@.str5.c = internal global %nyx_string* null
@__nyx_test_failed = external global i64
@__nyx_test_mode = external global i64
; Nyx Compiler Bootstrap v3.0
; Generated from: /home/admin/nyx/lang/tests/compiler/language/test-155-impl-trait.nx

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


define internal %nyx_string* @Circle_draw(
%Circle %self.param) {
  %self.ptr = alloca %Circle
  store %Circle %self.param, %Circle* %self.ptr
  %1 = getelementptr [8 x i8], [8 x i8]* @.str0, i32 0, i32 0
  %2 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str0.c, i8* %1)
  %3 = getelementptr %Circle, %Circle* %self.ptr, i32 0, i32 0
  %4 = load i64, i64* %3
  %5 = call %nyx_string* @nyx_string_from_int(i64 %4)
  %6 = call %nyx_string* @nyx_string_concat(%nyx_string* %2, %nyx_string* %5)
  %7 = getelementptr [2 x i8], [2 x i8]* @.str1, i32 0, i32 0
  %8 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1.c, i8* %7)
  %9 = call %nyx_string* @nyx_string_concat(%nyx_string* %6, %nyx_string* %8)
  ret %nyx_string* %9
}

define internal %nyx_string* @Square_draw(
%Square %self.param) {
  %self.ptr = alloca %Square
  store %Square %self.param, %Square* %self.ptr
  %10 = getelementptr [8 x i8], [8 x i8]* @.str2, i32 0, i32 0
  %11 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str2.c, i8* %10)
  %12 = getelementptr %Square, %Square* %self.ptr, i32 0, i32 0
  %13 = load i64, i64* %12
  %14 = call %nyx_string* @nyx_string_from_int(i64 %13)
  %15 = call %nyx_string* @nyx_string_concat(%nyx_string* %11, %nyx_string* %14)
  %16 = getelementptr [2 x i8], [2 x i8]* @.str3, i32 0, i32 0
  %17 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str3.c, i8* %16)
  %18 = call %nyx_string* @nyx_string_concat(%nyx_string* %15, %nyx_string* %17)
  ret %nyx_string* %18
}

define internal %nyx_string* @render(
{ i8*, i8* }* %item.param) {
  %item.ptr = alloca { i8*, i8* }*
  store { i8*, i8* }* %item.param, { i8*, i8* }** %item.ptr
  %19 = load { i8*, i8* }*, { i8*, i8* }** %item.ptr
  %20 = getelementptr { i8*, i8* }, { i8*, i8* }* %19, i32 0, i32 0
  %21 = load i8*, i8** %20
  %22 = getelementptr { i8*, i8* }, { i8*, i8* }* %19, i32 0, i32 1
  %23 = load i8*, i8** %22
  %24 = bitcast i8* %23 to [1 x i8*]*
  %25 = getelementptr [1 x i8*], [1 x i8*]* %24, i32 0, i32 0
  %26 = load i8*, i8** %25
  %27 = bitcast i8* %26 to %nyx_string* (i8*)*
  %28 = call %nyx_string* %27(i8* %21)
  ret %nyx_string* %28
}

define internal %nyx_string* @Circle_describe(
%Circle %self.param) {
  %self.ptr = alloca %Circle
  store %Circle %self.param, %Circle* %self.ptr
  %29 = getelementptr [22 x i8], [22 x i8]* @.str4, i32 0, i32 0
  %30 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str4.c, i8* %29)
  %31 = getelementptr %Circle, %Circle* %self.ptr, i32 0, i32 0
  %32 = load i64, i64* %31
  %33 = call %nyx_string* @nyx_string_from_int(i64 %32)
  %34 = call %nyx_string* @nyx_string_concat(%nyx_string* %30, %nyx_string* %33)
  ret %nyx_string* %34
}

define internal %nyx_string* @show(
{ i8*, i8* }* %item.param) {
  %item.ptr = alloca { i8*, i8* }*
  store { i8*, i8* }* %item.param, { i8*, i8* }** %item.ptr
  %35 = load { i8*, i8* }*, { i8*, i8* }** %item.ptr
  %36 = getelementptr { i8*, i8* }, { i8*, i8* }* %35, i32 0, i32 0
  %37 = load i8*, i8** %36
  %38 = getelementptr { i8*, i8* }, { i8*, i8* }* %35, i32 0, i32 1
  %39 = load i8*, i8** %38
  %40 = bitcast i8* %39 to [1 x i8*]*
  %41 = getelementptr [1 x i8*], [1 x i8*]* %40, i32 0, i32 0
  %42 = load i8*, i8** %41
  %43 = bitcast i8* %42 to %nyx_string* (i8*)*
  %44 = call %nyx_string* %43(i8* %37)
  ret %nyx_string* %44
}

define i64 @main(
i32 %argc, i8** %argv) {
  call void @nyx_set_args(i32 %argc, i8** %argv)
  %45 = getelementptr %Circle, %Circle* null, i32 1
  %46 = ptrtoint %Circle* %45 to i64
  %47 = call i8* @GC_malloc(i64 %46)
  %48 = bitcast i8* %47 to %Circle*
  %49 = getelementptr %Circle, %Circle* %48, i32 0, i32 0
  store i64 5, i64* %49
  %50 = load %Circle, %Circle* %48
  %51 = alloca %Circle
  store %Circle %50, %Circle* %51
  %52 = getelementptr %Square, %Square* null, i32 1
  %53 = ptrtoint %Square* %52 to i64
  %54 = call i8* @GC_malloc(i64 %53)
  %55 = bitcast i8* %54 to %Square*
  %56 = getelementptr %Square, %Square* %55, i32 0, i32 0
  store i64 3, i64* %56
  %57 = load %Square, %Square* %55
  %58 = alloca %Square
  store %Square %57, %Square* %58
  %59 = load %Circle, %Circle* %51
  %60 = getelementptr %Circle, %Circle* null, i32 1
  %61 = ptrtoint %Circle* %60 to i64
  %62 = call i8* @GC_malloc(i64 %61)
  %63 = bitcast i8* %62 to %Circle*
  store %Circle %59, %Circle* %63
  %64 = call i8* @GC_malloc(i64 16)
  %65 = bitcast i8* %64 to { i8*, i8* }*
  %66 = getelementptr { i8*, i8* }, { i8*, i8* }* %65, i32 0, i32 0
  store i8* %62, i8** %66
  %67 = getelementptr { i8*, i8* }, { i8*, i8* }* %65, i32 0, i32 1
  %68 = bitcast [1 x i8*]* @__vtable_Drawable_Circle to i8*
  store i8* %68, i8** %67
  %69 = call %nyx_string* @render({ i8*, i8* }* %65)
  %70 = call i8* @nyx_string_to_cstr(%nyx_string* %69)
  call void @nyx_print_string(i8* %70)
  %71 = load %Square, %Square* %58
  %72 = getelementptr %Square, %Square* null, i32 1
  %73 = ptrtoint %Square* %72 to i64
  %74 = call i8* @GC_malloc(i64 %73)
  %75 = bitcast i8* %74 to %Square*
  store %Square %71, %Square* %75
  %76 = call i8* @GC_malloc(i64 16)
  %77 = bitcast i8* %76 to { i8*, i8* }*
  %78 = getelementptr { i8*, i8* }, { i8*, i8* }* %77, i32 0, i32 0
  store i8* %74, i8** %78
  %79 = getelementptr { i8*, i8* }, { i8*, i8* }* %77, i32 0, i32 1
  %80 = bitcast [1 x i8*]* @__vtable_Drawable_Square to i8*
  store i8* %80, i8** %79
  %81 = call %nyx_string* @render({ i8*, i8* }* %77)
  %82 = call i8* @nyx_string_to_cstr(%nyx_string* %81)
  call void @nyx_print_string(i8* %82)
  %83 = load %Circle, %Circle* %51
  %84 = getelementptr %Circle, %Circle* null, i32 1
  %85 = ptrtoint %Circle* %84 to i64
  %86 = call i8* @GC_malloc(i64 %85)
  %87 = bitcast i8* %86 to %Circle*
  store %Circle %83, %Circle* %87
  %88 = call i8* @GC_malloc(i64 16)
  %89 = bitcast i8* %88 to { i8*, i8* }*
  %90 = getelementptr { i8*, i8* }, { i8*, i8* }* %89, i32 0, i32 0
  store i8* %86, i8** %90
  %91 = getelementptr { i8*, i8* }, { i8*, i8* }* %89, i32 0, i32 1
  %92 = bitcast [1 x i8*]* @__vtable_Describable_Circle to i8*
  store i8* %92, i8** %91
  %93 = call %nyx_string* @show({ i8*, i8* }* %89)
  %94 = call i8* @nyx_string_to_cstr(%nyx_string* %93)
  call void @nyx_print_string(i8* %94)
  %95 = getelementptr [14 x i8], [14 x i8]* @.str5, i32 0, i32 0
  %96 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str5.c, i8* %95)
  %97 = call i8* @nyx_string_to_cstr(%nyx_string* %96)
  call void @nyx_print_string(i8* %97)
  ret i64 0
}

define internal %nyx_string* @__dyn_Drawable_Circle_draw(i8* %self.raw) {
entry:
  %self.typed = bitcast i8* %self.raw to %Circle*
  %self.val = load %Circle, %Circle* %self.typed
  %thunk.result = call %nyx_string* @Circle_draw(%Circle %self.val)
  ret %nyx_string* %thunk.result
}

@__vtable_Drawable_Circle = internal constant [1 x i8*] [i8* bitcast (i8* (...)* @__dyn_Drawable_Circle_draw to i8*)]

define internal %nyx_string* @__dyn_Drawable_Square_draw(i8* %self.raw) {
entry:
  %self.typed = bitcast i8* %self.raw to %Square*
  %self.val = load %Square, %Square* %self.typed
  %thunk.result = call %nyx_string* @Square_draw(%Square %self.val)
  ret %nyx_string* %thunk.result
}

@__vtable_Drawable_Square = internal constant [1 x i8*] [i8* bitcast (i8* (...)* @__dyn_Drawable_Square_draw to i8*)]

define internal %nyx_string* @__dyn_Describable_Circle_describe(i8* %self.raw) {
entry:
  %self.typed = bitcast i8* %self.raw to %Circle*
  %self.val = load %Circle, %Circle* %self.typed
  %thunk.result = call %nyx_string* @Circle_describe(%Circle %self.val)
  ret %nyx_string* %thunk.result
}

@__vtable_Describable_Circle = internal constant [1 x i8*] [i8* bitcast (i8* (...)* @__dyn_Describable_Circle_describe to i8*)]


attributes #0 = { returns_twice }

