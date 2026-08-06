source_filename = "/home/admin/nyx/lang/tests/compiler/ecosystem/test-163-bindgen.nx"
target triple = "x86_64-pc-linux-gnu"

@.str0 = private unnamed_addr constant [4 x i8] c"int\00"
@.str0.c = internal global %nyx_string* null
@.str1 = private unnamed_addr constant [4 x i8] c"i32\00"
@.str1.c = internal global %nyx_string* null
@.str2 = private unnamed_addr constant [5 x i8] c"long\00"
@.str2.c = internal global %nyx_string* null
@.str3 = private unnamed_addr constant [4 x i8] c"i64\00"
@.str3.c = internal global %nyx_string* null
@.str4 = private unnamed_addr constant [6 x i8] c"float\00"
@.str4.c = internal global %nyx_string* null
@.str5 = private unnamed_addr constant [4 x i8] c"f32\00"
@.str5.c = internal global %nyx_string* null
@.str6 = private unnamed_addr constant [7 x i8] c"double\00"
@.str6.c = internal global %nyx_string* null
@.str7 = private unnamed_addr constant [4 x i8] c"f64\00"
@.str7.c = internal global %nyx_string* null
@.str8 = private unnamed_addr constant [5 x i8] c"char\00"
@.str8.c = internal global %nyx_string* null
@.str9 = private unnamed_addr constant [3 x i8] c"i8\00"
@.str9.c = internal global %nyx_string* null
@.str10 = private unnamed_addr constant [5 x i8] c"void\00"
@.str10.c = internal global %nyx_string* null
@.str11 = private unnamed_addr constant [5 x i8] c"void\00"
@.str11.c = internal global %nyx_string* null
@.str12 = private unnamed_addr constant [5 x i8] c"bool\00"
@.str12.c = internal global %nyx_string* null
@.str13 = private unnamed_addr constant [5 x i8] c"bool\00"
@.str13.c = internal global %nyx_string* null
@.str14 = private unnamed_addr constant [7 x i8] c"size_t\00"
@.str14.c = internal global %nyx_string* null
@.str15 = private unnamed_addr constant [6 x i8] c"usize\00"
@.str15.c = internal global %nyx_string* null
@.str16 = private unnamed_addr constant [8 x i8] c"uint8_t\00"
@.str16.c = internal global %nyx_string* null
@.str17 = private unnamed_addr constant [3 x i8] c"u8\00"
@.str17.c = internal global %nyx_string* null
@.str18 = private unnamed_addr constant [8 x i8] c"int32_t\00"
@.str18.c = internal global %nyx_string* null
@.str19 = private unnamed_addr constant [4 x i8] c"i32\00"
@.str19.c = internal global %nyx_string* null
@.str20 = private unnamed_addr constant [8 x i8] c"int64_t\00"
@.str20.c = internal global %nyx_string* null
@.str21 = private unnamed_addr constant [4 x i8] c"i64\00"
@.str21.c = internal global %nyx_string* null
@.str22 = private unnamed_addr constant [2 x i8] c"*\00"
@.str22.c = internal global %nyx_string* null
@.str23 = private unnamed_addr constant [15 x i8] c"extern \22C\22 fn \00"
@.str23.c = internal global %nyx_string* null
@.str24 = private unnamed_addr constant [2 x i8] c"(\00"
@.str24.c = internal global %nyx_string* null
@.str25 = private unnamed_addr constant [6 x i8] c") -> \00"
@.str25.c = internal global %nyx_string* null
@.str26 = private unnamed_addr constant [19 x i8] c"#[repr(C)]\0astruct \00"
@.str26.c = internal global %nyx_string* null
@.str27 = private unnamed_addr constant [3 x i8] c" {\00"
@.str27.c = internal global %nyx_string* null
@.str28 = private unnamed_addr constant [21 x i8] c"--- Type Mapping ---\00"
@.str28.c = internal global %nyx_string* null
@.str29 = private unnamed_addr constant [4 x i8] c"int\00"
@.str29.c = internal global %nyx_string* null
@.str30 = private unnamed_addr constant [5 x i8] c"long\00"
@.str30.c = internal global %nyx_string* null
@.str31 = private unnamed_addr constant [6 x i8] c"float\00"
@.str31.c = internal global %nyx_string* null
@.str32 = private unnamed_addr constant [7 x i8] c"double\00"
@.str32.c = internal global %nyx_string* null
@.str33 = private unnamed_addr constant [5 x i8] c"void\00"
@.str33.c = internal global %nyx_string* null
@.str34 = private unnamed_addr constant [7 x i8] c"size_t\00"
@.str34.c = internal global %nyx_string* null
@.str35 = private unnamed_addr constant [8 x i8] c"int64_t\00"
@.str35.c = internal global %nyx_string* null
@.str36 = private unnamed_addr constant [26 x i8] c"--- Pointer Detection ---\00"
@.str36.c = internal global %nyx_string* null
@.str37 = private unnamed_addr constant [5 x i8] c"int*\00"
@.str37.c = internal global %nyx_string* null
@.str38 = private unnamed_addr constant [16 x i8] c"int* is pointer\00"
@.str38.c = internal global %nyx_string* null
@.str39 = private unnamed_addr constant [6 x i8] c"char*\00"
@.str39.c = internal global %nyx_string* null
@.str40 = private unnamed_addr constant [17 x i8] c"char* is pointer\00"
@.str40.c = internal global %nyx_string* null
@.str41 = private unnamed_addr constant [4 x i8] c"int\00"
@.str41.c = internal global %nyx_string* null
@.str42 = private unnamed_addr constant [19 x i8] c"int is not pointer\00"
@.str42.c = internal global %nyx_string* null
@.str43 = private unnamed_addr constant [5 x i8] c"void\00"
@.str43.c = internal global %nyx_string* null
@.str44 = private unnamed_addr constant [20 x i8] c"void is not pointer\00"
@.str44.c = internal global %nyx_string* null
@.str45 = private unnamed_addr constant [25 x i8] c"--- Extern Fn Format ---\00"
@.str45.c = internal global %nyx_string* null
@.str46 = private unnamed_addr constant [4 x i8] c"add\00"
@.str46.c = internal global %nyx_string* null
@.str47 = private unnamed_addr constant [4 x i8] c"i32\00"
@.str47.c = internal global %nyx_string* null
@.str48 = private unnamed_addr constant [15 x i8] c"a: i32, b: i32\00"
@.str48.c = internal global %nyx_string* null
@.str49 = private unnamed_addr constant [6 x i8] c"greet\00"
@.str49.c = internal global %nyx_string* null
@.str50 = private unnamed_addr constant [4 x i8] c"*i8\00"
@.str50.c = internal global %nyx_string* null
@.str51 = private unnamed_addr constant [10 x i8] c"name: *i8\00"
@.str51.c = internal global %nyx_string* null
@.str52 = private unnamed_addr constant [5 x i8] c"free\00"
@.str52.c = internal global %nyx_string* null
@.str53 = private unnamed_addr constant [5 x i8] c"void\00"
@.str53.c = internal global %nyx_string* null
@.str54 = private unnamed_addr constant [9 x i8] c"ptr: *i8\00"
@.str54.c = internal global %nyx_string* null
@.str55 = private unnamed_addr constant [22 x i8] c"--- Repr C Struct ---\00"
@.str55.c = internal global %nyx_string* null
@.str56 = private unnamed_addr constant [6 x i8] c"Point\00"
@.str56.c = internal global %nyx_string* null
@.str57 = private unnamed_addr constant [12 x i8] c"    x: i32,\00"
@.str57.c = internal global %nyx_string* null
@.str58 = private unnamed_addr constant [12 x i8] c"    y: i32,\00"
@.str58.c = internal global %nyx_string* null
@.str59 = private unnamed_addr constant [2 x i8] c"}\00"
@.str59.c = internal global %nyx_string* null
@.str60 = private unnamed_addr constant [25 x i8] c"--- Define Constants ---\00"
@.str60.c = internal global %nyx_string* null
@.str61 = private unnamed_addr constant [14 x i8] c"MAX_SIZE 1024\00"
@.str61.c = internal global %nyx_string* null
@.str62 = private unnamed_addr constant [11 x i8] c"VERSION 42\00"
@.str62.c = internal global %nyx_string* null
@.str63 = private unnamed_addr constant [12 x i8] c"PI_APPROX 3\00"
@.str63.c = internal global %nyx_string* null
@.str64 = private unnamed_addr constant [2 x i8] c" \00"
@.str64.c = internal global %nyx_string* null
@.str65 = private unnamed_addr constant [7 x i8] c"const \00"
@.str65.c = internal global %nyx_string* null
@.str66 = private unnamed_addr constant [9 x i8] c": i32 = \00"
@.str66.c = internal global %nyx_string* null
@.str67 = private unnamed_addr constant [22 x i8] c"--- Enum to Const ---\00"
@.str67.c = internal global %nyx_string* null
@.str68 = private unnamed_addr constant [4 x i8] c"RED\00"
@.str68.c = internal global %nyx_string* null
@.str69 = private unnamed_addr constant [6 x i8] c"GREEN\00"
@.str69.c = internal global %nyx_string* null
@.str70 = private unnamed_addr constant [5 x i8] c"BLUE\00"
@.str70.c = internal global %nyx_string* null
@.str71 = private unnamed_addr constant [7 x i8] c"const \00"
@.str71.c = internal global %nyx_string* null
@.str72 = private unnamed_addr constant [9 x i8] c": i32 = \00"
@.str72.c = internal global %nyx_string* null
@.str73 = private unnamed_addr constant [3 x i8] c"{}\00"
@.str73.c = internal global %nyx_string* null
@.str74 = private unnamed_addr constant [13 x i8] c"bindgen test\00"
@.str74.c = internal global %nyx_string* null
@.str75 = private unnamed_addr constant [11 x i8] c"bindgen ok\00"
@.str75.c = internal global %nyx_string* null
@__nyx_test_failed = external global i64
@__nyx_test_mode = external global i64
; Nyx Compiler Bootstrap v3.0
; Generated from: /home/admin/nyx/lang/tests/compiler/ecosystem/test-163-bindgen.nx

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


define internal %nyx_string* @map_c_type_basic(
%nyx_string* %ctype.param) {
  %ctype.ptr = alloca %nyx_string*
  store %nyx_string* %ctype.param, %nyx_string** %ctype.ptr
  %1 = load %nyx_string*, %nyx_string** %ctype.ptr
  %2 = getelementptr [4 x i8], [4 x i8]* @.str0, i32 0, i32 0
  %3 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str0.c, i8* %2)
  %4 = call i1 @nyx_string_equals(%nyx_string* %1, %nyx_string* %3)
  br i1 %4, label %then0, label %else1
then0:
  %5 = getelementptr [4 x i8], [4 x i8]* @.str1, i32 0, i32 0
  %6 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1.c, i8* %5)
  ret %nyx_string* %6
else1:
  br label %merge2
merge2:
  %7 = load %nyx_string*, %nyx_string** %ctype.ptr
  %8 = getelementptr [5 x i8], [5 x i8]* @.str2, i32 0, i32 0
  %9 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str2.c, i8* %8)
  %10 = call i1 @nyx_string_equals(%nyx_string* %7, %nyx_string* %9)
  br i1 %10, label %then3, label %else4
then3:
  %11 = getelementptr [4 x i8], [4 x i8]* @.str3, i32 0, i32 0
  %12 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str3.c, i8* %11)
  ret %nyx_string* %12
else4:
  br label %merge5
merge5:
  %13 = load %nyx_string*, %nyx_string** %ctype.ptr
  %14 = getelementptr [6 x i8], [6 x i8]* @.str4, i32 0, i32 0
  %15 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str4.c, i8* %14)
  %16 = call i1 @nyx_string_equals(%nyx_string* %13, %nyx_string* %15)
  br i1 %16, label %then6, label %else7
then6:
  %17 = getelementptr [4 x i8], [4 x i8]* @.str5, i32 0, i32 0
  %18 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str5.c, i8* %17)
  ret %nyx_string* %18
else7:
  br label %merge8
merge8:
  %19 = load %nyx_string*, %nyx_string** %ctype.ptr
  %20 = getelementptr [7 x i8], [7 x i8]* @.str6, i32 0, i32 0
  %21 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str6.c, i8* %20)
  %22 = call i1 @nyx_string_equals(%nyx_string* %19, %nyx_string* %21)
  br i1 %22, label %then9, label %else10
then9:
  %23 = getelementptr [4 x i8], [4 x i8]* @.str7, i32 0, i32 0
  %24 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str7.c, i8* %23)
  ret %nyx_string* %24
else10:
  br label %merge11
merge11:
  %25 = load %nyx_string*, %nyx_string** %ctype.ptr
  %26 = getelementptr [5 x i8], [5 x i8]* @.str8, i32 0, i32 0
  %27 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str8.c, i8* %26)
  %28 = call i1 @nyx_string_equals(%nyx_string* %25, %nyx_string* %27)
  br i1 %28, label %then12, label %else13
then12:
  %29 = getelementptr [3 x i8], [3 x i8]* @.str9, i32 0, i32 0
  %30 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str9.c, i8* %29)
  ret %nyx_string* %30
else13:
  br label %merge14
merge14:
  %31 = load %nyx_string*, %nyx_string** %ctype.ptr
  %32 = getelementptr [5 x i8], [5 x i8]* @.str10, i32 0, i32 0
  %33 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str10.c, i8* %32)
  %34 = call i1 @nyx_string_equals(%nyx_string* %31, %nyx_string* %33)
  br i1 %34, label %then15, label %else16
then15:
  %35 = getelementptr [5 x i8], [5 x i8]* @.str11, i32 0, i32 0
  %36 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str11.c, i8* %35)
  ret %nyx_string* %36
else16:
  br label %merge17
merge17:
  %37 = load %nyx_string*, %nyx_string** %ctype.ptr
  %38 = getelementptr [5 x i8], [5 x i8]* @.str12, i32 0, i32 0
  %39 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str12.c, i8* %38)
  %40 = call i1 @nyx_string_equals(%nyx_string* %37, %nyx_string* %39)
  br i1 %40, label %then18, label %else19
then18:
  %41 = getelementptr [5 x i8], [5 x i8]* @.str13, i32 0, i32 0
  %42 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str13.c, i8* %41)
  ret %nyx_string* %42
else19:
  br label %merge20
merge20:
  %43 = load %nyx_string*, %nyx_string** %ctype.ptr
  %44 = getelementptr [7 x i8], [7 x i8]* @.str14, i32 0, i32 0
  %45 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str14.c, i8* %44)
  %46 = call i1 @nyx_string_equals(%nyx_string* %43, %nyx_string* %45)
  br i1 %46, label %then21, label %else22
then21:
  %47 = getelementptr [6 x i8], [6 x i8]* @.str15, i32 0, i32 0
  %48 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str15.c, i8* %47)
  ret %nyx_string* %48
else22:
  br label %merge23
merge23:
  %49 = load %nyx_string*, %nyx_string** %ctype.ptr
  %50 = getelementptr [8 x i8], [8 x i8]* @.str16, i32 0, i32 0
  %51 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str16.c, i8* %50)
  %52 = call i1 @nyx_string_equals(%nyx_string* %49, %nyx_string* %51)
  br i1 %52, label %then24, label %else25
then24:
  %53 = getelementptr [3 x i8], [3 x i8]* @.str17, i32 0, i32 0
  %54 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str17.c, i8* %53)
  ret %nyx_string* %54
else25:
  br label %merge26
merge26:
  %55 = load %nyx_string*, %nyx_string** %ctype.ptr
  %56 = getelementptr [8 x i8], [8 x i8]* @.str18, i32 0, i32 0
  %57 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str18.c, i8* %56)
  %58 = call i1 @nyx_string_equals(%nyx_string* %55, %nyx_string* %57)
  br i1 %58, label %then27, label %else28
then27:
  %59 = getelementptr [4 x i8], [4 x i8]* @.str19, i32 0, i32 0
  %60 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str19.c, i8* %59)
  ret %nyx_string* %60
else28:
  br label %merge29
merge29:
  %61 = load %nyx_string*, %nyx_string** %ctype.ptr
  %62 = getelementptr [8 x i8], [8 x i8]* @.str20, i32 0, i32 0
  %63 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str20.c, i8* %62)
  %64 = call i1 @nyx_string_equals(%nyx_string* %61, %nyx_string* %63)
  br i1 %64, label %then30, label %else31
then30:
  %65 = getelementptr [4 x i8], [4 x i8]* @.str21, i32 0, i32 0
  %66 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str21.c, i8* %65)
  ret %nyx_string* %66
else31:
  br label %merge32
merge32:
  %67 = load %nyx_string*, %nyx_string** %ctype.ptr
  ret %nyx_string* %67
}

define internal i1 @is_pointer_type(
%nyx_string* %ctype.param) {
  %ctype.ptr = alloca %nyx_string*
  store %nyx_string* %ctype.param, %nyx_string** %ctype.ptr
  %68 = load %nyx_string*, %nyx_string** %ctype.ptr
  %69 = call i64 @nyx_string_byte_length(%nyx_string* %68)
  %70 = alloca i64
  store i64 %69, i64* %70
  %71 = load i64, i64* %70
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %then33, label %else34
then33:
  ret i1 0
else34:
  br label %merge35
merge35:
  %73 = load %nyx_string*, %nyx_string** %ctype.ptr
  %74 = load i64, i64* %70
  %75 = sub i64 %74, 1
  %76 = load i64, i64* %70
  %77 = call %nyx_string* @nyx_string_substring(%nyx_string* %73, i64 %75, i64 %76)
  %78 = getelementptr [2 x i8], [2 x i8]* @.str22, i32 0, i32 0
  %79 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str22.c, i8* %78)
  %80 = call i1 @nyx_string_equals(%nyx_string* %77, %nyx_string* %79)
  ret i1 %80
}

define internal %nyx_string* @format_extern_fn(
%nyx_string* %name.param, %nyx_string* %ret.param, %nyx_string* %params.param) {
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %ret.ptr = alloca %nyx_string*
  store %nyx_string* %ret.param, %nyx_string** %ret.ptr
  %params.ptr = alloca %nyx_string*
  store %nyx_string* %params.param, %nyx_string** %params.ptr
  %81 = getelementptr [15 x i8], [15 x i8]* @.str23, i32 0, i32 0
  %82 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str23.c, i8* %81)
  %83 = load %nyx_string*, %nyx_string** %name.ptr
  %84 = call %nyx_string* @nyx_string_concat(%nyx_string* %82, %nyx_string* %83)
  %85 = getelementptr [2 x i8], [2 x i8]* @.str24, i32 0, i32 0
  %86 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str24.c, i8* %85)
  %87 = call %nyx_string* @nyx_string_concat(%nyx_string* %84, %nyx_string* %86)
  %88 = load %nyx_string*, %nyx_string** %params.ptr
  %89 = call %nyx_string* @nyx_string_concat(%nyx_string* %87, %nyx_string* %88)
  %90 = getelementptr [6 x i8], [6 x i8]* @.str25, i32 0, i32 0
  %91 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str25.c, i8* %90)
  %92 = call %nyx_string* @nyx_string_concat(%nyx_string* %89, %nyx_string* %91)
  %93 = load %nyx_string*, %nyx_string** %ret.ptr
  %94 = call %nyx_string* @nyx_string_concat(%nyx_string* %92, %nyx_string* %93)
  ret %nyx_string* %94
}

define internal %nyx_string* @format_repr_c_struct(
%nyx_string* %name.param) {
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %95 = getelementptr [19 x i8], [19 x i8]* @.str26, i32 0, i32 0
  %96 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str26.c, i8* %95)
  %97 = load %nyx_string*, %nyx_string** %name.ptr
  %98 = call %nyx_string* @nyx_string_concat(%nyx_string* %96, %nyx_string* %97)
  %99 = getelementptr [3 x i8], [3 x i8]* @.str27, i32 0, i32 0
  %100 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str27.c, i8* %99)
  %101 = call %nyx_string* @nyx_string_concat(%nyx_string* %98, %nyx_string* %100)
  ret %nyx_string* %101
}

define internal i64 @test_type_mapping(
) {
  %102 = getelementptr [21 x i8], [21 x i8]* @.str28, i32 0, i32 0
  %103 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str28.c, i8* %102)
  %104 = call i8* @nyx_string_to_cstr(%nyx_string* %103)
  call void @nyx_print_string(i8* %104)
  %105 = getelementptr [4 x i8], [4 x i8]* @.str29, i32 0, i32 0
  %106 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str29.c, i8* %105)
  %107 = call %nyx_string* @map_c_type_basic(%nyx_string* %106)
  %108 = call i8* @nyx_string_to_cstr(%nyx_string* %107)
  call void @nyx_print_string(i8* %108)
  %109 = getelementptr [5 x i8], [5 x i8]* @.str30, i32 0, i32 0
  %110 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str30.c, i8* %109)
  %111 = call %nyx_string* @map_c_type_basic(%nyx_string* %110)
  %112 = call i8* @nyx_string_to_cstr(%nyx_string* %111)
  call void @nyx_print_string(i8* %112)
  %113 = getelementptr [6 x i8], [6 x i8]* @.str31, i32 0, i32 0
  %114 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str31.c, i8* %113)
  %115 = call %nyx_string* @map_c_type_basic(%nyx_string* %114)
  %116 = call i8* @nyx_string_to_cstr(%nyx_string* %115)
  call void @nyx_print_string(i8* %116)
  %117 = getelementptr [7 x i8], [7 x i8]* @.str32, i32 0, i32 0
  %118 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str32.c, i8* %117)
  %119 = call %nyx_string* @map_c_type_basic(%nyx_string* %118)
  %120 = call i8* @nyx_string_to_cstr(%nyx_string* %119)
  call void @nyx_print_string(i8* %120)
  %121 = getelementptr [5 x i8], [5 x i8]* @.str33, i32 0, i32 0
  %122 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str33.c, i8* %121)
  %123 = call %nyx_string* @map_c_type_basic(%nyx_string* %122)
  %124 = call i8* @nyx_string_to_cstr(%nyx_string* %123)
  call void @nyx_print_string(i8* %124)
  %125 = getelementptr [7 x i8], [7 x i8]* @.str34, i32 0, i32 0
  %126 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str34.c, i8* %125)
  %127 = call %nyx_string* @map_c_type_basic(%nyx_string* %126)
  %128 = call i8* @nyx_string_to_cstr(%nyx_string* %127)
  call void @nyx_print_string(i8* %128)
  %129 = getelementptr [8 x i8], [8 x i8]* @.str35, i32 0, i32 0
  %130 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str35.c, i8* %129)
  %131 = call %nyx_string* @map_c_type_basic(%nyx_string* %130)
  %132 = call i8* @nyx_string_to_cstr(%nyx_string* %131)
  call void @nyx_print_string(i8* %132)
  ret i64 0
}

define internal i64 @test_pointer_detection(
) {
  %133 = getelementptr [26 x i8], [26 x i8]* @.str36, i32 0, i32 0
  %134 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str36.c, i8* %133)
  %135 = call i8* @nyx_string_to_cstr(%nyx_string* %134)
  call void @nyx_print_string(i8* %135)
  %136 = getelementptr [5 x i8], [5 x i8]* @.str37, i32 0, i32 0
  %137 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str37.c, i8* %136)
  %138 = call i1 @is_pointer_type(%nyx_string* %137)
  br i1 %138, label %then36, label %else37
then36:
  %139 = getelementptr [16 x i8], [16 x i8]* @.str38, i32 0, i32 0
  %140 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str38.c, i8* %139)
  %141 = call i8* @nyx_string_to_cstr(%nyx_string* %140)
  call void @nyx_print_string(i8* %141)
  br label %merge38
else37:
  br label %merge38
merge38:
  %142 = getelementptr [6 x i8], [6 x i8]* @.str39, i32 0, i32 0
  %143 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str39.c, i8* %142)
  %144 = call i1 @is_pointer_type(%nyx_string* %143)
  br i1 %144, label %then39, label %else40
then39:
  %145 = getelementptr [17 x i8], [17 x i8]* @.str40, i32 0, i32 0
  %146 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str40.c, i8* %145)
  %147 = call i8* @nyx_string_to_cstr(%nyx_string* %146)
  call void @nyx_print_string(i8* %147)
  br label %merge41
else40:
  br label %merge41
merge41:
  %148 = getelementptr [4 x i8], [4 x i8]* @.str41, i32 0, i32 0
  %149 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str41.c, i8* %148)
  %150 = call i1 @is_pointer_type(%nyx_string* %149)
  %151 = xor i1 %150, true
  br i1 %151, label %then42, label %else43
then42:
  %152 = getelementptr [19 x i8], [19 x i8]* @.str42, i32 0, i32 0
  %153 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str42.c, i8* %152)
  %154 = call i8* @nyx_string_to_cstr(%nyx_string* %153)
  call void @nyx_print_string(i8* %154)
  br label %merge44
else43:
  br label %merge44
merge44:
  %155 = getelementptr [5 x i8], [5 x i8]* @.str43, i32 0, i32 0
  %156 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str43.c, i8* %155)
  %157 = call i1 @is_pointer_type(%nyx_string* %156)
  %158 = xor i1 %157, true
  br i1 %158, label %then45, label %else46
then45:
  %159 = getelementptr [20 x i8], [20 x i8]* @.str44, i32 0, i32 0
  %160 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str44.c, i8* %159)
  %161 = call i8* @nyx_string_to_cstr(%nyx_string* %160)
  call void @nyx_print_string(i8* %161)
  br label %merge47
else46:
  br label %merge47
merge47:
  ret i64 0
}

define internal i64 @test_extern_fn_format(
) {
  %162 = getelementptr [25 x i8], [25 x i8]* @.str45, i32 0, i32 0
  %163 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str45.c, i8* %162)
  %164 = call i8* @nyx_string_to_cstr(%nyx_string* %163)
  call void @nyx_print_string(i8* %164)
  %165 = getelementptr [4 x i8], [4 x i8]* @.str46, i32 0, i32 0
  %166 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str46.c, i8* %165)
  %167 = getelementptr [4 x i8], [4 x i8]* @.str47, i32 0, i32 0
  %168 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str47.c, i8* %167)
  %169 = getelementptr [15 x i8], [15 x i8]* @.str48, i32 0, i32 0
  %170 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str48.c, i8* %169)
  %171 = call %nyx_string* @format_extern_fn(%nyx_string* %166, %nyx_string* %168, %nyx_string* %170)
  %172 = call i8* @nyx_string_to_cstr(%nyx_string* %171)
  call void @nyx_print_string(i8* %172)
  %173 = getelementptr [6 x i8], [6 x i8]* @.str49, i32 0, i32 0
  %174 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str49.c, i8* %173)
  %175 = getelementptr [4 x i8], [4 x i8]* @.str50, i32 0, i32 0
  %176 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str50.c, i8* %175)
  %177 = getelementptr [10 x i8], [10 x i8]* @.str51, i32 0, i32 0
  %178 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str51.c, i8* %177)
  %179 = call %nyx_string* @format_extern_fn(%nyx_string* %174, %nyx_string* %176, %nyx_string* %178)
  %180 = call i8* @nyx_string_to_cstr(%nyx_string* %179)
  call void @nyx_print_string(i8* %180)
  %181 = getelementptr [5 x i8], [5 x i8]* @.str52, i32 0, i32 0
  %182 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str52.c, i8* %181)
  %183 = getelementptr [5 x i8], [5 x i8]* @.str53, i32 0, i32 0
  %184 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str53.c, i8* %183)
  %185 = getelementptr [9 x i8], [9 x i8]* @.str54, i32 0, i32 0
  %186 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str54.c, i8* %185)
  %187 = call %nyx_string* @format_extern_fn(%nyx_string* %182, %nyx_string* %184, %nyx_string* %186)
  %188 = call i8* @nyx_string_to_cstr(%nyx_string* %187)
  call void @nyx_print_string(i8* %188)
  ret i64 0
}

define internal i64 @test_repr_c_struct(
) {
  %189 = getelementptr [22 x i8], [22 x i8]* @.str55, i32 0, i32 0
  %190 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str55.c, i8* %189)
  %191 = call i8* @nyx_string_to_cstr(%nyx_string* %190)
  call void @nyx_print_string(i8* %191)
  %192 = getelementptr [6 x i8], [6 x i8]* @.str56, i32 0, i32 0
  %193 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str56.c, i8* %192)
  %194 = call %nyx_string* @format_repr_c_struct(%nyx_string* %193)
  %195 = call i8* @nyx_string_to_cstr(%nyx_string* %194)
  call void @nyx_print_string(i8* %195)
  %196 = getelementptr [12 x i8], [12 x i8]* @.str57, i32 0, i32 0
  %197 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str57.c, i8* %196)
  %198 = call i8* @nyx_string_to_cstr(%nyx_string* %197)
  call void @nyx_print_string(i8* %198)
  %199 = getelementptr [12 x i8], [12 x i8]* @.str58, i32 0, i32 0
  %200 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str58.c, i8* %199)
  %201 = call i8* @nyx_string_to_cstr(%nyx_string* %200)
  call void @nyx_print_string(i8* %201)
  %202 = getelementptr [2 x i8], [2 x i8]* @.str59, i32 0, i32 0
  %203 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str59.c, i8* %202)
  %204 = call i8* @nyx_string_to_cstr(%nyx_string* %203)
  call void @nyx_print_string(i8* %204)
  ret i64 0
}

define internal i64 @test_define_const(
) {
  %205 = getelementptr [25 x i8], [25 x i8]* @.str60, i32 0, i32 0
  %206 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str60.c, i8* %205)
  %207 = call i8* @nyx_string_to_cstr(%nyx_string* %206)
  call void @nyx_print_string(i8* %207)
  %208 = call { i64, i8* }* @nyx_array_new_ptr()
  %209 = getelementptr [14 x i8], [14 x i8]* @.str61, i32 0, i32 0
  %210 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str61.c, i8* %209)
  %211 = ptrtoint %nyx_string* %210 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %208, i64 %211, i64 2)
  %212 = getelementptr [11 x i8], [11 x i8]* @.str62, i32 0, i32 0
  %213 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str62.c, i8* %212)
  %214 = ptrtoint %nyx_string* %213 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %208, i64 %214, i64 2)
  %215 = getelementptr [12 x i8], [12 x i8]* @.str63, i32 0, i32 0
  %216 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str63.c, i8* %215)
  %217 = ptrtoint %nyx_string* %216 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %208, i64 %217, i64 2)
  call void @nyx_array_retag_unknown({ i64, i8* }* %208, i64 2)
  %218 = alloca { i64, i8* }*
  store { i64, i8* }* %208, { i64, i8* }** %218
  %219 = alloca i64
  store i64 0, i64* %219
  %220 = getelementptr [2 x i8], [2 x i8]* @.str64, i32 0, i32 0
  %221 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str64.c, i8* %220)
  %222 = alloca %nyx_string*
  store %nyx_string* %221, %nyx_string** %222
  %223 = getelementptr [7 x i8], [7 x i8]* @.str65, i32 0, i32 0
  %224 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str65.c, i8* %223)
  %225 = alloca %nyx_string*
  store %nyx_string* %224, %nyx_string** %225
  %226 = getelementptr [9 x i8], [9 x i8]* @.str66, i32 0, i32 0
  %227 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str66.c, i8* %226)
  %228 = alloca %nyx_string*
  store %nyx_string* %227, %nyx_string** %228
  %229 = call i8* @llvm.stacksave()
  br label %while_cond48
while_cond48:
  %230 = load i64, i64* %219
  %231 = load { i64, i8* }*, { i64, i8* }** %218
  %232 = call i64 @nyx_array_length({ i64, i8* }* %231)
  %233 = icmp slt i64 %230, %232
  br i1 %233, label %while_body49, label %while_end50
while_body49:
  call void @llvm.stackrestore(i8* %229)
  %234 = load { i64, i8* }*, { i64, i8* }** %218
  %235 = load i64, i64* %219
  %236 = call i64 @nyx_array_get_checked({ i64, i8* }* %234, i64 %235, i64 2)
  %237 = inttoptr i64 %236 to %nyx_string*
  %238 = alloca %nyx_string*
  store %nyx_string* %237, %nyx_string** %238
  %239 = load %nyx_string*, %nyx_string** %238
  %240 = load %nyx_string*, %nyx_string** %222
  %241 = call i64 @nyx_string_index_of(%nyx_string* %239, %nyx_string* %240)
  %242 = alloca i64
  store i64 %241, i64* %242
  %243 = load i64, i64* %242
  %244 = icmp sgt i64 %243, 0
  br i1 %244, label %then51, label %else52
then51:
  %245 = load %nyx_string*, %nyx_string** %238
  %246 = load i64, i64* %242
  %247 = call %nyx_string* @nyx_string_substring(%nyx_string* %245, i64 0, i64 %246)
  %248 = alloca %nyx_string*
  store %nyx_string* %247, %nyx_string** %248
  %249 = load %nyx_string*, %nyx_string** %238
  %250 = load i64, i64* %242
  %251 = add i64 %250, 1
  %252 = load %nyx_string*, %nyx_string** %238
  %253 = call i64 @nyx_string_byte_length(%nyx_string* %252)
  %254 = call %nyx_string* @nyx_string_substring(%nyx_string* %249, i64 %251, i64 %253)
  %255 = alloca %nyx_string*
  store %nyx_string* %254, %nyx_string** %255
  %256 = load %nyx_string*, %nyx_string** %225
  %257 = load %nyx_string*, %nyx_string** %248
  %258 = call %nyx_string* @nyx_string_concat(%nyx_string* %256, %nyx_string* %257)
  %259 = load %nyx_string*, %nyx_string** %228
  %260 = call %nyx_string* @nyx_string_concat(%nyx_string* %258, %nyx_string* %259)
  %261 = load %nyx_string*, %nyx_string** %255
  %262 = call %nyx_string* @nyx_string_concat(%nyx_string* %260, %nyx_string* %261)
  %263 = call i8* @nyx_string_to_cstr(%nyx_string* %262)
  call void @nyx_print_string(i8* %263)
  br label %merge53
else52:
  br label %merge53
merge53:
  %264 = load i64, i64* %219
  %265 = add i64 %264, 1
  store i64 %265, i64* %219
  br label %while_cond48
while_end50:
  ret i64 0
}

define internal i64 @test_enum_to_const(
) {
  %266 = getelementptr [22 x i8], [22 x i8]* @.str67, i32 0, i32 0
  %267 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str67.c, i8* %266)
  %268 = call i8* @nyx_string_to_cstr(%nyx_string* %267)
  call void @nyx_print_string(i8* %268)
  %269 = call { i64, i8* }* @nyx_array_new_ptr()
  %270 = getelementptr [4 x i8], [4 x i8]* @.str68, i32 0, i32 0
  %271 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str68.c, i8* %270)
  %272 = ptrtoint %nyx_string* %271 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %269, i64 %272, i64 2)
  %273 = getelementptr [6 x i8], [6 x i8]* @.str69, i32 0, i32 0
  %274 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str69.c, i8* %273)
  %275 = ptrtoint %nyx_string* %274 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %269, i64 %275, i64 2)
  %276 = getelementptr [5 x i8], [5 x i8]* @.str70, i32 0, i32 0
  %277 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str70.c, i8* %276)
  %278 = ptrtoint %nyx_string* %277 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %269, i64 %278, i64 2)
  call void @nyx_array_retag_unknown({ i64, i8* }* %269, i64 2)
  %279 = alloca { i64, i8* }*
  store { i64, i8* }* %269, { i64, i8* }** %279
  %280 = alloca i64
  store i64 0, i64* %280
  %281 = getelementptr [7 x i8], [7 x i8]* @.str71, i32 0, i32 0
  %282 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str71.c, i8* %281)
  %283 = alloca %nyx_string*
  store %nyx_string* %282, %nyx_string** %283
  %284 = getelementptr [9 x i8], [9 x i8]* @.str72, i32 0, i32 0
  %285 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str72.c, i8* %284)
  %286 = alloca %nyx_string*
  store %nyx_string* %285, %nyx_string** %286
  %287 = getelementptr [3 x i8], [3 x i8]* @.str73, i32 0, i32 0
  %288 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str73.c, i8* %287)
  %289 = alloca %nyx_string*
  store %nyx_string* %288, %nyx_string** %289
  %290 = call i8* @llvm.stacksave()
  br label %while_cond54
while_cond54:
  %291 = load i64, i64* %280
  %292 = load { i64, i8* }*, { i64, i8* }** %279
  %293 = call i64 @nyx_array_length({ i64, i8* }* %292)
  %294 = icmp slt i64 %291, %293
  br i1 %294, label %while_body55, label %while_end56
while_body55:
  call void @llvm.stackrestore(i8* %290)
  %295 = load { i64, i8* }*, { i64, i8* }** %279
  %296 = load i64, i64* %280
  %297 = call i64 @nyx_array_get_checked({ i64, i8* }* %295, i64 %296, i64 2)
  %298 = inttoptr i64 %297 to %nyx_string*
  %299 = alloca %nyx_string*
  store %nyx_string* %298, %nyx_string** %299
  %300 = load %nyx_string*, %nyx_string** %283
  %301 = load %nyx_string*, %nyx_string** %299
  %302 = call %nyx_string* @nyx_string_concat(%nyx_string* %300, %nyx_string* %301)
  %303 = load %nyx_string*, %nyx_string** %286
  %304 = call %nyx_string* @nyx_string_concat(%nyx_string* %302, %nyx_string* %303)
  %305 = load %nyx_string*, %nyx_string** %289
  %306 = call { i64, i8* }* @nyx_array_new_ptr()
  %307 = load i64, i64* %280
  %308 = call %nyx_string* @nyx_string_from_int(i64 %307)
  %309 = bitcast %nyx_string* %308 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %306, i8* %309)
  %310 = call %nyx_string* @nyx_format(%nyx_string* %305, { i64, i8* }* %306)
  %311 = call %nyx_string* @nyx_string_concat(%nyx_string* %304, %nyx_string* %310)
  %312 = call i8* @nyx_string_to_cstr(%nyx_string* %311)
  call void @nyx_print_string(i8* %312)
  %313 = load i64, i64* %280
  %314 = add i64 %313, 1
  store i64 %314, i64* %280
  br label %while_cond54
while_end56:
  ret i64 0
}

define i64 @main(
i32 %argc, i8** %argv) {
  call void @nyx_set_args(i32 %argc, i8** %argv)
  %315 = getelementptr [13 x i8], [13 x i8]* @.str74, i32 0, i32 0
  %316 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str74.c, i8* %315)
  %317 = call i8* @nyx_string_to_cstr(%nyx_string* %316)
  call void @nyx_print_string(i8* %317)
  %318 = call i64 @test_type_mapping()
  %319 = call i64 @test_pointer_detection()
  %320 = call i64 @test_extern_fn_format()
  %321 = call i64 @test_repr_c_struct()
  %322 = call i64 @test_define_const()
  %323 = call i64 @test_enum_to_const()
  %324 = getelementptr [11 x i8], [11 x i8]* @.str75, i32 0, i32 0
  %325 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str75.c, i8* %324)
  %326 = call i8* @nyx_string_to_cstr(%nyx_string* %325)
  call void @nyx_print_string(i8* %326)
  ret i64 0
}


attributes #0 = { returns_twice }

