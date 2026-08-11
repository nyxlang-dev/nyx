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
@.str37 = private unnamed_addr constant [21 x i8] c"\22 ./nyx_bootstrap > \00"
@.str37.c = internal global %nyx_string* null
@.str38 = private unnamed_addr constant [7 x i8] c" 2>&1\0a\00"
@.str38.c = internal global %nyx_string* null
@.str39 = private unnamed_addr constant [50 x i8] c"clang -O2 -Wno-deprecated-declarations script.ll \00"
@.str39.c = internal global %nyx_string* null
@.str40 = private unnamed_addr constant [62 x i8] c"runtime/runtime.c runtime/strings.c runtime/runtime-arrays.c \00"
@.str40.c = internal global %nyx_string* null
@.str41 = private unnamed_addr constant [54 x i8] c"runtime/maps.c runtime/file-io.c runtime/iterators.c \00"
@.str41.c = internal global %nyx_string* null
@.str42 = private unnamed_addr constant [48 x i8] c"runtime/net.c runtime/thread.c runtime/regex.c \00"
@.str42.c = internal global %nyx_string* null
@.str43 = private unnamed_addr constant [47 x i8] c"runtime/time.c runtime/crypto.c runtime/tls.c \00"
@.str43.c = internal global %nyx_string* null
@.str44 = private unnamed_addr constant [67 x i8] c"runtime/scheduler.c runtime/event_loop.c runtime/sqlite_adapter.c \00"
@.str44.c = internal global %nyx_string* null
@.str45 = private unnamed_addr constant [51 x i8] c"runtime/compress.c runtime/random.c runtime/url.c \00"
@.str45.c = internal global %nyx_string* null
@.str46 = private unnamed_addr constant [91 x i8] c"runtime/msgpack.c runtime/websocket.c runtime/persist.c runtime/http2.c runtime/process.c \00"
@.str46.c = internal global %nyx_string* null
@.str47 = private unnamed_addr constant [44 x i8] c"-lgc -lpthread -ldl -lm -lssl -lcrypto -lz \00"
@.str47.c = internal global %nyx_string* null
@.str48 = private unnamed_addr constant [4 x i8] c"-o \00"
@.str48.c = internal global %nyx_string* null
@.str49 = private unnamed_addr constant [6 x i8] c" 2>> \00"
@.str49.c = internal global %nyx_string* null
@.str50 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str50.c = internal global %nyx_string* null
@.str51 = private unnamed_addr constant [9 x i8] c"timeout \00"
@.str51.c = internal global %nyx_string* null
@.str52 = private unnamed_addr constant [2 x i8] c" \00"
@.str52.c = internal global %nyx_string* null
@.str53 = private unnamed_addr constant [4 x i8] c" > \00"
@.str53.c = internal global %nyx_string* null
@.str54 = private unnamed_addr constant [7 x i8] c" 2>&1\0a\00"
@.str54.c = internal global %nyx_string* null
@.str55 = private unnamed_addr constant [14 x i8] c"EXIT_CODE=$?\0a\00"
@.str55.c = internal global %nyx_string* null
@.str56 = private unnamed_addr constant [7 x i8] c"rm -f \00"
@.str56.c = internal global %nyx_string* null
@.str57 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str57.c = internal global %nyx_string* null
@.str58 = private unnamed_addr constant [27 x i8] c"rm -f script.nx script.ll\0a\00"
@.str58.c = internal global %nyx_string* null
@.str59 = private unnamed_addr constant [17 x i8] c"exit $EXIT_CODE\0a\00"
@.str59.c = internal global %nyx_string* null
@.str60 = private unnamed_addr constant [22 x i8] c"/tmp/nyx_test_script_\00"
@.str60.c = internal global %nyx_string* null
@.str61 = private unnamed_addr constant [4 x i8] c".sh\00"
@.str61.c = internal global %nyx_string* null
@.str62 = private unnamed_addr constant [6 x i8] c"bash \00"
@.str62.c = internal global %nyx_string* null
@.str63 = private unnamed_addr constant [1 x i8] c"\00"
@.str63.c = internal global %nyx_string* null
@.str64 = private unnamed_addr constant [7 x i8] c"rm -f \00"
@.str64.c = internal global %nyx_string* null
@.str65 = private unnamed_addr constant [7 x i8] c"rm -f \00"
@.str65.c = internal global %nyx_string* null
@.str66 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str66.c = internal global %nyx_string* null
@.str67 = private unnamed_addr constant [6 x i8] c"PASS:\00"
@.str67.c = internal global %nyx_string* null
@.str68 = private unnamed_addr constant [6 x i8] c"FAIL:\00"
@.str68.c = internal global %nyx_string* null
@.str69 = private unnamed_addr constant [9 x i8] c"  PASS  \00"
@.str69.c = internal global %nyx_string* null
@.str70 = private unnamed_addr constant [3 x i8] c" (\00"
@.str70.c = internal global %nyx_string* null
@.str71 = private unnamed_addr constant [8 x i8] c" tests)\00"
@.str71.c = internal global %nyx_string* null
@.str72 = private unnamed_addr constant [9 x i8] c"  FAIL  \00"
@.str72.c = internal global %nyx_string* null
@.str73 = private unnamed_addr constant [3 x i8] c" (\00"
@.str73.c = internal global %nyx_string* null
@.str74 = private unnamed_addr constant [10 x i8] c" passed, \00"
@.str74.c = internal global %nyx_string* null
@.str75 = private unnamed_addr constant [9 x i8] c" failed)\00"
@.str75.c = internal global %nyx_string* null
@.str76 = private unnamed_addr constant [1 x i8] c"\00"
@.str76.c = internal global %nyx_string* null
@.str77 = private unnamed_addr constant [36 x i8] c"===================================\00"
@.str77.c = internal global %nyx_string* null
@.str78 = private unnamed_addr constant [11 x i8] c"  Files:  \00"
@.str78.c = internal global %nyx_string* null
@.str79 = private unnamed_addr constant [10 x i8] c" passed, \00"
@.str79.c = internal global %nyx_string* null
@.str80 = private unnamed_addr constant [10 x i8] c" failed (\00"
@.str80.c = internal global %nyx_string* null
@.str81 = private unnamed_addr constant [8 x i8] c" total)\00"
@.str81.c = internal global %nyx_string* null
@.str82 = private unnamed_addr constant [11 x i8] c"  Tests:  \00"
@.str82.c = internal global %nyx_string* null
@.str83 = private unnamed_addr constant [10 x i8] c" passed, \00"
@.str83.c = internal global %nyx_string* null
@.str84 = private unnamed_addr constant [10 x i8] c" failed (\00"
@.str84.c = internal global %nyx_string* null
@.str85 = private unnamed_addr constant [8 x i8] c" total)\00"
@.str85.c = internal global %nyx_string* null
@.str86 = private unnamed_addr constant [27 x i8] c"  Status: ALL TESTS PASSED\00"
@.str86.c = internal global %nyx_string* null
@.str87 = private unnamed_addr constant [28 x i8] c"  Status: SOME TESTS FAILED\00"
@.str87.c = internal global %nyx_string* null
@.str88 = private unnamed_addr constant [36 x i8] c"===================================\00"
@.str88.c = internal global %nyx_string* null
@.str89 = private unnamed_addr constant [24 x i8] c"=== Nyx Test Runner ===\00"
@.str89.c = internal global %nyx_string* null
@.str90 = private unnamed_addr constant [9 x i8] c"--filter\00"
@.str90.c = internal global %nyx_string* null
@.str91 = private unnamed_addr constant [10 x i8] c"--verbose\00"
@.str91.c = internal global %nyx_string* null
@.str92 = private unnamed_addr constant [3 x i8] c"-v\00"
@.str92.c = internal global %nyx_string* null
@.str93 = private unnamed_addr constant [10 x i8] c"--timeout\00"
@.str93.c = internal global %nyx_string* null
@.str94 = private unnamed_addr constant [4 x i8] c".nx\00"
@.str94.c = internal global %nyx_string* null
@.str95 = private unnamed_addr constant [1 x i8] c"\00"
@.str95.c = internal global %nyx_string* null
@.str96 = private unnamed_addr constant [24 x i8] c"error: file not found: \00"
@.str96.c = internal global %nyx_string* null
@.str97 = private unnamed_addr constant [23 x i8] c"  No test files found.\00"
@.str97.c = internal global %nyx_string* null
@.str98 = private unnamed_addr constant [1 x i8] c"\00"
@.str98.c = internal global %nyx_string* null
@.str99 = private unnamed_addr constant [12 x i8] c"  Filter: \22\00"
@.str99.c = internal global %nyx_string* null
@.str100 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str100.c = internal global %nyx_string* null
@.str101 = private unnamed_addr constant [14 x i8] c"  Looked in: \00"
@.str101.c = internal global %nyx_string* null
@.str102 = private unnamed_addr constant [2 x i8] c"/\00"
@.str102.c = internal global %nyx_string* null
@.str103 = private unnamed_addr constant [9 x i8] c"  Found \00"
@.str103.c = internal global %nyx_string* null
@.str104 = private unnamed_addr constant [14 x i8] c" test file(s)\00"
@.str104.c = internal global %nyx_string* null
@.str105 = private unnamed_addr constant [1 x i8] c"\00"
@.str105.c = internal global %nyx_string* null
@.str106 = private unnamed_addr constant [12 x i8] c"  Filter: \22\00"
@.str106.c = internal global %nyx_string* null
@.str107 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str107.c = internal global %nyx_string* null
@.str108 = private unnamed_addr constant [1 x i8] c"\00"
@.str108.c = internal global %nyx_string* null
@.str109 = private unnamed_addr constant [35 x i8] c"  No files with test blocks found.\00"
@.str109.c = internal global %nyx_string* null
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
declare %nyx_string* @nyx_resolve_ptr(i8*)
declare { i64, i8* }* @nyx_net_interfaces()
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
declare %nyx_string* @nyx_datetime_format_epoch(i64, %nyx_string*)
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
declare i64 @nyx_stdin_eof()
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
  %777 = getelementptr [21 x i8], [21 x i8]* @.str37, i32 0, i32 0
  %778 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str37.c, i8* %777)
  %779 = call %nyx_string* @nyx_string_concat(%nyx_string* %776, %nyx_string* %778)
  %780 = load %nyx_string*, %nyx_string** %742
  %781 = call %nyx_string* @nyx_string_concat(%nyx_string* %779, %nyx_string* %780)
  %782 = getelementptr [7 x i8], [7 x i8]* @.str38, i32 0, i32 0
  %783 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str38.c, i8* %782)
  %784 = call %nyx_string* @nyx_string_concat(%nyx_string* %781, %nyx_string* %783)
  %785 = getelementptr [50 x i8], [50 x i8]* @.str39, i32 0, i32 0
  %786 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str39.c, i8* %785)
  %787 = call %nyx_string* @nyx_string_concat(%nyx_string* %784, %nyx_string* %786)
  %788 = getelementptr [62 x i8], [62 x i8]* @.str40, i32 0, i32 0
  %789 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str40.c, i8* %788)
  %790 = call %nyx_string* @nyx_string_concat(%nyx_string* %787, %nyx_string* %789)
  %791 = getelementptr [54 x i8], [54 x i8]* @.str41, i32 0, i32 0
  %792 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str41.c, i8* %791)
  %793 = call %nyx_string* @nyx_string_concat(%nyx_string* %790, %nyx_string* %792)
  %794 = getelementptr [48 x i8], [48 x i8]* @.str42, i32 0, i32 0
  %795 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str42.c, i8* %794)
  %796 = call %nyx_string* @nyx_string_concat(%nyx_string* %793, %nyx_string* %795)
  %797 = getelementptr [47 x i8], [47 x i8]* @.str43, i32 0, i32 0
  %798 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str43.c, i8* %797)
  %799 = call %nyx_string* @nyx_string_concat(%nyx_string* %796, %nyx_string* %798)
  %800 = getelementptr [67 x i8], [67 x i8]* @.str44, i32 0, i32 0
  %801 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str44.c, i8* %800)
  %802 = call %nyx_string* @nyx_string_concat(%nyx_string* %799, %nyx_string* %801)
  %803 = getelementptr [51 x i8], [51 x i8]* @.str45, i32 0, i32 0
  %804 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str45.c, i8* %803)
  %805 = call %nyx_string* @nyx_string_concat(%nyx_string* %802, %nyx_string* %804)
  %806 = getelementptr [91 x i8], [91 x i8]* @.str46, i32 0, i32 0
  %807 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str46.c, i8* %806)
  %808 = call %nyx_string* @nyx_string_concat(%nyx_string* %805, %nyx_string* %807)
  %809 = getelementptr [44 x i8], [44 x i8]* @.str47, i32 0, i32 0
  %810 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str47.c, i8* %809)
  %811 = call %nyx_string* @nyx_string_concat(%nyx_string* %808, %nyx_string* %810)
  %812 = getelementptr [4 x i8], [4 x i8]* @.str48, i32 0, i32 0
  %813 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str48.c, i8* %812)
  %814 = call %nyx_string* @nyx_string_concat(%nyx_string* %811, %nyx_string* %813)
  %815 = load %nyx_string*, %nyx_string** %748
  %816 = call %nyx_string* @nyx_string_concat(%nyx_string* %814, %nyx_string* %815)
  %817 = getelementptr [6 x i8], [6 x i8]* @.str49, i32 0, i32 0
  %818 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str49.c, i8* %817)
  %819 = call %nyx_string* @nyx_string_concat(%nyx_string* %816, %nyx_string* %818)
  %820 = load %nyx_string*, %nyx_string** %742
  %821 = call %nyx_string* @nyx_string_concat(%nyx_string* %819, %nyx_string* %820)
  %822 = getelementptr [2 x i8], [2 x i8]* @.str50, i32 0, i32 0
  %823 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str50.c, i8* %822)
  %824 = call %nyx_string* @nyx_string_concat(%nyx_string* %821, %nyx_string* %823)
  %825 = getelementptr [9 x i8], [9 x i8]* @.str51, i32 0, i32 0
  %826 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str51.c, i8* %825)
  %827 = call %nyx_string* @nyx_string_concat(%nyx_string* %824, %nyx_string* %826)
  %828 = load %nyx_string*, %nyx_string** %733
  %829 = call %nyx_string* @nyx_string_concat(%nyx_string* %827, %nyx_string* %828)
  %830 = getelementptr [2 x i8], [2 x i8]* @.str52, i32 0, i32 0
  %831 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str52.c, i8* %830)
  %832 = call %nyx_string* @nyx_string_concat(%nyx_string* %829, %nyx_string* %831)
  %833 = load %nyx_string*, %nyx_string** %748
  %834 = call %nyx_string* @nyx_string_concat(%nyx_string* %832, %nyx_string* %833)
  %835 = getelementptr [4 x i8], [4 x i8]* @.str53, i32 0, i32 0
  %836 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str53.c, i8* %835)
  %837 = call %nyx_string* @nyx_string_concat(%nyx_string* %834, %nyx_string* %836)
  %838 = load %nyx_string*, %nyx_string** %742
  %839 = call %nyx_string* @nyx_string_concat(%nyx_string* %837, %nyx_string* %838)
  %840 = getelementptr [7 x i8], [7 x i8]* @.str54, i32 0, i32 0
  %841 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str54.c, i8* %840)
  %842 = call %nyx_string* @nyx_string_concat(%nyx_string* %839, %nyx_string* %841)
  %843 = getelementptr [14 x i8], [14 x i8]* @.str55, i32 0, i32 0
  %844 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str55.c, i8* %843)
  %845 = call %nyx_string* @nyx_string_concat(%nyx_string* %842, %nyx_string* %844)
  %846 = getelementptr [7 x i8], [7 x i8]* @.str56, i32 0, i32 0
  %847 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str56.c, i8* %846)
  %848 = call %nyx_string* @nyx_string_concat(%nyx_string* %845, %nyx_string* %847)
  %849 = load %nyx_string*, %nyx_string** %748
  %850 = call %nyx_string* @nyx_string_concat(%nyx_string* %848, %nyx_string* %849)
  %851 = getelementptr [2 x i8], [2 x i8]* @.str57, i32 0, i32 0
  %852 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str57.c, i8* %851)
  %853 = call %nyx_string* @nyx_string_concat(%nyx_string* %850, %nyx_string* %852)
  %854 = getelementptr [27 x i8], [27 x i8]* @.str58, i32 0, i32 0
  %855 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str58.c, i8* %854)
  %856 = call %nyx_string* @nyx_string_concat(%nyx_string* %853, %nyx_string* %855)
  %857 = getelementptr [17 x i8], [17 x i8]* @.str59, i32 0, i32 0
  %858 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str59.c, i8* %857)
  %859 = call %nyx_string* @nyx_string_concat(%nyx_string* %856, %nyx_string* %858)
  %860 = alloca %nyx_string*
  store %nyx_string* %859, %nyx_string** %860
  %861 = getelementptr [22 x i8], [22 x i8]* @.str60, i32 0, i32 0
  %862 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str60.c, i8* %861)
  %863 = call i64 @nyx_time_ms()
  %864 = call %nyx_string* @nyx_string_from_int(i64 %863)
  %865 = call %nyx_string* @nyx_string_concat(%nyx_string* %862, %nyx_string* %864)
  %866 = getelementptr [4 x i8], [4 x i8]* @.str61, i32 0, i32 0
  %867 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str61.c, i8* %866)
  %868 = call %nyx_string* @nyx_string_concat(%nyx_string* %865, %nyx_string* %867)
  %869 = alloca %nyx_string*
  store %nyx_string* %868, %nyx_string** %869
  %870 = load %nyx_string*, %nyx_string** %869
  %871 = load %nyx_string*, %nyx_string** %860
  %872 = call i8* @nyx_string_to_cstr(%nyx_string* %870)
  %873 = call i8* @nyx_string_to_cstr(%nyx_string* %871)
  %874 = call i1 @nyx_write_file(i8* %872, i8* %873)
  %875 = getelementptr [6 x i8], [6 x i8]* @.str62, i32 0, i32 0
  %876 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str62.c, i8* %875)
  %877 = load %nyx_string*, %nyx_string** %869
  %878 = call %nyx_string* @nyx_string_concat(%nyx_string* %876, %nyx_string* %877)
  %879 = call i8* @nyx_string_to_cstr(%nyx_string* %878)
  %880 = call i64 @nyx_exec_code(i8* %879)
  %881 = alloca i64
  store i64 %880, i64* %881
  %882 = getelementptr [1 x i8], [1 x i8]* @.str63, i32 0, i32 0
  %883 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str63.c, i8* %882)
  %884 = alloca %nyx_string*
  store %nyx_string* %883, %nyx_string** %884
  %885 = load %nyx_string*, %nyx_string** %742
  %886 = call i8* @nyx_string_to_cstr(%nyx_string* %885)
  %887 = call i1 @nyx_file_exists(i8* %886)
  br i1 %887, label %then192, label %else193
then192:
  %888 = load %nyx_string*, %nyx_string** %742
  %889 = call i8* @nyx_string_to_cstr(%nyx_string* %888)
  %890 = call %nyx_string* @nyx_read_file(i8* %889)
  store %nyx_string* %890, %nyx_string** %884
  %891 = getelementptr [7 x i8], [7 x i8]* @.str64, i32 0, i32 0
  %892 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str64.c, i8* %891)
  %893 = load %nyx_string*, %nyx_string** %742
  %894 = call %nyx_string* @nyx_string_concat(%nyx_string* %892, %nyx_string* %893)
  %895 = call i8* @nyx_string_to_cstr(%nyx_string* %894)
  %896 = call %nyx_string* @nyx_exec(i8* %895)
  br label %merge194
else193:
  br label %merge194
merge194:
  %897 = getelementptr [7 x i8], [7 x i8]* @.str65, i32 0, i32 0
  %898 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str65.c, i8* %897)
  %899 = load %nyx_string*, %nyx_string** %869
  %900 = call %nyx_string* @nyx_string_concat(%nyx_string* %898, %nyx_string* %899)
  %901 = call i8* @nyx_string_to_cstr(%nyx_string* %900)
  %902 = call %nyx_string* @nyx_exec(i8* %901)
  %903 = alloca i64
  store i64 0, i64* %903
  %904 = alloca i64
  store i64 0, i64* %904
  %905 = load %nyx_string*, %nyx_string** %884
  %906 = getelementptr [2 x i8], [2 x i8]* @.str66, i32 0, i32 0
  %907 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str66.c, i8* %906)
  %908 = call { i64, i8* }* @nyx_string_split(%nyx_string* %905, %nyx_string* %907)
  %909 = alloca { i64, i8* }*
  store { i64, i8* }* %908, { i64, i8* }** %909
  %910 = alloca i64
  store i64 0, i64* %910
  %911 = getelementptr [6 x i8], [6 x i8]* @.str67, i32 0, i32 0
  %912 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str67.c, i8* %911)
  %913 = alloca %nyx_string*
  store %nyx_string* %912, %nyx_string** %913
  %914 = getelementptr [6 x i8], [6 x i8]* @.str68, i32 0, i32 0
  %915 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str68.c, i8* %914)
  %916 = alloca %nyx_string*
  store %nyx_string* %915, %nyx_string** %916
  %917 = call i8* @llvm.stacksave()
  br label %while_cond195
while_cond195:
  %918 = load i64, i64* %910
  %919 = load { i64, i8* }*, { i64, i8* }** %909
  %920 = call i64 @nyx_array_length({ i64, i8* }* %919)
  %921 = icmp slt i64 %918, %920
  br i1 %921, label %while_body196, label %while_end197
while_body196:
  call void @llvm.stackrestore(i8* %917)
  %922 = load { i64, i8* }*, { i64, i8* }** %909
  %923 = load i64, i64* %910
  %924 = call i64 @nyx_array_get_checked({ i64, i8* }* %922, i64 %923, i64 2)
  %925 = inttoptr i64 %924 to %nyx_string*
  %926 = alloca %nyx_string*
  store %nyx_string* %925, %nyx_string** %926
  %927 = load %nyx_string*, %nyx_string** %926
  %928 = load %nyx_string*, %nyx_string** %913
  %929 = call i1 @nyx_string_contains(%nyx_string* %927, %nyx_string* %928)
  br i1 %929, label %then198, label %else199
then198:
  %930 = load i64, i64* %903
  %931 = add i64 %930, 1
  store i64 %931, i64* %903
  br label %merge200
else199:
  %932 = load %nyx_string*, %nyx_string** %926
  %933 = load %nyx_string*, %nyx_string** %916
  %934 = call i1 @nyx_string_contains(%nyx_string* %932, %nyx_string* %933)
  br i1 %934, label %then201, label %else202
then201:
  %935 = load i64, i64* %904
  %936 = add i64 %935, 1
  store i64 %936, i64* %904
  br label %merge203
else202:
  br label %merge203
merge203:
  br label %merge200
merge200:
  %937 = load i64, i64* %910
  %938 = add i64 %937, 1
  store i64 %938, i64* %910
  br label %while_cond195
while_end197:
  %939 = getelementptr %TestResult, %TestResult* null, i32 1
  %940 = ptrtoint %TestResult* %939 to i64
  %941 = call i8* @GC_malloc(i64 %940)
  %942 = bitcast i8* %941 to %TestResult*
  %943 = load %nyx_string*, %nyx_string** %file.ptr
  %944 = getelementptr %TestResult, %TestResult* %942, i32 0, i32 0
  store %nyx_string* %943, %nyx_string** %944
  %945 = load i64, i64* %903
  %946 = getelementptr %TestResult, %TestResult* %942, i32 0, i32 1
  store i64 %945, i64* %946
  %947 = load i64, i64* %904
  %948 = getelementptr %TestResult, %TestResult* %942, i32 0, i32 2
  store i64 %947, i64* %948
  %949 = load %nyx_string*, %nyx_string** %884
  %950 = getelementptr %TestResult, %TestResult* %942, i32 0, i32 3
  store %nyx_string* %949, %nyx_string** %950
  %951 = alloca i1
  store i1 false, i1* %951
  %952 = load i64, i64* %881
  %953 = icmp eq i64 %952, 0
  br i1 %953, label %sc_and_rhs204, label %sc_and_end205
sc_and_rhs204:
  %954 = load i64, i64* %904
  %955 = icmp eq i64 %954, 0
  store i1 %955, i1* %951
  br label %sc_and_end205
sc_and_end205:
  %956 = load i1, i1* %951
  %957 = getelementptr %TestResult, %TestResult* %942, i32 0, i32 4
  store i1 %956, i1* %957
  %958 = load %TestResult, %TestResult* %942
  ret %TestResult %958
}

define internal i64 @print_result(
%TestResult %result.param, i1 %verbose.param) {
  %result.ptr = alloca %TestResult
  store %TestResult %result.param, %TestResult* %result.ptr
  %verbose.ptr = alloca i1
  store i1 %verbose.param, i1* %verbose.ptr
  %959 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 4
  %960 = load i1, i1* %959
  br i1 %960, label %then206, label %else207
then206:
  %961 = getelementptr [9 x i8], [9 x i8]* @.str69, i32 0, i32 0
  %962 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str69.c, i8* %961)
  %963 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 0
  %964 = load %nyx_string*, %nyx_string** %963
  %965 = call %nyx_string* @nyx_string_concat(%nyx_string* %962, %nyx_string* %964)
  %966 = getelementptr [3 x i8], [3 x i8]* @.str70, i32 0, i32 0
  %967 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str70.c, i8* %966)
  %968 = call %nyx_string* @nyx_string_concat(%nyx_string* %965, %nyx_string* %967)
  %969 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 1
  %970 = load i64, i64* %969
  %971 = call %nyx_string* @nyx_string_from_int(i64 %970)
  %972 = call %nyx_string* @nyx_string_concat(%nyx_string* %968, %nyx_string* %971)
  %973 = getelementptr [8 x i8], [8 x i8]* @.str71, i32 0, i32 0
  %974 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str71.c, i8* %973)
  %975 = call %nyx_string* @nyx_string_concat(%nyx_string* %972, %nyx_string* %974)
  %976 = call i8* @nyx_string_to_cstr(%nyx_string* %975)
  call void @nyx_print_string(i8* %976)
  %977 = load i1, i1* %verbose.ptr
  br i1 %977, label %then209, label %else210
then209:
  %978 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 3
  %979 = load %nyx_string*, %nyx_string** %978
  %980 = call i8* @nyx_string_to_cstr(%nyx_string* %979)
  call void @nyx_print_string(i8* %980)
  br label %merge211
else210:
  br label %merge211
merge211:
  br label %merge208
else207:
  %981 = getelementptr [9 x i8], [9 x i8]* @.str72, i32 0, i32 0
  %982 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str72.c, i8* %981)
  %983 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 0
  %984 = load %nyx_string*, %nyx_string** %983
  %985 = call %nyx_string* @nyx_string_concat(%nyx_string* %982, %nyx_string* %984)
  %986 = getelementptr [3 x i8], [3 x i8]* @.str73, i32 0, i32 0
  %987 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str73.c, i8* %986)
  %988 = call %nyx_string* @nyx_string_concat(%nyx_string* %985, %nyx_string* %987)
  %989 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 1
  %990 = load i64, i64* %989
  %991 = call %nyx_string* @nyx_string_from_int(i64 %990)
  %992 = call %nyx_string* @nyx_string_concat(%nyx_string* %988, %nyx_string* %991)
  %993 = getelementptr [10 x i8], [10 x i8]* @.str74, i32 0, i32 0
  %994 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str74.c, i8* %993)
  %995 = call %nyx_string* @nyx_string_concat(%nyx_string* %992, %nyx_string* %994)
  %996 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 2
  %997 = load i64, i64* %996
  %998 = call %nyx_string* @nyx_string_from_int(i64 %997)
  %999 = call %nyx_string* @nyx_string_concat(%nyx_string* %995, %nyx_string* %998)
  %1000 = getelementptr [9 x i8], [9 x i8]* @.str75, i32 0, i32 0
  %1001 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str75.c, i8* %1000)
  %1002 = call %nyx_string* @nyx_string_concat(%nyx_string* %999, %nyx_string* %1001)
  %1003 = call i8* @nyx_string_to_cstr(%nyx_string* %1002)
  call void @nyx_print_string(i8* %1003)
  %1004 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 3
  %1005 = load %nyx_string*, %nyx_string** %1004
  %1006 = call i8* @nyx_string_to_cstr(%nyx_string* %1005)
  call void @nyx_print_string(i8* %1006)
  br label %merge208
merge208:
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
  %1007 = getelementptr [1 x i8], [1 x i8]* @.str76, i32 0, i32 0
  %1008 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str76.c, i8* %1007)
  %1009 = call i8* @nyx_string_to_cstr(%nyx_string* %1008)
  call void @nyx_print_string(i8* %1009)
  %1010 = getelementptr [36 x i8], [36 x i8]* @.str77, i32 0, i32 0
  %1011 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str77.c, i8* %1010)
  %1012 = call i8* @nyx_string_to_cstr(%nyx_string* %1011)
  call void @nyx_print_string(i8* %1012)
  %1013 = alloca i64
  store i64 0, i64* %1013
  %1014 = alloca i64
  store i64 0, i64* %1014
  %1015 = alloca i64
  store i64 0, i64* %1015
  %1016 = call i8* @llvm.stacksave()
  br label %while_cond212
while_cond212:
  %1017 = load i64, i64* %1015
  %1018 = load { i64, i8* }*, { i64, i8* }** %results.ptr
  %1019 = call i64 @nyx_array_length({ i64, i8* }* %1018)
  %1020 = icmp slt i64 %1017, %1019
  br i1 %1020, label %while_body213, label %while_end214
while_body213:
  call void @llvm.stackrestore(i8* %1016)
  %1021 = load { i64, i8* }*, { i64, i8* }** %results.ptr
  %1022 = load i64, i64* %1015
  %1023 = call i64 @nyx_array_get({ i64, i8* }* %1021, i64 %1022)
  %1024 = inttoptr i64 %1023 to %TestResult*
  %1025 = load %TestResult, %TestResult* %1024
  %1026 = alloca %TestResult
  store %TestResult %1025, %TestResult* %1026
  %1027 = getelementptr %TestResult, %TestResult* %1026, i32 0, i32 4
  %1028 = load i1, i1* %1027
  br i1 %1028, label %then215, label %else216
then215:
  %1029 = load i64, i64* %1013
  %1030 = add i64 %1029, 1
  store i64 %1030, i64* %1013
  br label %merge217
else216:
  %1031 = load i64, i64* %1014
  %1032 = add i64 %1031, 1
  store i64 %1032, i64* %1014
  br label %merge217
merge217:
  %1033 = load i64, i64* %1015
  %1034 = add i64 %1033, 1
  store i64 %1034, i64* %1015
  br label %while_cond212
while_end214:
  %1035 = getelementptr [11 x i8], [11 x i8]* @.str78, i32 0, i32 0
  %1036 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str78.c, i8* %1035)
  %1037 = load i64, i64* %1013
  %1038 = call %nyx_string* @nyx_string_from_int(i64 %1037)
  %1039 = call %nyx_string* @nyx_string_concat(%nyx_string* %1036, %nyx_string* %1038)
  %1040 = getelementptr [10 x i8], [10 x i8]* @.str79, i32 0, i32 0
  %1041 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str79.c, i8* %1040)
  %1042 = call %nyx_string* @nyx_string_concat(%nyx_string* %1039, %nyx_string* %1041)
  %1043 = load i64, i64* %1014
  %1044 = call %nyx_string* @nyx_string_from_int(i64 %1043)
  %1045 = call %nyx_string* @nyx_string_concat(%nyx_string* %1042, %nyx_string* %1044)
  %1046 = getelementptr [10 x i8], [10 x i8]* @.str80, i32 0, i32 0
  %1047 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str80.c, i8* %1046)
  %1048 = call %nyx_string* @nyx_string_concat(%nyx_string* %1045, %nyx_string* %1047)
  %1049 = load { i64, i8* }*, { i64, i8* }** %results.ptr
  %1050 = call i64 @nyx_array_length({ i64, i8* }* %1049)
  %1051 = call %nyx_string* @nyx_string_from_int(i64 %1050)
  %1052 = call %nyx_string* @nyx_string_concat(%nyx_string* %1048, %nyx_string* %1051)
  %1053 = getelementptr [8 x i8], [8 x i8]* @.str81, i32 0, i32 0
  %1054 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str81.c, i8* %1053)
  %1055 = call %nyx_string* @nyx_string_concat(%nyx_string* %1052, %nyx_string* %1054)
  %1056 = call i8* @nyx_string_to_cstr(%nyx_string* %1055)
  call void @nyx_print_string(i8* %1056)
  %1057 = getelementptr [11 x i8], [11 x i8]* @.str82, i32 0, i32 0
  %1058 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str82.c, i8* %1057)
  %1059 = load i64, i64* %total_passed.ptr
  %1060 = call %nyx_string* @nyx_string_from_int(i64 %1059)
  %1061 = call %nyx_string* @nyx_string_concat(%nyx_string* %1058, %nyx_string* %1060)
  %1062 = getelementptr [10 x i8], [10 x i8]* @.str83, i32 0, i32 0
  %1063 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str83.c, i8* %1062)
  %1064 = call %nyx_string* @nyx_string_concat(%nyx_string* %1061, %nyx_string* %1063)
  %1065 = load i64, i64* %total_failed.ptr
  %1066 = call %nyx_string* @nyx_string_from_int(i64 %1065)
  %1067 = call %nyx_string* @nyx_string_concat(%nyx_string* %1064, %nyx_string* %1066)
  %1068 = getelementptr [10 x i8], [10 x i8]* @.str84, i32 0, i32 0
  %1069 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str84.c, i8* %1068)
  %1070 = call %nyx_string* @nyx_string_concat(%nyx_string* %1067, %nyx_string* %1069)
  %1071 = load i64, i64* %total_passed.ptr
  %1072 = load i64, i64* %total_failed.ptr
  %1073 = add i64 %1071, %1072
  %1074 = call %nyx_string* @nyx_string_from_int(i64 %1073)
  %1075 = call %nyx_string* @nyx_string_concat(%nyx_string* %1070, %nyx_string* %1074)
  %1076 = getelementptr [8 x i8], [8 x i8]* @.str85, i32 0, i32 0
  %1077 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str85.c, i8* %1076)
  %1078 = call %nyx_string* @nyx_string_concat(%nyx_string* %1075, %nyx_string* %1077)
  %1079 = call i8* @nyx_string_to_cstr(%nyx_string* %1078)
  call void @nyx_print_string(i8* %1079)
  %1080 = alloca i1
  store i1 false, i1* %1080
  %1081 = load i64, i64* %total_failed.ptr
  %1082 = icmp eq i64 %1081, 0
  br i1 %1082, label %sc_and_rhs218, label %sc_and_end219
sc_and_rhs218:
  %1083 = load i64, i64* %1014
  %1084 = icmp eq i64 %1083, 0
  store i1 %1084, i1* %1080
  br label %sc_and_end219
sc_and_end219:
  %1085 = load i1, i1* %1080
  br i1 %1085, label %then220, label %else221
then220:
  %1086 = getelementptr [27 x i8], [27 x i8]* @.str86, i32 0, i32 0
  %1087 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str86.c, i8* %1086)
  %1088 = call i8* @nyx_string_to_cstr(%nyx_string* %1087)
  call void @nyx_print_string(i8* %1088)
  br label %merge222
else221:
  %1089 = getelementptr [28 x i8], [28 x i8]* @.str87, i32 0, i32 0
  %1090 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str87.c, i8* %1089)
  %1091 = call i8* @nyx_string_to_cstr(%nyx_string* %1090)
  call void @nyx_print_string(i8* %1091)
  br label %merge222
merge222:
  %1092 = getelementptr [36 x i8], [36 x i8]* @.str88, i32 0, i32 0
  %1093 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str88.c, i8* %1092)
  %1094 = call i8* @nyx_string_to_cstr(%nyx_string* %1093)
  call void @nyx_print_string(i8* %1094)
  ret i64 0
}

define i64 @main(
i32 %argc, i8** %argv) {
  call void @nyx_set_args(i32 %argc, i8** %argv)
  %1095 = getelementptr [24 x i8], [24 x i8]* @.str89, i32 0, i32 0
  %1096 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str89.c, i8* %1095)
  %1097 = call i8* @nyx_string_to_cstr(%nyx_string* %1096)
  call void @nyx_print_string(i8* %1097)
  %1098 = call %TestConfig @load_test_config()
  %1099 = alloca %TestConfig
  store %TestConfig %1098, %TestConfig* %1099
  %1100 = call { i64, i8* }* @nyx_get_args()
  %1101 = alloca { i64, i8* }*
  store { i64, i8* }* %1100, { i64, i8* }** %1101
  %1102 = alloca i64
  store i64 1, i64* %1102
  %1103 = getelementptr [9 x i8], [9 x i8]* @.str90, i32 0, i32 0
  %1104 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str90.c, i8* %1103)
  %1105 = alloca %nyx_string*
  store %nyx_string* %1104, %nyx_string** %1105
  %1106 = getelementptr [10 x i8], [10 x i8]* @.str91, i32 0, i32 0
  %1107 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str91.c, i8* %1106)
  %1108 = alloca %nyx_string*
  store %nyx_string* %1107, %nyx_string** %1108
  %1109 = getelementptr [3 x i8], [3 x i8]* @.str92, i32 0, i32 0
  %1110 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str92.c, i8* %1109)
  %1111 = alloca %nyx_string*
  store %nyx_string* %1110, %nyx_string** %1111
  %1112 = getelementptr [10 x i8], [10 x i8]* @.str93, i32 0, i32 0
  %1113 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str93.c, i8* %1112)
  %1114 = alloca %nyx_string*
  store %nyx_string* %1113, %nyx_string** %1114
  %1115 = getelementptr [4 x i8], [4 x i8]* @.str94, i32 0, i32 0
  %1116 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str94.c, i8* %1115)
  %1117 = alloca %nyx_string*
  store %nyx_string* %1116, %nyx_string** %1117
  %1118 = call i8* @llvm.stacksave()
  br label %while_cond223
while_cond223:
  %1119 = load i64, i64* %1102
  %1120 = load { i64, i8* }*, { i64, i8* }** %1101
  %1121 = call i64 @nyx_array_length({ i64, i8* }* %1120)
  %1122 = icmp slt i64 %1119, %1121
  br i1 %1122, label %while_body224, label %while_end225
while_body224:
  call void @llvm.stackrestore(i8* %1118)
  %1123 = load { i64, i8* }*, { i64, i8* }** %1101
  %1124 = load i64, i64* %1102
  %1125 = call i64 @nyx_array_get_checked({ i64, i8* }* %1123, i64 %1124, i64 2)
  %1126 = inttoptr i64 %1125 to %nyx_string*
  %1127 = alloca %nyx_string*
  store %nyx_string* %1126, %nyx_string** %1127
  %1128 = alloca i1
  store i1 false, i1* %1128
  %1129 = load %nyx_string*, %nyx_string** %1127
  %1130 = load %nyx_string*, %nyx_string** %1105
  %1131 = call i1 @nyx_string_equals(%nyx_string* %1129, %nyx_string* %1130)
  br i1 %1131, label %sc_and_rhs226, label %sc_and_end227
sc_and_rhs226:
  %1132 = load i64, i64* %1102
  %1133 = add i64 %1132, 1
  %1134 = load { i64, i8* }*, { i64, i8* }** %1101
  %1135 = call i64 @nyx_array_length({ i64, i8* }* %1134)
  %1136 = icmp slt i64 %1133, %1135
  store i1 %1136, i1* %1128
  br label %sc_and_end227
sc_and_end227:
  %1137 = load i1, i1* %1128
  br i1 %1137, label %then228, label %else229
then228:
  %1138 = load i64, i64* %1102
  %1139 = add i64 %1138, 1
  store i64 %1139, i64* %1102
  %1140 = load { i64, i8* }*, { i64, i8* }** %1101
  %1141 = load i64, i64* %1102
  %1142 = call i64 @nyx_array_get_checked({ i64, i8* }* %1140, i64 %1141, i64 2)
  %1143 = inttoptr i64 %1142 to %nyx_string*
  %1144 = alloca %nyx_string*
  store %nyx_string* %1143, %nyx_string** %1144
  %1145 = load %nyx_string*, %nyx_string** %1144
  %1146 = getelementptr %TestConfig, %TestConfig* %1099, i32 0, i32 2
  store %nyx_string* %1145, %nyx_string** %1146
  br label %merge230
else229:
  %1147 = alloca i1
  store i1 true, i1* %1147
  %1148 = load %nyx_string*, %nyx_string** %1127
  %1149 = load %nyx_string*, %nyx_string** %1108
  %1150 = call i1 @nyx_string_equals(%nyx_string* %1148, %nyx_string* %1149)
  br i1 %1150, label %sc_or_end232, label %sc_or_rhs231
sc_or_rhs231:
  %1151 = load %nyx_string*, %nyx_string** %1127
  %1152 = load %nyx_string*, %nyx_string** %1111
  %1153 = call i1 @nyx_string_equals(%nyx_string* %1151, %nyx_string* %1152)
  store i1 %1153, i1* %1147
  br label %sc_or_end232
sc_or_end232:
  %1154 = load i1, i1* %1147
  br i1 %1154, label %then233, label %else234
then233:
  %1155 = getelementptr %TestConfig, %TestConfig* %1099, i32 0, i32 3
  store i1 1, i1* %1155
  br label %merge235
else234:
  %1156 = alloca i1
  store i1 false, i1* %1156
  %1157 = load %nyx_string*, %nyx_string** %1127
  %1158 = load %nyx_string*, %nyx_string** %1114
  %1159 = call i1 @nyx_string_equals(%nyx_string* %1157, %nyx_string* %1158)
  br i1 %1159, label %sc_and_rhs236, label %sc_and_end237
sc_and_rhs236:
  %1160 = load i64, i64* %1102
  %1161 = add i64 %1160, 1
  %1162 = load { i64, i8* }*, { i64, i8* }** %1101
  %1163 = call i64 @nyx_array_length({ i64, i8* }* %1162)
  %1164 = icmp slt i64 %1161, %1163
  store i1 %1164, i1* %1156
  br label %sc_and_end237
sc_and_end237:
  %1165 = load i1, i1* %1156
  br i1 %1165, label %then238, label %else239
then238:
  %1166 = load i64, i64* %1102
  %1167 = add i64 %1166, 1
  store i64 %1167, i64* %1102
  %1168 = load { i64, i8* }*, { i64, i8* }** %1101
  %1169 = load i64, i64* %1102
  %1170 = call i64 @nyx_array_get_checked({ i64, i8* }* %1168, i64 %1169, i64 2)
  %1171 = inttoptr i64 %1170 to %nyx_string*
  %1172 = alloca %nyx_string*
  store %nyx_string* %1171, %nyx_string** %1172
  %1173 = load %nyx_string*, %nyx_string** %1172
  %1174 = call i64 @nyx_string_to_int(%nyx_string* %1173)
  %1175 = getelementptr %TestConfig, %TestConfig* %1099, i32 0, i32 1
  store i64 %1174, i64* %1175
  br label %merge240
else239:
  %1176 = load %nyx_string*, %nyx_string** %1127
  %1177 = load %nyx_string*, %nyx_string** %1117
  %1178 = call i1 @nyx_string_ends_with(%nyx_string* %1176, %nyx_string* %1177)
  br i1 %1178, label %then241, label %else242
then241:
  %1179 = load %nyx_string*, %nyx_string** %1127
  %1180 = getelementptr %TestConfig, %TestConfig* %1099, i32 0, i32 4
  store %nyx_string* %1179, %nyx_string** %1180
  br label %merge243
else242:
  br label %merge243
merge243:
  br label %merge240
merge240:
  br label %merge235
merge235:
  br label %merge230
merge230:
  %1181 = load i64, i64* %1102
  %1182 = add i64 %1181, 1
  store i64 %1182, i64* %1102
  br label %while_cond223
while_end225:
  %1183 = call { i64, i8* }* @nyx_array_new_ptr()
  %1184 = alloca { i64, i8* }*
  store { i64, i8* }* %1183, { i64, i8* }** %1184
  %1185 = getelementptr %TestConfig, %TestConfig* %1099, i32 0, i32 4
  %1186 = load %nyx_string*, %nyx_string** %1185
  %1187 = getelementptr [1 x i8], [1 x i8]* @.str95, i32 0, i32 0
  %1188 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str95.c, i8* %1187)
  %1189 = call i1 @nyx_string_equals(%nyx_string* %1186, %nyx_string* %1188)
  %1190 = xor i1 %1189, true
  br i1 %1190, label %then244, label %else245
then244:
  %1191 = getelementptr %TestConfig, %TestConfig* %1099, i32 0, i32 4
  %1192 = load %nyx_string*, %nyx_string** %1191
  %1193 = call i8* @nyx_string_to_cstr(%nyx_string* %1192)
  %1194 = call i1 @nyx_file_exists(i8* %1193)
  %1195 = xor i1 %1194, true
  br i1 %1195, label %then247, label %else248
then247:
  %1196 = getelementptr [24 x i8], [24 x i8]* @.str96, i32 0, i32 0
  %1197 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str96.c, i8* %1196)
  %1198 = getelementptr %TestConfig, %TestConfig* %1099, i32 0, i32 4
  %1199 = load %nyx_string*, %nyx_string** %1198
  %1200 = call %nyx_string* @nyx_string_concat(%nyx_string* %1197, %nyx_string* %1199)
  %1201 = call i8* @nyx_string_to_cstr(%nyx_string* %1200)
  call void @nyx_print_string(i8* %1201)
  ret i64 1
else248:
  br label %merge249
merge249:
  %1202 = load { i64, i8* }*, { i64, i8* }** %1184
  %1203 = getelementptr %TestConfig, %TestConfig* %1099, i32 0, i32 4
  %1204 = load %nyx_string*, %nyx_string** %1203
  %1205 = ptrtoint %nyx_string* %1204 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1202, i64 %1205, i64 2)
  br label %merge246
else245:
  %1206 = load %TestConfig, %TestConfig* %1099
  %1207 = call { i64, i8* }* @discover_tests(%TestConfig %1206)
  store { i64, i8* }* %1207, { i64, i8* }** %1184
  br label %merge246
merge246:
  %1208 = load { i64, i8* }*, { i64, i8* }** %1184
  %1209 = call i64 @nyx_array_length({ i64, i8* }* %1208)
  %1210 = icmp eq i64 %1209, 0
  br i1 %1210, label %then250, label %else251
then250:
  %1211 = getelementptr [23 x i8], [23 x i8]* @.str97, i32 0, i32 0
  %1212 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str97.c, i8* %1211)
  %1213 = call i8* @nyx_string_to_cstr(%nyx_string* %1212)
  call void @nyx_print_string(i8* %1213)
  %1214 = getelementptr %TestConfig, %TestConfig* %1099, i32 0, i32 2
  %1215 = load %nyx_string*, %nyx_string** %1214
  %1216 = getelementptr [1 x i8], [1 x i8]* @.str98, i32 0, i32 0
  %1217 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str98.c, i8* %1216)
  %1218 = call i1 @nyx_string_equals(%nyx_string* %1215, %nyx_string* %1217)
  %1219 = xor i1 %1218, true
  br i1 %1219, label %then253, label %else254
then253:
  %1220 = getelementptr [12 x i8], [12 x i8]* @.str99, i32 0, i32 0
  %1221 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str99.c, i8* %1220)
  %1222 = getelementptr %TestConfig, %TestConfig* %1099, i32 0, i32 2
  %1223 = load %nyx_string*, %nyx_string** %1222
  %1224 = call %nyx_string* @nyx_string_concat(%nyx_string* %1221, %nyx_string* %1223)
  %1225 = getelementptr [2 x i8], [2 x i8]* @.str100, i32 0, i32 0
  %1226 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str100.c, i8* %1225)
  %1227 = call %nyx_string* @nyx_string_concat(%nyx_string* %1224, %nyx_string* %1226)
  %1228 = call i8* @nyx_string_to_cstr(%nyx_string* %1227)
  call void @nyx_print_string(i8* %1228)
  br label %merge255
else254:
  br label %merge255
merge255:
  %1229 = getelementptr [14 x i8], [14 x i8]* @.str101, i32 0, i32 0
  %1230 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str101.c, i8* %1229)
  %1231 = getelementptr %TestConfig, %TestConfig* %1099, i32 0, i32 0
  %1232 = load %nyx_string*, %nyx_string** %1231
  %1233 = call %nyx_string* @nyx_string_concat(%nyx_string* %1230, %nyx_string* %1232)
  %1234 = getelementptr [2 x i8], [2 x i8]* @.str102, i32 0, i32 0
  %1235 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str102.c, i8* %1234)
  %1236 = call %nyx_string* @nyx_string_concat(%nyx_string* %1233, %nyx_string* %1235)
  %1237 = call i8* @nyx_string_to_cstr(%nyx_string* %1236)
  call void @nyx_print_string(i8* %1237)
  ret i64 0
else251:
  br label %merge252
merge252:
  %1238 = getelementptr [9 x i8], [9 x i8]* @.str103, i32 0, i32 0
  %1239 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str103.c, i8* %1238)
  %1240 = load { i64, i8* }*, { i64, i8* }** %1184
  %1241 = call i64 @nyx_array_length({ i64, i8* }* %1240)
  %1242 = call %nyx_string* @nyx_string_from_int(i64 %1241)
  %1243 = call %nyx_string* @nyx_string_concat(%nyx_string* %1239, %nyx_string* %1242)
  %1244 = getelementptr [14 x i8], [14 x i8]* @.str104, i32 0, i32 0
  %1245 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str104.c, i8* %1244)
  %1246 = call %nyx_string* @nyx_string_concat(%nyx_string* %1243, %nyx_string* %1245)
  %1247 = call i8* @nyx_string_to_cstr(%nyx_string* %1246)
  call void @nyx_print_string(i8* %1247)
  %1248 = getelementptr %TestConfig, %TestConfig* %1099, i32 0, i32 2
  %1249 = load %nyx_string*, %nyx_string** %1248
  %1250 = getelementptr [1 x i8], [1 x i8]* @.str105, i32 0, i32 0
  %1251 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str105.c, i8* %1250)
  %1252 = call i1 @nyx_string_equals(%nyx_string* %1249, %nyx_string* %1251)
  %1253 = xor i1 %1252, true
  br i1 %1253, label %then256, label %else257
then256:
  %1254 = getelementptr [12 x i8], [12 x i8]* @.str106, i32 0, i32 0
  %1255 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str106.c, i8* %1254)
  %1256 = getelementptr %TestConfig, %TestConfig* %1099, i32 0, i32 2
  %1257 = load %nyx_string*, %nyx_string** %1256
  %1258 = call %nyx_string* @nyx_string_concat(%nyx_string* %1255, %nyx_string* %1257)
  %1259 = getelementptr [2 x i8], [2 x i8]* @.str107, i32 0, i32 0
  %1260 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str107.c, i8* %1259)
  %1261 = call %nyx_string* @nyx_string_concat(%nyx_string* %1258, %nyx_string* %1260)
  %1262 = call i8* @nyx_string_to_cstr(%nyx_string* %1261)
  call void @nyx_print_string(i8* %1262)
  br label %merge258
else257:
  br label %merge258
merge258:
  %1263 = getelementptr [1 x i8], [1 x i8]* @.str108, i32 0, i32 0
  %1264 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str108.c, i8* %1263)
  %1265 = call i8* @nyx_string_to_cstr(%nyx_string* %1264)
  call void @nyx_print_string(i8* %1265)
  %1266 = call { i64, i8* }* @nyx_array_new_ptr()
  %1267 = alloca { i64, i8* }*
  store { i64, i8* }* %1266, { i64, i8* }** %1267
  %1268 = alloca i64
  store i64 0, i64* %1268
  %1269 = alloca i64
  store i64 0, i64* %1269
  %1270 = alloca i64
  store i64 0, i64* %1270
  %1271 = call i8* @llvm.stacksave()
  br label %while_cond259
while_cond259:
  %1272 = load i64, i64* %1270
  %1273 = load { i64, i8* }*, { i64, i8* }** %1184
  %1274 = call i64 @nyx_array_length({ i64, i8* }* %1273)
  %1275 = icmp slt i64 %1272, %1274
  br i1 %1275, label %while_body260, label %while_end261
while_body260:
  call void @llvm.stackrestore(i8* %1271)
  %1276 = load { i64, i8* }*, { i64, i8* }** %1184
  %1277 = load i64, i64* %1270
  %1278 = call i64 @nyx_array_get_checked({ i64, i8* }* %1276, i64 %1277, i64 2)
  %1279 = inttoptr i64 %1278 to %nyx_string*
  %1280 = alloca %nyx_string*
  store %nyx_string* %1279, %nyx_string** %1280
  %1281 = load %nyx_string*, %nyx_string** %1280
  %1282 = call i1 @file_has_test_blocks(%nyx_string* %1281)
  %1283 = xor i1 %1282, true
  br i1 %1283, label %then262, label %else263
then262:
  %1284 = load i64, i64* %1270
  %1285 = add i64 %1284, 1
  store i64 %1285, i64* %1270
  br label %merge264
else263:
  %1286 = load %nyx_string*, %nyx_string** %1280
  %1287 = load %TestConfig, %TestConfig* %1099
  %1288 = call %TestResult @compile_and_run(%nyx_string* %1286, %TestConfig %1287)
  %1289 = alloca %TestResult
  store %TestResult %1288, %TestResult* %1289
  %1290 = load { i64, i8* }*, { i64, i8* }** %1267
  %1291 = load %TestResult, %TestResult* %1289
  %1292 = getelementptr %TestResult, %TestResult* null, i32 1
  %1293 = ptrtoint %TestResult* %1292 to i64
  %1294 = call i8* @GC_malloc(i64 %1293)
  %1295 = bitcast i8* %1294 to %TestResult*
  store %TestResult %1291, %TestResult* %1295
  %1296 = ptrtoint %TestResult* %1295 to i64
  call void @nyx_array_push({ i64, i8* }* %1290, i64 %1296)
  %1297 = load i64, i64* %1268
  %1298 = getelementptr %TestResult, %TestResult* %1289, i32 0, i32 1
  %1299 = load i64, i64* %1298
  %1300 = add i64 %1297, %1299
  store i64 %1300, i64* %1268
  %1301 = load i64, i64* %1269
  %1302 = getelementptr %TestResult, %TestResult* %1289, i32 0, i32 2
  %1303 = load i64, i64* %1302
  %1304 = add i64 %1301, %1303
  store i64 %1304, i64* %1269
  %1305 = load %TestResult, %TestResult* %1289
  %1306 = getelementptr %TestConfig, %TestConfig* %1099, i32 0, i32 3
  %1307 = load i1, i1* %1306
  %1308 = call i64 @print_result(%TestResult %1305, i1 %1307)
  %1309 = load i64, i64* %1270
  %1310 = add i64 %1309, 1
  store i64 %1310, i64* %1270
  br label %merge264
merge264:
  br label %while_cond259
while_end261:
  %1311 = load { i64, i8* }*, { i64, i8* }** %1267
  %1312 = call i64 @nyx_array_length({ i64, i8* }* %1311)
  %1313 = icmp eq i64 %1312, 0
  br i1 %1313, label %then265, label %else266
then265:
  %1314 = getelementptr [35 x i8], [35 x i8]* @.str109, i32 0, i32 0
  %1315 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str109.c, i8* %1314)
  %1316 = call i8* @nyx_string_to_cstr(%nyx_string* %1315)
  call void @nyx_print_string(i8* %1316)
  ret i64 0
else266:
  br label %merge267
merge267:
  %1317 = load { i64, i8* }*, { i64, i8* }** %1267
  %1318 = load i64, i64* %1268
  %1319 = load i64, i64* %1269
  %1320 = call i64 @print_summary({ i64, i8* }* %1317, i64 %1318, i64 %1319)
  %1321 = alloca i64
  store i64 0, i64* %1321
  %1322 = alloca i64
  store i64 0, i64* %1322
  %1323 = call i8* @llvm.stacksave()
  br label %while_cond268
while_cond268:
  %1324 = load i64, i64* %1322
  %1325 = load { i64, i8* }*, { i64, i8* }** %1267
  %1326 = call i64 @nyx_array_length({ i64, i8* }* %1325)
  %1327 = icmp slt i64 %1324, %1326
  br i1 %1327, label %while_body269, label %while_end270
while_body269:
  call void @llvm.stackrestore(i8* %1323)
  %1328 = load { i64, i8* }*, { i64, i8* }** %1267
  %1329 = load i64, i64* %1322
  %1330 = call i64 @nyx_array_get({ i64, i8* }* %1328, i64 %1329)
  %1331 = inttoptr i64 %1330 to %TestResult*
  %1332 = load %TestResult, %TestResult* %1331
  %1333 = alloca %TestResult
  store %TestResult %1332, %TestResult* %1333
  %1334 = getelementptr %TestResult, %TestResult* %1333, i32 0, i32 4
  %1335 = load i1, i1* %1334
  %1336 = xor i1 %1335, true
  br i1 %1336, label %then271, label %else272
then271:
  %1337 = load i64, i64* %1321
  %1338 = add i64 %1337, 1
  store i64 %1338, i64* %1321
  br label %merge273
else272:
  br label %merge273
merge273:
  %1339 = load i64, i64* %1322
  %1340 = add i64 %1339, 1
  store i64 %1340, i64* %1322
  br label %while_cond268
while_end270:
  %1341 = alloca i1
  store i1 true, i1* %1341
  %1342 = load i64, i64* %1269
  %1343 = icmp sgt i64 %1342, 0
  br i1 %1343, label %sc_or_end275, label %sc_or_rhs274
sc_or_rhs274:
  %1344 = load i64, i64* %1321
  %1345 = icmp sgt i64 %1344, 0
  store i1 %1345, i1* %1341
  br label %sc_or_end275
sc_or_end275:
  %1346 = load i1, i1* %1341
  br i1 %1346, label %then276, label %else277
then276:
  ret i64 1
else277:
  br label %merge278
merge278:
  ret i64 0
}


attributes #0 = { returns_twice }

