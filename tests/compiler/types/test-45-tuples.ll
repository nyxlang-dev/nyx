source_filename = "/home/admin/nyx/lang/tests/compiler/types/test-45-tuples.nx"
target triple = "x86_64-pc-linux-gnu"

%__Tuple_int_int_int = type { i64, i64, i64 }

@.str0 = private unnamed_addr constant [14 x i8] c"tuple created\00"
@.str0.c = internal global %nyx_string* null
@.str1 = private unnamed_addr constant [6 x i8] c"hello\00"
@.str1.c = internal global %nyx_string* null
%__Tuple_int_String_bool = type { i64, %nyx_string*, i1 }

@.str2 = private unnamed_addr constant [12 x i8] c"mixed tuple\00"
@.str2.c = internal global %nyx_string* null
@.str3 = private unnamed_addr constant [6 x i8] c"Alice\00"
@.str3.c = internal global %nyx_string* null
%__Tuple_String_int = type { %nyx_string*, i64 }

@.str4 = private unnamed_addr constant [3 x i8] c"OK\00"
@.str4.c = internal global %nyx_string* null
@__nyx_test_failed = external global i64
@__nyx_test_mode = external global i64
; Nyx Compiler Bootstrap v3.0
; Generated from: /home/admin/nyx/lang/tests/compiler/types/test-45-tuples.nx

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
  %1 = getelementptr %__Tuple_int_int_int, %__Tuple_int_int_int* null, i32 1
  %2 = ptrtoint %__Tuple_int_int_int* %1 to i64
  %3 = call i8* @GC_malloc(i64 %2)
  %4 = bitcast i8* %3 to %__Tuple_int_int_int*
  %5 = getelementptr %__Tuple_int_int_int, %__Tuple_int_int_int* %4, i32 0, i32 0
  store i64 1, i64* %5
  %6 = getelementptr %__Tuple_int_int_int, %__Tuple_int_int_int* %4, i32 0, i32 1
  store i64 2, i64* %6
  %7 = getelementptr %__Tuple_int_int_int, %__Tuple_int_int_int* %4, i32 0, i32 2
  store i64 3, i64* %7
  %8 = load %__Tuple_int_int_int, %__Tuple_int_int_int* %4
  %9 = alloca %__Tuple_int_int_int
  store %__Tuple_int_int_int %8, %__Tuple_int_int_int* %9
  %10 = getelementptr [14 x i8], [14 x i8]* @.str0, i32 0, i32 0
  %11 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str0.c, i8* %10)
  %12 = call i8* @nyx_string_to_cstr(%nyx_string* %11)
  call void @nyx_print_string(i8* %12)
  %13 = getelementptr [6 x i8], [6 x i8]* @.str1, i32 0, i32 0
  %14 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1.c, i8* %13)
  %15 = getelementptr %__Tuple_int_String_bool, %__Tuple_int_String_bool* null, i32 1
  %16 = ptrtoint %__Tuple_int_String_bool* %15 to i64
  %17 = call i8* @GC_malloc(i64 %16)
  %18 = bitcast i8* %17 to %__Tuple_int_String_bool*
  %19 = getelementptr %__Tuple_int_String_bool, %__Tuple_int_String_bool* %18, i32 0, i32 0
  store i64 42, i64* %19
  %20 = getelementptr %__Tuple_int_String_bool, %__Tuple_int_String_bool* %18, i32 0, i32 1
  store %nyx_string* %14, %nyx_string** %20
  %21 = getelementptr %__Tuple_int_String_bool, %__Tuple_int_String_bool* %18, i32 0, i32 2
  store i1 1, i1* %21
  %22 = load %__Tuple_int_String_bool, %__Tuple_int_String_bool* %18
  %23 = alloca %__Tuple_int_String_bool
  store %__Tuple_int_String_bool %22, %__Tuple_int_String_bool* %23
  %24 = getelementptr [12 x i8], [12 x i8]* @.str2, i32 0, i32 0
  %25 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str2.c, i8* %24)
  %26 = call i8* @nyx_string_to_cstr(%nyx_string* %25)
  call void @nyx_print_string(i8* %26)
  %27 = load %__Tuple_int_String_bool, %__Tuple_int_String_bool* %23
  %28 = alloca %__Tuple_int_String_bool
  store %__Tuple_int_String_bool %27, %__Tuple_int_String_bool* %28
  %29 = getelementptr %__Tuple_int_String_bool, %__Tuple_int_String_bool* %28, i32 0, i32 0
  %30 = load i64, i64* %29
  %31 = alloca i64
  store i64 %30, i64* %31
  %32 = load %__Tuple_int_String_bool, %__Tuple_int_String_bool* %23
  %33 = alloca %__Tuple_int_String_bool
  store %__Tuple_int_String_bool %32, %__Tuple_int_String_bool* %33
  %34 = getelementptr %__Tuple_int_String_bool, %__Tuple_int_String_bool* %33, i32 0, i32 1
  %35 = load %nyx_string*, %nyx_string** %34
  %36 = alloca %nyx_string*
  store %nyx_string* %35, %nyx_string** %36
  %37 = load i64, i64* %31
  %38 = call %nyx_string* @nyx_string_from_int(i64 %37)
  %39 = call i8* @nyx_string_to_cstr(%nyx_string* %38)
  call void @nyx_print_string(i8* %39)
  %40 = load %nyx_string*, %nyx_string** %36
  %41 = call i8* @nyx_string_to_cstr(%nyx_string* %40)
  call void @nyx_print_string(i8* %41)
  %42 = getelementptr %__Tuple_int_int_int, %__Tuple_int_int_int* null, i32 1
  %43 = ptrtoint %__Tuple_int_int_int* %42 to i64
  %44 = call i8* @GC_malloc(i64 %43)
  %45 = bitcast i8* %44 to %__Tuple_int_int_int*
  %46 = getelementptr %__Tuple_int_int_int, %__Tuple_int_int_int* %45, i32 0, i32 0
  store i64 10, i64* %46
  %47 = getelementptr %__Tuple_int_int_int, %__Tuple_int_int_int* %45, i32 0, i32 1
  store i64 20, i64* %47
  %48 = getelementptr %__Tuple_int_int_int, %__Tuple_int_int_int* %45, i32 0, i32 2
  store i64 30, i64* %48
  %49 = load %__Tuple_int_int_int, %__Tuple_int_int_int* %45
  %50 = alloca %__Tuple_int_int_int
  store %__Tuple_int_int_int %49, %__Tuple_int_int_int* %50
  %51 = getelementptr %__Tuple_int_int_int, %__Tuple_int_int_int* %50, i32 0, i32 0
  %52 = load i64, i64* %51
  %53 = alloca i64
  store i64 %52, i64* %53
  %54 = getelementptr %__Tuple_int_int_int, %__Tuple_int_int_int* %50, i32 0, i32 1
  %55 = load i64, i64* %54
  %56 = alloca i64
  store i64 %55, i64* %56
  %57 = getelementptr %__Tuple_int_int_int, %__Tuple_int_int_int* %50, i32 0, i32 2
  %58 = load i64, i64* %57
  %59 = alloca i64
  store i64 %58, i64* %59
  %60 = load i64, i64* %53
  %61 = call %nyx_string* @nyx_string_from_int(i64 %60)
  %62 = call i8* @nyx_string_to_cstr(%nyx_string* %61)
  call void @nyx_print_string(i8* %62)
  %63 = load i64, i64* %56
  %64 = call %nyx_string* @nyx_string_from_int(i64 %63)
  %65 = call i8* @nyx_string_to_cstr(%nyx_string* %64)
  call void @nyx_print_string(i8* %65)
  %66 = load i64, i64* %59
  %67 = call %nyx_string* @nyx_string_from_int(i64 %66)
  %68 = call i8* @nyx_string_to_cstr(%nyx_string* %67)
  call void @nyx_print_string(i8* %68)
  %69 = getelementptr [6 x i8], [6 x i8]* @.str3, i32 0, i32 0
  %70 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str3.c, i8* %69)
  %71 = getelementptr %__Tuple_String_int, %__Tuple_String_int* null, i32 1
  %72 = ptrtoint %__Tuple_String_int* %71 to i64
  %73 = call i8* @GC_malloc(i64 %72)
  %74 = bitcast i8* %73 to %__Tuple_String_int*
  %75 = getelementptr %__Tuple_String_int, %__Tuple_String_int* %74, i32 0, i32 0
  store %nyx_string* %70, %nyx_string** %75
  %76 = getelementptr %__Tuple_String_int, %__Tuple_String_int* %74, i32 0, i32 1
  store i64 30, i64* %76
  %77 = load %__Tuple_String_int, %__Tuple_String_int* %74
  %78 = alloca %__Tuple_String_int
  store %__Tuple_String_int %77, %__Tuple_String_int* %78
  %79 = getelementptr %__Tuple_String_int, %__Tuple_String_int* %78, i32 0, i32 0
  %80 = load %nyx_string*, %nyx_string** %79
  %81 = alloca %nyx_string*
  store %nyx_string* %80, %nyx_string** %81
  %82 = getelementptr %__Tuple_String_int, %__Tuple_String_int* %78, i32 0, i32 1
  %83 = load i64, i64* %82
  %84 = alloca i64
  store i64 %83, i64* %84
  %85 = load %nyx_string*, %nyx_string** %81
  %86 = call i8* @nyx_string_to_cstr(%nyx_string* %85)
  call void @nyx_print_string(i8* %86)
  %87 = load i64, i64* %84
  %88 = call %nyx_string* @nyx_string_from_int(i64 %87)
  %89 = call i8* @nyx_string_to_cstr(%nyx_string* %88)
  call void @nyx_print_string(i8* %89)
  %90 = getelementptr [3 x i8], [3 x i8]* @.str4, i32 0, i32 0
  %91 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str4.c, i8* %90)
  %92 = call i8* @nyx_string_to_cstr(%nyx_string* %91)
  call void @nyx_print_string(i8* %92)
  ret i64 0
}


attributes #0 = { returns_twice }

