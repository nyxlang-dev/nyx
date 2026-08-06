source_filename = "/home/admin/nyx/lang/tests/compiler/language/test-151-bindgen.nx"
target triple = "x86_64-pc-linux-gnu"

@.str0 = private unnamed_addr constant [7 x i8] c"const \00"
@.str0.c = internal global %nyx_string* null
@.str1 = private unnamed_addr constant [2 x i8] c"*\00"
@.str1.c = internal global %nyx_string* null
@.str2 = private unnamed_addr constant [5 x i8] c"void\00"
@.str2.c = internal global %nyx_string* null
@.str3 = private unnamed_addr constant [11 x i8] c"const void\00"
@.str3.c = internal global %nyx_string* null
@.str4 = private unnamed_addr constant [4 x i8] c"*i8\00"
@.str4.c = internal global %nyx_string* null
@.str5 = private unnamed_addr constant [2 x i8] c"*\00"
@.str5.c = internal global %nyx_string* null
@.str6 = private unnamed_addr constant [5 x i8] c"void\00"
@.str6.c = internal global %nyx_string* null
@.str7 = private unnamed_addr constant [3 x i8] c"()\00"
@.str7.c = internal global %nyx_string* null
@.str8 = private unnamed_addr constant [4 x i8] c"int\00"
@.str8.c = internal global %nyx_string* null
@.str9 = private unnamed_addr constant [8 x i8] c"int32_t\00"
@.str9.c = internal global %nyx_string* null
@.str10 = private unnamed_addr constant [4 x i8] c"i32\00"
@.str10.c = internal global %nyx_string* null
@.str11 = private unnamed_addr constant [5 x i8] c"char\00"
@.str11.c = internal global %nyx_string* null
@.str12 = private unnamed_addr constant [7 x i8] c"int8_t\00"
@.str12.c = internal global %nyx_string* null
@.str13 = private unnamed_addr constant [3 x i8] c"i8\00"
@.str13.c = internal global %nyx_string* null
@.str14 = private unnamed_addr constant [6 x i8] c"short\00"
@.str14.c = internal global %nyx_string* null
@.str15 = private unnamed_addr constant [8 x i8] c"int16_t\00"
@.str15.c = internal global %nyx_string* null
@.str16 = private unnamed_addr constant [4 x i8] c"i16\00"
@.str16.c = internal global %nyx_string* null
@.str17 = private unnamed_addr constant [5 x i8] c"long\00"
@.str17.c = internal global %nyx_string* null
@.str18 = private unnamed_addr constant [8 x i8] c"int64_t\00"
@.str18.c = internal global %nyx_string* null
@.str19 = private unnamed_addr constant [4 x i8] c"i64\00"
@.str19.c = internal global %nyx_string* null
@.str20 = private unnamed_addr constant [14 x i8] c"unsigned char\00"
@.str20.c = internal global %nyx_string* null
@.str21 = private unnamed_addr constant [8 x i8] c"uint8_t\00"
@.str21.c = internal global %nyx_string* null
@.str22 = private unnamed_addr constant [3 x i8] c"u8\00"
@.str22.c = internal global %nyx_string* null
@.str23 = private unnamed_addr constant [15 x i8] c"unsigned short\00"
@.str23.c = internal global %nyx_string* null
@.str24 = private unnamed_addr constant [9 x i8] c"uint16_t\00"
@.str24.c = internal global %nyx_string* null
@.str25 = private unnamed_addr constant [4 x i8] c"u16\00"
@.str25.c = internal global %nyx_string* null
@.str26 = private unnamed_addr constant [13 x i8] c"unsigned int\00"
@.str26.c = internal global %nyx_string* null
@.str27 = private unnamed_addr constant [9 x i8] c"uint32_t\00"
@.str27.c = internal global %nyx_string* null
@.str28 = private unnamed_addr constant [4 x i8] c"u32\00"
@.str28.c = internal global %nyx_string* null
@.str29 = private unnamed_addr constant [14 x i8] c"unsigned long\00"
@.str29.c = internal global %nyx_string* null
@.str30 = private unnamed_addr constant [9 x i8] c"uint64_t\00"
@.str30.c = internal global %nyx_string* null
@.str31 = private unnamed_addr constant [4 x i8] c"u64\00"
@.str31.c = internal global %nyx_string* null
@.str32 = private unnamed_addr constant [6 x i8] c"float\00"
@.str32.c = internal global %nyx_string* null
@.str33 = private unnamed_addr constant [4 x i8] c"f32\00"
@.str33.c = internal global %nyx_string* null
@.str34 = private unnamed_addr constant [7 x i8] c"double\00"
@.str34.c = internal global %nyx_string* null
@.str35 = private unnamed_addr constant [6 x i8] c"float\00"
@.str35.c = internal global %nyx_string* null
@.str36 = private unnamed_addr constant [7 x i8] c"size_t\00"
@.str36.c = internal global %nyx_string* null
@.str37 = private unnamed_addr constant [6 x i8] c"usize\00"
@.str37.c = internal global %nyx_string* null
@.str38 = private unnamed_addr constant [3 x i8] c"//\00"
@.str38.c = internal global %nyx_string* null
@.str39 = private unnamed_addr constant [4 x i8] c"int\00"
@.str39.c = internal global %nyx_string* null
@.str40 = private unnamed_addr constant [5 x i8] c"char\00"
@.str40.c = internal global %nyx_string* null
@.str41 = private unnamed_addr constant [7 x i8] c"double\00"
@.str41.c = internal global %nyx_string* null
@.str42 = private unnamed_addr constant [7 x i8] c"size_t\00"
@.str42.c = internal global %nyx_string* null
@.str43 = private unnamed_addr constant [8 x i8] c"uint8_t\00"
@.str43.c = internal global %nyx_string* null
@.str44 = private unnamed_addr constant [5 x i8] c"void\00"
@.str44.c = internal global %nyx_string* null
@.str45 = private unnamed_addr constant [6 x i8] c"char*\00"
@.str45.c = internal global %nyx_string* null
@.str46 = private unnamed_addr constant [6 x i8] c"void*\00"
@.str46.c = internal global %nyx_string* null
@.str47 = private unnamed_addr constant [5 x i8] c"int*\00"
@.str47.c = internal global %nyx_string* null
@.str48 = private unnamed_addr constant [12 x i8] c"const char*\00"
@.str48.c = internal global %nyx_string* null
@.str49 = private unnamed_addr constant [30 x i8] c"int foo; // this is a comment\00"
@.str49.c = internal global %nyx_string* null
@.str50 = private unnamed_addr constant [19 x i8] c"double pi; // 3.14\00"
@.str50.c = internal global %nyx_string* null
@.str51 = private unnamed_addr constant [16 x i8] c"int foo(int x);\00"
@.str51.c = internal global %nyx_string* null
@.str52 = private unnamed_addr constant [2 x i8] c"(\00"
@.str52.c = internal global %nyx_string* null
@.str53 = private unnamed_addr constant [2 x i8] c")\00"
@.str53.c = internal global %nyx_string* null
@.str54 = private unnamed_addr constant [13 x i8] c"unsigned int\00"
@.str54.c = internal global %nyx_string* null
@.str55 = private unnamed_addr constant [5 x i8] c"long\00"
@.str55.c = internal global %nyx_string* null
@.str56 = private unnamed_addr constant [6 x i8] c"float\00"
@.str56.c = internal global %nyx_string* null
@.str57 = private unnamed_addr constant [11 x i8] c"bindgen ok\00"
@.str57.c = internal global %nyx_string* null
@__nyx_test_failed = external global i64
@__nyx_test_mode = external global i64
; Nyx Compiler Bootstrap v3.0
; Generated from: /home/admin/nyx/lang/tests/compiler/language/test-151-bindgen.nx

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


define internal %nyx_string* @map_c_type_simple(
%nyx_string* %raw.param) {
  %raw.ptr = alloca %nyx_string*
  store %nyx_string* %raw.param, %nyx_string** %raw.ptr
  %1 = load %nyx_string*, %nyx_string** %raw.ptr
  %2 = call %nyx_string* @nyx_string_trim(%nyx_string* %1)
  %3 = alloca %nyx_string*
  store %nyx_string* %2, %nyx_string** %3
  %4 = load %nyx_string*, %nyx_string** %3
  %5 = getelementptr [7 x i8], [7 x i8]* @.str0, i32 0, i32 0
  %6 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str0.c, i8* %5)
  %7 = call i1 @nyx_string_starts_with(%nyx_string* %4, %nyx_string* %6)
  br i1 %7, label %then0, label %else1
then0:
  %8 = load %nyx_string*, %nyx_string** %3
  %9 = load %nyx_string*, %nyx_string** %3
  %10 = call i64 @nyx_string_byte_length(%nyx_string* %9)
  %11 = call %nyx_string* @nyx_string_substring(%nyx_string* %8, i64 6, i64 %10)
  %12 = call %nyx_string* @nyx_string_trim(%nyx_string* %11)
  store %nyx_string* %12, %nyx_string** %3
  br label %merge2
else1:
  br label %merge2
merge2:
  %13 = load %nyx_string*, %nyx_string** %3
  %14 = getelementptr [2 x i8], [2 x i8]* @.str1, i32 0, i32 0
  %15 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1.c, i8* %14)
  %16 = call i1 @nyx_string_ends_with(%nyx_string* %13, %nyx_string* %15)
  br i1 %16, label %then3, label %else4
then3:
  %17 = load %nyx_string*, %nyx_string** %3
  %18 = load %nyx_string*, %nyx_string** %3
  %19 = call i64 @nyx_string_byte_length(%nyx_string* %18)
  %20 = sub i64 %19, 1
  %21 = call %nyx_string* @nyx_string_substring(%nyx_string* %17, i64 0, i64 %20)
  %22 = call %nyx_string* @nyx_string_trim(%nyx_string* %21)
  %23 = alloca %nyx_string*
  store %nyx_string* %22, %nyx_string** %23
  %24 = alloca i1
  store i1 true, i1* %24
  %25 = load %nyx_string*, %nyx_string** %23
  %26 = getelementptr [5 x i8], [5 x i8]* @.str2, i32 0, i32 0
  %27 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str2.c, i8* %26)
  %28 = call i1 @nyx_string_equals(%nyx_string* %25, %nyx_string* %27)
  br i1 %28, label %sc_or_end7, label %sc_or_rhs6
sc_or_rhs6:
  %29 = load %nyx_string*, %nyx_string** %23
  %30 = getelementptr [11 x i8], [11 x i8]* @.str3, i32 0, i32 0
  %31 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str3.c, i8* %30)
  %32 = call i1 @nyx_string_equals(%nyx_string* %29, %nyx_string* %31)
  store i1 %32, i1* %24
  br label %sc_or_end7
sc_or_end7:
  %33 = load i1, i1* %24
  br i1 %33, label %then8, label %else9
then8:
  %34 = getelementptr [4 x i8], [4 x i8]* @.str4, i32 0, i32 0
  %35 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str4.c, i8* %34)
  ret %nyx_string* %35
else9:
  br label %merge10
merge10:
  %36 = load %nyx_string*, %nyx_string** %23
  %37 = call %nyx_string* @map_c_type_simple(%nyx_string* %36)
  %38 = alloca %nyx_string*
  store %nyx_string* %37, %nyx_string** %38
  %39 = getelementptr [2 x i8], [2 x i8]* @.str5, i32 0, i32 0
  %40 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str5.c, i8* %39)
  %41 = load %nyx_string*, %nyx_string** %38
  %42 = call %nyx_string* @nyx_string_concat(%nyx_string* %40, %nyx_string* %41)
  ret %nyx_string* %42
else4:
  br label %merge5
merge5:
  %43 = load %nyx_string*, %nyx_string** %3
  %44 = getelementptr [5 x i8], [5 x i8]* @.str6, i32 0, i32 0
  %45 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str6.c, i8* %44)
  %46 = call i1 @nyx_string_equals(%nyx_string* %43, %nyx_string* %45)
  br i1 %46, label %then11, label %else12
then11:
  %47 = getelementptr [3 x i8], [3 x i8]* @.str7, i32 0, i32 0
  %48 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str7.c, i8* %47)
  ret %nyx_string* %48
else12:
  br label %merge13
merge13:
  %49 = alloca i1
  store i1 true, i1* %49
  %50 = load %nyx_string*, %nyx_string** %3
  %51 = getelementptr [4 x i8], [4 x i8]* @.str8, i32 0, i32 0
  %52 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str8.c, i8* %51)
  %53 = call i1 @nyx_string_equals(%nyx_string* %50, %nyx_string* %52)
  br i1 %53, label %sc_or_end15, label %sc_or_rhs14
sc_or_rhs14:
  %54 = load %nyx_string*, %nyx_string** %3
  %55 = getelementptr [8 x i8], [8 x i8]* @.str9, i32 0, i32 0
  %56 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str9.c, i8* %55)
  %57 = call i1 @nyx_string_equals(%nyx_string* %54, %nyx_string* %56)
  store i1 %57, i1* %49
  br label %sc_or_end15
sc_or_end15:
  %58 = load i1, i1* %49
  br i1 %58, label %then16, label %else17
then16:
  %59 = getelementptr [4 x i8], [4 x i8]* @.str10, i32 0, i32 0
  %60 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str10.c, i8* %59)
  ret %nyx_string* %60
else17:
  br label %merge18
merge18:
  %61 = alloca i1
  store i1 true, i1* %61
  %62 = load %nyx_string*, %nyx_string** %3
  %63 = getelementptr [5 x i8], [5 x i8]* @.str11, i32 0, i32 0
  %64 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str11.c, i8* %63)
  %65 = call i1 @nyx_string_equals(%nyx_string* %62, %nyx_string* %64)
  br i1 %65, label %sc_or_end20, label %sc_or_rhs19
sc_or_rhs19:
  %66 = load %nyx_string*, %nyx_string** %3
  %67 = getelementptr [7 x i8], [7 x i8]* @.str12, i32 0, i32 0
  %68 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str12.c, i8* %67)
  %69 = call i1 @nyx_string_equals(%nyx_string* %66, %nyx_string* %68)
  store i1 %69, i1* %61
  br label %sc_or_end20
sc_or_end20:
  %70 = load i1, i1* %61
  br i1 %70, label %then21, label %else22
then21:
  %71 = getelementptr [3 x i8], [3 x i8]* @.str13, i32 0, i32 0
  %72 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str13.c, i8* %71)
  ret %nyx_string* %72
else22:
  br label %merge23
merge23:
  %73 = alloca i1
  store i1 true, i1* %73
  %74 = load %nyx_string*, %nyx_string** %3
  %75 = getelementptr [6 x i8], [6 x i8]* @.str14, i32 0, i32 0
  %76 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str14.c, i8* %75)
  %77 = call i1 @nyx_string_equals(%nyx_string* %74, %nyx_string* %76)
  br i1 %77, label %sc_or_end25, label %sc_or_rhs24
sc_or_rhs24:
  %78 = load %nyx_string*, %nyx_string** %3
  %79 = getelementptr [8 x i8], [8 x i8]* @.str15, i32 0, i32 0
  %80 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str15.c, i8* %79)
  %81 = call i1 @nyx_string_equals(%nyx_string* %78, %nyx_string* %80)
  store i1 %81, i1* %73
  br label %sc_or_end25
sc_or_end25:
  %82 = load i1, i1* %73
  br i1 %82, label %then26, label %else27
then26:
  %83 = getelementptr [4 x i8], [4 x i8]* @.str16, i32 0, i32 0
  %84 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str16.c, i8* %83)
  ret %nyx_string* %84
else27:
  br label %merge28
merge28:
  %85 = alloca i1
  store i1 true, i1* %85
  %86 = load %nyx_string*, %nyx_string** %3
  %87 = getelementptr [5 x i8], [5 x i8]* @.str17, i32 0, i32 0
  %88 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str17.c, i8* %87)
  %89 = call i1 @nyx_string_equals(%nyx_string* %86, %nyx_string* %88)
  br i1 %89, label %sc_or_end30, label %sc_or_rhs29
sc_or_rhs29:
  %90 = load %nyx_string*, %nyx_string** %3
  %91 = getelementptr [8 x i8], [8 x i8]* @.str18, i32 0, i32 0
  %92 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str18.c, i8* %91)
  %93 = call i1 @nyx_string_equals(%nyx_string* %90, %nyx_string* %92)
  store i1 %93, i1* %85
  br label %sc_or_end30
sc_or_end30:
  %94 = load i1, i1* %85
  br i1 %94, label %then31, label %else32
then31:
  %95 = getelementptr [4 x i8], [4 x i8]* @.str19, i32 0, i32 0
  %96 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str19.c, i8* %95)
  ret %nyx_string* %96
else32:
  br label %merge33
merge33:
  %97 = alloca i1
  store i1 true, i1* %97
  %98 = load %nyx_string*, %nyx_string** %3
  %99 = getelementptr [14 x i8], [14 x i8]* @.str20, i32 0, i32 0
  %100 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str20.c, i8* %99)
  %101 = call i1 @nyx_string_equals(%nyx_string* %98, %nyx_string* %100)
  br i1 %101, label %sc_or_end35, label %sc_or_rhs34
sc_or_rhs34:
  %102 = load %nyx_string*, %nyx_string** %3
  %103 = getelementptr [8 x i8], [8 x i8]* @.str21, i32 0, i32 0
  %104 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str21.c, i8* %103)
  %105 = call i1 @nyx_string_equals(%nyx_string* %102, %nyx_string* %104)
  store i1 %105, i1* %97
  br label %sc_or_end35
sc_or_end35:
  %106 = load i1, i1* %97
  br i1 %106, label %then36, label %else37
then36:
  %107 = getelementptr [3 x i8], [3 x i8]* @.str22, i32 0, i32 0
  %108 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str22.c, i8* %107)
  ret %nyx_string* %108
else37:
  br label %merge38
merge38:
  %109 = alloca i1
  store i1 true, i1* %109
  %110 = load %nyx_string*, %nyx_string** %3
  %111 = getelementptr [15 x i8], [15 x i8]* @.str23, i32 0, i32 0
  %112 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str23.c, i8* %111)
  %113 = call i1 @nyx_string_equals(%nyx_string* %110, %nyx_string* %112)
  br i1 %113, label %sc_or_end40, label %sc_or_rhs39
sc_or_rhs39:
  %114 = load %nyx_string*, %nyx_string** %3
  %115 = getelementptr [9 x i8], [9 x i8]* @.str24, i32 0, i32 0
  %116 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str24.c, i8* %115)
  %117 = call i1 @nyx_string_equals(%nyx_string* %114, %nyx_string* %116)
  store i1 %117, i1* %109
  br label %sc_or_end40
sc_or_end40:
  %118 = load i1, i1* %109
  br i1 %118, label %then41, label %else42
then41:
  %119 = getelementptr [4 x i8], [4 x i8]* @.str25, i32 0, i32 0
  %120 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str25.c, i8* %119)
  ret %nyx_string* %120
else42:
  br label %merge43
merge43:
  %121 = alloca i1
  store i1 true, i1* %121
  %122 = load %nyx_string*, %nyx_string** %3
  %123 = getelementptr [13 x i8], [13 x i8]* @.str26, i32 0, i32 0
  %124 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str26.c, i8* %123)
  %125 = call i1 @nyx_string_equals(%nyx_string* %122, %nyx_string* %124)
  br i1 %125, label %sc_or_end45, label %sc_or_rhs44
sc_or_rhs44:
  %126 = load %nyx_string*, %nyx_string** %3
  %127 = getelementptr [9 x i8], [9 x i8]* @.str27, i32 0, i32 0
  %128 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str27.c, i8* %127)
  %129 = call i1 @nyx_string_equals(%nyx_string* %126, %nyx_string* %128)
  store i1 %129, i1* %121
  br label %sc_or_end45
sc_or_end45:
  %130 = load i1, i1* %121
  br i1 %130, label %then46, label %else47
then46:
  %131 = getelementptr [4 x i8], [4 x i8]* @.str28, i32 0, i32 0
  %132 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str28.c, i8* %131)
  ret %nyx_string* %132
else47:
  br label %merge48
merge48:
  %133 = alloca i1
  store i1 true, i1* %133
  %134 = load %nyx_string*, %nyx_string** %3
  %135 = getelementptr [14 x i8], [14 x i8]* @.str29, i32 0, i32 0
  %136 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str29.c, i8* %135)
  %137 = call i1 @nyx_string_equals(%nyx_string* %134, %nyx_string* %136)
  br i1 %137, label %sc_or_end50, label %sc_or_rhs49
sc_or_rhs49:
  %138 = load %nyx_string*, %nyx_string** %3
  %139 = getelementptr [9 x i8], [9 x i8]* @.str30, i32 0, i32 0
  %140 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str30.c, i8* %139)
  %141 = call i1 @nyx_string_equals(%nyx_string* %138, %nyx_string* %140)
  store i1 %141, i1* %133
  br label %sc_or_end50
sc_or_end50:
  %142 = load i1, i1* %133
  br i1 %142, label %then51, label %else52
then51:
  %143 = getelementptr [4 x i8], [4 x i8]* @.str31, i32 0, i32 0
  %144 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str31.c, i8* %143)
  ret %nyx_string* %144
else52:
  br label %merge53
merge53:
  %145 = load %nyx_string*, %nyx_string** %3
  %146 = getelementptr [6 x i8], [6 x i8]* @.str32, i32 0, i32 0
  %147 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str32.c, i8* %146)
  %148 = call i1 @nyx_string_equals(%nyx_string* %145, %nyx_string* %147)
  br i1 %148, label %then54, label %else55
then54:
  %149 = getelementptr [4 x i8], [4 x i8]* @.str33, i32 0, i32 0
  %150 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str33.c, i8* %149)
  ret %nyx_string* %150
else55:
  br label %merge56
merge56:
  %151 = load %nyx_string*, %nyx_string** %3
  %152 = getelementptr [7 x i8], [7 x i8]* @.str34, i32 0, i32 0
  %153 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str34.c, i8* %152)
  %154 = call i1 @nyx_string_equals(%nyx_string* %151, %nyx_string* %153)
  br i1 %154, label %then57, label %else58
then57:
  %155 = getelementptr [6 x i8], [6 x i8]* @.str35, i32 0, i32 0
  %156 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str35.c, i8* %155)
  ret %nyx_string* %156
else58:
  br label %merge59
merge59:
  %157 = load %nyx_string*, %nyx_string** %3
  %158 = getelementptr [7 x i8], [7 x i8]* @.str36, i32 0, i32 0
  %159 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str36.c, i8* %158)
  %160 = call i1 @nyx_string_equals(%nyx_string* %157, %nyx_string* %159)
  br i1 %160, label %then60, label %else61
then60:
  %161 = getelementptr [6 x i8], [6 x i8]* @.str37, i32 0, i32 0
  %162 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str37.c, i8* %161)
  ret %nyx_string* %162
else61:
  br label %merge62
merge62:
  %163 = load %nyx_string*, %nyx_string** %3
  ret %nyx_string* %163
}

define internal i64 @index_of_str(
%nyx_string* %s.param, %nyx_string* %sub.param) {
  %s.ptr = alloca %nyx_string*
  store %nyx_string* %s.param, %nyx_string** %s.ptr
  %sub.ptr = alloca %nyx_string*
  store %nyx_string* %sub.param, %nyx_string** %sub.ptr
  %164 = alloca i64
  store i64 0, i64* %164
  %165 = call i8* @llvm.stacksave()
  br label %while_cond63
while_cond63:
  %166 = load i64, i64* %164
  %167 = load %nyx_string*, %nyx_string** %s.ptr
  %168 = call i64 @nyx_string_byte_length(%nyx_string* %167)
  %169 = load %nyx_string*, %nyx_string** %sub.ptr
  %170 = call i64 @nyx_string_byte_length(%nyx_string* %169)
  %171 = sub i64 %168, %170
  %172 = icmp sle i64 %166, %171
  br i1 %172, label %while_body64, label %while_end65
while_body64:
  call void @llvm.stackrestore(i8* %165)
  %173 = load %nyx_string*, %nyx_string** %s.ptr
  %174 = load i64, i64* %164
  %175 = load i64, i64* %164
  %176 = load %nyx_string*, %nyx_string** %sub.ptr
  %177 = call i64 @nyx_string_byte_length(%nyx_string* %176)
  %178 = add i64 %175, %177
  %179 = call %nyx_string* @nyx_string_substring(%nyx_string* %173, i64 %174, i64 %178)
  %180 = load %nyx_string*, %nyx_string** %sub.ptr
  %181 = call i1 @nyx_string_equals(%nyx_string* %179, %nyx_string* %180)
  br i1 %181, label %then66, label %else67
then66:
  %182 = load i64, i64* %164
  ret i64 %182
else67:
  br label %merge68
merge68:
  %183 = load i64, i64* %164
  %184 = add i64 %183, 1
  store i64 %184, i64* %164
  br label %while_cond63
while_end65:
  %185 = sub i64 0, 1
  ret i64 %185
}

define internal %nyx_string* @strip_line_comment(
%nyx_string* %line.param) {
  %line.ptr = alloca %nyx_string*
  store %nyx_string* %line.param, %nyx_string** %line.ptr
  %186 = load %nyx_string*, %nyx_string** %line.ptr
  %187 = getelementptr [3 x i8], [3 x i8]* @.str38, i32 0, i32 0
  %188 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str38.c, i8* %187)
  %189 = call i64 @index_of_str(%nyx_string* %186, %nyx_string* %188)
  %190 = alloca i64
  store i64 %189, i64* %190
  %191 = load i64, i64* %190
  %192 = icmp sge i64 %191, 0
  br i1 %192, label %then69, label %else70
then69:
  %193 = load %nyx_string*, %nyx_string** %line.ptr
  %194 = load i64, i64* %190
  %195 = call %nyx_string* @nyx_string_substring(%nyx_string* %193, i64 0, i64 %194)
  %196 = call %nyx_string* @nyx_string_trim(%nyx_string* %195)
  ret %nyx_string* %196
else70:
  br label %merge71
merge71:
  %197 = load %nyx_string*, %nyx_string** %line.ptr
  ret %nyx_string* %197
}

define i64 @main(
i32 %argc, i8** %argv) {
  call void @nyx_set_args(i32 %argc, i8** %argv)
  %198 = getelementptr [4 x i8], [4 x i8]* @.str39, i32 0, i32 0
  %199 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str39.c, i8* %198)
  %200 = call %nyx_string* @map_c_type_simple(%nyx_string* %199)
  %201 = call i8* @nyx_string_to_cstr(%nyx_string* %200)
  call void @nyx_print_string(i8* %201)
  %202 = getelementptr [5 x i8], [5 x i8]* @.str40, i32 0, i32 0
  %203 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str40.c, i8* %202)
  %204 = call %nyx_string* @map_c_type_simple(%nyx_string* %203)
  %205 = call i8* @nyx_string_to_cstr(%nyx_string* %204)
  call void @nyx_print_string(i8* %205)
  %206 = getelementptr [7 x i8], [7 x i8]* @.str41, i32 0, i32 0
  %207 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str41.c, i8* %206)
  %208 = call %nyx_string* @map_c_type_simple(%nyx_string* %207)
  %209 = call i8* @nyx_string_to_cstr(%nyx_string* %208)
  call void @nyx_print_string(i8* %209)
  %210 = getelementptr [7 x i8], [7 x i8]* @.str42, i32 0, i32 0
  %211 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str42.c, i8* %210)
  %212 = call %nyx_string* @map_c_type_simple(%nyx_string* %211)
  %213 = call i8* @nyx_string_to_cstr(%nyx_string* %212)
  call void @nyx_print_string(i8* %213)
  %214 = getelementptr [8 x i8], [8 x i8]* @.str43, i32 0, i32 0
  %215 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str43.c, i8* %214)
  %216 = call %nyx_string* @map_c_type_simple(%nyx_string* %215)
  %217 = call i8* @nyx_string_to_cstr(%nyx_string* %216)
  call void @nyx_print_string(i8* %217)
  %218 = getelementptr [5 x i8], [5 x i8]* @.str44, i32 0, i32 0
  %219 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str44.c, i8* %218)
  %220 = call %nyx_string* @map_c_type_simple(%nyx_string* %219)
  %221 = call i8* @nyx_string_to_cstr(%nyx_string* %220)
  call void @nyx_print_string(i8* %221)
  %222 = getelementptr [6 x i8], [6 x i8]* @.str45, i32 0, i32 0
  %223 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str45.c, i8* %222)
  %224 = call %nyx_string* @map_c_type_simple(%nyx_string* %223)
  %225 = call i8* @nyx_string_to_cstr(%nyx_string* %224)
  call void @nyx_print_string(i8* %225)
  %226 = getelementptr [6 x i8], [6 x i8]* @.str46, i32 0, i32 0
  %227 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str46.c, i8* %226)
  %228 = call %nyx_string* @map_c_type_simple(%nyx_string* %227)
  %229 = call i8* @nyx_string_to_cstr(%nyx_string* %228)
  call void @nyx_print_string(i8* %229)
  %230 = getelementptr [5 x i8], [5 x i8]* @.str47, i32 0, i32 0
  %231 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str47.c, i8* %230)
  %232 = call %nyx_string* @map_c_type_simple(%nyx_string* %231)
  %233 = call i8* @nyx_string_to_cstr(%nyx_string* %232)
  call void @nyx_print_string(i8* %233)
  %234 = getelementptr [12 x i8], [12 x i8]* @.str48, i32 0, i32 0
  %235 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str48.c, i8* %234)
  %236 = call %nyx_string* @map_c_type_simple(%nyx_string* %235)
  %237 = call i8* @nyx_string_to_cstr(%nyx_string* %236)
  call void @nyx_print_string(i8* %237)
  %238 = getelementptr [30 x i8], [30 x i8]* @.str49, i32 0, i32 0
  %239 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str49.c, i8* %238)
  %240 = call %nyx_string* @strip_line_comment(%nyx_string* %239)
  %241 = alloca %nyx_string*
  store %nyx_string* %240, %nyx_string** %241
  %242 = load %nyx_string*, %nyx_string** %241
  %243 = call i8* @nyx_string_to_cstr(%nyx_string* %242)
  call void @nyx_print_string(i8* %243)
  %244 = getelementptr [19 x i8], [19 x i8]* @.str50, i32 0, i32 0
  %245 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str50.c, i8* %244)
  %246 = call %nyx_string* @strip_line_comment(%nyx_string* %245)
  %247 = alloca %nyx_string*
  store %nyx_string* %246, %nyx_string** %247
  %248 = load %nyx_string*, %nyx_string** %247
  %249 = call i8* @nyx_string_to_cstr(%nyx_string* %248)
  call void @nyx_print_string(i8* %249)
  %250 = getelementptr [16 x i8], [16 x i8]* @.str51, i32 0, i32 0
  %251 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str51.c, i8* %250)
  %252 = alloca %nyx_string*
  store %nyx_string* %251, %nyx_string** %252
  %253 = load %nyx_string*, %nyx_string** %252
  %254 = getelementptr [2 x i8], [2 x i8]* @.str52, i32 0, i32 0
  %255 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str52.c, i8* %254)
  %256 = call i64 @index_of_str(%nyx_string* %253, %nyx_string* %255)
  %257 = alloca i64
  store i64 %256, i64* %257
  %258 = load i64, i64* %257
  call void @nyx_print_int(i64 %258)
  %259 = load %nyx_string*, %nyx_string** %252
  %260 = getelementptr [2 x i8], [2 x i8]* @.str53, i32 0, i32 0
  %261 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str53.c, i8* %260)
  %262 = call i64 @index_of_str(%nyx_string* %259, %nyx_string* %261)
  %263 = alloca i64
  store i64 %262, i64* %263
  %264 = load i64, i64* %263
  call void @nyx_print_int(i64 %264)
  %265 = getelementptr [13 x i8], [13 x i8]* @.str54, i32 0, i32 0
  %266 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str54.c, i8* %265)
  %267 = call %nyx_string* @map_c_type_simple(%nyx_string* %266)
  %268 = call i8* @nyx_string_to_cstr(%nyx_string* %267)
  call void @nyx_print_string(i8* %268)
  %269 = getelementptr [5 x i8], [5 x i8]* @.str55, i32 0, i32 0
  %270 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str55.c, i8* %269)
  %271 = call %nyx_string* @map_c_type_simple(%nyx_string* %270)
  %272 = call i8* @nyx_string_to_cstr(%nyx_string* %271)
  call void @nyx_print_string(i8* %272)
  %273 = getelementptr [6 x i8], [6 x i8]* @.str56, i32 0, i32 0
  %274 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str56.c, i8* %273)
  %275 = call %nyx_string* @map_c_type_simple(%nyx_string* %274)
  %276 = call i8* @nyx_string_to_cstr(%nyx_string* %275)
  call void @nyx_print_string(i8* %276)
  %277 = getelementptr [11 x i8], [11 x i8]* @.str57, i32 0, i32 0
  %278 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str57.c, i8* %277)
  %279 = call i8* @nyx_string_to_cstr(%nyx_string* %278)
  call void @nyx_print_string(i8* %279)
  ret i64 0
}


attributes #0 = { returns_twice }

