source_filename = "script.nx"
target triple = "x86_64-pc-linux-gnu"

@.str0 = private unnamed_addr constant [1 x i8] c"\00"
@.str0.c = internal global %nyx_string* null
@.str1 = private unnamed_addr constant [9 x i8] c"function\00"
@.str1.c = internal global %nyx_string* null
@.str2 = private unnamed_addr constant [9 x i8] c"async_fn\00"
@.str2.c = internal global %nyx_string* null
@.str3 = private unnamed_addr constant [7 x i8] c"lambda\00"
@.str3.c = internal global %nyx_string* null
@.str4 = private unnamed_addr constant [8 x i8] c"closure\00"
@.str4.c = internal global %nyx_string* null
@.str5 = private unnamed_addr constant [7 x i8] c"string\00"
@.str5.c = internal global %nyx_string* null
@.str6 = private unnamed_addr constant [6 x i8] c"match\00"
@.str6.c = internal global %nyx_string* null
@.str7 = private unnamed_addr constant [6 x i8] c"const\00"
@.str7.c = internal global %nyx_string* null
@.str8 = private unnamed_addr constant [6 x i8] c"binop\00"
@.str8.c = internal global %nyx_string* null
@.str9 = private unnamed_addr constant [5 x i8] c"unop\00"
@.str9.c = internal global %nyx_string* null
@.str10 = private unnamed_addr constant [5 x i8] c"call\00"
@.str10.c = internal global %nyx_string* null
@.str11 = private unnamed_addr constant [12 x i8] c"method_call\00"
@.str11.c = internal global %nyx_string* null
@.str12 = private unnamed_addr constant [6 x i8] c"index\00"
@.str12.c = internal global %nyx_string* null
@.str13 = private unnamed_addr constant [13 x i8] c"field_access\00"
@.str13.c = internal global %nyx_string* null
@.str14 = private unnamed_addr constant [6 x i8] c"array\00"
@.str14.c = internal global %nyx_string* null
@.str15 = private unnamed_addr constant [12 x i8] c"map_literal\00"
@.str15.c = internal global %nyx_string* null
@.str16 = private unnamed_addr constant [3 x i8] c"if\00"
@.str16.c = internal global %nyx_string* null
@.str17 = private unnamed_addr constant [6 x i8] c"while\00"
@.str17.c = internal global %nyx_string* null
@.str18 = private unnamed_addr constant [4 x i8] c"for\00"
@.str18.c = internal global %nyx_string* null
@.str19 = private unnamed_addr constant [10 x i8] c"while_let\00"
@.str19.c = internal global %nyx_string* null
@.str20 = private unnamed_addr constant [6 x i8] c"block\00"
@.str20.c = internal global %nyx_string* null
@.str21 = private unnamed_addr constant [4 x i8] c"let\00"
@.str21.c = internal global %nyx_string* null
@.str22 = private unnamed_addr constant [22 x i8] c"let_destructure_tuple\00"
@.str22.c = internal global %nyx_string* null
@.str23 = private unnamed_addr constant [7 x i8] c"assign\00"
@.str23.c = internal global %nyx_string* null
@.str24 = private unnamed_addr constant [13 x i8] c"index_assign\00"
@.str24.c = internal global %nyx_string* null
@.str25 = private unnamed_addr constant [13 x i8] c"field_assign\00"
@.str25.c = internal global %nyx_string* null
@.str26 = private unnamed_addr constant [13 x i8] c"deref_assign\00"
@.str26.c = internal global %nyx_string* null
@.str27 = private unnamed_addr constant [7 x i8] c"return\00"
@.str27.c = internal global %nyx_string* null
@.str28 = private unnamed_addr constant [12 x i8] c"struct_init\00"
@.str28.c = internal global %nyx_string* null
@.str29 = private unnamed_addr constant [7 x i8] c"try_op\00"
@.str29.c = internal global %nyx_string* null
@.str30 = private unnamed_addr constant [5 x i8] c"cast\00"
@.str30.c = internal global %nyx_string* null
@.str31 = private unnamed_addr constant [6 x i8] c"range\00"
@.str31.c = internal global %nyx_string* null
@.str32 = private unnamed_addr constant [9 x i8] c"function\00"
@.str32.c = internal global %nyx_string* null
@.str33 = private unnamed_addr constant [9 x i8] c"async_fn\00"
@.str33.c = internal global %nyx_string* null
@.str34 = private unnamed_addr constant [7 x i8] c"lambda\00"
@.str34.c = internal global %nyx_string* null
@.str35 = private unnamed_addr constant [8 x i8] c"closure\00"
@.str35.c = internal global %nyx_string* null
@.str36 = private unnamed_addr constant [6 x i8] c"const\00"
@.str36.c = internal global %nyx_string* null
@.str37 = private unnamed_addr constant [7 x i8] c"string\00"
@.str37.c = internal global %nyx_string* null
@.str38 = private unnamed_addr constant [1 x i8] c"\00"
@.str38.c = internal global %nyx_string* null
@.str39 = private unnamed_addr constant [11 x i8] c"identifier\00"
@.str39.c = internal global %nyx_string* null
@.str40 = private unnamed_addr constant [6 x i8] c"match\00"
@.str40.c = internal global %nyx_string* null
@.str41 = private unnamed_addr constant [10 x i8] c"match_arm\00"
@.str41.c = internal global %nyx_string* null
@.str42 = private unnamed_addr constant [6 x i8] c"match\00"
@.str42.c = internal global %nyx_string* null
@.str43 = private unnamed_addr constant [6 x i8] c"binop\00"
@.str43.c = internal global %nyx_string* null
@.str44 = private unnamed_addr constant [5 x i8] c"unop\00"
@.str44.c = internal global %nyx_string* null
@.str45 = private unnamed_addr constant [5 x i8] c"call\00"
@.str45.c = internal global %nyx_string* null
@.str46 = private unnamed_addr constant [12 x i8] c"method_call\00"
@.str46.c = internal global %nyx_string* null
@.str47 = private unnamed_addr constant [6 x i8] c"index\00"
@.str47.c = internal global %nyx_string* null
@.str48 = private unnamed_addr constant [13 x i8] c"field_access\00"
@.str48.c = internal global %nyx_string* null
@.str49 = private unnamed_addr constant [6 x i8] c"array\00"
@.str49.c = internal global %nyx_string* null
@.str50 = private unnamed_addr constant [12 x i8] c"map_literal\00"
@.str50.c = internal global %nyx_string* null
@.str51 = private unnamed_addr constant [3 x i8] c"if\00"
@.str51.c = internal global %nyx_string* null
@.str52 = private unnamed_addr constant [6 x i8] c"while\00"
@.str52.c = internal global %nyx_string* null
@.str53 = private unnamed_addr constant [4 x i8] c"for\00"
@.str53.c = internal global %nyx_string* null
@.str54 = private unnamed_addr constant [10 x i8] c"while_let\00"
@.str54.c = internal global %nyx_string* null
@.str55 = private unnamed_addr constant [6 x i8] c"block\00"
@.str55.c = internal global %nyx_string* null
@.str56 = private unnamed_addr constant [4 x i8] c"let\00"
@.str56.c = internal global %nyx_string* null
@.str57 = private unnamed_addr constant [22 x i8] c"let_destructure_tuple\00"
@.str57.c = internal global %nyx_string* null
@.str58 = private unnamed_addr constant [7 x i8] c"assign\00"
@.str58.c = internal global %nyx_string* null
@.str59 = private unnamed_addr constant [13 x i8] c"index_assign\00"
@.str59.c = internal global %nyx_string* null
@.str60 = private unnamed_addr constant [13 x i8] c"field_assign\00"
@.str60.c = internal global %nyx_string* null
@.str61 = private unnamed_addr constant [13 x i8] c"deref_assign\00"
@.str61.c = internal global %nyx_string* null
@.str62 = private unnamed_addr constant [7 x i8] c"return\00"
@.str62.c = internal global %nyx_string* null
@.str63 = private unnamed_addr constant [12 x i8] c"struct_init\00"
@.str63.c = internal global %nyx_string* null
@.str64 = private unnamed_addr constant [7 x i8] c"try_op\00"
@.str64.c = internal global %nyx_string* null
@.str65 = private unnamed_addr constant [5 x i8] c"cast\00"
@.str65.c = internal global %nyx_string* null
@.str66 = private unnamed_addr constant [6 x i8] c"range\00"
@.str66.c = internal global %nyx_string* null
@.str67 = private unnamed_addr constant [4 x i8] c"for\00"
@.str67.c = internal global %nyx_string* null
@.str68 = private unnamed_addr constant [10 x i8] c"while_let\00"
@.str68.c = internal global %nyx_string* null
@.str69 = private unnamed_addr constant [6 x i8] c"while\00"
@.str69.c = internal global %nyx_string* null
@.str70 = private unnamed_addr constant [12 x i8] c"__licm_str_\00"
@.str70.c = internal global %nyx_string* null
@.str71 = private unnamed_addr constant [7 x i8] c"string\00"
@.str71.c = internal global %nyx_string* null
@.str72 = private unnamed_addr constant [4 x i8] c"let\00"
@.str72.c = internal global %nyx_string* null
@.str73 = private unnamed_addr constant [7 x i8] c"String\00"
@.str73.c = internal global %nyx_string* null
@.str74 = private unnamed_addr constant [9 x i8] c"function\00"
@.str74.c = internal global %nyx_string* null
@.str75 = private unnamed_addr constant [9 x i8] c"async_fn\00"
@.str75.c = internal global %nyx_string* null
@.str76 = private unnamed_addr constant [6 x i8] c"block\00"
@.str76.c = internal global %nyx_string* null
@.str77 = private unnamed_addr constant [6 x i8] c"block\00"
@.str77.c = internal global %nyx_string* null
@.str78 = private unnamed_addr constant [6 x i8] c"block\00"
@.str78.c = internal global %nyx_string* null
@.str79 = private unnamed_addr constant [6 x i8] c"block\00"
@.str79.c = internal global %nyx_string* null
@.str80 = private unnamed_addr constant [3 x i8] c"if\00"
@.str80.c = internal global %nyx_string* null
@.str81 = private unnamed_addr constant [3 x i8] c"if\00"
@.str81.c = internal global %nyx_string* null
@.str82 = private unnamed_addr constant [5 x i8] c"impl\00"
@.str82.c = internal global %nyx_string* null
@.str83 = private unnamed_addr constant [11 x i8] c"impl_trait\00"
@.str83.c = internal global %nyx_string* null
@.str84 = private unnamed_addr constant [9 x i8] c"NYX_LICM\00"
@.str84.c = internal global %nyx_string* null
@.str85 = private unnamed_addr constant [4 x i8] c"off\00"
@.str85.c = internal global %nyx_string* null
@.str86 = private unnamed_addr constant [6 x i8] c"block\00"
@.str86.c = internal global %nyx_string* null
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


define internal %ASTNode @licm_root_of(
{ i64, i8* }* %arr.param) {
  %arr.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %arr.param, { i64, i8* }** %arr.ptr
  %1 = call { i64, i8* }* @nyx_array_new_ptr()
  %2 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %3 = bitcast { i64, i8* }* %2 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1, i8* %3)
  %4 = alloca { i64, i8* }*
  store { i64, i8* }* %1, { i64, i8* }** %4
  %5 = load { i64, i8* }*, { i64, i8* }** %4
  %6 = call i64 @nyx_array_get({ i64, i8* }* %5, i64 0)
  %7 = inttoptr i64 %6 to { i64, i8* }*
  %8 = call i64 @nyx_array_get({ i64, i8* }* %7, i64 0)
  %9 = call i64 @nyx_array_get({ i64, i8* }* %7, i64 1)
  %10 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %7, i64 2)
  %11 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %7, i64 3)
  %12 = inttoptr i64 %8 to %nyx_string*
  %13 = inttoptr i64 %9 to { i64, i8* }*
  %14 = alloca %ASTNode
  %15 = getelementptr inbounds %ASTNode, %ASTNode* %14, i32 0, i32 0
  store %nyx_string* %12, %nyx_string** %15
  %16 = getelementptr inbounds %ASTNode, %ASTNode* %14, i32 0, i32 1
  store { i64, i8* }* %13, { i64, i8* }** %16
  %17 = getelementptr inbounds %ASTNode, %ASTNode* %14, i32 0, i32 2
  store i64 %10, i64* %17
  %18 = getelementptr inbounds %ASTNode, %ASTNode* %14, i32 0, i32 3
  store i64 %11, i64* %18
  %19 = load %ASTNode, %ASTNode* %14
  %20 = alloca %ASTNode
  store %ASTNode %19, %ASTNode* %20
  %21 = load %ASTNode, %ASTNode* %20
  ret %ASTNode %21
}

define internal %ASTNode @licm_node_at(
%ASTNode %node.param, i64 %i.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %i.ptr = alloca i64
  store i64 %i.param, i64* %i.ptr
  %22 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 1
  %23 = load { i64, i8* }*, { i64, i8* }** %22
  %24 = alloca { i64, i8* }*
  store { i64, i8* }* %23, { i64, i8* }** %24
  %25 = load { i64, i8* }*, { i64, i8* }** %24
  %26 = load i64, i64* %i.ptr
  %27 = call i64 @nyx_array_get({ i64, i8* }* %25, i64 %26)
  %28 = inttoptr i64 %27 to { i64, i8* }*
  %29 = call i64 @nyx_array_get({ i64, i8* }* %28, i64 0)
  %30 = call i64 @nyx_array_get({ i64, i8* }* %28, i64 1)
  %31 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %28, i64 2)
  %32 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %28, i64 3)
  %33 = inttoptr i64 %29 to %nyx_string*
  %34 = inttoptr i64 %30 to { i64, i8* }*
  %35 = alloca %ASTNode
  %36 = getelementptr inbounds %ASTNode, %ASTNode* %35, i32 0, i32 0
  store %nyx_string* %33, %nyx_string** %36
  %37 = getelementptr inbounds %ASTNode, %ASTNode* %35, i32 0, i32 1
  store { i64, i8* }* %34, { i64, i8* }** %37
  %38 = getelementptr inbounds %ASTNode, %ASTNode* %35, i32 0, i32 2
  store i64 %31, i64* %38
  %39 = getelementptr inbounds %ASTNode, %ASTNode* %35, i32 0, i32 3
  store i64 %32, i64* %39
  %40 = load %ASTNode, %ASTNode* %35
  %41 = alloca %ASTNode
  store %ASTNode %40, %ASTNode* %41
  %42 = load %ASTNode, %ASTNode* %41
  ret %ASTNode %42
}

define internal { i64, i8* }* @licm_array_at(
%ASTNode %node.param, i64 %i.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %i.ptr = alloca i64
  store i64 %i.param, i64* %i.ptr
  %43 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 1
  %44 = load { i64, i8* }*, { i64, i8* }** %43
  %45 = alloca { i64, i8* }*
  store { i64, i8* }* %44, { i64, i8* }** %45
  %46 = load { i64, i8* }*, { i64, i8* }** %45
  %47 = load i64, i64* %i.ptr
  %48 = call i64 @nyx_array_get({ i64, i8* }* %46, i64 %47)
  %49 = inttoptr i64 %48 to { i64, i8* }*
  %50 = alloca { i64, i8* }*
  store { i64, i8* }* %49, { i64, i8* }** %50
  %51 = load { i64, i8* }*, { i64, i8* }** %50
  ret { i64, i8* }* %51
}

define internal { i64, i8* }* @licm_make(
%nyx_string* %node_type.param, { i64, i8* }* %data.param) {
  %node_type.ptr = alloca %nyx_string*
  store %nyx_string* %node_type.param, %nyx_string** %node_type.ptr
  %data.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %data.param, { i64, i8* }** %data.ptr
  %52 = call { i64, i8* }* @nyx_array_new_ptr()
  %53 = alloca { i64, i8* }*
  store { i64, i8* }* %52, { i64, i8* }** %53
  %54 = load { i64, i8* }*, { i64, i8* }** %53
  %55 = load %nyx_string*, %nyx_string** %node_type.ptr
  %56 = ptrtoint %nyx_string* %55 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %54, i64 %56, i64 2)
  %57 = load { i64, i8* }*, { i64, i8* }** %53
  %58 = load { i64, i8* }*, { i64, i8* }** %data.ptr
  %59 = ptrtoint { i64, i8* }* %58 to i64
  call void @nyx_array_push({ i64, i8* }* %57, i64 %59)
  %60 = load { i64, i8* }*, { i64, i8* }** %53
  call void @nyx_array_push_tagged({ i64, i8* }* %60, i64 0, i64 1)
  %61 = load { i64, i8* }*, { i64, i8* }** %53
  call void @nyx_array_push_tagged({ i64, i8* }* %61, i64 0, i64 1)
  %62 = load { i64, i8* }*, { i64, i8* }** %53
  ret { i64, i8* }* %62
}

define internal i1 @licm_contains(
{ i64, i8* }* %acc.param, %nyx_string* %v.param) {
  %acc.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %acc.param, { i64, i8* }** %acc.ptr
  %v.ptr = alloca %nyx_string*
  store %nyx_string* %v.param, %nyx_string** %v.ptr
  %63 = alloca i64
  store i64 0, i64* %63
  %64 = call i8* @llvm.stacksave()
  br label %while_cond0
while_cond0:
  %65 = load i64, i64* %63
  %66 = load { i64, i8* }*, { i64, i8* }** %acc.ptr
  %67 = call i64 @nyx_array_length({ i64, i8* }* %66)
  %68 = icmp slt i64 %65, %67
  br i1 %68, label %while_body1, label %while_end2
while_body1:
  call void @llvm.stackrestore(i8* %64)
  %69 = load { i64, i8* }*, { i64, i8* }** %acc.ptr
  %70 = load i64, i64* %63
  %71 = call i64 @nyx_array_get_checked({ i64, i8* }* %69, i64 %70, i64 2)
  %72 = inttoptr i64 %71 to %nyx_string*
  %73 = alloca %nyx_string*
  store %nyx_string* %72, %nyx_string** %73
  %74 = load %nyx_string*, %nyx_string** %73
  %75 = load %nyx_string*, %nyx_string** %v.ptr
  %76 = call i1 @nyx_string_equals(%nyx_string* %74, %nyx_string* %75)
  br i1 %76, label %then3, label %else4
then3:
  ret i1 1
else4:
  br label %merge5
merge5:
  %77 = load i64, i64* %63
  %78 = add i64 %77, 1
  store i64 %78, i64* %63
  br label %while_cond0
while_end2:
  ret i1 0
}

define internal %nyx_string* @licm_lookup(
{ i64, i8* }* %litmap.param, %nyx_string* %v.param) {
  %litmap.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %litmap.param, { i64, i8* }** %litmap.ptr
  %v.ptr = alloca %nyx_string*
  store %nyx_string* %v.param, %nyx_string** %v.ptr
  %79 = alloca i64
  store i64 0, i64* %79
  %80 = call i8* @llvm.stacksave()
  br label %while_cond6
while_cond6:
  %81 = load i64, i64* %79
  %82 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %83 = call i64 @nyx_array_length({ i64, i8* }* %82)
  %84 = icmp slt i64 %81, %83
  br i1 %84, label %while_body7, label %while_end8
while_body7:
  call void @llvm.stackrestore(i8* %80)
  %85 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %86 = load i64, i64* %79
  %87 = call i64 @nyx_array_get({ i64, i8* }* %85, i64 %86)
  %88 = inttoptr i64 %87 to { i64, i8* }*
  %89 = alloca { i64, i8* }*
  store { i64, i8* }* %88, { i64, i8* }** %89
  %90 = load { i64, i8* }*, { i64, i8* }** %89
  %91 = call i64 @nyx_array_get_checked({ i64, i8* }* %90, i64 0, i64 2)
  %92 = inttoptr i64 %91 to %nyx_string*
  %93 = alloca %nyx_string*
  store %nyx_string* %92, %nyx_string** %93
  %94 = load %nyx_string*, %nyx_string** %93
  %95 = load %nyx_string*, %nyx_string** %v.ptr
  %96 = call i1 @nyx_string_equals(%nyx_string* %94, %nyx_string* %95)
  br i1 %96, label %then9, label %else10
then9:
  %97 = load { i64, i8* }*, { i64, i8* }** %89
  %98 = call i64 @nyx_array_get_checked({ i64, i8* }* %97, i64 1, i64 2)
  %99 = inttoptr i64 %98 to %nyx_string*
  %100 = alloca %nyx_string*
  store %nyx_string* %99, %nyx_string** %100
  %101 = load %nyx_string*, %nyx_string** %100
  ret %nyx_string* %101
else10:
  br label %merge11
merge11:
  %102 = load i64, i64* %79
  %103 = add i64 %102, 1
  store i64 %103, i64* %79
  br label %while_cond6
while_end8:
  %104 = getelementptr [1 x i8], [1 x i8]* @.str0, i32 0, i32 0
  %105 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str0.c, i8* %104)
  ret %nyx_string* %105
}

define internal i64 @licm_collect(
%ASTNode %node.param, { i64, i8* }* %acc.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %acc.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %acc.param, { i64, i8* }** %acc.ptr
  %106 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 0
  %107 = load %nyx_string*, %nyx_string** %106
  %108 = alloca %nyx_string*
  store %nyx_string* %107, %nyx_string** %108
  %109 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 1
  %110 = load { i64, i8* }*, { i64, i8* }** %109
  %111 = alloca { i64, i8* }*
  store { i64, i8* }* %110, { i64, i8* }** %111
  %112 = load %nyx_string*, %nyx_string** %108
  %113 = getelementptr [9 x i8], [9 x i8]* @.str1, i32 0, i32 0
  %114 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1.c, i8* %113)
  %115 = call i1 @nyx_string_equals(%nyx_string* %112, %nyx_string* %114)
  br i1 %115, label %then12, label %else13
then12:
  ret i64 0
else13:
  br label %merge14
merge14:
  %116 = load %nyx_string*, %nyx_string** %108
  %117 = getelementptr [9 x i8], [9 x i8]* @.str2, i32 0, i32 0
  %118 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str2.c, i8* %117)
  %119 = call i1 @nyx_string_equals(%nyx_string* %116, %nyx_string* %118)
  br i1 %119, label %then15, label %else16
then15:
  ret i64 0
else16:
  br label %merge17
merge17:
  %120 = load %nyx_string*, %nyx_string** %108
  %121 = getelementptr [7 x i8], [7 x i8]* @.str3, i32 0, i32 0
  %122 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str3.c, i8* %121)
  %123 = call i1 @nyx_string_equals(%nyx_string* %120, %nyx_string* %122)
  br i1 %123, label %then18, label %else19
then18:
  ret i64 0
else19:
  br label %merge20
merge20:
  %124 = load %nyx_string*, %nyx_string** %108
  %125 = getelementptr [8 x i8], [8 x i8]* @.str4, i32 0, i32 0
  %126 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str4.c, i8* %125)
  %127 = call i1 @nyx_string_equals(%nyx_string* %124, %nyx_string* %126)
  br i1 %127, label %then21, label %else22
then21:
  ret i64 0
else22:
  br label %merge23
merge23:
  %128 = alloca i1
  store i1 false, i1* %128
  %129 = load %nyx_string*, %nyx_string** %108
  %130 = getelementptr [7 x i8], [7 x i8]* @.str5, i32 0, i32 0
  %131 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str5.c, i8* %130)
  %132 = call i1 @nyx_string_equals(%nyx_string* %129, %nyx_string* %131)
  br i1 %132, label %sc_and_rhs24, label %sc_and_end25
sc_and_rhs24:
  %133 = load { i64, i8* }*, { i64, i8* }** %111
  %134 = call i64 @nyx_array_length({ i64, i8* }* %133)
  %135 = icmp sge i64 %134, 1
  store i1 %135, i1* %128
  br label %sc_and_end25
sc_and_end25:
  %136 = load i1, i1* %128
  br i1 %136, label %then26, label %else27
then26:
  %137 = load { i64, i8* }*, { i64, i8* }** %111
  %138 = call i64 @nyx_array_get_checked({ i64, i8* }* %137, i64 0, i64 2)
  %139 = inttoptr i64 %138 to %nyx_string*
  %140 = alloca %nyx_string*
  store %nyx_string* %139, %nyx_string** %140
  %141 = load { i64, i8* }*, { i64, i8* }** %acc.ptr
  %142 = load %nyx_string*, %nyx_string** %140
  %143 = call i1 @licm_contains({ i64, i8* }* %141, %nyx_string* %142)
  %144 = xor i1 %143, true
  br i1 %144, label %then29, label %else30
then29:
  %145 = load { i64, i8* }*, { i64, i8* }** %acc.ptr
  %146 = load %nyx_string*, %nyx_string** %140
  %147 = ptrtoint %nyx_string* %146 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %145, i64 %147, i64 2)
  br label %merge31
else30:
  br label %merge31
merge31:
  ret i64 0
else27:
  br label %merge28
merge28:
  %148 = alloca i1
  store i1 false, i1* %148
  %149 = load %nyx_string*, %nyx_string** %108
  %150 = getelementptr [6 x i8], [6 x i8]* @.str6, i32 0, i32 0
  %151 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str6.c, i8* %150)
  %152 = call i1 @nyx_string_equals(%nyx_string* %149, %nyx_string* %151)
  br i1 %152, label %sc_and_rhs32, label %sc_and_end33
sc_and_rhs32:
  %153 = load { i64, i8* }*, { i64, i8* }** %111
  %154 = call i64 @nyx_array_length({ i64, i8* }* %153)
  %155 = icmp sge i64 %154, 2
  store i1 %155, i1* %148
  br label %sc_and_end33
sc_and_end33:
  %156 = load i1, i1* %148
  br i1 %156, label %then34, label %else35
then34:
  %157 = load %ASTNode, %ASTNode* %node.ptr
  %158 = call %ASTNode @licm_node_at(%ASTNode %157, i64 0)
  %159 = alloca %ASTNode
  store %ASTNode %158, %ASTNode* %159
  %160 = load %ASTNode, %ASTNode* %159
  %161 = load { i64, i8* }*, { i64, i8* }** %acc.ptr
  %162 = call i64 @licm_collect(%ASTNode %160, { i64, i8* }* %161)
  %163 = load %ASTNode, %ASTNode* %node.ptr
  %164 = call { i64, i8* }* @licm_array_at(%ASTNode %163, i64 1)
  %165 = alloca { i64, i8* }*
  store { i64, i8* }* %164, { i64, i8* }** %165
  %166 = alloca i64
  store i64 0, i64* %166
  %167 = call i8* @llvm.stacksave()
  br label %while_cond37
while_cond37:
  %168 = load i64, i64* %166
  %169 = load { i64, i8* }*, { i64, i8* }** %165
  %170 = call i64 @nyx_array_length({ i64, i8* }* %169)
  %171 = icmp slt i64 %168, %170
  br i1 %171, label %while_body38, label %while_end39
while_body38:
  call void @llvm.stackrestore(i8* %167)
  %172 = load { i64, i8* }*, { i64, i8* }** %165
  %173 = load i64, i64* %166
  %174 = call i64 @nyx_array_get({ i64, i8* }* %172, i64 %173)
  %175 = inttoptr i64 %174 to { i64, i8* }*
  %176 = call i64 @nyx_array_get({ i64, i8* }* %175, i64 0)
  %177 = call i64 @nyx_array_get({ i64, i8* }* %175, i64 1)
  %178 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %175, i64 2)
  %179 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %175, i64 3)
  %180 = inttoptr i64 %176 to %nyx_string*
  %181 = inttoptr i64 %177 to { i64, i8* }*
  %182 = alloca %ASTNode
  %183 = getelementptr inbounds %ASTNode, %ASTNode* %182, i32 0, i32 0
  store %nyx_string* %180, %nyx_string** %183
  %184 = getelementptr inbounds %ASTNode, %ASTNode* %182, i32 0, i32 1
  store { i64, i8* }* %181, { i64, i8* }** %184
  %185 = getelementptr inbounds %ASTNode, %ASTNode* %182, i32 0, i32 2
  store i64 %178, i64* %185
  %186 = getelementptr inbounds %ASTNode, %ASTNode* %182, i32 0, i32 3
  store i64 %179, i64* %186
  %187 = load %ASTNode, %ASTNode* %182
  %188 = alloca %ASTNode
  store %ASTNode %187, %ASTNode* %188
  %189 = getelementptr %ASTNode, %ASTNode* %188, i32 0, i32 1
  %190 = load { i64, i8* }*, { i64, i8* }** %189
  %191 = alloca { i64, i8* }*
  store { i64, i8* }* %190, { i64, i8* }** %191
  %192 = load { i64, i8* }*, { i64, i8* }** %191
  %193 = call i64 @nyx_array_length({ i64, i8* }* %192)
  %194 = icmp sge i64 %193, 2
  br i1 %194, label %then40, label %else41
then40:
  %195 = load %ASTNode, %ASTNode* %188
  %196 = call %ASTNode @licm_node_at(%ASTNode %195, i64 1)
  %197 = alloca %ASTNode
  store %ASTNode %196, %ASTNode* %197
  %198 = load %ASTNode, %ASTNode* %197
  %199 = load { i64, i8* }*, { i64, i8* }** %acc.ptr
  %200 = call i64 @licm_collect(%ASTNode %198, { i64, i8* }* %199)
  br label %merge42
else41:
  br label %merge42
merge42:
  %201 = load { i64, i8* }*, { i64, i8* }** %191
  %202 = call i64 @nyx_array_length({ i64, i8* }* %201)
  %203 = icmp sge i64 %202, 3
  br i1 %203, label %then43, label %else44
then43:
  %204 = load %ASTNode, %ASTNode* %188
  %205 = call %ASTNode @licm_node_at(%ASTNode %204, i64 2)
  %206 = alloca %ASTNode
  store %ASTNode %205, %ASTNode* %206
  %207 = load %ASTNode, %ASTNode* %206
  %208 = load { i64, i8* }*, { i64, i8* }** %acc.ptr
  %209 = call i64 @licm_collect(%ASTNode %207, { i64, i8* }* %208)
  br label %merge45
else44:
  br label %merge45
merge45:
  %210 = load i64, i64* %166
  %211 = add i64 %210, 1
  store i64 %211, i64* %166
  br label %while_cond37
while_end39:
  ret i64 0
else35:
  br label %merge36
merge36:
  %212 = load %nyx_string*, %nyx_string** %108
  %213 = getelementptr [6 x i8], [6 x i8]* @.str7, i32 0, i32 0
  %214 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str7.c, i8* %213)
  %215 = call i1 @nyx_string_equals(%nyx_string* %212, %nyx_string* %214)
  br i1 %215, label %then46, label %else47
then46:
  ret i64 0
else47:
  br label %merge48
merge48:
  %216 = load %ASTNode, %ASTNode* %node.ptr
  %217 = call { i64, i8* }* @licm_children(%ASTNode %216)
  %218 = alloca { i64, i8* }*
  store { i64, i8* }* %217, { i64, i8* }** %218
  %219 = alloca i64
  store i64 0, i64* %219
  %220 = call i8* @llvm.stacksave()
  br label %while_cond49
while_cond49:
  %221 = load i64, i64* %219
  %222 = load { i64, i8* }*, { i64, i8* }** %218
  %223 = call i64 @nyx_array_length({ i64, i8* }* %222)
  %224 = icmp slt i64 %221, %223
  br i1 %224, label %while_body50, label %while_end51
while_body50:
  call void @llvm.stackrestore(i8* %220)
  %225 = load { i64, i8* }*, { i64, i8* }** %218
  %226 = load i64, i64* %219
  %227 = call i64 @nyx_array_get({ i64, i8* }* %225, i64 %226)
  %228 = inttoptr i64 %227 to { i64, i8* }*
  %229 = alloca { i64, i8* }*
  store { i64, i8* }* %228, { i64, i8* }** %229
  %230 = load { i64, i8* }*, { i64, i8* }** %229
  %231 = call %ASTNode @licm_root_of({ i64, i8* }* %230)
  %232 = alloca %ASTNode
  store %ASTNode %231, %ASTNode* %232
  %233 = load %ASTNode, %ASTNode* %232
  %234 = load { i64, i8* }*, { i64, i8* }** %acc.ptr
  %235 = call i64 @licm_collect(%ASTNode %233, { i64, i8* }* %234)
  %236 = load i64, i64* %219
  %237 = add i64 %236, 1
  store i64 %237, i64* %219
  br label %while_cond49
while_end51:
  ret i64 0
}

define internal { i64, i8* }* @licm_children(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %238 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 0
  %239 = load %nyx_string*, %nyx_string** %238
  %240 = alloca %nyx_string*
  store %nyx_string* %239, %nyx_string** %240
  %241 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 1
  %242 = load { i64, i8* }*, { i64, i8* }** %241
  %243 = alloca { i64, i8* }*
  store { i64, i8* }* %242, { i64, i8* }** %243
  %244 = load { i64, i8* }*, { i64, i8* }** %243
  %245 = call i64 @nyx_array_length({ i64, i8* }* %244)
  %246 = alloca i64
  store i64 %245, i64* %246
  %247 = call { i64, i8* }* @nyx_array_new_ptr()
  %248 = alloca { i64, i8* }*
  store { i64, i8* }* %247, { i64, i8* }** %248
  %249 = alloca i1
  store i1 false, i1* %249
  %250 = load %nyx_string*, %nyx_string** %240
  %251 = getelementptr [6 x i8], [6 x i8]* @.str8, i32 0, i32 0
  %252 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str8.c, i8* %251)
  %253 = call i1 @nyx_string_equals(%nyx_string* %250, %nyx_string* %252)
  br i1 %253, label %sc_and_rhs52, label %sc_and_end53
sc_and_rhs52:
  %254 = load i64, i64* %246
  %255 = icmp sge i64 %254, 3
  store i1 %255, i1* %249
  br label %sc_and_end53
sc_and_end53:
  %256 = load i1, i1* %249
  br i1 %256, label %then54, label %else55
then54:
  %257 = load { i64, i8* }*, { i64, i8* }** %243
  %258 = call i64 @nyx_array_get({ i64, i8* }* %257, i64 1)
  %259 = inttoptr i64 %258 to { i64, i8* }*
  %260 = alloca { i64, i8* }*
  store { i64, i8* }* %259, { i64, i8* }** %260
  %261 = load { i64, i8* }*, { i64, i8* }** %243
  %262 = call i64 @nyx_array_get({ i64, i8* }* %261, i64 2)
  %263 = inttoptr i64 %262 to { i64, i8* }*
  %264 = alloca { i64, i8* }*
  store { i64, i8* }* %263, { i64, i8* }** %264
  %265 = load { i64, i8* }*, { i64, i8* }** %248
  %266 = load { i64, i8* }*, { i64, i8* }** %260
  %267 = ptrtoint { i64, i8* }* %266 to i64
  call void @nyx_array_push({ i64, i8* }* %265, i64 %267)
  %268 = load { i64, i8* }*, { i64, i8* }** %248
  %269 = load { i64, i8* }*, { i64, i8* }** %264
  %270 = ptrtoint { i64, i8* }* %269 to i64
  call void @nyx_array_push({ i64, i8* }* %268, i64 %270)
  %271 = load { i64, i8* }*, { i64, i8* }** %248
  ret { i64, i8* }* %271
else55:
  br label %merge56
merge56:
  %272 = alloca i1
  store i1 false, i1* %272
  %273 = load %nyx_string*, %nyx_string** %240
  %274 = getelementptr [5 x i8], [5 x i8]* @.str9, i32 0, i32 0
  %275 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str9.c, i8* %274)
  %276 = call i1 @nyx_string_equals(%nyx_string* %273, %nyx_string* %275)
  br i1 %276, label %sc_and_rhs57, label %sc_and_end58
sc_and_rhs57:
  %277 = load i64, i64* %246
  %278 = icmp sge i64 %277, 2
  store i1 %278, i1* %272
  br label %sc_and_end58
sc_and_end58:
  %279 = load i1, i1* %272
  br i1 %279, label %then59, label %else60
then59:
  %280 = load { i64, i8* }*, { i64, i8* }** %243
  %281 = call i64 @nyx_array_get({ i64, i8* }* %280, i64 1)
  %282 = inttoptr i64 %281 to { i64, i8* }*
  %283 = alloca { i64, i8* }*
  store { i64, i8* }* %282, { i64, i8* }** %283
  %284 = load { i64, i8* }*, { i64, i8* }** %248
  %285 = load { i64, i8* }*, { i64, i8* }** %283
  %286 = ptrtoint { i64, i8* }* %285 to i64
  call void @nyx_array_push({ i64, i8* }* %284, i64 %286)
  %287 = load { i64, i8* }*, { i64, i8* }** %248
  ret { i64, i8* }* %287
else60:
  br label %merge61
merge61:
  %288 = alloca i1
  store i1 false, i1* %288
  %289 = load %nyx_string*, %nyx_string** %240
  %290 = getelementptr [5 x i8], [5 x i8]* @.str10, i32 0, i32 0
  %291 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str10.c, i8* %290)
  %292 = call i1 @nyx_string_equals(%nyx_string* %289, %nyx_string* %291)
  br i1 %292, label %sc_and_rhs62, label %sc_and_end63
sc_and_rhs62:
  %293 = load i64, i64* %246
  %294 = icmp sge i64 %293, 2
  store i1 %294, i1* %288
  br label %sc_and_end63
sc_and_end63:
  %295 = load i1, i1* %288
  br i1 %295, label %then64, label %else65
then64:
  %296 = load { i64, i8* }*, { i64, i8* }** %243
  %297 = call i64 @nyx_array_get({ i64, i8* }* %296, i64 0)
  %298 = inttoptr i64 %297 to { i64, i8* }*
  %299 = alloca { i64, i8* }*
  store { i64, i8* }* %298, { i64, i8* }** %299
  %300 = load { i64, i8* }*, { i64, i8* }** %248
  %301 = load { i64, i8* }*, { i64, i8* }** %299
  %302 = ptrtoint { i64, i8* }* %301 to i64
  call void @nyx_array_push({ i64, i8* }* %300, i64 %302)
  %303 = load { i64, i8* }*, { i64, i8* }** %243
  %304 = call i64 @nyx_array_get({ i64, i8* }* %303, i64 1)
  %305 = inttoptr i64 %304 to { i64, i8* }*
  %306 = alloca { i64, i8* }*
  store { i64, i8* }* %305, { i64, i8* }** %306
  %307 = alloca i64
  store i64 0, i64* %307
  %308 = call i8* @llvm.stacksave()
  br label %while_cond67
while_cond67:
  %309 = load i64, i64* %307
  %310 = load { i64, i8* }*, { i64, i8* }** %306
  %311 = call i64 @nyx_array_length({ i64, i8* }* %310)
  %312 = icmp slt i64 %309, %311
  br i1 %312, label %while_body68, label %while_end69
while_body68:
  call void @llvm.stackrestore(i8* %308)
  %313 = load { i64, i8* }*, { i64, i8* }** %306
  %314 = load i64, i64* %307
  %315 = call i64 @nyx_array_get({ i64, i8* }* %313, i64 %314)
  %316 = inttoptr i64 %315 to { i64, i8* }*
  %317 = alloca { i64, i8* }*
  store { i64, i8* }* %316, { i64, i8* }** %317
  %318 = load { i64, i8* }*, { i64, i8* }** %248
  %319 = load { i64, i8* }*, { i64, i8* }** %317
  %320 = ptrtoint { i64, i8* }* %319 to i64
  call void @nyx_array_push({ i64, i8* }* %318, i64 %320)
  %321 = load i64, i64* %307
  %322 = add i64 %321, 1
  store i64 %322, i64* %307
  br label %while_cond67
while_end69:
  %323 = load { i64, i8* }*, { i64, i8* }** %248
  ret { i64, i8* }* %323
else65:
  br label %merge66
merge66:
  %324 = alloca i1
  store i1 false, i1* %324
  %325 = load %nyx_string*, %nyx_string** %240
  %326 = getelementptr [12 x i8], [12 x i8]* @.str11, i32 0, i32 0
  %327 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str11.c, i8* %326)
  %328 = call i1 @nyx_string_equals(%nyx_string* %325, %nyx_string* %327)
  br i1 %328, label %sc_and_rhs70, label %sc_and_end71
sc_and_rhs70:
  %329 = load i64, i64* %246
  %330 = icmp sge i64 %329, 3
  store i1 %330, i1* %324
  br label %sc_and_end71
sc_and_end71:
  %331 = load i1, i1* %324
  br i1 %331, label %then72, label %else73
then72:
  %332 = load { i64, i8* }*, { i64, i8* }** %243
  %333 = call i64 @nyx_array_get({ i64, i8* }* %332, i64 0)
  %334 = inttoptr i64 %333 to { i64, i8* }*
  %335 = alloca { i64, i8* }*
  store { i64, i8* }* %334, { i64, i8* }** %335
  %336 = load { i64, i8* }*, { i64, i8* }** %248
  %337 = load { i64, i8* }*, { i64, i8* }** %335
  %338 = ptrtoint { i64, i8* }* %337 to i64
  call void @nyx_array_push({ i64, i8* }* %336, i64 %338)
  %339 = load { i64, i8* }*, { i64, i8* }** %243
  %340 = call i64 @nyx_array_get({ i64, i8* }* %339, i64 2)
  %341 = inttoptr i64 %340 to { i64, i8* }*
  %342 = alloca { i64, i8* }*
  store { i64, i8* }* %341, { i64, i8* }** %342
  %343 = alloca i64
  store i64 0, i64* %343
  %344 = call i8* @llvm.stacksave()
  br label %while_cond75
while_cond75:
  %345 = load i64, i64* %343
  %346 = load { i64, i8* }*, { i64, i8* }** %342
  %347 = call i64 @nyx_array_length({ i64, i8* }* %346)
  %348 = icmp slt i64 %345, %347
  br i1 %348, label %while_body76, label %while_end77
while_body76:
  call void @llvm.stackrestore(i8* %344)
  %349 = load { i64, i8* }*, { i64, i8* }** %342
  %350 = load i64, i64* %343
  %351 = call i64 @nyx_array_get({ i64, i8* }* %349, i64 %350)
  %352 = inttoptr i64 %351 to { i64, i8* }*
  %353 = alloca { i64, i8* }*
  store { i64, i8* }* %352, { i64, i8* }** %353
  %354 = load { i64, i8* }*, { i64, i8* }** %248
  %355 = load { i64, i8* }*, { i64, i8* }** %353
  %356 = ptrtoint { i64, i8* }* %355 to i64
  call void @nyx_array_push({ i64, i8* }* %354, i64 %356)
  %357 = load i64, i64* %343
  %358 = add i64 %357, 1
  store i64 %358, i64* %343
  br label %while_cond75
while_end77:
  %359 = load { i64, i8* }*, { i64, i8* }** %248
  ret { i64, i8* }* %359
else73:
  br label %merge74
merge74:
  %360 = alloca i1
  store i1 false, i1* %360
  %361 = load %nyx_string*, %nyx_string** %240
  %362 = getelementptr [6 x i8], [6 x i8]* @.str12, i32 0, i32 0
  %363 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str12.c, i8* %362)
  %364 = call i1 @nyx_string_equals(%nyx_string* %361, %nyx_string* %363)
  br i1 %364, label %sc_and_rhs78, label %sc_and_end79
sc_and_rhs78:
  %365 = load i64, i64* %246
  %366 = icmp sge i64 %365, 2
  store i1 %366, i1* %360
  br label %sc_and_end79
sc_and_end79:
  %367 = load i1, i1* %360
  br i1 %367, label %then80, label %else81
then80:
  %368 = load { i64, i8* }*, { i64, i8* }** %243
  %369 = call i64 @nyx_array_get({ i64, i8* }* %368, i64 0)
  %370 = inttoptr i64 %369 to { i64, i8* }*
  %371 = alloca { i64, i8* }*
  store { i64, i8* }* %370, { i64, i8* }** %371
  %372 = load { i64, i8* }*, { i64, i8* }** %243
  %373 = call i64 @nyx_array_get({ i64, i8* }* %372, i64 1)
  %374 = inttoptr i64 %373 to { i64, i8* }*
  %375 = alloca { i64, i8* }*
  store { i64, i8* }* %374, { i64, i8* }** %375
  %376 = load { i64, i8* }*, { i64, i8* }** %248
  %377 = load { i64, i8* }*, { i64, i8* }** %371
  %378 = ptrtoint { i64, i8* }* %377 to i64
  call void @nyx_array_push({ i64, i8* }* %376, i64 %378)
  %379 = load { i64, i8* }*, { i64, i8* }** %248
  %380 = load { i64, i8* }*, { i64, i8* }** %375
  %381 = ptrtoint { i64, i8* }* %380 to i64
  call void @nyx_array_push({ i64, i8* }* %379, i64 %381)
  %382 = load { i64, i8* }*, { i64, i8* }** %248
  ret { i64, i8* }* %382
else81:
  br label %merge82
merge82:
  %383 = alloca i1
  store i1 false, i1* %383
  %384 = load %nyx_string*, %nyx_string** %240
  %385 = getelementptr [13 x i8], [13 x i8]* @.str13, i32 0, i32 0
  %386 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str13.c, i8* %385)
  %387 = call i1 @nyx_string_equals(%nyx_string* %384, %nyx_string* %386)
  br i1 %387, label %sc_and_rhs83, label %sc_and_end84
sc_and_rhs83:
  %388 = load i64, i64* %246
  %389 = icmp sge i64 %388, 1
  store i1 %389, i1* %383
  br label %sc_and_end84
sc_and_end84:
  %390 = load i1, i1* %383
  br i1 %390, label %then85, label %else86
then85:
  %391 = load { i64, i8* }*, { i64, i8* }** %243
  %392 = call i64 @nyx_array_get({ i64, i8* }* %391, i64 0)
  %393 = inttoptr i64 %392 to { i64, i8* }*
  %394 = alloca { i64, i8* }*
  store { i64, i8* }* %393, { i64, i8* }** %394
  %395 = load { i64, i8* }*, { i64, i8* }** %248
  %396 = load { i64, i8* }*, { i64, i8* }** %394
  %397 = ptrtoint { i64, i8* }* %396 to i64
  call void @nyx_array_push({ i64, i8* }* %395, i64 %397)
  %398 = load { i64, i8* }*, { i64, i8* }** %248
  ret { i64, i8* }* %398
else86:
  br label %merge87
merge87:
  %399 = alloca i1
  store i1 false, i1* %399
  %400 = load %nyx_string*, %nyx_string** %240
  %401 = getelementptr [6 x i8], [6 x i8]* @.str14, i32 0, i32 0
  %402 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str14.c, i8* %401)
  %403 = call i1 @nyx_string_equals(%nyx_string* %400, %nyx_string* %402)
  br i1 %403, label %sc_and_rhs88, label %sc_and_end89
sc_and_rhs88:
  %404 = load i64, i64* %246
  %405 = icmp sge i64 %404, 1
  store i1 %405, i1* %399
  br label %sc_and_end89
sc_and_end89:
  %406 = load i1, i1* %399
  br i1 %406, label %then90, label %else91
then90:
  %407 = load { i64, i8* }*, { i64, i8* }** %243
  %408 = call i64 @nyx_array_get({ i64, i8* }* %407, i64 0)
  %409 = inttoptr i64 %408 to { i64, i8* }*
  %410 = alloca { i64, i8* }*
  store { i64, i8* }* %409, { i64, i8* }** %410
  %411 = alloca i64
  store i64 0, i64* %411
  %412 = call i8* @llvm.stacksave()
  br label %while_cond93
while_cond93:
  %413 = load i64, i64* %411
  %414 = load { i64, i8* }*, { i64, i8* }** %410
  %415 = call i64 @nyx_array_length({ i64, i8* }* %414)
  %416 = icmp slt i64 %413, %415
  br i1 %416, label %while_body94, label %while_end95
while_body94:
  call void @llvm.stackrestore(i8* %412)
  %417 = load { i64, i8* }*, { i64, i8* }** %410
  %418 = load i64, i64* %411
  %419 = call i64 @nyx_array_get({ i64, i8* }* %417, i64 %418)
  %420 = inttoptr i64 %419 to { i64, i8* }*
  %421 = alloca { i64, i8* }*
  store { i64, i8* }* %420, { i64, i8* }** %421
  %422 = load { i64, i8* }*, { i64, i8* }** %248
  %423 = load { i64, i8* }*, { i64, i8* }** %421
  %424 = ptrtoint { i64, i8* }* %423 to i64
  call void @nyx_array_push({ i64, i8* }* %422, i64 %424)
  %425 = load i64, i64* %411
  %426 = add i64 %425, 1
  store i64 %426, i64* %411
  br label %while_cond93
while_end95:
  %427 = load { i64, i8* }*, { i64, i8* }** %248
  ret { i64, i8* }* %427
else91:
  br label %merge92
merge92:
  %428 = alloca i1
  store i1 false, i1* %428
  %429 = load %nyx_string*, %nyx_string** %240
  %430 = getelementptr [12 x i8], [12 x i8]* @.str15, i32 0, i32 0
  %431 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str15.c, i8* %430)
  %432 = call i1 @nyx_string_equals(%nyx_string* %429, %nyx_string* %431)
  br i1 %432, label %sc_and_rhs96, label %sc_and_end97
sc_and_rhs96:
  %433 = load i64, i64* %246
  %434 = icmp sge i64 %433, 2
  store i1 %434, i1* %428
  br label %sc_and_end97
sc_and_end97:
  %435 = load i1, i1* %428
  br i1 %435, label %then98, label %else99
then98:
  %436 = load { i64, i8* }*, { i64, i8* }** %243
  %437 = call i64 @nyx_array_get({ i64, i8* }* %436, i64 1)
  %438 = inttoptr i64 %437 to { i64, i8* }*
  %439 = alloca { i64, i8* }*
  store { i64, i8* }* %438, { i64, i8* }** %439
  %440 = alloca i64
  store i64 0, i64* %440
  %441 = call i8* @llvm.stacksave()
  br label %while_cond101
while_cond101:
  %442 = load i64, i64* %440
  %443 = load { i64, i8* }*, { i64, i8* }** %439
  %444 = call i64 @nyx_array_length({ i64, i8* }* %443)
  %445 = icmp slt i64 %442, %444
  br i1 %445, label %while_body102, label %while_end103
while_body102:
  call void @llvm.stackrestore(i8* %441)
  %446 = load { i64, i8* }*, { i64, i8* }** %439
  %447 = load i64, i64* %440
  %448 = call i64 @nyx_array_get({ i64, i8* }* %446, i64 %447)
  %449 = inttoptr i64 %448 to { i64, i8* }*
  %450 = alloca { i64, i8* }*
  store { i64, i8* }* %449, { i64, i8* }** %450
  %451 = load { i64, i8* }*, { i64, i8* }** %248
  %452 = load { i64, i8* }*, { i64, i8* }** %450
  %453 = ptrtoint { i64, i8* }* %452 to i64
  call void @nyx_array_push({ i64, i8* }* %451, i64 %453)
  %454 = load i64, i64* %440
  %455 = add i64 %454, 1
  store i64 %455, i64* %440
  br label %while_cond101
while_end103:
  %456 = load { i64, i8* }*, { i64, i8* }** %248
  ret { i64, i8* }* %456
else99:
  br label %merge100
merge100:
  %457 = alloca i1
  store i1 false, i1* %457
  %458 = load %nyx_string*, %nyx_string** %240
  %459 = getelementptr [3 x i8], [3 x i8]* @.str16, i32 0, i32 0
  %460 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str16.c, i8* %459)
  %461 = call i1 @nyx_string_equals(%nyx_string* %458, %nyx_string* %460)
  br i1 %461, label %sc_and_rhs104, label %sc_and_end105
sc_and_rhs104:
  %462 = load i64, i64* %246
  %463 = icmp sge i64 %462, 3
  store i1 %463, i1* %457
  br label %sc_and_end105
sc_and_end105:
  %464 = load i1, i1* %457
  br i1 %464, label %then106, label %else107
then106:
  %465 = load { i64, i8* }*, { i64, i8* }** %243
  %466 = call i64 @nyx_array_get({ i64, i8* }* %465, i64 0)
  %467 = inttoptr i64 %466 to { i64, i8* }*
  %468 = alloca { i64, i8* }*
  store { i64, i8* }* %467, { i64, i8* }** %468
  %469 = load { i64, i8* }*, { i64, i8* }** %243
  %470 = call i64 @nyx_array_get({ i64, i8* }* %469, i64 1)
  %471 = inttoptr i64 %470 to { i64, i8* }*
  %472 = alloca { i64, i8* }*
  store { i64, i8* }* %471, { i64, i8* }** %472
  %473 = load { i64, i8* }*, { i64, i8* }** %243
  %474 = call i64 @nyx_array_get({ i64, i8* }* %473, i64 2)
  %475 = inttoptr i64 %474 to { i64, i8* }*
  %476 = alloca { i64, i8* }*
  store { i64, i8* }* %475, { i64, i8* }** %476
  %477 = load { i64, i8* }*, { i64, i8* }** %248
  %478 = load { i64, i8* }*, { i64, i8* }** %468
  %479 = ptrtoint { i64, i8* }* %478 to i64
  call void @nyx_array_push({ i64, i8* }* %477, i64 %479)
  %480 = load { i64, i8* }*, { i64, i8* }** %248
  %481 = load { i64, i8* }*, { i64, i8* }** %472
  %482 = ptrtoint { i64, i8* }* %481 to i64
  call void @nyx_array_push({ i64, i8* }* %480, i64 %482)
  %483 = load { i64, i8* }*, { i64, i8* }** %248
  %484 = load { i64, i8* }*, { i64, i8* }** %476
  %485 = ptrtoint { i64, i8* }* %484 to i64
  call void @nyx_array_push({ i64, i8* }* %483, i64 %485)
  %486 = load { i64, i8* }*, { i64, i8* }** %248
  ret { i64, i8* }* %486
else107:
  br label %merge108
merge108:
  %487 = alloca i1
  store i1 false, i1* %487
  %488 = load %nyx_string*, %nyx_string** %240
  %489 = getelementptr [6 x i8], [6 x i8]* @.str17, i32 0, i32 0
  %490 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str17.c, i8* %489)
  %491 = call i1 @nyx_string_equals(%nyx_string* %488, %nyx_string* %490)
  br i1 %491, label %sc_and_rhs109, label %sc_and_end110
sc_and_rhs109:
  %492 = load i64, i64* %246
  %493 = icmp sge i64 %492, 2
  store i1 %493, i1* %487
  br label %sc_and_end110
sc_and_end110:
  %494 = load i1, i1* %487
  br i1 %494, label %then111, label %else112
then111:
  %495 = load { i64, i8* }*, { i64, i8* }** %243
  %496 = call i64 @nyx_array_get({ i64, i8* }* %495, i64 0)
  %497 = inttoptr i64 %496 to { i64, i8* }*
  %498 = alloca { i64, i8* }*
  store { i64, i8* }* %497, { i64, i8* }** %498
  %499 = load { i64, i8* }*, { i64, i8* }** %243
  %500 = call i64 @nyx_array_get({ i64, i8* }* %499, i64 1)
  %501 = inttoptr i64 %500 to { i64, i8* }*
  %502 = alloca { i64, i8* }*
  store { i64, i8* }* %501, { i64, i8* }** %502
  %503 = load { i64, i8* }*, { i64, i8* }** %248
  %504 = load { i64, i8* }*, { i64, i8* }** %498
  %505 = ptrtoint { i64, i8* }* %504 to i64
  call void @nyx_array_push({ i64, i8* }* %503, i64 %505)
  %506 = load { i64, i8* }*, { i64, i8* }** %248
  %507 = load { i64, i8* }*, { i64, i8* }** %502
  %508 = ptrtoint { i64, i8* }* %507 to i64
  call void @nyx_array_push({ i64, i8* }* %506, i64 %508)
  %509 = load { i64, i8* }*, { i64, i8* }** %248
  ret { i64, i8* }* %509
else112:
  br label %merge113
merge113:
  %510 = alloca i1
  store i1 false, i1* %510
  %511 = load %nyx_string*, %nyx_string** %240
  %512 = getelementptr [4 x i8], [4 x i8]* @.str18, i32 0, i32 0
  %513 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str18.c, i8* %512)
  %514 = call i1 @nyx_string_equals(%nyx_string* %511, %nyx_string* %513)
  br i1 %514, label %sc_and_rhs114, label %sc_and_end115
sc_and_rhs114:
  %515 = load i64, i64* %246
  %516 = icmp sge i64 %515, 3
  store i1 %516, i1* %510
  br label %sc_and_end115
sc_and_end115:
  %517 = load i1, i1* %510
  br i1 %517, label %then116, label %else117
then116:
  %518 = load { i64, i8* }*, { i64, i8* }** %243
  %519 = call i64 @nyx_array_get({ i64, i8* }* %518, i64 1)
  %520 = inttoptr i64 %519 to { i64, i8* }*
  %521 = alloca { i64, i8* }*
  store { i64, i8* }* %520, { i64, i8* }** %521
  %522 = load { i64, i8* }*, { i64, i8* }** %243
  %523 = call i64 @nyx_array_get({ i64, i8* }* %522, i64 2)
  %524 = inttoptr i64 %523 to { i64, i8* }*
  %525 = alloca { i64, i8* }*
  store { i64, i8* }* %524, { i64, i8* }** %525
  %526 = load { i64, i8* }*, { i64, i8* }** %248
  %527 = load { i64, i8* }*, { i64, i8* }** %521
  %528 = ptrtoint { i64, i8* }* %527 to i64
  call void @nyx_array_push({ i64, i8* }* %526, i64 %528)
  %529 = load { i64, i8* }*, { i64, i8* }** %248
  %530 = load { i64, i8* }*, { i64, i8* }** %525
  %531 = ptrtoint { i64, i8* }* %530 to i64
  call void @nyx_array_push({ i64, i8* }* %529, i64 %531)
  %532 = load { i64, i8* }*, { i64, i8* }** %248
  ret { i64, i8* }* %532
else117:
  br label %merge118
merge118:
  %533 = alloca i1
  store i1 false, i1* %533
  %534 = load %nyx_string*, %nyx_string** %240
  %535 = getelementptr [10 x i8], [10 x i8]* @.str19, i32 0, i32 0
  %536 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str19.c, i8* %535)
  %537 = call i1 @nyx_string_equals(%nyx_string* %534, %nyx_string* %536)
  br i1 %537, label %sc_and_rhs119, label %sc_and_end120
sc_and_rhs119:
  %538 = load i64, i64* %246
  %539 = icmp sge i64 %538, 3
  store i1 %539, i1* %533
  br label %sc_and_end120
sc_and_end120:
  %540 = load i1, i1* %533
  br i1 %540, label %then121, label %else122
then121:
  %541 = load { i64, i8* }*, { i64, i8* }** %243
  %542 = call i64 @nyx_array_get({ i64, i8* }* %541, i64 1)
  %543 = inttoptr i64 %542 to { i64, i8* }*
  %544 = alloca { i64, i8* }*
  store { i64, i8* }* %543, { i64, i8* }** %544
  %545 = load { i64, i8* }*, { i64, i8* }** %243
  %546 = call i64 @nyx_array_get({ i64, i8* }* %545, i64 2)
  %547 = inttoptr i64 %546 to { i64, i8* }*
  %548 = alloca { i64, i8* }*
  store { i64, i8* }* %547, { i64, i8* }** %548
  %549 = load { i64, i8* }*, { i64, i8* }** %248
  %550 = load { i64, i8* }*, { i64, i8* }** %544
  %551 = ptrtoint { i64, i8* }* %550 to i64
  call void @nyx_array_push({ i64, i8* }* %549, i64 %551)
  %552 = load { i64, i8* }*, { i64, i8* }** %248
  %553 = load { i64, i8* }*, { i64, i8* }** %548
  %554 = ptrtoint { i64, i8* }* %553 to i64
  call void @nyx_array_push({ i64, i8* }* %552, i64 %554)
  %555 = load { i64, i8* }*, { i64, i8* }** %248
  ret { i64, i8* }* %555
else122:
  br label %merge123
merge123:
  %556 = alloca i1
  store i1 false, i1* %556
  %557 = load %nyx_string*, %nyx_string** %240
  %558 = getelementptr [6 x i8], [6 x i8]* @.str20, i32 0, i32 0
  %559 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str20.c, i8* %558)
  %560 = call i1 @nyx_string_equals(%nyx_string* %557, %nyx_string* %559)
  br i1 %560, label %sc_and_rhs124, label %sc_and_end125
sc_and_rhs124:
  %561 = load i64, i64* %246
  %562 = icmp sge i64 %561, 1
  store i1 %562, i1* %556
  br label %sc_and_end125
sc_and_end125:
  %563 = load i1, i1* %556
  br i1 %563, label %then126, label %else127
then126:
  %564 = load { i64, i8* }*, { i64, i8* }** %243
  %565 = call i64 @nyx_array_get({ i64, i8* }* %564, i64 0)
  %566 = inttoptr i64 %565 to { i64, i8* }*
  %567 = alloca { i64, i8* }*
  store { i64, i8* }* %566, { i64, i8* }** %567
  %568 = alloca i64
  store i64 0, i64* %568
  %569 = call i8* @llvm.stacksave()
  br label %while_cond129
while_cond129:
  %570 = load i64, i64* %568
  %571 = load { i64, i8* }*, { i64, i8* }** %567
  %572 = call i64 @nyx_array_length({ i64, i8* }* %571)
  %573 = icmp slt i64 %570, %572
  br i1 %573, label %while_body130, label %while_end131
while_body130:
  call void @llvm.stackrestore(i8* %569)
  %574 = load { i64, i8* }*, { i64, i8* }** %567
  %575 = load i64, i64* %568
  %576 = call i64 @nyx_array_get({ i64, i8* }* %574, i64 %575)
  %577 = inttoptr i64 %576 to { i64, i8* }*
  %578 = alloca { i64, i8* }*
  store { i64, i8* }* %577, { i64, i8* }** %578
  %579 = load { i64, i8* }*, { i64, i8* }** %248
  %580 = load { i64, i8* }*, { i64, i8* }** %578
  %581 = ptrtoint { i64, i8* }* %580 to i64
  call void @nyx_array_push({ i64, i8* }* %579, i64 %581)
  %582 = load i64, i64* %568
  %583 = add i64 %582, 1
  store i64 %583, i64* %568
  br label %while_cond129
while_end131:
  %584 = load { i64, i8* }*, { i64, i8* }** %248
  ret { i64, i8* }* %584
else127:
  br label %merge128
merge128:
  %585 = alloca i1
  store i1 false, i1* %585
  %586 = load %nyx_string*, %nyx_string** %240
  %587 = getelementptr [4 x i8], [4 x i8]* @.str21, i32 0, i32 0
  %588 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str21.c, i8* %587)
  %589 = call i1 @nyx_string_equals(%nyx_string* %586, %nyx_string* %588)
  br i1 %589, label %sc_and_rhs132, label %sc_and_end133
sc_and_rhs132:
  %590 = load i64, i64* %246
  %591 = icmp sge i64 %590, 3
  store i1 %591, i1* %585
  br label %sc_and_end133
sc_and_end133:
  %592 = load i1, i1* %585
  br i1 %592, label %then134, label %else135
then134:
  %593 = load { i64, i8* }*, { i64, i8* }** %243
  %594 = call i64 @nyx_array_get({ i64, i8* }* %593, i64 2)
  %595 = inttoptr i64 %594 to { i64, i8* }*
  %596 = alloca { i64, i8* }*
  store { i64, i8* }* %595, { i64, i8* }** %596
  %597 = load { i64, i8* }*, { i64, i8* }** %248
  %598 = load { i64, i8* }*, { i64, i8* }** %596
  %599 = ptrtoint { i64, i8* }* %598 to i64
  call void @nyx_array_push({ i64, i8* }* %597, i64 %599)
  %600 = load { i64, i8* }*, { i64, i8* }** %248
  ret { i64, i8* }* %600
else135:
  br label %merge136
merge136:
  %601 = alloca i1
  store i1 false, i1* %601
  %602 = load %nyx_string*, %nyx_string** %240
  %603 = getelementptr [22 x i8], [22 x i8]* @.str22, i32 0, i32 0
  %604 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str22.c, i8* %603)
  %605 = call i1 @nyx_string_equals(%nyx_string* %602, %nyx_string* %604)
  br i1 %605, label %sc_and_rhs137, label %sc_and_end138
sc_and_rhs137:
  %606 = load i64, i64* %246
  %607 = icmp sge i64 %606, 3
  store i1 %607, i1* %601
  br label %sc_and_end138
sc_and_end138:
  %608 = load i1, i1* %601
  br i1 %608, label %then139, label %else140
then139:
  %609 = load { i64, i8* }*, { i64, i8* }** %243
  %610 = call i64 @nyx_array_get({ i64, i8* }* %609, i64 2)
  %611 = inttoptr i64 %610 to { i64, i8* }*
  %612 = alloca { i64, i8* }*
  store { i64, i8* }* %611, { i64, i8* }** %612
  %613 = load { i64, i8* }*, { i64, i8* }** %248
  %614 = load { i64, i8* }*, { i64, i8* }** %612
  %615 = ptrtoint { i64, i8* }* %614 to i64
  call void @nyx_array_push({ i64, i8* }* %613, i64 %615)
  %616 = load { i64, i8* }*, { i64, i8* }** %248
  ret { i64, i8* }* %616
else140:
  br label %merge141
merge141:
  %617 = alloca i1
  store i1 false, i1* %617
  %618 = load %nyx_string*, %nyx_string** %240
  %619 = getelementptr [7 x i8], [7 x i8]* @.str23, i32 0, i32 0
  %620 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str23.c, i8* %619)
  %621 = call i1 @nyx_string_equals(%nyx_string* %618, %nyx_string* %620)
  br i1 %621, label %sc_and_rhs142, label %sc_and_end143
sc_and_rhs142:
  %622 = load i64, i64* %246
  %623 = icmp sge i64 %622, 2
  store i1 %623, i1* %617
  br label %sc_and_end143
sc_and_end143:
  %624 = load i1, i1* %617
  br i1 %624, label %then144, label %else145
then144:
  %625 = load { i64, i8* }*, { i64, i8* }** %243
  %626 = call i64 @nyx_array_get({ i64, i8* }* %625, i64 1)
  %627 = inttoptr i64 %626 to { i64, i8* }*
  %628 = alloca { i64, i8* }*
  store { i64, i8* }* %627, { i64, i8* }** %628
  %629 = load { i64, i8* }*, { i64, i8* }** %248
  %630 = load { i64, i8* }*, { i64, i8* }** %628
  %631 = ptrtoint { i64, i8* }* %630 to i64
  call void @nyx_array_push({ i64, i8* }* %629, i64 %631)
  %632 = load { i64, i8* }*, { i64, i8* }** %248
  ret { i64, i8* }* %632
else145:
  br label %merge146
merge146:
  %633 = alloca i1
  store i1 false, i1* %633
  %634 = load %nyx_string*, %nyx_string** %240
  %635 = getelementptr [13 x i8], [13 x i8]* @.str24, i32 0, i32 0
  %636 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str24.c, i8* %635)
  %637 = call i1 @nyx_string_equals(%nyx_string* %634, %nyx_string* %636)
  br i1 %637, label %sc_and_rhs147, label %sc_and_end148
sc_and_rhs147:
  %638 = load i64, i64* %246
  %639 = icmp sge i64 %638, 3
  store i1 %639, i1* %633
  br label %sc_and_end148
sc_and_end148:
  %640 = load i1, i1* %633
  br i1 %640, label %then149, label %else150
then149:
  %641 = load { i64, i8* }*, { i64, i8* }** %243
  %642 = call i64 @nyx_array_get({ i64, i8* }* %641, i64 0)
  %643 = inttoptr i64 %642 to { i64, i8* }*
  %644 = alloca { i64, i8* }*
  store { i64, i8* }* %643, { i64, i8* }** %644
  %645 = load { i64, i8* }*, { i64, i8* }** %243
  %646 = call i64 @nyx_array_get({ i64, i8* }* %645, i64 1)
  %647 = inttoptr i64 %646 to { i64, i8* }*
  %648 = alloca { i64, i8* }*
  store { i64, i8* }* %647, { i64, i8* }** %648
  %649 = load { i64, i8* }*, { i64, i8* }** %243
  %650 = call i64 @nyx_array_get({ i64, i8* }* %649, i64 2)
  %651 = inttoptr i64 %650 to { i64, i8* }*
  %652 = alloca { i64, i8* }*
  store { i64, i8* }* %651, { i64, i8* }** %652
  %653 = load { i64, i8* }*, { i64, i8* }** %248
  %654 = load { i64, i8* }*, { i64, i8* }** %644
  %655 = ptrtoint { i64, i8* }* %654 to i64
  call void @nyx_array_push({ i64, i8* }* %653, i64 %655)
  %656 = load { i64, i8* }*, { i64, i8* }** %248
  %657 = load { i64, i8* }*, { i64, i8* }** %648
  %658 = ptrtoint { i64, i8* }* %657 to i64
  call void @nyx_array_push({ i64, i8* }* %656, i64 %658)
  %659 = load { i64, i8* }*, { i64, i8* }** %248
  %660 = load { i64, i8* }*, { i64, i8* }** %652
  %661 = ptrtoint { i64, i8* }* %660 to i64
  call void @nyx_array_push({ i64, i8* }* %659, i64 %661)
  %662 = load { i64, i8* }*, { i64, i8* }** %248
  ret { i64, i8* }* %662
else150:
  br label %merge151
merge151:
  %663 = alloca i1
  store i1 false, i1* %663
  %664 = load %nyx_string*, %nyx_string** %240
  %665 = getelementptr [13 x i8], [13 x i8]* @.str25, i32 0, i32 0
  %666 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str25.c, i8* %665)
  %667 = call i1 @nyx_string_equals(%nyx_string* %664, %nyx_string* %666)
  br i1 %667, label %sc_and_rhs152, label %sc_and_end153
sc_and_rhs152:
  %668 = load i64, i64* %246
  %669 = icmp sge i64 %668, 3
  store i1 %669, i1* %663
  br label %sc_and_end153
sc_and_end153:
  %670 = load i1, i1* %663
  br i1 %670, label %then154, label %else155
then154:
  %671 = load { i64, i8* }*, { i64, i8* }** %243
  %672 = call i64 @nyx_array_get({ i64, i8* }* %671, i64 0)
  %673 = inttoptr i64 %672 to { i64, i8* }*
  %674 = alloca { i64, i8* }*
  store { i64, i8* }* %673, { i64, i8* }** %674
  %675 = load { i64, i8* }*, { i64, i8* }** %243
  %676 = call i64 @nyx_array_get({ i64, i8* }* %675, i64 2)
  %677 = inttoptr i64 %676 to { i64, i8* }*
  %678 = alloca { i64, i8* }*
  store { i64, i8* }* %677, { i64, i8* }** %678
  %679 = load { i64, i8* }*, { i64, i8* }** %248
  %680 = load { i64, i8* }*, { i64, i8* }** %674
  %681 = ptrtoint { i64, i8* }* %680 to i64
  call void @nyx_array_push({ i64, i8* }* %679, i64 %681)
  %682 = load { i64, i8* }*, { i64, i8* }** %248
  %683 = load { i64, i8* }*, { i64, i8* }** %678
  %684 = ptrtoint { i64, i8* }* %683 to i64
  call void @nyx_array_push({ i64, i8* }* %682, i64 %684)
  %685 = load { i64, i8* }*, { i64, i8* }** %248
  ret { i64, i8* }* %685
else155:
  br label %merge156
merge156:
  %686 = alloca i1
  store i1 false, i1* %686
  %687 = load %nyx_string*, %nyx_string** %240
  %688 = getelementptr [13 x i8], [13 x i8]* @.str26, i32 0, i32 0
  %689 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str26.c, i8* %688)
  %690 = call i1 @nyx_string_equals(%nyx_string* %687, %nyx_string* %689)
  br i1 %690, label %sc_and_rhs157, label %sc_and_end158
sc_and_rhs157:
  %691 = load i64, i64* %246
  %692 = icmp sge i64 %691, 2
  store i1 %692, i1* %686
  br label %sc_and_end158
sc_and_end158:
  %693 = load i1, i1* %686
  br i1 %693, label %then159, label %else160
then159:
  %694 = load { i64, i8* }*, { i64, i8* }** %243
  %695 = call i64 @nyx_array_get({ i64, i8* }* %694, i64 0)
  %696 = inttoptr i64 %695 to { i64, i8* }*
  %697 = alloca { i64, i8* }*
  store { i64, i8* }* %696, { i64, i8* }** %697
  %698 = load { i64, i8* }*, { i64, i8* }** %243
  %699 = call i64 @nyx_array_get({ i64, i8* }* %698, i64 1)
  %700 = inttoptr i64 %699 to { i64, i8* }*
  %701 = alloca { i64, i8* }*
  store { i64, i8* }* %700, { i64, i8* }** %701
  %702 = load { i64, i8* }*, { i64, i8* }** %248
  %703 = load { i64, i8* }*, { i64, i8* }** %697
  %704 = ptrtoint { i64, i8* }* %703 to i64
  call void @nyx_array_push({ i64, i8* }* %702, i64 %704)
  %705 = load { i64, i8* }*, { i64, i8* }** %248
  %706 = load { i64, i8* }*, { i64, i8* }** %701
  %707 = ptrtoint { i64, i8* }* %706 to i64
  call void @nyx_array_push({ i64, i8* }* %705, i64 %707)
  %708 = load { i64, i8* }*, { i64, i8* }** %248
  ret { i64, i8* }* %708
else160:
  br label %merge161
merge161:
  %709 = alloca i1
  store i1 false, i1* %709
  %710 = load %nyx_string*, %nyx_string** %240
  %711 = getelementptr [7 x i8], [7 x i8]* @.str27, i32 0, i32 0
  %712 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str27.c, i8* %711)
  %713 = call i1 @nyx_string_equals(%nyx_string* %710, %nyx_string* %712)
  br i1 %713, label %sc_and_rhs162, label %sc_and_end163
sc_and_rhs162:
  %714 = load i64, i64* %246
  %715 = icmp sge i64 %714, 1
  store i1 %715, i1* %709
  br label %sc_and_end163
sc_and_end163:
  %716 = load i1, i1* %709
  br i1 %716, label %then164, label %else165
then164:
  %717 = load { i64, i8* }*, { i64, i8* }** %243
  %718 = call i64 @nyx_array_get({ i64, i8* }* %717, i64 0)
  %719 = inttoptr i64 %718 to { i64, i8* }*
  %720 = alloca { i64, i8* }*
  store { i64, i8* }* %719, { i64, i8* }** %720
  %721 = load { i64, i8* }*, { i64, i8* }** %248
  %722 = load { i64, i8* }*, { i64, i8* }** %720
  %723 = ptrtoint { i64, i8* }* %722 to i64
  call void @nyx_array_push({ i64, i8* }* %721, i64 %723)
  %724 = load { i64, i8* }*, { i64, i8* }** %248
  ret { i64, i8* }* %724
else165:
  br label %merge166
merge166:
  %725 = alloca i1
  store i1 false, i1* %725
  %726 = load %nyx_string*, %nyx_string** %240
  %727 = getelementptr [12 x i8], [12 x i8]* @.str28, i32 0, i32 0
  %728 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str28.c, i8* %727)
  %729 = call i1 @nyx_string_equals(%nyx_string* %726, %nyx_string* %728)
  br i1 %729, label %sc_and_rhs167, label %sc_and_end168
sc_and_rhs167:
  %730 = load i64, i64* %246
  %731 = icmp sge i64 %730, 2
  store i1 %731, i1* %725
  br label %sc_and_end168
sc_and_end168:
  %732 = load i1, i1* %725
  br i1 %732, label %then169, label %else170
then169:
  %733 = load { i64, i8* }*, { i64, i8* }** %243
  %734 = call i64 @nyx_array_get({ i64, i8* }* %733, i64 1)
  %735 = inttoptr i64 %734 to { i64, i8* }*
  %736 = alloca { i64, i8* }*
  store { i64, i8* }* %735, { i64, i8* }** %736
  %737 = alloca i64
  store i64 0, i64* %737
  %738 = call i8* @llvm.stacksave()
  br label %while_cond172
while_cond172:
  %739 = load i64, i64* %737
  %740 = load { i64, i8* }*, { i64, i8* }** %736
  %741 = call i64 @nyx_array_length({ i64, i8* }* %740)
  %742 = icmp slt i64 %739, %741
  br i1 %742, label %while_body173, label %while_end174
while_body173:
  call void @llvm.stackrestore(i8* %738)
  %743 = load { i64, i8* }*, { i64, i8* }** %736
  %744 = load i64, i64* %737
  %745 = call i64 @nyx_array_get({ i64, i8* }* %743, i64 %744)
  %746 = inttoptr i64 %745 to { i64, i8* }*
  %747 = alloca { i64, i8* }*
  store { i64, i8* }* %746, { i64, i8* }** %747
  %748 = load { i64, i8* }*, { i64, i8* }** %747
  %749 = call i64 @nyx_array_length({ i64, i8* }* %748)
  %750 = icmp sge i64 %749, 2
  br i1 %750, label %then175, label %else176
then175:
  %751 = load { i64, i8* }*, { i64, i8* }** %747
  %752 = call i64 @nyx_array_get({ i64, i8* }* %751, i64 1)
  %753 = inttoptr i64 %752 to { i64, i8* }*
  %754 = alloca { i64, i8* }*
  store { i64, i8* }* %753, { i64, i8* }** %754
  %755 = load { i64, i8* }*, { i64, i8* }** %248
  %756 = load { i64, i8* }*, { i64, i8* }** %754
  %757 = ptrtoint { i64, i8* }* %756 to i64
  call void @nyx_array_push({ i64, i8* }* %755, i64 %757)
  br label %merge177
else176:
  br label %merge177
merge177:
  %758 = load i64, i64* %737
  %759 = add i64 %758, 1
  store i64 %759, i64* %737
  br label %while_cond172
while_end174:
  %760 = load { i64, i8* }*, { i64, i8* }** %248
  ret { i64, i8* }* %760
else170:
  br label %merge171
merge171:
  %761 = alloca i1
  store i1 false, i1* %761
  %762 = load %nyx_string*, %nyx_string** %240
  %763 = getelementptr [7 x i8], [7 x i8]* @.str29, i32 0, i32 0
  %764 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str29.c, i8* %763)
  %765 = call i1 @nyx_string_equals(%nyx_string* %762, %nyx_string* %764)
  br i1 %765, label %sc_and_rhs178, label %sc_and_end179
sc_and_rhs178:
  %766 = load i64, i64* %246
  %767 = icmp sge i64 %766, 1
  store i1 %767, i1* %761
  br label %sc_and_end179
sc_and_end179:
  %768 = load i1, i1* %761
  br i1 %768, label %then180, label %else181
then180:
  %769 = load { i64, i8* }*, { i64, i8* }** %243
  %770 = call i64 @nyx_array_get({ i64, i8* }* %769, i64 0)
  %771 = inttoptr i64 %770 to { i64, i8* }*
  %772 = alloca { i64, i8* }*
  store { i64, i8* }* %771, { i64, i8* }** %772
  %773 = load { i64, i8* }*, { i64, i8* }** %248
  %774 = load { i64, i8* }*, { i64, i8* }** %772
  %775 = ptrtoint { i64, i8* }* %774 to i64
  call void @nyx_array_push({ i64, i8* }* %773, i64 %775)
  %776 = load { i64, i8* }*, { i64, i8* }** %248
  ret { i64, i8* }* %776
else181:
  br label %merge182
merge182:
  %777 = alloca i1
  store i1 false, i1* %777
  %778 = load %nyx_string*, %nyx_string** %240
  %779 = getelementptr [5 x i8], [5 x i8]* @.str30, i32 0, i32 0
  %780 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str30.c, i8* %779)
  %781 = call i1 @nyx_string_equals(%nyx_string* %778, %nyx_string* %780)
  br i1 %781, label %sc_and_rhs183, label %sc_and_end184
sc_and_rhs183:
  %782 = load i64, i64* %246
  %783 = icmp sge i64 %782, 1
  store i1 %783, i1* %777
  br label %sc_and_end184
sc_and_end184:
  %784 = load i1, i1* %777
  br i1 %784, label %then185, label %else186
then185:
  %785 = load { i64, i8* }*, { i64, i8* }** %243
  %786 = call i64 @nyx_array_get({ i64, i8* }* %785, i64 0)
  %787 = inttoptr i64 %786 to { i64, i8* }*
  %788 = alloca { i64, i8* }*
  store { i64, i8* }* %787, { i64, i8* }** %788
  %789 = load { i64, i8* }*, { i64, i8* }** %248
  %790 = load { i64, i8* }*, { i64, i8* }** %788
  %791 = ptrtoint { i64, i8* }* %790 to i64
  call void @nyx_array_push({ i64, i8* }* %789, i64 %791)
  %792 = load { i64, i8* }*, { i64, i8* }** %248
  ret { i64, i8* }* %792
else186:
  br label %merge187
merge187:
  %793 = alloca i1
  store i1 false, i1* %793
  %794 = load %nyx_string*, %nyx_string** %240
  %795 = getelementptr [6 x i8], [6 x i8]* @.str31, i32 0, i32 0
  %796 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str31.c, i8* %795)
  %797 = call i1 @nyx_string_equals(%nyx_string* %794, %nyx_string* %796)
  br i1 %797, label %sc_and_rhs188, label %sc_and_end189
sc_and_rhs188:
  %798 = load i64, i64* %246
  %799 = icmp sge i64 %798, 2
  store i1 %799, i1* %793
  br label %sc_and_end189
sc_and_end189:
  %800 = load i1, i1* %793
  br i1 %800, label %then190, label %else191
then190:
  %801 = load { i64, i8* }*, { i64, i8* }** %243
  %802 = call i64 @nyx_array_get({ i64, i8* }* %801, i64 0)
  %803 = inttoptr i64 %802 to { i64, i8* }*
  %804 = alloca { i64, i8* }*
  store { i64, i8* }* %803, { i64, i8* }** %804
  %805 = load { i64, i8* }*, { i64, i8* }** %243
  %806 = call i64 @nyx_array_get({ i64, i8* }* %805, i64 1)
  %807 = inttoptr i64 %806 to { i64, i8* }*
  %808 = alloca { i64, i8* }*
  store { i64, i8* }* %807, { i64, i8* }** %808
  %809 = load { i64, i8* }*, { i64, i8* }** %248
  %810 = load { i64, i8* }*, { i64, i8* }** %804
  %811 = ptrtoint { i64, i8* }* %810 to i64
  call void @nyx_array_push({ i64, i8* }* %809, i64 %811)
  %812 = load { i64, i8* }*, { i64, i8* }** %248
  %813 = load { i64, i8* }*, { i64, i8* }** %808
  %814 = ptrtoint { i64, i8* }* %813 to i64
  call void @nyx_array_push({ i64, i8* }* %812, i64 %814)
  %815 = load { i64, i8* }*, { i64, i8* }** %248
  ret { i64, i8* }* %815
else191:
  br label %merge192
merge192:
  %816 = load { i64, i8* }*, { i64, i8* }** %248
  ret { i64, i8* }* %816
}

define internal { i64, i8* }* @licm_rewrite(
{ i64, i8* }* %node.param, { i64, i8* }* %litmap.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %litmap.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %litmap.param, { i64, i8* }** %litmap.ptr
  %817 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %818 = call %ASTNode @licm_root_of({ i64, i8* }* %817)
  %819 = alloca %ASTNode
  store %ASTNode %818, %ASTNode* %819
  %820 = getelementptr %ASTNode, %ASTNode* %819, i32 0, i32 0
  %821 = load %nyx_string*, %nyx_string** %820
  %822 = alloca %nyx_string*
  store %nyx_string* %821, %nyx_string** %822
  %823 = getelementptr %ASTNode, %ASTNode* %819, i32 0, i32 1
  %824 = load { i64, i8* }*, { i64, i8* }** %823
  %825 = alloca { i64, i8* }*
  store { i64, i8* }* %824, { i64, i8* }** %825
  %826 = load %nyx_string*, %nyx_string** %822
  %827 = getelementptr [9 x i8], [9 x i8]* @.str32, i32 0, i32 0
  %828 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str32.c, i8* %827)
  %829 = call i1 @nyx_string_equals(%nyx_string* %826, %nyx_string* %828)
  br i1 %829, label %then193, label %else194
then193:
  %830 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  ret { i64, i8* }* %830
else194:
  br label %merge195
merge195:
  %831 = load %nyx_string*, %nyx_string** %822
  %832 = getelementptr [9 x i8], [9 x i8]* @.str33, i32 0, i32 0
  %833 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str33.c, i8* %832)
  %834 = call i1 @nyx_string_equals(%nyx_string* %831, %nyx_string* %833)
  br i1 %834, label %then196, label %else197
then196:
  %835 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  ret { i64, i8* }* %835
else197:
  br label %merge198
merge198:
  %836 = load %nyx_string*, %nyx_string** %822
  %837 = getelementptr [7 x i8], [7 x i8]* @.str34, i32 0, i32 0
  %838 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str34.c, i8* %837)
  %839 = call i1 @nyx_string_equals(%nyx_string* %836, %nyx_string* %838)
  br i1 %839, label %then199, label %else200
then199:
  %840 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  ret { i64, i8* }* %840
else200:
  br label %merge201
merge201:
  %841 = load %nyx_string*, %nyx_string** %822
  %842 = getelementptr [8 x i8], [8 x i8]* @.str35, i32 0, i32 0
  %843 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str35.c, i8* %842)
  %844 = call i1 @nyx_string_equals(%nyx_string* %841, %nyx_string* %843)
  br i1 %844, label %then202, label %else203
then202:
  %845 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  ret { i64, i8* }* %845
else203:
  br label %merge204
merge204:
  %846 = load %nyx_string*, %nyx_string** %822
  %847 = getelementptr [6 x i8], [6 x i8]* @.str36, i32 0, i32 0
  %848 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str36.c, i8* %847)
  %849 = call i1 @nyx_string_equals(%nyx_string* %846, %nyx_string* %848)
  br i1 %849, label %then205, label %else206
then205:
  %850 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  ret { i64, i8* }* %850
else206:
  br label %merge207
merge207:
  %851 = alloca i1
  store i1 false, i1* %851
  %852 = load %nyx_string*, %nyx_string** %822
  %853 = getelementptr [7 x i8], [7 x i8]* @.str37, i32 0, i32 0
  %854 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str37.c, i8* %853)
  %855 = call i1 @nyx_string_equals(%nyx_string* %852, %nyx_string* %854)
  br i1 %855, label %sc_and_rhs208, label %sc_and_end209
sc_and_rhs208:
  %856 = load { i64, i8* }*, { i64, i8* }** %825
  %857 = call i64 @nyx_array_length({ i64, i8* }* %856)
  %858 = icmp sge i64 %857, 1
  store i1 %858, i1* %851
  br label %sc_and_end209
sc_and_end209:
  %859 = load i1, i1* %851
  br i1 %859, label %then210, label %else211
then210:
  %860 = load { i64, i8* }*, { i64, i8* }** %825
  %861 = call i64 @nyx_array_get_checked({ i64, i8* }* %860, i64 0, i64 2)
  %862 = inttoptr i64 %861 to %nyx_string*
  %863 = alloca %nyx_string*
  store %nyx_string* %862, %nyx_string** %863
  %864 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %865 = load %nyx_string*, %nyx_string** %863
  %866 = call %nyx_string* @licm_lookup({ i64, i8* }* %864, %nyx_string* %865)
  %867 = alloca %nyx_string*
  store %nyx_string* %866, %nyx_string** %867
  %868 = load %nyx_string*, %nyx_string** %867
  %869 = getelementptr [1 x i8], [1 x i8]* @.str38, i32 0, i32 0
  %870 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str38.c, i8* %869)
  %871 = call i1 @nyx_string_equals(%nyx_string* %868, %nyx_string* %870)
  %872 = xor i1 %871, true
  br i1 %872, label %then213, label %else214
then213:
  %873 = getelementptr [11 x i8], [11 x i8]* @.str39, i32 0, i32 0
  %874 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str39.c, i8* %873)
  %875 = call { i64, i8* }* @nyx_array_new_ptr()
  %876 = load %nyx_string*, %nyx_string** %867
  %877 = ptrtoint %nyx_string* %876 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %875, i64 %877, i64 2)
  %878 = call { i64, i8* }* @licm_make(%nyx_string* %874, { i64, i8* }* %875)
  ret { i64, i8* }* %878
else214:
  br label %merge215
merge215:
  %879 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  ret { i64, i8* }* %879
else211:
  br label %merge212
merge212:
  %880 = alloca i1
  store i1 false, i1* %880
  %881 = load %nyx_string*, %nyx_string** %822
  %882 = getelementptr [6 x i8], [6 x i8]* @.str40, i32 0, i32 0
  %883 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str40.c, i8* %882)
  %884 = call i1 @nyx_string_equals(%nyx_string* %881, %nyx_string* %883)
  br i1 %884, label %sc_and_rhs216, label %sc_and_end217
sc_and_rhs216:
  %885 = load { i64, i8* }*, { i64, i8* }** %825
  %886 = call i64 @nyx_array_length({ i64, i8* }* %885)
  %887 = icmp sge i64 %886, 2
  store i1 %887, i1* %880
  br label %sc_and_end217
sc_and_end217:
  %888 = load i1, i1* %880
  br i1 %888, label %then218, label %else219
then218:
  %889 = load { i64, i8* }*, { i64, i8* }** %825
  %890 = call i64 @nyx_array_get({ i64, i8* }* %889, i64 0)
  %891 = inttoptr i64 %890 to { i64, i8* }*
  %892 = alloca { i64, i8* }*
  store { i64, i8* }* %891, { i64, i8* }** %892
  %893 = load { i64, i8* }*, { i64, i8* }** %825
  %894 = call i64 @nyx_array_get({ i64, i8* }* %893, i64 1)
  %895 = inttoptr i64 %894 to { i64, i8* }*
  %896 = alloca { i64, i8* }*
  store { i64, i8* }* %895, { i64, i8* }** %896
  %897 = call { i64, i8* }* @nyx_array_new_ptr()
  %898 = alloca { i64, i8* }*
  store { i64, i8* }* %897, { i64, i8* }** %898
  %899 = alloca i64
  store i64 0, i64* %899
  %900 = getelementptr [10 x i8], [10 x i8]* @.str41, i32 0, i32 0
  %901 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str41.c, i8* %900)
  %902 = alloca %nyx_string*
  store %nyx_string* %901, %nyx_string** %902
  %903 = call i8* @llvm.stacksave()
  br label %while_cond221
while_cond221:
  %904 = load i64, i64* %899
  %905 = load { i64, i8* }*, { i64, i8* }** %896
  %906 = call i64 @nyx_array_length({ i64, i8* }* %905)
  %907 = icmp slt i64 %904, %906
  br i1 %907, label %while_body222, label %while_end223
while_body222:
  call void @llvm.stackrestore(i8* %903)
  %908 = load { i64, i8* }*, { i64, i8* }** %896
  %909 = load i64, i64* %899
  %910 = call i64 @nyx_array_get({ i64, i8* }* %908, i64 %909)
  %911 = inttoptr i64 %910 to { i64, i8* }*
  %912 = alloca { i64, i8* }*
  store { i64, i8* }* %911, { i64, i8* }** %912
  %913 = load { i64, i8* }*, { i64, i8* }** %912
  %914 = call %ASTNode @licm_root_of({ i64, i8* }* %913)
  %915 = alloca %ASTNode
  store %ASTNode %914, %ASTNode* %915
  %916 = getelementptr %ASTNode, %ASTNode* %915, i32 0, i32 1
  %917 = load { i64, i8* }*, { i64, i8* }** %916
  %918 = alloca { i64, i8* }*
  store { i64, i8* }* %917, { i64, i8* }** %918
  %919 = load { i64, i8* }*, { i64, i8* }** %918
  %920 = call i64 @nyx_array_length({ i64, i8* }* %919)
  %921 = icmp sge i64 %920, 3
  br i1 %921, label %then224, label %else225
then224:
  %922 = load { i64, i8* }*, { i64, i8* }** %918
  %923 = call i64 @nyx_array_get({ i64, i8* }* %922, i64 0)
  %924 = alloca i64
  store i64 %923, i64* %924
  %925 = load { i64, i8* }*, { i64, i8* }** %918
  %926 = call i64 @nyx_array_get({ i64, i8* }* %925, i64 1)
  %927 = inttoptr i64 %926 to { i64, i8* }*
  %928 = alloca { i64, i8* }*
  store { i64, i8* }* %927, { i64, i8* }** %928
  %929 = load { i64, i8* }*, { i64, i8* }** %918
  %930 = call i64 @nyx_array_get({ i64, i8* }* %929, i64 2)
  %931 = inttoptr i64 %930 to { i64, i8* }*
  %932 = alloca { i64, i8* }*
  store { i64, i8* }* %931, { i64, i8* }** %932
  %933 = load { i64, i8* }*, { i64, i8* }** %928
  %934 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %935 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %933, { i64, i8* }* %934)
  %936 = alloca { i64, i8* }*
  store { i64, i8* }* %935, { i64, i8* }** %936
  %937 = load { i64, i8* }*, { i64, i8* }** %932
  %938 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %939 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %937, { i64, i8* }* %938)
  %940 = alloca { i64, i8* }*
  store { i64, i8* }* %939, { i64, i8* }** %940
  %941 = load { i64, i8* }*, { i64, i8* }** %898
  %942 = load %nyx_string*, %nyx_string** %902
  %943 = call { i64, i8* }* @nyx_array_new_ptr()
  %944 = load i64, i64* %924
  call void @nyx_array_push({ i64, i8* }* %943, i64 %944)
  %945 = load { i64, i8* }*, { i64, i8* }** %936
  %946 = bitcast { i64, i8* }* %945 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %943, i8* %946)
  %947 = load { i64, i8* }*, { i64, i8* }** %940
  %948 = bitcast { i64, i8* }* %947 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %943, i8* %948)
  %949 = call { i64, i8* }* @licm_make(%nyx_string* %942, { i64, i8* }* %943)
  %950 = ptrtoint { i64, i8* }* %949 to i64
  call void @nyx_array_push({ i64, i8* }* %941, i64 %950)
  br label %merge226
else225:
  %951 = load { i64, i8* }*, { i64, i8* }** %898
  %952 = load { i64, i8* }*, { i64, i8* }** %912
  %953 = ptrtoint { i64, i8* }* %952 to i64
  call void @nyx_array_push({ i64, i8* }* %951, i64 %953)
  br label %merge226
merge226:
  %954 = load i64, i64* %899
  %955 = add i64 %954, 1
  store i64 %955, i64* %899
  br label %while_cond221
while_end223:
  %956 = getelementptr [6 x i8], [6 x i8]* @.str42, i32 0, i32 0
  %957 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str42.c, i8* %956)
  %958 = call { i64, i8* }* @nyx_array_new_ptr()
  %959 = load { i64, i8* }*, { i64, i8* }** %892
  %960 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %961 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %959, { i64, i8* }* %960)
  %962 = bitcast { i64, i8* }* %961 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %958, i8* %962)
  %963 = load { i64, i8* }*, { i64, i8* }** %898
  %964 = bitcast { i64, i8* }* %963 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %958, i8* %964)
  %965 = call { i64, i8* }* @licm_make(%nyx_string* %957, { i64, i8* }* %958)
  ret { i64, i8* }* %965
else219:
  br label %merge220
merge220:
  %966 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %967 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %968 = call { i64, i8* }* @licm_rebuild_children({ i64, i8* }* %966, { i64, i8* }* %967)
  ret { i64, i8* }* %968
}

define internal { i64, i8* }* @licm_rebuild_children(
{ i64, i8* }* %node.param, { i64, i8* }* %litmap.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %litmap.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %litmap.param, { i64, i8* }** %litmap.ptr
  %969 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %970 = call %ASTNode @licm_root_of({ i64, i8* }* %969)
  %971 = alloca %ASTNode
  store %ASTNode %970, %ASTNode* %971
  %972 = getelementptr %ASTNode, %ASTNode* %971, i32 0, i32 0
  %973 = load %nyx_string*, %nyx_string** %972
  %974 = alloca %nyx_string*
  store %nyx_string* %973, %nyx_string** %974
  %975 = getelementptr %ASTNode, %ASTNode* %971, i32 0, i32 1
  %976 = load { i64, i8* }*, { i64, i8* }** %975
  %977 = alloca { i64, i8* }*
  store { i64, i8* }* %976, { i64, i8* }** %977
  %978 = load { i64, i8* }*, { i64, i8* }** %977
  %979 = call i64 @nyx_array_length({ i64, i8* }* %978)
  %980 = alloca i64
  store i64 %979, i64* %980
  %981 = alloca i1
  store i1 false, i1* %981
  %982 = load %nyx_string*, %nyx_string** %974
  %983 = getelementptr [6 x i8], [6 x i8]* @.str43, i32 0, i32 0
  %984 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str43.c, i8* %983)
  %985 = call i1 @nyx_string_equals(%nyx_string* %982, %nyx_string* %984)
  br i1 %985, label %sc_and_rhs227, label %sc_and_end228
sc_and_rhs227:
  %986 = load i64, i64* %980
  %987 = icmp sge i64 %986, 3
  store i1 %987, i1* %981
  br label %sc_and_end228
sc_and_end228:
  %988 = load i1, i1* %981
  br i1 %988, label %then229, label %else230
then229:
  %989 = load { i64, i8* }*, { i64, i8* }** %977
  %990 = call i64 @nyx_array_get_checked({ i64, i8* }* %989, i64 0, i64 2)
  %991 = inttoptr i64 %990 to %nyx_string*
  %992 = alloca %nyx_string*
  store %nyx_string* %991, %nyx_string** %992
  %993 = load { i64, i8* }*, { i64, i8* }** %977
  %994 = call i64 @nyx_array_get({ i64, i8* }* %993, i64 1)
  %995 = inttoptr i64 %994 to { i64, i8* }*
  %996 = alloca { i64, i8* }*
  store { i64, i8* }* %995, { i64, i8* }** %996
  %997 = load { i64, i8* }*, { i64, i8* }** %977
  %998 = call i64 @nyx_array_get({ i64, i8* }* %997, i64 2)
  %999 = inttoptr i64 %998 to { i64, i8* }*
  %1000 = alloca { i64, i8* }*
  store { i64, i8* }* %999, { i64, i8* }** %1000
  %1001 = load %nyx_string*, %nyx_string** %974
  %1002 = call { i64, i8* }* @nyx_array_new_ptr()
  %1003 = load %nyx_string*, %nyx_string** %992
  %1004 = ptrtoint %nyx_string* %1003 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1002, i64 %1004, i64 2)
  %1005 = load { i64, i8* }*, { i64, i8* }** %996
  %1006 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1007 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1005, { i64, i8* }* %1006)
  %1008 = bitcast { i64, i8* }* %1007 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1002, i8* %1008)
  %1009 = load { i64, i8* }*, { i64, i8* }** %1000
  %1010 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1011 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1009, { i64, i8* }* %1010)
  %1012 = bitcast { i64, i8* }* %1011 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1002, i8* %1012)
  %1013 = call { i64, i8* }* @licm_make(%nyx_string* %1001, { i64, i8* }* %1002)
  ret { i64, i8* }* %1013
else230:
  br label %merge231
merge231:
  %1014 = alloca i1
  store i1 false, i1* %1014
  %1015 = load %nyx_string*, %nyx_string** %974
  %1016 = getelementptr [5 x i8], [5 x i8]* @.str44, i32 0, i32 0
  %1017 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str44.c, i8* %1016)
  %1018 = call i1 @nyx_string_equals(%nyx_string* %1015, %nyx_string* %1017)
  br i1 %1018, label %sc_and_rhs232, label %sc_and_end233
sc_and_rhs232:
  %1019 = load i64, i64* %980
  %1020 = icmp sge i64 %1019, 2
  store i1 %1020, i1* %1014
  br label %sc_and_end233
sc_and_end233:
  %1021 = load i1, i1* %1014
  br i1 %1021, label %then234, label %else235
then234:
  %1022 = load { i64, i8* }*, { i64, i8* }** %977
  %1023 = call i64 @nyx_array_get_checked({ i64, i8* }* %1022, i64 0, i64 2)
  %1024 = inttoptr i64 %1023 to %nyx_string*
  %1025 = alloca %nyx_string*
  store %nyx_string* %1024, %nyx_string** %1025
  %1026 = load { i64, i8* }*, { i64, i8* }** %977
  %1027 = call i64 @nyx_array_get({ i64, i8* }* %1026, i64 1)
  %1028 = inttoptr i64 %1027 to { i64, i8* }*
  %1029 = alloca { i64, i8* }*
  store { i64, i8* }* %1028, { i64, i8* }** %1029
  %1030 = load %nyx_string*, %nyx_string** %974
  %1031 = call { i64, i8* }* @nyx_array_new_ptr()
  %1032 = load %nyx_string*, %nyx_string** %1025
  %1033 = ptrtoint %nyx_string* %1032 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1031, i64 %1033, i64 2)
  %1034 = load { i64, i8* }*, { i64, i8* }** %1029
  %1035 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1036 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1034, { i64, i8* }* %1035)
  %1037 = bitcast { i64, i8* }* %1036 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1031, i8* %1037)
  %1038 = call { i64, i8* }* @licm_make(%nyx_string* %1030, { i64, i8* }* %1031)
  ret { i64, i8* }* %1038
else235:
  br label %merge236
merge236:
  %1039 = alloca i1
  store i1 false, i1* %1039
  %1040 = load %nyx_string*, %nyx_string** %974
  %1041 = getelementptr [5 x i8], [5 x i8]* @.str45, i32 0, i32 0
  %1042 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str45.c, i8* %1041)
  %1043 = call i1 @nyx_string_equals(%nyx_string* %1040, %nyx_string* %1042)
  br i1 %1043, label %sc_and_rhs237, label %sc_and_end238
sc_and_rhs237:
  %1044 = load i64, i64* %980
  %1045 = icmp sge i64 %1044, 2
  store i1 %1045, i1* %1039
  br label %sc_and_end238
sc_and_end238:
  %1046 = load i1, i1* %1039
  br i1 %1046, label %then239, label %else240
then239:
  %1047 = load { i64, i8* }*, { i64, i8* }** %977
  %1048 = call i64 @nyx_array_get({ i64, i8* }* %1047, i64 0)
  %1049 = inttoptr i64 %1048 to { i64, i8* }*
  %1050 = alloca { i64, i8* }*
  store { i64, i8* }* %1049, { i64, i8* }** %1050
  %1051 = load { i64, i8* }*, { i64, i8* }** %977
  %1052 = call i64 @nyx_array_get({ i64, i8* }* %1051, i64 1)
  %1053 = inttoptr i64 %1052 to { i64, i8* }*
  %1054 = alloca { i64, i8* }*
  store { i64, i8* }* %1053, { i64, i8* }** %1054
  %1055 = call { i64, i8* }* @nyx_array_new_ptr()
  %1056 = alloca { i64, i8* }*
  store { i64, i8* }* %1055, { i64, i8* }** %1056
  %1057 = alloca i64
  store i64 0, i64* %1057
  %1058 = call i8* @llvm.stacksave()
  br label %while_cond242
while_cond242:
  %1059 = load i64, i64* %1057
  %1060 = load { i64, i8* }*, { i64, i8* }** %1054
  %1061 = call i64 @nyx_array_length({ i64, i8* }* %1060)
  %1062 = icmp slt i64 %1059, %1061
  br i1 %1062, label %while_body243, label %while_end244
while_body243:
  call void @llvm.stackrestore(i8* %1058)
  %1063 = load { i64, i8* }*, { i64, i8* }** %1054
  %1064 = load i64, i64* %1057
  %1065 = call i64 @nyx_array_get({ i64, i8* }* %1063, i64 %1064)
  %1066 = inttoptr i64 %1065 to { i64, i8* }*
  %1067 = alloca { i64, i8* }*
  store { i64, i8* }* %1066, { i64, i8* }** %1067
  %1068 = load { i64, i8* }*, { i64, i8* }** %1056
  %1069 = load { i64, i8* }*, { i64, i8* }** %1067
  %1070 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1071 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1069, { i64, i8* }* %1070)
  %1072 = ptrtoint { i64, i8* }* %1071 to i64
  call void @nyx_array_push({ i64, i8* }* %1068, i64 %1072)
  %1073 = load i64, i64* %1057
  %1074 = add i64 %1073, 1
  store i64 %1074, i64* %1057
  br label %while_cond242
while_end244:
  %1075 = load %nyx_string*, %nyx_string** %974
  %1076 = call { i64, i8* }* @nyx_array_new_ptr()
  %1077 = load { i64, i8* }*, { i64, i8* }** %1050
  %1078 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1079 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1077, { i64, i8* }* %1078)
  %1080 = bitcast { i64, i8* }* %1079 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1076, i8* %1080)
  %1081 = load { i64, i8* }*, { i64, i8* }** %1056
  %1082 = bitcast { i64, i8* }* %1081 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1076, i8* %1082)
  %1083 = call { i64, i8* }* @licm_make(%nyx_string* %1075, { i64, i8* }* %1076)
  ret { i64, i8* }* %1083
else240:
  br label %merge241
merge241:
  %1084 = alloca i1
  store i1 false, i1* %1084
  %1085 = load %nyx_string*, %nyx_string** %974
  %1086 = getelementptr [12 x i8], [12 x i8]* @.str46, i32 0, i32 0
  %1087 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str46.c, i8* %1086)
  %1088 = call i1 @nyx_string_equals(%nyx_string* %1085, %nyx_string* %1087)
  br i1 %1088, label %sc_and_rhs245, label %sc_and_end246
sc_and_rhs245:
  %1089 = load i64, i64* %980
  %1090 = icmp sge i64 %1089, 3
  store i1 %1090, i1* %1084
  br label %sc_and_end246
sc_and_end246:
  %1091 = load i1, i1* %1084
  br i1 %1091, label %then247, label %else248
then247:
  %1092 = load { i64, i8* }*, { i64, i8* }** %977
  %1093 = call i64 @nyx_array_get({ i64, i8* }* %1092, i64 0)
  %1094 = inttoptr i64 %1093 to { i64, i8* }*
  %1095 = alloca { i64, i8* }*
  store { i64, i8* }* %1094, { i64, i8* }** %1095
  %1096 = load { i64, i8* }*, { i64, i8* }** %977
  %1097 = call i64 @nyx_array_get_checked({ i64, i8* }* %1096, i64 1, i64 2)
  %1098 = inttoptr i64 %1097 to %nyx_string*
  %1099 = alloca %nyx_string*
  store %nyx_string* %1098, %nyx_string** %1099
  %1100 = load { i64, i8* }*, { i64, i8* }** %977
  %1101 = call i64 @nyx_array_get({ i64, i8* }* %1100, i64 2)
  %1102 = inttoptr i64 %1101 to { i64, i8* }*
  %1103 = alloca { i64, i8* }*
  store { i64, i8* }* %1102, { i64, i8* }** %1103
  %1104 = call { i64, i8* }* @nyx_array_new_ptr()
  %1105 = alloca { i64, i8* }*
  store { i64, i8* }* %1104, { i64, i8* }** %1105
  %1106 = alloca i64
  store i64 0, i64* %1106
  %1107 = call i8* @llvm.stacksave()
  br label %while_cond250
while_cond250:
  %1108 = load i64, i64* %1106
  %1109 = load { i64, i8* }*, { i64, i8* }** %1103
  %1110 = call i64 @nyx_array_length({ i64, i8* }* %1109)
  %1111 = icmp slt i64 %1108, %1110
  br i1 %1111, label %while_body251, label %while_end252
while_body251:
  call void @llvm.stackrestore(i8* %1107)
  %1112 = load { i64, i8* }*, { i64, i8* }** %1103
  %1113 = load i64, i64* %1106
  %1114 = call i64 @nyx_array_get({ i64, i8* }* %1112, i64 %1113)
  %1115 = inttoptr i64 %1114 to { i64, i8* }*
  %1116 = alloca { i64, i8* }*
  store { i64, i8* }* %1115, { i64, i8* }** %1116
  %1117 = load { i64, i8* }*, { i64, i8* }** %1105
  %1118 = load { i64, i8* }*, { i64, i8* }** %1116
  %1119 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1120 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1118, { i64, i8* }* %1119)
  %1121 = ptrtoint { i64, i8* }* %1120 to i64
  call void @nyx_array_push({ i64, i8* }* %1117, i64 %1121)
  %1122 = load i64, i64* %1106
  %1123 = add i64 %1122, 1
  store i64 %1123, i64* %1106
  br label %while_cond250
while_end252:
  %1124 = load %nyx_string*, %nyx_string** %974
  %1125 = call { i64, i8* }* @nyx_array_new_ptr()
  %1126 = load { i64, i8* }*, { i64, i8* }** %1095
  %1127 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1128 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1126, { i64, i8* }* %1127)
  %1129 = bitcast { i64, i8* }* %1128 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1125, i8* %1129)
  %1130 = load %nyx_string*, %nyx_string** %1099
  %1131 = ptrtoint %nyx_string* %1130 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1125, i64 %1131, i64 2)
  %1132 = load { i64, i8* }*, { i64, i8* }** %1105
  %1133 = bitcast { i64, i8* }* %1132 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1125, i8* %1133)
  %1134 = call { i64, i8* }* @licm_make(%nyx_string* %1124, { i64, i8* }* %1125)
  ret { i64, i8* }* %1134
else248:
  br label %merge249
merge249:
  %1135 = alloca i1
  store i1 false, i1* %1135
  %1136 = load %nyx_string*, %nyx_string** %974
  %1137 = getelementptr [6 x i8], [6 x i8]* @.str47, i32 0, i32 0
  %1138 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str47.c, i8* %1137)
  %1139 = call i1 @nyx_string_equals(%nyx_string* %1136, %nyx_string* %1138)
  br i1 %1139, label %sc_and_rhs253, label %sc_and_end254
sc_and_rhs253:
  %1140 = load i64, i64* %980
  %1141 = icmp sge i64 %1140, 2
  store i1 %1141, i1* %1135
  br label %sc_and_end254
sc_and_end254:
  %1142 = load i1, i1* %1135
  br i1 %1142, label %then255, label %else256
then255:
  %1143 = load { i64, i8* }*, { i64, i8* }** %977
  %1144 = call i64 @nyx_array_get({ i64, i8* }* %1143, i64 0)
  %1145 = inttoptr i64 %1144 to { i64, i8* }*
  %1146 = alloca { i64, i8* }*
  store { i64, i8* }* %1145, { i64, i8* }** %1146
  %1147 = load { i64, i8* }*, { i64, i8* }** %977
  %1148 = call i64 @nyx_array_get({ i64, i8* }* %1147, i64 1)
  %1149 = inttoptr i64 %1148 to { i64, i8* }*
  %1150 = alloca { i64, i8* }*
  store { i64, i8* }* %1149, { i64, i8* }** %1150
  %1151 = load %nyx_string*, %nyx_string** %974
  %1152 = call { i64, i8* }* @nyx_array_new_ptr()
  %1153 = load { i64, i8* }*, { i64, i8* }** %1146
  %1154 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1155 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1153, { i64, i8* }* %1154)
  %1156 = bitcast { i64, i8* }* %1155 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1152, i8* %1156)
  %1157 = load { i64, i8* }*, { i64, i8* }** %1150
  %1158 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1159 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1157, { i64, i8* }* %1158)
  %1160 = bitcast { i64, i8* }* %1159 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1152, i8* %1160)
  %1161 = call { i64, i8* }* @licm_make(%nyx_string* %1151, { i64, i8* }* %1152)
  ret { i64, i8* }* %1161
else256:
  br label %merge257
merge257:
  %1162 = alloca i1
  store i1 false, i1* %1162
  %1163 = load %nyx_string*, %nyx_string** %974
  %1164 = getelementptr [13 x i8], [13 x i8]* @.str48, i32 0, i32 0
  %1165 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str48.c, i8* %1164)
  %1166 = call i1 @nyx_string_equals(%nyx_string* %1163, %nyx_string* %1165)
  br i1 %1166, label %sc_and_rhs258, label %sc_and_end259
sc_and_rhs258:
  %1167 = load i64, i64* %980
  %1168 = icmp sge i64 %1167, 2
  store i1 %1168, i1* %1162
  br label %sc_and_end259
sc_and_end259:
  %1169 = load i1, i1* %1162
  br i1 %1169, label %then260, label %else261
then260:
  %1170 = load { i64, i8* }*, { i64, i8* }** %977
  %1171 = call i64 @nyx_array_get({ i64, i8* }* %1170, i64 0)
  %1172 = inttoptr i64 %1171 to { i64, i8* }*
  %1173 = alloca { i64, i8* }*
  store { i64, i8* }* %1172, { i64, i8* }** %1173
  %1174 = load { i64, i8* }*, { i64, i8* }** %977
  %1175 = call i64 @nyx_array_get_checked({ i64, i8* }* %1174, i64 1, i64 2)
  %1176 = inttoptr i64 %1175 to %nyx_string*
  %1177 = alloca %nyx_string*
  store %nyx_string* %1176, %nyx_string** %1177
  %1178 = load %nyx_string*, %nyx_string** %974
  %1179 = call { i64, i8* }* @nyx_array_new_ptr()
  %1180 = load { i64, i8* }*, { i64, i8* }** %1173
  %1181 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1182 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1180, { i64, i8* }* %1181)
  %1183 = bitcast { i64, i8* }* %1182 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1179, i8* %1183)
  %1184 = load %nyx_string*, %nyx_string** %1177
  %1185 = ptrtoint %nyx_string* %1184 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1179, i64 %1185, i64 2)
  %1186 = call { i64, i8* }* @licm_make(%nyx_string* %1178, { i64, i8* }* %1179)
  ret { i64, i8* }* %1186
else261:
  br label %merge262
merge262:
  %1187 = alloca i1
  store i1 false, i1* %1187
  %1188 = load %nyx_string*, %nyx_string** %974
  %1189 = getelementptr [6 x i8], [6 x i8]* @.str49, i32 0, i32 0
  %1190 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str49.c, i8* %1189)
  %1191 = call i1 @nyx_string_equals(%nyx_string* %1188, %nyx_string* %1190)
  br i1 %1191, label %sc_and_rhs263, label %sc_and_end264
sc_and_rhs263:
  %1192 = load i64, i64* %980
  %1193 = icmp sge i64 %1192, 1
  store i1 %1193, i1* %1187
  br label %sc_and_end264
sc_and_end264:
  %1194 = load i1, i1* %1187
  br i1 %1194, label %then265, label %else266
then265:
  %1195 = load { i64, i8* }*, { i64, i8* }** %977
  %1196 = call i64 @nyx_array_get({ i64, i8* }* %1195, i64 0)
  %1197 = inttoptr i64 %1196 to { i64, i8* }*
  %1198 = alloca { i64, i8* }*
  store { i64, i8* }* %1197, { i64, i8* }** %1198
  %1199 = call { i64, i8* }* @nyx_array_new_ptr()
  %1200 = alloca { i64, i8* }*
  store { i64, i8* }* %1199, { i64, i8* }** %1200
  %1201 = alloca i64
  store i64 0, i64* %1201
  %1202 = call i8* @llvm.stacksave()
  br label %while_cond268
while_cond268:
  %1203 = load i64, i64* %1201
  %1204 = load { i64, i8* }*, { i64, i8* }** %1198
  %1205 = call i64 @nyx_array_length({ i64, i8* }* %1204)
  %1206 = icmp slt i64 %1203, %1205
  br i1 %1206, label %while_body269, label %while_end270
while_body269:
  call void @llvm.stackrestore(i8* %1202)
  %1207 = load { i64, i8* }*, { i64, i8* }** %1198
  %1208 = load i64, i64* %1201
  %1209 = call i64 @nyx_array_get({ i64, i8* }* %1207, i64 %1208)
  %1210 = inttoptr i64 %1209 to { i64, i8* }*
  %1211 = alloca { i64, i8* }*
  store { i64, i8* }* %1210, { i64, i8* }** %1211
  %1212 = load { i64, i8* }*, { i64, i8* }** %1200
  %1213 = load { i64, i8* }*, { i64, i8* }** %1211
  %1214 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1215 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1213, { i64, i8* }* %1214)
  %1216 = ptrtoint { i64, i8* }* %1215 to i64
  call void @nyx_array_push({ i64, i8* }* %1212, i64 %1216)
  %1217 = load i64, i64* %1201
  %1218 = add i64 %1217, 1
  store i64 %1218, i64* %1201
  br label %while_cond268
while_end270:
  %1219 = load %nyx_string*, %nyx_string** %974
  %1220 = call { i64, i8* }* @nyx_array_new_ptr()
  %1221 = load { i64, i8* }*, { i64, i8* }** %1200
  %1222 = bitcast { i64, i8* }* %1221 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1220, i8* %1222)
  %1223 = call { i64, i8* }* @licm_make(%nyx_string* %1219, { i64, i8* }* %1220)
  ret { i64, i8* }* %1223
else266:
  br label %merge267
merge267:
  %1224 = alloca i1
  store i1 false, i1* %1224
  %1225 = load %nyx_string*, %nyx_string** %974
  %1226 = getelementptr [12 x i8], [12 x i8]* @.str50, i32 0, i32 0
  %1227 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str50.c, i8* %1226)
  %1228 = call i1 @nyx_string_equals(%nyx_string* %1225, %nyx_string* %1227)
  br i1 %1228, label %sc_and_rhs271, label %sc_and_end272
sc_and_rhs271:
  %1229 = load i64, i64* %980
  %1230 = icmp sge i64 %1229, 2
  store i1 %1230, i1* %1224
  br label %sc_and_end272
sc_and_end272:
  %1231 = load i1, i1* %1224
  br i1 %1231, label %then273, label %else274
then273:
  %1232 = load { i64, i8* }*, { i64, i8* }** %977
  %1233 = call i64 @nyx_array_get({ i64, i8* }* %1232, i64 0)
  %1234 = inttoptr i64 %1233 to { i64, i8* }*
  %1235 = alloca { i64, i8* }*
  store { i64, i8* }* %1234, { i64, i8* }** %1235
  %1236 = load { i64, i8* }*, { i64, i8* }** %977
  %1237 = call i64 @nyx_array_get({ i64, i8* }* %1236, i64 1)
  %1238 = inttoptr i64 %1237 to { i64, i8* }*
  %1239 = alloca { i64, i8* }*
  store { i64, i8* }* %1238, { i64, i8* }** %1239
  %1240 = call { i64, i8* }* @nyx_array_new_ptr()
  %1241 = alloca { i64, i8* }*
  store { i64, i8* }* %1240, { i64, i8* }** %1241
  %1242 = alloca i64
  store i64 0, i64* %1242
  %1243 = call i8* @llvm.stacksave()
  br label %while_cond276
while_cond276:
  %1244 = load i64, i64* %1242
  %1245 = load { i64, i8* }*, { i64, i8* }** %1239
  %1246 = call i64 @nyx_array_length({ i64, i8* }* %1245)
  %1247 = icmp slt i64 %1244, %1246
  br i1 %1247, label %while_body277, label %while_end278
while_body277:
  call void @llvm.stackrestore(i8* %1243)
  %1248 = load { i64, i8* }*, { i64, i8* }** %1239
  %1249 = load i64, i64* %1242
  %1250 = call i64 @nyx_array_get({ i64, i8* }* %1248, i64 %1249)
  %1251 = inttoptr i64 %1250 to { i64, i8* }*
  %1252 = alloca { i64, i8* }*
  store { i64, i8* }* %1251, { i64, i8* }** %1252
  %1253 = load { i64, i8* }*, { i64, i8* }** %1241
  %1254 = load { i64, i8* }*, { i64, i8* }** %1252
  %1255 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1256 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1254, { i64, i8* }* %1255)
  %1257 = ptrtoint { i64, i8* }* %1256 to i64
  call void @nyx_array_push({ i64, i8* }* %1253, i64 %1257)
  %1258 = load i64, i64* %1242
  %1259 = add i64 %1258, 1
  store i64 %1259, i64* %1242
  br label %while_cond276
while_end278:
  %1260 = load %nyx_string*, %nyx_string** %974
  %1261 = call { i64, i8* }* @nyx_array_new_ptr()
  %1262 = load { i64, i8* }*, { i64, i8* }** %1235
  %1263 = bitcast { i64, i8* }* %1262 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1261, i8* %1263)
  %1264 = load { i64, i8* }*, { i64, i8* }** %1241
  %1265 = bitcast { i64, i8* }* %1264 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1261, i8* %1265)
  %1266 = call { i64, i8* }* @licm_make(%nyx_string* %1260, { i64, i8* }* %1261)
  ret { i64, i8* }* %1266
else274:
  br label %merge275
merge275:
  %1267 = alloca i1
  store i1 false, i1* %1267
  %1268 = load %nyx_string*, %nyx_string** %974
  %1269 = getelementptr [3 x i8], [3 x i8]* @.str51, i32 0, i32 0
  %1270 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str51.c, i8* %1269)
  %1271 = call i1 @nyx_string_equals(%nyx_string* %1268, %nyx_string* %1270)
  br i1 %1271, label %sc_and_rhs279, label %sc_and_end280
sc_and_rhs279:
  %1272 = load i64, i64* %980
  %1273 = icmp sge i64 %1272, 3
  store i1 %1273, i1* %1267
  br label %sc_and_end280
sc_and_end280:
  %1274 = load i1, i1* %1267
  br i1 %1274, label %then281, label %else282
then281:
  %1275 = load { i64, i8* }*, { i64, i8* }** %977
  %1276 = call i64 @nyx_array_get({ i64, i8* }* %1275, i64 0)
  %1277 = inttoptr i64 %1276 to { i64, i8* }*
  %1278 = alloca { i64, i8* }*
  store { i64, i8* }* %1277, { i64, i8* }** %1278
  %1279 = load { i64, i8* }*, { i64, i8* }** %977
  %1280 = call i64 @nyx_array_get({ i64, i8* }* %1279, i64 1)
  %1281 = inttoptr i64 %1280 to { i64, i8* }*
  %1282 = alloca { i64, i8* }*
  store { i64, i8* }* %1281, { i64, i8* }** %1282
  %1283 = load { i64, i8* }*, { i64, i8* }** %977
  %1284 = call i64 @nyx_array_get({ i64, i8* }* %1283, i64 2)
  %1285 = inttoptr i64 %1284 to { i64, i8* }*
  %1286 = alloca { i64, i8* }*
  store { i64, i8* }* %1285, { i64, i8* }** %1286
  %1287 = load %nyx_string*, %nyx_string** %974
  %1288 = call { i64, i8* }* @nyx_array_new_ptr()
  %1289 = load { i64, i8* }*, { i64, i8* }** %1278
  %1290 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1291 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1289, { i64, i8* }* %1290)
  %1292 = bitcast { i64, i8* }* %1291 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1288, i8* %1292)
  %1293 = load { i64, i8* }*, { i64, i8* }** %1282
  %1294 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1295 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1293, { i64, i8* }* %1294)
  %1296 = bitcast { i64, i8* }* %1295 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1288, i8* %1296)
  %1297 = load { i64, i8* }*, { i64, i8* }** %1286
  %1298 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1299 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1297, { i64, i8* }* %1298)
  %1300 = bitcast { i64, i8* }* %1299 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1288, i8* %1300)
  %1301 = call { i64, i8* }* @licm_make(%nyx_string* %1287, { i64, i8* }* %1288)
  ret { i64, i8* }* %1301
else282:
  br label %merge283
merge283:
  %1302 = alloca i1
  store i1 false, i1* %1302
  %1303 = load %nyx_string*, %nyx_string** %974
  %1304 = getelementptr [6 x i8], [6 x i8]* @.str52, i32 0, i32 0
  %1305 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str52.c, i8* %1304)
  %1306 = call i1 @nyx_string_equals(%nyx_string* %1303, %nyx_string* %1305)
  br i1 %1306, label %sc_and_rhs284, label %sc_and_end285
sc_and_rhs284:
  %1307 = load i64, i64* %980
  %1308 = icmp sge i64 %1307, 2
  store i1 %1308, i1* %1302
  br label %sc_and_end285
sc_and_end285:
  %1309 = load i1, i1* %1302
  br i1 %1309, label %then286, label %else287
then286:
  %1310 = load { i64, i8* }*, { i64, i8* }** %977
  %1311 = call i64 @nyx_array_get({ i64, i8* }* %1310, i64 0)
  %1312 = inttoptr i64 %1311 to { i64, i8* }*
  %1313 = alloca { i64, i8* }*
  store { i64, i8* }* %1312, { i64, i8* }** %1313
  %1314 = load { i64, i8* }*, { i64, i8* }** %977
  %1315 = call i64 @nyx_array_get({ i64, i8* }* %1314, i64 1)
  %1316 = inttoptr i64 %1315 to { i64, i8* }*
  %1317 = alloca { i64, i8* }*
  store { i64, i8* }* %1316, { i64, i8* }** %1317
  %1318 = load %nyx_string*, %nyx_string** %974
  %1319 = call { i64, i8* }* @nyx_array_new_ptr()
  %1320 = load { i64, i8* }*, { i64, i8* }** %1313
  %1321 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1322 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1320, { i64, i8* }* %1321)
  %1323 = bitcast { i64, i8* }* %1322 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1319, i8* %1323)
  %1324 = load { i64, i8* }*, { i64, i8* }** %1317
  %1325 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1326 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1324, { i64, i8* }* %1325)
  %1327 = bitcast { i64, i8* }* %1326 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1319, i8* %1327)
  %1328 = call { i64, i8* }* @licm_make(%nyx_string* %1318, { i64, i8* }* %1319)
  ret { i64, i8* }* %1328
else287:
  br label %merge288
merge288:
  %1329 = alloca i1
  store i1 false, i1* %1329
  %1330 = load %nyx_string*, %nyx_string** %974
  %1331 = getelementptr [4 x i8], [4 x i8]* @.str53, i32 0, i32 0
  %1332 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str53.c, i8* %1331)
  %1333 = call i1 @nyx_string_equals(%nyx_string* %1330, %nyx_string* %1332)
  br i1 %1333, label %sc_and_rhs289, label %sc_and_end290
sc_and_rhs289:
  %1334 = load i64, i64* %980
  %1335 = icmp sge i64 %1334, 4
  store i1 %1335, i1* %1329
  br label %sc_and_end290
sc_and_end290:
  %1336 = load i1, i1* %1329
  br i1 %1336, label %then291, label %else292
then291:
  %1337 = load { i64, i8* }*, { i64, i8* }** %977
  %1338 = call i64 @nyx_array_get_checked({ i64, i8* }* %1337, i64 0, i64 2)
  %1339 = inttoptr i64 %1338 to %nyx_string*
  %1340 = alloca %nyx_string*
  store %nyx_string* %1339, %nyx_string** %1340
  %1341 = load { i64, i8* }*, { i64, i8* }** %977
  %1342 = call i64 @nyx_array_get({ i64, i8* }* %1341, i64 1)
  %1343 = inttoptr i64 %1342 to { i64, i8* }*
  %1344 = alloca { i64, i8* }*
  store { i64, i8* }* %1343, { i64, i8* }** %1344
  %1345 = load { i64, i8* }*, { i64, i8* }** %977
  %1346 = call i64 @nyx_array_get({ i64, i8* }* %1345, i64 2)
  %1347 = inttoptr i64 %1346 to { i64, i8* }*
  %1348 = alloca { i64, i8* }*
  store { i64, i8* }* %1347, { i64, i8* }** %1348
  %1349 = load { i64, i8* }*, { i64, i8* }** %977
  %1350 = call i64 @nyx_array_get({ i64, i8* }* %1349, i64 3)
  %1351 = alloca i64
  store i64 %1350, i64* %1351
  %1352 = load %nyx_string*, %nyx_string** %974
  %1353 = call { i64, i8* }* @nyx_array_new_ptr()
  %1354 = load %nyx_string*, %nyx_string** %1340
  %1355 = ptrtoint %nyx_string* %1354 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1353, i64 %1355, i64 2)
  %1356 = load { i64, i8* }*, { i64, i8* }** %1344
  %1357 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1358 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1356, { i64, i8* }* %1357)
  %1359 = bitcast { i64, i8* }* %1358 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1353, i8* %1359)
  %1360 = load { i64, i8* }*, { i64, i8* }** %1348
  %1361 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1362 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1360, { i64, i8* }* %1361)
  %1363 = bitcast { i64, i8* }* %1362 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1353, i8* %1363)
  %1364 = load i64, i64* %1351
  call void @nyx_array_push({ i64, i8* }* %1353, i64 %1364)
  %1365 = call { i64, i8* }* @licm_make(%nyx_string* %1352, { i64, i8* }* %1353)
  ret { i64, i8* }* %1365
else292:
  br label %merge293
merge293:
  %1366 = alloca i1
  store i1 false, i1* %1366
  %1367 = load %nyx_string*, %nyx_string** %974
  %1368 = getelementptr [10 x i8], [10 x i8]* @.str54, i32 0, i32 0
  %1369 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str54.c, i8* %1368)
  %1370 = call i1 @nyx_string_equals(%nyx_string* %1367, %nyx_string* %1369)
  br i1 %1370, label %sc_and_rhs294, label %sc_and_end295
sc_and_rhs294:
  %1371 = load i64, i64* %980
  %1372 = icmp sge i64 %1371, 3
  store i1 %1372, i1* %1366
  br label %sc_and_end295
sc_and_end295:
  %1373 = load i1, i1* %1366
  br i1 %1373, label %then296, label %else297
then296:
  %1374 = load { i64, i8* }*, { i64, i8* }** %977
  %1375 = call i64 @nyx_array_get({ i64, i8* }* %1374, i64 0)
  %1376 = alloca i64
  store i64 %1375, i64* %1376
  %1377 = load { i64, i8* }*, { i64, i8* }** %977
  %1378 = call i64 @nyx_array_get({ i64, i8* }* %1377, i64 1)
  %1379 = inttoptr i64 %1378 to { i64, i8* }*
  %1380 = alloca { i64, i8* }*
  store { i64, i8* }* %1379, { i64, i8* }** %1380
  %1381 = load { i64, i8* }*, { i64, i8* }** %977
  %1382 = call i64 @nyx_array_get({ i64, i8* }* %1381, i64 2)
  %1383 = inttoptr i64 %1382 to { i64, i8* }*
  %1384 = alloca { i64, i8* }*
  store { i64, i8* }* %1383, { i64, i8* }** %1384
  %1385 = load %nyx_string*, %nyx_string** %974
  %1386 = call { i64, i8* }* @nyx_array_new_ptr()
  %1387 = load i64, i64* %1376
  call void @nyx_array_push({ i64, i8* }* %1386, i64 %1387)
  %1388 = load { i64, i8* }*, { i64, i8* }** %1380
  %1389 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1390 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1388, { i64, i8* }* %1389)
  %1391 = bitcast { i64, i8* }* %1390 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1386, i8* %1391)
  %1392 = load { i64, i8* }*, { i64, i8* }** %1384
  %1393 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1394 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1392, { i64, i8* }* %1393)
  %1395 = bitcast { i64, i8* }* %1394 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1386, i8* %1395)
  %1396 = call { i64, i8* }* @licm_make(%nyx_string* %1385, { i64, i8* }* %1386)
  ret { i64, i8* }* %1396
else297:
  br label %merge298
merge298:
  %1397 = alloca i1
  store i1 false, i1* %1397
  %1398 = load %nyx_string*, %nyx_string** %974
  %1399 = getelementptr [6 x i8], [6 x i8]* @.str55, i32 0, i32 0
  %1400 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str55.c, i8* %1399)
  %1401 = call i1 @nyx_string_equals(%nyx_string* %1398, %nyx_string* %1400)
  br i1 %1401, label %sc_and_rhs299, label %sc_and_end300
sc_and_rhs299:
  %1402 = load i64, i64* %980
  %1403 = icmp sge i64 %1402, 1
  store i1 %1403, i1* %1397
  br label %sc_and_end300
sc_and_end300:
  %1404 = load i1, i1* %1397
  br i1 %1404, label %then301, label %else302
then301:
  %1405 = load { i64, i8* }*, { i64, i8* }** %977
  %1406 = call i64 @nyx_array_get({ i64, i8* }* %1405, i64 0)
  %1407 = inttoptr i64 %1406 to { i64, i8* }*
  %1408 = alloca { i64, i8* }*
  store { i64, i8* }* %1407, { i64, i8* }** %1408
  %1409 = call { i64, i8* }* @nyx_array_new_ptr()
  %1410 = alloca { i64, i8* }*
  store { i64, i8* }* %1409, { i64, i8* }** %1410
  %1411 = alloca i64
  store i64 0, i64* %1411
  %1412 = call i8* @llvm.stacksave()
  br label %while_cond304
while_cond304:
  %1413 = load i64, i64* %1411
  %1414 = load { i64, i8* }*, { i64, i8* }** %1408
  %1415 = call i64 @nyx_array_length({ i64, i8* }* %1414)
  %1416 = icmp slt i64 %1413, %1415
  br i1 %1416, label %while_body305, label %while_end306
while_body305:
  call void @llvm.stackrestore(i8* %1412)
  %1417 = load { i64, i8* }*, { i64, i8* }** %1408
  %1418 = load i64, i64* %1411
  %1419 = call i64 @nyx_array_get({ i64, i8* }* %1417, i64 %1418)
  %1420 = inttoptr i64 %1419 to { i64, i8* }*
  %1421 = alloca { i64, i8* }*
  store { i64, i8* }* %1420, { i64, i8* }** %1421
  %1422 = load { i64, i8* }*, { i64, i8* }** %1410
  %1423 = load { i64, i8* }*, { i64, i8* }** %1421
  %1424 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1425 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1423, { i64, i8* }* %1424)
  %1426 = ptrtoint { i64, i8* }* %1425 to i64
  call void @nyx_array_push({ i64, i8* }* %1422, i64 %1426)
  %1427 = load i64, i64* %1411
  %1428 = add i64 %1427, 1
  store i64 %1428, i64* %1411
  br label %while_cond304
while_end306:
  %1429 = load %nyx_string*, %nyx_string** %974
  %1430 = call { i64, i8* }* @nyx_array_new_ptr()
  %1431 = load { i64, i8* }*, { i64, i8* }** %1410
  %1432 = bitcast { i64, i8* }* %1431 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1430, i8* %1432)
  %1433 = call { i64, i8* }* @licm_make(%nyx_string* %1429, { i64, i8* }* %1430)
  ret { i64, i8* }* %1433
else302:
  br label %merge303
merge303:
  %1434 = alloca i1
  store i1 false, i1* %1434
  %1435 = load %nyx_string*, %nyx_string** %974
  %1436 = getelementptr [4 x i8], [4 x i8]* @.str56, i32 0, i32 0
  %1437 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str56.c, i8* %1436)
  %1438 = call i1 @nyx_string_equals(%nyx_string* %1435, %nyx_string* %1437)
  br i1 %1438, label %sc_and_rhs307, label %sc_and_end308
sc_and_rhs307:
  %1439 = load i64, i64* %980
  %1440 = icmp sge i64 %1439, 4
  store i1 %1440, i1* %1434
  br label %sc_and_end308
sc_and_end308:
  %1441 = load i1, i1* %1434
  br i1 %1441, label %then309, label %else310
then309:
  %1442 = load { i64, i8* }*, { i64, i8* }** %977
  %1443 = call i64 @nyx_array_get({ i64, i8* }* %1442, i64 0)
  %1444 = alloca i64
  store i64 %1443, i64* %1444
  %1445 = load { i64, i8* }*, { i64, i8* }** %977
  %1446 = call i64 @nyx_array_get({ i64, i8* }* %1445, i64 1)
  %1447 = alloca i64
  store i64 %1446, i64* %1447
  %1448 = load { i64, i8* }*, { i64, i8* }** %977
  %1449 = call i64 @nyx_array_get({ i64, i8* }* %1448, i64 2)
  %1450 = inttoptr i64 %1449 to { i64, i8* }*
  %1451 = alloca { i64, i8* }*
  store { i64, i8* }* %1450, { i64, i8* }** %1451
  %1452 = load { i64, i8* }*, { i64, i8* }** %977
  %1453 = call i64 @nyx_array_get({ i64, i8* }* %1452, i64 3)
  %1454 = alloca i64
  store i64 %1453, i64* %1454
  %1455 = load %nyx_string*, %nyx_string** %974
  %1456 = call { i64, i8* }* @nyx_array_new_ptr()
  %1457 = load i64, i64* %1444
  call void @nyx_array_push({ i64, i8* }* %1456, i64 %1457)
  %1458 = load i64, i64* %1447
  call void @nyx_array_push({ i64, i8* }* %1456, i64 %1458)
  %1459 = load { i64, i8* }*, { i64, i8* }** %1451
  %1460 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1461 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1459, { i64, i8* }* %1460)
  %1462 = bitcast { i64, i8* }* %1461 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1456, i8* %1462)
  %1463 = load i64, i64* %1454
  call void @nyx_array_push({ i64, i8* }* %1456, i64 %1463)
  %1464 = call { i64, i8* }* @licm_make(%nyx_string* %1455, { i64, i8* }* %1456)
  ret { i64, i8* }* %1464
else310:
  br label %merge311
merge311:
  %1465 = alloca i1
  store i1 false, i1* %1465
  %1466 = load %nyx_string*, %nyx_string** %974
  %1467 = getelementptr [22 x i8], [22 x i8]* @.str57, i32 0, i32 0
  %1468 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str57.c, i8* %1467)
  %1469 = call i1 @nyx_string_equals(%nyx_string* %1466, %nyx_string* %1468)
  br i1 %1469, label %sc_and_rhs312, label %sc_and_end313
sc_and_rhs312:
  %1470 = load i64, i64* %980
  %1471 = icmp sge i64 %1470, 3
  store i1 %1471, i1* %1465
  br label %sc_and_end313
sc_and_end313:
  %1472 = load i1, i1* %1465
  br i1 %1472, label %then314, label %else315
then314:
  %1473 = load { i64, i8* }*, { i64, i8* }** %977
  %1474 = call i64 @nyx_array_get({ i64, i8* }* %1473, i64 0)
  %1475 = alloca i64
  store i64 %1474, i64* %1475
  %1476 = load { i64, i8* }*, { i64, i8* }** %977
  %1477 = call i64 @nyx_array_get({ i64, i8* }* %1476, i64 1)
  %1478 = alloca i64
  store i64 %1477, i64* %1478
  %1479 = load { i64, i8* }*, { i64, i8* }** %977
  %1480 = call i64 @nyx_array_get({ i64, i8* }* %1479, i64 2)
  %1481 = inttoptr i64 %1480 to { i64, i8* }*
  %1482 = alloca { i64, i8* }*
  store { i64, i8* }* %1481, { i64, i8* }** %1482
  %1483 = load %nyx_string*, %nyx_string** %974
  %1484 = call { i64, i8* }* @nyx_array_new_ptr()
  %1485 = load i64, i64* %1475
  call void @nyx_array_push({ i64, i8* }* %1484, i64 %1485)
  %1486 = load i64, i64* %1478
  call void @nyx_array_push({ i64, i8* }* %1484, i64 %1486)
  %1487 = load { i64, i8* }*, { i64, i8* }** %1482
  %1488 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1489 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1487, { i64, i8* }* %1488)
  %1490 = bitcast { i64, i8* }* %1489 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1484, i8* %1490)
  %1491 = call { i64, i8* }* @licm_make(%nyx_string* %1483, { i64, i8* }* %1484)
  ret { i64, i8* }* %1491
else315:
  br label %merge316
merge316:
  %1492 = alloca i1
  store i1 false, i1* %1492
  %1493 = load %nyx_string*, %nyx_string** %974
  %1494 = getelementptr [7 x i8], [7 x i8]* @.str58, i32 0, i32 0
  %1495 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str58.c, i8* %1494)
  %1496 = call i1 @nyx_string_equals(%nyx_string* %1493, %nyx_string* %1495)
  br i1 %1496, label %sc_and_rhs317, label %sc_and_end318
sc_and_rhs317:
  %1497 = load i64, i64* %980
  %1498 = icmp sge i64 %1497, 2
  store i1 %1498, i1* %1492
  br label %sc_and_end318
sc_and_end318:
  %1499 = load i1, i1* %1492
  br i1 %1499, label %then319, label %else320
then319:
  %1500 = load { i64, i8* }*, { i64, i8* }** %977
  %1501 = call i64 @nyx_array_get({ i64, i8* }* %1500, i64 0)
  %1502 = alloca i64
  store i64 %1501, i64* %1502
  %1503 = load { i64, i8* }*, { i64, i8* }** %977
  %1504 = call i64 @nyx_array_get({ i64, i8* }* %1503, i64 1)
  %1505 = inttoptr i64 %1504 to { i64, i8* }*
  %1506 = alloca { i64, i8* }*
  store { i64, i8* }* %1505, { i64, i8* }** %1506
  %1507 = load %nyx_string*, %nyx_string** %974
  %1508 = call { i64, i8* }* @nyx_array_new_ptr()
  %1509 = load i64, i64* %1502
  call void @nyx_array_push({ i64, i8* }* %1508, i64 %1509)
  %1510 = load { i64, i8* }*, { i64, i8* }** %1506
  %1511 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1512 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1510, { i64, i8* }* %1511)
  %1513 = bitcast { i64, i8* }* %1512 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1508, i8* %1513)
  %1514 = call { i64, i8* }* @licm_make(%nyx_string* %1507, { i64, i8* }* %1508)
  ret { i64, i8* }* %1514
else320:
  br label %merge321
merge321:
  %1515 = alloca i1
  store i1 false, i1* %1515
  %1516 = load %nyx_string*, %nyx_string** %974
  %1517 = getelementptr [13 x i8], [13 x i8]* @.str59, i32 0, i32 0
  %1518 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str59.c, i8* %1517)
  %1519 = call i1 @nyx_string_equals(%nyx_string* %1516, %nyx_string* %1518)
  br i1 %1519, label %sc_and_rhs322, label %sc_and_end323
sc_and_rhs322:
  %1520 = load i64, i64* %980
  %1521 = icmp sge i64 %1520, 3
  store i1 %1521, i1* %1515
  br label %sc_and_end323
sc_and_end323:
  %1522 = load i1, i1* %1515
  br i1 %1522, label %then324, label %else325
then324:
  %1523 = load { i64, i8* }*, { i64, i8* }** %977
  %1524 = call i64 @nyx_array_get({ i64, i8* }* %1523, i64 0)
  %1525 = inttoptr i64 %1524 to { i64, i8* }*
  %1526 = alloca { i64, i8* }*
  store { i64, i8* }* %1525, { i64, i8* }** %1526
  %1527 = load { i64, i8* }*, { i64, i8* }** %977
  %1528 = call i64 @nyx_array_get({ i64, i8* }* %1527, i64 1)
  %1529 = inttoptr i64 %1528 to { i64, i8* }*
  %1530 = alloca { i64, i8* }*
  store { i64, i8* }* %1529, { i64, i8* }** %1530
  %1531 = load { i64, i8* }*, { i64, i8* }** %977
  %1532 = call i64 @nyx_array_get({ i64, i8* }* %1531, i64 2)
  %1533 = inttoptr i64 %1532 to { i64, i8* }*
  %1534 = alloca { i64, i8* }*
  store { i64, i8* }* %1533, { i64, i8* }** %1534
  %1535 = load %nyx_string*, %nyx_string** %974
  %1536 = call { i64, i8* }* @nyx_array_new_ptr()
  %1537 = load { i64, i8* }*, { i64, i8* }** %1526
  %1538 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1539 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1537, { i64, i8* }* %1538)
  %1540 = bitcast { i64, i8* }* %1539 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1536, i8* %1540)
  %1541 = load { i64, i8* }*, { i64, i8* }** %1530
  %1542 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1543 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1541, { i64, i8* }* %1542)
  %1544 = bitcast { i64, i8* }* %1543 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1536, i8* %1544)
  %1545 = load { i64, i8* }*, { i64, i8* }** %1534
  %1546 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1547 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1545, { i64, i8* }* %1546)
  %1548 = bitcast { i64, i8* }* %1547 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1536, i8* %1548)
  %1549 = call { i64, i8* }* @licm_make(%nyx_string* %1535, { i64, i8* }* %1536)
  ret { i64, i8* }* %1549
else325:
  br label %merge326
merge326:
  %1550 = alloca i1
  store i1 false, i1* %1550
  %1551 = load %nyx_string*, %nyx_string** %974
  %1552 = getelementptr [13 x i8], [13 x i8]* @.str60, i32 0, i32 0
  %1553 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str60.c, i8* %1552)
  %1554 = call i1 @nyx_string_equals(%nyx_string* %1551, %nyx_string* %1553)
  br i1 %1554, label %sc_and_rhs327, label %sc_and_end328
sc_and_rhs327:
  %1555 = load i64, i64* %980
  %1556 = icmp sge i64 %1555, 3
  store i1 %1556, i1* %1550
  br label %sc_and_end328
sc_and_end328:
  %1557 = load i1, i1* %1550
  br i1 %1557, label %then329, label %else330
then329:
  %1558 = load { i64, i8* }*, { i64, i8* }** %977
  %1559 = call i64 @nyx_array_get({ i64, i8* }* %1558, i64 0)
  %1560 = inttoptr i64 %1559 to { i64, i8* }*
  %1561 = alloca { i64, i8* }*
  store { i64, i8* }* %1560, { i64, i8* }** %1561
  %1562 = load { i64, i8* }*, { i64, i8* }** %977
  %1563 = call i64 @nyx_array_get_checked({ i64, i8* }* %1562, i64 1, i64 2)
  %1564 = inttoptr i64 %1563 to %nyx_string*
  %1565 = alloca %nyx_string*
  store %nyx_string* %1564, %nyx_string** %1565
  %1566 = load { i64, i8* }*, { i64, i8* }** %977
  %1567 = call i64 @nyx_array_get({ i64, i8* }* %1566, i64 2)
  %1568 = inttoptr i64 %1567 to { i64, i8* }*
  %1569 = alloca { i64, i8* }*
  store { i64, i8* }* %1568, { i64, i8* }** %1569
  %1570 = load %nyx_string*, %nyx_string** %974
  %1571 = call { i64, i8* }* @nyx_array_new_ptr()
  %1572 = load { i64, i8* }*, { i64, i8* }** %1561
  %1573 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1574 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1572, { i64, i8* }* %1573)
  %1575 = bitcast { i64, i8* }* %1574 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1571, i8* %1575)
  %1576 = load %nyx_string*, %nyx_string** %1565
  %1577 = ptrtoint %nyx_string* %1576 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1571, i64 %1577, i64 2)
  %1578 = load { i64, i8* }*, { i64, i8* }** %1569
  %1579 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1580 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1578, { i64, i8* }* %1579)
  %1581 = bitcast { i64, i8* }* %1580 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1571, i8* %1581)
  %1582 = call { i64, i8* }* @licm_make(%nyx_string* %1570, { i64, i8* }* %1571)
  ret { i64, i8* }* %1582
else330:
  br label %merge331
merge331:
  %1583 = alloca i1
  store i1 false, i1* %1583
  %1584 = load %nyx_string*, %nyx_string** %974
  %1585 = getelementptr [13 x i8], [13 x i8]* @.str61, i32 0, i32 0
  %1586 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str61.c, i8* %1585)
  %1587 = call i1 @nyx_string_equals(%nyx_string* %1584, %nyx_string* %1586)
  br i1 %1587, label %sc_and_rhs332, label %sc_and_end333
sc_and_rhs332:
  %1588 = load i64, i64* %980
  %1589 = icmp sge i64 %1588, 2
  store i1 %1589, i1* %1583
  br label %sc_and_end333
sc_and_end333:
  %1590 = load i1, i1* %1583
  br i1 %1590, label %then334, label %else335
then334:
  %1591 = load { i64, i8* }*, { i64, i8* }** %977
  %1592 = call i64 @nyx_array_get({ i64, i8* }* %1591, i64 0)
  %1593 = inttoptr i64 %1592 to { i64, i8* }*
  %1594 = alloca { i64, i8* }*
  store { i64, i8* }* %1593, { i64, i8* }** %1594
  %1595 = load { i64, i8* }*, { i64, i8* }** %977
  %1596 = call i64 @nyx_array_get({ i64, i8* }* %1595, i64 1)
  %1597 = inttoptr i64 %1596 to { i64, i8* }*
  %1598 = alloca { i64, i8* }*
  store { i64, i8* }* %1597, { i64, i8* }** %1598
  %1599 = load %nyx_string*, %nyx_string** %974
  %1600 = call { i64, i8* }* @nyx_array_new_ptr()
  %1601 = load { i64, i8* }*, { i64, i8* }** %1594
  %1602 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1603 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1601, { i64, i8* }* %1602)
  %1604 = bitcast { i64, i8* }* %1603 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1600, i8* %1604)
  %1605 = load { i64, i8* }*, { i64, i8* }** %1598
  %1606 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1607 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1605, { i64, i8* }* %1606)
  %1608 = bitcast { i64, i8* }* %1607 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1600, i8* %1608)
  %1609 = call { i64, i8* }* @licm_make(%nyx_string* %1599, { i64, i8* }* %1600)
  ret { i64, i8* }* %1609
else335:
  br label %merge336
merge336:
  %1610 = alloca i1
  store i1 false, i1* %1610
  %1611 = load %nyx_string*, %nyx_string** %974
  %1612 = getelementptr [7 x i8], [7 x i8]* @.str62, i32 0, i32 0
  %1613 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str62.c, i8* %1612)
  %1614 = call i1 @nyx_string_equals(%nyx_string* %1611, %nyx_string* %1613)
  br i1 %1614, label %sc_and_rhs337, label %sc_and_end338
sc_and_rhs337:
  %1615 = load i64, i64* %980
  %1616 = icmp sge i64 %1615, 1
  store i1 %1616, i1* %1610
  br label %sc_and_end338
sc_and_end338:
  %1617 = load i1, i1* %1610
  br i1 %1617, label %then339, label %else340
then339:
  %1618 = load { i64, i8* }*, { i64, i8* }** %977
  %1619 = call i64 @nyx_array_get({ i64, i8* }* %1618, i64 0)
  %1620 = inttoptr i64 %1619 to { i64, i8* }*
  %1621 = alloca { i64, i8* }*
  store { i64, i8* }* %1620, { i64, i8* }** %1621
  %1622 = load %nyx_string*, %nyx_string** %974
  %1623 = call { i64, i8* }* @nyx_array_new_ptr()
  %1624 = load { i64, i8* }*, { i64, i8* }** %1621
  %1625 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1626 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1624, { i64, i8* }* %1625)
  %1627 = bitcast { i64, i8* }* %1626 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1623, i8* %1627)
  %1628 = call { i64, i8* }* @licm_make(%nyx_string* %1622, { i64, i8* }* %1623)
  ret { i64, i8* }* %1628
else340:
  br label %merge341
merge341:
  %1629 = alloca i1
  store i1 false, i1* %1629
  %1630 = load %nyx_string*, %nyx_string** %974
  %1631 = getelementptr [12 x i8], [12 x i8]* @.str63, i32 0, i32 0
  %1632 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str63.c, i8* %1631)
  %1633 = call i1 @nyx_string_equals(%nyx_string* %1630, %nyx_string* %1632)
  br i1 %1633, label %sc_and_rhs342, label %sc_and_end343
sc_and_rhs342:
  %1634 = load i64, i64* %980
  %1635 = icmp sge i64 %1634, 3
  store i1 %1635, i1* %1629
  br label %sc_and_end343
sc_and_end343:
  %1636 = load i1, i1* %1629
  br i1 %1636, label %then344, label %else345
then344:
  %1637 = load { i64, i8* }*, { i64, i8* }** %977
  %1638 = call i64 @nyx_array_get({ i64, i8* }* %1637, i64 0)
  %1639 = alloca i64
  store i64 %1638, i64* %1639
  %1640 = load { i64, i8* }*, { i64, i8* }** %977
  %1641 = call i64 @nyx_array_get({ i64, i8* }* %1640, i64 1)
  %1642 = inttoptr i64 %1641 to { i64, i8* }*
  %1643 = alloca { i64, i8* }*
  store { i64, i8* }* %1642, { i64, i8* }** %1643
  %1644 = load { i64, i8* }*, { i64, i8* }** %977
  %1645 = call i64 @nyx_array_get({ i64, i8* }* %1644, i64 2)
  %1646 = alloca i64
  store i64 %1645, i64* %1646
  %1647 = call { i64, i8* }* @nyx_array_new_ptr()
  %1648 = alloca { i64, i8* }*
  store { i64, i8* }* %1647, { i64, i8* }** %1648
  %1649 = alloca i64
  store i64 0, i64* %1649
  %1650 = call i8* @llvm.stacksave()
  br label %while_cond347
while_cond347:
  %1651 = load i64, i64* %1649
  %1652 = load { i64, i8* }*, { i64, i8* }** %1643
  %1653 = call i64 @nyx_array_length({ i64, i8* }* %1652)
  %1654 = icmp slt i64 %1651, %1653
  br i1 %1654, label %while_body348, label %while_end349
while_body348:
  call void @llvm.stackrestore(i8* %1650)
  %1655 = load { i64, i8* }*, { i64, i8* }** %1643
  %1656 = load i64, i64* %1649
  %1657 = call i64 @nyx_array_get({ i64, i8* }* %1655, i64 %1656)
  %1658 = inttoptr i64 %1657 to { i64, i8* }*
  %1659 = alloca { i64, i8* }*
  store { i64, i8* }* %1658, { i64, i8* }** %1659
  %1660 = load { i64, i8* }*, { i64, i8* }** %1659
  %1661 = call i64 @nyx_array_length({ i64, i8* }* %1660)
  %1662 = icmp sge i64 %1661, 2
  br i1 %1662, label %then350, label %else351
then350:
  %1663 = load { i64, i8* }*, { i64, i8* }** %1659
  %1664 = call i64 @nyx_array_get_checked({ i64, i8* }* %1663, i64 0, i64 2)
  %1665 = inttoptr i64 %1664 to %nyx_string*
  %1666 = alloca %nyx_string*
  store %nyx_string* %1665, %nyx_string** %1666
  %1667 = load { i64, i8* }*, { i64, i8* }** %1659
  %1668 = call i64 @nyx_array_get({ i64, i8* }* %1667, i64 1)
  %1669 = inttoptr i64 %1668 to { i64, i8* }*
  %1670 = alloca { i64, i8* }*
  store { i64, i8* }* %1669, { i64, i8* }** %1670
  %1671 = load { i64, i8* }*, { i64, i8* }** %1648
  %1672 = call { i64, i8* }* @nyx_array_new_ptr()
  %1673 = load %nyx_string*, %nyx_string** %1666
  %1674 = ptrtoint %nyx_string* %1673 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1672, i64 %1674, i64 2)
  %1675 = load { i64, i8* }*, { i64, i8* }** %1670
  %1676 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1677 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1675, { i64, i8* }* %1676)
  %1678 = bitcast { i64, i8* }* %1677 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1672, i8* %1678)
  %1679 = ptrtoint { i64, i8* }* %1672 to i64
  call void @nyx_array_push({ i64, i8* }* %1671, i64 %1679)
  br label %merge352
else351:
  %1680 = load { i64, i8* }*, { i64, i8* }** %1648
  %1681 = load { i64, i8* }*, { i64, i8* }** %1659
  %1682 = ptrtoint { i64, i8* }* %1681 to i64
  call void @nyx_array_push({ i64, i8* }* %1680, i64 %1682)
  br label %merge352
merge352:
  %1683 = load i64, i64* %1649
  %1684 = add i64 %1683, 1
  store i64 %1684, i64* %1649
  br label %while_cond347
while_end349:
  %1685 = load %nyx_string*, %nyx_string** %974
  %1686 = call { i64, i8* }* @nyx_array_new_ptr()
  %1687 = load i64, i64* %1639
  call void @nyx_array_push({ i64, i8* }* %1686, i64 %1687)
  %1688 = load { i64, i8* }*, { i64, i8* }** %1648
  %1689 = bitcast { i64, i8* }* %1688 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1686, i8* %1689)
  %1690 = load i64, i64* %1646
  call void @nyx_array_push({ i64, i8* }* %1686, i64 %1690)
  %1691 = call { i64, i8* }* @licm_make(%nyx_string* %1685, { i64, i8* }* %1686)
  ret { i64, i8* }* %1691
else345:
  br label %merge346
merge346:
  %1692 = alloca i1
  store i1 false, i1* %1692
  %1693 = load %nyx_string*, %nyx_string** %974
  %1694 = getelementptr [7 x i8], [7 x i8]* @.str64, i32 0, i32 0
  %1695 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str64.c, i8* %1694)
  %1696 = call i1 @nyx_string_equals(%nyx_string* %1693, %nyx_string* %1695)
  br i1 %1696, label %sc_and_rhs353, label %sc_and_end354
sc_and_rhs353:
  %1697 = load i64, i64* %980
  %1698 = icmp sge i64 %1697, 1
  store i1 %1698, i1* %1692
  br label %sc_and_end354
sc_and_end354:
  %1699 = load i1, i1* %1692
  br i1 %1699, label %then355, label %else356
then355:
  %1700 = load { i64, i8* }*, { i64, i8* }** %977
  %1701 = call i64 @nyx_array_get({ i64, i8* }* %1700, i64 0)
  %1702 = inttoptr i64 %1701 to { i64, i8* }*
  %1703 = alloca { i64, i8* }*
  store { i64, i8* }* %1702, { i64, i8* }** %1703
  %1704 = load %nyx_string*, %nyx_string** %974
  %1705 = call { i64, i8* }* @nyx_array_new_ptr()
  %1706 = load { i64, i8* }*, { i64, i8* }** %1703
  %1707 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1708 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1706, { i64, i8* }* %1707)
  %1709 = bitcast { i64, i8* }* %1708 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1705, i8* %1709)
  %1710 = call { i64, i8* }* @licm_make(%nyx_string* %1704, { i64, i8* }* %1705)
  ret { i64, i8* }* %1710
else356:
  br label %merge357
merge357:
  %1711 = alloca i1
  store i1 false, i1* %1711
  %1712 = load %nyx_string*, %nyx_string** %974
  %1713 = getelementptr [5 x i8], [5 x i8]* @.str65, i32 0, i32 0
  %1714 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str65.c, i8* %1713)
  %1715 = call i1 @nyx_string_equals(%nyx_string* %1712, %nyx_string* %1714)
  br i1 %1715, label %sc_and_rhs358, label %sc_and_end359
sc_and_rhs358:
  %1716 = load i64, i64* %980
  %1717 = icmp sge i64 %1716, 2
  store i1 %1717, i1* %1711
  br label %sc_and_end359
sc_and_end359:
  %1718 = load i1, i1* %1711
  br i1 %1718, label %then360, label %else361
then360:
  %1719 = load { i64, i8* }*, { i64, i8* }** %977
  %1720 = call i64 @nyx_array_get({ i64, i8* }* %1719, i64 0)
  %1721 = inttoptr i64 %1720 to { i64, i8* }*
  %1722 = alloca { i64, i8* }*
  store { i64, i8* }* %1721, { i64, i8* }** %1722
  %1723 = load { i64, i8* }*, { i64, i8* }** %977
  %1724 = call i64 @nyx_array_get({ i64, i8* }* %1723, i64 1)
  %1725 = alloca i64
  store i64 %1724, i64* %1725
  %1726 = load %nyx_string*, %nyx_string** %974
  %1727 = call { i64, i8* }* @nyx_array_new_ptr()
  %1728 = load { i64, i8* }*, { i64, i8* }** %1722
  %1729 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1730 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1728, { i64, i8* }* %1729)
  %1731 = bitcast { i64, i8* }* %1730 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1727, i8* %1731)
  %1732 = load i64, i64* %1725
  call void @nyx_array_push({ i64, i8* }* %1727, i64 %1732)
  %1733 = call { i64, i8* }* @licm_make(%nyx_string* %1726, { i64, i8* }* %1727)
  ret { i64, i8* }* %1733
else361:
  br label %merge362
merge362:
  %1734 = alloca i1
  store i1 false, i1* %1734
  %1735 = load %nyx_string*, %nyx_string** %974
  %1736 = getelementptr [6 x i8], [6 x i8]* @.str66, i32 0, i32 0
  %1737 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str66.c, i8* %1736)
  %1738 = call i1 @nyx_string_equals(%nyx_string* %1735, %nyx_string* %1737)
  br i1 %1738, label %sc_and_rhs363, label %sc_and_end364
sc_and_rhs363:
  %1739 = load i64, i64* %980
  %1740 = icmp sge i64 %1739, 3
  store i1 %1740, i1* %1734
  br label %sc_and_end364
sc_and_end364:
  %1741 = load i1, i1* %1734
  br i1 %1741, label %then365, label %else366
then365:
  %1742 = load { i64, i8* }*, { i64, i8* }** %977
  %1743 = call i64 @nyx_array_get({ i64, i8* }* %1742, i64 0)
  %1744 = inttoptr i64 %1743 to { i64, i8* }*
  %1745 = alloca { i64, i8* }*
  store { i64, i8* }* %1744, { i64, i8* }** %1745
  %1746 = load { i64, i8* }*, { i64, i8* }** %977
  %1747 = call i64 @nyx_array_get({ i64, i8* }* %1746, i64 1)
  %1748 = inttoptr i64 %1747 to { i64, i8* }*
  %1749 = alloca { i64, i8* }*
  store { i64, i8* }* %1748, { i64, i8* }** %1749
  %1750 = load { i64, i8* }*, { i64, i8* }** %977
  %1751 = call i64 @nyx_array_get({ i64, i8* }* %1750, i64 2)
  %1752 = alloca i64
  store i64 %1751, i64* %1752
  %1753 = load %nyx_string*, %nyx_string** %974
  %1754 = call { i64, i8* }* @nyx_array_new_ptr()
  %1755 = load { i64, i8* }*, { i64, i8* }** %1745
  %1756 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1757 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1755, { i64, i8* }* %1756)
  %1758 = bitcast { i64, i8* }* %1757 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1754, i8* %1758)
  %1759 = load { i64, i8* }*, { i64, i8* }** %1749
  %1760 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1761 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1759, { i64, i8* }* %1760)
  %1762 = bitcast { i64, i8* }* %1761 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1754, i8* %1762)
  %1763 = load i64, i64* %1752
  call void @nyx_array_push({ i64, i8* }* %1754, i64 %1763)
  %1764 = call { i64, i8* }* @licm_make(%nyx_string* %1753, { i64, i8* }* %1754)
  ret { i64, i8* }* %1764
else366:
  br label %merge367
merge367:
  %1765 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  ret { i64, i8* }* %1765
}

define internal { i64, i8* }* @licm_stmt_list(
{ i64, i8* }* %stmts.param, { i64, i8* }* %counter.param) {
  %stmts.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %stmts.param, { i64, i8* }** %stmts.ptr
  %counter.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %counter.param, { i64, i8* }** %counter.ptr
  %1766 = call { i64, i8* }* @nyx_array_new_ptr()
  %1767 = alloca { i64, i8* }*
  store { i64, i8* }* %1766, { i64, i8* }** %1767
  %1768 = alloca i64
  store i64 0, i64* %1768
  %1769 = getelementptr [4 x i8], [4 x i8]* @.str67, i32 0, i32 0
  %1770 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str67.c, i8* %1769)
  %1771 = alloca %nyx_string*
  store %nyx_string* %1770, %nyx_string** %1771
  %1772 = getelementptr [10 x i8], [10 x i8]* @.str68, i32 0, i32 0
  %1773 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str68.c, i8* %1772)
  %1774 = alloca %nyx_string*
  store %nyx_string* %1773, %nyx_string** %1774
  %1775 = getelementptr [6 x i8], [6 x i8]* @.str69, i32 0, i32 0
  %1776 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str69.c, i8* %1775)
  %1777 = alloca %nyx_string*
  store %nyx_string* %1776, %nyx_string** %1777
  %1778 = getelementptr [12 x i8], [12 x i8]* @.str70, i32 0, i32 0
  %1779 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str70.c, i8* %1778)
  %1780 = alloca %nyx_string*
  store %nyx_string* %1779, %nyx_string** %1780
  %1781 = getelementptr [7 x i8], [7 x i8]* @.str71, i32 0, i32 0
  %1782 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str71.c, i8* %1781)
  %1783 = alloca %nyx_string*
  store %nyx_string* %1782, %nyx_string** %1783
  %1784 = getelementptr [4 x i8], [4 x i8]* @.str72, i32 0, i32 0
  %1785 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str72.c, i8* %1784)
  %1786 = alloca %nyx_string*
  store %nyx_string* %1785, %nyx_string** %1786
  %1787 = getelementptr [7 x i8], [7 x i8]* @.str73, i32 0, i32 0
  %1788 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str73.c, i8* %1787)
  %1789 = alloca %nyx_string*
  store %nyx_string* %1788, %nyx_string** %1789
  %1790 = call i8* @llvm.stacksave()
  br label %while_cond368
while_cond368:
  %1791 = load i64, i64* %1768
  %1792 = load { i64, i8* }*, { i64, i8* }** %stmts.ptr
  %1793 = call i64 @nyx_array_length({ i64, i8* }* %1792)
  %1794 = icmp slt i64 %1791, %1793
  br i1 %1794, label %while_body369, label %while_end370
while_body369:
  call void @llvm.stackrestore(i8* %1790)
  %1795 = load { i64, i8* }*, { i64, i8* }** %stmts.ptr
  %1796 = load i64, i64* %1768
  %1797 = call i64 @nyx_array_get({ i64, i8* }* %1795, i64 %1796)
  %1798 = inttoptr i64 %1797 to { i64, i8* }*
  %1799 = alloca { i64, i8* }*
  store { i64, i8* }* %1798, { i64, i8* }** %1799
  %1800 = load { i64, i8* }*, { i64, i8* }** %1799
  %1801 = call %ASTNode @licm_root_of({ i64, i8* }* %1800)
  %1802 = alloca %ASTNode
  store %ASTNode %1801, %ASTNode* %1802
  %1803 = getelementptr %ASTNode, %ASTNode* %1802, i32 0, i32 0
  %1804 = load %nyx_string*, %nyx_string** %1803
  %1805 = alloca %nyx_string*
  store %nyx_string* %1804, %nyx_string** %1805
  %1806 = getelementptr %ASTNode, %ASTNode* %1802, i32 0, i32 1
  %1807 = load { i64, i8* }*, { i64, i8* }** %1806
  %1808 = alloca { i64, i8* }*
  store { i64, i8* }* %1807, { i64, i8* }** %1808
  %1809 = alloca i64
  store i64 1, i64* %1809
  %1810 = load %nyx_string*, %nyx_string** %1805
  %1811 = load %nyx_string*, %nyx_string** %1771
  %1812 = call i1 @nyx_string_equals(%nyx_string* %1810, %nyx_string* %1811)
  br i1 %1812, label %then371, label %else372
then371:
  store i64 2, i64* %1809
  br label %merge373
else372:
  br label %merge373
merge373:
  %1813 = load %nyx_string*, %nyx_string** %1805
  %1814 = load %nyx_string*, %nyx_string** %1774
  %1815 = call i1 @nyx_string_equals(%nyx_string* %1813, %nyx_string* %1814)
  br i1 %1815, label %then374, label %else375
then374:
  store i64 2, i64* %1809
  br label %merge376
else375:
  br label %merge376
merge376:
  %1816 = alloca i1
  store i1 false, i1* %1816
  %1817 = alloca i1
  store i1 true, i1* %1817
  %1818 = alloca i1
  store i1 true, i1* %1818
  %1819 = load %nyx_string*, %nyx_string** %1805
  %1820 = load %nyx_string*, %nyx_string** %1777
  %1821 = call i1 @nyx_string_equals(%nyx_string* %1819, %nyx_string* %1820)
  br i1 %1821, label %sc_or_end378, label %sc_or_rhs377
sc_or_rhs377:
  %1822 = load %nyx_string*, %nyx_string** %1805
  %1823 = load %nyx_string*, %nyx_string** %1771
  %1824 = call i1 @nyx_string_equals(%nyx_string* %1822, %nyx_string* %1823)
  store i1 %1824, i1* %1818
  br label %sc_or_end378
sc_or_end378:
  %1825 = load i1, i1* %1818
  br i1 %1825, label %sc_or_end380, label %sc_or_rhs379
sc_or_rhs379:
  %1826 = load %nyx_string*, %nyx_string** %1805
  %1827 = load %nyx_string*, %nyx_string** %1774
  %1828 = call i1 @nyx_string_equals(%nyx_string* %1826, %nyx_string* %1827)
  store i1 %1828, i1* %1817
  br label %sc_or_end380
sc_or_end380:
  %1829 = load i1, i1* %1817
  br i1 %1829, label %sc_and_rhs381, label %sc_and_end382
sc_and_rhs381:
  %1830 = load { i64, i8* }*, { i64, i8* }** %1808
  %1831 = call i64 @nyx_array_length({ i64, i8* }* %1830)
  %1832 = load i64, i64* %1809
  %1833 = icmp sgt i64 %1831, %1832
  store i1 %1833, i1* %1816
  br label %sc_and_end382
sc_and_end382:
  %1834 = load i1, i1* %1816
  br i1 %1834, label %then383, label %else384
then383:
  %1835 = load %ASTNode, %ASTNode* %1802
  %1836 = load i64, i64* %1809
  %1837 = call %ASTNode @licm_node_at(%ASTNode %1835, i64 %1836)
  %1838 = alloca %ASTNode
  store %ASTNode %1837, %ASTNode* %1838
  %1839 = call { i64, i8* }* @nyx_array_new_ptr()
  %1840 = alloca { i64, i8* }*
  store { i64, i8* }* %1839, { i64, i8* }** %1840
  %1841 = load %ASTNode, %ASTNode* %1838
  %1842 = load { i64, i8* }*, { i64, i8* }** %1840
  %1843 = call i64 @licm_collect(%ASTNode %1841, { i64, i8* }* %1842)
  %1844 = call { i64, i8* }* @nyx_array_new_ptr()
  %1845 = alloca { i64, i8* }*
  store { i64, i8* }* %1844, { i64, i8* }** %1845
  %1846 = alloca i64
  store i64 0, i64* %1846
  %1847 = call i8* @llvm.stacksave()
  br label %while_cond386
while_cond386:
  %1848 = load i64, i64* %1846
  %1849 = load { i64, i8* }*, { i64, i8* }** %1840
  %1850 = call i64 @nyx_array_length({ i64, i8* }* %1849)
  %1851 = icmp slt i64 %1848, %1850
  br i1 %1851, label %while_body387, label %while_end388
while_body387:
  call void @llvm.stackrestore(i8* %1847)
  %1852 = load { i64, i8* }*, { i64, i8* }** %1840
  %1853 = load i64, i64* %1846
  %1854 = call i64 @nyx_array_get_checked({ i64, i8* }* %1852, i64 %1853, i64 2)
  %1855 = inttoptr i64 %1854 to %nyx_string*
  %1856 = alloca %nyx_string*
  store %nyx_string* %1855, %nyx_string** %1856
  %1857 = load { i64, i8* }*, { i64, i8* }** %counter.ptr
  %1858 = call i64 @nyx_array_get({ i64, i8* }* %1857, i64 0)
  %1859 = alloca i64
  store i64 %1858, i64* %1859
  %1860 = load { i64, i8* }*, { i64, i8* }** %counter.ptr
  %1861 = load i64, i64* %1859
  %1862 = add i64 %1861, 1
  call void @nyx_array_set({ i64, i8* }* %1860, i64 0, i64 %1862)
  %1863 = load %nyx_string*, %nyx_string** %1780
  %1864 = load i64, i64* %1859
  %1865 = call %nyx_string* @nyx_string_from_int(i64 %1864)
  %1866 = call %nyx_string* @nyx_string_concat(%nyx_string* %1863, %nyx_string* %1865)
  %1867 = alloca %nyx_string*
  store %nyx_string* %1866, %nyx_string** %1867
  %1868 = load { i64, i8* }*, { i64, i8* }** %1845
  %1869 = call { i64, i8* }* @nyx_array_new_ptr()
  %1870 = load %nyx_string*, %nyx_string** %1856
  %1871 = ptrtoint %nyx_string* %1870 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1869, i64 %1871, i64 2)
  %1872 = load %nyx_string*, %nyx_string** %1867
  %1873 = ptrtoint %nyx_string* %1872 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1869, i64 %1873, i64 2)
  %1874 = ptrtoint { i64, i8* }* %1869 to i64
  call void @nyx_array_push({ i64, i8* }* %1868, i64 %1874)
  %1875 = load %nyx_string*, %nyx_string** %1867
  %1876 = call { i64, i8* }* @nyx_array_new_ptr()
  %1877 = call { i64, i8* }* @licm_make(%nyx_string* %1875, { i64, i8* }* %1876)
  %1878 = alloca { i64, i8* }*
  store { i64, i8* }* %1877, { i64, i8* }** %1878
  %1879 = load %nyx_string*, %nyx_string** %1783
  %1880 = call { i64, i8* }* @nyx_array_new_ptr()
  %1881 = load %nyx_string*, %nyx_string** %1856
  %1882 = ptrtoint %nyx_string* %1881 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1880, i64 %1882, i64 2)
  %1883 = call { i64, i8* }* @licm_make(%nyx_string* %1879, { i64, i8* }* %1880)
  %1884 = alloca { i64, i8* }*
  store { i64, i8* }* %1883, { i64, i8* }** %1884
  %1885 = load %nyx_string*, %nyx_string** %1786
  %1886 = call { i64, i8* }* @nyx_array_new_ptr()
  %1887 = load { i64, i8* }*, { i64, i8* }** %1878
  %1888 = bitcast { i64, i8* }* %1887 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1886, i8* %1888)
  %1889 = zext i1 0 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1886, i64 %1889, i64 4)
  %1890 = load { i64, i8* }*, { i64, i8* }** %1884
  %1891 = bitcast { i64, i8* }* %1890 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1886, i8* %1891)
  %1892 = load %nyx_string*, %nyx_string** %1789
  %1893 = ptrtoint %nyx_string* %1892 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1886, i64 %1893, i64 2)
  %1894 = call { i64, i8* }* @licm_make(%nyx_string* %1885, { i64, i8* }* %1886)
  %1895 = alloca { i64, i8* }*
  store { i64, i8* }* %1894, { i64, i8* }** %1895
  %1896 = load { i64, i8* }*, { i64, i8* }** %1767
  %1897 = load { i64, i8* }*, { i64, i8* }** %1895
  %1898 = ptrtoint { i64, i8* }* %1897 to i64
  call void @nyx_array_push({ i64, i8* }* %1896, i64 %1898)
  %1899 = load i64, i64* %1846
  %1900 = add i64 %1899, 1
  store i64 %1900, i64* %1846
  br label %while_cond386
while_end388:
  %1901 = load { i64, i8* }*, { i64, i8* }** %1799
  %1902 = load { i64, i8* }*, { i64, i8* }** %1845
  %1903 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1901, { i64, i8* }* %1902)
  %1904 = alloca { i64, i8* }*
  store { i64, i8* }* %1903, { i64, i8* }** %1904
  %1905 = load { i64, i8* }*, { i64, i8* }** %1767
  %1906 = load { i64, i8* }*, { i64, i8* }** %1904
  %1907 = ptrtoint { i64, i8* }* %1906 to i64
  call void @nyx_array_push({ i64, i8* }* %1905, i64 %1907)
  br label %merge385
else384:
  %1908 = load { i64, i8* }*, { i64, i8* }** %1767
  %1909 = load { i64, i8* }*, { i64, i8* }** %1799
  %1910 = load { i64, i8* }*, { i64, i8* }** %counter.ptr
  %1911 = call { i64, i8* }* @licm_descend_stmt({ i64, i8* }* %1909, { i64, i8* }* %1910)
  %1912 = ptrtoint { i64, i8* }* %1911 to i64
  call void @nyx_array_push({ i64, i8* }* %1908, i64 %1912)
  br label %merge385
merge385:
  %1913 = load i64, i64* %1768
  %1914 = add i64 %1913, 1
  store i64 %1914, i64* %1768
  br label %while_cond368
while_end370:
  %1915 = load { i64, i8* }*, { i64, i8* }** %1767
  ret { i64, i8* }* %1915
}

define internal { i64, i8* }* @licm_descend_stmt(
{ i64, i8* }* %stmt.param, { i64, i8* }* %counter.param) {
  %stmt.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %stmt.param, { i64, i8* }** %stmt.ptr
  %counter.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %counter.param, { i64, i8* }** %counter.ptr
  %1916 = load { i64, i8* }*, { i64, i8* }** %stmt.ptr
  %1917 = call %ASTNode @licm_root_of({ i64, i8* }* %1916)
  %1918 = alloca %ASTNode
  store %ASTNode %1917, %ASTNode* %1918
  %1919 = getelementptr %ASTNode, %ASTNode* %1918, i32 0, i32 0
  %1920 = load %nyx_string*, %nyx_string** %1919
  %1921 = alloca %nyx_string*
  store %nyx_string* %1920, %nyx_string** %1921
  %1922 = getelementptr %ASTNode, %ASTNode* %1918, i32 0, i32 1
  %1923 = load { i64, i8* }*, { i64, i8* }** %1922
  %1924 = alloca { i64, i8* }*
  store { i64, i8* }* %1923, { i64, i8* }** %1924
  %1925 = load { i64, i8* }*, { i64, i8* }** %1924
  %1926 = call i64 @nyx_array_length({ i64, i8* }* %1925)
  %1927 = alloca i64
  store i64 %1926, i64* %1927
  %1928 = alloca i1
  store i1 false, i1* %1928
  %1929 = alloca i1
  store i1 true, i1* %1929
  %1930 = load %nyx_string*, %nyx_string** %1921
  %1931 = getelementptr [9 x i8], [9 x i8]* @.str74, i32 0, i32 0
  %1932 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str74.c, i8* %1931)
  %1933 = call i1 @nyx_string_equals(%nyx_string* %1930, %nyx_string* %1932)
  br i1 %1933, label %sc_or_end390, label %sc_or_rhs389
sc_or_rhs389:
  %1934 = load %nyx_string*, %nyx_string** %1921
  %1935 = getelementptr [9 x i8], [9 x i8]* @.str75, i32 0, i32 0
  %1936 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str75.c, i8* %1935)
  %1937 = call i1 @nyx_string_equals(%nyx_string* %1934, %nyx_string* %1936)
  store i1 %1937, i1* %1929
  br label %sc_or_end390
sc_or_end390:
  %1938 = load i1, i1* %1929
  br i1 %1938, label %sc_and_rhs391, label %sc_and_end392
sc_and_rhs391:
  %1939 = load i64, i64* %1927
  %1940 = icmp sge i64 %1939, 4
  store i1 %1940, i1* %1928
  br label %sc_and_end392
sc_and_end392:
  %1941 = load i1, i1* %1928
  br i1 %1941, label %then393, label %else394
then393:
  %1942 = load %ASTNode, %ASTNode* %1918
  %1943 = call %ASTNode @licm_node_at(%ASTNode %1942, i64 3)
  %1944 = alloca %ASTNode
  store %ASTNode %1943, %ASTNode* %1944
  %1945 = getelementptr %ASTNode, %ASTNode* %1944, i32 0, i32 0
  %1946 = load %nyx_string*, %nyx_string** %1945
  %1947 = getelementptr [6 x i8], [6 x i8]* @.str76, i32 0, i32 0
  %1948 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str76.c, i8* %1947)
  %1949 = call i1 @nyx_string_equals(%nyx_string* %1946, %nyx_string* %1948)
  %1950 = xor i1 %1949, true
  br i1 %1950, label %then396, label %else397
then396:
  %1951 = load { i64, i8* }*, { i64, i8* }** %stmt.ptr
  ret { i64, i8* }* %1951
else397:
  br label %merge398
merge398:
  %1952 = load %ASTNode, %ASTNode* %1944
  %1953 = call { i64, i8* }* @licm_array_at(%ASTNode %1952, i64 0)
  %1954 = alloca { i64, i8* }*
  store { i64, i8* }* %1953, { i64, i8* }** %1954
  %1955 = load { i64, i8* }*, { i64, i8* }** %1954
  %1956 = load { i64, i8* }*, { i64, i8* }** %counter.ptr
  %1957 = call { i64, i8* }* @licm_stmt_list({ i64, i8* }* %1955, { i64, i8* }* %1956)
  %1958 = alloca { i64, i8* }*
  store { i64, i8* }* %1957, { i64, i8* }** %1958
  %1959 = getelementptr [6 x i8], [6 x i8]* @.str77, i32 0, i32 0
  %1960 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str77.c, i8* %1959)
  %1961 = call { i64, i8* }* @nyx_array_new_ptr()
  %1962 = load { i64, i8* }*, { i64, i8* }** %1958
  %1963 = bitcast { i64, i8* }* %1962 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1961, i8* %1963)
  %1964 = call { i64, i8* }* @licm_make(%nyx_string* %1960, { i64, i8* }* %1961)
  %1965 = alloca { i64, i8* }*
  store { i64, i8* }* %1964, { i64, i8* }** %1965
  %1966 = call { i64, i8* }* @nyx_array_new_ptr()
  %1967 = alloca { i64, i8* }*
  store { i64, i8* }* %1966, { i64, i8* }** %1967
  %1968 = alloca i64
  store i64 0, i64* %1968
  %1969 = call i8* @llvm.stacksave()
  br label %while_cond399
while_cond399:
  %1970 = load i64, i64* %1968
  %1971 = load i64, i64* %1927
  %1972 = icmp slt i64 %1970, %1971
  br i1 %1972, label %while_body400, label %while_end401
while_body400:
  call void @llvm.stackrestore(i8* %1969)
  %1973 = load i64, i64* %1968
  %1974 = icmp eq i64 %1973, 3
  br i1 %1974, label %then402, label %else403
then402:
  %1975 = load { i64, i8* }*, { i64, i8* }** %1967
  %1976 = load { i64, i8* }*, { i64, i8* }** %1965
  %1977 = ptrtoint { i64, i8* }* %1976 to i64
  call void @nyx_array_push({ i64, i8* }* %1975, i64 %1977)
  br label %merge404
else403:
  %1978 = load { i64, i8* }*, { i64, i8* }** %1967
  %1979 = load { i64, i8* }*, { i64, i8* }** %1924
  %1980 = load i64, i64* %1968
  %1981 = call i64 @nyx_array_get({ i64, i8* }* %1979, i64 %1980)
  %1982 = load { i64, i8* }*, { i64, i8* }** %1924
  %1983 = load i64, i64* %1968
  %1984 = call i64 @nyx_array_get_tag({ i64, i8* }* %1982, i64 %1983)
  call void @nyx_array_push_tagged({ i64, i8* }* %1978, i64 %1981, i64 %1984)
  br label %merge404
merge404:
  %1985 = load i64, i64* %1968
  %1986 = add i64 %1985, 1
  store i64 %1986, i64* %1968
  br label %while_cond399
while_end401:
  %1987 = load %nyx_string*, %nyx_string** %1921
  %1988 = load { i64, i8* }*, { i64, i8* }** %1967
  %1989 = call { i64, i8* }* @licm_make(%nyx_string* %1987, { i64, i8* }* %1988)
  ret { i64, i8* }* %1989
else394:
  br label %merge395
merge395:
  %1990 = alloca i1
  store i1 false, i1* %1990
  %1991 = load %nyx_string*, %nyx_string** %1921
  %1992 = getelementptr [6 x i8], [6 x i8]* @.str78, i32 0, i32 0
  %1993 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str78.c, i8* %1992)
  %1994 = call i1 @nyx_string_equals(%nyx_string* %1991, %nyx_string* %1993)
  br i1 %1994, label %sc_and_rhs405, label %sc_and_end406
sc_and_rhs405:
  %1995 = load i64, i64* %1927
  %1996 = icmp sge i64 %1995, 1
  store i1 %1996, i1* %1990
  br label %sc_and_end406
sc_and_end406:
  %1997 = load i1, i1* %1990
  br i1 %1997, label %then407, label %else408
then407:
  %1998 = load %ASTNode, %ASTNode* %1918
  %1999 = call { i64, i8* }* @licm_array_at(%ASTNode %1998, i64 0)
  %2000 = alloca { i64, i8* }*
  store { i64, i8* }* %1999, { i64, i8* }** %2000
  %2001 = load { i64, i8* }*, { i64, i8* }** %2000
  %2002 = load { i64, i8* }*, { i64, i8* }** %counter.ptr
  %2003 = call { i64, i8* }* @licm_stmt_list({ i64, i8* }* %2001, { i64, i8* }* %2002)
  %2004 = alloca { i64, i8* }*
  store { i64, i8* }* %2003, { i64, i8* }** %2004
  %2005 = getelementptr [6 x i8], [6 x i8]* @.str79, i32 0, i32 0
  %2006 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str79.c, i8* %2005)
  %2007 = call { i64, i8* }* @nyx_array_new_ptr()
  %2008 = load { i64, i8* }*, { i64, i8* }** %2004
  %2009 = bitcast { i64, i8* }* %2008 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %2007, i8* %2009)
  %2010 = call { i64, i8* }* @licm_make(%nyx_string* %2006, { i64, i8* }* %2007)
  ret { i64, i8* }* %2010
else408:
  br label %merge409
merge409:
  %2011 = alloca i1
  store i1 false, i1* %2011
  %2012 = load %nyx_string*, %nyx_string** %1921
  %2013 = getelementptr [3 x i8], [3 x i8]* @.str80, i32 0, i32 0
  %2014 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str80.c, i8* %2013)
  %2015 = call i1 @nyx_string_equals(%nyx_string* %2012, %nyx_string* %2014)
  br i1 %2015, label %sc_and_rhs410, label %sc_and_end411
sc_and_rhs410:
  %2016 = load i64, i64* %1927
  %2017 = icmp sge i64 %2016, 3
  store i1 %2017, i1* %2011
  br label %sc_and_end411
sc_and_end411:
  %2018 = load i1, i1* %2011
  br i1 %2018, label %then412, label %else413
then412:
  %2019 = load { i64, i8* }*, { i64, i8* }** %1924
  %2020 = call i64 @nyx_array_get({ i64, i8* }* %2019, i64 0)
  %2021 = inttoptr i64 %2020 to { i64, i8* }*
  %2022 = alloca { i64, i8* }*
  store { i64, i8* }* %2021, { i64, i8* }** %2022
  %2023 = load { i64, i8* }*, { i64, i8* }** %1924
  %2024 = call i64 @nyx_array_get({ i64, i8* }* %2023, i64 1)
  %2025 = inttoptr i64 %2024 to { i64, i8* }*
  %2026 = alloca { i64, i8* }*
  store { i64, i8* }* %2025, { i64, i8* }** %2026
  %2027 = load { i64, i8* }*, { i64, i8* }** %1924
  %2028 = call i64 @nyx_array_get({ i64, i8* }* %2027, i64 2)
  %2029 = inttoptr i64 %2028 to { i64, i8* }*
  %2030 = alloca { i64, i8* }*
  store { i64, i8* }* %2029, { i64, i8* }** %2030
  %2031 = load { i64, i8* }*, { i64, i8* }** %2026
  %2032 = load { i64, i8* }*, { i64, i8* }** %counter.ptr
  %2033 = call { i64, i8* }* @licm_descend_stmt({ i64, i8* }* %2031, { i64, i8* }* %2032)
  %2034 = alloca { i64, i8* }*
  store { i64, i8* }* %2033, { i64, i8* }** %2034
  %2035 = load { i64, i8* }*, { i64, i8* }** %2030
  %2036 = load { i64, i8* }*, { i64, i8* }** %counter.ptr
  %2037 = call { i64, i8* }* @licm_descend_stmt({ i64, i8* }* %2035, { i64, i8* }* %2036)
  %2038 = alloca { i64, i8* }*
  store { i64, i8* }* %2037, { i64, i8* }** %2038
  %2039 = getelementptr [3 x i8], [3 x i8]* @.str81, i32 0, i32 0
  %2040 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str81.c, i8* %2039)
  %2041 = call { i64, i8* }* @nyx_array_new_ptr()
  %2042 = load { i64, i8* }*, { i64, i8* }** %2022
  %2043 = bitcast { i64, i8* }* %2042 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %2041, i8* %2043)
  %2044 = load { i64, i8* }*, { i64, i8* }** %2034
  %2045 = bitcast { i64, i8* }* %2044 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %2041, i8* %2045)
  %2046 = load { i64, i8* }*, { i64, i8* }** %2038
  %2047 = bitcast { i64, i8* }* %2046 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %2041, i8* %2047)
  %2048 = call { i64, i8* }* @licm_make(%nyx_string* %2040, { i64, i8* }* %2041)
  ret { i64, i8* }* %2048
else413:
  br label %merge414
merge414:
  %2049 = alloca i1
  store i1 false, i1* %2049
  %2050 = load %nyx_string*, %nyx_string** %1921
  %2051 = getelementptr [5 x i8], [5 x i8]* @.str82, i32 0, i32 0
  %2052 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str82.c, i8* %2051)
  %2053 = call i1 @nyx_string_equals(%nyx_string* %2050, %nyx_string* %2052)
  br i1 %2053, label %sc_and_rhs415, label %sc_and_end416
sc_and_rhs415:
  %2054 = load i64, i64* %1927
  %2055 = icmp sge i64 %2054, 2
  store i1 %2055, i1* %2049
  br label %sc_and_end416
sc_and_end416:
  %2056 = load i1, i1* %2049
  br i1 %2056, label %then417, label %else418
then417:
  %2057 = load { i64, i8* }*, { i64, i8* }** %1924
  %2058 = call i64 @nyx_array_get({ i64, i8* }* %2057, i64 1)
  %2059 = inttoptr i64 %2058 to { i64, i8* }*
  %2060 = alloca { i64, i8* }*
  store { i64, i8* }* %2059, { i64, i8* }** %2060
  %2061 = call { i64, i8* }* @nyx_array_new_ptr()
  %2062 = alloca { i64, i8* }*
  store { i64, i8* }* %2061, { i64, i8* }** %2062
  %2063 = alloca i64
  store i64 0, i64* %2063
  %2064 = call i8* @llvm.stacksave()
  br label %while_cond420
while_cond420:
  %2065 = load i64, i64* %2063
  %2066 = load { i64, i8* }*, { i64, i8* }** %2060
  %2067 = call i64 @nyx_array_length({ i64, i8* }* %2066)
  %2068 = icmp slt i64 %2065, %2067
  br i1 %2068, label %while_body421, label %while_end422
while_body421:
  call void @llvm.stackrestore(i8* %2064)
  %2069 = load { i64, i8* }*, { i64, i8* }** %2060
  %2070 = load i64, i64* %2063
  %2071 = call i64 @nyx_array_get({ i64, i8* }* %2069, i64 %2070)
  %2072 = inttoptr i64 %2071 to { i64, i8* }*
  %2073 = alloca { i64, i8* }*
  store { i64, i8* }* %2072, { i64, i8* }** %2073
  %2074 = load { i64, i8* }*, { i64, i8* }** %2062
  %2075 = load { i64, i8* }*, { i64, i8* }** %2073
  %2076 = load { i64, i8* }*, { i64, i8* }** %counter.ptr
  %2077 = call { i64, i8* }* @licm_descend_stmt({ i64, i8* }* %2075, { i64, i8* }* %2076)
  %2078 = ptrtoint { i64, i8* }* %2077 to i64
  call void @nyx_array_push({ i64, i8* }* %2074, i64 %2078)
  %2079 = load i64, i64* %2063
  %2080 = add i64 %2079, 1
  store i64 %2080, i64* %2063
  br label %while_cond420
while_end422:
  %2081 = call { i64, i8* }* @nyx_array_new_ptr()
  %2082 = alloca { i64, i8* }*
  store { i64, i8* }* %2081, { i64, i8* }** %2082
  %2083 = alloca i64
  store i64 0, i64* %2083
  %2084 = call i8* @llvm.stacksave()
  br label %while_cond423
while_cond423:
  %2085 = load i64, i64* %2083
  %2086 = load i64, i64* %1927
  %2087 = icmp slt i64 %2085, %2086
  br i1 %2087, label %while_body424, label %while_end425
while_body424:
  call void @llvm.stackrestore(i8* %2084)
  %2088 = load i64, i64* %2083
  %2089 = icmp eq i64 %2088, 1
  br i1 %2089, label %then426, label %else427
then426:
  %2090 = load { i64, i8* }*, { i64, i8* }** %2082
  %2091 = load { i64, i8* }*, { i64, i8* }** %2062
  %2092 = ptrtoint { i64, i8* }* %2091 to i64
  call void @nyx_array_push({ i64, i8* }* %2090, i64 %2092)
  br label %merge428
else427:
  %2093 = load { i64, i8* }*, { i64, i8* }** %2082
  %2094 = load { i64, i8* }*, { i64, i8* }** %1924
  %2095 = load i64, i64* %2083
  %2096 = call i64 @nyx_array_get({ i64, i8* }* %2094, i64 %2095)
  %2097 = load { i64, i8* }*, { i64, i8* }** %1924
  %2098 = load i64, i64* %2083
  %2099 = call i64 @nyx_array_get_tag({ i64, i8* }* %2097, i64 %2098)
  call void @nyx_array_push_tagged({ i64, i8* }* %2093, i64 %2096, i64 %2099)
  br label %merge428
merge428:
  %2100 = load i64, i64* %2083
  %2101 = add i64 %2100, 1
  store i64 %2101, i64* %2083
  br label %while_cond423
while_end425:
  %2102 = load %nyx_string*, %nyx_string** %1921
  %2103 = load { i64, i8* }*, { i64, i8* }** %2082
  %2104 = call { i64, i8* }* @licm_make(%nyx_string* %2102, { i64, i8* }* %2103)
  ret { i64, i8* }* %2104
else418:
  br label %merge419
merge419:
  %2105 = alloca i1
  store i1 false, i1* %2105
  %2106 = load %nyx_string*, %nyx_string** %1921
  %2107 = getelementptr [11 x i8], [11 x i8]* @.str83, i32 0, i32 0
  %2108 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str83.c, i8* %2107)
  %2109 = call i1 @nyx_string_equals(%nyx_string* %2106, %nyx_string* %2108)
  br i1 %2109, label %sc_and_rhs429, label %sc_and_end430
sc_and_rhs429:
  %2110 = load i64, i64* %1927
  %2111 = icmp sge i64 %2110, 3
  store i1 %2111, i1* %2105
  br label %sc_and_end430
sc_and_end430:
  %2112 = load i1, i1* %2105
  br i1 %2112, label %then431, label %else432
then431:
  %2113 = load { i64, i8* }*, { i64, i8* }** %1924
  %2114 = call i64 @nyx_array_get({ i64, i8* }* %2113, i64 2)
  %2115 = inttoptr i64 %2114 to { i64, i8* }*
  %2116 = alloca { i64, i8* }*
  store { i64, i8* }* %2115, { i64, i8* }** %2116
  %2117 = call { i64, i8* }* @nyx_array_new_ptr()
  %2118 = alloca { i64, i8* }*
  store { i64, i8* }* %2117, { i64, i8* }** %2118
  %2119 = alloca i64
  store i64 0, i64* %2119
  %2120 = call i8* @llvm.stacksave()
  br label %while_cond434
while_cond434:
  %2121 = load i64, i64* %2119
  %2122 = load { i64, i8* }*, { i64, i8* }** %2116
  %2123 = call i64 @nyx_array_length({ i64, i8* }* %2122)
  %2124 = icmp slt i64 %2121, %2123
  br i1 %2124, label %while_body435, label %while_end436
while_body435:
  call void @llvm.stackrestore(i8* %2120)
  %2125 = load { i64, i8* }*, { i64, i8* }** %2116
  %2126 = load i64, i64* %2119
  %2127 = call i64 @nyx_array_get({ i64, i8* }* %2125, i64 %2126)
  %2128 = inttoptr i64 %2127 to { i64, i8* }*
  %2129 = alloca { i64, i8* }*
  store { i64, i8* }* %2128, { i64, i8* }** %2129
  %2130 = load { i64, i8* }*, { i64, i8* }** %2118
  %2131 = load { i64, i8* }*, { i64, i8* }** %2129
  %2132 = load { i64, i8* }*, { i64, i8* }** %counter.ptr
  %2133 = call { i64, i8* }* @licm_descend_stmt({ i64, i8* }* %2131, { i64, i8* }* %2132)
  %2134 = ptrtoint { i64, i8* }* %2133 to i64
  call void @nyx_array_push({ i64, i8* }* %2130, i64 %2134)
  %2135 = load i64, i64* %2119
  %2136 = add i64 %2135, 1
  store i64 %2136, i64* %2119
  br label %while_cond434
while_end436:
  %2137 = call { i64, i8* }* @nyx_array_new_ptr()
  %2138 = alloca { i64, i8* }*
  store { i64, i8* }* %2137, { i64, i8* }** %2138
  %2139 = alloca i64
  store i64 0, i64* %2139
  %2140 = call i8* @llvm.stacksave()
  br label %while_cond437
while_cond437:
  %2141 = load i64, i64* %2139
  %2142 = load i64, i64* %1927
  %2143 = icmp slt i64 %2141, %2142
  br i1 %2143, label %while_body438, label %while_end439
while_body438:
  call void @llvm.stackrestore(i8* %2140)
  %2144 = load i64, i64* %2139
  %2145 = icmp eq i64 %2144, 2
  br i1 %2145, label %then440, label %else441
then440:
  %2146 = load { i64, i8* }*, { i64, i8* }** %2138
  %2147 = load { i64, i8* }*, { i64, i8* }** %2118
  %2148 = ptrtoint { i64, i8* }* %2147 to i64
  call void @nyx_array_push({ i64, i8* }* %2146, i64 %2148)
  br label %merge442
else441:
  %2149 = load { i64, i8* }*, { i64, i8* }** %2138
  %2150 = load { i64, i8* }*, { i64, i8* }** %1924
  %2151 = load i64, i64* %2139
  %2152 = call i64 @nyx_array_get({ i64, i8* }* %2150, i64 %2151)
  %2153 = load { i64, i8* }*, { i64, i8* }** %1924
  %2154 = load i64, i64* %2139
  %2155 = call i64 @nyx_array_get_tag({ i64, i8* }* %2153, i64 %2154)
  call void @nyx_array_push_tagged({ i64, i8* }* %2149, i64 %2152, i64 %2155)
  br label %merge442
merge442:
  %2156 = load i64, i64* %2139
  %2157 = add i64 %2156, 1
  store i64 %2157, i64* %2139
  br label %while_cond437
while_end439:
  %2158 = load %nyx_string*, %nyx_string** %1921
  %2159 = load { i64, i8* }*, { i64, i8* }** %2138
  %2160 = call { i64, i8* }* @licm_make(%nyx_string* %2158, { i64, i8* }* %2159)
  ret { i64, i8* }* %2160
else432:
  br label %merge433
merge433:
  %2161 = load { i64, i8* }*, { i64, i8* }** %stmt.ptr
  ret { i64, i8* }* %2161
}

define { i64, i8* }* @licm(
{ i64, i8* }* %ast.param) {
  %ast.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %ast.param, { i64, i8* }** %ast.ptr
  %2162 = getelementptr [9 x i8], [9 x i8]* @.str84, i32 0, i32 0
  %2163 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str84.c, i8* %2162)
  %2164 = call i8* @nyx_string_to_cstr(%nyx_string* %2163)
  %2165 = call %nyx_string* @nyx_getenv(i8* %2164)
  %2166 = getelementptr [4 x i8], [4 x i8]* @.str85, i32 0, i32 0
  %2167 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str85.c, i8* %2166)
  %2168 = call i1 @nyx_string_equals(%nyx_string* %2165, %nyx_string* %2167)
  br i1 %2168, label %then443, label %else444
then443:
  %2169 = load { i64, i8* }*, { i64, i8* }** %ast.ptr
  ret { i64, i8* }* %2169
else444:
  br label %merge445
merge445:
  %2170 = load { i64, i8* }*, { i64, i8* }** %ast.ptr
  %2171 = call %ASTNode @licm_root_of({ i64, i8* }* %2170)
  %2172 = alloca %ASTNode
  store %ASTNode %2171, %ASTNode* %2172
  %2173 = getelementptr %ASTNode, %ASTNode* %2172, i32 0, i32 1
  %2174 = load { i64, i8* }*, { i64, i8* }** %2173
  %2175 = call i64 @nyx_array_length({ i64, i8* }* %2174)
  %2176 = icmp slt i64 %2175, 1
  br i1 %2176, label %then446, label %else447
then446:
  %2177 = load { i64, i8* }*, { i64, i8* }** %ast.ptr
  ret { i64, i8* }* %2177
else447:
  br label %merge448
merge448:
  %2178 = load %ASTNode, %ASTNode* %2172
  %2179 = call { i64, i8* }* @licm_array_at(%ASTNode %2178, i64 0)
  %2180 = alloca { i64, i8* }*
  store { i64, i8* }* %2179, { i64, i8* }** %2180
  %2181 = call { i64, i8* }* @nyx_array_new_ptr()
  call void @nyx_array_push_tagged({ i64, i8* }* %2181, i64 0, i64 1)
  %2182 = alloca { i64, i8* }*
  store { i64, i8* }* %2181, { i64, i8* }** %2182
  %2183 = load { i64, i8* }*, { i64, i8* }** %2180
  %2184 = load { i64, i8* }*, { i64, i8* }** %2182
  %2185 = call { i64, i8* }* @licm_stmt_list({ i64, i8* }* %2183, { i64, i8* }* %2184)
  %2186 = alloca { i64, i8* }*
  store { i64, i8* }* %2185, { i64, i8* }** %2186
  %2187 = getelementptr [6 x i8], [6 x i8]* @.str86, i32 0, i32 0
  %2188 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str86.c, i8* %2187)
  %2189 = call { i64, i8* }* @nyx_array_new_ptr()
  %2190 = load { i64, i8* }*, { i64, i8* }** %2186
  %2191 = bitcast { i64, i8* }* %2190 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %2189, i8* %2191)
  %2192 = call { i64, i8* }* @licm_make(%nyx_string* %2188, { i64, i8* }* %2189)
  ret { i64, i8* }* %2192
}


attributes #0 = { returns_twice }

