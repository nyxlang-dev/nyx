source_filename = "script.nx"
target triple = "x86_64-pc-linux-gnu"

%Error = type { i64, %nyx_string*, %nyx_string* }

%TestConfig = type { %nyx_string*, i64, %nyx_string*, i1, %nyx_string* }

%TestResult = type { %nyx_string*, i64, i64, %nyx_string*, i1 }

@.str0 = private unnamed_addr constant [32 x i8] c"mul_div_round: division by zero\00"
@.str0.c = internal global %nyx_string* null
@.str1 = private unnamed_addr constant [36 x i8] c"mul_div_round: result overflows int\00"
@.str1.c = internal global %nyx_string* null
@.str2 = private unnamed_addr constant [10 x i8] c"not_found\00"
@.str2.c = internal global %nyx_string* null
@.str3 = private unnamed_addr constant [11 x i8] c"permission\00"
@.str3.c = internal global %nyx_string* null
@.str4 = private unnamed_addr constant [4 x i8] c"oom\00"
@.str4.c = internal global %nyx_string* null
@.str5 = private unnamed_addr constant [8 x i8] c"invalid\00"
@.str5.c = internal global %nyx_string* null
@.str6 = private unnamed_addr constant [8 x i8] c"timeout\00"
@.str6.c = internal global %nyx_string* null
@.str7 = private unnamed_addr constant [11 x i8] c"connection\00"
@.str7.c = internal global %nyx_string* null
@.str8 = private unnamed_addr constant [7 x i8] c"in_use\00"
@.str8.c = internal global %nyx_string* null
@.str9 = private unnamed_addr constant [3 x i8] c"io\00"
@.str9.c = internal global %nyx_string* null
@.str10 = private unnamed_addr constant [3 x i8] c": \00"
@.str10.c = internal global %nyx_string* null
@.str11 = private unnamed_addr constant [8 x i8] c" (code \00"
@.str11.c = internal global %nyx_string* null
@.str12 = private unnamed_addr constant [2 x i8] c")\00"
@.str12.c = internal global %nyx_string* null
@.str13 = private unnamed_addr constant [4 x i8] c"eof\00"
@.str13.c = internal global %nyx_string* null
@.str14 = private unnamed_addr constant [1 x i8] c"\00"
@.str14.c = internal global %nyx_string* null
@.str15 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str15.c = internal global %nyx_string* null
@.str16 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str16.c = internal global %nyx_string* null
@.str17 = private unnamed_addr constant [1 x i8] c"\00"
@.str17.c = internal global %nyx_string* null
@.str18 = private unnamed_addr constant [6 x i8] c"tests\00"
@.str18.c = internal global %nyx_string* null
@.str19 = private unnamed_addr constant [1 x i8] c"\00"
@.str19.c = internal global %nyx_string* null
@.str20 = private unnamed_addr constant [1 x i8] c"\00"
@.str20.c = internal global %nyx_string* null
@.str21 = private unnamed_addr constant [9 x i8] c"nyx.toml\00"
@.str21.c = internal global %nyx_string* null
@.str22 = private unnamed_addr constant [9 x i8] c"nyx.toml\00"
@.str22.c = internal global %nyx_string* null
@.str23 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str23.c = internal global %nyx_string* null
@.str24 = private unnamed_addr constant [7 x i8] c"[test]\00"
@.str24.c = internal global %nyx_string* null
@.str25 = private unnamed_addr constant [2 x i8] c"[\00"
@.str25.c = internal global %nyx_string* null
@.str26 = private unnamed_addr constant [4 x i8] c"dir\00"
@.str26.c = internal global %nyx_string* null
@.str27 = private unnamed_addr constant [8 x i8] c"timeout\00"
@.str27.c = internal global %nyx_string* null
@.str28 = private unnamed_addr constant [4 x i8] c".nx\00"
@.str28.c = internal global %nyx_string* null
@.str29 = private unnamed_addr constant [2 x i8] c"/\00"
@.str29.c = internal global %nyx_string* null
@.str30 = private unnamed_addr constant [1 x i8] c"\00"
@.str30.c = internal global %nyx_string* null
@.str31 = private unnamed_addr constant [4 x i8] c"src\00"
@.str31.c = internal global %nyx_string* null
@.str32 = private unnamed_addr constant [4 x i8] c"src\00"
@.str32.c = internal global %nyx_string* null
@.str33 = private unnamed_addr constant [9 x i8] c"_test.nx\00"
@.str33.c = internal global %nyx_string* null
@.str34 = private unnamed_addr constant [5 x i8] c"src/\00"
@.str34.c = internal global %nyx_string* null
@.str35 = private unnamed_addr constant [1 x i8] c"\00"
@.str35.c = internal global %nyx_string* null
@.str36 = private unnamed_addr constant [7 x i8] c"test \22\00"
@.str36.c = internal global %nyx_string* null
@.str37 = private unnamed_addr constant [9 x i8] c"NYX_HOME\00"
@.str37.c = internal global %nyx_string* null
@.str38 = private unnamed_addr constant [1 x i8] c"\00"
@.str38.c = internal global %nyx_string* null
@.str39 = private unnamed_addr constant [24 x i8] c"ERROR: NYX_HOME not set\00"
@.str39.c = internal global %nyx_string* null
@.str40 = private unnamed_addr constant [4 x i8] c"PWD\00"
@.str40.c = internal global %nyx_string* null
@.str41 = private unnamed_addr constant [19 x i8] c"/tmp/nyx_test_out_\00"
@.str41.c = internal global %nyx_string* null
@.str42 = private unnamed_addr constant [5 x i8] c".txt\00"
@.str42.c = internal global %nyx_string* null
@.str43 = private unnamed_addr constant [19 x i8] c"/tmp/nyx_test_bin_\00"
@.str43.c = internal global %nyx_string* null
@.str44 = private unnamed_addr constant [20 x i8] c"#!/bin/bash\0aset -e\0a\00"
@.str44.c = internal global %nyx_string* null
@.str45 = private unnamed_addr constant [5 x i8] c"cd \22\00"
@.str45.c = internal global %nyx_string* null
@.str46 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str46.c = internal global %nyx_string* null
@.str47 = private unnamed_addr constant [5 x i8] c"cp \22\00"
@.str47.c = internal global %nyx_string* null
@.str48 = private unnamed_addr constant [2 x i8] c"/\00"
@.str48.c = internal global %nyx_string* null
@.str49 = private unnamed_addr constant [13 x i8] c"\22 script.nx\0a\00"
@.str49.c = internal global %nyx_string* null
@.str50 = private unnamed_addr constant [43 x i8] c"env -u NYX_SKIP_SEMANTIC NYX_PROJECT_DIR=\22\00"
@.str50.c = internal global %nyx_string* null
@.str51 = private unnamed_addr constant [21 x i8] c"\22 ./nyx_bootstrap > \00"
@.str51.c = internal global %nyx_string* null
@.str52 = private unnamed_addr constant [7 x i8] c" 2>&1\0a\00"
@.str52.c = internal global %nyx_string* null
@.str53 = private unnamed_addr constant [50 x i8] c"clang -O2 -Wno-deprecated-declarations script.ll \00"
@.str53.c = internal global %nyx_string* null
@.str54 = private unnamed_addr constant [62 x i8] c"runtime/runtime.c runtime/strings.c runtime/runtime-arrays.c \00"
@.str54.c = internal global %nyx_string* null
@.str55 = private unnamed_addr constant [54 x i8] c"runtime/maps.c runtime/file-io.c runtime/iterators.c \00"
@.str55.c = internal global %nyx_string* null
@.str56 = private unnamed_addr constant [48 x i8] c"runtime/net.c runtime/thread.c runtime/regex.c \00"
@.str56.c = internal global %nyx_string* null
@.str57 = private unnamed_addr constant [47 x i8] c"runtime/time.c runtime/crypto.c runtime/tls.c \00"
@.str57.c = internal global %nyx_string* null
@.str58 = private unnamed_addr constant [67 x i8] c"runtime/scheduler.c runtime/event_loop.c runtime/sqlite_adapter.c \00"
@.str58.c = internal global %nyx_string* null
@.str59 = private unnamed_addr constant [51 x i8] c"runtime/compress.c runtime/random.c runtime/url.c \00"
@.str59.c = internal global %nyx_string* null
@.str60 = private unnamed_addr constant [91 x i8] c"runtime/msgpack.c runtime/websocket.c runtime/persist.c runtime/http2.c runtime/process.c \00"
@.str60.c = internal global %nyx_string* null
@.str61 = private unnamed_addr constant [23 x i8] c"runtime/os/os_posix.c \00"
@.str61.c = internal global %nyx_string* null
@.str62 = private unnamed_addr constant [44 x i8] c"-lgc -lpthread -ldl -lm -lssl -lcrypto -lz \00"
@.str62.c = internal global %nyx_string* null
@.str63 = private unnamed_addr constant [4 x i8] c"-o \00"
@.str63.c = internal global %nyx_string* null
@.str64 = private unnamed_addr constant [6 x i8] c" 2>> \00"
@.str64.c = internal global %nyx_string* null
@.str65 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str65.c = internal global %nyx_string* null
@.str66 = private unnamed_addr constant [9 x i8] c"timeout \00"
@.str66.c = internal global %nyx_string* null
@.str67 = private unnamed_addr constant [2 x i8] c" \00"
@.str67.c = internal global %nyx_string* null
@.str68 = private unnamed_addr constant [4 x i8] c" > \00"
@.str68.c = internal global %nyx_string* null
@.str69 = private unnamed_addr constant [7 x i8] c" 2>&1\0a\00"
@.str69.c = internal global %nyx_string* null
@.str70 = private unnamed_addr constant [14 x i8] c"EXIT_CODE=$?\0a\00"
@.str70.c = internal global %nyx_string* null
@.str71 = private unnamed_addr constant [7 x i8] c"rm -f \00"
@.str71.c = internal global %nyx_string* null
@.str72 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str72.c = internal global %nyx_string* null
@.str73 = private unnamed_addr constant [27 x i8] c"rm -f script.nx script.ll\0a\00"
@.str73.c = internal global %nyx_string* null
@.str74 = private unnamed_addr constant [17 x i8] c"exit $EXIT_CODE\0a\00"
@.str74.c = internal global %nyx_string* null
@.str75 = private unnamed_addr constant [22 x i8] c"/tmp/nyx_test_script_\00"
@.str75.c = internal global %nyx_string* null
@.str76 = private unnamed_addr constant [4 x i8] c".sh\00"
@.str76.c = internal global %nyx_string* null
@.str77 = private unnamed_addr constant [6 x i8] c"bash \00"
@.str77.c = internal global %nyx_string* null
@.str78 = private unnamed_addr constant [1 x i8] c"\00"
@.str78.c = internal global %nyx_string* null
@.str79 = private unnamed_addr constant [7 x i8] c"rm -f \00"
@.str79.c = internal global %nyx_string* null
@.str80 = private unnamed_addr constant [7 x i8] c"rm -f \00"
@.str80.c = internal global %nyx_string* null
@.str81 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str81.c = internal global %nyx_string* null
@.str82 = private unnamed_addr constant [6 x i8] c"PASS:\00"
@.str82.c = internal global %nyx_string* null
@.str83 = private unnamed_addr constant [6 x i8] c"FAIL:\00"
@.str83.c = internal global %nyx_string* null
@.str84 = private unnamed_addr constant [9 x i8] c"  PASS  \00"
@.str84.c = internal global %nyx_string* null
@.str85 = private unnamed_addr constant [3 x i8] c" (\00"
@.str85.c = internal global %nyx_string* null
@.str86 = private unnamed_addr constant [8 x i8] c" tests)\00"
@.str86.c = internal global %nyx_string* null
@.str87 = private unnamed_addr constant [9 x i8] c"  FAIL  \00"
@.str87.c = internal global %nyx_string* null
@.str88 = private unnamed_addr constant [3 x i8] c" (\00"
@.str88.c = internal global %nyx_string* null
@.str89 = private unnamed_addr constant [10 x i8] c" passed, \00"
@.str89.c = internal global %nyx_string* null
@.str90 = private unnamed_addr constant [9 x i8] c" failed)\00"
@.str90.c = internal global %nyx_string* null
@.str91 = private unnamed_addr constant [1 x i8] c"\00"
@.str91.c = internal global %nyx_string* null
@.str92 = private unnamed_addr constant [36 x i8] c"===================================\00"
@.str92.c = internal global %nyx_string* null
@.str93 = private unnamed_addr constant [11 x i8] c"  Files:  \00"
@.str93.c = internal global %nyx_string* null
@.str94 = private unnamed_addr constant [10 x i8] c" passed, \00"
@.str94.c = internal global %nyx_string* null
@.str95 = private unnamed_addr constant [10 x i8] c" failed (\00"
@.str95.c = internal global %nyx_string* null
@.str96 = private unnamed_addr constant [8 x i8] c" total)\00"
@.str96.c = internal global %nyx_string* null
@.str97 = private unnamed_addr constant [11 x i8] c"  Tests:  \00"
@.str97.c = internal global %nyx_string* null
@.str98 = private unnamed_addr constant [10 x i8] c" passed, \00"
@.str98.c = internal global %nyx_string* null
@.str99 = private unnamed_addr constant [10 x i8] c" failed (\00"
@.str99.c = internal global %nyx_string* null
@.str100 = private unnamed_addr constant [8 x i8] c" total)\00"
@.str100.c = internal global %nyx_string* null
@.str101 = private unnamed_addr constant [27 x i8] c"  Status: ALL TESTS PASSED\00"
@.str101.c = internal global %nyx_string* null
@.str102 = private unnamed_addr constant [28 x i8] c"  Status: SOME TESTS FAILED\00"
@.str102.c = internal global %nyx_string* null
@.str103 = private unnamed_addr constant [36 x i8] c"===================================\00"
@.str103.c = internal global %nyx_string* null
@.str104 = private unnamed_addr constant [24 x i8] c"=== Nyx Test Runner ===\00"
@.str104.c = internal global %nyx_string* null
@.str105 = private unnamed_addr constant [9 x i8] c"--filter\00"
@.str105.c = internal global %nyx_string* null
@.str106 = private unnamed_addr constant [10 x i8] c"--verbose\00"
@.str106.c = internal global %nyx_string* null
@.str107 = private unnamed_addr constant [3 x i8] c"-v\00"
@.str107.c = internal global %nyx_string* null
@.str108 = private unnamed_addr constant [10 x i8] c"--timeout\00"
@.str108.c = internal global %nyx_string* null
@.str109 = private unnamed_addr constant [4 x i8] c".nx\00"
@.str109.c = internal global %nyx_string* null
@.str110 = private unnamed_addr constant [1 x i8] c"\00"
@.str110.c = internal global %nyx_string* null
@.str111 = private unnamed_addr constant [24 x i8] c"error: file not found: \00"
@.str111.c = internal global %nyx_string* null
@.str112 = private unnamed_addr constant [23 x i8] c"  No test files found.\00"
@.str112.c = internal global %nyx_string* null
@.str113 = private unnamed_addr constant [1 x i8] c"\00"
@.str113.c = internal global %nyx_string* null
@.str114 = private unnamed_addr constant [12 x i8] c"  Filter: \22\00"
@.str114.c = internal global %nyx_string* null
@.str115 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str115.c = internal global %nyx_string* null
@.str116 = private unnamed_addr constant [14 x i8] c"  Looked in: \00"
@.str116.c = internal global %nyx_string* null
@.str117 = private unnamed_addr constant [2 x i8] c"/\00"
@.str117.c = internal global %nyx_string* null
@.str118 = private unnamed_addr constant [9 x i8] c"  Found \00"
@.str118.c = internal global %nyx_string* null
@.str119 = private unnamed_addr constant [14 x i8] c" test file(s)\00"
@.str119.c = internal global %nyx_string* null
@.str120 = private unnamed_addr constant [1 x i8] c"\00"
@.str120.c = internal global %nyx_string* null
@.str121 = private unnamed_addr constant [12 x i8] c"  Filter: \22\00"
@.str121.c = internal global %nyx_string* null
@.str122 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str122.c = internal global %nyx_string* null
@.str123 = private unnamed_addr constant [1 x i8] c"\00"
@.str123.c = internal global %nyx_string* null
@.str124 = private unnamed_addr constant [35 x i8] c"  No files with test blocks found.\00"
@.str124.c = internal global %nyx_string* null
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
declare void @nyx_print_float32(float)
declare void @nyx_print_string(i8*)
declare void @nyx_print_bool(i1)
declare %nyx_string* @nyx_string_from_float(double)
declare %nyx_string* @nyx_string_from_float32(float)
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
declare i64 @nyx_row_cell({ i64, i8* }*, i64, i64, i8*, i8*, i64)
declare %nyx_string* @nyx_row_problema({ i64, i8* }*, i64, i8*, i8*, i64)
declare i64 @nyx_bool_text_ok(%nyx_string*)
declare i64 @nyx_int_text_ok(%nyx_string*)
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

define %Error @err_new(
i64 %code.param, %nyx_string* %kind.param, %nyx_string* %msg.param) {
  %code.ptr = alloca i64
  store i64 %code.param, i64* %code.ptr
  %kind.ptr = alloca %nyx_string*
  store %nyx_string* %kind.param, %nyx_string** %kind.ptr
  %msg.ptr = alloca %nyx_string*
  store %nyx_string* %msg.param, %nyx_string** %msg.ptr
  %612 = getelementptr %Error, %Error* null, i32 1
  %613 = ptrtoint %Error* %612 to i64
  %614 = call i8* @GC_malloc(i64 %613)
  %615 = bitcast i8* %614 to %Error*
  %616 = load i64, i64* %code.ptr
  %617 = getelementptr %Error, %Error* %615, i32 0, i32 0
  store i64 %616, i64* %617
  %618 = load %nyx_string*, %nyx_string** %kind.ptr
  %619 = getelementptr %Error, %Error* %615, i32 0, i32 1
  store %nyx_string* %618, %nyx_string** %619
  %620 = load %nyx_string*, %nyx_string** %msg.ptr
  %621 = getelementptr %Error, %Error* %615, i32 0, i32 2
  store %nyx_string* %620, %nyx_string** %621
  %622 = load %Error, %Error* %615
  ret %Error %622
}

define %nyx_string* @errno_to_kind(
i64 %code.param) {
  %code.ptr = alloca i64
  store i64 %code.param, i64* %code.ptr
  %623 = load i64, i64* %code.ptr
  %624 = icmp eq i64 %623, 2
  br i1 %624, label %then178, label %else179
then178:
  %625 = getelementptr [10 x i8], [10 x i8]* @.str2, i32 0, i32 0
  %626 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str2.c, i8* %625, i64 9)
  ret %nyx_string* %626
else179:
  br label %merge180
merge180:
  %627 = load i64, i64* %code.ptr
  %628 = icmp eq i64 %627, 13
  br i1 %628, label %then181, label %else182
then181:
  %629 = getelementptr [11 x i8], [11 x i8]* @.str3, i32 0, i32 0
  %630 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str3.c, i8* %629, i64 10)
  ret %nyx_string* %630
else182:
  br label %merge183
merge183:
  %631 = load i64, i64* %code.ptr
  %632 = icmp eq i64 %631, 12
  br i1 %632, label %then184, label %else185
then184:
  %633 = getelementptr [4 x i8], [4 x i8]* @.str4, i32 0, i32 0
  %634 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str4.c, i8* %633, i64 3)
  ret %nyx_string* %634
else185:
  br label %merge186
merge186:
  %635 = load i64, i64* %code.ptr
  %636 = icmp eq i64 %635, 22
  br i1 %636, label %then187, label %else188
then187:
  %637 = getelementptr [8 x i8], [8 x i8]* @.str5, i32 0, i32 0
  %638 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str5.c, i8* %637, i64 7)
  ret %nyx_string* %638
else188:
  br label %merge189
merge189:
  %639 = load i64, i64* %code.ptr
  %640 = icmp eq i64 %639, 110
  br i1 %640, label %then190, label %else191
then190:
  %641 = getelementptr [8 x i8], [8 x i8]* @.str6, i32 0, i32 0
  %642 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str6.c, i8* %641, i64 7)
  ret %nyx_string* %642
else191:
  br label %merge192
merge192:
  %643 = load i64, i64* %code.ptr
  %644 = icmp eq i64 %643, 111
  br i1 %644, label %then193, label %else194
then193:
  %645 = getelementptr [11 x i8], [11 x i8]* @.str7, i32 0, i32 0
  %646 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str7.c, i8* %645, i64 10)
  ret %nyx_string* %646
else194:
  br label %merge195
merge195:
  %647 = load i64, i64* %code.ptr
  %648 = icmp eq i64 %647, 98
  br i1 %648, label %then196, label %else197
then196:
  %649 = getelementptr [7 x i8], [7 x i8]* @.str8, i32 0, i32 0
  %650 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str8.c, i8* %649, i64 6)
  ret %nyx_string* %650
else197:
  br label %merge198
merge198:
  %651 = getelementptr [3 x i8], [3 x i8]* @.str9, i32 0, i32 0
  %652 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str9.c, i8* %651, i64 2)
  ret %nyx_string* %652
}

define %nyx_string* @error_to_string(
%Error %e.param) {
  %e.ptr = alloca %Error
  store %Error %e.param, %Error* %e.ptr
  %653 = getelementptr %Error, %Error* %e.ptr, i32 0, i32 1
  %654 = load %nyx_string*, %nyx_string** %653
  %655 = getelementptr [3 x i8], [3 x i8]* @.str10, i32 0, i32 0
  %656 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str10.c, i8* %655, i64 2)
  %657 = call %nyx_string* @nyx_string_concat(%nyx_string* %654, %nyx_string* %656)
  %658 = getelementptr %Error, %Error* %e.ptr, i32 0, i32 2
  %659 = load %nyx_string*, %nyx_string** %658
  %660 = call %nyx_string* @nyx_string_concat(%nyx_string* %657, %nyx_string* %659)
  %661 = getelementptr [8 x i8], [8 x i8]* @.str11, i32 0, i32 0
  %662 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str11.c, i8* %661, i64 7)
  %663 = call %nyx_string* @nyx_string_concat(%nyx_string* %660, %nyx_string* %662)
  %664 = getelementptr %Error, %Error* %e.ptr, i32 0, i32 0
  %665 = load i64, i64* %664
  %666 = call %nyx_string* @nyx_string_from_int(i64 %665)
  %667 = call %nyx_string* @nyx_string_concat(%nyx_string* %663, %nyx_string* %666)
  %668 = getelementptr [2 x i8], [2 x i8]* @.str12, i32 0, i32 0
  %669 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str12.c, i8* %668, i64 1)
  %670 = call %nyx_string* @nyx_string_concat(%nyx_string* %667, %nyx_string* %669)
  ret %nyx_string* %670
}

define i1 @is_eof(
%Error %e.param) {
  %e.ptr = alloca %Error
  store %Error %e.param, %Error* %e.ptr
  %671 = getelementptr %Error, %Error* %e.ptr, i32 0, i32 1
  %672 = load %nyx_string*, %nyx_string** %671
  %673 = getelementptr [4 x i8], [4 x i8]* @.str13, i32 0, i32 0
  %674 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str13.c, i8* %673, i64 3)
  %675 = call i1 @nyx_string_equals(%nyx_string* %672, %nyx_string* %674)
  ret i1 %675
}

define internal %nyx_string* @parse_toml_value(
%nyx_string* %line.param) {
  %line.ptr = alloca %nyx_string*
  store %nyx_string* %line.param, %nyx_string** %line.ptr
  %676 = load %nyx_string*, %nyx_string** %line.ptr
  %677 = call %nyx_string* @nyx_string_trim(%nyx_string* %676)
  %678 = alloca %nyx_string*
  store %nyx_string* %677, %nyx_string** %678
  %679 = sub i64 0, 1
  %680 = alloca i64
  store i64 %679, i64* %680
  %681 = alloca i64
  store i64 0, i64* %681
  %682 = call i8* @llvm.stacksave()
  br label %while_cond199
while_cond199:
  %683 = load i64, i64* %681
  %684 = load %nyx_string*, %nyx_string** %678
  %685 = call i64 @nyx_string_byte_length(%nyx_string* %684)
  %686 = icmp slt i64 %683, %685
  br i1 %686, label %while_body200, label %while_end201
while_body200:
  call void @llvm.stackrestore(i8* %682)
  %687 = load %nyx_string*, %nyx_string** %678
  %688 = load i64, i64* %681
  %689 = call i8 @nyx_string_char_at(%nyx_string* %687, i64 %688)
  %690 = zext i8 %689 to i64
  %691 = icmp eq i64 %690, 61
  br i1 %691, label %then202, label %else203
then202:
  %692 = load i64, i64* %681
  store i64 %692, i64* %680
  %693 = load %nyx_string*, %nyx_string** %678
  %694 = call i64 @nyx_string_byte_length(%nyx_string* %693)
  store i64 %694, i64* %681
  br label %merge204
else203:
  %695 = load i64, i64* %681
  %696 = add i64 %695, 1
  store i64 %696, i64* %681
  br label %merge204
merge204:
  br label %while_cond199
while_end201:
  %697 = load i64, i64* %680
  %698 = icmp slt i64 %697, 0
  br i1 %698, label %then205, label %else206
then205:
  %699 = getelementptr [1 x i8], [1 x i8]* @.str14, i32 0, i32 0
  %700 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str14.c, i8* %699, i64 0)
  ret %nyx_string* %700
else206:
  br label %merge207
merge207:
  %701 = load %nyx_string*, %nyx_string** %678
  %702 = load i64, i64* %680
  %703 = add i64 %702, 1
  %704 = load %nyx_string*, %nyx_string** %678
  %705 = call i64 @nyx_string_byte_length(%nyx_string* %704)
  %706 = call %nyx_string* @nyx_string_substring(%nyx_string* %701, i64 %703, i64 %705)
  %707 = call %nyx_string* @nyx_string_trim(%nyx_string* %706)
  %708 = alloca %nyx_string*
  store %nyx_string* %707, %nyx_string** %708
  %709 = alloca i1
  store i1 false, i1* %709
  %710 = load %nyx_string*, %nyx_string** %708
  %711 = getelementptr [2 x i8], [2 x i8]* @.str15, i32 0, i32 0
  %712 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str15.c, i8* %711, i64 1)
  %713 = call i1 @nyx_string_starts_with(%nyx_string* %710, %nyx_string* %712)
  br i1 %713, label %sc_and_rhs208, label %sc_and_end209
sc_and_rhs208:
  %714 = load %nyx_string*, %nyx_string** %708
  %715 = getelementptr [2 x i8], [2 x i8]* @.str16, i32 0, i32 0
  %716 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str16.c, i8* %715, i64 1)
  %717 = call i1 @nyx_string_ends_with(%nyx_string* %714, %nyx_string* %716)
  store i1 %717, i1* %709
  br label %sc_and_end209
sc_and_end209:
  %718 = load i1, i1* %709
  br i1 %718, label %then210, label %else211
then210:
  %719 = load %nyx_string*, %nyx_string** %708
  %720 = load %nyx_string*, %nyx_string** %708
  %721 = call i64 @nyx_string_byte_length(%nyx_string* %720)
  %722 = sub i64 %721, 1
  %723 = call %nyx_string* @nyx_string_substring(%nyx_string* %719, i64 1, i64 %722)
  ret %nyx_string* %723
else211:
  br label %merge212
merge212:
  %724 = load %nyx_string*, %nyx_string** %708
  ret %nyx_string* %724
}

define internal %nyx_string* @parse_toml_key(
%nyx_string* %line.param) {
  %line.ptr = alloca %nyx_string*
  store %nyx_string* %line.param, %nyx_string** %line.ptr
  %725 = load %nyx_string*, %nyx_string** %line.ptr
  %726 = call %nyx_string* @nyx_string_trim(%nyx_string* %725)
  %727 = alloca %nyx_string*
  store %nyx_string* %726, %nyx_string** %727
  %728 = sub i64 0, 1
  %729 = alloca i64
  store i64 %728, i64* %729
  %730 = alloca i64
  store i64 0, i64* %730
  %731 = call i8* @llvm.stacksave()
  br label %while_cond213
while_cond213:
  %732 = load i64, i64* %730
  %733 = load %nyx_string*, %nyx_string** %727
  %734 = call i64 @nyx_string_byte_length(%nyx_string* %733)
  %735 = icmp slt i64 %732, %734
  br i1 %735, label %while_body214, label %while_end215
while_body214:
  call void @llvm.stackrestore(i8* %731)
  %736 = load %nyx_string*, %nyx_string** %727
  %737 = load i64, i64* %730
  %738 = call i8 @nyx_string_char_at(%nyx_string* %736, i64 %737)
  %739 = zext i8 %738 to i64
  %740 = icmp eq i64 %739, 61
  br i1 %740, label %then216, label %else217
then216:
  %741 = load i64, i64* %730
  store i64 %741, i64* %729
  %742 = load %nyx_string*, %nyx_string** %727
  %743 = call i64 @nyx_string_byte_length(%nyx_string* %742)
  store i64 %743, i64* %730
  br label %merge218
else217:
  %744 = load i64, i64* %730
  %745 = add i64 %744, 1
  store i64 %745, i64* %730
  br label %merge218
merge218:
  br label %while_cond213
while_end215:
  %746 = load i64, i64* %729
  %747 = icmp slt i64 %746, 0
  br i1 %747, label %then219, label %else220
then219:
  %748 = getelementptr [1 x i8], [1 x i8]* @.str17, i32 0, i32 0
  %749 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str17.c, i8* %748, i64 0)
  ret %nyx_string* %749
else220:
  br label %merge221
merge221:
  %750 = load %nyx_string*, %nyx_string** %727
  %751 = load i64, i64* %729
  %752 = call %nyx_string* @nyx_string_substring(%nyx_string* %750, i64 0, i64 %751)
  %753 = call %nyx_string* @nyx_string_trim(%nyx_string* %752)
  ret %nyx_string* %753
}

define internal %TestConfig @load_test_config(
) {
  %754 = getelementptr %TestConfig, %TestConfig* null, i32 1
  %755 = ptrtoint %TestConfig* %754 to i64
  %756 = call i8* @GC_malloc(i64 %755)
  %757 = bitcast i8* %756 to %TestConfig*
  %758 = getelementptr [6 x i8], [6 x i8]* @.str18, i32 0, i32 0
  %759 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str18.c, i8* %758, i64 5)
  %760 = getelementptr %TestConfig, %TestConfig* %757, i32 0, i32 0
  store %nyx_string* %759, %nyx_string** %760
  %761 = getelementptr %TestConfig, %TestConfig* %757, i32 0, i32 1
  store i64 30, i64* %761
  %762 = getelementptr [1 x i8], [1 x i8]* @.str19, i32 0, i32 0
  %763 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str19.c, i8* %762, i64 0)
  %764 = getelementptr %TestConfig, %TestConfig* %757, i32 0, i32 2
  store %nyx_string* %763, %nyx_string** %764
  %765 = getelementptr %TestConfig, %TestConfig* %757, i32 0, i32 3
  store i1 0, i1* %765
  %766 = getelementptr [1 x i8], [1 x i8]* @.str20, i32 0, i32 0
  %767 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str20.c, i8* %766, i64 0)
  %768 = getelementptr %TestConfig, %TestConfig* %757, i32 0, i32 4
  store %nyx_string* %767, %nyx_string** %768
  %769 = load %TestConfig, %TestConfig* %757
  %770 = alloca %TestConfig
  store %TestConfig %769, %TestConfig* %770
  %771 = getelementptr [9 x i8], [9 x i8]* @.str21, i32 0, i32 0
  %772 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str21.c, i8* %771, i64 8)
  %773 = call i8* @nyx_string_to_cstr(%nyx_string* %772)
  %774 = call i1 @nyx_file_exists(i8* %773)
  %775 = xor i1 %774, true
  br i1 %775, label %then222, label %else223
then222:
  %776 = load %TestConfig, %TestConfig* %770
  ret %TestConfig %776
else223:
  br label %merge224
merge224:
  %777 = getelementptr [9 x i8], [9 x i8]* @.str22, i32 0, i32 0
  %778 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str22.c, i8* %777, i64 8)
  %779 = call i8* @nyx_string_to_cstr(%nyx_string* %778)
  %780 = call %nyx_string* @nyx_read_file(i8* %779)
  %781 = alloca %nyx_string*
  store %nyx_string* %780, %nyx_string** %781
  %782 = load %nyx_string*, %nyx_string** %781
  %783 = getelementptr [2 x i8], [2 x i8]* @.str23, i32 0, i32 0
  %784 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str23.c, i8* %783, i64 1)
  %785 = call { i64, i8* }* @nyx_string_split(%nyx_string* %782, %nyx_string* %784)
  %786 = alloca { i64, i8* }*
  store { i64, i8* }* %785, { i64, i8* }** %786
  %787 = alloca i1
  store i1 0, i1* %787
  %788 = alloca i64
  store i64 0, i64* %788
  %789 = getelementptr [7 x i8], [7 x i8]* @.str24, i32 0, i32 0
  %790 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str24.c, i8* %789, i64 6)
  %791 = alloca %nyx_string*
  store %nyx_string* %790, %nyx_string** %791
  %792 = getelementptr [2 x i8], [2 x i8]* @.str25, i32 0, i32 0
  %793 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str25.c, i8* %792, i64 1)
  %794 = alloca %nyx_string*
  store %nyx_string* %793, %nyx_string** %794
  %795 = getelementptr [4 x i8], [4 x i8]* @.str26, i32 0, i32 0
  %796 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str26.c, i8* %795, i64 3)
  %797 = alloca %nyx_string*
  store %nyx_string* %796, %nyx_string** %797
  %798 = getelementptr [8 x i8], [8 x i8]* @.str27, i32 0, i32 0
  %799 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str27.c, i8* %798, i64 7)
  %800 = alloca %nyx_string*
  store %nyx_string* %799, %nyx_string** %800
  %801 = call i8* @llvm.stacksave()
  br label %while_cond225
while_cond225:
  %802 = load i64, i64* %788
  %803 = load { i64, i8* }*, { i64, i8* }** %786
  %804 = call i64 @nyx_array_length({ i64, i8* }* %803)
  %805 = icmp slt i64 %802, %804
  br i1 %805, label %while_body226, label %while_end227
while_body226:
  call void @llvm.stackrestore(i8* %801)
  %806 = load { i64, i8* }*, { i64, i8* }** %786
  %807 = load i64, i64* %788
  %808 = call i64 @nyx_array_get_checked({ i64, i8* }* %806, i64 %807, i64 2)
  %809 = inttoptr i64 %808 to %nyx_string*
  %810 = alloca %nyx_string*
  store %nyx_string* %809, %nyx_string** %810
  %811 = load %nyx_string*, %nyx_string** %810
  %812 = call %nyx_string* @nyx_string_trim(%nyx_string* %811)
  %813 = alloca %nyx_string*
  store %nyx_string* %812, %nyx_string** %813
  %814 = load %nyx_string*, %nyx_string** %813
  %815 = load %nyx_string*, %nyx_string** %791
  %816 = call i1 @nyx_string_equals(%nyx_string* %814, %nyx_string* %815)
  br i1 %816, label %then228, label %else229
then228:
  store i1 1, i1* %787
  br label %merge230
else229:
  %817 = load %nyx_string*, %nyx_string** %813
  %818 = load %nyx_string*, %nyx_string** %794
  %819 = call i1 @nyx_string_starts_with(%nyx_string* %817, %nyx_string* %818)
  br i1 %819, label %then231, label %else232
then231:
  store i1 0, i1* %787
  br label %merge233
else232:
  %820 = load i1, i1* %787
  br i1 %820, label %then234, label %else235
then234:
  %821 = load %nyx_string*, %nyx_string** %813
  %822 = call %nyx_string* @parse_toml_key(%nyx_string* %821)
  %823 = alloca %nyx_string*
  store %nyx_string* %822, %nyx_string** %823
  %824 = load %nyx_string*, %nyx_string** %813
  %825 = call %nyx_string* @parse_toml_value(%nyx_string* %824)
  %826 = alloca %nyx_string*
  store %nyx_string* %825, %nyx_string** %826
  %827 = load %nyx_string*, %nyx_string** %823
  %828 = load %nyx_string*, %nyx_string** %797
  %829 = call i1 @nyx_string_equals(%nyx_string* %827, %nyx_string* %828)
  br i1 %829, label %then237, label %else238
then237:
  %830 = load %nyx_string*, %nyx_string** %826
  %831 = getelementptr %TestConfig, %TestConfig* %770, i32 0, i32 0
  store %nyx_string* %830, %nyx_string** %831
  br label %merge239
else238:
  br label %merge239
merge239:
  %832 = load %nyx_string*, %nyx_string** %823
  %833 = load %nyx_string*, %nyx_string** %800
  %834 = call i1 @nyx_string_equals(%nyx_string* %832, %nyx_string* %833)
  br i1 %834, label %then240, label %else241
then240:
  %835 = load %nyx_string*, %nyx_string** %826
  %836 = call i64 @nyx_string_to_int(%nyx_string* %835)
  %837 = getelementptr %TestConfig, %TestConfig* %770, i32 0, i32 1
  store i64 %836, i64* %837
  br label %merge242
else241:
  br label %merge242
merge242:
  br label %merge236
else235:
  br label %merge236
merge236:
  br label %merge233
merge233:
  br label %merge230
merge230:
  %838 = load i64, i64* %788
  %839 = add i64 %838, 1
  store i64 %839, i64* %788
  br label %while_cond225
while_end227:
  %840 = load %TestConfig, %TestConfig* %770
  ret %TestConfig %840
}

define internal { i64, i8* }* @discover_tests(
%TestConfig %config.param) {
  %config.ptr = alloca %TestConfig
  store %TestConfig %config.param, %TestConfig* %config.ptr
  %841 = call { i64, i8* }* @nyx_array_new_ptr()
  %842 = alloca { i64, i8* }*
  store { i64, i8* }* %841, { i64, i8* }** %842
  %843 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 0
  %844 = load %nyx_string*, %nyx_string** %843
  %845 = call i8* @nyx_string_to_cstr(%nyx_string* %844)
  %846 = call i1 @nyx_file_exists(i8* %845)
  br i1 %846, label %then243, label %else244
then243:
  %847 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 0
  %848 = load %nyx_string*, %nyx_string** %847
  %849 = call i8* @nyx_string_to_cstr(%nyx_string* %848)
  %850 = call { i64, i8* }* @nyx_readdir(i8* %849)
  %851 = alloca { i64, i8* }*
  store { i64, i8* }* %850, { i64, i8* }** %851
  %852 = alloca i64
  store i64 0, i64* %852
  %853 = getelementptr [4 x i8], [4 x i8]* @.str28, i32 0, i32 0
  %854 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str28.c, i8* %853, i64 3)
  %855 = alloca %nyx_string*
  store %nyx_string* %854, %nyx_string** %855
  %856 = getelementptr [2 x i8], [2 x i8]* @.str29, i32 0, i32 0
  %857 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str29.c, i8* %856, i64 1)
  %858 = alloca %nyx_string*
  store %nyx_string* %857, %nyx_string** %858
  %859 = getelementptr [1 x i8], [1 x i8]* @.str30, i32 0, i32 0
  %860 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str30.c, i8* %859, i64 0)
  %861 = alloca %nyx_string*
  store %nyx_string* %860, %nyx_string** %861
  %862 = call i8* @llvm.stacksave()
  br label %while_cond246
while_cond246:
  %863 = load i64, i64* %852
  %864 = load { i64, i8* }*, { i64, i8* }** %851
  %865 = call i64 @nyx_array_length({ i64, i8* }* %864)
  %866 = icmp slt i64 %863, %865
  br i1 %866, label %while_body247, label %while_end248
while_body247:
  call void @llvm.stackrestore(i8* %862)
  %867 = load { i64, i8* }*, { i64, i8* }** %851
  %868 = load i64, i64* %852
  %869 = call i64 @nyx_array_get_checked({ i64, i8* }* %867, i64 %868, i64 2)
  %870 = inttoptr i64 %869 to %nyx_string*
  %871 = alloca %nyx_string*
  store %nyx_string* %870, %nyx_string** %871
  %872 = load %nyx_string*, %nyx_string** %871
  %873 = load %nyx_string*, %nyx_string** %855
  %874 = call i1 @nyx_string_ends_with(%nyx_string* %872, %nyx_string* %873)
  br i1 %874, label %then249, label %else250
then249:
  %875 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 0
  %876 = load %nyx_string*, %nyx_string** %875
  %877 = load %nyx_string*, %nyx_string** %858
  %878 = call %nyx_string* @nyx_string_concat(%nyx_string* %876, %nyx_string* %877)
  %879 = load %nyx_string*, %nyx_string** %871
  %880 = call %nyx_string* @nyx_string_concat(%nyx_string* %878, %nyx_string* %879)
  %881 = alloca %nyx_string*
  store %nyx_string* %880, %nyx_string** %881
  %882 = alloca i1
  store i1 true, i1* %882
  %883 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 2
  %884 = load %nyx_string*, %nyx_string** %883
  %885 = load %nyx_string*, %nyx_string** %861
  %886 = call i1 @nyx_string_equals(%nyx_string* %884, %nyx_string* %885)
  br i1 %886, label %sc_or_end253, label %sc_or_rhs252
sc_or_rhs252:
  %887 = load %nyx_string*, %nyx_string** %871
  %888 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 2
  %889 = load %nyx_string*, %nyx_string** %888
  %890 = call i1 @nyx_string_contains(%nyx_string* %887, %nyx_string* %889)
  store i1 %890, i1* %882
  br label %sc_or_end253
sc_or_end253:
  %891 = load i1, i1* %882
  br i1 %891, label %then254, label %else255
then254:
  %892 = load { i64, i8* }*, { i64, i8* }** %842
  %893 = load %nyx_string*, %nyx_string** %881
  %894 = ptrtoint %nyx_string* %893 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %892, i64 %894, i64 2)
  br label %merge256
else255:
  br label %merge256
merge256:
  br label %merge251
else250:
  br label %merge251
merge251:
  %895 = load i64, i64* %852
  %896 = add i64 %895, 1
  store i64 %896, i64* %852
  br label %while_cond246
while_end248:
  br label %merge245
else244:
  br label %merge245
merge245:
  %897 = getelementptr [4 x i8], [4 x i8]* @.str31, i32 0, i32 0
  %898 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str31.c, i8* %897, i64 3)
  %899 = call i8* @nyx_string_to_cstr(%nyx_string* %898)
  %900 = call i1 @nyx_file_exists(i8* %899)
  br i1 %900, label %then257, label %else258
then257:
  %901 = getelementptr [4 x i8], [4 x i8]* @.str32, i32 0, i32 0
  %902 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str32.c, i8* %901, i64 3)
  %903 = call i8* @nyx_string_to_cstr(%nyx_string* %902)
  %904 = call { i64, i8* }* @nyx_readdir(i8* %903)
  %905 = alloca { i64, i8* }*
  store { i64, i8* }* %904, { i64, i8* }** %905
  %906 = alloca i64
  store i64 0, i64* %906
  %907 = getelementptr [9 x i8], [9 x i8]* @.str33, i32 0, i32 0
  %908 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str33.c, i8* %907, i64 8)
  %909 = alloca %nyx_string*
  store %nyx_string* %908, %nyx_string** %909
  %910 = getelementptr [5 x i8], [5 x i8]* @.str34, i32 0, i32 0
  %911 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str34.c, i8* %910, i64 4)
  %912 = alloca %nyx_string*
  store %nyx_string* %911, %nyx_string** %912
  %913 = getelementptr [1 x i8], [1 x i8]* @.str35, i32 0, i32 0
  %914 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str35.c, i8* %913, i64 0)
  %915 = alloca %nyx_string*
  store %nyx_string* %914, %nyx_string** %915
  %916 = call i8* @llvm.stacksave()
  br label %while_cond260
while_cond260:
  %917 = load i64, i64* %906
  %918 = load { i64, i8* }*, { i64, i8* }** %905
  %919 = call i64 @nyx_array_length({ i64, i8* }* %918)
  %920 = icmp slt i64 %917, %919
  br i1 %920, label %while_body261, label %while_end262
while_body261:
  call void @llvm.stackrestore(i8* %916)
  %921 = load { i64, i8* }*, { i64, i8* }** %905
  %922 = load i64, i64* %906
  %923 = call i64 @nyx_array_get_checked({ i64, i8* }* %921, i64 %922, i64 2)
  %924 = inttoptr i64 %923 to %nyx_string*
  %925 = alloca %nyx_string*
  store %nyx_string* %924, %nyx_string** %925
  %926 = load %nyx_string*, %nyx_string** %925
  %927 = load %nyx_string*, %nyx_string** %909
  %928 = call i1 @nyx_string_ends_with(%nyx_string* %926, %nyx_string* %927)
  br i1 %928, label %then263, label %else264
then263:
  %929 = load %nyx_string*, %nyx_string** %912
  %930 = load %nyx_string*, %nyx_string** %925
  %931 = call %nyx_string* @nyx_string_concat(%nyx_string* %929, %nyx_string* %930)
  %932 = alloca %nyx_string*
  store %nyx_string* %931, %nyx_string** %932
  %933 = alloca i1
  store i1 true, i1* %933
  %934 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 2
  %935 = load %nyx_string*, %nyx_string** %934
  %936 = load %nyx_string*, %nyx_string** %915
  %937 = call i1 @nyx_string_equals(%nyx_string* %935, %nyx_string* %936)
  br i1 %937, label %sc_or_end267, label %sc_or_rhs266
sc_or_rhs266:
  %938 = load %nyx_string*, %nyx_string** %925
  %939 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 2
  %940 = load %nyx_string*, %nyx_string** %939
  %941 = call i1 @nyx_string_contains(%nyx_string* %938, %nyx_string* %940)
  store i1 %941, i1* %933
  br label %sc_or_end267
sc_or_end267:
  %942 = load i1, i1* %933
  br i1 %942, label %then268, label %else269
then268:
  %943 = load { i64, i8* }*, { i64, i8* }** %842
  %944 = load %nyx_string*, %nyx_string** %932
  %945 = ptrtoint %nyx_string* %944 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %943, i64 %945, i64 2)
  br label %merge270
else269:
  br label %merge270
merge270:
  br label %merge265
else264:
  br label %merge265
merge265:
  %946 = load i64, i64* %906
  %947 = add i64 %946, 1
  store i64 %947, i64* %906
  br label %while_cond260
while_end262:
  br label %merge259
else258:
  br label %merge259
merge259:
  %948 = load { i64, i8* }*, { i64, i8* }** %842
  ret { i64, i8* }* %948
}

define internal i1 @file_has_test_blocks(
%nyx_string* %path.param) {
  %path.ptr = alloca %nyx_string*
  store %nyx_string* %path.param, %nyx_string** %path.ptr
  %949 = load %nyx_string*, %nyx_string** %path.ptr
  %950 = call i8* @nyx_string_to_cstr(%nyx_string* %949)
  %951 = call %nyx_string* @nyx_read_file(i8* %950)
  %952 = alloca %nyx_string*
  store %nyx_string* %951, %nyx_string** %952
  %953 = load %nyx_string*, %nyx_string** %952
  %954 = getelementptr [7 x i8], [7 x i8]* @.str36, i32 0, i32 0
  %955 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str36.c, i8* %954, i64 6)
  %956 = call i1 @nyx_string_contains(%nyx_string* %953, %nyx_string* %955)
  ret i1 %956
}

define internal %TestResult @compile_and_run(
%nyx_string* %file.param, %TestConfig %config.param) {
  %file.ptr = alloca %nyx_string*
  store %nyx_string* %file.param, %nyx_string** %file.ptr
  %config.ptr = alloca %TestConfig
  store %TestConfig %config.param, %TestConfig* %config.ptr
  %957 = getelementptr [9 x i8], [9 x i8]* @.str37, i32 0, i32 0
  %958 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str37.c, i8* %957, i64 8)
  %959 = call i8* @nyx_string_to_cstr(%nyx_string* %958)
  %960 = call %nyx_string* @nyx_getenv(i8* %959)
  %961 = alloca %nyx_string*
  store %nyx_string* %960, %nyx_string** %961
  %962 = load %nyx_string*, %nyx_string** %961
  %963 = getelementptr [1 x i8], [1 x i8]* @.str38, i32 0, i32 0
  %964 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str38.c, i8* %963, i64 0)
  %965 = call i1 @nyx_string_equals(%nyx_string* %962, %nyx_string* %964)
  br i1 %965, label %then271, label %else272
then271:
  %966 = getelementptr %TestResult, %TestResult* null, i32 1
  %967 = ptrtoint %TestResult* %966 to i64
  %968 = call i8* @GC_malloc(i64 %967)
  %969 = bitcast i8* %968 to %TestResult*
  %970 = load %nyx_string*, %nyx_string** %file.ptr
  %971 = getelementptr %TestResult, %TestResult* %969, i32 0, i32 0
  store %nyx_string* %970, %nyx_string** %971
  %972 = getelementptr %TestResult, %TestResult* %969, i32 0, i32 1
  store i64 0, i64* %972
  %973 = getelementptr %TestResult, %TestResult* %969, i32 0, i32 2
  store i64 0, i64* %973
  %974 = getelementptr [24 x i8], [24 x i8]* @.str39, i32 0, i32 0
  %975 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str39.c, i8* %974, i64 23)
  %976 = getelementptr %TestResult, %TestResult* %969, i32 0, i32 3
  store %nyx_string* %975, %nyx_string** %976
  %977 = getelementptr %TestResult, %TestResult* %969, i32 0, i32 4
  store i1 0, i1* %977
  %978 = load %TestResult, %TestResult* %969
  ret %TestResult %978
else272:
  br label %merge273
merge273:
  %979 = getelementptr [4 x i8], [4 x i8]* @.str40, i32 0, i32 0
  %980 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str40.c, i8* %979, i64 3)
  %981 = call i8* @nyx_string_to_cstr(%nyx_string* %980)
  %982 = call %nyx_string* @nyx_getenv(i8* %981)
  %983 = alloca %nyx_string*
  store %nyx_string* %982, %nyx_string** %983
  %984 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 1
  %985 = load i64, i64* %984
  %986 = call %nyx_string* @nyx_string_from_int(i64 %985)
  %987 = alloca %nyx_string*
  store %nyx_string* %986, %nyx_string** %987
  %988 = getelementptr [19 x i8], [19 x i8]* @.str41, i32 0, i32 0
  %989 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str41.c, i8* %988, i64 18)
  %990 = call i64 @nyx_time_ms()
  %991 = call %nyx_string* @nyx_string_from_int(i64 %990)
  %992 = call %nyx_string* @nyx_string_concat(%nyx_string* %989, %nyx_string* %991)
  %993 = getelementptr [5 x i8], [5 x i8]* @.str42, i32 0, i32 0
  %994 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str42.c, i8* %993, i64 4)
  %995 = call %nyx_string* @nyx_string_concat(%nyx_string* %992, %nyx_string* %994)
  %996 = alloca %nyx_string*
  store %nyx_string* %995, %nyx_string** %996
  %997 = getelementptr [19 x i8], [19 x i8]* @.str43, i32 0, i32 0
  %998 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str43.c, i8* %997, i64 18)
  %999 = call i64 @nyx_time_ms()
  %1000 = call %nyx_string* @nyx_string_from_int(i64 %999)
  %1001 = call %nyx_string* @nyx_string_concat(%nyx_string* %998, %nyx_string* %1000)
  %1002 = alloca %nyx_string*
  store %nyx_string* %1001, %nyx_string** %1002
  %1003 = getelementptr [20 x i8], [20 x i8]* @.str44, i32 0, i32 0
  %1004 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str44.c, i8* %1003, i64 19)
  %1005 = getelementptr [5 x i8], [5 x i8]* @.str45, i32 0, i32 0
  %1006 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str45.c, i8* %1005, i64 4)
  %1007 = call %nyx_string* @nyx_string_concat(%nyx_string* %1004, %nyx_string* %1006)
  %1008 = load %nyx_string*, %nyx_string** %961
  %1009 = call %nyx_string* @nyx_string_concat(%nyx_string* %1007, %nyx_string* %1008)
  %1010 = getelementptr [3 x i8], [3 x i8]* @.str46, i32 0, i32 0
  %1011 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str46.c, i8* %1010, i64 2)
  %1012 = call %nyx_string* @nyx_string_concat(%nyx_string* %1009, %nyx_string* %1011)
  %1013 = getelementptr [5 x i8], [5 x i8]* @.str47, i32 0, i32 0
  %1014 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str47.c, i8* %1013, i64 4)
  %1015 = call %nyx_string* @nyx_string_concat(%nyx_string* %1012, %nyx_string* %1014)
  %1016 = load %nyx_string*, %nyx_string** %983
  %1017 = call %nyx_string* @nyx_string_concat(%nyx_string* %1015, %nyx_string* %1016)
  %1018 = getelementptr [2 x i8], [2 x i8]* @.str48, i32 0, i32 0
  %1019 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str48.c, i8* %1018, i64 1)
  %1020 = call %nyx_string* @nyx_string_concat(%nyx_string* %1017, %nyx_string* %1019)
  %1021 = load %nyx_string*, %nyx_string** %file.ptr
  %1022 = call %nyx_string* @nyx_string_concat(%nyx_string* %1020, %nyx_string* %1021)
  %1023 = getelementptr [13 x i8], [13 x i8]* @.str49, i32 0, i32 0
  %1024 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str49.c, i8* %1023, i64 12)
  %1025 = call %nyx_string* @nyx_string_concat(%nyx_string* %1022, %nyx_string* %1024)
  %1026 = getelementptr [43 x i8], [43 x i8]* @.str50, i32 0, i32 0
  %1027 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str50.c, i8* %1026, i64 42)
  %1028 = call %nyx_string* @nyx_string_concat(%nyx_string* %1025, %nyx_string* %1027)
  %1029 = load %nyx_string*, %nyx_string** %983
  %1030 = call %nyx_string* @nyx_string_concat(%nyx_string* %1028, %nyx_string* %1029)
  %1031 = getelementptr [21 x i8], [21 x i8]* @.str51, i32 0, i32 0
  %1032 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str51.c, i8* %1031, i64 20)
  %1033 = call %nyx_string* @nyx_string_concat(%nyx_string* %1030, %nyx_string* %1032)
  %1034 = load %nyx_string*, %nyx_string** %996
  %1035 = call %nyx_string* @nyx_string_concat(%nyx_string* %1033, %nyx_string* %1034)
  %1036 = getelementptr [7 x i8], [7 x i8]* @.str52, i32 0, i32 0
  %1037 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str52.c, i8* %1036, i64 6)
  %1038 = call %nyx_string* @nyx_string_concat(%nyx_string* %1035, %nyx_string* %1037)
  %1039 = getelementptr [50 x i8], [50 x i8]* @.str53, i32 0, i32 0
  %1040 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str53.c, i8* %1039, i64 49)
  %1041 = call %nyx_string* @nyx_string_concat(%nyx_string* %1038, %nyx_string* %1040)
  %1042 = getelementptr [62 x i8], [62 x i8]* @.str54, i32 0, i32 0
  %1043 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str54.c, i8* %1042, i64 61)
  %1044 = call %nyx_string* @nyx_string_concat(%nyx_string* %1041, %nyx_string* %1043)
  %1045 = getelementptr [54 x i8], [54 x i8]* @.str55, i32 0, i32 0
  %1046 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str55.c, i8* %1045, i64 53)
  %1047 = call %nyx_string* @nyx_string_concat(%nyx_string* %1044, %nyx_string* %1046)
  %1048 = getelementptr [48 x i8], [48 x i8]* @.str56, i32 0, i32 0
  %1049 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str56.c, i8* %1048, i64 47)
  %1050 = call %nyx_string* @nyx_string_concat(%nyx_string* %1047, %nyx_string* %1049)
  %1051 = getelementptr [47 x i8], [47 x i8]* @.str57, i32 0, i32 0
  %1052 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str57.c, i8* %1051, i64 46)
  %1053 = call %nyx_string* @nyx_string_concat(%nyx_string* %1050, %nyx_string* %1052)
  %1054 = getelementptr [67 x i8], [67 x i8]* @.str58, i32 0, i32 0
  %1055 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str58.c, i8* %1054, i64 66)
  %1056 = call %nyx_string* @nyx_string_concat(%nyx_string* %1053, %nyx_string* %1055)
  %1057 = getelementptr [51 x i8], [51 x i8]* @.str59, i32 0, i32 0
  %1058 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str59.c, i8* %1057, i64 50)
  %1059 = call %nyx_string* @nyx_string_concat(%nyx_string* %1056, %nyx_string* %1058)
  %1060 = getelementptr [91 x i8], [91 x i8]* @.str60, i32 0, i32 0
  %1061 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str60.c, i8* %1060, i64 90)
  %1062 = call %nyx_string* @nyx_string_concat(%nyx_string* %1059, %nyx_string* %1061)
  %1063 = getelementptr [23 x i8], [23 x i8]* @.str61, i32 0, i32 0
  %1064 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str61.c, i8* %1063, i64 22)
  %1065 = call %nyx_string* @nyx_string_concat(%nyx_string* %1062, %nyx_string* %1064)
  %1066 = getelementptr [44 x i8], [44 x i8]* @.str62, i32 0, i32 0
  %1067 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str62.c, i8* %1066, i64 43)
  %1068 = call %nyx_string* @nyx_string_concat(%nyx_string* %1065, %nyx_string* %1067)
  %1069 = getelementptr [4 x i8], [4 x i8]* @.str63, i32 0, i32 0
  %1070 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str63.c, i8* %1069, i64 3)
  %1071 = call %nyx_string* @nyx_string_concat(%nyx_string* %1068, %nyx_string* %1070)
  %1072 = load %nyx_string*, %nyx_string** %1002
  %1073 = call %nyx_string* @nyx_string_concat(%nyx_string* %1071, %nyx_string* %1072)
  %1074 = getelementptr [6 x i8], [6 x i8]* @.str64, i32 0, i32 0
  %1075 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str64.c, i8* %1074, i64 5)
  %1076 = call %nyx_string* @nyx_string_concat(%nyx_string* %1073, %nyx_string* %1075)
  %1077 = load %nyx_string*, %nyx_string** %996
  %1078 = call %nyx_string* @nyx_string_concat(%nyx_string* %1076, %nyx_string* %1077)
  %1079 = getelementptr [2 x i8], [2 x i8]* @.str65, i32 0, i32 0
  %1080 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str65.c, i8* %1079, i64 1)
  %1081 = call %nyx_string* @nyx_string_concat(%nyx_string* %1078, %nyx_string* %1080)
  %1082 = getelementptr [9 x i8], [9 x i8]* @.str66, i32 0, i32 0
  %1083 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str66.c, i8* %1082, i64 8)
  %1084 = call %nyx_string* @nyx_string_concat(%nyx_string* %1081, %nyx_string* %1083)
  %1085 = load %nyx_string*, %nyx_string** %987
  %1086 = call %nyx_string* @nyx_string_concat(%nyx_string* %1084, %nyx_string* %1085)
  %1087 = getelementptr [2 x i8], [2 x i8]* @.str67, i32 0, i32 0
  %1088 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str67.c, i8* %1087, i64 1)
  %1089 = call %nyx_string* @nyx_string_concat(%nyx_string* %1086, %nyx_string* %1088)
  %1090 = load %nyx_string*, %nyx_string** %1002
  %1091 = call %nyx_string* @nyx_string_concat(%nyx_string* %1089, %nyx_string* %1090)
  %1092 = getelementptr [4 x i8], [4 x i8]* @.str68, i32 0, i32 0
  %1093 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str68.c, i8* %1092, i64 3)
  %1094 = call %nyx_string* @nyx_string_concat(%nyx_string* %1091, %nyx_string* %1093)
  %1095 = load %nyx_string*, %nyx_string** %996
  %1096 = call %nyx_string* @nyx_string_concat(%nyx_string* %1094, %nyx_string* %1095)
  %1097 = getelementptr [7 x i8], [7 x i8]* @.str69, i32 0, i32 0
  %1098 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str69.c, i8* %1097, i64 6)
  %1099 = call %nyx_string* @nyx_string_concat(%nyx_string* %1096, %nyx_string* %1098)
  %1100 = getelementptr [14 x i8], [14 x i8]* @.str70, i32 0, i32 0
  %1101 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str70.c, i8* %1100, i64 13)
  %1102 = call %nyx_string* @nyx_string_concat(%nyx_string* %1099, %nyx_string* %1101)
  %1103 = getelementptr [7 x i8], [7 x i8]* @.str71, i32 0, i32 0
  %1104 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str71.c, i8* %1103, i64 6)
  %1105 = call %nyx_string* @nyx_string_concat(%nyx_string* %1102, %nyx_string* %1104)
  %1106 = load %nyx_string*, %nyx_string** %1002
  %1107 = call %nyx_string* @nyx_string_concat(%nyx_string* %1105, %nyx_string* %1106)
  %1108 = getelementptr [2 x i8], [2 x i8]* @.str72, i32 0, i32 0
  %1109 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str72.c, i8* %1108, i64 1)
  %1110 = call %nyx_string* @nyx_string_concat(%nyx_string* %1107, %nyx_string* %1109)
  %1111 = getelementptr [27 x i8], [27 x i8]* @.str73, i32 0, i32 0
  %1112 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str73.c, i8* %1111, i64 26)
  %1113 = call %nyx_string* @nyx_string_concat(%nyx_string* %1110, %nyx_string* %1112)
  %1114 = getelementptr [17 x i8], [17 x i8]* @.str74, i32 0, i32 0
  %1115 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str74.c, i8* %1114, i64 16)
  %1116 = call %nyx_string* @nyx_string_concat(%nyx_string* %1113, %nyx_string* %1115)
  %1117 = alloca %nyx_string*
  store %nyx_string* %1116, %nyx_string** %1117
  %1118 = getelementptr [22 x i8], [22 x i8]* @.str75, i32 0, i32 0
  %1119 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str75.c, i8* %1118, i64 21)
  %1120 = call i64 @nyx_time_ms()
  %1121 = call %nyx_string* @nyx_string_from_int(i64 %1120)
  %1122 = call %nyx_string* @nyx_string_concat(%nyx_string* %1119, %nyx_string* %1121)
  %1123 = getelementptr [4 x i8], [4 x i8]* @.str76, i32 0, i32 0
  %1124 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str76.c, i8* %1123, i64 3)
  %1125 = call %nyx_string* @nyx_string_concat(%nyx_string* %1122, %nyx_string* %1124)
  %1126 = alloca %nyx_string*
  store %nyx_string* %1125, %nyx_string** %1126
  %1127 = load %nyx_string*, %nyx_string** %1126
  %1128 = load %nyx_string*, %nyx_string** %1117
  %1129 = call i8* @nyx_string_to_cstr(%nyx_string* %1127)
  %1130 = call i8* @nyx_string_to_cstr(%nyx_string* %1128)
  %1131 = call i1 @nyx_write_file(i8* %1129, i8* %1130)
  %1132 = getelementptr [6 x i8], [6 x i8]* @.str77, i32 0, i32 0
  %1133 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str77.c, i8* %1132, i64 5)
  %1134 = load %nyx_string*, %nyx_string** %1126
  %1135 = call %nyx_string* @nyx_string_concat(%nyx_string* %1133, %nyx_string* %1134)
  %1136 = call i8* @nyx_string_to_cstr(%nyx_string* %1135)
  %1137 = call i64 @nyx_exec_code(i8* %1136)
  %1138 = alloca i64
  store i64 %1137, i64* %1138
  %1139 = getelementptr [1 x i8], [1 x i8]* @.str78, i32 0, i32 0
  %1140 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str78.c, i8* %1139, i64 0)
  %1141 = alloca %nyx_string*
  store %nyx_string* %1140, %nyx_string** %1141
  %1142 = load %nyx_string*, %nyx_string** %996
  %1143 = call i8* @nyx_string_to_cstr(%nyx_string* %1142)
  %1144 = call i1 @nyx_file_exists(i8* %1143)
  br i1 %1144, label %then274, label %else275
then274:
  %1145 = load %nyx_string*, %nyx_string** %996
  %1146 = call i8* @nyx_string_to_cstr(%nyx_string* %1145)
  %1147 = call %nyx_string* @nyx_read_file(i8* %1146)
  store %nyx_string* %1147, %nyx_string** %1141
  %1148 = getelementptr [7 x i8], [7 x i8]* @.str79, i32 0, i32 0
  %1149 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str79.c, i8* %1148, i64 6)
  %1150 = load %nyx_string*, %nyx_string** %996
  %1151 = call %nyx_string* @nyx_string_concat(%nyx_string* %1149, %nyx_string* %1150)
  %1152 = call i8* @nyx_string_to_cstr(%nyx_string* %1151)
  %1153 = call %nyx_string* @nyx_exec(i8* %1152)
  br label %merge276
else275:
  br label %merge276
merge276:
  %1154 = getelementptr [7 x i8], [7 x i8]* @.str80, i32 0, i32 0
  %1155 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str80.c, i8* %1154, i64 6)
  %1156 = load %nyx_string*, %nyx_string** %1126
  %1157 = call %nyx_string* @nyx_string_concat(%nyx_string* %1155, %nyx_string* %1156)
  %1158 = call i8* @nyx_string_to_cstr(%nyx_string* %1157)
  %1159 = call %nyx_string* @nyx_exec(i8* %1158)
  %1160 = alloca i64
  store i64 0, i64* %1160
  %1161 = alloca i64
  store i64 0, i64* %1161
  %1162 = load %nyx_string*, %nyx_string** %1141
  %1163 = getelementptr [2 x i8], [2 x i8]* @.str81, i32 0, i32 0
  %1164 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str81.c, i8* %1163, i64 1)
  %1165 = call { i64, i8* }* @nyx_string_split(%nyx_string* %1162, %nyx_string* %1164)
  %1166 = alloca { i64, i8* }*
  store { i64, i8* }* %1165, { i64, i8* }** %1166
  %1167 = alloca i64
  store i64 0, i64* %1167
  %1168 = getelementptr [6 x i8], [6 x i8]* @.str82, i32 0, i32 0
  %1169 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str82.c, i8* %1168, i64 5)
  %1170 = alloca %nyx_string*
  store %nyx_string* %1169, %nyx_string** %1170
  %1171 = getelementptr [6 x i8], [6 x i8]* @.str83, i32 0, i32 0
  %1172 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str83.c, i8* %1171, i64 5)
  %1173 = alloca %nyx_string*
  store %nyx_string* %1172, %nyx_string** %1173
  %1174 = call i8* @llvm.stacksave()
  br label %while_cond277
while_cond277:
  %1175 = load i64, i64* %1167
  %1176 = load { i64, i8* }*, { i64, i8* }** %1166
  %1177 = call i64 @nyx_array_length({ i64, i8* }* %1176)
  %1178 = icmp slt i64 %1175, %1177
  br i1 %1178, label %while_body278, label %while_end279
while_body278:
  call void @llvm.stackrestore(i8* %1174)
  %1179 = load { i64, i8* }*, { i64, i8* }** %1166
  %1180 = load i64, i64* %1167
  %1181 = call i64 @nyx_array_get_checked({ i64, i8* }* %1179, i64 %1180, i64 2)
  %1182 = inttoptr i64 %1181 to %nyx_string*
  %1183 = alloca %nyx_string*
  store %nyx_string* %1182, %nyx_string** %1183
  %1184 = load %nyx_string*, %nyx_string** %1183
  %1185 = load %nyx_string*, %nyx_string** %1170
  %1186 = call i1 @nyx_string_contains(%nyx_string* %1184, %nyx_string* %1185)
  br i1 %1186, label %then280, label %else281
then280:
  %1187 = load i64, i64* %1160
  %1188 = add i64 %1187, 1
  store i64 %1188, i64* %1160
  br label %merge282
else281:
  %1189 = load %nyx_string*, %nyx_string** %1183
  %1190 = load %nyx_string*, %nyx_string** %1173
  %1191 = call i1 @nyx_string_contains(%nyx_string* %1189, %nyx_string* %1190)
  br i1 %1191, label %then283, label %else284
then283:
  %1192 = load i64, i64* %1161
  %1193 = add i64 %1192, 1
  store i64 %1193, i64* %1161
  br label %merge285
else284:
  br label %merge285
merge285:
  br label %merge282
merge282:
  %1194 = load i64, i64* %1167
  %1195 = add i64 %1194, 1
  store i64 %1195, i64* %1167
  br label %while_cond277
while_end279:
  %1196 = getelementptr %TestResult, %TestResult* null, i32 1
  %1197 = ptrtoint %TestResult* %1196 to i64
  %1198 = call i8* @GC_malloc(i64 %1197)
  %1199 = bitcast i8* %1198 to %TestResult*
  %1200 = load %nyx_string*, %nyx_string** %file.ptr
  %1201 = getelementptr %TestResult, %TestResult* %1199, i32 0, i32 0
  store %nyx_string* %1200, %nyx_string** %1201
  %1202 = load i64, i64* %1160
  %1203 = getelementptr %TestResult, %TestResult* %1199, i32 0, i32 1
  store i64 %1202, i64* %1203
  %1204 = load i64, i64* %1161
  %1205 = getelementptr %TestResult, %TestResult* %1199, i32 0, i32 2
  store i64 %1204, i64* %1205
  %1206 = load %nyx_string*, %nyx_string** %1141
  %1207 = getelementptr %TestResult, %TestResult* %1199, i32 0, i32 3
  store %nyx_string* %1206, %nyx_string** %1207
  %1208 = alloca i1
  store i1 false, i1* %1208
  %1209 = load i64, i64* %1138
  %1210 = icmp eq i64 %1209, 0
  br i1 %1210, label %sc_and_rhs286, label %sc_and_end287
sc_and_rhs286:
  %1211 = load i64, i64* %1161
  %1212 = icmp eq i64 %1211, 0
  store i1 %1212, i1* %1208
  br label %sc_and_end287
sc_and_end287:
  %1213 = load i1, i1* %1208
  %1214 = getelementptr %TestResult, %TestResult* %1199, i32 0, i32 4
  store i1 %1213, i1* %1214
  %1215 = load %TestResult, %TestResult* %1199
  ret %TestResult %1215
}

define internal i64 @print_result(
%TestResult %result.param, i1 %verbose.param) {
  %result.ptr = alloca %TestResult
  store %TestResult %result.param, %TestResult* %result.ptr
  %verbose.ptr = alloca i1
  store i1 %verbose.param, i1* %verbose.ptr
  %1216 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 4
  %1217 = load i1, i1* %1216
  br i1 %1217, label %then288, label %else289
then288:
  %1218 = getelementptr [9 x i8], [9 x i8]* @.str84, i32 0, i32 0
  %1219 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str84.c, i8* %1218, i64 8)
  %1220 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 0
  %1221 = load %nyx_string*, %nyx_string** %1220
  %1222 = call %nyx_string* @nyx_string_concat(%nyx_string* %1219, %nyx_string* %1221)
  %1223 = getelementptr [3 x i8], [3 x i8]* @.str85, i32 0, i32 0
  %1224 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str85.c, i8* %1223, i64 2)
  %1225 = call %nyx_string* @nyx_string_concat(%nyx_string* %1222, %nyx_string* %1224)
  %1226 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 1
  %1227 = load i64, i64* %1226
  %1228 = call %nyx_string* @nyx_string_from_int(i64 %1227)
  %1229 = call %nyx_string* @nyx_string_concat(%nyx_string* %1225, %nyx_string* %1228)
  %1230 = getelementptr [8 x i8], [8 x i8]* @.str86, i32 0, i32 0
  %1231 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str86.c, i8* %1230, i64 7)
  %1232 = call %nyx_string* @nyx_string_concat(%nyx_string* %1229, %nyx_string* %1231)
  %1233 = call i8* @nyx_string_to_cstr(%nyx_string* %1232)
  call void @nyx_print_string(i8* %1233)
  %1234 = load i1, i1* %verbose.ptr
  br i1 %1234, label %then291, label %else292
then291:
  %1235 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 3
  %1236 = load %nyx_string*, %nyx_string** %1235
  %1237 = call i8* @nyx_string_to_cstr(%nyx_string* %1236)
  call void @nyx_print_string(i8* %1237)
  br label %merge293
else292:
  br label %merge293
merge293:
  br label %merge290
else289:
  %1238 = getelementptr [9 x i8], [9 x i8]* @.str87, i32 0, i32 0
  %1239 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str87.c, i8* %1238, i64 8)
  %1240 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 0
  %1241 = load %nyx_string*, %nyx_string** %1240
  %1242 = call %nyx_string* @nyx_string_concat(%nyx_string* %1239, %nyx_string* %1241)
  %1243 = getelementptr [3 x i8], [3 x i8]* @.str88, i32 0, i32 0
  %1244 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str88.c, i8* %1243, i64 2)
  %1245 = call %nyx_string* @nyx_string_concat(%nyx_string* %1242, %nyx_string* %1244)
  %1246 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 1
  %1247 = load i64, i64* %1246
  %1248 = call %nyx_string* @nyx_string_from_int(i64 %1247)
  %1249 = call %nyx_string* @nyx_string_concat(%nyx_string* %1245, %nyx_string* %1248)
  %1250 = getelementptr [10 x i8], [10 x i8]* @.str89, i32 0, i32 0
  %1251 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str89.c, i8* %1250, i64 9)
  %1252 = call %nyx_string* @nyx_string_concat(%nyx_string* %1249, %nyx_string* %1251)
  %1253 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 2
  %1254 = load i64, i64* %1253
  %1255 = call %nyx_string* @nyx_string_from_int(i64 %1254)
  %1256 = call %nyx_string* @nyx_string_concat(%nyx_string* %1252, %nyx_string* %1255)
  %1257 = getelementptr [9 x i8], [9 x i8]* @.str90, i32 0, i32 0
  %1258 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str90.c, i8* %1257, i64 8)
  %1259 = call %nyx_string* @nyx_string_concat(%nyx_string* %1256, %nyx_string* %1258)
  %1260 = call i8* @nyx_string_to_cstr(%nyx_string* %1259)
  call void @nyx_print_string(i8* %1260)
  %1261 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 3
  %1262 = load %nyx_string*, %nyx_string** %1261
  %1263 = call i8* @nyx_string_to_cstr(%nyx_string* %1262)
  call void @nyx_print_string(i8* %1263)
  br label %merge290
merge290:
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
  %1264 = getelementptr [1 x i8], [1 x i8]* @.str91, i32 0, i32 0
  %1265 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str91.c, i8* %1264, i64 0)
  %1266 = call i8* @nyx_string_to_cstr(%nyx_string* %1265)
  call void @nyx_print_string(i8* %1266)
  %1267 = getelementptr [36 x i8], [36 x i8]* @.str92, i32 0, i32 0
  %1268 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str92.c, i8* %1267, i64 35)
  %1269 = call i8* @nyx_string_to_cstr(%nyx_string* %1268)
  call void @nyx_print_string(i8* %1269)
  %1270 = alloca i64
  store i64 0, i64* %1270
  %1271 = alloca i64
  store i64 0, i64* %1271
  %1272 = alloca i64
  store i64 0, i64* %1272
  %1273 = call i8* @llvm.stacksave()
  br label %while_cond294
while_cond294:
  %1274 = load i64, i64* %1272
  %1275 = load { i64, i8* }*, { i64, i8* }** %results.ptr
  %1276 = call i64 @nyx_array_length({ i64, i8* }* %1275)
  %1277 = icmp slt i64 %1274, %1276
  br i1 %1277, label %while_body295, label %while_end296
while_body295:
  call void @llvm.stackrestore(i8* %1273)
  %1278 = load { i64, i8* }*, { i64, i8* }** %results.ptr
  %1279 = load i64, i64* %1272
  %1280 = call i64 @nyx_array_get({ i64, i8* }* %1278, i64 %1279)
  %1281 = inttoptr i64 %1280 to %TestResult*
  %1282 = load %TestResult, %TestResult* %1281
  %1283 = alloca %TestResult
  store %TestResult %1282, %TestResult* %1283
  %1284 = getelementptr %TestResult, %TestResult* %1283, i32 0, i32 4
  %1285 = load i1, i1* %1284
  br i1 %1285, label %then297, label %else298
then297:
  %1286 = load i64, i64* %1270
  %1287 = add i64 %1286, 1
  store i64 %1287, i64* %1270
  br label %merge299
else298:
  %1288 = load i64, i64* %1271
  %1289 = add i64 %1288, 1
  store i64 %1289, i64* %1271
  br label %merge299
merge299:
  %1290 = load i64, i64* %1272
  %1291 = add i64 %1290, 1
  store i64 %1291, i64* %1272
  br label %while_cond294
while_end296:
  %1292 = getelementptr [11 x i8], [11 x i8]* @.str93, i32 0, i32 0
  %1293 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str93.c, i8* %1292, i64 10)
  %1294 = load i64, i64* %1270
  %1295 = call %nyx_string* @nyx_string_from_int(i64 %1294)
  %1296 = call %nyx_string* @nyx_string_concat(%nyx_string* %1293, %nyx_string* %1295)
  %1297 = getelementptr [10 x i8], [10 x i8]* @.str94, i32 0, i32 0
  %1298 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str94.c, i8* %1297, i64 9)
  %1299 = call %nyx_string* @nyx_string_concat(%nyx_string* %1296, %nyx_string* %1298)
  %1300 = load i64, i64* %1271
  %1301 = call %nyx_string* @nyx_string_from_int(i64 %1300)
  %1302 = call %nyx_string* @nyx_string_concat(%nyx_string* %1299, %nyx_string* %1301)
  %1303 = getelementptr [10 x i8], [10 x i8]* @.str95, i32 0, i32 0
  %1304 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str95.c, i8* %1303, i64 9)
  %1305 = call %nyx_string* @nyx_string_concat(%nyx_string* %1302, %nyx_string* %1304)
  %1306 = load { i64, i8* }*, { i64, i8* }** %results.ptr
  %1307 = call i64 @nyx_array_length({ i64, i8* }* %1306)
  %1308 = call %nyx_string* @nyx_string_from_int(i64 %1307)
  %1309 = call %nyx_string* @nyx_string_concat(%nyx_string* %1305, %nyx_string* %1308)
  %1310 = getelementptr [8 x i8], [8 x i8]* @.str96, i32 0, i32 0
  %1311 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str96.c, i8* %1310, i64 7)
  %1312 = call %nyx_string* @nyx_string_concat(%nyx_string* %1309, %nyx_string* %1311)
  %1313 = call i8* @nyx_string_to_cstr(%nyx_string* %1312)
  call void @nyx_print_string(i8* %1313)
  %1314 = getelementptr [11 x i8], [11 x i8]* @.str97, i32 0, i32 0
  %1315 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str97.c, i8* %1314, i64 10)
  %1316 = load i64, i64* %total_passed.ptr
  %1317 = call %nyx_string* @nyx_string_from_int(i64 %1316)
  %1318 = call %nyx_string* @nyx_string_concat(%nyx_string* %1315, %nyx_string* %1317)
  %1319 = getelementptr [10 x i8], [10 x i8]* @.str98, i32 0, i32 0
  %1320 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str98.c, i8* %1319, i64 9)
  %1321 = call %nyx_string* @nyx_string_concat(%nyx_string* %1318, %nyx_string* %1320)
  %1322 = load i64, i64* %total_failed.ptr
  %1323 = call %nyx_string* @nyx_string_from_int(i64 %1322)
  %1324 = call %nyx_string* @nyx_string_concat(%nyx_string* %1321, %nyx_string* %1323)
  %1325 = getelementptr [10 x i8], [10 x i8]* @.str99, i32 0, i32 0
  %1326 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str99.c, i8* %1325, i64 9)
  %1327 = call %nyx_string* @nyx_string_concat(%nyx_string* %1324, %nyx_string* %1326)
  %1328 = load i64, i64* %total_passed.ptr
  %1329 = load i64, i64* %total_failed.ptr
  %1330 = add i64 %1328, %1329
  %1331 = call %nyx_string* @nyx_string_from_int(i64 %1330)
  %1332 = call %nyx_string* @nyx_string_concat(%nyx_string* %1327, %nyx_string* %1331)
  %1333 = getelementptr [8 x i8], [8 x i8]* @.str100, i32 0, i32 0
  %1334 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str100.c, i8* %1333, i64 7)
  %1335 = call %nyx_string* @nyx_string_concat(%nyx_string* %1332, %nyx_string* %1334)
  %1336 = call i8* @nyx_string_to_cstr(%nyx_string* %1335)
  call void @nyx_print_string(i8* %1336)
  %1337 = alloca i1
  store i1 false, i1* %1337
  %1338 = load i64, i64* %total_failed.ptr
  %1339 = icmp eq i64 %1338, 0
  br i1 %1339, label %sc_and_rhs300, label %sc_and_end301
sc_and_rhs300:
  %1340 = load i64, i64* %1271
  %1341 = icmp eq i64 %1340, 0
  store i1 %1341, i1* %1337
  br label %sc_and_end301
sc_and_end301:
  %1342 = load i1, i1* %1337
  br i1 %1342, label %then302, label %else303
then302:
  %1343 = getelementptr [27 x i8], [27 x i8]* @.str101, i32 0, i32 0
  %1344 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str101.c, i8* %1343, i64 26)
  %1345 = call i8* @nyx_string_to_cstr(%nyx_string* %1344)
  call void @nyx_print_string(i8* %1345)
  br label %merge304
else303:
  %1346 = getelementptr [28 x i8], [28 x i8]* @.str102, i32 0, i32 0
  %1347 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str102.c, i8* %1346, i64 27)
  %1348 = call i8* @nyx_string_to_cstr(%nyx_string* %1347)
  call void @nyx_print_string(i8* %1348)
  br label %merge304
merge304:
  %1349 = getelementptr [36 x i8], [36 x i8]* @.str103, i32 0, i32 0
  %1350 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str103.c, i8* %1349, i64 35)
  %1351 = call i8* @nyx_string_to_cstr(%nyx_string* %1350)
  call void @nyx_print_string(i8* %1351)
  ret i64 0
}

define i64 @main(
i32 %argc, i8** %argv) {
  call void @nyx_set_args(i32 %argc, i8** %argv)
  %1352 = getelementptr [24 x i8], [24 x i8]* @.str104, i32 0, i32 0
  %1353 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str104.c, i8* %1352, i64 23)
  %1354 = call i8* @nyx_string_to_cstr(%nyx_string* %1353)
  call void @nyx_print_string(i8* %1354)
  %1355 = call %TestConfig @load_test_config()
  %1356 = alloca %TestConfig
  store %TestConfig %1355, %TestConfig* %1356
  %1357 = call { i64, i8* }* @nyx_get_args()
  %1358 = alloca { i64, i8* }*
  store { i64, i8* }* %1357, { i64, i8* }** %1358
  %1359 = alloca i64
  store i64 1, i64* %1359
  %1360 = getelementptr [9 x i8], [9 x i8]* @.str105, i32 0, i32 0
  %1361 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str105.c, i8* %1360, i64 8)
  %1362 = alloca %nyx_string*
  store %nyx_string* %1361, %nyx_string** %1362
  %1363 = getelementptr [10 x i8], [10 x i8]* @.str106, i32 0, i32 0
  %1364 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str106.c, i8* %1363, i64 9)
  %1365 = alloca %nyx_string*
  store %nyx_string* %1364, %nyx_string** %1365
  %1366 = getelementptr [3 x i8], [3 x i8]* @.str107, i32 0, i32 0
  %1367 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str107.c, i8* %1366, i64 2)
  %1368 = alloca %nyx_string*
  store %nyx_string* %1367, %nyx_string** %1368
  %1369 = getelementptr [10 x i8], [10 x i8]* @.str108, i32 0, i32 0
  %1370 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str108.c, i8* %1369, i64 9)
  %1371 = alloca %nyx_string*
  store %nyx_string* %1370, %nyx_string** %1371
  %1372 = getelementptr [4 x i8], [4 x i8]* @.str109, i32 0, i32 0
  %1373 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str109.c, i8* %1372, i64 3)
  %1374 = alloca %nyx_string*
  store %nyx_string* %1373, %nyx_string** %1374
  %1375 = call i8* @llvm.stacksave()
  br label %while_cond305
while_cond305:
  %1376 = load i64, i64* %1359
  %1377 = load { i64, i8* }*, { i64, i8* }** %1358
  %1378 = call i64 @nyx_array_length({ i64, i8* }* %1377)
  %1379 = icmp slt i64 %1376, %1378
  br i1 %1379, label %while_body306, label %while_end307
while_body306:
  call void @llvm.stackrestore(i8* %1375)
  %1380 = load { i64, i8* }*, { i64, i8* }** %1358
  %1381 = load i64, i64* %1359
  %1382 = call i64 @nyx_array_get_checked({ i64, i8* }* %1380, i64 %1381, i64 2)
  %1383 = inttoptr i64 %1382 to %nyx_string*
  %1384 = alloca %nyx_string*
  store %nyx_string* %1383, %nyx_string** %1384
  %1385 = alloca i1
  store i1 false, i1* %1385
  %1386 = load %nyx_string*, %nyx_string** %1384
  %1387 = load %nyx_string*, %nyx_string** %1362
  %1388 = call i1 @nyx_string_equals(%nyx_string* %1386, %nyx_string* %1387)
  br i1 %1388, label %sc_and_rhs308, label %sc_and_end309
sc_and_rhs308:
  %1389 = load i64, i64* %1359
  %1390 = add i64 %1389, 1
  %1391 = load { i64, i8* }*, { i64, i8* }** %1358
  %1392 = call i64 @nyx_array_length({ i64, i8* }* %1391)
  %1393 = icmp slt i64 %1390, %1392
  store i1 %1393, i1* %1385
  br label %sc_and_end309
sc_and_end309:
  %1394 = load i1, i1* %1385
  br i1 %1394, label %then310, label %else311
then310:
  %1395 = load i64, i64* %1359
  %1396 = add i64 %1395, 1
  store i64 %1396, i64* %1359
  %1397 = load { i64, i8* }*, { i64, i8* }** %1358
  %1398 = load i64, i64* %1359
  %1399 = call i64 @nyx_array_get_checked({ i64, i8* }* %1397, i64 %1398, i64 2)
  %1400 = inttoptr i64 %1399 to %nyx_string*
  %1401 = alloca %nyx_string*
  store %nyx_string* %1400, %nyx_string** %1401
  %1402 = load %nyx_string*, %nyx_string** %1401
  %1403 = getelementptr %TestConfig, %TestConfig* %1356, i32 0, i32 2
  store %nyx_string* %1402, %nyx_string** %1403
  br label %merge312
else311:
  %1404 = alloca i1
  store i1 true, i1* %1404
  %1405 = load %nyx_string*, %nyx_string** %1384
  %1406 = load %nyx_string*, %nyx_string** %1365
  %1407 = call i1 @nyx_string_equals(%nyx_string* %1405, %nyx_string* %1406)
  br i1 %1407, label %sc_or_end314, label %sc_or_rhs313
sc_or_rhs313:
  %1408 = load %nyx_string*, %nyx_string** %1384
  %1409 = load %nyx_string*, %nyx_string** %1368
  %1410 = call i1 @nyx_string_equals(%nyx_string* %1408, %nyx_string* %1409)
  store i1 %1410, i1* %1404
  br label %sc_or_end314
sc_or_end314:
  %1411 = load i1, i1* %1404
  br i1 %1411, label %then315, label %else316
then315:
  %1412 = getelementptr %TestConfig, %TestConfig* %1356, i32 0, i32 3
  store i1 1, i1* %1412
  br label %merge317
else316:
  %1413 = alloca i1
  store i1 false, i1* %1413
  %1414 = load %nyx_string*, %nyx_string** %1384
  %1415 = load %nyx_string*, %nyx_string** %1371
  %1416 = call i1 @nyx_string_equals(%nyx_string* %1414, %nyx_string* %1415)
  br i1 %1416, label %sc_and_rhs318, label %sc_and_end319
sc_and_rhs318:
  %1417 = load i64, i64* %1359
  %1418 = add i64 %1417, 1
  %1419 = load { i64, i8* }*, { i64, i8* }** %1358
  %1420 = call i64 @nyx_array_length({ i64, i8* }* %1419)
  %1421 = icmp slt i64 %1418, %1420
  store i1 %1421, i1* %1413
  br label %sc_and_end319
sc_and_end319:
  %1422 = load i1, i1* %1413
  br i1 %1422, label %then320, label %else321
then320:
  %1423 = load i64, i64* %1359
  %1424 = add i64 %1423, 1
  store i64 %1424, i64* %1359
  %1425 = load { i64, i8* }*, { i64, i8* }** %1358
  %1426 = load i64, i64* %1359
  %1427 = call i64 @nyx_array_get_checked({ i64, i8* }* %1425, i64 %1426, i64 2)
  %1428 = inttoptr i64 %1427 to %nyx_string*
  %1429 = alloca %nyx_string*
  store %nyx_string* %1428, %nyx_string** %1429
  %1430 = load %nyx_string*, %nyx_string** %1429
  %1431 = call i64 @nyx_string_to_int(%nyx_string* %1430)
  %1432 = getelementptr %TestConfig, %TestConfig* %1356, i32 0, i32 1
  store i64 %1431, i64* %1432
  br label %merge322
else321:
  %1433 = load %nyx_string*, %nyx_string** %1384
  %1434 = load %nyx_string*, %nyx_string** %1374
  %1435 = call i1 @nyx_string_ends_with(%nyx_string* %1433, %nyx_string* %1434)
  br i1 %1435, label %then323, label %else324
then323:
  %1436 = load %nyx_string*, %nyx_string** %1384
  %1437 = getelementptr %TestConfig, %TestConfig* %1356, i32 0, i32 4
  store %nyx_string* %1436, %nyx_string** %1437
  br label %merge325
else324:
  br label %merge325
merge325:
  br label %merge322
merge322:
  br label %merge317
merge317:
  br label %merge312
merge312:
  %1438 = load i64, i64* %1359
  %1439 = add i64 %1438, 1
  store i64 %1439, i64* %1359
  br label %while_cond305
while_end307:
  %1440 = call { i64, i8* }* @nyx_array_new_ptr()
  %1441 = alloca { i64, i8* }*
  store { i64, i8* }* %1440, { i64, i8* }** %1441
  %1442 = getelementptr %TestConfig, %TestConfig* %1356, i32 0, i32 4
  %1443 = load %nyx_string*, %nyx_string** %1442
  %1444 = getelementptr [1 x i8], [1 x i8]* @.str110, i32 0, i32 0
  %1445 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str110.c, i8* %1444, i64 0)
  %1446 = call i1 @nyx_string_equals(%nyx_string* %1443, %nyx_string* %1445)
  %1447 = xor i1 %1446, true
  br i1 %1447, label %then326, label %else327
then326:
  %1448 = getelementptr %TestConfig, %TestConfig* %1356, i32 0, i32 4
  %1449 = load %nyx_string*, %nyx_string** %1448
  %1450 = call i8* @nyx_string_to_cstr(%nyx_string* %1449)
  %1451 = call i1 @nyx_file_exists(i8* %1450)
  %1452 = xor i1 %1451, true
  br i1 %1452, label %then329, label %else330
then329:
  %1453 = getelementptr [24 x i8], [24 x i8]* @.str111, i32 0, i32 0
  %1454 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str111.c, i8* %1453, i64 23)
  %1455 = getelementptr %TestConfig, %TestConfig* %1356, i32 0, i32 4
  %1456 = load %nyx_string*, %nyx_string** %1455
  %1457 = call %nyx_string* @nyx_string_concat(%nyx_string* %1454, %nyx_string* %1456)
  %1458 = call i8* @nyx_string_to_cstr(%nyx_string* %1457)
  call void @nyx_print_string(i8* %1458)
  ret i64 1
else330:
  br label %merge331
merge331:
  %1459 = load { i64, i8* }*, { i64, i8* }** %1441
  %1460 = getelementptr %TestConfig, %TestConfig* %1356, i32 0, i32 4
  %1461 = load %nyx_string*, %nyx_string** %1460
  %1462 = ptrtoint %nyx_string* %1461 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1459, i64 %1462, i64 2)
  br label %merge328
else327:
  %1463 = load %TestConfig, %TestConfig* %1356
  %1464 = call { i64, i8* }* @discover_tests(%TestConfig %1463)
  store { i64, i8* }* %1464, { i64, i8* }** %1441
  br label %merge328
merge328:
  %1465 = load { i64, i8* }*, { i64, i8* }** %1441
  %1466 = call i64 @nyx_array_length({ i64, i8* }* %1465)
  %1467 = icmp eq i64 %1466, 0
  br i1 %1467, label %then332, label %else333
then332:
  %1468 = getelementptr [23 x i8], [23 x i8]* @.str112, i32 0, i32 0
  %1469 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str112.c, i8* %1468, i64 22)
  %1470 = call i8* @nyx_string_to_cstr(%nyx_string* %1469)
  call void @nyx_print_string(i8* %1470)
  %1471 = getelementptr %TestConfig, %TestConfig* %1356, i32 0, i32 2
  %1472 = load %nyx_string*, %nyx_string** %1471
  %1473 = getelementptr [1 x i8], [1 x i8]* @.str113, i32 0, i32 0
  %1474 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str113.c, i8* %1473, i64 0)
  %1475 = call i1 @nyx_string_equals(%nyx_string* %1472, %nyx_string* %1474)
  %1476 = xor i1 %1475, true
  br i1 %1476, label %then335, label %else336
then335:
  %1477 = getelementptr [12 x i8], [12 x i8]* @.str114, i32 0, i32 0
  %1478 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str114.c, i8* %1477, i64 11)
  %1479 = getelementptr %TestConfig, %TestConfig* %1356, i32 0, i32 2
  %1480 = load %nyx_string*, %nyx_string** %1479
  %1481 = call %nyx_string* @nyx_string_concat(%nyx_string* %1478, %nyx_string* %1480)
  %1482 = getelementptr [2 x i8], [2 x i8]* @.str115, i32 0, i32 0
  %1483 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str115.c, i8* %1482, i64 1)
  %1484 = call %nyx_string* @nyx_string_concat(%nyx_string* %1481, %nyx_string* %1483)
  %1485 = call i8* @nyx_string_to_cstr(%nyx_string* %1484)
  call void @nyx_print_string(i8* %1485)
  br label %merge337
else336:
  br label %merge337
merge337:
  %1486 = getelementptr [14 x i8], [14 x i8]* @.str116, i32 0, i32 0
  %1487 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str116.c, i8* %1486, i64 13)
  %1488 = getelementptr %TestConfig, %TestConfig* %1356, i32 0, i32 0
  %1489 = load %nyx_string*, %nyx_string** %1488
  %1490 = call %nyx_string* @nyx_string_concat(%nyx_string* %1487, %nyx_string* %1489)
  %1491 = getelementptr [2 x i8], [2 x i8]* @.str117, i32 0, i32 0
  %1492 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str117.c, i8* %1491, i64 1)
  %1493 = call %nyx_string* @nyx_string_concat(%nyx_string* %1490, %nyx_string* %1492)
  %1494 = call i8* @nyx_string_to_cstr(%nyx_string* %1493)
  call void @nyx_print_string(i8* %1494)
  ret i64 0
else333:
  br label %merge334
merge334:
  %1495 = getelementptr [9 x i8], [9 x i8]* @.str118, i32 0, i32 0
  %1496 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str118.c, i8* %1495, i64 8)
  %1497 = load { i64, i8* }*, { i64, i8* }** %1441
  %1498 = call i64 @nyx_array_length({ i64, i8* }* %1497)
  %1499 = call %nyx_string* @nyx_string_from_int(i64 %1498)
  %1500 = call %nyx_string* @nyx_string_concat(%nyx_string* %1496, %nyx_string* %1499)
  %1501 = getelementptr [14 x i8], [14 x i8]* @.str119, i32 0, i32 0
  %1502 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str119.c, i8* %1501, i64 13)
  %1503 = call %nyx_string* @nyx_string_concat(%nyx_string* %1500, %nyx_string* %1502)
  %1504 = call i8* @nyx_string_to_cstr(%nyx_string* %1503)
  call void @nyx_print_string(i8* %1504)
  %1505 = getelementptr %TestConfig, %TestConfig* %1356, i32 0, i32 2
  %1506 = load %nyx_string*, %nyx_string** %1505
  %1507 = getelementptr [1 x i8], [1 x i8]* @.str120, i32 0, i32 0
  %1508 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str120.c, i8* %1507, i64 0)
  %1509 = call i1 @nyx_string_equals(%nyx_string* %1506, %nyx_string* %1508)
  %1510 = xor i1 %1509, true
  br i1 %1510, label %then338, label %else339
then338:
  %1511 = getelementptr [12 x i8], [12 x i8]* @.str121, i32 0, i32 0
  %1512 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str121.c, i8* %1511, i64 11)
  %1513 = getelementptr %TestConfig, %TestConfig* %1356, i32 0, i32 2
  %1514 = load %nyx_string*, %nyx_string** %1513
  %1515 = call %nyx_string* @nyx_string_concat(%nyx_string* %1512, %nyx_string* %1514)
  %1516 = getelementptr [2 x i8], [2 x i8]* @.str122, i32 0, i32 0
  %1517 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str122.c, i8* %1516, i64 1)
  %1518 = call %nyx_string* @nyx_string_concat(%nyx_string* %1515, %nyx_string* %1517)
  %1519 = call i8* @nyx_string_to_cstr(%nyx_string* %1518)
  call void @nyx_print_string(i8* %1519)
  br label %merge340
else339:
  br label %merge340
merge340:
  %1520 = getelementptr [1 x i8], [1 x i8]* @.str123, i32 0, i32 0
  %1521 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str123.c, i8* %1520, i64 0)
  %1522 = call i8* @nyx_string_to_cstr(%nyx_string* %1521)
  call void @nyx_print_string(i8* %1522)
  %1523 = call { i64, i8* }* @nyx_array_new_ptr()
  %1524 = alloca { i64, i8* }*
  store { i64, i8* }* %1523, { i64, i8* }** %1524
  %1525 = alloca i64
  store i64 0, i64* %1525
  %1526 = alloca i64
  store i64 0, i64* %1526
  %1527 = alloca i64
  store i64 0, i64* %1527
  %1528 = call i8* @llvm.stacksave()
  br label %while_cond341
while_cond341:
  %1529 = load i64, i64* %1527
  %1530 = load { i64, i8* }*, { i64, i8* }** %1441
  %1531 = call i64 @nyx_array_length({ i64, i8* }* %1530)
  %1532 = icmp slt i64 %1529, %1531
  br i1 %1532, label %while_body342, label %while_end343
while_body342:
  call void @llvm.stackrestore(i8* %1528)
  %1533 = load { i64, i8* }*, { i64, i8* }** %1441
  %1534 = load i64, i64* %1527
  %1535 = call i64 @nyx_array_get_checked({ i64, i8* }* %1533, i64 %1534, i64 2)
  %1536 = inttoptr i64 %1535 to %nyx_string*
  %1537 = alloca %nyx_string*
  store %nyx_string* %1536, %nyx_string** %1537
  %1538 = load %nyx_string*, %nyx_string** %1537
  %1539 = call i1 @file_has_test_blocks(%nyx_string* %1538)
  %1540 = xor i1 %1539, true
  br i1 %1540, label %then344, label %else345
then344:
  %1541 = load i64, i64* %1527
  %1542 = add i64 %1541, 1
  store i64 %1542, i64* %1527
  br label %merge346
else345:
  %1543 = load %nyx_string*, %nyx_string** %1537
  %1544 = load %TestConfig, %TestConfig* %1356
  %1545 = call %TestResult @compile_and_run(%nyx_string* %1543, %TestConfig %1544)
  %1546 = alloca %TestResult
  store %TestResult %1545, %TestResult* %1546
  %1547 = load { i64, i8* }*, { i64, i8* }** %1524
  %1548 = load %TestResult, %TestResult* %1546
  %1549 = getelementptr %TestResult, %TestResult* null, i32 1
  %1550 = ptrtoint %TestResult* %1549 to i64
  %1551 = call i8* @GC_malloc(i64 %1550)
  %1552 = bitcast i8* %1551 to %TestResult*
  store %TestResult %1548, %TestResult* %1552
  %1553 = ptrtoint %TestResult* %1552 to i64
  call void @nyx_array_push({ i64, i8* }* %1547, i64 %1553)
  %1554 = load i64, i64* %1525
  %1555 = getelementptr %TestResult, %TestResult* %1546, i32 0, i32 1
  %1556 = load i64, i64* %1555
  %1557 = add i64 %1554, %1556
  store i64 %1557, i64* %1525
  %1558 = load i64, i64* %1526
  %1559 = getelementptr %TestResult, %TestResult* %1546, i32 0, i32 2
  %1560 = load i64, i64* %1559
  %1561 = add i64 %1558, %1560
  store i64 %1561, i64* %1526
  %1562 = load %TestResult, %TestResult* %1546
  %1563 = getelementptr %TestConfig, %TestConfig* %1356, i32 0, i32 3
  %1564 = load i1, i1* %1563
  %1565 = call i64 @print_result(%TestResult %1562, i1 %1564)
  %1566 = load i64, i64* %1527
  %1567 = add i64 %1566, 1
  store i64 %1567, i64* %1527
  br label %merge346
merge346:
  br label %while_cond341
while_end343:
  %1568 = load { i64, i8* }*, { i64, i8* }** %1524
  %1569 = call i64 @nyx_array_length({ i64, i8* }* %1568)
  %1570 = icmp eq i64 %1569, 0
  br i1 %1570, label %then347, label %else348
then347:
  %1571 = getelementptr [35 x i8], [35 x i8]* @.str124, i32 0, i32 0
  %1572 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str124.c, i8* %1571, i64 34)
  %1573 = call i8* @nyx_string_to_cstr(%nyx_string* %1572)
  call void @nyx_print_string(i8* %1573)
  ret i64 0
else348:
  br label %merge349
merge349:
  %1574 = load { i64, i8* }*, { i64, i8* }** %1524
  %1575 = load i64, i64* %1525
  %1576 = load i64, i64* %1526
  %1577 = call i64 @print_summary({ i64, i8* }* %1574, i64 %1575, i64 %1576)
  %1578 = alloca i64
  store i64 0, i64* %1578
  %1579 = alloca i64
  store i64 0, i64* %1579
  %1580 = call i8* @llvm.stacksave()
  br label %while_cond350
while_cond350:
  %1581 = load i64, i64* %1579
  %1582 = load { i64, i8* }*, { i64, i8* }** %1524
  %1583 = call i64 @nyx_array_length({ i64, i8* }* %1582)
  %1584 = icmp slt i64 %1581, %1583
  br i1 %1584, label %while_body351, label %while_end352
while_body351:
  call void @llvm.stackrestore(i8* %1580)
  %1585 = load { i64, i8* }*, { i64, i8* }** %1524
  %1586 = load i64, i64* %1579
  %1587 = call i64 @nyx_array_get({ i64, i8* }* %1585, i64 %1586)
  %1588 = inttoptr i64 %1587 to %TestResult*
  %1589 = load %TestResult, %TestResult* %1588
  %1590 = alloca %TestResult
  store %TestResult %1589, %TestResult* %1590
  %1591 = getelementptr %TestResult, %TestResult* %1590, i32 0, i32 4
  %1592 = load i1, i1* %1591
  %1593 = xor i1 %1592, true
  br i1 %1593, label %then353, label %else354
then353:
  %1594 = load i64, i64* %1578
  %1595 = add i64 %1594, 1
  store i64 %1595, i64* %1578
  br label %merge355
else354:
  br label %merge355
merge355:
  %1596 = load i64, i64* %1579
  %1597 = add i64 %1596, 1
  store i64 %1597, i64* %1579
  br label %while_cond350
while_end352:
  %1598 = alloca i1
  store i1 true, i1* %1598
  %1599 = load i64, i64* %1526
  %1600 = icmp sgt i64 %1599, 0
  br i1 %1600, label %sc_or_end357, label %sc_or_rhs356
sc_or_rhs356:
  %1601 = load i64, i64* %1578
  %1602 = icmp sgt i64 %1601, 0
  store i1 %1602, i1* %1598
  br label %sc_or_end357
sc_or_end357:
  %1603 = load i1, i1* %1598
  br i1 %1603, label %then358, label %else359
then358:
  ret i64 1
else359:
  br label %merge360
merge360:
  ret i64 0
}

; Inicialización de variables globales (llamada automática vía ctor)
define void @__nyx_init_globals() {
entry:
  %1604 = sub i64 0, 9223372036854775808
  store i64 %1604, i64* @INT_MIN
  ret void
}

@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @__nyx_init_globals, i8* null }]

attributes #0 = { returns_twice }

