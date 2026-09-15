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
@.str109 = private unnamed_addr constant [11 x i8] c"--coverage\00"
@.str109.c = internal global %nyx_string* null
@.str110 = private unnamed_addr constant [8 x i8] c"--cover\00"
@.str110.c = internal global %nyx_string* null
@.str111 = private unnamed_addr constant [24 x i8] c"error: unknown option: \00"
@.str111.c = internal global %nyx_string* null
@.str112 = private unnamed_addr constant [78 x i8] c"  La cobertura de tests (--coverage / --cover) todavia no existe en nyx_test.\00"
@.str112.c = internal global %nyx_string* null
@.str113 = private unnamed_addr constant [75 x i8] c"  Opciones validas: --filter <string>, --verbose (-v), --timeout <seconds>\00"
@.str113.c = internal global %nyx_string* null
@.str114 = private unnamed_addr constant [4 x i8] c".nx\00"
@.str114.c = internal global %nyx_string* null
@.str115 = private unnamed_addr constant [2 x i8] c"-\00"
@.str115.c = internal global %nyx_string* null
@.str116 = private unnamed_addr constant [1 x i8] c"\00"
@.str116.c = internal global %nyx_string* null
@.str117 = private unnamed_addr constant [24 x i8] c"error: file not found: \00"
@.str117.c = internal global %nyx_string* null
@.str118 = private unnamed_addr constant [23 x i8] c"  No test files found.\00"
@.str118.c = internal global %nyx_string* null
@.str119 = private unnamed_addr constant [1 x i8] c"\00"
@.str119.c = internal global %nyx_string* null
@.str120 = private unnamed_addr constant [12 x i8] c"  Filter: \22\00"
@.str120.c = internal global %nyx_string* null
@.str121 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str121.c = internal global %nyx_string* null
@.str122 = private unnamed_addr constant [14 x i8] c"  Looked in: \00"
@.str122.c = internal global %nyx_string* null
@.str123 = private unnamed_addr constant [2 x i8] c"/\00"
@.str123.c = internal global %nyx_string* null
@.str124 = private unnamed_addr constant [9 x i8] c"  Found \00"
@.str124.c = internal global %nyx_string* null
@.str125 = private unnamed_addr constant [14 x i8] c" test file(s)\00"
@.str125.c = internal global %nyx_string* null
@.str126 = private unnamed_addr constant [1 x i8] c"\00"
@.str126.c = internal global %nyx_string* null
@.str127 = private unnamed_addr constant [12 x i8] c"  Filter: \22\00"
@.str127.c = internal global %nyx_string* null
@.str128 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str128.c = internal global %nyx_string* null
@.str129 = private unnamed_addr constant [1 x i8] c"\00"
@.str129.c = internal global %nyx_string* null
@.str130 = private unnamed_addr constant [35 x i8] c"  No files with test blocks found.\00"
@.str130.c = internal global %nyx_string* null
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
declare i1 @nyx_write_file_safe(i8*, %nyx_string*)
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


declare %nyx_string* @nyx_read_stdin_all()
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

define %nyx_string* @read_stdin_all(
) {
  %3 = call %nyx_string* @nyx_read_stdin_all()
  ret %nyx_string* %3
}

define i64 @abs(
i64 %n.param) {
  %n.ptr = alloca i64
  store i64 %n.param, i64* %n.ptr
  %4 = load i64, i64* %n.ptr
  %5 = icmp slt i64 %4, 0
  br i1 %5, label %then0, label %else1
then0:
  %6 = load i64, i64* %n.ptr
  %7 = sub i64 0, %6
  ret i64 %7
else1:
  br label %merge2
merge2:
  %8 = load i64, i64* %n.ptr
  ret i64 %8
}

define i64 @min(
i64 %a.param, i64 %b.param) {
  %a.ptr = alloca i64
  store i64 %a.param, i64* %a.ptr
  %b.ptr = alloca i64
  store i64 %b.param, i64* %b.ptr
  %9 = load i64, i64* %a.ptr
  %10 = load i64, i64* %b.ptr
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %then3, label %else4
then3:
  %12 = load i64, i64* %a.ptr
  ret i64 %12
else4:
  br label %merge5
merge5:
  %13 = load i64, i64* %b.ptr
  ret i64 %13
}

define i64 @max(
i64 %a.param, i64 %b.param) {
  %a.ptr = alloca i64
  store i64 %a.param, i64* %a.ptr
  %b.ptr = alloca i64
  store i64 %b.param, i64* %b.ptr
  %14 = load i64, i64* %a.ptr
  %15 = load i64, i64* %b.ptr
  %16 = icmp sgt i64 %14, %15
  br i1 %16, label %then6, label %else7
then6:
  %17 = load i64, i64* %a.ptr
  ret i64 %17
else7:
  br label %merge8
merge8:
  %18 = load i64, i64* %b.ptr
  ret i64 %18
}

define i64 @clamp(
i64 %n.param, i64 %lo.param, i64 %hi.param) {
  %n.ptr = alloca i64
  store i64 %n.param, i64* %n.ptr
  %lo.ptr = alloca i64
  store i64 %lo.param, i64* %lo.ptr
  %hi.ptr = alloca i64
  store i64 %hi.param, i64* %hi.ptr
  %19 = load i64, i64* %lo.ptr
  %20 = load i64, i64* %n.ptr
  %21 = load i64, i64* %hi.ptr
  %22 = call i64 @min(i64 %20, i64 %21)
  %23 = call i64 @max(i64 %19, i64 %22)
  ret i64 %23
}

define i64 @pow_int(
i64 %base.param, i64 %exp.param) {
  %base.ptr = alloca i64
  store i64 %base.param, i64* %base.ptr
  %exp.ptr = alloca i64
  store i64 %exp.param, i64* %exp.ptr
  %24 = alloca i64
  store i64 1, i64* %24
  %25 = alloca i64
  store i64 0, i64* %25
  %26 = call i8* @llvm.stacksave()
  br label %while_cond9
while_cond9:
  %27 = load i64, i64* %25
  %28 = load i64, i64* %exp.ptr
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %while_body10, label %while_end11
while_body10:
  call void @llvm.stackrestore(i8* %26)
  %30 = load i64, i64* %24
  %31 = load i64, i64* %base.ptr
  %32 = mul i64 %30, %31
  store i64 %32, i64* %24
  %33 = load i64, i64* %25
  %34 = add i64 %33, 1
  store i64 %34, i64* %25
  br label %while_cond9
while_end11:
  %35 = load i64, i64* %24
  ret i64 %35
}

define i64 @gcd(
i64 %a.param, i64 %b.param) {
  %a.ptr = alloca i64
  store i64 %a.param, i64* %a.ptr
  %b.ptr = alloca i64
  store i64 %b.param, i64* %b.ptr
  %36 = load i64, i64* %a.ptr
  %37 = call i64 @abs(i64 %36)
  %38 = alloca i64
  store i64 %37, i64* %38
  %39 = load i64, i64* %b.ptr
  %40 = call i64 @abs(i64 %39)
  %41 = alloca i64
  store i64 %40, i64* %41
  %42 = call i8* @llvm.stacksave()
  br label %while_cond12
while_cond12:
  %43 = load i64, i64* %41
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %while_body13, label %while_end14
while_body13:
  call void @llvm.stackrestore(i8* %42)
  %45 = load i64, i64* %41
  %46 = alloca i64
  store i64 %45, i64* %46
  %47 = load i64, i64* %38
  %48 = load i64, i64* %41
  %49 = srem i64 %47, %48
  store i64 %49, i64* %41
  %50 = load i64, i64* %46
  store i64 %50, i64* %38
  br label %while_cond12
while_end14:
  %51 = load i64, i64* %38
  ret i64 %51
}

define i64 @lcm(
i64 %a.param, i64 %b.param) {
  %a.ptr = alloca i64
  store i64 %a.param, i64* %a.ptr
  %b.ptr = alloca i64
  store i64 %b.param, i64* %b.ptr
  %52 = alloca i1
  store i1 true, i1* %52
  %53 = load i64, i64* %a.ptr
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %sc_or_end16, label %sc_or_rhs15
sc_or_rhs15:
  %55 = load i64, i64* %b.ptr
  %56 = icmp eq i64 %55, 0
  store i1 %56, i1* %52
  br label %sc_or_end16
sc_or_end16:
  %57 = load i1, i1* %52
  br i1 %57, label %then17, label %else18
then17:
  ret i64 0
else18:
  br label %merge19
merge19:
  %58 = load i64, i64* %a.ptr
  %59 = load i64, i64* %b.ptr
  %60 = mul i64 %58, %59
  %61 = call i64 @abs(i64 %60)
  %62 = load i64, i64* %a.ptr
  %63 = load i64, i64* %b.ptr
  %64 = call i64 @gcd(i64 %62, i64 %63)
  %65 = sdiv i64 %61, %64
  ret i64 %65
}

define i1 @is_even(
i64 %n.param) {
  %n.ptr = alloca i64
  store i64 %n.param, i64* %n.ptr
  %66 = load i64, i64* %n.ptr
  %67 = srem i64 %66, 2
  %68 = icmp eq i64 %67, 0
  ret i1 %68
}

define i1 @is_odd(
i64 %n.param) {
  %n.ptr = alloca i64
  store i64 %n.param, i64* %n.ptr
  %69 = load i64, i64* %n.ptr
  %70 = srem i64 %69, 2
  %71 = icmp ne i64 %70, 0
  ret i1 %71
}

define i64 @sqrt_int(
i64 %n.param) {
  %n.ptr = alloca i64
  store i64 %n.param, i64* %n.ptr
  %72 = load i64, i64* %n.ptr
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %then20, label %else21
then20:
  %74 = sub i64 0, 1
  ret i64 %74
else21:
  br label %merge22
merge22:
  %75 = load i64, i64* %n.ptr
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %then23, label %else24
then23:
  ret i64 0
else24:
  br label %merge25
merge25:
  %77 = load i64, i64* %n.ptr
  %78 = alloca i64
  store i64 %77, i64* %78
  %79 = load i64, i64* %78
  %80 = add i64 %79, 1
  %81 = sdiv i64 %80, 2
  %82 = alloca i64
  store i64 %81, i64* %82
  %83 = call i8* @llvm.stacksave()
  br label %while_cond26
while_cond26:
  %84 = load i64, i64* %82
  %85 = load i64, i64* %78
  %86 = icmp slt i64 %84, %85
  br i1 %86, label %while_body27, label %while_end28
while_body27:
  call void @llvm.stackrestore(i8* %83)
  %87 = load i64, i64* %82
  store i64 %87, i64* %78
  %88 = load i64, i64* %78
  %89 = load i64, i64* %n.ptr
  %90 = load i64, i64* %78
  %91 = sdiv i64 %89, %90
  %92 = add i64 %88, %91
  %93 = sdiv i64 %92, 2
  store i64 %93, i64* %82
  br label %while_cond26
while_end28:
  %94 = load i64, i64* %78
  ret i64 %94
}

define i8* @checked_add(
i64 %a.param, i64 %b.param) {
  %a.ptr = alloca i64
  store i64 %a.param, i64* %a.ptr
  %b.ptr = alloca i64
  store i64 %b.param, i64* %b.ptr
  %95 = load i64, i64* %a.ptr
  %96 = load i64, i64* %b.ptr
  %97 = add i64 %95, %96
  %98 = alloca i64
  store i64 %97, i64* %98
  %99 = load i64, i64* %a.ptr
  %100 = icmp slt i64 %99, 0
  %101 = alloca i1
  store i1 %100, i1* %101
  %102 = load i64, i64* %b.ptr
  %103 = icmp slt i64 %102, 0
  %104 = alloca i1
  store i1 %103, i1* %104
  %105 = load i64, i64* %98
  %106 = icmp slt i64 %105, 0
  %107 = alloca i1
  store i1 %106, i1* %107
  %108 = alloca i1
  store i1 false, i1* %108
  %109 = load i1, i1* %101
  %110 = load i1, i1* %104
  %111 = icmp eq i1 %109, %110
  br i1 %111, label %sc_and_rhs29, label %sc_and_end30
sc_and_rhs29:
  %112 = load i1, i1* %107
  %113 = load i1, i1* %101
  %114 = icmp ne i1 %112, %113
  store i1 %114, i1* %108
  br label %sc_and_end30
sc_and_end30:
  %115 = load i1, i1* %108
  br i1 %115, label %then31, label %else32
then31:
  %116 = call i8* @GC_malloc(i64 16)
  %117 = bitcast i8* %116 to { i64, i8* }*
  %118 = getelementptr { i64, i8* }, { i64, i8* }* %117, i32 0, i32 0
  store i64 1, i64* %118
  %119 = getelementptr { i64, i8* }, { i64, i8* }* %117, i32 0, i32 1
  store i8* null, i8** %119
  ret i8* %116
else32:
  br label %merge33
merge33:
  %120 = call i8* @GC_malloc(i64 16)
  %121 = bitcast i8* %120 to { i64, i8* }*
  %122 = getelementptr { i64, i8* }, { i64, i8* }* %121, i32 0, i32 0
  store i64 0, i64* %122
  %123 = getelementptr { i64, i8* }, { i64, i8* }* %121, i32 0, i32 1
  %124 = call i8* @GC_malloc(i64 8)
  %125 = bitcast i8* %124 to i64*
  %126 = load i64, i64* %98
  %127 = getelementptr i64, i64* %125, i64 0
  store i64 %126, i64* %127
  store i8* %124, i8** %123
  ret i8* %120
}

define i8* @checked_sub(
i64 %a.param, i64 %b.param) {
  %a.ptr = alloca i64
  store i64 %a.param, i64* %a.ptr
  %b.ptr = alloca i64
  store i64 %b.param, i64* %b.ptr
  %128 = load i64, i64* %a.ptr
  %129 = load i64, i64* %b.ptr
  %130 = sub i64 %128, %129
  %131 = alloca i64
  store i64 %130, i64* %131
  %132 = load i64, i64* %a.ptr
  %133 = icmp slt i64 %132, 0
  %134 = alloca i1
  store i1 %133, i1* %134
  %135 = load i64, i64* %b.ptr
  %136 = icmp slt i64 %135, 0
  %137 = alloca i1
  store i1 %136, i1* %137
  %138 = load i64, i64* %131
  %139 = icmp slt i64 %138, 0
  %140 = alloca i1
  store i1 %139, i1* %140
  %141 = alloca i1
  store i1 false, i1* %141
  %142 = load i1, i1* %134
  %143 = load i1, i1* %137
  %144 = icmp ne i1 %142, %143
  br i1 %144, label %sc_and_rhs34, label %sc_and_end35
sc_and_rhs34:
  %145 = load i1, i1* %140
  %146 = load i1, i1* %137
  %147 = icmp eq i1 %145, %146
  store i1 %147, i1* %141
  br label %sc_and_end35
sc_and_end35:
  %148 = load i1, i1* %141
  br i1 %148, label %then36, label %else37
then36:
  %149 = call i8* @GC_malloc(i64 16)
  %150 = bitcast i8* %149 to { i64, i8* }*
  %151 = getelementptr { i64, i8* }, { i64, i8* }* %150, i32 0, i32 0
  store i64 1, i64* %151
  %152 = getelementptr { i64, i8* }, { i64, i8* }* %150, i32 0, i32 1
  store i8* null, i8** %152
  ret i8* %149
else37:
  br label %merge38
merge38:
  %153 = call i8* @GC_malloc(i64 16)
  %154 = bitcast i8* %153 to { i64, i8* }*
  %155 = getelementptr { i64, i8* }, { i64, i8* }* %154, i32 0, i32 0
  store i64 0, i64* %155
  %156 = getelementptr { i64, i8* }, { i64, i8* }* %154, i32 0, i32 1
  %157 = call i8* @GC_malloc(i64 8)
  %158 = bitcast i8* %157 to i64*
  %159 = load i64, i64* %131
  %160 = getelementptr i64, i64* %158, i64 0
  store i64 %159, i64* %160
  store i8* %157, i8** %156
  ret i8* %153
}

define i8* @checked_mul(
i64 %a.param, i64 %b.param) {
  %a.ptr = alloca i64
  store i64 %a.param, i64* %a.ptr
  %b.ptr = alloca i64
  store i64 %b.param, i64* %b.ptr
  %161 = alloca i1
  store i1 true, i1* %161
  %162 = load i64, i64* %a.ptr
  %163 = icmp eq i64 %162, 0
  br i1 %163, label %sc_or_end40, label %sc_or_rhs39
sc_or_rhs39:
  %164 = load i64, i64* %b.ptr
  %165 = icmp eq i64 %164, 0
  store i1 %165, i1* %161
  br label %sc_or_end40
sc_or_end40:
  %166 = load i1, i1* %161
  br i1 %166, label %then41, label %else42
then41:
  %167 = call i8* @GC_malloc(i64 16)
  %168 = bitcast i8* %167 to { i64, i8* }*
  %169 = getelementptr { i64, i8* }, { i64, i8* }* %168, i32 0, i32 0
  store i64 0, i64* %169
  %170 = getelementptr { i64, i8* }, { i64, i8* }* %168, i32 0, i32 1
  %171 = call i8* @GC_malloc(i64 8)
  %172 = bitcast i8* %171 to i64*
  %173 = getelementptr i64, i64* %172, i64 0
  store i64 0, i64* %173
  store i8* %171, i8** %170
  ret i8* %167
else42:
  br label %merge43
merge43:
  %174 = load i64, i64* %a.ptr
  %175 = sub i64 0, 1
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %then44, label %else45
then44:
  %177 = load i64, i64* %b.ptr
  %178 = load i64, i64* @INT_MIN
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %then47, label %else48
then47:
  %180 = call i8* @GC_malloc(i64 16)
  %181 = bitcast i8* %180 to { i64, i8* }*
  %182 = getelementptr { i64, i8* }, { i64, i8* }* %181, i32 0, i32 0
  store i64 1, i64* %182
  %183 = getelementptr { i64, i8* }, { i64, i8* }* %181, i32 0, i32 1
  store i8* null, i8** %183
  ret i8* %180
else48:
  br label %merge49
merge49:
  %184 = call i8* @GC_malloc(i64 16)
  %185 = bitcast i8* %184 to { i64, i8* }*
  %186 = getelementptr { i64, i8* }, { i64, i8* }* %185, i32 0, i32 0
  store i64 0, i64* %186
  %187 = getelementptr { i64, i8* }, { i64, i8* }* %185, i32 0, i32 1
  %188 = call i8* @GC_malloc(i64 8)
  %189 = bitcast i8* %188 to i64*
  %190 = load i64, i64* %b.ptr
  %191 = sub i64 0, %190
  %192 = getelementptr i64, i64* %189, i64 0
  store i64 %191, i64* %192
  store i8* %188, i8** %187
  ret i8* %184
else45:
  br label %merge46
merge46:
  %193 = load i64, i64* %b.ptr
  %194 = sub i64 0, 1
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %then50, label %else51
then50:
  %196 = load i64, i64* %a.ptr
  %197 = load i64, i64* @INT_MIN
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %then53, label %else54
then53:
  %199 = call i8* @GC_malloc(i64 16)
  %200 = bitcast i8* %199 to { i64, i8* }*
  %201 = getelementptr { i64, i8* }, { i64, i8* }* %200, i32 0, i32 0
  store i64 1, i64* %201
  %202 = getelementptr { i64, i8* }, { i64, i8* }* %200, i32 0, i32 1
  store i8* null, i8** %202
  ret i8* %199
else54:
  br label %merge55
merge55:
  %203 = call i8* @GC_malloc(i64 16)
  %204 = bitcast i8* %203 to { i64, i8* }*
  %205 = getelementptr { i64, i8* }, { i64, i8* }* %204, i32 0, i32 0
  store i64 0, i64* %205
  %206 = getelementptr { i64, i8* }, { i64, i8* }* %204, i32 0, i32 1
  %207 = call i8* @GC_malloc(i64 8)
  %208 = bitcast i8* %207 to i64*
  %209 = load i64, i64* %a.ptr
  %210 = sub i64 0, %209
  %211 = getelementptr i64, i64* %208, i64 0
  store i64 %210, i64* %211
  store i8* %207, i8** %206
  ret i8* %203
else51:
  br label %merge52
merge52:
  %212 = load i64, i64* %a.ptr
  %213 = load i64, i64* %b.ptr
  %214 = mul i64 %212, %213
  %215 = alloca i64
  store i64 %214, i64* %215
  %216 = load i64, i64* %215
  %217 = load i64, i64* %b.ptr
  %218 = sdiv i64 %216, %217
  %219 = load i64, i64* %a.ptr
  %220 = icmp ne i64 %218, %219
  br i1 %220, label %then56, label %else57
then56:
  %221 = call i8* @GC_malloc(i64 16)
  %222 = bitcast i8* %221 to { i64, i8* }*
  %223 = getelementptr { i64, i8* }, { i64, i8* }* %222, i32 0, i32 0
  store i64 1, i64* %223
  %224 = getelementptr { i64, i8* }, { i64, i8* }* %222, i32 0, i32 1
  store i8* null, i8** %224
  ret i8* %221
else57:
  br label %merge58
merge58:
  %225 = call i8* @GC_malloc(i64 16)
  %226 = bitcast i8* %225 to { i64, i8* }*
  %227 = getelementptr { i64, i8* }, { i64, i8* }* %226, i32 0, i32 0
  store i64 0, i64* %227
  %228 = getelementptr { i64, i8* }, { i64, i8* }* %226, i32 0, i32 1
  %229 = call i8* @GC_malloc(i64 8)
  %230 = bitcast i8* %229 to i64*
  %231 = load i64, i64* %215
  %232 = getelementptr i64, i64* %230, i64 0
  store i64 %231, i64* %232
  store i8* %229, i8** %228
  ret i8* %225
}

define i8* @checked_div(
i64 %a.param, i64 %b.param) {
  %a.ptr = alloca i64
  store i64 %a.param, i64* %a.ptr
  %b.ptr = alloca i64
  store i64 %b.param, i64* %b.ptr
  %233 = load i64, i64* %b.ptr
  %234 = icmp eq i64 %233, 0
  br i1 %234, label %then59, label %else60
then59:
  %235 = call i8* @GC_malloc(i64 16)
  %236 = bitcast i8* %235 to { i64, i8* }*
  %237 = getelementptr { i64, i8* }, { i64, i8* }* %236, i32 0, i32 0
  store i64 1, i64* %237
  %238 = getelementptr { i64, i8* }, { i64, i8* }* %236, i32 0, i32 1
  store i8* null, i8** %238
  ret i8* %235
else60:
  br label %merge61
merge61:
  %239 = alloca i1
  store i1 false, i1* %239
  %240 = load i64, i64* %a.ptr
  %241 = load i64, i64* @INT_MIN
  %242 = icmp eq i64 %240, %241
  br i1 %242, label %sc_and_rhs62, label %sc_and_end63
sc_and_rhs62:
  %243 = load i64, i64* %b.ptr
  %244 = sub i64 0, 1
  %245 = icmp eq i64 %243, %244
  store i1 %245, i1* %239
  br label %sc_and_end63
sc_and_end63:
  %246 = load i1, i1* %239
  br i1 %246, label %then64, label %else65
then64:
  %247 = call i8* @GC_malloc(i64 16)
  %248 = bitcast i8* %247 to { i64, i8* }*
  %249 = getelementptr { i64, i8* }, { i64, i8* }* %248, i32 0, i32 0
  store i64 1, i64* %249
  %250 = getelementptr { i64, i8* }, { i64, i8* }* %248, i32 0, i32 1
  store i8* null, i8** %250
  ret i8* %247
else65:
  br label %merge66
merge66:
  %251 = call i8* @GC_malloc(i64 16)
  %252 = bitcast i8* %251 to { i64, i8* }*
  %253 = getelementptr { i64, i8* }, { i64, i8* }* %252, i32 0, i32 0
  store i64 0, i64* %253
  %254 = getelementptr { i64, i8* }, { i64, i8* }* %252, i32 0, i32 1
  %255 = call i8* @GC_malloc(i64 8)
  %256 = bitcast i8* %255 to i64*
  %257 = load i64, i64* %a.ptr
  %258 = load i64, i64* %b.ptr
  %259 = sdiv i64 %257, %258
  %260 = getelementptr i64, i64* %256, i64 0
  store i64 %259, i64* %260
  store i8* %255, i8** %254
  ret i8* %251
}

define internal i64 @round_mode_code(
i8* %mode.param) {
  %mode.ptr = alloca i8*
  store i8* %mode.param, i8** %mode.ptr
  %261 = load i8*, i8** %mode.ptr
  %262 = bitcast i8* %261 to { i64, i8* }*
  %263 = getelementptr { i64, i8* }, { i64, i8* }* %262, i32 0, i32 0
  %264 = load i64, i64* %263
  %265 = alloca i64
  store i64 0, i64* %265
  switch i64 %264, label %match_default67 [ i64 0, label %match_arm69 i64 1, label %match_arm70 i64 2, label %match_arm71 i64 3, label %match_arm72 i64 4, label %match_arm73 ]
match_arm69:
  store i64 0, i64* %265
  br label %match_end68
match_arm70:
  store i64 1, i64* %265
  br label %match_end68
match_arm71:
  store i64 2, i64* %265
  br label %match_end68
match_arm72:
  store i64 3, i64* %265
  br label %match_end68
match_arm73:
  store i64 4, i64* %265
  br label %match_end68
match_default67:
  br label %match_end68
match_end68:
  %266 = load i64, i64* %265
  ret i64 %266
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
  %267 = load i64, i64* %a.ptr
  %268 = load i64, i64* %b.ptr
  %269 = load i64, i64* %c.ptr
  %270 = load i8*, i8** %mode.ptr
  %271 = call i64 @round_mode_code(i8* %270)
  %272 = call i64 @nyx_mul_div_round(i64 %267, i64 %268, i64 %269, i64 %271)
  %273 = alloca i64
  store i64 %272, i64* %273
  %274 = call i64 @nyx_mul_div_round_status()
  %275 = alloca i64
  store i64 %274, i64* %275
  %276 = load i64, i64* %275
  %277 = icmp eq i64 %276, 1
  br i1 %277, label %then84, label %else85
then84:
  %278 = getelementptr [32 x i8], [32 x i8]* @.str0, i32 0, i32 0
  %279 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str0.c, i8* %278, i64 31)
  call void @nyx_panic(%nyx_string* %279)
  unreachable
else85:
  br label %merge86
merge86:
  %280 = load i64, i64* %275
  %281 = icmp eq i64 %280, 2
  br i1 %281, label %then87, label %else88
then87:
  %282 = getelementptr [36 x i8], [36 x i8]* @.str1, i32 0, i32 0
  %283 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1.c, i8* %282, i64 35)
  call void @nyx_panic(%nyx_string* %283)
  unreachable
else88:
  br label %merge89
merge89:
  %284 = load i64, i64* %273
  ret i64 %284
}

define i64 @array_sum(
{ i64, i8* }* %arr.param) {
  %arr.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %arr.param, { i64, i8* }** %arr.ptr
  %285 = alloca i64
  store i64 0, i64* %285
  %286 = alloca i64
  store i64 0, i64* %286
  %287 = call i8* @llvm.stacksave()
  br label %while_cond90
while_cond90:
  %288 = load i64, i64* %286
  %289 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %290 = call i64 @nyx_array_length({ i64, i8* }* %289)
  %291 = icmp slt i64 %288, %290
  br i1 %291, label %while_body91, label %while_end92
while_body91:
  call void @llvm.stackrestore(i8* %287)
  %292 = load i64, i64* %285
  %293 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %294 = load i64, i64* %286
  %295 = call i64 @nyx_array_get({ i64, i8* }* %293, i64 %294)
  %296 = add i64 %292, %295
  store i64 %296, i64* %285
  %297 = load i64, i64* %286
  %298 = add i64 %297, 1
  store i64 %298, i64* %286
  br label %while_cond90
while_end92:
  %299 = load i64, i64* %285
  ret i64 %299
}

define i64 @array_min(
{ i64, i8* }* %arr.param) {
  %arr.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %arr.param, { i64, i8* }** %arr.ptr
  %300 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %301 = call i64 @nyx_array_get({ i64, i8* }* %300, i64 0)
  %302 = alloca i64
  store i64 %301, i64* %302
  %303 = alloca i64
  store i64 1, i64* %303
  %304 = call i8* @llvm.stacksave()
  br label %while_cond93
while_cond93:
  %305 = load i64, i64* %303
  %306 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %307 = call i64 @nyx_array_length({ i64, i8* }* %306)
  %308 = icmp slt i64 %305, %307
  br i1 %308, label %while_body94, label %while_end95
while_body94:
  call void @llvm.stackrestore(i8* %304)
  %309 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %310 = load i64, i64* %303
  %311 = call i64 @nyx_array_get({ i64, i8* }* %309, i64 %310)
  %312 = load i64, i64* %302
  %313 = icmp slt i64 %311, %312
  br i1 %313, label %then96, label %else97
then96:
  %314 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %315 = load i64, i64* %303
  %316 = call i64 @nyx_array_get({ i64, i8* }* %314, i64 %315)
  store i64 %316, i64* %302
  br label %merge98
else97:
  br label %merge98
merge98:
  %317 = load i64, i64* %303
  %318 = add i64 %317, 1
  store i64 %318, i64* %303
  br label %while_cond93
while_end95:
  %319 = load i64, i64* %302
  ret i64 %319
}

define i64 @array_max(
{ i64, i8* }* %arr.param) {
  %arr.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %arr.param, { i64, i8* }** %arr.ptr
  %320 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %321 = call i64 @nyx_array_get({ i64, i8* }* %320, i64 0)
  %322 = alloca i64
  store i64 %321, i64* %322
  %323 = alloca i64
  store i64 1, i64* %323
  %324 = call i8* @llvm.stacksave()
  br label %while_cond99
while_cond99:
  %325 = load i64, i64* %323
  %326 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %327 = call i64 @nyx_array_length({ i64, i8* }* %326)
  %328 = icmp slt i64 %325, %327
  br i1 %328, label %while_body100, label %while_end101
while_body100:
  call void @llvm.stackrestore(i8* %324)
  %329 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %330 = load i64, i64* %323
  %331 = call i64 @nyx_array_get({ i64, i8* }* %329, i64 %330)
  %332 = load i64, i64* %322
  %333 = icmp sgt i64 %331, %332
  br i1 %333, label %then102, label %else103
then102:
  %334 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %335 = load i64, i64* %323
  %336 = call i64 @nyx_array_get({ i64, i8* }* %334, i64 %335)
  store i64 %336, i64* %322
  br label %merge104
else103:
  br label %merge104
merge104:
  %337 = load i64, i64* %323
  %338 = add i64 %337, 1
  store i64 %338, i64* %323
  br label %while_cond99
while_end101:
  %339 = load i64, i64* %322
  ret i64 %339
}

define { i64, i8* }* @array_reverse(
{ i64, i8* }* %arr.param) {
  %arr.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %arr.param, { i64, i8* }** %arr.ptr
  %340 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %341 = call i64 @nyx_array_length({ i64, i8* }* %340)
  %342 = alloca i64
  store i64 %341, i64* %342
  %343 = alloca i64
  store i64 0, i64* %343
  %344 = call i8* @llvm.stacksave()
  br label %while_cond105
while_cond105:
  %345 = load i64, i64* %343
  %346 = load i64, i64* %342
  %347 = sdiv i64 %346, 2
  %348 = icmp slt i64 %345, %347
  br i1 %348, label %while_body106, label %while_end107
while_body106:
  call void @llvm.stackrestore(i8* %344)
  %349 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %350 = load i64, i64* %343
  %351 = call i64 @nyx_array_get({ i64, i8* }* %349, i64 %350)
  %352 = alloca i64
  store i64 %351, i64* %352
  %353 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %354 = load i64, i64* %343
  %355 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %356 = load i64, i64* %342
  %357 = sub i64 %356, 1
  %358 = load i64, i64* %343
  %359 = sub i64 %357, %358
  %360 = call i64 @nyx_array_get({ i64, i8* }* %355, i64 %359)
  call void @nyx_array_set({ i64, i8* }* %353, i64 %354, i64 %360)
  %361 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %362 = load i64, i64* %342
  %363 = sub i64 %362, 1
  %364 = load i64, i64* %343
  %365 = sub i64 %363, %364
  %366 = load i64, i64* %352
  call void @nyx_array_set({ i64, i8* }* %361, i64 %365, i64 %366)
  %367 = load i64, i64* %343
  %368 = add i64 %367, 1
  store i64 %368, i64* %343
  br label %while_cond105
while_end107:
  %369 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  ret { i64, i8* }* %369
}

define i1 @array_contains_int(
{ i64, i8* }* %arr.param, i64 %val.param) {
  %arr.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %arr.param, { i64, i8* }** %arr.ptr
  %val.ptr = alloca i64
  store i64 %val.param, i64* %val.ptr
  %370 = alloca i64
  store i64 0, i64* %370
  %371 = call i8* @llvm.stacksave()
  br label %while_cond108
while_cond108:
  %372 = load i64, i64* %370
  %373 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %374 = call i64 @nyx_array_length({ i64, i8* }* %373)
  %375 = icmp slt i64 %372, %374
  br i1 %375, label %while_body109, label %while_end110
while_body109:
  call void @llvm.stackrestore(i8* %371)
  %376 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %377 = load i64, i64* %370
  %378 = call i64 @nyx_array_get({ i64, i8* }* %376, i64 %377)
  %379 = load i64, i64* %val.ptr
  %380 = icmp eq i64 %378, %379
  br i1 %380, label %then111, label %else112
then111:
  ret i1 1
else112:
  br label %merge113
merge113:
  %381 = load i64, i64* %370
  %382 = add i64 %381, 1
  store i64 %382, i64* %370
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
  %383 = alloca i64
  store i64 0, i64* %383
  %384 = call i8* @llvm.stacksave()
  br label %while_cond114
while_cond114:
  %385 = load i64, i64* %383
  %386 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %387 = call i64 @nyx_array_length({ i64, i8* }* %386)
  %388 = icmp slt i64 %385, %387
  br i1 %388, label %while_body115, label %while_end116
while_body115:
  call void @llvm.stackrestore(i8* %384)
  %389 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %390 = load i64, i64* %383
  %391 = call i64 @nyx_array_get({ i64, i8* }* %389, i64 %390)
  %392 = load i64, i64* %val.ptr
  %393 = icmp eq i64 %391, %392
  br i1 %393, label %then117, label %else118
then117:
  %394 = load i64, i64* %383
  ret i64 %394
else118:
  br label %merge119
merge119:
  %395 = load i64, i64* %383
  %396 = add i64 %395, 1
  store i64 %396, i64* %383
  br label %while_cond114
while_end116:
  %397 = sub i64 0, 1
  ret i64 %397
}

define { i64, i8* }* @sort_int(
{ i64, i8* }* %arr.param) {
  %arr.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %arr.param, { i64, i8* }** %arr.ptr
  %398 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %399 = call i64 @nyx_array_length({ i64, i8* }* %398)
  %400 = alloca i64
  store i64 %399, i64* %400
  %401 = alloca i1
  store i1 1, i1* %401
  %402 = call i8* @llvm.stacksave()
  br label %while_cond120
while_cond120:
  %403 = load i1, i1* %401
  %404 = icmp eq i1 %403, 1
  br i1 %404, label %while_body121, label %while_end122
while_body121:
  call void @llvm.stackrestore(i8* %402)
  store i1 0, i1* %401
  %405 = alloca i64
  store i64 0, i64* %405
  %406 = call i8* @llvm.stacksave()
  br label %while_cond123
while_cond123:
  %407 = load i64, i64* %405
  %408 = load i64, i64* %400
  %409 = sub i64 %408, 1
  %410 = icmp slt i64 %407, %409
  br i1 %410, label %while_body124, label %while_end125
while_body124:
  call void @llvm.stackrestore(i8* %406)
  %411 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %412 = load i64, i64* %405
  %413 = call i64 @nyx_array_get({ i64, i8* }* %411, i64 %412)
  %414 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %415 = load i64, i64* %405
  %416 = add i64 %415, 1
  %417 = call i64 @nyx_array_get({ i64, i8* }* %414, i64 %416)
  %418 = icmp sgt i64 %413, %417
  br i1 %418, label %then126, label %else127
then126:
  %419 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %420 = load i64, i64* %405
  %421 = call i64 @nyx_array_get({ i64, i8* }* %419, i64 %420)
  %422 = alloca i64
  store i64 %421, i64* %422
  %423 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %424 = load i64, i64* %405
  %425 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %426 = load i64, i64* %405
  %427 = add i64 %426, 1
  %428 = call i64 @nyx_array_get({ i64, i8* }* %425, i64 %427)
  call void @nyx_array_set({ i64, i8* }* %423, i64 %424, i64 %428)
  %429 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %430 = load i64, i64* %405
  %431 = add i64 %430, 1
  %432 = load i64, i64* %422
  call void @nyx_array_set({ i64, i8* }* %429, i64 %431, i64 %432)
  store i1 1, i1* %401
  br label %merge128
else127:
  br label %merge128
merge128:
  %433 = load i64, i64* %405
  %434 = add i64 %433, 1
  store i64 %434, i64* %405
  br label %while_cond123
while_end125:
  br label %while_cond120
while_end122:
  %435 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  ret { i64, i8* }* %435
}

define { i64, i8* }* @sort_by(
{ i64, i8* }* %arr.param, i8* %cmp.param) {
  %arr.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %arr.param, { i64, i8* }** %arr.ptr
  %cmp.ptr = alloca i8*
  store i8* %cmp.param, i8** %cmp.ptr
  %436 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %437 = call i64 @nyx_array_length({ i64, i8* }* %436)
  %438 = alloca i64
  store i64 %437, i64* %438
  %439 = load i64, i64* %438
  %440 = icmp sle i64 %439, 1
  br i1 %440, label %then129, label %else130
then129:
  %441 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  ret { i64, i8* }* %441
else130:
  br label %merge131
merge131:
  %442 = alloca i64
  store i64 1, i64* %442
  %443 = call i8* @llvm.stacksave()
  br label %while_cond132
while_cond132:
  %444 = load i64, i64* %442
  %445 = load i64, i64* %438
  %446 = icmp slt i64 %444, %445
  br i1 %446, label %while_body133, label %while_end134
while_body133:
  call void @llvm.stackrestore(i8* %443)
  %447 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %448 = load i64, i64* %442
  %449 = call i64 @nyx_array_get({ i64, i8* }* %447, i64 %448)
  %450 = alloca i64
  store i64 %449, i64* %450
  %451 = load i64, i64* %442
  %452 = sub i64 %451, 1
  %453 = alloca i64
  store i64 %452, i64* %453
  %454 = alloca i1
  store i1 0, i1* %454
  %455 = call i8* @llvm.stacksave()
  br label %while_cond135
while_cond135:
  %456 = alloca i1
  store i1 false, i1* %456
  %457 = load i64, i64* %453
  %458 = icmp sge i64 %457, 0
  br i1 %458, label %sc_and_rhs138, label %sc_and_end139
sc_and_rhs138:
  %459 = load i1, i1* %454
  %460 = xor i1 %459, true
  store i1 %460, i1* %456
  br label %sc_and_end139
sc_and_end139:
  %461 = load i1, i1* %456
  br i1 %461, label %while_body136, label %while_end137
while_body136:
  call void @llvm.stackrestore(i8* %455)
  %462 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %463 = load i64, i64* %453
  %464 = call i64 @nyx_array_get({ i64, i8* }* %462, i64 %463)
  %465 = load i64, i64* %450
  %466 = load i8*, i8** %cmp.ptr
  %467 = bitcast i8* %466 to { i8*, i8* }*
  %468 = getelementptr { i8*, i8* }, { i8*, i8* }* %467, i32 0, i32 0
  %469 = load i8*, i8** %468
  %470 = getelementptr { i8*, i8* }, { i8*, i8* }* %467, i32 0, i32 1
  %471 = load i8*, i8** %470
  %472 = icmp ne i8* %471, null
  br i1 %472, label %cl_env140, label %cl_noenv141
cl_env140:
  %473 = bitcast i8* %469 to i64 (i8*, i64, i64)*
  %474 = call i64 %473(i8* %471, i64 %464, i64 %465)
  br label %cl_merge142
cl_noenv141:
  %475 = bitcast i8* %469 to i64 (i64, i64)*
  %476 = call i64 %475(i64 %464, i64 %465)
  br label %cl_merge142
cl_merge142:
  %477 = phi i64 [%474, %cl_env140], [%476, %cl_noenv141]
  %478 = alloca i64
  store i64 %477, i64* %478
  %479 = load i64, i64* %478
  %480 = icmp sgt i64 %479, 0
  br i1 %480, label %then143, label %else144
then143:
  %481 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %482 = load i64, i64* %453
  %483 = add i64 %482, 1
  %484 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %485 = load i64, i64* %453
  %486 = call i64 @nyx_array_get({ i64, i8* }* %484, i64 %485)
  call void @nyx_array_set({ i64, i8* }* %481, i64 %483, i64 %486)
  %487 = load i64, i64* %453
  %488 = sub i64 %487, 1
  store i64 %488, i64* %453
  br label %merge145
else144:
  store i1 1, i1* %454
  br label %merge145
merge145:
  br label %while_cond135
while_end137:
  %489 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %490 = load i64, i64* %453
  %491 = add i64 %490, 1
  %492 = load i64, i64* %450
  call void @nyx_array_set({ i64, i8* }* %489, i64 %491, i64 %492)
  %493 = load i64, i64* %442
  %494 = add i64 %493, 1
  store i64 %494, i64* %442
  br label %while_cond132
while_end134:
  %495 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  ret { i64, i8* }* %495
}

define i64 @str_compare(
%nyx_string* %a.param, %nyx_string* %b.param) {
  %a.ptr = alloca %nyx_string*
  store %nyx_string* %a.param, %nyx_string** %a.ptr
  %b.ptr = alloca %nyx_string*
  store %nyx_string* %b.param, %nyx_string** %b.ptr
  %496 = load %nyx_string*, %nyx_string** %a.ptr
  %497 = call i64 @nyx_string_byte_length(%nyx_string* %496)
  %498 = alloca i64
  store i64 %497, i64* %498
  %499 = load %nyx_string*, %nyx_string** %b.ptr
  %500 = call i64 @nyx_string_byte_length(%nyx_string* %499)
  %501 = alloca i64
  store i64 %500, i64* %501
  %502 = load i64, i64* %498
  %503 = alloca i64
  store i64 %502, i64* %503
  %504 = load i64, i64* %501
  %505 = load i64, i64* %503
  %506 = icmp slt i64 %504, %505
  br i1 %506, label %then146, label %else147
then146:
  %507 = load i64, i64* %501
  store i64 %507, i64* %503
  br label %merge148
else147:
  br label %merge148
merge148:
  %508 = alloca i64
  store i64 0, i64* %508
  %509 = call i8* @llvm.stacksave()
  br label %while_cond149
while_cond149:
  %510 = load i64, i64* %508
  %511 = load i64, i64* %503
  %512 = icmp slt i64 %510, %511
  br i1 %512, label %while_body150, label %while_end151
while_body150:
  call void @llvm.stackrestore(i8* %509)
  %513 = load %nyx_string*, %nyx_string** %a.ptr
  %514 = load i64, i64* %508
  %515 = call i8 @nyx_string_char_at(%nyx_string* %513, i64 %514)
  %516 = zext i8 %515 to i64
  %517 = alloca i64
  store i64 %516, i64* %517
  %518 = load %nyx_string*, %nyx_string** %b.ptr
  %519 = load i64, i64* %508
  %520 = call i8 @nyx_string_char_at(%nyx_string* %518, i64 %519)
  %521 = zext i8 %520 to i64
  %522 = alloca i64
  store i64 %521, i64* %522
  %523 = load i64, i64* %517
  %524 = load i64, i64* %522
  %525 = icmp slt i64 %523, %524
  br i1 %525, label %then152, label %else153
then152:
  %526 = sub i64 0, 1
  ret i64 %526
else153:
  br label %merge154
merge154:
  %527 = load i64, i64* %517
  %528 = load i64, i64* %522
  %529 = icmp sgt i64 %527, %528
  br i1 %529, label %then155, label %else156
then155:
  ret i64 1
else156:
  br label %merge157
merge157:
  %530 = load i64, i64* %508
  %531 = add i64 %530, 1
  store i64 %531, i64* %508
  br label %while_cond149
while_end151:
  %532 = load i64, i64* %498
  %533 = load i64, i64* %501
  %534 = icmp slt i64 %532, %533
  br i1 %534, label %then158, label %else159
then158:
  %535 = sub i64 0, 1
  ret i64 %535
else159:
  br label %merge160
merge160:
  %536 = load i64, i64* %498
  %537 = load i64, i64* %501
  %538 = icmp sgt i64 %536, %537
  br i1 %538, label %then161, label %else162
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
  %539 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %540 = call i64 @nyx_array_length({ i64, i8* }* %539)
  %541 = alloca i64
  store i64 %540, i64* %541
  %542 = load i64, i64* %541
  %543 = icmp sle i64 %542, 1
  br i1 %543, label %then164, label %else165
then164:
  %544 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  ret { i64, i8* }* %544
else165:
  br label %merge166
merge166:
  %545 = alloca i64
  store i64 1, i64* %545
  %546 = call i8* @llvm.stacksave()
  br label %while_cond167
while_cond167:
  %547 = load i64, i64* %545
  %548 = load i64, i64* %541
  %549 = icmp slt i64 %547, %548
  br i1 %549, label %while_body168, label %while_end169
while_body168:
  call void @llvm.stackrestore(i8* %546)
  %550 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %551 = load i64, i64* %545
  %552 = call i64 @nyx_array_get_checked({ i64, i8* }* %550, i64 %551, i64 2)
  %553 = inttoptr i64 %552 to %nyx_string*
  %554 = alloca %nyx_string*
  store %nyx_string* %553, %nyx_string** %554
  %555 = load i64, i64* %545
  %556 = sub i64 %555, 1
  %557 = alloca i64
  store i64 %556, i64* %557
  %558 = alloca i1
  store i1 0, i1* %558
  %559 = call i8* @llvm.stacksave()
  br label %while_cond170
while_cond170:
  %560 = alloca i1
  store i1 false, i1* %560
  %561 = load i64, i64* %557
  %562 = icmp sge i64 %561, 0
  br i1 %562, label %sc_and_rhs173, label %sc_and_end174
sc_and_rhs173:
  %563 = load i1, i1* %558
  %564 = xor i1 %563, true
  store i1 %564, i1* %560
  br label %sc_and_end174
sc_and_end174:
  %565 = load i1, i1* %560
  br i1 %565, label %while_body171, label %while_end172
while_body171:
  call void @llvm.stackrestore(i8* %559)
  %566 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %567 = load i64, i64* %557
  %568 = call i64 @nyx_array_get_checked({ i64, i8* }* %566, i64 %567, i64 2)
  %569 = inttoptr i64 %568 to %nyx_string*
  %570 = alloca %nyx_string*
  store %nyx_string* %569, %nyx_string** %570
  %571 = load %nyx_string*, %nyx_string** %570
  %572 = load %nyx_string*, %nyx_string** %554
  %573 = call i64 @str_compare(%nyx_string* %571, %nyx_string* %572)
  %574 = icmp sgt i64 %573, 0
  br i1 %574, label %then175, label %else176
then175:
  %575 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %576 = load i64, i64* %557
  %577 = add i64 %576, 1
  %578 = load %nyx_string*, %nyx_string** %570
  %579 = ptrtoint %nyx_string* %578 to i64
  call void @nyx_array_set_tagged({ i64, i8* }* %575, i64 %577, i64 %579, i64 2)
  %580 = load i64, i64* %557
  %581 = sub i64 %580, 1
  store i64 %581, i64* %557
  br label %merge177
else176:
  store i1 1, i1* %558
  br label %merge177
merge177:
  br label %while_cond170
while_end172:
  %582 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %583 = load i64, i64* %557
  %584 = add i64 %583, 1
  %585 = load %nyx_string*, %nyx_string** %554
  %586 = ptrtoint %nyx_string* %585 to i64
  call void @nyx_array_set_tagged({ i64, i8* }* %582, i64 %584, i64 %586, i64 2)
  %587 = load i64, i64* %545
  %588 = add i64 %587, 1
  store i64 %588, i64* %545
  br label %while_cond167
while_end169:
  %589 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  ret { i64, i8* }* %589
}

define %nyx_string* @read_text(
%nyx_string* %path.param) {
  %path.ptr = alloca %nyx_string*
  store %nyx_string* %path.param, %nyx_string** %path.ptr
  %590 = load %nyx_string*, %nyx_string** %path.ptr
  %591 = call i8* @nyx_string_to_cstr(%nyx_string* %590)
  %592 = call %nyx_string* @nyx_read_file(i8* %591)
  ret %nyx_string* %592
}

define i64 @write_text(
%nyx_string* %path.param, %nyx_string* %content.param) {
  %path.ptr = alloca %nyx_string*
  store %nyx_string* %path.param, %nyx_string** %path.ptr
  %content.ptr = alloca %nyx_string*
  store %nyx_string* %content.param, %nyx_string** %content.ptr
  %593 = load %nyx_string*, %nyx_string** %path.ptr
  %594 = load %nyx_string*, %nyx_string** %content.ptr
  %595 = call i8* @nyx_string_to_cstr(%nyx_string* %593)
  %596 = call i1 @nyx_write_file_safe(i8* %595, %nyx_string* %594)
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
  %1130 = call i1 @nyx_write_file_safe(i8* %1129, %nyx_string* %1128)
  %1131 = getelementptr [6 x i8], [6 x i8]* @.str77, i32 0, i32 0
  %1132 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str77.c, i8* %1131, i64 5)
  %1133 = load %nyx_string*, %nyx_string** %1126
  %1134 = call %nyx_string* @nyx_string_concat(%nyx_string* %1132, %nyx_string* %1133)
  %1135 = call i8* @nyx_string_to_cstr(%nyx_string* %1134)
  %1136 = call i64 @nyx_exec_code(i8* %1135)
  %1137 = alloca i64
  store i64 %1136, i64* %1137
  %1138 = getelementptr [1 x i8], [1 x i8]* @.str78, i32 0, i32 0
  %1139 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str78.c, i8* %1138, i64 0)
  %1140 = alloca %nyx_string*
  store %nyx_string* %1139, %nyx_string** %1140
  %1141 = load %nyx_string*, %nyx_string** %996
  %1142 = call i8* @nyx_string_to_cstr(%nyx_string* %1141)
  %1143 = call i1 @nyx_file_exists(i8* %1142)
  br i1 %1143, label %then274, label %else275
then274:
  %1144 = load %nyx_string*, %nyx_string** %996
  %1145 = call i8* @nyx_string_to_cstr(%nyx_string* %1144)
  %1146 = call %nyx_string* @nyx_read_file(i8* %1145)
  store %nyx_string* %1146, %nyx_string** %1140
  %1147 = getelementptr [7 x i8], [7 x i8]* @.str79, i32 0, i32 0
  %1148 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str79.c, i8* %1147, i64 6)
  %1149 = load %nyx_string*, %nyx_string** %996
  %1150 = call %nyx_string* @nyx_string_concat(%nyx_string* %1148, %nyx_string* %1149)
  %1151 = call i8* @nyx_string_to_cstr(%nyx_string* %1150)
  %1152 = call %nyx_string* @nyx_exec(i8* %1151)
  br label %merge276
else275:
  br label %merge276
merge276:
  %1153 = getelementptr [7 x i8], [7 x i8]* @.str80, i32 0, i32 0
  %1154 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str80.c, i8* %1153, i64 6)
  %1155 = load %nyx_string*, %nyx_string** %1126
  %1156 = call %nyx_string* @nyx_string_concat(%nyx_string* %1154, %nyx_string* %1155)
  %1157 = call i8* @nyx_string_to_cstr(%nyx_string* %1156)
  %1158 = call %nyx_string* @nyx_exec(i8* %1157)
  %1159 = alloca i64
  store i64 0, i64* %1159
  %1160 = alloca i64
  store i64 0, i64* %1160
  %1161 = load %nyx_string*, %nyx_string** %1140
  %1162 = getelementptr [2 x i8], [2 x i8]* @.str81, i32 0, i32 0
  %1163 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str81.c, i8* %1162, i64 1)
  %1164 = call { i64, i8* }* @nyx_string_split(%nyx_string* %1161, %nyx_string* %1163)
  %1165 = alloca { i64, i8* }*
  store { i64, i8* }* %1164, { i64, i8* }** %1165
  %1166 = alloca i64
  store i64 0, i64* %1166
  %1167 = getelementptr [6 x i8], [6 x i8]* @.str82, i32 0, i32 0
  %1168 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str82.c, i8* %1167, i64 5)
  %1169 = alloca %nyx_string*
  store %nyx_string* %1168, %nyx_string** %1169
  %1170 = getelementptr [6 x i8], [6 x i8]* @.str83, i32 0, i32 0
  %1171 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str83.c, i8* %1170, i64 5)
  %1172 = alloca %nyx_string*
  store %nyx_string* %1171, %nyx_string** %1172
  %1173 = call i8* @llvm.stacksave()
  br label %while_cond277
while_cond277:
  %1174 = load i64, i64* %1166
  %1175 = load { i64, i8* }*, { i64, i8* }** %1165
  %1176 = call i64 @nyx_array_length({ i64, i8* }* %1175)
  %1177 = icmp slt i64 %1174, %1176
  br i1 %1177, label %while_body278, label %while_end279
while_body278:
  call void @llvm.stackrestore(i8* %1173)
  %1178 = load { i64, i8* }*, { i64, i8* }** %1165
  %1179 = load i64, i64* %1166
  %1180 = call i64 @nyx_array_get_checked({ i64, i8* }* %1178, i64 %1179, i64 2)
  %1181 = inttoptr i64 %1180 to %nyx_string*
  %1182 = alloca %nyx_string*
  store %nyx_string* %1181, %nyx_string** %1182
  %1183 = load %nyx_string*, %nyx_string** %1182
  %1184 = load %nyx_string*, %nyx_string** %1169
  %1185 = call i1 @nyx_string_contains(%nyx_string* %1183, %nyx_string* %1184)
  br i1 %1185, label %then280, label %else281
then280:
  %1186 = load i64, i64* %1159
  %1187 = add i64 %1186, 1
  store i64 %1187, i64* %1159
  br label %merge282
else281:
  %1188 = load %nyx_string*, %nyx_string** %1182
  %1189 = load %nyx_string*, %nyx_string** %1172
  %1190 = call i1 @nyx_string_contains(%nyx_string* %1188, %nyx_string* %1189)
  br i1 %1190, label %then283, label %else284
then283:
  %1191 = load i64, i64* %1160
  %1192 = add i64 %1191, 1
  store i64 %1192, i64* %1160
  br label %merge285
else284:
  br label %merge285
merge285:
  br label %merge282
merge282:
  %1193 = load i64, i64* %1166
  %1194 = add i64 %1193, 1
  store i64 %1194, i64* %1166
  br label %while_cond277
while_end279:
  %1195 = getelementptr %TestResult, %TestResult* null, i32 1
  %1196 = ptrtoint %TestResult* %1195 to i64
  %1197 = call i8* @GC_malloc(i64 %1196)
  %1198 = bitcast i8* %1197 to %TestResult*
  %1199 = load %nyx_string*, %nyx_string** %file.ptr
  %1200 = getelementptr %TestResult, %TestResult* %1198, i32 0, i32 0
  store %nyx_string* %1199, %nyx_string** %1200
  %1201 = load i64, i64* %1159
  %1202 = getelementptr %TestResult, %TestResult* %1198, i32 0, i32 1
  store i64 %1201, i64* %1202
  %1203 = load i64, i64* %1160
  %1204 = getelementptr %TestResult, %TestResult* %1198, i32 0, i32 2
  store i64 %1203, i64* %1204
  %1205 = load %nyx_string*, %nyx_string** %1140
  %1206 = getelementptr %TestResult, %TestResult* %1198, i32 0, i32 3
  store %nyx_string* %1205, %nyx_string** %1206
  %1207 = alloca i1
  store i1 false, i1* %1207
  %1208 = load i64, i64* %1137
  %1209 = icmp eq i64 %1208, 0
  br i1 %1209, label %sc_and_rhs286, label %sc_and_end287
sc_and_rhs286:
  %1210 = load i64, i64* %1160
  %1211 = icmp eq i64 %1210, 0
  store i1 %1211, i1* %1207
  br label %sc_and_end287
sc_and_end287:
  %1212 = load i1, i1* %1207
  %1213 = getelementptr %TestResult, %TestResult* %1198, i32 0, i32 4
  store i1 %1212, i1* %1213
  %1214 = load %TestResult, %TestResult* %1198
  ret %TestResult %1214
}

define internal i64 @print_result(
%TestResult %result.param, i1 %verbose.param) {
  %result.ptr = alloca %TestResult
  store %TestResult %result.param, %TestResult* %result.ptr
  %verbose.ptr = alloca i1
  store i1 %verbose.param, i1* %verbose.ptr
  %1215 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 4
  %1216 = load i1, i1* %1215
  br i1 %1216, label %then288, label %else289
then288:
  %1217 = getelementptr [9 x i8], [9 x i8]* @.str84, i32 0, i32 0
  %1218 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str84.c, i8* %1217, i64 8)
  %1219 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 0
  %1220 = load %nyx_string*, %nyx_string** %1219
  %1221 = call %nyx_string* @nyx_string_concat(%nyx_string* %1218, %nyx_string* %1220)
  %1222 = getelementptr [3 x i8], [3 x i8]* @.str85, i32 0, i32 0
  %1223 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str85.c, i8* %1222, i64 2)
  %1224 = call %nyx_string* @nyx_string_concat(%nyx_string* %1221, %nyx_string* %1223)
  %1225 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 1
  %1226 = load i64, i64* %1225
  %1227 = call %nyx_string* @nyx_string_from_int(i64 %1226)
  %1228 = call %nyx_string* @nyx_string_concat(%nyx_string* %1224, %nyx_string* %1227)
  %1229 = getelementptr [8 x i8], [8 x i8]* @.str86, i32 0, i32 0
  %1230 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str86.c, i8* %1229, i64 7)
  %1231 = call %nyx_string* @nyx_string_concat(%nyx_string* %1228, %nyx_string* %1230)
  %1232 = call i8* @nyx_string_to_cstr(%nyx_string* %1231)
  call void @nyx_print_string(i8* %1232)
  %1233 = load i1, i1* %verbose.ptr
  br i1 %1233, label %then291, label %else292
then291:
  %1234 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 3
  %1235 = load %nyx_string*, %nyx_string** %1234
  %1236 = call i8* @nyx_string_to_cstr(%nyx_string* %1235)
  call void @nyx_print_string(i8* %1236)
  br label %merge293
else292:
  br label %merge293
merge293:
  br label %merge290
else289:
  %1237 = getelementptr [9 x i8], [9 x i8]* @.str87, i32 0, i32 0
  %1238 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str87.c, i8* %1237, i64 8)
  %1239 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 0
  %1240 = load %nyx_string*, %nyx_string** %1239
  %1241 = call %nyx_string* @nyx_string_concat(%nyx_string* %1238, %nyx_string* %1240)
  %1242 = getelementptr [3 x i8], [3 x i8]* @.str88, i32 0, i32 0
  %1243 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str88.c, i8* %1242, i64 2)
  %1244 = call %nyx_string* @nyx_string_concat(%nyx_string* %1241, %nyx_string* %1243)
  %1245 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 1
  %1246 = load i64, i64* %1245
  %1247 = call %nyx_string* @nyx_string_from_int(i64 %1246)
  %1248 = call %nyx_string* @nyx_string_concat(%nyx_string* %1244, %nyx_string* %1247)
  %1249 = getelementptr [10 x i8], [10 x i8]* @.str89, i32 0, i32 0
  %1250 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str89.c, i8* %1249, i64 9)
  %1251 = call %nyx_string* @nyx_string_concat(%nyx_string* %1248, %nyx_string* %1250)
  %1252 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 2
  %1253 = load i64, i64* %1252
  %1254 = call %nyx_string* @nyx_string_from_int(i64 %1253)
  %1255 = call %nyx_string* @nyx_string_concat(%nyx_string* %1251, %nyx_string* %1254)
  %1256 = getelementptr [9 x i8], [9 x i8]* @.str90, i32 0, i32 0
  %1257 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str90.c, i8* %1256, i64 8)
  %1258 = call %nyx_string* @nyx_string_concat(%nyx_string* %1255, %nyx_string* %1257)
  %1259 = call i8* @nyx_string_to_cstr(%nyx_string* %1258)
  call void @nyx_print_string(i8* %1259)
  %1260 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 3
  %1261 = load %nyx_string*, %nyx_string** %1260
  %1262 = call i8* @nyx_string_to_cstr(%nyx_string* %1261)
  call void @nyx_print_string(i8* %1262)
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
  %1263 = getelementptr [1 x i8], [1 x i8]* @.str91, i32 0, i32 0
  %1264 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str91.c, i8* %1263, i64 0)
  %1265 = call i8* @nyx_string_to_cstr(%nyx_string* %1264)
  call void @nyx_print_string(i8* %1265)
  %1266 = getelementptr [36 x i8], [36 x i8]* @.str92, i32 0, i32 0
  %1267 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str92.c, i8* %1266, i64 35)
  %1268 = call i8* @nyx_string_to_cstr(%nyx_string* %1267)
  call void @nyx_print_string(i8* %1268)
  %1269 = alloca i64
  store i64 0, i64* %1269
  %1270 = alloca i64
  store i64 0, i64* %1270
  %1271 = alloca i64
  store i64 0, i64* %1271
  %1272 = call i8* @llvm.stacksave()
  br label %while_cond294
while_cond294:
  %1273 = load i64, i64* %1271
  %1274 = load { i64, i8* }*, { i64, i8* }** %results.ptr
  %1275 = call i64 @nyx_array_length({ i64, i8* }* %1274)
  %1276 = icmp slt i64 %1273, %1275
  br i1 %1276, label %while_body295, label %while_end296
while_body295:
  call void @llvm.stackrestore(i8* %1272)
  %1277 = load { i64, i8* }*, { i64, i8* }** %results.ptr
  %1278 = load i64, i64* %1271
  %1279 = call i64 @nyx_array_get({ i64, i8* }* %1277, i64 %1278)
  %1280 = inttoptr i64 %1279 to %TestResult*
  %1281 = load %TestResult, %TestResult* %1280
  %1282 = alloca %TestResult
  store %TestResult %1281, %TestResult* %1282
  %1283 = getelementptr %TestResult, %TestResult* %1282, i32 0, i32 4
  %1284 = load i1, i1* %1283
  br i1 %1284, label %then297, label %else298
then297:
  %1285 = load i64, i64* %1269
  %1286 = add i64 %1285, 1
  store i64 %1286, i64* %1269
  br label %merge299
else298:
  %1287 = load i64, i64* %1270
  %1288 = add i64 %1287, 1
  store i64 %1288, i64* %1270
  br label %merge299
merge299:
  %1289 = load i64, i64* %1271
  %1290 = add i64 %1289, 1
  store i64 %1290, i64* %1271
  br label %while_cond294
while_end296:
  %1291 = getelementptr [11 x i8], [11 x i8]* @.str93, i32 0, i32 0
  %1292 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str93.c, i8* %1291, i64 10)
  %1293 = load i64, i64* %1269
  %1294 = call %nyx_string* @nyx_string_from_int(i64 %1293)
  %1295 = call %nyx_string* @nyx_string_concat(%nyx_string* %1292, %nyx_string* %1294)
  %1296 = getelementptr [10 x i8], [10 x i8]* @.str94, i32 0, i32 0
  %1297 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str94.c, i8* %1296, i64 9)
  %1298 = call %nyx_string* @nyx_string_concat(%nyx_string* %1295, %nyx_string* %1297)
  %1299 = load i64, i64* %1270
  %1300 = call %nyx_string* @nyx_string_from_int(i64 %1299)
  %1301 = call %nyx_string* @nyx_string_concat(%nyx_string* %1298, %nyx_string* %1300)
  %1302 = getelementptr [10 x i8], [10 x i8]* @.str95, i32 0, i32 0
  %1303 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str95.c, i8* %1302, i64 9)
  %1304 = call %nyx_string* @nyx_string_concat(%nyx_string* %1301, %nyx_string* %1303)
  %1305 = load { i64, i8* }*, { i64, i8* }** %results.ptr
  %1306 = call i64 @nyx_array_length({ i64, i8* }* %1305)
  %1307 = call %nyx_string* @nyx_string_from_int(i64 %1306)
  %1308 = call %nyx_string* @nyx_string_concat(%nyx_string* %1304, %nyx_string* %1307)
  %1309 = getelementptr [8 x i8], [8 x i8]* @.str96, i32 0, i32 0
  %1310 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str96.c, i8* %1309, i64 7)
  %1311 = call %nyx_string* @nyx_string_concat(%nyx_string* %1308, %nyx_string* %1310)
  %1312 = call i8* @nyx_string_to_cstr(%nyx_string* %1311)
  call void @nyx_print_string(i8* %1312)
  %1313 = getelementptr [11 x i8], [11 x i8]* @.str97, i32 0, i32 0
  %1314 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str97.c, i8* %1313, i64 10)
  %1315 = load i64, i64* %total_passed.ptr
  %1316 = call %nyx_string* @nyx_string_from_int(i64 %1315)
  %1317 = call %nyx_string* @nyx_string_concat(%nyx_string* %1314, %nyx_string* %1316)
  %1318 = getelementptr [10 x i8], [10 x i8]* @.str98, i32 0, i32 0
  %1319 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str98.c, i8* %1318, i64 9)
  %1320 = call %nyx_string* @nyx_string_concat(%nyx_string* %1317, %nyx_string* %1319)
  %1321 = load i64, i64* %total_failed.ptr
  %1322 = call %nyx_string* @nyx_string_from_int(i64 %1321)
  %1323 = call %nyx_string* @nyx_string_concat(%nyx_string* %1320, %nyx_string* %1322)
  %1324 = getelementptr [10 x i8], [10 x i8]* @.str99, i32 0, i32 0
  %1325 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str99.c, i8* %1324, i64 9)
  %1326 = call %nyx_string* @nyx_string_concat(%nyx_string* %1323, %nyx_string* %1325)
  %1327 = load i64, i64* %total_passed.ptr
  %1328 = load i64, i64* %total_failed.ptr
  %1329 = add i64 %1327, %1328
  %1330 = call %nyx_string* @nyx_string_from_int(i64 %1329)
  %1331 = call %nyx_string* @nyx_string_concat(%nyx_string* %1326, %nyx_string* %1330)
  %1332 = getelementptr [8 x i8], [8 x i8]* @.str100, i32 0, i32 0
  %1333 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str100.c, i8* %1332, i64 7)
  %1334 = call %nyx_string* @nyx_string_concat(%nyx_string* %1331, %nyx_string* %1333)
  %1335 = call i8* @nyx_string_to_cstr(%nyx_string* %1334)
  call void @nyx_print_string(i8* %1335)
  %1336 = alloca i1
  store i1 false, i1* %1336
  %1337 = load i64, i64* %total_failed.ptr
  %1338 = icmp eq i64 %1337, 0
  br i1 %1338, label %sc_and_rhs300, label %sc_and_end301
sc_and_rhs300:
  %1339 = load i64, i64* %1270
  %1340 = icmp eq i64 %1339, 0
  store i1 %1340, i1* %1336
  br label %sc_and_end301
sc_and_end301:
  %1341 = load i1, i1* %1336
  br i1 %1341, label %then302, label %else303
then302:
  %1342 = getelementptr [27 x i8], [27 x i8]* @.str101, i32 0, i32 0
  %1343 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str101.c, i8* %1342, i64 26)
  %1344 = call i8* @nyx_string_to_cstr(%nyx_string* %1343)
  call void @nyx_print_string(i8* %1344)
  br label %merge304
else303:
  %1345 = getelementptr [28 x i8], [28 x i8]* @.str102, i32 0, i32 0
  %1346 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str102.c, i8* %1345, i64 27)
  %1347 = call i8* @nyx_string_to_cstr(%nyx_string* %1346)
  call void @nyx_print_string(i8* %1347)
  br label %merge304
merge304:
  %1348 = getelementptr [36 x i8], [36 x i8]* @.str103, i32 0, i32 0
  %1349 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str103.c, i8* %1348, i64 35)
  %1350 = call i8* @nyx_string_to_cstr(%nyx_string* %1349)
  call void @nyx_print_string(i8* %1350)
  ret i64 0
}

define i64 @main(
i32 %argc, i8** %argv) {
  call void @nyx_set_args(i32 %argc, i8** %argv)
  %1351 = getelementptr [24 x i8], [24 x i8]* @.str104, i32 0, i32 0
  %1352 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str104.c, i8* %1351, i64 23)
  %1353 = call i8* @nyx_string_to_cstr(%nyx_string* %1352)
  call void @nyx_print_string(i8* %1353)
  %1354 = call %TestConfig @load_test_config()
  %1355 = alloca %TestConfig
  store %TestConfig %1354, %TestConfig* %1355
  %1356 = call { i64, i8* }* @nyx_get_args()
  %1357 = alloca { i64, i8* }*
  store { i64, i8* }* %1356, { i64, i8* }** %1357
  %1358 = alloca i64
  store i64 1, i64* %1358
  %1359 = getelementptr [9 x i8], [9 x i8]* @.str105, i32 0, i32 0
  %1360 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str105.c, i8* %1359, i64 8)
  %1361 = alloca %nyx_string*
  store %nyx_string* %1360, %nyx_string** %1361
  %1362 = getelementptr [10 x i8], [10 x i8]* @.str106, i32 0, i32 0
  %1363 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str106.c, i8* %1362, i64 9)
  %1364 = alloca %nyx_string*
  store %nyx_string* %1363, %nyx_string** %1364
  %1365 = getelementptr [3 x i8], [3 x i8]* @.str107, i32 0, i32 0
  %1366 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str107.c, i8* %1365, i64 2)
  %1367 = alloca %nyx_string*
  store %nyx_string* %1366, %nyx_string** %1367
  %1368 = getelementptr [10 x i8], [10 x i8]* @.str108, i32 0, i32 0
  %1369 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str108.c, i8* %1368, i64 9)
  %1370 = alloca %nyx_string*
  store %nyx_string* %1369, %nyx_string** %1370
  %1371 = getelementptr [11 x i8], [11 x i8]* @.str109, i32 0, i32 0
  %1372 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str109.c, i8* %1371, i64 10)
  %1373 = alloca %nyx_string*
  store %nyx_string* %1372, %nyx_string** %1373
  %1374 = getelementptr [8 x i8], [8 x i8]* @.str110, i32 0, i32 0
  %1375 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str110.c, i8* %1374, i64 7)
  %1376 = alloca %nyx_string*
  store %nyx_string* %1375, %nyx_string** %1376
  %1377 = getelementptr [24 x i8], [24 x i8]* @.str111, i32 0, i32 0
  %1378 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str111.c, i8* %1377, i64 23)
  %1379 = alloca %nyx_string*
  store %nyx_string* %1378, %nyx_string** %1379
  %1380 = getelementptr [78 x i8], [78 x i8]* @.str112, i32 0, i32 0
  %1381 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str112.c, i8* %1380, i64 77)
  %1382 = alloca %nyx_string*
  store %nyx_string* %1381, %nyx_string** %1382
  %1383 = getelementptr [75 x i8], [75 x i8]* @.str113, i32 0, i32 0
  %1384 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str113.c, i8* %1383, i64 74)
  %1385 = alloca %nyx_string*
  store %nyx_string* %1384, %nyx_string** %1385
  %1386 = getelementptr [4 x i8], [4 x i8]* @.str114, i32 0, i32 0
  %1387 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str114.c, i8* %1386, i64 3)
  %1388 = alloca %nyx_string*
  store %nyx_string* %1387, %nyx_string** %1388
  %1389 = getelementptr [2 x i8], [2 x i8]* @.str115, i32 0, i32 0
  %1390 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str115.c, i8* %1389, i64 1)
  %1391 = alloca %nyx_string*
  store %nyx_string* %1390, %nyx_string** %1391
  %1392 = call i8* @llvm.stacksave()
  br label %while_cond305
while_cond305:
  %1393 = load i64, i64* %1358
  %1394 = load { i64, i8* }*, { i64, i8* }** %1357
  %1395 = call i64 @nyx_array_length({ i64, i8* }* %1394)
  %1396 = icmp slt i64 %1393, %1395
  br i1 %1396, label %while_body306, label %while_end307
while_body306:
  call void @llvm.stackrestore(i8* %1392)
  %1397 = load { i64, i8* }*, { i64, i8* }** %1357
  %1398 = load i64, i64* %1358
  %1399 = call i64 @nyx_array_get_checked({ i64, i8* }* %1397, i64 %1398, i64 2)
  %1400 = inttoptr i64 %1399 to %nyx_string*
  %1401 = alloca %nyx_string*
  store %nyx_string* %1400, %nyx_string** %1401
  %1402 = alloca i1
  store i1 false, i1* %1402
  %1403 = load %nyx_string*, %nyx_string** %1401
  %1404 = load %nyx_string*, %nyx_string** %1361
  %1405 = call i1 @nyx_string_equals(%nyx_string* %1403, %nyx_string* %1404)
  br i1 %1405, label %sc_and_rhs308, label %sc_and_end309
sc_and_rhs308:
  %1406 = load i64, i64* %1358
  %1407 = add i64 %1406, 1
  %1408 = load { i64, i8* }*, { i64, i8* }** %1357
  %1409 = call i64 @nyx_array_length({ i64, i8* }* %1408)
  %1410 = icmp slt i64 %1407, %1409
  store i1 %1410, i1* %1402
  br label %sc_and_end309
sc_and_end309:
  %1411 = load i1, i1* %1402
  br i1 %1411, label %then310, label %else311
then310:
  %1412 = load i64, i64* %1358
  %1413 = add i64 %1412, 1
  store i64 %1413, i64* %1358
  %1414 = load { i64, i8* }*, { i64, i8* }** %1357
  %1415 = load i64, i64* %1358
  %1416 = call i64 @nyx_array_get_checked({ i64, i8* }* %1414, i64 %1415, i64 2)
  %1417 = inttoptr i64 %1416 to %nyx_string*
  %1418 = alloca %nyx_string*
  store %nyx_string* %1417, %nyx_string** %1418
  %1419 = load %nyx_string*, %nyx_string** %1418
  %1420 = getelementptr %TestConfig, %TestConfig* %1355, i32 0, i32 2
  store %nyx_string* %1419, %nyx_string** %1420
  br label %merge312
else311:
  %1421 = alloca i1
  store i1 true, i1* %1421
  %1422 = load %nyx_string*, %nyx_string** %1401
  %1423 = load %nyx_string*, %nyx_string** %1364
  %1424 = call i1 @nyx_string_equals(%nyx_string* %1422, %nyx_string* %1423)
  br i1 %1424, label %sc_or_end314, label %sc_or_rhs313
sc_or_rhs313:
  %1425 = load %nyx_string*, %nyx_string** %1401
  %1426 = load %nyx_string*, %nyx_string** %1367
  %1427 = call i1 @nyx_string_equals(%nyx_string* %1425, %nyx_string* %1426)
  store i1 %1427, i1* %1421
  br label %sc_or_end314
sc_or_end314:
  %1428 = load i1, i1* %1421
  br i1 %1428, label %then315, label %else316
then315:
  %1429 = getelementptr %TestConfig, %TestConfig* %1355, i32 0, i32 3
  store i1 1, i1* %1429
  br label %merge317
else316:
  %1430 = alloca i1
  store i1 false, i1* %1430
  %1431 = load %nyx_string*, %nyx_string** %1401
  %1432 = load %nyx_string*, %nyx_string** %1370
  %1433 = call i1 @nyx_string_equals(%nyx_string* %1431, %nyx_string* %1432)
  br i1 %1433, label %sc_and_rhs318, label %sc_and_end319
sc_and_rhs318:
  %1434 = load i64, i64* %1358
  %1435 = add i64 %1434, 1
  %1436 = load { i64, i8* }*, { i64, i8* }** %1357
  %1437 = call i64 @nyx_array_length({ i64, i8* }* %1436)
  %1438 = icmp slt i64 %1435, %1437
  store i1 %1438, i1* %1430
  br label %sc_and_end319
sc_and_end319:
  %1439 = load i1, i1* %1430
  br i1 %1439, label %then320, label %else321
then320:
  %1440 = load i64, i64* %1358
  %1441 = add i64 %1440, 1
  store i64 %1441, i64* %1358
  %1442 = load { i64, i8* }*, { i64, i8* }** %1357
  %1443 = load i64, i64* %1358
  %1444 = call i64 @nyx_array_get_checked({ i64, i8* }* %1442, i64 %1443, i64 2)
  %1445 = inttoptr i64 %1444 to %nyx_string*
  %1446 = alloca %nyx_string*
  store %nyx_string* %1445, %nyx_string** %1446
  %1447 = load %nyx_string*, %nyx_string** %1446
  %1448 = call i64 @nyx_string_to_int(%nyx_string* %1447)
  %1449 = getelementptr %TestConfig, %TestConfig* %1355, i32 0, i32 1
  store i64 %1448, i64* %1449
  br label %merge322
else321:
  %1450 = alloca i1
  store i1 true, i1* %1450
  %1451 = load %nyx_string*, %nyx_string** %1401
  %1452 = load %nyx_string*, %nyx_string** %1373
  %1453 = call i1 @nyx_string_equals(%nyx_string* %1451, %nyx_string* %1452)
  br i1 %1453, label %sc_or_end324, label %sc_or_rhs323
sc_or_rhs323:
  %1454 = load %nyx_string*, %nyx_string** %1401
  %1455 = load %nyx_string*, %nyx_string** %1376
  %1456 = call i1 @nyx_string_equals(%nyx_string* %1454, %nyx_string* %1455)
  store i1 %1456, i1* %1450
  br label %sc_or_end324
sc_or_end324:
  %1457 = load i1, i1* %1450
  br i1 %1457, label %then325, label %else326
then325:
  %1458 = load %nyx_string*, %nyx_string** %1379
  %1459 = load %nyx_string*, %nyx_string** %1401
  %1460 = call %nyx_string* @nyx_string_concat(%nyx_string* %1458, %nyx_string* %1459)
  %1461 = call i8* @nyx_string_to_cstr(%nyx_string* %1460)
  call void @nyx_print_string(i8* %1461)
  %1462 = load %nyx_string*, %nyx_string** %1382
  %1463 = call i8* @nyx_string_to_cstr(%nyx_string* %1462)
  call void @nyx_print_string(i8* %1463)
  %1464 = load %nyx_string*, %nyx_string** %1385
  %1465 = call i8* @nyx_string_to_cstr(%nyx_string* %1464)
  call void @nyx_print_string(i8* %1465)
  ret i64 1
else326:
  %1466 = alloca i1
  store i1 true, i1* %1466
  %1467 = load %nyx_string*, %nyx_string** %1401
  %1468 = load %nyx_string*, %nyx_string** %1361
  %1469 = call i1 @nyx_string_equals(%nyx_string* %1467, %nyx_string* %1468)
  br i1 %1469, label %sc_or_end329, label %sc_or_rhs328
sc_or_rhs328:
  %1470 = load %nyx_string*, %nyx_string** %1401
  %1471 = load %nyx_string*, %nyx_string** %1370
  %1472 = call i1 @nyx_string_equals(%nyx_string* %1470, %nyx_string* %1471)
  store i1 %1472, i1* %1466
  br label %sc_or_end329
sc_or_end329:
  %1473 = load i1, i1* %1466
  br i1 %1473, label %then330, label %else331
then330:
  br label %merge332
else331:
  %1474 = load %nyx_string*, %nyx_string** %1401
  %1475 = load %nyx_string*, %nyx_string** %1388
  %1476 = call i1 @nyx_string_ends_with(%nyx_string* %1474, %nyx_string* %1475)
  br i1 %1476, label %then333, label %else334
then333:
  %1477 = load %nyx_string*, %nyx_string** %1401
  %1478 = getelementptr %TestConfig, %TestConfig* %1355, i32 0, i32 4
  store %nyx_string* %1477, %nyx_string** %1478
  br label %merge335
else334:
  %1479 = load %nyx_string*, %nyx_string** %1401
  %1480 = load %nyx_string*, %nyx_string** %1391
  %1481 = call i1 @nyx_string_starts_with(%nyx_string* %1479, %nyx_string* %1480)
  br i1 %1481, label %then336, label %else337
then336:
  %1482 = load %nyx_string*, %nyx_string** %1379
  %1483 = load %nyx_string*, %nyx_string** %1401
  %1484 = call %nyx_string* @nyx_string_concat(%nyx_string* %1482, %nyx_string* %1483)
  %1485 = call i8* @nyx_string_to_cstr(%nyx_string* %1484)
  call void @nyx_print_string(i8* %1485)
  %1486 = load %nyx_string*, %nyx_string** %1385
  %1487 = call i8* @nyx_string_to_cstr(%nyx_string* %1486)
  call void @nyx_print_string(i8* %1487)
  ret i64 1
else337:
  br label %merge338
merge338:
  br label %merge335
merge335:
  br label %merge332
merge332:
  br label %merge327
merge327:
  br label %merge322
merge322:
  br label %merge317
merge317:
  br label %merge312
merge312:
  %1488 = load i64, i64* %1358
  %1489 = add i64 %1488, 1
  store i64 %1489, i64* %1358
  br label %while_cond305
while_end307:
  %1490 = call { i64, i8* }* @nyx_array_new_ptr()
  %1491 = alloca { i64, i8* }*
  store { i64, i8* }* %1490, { i64, i8* }** %1491
  %1492 = getelementptr %TestConfig, %TestConfig* %1355, i32 0, i32 4
  %1493 = load %nyx_string*, %nyx_string** %1492
  %1494 = getelementptr [1 x i8], [1 x i8]* @.str116, i32 0, i32 0
  %1495 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str116.c, i8* %1494, i64 0)
  %1496 = call i1 @nyx_string_equals(%nyx_string* %1493, %nyx_string* %1495)
  %1497 = xor i1 %1496, true
  br i1 %1497, label %then339, label %else340
then339:
  %1498 = getelementptr %TestConfig, %TestConfig* %1355, i32 0, i32 4
  %1499 = load %nyx_string*, %nyx_string** %1498
  %1500 = call i8* @nyx_string_to_cstr(%nyx_string* %1499)
  %1501 = call i1 @nyx_file_exists(i8* %1500)
  %1502 = xor i1 %1501, true
  br i1 %1502, label %then342, label %else343
then342:
  %1503 = getelementptr [24 x i8], [24 x i8]* @.str117, i32 0, i32 0
  %1504 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str117.c, i8* %1503, i64 23)
  %1505 = getelementptr %TestConfig, %TestConfig* %1355, i32 0, i32 4
  %1506 = load %nyx_string*, %nyx_string** %1505
  %1507 = call %nyx_string* @nyx_string_concat(%nyx_string* %1504, %nyx_string* %1506)
  %1508 = call i8* @nyx_string_to_cstr(%nyx_string* %1507)
  call void @nyx_print_string(i8* %1508)
  ret i64 1
else343:
  br label %merge344
merge344:
  %1509 = load { i64, i8* }*, { i64, i8* }** %1491
  %1510 = getelementptr %TestConfig, %TestConfig* %1355, i32 0, i32 4
  %1511 = load %nyx_string*, %nyx_string** %1510
  %1512 = ptrtoint %nyx_string* %1511 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1509, i64 %1512, i64 2)
  br label %merge341
else340:
  %1513 = load %TestConfig, %TestConfig* %1355
  %1514 = call { i64, i8* }* @discover_tests(%TestConfig %1513)
  store { i64, i8* }* %1514, { i64, i8* }** %1491
  br label %merge341
merge341:
  %1515 = load { i64, i8* }*, { i64, i8* }** %1491
  %1516 = call i64 @nyx_array_length({ i64, i8* }* %1515)
  %1517 = icmp eq i64 %1516, 0
  br i1 %1517, label %then345, label %else346
then345:
  %1518 = getelementptr [23 x i8], [23 x i8]* @.str118, i32 0, i32 0
  %1519 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str118.c, i8* %1518, i64 22)
  %1520 = call i8* @nyx_string_to_cstr(%nyx_string* %1519)
  call void @nyx_print_string(i8* %1520)
  %1521 = getelementptr %TestConfig, %TestConfig* %1355, i32 0, i32 2
  %1522 = load %nyx_string*, %nyx_string** %1521
  %1523 = getelementptr [1 x i8], [1 x i8]* @.str119, i32 0, i32 0
  %1524 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str119.c, i8* %1523, i64 0)
  %1525 = call i1 @nyx_string_equals(%nyx_string* %1522, %nyx_string* %1524)
  %1526 = xor i1 %1525, true
  br i1 %1526, label %then348, label %else349
then348:
  %1527 = getelementptr [12 x i8], [12 x i8]* @.str120, i32 0, i32 0
  %1528 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str120.c, i8* %1527, i64 11)
  %1529 = getelementptr %TestConfig, %TestConfig* %1355, i32 0, i32 2
  %1530 = load %nyx_string*, %nyx_string** %1529
  %1531 = call %nyx_string* @nyx_string_concat(%nyx_string* %1528, %nyx_string* %1530)
  %1532 = getelementptr [2 x i8], [2 x i8]* @.str121, i32 0, i32 0
  %1533 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str121.c, i8* %1532, i64 1)
  %1534 = call %nyx_string* @nyx_string_concat(%nyx_string* %1531, %nyx_string* %1533)
  %1535 = call i8* @nyx_string_to_cstr(%nyx_string* %1534)
  call void @nyx_print_string(i8* %1535)
  br label %merge350
else349:
  br label %merge350
merge350:
  %1536 = getelementptr [14 x i8], [14 x i8]* @.str122, i32 0, i32 0
  %1537 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str122.c, i8* %1536, i64 13)
  %1538 = getelementptr %TestConfig, %TestConfig* %1355, i32 0, i32 0
  %1539 = load %nyx_string*, %nyx_string** %1538
  %1540 = call %nyx_string* @nyx_string_concat(%nyx_string* %1537, %nyx_string* %1539)
  %1541 = getelementptr [2 x i8], [2 x i8]* @.str123, i32 0, i32 0
  %1542 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str123.c, i8* %1541, i64 1)
  %1543 = call %nyx_string* @nyx_string_concat(%nyx_string* %1540, %nyx_string* %1542)
  %1544 = call i8* @nyx_string_to_cstr(%nyx_string* %1543)
  call void @nyx_print_string(i8* %1544)
  ret i64 0
else346:
  br label %merge347
merge347:
  %1545 = getelementptr [9 x i8], [9 x i8]* @.str124, i32 0, i32 0
  %1546 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str124.c, i8* %1545, i64 8)
  %1547 = load { i64, i8* }*, { i64, i8* }** %1491
  %1548 = call i64 @nyx_array_length({ i64, i8* }* %1547)
  %1549 = call %nyx_string* @nyx_string_from_int(i64 %1548)
  %1550 = call %nyx_string* @nyx_string_concat(%nyx_string* %1546, %nyx_string* %1549)
  %1551 = getelementptr [14 x i8], [14 x i8]* @.str125, i32 0, i32 0
  %1552 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str125.c, i8* %1551, i64 13)
  %1553 = call %nyx_string* @nyx_string_concat(%nyx_string* %1550, %nyx_string* %1552)
  %1554 = call i8* @nyx_string_to_cstr(%nyx_string* %1553)
  call void @nyx_print_string(i8* %1554)
  %1555 = getelementptr %TestConfig, %TestConfig* %1355, i32 0, i32 2
  %1556 = load %nyx_string*, %nyx_string** %1555
  %1557 = getelementptr [1 x i8], [1 x i8]* @.str126, i32 0, i32 0
  %1558 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str126.c, i8* %1557, i64 0)
  %1559 = call i1 @nyx_string_equals(%nyx_string* %1556, %nyx_string* %1558)
  %1560 = xor i1 %1559, true
  br i1 %1560, label %then351, label %else352
then351:
  %1561 = getelementptr [12 x i8], [12 x i8]* @.str127, i32 0, i32 0
  %1562 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str127.c, i8* %1561, i64 11)
  %1563 = getelementptr %TestConfig, %TestConfig* %1355, i32 0, i32 2
  %1564 = load %nyx_string*, %nyx_string** %1563
  %1565 = call %nyx_string* @nyx_string_concat(%nyx_string* %1562, %nyx_string* %1564)
  %1566 = getelementptr [2 x i8], [2 x i8]* @.str128, i32 0, i32 0
  %1567 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str128.c, i8* %1566, i64 1)
  %1568 = call %nyx_string* @nyx_string_concat(%nyx_string* %1565, %nyx_string* %1567)
  %1569 = call i8* @nyx_string_to_cstr(%nyx_string* %1568)
  call void @nyx_print_string(i8* %1569)
  br label %merge353
else352:
  br label %merge353
merge353:
  %1570 = getelementptr [1 x i8], [1 x i8]* @.str129, i32 0, i32 0
  %1571 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str129.c, i8* %1570, i64 0)
  %1572 = call i8* @nyx_string_to_cstr(%nyx_string* %1571)
  call void @nyx_print_string(i8* %1572)
  %1573 = call { i64, i8* }* @nyx_array_new_ptr()
  %1574 = alloca { i64, i8* }*
  store { i64, i8* }* %1573, { i64, i8* }** %1574
  %1575 = alloca i64
  store i64 0, i64* %1575
  %1576 = alloca i64
  store i64 0, i64* %1576
  %1577 = alloca i64
  store i64 0, i64* %1577
  %1578 = call i8* @llvm.stacksave()
  br label %while_cond354
while_cond354:
  %1579 = load i64, i64* %1577
  %1580 = load { i64, i8* }*, { i64, i8* }** %1491
  %1581 = call i64 @nyx_array_length({ i64, i8* }* %1580)
  %1582 = icmp slt i64 %1579, %1581
  br i1 %1582, label %while_body355, label %while_end356
while_body355:
  call void @llvm.stackrestore(i8* %1578)
  %1583 = load { i64, i8* }*, { i64, i8* }** %1491
  %1584 = load i64, i64* %1577
  %1585 = call i64 @nyx_array_get_checked({ i64, i8* }* %1583, i64 %1584, i64 2)
  %1586 = inttoptr i64 %1585 to %nyx_string*
  %1587 = alloca %nyx_string*
  store %nyx_string* %1586, %nyx_string** %1587
  %1588 = load %nyx_string*, %nyx_string** %1587
  %1589 = call i1 @file_has_test_blocks(%nyx_string* %1588)
  %1590 = xor i1 %1589, true
  br i1 %1590, label %then357, label %else358
then357:
  %1591 = load i64, i64* %1577
  %1592 = add i64 %1591, 1
  store i64 %1592, i64* %1577
  br label %merge359
else358:
  %1593 = load %nyx_string*, %nyx_string** %1587
  %1594 = load %TestConfig, %TestConfig* %1355
  %1595 = call %TestResult @compile_and_run(%nyx_string* %1593, %TestConfig %1594)
  %1596 = alloca %TestResult
  store %TestResult %1595, %TestResult* %1596
  %1597 = load { i64, i8* }*, { i64, i8* }** %1574
  %1598 = load %TestResult, %TestResult* %1596
  %1599 = getelementptr %TestResult, %TestResult* null, i32 1
  %1600 = ptrtoint %TestResult* %1599 to i64
  %1601 = call i8* @GC_malloc(i64 %1600)
  %1602 = bitcast i8* %1601 to %TestResult*
  store %TestResult %1598, %TestResult* %1602
  %1603 = ptrtoint %TestResult* %1602 to i64
  call void @nyx_array_push({ i64, i8* }* %1597, i64 %1603)
  %1604 = load i64, i64* %1575
  %1605 = getelementptr %TestResult, %TestResult* %1596, i32 0, i32 1
  %1606 = load i64, i64* %1605
  %1607 = add i64 %1604, %1606
  store i64 %1607, i64* %1575
  %1608 = load i64, i64* %1576
  %1609 = getelementptr %TestResult, %TestResult* %1596, i32 0, i32 2
  %1610 = load i64, i64* %1609
  %1611 = add i64 %1608, %1610
  store i64 %1611, i64* %1576
  %1612 = load %TestResult, %TestResult* %1596
  %1613 = getelementptr %TestConfig, %TestConfig* %1355, i32 0, i32 3
  %1614 = load i1, i1* %1613
  %1615 = call i64 @print_result(%TestResult %1612, i1 %1614)
  %1616 = load i64, i64* %1577
  %1617 = add i64 %1616, 1
  store i64 %1617, i64* %1577
  br label %merge359
merge359:
  br label %while_cond354
while_end356:
  %1618 = load { i64, i8* }*, { i64, i8* }** %1574
  %1619 = call i64 @nyx_array_length({ i64, i8* }* %1618)
  %1620 = icmp eq i64 %1619, 0
  br i1 %1620, label %then360, label %else361
then360:
  %1621 = getelementptr [35 x i8], [35 x i8]* @.str130, i32 0, i32 0
  %1622 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str130.c, i8* %1621, i64 34)
  %1623 = call i8* @nyx_string_to_cstr(%nyx_string* %1622)
  call void @nyx_print_string(i8* %1623)
  ret i64 0
else361:
  br label %merge362
merge362:
  %1624 = load { i64, i8* }*, { i64, i8* }** %1574
  %1625 = load i64, i64* %1575
  %1626 = load i64, i64* %1576
  %1627 = call i64 @print_summary({ i64, i8* }* %1624, i64 %1625, i64 %1626)
  %1628 = alloca i64
  store i64 0, i64* %1628
  %1629 = alloca i64
  store i64 0, i64* %1629
  %1630 = call i8* @llvm.stacksave()
  br label %while_cond363
while_cond363:
  %1631 = load i64, i64* %1629
  %1632 = load { i64, i8* }*, { i64, i8* }** %1574
  %1633 = call i64 @nyx_array_length({ i64, i8* }* %1632)
  %1634 = icmp slt i64 %1631, %1633
  br i1 %1634, label %while_body364, label %while_end365
while_body364:
  call void @llvm.stackrestore(i8* %1630)
  %1635 = load { i64, i8* }*, { i64, i8* }** %1574
  %1636 = load i64, i64* %1629
  %1637 = call i64 @nyx_array_get({ i64, i8* }* %1635, i64 %1636)
  %1638 = inttoptr i64 %1637 to %TestResult*
  %1639 = load %TestResult, %TestResult* %1638
  %1640 = alloca %TestResult
  store %TestResult %1639, %TestResult* %1640
  %1641 = getelementptr %TestResult, %TestResult* %1640, i32 0, i32 4
  %1642 = load i1, i1* %1641
  %1643 = xor i1 %1642, true
  br i1 %1643, label %then366, label %else367
then366:
  %1644 = load i64, i64* %1628
  %1645 = add i64 %1644, 1
  store i64 %1645, i64* %1628
  br label %merge368
else367:
  br label %merge368
merge368:
  %1646 = load i64, i64* %1629
  %1647 = add i64 %1646, 1
  store i64 %1647, i64* %1629
  br label %while_cond363
while_end365:
  %1648 = alloca i1
  store i1 true, i1* %1648
  %1649 = load i64, i64* %1576
  %1650 = icmp sgt i64 %1649, 0
  br i1 %1650, label %sc_or_end370, label %sc_or_rhs369
sc_or_rhs369:
  %1651 = load i64, i64* %1628
  %1652 = icmp sgt i64 %1651, 0
  store i1 %1652, i1* %1648
  br label %sc_or_end370
sc_or_end370:
  %1653 = load i1, i1* %1648
  br i1 %1653, label %then371, label %else372
then371:
  ret i64 1
else372:
  br label %merge373
merge373:
  ret i64 0
}

; Inicialización de variables globales (llamada automática vía ctor)
define void @__nyx_init_globals() {
entry:
  %1654 = sub i64 0, 9223372036854775808
  store i64 %1654, i64* @INT_MIN
  ret void
}

@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @__nyx_init_globals, i8* null }]

attributes #0 = { returns_twice }

