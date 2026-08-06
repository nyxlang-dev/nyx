source_filename = "/home/admin/nyx/lang/tests/compiler/ecosystem/test-165-derive-display-default.nx"
target triple = "x86_64-pc-linux-gnu"

%Point = type { i64, i64 }

@.disp0 = private unnamed_addr constant [7 x i8] c"Point(\00"
@.dispsep1 = private unnamed_addr constant [3 x i8] c", \00"
@.dispclose2 = private unnamed_addr constant [2 x i8] c")\00"
%Person = type { %nyx_string*, i64, double }

@.disp3 = private unnamed_addr constant [8 x i8] c"Person(\00"
@.dispsep4 = private unnamed_addr constant [3 x i8] c", \00"
@.dispsep5 = private unnamed_addr constant [3 x i8] c", \00"
@.dispclose6 = private unnamed_addr constant [2 x i8] c")\00"
@.defs7 = private unnamed_addr constant [1 x i8] c"\00"
%Config = type { i64, i64, i1 }

@.disp8 = private unnamed_addr constant [8 x i8] c"Config(\00"
@.dispsep9 = private unnamed_addr constant [3 x i8] c", \00"
@.dispsep10 = private unnamed_addr constant [3 x i8] c", \00"
@.dispclose11 = private unnamed_addr constant [2 x i8] c")\00"
@.str12 = private unnamed_addr constant [16 x i8] c"--- Display ---\00"
@.str12.c = internal global %nyx_string* null
@.str13 = private unnamed_addr constant [6 x i8] c"Alice\00"
@.str13.c = internal global %nyx_string* null
@.str14 = private unnamed_addr constant [16 x i8] c"--- Default ---\00"
@.str14.c = internal global %nyx_string* null
@.str15 = private unnamed_addr constant [17 x i8] c"--- Combined ---\00"
@.str15.c = internal global %nyx_string* null
@.str16 = private unnamed_addr constant [12 x i8] c"default: {}\00"
@.str16.c = internal global %nyx_string* null
@.str17 = private unnamed_addr constant [12 x i8] c"c1 == c2 ok\00"
@.str17.c = internal global %nyx_string* null
@.str18 = private unnamed_addr constant [12 x i8] c"c1 != c3 ok\00"
@.str18.c = internal global %nyx_string* null
@.str19 = private unnamed_addr constant [28 x i8] c"derive display/default test\00"
@.str19.c = internal global %nyx_string* null
@.str20 = private unnamed_addr constant [26 x i8] c"derive display/default ok\00"
@.str20.c = internal global %nyx_string* null
@__nyx_test_failed = external global i64
@__nyx_test_mode = external global i64
; Nyx Compiler Bootstrap v3.0
; Generated from: /home/admin/nyx/lang/tests/compiler/ecosystem/test-165-derive-display-default.nx

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


define %nyx_string* @Point_to_string(%Point %self_val) {
entry:
  %1 = getelementptr [7 x i8], [7 x i8]* @.disp0, i32 0, i32 0
  %2 = call %nyx_string* @nyx_string_from_cstr(i8* %1)
  %3 = extractvalue %Point %self_val, 0
  %4 = call %nyx_string* @nyx_string_from_int(i64 %3)
  %5 = call %nyx_string* @nyx_string_concat(%nyx_string* %2, %nyx_string* %4)
  %6 = getelementptr [3 x i8], [3 x i8]* @.dispsep1, i32 0, i32 0
  %7 = call %nyx_string* @nyx_string_from_cstr(i8* %6)
  %8 = call %nyx_string* @nyx_string_concat(%nyx_string* %5, %nyx_string* %7)
  %9 = extractvalue %Point %self_val, 1
  %10 = call %nyx_string* @nyx_string_from_int(i64 %9)
  %11 = call %nyx_string* @nyx_string_concat(%nyx_string* %8, %nyx_string* %10)
  %12 = getelementptr [2 x i8], [2 x i8]* @.dispclose2, i32 0, i32 0
  %13 = call %nyx_string* @nyx_string_from_cstr(i8* %12)
  %14 = call %nyx_string* @nyx_string_concat(%nyx_string* %11, %nyx_string* %13)
  ret %nyx_string* %14
}

define %Point @Point_default() {
entry:
  %15 = insertvalue %Point undef, i64 0, 0
  %16 = insertvalue %Point %15, i64 0, 1
  ret %Point %16
}

define %nyx_string* @Person_to_string(%Person %self_val) {
entry:
  %17 = getelementptr [8 x i8], [8 x i8]* @.disp3, i32 0, i32 0
  %18 = call %nyx_string* @nyx_string_from_cstr(i8* %17)
  %19 = extractvalue %Person %self_val, 0
  %20 = call %nyx_string* @nyx_string_concat(%nyx_string* %18, %nyx_string* %19)
  %21 = getelementptr [3 x i8], [3 x i8]* @.dispsep4, i32 0, i32 0
  %22 = call %nyx_string* @nyx_string_from_cstr(i8* %21)
  %23 = call %nyx_string* @nyx_string_concat(%nyx_string* %20, %nyx_string* %22)
  %24 = extractvalue %Person %self_val, 1
  %25 = call %nyx_string* @nyx_string_from_int(i64 %24)
  %26 = call %nyx_string* @nyx_string_concat(%nyx_string* %23, %nyx_string* %25)
  %27 = getelementptr [3 x i8], [3 x i8]* @.dispsep5, i32 0, i32 0
  %28 = call %nyx_string* @nyx_string_from_cstr(i8* %27)
  %29 = call %nyx_string* @nyx_string_concat(%nyx_string* %26, %nyx_string* %28)
  %30 = extractvalue %Person %self_val, 2
  %31 = call %nyx_string* @nyx_string_from_float(double %30)
  %32 = call %nyx_string* @nyx_string_concat(%nyx_string* %29, %nyx_string* %31)
  %33 = getelementptr [2 x i8], [2 x i8]* @.dispclose6, i32 0, i32 0
  %34 = call %nyx_string* @nyx_string_from_cstr(i8* %33)
  %35 = call %nyx_string* @nyx_string_concat(%nyx_string* %32, %nyx_string* %34)
  ret %nyx_string* %35
}

define %Person @Person_default() {
entry:
  %36 = getelementptr [1 x i8], [1 x i8]* @.defs7, i32 0, i32 0
  %37 = call %nyx_string* @nyx_string_from_cstr(i8* %36)
  %38 = insertvalue %Person undef, %nyx_string* %37, 0
  %39 = insertvalue %Person %38, i64 0, 1
  %40 = insertvalue %Person %39, double 0.0, 2
  ret %Person %40
}

define %nyx_string* @Config_to_string(%Config %self_val) {
entry:
  %41 = getelementptr [8 x i8], [8 x i8]* @.disp8, i32 0, i32 0
  %42 = call %nyx_string* @nyx_string_from_cstr(i8* %41)
  %43 = extractvalue %Config %self_val, 0
  %44 = call %nyx_string* @nyx_string_from_int(i64 %43)
  %45 = call %nyx_string* @nyx_string_concat(%nyx_string* %42, %nyx_string* %44)
  %46 = getelementptr [3 x i8], [3 x i8]* @.dispsep9, i32 0, i32 0
  %47 = call %nyx_string* @nyx_string_from_cstr(i8* %46)
  %48 = call %nyx_string* @nyx_string_concat(%nyx_string* %45, %nyx_string* %47)
  %49 = extractvalue %Config %self_val, 1
  %50 = call %nyx_string* @nyx_string_from_int(i64 %49)
  %51 = call %nyx_string* @nyx_string_concat(%nyx_string* %48, %nyx_string* %50)
  %52 = getelementptr [3 x i8], [3 x i8]* @.dispsep10, i32 0, i32 0
  %53 = call %nyx_string* @nyx_string_from_cstr(i8* %52)
  %54 = call %nyx_string* @nyx_string_concat(%nyx_string* %51, %nyx_string* %53)
  %55 = extractvalue %Config %self_val, 2
  %56 = zext i1 %55 to i64
  %57 = call %nyx_string* @nyx_string_from_int(i64 %56)
  %58 = call %nyx_string* @nyx_string_concat(%nyx_string* %54, %nyx_string* %57)
  %59 = getelementptr [2 x i8], [2 x i8]* @.dispclose11, i32 0, i32 0
  %60 = call %nyx_string* @nyx_string_from_cstr(i8* %59)
  %61 = call %nyx_string* @nyx_string_concat(%nyx_string* %58, %nyx_string* %60)
  ret %nyx_string* %61
}

define %Config @Config_default() {
entry:
  %62 = insertvalue %Config undef, i64 0, 0
  %63 = insertvalue %Config %62, i64 0, 1
  %64 = insertvalue %Config %63, i1 false, 2
  ret %Config %64
}

define %Config* @Config_clone(%Config %self_val) {
entry:
  %65 = getelementptr %Config, %Config* null, i32 1
  %66 = ptrtoint %Config* %65 to i64
  %67 = call i8* @GC_malloc(i64 %66)
  %68 = bitcast i8* %67 to %Config*
  %69 = extractvalue %Config %self_val, 0
  %70 = getelementptr %Config, %Config* %68, i32 0, i32 0
  store i64 %69, i64* %70
  %71 = extractvalue %Config %self_val, 1
  %72 = getelementptr %Config, %Config* %68, i32 0, i32 1
  store i64 %71, i64* %72
  %73 = extractvalue %Config %self_val, 2
  %74 = getelementptr %Config, %Config* %68, i32 0, i32 2
  store i1 %73, i1* %74
  ret %Config* %68
}

define i1 @Config_eq(%Config %self_val, %Config %other_val) {
entry:
  %75 = extractvalue %Config %self_val, 0
  %76 = extractvalue %Config %other_val, 0
  %77 = icmp eq i64 %75, %76
  %78 = extractvalue %Config %self_val, 1
  %79 = extractvalue %Config %other_val, 1
  %80 = icmp eq i64 %78, %79
  %81 = and i1 %77, %80
  %82 = extractvalue %Config %self_val, 2
  %83 = extractvalue %Config %other_val, 2
  %84 = icmp eq i1 %82, %83
  %85 = and i1 %81, %84
  ret i1 %85
}

define internal i64 @test_display(
) {
  %86 = getelementptr [16 x i8], [16 x i8]* @.str12, i32 0, i32 0
  %87 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str12.c, i8* %86)
  %88 = call i8* @nyx_string_to_cstr(%nyx_string* %87)
  call void @nyx_print_string(i8* %88)
  %89 = getelementptr %Point, %Point* null, i32 1
  %90 = ptrtoint %Point* %89 to i64
  %91 = call i8* @GC_malloc(i64 %90)
  %92 = bitcast i8* %91 to %Point*
  %93 = getelementptr %Point, %Point* %92, i32 0, i32 0
  store i64 3, i64* %93
  %94 = getelementptr %Point, %Point* %92, i32 0, i32 1
  store i64 7, i64* %94
  %95 = load %Point, %Point* %92
  %96 = alloca %Point
  store %Point %95, %Point* %96
  %97 = load %Point, %Point* %96
  %98 = call %nyx_string* @Point_to_string(%Point %97)
  %99 = call i8* @nyx_string_to_cstr(%nyx_string* %98)
  call void @nyx_print_string(i8* %99)
  %100 = getelementptr %Person, %Person* null, i32 1
  %101 = ptrtoint %Person* %100 to i64
  %102 = call i8* @GC_malloc(i64 %101)
  %103 = bitcast i8* %102 to %Person*
  %104 = getelementptr [6 x i8], [6 x i8]* @.str13, i32 0, i32 0
  %105 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str13.c, i8* %104)
  %106 = getelementptr %Person, %Person* %103, i32 0, i32 0
  store %nyx_string* %105, %nyx_string** %106
  %107 = getelementptr %Person, %Person* %103, i32 0, i32 1
  store i64 30, i64* %107
  %108 = getelementptr %Person, %Person* %103, i32 0, i32 2
  store double 9.5, double* %108
  %109 = load %Person, %Person* %103
  %110 = alloca %Person
  store %Person %109, %Person* %110
  %111 = load %Person, %Person* %110
  %112 = call %nyx_string* @Person_to_string(%Person %111)
  %113 = call i8* @nyx_string_to_cstr(%nyx_string* %112)
  call void @nyx_print_string(i8* %113)
  %114 = getelementptr %Config, %Config* null, i32 1
  %115 = ptrtoint %Config* %114 to i64
  %116 = call i8* @GC_malloc(i64 %115)
  %117 = bitcast i8* %116 to %Config*
  %118 = getelementptr %Config, %Config* %117, i32 0, i32 0
  store i64 1920, i64* %118
  %119 = getelementptr %Config, %Config* %117, i32 0, i32 1
  store i64 1080, i64* %119
  %120 = getelementptr %Config, %Config* %117, i32 0, i32 2
  store i1 1, i1* %120
  %121 = load %Config, %Config* %117
  %122 = alloca %Config
  store %Config %121, %Config* %122
  %123 = load %Config, %Config* %122
  %124 = call %nyx_string* @Config_to_string(%Config %123)
  %125 = call i8* @nyx_string_to_cstr(%nyx_string* %124)
  call void @nyx_print_string(i8* %125)
  ret i64 0
}

define internal i64 @test_default(
) {
  %126 = getelementptr [16 x i8], [16 x i8]* @.str14, i32 0, i32 0
  %127 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str14.c, i8* %126)
  %128 = call i8* @nyx_string_to_cstr(%nyx_string* %127)
  call void @nyx_print_string(i8* %128)
  %129 = call %Point @Point_default()
  %130 = alloca %Point
  store %Point %129, %Point* %130
  %131 = load %Point, %Point* %130
  %132 = call %nyx_string* @Point_to_string(%Point %131)
  %133 = call i8* @nyx_string_to_cstr(%nyx_string* %132)
  call void @nyx_print_string(i8* %133)
  %134 = call %Config @Config_default()
  %135 = alloca %Config
  store %Config %134, %Config* %135
  %136 = load %Config, %Config* %135
  %137 = call %nyx_string* @Config_to_string(%Config %136)
  %138 = call i8* @nyx_string_to_cstr(%nyx_string* %137)
  call void @nyx_print_string(i8* %138)
  ret i64 0
}

define internal i64 @test_combined(
) {
  %139 = getelementptr [17 x i8], [17 x i8]* @.str15, i32 0, i32 0
  %140 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str15.c, i8* %139)
  %141 = call i8* @nyx_string_to_cstr(%nyx_string* %140)
  call void @nyx_print_string(i8* %141)
  %142 = call %Point @Point_default()
  %143 = alloca %Point
  store %Point %142, %Point* %143
  %144 = getelementptr [12 x i8], [12 x i8]* @.str16, i32 0, i32 0
  %145 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str16.c, i8* %144)
  %146 = call { i64, i8* }* @nyx_array_new_ptr()
  %147 = load %Point, %Point* %143
  %148 = call %nyx_string* @Point_to_string(%Point %147)
  %149 = bitcast %nyx_string* %148 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %146, i8* %149)
  %150 = call %nyx_string* @nyx_format(%nyx_string* %145, { i64, i8* }* %146)
  %151 = call i8* @nyx_string_to_cstr(%nyx_string* %150)
  call void @nyx_print_string(i8* %151)
  %152 = getelementptr %Config, %Config* null, i32 1
  %153 = ptrtoint %Config* %152 to i64
  %154 = call i8* @GC_malloc(i64 %153)
  %155 = bitcast i8* %154 to %Config*
  %156 = getelementptr %Config, %Config* %155, i32 0, i32 0
  store i64 800, i64* %156
  %157 = getelementptr %Config, %Config* %155, i32 0, i32 1
  store i64 600, i64* %157
  %158 = getelementptr %Config, %Config* %155, i32 0, i32 2
  store i1 0, i1* %158
  %159 = load %Config, %Config* %155
  %160 = alloca %Config
  store %Config %159, %Config* %160
  %161 = getelementptr %Config, %Config* null, i32 1
  %162 = ptrtoint %Config* %161 to i64
  %163 = call i8* @GC_malloc(i64 %162)
  %164 = bitcast i8* %163 to %Config*
  %165 = getelementptr %Config, %Config* %164, i32 0, i32 0
  store i64 800, i64* %165
  %166 = getelementptr %Config, %Config* %164, i32 0, i32 1
  store i64 600, i64* %166
  %167 = getelementptr %Config, %Config* %164, i32 0, i32 2
  store i1 0, i1* %167
  %168 = load %Config, %Config* %164
  %169 = alloca %Config
  store %Config %168, %Config* %169
  %170 = getelementptr %Config, %Config* null, i32 1
  %171 = ptrtoint %Config* %170 to i64
  %172 = call i8* @GC_malloc(i64 %171)
  %173 = bitcast i8* %172 to %Config*
  %174 = getelementptr %Config, %Config* %173, i32 0, i32 0
  store i64 1024, i64* %174
  %175 = getelementptr %Config, %Config* %173, i32 0, i32 1
  store i64 768, i64* %175
  %176 = getelementptr %Config, %Config* %173, i32 0, i32 2
  store i1 1, i1* %176
  %177 = load %Config, %Config* %173
  %178 = alloca %Config
  store %Config %177, %Config* %178
  %179 = load %Config, %Config* %160
  %180 = load %Config, %Config* %169
  %181 = call i1 @Config_eq(%Config %179, %Config %180)
  br i1 %181, label %then0, label %else1
then0:
  %182 = getelementptr [12 x i8], [12 x i8]* @.str17, i32 0, i32 0
  %183 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str17.c, i8* %182)
  %184 = call i8* @nyx_string_to_cstr(%nyx_string* %183)
  call void @nyx_print_string(i8* %184)
  br label %merge2
else1:
  br label %merge2
merge2:
  %185 = load %Config, %Config* %160
  %186 = load %Config, %Config* %178
  %187 = call i1 @Config_eq(%Config %185, %Config %186)
  %188 = xor i1 %187, true
  br i1 %188, label %then3, label %else4
then3:
  %189 = getelementptr [12 x i8], [12 x i8]* @.str18, i32 0, i32 0
  %190 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str18.c, i8* %189)
  %191 = call i8* @nyx_string_to_cstr(%nyx_string* %190)
  call void @nyx_print_string(i8* %191)
  br label %merge5
else4:
  br label %merge5
merge5:
  %192 = load %Config, %Config* %160
  %193 = call %nyx_string* @Config_to_string(%Config %192)
  %194 = call i8* @nyx_string_to_cstr(%nyx_string* %193)
  call void @nyx_print_string(i8* %194)
  %195 = load %Config, %Config* %178
  %196 = call %nyx_string* @Config_to_string(%Config %195)
  %197 = call i8* @nyx_string_to_cstr(%nyx_string* %196)
  call void @nyx_print_string(i8* %197)
  ret i64 0
}

define i64 @main(
i32 %argc, i8** %argv) {
  call void @nyx_set_args(i32 %argc, i8** %argv)
  %198 = getelementptr [28 x i8], [28 x i8]* @.str19, i32 0, i32 0
  %199 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str19.c, i8* %198)
  %200 = call i8* @nyx_string_to_cstr(%nyx_string* %199)
  call void @nyx_print_string(i8* %200)
  %201 = call i64 @test_display()
  %202 = call i64 @test_default()
  %203 = call i64 @test_combined()
  %204 = getelementptr [26 x i8], [26 x i8]* @.str20, i32 0, i32 0
  %205 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str20.c, i8* %204)
  %206 = call i8* @nyx_string_to_cstr(%nyx_string* %205)
  call void @nyx_print_string(i8* %206)
  ret i64 0
}


attributes #0 = { returns_twice }

