source_filename = "script.nx"
target triple = "x86_64-pc-linux-gnu"

%Error = type { i64, %nyx_string*, %nyx_string* }

%TestConfig = type { %nyx_string*, i64, %nyx_string*, i1, %nyx_string*, i1, i1, i1 }

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
@.str44 = private unnamed_addr constant [1 x i8] c"\00"
@.str44.c = internal global %nyx_string* null
@.str45 = private unnamed_addr constant [5 x i8] c"-O2 \00"
@.str45.c = internal global %nyx_string* null
@.str46 = private unnamed_addr constant [62 x i8] c"runtime/runtime.c runtime/strings.c runtime/runtime-arrays.c \00"
@.str46.c = internal global %nyx_string* null
@.str47 = private unnamed_addr constant [54 x i8] c"runtime/maps.c runtime/file-io.c runtime/iterators.c \00"
@.str47.c = internal global %nyx_string* null
@.str48 = private unnamed_addr constant [48 x i8] c"runtime/net.c runtime/thread.c runtime/regex.c \00"
@.str48.c = internal global %nyx_string* null
@.str49 = private unnamed_addr constant [47 x i8] c"runtime/time.c runtime/crypto.c runtime/tls.c \00"
@.str49.c = internal global %nyx_string* null
@.str50 = private unnamed_addr constant [67 x i8] c"runtime/scheduler.c runtime/event_loop.c runtime/sqlite_adapter.c \00"
@.str50.c = internal global %nyx_string* null
@.str51 = private unnamed_addr constant [51 x i8] c"runtime/compress.c runtime/random.c runtime/url.c \00"
@.str51.c = internal global %nyx_string* null
@.str52 = private unnamed_addr constant [91 x i8] c"runtime/msgpack.c runtime/websocket.c runtime/persist.c runtime/http2.c runtime/process.c \00"
@.str52.c = internal global %nyx_string* null
@.str53 = private unnamed_addr constant [23 x i8] c"runtime/os/os_posix.c \00"
@.str53.c = internal global %nyx_string* null
@.str54 = private unnamed_addr constant [15 x i8] c"NYX_RT_ARCHIVE\00"
@.str54.c = internal global %nyx_string* null
@.str55 = private unnamed_addr constant [1 x i8] c"\00"
@.str55.c = internal global %nyx_string* null
@.str56 = private unnamed_addr constant [2 x i8] c"/\00"
@.str56.c = internal global %nyx_string* null
@.str57 = private unnamed_addr constant [2 x i8] c"/\00"
@.str57.c = internal global %nyx_string* null
@.str58 = private unnamed_addr constant [1 x i8] c"\00"
@.str58.c = internal global %nyx_string* null
@.str59 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str59.c = internal global %nyx_string* null
@.str60 = private unnamed_addr constant [3 x i8] c"\22 \00"
@.str60.c = internal global %nyx_string* null
@.str61 = private unnamed_addr constant [1 x i8] c"\00"
@.str61.c = internal global %nyx_string* null
@.str62 = private unnamed_addr constant [1 x i8] c"\00"
@.str62.c = internal global %nyx_string* null
@.str63 = private unnamed_addr constant [1 x i8] c"\00"
@.str63.c = internal global %nyx_string* null
@.str64 = private unnamed_addr constant [1 x i8] c"\00"
@.str64.c = internal global %nyx_string* null
@.str65 = private unnamed_addr constant [2 x i8] c"/\00"
@.str65.c = internal global %nyx_string* null
@.str66 = private unnamed_addr constant [20 x i8] c" NYX_COVERAGE_MAP=\22\00"
@.str66.c = internal global %nyx_string* null
@.str67 = private unnamed_addr constant [6 x i8] c".tsv\22\00"
@.str67.c = internal global %nyx_string* null
@.str68 = private unnamed_addr constant [62 x i8] c"-fprofile-generate -Xclang -mllvm -Xclang -disable-preinline \00"
@.str68.c = internal global %nyx_string* null
@.str69 = private unnamed_addr constant [20 x i8] c"LLVM_PROFILE_FILE=\22\00"
@.str69.c = internal global %nyx_string* null
@.str70 = private unnamed_addr constant [11 x i8] c".profraw\22 \00"
@.str70.c = internal global %nyx_string* null
@.str71 = private unnamed_addr constant [20 x i8] c"#!/bin/bash\0aset -e\0a\00"
@.str71.c = internal global %nyx_string* null
@.str72 = private unnamed_addr constant [5 x i8] c"cd \22\00"
@.str72.c = internal global %nyx_string* null
@.str73 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str73.c = internal global %nyx_string* null
@.str74 = private unnamed_addr constant [5 x i8] c"cp \22\00"
@.str74.c = internal global %nyx_string* null
@.str75 = private unnamed_addr constant [2 x i8] c"/\00"
@.str75.c = internal global %nyx_string* null
@.str76 = private unnamed_addr constant [13 x i8] c"\22 script.nx\0a\00"
@.str76.c = internal global %nyx_string* null
@.str77 = private unnamed_addr constant [43 x i8] c"env -u NYX_SKIP_SEMANTIC NYX_PROJECT_DIR=\22\00"
@.str77.c = internal global %nyx_string* null
@.str78 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str78.c = internal global %nyx_string* null
@.str79 = private unnamed_addr constant [20 x i8] c" ./nyx_bootstrap > \00"
@.str79.c = internal global %nyx_string* null
@.str80 = private unnamed_addr constant [7 x i8] c" 2>&1\0a\00"
@.str80.c = internal global %nyx_string* null
@.str81 = private unnamed_addr constant [7 x i8] c"clang \00"
@.str81.c = internal global %nyx_string* null
@.str82 = private unnamed_addr constant [40 x i8] c"-Wno-deprecated-declarations script.ll \00"
@.str82.c = internal global %nyx_string* null
@.str83 = private unnamed_addr constant [44 x i8] c"-lgc -lpthread -ldl -lm -lssl -lcrypto -lz \00"
@.str83.c = internal global %nyx_string* null
@.str84 = private unnamed_addr constant [4 x i8] c"-o \00"
@.str84.c = internal global %nyx_string* null
@.str85 = private unnamed_addr constant [6 x i8] c" 2>> \00"
@.str85.c = internal global %nyx_string* null
@.str86 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str86.c = internal global %nyx_string* null
@.str87 = private unnamed_addr constant [9 x i8] c"timeout \00"
@.str87.c = internal global %nyx_string* null
@.str88 = private unnamed_addr constant [2 x i8] c" \00"
@.str88.c = internal global %nyx_string* null
@.str89 = private unnamed_addr constant [4 x i8] c" > \00"
@.str89.c = internal global %nyx_string* null
@.str90 = private unnamed_addr constant [7 x i8] c" 2>&1\0a\00"
@.str90.c = internal global %nyx_string* null
@.str91 = private unnamed_addr constant [14 x i8] c"EXIT_CODE=$?\0a\00"
@.str91.c = internal global %nyx_string* null
@.str92 = private unnamed_addr constant [7 x i8] c"rm -f \00"
@.str92.c = internal global %nyx_string* null
@.str93 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str93.c = internal global %nyx_string* null
@.str94 = private unnamed_addr constant [27 x i8] c"rm -f script.nx script.ll\0a\00"
@.str94.c = internal global %nyx_string* null
@.str95 = private unnamed_addr constant [17 x i8] c"exit $EXIT_CODE\0a\00"
@.str95.c = internal global %nyx_string* null
@.str96 = private unnamed_addr constant [22 x i8] c"/tmp/nyx_test_script_\00"
@.str96.c = internal global %nyx_string* null
@.str97 = private unnamed_addr constant [4 x i8] c".sh\00"
@.str97.c = internal global %nyx_string* null
@.str98 = private unnamed_addr constant [6 x i8] c"bash \00"
@.str98.c = internal global %nyx_string* null
@.str99 = private unnamed_addr constant [1 x i8] c"\00"
@.str99.c = internal global %nyx_string* null
@.str100 = private unnamed_addr constant [7 x i8] c"rm -f \00"
@.str100.c = internal global %nyx_string* null
@.str101 = private unnamed_addr constant [7 x i8] c"rm -f \00"
@.str101.c = internal global %nyx_string* null
@.str102 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str102.c = internal global %nyx_string* null
@.str103 = private unnamed_addr constant [6 x i8] c"PASS:\00"
@.str103.c = internal global %nyx_string* null
@.str104 = private unnamed_addr constant [6 x i8] c"FAIL:\00"
@.str104.c = internal global %nyx_string* null
@.str105 = private unnamed_addr constant [9 x i8] c"  PASS  \00"
@.str105.c = internal global %nyx_string* null
@.str106 = private unnamed_addr constant [3 x i8] c" (\00"
@.str106.c = internal global %nyx_string* null
@.str107 = private unnamed_addr constant [8 x i8] c" tests)\00"
@.str107.c = internal global %nyx_string* null
@.str108 = private unnamed_addr constant [9 x i8] c"  FAIL  \00"
@.str108.c = internal global %nyx_string* null
@.str109 = private unnamed_addr constant [3 x i8] c" (\00"
@.str109.c = internal global %nyx_string* null
@.str110 = private unnamed_addr constant [10 x i8] c" passed, \00"
@.str110.c = internal global %nyx_string* null
@.str111 = private unnamed_addr constant [9 x i8] c" failed)\00"
@.str111.c = internal global %nyx_string* null
@.str112 = private unnamed_addr constant [1 x i8] c"\00"
@.str112.c = internal global %nyx_string* null
@.str113 = private unnamed_addr constant [36 x i8] c"===================================\00"
@.str113.c = internal global %nyx_string* null
@.str114 = private unnamed_addr constant [11 x i8] c"  Files:  \00"
@.str114.c = internal global %nyx_string* null
@.str115 = private unnamed_addr constant [10 x i8] c" passed, \00"
@.str115.c = internal global %nyx_string* null
@.str116 = private unnamed_addr constant [10 x i8] c" failed (\00"
@.str116.c = internal global %nyx_string* null
@.str117 = private unnamed_addr constant [8 x i8] c" total)\00"
@.str117.c = internal global %nyx_string* null
@.str118 = private unnamed_addr constant [11 x i8] c"  Tests:  \00"
@.str118.c = internal global %nyx_string* null
@.str119 = private unnamed_addr constant [10 x i8] c" passed, \00"
@.str119.c = internal global %nyx_string* null
@.str120 = private unnamed_addr constant [10 x i8] c" failed (\00"
@.str120.c = internal global %nyx_string* null
@.str121 = private unnamed_addr constant [8 x i8] c" total)\00"
@.str121.c = internal global %nyx_string* null
@.str122 = private unnamed_addr constant [27 x i8] c"  Status: ALL TESTS PASSED\00"
@.str122.c = internal global %nyx_string* null
@.str123 = private unnamed_addr constant [28 x i8] c"  Status: SOME TESTS FAILED\00"
@.str123.c = internal global %nyx_string* null
@.str124 = private unnamed_addr constant [36 x i8] c"===================================\00"
@.str124.c = internal global %nyx_string* null
@.str125 = private unnamed_addr constant [28 x i8] c"clang --version 2>/dev/null\00"
@.str125.c = internal global %nyx_string* null
@.str126 = private unnamed_addr constant [9 x i8] c"version \00"
@.str126.c = internal global %nyx_string* null
@.str127 = private unnamed_addr constant [1 x i8] c"\00"
@.str127.c = internal global %nyx_string* null
@.str128 = private unnamed_addr constant [1 x i8] c"\00"
@.str128.c = internal global %nyx_string* null
@.str129 = private unnamed_addr constant [10 x i8] c"test -s \22\00"
@.str129.c = internal global %nyx_string* null
@.str130 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str130.c = internal global %nyx_string* null
@.str131 = private unnamed_addr constant [1 x i8] c"\00"
@.str131.c = internal global %nyx_string* null
@.str132 = private unnamed_addr constant [26 x i8] c"command -v llvm-profdata-\00"
@.str132.c = internal global %nyx_string* null
@.str133 = private unnamed_addr constant [13 x i8] c" 2>/dev/null\00"
@.str133.c = internal global %nyx_string* null
@.str134 = private unnamed_addr constant [1 x i8] c"\00"
@.str134.c = internal global %nyx_string* null
@.str135 = private unnamed_addr constant [37 x i8] c"command -v llvm-profdata 2>/dev/null\00"
@.str135.c = internal global %nyx_string* null
@.str136 = private unnamed_addr constant [2 x i8] c"0\00"
@.str136.c = internal global %nyx_string* null
@.str137 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str137.c = internal global %nyx_string* null
@.str138 = private unnamed_addr constant [1 x i8] c"\00"
@.str138.c = internal global %nyx_string* null
@.str139 = private unnamed_addr constant [3 x i8] c"  \00"
@.str139.c = internal global %nyx_string* null
@.str140 = private unnamed_addr constant [4 x i8] c"   \00"
@.str140.c = internal global %nyx_string* null
@.str141 = private unnamed_addr constant [2 x i8] c":\00"
@.str141.c = internal global %nyx_string* null
@.str142 = private unnamed_addr constant [11 x i8] c"script.nx;\00"
@.str142.c = internal global %nyx_string* null
@.str143 = private unnamed_addr constant [1 x i8] c"\00"
@.str143.c = internal global %nyx_string* null
@.str144 = private unnamed_addr constant [14 x i8] c"Block counts:\00"
@.str144.c = internal global %nyx_string* null
@.str145 = private unnamed_addr constant [2 x i8] c"[\00"
@.str145.c = internal global %nyx_string* null
@.str146 = private unnamed_addr constant [2 x i8] c"]\00"
@.str146.c = internal global %nyx_string* null
@.str147 = private unnamed_addr constant [2 x i8] c",\00"
@.str147.c = internal global %nyx_string* null
@.str148 = private unnamed_addr constant [2 x i8] c"1\00"
@.str148.c = internal global %nyx_string* null
@.str149 = private unnamed_addr constant [4 x i8] c"src\00"
@.str149.c = internal global %nyx_string* null
@.str150 = private unnamed_addr constant [50 x i8] c"find src -name '*.nx' 2>/dev/null | LC_ALL=C sort\00"
@.str150.c = internal global %nyx_string* null
@.str151 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str151.c = internal global %nyx_string* null
@.str152 = private unnamed_addr constant [4 x i8] c".nx\00"
@.str152.c = internal global %nyx_string* null
@.str153 = private unnamed_addr constant [9 x i8] c"_test.nx\00"
@.str153.c = internal global %nyx_string* null
@.str154 = private unnamed_addr constant [1 x i8] c"\00"
@.str154.c = internal global %nyx_string* null
@.str155 = private unnamed_addr constant [9 x i8] c"import \22\00"
@.str155.c = internal global %nyx_string* null
@.str156 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str156.c = internal global %nyx_string* null
@.str157 = private unnamed_addr constant [36 x i8] c"\0afn main() -> int {\0a    return 0\0a}\0a\00"
@.str157.c = internal global %nyx_string* null
@.str158 = private unnamed_addr constant [13 x i8] c"/universe.nx\00"
@.str158.c = internal global %nyx_string* null
@.str159 = private unnamed_addr constant [14 x i8] c"/universe.tsv\00"
@.str159.c = internal global %nyx_string* null
@.str160 = private unnamed_addr constant [13 x i8] c"#!/bin/bash\0a\00"
@.str160.c = internal global %nyx_string* null
@.str161 = private unnamed_addr constant [5 x i8] c"cd \22\00"
@.str161.c = internal global %nyx_string* null
@.str162 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str162.c = internal global %nyx_string* null
@.str163 = private unnamed_addr constant [5 x i8] c"cp \22\00"
@.str163.c = internal global %nyx_string* null
@.str164 = private unnamed_addr constant [25 x i8] c"/universe.nx\22 script.nx\0a\00"
@.str164.c = internal global %nyx_string* null
@.str165 = private unnamed_addr constant [43 x i8] c"env -u NYX_SKIP_SEMANTIC NYX_PROJECT_DIR=\22\00"
@.str165.c = internal global %nyx_string* null
@.str166 = private unnamed_addr constant [21 x i8] c"\22 NYX_COVERAGE_MAP=\22\00"
@.str166.c = internal global %nyx_string* null
@.str167 = private unnamed_addr constant [22 x i8] c"\22 ./nyx_bootstrap > \22\00"
@.str167.c = internal global %nyx_string* null
@.str168 = private unnamed_addr constant [21 x i8] c"/universe.log\22 2>&1\0a\00"
@.str168.c = internal global %nyx_string* null
@.str169 = private unnamed_addr constant [7 x i8] c"RC=$?\0a\00"
@.str169.c = internal global %nyx_string* null
@.str170 = private unnamed_addr constant [27 x i8] c"rm -f script.nx script.ll\0a\00"
@.str170.c = internal global %nyx_string* null
@.str171 = private unnamed_addr constant [10 x i8] c"exit $RC\0a\00"
@.str171.c = internal global %nyx_string* null
@.str172 = private unnamed_addr constant [13 x i8] c"/universe.sh\00"
@.str172.c = internal global %nyx_string* null
@.str173 = private unnamed_addr constant [7 x i8] c"bash \22\00"
@.str173.c = internal global %nyx_string* null
@.str174 = private unnamed_addr constant [14 x i8] c"/universe.sh\22\00"
@.str174.c = internal global %nyx_string* null
@.str175 = private unnamed_addr constant [9 x i8] c"NYX_HOME\00"
@.str175.c = internal global %nyx_string* null
@.str176 = private unnamed_addr constant [4 x i8] c"PWD\00"
@.str176.c = internal global %nyx_string* null
@.str177 = private unnamed_addr constant [1 x i8] c"\00"
@.str177.c = internal global %nyx_string* null
@.str178 = private unnamed_addr constant [36 x i8] c"== Cobertura de funciones (src/) ==\00"
@.str178.c = internal global %nyx_string* null
@.str179 = private unnamed_addr constant [1 x i8] c"\00"
@.str179.c = internal global %nyx_string* null
@.str180 = private unnamed_addr constant [2 x i8] c"/\00"
@.str180.c = internal global %nyx_string* null
@.str181 = private unnamed_addr constant [9 x i8] c".profraw\00"
@.str181.c = internal global %nyx_string* null
@.str182 = private unnamed_addr constant [3 x i8] c" \22\00"
@.str182.c = internal global %nyx_string* null
@.str183 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str183.c = internal global %nyx_string* null
@.str184 = private unnamed_addr constant [2 x i8] c"1\00"
@.str184.c = internal global %nyx_string* null
@.str185 = private unnamed_addr constant [17 x i8] c"/merged.profdata\00"
@.str185.c = internal global %nyx_string* null
@.str186 = private unnamed_addr constant [12 x i8] c" merge -o \22\00"
@.str186.c = internal global %nyx_string* null
@.str187 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str187.c = internal global %nyx_string* null
@.str188 = private unnamed_addr constant [5 x i8] c" > \22\00"
@.str188.c = internal global %nyx_string* null
@.str189 = private unnamed_addr constant [17 x i8] c"/merge.log\22 2>&1\00"
@.str189.c = internal global %nyx_string* null
@.str190 = private unnamed_addr constant [36 x i8] c"  error: llvm-profdata merge fallo:\00"
@.str190.c = internal global %nyx_string* null
@.str191 = private unnamed_addr constant [11 x i8] c"/merge.log\00"
@.str191.c = internal global %nyx_string* null
@.str192 = private unnamed_addr constant [33 x i8] c" show --all-functions --counts \22\00"
@.str192.c = internal global %nyx_string* null
@.str193 = private unnamed_addr constant [6 x i8] c"\22 > \22\00"
@.str193.c = internal global %nyx_string* null
@.str194 = private unnamed_addr constant [16 x i8] c"/show.txt\22 2>&1\00"
@.str194.c = internal global %nyx_string* null
@.str195 = private unnamed_addr constant [10 x i8] c"/show.txt\00"
@.str195.c = internal global %nyx_string* null
@.str196 = private unnamed_addr constant [2 x i8] c"/\00"
@.str196.c = internal global %nyx_string* null
@.str197 = private unnamed_addr constant [5 x i8] c".tsv\00"
@.str197.c = internal global %nyx_string* null
@.str198 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str198.c = internal global %nyx_string* null
@.str199 = private unnamed_addr constant [1 x i8] c"\00"
@.str199.c = internal global %nyx_string* null
@.str200 = private unnamed_addr constant [2 x i8] c"1\00"
@.str200.c = internal global %nyx_string* null
@.str201 = private unnamed_addr constant [5 x i8] c"mono\00"
@.str201.c = internal global %nyx_string* null
@.str202 = private unnamed_addr constant [27 x i8] c"  (no hay modulos en src/)\00"
@.str202.c = internal global %nyx_string* null
@.str203 = private unnamed_addr constant [68 x i8] c"  error: no se pudo listar las funciones de src/ (src/ no compila):\00"
@.str203.c = internal global %nyx_string* null
@.str204 = private unnamed_addr constant [14 x i8] c"/universe.log\00"
@.str204.c = internal global %nyx_string* null
@.str205 = private unnamed_addr constant [14 x i8] c"/universe.log\00"
@.str205.c = internal global %nyx_string* null
@.str206 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str206.c = internal global %nyx_string* null
@.str207 = private unnamed_addr constant [3 x i8] c"fn\00"
@.str207.c = internal global %nyx_string* null
@.str208 = private unnamed_addr constant [7 x i8] c"metodo\00"
@.str208.c = internal global %nyx_string* null
@.str209 = private unnamed_addr constant [6 x i8] c"async\00"
@.str209.c = internal global %nyx_string* null
@.str210 = private unnamed_addr constant [9 x i8] c"generica\00"
@.str210.c = internal global %nyx_string* null
@.str211 = private unnamed_addr constant [5 x i8] c"src/\00"
@.str211.c = internal global %nyx_string* null
@.str212 = private unnamed_addr constant [5 x i8] c"main\00"
@.str212.c = internal global %nyx_string* null
@.str213 = private unnamed_addr constant [3 x i8] c"no\00"
@.str213.c = internal global %nyx_string* null
@.str214 = private unnamed_addr constant [3 x i8] c"si\00"
@.str214.c = internal global %nyx_string* null
@.str215 = private unnamed_addr constant [10 x i8] c"sin_datos\00"
@.str215.c = internal global %nyx_string* null
@.str216 = private unnamed_addr constant [5 x i8] c".nx\09\00"
@.str216.c = internal global %nyx_string* null
@.str217 = private unnamed_addr constant [2 x i8] c"\09\00"
@.str217.c = internal global %nyx_string* null
@.str218 = private unnamed_addr constant [1 x i8] c"\00"
@.str218.c = internal global %nyx_string* null
@.str219 = private unnamed_addr constant [1 x i8] c"\00"
@.str219.c = internal global %nyx_string* null
@.str220 = private unnamed_addr constant [10 x i8] c"sin_datos\00"
@.str220.c = internal global %nyx_string* null
@.str221 = private unnamed_addr constant [2 x i8] c"0\00"
@.str221.c = internal global %nyx_string* null
@.str222 = private unnamed_addr constant [3 x i8] c"si\00"
@.str222.c = internal global %nyx_string* null
@.str223 = private unnamed_addr constant [2 x i8] c"1\00"
@.str223.c = internal global %nyx_string* null
@.str224 = private unnamed_addr constant [5 x i8] c"    \00"
@.str224.c = internal global %nyx_string* null
@.str225 = private unnamed_addr constant [2 x i8] c":\00"
@.str225.c = internal global %nyx_string* null
@.str226 = private unnamed_addr constant [2 x i8] c" \00"
@.str226.c = internal global %nyx_string* null
@.str227 = private unnamed_addr constant [4 x i8] c"FN:\00"
@.str227.c = internal global %nyx_string* null
@.str228 = private unnamed_addr constant [2 x i8] c",\00"
@.str228.c = internal global %nyx_string* null
@.str229 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str229.c = internal global %nyx_string* null
@.str230 = private unnamed_addr constant [6 x i8] c"FNDA:\00"
@.str230.c = internal global %nyx_string* null
@.str231 = private unnamed_addr constant [3 x i8] c"  \00"
@.str231.c = internal global %nyx_string* null
@.str232 = private unnamed_addr constant [3 x i8] c": \00"
@.str232.c = internal global %nyx_string* null
@.str233 = private unnamed_addr constant [2 x i8] c"/\00"
@.str233.c = internal global %nyx_string* null
@.str234 = private unnamed_addr constant [10 x i8] c" llamadas\00"
@.str234.c = internal global %nyx_string* null
@.str235 = private unnamed_addr constant [29 x i8] c" (ninguna prueba lo importa)\00"
@.str235.c = internal global %nyx_string* null
@.str236 = private unnamed_addr constant [3 x i8] c" (\00"
@.str236.c = internal global %nyx_string* null
@.str237 = private unnamed_addr constant [38 x i8] c" sin datos: su prueba no dejo perfil)\00"
@.str237.c = internal global %nyx_string* null
@.str238 = private unnamed_addr constant [4 x i8] c"SF:\00"
@.str238.c = internal global %nyx_string* null
@.str239 = private unnamed_addr constant [5 x i8] c"FNF:\00"
@.str239.c = internal global %nyx_string* null
@.str240 = private unnamed_addr constant [6 x i8] c"\0aFNH:\00"
@.str240.c = internal global %nyx_string* null
@.str241 = private unnamed_addr constant [16 x i8] c"\0aend_of_record\0a\00"
@.str241.c = internal global %nyx_string* null
@.str242 = private unnamed_addr constant [70 x i8] c"  Sin perfil (timeout, crash o no compilo; sus funciones no cuentan):\00"
@.str242.c = internal global %nyx_string* null
@.str243 = private unnamed_addr constant [5 x i8] c"    \00"
@.str243.c = internal global %nyx_string* null
@.str244 = private unnamed_addr constant [10 x i8] c"  Total: \00"
@.str244.c = internal global %nyx_string* null
@.str245 = private unnamed_addr constant [2 x i8] c"/\00"
@.str245.c = internal global %nyx_string* null
@.str246 = private unnamed_addr constant [20 x i8] c" funciones llamadas\00"
@.str246.c = internal global %nyx_string* null
@.str247 = private unnamed_addr constant [11 x i8] c"mkdir -p \22\00"
@.str247.c = internal global %nyx_string* null
@.str248 = private unnamed_addr constant [9 x i8] c"/target\22\00"
@.str248.c = internal global %nyx_string* null
@.str249 = private unnamed_addr constant [22 x i8] c"/target/coverage.lcov\00"
@.str249.c = internal global %nyx_string* null
@.str250 = private unnamed_addr constant [29 x i8] c"  lcov: target/coverage.lcov\00"
@.str250.c = internal global %nyx_string* null
@.str251 = private unnamed_addr constant [115 x i8] c"  Opciones validas: --filter <string>, --verbose (-v), --timeout <seconds>, --release, --coverage, --coverage=lcov\00"
@.str251.c = internal global %nyx_string* null
@.str252 = private unnamed_addr constant [24 x i8] c"=== Nyx Test Runner ===\00"
@.str252.c = internal global %nyx_string* null
@.str253 = private unnamed_addr constant [1 x i8] c"\00"
@.str253.c = internal global %nyx_string* null
@.str254 = private unnamed_addr constant [9 x i8] c"--filter\00"
@.str254.c = internal global %nyx_string* null
@.str255 = private unnamed_addr constant [10 x i8] c"--verbose\00"
@.str255.c = internal global %nyx_string* null
@.str256 = private unnamed_addr constant [3 x i8] c"-v\00"
@.str256.c = internal global %nyx_string* null
@.str257 = private unnamed_addr constant [10 x i8] c"--timeout\00"
@.str257.c = internal global %nyx_string* null
@.str258 = private unnamed_addr constant [10 x i8] c"--release\00"
@.str258.c = internal global %nyx_string* null
@.str259 = private unnamed_addr constant [11 x i8] c"--coverage\00"
@.str259.c = internal global %nyx_string* null
@.str260 = private unnamed_addr constant [16 x i8] c"--coverage=lcov\00"
@.str260.c = internal global %nyx_string* null
@.str261 = private unnamed_addr constant [8 x i8] c"--cover\00"
@.str261.c = internal global %nyx_string* null
@.str262 = private unnamed_addr constant [12 x i8] c"--coverage=\00"
@.str262.c = internal global %nyx_string* null
@.str263 = private unnamed_addr constant [24 x i8] c"error: unknown option: \00"
@.str263.c = internal global %nyx_string* null
@.str264 = private unnamed_addr constant [106 x i8] c"  La cobertura se pide con --coverage (informe de texto) o --coverage=lcov (ademas target/coverage.lcov).\00"
@.str264.c = internal global %nyx_string* null
@.str265 = private unnamed_addr constant [9 x i8] c"--target\00"
@.str265.c = internal global %nyx_string* null
@.str266 = private unnamed_addr constant [10 x i8] c"--target=\00"
@.str266.c = internal global %nyx_string* null
@.str267 = private unnamed_addr constant [2 x i8] c" \00"
@.str267.c = internal global %nyx_string* null
@.str268 = private unnamed_addr constant [4 x i8] c".nx\00"
@.str268.c = internal global %nyx_string* null
@.str269 = private unnamed_addr constant [2 x i8] c"-\00"
@.str269.c = internal global %nyx_string* null
@.str270 = private unnamed_addr constant [1 x i8] c"\00"
@.str270.c = internal global %nyx_string* null
@.str271 = private unnamed_addr constant [47 x i8] c"error: --coverage solo mide el target nativo: \00"
@.str271.c = internal global %nyx_string* null
@.str272 = private unnamed_addr constant [58 x i8] c" no tiene perfiles de LLVM (wasm y Windows quedan fuera).\00"
@.str272.c = internal global %nyx_string* null
@.str273 = private unnamed_addr constant [24 x i8] c"error: unknown option: \00"
@.str273.c = internal global %nyx_string* null
@.str274 = private unnamed_addr constant [1 x i8] c"\00"
@.str274.c = internal global %nyx_string* null
@.str275 = private unnamed_addr constant [1 x i8] c"\00"
@.str275.c = internal global %nyx_string* null
@.str276 = private unnamed_addr constant [1 x i8] c"\00"
@.str276.c = internal global %nyx_string* null
@.str277 = private unnamed_addr constant [5 x i8] c"llvm\00"
@.str277.c = internal global %nyx_string* null
@.str278 = private unnamed_addr constant [1 x i8] c"\00"
@.str278.c = internal global %nyx_string* null
@.str279 = private unnamed_addr constant [6 x i8] c"llvm-\00"
@.str279.c = internal global %nyx_string* null
@.str280 = private unnamed_addr constant [101 x i8] c"error: --coverage necesita llvm-profdata (de la misma version mayor que clang) y no esta en el PATH.\00"
@.str280.c = internal global %nyx_string* null
@.str281 = private unnamed_addr constant [35 x i8] c"  Debian/Ubuntu: sudo apt install \00"
@.str281.c = internal global %nyx_string* null
@.str282 = private unnamed_addr constant [82 x i8] c"  macOS (Homebrew): brew install llvm, y agrega $(brew --prefix llvm)/bin al PATH\00"
@.str282.c = internal global %nyx_string* null
@.str283 = private unnamed_addr constant [82 x i8] c"  Tambien hace falta el runtime de perfiles de compiler-rt (libclang_rt.profile).\00"
@.str283.c = internal global %nyx_string* null
@.str284 = private unnamed_addr constant [30 x i8] c"mktemp -d /tmp/nyx_cov_XXXXXX\00"
@.str284.c = internal global %nyx_string* null
@.str285 = private unnamed_addr constant [1 x i8] c"\00"
@.str285.c = internal global %nyx_string* null
@.str286 = private unnamed_addr constant [55 x i8] c"error: --coverage no pudo crear un directorio temporal\00"
@.str286.c = internal global %nyx_string* null
@.str287 = private unnamed_addr constant [1 x i8] c"\00"
@.str287.c = internal global %nyx_string* null
@.str288 = private unnamed_addr constant [24 x i8] c"error: file not found: \00"
@.str288.c = internal global %nyx_string* null
@.str289 = private unnamed_addr constant [23 x i8] c"  No test files found.\00"
@.str289.c = internal global %nyx_string* null
@.str290 = private unnamed_addr constant [1 x i8] c"\00"
@.str290.c = internal global %nyx_string* null
@.str291 = private unnamed_addr constant [12 x i8] c"  Filter: \22\00"
@.str291.c = internal global %nyx_string* null
@.str292 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str292.c = internal global %nyx_string* null
@.str293 = private unnamed_addr constant [14 x i8] c"  Looked in: \00"
@.str293.c = internal global %nyx_string* null
@.str294 = private unnamed_addr constant [2 x i8] c"/\00"
@.str294.c = internal global %nyx_string* null
@.str295 = private unnamed_addr constant [9 x i8] c"  Found \00"
@.str295.c = internal global %nyx_string* null
@.str296 = private unnamed_addr constant [14 x i8] c" test file(s)\00"
@.str296.c = internal global %nyx_string* null
@.str297 = private unnamed_addr constant [1 x i8] c"\00"
@.str297.c = internal global %nyx_string* null
@.str298 = private unnamed_addr constant [12 x i8] c"  Filter: \22\00"
@.str298.c = internal global %nyx_string* null
@.str299 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str299.c = internal global %nyx_string* null
@.str300 = private unnamed_addr constant [1 x i8] c"\00"
@.str300.c = internal global %nyx_string* null
@.str301 = private unnamed_addr constant [35 x i8] c"  No files with test blocks found.\00"
@.str301.c = internal global %nyx_string* null
@.str302 = private unnamed_addr constant [1 x i8] c"\00"
@.str302.c = internal global %nyx_string* null
@.str303 = private unnamed_addr constant [8 x i8] c"rm -rf \00"
@.str303.c = internal global %nyx_string* null
@.str304 = private unnamed_addr constant [8 x i8] c"rm -rf \00"
@.str304.c = internal global %nyx_string* null
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
  %769 = getelementptr %TestConfig, %TestConfig* %757, i32 0, i32 5
  store i1 0, i1* %769
  %770 = getelementptr %TestConfig, %TestConfig* %757, i32 0, i32 6
  store i1 0, i1* %770
  %771 = getelementptr %TestConfig, %TestConfig* %757, i32 0, i32 7
  store i1 0, i1* %771
  %772 = load %TestConfig, %TestConfig* %757
  %773 = alloca %TestConfig
  store %TestConfig %772, %TestConfig* %773
  %774 = getelementptr [9 x i8], [9 x i8]* @.str21, i32 0, i32 0
  %775 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str21.c, i8* %774, i64 8)
  %776 = call i8* @nyx_string_to_cstr(%nyx_string* %775)
  %777 = call i1 @nyx_file_exists(i8* %776)
  %778 = xor i1 %777, true
  br i1 %778, label %then222, label %else223
then222:
  %779 = load %TestConfig, %TestConfig* %773
  ret %TestConfig %779
else223:
  br label %merge224
merge224:
  %780 = getelementptr [9 x i8], [9 x i8]* @.str22, i32 0, i32 0
  %781 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str22.c, i8* %780, i64 8)
  %782 = call i8* @nyx_string_to_cstr(%nyx_string* %781)
  %783 = call %nyx_string* @nyx_read_file(i8* %782)
  %784 = alloca %nyx_string*
  store %nyx_string* %783, %nyx_string** %784
  %785 = load %nyx_string*, %nyx_string** %784
  %786 = getelementptr [2 x i8], [2 x i8]* @.str23, i32 0, i32 0
  %787 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str23.c, i8* %786, i64 1)
  %788 = call { i64, i8* }* @nyx_string_split(%nyx_string* %785, %nyx_string* %787)
  %789 = alloca { i64, i8* }*
  store { i64, i8* }* %788, { i64, i8* }** %789
  %790 = alloca i1
  store i1 0, i1* %790
  %791 = alloca i64
  store i64 0, i64* %791
  %792 = getelementptr [7 x i8], [7 x i8]* @.str24, i32 0, i32 0
  %793 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str24.c, i8* %792, i64 6)
  %794 = alloca %nyx_string*
  store %nyx_string* %793, %nyx_string** %794
  %795 = getelementptr [2 x i8], [2 x i8]* @.str25, i32 0, i32 0
  %796 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str25.c, i8* %795, i64 1)
  %797 = alloca %nyx_string*
  store %nyx_string* %796, %nyx_string** %797
  %798 = getelementptr [4 x i8], [4 x i8]* @.str26, i32 0, i32 0
  %799 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str26.c, i8* %798, i64 3)
  %800 = alloca %nyx_string*
  store %nyx_string* %799, %nyx_string** %800
  %801 = getelementptr [8 x i8], [8 x i8]* @.str27, i32 0, i32 0
  %802 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str27.c, i8* %801, i64 7)
  %803 = alloca %nyx_string*
  store %nyx_string* %802, %nyx_string** %803
  %804 = call i8* @llvm.stacksave()
  br label %while_cond225
while_cond225:
  %805 = load i64, i64* %791
  %806 = load { i64, i8* }*, { i64, i8* }** %789
  %807 = call i64 @nyx_array_length({ i64, i8* }* %806)
  %808 = icmp slt i64 %805, %807
  br i1 %808, label %while_body226, label %while_end227
while_body226:
  call void @llvm.stackrestore(i8* %804)
  %809 = load { i64, i8* }*, { i64, i8* }** %789
  %810 = load i64, i64* %791
  %811 = call i64 @nyx_array_get_checked({ i64, i8* }* %809, i64 %810, i64 2)
  %812 = inttoptr i64 %811 to %nyx_string*
  %813 = alloca %nyx_string*
  store %nyx_string* %812, %nyx_string** %813
  %814 = load %nyx_string*, %nyx_string** %813
  %815 = call %nyx_string* @nyx_string_trim(%nyx_string* %814)
  %816 = alloca %nyx_string*
  store %nyx_string* %815, %nyx_string** %816
  %817 = load %nyx_string*, %nyx_string** %816
  %818 = load %nyx_string*, %nyx_string** %794
  %819 = call i1 @nyx_string_equals(%nyx_string* %817, %nyx_string* %818)
  br i1 %819, label %then228, label %else229
then228:
  store i1 1, i1* %790
  br label %merge230
else229:
  %820 = load %nyx_string*, %nyx_string** %816
  %821 = load %nyx_string*, %nyx_string** %797
  %822 = call i1 @nyx_string_starts_with(%nyx_string* %820, %nyx_string* %821)
  br i1 %822, label %then231, label %else232
then231:
  store i1 0, i1* %790
  br label %merge233
else232:
  %823 = load i1, i1* %790
  br i1 %823, label %then234, label %else235
then234:
  %824 = load %nyx_string*, %nyx_string** %816
  %825 = call %nyx_string* @parse_toml_key(%nyx_string* %824)
  %826 = alloca %nyx_string*
  store %nyx_string* %825, %nyx_string** %826
  %827 = load %nyx_string*, %nyx_string** %816
  %828 = call %nyx_string* @parse_toml_value(%nyx_string* %827)
  %829 = alloca %nyx_string*
  store %nyx_string* %828, %nyx_string** %829
  %830 = load %nyx_string*, %nyx_string** %826
  %831 = load %nyx_string*, %nyx_string** %800
  %832 = call i1 @nyx_string_equals(%nyx_string* %830, %nyx_string* %831)
  br i1 %832, label %then237, label %else238
then237:
  %833 = load %nyx_string*, %nyx_string** %829
  %834 = getelementptr %TestConfig, %TestConfig* %773, i32 0, i32 0
  store %nyx_string* %833, %nyx_string** %834
  br label %merge239
else238:
  br label %merge239
merge239:
  %835 = load %nyx_string*, %nyx_string** %826
  %836 = load %nyx_string*, %nyx_string** %803
  %837 = call i1 @nyx_string_equals(%nyx_string* %835, %nyx_string* %836)
  br i1 %837, label %then240, label %else241
then240:
  %838 = load %nyx_string*, %nyx_string** %829
  %839 = call i64 @nyx_string_to_int(%nyx_string* %838)
  %840 = getelementptr %TestConfig, %TestConfig* %773, i32 0, i32 1
  store i64 %839, i64* %840
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
  %841 = load i64, i64* %791
  %842 = add i64 %841, 1
  store i64 %842, i64* %791
  br label %while_cond225
while_end227:
  %843 = load %TestConfig, %TestConfig* %773
  ret %TestConfig %843
}

define internal { i64, i8* }* @discover_tests(
%TestConfig %config.param) {
  %config.ptr = alloca %TestConfig
  store %TestConfig %config.param, %TestConfig* %config.ptr
  %844 = call { i64, i8* }* @nyx_array_new_ptr()
  %845 = alloca { i64, i8* }*
  store { i64, i8* }* %844, { i64, i8* }** %845
  %846 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 0
  %847 = load %nyx_string*, %nyx_string** %846
  %848 = call i8* @nyx_string_to_cstr(%nyx_string* %847)
  %849 = call i1 @nyx_file_exists(i8* %848)
  br i1 %849, label %then243, label %else244
then243:
  %850 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 0
  %851 = load %nyx_string*, %nyx_string** %850
  %852 = call i8* @nyx_string_to_cstr(%nyx_string* %851)
  %853 = call { i64, i8* }* @nyx_readdir(i8* %852)
  %854 = alloca { i64, i8* }*
  store { i64, i8* }* %853, { i64, i8* }** %854
  %855 = alloca i64
  store i64 0, i64* %855
  %856 = getelementptr [4 x i8], [4 x i8]* @.str28, i32 0, i32 0
  %857 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str28.c, i8* %856, i64 3)
  %858 = alloca %nyx_string*
  store %nyx_string* %857, %nyx_string** %858
  %859 = getelementptr [2 x i8], [2 x i8]* @.str29, i32 0, i32 0
  %860 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str29.c, i8* %859, i64 1)
  %861 = alloca %nyx_string*
  store %nyx_string* %860, %nyx_string** %861
  %862 = getelementptr [1 x i8], [1 x i8]* @.str30, i32 0, i32 0
  %863 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str30.c, i8* %862, i64 0)
  %864 = alloca %nyx_string*
  store %nyx_string* %863, %nyx_string** %864
  %865 = call i8* @llvm.stacksave()
  br label %while_cond246
while_cond246:
  %866 = load i64, i64* %855
  %867 = load { i64, i8* }*, { i64, i8* }** %854
  %868 = call i64 @nyx_array_length({ i64, i8* }* %867)
  %869 = icmp slt i64 %866, %868
  br i1 %869, label %while_body247, label %while_end248
while_body247:
  call void @llvm.stackrestore(i8* %865)
  %870 = load { i64, i8* }*, { i64, i8* }** %854
  %871 = load i64, i64* %855
  %872 = call i64 @nyx_array_get_checked({ i64, i8* }* %870, i64 %871, i64 2)
  %873 = inttoptr i64 %872 to %nyx_string*
  %874 = alloca %nyx_string*
  store %nyx_string* %873, %nyx_string** %874
  %875 = load %nyx_string*, %nyx_string** %874
  %876 = load %nyx_string*, %nyx_string** %858
  %877 = call i1 @nyx_string_ends_with(%nyx_string* %875, %nyx_string* %876)
  br i1 %877, label %then249, label %else250
then249:
  %878 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 0
  %879 = load %nyx_string*, %nyx_string** %878
  %880 = load %nyx_string*, %nyx_string** %861
  %881 = call %nyx_string* @nyx_string_concat(%nyx_string* %879, %nyx_string* %880)
  %882 = load %nyx_string*, %nyx_string** %874
  %883 = call %nyx_string* @nyx_string_concat(%nyx_string* %881, %nyx_string* %882)
  %884 = alloca %nyx_string*
  store %nyx_string* %883, %nyx_string** %884
  %885 = alloca i1
  store i1 true, i1* %885
  %886 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 2
  %887 = load %nyx_string*, %nyx_string** %886
  %888 = load %nyx_string*, %nyx_string** %864
  %889 = call i1 @nyx_string_equals(%nyx_string* %887, %nyx_string* %888)
  br i1 %889, label %sc_or_end253, label %sc_or_rhs252
sc_or_rhs252:
  %890 = load %nyx_string*, %nyx_string** %874
  %891 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 2
  %892 = load %nyx_string*, %nyx_string** %891
  %893 = call i1 @nyx_string_contains(%nyx_string* %890, %nyx_string* %892)
  store i1 %893, i1* %885
  br label %sc_or_end253
sc_or_end253:
  %894 = load i1, i1* %885
  br i1 %894, label %then254, label %else255
then254:
  %895 = load { i64, i8* }*, { i64, i8* }** %845
  %896 = load %nyx_string*, %nyx_string** %884
  %897 = ptrtoint %nyx_string* %896 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %895, i64 %897, i64 2)
  br label %merge256
else255:
  br label %merge256
merge256:
  br label %merge251
else250:
  br label %merge251
merge251:
  %898 = load i64, i64* %855
  %899 = add i64 %898, 1
  store i64 %899, i64* %855
  br label %while_cond246
while_end248:
  br label %merge245
else244:
  br label %merge245
merge245:
  %900 = getelementptr [4 x i8], [4 x i8]* @.str31, i32 0, i32 0
  %901 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str31.c, i8* %900, i64 3)
  %902 = call i8* @nyx_string_to_cstr(%nyx_string* %901)
  %903 = call i1 @nyx_file_exists(i8* %902)
  br i1 %903, label %then257, label %else258
then257:
  %904 = getelementptr [4 x i8], [4 x i8]* @.str32, i32 0, i32 0
  %905 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str32.c, i8* %904, i64 3)
  %906 = call i8* @nyx_string_to_cstr(%nyx_string* %905)
  %907 = call { i64, i8* }* @nyx_readdir(i8* %906)
  %908 = alloca { i64, i8* }*
  store { i64, i8* }* %907, { i64, i8* }** %908
  %909 = alloca i64
  store i64 0, i64* %909
  %910 = getelementptr [9 x i8], [9 x i8]* @.str33, i32 0, i32 0
  %911 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str33.c, i8* %910, i64 8)
  %912 = alloca %nyx_string*
  store %nyx_string* %911, %nyx_string** %912
  %913 = getelementptr [5 x i8], [5 x i8]* @.str34, i32 0, i32 0
  %914 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str34.c, i8* %913, i64 4)
  %915 = alloca %nyx_string*
  store %nyx_string* %914, %nyx_string** %915
  %916 = getelementptr [1 x i8], [1 x i8]* @.str35, i32 0, i32 0
  %917 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str35.c, i8* %916, i64 0)
  %918 = alloca %nyx_string*
  store %nyx_string* %917, %nyx_string** %918
  %919 = call i8* @llvm.stacksave()
  br label %while_cond260
while_cond260:
  %920 = load i64, i64* %909
  %921 = load { i64, i8* }*, { i64, i8* }** %908
  %922 = call i64 @nyx_array_length({ i64, i8* }* %921)
  %923 = icmp slt i64 %920, %922
  br i1 %923, label %while_body261, label %while_end262
while_body261:
  call void @llvm.stackrestore(i8* %919)
  %924 = load { i64, i8* }*, { i64, i8* }** %908
  %925 = load i64, i64* %909
  %926 = call i64 @nyx_array_get_checked({ i64, i8* }* %924, i64 %925, i64 2)
  %927 = inttoptr i64 %926 to %nyx_string*
  %928 = alloca %nyx_string*
  store %nyx_string* %927, %nyx_string** %928
  %929 = load %nyx_string*, %nyx_string** %928
  %930 = load %nyx_string*, %nyx_string** %912
  %931 = call i1 @nyx_string_ends_with(%nyx_string* %929, %nyx_string* %930)
  br i1 %931, label %then263, label %else264
then263:
  %932 = load %nyx_string*, %nyx_string** %915
  %933 = load %nyx_string*, %nyx_string** %928
  %934 = call %nyx_string* @nyx_string_concat(%nyx_string* %932, %nyx_string* %933)
  %935 = alloca %nyx_string*
  store %nyx_string* %934, %nyx_string** %935
  %936 = alloca i1
  store i1 true, i1* %936
  %937 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 2
  %938 = load %nyx_string*, %nyx_string** %937
  %939 = load %nyx_string*, %nyx_string** %918
  %940 = call i1 @nyx_string_equals(%nyx_string* %938, %nyx_string* %939)
  br i1 %940, label %sc_or_end267, label %sc_or_rhs266
sc_or_rhs266:
  %941 = load %nyx_string*, %nyx_string** %928
  %942 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 2
  %943 = load %nyx_string*, %nyx_string** %942
  %944 = call i1 @nyx_string_contains(%nyx_string* %941, %nyx_string* %943)
  store i1 %944, i1* %936
  br label %sc_or_end267
sc_or_end267:
  %945 = load i1, i1* %936
  br i1 %945, label %then268, label %else269
then268:
  %946 = load { i64, i8* }*, { i64, i8* }** %845
  %947 = load %nyx_string*, %nyx_string** %935
  %948 = ptrtoint %nyx_string* %947 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %946, i64 %948, i64 2)
  br label %merge270
else269:
  br label %merge270
merge270:
  br label %merge265
else264:
  br label %merge265
merge265:
  %949 = load i64, i64* %909
  %950 = add i64 %949, 1
  store i64 %950, i64* %909
  br label %while_cond260
while_end262:
  br label %merge259
else258:
  br label %merge259
merge259:
  %951 = load { i64, i8* }*, { i64, i8* }** %845
  %952 = call { i64, i8* }* @sort_str({ i64, i8* }* %951)
  ret { i64, i8* }* %952
}

define internal i1 @file_has_test_blocks(
%nyx_string* %path.param) {
  %path.ptr = alloca %nyx_string*
  store %nyx_string* %path.param, %nyx_string** %path.ptr
  %953 = load %nyx_string*, %nyx_string** %path.ptr
  %954 = call i8* @nyx_string_to_cstr(%nyx_string* %953)
  %955 = call %nyx_string* @nyx_read_file(i8* %954)
  %956 = alloca %nyx_string*
  store %nyx_string* %955, %nyx_string** %956
  %957 = load %nyx_string*, %nyx_string** %956
  %958 = getelementptr [7 x i8], [7 x i8]* @.str36, i32 0, i32 0
  %959 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str36.c, i8* %958, i64 6)
  %960 = call i1 @nyx_string_contains(%nyx_string* %957, %nyx_string* %959)
  ret i1 %960
}

define internal %TestResult @compile_and_run(
%nyx_string* %file.param, %TestConfig %config.param, %nyx_string* %cov_dir.param, i64 %cov_idx.param) {
  %file.ptr = alloca %nyx_string*
  store %nyx_string* %file.param, %nyx_string** %file.ptr
  %config.ptr = alloca %TestConfig
  store %TestConfig %config.param, %TestConfig* %config.ptr
  %cov_dir.ptr = alloca %nyx_string*
  store %nyx_string* %cov_dir.param, %nyx_string** %cov_dir.ptr
  %cov_idx.ptr = alloca i64
  store i64 %cov_idx.param, i64* %cov_idx.ptr
  %961 = getelementptr [9 x i8], [9 x i8]* @.str37, i32 0, i32 0
  %962 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str37.c, i8* %961, i64 8)
  %963 = call i8* @nyx_string_to_cstr(%nyx_string* %962)
  %964 = call %nyx_string* @nyx_getenv(i8* %963)
  %965 = alloca %nyx_string*
  store %nyx_string* %964, %nyx_string** %965
  %966 = load %nyx_string*, %nyx_string** %965
  %967 = getelementptr [1 x i8], [1 x i8]* @.str38, i32 0, i32 0
  %968 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str38.c, i8* %967, i64 0)
  %969 = call i1 @nyx_string_equals(%nyx_string* %966, %nyx_string* %968)
  br i1 %969, label %then271, label %else272
then271:
  %970 = getelementptr %TestResult, %TestResult* null, i32 1
  %971 = ptrtoint %TestResult* %970 to i64
  %972 = call i8* @GC_malloc(i64 %971)
  %973 = bitcast i8* %972 to %TestResult*
  %974 = load %nyx_string*, %nyx_string** %file.ptr
  %975 = getelementptr %TestResult, %TestResult* %973, i32 0, i32 0
  store %nyx_string* %974, %nyx_string** %975
  %976 = getelementptr %TestResult, %TestResult* %973, i32 0, i32 1
  store i64 0, i64* %976
  %977 = getelementptr %TestResult, %TestResult* %973, i32 0, i32 2
  store i64 0, i64* %977
  %978 = getelementptr [24 x i8], [24 x i8]* @.str39, i32 0, i32 0
  %979 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str39.c, i8* %978, i64 23)
  %980 = getelementptr %TestResult, %TestResult* %973, i32 0, i32 3
  store %nyx_string* %979, %nyx_string** %980
  %981 = getelementptr %TestResult, %TestResult* %973, i32 0, i32 4
  store i1 0, i1* %981
  %982 = load %TestResult, %TestResult* %973
  ret %TestResult %982
else272:
  br label %merge273
merge273:
  %983 = getelementptr [4 x i8], [4 x i8]* @.str40, i32 0, i32 0
  %984 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str40.c, i8* %983, i64 3)
  %985 = call i8* @nyx_string_to_cstr(%nyx_string* %984)
  %986 = call %nyx_string* @nyx_getenv(i8* %985)
  %987 = alloca %nyx_string*
  store %nyx_string* %986, %nyx_string** %987
  %988 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 1
  %989 = load i64, i64* %988
  %990 = call %nyx_string* @nyx_string_from_int(i64 %989)
  %991 = alloca %nyx_string*
  store %nyx_string* %990, %nyx_string** %991
  %992 = getelementptr [19 x i8], [19 x i8]* @.str41, i32 0, i32 0
  %993 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str41.c, i8* %992, i64 18)
  %994 = call i64 @nyx_time_ms()
  %995 = call %nyx_string* @nyx_string_from_int(i64 %994)
  %996 = call %nyx_string* @nyx_string_concat(%nyx_string* %993, %nyx_string* %995)
  %997 = getelementptr [5 x i8], [5 x i8]* @.str42, i32 0, i32 0
  %998 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str42.c, i8* %997, i64 4)
  %999 = call %nyx_string* @nyx_string_concat(%nyx_string* %996, %nyx_string* %998)
  %1000 = alloca %nyx_string*
  store %nyx_string* %999, %nyx_string** %1000
  %1001 = getelementptr [19 x i8], [19 x i8]* @.str43, i32 0, i32 0
  %1002 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str43.c, i8* %1001, i64 18)
  %1003 = call i64 @nyx_time_ms()
  %1004 = call %nyx_string* @nyx_string_from_int(i64 %1003)
  %1005 = call %nyx_string* @nyx_string_concat(%nyx_string* %1002, %nyx_string* %1004)
  %1006 = alloca %nyx_string*
  store %nyx_string* %1005, %nyx_string** %1006
  %1007 = getelementptr [1 x i8], [1 x i8]* @.str44, i32 0, i32 0
  %1008 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str44.c, i8* %1007, i64 0)
  %1009 = alloca %nyx_string*
  store %nyx_string* %1008, %nyx_string** %1009
  %1010 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 7
  %1011 = load i1, i1* %1010
  br i1 %1011, label %then274, label %else275
then274:
  %1012 = getelementptr [5 x i8], [5 x i8]* @.str45, i32 0, i32 0
  %1013 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str45.c, i8* %1012, i64 4)
  store %nyx_string* %1013, %nyx_string** %1009
  br label %merge276
else275:
  br label %merge276
merge276:
  %1014 = getelementptr [62 x i8], [62 x i8]* @.str46, i32 0, i32 0
  %1015 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str46.c, i8* %1014, i64 61)
  %1016 = getelementptr [54 x i8], [54 x i8]* @.str47, i32 0, i32 0
  %1017 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str47.c, i8* %1016, i64 53)
  %1018 = call %nyx_string* @nyx_string_concat(%nyx_string* %1015, %nyx_string* %1017)
  %1019 = getelementptr [48 x i8], [48 x i8]* @.str48, i32 0, i32 0
  %1020 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str48.c, i8* %1019, i64 47)
  %1021 = call %nyx_string* @nyx_string_concat(%nyx_string* %1018, %nyx_string* %1020)
  %1022 = getelementptr [47 x i8], [47 x i8]* @.str49, i32 0, i32 0
  %1023 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str49.c, i8* %1022, i64 46)
  %1024 = call %nyx_string* @nyx_string_concat(%nyx_string* %1021, %nyx_string* %1023)
  %1025 = getelementptr [67 x i8], [67 x i8]* @.str50, i32 0, i32 0
  %1026 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str50.c, i8* %1025, i64 66)
  %1027 = call %nyx_string* @nyx_string_concat(%nyx_string* %1024, %nyx_string* %1026)
  %1028 = getelementptr [51 x i8], [51 x i8]* @.str51, i32 0, i32 0
  %1029 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str51.c, i8* %1028, i64 50)
  %1030 = call %nyx_string* @nyx_string_concat(%nyx_string* %1027, %nyx_string* %1029)
  %1031 = getelementptr [91 x i8], [91 x i8]* @.str52, i32 0, i32 0
  %1032 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str52.c, i8* %1031, i64 90)
  %1033 = call %nyx_string* @nyx_string_concat(%nyx_string* %1030, %nyx_string* %1032)
  %1034 = getelementptr [23 x i8], [23 x i8]* @.str53, i32 0, i32 0
  %1035 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str53.c, i8* %1034, i64 22)
  %1036 = call %nyx_string* @nyx_string_concat(%nyx_string* %1033, %nyx_string* %1035)
  %1037 = alloca %nyx_string*
  store %nyx_string* %1036, %nyx_string** %1037
  %1038 = getelementptr [15 x i8], [15 x i8]* @.str54, i32 0, i32 0
  %1039 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str54.c, i8* %1038, i64 14)
  %1040 = call i8* @nyx_string_to_cstr(%nyx_string* %1039)
  %1041 = call %nyx_string* @nyx_getenv(i8* %1040)
  %1042 = alloca %nyx_string*
  store %nyx_string* %1041, %nyx_string** %1042
  %1043 = alloca i1
  store i1 false, i1* %1043
  %1044 = load %nyx_string*, %nyx_string** %1042
  %1045 = getelementptr [1 x i8], [1 x i8]* @.str55, i32 0, i32 0
  %1046 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str55.c, i8* %1045, i64 0)
  %1047 = call i1 @nyx_string_equals(%nyx_string* %1044, %nyx_string* %1046)
  %1048 = xor i1 %1047, true
  br i1 %1048, label %sc_and_rhs277, label %sc_and_end278
sc_and_rhs277:
  %1049 = load %nyx_string*, %nyx_string** %1042
  %1050 = getelementptr [2 x i8], [2 x i8]* @.str56, i32 0, i32 0
  %1051 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str56.c, i8* %1050, i64 1)
  %1052 = call i1 @nyx_string_starts_with(%nyx_string* %1049, %nyx_string* %1051)
  %1053 = xor i1 %1052, true
  store i1 %1053, i1* %1043
  br label %sc_and_end278
sc_and_end278:
  %1054 = load i1, i1* %1043
  br i1 %1054, label %then279, label %else280
then279:
  %1055 = load %nyx_string*, %nyx_string** %987
  %1056 = getelementptr [2 x i8], [2 x i8]* @.str57, i32 0, i32 0
  %1057 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str57.c, i8* %1056, i64 1)
  %1058 = call %nyx_string* @nyx_string_concat(%nyx_string* %1055, %nyx_string* %1057)
  %1059 = load %nyx_string*, %nyx_string** %1042
  %1060 = call %nyx_string* @nyx_string_concat(%nyx_string* %1058, %nyx_string* %1059)
  store %nyx_string* %1060, %nyx_string** %1042
  br label %merge281
else280:
  br label %merge281
merge281:
  %1061 = alloca i1
  store i1 false, i1* %1061
  %1062 = load %nyx_string*, %nyx_string** %1042
  %1063 = getelementptr [1 x i8], [1 x i8]* @.str58, i32 0, i32 0
  %1064 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str58.c, i8* %1063, i64 0)
  %1065 = call i1 @nyx_string_equals(%nyx_string* %1062, %nyx_string* %1064)
  %1066 = xor i1 %1065, true
  br i1 %1066, label %sc_and_rhs282, label %sc_and_end283
sc_and_rhs282:
  %1067 = load %nyx_string*, %nyx_string** %1042
  %1068 = call i8* @nyx_string_to_cstr(%nyx_string* %1067)
  %1069 = call i1 @nyx_file_exists(i8* %1068)
  store i1 %1069, i1* %1061
  br label %sc_and_end283
sc_and_end283:
  %1070 = load i1, i1* %1061
  br i1 %1070, label %then284, label %else285
then284:
  %1071 = getelementptr [2 x i8], [2 x i8]* @.str59, i32 0, i32 0
  %1072 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str59.c, i8* %1071, i64 1)
  %1073 = load %nyx_string*, %nyx_string** %1042
  %1074 = call %nyx_string* @nyx_string_concat(%nyx_string* %1072, %nyx_string* %1073)
  %1075 = getelementptr [3 x i8], [3 x i8]* @.str60, i32 0, i32 0
  %1076 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str60.c, i8* %1075, i64 2)
  %1077 = call %nyx_string* @nyx_string_concat(%nyx_string* %1074, %nyx_string* %1076)
  store %nyx_string* %1077, %nyx_string** %1037
  br label %merge286
else285:
  br label %merge286
merge286:
  %1078 = getelementptr [1 x i8], [1 x i8]* @.str61, i32 0, i32 0
  %1079 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str61.c, i8* %1078, i64 0)
  %1080 = alloca %nyx_string*
  store %nyx_string* %1079, %nyx_string** %1080
  %1081 = getelementptr [1 x i8], [1 x i8]* @.str62, i32 0, i32 0
  %1082 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str62.c, i8* %1081, i64 0)
  %1083 = alloca %nyx_string*
  store %nyx_string* %1082, %nyx_string** %1083
  %1084 = getelementptr [1 x i8], [1 x i8]* @.str63, i32 0, i32 0
  %1085 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str63.c, i8* %1084, i64 0)
  %1086 = alloca %nyx_string*
  store %nyx_string* %1085, %nyx_string** %1086
  %1087 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %1088 = getelementptr [1 x i8], [1 x i8]* @.str64, i32 0, i32 0
  %1089 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str64.c, i8* %1088, i64 0)
  %1090 = call i1 @nyx_string_equals(%nyx_string* %1087, %nyx_string* %1089)
  %1091 = xor i1 %1090, true
  br i1 %1091, label %then287, label %else288
then287:
  %1092 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %1093 = getelementptr [2 x i8], [2 x i8]* @.str65, i32 0, i32 0
  %1094 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str65.c, i8* %1093, i64 1)
  %1095 = call %nyx_string* @nyx_string_concat(%nyx_string* %1092, %nyx_string* %1094)
  %1096 = load i64, i64* %cov_idx.ptr
  %1097 = call %nyx_string* @nyx_string_from_int(i64 %1096)
  %1098 = call %nyx_string* @nyx_string_concat(%nyx_string* %1095, %nyx_string* %1097)
  %1099 = alloca %nyx_string*
  store %nyx_string* %1098, %nyx_string** %1099
  %1100 = getelementptr [20 x i8], [20 x i8]* @.str66, i32 0, i32 0
  %1101 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str66.c, i8* %1100, i64 19)
  %1102 = load %nyx_string*, %nyx_string** %1099
  %1103 = call %nyx_string* @nyx_string_concat(%nyx_string* %1101, %nyx_string* %1102)
  %1104 = getelementptr [6 x i8], [6 x i8]* @.str67, i32 0, i32 0
  %1105 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str67.c, i8* %1104, i64 5)
  %1106 = call %nyx_string* @nyx_string_concat(%nyx_string* %1103, %nyx_string* %1105)
  store %nyx_string* %1106, %nyx_string** %1080
  %1107 = getelementptr [62 x i8], [62 x i8]* @.str68, i32 0, i32 0
  %1108 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str68.c, i8* %1107, i64 61)
  store %nyx_string* %1108, %nyx_string** %1083
  %1109 = getelementptr [20 x i8], [20 x i8]* @.str69, i32 0, i32 0
  %1110 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str69.c, i8* %1109, i64 19)
  %1111 = load %nyx_string*, %nyx_string** %1099
  %1112 = call %nyx_string* @nyx_string_concat(%nyx_string* %1110, %nyx_string* %1111)
  %1113 = getelementptr [11 x i8], [11 x i8]* @.str70, i32 0, i32 0
  %1114 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str70.c, i8* %1113, i64 10)
  %1115 = call %nyx_string* @nyx_string_concat(%nyx_string* %1112, %nyx_string* %1114)
  store %nyx_string* %1115, %nyx_string** %1086
  br label %merge289
else288:
  br label %merge289
merge289:
  %1116 = getelementptr [20 x i8], [20 x i8]* @.str71, i32 0, i32 0
  %1117 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str71.c, i8* %1116, i64 19)
  %1118 = getelementptr [5 x i8], [5 x i8]* @.str72, i32 0, i32 0
  %1119 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str72.c, i8* %1118, i64 4)
  %1120 = call %nyx_string* @nyx_string_concat(%nyx_string* %1117, %nyx_string* %1119)
  %1121 = load %nyx_string*, %nyx_string** %965
  %1122 = call %nyx_string* @nyx_string_concat(%nyx_string* %1120, %nyx_string* %1121)
  %1123 = getelementptr [3 x i8], [3 x i8]* @.str73, i32 0, i32 0
  %1124 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str73.c, i8* %1123, i64 2)
  %1125 = call %nyx_string* @nyx_string_concat(%nyx_string* %1122, %nyx_string* %1124)
  %1126 = getelementptr [5 x i8], [5 x i8]* @.str74, i32 0, i32 0
  %1127 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str74.c, i8* %1126, i64 4)
  %1128 = call %nyx_string* @nyx_string_concat(%nyx_string* %1125, %nyx_string* %1127)
  %1129 = load %nyx_string*, %nyx_string** %987
  %1130 = call %nyx_string* @nyx_string_concat(%nyx_string* %1128, %nyx_string* %1129)
  %1131 = getelementptr [2 x i8], [2 x i8]* @.str75, i32 0, i32 0
  %1132 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str75.c, i8* %1131, i64 1)
  %1133 = call %nyx_string* @nyx_string_concat(%nyx_string* %1130, %nyx_string* %1132)
  %1134 = load %nyx_string*, %nyx_string** %file.ptr
  %1135 = call %nyx_string* @nyx_string_concat(%nyx_string* %1133, %nyx_string* %1134)
  %1136 = getelementptr [13 x i8], [13 x i8]* @.str76, i32 0, i32 0
  %1137 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str76.c, i8* %1136, i64 12)
  %1138 = call %nyx_string* @nyx_string_concat(%nyx_string* %1135, %nyx_string* %1137)
  %1139 = getelementptr [43 x i8], [43 x i8]* @.str77, i32 0, i32 0
  %1140 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str77.c, i8* %1139, i64 42)
  %1141 = call %nyx_string* @nyx_string_concat(%nyx_string* %1138, %nyx_string* %1140)
  %1142 = load %nyx_string*, %nyx_string** %987
  %1143 = call %nyx_string* @nyx_string_concat(%nyx_string* %1141, %nyx_string* %1142)
  %1144 = getelementptr [2 x i8], [2 x i8]* @.str78, i32 0, i32 0
  %1145 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str78.c, i8* %1144, i64 1)
  %1146 = call %nyx_string* @nyx_string_concat(%nyx_string* %1143, %nyx_string* %1145)
  %1147 = load %nyx_string*, %nyx_string** %1080
  %1148 = call %nyx_string* @nyx_string_concat(%nyx_string* %1146, %nyx_string* %1147)
  %1149 = getelementptr [20 x i8], [20 x i8]* @.str79, i32 0, i32 0
  %1150 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str79.c, i8* %1149, i64 19)
  %1151 = call %nyx_string* @nyx_string_concat(%nyx_string* %1148, %nyx_string* %1150)
  %1152 = load %nyx_string*, %nyx_string** %1000
  %1153 = call %nyx_string* @nyx_string_concat(%nyx_string* %1151, %nyx_string* %1152)
  %1154 = getelementptr [7 x i8], [7 x i8]* @.str80, i32 0, i32 0
  %1155 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str80.c, i8* %1154, i64 6)
  %1156 = call %nyx_string* @nyx_string_concat(%nyx_string* %1153, %nyx_string* %1155)
  %1157 = getelementptr [7 x i8], [7 x i8]* @.str81, i32 0, i32 0
  %1158 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str81.c, i8* %1157, i64 6)
  %1159 = call %nyx_string* @nyx_string_concat(%nyx_string* %1156, %nyx_string* %1158)
  %1160 = load %nyx_string*, %nyx_string** %1009
  %1161 = call %nyx_string* @nyx_string_concat(%nyx_string* %1159, %nyx_string* %1160)
  %1162 = load %nyx_string*, %nyx_string** %1083
  %1163 = call %nyx_string* @nyx_string_concat(%nyx_string* %1161, %nyx_string* %1162)
  %1164 = getelementptr [40 x i8], [40 x i8]* @.str82, i32 0, i32 0
  %1165 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str82.c, i8* %1164, i64 39)
  %1166 = call %nyx_string* @nyx_string_concat(%nyx_string* %1163, %nyx_string* %1165)
  %1167 = load %nyx_string*, %nyx_string** %1037
  %1168 = call %nyx_string* @nyx_string_concat(%nyx_string* %1166, %nyx_string* %1167)
  %1169 = getelementptr [44 x i8], [44 x i8]* @.str83, i32 0, i32 0
  %1170 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str83.c, i8* %1169, i64 43)
  %1171 = call %nyx_string* @nyx_string_concat(%nyx_string* %1168, %nyx_string* %1170)
  %1172 = getelementptr [4 x i8], [4 x i8]* @.str84, i32 0, i32 0
  %1173 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str84.c, i8* %1172, i64 3)
  %1174 = call %nyx_string* @nyx_string_concat(%nyx_string* %1171, %nyx_string* %1173)
  %1175 = load %nyx_string*, %nyx_string** %1006
  %1176 = call %nyx_string* @nyx_string_concat(%nyx_string* %1174, %nyx_string* %1175)
  %1177 = getelementptr [6 x i8], [6 x i8]* @.str85, i32 0, i32 0
  %1178 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str85.c, i8* %1177, i64 5)
  %1179 = call %nyx_string* @nyx_string_concat(%nyx_string* %1176, %nyx_string* %1178)
  %1180 = load %nyx_string*, %nyx_string** %1000
  %1181 = call %nyx_string* @nyx_string_concat(%nyx_string* %1179, %nyx_string* %1180)
  %1182 = getelementptr [2 x i8], [2 x i8]* @.str86, i32 0, i32 0
  %1183 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str86.c, i8* %1182, i64 1)
  %1184 = call %nyx_string* @nyx_string_concat(%nyx_string* %1181, %nyx_string* %1183)
  %1185 = load %nyx_string*, %nyx_string** %1086
  %1186 = call %nyx_string* @nyx_string_concat(%nyx_string* %1184, %nyx_string* %1185)
  %1187 = getelementptr [9 x i8], [9 x i8]* @.str87, i32 0, i32 0
  %1188 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str87.c, i8* %1187, i64 8)
  %1189 = call %nyx_string* @nyx_string_concat(%nyx_string* %1186, %nyx_string* %1188)
  %1190 = load %nyx_string*, %nyx_string** %991
  %1191 = call %nyx_string* @nyx_string_concat(%nyx_string* %1189, %nyx_string* %1190)
  %1192 = getelementptr [2 x i8], [2 x i8]* @.str88, i32 0, i32 0
  %1193 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str88.c, i8* %1192, i64 1)
  %1194 = call %nyx_string* @nyx_string_concat(%nyx_string* %1191, %nyx_string* %1193)
  %1195 = load %nyx_string*, %nyx_string** %1006
  %1196 = call %nyx_string* @nyx_string_concat(%nyx_string* %1194, %nyx_string* %1195)
  %1197 = getelementptr [4 x i8], [4 x i8]* @.str89, i32 0, i32 0
  %1198 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str89.c, i8* %1197, i64 3)
  %1199 = call %nyx_string* @nyx_string_concat(%nyx_string* %1196, %nyx_string* %1198)
  %1200 = load %nyx_string*, %nyx_string** %1000
  %1201 = call %nyx_string* @nyx_string_concat(%nyx_string* %1199, %nyx_string* %1200)
  %1202 = getelementptr [7 x i8], [7 x i8]* @.str90, i32 0, i32 0
  %1203 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str90.c, i8* %1202, i64 6)
  %1204 = call %nyx_string* @nyx_string_concat(%nyx_string* %1201, %nyx_string* %1203)
  %1205 = getelementptr [14 x i8], [14 x i8]* @.str91, i32 0, i32 0
  %1206 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str91.c, i8* %1205, i64 13)
  %1207 = call %nyx_string* @nyx_string_concat(%nyx_string* %1204, %nyx_string* %1206)
  %1208 = getelementptr [7 x i8], [7 x i8]* @.str92, i32 0, i32 0
  %1209 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str92.c, i8* %1208, i64 6)
  %1210 = call %nyx_string* @nyx_string_concat(%nyx_string* %1207, %nyx_string* %1209)
  %1211 = load %nyx_string*, %nyx_string** %1006
  %1212 = call %nyx_string* @nyx_string_concat(%nyx_string* %1210, %nyx_string* %1211)
  %1213 = getelementptr [2 x i8], [2 x i8]* @.str93, i32 0, i32 0
  %1214 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str93.c, i8* %1213, i64 1)
  %1215 = call %nyx_string* @nyx_string_concat(%nyx_string* %1212, %nyx_string* %1214)
  %1216 = getelementptr [27 x i8], [27 x i8]* @.str94, i32 0, i32 0
  %1217 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str94.c, i8* %1216, i64 26)
  %1218 = call %nyx_string* @nyx_string_concat(%nyx_string* %1215, %nyx_string* %1217)
  %1219 = getelementptr [17 x i8], [17 x i8]* @.str95, i32 0, i32 0
  %1220 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str95.c, i8* %1219, i64 16)
  %1221 = call %nyx_string* @nyx_string_concat(%nyx_string* %1218, %nyx_string* %1220)
  %1222 = alloca %nyx_string*
  store %nyx_string* %1221, %nyx_string** %1222
  %1223 = getelementptr [22 x i8], [22 x i8]* @.str96, i32 0, i32 0
  %1224 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str96.c, i8* %1223, i64 21)
  %1225 = call i64 @nyx_time_ms()
  %1226 = call %nyx_string* @nyx_string_from_int(i64 %1225)
  %1227 = call %nyx_string* @nyx_string_concat(%nyx_string* %1224, %nyx_string* %1226)
  %1228 = getelementptr [4 x i8], [4 x i8]* @.str97, i32 0, i32 0
  %1229 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str97.c, i8* %1228, i64 3)
  %1230 = call %nyx_string* @nyx_string_concat(%nyx_string* %1227, %nyx_string* %1229)
  %1231 = alloca %nyx_string*
  store %nyx_string* %1230, %nyx_string** %1231
  %1232 = load %nyx_string*, %nyx_string** %1231
  %1233 = load %nyx_string*, %nyx_string** %1222
  %1234 = call i8* @nyx_string_to_cstr(%nyx_string* %1232)
  %1235 = call i1 @nyx_write_file_safe(i8* %1234, %nyx_string* %1233)
  %1236 = getelementptr [6 x i8], [6 x i8]* @.str98, i32 0, i32 0
  %1237 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str98.c, i8* %1236, i64 5)
  %1238 = load %nyx_string*, %nyx_string** %1231
  %1239 = call %nyx_string* @nyx_string_concat(%nyx_string* %1237, %nyx_string* %1238)
  %1240 = call i8* @nyx_string_to_cstr(%nyx_string* %1239)
  %1241 = call i64 @nyx_exec_code(i8* %1240)
  %1242 = alloca i64
  store i64 %1241, i64* %1242
  %1243 = getelementptr [1 x i8], [1 x i8]* @.str99, i32 0, i32 0
  %1244 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str99.c, i8* %1243, i64 0)
  %1245 = alloca %nyx_string*
  store %nyx_string* %1244, %nyx_string** %1245
  %1246 = load %nyx_string*, %nyx_string** %1000
  %1247 = call i8* @nyx_string_to_cstr(%nyx_string* %1246)
  %1248 = call i1 @nyx_file_exists(i8* %1247)
  br i1 %1248, label %then290, label %else291
then290:
  %1249 = load %nyx_string*, %nyx_string** %1000
  %1250 = call i8* @nyx_string_to_cstr(%nyx_string* %1249)
  %1251 = call %nyx_string* @nyx_read_file(i8* %1250)
  store %nyx_string* %1251, %nyx_string** %1245
  %1252 = getelementptr [7 x i8], [7 x i8]* @.str100, i32 0, i32 0
  %1253 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str100.c, i8* %1252, i64 6)
  %1254 = load %nyx_string*, %nyx_string** %1000
  %1255 = call %nyx_string* @nyx_string_concat(%nyx_string* %1253, %nyx_string* %1254)
  %1256 = call i8* @nyx_string_to_cstr(%nyx_string* %1255)
  %1257 = call %nyx_string* @nyx_exec(i8* %1256)
  br label %merge292
else291:
  br label %merge292
merge292:
  %1258 = getelementptr [7 x i8], [7 x i8]* @.str101, i32 0, i32 0
  %1259 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str101.c, i8* %1258, i64 6)
  %1260 = load %nyx_string*, %nyx_string** %1231
  %1261 = call %nyx_string* @nyx_string_concat(%nyx_string* %1259, %nyx_string* %1260)
  %1262 = call i8* @nyx_string_to_cstr(%nyx_string* %1261)
  %1263 = call %nyx_string* @nyx_exec(i8* %1262)
  %1264 = alloca i64
  store i64 0, i64* %1264
  %1265 = alloca i64
  store i64 0, i64* %1265
  %1266 = load %nyx_string*, %nyx_string** %1245
  %1267 = getelementptr [2 x i8], [2 x i8]* @.str102, i32 0, i32 0
  %1268 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str102.c, i8* %1267, i64 1)
  %1269 = call { i64, i8* }* @nyx_string_split(%nyx_string* %1266, %nyx_string* %1268)
  %1270 = alloca { i64, i8* }*
  store { i64, i8* }* %1269, { i64, i8* }** %1270
  %1271 = alloca i64
  store i64 0, i64* %1271
  %1272 = getelementptr [6 x i8], [6 x i8]* @.str103, i32 0, i32 0
  %1273 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str103.c, i8* %1272, i64 5)
  %1274 = alloca %nyx_string*
  store %nyx_string* %1273, %nyx_string** %1274
  %1275 = getelementptr [6 x i8], [6 x i8]* @.str104, i32 0, i32 0
  %1276 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str104.c, i8* %1275, i64 5)
  %1277 = alloca %nyx_string*
  store %nyx_string* %1276, %nyx_string** %1277
  %1278 = call i8* @llvm.stacksave()
  br label %while_cond293
while_cond293:
  %1279 = load i64, i64* %1271
  %1280 = load { i64, i8* }*, { i64, i8* }** %1270
  %1281 = call i64 @nyx_array_length({ i64, i8* }* %1280)
  %1282 = icmp slt i64 %1279, %1281
  br i1 %1282, label %while_body294, label %while_end295
while_body294:
  call void @llvm.stackrestore(i8* %1278)
  %1283 = load { i64, i8* }*, { i64, i8* }** %1270
  %1284 = load i64, i64* %1271
  %1285 = call i64 @nyx_array_get_checked({ i64, i8* }* %1283, i64 %1284, i64 2)
  %1286 = inttoptr i64 %1285 to %nyx_string*
  %1287 = alloca %nyx_string*
  store %nyx_string* %1286, %nyx_string** %1287
  %1288 = load %nyx_string*, %nyx_string** %1287
  %1289 = load %nyx_string*, %nyx_string** %1274
  %1290 = call i1 @nyx_string_contains(%nyx_string* %1288, %nyx_string* %1289)
  br i1 %1290, label %then296, label %else297
then296:
  %1291 = load i64, i64* %1264
  %1292 = add i64 %1291, 1
  store i64 %1292, i64* %1264
  br label %merge298
else297:
  %1293 = load %nyx_string*, %nyx_string** %1287
  %1294 = load %nyx_string*, %nyx_string** %1277
  %1295 = call i1 @nyx_string_contains(%nyx_string* %1293, %nyx_string* %1294)
  br i1 %1295, label %then299, label %else300
then299:
  %1296 = load i64, i64* %1265
  %1297 = add i64 %1296, 1
  store i64 %1297, i64* %1265
  br label %merge301
else300:
  br label %merge301
merge301:
  br label %merge298
merge298:
  %1298 = load i64, i64* %1271
  %1299 = add i64 %1298, 1
  store i64 %1299, i64* %1271
  br label %while_cond293
while_end295:
  %1300 = getelementptr %TestResult, %TestResult* null, i32 1
  %1301 = ptrtoint %TestResult* %1300 to i64
  %1302 = call i8* @GC_malloc(i64 %1301)
  %1303 = bitcast i8* %1302 to %TestResult*
  %1304 = load %nyx_string*, %nyx_string** %file.ptr
  %1305 = getelementptr %TestResult, %TestResult* %1303, i32 0, i32 0
  store %nyx_string* %1304, %nyx_string** %1305
  %1306 = load i64, i64* %1264
  %1307 = getelementptr %TestResult, %TestResult* %1303, i32 0, i32 1
  store i64 %1306, i64* %1307
  %1308 = load i64, i64* %1265
  %1309 = getelementptr %TestResult, %TestResult* %1303, i32 0, i32 2
  store i64 %1308, i64* %1309
  %1310 = load %nyx_string*, %nyx_string** %1245
  %1311 = getelementptr %TestResult, %TestResult* %1303, i32 0, i32 3
  store %nyx_string* %1310, %nyx_string** %1311
  %1312 = alloca i1
  store i1 false, i1* %1312
  %1313 = load i64, i64* %1242
  %1314 = icmp eq i64 %1313, 0
  br i1 %1314, label %sc_and_rhs302, label %sc_and_end303
sc_and_rhs302:
  %1315 = load i64, i64* %1265
  %1316 = icmp eq i64 %1315, 0
  store i1 %1316, i1* %1312
  br label %sc_and_end303
sc_and_end303:
  %1317 = load i1, i1* %1312
  %1318 = getelementptr %TestResult, %TestResult* %1303, i32 0, i32 4
  store i1 %1317, i1* %1318
  %1319 = load %TestResult, %TestResult* %1303
  ret %TestResult %1319
}

define internal i64 @print_result(
%TestResult %result.param, i1 %verbose.param) {
  %result.ptr = alloca %TestResult
  store %TestResult %result.param, %TestResult* %result.ptr
  %verbose.ptr = alloca i1
  store i1 %verbose.param, i1* %verbose.ptr
  %1320 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 4
  %1321 = load i1, i1* %1320
  br i1 %1321, label %then304, label %else305
then304:
  %1322 = getelementptr [9 x i8], [9 x i8]* @.str105, i32 0, i32 0
  %1323 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str105.c, i8* %1322, i64 8)
  %1324 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 0
  %1325 = load %nyx_string*, %nyx_string** %1324
  %1326 = call %nyx_string* @nyx_string_concat(%nyx_string* %1323, %nyx_string* %1325)
  %1327 = getelementptr [3 x i8], [3 x i8]* @.str106, i32 0, i32 0
  %1328 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str106.c, i8* %1327, i64 2)
  %1329 = call %nyx_string* @nyx_string_concat(%nyx_string* %1326, %nyx_string* %1328)
  %1330 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 1
  %1331 = load i64, i64* %1330
  %1332 = call %nyx_string* @nyx_string_from_int(i64 %1331)
  %1333 = call %nyx_string* @nyx_string_concat(%nyx_string* %1329, %nyx_string* %1332)
  %1334 = getelementptr [8 x i8], [8 x i8]* @.str107, i32 0, i32 0
  %1335 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str107.c, i8* %1334, i64 7)
  %1336 = call %nyx_string* @nyx_string_concat(%nyx_string* %1333, %nyx_string* %1335)
  %1337 = call i8* @nyx_string_to_cstr(%nyx_string* %1336)
  call void @nyx_print_string(i8* %1337)
  %1338 = load i1, i1* %verbose.ptr
  br i1 %1338, label %then307, label %else308
then307:
  %1339 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 3
  %1340 = load %nyx_string*, %nyx_string** %1339
  %1341 = call i8* @nyx_string_to_cstr(%nyx_string* %1340)
  call void @nyx_print_string(i8* %1341)
  br label %merge309
else308:
  br label %merge309
merge309:
  br label %merge306
else305:
  %1342 = getelementptr [9 x i8], [9 x i8]* @.str108, i32 0, i32 0
  %1343 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str108.c, i8* %1342, i64 8)
  %1344 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 0
  %1345 = load %nyx_string*, %nyx_string** %1344
  %1346 = call %nyx_string* @nyx_string_concat(%nyx_string* %1343, %nyx_string* %1345)
  %1347 = getelementptr [3 x i8], [3 x i8]* @.str109, i32 0, i32 0
  %1348 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str109.c, i8* %1347, i64 2)
  %1349 = call %nyx_string* @nyx_string_concat(%nyx_string* %1346, %nyx_string* %1348)
  %1350 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 1
  %1351 = load i64, i64* %1350
  %1352 = call %nyx_string* @nyx_string_from_int(i64 %1351)
  %1353 = call %nyx_string* @nyx_string_concat(%nyx_string* %1349, %nyx_string* %1352)
  %1354 = getelementptr [10 x i8], [10 x i8]* @.str110, i32 0, i32 0
  %1355 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str110.c, i8* %1354, i64 9)
  %1356 = call %nyx_string* @nyx_string_concat(%nyx_string* %1353, %nyx_string* %1355)
  %1357 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 2
  %1358 = load i64, i64* %1357
  %1359 = call %nyx_string* @nyx_string_from_int(i64 %1358)
  %1360 = call %nyx_string* @nyx_string_concat(%nyx_string* %1356, %nyx_string* %1359)
  %1361 = getelementptr [9 x i8], [9 x i8]* @.str111, i32 0, i32 0
  %1362 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str111.c, i8* %1361, i64 8)
  %1363 = call %nyx_string* @nyx_string_concat(%nyx_string* %1360, %nyx_string* %1362)
  %1364 = call i8* @nyx_string_to_cstr(%nyx_string* %1363)
  call void @nyx_print_string(i8* %1364)
  %1365 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 3
  %1366 = load %nyx_string*, %nyx_string** %1365
  %1367 = call i8* @nyx_string_to_cstr(%nyx_string* %1366)
  call void @nyx_print_string(i8* %1367)
  br label %merge306
merge306:
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
  %1368 = getelementptr [1 x i8], [1 x i8]* @.str112, i32 0, i32 0
  %1369 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str112.c, i8* %1368, i64 0)
  %1370 = call i8* @nyx_string_to_cstr(%nyx_string* %1369)
  call void @nyx_print_string(i8* %1370)
  %1371 = getelementptr [36 x i8], [36 x i8]* @.str113, i32 0, i32 0
  %1372 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str113.c, i8* %1371, i64 35)
  %1373 = call i8* @nyx_string_to_cstr(%nyx_string* %1372)
  call void @nyx_print_string(i8* %1373)
  %1374 = alloca i64
  store i64 0, i64* %1374
  %1375 = alloca i64
  store i64 0, i64* %1375
  %1376 = alloca i64
  store i64 0, i64* %1376
  %1377 = call i8* @llvm.stacksave()
  br label %while_cond310
while_cond310:
  %1378 = load i64, i64* %1376
  %1379 = load { i64, i8* }*, { i64, i8* }** %results.ptr
  %1380 = call i64 @nyx_array_length({ i64, i8* }* %1379)
  %1381 = icmp slt i64 %1378, %1380
  br i1 %1381, label %while_body311, label %while_end312
while_body311:
  call void @llvm.stackrestore(i8* %1377)
  %1382 = load { i64, i8* }*, { i64, i8* }** %results.ptr
  %1383 = load i64, i64* %1376
  %1384 = call i64 @nyx_array_get({ i64, i8* }* %1382, i64 %1383)
  %1385 = inttoptr i64 %1384 to %TestResult*
  %1386 = load %TestResult, %TestResult* %1385
  %1387 = alloca %TestResult
  store %TestResult %1386, %TestResult* %1387
  %1388 = getelementptr %TestResult, %TestResult* %1387, i32 0, i32 4
  %1389 = load i1, i1* %1388
  br i1 %1389, label %then313, label %else314
then313:
  %1390 = load i64, i64* %1374
  %1391 = add i64 %1390, 1
  store i64 %1391, i64* %1374
  br label %merge315
else314:
  %1392 = load i64, i64* %1375
  %1393 = add i64 %1392, 1
  store i64 %1393, i64* %1375
  br label %merge315
merge315:
  %1394 = load i64, i64* %1376
  %1395 = add i64 %1394, 1
  store i64 %1395, i64* %1376
  br label %while_cond310
while_end312:
  %1396 = getelementptr [11 x i8], [11 x i8]* @.str114, i32 0, i32 0
  %1397 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str114.c, i8* %1396, i64 10)
  %1398 = load i64, i64* %1374
  %1399 = call %nyx_string* @nyx_string_from_int(i64 %1398)
  %1400 = call %nyx_string* @nyx_string_concat(%nyx_string* %1397, %nyx_string* %1399)
  %1401 = getelementptr [10 x i8], [10 x i8]* @.str115, i32 0, i32 0
  %1402 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str115.c, i8* %1401, i64 9)
  %1403 = call %nyx_string* @nyx_string_concat(%nyx_string* %1400, %nyx_string* %1402)
  %1404 = load i64, i64* %1375
  %1405 = call %nyx_string* @nyx_string_from_int(i64 %1404)
  %1406 = call %nyx_string* @nyx_string_concat(%nyx_string* %1403, %nyx_string* %1405)
  %1407 = getelementptr [10 x i8], [10 x i8]* @.str116, i32 0, i32 0
  %1408 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str116.c, i8* %1407, i64 9)
  %1409 = call %nyx_string* @nyx_string_concat(%nyx_string* %1406, %nyx_string* %1408)
  %1410 = load { i64, i8* }*, { i64, i8* }** %results.ptr
  %1411 = call i64 @nyx_array_length({ i64, i8* }* %1410)
  %1412 = call %nyx_string* @nyx_string_from_int(i64 %1411)
  %1413 = call %nyx_string* @nyx_string_concat(%nyx_string* %1409, %nyx_string* %1412)
  %1414 = getelementptr [8 x i8], [8 x i8]* @.str117, i32 0, i32 0
  %1415 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str117.c, i8* %1414, i64 7)
  %1416 = call %nyx_string* @nyx_string_concat(%nyx_string* %1413, %nyx_string* %1415)
  %1417 = call i8* @nyx_string_to_cstr(%nyx_string* %1416)
  call void @nyx_print_string(i8* %1417)
  %1418 = getelementptr [11 x i8], [11 x i8]* @.str118, i32 0, i32 0
  %1419 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str118.c, i8* %1418, i64 10)
  %1420 = load i64, i64* %total_passed.ptr
  %1421 = call %nyx_string* @nyx_string_from_int(i64 %1420)
  %1422 = call %nyx_string* @nyx_string_concat(%nyx_string* %1419, %nyx_string* %1421)
  %1423 = getelementptr [10 x i8], [10 x i8]* @.str119, i32 0, i32 0
  %1424 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str119.c, i8* %1423, i64 9)
  %1425 = call %nyx_string* @nyx_string_concat(%nyx_string* %1422, %nyx_string* %1424)
  %1426 = load i64, i64* %total_failed.ptr
  %1427 = call %nyx_string* @nyx_string_from_int(i64 %1426)
  %1428 = call %nyx_string* @nyx_string_concat(%nyx_string* %1425, %nyx_string* %1427)
  %1429 = getelementptr [10 x i8], [10 x i8]* @.str120, i32 0, i32 0
  %1430 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str120.c, i8* %1429, i64 9)
  %1431 = call %nyx_string* @nyx_string_concat(%nyx_string* %1428, %nyx_string* %1430)
  %1432 = load i64, i64* %total_passed.ptr
  %1433 = load i64, i64* %total_failed.ptr
  %1434 = add i64 %1432, %1433
  %1435 = call %nyx_string* @nyx_string_from_int(i64 %1434)
  %1436 = call %nyx_string* @nyx_string_concat(%nyx_string* %1431, %nyx_string* %1435)
  %1437 = getelementptr [8 x i8], [8 x i8]* @.str121, i32 0, i32 0
  %1438 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str121.c, i8* %1437, i64 7)
  %1439 = call %nyx_string* @nyx_string_concat(%nyx_string* %1436, %nyx_string* %1438)
  %1440 = call i8* @nyx_string_to_cstr(%nyx_string* %1439)
  call void @nyx_print_string(i8* %1440)
  %1441 = alloca i1
  store i1 false, i1* %1441
  %1442 = load i64, i64* %total_failed.ptr
  %1443 = icmp eq i64 %1442, 0
  br i1 %1443, label %sc_and_rhs316, label %sc_and_end317
sc_and_rhs316:
  %1444 = load i64, i64* %1375
  %1445 = icmp eq i64 %1444, 0
  store i1 %1445, i1* %1441
  br label %sc_and_end317
sc_and_end317:
  %1446 = load i1, i1* %1441
  br i1 %1446, label %then318, label %else319
then318:
  %1447 = getelementptr [27 x i8], [27 x i8]* @.str122, i32 0, i32 0
  %1448 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str122.c, i8* %1447, i64 26)
  %1449 = call i8* @nyx_string_to_cstr(%nyx_string* %1448)
  call void @nyx_print_string(i8* %1449)
  br label %merge320
else319:
  %1450 = getelementptr [28 x i8], [28 x i8]* @.str123, i32 0, i32 0
  %1451 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str123.c, i8* %1450, i64 27)
  %1452 = call i8* @nyx_string_to_cstr(%nyx_string* %1451)
  call void @nyx_print_string(i8* %1452)
  br label %merge320
merge320:
  %1453 = getelementptr [36 x i8], [36 x i8]* @.str124, i32 0, i32 0
  %1454 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str124.c, i8* %1453, i64 35)
  %1455 = call i8* @nyx_string_to_cstr(%nyx_string* %1454)
  call void @nyx_print_string(i8* %1455)
  ret i64 0
}

define internal %nyx_string* @cov_clang_major(
) {
  %1456 = getelementptr [28 x i8], [28 x i8]* @.str125, i32 0, i32 0
  %1457 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str125.c, i8* %1456, i64 27)
  %1458 = call i8* @nyx_string_to_cstr(%nyx_string* %1457)
  %1459 = call %nyx_string* @nyx_exec(i8* %1458)
  %1460 = alloca %nyx_string*
  store %nyx_string* %1459, %nyx_string** %1460
  %1461 = load %nyx_string*, %nyx_string** %1460
  %1462 = getelementptr [9 x i8], [9 x i8]* @.str126, i32 0, i32 0
  %1463 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str126.c, i8* %1462, i64 8)
  %1464 = call i64 @nyx_string_index_of(%nyx_string* %1461, %nyx_string* %1463)
  %1465 = alloca i64
  store i64 %1464, i64* %1465
  %1466 = load i64, i64* %1465
  %1467 = icmp slt i64 %1466, 0
  br i1 %1467, label %then321, label %else322
then321:
  %1468 = getelementptr [1 x i8], [1 x i8]* @.str127, i32 0, i32 0
  %1469 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str127.c, i8* %1468, i64 0)
  ret %nyx_string* %1469
else322:
  br label %merge323
merge323:
  %1470 = load i64, i64* %1465
  %1471 = add i64 %1470, 8
  %1472 = alloca i64
  store i64 %1471, i64* %1472
  %1473 = getelementptr [1 x i8], [1 x i8]* @.str128, i32 0, i32 0
  %1474 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str128.c, i8* %1473, i64 0)
  %1475 = alloca %nyx_string*
  store %nyx_string* %1474, %nyx_string** %1475
  %1476 = call i8* @llvm.stacksave()
  br label %while_cond324
while_cond324:
  %1477 = load i64, i64* %1472
  %1478 = load %nyx_string*, %nyx_string** %1460
  %1479 = call i64 @nyx_string_byte_length(%nyx_string* %1478)
  %1480 = icmp slt i64 %1477, %1479
  br i1 %1480, label %while_body325, label %while_end326
while_body325:
  call void @llvm.stackrestore(i8* %1476)
  %1481 = load %nyx_string*, %nyx_string** %1460
  %1482 = load i64, i64* %1472
  %1483 = call i8 @nyx_string_char_at(%nyx_string* %1481, i64 %1482)
  %1484 = zext i8 %1483 to i64
  %1485 = alloca i64
  store i64 %1484, i64* %1485
  %1486 = alloca i1
  store i1 false, i1* %1486
  %1487 = load i64, i64* %1485
  %1488 = icmp sge i64 %1487, 48
  br i1 %1488, label %sc_and_rhs327, label %sc_and_end328
sc_and_rhs327:
  %1489 = load i64, i64* %1485
  %1490 = icmp sle i64 %1489, 57
  store i1 %1490, i1* %1486
  br label %sc_and_end328
sc_and_end328:
  %1491 = load i1, i1* %1486
  br i1 %1491, label %then329, label %else330
then329:
  %1492 = load %nyx_string*, %nyx_string** %1475
  %1493 = load %nyx_string*, %nyx_string** %1460
  %1494 = load i64, i64* %1472
  %1495 = load i64, i64* %1472
  %1496 = add i64 %1495, 1
  %1497 = call %nyx_string* @nyx_string_substring(%nyx_string* %1493, i64 %1494, i64 %1496)
  %1498 = call %nyx_string* @nyx_string_concat(%nyx_string* %1492, %nyx_string* %1497)
  store %nyx_string* %1498, %nyx_string** %1475
  %1499 = load i64, i64* %1472
  %1500 = add i64 %1499, 1
  store i64 %1500, i64* %1472
  br label %merge331
else330:
  %1501 = load %nyx_string*, %nyx_string** %1460
  %1502 = call i64 @nyx_string_byte_length(%nyx_string* %1501)
  store i64 %1502, i64* %1472
  br label %merge331
merge331:
  br label %while_cond324
while_end326:
  %1503 = load %nyx_string*, %nyx_string** %1475
  ret %nyx_string* %1503
}

define internal i1 @cov_profraw_valid(
%nyx_string* %path.param) {
  %path.ptr = alloca %nyx_string*
  store %nyx_string* %path.param, %nyx_string** %path.ptr
  %1504 = getelementptr [10 x i8], [10 x i8]* @.str129, i32 0, i32 0
  %1505 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str129.c, i8* %1504, i64 9)
  %1506 = load %nyx_string*, %nyx_string** %path.ptr
  %1507 = call %nyx_string* @nyx_string_concat(%nyx_string* %1505, %nyx_string* %1506)
  %1508 = getelementptr [2 x i8], [2 x i8]* @.str130, i32 0, i32 0
  %1509 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str130.c, i8* %1508, i64 1)
  %1510 = call %nyx_string* @nyx_string_concat(%nyx_string* %1507, %nyx_string* %1509)
  %1511 = call i8* @nyx_string_to_cstr(%nyx_string* %1510)
  %1512 = call i64 @nyx_exec_code(i8* %1511)
  %1513 = icmp eq i64 %1512, 0
  ret i1 %1513
}

define internal %nyx_string* @cov_find_profdata(
) {
  %1514 = call %nyx_string* @cov_clang_major()
  %1515 = alloca %nyx_string*
  store %nyx_string* %1514, %nyx_string** %1515
  %1516 = load %nyx_string*, %nyx_string** %1515
  %1517 = getelementptr [1 x i8], [1 x i8]* @.str131, i32 0, i32 0
  %1518 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str131.c, i8* %1517, i64 0)
  %1519 = call i1 @nyx_string_equals(%nyx_string* %1516, %nyx_string* %1518)
  %1520 = xor i1 %1519, true
  br i1 %1520, label %then332, label %else333
then332:
  %1521 = getelementptr [26 x i8], [26 x i8]* @.str132, i32 0, i32 0
  %1522 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str132.c, i8* %1521, i64 25)
  %1523 = load %nyx_string*, %nyx_string** %1515
  %1524 = call %nyx_string* @nyx_string_concat(%nyx_string* %1522, %nyx_string* %1523)
  %1525 = getelementptr [13 x i8], [13 x i8]* @.str133, i32 0, i32 0
  %1526 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str133.c, i8* %1525, i64 12)
  %1527 = call %nyx_string* @nyx_string_concat(%nyx_string* %1524, %nyx_string* %1526)
  %1528 = call i8* @nyx_string_to_cstr(%nyx_string* %1527)
  %1529 = call %nyx_string* @nyx_exec(i8* %1528)
  %1530 = call %nyx_string* @nyx_string_trim(%nyx_string* %1529)
  %1531 = alloca %nyx_string*
  store %nyx_string* %1530, %nyx_string** %1531
  %1532 = load %nyx_string*, %nyx_string** %1531
  %1533 = getelementptr [1 x i8], [1 x i8]* @.str134, i32 0, i32 0
  %1534 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str134.c, i8* %1533, i64 0)
  %1535 = call i1 @nyx_string_equals(%nyx_string* %1532, %nyx_string* %1534)
  %1536 = xor i1 %1535, true
  br i1 %1536, label %then335, label %else336
then335:
  %1537 = load %nyx_string*, %nyx_string** %1531
  ret %nyx_string* %1537
else336:
  br label %merge337
merge337:
  br label %merge334
else333:
  br label %merge334
merge334:
  %1538 = getelementptr [37 x i8], [37 x i8]* @.str135, i32 0, i32 0
  %1539 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str135.c, i8* %1538, i64 36)
  %1540 = call i8* @nyx_string_to_cstr(%nyx_string* %1539)
  %1541 = call %nyx_string* @nyx_exec(i8* %1540)
  %1542 = call %nyx_string* @nyx_string_trim(%nyx_string* %1541)
  ret %nyx_string* %1542
}

define internal { i64, i8* }* @cov_fields(
%nyx_string* %line.param) {
  %line.ptr = alloca %nyx_string*
  store %nyx_string* %line.param, %nyx_string** %line.ptr
  %1543 = call { i64, i8* }* @nyx_array_new_ptr()
  %1544 = alloca { i64, i8* }*
  store { i64, i8* }* %1543, { i64, i8* }** %1544
  %1545 = alloca i64
  store i64 0, i64* %1545
  %1546 = alloca i64
  store i64 0, i64* %1546
  %1547 = call i8* @llvm.stacksave()
  br label %while_cond338
while_cond338:
  %1548 = load i64, i64* %1546
  %1549 = load %nyx_string*, %nyx_string** %line.ptr
  %1550 = call i64 @nyx_string_byte_length(%nyx_string* %1549)
  %1551 = icmp slt i64 %1548, %1550
  br i1 %1551, label %while_body339, label %while_end340
while_body339:
  call void @llvm.stackrestore(i8* %1547)
  %1552 = load %nyx_string*, %nyx_string** %line.ptr
  %1553 = load i64, i64* %1546
  %1554 = call i8 @nyx_string_char_at(%nyx_string* %1552, i64 %1553)
  %1555 = zext i8 %1554 to i64
  %1556 = icmp eq i64 %1555, 9
  br i1 %1556, label %then341, label %else342
then341:
  %1557 = load { i64, i8* }*, { i64, i8* }** %1544
  %1558 = load %nyx_string*, %nyx_string** %line.ptr
  %1559 = load i64, i64* %1545
  %1560 = load i64, i64* %1546
  %1561 = call %nyx_string* @nyx_string_substring(%nyx_string* %1558, i64 %1559, i64 %1560)
  %1562 = ptrtoint %nyx_string* %1561 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1557, i64 %1562, i64 2)
  %1563 = load i64, i64* %1546
  %1564 = add i64 %1563, 1
  store i64 %1564, i64* %1545
  br label %merge343
else342:
  br label %merge343
merge343:
  %1565 = load i64, i64* %1546
  %1566 = add i64 %1565, 1
  store i64 %1566, i64* %1546
  br label %while_cond338
while_end340:
  %1567 = load { i64, i8* }*, { i64, i8* }** %1544
  %1568 = load %nyx_string*, %nyx_string** %line.ptr
  %1569 = load i64, i64* %1545
  %1570 = load %nyx_string*, %nyx_string** %line.ptr
  %1571 = call i64 @nyx_string_byte_length(%nyx_string* %1570)
  %1572 = call %nyx_string* @nyx_string_substring(%nyx_string* %1568, i64 %1569, i64 %1571)
  %1573 = ptrtoint %nyx_string* %1572 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1567, i64 %1573, i64 2)
  %1574 = load { i64, i8* }*, { i64, i8* }** %1544
  ret { i64, i8* }* %1574
}

define internal %nyx_string* @cov_pad(
i64 %n.param) {
  %n.ptr = alloca i64
  store i64 %n.param, i64* %n.ptr
  %1575 = load i64, i64* %n.ptr
  %1576 = call %nyx_string* @nyx_string_from_int(i64 %1575)
  %1577 = alloca %nyx_string*
  store %nyx_string* %1576, %nyx_string** %1577
  %1578 = getelementptr [2 x i8], [2 x i8]* @.str136, i32 0, i32 0
  %1579 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str136.c, i8* %1578, i64 1)
  %1580 = alloca %nyx_string*
  store %nyx_string* %1579, %nyx_string** %1580
  %1581 = call i8* @llvm.stacksave()
  br label %while_cond344
while_cond344:
  %1582 = load %nyx_string*, %nyx_string** %1577
  %1583 = call i64 @nyx_string_byte_length(%nyx_string* %1582)
  %1584 = icmp slt i64 %1583, 9
  br i1 %1584, label %while_body345, label %while_end346
while_body345:
  call void @llvm.stackrestore(i8* %1581)
  %1585 = load %nyx_string*, %nyx_string** %1580
  %1586 = load %nyx_string*, %nyx_string** %1577
  %1587 = call %nyx_string* @nyx_string_concat(%nyx_string* %1585, %nyx_string* %1586)
  store %nyx_string* %1587, %nyx_string** %1577
  br label %while_cond344
while_end346:
  %1588 = load %nyx_string*, %nyx_string** %1577
  ret %nyx_string* %1588
}

define internal i8* @cov_called_from_show(
%nyx_string* %show.param) {
  %show.ptr = alloca %nyx_string*
  store %nyx_string* %show.param, %nyx_string** %show.ptr
  %1589 = call i8* @nyx_map_new(i32 0)
  %1590 = alloca i8*
  store i8* %1589, i8** %1590
  %1591 = load %nyx_string*, %nyx_string** %show.ptr
  %1592 = getelementptr [2 x i8], [2 x i8]* @.str137, i32 0, i32 0
  %1593 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str137.c, i8* %1592, i64 1)
  %1594 = call { i64, i8* }* @nyx_string_split(%nyx_string* %1591, %nyx_string* %1593)
  %1595 = alloca { i64, i8* }*
  store { i64, i8* }* %1594, { i64, i8* }** %1595
  %1596 = getelementptr [1 x i8], [1 x i8]* @.str138, i32 0, i32 0
  %1597 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str138.c, i8* %1596, i64 0)
  %1598 = alloca %nyx_string*
  store %nyx_string* %1597, %nyx_string** %1598
  %1599 = alloca i64
  store i64 0, i64* %1599
  %1600 = getelementptr [3 x i8], [3 x i8]* @.str139, i32 0, i32 0
  %1601 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str139.c, i8* %1600, i64 2)
  %1602 = alloca %nyx_string*
  store %nyx_string* %1601, %nyx_string** %1602
  %1603 = getelementptr [4 x i8], [4 x i8]* @.str140, i32 0, i32 0
  %1604 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str140.c, i8* %1603, i64 3)
  %1605 = alloca %nyx_string*
  store %nyx_string* %1604, %nyx_string** %1605
  %1606 = getelementptr [2 x i8], [2 x i8]* @.str141, i32 0, i32 0
  %1607 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str141.c, i8* %1606, i64 1)
  %1608 = alloca %nyx_string*
  store %nyx_string* %1607, %nyx_string** %1608
  %1609 = getelementptr [11 x i8], [11 x i8]* @.str142, i32 0, i32 0
  %1610 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str142.c, i8* %1609, i64 10)
  %1611 = alloca %nyx_string*
  store %nyx_string* %1610, %nyx_string** %1611
  %1612 = getelementptr [1 x i8], [1 x i8]* @.str143, i32 0, i32 0
  %1613 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str143.c, i8* %1612, i64 0)
  %1614 = alloca %nyx_string*
  store %nyx_string* %1613, %nyx_string** %1614
  %1615 = getelementptr [14 x i8], [14 x i8]* @.str144, i32 0, i32 0
  %1616 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str144.c, i8* %1615, i64 13)
  %1617 = alloca %nyx_string*
  store %nyx_string* %1616, %nyx_string** %1617
  %1618 = getelementptr [2 x i8], [2 x i8]* @.str145, i32 0, i32 0
  %1619 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str145.c, i8* %1618, i64 1)
  %1620 = alloca %nyx_string*
  store %nyx_string* %1619, %nyx_string** %1620
  %1621 = getelementptr [2 x i8], [2 x i8]* @.str146, i32 0, i32 0
  %1622 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str146.c, i8* %1621, i64 1)
  %1623 = alloca %nyx_string*
  store %nyx_string* %1622, %nyx_string** %1623
  %1624 = getelementptr [2 x i8], [2 x i8]* @.str147, i32 0, i32 0
  %1625 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str147.c, i8* %1624, i64 1)
  %1626 = alloca %nyx_string*
  store %nyx_string* %1625, %nyx_string** %1626
  %1627 = getelementptr [2 x i8], [2 x i8]* @.str148, i32 0, i32 0
  %1628 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str148.c, i8* %1627, i64 1)
  %1629 = alloca %nyx_string*
  store %nyx_string* %1628, %nyx_string** %1629
  %1630 = call i8* @llvm.stacksave()
  br label %while_cond347
while_cond347:
  %1631 = load i64, i64* %1599
  %1632 = load { i64, i8* }*, { i64, i8* }** %1595
  %1633 = call i64 @nyx_array_length({ i64, i8* }* %1632)
  %1634 = icmp slt i64 %1631, %1633
  br i1 %1634, label %while_body348, label %while_end349
while_body348:
  call void @llvm.stackrestore(i8* %1630)
  %1635 = load { i64, i8* }*, { i64, i8* }** %1595
  %1636 = load i64, i64* %1599
  %1637 = call i64 @nyx_array_get_checked({ i64, i8* }* %1635, i64 %1636, i64 2)
  %1638 = inttoptr i64 %1637 to %nyx_string*
  %1639 = alloca %nyx_string*
  store %nyx_string* %1638, %nyx_string** %1639
  %1640 = alloca i1
  store i1 false, i1* %1640
  %1641 = alloca i1
  store i1 false, i1* %1641
  %1642 = load %nyx_string*, %nyx_string** %1639
  %1643 = load %nyx_string*, %nyx_string** %1602
  %1644 = call i1 @nyx_string_starts_with(%nyx_string* %1642, %nyx_string* %1643)
  br i1 %1644, label %sc_and_rhs350, label %sc_and_end351
sc_and_rhs350:
  %1645 = load %nyx_string*, %nyx_string** %1639
  %1646 = load %nyx_string*, %nyx_string** %1605
  %1647 = call i1 @nyx_string_starts_with(%nyx_string* %1645, %nyx_string* %1646)
  %1648 = xor i1 %1647, true
  store i1 %1648, i1* %1641
  br label %sc_and_end351
sc_and_end351:
  %1649 = load i1, i1* %1641
  br i1 %1649, label %sc_and_rhs352, label %sc_and_end353
sc_and_rhs352:
  %1650 = load %nyx_string*, %nyx_string** %1639
  %1651 = load %nyx_string*, %nyx_string** %1608
  %1652 = call i1 @nyx_string_ends_with(%nyx_string* %1650, %nyx_string* %1651)
  store i1 %1652, i1* %1640
  br label %sc_and_end353
sc_and_end353:
  %1653 = load i1, i1* %1640
  br i1 %1653, label %then354, label %else355
then354:
  %1654 = load %nyx_string*, %nyx_string** %1639
  %1655 = load %nyx_string*, %nyx_string** %1639
  %1656 = call i64 @nyx_string_byte_length(%nyx_string* %1655)
  %1657 = sub i64 %1656, 1
  %1658 = call %nyx_string* @nyx_string_substring(%nyx_string* %1654, i64 2, i64 %1657)
  %1659 = alloca %nyx_string*
  store %nyx_string* %1658, %nyx_string** %1659
  %1660 = load %nyx_string*, %nyx_string** %1659
  %1661 = load %nyx_string*, %nyx_string** %1611
  %1662 = call i1 @nyx_string_starts_with(%nyx_string* %1660, %nyx_string* %1661)
  br i1 %1662, label %then357, label %else358
then357:
  %1663 = load %nyx_string*, %nyx_string** %1659
  %1664 = load %nyx_string*, %nyx_string** %1659
  %1665 = call i64 @nyx_string_byte_length(%nyx_string* %1664)
  %1666 = call %nyx_string* @nyx_string_substring(%nyx_string* %1663, i64 10, i64 %1665)
  store %nyx_string* %1666, %nyx_string** %1659
  br label %merge359
else358:
  br label %merge359
merge359:
  %1667 = load %nyx_string*, %nyx_string** %1659
  store %nyx_string* %1667, %nyx_string** %1598
  br label %merge356
else355:
  %1668 = alloca i1
  store i1 false, i1* %1668
  %1669 = load %nyx_string*, %nyx_string** %1598
  %1670 = load %nyx_string*, %nyx_string** %1614
  %1671 = call i1 @nyx_string_equals(%nyx_string* %1669, %nyx_string* %1670)
  %1672 = xor i1 %1671, true
  br i1 %1672, label %sc_and_rhs360, label %sc_and_end361
sc_and_rhs360:
  %1673 = load %nyx_string*, %nyx_string** %1639
  %1674 = load %nyx_string*, %nyx_string** %1617
  %1675 = call i1 @nyx_string_contains(%nyx_string* %1673, %nyx_string* %1674)
  store i1 %1675, i1* %1668
  br label %sc_and_end361
sc_and_end361:
  %1676 = load i1, i1* %1668
  br i1 %1676, label %then362, label %else363
then362:
  %1677 = load %nyx_string*, %nyx_string** %1639
  %1678 = load %nyx_string*, %nyx_string** %1620
  %1679 = call i64 @nyx_string_index_of(%nyx_string* %1677, %nyx_string* %1678)
  %1680 = alloca i64
  store i64 %1679, i64* %1680
  %1681 = load %nyx_string*, %nyx_string** %1639
  %1682 = load %nyx_string*, %nyx_string** %1623
  %1683 = call i64 @nyx_string_index_of(%nyx_string* %1681, %nyx_string* %1682)
  %1684 = alloca i64
  store i64 %1683, i64* %1684
  %1685 = alloca i1
  store i1 false, i1* %1685
  %1686 = load i64, i64* %1680
  %1687 = icmp sge i64 %1686, 0
  br i1 %1687, label %sc_and_rhs365, label %sc_and_end366
sc_and_rhs365:
  %1688 = load i64, i64* %1684
  %1689 = load i64, i64* %1680
  %1690 = icmp sgt i64 %1688, %1689
  store i1 %1690, i1* %1685
  br label %sc_and_end366
sc_and_end366:
  %1691 = load i1, i1* %1685
  br i1 %1691, label %then367, label %else368
then367:
  %1692 = load %nyx_string*, %nyx_string** %1639
  %1693 = load i64, i64* %1680
  %1694 = add i64 %1693, 1
  %1695 = load i64, i64* %1684
  %1696 = call %nyx_string* @nyx_string_substring(%nyx_string* %1692, i64 %1694, i64 %1695)
  %1697 = load %nyx_string*, %nyx_string** %1626
  %1698 = call { i64, i8* }* @nyx_string_split(%nyx_string* %1696, %nyx_string* %1697)
  %1699 = alloca { i64, i8* }*
  store { i64, i8* }* %1698, { i64, i8* }** %1699
  %1700 = alloca i64
  store i64 0, i64* %1700
  %1701 = call i8* @llvm.stacksave()
  br label %while_cond370
while_cond370:
  %1702 = load i64, i64* %1700
  %1703 = load { i64, i8* }*, { i64, i8* }** %1699
  %1704 = call i64 @nyx_array_length({ i64, i8* }* %1703)
  %1705 = icmp slt i64 %1702, %1704
  br i1 %1705, label %while_body371, label %while_end372
while_body371:
  call void @llvm.stackrestore(i8* %1701)
  %1706 = load { i64, i8* }*, { i64, i8* }** %1699
  %1707 = load i64, i64* %1700
  %1708 = call i64 @nyx_array_get_checked({ i64, i8* }* %1706, i64 %1707, i64 2)
  %1709 = inttoptr i64 %1708 to %nyx_string*
  %1710 = alloca %nyx_string*
  store %nyx_string* %1709, %nyx_string** %1710
  %1711 = load %nyx_string*, %nyx_string** %1710
  %1712 = call %nyx_string* @nyx_string_trim(%nyx_string* %1711)
  %1713 = call i64 @nyx_string_to_int(%nyx_string* %1712)
  %1714 = icmp sgt i64 %1713, 0
  br i1 %1714, label %then373, label %else374
then373:
  %1715 = load i8*, i8** %1590
  %1716 = load %nyx_string*, %nyx_string** %1598
  %1717 = load %nyx_string*, %nyx_string** %1629
  %1718 = call i8* @nyx_string_to_cstr(%nyx_string* %1716)
  %1719 = call i8* @nyx_string_to_cstr(%nyx_string* %1717)
  call void @nyx_map_insert_str(i8* %1715, i8* %1718, i8* %1719)
  br label %merge375
else374:
  br label %merge375
merge375:
  %1720 = load i64, i64* %1700
  %1721 = add i64 %1720, 1
  store i64 %1721, i64* %1700
  br label %while_cond370
while_end372:
  br label %merge369
else368:
  br label %merge369
merge369:
  br label %merge364
else363:
  br label %merge364
merge364:
  br label %merge356
merge356:
  %1722 = load i64, i64* %1599
  %1723 = add i64 %1722, 1
  store i64 %1723, i64* %1599
  br label %while_cond347
while_end349:
  %1724 = load i8*, i8** %1590
  ret i8* %1724
}

define internal { i64, i8* }* @cov_src_modules(
) {
  %1725 = call { i64, i8* }* @nyx_array_new_ptr()
  %1726 = alloca { i64, i8* }*
  store { i64, i8* }* %1725, { i64, i8* }** %1726
  %1727 = getelementptr [4 x i8], [4 x i8]* @.str149, i32 0, i32 0
  %1728 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str149.c, i8* %1727, i64 3)
  %1729 = call i8* @nyx_string_to_cstr(%nyx_string* %1728)
  %1730 = call i1 @nyx_file_exists(i8* %1729)
  %1731 = xor i1 %1730, true
  br i1 %1731, label %then376, label %else377
then376:
  %1732 = load { i64, i8* }*, { i64, i8* }** %1726
  ret { i64, i8* }* %1732
else377:
  br label %merge378
merge378:
  %1733 = getelementptr [50 x i8], [50 x i8]* @.str150, i32 0, i32 0
  %1734 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str150.c, i8* %1733, i64 49)
  %1735 = call i8* @nyx_string_to_cstr(%nyx_string* %1734)
  %1736 = call %nyx_string* @nyx_exec(i8* %1735)
  %1737 = alloca %nyx_string*
  store %nyx_string* %1736, %nyx_string** %1737
  %1738 = load %nyx_string*, %nyx_string** %1737
  %1739 = getelementptr [2 x i8], [2 x i8]* @.str151, i32 0, i32 0
  %1740 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str151.c, i8* %1739, i64 1)
  %1741 = call { i64, i8* }* @nyx_string_split(%nyx_string* %1738, %nyx_string* %1740)
  %1742 = alloca { i64, i8* }*
  store { i64, i8* }* %1741, { i64, i8* }** %1742
  %1743 = alloca i64
  store i64 0, i64* %1743
  %1744 = getelementptr [4 x i8], [4 x i8]* @.str152, i32 0, i32 0
  %1745 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str152.c, i8* %1744, i64 3)
  %1746 = alloca %nyx_string*
  store %nyx_string* %1745, %nyx_string** %1746
  %1747 = getelementptr [9 x i8], [9 x i8]* @.str153, i32 0, i32 0
  %1748 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str153.c, i8* %1747, i64 8)
  %1749 = alloca %nyx_string*
  store %nyx_string* %1748, %nyx_string** %1749
  %1750 = call i8* @llvm.stacksave()
  br label %while_cond379
while_cond379:
  %1751 = load i64, i64* %1743
  %1752 = load { i64, i8* }*, { i64, i8* }** %1742
  %1753 = call i64 @nyx_array_length({ i64, i8* }* %1752)
  %1754 = icmp slt i64 %1751, %1753
  br i1 %1754, label %while_body380, label %while_end381
while_body380:
  call void @llvm.stackrestore(i8* %1750)
  %1755 = load { i64, i8* }*, { i64, i8* }** %1742
  %1756 = load i64, i64* %1743
  %1757 = call i64 @nyx_array_get_checked({ i64, i8* }* %1755, i64 %1756, i64 2)
  %1758 = inttoptr i64 %1757 to %nyx_string*
  %1759 = alloca %nyx_string*
  store %nyx_string* %1758, %nyx_string** %1759
  %1760 = load %nyx_string*, %nyx_string** %1759
  %1761 = call %nyx_string* @nyx_string_trim(%nyx_string* %1760)
  %1762 = alloca %nyx_string*
  store %nyx_string* %1761, %nyx_string** %1762
  %1763 = alloca i1
  store i1 false, i1* %1763
  %1764 = load %nyx_string*, %nyx_string** %1762
  %1765 = load %nyx_string*, %nyx_string** %1746
  %1766 = call i1 @nyx_string_ends_with(%nyx_string* %1764, %nyx_string* %1765)
  br i1 %1766, label %sc_and_rhs382, label %sc_and_end383
sc_and_rhs382:
  %1767 = load %nyx_string*, %nyx_string** %1762
  %1768 = load %nyx_string*, %nyx_string** %1749
  %1769 = call i1 @nyx_string_ends_with(%nyx_string* %1767, %nyx_string* %1768)
  %1770 = xor i1 %1769, true
  store i1 %1770, i1* %1763
  br label %sc_and_end383
sc_and_end383:
  %1771 = load i1, i1* %1763
  br i1 %1771, label %then384, label %else385
then384:
  %1772 = load { i64, i8* }*, { i64, i8* }** %1726
  %1773 = load %nyx_string*, %nyx_string** %1762
  %1774 = load %nyx_string*, %nyx_string** %1762
  %1775 = call i64 @nyx_string_byte_length(%nyx_string* %1774)
  %1776 = sub i64 %1775, 3
  %1777 = call %nyx_string* @nyx_string_substring(%nyx_string* %1773, i64 0, i64 %1776)
  %1778 = ptrtoint %nyx_string* %1777 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1772, i64 %1778, i64 2)
  br label %merge386
else385:
  br label %merge386
merge386:
  %1779 = load i64, i64* %1743
  %1780 = add i64 %1779, 1
  store i64 %1780, i64* %1743
  br label %while_cond379
while_end381:
  %1781 = load { i64, i8* }*, { i64, i8* }** %1726
  ret { i64, i8* }* %1781
}

define internal %nyx_string* @cov_universe(
%nyx_string* %nyx_home.param, %nyx_string* %orig_dir.param, %nyx_string* %cov_dir.param, { i64, i8* }* %mods.param) {
  %nyx_home.ptr = alloca %nyx_string*
  store %nyx_string* %nyx_home.param, %nyx_string** %nyx_home.ptr
  %orig_dir.ptr = alloca %nyx_string*
  store %nyx_string* %orig_dir.param, %nyx_string** %orig_dir.ptr
  %cov_dir.ptr = alloca %nyx_string*
  store %nyx_string* %cov_dir.param, %nyx_string** %cov_dir.ptr
  %mods.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %mods.param, { i64, i8* }** %mods.ptr
  %1782 = getelementptr [1 x i8], [1 x i8]* @.str154, i32 0, i32 0
  %1783 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str154.c, i8* %1782, i64 0)
  %1784 = alloca %nyx_string*
  store %nyx_string* %1783, %nyx_string** %1784
  %1785 = alloca i64
  store i64 0, i64* %1785
  %1786 = getelementptr [9 x i8], [9 x i8]* @.str155, i32 0, i32 0
  %1787 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str155.c, i8* %1786, i64 8)
  %1788 = alloca %nyx_string*
  store %nyx_string* %1787, %nyx_string** %1788
  %1789 = getelementptr [3 x i8], [3 x i8]* @.str156, i32 0, i32 0
  %1790 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str156.c, i8* %1789, i64 2)
  %1791 = alloca %nyx_string*
  store %nyx_string* %1790, %nyx_string** %1791
  %1792 = call i8* @llvm.stacksave()
  br label %while_cond387
while_cond387:
  %1793 = load i64, i64* %1785
  %1794 = load { i64, i8* }*, { i64, i8* }** %mods.ptr
  %1795 = call i64 @nyx_array_length({ i64, i8* }* %1794)
  %1796 = icmp slt i64 %1793, %1795
  br i1 %1796, label %while_body388, label %while_end389
while_body388:
  call void @llvm.stackrestore(i8* %1792)
  %1797 = load { i64, i8* }*, { i64, i8* }** %mods.ptr
  %1798 = load i64, i64* %1785
  %1799 = call i64 @nyx_array_get_checked({ i64, i8* }* %1797, i64 %1798, i64 2)
  %1800 = inttoptr i64 %1799 to %nyx_string*
  %1801 = alloca %nyx_string*
  store %nyx_string* %1800, %nyx_string** %1801
  %1802 = load %nyx_string*, %nyx_string** %1784
  %1803 = load %nyx_string*, %nyx_string** %1788
  %1804 = call %nyx_string* @nyx_string_concat(%nyx_string* %1802, %nyx_string* %1803)
  %1805 = load %nyx_string*, %nyx_string** %1801
  %1806 = call %nyx_string* @nyx_string_concat(%nyx_string* %1804, %nyx_string* %1805)
  %1807 = load %nyx_string*, %nyx_string** %1791
  %1808 = call %nyx_string* @nyx_string_concat(%nyx_string* %1806, %nyx_string* %1807)
  store %nyx_string* %1808, %nyx_string** %1784
  %1809 = load i64, i64* %1785
  %1810 = add i64 %1809, 1
  store i64 %1810, i64* %1785
  br label %while_cond387
while_end389:
  %1811 = load %nyx_string*, %nyx_string** %1784
  %1812 = getelementptr [36 x i8], [36 x i8]* @.str157, i32 0, i32 0
  %1813 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str157.c, i8* %1812, i64 35)
  %1814 = call %nyx_string* @nyx_string_concat(%nyx_string* %1811, %nyx_string* %1813)
  store %nyx_string* %1814, %nyx_string** %1784
  %1815 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %1816 = getelementptr [13 x i8], [13 x i8]* @.str158, i32 0, i32 0
  %1817 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str158.c, i8* %1816, i64 12)
  %1818 = call %nyx_string* @nyx_string_concat(%nyx_string* %1815, %nyx_string* %1817)
  %1819 = load %nyx_string*, %nyx_string** %1784
  %1820 = call i8* @nyx_string_to_cstr(%nyx_string* %1818)
  %1821 = call i1 @nyx_write_file_safe(i8* %1820, %nyx_string* %1819)
  %1822 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %1823 = getelementptr [14 x i8], [14 x i8]* @.str159, i32 0, i32 0
  %1824 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str159.c, i8* %1823, i64 13)
  %1825 = call %nyx_string* @nyx_string_concat(%nyx_string* %1822, %nyx_string* %1824)
  %1826 = alloca %nyx_string*
  store %nyx_string* %1825, %nyx_string** %1826
  %1827 = getelementptr [13 x i8], [13 x i8]* @.str160, i32 0, i32 0
  %1828 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str160.c, i8* %1827, i64 12)
  %1829 = getelementptr [5 x i8], [5 x i8]* @.str161, i32 0, i32 0
  %1830 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str161.c, i8* %1829, i64 4)
  %1831 = call %nyx_string* @nyx_string_concat(%nyx_string* %1828, %nyx_string* %1830)
  %1832 = load %nyx_string*, %nyx_string** %nyx_home.ptr
  %1833 = call %nyx_string* @nyx_string_concat(%nyx_string* %1831, %nyx_string* %1832)
  %1834 = getelementptr [3 x i8], [3 x i8]* @.str162, i32 0, i32 0
  %1835 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str162.c, i8* %1834, i64 2)
  %1836 = call %nyx_string* @nyx_string_concat(%nyx_string* %1833, %nyx_string* %1835)
  %1837 = getelementptr [5 x i8], [5 x i8]* @.str163, i32 0, i32 0
  %1838 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str163.c, i8* %1837, i64 4)
  %1839 = call %nyx_string* @nyx_string_concat(%nyx_string* %1836, %nyx_string* %1838)
  %1840 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %1841 = call %nyx_string* @nyx_string_concat(%nyx_string* %1839, %nyx_string* %1840)
  %1842 = getelementptr [25 x i8], [25 x i8]* @.str164, i32 0, i32 0
  %1843 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str164.c, i8* %1842, i64 24)
  %1844 = call %nyx_string* @nyx_string_concat(%nyx_string* %1841, %nyx_string* %1843)
  %1845 = getelementptr [43 x i8], [43 x i8]* @.str165, i32 0, i32 0
  %1846 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str165.c, i8* %1845, i64 42)
  %1847 = call %nyx_string* @nyx_string_concat(%nyx_string* %1844, %nyx_string* %1846)
  %1848 = load %nyx_string*, %nyx_string** %orig_dir.ptr
  %1849 = call %nyx_string* @nyx_string_concat(%nyx_string* %1847, %nyx_string* %1848)
  %1850 = getelementptr [21 x i8], [21 x i8]* @.str166, i32 0, i32 0
  %1851 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str166.c, i8* %1850, i64 20)
  %1852 = call %nyx_string* @nyx_string_concat(%nyx_string* %1849, %nyx_string* %1851)
  %1853 = load %nyx_string*, %nyx_string** %1826
  %1854 = call %nyx_string* @nyx_string_concat(%nyx_string* %1852, %nyx_string* %1853)
  %1855 = getelementptr [22 x i8], [22 x i8]* @.str167, i32 0, i32 0
  %1856 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str167.c, i8* %1855, i64 21)
  %1857 = call %nyx_string* @nyx_string_concat(%nyx_string* %1854, %nyx_string* %1856)
  %1858 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %1859 = call %nyx_string* @nyx_string_concat(%nyx_string* %1857, %nyx_string* %1858)
  %1860 = getelementptr [21 x i8], [21 x i8]* @.str168, i32 0, i32 0
  %1861 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str168.c, i8* %1860, i64 20)
  %1862 = call %nyx_string* @nyx_string_concat(%nyx_string* %1859, %nyx_string* %1861)
  %1863 = getelementptr [7 x i8], [7 x i8]* @.str169, i32 0, i32 0
  %1864 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str169.c, i8* %1863, i64 6)
  %1865 = call %nyx_string* @nyx_string_concat(%nyx_string* %1862, %nyx_string* %1864)
  %1866 = getelementptr [27 x i8], [27 x i8]* @.str170, i32 0, i32 0
  %1867 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str170.c, i8* %1866, i64 26)
  %1868 = call %nyx_string* @nyx_string_concat(%nyx_string* %1865, %nyx_string* %1867)
  %1869 = getelementptr [10 x i8], [10 x i8]* @.str171, i32 0, i32 0
  %1870 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str171.c, i8* %1869, i64 9)
  %1871 = call %nyx_string* @nyx_string_concat(%nyx_string* %1868, %nyx_string* %1870)
  %1872 = alloca %nyx_string*
  store %nyx_string* %1871, %nyx_string** %1872
  %1873 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %1874 = getelementptr [13 x i8], [13 x i8]* @.str172, i32 0, i32 0
  %1875 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str172.c, i8* %1874, i64 12)
  %1876 = call %nyx_string* @nyx_string_concat(%nyx_string* %1873, %nyx_string* %1875)
  %1877 = load %nyx_string*, %nyx_string** %1872
  %1878 = call i8* @nyx_string_to_cstr(%nyx_string* %1876)
  %1879 = call i1 @nyx_write_file_safe(i8* %1878, %nyx_string* %1877)
  %1880 = getelementptr [7 x i8], [7 x i8]* @.str173, i32 0, i32 0
  %1881 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str173.c, i8* %1880, i64 6)
  %1882 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %1883 = call %nyx_string* @nyx_string_concat(%nyx_string* %1881, %nyx_string* %1882)
  %1884 = getelementptr [14 x i8], [14 x i8]* @.str174, i32 0, i32 0
  %1885 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str174.c, i8* %1884, i64 13)
  %1886 = call %nyx_string* @nyx_string_concat(%nyx_string* %1883, %nyx_string* %1885)
  %1887 = call i8* @nyx_string_to_cstr(%nyx_string* %1886)
  %1888 = call i64 @nyx_exec_code(i8* %1887)
  %1889 = load %nyx_string*, %nyx_string** %1826
  ret %nyx_string* %1889
}

define internal i64 @cov_report(
%nyx_string* %cov_dir.param, { i64, i8* }* %run_files.param, { i64, i8* }* %run_idx.param, %nyx_string* %profdata.param, i1 %want_lcov.param) {
  %cov_dir.ptr = alloca %nyx_string*
  store %nyx_string* %cov_dir.param, %nyx_string** %cov_dir.ptr
  %run_files.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %run_files.param, { i64, i8* }** %run_files.ptr
  %run_idx.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %run_idx.param, { i64, i8* }** %run_idx.ptr
  %profdata.ptr = alloca %nyx_string*
  store %nyx_string* %profdata.param, %nyx_string** %profdata.ptr
  %want_lcov.ptr = alloca i1
  store i1 %want_lcov.param, i1* %want_lcov.ptr
  %1890 = getelementptr [9 x i8], [9 x i8]* @.str175, i32 0, i32 0
  %1891 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str175.c, i8* %1890, i64 8)
  %1892 = call i8* @nyx_string_to_cstr(%nyx_string* %1891)
  %1893 = call %nyx_string* @nyx_getenv(i8* %1892)
  %1894 = alloca %nyx_string*
  store %nyx_string* %1893, %nyx_string** %1894
  %1895 = getelementptr [4 x i8], [4 x i8]* @.str176, i32 0, i32 0
  %1896 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str176.c, i8* %1895, i64 3)
  %1897 = call i8* @nyx_string_to_cstr(%nyx_string* %1896)
  %1898 = call %nyx_string* @nyx_getenv(i8* %1897)
  %1899 = alloca %nyx_string*
  store %nyx_string* %1898, %nyx_string** %1899
  %1900 = getelementptr [1 x i8], [1 x i8]* @.str177, i32 0, i32 0
  %1901 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str177.c, i8* %1900, i64 0)
  %1902 = call i8* @nyx_string_to_cstr(%nyx_string* %1901)
  call void @nyx_print_string(i8* %1902)
  %1903 = getelementptr [36 x i8], [36 x i8]* @.str178, i32 0, i32 0
  %1904 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str178.c, i8* %1903, i64 35)
  %1905 = call i8* @nyx_string_to_cstr(%nyx_string* %1904)
  call void @nyx_print_string(i8* %1905)
  %1906 = getelementptr [1 x i8], [1 x i8]* @.str179, i32 0, i32 0
  %1907 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str179.c, i8* %1906, i64 0)
  %1908 = alloca %nyx_string*
  store %nyx_string* %1907, %nyx_string** %1908
  %1909 = alloca i64
  store i64 0, i64* %1909
  %1910 = call i8* @nyx_map_new(i32 0)
  %1911 = alloca i8*
  store i8* %1910, i8** %1911
  %1912 = call { i64, i8* }* @nyx_array_new_ptr()
  %1913 = alloca { i64, i8* }*
  store { i64, i8* }* %1912, { i64, i8* }** %1913
  %1914 = alloca i64
  store i64 0, i64* %1914
  %1915 = getelementptr [2 x i8], [2 x i8]* @.str180, i32 0, i32 0
  %1916 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str180.c, i8* %1915, i64 1)
  %1917 = alloca %nyx_string*
  store %nyx_string* %1916, %nyx_string** %1917
  %1918 = getelementptr [9 x i8], [9 x i8]* @.str181, i32 0, i32 0
  %1919 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str181.c, i8* %1918, i64 8)
  %1920 = alloca %nyx_string*
  store %nyx_string* %1919, %nyx_string** %1920
  %1921 = getelementptr [3 x i8], [3 x i8]* @.str182, i32 0, i32 0
  %1922 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str182.c, i8* %1921, i64 2)
  %1923 = alloca %nyx_string*
  store %nyx_string* %1922, %nyx_string** %1923
  %1924 = getelementptr [2 x i8], [2 x i8]* @.str183, i32 0, i32 0
  %1925 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str183.c, i8* %1924, i64 1)
  %1926 = alloca %nyx_string*
  store %nyx_string* %1925, %nyx_string** %1926
  %1927 = getelementptr [2 x i8], [2 x i8]* @.str184, i32 0, i32 0
  %1928 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str184.c, i8* %1927, i64 1)
  %1929 = alloca %nyx_string*
  store %nyx_string* %1928, %nyx_string** %1929
  %1930 = call i8* @llvm.stacksave()
  br label %while_cond390
while_cond390:
  %1931 = load i64, i64* %1914
  %1932 = load { i64, i8* }*, { i64, i8* }** %run_files.ptr
  %1933 = call i64 @nyx_array_length({ i64, i8* }* %1932)
  %1934 = icmp slt i64 %1931, %1933
  br i1 %1934, label %while_body391, label %while_end392
while_body391:
  call void @llvm.stackrestore(i8* %1930)
  %1935 = load { i64, i8* }*, { i64, i8* }** %run_idx.ptr
  %1936 = load i64, i64* %1914
  %1937 = call i64 @nyx_array_get_checked({ i64, i8* }* %1935, i64 %1936, i64 2)
  %1938 = inttoptr i64 %1937 to %nyx_string*
  %1939 = alloca %nyx_string*
  store %nyx_string* %1938, %nyx_string** %1939
  %1940 = load { i64, i8* }*, { i64, i8* }** %run_files.ptr
  %1941 = load i64, i64* %1914
  %1942 = call i64 @nyx_array_get_checked({ i64, i8* }* %1940, i64 %1941, i64 2)
  %1943 = inttoptr i64 %1942 to %nyx_string*
  %1944 = alloca %nyx_string*
  store %nyx_string* %1943, %nyx_string** %1944
  %1945 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %1946 = load %nyx_string*, %nyx_string** %1917
  %1947 = call %nyx_string* @nyx_string_concat(%nyx_string* %1945, %nyx_string* %1946)
  %1948 = load %nyx_string*, %nyx_string** %1939
  %1949 = call %nyx_string* @nyx_string_concat(%nyx_string* %1947, %nyx_string* %1948)
  %1950 = load %nyx_string*, %nyx_string** %1920
  %1951 = call %nyx_string* @nyx_string_concat(%nyx_string* %1949, %nyx_string* %1950)
  %1952 = alloca %nyx_string*
  store %nyx_string* %1951, %nyx_string** %1952
  %1953 = load %nyx_string*, %nyx_string** %1952
  %1954 = call i1 @cov_profraw_valid(%nyx_string* %1953)
  br i1 %1954, label %then393, label %else394
then393:
  %1955 = load %nyx_string*, %nyx_string** %1908
  %1956 = load %nyx_string*, %nyx_string** %1923
  %1957 = call %nyx_string* @nyx_string_concat(%nyx_string* %1955, %nyx_string* %1956)
  %1958 = load %nyx_string*, %nyx_string** %1952
  %1959 = call %nyx_string* @nyx_string_concat(%nyx_string* %1957, %nyx_string* %1958)
  %1960 = load %nyx_string*, %nyx_string** %1926
  %1961 = call %nyx_string* @nyx_string_concat(%nyx_string* %1959, %nyx_string* %1960)
  store %nyx_string* %1961, %nyx_string** %1908
  %1962 = load i64, i64* %1909
  %1963 = add i64 %1962, 1
  store i64 %1963, i64* %1909
  %1964 = load i8*, i8** %1911
  %1965 = load %nyx_string*, %nyx_string** %1939
  %1966 = load %nyx_string*, %nyx_string** %1929
  %1967 = call i8* @nyx_string_to_cstr(%nyx_string* %1965)
  %1968 = call i8* @nyx_string_to_cstr(%nyx_string* %1966)
  call void @nyx_map_insert_str(i8* %1964, i8* %1967, i8* %1968)
  br label %merge395
else394:
  %1969 = load { i64, i8* }*, { i64, i8* }** %1913
  %1970 = load %nyx_string*, %nyx_string** %1944
  %1971 = ptrtoint %nyx_string* %1970 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1969, i64 %1971, i64 2)
  br label %merge395
merge395:
  %1972 = load i64, i64* %1914
  %1973 = add i64 %1972, 1
  store i64 %1973, i64* %1914
  br label %while_cond390
while_end392:
  %1974 = call i8* @nyx_map_new(i32 0)
  %1975 = alloca i8*
  store i8* %1974, i8** %1975
  %1976 = load i64, i64* %1909
  %1977 = icmp sgt i64 %1976, 0
  br i1 %1977, label %then396, label %else397
then396:
  %1978 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %1979 = getelementptr [17 x i8], [17 x i8]* @.str185, i32 0, i32 0
  %1980 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str185.c, i8* %1979, i64 16)
  %1981 = call %nyx_string* @nyx_string_concat(%nyx_string* %1978, %nyx_string* %1980)
  %1982 = alloca %nyx_string*
  store %nyx_string* %1981, %nyx_string** %1982
  %1983 = load %nyx_string*, %nyx_string** %profdata.ptr
  %1984 = getelementptr [12 x i8], [12 x i8]* @.str186, i32 0, i32 0
  %1985 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str186.c, i8* %1984, i64 11)
  %1986 = call %nyx_string* @nyx_string_concat(%nyx_string* %1983, %nyx_string* %1985)
  %1987 = load %nyx_string*, %nyx_string** %1982
  %1988 = call %nyx_string* @nyx_string_concat(%nyx_string* %1986, %nyx_string* %1987)
  %1989 = getelementptr [2 x i8], [2 x i8]* @.str187, i32 0, i32 0
  %1990 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str187.c, i8* %1989, i64 1)
  %1991 = call %nyx_string* @nyx_string_concat(%nyx_string* %1988, %nyx_string* %1990)
  %1992 = load %nyx_string*, %nyx_string** %1908
  %1993 = call %nyx_string* @nyx_string_concat(%nyx_string* %1991, %nyx_string* %1992)
  %1994 = getelementptr [5 x i8], [5 x i8]* @.str188, i32 0, i32 0
  %1995 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str188.c, i8* %1994, i64 4)
  %1996 = call %nyx_string* @nyx_string_concat(%nyx_string* %1993, %nyx_string* %1995)
  %1997 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %1998 = call %nyx_string* @nyx_string_concat(%nyx_string* %1996, %nyx_string* %1997)
  %1999 = getelementptr [17 x i8], [17 x i8]* @.str189, i32 0, i32 0
  %2000 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str189.c, i8* %1999, i64 16)
  %2001 = call %nyx_string* @nyx_string_concat(%nyx_string* %1998, %nyx_string* %2000)
  %2002 = call i8* @nyx_string_to_cstr(%nyx_string* %2001)
  %2003 = call i64 @nyx_exec_code(i8* %2002)
  %2004 = alloca i64
  store i64 %2003, i64* %2004
  %2005 = load i64, i64* %2004
  %2006 = icmp ne i64 %2005, 0
  br i1 %2006, label %then399, label %else400
then399:
  %2007 = getelementptr [36 x i8], [36 x i8]* @.str190, i32 0, i32 0
  %2008 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str190.c, i8* %2007, i64 35)
  %2009 = call i8* @nyx_string_to_cstr(%nyx_string* %2008)
  call void @nyx_print_string(i8* %2009)
  %2010 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2011 = getelementptr [11 x i8], [11 x i8]* @.str191, i32 0, i32 0
  %2012 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str191.c, i8* %2011, i64 10)
  %2013 = call %nyx_string* @nyx_string_concat(%nyx_string* %2010, %nyx_string* %2012)
  %2014 = call i8* @nyx_string_to_cstr(%nyx_string* %2013)
  %2015 = call %nyx_string* @nyx_read_file(i8* %2014)
  %2016 = call i8* @nyx_string_to_cstr(%nyx_string* %2015)
  call void @nyx_print_string(i8* %2016)
  ret i64 1
else400:
  br label %merge401
merge401:
  %2017 = load %nyx_string*, %nyx_string** %profdata.ptr
  %2018 = getelementptr [33 x i8], [33 x i8]* @.str192, i32 0, i32 0
  %2019 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str192.c, i8* %2018, i64 32)
  %2020 = call %nyx_string* @nyx_string_concat(%nyx_string* %2017, %nyx_string* %2019)
  %2021 = load %nyx_string*, %nyx_string** %1982
  %2022 = call %nyx_string* @nyx_string_concat(%nyx_string* %2020, %nyx_string* %2021)
  %2023 = getelementptr [6 x i8], [6 x i8]* @.str193, i32 0, i32 0
  %2024 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str193.c, i8* %2023, i64 5)
  %2025 = call %nyx_string* @nyx_string_concat(%nyx_string* %2022, %nyx_string* %2024)
  %2026 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2027 = call %nyx_string* @nyx_string_concat(%nyx_string* %2025, %nyx_string* %2026)
  %2028 = getelementptr [16 x i8], [16 x i8]* @.str194, i32 0, i32 0
  %2029 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str194.c, i8* %2028, i64 15)
  %2030 = call %nyx_string* @nyx_string_concat(%nyx_string* %2027, %nyx_string* %2029)
  %2031 = call i8* @nyx_string_to_cstr(%nyx_string* %2030)
  %2032 = call i64 @nyx_exec_code(i8* %2031)
  %2033 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2034 = getelementptr [10 x i8], [10 x i8]* @.str195, i32 0, i32 0
  %2035 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str195.c, i8* %2034, i64 9)
  %2036 = call %nyx_string* @nyx_string_concat(%nyx_string* %2033, %nyx_string* %2035)
  %2037 = call i8* @nyx_string_to_cstr(%nyx_string* %2036)
  %2038 = call %nyx_string* @nyx_read_file(i8* %2037)
  %2039 = call i8* @cov_called_from_show(%nyx_string* %2038)
  store i8* %2039, i8** %1975
  br label %merge398
else397:
  br label %merge398
merge398:
  %2040 = call i8* @nyx_map_new(i32 0)
  %2041 = alloca i8*
  store i8* %2040, i8** %2041
  %2042 = call i8* @nyx_map_new(i32 0)
  %2043 = alloca i8*
  store i8* %2042, i8** %2043
  %2044 = call i8* @nyx_map_new(i32 0)
  %2045 = alloca i8*
  store i8* %2044, i8** %2045
  %2046 = call i8* @nyx_map_new(i32 0)
  %2047 = alloca i8*
  store i8* %2046, i8** %2047
  store i64 0, i64* %1914
  %2048 = getelementptr [2 x i8], [2 x i8]* @.str196, i32 0, i32 0
  %2049 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str196.c, i8* %2048, i64 1)
  %2050 = alloca %nyx_string*
  store %nyx_string* %2049, %nyx_string** %2050
  %2051 = getelementptr [5 x i8], [5 x i8]* @.str197, i32 0, i32 0
  %2052 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str197.c, i8* %2051, i64 4)
  %2053 = alloca %nyx_string*
  store %nyx_string* %2052, %nyx_string** %2053
  %2054 = getelementptr [2 x i8], [2 x i8]* @.str198, i32 0, i32 0
  %2055 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str198.c, i8* %2054, i64 1)
  %2056 = alloca %nyx_string*
  store %nyx_string* %2055, %nyx_string** %2056
  %2057 = getelementptr [1 x i8], [1 x i8]* @.str199, i32 0, i32 0
  %2058 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str199.c, i8* %2057, i64 0)
  %2059 = alloca %nyx_string*
  store %nyx_string* %2058, %nyx_string** %2059
  %2060 = getelementptr [2 x i8], [2 x i8]* @.str200, i32 0, i32 0
  %2061 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str200.c, i8* %2060, i64 1)
  %2062 = alloca %nyx_string*
  store %nyx_string* %2061, %nyx_string** %2062
  %2063 = getelementptr [5 x i8], [5 x i8]* @.str201, i32 0, i32 0
  %2064 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str201.c, i8* %2063, i64 4)
  %2065 = alloca %nyx_string*
  store %nyx_string* %2064, %nyx_string** %2065
  %2066 = call i8* @llvm.stacksave()
  br label %while_cond402
while_cond402:
  %2067 = load i64, i64* %1914
  %2068 = load { i64, i8* }*, { i64, i8* }** %run_files.ptr
  %2069 = call i64 @nyx_array_length({ i64, i8* }* %2068)
  %2070 = icmp slt i64 %2067, %2069
  br i1 %2070, label %while_body403, label %while_end404
while_body403:
  call void @llvm.stackrestore(i8* %2066)
  %2071 = load { i64, i8* }*, { i64, i8* }** %run_idx.ptr
  %2072 = load i64, i64* %1914
  %2073 = call i64 @nyx_array_get_checked({ i64, i8* }* %2071, i64 %2072, i64 2)
  %2074 = inttoptr i64 %2073 to %nyx_string*
  %2075 = alloca %nyx_string*
  store %nyx_string* %2074, %nyx_string** %2075
  %2076 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2077 = load %nyx_string*, %nyx_string** %2050
  %2078 = call %nyx_string* @nyx_string_concat(%nyx_string* %2076, %nyx_string* %2077)
  %2079 = load %nyx_string*, %nyx_string** %2075
  %2080 = call %nyx_string* @nyx_string_concat(%nyx_string* %2078, %nyx_string* %2079)
  %2081 = load %nyx_string*, %nyx_string** %2053
  %2082 = call %nyx_string* @nyx_string_concat(%nyx_string* %2080, %nyx_string* %2081)
  %2083 = alloca %nyx_string*
  store %nyx_string* %2082, %nyx_string** %2083
  %2084 = load %nyx_string*, %nyx_string** %2083
  %2085 = call i8* @nyx_string_to_cstr(%nyx_string* %2084)
  %2086 = call i1 @nyx_file_exists(i8* %2085)
  br i1 %2086, label %then405, label %else406
then405:
  %2087 = load %nyx_string*, %nyx_string** %2083
  %2088 = call i8* @nyx_string_to_cstr(%nyx_string* %2087)
  %2089 = call %nyx_string* @nyx_read_file(i8* %2088)
  %2090 = load %nyx_string*, %nyx_string** %2056
  %2091 = call { i64, i8* }* @nyx_string_split(%nyx_string* %2089, %nyx_string* %2090)
  %2092 = alloca { i64, i8* }*
  store { i64, i8* }* %2091, { i64, i8* }** %2092
  %2093 = alloca i64
  store i64 0, i64* %2093
  %2094 = call i8* @llvm.stacksave()
  br label %while_cond408
while_cond408:
  %2095 = load i64, i64* %2093
  %2096 = load { i64, i8* }*, { i64, i8* }** %2092
  %2097 = call i64 @nyx_array_length({ i64, i8* }* %2096)
  %2098 = icmp slt i64 %2095, %2097
  br i1 %2098, label %while_body409, label %while_end410
while_body409:
  call void @llvm.stackrestore(i8* %2094)
  %2099 = load { i64, i8* }*, { i64, i8* }** %2092
  %2100 = load i64, i64* %2093
  %2101 = call i64 @nyx_array_get_checked({ i64, i8* }* %2099, i64 %2100, i64 2)
  %2102 = inttoptr i64 %2101 to %nyx_string*
  %2103 = alloca %nyx_string*
  store %nyx_string* %2102, %nyx_string** %2103
  %2104 = load %nyx_string*, %nyx_string** %2103
  %2105 = call { i64, i8* }* @cov_fields(%nyx_string* %2104)
  %2106 = alloca { i64, i8* }*
  store { i64, i8* }* %2105, { i64, i8* }** %2106
  %2107 = load { i64, i8* }*, { i64, i8* }** %2106
  %2108 = call i64 @nyx_array_length({ i64, i8* }* %2107)
  %2109 = icmp sge i64 %2108, 5
  br i1 %2109, label %then411, label %else412
then411:
  %2110 = load { i64, i8* }*, { i64, i8* }** %2106
  %2111 = call i64 @nyx_array_get_checked({ i64, i8* }* %2110, i64 0, i64 2)
  %2112 = inttoptr i64 %2111 to %nyx_string*
  %2113 = alloca %nyx_string*
  store %nyx_string* %2112, %nyx_string** %2113
  %2114 = load { i64, i8* }*, { i64, i8* }** %2106
  %2115 = call i64 @nyx_array_get_checked({ i64, i8* }* %2114, i64 1, i64 2)
  %2116 = inttoptr i64 %2115 to %nyx_string*
  %2117 = alloca %nyx_string*
  store %nyx_string* %2116, %nyx_string** %2117
  %2118 = load { i64, i8* }*, { i64, i8* }** %2106
  %2119 = call i64 @nyx_array_get_checked({ i64, i8* }* %2118, i64 3, i64 2)
  %2120 = inttoptr i64 %2119 to %nyx_string*
  %2121 = alloca %nyx_string*
  store %nyx_string* %2120, %nyx_string** %2121
  %2122 = load { i64, i8* }*, { i64, i8* }** %2106
  %2123 = call i64 @nyx_array_get_checked({ i64, i8* }* %2122, i64 4, i64 2)
  %2124 = inttoptr i64 %2123 to %nyx_string*
  %2125 = alloca %nyx_string*
  store %nyx_string* %2124, %nyx_string** %2125
  %2126 = load %nyx_string*, %nyx_string** %2117
  %2127 = load %nyx_string*, %nyx_string** %2059
  %2128 = call i1 @nyx_string_equals(%nyx_string* %2126, %nyx_string* %2127)
  %2129 = xor i1 %2128, true
  br i1 %2129, label %then414, label %else415
then414:
  %2130 = load i8*, i8** %2047
  %2131 = load %nyx_string*, %nyx_string** %2117
  %2132 = load %nyx_string*, %nyx_string** %2062
  %2133 = call i8* @nyx_string_to_cstr(%nyx_string* %2131)
  %2134 = call i8* @nyx_string_to_cstr(%nyx_string* %2132)
  call void @nyx_map_insert_str(i8* %2130, i8* %2133, i8* %2134)
  br label %merge416
else415:
  br label %merge416
merge416:
  %2135 = load i8*, i8** %1911
  %2136 = load %nyx_string*, %nyx_string** %2075
  %2137 = call i8* @nyx_string_to_cstr(%nyx_string* %2136)
  %2138 = call i1 @nyx_map_contains_str(i8* %2135, i8* %2137)
  br i1 %2138, label %then417, label %else418
then417:
  %2139 = load i8*, i8** %2041
  %2140 = load %nyx_string*, %nyx_string** %2113
  %2141 = load %nyx_string*, %nyx_string** %2062
  %2142 = call i8* @nyx_string_to_cstr(%nyx_string* %2140)
  %2143 = call i8* @nyx_string_to_cstr(%nyx_string* %2141)
  call void @nyx_map_insert_str(i8* %2139, i8* %2142, i8* %2143)
  %2144 = alloca i1
  store i1 false, i1* %2144
  %2145 = load %nyx_string*, %nyx_string** %2125
  %2146 = load %nyx_string*, %nyx_string** %2065
  %2147 = call i1 @nyx_string_equals(%nyx_string* %2145, %nyx_string* %2146)
  br i1 %2147, label %sc_and_rhs420, label %sc_and_end421
sc_and_rhs420:
  %2148 = load i8*, i8** %1975
  %2149 = load %nyx_string*, %nyx_string** %2113
  %2150 = call i8* @nyx_string_to_cstr(%nyx_string* %2149)
  %2151 = call i1 @nyx_map_contains_str(i8* %2148, i8* %2150)
  store i1 %2151, i1* %2144
  br label %sc_and_end421
sc_and_end421:
  %2152 = load i1, i1* %2144
  br i1 %2152, label %then422, label %else423
then422:
  %2153 = load i8*, i8** %2045
  %2154 = load %nyx_string*, %nyx_string** %2121
  %2155 = load %nyx_string*, %nyx_string** %2062
  %2156 = call i8* @nyx_string_to_cstr(%nyx_string* %2154)
  %2157 = call i8* @nyx_string_to_cstr(%nyx_string* %2155)
  call void @nyx_map_insert_str(i8* %2153, i8* %2156, i8* %2157)
  br label %merge424
else423:
  br label %merge424
merge424:
  br label %merge419
else418:
  %2158 = load i8*, i8** %2043
  %2159 = load %nyx_string*, %nyx_string** %2113
  %2160 = load %nyx_string*, %nyx_string** %2062
  %2161 = call i8* @nyx_string_to_cstr(%nyx_string* %2159)
  %2162 = call i8* @nyx_string_to_cstr(%nyx_string* %2160)
  call void @nyx_map_insert_str(i8* %2158, i8* %2161, i8* %2162)
  br label %merge419
merge419:
  br label %merge413
else412:
  br label %merge413
merge413:
  %2163 = load i64, i64* %2093
  %2164 = add i64 %2163, 1
  store i64 %2164, i64* %2093
  br label %while_cond408
while_end410:
  br label %merge407
else406:
  br label %merge407
merge407:
  %2165 = load i64, i64* %1914
  %2166 = add i64 %2165, 1
  store i64 %2166, i64* %1914
  br label %while_cond402
while_end404:
  %2167 = call { i64, i8* }* @cov_src_modules()
  %2168 = alloca { i64, i8* }*
  store { i64, i8* }* %2167, { i64, i8* }** %2168
  %2169 = load { i64, i8* }*, { i64, i8* }** %2168
  %2170 = call i64 @nyx_array_length({ i64, i8* }* %2169)
  %2171 = icmp eq i64 %2170, 0
  br i1 %2171, label %then425, label %else426
then425:
  %2172 = getelementptr [27 x i8], [27 x i8]* @.str202, i32 0, i32 0
  %2173 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str202.c, i8* %2172, i64 26)
  %2174 = call i8* @nyx_string_to_cstr(%nyx_string* %2173)
  call void @nyx_print_string(i8* %2174)
  ret i64 0
else426:
  br label %merge427
merge427:
  %2175 = load %nyx_string*, %nyx_string** %1894
  %2176 = load %nyx_string*, %nyx_string** %1899
  %2177 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2178 = load { i64, i8* }*, { i64, i8* }** %2168
  %2179 = call %nyx_string* @cov_universe(%nyx_string* %2175, %nyx_string* %2176, %nyx_string* %2177, { i64, i8* }* %2178)
  %2180 = alloca %nyx_string*
  store %nyx_string* %2179, %nyx_string** %2180
  %2181 = load %nyx_string*, %nyx_string** %2180
  %2182 = call i8* @nyx_string_to_cstr(%nyx_string* %2181)
  %2183 = call i1 @nyx_file_exists(i8* %2182)
  %2184 = xor i1 %2183, true
  br i1 %2184, label %then428, label %else429
then428:
  %2185 = getelementptr [68 x i8], [68 x i8]* @.str203, i32 0, i32 0
  %2186 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str203.c, i8* %2185, i64 67)
  %2187 = call i8* @nyx_string_to_cstr(%nyx_string* %2186)
  call void @nyx_print_string(i8* %2187)
  %2188 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2189 = getelementptr [14 x i8], [14 x i8]* @.str204, i32 0, i32 0
  %2190 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str204.c, i8* %2189, i64 13)
  %2191 = call %nyx_string* @nyx_string_concat(%nyx_string* %2188, %nyx_string* %2190)
  %2192 = call i8* @nyx_string_to_cstr(%nyx_string* %2191)
  %2193 = call i1 @nyx_file_exists(i8* %2192)
  br i1 %2193, label %then431, label %else432
then431:
  %2194 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2195 = getelementptr [14 x i8], [14 x i8]* @.str205, i32 0, i32 0
  %2196 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str205.c, i8* %2195, i64 13)
  %2197 = call %nyx_string* @nyx_string_concat(%nyx_string* %2194, %nyx_string* %2196)
  %2198 = call i8* @nyx_string_to_cstr(%nyx_string* %2197)
  %2199 = call %nyx_string* @nyx_read_file(i8* %2198)
  %2200 = call i8* @nyx_string_to_cstr(%nyx_string* %2199)
  call void @nyx_print_string(i8* %2200)
  br label %merge433
else432:
  br label %merge433
merge433:
  ret i64 1
else429:
  br label %merge430
merge430:
  %2201 = load %nyx_string*, %nyx_string** %2180
  %2202 = call i8* @nyx_string_to_cstr(%nyx_string* %2201)
  %2203 = call %nyx_string* @nyx_read_file(i8* %2202)
  %2204 = getelementptr [2 x i8], [2 x i8]* @.str206, i32 0, i32 0
  %2205 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str206.c, i8* %2204, i64 1)
  %2206 = call { i64, i8* }* @nyx_string_split(%nyx_string* %2203, %nyx_string* %2205)
  %2207 = alloca { i64, i8* }*
  store { i64, i8* }* %2206, { i64, i8* }** %2207
  %2208 = call { i64, i8* }* @nyx_array_new_ptr()
  %2209 = alloca { i64, i8* }*
  store { i64, i8* }* %2208, { i64, i8* }** %2209
  %2210 = alloca i64
  store i64 0, i64* %2210
  %2211 = getelementptr [3 x i8], [3 x i8]* @.str207, i32 0, i32 0
  %2212 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str207.c, i8* %2211, i64 2)
  %2213 = alloca %nyx_string*
  store %nyx_string* %2212, %nyx_string** %2213
  %2214 = getelementptr [7 x i8], [7 x i8]* @.str208, i32 0, i32 0
  %2215 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str208.c, i8* %2214, i64 6)
  %2216 = alloca %nyx_string*
  store %nyx_string* %2215, %nyx_string** %2216
  %2217 = getelementptr [6 x i8], [6 x i8]* @.str209, i32 0, i32 0
  %2218 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str209.c, i8* %2217, i64 5)
  %2219 = alloca %nyx_string*
  store %nyx_string* %2218, %nyx_string** %2219
  %2220 = getelementptr [9 x i8], [9 x i8]* @.str210, i32 0, i32 0
  %2221 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str210.c, i8* %2220, i64 8)
  %2222 = alloca %nyx_string*
  store %nyx_string* %2221, %nyx_string** %2222
  %2223 = getelementptr [5 x i8], [5 x i8]* @.str211, i32 0, i32 0
  %2224 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str211.c, i8* %2223, i64 4)
  %2225 = alloca %nyx_string*
  store %nyx_string* %2224, %nyx_string** %2225
  %2226 = getelementptr [5 x i8], [5 x i8]* @.str212, i32 0, i32 0
  %2227 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str212.c, i8* %2226, i64 4)
  %2228 = alloca %nyx_string*
  store %nyx_string* %2227, %nyx_string** %2228
  %2229 = getelementptr [3 x i8], [3 x i8]* @.str213, i32 0, i32 0
  %2230 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str213.c, i8* %2229, i64 2)
  %2231 = alloca %nyx_string*
  store %nyx_string* %2230, %nyx_string** %2231
  %2232 = getelementptr [3 x i8], [3 x i8]* @.str214, i32 0, i32 0
  %2233 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str214.c, i8* %2232, i64 2)
  %2234 = alloca %nyx_string*
  store %nyx_string* %2233, %nyx_string** %2234
  %2235 = getelementptr [10 x i8], [10 x i8]* @.str215, i32 0, i32 0
  %2236 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str215.c, i8* %2235, i64 9)
  %2237 = alloca %nyx_string*
  store %nyx_string* %2236, %nyx_string** %2237
  %2238 = getelementptr [5 x i8], [5 x i8]* @.str216, i32 0, i32 0
  %2239 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str216.c, i8* %2238, i64 4)
  %2240 = alloca %nyx_string*
  store %nyx_string* %2239, %nyx_string** %2240
  %2241 = getelementptr [2 x i8], [2 x i8]* @.str217, i32 0, i32 0
  %2242 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str217.c, i8* %2241, i64 1)
  %2243 = alloca %nyx_string*
  store %nyx_string* %2242, %nyx_string** %2243
  %2244 = call i8* @llvm.stacksave()
  br label %while_cond434
while_cond434:
  %2245 = load i64, i64* %2210
  %2246 = load { i64, i8* }*, { i64, i8* }** %2207
  %2247 = call i64 @nyx_array_length({ i64, i8* }* %2246)
  %2248 = icmp slt i64 %2245, %2247
  br i1 %2248, label %while_body435, label %while_end436
while_body435:
  call void @llvm.stackrestore(i8* %2244)
  %2249 = load { i64, i8* }*, { i64, i8* }** %2207
  %2250 = load i64, i64* %2210
  %2251 = call i64 @nyx_array_get_checked({ i64, i8* }* %2249, i64 %2250, i64 2)
  %2252 = inttoptr i64 %2251 to %nyx_string*
  %2253 = alloca %nyx_string*
  store %nyx_string* %2252, %nyx_string** %2253
  %2254 = load %nyx_string*, %nyx_string** %2253
  %2255 = call { i64, i8* }* @cov_fields(%nyx_string* %2254)
  %2256 = alloca { i64, i8* }*
  store { i64, i8* }* %2255, { i64, i8* }** %2256
  %2257 = load { i64, i8* }*, { i64, i8* }** %2256
  %2258 = call i64 @nyx_array_length({ i64, i8* }* %2257)
  %2259 = icmp sge i64 %2258, 5
  br i1 %2259, label %then437, label %else438
then437:
  %2260 = load { i64, i8* }*, { i64, i8* }** %2256
  %2261 = call i64 @nyx_array_get_checked({ i64, i8* }* %2260, i64 0, i64 2)
  %2262 = inttoptr i64 %2261 to %nyx_string*
  %2263 = alloca %nyx_string*
  store %nyx_string* %2262, %nyx_string** %2263
  %2264 = load { i64, i8* }*, { i64, i8* }** %2256
  %2265 = call i64 @nyx_array_get_checked({ i64, i8* }* %2264, i64 1, i64 2)
  %2266 = inttoptr i64 %2265 to %nyx_string*
  %2267 = alloca %nyx_string*
  store %nyx_string* %2266, %nyx_string** %2267
  %2268 = load { i64, i8* }*, { i64, i8* }** %2256
  %2269 = call i64 @nyx_array_get_checked({ i64, i8* }* %2268, i64 2, i64 2)
  %2270 = inttoptr i64 %2269 to %nyx_string*
  %2271 = alloca %nyx_string*
  store %nyx_string* %2270, %nyx_string** %2271
  %2272 = load { i64, i8* }*, { i64, i8* }** %2256
  %2273 = call i64 @nyx_array_get_checked({ i64, i8* }* %2272, i64 3, i64 2)
  %2274 = inttoptr i64 %2273 to %nyx_string*
  %2275 = alloca %nyx_string*
  store %nyx_string* %2274, %nyx_string** %2275
  %2276 = load { i64, i8* }*, { i64, i8* }** %2256
  %2277 = call i64 @nyx_array_get_checked({ i64, i8* }* %2276, i64 4, i64 2)
  %2278 = inttoptr i64 %2277 to %nyx_string*
  %2279 = alloca %nyx_string*
  store %nyx_string* %2278, %nyx_string** %2279
  %2280 = alloca i1
  store i1 true, i1* %2280
  %2281 = alloca i1
  store i1 true, i1* %2281
  %2282 = alloca i1
  store i1 true, i1* %2282
  %2283 = load %nyx_string*, %nyx_string** %2279
  %2284 = load %nyx_string*, %nyx_string** %2213
  %2285 = call i1 @nyx_string_equals(%nyx_string* %2283, %nyx_string* %2284)
  br i1 %2285, label %sc_or_end441, label %sc_or_rhs440
sc_or_rhs440:
  %2286 = load %nyx_string*, %nyx_string** %2279
  %2287 = load %nyx_string*, %nyx_string** %2216
  %2288 = call i1 @nyx_string_equals(%nyx_string* %2286, %nyx_string* %2287)
  store i1 %2288, i1* %2282
  br label %sc_or_end441
sc_or_end441:
  %2289 = load i1, i1* %2282
  br i1 %2289, label %sc_or_end443, label %sc_or_rhs442
sc_or_rhs442:
  %2290 = load %nyx_string*, %nyx_string** %2279
  %2291 = load %nyx_string*, %nyx_string** %2219
  %2292 = call i1 @nyx_string_equals(%nyx_string* %2290, %nyx_string* %2291)
  store i1 %2292, i1* %2281
  br label %sc_or_end443
sc_or_end443:
  %2293 = load i1, i1* %2281
  br i1 %2293, label %sc_or_end445, label %sc_or_rhs444
sc_or_rhs444:
  %2294 = load %nyx_string*, %nyx_string** %2279
  %2295 = load %nyx_string*, %nyx_string** %2222
  %2296 = call i1 @nyx_string_equals(%nyx_string* %2294, %nyx_string* %2295)
  store i1 %2296, i1* %2280
  br label %sc_or_end445
sc_or_end445:
  %2297 = load i1, i1* %2280
  %2298 = alloca i1
  store i1 %2297, i1* %2298
  %2299 = alloca i1
  store i1 false, i1* %2299
  %2300 = alloca i1
  store i1 false, i1* %2300
  %2301 = load i1, i1* %2298
  br i1 %2301, label %sc_and_rhs446, label %sc_and_end447
sc_and_rhs446:
  %2302 = load %nyx_string*, %nyx_string** %2267
  %2303 = load %nyx_string*, %nyx_string** %2225
  %2304 = call i1 @nyx_string_starts_with(%nyx_string* %2302, %nyx_string* %2303)
  store i1 %2304, i1* %2300
  br label %sc_and_end447
sc_and_end447:
  %2305 = load i1, i1* %2300
  br i1 %2305, label %sc_and_rhs448, label %sc_and_end449
sc_and_rhs448:
  %2306 = load %nyx_string*, %nyx_string** %2275
  %2307 = load %nyx_string*, %nyx_string** %2228
  %2308 = call i1 @nyx_string_equals(%nyx_string* %2306, %nyx_string* %2307)
  %2309 = xor i1 %2308, true
  store i1 %2309, i1* %2299
  br label %sc_and_end449
sc_and_end449:
  %2310 = load i1, i1* %2299
  br i1 %2310, label %then450, label %else451
then450:
  %2311 = load i8*, i8** %1975
  %2312 = load %nyx_string*, %nyx_string** %2263
  %2313 = call i8* @nyx_string_to_cstr(%nyx_string* %2312)
  %2314 = call i1 @nyx_map_contains_str(i8* %2311, i8* %2313)
  %2315 = alloca i1
  store i1 %2314, i1* %2315
  %2316 = load %nyx_string*, %nyx_string** %2279
  %2317 = load %nyx_string*, %nyx_string** %2222
  %2318 = call i1 @nyx_string_equals(%nyx_string* %2316, %nyx_string* %2317)
  br i1 %2318, label %then453, label %else454
then453:
  %2319 = load i8*, i8** %2045
  %2320 = load %nyx_string*, %nyx_string** %2263
  %2321 = call i8* @nyx_string_to_cstr(%nyx_string* %2320)
  %2322 = call i1 @nyx_map_contains_str(i8* %2319, i8* %2321)
  store i1 %2322, i1* %2315
  br label %merge455
else454:
  br label %merge455
merge455:
  %2323 = load %nyx_string*, %nyx_string** %2231
  %2324 = alloca %nyx_string*
  store %nyx_string* %2323, %nyx_string** %2324
  %2325 = load i1, i1* %2315
  br i1 %2325, label %then456, label %else457
then456:
  %2326 = load %nyx_string*, %nyx_string** %2234
  store %nyx_string* %2326, %nyx_string** %2324
  br label %merge458
else457:
  %2327 = alloca i1
  store i1 false, i1* %2327
  %2328 = load i8*, i8** %2041
  %2329 = load %nyx_string*, %nyx_string** %2263
  %2330 = call i8* @nyx_string_to_cstr(%nyx_string* %2329)
  %2331 = call i1 @nyx_map_contains_str(i8* %2328, i8* %2330)
  %2332 = xor i1 %2331, true
  br i1 %2332, label %sc_and_rhs459, label %sc_and_end460
sc_and_rhs459:
  %2333 = load i8*, i8** %2043
  %2334 = load %nyx_string*, %nyx_string** %2263
  %2335 = call i8* @nyx_string_to_cstr(%nyx_string* %2334)
  %2336 = call i1 @nyx_map_contains_str(i8* %2333, i8* %2335)
  store i1 %2336, i1* %2327
  br label %sc_and_end460
sc_and_end460:
  %2337 = load i1, i1* %2327
  br i1 %2337, label %then461, label %else462
then461:
  %2338 = load %nyx_string*, %nyx_string** %2237
  store %nyx_string* %2338, %nyx_string** %2324
  br label %merge463
else462:
  br label %merge463
merge463:
  br label %merge458
merge458:
  %2339 = load { i64, i8* }*, { i64, i8* }** %2209
  %2340 = load %nyx_string*, %nyx_string** %2267
  %2341 = load %nyx_string*, %nyx_string** %2240
  %2342 = call %nyx_string* @nyx_string_concat(%nyx_string* %2340, %nyx_string* %2341)
  %2343 = load %nyx_string*, %nyx_string** %2271
  %2344 = call i64 @nyx_string_to_int(%nyx_string* %2343)
  %2345 = call %nyx_string* @cov_pad(i64 %2344)
  %2346 = call %nyx_string* @nyx_string_concat(%nyx_string* %2342, %nyx_string* %2345)
  %2347 = load %nyx_string*, %nyx_string** %2243
  %2348 = call %nyx_string* @nyx_string_concat(%nyx_string* %2346, %nyx_string* %2347)
  %2349 = load %nyx_string*, %nyx_string** %2275
  %2350 = call %nyx_string* @nyx_string_concat(%nyx_string* %2348, %nyx_string* %2349)
  %2351 = load %nyx_string*, %nyx_string** %2243
  %2352 = call %nyx_string* @nyx_string_concat(%nyx_string* %2350, %nyx_string* %2351)
  %2353 = load %nyx_string*, %nyx_string** %2324
  %2354 = call %nyx_string* @nyx_string_concat(%nyx_string* %2352, %nyx_string* %2353)
  %2355 = load %nyx_string*, %nyx_string** %2243
  %2356 = call %nyx_string* @nyx_string_concat(%nyx_string* %2354, %nyx_string* %2355)
  %2357 = load %nyx_string*, %nyx_string** %2267
  %2358 = call %nyx_string* @nyx_string_concat(%nyx_string* %2356, %nyx_string* %2357)
  %2359 = ptrtoint %nyx_string* %2358 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2339, i64 %2359, i64 2)
  br label %merge452
else451:
  br label %merge452
merge452:
  br label %merge439
else438:
  br label %merge439
merge439:
  %2360 = load i64, i64* %2210
  %2361 = add i64 %2360, 1
  store i64 %2361, i64* %2210
  br label %while_cond434
while_end436:
  %2362 = load { i64, i8* }*, { i64, i8* }** %2209
  %2363 = call { i64, i8* }* @sort_str({ i64, i8* }* %2362)
  %2364 = alloca { i64, i8* }*
  store { i64, i8* }* %2363, { i64, i8* }** %2364
  %2365 = getelementptr [1 x i8], [1 x i8]* @.str218, i32 0, i32 0
  %2366 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str218.c, i8* %2365, i64 0)
  %2367 = alloca %nyx_string*
  store %nyx_string* %2366, %nyx_string** %2367
  %2368 = alloca i64
  store i64 0, i64* %2368
  %2369 = alloca i64
  store i64 0, i64* %2369
  %2370 = alloca i64
  store i64 0, i64* %2370
  %2371 = getelementptr [1 x i8], [1 x i8]* @.str219, i32 0, i32 0
  %2372 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str219.c, i8* %2371, i64 0)
  %2373 = alloca %nyx_string*
  store %nyx_string* %2372, %nyx_string** %2373
  %2374 = getelementptr [10 x i8], [10 x i8]* @.str220, i32 0, i32 0
  %2375 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str220.c, i8* %2374, i64 9)
  %2376 = alloca %nyx_string*
  store %nyx_string* %2375, %nyx_string** %2376
  %2377 = getelementptr [2 x i8], [2 x i8]* @.str221, i32 0, i32 0
  %2378 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str221.c, i8* %2377, i64 1)
  %2379 = alloca %nyx_string*
  store %nyx_string* %2378, %nyx_string** %2379
  %2380 = getelementptr [3 x i8], [3 x i8]* @.str222, i32 0, i32 0
  %2381 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str222.c, i8* %2380, i64 2)
  %2382 = alloca %nyx_string*
  store %nyx_string* %2381, %nyx_string** %2382
  %2383 = getelementptr [2 x i8], [2 x i8]* @.str223, i32 0, i32 0
  %2384 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str223.c, i8* %2383, i64 1)
  %2385 = alloca %nyx_string*
  store %nyx_string* %2384, %nyx_string** %2385
  %2386 = getelementptr [5 x i8], [5 x i8]* @.str224, i32 0, i32 0
  %2387 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str224.c, i8* %2386, i64 4)
  %2388 = alloca %nyx_string*
  store %nyx_string* %2387, %nyx_string** %2388
  %2389 = getelementptr [2 x i8], [2 x i8]* @.str225, i32 0, i32 0
  %2390 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str225.c, i8* %2389, i64 1)
  %2391 = alloca %nyx_string*
  store %nyx_string* %2390, %nyx_string** %2391
  %2392 = getelementptr [2 x i8], [2 x i8]* @.str226, i32 0, i32 0
  %2393 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str226.c, i8* %2392, i64 1)
  %2394 = alloca %nyx_string*
  store %nyx_string* %2393, %nyx_string** %2394
  %2395 = getelementptr [4 x i8], [4 x i8]* @.str227, i32 0, i32 0
  %2396 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str227.c, i8* %2395, i64 3)
  %2397 = alloca %nyx_string*
  store %nyx_string* %2396, %nyx_string** %2397
  %2398 = getelementptr [2 x i8], [2 x i8]* @.str228, i32 0, i32 0
  %2399 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str228.c, i8* %2398, i64 1)
  %2400 = alloca %nyx_string*
  store %nyx_string* %2399, %nyx_string** %2400
  %2401 = getelementptr [2 x i8], [2 x i8]* @.str229, i32 0, i32 0
  %2402 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str229.c, i8* %2401, i64 1)
  %2403 = alloca %nyx_string*
  store %nyx_string* %2402, %nyx_string** %2403
  %2404 = getelementptr [6 x i8], [6 x i8]* @.str230, i32 0, i32 0
  %2405 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str230.c, i8* %2404, i64 5)
  %2406 = alloca %nyx_string*
  store %nyx_string* %2405, %nyx_string** %2406
  %2407 = getelementptr [3 x i8], [3 x i8]* @.str231, i32 0, i32 0
  %2408 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str231.c, i8* %2407, i64 2)
  %2409 = alloca %nyx_string*
  store %nyx_string* %2408, %nyx_string** %2409
  %2410 = getelementptr [3 x i8], [3 x i8]* @.str232, i32 0, i32 0
  %2411 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str232.c, i8* %2410, i64 2)
  %2412 = alloca %nyx_string*
  store %nyx_string* %2411, %nyx_string** %2412
  %2413 = getelementptr [2 x i8], [2 x i8]* @.str233, i32 0, i32 0
  %2414 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str233.c, i8* %2413, i64 1)
  %2415 = alloca %nyx_string*
  store %nyx_string* %2414, %nyx_string** %2415
  %2416 = getelementptr [10 x i8], [10 x i8]* @.str234, i32 0, i32 0
  %2417 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str234.c, i8* %2416, i64 9)
  %2418 = alloca %nyx_string*
  store %nyx_string* %2417, %nyx_string** %2418
  %2419 = getelementptr [29 x i8], [29 x i8]* @.str235, i32 0, i32 0
  %2420 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str235.c, i8* %2419, i64 28)
  %2421 = alloca %nyx_string*
  store %nyx_string* %2420, %nyx_string** %2421
  %2422 = getelementptr [3 x i8], [3 x i8]* @.str236, i32 0, i32 0
  %2423 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str236.c, i8* %2422, i64 2)
  %2424 = alloca %nyx_string*
  store %nyx_string* %2423, %nyx_string** %2424
  %2425 = getelementptr [38 x i8], [38 x i8]* @.str237, i32 0, i32 0
  %2426 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str237.c, i8* %2425, i64 37)
  %2427 = alloca %nyx_string*
  store %nyx_string* %2426, %nyx_string** %2427
  %2428 = getelementptr [4 x i8], [4 x i8]* @.str238, i32 0, i32 0
  %2429 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str238.c, i8* %2428, i64 3)
  %2430 = alloca %nyx_string*
  store %nyx_string* %2429, %nyx_string** %2430
  %2431 = getelementptr [5 x i8], [5 x i8]* @.str239, i32 0, i32 0
  %2432 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str239.c, i8* %2431, i64 4)
  %2433 = alloca %nyx_string*
  store %nyx_string* %2432, %nyx_string** %2433
  %2434 = getelementptr [6 x i8], [6 x i8]* @.str240, i32 0, i32 0
  %2435 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str240.c, i8* %2434, i64 5)
  %2436 = alloca %nyx_string*
  store %nyx_string* %2435, %nyx_string** %2436
  %2437 = getelementptr [16 x i8], [16 x i8]* @.str241, i32 0, i32 0
  %2438 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str241.c, i8* %2437, i64 15)
  %2439 = alloca %nyx_string*
  store %nyx_string* %2438, %nyx_string** %2439
  %2440 = call i8* @llvm.stacksave()
  br label %while_cond464
while_cond464:
  %2441 = load i64, i64* %2370
  %2442 = load { i64, i8* }*, { i64, i8* }** %2364
  %2443 = call i64 @nyx_array_length({ i64, i8* }* %2442)
  %2444 = icmp slt i64 %2441, %2443
  br i1 %2444, label %while_body465, label %while_end466
while_body465:
  call void @llvm.stackrestore(i8* %2440)
  %2445 = load { i64, i8* }*, { i64, i8* }** %2364
  %2446 = load i64, i64* %2370
  %2447 = call i64 @nyx_array_get_checked({ i64, i8* }* %2445, i64 %2446, i64 2)
  %2448 = inttoptr i64 %2447 to %nyx_string*
  %2449 = alloca %nyx_string*
  store %nyx_string* %2448, %nyx_string** %2449
  %2450 = load %nyx_string*, %nyx_string** %2449
  %2451 = call { i64, i8* }* @cov_fields(%nyx_string* %2450)
  %2452 = alloca { i64, i8* }*
  store { i64, i8* }* %2451, { i64, i8* }** %2452
  %2453 = load { i64, i8* }*, { i64, i8* }** %2452
  %2454 = call i64 @nyx_array_get_checked({ i64, i8* }* %2453, i64 0, i64 2)
  %2455 = inttoptr i64 %2454 to %nyx_string*
  %2456 = alloca %nyx_string*
  store %nyx_string* %2455, %nyx_string** %2456
  %2457 = load { i64, i8* }*, { i64, i8* }** %2452
  %2458 = call i64 @nyx_array_get_checked({ i64, i8* }* %2457, i64 4, i64 2)
  %2459 = inttoptr i64 %2458 to %nyx_string*
  %2460 = alloca %nyx_string*
  store %nyx_string* %2459, %nyx_string** %2460
  %2461 = alloca i64
  store i64 0, i64* %2461
  %2462 = alloca i64
  store i64 0, i64* %2462
  %2463 = alloca i64
  store i64 0, i64* %2463
  %2464 = call { i64, i8* }* @nyx_array_new_ptr()
  %2465 = alloca { i64, i8* }*
  store { i64, i8* }* %2464, { i64, i8* }** %2465
  %2466 = load %nyx_string*, %nyx_string** %2373
  %2467 = alloca %nyx_string*
  store %nyx_string* %2466, %nyx_string** %2467
  %2468 = load %nyx_string*, %nyx_string** %2373
  %2469 = alloca %nyx_string*
  store %nyx_string* %2468, %nyx_string** %2469
  %2470 = load i64, i64* %2370
  %2471 = alloca i64
  store i64 %2470, i64* %2471
  %2472 = alloca i1
  store i1 1, i1* %2472
  %2473 = call i8* @llvm.stacksave()
  br label %while_cond467
while_cond467:
  %2474 = alloca i1
  store i1 false, i1* %2474
  %2475 = load i64, i64* %2471
  %2476 = load { i64, i8* }*, { i64, i8* }** %2364
  %2477 = call i64 @nyx_array_length({ i64, i8* }* %2476)
  %2478 = icmp slt i64 %2475, %2477
  br i1 %2478, label %sc_and_rhs470, label %sc_and_end471
sc_and_rhs470:
  %2479 = load i1, i1* %2472
  store i1 %2479, i1* %2474
  br label %sc_and_end471
sc_and_end471:
  %2480 = load i1, i1* %2474
  br i1 %2480, label %while_body468, label %while_end469
while_body468:
  call void @llvm.stackrestore(i8* %2473)
  %2481 = load { i64, i8* }*, { i64, i8* }** %2364
  %2482 = load i64, i64* %2471
  %2483 = call i64 @nyx_array_get_checked({ i64, i8* }* %2481, i64 %2482, i64 2)
  %2484 = inttoptr i64 %2483 to %nyx_string*
  %2485 = alloca %nyx_string*
  store %nyx_string* %2484, %nyx_string** %2485
  %2486 = load %nyx_string*, %nyx_string** %2485
  %2487 = call { i64, i8* }* @cov_fields(%nyx_string* %2486)
  %2488 = alloca { i64, i8* }*
  store { i64, i8* }* %2487, { i64, i8* }** %2488
  %2489 = load { i64, i8* }*, { i64, i8* }** %2488
  %2490 = call i64 @nyx_array_get_checked({ i64, i8* }* %2489, i64 0, i64 2)
  %2491 = inttoptr i64 %2490 to %nyx_string*
  %2492 = alloca %nyx_string*
  store %nyx_string* %2491, %nyx_string** %2492
  %2493 = load %nyx_string*, %nyx_string** %2492
  %2494 = load %nyx_string*, %nyx_string** %2456
  %2495 = call i1 @nyx_string_equals(%nyx_string* %2493, %nyx_string* %2494)
  %2496 = xor i1 %2495, true
  br i1 %2496, label %then472, label %else473
then472:
  store i1 0, i1* %2472
  br label %merge474
else473:
  %2497 = load { i64, i8* }*, { i64, i8* }** %2488
  %2498 = call i64 @nyx_array_get({ i64, i8* }* %2497, i64 1)
  %2499 = inttoptr i64 %2498 to %nyx_string*
  %2500 = call i64 @nyx_string_to_int(%nyx_string* %2499)
  %2501 = alloca i64
  store i64 %2500, i64* %2501
  %2502 = load { i64, i8* }*, { i64, i8* }** %2488
  %2503 = call i64 @nyx_array_get_checked({ i64, i8* }* %2502, i64 2, i64 2)
  %2504 = inttoptr i64 %2503 to %nyx_string*
  %2505 = alloca %nyx_string*
  store %nyx_string* %2504, %nyx_string** %2505
  %2506 = load { i64, i8* }*, { i64, i8* }** %2488
  %2507 = call i64 @nyx_array_get_checked({ i64, i8* }* %2506, i64 3, i64 2)
  %2508 = inttoptr i64 %2507 to %nyx_string*
  %2509 = alloca %nyx_string*
  store %nyx_string* %2508, %nyx_string** %2509
  %2510 = load %nyx_string*, %nyx_string** %2509
  %2511 = load %nyx_string*, %nyx_string** %2376
  %2512 = call i1 @nyx_string_equals(%nyx_string* %2510, %nyx_string* %2511)
  br i1 %2512, label %then475, label %else476
then475:
  %2513 = load i64, i64* %2463
  %2514 = add i64 %2513, 1
  store i64 %2514, i64* %2463
  br label %merge477
else476:
  %2515 = load i64, i64* %2462
  %2516 = add i64 %2515, 1
  store i64 %2516, i64* %2462
  %2517 = load %nyx_string*, %nyx_string** %2379
  %2518 = alloca %nyx_string*
  store %nyx_string* %2517, %nyx_string** %2518
  %2519 = load %nyx_string*, %nyx_string** %2509
  %2520 = load %nyx_string*, %nyx_string** %2382
  %2521 = call i1 @nyx_string_equals(%nyx_string* %2519, %nyx_string* %2520)
  br i1 %2521, label %then478, label %else479
then478:
  %2522 = load i64, i64* %2461
  %2523 = add i64 %2522, 1
  store i64 %2523, i64* %2461
  %2524 = load %nyx_string*, %nyx_string** %2385
  store %nyx_string* %2524, %nyx_string** %2518
  br label %merge480
else479:
  %2525 = load { i64, i8* }*, { i64, i8* }** %2465
  %2526 = load %nyx_string*, %nyx_string** %2388
  %2527 = load %nyx_string*, %nyx_string** %2456
  %2528 = call %nyx_string* @nyx_string_concat(%nyx_string* %2526, %nyx_string* %2527)
  %2529 = load %nyx_string*, %nyx_string** %2391
  %2530 = call %nyx_string* @nyx_string_concat(%nyx_string* %2528, %nyx_string* %2529)
  %2531 = load i64, i64* %2501
  %2532 = call %nyx_string* @nyx_string_from_int(i64 %2531)
  %2533 = call %nyx_string* @nyx_string_concat(%nyx_string* %2530, %nyx_string* %2532)
  %2534 = load %nyx_string*, %nyx_string** %2394
  %2535 = call %nyx_string* @nyx_string_concat(%nyx_string* %2533, %nyx_string* %2534)
  %2536 = load %nyx_string*, %nyx_string** %2505
  %2537 = call %nyx_string* @nyx_string_concat(%nyx_string* %2535, %nyx_string* %2536)
  %2538 = ptrtoint %nyx_string* %2537 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2525, i64 %2538, i64 2)
  br label %merge480
merge480:
  %2539 = load %nyx_string*, %nyx_string** %2467
  %2540 = load %nyx_string*, %nyx_string** %2397
  %2541 = call %nyx_string* @nyx_string_concat(%nyx_string* %2539, %nyx_string* %2540)
  %2542 = load i64, i64* %2501
  %2543 = call %nyx_string* @nyx_string_from_int(i64 %2542)
  %2544 = call %nyx_string* @nyx_string_concat(%nyx_string* %2541, %nyx_string* %2543)
  %2545 = load %nyx_string*, %nyx_string** %2400
  %2546 = call %nyx_string* @nyx_string_concat(%nyx_string* %2544, %nyx_string* %2545)
  %2547 = load %nyx_string*, %nyx_string** %2505
  %2548 = call %nyx_string* @nyx_string_concat(%nyx_string* %2546, %nyx_string* %2547)
  %2549 = load %nyx_string*, %nyx_string** %2403
  %2550 = call %nyx_string* @nyx_string_concat(%nyx_string* %2548, %nyx_string* %2549)
  store %nyx_string* %2550, %nyx_string** %2467
  %2551 = load %nyx_string*, %nyx_string** %2469
  %2552 = load %nyx_string*, %nyx_string** %2406
  %2553 = call %nyx_string* @nyx_string_concat(%nyx_string* %2551, %nyx_string* %2552)
  %2554 = load %nyx_string*, %nyx_string** %2518
  %2555 = call %nyx_string* @nyx_string_concat(%nyx_string* %2553, %nyx_string* %2554)
  %2556 = load %nyx_string*, %nyx_string** %2400
  %2557 = call %nyx_string* @nyx_string_concat(%nyx_string* %2555, %nyx_string* %2556)
  %2558 = load %nyx_string*, %nyx_string** %2505
  %2559 = call %nyx_string* @nyx_string_concat(%nyx_string* %2557, %nyx_string* %2558)
  %2560 = load %nyx_string*, %nyx_string** %2403
  %2561 = call %nyx_string* @nyx_string_concat(%nyx_string* %2559, %nyx_string* %2560)
  store %nyx_string* %2561, %nyx_string** %2469
  br label %merge477
merge477:
  %2562 = load i64, i64* %2471
  %2563 = add i64 %2562, 1
  store i64 %2563, i64* %2471
  br label %merge474
merge474:
  br label %while_cond467
while_end469:
  %2564 = load %nyx_string*, %nyx_string** %2409
  %2565 = load %nyx_string*, %nyx_string** %2456
  %2566 = call %nyx_string* @nyx_string_concat(%nyx_string* %2564, %nyx_string* %2565)
  %2567 = load %nyx_string*, %nyx_string** %2412
  %2568 = call %nyx_string* @nyx_string_concat(%nyx_string* %2566, %nyx_string* %2567)
  %2569 = load i64, i64* %2461
  %2570 = call %nyx_string* @nyx_string_from_int(i64 %2569)
  %2571 = call %nyx_string* @nyx_string_concat(%nyx_string* %2568, %nyx_string* %2570)
  %2572 = load %nyx_string*, %nyx_string** %2415
  %2573 = call %nyx_string* @nyx_string_concat(%nyx_string* %2571, %nyx_string* %2572)
  %2574 = load i64, i64* %2462
  %2575 = call %nyx_string* @nyx_string_from_int(i64 %2574)
  %2576 = call %nyx_string* @nyx_string_concat(%nyx_string* %2573, %nyx_string* %2575)
  %2577 = load %nyx_string*, %nyx_string** %2418
  %2578 = call %nyx_string* @nyx_string_concat(%nyx_string* %2576, %nyx_string* %2577)
  %2579 = alloca %nyx_string*
  store %nyx_string* %2578, %nyx_string** %2579
  %2580 = load i8*, i8** %2047
  %2581 = load %nyx_string*, %nyx_string** %2460
  %2582 = call i8* @nyx_string_to_cstr(%nyx_string* %2581)
  %2583 = call i1 @nyx_map_contains_str(i8* %2580, i8* %2582)
  %2584 = xor i1 %2583, true
  br i1 %2584, label %then481, label %else482
then481:
  %2585 = load %nyx_string*, %nyx_string** %2579
  %2586 = load %nyx_string*, %nyx_string** %2421
  %2587 = call %nyx_string* @nyx_string_concat(%nyx_string* %2585, %nyx_string* %2586)
  store %nyx_string* %2587, %nyx_string** %2579
  br label %merge483
else482:
  br label %merge483
merge483:
  %2588 = load i64, i64* %2463
  %2589 = icmp sgt i64 %2588, 0
  br i1 %2589, label %then484, label %else485
then484:
  %2590 = load %nyx_string*, %nyx_string** %2579
  %2591 = load %nyx_string*, %nyx_string** %2424
  %2592 = call %nyx_string* @nyx_string_concat(%nyx_string* %2590, %nyx_string* %2591)
  %2593 = load i64, i64* %2463
  %2594 = call %nyx_string* @nyx_string_from_int(i64 %2593)
  %2595 = call %nyx_string* @nyx_string_concat(%nyx_string* %2592, %nyx_string* %2594)
  %2596 = load %nyx_string*, %nyx_string** %2427
  %2597 = call %nyx_string* @nyx_string_concat(%nyx_string* %2595, %nyx_string* %2596)
  store %nyx_string* %2597, %nyx_string** %2579
  br label %merge486
else485:
  br label %merge486
merge486:
  %2598 = load %nyx_string*, %nyx_string** %2579
  %2599 = call i8* @nyx_string_to_cstr(%nyx_string* %2598)
  call void @nyx_print_string(i8* %2599)
  %2600 = alloca i64
  store i64 0, i64* %2600
  %2601 = call i8* @llvm.stacksave()
  br label %while_cond487
while_cond487:
  %2602 = load i64, i64* %2600
  %2603 = load { i64, i8* }*, { i64, i8* }** %2465
  %2604 = call i64 @nyx_array_length({ i64, i8* }* %2603)
  %2605 = icmp slt i64 %2602, %2604
  br i1 %2605, label %while_body488, label %while_end489
while_body488:
  call void @llvm.stackrestore(i8* %2601)
  %2606 = load { i64, i8* }*, { i64, i8* }** %2465
  %2607 = load i64, i64* %2600
  %2608 = call i64 @nyx_array_get_checked({ i64, i8* }* %2606, i64 %2607, i64 2)
  %2609 = inttoptr i64 %2608 to %nyx_string*
  %2610 = alloca %nyx_string*
  store %nyx_string* %2609, %nyx_string** %2610
  %2611 = load %nyx_string*, %nyx_string** %2610
  %2612 = call i8* @nyx_string_to_cstr(%nyx_string* %2611)
  call void @nyx_print_string(i8* %2612)
  %2613 = load i64, i64* %2600
  %2614 = add i64 %2613, 1
  store i64 %2614, i64* %2600
  br label %while_cond487
while_end489:
  %2615 = load i64, i64* %2368
  %2616 = load i64, i64* %2461
  %2617 = add i64 %2615, %2616
  store i64 %2617, i64* %2368
  %2618 = load i64, i64* %2369
  %2619 = load i64, i64* %2462
  %2620 = add i64 %2618, %2619
  store i64 %2620, i64* %2369
  %2621 = load %nyx_string*, %nyx_string** %2367
  %2622 = load %nyx_string*, %nyx_string** %2430
  %2623 = call %nyx_string* @nyx_string_concat(%nyx_string* %2621, %nyx_string* %2622)
  %2624 = load %nyx_string*, %nyx_string** %2456
  %2625 = call %nyx_string* @nyx_string_concat(%nyx_string* %2623, %nyx_string* %2624)
  %2626 = load %nyx_string*, %nyx_string** %2403
  %2627 = call %nyx_string* @nyx_string_concat(%nyx_string* %2625, %nyx_string* %2626)
  %2628 = load %nyx_string*, %nyx_string** %2467
  %2629 = call %nyx_string* @nyx_string_concat(%nyx_string* %2627, %nyx_string* %2628)
  %2630 = load %nyx_string*, %nyx_string** %2469
  %2631 = call %nyx_string* @nyx_string_concat(%nyx_string* %2629, %nyx_string* %2630)
  %2632 = load %nyx_string*, %nyx_string** %2433
  %2633 = call %nyx_string* @nyx_string_concat(%nyx_string* %2631, %nyx_string* %2632)
  %2634 = load i64, i64* %2462
  %2635 = call %nyx_string* @nyx_string_from_int(i64 %2634)
  %2636 = call %nyx_string* @nyx_string_concat(%nyx_string* %2633, %nyx_string* %2635)
  %2637 = load %nyx_string*, %nyx_string** %2436
  %2638 = call %nyx_string* @nyx_string_concat(%nyx_string* %2636, %nyx_string* %2637)
  %2639 = load i64, i64* %2461
  %2640 = call %nyx_string* @nyx_string_from_int(i64 %2639)
  %2641 = call %nyx_string* @nyx_string_concat(%nyx_string* %2638, %nyx_string* %2640)
  %2642 = load %nyx_string*, %nyx_string** %2439
  %2643 = call %nyx_string* @nyx_string_concat(%nyx_string* %2641, %nyx_string* %2642)
  store %nyx_string* %2643, %nyx_string** %2367
  %2644 = load i64, i64* %2471
  store i64 %2644, i64* %2370
  br label %while_cond464
while_end466:
  %2645 = load { i64, i8* }*, { i64, i8* }** %1913
  %2646 = call i64 @nyx_array_length({ i64, i8* }* %2645)
  %2647 = icmp sgt i64 %2646, 0
  br i1 %2647, label %then490, label %else491
then490:
  %2648 = getelementptr [70 x i8], [70 x i8]* @.str242, i32 0, i32 0
  %2649 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str242.c, i8* %2648, i64 69)
  %2650 = call i8* @nyx_string_to_cstr(%nyx_string* %2649)
  call void @nyx_print_string(i8* %2650)
  %2651 = alloca i64
  store i64 0, i64* %2651
  %2652 = getelementptr [5 x i8], [5 x i8]* @.str243, i32 0, i32 0
  %2653 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str243.c, i8* %2652, i64 4)
  %2654 = alloca %nyx_string*
  store %nyx_string* %2653, %nyx_string** %2654
  %2655 = call i8* @llvm.stacksave()
  br label %while_cond493
while_cond493:
  %2656 = load i64, i64* %2651
  %2657 = load { i64, i8* }*, { i64, i8* }** %1913
  %2658 = call i64 @nyx_array_length({ i64, i8* }* %2657)
  %2659 = icmp slt i64 %2656, %2658
  br i1 %2659, label %while_body494, label %while_end495
while_body494:
  call void @llvm.stackrestore(i8* %2655)
  %2660 = load { i64, i8* }*, { i64, i8* }** %1913
  %2661 = load i64, i64* %2651
  %2662 = call i64 @nyx_array_get_checked({ i64, i8* }* %2660, i64 %2661, i64 2)
  %2663 = inttoptr i64 %2662 to %nyx_string*
  %2664 = alloca %nyx_string*
  store %nyx_string* %2663, %nyx_string** %2664
  %2665 = load %nyx_string*, %nyx_string** %2654
  %2666 = load %nyx_string*, %nyx_string** %2664
  %2667 = call %nyx_string* @nyx_string_concat(%nyx_string* %2665, %nyx_string* %2666)
  %2668 = call i8* @nyx_string_to_cstr(%nyx_string* %2667)
  call void @nyx_print_string(i8* %2668)
  %2669 = load i64, i64* %2651
  %2670 = add i64 %2669, 1
  store i64 %2670, i64* %2651
  br label %while_cond493
while_end495:
  br label %merge492
else491:
  br label %merge492
merge492:
  %2671 = getelementptr [10 x i8], [10 x i8]* @.str244, i32 0, i32 0
  %2672 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str244.c, i8* %2671, i64 9)
  %2673 = load i64, i64* %2368
  %2674 = call %nyx_string* @nyx_string_from_int(i64 %2673)
  %2675 = call %nyx_string* @nyx_string_concat(%nyx_string* %2672, %nyx_string* %2674)
  %2676 = getelementptr [2 x i8], [2 x i8]* @.str245, i32 0, i32 0
  %2677 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str245.c, i8* %2676, i64 1)
  %2678 = call %nyx_string* @nyx_string_concat(%nyx_string* %2675, %nyx_string* %2677)
  %2679 = load i64, i64* %2369
  %2680 = call %nyx_string* @nyx_string_from_int(i64 %2679)
  %2681 = call %nyx_string* @nyx_string_concat(%nyx_string* %2678, %nyx_string* %2680)
  %2682 = getelementptr [20 x i8], [20 x i8]* @.str246, i32 0, i32 0
  %2683 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str246.c, i8* %2682, i64 19)
  %2684 = call %nyx_string* @nyx_string_concat(%nyx_string* %2681, %nyx_string* %2683)
  %2685 = call i8* @nyx_string_to_cstr(%nyx_string* %2684)
  call void @nyx_print_string(i8* %2685)
  %2686 = load i1, i1* %want_lcov.ptr
  br i1 %2686, label %then496, label %else497
then496:
  %2687 = getelementptr [11 x i8], [11 x i8]* @.str247, i32 0, i32 0
  %2688 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str247.c, i8* %2687, i64 10)
  %2689 = load %nyx_string*, %nyx_string** %1899
  %2690 = call %nyx_string* @nyx_string_concat(%nyx_string* %2688, %nyx_string* %2689)
  %2691 = getelementptr [9 x i8], [9 x i8]* @.str248, i32 0, i32 0
  %2692 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str248.c, i8* %2691, i64 8)
  %2693 = call %nyx_string* @nyx_string_concat(%nyx_string* %2690, %nyx_string* %2692)
  %2694 = call i8* @nyx_string_to_cstr(%nyx_string* %2693)
  %2695 = call i64 @nyx_exec_code(i8* %2694)
  %2696 = load %nyx_string*, %nyx_string** %1899
  %2697 = getelementptr [22 x i8], [22 x i8]* @.str249, i32 0, i32 0
  %2698 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str249.c, i8* %2697, i64 21)
  %2699 = call %nyx_string* @nyx_string_concat(%nyx_string* %2696, %nyx_string* %2698)
  %2700 = load %nyx_string*, %nyx_string** %2367
  %2701 = call i8* @nyx_string_to_cstr(%nyx_string* %2699)
  %2702 = call i1 @nyx_write_file_safe(i8* %2701, %nyx_string* %2700)
  %2703 = getelementptr [29 x i8], [29 x i8]* @.str250, i32 0, i32 0
  %2704 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str250.c, i8* %2703, i64 28)
  %2705 = call i8* @nyx_string_to_cstr(%nyx_string* %2704)
  call void @nyx_print_string(i8* %2705)
  br label %merge498
else497:
  br label %merge498
merge498:
  ret i64 0
}

define internal i64 @print_valid_options(
) {
  %2706 = getelementptr [115 x i8], [115 x i8]* @.str251, i32 0, i32 0
  %2707 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str251.c, i8* %2706, i64 114)
  %2708 = call i8* @nyx_string_to_cstr(%nyx_string* %2707)
  call void @nyx_print_string(i8* %2708)
  ret i64 0
}

define i64 @main(
i32 %argc, i8** %argv) {
  call void @nyx_set_args(i32 %argc, i8** %argv)
  %2709 = getelementptr [24 x i8], [24 x i8]* @.str252, i32 0, i32 0
  %2710 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str252.c, i8* %2709, i64 23)
  %2711 = call i8* @nyx_string_to_cstr(%nyx_string* %2710)
  call void @nyx_print_string(i8* %2711)
  %2712 = call %TestConfig @load_test_config()
  %2713 = alloca %TestConfig
  store %TestConfig %2712, %TestConfig* %2713
  %2714 = call { i64, i8* }* @nyx_get_args()
  %2715 = alloca { i64, i8* }*
  store { i64, i8* }* %2714, { i64, i8* }** %2715
  %2716 = getelementptr [1 x i8], [1 x i8]* @.str253, i32 0, i32 0
  %2717 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str253.c, i8* %2716, i64 0)
  %2718 = alloca %nyx_string*
  store %nyx_string* %2717, %nyx_string** %2718
  %2719 = alloca i64
  store i64 1, i64* %2719
  %2720 = getelementptr [9 x i8], [9 x i8]* @.str254, i32 0, i32 0
  %2721 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str254.c, i8* %2720, i64 8)
  %2722 = alloca %nyx_string*
  store %nyx_string* %2721, %nyx_string** %2722
  %2723 = getelementptr [10 x i8], [10 x i8]* @.str255, i32 0, i32 0
  %2724 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str255.c, i8* %2723, i64 9)
  %2725 = alloca %nyx_string*
  store %nyx_string* %2724, %nyx_string** %2725
  %2726 = getelementptr [3 x i8], [3 x i8]* @.str256, i32 0, i32 0
  %2727 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str256.c, i8* %2726, i64 2)
  %2728 = alloca %nyx_string*
  store %nyx_string* %2727, %nyx_string** %2728
  %2729 = getelementptr [10 x i8], [10 x i8]* @.str257, i32 0, i32 0
  %2730 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str257.c, i8* %2729, i64 9)
  %2731 = alloca %nyx_string*
  store %nyx_string* %2730, %nyx_string** %2731
  %2732 = getelementptr [10 x i8], [10 x i8]* @.str258, i32 0, i32 0
  %2733 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str258.c, i8* %2732, i64 9)
  %2734 = alloca %nyx_string*
  store %nyx_string* %2733, %nyx_string** %2734
  %2735 = getelementptr [11 x i8], [11 x i8]* @.str259, i32 0, i32 0
  %2736 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str259.c, i8* %2735, i64 10)
  %2737 = alloca %nyx_string*
  store %nyx_string* %2736, %nyx_string** %2737
  %2738 = getelementptr [16 x i8], [16 x i8]* @.str260, i32 0, i32 0
  %2739 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str260.c, i8* %2738, i64 15)
  %2740 = alloca %nyx_string*
  store %nyx_string* %2739, %nyx_string** %2740
  %2741 = getelementptr [8 x i8], [8 x i8]* @.str261, i32 0, i32 0
  %2742 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str261.c, i8* %2741, i64 7)
  %2743 = alloca %nyx_string*
  store %nyx_string* %2742, %nyx_string** %2743
  %2744 = getelementptr [12 x i8], [12 x i8]* @.str262, i32 0, i32 0
  %2745 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str262.c, i8* %2744, i64 11)
  %2746 = alloca %nyx_string*
  store %nyx_string* %2745, %nyx_string** %2746
  %2747 = getelementptr [24 x i8], [24 x i8]* @.str263, i32 0, i32 0
  %2748 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str263.c, i8* %2747, i64 23)
  %2749 = alloca %nyx_string*
  store %nyx_string* %2748, %nyx_string** %2749
  %2750 = getelementptr [106 x i8], [106 x i8]* @.str264, i32 0, i32 0
  %2751 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str264.c, i8* %2750, i64 105)
  %2752 = alloca %nyx_string*
  store %nyx_string* %2751, %nyx_string** %2752
  %2753 = getelementptr [9 x i8], [9 x i8]* @.str265, i32 0, i32 0
  %2754 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str265.c, i8* %2753, i64 8)
  %2755 = alloca %nyx_string*
  store %nyx_string* %2754, %nyx_string** %2755
  %2756 = getelementptr [10 x i8], [10 x i8]* @.str266, i32 0, i32 0
  %2757 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str266.c, i8* %2756, i64 9)
  %2758 = alloca %nyx_string*
  store %nyx_string* %2757, %nyx_string** %2758
  %2759 = getelementptr [2 x i8], [2 x i8]* @.str267, i32 0, i32 0
  %2760 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str267.c, i8* %2759, i64 1)
  %2761 = alloca %nyx_string*
  store %nyx_string* %2760, %nyx_string** %2761
  %2762 = getelementptr [4 x i8], [4 x i8]* @.str268, i32 0, i32 0
  %2763 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str268.c, i8* %2762, i64 3)
  %2764 = alloca %nyx_string*
  store %nyx_string* %2763, %nyx_string** %2764
  %2765 = getelementptr [2 x i8], [2 x i8]* @.str269, i32 0, i32 0
  %2766 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str269.c, i8* %2765, i64 1)
  %2767 = alloca %nyx_string*
  store %nyx_string* %2766, %nyx_string** %2767
  %2768 = call i8* @llvm.stacksave()
  br label %while_cond499
while_cond499:
  %2769 = load i64, i64* %2719
  %2770 = load { i64, i8* }*, { i64, i8* }** %2715
  %2771 = call i64 @nyx_array_length({ i64, i8* }* %2770)
  %2772 = icmp slt i64 %2769, %2771
  br i1 %2772, label %while_body500, label %while_end501
while_body500:
  call void @llvm.stackrestore(i8* %2768)
  %2773 = load { i64, i8* }*, { i64, i8* }** %2715
  %2774 = load i64, i64* %2719
  %2775 = call i64 @nyx_array_get_checked({ i64, i8* }* %2773, i64 %2774, i64 2)
  %2776 = inttoptr i64 %2775 to %nyx_string*
  %2777 = alloca %nyx_string*
  store %nyx_string* %2776, %nyx_string** %2777
  %2778 = alloca i1
  store i1 false, i1* %2778
  %2779 = load %nyx_string*, %nyx_string** %2777
  %2780 = load %nyx_string*, %nyx_string** %2722
  %2781 = call i1 @nyx_string_equals(%nyx_string* %2779, %nyx_string* %2780)
  br i1 %2781, label %sc_and_rhs502, label %sc_and_end503
sc_and_rhs502:
  %2782 = load i64, i64* %2719
  %2783 = add i64 %2782, 1
  %2784 = load { i64, i8* }*, { i64, i8* }** %2715
  %2785 = call i64 @nyx_array_length({ i64, i8* }* %2784)
  %2786 = icmp slt i64 %2783, %2785
  store i1 %2786, i1* %2778
  br label %sc_and_end503
sc_and_end503:
  %2787 = load i1, i1* %2778
  br i1 %2787, label %then504, label %else505
then504:
  %2788 = load i64, i64* %2719
  %2789 = add i64 %2788, 1
  store i64 %2789, i64* %2719
  %2790 = load { i64, i8* }*, { i64, i8* }** %2715
  %2791 = load i64, i64* %2719
  %2792 = call i64 @nyx_array_get_checked({ i64, i8* }* %2790, i64 %2791, i64 2)
  %2793 = inttoptr i64 %2792 to %nyx_string*
  %2794 = alloca %nyx_string*
  store %nyx_string* %2793, %nyx_string** %2794
  %2795 = load %nyx_string*, %nyx_string** %2794
  %2796 = getelementptr %TestConfig, %TestConfig* %2713, i32 0, i32 2
  store %nyx_string* %2795, %nyx_string** %2796
  br label %merge506
else505:
  %2797 = alloca i1
  store i1 true, i1* %2797
  %2798 = load %nyx_string*, %nyx_string** %2777
  %2799 = load %nyx_string*, %nyx_string** %2725
  %2800 = call i1 @nyx_string_equals(%nyx_string* %2798, %nyx_string* %2799)
  br i1 %2800, label %sc_or_end508, label %sc_or_rhs507
sc_or_rhs507:
  %2801 = load %nyx_string*, %nyx_string** %2777
  %2802 = load %nyx_string*, %nyx_string** %2728
  %2803 = call i1 @nyx_string_equals(%nyx_string* %2801, %nyx_string* %2802)
  store i1 %2803, i1* %2797
  br label %sc_or_end508
sc_or_end508:
  %2804 = load i1, i1* %2797
  br i1 %2804, label %then509, label %else510
then509:
  %2805 = getelementptr %TestConfig, %TestConfig* %2713, i32 0, i32 3
  store i1 1, i1* %2805
  br label %merge511
else510:
  %2806 = alloca i1
  store i1 false, i1* %2806
  %2807 = load %nyx_string*, %nyx_string** %2777
  %2808 = load %nyx_string*, %nyx_string** %2731
  %2809 = call i1 @nyx_string_equals(%nyx_string* %2807, %nyx_string* %2808)
  br i1 %2809, label %sc_and_rhs512, label %sc_and_end513
sc_and_rhs512:
  %2810 = load i64, i64* %2719
  %2811 = add i64 %2810, 1
  %2812 = load { i64, i8* }*, { i64, i8* }** %2715
  %2813 = call i64 @nyx_array_length({ i64, i8* }* %2812)
  %2814 = icmp slt i64 %2811, %2813
  store i1 %2814, i1* %2806
  br label %sc_and_end513
sc_and_end513:
  %2815 = load i1, i1* %2806
  br i1 %2815, label %then514, label %else515
then514:
  %2816 = load i64, i64* %2719
  %2817 = add i64 %2816, 1
  store i64 %2817, i64* %2719
  %2818 = load { i64, i8* }*, { i64, i8* }** %2715
  %2819 = load i64, i64* %2719
  %2820 = call i64 @nyx_array_get_checked({ i64, i8* }* %2818, i64 %2819, i64 2)
  %2821 = inttoptr i64 %2820 to %nyx_string*
  %2822 = alloca %nyx_string*
  store %nyx_string* %2821, %nyx_string** %2822
  %2823 = load %nyx_string*, %nyx_string** %2822
  %2824 = call i64 @nyx_string_to_int(%nyx_string* %2823)
  %2825 = getelementptr %TestConfig, %TestConfig* %2713, i32 0, i32 1
  store i64 %2824, i64* %2825
  br label %merge516
else515:
  %2826 = load %nyx_string*, %nyx_string** %2777
  %2827 = load %nyx_string*, %nyx_string** %2734
  %2828 = call i1 @nyx_string_equals(%nyx_string* %2826, %nyx_string* %2827)
  br i1 %2828, label %then517, label %else518
then517:
  %2829 = getelementptr %TestConfig, %TestConfig* %2713, i32 0, i32 7
  store i1 1, i1* %2829
  br label %merge519
else518:
  %2830 = load %nyx_string*, %nyx_string** %2777
  %2831 = load %nyx_string*, %nyx_string** %2737
  %2832 = call i1 @nyx_string_equals(%nyx_string* %2830, %nyx_string* %2831)
  br i1 %2832, label %then520, label %else521
then520:
  %2833 = getelementptr %TestConfig, %TestConfig* %2713, i32 0, i32 5
  store i1 1, i1* %2833
  br label %merge522
else521:
  %2834 = load %nyx_string*, %nyx_string** %2777
  %2835 = load %nyx_string*, %nyx_string** %2740
  %2836 = call i1 @nyx_string_equals(%nyx_string* %2834, %nyx_string* %2835)
  br i1 %2836, label %then523, label %else524
then523:
  %2837 = getelementptr %TestConfig, %TestConfig* %2713, i32 0, i32 5
  store i1 1, i1* %2837
  %2838 = getelementptr %TestConfig, %TestConfig* %2713, i32 0, i32 6
  store i1 1, i1* %2838
  br label %merge525
else524:
  %2839 = alloca i1
  store i1 true, i1* %2839
  %2840 = load %nyx_string*, %nyx_string** %2777
  %2841 = load %nyx_string*, %nyx_string** %2743
  %2842 = call i1 @nyx_string_equals(%nyx_string* %2840, %nyx_string* %2841)
  br i1 %2842, label %sc_or_end527, label %sc_or_rhs526
sc_or_rhs526:
  %2843 = load %nyx_string*, %nyx_string** %2777
  %2844 = load %nyx_string*, %nyx_string** %2746
  %2845 = call i1 @nyx_string_starts_with(%nyx_string* %2843, %nyx_string* %2844)
  store i1 %2845, i1* %2839
  br label %sc_or_end527
sc_or_end527:
  %2846 = load i1, i1* %2839
  br i1 %2846, label %then528, label %else529
then528:
  %2847 = load %nyx_string*, %nyx_string** %2749
  %2848 = load %nyx_string*, %nyx_string** %2777
  %2849 = call %nyx_string* @nyx_string_concat(%nyx_string* %2847, %nyx_string* %2848)
  %2850 = call i8* @nyx_string_to_cstr(%nyx_string* %2849)
  call void @nyx_print_string(i8* %2850)
  %2851 = load %nyx_string*, %nyx_string** %2752
  %2852 = call i8* @nyx_string_to_cstr(%nyx_string* %2851)
  call void @nyx_print_string(i8* %2852)
  %2853 = call i64 @print_valid_options()
  ret i64 1
else529:
  %2854 = alloca i1
  store i1 true, i1* %2854
  %2855 = load %nyx_string*, %nyx_string** %2777
  %2856 = load %nyx_string*, %nyx_string** %2755
  %2857 = call i1 @nyx_string_equals(%nyx_string* %2855, %nyx_string* %2856)
  br i1 %2857, label %sc_or_end532, label %sc_or_rhs531
sc_or_rhs531:
  %2858 = load %nyx_string*, %nyx_string** %2777
  %2859 = load %nyx_string*, %nyx_string** %2758
  %2860 = call i1 @nyx_string_starts_with(%nyx_string* %2858, %nyx_string* %2859)
  store i1 %2860, i1* %2854
  br label %sc_or_end532
sc_or_end532:
  %2861 = load i1, i1* %2854
  br i1 %2861, label %then533, label %else534
then533:
  %2862 = load %nyx_string*, %nyx_string** %2777
  store %nyx_string* %2862, %nyx_string** %2718
  %2863 = alloca i1
  store i1 false, i1* %2863
  %2864 = load %nyx_string*, %nyx_string** %2777
  %2865 = load %nyx_string*, %nyx_string** %2755
  %2866 = call i1 @nyx_string_equals(%nyx_string* %2864, %nyx_string* %2865)
  br i1 %2866, label %sc_and_rhs536, label %sc_and_end537
sc_and_rhs536:
  %2867 = load i64, i64* %2719
  %2868 = add i64 %2867, 1
  %2869 = load { i64, i8* }*, { i64, i8* }** %2715
  %2870 = call i64 @nyx_array_length({ i64, i8* }* %2869)
  %2871 = icmp slt i64 %2868, %2870
  store i1 %2871, i1* %2863
  br label %sc_and_end537
sc_and_end537:
  %2872 = load i1, i1* %2863
  br i1 %2872, label %then538, label %else539
then538:
  %2873 = load i64, i64* %2719
  %2874 = add i64 %2873, 1
  store i64 %2874, i64* %2719
  %2875 = load { i64, i8* }*, { i64, i8* }** %2715
  %2876 = load i64, i64* %2719
  %2877 = call i64 @nyx_array_get_checked({ i64, i8* }* %2875, i64 %2876, i64 2)
  %2878 = inttoptr i64 %2877 to %nyx_string*
  %2879 = alloca %nyx_string*
  store %nyx_string* %2878, %nyx_string** %2879
  %2880 = load %nyx_string*, %nyx_string** %2777
  %2881 = load %nyx_string*, %nyx_string** %2761
  %2882 = call %nyx_string* @nyx_string_concat(%nyx_string* %2880, %nyx_string* %2881)
  %2883 = load %nyx_string*, %nyx_string** %2879
  %2884 = call %nyx_string* @nyx_string_concat(%nyx_string* %2882, %nyx_string* %2883)
  store %nyx_string* %2884, %nyx_string** %2718
  br label %merge540
else539:
  br label %merge540
merge540:
  br label %merge535
else534:
  %2885 = alloca i1
  store i1 true, i1* %2885
  %2886 = load %nyx_string*, %nyx_string** %2777
  %2887 = load %nyx_string*, %nyx_string** %2722
  %2888 = call i1 @nyx_string_equals(%nyx_string* %2886, %nyx_string* %2887)
  br i1 %2888, label %sc_or_end542, label %sc_or_rhs541
sc_or_rhs541:
  %2889 = load %nyx_string*, %nyx_string** %2777
  %2890 = load %nyx_string*, %nyx_string** %2731
  %2891 = call i1 @nyx_string_equals(%nyx_string* %2889, %nyx_string* %2890)
  store i1 %2891, i1* %2885
  br label %sc_or_end542
sc_or_end542:
  %2892 = load i1, i1* %2885
  br i1 %2892, label %then543, label %else544
then543:
  br label %merge545
else544:
  %2893 = load %nyx_string*, %nyx_string** %2777
  %2894 = load %nyx_string*, %nyx_string** %2764
  %2895 = call i1 @nyx_string_ends_with(%nyx_string* %2893, %nyx_string* %2894)
  br i1 %2895, label %then546, label %else547
then546:
  %2896 = load %nyx_string*, %nyx_string** %2777
  %2897 = getelementptr %TestConfig, %TestConfig* %2713, i32 0, i32 4
  store %nyx_string* %2896, %nyx_string** %2897
  br label %merge548
else547:
  %2898 = load %nyx_string*, %nyx_string** %2777
  %2899 = load %nyx_string*, %nyx_string** %2767
  %2900 = call i1 @nyx_string_starts_with(%nyx_string* %2898, %nyx_string* %2899)
  br i1 %2900, label %then549, label %else550
then549:
  %2901 = load %nyx_string*, %nyx_string** %2749
  %2902 = load %nyx_string*, %nyx_string** %2777
  %2903 = call %nyx_string* @nyx_string_concat(%nyx_string* %2901, %nyx_string* %2902)
  %2904 = call i8* @nyx_string_to_cstr(%nyx_string* %2903)
  call void @nyx_print_string(i8* %2904)
  %2905 = call i64 @print_valid_options()
  ret i64 1
else550:
  br label %merge551
merge551:
  br label %merge548
merge548:
  br label %merge545
merge545:
  br label %merge535
merge535:
  br label %merge530
merge530:
  br label %merge525
merge525:
  br label %merge522
merge522:
  br label %merge519
merge519:
  br label %merge516
merge516:
  br label %merge511
merge511:
  br label %merge506
merge506:
  %2906 = load i64, i64* %2719
  %2907 = add i64 %2906, 1
  store i64 %2907, i64* %2719
  br label %while_cond499
while_end501:
  %2908 = load %nyx_string*, %nyx_string** %2718
  %2909 = getelementptr [1 x i8], [1 x i8]* @.str270, i32 0, i32 0
  %2910 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str270.c, i8* %2909, i64 0)
  %2911 = call i1 @nyx_string_equals(%nyx_string* %2908, %nyx_string* %2910)
  %2912 = xor i1 %2911, true
  br i1 %2912, label %then552, label %else553
then552:
  %2913 = getelementptr %TestConfig, %TestConfig* %2713, i32 0, i32 5
  %2914 = load i1, i1* %2913
  br i1 %2914, label %then555, label %else556
then555:
  %2915 = getelementptr [47 x i8], [47 x i8]* @.str271, i32 0, i32 0
  %2916 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str271.c, i8* %2915, i64 46)
  %2917 = load %nyx_string*, %nyx_string** %2718
  %2918 = call %nyx_string* @nyx_string_concat(%nyx_string* %2916, %nyx_string* %2917)
  %2919 = getelementptr [58 x i8], [58 x i8]* @.str272, i32 0, i32 0
  %2920 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str272.c, i8* %2919, i64 57)
  %2921 = call %nyx_string* @nyx_string_concat(%nyx_string* %2918, %nyx_string* %2920)
  %2922 = call i8* @nyx_string_to_cstr(%nyx_string* %2921)
  call void @nyx_print_string(i8* %2922)
  br label %merge557
else556:
  %2923 = getelementptr [24 x i8], [24 x i8]* @.str273, i32 0, i32 0
  %2924 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str273.c, i8* %2923, i64 23)
  %2925 = load %nyx_string*, %nyx_string** %2718
  %2926 = call %nyx_string* @nyx_string_concat(%nyx_string* %2924, %nyx_string* %2925)
  %2927 = call i8* @nyx_string_to_cstr(%nyx_string* %2926)
  call void @nyx_print_string(i8* %2927)
  br label %merge557
merge557:
  %2928 = call i64 @print_valid_options()
  ret i64 1
else553:
  br label %merge554
merge554:
  %2929 = getelementptr [1 x i8], [1 x i8]* @.str274, i32 0, i32 0
  %2930 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str274.c, i8* %2929, i64 0)
  %2931 = alloca %nyx_string*
  store %nyx_string* %2930, %nyx_string** %2931
  %2932 = getelementptr [1 x i8], [1 x i8]* @.str275, i32 0, i32 0
  %2933 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str275.c, i8* %2932, i64 0)
  %2934 = alloca %nyx_string*
  store %nyx_string* %2933, %nyx_string** %2934
  %2935 = getelementptr %TestConfig, %TestConfig* %2713, i32 0, i32 5
  %2936 = load i1, i1* %2935
  br i1 %2936, label %then558, label %else559
then558:
  %2937 = call %nyx_string* @cov_find_profdata()
  store %nyx_string* %2937, %nyx_string** %2931
  %2938 = load %nyx_string*, %nyx_string** %2931
  %2939 = getelementptr [1 x i8], [1 x i8]* @.str276, i32 0, i32 0
  %2940 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str276.c, i8* %2939, i64 0)
  %2941 = call i1 @nyx_string_equals(%nyx_string* %2938, %nyx_string* %2940)
  br i1 %2941, label %then561, label %else562
then561:
  %2942 = call %nyx_string* @cov_clang_major()
  %2943 = alloca %nyx_string*
  store %nyx_string* %2942, %nyx_string** %2943
  %2944 = getelementptr [5 x i8], [5 x i8]* @.str277, i32 0, i32 0
  %2945 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str277.c, i8* %2944, i64 4)
  %2946 = alloca %nyx_string*
  store %nyx_string* %2945, %nyx_string** %2946
  %2947 = load %nyx_string*, %nyx_string** %2943
  %2948 = getelementptr [1 x i8], [1 x i8]* @.str278, i32 0, i32 0
  %2949 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str278.c, i8* %2948, i64 0)
  %2950 = call i1 @nyx_string_equals(%nyx_string* %2947, %nyx_string* %2949)
  %2951 = xor i1 %2950, true
  br i1 %2951, label %then564, label %else565
then564:
  %2952 = getelementptr [6 x i8], [6 x i8]* @.str279, i32 0, i32 0
  %2953 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str279.c, i8* %2952, i64 5)
  %2954 = load %nyx_string*, %nyx_string** %2943
  %2955 = call %nyx_string* @nyx_string_concat(%nyx_string* %2953, %nyx_string* %2954)
  store %nyx_string* %2955, %nyx_string** %2946
  br label %merge566
else565:
  br label %merge566
merge566:
  %2956 = getelementptr [101 x i8], [101 x i8]* @.str280, i32 0, i32 0
  %2957 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str280.c, i8* %2956, i64 100)
  %2958 = call i8* @nyx_string_to_cstr(%nyx_string* %2957)
  call void @nyx_print_string(i8* %2958)
  %2959 = getelementptr [35 x i8], [35 x i8]* @.str281, i32 0, i32 0
  %2960 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str281.c, i8* %2959, i64 34)
  %2961 = load %nyx_string*, %nyx_string** %2946
  %2962 = call %nyx_string* @nyx_string_concat(%nyx_string* %2960, %nyx_string* %2961)
  %2963 = call i8* @nyx_string_to_cstr(%nyx_string* %2962)
  call void @nyx_print_string(i8* %2963)
  %2964 = getelementptr [82 x i8], [82 x i8]* @.str282, i32 0, i32 0
  %2965 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str282.c, i8* %2964, i64 81)
  %2966 = call i8* @nyx_string_to_cstr(%nyx_string* %2965)
  call void @nyx_print_string(i8* %2966)
  %2967 = getelementptr [82 x i8], [82 x i8]* @.str283, i32 0, i32 0
  %2968 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str283.c, i8* %2967, i64 81)
  %2969 = call i8* @nyx_string_to_cstr(%nyx_string* %2968)
  call void @nyx_print_string(i8* %2969)
  ret i64 1
else562:
  br label %merge563
merge563:
  %2970 = getelementptr [30 x i8], [30 x i8]* @.str284, i32 0, i32 0
  %2971 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str284.c, i8* %2970, i64 29)
  %2972 = call i8* @nyx_string_to_cstr(%nyx_string* %2971)
  %2973 = call %nyx_string* @nyx_exec(i8* %2972)
  %2974 = call %nyx_string* @nyx_string_trim(%nyx_string* %2973)
  store %nyx_string* %2974, %nyx_string** %2934
  %2975 = load %nyx_string*, %nyx_string** %2934
  %2976 = getelementptr [1 x i8], [1 x i8]* @.str285, i32 0, i32 0
  %2977 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str285.c, i8* %2976, i64 0)
  %2978 = call i1 @nyx_string_equals(%nyx_string* %2975, %nyx_string* %2977)
  br i1 %2978, label %then567, label %else568
then567:
  %2979 = getelementptr [55 x i8], [55 x i8]* @.str286, i32 0, i32 0
  %2980 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str286.c, i8* %2979, i64 54)
  %2981 = call i8* @nyx_string_to_cstr(%nyx_string* %2980)
  call void @nyx_print_string(i8* %2981)
  ret i64 1
else568:
  br label %merge569
merge569:
  br label %merge560
else559:
  br label %merge560
merge560:
  %2982 = call { i64, i8* }* @nyx_array_new_ptr()
  %2983 = alloca { i64, i8* }*
  store { i64, i8* }* %2982, { i64, i8* }** %2983
  %2984 = getelementptr %TestConfig, %TestConfig* %2713, i32 0, i32 4
  %2985 = load %nyx_string*, %nyx_string** %2984
  %2986 = getelementptr [1 x i8], [1 x i8]* @.str287, i32 0, i32 0
  %2987 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str287.c, i8* %2986, i64 0)
  %2988 = call i1 @nyx_string_equals(%nyx_string* %2985, %nyx_string* %2987)
  %2989 = xor i1 %2988, true
  br i1 %2989, label %then570, label %else571
then570:
  %2990 = getelementptr %TestConfig, %TestConfig* %2713, i32 0, i32 4
  %2991 = load %nyx_string*, %nyx_string** %2990
  %2992 = call i8* @nyx_string_to_cstr(%nyx_string* %2991)
  %2993 = call i1 @nyx_file_exists(i8* %2992)
  %2994 = xor i1 %2993, true
  br i1 %2994, label %then573, label %else574
then573:
  %2995 = getelementptr [24 x i8], [24 x i8]* @.str288, i32 0, i32 0
  %2996 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str288.c, i8* %2995, i64 23)
  %2997 = getelementptr %TestConfig, %TestConfig* %2713, i32 0, i32 4
  %2998 = load %nyx_string*, %nyx_string** %2997
  %2999 = call %nyx_string* @nyx_string_concat(%nyx_string* %2996, %nyx_string* %2998)
  %3000 = call i8* @nyx_string_to_cstr(%nyx_string* %2999)
  call void @nyx_print_string(i8* %3000)
  ret i64 1
else574:
  br label %merge575
merge575:
  %3001 = load { i64, i8* }*, { i64, i8* }** %2983
  %3002 = getelementptr %TestConfig, %TestConfig* %2713, i32 0, i32 4
  %3003 = load %nyx_string*, %nyx_string** %3002
  %3004 = ptrtoint %nyx_string* %3003 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %3001, i64 %3004, i64 2)
  br label %merge572
else571:
  %3005 = load %TestConfig, %TestConfig* %2713
  %3006 = call { i64, i8* }* @discover_tests(%TestConfig %3005)
  store { i64, i8* }* %3006, { i64, i8* }** %2983
  br label %merge572
merge572:
  %3007 = load { i64, i8* }*, { i64, i8* }** %2983
  %3008 = call i64 @nyx_array_length({ i64, i8* }* %3007)
  %3009 = icmp eq i64 %3008, 0
  br i1 %3009, label %then576, label %else577
then576:
  %3010 = getelementptr [23 x i8], [23 x i8]* @.str289, i32 0, i32 0
  %3011 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str289.c, i8* %3010, i64 22)
  %3012 = call i8* @nyx_string_to_cstr(%nyx_string* %3011)
  call void @nyx_print_string(i8* %3012)
  %3013 = getelementptr %TestConfig, %TestConfig* %2713, i32 0, i32 2
  %3014 = load %nyx_string*, %nyx_string** %3013
  %3015 = getelementptr [1 x i8], [1 x i8]* @.str290, i32 0, i32 0
  %3016 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str290.c, i8* %3015, i64 0)
  %3017 = call i1 @nyx_string_equals(%nyx_string* %3014, %nyx_string* %3016)
  %3018 = xor i1 %3017, true
  br i1 %3018, label %then579, label %else580
then579:
  %3019 = getelementptr [12 x i8], [12 x i8]* @.str291, i32 0, i32 0
  %3020 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str291.c, i8* %3019, i64 11)
  %3021 = getelementptr %TestConfig, %TestConfig* %2713, i32 0, i32 2
  %3022 = load %nyx_string*, %nyx_string** %3021
  %3023 = call %nyx_string* @nyx_string_concat(%nyx_string* %3020, %nyx_string* %3022)
  %3024 = getelementptr [2 x i8], [2 x i8]* @.str292, i32 0, i32 0
  %3025 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str292.c, i8* %3024, i64 1)
  %3026 = call %nyx_string* @nyx_string_concat(%nyx_string* %3023, %nyx_string* %3025)
  %3027 = call i8* @nyx_string_to_cstr(%nyx_string* %3026)
  call void @nyx_print_string(i8* %3027)
  br label %merge581
else580:
  br label %merge581
merge581:
  %3028 = getelementptr [14 x i8], [14 x i8]* @.str293, i32 0, i32 0
  %3029 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str293.c, i8* %3028, i64 13)
  %3030 = getelementptr %TestConfig, %TestConfig* %2713, i32 0, i32 0
  %3031 = load %nyx_string*, %nyx_string** %3030
  %3032 = call %nyx_string* @nyx_string_concat(%nyx_string* %3029, %nyx_string* %3031)
  %3033 = getelementptr [2 x i8], [2 x i8]* @.str294, i32 0, i32 0
  %3034 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str294.c, i8* %3033, i64 1)
  %3035 = call %nyx_string* @nyx_string_concat(%nyx_string* %3032, %nyx_string* %3034)
  %3036 = call i8* @nyx_string_to_cstr(%nyx_string* %3035)
  call void @nyx_print_string(i8* %3036)
  ret i64 0
else577:
  br label %merge578
merge578:
  %3037 = getelementptr [9 x i8], [9 x i8]* @.str295, i32 0, i32 0
  %3038 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str295.c, i8* %3037, i64 8)
  %3039 = load { i64, i8* }*, { i64, i8* }** %2983
  %3040 = call i64 @nyx_array_length({ i64, i8* }* %3039)
  %3041 = call %nyx_string* @nyx_string_from_int(i64 %3040)
  %3042 = call %nyx_string* @nyx_string_concat(%nyx_string* %3038, %nyx_string* %3041)
  %3043 = getelementptr [14 x i8], [14 x i8]* @.str296, i32 0, i32 0
  %3044 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str296.c, i8* %3043, i64 13)
  %3045 = call %nyx_string* @nyx_string_concat(%nyx_string* %3042, %nyx_string* %3044)
  %3046 = call i8* @nyx_string_to_cstr(%nyx_string* %3045)
  call void @nyx_print_string(i8* %3046)
  %3047 = getelementptr %TestConfig, %TestConfig* %2713, i32 0, i32 2
  %3048 = load %nyx_string*, %nyx_string** %3047
  %3049 = getelementptr [1 x i8], [1 x i8]* @.str297, i32 0, i32 0
  %3050 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str297.c, i8* %3049, i64 0)
  %3051 = call i1 @nyx_string_equals(%nyx_string* %3048, %nyx_string* %3050)
  %3052 = xor i1 %3051, true
  br i1 %3052, label %then582, label %else583
then582:
  %3053 = getelementptr [12 x i8], [12 x i8]* @.str298, i32 0, i32 0
  %3054 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str298.c, i8* %3053, i64 11)
  %3055 = getelementptr %TestConfig, %TestConfig* %2713, i32 0, i32 2
  %3056 = load %nyx_string*, %nyx_string** %3055
  %3057 = call %nyx_string* @nyx_string_concat(%nyx_string* %3054, %nyx_string* %3056)
  %3058 = getelementptr [2 x i8], [2 x i8]* @.str299, i32 0, i32 0
  %3059 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str299.c, i8* %3058, i64 1)
  %3060 = call %nyx_string* @nyx_string_concat(%nyx_string* %3057, %nyx_string* %3059)
  %3061 = call i8* @nyx_string_to_cstr(%nyx_string* %3060)
  call void @nyx_print_string(i8* %3061)
  br label %merge584
else583:
  br label %merge584
merge584:
  %3062 = getelementptr [1 x i8], [1 x i8]* @.str300, i32 0, i32 0
  %3063 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str300.c, i8* %3062, i64 0)
  %3064 = call i8* @nyx_string_to_cstr(%nyx_string* %3063)
  call void @nyx_print_string(i8* %3064)
  %3065 = call { i64, i8* }* @nyx_array_new_ptr()
  %3066 = alloca { i64, i8* }*
  store { i64, i8* }* %3065, { i64, i8* }** %3066
  %3067 = call { i64, i8* }* @nyx_array_new_ptr()
  %3068 = alloca { i64, i8* }*
  store { i64, i8* }* %3067, { i64, i8* }** %3068
  %3069 = call { i64, i8* }* @nyx_array_new_ptr()
  %3070 = alloca { i64, i8* }*
  store { i64, i8* }* %3069, { i64, i8* }** %3070
  %3071 = alloca i64
  store i64 0, i64* %3071
  %3072 = alloca i64
  store i64 0, i64* %3072
  %3073 = alloca i64
  store i64 0, i64* %3073
  %3074 = call i8* @llvm.stacksave()
  br label %while_cond585
while_cond585:
  %3075 = load i64, i64* %3073
  %3076 = load { i64, i8* }*, { i64, i8* }** %2983
  %3077 = call i64 @nyx_array_length({ i64, i8* }* %3076)
  %3078 = icmp slt i64 %3075, %3077
  br i1 %3078, label %while_body586, label %while_end587
while_body586:
  call void @llvm.stackrestore(i8* %3074)
  %3079 = load { i64, i8* }*, { i64, i8* }** %2983
  %3080 = load i64, i64* %3073
  %3081 = call i64 @nyx_array_get_checked({ i64, i8* }* %3079, i64 %3080, i64 2)
  %3082 = inttoptr i64 %3081 to %nyx_string*
  %3083 = alloca %nyx_string*
  store %nyx_string* %3082, %nyx_string** %3083
  %3084 = load %nyx_string*, %nyx_string** %3083
  %3085 = call i1 @file_has_test_blocks(%nyx_string* %3084)
  %3086 = xor i1 %3085, true
  br i1 %3086, label %then588, label %else589
then588:
  %3087 = load i64, i64* %3073
  %3088 = add i64 %3087, 1
  store i64 %3088, i64* %3073
  br label %merge590
else589:
  %3089 = load %nyx_string*, %nyx_string** %3083
  %3090 = load %TestConfig, %TestConfig* %2713
  %3091 = load %nyx_string*, %nyx_string** %2934
  %3092 = load i64, i64* %3073
  %3093 = call %TestResult @compile_and_run(%nyx_string* %3089, %TestConfig %3090, %nyx_string* %3091, i64 %3092)
  %3094 = alloca %TestResult
  store %TestResult %3093, %TestResult* %3094
  %3095 = load { i64, i8* }*, { i64, i8* }** %3066
  %3096 = load %TestResult, %TestResult* %3094
  %3097 = getelementptr %TestResult, %TestResult* null, i32 1
  %3098 = ptrtoint %TestResult* %3097 to i64
  %3099 = call i8* @GC_malloc(i64 %3098)
  %3100 = bitcast i8* %3099 to %TestResult*
  store %TestResult %3096, %TestResult* %3100
  %3101 = ptrtoint %TestResult* %3100 to i64
  call void @nyx_array_push({ i64, i8* }* %3095, i64 %3101)
  %3102 = load { i64, i8* }*, { i64, i8* }** %3068
  %3103 = load %nyx_string*, %nyx_string** %3083
  %3104 = ptrtoint %nyx_string* %3103 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %3102, i64 %3104, i64 2)
  %3105 = load { i64, i8* }*, { i64, i8* }** %3070
  %3106 = load i64, i64* %3073
  %3107 = call %nyx_string* @nyx_string_from_int(i64 %3106)
  %3108 = ptrtoint %nyx_string* %3107 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %3105, i64 %3108, i64 2)
  %3109 = load i64, i64* %3071
  %3110 = getelementptr %TestResult, %TestResult* %3094, i32 0, i32 1
  %3111 = load i64, i64* %3110
  %3112 = add i64 %3109, %3111
  store i64 %3112, i64* %3071
  %3113 = load i64, i64* %3072
  %3114 = getelementptr %TestResult, %TestResult* %3094, i32 0, i32 2
  %3115 = load i64, i64* %3114
  %3116 = add i64 %3113, %3115
  store i64 %3116, i64* %3072
  %3117 = load %TestResult, %TestResult* %3094
  %3118 = getelementptr %TestConfig, %TestConfig* %2713, i32 0, i32 3
  %3119 = load i1, i1* %3118
  %3120 = call i64 @print_result(%TestResult %3117, i1 %3119)
  %3121 = load i64, i64* %3073
  %3122 = add i64 %3121, 1
  store i64 %3122, i64* %3073
  br label %merge590
merge590:
  br label %while_cond585
while_end587:
  %3123 = load { i64, i8* }*, { i64, i8* }** %3066
  %3124 = call i64 @nyx_array_length({ i64, i8* }* %3123)
  %3125 = icmp eq i64 %3124, 0
  br i1 %3125, label %then591, label %else592
then591:
  %3126 = getelementptr [35 x i8], [35 x i8]* @.str301, i32 0, i32 0
  %3127 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str301.c, i8* %3126, i64 34)
  %3128 = call i8* @nyx_string_to_cstr(%nyx_string* %3127)
  call void @nyx_print_string(i8* %3128)
  %3129 = load %nyx_string*, %nyx_string** %2934
  %3130 = getelementptr [1 x i8], [1 x i8]* @.str302, i32 0, i32 0
  %3131 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str302.c, i8* %3130, i64 0)
  %3132 = call i1 @nyx_string_equals(%nyx_string* %3129, %nyx_string* %3131)
  %3133 = xor i1 %3132, true
  br i1 %3133, label %then594, label %else595
then594:
  %3134 = getelementptr [8 x i8], [8 x i8]* @.str303, i32 0, i32 0
  %3135 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str303.c, i8* %3134, i64 7)
  %3136 = load %nyx_string*, %nyx_string** %2934
  %3137 = call %nyx_string* @nyx_string_concat(%nyx_string* %3135, %nyx_string* %3136)
  %3138 = call i8* @nyx_string_to_cstr(%nyx_string* %3137)
  %3139 = call %nyx_string* @nyx_exec(i8* %3138)
  br label %merge596
else595:
  br label %merge596
merge596:
  ret i64 0
else592:
  br label %merge593
merge593:
  %3140 = load { i64, i8* }*, { i64, i8* }** %3066
  %3141 = load i64, i64* %3071
  %3142 = load i64, i64* %3072
  %3143 = call i64 @print_summary({ i64, i8* }* %3140, i64 %3141, i64 %3142)
  %3144 = getelementptr %TestConfig, %TestConfig* %2713, i32 0, i32 5
  %3145 = load i1, i1* %3144
  br i1 %3145, label %then597, label %else598
then597:
  %3146 = load %nyx_string*, %nyx_string** %2934
  %3147 = load { i64, i8* }*, { i64, i8* }** %3068
  %3148 = load { i64, i8* }*, { i64, i8* }** %3070
  %3149 = load %nyx_string*, %nyx_string** %2931
  %3150 = getelementptr %TestConfig, %TestConfig* %2713, i32 0, i32 6
  %3151 = load i1, i1* %3150
  %3152 = call i64 @cov_report(%nyx_string* %3146, { i64, i8* }* %3147, { i64, i8* }* %3148, %nyx_string* %3149, i1 %3151)
  %3153 = getelementptr [8 x i8], [8 x i8]* @.str304, i32 0, i32 0
  %3154 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str304.c, i8* %3153, i64 7)
  %3155 = load %nyx_string*, %nyx_string** %2934
  %3156 = call %nyx_string* @nyx_string_concat(%nyx_string* %3154, %nyx_string* %3155)
  %3157 = call i8* @nyx_string_to_cstr(%nyx_string* %3156)
  %3158 = call %nyx_string* @nyx_exec(i8* %3157)
  br label %merge599
else598:
  br label %merge599
merge599:
  %3159 = alloca i64
  store i64 0, i64* %3159
  %3160 = alloca i64
  store i64 0, i64* %3160
  %3161 = call i8* @llvm.stacksave()
  br label %while_cond600
while_cond600:
  %3162 = load i64, i64* %3160
  %3163 = load { i64, i8* }*, { i64, i8* }** %3066
  %3164 = call i64 @nyx_array_length({ i64, i8* }* %3163)
  %3165 = icmp slt i64 %3162, %3164
  br i1 %3165, label %while_body601, label %while_end602
while_body601:
  call void @llvm.stackrestore(i8* %3161)
  %3166 = load { i64, i8* }*, { i64, i8* }** %3066
  %3167 = load i64, i64* %3160
  %3168 = call i64 @nyx_array_get({ i64, i8* }* %3166, i64 %3167)
  %3169 = inttoptr i64 %3168 to %TestResult*
  %3170 = load %TestResult, %TestResult* %3169
  %3171 = alloca %TestResult
  store %TestResult %3170, %TestResult* %3171
  %3172 = getelementptr %TestResult, %TestResult* %3171, i32 0, i32 4
  %3173 = load i1, i1* %3172
  %3174 = xor i1 %3173, true
  br i1 %3174, label %then603, label %else604
then603:
  %3175 = load i64, i64* %3159
  %3176 = add i64 %3175, 1
  store i64 %3176, i64* %3159
  br label %merge605
else604:
  br label %merge605
merge605:
  %3177 = load i64, i64* %3160
  %3178 = add i64 %3177, 1
  store i64 %3178, i64* %3160
  br label %while_cond600
while_end602:
  %3179 = alloca i1
  store i1 true, i1* %3179
  %3180 = load i64, i64* %3072
  %3181 = icmp sgt i64 %3180, 0
  br i1 %3181, label %sc_or_end607, label %sc_or_rhs606
sc_or_rhs606:
  %3182 = load i64, i64* %3159
  %3183 = icmp sgt i64 %3182, 0
  store i1 %3183, i1* %3179
  br label %sc_or_end607
sc_or_end607:
  %3184 = load i1, i1* %3179
  br i1 %3184, label %then608, label %else609
then608:
  ret i64 1
else609:
  br label %merge610
merge610:
  ret i64 0
}

; Inicialización de variables globales (llamada automática vía ctor)
define void @__nyx_init_globals() {
entry:
  %3185 = sub i64 0, 9223372036854775808
  store i64 %3185, i64* @INT_MIN
  ret void
}

@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @__nyx_init_globals, i8* null }]

attributes #0 = { returns_twice }

