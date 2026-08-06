source_filename = "script.nx"
target triple = "x86_64-pc-linux-gnu"

%TestConfig = type { %nyx_string*, i64, %nyx_string*, i1, %nyx_string* }

%TestResult = type { %nyx_string*, i64, i64, %nyx_string*, i1 }

@.str0 = private unnamed_addr constant [1 x i8] c"\00"
@.str0.c = internal global %nyx_string* null
@.str1 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str1.c = internal global %nyx_string* null
@.str2 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str2.c = internal global %nyx_string* null
@.str3 = private unnamed_addr constant [1 x i8] c"\00"
@.str3.c = internal global %nyx_string* null
@.str4 = private unnamed_addr constant [6 x i8] c"tests\00"
@.str4.c = internal global %nyx_string* null
@.str5 = private unnamed_addr constant [1 x i8] c"\00"
@.str5.c = internal global %nyx_string* null
@.str6 = private unnamed_addr constant [1 x i8] c"\00"
@.str6.c = internal global %nyx_string* null
@.str7 = private unnamed_addr constant [9 x i8] c"nyx.toml\00"
@.str7.c = internal global %nyx_string* null
@.str8 = private unnamed_addr constant [9 x i8] c"nyx.toml\00"
@.str8.c = internal global %nyx_string* null
@.str9 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str9.c = internal global %nyx_string* null
@.str10 = private unnamed_addr constant [7 x i8] c"[test]\00"
@.str10.c = internal global %nyx_string* null
@.str11 = private unnamed_addr constant [2 x i8] c"[\00"
@.str11.c = internal global %nyx_string* null
@.str12 = private unnamed_addr constant [4 x i8] c"dir\00"
@.str12.c = internal global %nyx_string* null
@.str13 = private unnamed_addr constant [8 x i8] c"timeout\00"
@.str13.c = internal global %nyx_string* null
@.str14 = private unnamed_addr constant [4 x i8] c".nx\00"
@.str14.c = internal global %nyx_string* null
@.str15 = private unnamed_addr constant [2 x i8] c"/\00"
@.str15.c = internal global %nyx_string* null
@.str16 = private unnamed_addr constant [1 x i8] c"\00"
@.str16.c = internal global %nyx_string* null
@.str17 = private unnamed_addr constant [4 x i8] c"src\00"
@.str17.c = internal global %nyx_string* null
@.str18 = private unnamed_addr constant [4 x i8] c"src\00"
@.str18.c = internal global %nyx_string* null
@.str19 = private unnamed_addr constant [9 x i8] c"_test.nx\00"
@.str19.c = internal global %nyx_string* null
@.str20 = private unnamed_addr constant [5 x i8] c"src/\00"
@.str20.c = internal global %nyx_string* null
@.str21 = private unnamed_addr constant [1 x i8] c"\00"
@.str21.c = internal global %nyx_string* null
@.str22 = private unnamed_addr constant [7 x i8] c"test \22\00"
@.str22.c = internal global %nyx_string* null
@.str23 = private unnamed_addr constant [9 x i8] c"NYX_HOME\00"
@.str23.c = internal global %nyx_string* null
@.str24 = private unnamed_addr constant [1 x i8] c"\00"
@.str24.c = internal global %nyx_string* null
@.str25 = private unnamed_addr constant [24 x i8] c"ERROR: NYX_HOME not set\00"
@.str25.c = internal global %nyx_string* null
@.str26 = private unnamed_addr constant [4 x i8] c"PWD\00"
@.str26.c = internal global %nyx_string* null
@.str27 = private unnamed_addr constant [19 x i8] c"/tmp/nyx_test_out_\00"
@.str27.c = internal global %nyx_string* null
@.str28 = private unnamed_addr constant [5 x i8] c".txt\00"
@.str28.c = internal global %nyx_string* null
@.str29 = private unnamed_addr constant [19 x i8] c"/tmp/nyx_test_bin_\00"
@.str29.c = internal global %nyx_string* null
@.str30 = private unnamed_addr constant [20 x i8] c"#!/bin/bash\0aset -e\0a\00"
@.str30.c = internal global %nyx_string* null
@.str31 = private unnamed_addr constant [5 x i8] c"cd \22\00"
@.str31.c = internal global %nyx_string* null
@.str32 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str32.c = internal global %nyx_string* null
@.str33 = private unnamed_addr constant [5 x i8] c"cp \22\00"
@.str33.c = internal global %nyx_string* null
@.str34 = private unnamed_addr constant [2 x i8] c"/\00"
@.str34.c = internal global %nyx_string* null
@.str35 = private unnamed_addr constant [13 x i8] c"\22 script.nx\0a\00"
@.str35.c = internal global %nyx_string* null
@.str36 = private unnamed_addr constant [38 x i8] c"NYX_SKIP_SEMANTIC=1 NYX_PROJECT_DIR=\22\00"
@.str36.c = internal global %nyx_string* null
@.str37 = private unnamed_addr constant [36 x i8] c"\22 ./nyx_bootstrap > /dev/null 2>&1\0a\00"
@.str37.c = internal global %nyx_string* null
@.str38 = private unnamed_addr constant [21 x i8] c"clang -O2 script.ll \00"
@.str38.c = internal global %nyx_string* null
@.str39 = private unnamed_addr constant [62 x i8] c"runtime/runtime.c runtime/strings.c runtime/runtime-arrays.c \00"
@.str39.c = internal global %nyx_string* null
@.str40 = private unnamed_addr constant [54 x i8] c"runtime/maps.c runtime/file-io.c runtime/iterators.c \00"
@.str40.c = internal global %nyx_string* null
@.str41 = private unnamed_addr constant [48 x i8] c"runtime/net.c runtime/thread.c runtime/regex.c \00"
@.str41.c = internal global %nyx_string* null
@.str42 = private unnamed_addr constant [47 x i8] c"runtime/time.c runtime/crypto.c runtime/tls.c \00"
@.str42.c = internal global %nyx_string* null
@.str43 = private unnamed_addr constant [67 x i8] c"runtime/scheduler.c runtime/event_loop.c runtime/sqlite_adapter.c \00"
@.str43.c = internal global %nyx_string* null
@.str44 = private unnamed_addr constant [51 x i8] c"runtime/compress.c runtime/random.c runtime/url.c \00"
@.str44.c = internal global %nyx_string* null
@.str45 = private unnamed_addr constant [91 x i8] c"runtime/msgpack.c runtime/websocket.c runtime/persist.c runtime/http2.c runtime/process.c \00"
@.str45.c = internal global %nyx_string* null
@.str46 = private unnamed_addr constant [44 x i8] c"-lgc -lpthread -ldl -lm -lssl -lcrypto -lz \00"
@.str46.c = internal global %nyx_string* null
@.str47 = private unnamed_addr constant [4 x i8] c"-o \00"
@.str47.c = internal global %nyx_string* null
@.str48 = private unnamed_addr constant [14 x i8] c" 2>/dev/null\0a\00"
@.str48.c = internal global %nyx_string* null
@.str49 = private unnamed_addr constant [9 x i8] c"timeout \00"
@.str49.c = internal global %nyx_string* null
@.str50 = private unnamed_addr constant [2 x i8] c" \00"
@.str50.c = internal global %nyx_string* null
@.str51 = private unnamed_addr constant [4 x i8] c" > \00"
@.str51.c = internal global %nyx_string* null
@.str52 = private unnamed_addr constant [7 x i8] c" 2>&1\0a\00"
@.str52.c = internal global %nyx_string* null
@.str53 = private unnamed_addr constant [14 x i8] c"EXIT_CODE=$?\0a\00"
@.str53.c = internal global %nyx_string* null
@.str54 = private unnamed_addr constant [7 x i8] c"rm -f \00"
@.str54.c = internal global %nyx_string* null
@.str55 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str55.c = internal global %nyx_string* null
@.str56 = private unnamed_addr constant [27 x i8] c"rm -f script.nx script.ll\0a\00"
@.str56.c = internal global %nyx_string* null
@.str57 = private unnamed_addr constant [17 x i8] c"exit $EXIT_CODE\0a\00"
@.str57.c = internal global %nyx_string* null
@.str58 = private unnamed_addr constant [22 x i8] c"/tmp/nyx_test_script_\00"
@.str58.c = internal global %nyx_string* null
@.str59 = private unnamed_addr constant [4 x i8] c".sh\00"
@.str59.c = internal global %nyx_string* null
@.str60 = private unnamed_addr constant [6 x i8] c"bash \00"
@.str60.c = internal global %nyx_string* null
@.str61 = private unnamed_addr constant [1 x i8] c"\00"
@.str61.c = internal global %nyx_string* null
@.str62 = private unnamed_addr constant [7 x i8] c"rm -f \00"
@.str62.c = internal global %nyx_string* null
@.str63 = private unnamed_addr constant [7 x i8] c"rm -f \00"
@.str63.c = internal global %nyx_string* null
@.str64 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str64.c = internal global %nyx_string* null
@.str65 = private unnamed_addr constant [6 x i8] c"PASS:\00"
@.str65.c = internal global %nyx_string* null
@.str66 = private unnamed_addr constant [6 x i8] c"FAIL:\00"
@.str66.c = internal global %nyx_string* null
@.str67 = private unnamed_addr constant [9 x i8] c"  PASS  \00"
@.str67.c = internal global %nyx_string* null
@.str68 = private unnamed_addr constant [3 x i8] c" (\00"
@.str68.c = internal global %nyx_string* null
@.str69 = private unnamed_addr constant [8 x i8] c" tests)\00"
@.str69.c = internal global %nyx_string* null
@.str70 = private unnamed_addr constant [9 x i8] c"  FAIL  \00"
@.str70.c = internal global %nyx_string* null
@.str71 = private unnamed_addr constant [3 x i8] c" (\00"
@.str71.c = internal global %nyx_string* null
@.str72 = private unnamed_addr constant [10 x i8] c" passed, \00"
@.str72.c = internal global %nyx_string* null
@.str73 = private unnamed_addr constant [9 x i8] c" failed)\00"
@.str73.c = internal global %nyx_string* null
@.str74 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str74.c = internal global %nyx_string* null
@.str75 = private unnamed_addr constant [6 x i8] c"FAIL:\00"
@.str75.c = internal global %nyx_string* null
@.str76 = private unnamed_addr constant [7 x i8] c"assert\00"
@.str76.c = internal global %nyx_string* null
@.str77 = private unnamed_addr constant [9 x i8] c"Results:\00"
@.str77.c = internal global %nyx_string* null
@.str78 = private unnamed_addr constant [10 x i8] c"         \00"
@.str78.c = internal global %nyx_string* null
@.str79 = private unnamed_addr constant [1 x i8] c"\00"
@.str79.c = internal global %nyx_string* null
@.str80 = private unnamed_addr constant [36 x i8] c"===================================\00"
@.str80.c = internal global %nyx_string* null
@.str81 = private unnamed_addr constant [11 x i8] c"  Files:  \00"
@.str81.c = internal global %nyx_string* null
@.str82 = private unnamed_addr constant [10 x i8] c" passed, \00"
@.str82.c = internal global %nyx_string* null
@.str83 = private unnamed_addr constant [10 x i8] c" failed (\00"
@.str83.c = internal global %nyx_string* null
@.str84 = private unnamed_addr constant [8 x i8] c" total)\00"
@.str84.c = internal global %nyx_string* null
@.str85 = private unnamed_addr constant [11 x i8] c"  Tests:  \00"
@.str85.c = internal global %nyx_string* null
@.str86 = private unnamed_addr constant [10 x i8] c" passed, \00"
@.str86.c = internal global %nyx_string* null
@.str87 = private unnamed_addr constant [10 x i8] c" failed (\00"
@.str87.c = internal global %nyx_string* null
@.str88 = private unnamed_addr constant [8 x i8] c" total)\00"
@.str88.c = internal global %nyx_string* null
@.str89 = private unnamed_addr constant [27 x i8] c"  Status: ALL TESTS PASSED\00"
@.str89.c = internal global %nyx_string* null
@.str90 = private unnamed_addr constant [28 x i8] c"  Status: SOME TESTS FAILED\00"
@.str90.c = internal global %nyx_string* null
@.str91 = private unnamed_addr constant [36 x i8] c"===================================\00"
@.str91.c = internal global %nyx_string* null
@.str92 = private unnamed_addr constant [24 x i8] c"=== Nyx Test Runner ===\00"
@.str92.c = internal global %nyx_string* null
@.str93 = private unnamed_addr constant [9 x i8] c"--filter\00"
@.str93.c = internal global %nyx_string* null
@.str94 = private unnamed_addr constant [10 x i8] c"--verbose\00"
@.str94.c = internal global %nyx_string* null
@.str95 = private unnamed_addr constant [3 x i8] c"-v\00"
@.str95.c = internal global %nyx_string* null
@.str96 = private unnamed_addr constant [10 x i8] c"--timeout\00"
@.str96.c = internal global %nyx_string* null
@.str97 = private unnamed_addr constant [4 x i8] c".nx\00"
@.str97.c = internal global %nyx_string* null
@.str98 = private unnamed_addr constant [1 x i8] c"\00"
@.str98.c = internal global %nyx_string* null
@.str99 = private unnamed_addr constant [24 x i8] c"error: file not found: \00"
@.str99.c = internal global %nyx_string* null
@.str100 = private unnamed_addr constant [23 x i8] c"  No test files found.\00"
@.str100.c = internal global %nyx_string* null
@.str101 = private unnamed_addr constant [1 x i8] c"\00"
@.str101.c = internal global %nyx_string* null
@.str102 = private unnamed_addr constant [12 x i8] c"  Filter: \22\00"
@.str102.c = internal global %nyx_string* null
@.str103 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str103.c = internal global %nyx_string* null
@.str104 = private unnamed_addr constant [14 x i8] c"  Looked in: \00"
@.str104.c = internal global %nyx_string* null
@.str105 = private unnamed_addr constant [2 x i8] c"/\00"
@.str105.c = internal global %nyx_string* null
@.str106 = private unnamed_addr constant [9 x i8] c"  Found \00"
@.str106.c = internal global %nyx_string* null
@.str107 = private unnamed_addr constant [14 x i8] c" test file(s)\00"
@.str107.c = internal global %nyx_string* null
@.str108 = private unnamed_addr constant [1 x i8] c"\00"
@.str108.c = internal global %nyx_string* null
@.str109 = private unnamed_addr constant [12 x i8] c"  Filter: \22\00"
@.str109.c = internal global %nyx_string* null
@.str110 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str110.c = internal global %nyx_string* null
@.str111 = private unnamed_addr constant [1 x i8] c"\00"
@.str111.c = internal global %nyx_string* null
@.str112 = private unnamed_addr constant [35 x i8] c"  No files with test blocks found.\00"
@.str112.c = internal global %nyx_string* null
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


define i64 @println(
%nyx_string* %s.param) {
  %s.ptr = alloca %nyx_string*
  store %nyx_string* %s.param, %nyx_string** %s.ptr
  %1 = load %nyx_string*, %nyx_string** %s.ptr
  %2 = call i8* @nyx_string_to_cstr(%nyx_string* %1)
  call void @nyx_print_string(i8* %2)
  ret i64 0
}

define i64 @abs(
i64 %n.param) {
  %n.ptr = alloca i64
  store i64 %n.param, i64* %n.ptr
  %3 = load i64, i64* %n.ptr
  %4 = icmp slt i64 %3, 0
  br i1 %4, label %then0, label %else1
then0:
  %5 = load i64, i64* %n.ptr
  %6 = sub i64 0, %5
  ret i64 %6
else1:
  br label %merge2
merge2:
  %7 = load i64, i64* %n.ptr
  ret i64 %7
}

define i64 @min(
i64 %a.param, i64 %b.param) {
  %a.ptr = alloca i64
  store i64 %a.param, i64* %a.ptr
  %b.ptr = alloca i64
  store i64 %b.param, i64* %b.ptr
  %8 = load i64, i64* %a.ptr
  %9 = load i64, i64* %b.ptr
  %10 = icmp slt i64 %8, %9
  br i1 %10, label %then3, label %else4
then3:
  %11 = load i64, i64* %a.ptr
  ret i64 %11
else4:
  br label %merge5
merge5:
  %12 = load i64, i64* %b.ptr
  ret i64 %12
}

define i64 @max(
i64 %a.param, i64 %b.param) {
  %a.ptr = alloca i64
  store i64 %a.param, i64* %a.ptr
  %b.ptr = alloca i64
  store i64 %b.param, i64* %b.ptr
  %13 = load i64, i64* %a.ptr
  %14 = load i64, i64* %b.ptr
  %15 = icmp sgt i64 %13, %14
  br i1 %15, label %then6, label %else7
then6:
  %16 = load i64, i64* %a.ptr
  ret i64 %16
else7:
  br label %merge8
merge8:
  %17 = load i64, i64* %b.ptr
  ret i64 %17
}

define i64 @clamp(
i64 %n.param, i64 %lo.param, i64 %hi.param) {
  %n.ptr = alloca i64
  store i64 %n.param, i64* %n.ptr
  %lo.ptr = alloca i64
  store i64 %lo.param, i64* %lo.ptr
  %hi.ptr = alloca i64
  store i64 %hi.param, i64* %hi.ptr
  %18 = load i64, i64* %lo.ptr
  %19 = load i64, i64* %n.ptr
  %20 = load i64, i64* %hi.ptr
  %21 = call i64 @min(i64 %19, i64 %20)
  %22 = call i64 @max(i64 %18, i64 %21)
  ret i64 %22
}

define i64 @pow_int(
i64 %base.param, i64 %exp.param) {
  %base.ptr = alloca i64
  store i64 %base.param, i64* %base.ptr
  %exp.ptr = alloca i64
  store i64 %exp.param, i64* %exp.ptr
  %23 = alloca i64
  store i64 1, i64* %23
  %24 = alloca i64
  store i64 0, i64* %24
  %25 = call i8* @llvm.stacksave()
  br label %while_cond9
while_cond9:
  %26 = load i64, i64* %24
  %27 = load i64, i64* %exp.ptr
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %while_body10, label %while_end11
while_body10:
  call void @llvm.stackrestore(i8* %25)
  %29 = load i64, i64* %23
  %30 = load i64, i64* %base.ptr
  %31 = mul i64 %29, %30
  store i64 %31, i64* %23
  %32 = load i64, i64* %24
  %33 = add i64 %32, 1
  store i64 %33, i64* %24
  br label %while_cond9
while_end11:
  %34 = load i64, i64* %23
  ret i64 %34
}

define i64 @gcd(
i64 %a.param, i64 %b.param) {
  %a.ptr = alloca i64
  store i64 %a.param, i64* %a.ptr
  %b.ptr = alloca i64
  store i64 %b.param, i64* %b.ptr
  %35 = load i64, i64* %a.ptr
  %36 = call i64 @abs(i64 %35)
  %37 = alloca i64
  store i64 %36, i64* %37
  %38 = load i64, i64* %b.ptr
  %39 = call i64 @abs(i64 %38)
  %40 = alloca i64
  store i64 %39, i64* %40
  %41 = call i8* @llvm.stacksave()
  br label %while_cond12
while_cond12:
  %42 = load i64, i64* %40
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %while_body13, label %while_end14
while_body13:
  call void @llvm.stackrestore(i8* %41)
  %44 = load i64, i64* %40
  %45 = alloca i64
  store i64 %44, i64* %45
  %46 = load i64, i64* %37
  %47 = load i64, i64* %40
  %48 = srem i64 %46, %47
  store i64 %48, i64* %40
  %49 = load i64, i64* %45
  store i64 %49, i64* %37
  br label %while_cond12
while_end14:
  %50 = load i64, i64* %37
  ret i64 %50
}

define i64 @lcm(
i64 %a.param, i64 %b.param) {
  %a.ptr = alloca i64
  store i64 %a.param, i64* %a.ptr
  %b.ptr = alloca i64
  store i64 %b.param, i64* %b.ptr
  %51 = alloca i1
  store i1 true, i1* %51
  %52 = load i64, i64* %a.ptr
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %sc_or_end16, label %sc_or_rhs15
sc_or_rhs15:
  %54 = load i64, i64* %b.ptr
  %55 = icmp eq i64 %54, 0
  store i1 %55, i1* %51
  br label %sc_or_end16
sc_or_end16:
  %56 = load i1, i1* %51
  br i1 %56, label %then17, label %else18
then17:
  ret i64 0
else18:
  br label %merge19
merge19:
  %57 = load i64, i64* %a.ptr
  %58 = load i64, i64* %b.ptr
  %59 = mul i64 %57, %58
  %60 = call i64 @abs(i64 %59)
  %61 = load i64, i64* %a.ptr
  %62 = load i64, i64* %b.ptr
  %63 = call i64 @gcd(i64 %61, i64 %62)
  %64 = sdiv i64 %60, %63
  ret i64 %64
}

define i1 @is_even(
i64 %n.param) {
  %n.ptr = alloca i64
  store i64 %n.param, i64* %n.ptr
  %65 = load i64, i64* %n.ptr
  %66 = srem i64 %65, 2
  %67 = icmp eq i64 %66, 0
  ret i1 %67
}

define i1 @is_odd(
i64 %n.param) {
  %n.ptr = alloca i64
  store i64 %n.param, i64* %n.ptr
  %68 = load i64, i64* %n.ptr
  %69 = srem i64 %68, 2
  %70 = icmp ne i64 %69, 0
  ret i1 %70
}

define i64 @sqrt_int(
i64 %n.param) {
  %n.ptr = alloca i64
  store i64 %n.param, i64* %n.ptr
  %71 = load i64, i64* %n.ptr
  %72 = icmp slt i64 %71, 0
  br i1 %72, label %then20, label %else21
then20:
  %73 = sub i64 0, 1
  ret i64 %73
else21:
  br label %merge22
merge22:
  %74 = load i64, i64* %n.ptr
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %then23, label %else24
then23:
  ret i64 0
else24:
  br label %merge25
merge25:
  %76 = load i64, i64* %n.ptr
  %77 = alloca i64
  store i64 %76, i64* %77
  %78 = load i64, i64* %77
  %79 = add i64 %78, 1
  %80 = sdiv i64 %79, 2
  %81 = alloca i64
  store i64 %80, i64* %81
  %82 = call i8* @llvm.stacksave()
  br label %while_cond26
while_cond26:
  %83 = load i64, i64* %81
  %84 = load i64, i64* %77
  %85 = icmp slt i64 %83, %84
  br i1 %85, label %while_body27, label %while_end28
while_body27:
  call void @llvm.stackrestore(i8* %82)
  %86 = load i64, i64* %81
  store i64 %86, i64* %77
  %87 = load i64, i64* %77
  %88 = load i64, i64* %n.ptr
  %89 = load i64, i64* %77
  %90 = sdiv i64 %88, %89
  %91 = add i64 %87, %90
  %92 = sdiv i64 %91, 2
  store i64 %92, i64* %81
  br label %while_cond26
while_end28:
  %93 = load i64, i64* %77
  ret i64 %93
}

define i64 @array_sum(
{ i64, i8* }* %arr.param) {
  %arr.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %arr.param, { i64, i8* }** %arr.ptr
  %94 = alloca i64
  store i64 0, i64* %94
  %95 = alloca i64
  store i64 0, i64* %95
  %96 = call i8* @llvm.stacksave()
  br label %while_cond29
while_cond29:
  %97 = load i64, i64* %95
  %98 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %99 = call i64 @nyx_array_length({ i64, i8* }* %98)
  %100 = icmp slt i64 %97, %99
  br i1 %100, label %while_body30, label %while_end31
while_body30:
  call void @llvm.stackrestore(i8* %96)
  %101 = load i64, i64* %94
  %102 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %103 = load i64, i64* %95
  %104 = call i64 @nyx_array_get({ i64, i8* }* %102, i64 %103)
  %105 = add i64 %101, %104
  store i64 %105, i64* %94
  %106 = load i64, i64* %95
  %107 = add i64 %106, 1
  store i64 %107, i64* %95
  br label %while_cond29
while_end31:
  %108 = load i64, i64* %94
  ret i64 %108
}

define i64 @array_min(
{ i64, i8* }* %arr.param) {
  %arr.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %arr.param, { i64, i8* }** %arr.ptr
  %109 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %110 = call i64 @nyx_array_get({ i64, i8* }* %109, i64 0)
  %111 = alloca i64
  store i64 %110, i64* %111
  %112 = alloca i64
  store i64 1, i64* %112
  %113 = call i8* @llvm.stacksave()
  br label %while_cond32
while_cond32:
  %114 = load i64, i64* %112
  %115 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %116 = call i64 @nyx_array_length({ i64, i8* }* %115)
  %117 = icmp slt i64 %114, %116
  br i1 %117, label %while_body33, label %while_end34
while_body33:
  call void @llvm.stackrestore(i8* %113)
  %118 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %119 = load i64, i64* %112
  %120 = call i64 @nyx_array_get({ i64, i8* }* %118, i64 %119)
  %121 = load i64, i64* %111
  %122 = icmp slt i64 %120, %121
  br i1 %122, label %then35, label %else36
then35:
  %123 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %124 = load i64, i64* %112
  %125 = call i64 @nyx_array_get({ i64, i8* }* %123, i64 %124)
  store i64 %125, i64* %111
  br label %merge37
else36:
  br label %merge37
merge37:
  %126 = load i64, i64* %112
  %127 = add i64 %126, 1
  store i64 %127, i64* %112
  br label %while_cond32
while_end34:
  %128 = load i64, i64* %111
  ret i64 %128
}

define i64 @array_max(
{ i64, i8* }* %arr.param) {
  %arr.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %arr.param, { i64, i8* }** %arr.ptr
  %129 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %130 = call i64 @nyx_array_get({ i64, i8* }* %129, i64 0)
  %131 = alloca i64
  store i64 %130, i64* %131
  %132 = alloca i64
  store i64 1, i64* %132
  %133 = call i8* @llvm.stacksave()
  br label %while_cond38
while_cond38:
  %134 = load i64, i64* %132
  %135 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %136 = call i64 @nyx_array_length({ i64, i8* }* %135)
  %137 = icmp slt i64 %134, %136
  br i1 %137, label %while_body39, label %while_end40
while_body39:
  call void @llvm.stackrestore(i8* %133)
  %138 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %139 = load i64, i64* %132
  %140 = call i64 @nyx_array_get({ i64, i8* }* %138, i64 %139)
  %141 = load i64, i64* %131
  %142 = icmp sgt i64 %140, %141
  br i1 %142, label %then41, label %else42
then41:
  %143 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %144 = load i64, i64* %132
  %145 = call i64 @nyx_array_get({ i64, i8* }* %143, i64 %144)
  store i64 %145, i64* %131
  br label %merge43
else42:
  br label %merge43
merge43:
  %146 = load i64, i64* %132
  %147 = add i64 %146, 1
  store i64 %147, i64* %132
  br label %while_cond38
while_end40:
  %148 = load i64, i64* %131
  ret i64 %148
}

define { i64, i8* }* @array_reverse(
{ i64, i8* }* %arr.param) {
  %arr.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %arr.param, { i64, i8* }** %arr.ptr
  %149 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %150 = call i64 @nyx_array_length({ i64, i8* }* %149)
  %151 = alloca i64
  store i64 %150, i64* %151
  %152 = alloca i64
  store i64 0, i64* %152
  %153 = call i8* @llvm.stacksave()
  br label %while_cond44
while_cond44:
  %154 = load i64, i64* %152
  %155 = load i64, i64* %151
  %156 = sdiv i64 %155, 2
  %157 = icmp slt i64 %154, %156
  br i1 %157, label %while_body45, label %while_end46
while_body45:
  call void @llvm.stackrestore(i8* %153)
  %158 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %159 = load i64, i64* %152
  %160 = call i64 @nyx_array_get({ i64, i8* }* %158, i64 %159)
  %161 = alloca i64
  store i64 %160, i64* %161
  %162 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %163 = load i64, i64* %152
  %164 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %165 = load i64, i64* %151
  %166 = sub i64 %165, 1
  %167 = load i64, i64* %152
  %168 = sub i64 %166, %167
  %169 = call i64 @nyx_array_get({ i64, i8* }* %164, i64 %168)
  call void @nyx_array_set({ i64, i8* }* %162, i64 %163, i64 %169)
  %170 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %171 = load i64, i64* %151
  %172 = sub i64 %171, 1
  %173 = load i64, i64* %152
  %174 = sub i64 %172, %173
  %175 = load i64, i64* %161
  call void @nyx_array_set({ i64, i8* }* %170, i64 %174, i64 %175)
  %176 = load i64, i64* %152
  %177 = add i64 %176, 1
  store i64 %177, i64* %152
  br label %while_cond44
while_end46:
  %178 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  ret { i64, i8* }* %178
}

define i1 @array_contains_int(
{ i64, i8* }* %arr.param, i64 %val.param) {
  %arr.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %arr.param, { i64, i8* }** %arr.ptr
  %val.ptr = alloca i64
  store i64 %val.param, i64* %val.ptr
  %179 = alloca i64
  store i64 0, i64* %179
  %180 = call i8* @llvm.stacksave()
  br label %while_cond47
while_cond47:
  %181 = load i64, i64* %179
  %182 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %183 = call i64 @nyx_array_length({ i64, i8* }* %182)
  %184 = icmp slt i64 %181, %183
  br i1 %184, label %while_body48, label %while_end49
while_body48:
  call void @llvm.stackrestore(i8* %180)
  %185 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %186 = load i64, i64* %179
  %187 = call i64 @nyx_array_get({ i64, i8* }* %185, i64 %186)
  %188 = load i64, i64* %val.ptr
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %then50, label %else51
then50:
  ret i1 1
else51:
  br label %merge52
merge52:
  %190 = load i64, i64* %179
  %191 = add i64 %190, 1
  store i64 %191, i64* %179
  br label %while_cond47
while_end49:
  ret i1 0
}

define i64 @array_index_of(
{ i64, i8* }* %arr.param, i64 %val.param) {
  %arr.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %arr.param, { i64, i8* }** %arr.ptr
  %val.ptr = alloca i64
  store i64 %val.param, i64* %val.ptr
  %192 = alloca i64
  store i64 0, i64* %192
  %193 = call i8* @llvm.stacksave()
  br label %while_cond53
while_cond53:
  %194 = load i64, i64* %192
  %195 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %196 = call i64 @nyx_array_length({ i64, i8* }* %195)
  %197 = icmp slt i64 %194, %196
  br i1 %197, label %while_body54, label %while_end55
while_body54:
  call void @llvm.stackrestore(i8* %193)
  %198 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %199 = load i64, i64* %192
  %200 = call i64 @nyx_array_get({ i64, i8* }* %198, i64 %199)
  %201 = load i64, i64* %val.ptr
  %202 = icmp eq i64 %200, %201
  br i1 %202, label %then56, label %else57
then56:
  %203 = load i64, i64* %192
  ret i64 %203
else57:
  br label %merge58
merge58:
  %204 = load i64, i64* %192
  %205 = add i64 %204, 1
  store i64 %205, i64* %192
  br label %while_cond53
while_end55:
  %206 = sub i64 0, 1
  ret i64 %206
}

define { i64, i8* }* @sort_int(
{ i64, i8* }* %arr.param) {
  %arr.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %arr.param, { i64, i8* }** %arr.ptr
  %207 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %208 = call i64 @nyx_array_length({ i64, i8* }* %207)
  %209 = alloca i64
  store i64 %208, i64* %209
  %210 = alloca i1
  store i1 1, i1* %210
  %211 = call i8* @llvm.stacksave()
  br label %while_cond59
while_cond59:
  %212 = load i1, i1* %210
  %213 = icmp eq i1 %212, 1
  br i1 %213, label %while_body60, label %while_end61
while_body60:
  call void @llvm.stackrestore(i8* %211)
  store i1 0, i1* %210
  %214 = alloca i64
  store i64 0, i64* %214
  %215 = call i8* @llvm.stacksave()
  br label %while_cond62
while_cond62:
  %216 = load i64, i64* %214
  %217 = load i64, i64* %209
  %218 = sub i64 %217, 1
  %219 = icmp slt i64 %216, %218
  br i1 %219, label %while_body63, label %while_end64
while_body63:
  call void @llvm.stackrestore(i8* %215)
  %220 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %221 = load i64, i64* %214
  %222 = call i64 @nyx_array_get({ i64, i8* }* %220, i64 %221)
  %223 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %224 = load i64, i64* %214
  %225 = add i64 %224, 1
  %226 = call i64 @nyx_array_get({ i64, i8* }* %223, i64 %225)
  %227 = icmp sgt i64 %222, %226
  br i1 %227, label %then65, label %else66
then65:
  %228 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %229 = load i64, i64* %214
  %230 = call i64 @nyx_array_get({ i64, i8* }* %228, i64 %229)
  %231 = alloca i64
  store i64 %230, i64* %231
  %232 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %233 = load i64, i64* %214
  %234 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %235 = load i64, i64* %214
  %236 = add i64 %235, 1
  %237 = call i64 @nyx_array_get({ i64, i8* }* %234, i64 %236)
  call void @nyx_array_set({ i64, i8* }* %232, i64 %233, i64 %237)
  %238 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %239 = load i64, i64* %214
  %240 = add i64 %239, 1
  %241 = load i64, i64* %231
  call void @nyx_array_set({ i64, i8* }* %238, i64 %240, i64 %241)
  store i1 1, i1* %210
  br label %merge67
else66:
  br label %merge67
merge67:
  %242 = load i64, i64* %214
  %243 = add i64 %242, 1
  store i64 %243, i64* %214
  br label %while_cond62
while_end64:
  br label %while_cond59
while_end61:
  %244 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  ret { i64, i8* }* %244
}

define { i64, i8* }* @sort_by(
{ i64, i8* }* %arr.param, i8* %cmp.param) {
  %arr.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %arr.param, { i64, i8* }** %arr.ptr
  %cmp.ptr = alloca i8*
  store i8* %cmp.param, i8** %cmp.ptr
  %245 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %246 = call i64 @nyx_array_length({ i64, i8* }* %245)
  %247 = alloca i64
  store i64 %246, i64* %247
  %248 = load i64, i64* %247
  %249 = icmp sle i64 %248, 1
  br i1 %249, label %then68, label %else69
then68:
  %250 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  ret { i64, i8* }* %250
else69:
  br label %merge70
merge70:
  %251 = alloca i64
  store i64 1, i64* %251
  %252 = call i8* @llvm.stacksave()
  br label %while_cond71
while_cond71:
  %253 = load i64, i64* %251
  %254 = load i64, i64* %247
  %255 = icmp slt i64 %253, %254
  br i1 %255, label %while_body72, label %while_end73
while_body72:
  call void @llvm.stackrestore(i8* %252)
  %256 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %257 = load i64, i64* %251
  %258 = call i64 @nyx_array_get({ i64, i8* }* %256, i64 %257)
  %259 = alloca i64
  store i64 %258, i64* %259
  %260 = load i64, i64* %251
  %261 = sub i64 %260, 1
  %262 = alloca i64
  store i64 %261, i64* %262
  %263 = alloca i1
  store i1 0, i1* %263
  %264 = call i8* @llvm.stacksave()
  br label %while_cond74
while_cond74:
  %265 = alloca i1
  store i1 false, i1* %265
  %266 = load i64, i64* %262
  %267 = icmp sge i64 %266, 0
  br i1 %267, label %sc_and_rhs77, label %sc_and_end78
sc_and_rhs77:
  %268 = load i1, i1* %263
  %269 = xor i1 %268, true
  store i1 %269, i1* %265
  br label %sc_and_end78
sc_and_end78:
  %270 = load i1, i1* %265
  br i1 %270, label %while_body75, label %while_end76
while_body75:
  call void @llvm.stackrestore(i8* %264)
  %271 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %272 = load i64, i64* %262
  %273 = call i64 @nyx_array_get({ i64, i8* }* %271, i64 %272)
  %274 = load i64, i64* %259
  %275 = load i8*, i8** %cmp.ptr
  %276 = bitcast i8* %275 to { i8*, i8* }*
  %277 = getelementptr { i8*, i8* }, { i8*, i8* }* %276, i32 0, i32 0
  %278 = load i8*, i8** %277
  %279 = getelementptr { i8*, i8* }, { i8*, i8* }* %276, i32 0, i32 1
  %280 = load i8*, i8** %279
  %281 = icmp ne i8* %280, null
  br i1 %281, label %cl_env79, label %cl_noenv80
cl_env79:
  %282 = bitcast i8* %278 to i64 (i8*, i64, i64)*
  %283 = call i64 %282(i8* %280, i64 %273, i64 %274)
  br label %cl_merge81
cl_noenv80:
  %284 = bitcast i8* %278 to i64 (i64, i64)*
  %285 = call i64 %284(i64 %273, i64 %274)
  br label %cl_merge81
cl_merge81:
  %286 = phi i64 [%283, %cl_env79], [%285, %cl_noenv80]
  %287 = alloca i64
  store i64 %286, i64* %287
  %288 = load i64, i64* %287
  %289 = icmp sgt i64 %288, 0
  br i1 %289, label %then82, label %else83
then82:
  %290 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %291 = load i64, i64* %262
  %292 = add i64 %291, 1
  %293 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %294 = load i64, i64* %262
  %295 = call i64 @nyx_array_get({ i64, i8* }* %293, i64 %294)
  call void @nyx_array_set({ i64, i8* }* %290, i64 %292, i64 %295)
  %296 = load i64, i64* %262
  %297 = sub i64 %296, 1
  store i64 %297, i64* %262
  br label %merge84
else83:
  store i1 1, i1* %263
  br label %merge84
merge84:
  br label %while_cond74
while_end76:
  %298 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %299 = load i64, i64* %262
  %300 = add i64 %299, 1
  %301 = load i64, i64* %259
  call void @nyx_array_set({ i64, i8* }* %298, i64 %300, i64 %301)
  %302 = load i64, i64* %251
  %303 = add i64 %302, 1
  store i64 %303, i64* %251
  br label %while_cond71
while_end73:
  %304 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  ret { i64, i8* }* %304
}

define i64 @str_compare(
%nyx_string* %a.param, %nyx_string* %b.param) {
  %a.ptr = alloca %nyx_string*
  store %nyx_string* %a.param, %nyx_string** %a.ptr
  %b.ptr = alloca %nyx_string*
  store %nyx_string* %b.param, %nyx_string** %b.ptr
  %305 = load %nyx_string*, %nyx_string** %a.ptr
  %306 = call i64 @nyx_string_byte_length(%nyx_string* %305)
  %307 = alloca i64
  store i64 %306, i64* %307
  %308 = load %nyx_string*, %nyx_string** %b.ptr
  %309 = call i64 @nyx_string_byte_length(%nyx_string* %308)
  %310 = alloca i64
  store i64 %309, i64* %310
  %311 = load i64, i64* %307
  %312 = alloca i64
  store i64 %311, i64* %312
  %313 = load i64, i64* %310
  %314 = load i64, i64* %312
  %315 = icmp slt i64 %313, %314
  br i1 %315, label %then85, label %else86
then85:
  %316 = load i64, i64* %310
  store i64 %316, i64* %312
  br label %merge87
else86:
  br label %merge87
merge87:
  %317 = alloca i64
  store i64 0, i64* %317
  %318 = call i8* @llvm.stacksave()
  br label %while_cond88
while_cond88:
  %319 = load i64, i64* %317
  %320 = load i64, i64* %312
  %321 = icmp slt i64 %319, %320
  br i1 %321, label %while_body89, label %while_end90
while_body89:
  call void @llvm.stackrestore(i8* %318)
  %322 = load %nyx_string*, %nyx_string** %a.ptr
  %323 = load i64, i64* %317
  %324 = call i8 @nyx_string_char_at(%nyx_string* %322, i64 %323)
  %325 = zext i8 %324 to i64
  %326 = alloca i64
  store i64 %325, i64* %326
  %327 = load %nyx_string*, %nyx_string** %b.ptr
  %328 = load i64, i64* %317
  %329 = call i8 @nyx_string_char_at(%nyx_string* %327, i64 %328)
  %330 = zext i8 %329 to i64
  %331 = alloca i64
  store i64 %330, i64* %331
  %332 = load i64, i64* %326
  %333 = load i64, i64* %331
  %334 = icmp slt i64 %332, %333
  br i1 %334, label %then91, label %else92
then91:
  %335 = sub i64 0, 1
  ret i64 %335
else92:
  br label %merge93
merge93:
  %336 = load i64, i64* %326
  %337 = load i64, i64* %331
  %338 = icmp sgt i64 %336, %337
  br i1 %338, label %then94, label %else95
then94:
  ret i64 1
else95:
  br label %merge96
merge96:
  %339 = load i64, i64* %317
  %340 = add i64 %339, 1
  store i64 %340, i64* %317
  br label %while_cond88
while_end90:
  %341 = load i64, i64* %307
  %342 = load i64, i64* %310
  %343 = icmp slt i64 %341, %342
  br i1 %343, label %then97, label %else98
then97:
  %344 = sub i64 0, 1
  ret i64 %344
else98:
  br label %merge99
merge99:
  %345 = load i64, i64* %307
  %346 = load i64, i64* %310
  %347 = icmp sgt i64 %345, %346
  br i1 %347, label %then100, label %else101
then100:
  ret i64 1
else101:
  br label %merge102
merge102:
  ret i64 0
}

define { i64, i8* }* @sort_str(
{ i64, i8* }* %arr.param) {
  %arr.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %arr.param, { i64, i8* }** %arr.ptr
  %348 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %349 = call i64 @nyx_array_length({ i64, i8* }* %348)
  %350 = alloca i64
  store i64 %349, i64* %350
  %351 = load i64, i64* %350
  %352 = icmp sle i64 %351, 1
  br i1 %352, label %then103, label %else104
then103:
  %353 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  ret { i64, i8* }* %353
else104:
  br label %merge105
merge105:
  %354 = alloca i64
  store i64 1, i64* %354
  %355 = call i8* @llvm.stacksave()
  br label %while_cond106
while_cond106:
  %356 = load i64, i64* %354
  %357 = load i64, i64* %350
  %358 = icmp slt i64 %356, %357
  br i1 %358, label %while_body107, label %while_end108
while_body107:
  call void @llvm.stackrestore(i8* %355)
  %359 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %360 = load i64, i64* %354
  %361 = call i64 @nyx_array_get_checked({ i64, i8* }* %359, i64 %360, i64 2)
  %362 = inttoptr i64 %361 to %nyx_string*
  %363 = alloca %nyx_string*
  store %nyx_string* %362, %nyx_string** %363
  %364 = load i64, i64* %354
  %365 = sub i64 %364, 1
  %366 = alloca i64
  store i64 %365, i64* %366
  %367 = alloca i1
  store i1 0, i1* %367
  %368 = call i8* @llvm.stacksave()
  br label %while_cond109
while_cond109:
  %369 = alloca i1
  store i1 false, i1* %369
  %370 = load i64, i64* %366
  %371 = icmp sge i64 %370, 0
  br i1 %371, label %sc_and_rhs112, label %sc_and_end113
sc_and_rhs112:
  %372 = load i1, i1* %367
  %373 = xor i1 %372, true
  store i1 %373, i1* %369
  br label %sc_and_end113
sc_and_end113:
  %374 = load i1, i1* %369
  br i1 %374, label %while_body110, label %while_end111
while_body110:
  call void @llvm.stackrestore(i8* %368)
  %375 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %376 = load i64, i64* %366
  %377 = call i64 @nyx_array_get_checked({ i64, i8* }* %375, i64 %376, i64 2)
  %378 = inttoptr i64 %377 to %nyx_string*
  %379 = alloca %nyx_string*
  store %nyx_string* %378, %nyx_string** %379
  %380 = load %nyx_string*, %nyx_string** %379
  %381 = load %nyx_string*, %nyx_string** %363
  %382 = call i64 @str_compare(%nyx_string* %380, %nyx_string* %381)
  %383 = icmp sgt i64 %382, 0
  br i1 %383, label %then114, label %else115
then114:
  %384 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %385 = load i64, i64* %366
  %386 = add i64 %385, 1
  %387 = load %nyx_string*, %nyx_string** %379
  %388 = ptrtoint %nyx_string* %387 to i64
  call void @nyx_array_set_tagged({ i64, i8* }* %384, i64 %386, i64 %388, i64 2)
  %389 = load i64, i64* %366
  %390 = sub i64 %389, 1
  store i64 %390, i64* %366
  br label %merge116
else115:
  store i1 1, i1* %367
  br label %merge116
merge116:
  br label %while_cond109
while_end111:
  %391 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %392 = load i64, i64* %366
  %393 = add i64 %392, 1
  %394 = load %nyx_string*, %nyx_string** %363
  %395 = ptrtoint %nyx_string* %394 to i64
  call void @nyx_array_set_tagged({ i64, i8* }* %391, i64 %393, i64 %395, i64 2)
  %396 = load i64, i64* %354
  %397 = add i64 %396, 1
  store i64 %397, i64* %354
  br label %while_cond106
while_end108:
  %398 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  ret { i64, i8* }* %398
}

define %nyx_string* @read_text(
%nyx_string* %path.param) {
  %path.ptr = alloca %nyx_string*
  store %nyx_string* %path.param, %nyx_string** %path.ptr
  %399 = load %nyx_string*, %nyx_string** %path.ptr
  %400 = call i8* @nyx_string_to_cstr(%nyx_string* %399)
  %401 = call %nyx_string* @nyx_read_file(i8* %400)
  ret %nyx_string* %401
}

define i64 @write_text(
%nyx_string* %path.param, %nyx_string* %content.param) {
  %path.ptr = alloca %nyx_string*
  store %nyx_string* %path.param, %nyx_string** %path.ptr
  %content.ptr = alloca %nyx_string*
  store %nyx_string* %content.param, %nyx_string** %content.ptr
  %402 = load %nyx_string*, %nyx_string** %path.ptr
  %403 = load %nyx_string*, %nyx_string** %content.ptr
  %404 = call i8* @nyx_string_to_cstr(%nyx_string* %402)
  %405 = call i8* @nyx_string_to_cstr(%nyx_string* %403)
  %406 = call i1 @nyx_write_file(i8* %404, i8* %405)
  ret i64 0
}

define i8* @map_new(
) {
  %407 = call i8* @nyx_map_new(i32 0)
  ret i8* %407
}

define i64 @map_put(
i8* %m.param, %nyx_string* %k.param, i64 %v.param) {
  %m.ptr = alloca i8*
  store i8* %m.param, i8** %m.ptr
  %k.ptr = alloca %nyx_string*
  store %nyx_string* %k.param, %nyx_string** %k.ptr
  %v.ptr = alloca i64
  store i64 %v.param, i64* %v.ptr
  %408 = load i8*, i8** %m.ptr
  %409 = load %nyx_string*, %nyx_string** %k.ptr
  %410 = load i64, i64* %v.ptr
  %411 = call i8* @nyx_string_to_cstr(%nyx_string* %409)
  call void @nyx_map_insert_int(i8* %408, i8* %411, i64 %410)
  ret i64 0
}

define i64 @map_get_int(
i8* %m.param, %nyx_string* %k.param) {
  %m.ptr = alloca i8*
  store i8* %m.param, i8** %m.ptr
  %k.ptr = alloca %nyx_string*
  store %nyx_string* %k.param, %nyx_string** %k.ptr
  %412 = load i8*, i8** %m.ptr
  %413 = load %nyx_string*, %nyx_string** %k.ptr
  %414 = call i8* @nyx_string_to_cstr(%nyx_string* %413)
  %415 = call i64 @nyx_map_get_int(i8* %412, i8* %414)
  ret i64 %415
}

define i1 @map_has(
i8* %m.param, %nyx_string* %k.param) {
  %m.ptr = alloca i8*
  store i8* %m.param, i8** %m.ptr
  %k.ptr = alloca %nyx_string*
  store %nyx_string* %k.param, %nyx_string** %k.ptr
  %416 = load i8*, i8** %m.ptr
  %417 = load %nyx_string*, %nyx_string** %k.ptr
  %418 = call i8* @nyx_string_to_cstr(%nyx_string* %417)
  %419 = call i1 @nyx_map_contains_str(i8* %416, i8* %418)
  ret i1 %419
}

define internal i64 @map_size(
i8* %m.param) {
  %m.ptr = alloca i8*
  store i8* %m.param, i8** %m.ptr
  %420 = load i8*, i8** %m.ptr
  %421 = call i64 @nyx_map_length(i8* %420)
  ret i64 %421
}

define internal %nyx_string* @parse_toml_value(
%nyx_string* %line.param) {
  %line.ptr = alloca %nyx_string*
  store %nyx_string* %line.param, %nyx_string** %line.ptr
  %422 = load %nyx_string*, %nyx_string** %line.ptr
  %423 = call %nyx_string* @nyx_string_trim(%nyx_string* %422)
  %424 = alloca %nyx_string*
  store %nyx_string* %423, %nyx_string** %424
  %425 = sub i64 0, 1
  %426 = alloca i64
  store i64 %425, i64* %426
  %427 = alloca i64
  store i64 0, i64* %427
  %428 = call i8* @llvm.stacksave()
  br label %while_cond117
while_cond117:
  %429 = load i64, i64* %427
  %430 = load %nyx_string*, %nyx_string** %424
  %431 = call i64 @nyx_string_byte_length(%nyx_string* %430)
  %432 = icmp slt i64 %429, %431
  br i1 %432, label %while_body118, label %while_end119
while_body118:
  call void @llvm.stackrestore(i8* %428)
  %433 = load %nyx_string*, %nyx_string** %424
  %434 = load i64, i64* %427
  %435 = call i8 @nyx_string_char_at(%nyx_string* %433, i64 %434)
  %436 = zext i8 %435 to i64
  %437 = icmp eq i64 %436, 61
  br i1 %437, label %then120, label %else121
then120:
  %438 = load i64, i64* %427
  store i64 %438, i64* %426
  %439 = load %nyx_string*, %nyx_string** %424
  %440 = call i64 @nyx_string_byte_length(%nyx_string* %439)
  store i64 %440, i64* %427
  br label %merge122
else121:
  %441 = load i64, i64* %427
  %442 = add i64 %441, 1
  store i64 %442, i64* %427
  br label %merge122
merge122:
  br label %while_cond117
while_end119:
  %443 = load i64, i64* %426
  %444 = icmp slt i64 %443, 0
  br i1 %444, label %then123, label %else124
then123:
  %445 = getelementptr [1 x i8], [1 x i8]* @.str0, i32 0, i32 0
  %446 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str0.c, i8* %445)
  ret %nyx_string* %446
else124:
  br label %merge125
merge125:
  %447 = load %nyx_string*, %nyx_string** %424
  %448 = load i64, i64* %426
  %449 = add i64 %448, 1
  %450 = load %nyx_string*, %nyx_string** %424
  %451 = call i64 @nyx_string_byte_length(%nyx_string* %450)
  %452 = call %nyx_string* @nyx_string_substring(%nyx_string* %447, i64 %449, i64 %451)
  %453 = call %nyx_string* @nyx_string_trim(%nyx_string* %452)
  %454 = alloca %nyx_string*
  store %nyx_string* %453, %nyx_string** %454
  %455 = alloca i1
  store i1 false, i1* %455
  %456 = load %nyx_string*, %nyx_string** %454
  %457 = getelementptr [2 x i8], [2 x i8]* @.str1, i32 0, i32 0
  %458 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1.c, i8* %457)
  %459 = call i1 @nyx_string_starts_with(%nyx_string* %456, %nyx_string* %458)
  br i1 %459, label %sc_and_rhs126, label %sc_and_end127
sc_and_rhs126:
  %460 = load %nyx_string*, %nyx_string** %454
  %461 = getelementptr [2 x i8], [2 x i8]* @.str2, i32 0, i32 0
  %462 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str2.c, i8* %461)
  %463 = call i1 @nyx_string_ends_with(%nyx_string* %460, %nyx_string* %462)
  store i1 %463, i1* %455
  br label %sc_and_end127
sc_and_end127:
  %464 = load i1, i1* %455
  br i1 %464, label %then128, label %else129
then128:
  %465 = load %nyx_string*, %nyx_string** %454
  %466 = load %nyx_string*, %nyx_string** %454
  %467 = call i64 @nyx_string_byte_length(%nyx_string* %466)
  %468 = sub i64 %467, 1
  %469 = call %nyx_string* @nyx_string_substring(%nyx_string* %465, i64 1, i64 %468)
  ret %nyx_string* %469
else129:
  br label %merge130
merge130:
  %470 = load %nyx_string*, %nyx_string** %454
  ret %nyx_string* %470
}

define internal %nyx_string* @parse_toml_key(
%nyx_string* %line.param) {
  %line.ptr = alloca %nyx_string*
  store %nyx_string* %line.param, %nyx_string** %line.ptr
  %471 = load %nyx_string*, %nyx_string** %line.ptr
  %472 = call %nyx_string* @nyx_string_trim(%nyx_string* %471)
  %473 = alloca %nyx_string*
  store %nyx_string* %472, %nyx_string** %473
  %474 = sub i64 0, 1
  %475 = alloca i64
  store i64 %474, i64* %475
  %476 = alloca i64
  store i64 0, i64* %476
  %477 = call i8* @llvm.stacksave()
  br label %while_cond131
while_cond131:
  %478 = load i64, i64* %476
  %479 = load %nyx_string*, %nyx_string** %473
  %480 = call i64 @nyx_string_byte_length(%nyx_string* %479)
  %481 = icmp slt i64 %478, %480
  br i1 %481, label %while_body132, label %while_end133
while_body132:
  call void @llvm.stackrestore(i8* %477)
  %482 = load %nyx_string*, %nyx_string** %473
  %483 = load i64, i64* %476
  %484 = call i8 @nyx_string_char_at(%nyx_string* %482, i64 %483)
  %485 = zext i8 %484 to i64
  %486 = icmp eq i64 %485, 61
  br i1 %486, label %then134, label %else135
then134:
  %487 = load i64, i64* %476
  store i64 %487, i64* %475
  %488 = load %nyx_string*, %nyx_string** %473
  %489 = call i64 @nyx_string_byte_length(%nyx_string* %488)
  store i64 %489, i64* %476
  br label %merge136
else135:
  %490 = load i64, i64* %476
  %491 = add i64 %490, 1
  store i64 %491, i64* %476
  br label %merge136
merge136:
  br label %while_cond131
while_end133:
  %492 = load i64, i64* %475
  %493 = icmp slt i64 %492, 0
  br i1 %493, label %then137, label %else138
then137:
  %494 = getelementptr [1 x i8], [1 x i8]* @.str3, i32 0, i32 0
  %495 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str3.c, i8* %494)
  ret %nyx_string* %495
else138:
  br label %merge139
merge139:
  %496 = load %nyx_string*, %nyx_string** %473
  %497 = load i64, i64* %475
  %498 = call %nyx_string* @nyx_string_substring(%nyx_string* %496, i64 0, i64 %497)
  %499 = call %nyx_string* @nyx_string_trim(%nyx_string* %498)
  ret %nyx_string* %499
}

define internal %TestConfig @load_test_config(
) {
  %500 = getelementptr %TestConfig, %TestConfig* null, i32 1
  %501 = ptrtoint %TestConfig* %500 to i64
  %502 = call i8* @GC_malloc(i64 %501)
  %503 = bitcast i8* %502 to %TestConfig*
  %504 = getelementptr [6 x i8], [6 x i8]* @.str4, i32 0, i32 0
  %505 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str4.c, i8* %504)
  %506 = getelementptr %TestConfig, %TestConfig* %503, i32 0, i32 0
  store %nyx_string* %505, %nyx_string** %506
  %507 = getelementptr %TestConfig, %TestConfig* %503, i32 0, i32 1
  store i64 30, i64* %507
  %508 = getelementptr [1 x i8], [1 x i8]* @.str5, i32 0, i32 0
  %509 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str5.c, i8* %508)
  %510 = getelementptr %TestConfig, %TestConfig* %503, i32 0, i32 2
  store %nyx_string* %509, %nyx_string** %510
  %511 = getelementptr %TestConfig, %TestConfig* %503, i32 0, i32 3
  store i1 0, i1* %511
  %512 = getelementptr [1 x i8], [1 x i8]* @.str6, i32 0, i32 0
  %513 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str6.c, i8* %512)
  %514 = getelementptr %TestConfig, %TestConfig* %503, i32 0, i32 4
  store %nyx_string* %513, %nyx_string** %514
  %515 = load %TestConfig, %TestConfig* %503
  %516 = alloca %TestConfig
  store %TestConfig %515, %TestConfig* %516
  %517 = getelementptr [9 x i8], [9 x i8]* @.str7, i32 0, i32 0
  %518 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str7.c, i8* %517)
  %519 = call i8* @nyx_string_to_cstr(%nyx_string* %518)
  %520 = call i1 @nyx_file_exists(i8* %519)
  %521 = xor i1 %520, true
  br i1 %521, label %then140, label %else141
then140:
  %522 = load %TestConfig, %TestConfig* %516
  ret %TestConfig %522
else141:
  br label %merge142
merge142:
  %523 = getelementptr [9 x i8], [9 x i8]* @.str8, i32 0, i32 0
  %524 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str8.c, i8* %523)
  %525 = call i8* @nyx_string_to_cstr(%nyx_string* %524)
  %526 = call %nyx_string* @nyx_read_file(i8* %525)
  %527 = alloca %nyx_string*
  store %nyx_string* %526, %nyx_string** %527
  %528 = load %nyx_string*, %nyx_string** %527
  %529 = getelementptr [2 x i8], [2 x i8]* @.str9, i32 0, i32 0
  %530 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str9.c, i8* %529)
  %531 = call { i64, i8* }* @nyx_string_split(%nyx_string* %528, %nyx_string* %530)
  %532 = alloca { i64, i8* }*
  store { i64, i8* }* %531, { i64, i8* }** %532
  %533 = alloca i1
  store i1 0, i1* %533
  %534 = alloca i64
  store i64 0, i64* %534
  %535 = getelementptr [7 x i8], [7 x i8]* @.str10, i32 0, i32 0
  %536 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str10.c, i8* %535)
  %537 = alloca %nyx_string*
  store %nyx_string* %536, %nyx_string** %537
  %538 = getelementptr [2 x i8], [2 x i8]* @.str11, i32 0, i32 0
  %539 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str11.c, i8* %538)
  %540 = alloca %nyx_string*
  store %nyx_string* %539, %nyx_string** %540
  %541 = getelementptr [4 x i8], [4 x i8]* @.str12, i32 0, i32 0
  %542 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str12.c, i8* %541)
  %543 = alloca %nyx_string*
  store %nyx_string* %542, %nyx_string** %543
  %544 = getelementptr [8 x i8], [8 x i8]* @.str13, i32 0, i32 0
  %545 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str13.c, i8* %544)
  %546 = alloca %nyx_string*
  store %nyx_string* %545, %nyx_string** %546
  %547 = call i8* @llvm.stacksave()
  br label %while_cond143
while_cond143:
  %548 = load i64, i64* %534
  %549 = load { i64, i8* }*, { i64, i8* }** %532
  %550 = call i64 @nyx_array_length({ i64, i8* }* %549)
  %551 = icmp slt i64 %548, %550
  br i1 %551, label %while_body144, label %while_end145
while_body144:
  call void @llvm.stackrestore(i8* %547)
  %552 = load { i64, i8* }*, { i64, i8* }** %532
  %553 = load i64, i64* %534
  %554 = call i64 @nyx_array_get_checked({ i64, i8* }* %552, i64 %553, i64 2)
  %555 = inttoptr i64 %554 to %nyx_string*
  %556 = alloca %nyx_string*
  store %nyx_string* %555, %nyx_string** %556
  %557 = load %nyx_string*, %nyx_string** %556
  %558 = call %nyx_string* @nyx_string_trim(%nyx_string* %557)
  %559 = alloca %nyx_string*
  store %nyx_string* %558, %nyx_string** %559
  %560 = load %nyx_string*, %nyx_string** %559
  %561 = load %nyx_string*, %nyx_string** %537
  %562 = call i1 @nyx_string_equals(%nyx_string* %560, %nyx_string* %561)
  br i1 %562, label %then146, label %else147
then146:
  store i1 1, i1* %533
  br label %merge148
else147:
  %563 = load %nyx_string*, %nyx_string** %559
  %564 = load %nyx_string*, %nyx_string** %540
  %565 = call i1 @nyx_string_starts_with(%nyx_string* %563, %nyx_string* %564)
  br i1 %565, label %then149, label %else150
then149:
  store i1 0, i1* %533
  br label %merge151
else150:
  %566 = load i1, i1* %533
  br i1 %566, label %then152, label %else153
then152:
  %567 = load %nyx_string*, %nyx_string** %559
  %568 = call %nyx_string* @parse_toml_key(%nyx_string* %567)
  %569 = alloca %nyx_string*
  store %nyx_string* %568, %nyx_string** %569
  %570 = load %nyx_string*, %nyx_string** %559
  %571 = call %nyx_string* @parse_toml_value(%nyx_string* %570)
  %572 = alloca %nyx_string*
  store %nyx_string* %571, %nyx_string** %572
  %573 = load %nyx_string*, %nyx_string** %569
  %574 = load %nyx_string*, %nyx_string** %543
  %575 = call i1 @nyx_string_equals(%nyx_string* %573, %nyx_string* %574)
  br i1 %575, label %then155, label %else156
then155:
  %576 = load %nyx_string*, %nyx_string** %572
  %577 = getelementptr %TestConfig, %TestConfig* %516, i32 0, i32 0
  store %nyx_string* %576, %nyx_string** %577
  br label %merge157
else156:
  br label %merge157
merge157:
  %578 = load %nyx_string*, %nyx_string** %569
  %579 = load %nyx_string*, %nyx_string** %546
  %580 = call i1 @nyx_string_equals(%nyx_string* %578, %nyx_string* %579)
  br i1 %580, label %then158, label %else159
then158:
  %581 = load %nyx_string*, %nyx_string** %572
  %582 = call i64 @nyx_string_to_int(%nyx_string* %581)
  %583 = getelementptr %TestConfig, %TestConfig* %516, i32 0, i32 1
  store i64 %582, i64* %583
  br label %merge160
else159:
  br label %merge160
merge160:
  br label %merge154
else153:
  br label %merge154
merge154:
  br label %merge151
merge151:
  br label %merge148
merge148:
  %584 = load i64, i64* %534
  %585 = add i64 %584, 1
  store i64 %585, i64* %534
  br label %while_cond143
while_end145:
  %586 = load %TestConfig, %TestConfig* %516
  ret %TestConfig %586
}

define internal { i64, i8* }* @discover_tests(
%TestConfig %config.param) {
  %config.ptr = alloca %TestConfig
  store %TestConfig %config.param, %TestConfig* %config.ptr
  %587 = call { i64, i8* }* @nyx_array_new_ptr()
  %588 = alloca { i64, i8* }*
  store { i64, i8* }* %587, { i64, i8* }** %588
  %589 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 0
  %590 = load %nyx_string*, %nyx_string** %589
  %591 = call i8* @nyx_string_to_cstr(%nyx_string* %590)
  %592 = call i1 @nyx_file_exists(i8* %591)
  br i1 %592, label %then161, label %else162
then161:
  %593 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 0
  %594 = load %nyx_string*, %nyx_string** %593
  %595 = call i8* @nyx_string_to_cstr(%nyx_string* %594)
  %596 = call { i64, i8* }* @nyx_readdir(i8* %595)
  %597 = alloca { i64, i8* }*
  store { i64, i8* }* %596, { i64, i8* }** %597
  %598 = alloca i64
  store i64 0, i64* %598
  %599 = getelementptr [4 x i8], [4 x i8]* @.str14, i32 0, i32 0
  %600 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str14.c, i8* %599)
  %601 = alloca %nyx_string*
  store %nyx_string* %600, %nyx_string** %601
  %602 = getelementptr [2 x i8], [2 x i8]* @.str15, i32 0, i32 0
  %603 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str15.c, i8* %602)
  %604 = alloca %nyx_string*
  store %nyx_string* %603, %nyx_string** %604
  %605 = getelementptr [1 x i8], [1 x i8]* @.str16, i32 0, i32 0
  %606 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str16.c, i8* %605)
  %607 = alloca %nyx_string*
  store %nyx_string* %606, %nyx_string** %607
  %608 = call i8* @llvm.stacksave()
  br label %while_cond164
while_cond164:
  %609 = load i64, i64* %598
  %610 = load { i64, i8* }*, { i64, i8* }** %597
  %611 = call i64 @nyx_array_length({ i64, i8* }* %610)
  %612 = icmp slt i64 %609, %611
  br i1 %612, label %while_body165, label %while_end166
while_body165:
  call void @llvm.stackrestore(i8* %608)
  %613 = load { i64, i8* }*, { i64, i8* }** %597
  %614 = load i64, i64* %598
  %615 = call i64 @nyx_array_get_checked({ i64, i8* }* %613, i64 %614, i64 2)
  %616 = inttoptr i64 %615 to %nyx_string*
  %617 = alloca %nyx_string*
  store %nyx_string* %616, %nyx_string** %617
  %618 = load %nyx_string*, %nyx_string** %617
  %619 = load %nyx_string*, %nyx_string** %601
  %620 = call i1 @nyx_string_ends_with(%nyx_string* %618, %nyx_string* %619)
  br i1 %620, label %then167, label %else168
then167:
  %621 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 0
  %622 = load %nyx_string*, %nyx_string** %621
  %623 = load %nyx_string*, %nyx_string** %604
  %624 = call %nyx_string* @nyx_string_concat(%nyx_string* %622, %nyx_string* %623)
  %625 = load %nyx_string*, %nyx_string** %617
  %626 = call %nyx_string* @nyx_string_concat(%nyx_string* %624, %nyx_string* %625)
  %627 = alloca %nyx_string*
  store %nyx_string* %626, %nyx_string** %627
  %628 = alloca i1
  store i1 true, i1* %628
  %629 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 2
  %630 = load %nyx_string*, %nyx_string** %629
  %631 = load %nyx_string*, %nyx_string** %607
  %632 = call i1 @nyx_string_equals(%nyx_string* %630, %nyx_string* %631)
  br i1 %632, label %sc_or_end171, label %sc_or_rhs170
sc_or_rhs170:
  %633 = load %nyx_string*, %nyx_string** %617
  %634 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 2
  %635 = load %nyx_string*, %nyx_string** %634
  %636 = call i1 @nyx_string_contains(%nyx_string* %633, %nyx_string* %635)
  store i1 %636, i1* %628
  br label %sc_or_end171
sc_or_end171:
  %637 = load i1, i1* %628
  br i1 %637, label %then172, label %else173
then172:
  %638 = load { i64, i8* }*, { i64, i8* }** %588
  %639 = load %nyx_string*, %nyx_string** %627
  %640 = ptrtoint %nyx_string* %639 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %638, i64 %640, i64 2)
  br label %merge174
else173:
  br label %merge174
merge174:
  br label %merge169
else168:
  br label %merge169
merge169:
  %641 = load i64, i64* %598
  %642 = add i64 %641, 1
  store i64 %642, i64* %598
  br label %while_cond164
while_end166:
  br label %merge163
else162:
  br label %merge163
merge163:
  %643 = getelementptr [4 x i8], [4 x i8]* @.str17, i32 0, i32 0
  %644 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str17.c, i8* %643)
  %645 = call i8* @nyx_string_to_cstr(%nyx_string* %644)
  %646 = call i1 @nyx_file_exists(i8* %645)
  br i1 %646, label %then175, label %else176
then175:
  %647 = getelementptr [4 x i8], [4 x i8]* @.str18, i32 0, i32 0
  %648 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str18.c, i8* %647)
  %649 = call i8* @nyx_string_to_cstr(%nyx_string* %648)
  %650 = call { i64, i8* }* @nyx_readdir(i8* %649)
  %651 = alloca { i64, i8* }*
  store { i64, i8* }* %650, { i64, i8* }** %651
  %652 = alloca i64
  store i64 0, i64* %652
  %653 = getelementptr [9 x i8], [9 x i8]* @.str19, i32 0, i32 0
  %654 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str19.c, i8* %653)
  %655 = alloca %nyx_string*
  store %nyx_string* %654, %nyx_string** %655
  %656 = getelementptr [5 x i8], [5 x i8]* @.str20, i32 0, i32 0
  %657 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str20.c, i8* %656)
  %658 = alloca %nyx_string*
  store %nyx_string* %657, %nyx_string** %658
  %659 = getelementptr [1 x i8], [1 x i8]* @.str21, i32 0, i32 0
  %660 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str21.c, i8* %659)
  %661 = alloca %nyx_string*
  store %nyx_string* %660, %nyx_string** %661
  %662 = call i8* @llvm.stacksave()
  br label %while_cond178
while_cond178:
  %663 = load i64, i64* %652
  %664 = load { i64, i8* }*, { i64, i8* }** %651
  %665 = call i64 @nyx_array_length({ i64, i8* }* %664)
  %666 = icmp slt i64 %663, %665
  br i1 %666, label %while_body179, label %while_end180
while_body179:
  call void @llvm.stackrestore(i8* %662)
  %667 = load { i64, i8* }*, { i64, i8* }** %651
  %668 = load i64, i64* %652
  %669 = call i64 @nyx_array_get_checked({ i64, i8* }* %667, i64 %668, i64 2)
  %670 = inttoptr i64 %669 to %nyx_string*
  %671 = alloca %nyx_string*
  store %nyx_string* %670, %nyx_string** %671
  %672 = load %nyx_string*, %nyx_string** %671
  %673 = load %nyx_string*, %nyx_string** %655
  %674 = call i1 @nyx_string_ends_with(%nyx_string* %672, %nyx_string* %673)
  br i1 %674, label %then181, label %else182
then181:
  %675 = load %nyx_string*, %nyx_string** %658
  %676 = load %nyx_string*, %nyx_string** %671
  %677 = call %nyx_string* @nyx_string_concat(%nyx_string* %675, %nyx_string* %676)
  %678 = alloca %nyx_string*
  store %nyx_string* %677, %nyx_string** %678
  %679 = alloca i1
  store i1 true, i1* %679
  %680 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 2
  %681 = load %nyx_string*, %nyx_string** %680
  %682 = load %nyx_string*, %nyx_string** %661
  %683 = call i1 @nyx_string_equals(%nyx_string* %681, %nyx_string* %682)
  br i1 %683, label %sc_or_end185, label %sc_or_rhs184
sc_or_rhs184:
  %684 = load %nyx_string*, %nyx_string** %671
  %685 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 2
  %686 = load %nyx_string*, %nyx_string** %685
  %687 = call i1 @nyx_string_contains(%nyx_string* %684, %nyx_string* %686)
  store i1 %687, i1* %679
  br label %sc_or_end185
sc_or_end185:
  %688 = load i1, i1* %679
  br i1 %688, label %then186, label %else187
then186:
  %689 = load { i64, i8* }*, { i64, i8* }** %588
  %690 = load %nyx_string*, %nyx_string** %678
  %691 = ptrtoint %nyx_string* %690 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %689, i64 %691, i64 2)
  br label %merge188
else187:
  br label %merge188
merge188:
  br label %merge183
else182:
  br label %merge183
merge183:
  %692 = load i64, i64* %652
  %693 = add i64 %692, 1
  store i64 %693, i64* %652
  br label %while_cond178
while_end180:
  br label %merge177
else176:
  br label %merge177
merge177:
  %694 = load { i64, i8* }*, { i64, i8* }** %588
  ret { i64, i8* }* %694
}

define internal i1 @file_has_test_blocks(
%nyx_string* %path.param) {
  %path.ptr = alloca %nyx_string*
  store %nyx_string* %path.param, %nyx_string** %path.ptr
  %695 = load %nyx_string*, %nyx_string** %path.ptr
  %696 = call i8* @nyx_string_to_cstr(%nyx_string* %695)
  %697 = call %nyx_string* @nyx_read_file(i8* %696)
  %698 = alloca %nyx_string*
  store %nyx_string* %697, %nyx_string** %698
  %699 = load %nyx_string*, %nyx_string** %698
  %700 = getelementptr [7 x i8], [7 x i8]* @.str22, i32 0, i32 0
  %701 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str22.c, i8* %700)
  %702 = call i1 @nyx_string_contains(%nyx_string* %699, %nyx_string* %701)
  ret i1 %702
}

define internal %TestResult @compile_and_run(
%nyx_string* %file.param, %TestConfig %config.param) {
  %file.ptr = alloca %nyx_string*
  store %nyx_string* %file.param, %nyx_string** %file.ptr
  %config.ptr = alloca %TestConfig
  store %TestConfig %config.param, %TestConfig* %config.ptr
  %703 = getelementptr [9 x i8], [9 x i8]* @.str23, i32 0, i32 0
  %704 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str23.c, i8* %703)
  %705 = call i8* @nyx_string_to_cstr(%nyx_string* %704)
  %706 = call %nyx_string* @nyx_getenv(i8* %705)
  %707 = alloca %nyx_string*
  store %nyx_string* %706, %nyx_string** %707
  %708 = load %nyx_string*, %nyx_string** %707
  %709 = getelementptr [1 x i8], [1 x i8]* @.str24, i32 0, i32 0
  %710 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str24.c, i8* %709)
  %711 = call i1 @nyx_string_equals(%nyx_string* %708, %nyx_string* %710)
  br i1 %711, label %then189, label %else190
then189:
  %712 = getelementptr %TestResult, %TestResult* null, i32 1
  %713 = ptrtoint %TestResult* %712 to i64
  %714 = call i8* @GC_malloc(i64 %713)
  %715 = bitcast i8* %714 to %TestResult*
  %716 = load %nyx_string*, %nyx_string** %file.ptr
  %717 = getelementptr %TestResult, %TestResult* %715, i32 0, i32 0
  store %nyx_string* %716, %nyx_string** %717
  %718 = getelementptr %TestResult, %TestResult* %715, i32 0, i32 1
  store i64 0, i64* %718
  %719 = getelementptr %TestResult, %TestResult* %715, i32 0, i32 2
  store i64 0, i64* %719
  %720 = getelementptr [24 x i8], [24 x i8]* @.str25, i32 0, i32 0
  %721 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str25.c, i8* %720)
  %722 = getelementptr %TestResult, %TestResult* %715, i32 0, i32 3
  store %nyx_string* %721, %nyx_string** %722
  %723 = getelementptr %TestResult, %TestResult* %715, i32 0, i32 4
  store i1 0, i1* %723
  %724 = load %TestResult, %TestResult* %715
  ret %TestResult %724
else190:
  br label %merge191
merge191:
  %725 = getelementptr [4 x i8], [4 x i8]* @.str26, i32 0, i32 0
  %726 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str26.c, i8* %725)
  %727 = call i8* @nyx_string_to_cstr(%nyx_string* %726)
  %728 = call %nyx_string* @nyx_getenv(i8* %727)
  %729 = alloca %nyx_string*
  store %nyx_string* %728, %nyx_string** %729
  %730 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 1
  %731 = load i64, i64* %730
  %732 = call %nyx_string* @nyx_string_from_int(i64 %731)
  %733 = alloca %nyx_string*
  store %nyx_string* %732, %nyx_string** %733
  %734 = getelementptr [19 x i8], [19 x i8]* @.str27, i32 0, i32 0
  %735 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str27.c, i8* %734)
  %736 = call i64 @nyx_time_ms()
  %737 = call %nyx_string* @nyx_string_from_int(i64 %736)
  %738 = call %nyx_string* @nyx_string_concat(%nyx_string* %735, %nyx_string* %737)
  %739 = getelementptr [5 x i8], [5 x i8]* @.str28, i32 0, i32 0
  %740 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str28.c, i8* %739)
  %741 = call %nyx_string* @nyx_string_concat(%nyx_string* %738, %nyx_string* %740)
  %742 = alloca %nyx_string*
  store %nyx_string* %741, %nyx_string** %742
  %743 = getelementptr [19 x i8], [19 x i8]* @.str29, i32 0, i32 0
  %744 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str29.c, i8* %743)
  %745 = call i64 @nyx_time_ms()
  %746 = call %nyx_string* @nyx_string_from_int(i64 %745)
  %747 = call %nyx_string* @nyx_string_concat(%nyx_string* %744, %nyx_string* %746)
  %748 = alloca %nyx_string*
  store %nyx_string* %747, %nyx_string** %748
  %749 = getelementptr [20 x i8], [20 x i8]* @.str30, i32 0, i32 0
  %750 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str30.c, i8* %749)
  %751 = getelementptr [5 x i8], [5 x i8]* @.str31, i32 0, i32 0
  %752 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str31.c, i8* %751)
  %753 = call %nyx_string* @nyx_string_concat(%nyx_string* %750, %nyx_string* %752)
  %754 = load %nyx_string*, %nyx_string** %707
  %755 = call %nyx_string* @nyx_string_concat(%nyx_string* %753, %nyx_string* %754)
  %756 = getelementptr [3 x i8], [3 x i8]* @.str32, i32 0, i32 0
  %757 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str32.c, i8* %756)
  %758 = call %nyx_string* @nyx_string_concat(%nyx_string* %755, %nyx_string* %757)
  %759 = getelementptr [5 x i8], [5 x i8]* @.str33, i32 0, i32 0
  %760 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str33.c, i8* %759)
  %761 = call %nyx_string* @nyx_string_concat(%nyx_string* %758, %nyx_string* %760)
  %762 = load %nyx_string*, %nyx_string** %729
  %763 = call %nyx_string* @nyx_string_concat(%nyx_string* %761, %nyx_string* %762)
  %764 = getelementptr [2 x i8], [2 x i8]* @.str34, i32 0, i32 0
  %765 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str34.c, i8* %764)
  %766 = call %nyx_string* @nyx_string_concat(%nyx_string* %763, %nyx_string* %765)
  %767 = load %nyx_string*, %nyx_string** %file.ptr
  %768 = call %nyx_string* @nyx_string_concat(%nyx_string* %766, %nyx_string* %767)
  %769 = getelementptr [13 x i8], [13 x i8]* @.str35, i32 0, i32 0
  %770 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str35.c, i8* %769)
  %771 = call %nyx_string* @nyx_string_concat(%nyx_string* %768, %nyx_string* %770)
  %772 = getelementptr [38 x i8], [38 x i8]* @.str36, i32 0, i32 0
  %773 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str36.c, i8* %772)
  %774 = call %nyx_string* @nyx_string_concat(%nyx_string* %771, %nyx_string* %773)
  %775 = load %nyx_string*, %nyx_string** %729
  %776 = call %nyx_string* @nyx_string_concat(%nyx_string* %774, %nyx_string* %775)
  %777 = getelementptr [36 x i8], [36 x i8]* @.str37, i32 0, i32 0
  %778 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str37.c, i8* %777)
  %779 = call %nyx_string* @nyx_string_concat(%nyx_string* %776, %nyx_string* %778)
  %780 = getelementptr [21 x i8], [21 x i8]* @.str38, i32 0, i32 0
  %781 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str38.c, i8* %780)
  %782 = call %nyx_string* @nyx_string_concat(%nyx_string* %779, %nyx_string* %781)
  %783 = getelementptr [62 x i8], [62 x i8]* @.str39, i32 0, i32 0
  %784 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str39.c, i8* %783)
  %785 = call %nyx_string* @nyx_string_concat(%nyx_string* %782, %nyx_string* %784)
  %786 = getelementptr [54 x i8], [54 x i8]* @.str40, i32 0, i32 0
  %787 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str40.c, i8* %786)
  %788 = call %nyx_string* @nyx_string_concat(%nyx_string* %785, %nyx_string* %787)
  %789 = getelementptr [48 x i8], [48 x i8]* @.str41, i32 0, i32 0
  %790 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str41.c, i8* %789)
  %791 = call %nyx_string* @nyx_string_concat(%nyx_string* %788, %nyx_string* %790)
  %792 = getelementptr [47 x i8], [47 x i8]* @.str42, i32 0, i32 0
  %793 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str42.c, i8* %792)
  %794 = call %nyx_string* @nyx_string_concat(%nyx_string* %791, %nyx_string* %793)
  %795 = getelementptr [67 x i8], [67 x i8]* @.str43, i32 0, i32 0
  %796 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str43.c, i8* %795)
  %797 = call %nyx_string* @nyx_string_concat(%nyx_string* %794, %nyx_string* %796)
  %798 = getelementptr [51 x i8], [51 x i8]* @.str44, i32 0, i32 0
  %799 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str44.c, i8* %798)
  %800 = call %nyx_string* @nyx_string_concat(%nyx_string* %797, %nyx_string* %799)
  %801 = getelementptr [91 x i8], [91 x i8]* @.str45, i32 0, i32 0
  %802 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str45.c, i8* %801)
  %803 = call %nyx_string* @nyx_string_concat(%nyx_string* %800, %nyx_string* %802)
  %804 = getelementptr [44 x i8], [44 x i8]* @.str46, i32 0, i32 0
  %805 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str46.c, i8* %804)
  %806 = call %nyx_string* @nyx_string_concat(%nyx_string* %803, %nyx_string* %805)
  %807 = getelementptr [4 x i8], [4 x i8]* @.str47, i32 0, i32 0
  %808 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str47.c, i8* %807)
  %809 = call %nyx_string* @nyx_string_concat(%nyx_string* %806, %nyx_string* %808)
  %810 = load %nyx_string*, %nyx_string** %748
  %811 = call %nyx_string* @nyx_string_concat(%nyx_string* %809, %nyx_string* %810)
  %812 = getelementptr [14 x i8], [14 x i8]* @.str48, i32 0, i32 0
  %813 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str48.c, i8* %812)
  %814 = call %nyx_string* @nyx_string_concat(%nyx_string* %811, %nyx_string* %813)
  %815 = getelementptr [9 x i8], [9 x i8]* @.str49, i32 0, i32 0
  %816 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str49.c, i8* %815)
  %817 = call %nyx_string* @nyx_string_concat(%nyx_string* %814, %nyx_string* %816)
  %818 = load %nyx_string*, %nyx_string** %733
  %819 = call %nyx_string* @nyx_string_concat(%nyx_string* %817, %nyx_string* %818)
  %820 = getelementptr [2 x i8], [2 x i8]* @.str50, i32 0, i32 0
  %821 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str50.c, i8* %820)
  %822 = call %nyx_string* @nyx_string_concat(%nyx_string* %819, %nyx_string* %821)
  %823 = load %nyx_string*, %nyx_string** %748
  %824 = call %nyx_string* @nyx_string_concat(%nyx_string* %822, %nyx_string* %823)
  %825 = getelementptr [4 x i8], [4 x i8]* @.str51, i32 0, i32 0
  %826 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str51.c, i8* %825)
  %827 = call %nyx_string* @nyx_string_concat(%nyx_string* %824, %nyx_string* %826)
  %828 = load %nyx_string*, %nyx_string** %742
  %829 = call %nyx_string* @nyx_string_concat(%nyx_string* %827, %nyx_string* %828)
  %830 = getelementptr [7 x i8], [7 x i8]* @.str52, i32 0, i32 0
  %831 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str52.c, i8* %830)
  %832 = call %nyx_string* @nyx_string_concat(%nyx_string* %829, %nyx_string* %831)
  %833 = getelementptr [14 x i8], [14 x i8]* @.str53, i32 0, i32 0
  %834 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str53.c, i8* %833)
  %835 = call %nyx_string* @nyx_string_concat(%nyx_string* %832, %nyx_string* %834)
  %836 = getelementptr [7 x i8], [7 x i8]* @.str54, i32 0, i32 0
  %837 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str54.c, i8* %836)
  %838 = call %nyx_string* @nyx_string_concat(%nyx_string* %835, %nyx_string* %837)
  %839 = load %nyx_string*, %nyx_string** %748
  %840 = call %nyx_string* @nyx_string_concat(%nyx_string* %838, %nyx_string* %839)
  %841 = getelementptr [2 x i8], [2 x i8]* @.str55, i32 0, i32 0
  %842 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str55.c, i8* %841)
  %843 = call %nyx_string* @nyx_string_concat(%nyx_string* %840, %nyx_string* %842)
  %844 = getelementptr [27 x i8], [27 x i8]* @.str56, i32 0, i32 0
  %845 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str56.c, i8* %844)
  %846 = call %nyx_string* @nyx_string_concat(%nyx_string* %843, %nyx_string* %845)
  %847 = getelementptr [17 x i8], [17 x i8]* @.str57, i32 0, i32 0
  %848 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str57.c, i8* %847)
  %849 = call %nyx_string* @nyx_string_concat(%nyx_string* %846, %nyx_string* %848)
  %850 = alloca %nyx_string*
  store %nyx_string* %849, %nyx_string** %850
  %851 = getelementptr [22 x i8], [22 x i8]* @.str58, i32 0, i32 0
  %852 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str58.c, i8* %851)
  %853 = call i64 @nyx_time_ms()
  %854 = call %nyx_string* @nyx_string_from_int(i64 %853)
  %855 = call %nyx_string* @nyx_string_concat(%nyx_string* %852, %nyx_string* %854)
  %856 = getelementptr [4 x i8], [4 x i8]* @.str59, i32 0, i32 0
  %857 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str59.c, i8* %856)
  %858 = call %nyx_string* @nyx_string_concat(%nyx_string* %855, %nyx_string* %857)
  %859 = alloca %nyx_string*
  store %nyx_string* %858, %nyx_string** %859
  %860 = load %nyx_string*, %nyx_string** %859
  %861 = load %nyx_string*, %nyx_string** %850
  %862 = call i8* @nyx_string_to_cstr(%nyx_string* %860)
  %863 = call i8* @nyx_string_to_cstr(%nyx_string* %861)
  %864 = call i1 @nyx_write_file(i8* %862, i8* %863)
  %865 = getelementptr [6 x i8], [6 x i8]* @.str60, i32 0, i32 0
  %866 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str60.c, i8* %865)
  %867 = load %nyx_string*, %nyx_string** %859
  %868 = call %nyx_string* @nyx_string_concat(%nyx_string* %866, %nyx_string* %867)
  %869 = call i8* @nyx_string_to_cstr(%nyx_string* %868)
  %870 = call i64 @nyx_exec_code(i8* %869)
  %871 = alloca i64
  store i64 %870, i64* %871
  %872 = getelementptr [1 x i8], [1 x i8]* @.str61, i32 0, i32 0
  %873 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str61.c, i8* %872)
  %874 = alloca %nyx_string*
  store %nyx_string* %873, %nyx_string** %874
  %875 = load %nyx_string*, %nyx_string** %742
  %876 = call i8* @nyx_string_to_cstr(%nyx_string* %875)
  %877 = call i1 @nyx_file_exists(i8* %876)
  br i1 %877, label %then192, label %else193
then192:
  %878 = load %nyx_string*, %nyx_string** %742
  %879 = call i8* @nyx_string_to_cstr(%nyx_string* %878)
  %880 = call %nyx_string* @nyx_read_file(i8* %879)
  store %nyx_string* %880, %nyx_string** %874
  %881 = getelementptr [7 x i8], [7 x i8]* @.str62, i32 0, i32 0
  %882 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str62.c, i8* %881)
  %883 = load %nyx_string*, %nyx_string** %742
  %884 = call %nyx_string* @nyx_string_concat(%nyx_string* %882, %nyx_string* %883)
  %885 = call i8* @nyx_string_to_cstr(%nyx_string* %884)
  %886 = call %nyx_string* @nyx_exec(i8* %885)
  br label %merge194
else193:
  br label %merge194
merge194:
  %887 = getelementptr [7 x i8], [7 x i8]* @.str63, i32 0, i32 0
  %888 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str63.c, i8* %887)
  %889 = load %nyx_string*, %nyx_string** %859
  %890 = call %nyx_string* @nyx_string_concat(%nyx_string* %888, %nyx_string* %889)
  %891 = call i8* @nyx_string_to_cstr(%nyx_string* %890)
  %892 = call %nyx_string* @nyx_exec(i8* %891)
  %893 = alloca i64
  store i64 0, i64* %893
  %894 = alloca i64
  store i64 0, i64* %894
  %895 = load %nyx_string*, %nyx_string** %874
  %896 = getelementptr [2 x i8], [2 x i8]* @.str64, i32 0, i32 0
  %897 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str64.c, i8* %896)
  %898 = call { i64, i8* }* @nyx_string_split(%nyx_string* %895, %nyx_string* %897)
  %899 = alloca { i64, i8* }*
  store { i64, i8* }* %898, { i64, i8* }** %899
  %900 = alloca i64
  store i64 0, i64* %900
  %901 = getelementptr [6 x i8], [6 x i8]* @.str65, i32 0, i32 0
  %902 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str65.c, i8* %901)
  %903 = alloca %nyx_string*
  store %nyx_string* %902, %nyx_string** %903
  %904 = getelementptr [6 x i8], [6 x i8]* @.str66, i32 0, i32 0
  %905 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str66.c, i8* %904)
  %906 = alloca %nyx_string*
  store %nyx_string* %905, %nyx_string** %906
  %907 = call i8* @llvm.stacksave()
  br label %while_cond195
while_cond195:
  %908 = load i64, i64* %900
  %909 = load { i64, i8* }*, { i64, i8* }** %899
  %910 = call i64 @nyx_array_length({ i64, i8* }* %909)
  %911 = icmp slt i64 %908, %910
  br i1 %911, label %while_body196, label %while_end197
while_body196:
  call void @llvm.stackrestore(i8* %907)
  %912 = load { i64, i8* }*, { i64, i8* }** %899
  %913 = load i64, i64* %900
  %914 = call i64 @nyx_array_get_checked({ i64, i8* }* %912, i64 %913, i64 2)
  %915 = inttoptr i64 %914 to %nyx_string*
  %916 = alloca %nyx_string*
  store %nyx_string* %915, %nyx_string** %916
  %917 = load %nyx_string*, %nyx_string** %916
  %918 = load %nyx_string*, %nyx_string** %903
  %919 = call i1 @nyx_string_contains(%nyx_string* %917, %nyx_string* %918)
  br i1 %919, label %then198, label %else199
then198:
  %920 = load i64, i64* %893
  %921 = add i64 %920, 1
  store i64 %921, i64* %893
  br label %merge200
else199:
  %922 = load %nyx_string*, %nyx_string** %916
  %923 = load %nyx_string*, %nyx_string** %906
  %924 = call i1 @nyx_string_contains(%nyx_string* %922, %nyx_string* %923)
  br i1 %924, label %then201, label %else202
then201:
  %925 = load i64, i64* %894
  %926 = add i64 %925, 1
  store i64 %926, i64* %894
  br label %merge203
else202:
  br label %merge203
merge203:
  br label %merge200
merge200:
  %927 = load i64, i64* %900
  %928 = add i64 %927, 1
  store i64 %928, i64* %900
  br label %while_cond195
while_end197:
  %929 = getelementptr %TestResult, %TestResult* null, i32 1
  %930 = ptrtoint %TestResult* %929 to i64
  %931 = call i8* @GC_malloc(i64 %930)
  %932 = bitcast i8* %931 to %TestResult*
  %933 = load %nyx_string*, %nyx_string** %file.ptr
  %934 = getelementptr %TestResult, %TestResult* %932, i32 0, i32 0
  store %nyx_string* %933, %nyx_string** %934
  %935 = load i64, i64* %893
  %936 = getelementptr %TestResult, %TestResult* %932, i32 0, i32 1
  store i64 %935, i64* %936
  %937 = load i64, i64* %894
  %938 = getelementptr %TestResult, %TestResult* %932, i32 0, i32 2
  store i64 %937, i64* %938
  %939 = load %nyx_string*, %nyx_string** %874
  %940 = getelementptr %TestResult, %TestResult* %932, i32 0, i32 3
  store %nyx_string* %939, %nyx_string** %940
  %941 = alloca i1
  store i1 false, i1* %941
  %942 = load i64, i64* %871
  %943 = icmp eq i64 %942, 0
  br i1 %943, label %sc_and_rhs204, label %sc_and_end205
sc_and_rhs204:
  %944 = load i64, i64* %894
  %945 = icmp eq i64 %944, 0
  store i1 %945, i1* %941
  br label %sc_and_end205
sc_and_end205:
  %946 = load i1, i1* %941
  %947 = getelementptr %TestResult, %TestResult* %932, i32 0, i32 4
  store i1 %946, i1* %947
  %948 = load %TestResult, %TestResult* %932
  ret %TestResult %948
}

define internal i64 @print_result(
%TestResult %result.param, i1 %verbose.param) {
  %result.ptr = alloca %TestResult
  store %TestResult %result.param, %TestResult* %result.ptr
  %verbose.ptr = alloca i1
  store i1 %verbose.param, i1* %verbose.ptr
  %949 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 4
  %950 = load i1, i1* %949
  br i1 %950, label %then206, label %else207
then206:
  %951 = getelementptr [9 x i8], [9 x i8]* @.str67, i32 0, i32 0
  %952 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str67.c, i8* %951)
  %953 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 0
  %954 = load %nyx_string*, %nyx_string** %953
  %955 = call %nyx_string* @nyx_string_concat(%nyx_string* %952, %nyx_string* %954)
  %956 = getelementptr [3 x i8], [3 x i8]* @.str68, i32 0, i32 0
  %957 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str68.c, i8* %956)
  %958 = call %nyx_string* @nyx_string_concat(%nyx_string* %955, %nyx_string* %957)
  %959 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 1
  %960 = load i64, i64* %959
  %961 = call %nyx_string* @nyx_string_from_int(i64 %960)
  %962 = call %nyx_string* @nyx_string_concat(%nyx_string* %958, %nyx_string* %961)
  %963 = getelementptr [8 x i8], [8 x i8]* @.str69, i32 0, i32 0
  %964 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str69.c, i8* %963)
  %965 = call %nyx_string* @nyx_string_concat(%nyx_string* %962, %nyx_string* %964)
  %966 = call i8* @nyx_string_to_cstr(%nyx_string* %965)
  call void @nyx_print_string(i8* %966)
  br label %merge208
else207:
  %967 = getelementptr [9 x i8], [9 x i8]* @.str70, i32 0, i32 0
  %968 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str70.c, i8* %967)
  %969 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 0
  %970 = load %nyx_string*, %nyx_string** %969
  %971 = call %nyx_string* @nyx_string_concat(%nyx_string* %968, %nyx_string* %970)
  %972 = getelementptr [3 x i8], [3 x i8]* @.str71, i32 0, i32 0
  %973 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str71.c, i8* %972)
  %974 = call %nyx_string* @nyx_string_concat(%nyx_string* %971, %nyx_string* %973)
  %975 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 1
  %976 = load i64, i64* %975
  %977 = call %nyx_string* @nyx_string_from_int(i64 %976)
  %978 = call %nyx_string* @nyx_string_concat(%nyx_string* %974, %nyx_string* %977)
  %979 = getelementptr [10 x i8], [10 x i8]* @.str72, i32 0, i32 0
  %980 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str72.c, i8* %979)
  %981 = call %nyx_string* @nyx_string_concat(%nyx_string* %978, %nyx_string* %980)
  %982 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 2
  %983 = load i64, i64* %982
  %984 = call %nyx_string* @nyx_string_from_int(i64 %983)
  %985 = call %nyx_string* @nyx_string_concat(%nyx_string* %981, %nyx_string* %984)
  %986 = getelementptr [9 x i8], [9 x i8]* @.str73, i32 0, i32 0
  %987 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str73.c, i8* %986)
  %988 = call %nyx_string* @nyx_string_concat(%nyx_string* %985, %nyx_string* %987)
  %989 = call i8* @nyx_string_to_cstr(%nyx_string* %988)
  call void @nyx_print_string(i8* %989)
  %990 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 3
  %991 = load %nyx_string*, %nyx_string** %990
  %992 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 3
  %993 = load %nyx_string*, %nyx_string** %992
  %994 = getelementptr [2 x i8], [2 x i8]* @.str74, i32 0, i32 0
  %995 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str74.c, i8* %994)
  %996 = call { i64, i8* }* @nyx_string_split(%nyx_string* %993, %nyx_string* %995)
  %997 = alloca { i64, i8* }*
  store { i64, i8* }* %996, { i64, i8* }** %997
  %998 = alloca i64
  store i64 0, i64* %998
  %999 = getelementptr [6 x i8], [6 x i8]* @.str75, i32 0, i32 0
  %1000 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str75.c, i8* %999)
  %1001 = alloca %nyx_string*
  store %nyx_string* %1000, %nyx_string** %1001
  %1002 = getelementptr [7 x i8], [7 x i8]* @.str76, i32 0, i32 0
  %1003 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str76.c, i8* %1002)
  %1004 = alloca %nyx_string*
  store %nyx_string* %1003, %nyx_string** %1004
  %1005 = getelementptr [9 x i8], [9 x i8]* @.str77, i32 0, i32 0
  %1006 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str77.c, i8* %1005)
  %1007 = alloca %nyx_string*
  store %nyx_string* %1006, %nyx_string** %1007
  %1008 = getelementptr [10 x i8], [10 x i8]* @.str78, i32 0, i32 0
  %1009 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str78.c, i8* %1008)
  %1010 = alloca %nyx_string*
  store %nyx_string* %1009, %nyx_string** %1010
  %1011 = call i8* @llvm.stacksave()
  br label %while_cond209
while_cond209:
  %1012 = load i64, i64* %998
  %1013 = load { i64, i8* }*, { i64, i8* }** %997
  %1014 = call i64 @nyx_array_length({ i64, i8* }* %1013)
  %1015 = icmp slt i64 %1012, %1014
  br i1 %1015, label %while_body210, label %while_end211
while_body210:
  call void @llvm.stackrestore(i8* %1011)
  %1016 = load { i64, i8* }*, { i64, i8* }** %997
  %1017 = load i64, i64* %998
  %1018 = call i64 @nyx_array_get_checked({ i64, i8* }* %1016, i64 %1017, i64 2)
  %1019 = inttoptr i64 %1018 to %nyx_string*
  %1020 = alloca %nyx_string*
  store %nyx_string* %1019, %nyx_string** %1020
  %1021 = alloca i1
  store i1 true, i1* %1021
  %1022 = alloca i1
  store i1 true, i1* %1022
  %1023 = load %nyx_string*, %nyx_string** %1020
  %1024 = load %nyx_string*, %nyx_string** %1001
  %1025 = call i1 @nyx_string_contains(%nyx_string* %1023, %nyx_string* %1024)
  br i1 %1025, label %sc_or_end213, label %sc_or_rhs212
sc_or_rhs212:
  %1026 = load %nyx_string*, %nyx_string** %1020
  %1027 = load %nyx_string*, %nyx_string** %1004
  %1028 = call i1 @nyx_string_contains(%nyx_string* %1026, %nyx_string* %1027)
  store i1 %1028, i1* %1022
  br label %sc_or_end213
sc_or_end213:
  %1029 = load i1, i1* %1022
  br i1 %1029, label %sc_or_end215, label %sc_or_rhs214
sc_or_rhs214:
  %1030 = load %nyx_string*, %nyx_string** %1020
  %1031 = load %nyx_string*, %nyx_string** %1007
  %1032 = call i1 @nyx_string_contains(%nyx_string* %1030, %nyx_string* %1031)
  store i1 %1032, i1* %1021
  br label %sc_or_end215
sc_or_end215:
  %1033 = load i1, i1* %1021
  br i1 %1033, label %then216, label %else217
then216:
  %1034 = load %nyx_string*, %nyx_string** %1010
  %1035 = load %nyx_string*, %nyx_string** %1020
  %1036 = call %nyx_string* @nyx_string_concat(%nyx_string* %1034, %nyx_string* %1035)
  %1037 = call i8* @nyx_string_to_cstr(%nyx_string* %1036)
  call void @nyx_print_string(i8* %1037)
  br label %merge218
else217:
  br label %merge218
merge218:
  %1038 = load i64, i64* %998
  %1039 = add i64 %1038, 1
  store i64 %1039, i64* %998
  br label %while_cond209
while_end211:
  br label %merge208
merge208:
  %1040 = alloca i1
  store i1 false, i1* %1040
  %1041 = load i1, i1* %verbose.ptr
  br i1 %1041, label %sc_and_rhs219, label %sc_and_end220
sc_and_rhs219:
  %1042 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 4
  %1043 = load i1, i1* %1042
  store i1 %1043, i1* %1040
  br label %sc_and_end220
sc_and_end220:
  %1044 = load i1, i1* %1040
  br i1 %1044, label %then221, label %else222
then221:
  %1045 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 3
  %1046 = load %nyx_string*, %nyx_string** %1045
  %1047 = call i8* @nyx_string_to_cstr(%nyx_string* %1046)
  call void @nyx_print_string(i8* %1047)
  br label %merge223
else222:
  br label %merge223
merge223:
  ret i64 0
}

define internal i64 @print_summary(
{ i64, i8* }* %results.param, i64 %total_passed.param, i64 %total_failed.param) {
  %results.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %results.param, { i64, i8* }** %results.ptr
  %total_passed.ptr = alloca i64
  store i64 %total_passed.param, i64* %total_passed.ptr
  %total_failed.ptr = alloca i64
  store i64 %total_failed.param, i64* %total_failed.ptr
  %1048 = getelementptr [1 x i8], [1 x i8]* @.str79, i32 0, i32 0
  %1049 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str79.c, i8* %1048)
  %1050 = call i8* @nyx_string_to_cstr(%nyx_string* %1049)
  call void @nyx_print_string(i8* %1050)
  %1051 = getelementptr [36 x i8], [36 x i8]* @.str80, i32 0, i32 0
  %1052 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str80.c, i8* %1051)
  %1053 = call i8* @nyx_string_to_cstr(%nyx_string* %1052)
  call void @nyx_print_string(i8* %1053)
  %1054 = alloca i64
  store i64 0, i64* %1054
  %1055 = alloca i64
  store i64 0, i64* %1055
  %1056 = alloca i64
  store i64 0, i64* %1056
  %1057 = call i8* @llvm.stacksave()
  br label %while_cond224
while_cond224:
  %1058 = load i64, i64* %1056
  %1059 = load { i64, i8* }*, { i64, i8* }** %results.ptr
  %1060 = call i64 @nyx_array_length({ i64, i8* }* %1059)
  %1061 = icmp slt i64 %1058, %1060
  br i1 %1061, label %while_body225, label %while_end226
while_body225:
  call void @llvm.stackrestore(i8* %1057)
  %1062 = load { i64, i8* }*, { i64, i8* }** %results.ptr
  %1063 = load i64, i64* %1056
  %1064 = call i64 @nyx_array_get({ i64, i8* }* %1062, i64 %1063)
  %1065 = inttoptr i64 %1064 to %TestResult*
  %1066 = load %TestResult, %TestResult* %1065
  %1067 = alloca %TestResult
  store %TestResult %1066, %TestResult* %1067
  %1068 = getelementptr %TestResult, %TestResult* %1067, i32 0, i32 4
  %1069 = load i1, i1* %1068
  br i1 %1069, label %then227, label %else228
then227:
  %1070 = load i64, i64* %1054
  %1071 = add i64 %1070, 1
  store i64 %1071, i64* %1054
  br label %merge229
else228:
  %1072 = load i64, i64* %1055
  %1073 = add i64 %1072, 1
  store i64 %1073, i64* %1055
  br label %merge229
merge229:
  %1074 = load i64, i64* %1056
  %1075 = add i64 %1074, 1
  store i64 %1075, i64* %1056
  br label %while_cond224
while_end226:
  %1076 = getelementptr [11 x i8], [11 x i8]* @.str81, i32 0, i32 0
  %1077 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str81.c, i8* %1076)
  %1078 = load i64, i64* %1054
  %1079 = call %nyx_string* @nyx_string_from_int(i64 %1078)
  %1080 = call %nyx_string* @nyx_string_concat(%nyx_string* %1077, %nyx_string* %1079)
  %1081 = getelementptr [10 x i8], [10 x i8]* @.str82, i32 0, i32 0
  %1082 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str82.c, i8* %1081)
  %1083 = call %nyx_string* @nyx_string_concat(%nyx_string* %1080, %nyx_string* %1082)
  %1084 = load i64, i64* %1055
  %1085 = call %nyx_string* @nyx_string_from_int(i64 %1084)
  %1086 = call %nyx_string* @nyx_string_concat(%nyx_string* %1083, %nyx_string* %1085)
  %1087 = getelementptr [10 x i8], [10 x i8]* @.str83, i32 0, i32 0
  %1088 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str83.c, i8* %1087)
  %1089 = call %nyx_string* @nyx_string_concat(%nyx_string* %1086, %nyx_string* %1088)
  %1090 = load { i64, i8* }*, { i64, i8* }** %results.ptr
  %1091 = call i64 @nyx_array_length({ i64, i8* }* %1090)
  %1092 = call %nyx_string* @nyx_string_from_int(i64 %1091)
  %1093 = call %nyx_string* @nyx_string_concat(%nyx_string* %1089, %nyx_string* %1092)
  %1094 = getelementptr [8 x i8], [8 x i8]* @.str84, i32 0, i32 0
  %1095 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str84.c, i8* %1094)
  %1096 = call %nyx_string* @nyx_string_concat(%nyx_string* %1093, %nyx_string* %1095)
  %1097 = call i8* @nyx_string_to_cstr(%nyx_string* %1096)
  call void @nyx_print_string(i8* %1097)
  %1098 = getelementptr [11 x i8], [11 x i8]* @.str85, i32 0, i32 0
  %1099 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str85.c, i8* %1098)
  %1100 = load i64, i64* %total_passed.ptr
  %1101 = call %nyx_string* @nyx_string_from_int(i64 %1100)
  %1102 = call %nyx_string* @nyx_string_concat(%nyx_string* %1099, %nyx_string* %1101)
  %1103 = getelementptr [10 x i8], [10 x i8]* @.str86, i32 0, i32 0
  %1104 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str86.c, i8* %1103)
  %1105 = call %nyx_string* @nyx_string_concat(%nyx_string* %1102, %nyx_string* %1104)
  %1106 = load i64, i64* %total_failed.ptr
  %1107 = call %nyx_string* @nyx_string_from_int(i64 %1106)
  %1108 = call %nyx_string* @nyx_string_concat(%nyx_string* %1105, %nyx_string* %1107)
  %1109 = getelementptr [10 x i8], [10 x i8]* @.str87, i32 0, i32 0
  %1110 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str87.c, i8* %1109)
  %1111 = call %nyx_string* @nyx_string_concat(%nyx_string* %1108, %nyx_string* %1110)
  %1112 = load i64, i64* %total_passed.ptr
  %1113 = load i64, i64* %total_failed.ptr
  %1114 = add i64 %1112, %1113
  %1115 = call %nyx_string* @nyx_string_from_int(i64 %1114)
  %1116 = call %nyx_string* @nyx_string_concat(%nyx_string* %1111, %nyx_string* %1115)
  %1117 = getelementptr [8 x i8], [8 x i8]* @.str88, i32 0, i32 0
  %1118 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str88.c, i8* %1117)
  %1119 = call %nyx_string* @nyx_string_concat(%nyx_string* %1116, %nyx_string* %1118)
  %1120 = call i8* @nyx_string_to_cstr(%nyx_string* %1119)
  call void @nyx_print_string(i8* %1120)
  %1121 = load i64, i64* %total_failed.ptr
  %1122 = icmp eq i64 %1121, 0
  br i1 %1122, label %then230, label %else231
then230:
  %1123 = getelementptr [27 x i8], [27 x i8]* @.str89, i32 0, i32 0
  %1124 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str89.c, i8* %1123)
  %1125 = call i8* @nyx_string_to_cstr(%nyx_string* %1124)
  call void @nyx_print_string(i8* %1125)
  br label %merge232
else231:
  %1126 = getelementptr [28 x i8], [28 x i8]* @.str90, i32 0, i32 0
  %1127 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str90.c, i8* %1126)
  %1128 = call i8* @nyx_string_to_cstr(%nyx_string* %1127)
  call void @nyx_print_string(i8* %1128)
  br label %merge232
merge232:
  %1129 = getelementptr [36 x i8], [36 x i8]* @.str91, i32 0, i32 0
  %1130 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str91.c, i8* %1129)
  %1131 = call i8* @nyx_string_to_cstr(%nyx_string* %1130)
  call void @nyx_print_string(i8* %1131)
  ret i64 0
}

define i64 @main(
i32 %argc, i8** %argv) {
  call void @nyx_set_args(i32 %argc, i8** %argv)
  %1132 = getelementptr [24 x i8], [24 x i8]* @.str92, i32 0, i32 0
  %1133 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str92.c, i8* %1132)
  %1134 = call i8* @nyx_string_to_cstr(%nyx_string* %1133)
  call void @nyx_print_string(i8* %1134)
  %1135 = call %TestConfig @load_test_config()
  %1136 = alloca %TestConfig
  store %TestConfig %1135, %TestConfig* %1136
  %1137 = call { i64, i8* }* @nyx_get_args()
  %1138 = alloca { i64, i8* }*
  store { i64, i8* }* %1137, { i64, i8* }** %1138
  %1139 = alloca i64
  store i64 1, i64* %1139
  %1140 = getelementptr [9 x i8], [9 x i8]* @.str93, i32 0, i32 0
  %1141 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str93.c, i8* %1140)
  %1142 = alloca %nyx_string*
  store %nyx_string* %1141, %nyx_string** %1142
  %1143 = getelementptr [10 x i8], [10 x i8]* @.str94, i32 0, i32 0
  %1144 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str94.c, i8* %1143)
  %1145 = alloca %nyx_string*
  store %nyx_string* %1144, %nyx_string** %1145
  %1146 = getelementptr [3 x i8], [3 x i8]* @.str95, i32 0, i32 0
  %1147 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str95.c, i8* %1146)
  %1148 = alloca %nyx_string*
  store %nyx_string* %1147, %nyx_string** %1148
  %1149 = getelementptr [10 x i8], [10 x i8]* @.str96, i32 0, i32 0
  %1150 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str96.c, i8* %1149)
  %1151 = alloca %nyx_string*
  store %nyx_string* %1150, %nyx_string** %1151
  %1152 = getelementptr [4 x i8], [4 x i8]* @.str97, i32 0, i32 0
  %1153 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str97.c, i8* %1152)
  %1154 = alloca %nyx_string*
  store %nyx_string* %1153, %nyx_string** %1154
  %1155 = call i8* @llvm.stacksave()
  br label %while_cond233
while_cond233:
  %1156 = load i64, i64* %1139
  %1157 = load { i64, i8* }*, { i64, i8* }** %1138
  %1158 = call i64 @nyx_array_length({ i64, i8* }* %1157)
  %1159 = icmp slt i64 %1156, %1158
  br i1 %1159, label %while_body234, label %while_end235
while_body234:
  call void @llvm.stackrestore(i8* %1155)
  %1160 = load { i64, i8* }*, { i64, i8* }** %1138
  %1161 = load i64, i64* %1139
  %1162 = call i64 @nyx_array_get_checked({ i64, i8* }* %1160, i64 %1161, i64 2)
  %1163 = inttoptr i64 %1162 to %nyx_string*
  %1164 = alloca %nyx_string*
  store %nyx_string* %1163, %nyx_string** %1164
  %1165 = alloca i1
  store i1 false, i1* %1165
  %1166 = load %nyx_string*, %nyx_string** %1164
  %1167 = load %nyx_string*, %nyx_string** %1142
  %1168 = call i1 @nyx_string_equals(%nyx_string* %1166, %nyx_string* %1167)
  br i1 %1168, label %sc_and_rhs236, label %sc_and_end237
sc_and_rhs236:
  %1169 = load i64, i64* %1139
  %1170 = add i64 %1169, 1
  %1171 = load { i64, i8* }*, { i64, i8* }** %1138
  %1172 = call i64 @nyx_array_length({ i64, i8* }* %1171)
  %1173 = icmp slt i64 %1170, %1172
  store i1 %1173, i1* %1165
  br label %sc_and_end237
sc_and_end237:
  %1174 = load i1, i1* %1165
  br i1 %1174, label %then238, label %else239
then238:
  %1175 = load i64, i64* %1139
  %1176 = add i64 %1175, 1
  store i64 %1176, i64* %1139
  %1177 = load { i64, i8* }*, { i64, i8* }** %1138
  %1178 = load i64, i64* %1139
  %1179 = call i64 @nyx_array_get_checked({ i64, i8* }* %1177, i64 %1178, i64 2)
  %1180 = inttoptr i64 %1179 to %nyx_string*
  %1181 = alloca %nyx_string*
  store %nyx_string* %1180, %nyx_string** %1181
  %1182 = load %nyx_string*, %nyx_string** %1181
  %1183 = getelementptr %TestConfig, %TestConfig* %1136, i32 0, i32 2
  store %nyx_string* %1182, %nyx_string** %1183
  br label %merge240
else239:
  %1184 = alloca i1
  store i1 true, i1* %1184
  %1185 = load %nyx_string*, %nyx_string** %1164
  %1186 = load %nyx_string*, %nyx_string** %1145
  %1187 = call i1 @nyx_string_equals(%nyx_string* %1185, %nyx_string* %1186)
  br i1 %1187, label %sc_or_end242, label %sc_or_rhs241
sc_or_rhs241:
  %1188 = load %nyx_string*, %nyx_string** %1164
  %1189 = load %nyx_string*, %nyx_string** %1148
  %1190 = call i1 @nyx_string_equals(%nyx_string* %1188, %nyx_string* %1189)
  store i1 %1190, i1* %1184
  br label %sc_or_end242
sc_or_end242:
  %1191 = load i1, i1* %1184
  br i1 %1191, label %then243, label %else244
then243:
  %1192 = getelementptr %TestConfig, %TestConfig* %1136, i32 0, i32 3
  store i1 1, i1* %1192
  br label %merge245
else244:
  %1193 = alloca i1
  store i1 false, i1* %1193
  %1194 = load %nyx_string*, %nyx_string** %1164
  %1195 = load %nyx_string*, %nyx_string** %1151
  %1196 = call i1 @nyx_string_equals(%nyx_string* %1194, %nyx_string* %1195)
  br i1 %1196, label %sc_and_rhs246, label %sc_and_end247
sc_and_rhs246:
  %1197 = load i64, i64* %1139
  %1198 = add i64 %1197, 1
  %1199 = load { i64, i8* }*, { i64, i8* }** %1138
  %1200 = call i64 @nyx_array_length({ i64, i8* }* %1199)
  %1201 = icmp slt i64 %1198, %1200
  store i1 %1201, i1* %1193
  br label %sc_and_end247
sc_and_end247:
  %1202 = load i1, i1* %1193
  br i1 %1202, label %then248, label %else249
then248:
  %1203 = load i64, i64* %1139
  %1204 = add i64 %1203, 1
  store i64 %1204, i64* %1139
  %1205 = load { i64, i8* }*, { i64, i8* }** %1138
  %1206 = load i64, i64* %1139
  %1207 = call i64 @nyx_array_get_checked({ i64, i8* }* %1205, i64 %1206, i64 2)
  %1208 = inttoptr i64 %1207 to %nyx_string*
  %1209 = alloca %nyx_string*
  store %nyx_string* %1208, %nyx_string** %1209
  %1210 = load %nyx_string*, %nyx_string** %1209
  %1211 = call i64 @nyx_string_to_int(%nyx_string* %1210)
  %1212 = getelementptr %TestConfig, %TestConfig* %1136, i32 0, i32 1
  store i64 %1211, i64* %1212
  br label %merge250
else249:
  %1213 = load %nyx_string*, %nyx_string** %1164
  %1214 = load %nyx_string*, %nyx_string** %1154
  %1215 = call i1 @nyx_string_ends_with(%nyx_string* %1213, %nyx_string* %1214)
  br i1 %1215, label %then251, label %else252
then251:
  %1216 = load %nyx_string*, %nyx_string** %1164
  %1217 = getelementptr %TestConfig, %TestConfig* %1136, i32 0, i32 4
  store %nyx_string* %1216, %nyx_string** %1217
  br label %merge253
else252:
  br label %merge253
merge253:
  br label %merge250
merge250:
  br label %merge245
merge245:
  br label %merge240
merge240:
  %1218 = load i64, i64* %1139
  %1219 = add i64 %1218, 1
  store i64 %1219, i64* %1139
  br label %while_cond233
while_end235:
  %1220 = call { i64, i8* }* @nyx_array_new_ptr()
  %1221 = alloca { i64, i8* }*
  store { i64, i8* }* %1220, { i64, i8* }** %1221
  %1222 = getelementptr %TestConfig, %TestConfig* %1136, i32 0, i32 4
  %1223 = load %nyx_string*, %nyx_string** %1222
  %1224 = getelementptr [1 x i8], [1 x i8]* @.str98, i32 0, i32 0
  %1225 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str98.c, i8* %1224)
  %1226 = call i1 @nyx_string_equals(%nyx_string* %1223, %nyx_string* %1225)
  %1227 = xor i1 %1226, true
  br i1 %1227, label %then254, label %else255
then254:
  %1228 = getelementptr %TestConfig, %TestConfig* %1136, i32 0, i32 4
  %1229 = load %nyx_string*, %nyx_string** %1228
  %1230 = call i8* @nyx_string_to_cstr(%nyx_string* %1229)
  %1231 = call i1 @nyx_file_exists(i8* %1230)
  %1232 = xor i1 %1231, true
  br i1 %1232, label %then257, label %else258
then257:
  %1233 = getelementptr [24 x i8], [24 x i8]* @.str99, i32 0, i32 0
  %1234 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str99.c, i8* %1233)
  %1235 = getelementptr %TestConfig, %TestConfig* %1136, i32 0, i32 4
  %1236 = load %nyx_string*, %nyx_string** %1235
  %1237 = call %nyx_string* @nyx_string_concat(%nyx_string* %1234, %nyx_string* %1236)
  %1238 = call i8* @nyx_string_to_cstr(%nyx_string* %1237)
  call void @nyx_print_string(i8* %1238)
  ret i64 1
else258:
  br label %merge259
merge259:
  %1239 = load { i64, i8* }*, { i64, i8* }** %1221
  %1240 = getelementptr %TestConfig, %TestConfig* %1136, i32 0, i32 4
  %1241 = load %nyx_string*, %nyx_string** %1240
  %1242 = ptrtoint %nyx_string* %1241 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1239, i64 %1242, i64 2)
  br label %merge256
else255:
  %1243 = load %TestConfig, %TestConfig* %1136
  %1244 = call { i64, i8* }* @discover_tests(%TestConfig %1243)
  store { i64, i8* }* %1244, { i64, i8* }** %1221
  br label %merge256
merge256:
  %1245 = load { i64, i8* }*, { i64, i8* }** %1221
  %1246 = call i64 @nyx_array_length({ i64, i8* }* %1245)
  %1247 = icmp eq i64 %1246, 0
  br i1 %1247, label %then260, label %else261
then260:
  %1248 = getelementptr [23 x i8], [23 x i8]* @.str100, i32 0, i32 0
  %1249 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str100.c, i8* %1248)
  %1250 = call i8* @nyx_string_to_cstr(%nyx_string* %1249)
  call void @nyx_print_string(i8* %1250)
  %1251 = getelementptr %TestConfig, %TestConfig* %1136, i32 0, i32 2
  %1252 = load %nyx_string*, %nyx_string** %1251
  %1253 = getelementptr [1 x i8], [1 x i8]* @.str101, i32 0, i32 0
  %1254 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str101.c, i8* %1253)
  %1255 = call i1 @nyx_string_equals(%nyx_string* %1252, %nyx_string* %1254)
  %1256 = xor i1 %1255, true
  br i1 %1256, label %then263, label %else264
then263:
  %1257 = getelementptr [12 x i8], [12 x i8]* @.str102, i32 0, i32 0
  %1258 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str102.c, i8* %1257)
  %1259 = getelementptr %TestConfig, %TestConfig* %1136, i32 0, i32 2
  %1260 = load %nyx_string*, %nyx_string** %1259
  %1261 = call %nyx_string* @nyx_string_concat(%nyx_string* %1258, %nyx_string* %1260)
  %1262 = getelementptr [2 x i8], [2 x i8]* @.str103, i32 0, i32 0
  %1263 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str103.c, i8* %1262)
  %1264 = call %nyx_string* @nyx_string_concat(%nyx_string* %1261, %nyx_string* %1263)
  %1265 = call i8* @nyx_string_to_cstr(%nyx_string* %1264)
  call void @nyx_print_string(i8* %1265)
  br label %merge265
else264:
  br label %merge265
merge265:
  %1266 = getelementptr [14 x i8], [14 x i8]* @.str104, i32 0, i32 0
  %1267 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str104.c, i8* %1266)
  %1268 = getelementptr %TestConfig, %TestConfig* %1136, i32 0, i32 0
  %1269 = load %nyx_string*, %nyx_string** %1268
  %1270 = call %nyx_string* @nyx_string_concat(%nyx_string* %1267, %nyx_string* %1269)
  %1271 = getelementptr [2 x i8], [2 x i8]* @.str105, i32 0, i32 0
  %1272 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str105.c, i8* %1271)
  %1273 = call %nyx_string* @nyx_string_concat(%nyx_string* %1270, %nyx_string* %1272)
  %1274 = call i8* @nyx_string_to_cstr(%nyx_string* %1273)
  call void @nyx_print_string(i8* %1274)
  ret i64 0
else261:
  br label %merge262
merge262:
  %1275 = getelementptr [9 x i8], [9 x i8]* @.str106, i32 0, i32 0
  %1276 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str106.c, i8* %1275)
  %1277 = load { i64, i8* }*, { i64, i8* }** %1221
  %1278 = call i64 @nyx_array_length({ i64, i8* }* %1277)
  %1279 = call %nyx_string* @nyx_string_from_int(i64 %1278)
  %1280 = call %nyx_string* @nyx_string_concat(%nyx_string* %1276, %nyx_string* %1279)
  %1281 = getelementptr [14 x i8], [14 x i8]* @.str107, i32 0, i32 0
  %1282 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str107.c, i8* %1281)
  %1283 = call %nyx_string* @nyx_string_concat(%nyx_string* %1280, %nyx_string* %1282)
  %1284 = call i8* @nyx_string_to_cstr(%nyx_string* %1283)
  call void @nyx_print_string(i8* %1284)
  %1285 = getelementptr %TestConfig, %TestConfig* %1136, i32 0, i32 2
  %1286 = load %nyx_string*, %nyx_string** %1285
  %1287 = getelementptr [1 x i8], [1 x i8]* @.str108, i32 0, i32 0
  %1288 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str108.c, i8* %1287)
  %1289 = call i1 @nyx_string_equals(%nyx_string* %1286, %nyx_string* %1288)
  %1290 = xor i1 %1289, true
  br i1 %1290, label %then266, label %else267
then266:
  %1291 = getelementptr [12 x i8], [12 x i8]* @.str109, i32 0, i32 0
  %1292 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str109.c, i8* %1291)
  %1293 = getelementptr %TestConfig, %TestConfig* %1136, i32 0, i32 2
  %1294 = load %nyx_string*, %nyx_string** %1293
  %1295 = call %nyx_string* @nyx_string_concat(%nyx_string* %1292, %nyx_string* %1294)
  %1296 = getelementptr [2 x i8], [2 x i8]* @.str110, i32 0, i32 0
  %1297 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str110.c, i8* %1296)
  %1298 = call %nyx_string* @nyx_string_concat(%nyx_string* %1295, %nyx_string* %1297)
  %1299 = call i8* @nyx_string_to_cstr(%nyx_string* %1298)
  call void @nyx_print_string(i8* %1299)
  br label %merge268
else267:
  br label %merge268
merge268:
  %1300 = getelementptr [1 x i8], [1 x i8]* @.str111, i32 0, i32 0
  %1301 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str111.c, i8* %1300)
  %1302 = call i8* @nyx_string_to_cstr(%nyx_string* %1301)
  call void @nyx_print_string(i8* %1302)
  %1303 = call { i64, i8* }* @nyx_array_new_ptr()
  %1304 = alloca { i64, i8* }*
  store { i64, i8* }* %1303, { i64, i8* }** %1304
  %1305 = alloca i64
  store i64 0, i64* %1305
  %1306 = alloca i64
  store i64 0, i64* %1306
  %1307 = alloca i64
  store i64 0, i64* %1307
  %1308 = call i8* @llvm.stacksave()
  br label %while_cond269
while_cond269:
  %1309 = load i64, i64* %1307
  %1310 = load { i64, i8* }*, { i64, i8* }** %1221
  %1311 = call i64 @nyx_array_length({ i64, i8* }* %1310)
  %1312 = icmp slt i64 %1309, %1311
  br i1 %1312, label %while_body270, label %while_end271
while_body270:
  call void @llvm.stackrestore(i8* %1308)
  %1313 = load { i64, i8* }*, { i64, i8* }** %1221
  %1314 = load i64, i64* %1307
  %1315 = call i64 @nyx_array_get_checked({ i64, i8* }* %1313, i64 %1314, i64 2)
  %1316 = inttoptr i64 %1315 to %nyx_string*
  %1317 = alloca %nyx_string*
  store %nyx_string* %1316, %nyx_string** %1317
  %1318 = load %nyx_string*, %nyx_string** %1317
  %1319 = call i1 @file_has_test_blocks(%nyx_string* %1318)
  %1320 = xor i1 %1319, true
  br i1 %1320, label %then272, label %else273
then272:
  %1321 = load i64, i64* %1307
  %1322 = add i64 %1321, 1
  store i64 %1322, i64* %1307
  br label %merge274
else273:
  %1323 = load %nyx_string*, %nyx_string** %1317
  %1324 = load %TestConfig, %TestConfig* %1136
  %1325 = call %TestResult @compile_and_run(%nyx_string* %1323, %TestConfig %1324)
  %1326 = alloca %TestResult
  store %TestResult %1325, %TestResult* %1326
  %1327 = load { i64, i8* }*, { i64, i8* }** %1304
  %1328 = load %TestResult, %TestResult* %1326
  %1329 = getelementptr %TestResult, %TestResult* null, i32 1
  %1330 = ptrtoint %TestResult* %1329 to i64
  %1331 = call i8* @GC_malloc(i64 %1330)
  %1332 = bitcast i8* %1331 to %TestResult*
  store %TestResult %1328, %TestResult* %1332
  %1333 = ptrtoint %TestResult* %1332 to i64
  call void @nyx_array_push({ i64, i8* }* %1327, i64 %1333)
  %1334 = load i64, i64* %1305
  %1335 = getelementptr %TestResult, %TestResult* %1326, i32 0, i32 1
  %1336 = load i64, i64* %1335
  %1337 = add i64 %1334, %1336
  store i64 %1337, i64* %1305
  %1338 = load i64, i64* %1306
  %1339 = getelementptr %TestResult, %TestResult* %1326, i32 0, i32 2
  %1340 = load i64, i64* %1339
  %1341 = add i64 %1338, %1340
  store i64 %1341, i64* %1306
  %1342 = load %TestResult, %TestResult* %1326
  %1343 = getelementptr %TestConfig, %TestConfig* %1136, i32 0, i32 3
  %1344 = load i1, i1* %1343
  %1345 = call i64 @print_result(%TestResult %1342, i1 %1344)
  %1346 = load i64, i64* %1307
  %1347 = add i64 %1346, 1
  store i64 %1347, i64* %1307
  br label %merge274
merge274:
  br label %while_cond269
while_end271:
  %1348 = load { i64, i8* }*, { i64, i8* }** %1304
  %1349 = call i64 @nyx_array_length({ i64, i8* }* %1348)
  %1350 = icmp eq i64 %1349, 0
  br i1 %1350, label %then275, label %else276
then275:
  %1351 = getelementptr [35 x i8], [35 x i8]* @.str112, i32 0, i32 0
  %1352 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str112.c, i8* %1351)
  %1353 = call i8* @nyx_string_to_cstr(%nyx_string* %1352)
  call void @nyx_print_string(i8* %1353)
  ret i64 0
else276:
  br label %merge277
merge277:
  %1354 = load { i64, i8* }*, { i64, i8* }** %1304
  %1355 = load i64, i64* %1305
  %1356 = load i64, i64* %1306
  %1357 = call i64 @print_summary({ i64, i8* }* %1354, i64 %1355, i64 %1356)
  %1358 = load i64, i64* %1306
  %1359 = icmp sgt i64 %1358, 0
  br i1 %1359, label %then278, label %else279
then278:
  ret i64 1
else279:
  br label %merge280
merge280:
  ret i64 0
}


attributes #0 = { returns_twice }

