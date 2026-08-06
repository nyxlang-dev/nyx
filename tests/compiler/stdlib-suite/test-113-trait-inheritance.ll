source_filename = "/home/admin/nyx/lang/tests/compiler/stdlib-suite/test-113-trait-inheritance.nx"
target triple = "x86_64-pc-linux-gnu"

%Person = type { %nyx_string*, i64 }

%Dog = type { %nyx_string* }

@.str0 = private unnamed_addr constant [8 x i8] c"Hello, \00"
@.str0.c = internal global %nyx_string* null
@.str1 = private unnamed_addr constant [16 x i8] c"A dog of breed \00"
@.str1.c = internal global %nyx_string* null
@.str2 = private unnamed_addr constant [5 x i8] c"Woof\00"
@.str2.c = internal global %nyx_string* null
@.str3 = private unnamed_addr constant [6 x i8] c"Alice\00"
@.str3.c = internal global %nyx_string* null
@.str4 = private unnamed_addr constant [9 x i8] c"Labrador\00"
@.str4.c = internal global %nyx_string* null
@__nyx_test_failed = external global i64
@__nyx_test_mode = external global i64
; Nyx Compiler Bootstrap v3.0
; Generated from: /home/admin/nyx/lang/tests/compiler/stdlib-suite/test-113-trait-inheritance.nx

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


define internal %nyx_string* @Person_name(
%Person %self.param) {
  %self.ptr = alloca %Person
  store %Person %self.param, %Person* %self.ptr
  %1 = getelementptr %Person, %Person* %self.ptr, i32 0, i32 0
  %2 = load %nyx_string*, %nyx_string** %1
  ret %nyx_string* %2
}

define internal %nyx_string* @Person_greet(
%Person %self.param) {
  %self.ptr = alloca %Person
  store %Person %self.param, %Person* %self.ptr
  %3 = getelementptr [8 x i8], [8 x i8]* @.str0, i32 0, i32 0
  %4 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str0.c, i8* %3)
  %5 = load %Person, %Person* %self.ptr
  %6 = call %nyx_string* @Person_name(%Person %5)
  %7 = call %nyx_string* @nyx_string_concat(%nyx_string* %4, %nyx_string* %6)
  ret %nyx_string* %7
}

define internal %nyx_string* @Dog_name(
%Dog %self.param) {
  %self.ptr = alloca %Dog
  store %Dog %self.param, %Dog* %self.ptr
  %8 = getelementptr %Dog, %Dog* %self.ptr, i32 0, i32 0
  %9 = load %nyx_string*, %nyx_string** %8
  ret %nyx_string* %9
}

define internal %nyx_string* @Dog_describe(
%Dog %self.param) {
  %self.ptr = alloca %Dog
  store %Dog %self.param, %Dog* %self.ptr
  %10 = getelementptr [16 x i8], [16 x i8]* @.str1, i32 0, i32 0
  %11 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1.c, i8* %10)
  %12 = getelementptr %Dog, %Dog* %self.ptr, i32 0, i32 0
  %13 = load %nyx_string*, %nyx_string** %12
  %14 = call %nyx_string* @nyx_string_concat(%nyx_string* %11, %nyx_string* %13)
  ret %nyx_string* %14
}

define internal %nyx_string* @Dog_sound(
%Dog %self.param) {
  %self.ptr = alloca %Dog
  store %Dog %self.param, %Dog* %self.ptr
  %15 = getelementptr [5 x i8], [5 x i8]* @.str2, i32 0, i32 0
  %16 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str2.c, i8* %15)
  ret %nyx_string* %16
}

define i64 @main(
i32 %argc, i8** %argv) {
  call void @nyx_set_args(i32 %argc, i8** %argv)
  %17 = getelementptr %Person, %Person* null, i32 1
  %18 = ptrtoint %Person* %17 to i64
  %19 = call i8* @GC_malloc(i64 %18)
  %20 = bitcast i8* %19 to %Person*
  %21 = getelementptr [6 x i8], [6 x i8]* @.str3, i32 0, i32 0
  %22 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str3.c, i8* %21)
  %23 = getelementptr %Person, %Person* %20, i32 0, i32 0
  store %nyx_string* %22, %nyx_string** %23
  %24 = getelementptr %Person, %Person* %20, i32 0, i32 1
  store i64 30, i64* %24
  %25 = load %Person, %Person* %20
  %26 = alloca %Person
  store %Person %25, %Person* %26
  %27 = load %Person, %Person* %26
  %28 = call %nyx_string* @Person_greet(%Person %27)
  %29 = call i8* @nyx_string_to_cstr(%nyx_string* %28)
  call void @nyx_print_string(i8* %29)
  %30 = load %Person, %Person* %26
  %31 = call %nyx_string* @Person_name(%Person %30)
  %32 = call i8* @nyx_string_to_cstr(%nyx_string* %31)
  call void @nyx_print_string(i8* %32)
  %33 = load %Person, %Person* %26
  %34 = call %nyx_string* @print_name_Person(%Person %33)
  %35 = alloca %nyx_string*
  store %nyx_string* %34, %nyx_string** %35
  %36 = load %nyx_string*, %nyx_string** %35
  %37 = call i8* @nyx_string_to_cstr(%nyx_string* %36)
  call void @nyx_print_string(i8* %37)
  %38 = getelementptr %Dog, %Dog* null, i32 1
  %39 = ptrtoint %Dog* %38 to i64
  %40 = call i8* @GC_malloc(i64 %39)
  %41 = bitcast i8* %40 to %Dog*
  %42 = getelementptr [9 x i8], [9 x i8]* @.str4, i32 0, i32 0
  %43 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str4.c, i8* %42)
  %44 = getelementptr %Dog, %Dog* %41, i32 0, i32 0
  store %nyx_string* %43, %nyx_string** %44
  %45 = load %Dog, %Dog* %41
  %46 = alloca %Dog
  store %Dog %45, %Dog* %46
  %47 = load %Dog, %Dog* %46
  %48 = call %nyx_string* @Dog_name(%Dog %47)
  %49 = call i8* @nyx_string_to_cstr(%nyx_string* %48)
  call void @nyx_print_string(i8* %49)
  %50 = load %Dog, %Dog* %46
  %51 = call %nyx_string* @Dog_describe(%Dog %50)
  %52 = call i8* @nyx_string_to_cstr(%nyx_string* %51)
  call void @nyx_print_string(i8* %52)
  %53 = load %Dog, %Dog* %46
  %54 = call %nyx_string* @Dog_sound(%Dog %53)
  %55 = call i8* @nyx_string_to_cstr(%nyx_string* %54)
  call void @nyx_print_string(i8* %55)
  %56 = load %Dog, %Dog* %46
  %57 = call %nyx_string* @print_name_Dog(%Dog %56)
  %58 = alloca %nyx_string*
  store %nyx_string* %57, %nyx_string** %58
  %59 = load %nyx_string*, %nyx_string** %58
  %60 = call i8* @nyx_string_to_cstr(%nyx_string* %59)
  call void @nyx_print_string(i8* %60)
  ret i64 0
}

define internal %nyx_string* @__dyn_Greeter_Person_greet(i8* %self.raw) {
entry:
  %self.typed = bitcast i8* %self.raw to %Person*
  %self.val = load %Person, %Person* %self.typed
  %thunk.result = call %nyx_string* @Person_greet(%Person %self.val)
  ret %nyx_string* %thunk.result
}

define internal %nyx_string* @__dyn_Greeter_Person_name(i8* %self.raw) {
entry:
  %self.typed = bitcast i8* %self.raw to %Person*
  %self.val = load %Person, %Person* %self.typed
  %thunk.result = call %nyx_string* @Person_name(%Person %self.val)
  ret %nyx_string* %thunk.result
}

@__vtable_Greeter_Person = internal constant [2 x i8*] [i8* bitcast (i8* (...)* @__dyn_Greeter_Person_greet to i8*), i8* bitcast (i8* (...)* @__dyn_Greeter_Person_name to i8*)]

define internal %nyx_string* @__dyn_Animal_Dog_sound(i8* %self.raw) {
entry:
  %self.typed = bitcast i8* %self.raw to %Dog*
  %self.val = load %Dog, %Dog* %self.typed
  %thunk.result = call %nyx_string* @Dog_sound(%Dog %self.val)
  ret %nyx_string* %thunk.result
}

define internal %nyx_string* @__dyn_Animal_Dog_name(i8* %self.raw) {
entry:
  %self.typed = bitcast i8* %self.raw to %Dog*
  %self.val = load %Dog, %Dog* %self.typed
  %thunk.result = call %nyx_string* @Dog_name(%Dog %self.val)
  ret %nyx_string* %thunk.result
}

define internal %nyx_string* @__dyn_Animal_Dog_describe(i8* %self.raw) {
entry:
  %self.typed = bitcast i8* %self.raw to %Dog*
  %self.val = load %Dog, %Dog* %self.typed
  %thunk.result = call %nyx_string* @Dog_describe(%Dog %self.val)
  ret %nyx_string* %thunk.result
}

@__vtable_Animal_Dog = internal constant [3 x i8*] [i8* bitcast (i8* (...)* @__dyn_Animal_Dog_sound to i8*), i8* bitcast (i8* (...)* @__dyn_Animal_Dog_name to i8*), i8* bitcast (i8* (...)* @__dyn_Animal_Dog_describe to i8*)]

define internal %nyx_string* @print_name_Person(
%Person %x.param) {
  %x.ptr = alloca %Person
  store %Person %x.param, %Person* %x.ptr
  %61 = load %Person, %Person* %x.ptr
  %62 = call %nyx_string* @Person_name(%Person %61)
  ret %nyx_string* %62
}

define internal %nyx_string* @print_name_Dog(
%Dog %x.param) {
  %x.ptr = alloca %Dog
  store %Dog %x.param, %Dog* %x.ptr
  %63 = load %Dog, %Dog* %x.ptr
  %64 = call %nyx_string* @Dog_name(%Dog %63)
  ret %nyx_string* %64
}


attributes #0 = { returns_twice }

