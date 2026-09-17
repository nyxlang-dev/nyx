source_filename = "script.nx"
target triple = "x86_64-pc-linux-gnu"

%Error = type { i64, %nyx_string*, %nyx_string* }

%TestConfig = type { %nyx_string*, i64, %nyx_string*, i1, %nyx_string*, i1, i1 }

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
@.str45 = private unnamed_addr constant [1 x i8] c"\00"
@.str45.c = internal global %nyx_string* null
@.str46 = private unnamed_addr constant [1 x i8] c"\00"
@.str46.c = internal global %nyx_string* null
@.str47 = private unnamed_addr constant [1 x i8] c"\00"
@.str47.c = internal global %nyx_string* null
@.str48 = private unnamed_addr constant [2 x i8] c"/\00"
@.str48.c = internal global %nyx_string* null
@.str49 = private unnamed_addr constant [20 x i8] c" NYX_COVERAGE_MAP=\22\00"
@.str49.c = internal global %nyx_string* null
@.str50 = private unnamed_addr constant [6 x i8] c".tsv\22\00"
@.str50.c = internal global %nyx_string* null
@.str51 = private unnamed_addr constant [62 x i8] c"-fprofile-generate -Xclang -mllvm -Xclang -disable-preinline \00"
@.str51.c = internal global %nyx_string* null
@.str52 = private unnamed_addr constant [20 x i8] c"LLVM_PROFILE_FILE=\22\00"
@.str52.c = internal global %nyx_string* null
@.str53 = private unnamed_addr constant [11 x i8] c".profraw\22 \00"
@.str53.c = internal global %nyx_string* null
@.str54 = private unnamed_addr constant [20 x i8] c"#!/bin/bash\0aset -e\0a\00"
@.str54.c = internal global %nyx_string* null
@.str55 = private unnamed_addr constant [5 x i8] c"cd \22\00"
@.str55.c = internal global %nyx_string* null
@.str56 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str56.c = internal global %nyx_string* null
@.str57 = private unnamed_addr constant [5 x i8] c"cp \22\00"
@.str57.c = internal global %nyx_string* null
@.str58 = private unnamed_addr constant [2 x i8] c"/\00"
@.str58.c = internal global %nyx_string* null
@.str59 = private unnamed_addr constant [13 x i8] c"\22 script.nx\0a\00"
@.str59.c = internal global %nyx_string* null
@.str60 = private unnamed_addr constant [43 x i8] c"env -u NYX_SKIP_SEMANTIC NYX_PROJECT_DIR=\22\00"
@.str60.c = internal global %nyx_string* null
@.str61 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str61.c = internal global %nyx_string* null
@.str62 = private unnamed_addr constant [20 x i8] c" ./nyx_bootstrap > \00"
@.str62.c = internal global %nyx_string* null
@.str63 = private unnamed_addr constant [7 x i8] c" 2>&1\0a\00"
@.str63.c = internal global %nyx_string* null
@.str64 = private unnamed_addr constant [11 x i8] c"clang -O2 \00"
@.str64.c = internal global %nyx_string* null
@.str65 = private unnamed_addr constant [40 x i8] c"-Wno-deprecated-declarations script.ll \00"
@.str65.c = internal global %nyx_string* null
@.str66 = private unnamed_addr constant [62 x i8] c"runtime/runtime.c runtime/strings.c runtime/runtime-arrays.c \00"
@.str66.c = internal global %nyx_string* null
@.str67 = private unnamed_addr constant [54 x i8] c"runtime/maps.c runtime/file-io.c runtime/iterators.c \00"
@.str67.c = internal global %nyx_string* null
@.str68 = private unnamed_addr constant [48 x i8] c"runtime/net.c runtime/thread.c runtime/regex.c \00"
@.str68.c = internal global %nyx_string* null
@.str69 = private unnamed_addr constant [47 x i8] c"runtime/time.c runtime/crypto.c runtime/tls.c \00"
@.str69.c = internal global %nyx_string* null
@.str70 = private unnamed_addr constant [67 x i8] c"runtime/scheduler.c runtime/event_loop.c runtime/sqlite_adapter.c \00"
@.str70.c = internal global %nyx_string* null
@.str71 = private unnamed_addr constant [51 x i8] c"runtime/compress.c runtime/random.c runtime/url.c \00"
@.str71.c = internal global %nyx_string* null
@.str72 = private unnamed_addr constant [91 x i8] c"runtime/msgpack.c runtime/websocket.c runtime/persist.c runtime/http2.c runtime/process.c \00"
@.str72.c = internal global %nyx_string* null
@.str73 = private unnamed_addr constant [23 x i8] c"runtime/os/os_posix.c \00"
@.str73.c = internal global %nyx_string* null
@.str74 = private unnamed_addr constant [44 x i8] c"-lgc -lpthread -ldl -lm -lssl -lcrypto -lz \00"
@.str74.c = internal global %nyx_string* null
@.str75 = private unnamed_addr constant [4 x i8] c"-o \00"
@.str75.c = internal global %nyx_string* null
@.str76 = private unnamed_addr constant [6 x i8] c" 2>> \00"
@.str76.c = internal global %nyx_string* null
@.str77 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str77.c = internal global %nyx_string* null
@.str78 = private unnamed_addr constant [9 x i8] c"timeout \00"
@.str78.c = internal global %nyx_string* null
@.str79 = private unnamed_addr constant [2 x i8] c" \00"
@.str79.c = internal global %nyx_string* null
@.str80 = private unnamed_addr constant [4 x i8] c" > \00"
@.str80.c = internal global %nyx_string* null
@.str81 = private unnamed_addr constant [7 x i8] c" 2>&1\0a\00"
@.str81.c = internal global %nyx_string* null
@.str82 = private unnamed_addr constant [14 x i8] c"EXIT_CODE=$?\0a\00"
@.str82.c = internal global %nyx_string* null
@.str83 = private unnamed_addr constant [7 x i8] c"rm -f \00"
@.str83.c = internal global %nyx_string* null
@.str84 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str84.c = internal global %nyx_string* null
@.str85 = private unnamed_addr constant [27 x i8] c"rm -f script.nx script.ll\0a\00"
@.str85.c = internal global %nyx_string* null
@.str86 = private unnamed_addr constant [17 x i8] c"exit $EXIT_CODE\0a\00"
@.str86.c = internal global %nyx_string* null
@.str87 = private unnamed_addr constant [22 x i8] c"/tmp/nyx_test_script_\00"
@.str87.c = internal global %nyx_string* null
@.str88 = private unnamed_addr constant [4 x i8] c".sh\00"
@.str88.c = internal global %nyx_string* null
@.str89 = private unnamed_addr constant [6 x i8] c"bash \00"
@.str89.c = internal global %nyx_string* null
@.str90 = private unnamed_addr constant [1 x i8] c"\00"
@.str90.c = internal global %nyx_string* null
@.str91 = private unnamed_addr constant [7 x i8] c"rm -f \00"
@.str91.c = internal global %nyx_string* null
@.str92 = private unnamed_addr constant [7 x i8] c"rm -f \00"
@.str92.c = internal global %nyx_string* null
@.str93 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str93.c = internal global %nyx_string* null
@.str94 = private unnamed_addr constant [6 x i8] c"PASS:\00"
@.str94.c = internal global %nyx_string* null
@.str95 = private unnamed_addr constant [6 x i8] c"FAIL:\00"
@.str95.c = internal global %nyx_string* null
@.str96 = private unnamed_addr constant [9 x i8] c"  PASS  \00"
@.str96.c = internal global %nyx_string* null
@.str97 = private unnamed_addr constant [3 x i8] c" (\00"
@.str97.c = internal global %nyx_string* null
@.str98 = private unnamed_addr constant [8 x i8] c" tests)\00"
@.str98.c = internal global %nyx_string* null
@.str99 = private unnamed_addr constant [9 x i8] c"  FAIL  \00"
@.str99.c = internal global %nyx_string* null
@.str100 = private unnamed_addr constant [3 x i8] c" (\00"
@.str100.c = internal global %nyx_string* null
@.str101 = private unnamed_addr constant [10 x i8] c" passed, \00"
@.str101.c = internal global %nyx_string* null
@.str102 = private unnamed_addr constant [9 x i8] c" failed)\00"
@.str102.c = internal global %nyx_string* null
@.str103 = private unnamed_addr constant [1 x i8] c"\00"
@.str103.c = internal global %nyx_string* null
@.str104 = private unnamed_addr constant [36 x i8] c"===================================\00"
@.str104.c = internal global %nyx_string* null
@.str105 = private unnamed_addr constant [11 x i8] c"  Files:  \00"
@.str105.c = internal global %nyx_string* null
@.str106 = private unnamed_addr constant [10 x i8] c" passed, \00"
@.str106.c = internal global %nyx_string* null
@.str107 = private unnamed_addr constant [10 x i8] c" failed (\00"
@.str107.c = internal global %nyx_string* null
@.str108 = private unnamed_addr constant [8 x i8] c" total)\00"
@.str108.c = internal global %nyx_string* null
@.str109 = private unnamed_addr constant [11 x i8] c"  Tests:  \00"
@.str109.c = internal global %nyx_string* null
@.str110 = private unnamed_addr constant [10 x i8] c" passed, \00"
@.str110.c = internal global %nyx_string* null
@.str111 = private unnamed_addr constant [10 x i8] c" failed (\00"
@.str111.c = internal global %nyx_string* null
@.str112 = private unnamed_addr constant [8 x i8] c" total)\00"
@.str112.c = internal global %nyx_string* null
@.str113 = private unnamed_addr constant [27 x i8] c"  Status: ALL TESTS PASSED\00"
@.str113.c = internal global %nyx_string* null
@.str114 = private unnamed_addr constant [28 x i8] c"  Status: SOME TESTS FAILED\00"
@.str114.c = internal global %nyx_string* null
@.str115 = private unnamed_addr constant [36 x i8] c"===================================\00"
@.str115.c = internal global %nyx_string* null
@.str116 = private unnamed_addr constant [28 x i8] c"clang --version 2>/dev/null\00"
@.str116.c = internal global %nyx_string* null
@.str117 = private unnamed_addr constant [9 x i8] c"version \00"
@.str117.c = internal global %nyx_string* null
@.str118 = private unnamed_addr constant [1 x i8] c"\00"
@.str118.c = internal global %nyx_string* null
@.str119 = private unnamed_addr constant [1 x i8] c"\00"
@.str119.c = internal global %nyx_string* null
@.str120 = private unnamed_addr constant [10 x i8] c"test -s \22\00"
@.str120.c = internal global %nyx_string* null
@.str121 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str121.c = internal global %nyx_string* null
@.str122 = private unnamed_addr constant [1 x i8] c"\00"
@.str122.c = internal global %nyx_string* null
@.str123 = private unnamed_addr constant [26 x i8] c"command -v llvm-profdata-\00"
@.str123.c = internal global %nyx_string* null
@.str124 = private unnamed_addr constant [13 x i8] c" 2>/dev/null\00"
@.str124.c = internal global %nyx_string* null
@.str125 = private unnamed_addr constant [1 x i8] c"\00"
@.str125.c = internal global %nyx_string* null
@.str126 = private unnamed_addr constant [37 x i8] c"command -v llvm-profdata 2>/dev/null\00"
@.str126.c = internal global %nyx_string* null
@.str127 = private unnamed_addr constant [2 x i8] c"0\00"
@.str127.c = internal global %nyx_string* null
@.str128 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str128.c = internal global %nyx_string* null
@.str129 = private unnamed_addr constant [1 x i8] c"\00"
@.str129.c = internal global %nyx_string* null
@.str130 = private unnamed_addr constant [3 x i8] c"  \00"
@.str130.c = internal global %nyx_string* null
@.str131 = private unnamed_addr constant [4 x i8] c"   \00"
@.str131.c = internal global %nyx_string* null
@.str132 = private unnamed_addr constant [2 x i8] c":\00"
@.str132.c = internal global %nyx_string* null
@.str133 = private unnamed_addr constant [11 x i8] c"script.nx;\00"
@.str133.c = internal global %nyx_string* null
@.str134 = private unnamed_addr constant [1 x i8] c"\00"
@.str134.c = internal global %nyx_string* null
@.str135 = private unnamed_addr constant [14 x i8] c"Block counts:\00"
@.str135.c = internal global %nyx_string* null
@.str136 = private unnamed_addr constant [2 x i8] c"[\00"
@.str136.c = internal global %nyx_string* null
@.str137 = private unnamed_addr constant [2 x i8] c"]\00"
@.str137.c = internal global %nyx_string* null
@.str138 = private unnamed_addr constant [2 x i8] c",\00"
@.str138.c = internal global %nyx_string* null
@.str139 = private unnamed_addr constant [2 x i8] c"1\00"
@.str139.c = internal global %nyx_string* null
@.str140 = private unnamed_addr constant [4 x i8] c"src\00"
@.str140.c = internal global %nyx_string* null
@.str141 = private unnamed_addr constant [50 x i8] c"find src -name '*.nx' 2>/dev/null | LC_ALL=C sort\00"
@.str141.c = internal global %nyx_string* null
@.str142 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str142.c = internal global %nyx_string* null
@.str143 = private unnamed_addr constant [4 x i8] c".nx\00"
@.str143.c = internal global %nyx_string* null
@.str144 = private unnamed_addr constant [9 x i8] c"_test.nx\00"
@.str144.c = internal global %nyx_string* null
@.str145 = private unnamed_addr constant [1 x i8] c"\00"
@.str145.c = internal global %nyx_string* null
@.str146 = private unnamed_addr constant [9 x i8] c"import \22\00"
@.str146.c = internal global %nyx_string* null
@.str147 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str147.c = internal global %nyx_string* null
@.str148 = private unnamed_addr constant [36 x i8] c"\0afn main() -> int {\0a    return 0\0a}\0a\00"
@.str148.c = internal global %nyx_string* null
@.str149 = private unnamed_addr constant [13 x i8] c"/universe.nx\00"
@.str149.c = internal global %nyx_string* null
@.str150 = private unnamed_addr constant [14 x i8] c"/universe.tsv\00"
@.str150.c = internal global %nyx_string* null
@.str151 = private unnamed_addr constant [13 x i8] c"#!/bin/bash\0a\00"
@.str151.c = internal global %nyx_string* null
@.str152 = private unnamed_addr constant [5 x i8] c"cd \22\00"
@.str152.c = internal global %nyx_string* null
@.str153 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str153.c = internal global %nyx_string* null
@.str154 = private unnamed_addr constant [5 x i8] c"cp \22\00"
@.str154.c = internal global %nyx_string* null
@.str155 = private unnamed_addr constant [25 x i8] c"/universe.nx\22 script.nx\0a\00"
@.str155.c = internal global %nyx_string* null
@.str156 = private unnamed_addr constant [43 x i8] c"env -u NYX_SKIP_SEMANTIC NYX_PROJECT_DIR=\22\00"
@.str156.c = internal global %nyx_string* null
@.str157 = private unnamed_addr constant [21 x i8] c"\22 NYX_COVERAGE_MAP=\22\00"
@.str157.c = internal global %nyx_string* null
@.str158 = private unnamed_addr constant [22 x i8] c"\22 ./nyx_bootstrap > \22\00"
@.str158.c = internal global %nyx_string* null
@.str159 = private unnamed_addr constant [21 x i8] c"/universe.log\22 2>&1\0a\00"
@.str159.c = internal global %nyx_string* null
@.str160 = private unnamed_addr constant [7 x i8] c"RC=$?\0a\00"
@.str160.c = internal global %nyx_string* null
@.str161 = private unnamed_addr constant [27 x i8] c"rm -f script.nx script.ll\0a\00"
@.str161.c = internal global %nyx_string* null
@.str162 = private unnamed_addr constant [10 x i8] c"exit $RC\0a\00"
@.str162.c = internal global %nyx_string* null
@.str163 = private unnamed_addr constant [13 x i8] c"/universe.sh\00"
@.str163.c = internal global %nyx_string* null
@.str164 = private unnamed_addr constant [7 x i8] c"bash \22\00"
@.str164.c = internal global %nyx_string* null
@.str165 = private unnamed_addr constant [14 x i8] c"/universe.sh\22\00"
@.str165.c = internal global %nyx_string* null
@.str166 = private unnamed_addr constant [9 x i8] c"NYX_HOME\00"
@.str166.c = internal global %nyx_string* null
@.str167 = private unnamed_addr constant [4 x i8] c"PWD\00"
@.str167.c = internal global %nyx_string* null
@.str168 = private unnamed_addr constant [1 x i8] c"\00"
@.str168.c = internal global %nyx_string* null
@.str169 = private unnamed_addr constant [36 x i8] c"== Cobertura de funciones (src/) ==\00"
@.str169.c = internal global %nyx_string* null
@.str170 = private unnamed_addr constant [1 x i8] c"\00"
@.str170.c = internal global %nyx_string* null
@.str171 = private unnamed_addr constant [2 x i8] c"/\00"
@.str171.c = internal global %nyx_string* null
@.str172 = private unnamed_addr constant [9 x i8] c".profraw\00"
@.str172.c = internal global %nyx_string* null
@.str173 = private unnamed_addr constant [3 x i8] c" \22\00"
@.str173.c = internal global %nyx_string* null
@.str174 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str174.c = internal global %nyx_string* null
@.str175 = private unnamed_addr constant [2 x i8] c"1\00"
@.str175.c = internal global %nyx_string* null
@.str176 = private unnamed_addr constant [17 x i8] c"/merged.profdata\00"
@.str176.c = internal global %nyx_string* null
@.str177 = private unnamed_addr constant [12 x i8] c" merge -o \22\00"
@.str177.c = internal global %nyx_string* null
@.str178 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str178.c = internal global %nyx_string* null
@.str179 = private unnamed_addr constant [5 x i8] c" > \22\00"
@.str179.c = internal global %nyx_string* null
@.str180 = private unnamed_addr constant [17 x i8] c"/merge.log\22 2>&1\00"
@.str180.c = internal global %nyx_string* null
@.str181 = private unnamed_addr constant [36 x i8] c"  error: llvm-profdata merge fallo:\00"
@.str181.c = internal global %nyx_string* null
@.str182 = private unnamed_addr constant [11 x i8] c"/merge.log\00"
@.str182.c = internal global %nyx_string* null
@.str183 = private unnamed_addr constant [33 x i8] c" show --all-functions --counts \22\00"
@.str183.c = internal global %nyx_string* null
@.str184 = private unnamed_addr constant [6 x i8] c"\22 > \22\00"
@.str184.c = internal global %nyx_string* null
@.str185 = private unnamed_addr constant [16 x i8] c"/show.txt\22 2>&1\00"
@.str185.c = internal global %nyx_string* null
@.str186 = private unnamed_addr constant [10 x i8] c"/show.txt\00"
@.str186.c = internal global %nyx_string* null
@.str187 = private unnamed_addr constant [2 x i8] c"/\00"
@.str187.c = internal global %nyx_string* null
@.str188 = private unnamed_addr constant [5 x i8] c".tsv\00"
@.str188.c = internal global %nyx_string* null
@.str189 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str189.c = internal global %nyx_string* null
@.str190 = private unnamed_addr constant [1 x i8] c"\00"
@.str190.c = internal global %nyx_string* null
@.str191 = private unnamed_addr constant [2 x i8] c"1\00"
@.str191.c = internal global %nyx_string* null
@.str192 = private unnamed_addr constant [5 x i8] c"mono\00"
@.str192.c = internal global %nyx_string* null
@.str193 = private unnamed_addr constant [27 x i8] c"  (no hay modulos en src/)\00"
@.str193.c = internal global %nyx_string* null
@.str194 = private unnamed_addr constant [68 x i8] c"  error: no se pudo listar las funciones de src/ (src/ no compila):\00"
@.str194.c = internal global %nyx_string* null
@.str195 = private unnamed_addr constant [14 x i8] c"/universe.log\00"
@.str195.c = internal global %nyx_string* null
@.str196 = private unnamed_addr constant [14 x i8] c"/universe.log\00"
@.str196.c = internal global %nyx_string* null
@.str197 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str197.c = internal global %nyx_string* null
@.str198 = private unnamed_addr constant [3 x i8] c"fn\00"
@.str198.c = internal global %nyx_string* null
@.str199 = private unnamed_addr constant [7 x i8] c"metodo\00"
@.str199.c = internal global %nyx_string* null
@.str200 = private unnamed_addr constant [6 x i8] c"async\00"
@.str200.c = internal global %nyx_string* null
@.str201 = private unnamed_addr constant [9 x i8] c"generica\00"
@.str201.c = internal global %nyx_string* null
@.str202 = private unnamed_addr constant [5 x i8] c"src/\00"
@.str202.c = internal global %nyx_string* null
@.str203 = private unnamed_addr constant [5 x i8] c"main\00"
@.str203.c = internal global %nyx_string* null
@.str204 = private unnamed_addr constant [3 x i8] c"no\00"
@.str204.c = internal global %nyx_string* null
@.str205 = private unnamed_addr constant [3 x i8] c"si\00"
@.str205.c = internal global %nyx_string* null
@.str206 = private unnamed_addr constant [10 x i8] c"sin_datos\00"
@.str206.c = internal global %nyx_string* null
@.str207 = private unnamed_addr constant [5 x i8] c".nx\09\00"
@.str207.c = internal global %nyx_string* null
@.str208 = private unnamed_addr constant [2 x i8] c"\09\00"
@.str208.c = internal global %nyx_string* null
@.str209 = private unnamed_addr constant [1 x i8] c"\00"
@.str209.c = internal global %nyx_string* null
@.str210 = private unnamed_addr constant [1 x i8] c"\00"
@.str210.c = internal global %nyx_string* null
@.str211 = private unnamed_addr constant [10 x i8] c"sin_datos\00"
@.str211.c = internal global %nyx_string* null
@.str212 = private unnamed_addr constant [2 x i8] c"0\00"
@.str212.c = internal global %nyx_string* null
@.str213 = private unnamed_addr constant [3 x i8] c"si\00"
@.str213.c = internal global %nyx_string* null
@.str214 = private unnamed_addr constant [2 x i8] c"1\00"
@.str214.c = internal global %nyx_string* null
@.str215 = private unnamed_addr constant [5 x i8] c"    \00"
@.str215.c = internal global %nyx_string* null
@.str216 = private unnamed_addr constant [2 x i8] c":\00"
@.str216.c = internal global %nyx_string* null
@.str217 = private unnamed_addr constant [2 x i8] c" \00"
@.str217.c = internal global %nyx_string* null
@.str218 = private unnamed_addr constant [4 x i8] c"FN:\00"
@.str218.c = internal global %nyx_string* null
@.str219 = private unnamed_addr constant [2 x i8] c",\00"
@.str219.c = internal global %nyx_string* null
@.str220 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str220.c = internal global %nyx_string* null
@.str221 = private unnamed_addr constant [6 x i8] c"FNDA:\00"
@.str221.c = internal global %nyx_string* null
@.str222 = private unnamed_addr constant [3 x i8] c"  \00"
@.str222.c = internal global %nyx_string* null
@.str223 = private unnamed_addr constant [3 x i8] c": \00"
@.str223.c = internal global %nyx_string* null
@.str224 = private unnamed_addr constant [2 x i8] c"/\00"
@.str224.c = internal global %nyx_string* null
@.str225 = private unnamed_addr constant [10 x i8] c" llamadas\00"
@.str225.c = internal global %nyx_string* null
@.str226 = private unnamed_addr constant [29 x i8] c" (ninguna prueba lo importa)\00"
@.str226.c = internal global %nyx_string* null
@.str227 = private unnamed_addr constant [3 x i8] c" (\00"
@.str227.c = internal global %nyx_string* null
@.str228 = private unnamed_addr constant [38 x i8] c" sin datos: su prueba no dejo perfil)\00"
@.str228.c = internal global %nyx_string* null
@.str229 = private unnamed_addr constant [4 x i8] c"SF:\00"
@.str229.c = internal global %nyx_string* null
@.str230 = private unnamed_addr constant [5 x i8] c"FNF:\00"
@.str230.c = internal global %nyx_string* null
@.str231 = private unnamed_addr constant [6 x i8] c"\0aFNH:\00"
@.str231.c = internal global %nyx_string* null
@.str232 = private unnamed_addr constant [16 x i8] c"\0aend_of_record\0a\00"
@.str232.c = internal global %nyx_string* null
@.str233 = private unnamed_addr constant [70 x i8] c"  Sin perfil (timeout, crash o no compilo; sus funciones no cuentan):\00"
@.str233.c = internal global %nyx_string* null
@.str234 = private unnamed_addr constant [5 x i8] c"    \00"
@.str234.c = internal global %nyx_string* null
@.str235 = private unnamed_addr constant [10 x i8] c"  Total: \00"
@.str235.c = internal global %nyx_string* null
@.str236 = private unnamed_addr constant [2 x i8] c"/\00"
@.str236.c = internal global %nyx_string* null
@.str237 = private unnamed_addr constant [20 x i8] c" funciones llamadas\00"
@.str237.c = internal global %nyx_string* null
@.str238 = private unnamed_addr constant [11 x i8] c"mkdir -p \22\00"
@.str238.c = internal global %nyx_string* null
@.str239 = private unnamed_addr constant [9 x i8] c"/target\22\00"
@.str239.c = internal global %nyx_string* null
@.str240 = private unnamed_addr constant [22 x i8] c"/target/coverage.lcov\00"
@.str240.c = internal global %nyx_string* null
@.str241 = private unnamed_addr constant [29 x i8] c"  lcov: target/coverage.lcov\00"
@.str241.c = internal global %nyx_string* null
@.str242 = private unnamed_addr constant [104 x i8] c"  Opciones validas: --filter <string>, --verbose (-v), --timeout <seconds>, --coverage, --coverage=lcov\00"
@.str242.c = internal global %nyx_string* null
@.str243 = private unnamed_addr constant [24 x i8] c"=== Nyx Test Runner ===\00"
@.str243.c = internal global %nyx_string* null
@.str244 = private unnamed_addr constant [1 x i8] c"\00"
@.str244.c = internal global %nyx_string* null
@.str245 = private unnamed_addr constant [9 x i8] c"--filter\00"
@.str245.c = internal global %nyx_string* null
@.str246 = private unnamed_addr constant [10 x i8] c"--verbose\00"
@.str246.c = internal global %nyx_string* null
@.str247 = private unnamed_addr constant [3 x i8] c"-v\00"
@.str247.c = internal global %nyx_string* null
@.str248 = private unnamed_addr constant [10 x i8] c"--timeout\00"
@.str248.c = internal global %nyx_string* null
@.str249 = private unnamed_addr constant [11 x i8] c"--coverage\00"
@.str249.c = internal global %nyx_string* null
@.str250 = private unnamed_addr constant [16 x i8] c"--coverage=lcov\00"
@.str250.c = internal global %nyx_string* null
@.str251 = private unnamed_addr constant [8 x i8] c"--cover\00"
@.str251.c = internal global %nyx_string* null
@.str252 = private unnamed_addr constant [12 x i8] c"--coverage=\00"
@.str252.c = internal global %nyx_string* null
@.str253 = private unnamed_addr constant [24 x i8] c"error: unknown option: \00"
@.str253.c = internal global %nyx_string* null
@.str254 = private unnamed_addr constant [106 x i8] c"  La cobertura se pide con --coverage (informe de texto) o --coverage=lcov (ademas target/coverage.lcov).\00"
@.str254.c = internal global %nyx_string* null
@.str255 = private unnamed_addr constant [9 x i8] c"--target\00"
@.str255.c = internal global %nyx_string* null
@.str256 = private unnamed_addr constant [10 x i8] c"--target=\00"
@.str256.c = internal global %nyx_string* null
@.str257 = private unnamed_addr constant [2 x i8] c" \00"
@.str257.c = internal global %nyx_string* null
@.str258 = private unnamed_addr constant [4 x i8] c".nx\00"
@.str258.c = internal global %nyx_string* null
@.str259 = private unnamed_addr constant [2 x i8] c"-\00"
@.str259.c = internal global %nyx_string* null
@.str260 = private unnamed_addr constant [1 x i8] c"\00"
@.str260.c = internal global %nyx_string* null
@.str261 = private unnamed_addr constant [47 x i8] c"error: --coverage solo mide el target nativo: \00"
@.str261.c = internal global %nyx_string* null
@.str262 = private unnamed_addr constant [58 x i8] c" no tiene perfiles de LLVM (wasm y Windows quedan fuera).\00"
@.str262.c = internal global %nyx_string* null
@.str263 = private unnamed_addr constant [24 x i8] c"error: unknown option: \00"
@.str263.c = internal global %nyx_string* null
@.str264 = private unnamed_addr constant [1 x i8] c"\00"
@.str264.c = internal global %nyx_string* null
@.str265 = private unnamed_addr constant [1 x i8] c"\00"
@.str265.c = internal global %nyx_string* null
@.str266 = private unnamed_addr constant [1 x i8] c"\00"
@.str266.c = internal global %nyx_string* null
@.str267 = private unnamed_addr constant [5 x i8] c"llvm\00"
@.str267.c = internal global %nyx_string* null
@.str268 = private unnamed_addr constant [1 x i8] c"\00"
@.str268.c = internal global %nyx_string* null
@.str269 = private unnamed_addr constant [6 x i8] c"llvm-\00"
@.str269.c = internal global %nyx_string* null
@.str270 = private unnamed_addr constant [101 x i8] c"error: --coverage necesita llvm-profdata (de la misma version mayor que clang) y no esta en el PATH.\00"
@.str270.c = internal global %nyx_string* null
@.str271 = private unnamed_addr constant [35 x i8] c"  Debian/Ubuntu: sudo apt install \00"
@.str271.c = internal global %nyx_string* null
@.str272 = private unnamed_addr constant [82 x i8] c"  macOS (Homebrew): brew install llvm, y agrega $(brew --prefix llvm)/bin al PATH\00"
@.str272.c = internal global %nyx_string* null
@.str273 = private unnamed_addr constant [82 x i8] c"  Tambien hace falta el runtime de perfiles de compiler-rt (libclang_rt.profile).\00"
@.str273.c = internal global %nyx_string* null
@.str274 = private unnamed_addr constant [30 x i8] c"mktemp -d /tmp/nyx_cov_XXXXXX\00"
@.str274.c = internal global %nyx_string* null
@.str275 = private unnamed_addr constant [1 x i8] c"\00"
@.str275.c = internal global %nyx_string* null
@.str276 = private unnamed_addr constant [55 x i8] c"error: --coverage no pudo crear un directorio temporal\00"
@.str276.c = internal global %nyx_string* null
@.str277 = private unnamed_addr constant [1 x i8] c"\00"
@.str277.c = internal global %nyx_string* null
@.str278 = private unnamed_addr constant [24 x i8] c"error: file not found: \00"
@.str278.c = internal global %nyx_string* null
@.str279 = private unnamed_addr constant [23 x i8] c"  No test files found.\00"
@.str279.c = internal global %nyx_string* null
@.str280 = private unnamed_addr constant [1 x i8] c"\00"
@.str280.c = internal global %nyx_string* null
@.str281 = private unnamed_addr constant [12 x i8] c"  Filter: \22\00"
@.str281.c = internal global %nyx_string* null
@.str282 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str282.c = internal global %nyx_string* null
@.str283 = private unnamed_addr constant [14 x i8] c"  Looked in: \00"
@.str283.c = internal global %nyx_string* null
@.str284 = private unnamed_addr constant [2 x i8] c"/\00"
@.str284.c = internal global %nyx_string* null
@.str285 = private unnamed_addr constant [9 x i8] c"  Found \00"
@.str285.c = internal global %nyx_string* null
@.str286 = private unnamed_addr constant [14 x i8] c" test file(s)\00"
@.str286.c = internal global %nyx_string* null
@.str287 = private unnamed_addr constant [1 x i8] c"\00"
@.str287.c = internal global %nyx_string* null
@.str288 = private unnamed_addr constant [12 x i8] c"  Filter: \22\00"
@.str288.c = internal global %nyx_string* null
@.str289 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str289.c = internal global %nyx_string* null
@.str290 = private unnamed_addr constant [1 x i8] c"\00"
@.str290.c = internal global %nyx_string* null
@.str291 = private unnamed_addr constant [35 x i8] c"  No files with test blocks found.\00"
@.str291.c = internal global %nyx_string* null
@.str292 = private unnamed_addr constant [1 x i8] c"\00"
@.str292.c = internal global %nyx_string* null
@.str293 = private unnamed_addr constant [8 x i8] c"rm -rf \00"
@.str293.c = internal global %nyx_string* null
@.str294 = private unnamed_addr constant [8 x i8] c"rm -rf \00"
@.str294.c = internal global %nyx_string* null
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
  %771 = load %TestConfig, %TestConfig* %757
  %772 = alloca %TestConfig
  store %TestConfig %771, %TestConfig* %772
  %773 = getelementptr [9 x i8], [9 x i8]* @.str21, i32 0, i32 0
  %774 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str21.c, i8* %773, i64 8)
  %775 = call i8* @nyx_string_to_cstr(%nyx_string* %774)
  %776 = call i1 @nyx_file_exists(i8* %775)
  %777 = xor i1 %776, true
  br i1 %777, label %then222, label %else223
then222:
  %778 = load %TestConfig, %TestConfig* %772
  ret %TestConfig %778
else223:
  br label %merge224
merge224:
  %779 = getelementptr [9 x i8], [9 x i8]* @.str22, i32 0, i32 0
  %780 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str22.c, i8* %779, i64 8)
  %781 = call i8* @nyx_string_to_cstr(%nyx_string* %780)
  %782 = call %nyx_string* @nyx_read_file(i8* %781)
  %783 = alloca %nyx_string*
  store %nyx_string* %782, %nyx_string** %783
  %784 = load %nyx_string*, %nyx_string** %783
  %785 = getelementptr [2 x i8], [2 x i8]* @.str23, i32 0, i32 0
  %786 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str23.c, i8* %785, i64 1)
  %787 = call { i64, i8* }* @nyx_string_split(%nyx_string* %784, %nyx_string* %786)
  %788 = alloca { i64, i8* }*
  store { i64, i8* }* %787, { i64, i8* }** %788
  %789 = alloca i1
  store i1 0, i1* %789
  %790 = alloca i64
  store i64 0, i64* %790
  %791 = getelementptr [7 x i8], [7 x i8]* @.str24, i32 0, i32 0
  %792 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str24.c, i8* %791, i64 6)
  %793 = alloca %nyx_string*
  store %nyx_string* %792, %nyx_string** %793
  %794 = getelementptr [2 x i8], [2 x i8]* @.str25, i32 0, i32 0
  %795 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str25.c, i8* %794, i64 1)
  %796 = alloca %nyx_string*
  store %nyx_string* %795, %nyx_string** %796
  %797 = getelementptr [4 x i8], [4 x i8]* @.str26, i32 0, i32 0
  %798 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str26.c, i8* %797, i64 3)
  %799 = alloca %nyx_string*
  store %nyx_string* %798, %nyx_string** %799
  %800 = getelementptr [8 x i8], [8 x i8]* @.str27, i32 0, i32 0
  %801 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str27.c, i8* %800, i64 7)
  %802 = alloca %nyx_string*
  store %nyx_string* %801, %nyx_string** %802
  %803 = call i8* @llvm.stacksave()
  br label %while_cond225
while_cond225:
  %804 = load i64, i64* %790
  %805 = load { i64, i8* }*, { i64, i8* }** %788
  %806 = call i64 @nyx_array_length({ i64, i8* }* %805)
  %807 = icmp slt i64 %804, %806
  br i1 %807, label %while_body226, label %while_end227
while_body226:
  call void @llvm.stackrestore(i8* %803)
  %808 = load { i64, i8* }*, { i64, i8* }** %788
  %809 = load i64, i64* %790
  %810 = call i64 @nyx_array_get_checked({ i64, i8* }* %808, i64 %809, i64 2)
  %811 = inttoptr i64 %810 to %nyx_string*
  %812 = alloca %nyx_string*
  store %nyx_string* %811, %nyx_string** %812
  %813 = load %nyx_string*, %nyx_string** %812
  %814 = call %nyx_string* @nyx_string_trim(%nyx_string* %813)
  %815 = alloca %nyx_string*
  store %nyx_string* %814, %nyx_string** %815
  %816 = load %nyx_string*, %nyx_string** %815
  %817 = load %nyx_string*, %nyx_string** %793
  %818 = call i1 @nyx_string_equals(%nyx_string* %816, %nyx_string* %817)
  br i1 %818, label %then228, label %else229
then228:
  store i1 1, i1* %789
  br label %merge230
else229:
  %819 = load %nyx_string*, %nyx_string** %815
  %820 = load %nyx_string*, %nyx_string** %796
  %821 = call i1 @nyx_string_starts_with(%nyx_string* %819, %nyx_string* %820)
  br i1 %821, label %then231, label %else232
then231:
  store i1 0, i1* %789
  br label %merge233
else232:
  %822 = load i1, i1* %789
  br i1 %822, label %then234, label %else235
then234:
  %823 = load %nyx_string*, %nyx_string** %815
  %824 = call %nyx_string* @parse_toml_key(%nyx_string* %823)
  %825 = alloca %nyx_string*
  store %nyx_string* %824, %nyx_string** %825
  %826 = load %nyx_string*, %nyx_string** %815
  %827 = call %nyx_string* @parse_toml_value(%nyx_string* %826)
  %828 = alloca %nyx_string*
  store %nyx_string* %827, %nyx_string** %828
  %829 = load %nyx_string*, %nyx_string** %825
  %830 = load %nyx_string*, %nyx_string** %799
  %831 = call i1 @nyx_string_equals(%nyx_string* %829, %nyx_string* %830)
  br i1 %831, label %then237, label %else238
then237:
  %832 = load %nyx_string*, %nyx_string** %828
  %833 = getelementptr %TestConfig, %TestConfig* %772, i32 0, i32 0
  store %nyx_string* %832, %nyx_string** %833
  br label %merge239
else238:
  br label %merge239
merge239:
  %834 = load %nyx_string*, %nyx_string** %825
  %835 = load %nyx_string*, %nyx_string** %802
  %836 = call i1 @nyx_string_equals(%nyx_string* %834, %nyx_string* %835)
  br i1 %836, label %then240, label %else241
then240:
  %837 = load %nyx_string*, %nyx_string** %828
  %838 = call i64 @nyx_string_to_int(%nyx_string* %837)
  %839 = getelementptr %TestConfig, %TestConfig* %772, i32 0, i32 1
  store i64 %838, i64* %839
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
  %840 = load i64, i64* %790
  %841 = add i64 %840, 1
  store i64 %841, i64* %790
  br label %while_cond225
while_end227:
  %842 = load %TestConfig, %TestConfig* %772
  ret %TestConfig %842
}

define internal { i64, i8* }* @discover_tests(
%TestConfig %config.param) {
  %config.ptr = alloca %TestConfig
  store %TestConfig %config.param, %TestConfig* %config.ptr
  %843 = call { i64, i8* }* @nyx_array_new_ptr()
  %844 = alloca { i64, i8* }*
  store { i64, i8* }* %843, { i64, i8* }** %844
  %845 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 0
  %846 = load %nyx_string*, %nyx_string** %845
  %847 = call i8* @nyx_string_to_cstr(%nyx_string* %846)
  %848 = call i1 @nyx_file_exists(i8* %847)
  br i1 %848, label %then243, label %else244
then243:
  %849 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 0
  %850 = load %nyx_string*, %nyx_string** %849
  %851 = call i8* @nyx_string_to_cstr(%nyx_string* %850)
  %852 = call { i64, i8* }* @nyx_readdir(i8* %851)
  %853 = alloca { i64, i8* }*
  store { i64, i8* }* %852, { i64, i8* }** %853
  %854 = alloca i64
  store i64 0, i64* %854
  %855 = getelementptr [4 x i8], [4 x i8]* @.str28, i32 0, i32 0
  %856 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str28.c, i8* %855, i64 3)
  %857 = alloca %nyx_string*
  store %nyx_string* %856, %nyx_string** %857
  %858 = getelementptr [2 x i8], [2 x i8]* @.str29, i32 0, i32 0
  %859 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str29.c, i8* %858, i64 1)
  %860 = alloca %nyx_string*
  store %nyx_string* %859, %nyx_string** %860
  %861 = getelementptr [1 x i8], [1 x i8]* @.str30, i32 0, i32 0
  %862 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str30.c, i8* %861, i64 0)
  %863 = alloca %nyx_string*
  store %nyx_string* %862, %nyx_string** %863
  %864 = call i8* @llvm.stacksave()
  br label %while_cond246
while_cond246:
  %865 = load i64, i64* %854
  %866 = load { i64, i8* }*, { i64, i8* }** %853
  %867 = call i64 @nyx_array_length({ i64, i8* }* %866)
  %868 = icmp slt i64 %865, %867
  br i1 %868, label %while_body247, label %while_end248
while_body247:
  call void @llvm.stackrestore(i8* %864)
  %869 = load { i64, i8* }*, { i64, i8* }** %853
  %870 = load i64, i64* %854
  %871 = call i64 @nyx_array_get_checked({ i64, i8* }* %869, i64 %870, i64 2)
  %872 = inttoptr i64 %871 to %nyx_string*
  %873 = alloca %nyx_string*
  store %nyx_string* %872, %nyx_string** %873
  %874 = load %nyx_string*, %nyx_string** %873
  %875 = load %nyx_string*, %nyx_string** %857
  %876 = call i1 @nyx_string_ends_with(%nyx_string* %874, %nyx_string* %875)
  br i1 %876, label %then249, label %else250
then249:
  %877 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 0
  %878 = load %nyx_string*, %nyx_string** %877
  %879 = load %nyx_string*, %nyx_string** %860
  %880 = call %nyx_string* @nyx_string_concat(%nyx_string* %878, %nyx_string* %879)
  %881 = load %nyx_string*, %nyx_string** %873
  %882 = call %nyx_string* @nyx_string_concat(%nyx_string* %880, %nyx_string* %881)
  %883 = alloca %nyx_string*
  store %nyx_string* %882, %nyx_string** %883
  %884 = alloca i1
  store i1 true, i1* %884
  %885 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 2
  %886 = load %nyx_string*, %nyx_string** %885
  %887 = load %nyx_string*, %nyx_string** %863
  %888 = call i1 @nyx_string_equals(%nyx_string* %886, %nyx_string* %887)
  br i1 %888, label %sc_or_end253, label %sc_or_rhs252
sc_or_rhs252:
  %889 = load %nyx_string*, %nyx_string** %873
  %890 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 2
  %891 = load %nyx_string*, %nyx_string** %890
  %892 = call i1 @nyx_string_contains(%nyx_string* %889, %nyx_string* %891)
  store i1 %892, i1* %884
  br label %sc_or_end253
sc_or_end253:
  %893 = load i1, i1* %884
  br i1 %893, label %then254, label %else255
then254:
  %894 = load { i64, i8* }*, { i64, i8* }** %844
  %895 = load %nyx_string*, %nyx_string** %883
  %896 = ptrtoint %nyx_string* %895 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %894, i64 %896, i64 2)
  br label %merge256
else255:
  br label %merge256
merge256:
  br label %merge251
else250:
  br label %merge251
merge251:
  %897 = load i64, i64* %854
  %898 = add i64 %897, 1
  store i64 %898, i64* %854
  br label %while_cond246
while_end248:
  br label %merge245
else244:
  br label %merge245
merge245:
  %899 = getelementptr [4 x i8], [4 x i8]* @.str31, i32 0, i32 0
  %900 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str31.c, i8* %899, i64 3)
  %901 = call i8* @nyx_string_to_cstr(%nyx_string* %900)
  %902 = call i1 @nyx_file_exists(i8* %901)
  br i1 %902, label %then257, label %else258
then257:
  %903 = getelementptr [4 x i8], [4 x i8]* @.str32, i32 0, i32 0
  %904 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str32.c, i8* %903, i64 3)
  %905 = call i8* @nyx_string_to_cstr(%nyx_string* %904)
  %906 = call { i64, i8* }* @nyx_readdir(i8* %905)
  %907 = alloca { i64, i8* }*
  store { i64, i8* }* %906, { i64, i8* }** %907
  %908 = alloca i64
  store i64 0, i64* %908
  %909 = getelementptr [9 x i8], [9 x i8]* @.str33, i32 0, i32 0
  %910 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str33.c, i8* %909, i64 8)
  %911 = alloca %nyx_string*
  store %nyx_string* %910, %nyx_string** %911
  %912 = getelementptr [5 x i8], [5 x i8]* @.str34, i32 0, i32 0
  %913 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str34.c, i8* %912, i64 4)
  %914 = alloca %nyx_string*
  store %nyx_string* %913, %nyx_string** %914
  %915 = getelementptr [1 x i8], [1 x i8]* @.str35, i32 0, i32 0
  %916 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str35.c, i8* %915, i64 0)
  %917 = alloca %nyx_string*
  store %nyx_string* %916, %nyx_string** %917
  %918 = call i8* @llvm.stacksave()
  br label %while_cond260
while_cond260:
  %919 = load i64, i64* %908
  %920 = load { i64, i8* }*, { i64, i8* }** %907
  %921 = call i64 @nyx_array_length({ i64, i8* }* %920)
  %922 = icmp slt i64 %919, %921
  br i1 %922, label %while_body261, label %while_end262
while_body261:
  call void @llvm.stackrestore(i8* %918)
  %923 = load { i64, i8* }*, { i64, i8* }** %907
  %924 = load i64, i64* %908
  %925 = call i64 @nyx_array_get_checked({ i64, i8* }* %923, i64 %924, i64 2)
  %926 = inttoptr i64 %925 to %nyx_string*
  %927 = alloca %nyx_string*
  store %nyx_string* %926, %nyx_string** %927
  %928 = load %nyx_string*, %nyx_string** %927
  %929 = load %nyx_string*, %nyx_string** %911
  %930 = call i1 @nyx_string_ends_with(%nyx_string* %928, %nyx_string* %929)
  br i1 %930, label %then263, label %else264
then263:
  %931 = load %nyx_string*, %nyx_string** %914
  %932 = load %nyx_string*, %nyx_string** %927
  %933 = call %nyx_string* @nyx_string_concat(%nyx_string* %931, %nyx_string* %932)
  %934 = alloca %nyx_string*
  store %nyx_string* %933, %nyx_string** %934
  %935 = alloca i1
  store i1 true, i1* %935
  %936 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 2
  %937 = load %nyx_string*, %nyx_string** %936
  %938 = load %nyx_string*, %nyx_string** %917
  %939 = call i1 @nyx_string_equals(%nyx_string* %937, %nyx_string* %938)
  br i1 %939, label %sc_or_end267, label %sc_or_rhs266
sc_or_rhs266:
  %940 = load %nyx_string*, %nyx_string** %927
  %941 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 2
  %942 = load %nyx_string*, %nyx_string** %941
  %943 = call i1 @nyx_string_contains(%nyx_string* %940, %nyx_string* %942)
  store i1 %943, i1* %935
  br label %sc_or_end267
sc_or_end267:
  %944 = load i1, i1* %935
  br i1 %944, label %then268, label %else269
then268:
  %945 = load { i64, i8* }*, { i64, i8* }** %844
  %946 = load %nyx_string*, %nyx_string** %934
  %947 = ptrtoint %nyx_string* %946 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %945, i64 %947, i64 2)
  br label %merge270
else269:
  br label %merge270
merge270:
  br label %merge265
else264:
  br label %merge265
merge265:
  %948 = load i64, i64* %908
  %949 = add i64 %948, 1
  store i64 %949, i64* %908
  br label %while_cond260
while_end262:
  br label %merge259
else258:
  br label %merge259
merge259:
  %950 = load { i64, i8* }*, { i64, i8* }** %844
  ret { i64, i8* }* %950
}

define internal i1 @file_has_test_blocks(
%nyx_string* %path.param) {
  %path.ptr = alloca %nyx_string*
  store %nyx_string* %path.param, %nyx_string** %path.ptr
  %951 = load %nyx_string*, %nyx_string** %path.ptr
  %952 = call i8* @nyx_string_to_cstr(%nyx_string* %951)
  %953 = call %nyx_string* @nyx_read_file(i8* %952)
  %954 = alloca %nyx_string*
  store %nyx_string* %953, %nyx_string** %954
  %955 = load %nyx_string*, %nyx_string** %954
  %956 = getelementptr [7 x i8], [7 x i8]* @.str36, i32 0, i32 0
  %957 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str36.c, i8* %956, i64 6)
  %958 = call i1 @nyx_string_contains(%nyx_string* %955, %nyx_string* %957)
  ret i1 %958
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
  %959 = getelementptr [9 x i8], [9 x i8]* @.str37, i32 0, i32 0
  %960 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str37.c, i8* %959, i64 8)
  %961 = call i8* @nyx_string_to_cstr(%nyx_string* %960)
  %962 = call %nyx_string* @nyx_getenv(i8* %961)
  %963 = alloca %nyx_string*
  store %nyx_string* %962, %nyx_string** %963
  %964 = load %nyx_string*, %nyx_string** %963
  %965 = getelementptr [1 x i8], [1 x i8]* @.str38, i32 0, i32 0
  %966 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str38.c, i8* %965, i64 0)
  %967 = call i1 @nyx_string_equals(%nyx_string* %964, %nyx_string* %966)
  br i1 %967, label %then271, label %else272
then271:
  %968 = getelementptr %TestResult, %TestResult* null, i32 1
  %969 = ptrtoint %TestResult* %968 to i64
  %970 = call i8* @GC_malloc(i64 %969)
  %971 = bitcast i8* %970 to %TestResult*
  %972 = load %nyx_string*, %nyx_string** %file.ptr
  %973 = getelementptr %TestResult, %TestResult* %971, i32 0, i32 0
  store %nyx_string* %972, %nyx_string** %973
  %974 = getelementptr %TestResult, %TestResult* %971, i32 0, i32 1
  store i64 0, i64* %974
  %975 = getelementptr %TestResult, %TestResult* %971, i32 0, i32 2
  store i64 0, i64* %975
  %976 = getelementptr [24 x i8], [24 x i8]* @.str39, i32 0, i32 0
  %977 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str39.c, i8* %976, i64 23)
  %978 = getelementptr %TestResult, %TestResult* %971, i32 0, i32 3
  store %nyx_string* %977, %nyx_string** %978
  %979 = getelementptr %TestResult, %TestResult* %971, i32 0, i32 4
  store i1 0, i1* %979
  %980 = load %TestResult, %TestResult* %971
  ret %TestResult %980
else272:
  br label %merge273
merge273:
  %981 = getelementptr [4 x i8], [4 x i8]* @.str40, i32 0, i32 0
  %982 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str40.c, i8* %981, i64 3)
  %983 = call i8* @nyx_string_to_cstr(%nyx_string* %982)
  %984 = call %nyx_string* @nyx_getenv(i8* %983)
  %985 = alloca %nyx_string*
  store %nyx_string* %984, %nyx_string** %985
  %986 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 1
  %987 = load i64, i64* %986
  %988 = call %nyx_string* @nyx_string_from_int(i64 %987)
  %989 = alloca %nyx_string*
  store %nyx_string* %988, %nyx_string** %989
  %990 = getelementptr [19 x i8], [19 x i8]* @.str41, i32 0, i32 0
  %991 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str41.c, i8* %990, i64 18)
  %992 = call i64 @nyx_time_ms()
  %993 = call %nyx_string* @nyx_string_from_int(i64 %992)
  %994 = call %nyx_string* @nyx_string_concat(%nyx_string* %991, %nyx_string* %993)
  %995 = getelementptr [5 x i8], [5 x i8]* @.str42, i32 0, i32 0
  %996 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str42.c, i8* %995, i64 4)
  %997 = call %nyx_string* @nyx_string_concat(%nyx_string* %994, %nyx_string* %996)
  %998 = alloca %nyx_string*
  store %nyx_string* %997, %nyx_string** %998
  %999 = getelementptr [19 x i8], [19 x i8]* @.str43, i32 0, i32 0
  %1000 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str43.c, i8* %999, i64 18)
  %1001 = call i64 @nyx_time_ms()
  %1002 = call %nyx_string* @nyx_string_from_int(i64 %1001)
  %1003 = call %nyx_string* @nyx_string_concat(%nyx_string* %1000, %nyx_string* %1002)
  %1004 = alloca %nyx_string*
  store %nyx_string* %1003, %nyx_string** %1004
  %1005 = getelementptr [1 x i8], [1 x i8]* @.str44, i32 0, i32 0
  %1006 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str44.c, i8* %1005, i64 0)
  %1007 = alloca %nyx_string*
  store %nyx_string* %1006, %nyx_string** %1007
  %1008 = getelementptr [1 x i8], [1 x i8]* @.str45, i32 0, i32 0
  %1009 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str45.c, i8* %1008, i64 0)
  %1010 = alloca %nyx_string*
  store %nyx_string* %1009, %nyx_string** %1010
  %1011 = getelementptr [1 x i8], [1 x i8]* @.str46, i32 0, i32 0
  %1012 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str46.c, i8* %1011, i64 0)
  %1013 = alloca %nyx_string*
  store %nyx_string* %1012, %nyx_string** %1013
  %1014 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %1015 = getelementptr [1 x i8], [1 x i8]* @.str47, i32 0, i32 0
  %1016 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str47.c, i8* %1015, i64 0)
  %1017 = call i1 @nyx_string_equals(%nyx_string* %1014, %nyx_string* %1016)
  %1018 = xor i1 %1017, true
  br i1 %1018, label %then274, label %else275
then274:
  %1019 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %1020 = getelementptr [2 x i8], [2 x i8]* @.str48, i32 0, i32 0
  %1021 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str48.c, i8* %1020, i64 1)
  %1022 = call %nyx_string* @nyx_string_concat(%nyx_string* %1019, %nyx_string* %1021)
  %1023 = load i64, i64* %cov_idx.ptr
  %1024 = call %nyx_string* @nyx_string_from_int(i64 %1023)
  %1025 = call %nyx_string* @nyx_string_concat(%nyx_string* %1022, %nyx_string* %1024)
  %1026 = alloca %nyx_string*
  store %nyx_string* %1025, %nyx_string** %1026
  %1027 = getelementptr [20 x i8], [20 x i8]* @.str49, i32 0, i32 0
  %1028 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str49.c, i8* %1027, i64 19)
  %1029 = load %nyx_string*, %nyx_string** %1026
  %1030 = call %nyx_string* @nyx_string_concat(%nyx_string* %1028, %nyx_string* %1029)
  %1031 = getelementptr [6 x i8], [6 x i8]* @.str50, i32 0, i32 0
  %1032 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str50.c, i8* %1031, i64 5)
  %1033 = call %nyx_string* @nyx_string_concat(%nyx_string* %1030, %nyx_string* %1032)
  store %nyx_string* %1033, %nyx_string** %1007
  %1034 = getelementptr [62 x i8], [62 x i8]* @.str51, i32 0, i32 0
  %1035 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str51.c, i8* %1034, i64 61)
  store %nyx_string* %1035, %nyx_string** %1010
  %1036 = getelementptr [20 x i8], [20 x i8]* @.str52, i32 0, i32 0
  %1037 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str52.c, i8* %1036, i64 19)
  %1038 = load %nyx_string*, %nyx_string** %1026
  %1039 = call %nyx_string* @nyx_string_concat(%nyx_string* %1037, %nyx_string* %1038)
  %1040 = getelementptr [11 x i8], [11 x i8]* @.str53, i32 0, i32 0
  %1041 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str53.c, i8* %1040, i64 10)
  %1042 = call %nyx_string* @nyx_string_concat(%nyx_string* %1039, %nyx_string* %1041)
  store %nyx_string* %1042, %nyx_string** %1013
  br label %merge276
else275:
  br label %merge276
merge276:
  %1043 = getelementptr [20 x i8], [20 x i8]* @.str54, i32 0, i32 0
  %1044 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str54.c, i8* %1043, i64 19)
  %1045 = getelementptr [5 x i8], [5 x i8]* @.str55, i32 0, i32 0
  %1046 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str55.c, i8* %1045, i64 4)
  %1047 = call %nyx_string* @nyx_string_concat(%nyx_string* %1044, %nyx_string* %1046)
  %1048 = load %nyx_string*, %nyx_string** %963
  %1049 = call %nyx_string* @nyx_string_concat(%nyx_string* %1047, %nyx_string* %1048)
  %1050 = getelementptr [3 x i8], [3 x i8]* @.str56, i32 0, i32 0
  %1051 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str56.c, i8* %1050, i64 2)
  %1052 = call %nyx_string* @nyx_string_concat(%nyx_string* %1049, %nyx_string* %1051)
  %1053 = getelementptr [5 x i8], [5 x i8]* @.str57, i32 0, i32 0
  %1054 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str57.c, i8* %1053, i64 4)
  %1055 = call %nyx_string* @nyx_string_concat(%nyx_string* %1052, %nyx_string* %1054)
  %1056 = load %nyx_string*, %nyx_string** %985
  %1057 = call %nyx_string* @nyx_string_concat(%nyx_string* %1055, %nyx_string* %1056)
  %1058 = getelementptr [2 x i8], [2 x i8]* @.str58, i32 0, i32 0
  %1059 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str58.c, i8* %1058, i64 1)
  %1060 = call %nyx_string* @nyx_string_concat(%nyx_string* %1057, %nyx_string* %1059)
  %1061 = load %nyx_string*, %nyx_string** %file.ptr
  %1062 = call %nyx_string* @nyx_string_concat(%nyx_string* %1060, %nyx_string* %1061)
  %1063 = getelementptr [13 x i8], [13 x i8]* @.str59, i32 0, i32 0
  %1064 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str59.c, i8* %1063, i64 12)
  %1065 = call %nyx_string* @nyx_string_concat(%nyx_string* %1062, %nyx_string* %1064)
  %1066 = getelementptr [43 x i8], [43 x i8]* @.str60, i32 0, i32 0
  %1067 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str60.c, i8* %1066, i64 42)
  %1068 = call %nyx_string* @nyx_string_concat(%nyx_string* %1065, %nyx_string* %1067)
  %1069 = load %nyx_string*, %nyx_string** %985
  %1070 = call %nyx_string* @nyx_string_concat(%nyx_string* %1068, %nyx_string* %1069)
  %1071 = getelementptr [2 x i8], [2 x i8]* @.str61, i32 0, i32 0
  %1072 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str61.c, i8* %1071, i64 1)
  %1073 = call %nyx_string* @nyx_string_concat(%nyx_string* %1070, %nyx_string* %1072)
  %1074 = load %nyx_string*, %nyx_string** %1007
  %1075 = call %nyx_string* @nyx_string_concat(%nyx_string* %1073, %nyx_string* %1074)
  %1076 = getelementptr [20 x i8], [20 x i8]* @.str62, i32 0, i32 0
  %1077 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str62.c, i8* %1076, i64 19)
  %1078 = call %nyx_string* @nyx_string_concat(%nyx_string* %1075, %nyx_string* %1077)
  %1079 = load %nyx_string*, %nyx_string** %998
  %1080 = call %nyx_string* @nyx_string_concat(%nyx_string* %1078, %nyx_string* %1079)
  %1081 = getelementptr [7 x i8], [7 x i8]* @.str63, i32 0, i32 0
  %1082 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str63.c, i8* %1081, i64 6)
  %1083 = call %nyx_string* @nyx_string_concat(%nyx_string* %1080, %nyx_string* %1082)
  %1084 = getelementptr [11 x i8], [11 x i8]* @.str64, i32 0, i32 0
  %1085 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str64.c, i8* %1084, i64 10)
  %1086 = call %nyx_string* @nyx_string_concat(%nyx_string* %1083, %nyx_string* %1085)
  %1087 = load %nyx_string*, %nyx_string** %1010
  %1088 = call %nyx_string* @nyx_string_concat(%nyx_string* %1086, %nyx_string* %1087)
  %1089 = getelementptr [40 x i8], [40 x i8]* @.str65, i32 0, i32 0
  %1090 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str65.c, i8* %1089, i64 39)
  %1091 = call %nyx_string* @nyx_string_concat(%nyx_string* %1088, %nyx_string* %1090)
  %1092 = getelementptr [62 x i8], [62 x i8]* @.str66, i32 0, i32 0
  %1093 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str66.c, i8* %1092, i64 61)
  %1094 = call %nyx_string* @nyx_string_concat(%nyx_string* %1091, %nyx_string* %1093)
  %1095 = getelementptr [54 x i8], [54 x i8]* @.str67, i32 0, i32 0
  %1096 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str67.c, i8* %1095, i64 53)
  %1097 = call %nyx_string* @nyx_string_concat(%nyx_string* %1094, %nyx_string* %1096)
  %1098 = getelementptr [48 x i8], [48 x i8]* @.str68, i32 0, i32 0
  %1099 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str68.c, i8* %1098, i64 47)
  %1100 = call %nyx_string* @nyx_string_concat(%nyx_string* %1097, %nyx_string* %1099)
  %1101 = getelementptr [47 x i8], [47 x i8]* @.str69, i32 0, i32 0
  %1102 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str69.c, i8* %1101, i64 46)
  %1103 = call %nyx_string* @nyx_string_concat(%nyx_string* %1100, %nyx_string* %1102)
  %1104 = getelementptr [67 x i8], [67 x i8]* @.str70, i32 0, i32 0
  %1105 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str70.c, i8* %1104, i64 66)
  %1106 = call %nyx_string* @nyx_string_concat(%nyx_string* %1103, %nyx_string* %1105)
  %1107 = getelementptr [51 x i8], [51 x i8]* @.str71, i32 0, i32 0
  %1108 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str71.c, i8* %1107, i64 50)
  %1109 = call %nyx_string* @nyx_string_concat(%nyx_string* %1106, %nyx_string* %1108)
  %1110 = getelementptr [91 x i8], [91 x i8]* @.str72, i32 0, i32 0
  %1111 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str72.c, i8* %1110, i64 90)
  %1112 = call %nyx_string* @nyx_string_concat(%nyx_string* %1109, %nyx_string* %1111)
  %1113 = getelementptr [23 x i8], [23 x i8]* @.str73, i32 0, i32 0
  %1114 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str73.c, i8* %1113, i64 22)
  %1115 = call %nyx_string* @nyx_string_concat(%nyx_string* %1112, %nyx_string* %1114)
  %1116 = getelementptr [44 x i8], [44 x i8]* @.str74, i32 0, i32 0
  %1117 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str74.c, i8* %1116, i64 43)
  %1118 = call %nyx_string* @nyx_string_concat(%nyx_string* %1115, %nyx_string* %1117)
  %1119 = getelementptr [4 x i8], [4 x i8]* @.str75, i32 0, i32 0
  %1120 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str75.c, i8* %1119, i64 3)
  %1121 = call %nyx_string* @nyx_string_concat(%nyx_string* %1118, %nyx_string* %1120)
  %1122 = load %nyx_string*, %nyx_string** %1004
  %1123 = call %nyx_string* @nyx_string_concat(%nyx_string* %1121, %nyx_string* %1122)
  %1124 = getelementptr [6 x i8], [6 x i8]* @.str76, i32 0, i32 0
  %1125 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str76.c, i8* %1124, i64 5)
  %1126 = call %nyx_string* @nyx_string_concat(%nyx_string* %1123, %nyx_string* %1125)
  %1127 = load %nyx_string*, %nyx_string** %998
  %1128 = call %nyx_string* @nyx_string_concat(%nyx_string* %1126, %nyx_string* %1127)
  %1129 = getelementptr [2 x i8], [2 x i8]* @.str77, i32 0, i32 0
  %1130 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str77.c, i8* %1129, i64 1)
  %1131 = call %nyx_string* @nyx_string_concat(%nyx_string* %1128, %nyx_string* %1130)
  %1132 = load %nyx_string*, %nyx_string** %1013
  %1133 = call %nyx_string* @nyx_string_concat(%nyx_string* %1131, %nyx_string* %1132)
  %1134 = getelementptr [9 x i8], [9 x i8]* @.str78, i32 0, i32 0
  %1135 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str78.c, i8* %1134, i64 8)
  %1136 = call %nyx_string* @nyx_string_concat(%nyx_string* %1133, %nyx_string* %1135)
  %1137 = load %nyx_string*, %nyx_string** %989
  %1138 = call %nyx_string* @nyx_string_concat(%nyx_string* %1136, %nyx_string* %1137)
  %1139 = getelementptr [2 x i8], [2 x i8]* @.str79, i32 0, i32 0
  %1140 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str79.c, i8* %1139, i64 1)
  %1141 = call %nyx_string* @nyx_string_concat(%nyx_string* %1138, %nyx_string* %1140)
  %1142 = load %nyx_string*, %nyx_string** %1004
  %1143 = call %nyx_string* @nyx_string_concat(%nyx_string* %1141, %nyx_string* %1142)
  %1144 = getelementptr [4 x i8], [4 x i8]* @.str80, i32 0, i32 0
  %1145 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str80.c, i8* %1144, i64 3)
  %1146 = call %nyx_string* @nyx_string_concat(%nyx_string* %1143, %nyx_string* %1145)
  %1147 = load %nyx_string*, %nyx_string** %998
  %1148 = call %nyx_string* @nyx_string_concat(%nyx_string* %1146, %nyx_string* %1147)
  %1149 = getelementptr [7 x i8], [7 x i8]* @.str81, i32 0, i32 0
  %1150 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str81.c, i8* %1149, i64 6)
  %1151 = call %nyx_string* @nyx_string_concat(%nyx_string* %1148, %nyx_string* %1150)
  %1152 = getelementptr [14 x i8], [14 x i8]* @.str82, i32 0, i32 0
  %1153 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str82.c, i8* %1152, i64 13)
  %1154 = call %nyx_string* @nyx_string_concat(%nyx_string* %1151, %nyx_string* %1153)
  %1155 = getelementptr [7 x i8], [7 x i8]* @.str83, i32 0, i32 0
  %1156 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str83.c, i8* %1155, i64 6)
  %1157 = call %nyx_string* @nyx_string_concat(%nyx_string* %1154, %nyx_string* %1156)
  %1158 = load %nyx_string*, %nyx_string** %1004
  %1159 = call %nyx_string* @nyx_string_concat(%nyx_string* %1157, %nyx_string* %1158)
  %1160 = getelementptr [2 x i8], [2 x i8]* @.str84, i32 0, i32 0
  %1161 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str84.c, i8* %1160, i64 1)
  %1162 = call %nyx_string* @nyx_string_concat(%nyx_string* %1159, %nyx_string* %1161)
  %1163 = getelementptr [27 x i8], [27 x i8]* @.str85, i32 0, i32 0
  %1164 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str85.c, i8* %1163, i64 26)
  %1165 = call %nyx_string* @nyx_string_concat(%nyx_string* %1162, %nyx_string* %1164)
  %1166 = getelementptr [17 x i8], [17 x i8]* @.str86, i32 0, i32 0
  %1167 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str86.c, i8* %1166, i64 16)
  %1168 = call %nyx_string* @nyx_string_concat(%nyx_string* %1165, %nyx_string* %1167)
  %1169 = alloca %nyx_string*
  store %nyx_string* %1168, %nyx_string** %1169
  %1170 = getelementptr [22 x i8], [22 x i8]* @.str87, i32 0, i32 0
  %1171 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str87.c, i8* %1170, i64 21)
  %1172 = call i64 @nyx_time_ms()
  %1173 = call %nyx_string* @nyx_string_from_int(i64 %1172)
  %1174 = call %nyx_string* @nyx_string_concat(%nyx_string* %1171, %nyx_string* %1173)
  %1175 = getelementptr [4 x i8], [4 x i8]* @.str88, i32 0, i32 0
  %1176 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str88.c, i8* %1175, i64 3)
  %1177 = call %nyx_string* @nyx_string_concat(%nyx_string* %1174, %nyx_string* %1176)
  %1178 = alloca %nyx_string*
  store %nyx_string* %1177, %nyx_string** %1178
  %1179 = load %nyx_string*, %nyx_string** %1178
  %1180 = load %nyx_string*, %nyx_string** %1169
  %1181 = call i8* @nyx_string_to_cstr(%nyx_string* %1179)
  %1182 = call i1 @nyx_write_file_safe(i8* %1181, %nyx_string* %1180)
  %1183 = getelementptr [6 x i8], [6 x i8]* @.str89, i32 0, i32 0
  %1184 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str89.c, i8* %1183, i64 5)
  %1185 = load %nyx_string*, %nyx_string** %1178
  %1186 = call %nyx_string* @nyx_string_concat(%nyx_string* %1184, %nyx_string* %1185)
  %1187 = call i8* @nyx_string_to_cstr(%nyx_string* %1186)
  %1188 = call i64 @nyx_exec_code(i8* %1187)
  %1189 = alloca i64
  store i64 %1188, i64* %1189
  %1190 = getelementptr [1 x i8], [1 x i8]* @.str90, i32 0, i32 0
  %1191 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str90.c, i8* %1190, i64 0)
  %1192 = alloca %nyx_string*
  store %nyx_string* %1191, %nyx_string** %1192
  %1193 = load %nyx_string*, %nyx_string** %998
  %1194 = call i8* @nyx_string_to_cstr(%nyx_string* %1193)
  %1195 = call i1 @nyx_file_exists(i8* %1194)
  br i1 %1195, label %then277, label %else278
then277:
  %1196 = load %nyx_string*, %nyx_string** %998
  %1197 = call i8* @nyx_string_to_cstr(%nyx_string* %1196)
  %1198 = call %nyx_string* @nyx_read_file(i8* %1197)
  store %nyx_string* %1198, %nyx_string** %1192
  %1199 = getelementptr [7 x i8], [7 x i8]* @.str91, i32 0, i32 0
  %1200 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str91.c, i8* %1199, i64 6)
  %1201 = load %nyx_string*, %nyx_string** %998
  %1202 = call %nyx_string* @nyx_string_concat(%nyx_string* %1200, %nyx_string* %1201)
  %1203 = call i8* @nyx_string_to_cstr(%nyx_string* %1202)
  %1204 = call %nyx_string* @nyx_exec(i8* %1203)
  br label %merge279
else278:
  br label %merge279
merge279:
  %1205 = getelementptr [7 x i8], [7 x i8]* @.str92, i32 0, i32 0
  %1206 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str92.c, i8* %1205, i64 6)
  %1207 = load %nyx_string*, %nyx_string** %1178
  %1208 = call %nyx_string* @nyx_string_concat(%nyx_string* %1206, %nyx_string* %1207)
  %1209 = call i8* @nyx_string_to_cstr(%nyx_string* %1208)
  %1210 = call %nyx_string* @nyx_exec(i8* %1209)
  %1211 = alloca i64
  store i64 0, i64* %1211
  %1212 = alloca i64
  store i64 0, i64* %1212
  %1213 = load %nyx_string*, %nyx_string** %1192
  %1214 = getelementptr [2 x i8], [2 x i8]* @.str93, i32 0, i32 0
  %1215 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str93.c, i8* %1214, i64 1)
  %1216 = call { i64, i8* }* @nyx_string_split(%nyx_string* %1213, %nyx_string* %1215)
  %1217 = alloca { i64, i8* }*
  store { i64, i8* }* %1216, { i64, i8* }** %1217
  %1218 = alloca i64
  store i64 0, i64* %1218
  %1219 = getelementptr [6 x i8], [6 x i8]* @.str94, i32 0, i32 0
  %1220 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str94.c, i8* %1219, i64 5)
  %1221 = alloca %nyx_string*
  store %nyx_string* %1220, %nyx_string** %1221
  %1222 = getelementptr [6 x i8], [6 x i8]* @.str95, i32 0, i32 0
  %1223 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str95.c, i8* %1222, i64 5)
  %1224 = alloca %nyx_string*
  store %nyx_string* %1223, %nyx_string** %1224
  %1225 = call i8* @llvm.stacksave()
  br label %while_cond280
while_cond280:
  %1226 = load i64, i64* %1218
  %1227 = load { i64, i8* }*, { i64, i8* }** %1217
  %1228 = call i64 @nyx_array_length({ i64, i8* }* %1227)
  %1229 = icmp slt i64 %1226, %1228
  br i1 %1229, label %while_body281, label %while_end282
while_body281:
  call void @llvm.stackrestore(i8* %1225)
  %1230 = load { i64, i8* }*, { i64, i8* }** %1217
  %1231 = load i64, i64* %1218
  %1232 = call i64 @nyx_array_get_checked({ i64, i8* }* %1230, i64 %1231, i64 2)
  %1233 = inttoptr i64 %1232 to %nyx_string*
  %1234 = alloca %nyx_string*
  store %nyx_string* %1233, %nyx_string** %1234
  %1235 = load %nyx_string*, %nyx_string** %1234
  %1236 = load %nyx_string*, %nyx_string** %1221
  %1237 = call i1 @nyx_string_contains(%nyx_string* %1235, %nyx_string* %1236)
  br i1 %1237, label %then283, label %else284
then283:
  %1238 = load i64, i64* %1211
  %1239 = add i64 %1238, 1
  store i64 %1239, i64* %1211
  br label %merge285
else284:
  %1240 = load %nyx_string*, %nyx_string** %1234
  %1241 = load %nyx_string*, %nyx_string** %1224
  %1242 = call i1 @nyx_string_contains(%nyx_string* %1240, %nyx_string* %1241)
  br i1 %1242, label %then286, label %else287
then286:
  %1243 = load i64, i64* %1212
  %1244 = add i64 %1243, 1
  store i64 %1244, i64* %1212
  br label %merge288
else287:
  br label %merge288
merge288:
  br label %merge285
merge285:
  %1245 = load i64, i64* %1218
  %1246 = add i64 %1245, 1
  store i64 %1246, i64* %1218
  br label %while_cond280
while_end282:
  %1247 = getelementptr %TestResult, %TestResult* null, i32 1
  %1248 = ptrtoint %TestResult* %1247 to i64
  %1249 = call i8* @GC_malloc(i64 %1248)
  %1250 = bitcast i8* %1249 to %TestResult*
  %1251 = load %nyx_string*, %nyx_string** %file.ptr
  %1252 = getelementptr %TestResult, %TestResult* %1250, i32 0, i32 0
  store %nyx_string* %1251, %nyx_string** %1252
  %1253 = load i64, i64* %1211
  %1254 = getelementptr %TestResult, %TestResult* %1250, i32 0, i32 1
  store i64 %1253, i64* %1254
  %1255 = load i64, i64* %1212
  %1256 = getelementptr %TestResult, %TestResult* %1250, i32 0, i32 2
  store i64 %1255, i64* %1256
  %1257 = load %nyx_string*, %nyx_string** %1192
  %1258 = getelementptr %TestResult, %TestResult* %1250, i32 0, i32 3
  store %nyx_string* %1257, %nyx_string** %1258
  %1259 = alloca i1
  store i1 false, i1* %1259
  %1260 = load i64, i64* %1189
  %1261 = icmp eq i64 %1260, 0
  br i1 %1261, label %sc_and_rhs289, label %sc_and_end290
sc_and_rhs289:
  %1262 = load i64, i64* %1212
  %1263 = icmp eq i64 %1262, 0
  store i1 %1263, i1* %1259
  br label %sc_and_end290
sc_and_end290:
  %1264 = load i1, i1* %1259
  %1265 = getelementptr %TestResult, %TestResult* %1250, i32 0, i32 4
  store i1 %1264, i1* %1265
  %1266 = load %TestResult, %TestResult* %1250
  ret %TestResult %1266
}

define internal i64 @print_result(
%TestResult %result.param, i1 %verbose.param) {
  %result.ptr = alloca %TestResult
  store %TestResult %result.param, %TestResult* %result.ptr
  %verbose.ptr = alloca i1
  store i1 %verbose.param, i1* %verbose.ptr
  %1267 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 4
  %1268 = load i1, i1* %1267
  br i1 %1268, label %then291, label %else292
then291:
  %1269 = getelementptr [9 x i8], [9 x i8]* @.str96, i32 0, i32 0
  %1270 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str96.c, i8* %1269, i64 8)
  %1271 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 0
  %1272 = load %nyx_string*, %nyx_string** %1271
  %1273 = call %nyx_string* @nyx_string_concat(%nyx_string* %1270, %nyx_string* %1272)
  %1274 = getelementptr [3 x i8], [3 x i8]* @.str97, i32 0, i32 0
  %1275 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str97.c, i8* %1274, i64 2)
  %1276 = call %nyx_string* @nyx_string_concat(%nyx_string* %1273, %nyx_string* %1275)
  %1277 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 1
  %1278 = load i64, i64* %1277
  %1279 = call %nyx_string* @nyx_string_from_int(i64 %1278)
  %1280 = call %nyx_string* @nyx_string_concat(%nyx_string* %1276, %nyx_string* %1279)
  %1281 = getelementptr [8 x i8], [8 x i8]* @.str98, i32 0, i32 0
  %1282 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str98.c, i8* %1281, i64 7)
  %1283 = call %nyx_string* @nyx_string_concat(%nyx_string* %1280, %nyx_string* %1282)
  %1284 = call i8* @nyx_string_to_cstr(%nyx_string* %1283)
  call void @nyx_print_string(i8* %1284)
  %1285 = load i1, i1* %verbose.ptr
  br i1 %1285, label %then294, label %else295
then294:
  %1286 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 3
  %1287 = load %nyx_string*, %nyx_string** %1286
  %1288 = call i8* @nyx_string_to_cstr(%nyx_string* %1287)
  call void @nyx_print_string(i8* %1288)
  br label %merge296
else295:
  br label %merge296
merge296:
  br label %merge293
else292:
  %1289 = getelementptr [9 x i8], [9 x i8]* @.str99, i32 0, i32 0
  %1290 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str99.c, i8* %1289, i64 8)
  %1291 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 0
  %1292 = load %nyx_string*, %nyx_string** %1291
  %1293 = call %nyx_string* @nyx_string_concat(%nyx_string* %1290, %nyx_string* %1292)
  %1294 = getelementptr [3 x i8], [3 x i8]* @.str100, i32 0, i32 0
  %1295 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str100.c, i8* %1294, i64 2)
  %1296 = call %nyx_string* @nyx_string_concat(%nyx_string* %1293, %nyx_string* %1295)
  %1297 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 1
  %1298 = load i64, i64* %1297
  %1299 = call %nyx_string* @nyx_string_from_int(i64 %1298)
  %1300 = call %nyx_string* @nyx_string_concat(%nyx_string* %1296, %nyx_string* %1299)
  %1301 = getelementptr [10 x i8], [10 x i8]* @.str101, i32 0, i32 0
  %1302 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str101.c, i8* %1301, i64 9)
  %1303 = call %nyx_string* @nyx_string_concat(%nyx_string* %1300, %nyx_string* %1302)
  %1304 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 2
  %1305 = load i64, i64* %1304
  %1306 = call %nyx_string* @nyx_string_from_int(i64 %1305)
  %1307 = call %nyx_string* @nyx_string_concat(%nyx_string* %1303, %nyx_string* %1306)
  %1308 = getelementptr [9 x i8], [9 x i8]* @.str102, i32 0, i32 0
  %1309 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str102.c, i8* %1308, i64 8)
  %1310 = call %nyx_string* @nyx_string_concat(%nyx_string* %1307, %nyx_string* %1309)
  %1311 = call i8* @nyx_string_to_cstr(%nyx_string* %1310)
  call void @nyx_print_string(i8* %1311)
  %1312 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 3
  %1313 = load %nyx_string*, %nyx_string** %1312
  %1314 = call i8* @nyx_string_to_cstr(%nyx_string* %1313)
  call void @nyx_print_string(i8* %1314)
  br label %merge293
merge293:
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
  %1315 = getelementptr [1 x i8], [1 x i8]* @.str103, i32 0, i32 0
  %1316 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str103.c, i8* %1315, i64 0)
  %1317 = call i8* @nyx_string_to_cstr(%nyx_string* %1316)
  call void @nyx_print_string(i8* %1317)
  %1318 = getelementptr [36 x i8], [36 x i8]* @.str104, i32 0, i32 0
  %1319 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str104.c, i8* %1318, i64 35)
  %1320 = call i8* @nyx_string_to_cstr(%nyx_string* %1319)
  call void @nyx_print_string(i8* %1320)
  %1321 = alloca i64
  store i64 0, i64* %1321
  %1322 = alloca i64
  store i64 0, i64* %1322
  %1323 = alloca i64
  store i64 0, i64* %1323
  %1324 = call i8* @llvm.stacksave()
  br label %while_cond297
while_cond297:
  %1325 = load i64, i64* %1323
  %1326 = load { i64, i8* }*, { i64, i8* }** %results.ptr
  %1327 = call i64 @nyx_array_length({ i64, i8* }* %1326)
  %1328 = icmp slt i64 %1325, %1327
  br i1 %1328, label %while_body298, label %while_end299
while_body298:
  call void @llvm.stackrestore(i8* %1324)
  %1329 = load { i64, i8* }*, { i64, i8* }** %results.ptr
  %1330 = load i64, i64* %1323
  %1331 = call i64 @nyx_array_get({ i64, i8* }* %1329, i64 %1330)
  %1332 = inttoptr i64 %1331 to %TestResult*
  %1333 = load %TestResult, %TestResult* %1332
  %1334 = alloca %TestResult
  store %TestResult %1333, %TestResult* %1334
  %1335 = getelementptr %TestResult, %TestResult* %1334, i32 0, i32 4
  %1336 = load i1, i1* %1335
  br i1 %1336, label %then300, label %else301
then300:
  %1337 = load i64, i64* %1321
  %1338 = add i64 %1337, 1
  store i64 %1338, i64* %1321
  br label %merge302
else301:
  %1339 = load i64, i64* %1322
  %1340 = add i64 %1339, 1
  store i64 %1340, i64* %1322
  br label %merge302
merge302:
  %1341 = load i64, i64* %1323
  %1342 = add i64 %1341, 1
  store i64 %1342, i64* %1323
  br label %while_cond297
while_end299:
  %1343 = getelementptr [11 x i8], [11 x i8]* @.str105, i32 0, i32 0
  %1344 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str105.c, i8* %1343, i64 10)
  %1345 = load i64, i64* %1321
  %1346 = call %nyx_string* @nyx_string_from_int(i64 %1345)
  %1347 = call %nyx_string* @nyx_string_concat(%nyx_string* %1344, %nyx_string* %1346)
  %1348 = getelementptr [10 x i8], [10 x i8]* @.str106, i32 0, i32 0
  %1349 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str106.c, i8* %1348, i64 9)
  %1350 = call %nyx_string* @nyx_string_concat(%nyx_string* %1347, %nyx_string* %1349)
  %1351 = load i64, i64* %1322
  %1352 = call %nyx_string* @nyx_string_from_int(i64 %1351)
  %1353 = call %nyx_string* @nyx_string_concat(%nyx_string* %1350, %nyx_string* %1352)
  %1354 = getelementptr [10 x i8], [10 x i8]* @.str107, i32 0, i32 0
  %1355 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str107.c, i8* %1354, i64 9)
  %1356 = call %nyx_string* @nyx_string_concat(%nyx_string* %1353, %nyx_string* %1355)
  %1357 = load { i64, i8* }*, { i64, i8* }** %results.ptr
  %1358 = call i64 @nyx_array_length({ i64, i8* }* %1357)
  %1359 = call %nyx_string* @nyx_string_from_int(i64 %1358)
  %1360 = call %nyx_string* @nyx_string_concat(%nyx_string* %1356, %nyx_string* %1359)
  %1361 = getelementptr [8 x i8], [8 x i8]* @.str108, i32 0, i32 0
  %1362 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str108.c, i8* %1361, i64 7)
  %1363 = call %nyx_string* @nyx_string_concat(%nyx_string* %1360, %nyx_string* %1362)
  %1364 = call i8* @nyx_string_to_cstr(%nyx_string* %1363)
  call void @nyx_print_string(i8* %1364)
  %1365 = getelementptr [11 x i8], [11 x i8]* @.str109, i32 0, i32 0
  %1366 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str109.c, i8* %1365, i64 10)
  %1367 = load i64, i64* %total_passed.ptr
  %1368 = call %nyx_string* @nyx_string_from_int(i64 %1367)
  %1369 = call %nyx_string* @nyx_string_concat(%nyx_string* %1366, %nyx_string* %1368)
  %1370 = getelementptr [10 x i8], [10 x i8]* @.str110, i32 0, i32 0
  %1371 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str110.c, i8* %1370, i64 9)
  %1372 = call %nyx_string* @nyx_string_concat(%nyx_string* %1369, %nyx_string* %1371)
  %1373 = load i64, i64* %total_failed.ptr
  %1374 = call %nyx_string* @nyx_string_from_int(i64 %1373)
  %1375 = call %nyx_string* @nyx_string_concat(%nyx_string* %1372, %nyx_string* %1374)
  %1376 = getelementptr [10 x i8], [10 x i8]* @.str111, i32 0, i32 0
  %1377 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str111.c, i8* %1376, i64 9)
  %1378 = call %nyx_string* @nyx_string_concat(%nyx_string* %1375, %nyx_string* %1377)
  %1379 = load i64, i64* %total_passed.ptr
  %1380 = load i64, i64* %total_failed.ptr
  %1381 = add i64 %1379, %1380
  %1382 = call %nyx_string* @nyx_string_from_int(i64 %1381)
  %1383 = call %nyx_string* @nyx_string_concat(%nyx_string* %1378, %nyx_string* %1382)
  %1384 = getelementptr [8 x i8], [8 x i8]* @.str112, i32 0, i32 0
  %1385 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str112.c, i8* %1384, i64 7)
  %1386 = call %nyx_string* @nyx_string_concat(%nyx_string* %1383, %nyx_string* %1385)
  %1387 = call i8* @nyx_string_to_cstr(%nyx_string* %1386)
  call void @nyx_print_string(i8* %1387)
  %1388 = alloca i1
  store i1 false, i1* %1388
  %1389 = load i64, i64* %total_failed.ptr
  %1390 = icmp eq i64 %1389, 0
  br i1 %1390, label %sc_and_rhs303, label %sc_and_end304
sc_and_rhs303:
  %1391 = load i64, i64* %1322
  %1392 = icmp eq i64 %1391, 0
  store i1 %1392, i1* %1388
  br label %sc_and_end304
sc_and_end304:
  %1393 = load i1, i1* %1388
  br i1 %1393, label %then305, label %else306
then305:
  %1394 = getelementptr [27 x i8], [27 x i8]* @.str113, i32 0, i32 0
  %1395 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str113.c, i8* %1394, i64 26)
  %1396 = call i8* @nyx_string_to_cstr(%nyx_string* %1395)
  call void @nyx_print_string(i8* %1396)
  br label %merge307
else306:
  %1397 = getelementptr [28 x i8], [28 x i8]* @.str114, i32 0, i32 0
  %1398 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str114.c, i8* %1397, i64 27)
  %1399 = call i8* @nyx_string_to_cstr(%nyx_string* %1398)
  call void @nyx_print_string(i8* %1399)
  br label %merge307
merge307:
  %1400 = getelementptr [36 x i8], [36 x i8]* @.str115, i32 0, i32 0
  %1401 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str115.c, i8* %1400, i64 35)
  %1402 = call i8* @nyx_string_to_cstr(%nyx_string* %1401)
  call void @nyx_print_string(i8* %1402)
  ret i64 0
}

define internal %nyx_string* @cov_clang_major(
) {
  %1403 = getelementptr [28 x i8], [28 x i8]* @.str116, i32 0, i32 0
  %1404 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str116.c, i8* %1403, i64 27)
  %1405 = call i8* @nyx_string_to_cstr(%nyx_string* %1404)
  %1406 = call %nyx_string* @nyx_exec(i8* %1405)
  %1407 = alloca %nyx_string*
  store %nyx_string* %1406, %nyx_string** %1407
  %1408 = load %nyx_string*, %nyx_string** %1407
  %1409 = getelementptr [9 x i8], [9 x i8]* @.str117, i32 0, i32 0
  %1410 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str117.c, i8* %1409, i64 8)
  %1411 = call i64 @nyx_string_index_of(%nyx_string* %1408, %nyx_string* %1410)
  %1412 = alloca i64
  store i64 %1411, i64* %1412
  %1413 = load i64, i64* %1412
  %1414 = icmp slt i64 %1413, 0
  br i1 %1414, label %then308, label %else309
then308:
  %1415 = getelementptr [1 x i8], [1 x i8]* @.str118, i32 0, i32 0
  %1416 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str118.c, i8* %1415, i64 0)
  ret %nyx_string* %1416
else309:
  br label %merge310
merge310:
  %1417 = load i64, i64* %1412
  %1418 = add i64 %1417, 8
  %1419 = alloca i64
  store i64 %1418, i64* %1419
  %1420 = getelementptr [1 x i8], [1 x i8]* @.str119, i32 0, i32 0
  %1421 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str119.c, i8* %1420, i64 0)
  %1422 = alloca %nyx_string*
  store %nyx_string* %1421, %nyx_string** %1422
  %1423 = call i8* @llvm.stacksave()
  br label %while_cond311
while_cond311:
  %1424 = load i64, i64* %1419
  %1425 = load %nyx_string*, %nyx_string** %1407
  %1426 = call i64 @nyx_string_byte_length(%nyx_string* %1425)
  %1427 = icmp slt i64 %1424, %1426
  br i1 %1427, label %while_body312, label %while_end313
while_body312:
  call void @llvm.stackrestore(i8* %1423)
  %1428 = load %nyx_string*, %nyx_string** %1407
  %1429 = load i64, i64* %1419
  %1430 = call i8 @nyx_string_char_at(%nyx_string* %1428, i64 %1429)
  %1431 = zext i8 %1430 to i64
  %1432 = alloca i64
  store i64 %1431, i64* %1432
  %1433 = alloca i1
  store i1 false, i1* %1433
  %1434 = load i64, i64* %1432
  %1435 = icmp sge i64 %1434, 48
  br i1 %1435, label %sc_and_rhs314, label %sc_and_end315
sc_and_rhs314:
  %1436 = load i64, i64* %1432
  %1437 = icmp sle i64 %1436, 57
  store i1 %1437, i1* %1433
  br label %sc_and_end315
sc_and_end315:
  %1438 = load i1, i1* %1433
  br i1 %1438, label %then316, label %else317
then316:
  %1439 = load %nyx_string*, %nyx_string** %1422
  %1440 = load %nyx_string*, %nyx_string** %1407
  %1441 = load i64, i64* %1419
  %1442 = load i64, i64* %1419
  %1443 = add i64 %1442, 1
  %1444 = call %nyx_string* @nyx_string_substring(%nyx_string* %1440, i64 %1441, i64 %1443)
  %1445 = call %nyx_string* @nyx_string_concat(%nyx_string* %1439, %nyx_string* %1444)
  store %nyx_string* %1445, %nyx_string** %1422
  %1446 = load i64, i64* %1419
  %1447 = add i64 %1446, 1
  store i64 %1447, i64* %1419
  br label %merge318
else317:
  %1448 = load %nyx_string*, %nyx_string** %1407
  %1449 = call i64 @nyx_string_byte_length(%nyx_string* %1448)
  store i64 %1449, i64* %1419
  br label %merge318
merge318:
  br label %while_cond311
while_end313:
  %1450 = load %nyx_string*, %nyx_string** %1422
  ret %nyx_string* %1450
}

define internal i1 @cov_profraw_valid(
%nyx_string* %path.param) {
  %path.ptr = alloca %nyx_string*
  store %nyx_string* %path.param, %nyx_string** %path.ptr
  %1451 = getelementptr [10 x i8], [10 x i8]* @.str120, i32 0, i32 0
  %1452 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str120.c, i8* %1451, i64 9)
  %1453 = load %nyx_string*, %nyx_string** %path.ptr
  %1454 = call %nyx_string* @nyx_string_concat(%nyx_string* %1452, %nyx_string* %1453)
  %1455 = getelementptr [2 x i8], [2 x i8]* @.str121, i32 0, i32 0
  %1456 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str121.c, i8* %1455, i64 1)
  %1457 = call %nyx_string* @nyx_string_concat(%nyx_string* %1454, %nyx_string* %1456)
  %1458 = call i8* @nyx_string_to_cstr(%nyx_string* %1457)
  %1459 = call i64 @nyx_exec_code(i8* %1458)
  %1460 = icmp eq i64 %1459, 0
  ret i1 %1460
}

define internal %nyx_string* @cov_find_profdata(
) {
  %1461 = call %nyx_string* @cov_clang_major()
  %1462 = alloca %nyx_string*
  store %nyx_string* %1461, %nyx_string** %1462
  %1463 = load %nyx_string*, %nyx_string** %1462
  %1464 = getelementptr [1 x i8], [1 x i8]* @.str122, i32 0, i32 0
  %1465 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str122.c, i8* %1464, i64 0)
  %1466 = call i1 @nyx_string_equals(%nyx_string* %1463, %nyx_string* %1465)
  %1467 = xor i1 %1466, true
  br i1 %1467, label %then319, label %else320
then319:
  %1468 = getelementptr [26 x i8], [26 x i8]* @.str123, i32 0, i32 0
  %1469 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str123.c, i8* %1468, i64 25)
  %1470 = load %nyx_string*, %nyx_string** %1462
  %1471 = call %nyx_string* @nyx_string_concat(%nyx_string* %1469, %nyx_string* %1470)
  %1472 = getelementptr [13 x i8], [13 x i8]* @.str124, i32 0, i32 0
  %1473 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str124.c, i8* %1472, i64 12)
  %1474 = call %nyx_string* @nyx_string_concat(%nyx_string* %1471, %nyx_string* %1473)
  %1475 = call i8* @nyx_string_to_cstr(%nyx_string* %1474)
  %1476 = call %nyx_string* @nyx_exec(i8* %1475)
  %1477 = call %nyx_string* @nyx_string_trim(%nyx_string* %1476)
  %1478 = alloca %nyx_string*
  store %nyx_string* %1477, %nyx_string** %1478
  %1479 = load %nyx_string*, %nyx_string** %1478
  %1480 = getelementptr [1 x i8], [1 x i8]* @.str125, i32 0, i32 0
  %1481 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str125.c, i8* %1480, i64 0)
  %1482 = call i1 @nyx_string_equals(%nyx_string* %1479, %nyx_string* %1481)
  %1483 = xor i1 %1482, true
  br i1 %1483, label %then322, label %else323
then322:
  %1484 = load %nyx_string*, %nyx_string** %1478
  ret %nyx_string* %1484
else323:
  br label %merge324
merge324:
  br label %merge321
else320:
  br label %merge321
merge321:
  %1485 = getelementptr [37 x i8], [37 x i8]* @.str126, i32 0, i32 0
  %1486 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str126.c, i8* %1485, i64 36)
  %1487 = call i8* @nyx_string_to_cstr(%nyx_string* %1486)
  %1488 = call %nyx_string* @nyx_exec(i8* %1487)
  %1489 = call %nyx_string* @nyx_string_trim(%nyx_string* %1488)
  ret %nyx_string* %1489
}

define internal { i64, i8* }* @cov_fields(
%nyx_string* %line.param) {
  %line.ptr = alloca %nyx_string*
  store %nyx_string* %line.param, %nyx_string** %line.ptr
  %1490 = call { i64, i8* }* @nyx_array_new_ptr()
  %1491 = alloca { i64, i8* }*
  store { i64, i8* }* %1490, { i64, i8* }** %1491
  %1492 = alloca i64
  store i64 0, i64* %1492
  %1493 = alloca i64
  store i64 0, i64* %1493
  %1494 = call i8* @llvm.stacksave()
  br label %while_cond325
while_cond325:
  %1495 = load i64, i64* %1493
  %1496 = load %nyx_string*, %nyx_string** %line.ptr
  %1497 = call i64 @nyx_string_byte_length(%nyx_string* %1496)
  %1498 = icmp slt i64 %1495, %1497
  br i1 %1498, label %while_body326, label %while_end327
while_body326:
  call void @llvm.stackrestore(i8* %1494)
  %1499 = load %nyx_string*, %nyx_string** %line.ptr
  %1500 = load i64, i64* %1493
  %1501 = call i8 @nyx_string_char_at(%nyx_string* %1499, i64 %1500)
  %1502 = zext i8 %1501 to i64
  %1503 = icmp eq i64 %1502, 9
  br i1 %1503, label %then328, label %else329
then328:
  %1504 = load { i64, i8* }*, { i64, i8* }** %1491
  %1505 = load %nyx_string*, %nyx_string** %line.ptr
  %1506 = load i64, i64* %1492
  %1507 = load i64, i64* %1493
  %1508 = call %nyx_string* @nyx_string_substring(%nyx_string* %1505, i64 %1506, i64 %1507)
  %1509 = ptrtoint %nyx_string* %1508 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1504, i64 %1509, i64 2)
  %1510 = load i64, i64* %1493
  %1511 = add i64 %1510, 1
  store i64 %1511, i64* %1492
  br label %merge330
else329:
  br label %merge330
merge330:
  %1512 = load i64, i64* %1493
  %1513 = add i64 %1512, 1
  store i64 %1513, i64* %1493
  br label %while_cond325
while_end327:
  %1514 = load { i64, i8* }*, { i64, i8* }** %1491
  %1515 = load %nyx_string*, %nyx_string** %line.ptr
  %1516 = load i64, i64* %1492
  %1517 = load %nyx_string*, %nyx_string** %line.ptr
  %1518 = call i64 @nyx_string_byte_length(%nyx_string* %1517)
  %1519 = call %nyx_string* @nyx_string_substring(%nyx_string* %1515, i64 %1516, i64 %1518)
  %1520 = ptrtoint %nyx_string* %1519 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1514, i64 %1520, i64 2)
  %1521 = load { i64, i8* }*, { i64, i8* }** %1491
  ret { i64, i8* }* %1521
}

define internal %nyx_string* @cov_pad(
i64 %n.param) {
  %n.ptr = alloca i64
  store i64 %n.param, i64* %n.ptr
  %1522 = load i64, i64* %n.ptr
  %1523 = call %nyx_string* @nyx_string_from_int(i64 %1522)
  %1524 = alloca %nyx_string*
  store %nyx_string* %1523, %nyx_string** %1524
  %1525 = getelementptr [2 x i8], [2 x i8]* @.str127, i32 0, i32 0
  %1526 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str127.c, i8* %1525, i64 1)
  %1527 = alloca %nyx_string*
  store %nyx_string* %1526, %nyx_string** %1527
  %1528 = call i8* @llvm.stacksave()
  br label %while_cond331
while_cond331:
  %1529 = load %nyx_string*, %nyx_string** %1524
  %1530 = call i64 @nyx_string_byte_length(%nyx_string* %1529)
  %1531 = icmp slt i64 %1530, 9
  br i1 %1531, label %while_body332, label %while_end333
while_body332:
  call void @llvm.stackrestore(i8* %1528)
  %1532 = load %nyx_string*, %nyx_string** %1527
  %1533 = load %nyx_string*, %nyx_string** %1524
  %1534 = call %nyx_string* @nyx_string_concat(%nyx_string* %1532, %nyx_string* %1533)
  store %nyx_string* %1534, %nyx_string** %1524
  br label %while_cond331
while_end333:
  %1535 = load %nyx_string*, %nyx_string** %1524
  ret %nyx_string* %1535
}

define internal i8* @cov_called_from_show(
%nyx_string* %show.param) {
  %show.ptr = alloca %nyx_string*
  store %nyx_string* %show.param, %nyx_string** %show.ptr
  %1536 = call i8* @nyx_map_new(i32 0)
  %1537 = alloca i8*
  store i8* %1536, i8** %1537
  %1538 = load %nyx_string*, %nyx_string** %show.ptr
  %1539 = getelementptr [2 x i8], [2 x i8]* @.str128, i32 0, i32 0
  %1540 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str128.c, i8* %1539, i64 1)
  %1541 = call { i64, i8* }* @nyx_string_split(%nyx_string* %1538, %nyx_string* %1540)
  %1542 = alloca { i64, i8* }*
  store { i64, i8* }* %1541, { i64, i8* }** %1542
  %1543 = getelementptr [1 x i8], [1 x i8]* @.str129, i32 0, i32 0
  %1544 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str129.c, i8* %1543, i64 0)
  %1545 = alloca %nyx_string*
  store %nyx_string* %1544, %nyx_string** %1545
  %1546 = alloca i64
  store i64 0, i64* %1546
  %1547 = getelementptr [3 x i8], [3 x i8]* @.str130, i32 0, i32 0
  %1548 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str130.c, i8* %1547, i64 2)
  %1549 = alloca %nyx_string*
  store %nyx_string* %1548, %nyx_string** %1549
  %1550 = getelementptr [4 x i8], [4 x i8]* @.str131, i32 0, i32 0
  %1551 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str131.c, i8* %1550, i64 3)
  %1552 = alloca %nyx_string*
  store %nyx_string* %1551, %nyx_string** %1552
  %1553 = getelementptr [2 x i8], [2 x i8]* @.str132, i32 0, i32 0
  %1554 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str132.c, i8* %1553, i64 1)
  %1555 = alloca %nyx_string*
  store %nyx_string* %1554, %nyx_string** %1555
  %1556 = getelementptr [11 x i8], [11 x i8]* @.str133, i32 0, i32 0
  %1557 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str133.c, i8* %1556, i64 10)
  %1558 = alloca %nyx_string*
  store %nyx_string* %1557, %nyx_string** %1558
  %1559 = getelementptr [1 x i8], [1 x i8]* @.str134, i32 0, i32 0
  %1560 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str134.c, i8* %1559, i64 0)
  %1561 = alloca %nyx_string*
  store %nyx_string* %1560, %nyx_string** %1561
  %1562 = getelementptr [14 x i8], [14 x i8]* @.str135, i32 0, i32 0
  %1563 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str135.c, i8* %1562, i64 13)
  %1564 = alloca %nyx_string*
  store %nyx_string* %1563, %nyx_string** %1564
  %1565 = getelementptr [2 x i8], [2 x i8]* @.str136, i32 0, i32 0
  %1566 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str136.c, i8* %1565, i64 1)
  %1567 = alloca %nyx_string*
  store %nyx_string* %1566, %nyx_string** %1567
  %1568 = getelementptr [2 x i8], [2 x i8]* @.str137, i32 0, i32 0
  %1569 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str137.c, i8* %1568, i64 1)
  %1570 = alloca %nyx_string*
  store %nyx_string* %1569, %nyx_string** %1570
  %1571 = getelementptr [2 x i8], [2 x i8]* @.str138, i32 0, i32 0
  %1572 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str138.c, i8* %1571, i64 1)
  %1573 = alloca %nyx_string*
  store %nyx_string* %1572, %nyx_string** %1573
  %1574 = getelementptr [2 x i8], [2 x i8]* @.str139, i32 0, i32 0
  %1575 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str139.c, i8* %1574, i64 1)
  %1576 = alloca %nyx_string*
  store %nyx_string* %1575, %nyx_string** %1576
  %1577 = call i8* @llvm.stacksave()
  br label %while_cond334
while_cond334:
  %1578 = load i64, i64* %1546
  %1579 = load { i64, i8* }*, { i64, i8* }** %1542
  %1580 = call i64 @nyx_array_length({ i64, i8* }* %1579)
  %1581 = icmp slt i64 %1578, %1580
  br i1 %1581, label %while_body335, label %while_end336
while_body335:
  call void @llvm.stackrestore(i8* %1577)
  %1582 = load { i64, i8* }*, { i64, i8* }** %1542
  %1583 = load i64, i64* %1546
  %1584 = call i64 @nyx_array_get_checked({ i64, i8* }* %1582, i64 %1583, i64 2)
  %1585 = inttoptr i64 %1584 to %nyx_string*
  %1586 = alloca %nyx_string*
  store %nyx_string* %1585, %nyx_string** %1586
  %1587 = alloca i1
  store i1 false, i1* %1587
  %1588 = alloca i1
  store i1 false, i1* %1588
  %1589 = load %nyx_string*, %nyx_string** %1586
  %1590 = load %nyx_string*, %nyx_string** %1549
  %1591 = call i1 @nyx_string_starts_with(%nyx_string* %1589, %nyx_string* %1590)
  br i1 %1591, label %sc_and_rhs337, label %sc_and_end338
sc_and_rhs337:
  %1592 = load %nyx_string*, %nyx_string** %1586
  %1593 = load %nyx_string*, %nyx_string** %1552
  %1594 = call i1 @nyx_string_starts_with(%nyx_string* %1592, %nyx_string* %1593)
  %1595 = xor i1 %1594, true
  store i1 %1595, i1* %1588
  br label %sc_and_end338
sc_and_end338:
  %1596 = load i1, i1* %1588
  br i1 %1596, label %sc_and_rhs339, label %sc_and_end340
sc_and_rhs339:
  %1597 = load %nyx_string*, %nyx_string** %1586
  %1598 = load %nyx_string*, %nyx_string** %1555
  %1599 = call i1 @nyx_string_ends_with(%nyx_string* %1597, %nyx_string* %1598)
  store i1 %1599, i1* %1587
  br label %sc_and_end340
sc_and_end340:
  %1600 = load i1, i1* %1587
  br i1 %1600, label %then341, label %else342
then341:
  %1601 = load %nyx_string*, %nyx_string** %1586
  %1602 = load %nyx_string*, %nyx_string** %1586
  %1603 = call i64 @nyx_string_byte_length(%nyx_string* %1602)
  %1604 = sub i64 %1603, 1
  %1605 = call %nyx_string* @nyx_string_substring(%nyx_string* %1601, i64 2, i64 %1604)
  %1606 = alloca %nyx_string*
  store %nyx_string* %1605, %nyx_string** %1606
  %1607 = load %nyx_string*, %nyx_string** %1606
  %1608 = load %nyx_string*, %nyx_string** %1558
  %1609 = call i1 @nyx_string_starts_with(%nyx_string* %1607, %nyx_string* %1608)
  br i1 %1609, label %then344, label %else345
then344:
  %1610 = load %nyx_string*, %nyx_string** %1606
  %1611 = load %nyx_string*, %nyx_string** %1606
  %1612 = call i64 @nyx_string_byte_length(%nyx_string* %1611)
  %1613 = call %nyx_string* @nyx_string_substring(%nyx_string* %1610, i64 10, i64 %1612)
  store %nyx_string* %1613, %nyx_string** %1606
  br label %merge346
else345:
  br label %merge346
merge346:
  %1614 = load %nyx_string*, %nyx_string** %1606
  store %nyx_string* %1614, %nyx_string** %1545
  br label %merge343
else342:
  %1615 = alloca i1
  store i1 false, i1* %1615
  %1616 = load %nyx_string*, %nyx_string** %1545
  %1617 = load %nyx_string*, %nyx_string** %1561
  %1618 = call i1 @nyx_string_equals(%nyx_string* %1616, %nyx_string* %1617)
  %1619 = xor i1 %1618, true
  br i1 %1619, label %sc_and_rhs347, label %sc_and_end348
sc_and_rhs347:
  %1620 = load %nyx_string*, %nyx_string** %1586
  %1621 = load %nyx_string*, %nyx_string** %1564
  %1622 = call i1 @nyx_string_contains(%nyx_string* %1620, %nyx_string* %1621)
  store i1 %1622, i1* %1615
  br label %sc_and_end348
sc_and_end348:
  %1623 = load i1, i1* %1615
  br i1 %1623, label %then349, label %else350
then349:
  %1624 = load %nyx_string*, %nyx_string** %1586
  %1625 = load %nyx_string*, %nyx_string** %1567
  %1626 = call i64 @nyx_string_index_of(%nyx_string* %1624, %nyx_string* %1625)
  %1627 = alloca i64
  store i64 %1626, i64* %1627
  %1628 = load %nyx_string*, %nyx_string** %1586
  %1629 = load %nyx_string*, %nyx_string** %1570
  %1630 = call i64 @nyx_string_index_of(%nyx_string* %1628, %nyx_string* %1629)
  %1631 = alloca i64
  store i64 %1630, i64* %1631
  %1632 = alloca i1
  store i1 false, i1* %1632
  %1633 = load i64, i64* %1627
  %1634 = icmp sge i64 %1633, 0
  br i1 %1634, label %sc_and_rhs352, label %sc_and_end353
sc_and_rhs352:
  %1635 = load i64, i64* %1631
  %1636 = load i64, i64* %1627
  %1637 = icmp sgt i64 %1635, %1636
  store i1 %1637, i1* %1632
  br label %sc_and_end353
sc_and_end353:
  %1638 = load i1, i1* %1632
  br i1 %1638, label %then354, label %else355
then354:
  %1639 = load %nyx_string*, %nyx_string** %1586
  %1640 = load i64, i64* %1627
  %1641 = add i64 %1640, 1
  %1642 = load i64, i64* %1631
  %1643 = call %nyx_string* @nyx_string_substring(%nyx_string* %1639, i64 %1641, i64 %1642)
  %1644 = load %nyx_string*, %nyx_string** %1573
  %1645 = call { i64, i8* }* @nyx_string_split(%nyx_string* %1643, %nyx_string* %1644)
  %1646 = alloca { i64, i8* }*
  store { i64, i8* }* %1645, { i64, i8* }** %1646
  %1647 = alloca i64
  store i64 0, i64* %1647
  %1648 = call i8* @llvm.stacksave()
  br label %while_cond357
while_cond357:
  %1649 = load i64, i64* %1647
  %1650 = load { i64, i8* }*, { i64, i8* }** %1646
  %1651 = call i64 @nyx_array_length({ i64, i8* }* %1650)
  %1652 = icmp slt i64 %1649, %1651
  br i1 %1652, label %while_body358, label %while_end359
while_body358:
  call void @llvm.stackrestore(i8* %1648)
  %1653 = load { i64, i8* }*, { i64, i8* }** %1646
  %1654 = load i64, i64* %1647
  %1655 = call i64 @nyx_array_get_checked({ i64, i8* }* %1653, i64 %1654, i64 2)
  %1656 = inttoptr i64 %1655 to %nyx_string*
  %1657 = alloca %nyx_string*
  store %nyx_string* %1656, %nyx_string** %1657
  %1658 = load %nyx_string*, %nyx_string** %1657
  %1659 = call %nyx_string* @nyx_string_trim(%nyx_string* %1658)
  %1660 = call i64 @nyx_string_to_int(%nyx_string* %1659)
  %1661 = icmp sgt i64 %1660, 0
  br i1 %1661, label %then360, label %else361
then360:
  %1662 = load i8*, i8** %1537
  %1663 = load %nyx_string*, %nyx_string** %1545
  %1664 = load %nyx_string*, %nyx_string** %1576
  %1665 = call i8* @nyx_string_to_cstr(%nyx_string* %1663)
  %1666 = call i8* @nyx_string_to_cstr(%nyx_string* %1664)
  call void @nyx_map_insert_str(i8* %1662, i8* %1665, i8* %1666)
  br label %merge362
else361:
  br label %merge362
merge362:
  %1667 = load i64, i64* %1647
  %1668 = add i64 %1667, 1
  store i64 %1668, i64* %1647
  br label %while_cond357
while_end359:
  br label %merge356
else355:
  br label %merge356
merge356:
  br label %merge351
else350:
  br label %merge351
merge351:
  br label %merge343
merge343:
  %1669 = load i64, i64* %1546
  %1670 = add i64 %1669, 1
  store i64 %1670, i64* %1546
  br label %while_cond334
while_end336:
  %1671 = load i8*, i8** %1537
  ret i8* %1671
}

define internal { i64, i8* }* @cov_src_modules(
) {
  %1672 = call { i64, i8* }* @nyx_array_new_ptr()
  %1673 = alloca { i64, i8* }*
  store { i64, i8* }* %1672, { i64, i8* }** %1673
  %1674 = getelementptr [4 x i8], [4 x i8]* @.str140, i32 0, i32 0
  %1675 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str140.c, i8* %1674, i64 3)
  %1676 = call i8* @nyx_string_to_cstr(%nyx_string* %1675)
  %1677 = call i1 @nyx_file_exists(i8* %1676)
  %1678 = xor i1 %1677, true
  br i1 %1678, label %then363, label %else364
then363:
  %1679 = load { i64, i8* }*, { i64, i8* }** %1673
  ret { i64, i8* }* %1679
else364:
  br label %merge365
merge365:
  %1680 = getelementptr [50 x i8], [50 x i8]* @.str141, i32 0, i32 0
  %1681 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str141.c, i8* %1680, i64 49)
  %1682 = call i8* @nyx_string_to_cstr(%nyx_string* %1681)
  %1683 = call %nyx_string* @nyx_exec(i8* %1682)
  %1684 = alloca %nyx_string*
  store %nyx_string* %1683, %nyx_string** %1684
  %1685 = load %nyx_string*, %nyx_string** %1684
  %1686 = getelementptr [2 x i8], [2 x i8]* @.str142, i32 0, i32 0
  %1687 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str142.c, i8* %1686, i64 1)
  %1688 = call { i64, i8* }* @nyx_string_split(%nyx_string* %1685, %nyx_string* %1687)
  %1689 = alloca { i64, i8* }*
  store { i64, i8* }* %1688, { i64, i8* }** %1689
  %1690 = alloca i64
  store i64 0, i64* %1690
  %1691 = getelementptr [4 x i8], [4 x i8]* @.str143, i32 0, i32 0
  %1692 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str143.c, i8* %1691, i64 3)
  %1693 = alloca %nyx_string*
  store %nyx_string* %1692, %nyx_string** %1693
  %1694 = getelementptr [9 x i8], [9 x i8]* @.str144, i32 0, i32 0
  %1695 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str144.c, i8* %1694, i64 8)
  %1696 = alloca %nyx_string*
  store %nyx_string* %1695, %nyx_string** %1696
  %1697 = call i8* @llvm.stacksave()
  br label %while_cond366
while_cond366:
  %1698 = load i64, i64* %1690
  %1699 = load { i64, i8* }*, { i64, i8* }** %1689
  %1700 = call i64 @nyx_array_length({ i64, i8* }* %1699)
  %1701 = icmp slt i64 %1698, %1700
  br i1 %1701, label %while_body367, label %while_end368
while_body367:
  call void @llvm.stackrestore(i8* %1697)
  %1702 = load { i64, i8* }*, { i64, i8* }** %1689
  %1703 = load i64, i64* %1690
  %1704 = call i64 @nyx_array_get_checked({ i64, i8* }* %1702, i64 %1703, i64 2)
  %1705 = inttoptr i64 %1704 to %nyx_string*
  %1706 = alloca %nyx_string*
  store %nyx_string* %1705, %nyx_string** %1706
  %1707 = load %nyx_string*, %nyx_string** %1706
  %1708 = call %nyx_string* @nyx_string_trim(%nyx_string* %1707)
  %1709 = alloca %nyx_string*
  store %nyx_string* %1708, %nyx_string** %1709
  %1710 = alloca i1
  store i1 false, i1* %1710
  %1711 = load %nyx_string*, %nyx_string** %1709
  %1712 = load %nyx_string*, %nyx_string** %1693
  %1713 = call i1 @nyx_string_ends_with(%nyx_string* %1711, %nyx_string* %1712)
  br i1 %1713, label %sc_and_rhs369, label %sc_and_end370
sc_and_rhs369:
  %1714 = load %nyx_string*, %nyx_string** %1709
  %1715 = load %nyx_string*, %nyx_string** %1696
  %1716 = call i1 @nyx_string_ends_with(%nyx_string* %1714, %nyx_string* %1715)
  %1717 = xor i1 %1716, true
  store i1 %1717, i1* %1710
  br label %sc_and_end370
sc_and_end370:
  %1718 = load i1, i1* %1710
  br i1 %1718, label %then371, label %else372
then371:
  %1719 = load { i64, i8* }*, { i64, i8* }** %1673
  %1720 = load %nyx_string*, %nyx_string** %1709
  %1721 = load %nyx_string*, %nyx_string** %1709
  %1722 = call i64 @nyx_string_byte_length(%nyx_string* %1721)
  %1723 = sub i64 %1722, 3
  %1724 = call %nyx_string* @nyx_string_substring(%nyx_string* %1720, i64 0, i64 %1723)
  %1725 = ptrtoint %nyx_string* %1724 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1719, i64 %1725, i64 2)
  br label %merge373
else372:
  br label %merge373
merge373:
  %1726 = load i64, i64* %1690
  %1727 = add i64 %1726, 1
  store i64 %1727, i64* %1690
  br label %while_cond366
while_end368:
  %1728 = load { i64, i8* }*, { i64, i8* }** %1673
  ret { i64, i8* }* %1728
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
  %1729 = getelementptr [1 x i8], [1 x i8]* @.str145, i32 0, i32 0
  %1730 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str145.c, i8* %1729, i64 0)
  %1731 = alloca %nyx_string*
  store %nyx_string* %1730, %nyx_string** %1731
  %1732 = alloca i64
  store i64 0, i64* %1732
  %1733 = getelementptr [9 x i8], [9 x i8]* @.str146, i32 0, i32 0
  %1734 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str146.c, i8* %1733, i64 8)
  %1735 = alloca %nyx_string*
  store %nyx_string* %1734, %nyx_string** %1735
  %1736 = getelementptr [3 x i8], [3 x i8]* @.str147, i32 0, i32 0
  %1737 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str147.c, i8* %1736, i64 2)
  %1738 = alloca %nyx_string*
  store %nyx_string* %1737, %nyx_string** %1738
  %1739 = call i8* @llvm.stacksave()
  br label %while_cond374
while_cond374:
  %1740 = load i64, i64* %1732
  %1741 = load { i64, i8* }*, { i64, i8* }** %mods.ptr
  %1742 = call i64 @nyx_array_length({ i64, i8* }* %1741)
  %1743 = icmp slt i64 %1740, %1742
  br i1 %1743, label %while_body375, label %while_end376
while_body375:
  call void @llvm.stackrestore(i8* %1739)
  %1744 = load { i64, i8* }*, { i64, i8* }** %mods.ptr
  %1745 = load i64, i64* %1732
  %1746 = call i64 @nyx_array_get_checked({ i64, i8* }* %1744, i64 %1745, i64 2)
  %1747 = inttoptr i64 %1746 to %nyx_string*
  %1748 = alloca %nyx_string*
  store %nyx_string* %1747, %nyx_string** %1748
  %1749 = load %nyx_string*, %nyx_string** %1731
  %1750 = load %nyx_string*, %nyx_string** %1735
  %1751 = call %nyx_string* @nyx_string_concat(%nyx_string* %1749, %nyx_string* %1750)
  %1752 = load %nyx_string*, %nyx_string** %1748
  %1753 = call %nyx_string* @nyx_string_concat(%nyx_string* %1751, %nyx_string* %1752)
  %1754 = load %nyx_string*, %nyx_string** %1738
  %1755 = call %nyx_string* @nyx_string_concat(%nyx_string* %1753, %nyx_string* %1754)
  store %nyx_string* %1755, %nyx_string** %1731
  %1756 = load i64, i64* %1732
  %1757 = add i64 %1756, 1
  store i64 %1757, i64* %1732
  br label %while_cond374
while_end376:
  %1758 = load %nyx_string*, %nyx_string** %1731
  %1759 = getelementptr [36 x i8], [36 x i8]* @.str148, i32 0, i32 0
  %1760 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str148.c, i8* %1759, i64 35)
  %1761 = call %nyx_string* @nyx_string_concat(%nyx_string* %1758, %nyx_string* %1760)
  store %nyx_string* %1761, %nyx_string** %1731
  %1762 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %1763 = getelementptr [13 x i8], [13 x i8]* @.str149, i32 0, i32 0
  %1764 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str149.c, i8* %1763, i64 12)
  %1765 = call %nyx_string* @nyx_string_concat(%nyx_string* %1762, %nyx_string* %1764)
  %1766 = load %nyx_string*, %nyx_string** %1731
  %1767 = call i8* @nyx_string_to_cstr(%nyx_string* %1765)
  %1768 = call i1 @nyx_write_file_safe(i8* %1767, %nyx_string* %1766)
  %1769 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %1770 = getelementptr [14 x i8], [14 x i8]* @.str150, i32 0, i32 0
  %1771 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str150.c, i8* %1770, i64 13)
  %1772 = call %nyx_string* @nyx_string_concat(%nyx_string* %1769, %nyx_string* %1771)
  %1773 = alloca %nyx_string*
  store %nyx_string* %1772, %nyx_string** %1773
  %1774 = getelementptr [13 x i8], [13 x i8]* @.str151, i32 0, i32 0
  %1775 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str151.c, i8* %1774, i64 12)
  %1776 = getelementptr [5 x i8], [5 x i8]* @.str152, i32 0, i32 0
  %1777 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str152.c, i8* %1776, i64 4)
  %1778 = call %nyx_string* @nyx_string_concat(%nyx_string* %1775, %nyx_string* %1777)
  %1779 = load %nyx_string*, %nyx_string** %nyx_home.ptr
  %1780 = call %nyx_string* @nyx_string_concat(%nyx_string* %1778, %nyx_string* %1779)
  %1781 = getelementptr [3 x i8], [3 x i8]* @.str153, i32 0, i32 0
  %1782 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str153.c, i8* %1781, i64 2)
  %1783 = call %nyx_string* @nyx_string_concat(%nyx_string* %1780, %nyx_string* %1782)
  %1784 = getelementptr [5 x i8], [5 x i8]* @.str154, i32 0, i32 0
  %1785 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str154.c, i8* %1784, i64 4)
  %1786 = call %nyx_string* @nyx_string_concat(%nyx_string* %1783, %nyx_string* %1785)
  %1787 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %1788 = call %nyx_string* @nyx_string_concat(%nyx_string* %1786, %nyx_string* %1787)
  %1789 = getelementptr [25 x i8], [25 x i8]* @.str155, i32 0, i32 0
  %1790 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str155.c, i8* %1789, i64 24)
  %1791 = call %nyx_string* @nyx_string_concat(%nyx_string* %1788, %nyx_string* %1790)
  %1792 = getelementptr [43 x i8], [43 x i8]* @.str156, i32 0, i32 0
  %1793 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str156.c, i8* %1792, i64 42)
  %1794 = call %nyx_string* @nyx_string_concat(%nyx_string* %1791, %nyx_string* %1793)
  %1795 = load %nyx_string*, %nyx_string** %orig_dir.ptr
  %1796 = call %nyx_string* @nyx_string_concat(%nyx_string* %1794, %nyx_string* %1795)
  %1797 = getelementptr [21 x i8], [21 x i8]* @.str157, i32 0, i32 0
  %1798 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str157.c, i8* %1797, i64 20)
  %1799 = call %nyx_string* @nyx_string_concat(%nyx_string* %1796, %nyx_string* %1798)
  %1800 = load %nyx_string*, %nyx_string** %1773
  %1801 = call %nyx_string* @nyx_string_concat(%nyx_string* %1799, %nyx_string* %1800)
  %1802 = getelementptr [22 x i8], [22 x i8]* @.str158, i32 0, i32 0
  %1803 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str158.c, i8* %1802, i64 21)
  %1804 = call %nyx_string* @nyx_string_concat(%nyx_string* %1801, %nyx_string* %1803)
  %1805 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %1806 = call %nyx_string* @nyx_string_concat(%nyx_string* %1804, %nyx_string* %1805)
  %1807 = getelementptr [21 x i8], [21 x i8]* @.str159, i32 0, i32 0
  %1808 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str159.c, i8* %1807, i64 20)
  %1809 = call %nyx_string* @nyx_string_concat(%nyx_string* %1806, %nyx_string* %1808)
  %1810 = getelementptr [7 x i8], [7 x i8]* @.str160, i32 0, i32 0
  %1811 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str160.c, i8* %1810, i64 6)
  %1812 = call %nyx_string* @nyx_string_concat(%nyx_string* %1809, %nyx_string* %1811)
  %1813 = getelementptr [27 x i8], [27 x i8]* @.str161, i32 0, i32 0
  %1814 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str161.c, i8* %1813, i64 26)
  %1815 = call %nyx_string* @nyx_string_concat(%nyx_string* %1812, %nyx_string* %1814)
  %1816 = getelementptr [10 x i8], [10 x i8]* @.str162, i32 0, i32 0
  %1817 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str162.c, i8* %1816, i64 9)
  %1818 = call %nyx_string* @nyx_string_concat(%nyx_string* %1815, %nyx_string* %1817)
  %1819 = alloca %nyx_string*
  store %nyx_string* %1818, %nyx_string** %1819
  %1820 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %1821 = getelementptr [13 x i8], [13 x i8]* @.str163, i32 0, i32 0
  %1822 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str163.c, i8* %1821, i64 12)
  %1823 = call %nyx_string* @nyx_string_concat(%nyx_string* %1820, %nyx_string* %1822)
  %1824 = load %nyx_string*, %nyx_string** %1819
  %1825 = call i8* @nyx_string_to_cstr(%nyx_string* %1823)
  %1826 = call i1 @nyx_write_file_safe(i8* %1825, %nyx_string* %1824)
  %1827 = getelementptr [7 x i8], [7 x i8]* @.str164, i32 0, i32 0
  %1828 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str164.c, i8* %1827, i64 6)
  %1829 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %1830 = call %nyx_string* @nyx_string_concat(%nyx_string* %1828, %nyx_string* %1829)
  %1831 = getelementptr [14 x i8], [14 x i8]* @.str165, i32 0, i32 0
  %1832 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str165.c, i8* %1831, i64 13)
  %1833 = call %nyx_string* @nyx_string_concat(%nyx_string* %1830, %nyx_string* %1832)
  %1834 = call i8* @nyx_string_to_cstr(%nyx_string* %1833)
  %1835 = call i64 @nyx_exec_code(i8* %1834)
  %1836 = load %nyx_string*, %nyx_string** %1773
  ret %nyx_string* %1836
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
  %1837 = getelementptr [9 x i8], [9 x i8]* @.str166, i32 0, i32 0
  %1838 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str166.c, i8* %1837, i64 8)
  %1839 = call i8* @nyx_string_to_cstr(%nyx_string* %1838)
  %1840 = call %nyx_string* @nyx_getenv(i8* %1839)
  %1841 = alloca %nyx_string*
  store %nyx_string* %1840, %nyx_string** %1841
  %1842 = getelementptr [4 x i8], [4 x i8]* @.str167, i32 0, i32 0
  %1843 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str167.c, i8* %1842, i64 3)
  %1844 = call i8* @nyx_string_to_cstr(%nyx_string* %1843)
  %1845 = call %nyx_string* @nyx_getenv(i8* %1844)
  %1846 = alloca %nyx_string*
  store %nyx_string* %1845, %nyx_string** %1846
  %1847 = getelementptr [1 x i8], [1 x i8]* @.str168, i32 0, i32 0
  %1848 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str168.c, i8* %1847, i64 0)
  %1849 = call i8* @nyx_string_to_cstr(%nyx_string* %1848)
  call void @nyx_print_string(i8* %1849)
  %1850 = getelementptr [36 x i8], [36 x i8]* @.str169, i32 0, i32 0
  %1851 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str169.c, i8* %1850, i64 35)
  %1852 = call i8* @nyx_string_to_cstr(%nyx_string* %1851)
  call void @nyx_print_string(i8* %1852)
  %1853 = getelementptr [1 x i8], [1 x i8]* @.str170, i32 0, i32 0
  %1854 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str170.c, i8* %1853, i64 0)
  %1855 = alloca %nyx_string*
  store %nyx_string* %1854, %nyx_string** %1855
  %1856 = alloca i64
  store i64 0, i64* %1856
  %1857 = call i8* @nyx_map_new(i32 0)
  %1858 = alloca i8*
  store i8* %1857, i8** %1858
  %1859 = call { i64, i8* }* @nyx_array_new_ptr()
  %1860 = alloca { i64, i8* }*
  store { i64, i8* }* %1859, { i64, i8* }** %1860
  %1861 = alloca i64
  store i64 0, i64* %1861
  %1862 = getelementptr [2 x i8], [2 x i8]* @.str171, i32 0, i32 0
  %1863 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str171.c, i8* %1862, i64 1)
  %1864 = alloca %nyx_string*
  store %nyx_string* %1863, %nyx_string** %1864
  %1865 = getelementptr [9 x i8], [9 x i8]* @.str172, i32 0, i32 0
  %1866 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str172.c, i8* %1865, i64 8)
  %1867 = alloca %nyx_string*
  store %nyx_string* %1866, %nyx_string** %1867
  %1868 = getelementptr [3 x i8], [3 x i8]* @.str173, i32 0, i32 0
  %1869 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str173.c, i8* %1868, i64 2)
  %1870 = alloca %nyx_string*
  store %nyx_string* %1869, %nyx_string** %1870
  %1871 = getelementptr [2 x i8], [2 x i8]* @.str174, i32 0, i32 0
  %1872 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str174.c, i8* %1871, i64 1)
  %1873 = alloca %nyx_string*
  store %nyx_string* %1872, %nyx_string** %1873
  %1874 = getelementptr [2 x i8], [2 x i8]* @.str175, i32 0, i32 0
  %1875 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str175.c, i8* %1874, i64 1)
  %1876 = alloca %nyx_string*
  store %nyx_string* %1875, %nyx_string** %1876
  %1877 = call i8* @llvm.stacksave()
  br label %while_cond377
while_cond377:
  %1878 = load i64, i64* %1861
  %1879 = load { i64, i8* }*, { i64, i8* }** %run_files.ptr
  %1880 = call i64 @nyx_array_length({ i64, i8* }* %1879)
  %1881 = icmp slt i64 %1878, %1880
  br i1 %1881, label %while_body378, label %while_end379
while_body378:
  call void @llvm.stackrestore(i8* %1877)
  %1882 = load { i64, i8* }*, { i64, i8* }** %run_idx.ptr
  %1883 = load i64, i64* %1861
  %1884 = call i64 @nyx_array_get_checked({ i64, i8* }* %1882, i64 %1883, i64 2)
  %1885 = inttoptr i64 %1884 to %nyx_string*
  %1886 = alloca %nyx_string*
  store %nyx_string* %1885, %nyx_string** %1886
  %1887 = load { i64, i8* }*, { i64, i8* }** %run_files.ptr
  %1888 = load i64, i64* %1861
  %1889 = call i64 @nyx_array_get_checked({ i64, i8* }* %1887, i64 %1888, i64 2)
  %1890 = inttoptr i64 %1889 to %nyx_string*
  %1891 = alloca %nyx_string*
  store %nyx_string* %1890, %nyx_string** %1891
  %1892 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %1893 = load %nyx_string*, %nyx_string** %1864
  %1894 = call %nyx_string* @nyx_string_concat(%nyx_string* %1892, %nyx_string* %1893)
  %1895 = load %nyx_string*, %nyx_string** %1886
  %1896 = call %nyx_string* @nyx_string_concat(%nyx_string* %1894, %nyx_string* %1895)
  %1897 = load %nyx_string*, %nyx_string** %1867
  %1898 = call %nyx_string* @nyx_string_concat(%nyx_string* %1896, %nyx_string* %1897)
  %1899 = alloca %nyx_string*
  store %nyx_string* %1898, %nyx_string** %1899
  %1900 = load %nyx_string*, %nyx_string** %1899
  %1901 = call i1 @cov_profraw_valid(%nyx_string* %1900)
  br i1 %1901, label %then380, label %else381
then380:
  %1902 = load %nyx_string*, %nyx_string** %1855
  %1903 = load %nyx_string*, %nyx_string** %1870
  %1904 = call %nyx_string* @nyx_string_concat(%nyx_string* %1902, %nyx_string* %1903)
  %1905 = load %nyx_string*, %nyx_string** %1899
  %1906 = call %nyx_string* @nyx_string_concat(%nyx_string* %1904, %nyx_string* %1905)
  %1907 = load %nyx_string*, %nyx_string** %1873
  %1908 = call %nyx_string* @nyx_string_concat(%nyx_string* %1906, %nyx_string* %1907)
  store %nyx_string* %1908, %nyx_string** %1855
  %1909 = load i64, i64* %1856
  %1910 = add i64 %1909, 1
  store i64 %1910, i64* %1856
  %1911 = load i8*, i8** %1858
  %1912 = load %nyx_string*, %nyx_string** %1886
  %1913 = load %nyx_string*, %nyx_string** %1876
  %1914 = call i8* @nyx_string_to_cstr(%nyx_string* %1912)
  %1915 = call i8* @nyx_string_to_cstr(%nyx_string* %1913)
  call void @nyx_map_insert_str(i8* %1911, i8* %1914, i8* %1915)
  br label %merge382
else381:
  %1916 = load { i64, i8* }*, { i64, i8* }** %1860
  %1917 = load %nyx_string*, %nyx_string** %1891
  %1918 = ptrtoint %nyx_string* %1917 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1916, i64 %1918, i64 2)
  br label %merge382
merge382:
  %1919 = load i64, i64* %1861
  %1920 = add i64 %1919, 1
  store i64 %1920, i64* %1861
  br label %while_cond377
while_end379:
  %1921 = call i8* @nyx_map_new(i32 0)
  %1922 = alloca i8*
  store i8* %1921, i8** %1922
  %1923 = load i64, i64* %1856
  %1924 = icmp sgt i64 %1923, 0
  br i1 %1924, label %then383, label %else384
then383:
  %1925 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %1926 = getelementptr [17 x i8], [17 x i8]* @.str176, i32 0, i32 0
  %1927 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str176.c, i8* %1926, i64 16)
  %1928 = call %nyx_string* @nyx_string_concat(%nyx_string* %1925, %nyx_string* %1927)
  %1929 = alloca %nyx_string*
  store %nyx_string* %1928, %nyx_string** %1929
  %1930 = load %nyx_string*, %nyx_string** %profdata.ptr
  %1931 = getelementptr [12 x i8], [12 x i8]* @.str177, i32 0, i32 0
  %1932 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str177.c, i8* %1931, i64 11)
  %1933 = call %nyx_string* @nyx_string_concat(%nyx_string* %1930, %nyx_string* %1932)
  %1934 = load %nyx_string*, %nyx_string** %1929
  %1935 = call %nyx_string* @nyx_string_concat(%nyx_string* %1933, %nyx_string* %1934)
  %1936 = getelementptr [2 x i8], [2 x i8]* @.str178, i32 0, i32 0
  %1937 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str178.c, i8* %1936, i64 1)
  %1938 = call %nyx_string* @nyx_string_concat(%nyx_string* %1935, %nyx_string* %1937)
  %1939 = load %nyx_string*, %nyx_string** %1855
  %1940 = call %nyx_string* @nyx_string_concat(%nyx_string* %1938, %nyx_string* %1939)
  %1941 = getelementptr [5 x i8], [5 x i8]* @.str179, i32 0, i32 0
  %1942 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str179.c, i8* %1941, i64 4)
  %1943 = call %nyx_string* @nyx_string_concat(%nyx_string* %1940, %nyx_string* %1942)
  %1944 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %1945 = call %nyx_string* @nyx_string_concat(%nyx_string* %1943, %nyx_string* %1944)
  %1946 = getelementptr [17 x i8], [17 x i8]* @.str180, i32 0, i32 0
  %1947 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str180.c, i8* %1946, i64 16)
  %1948 = call %nyx_string* @nyx_string_concat(%nyx_string* %1945, %nyx_string* %1947)
  %1949 = call i8* @nyx_string_to_cstr(%nyx_string* %1948)
  %1950 = call i64 @nyx_exec_code(i8* %1949)
  %1951 = alloca i64
  store i64 %1950, i64* %1951
  %1952 = load i64, i64* %1951
  %1953 = icmp ne i64 %1952, 0
  br i1 %1953, label %then386, label %else387
then386:
  %1954 = getelementptr [36 x i8], [36 x i8]* @.str181, i32 0, i32 0
  %1955 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str181.c, i8* %1954, i64 35)
  %1956 = call i8* @nyx_string_to_cstr(%nyx_string* %1955)
  call void @nyx_print_string(i8* %1956)
  %1957 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %1958 = getelementptr [11 x i8], [11 x i8]* @.str182, i32 0, i32 0
  %1959 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str182.c, i8* %1958, i64 10)
  %1960 = call %nyx_string* @nyx_string_concat(%nyx_string* %1957, %nyx_string* %1959)
  %1961 = call i8* @nyx_string_to_cstr(%nyx_string* %1960)
  %1962 = call %nyx_string* @nyx_read_file(i8* %1961)
  %1963 = call i8* @nyx_string_to_cstr(%nyx_string* %1962)
  call void @nyx_print_string(i8* %1963)
  ret i64 1
else387:
  br label %merge388
merge388:
  %1964 = load %nyx_string*, %nyx_string** %profdata.ptr
  %1965 = getelementptr [33 x i8], [33 x i8]* @.str183, i32 0, i32 0
  %1966 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str183.c, i8* %1965, i64 32)
  %1967 = call %nyx_string* @nyx_string_concat(%nyx_string* %1964, %nyx_string* %1966)
  %1968 = load %nyx_string*, %nyx_string** %1929
  %1969 = call %nyx_string* @nyx_string_concat(%nyx_string* %1967, %nyx_string* %1968)
  %1970 = getelementptr [6 x i8], [6 x i8]* @.str184, i32 0, i32 0
  %1971 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str184.c, i8* %1970, i64 5)
  %1972 = call %nyx_string* @nyx_string_concat(%nyx_string* %1969, %nyx_string* %1971)
  %1973 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %1974 = call %nyx_string* @nyx_string_concat(%nyx_string* %1972, %nyx_string* %1973)
  %1975 = getelementptr [16 x i8], [16 x i8]* @.str185, i32 0, i32 0
  %1976 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str185.c, i8* %1975, i64 15)
  %1977 = call %nyx_string* @nyx_string_concat(%nyx_string* %1974, %nyx_string* %1976)
  %1978 = call i8* @nyx_string_to_cstr(%nyx_string* %1977)
  %1979 = call i64 @nyx_exec_code(i8* %1978)
  %1980 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %1981 = getelementptr [10 x i8], [10 x i8]* @.str186, i32 0, i32 0
  %1982 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str186.c, i8* %1981, i64 9)
  %1983 = call %nyx_string* @nyx_string_concat(%nyx_string* %1980, %nyx_string* %1982)
  %1984 = call i8* @nyx_string_to_cstr(%nyx_string* %1983)
  %1985 = call %nyx_string* @nyx_read_file(i8* %1984)
  %1986 = call i8* @cov_called_from_show(%nyx_string* %1985)
  store i8* %1986, i8** %1922
  br label %merge385
else384:
  br label %merge385
merge385:
  %1987 = call i8* @nyx_map_new(i32 0)
  %1988 = alloca i8*
  store i8* %1987, i8** %1988
  %1989 = call i8* @nyx_map_new(i32 0)
  %1990 = alloca i8*
  store i8* %1989, i8** %1990
  %1991 = call i8* @nyx_map_new(i32 0)
  %1992 = alloca i8*
  store i8* %1991, i8** %1992
  %1993 = call i8* @nyx_map_new(i32 0)
  %1994 = alloca i8*
  store i8* %1993, i8** %1994
  store i64 0, i64* %1861
  %1995 = getelementptr [2 x i8], [2 x i8]* @.str187, i32 0, i32 0
  %1996 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str187.c, i8* %1995, i64 1)
  %1997 = alloca %nyx_string*
  store %nyx_string* %1996, %nyx_string** %1997
  %1998 = getelementptr [5 x i8], [5 x i8]* @.str188, i32 0, i32 0
  %1999 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str188.c, i8* %1998, i64 4)
  %2000 = alloca %nyx_string*
  store %nyx_string* %1999, %nyx_string** %2000
  %2001 = getelementptr [2 x i8], [2 x i8]* @.str189, i32 0, i32 0
  %2002 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str189.c, i8* %2001, i64 1)
  %2003 = alloca %nyx_string*
  store %nyx_string* %2002, %nyx_string** %2003
  %2004 = getelementptr [1 x i8], [1 x i8]* @.str190, i32 0, i32 0
  %2005 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str190.c, i8* %2004, i64 0)
  %2006 = alloca %nyx_string*
  store %nyx_string* %2005, %nyx_string** %2006
  %2007 = getelementptr [2 x i8], [2 x i8]* @.str191, i32 0, i32 0
  %2008 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str191.c, i8* %2007, i64 1)
  %2009 = alloca %nyx_string*
  store %nyx_string* %2008, %nyx_string** %2009
  %2010 = getelementptr [5 x i8], [5 x i8]* @.str192, i32 0, i32 0
  %2011 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str192.c, i8* %2010, i64 4)
  %2012 = alloca %nyx_string*
  store %nyx_string* %2011, %nyx_string** %2012
  %2013 = call i8* @llvm.stacksave()
  br label %while_cond389
while_cond389:
  %2014 = load i64, i64* %1861
  %2015 = load { i64, i8* }*, { i64, i8* }** %run_files.ptr
  %2016 = call i64 @nyx_array_length({ i64, i8* }* %2015)
  %2017 = icmp slt i64 %2014, %2016
  br i1 %2017, label %while_body390, label %while_end391
while_body390:
  call void @llvm.stackrestore(i8* %2013)
  %2018 = load { i64, i8* }*, { i64, i8* }** %run_idx.ptr
  %2019 = load i64, i64* %1861
  %2020 = call i64 @nyx_array_get_checked({ i64, i8* }* %2018, i64 %2019, i64 2)
  %2021 = inttoptr i64 %2020 to %nyx_string*
  %2022 = alloca %nyx_string*
  store %nyx_string* %2021, %nyx_string** %2022
  %2023 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2024 = load %nyx_string*, %nyx_string** %1997
  %2025 = call %nyx_string* @nyx_string_concat(%nyx_string* %2023, %nyx_string* %2024)
  %2026 = load %nyx_string*, %nyx_string** %2022
  %2027 = call %nyx_string* @nyx_string_concat(%nyx_string* %2025, %nyx_string* %2026)
  %2028 = load %nyx_string*, %nyx_string** %2000
  %2029 = call %nyx_string* @nyx_string_concat(%nyx_string* %2027, %nyx_string* %2028)
  %2030 = alloca %nyx_string*
  store %nyx_string* %2029, %nyx_string** %2030
  %2031 = load %nyx_string*, %nyx_string** %2030
  %2032 = call i8* @nyx_string_to_cstr(%nyx_string* %2031)
  %2033 = call i1 @nyx_file_exists(i8* %2032)
  br i1 %2033, label %then392, label %else393
then392:
  %2034 = load %nyx_string*, %nyx_string** %2030
  %2035 = call i8* @nyx_string_to_cstr(%nyx_string* %2034)
  %2036 = call %nyx_string* @nyx_read_file(i8* %2035)
  %2037 = load %nyx_string*, %nyx_string** %2003
  %2038 = call { i64, i8* }* @nyx_string_split(%nyx_string* %2036, %nyx_string* %2037)
  %2039 = alloca { i64, i8* }*
  store { i64, i8* }* %2038, { i64, i8* }** %2039
  %2040 = alloca i64
  store i64 0, i64* %2040
  %2041 = call i8* @llvm.stacksave()
  br label %while_cond395
while_cond395:
  %2042 = load i64, i64* %2040
  %2043 = load { i64, i8* }*, { i64, i8* }** %2039
  %2044 = call i64 @nyx_array_length({ i64, i8* }* %2043)
  %2045 = icmp slt i64 %2042, %2044
  br i1 %2045, label %while_body396, label %while_end397
while_body396:
  call void @llvm.stackrestore(i8* %2041)
  %2046 = load { i64, i8* }*, { i64, i8* }** %2039
  %2047 = load i64, i64* %2040
  %2048 = call i64 @nyx_array_get_checked({ i64, i8* }* %2046, i64 %2047, i64 2)
  %2049 = inttoptr i64 %2048 to %nyx_string*
  %2050 = alloca %nyx_string*
  store %nyx_string* %2049, %nyx_string** %2050
  %2051 = load %nyx_string*, %nyx_string** %2050
  %2052 = call { i64, i8* }* @cov_fields(%nyx_string* %2051)
  %2053 = alloca { i64, i8* }*
  store { i64, i8* }* %2052, { i64, i8* }** %2053
  %2054 = load { i64, i8* }*, { i64, i8* }** %2053
  %2055 = call i64 @nyx_array_length({ i64, i8* }* %2054)
  %2056 = icmp sge i64 %2055, 5
  br i1 %2056, label %then398, label %else399
then398:
  %2057 = load { i64, i8* }*, { i64, i8* }** %2053
  %2058 = call i64 @nyx_array_get_checked({ i64, i8* }* %2057, i64 0, i64 2)
  %2059 = inttoptr i64 %2058 to %nyx_string*
  %2060 = alloca %nyx_string*
  store %nyx_string* %2059, %nyx_string** %2060
  %2061 = load { i64, i8* }*, { i64, i8* }** %2053
  %2062 = call i64 @nyx_array_get_checked({ i64, i8* }* %2061, i64 1, i64 2)
  %2063 = inttoptr i64 %2062 to %nyx_string*
  %2064 = alloca %nyx_string*
  store %nyx_string* %2063, %nyx_string** %2064
  %2065 = load { i64, i8* }*, { i64, i8* }** %2053
  %2066 = call i64 @nyx_array_get_checked({ i64, i8* }* %2065, i64 3, i64 2)
  %2067 = inttoptr i64 %2066 to %nyx_string*
  %2068 = alloca %nyx_string*
  store %nyx_string* %2067, %nyx_string** %2068
  %2069 = load { i64, i8* }*, { i64, i8* }** %2053
  %2070 = call i64 @nyx_array_get_checked({ i64, i8* }* %2069, i64 4, i64 2)
  %2071 = inttoptr i64 %2070 to %nyx_string*
  %2072 = alloca %nyx_string*
  store %nyx_string* %2071, %nyx_string** %2072
  %2073 = load %nyx_string*, %nyx_string** %2064
  %2074 = load %nyx_string*, %nyx_string** %2006
  %2075 = call i1 @nyx_string_equals(%nyx_string* %2073, %nyx_string* %2074)
  %2076 = xor i1 %2075, true
  br i1 %2076, label %then401, label %else402
then401:
  %2077 = load i8*, i8** %1994
  %2078 = load %nyx_string*, %nyx_string** %2064
  %2079 = load %nyx_string*, %nyx_string** %2009
  %2080 = call i8* @nyx_string_to_cstr(%nyx_string* %2078)
  %2081 = call i8* @nyx_string_to_cstr(%nyx_string* %2079)
  call void @nyx_map_insert_str(i8* %2077, i8* %2080, i8* %2081)
  br label %merge403
else402:
  br label %merge403
merge403:
  %2082 = load i8*, i8** %1858
  %2083 = load %nyx_string*, %nyx_string** %2022
  %2084 = call i8* @nyx_string_to_cstr(%nyx_string* %2083)
  %2085 = call i1 @nyx_map_contains_str(i8* %2082, i8* %2084)
  br i1 %2085, label %then404, label %else405
then404:
  %2086 = load i8*, i8** %1988
  %2087 = load %nyx_string*, %nyx_string** %2060
  %2088 = load %nyx_string*, %nyx_string** %2009
  %2089 = call i8* @nyx_string_to_cstr(%nyx_string* %2087)
  %2090 = call i8* @nyx_string_to_cstr(%nyx_string* %2088)
  call void @nyx_map_insert_str(i8* %2086, i8* %2089, i8* %2090)
  %2091 = alloca i1
  store i1 false, i1* %2091
  %2092 = load %nyx_string*, %nyx_string** %2072
  %2093 = load %nyx_string*, %nyx_string** %2012
  %2094 = call i1 @nyx_string_equals(%nyx_string* %2092, %nyx_string* %2093)
  br i1 %2094, label %sc_and_rhs407, label %sc_and_end408
sc_and_rhs407:
  %2095 = load i8*, i8** %1922
  %2096 = load %nyx_string*, %nyx_string** %2060
  %2097 = call i8* @nyx_string_to_cstr(%nyx_string* %2096)
  %2098 = call i1 @nyx_map_contains_str(i8* %2095, i8* %2097)
  store i1 %2098, i1* %2091
  br label %sc_and_end408
sc_and_end408:
  %2099 = load i1, i1* %2091
  br i1 %2099, label %then409, label %else410
then409:
  %2100 = load i8*, i8** %1992
  %2101 = load %nyx_string*, %nyx_string** %2068
  %2102 = load %nyx_string*, %nyx_string** %2009
  %2103 = call i8* @nyx_string_to_cstr(%nyx_string* %2101)
  %2104 = call i8* @nyx_string_to_cstr(%nyx_string* %2102)
  call void @nyx_map_insert_str(i8* %2100, i8* %2103, i8* %2104)
  br label %merge411
else410:
  br label %merge411
merge411:
  br label %merge406
else405:
  %2105 = load i8*, i8** %1990
  %2106 = load %nyx_string*, %nyx_string** %2060
  %2107 = load %nyx_string*, %nyx_string** %2009
  %2108 = call i8* @nyx_string_to_cstr(%nyx_string* %2106)
  %2109 = call i8* @nyx_string_to_cstr(%nyx_string* %2107)
  call void @nyx_map_insert_str(i8* %2105, i8* %2108, i8* %2109)
  br label %merge406
merge406:
  br label %merge400
else399:
  br label %merge400
merge400:
  %2110 = load i64, i64* %2040
  %2111 = add i64 %2110, 1
  store i64 %2111, i64* %2040
  br label %while_cond395
while_end397:
  br label %merge394
else393:
  br label %merge394
merge394:
  %2112 = load i64, i64* %1861
  %2113 = add i64 %2112, 1
  store i64 %2113, i64* %1861
  br label %while_cond389
while_end391:
  %2114 = call { i64, i8* }* @cov_src_modules()
  %2115 = alloca { i64, i8* }*
  store { i64, i8* }* %2114, { i64, i8* }** %2115
  %2116 = load { i64, i8* }*, { i64, i8* }** %2115
  %2117 = call i64 @nyx_array_length({ i64, i8* }* %2116)
  %2118 = icmp eq i64 %2117, 0
  br i1 %2118, label %then412, label %else413
then412:
  %2119 = getelementptr [27 x i8], [27 x i8]* @.str193, i32 0, i32 0
  %2120 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str193.c, i8* %2119, i64 26)
  %2121 = call i8* @nyx_string_to_cstr(%nyx_string* %2120)
  call void @nyx_print_string(i8* %2121)
  ret i64 0
else413:
  br label %merge414
merge414:
  %2122 = load %nyx_string*, %nyx_string** %1841
  %2123 = load %nyx_string*, %nyx_string** %1846
  %2124 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2125 = load { i64, i8* }*, { i64, i8* }** %2115
  %2126 = call %nyx_string* @cov_universe(%nyx_string* %2122, %nyx_string* %2123, %nyx_string* %2124, { i64, i8* }* %2125)
  %2127 = alloca %nyx_string*
  store %nyx_string* %2126, %nyx_string** %2127
  %2128 = load %nyx_string*, %nyx_string** %2127
  %2129 = call i8* @nyx_string_to_cstr(%nyx_string* %2128)
  %2130 = call i1 @nyx_file_exists(i8* %2129)
  %2131 = xor i1 %2130, true
  br i1 %2131, label %then415, label %else416
then415:
  %2132 = getelementptr [68 x i8], [68 x i8]* @.str194, i32 0, i32 0
  %2133 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str194.c, i8* %2132, i64 67)
  %2134 = call i8* @nyx_string_to_cstr(%nyx_string* %2133)
  call void @nyx_print_string(i8* %2134)
  %2135 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2136 = getelementptr [14 x i8], [14 x i8]* @.str195, i32 0, i32 0
  %2137 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str195.c, i8* %2136, i64 13)
  %2138 = call %nyx_string* @nyx_string_concat(%nyx_string* %2135, %nyx_string* %2137)
  %2139 = call i8* @nyx_string_to_cstr(%nyx_string* %2138)
  %2140 = call i1 @nyx_file_exists(i8* %2139)
  br i1 %2140, label %then418, label %else419
then418:
  %2141 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2142 = getelementptr [14 x i8], [14 x i8]* @.str196, i32 0, i32 0
  %2143 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str196.c, i8* %2142, i64 13)
  %2144 = call %nyx_string* @nyx_string_concat(%nyx_string* %2141, %nyx_string* %2143)
  %2145 = call i8* @nyx_string_to_cstr(%nyx_string* %2144)
  %2146 = call %nyx_string* @nyx_read_file(i8* %2145)
  %2147 = call i8* @nyx_string_to_cstr(%nyx_string* %2146)
  call void @nyx_print_string(i8* %2147)
  br label %merge420
else419:
  br label %merge420
merge420:
  ret i64 1
else416:
  br label %merge417
merge417:
  %2148 = load %nyx_string*, %nyx_string** %2127
  %2149 = call i8* @nyx_string_to_cstr(%nyx_string* %2148)
  %2150 = call %nyx_string* @nyx_read_file(i8* %2149)
  %2151 = getelementptr [2 x i8], [2 x i8]* @.str197, i32 0, i32 0
  %2152 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str197.c, i8* %2151, i64 1)
  %2153 = call { i64, i8* }* @nyx_string_split(%nyx_string* %2150, %nyx_string* %2152)
  %2154 = alloca { i64, i8* }*
  store { i64, i8* }* %2153, { i64, i8* }** %2154
  %2155 = call { i64, i8* }* @nyx_array_new_ptr()
  %2156 = alloca { i64, i8* }*
  store { i64, i8* }* %2155, { i64, i8* }** %2156
  %2157 = alloca i64
  store i64 0, i64* %2157
  %2158 = getelementptr [3 x i8], [3 x i8]* @.str198, i32 0, i32 0
  %2159 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str198.c, i8* %2158, i64 2)
  %2160 = alloca %nyx_string*
  store %nyx_string* %2159, %nyx_string** %2160
  %2161 = getelementptr [7 x i8], [7 x i8]* @.str199, i32 0, i32 0
  %2162 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str199.c, i8* %2161, i64 6)
  %2163 = alloca %nyx_string*
  store %nyx_string* %2162, %nyx_string** %2163
  %2164 = getelementptr [6 x i8], [6 x i8]* @.str200, i32 0, i32 0
  %2165 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str200.c, i8* %2164, i64 5)
  %2166 = alloca %nyx_string*
  store %nyx_string* %2165, %nyx_string** %2166
  %2167 = getelementptr [9 x i8], [9 x i8]* @.str201, i32 0, i32 0
  %2168 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str201.c, i8* %2167, i64 8)
  %2169 = alloca %nyx_string*
  store %nyx_string* %2168, %nyx_string** %2169
  %2170 = getelementptr [5 x i8], [5 x i8]* @.str202, i32 0, i32 0
  %2171 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str202.c, i8* %2170, i64 4)
  %2172 = alloca %nyx_string*
  store %nyx_string* %2171, %nyx_string** %2172
  %2173 = getelementptr [5 x i8], [5 x i8]* @.str203, i32 0, i32 0
  %2174 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str203.c, i8* %2173, i64 4)
  %2175 = alloca %nyx_string*
  store %nyx_string* %2174, %nyx_string** %2175
  %2176 = getelementptr [3 x i8], [3 x i8]* @.str204, i32 0, i32 0
  %2177 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str204.c, i8* %2176, i64 2)
  %2178 = alloca %nyx_string*
  store %nyx_string* %2177, %nyx_string** %2178
  %2179 = getelementptr [3 x i8], [3 x i8]* @.str205, i32 0, i32 0
  %2180 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str205.c, i8* %2179, i64 2)
  %2181 = alloca %nyx_string*
  store %nyx_string* %2180, %nyx_string** %2181
  %2182 = getelementptr [10 x i8], [10 x i8]* @.str206, i32 0, i32 0
  %2183 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str206.c, i8* %2182, i64 9)
  %2184 = alloca %nyx_string*
  store %nyx_string* %2183, %nyx_string** %2184
  %2185 = getelementptr [5 x i8], [5 x i8]* @.str207, i32 0, i32 0
  %2186 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str207.c, i8* %2185, i64 4)
  %2187 = alloca %nyx_string*
  store %nyx_string* %2186, %nyx_string** %2187
  %2188 = getelementptr [2 x i8], [2 x i8]* @.str208, i32 0, i32 0
  %2189 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str208.c, i8* %2188, i64 1)
  %2190 = alloca %nyx_string*
  store %nyx_string* %2189, %nyx_string** %2190
  %2191 = call i8* @llvm.stacksave()
  br label %while_cond421
while_cond421:
  %2192 = load i64, i64* %2157
  %2193 = load { i64, i8* }*, { i64, i8* }** %2154
  %2194 = call i64 @nyx_array_length({ i64, i8* }* %2193)
  %2195 = icmp slt i64 %2192, %2194
  br i1 %2195, label %while_body422, label %while_end423
while_body422:
  call void @llvm.stackrestore(i8* %2191)
  %2196 = load { i64, i8* }*, { i64, i8* }** %2154
  %2197 = load i64, i64* %2157
  %2198 = call i64 @nyx_array_get_checked({ i64, i8* }* %2196, i64 %2197, i64 2)
  %2199 = inttoptr i64 %2198 to %nyx_string*
  %2200 = alloca %nyx_string*
  store %nyx_string* %2199, %nyx_string** %2200
  %2201 = load %nyx_string*, %nyx_string** %2200
  %2202 = call { i64, i8* }* @cov_fields(%nyx_string* %2201)
  %2203 = alloca { i64, i8* }*
  store { i64, i8* }* %2202, { i64, i8* }** %2203
  %2204 = load { i64, i8* }*, { i64, i8* }** %2203
  %2205 = call i64 @nyx_array_length({ i64, i8* }* %2204)
  %2206 = icmp sge i64 %2205, 5
  br i1 %2206, label %then424, label %else425
then424:
  %2207 = load { i64, i8* }*, { i64, i8* }** %2203
  %2208 = call i64 @nyx_array_get_checked({ i64, i8* }* %2207, i64 0, i64 2)
  %2209 = inttoptr i64 %2208 to %nyx_string*
  %2210 = alloca %nyx_string*
  store %nyx_string* %2209, %nyx_string** %2210
  %2211 = load { i64, i8* }*, { i64, i8* }** %2203
  %2212 = call i64 @nyx_array_get_checked({ i64, i8* }* %2211, i64 1, i64 2)
  %2213 = inttoptr i64 %2212 to %nyx_string*
  %2214 = alloca %nyx_string*
  store %nyx_string* %2213, %nyx_string** %2214
  %2215 = load { i64, i8* }*, { i64, i8* }** %2203
  %2216 = call i64 @nyx_array_get_checked({ i64, i8* }* %2215, i64 2, i64 2)
  %2217 = inttoptr i64 %2216 to %nyx_string*
  %2218 = alloca %nyx_string*
  store %nyx_string* %2217, %nyx_string** %2218
  %2219 = load { i64, i8* }*, { i64, i8* }** %2203
  %2220 = call i64 @nyx_array_get_checked({ i64, i8* }* %2219, i64 3, i64 2)
  %2221 = inttoptr i64 %2220 to %nyx_string*
  %2222 = alloca %nyx_string*
  store %nyx_string* %2221, %nyx_string** %2222
  %2223 = load { i64, i8* }*, { i64, i8* }** %2203
  %2224 = call i64 @nyx_array_get_checked({ i64, i8* }* %2223, i64 4, i64 2)
  %2225 = inttoptr i64 %2224 to %nyx_string*
  %2226 = alloca %nyx_string*
  store %nyx_string* %2225, %nyx_string** %2226
  %2227 = alloca i1
  store i1 true, i1* %2227
  %2228 = alloca i1
  store i1 true, i1* %2228
  %2229 = alloca i1
  store i1 true, i1* %2229
  %2230 = load %nyx_string*, %nyx_string** %2226
  %2231 = load %nyx_string*, %nyx_string** %2160
  %2232 = call i1 @nyx_string_equals(%nyx_string* %2230, %nyx_string* %2231)
  br i1 %2232, label %sc_or_end428, label %sc_or_rhs427
sc_or_rhs427:
  %2233 = load %nyx_string*, %nyx_string** %2226
  %2234 = load %nyx_string*, %nyx_string** %2163
  %2235 = call i1 @nyx_string_equals(%nyx_string* %2233, %nyx_string* %2234)
  store i1 %2235, i1* %2229
  br label %sc_or_end428
sc_or_end428:
  %2236 = load i1, i1* %2229
  br i1 %2236, label %sc_or_end430, label %sc_or_rhs429
sc_or_rhs429:
  %2237 = load %nyx_string*, %nyx_string** %2226
  %2238 = load %nyx_string*, %nyx_string** %2166
  %2239 = call i1 @nyx_string_equals(%nyx_string* %2237, %nyx_string* %2238)
  store i1 %2239, i1* %2228
  br label %sc_or_end430
sc_or_end430:
  %2240 = load i1, i1* %2228
  br i1 %2240, label %sc_or_end432, label %sc_or_rhs431
sc_or_rhs431:
  %2241 = load %nyx_string*, %nyx_string** %2226
  %2242 = load %nyx_string*, %nyx_string** %2169
  %2243 = call i1 @nyx_string_equals(%nyx_string* %2241, %nyx_string* %2242)
  store i1 %2243, i1* %2227
  br label %sc_or_end432
sc_or_end432:
  %2244 = load i1, i1* %2227
  %2245 = alloca i1
  store i1 %2244, i1* %2245
  %2246 = alloca i1
  store i1 false, i1* %2246
  %2247 = alloca i1
  store i1 false, i1* %2247
  %2248 = load i1, i1* %2245
  br i1 %2248, label %sc_and_rhs433, label %sc_and_end434
sc_and_rhs433:
  %2249 = load %nyx_string*, %nyx_string** %2214
  %2250 = load %nyx_string*, %nyx_string** %2172
  %2251 = call i1 @nyx_string_starts_with(%nyx_string* %2249, %nyx_string* %2250)
  store i1 %2251, i1* %2247
  br label %sc_and_end434
sc_and_end434:
  %2252 = load i1, i1* %2247
  br i1 %2252, label %sc_and_rhs435, label %sc_and_end436
sc_and_rhs435:
  %2253 = load %nyx_string*, %nyx_string** %2222
  %2254 = load %nyx_string*, %nyx_string** %2175
  %2255 = call i1 @nyx_string_equals(%nyx_string* %2253, %nyx_string* %2254)
  %2256 = xor i1 %2255, true
  store i1 %2256, i1* %2246
  br label %sc_and_end436
sc_and_end436:
  %2257 = load i1, i1* %2246
  br i1 %2257, label %then437, label %else438
then437:
  %2258 = load i8*, i8** %1922
  %2259 = load %nyx_string*, %nyx_string** %2210
  %2260 = call i8* @nyx_string_to_cstr(%nyx_string* %2259)
  %2261 = call i1 @nyx_map_contains_str(i8* %2258, i8* %2260)
  %2262 = alloca i1
  store i1 %2261, i1* %2262
  %2263 = load %nyx_string*, %nyx_string** %2226
  %2264 = load %nyx_string*, %nyx_string** %2169
  %2265 = call i1 @nyx_string_equals(%nyx_string* %2263, %nyx_string* %2264)
  br i1 %2265, label %then440, label %else441
then440:
  %2266 = load i8*, i8** %1992
  %2267 = load %nyx_string*, %nyx_string** %2210
  %2268 = call i8* @nyx_string_to_cstr(%nyx_string* %2267)
  %2269 = call i1 @nyx_map_contains_str(i8* %2266, i8* %2268)
  store i1 %2269, i1* %2262
  br label %merge442
else441:
  br label %merge442
merge442:
  %2270 = load %nyx_string*, %nyx_string** %2178
  %2271 = alloca %nyx_string*
  store %nyx_string* %2270, %nyx_string** %2271
  %2272 = load i1, i1* %2262
  br i1 %2272, label %then443, label %else444
then443:
  %2273 = load %nyx_string*, %nyx_string** %2181
  store %nyx_string* %2273, %nyx_string** %2271
  br label %merge445
else444:
  %2274 = alloca i1
  store i1 false, i1* %2274
  %2275 = load i8*, i8** %1988
  %2276 = load %nyx_string*, %nyx_string** %2210
  %2277 = call i8* @nyx_string_to_cstr(%nyx_string* %2276)
  %2278 = call i1 @nyx_map_contains_str(i8* %2275, i8* %2277)
  %2279 = xor i1 %2278, true
  br i1 %2279, label %sc_and_rhs446, label %sc_and_end447
sc_and_rhs446:
  %2280 = load i8*, i8** %1990
  %2281 = load %nyx_string*, %nyx_string** %2210
  %2282 = call i8* @nyx_string_to_cstr(%nyx_string* %2281)
  %2283 = call i1 @nyx_map_contains_str(i8* %2280, i8* %2282)
  store i1 %2283, i1* %2274
  br label %sc_and_end447
sc_and_end447:
  %2284 = load i1, i1* %2274
  br i1 %2284, label %then448, label %else449
then448:
  %2285 = load %nyx_string*, %nyx_string** %2184
  store %nyx_string* %2285, %nyx_string** %2271
  br label %merge450
else449:
  br label %merge450
merge450:
  br label %merge445
merge445:
  %2286 = load { i64, i8* }*, { i64, i8* }** %2156
  %2287 = load %nyx_string*, %nyx_string** %2214
  %2288 = load %nyx_string*, %nyx_string** %2187
  %2289 = call %nyx_string* @nyx_string_concat(%nyx_string* %2287, %nyx_string* %2288)
  %2290 = load %nyx_string*, %nyx_string** %2218
  %2291 = call i64 @nyx_string_to_int(%nyx_string* %2290)
  %2292 = call %nyx_string* @cov_pad(i64 %2291)
  %2293 = call %nyx_string* @nyx_string_concat(%nyx_string* %2289, %nyx_string* %2292)
  %2294 = load %nyx_string*, %nyx_string** %2190
  %2295 = call %nyx_string* @nyx_string_concat(%nyx_string* %2293, %nyx_string* %2294)
  %2296 = load %nyx_string*, %nyx_string** %2222
  %2297 = call %nyx_string* @nyx_string_concat(%nyx_string* %2295, %nyx_string* %2296)
  %2298 = load %nyx_string*, %nyx_string** %2190
  %2299 = call %nyx_string* @nyx_string_concat(%nyx_string* %2297, %nyx_string* %2298)
  %2300 = load %nyx_string*, %nyx_string** %2271
  %2301 = call %nyx_string* @nyx_string_concat(%nyx_string* %2299, %nyx_string* %2300)
  %2302 = load %nyx_string*, %nyx_string** %2190
  %2303 = call %nyx_string* @nyx_string_concat(%nyx_string* %2301, %nyx_string* %2302)
  %2304 = load %nyx_string*, %nyx_string** %2214
  %2305 = call %nyx_string* @nyx_string_concat(%nyx_string* %2303, %nyx_string* %2304)
  %2306 = ptrtoint %nyx_string* %2305 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2286, i64 %2306, i64 2)
  br label %merge439
else438:
  br label %merge439
merge439:
  br label %merge426
else425:
  br label %merge426
merge426:
  %2307 = load i64, i64* %2157
  %2308 = add i64 %2307, 1
  store i64 %2308, i64* %2157
  br label %while_cond421
while_end423:
  %2309 = load { i64, i8* }*, { i64, i8* }** %2156
  %2310 = call { i64, i8* }* @sort_str({ i64, i8* }* %2309)
  %2311 = alloca { i64, i8* }*
  store { i64, i8* }* %2310, { i64, i8* }** %2311
  %2312 = getelementptr [1 x i8], [1 x i8]* @.str209, i32 0, i32 0
  %2313 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str209.c, i8* %2312, i64 0)
  %2314 = alloca %nyx_string*
  store %nyx_string* %2313, %nyx_string** %2314
  %2315 = alloca i64
  store i64 0, i64* %2315
  %2316 = alloca i64
  store i64 0, i64* %2316
  %2317 = alloca i64
  store i64 0, i64* %2317
  %2318 = getelementptr [1 x i8], [1 x i8]* @.str210, i32 0, i32 0
  %2319 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str210.c, i8* %2318, i64 0)
  %2320 = alloca %nyx_string*
  store %nyx_string* %2319, %nyx_string** %2320
  %2321 = getelementptr [10 x i8], [10 x i8]* @.str211, i32 0, i32 0
  %2322 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str211.c, i8* %2321, i64 9)
  %2323 = alloca %nyx_string*
  store %nyx_string* %2322, %nyx_string** %2323
  %2324 = getelementptr [2 x i8], [2 x i8]* @.str212, i32 0, i32 0
  %2325 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str212.c, i8* %2324, i64 1)
  %2326 = alloca %nyx_string*
  store %nyx_string* %2325, %nyx_string** %2326
  %2327 = getelementptr [3 x i8], [3 x i8]* @.str213, i32 0, i32 0
  %2328 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str213.c, i8* %2327, i64 2)
  %2329 = alloca %nyx_string*
  store %nyx_string* %2328, %nyx_string** %2329
  %2330 = getelementptr [2 x i8], [2 x i8]* @.str214, i32 0, i32 0
  %2331 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str214.c, i8* %2330, i64 1)
  %2332 = alloca %nyx_string*
  store %nyx_string* %2331, %nyx_string** %2332
  %2333 = getelementptr [5 x i8], [5 x i8]* @.str215, i32 0, i32 0
  %2334 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str215.c, i8* %2333, i64 4)
  %2335 = alloca %nyx_string*
  store %nyx_string* %2334, %nyx_string** %2335
  %2336 = getelementptr [2 x i8], [2 x i8]* @.str216, i32 0, i32 0
  %2337 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str216.c, i8* %2336, i64 1)
  %2338 = alloca %nyx_string*
  store %nyx_string* %2337, %nyx_string** %2338
  %2339 = getelementptr [2 x i8], [2 x i8]* @.str217, i32 0, i32 0
  %2340 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str217.c, i8* %2339, i64 1)
  %2341 = alloca %nyx_string*
  store %nyx_string* %2340, %nyx_string** %2341
  %2342 = getelementptr [4 x i8], [4 x i8]* @.str218, i32 0, i32 0
  %2343 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str218.c, i8* %2342, i64 3)
  %2344 = alloca %nyx_string*
  store %nyx_string* %2343, %nyx_string** %2344
  %2345 = getelementptr [2 x i8], [2 x i8]* @.str219, i32 0, i32 0
  %2346 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str219.c, i8* %2345, i64 1)
  %2347 = alloca %nyx_string*
  store %nyx_string* %2346, %nyx_string** %2347
  %2348 = getelementptr [2 x i8], [2 x i8]* @.str220, i32 0, i32 0
  %2349 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str220.c, i8* %2348, i64 1)
  %2350 = alloca %nyx_string*
  store %nyx_string* %2349, %nyx_string** %2350
  %2351 = getelementptr [6 x i8], [6 x i8]* @.str221, i32 0, i32 0
  %2352 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str221.c, i8* %2351, i64 5)
  %2353 = alloca %nyx_string*
  store %nyx_string* %2352, %nyx_string** %2353
  %2354 = getelementptr [3 x i8], [3 x i8]* @.str222, i32 0, i32 0
  %2355 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str222.c, i8* %2354, i64 2)
  %2356 = alloca %nyx_string*
  store %nyx_string* %2355, %nyx_string** %2356
  %2357 = getelementptr [3 x i8], [3 x i8]* @.str223, i32 0, i32 0
  %2358 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str223.c, i8* %2357, i64 2)
  %2359 = alloca %nyx_string*
  store %nyx_string* %2358, %nyx_string** %2359
  %2360 = getelementptr [2 x i8], [2 x i8]* @.str224, i32 0, i32 0
  %2361 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str224.c, i8* %2360, i64 1)
  %2362 = alloca %nyx_string*
  store %nyx_string* %2361, %nyx_string** %2362
  %2363 = getelementptr [10 x i8], [10 x i8]* @.str225, i32 0, i32 0
  %2364 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str225.c, i8* %2363, i64 9)
  %2365 = alloca %nyx_string*
  store %nyx_string* %2364, %nyx_string** %2365
  %2366 = getelementptr [29 x i8], [29 x i8]* @.str226, i32 0, i32 0
  %2367 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str226.c, i8* %2366, i64 28)
  %2368 = alloca %nyx_string*
  store %nyx_string* %2367, %nyx_string** %2368
  %2369 = getelementptr [3 x i8], [3 x i8]* @.str227, i32 0, i32 0
  %2370 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str227.c, i8* %2369, i64 2)
  %2371 = alloca %nyx_string*
  store %nyx_string* %2370, %nyx_string** %2371
  %2372 = getelementptr [38 x i8], [38 x i8]* @.str228, i32 0, i32 0
  %2373 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str228.c, i8* %2372, i64 37)
  %2374 = alloca %nyx_string*
  store %nyx_string* %2373, %nyx_string** %2374
  %2375 = getelementptr [4 x i8], [4 x i8]* @.str229, i32 0, i32 0
  %2376 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str229.c, i8* %2375, i64 3)
  %2377 = alloca %nyx_string*
  store %nyx_string* %2376, %nyx_string** %2377
  %2378 = getelementptr [5 x i8], [5 x i8]* @.str230, i32 0, i32 0
  %2379 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str230.c, i8* %2378, i64 4)
  %2380 = alloca %nyx_string*
  store %nyx_string* %2379, %nyx_string** %2380
  %2381 = getelementptr [6 x i8], [6 x i8]* @.str231, i32 0, i32 0
  %2382 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str231.c, i8* %2381, i64 5)
  %2383 = alloca %nyx_string*
  store %nyx_string* %2382, %nyx_string** %2383
  %2384 = getelementptr [16 x i8], [16 x i8]* @.str232, i32 0, i32 0
  %2385 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str232.c, i8* %2384, i64 15)
  %2386 = alloca %nyx_string*
  store %nyx_string* %2385, %nyx_string** %2386
  %2387 = call i8* @llvm.stacksave()
  br label %while_cond451
while_cond451:
  %2388 = load i64, i64* %2317
  %2389 = load { i64, i8* }*, { i64, i8* }** %2311
  %2390 = call i64 @nyx_array_length({ i64, i8* }* %2389)
  %2391 = icmp slt i64 %2388, %2390
  br i1 %2391, label %while_body452, label %while_end453
while_body452:
  call void @llvm.stackrestore(i8* %2387)
  %2392 = load { i64, i8* }*, { i64, i8* }** %2311
  %2393 = load i64, i64* %2317
  %2394 = call i64 @nyx_array_get_checked({ i64, i8* }* %2392, i64 %2393, i64 2)
  %2395 = inttoptr i64 %2394 to %nyx_string*
  %2396 = alloca %nyx_string*
  store %nyx_string* %2395, %nyx_string** %2396
  %2397 = load %nyx_string*, %nyx_string** %2396
  %2398 = call { i64, i8* }* @cov_fields(%nyx_string* %2397)
  %2399 = alloca { i64, i8* }*
  store { i64, i8* }* %2398, { i64, i8* }** %2399
  %2400 = load { i64, i8* }*, { i64, i8* }** %2399
  %2401 = call i64 @nyx_array_get_checked({ i64, i8* }* %2400, i64 0, i64 2)
  %2402 = inttoptr i64 %2401 to %nyx_string*
  %2403 = alloca %nyx_string*
  store %nyx_string* %2402, %nyx_string** %2403
  %2404 = load { i64, i8* }*, { i64, i8* }** %2399
  %2405 = call i64 @nyx_array_get_checked({ i64, i8* }* %2404, i64 4, i64 2)
  %2406 = inttoptr i64 %2405 to %nyx_string*
  %2407 = alloca %nyx_string*
  store %nyx_string* %2406, %nyx_string** %2407
  %2408 = alloca i64
  store i64 0, i64* %2408
  %2409 = alloca i64
  store i64 0, i64* %2409
  %2410 = alloca i64
  store i64 0, i64* %2410
  %2411 = call { i64, i8* }* @nyx_array_new_ptr()
  %2412 = alloca { i64, i8* }*
  store { i64, i8* }* %2411, { i64, i8* }** %2412
  %2413 = load %nyx_string*, %nyx_string** %2320
  %2414 = alloca %nyx_string*
  store %nyx_string* %2413, %nyx_string** %2414
  %2415 = load %nyx_string*, %nyx_string** %2320
  %2416 = alloca %nyx_string*
  store %nyx_string* %2415, %nyx_string** %2416
  %2417 = load i64, i64* %2317
  %2418 = alloca i64
  store i64 %2417, i64* %2418
  %2419 = alloca i1
  store i1 1, i1* %2419
  %2420 = call i8* @llvm.stacksave()
  br label %while_cond454
while_cond454:
  %2421 = alloca i1
  store i1 false, i1* %2421
  %2422 = load i64, i64* %2418
  %2423 = load { i64, i8* }*, { i64, i8* }** %2311
  %2424 = call i64 @nyx_array_length({ i64, i8* }* %2423)
  %2425 = icmp slt i64 %2422, %2424
  br i1 %2425, label %sc_and_rhs457, label %sc_and_end458
sc_and_rhs457:
  %2426 = load i1, i1* %2419
  store i1 %2426, i1* %2421
  br label %sc_and_end458
sc_and_end458:
  %2427 = load i1, i1* %2421
  br i1 %2427, label %while_body455, label %while_end456
while_body455:
  call void @llvm.stackrestore(i8* %2420)
  %2428 = load { i64, i8* }*, { i64, i8* }** %2311
  %2429 = load i64, i64* %2418
  %2430 = call i64 @nyx_array_get_checked({ i64, i8* }* %2428, i64 %2429, i64 2)
  %2431 = inttoptr i64 %2430 to %nyx_string*
  %2432 = alloca %nyx_string*
  store %nyx_string* %2431, %nyx_string** %2432
  %2433 = load %nyx_string*, %nyx_string** %2432
  %2434 = call { i64, i8* }* @cov_fields(%nyx_string* %2433)
  %2435 = alloca { i64, i8* }*
  store { i64, i8* }* %2434, { i64, i8* }** %2435
  %2436 = load { i64, i8* }*, { i64, i8* }** %2435
  %2437 = call i64 @nyx_array_get_checked({ i64, i8* }* %2436, i64 0, i64 2)
  %2438 = inttoptr i64 %2437 to %nyx_string*
  %2439 = alloca %nyx_string*
  store %nyx_string* %2438, %nyx_string** %2439
  %2440 = load %nyx_string*, %nyx_string** %2439
  %2441 = load %nyx_string*, %nyx_string** %2403
  %2442 = call i1 @nyx_string_equals(%nyx_string* %2440, %nyx_string* %2441)
  %2443 = xor i1 %2442, true
  br i1 %2443, label %then459, label %else460
then459:
  store i1 0, i1* %2419
  br label %merge461
else460:
  %2444 = load { i64, i8* }*, { i64, i8* }** %2435
  %2445 = call i64 @nyx_array_get({ i64, i8* }* %2444, i64 1)
  %2446 = inttoptr i64 %2445 to %nyx_string*
  %2447 = call i64 @nyx_string_to_int(%nyx_string* %2446)
  %2448 = alloca i64
  store i64 %2447, i64* %2448
  %2449 = load { i64, i8* }*, { i64, i8* }** %2435
  %2450 = call i64 @nyx_array_get_checked({ i64, i8* }* %2449, i64 2, i64 2)
  %2451 = inttoptr i64 %2450 to %nyx_string*
  %2452 = alloca %nyx_string*
  store %nyx_string* %2451, %nyx_string** %2452
  %2453 = load { i64, i8* }*, { i64, i8* }** %2435
  %2454 = call i64 @nyx_array_get_checked({ i64, i8* }* %2453, i64 3, i64 2)
  %2455 = inttoptr i64 %2454 to %nyx_string*
  %2456 = alloca %nyx_string*
  store %nyx_string* %2455, %nyx_string** %2456
  %2457 = load %nyx_string*, %nyx_string** %2456
  %2458 = load %nyx_string*, %nyx_string** %2323
  %2459 = call i1 @nyx_string_equals(%nyx_string* %2457, %nyx_string* %2458)
  br i1 %2459, label %then462, label %else463
then462:
  %2460 = load i64, i64* %2410
  %2461 = add i64 %2460, 1
  store i64 %2461, i64* %2410
  br label %merge464
else463:
  %2462 = load i64, i64* %2409
  %2463 = add i64 %2462, 1
  store i64 %2463, i64* %2409
  %2464 = load %nyx_string*, %nyx_string** %2326
  %2465 = alloca %nyx_string*
  store %nyx_string* %2464, %nyx_string** %2465
  %2466 = load %nyx_string*, %nyx_string** %2456
  %2467 = load %nyx_string*, %nyx_string** %2329
  %2468 = call i1 @nyx_string_equals(%nyx_string* %2466, %nyx_string* %2467)
  br i1 %2468, label %then465, label %else466
then465:
  %2469 = load i64, i64* %2408
  %2470 = add i64 %2469, 1
  store i64 %2470, i64* %2408
  %2471 = load %nyx_string*, %nyx_string** %2332
  store %nyx_string* %2471, %nyx_string** %2465
  br label %merge467
else466:
  %2472 = load { i64, i8* }*, { i64, i8* }** %2412
  %2473 = load %nyx_string*, %nyx_string** %2335
  %2474 = load %nyx_string*, %nyx_string** %2403
  %2475 = call %nyx_string* @nyx_string_concat(%nyx_string* %2473, %nyx_string* %2474)
  %2476 = load %nyx_string*, %nyx_string** %2338
  %2477 = call %nyx_string* @nyx_string_concat(%nyx_string* %2475, %nyx_string* %2476)
  %2478 = load i64, i64* %2448
  %2479 = call %nyx_string* @nyx_string_from_int(i64 %2478)
  %2480 = call %nyx_string* @nyx_string_concat(%nyx_string* %2477, %nyx_string* %2479)
  %2481 = load %nyx_string*, %nyx_string** %2341
  %2482 = call %nyx_string* @nyx_string_concat(%nyx_string* %2480, %nyx_string* %2481)
  %2483 = load %nyx_string*, %nyx_string** %2452
  %2484 = call %nyx_string* @nyx_string_concat(%nyx_string* %2482, %nyx_string* %2483)
  %2485 = ptrtoint %nyx_string* %2484 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2472, i64 %2485, i64 2)
  br label %merge467
merge467:
  %2486 = load %nyx_string*, %nyx_string** %2414
  %2487 = load %nyx_string*, %nyx_string** %2344
  %2488 = call %nyx_string* @nyx_string_concat(%nyx_string* %2486, %nyx_string* %2487)
  %2489 = load i64, i64* %2448
  %2490 = call %nyx_string* @nyx_string_from_int(i64 %2489)
  %2491 = call %nyx_string* @nyx_string_concat(%nyx_string* %2488, %nyx_string* %2490)
  %2492 = load %nyx_string*, %nyx_string** %2347
  %2493 = call %nyx_string* @nyx_string_concat(%nyx_string* %2491, %nyx_string* %2492)
  %2494 = load %nyx_string*, %nyx_string** %2452
  %2495 = call %nyx_string* @nyx_string_concat(%nyx_string* %2493, %nyx_string* %2494)
  %2496 = load %nyx_string*, %nyx_string** %2350
  %2497 = call %nyx_string* @nyx_string_concat(%nyx_string* %2495, %nyx_string* %2496)
  store %nyx_string* %2497, %nyx_string** %2414
  %2498 = load %nyx_string*, %nyx_string** %2416
  %2499 = load %nyx_string*, %nyx_string** %2353
  %2500 = call %nyx_string* @nyx_string_concat(%nyx_string* %2498, %nyx_string* %2499)
  %2501 = load %nyx_string*, %nyx_string** %2465
  %2502 = call %nyx_string* @nyx_string_concat(%nyx_string* %2500, %nyx_string* %2501)
  %2503 = load %nyx_string*, %nyx_string** %2347
  %2504 = call %nyx_string* @nyx_string_concat(%nyx_string* %2502, %nyx_string* %2503)
  %2505 = load %nyx_string*, %nyx_string** %2452
  %2506 = call %nyx_string* @nyx_string_concat(%nyx_string* %2504, %nyx_string* %2505)
  %2507 = load %nyx_string*, %nyx_string** %2350
  %2508 = call %nyx_string* @nyx_string_concat(%nyx_string* %2506, %nyx_string* %2507)
  store %nyx_string* %2508, %nyx_string** %2416
  br label %merge464
merge464:
  %2509 = load i64, i64* %2418
  %2510 = add i64 %2509, 1
  store i64 %2510, i64* %2418
  br label %merge461
merge461:
  br label %while_cond454
while_end456:
  %2511 = load %nyx_string*, %nyx_string** %2356
  %2512 = load %nyx_string*, %nyx_string** %2403
  %2513 = call %nyx_string* @nyx_string_concat(%nyx_string* %2511, %nyx_string* %2512)
  %2514 = load %nyx_string*, %nyx_string** %2359
  %2515 = call %nyx_string* @nyx_string_concat(%nyx_string* %2513, %nyx_string* %2514)
  %2516 = load i64, i64* %2408
  %2517 = call %nyx_string* @nyx_string_from_int(i64 %2516)
  %2518 = call %nyx_string* @nyx_string_concat(%nyx_string* %2515, %nyx_string* %2517)
  %2519 = load %nyx_string*, %nyx_string** %2362
  %2520 = call %nyx_string* @nyx_string_concat(%nyx_string* %2518, %nyx_string* %2519)
  %2521 = load i64, i64* %2409
  %2522 = call %nyx_string* @nyx_string_from_int(i64 %2521)
  %2523 = call %nyx_string* @nyx_string_concat(%nyx_string* %2520, %nyx_string* %2522)
  %2524 = load %nyx_string*, %nyx_string** %2365
  %2525 = call %nyx_string* @nyx_string_concat(%nyx_string* %2523, %nyx_string* %2524)
  %2526 = alloca %nyx_string*
  store %nyx_string* %2525, %nyx_string** %2526
  %2527 = load i8*, i8** %1994
  %2528 = load %nyx_string*, %nyx_string** %2407
  %2529 = call i8* @nyx_string_to_cstr(%nyx_string* %2528)
  %2530 = call i1 @nyx_map_contains_str(i8* %2527, i8* %2529)
  %2531 = xor i1 %2530, true
  br i1 %2531, label %then468, label %else469
then468:
  %2532 = load %nyx_string*, %nyx_string** %2526
  %2533 = load %nyx_string*, %nyx_string** %2368
  %2534 = call %nyx_string* @nyx_string_concat(%nyx_string* %2532, %nyx_string* %2533)
  store %nyx_string* %2534, %nyx_string** %2526
  br label %merge470
else469:
  br label %merge470
merge470:
  %2535 = load i64, i64* %2410
  %2536 = icmp sgt i64 %2535, 0
  br i1 %2536, label %then471, label %else472
then471:
  %2537 = load %nyx_string*, %nyx_string** %2526
  %2538 = load %nyx_string*, %nyx_string** %2371
  %2539 = call %nyx_string* @nyx_string_concat(%nyx_string* %2537, %nyx_string* %2538)
  %2540 = load i64, i64* %2410
  %2541 = call %nyx_string* @nyx_string_from_int(i64 %2540)
  %2542 = call %nyx_string* @nyx_string_concat(%nyx_string* %2539, %nyx_string* %2541)
  %2543 = load %nyx_string*, %nyx_string** %2374
  %2544 = call %nyx_string* @nyx_string_concat(%nyx_string* %2542, %nyx_string* %2543)
  store %nyx_string* %2544, %nyx_string** %2526
  br label %merge473
else472:
  br label %merge473
merge473:
  %2545 = load %nyx_string*, %nyx_string** %2526
  %2546 = call i8* @nyx_string_to_cstr(%nyx_string* %2545)
  call void @nyx_print_string(i8* %2546)
  %2547 = alloca i64
  store i64 0, i64* %2547
  %2548 = call i8* @llvm.stacksave()
  br label %while_cond474
while_cond474:
  %2549 = load i64, i64* %2547
  %2550 = load { i64, i8* }*, { i64, i8* }** %2412
  %2551 = call i64 @nyx_array_length({ i64, i8* }* %2550)
  %2552 = icmp slt i64 %2549, %2551
  br i1 %2552, label %while_body475, label %while_end476
while_body475:
  call void @llvm.stackrestore(i8* %2548)
  %2553 = load { i64, i8* }*, { i64, i8* }** %2412
  %2554 = load i64, i64* %2547
  %2555 = call i64 @nyx_array_get_checked({ i64, i8* }* %2553, i64 %2554, i64 2)
  %2556 = inttoptr i64 %2555 to %nyx_string*
  %2557 = alloca %nyx_string*
  store %nyx_string* %2556, %nyx_string** %2557
  %2558 = load %nyx_string*, %nyx_string** %2557
  %2559 = call i8* @nyx_string_to_cstr(%nyx_string* %2558)
  call void @nyx_print_string(i8* %2559)
  %2560 = load i64, i64* %2547
  %2561 = add i64 %2560, 1
  store i64 %2561, i64* %2547
  br label %while_cond474
while_end476:
  %2562 = load i64, i64* %2315
  %2563 = load i64, i64* %2408
  %2564 = add i64 %2562, %2563
  store i64 %2564, i64* %2315
  %2565 = load i64, i64* %2316
  %2566 = load i64, i64* %2409
  %2567 = add i64 %2565, %2566
  store i64 %2567, i64* %2316
  %2568 = load %nyx_string*, %nyx_string** %2314
  %2569 = load %nyx_string*, %nyx_string** %2377
  %2570 = call %nyx_string* @nyx_string_concat(%nyx_string* %2568, %nyx_string* %2569)
  %2571 = load %nyx_string*, %nyx_string** %2403
  %2572 = call %nyx_string* @nyx_string_concat(%nyx_string* %2570, %nyx_string* %2571)
  %2573 = load %nyx_string*, %nyx_string** %2350
  %2574 = call %nyx_string* @nyx_string_concat(%nyx_string* %2572, %nyx_string* %2573)
  %2575 = load %nyx_string*, %nyx_string** %2414
  %2576 = call %nyx_string* @nyx_string_concat(%nyx_string* %2574, %nyx_string* %2575)
  %2577 = load %nyx_string*, %nyx_string** %2416
  %2578 = call %nyx_string* @nyx_string_concat(%nyx_string* %2576, %nyx_string* %2577)
  %2579 = load %nyx_string*, %nyx_string** %2380
  %2580 = call %nyx_string* @nyx_string_concat(%nyx_string* %2578, %nyx_string* %2579)
  %2581 = load i64, i64* %2409
  %2582 = call %nyx_string* @nyx_string_from_int(i64 %2581)
  %2583 = call %nyx_string* @nyx_string_concat(%nyx_string* %2580, %nyx_string* %2582)
  %2584 = load %nyx_string*, %nyx_string** %2383
  %2585 = call %nyx_string* @nyx_string_concat(%nyx_string* %2583, %nyx_string* %2584)
  %2586 = load i64, i64* %2408
  %2587 = call %nyx_string* @nyx_string_from_int(i64 %2586)
  %2588 = call %nyx_string* @nyx_string_concat(%nyx_string* %2585, %nyx_string* %2587)
  %2589 = load %nyx_string*, %nyx_string** %2386
  %2590 = call %nyx_string* @nyx_string_concat(%nyx_string* %2588, %nyx_string* %2589)
  store %nyx_string* %2590, %nyx_string** %2314
  %2591 = load i64, i64* %2418
  store i64 %2591, i64* %2317
  br label %while_cond451
while_end453:
  %2592 = load { i64, i8* }*, { i64, i8* }** %1860
  %2593 = call i64 @nyx_array_length({ i64, i8* }* %2592)
  %2594 = icmp sgt i64 %2593, 0
  br i1 %2594, label %then477, label %else478
then477:
  %2595 = getelementptr [70 x i8], [70 x i8]* @.str233, i32 0, i32 0
  %2596 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str233.c, i8* %2595, i64 69)
  %2597 = call i8* @nyx_string_to_cstr(%nyx_string* %2596)
  call void @nyx_print_string(i8* %2597)
  %2598 = alloca i64
  store i64 0, i64* %2598
  %2599 = getelementptr [5 x i8], [5 x i8]* @.str234, i32 0, i32 0
  %2600 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str234.c, i8* %2599, i64 4)
  %2601 = alloca %nyx_string*
  store %nyx_string* %2600, %nyx_string** %2601
  %2602 = call i8* @llvm.stacksave()
  br label %while_cond480
while_cond480:
  %2603 = load i64, i64* %2598
  %2604 = load { i64, i8* }*, { i64, i8* }** %1860
  %2605 = call i64 @nyx_array_length({ i64, i8* }* %2604)
  %2606 = icmp slt i64 %2603, %2605
  br i1 %2606, label %while_body481, label %while_end482
while_body481:
  call void @llvm.stackrestore(i8* %2602)
  %2607 = load { i64, i8* }*, { i64, i8* }** %1860
  %2608 = load i64, i64* %2598
  %2609 = call i64 @nyx_array_get_checked({ i64, i8* }* %2607, i64 %2608, i64 2)
  %2610 = inttoptr i64 %2609 to %nyx_string*
  %2611 = alloca %nyx_string*
  store %nyx_string* %2610, %nyx_string** %2611
  %2612 = load %nyx_string*, %nyx_string** %2601
  %2613 = load %nyx_string*, %nyx_string** %2611
  %2614 = call %nyx_string* @nyx_string_concat(%nyx_string* %2612, %nyx_string* %2613)
  %2615 = call i8* @nyx_string_to_cstr(%nyx_string* %2614)
  call void @nyx_print_string(i8* %2615)
  %2616 = load i64, i64* %2598
  %2617 = add i64 %2616, 1
  store i64 %2617, i64* %2598
  br label %while_cond480
while_end482:
  br label %merge479
else478:
  br label %merge479
merge479:
  %2618 = getelementptr [10 x i8], [10 x i8]* @.str235, i32 0, i32 0
  %2619 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str235.c, i8* %2618, i64 9)
  %2620 = load i64, i64* %2315
  %2621 = call %nyx_string* @nyx_string_from_int(i64 %2620)
  %2622 = call %nyx_string* @nyx_string_concat(%nyx_string* %2619, %nyx_string* %2621)
  %2623 = getelementptr [2 x i8], [2 x i8]* @.str236, i32 0, i32 0
  %2624 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str236.c, i8* %2623, i64 1)
  %2625 = call %nyx_string* @nyx_string_concat(%nyx_string* %2622, %nyx_string* %2624)
  %2626 = load i64, i64* %2316
  %2627 = call %nyx_string* @nyx_string_from_int(i64 %2626)
  %2628 = call %nyx_string* @nyx_string_concat(%nyx_string* %2625, %nyx_string* %2627)
  %2629 = getelementptr [20 x i8], [20 x i8]* @.str237, i32 0, i32 0
  %2630 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str237.c, i8* %2629, i64 19)
  %2631 = call %nyx_string* @nyx_string_concat(%nyx_string* %2628, %nyx_string* %2630)
  %2632 = call i8* @nyx_string_to_cstr(%nyx_string* %2631)
  call void @nyx_print_string(i8* %2632)
  %2633 = load i1, i1* %want_lcov.ptr
  br i1 %2633, label %then483, label %else484
then483:
  %2634 = getelementptr [11 x i8], [11 x i8]* @.str238, i32 0, i32 0
  %2635 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str238.c, i8* %2634, i64 10)
  %2636 = load %nyx_string*, %nyx_string** %1846
  %2637 = call %nyx_string* @nyx_string_concat(%nyx_string* %2635, %nyx_string* %2636)
  %2638 = getelementptr [9 x i8], [9 x i8]* @.str239, i32 0, i32 0
  %2639 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str239.c, i8* %2638, i64 8)
  %2640 = call %nyx_string* @nyx_string_concat(%nyx_string* %2637, %nyx_string* %2639)
  %2641 = call i8* @nyx_string_to_cstr(%nyx_string* %2640)
  %2642 = call i64 @nyx_exec_code(i8* %2641)
  %2643 = load %nyx_string*, %nyx_string** %1846
  %2644 = getelementptr [22 x i8], [22 x i8]* @.str240, i32 0, i32 0
  %2645 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str240.c, i8* %2644, i64 21)
  %2646 = call %nyx_string* @nyx_string_concat(%nyx_string* %2643, %nyx_string* %2645)
  %2647 = load %nyx_string*, %nyx_string** %2314
  %2648 = call i8* @nyx_string_to_cstr(%nyx_string* %2646)
  %2649 = call i1 @nyx_write_file_safe(i8* %2648, %nyx_string* %2647)
  %2650 = getelementptr [29 x i8], [29 x i8]* @.str241, i32 0, i32 0
  %2651 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str241.c, i8* %2650, i64 28)
  %2652 = call i8* @nyx_string_to_cstr(%nyx_string* %2651)
  call void @nyx_print_string(i8* %2652)
  br label %merge485
else484:
  br label %merge485
merge485:
  ret i64 0
}

define internal i64 @print_valid_options(
) {
  %2653 = getelementptr [104 x i8], [104 x i8]* @.str242, i32 0, i32 0
  %2654 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str242.c, i8* %2653, i64 103)
  %2655 = call i8* @nyx_string_to_cstr(%nyx_string* %2654)
  call void @nyx_print_string(i8* %2655)
  ret i64 0
}

define i64 @main(
i32 %argc, i8** %argv) {
  call void @nyx_set_args(i32 %argc, i8** %argv)
  %2656 = getelementptr [24 x i8], [24 x i8]* @.str243, i32 0, i32 0
  %2657 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str243.c, i8* %2656, i64 23)
  %2658 = call i8* @nyx_string_to_cstr(%nyx_string* %2657)
  call void @nyx_print_string(i8* %2658)
  %2659 = call %TestConfig @load_test_config()
  %2660 = alloca %TestConfig
  store %TestConfig %2659, %TestConfig* %2660
  %2661 = call { i64, i8* }* @nyx_get_args()
  %2662 = alloca { i64, i8* }*
  store { i64, i8* }* %2661, { i64, i8* }** %2662
  %2663 = getelementptr [1 x i8], [1 x i8]* @.str244, i32 0, i32 0
  %2664 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str244.c, i8* %2663, i64 0)
  %2665 = alloca %nyx_string*
  store %nyx_string* %2664, %nyx_string** %2665
  %2666 = alloca i64
  store i64 1, i64* %2666
  %2667 = getelementptr [9 x i8], [9 x i8]* @.str245, i32 0, i32 0
  %2668 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str245.c, i8* %2667, i64 8)
  %2669 = alloca %nyx_string*
  store %nyx_string* %2668, %nyx_string** %2669
  %2670 = getelementptr [10 x i8], [10 x i8]* @.str246, i32 0, i32 0
  %2671 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str246.c, i8* %2670, i64 9)
  %2672 = alloca %nyx_string*
  store %nyx_string* %2671, %nyx_string** %2672
  %2673 = getelementptr [3 x i8], [3 x i8]* @.str247, i32 0, i32 0
  %2674 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str247.c, i8* %2673, i64 2)
  %2675 = alloca %nyx_string*
  store %nyx_string* %2674, %nyx_string** %2675
  %2676 = getelementptr [10 x i8], [10 x i8]* @.str248, i32 0, i32 0
  %2677 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str248.c, i8* %2676, i64 9)
  %2678 = alloca %nyx_string*
  store %nyx_string* %2677, %nyx_string** %2678
  %2679 = getelementptr [11 x i8], [11 x i8]* @.str249, i32 0, i32 0
  %2680 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str249.c, i8* %2679, i64 10)
  %2681 = alloca %nyx_string*
  store %nyx_string* %2680, %nyx_string** %2681
  %2682 = getelementptr [16 x i8], [16 x i8]* @.str250, i32 0, i32 0
  %2683 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str250.c, i8* %2682, i64 15)
  %2684 = alloca %nyx_string*
  store %nyx_string* %2683, %nyx_string** %2684
  %2685 = getelementptr [8 x i8], [8 x i8]* @.str251, i32 0, i32 0
  %2686 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str251.c, i8* %2685, i64 7)
  %2687 = alloca %nyx_string*
  store %nyx_string* %2686, %nyx_string** %2687
  %2688 = getelementptr [12 x i8], [12 x i8]* @.str252, i32 0, i32 0
  %2689 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str252.c, i8* %2688, i64 11)
  %2690 = alloca %nyx_string*
  store %nyx_string* %2689, %nyx_string** %2690
  %2691 = getelementptr [24 x i8], [24 x i8]* @.str253, i32 0, i32 0
  %2692 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str253.c, i8* %2691, i64 23)
  %2693 = alloca %nyx_string*
  store %nyx_string* %2692, %nyx_string** %2693
  %2694 = getelementptr [106 x i8], [106 x i8]* @.str254, i32 0, i32 0
  %2695 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str254.c, i8* %2694, i64 105)
  %2696 = alloca %nyx_string*
  store %nyx_string* %2695, %nyx_string** %2696
  %2697 = getelementptr [9 x i8], [9 x i8]* @.str255, i32 0, i32 0
  %2698 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str255.c, i8* %2697, i64 8)
  %2699 = alloca %nyx_string*
  store %nyx_string* %2698, %nyx_string** %2699
  %2700 = getelementptr [10 x i8], [10 x i8]* @.str256, i32 0, i32 0
  %2701 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str256.c, i8* %2700, i64 9)
  %2702 = alloca %nyx_string*
  store %nyx_string* %2701, %nyx_string** %2702
  %2703 = getelementptr [2 x i8], [2 x i8]* @.str257, i32 0, i32 0
  %2704 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str257.c, i8* %2703, i64 1)
  %2705 = alloca %nyx_string*
  store %nyx_string* %2704, %nyx_string** %2705
  %2706 = getelementptr [4 x i8], [4 x i8]* @.str258, i32 0, i32 0
  %2707 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str258.c, i8* %2706, i64 3)
  %2708 = alloca %nyx_string*
  store %nyx_string* %2707, %nyx_string** %2708
  %2709 = getelementptr [2 x i8], [2 x i8]* @.str259, i32 0, i32 0
  %2710 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str259.c, i8* %2709, i64 1)
  %2711 = alloca %nyx_string*
  store %nyx_string* %2710, %nyx_string** %2711
  %2712 = call i8* @llvm.stacksave()
  br label %while_cond486
while_cond486:
  %2713 = load i64, i64* %2666
  %2714 = load { i64, i8* }*, { i64, i8* }** %2662
  %2715 = call i64 @nyx_array_length({ i64, i8* }* %2714)
  %2716 = icmp slt i64 %2713, %2715
  br i1 %2716, label %while_body487, label %while_end488
while_body487:
  call void @llvm.stackrestore(i8* %2712)
  %2717 = load { i64, i8* }*, { i64, i8* }** %2662
  %2718 = load i64, i64* %2666
  %2719 = call i64 @nyx_array_get_checked({ i64, i8* }* %2717, i64 %2718, i64 2)
  %2720 = inttoptr i64 %2719 to %nyx_string*
  %2721 = alloca %nyx_string*
  store %nyx_string* %2720, %nyx_string** %2721
  %2722 = alloca i1
  store i1 false, i1* %2722
  %2723 = load %nyx_string*, %nyx_string** %2721
  %2724 = load %nyx_string*, %nyx_string** %2669
  %2725 = call i1 @nyx_string_equals(%nyx_string* %2723, %nyx_string* %2724)
  br i1 %2725, label %sc_and_rhs489, label %sc_and_end490
sc_and_rhs489:
  %2726 = load i64, i64* %2666
  %2727 = add i64 %2726, 1
  %2728 = load { i64, i8* }*, { i64, i8* }** %2662
  %2729 = call i64 @nyx_array_length({ i64, i8* }* %2728)
  %2730 = icmp slt i64 %2727, %2729
  store i1 %2730, i1* %2722
  br label %sc_and_end490
sc_and_end490:
  %2731 = load i1, i1* %2722
  br i1 %2731, label %then491, label %else492
then491:
  %2732 = load i64, i64* %2666
  %2733 = add i64 %2732, 1
  store i64 %2733, i64* %2666
  %2734 = load { i64, i8* }*, { i64, i8* }** %2662
  %2735 = load i64, i64* %2666
  %2736 = call i64 @nyx_array_get_checked({ i64, i8* }* %2734, i64 %2735, i64 2)
  %2737 = inttoptr i64 %2736 to %nyx_string*
  %2738 = alloca %nyx_string*
  store %nyx_string* %2737, %nyx_string** %2738
  %2739 = load %nyx_string*, %nyx_string** %2738
  %2740 = getelementptr %TestConfig, %TestConfig* %2660, i32 0, i32 2
  store %nyx_string* %2739, %nyx_string** %2740
  br label %merge493
else492:
  %2741 = alloca i1
  store i1 true, i1* %2741
  %2742 = load %nyx_string*, %nyx_string** %2721
  %2743 = load %nyx_string*, %nyx_string** %2672
  %2744 = call i1 @nyx_string_equals(%nyx_string* %2742, %nyx_string* %2743)
  br i1 %2744, label %sc_or_end495, label %sc_or_rhs494
sc_or_rhs494:
  %2745 = load %nyx_string*, %nyx_string** %2721
  %2746 = load %nyx_string*, %nyx_string** %2675
  %2747 = call i1 @nyx_string_equals(%nyx_string* %2745, %nyx_string* %2746)
  store i1 %2747, i1* %2741
  br label %sc_or_end495
sc_or_end495:
  %2748 = load i1, i1* %2741
  br i1 %2748, label %then496, label %else497
then496:
  %2749 = getelementptr %TestConfig, %TestConfig* %2660, i32 0, i32 3
  store i1 1, i1* %2749
  br label %merge498
else497:
  %2750 = alloca i1
  store i1 false, i1* %2750
  %2751 = load %nyx_string*, %nyx_string** %2721
  %2752 = load %nyx_string*, %nyx_string** %2678
  %2753 = call i1 @nyx_string_equals(%nyx_string* %2751, %nyx_string* %2752)
  br i1 %2753, label %sc_and_rhs499, label %sc_and_end500
sc_and_rhs499:
  %2754 = load i64, i64* %2666
  %2755 = add i64 %2754, 1
  %2756 = load { i64, i8* }*, { i64, i8* }** %2662
  %2757 = call i64 @nyx_array_length({ i64, i8* }* %2756)
  %2758 = icmp slt i64 %2755, %2757
  store i1 %2758, i1* %2750
  br label %sc_and_end500
sc_and_end500:
  %2759 = load i1, i1* %2750
  br i1 %2759, label %then501, label %else502
then501:
  %2760 = load i64, i64* %2666
  %2761 = add i64 %2760, 1
  store i64 %2761, i64* %2666
  %2762 = load { i64, i8* }*, { i64, i8* }** %2662
  %2763 = load i64, i64* %2666
  %2764 = call i64 @nyx_array_get_checked({ i64, i8* }* %2762, i64 %2763, i64 2)
  %2765 = inttoptr i64 %2764 to %nyx_string*
  %2766 = alloca %nyx_string*
  store %nyx_string* %2765, %nyx_string** %2766
  %2767 = load %nyx_string*, %nyx_string** %2766
  %2768 = call i64 @nyx_string_to_int(%nyx_string* %2767)
  %2769 = getelementptr %TestConfig, %TestConfig* %2660, i32 0, i32 1
  store i64 %2768, i64* %2769
  br label %merge503
else502:
  %2770 = load %nyx_string*, %nyx_string** %2721
  %2771 = load %nyx_string*, %nyx_string** %2681
  %2772 = call i1 @nyx_string_equals(%nyx_string* %2770, %nyx_string* %2771)
  br i1 %2772, label %then504, label %else505
then504:
  %2773 = getelementptr %TestConfig, %TestConfig* %2660, i32 0, i32 5
  store i1 1, i1* %2773
  br label %merge506
else505:
  %2774 = load %nyx_string*, %nyx_string** %2721
  %2775 = load %nyx_string*, %nyx_string** %2684
  %2776 = call i1 @nyx_string_equals(%nyx_string* %2774, %nyx_string* %2775)
  br i1 %2776, label %then507, label %else508
then507:
  %2777 = getelementptr %TestConfig, %TestConfig* %2660, i32 0, i32 5
  store i1 1, i1* %2777
  %2778 = getelementptr %TestConfig, %TestConfig* %2660, i32 0, i32 6
  store i1 1, i1* %2778
  br label %merge509
else508:
  %2779 = alloca i1
  store i1 true, i1* %2779
  %2780 = load %nyx_string*, %nyx_string** %2721
  %2781 = load %nyx_string*, %nyx_string** %2687
  %2782 = call i1 @nyx_string_equals(%nyx_string* %2780, %nyx_string* %2781)
  br i1 %2782, label %sc_or_end511, label %sc_or_rhs510
sc_or_rhs510:
  %2783 = load %nyx_string*, %nyx_string** %2721
  %2784 = load %nyx_string*, %nyx_string** %2690
  %2785 = call i1 @nyx_string_starts_with(%nyx_string* %2783, %nyx_string* %2784)
  store i1 %2785, i1* %2779
  br label %sc_or_end511
sc_or_end511:
  %2786 = load i1, i1* %2779
  br i1 %2786, label %then512, label %else513
then512:
  %2787 = load %nyx_string*, %nyx_string** %2693
  %2788 = load %nyx_string*, %nyx_string** %2721
  %2789 = call %nyx_string* @nyx_string_concat(%nyx_string* %2787, %nyx_string* %2788)
  %2790 = call i8* @nyx_string_to_cstr(%nyx_string* %2789)
  call void @nyx_print_string(i8* %2790)
  %2791 = load %nyx_string*, %nyx_string** %2696
  %2792 = call i8* @nyx_string_to_cstr(%nyx_string* %2791)
  call void @nyx_print_string(i8* %2792)
  %2793 = call i64 @print_valid_options()
  ret i64 1
else513:
  %2794 = alloca i1
  store i1 true, i1* %2794
  %2795 = load %nyx_string*, %nyx_string** %2721
  %2796 = load %nyx_string*, %nyx_string** %2699
  %2797 = call i1 @nyx_string_equals(%nyx_string* %2795, %nyx_string* %2796)
  br i1 %2797, label %sc_or_end516, label %sc_or_rhs515
sc_or_rhs515:
  %2798 = load %nyx_string*, %nyx_string** %2721
  %2799 = load %nyx_string*, %nyx_string** %2702
  %2800 = call i1 @nyx_string_starts_with(%nyx_string* %2798, %nyx_string* %2799)
  store i1 %2800, i1* %2794
  br label %sc_or_end516
sc_or_end516:
  %2801 = load i1, i1* %2794
  br i1 %2801, label %then517, label %else518
then517:
  %2802 = load %nyx_string*, %nyx_string** %2721
  store %nyx_string* %2802, %nyx_string** %2665
  %2803 = alloca i1
  store i1 false, i1* %2803
  %2804 = load %nyx_string*, %nyx_string** %2721
  %2805 = load %nyx_string*, %nyx_string** %2699
  %2806 = call i1 @nyx_string_equals(%nyx_string* %2804, %nyx_string* %2805)
  br i1 %2806, label %sc_and_rhs520, label %sc_and_end521
sc_and_rhs520:
  %2807 = load i64, i64* %2666
  %2808 = add i64 %2807, 1
  %2809 = load { i64, i8* }*, { i64, i8* }** %2662
  %2810 = call i64 @nyx_array_length({ i64, i8* }* %2809)
  %2811 = icmp slt i64 %2808, %2810
  store i1 %2811, i1* %2803
  br label %sc_and_end521
sc_and_end521:
  %2812 = load i1, i1* %2803
  br i1 %2812, label %then522, label %else523
then522:
  %2813 = load i64, i64* %2666
  %2814 = add i64 %2813, 1
  store i64 %2814, i64* %2666
  %2815 = load { i64, i8* }*, { i64, i8* }** %2662
  %2816 = load i64, i64* %2666
  %2817 = call i64 @nyx_array_get_checked({ i64, i8* }* %2815, i64 %2816, i64 2)
  %2818 = inttoptr i64 %2817 to %nyx_string*
  %2819 = alloca %nyx_string*
  store %nyx_string* %2818, %nyx_string** %2819
  %2820 = load %nyx_string*, %nyx_string** %2721
  %2821 = load %nyx_string*, %nyx_string** %2705
  %2822 = call %nyx_string* @nyx_string_concat(%nyx_string* %2820, %nyx_string* %2821)
  %2823 = load %nyx_string*, %nyx_string** %2819
  %2824 = call %nyx_string* @nyx_string_concat(%nyx_string* %2822, %nyx_string* %2823)
  store %nyx_string* %2824, %nyx_string** %2665
  br label %merge524
else523:
  br label %merge524
merge524:
  br label %merge519
else518:
  %2825 = alloca i1
  store i1 true, i1* %2825
  %2826 = load %nyx_string*, %nyx_string** %2721
  %2827 = load %nyx_string*, %nyx_string** %2669
  %2828 = call i1 @nyx_string_equals(%nyx_string* %2826, %nyx_string* %2827)
  br i1 %2828, label %sc_or_end526, label %sc_or_rhs525
sc_or_rhs525:
  %2829 = load %nyx_string*, %nyx_string** %2721
  %2830 = load %nyx_string*, %nyx_string** %2678
  %2831 = call i1 @nyx_string_equals(%nyx_string* %2829, %nyx_string* %2830)
  store i1 %2831, i1* %2825
  br label %sc_or_end526
sc_or_end526:
  %2832 = load i1, i1* %2825
  br i1 %2832, label %then527, label %else528
then527:
  br label %merge529
else528:
  %2833 = load %nyx_string*, %nyx_string** %2721
  %2834 = load %nyx_string*, %nyx_string** %2708
  %2835 = call i1 @nyx_string_ends_with(%nyx_string* %2833, %nyx_string* %2834)
  br i1 %2835, label %then530, label %else531
then530:
  %2836 = load %nyx_string*, %nyx_string** %2721
  %2837 = getelementptr %TestConfig, %TestConfig* %2660, i32 0, i32 4
  store %nyx_string* %2836, %nyx_string** %2837
  br label %merge532
else531:
  %2838 = load %nyx_string*, %nyx_string** %2721
  %2839 = load %nyx_string*, %nyx_string** %2711
  %2840 = call i1 @nyx_string_starts_with(%nyx_string* %2838, %nyx_string* %2839)
  br i1 %2840, label %then533, label %else534
then533:
  %2841 = load %nyx_string*, %nyx_string** %2693
  %2842 = load %nyx_string*, %nyx_string** %2721
  %2843 = call %nyx_string* @nyx_string_concat(%nyx_string* %2841, %nyx_string* %2842)
  %2844 = call i8* @nyx_string_to_cstr(%nyx_string* %2843)
  call void @nyx_print_string(i8* %2844)
  %2845 = call i64 @print_valid_options()
  ret i64 1
else534:
  br label %merge535
merge535:
  br label %merge532
merge532:
  br label %merge529
merge529:
  br label %merge519
merge519:
  br label %merge514
merge514:
  br label %merge509
merge509:
  br label %merge506
merge506:
  br label %merge503
merge503:
  br label %merge498
merge498:
  br label %merge493
merge493:
  %2846 = load i64, i64* %2666
  %2847 = add i64 %2846, 1
  store i64 %2847, i64* %2666
  br label %while_cond486
while_end488:
  %2848 = load %nyx_string*, %nyx_string** %2665
  %2849 = getelementptr [1 x i8], [1 x i8]* @.str260, i32 0, i32 0
  %2850 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str260.c, i8* %2849, i64 0)
  %2851 = call i1 @nyx_string_equals(%nyx_string* %2848, %nyx_string* %2850)
  %2852 = xor i1 %2851, true
  br i1 %2852, label %then536, label %else537
then536:
  %2853 = getelementptr %TestConfig, %TestConfig* %2660, i32 0, i32 5
  %2854 = load i1, i1* %2853
  br i1 %2854, label %then539, label %else540
then539:
  %2855 = getelementptr [47 x i8], [47 x i8]* @.str261, i32 0, i32 0
  %2856 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str261.c, i8* %2855, i64 46)
  %2857 = load %nyx_string*, %nyx_string** %2665
  %2858 = call %nyx_string* @nyx_string_concat(%nyx_string* %2856, %nyx_string* %2857)
  %2859 = getelementptr [58 x i8], [58 x i8]* @.str262, i32 0, i32 0
  %2860 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str262.c, i8* %2859, i64 57)
  %2861 = call %nyx_string* @nyx_string_concat(%nyx_string* %2858, %nyx_string* %2860)
  %2862 = call i8* @nyx_string_to_cstr(%nyx_string* %2861)
  call void @nyx_print_string(i8* %2862)
  br label %merge541
else540:
  %2863 = getelementptr [24 x i8], [24 x i8]* @.str263, i32 0, i32 0
  %2864 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str263.c, i8* %2863, i64 23)
  %2865 = load %nyx_string*, %nyx_string** %2665
  %2866 = call %nyx_string* @nyx_string_concat(%nyx_string* %2864, %nyx_string* %2865)
  %2867 = call i8* @nyx_string_to_cstr(%nyx_string* %2866)
  call void @nyx_print_string(i8* %2867)
  br label %merge541
merge541:
  %2868 = call i64 @print_valid_options()
  ret i64 1
else537:
  br label %merge538
merge538:
  %2869 = getelementptr [1 x i8], [1 x i8]* @.str264, i32 0, i32 0
  %2870 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str264.c, i8* %2869, i64 0)
  %2871 = alloca %nyx_string*
  store %nyx_string* %2870, %nyx_string** %2871
  %2872 = getelementptr [1 x i8], [1 x i8]* @.str265, i32 0, i32 0
  %2873 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str265.c, i8* %2872, i64 0)
  %2874 = alloca %nyx_string*
  store %nyx_string* %2873, %nyx_string** %2874
  %2875 = getelementptr %TestConfig, %TestConfig* %2660, i32 0, i32 5
  %2876 = load i1, i1* %2875
  br i1 %2876, label %then542, label %else543
then542:
  %2877 = call %nyx_string* @cov_find_profdata()
  store %nyx_string* %2877, %nyx_string** %2871
  %2878 = load %nyx_string*, %nyx_string** %2871
  %2879 = getelementptr [1 x i8], [1 x i8]* @.str266, i32 0, i32 0
  %2880 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str266.c, i8* %2879, i64 0)
  %2881 = call i1 @nyx_string_equals(%nyx_string* %2878, %nyx_string* %2880)
  br i1 %2881, label %then545, label %else546
then545:
  %2882 = call %nyx_string* @cov_clang_major()
  %2883 = alloca %nyx_string*
  store %nyx_string* %2882, %nyx_string** %2883
  %2884 = getelementptr [5 x i8], [5 x i8]* @.str267, i32 0, i32 0
  %2885 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str267.c, i8* %2884, i64 4)
  %2886 = alloca %nyx_string*
  store %nyx_string* %2885, %nyx_string** %2886
  %2887 = load %nyx_string*, %nyx_string** %2883
  %2888 = getelementptr [1 x i8], [1 x i8]* @.str268, i32 0, i32 0
  %2889 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str268.c, i8* %2888, i64 0)
  %2890 = call i1 @nyx_string_equals(%nyx_string* %2887, %nyx_string* %2889)
  %2891 = xor i1 %2890, true
  br i1 %2891, label %then548, label %else549
then548:
  %2892 = getelementptr [6 x i8], [6 x i8]* @.str269, i32 0, i32 0
  %2893 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str269.c, i8* %2892, i64 5)
  %2894 = load %nyx_string*, %nyx_string** %2883
  %2895 = call %nyx_string* @nyx_string_concat(%nyx_string* %2893, %nyx_string* %2894)
  store %nyx_string* %2895, %nyx_string** %2886
  br label %merge550
else549:
  br label %merge550
merge550:
  %2896 = getelementptr [101 x i8], [101 x i8]* @.str270, i32 0, i32 0
  %2897 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str270.c, i8* %2896, i64 100)
  %2898 = call i8* @nyx_string_to_cstr(%nyx_string* %2897)
  call void @nyx_print_string(i8* %2898)
  %2899 = getelementptr [35 x i8], [35 x i8]* @.str271, i32 0, i32 0
  %2900 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str271.c, i8* %2899, i64 34)
  %2901 = load %nyx_string*, %nyx_string** %2886
  %2902 = call %nyx_string* @nyx_string_concat(%nyx_string* %2900, %nyx_string* %2901)
  %2903 = call i8* @nyx_string_to_cstr(%nyx_string* %2902)
  call void @nyx_print_string(i8* %2903)
  %2904 = getelementptr [82 x i8], [82 x i8]* @.str272, i32 0, i32 0
  %2905 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str272.c, i8* %2904, i64 81)
  %2906 = call i8* @nyx_string_to_cstr(%nyx_string* %2905)
  call void @nyx_print_string(i8* %2906)
  %2907 = getelementptr [82 x i8], [82 x i8]* @.str273, i32 0, i32 0
  %2908 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str273.c, i8* %2907, i64 81)
  %2909 = call i8* @nyx_string_to_cstr(%nyx_string* %2908)
  call void @nyx_print_string(i8* %2909)
  ret i64 1
else546:
  br label %merge547
merge547:
  %2910 = getelementptr [30 x i8], [30 x i8]* @.str274, i32 0, i32 0
  %2911 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str274.c, i8* %2910, i64 29)
  %2912 = call i8* @nyx_string_to_cstr(%nyx_string* %2911)
  %2913 = call %nyx_string* @nyx_exec(i8* %2912)
  %2914 = call %nyx_string* @nyx_string_trim(%nyx_string* %2913)
  store %nyx_string* %2914, %nyx_string** %2874
  %2915 = load %nyx_string*, %nyx_string** %2874
  %2916 = getelementptr [1 x i8], [1 x i8]* @.str275, i32 0, i32 0
  %2917 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str275.c, i8* %2916, i64 0)
  %2918 = call i1 @nyx_string_equals(%nyx_string* %2915, %nyx_string* %2917)
  br i1 %2918, label %then551, label %else552
then551:
  %2919 = getelementptr [55 x i8], [55 x i8]* @.str276, i32 0, i32 0
  %2920 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str276.c, i8* %2919, i64 54)
  %2921 = call i8* @nyx_string_to_cstr(%nyx_string* %2920)
  call void @nyx_print_string(i8* %2921)
  ret i64 1
else552:
  br label %merge553
merge553:
  br label %merge544
else543:
  br label %merge544
merge544:
  %2922 = call { i64, i8* }* @nyx_array_new_ptr()
  %2923 = alloca { i64, i8* }*
  store { i64, i8* }* %2922, { i64, i8* }** %2923
  %2924 = getelementptr %TestConfig, %TestConfig* %2660, i32 0, i32 4
  %2925 = load %nyx_string*, %nyx_string** %2924
  %2926 = getelementptr [1 x i8], [1 x i8]* @.str277, i32 0, i32 0
  %2927 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str277.c, i8* %2926, i64 0)
  %2928 = call i1 @nyx_string_equals(%nyx_string* %2925, %nyx_string* %2927)
  %2929 = xor i1 %2928, true
  br i1 %2929, label %then554, label %else555
then554:
  %2930 = getelementptr %TestConfig, %TestConfig* %2660, i32 0, i32 4
  %2931 = load %nyx_string*, %nyx_string** %2930
  %2932 = call i8* @nyx_string_to_cstr(%nyx_string* %2931)
  %2933 = call i1 @nyx_file_exists(i8* %2932)
  %2934 = xor i1 %2933, true
  br i1 %2934, label %then557, label %else558
then557:
  %2935 = getelementptr [24 x i8], [24 x i8]* @.str278, i32 0, i32 0
  %2936 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str278.c, i8* %2935, i64 23)
  %2937 = getelementptr %TestConfig, %TestConfig* %2660, i32 0, i32 4
  %2938 = load %nyx_string*, %nyx_string** %2937
  %2939 = call %nyx_string* @nyx_string_concat(%nyx_string* %2936, %nyx_string* %2938)
  %2940 = call i8* @nyx_string_to_cstr(%nyx_string* %2939)
  call void @nyx_print_string(i8* %2940)
  ret i64 1
else558:
  br label %merge559
merge559:
  %2941 = load { i64, i8* }*, { i64, i8* }** %2923
  %2942 = getelementptr %TestConfig, %TestConfig* %2660, i32 0, i32 4
  %2943 = load %nyx_string*, %nyx_string** %2942
  %2944 = ptrtoint %nyx_string* %2943 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2941, i64 %2944, i64 2)
  br label %merge556
else555:
  %2945 = load %TestConfig, %TestConfig* %2660
  %2946 = call { i64, i8* }* @discover_tests(%TestConfig %2945)
  store { i64, i8* }* %2946, { i64, i8* }** %2923
  br label %merge556
merge556:
  %2947 = load { i64, i8* }*, { i64, i8* }** %2923
  %2948 = call i64 @nyx_array_length({ i64, i8* }* %2947)
  %2949 = icmp eq i64 %2948, 0
  br i1 %2949, label %then560, label %else561
then560:
  %2950 = getelementptr [23 x i8], [23 x i8]* @.str279, i32 0, i32 0
  %2951 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str279.c, i8* %2950, i64 22)
  %2952 = call i8* @nyx_string_to_cstr(%nyx_string* %2951)
  call void @nyx_print_string(i8* %2952)
  %2953 = getelementptr %TestConfig, %TestConfig* %2660, i32 0, i32 2
  %2954 = load %nyx_string*, %nyx_string** %2953
  %2955 = getelementptr [1 x i8], [1 x i8]* @.str280, i32 0, i32 0
  %2956 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str280.c, i8* %2955, i64 0)
  %2957 = call i1 @nyx_string_equals(%nyx_string* %2954, %nyx_string* %2956)
  %2958 = xor i1 %2957, true
  br i1 %2958, label %then563, label %else564
then563:
  %2959 = getelementptr [12 x i8], [12 x i8]* @.str281, i32 0, i32 0
  %2960 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str281.c, i8* %2959, i64 11)
  %2961 = getelementptr %TestConfig, %TestConfig* %2660, i32 0, i32 2
  %2962 = load %nyx_string*, %nyx_string** %2961
  %2963 = call %nyx_string* @nyx_string_concat(%nyx_string* %2960, %nyx_string* %2962)
  %2964 = getelementptr [2 x i8], [2 x i8]* @.str282, i32 0, i32 0
  %2965 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str282.c, i8* %2964, i64 1)
  %2966 = call %nyx_string* @nyx_string_concat(%nyx_string* %2963, %nyx_string* %2965)
  %2967 = call i8* @nyx_string_to_cstr(%nyx_string* %2966)
  call void @nyx_print_string(i8* %2967)
  br label %merge565
else564:
  br label %merge565
merge565:
  %2968 = getelementptr [14 x i8], [14 x i8]* @.str283, i32 0, i32 0
  %2969 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str283.c, i8* %2968, i64 13)
  %2970 = getelementptr %TestConfig, %TestConfig* %2660, i32 0, i32 0
  %2971 = load %nyx_string*, %nyx_string** %2970
  %2972 = call %nyx_string* @nyx_string_concat(%nyx_string* %2969, %nyx_string* %2971)
  %2973 = getelementptr [2 x i8], [2 x i8]* @.str284, i32 0, i32 0
  %2974 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str284.c, i8* %2973, i64 1)
  %2975 = call %nyx_string* @nyx_string_concat(%nyx_string* %2972, %nyx_string* %2974)
  %2976 = call i8* @nyx_string_to_cstr(%nyx_string* %2975)
  call void @nyx_print_string(i8* %2976)
  ret i64 0
else561:
  br label %merge562
merge562:
  %2977 = getelementptr [9 x i8], [9 x i8]* @.str285, i32 0, i32 0
  %2978 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str285.c, i8* %2977, i64 8)
  %2979 = load { i64, i8* }*, { i64, i8* }** %2923
  %2980 = call i64 @nyx_array_length({ i64, i8* }* %2979)
  %2981 = call %nyx_string* @nyx_string_from_int(i64 %2980)
  %2982 = call %nyx_string* @nyx_string_concat(%nyx_string* %2978, %nyx_string* %2981)
  %2983 = getelementptr [14 x i8], [14 x i8]* @.str286, i32 0, i32 0
  %2984 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str286.c, i8* %2983, i64 13)
  %2985 = call %nyx_string* @nyx_string_concat(%nyx_string* %2982, %nyx_string* %2984)
  %2986 = call i8* @nyx_string_to_cstr(%nyx_string* %2985)
  call void @nyx_print_string(i8* %2986)
  %2987 = getelementptr %TestConfig, %TestConfig* %2660, i32 0, i32 2
  %2988 = load %nyx_string*, %nyx_string** %2987
  %2989 = getelementptr [1 x i8], [1 x i8]* @.str287, i32 0, i32 0
  %2990 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str287.c, i8* %2989, i64 0)
  %2991 = call i1 @nyx_string_equals(%nyx_string* %2988, %nyx_string* %2990)
  %2992 = xor i1 %2991, true
  br i1 %2992, label %then566, label %else567
then566:
  %2993 = getelementptr [12 x i8], [12 x i8]* @.str288, i32 0, i32 0
  %2994 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str288.c, i8* %2993, i64 11)
  %2995 = getelementptr %TestConfig, %TestConfig* %2660, i32 0, i32 2
  %2996 = load %nyx_string*, %nyx_string** %2995
  %2997 = call %nyx_string* @nyx_string_concat(%nyx_string* %2994, %nyx_string* %2996)
  %2998 = getelementptr [2 x i8], [2 x i8]* @.str289, i32 0, i32 0
  %2999 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str289.c, i8* %2998, i64 1)
  %3000 = call %nyx_string* @nyx_string_concat(%nyx_string* %2997, %nyx_string* %2999)
  %3001 = call i8* @nyx_string_to_cstr(%nyx_string* %3000)
  call void @nyx_print_string(i8* %3001)
  br label %merge568
else567:
  br label %merge568
merge568:
  %3002 = getelementptr [1 x i8], [1 x i8]* @.str290, i32 0, i32 0
  %3003 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str290.c, i8* %3002, i64 0)
  %3004 = call i8* @nyx_string_to_cstr(%nyx_string* %3003)
  call void @nyx_print_string(i8* %3004)
  %3005 = call { i64, i8* }* @nyx_array_new_ptr()
  %3006 = alloca { i64, i8* }*
  store { i64, i8* }* %3005, { i64, i8* }** %3006
  %3007 = call { i64, i8* }* @nyx_array_new_ptr()
  %3008 = alloca { i64, i8* }*
  store { i64, i8* }* %3007, { i64, i8* }** %3008
  %3009 = call { i64, i8* }* @nyx_array_new_ptr()
  %3010 = alloca { i64, i8* }*
  store { i64, i8* }* %3009, { i64, i8* }** %3010
  %3011 = alloca i64
  store i64 0, i64* %3011
  %3012 = alloca i64
  store i64 0, i64* %3012
  %3013 = alloca i64
  store i64 0, i64* %3013
  %3014 = call i8* @llvm.stacksave()
  br label %while_cond569
while_cond569:
  %3015 = load i64, i64* %3013
  %3016 = load { i64, i8* }*, { i64, i8* }** %2923
  %3017 = call i64 @nyx_array_length({ i64, i8* }* %3016)
  %3018 = icmp slt i64 %3015, %3017
  br i1 %3018, label %while_body570, label %while_end571
while_body570:
  call void @llvm.stackrestore(i8* %3014)
  %3019 = load { i64, i8* }*, { i64, i8* }** %2923
  %3020 = load i64, i64* %3013
  %3021 = call i64 @nyx_array_get_checked({ i64, i8* }* %3019, i64 %3020, i64 2)
  %3022 = inttoptr i64 %3021 to %nyx_string*
  %3023 = alloca %nyx_string*
  store %nyx_string* %3022, %nyx_string** %3023
  %3024 = load %nyx_string*, %nyx_string** %3023
  %3025 = call i1 @file_has_test_blocks(%nyx_string* %3024)
  %3026 = xor i1 %3025, true
  br i1 %3026, label %then572, label %else573
then572:
  %3027 = load i64, i64* %3013
  %3028 = add i64 %3027, 1
  store i64 %3028, i64* %3013
  br label %merge574
else573:
  %3029 = load %nyx_string*, %nyx_string** %3023
  %3030 = load %TestConfig, %TestConfig* %2660
  %3031 = load %nyx_string*, %nyx_string** %2874
  %3032 = load i64, i64* %3013
  %3033 = call %TestResult @compile_and_run(%nyx_string* %3029, %TestConfig %3030, %nyx_string* %3031, i64 %3032)
  %3034 = alloca %TestResult
  store %TestResult %3033, %TestResult* %3034
  %3035 = load { i64, i8* }*, { i64, i8* }** %3006
  %3036 = load %TestResult, %TestResult* %3034
  %3037 = getelementptr %TestResult, %TestResult* null, i32 1
  %3038 = ptrtoint %TestResult* %3037 to i64
  %3039 = call i8* @GC_malloc(i64 %3038)
  %3040 = bitcast i8* %3039 to %TestResult*
  store %TestResult %3036, %TestResult* %3040
  %3041 = ptrtoint %TestResult* %3040 to i64
  call void @nyx_array_push({ i64, i8* }* %3035, i64 %3041)
  %3042 = load { i64, i8* }*, { i64, i8* }** %3008
  %3043 = load %nyx_string*, %nyx_string** %3023
  %3044 = ptrtoint %nyx_string* %3043 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %3042, i64 %3044, i64 2)
  %3045 = load { i64, i8* }*, { i64, i8* }** %3010
  %3046 = load i64, i64* %3013
  %3047 = call %nyx_string* @nyx_string_from_int(i64 %3046)
  %3048 = ptrtoint %nyx_string* %3047 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %3045, i64 %3048, i64 2)
  %3049 = load i64, i64* %3011
  %3050 = getelementptr %TestResult, %TestResult* %3034, i32 0, i32 1
  %3051 = load i64, i64* %3050
  %3052 = add i64 %3049, %3051
  store i64 %3052, i64* %3011
  %3053 = load i64, i64* %3012
  %3054 = getelementptr %TestResult, %TestResult* %3034, i32 0, i32 2
  %3055 = load i64, i64* %3054
  %3056 = add i64 %3053, %3055
  store i64 %3056, i64* %3012
  %3057 = load %TestResult, %TestResult* %3034
  %3058 = getelementptr %TestConfig, %TestConfig* %2660, i32 0, i32 3
  %3059 = load i1, i1* %3058
  %3060 = call i64 @print_result(%TestResult %3057, i1 %3059)
  %3061 = load i64, i64* %3013
  %3062 = add i64 %3061, 1
  store i64 %3062, i64* %3013
  br label %merge574
merge574:
  br label %while_cond569
while_end571:
  %3063 = load { i64, i8* }*, { i64, i8* }** %3006
  %3064 = call i64 @nyx_array_length({ i64, i8* }* %3063)
  %3065 = icmp eq i64 %3064, 0
  br i1 %3065, label %then575, label %else576
then575:
  %3066 = getelementptr [35 x i8], [35 x i8]* @.str291, i32 0, i32 0
  %3067 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str291.c, i8* %3066, i64 34)
  %3068 = call i8* @nyx_string_to_cstr(%nyx_string* %3067)
  call void @nyx_print_string(i8* %3068)
  %3069 = load %nyx_string*, %nyx_string** %2874
  %3070 = getelementptr [1 x i8], [1 x i8]* @.str292, i32 0, i32 0
  %3071 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str292.c, i8* %3070, i64 0)
  %3072 = call i1 @nyx_string_equals(%nyx_string* %3069, %nyx_string* %3071)
  %3073 = xor i1 %3072, true
  br i1 %3073, label %then578, label %else579
then578:
  %3074 = getelementptr [8 x i8], [8 x i8]* @.str293, i32 0, i32 0
  %3075 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str293.c, i8* %3074, i64 7)
  %3076 = load %nyx_string*, %nyx_string** %2874
  %3077 = call %nyx_string* @nyx_string_concat(%nyx_string* %3075, %nyx_string* %3076)
  %3078 = call i8* @nyx_string_to_cstr(%nyx_string* %3077)
  %3079 = call %nyx_string* @nyx_exec(i8* %3078)
  br label %merge580
else579:
  br label %merge580
merge580:
  ret i64 0
else576:
  br label %merge577
merge577:
  %3080 = load { i64, i8* }*, { i64, i8* }** %3006
  %3081 = load i64, i64* %3011
  %3082 = load i64, i64* %3012
  %3083 = call i64 @print_summary({ i64, i8* }* %3080, i64 %3081, i64 %3082)
  %3084 = getelementptr %TestConfig, %TestConfig* %2660, i32 0, i32 5
  %3085 = load i1, i1* %3084
  br i1 %3085, label %then581, label %else582
then581:
  %3086 = load %nyx_string*, %nyx_string** %2874
  %3087 = load { i64, i8* }*, { i64, i8* }** %3008
  %3088 = load { i64, i8* }*, { i64, i8* }** %3010
  %3089 = load %nyx_string*, %nyx_string** %2871
  %3090 = getelementptr %TestConfig, %TestConfig* %2660, i32 0, i32 6
  %3091 = load i1, i1* %3090
  %3092 = call i64 @cov_report(%nyx_string* %3086, { i64, i8* }* %3087, { i64, i8* }* %3088, %nyx_string* %3089, i1 %3091)
  %3093 = getelementptr [8 x i8], [8 x i8]* @.str294, i32 0, i32 0
  %3094 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str294.c, i8* %3093, i64 7)
  %3095 = load %nyx_string*, %nyx_string** %2874
  %3096 = call %nyx_string* @nyx_string_concat(%nyx_string* %3094, %nyx_string* %3095)
  %3097 = call i8* @nyx_string_to_cstr(%nyx_string* %3096)
  %3098 = call %nyx_string* @nyx_exec(i8* %3097)
  br label %merge583
else582:
  br label %merge583
merge583:
  %3099 = alloca i64
  store i64 0, i64* %3099
  %3100 = alloca i64
  store i64 0, i64* %3100
  %3101 = call i8* @llvm.stacksave()
  br label %while_cond584
while_cond584:
  %3102 = load i64, i64* %3100
  %3103 = load { i64, i8* }*, { i64, i8* }** %3006
  %3104 = call i64 @nyx_array_length({ i64, i8* }* %3103)
  %3105 = icmp slt i64 %3102, %3104
  br i1 %3105, label %while_body585, label %while_end586
while_body585:
  call void @llvm.stackrestore(i8* %3101)
  %3106 = load { i64, i8* }*, { i64, i8* }** %3006
  %3107 = load i64, i64* %3100
  %3108 = call i64 @nyx_array_get({ i64, i8* }* %3106, i64 %3107)
  %3109 = inttoptr i64 %3108 to %TestResult*
  %3110 = load %TestResult, %TestResult* %3109
  %3111 = alloca %TestResult
  store %TestResult %3110, %TestResult* %3111
  %3112 = getelementptr %TestResult, %TestResult* %3111, i32 0, i32 4
  %3113 = load i1, i1* %3112
  %3114 = xor i1 %3113, true
  br i1 %3114, label %then587, label %else588
then587:
  %3115 = load i64, i64* %3099
  %3116 = add i64 %3115, 1
  store i64 %3116, i64* %3099
  br label %merge589
else588:
  br label %merge589
merge589:
  %3117 = load i64, i64* %3100
  %3118 = add i64 %3117, 1
  store i64 %3118, i64* %3100
  br label %while_cond584
while_end586:
  %3119 = alloca i1
  store i1 true, i1* %3119
  %3120 = load i64, i64* %3012
  %3121 = icmp sgt i64 %3120, 0
  br i1 %3121, label %sc_or_end591, label %sc_or_rhs590
sc_or_rhs590:
  %3122 = load i64, i64* %3099
  %3123 = icmp sgt i64 %3122, 0
  store i1 %3123, i1* %3119
  br label %sc_or_end591
sc_or_end591:
  %3124 = load i1, i1* %3119
  br i1 %3124, label %then592, label %else593
then592:
  ret i64 1
else593:
  br label %merge594
merge594:
  ret i64 0
}

; Inicialización de variables globales (llamada automática vía ctor)
define void @__nyx_init_globals() {
entry:
  %3125 = sub i64 0, 9223372036854775808
  store i64 %3125, i64* @INT_MIN
  ret void
}

@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @__nyx_init_globals, i8* null }]

attributes #0 = { returns_twice }

