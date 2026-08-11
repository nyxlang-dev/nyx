source_filename = "script.nx"
target triple = "x86_64-pc-linux-gnu"

%VetIssue = type { %nyx_string*, %nyx_string*, %nyx_string*, i64 }

@.str0 = private unnamed_addr constant [2 x i8] c"[\00"
@.str0.c = internal global %nyx_string* null
@.str1 = private unnamed_addr constant [2 x i8] c"]\00"
@.str1.c = internal global %nyx_string* null
@.str2 = private unnamed_addr constant [6 x i8] c"line \00"
@.str2.c = internal global %nyx_string* null
@.str3 = private unnamed_addr constant [2 x i8] c" \00"
@.str3.c = internal global %nyx_string* null
@.str4 = private unnamed_addr constant [3 x i8] c": \00"
@.str4.c = internal global %nyx_string* null
@.str5 = private unnamed_addr constant [9 x i8] c"let_decl\00"
@.str5.c = internal global %nyx_string* null
@.str6 = private unnamed_addr constant [9 x i8] c"var_decl\00"
@.str6.c = internal global %nyx_string* null
@.str7 = private unnamed_addr constant [8 x i8] c"warning\00"
@.str7.c = internal global %nyx_string* null
@.str8 = private unnamed_addr constant [5 x i8] c"W003\00"
@.str8.c = internal global %nyx_string* null
@.str9 = private unnamed_addr constant [25 x i8] c"unreachable code after '\00"
@.str9.c = internal global %nyx_string* null
@.str10 = private unnamed_addr constant [11 x i8] c"' on line \00"
@.str10.c = internal global %nyx_string* null
@.str11 = private unnamed_addr constant [7 x i8] c"return\00"
@.str11.c = internal global %nyx_string* null
@.str12 = private unnamed_addr constant [6 x i8] c"break\00"
@.str12.c = internal global %nyx_string* null
@.str13 = private unnamed_addr constant [9 x i8] c"continue\00"
@.str13.c = internal global %nyx_string* null
@.str14 = private unnamed_addr constant [9 x i8] c"function\00"
@.str14.c = internal global %nyx_string* null
@.str15 = private unnamed_addr constant [5 x i8] c"main\00"
@.str15.c = internal global %nyx_string* null
@.str16 = private unnamed_addr constant [14 x i8] c"import_module\00"
@.str16.c = internal global %nyx_string* null
@.str17 = private unnamed_addr constant [1 x i8] c"\00"
@.str17.c = internal global %nyx_string* null
@.str18 = private unnamed_addr constant [2 x i8] c".\00"
@.str18.c = internal global %nyx_string* null
@.str19 = private unnamed_addr constant [8 x i8] c"warning\00"
@.str19.c = internal global %nyx_string* null
@.str20 = private unnamed_addr constant [5 x i8] c"W002\00"
@.str20.c = internal global %nyx_string* null
@.str21 = private unnamed_addr constant [18 x i8] c"imported module '\00"
@.str21.c = internal global %nyx_string* null
@.str22 = private unnamed_addr constant [14 x i8] c"' is not used\00"
@.str22.c = internal global %nyx_string* null
@.str23 = private unnamed_addr constant [9 x i8] c"function\00"
@.str23.c = internal global %nyx_string* null
@.str24 = private unnamed_addr constant [4 x i8] c"let\00"
@.str24.c = internal global %nyx_string* null
@.str25 = private unnamed_addr constant [4 x i8] c"var\00"
@.str25.c = internal global %nyx_string* null
@.str26 = private unnamed_addr constant [2 x i8] c"_\00"
@.str26.c = internal global %nyx_string* null
@.str27 = private unnamed_addr constant [8 x i8] c"warning\00"
@.str27.c = internal global %nyx_string* null
@.str28 = private unnamed_addr constant [5 x i8] c"W001\00"
@.str28.c = internal global %nyx_string* null
@.str29 = private unnamed_addr constant [11 x i8] c"variable '\00"
@.str29.c = internal global %nyx_string* null
@.str30 = private unnamed_addr constant [38 x i8] c"' declared but not used in function '\00"
@.str30.c = internal global %nyx_string* null
@.str31 = private unnamed_addr constant [2 x i8] c"'\00"
@.str31.c = internal global %nyx_string* null
@.str32 = private unnamed_addr constant [23 x i8] c"=== Nyx Vet v1.8.0 ===\00"
@.str32.c = internal global %nyx_string* null
@.str33 = private unnamed_addr constant [8 x i8] c"NYX_SRC\00"
@.str33.c = internal global %nyx_string* null
@.str34 = private unnamed_addr constant [1 x i8] c"\00"
@.str34.c = internal global %nyx_string* null
@.str35 = private unnamed_addr constant [10 x i8] c"script.nx\00"
@.str35.c = internal global %nyx_string* null
@.str36 = private unnamed_addr constant [20 x i8] c"[1/3] Tokenizing...\00"
@.str36.c = internal global %nyx_string* null
@.str37 = private unnamed_addr constant [17 x i8] c"[2/3] Parsing...\00"
@.str37.c = internal global %nyx_string* null
@.str38 = private unnamed_addr constant [19 x i8] c"[3/3] Analyzing...\00"
@.str38.c = internal global %nyx_string* null
@.str39 = private unnamed_addr constant [20 x i8] c"✓ No issues found\00"
@.str39.c = internal global %nyx_string* null
@.str40 = private unnamed_addr constant [17 x i8] c" issue(s) found:\00"
@.str40.c = internal global %nyx_string* null
@.str41 = private unnamed_addr constant [6 x i8] c"Done.\00"
@.str41.c = internal global %nyx_string* null
@__nyx_test_failed = external global i64
@__nyx_test_mode = external global i64
; Nyx Compiler Bootstrap v3.0
; Generated from: script.nx

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
declare %nyx_string* @nyx_resolve_ptr(i8*)
declare { i64, i8* }* @nyx_net_interfaces()
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
declare %nyx_string* @nyx_datetime_format_epoch(i64, %nyx_string*)
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
declare i64 @nyx_stdin_eof()
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
declare void @nyx_assert_eq_int(i64, i64, i8*)
declare void @nyx_assert_eq_str(%nyx_string*, %nyx_string*, i8*)
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

declare { i64, i8* }* @tokenize(%nyx_string*)
declare { i64, i8* }* @parse({ i64, i8* }*, %nyx_string*)

define internal %VetIssue @make_issue(
%nyx_string* %sev.param, %nyx_string* %code.param, %nyx_string* %msg.param, i64 %line.param) {
  %sev.ptr = alloca %nyx_string*
  store %nyx_string* %sev.param, %nyx_string** %sev.ptr
  %code.ptr = alloca %nyx_string*
  store %nyx_string* %code.param, %nyx_string** %code.ptr
  %msg.ptr = alloca %nyx_string*
  store %nyx_string* %msg.param, %nyx_string** %msg.ptr
  %line.ptr = alloca i64
  store i64 %line.param, i64* %line.ptr
  %1 = getelementptr %VetIssue, %VetIssue* null, i32 1
  %2 = ptrtoint %VetIssue* %1 to i64
  %3 = call i8* @GC_malloc(i64 %2)
  %4 = bitcast i8* %3 to %VetIssue*
  %5 = load %nyx_string*, %nyx_string** %sev.ptr
  %6 = getelementptr %VetIssue, %VetIssue* %4, i32 0, i32 0
  store %nyx_string* %5, %nyx_string** %6
  %7 = load %nyx_string*, %nyx_string** %code.ptr
  %8 = getelementptr %VetIssue, %VetIssue* %4, i32 0, i32 1
  store %nyx_string* %7, %nyx_string** %8
  %9 = load %nyx_string*, %nyx_string** %msg.ptr
  %10 = getelementptr %VetIssue, %VetIssue* %4, i32 0, i32 2
  store %nyx_string* %9, %nyx_string** %10
  %11 = load i64, i64* %line.ptr
  %12 = getelementptr %VetIssue, %VetIssue* %4, i32 0, i32 3
  store i64 %11, i64* %12
  %13 = load %VetIssue, %VetIssue* %4
  ret %VetIssue %13
}

define internal i64 @print_issue(
%VetIssue %issue.param) {
  %issue.ptr = alloca %VetIssue
  store %VetIssue %issue.param, %VetIssue* %issue.ptr
  %14 = getelementptr %VetIssue, %VetIssue* %issue.ptr, i32 0, i32 0
  %15 = load %nyx_string*, %nyx_string** %14
  %16 = getelementptr [2 x i8], [2 x i8]* @.str0, i32 0, i32 0
  %17 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str0.c, i8* %16)
  %18 = call %nyx_string* @nyx_string_concat(%nyx_string* %15, %nyx_string* %17)
  %19 = getelementptr %VetIssue, %VetIssue* %issue.ptr, i32 0, i32 1
  %20 = load %nyx_string*, %nyx_string** %19
  %21 = call %nyx_string* @nyx_string_concat(%nyx_string* %18, %nyx_string* %20)
  %22 = getelementptr [2 x i8], [2 x i8]* @.str1, i32 0, i32 0
  %23 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1.c, i8* %22)
  %24 = call %nyx_string* @nyx_string_concat(%nyx_string* %21, %nyx_string* %23)
  %25 = alloca %nyx_string*
  store %nyx_string* %24, %nyx_string** %25
  %26 = getelementptr [6 x i8], [6 x i8]* @.str2, i32 0, i32 0
  %27 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str2.c, i8* %26)
  %28 = getelementptr %VetIssue, %VetIssue* %issue.ptr, i32 0, i32 3
  %29 = load i64, i64* %28
  %30 = call %nyx_string* @nyx_string_from_int(i64 %29)
  %31 = call %nyx_string* @nyx_string_concat(%nyx_string* %27, %nyx_string* %30)
  %32 = alloca %nyx_string*
  store %nyx_string* %31, %nyx_string** %32
  %33 = load %nyx_string*, %nyx_string** %25
  %34 = getelementptr [2 x i8], [2 x i8]* @.str3, i32 0, i32 0
  %35 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str3.c, i8* %34)
  %36 = call %nyx_string* @nyx_string_concat(%nyx_string* %33, %nyx_string* %35)
  %37 = load %nyx_string*, %nyx_string** %32
  %38 = call %nyx_string* @nyx_string_concat(%nyx_string* %36, %nyx_string* %37)
  %39 = getelementptr [3 x i8], [3 x i8]* @.str4, i32 0, i32 0
  %40 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str4.c, i8* %39)
  %41 = call %nyx_string* @nyx_string_concat(%nyx_string* %38, %nyx_string* %40)
  %42 = getelementptr %VetIssue, %VetIssue* %issue.ptr, i32 0, i32 2
  %43 = load %nyx_string*, %nyx_string** %42
  %44 = call %nyx_string* @nyx_string_concat(%nyx_string* %41, %nyx_string* %43)
  %45 = call i8* @nyx_string_to_cstr(%nyx_string* %44)
  call void @nyx_print_string(i8* %45)
  ret i64 0
}

define internal { i64, i8* }* @collect_declared_vars(
{ i64, i8* }* %stmts.param) {
  %stmts.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %stmts.param, { i64, i8* }** %stmts.ptr
  %46 = call { i64, i8* }* @nyx_array_new_ptr()
  %47 = alloca { i64, i8* }*
  store { i64, i8* }* %46, { i64, i8* }** %47
  %48 = alloca i64
  store i64 0, i64* %48
  %49 = getelementptr [9 x i8], [9 x i8]* @.str5, i32 0, i32 0
  %50 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str5.c, i8* %49)
  %51 = alloca %nyx_string*
  store %nyx_string* %50, %nyx_string** %51
  %52 = getelementptr [9 x i8], [9 x i8]* @.str6, i32 0, i32 0
  %53 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str6.c, i8* %52)
  %54 = alloca %nyx_string*
  store %nyx_string* %53, %nyx_string** %54
  %55 = call i8* @llvm.stacksave()
  br label %while_cond0
while_cond0:
  %56 = load i64, i64* %48
  %57 = load { i64, i8* }*, { i64, i8* }** %stmts.ptr
  %58 = call i64 @nyx_array_length({ i64, i8* }* %57)
  %59 = icmp slt i64 %56, %58
  br i1 %59, label %while_body1, label %while_end2
while_body1:
  call void @llvm.stackrestore(i8* %55)
  %60 = load { i64, i8* }*, { i64, i8* }** %stmts.ptr
  %61 = load i64, i64* %48
  %62 = call i64 @nyx_array_get({ i64, i8* }* %60, i64 %61)
  %63 = inttoptr i64 %62 to { i64, i8* }*
  %64 = alloca { i64, i8* }*
  store { i64, i8* }* %63, { i64, i8* }** %64
  %65 = load { i64, i8* }*, { i64, i8* }** %64
  %66 = call i64 @nyx_array_get_checked({ i64, i8* }* %65, i64 0, i64 2)
  %67 = inttoptr i64 %66 to %nyx_string*
  %68 = alloca %nyx_string*
  store %nyx_string* %67, %nyx_string** %68
  %69 = alloca i1
  store i1 true, i1* %69
  %70 = load %nyx_string*, %nyx_string** %68
  %71 = load %nyx_string*, %nyx_string** %51
  %72 = call i1 @nyx_string_equals(%nyx_string* %70, %nyx_string* %71)
  br i1 %72, label %sc_or_end4, label %sc_or_rhs3
sc_or_rhs3:
  %73 = load %nyx_string*, %nyx_string** %68
  %74 = load %nyx_string*, %nyx_string** %54
  %75 = call i1 @nyx_string_equals(%nyx_string* %73, %nyx_string* %74)
  store i1 %75, i1* %69
  br label %sc_or_end4
sc_or_end4:
  %76 = load i1, i1* %69
  br i1 %76, label %then5, label %else6
then5:
  %77 = load { i64, i8* }*, { i64, i8* }** %64
  %78 = call i64 @nyx_array_get({ i64, i8* }* %77, i64 1)
  %79 = inttoptr i64 %78 to { i64, i8* }*
  %80 = alloca { i64, i8* }*
  store { i64, i8* }* %79, { i64, i8* }** %80
  %81 = load { i64, i8* }*, { i64, i8* }** %80
  %82 = call i64 @nyx_array_get({ i64, i8* }* %81, i64 0)
  %83 = inttoptr i64 %82 to { i64, i8* }*
  %84 = alloca { i64, i8* }*
  store { i64, i8* }* %83, { i64, i8* }** %84
  %85 = load { i64, i8* }*, { i64, i8* }** %84
  %86 = call i64 @nyx_array_get_checked({ i64, i8* }* %85, i64 0, i64 2)
  %87 = inttoptr i64 %86 to %nyx_string*
  %88 = alloca %nyx_string*
  store %nyx_string* %87, %nyx_string** %88
  %89 = load { i64, i8* }*, { i64, i8* }** %47
  %90 = load %nyx_string*, %nyx_string** %88
  %91 = ptrtoint %nyx_string* %90 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %89, i64 %91, i64 2)
  br label %merge7
else6:
  br label %merge7
merge7:
  %92 = load i64, i64* %48
  %93 = add i64 %92, 1
  store i64 %93, i64* %48
  br label %while_cond0
while_end2:
  %94 = load { i64, i8* }*, { i64, i8* }** %47
  ret { i64, i8* }* %94
}

define internal i1 @name_used_in_source(
%nyx_string* %name.param, %nyx_string* %source.param) {
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %source.ptr = alloca %nyx_string*
  store %nyx_string* %source.param, %nyx_string** %source.ptr
  %95 = load %nyx_string*, %nyx_string** %source.ptr
  %96 = load %nyx_string*, %nyx_string** %name.ptr
  %97 = call { i64, i8* }* @nyx_string_split(%nyx_string* %95, %nyx_string* %96)
  %98 = alloca { i64, i8* }*
  store { i64, i8* }* %97, { i64, i8* }** %98
  %99 = load { i64, i8* }*, { i64, i8* }** %98
  %100 = call i64 @nyx_array_length({ i64, i8* }* %99)
  %101 = icmp sge i64 %100, 3
  ret i1 %101
}

define internal { i64, i8* }* @check_dead_code(
{ i64, i8* }* %stmts.param) {
  %stmts.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %stmts.param, { i64, i8* }** %stmts.ptr
  %102 = call { i64, i8* }* @nyx_array_new_ptr()
  %103 = alloca { i64, i8* }*
  store { i64, i8* }* %102, { i64, i8* }** %103
  %104 = alloca i64
  store i64 0, i64* %104
  %105 = alloca i1
  store i1 0, i1* %105
  %106 = alloca i64
  store i64 0, i64* %106
  %107 = getelementptr [8 x i8], [8 x i8]* @.str7, i32 0, i32 0
  %108 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str7.c, i8* %107)
  %109 = alloca %nyx_string*
  store %nyx_string* %108, %nyx_string** %109
  %110 = getelementptr [5 x i8], [5 x i8]* @.str8, i32 0, i32 0
  %111 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str8.c, i8* %110)
  %112 = alloca %nyx_string*
  store %nyx_string* %111, %nyx_string** %112
  %113 = getelementptr [25 x i8], [25 x i8]* @.str9, i32 0, i32 0
  %114 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str9.c, i8* %113)
  %115 = alloca %nyx_string*
  store %nyx_string* %114, %nyx_string** %115
  %116 = getelementptr [11 x i8], [11 x i8]* @.str10, i32 0, i32 0
  %117 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str10.c, i8* %116)
  %118 = alloca %nyx_string*
  store %nyx_string* %117, %nyx_string** %118
  %119 = getelementptr [7 x i8], [7 x i8]* @.str11, i32 0, i32 0
  %120 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str11.c, i8* %119)
  %121 = alloca %nyx_string*
  store %nyx_string* %120, %nyx_string** %121
  %122 = getelementptr [6 x i8], [6 x i8]* @.str12, i32 0, i32 0
  %123 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str12.c, i8* %122)
  %124 = alloca %nyx_string*
  store %nyx_string* %123, %nyx_string** %124
  %125 = getelementptr [9 x i8], [9 x i8]* @.str13, i32 0, i32 0
  %126 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str13.c, i8* %125)
  %127 = alloca %nyx_string*
  store %nyx_string* %126, %nyx_string** %127
  %128 = call i8* @llvm.stacksave()
  br label %while_cond8
while_cond8:
  %129 = load i64, i64* %104
  %130 = load { i64, i8* }*, { i64, i8* }** %stmts.ptr
  %131 = call i64 @nyx_array_length({ i64, i8* }* %130)
  %132 = icmp slt i64 %129, %131
  br i1 %132, label %while_body9, label %while_end10
while_body9:
  call void @llvm.stackrestore(i8* %128)
  %133 = load { i64, i8* }*, { i64, i8* }** %stmts.ptr
  %134 = load i64, i64* %104
  %135 = call i64 @nyx_array_get({ i64, i8* }* %133, i64 %134)
  %136 = inttoptr i64 %135 to { i64, i8* }*
  %137 = alloca { i64, i8* }*
  store { i64, i8* }* %136, { i64, i8* }** %137
  %138 = load { i64, i8* }*, { i64, i8* }** %137
  %139 = call i64 @nyx_array_get_checked({ i64, i8* }* %138, i64 0, i64 2)
  %140 = inttoptr i64 %139 to %nyx_string*
  %141 = alloca %nyx_string*
  store %nyx_string* %140, %nyx_string** %141
  %142 = load i1, i1* %105
  br i1 %142, label %then11, label %else12
then11:
  %143 = alloca i64
  store i64 0, i64* %143
  %144 = load { i64, i8* }*, { i64, i8* }** %137
  %145 = call i64 @nyx_array_length({ i64, i8* }* %144)
  %146 = icmp sgt i64 %145, 2
  br i1 %146, label %then14, label %else15
then14:
  br label %merge16
else15:
  br label %merge16
merge16:
  %147 = load %nyx_string*, %nyx_string** %109
  %148 = load %nyx_string*, %nyx_string** %112
  %149 = load %nyx_string*, %nyx_string** %115
  %150 = load { i64, i8* }*, { i64, i8* }** %137
  %151 = call %nyx_string* @get_terminator_name({ i64, i8* }* %150)
  %152 = call %nyx_string* @nyx_string_concat(%nyx_string* %149, %nyx_string* %151)
  %153 = load %nyx_string*, %nyx_string** %118
  %154 = call %nyx_string* @nyx_string_concat(%nyx_string* %152, %nyx_string* %153)
  %155 = load i64, i64* %106
  %156 = call %nyx_string* @nyx_string_from_int(i64 %155)
  %157 = call %nyx_string* @nyx_string_concat(%nyx_string* %154, %nyx_string* %156)
  %158 = load i64, i64* %106
  %159 = call %VetIssue @make_issue(%nyx_string* %147, %nyx_string* %148, %nyx_string* %157, i64 %158)
  %160 = alloca %VetIssue
  store %VetIssue %159, %VetIssue* %160
  %161 = load { i64, i8* }*, { i64, i8* }** %103
  %162 = load %VetIssue, %VetIssue* %160
  %163 = getelementptr %VetIssue, %VetIssue* null, i32 1
  %164 = ptrtoint %VetIssue* %163 to i64
  %165 = call i8* @GC_malloc(i64 %164)
  %166 = bitcast i8* %165 to %VetIssue*
  store %VetIssue %162, %VetIssue* %166
  %167 = ptrtoint %VetIssue* %166 to i64
  call void @nyx_array_push({ i64, i8* }* %161, i64 %167)
  store i1 0, i1* %105
  br label %merge13
else12:
  br label %merge13
merge13:
  %168 = alloca i1
  store i1 true, i1* %168
  %169 = alloca i1
  store i1 true, i1* %169
  %170 = load %nyx_string*, %nyx_string** %141
  %171 = load %nyx_string*, %nyx_string** %121
  %172 = call i1 @nyx_string_equals(%nyx_string* %170, %nyx_string* %171)
  br i1 %172, label %sc_or_end18, label %sc_or_rhs17
sc_or_rhs17:
  %173 = load %nyx_string*, %nyx_string** %141
  %174 = load %nyx_string*, %nyx_string** %124
  %175 = call i1 @nyx_string_equals(%nyx_string* %173, %nyx_string* %174)
  store i1 %175, i1* %169
  br label %sc_or_end18
sc_or_end18:
  %176 = load i1, i1* %169
  br i1 %176, label %sc_or_end20, label %sc_or_rhs19
sc_or_rhs19:
  %177 = load %nyx_string*, %nyx_string** %141
  %178 = load %nyx_string*, %nyx_string** %127
  %179 = call i1 @nyx_string_equals(%nyx_string* %177, %nyx_string* %178)
  store i1 %179, i1* %168
  br label %sc_or_end20
sc_or_end20:
  %180 = load i1, i1* %168
  br i1 %180, label %then21, label %else22
then21:
  store i1 1, i1* %105
  store i64 0, i64* %106
  br label %merge23
else22:
  br label %merge23
merge23:
  %181 = load i64, i64* %104
  %182 = add i64 %181, 1
  store i64 %182, i64* %104
  br label %while_cond8
while_end10:
  %183 = load { i64, i8* }*, { i64, i8* }** %103
  ret { i64, i8* }* %183
}

define internal %nyx_string* @get_terminator_name(
{ i64, i8* }* %stmt.param) {
  %stmt.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %stmt.param, { i64, i8* }** %stmt.ptr
  %184 = load { i64, i8* }*, { i64, i8* }** %stmt.ptr
  %185 = call i64 @nyx_array_get_checked({ i64, i8* }* %184, i64 0, i64 2)
  %186 = inttoptr i64 %185 to %nyx_string*
  %187 = alloca %nyx_string*
  store %nyx_string* %186, %nyx_string** %187
  %188 = load %nyx_string*, %nyx_string** %187
  ret %nyx_string* %188
}

define internal { i64, i8* }* @collect_fn_names(
{ i64, i8* }* %stmts.param) {
  %stmts.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %stmts.param, { i64, i8* }** %stmts.ptr
  %189 = call { i64, i8* }* @nyx_array_new_ptr()
  %190 = alloca { i64, i8* }*
  store { i64, i8* }* %189, { i64, i8* }** %190
  %191 = alloca i64
  store i64 0, i64* %191
  %192 = getelementptr [9 x i8], [9 x i8]* @.str14, i32 0, i32 0
  %193 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str14.c, i8* %192)
  %194 = alloca %nyx_string*
  store %nyx_string* %193, %nyx_string** %194
  %195 = getelementptr [5 x i8], [5 x i8]* @.str15, i32 0, i32 0
  %196 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str15.c, i8* %195)
  %197 = alloca %nyx_string*
  store %nyx_string* %196, %nyx_string** %197
  %198 = call i8* @llvm.stacksave()
  br label %while_cond24
while_cond24:
  %199 = load i64, i64* %191
  %200 = load { i64, i8* }*, { i64, i8* }** %stmts.ptr
  %201 = call i64 @nyx_array_length({ i64, i8* }* %200)
  %202 = icmp slt i64 %199, %201
  br i1 %202, label %while_body25, label %while_end26
while_body25:
  call void @llvm.stackrestore(i8* %198)
  %203 = load { i64, i8* }*, { i64, i8* }** %stmts.ptr
  %204 = load i64, i64* %191
  %205 = call i64 @nyx_array_get({ i64, i8* }* %203, i64 %204)
  %206 = inttoptr i64 %205 to { i64, i8* }*
  %207 = alloca { i64, i8* }*
  store { i64, i8* }* %206, { i64, i8* }** %207
  %208 = load { i64, i8* }*, { i64, i8* }** %207
  %209 = call i64 @nyx_array_get_checked({ i64, i8* }* %208, i64 0, i64 2)
  %210 = inttoptr i64 %209 to %nyx_string*
  %211 = alloca %nyx_string*
  store %nyx_string* %210, %nyx_string** %211
  %212 = load %nyx_string*, %nyx_string** %211
  %213 = load %nyx_string*, %nyx_string** %194
  %214 = call i1 @nyx_string_equals(%nyx_string* %212, %nyx_string* %213)
  br i1 %214, label %then27, label %else28
then27:
  %215 = load { i64, i8* }*, { i64, i8* }** %207
  %216 = call i64 @nyx_array_get({ i64, i8* }* %215, i64 1)
  %217 = inttoptr i64 %216 to { i64, i8* }*
  %218 = alloca { i64, i8* }*
  store { i64, i8* }* %217, { i64, i8* }** %218
  %219 = load { i64, i8* }*, { i64, i8* }** %218
  %220 = call i64 @nyx_array_get_checked({ i64, i8* }* %219, i64 0, i64 2)
  %221 = inttoptr i64 %220 to %nyx_string*
  %222 = alloca %nyx_string*
  store %nyx_string* %221, %nyx_string** %222
  %223 = load %nyx_string*, %nyx_string** %222
  %224 = load %nyx_string*, %nyx_string** %197
  %225 = call i1 @nyx_string_equals(%nyx_string* %223, %nyx_string* %224)
  %226 = xor i1 %225, true
  br i1 %226, label %then30, label %else31
then30:
  %227 = load { i64, i8* }*, { i64, i8* }** %190
  %228 = load %nyx_string*, %nyx_string** %222
  %229 = ptrtoint %nyx_string* %228 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %227, i64 %229, i64 2)
  br label %merge32
else31:
  br label %merge32
merge32:
  br label %merge29
else28:
  br label %merge29
merge29:
  %230 = load i64, i64* %191
  %231 = add i64 %230, 1
  store i64 %231, i64* %191
  br label %while_cond24
while_end26:
  %232 = load { i64, i8* }*, { i64, i8* }** %190
  ret { i64, i8* }* %232
}

define internal { i64, i8* }* @check_unused_imports(
{ i64, i8* }* %stmts.param, %nyx_string* %source.param) {
  %stmts.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %stmts.param, { i64, i8* }** %stmts.ptr
  %source.ptr = alloca %nyx_string*
  store %nyx_string* %source.param, %nyx_string** %source.ptr
  %233 = call { i64, i8* }* @nyx_array_new_ptr()
  %234 = alloca { i64, i8* }*
  store { i64, i8* }* %233, { i64, i8* }** %234
  %235 = alloca i64
  store i64 0, i64* %235
  %236 = getelementptr [14 x i8], [14 x i8]* @.str16, i32 0, i32 0
  %237 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str16.c, i8* %236)
  %238 = alloca %nyx_string*
  store %nyx_string* %237, %nyx_string** %238
  %239 = getelementptr [1 x i8], [1 x i8]* @.str17, i32 0, i32 0
  %240 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str17.c, i8* %239)
  %241 = alloca %nyx_string*
  store %nyx_string* %240, %nyx_string** %241
  %242 = getelementptr [2 x i8], [2 x i8]* @.str18, i32 0, i32 0
  %243 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str18.c, i8* %242)
  %244 = alloca %nyx_string*
  store %nyx_string* %243, %nyx_string** %244
  %245 = getelementptr [8 x i8], [8 x i8]* @.str19, i32 0, i32 0
  %246 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str19.c, i8* %245)
  %247 = alloca %nyx_string*
  store %nyx_string* %246, %nyx_string** %247
  %248 = getelementptr [5 x i8], [5 x i8]* @.str20, i32 0, i32 0
  %249 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str20.c, i8* %248)
  %250 = alloca %nyx_string*
  store %nyx_string* %249, %nyx_string** %250
  %251 = getelementptr [18 x i8], [18 x i8]* @.str21, i32 0, i32 0
  %252 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str21.c, i8* %251)
  %253 = alloca %nyx_string*
  store %nyx_string* %252, %nyx_string** %253
  %254 = getelementptr [14 x i8], [14 x i8]* @.str22, i32 0, i32 0
  %255 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str22.c, i8* %254)
  %256 = alloca %nyx_string*
  store %nyx_string* %255, %nyx_string** %256
  %257 = call i8* @llvm.stacksave()
  br label %while_cond33
while_cond33:
  %258 = load i64, i64* %235
  %259 = load { i64, i8* }*, { i64, i8* }** %stmts.ptr
  %260 = call i64 @nyx_array_length({ i64, i8* }* %259)
  %261 = icmp slt i64 %258, %260
  br i1 %261, label %while_body34, label %while_end35
while_body34:
  call void @llvm.stackrestore(i8* %257)
  %262 = load { i64, i8* }*, { i64, i8* }** %stmts.ptr
  %263 = load i64, i64* %235
  %264 = call i64 @nyx_array_get({ i64, i8* }* %262, i64 %263)
  %265 = inttoptr i64 %264 to { i64, i8* }*
  %266 = alloca { i64, i8* }*
  store { i64, i8* }* %265, { i64, i8* }** %266
  %267 = load { i64, i8* }*, { i64, i8* }** %266
  %268 = call i64 @nyx_array_get_checked({ i64, i8* }* %267, i64 0, i64 2)
  %269 = inttoptr i64 %268 to %nyx_string*
  %270 = alloca %nyx_string*
  store %nyx_string* %269, %nyx_string** %270
  %271 = load %nyx_string*, %nyx_string** %270
  %272 = load %nyx_string*, %nyx_string** %238
  %273 = call i1 @nyx_string_equals(%nyx_string* %271, %nyx_string* %272)
  br i1 %273, label %then36, label %else37
then36:
  %274 = load { i64, i8* }*, { i64, i8* }** %266
  %275 = call i64 @nyx_array_get({ i64, i8* }* %274, i64 1)
  %276 = inttoptr i64 %275 to { i64, i8* }*
  %277 = alloca { i64, i8* }*
  store { i64, i8* }* %276, { i64, i8* }** %277
  %278 = load { i64, i8* }*, { i64, i8* }** %277
  %279 = call i64 @nyx_array_length({ i64, i8* }* %278)
  %280 = icmp sge i64 %279, 2
  br i1 %280, label %then39, label %else40
then39:
  %281 = load { i64, i8* }*, { i64, i8* }** %277
  %282 = call i64 @nyx_array_get_checked({ i64, i8* }* %281, i64 1, i64 2)
  %283 = inttoptr i64 %282 to %nyx_string*
  %284 = alloca %nyx_string*
  store %nyx_string* %283, %nyx_string** %284
  %285 = load %nyx_string*, %nyx_string** %284
  %286 = load %nyx_string*, %nyx_string** %241
  %287 = call i1 @nyx_string_equals(%nyx_string* %285, %nyx_string* %286)
  %288 = xor i1 %287, true
  br i1 %288, label %then42, label %else43
then42:
  %289 = load %nyx_string*, %nyx_string** %284
  %290 = load %nyx_string*, %nyx_string** %244
  %291 = call %nyx_string* @nyx_string_concat(%nyx_string* %289, %nyx_string* %290)
  %292 = alloca %nyx_string*
  store %nyx_string* %291, %nyx_string** %292
  %293 = load %nyx_string*, %nyx_string** %292
  %294 = load %nyx_string*, %nyx_string** %source.ptr
  %295 = call i1 @name_used_in_source(%nyx_string* %293, %nyx_string* %294)
  %296 = alloca i1
  store i1 %295, i1* %296
  %297 = load i1, i1* %296
  %298 = xor i1 %297, true
  br i1 %298, label %then45, label %else46
then45:
  %299 = load %nyx_string*, %nyx_string** %247
  %300 = load %nyx_string*, %nyx_string** %250
  %301 = load %nyx_string*, %nyx_string** %253
  %302 = load %nyx_string*, %nyx_string** %284
  %303 = call %nyx_string* @nyx_string_concat(%nyx_string* %301, %nyx_string* %302)
  %304 = load %nyx_string*, %nyx_string** %256
  %305 = call %nyx_string* @nyx_string_concat(%nyx_string* %303, %nyx_string* %304)
  %306 = call %VetIssue @make_issue(%nyx_string* %299, %nyx_string* %300, %nyx_string* %305, i64 0)
  %307 = alloca %VetIssue
  store %VetIssue %306, %VetIssue* %307
  %308 = load { i64, i8* }*, { i64, i8* }** %234
  %309 = load %VetIssue, %VetIssue* %307
  %310 = getelementptr %VetIssue, %VetIssue* null, i32 1
  %311 = ptrtoint %VetIssue* %310 to i64
  %312 = call i8* @GC_malloc(i64 %311)
  %313 = bitcast i8* %312 to %VetIssue*
  store %VetIssue %309, %VetIssue* %313
  %314 = ptrtoint %VetIssue* %313 to i64
  call void @nyx_array_push({ i64, i8* }* %308, i64 %314)
  br label %merge47
else46:
  br label %merge47
merge47:
  br label %merge44
else43:
  br label %merge44
merge44:
  br label %merge41
else40:
  br label %merge41
merge41:
  br label %merge38
else37:
  br label %merge38
merge38:
  %315 = load i64, i64* %235
  %316 = add i64 %315, 1
  store i64 %316, i64* %235
  br label %while_cond33
while_end35:
  %317 = load { i64, i8* }*, { i64, i8* }** %234
  ret { i64, i8* }* %317
}

define internal { i64, i8* }* @vet_source(
%nyx_string* %source.param, { i64, i8* }* %ast.param) {
  %source.ptr = alloca %nyx_string*
  store %nyx_string* %source.param, %nyx_string** %source.ptr
  %ast.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %ast.param, { i64, i8* }** %ast.ptr
  %318 = call { i64, i8* }* @nyx_array_new_ptr()
  %319 = alloca { i64, i8* }*
  store { i64, i8* }* %318, { i64, i8* }** %319
  %320 = load { i64, i8* }*, { i64, i8* }** %ast.ptr
  %321 = call i64 @nyx_array_get({ i64, i8* }* %320, i64 1)
  %322 = inttoptr i64 %321 to { i64, i8* }*
  %323 = alloca { i64, i8* }*
  store { i64, i8* }* %322, { i64, i8* }** %323
  %324 = load { i64, i8* }*, { i64, i8* }** %323
  %325 = load %nyx_string*, %nyx_string** %source.ptr
  %326 = call { i64, i8* }* @check_unused_imports({ i64, i8* }* %324, %nyx_string* %325)
  %327 = alloca { i64, i8* }*
  store { i64, i8* }* %326, { i64, i8* }** %327
  %328 = alloca i64
  store i64 0, i64* %328
  %329 = call i8* @llvm.stacksave()
  br label %while_cond48
while_cond48:
  %330 = load i64, i64* %328
  %331 = load { i64, i8* }*, { i64, i8* }** %327
  %332 = call i64 @nyx_array_length({ i64, i8* }* %331)
  %333 = icmp slt i64 %330, %332
  br i1 %333, label %while_body49, label %while_end50
while_body49:
  call void @llvm.stackrestore(i8* %329)
  %334 = load { i64, i8* }*, { i64, i8* }** %327
  %335 = load i64, i64* %328
  %336 = call i64 @nyx_array_get({ i64, i8* }* %334, i64 %335)
  %337 = inttoptr i64 %336 to %VetIssue*
  %338 = load %VetIssue, %VetIssue* %337
  %339 = alloca %VetIssue
  store %VetIssue %338, %VetIssue* %339
  %340 = load { i64, i8* }*, { i64, i8* }** %319
  %341 = load %VetIssue, %VetIssue* %339
  %342 = getelementptr %VetIssue, %VetIssue* null, i32 1
  %343 = ptrtoint %VetIssue* %342 to i64
  %344 = call i8* @GC_malloc(i64 %343)
  %345 = bitcast i8* %344 to %VetIssue*
  store %VetIssue %341, %VetIssue* %345
  %346 = ptrtoint %VetIssue* %345 to i64
  call void @nyx_array_push({ i64, i8* }* %340, i64 %346)
  %347 = load i64, i64* %328
  %348 = add i64 %347, 1
  store i64 %348, i64* %328
  br label %while_cond48
while_end50:
  %349 = load { i64, i8* }*, { i64, i8* }** %323
  %350 = call { i64, i8* }* @check_dead_code({ i64, i8* }* %349)
  %351 = alloca { i64, i8* }*
  store { i64, i8* }* %350, { i64, i8* }** %351
  %352 = alloca i64
  store i64 0, i64* %352
  %353 = call i8* @llvm.stacksave()
  br label %while_cond51
while_cond51:
  %354 = load i64, i64* %352
  %355 = load { i64, i8* }*, { i64, i8* }** %351
  %356 = call i64 @nyx_array_length({ i64, i8* }* %355)
  %357 = icmp slt i64 %354, %356
  br i1 %357, label %while_body52, label %while_end53
while_body52:
  call void @llvm.stackrestore(i8* %353)
  %358 = load { i64, i8* }*, { i64, i8* }** %351
  %359 = load i64, i64* %352
  %360 = call i64 @nyx_array_get({ i64, i8* }* %358, i64 %359)
  %361 = inttoptr i64 %360 to %VetIssue*
  %362 = load %VetIssue, %VetIssue* %361
  %363 = alloca %VetIssue
  store %VetIssue %362, %VetIssue* %363
  %364 = load { i64, i8* }*, { i64, i8* }** %319
  %365 = load %VetIssue, %VetIssue* %363
  %366 = getelementptr %VetIssue, %VetIssue* null, i32 1
  %367 = ptrtoint %VetIssue* %366 to i64
  %368 = call i8* @GC_malloc(i64 %367)
  %369 = bitcast i8* %368 to %VetIssue*
  store %VetIssue %365, %VetIssue* %369
  %370 = ptrtoint %VetIssue* %369 to i64
  call void @nyx_array_push({ i64, i8* }* %364, i64 %370)
  %371 = load i64, i64* %352
  %372 = add i64 %371, 1
  store i64 %372, i64* %352
  br label %while_cond51
while_end53:
  %373 = alloca i64
  store i64 0, i64* %373
  %374 = getelementptr [9 x i8], [9 x i8]* @.str23, i32 0, i32 0
  %375 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str23.c, i8* %374)
  %376 = alloca %nyx_string*
  store %nyx_string* %375, %nyx_string** %376
  %377 = getelementptr [4 x i8], [4 x i8]* @.str24, i32 0, i32 0
  %378 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str24.c, i8* %377)
  %379 = alloca %nyx_string*
  store %nyx_string* %378, %nyx_string** %379
  %380 = getelementptr [4 x i8], [4 x i8]* @.str25, i32 0, i32 0
  %381 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str25.c, i8* %380)
  %382 = alloca %nyx_string*
  store %nyx_string* %381, %nyx_string** %382
  %383 = getelementptr [2 x i8], [2 x i8]* @.str26, i32 0, i32 0
  %384 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str26.c, i8* %383)
  %385 = alloca %nyx_string*
  store %nyx_string* %384, %nyx_string** %385
  %386 = getelementptr [8 x i8], [8 x i8]* @.str27, i32 0, i32 0
  %387 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str27.c, i8* %386)
  %388 = alloca %nyx_string*
  store %nyx_string* %387, %nyx_string** %388
  %389 = getelementptr [5 x i8], [5 x i8]* @.str28, i32 0, i32 0
  %390 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str28.c, i8* %389)
  %391 = alloca %nyx_string*
  store %nyx_string* %390, %nyx_string** %391
  %392 = getelementptr [11 x i8], [11 x i8]* @.str29, i32 0, i32 0
  %393 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str29.c, i8* %392)
  %394 = alloca %nyx_string*
  store %nyx_string* %393, %nyx_string** %394
  %395 = getelementptr [38 x i8], [38 x i8]* @.str30, i32 0, i32 0
  %396 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str30.c, i8* %395)
  %397 = alloca %nyx_string*
  store %nyx_string* %396, %nyx_string** %397
  %398 = getelementptr [2 x i8], [2 x i8]* @.str31, i32 0, i32 0
  %399 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str31.c, i8* %398)
  %400 = alloca %nyx_string*
  store %nyx_string* %399, %nyx_string** %400
  %401 = call i8* @llvm.stacksave()
  br label %while_cond54
while_cond54:
  %402 = load i64, i64* %373
  %403 = load { i64, i8* }*, { i64, i8* }** %323
  %404 = call i64 @nyx_array_length({ i64, i8* }* %403)
  %405 = icmp slt i64 %402, %404
  br i1 %405, label %while_body55, label %while_end56
while_body55:
  call void @llvm.stackrestore(i8* %401)
  %406 = load { i64, i8* }*, { i64, i8* }** %323
  %407 = load i64, i64* %373
  %408 = call i64 @nyx_array_get({ i64, i8* }* %406, i64 %407)
  %409 = inttoptr i64 %408 to { i64, i8* }*
  %410 = alloca { i64, i8* }*
  store { i64, i8* }* %409, { i64, i8* }** %410
  %411 = load { i64, i8* }*, { i64, i8* }** %410
  %412 = call i64 @nyx_array_get_checked({ i64, i8* }* %411, i64 0, i64 2)
  %413 = inttoptr i64 %412 to %nyx_string*
  %414 = alloca %nyx_string*
  store %nyx_string* %413, %nyx_string** %414
  %415 = load %nyx_string*, %nyx_string** %414
  %416 = load %nyx_string*, %nyx_string** %376
  %417 = call i1 @nyx_string_equals(%nyx_string* %415, %nyx_string* %416)
  br i1 %417, label %then57, label %else58
then57:
  %418 = load { i64, i8* }*, { i64, i8* }** %410
  %419 = call i64 @nyx_array_get({ i64, i8* }* %418, i64 1)
  %420 = inttoptr i64 %419 to { i64, i8* }*
  %421 = alloca { i64, i8* }*
  store { i64, i8* }* %420, { i64, i8* }** %421
  %422 = load { i64, i8* }*, { i64, i8* }** %421
  %423 = call i64 @nyx_array_get({ i64, i8* }* %422, i64 3)
  %424 = inttoptr i64 %423 to { i64, i8* }*
  %425 = alloca { i64, i8* }*
  store { i64, i8* }* %424, { i64, i8* }** %425
  %426 = load { i64, i8* }*, { i64, i8* }** %425
  %427 = call i64 @nyx_array_get({ i64, i8* }* %426, i64 1)
  %428 = inttoptr i64 %427 to { i64, i8* }*
  %429 = alloca { i64, i8* }*
  store { i64, i8* }* %428, { i64, i8* }** %429
  %430 = alloca i64
  store i64 0, i64* %430
  %431 = call i8* @llvm.stacksave()
  br label %while_cond60
while_cond60:
  %432 = load i64, i64* %430
  %433 = load { i64, i8* }*, { i64, i8* }** %429
  %434 = call i64 @nyx_array_length({ i64, i8* }* %433)
  %435 = icmp slt i64 %432, %434
  br i1 %435, label %while_body61, label %while_end62
while_body61:
  call void @llvm.stackrestore(i8* %431)
  %436 = load { i64, i8* }*, { i64, i8* }** %429
  %437 = load i64, i64* %430
  %438 = call i64 @nyx_array_get({ i64, i8* }* %436, i64 %437)
  %439 = inttoptr i64 %438 to { i64, i8* }*
  %440 = alloca { i64, i8* }*
  store { i64, i8* }* %439, { i64, i8* }** %440
  %441 = load { i64, i8* }*, { i64, i8* }** %440
  %442 = call i64 @nyx_array_get_checked({ i64, i8* }* %441, i64 0, i64 2)
  %443 = inttoptr i64 %442 to %nyx_string*
  %444 = alloca %nyx_string*
  store %nyx_string* %443, %nyx_string** %444
  %445 = alloca i1
  store i1 true, i1* %445
  %446 = load %nyx_string*, %nyx_string** %444
  %447 = load %nyx_string*, %nyx_string** %379
  %448 = call i1 @nyx_string_equals(%nyx_string* %446, %nyx_string* %447)
  br i1 %448, label %sc_or_end64, label %sc_or_rhs63
sc_or_rhs63:
  %449 = load %nyx_string*, %nyx_string** %444
  %450 = load %nyx_string*, %nyx_string** %382
  %451 = call i1 @nyx_string_equals(%nyx_string* %449, %nyx_string* %450)
  store i1 %451, i1* %445
  br label %sc_or_end64
sc_or_end64:
  %452 = load i1, i1* %445
  br i1 %452, label %then65, label %else66
then65:
  %453 = load { i64, i8* }*, { i64, i8* }** %440
  %454 = call i64 @nyx_array_get({ i64, i8* }* %453, i64 1)
  %455 = inttoptr i64 %454 to { i64, i8* }*
  %456 = alloca { i64, i8* }*
  store { i64, i8* }* %455, { i64, i8* }** %456
  %457 = load { i64, i8* }*, { i64, i8* }** %456
  %458 = call i64 @nyx_array_get({ i64, i8* }* %457, i64 0)
  %459 = inttoptr i64 %458 to { i64, i8* }*
  %460 = alloca { i64, i8* }*
  store { i64, i8* }* %459, { i64, i8* }** %460
  %461 = load { i64, i8* }*, { i64, i8* }** %460
  %462 = call i64 @nyx_array_get_checked({ i64, i8* }* %461, i64 0, i64 2)
  %463 = inttoptr i64 %462 to %nyx_string*
  %464 = alloca %nyx_string*
  store %nyx_string* %463, %nyx_string** %464
  %465 = load %nyx_string*, %nyx_string** %464
  %466 = load %nyx_string*, %nyx_string** %385
  %467 = call i1 @nyx_string_starts_with(%nyx_string* %465, %nyx_string* %466)
  %468 = xor i1 %467, true
  br i1 %468, label %then68, label %else69
then68:
  %469 = load %nyx_string*, %nyx_string** %464
  %470 = load %nyx_string*, %nyx_string** %source.ptr
  %471 = call i1 @name_used_in_source(%nyx_string* %469, %nyx_string* %470)
  %472 = alloca i1
  store i1 %471, i1* %472
  %473 = load i1, i1* %472
  %474 = xor i1 %473, true
  br i1 %474, label %then71, label %else72
then71:
  %475 = load { i64, i8* }*, { i64, i8* }** %421
  %476 = call i64 @nyx_array_get_checked({ i64, i8* }* %475, i64 0, i64 2)
  %477 = inttoptr i64 %476 to %nyx_string*
  %478 = alloca %nyx_string*
  store %nyx_string* %477, %nyx_string** %478
  %479 = load %nyx_string*, %nyx_string** %388
  %480 = load %nyx_string*, %nyx_string** %391
  %481 = load %nyx_string*, %nyx_string** %394
  %482 = load %nyx_string*, %nyx_string** %464
  %483 = call %nyx_string* @nyx_string_concat(%nyx_string* %481, %nyx_string* %482)
  %484 = load %nyx_string*, %nyx_string** %397
  %485 = call %nyx_string* @nyx_string_concat(%nyx_string* %483, %nyx_string* %484)
  %486 = load %nyx_string*, %nyx_string** %478
  %487 = call %nyx_string* @nyx_string_concat(%nyx_string* %485, %nyx_string* %486)
  %488 = load %nyx_string*, %nyx_string** %400
  %489 = call %nyx_string* @nyx_string_concat(%nyx_string* %487, %nyx_string* %488)
  %490 = call %VetIssue @make_issue(%nyx_string* %479, %nyx_string* %480, %nyx_string* %489, i64 0)
  %491 = alloca %VetIssue
  store %VetIssue %490, %VetIssue* %491
  %492 = load { i64, i8* }*, { i64, i8* }** %319
  %493 = load %VetIssue, %VetIssue* %491
  %494 = getelementptr %VetIssue, %VetIssue* null, i32 1
  %495 = ptrtoint %VetIssue* %494 to i64
  %496 = call i8* @GC_malloc(i64 %495)
  %497 = bitcast i8* %496 to %VetIssue*
  store %VetIssue %493, %VetIssue* %497
  %498 = ptrtoint %VetIssue* %497 to i64
  call void @nyx_array_push({ i64, i8* }* %492, i64 %498)
  br label %merge73
else72:
  br label %merge73
merge73:
  br label %merge70
else69:
  br label %merge70
merge70:
  br label %merge67
else66:
  br label %merge67
merge67:
  %499 = load i64, i64* %430
  %500 = add i64 %499, 1
  store i64 %500, i64* %430
  br label %while_cond60
while_end62:
  br label %merge59
else58:
  br label %merge59
merge59:
  %501 = load i64, i64* %373
  %502 = add i64 %501, 1
  store i64 %502, i64* %373
  br label %while_cond54
while_end56:
  %503 = load { i64, i8* }*, { i64, i8* }** %319
  ret { i64, i8* }* %503
}

define i64 @main(
i32 %argc, i8** %argv) {
  call void @nyx_set_args(i32 %argc, i8** %argv)
  %504 = getelementptr [23 x i8], [23 x i8]* @.str32, i32 0, i32 0
  %505 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str32.c, i8* %504)
  %506 = call i8* @nyx_string_to_cstr(%nyx_string* %505)
  call void @nyx_print_string(i8* %506)
  %507 = getelementptr [8 x i8], [8 x i8]* @.str33, i32 0, i32 0
  %508 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str33.c, i8* %507)
  %509 = call i8* @nyx_string_to_cstr(%nyx_string* %508)
  %510 = call %nyx_string* @nyx_getenv(i8* %509)
  %511 = alloca %nyx_string*
  store %nyx_string* %510, %nyx_string** %511
  %512 = load %nyx_string*, %nyx_string** %511
  %513 = getelementptr [1 x i8], [1 x i8]* @.str34, i32 0, i32 0
  %514 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str34.c, i8* %513)
  %515 = call i1 @nyx_string_equals(%nyx_string* %512, %nyx_string* %514)
  br i1 %515, label %then74, label %else75
then74:
  %516 = getelementptr [10 x i8], [10 x i8]* @.str35, i32 0, i32 0
  %517 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str35.c, i8* %516)
  store %nyx_string* %517, %nyx_string** %511
  br label %merge76
else75:
  br label %merge76
merge76:
  %518 = load %nyx_string*, %nyx_string** %511
  %519 = call i8* @nyx_string_to_cstr(%nyx_string* %518)
  %520 = call %nyx_string* @nyx_read_file(i8* %519)
  %521 = alloca %nyx_string*
  store %nyx_string* %520, %nyx_string** %521
  %522 = getelementptr [20 x i8], [20 x i8]* @.str36, i32 0, i32 0
  %523 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str36.c, i8* %522)
  %524 = call i8* @nyx_string_to_cstr(%nyx_string* %523)
  call void @nyx_print_string(i8* %524)
  %525 = load %nyx_string*, %nyx_string** %521
  %526 = call { i64, i8* }* @tokenize(%nyx_string* %525)
  %527 = alloca { i64, i8* }*
  store { i64, i8* }* %526, { i64, i8* }** %527
  %528 = getelementptr [17 x i8], [17 x i8]* @.str37, i32 0, i32 0
  %529 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str37.c, i8* %528)
  %530 = call i8* @nyx_string_to_cstr(%nyx_string* %529)
  call void @nyx_print_string(i8* %530)
  %531 = load { i64, i8* }*, { i64, i8* }** %527
  %532 = load %nyx_string*, %nyx_string** %521
  %533 = call { i64, i8* }* @parse({ i64, i8* }* %531, %nyx_string* %532)
  %534 = alloca { i64, i8* }*
  store { i64, i8* }* %533, { i64, i8* }** %534
  %535 = getelementptr [19 x i8], [19 x i8]* @.str38, i32 0, i32 0
  %536 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str38.c, i8* %535)
  %537 = call i8* @nyx_string_to_cstr(%nyx_string* %536)
  call void @nyx_print_string(i8* %537)
  %538 = load %nyx_string*, %nyx_string** %521
  %539 = load { i64, i8* }*, { i64, i8* }** %534
  %540 = call { i64, i8* }* @vet_source(%nyx_string* %538, { i64, i8* }* %539)
  %541 = alloca { i64, i8* }*
  store { i64, i8* }* %540, { i64, i8* }** %541
  %542 = load { i64, i8* }*, { i64, i8* }** %541
  %543 = call i64 @nyx_array_length({ i64, i8* }* %542)
  %544 = alloca i64
  store i64 %543, i64* %544
  %545 = load i64, i64* %544
  %546 = icmp eq i64 %545, 0
  br i1 %546, label %then77, label %else78
then77:
  %547 = getelementptr [20 x i8], [20 x i8]* @.str39, i32 0, i32 0
  %548 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str39.c, i8* %547)
  %549 = call i8* @nyx_string_to_cstr(%nyx_string* %548)
  call void @nyx_print_string(i8* %549)
  br label %merge79
else78:
  %550 = load i64, i64* %544
  %551 = call %nyx_string* @nyx_string_from_int(i64 %550)
  %552 = getelementptr [17 x i8], [17 x i8]* @.str40, i32 0, i32 0
  %553 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str40.c, i8* %552)
  %554 = call %nyx_string* @nyx_string_concat(%nyx_string* %551, %nyx_string* %553)
  %555 = call i8* @nyx_string_to_cstr(%nyx_string* %554)
  call void @nyx_print_string(i8* %555)
  %556 = alloca i64
  store i64 0, i64* %556
  %557 = call i8* @llvm.stacksave()
  br label %while_cond80
while_cond80:
  %558 = load i64, i64* %556
  %559 = load i64, i64* %544
  %560 = icmp slt i64 %558, %559
  br i1 %560, label %while_body81, label %while_end82
while_body81:
  call void @llvm.stackrestore(i8* %557)
  %561 = load { i64, i8* }*, { i64, i8* }** %541
  %562 = load i64, i64* %556
  %563 = call i64 @nyx_array_get({ i64, i8* }* %561, i64 %562)
  %564 = inttoptr i64 %563 to %VetIssue*
  %565 = load %VetIssue, %VetIssue* %564
  %566 = alloca %VetIssue
  store %VetIssue %565, %VetIssue* %566
  %567 = load %VetIssue, %VetIssue* %566
  %568 = call i64 @print_issue(%VetIssue %567)
  %569 = load i64, i64* %556
  %570 = add i64 %569, 1
  store i64 %570, i64* %556
  br label %while_cond80
while_end82:
  br label %merge79
merge79:
  %571 = getelementptr [6 x i8], [6 x i8]* @.str41, i32 0, i32 0
  %572 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str41.c, i8* %571)
  %573 = call i8* @nyx_string_to_cstr(%nyx_string* %572)
  call void @nyx_print_string(i8* %573)
  ret i64 0
}


attributes #0 = { returns_twice }

