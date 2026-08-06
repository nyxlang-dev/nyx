source_filename = "/home/admin/nyx/lang/tests/compiler/stdlib-suite/test-103-tuple-return.nx"
target triple = "x86_64-pc-linux-gnu"

%__Tuple_int_int = type { i64, i64 }

%__Tuple_String_int = type { %nyx_string*, i64 }

@.str0 = private unnamed_addr constant [6 x i8] c"Alice\00"
@.str0.c = internal global %nyx_string* null
%__Tuple_int_int_int = type { i64, i64, i64 }

@.str1 = private unnamed_addr constant [9 x i8] c"Alice:30\00"
@.str1.c = internal global %nyx_string* null
@.str2 = private unnamed_addr constant [31 x i8] c"All tuple return tests passed!\00"
@.str2.c = internal global %nyx_string* null
@__nyx_test_failed = external global i64
@__nyx_test_mode = external global i64
; Nyx Compiler Bootstrap v3.0
; Generated from: /home/admin/nyx/lang/tests/compiler/stdlib-suite/test-103-tuple-return.nx

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


define internal %__Tuple_int_int @swap(
i64 %a.param, i64 %b.param) {
  %a.ptr = alloca i64
  store i64 %a.param, i64* %a.ptr
  %b.ptr = alloca i64
  store i64 %b.param, i64* %b.ptr
  %1 = load i64, i64* %b.ptr
  %2 = load i64, i64* %a.ptr
  %3 = getelementptr %__Tuple_int_int, %__Tuple_int_int* null, i32 1
  %4 = ptrtoint %__Tuple_int_int* %3 to i64
  %5 = call i8* @GC_malloc(i64 %4)
  %6 = bitcast i8* %5 to %__Tuple_int_int*
  %7 = getelementptr %__Tuple_int_int, %__Tuple_int_int* %6, i32 0, i32 0
  store i64 %1, i64* %7
  %8 = getelementptr %__Tuple_int_int, %__Tuple_int_int* %6, i32 0, i32 1
  store i64 %2, i64* %8
  %9 = load %__Tuple_int_int, %__Tuple_int_int* %6
  ret %__Tuple_int_int %9
}

define internal %__Tuple_int_int @divide(
i64 %a.param, i64 %b.param) {
  %a.ptr = alloca i64
  store i64 %a.param, i64* %a.ptr
  %b.ptr = alloca i64
  store i64 %b.param, i64* %b.ptr
  %10 = load i64, i64* %a.ptr
  %11 = load i64, i64* %b.ptr
  %12 = sdiv i64 %10, %11
  %13 = alloca i64
  store i64 %12, i64* %13
  %14 = load i64, i64* %a.ptr
  %15 = load i64, i64* %b.ptr
  %16 = srem i64 %14, %15
  %17 = alloca i64
  store i64 %16, i64* %17
  %18 = load i64, i64* %13
  %19 = load i64, i64* %17
  %20 = getelementptr %__Tuple_int_int, %__Tuple_int_int* null, i32 1
  %21 = ptrtoint %__Tuple_int_int* %20 to i64
  %22 = call i8* @GC_malloc(i64 %21)
  %23 = bitcast i8* %22 to %__Tuple_int_int*
  %24 = getelementptr %__Tuple_int_int, %__Tuple_int_int* %23, i32 0, i32 0
  store i64 %18, i64* %24
  %25 = getelementptr %__Tuple_int_int, %__Tuple_int_int* %23, i32 0, i32 1
  store i64 %19, i64* %25
  %26 = load %__Tuple_int_int, %__Tuple_int_int* %23
  ret %__Tuple_int_int %26
}

define internal %__Tuple_int_int @min_max(
{ i64, i8* }* %arr.param) {
  %arr.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %arr.param, { i64, i8* }** %arr.ptr
  %27 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %28 = call i64 @nyx_array_get({ i64, i8* }* %27, i64 0)
  %29 = alloca i64
  store i64 %28, i64* %29
  %30 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %31 = call i64 @nyx_array_get({ i64, i8* }* %30, i64 0)
  %32 = alloca i64
  store i64 %31, i64* %32
  %33 = alloca i64
  store i64 1, i64* %33
  %34 = call i8* @llvm.stacksave()
  br label %while_cond0
while_cond0:
  %35 = load i64, i64* %33
  %36 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %37 = call i64 @nyx_array_length({ i64, i8* }* %36)
  %38 = icmp slt i64 %35, %37
  br i1 %38, label %while_body1, label %while_end2
while_body1:
  call void @llvm.stackrestore(i8* %34)
  %39 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %40 = load i64, i64* %33
  %41 = call i64 @nyx_array_get({ i64, i8* }* %39, i64 %40)
  %42 = alloca i64
  store i64 %41, i64* %42
  %43 = load i64, i64* %42
  %44 = load i64, i64* %29
  %45 = icmp slt i64 %43, %44
  br i1 %45, label %then3, label %else4
then3:
  %46 = load i64, i64* %42
  store i64 %46, i64* %29
  br label %merge5
else4:
  br label %merge5
merge5:
  %47 = load i64, i64* %42
  %48 = load i64, i64* %32
  %49 = icmp sgt i64 %47, %48
  br i1 %49, label %then6, label %else7
then6:
  %50 = load i64, i64* %42
  store i64 %50, i64* %32
  br label %merge8
else7:
  br label %merge8
merge8:
  %51 = load i64, i64* %33
  %52 = add i64 %51, 1
  store i64 %52, i64* %33
  br label %while_cond0
while_end2:
  %53 = load i64, i64* %29
  %54 = load i64, i64* %32
  %55 = getelementptr %__Tuple_int_int, %__Tuple_int_int* null, i32 1
  %56 = ptrtoint %__Tuple_int_int* %55 to i64
  %57 = call i8* @GC_malloc(i64 %56)
  %58 = bitcast i8* %57 to %__Tuple_int_int*
  %59 = getelementptr %__Tuple_int_int, %__Tuple_int_int* %58, i32 0, i32 0
  store i64 %53, i64* %59
  %60 = getelementptr %__Tuple_int_int, %__Tuple_int_int* %58, i32 0, i32 1
  store i64 %54, i64* %60
  %61 = load %__Tuple_int_int, %__Tuple_int_int* %58
  ret %__Tuple_int_int %61
}

define internal %__Tuple_String_int @parse_entry(
%nyx_string* %s.param) {
  %s.ptr = alloca %nyx_string*
  store %nyx_string* %s.param, %nyx_string** %s.ptr
  %62 = getelementptr [6 x i8], [6 x i8]* @.str0, i32 0, i32 0
  %63 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str0.c, i8* %62)
  %64 = getelementptr %__Tuple_String_int, %__Tuple_String_int* null, i32 1
  %65 = ptrtoint %__Tuple_String_int* %64 to i64
  %66 = call i8* @GC_malloc(i64 %65)
  %67 = bitcast i8* %66 to %__Tuple_String_int*
  %68 = getelementptr %__Tuple_String_int, %__Tuple_String_int* %67, i32 0, i32 0
  store %nyx_string* %63, %nyx_string** %68
  %69 = getelementptr %__Tuple_String_int, %__Tuple_String_int* %67, i32 0, i32 1
  store i64 30, i64* %69
  %70 = load %__Tuple_String_int, %__Tuple_String_int* %67
  ret %__Tuple_String_int %70
}

define internal %__Tuple_int_int_int @triple(
i64 %x.param) {
  %x.ptr = alloca i64
  store i64 %x.param, i64* %x.ptr
  %71 = load i64, i64* %x.ptr
  %72 = load i64, i64* %x.ptr
  %73 = mul i64 %72, 2
  %74 = load i64, i64* %x.ptr
  %75 = mul i64 %74, 3
  %76 = getelementptr %__Tuple_int_int_int, %__Tuple_int_int_int* null, i32 1
  %77 = ptrtoint %__Tuple_int_int_int* %76 to i64
  %78 = call i8* @GC_malloc(i64 %77)
  %79 = bitcast i8* %78 to %__Tuple_int_int_int*
  %80 = getelementptr %__Tuple_int_int_int, %__Tuple_int_int_int* %79, i32 0, i32 0
  store i64 %71, i64* %80
  %81 = getelementptr %__Tuple_int_int_int, %__Tuple_int_int_int* %79, i32 0, i32 1
  store i64 %73, i64* %81
  %82 = getelementptr %__Tuple_int_int_int, %__Tuple_int_int_int* %79, i32 0, i32 2
  store i64 %75, i64* %82
  %83 = load %__Tuple_int_int_int, %__Tuple_int_int_int* %79
  ret %__Tuple_int_int_int %83
}

define i64 @main(
i32 %argc, i8** %argv) {
  call void @nyx_set_args(i32 %argc, i8** %argv)
  %84 = call %__Tuple_int_int @swap(i64 1, i64 2)
  %85 = alloca %__Tuple_int_int
  store %__Tuple_int_int %84, %__Tuple_int_int* %85
  %86 = getelementptr %__Tuple_int_int, %__Tuple_int_int* %85, i32 0, i32 0
  %87 = load i64, i64* %86
  %88 = alloca i64
  store i64 %87, i64* %88
  %89 = getelementptr %__Tuple_int_int, %__Tuple_int_int* %85, i32 0, i32 1
  %90 = load i64, i64* %89
  %91 = alloca i64
  store i64 %90, i64* %91
  %92 = load i64, i64* %88
  %93 = call %nyx_string* @nyx_string_from_int(i64 %92)
  %94 = call i8* @nyx_string_to_cstr(%nyx_string* %93)
  call void @nyx_print_string(i8* %94)
  %95 = load i64, i64* %91
  %96 = call %nyx_string* @nyx_string_from_int(i64 %95)
  %97 = call i8* @nyx_string_to_cstr(%nyx_string* %96)
  call void @nyx_print_string(i8* %97)
  %98 = call %__Tuple_int_int @divide(i64 17, i64 5)
  %99 = alloca %__Tuple_int_int
  store %__Tuple_int_int %98, %__Tuple_int_int* %99
  %100 = getelementptr %__Tuple_int_int, %__Tuple_int_int* %99, i32 0, i32 0
  %101 = load i64, i64* %100
  %102 = alloca i64
  store i64 %101, i64* %102
  %103 = getelementptr %__Tuple_int_int, %__Tuple_int_int* %99, i32 0, i32 1
  %104 = load i64, i64* %103
  %105 = alloca i64
  store i64 %104, i64* %105
  %106 = load i64, i64* %102
  %107 = call %nyx_string* @nyx_string_from_int(i64 %106)
  %108 = call i8* @nyx_string_to_cstr(%nyx_string* %107)
  call void @nyx_print_string(i8* %108)
  %109 = load i64, i64* %105
  %110 = call %nyx_string* @nyx_string_from_int(i64 %109)
  %111 = call i8* @nyx_string_to_cstr(%nyx_string* %110)
  call void @nyx_print_string(i8* %111)
  %112 = call { i64, i8* }* @nyx_array_new_ptr()
  call void @nyx_array_push_tagged({ i64, i8* }* %112, i64 3, i64 1)
  call void @nyx_array_push_tagged({ i64, i8* }* %112, i64 1, i64 1)
  call void @nyx_array_push_tagged({ i64, i8* }* %112, i64 4, i64 1)
  call void @nyx_array_push_tagged({ i64, i8* }* %112, i64 1, i64 1)
  call void @nyx_array_push_tagged({ i64, i8* }* %112, i64 5, i64 1)
  call void @nyx_array_push_tagged({ i64, i8* }* %112, i64 9, i64 1)
  call void @nyx_array_push_tagged({ i64, i8* }* %112, i64 2, i64 1)
  call void @nyx_array_push_tagged({ i64, i8* }* %112, i64 6, i64 1)
  %113 = alloca { i64, i8* }*
  store { i64, i8* }* %112, { i64, i8* }** %113
  %114 = load { i64, i8* }*, { i64, i8* }** %113
  %115 = call %__Tuple_int_int @min_max({ i64, i8* }* %114)
  %116 = alloca %__Tuple_int_int
  store %__Tuple_int_int %115, %__Tuple_int_int* %116
  %117 = getelementptr %__Tuple_int_int, %__Tuple_int_int* %116, i32 0, i32 0
  %118 = load i64, i64* %117
  %119 = alloca i64
  store i64 %118, i64* %119
  %120 = getelementptr %__Tuple_int_int, %__Tuple_int_int* %116, i32 0, i32 1
  %121 = load i64, i64* %120
  %122 = alloca i64
  store i64 %121, i64* %122
  %123 = load i64, i64* %119
  %124 = call %nyx_string* @nyx_string_from_int(i64 %123)
  %125 = call i8* @nyx_string_to_cstr(%nyx_string* %124)
  call void @nyx_print_string(i8* %125)
  %126 = load i64, i64* %122
  %127 = call %nyx_string* @nyx_string_from_int(i64 %126)
  %128 = call i8* @nyx_string_to_cstr(%nyx_string* %127)
  call void @nyx_print_string(i8* %128)
  %129 = getelementptr [9 x i8], [9 x i8]* @.str1, i32 0, i32 0
  %130 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1.c, i8* %129)
  %131 = call %__Tuple_String_int @parse_entry(%nyx_string* %130)
  %132 = alloca %__Tuple_String_int
  store %__Tuple_String_int %131, %__Tuple_String_int* %132
  %133 = getelementptr %__Tuple_String_int, %__Tuple_String_int* %132, i32 0, i32 0
  %134 = load %nyx_string*, %nyx_string** %133
  %135 = alloca %nyx_string*
  store %nyx_string* %134, %nyx_string** %135
  %136 = getelementptr %__Tuple_String_int, %__Tuple_String_int* %132, i32 0, i32 1
  %137 = load i64, i64* %136
  %138 = alloca i64
  store i64 %137, i64* %138
  %139 = load %nyx_string*, %nyx_string** %135
  %140 = call i8* @nyx_string_to_cstr(%nyx_string* %139)
  call void @nyx_print_string(i8* %140)
  %141 = load i64, i64* %138
  %142 = call %nyx_string* @nyx_string_from_int(i64 %141)
  %143 = call i8* @nyx_string_to_cstr(%nyx_string* %142)
  call void @nyx_print_string(i8* %143)
  %144 = call %__Tuple_int_int_int @triple(i64 5)
  %145 = alloca %__Tuple_int_int_int
  store %__Tuple_int_int_int %144, %__Tuple_int_int_int* %145
  %146 = getelementptr %__Tuple_int_int_int, %__Tuple_int_int_int* %145, i32 0, i32 0
  %147 = load i64, i64* %146
  %148 = alloca i64
  store i64 %147, i64* %148
  %149 = getelementptr %__Tuple_int_int_int, %__Tuple_int_int_int* %145, i32 0, i32 1
  %150 = load i64, i64* %149
  %151 = alloca i64
  store i64 %150, i64* %151
  %152 = getelementptr %__Tuple_int_int_int, %__Tuple_int_int_int* %145, i32 0, i32 2
  %153 = load i64, i64* %152
  %154 = alloca i64
  store i64 %153, i64* %154
  %155 = load i64, i64* %148
  %156 = call %nyx_string* @nyx_string_from_int(i64 %155)
  %157 = call i8* @nyx_string_to_cstr(%nyx_string* %156)
  call void @nyx_print_string(i8* %157)
  %158 = load i64, i64* %151
  %159 = call %nyx_string* @nyx_string_from_int(i64 %158)
  %160 = call i8* @nyx_string_to_cstr(%nyx_string* %159)
  call void @nyx_print_string(i8* %160)
  %161 = load i64, i64* %154
  %162 = call %nyx_string* @nyx_string_from_int(i64 %161)
  %163 = call i8* @nyx_string_to_cstr(%nyx_string* %162)
  call void @nyx_print_string(i8* %163)
  %164 = load i64, i64* %122
  %165 = load i64, i64* %119
  %166 = call %__Tuple_int_int @divide(i64 %164, i64 %165)
  %167 = alloca %__Tuple_int_int
  store %__Tuple_int_int %166, %__Tuple_int_int* %167
  %168 = getelementptr %__Tuple_int_int, %__Tuple_int_int* %167, i32 0, i32 0
  %169 = load i64, i64* %168
  %170 = alloca i64
  store i64 %169, i64* %170
  %171 = getelementptr %__Tuple_int_int, %__Tuple_int_int* %167, i32 0, i32 1
  %172 = load i64, i64* %171
  %173 = alloca i64
  store i64 %172, i64* %173
  %174 = load i64, i64* %170
  %175 = call %nyx_string* @nyx_string_from_int(i64 %174)
  %176 = call i8* @nyx_string_to_cstr(%nyx_string* %175)
  call void @nyx_print_string(i8* %176)
  %177 = load i64, i64* %173
  %178 = call %nyx_string* @nyx_string_from_int(i64 %177)
  %179 = call i8* @nyx_string_to_cstr(%nyx_string* %178)
  call void @nyx_print_string(i8* %179)
  %180 = getelementptr [31 x i8], [31 x i8]* @.str2, i32 0, i32 0
  %181 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str2.c, i8* %180)
  %182 = call i8* @nyx_string_to_cstr(%nyx_string* %181)
  call void @nyx_print_string(i8* %182)
  ret i64 0
}


attributes #0 = { returns_twice }

