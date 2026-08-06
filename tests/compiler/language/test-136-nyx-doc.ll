source_filename = "/home/admin/nyx/lang/tests/compiler/language/test-136-nyx-doc.nx"
target triple = "x86_64-pc-linux-gnu"

@.str0 = private unnamed_addr constant [1 x i8] c"/"
@.str1 = private unnamed_addr constant [1 x i8] c"/"
@.str2 = private unnamed_addr constant [1 x i8] c"/"
@.str3 = private unnamed_addr constant [1 x i8] c"\00"
@.str3.c = internal global %nyx_string* null
@.str4 = private unnamed_addr constant [36 x i8] c"/// Calcula la suma de dos enteros.\00"
@.str4.c = internal global %nyx_string* null
@.str5 = private unnamed_addr constant [5 x i8] c"true\00"
@.str5.c = internal global %nyx_string* null
@.str6 = private unnamed_addr constant [6 x i8] c"false\00"
@.str6.c = internal global %nyx_string* null
@.str7 = private unnamed_addr constant [12 x i8] c"std/math.nx\00"
@.str7.c = internal global %nyx_string* null
@.str8 = private unnamed_addr constant [1 x i8] c"/"
@.str9 = private unnamed_addr constant [7 x i8] c"doc ok\00"
@.str9.c = internal global %nyx_string* null
@__nyx_test_failed = external global i64
@__nyx_test_mode = external global i64
; Nyx Compiler Bootstrap v3.0
; Generated from: /home/admin/nyx/lang/tests/compiler/language/test-136-nyx-doc.nx

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


define internal i1 @starts_with_triple_slash(
%nyx_string* %line.param) {
  %line.ptr = alloca %nyx_string*
  store %nyx_string* %line.param, %nyx_string** %line.ptr
  %1 = load %nyx_string*, %nyx_string** %line.ptr
  %2 = call i64 @nyx_string_byte_length(%nyx_string* %1)
  %3 = icmp slt i64 %2, 3
  br i1 %3, label %then0, label %else1
then0:
  ret i1 0
else1:
  br label %merge2
merge2:
  %4 = load %nyx_string*, %nyx_string** %line.ptr
  %5 = call i8 @nyx_string_char_at(%nyx_string* %4, i64 0)
  %6 = zext i8 %5 to i64
  %7 = trunc i64 %6 to i8
  %8 = alloca i8
  store i8 %7, i8* %8
  %9 = load %nyx_string*, %nyx_string** %line.ptr
  %10 = call i8 @nyx_string_char_at(%nyx_string* %9, i64 1)
  %11 = zext i8 %10 to i64
  %12 = trunc i64 %11 to i8
  %13 = alloca i8
  store i8 %12, i8* %13
  %14 = load %nyx_string*, %nyx_string** %line.ptr
  %15 = call i8 @nyx_string_char_at(%nyx_string* %14, i64 2)
  %16 = zext i8 %15 to i64
  %17 = trunc i64 %16 to i8
  %18 = alloca i8
  store i8 %17, i8* %18
  %19 = alloca i1
  store i1 false, i1* %19
  %20 = alloca i1
  store i1 false, i1* %20
  %21 = load i8, i8* %8
  %22 = getelementptr [1 x i8], [1 x i8]* @.str0, i32 0, i32 0
  %23 = load i8, i8* %22
  %24 = zext i8 %23 to i64
  %25 = zext i8 %21 to i64
  %26 = icmp eq i64 %25, %24
  br i1 %26, label %sc_and_rhs3, label %sc_and_end4
sc_and_rhs3:
  %27 = load i8, i8* %13
  %28 = getelementptr [1 x i8], [1 x i8]* @.str1, i32 0, i32 0
  %29 = load i8, i8* %28
  %30 = zext i8 %29 to i64
  %31 = zext i8 %27 to i64
  %32 = icmp eq i64 %31, %30
  store i1 %32, i1* %20
  br label %sc_and_end4
sc_and_end4:
  %33 = load i1, i1* %20
  br i1 %33, label %sc_and_rhs5, label %sc_and_end6
sc_and_rhs5:
  %34 = load i8, i8* %18
  %35 = getelementptr [1 x i8], [1 x i8]* @.str2, i32 0, i32 0
  %36 = load i8, i8* %35
  %37 = zext i8 %36 to i64
  %38 = zext i8 %34 to i64
  %39 = icmp eq i64 %38, %37
  store i1 %39, i1* %19
  br label %sc_and_end6
sc_and_end6:
  %40 = load i1, i1* %19
  ret i1 %40
}

define internal %nyx_string* @extract_doc_text(
%nyx_string* %line.param) {
  %line.ptr = alloca %nyx_string*
  store %nyx_string* %line.param, %nyx_string** %line.ptr
  %41 = load %nyx_string*, %nyx_string** %line.ptr
  %42 = call %nyx_string* @nyx_string_trim(%nyx_string* %41)
  %43 = alloca %nyx_string*
  store %nyx_string* %42, %nyx_string** %43
  %44 = load %nyx_string*, %nyx_string** %43
  %45 = call i64 @nyx_string_byte_length(%nyx_string* %44)
  %46 = icmp slt i64 %45, 3
  br i1 %46, label %then7, label %else8
then7:
  %47 = getelementptr [1 x i8], [1 x i8]* @.str3, i32 0, i32 0
  %48 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str3.c, i8* %47)
  ret %nyx_string* %48
else8:
  br label %merge9
merge9:
  %49 = load %nyx_string*, %nyx_string** %43
  %50 = load %nyx_string*, %nyx_string** %43
  %51 = call i64 @nyx_string_byte_length(%nyx_string* %50)
  %52 = call %nyx_string* @nyx_string_substring(%nyx_string* %49, i64 3, i64 %51)
  %53 = alloca %nyx_string*
  store %nyx_string* %52, %nyx_string** %53
  %54 = load %nyx_string*, %nyx_string** %53
  %55 = call %nyx_string* @nyx_string_trim(%nyx_string* %54)
  ret %nyx_string* %55
}

define i64 @main(
i32 %argc, i8** %argv) {
  call void @nyx_set_args(i32 %argc, i8** %argv)
  %56 = getelementptr [36 x i8], [36 x i8]* @.str4, i32 0, i32 0
  %57 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str4.c, i8* %56)
  %58 = alloca %nyx_string*
  store %nyx_string* %57, %nyx_string** %58
  %59 = load %nyx_string*, %nyx_string** %58
  %60 = call i1 @starts_with_triple_slash(%nyx_string* %59)
  %61 = alloca i1
  store i1 %60, i1* %61
  %62 = load i1, i1* %61
  br i1 %62, label %then10, label %else11
then10:
  %63 = getelementptr [5 x i8], [5 x i8]* @.str5, i32 0, i32 0
  %64 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str5.c, i8* %63)
  %65 = call i8* @nyx_string_to_cstr(%nyx_string* %64)
  call void @nyx_print_string(i8* %65)
  br label %merge12
else11:
  %66 = getelementptr [6 x i8], [6 x i8]* @.str6, i32 0, i32 0
  %67 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str6.c, i8* %66)
  %68 = call i8* @nyx_string_to_cstr(%nyx_string* %67)
  call void @nyx_print_string(i8* %68)
  br label %merge12
merge12:
  %69 = load %nyx_string*, %nyx_string** %58
  %70 = call %nyx_string* @extract_doc_text(%nyx_string* %69)
  %71 = alloca %nyx_string*
  store %nyx_string* %70, %nyx_string** %71
  %72 = load %nyx_string*, %nyx_string** %71
  %73 = call i8* @nyx_string_to_cstr(%nyx_string* %72)
  call void @nyx_print_string(i8* %73)
  %74 = getelementptr [12 x i8], [12 x i8]* @.str7, i32 0, i32 0
  %75 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str7.c, i8* %74)
  %76 = alloca %nyx_string*
  store %nyx_string* %75, %nyx_string** %76
  %77 = sub i64 0, 1
  %78 = alloca i64
  store i64 %77, i64* %78
  %79 = alloca i64
  store i64 0, i64* %79
  %80 = call i8* @llvm.stacksave()
  br label %while_cond13
while_cond13:
  %81 = load i64, i64* %79
  %82 = load %nyx_string*, %nyx_string** %76
  %83 = call i64 @nyx_string_byte_length(%nyx_string* %82)
  %84 = icmp slt i64 %81, %83
  br i1 %84, label %while_body14, label %while_end15
while_body14:
  call void @llvm.stackrestore(i8* %80)
  %85 = load %nyx_string*, %nyx_string** %76
  %86 = load i64, i64* %79
  %87 = call i8 @nyx_string_char_at(%nyx_string* %85, i64 %86)
  %88 = zext i8 %87 to i64
  %89 = trunc i64 %88 to i8
  %90 = alloca i8
  store i8 %89, i8* %90
  %91 = load i8, i8* %90
  %92 = getelementptr [1 x i8], [1 x i8]* @.str8, i32 0, i32 0
  %93 = load i8, i8* %92
  %94 = zext i8 %93 to i64
  %95 = zext i8 %91 to i64
  %96 = icmp eq i64 %95, %94
  br i1 %96, label %then16, label %else17
then16:
  %97 = load i64, i64* %79
  store i64 %97, i64* %78
  br label %merge18
else17:
  br label %merge18
merge18:
  %98 = load i64, i64* %79
  %99 = add i64 %98, 1
  store i64 %99, i64* %79
  br label %while_cond13
while_end15:
  %100 = load %nyx_string*, %nyx_string** %76
  %101 = load i64, i64* %78
  %102 = add i64 %101, 1
  %103 = load %nyx_string*, %nyx_string** %76
  %104 = call i64 @nyx_string_byte_length(%nyx_string* %103)
  %105 = call %nyx_string* @nyx_string_substring(%nyx_string* %100, i64 %102, i64 %104)
  %106 = alloca %nyx_string*
  store %nyx_string* %105, %nyx_string** %106
  %107 = load %nyx_string*, %nyx_string** %106
  %108 = load %nyx_string*, %nyx_string** %106
  %109 = call i64 @nyx_string_byte_length(%nyx_string* %108)
  %110 = sub i64 %109, 3
  %111 = call %nyx_string* @nyx_string_substring(%nyx_string* %107, i64 0, i64 %110)
  %112 = alloca %nyx_string*
  store %nyx_string* %111, %nyx_string** %112
  %113 = load %nyx_string*, %nyx_string** %112
  %114 = call i8* @nyx_string_to_cstr(%nyx_string* %113)
  call void @nyx_print_string(i8* %114)
  %115 = getelementptr [7 x i8], [7 x i8]* @.str9, i32 0, i32 0
  %116 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str9.c, i8* %115)
  %117 = call i8* @nyx_string_to_cstr(%nyx_string* %116)
  call void @nyx_print_string(i8* %117)
  ret i64 0
}


attributes #0 = { returns_twice }

