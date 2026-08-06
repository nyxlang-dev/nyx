source_filename = "/home/admin/nyx/lang/tests/compiler/iterators-traits/test-79-operator-advanced.nx"
target triple = "x86_64-pc-linux-gnu"

%Money = type { i64 }

@.str0 = private unnamed_addr constant [6 x i8] c"gt ok\00"
@.str0.c = internal global %nyx_string* null
@.str1 = private unnamed_addr constant [6 x i8] c"lt ok\00"
@.str1.c = internal global %nyx_string* null
@.str2 = private unnamed_addr constant [6 x i8] c"ge ok\00"
@.str2.c = internal global %nyx_string* null
@.str3 = private unnamed_addr constant [6 x i8] c"le ok\00"
@.str3.c = internal global %nyx_string* null
@__nyx_test_failed = external global i64
@__nyx_test_mode = external global i64
; Nyx Compiler Bootstrap v3.0
; Generated from: /home/admin/nyx/lang/tests/compiler/iterators-traits/test-79-operator-advanced.nx

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


define internal %Money @Money_add(
%Money %self.param, %Money %other.param) {
  %self.ptr = alloca %Money
  store %Money %self.param, %Money* %self.ptr
  %other.ptr = alloca %Money
  store %Money %other.param, %Money* %other.ptr
  %1 = getelementptr %Money, %Money* null, i32 1
  %2 = ptrtoint %Money* %1 to i64
  %3 = call i8* @GC_malloc(i64 %2)
  %4 = bitcast i8* %3 to %Money*
  %5 = getelementptr %Money, %Money* %self.ptr, i32 0, i32 0
  %6 = load i64, i64* %5
  %7 = getelementptr %Money, %Money* %other.ptr, i32 0, i32 0
  %8 = load i64, i64* %7
  %9 = add i64 %6, %8
  %10 = getelementptr %Money, %Money* %4, i32 0, i32 0
  store i64 %9, i64* %10
  %11 = load %Money, %Money* %4
  ret %Money %11
}

define internal %Money @Money_sub(
%Money %self.param, %Money %other.param) {
  %self.ptr = alloca %Money
  store %Money %self.param, %Money* %self.ptr
  %other.ptr = alloca %Money
  store %Money %other.param, %Money* %other.ptr
  %12 = getelementptr %Money, %Money* null, i32 1
  %13 = ptrtoint %Money* %12 to i64
  %14 = call i8* @GC_malloc(i64 %13)
  %15 = bitcast i8* %14 to %Money*
  %16 = getelementptr %Money, %Money* %self.ptr, i32 0, i32 0
  %17 = load i64, i64* %16
  %18 = getelementptr %Money, %Money* %other.ptr, i32 0, i32 0
  %19 = load i64, i64* %18
  %20 = sub i64 %17, %19
  %21 = getelementptr %Money, %Money* %15, i32 0, i32 0
  store i64 %20, i64* %21
  %22 = load %Money, %Money* %15
  ret %Money %22
}

define internal %Money @Money_neg(
%Money %self.param) {
  %self.ptr = alloca %Money
  store %Money %self.param, %Money* %self.ptr
  %23 = getelementptr %Money, %Money* null, i32 1
  %24 = ptrtoint %Money* %23 to i64
  %25 = call i8* @GC_malloc(i64 %24)
  %26 = bitcast i8* %25 to %Money*
  %27 = getelementptr %Money, %Money* %self.ptr, i32 0, i32 0
  %28 = load i64, i64* %27
  %29 = sub i64 0, %28
  %30 = getelementptr %Money, %Money* %26, i32 0, i32 0
  store i64 %29, i64* %30
  %31 = load %Money, %Money* %26
  ret %Money %31
}

define internal i1 @Money_lt(
%Money %self.param, %Money %other.param) {
  %self.ptr = alloca %Money
  store %Money %self.param, %Money* %self.ptr
  %other.ptr = alloca %Money
  store %Money %other.param, %Money* %other.ptr
  %32 = getelementptr %Money, %Money* %self.ptr, i32 0, i32 0
  %33 = load i64, i64* %32
  %34 = getelementptr %Money, %Money* %other.ptr, i32 0, i32 0
  %35 = load i64, i64* %34
  %36 = icmp slt i64 %33, %35
  ret i1 %36
}

define i64 @main(
i32 %argc, i8** %argv) {
  call void @nyx_set_args(i32 %argc, i8** %argv)
  %37 = getelementptr %Money, %Money* null, i32 1
  %38 = ptrtoint %Money* %37 to i64
  %39 = call i8* @GC_malloc(i64 %38)
  %40 = bitcast i8* %39 to %Money*
  %41 = getelementptr %Money, %Money* %40, i32 0, i32 0
  store i64 500, i64* %41
  %42 = load %Money, %Money* %40
  %43 = alloca %Money
  store %Money %42, %Money* %43
  %44 = getelementptr %Money, %Money* null, i32 1
  %45 = ptrtoint %Money* %44 to i64
  %46 = call i8* @GC_malloc(i64 %45)
  %47 = bitcast i8* %46 to %Money*
  %48 = getelementptr %Money, %Money* %47, i32 0, i32 0
  store i64 300, i64* %48
  %49 = load %Money, %Money* %47
  %50 = alloca %Money
  store %Money %49, %Money* %50
  %51 = load %Money, %Money* %43
  %52 = load %Money, %Money* %50
  %53 = call %Money @Money_add(%Money %51, %Money %52)
  %54 = alloca %Money
  store %Money %53, %Money* %54
  %55 = getelementptr %Money, %Money* %54, i32 0, i32 0
  %56 = load i64, i64* %55
  call void @nyx_print_int(i64 %56)
  %57 = load %Money, %Money* %43
  %58 = load %Money, %Money* %50
  %59 = call %Money @Money_sub(%Money %57, %Money %58)
  %60 = alloca %Money
  store %Money %59, %Money* %60
  %61 = getelementptr %Money, %Money* %60, i32 0, i32 0
  %62 = load i64, i64* %61
  call void @nyx_print_int(i64 %62)
  %63 = load %Money, %Money* %43
  %64 = call %Money @Money_neg(%Money %63)
  %65 = alloca %Money
  store %Money %64, %Money* %65
  %66 = getelementptr %Money, %Money* %65, i32 0, i32 0
  %67 = load i64, i64* %66
  call void @nyx_print_int(i64 %67)
  %68 = load %Money, %Money* %43
  %69 = load %Money, %Money* %50
  %70 = call %Money @Money_add(%Money %68, %Money %69)
  %71 = load %Money, %Money* %50
  %72 = call %Money @Money_add(%Money %70, %Money %71)
  %73 = alloca %Money
  store %Money %72, %Money* %73
  %74 = getelementptr %Money, %Money* %73, i32 0, i32 0
  %75 = load i64, i64* %74
  call void @nyx_print_int(i64 %75)
  %76 = load %Money, %Money* %43
  %77 = load %Money, %Money* %50
  %78 = call i1 @Money_lt(%Money %77, %Money %76)
  br i1 %78, label %then0, label %else1
then0:
  %79 = getelementptr [6 x i8], [6 x i8]* @.str0, i32 0, i32 0
  %80 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str0.c, i8* %79)
  %81 = call i8* @nyx_string_to_cstr(%nyx_string* %80)
  call void @nyx_print_string(i8* %81)
  br label %merge2
else1:
  br label %merge2
merge2:
  %82 = load %Money, %Money* %50
  %83 = load %Money, %Money* %43
  %84 = call i1 @Money_lt(%Money %82, %Money %83)
  br i1 %84, label %then3, label %else4
then3:
  %85 = getelementptr [6 x i8], [6 x i8]* @.str1, i32 0, i32 0
  %86 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1.c, i8* %85)
  %87 = call i8* @nyx_string_to_cstr(%nyx_string* %86)
  call void @nyx_print_string(i8* %87)
  br label %merge5
else4:
  br label %merge5
merge5:
  %88 = load %Money, %Money* %43
  %89 = load %Money, %Money* %43
  %90 = call i1 @Money_lt(%Money %88, %Money %89)
  %91 = xor i1 %90, true
  br i1 %91, label %then6, label %else7
then6:
  %92 = getelementptr [6 x i8], [6 x i8]* @.str2, i32 0, i32 0
  %93 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str2.c, i8* %92)
  %94 = call i8* @nyx_string_to_cstr(%nyx_string* %93)
  call void @nyx_print_string(i8* %94)
  br label %merge8
else7:
  br label %merge8
merge8:
  %95 = load %Money, %Money* %50
  %96 = load %Money, %Money* %43
  %97 = call i1 @Money_lt(%Money %96, %Money %95)
  %98 = xor i1 %97, true
  br i1 %98, label %then9, label %else10
then9:
  %99 = getelementptr [6 x i8], [6 x i8]* @.str3, i32 0, i32 0
  %100 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str3.c, i8* %99)
  %101 = call i8* @nyx_string_to_cstr(%nyx_string* %100)
  call void @nyx_print_string(i8* %101)
  br label %merge11
else10:
  br label %merge11
merge11:
  ret i64 0
}


attributes #0 = { returns_twice }

