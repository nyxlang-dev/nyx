source_filename = "script.nx"
target triple = "x86_64-pc-linux-gnu"

%TestConfig = type { %nyx_string*, i64, %nyx_string*, i1, %nyx_string* }

%TestResult = type { %nyx_string*, i64, i64, %nyx_string*, i1 }

@.str0 = private unnamed_addr constant [32 x i8] c"mul_div_round: division by zero\00"
@.str0.c = internal global %nyx_string* null
@.str1 = private unnamed_addr constant [36 x i8] c"mul_div_round: result overflows int\00"
@.str1.c = internal global %nyx_string* null
@.str2 = private unnamed_addr constant [1 x i8] c"\00"
@.str2.c = internal global %nyx_string* null
@.str3 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str3.c = internal global %nyx_string* null
@.str4 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str4.c = internal global %nyx_string* null
@.str5 = private unnamed_addr constant [1 x i8] c"\00"
@.str5.c = internal global %nyx_string* null
@.str6 = private unnamed_addr constant [6 x i8] c"tests\00"
@.str6.c = internal global %nyx_string* null
@.str7 = private unnamed_addr constant [1 x i8] c"\00"
@.str7.c = internal global %nyx_string* null
@.str8 = private unnamed_addr constant [1 x i8] c"\00"
@.str8.c = internal global %nyx_string* null
@.str9 = private unnamed_addr constant [9 x i8] c"nyx.toml\00"
@.str9.c = internal global %nyx_string* null
@.str10 = private unnamed_addr constant [9 x i8] c"nyx.toml\00"
@.str10.c = internal global %nyx_string* null
@.str11 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str11.c = internal global %nyx_string* null
@.str12 = private unnamed_addr constant [7 x i8] c"[test]\00"
@.str12.c = internal global %nyx_string* null
@.str13 = private unnamed_addr constant [2 x i8] c"[\00"
@.str13.c = internal global %nyx_string* null
@.str14 = private unnamed_addr constant [4 x i8] c"dir\00"
@.str14.c = internal global %nyx_string* null
@.str15 = private unnamed_addr constant [8 x i8] c"timeout\00"
@.str15.c = internal global %nyx_string* null
@.str16 = private unnamed_addr constant [4 x i8] c".nx\00"
@.str16.c = internal global %nyx_string* null
@.str17 = private unnamed_addr constant [2 x i8] c"/\00"
@.str17.c = internal global %nyx_string* null
@.str18 = private unnamed_addr constant [1 x i8] c"\00"
@.str18.c = internal global %nyx_string* null
@.str19 = private unnamed_addr constant [4 x i8] c"src\00"
@.str19.c = internal global %nyx_string* null
@.str20 = private unnamed_addr constant [4 x i8] c"src\00"
@.str20.c = internal global %nyx_string* null
@.str21 = private unnamed_addr constant [9 x i8] c"_test.nx\00"
@.str21.c = internal global %nyx_string* null
@.str22 = private unnamed_addr constant [5 x i8] c"src/\00"
@.str22.c = internal global %nyx_string* null
@.str23 = private unnamed_addr constant [1 x i8] c"\00"
@.str23.c = internal global %nyx_string* null
@.str24 = private unnamed_addr constant [7 x i8] c"test \22\00"
@.str24.c = internal global %nyx_string* null
@.str25 = private unnamed_addr constant [9 x i8] c"NYX_HOME\00"
@.str25.c = internal global %nyx_string* null
@.str26 = private unnamed_addr constant [1 x i8] c"\00"
@.str26.c = internal global %nyx_string* null
@.str27 = private unnamed_addr constant [24 x i8] c"ERROR: NYX_HOME not set\00"
@.str27.c = internal global %nyx_string* null
@.str28 = private unnamed_addr constant [4 x i8] c"PWD\00"
@.str28.c = internal global %nyx_string* null
@.str29 = private unnamed_addr constant [19 x i8] c"/tmp/nyx_test_out_\00"
@.str29.c = internal global %nyx_string* null
@.str30 = private unnamed_addr constant [5 x i8] c".txt\00"
@.str30.c = internal global %nyx_string* null
@.str31 = private unnamed_addr constant [19 x i8] c"/tmp/nyx_test_bin_\00"
@.str31.c = internal global %nyx_string* null
@.str32 = private unnamed_addr constant [20 x i8] c"#!/bin/bash\0aset -e\0a\00"
@.str32.c = internal global %nyx_string* null
@.str33 = private unnamed_addr constant [5 x i8] c"cd \22\00"
@.str33.c = internal global %nyx_string* null
@.str34 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str34.c = internal global %nyx_string* null
@.str35 = private unnamed_addr constant [5 x i8] c"cp \22\00"
@.str35.c = internal global %nyx_string* null
@.str36 = private unnamed_addr constant [2 x i8] c"/\00"
@.str36.c = internal global %nyx_string* null
@.str37 = private unnamed_addr constant [13 x i8] c"\22 script.nx\0a\00"
@.str37.c = internal global %nyx_string* null
@.str38 = private unnamed_addr constant [43 x i8] c"env -u NYX_SKIP_SEMANTIC NYX_PROJECT_DIR=\22\00"
@.str38.c = internal global %nyx_string* null
@.str39 = private unnamed_addr constant [21 x i8] c"\22 ./nyx_bootstrap > \00"
@.str39.c = internal global %nyx_string* null
@.str40 = private unnamed_addr constant [7 x i8] c" 2>&1\0a\00"
@.str40.c = internal global %nyx_string* null
@.str41 = private unnamed_addr constant [50 x i8] c"clang -O2 -Wno-deprecated-declarations script.ll \00"
@.str41.c = internal global %nyx_string* null
@.str42 = private unnamed_addr constant [62 x i8] c"runtime/runtime.c runtime/strings.c runtime/runtime-arrays.c \00"
@.str42.c = internal global %nyx_string* null
@.str43 = private unnamed_addr constant [54 x i8] c"runtime/maps.c runtime/file-io.c runtime/iterators.c \00"
@.str43.c = internal global %nyx_string* null
@.str44 = private unnamed_addr constant [48 x i8] c"runtime/net.c runtime/thread.c runtime/regex.c \00"
@.str44.c = internal global %nyx_string* null
@.str45 = private unnamed_addr constant [47 x i8] c"runtime/time.c runtime/crypto.c runtime/tls.c \00"
@.str45.c = internal global %nyx_string* null
@.str46 = private unnamed_addr constant [67 x i8] c"runtime/scheduler.c runtime/event_loop.c runtime/sqlite_adapter.c \00"
@.str46.c = internal global %nyx_string* null
@.str47 = private unnamed_addr constant [51 x i8] c"runtime/compress.c runtime/random.c runtime/url.c \00"
@.str47.c = internal global %nyx_string* null
@.str48 = private unnamed_addr constant [91 x i8] c"runtime/msgpack.c runtime/websocket.c runtime/persist.c runtime/http2.c runtime/process.c \00"
@.str48.c = internal global %nyx_string* null
@.str49 = private unnamed_addr constant [23 x i8] c"runtime/os/os_posix.c \00"
@.str49.c = internal global %nyx_string* null
@.str50 = private unnamed_addr constant [44 x i8] c"-lgc -lpthread -ldl -lm -lssl -lcrypto -lz \00"
@.str50.c = internal global %nyx_string* null
@.str51 = private unnamed_addr constant [4 x i8] c"-o \00"
@.str51.c = internal global %nyx_string* null
@.str52 = private unnamed_addr constant [6 x i8] c" 2>> \00"
@.str52.c = internal global %nyx_string* null
@.str53 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str53.c = internal global %nyx_string* null
@.str54 = private unnamed_addr constant [9 x i8] c"timeout \00"
@.str54.c = internal global %nyx_string* null
@.str55 = private unnamed_addr constant [2 x i8] c" \00"
@.str55.c = internal global %nyx_string* null
@.str56 = private unnamed_addr constant [4 x i8] c" > \00"
@.str56.c = internal global %nyx_string* null
@.str57 = private unnamed_addr constant [7 x i8] c" 2>&1\0a\00"
@.str57.c = internal global %nyx_string* null
@.str58 = private unnamed_addr constant [14 x i8] c"EXIT_CODE=$?\0a\00"
@.str58.c = internal global %nyx_string* null
@.str59 = private unnamed_addr constant [7 x i8] c"rm -f \00"
@.str59.c = internal global %nyx_string* null
@.str60 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str60.c = internal global %nyx_string* null
@.str61 = private unnamed_addr constant [27 x i8] c"rm -f script.nx script.ll\0a\00"
@.str61.c = internal global %nyx_string* null
@.str62 = private unnamed_addr constant [17 x i8] c"exit $EXIT_CODE\0a\00"
@.str62.c = internal global %nyx_string* null
@.str63 = private unnamed_addr constant [22 x i8] c"/tmp/nyx_test_script_\00"
@.str63.c = internal global %nyx_string* null
@.str64 = private unnamed_addr constant [4 x i8] c".sh\00"
@.str64.c = internal global %nyx_string* null
@.str65 = private unnamed_addr constant [6 x i8] c"bash \00"
@.str65.c = internal global %nyx_string* null
@.str66 = private unnamed_addr constant [1 x i8] c"\00"
@.str66.c = internal global %nyx_string* null
@.str67 = private unnamed_addr constant [7 x i8] c"rm -f \00"
@.str67.c = internal global %nyx_string* null
@.str68 = private unnamed_addr constant [7 x i8] c"rm -f \00"
@.str68.c = internal global %nyx_string* null
@.str69 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str69.c = internal global %nyx_string* null
@.str70 = private unnamed_addr constant [6 x i8] c"PASS:\00"
@.str70.c = internal global %nyx_string* null
@.str71 = private unnamed_addr constant [6 x i8] c"FAIL:\00"
@.str71.c = internal global %nyx_string* null
@.str72 = private unnamed_addr constant [9 x i8] c"  PASS  \00"
@.str72.c = internal global %nyx_string* null
@.str73 = private unnamed_addr constant [3 x i8] c" (\00"
@.str73.c = internal global %nyx_string* null
@.str74 = private unnamed_addr constant [8 x i8] c" tests)\00"
@.str74.c = internal global %nyx_string* null
@.str75 = private unnamed_addr constant [9 x i8] c"  FAIL  \00"
@.str75.c = internal global %nyx_string* null
@.str76 = private unnamed_addr constant [3 x i8] c" (\00"
@.str76.c = internal global %nyx_string* null
@.str77 = private unnamed_addr constant [10 x i8] c" passed, \00"
@.str77.c = internal global %nyx_string* null
@.str78 = private unnamed_addr constant [9 x i8] c" failed)\00"
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
declare %nyx_string* @nyx_intern_ptr(%nyx_string**, i8*, i64)
declare %nyx_string* @nyx_string_from_ptr(i8*, i64)
declare i8*           @nyx_string_to_cstr(%nyx_string*)
declare %nyx_string* @nyx_string_concat(%nyx_string*, %nyx_string*)
declare %nyx_string* @nyx_string_from_int(i64)
declare %nyx_string* @nyx_string_from_char(i8)
declare %nyx_string* @nyx_string_from_bool(i64)
declare i64 @nyx_bool_from_text(%nyx_string*)

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
declare %nyx_string* @nyx_hmac_sha256_raw(%nyx_string*, %nyx_string*)
declare %nyx_string* @nyx_sha256_raw(%nyx_string*)
declare %nyx_string* @nyx_pbkdf2_hmac_sha256(%nyx_string*, %nyx_string*, i64, i64)
declare i64 @nyx_constant_time_eq(%nyx_string*, %nyx_string*)
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
declare i64 @nyx_slot_as_int_checked({ i64, i8* }*, i64)
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
declare i32 @nyx_string_compare(%nyx_string*, %nyx_string*)
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
declare void @nyx_assert_eq_int(i64, i64, i8*)
declare void @nyx_assert_eq_str(%nyx_string*, %nyx_string*, i8*)
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

@INT_MIN = global i64 0


declare i64 @nyx_mul_div_round(i64, i64, i64, i64)
declare i64 @nyx_mul_div_round_status()
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

define i8* @checked_add(
i64 %a.param, i64 %b.param) {
  %a.ptr = alloca i64
  store i64 %a.param, i64* %a.ptr
  %b.ptr = alloca i64
  store i64 %b.param, i64* %b.ptr
  %94 = load i64, i64* %a.ptr
  %95 = load i64, i64* %b.ptr
  %96 = add i64 %94, %95
  %97 = alloca i64
  store i64 %96, i64* %97
  %98 = load i64, i64* %a.ptr
  %99 = icmp slt i64 %98, 0
  %100 = alloca i1
  store i1 %99, i1* %100
  %101 = load i64, i64* %b.ptr
  %102 = icmp slt i64 %101, 0
  %103 = alloca i1
  store i1 %102, i1* %103
  %104 = load i64, i64* %97
  %105 = icmp slt i64 %104, 0
  %106 = alloca i1
  store i1 %105, i1* %106
  %107 = alloca i1
  store i1 false, i1* %107
  %108 = load i1, i1* %100
  %109 = load i1, i1* %103
  %110 = icmp eq i1 %108, %109
  br i1 %110, label %sc_and_rhs29, label %sc_and_end30
sc_and_rhs29:
  %111 = load i1, i1* %106
  %112 = load i1, i1* %100
  %113 = icmp ne i1 %111, %112
  store i1 %113, i1* %107
  br label %sc_and_end30
sc_and_end30:
  %114 = load i1, i1* %107
  br i1 %114, label %then31, label %else32
then31:
  %115 = call i8* @GC_malloc(i64 16)
  %116 = bitcast i8* %115 to { i64, i8* }*
  %117 = getelementptr { i64, i8* }, { i64, i8* }* %116, i32 0, i32 0
  store i64 1, i64* %117
  %118 = getelementptr { i64, i8* }, { i64, i8* }* %116, i32 0, i32 1
  store i8* null, i8** %118
  ret i8* %115
else32:
  br label %merge33
merge33:
  %119 = call i8* @GC_malloc(i64 16)
  %120 = bitcast i8* %119 to { i64, i8* }*
  %121 = getelementptr { i64, i8* }, { i64, i8* }* %120, i32 0, i32 0
  store i64 0, i64* %121
  %122 = getelementptr { i64, i8* }, { i64, i8* }* %120, i32 0, i32 1
  %123 = call i8* @GC_malloc(i64 8)
  %124 = bitcast i8* %123 to i64*
  %125 = load i64, i64* %97
  %126 = getelementptr i64, i64* %124, i64 0
  store i64 %125, i64* %126
  store i8* %123, i8** %122
  ret i8* %119
}

define i8* @checked_sub(
i64 %a.param, i64 %b.param) {
  %a.ptr = alloca i64
  store i64 %a.param, i64* %a.ptr
  %b.ptr = alloca i64
  store i64 %b.param, i64* %b.ptr
  %127 = load i64, i64* %a.ptr
  %128 = load i64, i64* %b.ptr
  %129 = sub i64 %127, %128
  %130 = alloca i64
  store i64 %129, i64* %130
  %131 = load i64, i64* %a.ptr
  %132 = icmp slt i64 %131, 0
  %133 = alloca i1
  store i1 %132, i1* %133
  %134 = load i64, i64* %b.ptr
  %135 = icmp slt i64 %134, 0
  %136 = alloca i1
  store i1 %135, i1* %136
  %137 = load i64, i64* %130
  %138 = icmp slt i64 %137, 0
  %139 = alloca i1
  store i1 %138, i1* %139
  %140 = alloca i1
  store i1 false, i1* %140
  %141 = load i1, i1* %133
  %142 = load i1, i1* %136
  %143 = icmp ne i1 %141, %142
  br i1 %143, label %sc_and_rhs34, label %sc_and_end35
sc_and_rhs34:
  %144 = load i1, i1* %139
  %145 = load i1, i1* %136
  %146 = icmp eq i1 %144, %145
  store i1 %146, i1* %140
  br label %sc_and_end35
sc_and_end35:
  %147 = load i1, i1* %140
  br i1 %147, label %then36, label %else37
then36:
  %148 = call i8* @GC_malloc(i64 16)
  %149 = bitcast i8* %148 to { i64, i8* }*
  %150 = getelementptr { i64, i8* }, { i64, i8* }* %149, i32 0, i32 0
  store i64 1, i64* %150
  %151 = getelementptr { i64, i8* }, { i64, i8* }* %149, i32 0, i32 1
  store i8* null, i8** %151
  ret i8* %148
else37:
  br label %merge38
merge38:
  %152 = call i8* @GC_malloc(i64 16)
  %153 = bitcast i8* %152 to { i64, i8* }*
  %154 = getelementptr { i64, i8* }, { i64, i8* }* %153, i32 0, i32 0
  store i64 0, i64* %154
  %155 = getelementptr { i64, i8* }, { i64, i8* }* %153, i32 0, i32 1
  %156 = call i8* @GC_malloc(i64 8)
  %157 = bitcast i8* %156 to i64*
  %158 = load i64, i64* %130
  %159 = getelementptr i64, i64* %157, i64 0
  store i64 %158, i64* %159
  store i8* %156, i8** %155
  ret i8* %152
}

define i8* @checked_mul(
i64 %a.param, i64 %b.param) {
  %a.ptr = alloca i64
  store i64 %a.param, i64* %a.ptr
  %b.ptr = alloca i64
  store i64 %b.param, i64* %b.ptr
  %160 = alloca i1
  store i1 true, i1* %160
  %161 = load i64, i64* %a.ptr
  %162 = icmp eq i64 %161, 0
  br i1 %162, label %sc_or_end40, label %sc_or_rhs39
sc_or_rhs39:
  %163 = load i64, i64* %b.ptr
  %164 = icmp eq i64 %163, 0
  store i1 %164, i1* %160
  br label %sc_or_end40
sc_or_end40:
  %165 = load i1, i1* %160
  br i1 %165, label %then41, label %else42
then41:
  %166 = call i8* @GC_malloc(i64 16)
  %167 = bitcast i8* %166 to { i64, i8* }*
  %168 = getelementptr { i64, i8* }, { i64, i8* }* %167, i32 0, i32 0
  store i64 0, i64* %168
  %169 = getelementptr { i64, i8* }, { i64, i8* }* %167, i32 0, i32 1
  %170 = call i8* @GC_malloc(i64 8)
  %171 = bitcast i8* %170 to i64*
  %172 = getelementptr i64, i64* %171, i64 0
  store i64 0, i64* %172
  store i8* %170, i8** %169
  ret i8* %166
else42:
  br label %merge43
merge43:
  %173 = load i64, i64* %a.ptr
  %174 = sub i64 0, 1
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %then44, label %else45
then44:
  %176 = load i64, i64* %b.ptr
  %177 = load i64, i64* @INT_MIN
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %then47, label %else48
then47:
  %179 = call i8* @GC_malloc(i64 16)
  %180 = bitcast i8* %179 to { i64, i8* }*
  %181 = getelementptr { i64, i8* }, { i64, i8* }* %180, i32 0, i32 0
  store i64 1, i64* %181
  %182 = getelementptr { i64, i8* }, { i64, i8* }* %180, i32 0, i32 1
  store i8* null, i8** %182
  ret i8* %179
else48:
  br label %merge49
merge49:
  %183 = call i8* @GC_malloc(i64 16)
  %184 = bitcast i8* %183 to { i64, i8* }*
  %185 = getelementptr { i64, i8* }, { i64, i8* }* %184, i32 0, i32 0
  store i64 0, i64* %185
  %186 = getelementptr { i64, i8* }, { i64, i8* }* %184, i32 0, i32 1
  %187 = call i8* @GC_malloc(i64 8)
  %188 = bitcast i8* %187 to i64*
  %189 = load i64, i64* %b.ptr
  %190 = sub i64 0, %189
  %191 = getelementptr i64, i64* %188, i64 0
  store i64 %190, i64* %191
  store i8* %187, i8** %186
  ret i8* %183
else45:
  br label %merge46
merge46:
  %192 = load i64, i64* %b.ptr
  %193 = sub i64 0, 1
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %then50, label %else51
then50:
  %195 = load i64, i64* %a.ptr
  %196 = load i64, i64* @INT_MIN
  %197 = icmp eq i64 %195, %196
  br i1 %197, label %then53, label %else54
then53:
  %198 = call i8* @GC_malloc(i64 16)
  %199 = bitcast i8* %198 to { i64, i8* }*
  %200 = getelementptr { i64, i8* }, { i64, i8* }* %199, i32 0, i32 0
  store i64 1, i64* %200
  %201 = getelementptr { i64, i8* }, { i64, i8* }* %199, i32 0, i32 1
  store i8* null, i8** %201
  ret i8* %198
else54:
  br label %merge55
merge55:
  %202 = call i8* @GC_malloc(i64 16)
  %203 = bitcast i8* %202 to { i64, i8* }*
  %204 = getelementptr { i64, i8* }, { i64, i8* }* %203, i32 0, i32 0
  store i64 0, i64* %204
  %205 = getelementptr { i64, i8* }, { i64, i8* }* %203, i32 0, i32 1
  %206 = call i8* @GC_malloc(i64 8)
  %207 = bitcast i8* %206 to i64*
  %208 = load i64, i64* %a.ptr
  %209 = sub i64 0, %208
  %210 = getelementptr i64, i64* %207, i64 0
  store i64 %209, i64* %210
  store i8* %206, i8** %205
  ret i8* %202
else51:
  br label %merge52
merge52:
  %211 = load i64, i64* %a.ptr
  %212 = load i64, i64* %b.ptr
  %213 = mul i64 %211, %212
  %214 = alloca i64
  store i64 %213, i64* %214
  %215 = load i64, i64* %214
  %216 = load i64, i64* %b.ptr
  %217 = sdiv i64 %215, %216
  %218 = load i64, i64* %a.ptr
  %219 = icmp ne i64 %217, %218
  br i1 %219, label %then56, label %else57
then56:
  %220 = call i8* @GC_malloc(i64 16)
  %221 = bitcast i8* %220 to { i64, i8* }*
  %222 = getelementptr { i64, i8* }, { i64, i8* }* %221, i32 0, i32 0
  store i64 1, i64* %222
  %223 = getelementptr { i64, i8* }, { i64, i8* }* %221, i32 0, i32 1
  store i8* null, i8** %223
  ret i8* %220
else57:
  br label %merge58
merge58:
  %224 = call i8* @GC_malloc(i64 16)
  %225 = bitcast i8* %224 to { i64, i8* }*
  %226 = getelementptr { i64, i8* }, { i64, i8* }* %225, i32 0, i32 0
  store i64 0, i64* %226
  %227 = getelementptr { i64, i8* }, { i64, i8* }* %225, i32 0, i32 1
  %228 = call i8* @GC_malloc(i64 8)
  %229 = bitcast i8* %228 to i64*
  %230 = load i64, i64* %214
  %231 = getelementptr i64, i64* %229, i64 0
  store i64 %230, i64* %231
  store i8* %228, i8** %227
  ret i8* %224
}

define i8* @checked_div(
i64 %a.param, i64 %b.param) {
  %a.ptr = alloca i64
  store i64 %a.param, i64* %a.ptr
  %b.ptr = alloca i64
  store i64 %b.param, i64* %b.ptr
  %232 = load i64, i64* %b.ptr
  %233 = icmp eq i64 %232, 0
  br i1 %233, label %then59, label %else60
then59:
  %234 = call i8* @GC_malloc(i64 16)
  %235 = bitcast i8* %234 to { i64, i8* }*
  %236 = getelementptr { i64, i8* }, { i64, i8* }* %235, i32 0, i32 0
  store i64 1, i64* %236
  %237 = getelementptr { i64, i8* }, { i64, i8* }* %235, i32 0, i32 1
  store i8* null, i8** %237
  ret i8* %234
else60:
  br label %merge61
merge61:
  %238 = alloca i1
  store i1 false, i1* %238
  %239 = load i64, i64* %a.ptr
  %240 = load i64, i64* @INT_MIN
  %241 = icmp eq i64 %239, %240
  br i1 %241, label %sc_and_rhs62, label %sc_and_end63
sc_and_rhs62:
  %242 = load i64, i64* %b.ptr
  %243 = sub i64 0, 1
  %244 = icmp eq i64 %242, %243
  store i1 %244, i1* %238
  br label %sc_and_end63
sc_and_end63:
  %245 = load i1, i1* %238
  br i1 %245, label %then64, label %else65
then64:
  %246 = call i8* @GC_malloc(i64 16)
  %247 = bitcast i8* %246 to { i64, i8* }*
  %248 = getelementptr { i64, i8* }, { i64, i8* }* %247, i32 0, i32 0
  store i64 1, i64* %248
  %249 = getelementptr { i64, i8* }, { i64, i8* }* %247, i32 0, i32 1
  store i8* null, i8** %249
  ret i8* %246
else65:
  br label %merge66
merge66:
  %250 = call i8* @GC_malloc(i64 16)
  %251 = bitcast i8* %250 to { i64, i8* }*
  %252 = getelementptr { i64, i8* }, { i64, i8* }* %251, i32 0, i32 0
  store i64 0, i64* %252
  %253 = getelementptr { i64, i8* }, { i64, i8* }* %251, i32 0, i32 1
  %254 = call i8* @GC_malloc(i64 8)
  %255 = bitcast i8* %254 to i64*
  %256 = load i64, i64* %a.ptr
  %257 = load i64, i64* %b.ptr
  %258 = sdiv i64 %256, %257
  %259 = getelementptr i64, i64* %255, i64 0
  store i64 %258, i64* %259
  store i8* %254, i8** %253
  ret i8* %250
}

define internal i64 @round_mode_code(
i8* %mode.param) {
  %mode.ptr = alloca i8*
  store i8* %mode.param, i8** %mode.ptr
  %260 = load i8*, i8** %mode.ptr
  %261 = bitcast i8* %260 to { i64, i8* }*
  %262 = getelementptr { i64, i8* }, { i64, i8* }* %261, i32 0, i32 0
  %263 = load i64, i64* %262
  %264 = alloca i64
  store i64 0, i64* %264
  switch i64 %263, label %match_default67 [ i64 0, label %match_arm69 i64 1, label %match_arm70 i64 2, label %match_arm71 i64 3, label %match_arm72 i64 4, label %match_arm73 ]
match_arm69:
  store i64 0, i64* %264
  br label %match_end68
match_arm70:
  store i64 1, i64* %264
  br label %match_end68
match_arm71:
  store i64 2, i64* %264
  br label %match_end68
match_arm72:
  store i64 3, i64* %264
  br label %match_end68
match_arm73:
  store i64 4, i64* %264
  br label %match_end68
match_default67:
  br label %match_end68
match_end68:
  %265 = load i64, i64* %264
  ret i64 %265
}

define i64 @mul_div_round(
i64 %a.param, i64 %b.param, i64 %c.param, i8* %mode.param) {
  %a.ptr = alloca i64
  store i64 %a.param, i64* %a.ptr
  %b.ptr = alloca i64
  store i64 %b.param, i64* %b.ptr
  %c.ptr = alloca i64
  store i64 %c.param, i64* %c.ptr
  %mode.ptr = alloca i8*
  store i8* %mode.param, i8** %mode.ptr
  %266 = load i64, i64* %a.ptr
  %267 = load i64, i64* %b.ptr
  %268 = load i64, i64* %c.ptr
  %269 = load i8*, i8** %mode.ptr
  %270 = call i64 @round_mode_code(i8* %269)
  %271 = call i64 @nyx_mul_div_round(i64 %266, i64 %267, i64 %268, i64 %270)
  %272 = alloca i64
  store i64 %271, i64* %272
  %273 = call i64 @nyx_mul_div_round_status()
  %274 = alloca i64
  store i64 %273, i64* %274
  %275 = load i64, i64* %274
  %276 = icmp eq i64 %275, 1
  br i1 %276, label %then84, label %else85
then84:
  %277 = getelementptr [32 x i8], [32 x i8]* @.str0, i32 0, i32 0
  %278 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str0.c, i8* %277, i64 31)
  call void @nyx_panic(%nyx_string* %278)
  unreachable
else85:
  br label %merge86
merge86:
  %279 = load i64, i64* %274
  %280 = icmp eq i64 %279, 2
  br i1 %280, label %then87, label %else88
then87:
  %281 = getelementptr [36 x i8], [36 x i8]* @.str1, i32 0, i32 0
  %282 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1.c, i8* %281, i64 35)
  call void @nyx_panic(%nyx_string* %282)
  unreachable
else88:
  br label %merge89
merge89:
  %283 = load i64, i64* %272
  ret i64 %283
}

define i64 @array_sum(
{ i64, i8* }* %arr.param) {
  %arr.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %arr.param, { i64, i8* }** %arr.ptr
  %284 = alloca i64
  store i64 0, i64* %284
  %285 = alloca i64
  store i64 0, i64* %285
  %286 = call i8* @llvm.stacksave()
  br label %while_cond90
while_cond90:
  %287 = load i64, i64* %285
  %288 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %289 = call i64 @nyx_array_length({ i64, i8* }* %288)
  %290 = icmp slt i64 %287, %289
  br i1 %290, label %while_body91, label %while_end92
while_body91:
  call void @llvm.stackrestore(i8* %286)
  %291 = load i64, i64* %284
  %292 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %293 = load i64, i64* %285
  %294 = call i64 @nyx_array_get({ i64, i8* }* %292, i64 %293)
  %295 = add i64 %291, %294
  store i64 %295, i64* %284
  %296 = load i64, i64* %285
  %297 = add i64 %296, 1
  store i64 %297, i64* %285
  br label %while_cond90
while_end92:
  %298 = load i64, i64* %284
  ret i64 %298
}

define i64 @array_min(
{ i64, i8* }* %arr.param) {
  %arr.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %arr.param, { i64, i8* }** %arr.ptr
  %299 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %300 = call i64 @nyx_array_get({ i64, i8* }* %299, i64 0)
  %301 = alloca i64
  store i64 %300, i64* %301
  %302 = alloca i64
  store i64 1, i64* %302
  %303 = call i8* @llvm.stacksave()
  br label %while_cond93
while_cond93:
  %304 = load i64, i64* %302
  %305 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %306 = call i64 @nyx_array_length({ i64, i8* }* %305)
  %307 = icmp slt i64 %304, %306
  br i1 %307, label %while_body94, label %while_end95
while_body94:
  call void @llvm.stackrestore(i8* %303)
  %308 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %309 = load i64, i64* %302
  %310 = call i64 @nyx_array_get({ i64, i8* }* %308, i64 %309)
  %311 = load i64, i64* %301
  %312 = icmp slt i64 %310, %311
  br i1 %312, label %then96, label %else97
then96:
  %313 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %314 = load i64, i64* %302
  %315 = call i64 @nyx_array_get({ i64, i8* }* %313, i64 %314)
  store i64 %315, i64* %301
  br label %merge98
else97:
  br label %merge98
merge98:
  %316 = load i64, i64* %302
  %317 = add i64 %316, 1
  store i64 %317, i64* %302
  br label %while_cond93
while_end95:
  %318 = load i64, i64* %301
  ret i64 %318
}

define i64 @array_max(
{ i64, i8* }* %arr.param) {
  %arr.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %arr.param, { i64, i8* }** %arr.ptr
  %319 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %320 = call i64 @nyx_array_get({ i64, i8* }* %319, i64 0)
  %321 = alloca i64
  store i64 %320, i64* %321
  %322 = alloca i64
  store i64 1, i64* %322
  %323 = call i8* @llvm.stacksave()
  br label %while_cond99
while_cond99:
  %324 = load i64, i64* %322
  %325 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %326 = call i64 @nyx_array_length({ i64, i8* }* %325)
  %327 = icmp slt i64 %324, %326
  br i1 %327, label %while_body100, label %while_end101
while_body100:
  call void @llvm.stackrestore(i8* %323)
  %328 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %329 = load i64, i64* %322
  %330 = call i64 @nyx_array_get({ i64, i8* }* %328, i64 %329)
  %331 = load i64, i64* %321
  %332 = icmp sgt i64 %330, %331
  br i1 %332, label %then102, label %else103
then102:
  %333 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %334 = load i64, i64* %322
  %335 = call i64 @nyx_array_get({ i64, i8* }* %333, i64 %334)
  store i64 %335, i64* %321
  br label %merge104
else103:
  br label %merge104
merge104:
  %336 = load i64, i64* %322
  %337 = add i64 %336, 1
  store i64 %337, i64* %322
  br label %while_cond99
while_end101:
  %338 = load i64, i64* %321
  ret i64 %338
}

define { i64, i8* }* @array_reverse(
{ i64, i8* }* %arr.param) {
  %arr.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %arr.param, { i64, i8* }** %arr.ptr
  %339 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %340 = call i64 @nyx_array_length({ i64, i8* }* %339)
  %341 = alloca i64
  store i64 %340, i64* %341
  %342 = alloca i64
  store i64 0, i64* %342
  %343 = call i8* @llvm.stacksave()
  br label %while_cond105
while_cond105:
  %344 = load i64, i64* %342
  %345 = load i64, i64* %341
  %346 = sdiv i64 %345, 2
  %347 = icmp slt i64 %344, %346
  br i1 %347, label %while_body106, label %while_end107
while_body106:
  call void @llvm.stackrestore(i8* %343)
  %348 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %349 = load i64, i64* %342
  %350 = call i64 @nyx_array_get({ i64, i8* }* %348, i64 %349)
  %351 = alloca i64
  store i64 %350, i64* %351
  %352 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %353 = load i64, i64* %342
  %354 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %355 = load i64, i64* %341
  %356 = sub i64 %355, 1
  %357 = load i64, i64* %342
  %358 = sub i64 %356, %357
  %359 = call i64 @nyx_array_get({ i64, i8* }* %354, i64 %358)
  call void @nyx_array_set({ i64, i8* }* %352, i64 %353, i64 %359)
  %360 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %361 = load i64, i64* %341
  %362 = sub i64 %361, 1
  %363 = load i64, i64* %342
  %364 = sub i64 %362, %363
  %365 = load i64, i64* %351
  call void @nyx_array_set({ i64, i8* }* %360, i64 %364, i64 %365)
  %366 = load i64, i64* %342
  %367 = add i64 %366, 1
  store i64 %367, i64* %342
  br label %while_cond105
while_end107:
  %368 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  ret { i64, i8* }* %368
}

define i1 @array_contains_int(
{ i64, i8* }* %arr.param, i64 %val.param) {
  %arr.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %arr.param, { i64, i8* }** %arr.ptr
  %val.ptr = alloca i64
  store i64 %val.param, i64* %val.ptr
  %369 = alloca i64
  store i64 0, i64* %369
  %370 = call i8* @llvm.stacksave()
  br label %while_cond108
while_cond108:
  %371 = load i64, i64* %369
  %372 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %373 = call i64 @nyx_array_length({ i64, i8* }* %372)
  %374 = icmp slt i64 %371, %373
  br i1 %374, label %while_body109, label %while_end110
while_body109:
  call void @llvm.stackrestore(i8* %370)
  %375 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %376 = load i64, i64* %369
  %377 = call i64 @nyx_array_get({ i64, i8* }* %375, i64 %376)
  %378 = load i64, i64* %val.ptr
  %379 = icmp eq i64 %377, %378
  br i1 %379, label %then111, label %else112
then111:
  ret i1 1
else112:
  br label %merge113
merge113:
  %380 = load i64, i64* %369
  %381 = add i64 %380, 1
  store i64 %381, i64* %369
  br label %while_cond108
while_end110:
  ret i1 0
}

define i64 @array_index_of(
{ i64, i8* }* %arr.param, i64 %val.param) {
  %arr.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %arr.param, { i64, i8* }** %arr.ptr
  %val.ptr = alloca i64
  store i64 %val.param, i64* %val.ptr
  %382 = alloca i64
  store i64 0, i64* %382
  %383 = call i8* @llvm.stacksave()
  br label %while_cond114
while_cond114:
  %384 = load i64, i64* %382
  %385 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %386 = call i64 @nyx_array_length({ i64, i8* }* %385)
  %387 = icmp slt i64 %384, %386
  br i1 %387, label %while_body115, label %while_end116
while_body115:
  call void @llvm.stackrestore(i8* %383)
  %388 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %389 = load i64, i64* %382
  %390 = call i64 @nyx_array_get({ i64, i8* }* %388, i64 %389)
  %391 = load i64, i64* %val.ptr
  %392 = icmp eq i64 %390, %391
  br i1 %392, label %then117, label %else118
then117:
  %393 = load i64, i64* %382
  ret i64 %393
else118:
  br label %merge119
merge119:
  %394 = load i64, i64* %382
  %395 = add i64 %394, 1
  store i64 %395, i64* %382
  br label %while_cond114
while_end116:
  %396 = sub i64 0, 1
  ret i64 %396
}

define { i64, i8* }* @sort_int(
{ i64, i8* }* %arr.param) {
  %arr.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %arr.param, { i64, i8* }** %arr.ptr
  %397 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %398 = call i64 @nyx_array_length({ i64, i8* }* %397)
  %399 = alloca i64
  store i64 %398, i64* %399
  %400 = alloca i1
  store i1 1, i1* %400
  %401 = call i8* @llvm.stacksave()
  br label %while_cond120
while_cond120:
  %402 = load i1, i1* %400
  %403 = icmp eq i1 %402, 1
  br i1 %403, label %while_body121, label %while_end122
while_body121:
  call void @llvm.stackrestore(i8* %401)
  store i1 0, i1* %400
  %404 = alloca i64
  store i64 0, i64* %404
  %405 = call i8* @llvm.stacksave()
  br label %while_cond123
while_cond123:
  %406 = load i64, i64* %404
  %407 = load i64, i64* %399
  %408 = sub i64 %407, 1
  %409 = icmp slt i64 %406, %408
  br i1 %409, label %while_body124, label %while_end125
while_body124:
  call void @llvm.stackrestore(i8* %405)
  %410 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %411 = load i64, i64* %404
  %412 = call i64 @nyx_array_get({ i64, i8* }* %410, i64 %411)
  %413 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %414 = load i64, i64* %404
  %415 = add i64 %414, 1
  %416 = call i64 @nyx_array_get({ i64, i8* }* %413, i64 %415)
  %417 = icmp sgt i64 %412, %416
  br i1 %417, label %then126, label %else127
then126:
  %418 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %419 = load i64, i64* %404
  %420 = call i64 @nyx_array_get({ i64, i8* }* %418, i64 %419)
  %421 = alloca i64
  store i64 %420, i64* %421
  %422 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %423 = load i64, i64* %404
  %424 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %425 = load i64, i64* %404
  %426 = add i64 %425, 1
  %427 = call i64 @nyx_array_get({ i64, i8* }* %424, i64 %426)
  call void @nyx_array_set({ i64, i8* }* %422, i64 %423, i64 %427)
  %428 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %429 = load i64, i64* %404
  %430 = add i64 %429, 1
  %431 = load i64, i64* %421
  call void @nyx_array_set({ i64, i8* }* %428, i64 %430, i64 %431)
  store i1 1, i1* %400
  br label %merge128
else127:
  br label %merge128
merge128:
  %432 = load i64, i64* %404
  %433 = add i64 %432, 1
  store i64 %433, i64* %404
  br label %while_cond123
while_end125:
  br label %while_cond120
while_end122:
  %434 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  ret { i64, i8* }* %434
}

define { i64, i8* }* @sort_by(
{ i64, i8* }* %arr.param, i8* %cmp.param) {
  %arr.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %arr.param, { i64, i8* }** %arr.ptr
  %cmp.ptr = alloca i8*
  store i8* %cmp.param, i8** %cmp.ptr
  %435 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %436 = call i64 @nyx_array_length({ i64, i8* }* %435)
  %437 = alloca i64
  store i64 %436, i64* %437
  %438 = load i64, i64* %437
  %439 = icmp sle i64 %438, 1
  br i1 %439, label %then129, label %else130
then129:
  %440 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  ret { i64, i8* }* %440
else130:
  br label %merge131
merge131:
  %441 = alloca i64
  store i64 1, i64* %441
  %442 = call i8* @llvm.stacksave()
  br label %while_cond132
while_cond132:
  %443 = load i64, i64* %441
  %444 = load i64, i64* %437
  %445 = icmp slt i64 %443, %444
  br i1 %445, label %while_body133, label %while_end134
while_body133:
  call void @llvm.stackrestore(i8* %442)
  %446 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %447 = load i64, i64* %441
  %448 = call i64 @nyx_array_get({ i64, i8* }* %446, i64 %447)
  %449 = alloca i64
  store i64 %448, i64* %449
  %450 = load i64, i64* %441
  %451 = sub i64 %450, 1
  %452 = alloca i64
  store i64 %451, i64* %452
  %453 = alloca i1
  store i1 0, i1* %453
  %454 = call i8* @llvm.stacksave()
  br label %while_cond135
while_cond135:
  %455 = alloca i1
  store i1 false, i1* %455
  %456 = load i64, i64* %452
  %457 = icmp sge i64 %456, 0
  br i1 %457, label %sc_and_rhs138, label %sc_and_end139
sc_and_rhs138:
  %458 = load i1, i1* %453
  %459 = xor i1 %458, true
  store i1 %459, i1* %455
  br label %sc_and_end139
sc_and_end139:
  %460 = load i1, i1* %455
  br i1 %460, label %while_body136, label %while_end137
while_body136:
  call void @llvm.stackrestore(i8* %454)
  %461 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %462 = load i64, i64* %452
  %463 = call i64 @nyx_array_get({ i64, i8* }* %461, i64 %462)
  %464 = load i64, i64* %449
  %465 = load i8*, i8** %cmp.ptr
  %466 = bitcast i8* %465 to { i8*, i8* }*
  %467 = getelementptr { i8*, i8* }, { i8*, i8* }* %466, i32 0, i32 0
  %468 = load i8*, i8** %467
  %469 = getelementptr { i8*, i8* }, { i8*, i8* }* %466, i32 0, i32 1
  %470 = load i8*, i8** %469
  %471 = icmp ne i8* %470, null
  br i1 %471, label %cl_env140, label %cl_noenv141
cl_env140:
  %472 = bitcast i8* %468 to i64 (i8*, i64, i64)*
  %473 = call i64 %472(i8* %470, i64 %463, i64 %464)
  br label %cl_merge142
cl_noenv141:
  %474 = bitcast i8* %468 to i64 (i64, i64)*
  %475 = call i64 %474(i64 %463, i64 %464)
  br label %cl_merge142
cl_merge142:
  %476 = phi i64 [%473, %cl_env140], [%475, %cl_noenv141]
  %477 = alloca i64
  store i64 %476, i64* %477
  %478 = load i64, i64* %477
  %479 = icmp sgt i64 %478, 0
  br i1 %479, label %then143, label %else144
then143:
  %480 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %481 = load i64, i64* %452
  %482 = add i64 %481, 1
  %483 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %484 = load i64, i64* %452
  %485 = call i64 @nyx_array_get({ i64, i8* }* %483, i64 %484)
  call void @nyx_array_set({ i64, i8* }* %480, i64 %482, i64 %485)
  %486 = load i64, i64* %452
  %487 = sub i64 %486, 1
  store i64 %487, i64* %452
  br label %merge145
else144:
  store i1 1, i1* %453
  br label %merge145
merge145:
  br label %while_cond135
while_end137:
  %488 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %489 = load i64, i64* %452
  %490 = add i64 %489, 1
  %491 = load i64, i64* %449
  call void @nyx_array_set({ i64, i8* }* %488, i64 %490, i64 %491)
  %492 = load i64, i64* %441
  %493 = add i64 %492, 1
  store i64 %493, i64* %441
  br label %while_cond132
while_end134:
  %494 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  ret { i64, i8* }* %494
}

define i64 @str_compare(
%nyx_string* %a.param, %nyx_string* %b.param) {
  %a.ptr = alloca %nyx_string*
  store %nyx_string* %a.param, %nyx_string** %a.ptr
  %b.ptr = alloca %nyx_string*
  store %nyx_string* %b.param, %nyx_string** %b.ptr
  %495 = load %nyx_string*, %nyx_string** %a.ptr
  %496 = call i64 @nyx_string_byte_length(%nyx_string* %495)
  %497 = alloca i64
  store i64 %496, i64* %497
  %498 = load %nyx_string*, %nyx_string** %b.ptr
  %499 = call i64 @nyx_string_byte_length(%nyx_string* %498)
  %500 = alloca i64
  store i64 %499, i64* %500
  %501 = load i64, i64* %497
  %502 = alloca i64
  store i64 %501, i64* %502
  %503 = load i64, i64* %500
  %504 = load i64, i64* %502
  %505 = icmp slt i64 %503, %504
  br i1 %505, label %then146, label %else147
then146:
  %506 = load i64, i64* %500
  store i64 %506, i64* %502
  br label %merge148
else147:
  br label %merge148
merge148:
  %507 = alloca i64
  store i64 0, i64* %507
  %508 = call i8* @llvm.stacksave()
  br label %while_cond149
while_cond149:
  %509 = load i64, i64* %507
  %510 = load i64, i64* %502
  %511 = icmp slt i64 %509, %510
  br i1 %511, label %while_body150, label %while_end151
while_body150:
  call void @llvm.stackrestore(i8* %508)
  %512 = load %nyx_string*, %nyx_string** %a.ptr
  %513 = load i64, i64* %507
  %514 = call i8 @nyx_string_char_at(%nyx_string* %512, i64 %513)
  %515 = zext i8 %514 to i64
  %516 = alloca i64
  store i64 %515, i64* %516
  %517 = load %nyx_string*, %nyx_string** %b.ptr
  %518 = load i64, i64* %507
  %519 = call i8 @nyx_string_char_at(%nyx_string* %517, i64 %518)
  %520 = zext i8 %519 to i64
  %521 = alloca i64
  store i64 %520, i64* %521
  %522 = load i64, i64* %516
  %523 = load i64, i64* %521
  %524 = icmp slt i64 %522, %523
  br i1 %524, label %then152, label %else153
then152:
  %525 = sub i64 0, 1
  ret i64 %525
else153:
  br label %merge154
merge154:
  %526 = load i64, i64* %516
  %527 = load i64, i64* %521
  %528 = icmp sgt i64 %526, %527
  br i1 %528, label %then155, label %else156
then155:
  ret i64 1
else156:
  br label %merge157
merge157:
  %529 = load i64, i64* %507
  %530 = add i64 %529, 1
  store i64 %530, i64* %507
  br label %while_cond149
while_end151:
  %531 = load i64, i64* %497
  %532 = load i64, i64* %500
  %533 = icmp slt i64 %531, %532
  br i1 %533, label %then158, label %else159
then158:
  %534 = sub i64 0, 1
  ret i64 %534
else159:
  br label %merge160
merge160:
  %535 = load i64, i64* %497
  %536 = load i64, i64* %500
  %537 = icmp sgt i64 %535, %536
  br i1 %537, label %then161, label %else162
then161:
  ret i64 1
else162:
  br label %merge163
merge163:
  ret i64 0
}

define { i64, i8* }* @sort_str(
{ i64, i8* }* %arr.param) {
  %arr.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %arr.param, { i64, i8* }** %arr.ptr
  %538 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %539 = call i64 @nyx_array_length({ i64, i8* }* %538)
  %540 = alloca i64
  store i64 %539, i64* %540
  %541 = load i64, i64* %540
  %542 = icmp sle i64 %541, 1
  br i1 %542, label %then164, label %else165
then164:
  %543 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  ret { i64, i8* }* %543
else165:
  br label %merge166
merge166:
  %544 = alloca i64
  store i64 1, i64* %544
  %545 = call i8* @llvm.stacksave()
  br label %while_cond167
while_cond167:
  %546 = load i64, i64* %544
  %547 = load i64, i64* %540
  %548 = icmp slt i64 %546, %547
  br i1 %548, label %while_body168, label %while_end169
while_body168:
  call void @llvm.stackrestore(i8* %545)
  %549 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %550 = load i64, i64* %544
  %551 = call i64 @nyx_array_get_checked({ i64, i8* }* %549, i64 %550, i64 2)
  %552 = inttoptr i64 %551 to %nyx_string*
  %553 = alloca %nyx_string*
  store %nyx_string* %552, %nyx_string** %553
  %554 = load i64, i64* %544
  %555 = sub i64 %554, 1
  %556 = alloca i64
  store i64 %555, i64* %556
  %557 = alloca i1
  store i1 0, i1* %557
  %558 = call i8* @llvm.stacksave()
  br label %while_cond170
while_cond170:
  %559 = alloca i1
  store i1 false, i1* %559
  %560 = load i64, i64* %556
  %561 = icmp sge i64 %560, 0
  br i1 %561, label %sc_and_rhs173, label %sc_and_end174
sc_and_rhs173:
  %562 = load i1, i1* %557
  %563 = xor i1 %562, true
  store i1 %563, i1* %559
  br label %sc_and_end174
sc_and_end174:
  %564 = load i1, i1* %559
  br i1 %564, label %while_body171, label %while_end172
while_body171:
  call void @llvm.stackrestore(i8* %558)
  %565 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %566 = load i64, i64* %556
  %567 = call i64 @nyx_array_get_checked({ i64, i8* }* %565, i64 %566, i64 2)
  %568 = inttoptr i64 %567 to %nyx_string*
  %569 = alloca %nyx_string*
  store %nyx_string* %568, %nyx_string** %569
  %570 = load %nyx_string*, %nyx_string** %569
  %571 = load %nyx_string*, %nyx_string** %553
  %572 = call i64 @str_compare(%nyx_string* %570, %nyx_string* %571)
  %573 = icmp sgt i64 %572, 0
  br i1 %573, label %then175, label %else176
then175:
  %574 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %575 = load i64, i64* %556
  %576 = add i64 %575, 1
  %577 = load %nyx_string*, %nyx_string** %569
  %578 = ptrtoint %nyx_string* %577 to i64
  call void @nyx_array_set_tagged({ i64, i8* }* %574, i64 %576, i64 %578, i64 2)
  %579 = load i64, i64* %556
  %580 = sub i64 %579, 1
  store i64 %580, i64* %556
  br label %merge177
else176:
  store i1 1, i1* %557
  br label %merge177
merge177:
  br label %while_cond170
while_end172:
  %581 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %582 = load i64, i64* %556
  %583 = add i64 %582, 1
  %584 = load %nyx_string*, %nyx_string** %553
  %585 = ptrtoint %nyx_string* %584 to i64
  call void @nyx_array_set_tagged({ i64, i8* }* %581, i64 %583, i64 %585, i64 2)
  %586 = load i64, i64* %544
  %587 = add i64 %586, 1
  store i64 %587, i64* %544
  br label %while_cond167
while_end169:
  %588 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  ret { i64, i8* }* %588
}

define %nyx_string* @read_text(
%nyx_string* %path.param) {
  %path.ptr = alloca %nyx_string*
  store %nyx_string* %path.param, %nyx_string** %path.ptr
  %589 = load %nyx_string*, %nyx_string** %path.ptr
  %590 = call i8* @nyx_string_to_cstr(%nyx_string* %589)
  %591 = call %nyx_string* @nyx_read_file(i8* %590)
  ret %nyx_string* %591
}

define i64 @write_text(
%nyx_string* %path.param, %nyx_string* %content.param) {
  %path.ptr = alloca %nyx_string*
  store %nyx_string* %path.param, %nyx_string** %path.ptr
  %content.ptr = alloca %nyx_string*
  store %nyx_string* %content.param, %nyx_string** %content.ptr
  %592 = load %nyx_string*, %nyx_string** %path.ptr
  %593 = load %nyx_string*, %nyx_string** %content.ptr
  %594 = call i8* @nyx_string_to_cstr(%nyx_string* %592)
  %595 = call i8* @nyx_string_to_cstr(%nyx_string* %593)
  %596 = call i1 @nyx_write_file(i8* %594, i8* %595)
  ret i64 0
}

define i8* @map_new(
) {
  %597 = call i8* @nyx_map_new(i32 0)
  ret i8* %597
}

define i64 @map_put(
i8* %m.param, %nyx_string* %k.param, i64 %v.param) {
  %m.ptr = alloca i8*
  store i8* %m.param, i8** %m.ptr
  %k.ptr = alloca %nyx_string*
  store %nyx_string* %k.param, %nyx_string** %k.ptr
  %v.ptr = alloca i64
  store i64 %v.param, i64* %v.ptr
  %598 = load i8*, i8** %m.ptr
  %599 = load %nyx_string*, %nyx_string** %k.ptr
  %600 = load i64, i64* %v.ptr
  %601 = call i8* @nyx_string_to_cstr(%nyx_string* %599)
  call void @nyx_map_insert_int(i8* %598, i8* %601, i64 %600)
  ret i64 0
}

define i64 @map_get_int(
i8* %m.param, %nyx_string* %k.param) {
  %m.ptr = alloca i8*
  store i8* %m.param, i8** %m.ptr
  %k.ptr = alloca %nyx_string*
  store %nyx_string* %k.param, %nyx_string** %k.ptr
  %602 = load i8*, i8** %m.ptr
  %603 = load %nyx_string*, %nyx_string** %k.ptr
  %604 = call i8* @nyx_string_to_cstr(%nyx_string* %603)
  %605 = call i64 @nyx_map_get_int(i8* %602, i8* %604)
  ret i64 %605
}

define i1 @map_has(
i8* %m.param, %nyx_string* %k.param) {
  %m.ptr = alloca i8*
  store i8* %m.param, i8** %m.ptr
  %k.ptr = alloca %nyx_string*
  store %nyx_string* %k.param, %nyx_string** %k.ptr
  %606 = load i8*, i8** %m.ptr
  %607 = load %nyx_string*, %nyx_string** %k.ptr
  %608 = call i8* @nyx_string_to_cstr(%nyx_string* %607)
  %609 = call i1 @nyx_map_contains_str(i8* %606, i8* %608)
  ret i1 %609
}

define internal i64 @map_size(
i8* %m.param) {
  %m.ptr = alloca i8*
  store i8* %m.param, i8** %m.ptr
  %610 = load i8*, i8** %m.ptr
  %611 = call i64 @nyx_map_length(i8* %610)
  ret i64 %611
}

define internal %nyx_string* @parse_toml_value(
%nyx_string* %line.param) {
  %line.ptr = alloca %nyx_string*
  store %nyx_string* %line.param, %nyx_string** %line.ptr
  %612 = load %nyx_string*, %nyx_string** %line.ptr
  %613 = call %nyx_string* @nyx_string_trim(%nyx_string* %612)
  %614 = alloca %nyx_string*
  store %nyx_string* %613, %nyx_string** %614
  %615 = sub i64 0, 1
  %616 = alloca i64
  store i64 %615, i64* %616
  %617 = alloca i64
  store i64 0, i64* %617
  %618 = call i8* @llvm.stacksave()
  br label %while_cond178
while_cond178:
  %619 = load i64, i64* %617
  %620 = load %nyx_string*, %nyx_string** %614
  %621 = call i64 @nyx_string_byte_length(%nyx_string* %620)
  %622 = icmp slt i64 %619, %621
  br i1 %622, label %while_body179, label %while_end180
while_body179:
  call void @llvm.stackrestore(i8* %618)
  %623 = load %nyx_string*, %nyx_string** %614
  %624 = load i64, i64* %617
  %625 = call i8 @nyx_string_char_at(%nyx_string* %623, i64 %624)
  %626 = zext i8 %625 to i64
  %627 = icmp eq i64 %626, 61
  br i1 %627, label %then181, label %else182
then181:
  %628 = load i64, i64* %617
  store i64 %628, i64* %616
  %629 = load %nyx_string*, %nyx_string** %614
  %630 = call i64 @nyx_string_byte_length(%nyx_string* %629)
  store i64 %630, i64* %617
  br label %merge183
else182:
  %631 = load i64, i64* %617
  %632 = add i64 %631, 1
  store i64 %632, i64* %617
  br label %merge183
merge183:
  br label %while_cond178
while_end180:
  %633 = load i64, i64* %616
  %634 = icmp slt i64 %633, 0
  br i1 %634, label %then184, label %else185
then184:
  %635 = getelementptr [1 x i8], [1 x i8]* @.str2, i32 0, i32 0
  %636 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str2.c, i8* %635, i64 0)
  ret %nyx_string* %636
else185:
  br label %merge186
merge186:
  %637 = load %nyx_string*, %nyx_string** %614
  %638 = load i64, i64* %616
  %639 = add i64 %638, 1
  %640 = load %nyx_string*, %nyx_string** %614
  %641 = call i64 @nyx_string_byte_length(%nyx_string* %640)
  %642 = call %nyx_string* @nyx_string_substring(%nyx_string* %637, i64 %639, i64 %641)
  %643 = call %nyx_string* @nyx_string_trim(%nyx_string* %642)
  %644 = alloca %nyx_string*
  store %nyx_string* %643, %nyx_string** %644
  %645 = alloca i1
  store i1 false, i1* %645
  %646 = load %nyx_string*, %nyx_string** %644
  %647 = getelementptr [2 x i8], [2 x i8]* @.str3, i32 0, i32 0
  %648 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str3.c, i8* %647, i64 1)
  %649 = call i1 @nyx_string_starts_with(%nyx_string* %646, %nyx_string* %648)
  br i1 %649, label %sc_and_rhs187, label %sc_and_end188
sc_and_rhs187:
  %650 = load %nyx_string*, %nyx_string** %644
  %651 = getelementptr [2 x i8], [2 x i8]* @.str4, i32 0, i32 0
  %652 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str4.c, i8* %651, i64 1)
  %653 = call i1 @nyx_string_ends_with(%nyx_string* %650, %nyx_string* %652)
  store i1 %653, i1* %645
  br label %sc_and_end188
sc_and_end188:
  %654 = load i1, i1* %645
  br i1 %654, label %then189, label %else190
then189:
  %655 = load %nyx_string*, %nyx_string** %644
  %656 = load %nyx_string*, %nyx_string** %644
  %657 = call i64 @nyx_string_byte_length(%nyx_string* %656)
  %658 = sub i64 %657, 1
  %659 = call %nyx_string* @nyx_string_substring(%nyx_string* %655, i64 1, i64 %658)
  ret %nyx_string* %659
else190:
  br label %merge191
merge191:
  %660 = load %nyx_string*, %nyx_string** %644
  ret %nyx_string* %660
}

define internal %nyx_string* @parse_toml_key(
%nyx_string* %line.param) {
  %line.ptr = alloca %nyx_string*
  store %nyx_string* %line.param, %nyx_string** %line.ptr
  %661 = load %nyx_string*, %nyx_string** %line.ptr
  %662 = call %nyx_string* @nyx_string_trim(%nyx_string* %661)
  %663 = alloca %nyx_string*
  store %nyx_string* %662, %nyx_string** %663
  %664 = sub i64 0, 1
  %665 = alloca i64
  store i64 %664, i64* %665
  %666 = alloca i64
  store i64 0, i64* %666
  %667 = call i8* @llvm.stacksave()
  br label %while_cond192
while_cond192:
  %668 = load i64, i64* %666
  %669 = load %nyx_string*, %nyx_string** %663
  %670 = call i64 @nyx_string_byte_length(%nyx_string* %669)
  %671 = icmp slt i64 %668, %670
  br i1 %671, label %while_body193, label %while_end194
while_body193:
  call void @llvm.stackrestore(i8* %667)
  %672 = load %nyx_string*, %nyx_string** %663
  %673 = load i64, i64* %666
  %674 = call i8 @nyx_string_char_at(%nyx_string* %672, i64 %673)
  %675 = zext i8 %674 to i64
  %676 = icmp eq i64 %675, 61
  br i1 %676, label %then195, label %else196
then195:
  %677 = load i64, i64* %666
  store i64 %677, i64* %665
  %678 = load %nyx_string*, %nyx_string** %663
  %679 = call i64 @nyx_string_byte_length(%nyx_string* %678)
  store i64 %679, i64* %666
  br label %merge197
else196:
  %680 = load i64, i64* %666
  %681 = add i64 %680, 1
  store i64 %681, i64* %666
  br label %merge197
merge197:
  br label %while_cond192
while_end194:
  %682 = load i64, i64* %665
  %683 = icmp slt i64 %682, 0
  br i1 %683, label %then198, label %else199
then198:
  %684 = getelementptr [1 x i8], [1 x i8]* @.str5, i32 0, i32 0
  %685 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str5.c, i8* %684, i64 0)
  ret %nyx_string* %685
else199:
  br label %merge200
merge200:
  %686 = load %nyx_string*, %nyx_string** %663
  %687 = load i64, i64* %665
  %688 = call %nyx_string* @nyx_string_substring(%nyx_string* %686, i64 0, i64 %687)
  %689 = call %nyx_string* @nyx_string_trim(%nyx_string* %688)
  ret %nyx_string* %689
}

define internal %TestConfig @load_test_config(
) {
  %690 = getelementptr %TestConfig, %TestConfig* null, i32 1
  %691 = ptrtoint %TestConfig* %690 to i64
  %692 = call i8* @GC_malloc(i64 %691)
  %693 = bitcast i8* %692 to %TestConfig*
  %694 = getelementptr [6 x i8], [6 x i8]* @.str6, i32 0, i32 0
  %695 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str6.c, i8* %694, i64 5)
  %696 = getelementptr %TestConfig, %TestConfig* %693, i32 0, i32 0
  store %nyx_string* %695, %nyx_string** %696
  %697 = getelementptr %TestConfig, %TestConfig* %693, i32 0, i32 1
  store i64 30, i64* %697
  %698 = getelementptr [1 x i8], [1 x i8]* @.str7, i32 0, i32 0
  %699 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str7.c, i8* %698, i64 0)
  %700 = getelementptr %TestConfig, %TestConfig* %693, i32 0, i32 2
  store %nyx_string* %699, %nyx_string** %700
  %701 = getelementptr %TestConfig, %TestConfig* %693, i32 0, i32 3
  store i1 0, i1* %701
  %702 = getelementptr [1 x i8], [1 x i8]* @.str8, i32 0, i32 0
  %703 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str8.c, i8* %702, i64 0)
  %704 = getelementptr %TestConfig, %TestConfig* %693, i32 0, i32 4
  store %nyx_string* %703, %nyx_string** %704
  %705 = load %TestConfig, %TestConfig* %693
  %706 = alloca %TestConfig
  store %TestConfig %705, %TestConfig* %706
  %707 = getelementptr [9 x i8], [9 x i8]* @.str9, i32 0, i32 0
  %708 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str9.c, i8* %707, i64 8)
  %709 = call i8* @nyx_string_to_cstr(%nyx_string* %708)
  %710 = call i1 @nyx_file_exists(i8* %709)
  %711 = xor i1 %710, true
  br i1 %711, label %then201, label %else202
then201:
  %712 = load %TestConfig, %TestConfig* %706
  ret %TestConfig %712
else202:
  br label %merge203
merge203:
  %713 = getelementptr [9 x i8], [9 x i8]* @.str10, i32 0, i32 0
  %714 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str10.c, i8* %713, i64 8)
  %715 = call i8* @nyx_string_to_cstr(%nyx_string* %714)
  %716 = call %nyx_string* @nyx_read_file(i8* %715)
  %717 = alloca %nyx_string*
  store %nyx_string* %716, %nyx_string** %717
  %718 = load %nyx_string*, %nyx_string** %717
  %719 = getelementptr [2 x i8], [2 x i8]* @.str11, i32 0, i32 0
  %720 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str11.c, i8* %719, i64 1)
  %721 = call { i64, i8* }* @nyx_string_split(%nyx_string* %718, %nyx_string* %720)
  %722 = alloca { i64, i8* }*
  store { i64, i8* }* %721, { i64, i8* }** %722
  %723 = alloca i1
  store i1 0, i1* %723
  %724 = alloca i64
  store i64 0, i64* %724
  %725 = getelementptr [7 x i8], [7 x i8]* @.str12, i32 0, i32 0
  %726 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str12.c, i8* %725, i64 6)
  %727 = alloca %nyx_string*
  store %nyx_string* %726, %nyx_string** %727
  %728 = getelementptr [2 x i8], [2 x i8]* @.str13, i32 0, i32 0
  %729 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str13.c, i8* %728, i64 1)
  %730 = alloca %nyx_string*
  store %nyx_string* %729, %nyx_string** %730
  %731 = getelementptr [4 x i8], [4 x i8]* @.str14, i32 0, i32 0
  %732 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str14.c, i8* %731, i64 3)
  %733 = alloca %nyx_string*
  store %nyx_string* %732, %nyx_string** %733
  %734 = getelementptr [8 x i8], [8 x i8]* @.str15, i32 0, i32 0
  %735 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str15.c, i8* %734, i64 7)
  %736 = alloca %nyx_string*
  store %nyx_string* %735, %nyx_string** %736
  %737 = call i8* @llvm.stacksave()
  br label %while_cond204
while_cond204:
  %738 = load i64, i64* %724
  %739 = load { i64, i8* }*, { i64, i8* }** %722
  %740 = call i64 @nyx_array_length({ i64, i8* }* %739)
  %741 = icmp slt i64 %738, %740
  br i1 %741, label %while_body205, label %while_end206
while_body205:
  call void @llvm.stackrestore(i8* %737)
  %742 = load { i64, i8* }*, { i64, i8* }** %722
  %743 = load i64, i64* %724
  %744 = call i64 @nyx_array_get_checked({ i64, i8* }* %742, i64 %743, i64 2)
  %745 = inttoptr i64 %744 to %nyx_string*
  %746 = alloca %nyx_string*
  store %nyx_string* %745, %nyx_string** %746
  %747 = load %nyx_string*, %nyx_string** %746
  %748 = call %nyx_string* @nyx_string_trim(%nyx_string* %747)
  %749 = alloca %nyx_string*
  store %nyx_string* %748, %nyx_string** %749
  %750 = load %nyx_string*, %nyx_string** %749
  %751 = load %nyx_string*, %nyx_string** %727
  %752 = call i1 @nyx_string_equals(%nyx_string* %750, %nyx_string* %751)
  br i1 %752, label %then207, label %else208
then207:
  store i1 1, i1* %723
  br label %merge209
else208:
  %753 = load %nyx_string*, %nyx_string** %749
  %754 = load %nyx_string*, %nyx_string** %730
  %755 = call i1 @nyx_string_starts_with(%nyx_string* %753, %nyx_string* %754)
  br i1 %755, label %then210, label %else211
then210:
  store i1 0, i1* %723
  br label %merge212
else211:
  %756 = load i1, i1* %723
  br i1 %756, label %then213, label %else214
then213:
  %757 = load %nyx_string*, %nyx_string** %749
  %758 = call %nyx_string* @parse_toml_key(%nyx_string* %757)
  %759 = alloca %nyx_string*
  store %nyx_string* %758, %nyx_string** %759
  %760 = load %nyx_string*, %nyx_string** %749
  %761 = call %nyx_string* @parse_toml_value(%nyx_string* %760)
  %762 = alloca %nyx_string*
  store %nyx_string* %761, %nyx_string** %762
  %763 = load %nyx_string*, %nyx_string** %759
  %764 = load %nyx_string*, %nyx_string** %733
  %765 = call i1 @nyx_string_equals(%nyx_string* %763, %nyx_string* %764)
  br i1 %765, label %then216, label %else217
then216:
  %766 = load %nyx_string*, %nyx_string** %762
  %767 = getelementptr %TestConfig, %TestConfig* %706, i32 0, i32 0
  store %nyx_string* %766, %nyx_string** %767
  br label %merge218
else217:
  br label %merge218
merge218:
  %768 = load %nyx_string*, %nyx_string** %759
  %769 = load %nyx_string*, %nyx_string** %736
  %770 = call i1 @nyx_string_equals(%nyx_string* %768, %nyx_string* %769)
  br i1 %770, label %then219, label %else220
then219:
  %771 = load %nyx_string*, %nyx_string** %762
  %772 = call i64 @nyx_string_to_int(%nyx_string* %771)
  %773 = getelementptr %TestConfig, %TestConfig* %706, i32 0, i32 1
  store i64 %772, i64* %773
  br label %merge221
else220:
  br label %merge221
merge221:
  br label %merge215
else214:
  br label %merge215
merge215:
  br label %merge212
merge212:
  br label %merge209
merge209:
  %774 = load i64, i64* %724
  %775 = add i64 %774, 1
  store i64 %775, i64* %724
  br label %while_cond204
while_end206:
  %776 = load %TestConfig, %TestConfig* %706
  ret %TestConfig %776
}

define internal { i64, i8* }* @discover_tests(
%TestConfig %config.param) {
  %config.ptr = alloca %TestConfig
  store %TestConfig %config.param, %TestConfig* %config.ptr
  %777 = call { i64, i8* }* @nyx_array_new_ptr()
  %778 = alloca { i64, i8* }*
  store { i64, i8* }* %777, { i64, i8* }** %778
  %779 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 0
  %780 = load %nyx_string*, %nyx_string** %779
  %781 = call i8* @nyx_string_to_cstr(%nyx_string* %780)
  %782 = call i1 @nyx_file_exists(i8* %781)
  br i1 %782, label %then222, label %else223
then222:
  %783 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 0
  %784 = load %nyx_string*, %nyx_string** %783
  %785 = call i8* @nyx_string_to_cstr(%nyx_string* %784)
  %786 = call { i64, i8* }* @nyx_readdir(i8* %785)
  %787 = alloca { i64, i8* }*
  store { i64, i8* }* %786, { i64, i8* }** %787
  %788 = alloca i64
  store i64 0, i64* %788
  %789 = getelementptr [4 x i8], [4 x i8]* @.str16, i32 0, i32 0
  %790 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str16.c, i8* %789, i64 3)
  %791 = alloca %nyx_string*
  store %nyx_string* %790, %nyx_string** %791
  %792 = getelementptr [2 x i8], [2 x i8]* @.str17, i32 0, i32 0
  %793 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str17.c, i8* %792, i64 1)
  %794 = alloca %nyx_string*
  store %nyx_string* %793, %nyx_string** %794
  %795 = getelementptr [1 x i8], [1 x i8]* @.str18, i32 0, i32 0
  %796 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str18.c, i8* %795, i64 0)
  %797 = alloca %nyx_string*
  store %nyx_string* %796, %nyx_string** %797
  %798 = call i8* @llvm.stacksave()
  br label %while_cond225
while_cond225:
  %799 = load i64, i64* %788
  %800 = load { i64, i8* }*, { i64, i8* }** %787
  %801 = call i64 @nyx_array_length({ i64, i8* }* %800)
  %802 = icmp slt i64 %799, %801
  br i1 %802, label %while_body226, label %while_end227
while_body226:
  call void @llvm.stackrestore(i8* %798)
  %803 = load { i64, i8* }*, { i64, i8* }** %787
  %804 = load i64, i64* %788
  %805 = call i64 @nyx_array_get_checked({ i64, i8* }* %803, i64 %804, i64 2)
  %806 = inttoptr i64 %805 to %nyx_string*
  %807 = alloca %nyx_string*
  store %nyx_string* %806, %nyx_string** %807
  %808 = load %nyx_string*, %nyx_string** %807
  %809 = load %nyx_string*, %nyx_string** %791
  %810 = call i1 @nyx_string_ends_with(%nyx_string* %808, %nyx_string* %809)
  br i1 %810, label %then228, label %else229
then228:
  %811 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 0
  %812 = load %nyx_string*, %nyx_string** %811
  %813 = load %nyx_string*, %nyx_string** %794
  %814 = call %nyx_string* @nyx_string_concat(%nyx_string* %812, %nyx_string* %813)
  %815 = load %nyx_string*, %nyx_string** %807
  %816 = call %nyx_string* @nyx_string_concat(%nyx_string* %814, %nyx_string* %815)
  %817 = alloca %nyx_string*
  store %nyx_string* %816, %nyx_string** %817
  %818 = alloca i1
  store i1 true, i1* %818
  %819 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 2
  %820 = load %nyx_string*, %nyx_string** %819
  %821 = load %nyx_string*, %nyx_string** %797
  %822 = call i1 @nyx_string_equals(%nyx_string* %820, %nyx_string* %821)
  br i1 %822, label %sc_or_end232, label %sc_or_rhs231
sc_or_rhs231:
  %823 = load %nyx_string*, %nyx_string** %807
  %824 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 2
  %825 = load %nyx_string*, %nyx_string** %824
  %826 = call i1 @nyx_string_contains(%nyx_string* %823, %nyx_string* %825)
  store i1 %826, i1* %818
  br label %sc_or_end232
sc_or_end232:
  %827 = load i1, i1* %818
  br i1 %827, label %then233, label %else234
then233:
  %828 = load { i64, i8* }*, { i64, i8* }** %778
  %829 = load %nyx_string*, %nyx_string** %817
  %830 = ptrtoint %nyx_string* %829 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %828, i64 %830, i64 2)
  br label %merge235
else234:
  br label %merge235
merge235:
  br label %merge230
else229:
  br label %merge230
merge230:
  %831 = load i64, i64* %788
  %832 = add i64 %831, 1
  store i64 %832, i64* %788
  br label %while_cond225
while_end227:
  br label %merge224
else223:
  br label %merge224
merge224:
  %833 = getelementptr [4 x i8], [4 x i8]* @.str19, i32 0, i32 0
  %834 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str19.c, i8* %833, i64 3)
  %835 = call i8* @nyx_string_to_cstr(%nyx_string* %834)
  %836 = call i1 @nyx_file_exists(i8* %835)
  br i1 %836, label %then236, label %else237
then236:
  %837 = getelementptr [4 x i8], [4 x i8]* @.str20, i32 0, i32 0
  %838 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str20.c, i8* %837, i64 3)
  %839 = call i8* @nyx_string_to_cstr(%nyx_string* %838)
  %840 = call { i64, i8* }* @nyx_readdir(i8* %839)
  %841 = alloca { i64, i8* }*
  store { i64, i8* }* %840, { i64, i8* }** %841
  %842 = alloca i64
  store i64 0, i64* %842
  %843 = getelementptr [9 x i8], [9 x i8]* @.str21, i32 0, i32 0
  %844 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str21.c, i8* %843, i64 8)
  %845 = alloca %nyx_string*
  store %nyx_string* %844, %nyx_string** %845
  %846 = getelementptr [5 x i8], [5 x i8]* @.str22, i32 0, i32 0
  %847 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str22.c, i8* %846, i64 4)
  %848 = alloca %nyx_string*
  store %nyx_string* %847, %nyx_string** %848
  %849 = getelementptr [1 x i8], [1 x i8]* @.str23, i32 0, i32 0
  %850 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str23.c, i8* %849, i64 0)
  %851 = alloca %nyx_string*
  store %nyx_string* %850, %nyx_string** %851
  %852 = call i8* @llvm.stacksave()
  br label %while_cond239
while_cond239:
  %853 = load i64, i64* %842
  %854 = load { i64, i8* }*, { i64, i8* }** %841
  %855 = call i64 @nyx_array_length({ i64, i8* }* %854)
  %856 = icmp slt i64 %853, %855
  br i1 %856, label %while_body240, label %while_end241
while_body240:
  call void @llvm.stackrestore(i8* %852)
  %857 = load { i64, i8* }*, { i64, i8* }** %841
  %858 = load i64, i64* %842
  %859 = call i64 @nyx_array_get_checked({ i64, i8* }* %857, i64 %858, i64 2)
  %860 = inttoptr i64 %859 to %nyx_string*
  %861 = alloca %nyx_string*
  store %nyx_string* %860, %nyx_string** %861
  %862 = load %nyx_string*, %nyx_string** %861
  %863 = load %nyx_string*, %nyx_string** %845
  %864 = call i1 @nyx_string_ends_with(%nyx_string* %862, %nyx_string* %863)
  br i1 %864, label %then242, label %else243
then242:
  %865 = load %nyx_string*, %nyx_string** %848
  %866 = load %nyx_string*, %nyx_string** %861
  %867 = call %nyx_string* @nyx_string_concat(%nyx_string* %865, %nyx_string* %866)
  %868 = alloca %nyx_string*
  store %nyx_string* %867, %nyx_string** %868
  %869 = alloca i1
  store i1 true, i1* %869
  %870 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 2
  %871 = load %nyx_string*, %nyx_string** %870
  %872 = load %nyx_string*, %nyx_string** %851
  %873 = call i1 @nyx_string_equals(%nyx_string* %871, %nyx_string* %872)
  br i1 %873, label %sc_or_end246, label %sc_or_rhs245
sc_or_rhs245:
  %874 = load %nyx_string*, %nyx_string** %861
  %875 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 2
  %876 = load %nyx_string*, %nyx_string** %875
  %877 = call i1 @nyx_string_contains(%nyx_string* %874, %nyx_string* %876)
  store i1 %877, i1* %869
  br label %sc_or_end246
sc_or_end246:
  %878 = load i1, i1* %869
  br i1 %878, label %then247, label %else248
then247:
  %879 = load { i64, i8* }*, { i64, i8* }** %778
  %880 = load %nyx_string*, %nyx_string** %868
  %881 = ptrtoint %nyx_string* %880 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %879, i64 %881, i64 2)
  br label %merge249
else248:
  br label %merge249
merge249:
  br label %merge244
else243:
  br label %merge244
merge244:
  %882 = load i64, i64* %842
  %883 = add i64 %882, 1
  store i64 %883, i64* %842
  br label %while_cond239
while_end241:
  br label %merge238
else237:
  br label %merge238
merge238:
  %884 = load { i64, i8* }*, { i64, i8* }** %778
  ret { i64, i8* }* %884
}

define internal i1 @file_has_test_blocks(
%nyx_string* %path.param) {
  %path.ptr = alloca %nyx_string*
  store %nyx_string* %path.param, %nyx_string** %path.ptr
  %885 = load %nyx_string*, %nyx_string** %path.ptr
  %886 = call i8* @nyx_string_to_cstr(%nyx_string* %885)
  %887 = call %nyx_string* @nyx_read_file(i8* %886)
  %888 = alloca %nyx_string*
  store %nyx_string* %887, %nyx_string** %888
  %889 = load %nyx_string*, %nyx_string** %888
  %890 = getelementptr [7 x i8], [7 x i8]* @.str24, i32 0, i32 0
  %891 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str24.c, i8* %890, i64 6)
  %892 = call i1 @nyx_string_contains(%nyx_string* %889, %nyx_string* %891)
  ret i1 %892
}

define internal %TestResult @compile_and_run(
%nyx_string* %file.param, %TestConfig %config.param) {
  %file.ptr = alloca %nyx_string*
  store %nyx_string* %file.param, %nyx_string** %file.ptr
  %config.ptr = alloca %TestConfig
  store %TestConfig %config.param, %TestConfig* %config.ptr
  %893 = getelementptr [9 x i8], [9 x i8]* @.str25, i32 0, i32 0
  %894 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str25.c, i8* %893, i64 8)
  %895 = call i8* @nyx_string_to_cstr(%nyx_string* %894)
  %896 = call %nyx_string* @nyx_getenv(i8* %895)
  %897 = alloca %nyx_string*
  store %nyx_string* %896, %nyx_string** %897
  %898 = load %nyx_string*, %nyx_string** %897
  %899 = getelementptr [1 x i8], [1 x i8]* @.str26, i32 0, i32 0
  %900 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str26.c, i8* %899, i64 0)
  %901 = call i1 @nyx_string_equals(%nyx_string* %898, %nyx_string* %900)
  br i1 %901, label %then250, label %else251
then250:
  %902 = getelementptr %TestResult, %TestResult* null, i32 1
  %903 = ptrtoint %TestResult* %902 to i64
  %904 = call i8* @GC_malloc(i64 %903)
  %905 = bitcast i8* %904 to %TestResult*
  %906 = load %nyx_string*, %nyx_string** %file.ptr
  %907 = getelementptr %TestResult, %TestResult* %905, i32 0, i32 0
  store %nyx_string* %906, %nyx_string** %907
  %908 = getelementptr %TestResult, %TestResult* %905, i32 0, i32 1
  store i64 0, i64* %908
  %909 = getelementptr %TestResult, %TestResult* %905, i32 0, i32 2
  store i64 0, i64* %909
  %910 = getelementptr [24 x i8], [24 x i8]* @.str27, i32 0, i32 0
  %911 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str27.c, i8* %910, i64 23)
  %912 = getelementptr %TestResult, %TestResult* %905, i32 0, i32 3
  store %nyx_string* %911, %nyx_string** %912
  %913 = getelementptr %TestResult, %TestResult* %905, i32 0, i32 4
  store i1 0, i1* %913
  %914 = load %TestResult, %TestResult* %905
  ret %TestResult %914
else251:
  br label %merge252
merge252:
  %915 = getelementptr [4 x i8], [4 x i8]* @.str28, i32 0, i32 0
  %916 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str28.c, i8* %915, i64 3)
  %917 = call i8* @nyx_string_to_cstr(%nyx_string* %916)
  %918 = call %nyx_string* @nyx_getenv(i8* %917)
  %919 = alloca %nyx_string*
  store %nyx_string* %918, %nyx_string** %919
  %920 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 1
  %921 = load i64, i64* %920
  %922 = call %nyx_string* @nyx_string_from_int(i64 %921)
  %923 = alloca %nyx_string*
  store %nyx_string* %922, %nyx_string** %923
  %924 = getelementptr [19 x i8], [19 x i8]* @.str29, i32 0, i32 0
  %925 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str29.c, i8* %924, i64 18)
  %926 = call i64 @nyx_time_ms()
  %927 = call %nyx_string* @nyx_string_from_int(i64 %926)
  %928 = call %nyx_string* @nyx_string_concat(%nyx_string* %925, %nyx_string* %927)
  %929 = getelementptr [5 x i8], [5 x i8]* @.str30, i32 0, i32 0
  %930 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str30.c, i8* %929, i64 4)
  %931 = call %nyx_string* @nyx_string_concat(%nyx_string* %928, %nyx_string* %930)
  %932 = alloca %nyx_string*
  store %nyx_string* %931, %nyx_string** %932
  %933 = getelementptr [19 x i8], [19 x i8]* @.str31, i32 0, i32 0
  %934 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str31.c, i8* %933, i64 18)
  %935 = call i64 @nyx_time_ms()
  %936 = call %nyx_string* @nyx_string_from_int(i64 %935)
  %937 = call %nyx_string* @nyx_string_concat(%nyx_string* %934, %nyx_string* %936)
  %938 = alloca %nyx_string*
  store %nyx_string* %937, %nyx_string** %938
  %939 = getelementptr [20 x i8], [20 x i8]* @.str32, i32 0, i32 0
  %940 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str32.c, i8* %939, i64 19)
  %941 = getelementptr [5 x i8], [5 x i8]* @.str33, i32 0, i32 0
  %942 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str33.c, i8* %941, i64 4)
  %943 = call %nyx_string* @nyx_string_concat(%nyx_string* %940, %nyx_string* %942)
  %944 = load %nyx_string*, %nyx_string** %897
  %945 = call %nyx_string* @nyx_string_concat(%nyx_string* %943, %nyx_string* %944)
  %946 = getelementptr [3 x i8], [3 x i8]* @.str34, i32 0, i32 0
  %947 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str34.c, i8* %946, i64 2)
  %948 = call %nyx_string* @nyx_string_concat(%nyx_string* %945, %nyx_string* %947)
  %949 = getelementptr [5 x i8], [5 x i8]* @.str35, i32 0, i32 0
  %950 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str35.c, i8* %949, i64 4)
  %951 = call %nyx_string* @nyx_string_concat(%nyx_string* %948, %nyx_string* %950)
  %952 = load %nyx_string*, %nyx_string** %919
  %953 = call %nyx_string* @nyx_string_concat(%nyx_string* %951, %nyx_string* %952)
  %954 = getelementptr [2 x i8], [2 x i8]* @.str36, i32 0, i32 0
  %955 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str36.c, i8* %954, i64 1)
  %956 = call %nyx_string* @nyx_string_concat(%nyx_string* %953, %nyx_string* %955)
  %957 = load %nyx_string*, %nyx_string** %file.ptr
  %958 = call %nyx_string* @nyx_string_concat(%nyx_string* %956, %nyx_string* %957)
  %959 = getelementptr [13 x i8], [13 x i8]* @.str37, i32 0, i32 0
  %960 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str37.c, i8* %959, i64 12)
  %961 = call %nyx_string* @nyx_string_concat(%nyx_string* %958, %nyx_string* %960)
  %962 = getelementptr [43 x i8], [43 x i8]* @.str38, i32 0, i32 0
  %963 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str38.c, i8* %962, i64 42)
  %964 = call %nyx_string* @nyx_string_concat(%nyx_string* %961, %nyx_string* %963)
  %965 = load %nyx_string*, %nyx_string** %919
  %966 = call %nyx_string* @nyx_string_concat(%nyx_string* %964, %nyx_string* %965)
  %967 = getelementptr [21 x i8], [21 x i8]* @.str39, i32 0, i32 0
  %968 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str39.c, i8* %967, i64 20)
  %969 = call %nyx_string* @nyx_string_concat(%nyx_string* %966, %nyx_string* %968)
  %970 = load %nyx_string*, %nyx_string** %932
  %971 = call %nyx_string* @nyx_string_concat(%nyx_string* %969, %nyx_string* %970)
  %972 = getelementptr [7 x i8], [7 x i8]* @.str40, i32 0, i32 0
  %973 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str40.c, i8* %972, i64 6)
  %974 = call %nyx_string* @nyx_string_concat(%nyx_string* %971, %nyx_string* %973)
  %975 = getelementptr [50 x i8], [50 x i8]* @.str41, i32 0, i32 0
  %976 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str41.c, i8* %975, i64 49)
  %977 = call %nyx_string* @nyx_string_concat(%nyx_string* %974, %nyx_string* %976)
  %978 = getelementptr [62 x i8], [62 x i8]* @.str42, i32 0, i32 0
  %979 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str42.c, i8* %978, i64 61)
  %980 = call %nyx_string* @nyx_string_concat(%nyx_string* %977, %nyx_string* %979)
  %981 = getelementptr [54 x i8], [54 x i8]* @.str43, i32 0, i32 0
  %982 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str43.c, i8* %981, i64 53)
  %983 = call %nyx_string* @nyx_string_concat(%nyx_string* %980, %nyx_string* %982)
  %984 = getelementptr [48 x i8], [48 x i8]* @.str44, i32 0, i32 0
  %985 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str44.c, i8* %984, i64 47)
  %986 = call %nyx_string* @nyx_string_concat(%nyx_string* %983, %nyx_string* %985)
  %987 = getelementptr [47 x i8], [47 x i8]* @.str45, i32 0, i32 0
  %988 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str45.c, i8* %987, i64 46)
  %989 = call %nyx_string* @nyx_string_concat(%nyx_string* %986, %nyx_string* %988)
  %990 = getelementptr [67 x i8], [67 x i8]* @.str46, i32 0, i32 0
  %991 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str46.c, i8* %990, i64 66)
  %992 = call %nyx_string* @nyx_string_concat(%nyx_string* %989, %nyx_string* %991)
  %993 = getelementptr [51 x i8], [51 x i8]* @.str47, i32 0, i32 0
  %994 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str47.c, i8* %993, i64 50)
  %995 = call %nyx_string* @nyx_string_concat(%nyx_string* %992, %nyx_string* %994)
  %996 = getelementptr [91 x i8], [91 x i8]* @.str48, i32 0, i32 0
  %997 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str48.c, i8* %996, i64 90)
  %998 = call %nyx_string* @nyx_string_concat(%nyx_string* %995, %nyx_string* %997)
  %999 = getelementptr [23 x i8], [23 x i8]* @.str49, i32 0, i32 0
  %1000 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str49.c, i8* %999, i64 22)
  %1001 = call %nyx_string* @nyx_string_concat(%nyx_string* %998, %nyx_string* %1000)
  %1002 = getelementptr [44 x i8], [44 x i8]* @.str50, i32 0, i32 0
  %1003 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str50.c, i8* %1002, i64 43)
  %1004 = call %nyx_string* @nyx_string_concat(%nyx_string* %1001, %nyx_string* %1003)
  %1005 = getelementptr [4 x i8], [4 x i8]* @.str51, i32 0, i32 0
  %1006 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str51.c, i8* %1005, i64 3)
  %1007 = call %nyx_string* @nyx_string_concat(%nyx_string* %1004, %nyx_string* %1006)
  %1008 = load %nyx_string*, %nyx_string** %938
  %1009 = call %nyx_string* @nyx_string_concat(%nyx_string* %1007, %nyx_string* %1008)
  %1010 = getelementptr [6 x i8], [6 x i8]* @.str52, i32 0, i32 0
  %1011 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str52.c, i8* %1010, i64 5)
  %1012 = call %nyx_string* @nyx_string_concat(%nyx_string* %1009, %nyx_string* %1011)
  %1013 = load %nyx_string*, %nyx_string** %932
  %1014 = call %nyx_string* @nyx_string_concat(%nyx_string* %1012, %nyx_string* %1013)
  %1015 = getelementptr [2 x i8], [2 x i8]* @.str53, i32 0, i32 0
  %1016 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str53.c, i8* %1015, i64 1)
  %1017 = call %nyx_string* @nyx_string_concat(%nyx_string* %1014, %nyx_string* %1016)
  %1018 = getelementptr [9 x i8], [9 x i8]* @.str54, i32 0, i32 0
  %1019 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str54.c, i8* %1018, i64 8)
  %1020 = call %nyx_string* @nyx_string_concat(%nyx_string* %1017, %nyx_string* %1019)
  %1021 = load %nyx_string*, %nyx_string** %923
  %1022 = call %nyx_string* @nyx_string_concat(%nyx_string* %1020, %nyx_string* %1021)
  %1023 = getelementptr [2 x i8], [2 x i8]* @.str55, i32 0, i32 0
  %1024 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str55.c, i8* %1023, i64 1)
  %1025 = call %nyx_string* @nyx_string_concat(%nyx_string* %1022, %nyx_string* %1024)
  %1026 = load %nyx_string*, %nyx_string** %938
  %1027 = call %nyx_string* @nyx_string_concat(%nyx_string* %1025, %nyx_string* %1026)
  %1028 = getelementptr [4 x i8], [4 x i8]* @.str56, i32 0, i32 0
  %1029 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str56.c, i8* %1028, i64 3)
  %1030 = call %nyx_string* @nyx_string_concat(%nyx_string* %1027, %nyx_string* %1029)
  %1031 = load %nyx_string*, %nyx_string** %932
  %1032 = call %nyx_string* @nyx_string_concat(%nyx_string* %1030, %nyx_string* %1031)
  %1033 = getelementptr [7 x i8], [7 x i8]* @.str57, i32 0, i32 0
  %1034 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str57.c, i8* %1033, i64 6)
  %1035 = call %nyx_string* @nyx_string_concat(%nyx_string* %1032, %nyx_string* %1034)
  %1036 = getelementptr [14 x i8], [14 x i8]* @.str58, i32 0, i32 0
  %1037 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str58.c, i8* %1036, i64 13)
  %1038 = call %nyx_string* @nyx_string_concat(%nyx_string* %1035, %nyx_string* %1037)
  %1039 = getelementptr [7 x i8], [7 x i8]* @.str59, i32 0, i32 0
  %1040 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str59.c, i8* %1039, i64 6)
  %1041 = call %nyx_string* @nyx_string_concat(%nyx_string* %1038, %nyx_string* %1040)
  %1042 = load %nyx_string*, %nyx_string** %938
  %1043 = call %nyx_string* @nyx_string_concat(%nyx_string* %1041, %nyx_string* %1042)
  %1044 = getelementptr [2 x i8], [2 x i8]* @.str60, i32 0, i32 0
  %1045 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str60.c, i8* %1044, i64 1)
  %1046 = call %nyx_string* @nyx_string_concat(%nyx_string* %1043, %nyx_string* %1045)
  %1047 = getelementptr [27 x i8], [27 x i8]* @.str61, i32 0, i32 0
  %1048 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str61.c, i8* %1047, i64 26)
  %1049 = call %nyx_string* @nyx_string_concat(%nyx_string* %1046, %nyx_string* %1048)
  %1050 = getelementptr [17 x i8], [17 x i8]* @.str62, i32 0, i32 0
  %1051 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str62.c, i8* %1050, i64 16)
  %1052 = call %nyx_string* @nyx_string_concat(%nyx_string* %1049, %nyx_string* %1051)
  %1053 = alloca %nyx_string*
  store %nyx_string* %1052, %nyx_string** %1053
  %1054 = getelementptr [22 x i8], [22 x i8]* @.str63, i32 0, i32 0
  %1055 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str63.c, i8* %1054, i64 21)
  %1056 = call i64 @nyx_time_ms()
  %1057 = call %nyx_string* @nyx_string_from_int(i64 %1056)
  %1058 = call %nyx_string* @nyx_string_concat(%nyx_string* %1055, %nyx_string* %1057)
  %1059 = getelementptr [4 x i8], [4 x i8]* @.str64, i32 0, i32 0
  %1060 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str64.c, i8* %1059, i64 3)
  %1061 = call %nyx_string* @nyx_string_concat(%nyx_string* %1058, %nyx_string* %1060)
  %1062 = alloca %nyx_string*
  store %nyx_string* %1061, %nyx_string** %1062
  %1063 = load %nyx_string*, %nyx_string** %1062
  %1064 = load %nyx_string*, %nyx_string** %1053
  %1065 = call i8* @nyx_string_to_cstr(%nyx_string* %1063)
  %1066 = call i8* @nyx_string_to_cstr(%nyx_string* %1064)
  %1067 = call i1 @nyx_write_file(i8* %1065, i8* %1066)
  %1068 = getelementptr [6 x i8], [6 x i8]* @.str65, i32 0, i32 0
  %1069 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str65.c, i8* %1068, i64 5)
  %1070 = load %nyx_string*, %nyx_string** %1062
  %1071 = call %nyx_string* @nyx_string_concat(%nyx_string* %1069, %nyx_string* %1070)
  %1072 = call i8* @nyx_string_to_cstr(%nyx_string* %1071)
  %1073 = call i64 @nyx_exec_code(i8* %1072)
  %1074 = alloca i64
  store i64 %1073, i64* %1074
  %1075 = getelementptr [1 x i8], [1 x i8]* @.str66, i32 0, i32 0
  %1076 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str66.c, i8* %1075, i64 0)
  %1077 = alloca %nyx_string*
  store %nyx_string* %1076, %nyx_string** %1077
  %1078 = load %nyx_string*, %nyx_string** %932
  %1079 = call i8* @nyx_string_to_cstr(%nyx_string* %1078)
  %1080 = call i1 @nyx_file_exists(i8* %1079)
  br i1 %1080, label %then253, label %else254
then253:
  %1081 = load %nyx_string*, %nyx_string** %932
  %1082 = call i8* @nyx_string_to_cstr(%nyx_string* %1081)
  %1083 = call %nyx_string* @nyx_read_file(i8* %1082)
  store %nyx_string* %1083, %nyx_string** %1077
  %1084 = getelementptr [7 x i8], [7 x i8]* @.str67, i32 0, i32 0
  %1085 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str67.c, i8* %1084, i64 6)
  %1086 = load %nyx_string*, %nyx_string** %932
  %1087 = call %nyx_string* @nyx_string_concat(%nyx_string* %1085, %nyx_string* %1086)
  %1088 = call i8* @nyx_string_to_cstr(%nyx_string* %1087)
  %1089 = call %nyx_string* @nyx_exec(i8* %1088)
  br label %merge255
else254:
  br label %merge255
merge255:
  %1090 = getelementptr [7 x i8], [7 x i8]* @.str68, i32 0, i32 0
  %1091 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str68.c, i8* %1090, i64 6)
  %1092 = load %nyx_string*, %nyx_string** %1062
  %1093 = call %nyx_string* @nyx_string_concat(%nyx_string* %1091, %nyx_string* %1092)
  %1094 = call i8* @nyx_string_to_cstr(%nyx_string* %1093)
  %1095 = call %nyx_string* @nyx_exec(i8* %1094)
  %1096 = alloca i64
  store i64 0, i64* %1096
  %1097 = alloca i64
  store i64 0, i64* %1097
  %1098 = load %nyx_string*, %nyx_string** %1077
  %1099 = getelementptr [2 x i8], [2 x i8]* @.str69, i32 0, i32 0
  %1100 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str69.c, i8* %1099, i64 1)
  %1101 = call { i64, i8* }* @nyx_string_split(%nyx_string* %1098, %nyx_string* %1100)
  %1102 = alloca { i64, i8* }*
  store { i64, i8* }* %1101, { i64, i8* }** %1102
  %1103 = alloca i64
  store i64 0, i64* %1103
  %1104 = getelementptr [6 x i8], [6 x i8]* @.str70, i32 0, i32 0
  %1105 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str70.c, i8* %1104, i64 5)
  %1106 = alloca %nyx_string*
  store %nyx_string* %1105, %nyx_string** %1106
  %1107 = getelementptr [6 x i8], [6 x i8]* @.str71, i32 0, i32 0
  %1108 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str71.c, i8* %1107, i64 5)
  %1109 = alloca %nyx_string*
  store %nyx_string* %1108, %nyx_string** %1109
  %1110 = call i8* @llvm.stacksave()
  br label %while_cond256
while_cond256:
  %1111 = load i64, i64* %1103
  %1112 = load { i64, i8* }*, { i64, i8* }** %1102
  %1113 = call i64 @nyx_array_length({ i64, i8* }* %1112)
  %1114 = icmp slt i64 %1111, %1113
  br i1 %1114, label %while_body257, label %while_end258
while_body257:
  call void @llvm.stackrestore(i8* %1110)
  %1115 = load { i64, i8* }*, { i64, i8* }** %1102
  %1116 = load i64, i64* %1103
  %1117 = call i64 @nyx_array_get_checked({ i64, i8* }* %1115, i64 %1116, i64 2)
  %1118 = inttoptr i64 %1117 to %nyx_string*
  %1119 = alloca %nyx_string*
  store %nyx_string* %1118, %nyx_string** %1119
  %1120 = load %nyx_string*, %nyx_string** %1119
  %1121 = load %nyx_string*, %nyx_string** %1106
  %1122 = call i1 @nyx_string_contains(%nyx_string* %1120, %nyx_string* %1121)
  br i1 %1122, label %then259, label %else260
then259:
  %1123 = load i64, i64* %1096
  %1124 = add i64 %1123, 1
  store i64 %1124, i64* %1096
  br label %merge261
else260:
  %1125 = load %nyx_string*, %nyx_string** %1119
  %1126 = load %nyx_string*, %nyx_string** %1109
  %1127 = call i1 @nyx_string_contains(%nyx_string* %1125, %nyx_string* %1126)
  br i1 %1127, label %then262, label %else263
then262:
  %1128 = load i64, i64* %1097
  %1129 = add i64 %1128, 1
  store i64 %1129, i64* %1097
  br label %merge264
else263:
  br label %merge264
merge264:
  br label %merge261
merge261:
  %1130 = load i64, i64* %1103
  %1131 = add i64 %1130, 1
  store i64 %1131, i64* %1103
  br label %while_cond256
while_end258:
  %1132 = getelementptr %TestResult, %TestResult* null, i32 1
  %1133 = ptrtoint %TestResult* %1132 to i64
  %1134 = call i8* @GC_malloc(i64 %1133)
  %1135 = bitcast i8* %1134 to %TestResult*
  %1136 = load %nyx_string*, %nyx_string** %file.ptr
  %1137 = getelementptr %TestResult, %TestResult* %1135, i32 0, i32 0
  store %nyx_string* %1136, %nyx_string** %1137
  %1138 = load i64, i64* %1096
  %1139 = getelementptr %TestResult, %TestResult* %1135, i32 0, i32 1
  store i64 %1138, i64* %1139
  %1140 = load i64, i64* %1097
  %1141 = getelementptr %TestResult, %TestResult* %1135, i32 0, i32 2
  store i64 %1140, i64* %1141
  %1142 = load %nyx_string*, %nyx_string** %1077
  %1143 = getelementptr %TestResult, %TestResult* %1135, i32 0, i32 3
  store %nyx_string* %1142, %nyx_string** %1143
  %1144 = alloca i1
  store i1 false, i1* %1144
  %1145 = load i64, i64* %1074
  %1146 = icmp eq i64 %1145, 0
  br i1 %1146, label %sc_and_rhs265, label %sc_and_end266
sc_and_rhs265:
  %1147 = load i64, i64* %1097
  %1148 = icmp eq i64 %1147, 0
  store i1 %1148, i1* %1144
  br label %sc_and_end266
sc_and_end266:
  %1149 = load i1, i1* %1144
  %1150 = getelementptr %TestResult, %TestResult* %1135, i32 0, i32 4
  store i1 %1149, i1* %1150
  %1151 = load %TestResult, %TestResult* %1135
  ret %TestResult %1151
}

define internal i64 @print_result(
%TestResult %result.param, i1 %verbose.param) {
  %result.ptr = alloca %TestResult
  store %TestResult %result.param, %TestResult* %result.ptr
  %verbose.ptr = alloca i1
  store i1 %verbose.param, i1* %verbose.ptr
  %1152 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 4
  %1153 = load i1, i1* %1152
  br i1 %1153, label %then267, label %else268
then267:
  %1154 = getelementptr [9 x i8], [9 x i8]* @.str72, i32 0, i32 0
  %1155 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str72.c, i8* %1154, i64 8)
  %1156 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 0
  %1157 = load %nyx_string*, %nyx_string** %1156
  %1158 = call %nyx_string* @nyx_string_concat(%nyx_string* %1155, %nyx_string* %1157)
  %1159 = getelementptr [3 x i8], [3 x i8]* @.str73, i32 0, i32 0
  %1160 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str73.c, i8* %1159, i64 2)
  %1161 = call %nyx_string* @nyx_string_concat(%nyx_string* %1158, %nyx_string* %1160)
  %1162 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 1
  %1163 = load i64, i64* %1162
  %1164 = call %nyx_string* @nyx_string_from_int(i64 %1163)
  %1165 = call %nyx_string* @nyx_string_concat(%nyx_string* %1161, %nyx_string* %1164)
  %1166 = getelementptr [8 x i8], [8 x i8]* @.str74, i32 0, i32 0
  %1167 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str74.c, i8* %1166, i64 7)
  %1168 = call %nyx_string* @nyx_string_concat(%nyx_string* %1165, %nyx_string* %1167)
  %1169 = call i8* @nyx_string_to_cstr(%nyx_string* %1168)
  call void @nyx_print_string(i8* %1169)
  %1170 = load i1, i1* %verbose.ptr
  br i1 %1170, label %then270, label %else271
then270:
  %1171 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 3
  %1172 = load %nyx_string*, %nyx_string** %1171
  %1173 = call i8* @nyx_string_to_cstr(%nyx_string* %1172)
  call void @nyx_print_string(i8* %1173)
  br label %merge272
else271:
  br label %merge272
merge272:
  br label %merge269
else268:
  %1174 = getelementptr [9 x i8], [9 x i8]* @.str75, i32 0, i32 0
  %1175 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str75.c, i8* %1174, i64 8)
  %1176 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 0
  %1177 = load %nyx_string*, %nyx_string** %1176
  %1178 = call %nyx_string* @nyx_string_concat(%nyx_string* %1175, %nyx_string* %1177)
  %1179 = getelementptr [3 x i8], [3 x i8]* @.str76, i32 0, i32 0
  %1180 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str76.c, i8* %1179, i64 2)
  %1181 = call %nyx_string* @nyx_string_concat(%nyx_string* %1178, %nyx_string* %1180)
  %1182 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 1
  %1183 = load i64, i64* %1182
  %1184 = call %nyx_string* @nyx_string_from_int(i64 %1183)
  %1185 = call %nyx_string* @nyx_string_concat(%nyx_string* %1181, %nyx_string* %1184)
  %1186 = getelementptr [10 x i8], [10 x i8]* @.str77, i32 0, i32 0
  %1187 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str77.c, i8* %1186, i64 9)
  %1188 = call %nyx_string* @nyx_string_concat(%nyx_string* %1185, %nyx_string* %1187)
  %1189 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 2
  %1190 = load i64, i64* %1189
  %1191 = call %nyx_string* @nyx_string_from_int(i64 %1190)
  %1192 = call %nyx_string* @nyx_string_concat(%nyx_string* %1188, %nyx_string* %1191)
  %1193 = getelementptr [9 x i8], [9 x i8]* @.str78, i32 0, i32 0
  %1194 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str78.c, i8* %1193, i64 8)
  %1195 = call %nyx_string* @nyx_string_concat(%nyx_string* %1192, %nyx_string* %1194)
  %1196 = call i8* @nyx_string_to_cstr(%nyx_string* %1195)
  call void @nyx_print_string(i8* %1196)
  %1197 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 3
  %1198 = load %nyx_string*, %nyx_string** %1197
  %1199 = call i8* @nyx_string_to_cstr(%nyx_string* %1198)
  call void @nyx_print_string(i8* %1199)
  br label %merge269
merge269:
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
  %1200 = getelementptr [1 x i8], [1 x i8]* @.str79, i32 0, i32 0
  %1201 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str79.c, i8* %1200, i64 0)
  %1202 = call i8* @nyx_string_to_cstr(%nyx_string* %1201)
  call void @nyx_print_string(i8* %1202)
  %1203 = getelementptr [36 x i8], [36 x i8]* @.str80, i32 0, i32 0
  %1204 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str80.c, i8* %1203, i64 35)
  %1205 = call i8* @nyx_string_to_cstr(%nyx_string* %1204)
  call void @nyx_print_string(i8* %1205)
  %1206 = alloca i64
  store i64 0, i64* %1206
  %1207 = alloca i64
  store i64 0, i64* %1207
  %1208 = alloca i64
  store i64 0, i64* %1208
  %1209 = call i8* @llvm.stacksave()
  br label %while_cond273
while_cond273:
  %1210 = load i64, i64* %1208
  %1211 = load { i64, i8* }*, { i64, i8* }** %results.ptr
  %1212 = call i64 @nyx_array_length({ i64, i8* }* %1211)
  %1213 = icmp slt i64 %1210, %1212
  br i1 %1213, label %while_body274, label %while_end275
while_body274:
  call void @llvm.stackrestore(i8* %1209)
  %1214 = load { i64, i8* }*, { i64, i8* }** %results.ptr
  %1215 = load i64, i64* %1208
  %1216 = call i64 @nyx_array_get({ i64, i8* }* %1214, i64 %1215)
  %1217 = inttoptr i64 %1216 to %TestResult*
  %1218 = load %TestResult, %TestResult* %1217
  %1219 = alloca %TestResult
  store %TestResult %1218, %TestResult* %1219
  %1220 = getelementptr %TestResult, %TestResult* %1219, i32 0, i32 4
  %1221 = load i1, i1* %1220
  br i1 %1221, label %then276, label %else277
then276:
  %1222 = load i64, i64* %1206
  %1223 = add i64 %1222, 1
  store i64 %1223, i64* %1206
  br label %merge278
else277:
  %1224 = load i64, i64* %1207
  %1225 = add i64 %1224, 1
  store i64 %1225, i64* %1207
  br label %merge278
merge278:
  %1226 = load i64, i64* %1208
  %1227 = add i64 %1226, 1
  store i64 %1227, i64* %1208
  br label %while_cond273
while_end275:
  %1228 = getelementptr [11 x i8], [11 x i8]* @.str81, i32 0, i32 0
  %1229 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str81.c, i8* %1228, i64 10)
  %1230 = load i64, i64* %1206
  %1231 = call %nyx_string* @nyx_string_from_int(i64 %1230)
  %1232 = call %nyx_string* @nyx_string_concat(%nyx_string* %1229, %nyx_string* %1231)
  %1233 = getelementptr [10 x i8], [10 x i8]* @.str82, i32 0, i32 0
  %1234 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str82.c, i8* %1233, i64 9)
  %1235 = call %nyx_string* @nyx_string_concat(%nyx_string* %1232, %nyx_string* %1234)
  %1236 = load i64, i64* %1207
  %1237 = call %nyx_string* @nyx_string_from_int(i64 %1236)
  %1238 = call %nyx_string* @nyx_string_concat(%nyx_string* %1235, %nyx_string* %1237)
  %1239 = getelementptr [10 x i8], [10 x i8]* @.str83, i32 0, i32 0
  %1240 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str83.c, i8* %1239, i64 9)
  %1241 = call %nyx_string* @nyx_string_concat(%nyx_string* %1238, %nyx_string* %1240)
  %1242 = load { i64, i8* }*, { i64, i8* }** %results.ptr
  %1243 = call i64 @nyx_array_length({ i64, i8* }* %1242)
  %1244 = call %nyx_string* @nyx_string_from_int(i64 %1243)
  %1245 = call %nyx_string* @nyx_string_concat(%nyx_string* %1241, %nyx_string* %1244)
  %1246 = getelementptr [8 x i8], [8 x i8]* @.str84, i32 0, i32 0
  %1247 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str84.c, i8* %1246, i64 7)
  %1248 = call %nyx_string* @nyx_string_concat(%nyx_string* %1245, %nyx_string* %1247)
  %1249 = call i8* @nyx_string_to_cstr(%nyx_string* %1248)
  call void @nyx_print_string(i8* %1249)
  %1250 = getelementptr [11 x i8], [11 x i8]* @.str85, i32 0, i32 0
  %1251 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str85.c, i8* %1250, i64 10)
  %1252 = load i64, i64* %total_passed.ptr
  %1253 = call %nyx_string* @nyx_string_from_int(i64 %1252)
  %1254 = call %nyx_string* @nyx_string_concat(%nyx_string* %1251, %nyx_string* %1253)
  %1255 = getelementptr [10 x i8], [10 x i8]* @.str86, i32 0, i32 0
  %1256 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str86.c, i8* %1255, i64 9)
  %1257 = call %nyx_string* @nyx_string_concat(%nyx_string* %1254, %nyx_string* %1256)
  %1258 = load i64, i64* %total_failed.ptr
  %1259 = call %nyx_string* @nyx_string_from_int(i64 %1258)
  %1260 = call %nyx_string* @nyx_string_concat(%nyx_string* %1257, %nyx_string* %1259)
  %1261 = getelementptr [10 x i8], [10 x i8]* @.str87, i32 0, i32 0
  %1262 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str87.c, i8* %1261, i64 9)
  %1263 = call %nyx_string* @nyx_string_concat(%nyx_string* %1260, %nyx_string* %1262)
  %1264 = load i64, i64* %total_passed.ptr
  %1265 = load i64, i64* %total_failed.ptr
  %1266 = add i64 %1264, %1265
  %1267 = call %nyx_string* @nyx_string_from_int(i64 %1266)
  %1268 = call %nyx_string* @nyx_string_concat(%nyx_string* %1263, %nyx_string* %1267)
  %1269 = getelementptr [8 x i8], [8 x i8]* @.str88, i32 0, i32 0
  %1270 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str88.c, i8* %1269, i64 7)
  %1271 = call %nyx_string* @nyx_string_concat(%nyx_string* %1268, %nyx_string* %1270)
  %1272 = call i8* @nyx_string_to_cstr(%nyx_string* %1271)
  call void @nyx_print_string(i8* %1272)
  %1273 = alloca i1
  store i1 false, i1* %1273
  %1274 = load i64, i64* %total_failed.ptr
  %1275 = icmp eq i64 %1274, 0
  br i1 %1275, label %sc_and_rhs279, label %sc_and_end280
sc_and_rhs279:
  %1276 = load i64, i64* %1207
  %1277 = icmp eq i64 %1276, 0
  store i1 %1277, i1* %1273
  br label %sc_and_end280
sc_and_end280:
  %1278 = load i1, i1* %1273
  br i1 %1278, label %then281, label %else282
then281:
  %1279 = getelementptr [27 x i8], [27 x i8]* @.str89, i32 0, i32 0
  %1280 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str89.c, i8* %1279, i64 26)
  %1281 = call i8* @nyx_string_to_cstr(%nyx_string* %1280)
  call void @nyx_print_string(i8* %1281)
  br label %merge283
else282:
  %1282 = getelementptr [28 x i8], [28 x i8]* @.str90, i32 0, i32 0
  %1283 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str90.c, i8* %1282, i64 27)
  %1284 = call i8* @nyx_string_to_cstr(%nyx_string* %1283)
  call void @nyx_print_string(i8* %1284)
  br label %merge283
merge283:
  %1285 = getelementptr [36 x i8], [36 x i8]* @.str91, i32 0, i32 0
  %1286 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str91.c, i8* %1285, i64 35)
  %1287 = call i8* @nyx_string_to_cstr(%nyx_string* %1286)
  call void @nyx_print_string(i8* %1287)
  ret i64 0
}

define i64 @main(
i32 %argc, i8** %argv) {
  call void @nyx_set_args(i32 %argc, i8** %argv)
  %1288 = getelementptr [24 x i8], [24 x i8]* @.str92, i32 0, i32 0
  %1289 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str92.c, i8* %1288, i64 23)
  %1290 = call i8* @nyx_string_to_cstr(%nyx_string* %1289)
  call void @nyx_print_string(i8* %1290)
  %1291 = call %TestConfig @load_test_config()
  %1292 = alloca %TestConfig
  store %TestConfig %1291, %TestConfig* %1292
  %1293 = call { i64, i8* }* @nyx_get_args()
  %1294 = alloca { i64, i8* }*
  store { i64, i8* }* %1293, { i64, i8* }** %1294
  %1295 = alloca i64
  store i64 1, i64* %1295
  %1296 = getelementptr [9 x i8], [9 x i8]* @.str93, i32 0, i32 0
  %1297 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str93.c, i8* %1296, i64 8)
  %1298 = alloca %nyx_string*
  store %nyx_string* %1297, %nyx_string** %1298
  %1299 = getelementptr [10 x i8], [10 x i8]* @.str94, i32 0, i32 0
  %1300 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str94.c, i8* %1299, i64 9)
  %1301 = alloca %nyx_string*
  store %nyx_string* %1300, %nyx_string** %1301
  %1302 = getelementptr [3 x i8], [3 x i8]* @.str95, i32 0, i32 0
  %1303 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str95.c, i8* %1302, i64 2)
  %1304 = alloca %nyx_string*
  store %nyx_string* %1303, %nyx_string** %1304
  %1305 = getelementptr [10 x i8], [10 x i8]* @.str96, i32 0, i32 0
  %1306 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str96.c, i8* %1305, i64 9)
  %1307 = alloca %nyx_string*
  store %nyx_string* %1306, %nyx_string** %1307
  %1308 = getelementptr [4 x i8], [4 x i8]* @.str97, i32 0, i32 0
  %1309 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str97.c, i8* %1308, i64 3)
  %1310 = alloca %nyx_string*
  store %nyx_string* %1309, %nyx_string** %1310
  %1311 = call i8* @llvm.stacksave()
  br label %while_cond284
while_cond284:
  %1312 = load i64, i64* %1295
  %1313 = load { i64, i8* }*, { i64, i8* }** %1294
  %1314 = call i64 @nyx_array_length({ i64, i8* }* %1313)
  %1315 = icmp slt i64 %1312, %1314
  br i1 %1315, label %while_body285, label %while_end286
while_body285:
  call void @llvm.stackrestore(i8* %1311)
  %1316 = load { i64, i8* }*, { i64, i8* }** %1294
  %1317 = load i64, i64* %1295
  %1318 = call i64 @nyx_array_get_checked({ i64, i8* }* %1316, i64 %1317, i64 2)
  %1319 = inttoptr i64 %1318 to %nyx_string*
  %1320 = alloca %nyx_string*
  store %nyx_string* %1319, %nyx_string** %1320
  %1321 = alloca i1
  store i1 false, i1* %1321
  %1322 = load %nyx_string*, %nyx_string** %1320
  %1323 = load %nyx_string*, %nyx_string** %1298
  %1324 = call i1 @nyx_string_equals(%nyx_string* %1322, %nyx_string* %1323)
  br i1 %1324, label %sc_and_rhs287, label %sc_and_end288
sc_and_rhs287:
  %1325 = load i64, i64* %1295
  %1326 = add i64 %1325, 1
  %1327 = load { i64, i8* }*, { i64, i8* }** %1294
  %1328 = call i64 @nyx_array_length({ i64, i8* }* %1327)
  %1329 = icmp slt i64 %1326, %1328
  store i1 %1329, i1* %1321
  br label %sc_and_end288
sc_and_end288:
  %1330 = load i1, i1* %1321
  br i1 %1330, label %then289, label %else290
then289:
  %1331 = load i64, i64* %1295
  %1332 = add i64 %1331, 1
  store i64 %1332, i64* %1295
  %1333 = load { i64, i8* }*, { i64, i8* }** %1294
  %1334 = load i64, i64* %1295
  %1335 = call i64 @nyx_array_get_checked({ i64, i8* }* %1333, i64 %1334, i64 2)
  %1336 = inttoptr i64 %1335 to %nyx_string*
  %1337 = alloca %nyx_string*
  store %nyx_string* %1336, %nyx_string** %1337
  %1338 = load %nyx_string*, %nyx_string** %1337
  %1339 = getelementptr %TestConfig, %TestConfig* %1292, i32 0, i32 2
  store %nyx_string* %1338, %nyx_string** %1339
  br label %merge291
else290:
  %1340 = alloca i1
  store i1 true, i1* %1340
  %1341 = load %nyx_string*, %nyx_string** %1320
  %1342 = load %nyx_string*, %nyx_string** %1301
  %1343 = call i1 @nyx_string_equals(%nyx_string* %1341, %nyx_string* %1342)
  br i1 %1343, label %sc_or_end293, label %sc_or_rhs292
sc_or_rhs292:
  %1344 = load %nyx_string*, %nyx_string** %1320
  %1345 = load %nyx_string*, %nyx_string** %1304
  %1346 = call i1 @nyx_string_equals(%nyx_string* %1344, %nyx_string* %1345)
  store i1 %1346, i1* %1340
  br label %sc_or_end293
sc_or_end293:
  %1347 = load i1, i1* %1340
  br i1 %1347, label %then294, label %else295
then294:
  %1348 = getelementptr %TestConfig, %TestConfig* %1292, i32 0, i32 3
  store i1 1, i1* %1348
  br label %merge296
else295:
  %1349 = alloca i1
  store i1 false, i1* %1349
  %1350 = load %nyx_string*, %nyx_string** %1320
  %1351 = load %nyx_string*, %nyx_string** %1307
  %1352 = call i1 @nyx_string_equals(%nyx_string* %1350, %nyx_string* %1351)
  br i1 %1352, label %sc_and_rhs297, label %sc_and_end298
sc_and_rhs297:
  %1353 = load i64, i64* %1295
  %1354 = add i64 %1353, 1
  %1355 = load { i64, i8* }*, { i64, i8* }** %1294
  %1356 = call i64 @nyx_array_length({ i64, i8* }* %1355)
  %1357 = icmp slt i64 %1354, %1356
  store i1 %1357, i1* %1349
  br label %sc_and_end298
sc_and_end298:
  %1358 = load i1, i1* %1349
  br i1 %1358, label %then299, label %else300
then299:
  %1359 = load i64, i64* %1295
  %1360 = add i64 %1359, 1
  store i64 %1360, i64* %1295
  %1361 = load { i64, i8* }*, { i64, i8* }** %1294
  %1362 = load i64, i64* %1295
  %1363 = call i64 @nyx_array_get_checked({ i64, i8* }* %1361, i64 %1362, i64 2)
  %1364 = inttoptr i64 %1363 to %nyx_string*
  %1365 = alloca %nyx_string*
  store %nyx_string* %1364, %nyx_string** %1365
  %1366 = load %nyx_string*, %nyx_string** %1365
  %1367 = call i64 @nyx_string_to_int(%nyx_string* %1366)
  %1368 = getelementptr %TestConfig, %TestConfig* %1292, i32 0, i32 1
  store i64 %1367, i64* %1368
  br label %merge301
else300:
  %1369 = load %nyx_string*, %nyx_string** %1320
  %1370 = load %nyx_string*, %nyx_string** %1310
  %1371 = call i1 @nyx_string_ends_with(%nyx_string* %1369, %nyx_string* %1370)
  br i1 %1371, label %then302, label %else303
then302:
  %1372 = load %nyx_string*, %nyx_string** %1320
  %1373 = getelementptr %TestConfig, %TestConfig* %1292, i32 0, i32 4
  store %nyx_string* %1372, %nyx_string** %1373
  br label %merge304
else303:
  br label %merge304
merge304:
  br label %merge301
merge301:
  br label %merge296
merge296:
  br label %merge291
merge291:
  %1374 = load i64, i64* %1295
  %1375 = add i64 %1374, 1
  store i64 %1375, i64* %1295
  br label %while_cond284
while_end286:
  %1376 = call { i64, i8* }* @nyx_array_new_ptr()
  %1377 = alloca { i64, i8* }*
  store { i64, i8* }* %1376, { i64, i8* }** %1377
  %1378 = getelementptr %TestConfig, %TestConfig* %1292, i32 0, i32 4
  %1379 = load %nyx_string*, %nyx_string** %1378
  %1380 = getelementptr [1 x i8], [1 x i8]* @.str98, i32 0, i32 0
  %1381 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str98.c, i8* %1380, i64 0)
  %1382 = call i1 @nyx_string_equals(%nyx_string* %1379, %nyx_string* %1381)
  %1383 = xor i1 %1382, true
  br i1 %1383, label %then305, label %else306
then305:
  %1384 = getelementptr %TestConfig, %TestConfig* %1292, i32 0, i32 4
  %1385 = load %nyx_string*, %nyx_string** %1384
  %1386 = call i8* @nyx_string_to_cstr(%nyx_string* %1385)
  %1387 = call i1 @nyx_file_exists(i8* %1386)
  %1388 = xor i1 %1387, true
  br i1 %1388, label %then308, label %else309
then308:
  %1389 = getelementptr [24 x i8], [24 x i8]* @.str99, i32 0, i32 0
  %1390 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str99.c, i8* %1389, i64 23)
  %1391 = getelementptr %TestConfig, %TestConfig* %1292, i32 0, i32 4
  %1392 = load %nyx_string*, %nyx_string** %1391
  %1393 = call %nyx_string* @nyx_string_concat(%nyx_string* %1390, %nyx_string* %1392)
  %1394 = call i8* @nyx_string_to_cstr(%nyx_string* %1393)
  call void @nyx_print_string(i8* %1394)
  ret i64 1
else309:
  br label %merge310
merge310:
  %1395 = load { i64, i8* }*, { i64, i8* }** %1377
  %1396 = getelementptr %TestConfig, %TestConfig* %1292, i32 0, i32 4
  %1397 = load %nyx_string*, %nyx_string** %1396
  %1398 = ptrtoint %nyx_string* %1397 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1395, i64 %1398, i64 2)
  br label %merge307
else306:
  %1399 = load %TestConfig, %TestConfig* %1292
  %1400 = call { i64, i8* }* @discover_tests(%TestConfig %1399)
  store { i64, i8* }* %1400, { i64, i8* }** %1377
  br label %merge307
merge307:
  %1401 = load { i64, i8* }*, { i64, i8* }** %1377
  %1402 = call i64 @nyx_array_length({ i64, i8* }* %1401)
  %1403 = icmp eq i64 %1402, 0
  br i1 %1403, label %then311, label %else312
then311:
  %1404 = getelementptr [23 x i8], [23 x i8]* @.str100, i32 0, i32 0
  %1405 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str100.c, i8* %1404, i64 22)
  %1406 = call i8* @nyx_string_to_cstr(%nyx_string* %1405)
  call void @nyx_print_string(i8* %1406)
  %1407 = getelementptr %TestConfig, %TestConfig* %1292, i32 0, i32 2
  %1408 = load %nyx_string*, %nyx_string** %1407
  %1409 = getelementptr [1 x i8], [1 x i8]* @.str101, i32 0, i32 0
  %1410 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str101.c, i8* %1409, i64 0)
  %1411 = call i1 @nyx_string_equals(%nyx_string* %1408, %nyx_string* %1410)
  %1412 = xor i1 %1411, true
  br i1 %1412, label %then314, label %else315
then314:
  %1413 = getelementptr [12 x i8], [12 x i8]* @.str102, i32 0, i32 0
  %1414 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str102.c, i8* %1413, i64 11)
  %1415 = getelementptr %TestConfig, %TestConfig* %1292, i32 0, i32 2
  %1416 = load %nyx_string*, %nyx_string** %1415
  %1417 = call %nyx_string* @nyx_string_concat(%nyx_string* %1414, %nyx_string* %1416)
  %1418 = getelementptr [2 x i8], [2 x i8]* @.str103, i32 0, i32 0
  %1419 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str103.c, i8* %1418, i64 1)
  %1420 = call %nyx_string* @nyx_string_concat(%nyx_string* %1417, %nyx_string* %1419)
  %1421 = call i8* @nyx_string_to_cstr(%nyx_string* %1420)
  call void @nyx_print_string(i8* %1421)
  br label %merge316
else315:
  br label %merge316
merge316:
  %1422 = getelementptr [14 x i8], [14 x i8]* @.str104, i32 0, i32 0
  %1423 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str104.c, i8* %1422, i64 13)
  %1424 = getelementptr %TestConfig, %TestConfig* %1292, i32 0, i32 0
  %1425 = load %nyx_string*, %nyx_string** %1424
  %1426 = call %nyx_string* @nyx_string_concat(%nyx_string* %1423, %nyx_string* %1425)
  %1427 = getelementptr [2 x i8], [2 x i8]* @.str105, i32 0, i32 0
  %1428 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str105.c, i8* %1427, i64 1)
  %1429 = call %nyx_string* @nyx_string_concat(%nyx_string* %1426, %nyx_string* %1428)
  %1430 = call i8* @nyx_string_to_cstr(%nyx_string* %1429)
  call void @nyx_print_string(i8* %1430)
  ret i64 0
else312:
  br label %merge313
merge313:
  %1431 = getelementptr [9 x i8], [9 x i8]* @.str106, i32 0, i32 0
  %1432 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str106.c, i8* %1431, i64 8)
  %1433 = load { i64, i8* }*, { i64, i8* }** %1377
  %1434 = call i64 @nyx_array_length({ i64, i8* }* %1433)
  %1435 = call %nyx_string* @nyx_string_from_int(i64 %1434)
  %1436 = call %nyx_string* @nyx_string_concat(%nyx_string* %1432, %nyx_string* %1435)
  %1437 = getelementptr [14 x i8], [14 x i8]* @.str107, i32 0, i32 0
  %1438 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str107.c, i8* %1437, i64 13)
  %1439 = call %nyx_string* @nyx_string_concat(%nyx_string* %1436, %nyx_string* %1438)
  %1440 = call i8* @nyx_string_to_cstr(%nyx_string* %1439)
  call void @nyx_print_string(i8* %1440)
  %1441 = getelementptr %TestConfig, %TestConfig* %1292, i32 0, i32 2
  %1442 = load %nyx_string*, %nyx_string** %1441
  %1443 = getelementptr [1 x i8], [1 x i8]* @.str108, i32 0, i32 0
  %1444 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str108.c, i8* %1443, i64 0)
  %1445 = call i1 @nyx_string_equals(%nyx_string* %1442, %nyx_string* %1444)
  %1446 = xor i1 %1445, true
  br i1 %1446, label %then317, label %else318
then317:
  %1447 = getelementptr [12 x i8], [12 x i8]* @.str109, i32 0, i32 0
  %1448 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str109.c, i8* %1447, i64 11)
  %1449 = getelementptr %TestConfig, %TestConfig* %1292, i32 0, i32 2
  %1450 = load %nyx_string*, %nyx_string** %1449
  %1451 = call %nyx_string* @nyx_string_concat(%nyx_string* %1448, %nyx_string* %1450)
  %1452 = getelementptr [2 x i8], [2 x i8]* @.str110, i32 0, i32 0
  %1453 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str110.c, i8* %1452, i64 1)
  %1454 = call %nyx_string* @nyx_string_concat(%nyx_string* %1451, %nyx_string* %1453)
  %1455 = call i8* @nyx_string_to_cstr(%nyx_string* %1454)
  call void @nyx_print_string(i8* %1455)
  br label %merge319
else318:
  br label %merge319
merge319:
  %1456 = getelementptr [1 x i8], [1 x i8]* @.str111, i32 0, i32 0
  %1457 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str111.c, i8* %1456, i64 0)
  %1458 = call i8* @nyx_string_to_cstr(%nyx_string* %1457)
  call void @nyx_print_string(i8* %1458)
  %1459 = call { i64, i8* }* @nyx_array_new_ptr()
  %1460 = alloca { i64, i8* }*
  store { i64, i8* }* %1459, { i64, i8* }** %1460
  %1461 = alloca i64
  store i64 0, i64* %1461
  %1462 = alloca i64
  store i64 0, i64* %1462
  %1463 = alloca i64
  store i64 0, i64* %1463
  %1464 = call i8* @llvm.stacksave()
  br label %while_cond320
while_cond320:
  %1465 = load i64, i64* %1463
  %1466 = load { i64, i8* }*, { i64, i8* }** %1377
  %1467 = call i64 @nyx_array_length({ i64, i8* }* %1466)
  %1468 = icmp slt i64 %1465, %1467
  br i1 %1468, label %while_body321, label %while_end322
while_body321:
  call void @llvm.stackrestore(i8* %1464)
  %1469 = load { i64, i8* }*, { i64, i8* }** %1377
  %1470 = load i64, i64* %1463
  %1471 = call i64 @nyx_array_get_checked({ i64, i8* }* %1469, i64 %1470, i64 2)
  %1472 = inttoptr i64 %1471 to %nyx_string*
  %1473 = alloca %nyx_string*
  store %nyx_string* %1472, %nyx_string** %1473
  %1474 = load %nyx_string*, %nyx_string** %1473
  %1475 = call i1 @file_has_test_blocks(%nyx_string* %1474)
  %1476 = xor i1 %1475, true
  br i1 %1476, label %then323, label %else324
then323:
  %1477 = load i64, i64* %1463
  %1478 = add i64 %1477, 1
  store i64 %1478, i64* %1463
  br label %merge325
else324:
  %1479 = load %nyx_string*, %nyx_string** %1473
  %1480 = load %TestConfig, %TestConfig* %1292
  %1481 = call %TestResult @compile_and_run(%nyx_string* %1479, %TestConfig %1480)
  %1482 = alloca %TestResult
  store %TestResult %1481, %TestResult* %1482
  %1483 = load { i64, i8* }*, { i64, i8* }** %1460
  %1484 = load %TestResult, %TestResult* %1482
  %1485 = getelementptr %TestResult, %TestResult* null, i32 1
  %1486 = ptrtoint %TestResult* %1485 to i64
  %1487 = call i8* @GC_malloc(i64 %1486)
  %1488 = bitcast i8* %1487 to %TestResult*
  store %TestResult %1484, %TestResult* %1488
  %1489 = ptrtoint %TestResult* %1488 to i64
  call void @nyx_array_push({ i64, i8* }* %1483, i64 %1489)
  %1490 = load i64, i64* %1461
  %1491 = getelementptr %TestResult, %TestResult* %1482, i32 0, i32 1
  %1492 = load i64, i64* %1491
  %1493 = add i64 %1490, %1492
  store i64 %1493, i64* %1461
  %1494 = load i64, i64* %1462
  %1495 = getelementptr %TestResult, %TestResult* %1482, i32 0, i32 2
  %1496 = load i64, i64* %1495
  %1497 = add i64 %1494, %1496
  store i64 %1497, i64* %1462
  %1498 = load %TestResult, %TestResult* %1482
  %1499 = getelementptr %TestConfig, %TestConfig* %1292, i32 0, i32 3
  %1500 = load i1, i1* %1499
  %1501 = call i64 @print_result(%TestResult %1498, i1 %1500)
  %1502 = load i64, i64* %1463
  %1503 = add i64 %1502, 1
  store i64 %1503, i64* %1463
  br label %merge325
merge325:
  br label %while_cond320
while_end322:
  %1504 = load { i64, i8* }*, { i64, i8* }** %1460
  %1505 = call i64 @nyx_array_length({ i64, i8* }* %1504)
  %1506 = icmp eq i64 %1505, 0
  br i1 %1506, label %then326, label %else327
then326:
  %1507 = getelementptr [35 x i8], [35 x i8]* @.str112, i32 0, i32 0
  %1508 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str112.c, i8* %1507, i64 34)
  %1509 = call i8* @nyx_string_to_cstr(%nyx_string* %1508)
  call void @nyx_print_string(i8* %1509)
  ret i64 0
else327:
  br label %merge328
merge328:
  %1510 = load { i64, i8* }*, { i64, i8* }** %1460
  %1511 = load i64, i64* %1461
  %1512 = load i64, i64* %1462
  %1513 = call i64 @print_summary({ i64, i8* }* %1510, i64 %1511, i64 %1512)
  %1514 = alloca i64
  store i64 0, i64* %1514
  %1515 = alloca i64
  store i64 0, i64* %1515
  %1516 = call i8* @llvm.stacksave()
  br label %while_cond329
while_cond329:
  %1517 = load i64, i64* %1515
  %1518 = load { i64, i8* }*, { i64, i8* }** %1460
  %1519 = call i64 @nyx_array_length({ i64, i8* }* %1518)
  %1520 = icmp slt i64 %1517, %1519
  br i1 %1520, label %while_body330, label %while_end331
while_body330:
  call void @llvm.stackrestore(i8* %1516)
  %1521 = load { i64, i8* }*, { i64, i8* }** %1460
  %1522 = load i64, i64* %1515
  %1523 = call i64 @nyx_array_get({ i64, i8* }* %1521, i64 %1522)
  %1524 = inttoptr i64 %1523 to %TestResult*
  %1525 = load %TestResult, %TestResult* %1524
  %1526 = alloca %TestResult
  store %TestResult %1525, %TestResult* %1526
  %1527 = getelementptr %TestResult, %TestResult* %1526, i32 0, i32 4
  %1528 = load i1, i1* %1527
  %1529 = xor i1 %1528, true
  br i1 %1529, label %then332, label %else333
then332:
  %1530 = load i64, i64* %1514
  %1531 = add i64 %1530, 1
  store i64 %1531, i64* %1514
  br label %merge334
else333:
  br label %merge334
merge334:
  %1532 = load i64, i64* %1515
  %1533 = add i64 %1532, 1
  store i64 %1533, i64* %1515
  br label %while_cond329
while_end331:
  %1534 = alloca i1
  store i1 true, i1* %1534
  %1535 = load i64, i64* %1462
  %1536 = icmp sgt i64 %1535, 0
  br i1 %1536, label %sc_or_end336, label %sc_or_rhs335
sc_or_rhs335:
  %1537 = load i64, i64* %1514
  %1538 = icmp sgt i64 %1537, 0
  store i1 %1538, i1* %1534
  br label %sc_or_end336
sc_or_end336:
  %1539 = load i1, i1* %1534
  br i1 %1539, label %then337, label %else338
then337:
  ret i64 1
else338:
  br label %merge339
merge339:
  ret i64 0
}

; Inicialización de variables globales (llamada automática vía ctor)
define void @__nyx_init_globals() {
entry:
  %1540 = sub i64 0, 9223372036854775808
  store i64 %1540, i64* @INT_MIN
  ret void
}

@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @__nyx_init_globals, i8* null }]

attributes #0 = { returns_twice }

