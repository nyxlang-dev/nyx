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
declare i64 @nyx_exec(i8*)
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
  call void @nyx_array_push({ i64, i8* }* %54, i64 %56)
  %57 = load { i64, i8* }*, { i64, i8* }** %53
  %58 = load { i64, i8* }*, { i64, i8* }** %data.ptr
  %59 = ptrtoint { i64, i8* }* %58 to i64
  call void @nyx_array_push({ i64, i8* }* %57, i64 %59)
  %60 = load { i64, i8* }*, { i64, i8* }** %53
  call void @nyx_array_push({ i64, i8* }* %60, i64 0)
  %61 = load { i64, i8* }*, { i64, i8* }** %53
  call void @nyx_array_push({ i64, i8* }* %61, i64 0)
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
  br label %while_cond0
while_cond0:
  %64 = load i64, i64* %63
  %65 = load { i64, i8* }*, { i64, i8* }** %acc.ptr
  %66 = call i64 @nyx_array_length({ i64, i8* }* %65)
  %67 = icmp slt i64 %64, %66
  br i1 %67, label %while_body1, label %while_end2
while_body1:
  %68 = load { i64, i8* }*, { i64, i8* }** %acc.ptr
  %69 = load i64, i64* %63
  %70 = call i64 @nyx_array_get({ i64, i8* }* %68, i64 %69)
  %71 = inttoptr i64 %70 to %nyx_string*
  %72 = alloca %nyx_string*
  store %nyx_string* %71, %nyx_string** %72
  %73 = load %nyx_string*, %nyx_string** %72
  %74 = load %nyx_string*, %nyx_string** %v.ptr
  %75 = call i1 @nyx_string_equals(%nyx_string* %73, %nyx_string* %74)
  br i1 %75, label %then3, label %else4
then3:
  ret i1 1
else4:
  br label %merge5
merge5:
  %76 = load i64, i64* %63
  %77 = add i64 %76, 1
  store i64 %77, i64* %63
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
  %78 = alloca i64
  store i64 0, i64* %78
  br label %while_cond6
while_cond6:
  %79 = load i64, i64* %78
  %80 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %81 = call i64 @nyx_array_length({ i64, i8* }* %80)
  %82 = icmp slt i64 %79, %81
  br i1 %82, label %while_body7, label %while_end8
while_body7:
  %83 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %84 = load i64, i64* %78
  %85 = call i64 @nyx_array_get({ i64, i8* }* %83, i64 %84)
  %86 = inttoptr i64 %85 to { i64, i8* }*
  %87 = alloca { i64, i8* }*
  store { i64, i8* }* %86, { i64, i8* }** %87
  %88 = load { i64, i8* }*, { i64, i8* }** %87
  %89 = call i64 @nyx_array_get({ i64, i8* }* %88, i64 0)
  %90 = inttoptr i64 %89 to %nyx_string*
  %91 = alloca %nyx_string*
  store %nyx_string* %90, %nyx_string** %91
  %92 = load %nyx_string*, %nyx_string** %91
  %93 = load %nyx_string*, %nyx_string** %v.ptr
  %94 = call i1 @nyx_string_equals(%nyx_string* %92, %nyx_string* %93)
  br i1 %94, label %then9, label %else10
then9:
  %95 = load { i64, i8* }*, { i64, i8* }** %87
  %96 = call i64 @nyx_array_get({ i64, i8* }* %95, i64 1)
  %97 = inttoptr i64 %96 to %nyx_string*
  %98 = alloca %nyx_string*
  store %nyx_string* %97, %nyx_string** %98
  %99 = load %nyx_string*, %nyx_string** %98
  ret %nyx_string* %99
else10:
  br label %merge11
merge11:
  %100 = load i64, i64* %78
  %101 = add i64 %100, 1
  store i64 %101, i64* %78
  br label %while_cond6
while_end8:
  %102 = getelementptr [1 x i8], [1 x i8]* @.str0, i32 0, i32 0
  %103 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str0.c, i8* %102)
  ret %nyx_string* %103
}

define internal i64 @licm_collect(
%ASTNode %node.param, { i64, i8* }* %acc.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %acc.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %acc.param, { i64, i8* }** %acc.ptr
  %104 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 0
  %105 = load %nyx_string*, %nyx_string** %104
  %106 = alloca %nyx_string*
  store %nyx_string* %105, %nyx_string** %106
  %107 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 1
  %108 = load { i64, i8* }*, { i64, i8* }** %107
  %109 = alloca { i64, i8* }*
  store { i64, i8* }* %108, { i64, i8* }** %109
  %110 = load %nyx_string*, %nyx_string** %106
  %111 = getelementptr [9 x i8], [9 x i8]* @.str1, i32 0, i32 0
  %112 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1.c, i8* %111)
  %113 = call i1 @nyx_string_equals(%nyx_string* %110, %nyx_string* %112)
  br i1 %113, label %then12, label %else13
then12:
  ret i64 0
else13:
  br label %merge14
merge14:
  %114 = load %nyx_string*, %nyx_string** %106
  %115 = getelementptr [9 x i8], [9 x i8]* @.str2, i32 0, i32 0
  %116 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str2.c, i8* %115)
  %117 = call i1 @nyx_string_equals(%nyx_string* %114, %nyx_string* %116)
  br i1 %117, label %then15, label %else16
then15:
  ret i64 0
else16:
  br label %merge17
merge17:
  %118 = load %nyx_string*, %nyx_string** %106
  %119 = getelementptr [7 x i8], [7 x i8]* @.str3, i32 0, i32 0
  %120 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str3.c, i8* %119)
  %121 = call i1 @nyx_string_equals(%nyx_string* %118, %nyx_string* %120)
  br i1 %121, label %then18, label %else19
then18:
  ret i64 0
else19:
  br label %merge20
merge20:
  %122 = load %nyx_string*, %nyx_string** %106
  %123 = getelementptr [8 x i8], [8 x i8]* @.str4, i32 0, i32 0
  %124 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str4.c, i8* %123)
  %125 = call i1 @nyx_string_equals(%nyx_string* %122, %nyx_string* %124)
  br i1 %125, label %then21, label %else22
then21:
  ret i64 0
else22:
  br label %merge23
merge23:
  %126 = alloca i1
  store i1 false, i1* %126
  %127 = load %nyx_string*, %nyx_string** %106
  %128 = getelementptr [7 x i8], [7 x i8]* @.str5, i32 0, i32 0
  %129 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str5.c, i8* %128)
  %130 = call i1 @nyx_string_equals(%nyx_string* %127, %nyx_string* %129)
  br i1 %130, label %sc_and_rhs24, label %sc_and_end25
sc_and_rhs24:
  %131 = load { i64, i8* }*, { i64, i8* }** %109
  %132 = call i64 @nyx_array_length({ i64, i8* }* %131)
  %133 = icmp sge i64 %132, 1
  store i1 %133, i1* %126
  br label %sc_and_end25
sc_and_end25:
  %134 = load i1, i1* %126
  br i1 %134, label %then26, label %else27
then26:
  %135 = load { i64, i8* }*, { i64, i8* }** %109
  %136 = call i64 @nyx_array_get({ i64, i8* }* %135, i64 0)
  %137 = inttoptr i64 %136 to %nyx_string*
  %138 = alloca %nyx_string*
  store %nyx_string* %137, %nyx_string** %138
  %139 = load { i64, i8* }*, { i64, i8* }** %acc.ptr
  %140 = load %nyx_string*, %nyx_string** %138
  %141 = call i1 @licm_contains({ i64, i8* }* %139, %nyx_string* %140)
  %142 = xor i1 %141, true
  br i1 %142, label %then29, label %else30
then29:
  %143 = load { i64, i8* }*, { i64, i8* }** %acc.ptr
  %144 = load %nyx_string*, %nyx_string** %138
  %145 = ptrtoint %nyx_string* %144 to i64
  call void @nyx_array_push({ i64, i8* }* %143, i64 %145)
  br label %merge31
else30:
  br label %merge31
merge31:
  ret i64 0
else27:
  br label %merge28
merge28:
  %146 = alloca i1
  store i1 false, i1* %146
  %147 = load %nyx_string*, %nyx_string** %106
  %148 = getelementptr [6 x i8], [6 x i8]* @.str6, i32 0, i32 0
  %149 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str6.c, i8* %148)
  %150 = call i1 @nyx_string_equals(%nyx_string* %147, %nyx_string* %149)
  br i1 %150, label %sc_and_rhs32, label %sc_and_end33
sc_and_rhs32:
  %151 = load { i64, i8* }*, { i64, i8* }** %109
  %152 = call i64 @nyx_array_length({ i64, i8* }* %151)
  %153 = icmp sge i64 %152, 2
  store i1 %153, i1* %146
  br label %sc_and_end33
sc_and_end33:
  %154 = load i1, i1* %146
  br i1 %154, label %then34, label %else35
then34:
  %155 = load %ASTNode, %ASTNode* %node.ptr
  %156 = call %ASTNode @licm_node_at(%ASTNode %155, i64 0)
  %157 = alloca %ASTNode
  store %ASTNode %156, %ASTNode* %157
  %158 = load %ASTNode, %ASTNode* %157
  %159 = load { i64, i8* }*, { i64, i8* }** %acc.ptr
  %160 = call i64 @licm_collect(%ASTNode %158, { i64, i8* }* %159)
  %161 = load %ASTNode, %ASTNode* %node.ptr
  %162 = call { i64, i8* }* @licm_array_at(%ASTNode %161, i64 1)
  %163 = alloca { i64, i8* }*
  store { i64, i8* }* %162, { i64, i8* }** %163
  %164 = alloca i64
  store i64 0, i64* %164
  br label %while_cond37
while_cond37:
  %165 = load i64, i64* %164
  %166 = load { i64, i8* }*, { i64, i8* }** %163
  %167 = call i64 @nyx_array_length({ i64, i8* }* %166)
  %168 = icmp slt i64 %165, %167
  br i1 %168, label %while_body38, label %while_end39
while_body38:
  %169 = load { i64, i8* }*, { i64, i8* }** %163
  %170 = load i64, i64* %164
  %171 = call i64 @nyx_array_get({ i64, i8* }* %169, i64 %170)
  %172 = inttoptr i64 %171 to { i64, i8* }*
  %173 = call i64 @nyx_array_get({ i64, i8* }* %172, i64 0)
  %174 = call i64 @nyx_array_get({ i64, i8* }* %172, i64 1)
  %175 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %172, i64 2)
  %176 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %172, i64 3)
  %177 = inttoptr i64 %173 to %nyx_string*
  %178 = inttoptr i64 %174 to { i64, i8* }*
  %179 = alloca %ASTNode
  %180 = getelementptr inbounds %ASTNode, %ASTNode* %179, i32 0, i32 0
  store %nyx_string* %177, %nyx_string** %180
  %181 = getelementptr inbounds %ASTNode, %ASTNode* %179, i32 0, i32 1
  store { i64, i8* }* %178, { i64, i8* }** %181
  %182 = getelementptr inbounds %ASTNode, %ASTNode* %179, i32 0, i32 2
  store i64 %175, i64* %182
  %183 = getelementptr inbounds %ASTNode, %ASTNode* %179, i32 0, i32 3
  store i64 %176, i64* %183
  %184 = load %ASTNode, %ASTNode* %179
  %185 = alloca %ASTNode
  store %ASTNode %184, %ASTNode* %185
  %186 = getelementptr %ASTNode, %ASTNode* %185, i32 0, i32 1
  %187 = load { i64, i8* }*, { i64, i8* }** %186
  %188 = alloca { i64, i8* }*
  store { i64, i8* }* %187, { i64, i8* }** %188
  %189 = load { i64, i8* }*, { i64, i8* }** %188
  %190 = call i64 @nyx_array_length({ i64, i8* }* %189)
  %191 = icmp sge i64 %190, 2
  br i1 %191, label %then40, label %else41
then40:
  %192 = load %ASTNode, %ASTNode* %185
  %193 = call %ASTNode @licm_node_at(%ASTNode %192, i64 1)
  %194 = alloca %ASTNode
  store %ASTNode %193, %ASTNode* %194
  %195 = load %ASTNode, %ASTNode* %194
  %196 = load { i64, i8* }*, { i64, i8* }** %acc.ptr
  %197 = call i64 @licm_collect(%ASTNode %195, { i64, i8* }* %196)
  br label %merge42
else41:
  br label %merge42
merge42:
  %198 = load { i64, i8* }*, { i64, i8* }** %188
  %199 = call i64 @nyx_array_length({ i64, i8* }* %198)
  %200 = icmp sge i64 %199, 3
  br i1 %200, label %then43, label %else44
then43:
  %201 = load %ASTNode, %ASTNode* %185
  %202 = call %ASTNode @licm_node_at(%ASTNode %201, i64 2)
  %203 = alloca %ASTNode
  store %ASTNode %202, %ASTNode* %203
  %204 = load %ASTNode, %ASTNode* %203
  %205 = load { i64, i8* }*, { i64, i8* }** %acc.ptr
  %206 = call i64 @licm_collect(%ASTNode %204, { i64, i8* }* %205)
  br label %merge45
else44:
  br label %merge45
merge45:
  %207 = load i64, i64* %164
  %208 = add i64 %207, 1
  store i64 %208, i64* %164
  br label %while_cond37
while_end39:
  ret i64 0
else35:
  br label %merge36
merge36:
  %209 = load %nyx_string*, %nyx_string** %106
  %210 = getelementptr [6 x i8], [6 x i8]* @.str7, i32 0, i32 0
  %211 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str7.c, i8* %210)
  %212 = call i1 @nyx_string_equals(%nyx_string* %209, %nyx_string* %211)
  br i1 %212, label %then46, label %else47
then46:
  ret i64 0
else47:
  br label %merge48
merge48:
  %213 = load %ASTNode, %ASTNode* %node.ptr
  %214 = call { i64, i8* }* @licm_children(%ASTNode %213)
  %215 = alloca { i64, i8* }*
  store { i64, i8* }* %214, { i64, i8* }** %215
  %216 = alloca i64
  store i64 0, i64* %216
  br label %while_cond49
while_cond49:
  %217 = load i64, i64* %216
  %218 = load { i64, i8* }*, { i64, i8* }** %215
  %219 = call i64 @nyx_array_length({ i64, i8* }* %218)
  %220 = icmp slt i64 %217, %219
  br i1 %220, label %while_body50, label %while_end51
while_body50:
  %221 = load { i64, i8* }*, { i64, i8* }** %215
  %222 = load i64, i64* %216
  %223 = call i64 @nyx_array_get({ i64, i8* }* %221, i64 %222)
  %224 = inttoptr i64 %223 to { i64, i8* }*
  %225 = alloca { i64, i8* }*
  store { i64, i8* }* %224, { i64, i8* }** %225
  %226 = load { i64, i8* }*, { i64, i8* }** %225
  %227 = call %ASTNode @licm_root_of({ i64, i8* }* %226)
  %228 = alloca %ASTNode
  store %ASTNode %227, %ASTNode* %228
  %229 = load %ASTNode, %ASTNode* %228
  %230 = load { i64, i8* }*, { i64, i8* }** %acc.ptr
  %231 = call i64 @licm_collect(%ASTNode %229, { i64, i8* }* %230)
  %232 = load i64, i64* %216
  %233 = add i64 %232, 1
  store i64 %233, i64* %216
  br label %while_cond49
while_end51:
  ret i64 0
}

define internal { i64, i8* }* @licm_children(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %234 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 0
  %235 = load %nyx_string*, %nyx_string** %234
  %236 = alloca %nyx_string*
  store %nyx_string* %235, %nyx_string** %236
  %237 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 1
  %238 = load { i64, i8* }*, { i64, i8* }** %237
  %239 = alloca { i64, i8* }*
  store { i64, i8* }* %238, { i64, i8* }** %239
  %240 = load { i64, i8* }*, { i64, i8* }** %239
  %241 = call i64 @nyx_array_length({ i64, i8* }* %240)
  %242 = alloca i64
  store i64 %241, i64* %242
  %243 = call { i64, i8* }* @nyx_array_new_ptr()
  %244 = alloca { i64, i8* }*
  store { i64, i8* }* %243, { i64, i8* }** %244
  %245 = alloca i1
  store i1 false, i1* %245
  %246 = load %nyx_string*, %nyx_string** %236
  %247 = getelementptr [6 x i8], [6 x i8]* @.str8, i32 0, i32 0
  %248 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str8.c, i8* %247)
  %249 = call i1 @nyx_string_equals(%nyx_string* %246, %nyx_string* %248)
  br i1 %249, label %sc_and_rhs52, label %sc_and_end53
sc_and_rhs52:
  %250 = load i64, i64* %242
  %251 = icmp sge i64 %250, 3
  store i1 %251, i1* %245
  br label %sc_and_end53
sc_and_end53:
  %252 = load i1, i1* %245
  br i1 %252, label %then54, label %else55
then54:
  %253 = load { i64, i8* }*, { i64, i8* }** %239
  %254 = call i64 @nyx_array_get({ i64, i8* }* %253, i64 1)
  %255 = inttoptr i64 %254 to { i64, i8* }*
  %256 = alloca { i64, i8* }*
  store { i64, i8* }* %255, { i64, i8* }** %256
  %257 = load { i64, i8* }*, { i64, i8* }** %239
  %258 = call i64 @nyx_array_get({ i64, i8* }* %257, i64 2)
  %259 = inttoptr i64 %258 to { i64, i8* }*
  %260 = alloca { i64, i8* }*
  store { i64, i8* }* %259, { i64, i8* }** %260
  %261 = load { i64, i8* }*, { i64, i8* }** %244
  %262 = load { i64, i8* }*, { i64, i8* }** %256
  %263 = ptrtoint { i64, i8* }* %262 to i64
  call void @nyx_array_push({ i64, i8* }* %261, i64 %263)
  %264 = load { i64, i8* }*, { i64, i8* }** %244
  %265 = load { i64, i8* }*, { i64, i8* }** %260
  %266 = ptrtoint { i64, i8* }* %265 to i64
  call void @nyx_array_push({ i64, i8* }* %264, i64 %266)
  %267 = load { i64, i8* }*, { i64, i8* }** %244
  ret { i64, i8* }* %267
else55:
  br label %merge56
merge56:
  %268 = alloca i1
  store i1 false, i1* %268
  %269 = load %nyx_string*, %nyx_string** %236
  %270 = getelementptr [5 x i8], [5 x i8]* @.str9, i32 0, i32 0
  %271 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str9.c, i8* %270)
  %272 = call i1 @nyx_string_equals(%nyx_string* %269, %nyx_string* %271)
  br i1 %272, label %sc_and_rhs57, label %sc_and_end58
sc_and_rhs57:
  %273 = load i64, i64* %242
  %274 = icmp sge i64 %273, 2
  store i1 %274, i1* %268
  br label %sc_and_end58
sc_and_end58:
  %275 = load i1, i1* %268
  br i1 %275, label %then59, label %else60
then59:
  %276 = load { i64, i8* }*, { i64, i8* }** %239
  %277 = call i64 @nyx_array_get({ i64, i8* }* %276, i64 1)
  %278 = inttoptr i64 %277 to { i64, i8* }*
  %279 = alloca { i64, i8* }*
  store { i64, i8* }* %278, { i64, i8* }** %279
  %280 = load { i64, i8* }*, { i64, i8* }** %244
  %281 = load { i64, i8* }*, { i64, i8* }** %279
  %282 = ptrtoint { i64, i8* }* %281 to i64
  call void @nyx_array_push({ i64, i8* }* %280, i64 %282)
  %283 = load { i64, i8* }*, { i64, i8* }** %244
  ret { i64, i8* }* %283
else60:
  br label %merge61
merge61:
  %284 = alloca i1
  store i1 false, i1* %284
  %285 = load %nyx_string*, %nyx_string** %236
  %286 = getelementptr [5 x i8], [5 x i8]* @.str10, i32 0, i32 0
  %287 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str10.c, i8* %286)
  %288 = call i1 @nyx_string_equals(%nyx_string* %285, %nyx_string* %287)
  br i1 %288, label %sc_and_rhs62, label %sc_and_end63
sc_and_rhs62:
  %289 = load i64, i64* %242
  %290 = icmp sge i64 %289, 2
  store i1 %290, i1* %284
  br label %sc_and_end63
sc_and_end63:
  %291 = load i1, i1* %284
  br i1 %291, label %then64, label %else65
then64:
  %292 = load { i64, i8* }*, { i64, i8* }** %239
  %293 = call i64 @nyx_array_get({ i64, i8* }* %292, i64 0)
  %294 = inttoptr i64 %293 to { i64, i8* }*
  %295 = alloca { i64, i8* }*
  store { i64, i8* }* %294, { i64, i8* }** %295
  %296 = load { i64, i8* }*, { i64, i8* }** %244
  %297 = load { i64, i8* }*, { i64, i8* }** %295
  %298 = ptrtoint { i64, i8* }* %297 to i64
  call void @nyx_array_push({ i64, i8* }* %296, i64 %298)
  %299 = load { i64, i8* }*, { i64, i8* }** %239
  %300 = call i64 @nyx_array_get({ i64, i8* }* %299, i64 1)
  %301 = inttoptr i64 %300 to { i64, i8* }*
  %302 = alloca { i64, i8* }*
  store { i64, i8* }* %301, { i64, i8* }** %302
  %303 = alloca i64
  store i64 0, i64* %303
  br label %while_cond67
while_cond67:
  %304 = load i64, i64* %303
  %305 = load { i64, i8* }*, { i64, i8* }** %302
  %306 = call i64 @nyx_array_length({ i64, i8* }* %305)
  %307 = icmp slt i64 %304, %306
  br i1 %307, label %while_body68, label %while_end69
while_body68:
  %308 = load { i64, i8* }*, { i64, i8* }** %302
  %309 = load i64, i64* %303
  %310 = call i64 @nyx_array_get({ i64, i8* }* %308, i64 %309)
  %311 = inttoptr i64 %310 to { i64, i8* }*
  %312 = alloca { i64, i8* }*
  store { i64, i8* }* %311, { i64, i8* }** %312
  %313 = load { i64, i8* }*, { i64, i8* }** %244
  %314 = load { i64, i8* }*, { i64, i8* }** %312
  %315 = ptrtoint { i64, i8* }* %314 to i64
  call void @nyx_array_push({ i64, i8* }* %313, i64 %315)
  %316 = load i64, i64* %303
  %317 = add i64 %316, 1
  store i64 %317, i64* %303
  br label %while_cond67
while_end69:
  %318 = load { i64, i8* }*, { i64, i8* }** %244
  ret { i64, i8* }* %318
else65:
  br label %merge66
merge66:
  %319 = alloca i1
  store i1 false, i1* %319
  %320 = load %nyx_string*, %nyx_string** %236
  %321 = getelementptr [12 x i8], [12 x i8]* @.str11, i32 0, i32 0
  %322 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str11.c, i8* %321)
  %323 = call i1 @nyx_string_equals(%nyx_string* %320, %nyx_string* %322)
  br i1 %323, label %sc_and_rhs70, label %sc_and_end71
sc_and_rhs70:
  %324 = load i64, i64* %242
  %325 = icmp sge i64 %324, 3
  store i1 %325, i1* %319
  br label %sc_and_end71
sc_and_end71:
  %326 = load i1, i1* %319
  br i1 %326, label %then72, label %else73
then72:
  %327 = load { i64, i8* }*, { i64, i8* }** %239
  %328 = call i64 @nyx_array_get({ i64, i8* }* %327, i64 0)
  %329 = inttoptr i64 %328 to { i64, i8* }*
  %330 = alloca { i64, i8* }*
  store { i64, i8* }* %329, { i64, i8* }** %330
  %331 = load { i64, i8* }*, { i64, i8* }** %244
  %332 = load { i64, i8* }*, { i64, i8* }** %330
  %333 = ptrtoint { i64, i8* }* %332 to i64
  call void @nyx_array_push({ i64, i8* }* %331, i64 %333)
  %334 = load { i64, i8* }*, { i64, i8* }** %239
  %335 = call i64 @nyx_array_get({ i64, i8* }* %334, i64 2)
  %336 = inttoptr i64 %335 to { i64, i8* }*
  %337 = alloca { i64, i8* }*
  store { i64, i8* }* %336, { i64, i8* }** %337
  %338 = alloca i64
  store i64 0, i64* %338
  br label %while_cond75
while_cond75:
  %339 = load i64, i64* %338
  %340 = load { i64, i8* }*, { i64, i8* }** %337
  %341 = call i64 @nyx_array_length({ i64, i8* }* %340)
  %342 = icmp slt i64 %339, %341
  br i1 %342, label %while_body76, label %while_end77
while_body76:
  %343 = load { i64, i8* }*, { i64, i8* }** %337
  %344 = load i64, i64* %338
  %345 = call i64 @nyx_array_get({ i64, i8* }* %343, i64 %344)
  %346 = inttoptr i64 %345 to { i64, i8* }*
  %347 = alloca { i64, i8* }*
  store { i64, i8* }* %346, { i64, i8* }** %347
  %348 = load { i64, i8* }*, { i64, i8* }** %244
  %349 = load { i64, i8* }*, { i64, i8* }** %347
  %350 = ptrtoint { i64, i8* }* %349 to i64
  call void @nyx_array_push({ i64, i8* }* %348, i64 %350)
  %351 = load i64, i64* %338
  %352 = add i64 %351, 1
  store i64 %352, i64* %338
  br label %while_cond75
while_end77:
  %353 = load { i64, i8* }*, { i64, i8* }** %244
  ret { i64, i8* }* %353
else73:
  br label %merge74
merge74:
  %354 = alloca i1
  store i1 false, i1* %354
  %355 = load %nyx_string*, %nyx_string** %236
  %356 = getelementptr [6 x i8], [6 x i8]* @.str12, i32 0, i32 0
  %357 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str12.c, i8* %356)
  %358 = call i1 @nyx_string_equals(%nyx_string* %355, %nyx_string* %357)
  br i1 %358, label %sc_and_rhs78, label %sc_and_end79
sc_and_rhs78:
  %359 = load i64, i64* %242
  %360 = icmp sge i64 %359, 2
  store i1 %360, i1* %354
  br label %sc_and_end79
sc_and_end79:
  %361 = load i1, i1* %354
  br i1 %361, label %then80, label %else81
then80:
  %362 = load { i64, i8* }*, { i64, i8* }** %239
  %363 = call i64 @nyx_array_get({ i64, i8* }* %362, i64 0)
  %364 = inttoptr i64 %363 to { i64, i8* }*
  %365 = alloca { i64, i8* }*
  store { i64, i8* }* %364, { i64, i8* }** %365
  %366 = load { i64, i8* }*, { i64, i8* }** %239
  %367 = call i64 @nyx_array_get({ i64, i8* }* %366, i64 1)
  %368 = inttoptr i64 %367 to { i64, i8* }*
  %369 = alloca { i64, i8* }*
  store { i64, i8* }* %368, { i64, i8* }** %369
  %370 = load { i64, i8* }*, { i64, i8* }** %244
  %371 = load { i64, i8* }*, { i64, i8* }** %365
  %372 = ptrtoint { i64, i8* }* %371 to i64
  call void @nyx_array_push({ i64, i8* }* %370, i64 %372)
  %373 = load { i64, i8* }*, { i64, i8* }** %244
  %374 = load { i64, i8* }*, { i64, i8* }** %369
  %375 = ptrtoint { i64, i8* }* %374 to i64
  call void @nyx_array_push({ i64, i8* }* %373, i64 %375)
  %376 = load { i64, i8* }*, { i64, i8* }** %244
  ret { i64, i8* }* %376
else81:
  br label %merge82
merge82:
  %377 = alloca i1
  store i1 false, i1* %377
  %378 = load %nyx_string*, %nyx_string** %236
  %379 = getelementptr [13 x i8], [13 x i8]* @.str13, i32 0, i32 0
  %380 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str13.c, i8* %379)
  %381 = call i1 @nyx_string_equals(%nyx_string* %378, %nyx_string* %380)
  br i1 %381, label %sc_and_rhs83, label %sc_and_end84
sc_and_rhs83:
  %382 = load i64, i64* %242
  %383 = icmp sge i64 %382, 1
  store i1 %383, i1* %377
  br label %sc_and_end84
sc_and_end84:
  %384 = load i1, i1* %377
  br i1 %384, label %then85, label %else86
then85:
  %385 = load { i64, i8* }*, { i64, i8* }** %239
  %386 = call i64 @nyx_array_get({ i64, i8* }* %385, i64 0)
  %387 = inttoptr i64 %386 to { i64, i8* }*
  %388 = alloca { i64, i8* }*
  store { i64, i8* }* %387, { i64, i8* }** %388
  %389 = load { i64, i8* }*, { i64, i8* }** %244
  %390 = load { i64, i8* }*, { i64, i8* }** %388
  %391 = ptrtoint { i64, i8* }* %390 to i64
  call void @nyx_array_push({ i64, i8* }* %389, i64 %391)
  %392 = load { i64, i8* }*, { i64, i8* }** %244
  ret { i64, i8* }* %392
else86:
  br label %merge87
merge87:
  %393 = alloca i1
  store i1 false, i1* %393
  %394 = load %nyx_string*, %nyx_string** %236
  %395 = getelementptr [6 x i8], [6 x i8]* @.str14, i32 0, i32 0
  %396 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str14.c, i8* %395)
  %397 = call i1 @nyx_string_equals(%nyx_string* %394, %nyx_string* %396)
  br i1 %397, label %sc_and_rhs88, label %sc_and_end89
sc_and_rhs88:
  %398 = load i64, i64* %242
  %399 = icmp sge i64 %398, 1
  store i1 %399, i1* %393
  br label %sc_and_end89
sc_and_end89:
  %400 = load i1, i1* %393
  br i1 %400, label %then90, label %else91
then90:
  %401 = load { i64, i8* }*, { i64, i8* }** %239
  %402 = call i64 @nyx_array_get({ i64, i8* }* %401, i64 0)
  %403 = inttoptr i64 %402 to { i64, i8* }*
  %404 = alloca { i64, i8* }*
  store { i64, i8* }* %403, { i64, i8* }** %404
  %405 = alloca i64
  store i64 0, i64* %405
  br label %while_cond93
while_cond93:
  %406 = load i64, i64* %405
  %407 = load { i64, i8* }*, { i64, i8* }** %404
  %408 = call i64 @nyx_array_length({ i64, i8* }* %407)
  %409 = icmp slt i64 %406, %408
  br i1 %409, label %while_body94, label %while_end95
while_body94:
  %410 = load { i64, i8* }*, { i64, i8* }** %404
  %411 = load i64, i64* %405
  %412 = call i64 @nyx_array_get({ i64, i8* }* %410, i64 %411)
  %413 = inttoptr i64 %412 to { i64, i8* }*
  %414 = alloca { i64, i8* }*
  store { i64, i8* }* %413, { i64, i8* }** %414
  %415 = load { i64, i8* }*, { i64, i8* }** %244
  %416 = load { i64, i8* }*, { i64, i8* }** %414
  %417 = ptrtoint { i64, i8* }* %416 to i64
  call void @nyx_array_push({ i64, i8* }* %415, i64 %417)
  %418 = load i64, i64* %405
  %419 = add i64 %418, 1
  store i64 %419, i64* %405
  br label %while_cond93
while_end95:
  %420 = load { i64, i8* }*, { i64, i8* }** %244
  ret { i64, i8* }* %420
else91:
  br label %merge92
merge92:
  %421 = alloca i1
  store i1 false, i1* %421
  %422 = load %nyx_string*, %nyx_string** %236
  %423 = getelementptr [12 x i8], [12 x i8]* @.str15, i32 0, i32 0
  %424 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str15.c, i8* %423)
  %425 = call i1 @nyx_string_equals(%nyx_string* %422, %nyx_string* %424)
  br i1 %425, label %sc_and_rhs96, label %sc_and_end97
sc_and_rhs96:
  %426 = load i64, i64* %242
  %427 = icmp sge i64 %426, 2
  store i1 %427, i1* %421
  br label %sc_and_end97
sc_and_end97:
  %428 = load i1, i1* %421
  br i1 %428, label %then98, label %else99
then98:
  %429 = load { i64, i8* }*, { i64, i8* }** %239
  %430 = call i64 @nyx_array_get({ i64, i8* }* %429, i64 1)
  %431 = inttoptr i64 %430 to { i64, i8* }*
  %432 = alloca { i64, i8* }*
  store { i64, i8* }* %431, { i64, i8* }** %432
  %433 = alloca i64
  store i64 0, i64* %433
  br label %while_cond101
while_cond101:
  %434 = load i64, i64* %433
  %435 = load { i64, i8* }*, { i64, i8* }** %432
  %436 = call i64 @nyx_array_length({ i64, i8* }* %435)
  %437 = icmp slt i64 %434, %436
  br i1 %437, label %while_body102, label %while_end103
while_body102:
  %438 = load { i64, i8* }*, { i64, i8* }** %432
  %439 = load i64, i64* %433
  %440 = call i64 @nyx_array_get({ i64, i8* }* %438, i64 %439)
  %441 = inttoptr i64 %440 to { i64, i8* }*
  %442 = alloca { i64, i8* }*
  store { i64, i8* }* %441, { i64, i8* }** %442
  %443 = load { i64, i8* }*, { i64, i8* }** %244
  %444 = load { i64, i8* }*, { i64, i8* }** %442
  %445 = ptrtoint { i64, i8* }* %444 to i64
  call void @nyx_array_push({ i64, i8* }* %443, i64 %445)
  %446 = load i64, i64* %433
  %447 = add i64 %446, 1
  store i64 %447, i64* %433
  br label %while_cond101
while_end103:
  %448 = load { i64, i8* }*, { i64, i8* }** %244
  ret { i64, i8* }* %448
else99:
  br label %merge100
merge100:
  %449 = alloca i1
  store i1 false, i1* %449
  %450 = load %nyx_string*, %nyx_string** %236
  %451 = getelementptr [3 x i8], [3 x i8]* @.str16, i32 0, i32 0
  %452 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str16.c, i8* %451)
  %453 = call i1 @nyx_string_equals(%nyx_string* %450, %nyx_string* %452)
  br i1 %453, label %sc_and_rhs104, label %sc_and_end105
sc_and_rhs104:
  %454 = load i64, i64* %242
  %455 = icmp sge i64 %454, 3
  store i1 %455, i1* %449
  br label %sc_and_end105
sc_and_end105:
  %456 = load i1, i1* %449
  br i1 %456, label %then106, label %else107
then106:
  %457 = load { i64, i8* }*, { i64, i8* }** %239
  %458 = call i64 @nyx_array_get({ i64, i8* }* %457, i64 0)
  %459 = inttoptr i64 %458 to { i64, i8* }*
  %460 = alloca { i64, i8* }*
  store { i64, i8* }* %459, { i64, i8* }** %460
  %461 = load { i64, i8* }*, { i64, i8* }** %239
  %462 = call i64 @nyx_array_get({ i64, i8* }* %461, i64 1)
  %463 = inttoptr i64 %462 to { i64, i8* }*
  %464 = alloca { i64, i8* }*
  store { i64, i8* }* %463, { i64, i8* }** %464
  %465 = load { i64, i8* }*, { i64, i8* }** %239
  %466 = call i64 @nyx_array_get({ i64, i8* }* %465, i64 2)
  %467 = inttoptr i64 %466 to { i64, i8* }*
  %468 = alloca { i64, i8* }*
  store { i64, i8* }* %467, { i64, i8* }** %468
  %469 = load { i64, i8* }*, { i64, i8* }** %244
  %470 = load { i64, i8* }*, { i64, i8* }** %460
  %471 = ptrtoint { i64, i8* }* %470 to i64
  call void @nyx_array_push({ i64, i8* }* %469, i64 %471)
  %472 = load { i64, i8* }*, { i64, i8* }** %244
  %473 = load { i64, i8* }*, { i64, i8* }** %464
  %474 = ptrtoint { i64, i8* }* %473 to i64
  call void @nyx_array_push({ i64, i8* }* %472, i64 %474)
  %475 = load { i64, i8* }*, { i64, i8* }** %244
  %476 = load { i64, i8* }*, { i64, i8* }** %468
  %477 = ptrtoint { i64, i8* }* %476 to i64
  call void @nyx_array_push({ i64, i8* }* %475, i64 %477)
  %478 = load { i64, i8* }*, { i64, i8* }** %244
  ret { i64, i8* }* %478
else107:
  br label %merge108
merge108:
  %479 = alloca i1
  store i1 false, i1* %479
  %480 = load %nyx_string*, %nyx_string** %236
  %481 = getelementptr [6 x i8], [6 x i8]* @.str17, i32 0, i32 0
  %482 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str17.c, i8* %481)
  %483 = call i1 @nyx_string_equals(%nyx_string* %480, %nyx_string* %482)
  br i1 %483, label %sc_and_rhs109, label %sc_and_end110
sc_and_rhs109:
  %484 = load i64, i64* %242
  %485 = icmp sge i64 %484, 2
  store i1 %485, i1* %479
  br label %sc_and_end110
sc_and_end110:
  %486 = load i1, i1* %479
  br i1 %486, label %then111, label %else112
then111:
  %487 = load { i64, i8* }*, { i64, i8* }** %239
  %488 = call i64 @nyx_array_get({ i64, i8* }* %487, i64 0)
  %489 = inttoptr i64 %488 to { i64, i8* }*
  %490 = alloca { i64, i8* }*
  store { i64, i8* }* %489, { i64, i8* }** %490
  %491 = load { i64, i8* }*, { i64, i8* }** %239
  %492 = call i64 @nyx_array_get({ i64, i8* }* %491, i64 1)
  %493 = inttoptr i64 %492 to { i64, i8* }*
  %494 = alloca { i64, i8* }*
  store { i64, i8* }* %493, { i64, i8* }** %494
  %495 = load { i64, i8* }*, { i64, i8* }** %244
  %496 = load { i64, i8* }*, { i64, i8* }** %490
  %497 = ptrtoint { i64, i8* }* %496 to i64
  call void @nyx_array_push({ i64, i8* }* %495, i64 %497)
  %498 = load { i64, i8* }*, { i64, i8* }** %244
  %499 = load { i64, i8* }*, { i64, i8* }** %494
  %500 = ptrtoint { i64, i8* }* %499 to i64
  call void @nyx_array_push({ i64, i8* }* %498, i64 %500)
  %501 = load { i64, i8* }*, { i64, i8* }** %244
  ret { i64, i8* }* %501
else112:
  br label %merge113
merge113:
  %502 = alloca i1
  store i1 false, i1* %502
  %503 = load %nyx_string*, %nyx_string** %236
  %504 = getelementptr [4 x i8], [4 x i8]* @.str18, i32 0, i32 0
  %505 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str18.c, i8* %504)
  %506 = call i1 @nyx_string_equals(%nyx_string* %503, %nyx_string* %505)
  br i1 %506, label %sc_and_rhs114, label %sc_and_end115
sc_and_rhs114:
  %507 = load i64, i64* %242
  %508 = icmp sge i64 %507, 3
  store i1 %508, i1* %502
  br label %sc_and_end115
sc_and_end115:
  %509 = load i1, i1* %502
  br i1 %509, label %then116, label %else117
then116:
  %510 = load { i64, i8* }*, { i64, i8* }** %239
  %511 = call i64 @nyx_array_get({ i64, i8* }* %510, i64 1)
  %512 = inttoptr i64 %511 to { i64, i8* }*
  %513 = alloca { i64, i8* }*
  store { i64, i8* }* %512, { i64, i8* }** %513
  %514 = load { i64, i8* }*, { i64, i8* }** %239
  %515 = call i64 @nyx_array_get({ i64, i8* }* %514, i64 2)
  %516 = inttoptr i64 %515 to { i64, i8* }*
  %517 = alloca { i64, i8* }*
  store { i64, i8* }* %516, { i64, i8* }** %517
  %518 = load { i64, i8* }*, { i64, i8* }** %244
  %519 = load { i64, i8* }*, { i64, i8* }** %513
  %520 = ptrtoint { i64, i8* }* %519 to i64
  call void @nyx_array_push({ i64, i8* }* %518, i64 %520)
  %521 = load { i64, i8* }*, { i64, i8* }** %244
  %522 = load { i64, i8* }*, { i64, i8* }** %517
  %523 = ptrtoint { i64, i8* }* %522 to i64
  call void @nyx_array_push({ i64, i8* }* %521, i64 %523)
  %524 = load { i64, i8* }*, { i64, i8* }** %244
  ret { i64, i8* }* %524
else117:
  br label %merge118
merge118:
  %525 = alloca i1
  store i1 false, i1* %525
  %526 = load %nyx_string*, %nyx_string** %236
  %527 = getelementptr [10 x i8], [10 x i8]* @.str19, i32 0, i32 0
  %528 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str19.c, i8* %527)
  %529 = call i1 @nyx_string_equals(%nyx_string* %526, %nyx_string* %528)
  br i1 %529, label %sc_and_rhs119, label %sc_and_end120
sc_and_rhs119:
  %530 = load i64, i64* %242
  %531 = icmp sge i64 %530, 3
  store i1 %531, i1* %525
  br label %sc_and_end120
sc_and_end120:
  %532 = load i1, i1* %525
  br i1 %532, label %then121, label %else122
then121:
  %533 = load { i64, i8* }*, { i64, i8* }** %239
  %534 = call i64 @nyx_array_get({ i64, i8* }* %533, i64 1)
  %535 = inttoptr i64 %534 to { i64, i8* }*
  %536 = alloca { i64, i8* }*
  store { i64, i8* }* %535, { i64, i8* }** %536
  %537 = load { i64, i8* }*, { i64, i8* }** %239
  %538 = call i64 @nyx_array_get({ i64, i8* }* %537, i64 2)
  %539 = inttoptr i64 %538 to { i64, i8* }*
  %540 = alloca { i64, i8* }*
  store { i64, i8* }* %539, { i64, i8* }** %540
  %541 = load { i64, i8* }*, { i64, i8* }** %244
  %542 = load { i64, i8* }*, { i64, i8* }** %536
  %543 = ptrtoint { i64, i8* }* %542 to i64
  call void @nyx_array_push({ i64, i8* }* %541, i64 %543)
  %544 = load { i64, i8* }*, { i64, i8* }** %244
  %545 = load { i64, i8* }*, { i64, i8* }** %540
  %546 = ptrtoint { i64, i8* }* %545 to i64
  call void @nyx_array_push({ i64, i8* }* %544, i64 %546)
  %547 = load { i64, i8* }*, { i64, i8* }** %244
  ret { i64, i8* }* %547
else122:
  br label %merge123
merge123:
  %548 = alloca i1
  store i1 false, i1* %548
  %549 = load %nyx_string*, %nyx_string** %236
  %550 = getelementptr [6 x i8], [6 x i8]* @.str20, i32 0, i32 0
  %551 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str20.c, i8* %550)
  %552 = call i1 @nyx_string_equals(%nyx_string* %549, %nyx_string* %551)
  br i1 %552, label %sc_and_rhs124, label %sc_and_end125
sc_and_rhs124:
  %553 = load i64, i64* %242
  %554 = icmp sge i64 %553, 1
  store i1 %554, i1* %548
  br label %sc_and_end125
sc_and_end125:
  %555 = load i1, i1* %548
  br i1 %555, label %then126, label %else127
then126:
  %556 = load { i64, i8* }*, { i64, i8* }** %239
  %557 = call i64 @nyx_array_get({ i64, i8* }* %556, i64 0)
  %558 = inttoptr i64 %557 to { i64, i8* }*
  %559 = alloca { i64, i8* }*
  store { i64, i8* }* %558, { i64, i8* }** %559
  %560 = alloca i64
  store i64 0, i64* %560
  br label %while_cond129
while_cond129:
  %561 = load i64, i64* %560
  %562 = load { i64, i8* }*, { i64, i8* }** %559
  %563 = call i64 @nyx_array_length({ i64, i8* }* %562)
  %564 = icmp slt i64 %561, %563
  br i1 %564, label %while_body130, label %while_end131
while_body130:
  %565 = load { i64, i8* }*, { i64, i8* }** %559
  %566 = load i64, i64* %560
  %567 = call i64 @nyx_array_get({ i64, i8* }* %565, i64 %566)
  %568 = inttoptr i64 %567 to { i64, i8* }*
  %569 = alloca { i64, i8* }*
  store { i64, i8* }* %568, { i64, i8* }** %569
  %570 = load { i64, i8* }*, { i64, i8* }** %244
  %571 = load { i64, i8* }*, { i64, i8* }** %569
  %572 = ptrtoint { i64, i8* }* %571 to i64
  call void @nyx_array_push({ i64, i8* }* %570, i64 %572)
  %573 = load i64, i64* %560
  %574 = add i64 %573, 1
  store i64 %574, i64* %560
  br label %while_cond129
while_end131:
  %575 = load { i64, i8* }*, { i64, i8* }** %244
  ret { i64, i8* }* %575
else127:
  br label %merge128
merge128:
  %576 = alloca i1
  store i1 false, i1* %576
  %577 = load %nyx_string*, %nyx_string** %236
  %578 = getelementptr [4 x i8], [4 x i8]* @.str21, i32 0, i32 0
  %579 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str21.c, i8* %578)
  %580 = call i1 @nyx_string_equals(%nyx_string* %577, %nyx_string* %579)
  br i1 %580, label %sc_and_rhs132, label %sc_and_end133
sc_and_rhs132:
  %581 = load i64, i64* %242
  %582 = icmp sge i64 %581, 3
  store i1 %582, i1* %576
  br label %sc_and_end133
sc_and_end133:
  %583 = load i1, i1* %576
  br i1 %583, label %then134, label %else135
then134:
  %584 = load { i64, i8* }*, { i64, i8* }** %239
  %585 = call i64 @nyx_array_get({ i64, i8* }* %584, i64 2)
  %586 = inttoptr i64 %585 to { i64, i8* }*
  %587 = alloca { i64, i8* }*
  store { i64, i8* }* %586, { i64, i8* }** %587
  %588 = load { i64, i8* }*, { i64, i8* }** %244
  %589 = load { i64, i8* }*, { i64, i8* }** %587
  %590 = ptrtoint { i64, i8* }* %589 to i64
  call void @nyx_array_push({ i64, i8* }* %588, i64 %590)
  %591 = load { i64, i8* }*, { i64, i8* }** %244
  ret { i64, i8* }* %591
else135:
  br label %merge136
merge136:
  %592 = alloca i1
  store i1 false, i1* %592
  %593 = load %nyx_string*, %nyx_string** %236
  %594 = getelementptr [22 x i8], [22 x i8]* @.str22, i32 0, i32 0
  %595 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str22.c, i8* %594)
  %596 = call i1 @nyx_string_equals(%nyx_string* %593, %nyx_string* %595)
  br i1 %596, label %sc_and_rhs137, label %sc_and_end138
sc_and_rhs137:
  %597 = load i64, i64* %242
  %598 = icmp sge i64 %597, 3
  store i1 %598, i1* %592
  br label %sc_and_end138
sc_and_end138:
  %599 = load i1, i1* %592
  br i1 %599, label %then139, label %else140
then139:
  %600 = load { i64, i8* }*, { i64, i8* }** %239
  %601 = call i64 @nyx_array_get({ i64, i8* }* %600, i64 2)
  %602 = inttoptr i64 %601 to { i64, i8* }*
  %603 = alloca { i64, i8* }*
  store { i64, i8* }* %602, { i64, i8* }** %603
  %604 = load { i64, i8* }*, { i64, i8* }** %244
  %605 = load { i64, i8* }*, { i64, i8* }** %603
  %606 = ptrtoint { i64, i8* }* %605 to i64
  call void @nyx_array_push({ i64, i8* }* %604, i64 %606)
  %607 = load { i64, i8* }*, { i64, i8* }** %244
  ret { i64, i8* }* %607
else140:
  br label %merge141
merge141:
  %608 = alloca i1
  store i1 false, i1* %608
  %609 = load %nyx_string*, %nyx_string** %236
  %610 = getelementptr [7 x i8], [7 x i8]* @.str23, i32 0, i32 0
  %611 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str23.c, i8* %610)
  %612 = call i1 @nyx_string_equals(%nyx_string* %609, %nyx_string* %611)
  br i1 %612, label %sc_and_rhs142, label %sc_and_end143
sc_and_rhs142:
  %613 = load i64, i64* %242
  %614 = icmp sge i64 %613, 2
  store i1 %614, i1* %608
  br label %sc_and_end143
sc_and_end143:
  %615 = load i1, i1* %608
  br i1 %615, label %then144, label %else145
then144:
  %616 = load { i64, i8* }*, { i64, i8* }** %239
  %617 = call i64 @nyx_array_get({ i64, i8* }* %616, i64 1)
  %618 = inttoptr i64 %617 to { i64, i8* }*
  %619 = alloca { i64, i8* }*
  store { i64, i8* }* %618, { i64, i8* }** %619
  %620 = load { i64, i8* }*, { i64, i8* }** %244
  %621 = load { i64, i8* }*, { i64, i8* }** %619
  %622 = ptrtoint { i64, i8* }* %621 to i64
  call void @nyx_array_push({ i64, i8* }* %620, i64 %622)
  %623 = load { i64, i8* }*, { i64, i8* }** %244
  ret { i64, i8* }* %623
else145:
  br label %merge146
merge146:
  %624 = alloca i1
  store i1 false, i1* %624
  %625 = load %nyx_string*, %nyx_string** %236
  %626 = getelementptr [13 x i8], [13 x i8]* @.str24, i32 0, i32 0
  %627 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str24.c, i8* %626)
  %628 = call i1 @nyx_string_equals(%nyx_string* %625, %nyx_string* %627)
  br i1 %628, label %sc_and_rhs147, label %sc_and_end148
sc_and_rhs147:
  %629 = load i64, i64* %242
  %630 = icmp sge i64 %629, 3
  store i1 %630, i1* %624
  br label %sc_and_end148
sc_and_end148:
  %631 = load i1, i1* %624
  br i1 %631, label %then149, label %else150
then149:
  %632 = load { i64, i8* }*, { i64, i8* }** %239
  %633 = call i64 @nyx_array_get({ i64, i8* }* %632, i64 0)
  %634 = inttoptr i64 %633 to { i64, i8* }*
  %635 = alloca { i64, i8* }*
  store { i64, i8* }* %634, { i64, i8* }** %635
  %636 = load { i64, i8* }*, { i64, i8* }** %239
  %637 = call i64 @nyx_array_get({ i64, i8* }* %636, i64 1)
  %638 = inttoptr i64 %637 to { i64, i8* }*
  %639 = alloca { i64, i8* }*
  store { i64, i8* }* %638, { i64, i8* }** %639
  %640 = load { i64, i8* }*, { i64, i8* }** %239
  %641 = call i64 @nyx_array_get({ i64, i8* }* %640, i64 2)
  %642 = inttoptr i64 %641 to { i64, i8* }*
  %643 = alloca { i64, i8* }*
  store { i64, i8* }* %642, { i64, i8* }** %643
  %644 = load { i64, i8* }*, { i64, i8* }** %244
  %645 = load { i64, i8* }*, { i64, i8* }** %635
  %646 = ptrtoint { i64, i8* }* %645 to i64
  call void @nyx_array_push({ i64, i8* }* %644, i64 %646)
  %647 = load { i64, i8* }*, { i64, i8* }** %244
  %648 = load { i64, i8* }*, { i64, i8* }** %639
  %649 = ptrtoint { i64, i8* }* %648 to i64
  call void @nyx_array_push({ i64, i8* }* %647, i64 %649)
  %650 = load { i64, i8* }*, { i64, i8* }** %244
  %651 = load { i64, i8* }*, { i64, i8* }** %643
  %652 = ptrtoint { i64, i8* }* %651 to i64
  call void @nyx_array_push({ i64, i8* }* %650, i64 %652)
  %653 = load { i64, i8* }*, { i64, i8* }** %244
  ret { i64, i8* }* %653
else150:
  br label %merge151
merge151:
  %654 = alloca i1
  store i1 false, i1* %654
  %655 = load %nyx_string*, %nyx_string** %236
  %656 = getelementptr [13 x i8], [13 x i8]* @.str25, i32 0, i32 0
  %657 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str25.c, i8* %656)
  %658 = call i1 @nyx_string_equals(%nyx_string* %655, %nyx_string* %657)
  br i1 %658, label %sc_and_rhs152, label %sc_and_end153
sc_and_rhs152:
  %659 = load i64, i64* %242
  %660 = icmp sge i64 %659, 3
  store i1 %660, i1* %654
  br label %sc_and_end153
sc_and_end153:
  %661 = load i1, i1* %654
  br i1 %661, label %then154, label %else155
then154:
  %662 = load { i64, i8* }*, { i64, i8* }** %239
  %663 = call i64 @nyx_array_get({ i64, i8* }* %662, i64 0)
  %664 = inttoptr i64 %663 to { i64, i8* }*
  %665 = alloca { i64, i8* }*
  store { i64, i8* }* %664, { i64, i8* }** %665
  %666 = load { i64, i8* }*, { i64, i8* }** %239
  %667 = call i64 @nyx_array_get({ i64, i8* }* %666, i64 2)
  %668 = inttoptr i64 %667 to { i64, i8* }*
  %669 = alloca { i64, i8* }*
  store { i64, i8* }* %668, { i64, i8* }** %669
  %670 = load { i64, i8* }*, { i64, i8* }** %244
  %671 = load { i64, i8* }*, { i64, i8* }** %665
  %672 = ptrtoint { i64, i8* }* %671 to i64
  call void @nyx_array_push({ i64, i8* }* %670, i64 %672)
  %673 = load { i64, i8* }*, { i64, i8* }** %244
  %674 = load { i64, i8* }*, { i64, i8* }** %669
  %675 = ptrtoint { i64, i8* }* %674 to i64
  call void @nyx_array_push({ i64, i8* }* %673, i64 %675)
  %676 = load { i64, i8* }*, { i64, i8* }** %244
  ret { i64, i8* }* %676
else155:
  br label %merge156
merge156:
  %677 = alloca i1
  store i1 false, i1* %677
  %678 = load %nyx_string*, %nyx_string** %236
  %679 = getelementptr [13 x i8], [13 x i8]* @.str26, i32 0, i32 0
  %680 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str26.c, i8* %679)
  %681 = call i1 @nyx_string_equals(%nyx_string* %678, %nyx_string* %680)
  br i1 %681, label %sc_and_rhs157, label %sc_and_end158
sc_and_rhs157:
  %682 = load i64, i64* %242
  %683 = icmp sge i64 %682, 2
  store i1 %683, i1* %677
  br label %sc_and_end158
sc_and_end158:
  %684 = load i1, i1* %677
  br i1 %684, label %then159, label %else160
then159:
  %685 = load { i64, i8* }*, { i64, i8* }** %239
  %686 = call i64 @nyx_array_get({ i64, i8* }* %685, i64 0)
  %687 = inttoptr i64 %686 to { i64, i8* }*
  %688 = alloca { i64, i8* }*
  store { i64, i8* }* %687, { i64, i8* }** %688
  %689 = load { i64, i8* }*, { i64, i8* }** %239
  %690 = call i64 @nyx_array_get({ i64, i8* }* %689, i64 1)
  %691 = inttoptr i64 %690 to { i64, i8* }*
  %692 = alloca { i64, i8* }*
  store { i64, i8* }* %691, { i64, i8* }** %692
  %693 = load { i64, i8* }*, { i64, i8* }** %244
  %694 = load { i64, i8* }*, { i64, i8* }** %688
  %695 = ptrtoint { i64, i8* }* %694 to i64
  call void @nyx_array_push({ i64, i8* }* %693, i64 %695)
  %696 = load { i64, i8* }*, { i64, i8* }** %244
  %697 = load { i64, i8* }*, { i64, i8* }** %692
  %698 = ptrtoint { i64, i8* }* %697 to i64
  call void @nyx_array_push({ i64, i8* }* %696, i64 %698)
  %699 = load { i64, i8* }*, { i64, i8* }** %244
  ret { i64, i8* }* %699
else160:
  br label %merge161
merge161:
  %700 = alloca i1
  store i1 false, i1* %700
  %701 = load %nyx_string*, %nyx_string** %236
  %702 = getelementptr [7 x i8], [7 x i8]* @.str27, i32 0, i32 0
  %703 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str27.c, i8* %702)
  %704 = call i1 @nyx_string_equals(%nyx_string* %701, %nyx_string* %703)
  br i1 %704, label %sc_and_rhs162, label %sc_and_end163
sc_and_rhs162:
  %705 = load i64, i64* %242
  %706 = icmp sge i64 %705, 1
  store i1 %706, i1* %700
  br label %sc_and_end163
sc_and_end163:
  %707 = load i1, i1* %700
  br i1 %707, label %then164, label %else165
then164:
  %708 = load { i64, i8* }*, { i64, i8* }** %239
  %709 = call i64 @nyx_array_get({ i64, i8* }* %708, i64 0)
  %710 = inttoptr i64 %709 to { i64, i8* }*
  %711 = alloca { i64, i8* }*
  store { i64, i8* }* %710, { i64, i8* }** %711
  %712 = load { i64, i8* }*, { i64, i8* }** %244
  %713 = load { i64, i8* }*, { i64, i8* }** %711
  %714 = ptrtoint { i64, i8* }* %713 to i64
  call void @nyx_array_push({ i64, i8* }* %712, i64 %714)
  %715 = load { i64, i8* }*, { i64, i8* }** %244
  ret { i64, i8* }* %715
else165:
  br label %merge166
merge166:
  %716 = alloca i1
  store i1 false, i1* %716
  %717 = load %nyx_string*, %nyx_string** %236
  %718 = getelementptr [12 x i8], [12 x i8]* @.str28, i32 0, i32 0
  %719 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str28.c, i8* %718)
  %720 = call i1 @nyx_string_equals(%nyx_string* %717, %nyx_string* %719)
  br i1 %720, label %sc_and_rhs167, label %sc_and_end168
sc_and_rhs167:
  %721 = load i64, i64* %242
  %722 = icmp sge i64 %721, 2
  store i1 %722, i1* %716
  br label %sc_and_end168
sc_and_end168:
  %723 = load i1, i1* %716
  br i1 %723, label %then169, label %else170
then169:
  %724 = load { i64, i8* }*, { i64, i8* }** %239
  %725 = call i64 @nyx_array_get({ i64, i8* }* %724, i64 1)
  %726 = inttoptr i64 %725 to { i64, i8* }*
  %727 = alloca { i64, i8* }*
  store { i64, i8* }* %726, { i64, i8* }** %727
  %728 = alloca i64
  store i64 0, i64* %728
  br label %while_cond172
while_cond172:
  %729 = load i64, i64* %728
  %730 = load { i64, i8* }*, { i64, i8* }** %727
  %731 = call i64 @nyx_array_length({ i64, i8* }* %730)
  %732 = icmp slt i64 %729, %731
  br i1 %732, label %while_body173, label %while_end174
while_body173:
  %733 = load { i64, i8* }*, { i64, i8* }** %727
  %734 = load i64, i64* %728
  %735 = call i64 @nyx_array_get({ i64, i8* }* %733, i64 %734)
  %736 = inttoptr i64 %735 to { i64, i8* }*
  %737 = alloca { i64, i8* }*
  store { i64, i8* }* %736, { i64, i8* }** %737
  %738 = load { i64, i8* }*, { i64, i8* }** %737
  %739 = call i64 @nyx_array_length({ i64, i8* }* %738)
  %740 = icmp sge i64 %739, 2
  br i1 %740, label %then175, label %else176
then175:
  %741 = load { i64, i8* }*, { i64, i8* }** %737
  %742 = call i64 @nyx_array_get({ i64, i8* }* %741, i64 1)
  %743 = inttoptr i64 %742 to { i64, i8* }*
  %744 = alloca { i64, i8* }*
  store { i64, i8* }* %743, { i64, i8* }** %744
  %745 = load { i64, i8* }*, { i64, i8* }** %244
  %746 = load { i64, i8* }*, { i64, i8* }** %744
  %747 = ptrtoint { i64, i8* }* %746 to i64
  call void @nyx_array_push({ i64, i8* }* %745, i64 %747)
  br label %merge177
else176:
  br label %merge177
merge177:
  %748 = load i64, i64* %728
  %749 = add i64 %748, 1
  store i64 %749, i64* %728
  br label %while_cond172
while_end174:
  %750 = load { i64, i8* }*, { i64, i8* }** %244
  ret { i64, i8* }* %750
else170:
  br label %merge171
merge171:
  %751 = alloca i1
  store i1 false, i1* %751
  %752 = load %nyx_string*, %nyx_string** %236
  %753 = getelementptr [7 x i8], [7 x i8]* @.str29, i32 0, i32 0
  %754 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str29.c, i8* %753)
  %755 = call i1 @nyx_string_equals(%nyx_string* %752, %nyx_string* %754)
  br i1 %755, label %sc_and_rhs178, label %sc_and_end179
sc_and_rhs178:
  %756 = load i64, i64* %242
  %757 = icmp sge i64 %756, 1
  store i1 %757, i1* %751
  br label %sc_and_end179
sc_and_end179:
  %758 = load i1, i1* %751
  br i1 %758, label %then180, label %else181
then180:
  %759 = load { i64, i8* }*, { i64, i8* }** %239
  %760 = call i64 @nyx_array_get({ i64, i8* }* %759, i64 0)
  %761 = inttoptr i64 %760 to { i64, i8* }*
  %762 = alloca { i64, i8* }*
  store { i64, i8* }* %761, { i64, i8* }** %762
  %763 = load { i64, i8* }*, { i64, i8* }** %244
  %764 = load { i64, i8* }*, { i64, i8* }** %762
  %765 = ptrtoint { i64, i8* }* %764 to i64
  call void @nyx_array_push({ i64, i8* }* %763, i64 %765)
  %766 = load { i64, i8* }*, { i64, i8* }** %244
  ret { i64, i8* }* %766
else181:
  br label %merge182
merge182:
  %767 = alloca i1
  store i1 false, i1* %767
  %768 = load %nyx_string*, %nyx_string** %236
  %769 = getelementptr [5 x i8], [5 x i8]* @.str30, i32 0, i32 0
  %770 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str30.c, i8* %769)
  %771 = call i1 @nyx_string_equals(%nyx_string* %768, %nyx_string* %770)
  br i1 %771, label %sc_and_rhs183, label %sc_and_end184
sc_and_rhs183:
  %772 = load i64, i64* %242
  %773 = icmp sge i64 %772, 1
  store i1 %773, i1* %767
  br label %sc_and_end184
sc_and_end184:
  %774 = load i1, i1* %767
  br i1 %774, label %then185, label %else186
then185:
  %775 = load { i64, i8* }*, { i64, i8* }** %239
  %776 = call i64 @nyx_array_get({ i64, i8* }* %775, i64 0)
  %777 = inttoptr i64 %776 to { i64, i8* }*
  %778 = alloca { i64, i8* }*
  store { i64, i8* }* %777, { i64, i8* }** %778
  %779 = load { i64, i8* }*, { i64, i8* }** %244
  %780 = load { i64, i8* }*, { i64, i8* }** %778
  %781 = ptrtoint { i64, i8* }* %780 to i64
  call void @nyx_array_push({ i64, i8* }* %779, i64 %781)
  %782 = load { i64, i8* }*, { i64, i8* }** %244
  ret { i64, i8* }* %782
else186:
  br label %merge187
merge187:
  %783 = alloca i1
  store i1 false, i1* %783
  %784 = load %nyx_string*, %nyx_string** %236
  %785 = getelementptr [6 x i8], [6 x i8]* @.str31, i32 0, i32 0
  %786 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str31.c, i8* %785)
  %787 = call i1 @nyx_string_equals(%nyx_string* %784, %nyx_string* %786)
  br i1 %787, label %sc_and_rhs188, label %sc_and_end189
sc_and_rhs188:
  %788 = load i64, i64* %242
  %789 = icmp sge i64 %788, 2
  store i1 %789, i1* %783
  br label %sc_and_end189
sc_and_end189:
  %790 = load i1, i1* %783
  br i1 %790, label %then190, label %else191
then190:
  %791 = load { i64, i8* }*, { i64, i8* }** %239
  %792 = call i64 @nyx_array_get({ i64, i8* }* %791, i64 0)
  %793 = inttoptr i64 %792 to { i64, i8* }*
  %794 = alloca { i64, i8* }*
  store { i64, i8* }* %793, { i64, i8* }** %794
  %795 = load { i64, i8* }*, { i64, i8* }** %239
  %796 = call i64 @nyx_array_get({ i64, i8* }* %795, i64 1)
  %797 = inttoptr i64 %796 to { i64, i8* }*
  %798 = alloca { i64, i8* }*
  store { i64, i8* }* %797, { i64, i8* }** %798
  %799 = load { i64, i8* }*, { i64, i8* }** %244
  %800 = load { i64, i8* }*, { i64, i8* }** %794
  %801 = ptrtoint { i64, i8* }* %800 to i64
  call void @nyx_array_push({ i64, i8* }* %799, i64 %801)
  %802 = load { i64, i8* }*, { i64, i8* }** %244
  %803 = load { i64, i8* }*, { i64, i8* }** %798
  %804 = ptrtoint { i64, i8* }* %803 to i64
  call void @nyx_array_push({ i64, i8* }* %802, i64 %804)
  %805 = load { i64, i8* }*, { i64, i8* }** %244
  ret { i64, i8* }* %805
else191:
  br label %merge192
merge192:
  %806 = load { i64, i8* }*, { i64, i8* }** %244
  ret { i64, i8* }* %806
}

define internal { i64, i8* }* @licm_rewrite(
{ i64, i8* }* %node.param, { i64, i8* }* %litmap.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %litmap.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %litmap.param, { i64, i8* }** %litmap.ptr
  %807 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %808 = call %ASTNode @licm_root_of({ i64, i8* }* %807)
  %809 = alloca %ASTNode
  store %ASTNode %808, %ASTNode* %809
  %810 = getelementptr %ASTNode, %ASTNode* %809, i32 0, i32 0
  %811 = load %nyx_string*, %nyx_string** %810
  %812 = alloca %nyx_string*
  store %nyx_string* %811, %nyx_string** %812
  %813 = getelementptr %ASTNode, %ASTNode* %809, i32 0, i32 1
  %814 = load { i64, i8* }*, { i64, i8* }** %813
  %815 = alloca { i64, i8* }*
  store { i64, i8* }* %814, { i64, i8* }** %815
  %816 = load %nyx_string*, %nyx_string** %812
  %817 = getelementptr [9 x i8], [9 x i8]* @.str32, i32 0, i32 0
  %818 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str32.c, i8* %817)
  %819 = call i1 @nyx_string_equals(%nyx_string* %816, %nyx_string* %818)
  br i1 %819, label %then193, label %else194
then193:
  %820 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  ret { i64, i8* }* %820
else194:
  br label %merge195
merge195:
  %821 = load %nyx_string*, %nyx_string** %812
  %822 = getelementptr [9 x i8], [9 x i8]* @.str33, i32 0, i32 0
  %823 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str33.c, i8* %822)
  %824 = call i1 @nyx_string_equals(%nyx_string* %821, %nyx_string* %823)
  br i1 %824, label %then196, label %else197
then196:
  %825 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  ret { i64, i8* }* %825
else197:
  br label %merge198
merge198:
  %826 = load %nyx_string*, %nyx_string** %812
  %827 = getelementptr [7 x i8], [7 x i8]* @.str34, i32 0, i32 0
  %828 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str34.c, i8* %827)
  %829 = call i1 @nyx_string_equals(%nyx_string* %826, %nyx_string* %828)
  br i1 %829, label %then199, label %else200
then199:
  %830 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  ret { i64, i8* }* %830
else200:
  br label %merge201
merge201:
  %831 = load %nyx_string*, %nyx_string** %812
  %832 = getelementptr [8 x i8], [8 x i8]* @.str35, i32 0, i32 0
  %833 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str35.c, i8* %832)
  %834 = call i1 @nyx_string_equals(%nyx_string* %831, %nyx_string* %833)
  br i1 %834, label %then202, label %else203
then202:
  %835 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  ret { i64, i8* }* %835
else203:
  br label %merge204
merge204:
  %836 = load %nyx_string*, %nyx_string** %812
  %837 = getelementptr [6 x i8], [6 x i8]* @.str36, i32 0, i32 0
  %838 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str36.c, i8* %837)
  %839 = call i1 @nyx_string_equals(%nyx_string* %836, %nyx_string* %838)
  br i1 %839, label %then205, label %else206
then205:
  %840 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  ret { i64, i8* }* %840
else206:
  br label %merge207
merge207:
  %841 = alloca i1
  store i1 false, i1* %841
  %842 = load %nyx_string*, %nyx_string** %812
  %843 = getelementptr [7 x i8], [7 x i8]* @.str37, i32 0, i32 0
  %844 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str37.c, i8* %843)
  %845 = call i1 @nyx_string_equals(%nyx_string* %842, %nyx_string* %844)
  br i1 %845, label %sc_and_rhs208, label %sc_and_end209
sc_and_rhs208:
  %846 = load { i64, i8* }*, { i64, i8* }** %815
  %847 = call i64 @nyx_array_length({ i64, i8* }* %846)
  %848 = icmp sge i64 %847, 1
  store i1 %848, i1* %841
  br label %sc_and_end209
sc_and_end209:
  %849 = load i1, i1* %841
  br i1 %849, label %then210, label %else211
then210:
  %850 = load { i64, i8* }*, { i64, i8* }** %815
  %851 = call i64 @nyx_array_get({ i64, i8* }* %850, i64 0)
  %852 = inttoptr i64 %851 to %nyx_string*
  %853 = alloca %nyx_string*
  store %nyx_string* %852, %nyx_string** %853
  %854 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %855 = load %nyx_string*, %nyx_string** %853
  %856 = call %nyx_string* @licm_lookup({ i64, i8* }* %854, %nyx_string* %855)
  %857 = alloca %nyx_string*
  store %nyx_string* %856, %nyx_string** %857
  %858 = load %nyx_string*, %nyx_string** %857
  %859 = getelementptr [1 x i8], [1 x i8]* @.str38, i32 0, i32 0
  %860 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str38.c, i8* %859)
  %861 = call i1 @nyx_string_equals(%nyx_string* %858, %nyx_string* %860)
  %862 = xor i1 %861, true
  br i1 %862, label %then213, label %else214
then213:
  %863 = getelementptr [11 x i8], [11 x i8]* @.str39, i32 0, i32 0
  %864 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str39.c, i8* %863)
  %865 = call { i64, i8* }* @nyx_array_new_ptr()
  %866 = load %nyx_string*, %nyx_string** %857
  %867 = ptrtoint %nyx_string* %866 to i64
  call void @nyx_array_push({ i64, i8* }* %865, i64 %867)
  %868 = call { i64, i8* }* @licm_make(%nyx_string* %864, { i64, i8* }* %865)
  ret { i64, i8* }* %868
else214:
  br label %merge215
merge215:
  %869 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  ret { i64, i8* }* %869
else211:
  br label %merge212
merge212:
  %870 = alloca i1
  store i1 false, i1* %870
  %871 = load %nyx_string*, %nyx_string** %812
  %872 = getelementptr [6 x i8], [6 x i8]* @.str40, i32 0, i32 0
  %873 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str40.c, i8* %872)
  %874 = call i1 @nyx_string_equals(%nyx_string* %871, %nyx_string* %873)
  br i1 %874, label %sc_and_rhs216, label %sc_and_end217
sc_and_rhs216:
  %875 = load { i64, i8* }*, { i64, i8* }** %815
  %876 = call i64 @nyx_array_length({ i64, i8* }* %875)
  %877 = icmp sge i64 %876, 2
  store i1 %877, i1* %870
  br label %sc_and_end217
sc_and_end217:
  %878 = load i1, i1* %870
  br i1 %878, label %then218, label %else219
then218:
  %879 = load { i64, i8* }*, { i64, i8* }** %815
  %880 = call i64 @nyx_array_get({ i64, i8* }* %879, i64 0)
  %881 = inttoptr i64 %880 to { i64, i8* }*
  %882 = alloca { i64, i8* }*
  store { i64, i8* }* %881, { i64, i8* }** %882
  %883 = load { i64, i8* }*, { i64, i8* }** %815
  %884 = call i64 @nyx_array_get({ i64, i8* }* %883, i64 1)
  %885 = inttoptr i64 %884 to { i64, i8* }*
  %886 = alloca { i64, i8* }*
  store { i64, i8* }* %885, { i64, i8* }** %886
  %887 = call { i64, i8* }* @nyx_array_new_ptr()
  %888 = alloca { i64, i8* }*
  store { i64, i8* }* %887, { i64, i8* }** %888
  %889 = alloca i64
  store i64 0, i64* %889
  %890 = getelementptr [10 x i8], [10 x i8]* @.str41, i32 0, i32 0
  %891 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str41.c, i8* %890)
  %892 = alloca %nyx_string*
  store %nyx_string* %891, %nyx_string** %892
  br label %while_cond221
while_cond221:
  %893 = load i64, i64* %889
  %894 = load { i64, i8* }*, { i64, i8* }** %886
  %895 = call i64 @nyx_array_length({ i64, i8* }* %894)
  %896 = icmp slt i64 %893, %895
  br i1 %896, label %while_body222, label %while_end223
while_body222:
  %897 = load { i64, i8* }*, { i64, i8* }** %886
  %898 = load i64, i64* %889
  %899 = call i64 @nyx_array_get({ i64, i8* }* %897, i64 %898)
  %900 = inttoptr i64 %899 to { i64, i8* }*
  %901 = alloca { i64, i8* }*
  store { i64, i8* }* %900, { i64, i8* }** %901
  %902 = load { i64, i8* }*, { i64, i8* }** %901
  %903 = call %ASTNode @licm_root_of({ i64, i8* }* %902)
  %904 = alloca %ASTNode
  store %ASTNode %903, %ASTNode* %904
  %905 = getelementptr %ASTNode, %ASTNode* %904, i32 0, i32 1
  %906 = load { i64, i8* }*, { i64, i8* }** %905
  %907 = alloca { i64, i8* }*
  store { i64, i8* }* %906, { i64, i8* }** %907
  %908 = load { i64, i8* }*, { i64, i8* }** %907
  %909 = call i64 @nyx_array_length({ i64, i8* }* %908)
  %910 = icmp sge i64 %909, 3
  br i1 %910, label %then224, label %else225
then224:
  %911 = load { i64, i8* }*, { i64, i8* }** %907
  %912 = call i64 @nyx_array_get({ i64, i8* }* %911, i64 0)
  %913 = alloca i64
  store i64 %912, i64* %913
  %914 = load { i64, i8* }*, { i64, i8* }** %907
  %915 = call i64 @nyx_array_get({ i64, i8* }* %914, i64 1)
  %916 = inttoptr i64 %915 to { i64, i8* }*
  %917 = alloca { i64, i8* }*
  store { i64, i8* }* %916, { i64, i8* }** %917
  %918 = load { i64, i8* }*, { i64, i8* }** %907
  %919 = call i64 @nyx_array_get({ i64, i8* }* %918, i64 2)
  %920 = inttoptr i64 %919 to { i64, i8* }*
  %921 = alloca { i64, i8* }*
  store { i64, i8* }* %920, { i64, i8* }** %921
  %922 = load { i64, i8* }*, { i64, i8* }** %917
  %923 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %924 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %922, { i64, i8* }* %923)
  %925 = alloca { i64, i8* }*
  store { i64, i8* }* %924, { i64, i8* }** %925
  %926 = load { i64, i8* }*, { i64, i8* }** %921
  %927 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %928 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %926, { i64, i8* }* %927)
  %929 = alloca { i64, i8* }*
  store { i64, i8* }* %928, { i64, i8* }** %929
  %930 = load { i64, i8* }*, { i64, i8* }** %888
  %931 = load %nyx_string*, %nyx_string** %892
  %932 = call { i64, i8* }* @nyx_array_new_ptr()
  %933 = load i64, i64* %913
  call void @nyx_array_push({ i64, i8* }* %932, i64 %933)
  %934 = load { i64, i8* }*, { i64, i8* }** %925
  %935 = bitcast { i64, i8* }* %934 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %932, i8* %935)
  %936 = load { i64, i8* }*, { i64, i8* }** %929
  %937 = bitcast { i64, i8* }* %936 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %932, i8* %937)
  %938 = call { i64, i8* }* @licm_make(%nyx_string* %931, { i64, i8* }* %932)
  %939 = ptrtoint { i64, i8* }* %938 to i64
  call void @nyx_array_push({ i64, i8* }* %930, i64 %939)
  br label %merge226
else225:
  %940 = load { i64, i8* }*, { i64, i8* }** %888
  %941 = load { i64, i8* }*, { i64, i8* }** %901
  %942 = ptrtoint { i64, i8* }* %941 to i64
  call void @nyx_array_push({ i64, i8* }* %940, i64 %942)
  br label %merge226
merge226:
  %943 = load i64, i64* %889
  %944 = add i64 %943, 1
  store i64 %944, i64* %889
  br label %while_cond221
while_end223:
  %945 = getelementptr [6 x i8], [6 x i8]* @.str42, i32 0, i32 0
  %946 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str42.c, i8* %945)
  %947 = call { i64, i8* }* @nyx_array_new_ptr()
  %948 = load { i64, i8* }*, { i64, i8* }** %882
  %949 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %950 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %948, { i64, i8* }* %949)
  %951 = bitcast { i64, i8* }* %950 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %947, i8* %951)
  %952 = load { i64, i8* }*, { i64, i8* }** %888
  %953 = bitcast { i64, i8* }* %952 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %947, i8* %953)
  %954 = call { i64, i8* }* @licm_make(%nyx_string* %946, { i64, i8* }* %947)
  ret { i64, i8* }* %954
else219:
  br label %merge220
merge220:
  %955 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %956 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %957 = call { i64, i8* }* @licm_rebuild_children({ i64, i8* }* %955, { i64, i8* }* %956)
  ret { i64, i8* }* %957
}

define internal { i64, i8* }* @licm_rebuild_children(
{ i64, i8* }* %node.param, { i64, i8* }* %litmap.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %litmap.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %litmap.param, { i64, i8* }** %litmap.ptr
  %958 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %959 = call %ASTNode @licm_root_of({ i64, i8* }* %958)
  %960 = alloca %ASTNode
  store %ASTNode %959, %ASTNode* %960
  %961 = getelementptr %ASTNode, %ASTNode* %960, i32 0, i32 0
  %962 = load %nyx_string*, %nyx_string** %961
  %963 = alloca %nyx_string*
  store %nyx_string* %962, %nyx_string** %963
  %964 = getelementptr %ASTNode, %ASTNode* %960, i32 0, i32 1
  %965 = load { i64, i8* }*, { i64, i8* }** %964
  %966 = alloca { i64, i8* }*
  store { i64, i8* }* %965, { i64, i8* }** %966
  %967 = load { i64, i8* }*, { i64, i8* }** %966
  %968 = call i64 @nyx_array_length({ i64, i8* }* %967)
  %969 = alloca i64
  store i64 %968, i64* %969
  %970 = alloca i1
  store i1 false, i1* %970
  %971 = load %nyx_string*, %nyx_string** %963
  %972 = getelementptr [6 x i8], [6 x i8]* @.str43, i32 0, i32 0
  %973 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str43.c, i8* %972)
  %974 = call i1 @nyx_string_equals(%nyx_string* %971, %nyx_string* %973)
  br i1 %974, label %sc_and_rhs227, label %sc_and_end228
sc_and_rhs227:
  %975 = load i64, i64* %969
  %976 = icmp sge i64 %975, 3
  store i1 %976, i1* %970
  br label %sc_and_end228
sc_and_end228:
  %977 = load i1, i1* %970
  br i1 %977, label %then229, label %else230
then229:
  %978 = load { i64, i8* }*, { i64, i8* }** %966
  %979 = call i64 @nyx_array_get({ i64, i8* }* %978, i64 0)
  %980 = inttoptr i64 %979 to %nyx_string*
  %981 = alloca %nyx_string*
  store %nyx_string* %980, %nyx_string** %981
  %982 = load { i64, i8* }*, { i64, i8* }** %966
  %983 = call i64 @nyx_array_get({ i64, i8* }* %982, i64 1)
  %984 = inttoptr i64 %983 to { i64, i8* }*
  %985 = alloca { i64, i8* }*
  store { i64, i8* }* %984, { i64, i8* }** %985
  %986 = load { i64, i8* }*, { i64, i8* }** %966
  %987 = call i64 @nyx_array_get({ i64, i8* }* %986, i64 2)
  %988 = inttoptr i64 %987 to { i64, i8* }*
  %989 = alloca { i64, i8* }*
  store { i64, i8* }* %988, { i64, i8* }** %989
  %990 = load %nyx_string*, %nyx_string** %963
  %991 = call { i64, i8* }* @nyx_array_new_ptr()
  %992 = load %nyx_string*, %nyx_string** %981
  %993 = ptrtoint %nyx_string* %992 to i64
  call void @nyx_array_push({ i64, i8* }* %991, i64 %993)
  %994 = load { i64, i8* }*, { i64, i8* }** %985
  %995 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %996 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %994, { i64, i8* }* %995)
  %997 = bitcast { i64, i8* }* %996 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %991, i8* %997)
  %998 = load { i64, i8* }*, { i64, i8* }** %989
  %999 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1000 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %998, { i64, i8* }* %999)
  %1001 = bitcast { i64, i8* }* %1000 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %991, i8* %1001)
  %1002 = call { i64, i8* }* @licm_make(%nyx_string* %990, { i64, i8* }* %991)
  ret { i64, i8* }* %1002
else230:
  br label %merge231
merge231:
  %1003 = alloca i1
  store i1 false, i1* %1003
  %1004 = load %nyx_string*, %nyx_string** %963
  %1005 = getelementptr [5 x i8], [5 x i8]* @.str44, i32 0, i32 0
  %1006 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str44.c, i8* %1005)
  %1007 = call i1 @nyx_string_equals(%nyx_string* %1004, %nyx_string* %1006)
  br i1 %1007, label %sc_and_rhs232, label %sc_and_end233
sc_and_rhs232:
  %1008 = load i64, i64* %969
  %1009 = icmp sge i64 %1008, 2
  store i1 %1009, i1* %1003
  br label %sc_and_end233
sc_and_end233:
  %1010 = load i1, i1* %1003
  br i1 %1010, label %then234, label %else235
then234:
  %1011 = load { i64, i8* }*, { i64, i8* }** %966
  %1012 = call i64 @nyx_array_get({ i64, i8* }* %1011, i64 0)
  %1013 = inttoptr i64 %1012 to %nyx_string*
  %1014 = alloca %nyx_string*
  store %nyx_string* %1013, %nyx_string** %1014
  %1015 = load { i64, i8* }*, { i64, i8* }** %966
  %1016 = call i64 @nyx_array_get({ i64, i8* }* %1015, i64 1)
  %1017 = inttoptr i64 %1016 to { i64, i8* }*
  %1018 = alloca { i64, i8* }*
  store { i64, i8* }* %1017, { i64, i8* }** %1018
  %1019 = load %nyx_string*, %nyx_string** %963
  %1020 = call { i64, i8* }* @nyx_array_new_ptr()
  %1021 = load %nyx_string*, %nyx_string** %1014
  %1022 = ptrtoint %nyx_string* %1021 to i64
  call void @nyx_array_push({ i64, i8* }* %1020, i64 %1022)
  %1023 = load { i64, i8* }*, { i64, i8* }** %1018
  %1024 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1025 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1023, { i64, i8* }* %1024)
  %1026 = bitcast { i64, i8* }* %1025 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1020, i8* %1026)
  %1027 = call { i64, i8* }* @licm_make(%nyx_string* %1019, { i64, i8* }* %1020)
  ret { i64, i8* }* %1027
else235:
  br label %merge236
merge236:
  %1028 = alloca i1
  store i1 false, i1* %1028
  %1029 = load %nyx_string*, %nyx_string** %963
  %1030 = getelementptr [5 x i8], [5 x i8]* @.str45, i32 0, i32 0
  %1031 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str45.c, i8* %1030)
  %1032 = call i1 @nyx_string_equals(%nyx_string* %1029, %nyx_string* %1031)
  br i1 %1032, label %sc_and_rhs237, label %sc_and_end238
sc_and_rhs237:
  %1033 = load i64, i64* %969
  %1034 = icmp sge i64 %1033, 2
  store i1 %1034, i1* %1028
  br label %sc_and_end238
sc_and_end238:
  %1035 = load i1, i1* %1028
  br i1 %1035, label %then239, label %else240
then239:
  %1036 = load { i64, i8* }*, { i64, i8* }** %966
  %1037 = call i64 @nyx_array_get({ i64, i8* }* %1036, i64 0)
  %1038 = inttoptr i64 %1037 to { i64, i8* }*
  %1039 = alloca { i64, i8* }*
  store { i64, i8* }* %1038, { i64, i8* }** %1039
  %1040 = load { i64, i8* }*, { i64, i8* }** %966
  %1041 = call i64 @nyx_array_get({ i64, i8* }* %1040, i64 1)
  %1042 = inttoptr i64 %1041 to { i64, i8* }*
  %1043 = alloca { i64, i8* }*
  store { i64, i8* }* %1042, { i64, i8* }** %1043
  %1044 = call { i64, i8* }* @nyx_array_new_ptr()
  %1045 = alloca { i64, i8* }*
  store { i64, i8* }* %1044, { i64, i8* }** %1045
  %1046 = alloca i64
  store i64 0, i64* %1046
  br label %while_cond242
while_cond242:
  %1047 = load i64, i64* %1046
  %1048 = load { i64, i8* }*, { i64, i8* }** %1043
  %1049 = call i64 @nyx_array_length({ i64, i8* }* %1048)
  %1050 = icmp slt i64 %1047, %1049
  br i1 %1050, label %while_body243, label %while_end244
while_body243:
  %1051 = load { i64, i8* }*, { i64, i8* }** %1043
  %1052 = load i64, i64* %1046
  %1053 = call i64 @nyx_array_get({ i64, i8* }* %1051, i64 %1052)
  %1054 = inttoptr i64 %1053 to { i64, i8* }*
  %1055 = alloca { i64, i8* }*
  store { i64, i8* }* %1054, { i64, i8* }** %1055
  %1056 = load { i64, i8* }*, { i64, i8* }** %1045
  %1057 = load { i64, i8* }*, { i64, i8* }** %1055
  %1058 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1059 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1057, { i64, i8* }* %1058)
  %1060 = ptrtoint { i64, i8* }* %1059 to i64
  call void @nyx_array_push({ i64, i8* }* %1056, i64 %1060)
  %1061 = load i64, i64* %1046
  %1062 = add i64 %1061, 1
  store i64 %1062, i64* %1046
  br label %while_cond242
while_end244:
  %1063 = load %nyx_string*, %nyx_string** %963
  %1064 = call { i64, i8* }* @nyx_array_new_ptr()
  %1065 = load { i64, i8* }*, { i64, i8* }** %1039
  %1066 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1067 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1065, { i64, i8* }* %1066)
  %1068 = bitcast { i64, i8* }* %1067 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1064, i8* %1068)
  %1069 = load { i64, i8* }*, { i64, i8* }** %1045
  %1070 = bitcast { i64, i8* }* %1069 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1064, i8* %1070)
  %1071 = call { i64, i8* }* @licm_make(%nyx_string* %1063, { i64, i8* }* %1064)
  ret { i64, i8* }* %1071
else240:
  br label %merge241
merge241:
  %1072 = alloca i1
  store i1 false, i1* %1072
  %1073 = load %nyx_string*, %nyx_string** %963
  %1074 = getelementptr [12 x i8], [12 x i8]* @.str46, i32 0, i32 0
  %1075 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str46.c, i8* %1074)
  %1076 = call i1 @nyx_string_equals(%nyx_string* %1073, %nyx_string* %1075)
  br i1 %1076, label %sc_and_rhs245, label %sc_and_end246
sc_and_rhs245:
  %1077 = load i64, i64* %969
  %1078 = icmp sge i64 %1077, 3
  store i1 %1078, i1* %1072
  br label %sc_and_end246
sc_and_end246:
  %1079 = load i1, i1* %1072
  br i1 %1079, label %then247, label %else248
then247:
  %1080 = load { i64, i8* }*, { i64, i8* }** %966
  %1081 = call i64 @nyx_array_get({ i64, i8* }* %1080, i64 0)
  %1082 = inttoptr i64 %1081 to { i64, i8* }*
  %1083 = alloca { i64, i8* }*
  store { i64, i8* }* %1082, { i64, i8* }** %1083
  %1084 = load { i64, i8* }*, { i64, i8* }** %966
  %1085 = call i64 @nyx_array_get({ i64, i8* }* %1084, i64 1)
  %1086 = inttoptr i64 %1085 to %nyx_string*
  %1087 = alloca %nyx_string*
  store %nyx_string* %1086, %nyx_string** %1087
  %1088 = load { i64, i8* }*, { i64, i8* }** %966
  %1089 = call i64 @nyx_array_get({ i64, i8* }* %1088, i64 2)
  %1090 = inttoptr i64 %1089 to { i64, i8* }*
  %1091 = alloca { i64, i8* }*
  store { i64, i8* }* %1090, { i64, i8* }** %1091
  %1092 = call { i64, i8* }* @nyx_array_new_ptr()
  %1093 = alloca { i64, i8* }*
  store { i64, i8* }* %1092, { i64, i8* }** %1093
  %1094 = alloca i64
  store i64 0, i64* %1094
  br label %while_cond250
while_cond250:
  %1095 = load i64, i64* %1094
  %1096 = load { i64, i8* }*, { i64, i8* }** %1091
  %1097 = call i64 @nyx_array_length({ i64, i8* }* %1096)
  %1098 = icmp slt i64 %1095, %1097
  br i1 %1098, label %while_body251, label %while_end252
while_body251:
  %1099 = load { i64, i8* }*, { i64, i8* }** %1091
  %1100 = load i64, i64* %1094
  %1101 = call i64 @nyx_array_get({ i64, i8* }* %1099, i64 %1100)
  %1102 = inttoptr i64 %1101 to { i64, i8* }*
  %1103 = alloca { i64, i8* }*
  store { i64, i8* }* %1102, { i64, i8* }** %1103
  %1104 = load { i64, i8* }*, { i64, i8* }** %1093
  %1105 = load { i64, i8* }*, { i64, i8* }** %1103
  %1106 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1107 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1105, { i64, i8* }* %1106)
  %1108 = ptrtoint { i64, i8* }* %1107 to i64
  call void @nyx_array_push({ i64, i8* }* %1104, i64 %1108)
  %1109 = load i64, i64* %1094
  %1110 = add i64 %1109, 1
  store i64 %1110, i64* %1094
  br label %while_cond250
while_end252:
  %1111 = load %nyx_string*, %nyx_string** %963
  %1112 = call { i64, i8* }* @nyx_array_new_ptr()
  %1113 = load { i64, i8* }*, { i64, i8* }** %1083
  %1114 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1115 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1113, { i64, i8* }* %1114)
  %1116 = bitcast { i64, i8* }* %1115 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1112, i8* %1116)
  %1117 = load %nyx_string*, %nyx_string** %1087
  %1118 = ptrtoint %nyx_string* %1117 to i64
  call void @nyx_array_push({ i64, i8* }* %1112, i64 %1118)
  %1119 = load { i64, i8* }*, { i64, i8* }** %1093
  %1120 = bitcast { i64, i8* }* %1119 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1112, i8* %1120)
  %1121 = call { i64, i8* }* @licm_make(%nyx_string* %1111, { i64, i8* }* %1112)
  ret { i64, i8* }* %1121
else248:
  br label %merge249
merge249:
  %1122 = alloca i1
  store i1 false, i1* %1122
  %1123 = load %nyx_string*, %nyx_string** %963
  %1124 = getelementptr [6 x i8], [6 x i8]* @.str47, i32 0, i32 0
  %1125 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str47.c, i8* %1124)
  %1126 = call i1 @nyx_string_equals(%nyx_string* %1123, %nyx_string* %1125)
  br i1 %1126, label %sc_and_rhs253, label %sc_and_end254
sc_and_rhs253:
  %1127 = load i64, i64* %969
  %1128 = icmp sge i64 %1127, 2
  store i1 %1128, i1* %1122
  br label %sc_and_end254
sc_and_end254:
  %1129 = load i1, i1* %1122
  br i1 %1129, label %then255, label %else256
then255:
  %1130 = load { i64, i8* }*, { i64, i8* }** %966
  %1131 = call i64 @nyx_array_get({ i64, i8* }* %1130, i64 0)
  %1132 = inttoptr i64 %1131 to { i64, i8* }*
  %1133 = alloca { i64, i8* }*
  store { i64, i8* }* %1132, { i64, i8* }** %1133
  %1134 = load { i64, i8* }*, { i64, i8* }** %966
  %1135 = call i64 @nyx_array_get({ i64, i8* }* %1134, i64 1)
  %1136 = inttoptr i64 %1135 to { i64, i8* }*
  %1137 = alloca { i64, i8* }*
  store { i64, i8* }* %1136, { i64, i8* }** %1137
  %1138 = load %nyx_string*, %nyx_string** %963
  %1139 = call { i64, i8* }* @nyx_array_new_ptr()
  %1140 = load { i64, i8* }*, { i64, i8* }** %1133
  %1141 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1142 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1140, { i64, i8* }* %1141)
  %1143 = bitcast { i64, i8* }* %1142 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1139, i8* %1143)
  %1144 = load { i64, i8* }*, { i64, i8* }** %1137
  %1145 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1146 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1144, { i64, i8* }* %1145)
  %1147 = bitcast { i64, i8* }* %1146 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1139, i8* %1147)
  %1148 = call { i64, i8* }* @licm_make(%nyx_string* %1138, { i64, i8* }* %1139)
  ret { i64, i8* }* %1148
else256:
  br label %merge257
merge257:
  %1149 = alloca i1
  store i1 false, i1* %1149
  %1150 = load %nyx_string*, %nyx_string** %963
  %1151 = getelementptr [13 x i8], [13 x i8]* @.str48, i32 0, i32 0
  %1152 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str48.c, i8* %1151)
  %1153 = call i1 @nyx_string_equals(%nyx_string* %1150, %nyx_string* %1152)
  br i1 %1153, label %sc_and_rhs258, label %sc_and_end259
sc_and_rhs258:
  %1154 = load i64, i64* %969
  %1155 = icmp sge i64 %1154, 2
  store i1 %1155, i1* %1149
  br label %sc_and_end259
sc_and_end259:
  %1156 = load i1, i1* %1149
  br i1 %1156, label %then260, label %else261
then260:
  %1157 = load { i64, i8* }*, { i64, i8* }** %966
  %1158 = call i64 @nyx_array_get({ i64, i8* }* %1157, i64 0)
  %1159 = inttoptr i64 %1158 to { i64, i8* }*
  %1160 = alloca { i64, i8* }*
  store { i64, i8* }* %1159, { i64, i8* }** %1160
  %1161 = load { i64, i8* }*, { i64, i8* }** %966
  %1162 = call i64 @nyx_array_get({ i64, i8* }* %1161, i64 1)
  %1163 = inttoptr i64 %1162 to %nyx_string*
  %1164 = alloca %nyx_string*
  store %nyx_string* %1163, %nyx_string** %1164
  %1165 = load %nyx_string*, %nyx_string** %963
  %1166 = call { i64, i8* }* @nyx_array_new_ptr()
  %1167 = load { i64, i8* }*, { i64, i8* }** %1160
  %1168 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1169 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1167, { i64, i8* }* %1168)
  %1170 = bitcast { i64, i8* }* %1169 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1166, i8* %1170)
  %1171 = load %nyx_string*, %nyx_string** %1164
  %1172 = ptrtoint %nyx_string* %1171 to i64
  call void @nyx_array_push({ i64, i8* }* %1166, i64 %1172)
  %1173 = call { i64, i8* }* @licm_make(%nyx_string* %1165, { i64, i8* }* %1166)
  ret { i64, i8* }* %1173
else261:
  br label %merge262
merge262:
  %1174 = alloca i1
  store i1 false, i1* %1174
  %1175 = load %nyx_string*, %nyx_string** %963
  %1176 = getelementptr [6 x i8], [6 x i8]* @.str49, i32 0, i32 0
  %1177 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str49.c, i8* %1176)
  %1178 = call i1 @nyx_string_equals(%nyx_string* %1175, %nyx_string* %1177)
  br i1 %1178, label %sc_and_rhs263, label %sc_and_end264
sc_and_rhs263:
  %1179 = load i64, i64* %969
  %1180 = icmp sge i64 %1179, 1
  store i1 %1180, i1* %1174
  br label %sc_and_end264
sc_and_end264:
  %1181 = load i1, i1* %1174
  br i1 %1181, label %then265, label %else266
then265:
  %1182 = load { i64, i8* }*, { i64, i8* }** %966
  %1183 = call i64 @nyx_array_get({ i64, i8* }* %1182, i64 0)
  %1184 = inttoptr i64 %1183 to { i64, i8* }*
  %1185 = alloca { i64, i8* }*
  store { i64, i8* }* %1184, { i64, i8* }** %1185
  %1186 = call { i64, i8* }* @nyx_array_new_ptr()
  %1187 = alloca { i64, i8* }*
  store { i64, i8* }* %1186, { i64, i8* }** %1187
  %1188 = alloca i64
  store i64 0, i64* %1188
  br label %while_cond268
while_cond268:
  %1189 = load i64, i64* %1188
  %1190 = load { i64, i8* }*, { i64, i8* }** %1185
  %1191 = call i64 @nyx_array_length({ i64, i8* }* %1190)
  %1192 = icmp slt i64 %1189, %1191
  br i1 %1192, label %while_body269, label %while_end270
while_body269:
  %1193 = load { i64, i8* }*, { i64, i8* }** %1185
  %1194 = load i64, i64* %1188
  %1195 = call i64 @nyx_array_get({ i64, i8* }* %1193, i64 %1194)
  %1196 = inttoptr i64 %1195 to { i64, i8* }*
  %1197 = alloca { i64, i8* }*
  store { i64, i8* }* %1196, { i64, i8* }** %1197
  %1198 = load { i64, i8* }*, { i64, i8* }** %1187
  %1199 = load { i64, i8* }*, { i64, i8* }** %1197
  %1200 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1201 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1199, { i64, i8* }* %1200)
  %1202 = ptrtoint { i64, i8* }* %1201 to i64
  call void @nyx_array_push({ i64, i8* }* %1198, i64 %1202)
  %1203 = load i64, i64* %1188
  %1204 = add i64 %1203, 1
  store i64 %1204, i64* %1188
  br label %while_cond268
while_end270:
  %1205 = load %nyx_string*, %nyx_string** %963
  %1206 = call { i64, i8* }* @nyx_array_new_ptr()
  %1207 = load { i64, i8* }*, { i64, i8* }** %1187
  %1208 = bitcast { i64, i8* }* %1207 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1206, i8* %1208)
  %1209 = call { i64, i8* }* @licm_make(%nyx_string* %1205, { i64, i8* }* %1206)
  ret { i64, i8* }* %1209
else266:
  br label %merge267
merge267:
  %1210 = alloca i1
  store i1 false, i1* %1210
  %1211 = load %nyx_string*, %nyx_string** %963
  %1212 = getelementptr [12 x i8], [12 x i8]* @.str50, i32 0, i32 0
  %1213 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str50.c, i8* %1212)
  %1214 = call i1 @nyx_string_equals(%nyx_string* %1211, %nyx_string* %1213)
  br i1 %1214, label %sc_and_rhs271, label %sc_and_end272
sc_and_rhs271:
  %1215 = load i64, i64* %969
  %1216 = icmp sge i64 %1215, 2
  store i1 %1216, i1* %1210
  br label %sc_and_end272
sc_and_end272:
  %1217 = load i1, i1* %1210
  br i1 %1217, label %then273, label %else274
then273:
  %1218 = load { i64, i8* }*, { i64, i8* }** %966
  %1219 = call i64 @nyx_array_get({ i64, i8* }* %1218, i64 0)
  %1220 = inttoptr i64 %1219 to { i64, i8* }*
  %1221 = alloca { i64, i8* }*
  store { i64, i8* }* %1220, { i64, i8* }** %1221
  %1222 = load { i64, i8* }*, { i64, i8* }** %966
  %1223 = call i64 @nyx_array_get({ i64, i8* }* %1222, i64 1)
  %1224 = inttoptr i64 %1223 to { i64, i8* }*
  %1225 = alloca { i64, i8* }*
  store { i64, i8* }* %1224, { i64, i8* }** %1225
  %1226 = call { i64, i8* }* @nyx_array_new_ptr()
  %1227 = alloca { i64, i8* }*
  store { i64, i8* }* %1226, { i64, i8* }** %1227
  %1228 = alloca i64
  store i64 0, i64* %1228
  br label %while_cond276
while_cond276:
  %1229 = load i64, i64* %1228
  %1230 = load { i64, i8* }*, { i64, i8* }** %1225
  %1231 = call i64 @nyx_array_length({ i64, i8* }* %1230)
  %1232 = icmp slt i64 %1229, %1231
  br i1 %1232, label %while_body277, label %while_end278
while_body277:
  %1233 = load { i64, i8* }*, { i64, i8* }** %1225
  %1234 = load i64, i64* %1228
  %1235 = call i64 @nyx_array_get({ i64, i8* }* %1233, i64 %1234)
  %1236 = inttoptr i64 %1235 to { i64, i8* }*
  %1237 = alloca { i64, i8* }*
  store { i64, i8* }* %1236, { i64, i8* }** %1237
  %1238 = load { i64, i8* }*, { i64, i8* }** %1227
  %1239 = load { i64, i8* }*, { i64, i8* }** %1237
  %1240 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1241 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1239, { i64, i8* }* %1240)
  %1242 = ptrtoint { i64, i8* }* %1241 to i64
  call void @nyx_array_push({ i64, i8* }* %1238, i64 %1242)
  %1243 = load i64, i64* %1228
  %1244 = add i64 %1243, 1
  store i64 %1244, i64* %1228
  br label %while_cond276
while_end278:
  %1245 = load %nyx_string*, %nyx_string** %963
  %1246 = call { i64, i8* }* @nyx_array_new_ptr()
  %1247 = load { i64, i8* }*, { i64, i8* }** %1221
  %1248 = bitcast { i64, i8* }* %1247 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1246, i8* %1248)
  %1249 = load { i64, i8* }*, { i64, i8* }** %1227
  %1250 = bitcast { i64, i8* }* %1249 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1246, i8* %1250)
  %1251 = call { i64, i8* }* @licm_make(%nyx_string* %1245, { i64, i8* }* %1246)
  ret { i64, i8* }* %1251
else274:
  br label %merge275
merge275:
  %1252 = alloca i1
  store i1 false, i1* %1252
  %1253 = load %nyx_string*, %nyx_string** %963
  %1254 = getelementptr [3 x i8], [3 x i8]* @.str51, i32 0, i32 0
  %1255 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str51.c, i8* %1254)
  %1256 = call i1 @nyx_string_equals(%nyx_string* %1253, %nyx_string* %1255)
  br i1 %1256, label %sc_and_rhs279, label %sc_and_end280
sc_and_rhs279:
  %1257 = load i64, i64* %969
  %1258 = icmp sge i64 %1257, 3
  store i1 %1258, i1* %1252
  br label %sc_and_end280
sc_and_end280:
  %1259 = load i1, i1* %1252
  br i1 %1259, label %then281, label %else282
then281:
  %1260 = load { i64, i8* }*, { i64, i8* }** %966
  %1261 = call i64 @nyx_array_get({ i64, i8* }* %1260, i64 0)
  %1262 = inttoptr i64 %1261 to { i64, i8* }*
  %1263 = alloca { i64, i8* }*
  store { i64, i8* }* %1262, { i64, i8* }** %1263
  %1264 = load { i64, i8* }*, { i64, i8* }** %966
  %1265 = call i64 @nyx_array_get({ i64, i8* }* %1264, i64 1)
  %1266 = inttoptr i64 %1265 to { i64, i8* }*
  %1267 = alloca { i64, i8* }*
  store { i64, i8* }* %1266, { i64, i8* }** %1267
  %1268 = load { i64, i8* }*, { i64, i8* }** %966
  %1269 = call i64 @nyx_array_get({ i64, i8* }* %1268, i64 2)
  %1270 = inttoptr i64 %1269 to { i64, i8* }*
  %1271 = alloca { i64, i8* }*
  store { i64, i8* }* %1270, { i64, i8* }** %1271
  %1272 = load %nyx_string*, %nyx_string** %963
  %1273 = call { i64, i8* }* @nyx_array_new_ptr()
  %1274 = load { i64, i8* }*, { i64, i8* }** %1263
  %1275 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1276 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1274, { i64, i8* }* %1275)
  %1277 = bitcast { i64, i8* }* %1276 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1273, i8* %1277)
  %1278 = load { i64, i8* }*, { i64, i8* }** %1267
  %1279 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1280 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1278, { i64, i8* }* %1279)
  %1281 = bitcast { i64, i8* }* %1280 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1273, i8* %1281)
  %1282 = load { i64, i8* }*, { i64, i8* }** %1271
  %1283 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1284 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1282, { i64, i8* }* %1283)
  %1285 = bitcast { i64, i8* }* %1284 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1273, i8* %1285)
  %1286 = call { i64, i8* }* @licm_make(%nyx_string* %1272, { i64, i8* }* %1273)
  ret { i64, i8* }* %1286
else282:
  br label %merge283
merge283:
  %1287 = alloca i1
  store i1 false, i1* %1287
  %1288 = load %nyx_string*, %nyx_string** %963
  %1289 = getelementptr [6 x i8], [6 x i8]* @.str52, i32 0, i32 0
  %1290 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str52.c, i8* %1289)
  %1291 = call i1 @nyx_string_equals(%nyx_string* %1288, %nyx_string* %1290)
  br i1 %1291, label %sc_and_rhs284, label %sc_and_end285
sc_and_rhs284:
  %1292 = load i64, i64* %969
  %1293 = icmp sge i64 %1292, 2
  store i1 %1293, i1* %1287
  br label %sc_and_end285
sc_and_end285:
  %1294 = load i1, i1* %1287
  br i1 %1294, label %then286, label %else287
then286:
  %1295 = load { i64, i8* }*, { i64, i8* }** %966
  %1296 = call i64 @nyx_array_get({ i64, i8* }* %1295, i64 0)
  %1297 = inttoptr i64 %1296 to { i64, i8* }*
  %1298 = alloca { i64, i8* }*
  store { i64, i8* }* %1297, { i64, i8* }** %1298
  %1299 = load { i64, i8* }*, { i64, i8* }** %966
  %1300 = call i64 @nyx_array_get({ i64, i8* }* %1299, i64 1)
  %1301 = inttoptr i64 %1300 to { i64, i8* }*
  %1302 = alloca { i64, i8* }*
  store { i64, i8* }* %1301, { i64, i8* }** %1302
  %1303 = load %nyx_string*, %nyx_string** %963
  %1304 = call { i64, i8* }* @nyx_array_new_ptr()
  %1305 = load { i64, i8* }*, { i64, i8* }** %1298
  %1306 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1307 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1305, { i64, i8* }* %1306)
  %1308 = bitcast { i64, i8* }* %1307 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1304, i8* %1308)
  %1309 = load { i64, i8* }*, { i64, i8* }** %1302
  %1310 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1311 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1309, { i64, i8* }* %1310)
  %1312 = bitcast { i64, i8* }* %1311 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1304, i8* %1312)
  %1313 = call { i64, i8* }* @licm_make(%nyx_string* %1303, { i64, i8* }* %1304)
  ret { i64, i8* }* %1313
else287:
  br label %merge288
merge288:
  %1314 = alloca i1
  store i1 false, i1* %1314
  %1315 = load %nyx_string*, %nyx_string** %963
  %1316 = getelementptr [4 x i8], [4 x i8]* @.str53, i32 0, i32 0
  %1317 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str53.c, i8* %1316)
  %1318 = call i1 @nyx_string_equals(%nyx_string* %1315, %nyx_string* %1317)
  br i1 %1318, label %sc_and_rhs289, label %sc_and_end290
sc_and_rhs289:
  %1319 = load i64, i64* %969
  %1320 = icmp sge i64 %1319, 4
  store i1 %1320, i1* %1314
  br label %sc_and_end290
sc_and_end290:
  %1321 = load i1, i1* %1314
  br i1 %1321, label %then291, label %else292
then291:
  %1322 = load { i64, i8* }*, { i64, i8* }** %966
  %1323 = call i64 @nyx_array_get({ i64, i8* }* %1322, i64 0)
  %1324 = inttoptr i64 %1323 to %nyx_string*
  %1325 = alloca %nyx_string*
  store %nyx_string* %1324, %nyx_string** %1325
  %1326 = load { i64, i8* }*, { i64, i8* }** %966
  %1327 = call i64 @nyx_array_get({ i64, i8* }* %1326, i64 1)
  %1328 = inttoptr i64 %1327 to { i64, i8* }*
  %1329 = alloca { i64, i8* }*
  store { i64, i8* }* %1328, { i64, i8* }** %1329
  %1330 = load { i64, i8* }*, { i64, i8* }** %966
  %1331 = call i64 @nyx_array_get({ i64, i8* }* %1330, i64 2)
  %1332 = inttoptr i64 %1331 to { i64, i8* }*
  %1333 = alloca { i64, i8* }*
  store { i64, i8* }* %1332, { i64, i8* }** %1333
  %1334 = load { i64, i8* }*, { i64, i8* }** %966
  %1335 = call i64 @nyx_array_get({ i64, i8* }* %1334, i64 3)
  %1336 = alloca i64
  store i64 %1335, i64* %1336
  %1337 = load %nyx_string*, %nyx_string** %963
  %1338 = call { i64, i8* }* @nyx_array_new_ptr()
  %1339 = load %nyx_string*, %nyx_string** %1325
  %1340 = ptrtoint %nyx_string* %1339 to i64
  call void @nyx_array_push({ i64, i8* }* %1338, i64 %1340)
  %1341 = load { i64, i8* }*, { i64, i8* }** %1329
  %1342 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1343 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1341, { i64, i8* }* %1342)
  %1344 = bitcast { i64, i8* }* %1343 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1338, i8* %1344)
  %1345 = load { i64, i8* }*, { i64, i8* }** %1333
  %1346 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1347 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1345, { i64, i8* }* %1346)
  %1348 = bitcast { i64, i8* }* %1347 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1338, i8* %1348)
  %1349 = load i64, i64* %1336
  call void @nyx_array_push({ i64, i8* }* %1338, i64 %1349)
  %1350 = call { i64, i8* }* @licm_make(%nyx_string* %1337, { i64, i8* }* %1338)
  ret { i64, i8* }* %1350
else292:
  br label %merge293
merge293:
  %1351 = alloca i1
  store i1 false, i1* %1351
  %1352 = load %nyx_string*, %nyx_string** %963
  %1353 = getelementptr [10 x i8], [10 x i8]* @.str54, i32 0, i32 0
  %1354 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str54.c, i8* %1353)
  %1355 = call i1 @nyx_string_equals(%nyx_string* %1352, %nyx_string* %1354)
  br i1 %1355, label %sc_and_rhs294, label %sc_and_end295
sc_and_rhs294:
  %1356 = load i64, i64* %969
  %1357 = icmp sge i64 %1356, 3
  store i1 %1357, i1* %1351
  br label %sc_and_end295
sc_and_end295:
  %1358 = load i1, i1* %1351
  br i1 %1358, label %then296, label %else297
then296:
  %1359 = load { i64, i8* }*, { i64, i8* }** %966
  %1360 = call i64 @nyx_array_get({ i64, i8* }* %1359, i64 0)
  %1361 = alloca i64
  store i64 %1360, i64* %1361
  %1362 = load { i64, i8* }*, { i64, i8* }** %966
  %1363 = call i64 @nyx_array_get({ i64, i8* }* %1362, i64 1)
  %1364 = inttoptr i64 %1363 to { i64, i8* }*
  %1365 = alloca { i64, i8* }*
  store { i64, i8* }* %1364, { i64, i8* }** %1365
  %1366 = load { i64, i8* }*, { i64, i8* }** %966
  %1367 = call i64 @nyx_array_get({ i64, i8* }* %1366, i64 2)
  %1368 = inttoptr i64 %1367 to { i64, i8* }*
  %1369 = alloca { i64, i8* }*
  store { i64, i8* }* %1368, { i64, i8* }** %1369
  %1370 = load %nyx_string*, %nyx_string** %963
  %1371 = call { i64, i8* }* @nyx_array_new_ptr()
  %1372 = load i64, i64* %1361
  call void @nyx_array_push({ i64, i8* }* %1371, i64 %1372)
  %1373 = load { i64, i8* }*, { i64, i8* }** %1365
  %1374 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1375 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1373, { i64, i8* }* %1374)
  %1376 = bitcast { i64, i8* }* %1375 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1371, i8* %1376)
  %1377 = load { i64, i8* }*, { i64, i8* }** %1369
  %1378 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1379 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1377, { i64, i8* }* %1378)
  %1380 = bitcast { i64, i8* }* %1379 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1371, i8* %1380)
  %1381 = call { i64, i8* }* @licm_make(%nyx_string* %1370, { i64, i8* }* %1371)
  ret { i64, i8* }* %1381
else297:
  br label %merge298
merge298:
  %1382 = alloca i1
  store i1 false, i1* %1382
  %1383 = load %nyx_string*, %nyx_string** %963
  %1384 = getelementptr [6 x i8], [6 x i8]* @.str55, i32 0, i32 0
  %1385 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str55.c, i8* %1384)
  %1386 = call i1 @nyx_string_equals(%nyx_string* %1383, %nyx_string* %1385)
  br i1 %1386, label %sc_and_rhs299, label %sc_and_end300
sc_and_rhs299:
  %1387 = load i64, i64* %969
  %1388 = icmp sge i64 %1387, 1
  store i1 %1388, i1* %1382
  br label %sc_and_end300
sc_and_end300:
  %1389 = load i1, i1* %1382
  br i1 %1389, label %then301, label %else302
then301:
  %1390 = load { i64, i8* }*, { i64, i8* }** %966
  %1391 = call i64 @nyx_array_get({ i64, i8* }* %1390, i64 0)
  %1392 = inttoptr i64 %1391 to { i64, i8* }*
  %1393 = alloca { i64, i8* }*
  store { i64, i8* }* %1392, { i64, i8* }** %1393
  %1394 = call { i64, i8* }* @nyx_array_new_ptr()
  %1395 = alloca { i64, i8* }*
  store { i64, i8* }* %1394, { i64, i8* }** %1395
  %1396 = alloca i64
  store i64 0, i64* %1396
  br label %while_cond304
while_cond304:
  %1397 = load i64, i64* %1396
  %1398 = load { i64, i8* }*, { i64, i8* }** %1393
  %1399 = call i64 @nyx_array_length({ i64, i8* }* %1398)
  %1400 = icmp slt i64 %1397, %1399
  br i1 %1400, label %while_body305, label %while_end306
while_body305:
  %1401 = load { i64, i8* }*, { i64, i8* }** %1393
  %1402 = load i64, i64* %1396
  %1403 = call i64 @nyx_array_get({ i64, i8* }* %1401, i64 %1402)
  %1404 = inttoptr i64 %1403 to { i64, i8* }*
  %1405 = alloca { i64, i8* }*
  store { i64, i8* }* %1404, { i64, i8* }** %1405
  %1406 = load { i64, i8* }*, { i64, i8* }** %1395
  %1407 = load { i64, i8* }*, { i64, i8* }** %1405
  %1408 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1409 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1407, { i64, i8* }* %1408)
  %1410 = ptrtoint { i64, i8* }* %1409 to i64
  call void @nyx_array_push({ i64, i8* }* %1406, i64 %1410)
  %1411 = load i64, i64* %1396
  %1412 = add i64 %1411, 1
  store i64 %1412, i64* %1396
  br label %while_cond304
while_end306:
  %1413 = load %nyx_string*, %nyx_string** %963
  %1414 = call { i64, i8* }* @nyx_array_new_ptr()
  %1415 = load { i64, i8* }*, { i64, i8* }** %1395
  %1416 = bitcast { i64, i8* }* %1415 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1414, i8* %1416)
  %1417 = call { i64, i8* }* @licm_make(%nyx_string* %1413, { i64, i8* }* %1414)
  ret { i64, i8* }* %1417
else302:
  br label %merge303
merge303:
  %1418 = alloca i1
  store i1 false, i1* %1418
  %1419 = load %nyx_string*, %nyx_string** %963
  %1420 = getelementptr [4 x i8], [4 x i8]* @.str56, i32 0, i32 0
  %1421 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str56.c, i8* %1420)
  %1422 = call i1 @nyx_string_equals(%nyx_string* %1419, %nyx_string* %1421)
  br i1 %1422, label %sc_and_rhs307, label %sc_and_end308
sc_and_rhs307:
  %1423 = load i64, i64* %969
  %1424 = icmp sge i64 %1423, 4
  store i1 %1424, i1* %1418
  br label %sc_and_end308
sc_and_end308:
  %1425 = load i1, i1* %1418
  br i1 %1425, label %then309, label %else310
then309:
  %1426 = load { i64, i8* }*, { i64, i8* }** %966
  %1427 = call i64 @nyx_array_get({ i64, i8* }* %1426, i64 0)
  %1428 = alloca i64
  store i64 %1427, i64* %1428
  %1429 = load { i64, i8* }*, { i64, i8* }** %966
  %1430 = call i64 @nyx_array_get({ i64, i8* }* %1429, i64 1)
  %1431 = alloca i64
  store i64 %1430, i64* %1431
  %1432 = load { i64, i8* }*, { i64, i8* }** %966
  %1433 = call i64 @nyx_array_get({ i64, i8* }* %1432, i64 2)
  %1434 = inttoptr i64 %1433 to { i64, i8* }*
  %1435 = alloca { i64, i8* }*
  store { i64, i8* }* %1434, { i64, i8* }** %1435
  %1436 = load { i64, i8* }*, { i64, i8* }** %966
  %1437 = call i64 @nyx_array_get({ i64, i8* }* %1436, i64 3)
  %1438 = alloca i64
  store i64 %1437, i64* %1438
  %1439 = load %nyx_string*, %nyx_string** %963
  %1440 = call { i64, i8* }* @nyx_array_new_ptr()
  %1441 = load i64, i64* %1428
  call void @nyx_array_push({ i64, i8* }* %1440, i64 %1441)
  %1442 = load i64, i64* %1431
  call void @nyx_array_push({ i64, i8* }* %1440, i64 %1442)
  %1443 = load { i64, i8* }*, { i64, i8* }** %1435
  %1444 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1445 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1443, { i64, i8* }* %1444)
  %1446 = bitcast { i64, i8* }* %1445 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1440, i8* %1446)
  %1447 = load i64, i64* %1438
  call void @nyx_array_push({ i64, i8* }* %1440, i64 %1447)
  %1448 = call { i64, i8* }* @licm_make(%nyx_string* %1439, { i64, i8* }* %1440)
  ret { i64, i8* }* %1448
else310:
  br label %merge311
merge311:
  %1449 = alloca i1
  store i1 false, i1* %1449
  %1450 = load %nyx_string*, %nyx_string** %963
  %1451 = getelementptr [22 x i8], [22 x i8]* @.str57, i32 0, i32 0
  %1452 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str57.c, i8* %1451)
  %1453 = call i1 @nyx_string_equals(%nyx_string* %1450, %nyx_string* %1452)
  br i1 %1453, label %sc_and_rhs312, label %sc_and_end313
sc_and_rhs312:
  %1454 = load i64, i64* %969
  %1455 = icmp sge i64 %1454, 3
  store i1 %1455, i1* %1449
  br label %sc_and_end313
sc_and_end313:
  %1456 = load i1, i1* %1449
  br i1 %1456, label %then314, label %else315
then314:
  %1457 = load { i64, i8* }*, { i64, i8* }** %966
  %1458 = call i64 @nyx_array_get({ i64, i8* }* %1457, i64 0)
  %1459 = alloca i64
  store i64 %1458, i64* %1459
  %1460 = load { i64, i8* }*, { i64, i8* }** %966
  %1461 = call i64 @nyx_array_get({ i64, i8* }* %1460, i64 1)
  %1462 = alloca i64
  store i64 %1461, i64* %1462
  %1463 = load { i64, i8* }*, { i64, i8* }** %966
  %1464 = call i64 @nyx_array_get({ i64, i8* }* %1463, i64 2)
  %1465 = inttoptr i64 %1464 to { i64, i8* }*
  %1466 = alloca { i64, i8* }*
  store { i64, i8* }* %1465, { i64, i8* }** %1466
  %1467 = load %nyx_string*, %nyx_string** %963
  %1468 = call { i64, i8* }* @nyx_array_new_ptr()
  %1469 = load i64, i64* %1459
  call void @nyx_array_push({ i64, i8* }* %1468, i64 %1469)
  %1470 = load i64, i64* %1462
  call void @nyx_array_push({ i64, i8* }* %1468, i64 %1470)
  %1471 = load { i64, i8* }*, { i64, i8* }** %1466
  %1472 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1473 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1471, { i64, i8* }* %1472)
  %1474 = bitcast { i64, i8* }* %1473 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1468, i8* %1474)
  %1475 = call { i64, i8* }* @licm_make(%nyx_string* %1467, { i64, i8* }* %1468)
  ret { i64, i8* }* %1475
else315:
  br label %merge316
merge316:
  %1476 = alloca i1
  store i1 false, i1* %1476
  %1477 = load %nyx_string*, %nyx_string** %963
  %1478 = getelementptr [7 x i8], [7 x i8]* @.str58, i32 0, i32 0
  %1479 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str58.c, i8* %1478)
  %1480 = call i1 @nyx_string_equals(%nyx_string* %1477, %nyx_string* %1479)
  br i1 %1480, label %sc_and_rhs317, label %sc_and_end318
sc_and_rhs317:
  %1481 = load i64, i64* %969
  %1482 = icmp sge i64 %1481, 2
  store i1 %1482, i1* %1476
  br label %sc_and_end318
sc_and_end318:
  %1483 = load i1, i1* %1476
  br i1 %1483, label %then319, label %else320
then319:
  %1484 = load { i64, i8* }*, { i64, i8* }** %966
  %1485 = call i64 @nyx_array_get({ i64, i8* }* %1484, i64 0)
  %1486 = alloca i64
  store i64 %1485, i64* %1486
  %1487 = load { i64, i8* }*, { i64, i8* }** %966
  %1488 = call i64 @nyx_array_get({ i64, i8* }* %1487, i64 1)
  %1489 = inttoptr i64 %1488 to { i64, i8* }*
  %1490 = alloca { i64, i8* }*
  store { i64, i8* }* %1489, { i64, i8* }** %1490
  %1491 = load %nyx_string*, %nyx_string** %963
  %1492 = call { i64, i8* }* @nyx_array_new_ptr()
  %1493 = load i64, i64* %1486
  call void @nyx_array_push({ i64, i8* }* %1492, i64 %1493)
  %1494 = load { i64, i8* }*, { i64, i8* }** %1490
  %1495 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1496 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1494, { i64, i8* }* %1495)
  %1497 = bitcast { i64, i8* }* %1496 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1492, i8* %1497)
  %1498 = call { i64, i8* }* @licm_make(%nyx_string* %1491, { i64, i8* }* %1492)
  ret { i64, i8* }* %1498
else320:
  br label %merge321
merge321:
  %1499 = alloca i1
  store i1 false, i1* %1499
  %1500 = load %nyx_string*, %nyx_string** %963
  %1501 = getelementptr [13 x i8], [13 x i8]* @.str59, i32 0, i32 0
  %1502 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str59.c, i8* %1501)
  %1503 = call i1 @nyx_string_equals(%nyx_string* %1500, %nyx_string* %1502)
  br i1 %1503, label %sc_and_rhs322, label %sc_and_end323
sc_and_rhs322:
  %1504 = load i64, i64* %969
  %1505 = icmp sge i64 %1504, 3
  store i1 %1505, i1* %1499
  br label %sc_and_end323
sc_and_end323:
  %1506 = load i1, i1* %1499
  br i1 %1506, label %then324, label %else325
then324:
  %1507 = load { i64, i8* }*, { i64, i8* }** %966
  %1508 = call i64 @nyx_array_get({ i64, i8* }* %1507, i64 0)
  %1509 = inttoptr i64 %1508 to { i64, i8* }*
  %1510 = alloca { i64, i8* }*
  store { i64, i8* }* %1509, { i64, i8* }** %1510
  %1511 = load { i64, i8* }*, { i64, i8* }** %966
  %1512 = call i64 @nyx_array_get({ i64, i8* }* %1511, i64 1)
  %1513 = inttoptr i64 %1512 to { i64, i8* }*
  %1514 = alloca { i64, i8* }*
  store { i64, i8* }* %1513, { i64, i8* }** %1514
  %1515 = load { i64, i8* }*, { i64, i8* }** %966
  %1516 = call i64 @nyx_array_get({ i64, i8* }* %1515, i64 2)
  %1517 = inttoptr i64 %1516 to { i64, i8* }*
  %1518 = alloca { i64, i8* }*
  store { i64, i8* }* %1517, { i64, i8* }** %1518
  %1519 = load %nyx_string*, %nyx_string** %963
  %1520 = call { i64, i8* }* @nyx_array_new_ptr()
  %1521 = load { i64, i8* }*, { i64, i8* }** %1510
  %1522 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1523 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1521, { i64, i8* }* %1522)
  %1524 = bitcast { i64, i8* }* %1523 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1520, i8* %1524)
  %1525 = load { i64, i8* }*, { i64, i8* }** %1514
  %1526 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1527 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1525, { i64, i8* }* %1526)
  %1528 = bitcast { i64, i8* }* %1527 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1520, i8* %1528)
  %1529 = load { i64, i8* }*, { i64, i8* }** %1518
  %1530 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1531 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1529, { i64, i8* }* %1530)
  %1532 = bitcast { i64, i8* }* %1531 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1520, i8* %1532)
  %1533 = call { i64, i8* }* @licm_make(%nyx_string* %1519, { i64, i8* }* %1520)
  ret { i64, i8* }* %1533
else325:
  br label %merge326
merge326:
  %1534 = alloca i1
  store i1 false, i1* %1534
  %1535 = load %nyx_string*, %nyx_string** %963
  %1536 = getelementptr [13 x i8], [13 x i8]* @.str60, i32 0, i32 0
  %1537 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str60.c, i8* %1536)
  %1538 = call i1 @nyx_string_equals(%nyx_string* %1535, %nyx_string* %1537)
  br i1 %1538, label %sc_and_rhs327, label %sc_and_end328
sc_and_rhs327:
  %1539 = load i64, i64* %969
  %1540 = icmp sge i64 %1539, 3
  store i1 %1540, i1* %1534
  br label %sc_and_end328
sc_and_end328:
  %1541 = load i1, i1* %1534
  br i1 %1541, label %then329, label %else330
then329:
  %1542 = load { i64, i8* }*, { i64, i8* }** %966
  %1543 = call i64 @nyx_array_get({ i64, i8* }* %1542, i64 0)
  %1544 = inttoptr i64 %1543 to { i64, i8* }*
  %1545 = alloca { i64, i8* }*
  store { i64, i8* }* %1544, { i64, i8* }** %1545
  %1546 = load { i64, i8* }*, { i64, i8* }** %966
  %1547 = call i64 @nyx_array_get({ i64, i8* }* %1546, i64 1)
  %1548 = inttoptr i64 %1547 to %nyx_string*
  %1549 = alloca %nyx_string*
  store %nyx_string* %1548, %nyx_string** %1549
  %1550 = load { i64, i8* }*, { i64, i8* }** %966
  %1551 = call i64 @nyx_array_get({ i64, i8* }* %1550, i64 2)
  %1552 = inttoptr i64 %1551 to { i64, i8* }*
  %1553 = alloca { i64, i8* }*
  store { i64, i8* }* %1552, { i64, i8* }** %1553
  %1554 = load %nyx_string*, %nyx_string** %963
  %1555 = call { i64, i8* }* @nyx_array_new_ptr()
  %1556 = load { i64, i8* }*, { i64, i8* }** %1545
  %1557 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1558 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1556, { i64, i8* }* %1557)
  %1559 = bitcast { i64, i8* }* %1558 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1555, i8* %1559)
  %1560 = load %nyx_string*, %nyx_string** %1549
  %1561 = ptrtoint %nyx_string* %1560 to i64
  call void @nyx_array_push({ i64, i8* }* %1555, i64 %1561)
  %1562 = load { i64, i8* }*, { i64, i8* }** %1553
  %1563 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1564 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1562, { i64, i8* }* %1563)
  %1565 = bitcast { i64, i8* }* %1564 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1555, i8* %1565)
  %1566 = call { i64, i8* }* @licm_make(%nyx_string* %1554, { i64, i8* }* %1555)
  ret { i64, i8* }* %1566
else330:
  br label %merge331
merge331:
  %1567 = alloca i1
  store i1 false, i1* %1567
  %1568 = load %nyx_string*, %nyx_string** %963
  %1569 = getelementptr [13 x i8], [13 x i8]* @.str61, i32 0, i32 0
  %1570 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str61.c, i8* %1569)
  %1571 = call i1 @nyx_string_equals(%nyx_string* %1568, %nyx_string* %1570)
  br i1 %1571, label %sc_and_rhs332, label %sc_and_end333
sc_and_rhs332:
  %1572 = load i64, i64* %969
  %1573 = icmp sge i64 %1572, 2
  store i1 %1573, i1* %1567
  br label %sc_and_end333
sc_and_end333:
  %1574 = load i1, i1* %1567
  br i1 %1574, label %then334, label %else335
then334:
  %1575 = load { i64, i8* }*, { i64, i8* }** %966
  %1576 = call i64 @nyx_array_get({ i64, i8* }* %1575, i64 0)
  %1577 = inttoptr i64 %1576 to { i64, i8* }*
  %1578 = alloca { i64, i8* }*
  store { i64, i8* }* %1577, { i64, i8* }** %1578
  %1579 = load { i64, i8* }*, { i64, i8* }** %966
  %1580 = call i64 @nyx_array_get({ i64, i8* }* %1579, i64 1)
  %1581 = inttoptr i64 %1580 to { i64, i8* }*
  %1582 = alloca { i64, i8* }*
  store { i64, i8* }* %1581, { i64, i8* }** %1582
  %1583 = load %nyx_string*, %nyx_string** %963
  %1584 = call { i64, i8* }* @nyx_array_new_ptr()
  %1585 = load { i64, i8* }*, { i64, i8* }** %1578
  %1586 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1587 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1585, { i64, i8* }* %1586)
  %1588 = bitcast { i64, i8* }* %1587 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1584, i8* %1588)
  %1589 = load { i64, i8* }*, { i64, i8* }** %1582
  %1590 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1591 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1589, { i64, i8* }* %1590)
  %1592 = bitcast { i64, i8* }* %1591 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1584, i8* %1592)
  %1593 = call { i64, i8* }* @licm_make(%nyx_string* %1583, { i64, i8* }* %1584)
  ret { i64, i8* }* %1593
else335:
  br label %merge336
merge336:
  %1594 = alloca i1
  store i1 false, i1* %1594
  %1595 = load %nyx_string*, %nyx_string** %963
  %1596 = getelementptr [7 x i8], [7 x i8]* @.str62, i32 0, i32 0
  %1597 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str62.c, i8* %1596)
  %1598 = call i1 @nyx_string_equals(%nyx_string* %1595, %nyx_string* %1597)
  br i1 %1598, label %sc_and_rhs337, label %sc_and_end338
sc_and_rhs337:
  %1599 = load i64, i64* %969
  %1600 = icmp sge i64 %1599, 1
  store i1 %1600, i1* %1594
  br label %sc_and_end338
sc_and_end338:
  %1601 = load i1, i1* %1594
  br i1 %1601, label %then339, label %else340
then339:
  %1602 = load { i64, i8* }*, { i64, i8* }** %966
  %1603 = call i64 @nyx_array_get({ i64, i8* }* %1602, i64 0)
  %1604 = inttoptr i64 %1603 to { i64, i8* }*
  %1605 = alloca { i64, i8* }*
  store { i64, i8* }* %1604, { i64, i8* }** %1605
  %1606 = load %nyx_string*, %nyx_string** %963
  %1607 = call { i64, i8* }* @nyx_array_new_ptr()
  %1608 = load { i64, i8* }*, { i64, i8* }** %1605
  %1609 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1610 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1608, { i64, i8* }* %1609)
  %1611 = bitcast { i64, i8* }* %1610 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1607, i8* %1611)
  %1612 = call { i64, i8* }* @licm_make(%nyx_string* %1606, { i64, i8* }* %1607)
  ret { i64, i8* }* %1612
else340:
  br label %merge341
merge341:
  %1613 = alloca i1
  store i1 false, i1* %1613
  %1614 = load %nyx_string*, %nyx_string** %963
  %1615 = getelementptr [12 x i8], [12 x i8]* @.str63, i32 0, i32 0
  %1616 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str63.c, i8* %1615)
  %1617 = call i1 @nyx_string_equals(%nyx_string* %1614, %nyx_string* %1616)
  br i1 %1617, label %sc_and_rhs342, label %sc_and_end343
sc_and_rhs342:
  %1618 = load i64, i64* %969
  %1619 = icmp sge i64 %1618, 3
  store i1 %1619, i1* %1613
  br label %sc_and_end343
sc_and_end343:
  %1620 = load i1, i1* %1613
  br i1 %1620, label %then344, label %else345
then344:
  %1621 = load { i64, i8* }*, { i64, i8* }** %966
  %1622 = call i64 @nyx_array_get({ i64, i8* }* %1621, i64 0)
  %1623 = alloca i64
  store i64 %1622, i64* %1623
  %1624 = load { i64, i8* }*, { i64, i8* }** %966
  %1625 = call i64 @nyx_array_get({ i64, i8* }* %1624, i64 1)
  %1626 = inttoptr i64 %1625 to { i64, i8* }*
  %1627 = alloca { i64, i8* }*
  store { i64, i8* }* %1626, { i64, i8* }** %1627
  %1628 = load { i64, i8* }*, { i64, i8* }** %966
  %1629 = call i64 @nyx_array_get({ i64, i8* }* %1628, i64 2)
  %1630 = alloca i64
  store i64 %1629, i64* %1630
  %1631 = call { i64, i8* }* @nyx_array_new_ptr()
  %1632 = alloca { i64, i8* }*
  store { i64, i8* }* %1631, { i64, i8* }** %1632
  %1633 = alloca i64
  store i64 0, i64* %1633
  br label %while_cond347
while_cond347:
  %1634 = load i64, i64* %1633
  %1635 = load { i64, i8* }*, { i64, i8* }** %1627
  %1636 = call i64 @nyx_array_length({ i64, i8* }* %1635)
  %1637 = icmp slt i64 %1634, %1636
  br i1 %1637, label %while_body348, label %while_end349
while_body348:
  %1638 = load { i64, i8* }*, { i64, i8* }** %1627
  %1639 = load i64, i64* %1633
  %1640 = call i64 @nyx_array_get({ i64, i8* }* %1638, i64 %1639)
  %1641 = inttoptr i64 %1640 to { i64, i8* }*
  %1642 = alloca { i64, i8* }*
  store { i64, i8* }* %1641, { i64, i8* }** %1642
  %1643 = load { i64, i8* }*, { i64, i8* }** %1642
  %1644 = call i64 @nyx_array_length({ i64, i8* }* %1643)
  %1645 = icmp sge i64 %1644, 2
  br i1 %1645, label %then350, label %else351
then350:
  %1646 = load { i64, i8* }*, { i64, i8* }** %1642
  %1647 = call i64 @nyx_array_get({ i64, i8* }* %1646, i64 0)
  %1648 = inttoptr i64 %1647 to %nyx_string*
  %1649 = alloca %nyx_string*
  store %nyx_string* %1648, %nyx_string** %1649
  %1650 = load { i64, i8* }*, { i64, i8* }** %1642
  %1651 = call i64 @nyx_array_get({ i64, i8* }* %1650, i64 1)
  %1652 = inttoptr i64 %1651 to { i64, i8* }*
  %1653 = alloca { i64, i8* }*
  store { i64, i8* }* %1652, { i64, i8* }** %1653
  %1654 = load { i64, i8* }*, { i64, i8* }** %1632
  %1655 = call { i64, i8* }* @nyx_array_new_ptr()
  %1656 = load %nyx_string*, %nyx_string** %1649
  %1657 = ptrtoint %nyx_string* %1656 to i64
  call void @nyx_array_push({ i64, i8* }* %1655, i64 %1657)
  %1658 = load { i64, i8* }*, { i64, i8* }** %1653
  %1659 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1660 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1658, { i64, i8* }* %1659)
  %1661 = bitcast { i64, i8* }* %1660 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1655, i8* %1661)
  %1662 = ptrtoint { i64, i8* }* %1655 to i64
  call void @nyx_array_push({ i64, i8* }* %1654, i64 %1662)
  br label %merge352
else351:
  %1663 = load { i64, i8* }*, { i64, i8* }** %1632
  %1664 = load { i64, i8* }*, { i64, i8* }** %1642
  %1665 = ptrtoint { i64, i8* }* %1664 to i64
  call void @nyx_array_push({ i64, i8* }* %1663, i64 %1665)
  br label %merge352
merge352:
  %1666 = load i64, i64* %1633
  %1667 = add i64 %1666, 1
  store i64 %1667, i64* %1633
  br label %while_cond347
while_end349:
  %1668 = load %nyx_string*, %nyx_string** %963
  %1669 = call { i64, i8* }* @nyx_array_new_ptr()
  %1670 = load i64, i64* %1623
  call void @nyx_array_push({ i64, i8* }* %1669, i64 %1670)
  %1671 = load { i64, i8* }*, { i64, i8* }** %1632
  %1672 = bitcast { i64, i8* }* %1671 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1669, i8* %1672)
  %1673 = load i64, i64* %1630
  call void @nyx_array_push({ i64, i8* }* %1669, i64 %1673)
  %1674 = call { i64, i8* }* @licm_make(%nyx_string* %1668, { i64, i8* }* %1669)
  ret { i64, i8* }* %1674
else345:
  br label %merge346
merge346:
  %1675 = alloca i1
  store i1 false, i1* %1675
  %1676 = load %nyx_string*, %nyx_string** %963
  %1677 = getelementptr [7 x i8], [7 x i8]* @.str64, i32 0, i32 0
  %1678 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str64.c, i8* %1677)
  %1679 = call i1 @nyx_string_equals(%nyx_string* %1676, %nyx_string* %1678)
  br i1 %1679, label %sc_and_rhs353, label %sc_and_end354
sc_and_rhs353:
  %1680 = load i64, i64* %969
  %1681 = icmp sge i64 %1680, 1
  store i1 %1681, i1* %1675
  br label %sc_and_end354
sc_and_end354:
  %1682 = load i1, i1* %1675
  br i1 %1682, label %then355, label %else356
then355:
  %1683 = load { i64, i8* }*, { i64, i8* }** %966
  %1684 = call i64 @nyx_array_get({ i64, i8* }* %1683, i64 0)
  %1685 = inttoptr i64 %1684 to { i64, i8* }*
  %1686 = alloca { i64, i8* }*
  store { i64, i8* }* %1685, { i64, i8* }** %1686
  %1687 = load %nyx_string*, %nyx_string** %963
  %1688 = call { i64, i8* }* @nyx_array_new_ptr()
  %1689 = load { i64, i8* }*, { i64, i8* }** %1686
  %1690 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1691 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1689, { i64, i8* }* %1690)
  %1692 = bitcast { i64, i8* }* %1691 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1688, i8* %1692)
  %1693 = call { i64, i8* }* @licm_make(%nyx_string* %1687, { i64, i8* }* %1688)
  ret { i64, i8* }* %1693
else356:
  br label %merge357
merge357:
  %1694 = alloca i1
  store i1 false, i1* %1694
  %1695 = load %nyx_string*, %nyx_string** %963
  %1696 = getelementptr [5 x i8], [5 x i8]* @.str65, i32 0, i32 0
  %1697 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str65.c, i8* %1696)
  %1698 = call i1 @nyx_string_equals(%nyx_string* %1695, %nyx_string* %1697)
  br i1 %1698, label %sc_and_rhs358, label %sc_and_end359
sc_and_rhs358:
  %1699 = load i64, i64* %969
  %1700 = icmp sge i64 %1699, 2
  store i1 %1700, i1* %1694
  br label %sc_and_end359
sc_and_end359:
  %1701 = load i1, i1* %1694
  br i1 %1701, label %then360, label %else361
then360:
  %1702 = load { i64, i8* }*, { i64, i8* }** %966
  %1703 = call i64 @nyx_array_get({ i64, i8* }* %1702, i64 0)
  %1704 = inttoptr i64 %1703 to { i64, i8* }*
  %1705 = alloca { i64, i8* }*
  store { i64, i8* }* %1704, { i64, i8* }** %1705
  %1706 = load { i64, i8* }*, { i64, i8* }** %966
  %1707 = call i64 @nyx_array_get({ i64, i8* }* %1706, i64 1)
  %1708 = alloca i64
  store i64 %1707, i64* %1708
  %1709 = load %nyx_string*, %nyx_string** %963
  %1710 = call { i64, i8* }* @nyx_array_new_ptr()
  %1711 = load { i64, i8* }*, { i64, i8* }** %1705
  %1712 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1713 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1711, { i64, i8* }* %1712)
  %1714 = bitcast { i64, i8* }* %1713 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1710, i8* %1714)
  %1715 = load i64, i64* %1708
  call void @nyx_array_push({ i64, i8* }* %1710, i64 %1715)
  %1716 = call { i64, i8* }* @licm_make(%nyx_string* %1709, { i64, i8* }* %1710)
  ret { i64, i8* }* %1716
else361:
  br label %merge362
merge362:
  %1717 = alloca i1
  store i1 false, i1* %1717
  %1718 = load %nyx_string*, %nyx_string** %963
  %1719 = getelementptr [6 x i8], [6 x i8]* @.str66, i32 0, i32 0
  %1720 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str66.c, i8* %1719)
  %1721 = call i1 @nyx_string_equals(%nyx_string* %1718, %nyx_string* %1720)
  br i1 %1721, label %sc_and_rhs363, label %sc_and_end364
sc_and_rhs363:
  %1722 = load i64, i64* %969
  %1723 = icmp sge i64 %1722, 3
  store i1 %1723, i1* %1717
  br label %sc_and_end364
sc_and_end364:
  %1724 = load i1, i1* %1717
  br i1 %1724, label %then365, label %else366
then365:
  %1725 = load { i64, i8* }*, { i64, i8* }** %966
  %1726 = call i64 @nyx_array_get({ i64, i8* }* %1725, i64 0)
  %1727 = inttoptr i64 %1726 to { i64, i8* }*
  %1728 = alloca { i64, i8* }*
  store { i64, i8* }* %1727, { i64, i8* }** %1728
  %1729 = load { i64, i8* }*, { i64, i8* }** %966
  %1730 = call i64 @nyx_array_get({ i64, i8* }* %1729, i64 1)
  %1731 = inttoptr i64 %1730 to { i64, i8* }*
  %1732 = alloca { i64, i8* }*
  store { i64, i8* }* %1731, { i64, i8* }** %1732
  %1733 = load { i64, i8* }*, { i64, i8* }** %966
  %1734 = call i64 @nyx_array_get({ i64, i8* }* %1733, i64 2)
  %1735 = alloca i64
  store i64 %1734, i64* %1735
  %1736 = load %nyx_string*, %nyx_string** %963
  %1737 = call { i64, i8* }* @nyx_array_new_ptr()
  %1738 = load { i64, i8* }*, { i64, i8* }** %1728
  %1739 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1740 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1738, { i64, i8* }* %1739)
  %1741 = bitcast { i64, i8* }* %1740 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1737, i8* %1741)
  %1742 = load { i64, i8* }*, { i64, i8* }** %1732
  %1743 = load { i64, i8* }*, { i64, i8* }** %litmap.ptr
  %1744 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1742, { i64, i8* }* %1743)
  %1745 = bitcast { i64, i8* }* %1744 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1737, i8* %1745)
  %1746 = load i64, i64* %1735
  call void @nyx_array_push({ i64, i8* }* %1737, i64 %1746)
  %1747 = call { i64, i8* }* @licm_make(%nyx_string* %1736, { i64, i8* }* %1737)
  ret { i64, i8* }* %1747
else366:
  br label %merge367
merge367:
  %1748 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  ret { i64, i8* }* %1748
}

define internal { i64, i8* }* @licm_stmt_list(
{ i64, i8* }* %stmts.param, { i64, i8* }* %counter.param) {
  %stmts.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %stmts.param, { i64, i8* }** %stmts.ptr
  %counter.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %counter.param, { i64, i8* }** %counter.ptr
  %1749 = call { i64, i8* }* @nyx_array_new_ptr()
  %1750 = alloca { i64, i8* }*
  store { i64, i8* }* %1749, { i64, i8* }** %1750
  %1751 = alloca i64
  store i64 0, i64* %1751
  %1752 = getelementptr [4 x i8], [4 x i8]* @.str67, i32 0, i32 0
  %1753 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str67.c, i8* %1752)
  %1754 = alloca %nyx_string*
  store %nyx_string* %1753, %nyx_string** %1754
  %1755 = getelementptr [10 x i8], [10 x i8]* @.str68, i32 0, i32 0
  %1756 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str68.c, i8* %1755)
  %1757 = alloca %nyx_string*
  store %nyx_string* %1756, %nyx_string** %1757
  %1758 = getelementptr [6 x i8], [6 x i8]* @.str69, i32 0, i32 0
  %1759 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str69.c, i8* %1758)
  %1760 = alloca %nyx_string*
  store %nyx_string* %1759, %nyx_string** %1760
  %1761 = getelementptr [12 x i8], [12 x i8]* @.str70, i32 0, i32 0
  %1762 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str70.c, i8* %1761)
  %1763 = alloca %nyx_string*
  store %nyx_string* %1762, %nyx_string** %1763
  %1764 = getelementptr [7 x i8], [7 x i8]* @.str71, i32 0, i32 0
  %1765 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str71.c, i8* %1764)
  %1766 = alloca %nyx_string*
  store %nyx_string* %1765, %nyx_string** %1766
  %1767 = getelementptr [4 x i8], [4 x i8]* @.str72, i32 0, i32 0
  %1768 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str72.c, i8* %1767)
  %1769 = alloca %nyx_string*
  store %nyx_string* %1768, %nyx_string** %1769
  %1770 = getelementptr [7 x i8], [7 x i8]* @.str73, i32 0, i32 0
  %1771 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str73.c, i8* %1770)
  %1772 = alloca %nyx_string*
  store %nyx_string* %1771, %nyx_string** %1772
  br label %while_cond368
while_cond368:
  %1773 = load i64, i64* %1751
  %1774 = load { i64, i8* }*, { i64, i8* }** %stmts.ptr
  %1775 = call i64 @nyx_array_length({ i64, i8* }* %1774)
  %1776 = icmp slt i64 %1773, %1775
  br i1 %1776, label %while_body369, label %while_end370
while_body369:
  %1777 = load { i64, i8* }*, { i64, i8* }** %stmts.ptr
  %1778 = load i64, i64* %1751
  %1779 = call i64 @nyx_array_get({ i64, i8* }* %1777, i64 %1778)
  %1780 = inttoptr i64 %1779 to { i64, i8* }*
  %1781 = alloca { i64, i8* }*
  store { i64, i8* }* %1780, { i64, i8* }** %1781
  %1782 = load { i64, i8* }*, { i64, i8* }** %1781
  %1783 = call %ASTNode @licm_root_of({ i64, i8* }* %1782)
  %1784 = alloca %ASTNode
  store %ASTNode %1783, %ASTNode* %1784
  %1785 = getelementptr %ASTNode, %ASTNode* %1784, i32 0, i32 0
  %1786 = load %nyx_string*, %nyx_string** %1785
  %1787 = alloca %nyx_string*
  store %nyx_string* %1786, %nyx_string** %1787
  %1788 = getelementptr %ASTNode, %ASTNode* %1784, i32 0, i32 1
  %1789 = load { i64, i8* }*, { i64, i8* }** %1788
  %1790 = alloca { i64, i8* }*
  store { i64, i8* }* %1789, { i64, i8* }** %1790
  %1791 = alloca i64
  store i64 1, i64* %1791
  %1792 = load %nyx_string*, %nyx_string** %1787
  %1793 = load %nyx_string*, %nyx_string** %1754
  %1794 = call i1 @nyx_string_equals(%nyx_string* %1792, %nyx_string* %1793)
  br i1 %1794, label %then371, label %else372
then371:
  store i64 2, i64* %1791
  br label %merge373
else372:
  br label %merge373
merge373:
  %1795 = load %nyx_string*, %nyx_string** %1787
  %1796 = load %nyx_string*, %nyx_string** %1757
  %1797 = call i1 @nyx_string_equals(%nyx_string* %1795, %nyx_string* %1796)
  br i1 %1797, label %then374, label %else375
then374:
  store i64 2, i64* %1791
  br label %merge376
else375:
  br label %merge376
merge376:
  %1798 = alloca i1
  store i1 false, i1* %1798
  %1799 = alloca i1
  store i1 true, i1* %1799
  %1800 = alloca i1
  store i1 true, i1* %1800
  %1801 = load %nyx_string*, %nyx_string** %1787
  %1802 = load %nyx_string*, %nyx_string** %1760
  %1803 = call i1 @nyx_string_equals(%nyx_string* %1801, %nyx_string* %1802)
  br i1 %1803, label %sc_or_end378, label %sc_or_rhs377
sc_or_rhs377:
  %1804 = load %nyx_string*, %nyx_string** %1787
  %1805 = load %nyx_string*, %nyx_string** %1754
  %1806 = call i1 @nyx_string_equals(%nyx_string* %1804, %nyx_string* %1805)
  store i1 %1806, i1* %1800
  br label %sc_or_end378
sc_or_end378:
  %1807 = load i1, i1* %1800
  br i1 %1807, label %sc_or_end380, label %sc_or_rhs379
sc_or_rhs379:
  %1808 = load %nyx_string*, %nyx_string** %1787
  %1809 = load %nyx_string*, %nyx_string** %1757
  %1810 = call i1 @nyx_string_equals(%nyx_string* %1808, %nyx_string* %1809)
  store i1 %1810, i1* %1799
  br label %sc_or_end380
sc_or_end380:
  %1811 = load i1, i1* %1799
  br i1 %1811, label %sc_and_rhs381, label %sc_and_end382
sc_and_rhs381:
  %1812 = load { i64, i8* }*, { i64, i8* }** %1790
  %1813 = call i64 @nyx_array_length({ i64, i8* }* %1812)
  %1814 = load i64, i64* %1791
  %1815 = icmp sgt i64 %1813, %1814
  store i1 %1815, i1* %1798
  br label %sc_and_end382
sc_and_end382:
  %1816 = load i1, i1* %1798
  br i1 %1816, label %then383, label %else384
then383:
  %1817 = load %ASTNode, %ASTNode* %1784
  %1818 = load i64, i64* %1791
  %1819 = call %ASTNode @licm_node_at(%ASTNode %1817, i64 %1818)
  %1820 = alloca %ASTNode
  store %ASTNode %1819, %ASTNode* %1820
  %1821 = call { i64, i8* }* @nyx_array_new_ptr()
  %1822 = alloca { i64, i8* }*
  store { i64, i8* }* %1821, { i64, i8* }** %1822
  %1823 = load %ASTNode, %ASTNode* %1820
  %1824 = load { i64, i8* }*, { i64, i8* }** %1822
  %1825 = call i64 @licm_collect(%ASTNode %1823, { i64, i8* }* %1824)
  %1826 = call { i64, i8* }* @nyx_array_new_ptr()
  %1827 = alloca { i64, i8* }*
  store { i64, i8* }* %1826, { i64, i8* }** %1827
  %1828 = alloca i64
  store i64 0, i64* %1828
  br label %while_cond386
while_cond386:
  %1829 = load i64, i64* %1828
  %1830 = load { i64, i8* }*, { i64, i8* }** %1822
  %1831 = call i64 @nyx_array_length({ i64, i8* }* %1830)
  %1832 = icmp slt i64 %1829, %1831
  br i1 %1832, label %while_body387, label %while_end388
while_body387:
  %1833 = load { i64, i8* }*, { i64, i8* }** %1822
  %1834 = load i64, i64* %1828
  %1835 = call i64 @nyx_array_get({ i64, i8* }* %1833, i64 %1834)
  %1836 = inttoptr i64 %1835 to %nyx_string*
  %1837 = alloca %nyx_string*
  store %nyx_string* %1836, %nyx_string** %1837
  %1838 = load { i64, i8* }*, { i64, i8* }** %counter.ptr
  %1839 = call i64 @nyx_array_get({ i64, i8* }* %1838, i64 0)
  %1840 = alloca i64
  store i64 %1839, i64* %1840
  %1841 = load { i64, i8* }*, { i64, i8* }** %counter.ptr
  %1842 = load i64, i64* %1840
  %1843 = add i64 %1842, 1
  call void @nyx_array_set({ i64, i8* }* %1841, i64 0, i64 %1843)
  %1844 = load %nyx_string*, %nyx_string** %1763
  %1845 = load i64, i64* %1840
  %1846 = call %nyx_string* @nyx_string_from_int(i64 %1845)
  %1847 = call %nyx_string* @nyx_string_concat(%nyx_string* %1844, %nyx_string* %1846)
  %1848 = alloca %nyx_string*
  store %nyx_string* %1847, %nyx_string** %1848
  %1849 = load { i64, i8* }*, { i64, i8* }** %1827
  %1850 = call { i64, i8* }* @nyx_array_new_ptr()
  %1851 = load %nyx_string*, %nyx_string** %1837
  %1852 = ptrtoint %nyx_string* %1851 to i64
  call void @nyx_array_push({ i64, i8* }* %1850, i64 %1852)
  %1853 = load %nyx_string*, %nyx_string** %1848
  %1854 = ptrtoint %nyx_string* %1853 to i64
  call void @nyx_array_push({ i64, i8* }* %1850, i64 %1854)
  %1855 = ptrtoint { i64, i8* }* %1850 to i64
  call void @nyx_array_push({ i64, i8* }* %1849, i64 %1855)
  %1856 = load %nyx_string*, %nyx_string** %1848
  %1857 = call { i64, i8* }* @nyx_array_new_ptr()
  %1858 = call { i64, i8* }* @licm_make(%nyx_string* %1856, { i64, i8* }* %1857)
  %1859 = alloca { i64, i8* }*
  store { i64, i8* }* %1858, { i64, i8* }** %1859
  %1860 = load %nyx_string*, %nyx_string** %1766
  %1861 = call { i64, i8* }* @nyx_array_new_ptr()
  %1862 = load %nyx_string*, %nyx_string** %1837
  %1863 = ptrtoint %nyx_string* %1862 to i64
  call void @nyx_array_push({ i64, i8* }* %1861, i64 %1863)
  %1864 = call { i64, i8* }* @licm_make(%nyx_string* %1860, { i64, i8* }* %1861)
  %1865 = alloca { i64, i8* }*
  store { i64, i8* }* %1864, { i64, i8* }** %1865
  %1866 = load %nyx_string*, %nyx_string** %1769
  %1867 = call { i64, i8* }* @nyx_array_new_ptr()
  %1868 = load { i64, i8* }*, { i64, i8* }** %1859
  %1869 = bitcast { i64, i8* }* %1868 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1867, i8* %1869)
  %1870 = zext i1 0 to i64
  call void @nyx_array_push({ i64, i8* }* %1867, i64 %1870)
  %1871 = load { i64, i8* }*, { i64, i8* }** %1865
  %1872 = bitcast { i64, i8* }* %1871 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1867, i8* %1872)
  %1873 = load %nyx_string*, %nyx_string** %1772
  %1874 = ptrtoint %nyx_string* %1873 to i64
  call void @nyx_array_push({ i64, i8* }* %1867, i64 %1874)
  %1875 = call { i64, i8* }* @licm_make(%nyx_string* %1866, { i64, i8* }* %1867)
  %1876 = alloca { i64, i8* }*
  store { i64, i8* }* %1875, { i64, i8* }** %1876
  %1877 = load { i64, i8* }*, { i64, i8* }** %1750
  %1878 = load { i64, i8* }*, { i64, i8* }** %1876
  %1879 = ptrtoint { i64, i8* }* %1878 to i64
  call void @nyx_array_push({ i64, i8* }* %1877, i64 %1879)
  %1880 = load i64, i64* %1828
  %1881 = add i64 %1880, 1
  store i64 %1881, i64* %1828
  br label %while_cond386
while_end388:
  %1882 = load { i64, i8* }*, { i64, i8* }** %1781
  %1883 = load { i64, i8* }*, { i64, i8* }** %1827
  %1884 = call { i64, i8* }* @licm_rewrite({ i64, i8* }* %1882, { i64, i8* }* %1883)
  %1885 = alloca { i64, i8* }*
  store { i64, i8* }* %1884, { i64, i8* }** %1885
  %1886 = load { i64, i8* }*, { i64, i8* }** %1750
  %1887 = load { i64, i8* }*, { i64, i8* }** %1885
  %1888 = ptrtoint { i64, i8* }* %1887 to i64
  call void @nyx_array_push({ i64, i8* }* %1886, i64 %1888)
  br label %merge385
else384:
  %1889 = load { i64, i8* }*, { i64, i8* }** %1750
  %1890 = load { i64, i8* }*, { i64, i8* }** %1781
  %1891 = load { i64, i8* }*, { i64, i8* }** %counter.ptr
  %1892 = call { i64, i8* }* @licm_descend_stmt({ i64, i8* }* %1890, { i64, i8* }* %1891)
  %1893 = ptrtoint { i64, i8* }* %1892 to i64
  call void @nyx_array_push({ i64, i8* }* %1889, i64 %1893)
  br label %merge385
merge385:
  %1894 = load i64, i64* %1751
  %1895 = add i64 %1894, 1
  store i64 %1895, i64* %1751
  br label %while_cond368
while_end370:
  %1896 = load { i64, i8* }*, { i64, i8* }** %1750
  ret { i64, i8* }* %1896
}

define internal { i64, i8* }* @licm_descend_stmt(
{ i64, i8* }* %stmt.param, { i64, i8* }* %counter.param) {
  %stmt.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %stmt.param, { i64, i8* }** %stmt.ptr
  %counter.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %counter.param, { i64, i8* }** %counter.ptr
  %1897 = load { i64, i8* }*, { i64, i8* }** %stmt.ptr
  %1898 = call %ASTNode @licm_root_of({ i64, i8* }* %1897)
  %1899 = alloca %ASTNode
  store %ASTNode %1898, %ASTNode* %1899
  %1900 = getelementptr %ASTNode, %ASTNode* %1899, i32 0, i32 0
  %1901 = load %nyx_string*, %nyx_string** %1900
  %1902 = alloca %nyx_string*
  store %nyx_string* %1901, %nyx_string** %1902
  %1903 = getelementptr %ASTNode, %ASTNode* %1899, i32 0, i32 1
  %1904 = load { i64, i8* }*, { i64, i8* }** %1903
  %1905 = alloca { i64, i8* }*
  store { i64, i8* }* %1904, { i64, i8* }** %1905
  %1906 = load { i64, i8* }*, { i64, i8* }** %1905
  %1907 = call i64 @nyx_array_length({ i64, i8* }* %1906)
  %1908 = alloca i64
  store i64 %1907, i64* %1908
  %1909 = alloca i1
  store i1 false, i1* %1909
  %1910 = alloca i1
  store i1 true, i1* %1910
  %1911 = load %nyx_string*, %nyx_string** %1902
  %1912 = getelementptr [9 x i8], [9 x i8]* @.str74, i32 0, i32 0
  %1913 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str74.c, i8* %1912)
  %1914 = call i1 @nyx_string_equals(%nyx_string* %1911, %nyx_string* %1913)
  br i1 %1914, label %sc_or_end390, label %sc_or_rhs389
sc_or_rhs389:
  %1915 = load %nyx_string*, %nyx_string** %1902
  %1916 = getelementptr [9 x i8], [9 x i8]* @.str75, i32 0, i32 0
  %1917 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str75.c, i8* %1916)
  %1918 = call i1 @nyx_string_equals(%nyx_string* %1915, %nyx_string* %1917)
  store i1 %1918, i1* %1910
  br label %sc_or_end390
sc_or_end390:
  %1919 = load i1, i1* %1910
  br i1 %1919, label %sc_and_rhs391, label %sc_and_end392
sc_and_rhs391:
  %1920 = load i64, i64* %1908
  %1921 = icmp sge i64 %1920, 4
  store i1 %1921, i1* %1909
  br label %sc_and_end392
sc_and_end392:
  %1922 = load i1, i1* %1909
  br i1 %1922, label %then393, label %else394
then393:
  %1923 = load %ASTNode, %ASTNode* %1899
  %1924 = call %ASTNode @licm_node_at(%ASTNode %1923, i64 3)
  %1925 = alloca %ASTNode
  store %ASTNode %1924, %ASTNode* %1925
  %1926 = getelementptr %ASTNode, %ASTNode* %1925, i32 0, i32 0
  %1927 = load %nyx_string*, %nyx_string** %1926
  %1928 = getelementptr [6 x i8], [6 x i8]* @.str76, i32 0, i32 0
  %1929 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str76.c, i8* %1928)
  %1930 = call i1 @nyx_string_equals(%nyx_string* %1927, %nyx_string* %1929)
  %1931 = xor i1 %1930, true
  br i1 %1931, label %then396, label %else397
then396:
  %1932 = load { i64, i8* }*, { i64, i8* }** %stmt.ptr
  ret { i64, i8* }* %1932
else397:
  br label %merge398
merge398:
  %1933 = load %ASTNode, %ASTNode* %1925
  %1934 = call { i64, i8* }* @licm_array_at(%ASTNode %1933, i64 0)
  %1935 = alloca { i64, i8* }*
  store { i64, i8* }* %1934, { i64, i8* }** %1935
  %1936 = load { i64, i8* }*, { i64, i8* }** %1935
  %1937 = load { i64, i8* }*, { i64, i8* }** %counter.ptr
  %1938 = call { i64, i8* }* @licm_stmt_list({ i64, i8* }* %1936, { i64, i8* }* %1937)
  %1939 = alloca { i64, i8* }*
  store { i64, i8* }* %1938, { i64, i8* }** %1939
  %1940 = getelementptr [6 x i8], [6 x i8]* @.str77, i32 0, i32 0
  %1941 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str77.c, i8* %1940)
  %1942 = call { i64, i8* }* @nyx_array_new_ptr()
  %1943 = load { i64, i8* }*, { i64, i8* }** %1939
  %1944 = bitcast { i64, i8* }* %1943 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1942, i8* %1944)
  %1945 = call { i64, i8* }* @licm_make(%nyx_string* %1941, { i64, i8* }* %1942)
  %1946 = alloca { i64, i8* }*
  store { i64, i8* }* %1945, { i64, i8* }** %1946
  %1947 = call { i64, i8* }* @nyx_array_new_ptr()
  %1948 = alloca { i64, i8* }*
  store { i64, i8* }* %1947, { i64, i8* }** %1948
  %1949 = alloca i64
  store i64 0, i64* %1949
  br label %while_cond399
while_cond399:
  %1950 = load i64, i64* %1949
  %1951 = load i64, i64* %1908
  %1952 = icmp slt i64 %1950, %1951
  br i1 %1952, label %while_body400, label %while_end401
while_body400:
  %1953 = load i64, i64* %1949
  %1954 = icmp eq i64 %1953, 3
  br i1 %1954, label %then402, label %else403
then402:
  %1955 = load { i64, i8* }*, { i64, i8* }** %1948
  %1956 = load { i64, i8* }*, { i64, i8* }** %1946
  %1957 = ptrtoint { i64, i8* }* %1956 to i64
  call void @nyx_array_push({ i64, i8* }* %1955, i64 %1957)
  br label %merge404
else403:
  %1958 = load { i64, i8* }*, { i64, i8* }** %1948
  %1959 = load { i64, i8* }*, { i64, i8* }** %1905
  %1960 = load i64, i64* %1949
  %1961 = call i64 @nyx_array_get({ i64, i8* }* %1959, i64 %1960)
  call void @nyx_array_push({ i64, i8* }* %1958, i64 %1961)
  br label %merge404
merge404:
  %1962 = load i64, i64* %1949
  %1963 = add i64 %1962, 1
  store i64 %1963, i64* %1949
  br label %while_cond399
while_end401:
  %1964 = load %nyx_string*, %nyx_string** %1902
  %1965 = load { i64, i8* }*, { i64, i8* }** %1948
  %1966 = call { i64, i8* }* @licm_make(%nyx_string* %1964, { i64, i8* }* %1965)
  ret { i64, i8* }* %1966
else394:
  br label %merge395
merge395:
  %1967 = alloca i1
  store i1 false, i1* %1967
  %1968 = load %nyx_string*, %nyx_string** %1902
  %1969 = getelementptr [6 x i8], [6 x i8]* @.str78, i32 0, i32 0
  %1970 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str78.c, i8* %1969)
  %1971 = call i1 @nyx_string_equals(%nyx_string* %1968, %nyx_string* %1970)
  br i1 %1971, label %sc_and_rhs405, label %sc_and_end406
sc_and_rhs405:
  %1972 = load i64, i64* %1908
  %1973 = icmp sge i64 %1972, 1
  store i1 %1973, i1* %1967
  br label %sc_and_end406
sc_and_end406:
  %1974 = load i1, i1* %1967
  br i1 %1974, label %then407, label %else408
then407:
  %1975 = load %ASTNode, %ASTNode* %1899
  %1976 = call { i64, i8* }* @licm_array_at(%ASTNode %1975, i64 0)
  %1977 = alloca { i64, i8* }*
  store { i64, i8* }* %1976, { i64, i8* }** %1977
  %1978 = load { i64, i8* }*, { i64, i8* }** %1977
  %1979 = load { i64, i8* }*, { i64, i8* }** %counter.ptr
  %1980 = call { i64, i8* }* @licm_stmt_list({ i64, i8* }* %1978, { i64, i8* }* %1979)
  %1981 = alloca { i64, i8* }*
  store { i64, i8* }* %1980, { i64, i8* }** %1981
  %1982 = getelementptr [6 x i8], [6 x i8]* @.str79, i32 0, i32 0
  %1983 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str79.c, i8* %1982)
  %1984 = call { i64, i8* }* @nyx_array_new_ptr()
  %1985 = load { i64, i8* }*, { i64, i8* }** %1981
  %1986 = bitcast { i64, i8* }* %1985 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1984, i8* %1986)
  %1987 = call { i64, i8* }* @licm_make(%nyx_string* %1983, { i64, i8* }* %1984)
  ret { i64, i8* }* %1987
else408:
  br label %merge409
merge409:
  %1988 = alloca i1
  store i1 false, i1* %1988
  %1989 = load %nyx_string*, %nyx_string** %1902
  %1990 = getelementptr [3 x i8], [3 x i8]* @.str80, i32 0, i32 0
  %1991 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str80.c, i8* %1990)
  %1992 = call i1 @nyx_string_equals(%nyx_string* %1989, %nyx_string* %1991)
  br i1 %1992, label %sc_and_rhs410, label %sc_and_end411
sc_and_rhs410:
  %1993 = load i64, i64* %1908
  %1994 = icmp sge i64 %1993, 3
  store i1 %1994, i1* %1988
  br label %sc_and_end411
sc_and_end411:
  %1995 = load i1, i1* %1988
  br i1 %1995, label %then412, label %else413
then412:
  %1996 = load { i64, i8* }*, { i64, i8* }** %1905
  %1997 = call i64 @nyx_array_get({ i64, i8* }* %1996, i64 0)
  %1998 = inttoptr i64 %1997 to { i64, i8* }*
  %1999 = alloca { i64, i8* }*
  store { i64, i8* }* %1998, { i64, i8* }** %1999
  %2000 = load { i64, i8* }*, { i64, i8* }** %1905
  %2001 = call i64 @nyx_array_get({ i64, i8* }* %2000, i64 1)
  %2002 = inttoptr i64 %2001 to { i64, i8* }*
  %2003 = alloca { i64, i8* }*
  store { i64, i8* }* %2002, { i64, i8* }** %2003
  %2004 = load { i64, i8* }*, { i64, i8* }** %1905
  %2005 = call i64 @nyx_array_get({ i64, i8* }* %2004, i64 2)
  %2006 = inttoptr i64 %2005 to { i64, i8* }*
  %2007 = alloca { i64, i8* }*
  store { i64, i8* }* %2006, { i64, i8* }** %2007
  %2008 = load { i64, i8* }*, { i64, i8* }** %2003
  %2009 = load { i64, i8* }*, { i64, i8* }** %counter.ptr
  %2010 = call { i64, i8* }* @licm_descend_stmt({ i64, i8* }* %2008, { i64, i8* }* %2009)
  %2011 = alloca { i64, i8* }*
  store { i64, i8* }* %2010, { i64, i8* }** %2011
  %2012 = load { i64, i8* }*, { i64, i8* }** %2007
  %2013 = load { i64, i8* }*, { i64, i8* }** %counter.ptr
  %2014 = call { i64, i8* }* @licm_descend_stmt({ i64, i8* }* %2012, { i64, i8* }* %2013)
  %2015 = alloca { i64, i8* }*
  store { i64, i8* }* %2014, { i64, i8* }** %2015
  %2016 = getelementptr [3 x i8], [3 x i8]* @.str81, i32 0, i32 0
  %2017 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str81.c, i8* %2016)
  %2018 = call { i64, i8* }* @nyx_array_new_ptr()
  %2019 = load { i64, i8* }*, { i64, i8* }** %1999
  %2020 = bitcast { i64, i8* }* %2019 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %2018, i8* %2020)
  %2021 = load { i64, i8* }*, { i64, i8* }** %2011
  %2022 = bitcast { i64, i8* }* %2021 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %2018, i8* %2022)
  %2023 = load { i64, i8* }*, { i64, i8* }** %2015
  %2024 = bitcast { i64, i8* }* %2023 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %2018, i8* %2024)
  %2025 = call { i64, i8* }* @licm_make(%nyx_string* %2017, { i64, i8* }* %2018)
  ret { i64, i8* }* %2025
else413:
  br label %merge414
merge414:
  %2026 = alloca i1
  store i1 false, i1* %2026
  %2027 = load %nyx_string*, %nyx_string** %1902
  %2028 = getelementptr [5 x i8], [5 x i8]* @.str82, i32 0, i32 0
  %2029 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str82.c, i8* %2028)
  %2030 = call i1 @nyx_string_equals(%nyx_string* %2027, %nyx_string* %2029)
  br i1 %2030, label %sc_and_rhs415, label %sc_and_end416
sc_and_rhs415:
  %2031 = load i64, i64* %1908
  %2032 = icmp sge i64 %2031, 2
  store i1 %2032, i1* %2026
  br label %sc_and_end416
sc_and_end416:
  %2033 = load i1, i1* %2026
  br i1 %2033, label %then417, label %else418
then417:
  %2034 = load { i64, i8* }*, { i64, i8* }** %1905
  %2035 = call i64 @nyx_array_get({ i64, i8* }* %2034, i64 1)
  %2036 = inttoptr i64 %2035 to { i64, i8* }*
  %2037 = alloca { i64, i8* }*
  store { i64, i8* }* %2036, { i64, i8* }** %2037
  %2038 = call { i64, i8* }* @nyx_array_new_ptr()
  %2039 = alloca { i64, i8* }*
  store { i64, i8* }* %2038, { i64, i8* }** %2039
  %2040 = alloca i64
  store i64 0, i64* %2040
  br label %while_cond420
while_cond420:
  %2041 = load i64, i64* %2040
  %2042 = load { i64, i8* }*, { i64, i8* }** %2037
  %2043 = call i64 @nyx_array_length({ i64, i8* }* %2042)
  %2044 = icmp slt i64 %2041, %2043
  br i1 %2044, label %while_body421, label %while_end422
while_body421:
  %2045 = load { i64, i8* }*, { i64, i8* }** %2037
  %2046 = load i64, i64* %2040
  %2047 = call i64 @nyx_array_get({ i64, i8* }* %2045, i64 %2046)
  %2048 = inttoptr i64 %2047 to { i64, i8* }*
  %2049 = alloca { i64, i8* }*
  store { i64, i8* }* %2048, { i64, i8* }** %2049
  %2050 = load { i64, i8* }*, { i64, i8* }** %2039
  %2051 = load { i64, i8* }*, { i64, i8* }** %2049
  %2052 = load { i64, i8* }*, { i64, i8* }** %counter.ptr
  %2053 = call { i64, i8* }* @licm_descend_stmt({ i64, i8* }* %2051, { i64, i8* }* %2052)
  %2054 = ptrtoint { i64, i8* }* %2053 to i64
  call void @nyx_array_push({ i64, i8* }* %2050, i64 %2054)
  %2055 = load i64, i64* %2040
  %2056 = add i64 %2055, 1
  store i64 %2056, i64* %2040
  br label %while_cond420
while_end422:
  %2057 = call { i64, i8* }* @nyx_array_new_ptr()
  %2058 = alloca { i64, i8* }*
  store { i64, i8* }* %2057, { i64, i8* }** %2058
  %2059 = alloca i64
  store i64 0, i64* %2059
  br label %while_cond423
while_cond423:
  %2060 = load i64, i64* %2059
  %2061 = load i64, i64* %1908
  %2062 = icmp slt i64 %2060, %2061
  br i1 %2062, label %while_body424, label %while_end425
while_body424:
  %2063 = load i64, i64* %2059
  %2064 = icmp eq i64 %2063, 1
  br i1 %2064, label %then426, label %else427
then426:
  %2065 = load { i64, i8* }*, { i64, i8* }** %2058
  %2066 = load { i64, i8* }*, { i64, i8* }** %2039
  %2067 = ptrtoint { i64, i8* }* %2066 to i64
  call void @nyx_array_push({ i64, i8* }* %2065, i64 %2067)
  br label %merge428
else427:
  %2068 = load { i64, i8* }*, { i64, i8* }** %2058
  %2069 = load { i64, i8* }*, { i64, i8* }** %1905
  %2070 = load i64, i64* %2059
  %2071 = call i64 @nyx_array_get({ i64, i8* }* %2069, i64 %2070)
  call void @nyx_array_push({ i64, i8* }* %2068, i64 %2071)
  br label %merge428
merge428:
  %2072 = load i64, i64* %2059
  %2073 = add i64 %2072, 1
  store i64 %2073, i64* %2059
  br label %while_cond423
while_end425:
  %2074 = load %nyx_string*, %nyx_string** %1902
  %2075 = load { i64, i8* }*, { i64, i8* }** %2058
  %2076 = call { i64, i8* }* @licm_make(%nyx_string* %2074, { i64, i8* }* %2075)
  ret { i64, i8* }* %2076
else418:
  br label %merge419
merge419:
  %2077 = alloca i1
  store i1 false, i1* %2077
  %2078 = load %nyx_string*, %nyx_string** %1902
  %2079 = getelementptr [11 x i8], [11 x i8]* @.str83, i32 0, i32 0
  %2080 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str83.c, i8* %2079)
  %2081 = call i1 @nyx_string_equals(%nyx_string* %2078, %nyx_string* %2080)
  br i1 %2081, label %sc_and_rhs429, label %sc_and_end430
sc_and_rhs429:
  %2082 = load i64, i64* %1908
  %2083 = icmp sge i64 %2082, 3
  store i1 %2083, i1* %2077
  br label %sc_and_end430
sc_and_end430:
  %2084 = load i1, i1* %2077
  br i1 %2084, label %then431, label %else432
then431:
  %2085 = load { i64, i8* }*, { i64, i8* }** %1905
  %2086 = call i64 @nyx_array_get({ i64, i8* }* %2085, i64 2)
  %2087 = inttoptr i64 %2086 to { i64, i8* }*
  %2088 = alloca { i64, i8* }*
  store { i64, i8* }* %2087, { i64, i8* }** %2088
  %2089 = call { i64, i8* }* @nyx_array_new_ptr()
  %2090 = alloca { i64, i8* }*
  store { i64, i8* }* %2089, { i64, i8* }** %2090
  %2091 = alloca i64
  store i64 0, i64* %2091
  br label %while_cond434
while_cond434:
  %2092 = load i64, i64* %2091
  %2093 = load { i64, i8* }*, { i64, i8* }** %2088
  %2094 = call i64 @nyx_array_length({ i64, i8* }* %2093)
  %2095 = icmp slt i64 %2092, %2094
  br i1 %2095, label %while_body435, label %while_end436
while_body435:
  %2096 = load { i64, i8* }*, { i64, i8* }** %2088
  %2097 = load i64, i64* %2091
  %2098 = call i64 @nyx_array_get({ i64, i8* }* %2096, i64 %2097)
  %2099 = inttoptr i64 %2098 to { i64, i8* }*
  %2100 = alloca { i64, i8* }*
  store { i64, i8* }* %2099, { i64, i8* }** %2100
  %2101 = load { i64, i8* }*, { i64, i8* }** %2090
  %2102 = load { i64, i8* }*, { i64, i8* }** %2100
  %2103 = load { i64, i8* }*, { i64, i8* }** %counter.ptr
  %2104 = call { i64, i8* }* @licm_descend_stmt({ i64, i8* }* %2102, { i64, i8* }* %2103)
  %2105 = ptrtoint { i64, i8* }* %2104 to i64
  call void @nyx_array_push({ i64, i8* }* %2101, i64 %2105)
  %2106 = load i64, i64* %2091
  %2107 = add i64 %2106, 1
  store i64 %2107, i64* %2091
  br label %while_cond434
while_end436:
  %2108 = call { i64, i8* }* @nyx_array_new_ptr()
  %2109 = alloca { i64, i8* }*
  store { i64, i8* }* %2108, { i64, i8* }** %2109
  %2110 = alloca i64
  store i64 0, i64* %2110
  br label %while_cond437
while_cond437:
  %2111 = load i64, i64* %2110
  %2112 = load i64, i64* %1908
  %2113 = icmp slt i64 %2111, %2112
  br i1 %2113, label %while_body438, label %while_end439
while_body438:
  %2114 = load i64, i64* %2110
  %2115 = icmp eq i64 %2114, 2
  br i1 %2115, label %then440, label %else441
then440:
  %2116 = load { i64, i8* }*, { i64, i8* }** %2109
  %2117 = load { i64, i8* }*, { i64, i8* }** %2090
  %2118 = ptrtoint { i64, i8* }* %2117 to i64
  call void @nyx_array_push({ i64, i8* }* %2116, i64 %2118)
  br label %merge442
else441:
  %2119 = load { i64, i8* }*, { i64, i8* }** %2109
  %2120 = load { i64, i8* }*, { i64, i8* }** %1905
  %2121 = load i64, i64* %2110
  %2122 = call i64 @nyx_array_get({ i64, i8* }* %2120, i64 %2121)
  call void @nyx_array_push({ i64, i8* }* %2119, i64 %2122)
  br label %merge442
merge442:
  %2123 = load i64, i64* %2110
  %2124 = add i64 %2123, 1
  store i64 %2124, i64* %2110
  br label %while_cond437
while_end439:
  %2125 = load %nyx_string*, %nyx_string** %1902
  %2126 = load { i64, i8* }*, { i64, i8* }** %2109
  %2127 = call { i64, i8* }* @licm_make(%nyx_string* %2125, { i64, i8* }* %2126)
  ret { i64, i8* }* %2127
else432:
  br label %merge433
merge433:
  %2128 = load { i64, i8* }*, { i64, i8* }** %stmt.ptr
  ret { i64, i8* }* %2128
}

define { i64, i8* }* @licm(
{ i64, i8* }* %ast.param) {
  %ast.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %ast.param, { i64, i8* }** %ast.ptr
  %2129 = getelementptr [9 x i8], [9 x i8]* @.str84, i32 0, i32 0
  %2130 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str84.c, i8* %2129)
  %2131 = call i8* @nyx_string_to_cstr(%nyx_string* %2130)
  %2132 = call %nyx_string* @nyx_getenv(i8* %2131)
  %2133 = getelementptr [4 x i8], [4 x i8]* @.str85, i32 0, i32 0
  %2134 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str85.c, i8* %2133)
  %2135 = call i1 @nyx_string_equals(%nyx_string* %2132, %nyx_string* %2134)
  br i1 %2135, label %then443, label %else444
then443:
  %2136 = load { i64, i8* }*, { i64, i8* }** %ast.ptr
  ret { i64, i8* }* %2136
else444:
  br label %merge445
merge445:
  %2137 = load { i64, i8* }*, { i64, i8* }** %ast.ptr
  %2138 = call %ASTNode @licm_root_of({ i64, i8* }* %2137)
  %2139 = alloca %ASTNode
  store %ASTNode %2138, %ASTNode* %2139
  %2140 = getelementptr %ASTNode, %ASTNode* %2139, i32 0, i32 1
  %2141 = load { i64, i8* }*, { i64, i8* }** %2140
  %2142 = call i64 @nyx_array_length({ i64, i8* }* %2141)
  %2143 = icmp slt i64 %2142, 1
  br i1 %2143, label %then446, label %else447
then446:
  %2144 = load { i64, i8* }*, { i64, i8* }** %ast.ptr
  ret { i64, i8* }* %2144
else447:
  br label %merge448
merge448:
  %2145 = load %ASTNode, %ASTNode* %2139
  %2146 = call { i64, i8* }* @licm_array_at(%ASTNode %2145, i64 0)
  %2147 = alloca { i64, i8* }*
  store { i64, i8* }* %2146, { i64, i8* }** %2147
  %2148 = call { i64, i8* }* @nyx_array_new_ptr()
  call void @nyx_array_push({ i64, i8* }* %2148, i64 0)
  %2149 = alloca { i64, i8* }*
  store { i64, i8* }* %2148, { i64, i8* }** %2149
  %2150 = load { i64, i8* }*, { i64, i8* }** %2147
  %2151 = load { i64, i8* }*, { i64, i8* }** %2149
  %2152 = call { i64, i8* }* @licm_stmt_list({ i64, i8* }* %2150, { i64, i8* }* %2151)
  %2153 = alloca { i64, i8* }*
  store { i64, i8* }* %2152, { i64, i8* }** %2153
  %2154 = getelementptr [6 x i8], [6 x i8]* @.str86, i32 0, i32 0
  %2155 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str86.c, i8* %2154)
  %2156 = call { i64, i8* }* @nyx_array_new_ptr()
  %2157 = load { i64, i8* }*, { i64, i8* }** %2153
  %2158 = bitcast { i64, i8* }* %2157 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %2156, i8* %2158)
  %2159 = call { i64, i8* }* @licm_make(%nyx_string* %2155, { i64, i8* }* %2156)
  ret { i64, i8* }* %2159
}


attributes #0 = { returns_twice }

