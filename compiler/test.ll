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
@.str41 = private unnamed_addr constant [31 x i8] c"mktemp -d /tmp/nyx_test_XXXXXX\00"
@.str41.c = internal global %nyx_string* null
@.str42 = private unnamed_addr constant [9 x i8] c"/out.txt\00"
@.str42.c = internal global %nyx_string* null
@.str43 = private unnamed_addr constant [5 x i8] c"/bin\00"
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
@.str72 = private unnamed_addr constant [42 x i8] c"SRC=\22$(mktemp /tmp/nyx_test_src_XXXXXX)\22\0a\00"
@.str72.c = internal global %nyx_string* null
@.str73 = private unnamed_addr constant [17 x i8] c"SRCNX=\22$SRC.nx\22\0a\00"
@.str73.c = internal global %nyx_string* null
@.str74 = private unnamed_addr constant [31 x i8] c"trap 'rm -f \22$SRC\22 \22$SRCNX\22 \22$\00"
@.str74.c = internal global %nyx_string* null
@.str75 = private unnamed_addr constant [17 x i8] c"{SRC}.ll\22' EXIT\0a\00"
@.str75.c = internal global %nyx_string* null
@.str76 = private unnamed_addr constant [5 x i8] c"cp \22\00"
@.str76.c = internal global %nyx_string* null
@.str77 = private unnamed_addr constant [2 x i8] c"/\00"
@.str77.c = internal global %nyx_string* null
@.str78 = private unnamed_addr constant [12 x i8] c"\22 \22$SRCNX\22\0a\00"
@.str78.c = internal global %nyx_string* null
@.str79 = private unnamed_addr constant [5 x i8] c"cd \22\00"
@.str79.c = internal global %nyx_string* null
@.str80 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str80.c = internal global %nyx_string* null
@.str81 = private unnamed_addr constant [51 x i8] c"if command -v flock >/dev/null 2>&1; then exec 9>\22\00"
@.str81.c = internal global %nyx_string* null
@.str82 = private unnamed_addr constant [35 x i8] c"/.toolchain.lock\22; flock -s 9; fi\0a\00"
@.str82.c = internal global %nyx_string* null
@.str83 = private unnamed_addr constant [43 x i8] c"env -u NYX_SKIP_SEMANTIC NYX_PROJECT_DIR=\22\00"
@.str83.c = internal global %nyx_string* null
@.str84 = private unnamed_addr constant [37 x i8] c"\22 NYX_SRC=\22$SRCNX\22 NYX_SRC_DISPLAY=\22\00"
@.str84.c = internal global %nyx_string* null
@.str85 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str85.c = internal global %nyx_string* null
@.str86 = private unnamed_addr constant [20 x i8] c" ./nyx_bootstrap > \00"
@.str86.c = internal global %nyx_string* null
@.str87 = private unnamed_addr constant [7 x i8] c" 2>&1\0a\00"
@.str87.c = internal global %nyx_string* null
@.str88 = private unnamed_addr constant [7 x i8] c"clang \00"
@.str88.c = internal global %nyx_string* null
@.str89 = private unnamed_addr constant [40 x i8] c"-Wno-deprecated-declarations \22$SRC.ll\22 \00"
@.str89.c = internal global %nyx_string* null
@.str90 = private unnamed_addr constant [44 x i8] c"-lgc -lpthread -ldl -lm -lssl -lcrypto -lz \00"
@.str90.c = internal global %nyx_string* null
@.str91 = private unnamed_addr constant [4 x i8] c"-o \00"
@.str91.c = internal global %nyx_string* null
@.str92 = private unnamed_addr constant [6 x i8] c" 2>> \00"
@.str92.c = internal global %nyx_string* null
@.str93 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str93.c = internal global %nyx_string* null
@.str94 = private unnamed_addr constant [57 x i8] c"if command -v flock >/dev/null 2>&1; then exec 9>&-; fi\0a\00"
@.str94.c = internal global %nyx_string* null
@.str95 = private unnamed_addr constant [9 x i8] c"timeout \00"
@.str95.c = internal global %nyx_string* null
@.str96 = private unnamed_addr constant [2 x i8] c" \00"
@.str96.c = internal global %nyx_string* null
@.str97 = private unnamed_addr constant [4 x i8] c" > \00"
@.str97.c = internal global %nyx_string* null
@.str98 = private unnamed_addr constant [7 x i8] c" 2>&1\0a\00"
@.str98.c = internal global %nyx_string* null
@.str99 = private unnamed_addr constant [14 x i8] c"EXIT_CODE=$?\0a\00"
@.str99.c = internal global %nyx_string* null
@.str100 = private unnamed_addr constant [7 x i8] c"rm -f \00"
@.str100.c = internal global %nyx_string* null
@.str101 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str101.c = internal global %nyx_string* null
@.str102 = private unnamed_addr constant [17 x i8] c"exit $EXIT_CODE\0a\00"
@.str102.c = internal global %nyx_string* null
@.str103 = private unnamed_addr constant [8 x i8] c"/run.sh\00"
@.str103.c = internal global %nyx_string* null
@.str104 = private unnamed_addr constant [6 x i8] c"bash \00"
@.str104.c = internal global %nyx_string* null
@.str105 = private unnamed_addr constant [1 x i8] c"\00"
@.str105.c = internal global %nyx_string* null
@.str106 = private unnamed_addr constant [8 x i8] c"rm -rf \00"
@.str106.c = internal global %nyx_string* null
@.str107 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str107.c = internal global %nyx_string* null
@.str108 = private unnamed_addr constant [6 x i8] c"PASS:\00"
@.str108.c = internal global %nyx_string* null
@.str109 = private unnamed_addr constant [6 x i8] c"FAIL:\00"
@.str109.c = internal global %nyx_string* null
@.str110 = private unnamed_addr constant [9 x i8] c"  PASS  \00"
@.str110.c = internal global %nyx_string* null
@.str111 = private unnamed_addr constant [3 x i8] c" (\00"
@.str111.c = internal global %nyx_string* null
@.str112 = private unnamed_addr constant [8 x i8] c" tests)\00"
@.str112.c = internal global %nyx_string* null
@.str113 = private unnamed_addr constant [9 x i8] c"  FAIL  \00"
@.str113.c = internal global %nyx_string* null
@.str114 = private unnamed_addr constant [3 x i8] c" (\00"
@.str114.c = internal global %nyx_string* null
@.str115 = private unnamed_addr constant [10 x i8] c" passed, \00"
@.str115.c = internal global %nyx_string* null
@.str116 = private unnamed_addr constant [9 x i8] c" failed)\00"
@.str116.c = internal global %nyx_string* null
@.str117 = private unnamed_addr constant [1 x i8] c"\00"
@.str117.c = internal global %nyx_string* null
@.str118 = private unnamed_addr constant [36 x i8] c"===================================\00"
@.str118.c = internal global %nyx_string* null
@.str119 = private unnamed_addr constant [11 x i8] c"  Files:  \00"
@.str119.c = internal global %nyx_string* null
@.str120 = private unnamed_addr constant [10 x i8] c" passed, \00"
@.str120.c = internal global %nyx_string* null
@.str121 = private unnamed_addr constant [10 x i8] c" failed (\00"
@.str121.c = internal global %nyx_string* null
@.str122 = private unnamed_addr constant [8 x i8] c" total)\00"
@.str122.c = internal global %nyx_string* null
@.str123 = private unnamed_addr constant [11 x i8] c"  Tests:  \00"
@.str123.c = internal global %nyx_string* null
@.str124 = private unnamed_addr constant [10 x i8] c" passed, \00"
@.str124.c = internal global %nyx_string* null
@.str125 = private unnamed_addr constant [10 x i8] c" failed (\00"
@.str125.c = internal global %nyx_string* null
@.str126 = private unnamed_addr constant [8 x i8] c" total)\00"
@.str126.c = internal global %nyx_string* null
@.str127 = private unnamed_addr constant [27 x i8] c"  Status: ALL TESTS PASSED\00"
@.str127.c = internal global %nyx_string* null
@.str128 = private unnamed_addr constant [28 x i8] c"  Status: SOME TESTS FAILED\00"
@.str128.c = internal global %nyx_string* null
@.str129 = private unnamed_addr constant [36 x i8] c"===================================\00"
@.str129.c = internal global %nyx_string* null
@.str130 = private unnamed_addr constant [28 x i8] c"clang --version 2>/dev/null\00"
@.str130.c = internal global %nyx_string* null
@.str131 = private unnamed_addr constant [9 x i8] c"version \00"
@.str131.c = internal global %nyx_string* null
@.str132 = private unnamed_addr constant [1 x i8] c"\00"
@.str132.c = internal global %nyx_string* null
@.str133 = private unnamed_addr constant [1 x i8] c"\00"
@.str133.c = internal global %nyx_string* null
@.str134 = private unnamed_addr constant [10 x i8] c"test -s \22\00"
@.str134.c = internal global %nyx_string* null
@.str135 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str135.c = internal global %nyx_string* null
@.str136 = private unnamed_addr constant [1 x i8] c"\00"
@.str136.c = internal global %nyx_string* null
@.str137 = private unnamed_addr constant [26 x i8] c"command -v llvm-profdata-\00"
@.str137.c = internal global %nyx_string* null
@.str138 = private unnamed_addr constant [13 x i8] c" 2>/dev/null\00"
@.str138.c = internal global %nyx_string* null
@.str139 = private unnamed_addr constant [1 x i8] c"\00"
@.str139.c = internal global %nyx_string* null
@.str140 = private unnamed_addr constant [37 x i8] c"command -v llvm-profdata 2>/dev/null\00"
@.str140.c = internal global %nyx_string* null
@.str141 = private unnamed_addr constant [2 x i8] c"0\00"
@.str141.c = internal global %nyx_string* null
@.str142 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str142.c = internal global %nyx_string* null
@.str143 = private unnamed_addr constant [1 x i8] c"\00"
@.str143.c = internal global %nyx_string* null
@.str144 = private unnamed_addr constant [3 x i8] c"  \00"
@.str144.c = internal global %nyx_string* null
@.str145 = private unnamed_addr constant [4 x i8] c"   \00"
@.str145.c = internal global %nyx_string* null
@.str146 = private unnamed_addr constant [2 x i8] c":\00"
@.str146.c = internal global %nyx_string* null
@.str147 = private unnamed_addr constant [2 x i8] c";\00"
@.str147.c = internal global %nyx_string* null
@.str148 = private unnamed_addr constant [1 x i8] c"\00"
@.str148.c = internal global %nyx_string* null
@.str149 = private unnamed_addr constant [14 x i8] c"Block counts:\00"
@.str149.c = internal global %nyx_string* null
@.str150 = private unnamed_addr constant [2 x i8] c"[\00"
@.str150.c = internal global %nyx_string* null
@.str151 = private unnamed_addr constant [2 x i8] c"]\00"
@.str151.c = internal global %nyx_string* null
@.str152 = private unnamed_addr constant [2 x i8] c",\00"
@.str152.c = internal global %nyx_string* null
@.str153 = private unnamed_addr constant [2 x i8] c"1\00"
@.str153.c = internal global %nyx_string* null
@.str154 = private unnamed_addr constant [4 x i8] c"src\00"
@.str154.c = internal global %nyx_string* null
@.str155 = private unnamed_addr constant [50 x i8] c"find src -name '*.nx' 2>/dev/null | LC_ALL=C sort\00"
@.str155.c = internal global %nyx_string* null
@.str156 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str156.c = internal global %nyx_string* null
@.str157 = private unnamed_addr constant [4 x i8] c".nx\00"
@.str157.c = internal global %nyx_string* null
@.str158 = private unnamed_addr constant [9 x i8] c"_test.nx\00"
@.str158.c = internal global %nyx_string* null
@.str159 = private unnamed_addr constant [1 x i8] c"\00"
@.str159.c = internal global %nyx_string* null
@.str160 = private unnamed_addr constant [9 x i8] c"import \22\00"
@.str160.c = internal global %nyx_string* null
@.str161 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str161.c = internal global %nyx_string* null
@.str162 = private unnamed_addr constant [36 x i8] c"\0afn main() -> int {\0a    return 0\0a}\0a\00"
@.str162.c = internal global %nyx_string* null
@.str163 = private unnamed_addr constant [13 x i8] c"/universe.nx\00"
@.str163.c = internal global %nyx_string* null
@.str164 = private unnamed_addr constant [14 x i8] c"/universe.tsv\00"
@.str164.c = internal global %nyx_string* null
@.str165 = private unnamed_addr constant [13 x i8] c"#!/bin/bash\0a\00"
@.str165.c = internal global %nyx_string* null
@.str166 = private unnamed_addr constant [8 x i8] c"SRCNX=\22\00"
@.str166.c = internal global %nyx_string* null
@.str167 = private unnamed_addr constant [19 x i8] c"/universe.src.nx\22\0a\00"
@.str167.c = internal global %nyx_string* null
@.str168 = private unnamed_addr constant [5 x i8] c"cp \22\00"
@.str168.c = internal global %nyx_string* null
@.str169 = private unnamed_addr constant [24 x i8] c"/universe.nx\22 \22$SRCNX\22\0a\00"
@.str169.c = internal global %nyx_string* null
@.str170 = private unnamed_addr constant [5 x i8] c"cd \22\00"
@.str170.c = internal global %nyx_string* null
@.str171 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str171.c = internal global %nyx_string* null
@.str172 = private unnamed_addr constant [43 x i8] c"env -u NYX_SKIP_SEMANTIC NYX_PROJECT_DIR=\22\00"
@.str172.c = internal global %nyx_string* null
@.str173 = private unnamed_addr constant [38 x i8] c"\22 NYX_SRC=\22$SRCNX\22 NYX_COVERAGE_MAP=\22\00"
@.str173.c = internal global %nyx_string* null
@.str174 = private unnamed_addr constant [22 x i8] c"\22 ./nyx_bootstrap > \22\00"
@.str174.c = internal global %nyx_string* null
@.str175 = private unnamed_addr constant [21 x i8] c"/universe.log\22 2>&1\0a\00"
@.str175.c = internal global %nyx_string* null
@.str176 = private unnamed_addr constant [7 x i8] c"RC=$?\0a\00"
@.str176.c = internal global %nyx_string* null
@.str177 = private unnamed_addr constant [17 x i8] c"rm -f \22$SRCNX\22 \22\00"
@.str177.c = internal global %nyx_string* null
@.str178 = private unnamed_addr constant [19 x i8] c"/universe.src.ll\22\0a\00"
@.str178.c = internal global %nyx_string* null
@.str179 = private unnamed_addr constant [10 x i8] c"exit $RC\0a\00"
@.str179.c = internal global %nyx_string* null
@.str180 = private unnamed_addr constant [13 x i8] c"/universe.sh\00"
@.str180.c = internal global %nyx_string* null
@.str181 = private unnamed_addr constant [7 x i8] c"bash \22\00"
@.str181.c = internal global %nyx_string* null
@.str182 = private unnamed_addr constant [14 x i8] c"/universe.sh\22\00"
@.str182.c = internal global %nyx_string* null
@.str183 = private unnamed_addr constant [9 x i8] c"NYX_HOME\00"
@.str183.c = internal global %nyx_string* null
@.str184 = private unnamed_addr constant [4 x i8] c"PWD\00"
@.str184.c = internal global %nyx_string* null
@.str185 = private unnamed_addr constant [1 x i8] c"\00"
@.str185.c = internal global %nyx_string* null
@.str186 = private unnamed_addr constant [36 x i8] c"== Cobertura de funciones (src/) ==\00"
@.str186.c = internal global %nyx_string* null
@.str187 = private unnamed_addr constant [1 x i8] c"\00"
@.str187.c = internal global %nyx_string* null
@.str188 = private unnamed_addr constant [2 x i8] c"/\00"
@.str188.c = internal global %nyx_string* null
@.str189 = private unnamed_addr constant [9 x i8] c".profraw\00"
@.str189.c = internal global %nyx_string* null
@.str190 = private unnamed_addr constant [3 x i8] c" \22\00"
@.str190.c = internal global %nyx_string* null
@.str191 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str191.c = internal global %nyx_string* null
@.str192 = private unnamed_addr constant [2 x i8] c"1\00"
@.str192.c = internal global %nyx_string* null
@.str193 = private unnamed_addr constant [17 x i8] c"/merged.profdata\00"
@.str193.c = internal global %nyx_string* null
@.str194 = private unnamed_addr constant [12 x i8] c" merge -o \22\00"
@.str194.c = internal global %nyx_string* null
@.str195 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str195.c = internal global %nyx_string* null
@.str196 = private unnamed_addr constant [5 x i8] c" > \22\00"
@.str196.c = internal global %nyx_string* null
@.str197 = private unnamed_addr constant [17 x i8] c"/merge.log\22 2>&1\00"
@.str197.c = internal global %nyx_string* null
@.str198 = private unnamed_addr constant [36 x i8] c"  error: llvm-profdata merge fallo:\00"
@.str198.c = internal global %nyx_string* null
@.str199 = private unnamed_addr constant [11 x i8] c"/merge.log\00"
@.str199.c = internal global %nyx_string* null
@.str200 = private unnamed_addr constant [33 x i8] c" show --all-functions --counts \22\00"
@.str200.c = internal global %nyx_string* null
@.str201 = private unnamed_addr constant [6 x i8] c"\22 > \22\00"
@.str201.c = internal global %nyx_string* null
@.str202 = private unnamed_addr constant [16 x i8] c"/show.txt\22 2>&1\00"
@.str202.c = internal global %nyx_string* null
@.str203 = private unnamed_addr constant [10 x i8] c"/show.txt\00"
@.str203.c = internal global %nyx_string* null
@.str204 = private unnamed_addr constant [2 x i8] c"/\00"
@.str204.c = internal global %nyx_string* null
@.str205 = private unnamed_addr constant [5 x i8] c".tsv\00"
@.str205.c = internal global %nyx_string* null
@.str206 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str206.c = internal global %nyx_string* null
@.str207 = private unnamed_addr constant [1 x i8] c"\00"
@.str207.c = internal global %nyx_string* null
@.str208 = private unnamed_addr constant [2 x i8] c"1\00"
@.str208.c = internal global %nyx_string* null
@.str209 = private unnamed_addr constant [5 x i8] c"mono\00"
@.str209.c = internal global %nyx_string* null
@.str210 = private unnamed_addr constant [27 x i8] c"  (no hay modulos en src/)\00"
@.str210.c = internal global %nyx_string* null
@.str211 = private unnamed_addr constant [68 x i8] c"  error: no se pudo listar las funciones de src/ (src/ no compila):\00"
@.str211.c = internal global %nyx_string* null
@.str212 = private unnamed_addr constant [14 x i8] c"/universe.log\00"
@.str212.c = internal global %nyx_string* null
@.str213 = private unnamed_addr constant [14 x i8] c"/universe.log\00"
@.str213.c = internal global %nyx_string* null
@.str214 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str214.c = internal global %nyx_string* null
@.str215 = private unnamed_addr constant [3 x i8] c"fn\00"
@.str215.c = internal global %nyx_string* null
@.str216 = private unnamed_addr constant [7 x i8] c"metodo\00"
@.str216.c = internal global %nyx_string* null
@.str217 = private unnamed_addr constant [6 x i8] c"async\00"
@.str217.c = internal global %nyx_string* null
@.str218 = private unnamed_addr constant [9 x i8] c"generica\00"
@.str218.c = internal global %nyx_string* null
@.str219 = private unnamed_addr constant [5 x i8] c"src/\00"
@.str219.c = internal global %nyx_string* null
@.str220 = private unnamed_addr constant [5 x i8] c"main\00"
@.str220.c = internal global %nyx_string* null
@.str221 = private unnamed_addr constant [3 x i8] c"no\00"
@.str221.c = internal global %nyx_string* null
@.str222 = private unnamed_addr constant [3 x i8] c"si\00"
@.str222.c = internal global %nyx_string* null
@.str223 = private unnamed_addr constant [10 x i8] c"sin_datos\00"
@.str223.c = internal global %nyx_string* null
@.str224 = private unnamed_addr constant [5 x i8] c".nx\09\00"
@.str224.c = internal global %nyx_string* null
@.str225 = private unnamed_addr constant [2 x i8] c"\09\00"
@.str225.c = internal global %nyx_string* null
@.str226 = private unnamed_addr constant [1 x i8] c"\00"
@.str226.c = internal global %nyx_string* null
@.str227 = private unnamed_addr constant [1 x i8] c"\00"
@.str227.c = internal global %nyx_string* null
@.str228 = private unnamed_addr constant [10 x i8] c"sin_datos\00"
@.str228.c = internal global %nyx_string* null
@.str229 = private unnamed_addr constant [2 x i8] c"0\00"
@.str229.c = internal global %nyx_string* null
@.str230 = private unnamed_addr constant [3 x i8] c"si\00"
@.str230.c = internal global %nyx_string* null
@.str231 = private unnamed_addr constant [2 x i8] c"1\00"
@.str231.c = internal global %nyx_string* null
@.str232 = private unnamed_addr constant [5 x i8] c"    \00"
@.str232.c = internal global %nyx_string* null
@.str233 = private unnamed_addr constant [2 x i8] c":\00"
@.str233.c = internal global %nyx_string* null
@.str234 = private unnamed_addr constant [2 x i8] c" \00"
@.str234.c = internal global %nyx_string* null
@.str235 = private unnamed_addr constant [4 x i8] c"FN:\00"
@.str235.c = internal global %nyx_string* null
@.str236 = private unnamed_addr constant [2 x i8] c",\00"
@.str236.c = internal global %nyx_string* null
@.str237 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str237.c = internal global %nyx_string* null
@.str238 = private unnamed_addr constant [6 x i8] c"FNDA:\00"
@.str238.c = internal global %nyx_string* null
@.str239 = private unnamed_addr constant [3 x i8] c"  \00"
@.str239.c = internal global %nyx_string* null
@.str240 = private unnamed_addr constant [3 x i8] c": \00"
@.str240.c = internal global %nyx_string* null
@.str241 = private unnamed_addr constant [2 x i8] c"/\00"
@.str241.c = internal global %nyx_string* null
@.str242 = private unnamed_addr constant [10 x i8] c" llamadas\00"
@.str242.c = internal global %nyx_string* null
@.str243 = private unnamed_addr constant [29 x i8] c" (ninguna prueba lo importa)\00"
@.str243.c = internal global %nyx_string* null
@.str244 = private unnamed_addr constant [3 x i8] c" (\00"
@.str244.c = internal global %nyx_string* null
@.str245 = private unnamed_addr constant [38 x i8] c" sin datos: su prueba no dejo perfil)\00"
@.str245.c = internal global %nyx_string* null
@.str246 = private unnamed_addr constant [4 x i8] c"SF:\00"
@.str246.c = internal global %nyx_string* null
@.str247 = private unnamed_addr constant [5 x i8] c"FNF:\00"
@.str247.c = internal global %nyx_string* null
@.str248 = private unnamed_addr constant [6 x i8] c"\0aFNH:\00"
@.str248.c = internal global %nyx_string* null
@.str249 = private unnamed_addr constant [16 x i8] c"\0aend_of_record\0a\00"
@.str249.c = internal global %nyx_string* null
@.str250 = private unnamed_addr constant [70 x i8] c"  Sin perfil (timeout, crash o no compilo; sus funciones no cuentan):\00"
@.str250.c = internal global %nyx_string* null
@.str251 = private unnamed_addr constant [5 x i8] c"    \00"
@.str251.c = internal global %nyx_string* null
@.str252 = private unnamed_addr constant [10 x i8] c"  Total: \00"
@.str252.c = internal global %nyx_string* null
@.str253 = private unnamed_addr constant [2 x i8] c"/\00"
@.str253.c = internal global %nyx_string* null
@.str254 = private unnamed_addr constant [20 x i8] c" funciones llamadas\00"
@.str254.c = internal global %nyx_string* null
@.str255 = private unnamed_addr constant [11 x i8] c"mkdir -p \22\00"
@.str255.c = internal global %nyx_string* null
@.str256 = private unnamed_addr constant [9 x i8] c"/target\22\00"
@.str256.c = internal global %nyx_string* null
@.str257 = private unnamed_addr constant [22 x i8] c"/target/coverage.lcov\00"
@.str257.c = internal global %nyx_string* null
@.str258 = private unnamed_addr constant [29 x i8] c"  lcov: target/coverage.lcov\00"
@.str258.c = internal global %nyx_string* null
@.str259 = private unnamed_addr constant [115 x i8] c"  Opciones validas: --filter <string>, --verbose (-v), --timeout <seconds>, --release, --coverage, --coverage=lcov\00"
@.str259.c = internal global %nyx_string* null
@.str260 = private unnamed_addr constant [24 x i8] c"=== Nyx Test Runner ===\00"
@.str260.c = internal global %nyx_string* null
@.str261 = private unnamed_addr constant [1 x i8] c"\00"
@.str261.c = internal global %nyx_string* null
@.str262 = private unnamed_addr constant [9 x i8] c"--filter\00"
@.str262.c = internal global %nyx_string* null
@.str263 = private unnamed_addr constant [10 x i8] c"--verbose\00"
@.str263.c = internal global %nyx_string* null
@.str264 = private unnamed_addr constant [3 x i8] c"-v\00"
@.str264.c = internal global %nyx_string* null
@.str265 = private unnamed_addr constant [10 x i8] c"--timeout\00"
@.str265.c = internal global %nyx_string* null
@.str266 = private unnamed_addr constant [10 x i8] c"--release\00"
@.str266.c = internal global %nyx_string* null
@.str267 = private unnamed_addr constant [11 x i8] c"--coverage\00"
@.str267.c = internal global %nyx_string* null
@.str268 = private unnamed_addr constant [16 x i8] c"--coverage=lcov\00"
@.str268.c = internal global %nyx_string* null
@.str269 = private unnamed_addr constant [8 x i8] c"--cover\00"
@.str269.c = internal global %nyx_string* null
@.str270 = private unnamed_addr constant [12 x i8] c"--coverage=\00"
@.str270.c = internal global %nyx_string* null
@.str271 = private unnamed_addr constant [24 x i8] c"error: unknown option: \00"
@.str271.c = internal global %nyx_string* null
@.str272 = private unnamed_addr constant [106 x i8] c"  La cobertura se pide con --coverage (informe de texto) o --coverage=lcov (ademas target/coverage.lcov).\00"
@.str272.c = internal global %nyx_string* null
@.str273 = private unnamed_addr constant [9 x i8] c"--target\00"
@.str273.c = internal global %nyx_string* null
@.str274 = private unnamed_addr constant [10 x i8] c"--target=\00"
@.str274.c = internal global %nyx_string* null
@.str275 = private unnamed_addr constant [2 x i8] c" \00"
@.str275.c = internal global %nyx_string* null
@.str276 = private unnamed_addr constant [4 x i8] c".nx\00"
@.str276.c = internal global %nyx_string* null
@.str277 = private unnamed_addr constant [2 x i8] c"-\00"
@.str277.c = internal global %nyx_string* null
@.str278 = private unnamed_addr constant [1 x i8] c"\00"
@.str278.c = internal global %nyx_string* null
@.str279 = private unnamed_addr constant [47 x i8] c"error: --coverage solo mide el target nativo: \00"
@.str279.c = internal global %nyx_string* null
@.str280 = private unnamed_addr constant [58 x i8] c" no tiene perfiles de LLVM (wasm y Windows quedan fuera).\00"
@.str280.c = internal global %nyx_string* null
@.str281 = private unnamed_addr constant [24 x i8] c"error: unknown option: \00"
@.str281.c = internal global %nyx_string* null
@.str282 = private unnamed_addr constant [1 x i8] c"\00"
@.str282.c = internal global %nyx_string* null
@.str283 = private unnamed_addr constant [1 x i8] c"\00"
@.str283.c = internal global %nyx_string* null
@.str284 = private unnamed_addr constant [1 x i8] c"\00"
@.str284.c = internal global %nyx_string* null
@.str285 = private unnamed_addr constant [5 x i8] c"llvm\00"
@.str285.c = internal global %nyx_string* null
@.str286 = private unnamed_addr constant [1 x i8] c"\00"
@.str286.c = internal global %nyx_string* null
@.str287 = private unnamed_addr constant [6 x i8] c"llvm-\00"
@.str287.c = internal global %nyx_string* null
@.str288 = private unnamed_addr constant [101 x i8] c"error: --coverage necesita llvm-profdata (de la misma version mayor que clang) y no esta en el PATH.\00"
@.str288.c = internal global %nyx_string* null
@.str289 = private unnamed_addr constant [35 x i8] c"  Debian/Ubuntu: sudo apt install \00"
@.str289.c = internal global %nyx_string* null
@.str290 = private unnamed_addr constant [82 x i8] c"  macOS (Homebrew): brew install llvm, y agrega $(brew --prefix llvm)/bin al PATH\00"
@.str290.c = internal global %nyx_string* null
@.str291 = private unnamed_addr constant [82 x i8] c"  Tambien hace falta el runtime de perfiles de compiler-rt (libclang_rt.profile).\00"
@.str291.c = internal global %nyx_string* null
@.str292 = private unnamed_addr constant [30 x i8] c"mktemp -d /tmp/nyx_cov_XXXXXX\00"
@.str292.c = internal global %nyx_string* null
@.str293 = private unnamed_addr constant [1 x i8] c"\00"
@.str293.c = internal global %nyx_string* null
@.str294 = private unnamed_addr constant [55 x i8] c"error: --coverage no pudo crear un directorio temporal\00"
@.str294.c = internal global %nyx_string* null
@.str295 = private unnamed_addr constant [1 x i8] c"\00"
@.str295.c = internal global %nyx_string* null
@.str296 = private unnamed_addr constant [24 x i8] c"error: file not found: \00"
@.str296.c = internal global %nyx_string* null
@.str297 = private unnamed_addr constant [23 x i8] c"  No test files found.\00"
@.str297.c = internal global %nyx_string* null
@.str298 = private unnamed_addr constant [1 x i8] c"\00"
@.str298.c = internal global %nyx_string* null
@.str299 = private unnamed_addr constant [12 x i8] c"  Filter: \22\00"
@.str299.c = internal global %nyx_string* null
@.str300 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str300.c = internal global %nyx_string* null
@.str301 = private unnamed_addr constant [14 x i8] c"  Looked in: \00"
@.str301.c = internal global %nyx_string* null
@.str302 = private unnamed_addr constant [2 x i8] c"/\00"
@.str302.c = internal global %nyx_string* null
@.str303 = private unnamed_addr constant [9 x i8] c"  Found \00"
@.str303.c = internal global %nyx_string* null
@.str304 = private unnamed_addr constant [14 x i8] c" test file(s)\00"
@.str304.c = internal global %nyx_string* null
@.str305 = private unnamed_addr constant [1 x i8] c"\00"
@.str305.c = internal global %nyx_string* null
@.str306 = private unnamed_addr constant [12 x i8] c"  Filter: \22\00"
@.str306.c = internal global %nyx_string* null
@.str307 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str307.c = internal global %nyx_string* null
@.str308 = private unnamed_addr constant [1 x i8] c"\00"
@.str308.c = internal global %nyx_string* null
@.str309 = private unnamed_addr constant [35 x i8] c"  No files with test blocks found.\00"
@.str309.c = internal global %nyx_string* null
@.str310 = private unnamed_addr constant [1 x i8] c"\00"
@.str310.c = internal global %nyx_string* null
@.str311 = private unnamed_addr constant [8 x i8] c"rm -rf \00"
@.str311.c = internal global %nyx_string* null
@.str312 = private unnamed_addr constant [8 x i8] c"rm -rf \00"
@.str312.c = internal global %nyx_string* null
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
  %992 = getelementptr [31 x i8], [31 x i8]* @.str41, i32 0, i32 0
  %993 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str41.c, i8* %992, i64 30)
  %994 = call i8* @nyx_string_to_cstr(%nyx_string* %993)
  %995 = call %nyx_string* @nyx_exec(i8* %994)
  %996 = call %nyx_string* @nyx_string_trim(%nyx_string* %995)
  %997 = alloca %nyx_string*
  store %nyx_string* %996, %nyx_string** %997
  %998 = load %nyx_string*, %nyx_string** %997
  %999 = getelementptr [9 x i8], [9 x i8]* @.str42, i32 0, i32 0
  %1000 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str42.c, i8* %999, i64 8)
  %1001 = call %nyx_string* @nyx_string_concat(%nyx_string* %998, %nyx_string* %1000)
  %1002 = alloca %nyx_string*
  store %nyx_string* %1001, %nyx_string** %1002
  %1003 = load %nyx_string*, %nyx_string** %997
  %1004 = getelementptr [5 x i8], [5 x i8]* @.str43, i32 0, i32 0
  %1005 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str43.c, i8* %1004, i64 4)
  %1006 = call %nyx_string* @nyx_string_concat(%nyx_string* %1003, %nyx_string* %1005)
  %1007 = alloca %nyx_string*
  store %nyx_string* %1006, %nyx_string** %1007
  %1008 = getelementptr [1 x i8], [1 x i8]* @.str44, i32 0, i32 0
  %1009 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str44.c, i8* %1008, i64 0)
  %1010 = alloca %nyx_string*
  store %nyx_string* %1009, %nyx_string** %1010
  %1011 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 7
  %1012 = load i1, i1* %1011
  br i1 %1012, label %then274, label %else275
then274:
  %1013 = getelementptr [5 x i8], [5 x i8]* @.str45, i32 0, i32 0
  %1014 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str45.c, i8* %1013, i64 4)
  store %nyx_string* %1014, %nyx_string** %1010
  br label %merge276
else275:
  br label %merge276
merge276:
  %1015 = getelementptr [62 x i8], [62 x i8]* @.str46, i32 0, i32 0
  %1016 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str46.c, i8* %1015, i64 61)
  %1017 = getelementptr [54 x i8], [54 x i8]* @.str47, i32 0, i32 0
  %1018 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str47.c, i8* %1017, i64 53)
  %1019 = call %nyx_string* @nyx_string_concat(%nyx_string* %1016, %nyx_string* %1018)
  %1020 = getelementptr [48 x i8], [48 x i8]* @.str48, i32 0, i32 0
  %1021 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str48.c, i8* %1020, i64 47)
  %1022 = call %nyx_string* @nyx_string_concat(%nyx_string* %1019, %nyx_string* %1021)
  %1023 = getelementptr [47 x i8], [47 x i8]* @.str49, i32 0, i32 0
  %1024 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str49.c, i8* %1023, i64 46)
  %1025 = call %nyx_string* @nyx_string_concat(%nyx_string* %1022, %nyx_string* %1024)
  %1026 = getelementptr [67 x i8], [67 x i8]* @.str50, i32 0, i32 0
  %1027 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str50.c, i8* %1026, i64 66)
  %1028 = call %nyx_string* @nyx_string_concat(%nyx_string* %1025, %nyx_string* %1027)
  %1029 = getelementptr [51 x i8], [51 x i8]* @.str51, i32 0, i32 0
  %1030 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str51.c, i8* %1029, i64 50)
  %1031 = call %nyx_string* @nyx_string_concat(%nyx_string* %1028, %nyx_string* %1030)
  %1032 = getelementptr [91 x i8], [91 x i8]* @.str52, i32 0, i32 0
  %1033 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str52.c, i8* %1032, i64 90)
  %1034 = call %nyx_string* @nyx_string_concat(%nyx_string* %1031, %nyx_string* %1033)
  %1035 = getelementptr [23 x i8], [23 x i8]* @.str53, i32 0, i32 0
  %1036 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str53.c, i8* %1035, i64 22)
  %1037 = call %nyx_string* @nyx_string_concat(%nyx_string* %1034, %nyx_string* %1036)
  %1038 = alloca %nyx_string*
  store %nyx_string* %1037, %nyx_string** %1038
  %1039 = getelementptr [15 x i8], [15 x i8]* @.str54, i32 0, i32 0
  %1040 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str54.c, i8* %1039, i64 14)
  %1041 = call i8* @nyx_string_to_cstr(%nyx_string* %1040)
  %1042 = call %nyx_string* @nyx_getenv(i8* %1041)
  %1043 = alloca %nyx_string*
  store %nyx_string* %1042, %nyx_string** %1043
  %1044 = alloca i1
  store i1 false, i1* %1044
  %1045 = load %nyx_string*, %nyx_string** %1043
  %1046 = getelementptr [1 x i8], [1 x i8]* @.str55, i32 0, i32 0
  %1047 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str55.c, i8* %1046, i64 0)
  %1048 = call i1 @nyx_string_equals(%nyx_string* %1045, %nyx_string* %1047)
  %1049 = xor i1 %1048, true
  br i1 %1049, label %sc_and_rhs277, label %sc_and_end278
sc_and_rhs277:
  %1050 = load %nyx_string*, %nyx_string** %1043
  %1051 = getelementptr [2 x i8], [2 x i8]* @.str56, i32 0, i32 0
  %1052 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str56.c, i8* %1051, i64 1)
  %1053 = call i1 @nyx_string_starts_with(%nyx_string* %1050, %nyx_string* %1052)
  %1054 = xor i1 %1053, true
  store i1 %1054, i1* %1044
  br label %sc_and_end278
sc_and_end278:
  %1055 = load i1, i1* %1044
  br i1 %1055, label %then279, label %else280
then279:
  %1056 = load %nyx_string*, %nyx_string** %987
  %1057 = getelementptr [2 x i8], [2 x i8]* @.str57, i32 0, i32 0
  %1058 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str57.c, i8* %1057, i64 1)
  %1059 = call %nyx_string* @nyx_string_concat(%nyx_string* %1056, %nyx_string* %1058)
  %1060 = load %nyx_string*, %nyx_string** %1043
  %1061 = call %nyx_string* @nyx_string_concat(%nyx_string* %1059, %nyx_string* %1060)
  store %nyx_string* %1061, %nyx_string** %1043
  br label %merge281
else280:
  br label %merge281
merge281:
  %1062 = alloca i1
  store i1 false, i1* %1062
  %1063 = load %nyx_string*, %nyx_string** %1043
  %1064 = getelementptr [1 x i8], [1 x i8]* @.str58, i32 0, i32 0
  %1065 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str58.c, i8* %1064, i64 0)
  %1066 = call i1 @nyx_string_equals(%nyx_string* %1063, %nyx_string* %1065)
  %1067 = xor i1 %1066, true
  br i1 %1067, label %sc_and_rhs282, label %sc_and_end283
sc_and_rhs282:
  %1068 = load %nyx_string*, %nyx_string** %1043
  %1069 = call i8* @nyx_string_to_cstr(%nyx_string* %1068)
  %1070 = call i1 @nyx_file_exists(i8* %1069)
  store i1 %1070, i1* %1062
  br label %sc_and_end283
sc_and_end283:
  %1071 = load i1, i1* %1062
  br i1 %1071, label %then284, label %else285
then284:
  %1072 = getelementptr [2 x i8], [2 x i8]* @.str59, i32 0, i32 0
  %1073 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str59.c, i8* %1072, i64 1)
  %1074 = load %nyx_string*, %nyx_string** %1043
  %1075 = call %nyx_string* @nyx_string_concat(%nyx_string* %1073, %nyx_string* %1074)
  %1076 = getelementptr [3 x i8], [3 x i8]* @.str60, i32 0, i32 0
  %1077 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str60.c, i8* %1076, i64 2)
  %1078 = call %nyx_string* @nyx_string_concat(%nyx_string* %1075, %nyx_string* %1077)
  store %nyx_string* %1078, %nyx_string** %1038
  br label %merge286
else285:
  br label %merge286
merge286:
  %1079 = getelementptr [1 x i8], [1 x i8]* @.str61, i32 0, i32 0
  %1080 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str61.c, i8* %1079, i64 0)
  %1081 = alloca %nyx_string*
  store %nyx_string* %1080, %nyx_string** %1081
  %1082 = getelementptr [1 x i8], [1 x i8]* @.str62, i32 0, i32 0
  %1083 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str62.c, i8* %1082, i64 0)
  %1084 = alloca %nyx_string*
  store %nyx_string* %1083, %nyx_string** %1084
  %1085 = getelementptr [1 x i8], [1 x i8]* @.str63, i32 0, i32 0
  %1086 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str63.c, i8* %1085, i64 0)
  %1087 = alloca %nyx_string*
  store %nyx_string* %1086, %nyx_string** %1087
  %1088 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %1089 = getelementptr [1 x i8], [1 x i8]* @.str64, i32 0, i32 0
  %1090 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str64.c, i8* %1089, i64 0)
  %1091 = call i1 @nyx_string_equals(%nyx_string* %1088, %nyx_string* %1090)
  %1092 = xor i1 %1091, true
  br i1 %1092, label %then287, label %else288
then287:
  %1093 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %1094 = getelementptr [2 x i8], [2 x i8]* @.str65, i32 0, i32 0
  %1095 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str65.c, i8* %1094, i64 1)
  %1096 = call %nyx_string* @nyx_string_concat(%nyx_string* %1093, %nyx_string* %1095)
  %1097 = load i64, i64* %cov_idx.ptr
  %1098 = call %nyx_string* @nyx_string_from_int(i64 %1097)
  %1099 = call %nyx_string* @nyx_string_concat(%nyx_string* %1096, %nyx_string* %1098)
  %1100 = alloca %nyx_string*
  store %nyx_string* %1099, %nyx_string** %1100
  %1101 = getelementptr [20 x i8], [20 x i8]* @.str66, i32 0, i32 0
  %1102 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str66.c, i8* %1101, i64 19)
  %1103 = load %nyx_string*, %nyx_string** %1100
  %1104 = call %nyx_string* @nyx_string_concat(%nyx_string* %1102, %nyx_string* %1103)
  %1105 = getelementptr [6 x i8], [6 x i8]* @.str67, i32 0, i32 0
  %1106 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str67.c, i8* %1105, i64 5)
  %1107 = call %nyx_string* @nyx_string_concat(%nyx_string* %1104, %nyx_string* %1106)
  store %nyx_string* %1107, %nyx_string** %1081
  %1108 = getelementptr [62 x i8], [62 x i8]* @.str68, i32 0, i32 0
  %1109 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str68.c, i8* %1108, i64 61)
  store %nyx_string* %1109, %nyx_string** %1084
  %1110 = getelementptr [20 x i8], [20 x i8]* @.str69, i32 0, i32 0
  %1111 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str69.c, i8* %1110, i64 19)
  %1112 = load %nyx_string*, %nyx_string** %1100
  %1113 = call %nyx_string* @nyx_string_concat(%nyx_string* %1111, %nyx_string* %1112)
  %1114 = getelementptr [11 x i8], [11 x i8]* @.str70, i32 0, i32 0
  %1115 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str70.c, i8* %1114, i64 10)
  %1116 = call %nyx_string* @nyx_string_concat(%nyx_string* %1113, %nyx_string* %1115)
  store %nyx_string* %1116, %nyx_string** %1087
  br label %merge289
else288:
  br label %merge289
merge289:
  %1117 = getelementptr [20 x i8], [20 x i8]* @.str71, i32 0, i32 0
  %1118 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str71.c, i8* %1117, i64 19)
  %1119 = getelementptr [42 x i8], [42 x i8]* @.str72, i32 0, i32 0
  %1120 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str72.c, i8* %1119, i64 41)
  %1121 = call %nyx_string* @nyx_string_concat(%nyx_string* %1118, %nyx_string* %1120)
  %1122 = getelementptr [17 x i8], [17 x i8]* @.str73, i32 0, i32 0
  %1123 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str73.c, i8* %1122, i64 16)
  %1124 = call %nyx_string* @nyx_string_concat(%nyx_string* %1121, %nyx_string* %1123)
  %1125 = getelementptr [31 x i8], [31 x i8]* @.str74, i32 0, i32 0
  %1126 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str74.c, i8* %1125, i64 30)
  %1127 = call %nyx_string* @nyx_string_concat(%nyx_string* %1124, %nyx_string* %1126)
  %1128 = getelementptr [17 x i8], [17 x i8]* @.str75, i32 0, i32 0
  %1129 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str75.c, i8* %1128, i64 16)
  %1130 = call %nyx_string* @nyx_string_concat(%nyx_string* %1127, %nyx_string* %1129)
  %1131 = getelementptr [5 x i8], [5 x i8]* @.str76, i32 0, i32 0
  %1132 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str76.c, i8* %1131, i64 4)
  %1133 = call %nyx_string* @nyx_string_concat(%nyx_string* %1130, %nyx_string* %1132)
  %1134 = load %nyx_string*, %nyx_string** %987
  %1135 = call %nyx_string* @nyx_string_concat(%nyx_string* %1133, %nyx_string* %1134)
  %1136 = getelementptr [2 x i8], [2 x i8]* @.str77, i32 0, i32 0
  %1137 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str77.c, i8* %1136, i64 1)
  %1138 = call %nyx_string* @nyx_string_concat(%nyx_string* %1135, %nyx_string* %1137)
  %1139 = load %nyx_string*, %nyx_string** %file.ptr
  %1140 = call %nyx_string* @nyx_string_concat(%nyx_string* %1138, %nyx_string* %1139)
  %1141 = getelementptr [12 x i8], [12 x i8]* @.str78, i32 0, i32 0
  %1142 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str78.c, i8* %1141, i64 11)
  %1143 = call %nyx_string* @nyx_string_concat(%nyx_string* %1140, %nyx_string* %1142)
  %1144 = getelementptr [5 x i8], [5 x i8]* @.str79, i32 0, i32 0
  %1145 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str79.c, i8* %1144, i64 4)
  %1146 = call %nyx_string* @nyx_string_concat(%nyx_string* %1143, %nyx_string* %1145)
  %1147 = load %nyx_string*, %nyx_string** %965
  %1148 = call %nyx_string* @nyx_string_concat(%nyx_string* %1146, %nyx_string* %1147)
  %1149 = getelementptr [3 x i8], [3 x i8]* @.str80, i32 0, i32 0
  %1150 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str80.c, i8* %1149, i64 2)
  %1151 = call %nyx_string* @nyx_string_concat(%nyx_string* %1148, %nyx_string* %1150)
  %1152 = getelementptr [51 x i8], [51 x i8]* @.str81, i32 0, i32 0
  %1153 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str81.c, i8* %1152, i64 50)
  %1154 = call %nyx_string* @nyx_string_concat(%nyx_string* %1151, %nyx_string* %1153)
  %1155 = load %nyx_string*, %nyx_string** %965
  %1156 = call %nyx_string* @nyx_string_concat(%nyx_string* %1154, %nyx_string* %1155)
  %1157 = getelementptr [35 x i8], [35 x i8]* @.str82, i32 0, i32 0
  %1158 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str82.c, i8* %1157, i64 34)
  %1159 = call %nyx_string* @nyx_string_concat(%nyx_string* %1156, %nyx_string* %1158)
  %1160 = getelementptr [43 x i8], [43 x i8]* @.str83, i32 0, i32 0
  %1161 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str83.c, i8* %1160, i64 42)
  %1162 = call %nyx_string* @nyx_string_concat(%nyx_string* %1159, %nyx_string* %1161)
  %1163 = load %nyx_string*, %nyx_string** %987
  %1164 = call %nyx_string* @nyx_string_concat(%nyx_string* %1162, %nyx_string* %1163)
  %1165 = getelementptr [37 x i8], [37 x i8]* @.str84, i32 0, i32 0
  %1166 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str84.c, i8* %1165, i64 36)
  %1167 = call %nyx_string* @nyx_string_concat(%nyx_string* %1164, %nyx_string* %1166)
  %1168 = load %nyx_string*, %nyx_string** %file.ptr
  %1169 = call %nyx_string* @nyx_string_concat(%nyx_string* %1167, %nyx_string* %1168)
  %1170 = getelementptr [2 x i8], [2 x i8]* @.str85, i32 0, i32 0
  %1171 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str85.c, i8* %1170, i64 1)
  %1172 = call %nyx_string* @nyx_string_concat(%nyx_string* %1169, %nyx_string* %1171)
  %1173 = load %nyx_string*, %nyx_string** %1081
  %1174 = call %nyx_string* @nyx_string_concat(%nyx_string* %1172, %nyx_string* %1173)
  %1175 = getelementptr [20 x i8], [20 x i8]* @.str86, i32 0, i32 0
  %1176 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str86.c, i8* %1175, i64 19)
  %1177 = call %nyx_string* @nyx_string_concat(%nyx_string* %1174, %nyx_string* %1176)
  %1178 = load %nyx_string*, %nyx_string** %1002
  %1179 = call %nyx_string* @nyx_string_concat(%nyx_string* %1177, %nyx_string* %1178)
  %1180 = getelementptr [7 x i8], [7 x i8]* @.str87, i32 0, i32 0
  %1181 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str87.c, i8* %1180, i64 6)
  %1182 = call %nyx_string* @nyx_string_concat(%nyx_string* %1179, %nyx_string* %1181)
  %1183 = getelementptr [7 x i8], [7 x i8]* @.str88, i32 0, i32 0
  %1184 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str88.c, i8* %1183, i64 6)
  %1185 = call %nyx_string* @nyx_string_concat(%nyx_string* %1182, %nyx_string* %1184)
  %1186 = load %nyx_string*, %nyx_string** %1010
  %1187 = call %nyx_string* @nyx_string_concat(%nyx_string* %1185, %nyx_string* %1186)
  %1188 = load %nyx_string*, %nyx_string** %1084
  %1189 = call %nyx_string* @nyx_string_concat(%nyx_string* %1187, %nyx_string* %1188)
  %1190 = getelementptr [40 x i8], [40 x i8]* @.str89, i32 0, i32 0
  %1191 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str89.c, i8* %1190, i64 39)
  %1192 = call %nyx_string* @nyx_string_concat(%nyx_string* %1189, %nyx_string* %1191)
  %1193 = load %nyx_string*, %nyx_string** %1038
  %1194 = call %nyx_string* @nyx_string_concat(%nyx_string* %1192, %nyx_string* %1193)
  %1195 = getelementptr [44 x i8], [44 x i8]* @.str90, i32 0, i32 0
  %1196 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str90.c, i8* %1195, i64 43)
  %1197 = call %nyx_string* @nyx_string_concat(%nyx_string* %1194, %nyx_string* %1196)
  %1198 = getelementptr [4 x i8], [4 x i8]* @.str91, i32 0, i32 0
  %1199 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str91.c, i8* %1198, i64 3)
  %1200 = call %nyx_string* @nyx_string_concat(%nyx_string* %1197, %nyx_string* %1199)
  %1201 = load %nyx_string*, %nyx_string** %1007
  %1202 = call %nyx_string* @nyx_string_concat(%nyx_string* %1200, %nyx_string* %1201)
  %1203 = getelementptr [6 x i8], [6 x i8]* @.str92, i32 0, i32 0
  %1204 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str92.c, i8* %1203, i64 5)
  %1205 = call %nyx_string* @nyx_string_concat(%nyx_string* %1202, %nyx_string* %1204)
  %1206 = load %nyx_string*, %nyx_string** %1002
  %1207 = call %nyx_string* @nyx_string_concat(%nyx_string* %1205, %nyx_string* %1206)
  %1208 = getelementptr [2 x i8], [2 x i8]* @.str93, i32 0, i32 0
  %1209 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str93.c, i8* %1208, i64 1)
  %1210 = call %nyx_string* @nyx_string_concat(%nyx_string* %1207, %nyx_string* %1209)
  %1211 = getelementptr [57 x i8], [57 x i8]* @.str94, i32 0, i32 0
  %1212 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str94.c, i8* %1211, i64 56)
  %1213 = call %nyx_string* @nyx_string_concat(%nyx_string* %1210, %nyx_string* %1212)
  %1214 = load %nyx_string*, %nyx_string** %1087
  %1215 = call %nyx_string* @nyx_string_concat(%nyx_string* %1213, %nyx_string* %1214)
  %1216 = getelementptr [9 x i8], [9 x i8]* @.str95, i32 0, i32 0
  %1217 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str95.c, i8* %1216, i64 8)
  %1218 = call %nyx_string* @nyx_string_concat(%nyx_string* %1215, %nyx_string* %1217)
  %1219 = load %nyx_string*, %nyx_string** %991
  %1220 = call %nyx_string* @nyx_string_concat(%nyx_string* %1218, %nyx_string* %1219)
  %1221 = getelementptr [2 x i8], [2 x i8]* @.str96, i32 0, i32 0
  %1222 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str96.c, i8* %1221, i64 1)
  %1223 = call %nyx_string* @nyx_string_concat(%nyx_string* %1220, %nyx_string* %1222)
  %1224 = load %nyx_string*, %nyx_string** %1007
  %1225 = call %nyx_string* @nyx_string_concat(%nyx_string* %1223, %nyx_string* %1224)
  %1226 = getelementptr [4 x i8], [4 x i8]* @.str97, i32 0, i32 0
  %1227 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str97.c, i8* %1226, i64 3)
  %1228 = call %nyx_string* @nyx_string_concat(%nyx_string* %1225, %nyx_string* %1227)
  %1229 = load %nyx_string*, %nyx_string** %1002
  %1230 = call %nyx_string* @nyx_string_concat(%nyx_string* %1228, %nyx_string* %1229)
  %1231 = getelementptr [7 x i8], [7 x i8]* @.str98, i32 0, i32 0
  %1232 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str98.c, i8* %1231, i64 6)
  %1233 = call %nyx_string* @nyx_string_concat(%nyx_string* %1230, %nyx_string* %1232)
  %1234 = getelementptr [14 x i8], [14 x i8]* @.str99, i32 0, i32 0
  %1235 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str99.c, i8* %1234, i64 13)
  %1236 = call %nyx_string* @nyx_string_concat(%nyx_string* %1233, %nyx_string* %1235)
  %1237 = getelementptr [7 x i8], [7 x i8]* @.str100, i32 0, i32 0
  %1238 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str100.c, i8* %1237, i64 6)
  %1239 = call %nyx_string* @nyx_string_concat(%nyx_string* %1236, %nyx_string* %1238)
  %1240 = load %nyx_string*, %nyx_string** %1007
  %1241 = call %nyx_string* @nyx_string_concat(%nyx_string* %1239, %nyx_string* %1240)
  %1242 = getelementptr [2 x i8], [2 x i8]* @.str101, i32 0, i32 0
  %1243 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str101.c, i8* %1242, i64 1)
  %1244 = call %nyx_string* @nyx_string_concat(%nyx_string* %1241, %nyx_string* %1243)
  %1245 = getelementptr [17 x i8], [17 x i8]* @.str102, i32 0, i32 0
  %1246 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str102.c, i8* %1245, i64 16)
  %1247 = call %nyx_string* @nyx_string_concat(%nyx_string* %1244, %nyx_string* %1246)
  %1248 = alloca %nyx_string*
  store %nyx_string* %1247, %nyx_string** %1248
  %1249 = load %nyx_string*, %nyx_string** %997
  %1250 = getelementptr [8 x i8], [8 x i8]* @.str103, i32 0, i32 0
  %1251 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str103.c, i8* %1250, i64 7)
  %1252 = call %nyx_string* @nyx_string_concat(%nyx_string* %1249, %nyx_string* %1251)
  %1253 = alloca %nyx_string*
  store %nyx_string* %1252, %nyx_string** %1253
  %1254 = load %nyx_string*, %nyx_string** %1253
  %1255 = load %nyx_string*, %nyx_string** %1248
  %1256 = call i8* @nyx_string_to_cstr(%nyx_string* %1254)
  %1257 = call i1 @nyx_write_file_safe(i8* %1256, %nyx_string* %1255)
  %1258 = getelementptr [6 x i8], [6 x i8]* @.str104, i32 0, i32 0
  %1259 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str104.c, i8* %1258, i64 5)
  %1260 = load %nyx_string*, %nyx_string** %1253
  %1261 = call %nyx_string* @nyx_string_concat(%nyx_string* %1259, %nyx_string* %1260)
  %1262 = call i8* @nyx_string_to_cstr(%nyx_string* %1261)
  %1263 = call i64 @nyx_exec_code(i8* %1262)
  %1264 = alloca i64
  store i64 %1263, i64* %1264
  %1265 = getelementptr [1 x i8], [1 x i8]* @.str105, i32 0, i32 0
  %1266 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str105.c, i8* %1265, i64 0)
  %1267 = alloca %nyx_string*
  store %nyx_string* %1266, %nyx_string** %1267
  %1268 = load %nyx_string*, %nyx_string** %1002
  %1269 = call i8* @nyx_string_to_cstr(%nyx_string* %1268)
  %1270 = call i1 @nyx_file_exists(i8* %1269)
  br i1 %1270, label %then290, label %else291
then290:
  %1271 = load %nyx_string*, %nyx_string** %1002
  %1272 = call i8* @nyx_string_to_cstr(%nyx_string* %1271)
  %1273 = call %nyx_string* @nyx_read_file(i8* %1272)
  store %nyx_string* %1273, %nyx_string** %1267
  br label %merge292
else291:
  br label %merge292
merge292:
  %1274 = getelementptr [8 x i8], [8 x i8]* @.str106, i32 0, i32 0
  %1275 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str106.c, i8* %1274, i64 7)
  %1276 = load %nyx_string*, %nyx_string** %997
  %1277 = call %nyx_string* @nyx_string_concat(%nyx_string* %1275, %nyx_string* %1276)
  %1278 = call i8* @nyx_string_to_cstr(%nyx_string* %1277)
  %1279 = call %nyx_string* @nyx_exec(i8* %1278)
  %1280 = alloca i64
  store i64 0, i64* %1280
  %1281 = alloca i64
  store i64 0, i64* %1281
  %1282 = load %nyx_string*, %nyx_string** %1267
  %1283 = getelementptr [2 x i8], [2 x i8]* @.str107, i32 0, i32 0
  %1284 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str107.c, i8* %1283, i64 1)
  %1285 = call { i64, i8* }* @nyx_string_split(%nyx_string* %1282, %nyx_string* %1284)
  %1286 = alloca { i64, i8* }*
  store { i64, i8* }* %1285, { i64, i8* }** %1286
  %1287 = alloca i64
  store i64 0, i64* %1287
  %1288 = getelementptr [6 x i8], [6 x i8]* @.str108, i32 0, i32 0
  %1289 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str108.c, i8* %1288, i64 5)
  %1290 = alloca %nyx_string*
  store %nyx_string* %1289, %nyx_string** %1290
  %1291 = getelementptr [6 x i8], [6 x i8]* @.str109, i32 0, i32 0
  %1292 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str109.c, i8* %1291, i64 5)
  %1293 = alloca %nyx_string*
  store %nyx_string* %1292, %nyx_string** %1293
  %1294 = call i8* @llvm.stacksave()
  br label %while_cond293
while_cond293:
  %1295 = load i64, i64* %1287
  %1296 = load { i64, i8* }*, { i64, i8* }** %1286
  %1297 = call i64 @nyx_array_length({ i64, i8* }* %1296)
  %1298 = icmp slt i64 %1295, %1297
  br i1 %1298, label %while_body294, label %while_end295
while_body294:
  call void @llvm.stackrestore(i8* %1294)
  %1299 = load { i64, i8* }*, { i64, i8* }** %1286
  %1300 = load i64, i64* %1287
  %1301 = call i64 @nyx_array_get_checked({ i64, i8* }* %1299, i64 %1300, i64 2)
  %1302 = inttoptr i64 %1301 to %nyx_string*
  %1303 = alloca %nyx_string*
  store %nyx_string* %1302, %nyx_string** %1303
  %1304 = load %nyx_string*, %nyx_string** %1303
  %1305 = load %nyx_string*, %nyx_string** %1290
  %1306 = call i1 @nyx_string_contains(%nyx_string* %1304, %nyx_string* %1305)
  br i1 %1306, label %then296, label %else297
then296:
  %1307 = load i64, i64* %1280
  %1308 = add i64 %1307, 1
  store i64 %1308, i64* %1280
  br label %merge298
else297:
  %1309 = load %nyx_string*, %nyx_string** %1303
  %1310 = load %nyx_string*, %nyx_string** %1293
  %1311 = call i1 @nyx_string_contains(%nyx_string* %1309, %nyx_string* %1310)
  br i1 %1311, label %then299, label %else300
then299:
  %1312 = load i64, i64* %1281
  %1313 = add i64 %1312, 1
  store i64 %1313, i64* %1281
  br label %merge301
else300:
  br label %merge301
merge301:
  br label %merge298
merge298:
  %1314 = load i64, i64* %1287
  %1315 = add i64 %1314, 1
  store i64 %1315, i64* %1287
  br label %while_cond293
while_end295:
  %1316 = getelementptr %TestResult, %TestResult* null, i32 1
  %1317 = ptrtoint %TestResult* %1316 to i64
  %1318 = call i8* @GC_malloc(i64 %1317)
  %1319 = bitcast i8* %1318 to %TestResult*
  %1320 = load %nyx_string*, %nyx_string** %file.ptr
  %1321 = getelementptr %TestResult, %TestResult* %1319, i32 0, i32 0
  store %nyx_string* %1320, %nyx_string** %1321
  %1322 = load i64, i64* %1280
  %1323 = getelementptr %TestResult, %TestResult* %1319, i32 0, i32 1
  store i64 %1322, i64* %1323
  %1324 = load i64, i64* %1281
  %1325 = getelementptr %TestResult, %TestResult* %1319, i32 0, i32 2
  store i64 %1324, i64* %1325
  %1326 = load %nyx_string*, %nyx_string** %1267
  %1327 = getelementptr %TestResult, %TestResult* %1319, i32 0, i32 3
  store %nyx_string* %1326, %nyx_string** %1327
  %1328 = alloca i1
  store i1 false, i1* %1328
  %1329 = load i64, i64* %1264
  %1330 = icmp eq i64 %1329, 0
  br i1 %1330, label %sc_and_rhs302, label %sc_and_end303
sc_and_rhs302:
  %1331 = load i64, i64* %1281
  %1332 = icmp eq i64 %1331, 0
  store i1 %1332, i1* %1328
  br label %sc_and_end303
sc_and_end303:
  %1333 = load i1, i1* %1328
  %1334 = getelementptr %TestResult, %TestResult* %1319, i32 0, i32 4
  store i1 %1333, i1* %1334
  %1335 = load %TestResult, %TestResult* %1319
  ret %TestResult %1335
}

define internal i64 @print_result(
%TestResult %result.param, i1 %verbose.param) {
  %result.ptr = alloca %TestResult
  store %TestResult %result.param, %TestResult* %result.ptr
  %verbose.ptr = alloca i1
  store i1 %verbose.param, i1* %verbose.ptr
  %1336 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 4
  %1337 = load i1, i1* %1336
  br i1 %1337, label %then304, label %else305
then304:
  %1338 = getelementptr [9 x i8], [9 x i8]* @.str110, i32 0, i32 0
  %1339 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str110.c, i8* %1338, i64 8)
  %1340 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 0
  %1341 = load %nyx_string*, %nyx_string** %1340
  %1342 = call %nyx_string* @nyx_string_concat(%nyx_string* %1339, %nyx_string* %1341)
  %1343 = getelementptr [3 x i8], [3 x i8]* @.str111, i32 0, i32 0
  %1344 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str111.c, i8* %1343, i64 2)
  %1345 = call %nyx_string* @nyx_string_concat(%nyx_string* %1342, %nyx_string* %1344)
  %1346 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 1
  %1347 = load i64, i64* %1346
  %1348 = call %nyx_string* @nyx_string_from_int(i64 %1347)
  %1349 = call %nyx_string* @nyx_string_concat(%nyx_string* %1345, %nyx_string* %1348)
  %1350 = getelementptr [8 x i8], [8 x i8]* @.str112, i32 0, i32 0
  %1351 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str112.c, i8* %1350, i64 7)
  %1352 = call %nyx_string* @nyx_string_concat(%nyx_string* %1349, %nyx_string* %1351)
  %1353 = call i8* @nyx_string_to_cstr(%nyx_string* %1352)
  call void @nyx_print_string(i8* %1353)
  %1354 = load i1, i1* %verbose.ptr
  br i1 %1354, label %then307, label %else308
then307:
  %1355 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 3
  %1356 = load %nyx_string*, %nyx_string** %1355
  %1357 = call i8* @nyx_string_to_cstr(%nyx_string* %1356)
  call void @nyx_print_string(i8* %1357)
  br label %merge309
else308:
  br label %merge309
merge309:
  br label %merge306
else305:
  %1358 = getelementptr [9 x i8], [9 x i8]* @.str113, i32 0, i32 0
  %1359 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str113.c, i8* %1358, i64 8)
  %1360 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 0
  %1361 = load %nyx_string*, %nyx_string** %1360
  %1362 = call %nyx_string* @nyx_string_concat(%nyx_string* %1359, %nyx_string* %1361)
  %1363 = getelementptr [3 x i8], [3 x i8]* @.str114, i32 0, i32 0
  %1364 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str114.c, i8* %1363, i64 2)
  %1365 = call %nyx_string* @nyx_string_concat(%nyx_string* %1362, %nyx_string* %1364)
  %1366 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 1
  %1367 = load i64, i64* %1366
  %1368 = call %nyx_string* @nyx_string_from_int(i64 %1367)
  %1369 = call %nyx_string* @nyx_string_concat(%nyx_string* %1365, %nyx_string* %1368)
  %1370 = getelementptr [10 x i8], [10 x i8]* @.str115, i32 0, i32 0
  %1371 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str115.c, i8* %1370, i64 9)
  %1372 = call %nyx_string* @nyx_string_concat(%nyx_string* %1369, %nyx_string* %1371)
  %1373 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 2
  %1374 = load i64, i64* %1373
  %1375 = call %nyx_string* @nyx_string_from_int(i64 %1374)
  %1376 = call %nyx_string* @nyx_string_concat(%nyx_string* %1372, %nyx_string* %1375)
  %1377 = getelementptr [9 x i8], [9 x i8]* @.str116, i32 0, i32 0
  %1378 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str116.c, i8* %1377, i64 8)
  %1379 = call %nyx_string* @nyx_string_concat(%nyx_string* %1376, %nyx_string* %1378)
  %1380 = call i8* @nyx_string_to_cstr(%nyx_string* %1379)
  call void @nyx_print_string(i8* %1380)
  %1381 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 3
  %1382 = load %nyx_string*, %nyx_string** %1381
  %1383 = call i8* @nyx_string_to_cstr(%nyx_string* %1382)
  call void @nyx_print_string(i8* %1383)
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
  %1384 = getelementptr [1 x i8], [1 x i8]* @.str117, i32 0, i32 0
  %1385 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str117.c, i8* %1384, i64 0)
  %1386 = call i8* @nyx_string_to_cstr(%nyx_string* %1385)
  call void @nyx_print_string(i8* %1386)
  %1387 = getelementptr [36 x i8], [36 x i8]* @.str118, i32 0, i32 0
  %1388 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str118.c, i8* %1387, i64 35)
  %1389 = call i8* @nyx_string_to_cstr(%nyx_string* %1388)
  call void @nyx_print_string(i8* %1389)
  %1390 = alloca i64
  store i64 0, i64* %1390
  %1391 = alloca i64
  store i64 0, i64* %1391
  %1392 = alloca i64
  store i64 0, i64* %1392
  %1393 = call i8* @llvm.stacksave()
  br label %while_cond310
while_cond310:
  %1394 = load i64, i64* %1392
  %1395 = load { i64, i8* }*, { i64, i8* }** %results.ptr
  %1396 = call i64 @nyx_array_length({ i64, i8* }* %1395)
  %1397 = icmp slt i64 %1394, %1396
  br i1 %1397, label %while_body311, label %while_end312
while_body311:
  call void @llvm.stackrestore(i8* %1393)
  %1398 = load { i64, i8* }*, { i64, i8* }** %results.ptr
  %1399 = load i64, i64* %1392
  %1400 = call i64 @nyx_array_get({ i64, i8* }* %1398, i64 %1399)
  %1401 = inttoptr i64 %1400 to %TestResult*
  %1402 = load %TestResult, %TestResult* %1401
  %1403 = alloca %TestResult
  store %TestResult %1402, %TestResult* %1403
  %1404 = getelementptr %TestResult, %TestResult* %1403, i32 0, i32 4
  %1405 = load i1, i1* %1404
  br i1 %1405, label %then313, label %else314
then313:
  %1406 = load i64, i64* %1390
  %1407 = add i64 %1406, 1
  store i64 %1407, i64* %1390
  br label %merge315
else314:
  %1408 = load i64, i64* %1391
  %1409 = add i64 %1408, 1
  store i64 %1409, i64* %1391
  br label %merge315
merge315:
  %1410 = load i64, i64* %1392
  %1411 = add i64 %1410, 1
  store i64 %1411, i64* %1392
  br label %while_cond310
while_end312:
  %1412 = getelementptr [11 x i8], [11 x i8]* @.str119, i32 0, i32 0
  %1413 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str119.c, i8* %1412, i64 10)
  %1414 = load i64, i64* %1390
  %1415 = call %nyx_string* @nyx_string_from_int(i64 %1414)
  %1416 = call %nyx_string* @nyx_string_concat(%nyx_string* %1413, %nyx_string* %1415)
  %1417 = getelementptr [10 x i8], [10 x i8]* @.str120, i32 0, i32 0
  %1418 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str120.c, i8* %1417, i64 9)
  %1419 = call %nyx_string* @nyx_string_concat(%nyx_string* %1416, %nyx_string* %1418)
  %1420 = load i64, i64* %1391
  %1421 = call %nyx_string* @nyx_string_from_int(i64 %1420)
  %1422 = call %nyx_string* @nyx_string_concat(%nyx_string* %1419, %nyx_string* %1421)
  %1423 = getelementptr [10 x i8], [10 x i8]* @.str121, i32 0, i32 0
  %1424 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str121.c, i8* %1423, i64 9)
  %1425 = call %nyx_string* @nyx_string_concat(%nyx_string* %1422, %nyx_string* %1424)
  %1426 = load { i64, i8* }*, { i64, i8* }** %results.ptr
  %1427 = call i64 @nyx_array_length({ i64, i8* }* %1426)
  %1428 = call %nyx_string* @nyx_string_from_int(i64 %1427)
  %1429 = call %nyx_string* @nyx_string_concat(%nyx_string* %1425, %nyx_string* %1428)
  %1430 = getelementptr [8 x i8], [8 x i8]* @.str122, i32 0, i32 0
  %1431 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str122.c, i8* %1430, i64 7)
  %1432 = call %nyx_string* @nyx_string_concat(%nyx_string* %1429, %nyx_string* %1431)
  %1433 = call i8* @nyx_string_to_cstr(%nyx_string* %1432)
  call void @nyx_print_string(i8* %1433)
  %1434 = getelementptr [11 x i8], [11 x i8]* @.str123, i32 0, i32 0
  %1435 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str123.c, i8* %1434, i64 10)
  %1436 = load i64, i64* %total_passed.ptr
  %1437 = call %nyx_string* @nyx_string_from_int(i64 %1436)
  %1438 = call %nyx_string* @nyx_string_concat(%nyx_string* %1435, %nyx_string* %1437)
  %1439 = getelementptr [10 x i8], [10 x i8]* @.str124, i32 0, i32 0
  %1440 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str124.c, i8* %1439, i64 9)
  %1441 = call %nyx_string* @nyx_string_concat(%nyx_string* %1438, %nyx_string* %1440)
  %1442 = load i64, i64* %total_failed.ptr
  %1443 = call %nyx_string* @nyx_string_from_int(i64 %1442)
  %1444 = call %nyx_string* @nyx_string_concat(%nyx_string* %1441, %nyx_string* %1443)
  %1445 = getelementptr [10 x i8], [10 x i8]* @.str125, i32 0, i32 0
  %1446 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str125.c, i8* %1445, i64 9)
  %1447 = call %nyx_string* @nyx_string_concat(%nyx_string* %1444, %nyx_string* %1446)
  %1448 = load i64, i64* %total_passed.ptr
  %1449 = load i64, i64* %total_failed.ptr
  %1450 = add i64 %1448, %1449
  %1451 = call %nyx_string* @nyx_string_from_int(i64 %1450)
  %1452 = call %nyx_string* @nyx_string_concat(%nyx_string* %1447, %nyx_string* %1451)
  %1453 = getelementptr [8 x i8], [8 x i8]* @.str126, i32 0, i32 0
  %1454 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str126.c, i8* %1453, i64 7)
  %1455 = call %nyx_string* @nyx_string_concat(%nyx_string* %1452, %nyx_string* %1454)
  %1456 = call i8* @nyx_string_to_cstr(%nyx_string* %1455)
  call void @nyx_print_string(i8* %1456)
  %1457 = alloca i1
  store i1 false, i1* %1457
  %1458 = load i64, i64* %total_failed.ptr
  %1459 = icmp eq i64 %1458, 0
  br i1 %1459, label %sc_and_rhs316, label %sc_and_end317
sc_and_rhs316:
  %1460 = load i64, i64* %1391
  %1461 = icmp eq i64 %1460, 0
  store i1 %1461, i1* %1457
  br label %sc_and_end317
sc_and_end317:
  %1462 = load i1, i1* %1457
  br i1 %1462, label %then318, label %else319
then318:
  %1463 = getelementptr [27 x i8], [27 x i8]* @.str127, i32 0, i32 0
  %1464 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str127.c, i8* %1463, i64 26)
  %1465 = call i8* @nyx_string_to_cstr(%nyx_string* %1464)
  call void @nyx_print_string(i8* %1465)
  br label %merge320
else319:
  %1466 = getelementptr [28 x i8], [28 x i8]* @.str128, i32 0, i32 0
  %1467 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str128.c, i8* %1466, i64 27)
  %1468 = call i8* @nyx_string_to_cstr(%nyx_string* %1467)
  call void @nyx_print_string(i8* %1468)
  br label %merge320
merge320:
  %1469 = getelementptr [36 x i8], [36 x i8]* @.str129, i32 0, i32 0
  %1470 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str129.c, i8* %1469, i64 35)
  %1471 = call i8* @nyx_string_to_cstr(%nyx_string* %1470)
  call void @nyx_print_string(i8* %1471)
  ret i64 0
}

define internal %nyx_string* @cov_clang_major(
) {
  %1472 = getelementptr [28 x i8], [28 x i8]* @.str130, i32 0, i32 0
  %1473 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str130.c, i8* %1472, i64 27)
  %1474 = call i8* @nyx_string_to_cstr(%nyx_string* %1473)
  %1475 = call %nyx_string* @nyx_exec(i8* %1474)
  %1476 = alloca %nyx_string*
  store %nyx_string* %1475, %nyx_string** %1476
  %1477 = load %nyx_string*, %nyx_string** %1476
  %1478 = getelementptr [9 x i8], [9 x i8]* @.str131, i32 0, i32 0
  %1479 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str131.c, i8* %1478, i64 8)
  %1480 = call i64 @nyx_string_index_of(%nyx_string* %1477, %nyx_string* %1479)
  %1481 = alloca i64
  store i64 %1480, i64* %1481
  %1482 = load i64, i64* %1481
  %1483 = icmp slt i64 %1482, 0
  br i1 %1483, label %then321, label %else322
then321:
  %1484 = getelementptr [1 x i8], [1 x i8]* @.str132, i32 0, i32 0
  %1485 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str132.c, i8* %1484, i64 0)
  ret %nyx_string* %1485
else322:
  br label %merge323
merge323:
  %1486 = load i64, i64* %1481
  %1487 = add i64 %1486, 8
  %1488 = alloca i64
  store i64 %1487, i64* %1488
  %1489 = getelementptr [1 x i8], [1 x i8]* @.str133, i32 0, i32 0
  %1490 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str133.c, i8* %1489, i64 0)
  %1491 = alloca %nyx_string*
  store %nyx_string* %1490, %nyx_string** %1491
  %1492 = call i8* @llvm.stacksave()
  br label %while_cond324
while_cond324:
  %1493 = load i64, i64* %1488
  %1494 = load %nyx_string*, %nyx_string** %1476
  %1495 = call i64 @nyx_string_byte_length(%nyx_string* %1494)
  %1496 = icmp slt i64 %1493, %1495
  br i1 %1496, label %while_body325, label %while_end326
while_body325:
  call void @llvm.stackrestore(i8* %1492)
  %1497 = load %nyx_string*, %nyx_string** %1476
  %1498 = load i64, i64* %1488
  %1499 = call i8 @nyx_string_char_at(%nyx_string* %1497, i64 %1498)
  %1500 = zext i8 %1499 to i64
  %1501 = alloca i64
  store i64 %1500, i64* %1501
  %1502 = alloca i1
  store i1 false, i1* %1502
  %1503 = load i64, i64* %1501
  %1504 = icmp sge i64 %1503, 48
  br i1 %1504, label %sc_and_rhs327, label %sc_and_end328
sc_and_rhs327:
  %1505 = load i64, i64* %1501
  %1506 = icmp sle i64 %1505, 57
  store i1 %1506, i1* %1502
  br label %sc_and_end328
sc_and_end328:
  %1507 = load i1, i1* %1502
  br i1 %1507, label %then329, label %else330
then329:
  %1508 = load %nyx_string*, %nyx_string** %1491
  %1509 = load %nyx_string*, %nyx_string** %1476
  %1510 = load i64, i64* %1488
  %1511 = load i64, i64* %1488
  %1512 = add i64 %1511, 1
  %1513 = call %nyx_string* @nyx_string_substring(%nyx_string* %1509, i64 %1510, i64 %1512)
  %1514 = call %nyx_string* @nyx_string_concat(%nyx_string* %1508, %nyx_string* %1513)
  store %nyx_string* %1514, %nyx_string** %1491
  %1515 = load i64, i64* %1488
  %1516 = add i64 %1515, 1
  store i64 %1516, i64* %1488
  br label %merge331
else330:
  %1517 = load %nyx_string*, %nyx_string** %1476
  %1518 = call i64 @nyx_string_byte_length(%nyx_string* %1517)
  store i64 %1518, i64* %1488
  br label %merge331
merge331:
  br label %while_cond324
while_end326:
  %1519 = load %nyx_string*, %nyx_string** %1491
  ret %nyx_string* %1519
}

define internal i1 @cov_profraw_valid(
%nyx_string* %path.param) {
  %path.ptr = alloca %nyx_string*
  store %nyx_string* %path.param, %nyx_string** %path.ptr
  %1520 = getelementptr [10 x i8], [10 x i8]* @.str134, i32 0, i32 0
  %1521 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str134.c, i8* %1520, i64 9)
  %1522 = load %nyx_string*, %nyx_string** %path.ptr
  %1523 = call %nyx_string* @nyx_string_concat(%nyx_string* %1521, %nyx_string* %1522)
  %1524 = getelementptr [2 x i8], [2 x i8]* @.str135, i32 0, i32 0
  %1525 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str135.c, i8* %1524, i64 1)
  %1526 = call %nyx_string* @nyx_string_concat(%nyx_string* %1523, %nyx_string* %1525)
  %1527 = call i8* @nyx_string_to_cstr(%nyx_string* %1526)
  %1528 = call i64 @nyx_exec_code(i8* %1527)
  %1529 = icmp eq i64 %1528, 0
  ret i1 %1529
}

define internal %nyx_string* @cov_find_profdata(
) {
  %1530 = call %nyx_string* @cov_clang_major()
  %1531 = alloca %nyx_string*
  store %nyx_string* %1530, %nyx_string** %1531
  %1532 = load %nyx_string*, %nyx_string** %1531
  %1533 = getelementptr [1 x i8], [1 x i8]* @.str136, i32 0, i32 0
  %1534 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str136.c, i8* %1533, i64 0)
  %1535 = call i1 @nyx_string_equals(%nyx_string* %1532, %nyx_string* %1534)
  %1536 = xor i1 %1535, true
  br i1 %1536, label %then332, label %else333
then332:
  %1537 = getelementptr [26 x i8], [26 x i8]* @.str137, i32 0, i32 0
  %1538 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str137.c, i8* %1537, i64 25)
  %1539 = load %nyx_string*, %nyx_string** %1531
  %1540 = call %nyx_string* @nyx_string_concat(%nyx_string* %1538, %nyx_string* %1539)
  %1541 = getelementptr [13 x i8], [13 x i8]* @.str138, i32 0, i32 0
  %1542 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str138.c, i8* %1541, i64 12)
  %1543 = call %nyx_string* @nyx_string_concat(%nyx_string* %1540, %nyx_string* %1542)
  %1544 = call i8* @nyx_string_to_cstr(%nyx_string* %1543)
  %1545 = call %nyx_string* @nyx_exec(i8* %1544)
  %1546 = call %nyx_string* @nyx_string_trim(%nyx_string* %1545)
  %1547 = alloca %nyx_string*
  store %nyx_string* %1546, %nyx_string** %1547
  %1548 = load %nyx_string*, %nyx_string** %1547
  %1549 = getelementptr [1 x i8], [1 x i8]* @.str139, i32 0, i32 0
  %1550 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str139.c, i8* %1549, i64 0)
  %1551 = call i1 @nyx_string_equals(%nyx_string* %1548, %nyx_string* %1550)
  %1552 = xor i1 %1551, true
  br i1 %1552, label %then335, label %else336
then335:
  %1553 = load %nyx_string*, %nyx_string** %1547
  ret %nyx_string* %1553
else336:
  br label %merge337
merge337:
  br label %merge334
else333:
  br label %merge334
merge334:
  %1554 = getelementptr [37 x i8], [37 x i8]* @.str140, i32 0, i32 0
  %1555 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str140.c, i8* %1554, i64 36)
  %1556 = call i8* @nyx_string_to_cstr(%nyx_string* %1555)
  %1557 = call %nyx_string* @nyx_exec(i8* %1556)
  %1558 = call %nyx_string* @nyx_string_trim(%nyx_string* %1557)
  ret %nyx_string* %1558
}

define internal { i64, i8* }* @cov_fields(
%nyx_string* %line.param) {
  %line.ptr = alloca %nyx_string*
  store %nyx_string* %line.param, %nyx_string** %line.ptr
  %1559 = call { i64, i8* }* @nyx_array_new_ptr()
  %1560 = alloca { i64, i8* }*
  store { i64, i8* }* %1559, { i64, i8* }** %1560
  %1561 = alloca i64
  store i64 0, i64* %1561
  %1562 = alloca i64
  store i64 0, i64* %1562
  %1563 = call i8* @llvm.stacksave()
  br label %while_cond338
while_cond338:
  %1564 = load i64, i64* %1562
  %1565 = load %nyx_string*, %nyx_string** %line.ptr
  %1566 = call i64 @nyx_string_byte_length(%nyx_string* %1565)
  %1567 = icmp slt i64 %1564, %1566
  br i1 %1567, label %while_body339, label %while_end340
while_body339:
  call void @llvm.stackrestore(i8* %1563)
  %1568 = load %nyx_string*, %nyx_string** %line.ptr
  %1569 = load i64, i64* %1562
  %1570 = call i8 @nyx_string_char_at(%nyx_string* %1568, i64 %1569)
  %1571 = zext i8 %1570 to i64
  %1572 = icmp eq i64 %1571, 9
  br i1 %1572, label %then341, label %else342
then341:
  %1573 = load { i64, i8* }*, { i64, i8* }** %1560
  %1574 = load %nyx_string*, %nyx_string** %line.ptr
  %1575 = load i64, i64* %1561
  %1576 = load i64, i64* %1562
  %1577 = call %nyx_string* @nyx_string_substring(%nyx_string* %1574, i64 %1575, i64 %1576)
  %1578 = ptrtoint %nyx_string* %1577 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1573, i64 %1578, i64 2)
  %1579 = load i64, i64* %1562
  %1580 = add i64 %1579, 1
  store i64 %1580, i64* %1561
  br label %merge343
else342:
  br label %merge343
merge343:
  %1581 = load i64, i64* %1562
  %1582 = add i64 %1581, 1
  store i64 %1582, i64* %1562
  br label %while_cond338
while_end340:
  %1583 = load { i64, i8* }*, { i64, i8* }** %1560
  %1584 = load %nyx_string*, %nyx_string** %line.ptr
  %1585 = load i64, i64* %1561
  %1586 = load %nyx_string*, %nyx_string** %line.ptr
  %1587 = call i64 @nyx_string_byte_length(%nyx_string* %1586)
  %1588 = call %nyx_string* @nyx_string_substring(%nyx_string* %1584, i64 %1585, i64 %1587)
  %1589 = ptrtoint %nyx_string* %1588 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1583, i64 %1589, i64 2)
  %1590 = load { i64, i8* }*, { i64, i8* }** %1560
  ret { i64, i8* }* %1590
}

define internal %nyx_string* @cov_pad(
i64 %n.param) {
  %n.ptr = alloca i64
  store i64 %n.param, i64* %n.ptr
  %1591 = load i64, i64* %n.ptr
  %1592 = call %nyx_string* @nyx_string_from_int(i64 %1591)
  %1593 = alloca %nyx_string*
  store %nyx_string* %1592, %nyx_string** %1593
  %1594 = getelementptr [2 x i8], [2 x i8]* @.str141, i32 0, i32 0
  %1595 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str141.c, i8* %1594, i64 1)
  %1596 = alloca %nyx_string*
  store %nyx_string* %1595, %nyx_string** %1596
  %1597 = call i8* @llvm.stacksave()
  br label %while_cond344
while_cond344:
  %1598 = load %nyx_string*, %nyx_string** %1593
  %1599 = call i64 @nyx_string_byte_length(%nyx_string* %1598)
  %1600 = icmp slt i64 %1599, 9
  br i1 %1600, label %while_body345, label %while_end346
while_body345:
  call void @llvm.stackrestore(i8* %1597)
  %1601 = load %nyx_string*, %nyx_string** %1596
  %1602 = load %nyx_string*, %nyx_string** %1593
  %1603 = call %nyx_string* @nyx_string_concat(%nyx_string* %1601, %nyx_string* %1602)
  store %nyx_string* %1603, %nyx_string** %1593
  br label %while_cond344
while_end346:
  %1604 = load %nyx_string*, %nyx_string** %1593
  ret %nyx_string* %1604
}

define internal i8* @cov_called_from_show(
%nyx_string* %show.param) {
  %show.ptr = alloca %nyx_string*
  store %nyx_string* %show.param, %nyx_string** %show.ptr
  %1605 = call i8* @nyx_map_new(i32 0)
  %1606 = alloca i8*
  store i8* %1605, i8** %1606
  %1607 = load %nyx_string*, %nyx_string** %show.ptr
  %1608 = getelementptr [2 x i8], [2 x i8]* @.str142, i32 0, i32 0
  %1609 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str142.c, i8* %1608, i64 1)
  %1610 = call { i64, i8* }* @nyx_string_split(%nyx_string* %1607, %nyx_string* %1609)
  %1611 = alloca { i64, i8* }*
  store { i64, i8* }* %1610, { i64, i8* }** %1611
  %1612 = getelementptr [1 x i8], [1 x i8]* @.str143, i32 0, i32 0
  %1613 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str143.c, i8* %1612, i64 0)
  %1614 = alloca %nyx_string*
  store %nyx_string* %1613, %nyx_string** %1614
  %1615 = alloca i64
  store i64 0, i64* %1615
  %1616 = getelementptr [3 x i8], [3 x i8]* @.str144, i32 0, i32 0
  %1617 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str144.c, i8* %1616, i64 2)
  %1618 = alloca %nyx_string*
  store %nyx_string* %1617, %nyx_string** %1618
  %1619 = getelementptr [4 x i8], [4 x i8]* @.str145, i32 0, i32 0
  %1620 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str145.c, i8* %1619, i64 3)
  %1621 = alloca %nyx_string*
  store %nyx_string* %1620, %nyx_string** %1621
  %1622 = getelementptr [2 x i8], [2 x i8]* @.str146, i32 0, i32 0
  %1623 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str146.c, i8* %1622, i64 1)
  %1624 = alloca %nyx_string*
  store %nyx_string* %1623, %nyx_string** %1624
  %1625 = getelementptr [2 x i8], [2 x i8]* @.str147, i32 0, i32 0
  %1626 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str147.c, i8* %1625, i64 1)
  %1627 = alloca %nyx_string*
  store %nyx_string* %1626, %nyx_string** %1627
  %1628 = getelementptr [1 x i8], [1 x i8]* @.str148, i32 0, i32 0
  %1629 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str148.c, i8* %1628, i64 0)
  %1630 = alloca %nyx_string*
  store %nyx_string* %1629, %nyx_string** %1630
  %1631 = getelementptr [14 x i8], [14 x i8]* @.str149, i32 0, i32 0
  %1632 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str149.c, i8* %1631, i64 13)
  %1633 = alloca %nyx_string*
  store %nyx_string* %1632, %nyx_string** %1633
  %1634 = getelementptr [2 x i8], [2 x i8]* @.str150, i32 0, i32 0
  %1635 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str150.c, i8* %1634, i64 1)
  %1636 = alloca %nyx_string*
  store %nyx_string* %1635, %nyx_string** %1636
  %1637 = getelementptr [2 x i8], [2 x i8]* @.str151, i32 0, i32 0
  %1638 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str151.c, i8* %1637, i64 1)
  %1639 = alloca %nyx_string*
  store %nyx_string* %1638, %nyx_string** %1639
  %1640 = getelementptr [2 x i8], [2 x i8]* @.str152, i32 0, i32 0
  %1641 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str152.c, i8* %1640, i64 1)
  %1642 = alloca %nyx_string*
  store %nyx_string* %1641, %nyx_string** %1642
  %1643 = getelementptr [2 x i8], [2 x i8]* @.str153, i32 0, i32 0
  %1644 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str153.c, i8* %1643, i64 1)
  %1645 = alloca %nyx_string*
  store %nyx_string* %1644, %nyx_string** %1645
  %1646 = call i8* @llvm.stacksave()
  br label %while_cond347
while_cond347:
  %1647 = load i64, i64* %1615
  %1648 = load { i64, i8* }*, { i64, i8* }** %1611
  %1649 = call i64 @nyx_array_length({ i64, i8* }* %1648)
  %1650 = icmp slt i64 %1647, %1649
  br i1 %1650, label %while_body348, label %while_end349
while_body348:
  call void @llvm.stackrestore(i8* %1646)
  %1651 = load { i64, i8* }*, { i64, i8* }** %1611
  %1652 = load i64, i64* %1615
  %1653 = call i64 @nyx_array_get_checked({ i64, i8* }* %1651, i64 %1652, i64 2)
  %1654 = inttoptr i64 %1653 to %nyx_string*
  %1655 = alloca %nyx_string*
  store %nyx_string* %1654, %nyx_string** %1655
  %1656 = alloca i1
  store i1 false, i1* %1656
  %1657 = alloca i1
  store i1 false, i1* %1657
  %1658 = load %nyx_string*, %nyx_string** %1655
  %1659 = load %nyx_string*, %nyx_string** %1618
  %1660 = call i1 @nyx_string_starts_with(%nyx_string* %1658, %nyx_string* %1659)
  br i1 %1660, label %sc_and_rhs350, label %sc_and_end351
sc_and_rhs350:
  %1661 = load %nyx_string*, %nyx_string** %1655
  %1662 = load %nyx_string*, %nyx_string** %1621
  %1663 = call i1 @nyx_string_starts_with(%nyx_string* %1661, %nyx_string* %1662)
  %1664 = xor i1 %1663, true
  store i1 %1664, i1* %1657
  br label %sc_and_end351
sc_and_end351:
  %1665 = load i1, i1* %1657
  br i1 %1665, label %sc_and_rhs352, label %sc_and_end353
sc_and_rhs352:
  %1666 = load %nyx_string*, %nyx_string** %1655
  %1667 = load %nyx_string*, %nyx_string** %1624
  %1668 = call i1 @nyx_string_ends_with(%nyx_string* %1666, %nyx_string* %1667)
  store i1 %1668, i1* %1656
  br label %sc_and_end353
sc_and_end353:
  %1669 = load i1, i1* %1656
  br i1 %1669, label %then354, label %else355
then354:
  %1670 = load %nyx_string*, %nyx_string** %1655
  %1671 = load %nyx_string*, %nyx_string** %1655
  %1672 = call i64 @nyx_string_byte_length(%nyx_string* %1671)
  %1673 = sub i64 %1672, 1
  %1674 = call %nyx_string* @nyx_string_substring(%nyx_string* %1670, i64 2, i64 %1673)
  %1675 = alloca %nyx_string*
  store %nyx_string* %1674, %nyx_string** %1675
  %1676 = load %nyx_string*, %nyx_string** %1675
  %1677 = load %nyx_string*, %nyx_string** %1627
  %1678 = call i64 @nyx_string_index_of(%nyx_string* %1676, %nyx_string* %1677)
  %1679 = alloca i64
  store i64 %1678, i64* %1679
  %1680 = load i64, i64* %1679
  %1681 = icmp sge i64 %1680, 0
  br i1 %1681, label %then357, label %else358
then357:
  %1682 = load %nyx_string*, %nyx_string** %1675
  %1683 = load i64, i64* %1679
  %1684 = add i64 %1683, 1
  %1685 = load %nyx_string*, %nyx_string** %1675
  %1686 = call i64 @nyx_string_byte_length(%nyx_string* %1685)
  %1687 = call %nyx_string* @nyx_string_substring(%nyx_string* %1682, i64 %1684, i64 %1686)
  store %nyx_string* %1687, %nyx_string** %1675
  br label %merge359
else358:
  br label %merge359
merge359:
  %1688 = load %nyx_string*, %nyx_string** %1675
  store %nyx_string* %1688, %nyx_string** %1614
  br label %merge356
else355:
  %1689 = alloca i1
  store i1 false, i1* %1689
  %1690 = load %nyx_string*, %nyx_string** %1614
  %1691 = load %nyx_string*, %nyx_string** %1630
  %1692 = call i1 @nyx_string_equals(%nyx_string* %1690, %nyx_string* %1691)
  %1693 = xor i1 %1692, true
  br i1 %1693, label %sc_and_rhs360, label %sc_and_end361
sc_and_rhs360:
  %1694 = load %nyx_string*, %nyx_string** %1655
  %1695 = load %nyx_string*, %nyx_string** %1633
  %1696 = call i1 @nyx_string_contains(%nyx_string* %1694, %nyx_string* %1695)
  store i1 %1696, i1* %1689
  br label %sc_and_end361
sc_and_end361:
  %1697 = load i1, i1* %1689
  br i1 %1697, label %then362, label %else363
then362:
  %1698 = load %nyx_string*, %nyx_string** %1655
  %1699 = load %nyx_string*, %nyx_string** %1636
  %1700 = call i64 @nyx_string_index_of(%nyx_string* %1698, %nyx_string* %1699)
  %1701 = alloca i64
  store i64 %1700, i64* %1701
  %1702 = load %nyx_string*, %nyx_string** %1655
  %1703 = load %nyx_string*, %nyx_string** %1639
  %1704 = call i64 @nyx_string_index_of(%nyx_string* %1702, %nyx_string* %1703)
  %1705 = alloca i64
  store i64 %1704, i64* %1705
  %1706 = alloca i1
  store i1 false, i1* %1706
  %1707 = load i64, i64* %1701
  %1708 = icmp sge i64 %1707, 0
  br i1 %1708, label %sc_and_rhs365, label %sc_and_end366
sc_and_rhs365:
  %1709 = load i64, i64* %1705
  %1710 = load i64, i64* %1701
  %1711 = icmp sgt i64 %1709, %1710
  store i1 %1711, i1* %1706
  br label %sc_and_end366
sc_and_end366:
  %1712 = load i1, i1* %1706
  br i1 %1712, label %then367, label %else368
then367:
  %1713 = load %nyx_string*, %nyx_string** %1655
  %1714 = load i64, i64* %1701
  %1715 = add i64 %1714, 1
  %1716 = load i64, i64* %1705
  %1717 = call %nyx_string* @nyx_string_substring(%nyx_string* %1713, i64 %1715, i64 %1716)
  %1718 = load %nyx_string*, %nyx_string** %1642
  %1719 = call { i64, i8* }* @nyx_string_split(%nyx_string* %1717, %nyx_string* %1718)
  %1720 = alloca { i64, i8* }*
  store { i64, i8* }* %1719, { i64, i8* }** %1720
  %1721 = alloca i64
  store i64 0, i64* %1721
  %1722 = call i8* @llvm.stacksave()
  br label %while_cond370
while_cond370:
  %1723 = load i64, i64* %1721
  %1724 = load { i64, i8* }*, { i64, i8* }** %1720
  %1725 = call i64 @nyx_array_length({ i64, i8* }* %1724)
  %1726 = icmp slt i64 %1723, %1725
  br i1 %1726, label %while_body371, label %while_end372
while_body371:
  call void @llvm.stackrestore(i8* %1722)
  %1727 = load { i64, i8* }*, { i64, i8* }** %1720
  %1728 = load i64, i64* %1721
  %1729 = call i64 @nyx_array_get_checked({ i64, i8* }* %1727, i64 %1728, i64 2)
  %1730 = inttoptr i64 %1729 to %nyx_string*
  %1731 = alloca %nyx_string*
  store %nyx_string* %1730, %nyx_string** %1731
  %1732 = load %nyx_string*, %nyx_string** %1731
  %1733 = call %nyx_string* @nyx_string_trim(%nyx_string* %1732)
  %1734 = call i64 @nyx_string_to_int(%nyx_string* %1733)
  %1735 = icmp sgt i64 %1734, 0
  br i1 %1735, label %then373, label %else374
then373:
  %1736 = load i8*, i8** %1606
  %1737 = load %nyx_string*, %nyx_string** %1614
  %1738 = load %nyx_string*, %nyx_string** %1645
  %1739 = call i8* @nyx_string_to_cstr(%nyx_string* %1737)
  %1740 = call i8* @nyx_string_to_cstr(%nyx_string* %1738)
  call void @nyx_map_insert_str(i8* %1736, i8* %1739, i8* %1740)
  br label %merge375
else374:
  br label %merge375
merge375:
  %1741 = load i64, i64* %1721
  %1742 = add i64 %1741, 1
  store i64 %1742, i64* %1721
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
  %1743 = load i64, i64* %1615
  %1744 = add i64 %1743, 1
  store i64 %1744, i64* %1615
  br label %while_cond347
while_end349:
  %1745 = load i8*, i8** %1606
  ret i8* %1745
}

define internal { i64, i8* }* @cov_src_modules(
) {
  %1746 = call { i64, i8* }* @nyx_array_new_ptr()
  %1747 = alloca { i64, i8* }*
  store { i64, i8* }* %1746, { i64, i8* }** %1747
  %1748 = getelementptr [4 x i8], [4 x i8]* @.str154, i32 0, i32 0
  %1749 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str154.c, i8* %1748, i64 3)
  %1750 = call i8* @nyx_string_to_cstr(%nyx_string* %1749)
  %1751 = call i1 @nyx_file_exists(i8* %1750)
  %1752 = xor i1 %1751, true
  br i1 %1752, label %then376, label %else377
then376:
  %1753 = load { i64, i8* }*, { i64, i8* }** %1747
  ret { i64, i8* }* %1753
else377:
  br label %merge378
merge378:
  %1754 = getelementptr [50 x i8], [50 x i8]* @.str155, i32 0, i32 0
  %1755 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str155.c, i8* %1754, i64 49)
  %1756 = call i8* @nyx_string_to_cstr(%nyx_string* %1755)
  %1757 = call %nyx_string* @nyx_exec(i8* %1756)
  %1758 = alloca %nyx_string*
  store %nyx_string* %1757, %nyx_string** %1758
  %1759 = load %nyx_string*, %nyx_string** %1758
  %1760 = getelementptr [2 x i8], [2 x i8]* @.str156, i32 0, i32 0
  %1761 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str156.c, i8* %1760, i64 1)
  %1762 = call { i64, i8* }* @nyx_string_split(%nyx_string* %1759, %nyx_string* %1761)
  %1763 = alloca { i64, i8* }*
  store { i64, i8* }* %1762, { i64, i8* }** %1763
  %1764 = alloca i64
  store i64 0, i64* %1764
  %1765 = getelementptr [4 x i8], [4 x i8]* @.str157, i32 0, i32 0
  %1766 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str157.c, i8* %1765, i64 3)
  %1767 = alloca %nyx_string*
  store %nyx_string* %1766, %nyx_string** %1767
  %1768 = getelementptr [9 x i8], [9 x i8]* @.str158, i32 0, i32 0
  %1769 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str158.c, i8* %1768, i64 8)
  %1770 = alloca %nyx_string*
  store %nyx_string* %1769, %nyx_string** %1770
  %1771 = call i8* @llvm.stacksave()
  br label %while_cond379
while_cond379:
  %1772 = load i64, i64* %1764
  %1773 = load { i64, i8* }*, { i64, i8* }** %1763
  %1774 = call i64 @nyx_array_length({ i64, i8* }* %1773)
  %1775 = icmp slt i64 %1772, %1774
  br i1 %1775, label %while_body380, label %while_end381
while_body380:
  call void @llvm.stackrestore(i8* %1771)
  %1776 = load { i64, i8* }*, { i64, i8* }** %1763
  %1777 = load i64, i64* %1764
  %1778 = call i64 @nyx_array_get_checked({ i64, i8* }* %1776, i64 %1777, i64 2)
  %1779 = inttoptr i64 %1778 to %nyx_string*
  %1780 = alloca %nyx_string*
  store %nyx_string* %1779, %nyx_string** %1780
  %1781 = load %nyx_string*, %nyx_string** %1780
  %1782 = call %nyx_string* @nyx_string_trim(%nyx_string* %1781)
  %1783 = alloca %nyx_string*
  store %nyx_string* %1782, %nyx_string** %1783
  %1784 = alloca i1
  store i1 false, i1* %1784
  %1785 = load %nyx_string*, %nyx_string** %1783
  %1786 = load %nyx_string*, %nyx_string** %1767
  %1787 = call i1 @nyx_string_ends_with(%nyx_string* %1785, %nyx_string* %1786)
  br i1 %1787, label %sc_and_rhs382, label %sc_and_end383
sc_and_rhs382:
  %1788 = load %nyx_string*, %nyx_string** %1783
  %1789 = load %nyx_string*, %nyx_string** %1770
  %1790 = call i1 @nyx_string_ends_with(%nyx_string* %1788, %nyx_string* %1789)
  %1791 = xor i1 %1790, true
  store i1 %1791, i1* %1784
  br label %sc_and_end383
sc_and_end383:
  %1792 = load i1, i1* %1784
  br i1 %1792, label %then384, label %else385
then384:
  %1793 = load { i64, i8* }*, { i64, i8* }** %1747
  %1794 = load %nyx_string*, %nyx_string** %1783
  %1795 = load %nyx_string*, %nyx_string** %1783
  %1796 = call i64 @nyx_string_byte_length(%nyx_string* %1795)
  %1797 = sub i64 %1796, 3
  %1798 = call %nyx_string* @nyx_string_substring(%nyx_string* %1794, i64 0, i64 %1797)
  %1799 = ptrtoint %nyx_string* %1798 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1793, i64 %1799, i64 2)
  br label %merge386
else385:
  br label %merge386
merge386:
  %1800 = load i64, i64* %1764
  %1801 = add i64 %1800, 1
  store i64 %1801, i64* %1764
  br label %while_cond379
while_end381:
  %1802 = load { i64, i8* }*, { i64, i8* }** %1747
  ret { i64, i8* }* %1802
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
  %1803 = getelementptr [1 x i8], [1 x i8]* @.str159, i32 0, i32 0
  %1804 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str159.c, i8* %1803, i64 0)
  %1805 = alloca %nyx_string*
  store %nyx_string* %1804, %nyx_string** %1805
  %1806 = alloca i64
  store i64 0, i64* %1806
  %1807 = getelementptr [9 x i8], [9 x i8]* @.str160, i32 0, i32 0
  %1808 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str160.c, i8* %1807, i64 8)
  %1809 = alloca %nyx_string*
  store %nyx_string* %1808, %nyx_string** %1809
  %1810 = getelementptr [3 x i8], [3 x i8]* @.str161, i32 0, i32 0
  %1811 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str161.c, i8* %1810, i64 2)
  %1812 = alloca %nyx_string*
  store %nyx_string* %1811, %nyx_string** %1812
  %1813 = call i8* @llvm.stacksave()
  br label %while_cond387
while_cond387:
  %1814 = load i64, i64* %1806
  %1815 = load { i64, i8* }*, { i64, i8* }** %mods.ptr
  %1816 = call i64 @nyx_array_length({ i64, i8* }* %1815)
  %1817 = icmp slt i64 %1814, %1816
  br i1 %1817, label %while_body388, label %while_end389
while_body388:
  call void @llvm.stackrestore(i8* %1813)
  %1818 = load { i64, i8* }*, { i64, i8* }** %mods.ptr
  %1819 = load i64, i64* %1806
  %1820 = call i64 @nyx_array_get_checked({ i64, i8* }* %1818, i64 %1819, i64 2)
  %1821 = inttoptr i64 %1820 to %nyx_string*
  %1822 = alloca %nyx_string*
  store %nyx_string* %1821, %nyx_string** %1822
  %1823 = load %nyx_string*, %nyx_string** %1805
  %1824 = load %nyx_string*, %nyx_string** %1809
  %1825 = call %nyx_string* @nyx_string_concat(%nyx_string* %1823, %nyx_string* %1824)
  %1826 = load %nyx_string*, %nyx_string** %1822
  %1827 = call %nyx_string* @nyx_string_concat(%nyx_string* %1825, %nyx_string* %1826)
  %1828 = load %nyx_string*, %nyx_string** %1812
  %1829 = call %nyx_string* @nyx_string_concat(%nyx_string* %1827, %nyx_string* %1828)
  store %nyx_string* %1829, %nyx_string** %1805
  %1830 = load i64, i64* %1806
  %1831 = add i64 %1830, 1
  store i64 %1831, i64* %1806
  br label %while_cond387
while_end389:
  %1832 = load %nyx_string*, %nyx_string** %1805
  %1833 = getelementptr [36 x i8], [36 x i8]* @.str162, i32 0, i32 0
  %1834 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str162.c, i8* %1833, i64 35)
  %1835 = call %nyx_string* @nyx_string_concat(%nyx_string* %1832, %nyx_string* %1834)
  store %nyx_string* %1835, %nyx_string** %1805
  %1836 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %1837 = getelementptr [13 x i8], [13 x i8]* @.str163, i32 0, i32 0
  %1838 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str163.c, i8* %1837, i64 12)
  %1839 = call %nyx_string* @nyx_string_concat(%nyx_string* %1836, %nyx_string* %1838)
  %1840 = load %nyx_string*, %nyx_string** %1805
  %1841 = call i8* @nyx_string_to_cstr(%nyx_string* %1839)
  %1842 = call i1 @nyx_write_file_safe(i8* %1841, %nyx_string* %1840)
  %1843 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %1844 = getelementptr [14 x i8], [14 x i8]* @.str164, i32 0, i32 0
  %1845 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str164.c, i8* %1844, i64 13)
  %1846 = call %nyx_string* @nyx_string_concat(%nyx_string* %1843, %nyx_string* %1845)
  %1847 = alloca %nyx_string*
  store %nyx_string* %1846, %nyx_string** %1847
  %1848 = getelementptr [13 x i8], [13 x i8]* @.str165, i32 0, i32 0
  %1849 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str165.c, i8* %1848, i64 12)
  %1850 = getelementptr [8 x i8], [8 x i8]* @.str166, i32 0, i32 0
  %1851 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str166.c, i8* %1850, i64 7)
  %1852 = call %nyx_string* @nyx_string_concat(%nyx_string* %1849, %nyx_string* %1851)
  %1853 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %1854 = call %nyx_string* @nyx_string_concat(%nyx_string* %1852, %nyx_string* %1853)
  %1855 = getelementptr [19 x i8], [19 x i8]* @.str167, i32 0, i32 0
  %1856 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str167.c, i8* %1855, i64 18)
  %1857 = call %nyx_string* @nyx_string_concat(%nyx_string* %1854, %nyx_string* %1856)
  %1858 = getelementptr [5 x i8], [5 x i8]* @.str168, i32 0, i32 0
  %1859 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str168.c, i8* %1858, i64 4)
  %1860 = call %nyx_string* @nyx_string_concat(%nyx_string* %1857, %nyx_string* %1859)
  %1861 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %1862 = call %nyx_string* @nyx_string_concat(%nyx_string* %1860, %nyx_string* %1861)
  %1863 = getelementptr [24 x i8], [24 x i8]* @.str169, i32 0, i32 0
  %1864 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str169.c, i8* %1863, i64 23)
  %1865 = call %nyx_string* @nyx_string_concat(%nyx_string* %1862, %nyx_string* %1864)
  %1866 = getelementptr [5 x i8], [5 x i8]* @.str170, i32 0, i32 0
  %1867 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str170.c, i8* %1866, i64 4)
  %1868 = call %nyx_string* @nyx_string_concat(%nyx_string* %1865, %nyx_string* %1867)
  %1869 = load %nyx_string*, %nyx_string** %nyx_home.ptr
  %1870 = call %nyx_string* @nyx_string_concat(%nyx_string* %1868, %nyx_string* %1869)
  %1871 = getelementptr [3 x i8], [3 x i8]* @.str171, i32 0, i32 0
  %1872 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str171.c, i8* %1871, i64 2)
  %1873 = call %nyx_string* @nyx_string_concat(%nyx_string* %1870, %nyx_string* %1872)
  %1874 = getelementptr [43 x i8], [43 x i8]* @.str172, i32 0, i32 0
  %1875 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str172.c, i8* %1874, i64 42)
  %1876 = call %nyx_string* @nyx_string_concat(%nyx_string* %1873, %nyx_string* %1875)
  %1877 = load %nyx_string*, %nyx_string** %orig_dir.ptr
  %1878 = call %nyx_string* @nyx_string_concat(%nyx_string* %1876, %nyx_string* %1877)
  %1879 = getelementptr [38 x i8], [38 x i8]* @.str173, i32 0, i32 0
  %1880 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str173.c, i8* %1879, i64 37)
  %1881 = call %nyx_string* @nyx_string_concat(%nyx_string* %1878, %nyx_string* %1880)
  %1882 = load %nyx_string*, %nyx_string** %1847
  %1883 = call %nyx_string* @nyx_string_concat(%nyx_string* %1881, %nyx_string* %1882)
  %1884 = getelementptr [22 x i8], [22 x i8]* @.str174, i32 0, i32 0
  %1885 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str174.c, i8* %1884, i64 21)
  %1886 = call %nyx_string* @nyx_string_concat(%nyx_string* %1883, %nyx_string* %1885)
  %1887 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %1888 = call %nyx_string* @nyx_string_concat(%nyx_string* %1886, %nyx_string* %1887)
  %1889 = getelementptr [21 x i8], [21 x i8]* @.str175, i32 0, i32 0
  %1890 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str175.c, i8* %1889, i64 20)
  %1891 = call %nyx_string* @nyx_string_concat(%nyx_string* %1888, %nyx_string* %1890)
  %1892 = getelementptr [7 x i8], [7 x i8]* @.str176, i32 0, i32 0
  %1893 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str176.c, i8* %1892, i64 6)
  %1894 = call %nyx_string* @nyx_string_concat(%nyx_string* %1891, %nyx_string* %1893)
  %1895 = getelementptr [17 x i8], [17 x i8]* @.str177, i32 0, i32 0
  %1896 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str177.c, i8* %1895, i64 16)
  %1897 = call %nyx_string* @nyx_string_concat(%nyx_string* %1894, %nyx_string* %1896)
  %1898 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %1899 = call %nyx_string* @nyx_string_concat(%nyx_string* %1897, %nyx_string* %1898)
  %1900 = getelementptr [19 x i8], [19 x i8]* @.str178, i32 0, i32 0
  %1901 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str178.c, i8* %1900, i64 18)
  %1902 = call %nyx_string* @nyx_string_concat(%nyx_string* %1899, %nyx_string* %1901)
  %1903 = getelementptr [10 x i8], [10 x i8]* @.str179, i32 0, i32 0
  %1904 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str179.c, i8* %1903, i64 9)
  %1905 = call %nyx_string* @nyx_string_concat(%nyx_string* %1902, %nyx_string* %1904)
  %1906 = alloca %nyx_string*
  store %nyx_string* %1905, %nyx_string** %1906
  %1907 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %1908 = getelementptr [13 x i8], [13 x i8]* @.str180, i32 0, i32 0
  %1909 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str180.c, i8* %1908, i64 12)
  %1910 = call %nyx_string* @nyx_string_concat(%nyx_string* %1907, %nyx_string* %1909)
  %1911 = load %nyx_string*, %nyx_string** %1906
  %1912 = call i8* @nyx_string_to_cstr(%nyx_string* %1910)
  %1913 = call i1 @nyx_write_file_safe(i8* %1912, %nyx_string* %1911)
  %1914 = getelementptr [7 x i8], [7 x i8]* @.str181, i32 0, i32 0
  %1915 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str181.c, i8* %1914, i64 6)
  %1916 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %1917 = call %nyx_string* @nyx_string_concat(%nyx_string* %1915, %nyx_string* %1916)
  %1918 = getelementptr [14 x i8], [14 x i8]* @.str182, i32 0, i32 0
  %1919 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str182.c, i8* %1918, i64 13)
  %1920 = call %nyx_string* @nyx_string_concat(%nyx_string* %1917, %nyx_string* %1919)
  %1921 = call i8* @nyx_string_to_cstr(%nyx_string* %1920)
  %1922 = call i64 @nyx_exec_code(i8* %1921)
  %1923 = load %nyx_string*, %nyx_string** %1847
  ret %nyx_string* %1923
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
  %1924 = getelementptr [9 x i8], [9 x i8]* @.str183, i32 0, i32 0
  %1925 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str183.c, i8* %1924, i64 8)
  %1926 = call i8* @nyx_string_to_cstr(%nyx_string* %1925)
  %1927 = call %nyx_string* @nyx_getenv(i8* %1926)
  %1928 = alloca %nyx_string*
  store %nyx_string* %1927, %nyx_string** %1928
  %1929 = getelementptr [4 x i8], [4 x i8]* @.str184, i32 0, i32 0
  %1930 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str184.c, i8* %1929, i64 3)
  %1931 = call i8* @nyx_string_to_cstr(%nyx_string* %1930)
  %1932 = call %nyx_string* @nyx_getenv(i8* %1931)
  %1933 = alloca %nyx_string*
  store %nyx_string* %1932, %nyx_string** %1933
  %1934 = getelementptr [1 x i8], [1 x i8]* @.str185, i32 0, i32 0
  %1935 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str185.c, i8* %1934, i64 0)
  %1936 = call i8* @nyx_string_to_cstr(%nyx_string* %1935)
  call void @nyx_print_string(i8* %1936)
  %1937 = getelementptr [36 x i8], [36 x i8]* @.str186, i32 0, i32 0
  %1938 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str186.c, i8* %1937, i64 35)
  %1939 = call i8* @nyx_string_to_cstr(%nyx_string* %1938)
  call void @nyx_print_string(i8* %1939)
  %1940 = getelementptr [1 x i8], [1 x i8]* @.str187, i32 0, i32 0
  %1941 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str187.c, i8* %1940, i64 0)
  %1942 = alloca %nyx_string*
  store %nyx_string* %1941, %nyx_string** %1942
  %1943 = alloca i64
  store i64 0, i64* %1943
  %1944 = call i8* @nyx_map_new(i32 0)
  %1945 = alloca i8*
  store i8* %1944, i8** %1945
  %1946 = call { i64, i8* }* @nyx_array_new_ptr()
  %1947 = alloca { i64, i8* }*
  store { i64, i8* }* %1946, { i64, i8* }** %1947
  %1948 = alloca i64
  store i64 0, i64* %1948
  %1949 = getelementptr [2 x i8], [2 x i8]* @.str188, i32 0, i32 0
  %1950 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str188.c, i8* %1949, i64 1)
  %1951 = alloca %nyx_string*
  store %nyx_string* %1950, %nyx_string** %1951
  %1952 = getelementptr [9 x i8], [9 x i8]* @.str189, i32 0, i32 0
  %1953 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str189.c, i8* %1952, i64 8)
  %1954 = alloca %nyx_string*
  store %nyx_string* %1953, %nyx_string** %1954
  %1955 = getelementptr [3 x i8], [3 x i8]* @.str190, i32 0, i32 0
  %1956 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str190.c, i8* %1955, i64 2)
  %1957 = alloca %nyx_string*
  store %nyx_string* %1956, %nyx_string** %1957
  %1958 = getelementptr [2 x i8], [2 x i8]* @.str191, i32 0, i32 0
  %1959 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str191.c, i8* %1958, i64 1)
  %1960 = alloca %nyx_string*
  store %nyx_string* %1959, %nyx_string** %1960
  %1961 = getelementptr [2 x i8], [2 x i8]* @.str192, i32 0, i32 0
  %1962 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str192.c, i8* %1961, i64 1)
  %1963 = alloca %nyx_string*
  store %nyx_string* %1962, %nyx_string** %1963
  %1964 = call i8* @llvm.stacksave()
  br label %while_cond390
while_cond390:
  %1965 = load i64, i64* %1948
  %1966 = load { i64, i8* }*, { i64, i8* }** %run_files.ptr
  %1967 = call i64 @nyx_array_length({ i64, i8* }* %1966)
  %1968 = icmp slt i64 %1965, %1967
  br i1 %1968, label %while_body391, label %while_end392
while_body391:
  call void @llvm.stackrestore(i8* %1964)
  %1969 = load { i64, i8* }*, { i64, i8* }** %run_idx.ptr
  %1970 = load i64, i64* %1948
  %1971 = call i64 @nyx_array_get_checked({ i64, i8* }* %1969, i64 %1970, i64 2)
  %1972 = inttoptr i64 %1971 to %nyx_string*
  %1973 = alloca %nyx_string*
  store %nyx_string* %1972, %nyx_string** %1973
  %1974 = load { i64, i8* }*, { i64, i8* }** %run_files.ptr
  %1975 = load i64, i64* %1948
  %1976 = call i64 @nyx_array_get_checked({ i64, i8* }* %1974, i64 %1975, i64 2)
  %1977 = inttoptr i64 %1976 to %nyx_string*
  %1978 = alloca %nyx_string*
  store %nyx_string* %1977, %nyx_string** %1978
  %1979 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %1980 = load %nyx_string*, %nyx_string** %1951
  %1981 = call %nyx_string* @nyx_string_concat(%nyx_string* %1979, %nyx_string* %1980)
  %1982 = load %nyx_string*, %nyx_string** %1973
  %1983 = call %nyx_string* @nyx_string_concat(%nyx_string* %1981, %nyx_string* %1982)
  %1984 = load %nyx_string*, %nyx_string** %1954
  %1985 = call %nyx_string* @nyx_string_concat(%nyx_string* %1983, %nyx_string* %1984)
  %1986 = alloca %nyx_string*
  store %nyx_string* %1985, %nyx_string** %1986
  %1987 = load %nyx_string*, %nyx_string** %1986
  %1988 = call i1 @cov_profraw_valid(%nyx_string* %1987)
  br i1 %1988, label %then393, label %else394
then393:
  %1989 = load %nyx_string*, %nyx_string** %1942
  %1990 = load %nyx_string*, %nyx_string** %1957
  %1991 = call %nyx_string* @nyx_string_concat(%nyx_string* %1989, %nyx_string* %1990)
  %1992 = load %nyx_string*, %nyx_string** %1986
  %1993 = call %nyx_string* @nyx_string_concat(%nyx_string* %1991, %nyx_string* %1992)
  %1994 = load %nyx_string*, %nyx_string** %1960
  %1995 = call %nyx_string* @nyx_string_concat(%nyx_string* %1993, %nyx_string* %1994)
  store %nyx_string* %1995, %nyx_string** %1942
  %1996 = load i64, i64* %1943
  %1997 = add i64 %1996, 1
  store i64 %1997, i64* %1943
  %1998 = load i8*, i8** %1945
  %1999 = load %nyx_string*, %nyx_string** %1973
  %2000 = load %nyx_string*, %nyx_string** %1963
  %2001 = call i8* @nyx_string_to_cstr(%nyx_string* %1999)
  %2002 = call i8* @nyx_string_to_cstr(%nyx_string* %2000)
  call void @nyx_map_insert_str(i8* %1998, i8* %2001, i8* %2002)
  br label %merge395
else394:
  %2003 = load { i64, i8* }*, { i64, i8* }** %1947
  %2004 = load %nyx_string*, %nyx_string** %1978
  %2005 = ptrtoint %nyx_string* %2004 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2003, i64 %2005, i64 2)
  br label %merge395
merge395:
  %2006 = load i64, i64* %1948
  %2007 = add i64 %2006, 1
  store i64 %2007, i64* %1948
  br label %while_cond390
while_end392:
  %2008 = call i8* @nyx_map_new(i32 0)
  %2009 = alloca i8*
  store i8* %2008, i8** %2009
  %2010 = load i64, i64* %1943
  %2011 = icmp sgt i64 %2010, 0
  br i1 %2011, label %then396, label %else397
then396:
  %2012 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2013 = getelementptr [17 x i8], [17 x i8]* @.str193, i32 0, i32 0
  %2014 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str193.c, i8* %2013, i64 16)
  %2015 = call %nyx_string* @nyx_string_concat(%nyx_string* %2012, %nyx_string* %2014)
  %2016 = alloca %nyx_string*
  store %nyx_string* %2015, %nyx_string** %2016
  %2017 = load %nyx_string*, %nyx_string** %profdata.ptr
  %2018 = getelementptr [12 x i8], [12 x i8]* @.str194, i32 0, i32 0
  %2019 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str194.c, i8* %2018, i64 11)
  %2020 = call %nyx_string* @nyx_string_concat(%nyx_string* %2017, %nyx_string* %2019)
  %2021 = load %nyx_string*, %nyx_string** %2016
  %2022 = call %nyx_string* @nyx_string_concat(%nyx_string* %2020, %nyx_string* %2021)
  %2023 = getelementptr [2 x i8], [2 x i8]* @.str195, i32 0, i32 0
  %2024 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str195.c, i8* %2023, i64 1)
  %2025 = call %nyx_string* @nyx_string_concat(%nyx_string* %2022, %nyx_string* %2024)
  %2026 = load %nyx_string*, %nyx_string** %1942
  %2027 = call %nyx_string* @nyx_string_concat(%nyx_string* %2025, %nyx_string* %2026)
  %2028 = getelementptr [5 x i8], [5 x i8]* @.str196, i32 0, i32 0
  %2029 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str196.c, i8* %2028, i64 4)
  %2030 = call %nyx_string* @nyx_string_concat(%nyx_string* %2027, %nyx_string* %2029)
  %2031 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2032 = call %nyx_string* @nyx_string_concat(%nyx_string* %2030, %nyx_string* %2031)
  %2033 = getelementptr [17 x i8], [17 x i8]* @.str197, i32 0, i32 0
  %2034 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str197.c, i8* %2033, i64 16)
  %2035 = call %nyx_string* @nyx_string_concat(%nyx_string* %2032, %nyx_string* %2034)
  %2036 = call i8* @nyx_string_to_cstr(%nyx_string* %2035)
  %2037 = call i64 @nyx_exec_code(i8* %2036)
  %2038 = alloca i64
  store i64 %2037, i64* %2038
  %2039 = load i64, i64* %2038
  %2040 = icmp ne i64 %2039, 0
  br i1 %2040, label %then399, label %else400
then399:
  %2041 = getelementptr [36 x i8], [36 x i8]* @.str198, i32 0, i32 0
  %2042 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str198.c, i8* %2041, i64 35)
  %2043 = call i8* @nyx_string_to_cstr(%nyx_string* %2042)
  call void @nyx_print_string(i8* %2043)
  %2044 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2045 = getelementptr [11 x i8], [11 x i8]* @.str199, i32 0, i32 0
  %2046 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str199.c, i8* %2045, i64 10)
  %2047 = call %nyx_string* @nyx_string_concat(%nyx_string* %2044, %nyx_string* %2046)
  %2048 = call i8* @nyx_string_to_cstr(%nyx_string* %2047)
  %2049 = call %nyx_string* @nyx_read_file(i8* %2048)
  %2050 = call i8* @nyx_string_to_cstr(%nyx_string* %2049)
  call void @nyx_print_string(i8* %2050)
  ret i64 1
else400:
  br label %merge401
merge401:
  %2051 = load %nyx_string*, %nyx_string** %profdata.ptr
  %2052 = getelementptr [33 x i8], [33 x i8]* @.str200, i32 0, i32 0
  %2053 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str200.c, i8* %2052, i64 32)
  %2054 = call %nyx_string* @nyx_string_concat(%nyx_string* %2051, %nyx_string* %2053)
  %2055 = load %nyx_string*, %nyx_string** %2016
  %2056 = call %nyx_string* @nyx_string_concat(%nyx_string* %2054, %nyx_string* %2055)
  %2057 = getelementptr [6 x i8], [6 x i8]* @.str201, i32 0, i32 0
  %2058 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str201.c, i8* %2057, i64 5)
  %2059 = call %nyx_string* @nyx_string_concat(%nyx_string* %2056, %nyx_string* %2058)
  %2060 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2061 = call %nyx_string* @nyx_string_concat(%nyx_string* %2059, %nyx_string* %2060)
  %2062 = getelementptr [16 x i8], [16 x i8]* @.str202, i32 0, i32 0
  %2063 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str202.c, i8* %2062, i64 15)
  %2064 = call %nyx_string* @nyx_string_concat(%nyx_string* %2061, %nyx_string* %2063)
  %2065 = call i8* @nyx_string_to_cstr(%nyx_string* %2064)
  %2066 = call i64 @nyx_exec_code(i8* %2065)
  %2067 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2068 = getelementptr [10 x i8], [10 x i8]* @.str203, i32 0, i32 0
  %2069 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str203.c, i8* %2068, i64 9)
  %2070 = call %nyx_string* @nyx_string_concat(%nyx_string* %2067, %nyx_string* %2069)
  %2071 = call i8* @nyx_string_to_cstr(%nyx_string* %2070)
  %2072 = call %nyx_string* @nyx_read_file(i8* %2071)
  %2073 = call i8* @cov_called_from_show(%nyx_string* %2072)
  store i8* %2073, i8** %2009
  br label %merge398
else397:
  br label %merge398
merge398:
  %2074 = call i8* @nyx_map_new(i32 0)
  %2075 = alloca i8*
  store i8* %2074, i8** %2075
  %2076 = call i8* @nyx_map_new(i32 0)
  %2077 = alloca i8*
  store i8* %2076, i8** %2077
  %2078 = call i8* @nyx_map_new(i32 0)
  %2079 = alloca i8*
  store i8* %2078, i8** %2079
  %2080 = call i8* @nyx_map_new(i32 0)
  %2081 = alloca i8*
  store i8* %2080, i8** %2081
  store i64 0, i64* %1948
  %2082 = getelementptr [2 x i8], [2 x i8]* @.str204, i32 0, i32 0
  %2083 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str204.c, i8* %2082, i64 1)
  %2084 = alloca %nyx_string*
  store %nyx_string* %2083, %nyx_string** %2084
  %2085 = getelementptr [5 x i8], [5 x i8]* @.str205, i32 0, i32 0
  %2086 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str205.c, i8* %2085, i64 4)
  %2087 = alloca %nyx_string*
  store %nyx_string* %2086, %nyx_string** %2087
  %2088 = getelementptr [2 x i8], [2 x i8]* @.str206, i32 0, i32 0
  %2089 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str206.c, i8* %2088, i64 1)
  %2090 = alloca %nyx_string*
  store %nyx_string* %2089, %nyx_string** %2090
  %2091 = getelementptr [1 x i8], [1 x i8]* @.str207, i32 0, i32 0
  %2092 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str207.c, i8* %2091, i64 0)
  %2093 = alloca %nyx_string*
  store %nyx_string* %2092, %nyx_string** %2093
  %2094 = getelementptr [2 x i8], [2 x i8]* @.str208, i32 0, i32 0
  %2095 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str208.c, i8* %2094, i64 1)
  %2096 = alloca %nyx_string*
  store %nyx_string* %2095, %nyx_string** %2096
  %2097 = getelementptr [5 x i8], [5 x i8]* @.str209, i32 0, i32 0
  %2098 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str209.c, i8* %2097, i64 4)
  %2099 = alloca %nyx_string*
  store %nyx_string* %2098, %nyx_string** %2099
  %2100 = call i8* @llvm.stacksave()
  br label %while_cond402
while_cond402:
  %2101 = load i64, i64* %1948
  %2102 = load { i64, i8* }*, { i64, i8* }** %run_files.ptr
  %2103 = call i64 @nyx_array_length({ i64, i8* }* %2102)
  %2104 = icmp slt i64 %2101, %2103
  br i1 %2104, label %while_body403, label %while_end404
while_body403:
  call void @llvm.stackrestore(i8* %2100)
  %2105 = load { i64, i8* }*, { i64, i8* }** %run_idx.ptr
  %2106 = load i64, i64* %1948
  %2107 = call i64 @nyx_array_get_checked({ i64, i8* }* %2105, i64 %2106, i64 2)
  %2108 = inttoptr i64 %2107 to %nyx_string*
  %2109 = alloca %nyx_string*
  store %nyx_string* %2108, %nyx_string** %2109
  %2110 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2111 = load %nyx_string*, %nyx_string** %2084
  %2112 = call %nyx_string* @nyx_string_concat(%nyx_string* %2110, %nyx_string* %2111)
  %2113 = load %nyx_string*, %nyx_string** %2109
  %2114 = call %nyx_string* @nyx_string_concat(%nyx_string* %2112, %nyx_string* %2113)
  %2115 = load %nyx_string*, %nyx_string** %2087
  %2116 = call %nyx_string* @nyx_string_concat(%nyx_string* %2114, %nyx_string* %2115)
  %2117 = alloca %nyx_string*
  store %nyx_string* %2116, %nyx_string** %2117
  %2118 = load %nyx_string*, %nyx_string** %2117
  %2119 = call i8* @nyx_string_to_cstr(%nyx_string* %2118)
  %2120 = call i1 @nyx_file_exists(i8* %2119)
  br i1 %2120, label %then405, label %else406
then405:
  %2121 = load %nyx_string*, %nyx_string** %2117
  %2122 = call i8* @nyx_string_to_cstr(%nyx_string* %2121)
  %2123 = call %nyx_string* @nyx_read_file(i8* %2122)
  %2124 = load %nyx_string*, %nyx_string** %2090
  %2125 = call { i64, i8* }* @nyx_string_split(%nyx_string* %2123, %nyx_string* %2124)
  %2126 = alloca { i64, i8* }*
  store { i64, i8* }* %2125, { i64, i8* }** %2126
  %2127 = alloca i64
  store i64 0, i64* %2127
  %2128 = call i8* @llvm.stacksave()
  br label %while_cond408
while_cond408:
  %2129 = load i64, i64* %2127
  %2130 = load { i64, i8* }*, { i64, i8* }** %2126
  %2131 = call i64 @nyx_array_length({ i64, i8* }* %2130)
  %2132 = icmp slt i64 %2129, %2131
  br i1 %2132, label %while_body409, label %while_end410
while_body409:
  call void @llvm.stackrestore(i8* %2128)
  %2133 = load { i64, i8* }*, { i64, i8* }** %2126
  %2134 = load i64, i64* %2127
  %2135 = call i64 @nyx_array_get_checked({ i64, i8* }* %2133, i64 %2134, i64 2)
  %2136 = inttoptr i64 %2135 to %nyx_string*
  %2137 = alloca %nyx_string*
  store %nyx_string* %2136, %nyx_string** %2137
  %2138 = load %nyx_string*, %nyx_string** %2137
  %2139 = call { i64, i8* }* @cov_fields(%nyx_string* %2138)
  %2140 = alloca { i64, i8* }*
  store { i64, i8* }* %2139, { i64, i8* }** %2140
  %2141 = load { i64, i8* }*, { i64, i8* }** %2140
  %2142 = call i64 @nyx_array_length({ i64, i8* }* %2141)
  %2143 = icmp sge i64 %2142, 5
  br i1 %2143, label %then411, label %else412
then411:
  %2144 = load { i64, i8* }*, { i64, i8* }** %2140
  %2145 = call i64 @nyx_array_get_checked({ i64, i8* }* %2144, i64 0, i64 2)
  %2146 = inttoptr i64 %2145 to %nyx_string*
  %2147 = alloca %nyx_string*
  store %nyx_string* %2146, %nyx_string** %2147
  %2148 = load { i64, i8* }*, { i64, i8* }** %2140
  %2149 = call i64 @nyx_array_get_checked({ i64, i8* }* %2148, i64 1, i64 2)
  %2150 = inttoptr i64 %2149 to %nyx_string*
  %2151 = alloca %nyx_string*
  store %nyx_string* %2150, %nyx_string** %2151
  %2152 = load { i64, i8* }*, { i64, i8* }** %2140
  %2153 = call i64 @nyx_array_get_checked({ i64, i8* }* %2152, i64 3, i64 2)
  %2154 = inttoptr i64 %2153 to %nyx_string*
  %2155 = alloca %nyx_string*
  store %nyx_string* %2154, %nyx_string** %2155
  %2156 = load { i64, i8* }*, { i64, i8* }** %2140
  %2157 = call i64 @nyx_array_get_checked({ i64, i8* }* %2156, i64 4, i64 2)
  %2158 = inttoptr i64 %2157 to %nyx_string*
  %2159 = alloca %nyx_string*
  store %nyx_string* %2158, %nyx_string** %2159
  %2160 = load %nyx_string*, %nyx_string** %2151
  %2161 = load %nyx_string*, %nyx_string** %2093
  %2162 = call i1 @nyx_string_equals(%nyx_string* %2160, %nyx_string* %2161)
  %2163 = xor i1 %2162, true
  br i1 %2163, label %then414, label %else415
then414:
  %2164 = load i8*, i8** %2081
  %2165 = load %nyx_string*, %nyx_string** %2151
  %2166 = load %nyx_string*, %nyx_string** %2096
  %2167 = call i8* @nyx_string_to_cstr(%nyx_string* %2165)
  %2168 = call i8* @nyx_string_to_cstr(%nyx_string* %2166)
  call void @nyx_map_insert_str(i8* %2164, i8* %2167, i8* %2168)
  br label %merge416
else415:
  br label %merge416
merge416:
  %2169 = load i8*, i8** %1945
  %2170 = load %nyx_string*, %nyx_string** %2109
  %2171 = call i8* @nyx_string_to_cstr(%nyx_string* %2170)
  %2172 = call i1 @nyx_map_contains_str(i8* %2169, i8* %2171)
  br i1 %2172, label %then417, label %else418
then417:
  %2173 = load i8*, i8** %2075
  %2174 = load %nyx_string*, %nyx_string** %2147
  %2175 = load %nyx_string*, %nyx_string** %2096
  %2176 = call i8* @nyx_string_to_cstr(%nyx_string* %2174)
  %2177 = call i8* @nyx_string_to_cstr(%nyx_string* %2175)
  call void @nyx_map_insert_str(i8* %2173, i8* %2176, i8* %2177)
  %2178 = alloca i1
  store i1 false, i1* %2178
  %2179 = load %nyx_string*, %nyx_string** %2159
  %2180 = load %nyx_string*, %nyx_string** %2099
  %2181 = call i1 @nyx_string_equals(%nyx_string* %2179, %nyx_string* %2180)
  br i1 %2181, label %sc_and_rhs420, label %sc_and_end421
sc_and_rhs420:
  %2182 = load i8*, i8** %2009
  %2183 = load %nyx_string*, %nyx_string** %2147
  %2184 = call i8* @nyx_string_to_cstr(%nyx_string* %2183)
  %2185 = call i1 @nyx_map_contains_str(i8* %2182, i8* %2184)
  store i1 %2185, i1* %2178
  br label %sc_and_end421
sc_and_end421:
  %2186 = load i1, i1* %2178
  br i1 %2186, label %then422, label %else423
then422:
  %2187 = load i8*, i8** %2079
  %2188 = load %nyx_string*, %nyx_string** %2155
  %2189 = load %nyx_string*, %nyx_string** %2096
  %2190 = call i8* @nyx_string_to_cstr(%nyx_string* %2188)
  %2191 = call i8* @nyx_string_to_cstr(%nyx_string* %2189)
  call void @nyx_map_insert_str(i8* %2187, i8* %2190, i8* %2191)
  br label %merge424
else423:
  br label %merge424
merge424:
  br label %merge419
else418:
  %2192 = load i8*, i8** %2077
  %2193 = load %nyx_string*, %nyx_string** %2147
  %2194 = load %nyx_string*, %nyx_string** %2096
  %2195 = call i8* @nyx_string_to_cstr(%nyx_string* %2193)
  %2196 = call i8* @nyx_string_to_cstr(%nyx_string* %2194)
  call void @nyx_map_insert_str(i8* %2192, i8* %2195, i8* %2196)
  br label %merge419
merge419:
  br label %merge413
else412:
  br label %merge413
merge413:
  %2197 = load i64, i64* %2127
  %2198 = add i64 %2197, 1
  store i64 %2198, i64* %2127
  br label %while_cond408
while_end410:
  br label %merge407
else406:
  br label %merge407
merge407:
  %2199 = load i64, i64* %1948
  %2200 = add i64 %2199, 1
  store i64 %2200, i64* %1948
  br label %while_cond402
while_end404:
  %2201 = call { i64, i8* }* @cov_src_modules()
  %2202 = alloca { i64, i8* }*
  store { i64, i8* }* %2201, { i64, i8* }** %2202
  %2203 = load { i64, i8* }*, { i64, i8* }** %2202
  %2204 = call i64 @nyx_array_length({ i64, i8* }* %2203)
  %2205 = icmp eq i64 %2204, 0
  br i1 %2205, label %then425, label %else426
then425:
  %2206 = getelementptr [27 x i8], [27 x i8]* @.str210, i32 0, i32 0
  %2207 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str210.c, i8* %2206, i64 26)
  %2208 = call i8* @nyx_string_to_cstr(%nyx_string* %2207)
  call void @nyx_print_string(i8* %2208)
  ret i64 0
else426:
  br label %merge427
merge427:
  %2209 = load %nyx_string*, %nyx_string** %1928
  %2210 = load %nyx_string*, %nyx_string** %1933
  %2211 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2212 = load { i64, i8* }*, { i64, i8* }** %2202
  %2213 = call %nyx_string* @cov_universe(%nyx_string* %2209, %nyx_string* %2210, %nyx_string* %2211, { i64, i8* }* %2212)
  %2214 = alloca %nyx_string*
  store %nyx_string* %2213, %nyx_string** %2214
  %2215 = load %nyx_string*, %nyx_string** %2214
  %2216 = call i8* @nyx_string_to_cstr(%nyx_string* %2215)
  %2217 = call i1 @nyx_file_exists(i8* %2216)
  %2218 = xor i1 %2217, true
  br i1 %2218, label %then428, label %else429
then428:
  %2219 = getelementptr [68 x i8], [68 x i8]* @.str211, i32 0, i32 0
  %2220 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str211.c, i8* %2219, i64 67)
  %2221 = call i8* @nyx_string_to_cstr(%nyx_string* %2220)
  call void @nyx_print_string(i8* %2221)
  %2222 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2223 = getelementptr [14 x i8], [14 x i8]* @.str212, i32 0, i32 0
  %2224 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str212.c, i8* %2223, i64 13)
  %2225 = call %nyx_string* @nyx_string_concat(%nyx_string* %2222, %nyx_string* %2224)
  %2226 = call i8* @nyx_string_to_cstr(%nyx_string* %2225)
  %2227 = call i1 @nyx_file_exists(i8* %2226)
  br i1 %2227, label %then431, label %else432
then431:
  %2228 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2229 = getelementptr [14 x i8], [14 x i8]* @.str213, i32 0, i32 0
  %2230 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str213.c, i8* %2229, i64 13)
  %2231 = call %nyx_string* @nyx_string_concat(%nyx_string* %2228, %nyx_string* %2230)
  %2232 = call i8* @nyx_string_to_cstr(%nyx_string* %2231)
  %2233 = call %nyx_string* @nyx_read_file(i8* %2232)
  %2234 = call i8* @nyx_string_to_cstr(%nyx_string* %2233)
  call void @nyx_print_string(i8* %2234)
  br label %merge433
else432:
  br label %merge433
merge433:
  ret i64 1
else429:
  br label %merge430
merge430:
  %2235 = load %nyx_string*, %nyx_string** %2214
  %2236 = call i8* @nyx_string_to_cstr(%nyx_string* %2235)
  %2237 = call %nyx_string* @nyx_read_file(i8* %2236)
  %2238 = getelementptr [2 x i8], [2 x i8]* @.str214, i32 0, i32 0
  %2239 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str214.c, i8* %2238, i64 1)
  %2240 = call { i64, i8* }* @nyx_string_split(%nyx_string* %2237, %nyx_string* %2239)
  %2241 = alloca { i64, i8* }*
  store { i64, i8* }* %2240, { i64, i8* }** %2241
  %2242 = call { i64, i8* }* @nyx_array_new_ptr()
  %2243 = alloca { i64, i8* }*
  store { i64, i8* }* %2242, { i64, i8* }** %2243
  %2244 = alloca i64
  store i64 0, i64* %2244
  %2245 = getelementptr [3 x i8], [3 x i8]* @.str215, i32 0, i32 0
  %2246 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str215.c, i8* %2245, i64 2)
  %2247 = alloca %nyx_string*
  store %nyx_string* %2246, %nyx_string** %2247
  %2248 = getelementptr [7 x i8], [7 x i8]* @.str216, i32 0, i32 0
  %2249 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str216.c, i8* %2248, i64 6)
  %2250 = alloca %nyx_string*
  store %nyx_string* %2249, %nyx_string** %2250
  %2251 = getelementptr [6 x i8], [6 x i8]* @.str217, i32 0, i32 0
  %2252 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str217.c, i8* %2251, i64 5)
  %2253 = alloca %nyx_string*
  store %nyx_string* %2252, %nyx_string** %2253
  %2254 = getelementptr [9 x i8], [9 x i8]* @.str218, i32 0, i32 0
  %2255 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str218.c, i8* %2254, i64 8)
  %2256 = alloca %nyx_string*
  store %nyx_string* %2255, %nyx_string** %2256
  %2257 = getelementptr [5 x i8], [5 x i8]* @.str219, i32 0, i32 0
  %2258 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str219.c, i8* %2257, i64 4)
  %2259 = alloca %nyx_string*
  store %nyx_string* %2258, %nyx_string** %2259
  %2260 = getelementptr [5 x i8], [5 x i8]* @.str220, i32 0, i32 0
  %2261 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str220.c, i8* %2260, i64 4)
  %2262 = alloca %nyx_string*
  store %nyx_string* %2261, %nyx_string** %2262
  %2263 = getelementptr [3 x i8], [3 x i8]* @.str221, i32 0, i32 0
  %2264 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str221.c, i8* %2263, i64 2)
  %2265 = alloca %nyx_string*
  store %nyx_string* %2264, %nyx_string** %2265
  %2266 = getelementptr [3 x i8], [3 x i8]* @.str222, i32 0, i32 0
  %2267 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str222.c, i8* %2266, i64 2)
  %2268 = alloca %nyx_string*
  store %nyx_string* %2267, %nyx_string** %2268
  %2269 = getelementptr [10 x i8], [10 x i8]* @.str223, i32 0, i32 0
  %2270 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str223.c, i8* %2269, i64 9)
  %2271 = alloca %nyx_string*
  store %nyx_string* %2270, %nyx_string** %2271
  %2272 = getelementptr [5 x i8], [5 x i8]* @.str224, i32 0, i32 0
  %2273 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str224.c, i8* %2272, i64 4)
  %2274 = alloca %nyx_string*
  store %nyx_string* %2273, %nyx_string** %2274
  %2275 = getelementptr [2 x i8], [2 x i8]* @.str225, i32 0, i32 0
  %2276 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str225.c, i8* %2275, i64 1)
  %2277 = alloca %nyx_string*
  store %nyx_string* %2276, %nyx_string** %2277
  %2278 = call i8* @llvm.stacksave()
  br label %while_cond434
while_cond434:
  %2279 = load i64, i64* %2244
  %2280 = load { i64, i8* }*, { i64, i8* }** %2241
  %2281 = call i64 @nyx_array_length({ i64, i8* }* %2280)
  %2282 = icmp slt i64 %2279, %2281
  br i1 %2282, label %while_body435, label %while_end436
while_body435:
  call void @llvm.stackrestore(i8* %2278)
  %2283 = load { i64, i8* }*, { i64, i8* }** %2241
  %2284 = load i64, i64* %2244
  %2285 = call i64 @nyx_array_get_checked({ i64, i8* }* %2283, i64 %2284, i64 2)
  %2286 = inttoptr i64 %2285 to %nyx_string*
  %2287 = alloca %nyx_string*
  store %nyx_string* %2286, %nyx_string** %2287
  %2288 = load %nyx_string*, %nyx_string** %2287
  %2289 = call { i64, i8* }* @cov_fields(%nyx_string* %2288)
  %2290 = alloca { i64, i8* }*
  store { i64, i8* }* %2289, { i64, i8* }** %2290
  %2291 = load { i64, i8* }*, { i64, i8* }** %2290
  %2292 = call i64 @nyx_array_length({ i64, i8* }* %2291)
  %2293 = icmp sge i64 %2292, 5
  br i1 %2293, label %then437, label %else438
then437:
  %2294 = load { i64, i8* }*, { i64, i8* }** %2290
  %2295 = call i64 @nyx_array_get_checked({ i64, i8* }* %2294, i64 0, i64 2)
  %2296 = inttoptr i64 %2295 to %nyx_string*
  %2297 = alloca %nyx_string*
  store %nyx_string* %2296, %nyx_string** %2297
  %2298 = load { i64, i8* }*, { i64, i8* }** %2290
  %2299 = call i64 @nyx_array_get_checked({ i64, i8* }* %2298, i64 1, i64 2)
  %2300 = inttoptr i64 %2299 to %nyx_string*
  %2301 = alloca %nyx_string*
  store %nyx_string* %2300, %nyx_string** %2301
  %2302 = load { i64, i8* }*, { i64, i8* }** %2290
  %2303 = call i64 @nyx_array_get_checked({ i64, i8* }* %2302, i64 2, i64 2)
  %2304 = inttoptr i64 %2303 to %nyx_string*
  %2305 = alloca %nyx_string*
  store %nyx_string* %2304, %nyx_string** %2305
  %2306 = load { i64, i8* }*, { i64, i8* }** %2290
  %2307 = call i64 @nyx_array_get_checked({ i64, i8* }* %2306, i64 3, i64 2)
  %2308 = inttoptr i64 %2307 to %nyx_string*
  %2309 = alloca %nyx_string*
  store %nyx_string* %2308, %nyx_string** %2309
  %2310 = load { i64, i8* }*, { i64, i8* }** %2290
  %2311 = call i64 @nyx_array_get_checked({ i64, i8* }* %2310, i64 4, i64 2)
  %2312 = inttoptr i64 %2311 to %nyx_string*
  %2313 = alloca %nyx_string*
  store %nyx_string* %2312, %nyx_string** %2313
  %2314 = alloca i1
  store i1 true, i1* %2314
  %2315 = alloca i1
  store i1 true, i1* %2315
  %2316 = alloca i1
  store i1 true, i1* %2316
  %2317 = load %nyx_string*, %nyx_string** %2313
  %2318 = load %nyx_string*, %nyx_string** %2247
  %2319 = call i1 @nyx_string_equals(%nyx_string* %2317, %nyx_string* %2318)
  br i1 %2319, label %sc_or_end441, label %sc_or_rhs440
sc_or_rhs440:
  %2320 = load %nyx_string*, %nyx_string** %2313
  %2321 = load %nyx_string*, %nyx_string** %2250
  %2322 = call i1 @nyx_string_equals(%nyx_string* %2320, %nyx_string* %2321)
  store i1 %2322, i1* %2316
  br label %sc_or_end441
sc_or_end441:
  %2323 = load i1, i1* %2316
  br i1 %2323, label %sc_or_end443, label %sc_or_rhs442
sc_or_rhs442:
  %2324 = load %nyx_string*, %nyx_string** %2313
  %2325 = load %nyx_string*, %nyx_string** %2253
  %2326 = call i1 @nyx_string_equals(%nyx_string* %2324, %nyx_string* %2325)
  store i1 %2326, i1* %2315
  br label %sc_or_end443
sc_or_end443:
  %2327 = load i1, i1* %2315
  br i1 %2327, label %sc_or_end445, label %sc_or_rhs444
sc_or_rhs444:
  %2328 = load %nyx_string*, %nyx_string** %2313
  %2329 = load %nyx_string*, %nyx_string** %2256
  %2330 = call i1 @nyx_string_equals(%nyx_string* %2328, %nyx_string* %2329)
  store i1 %2330, i1* %2314
  br label %sc_or_end445
sc_or_end445:
  %2331 = load i1, i1* %2314
  %2332 = alloca i1
  store i1 %2331, i1* %2332
  %2333 = alloca i1
  store i1 false, i1* %2333
  %2334 = alloca i1
  store i1 false, i1* %2334
  %2335 = load i1, i1* %2332
  br i1 %2335, label %sc_and_rhs446, label %sc_and_end447
sc_and_rhs446:
  %2336 = load %nyx_string*, %nyx_string** %2301
  %2337 = load %nyx_string*, %nyx_string** %2259
  %2338 = call i1 @nyx_string_starts_with(%nyx_string* %2336, %nyx_string* %2337)
  store i1 %2338, i1* %2334
  br label %sc_and_end447
sc_and_end447:
  %2339 = load i1, i1* %2334
  br i1 %2339, label %sc_and_rhs448, label %sc_and_end449
sc_and_rhs448:
  %2340 = load %nyx_string*, %nyx_string** %2309
  %2341 = load %nyx_string*, %nyx_string** %2262
  %2342 = call i1 @nyx_string_equals(%nyx_string* %2340, %nyx_string* %2341)
  %2343 = xor i1 %2342, true
  store i1 %2343, i1* %2333
  br label %sc_and_end449
sc_and_end449:
  %2344 = load i1, i1* %2333
  br i1 %2344, label %then450, label %else451
then450:
  %2345 = load i8*, i8** %2009
  %2346 = load %nyx_string*, %nyx_string** %2297
  %2347 = call i8* @nyx_string_to_cstr(%nyx_string* %2346)
  %2348 = call i1 @nyx_map_contains_str(i8* %2345, i8* %2347)
  %2349 = alloca i1
  store i1 %2348, i1* %2349
  %2350 = load %nyx_string*, %nyx_string** %2313
  %2351 = load %nyx_string*, %nyx_string** %2256
  %2352 = call i1 @nyx_string_equals(%nyx_string* %2350, %nyx_string* %2351)
  br i1 %2352, label %then453, label %else454
then453:
  %2353 = load i8*, i8** %2079
  %2354 = load %nyx_string*, %nyx_string** %2297
  %2355 = call i8* @nyx_string_to_cstr(%nyx_string* %2354)
  %2356 = call i1 @nyx_map_contains_str(i8* %2353, i8* %2355)
  store i1 %2356, i1* %2349
  br label %merge455
else454:
  br label %merge455
merge455:
  %2357 = load %nyx_string*, %nyx_string** %2265
  %2358 = alloca %nyx_string*
  store %nyx_string* %2357, %nyx_string** %2358
  %2359 = load i1, i1* %2349
  br i1 %2359, label %then456, label %else457
then456:
  %2360 = load %nyx_string*, %nyx_string** %2268
  store %nyx_string* %2360, %nyx_string** %2358
  br label %merge458
else457:
  %2361 = alloca i1
  store i1 false, i1* %2361
  %2362 = load i8*, i8** %2075
  %2363 = load %nyx_string*, %nyx_string** %2297
  %2364 = call i8* @nyx_string_to_cstr(%nyx_string* %2363)
  %2365 = call i1 @nyx_map_contains_str(i8* %2362, i8* %2364)
  %2366 = xor i1 %2365, true
  br i1 %2366, label %sc_and_rhs459, label %sc_and_end460
sc_and_rhs459:
  %2367 = load i8*, i8** %2077
  %2368 = load %nyx_string*, %nyx_string** %2297
  %2369 = call i8* @nyx_string_to_cstr(%nyx_string* %2368)
  %2370 = call i1 @nyx_map_contains_str(i8* %2367, i8* %2369)
  store i1 %2370, i1* %2361
  br label %sc_and_end460
sc_and_end460:
  %2371 = load i1, i1* %2361
  br i1 %2371, label %then461, label %else462
then461:
  %2372 = load %nyx_string*, %nyx_string** %2271
  store %nyx_string* %2372, %nyx_string** %2358
  br label %merge463
else462:
  br label %merge463
merge463:
  br label %merge458
merge458:
  %2373 = load { i64, i8* }*, { i64, i8* }** %2243
  %2374 = load %nyx_string*, %nyx_string** %2301
  %2375 = load %nyx_string*, %nyx_string** %2274
  %2376 = call %nyx_string* @nyx_string_concat(%nyx_string* %2374, %nyx_string* %2375)
  %2377 = load %nyx_string*, %nyx_string** %2305
  %2378 = call i64 @nyx_string_to_int(%nyx_string* %2377)
  %2379 = call %nyx_string* @cov_pad(i64 %2378)
  %2380 = call %nyx_string* @nyx_string_concat(%nyx_string* %2376, %nyx_string* %2379)
  %2381 = load %nyx_string*, %nyx_string** %2277
  %2382 = call %nyx_string* @nyx_string_concat(%nyx_string* %2380, %nyx_string* %2381)
  %2383 = load %nyx_string*, %nyx_string** %2309
  %2384 = call %nyx_string* @nyx_string_concat(%nyx_string* %2382, %nyx_string* %2383)
  %2385 = load %nyx_string*, %nyx_string** %2277
  %2386 = call %nyx_string* @nyx_string_concat(%nyx_string* %2384, %nyx_string* %2385)
  %2387 = load %nyx_string*, %nyx_string** %2358
  %2388 = call %nyx_string* @nyx_string_concat(%nyx_string* %2386, %nyx_string* %2387)
  %2389 = load %nyx_string*, %nyx_string** %2277
  %2390 = call %nyx_string* @nyx_string_concat(%nyx_string* %2388, %nyx_string* %2389)
  %2391 = load %nyx_string*, %nyx_string** %2301
  %2392 = call %nyx_string* @nyx_string_concat(%nyx_string* %2390, %nyx_string* %2391)
  %2393 = ptrtoint %nyx_string* %2392 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2373, i64 %2393, i64 2)
  br label %merge452
else451:
  br label %merge452
merge452:
  br label %merge439
else438:
  br label %merge439
merge439:
  %2394 = load i64, i64* %2244
  %2395 = add i64 %2394, 1
  store i64 %2395, i64* %2244
  br label %while_cond434
while_end436:
  %2396 = load { i64, i8* }*, { i64, i8* }** %2243
  %2397 = call { i64, i8* }* @sort_str({ i64, i8* }* %2396)
  %2398 = alloca { i64, i8* }*
  store { i64, i8* }* %2397, { i64, i8* }** %2398
  %2399 = getelementptr [1 x i8], [1 x i8]* @.str226, i32 0, i32 0
  %2400 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str226.c, i8* %2399, i64 0)
  %2401 = alloca %nyx_string*
  store %nyx_string* %2400, %nyx_string** %2401
  %2402 = alloca i64
  store i64 0, i64* %2402
  %2403 = alloca i64
  store i64 0, i64* %2403
  %2404 = alloca i64
  store i64 0, i64* %2404
  %2405 = getelementptr [1 x i8], [1 x i8]* @.str227, i32 0, i32 0
  %2406 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str227.c, i8* %2405, i64 0)
  %2407 = alloca %nyx_string*
  store %nyx_string* %2406, %nyx_string** %2407
  %2408 = getelementptr [10 x i8], [10 x i8]* @.str228, i32 0, i32 0
  %2409 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str228.c, i8* %2408, i64 9)
  %2410 = alloca %nyx_string*
  store %nyx_string* %2409, %nyx_string** %2410
  %2411 = getelementptr [2 x i8], [2 x i8]* @.str229, i32 0, i32 0
  %2412 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str229.c, i8* %2411, i64 1)
  %2413 = alloca %nyx_string*
  store %nyx_string* %2412, %nyx_string** %2413
  %2414 = getelementptr [3 x i8], [3 x i8]* @.str230, i32 0, i32 0
  %2415 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str230.c, i8* %2414, i64 2)
  %2416 = alloca %nyx_string*
  store %nyx_string* %2415, %nyx_string** %2416
  %2417 = getelementptr [2 x i8], [2 x i8]* @.str231, i32 0, i32 0
  %2418 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str231.c, i8* %2417, i64 1)
  %2419 = alloca %nyx_string*
  store %nyx_string* %2418, %nyx_string** %2419
  %2420 = getelementptr [5 x i8], [5 x i8]* @.str232, i32 0, i32 0
  %2421 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str232.c, i8* %2420, i64 4)
  %2422 = alloca %nyx_string*
  store %nyx_string* %2421, %nyx_string** %2422
  %2423 = getelementptr [2 x i8], [2 x i8]* @.str233, i32 0, i32 0
  %2424 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str233.c, i8* %2423, i64 1)
  %2425 = alloca %nyx_string*
  store %nyx_string* %2424, %nyx_string** %2425
  %2426 = getelementptr [2 x i8], [2 x i8]* @.str234, i32 0, i32 0
  %2427 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str234.c, i8* %2426, i64 1)
  %2428 = alloca %nyx_string*
  store %nyx_string* %2427, %nyx_string** %2428
  %2429 = getelementptr [4 x i8], [4 x i8]* @.str235, i32 0, i32 0
  %2430 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str235.c, i8* %2429, i64 3)
  %2431 = alloca %nyx_string*
  store %nyx_string* %2430, %nyx_string** %2431
  %2432 = getelementptr [2 x i8], [2 x i8]* @.str236, i32 0, i32 0
  %2433 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str236.c, i8* %2432, i64 1)
  %2434 = alloca %nyx_string*
  store %nyx_string* %2433, %nyx_string** %2434
  %2435 = getelementptr [2 x i8], [2 x i8]* @.str237, i32 0, i32 0
  %2436 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str237.c, i8* %2435, i64 1)
  %2437 = alloca %nyx_string*
  store %nyx_string* %2436, %nyx_string** %2437
  %2438 = getelementptr [6 x i8], [6 x i8]* @.str238, i32 0, i32 0
  %2439 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str238.c, i8* %2438, i64 5)
  %2440 = alloca %nyx_string*
  store %nyx_string* %2439, %nyx_string** %2440
  %2441 = getelementptr [3 x i8], [3 x i8]* @.str239, i32 0, i32 0
  %2442 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str239.c, i8* %2441, i64 2)
  %2443 = alloca %nyx_string*
  store %nyx_string* %2442, %nyx_string** %2443
  %2444 = getelementptr [3 x i8], [3 x i8]* @.str240, i32 0, i32 0
  %2445 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str240.c, i8* %2444, i64 2)
  %2446 = alloca %nyx_string*
  store %nyx_string* %2445, %nyx_string** %2446
  %2447 = getelementptr [2 x i8], [2 x i8]* @.str241, i32 0, i32 0
  %2448 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str241.c, i8* %2447, i64 1)
  %2449 = alloca %nyx_string*
  store %nyx_string* %2448, %nyx_string** %2449
  %2450 = getelementptr [10 x i8], [10 x i8]* @.str242, i32 0, i32 0
  %2451 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str242.c, i8* %2450, i64 9)
  %2452 = alloca %nyx_string*
  store %nyx_string* %2451, %nyx_string** %2452
  %2453 = getelementptr [29 x i8], [29 x i8]* @.str243, i32 0, i32 0
  %2454 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str243.c, i8* %2453, i64 28)
  %2455 = alloca %nyx_string*
  store %nyx_string* %2454, %nyx_string** %2455
  %2456 = getelementptr [3 x i8], [3 x i8]* @.str244, i32 0, i32 0
  %2457 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str244.c, i8* %2456, i64 2)
  %2458 = alloca %nyx_string*
  store %nyx_string* %2457, %nyx_string** %2458
  %2459 = getelementptr [38 x i8], [38 x i8]* @.str245, i32 0, i32 0
  %2460 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str245.c, i8* %2459, i64 37)
  %2461 = alloca %nyx_string*
  store %nyx_string* %2460, %nyx_string** %2461
  %2462 = getelementptr [4 x i8], [4 x i8]* @.str246, i32 0, i32 0
  %2463 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str246.c, i8* %2462, i64 3)
  %2464 = alloca %nyx_string*
  store %nyx_string* %2463, %nyx_string** %2464
  %2465 = getelementptr [5 x i8], [5 x i8]* @.str247, i32 0, i32 0
  %2466 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str247.c, i8* %2465, i64 4)
  %2467 = alloca %nyx_string*
  store %nyx_string* %2466, %nyx_string** %2467
  %2468 = getelementptr [6 x i8], [6 x i8]* @.str248, i32 0, i32 0
  %2469 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str248.c, i8* %2468, i64 5)
  %2470 = alloca %nyx_string*
  store %nyx_string* %2469, %nyx_string** %2470
  %2471 = getelementptr [16 x i8], [16 x i8]* @.str249, i32 0, i32 0
  %2472 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str249.c, i8* %2471, i64 15)
  %2473 = alloca %nyx_string*
  store %nyx_string* %2472, %nyx_string** %2473
  %2474 = call i8* @llvm.stacksave()
  br label %while_cond464
while_cond464:
  %2475 = load i64, i64* %2404
  %2476 = load { i64, i8* }*, { i64, i8* }** %2398
  %2477 = call i64 @nyx_array_length({ i64, i8* }* %2476)
  %2478 = icmp slt i64 %2475, %2477
  br i1 %2478, label %while_body465, label %while_end466
while_body465:
  call void @llvm.stackrestore(i8* %2474)
  %2479 = load { i64, i8* }*, { i64, i8* }** %2398
  %2480 = load i64, i64* %2404
  %2481 = call i64 @nyx_array_get_checked({ i64, i8* }* %2479, i64 %2480, i64 2)
  %2482 = inttoptr i64 %2481 to %nyx_string*
  %2483 = alloca %nyx_string*
  store %nyx_string* %2482, %nyx_string** %2483
  %2484 = load %nyx_string*, %nyx_string** %2483
  %2485 = call { i64, i8* }* @cov_fields(%nyx_string* %2484)
  %2486 = alloca { i64, i8* }*
  store { i64, i8* }* %2485, { i64, i8* }** %2486
  %2487 = load { i64, i8* }*, { i64, i8* }** %2486
  %2488 = call i64 @nyx_array_get_checked({ i64, i8* }* %2487, i64 0, i64 2)
  %2489 = inttoptr i64 %2488 to %nyx_string*
  %2490 = alloca %nyx_string*
  store %nyx_string* %2489, %nyx_string** %2490
  %2491 = load { i64, i8* }*, { i64, i8* }** %2486
  %2492 = call i64 @nyx_array_get_checked({ i64, i8* }* %2491, i64 4, i64 2)
  %2493 = inttoptr i64 %2492 to %nyx_string*
  %2494 = alloca %nyx_string*
  store %nyx_string* %2493, %nyx_string** %2494
  %2495 = alloca i64
  store i64 0, i64* %2495
  %2496 = alloca i64
  store i64 0, i64* %2496
  %2497 = alloca i64
  store i64 0, i64* %2497
  %2498 = call { i64, i8* }* @nyx_array_new_ptr()
  %2499 = alloca { i64, i8* }*
  store { i64, i8* }* %2498, { i64, i8* }** %2499
  %2500 = load %nyx_string*, %nyx_string** %2407
  %2501 = alloca %nyx_string*
  store %nyx_string* %2500, %nyx_string** %2501
  %2502 = load %nyx_string*, %nyx_string** %2407
  %2503 = alloca %nyx_string*
  store %nyx_string* %2502, %nyx_string** %2503
  %2504 = load i64, i64* %2404
  %2505 = alloca i64
  store i64 %2504, i64* %2505
  %2506 = alloca i1
  store i1 1, i1* %2506
  %2507 = call i8* @llvm.stacksave()
  br label %while_cond467
while_cond467:
  %2508 = alloca i1
  store i1 false, i1* %2508
  %2509 = load i64, i64* %2505
  %2510 = load { i64, i8* }*, { i64, i8* }** %2398
  %2511 = call i64 @nyx_array_length({ i64, i8* }* %2510)
  %2512 = icmp slt i64 %2509, %2511
  br i1 %2512, label %sc_and_rhs470, label %sc_and_end471
sc_and_rhs470:
  %2513 = load i1, i1* %2506
  store i1 %2513, i1* %2508
  br label %sc_and_end471
sc_and_end471:
  %2514 = load i1, i1* %2508
  br i1 %2514, label %while_body468, label %while_end469
while_body468:
  call void @llvm.stackrestore(i8* %2507)
  %2515 = load { i64, i8* }*, { i64, i8* }** %2398
  %2516 = load i64, i64* %2505
  %2517 = call i64 @nyx_array_get_checked({ i64, i8* }* %2515, i64 %2516, i64 2)
  %2518 = inttoptr i64 %2517 to %nyx_string*
  %2519 = alloca %nyx_string*
  store %nyx_string* %2518, %nyx_string** %2519
  %2520 = load %nyx_string*, %nyx_string** %2519
  %2521 = call { i64, i8* }* @cov_fields(%nyx_string* %2520)
  %2522 = alloca { i64, i8* }*
  store { i64, i8* }* %2521, { i64, i8* }** %2522
  %2523 = load { i64, i8* }*, { i64, i8* }** %2522
  %2524 = call i64 @nyx_array_get_checked({ i64, i8* }* %2523, i64 0, i64 2)
  %2525 = inttoptr i64 %2524 to %nyx_string*
  %2526 = alloca %nyx_string*
  store %nyx_string* %2525, %nyx_string** %2526
  %2527 = load %nyx_string*, %nyx_string** %2526
  %2528 = load %nyx_string*, %nyx_string** %2490
  %2529 = call i1 @nyx_string_equals(%nyx_string* %2527, %nyx_string* %2528)
  %2530 = xor i1 %2529, true
  br i1 %2530, label %then472, label %else473
then472:
  store i1 0, i1* %2506
  br label %merge474
else473:
  %2531 = load { i64, i8* }*, { i64, i8* }** %2522
  %2532 = call i64 @nyx_array_get({ i64, i8* }* %2531, i64 1)
  %2533 = inttoptr i64 %2532 to %nyx_string*
  %2534 = call i64 @nyx_string_to_int(%nyx_string* %2533)
  %2535 = alloca i64
  store i64 %2534, i64* %2535
  %2536 = load { i64, i8* }*, { i64, i8* }** %2522
  %2537 = call i64 @nyx_array_get_checked({ i64, i8* }* %2536, i64 2, i64 2)
  %2538 = inttoptr i64 %2537 to %nyx_string*
  %2539 = alloca %nyx_string*
  store %nyx_string* %2538, %nyx_string** %2539
  %2540 = load { i64, i8* }*, { i64, i8* }** %2522
  %2541 = call i64 @nyx_array_get_checked({ i64, i8* }* %2540, i64 3, i64 2)
  %2542 = inttoptr i64 %2541 to %nyx_string*
  %2543 = alloca %nyx_string*
  store %nyx_string* %2542, %nyx_string** %2543
  %2544 = load %nyx_string*, %nyx_string** %2543
  %2545 = load %nyx_string*, %nyx_string** %2410
  %2546 = call i1 @nyx_string_equals(%nyx_string* %2544, %nyx_string* %2545)
  br i1 %2546, label %then475, label %else476
then475:
  %2547 = load i64, i64* %2497
  %2548 = add i64 %2547, 1
  store i64 %2548, i64* %2497
  br label %merge477
else476:
  %2549 = load i64, i64* %2496
  %2550 = add i64 %2549, 1
  store i64 %2550, i64* %2496
  %2551 = load %nyx_string*, %nyx_string** %2413
  %2552 = alloca %nyx_string*
  store %nyx_string* %2551, %nyx_string** %2552
  %2553 = load %nyx_string*, %nyx_string** %2543
  %2554 = load %nyx_string*, %nyx_string** %2416
  %2555 = call i1 @nyx_string_equals(%nyx_string* %2553, %nyx_string* %2554)
  br i1 %2555, label %then478, label %else479
then478:
  %2556 = load i64, i64* %2495
  %2557 = add i64 %2556, 1
  store i64 %2557, i64* %2495
  %2558 = load %nyx_string*, %nyx_string** %2419
  store %nyx_string* %2558, %nyx_string** %2552
  br label %merge480
else479:
  %2559 = load { i64, i8* }*, { i64, i8* }** %2499
  %2560 = load %nyx_string*, %nyx_string** %2422
  %2561 = load %nyx_string*, %nyx_string** %2490
  %2562 = call %nyx_string* @nyx_string_concat(%nyx_string* %2560, %nyx_string* %2561)
  %2563 = load %nyx_string*, %nyx_string** %2425
  %2564 = call %nyx_string* @nyx_string_concat(%nyx_string* %2562, %nyx_string* %2563)
  %2565 = load i64, i64* %2535
  %2566 = call %nyx_string* @nyx_string_from_int(i64 %2565)
  %2567 = call %nyx_string* @nyx_string_concat(%nyx_string* %2564, %nyx_string* %2566)
  %2568 = load %nyx_string*, %nyx_string** %2428
  %2569 = call %nyx_string* @nyx_string_concat(%nyx_string* %2567, %nyx_string* %2568)
  %2570 = load %nyx_string*, %nyx_string** %2539
  %2571 = call %nyx_string* @nyx_string_concat(%nyx_string* %2569, %nyx_string* %2570)
  %2572 = ptrtoint %nyx_string* %2571 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2559, i64 %2572, i64 2)
  br label %merge480
merge480:
  %2573 = load %nyx_string*, %nyx_string** %2501
  %2574 = load %nyx_string*, %nyx_string** %2431
  %2575 = call %nyx_string* @nyx_string_concat(%nyx_string* %2573, %nyx_string* %2574)
  %2576 = load i64, i64* %2535
  %2577 = call %nyx_string* @nyx_string_from_int(i64 %2576)
  %2578 = call %nyx_string* @nyx_string_concat(%nyx_string* %2575, %nyx_string* %2577)
  %2579 = load %nyx_string*, %nyx_string** %2434
  %2580 = call %nyx_string* @nyx_string_concat(%nyx_string* %2578, %nyx_string* %2579)
  %2581 = load %nyx_string*, %nyx_string** %2539
  %2582 = call %nyx_string* @nyx_string_concat(%nyx_string* %2580, %nyx_string* %2581)
  %2583 = load %nyx_string*, %nyx_string** %2437
  %2584 = call %nyx_string* @nyx_string_concat(%nyx_string* %2582, %nyx_string* %2583)
  store %nyx_string* %2584, %nyx_string** %2501
  %2585 = load %nyx_string*, %nyx_string** %2503
  %2586 = load %nyx_string*, %nyx_string** %2440
  %2587 = call %nyx_string* @nyx_string_concat(%nyx_string* %2585, %nyx_string* %2586)
  %2588 = load %nyx_string*, %nyx_string** %2552
  %2589 = call %nyx_string* @nyx_string_concat(%nyx_string* %2587, %nyx_string* %2588)
  %2590 = load %nyx_string*, %nyx_string** %2434
  %2591 = call %nyx_string* @nyx_string_concat(%nyx_string* %2589, %nyx_string* %2590)
  %2592 = load %nyx_string*, %nyx_string** %2539
  %2593 = call %nyx_string* @nyx_string_concat(%nyx_string* %2591, %nyx_string* %2592)
  %2594 = load %nyx_string*, %nyx_string** %2437
  %2595 = call %nyx_string* @nyx_string_concat(%nyx_string* %2593, %nyx_string* %2594)
  store %nyx_string* %2595, %nyx_string** %2503
  br label %merge477
merge477:
  %2596 = load i64, i64* %2505
  %2597 = add i64 %2596, 1
  store i64 %2597, i64* %2505
  br label %merge474
merge474:
  br label %while_cond467
while_end469:
  %2598 = load %nyx_string*, %nyx_string** %2443
  %2599 = load %nyx_string*, %nyx_string** %2490
  %2600 = call %nyx_string* @nyx_string_concat(%nyx_string* %2598, %nyx_string* %2599)
  %2601 = load %nyx_string*, %nyx_string** %2446
  %2602 = call %nyx_string* @nyx_string_concat(%nyx_string* %2600, %nyx_string* %2601)
  %2603 = load i64, i64* %2495
  %2604 = call %nyx_string* @nyx_string_from_int(i64 %2603)
  %2605 = call %nyx_string* @nyx_string_concat(%nyx_string* %2602, %nyx_string* %2604)
  %2606 = load %nyx_string*, %nyx_string** %2449
  %2607 = call %nyx_string* @nyx_string_concat(%nyx_string* %2605, %nyx_string* %2606)
  %2608 = load i64, i64* %2496
  %2609 = call %nyx_string* @nyx_string_from_int(i64 %2608)
  %2610 = call %nyx_string* @nyx_string_concat(%nyx_string* %2607, %nyx_string* %2609)
  %2611 = load %nyx_string*, %nyx_string** %2452
  %2612 = call %nyx_string* @nyx_string_concat(%nyx_string* %2610, %nyx_string* %2611)
  %2613 = alloca %nyx_string*
  store %nyx_string* %2612, %nyx_string** %2613
  %2614 = load i8*, i8** %2081
  %2615 = load %nyx_string*, %nyx_string** %2494
  %2616 = call i8* @nyx_string_to_cstr(%nyx_string* %2615)
  %2617 = call i1 @nyx_map_contains_str(i8* %2614, i8* %2616)
  %2618 = xor i1 %2617, true
  br i1 %2618, label %then481, label %else482
then481:
  %2619 = load %nyx_string*, %nyx_string** %2613
  %2620 = load %nyx_string*, %nyx_string** %2455
  %2621 = call %nyx_string* @nyx_string_concat(%nyx_string* %2619, %nyx_string* %2620)
  store %nyx_string* %2621, %nyx_string** %2613
  br label %merge483
else482:
  br label %merge483
merge483:
  %2622 = load i64, i64* %2497
  %2623 = icmp sgt i64 %2622, 0
  br i1 %2623, label %then484, label %else485
then484:
  %2624 = load %nyx_string*, %nyx_string** %2613
  %2625 = load %nyx_string*, %nyx_string** %2458
  %2626 = call %nyx_string* @nyx_string_concat(%nyx_string* %2624, %nyx_string* %2625)
  %2627 = load i64, i64* %2497
  %2628 = call %nyx_string* @nyx_string_from_int(i64 %2627)
  %2629 = call %nyx_string* @nyx_string_concat(%nyx_string* %2626, %nyx_string* %2628)
  %2630 = load %nyx_string*, %nyx_string** %2461
  %2631 = call %nyx_string* @nyx_string_concat(%nyx_string* %2629, %nyx_string* %2630)
  store %nyx_string* %2631, %nyx_string** %2613
  br label %merge486
else485:
  br label %merge486
merge486:
  %2632 = load %nyx_string*, %nyx_string** %2613
  %2633 = call i8* @nyx_string_to_cstr(%nyx_string* %2632)
  call void @nyx_print_string(i8* %2633)
  %2634 = alloca i64
  store i64 0, i64* %2634
  %2635 = call i8* @llvm.stacksave()
  br label %while_cond487
while_cond487:
  %2636 = load i64, i64* %2634
  %2637 = load { i64, i8* }*, { i64, i8* }** %2499
  %2638 = call i64 @nyx_array_length({ i64, i8* }* %2637)
  %2639 = icmp slt i64 %2636, %2638
  br i1 %2639, label %while_body488, label %while_end489
while_body488:
  call void @llvm.stackrestore(i8* %2635)
  %2640 = load { i64, i8* }*, { i64, i8* }** %2499
  %2641 = load i64, i64* %2634
  %2642 = call i64 @nyx_array_get_checked({ i64, i8* }* %2640, i64 %2641, i64 2)
  %2643 = inttoptr i64 %2642 to %nyx_string*
  %2644 = alloca %nyx_string*
  store %nyx_string* %2643, %nyx_string** %2644
  %2645 = load %nyx_string*, %nyx_string** %2644
  %2646 = call i8* @nyx_string_to_cstr(%nyx_string* %2645)
  call void @nyx_print_string(i8* %2646)
  %2647 = load i64, i64* %2634
  %2648 = add i64 %2647, 1
  store i64 %2648, i64* %2634
  br label %while_cond487
while_end489:
  %2649 = load i64, i64* %2402
  %2650 = load i64, i64* %2495
  %2651 = add i64 %2649, %2650
  store i64 %2651, i64* %2402
  %2652 = load i64, i64* %2403
  %2653 = load i64, i64* %2496
  %2654 = add i64 %2652, %2653
  store i64 %2654, i64* %2403
  %2655 = load %nyx_string*, %nyx_string** %2401
  %2656 = load %nyx_string*, %nyx_string** %2464
  %2657 = call %nyx_string* @nyx_string_concat(%nyx_string* %2655, %nyx_string* %2656)
  %2658 = load %nyx_string*, %nyx_string** %2490
  %2659 = call %nyx_string* @nyx_string_concat(%nyx_string* %2657, %nyx_string* %2658)
  %2660 = load %nyx_string*, %nyx_string** %2437
  %2661 = call %nyx_string* @nyx_string_concat(%nyx_string* %2659, %nyx_string* %2660)
  %2662 = load %nyx_string*, %nyx_string** %2501
  %2663 = call %nyx_string* @nyx_string_concat(%nyx_string* %2661, %nyx_string* %2662)
  %2664 = load %nyx_string*, %nyx_string** %2503
  %2665 = call %nyx_string* @nyx_string_concat(%nyx_string* %2663, %nyx_string* %2664)
  %2666 = load %nyx_string*, %nyx_string** %2467
  %2667 = call %nyx_string* @nyx_string_concat(%nyx_string* %2665, %nyx_string* %2666)
  %2668 = load i64, i64* %2496
  %2669 = call %nyx_string* @nyx_string_from_int(i64 %2668)
  %2670 = call %nyx_string* @nyx_string_concat(%nyx_string* %2667, %nyx_string* %2669)
  %2671 = load %nyx_string*, %nyx_string** %2470
  %2672 = call %nyx_string* @nyx_string_concat(%nyx_string* %2670, %nyx_string* %2671)
  %2673 = load i64, i64* %2495
  %2674 = call %nyx_string* @nyx_string_from_int(i64 %2673)
  %2675 = call %nyx_string* @nyx_string_concat(%nyx_string* %2672, %nyx_string* %2674)
  %2676 = load %nyx_string*, %nyx_string** %2473
  %2677 = call %nyx_string* @nyx_string_concat(%nyx_string* %2675, %nyx_string* %2676)
  store %nyx_string* %2677, %nyx_string** %2401
  %2678 = load i64, i64* %2505
  store i64 %2678, i64* %2404
  br label %while_cond464
while_end466:
  %2679 = load { i64, i8* }*, { i64, i8* }** %1947
  %2680 = call i64 @nyx_array_length({ i64, i8* }* %2679)
  %2681 = icmp sgt i64 %2680, 0
  br i1 %2681, label %then490, label %else491
then490:
  %2682 = getelementptr [70 x i8], [70 x i8]* @.str250, i32 0, i32 0
  %2683 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str250.c, i8* %2682, i64 69)
  %2684 = call i8* @nyx_string_to_cstr(%nyx_string* %2683)
  call void @nyx_print_string(i8* %2684)
  %2685 = alloca i64
  store i64 0, i64* %2685
  %2686 = getelementptr [5 x i8], [5 x i8]* @.str251, i32 0, i32 0
  %2687 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str251.c, i8* %2686, i64 4)
  %2688 = alloca %nyx_string*
  store %nyx_string* %2687, %nyx_string** %2688
  %2689 = call i8* @llvm.stacksave()
  br label %while_cond493
while_cond493:
  %2690 = load i64, i64* %2685
  %2691 = load { i64, i8* }*, { i64, i8* }** %1947
  %2692 = call i64 @nyx_array_length({ i64, i8* }* %2691)
  %2693 = icmp slt i64 %2690, %2692
  br i1 %2693, label %while_body494, label %while_end495
while_body494:
  call void @llvm.stackrestore(i8* %2689)
  %2694 = load { i64, i8* }*, { i64, i8* }** %1947
  %2695 = load i64, i64* %2685
  %2696 = call i64 @nyx_array_get_checked({ i64, i8* }* %2694, i64 %2695, i64 2)
  %2697 = inttoptr i64 %2696 to %nyx_string*
  %2698 = alloca %nyx_string*
  store %nyx_string* %2697, %nyx_string** %2698
  %2699 = load %nyx_string*, %nyx_string** %2688
  %2700 = load %nyx_string*, %nyx_string** %2698
  %2701 = call %nyx_string* @nyx_string_concat(%nyx_string* %2699, %nyx_string* %2700)
  %2702 = call i8* @nyx_string_to_cstr(%nyx_string* %2701)
  call void @nyx_print_string(i8* %2702)
  %2703 = load i64, i64* %2685
  %2704 = add i64 %2703, 1
  store i64 %2704, i64* %2685
  br label %while_cond493
while_end495:
  br label %merge492
else491:
  br label %merge492
merge492:
  %2705 = getelementptr [10 x i8], [10 x i8]* @.str252, i32 0, i32 0
  %2706 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str252.c, i8* %2705, i64 9)
  %2707 = load i64, i64* %2402
  %2708 = call %nyx_string* @nyx_string_from_int(i64 %2707)
  %2709 = call %nyx_string* @nyx_string_concat(%nyx_string* %2706, %nyx_string* %2708)
  %2710 = getelementptr [2 x i8], [2 x i8]* @.str253, i32 0, i32 0
  %2711 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str253.c, i8* %2710, i64 1)
  %2712 = call %nyx_string* @nyx_string_concat(%nyx_string* %2709, %nyx_string* %2711)
  %2713 = load i64, i64* %2403
  %2714 = call %nyx_string* @nyx_string_from_int(i64 %2713)
  %2715 = call %nyx_string* @nyx_string_concat(%nyx_string* %2712, %nyx_string* %2714)
  %2716 = getelementptr [20 x i8], [20 x i8]* @.str254, i32 0, i32 0
  %2717 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str254.c, i8* %2716, i64 19)
  %2718 = call %nyx_string* @nyx_string_concat(%nyx_string* %2715, %nyx_string* %2717)
  %2719 = call i8* @nyx_string_to_cstr(%nyx_string* %2718)
  call void @nyx_print_string(i8* %2719)
  %2720 = load i1, i1* %want_lcov.ptr
  br i1 %2720, label %then496, label %else497
then496:
  %2721 = getelementptr [11 x i8], [11 x i8]* @.str255, i32 0, i32 0
  %2722 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str255.c, i8* %2721, i64 10)
  %2723 = load %nyx_string*, %nyx_string** %1933
  %2724 = call %nyx_string* @nyx_string_concat(%nyx_string* %2722, %nyx_string* %2723)
  %2725 = getelementptr [9 x i8], [9 x i8]* @.str256, i32 0, i32 0
  %2726 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str256.c, i8* %2725, i64 8)
  %2727 = call %nyx_string* @nyx_string_concat(%nyx_string* %2724, %nyx_string* %2726)
  %2728 = call i8* @nyx_string_to_cstr(%nyx_string* %2727)
  %2729 = call i64 @nyx_exec_code(i8* %2728)
  %2730 = load %nyx_string*, %nyx_string** %1933
  %2731 = getelementptr [22 x i8], [22 x i8]* @.str257, i32 0, i32 0
  %2732 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str257.c, i8* %2731, i64 21)
  %2733 = call %nyx_string* @nyx_string_concat(%nyx_string* %2730, %nyx_string* %2732)
  %2734 = load %nyx_string*, %nyx_string** %2401
  %2735 = call i8* @nyx_string_to_cstr(%nyx_string* %2733)
  %2736 = call i1 @nyx_write_file_safe(i8* %2735, %nyx_string* %2734)
  %2737 = getelementptr [29 x i8], [29 x i8]* @.str258, i32 0, i32 0
  %2738 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str258.c, i8* %2737, i64 28)
  %2739 = call i8* @nyx_string_to_cstr(%nyx_string* %2738)
  call void @nyx_print_string(i8* %2739)
  br label %merge498
else497:
  br label %merge498
merge498:
  ret i64 0
}

define internal i64 @print_valid_options(
) {
  %2740 = getelementptr [115 x i8], [115 x i8]* @.str259, i32 0, i32 0
  %2741 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str259.c, i8* %2740, i64 114)
  %2742 = call i8* @nyx_string_to_cstr(%nyx_string* %2741)
  call void @nyx_print_string(i8* %2742)
  ret i64 0
}

define i64 @main(
i32 %argc, i8** %argv) {
  call void @nyx_set_args(i32 %argc, i8** %argv)
  %2743 = getelementptr [24 x i8], [24 x i8]* @.str260, i32 0, i32 0
  %2744 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str260.c, i8* %2743, i64 23)
  %2745 = call i8* @nyx_string_to_cstr(%nyx_string* %2744)
  call void @nyx_print_string(i8* %2745)
  %2746 = call %TestConfig @load_test_config()
  %2747 = alloca %TestConfig
  store %TestConfig %2746, %TestConfig* %2747
  %2748 = call { i64, i8* }* @nyx_get_args()
  %2749 = alloca { i64, i8* }*
  store { i64, i8* }* %2748, { i64, i8* }** %2749
  %2750 = getelementptr [1 x i8], [1 x i8]* @.str261, i32 0, i32 0
  %2751 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str261.c, i8* %2750, i64 0)
  %2752 = alloca %nyx_string*
  store %nyx_string* %2751, %nyx_string** %2752
  %2753 = alloca i64
  store i64 1, i64* %2753
  %2754 = getelementptr [9 x i8], [9 x i8]* @.str262, i32 0, i32 0
  %2755 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str262.c, i8* %2754, i64 8)
  %2756 = alloca %nyx_string*
  store %nyx_string* %2755, %nyx_string** %2756
  %2757 = getelementptr [10 x i8], [10 x i8]* @.str263, i32 0, i32 0
  %2758 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str263.c, i8* %2757, i64 9)
  %2759 = alloca %nyx_string*
  store %nyx_string* %2758, %nyx_string** %2759
  %2760 = getelementptr [3 x i8], [3 x i8]* @.str264, i32 0, i32 0
  %2761 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str264.c, i8* %2760, i64 2)
  %2762 = alloca %nyx_string*
  store %nyx_string* %2761, %nyx_string** %2762
  %2763 = getelementptr [10 x i8], [10 x i8]* @.str265, i32 0, i32 0
  %2764 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str265.c, i8* %2763, i64 9)
  %2765 = alloca %nyx_string*
  store %nyx_string* %2764, %nyx_string** %2765
  %2766 = getelementptr [10 x i8], [10 x i8]* @.str266, i32 0, i32 0
  %2767 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str266.c, i8* %2766, i64 9)
  %2768 = alloca %nyx_string*
  store %nyx_string* %2767, %nyx_string** %2768
  %2769 = getelementptr [11 x i8], [11 x i8]* @.str267, i32 0, i32 0
  %2770 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str267.c, i8* %2769, i64 10)
  %2771 = alloca %nyx_string*
  store %nyx_string* %2770, %nyx_string** %2771
  %2772 = getelementptr [16 x i8], [16 x i8]* @.str268, i32 0, i32 0
  %2773 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str268.c, i8* %2772, i64 15)
  %2774 = alloca %nyx_string*
  store %nyx_string* %2773, %nyx_string** %2774
  %2775 = getelementptr [8 x i8], [8 x i8]* @.str269, i32 0, i32 0
  %2776 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str269.c, i8* %2775, i64 7)
  %2777 = alloca %nyx_string*
  store %nyx_string* %2776, %nyx_string** %2777
  %2778 = getelementptr [12 x i8], [12 x i8]* @.str270, i32 0, i32 0
  %2779 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str270.c, i8* %2778, i64 11)
  %2780 = alloca %nyx_string*
  store %nyx_string* %2779, %nyx_string** %2780
  %2781 = getelementptr [24 x i8], [24 x i8]* @.str271, i32 0, i32 0
  %2782 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str271.c, i8* %2781, i64 23)
  %2783 = alloca %nyx_string*
  store %nyx_string* %2782, %nyx_string** %2783
  %2784 = getelementptr [106 x i8], [106 x i8]* @.str272, i32 0, i32 0
  %2785 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str272.c, i8* %2784, i64 105)
  %2786 = alloca %nyx_string*
  store %nyx_string* %2785, %nyx_string** %2786
  %2787 = getelementptr [9 x i8], [9 x i8]* @.str273, i32 0, i32 0
  %2788 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str273.c, i8* %2787, i64 8)
  %2789 = alloca %nyx_string*
  store %nyx_string* %2788, %nyx_string** %2789
  %2790 = getelementptr [10 x i8], [10 x i8]* @.str274, i32 0, i32 0
  %2791 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str274.c, i8* %2790, i64 9)
  %2792 = alloca %nyx_string*
  store %nyx_string* %2791, %nyx_string** %2792
  %2793 = getelementptr [2 x i8], [2 x i8]* @.str275, i32 0, i32 0
  %2794 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str275.c, i8* %2793, i64 1)
  %2795 = alloca %nyx_string*
  store %nyx_string* %2794, %nyx_string** %2795
  %2796 = getelementptr [4 x i8], [4 x i8]* @.str276, i32 0, i32 0
  %2797 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str276.c, i8* %2796, i64 3)
  %2798 = alloca %nyx_string*
  store %nyx_string* %2797, %nyx_string** %2798
  %2799 = getelementptr [2 x i8], [2 x i8]* @.str277, i32 0, i32 0
  %2800 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str277.c, i8* %2799, i64 1)
  %2801 = alloca %nyx_string*
  store %nyx_string* %2800, %nyx_string** %2801
  %2802 = call i8* @llvm.stacksave()
  br label %while_cond499
while_cond499:
  %2803 = load i64, i64* %2753
  %2804 = load { i64, i8* }*, { i64, i8* }** %2749
  %2805 = call i64 @nyx_array_length({ i64, i8* }* %2804)
  %2806 = icmp slt i64 %2803, %2805
  br i1 %2806, label %while_body500, label %while_end501
while_body500:
  call void @llvm.stackrestore(i8* %2802)
  %2807 = load { i64, i8* }*, { i64, i8* }** %2749
  %2808 = load i64, i64* %2753
  %2809 = call i64 @nyx_array_get_checked({ i64, i8* }* %2807, i64 %2808, i64 2)
  %2810 = inttoptr i64 %2809 to %nyx_string*
  %2811 = alloca %nyx_string*
  store %nyx_string* %2810, %nyx_string** %2811
  %2812 = alloca i1
  store i1 false, i1* %2812
  %2813 = load %nyx_string*, %nyx_string** %2811
  %2814 = load %nyx_string*, %nyx_string** %2756
  %2815 = call i1 @nyx_string_equals(%nyx_string* %2813, %nyx_string* %2814)
  br i1 %2815, label %sc_and_rhs502, label %sc_and_end503
sc_and_rhs502:
  %2816 = load i64, i64* %2753
  %2817 = add i64 %2816, 1
  %2818 = load { i64, i8* }*, { i64, i8* }** %2749
  %2819 = call i64 @nyx_array_length({ i64, i8* }* %2818)
  %2820 = icmp slt i64 %2817, %2819
  store i1 %2820, i1* %2812
  br label %sc_and_end503
sc_and_end503:
  %2821 = load i1, i1* %2812
  br i1 %2821, label %then504, label %else505
then504:
  %2822 = load i64, i64* %2753
  %2823 = add i64 %2822, 1
  store i64 %2823, i64* %2753
  %2824 = load { i64, i8* }*, { i64, i8* }** %2749
  %2825 = load i64, i64* %2753
  %2826 = call i64 @nyx_array_get_checked({ i64, i8* }* %2824, i64 %2825, i64 2)
  %2827 = inttoptr i64 %2826 to %nyx_string*
  %2828 = alloca %nyx_string*
  store %nyx_string* %2827, %nyx_string** %2828
  %2829 = load %nyx_string*, %nyx_string** %2828
  %2830 = getelementptr %TestConfig, %TestConfig* %2747, i32 0, i32 2
  store %nyx_string* %2829, %nyx_string** %2830
  br label %merge506
else505:
  %2831 = alloca i1
  store i1 true, i1* %2831
  %2832 = load %nyx_string*, %nyx_string** %2811
  %2833 = load %nyx_string*, %nyx_string** %2759
  %2834 = call i1 @nyx_string_equals(%nyx_string* %2832, %nyx_string* %2833)
  br i1 %2834, label %sc_or_end508, label %sc_or_rhs507
sc_or_rhs507:
  %2835 = load %nyx_string*, %nyx_string** %2811
  %2836 = load %nyx_string*, %nyx_string** %2762
  %2837 = call i1 @nyx_string_equals(%nyx_string* %2835, %nyx_string* %2836)
  store i1 %2837, i1* %2831
  br label %sc_or_end508
sc_or_end508:
  %2838 = load i1, i1* %2831
  br i1 %2838, label %then509, label %else510
then509:
  %2839 = getelementptr %TestConfig, %TestConfig* %2747, i32 0, i32 3
  store i1 1, i1* %2839
  br label %merge511
else510:
  %2840 = alloca i1
  store i1 false, i1* %2840
  %2841 = load %nyx_string*, %nyx_string** %2811
  %2842 = load %nyx_string*, %nyx_string** %2765
  %2843 = call i1 @nyx_string_equals(%nyx_string* %2841, %nyx_string* %2842)
  br i1 %2843, label %sc_and_rhs512, label %sc_and_end513
sc_and_rhs512:
  %2844 = load i64, i64* %2753
  %2845 = add i64 %2844, 1
  %2846 = load { i64, i8* }*, { i64, i8* }** %2749
  %2847 = call i64 @nyx_array_length({ i64, i8* }* %2846)
  %2848 = icmp slt i64 %2845, %2847
  store i1 %2848, i1* %2840
  br label %sc_and_end513
sc_and_end513:
  %2849 = load i1, i1* %2840
  br i1 %2849, label %then514, label %else515
then514:
  %2850 = load i64, i64* %2753
  %2851 = add i64 %2850, 1
  store i64 %2851, i64* %2753
  %2852 = load { i64, i8* }*, { i64, i8* }** %2749
  %2853 = load i64, i64* %2753
  %2854 = call i64 @nyx_array_get_checked({ i64, i8* }* %2852, i64 %2853, i64 2)
  %2855 = inttoptr i64 %2854 to %nyx_string*
  %2856 = alloca %nyx_string*
  store %nyx_string* %2855, %nyx_string** %2856
  %2857 = load %nyx_string*, %nyx_string** %2856
  %2858 = call i64 @nyx_string_to_int(%nyx_string* %2857)
  %2859 = getelementptr %TestConfig, %TestConfig* %2747, i32 0, i32 1
  store i64 %2858, i64* %2859
  br label %merge516
else515:
  %2860 = load %nyx_string*, %nyx_string** %2811
  %2861 = load %nyx_string*, %nyx_string** %2768
  %2862 = call i1 @nyx_string_equals(%nyx_string* %2860, %nyx_string* %2861)
  br i1 %2862, label %then517, label %else518
then517:
  %2863 = getelementptr %TestConfig, %TestConfig* %2747, i32 0, i32 7
  store i1 1, i1* %2863
  br label %merge519
else518:
  %2864 = load %nyx_string*, %nyx_string** %2811
  %2865 = load %nyx_string*, %nyx_string** %2771
  %2866 = call i1 @nyx_string_equals(%nyx_string* %2864, %nyx_string* %2865)
  br i1 %2866, label %then520, label %else521
then520:
  %2867 = getelementptr %TestConfig, %TestConfig* %2747, i32 0, i32 5
  store i1 1, i1* %2867
  br label %merge522
else521:
  %2868 = load %nyx_string*, %nyx_string** %2811
  %2869 = load %nyx_string*, %nyx_string** %2774
  %2870 = call i1 @nyx_string_equals(%nyx_string* %2868, %nyx_string* %2869)
  br i1 %2870, label %then523, label %else524
then523:
  %2871 = getelementptr %TestConfig, %TestConfig* %2747, i32 0, i32 5
  store i1 1, i1* %2871
  %2872 = getelementptr %TestConfig, %TestConfig* %2747, i32 0, i32 6
  store i1 1, i1* %2872
  br label %merge525
else524:
  %2873 = alloca i1
  store i1 true, i1* %2873
  %2874 = load %nyx_string*, %nyx_string** %2811
  %2875 = load %nyx_string*, %nyx_string** %2777
  %2876 = call i1 @nyx_string_equals(%nyx_string* %2874, %nyx_string* %2875)
  br i1 %2876, label %sc_or_end527, label %sc_or_rhs526
sc_or_rhs526:
  %2877 = load %nyx_string*, %nyx_string** %2811
  %2878 = load %nyx_string*, %nyx_string** %2780
  %2879 = call i1 @nyx_string_starts_with(%nyx_string* %2877, %nyx_string* %2878)
  store i1 %2879, i1* %2873
  br label %sc_or_end527
sc_or_end527:
  %2880 = load i1, i1* %2873
  br i1 %2880, label %then528, label %else529
then528:
  %2881 = load %nyx_string*, %nyx_string** %2783
  %2882 = load %nyx_string*, %nyx_string** %2811
  %2883 = call %nyx_string* @nyx_string_concat(%nyx_string* %2881, %nyx_string* %2882)
  %2884 = call i8* @nyx_string_to_cstr(%nyx_string* %2883)
  call void @nyx_print_string(i8* %2884)
  %2885 = load %nyx_string*, %nyx_string** %2786
  %2886 = call i8* @nyx_string_to_cstr(%nyx_string* %2885)
  call void @nyx_print_string(i8* %2886)
  %2887 = call i64 @print_valid_options()
  ret i64 1
else529:
  %2888 = alloca i1
  store i1 true, i1* %2888
  %2889 = load %nyx_string*, %nyx_string** %2811
  %2890 = load %nyx_string*, %nyx_string** %2789
  %2891 = call i1 @nyx_string_equals(%nyx_string* %2889, %nyx_string* %2890)
  br i1 %2891, label %sc_or_end532, label %sc_or_rhs531
sc_or_rhs531:
  %2892 = load %nyx_string*, %nyx_string** %2811
  %2893 = load %nyx_string*, %nyx_string** %2792
  %2894 = call i1 @nyx_string_starts_with(%nyx_string* %2892, %nyx_string* %2893)
  store i1 %2894, i1* %2888
  br label %sc_or_end532
sc_or_end532:
  %2895 = load i1, i1* %2888
  br i1 %2895, label %then533, label %else534
then533:
  %2896 = load %nyx_string*, %nyx_string** %2811
  store %nyx_string* %2896, %nyx_string** %2752
  %2897 = alloca i1
  store i1 false, i1* %2897
  %2898 = load %nyx_string*, %nyx_string** %2811
  %2899 = load %nyx_string*, %nyx_string** %2789
  %2900 = call i1 @nyx_string_equals(%nyx_string* %2898, %nyx_string* %2899)
  br i1 %2900, label %sc_and_rhs536, label %sc_and_end537
sc_and_rhs536:
  %2901 = load i64, i64* %2753
  %2902 = add i64 %2901, 1
  %2903 = load { i64, i8* }*, { i64, i8* }** %2749
  %2904 = call i64 @nyx_array_length({ i64, i8* }* %2903)
  %2905 = icmp slt i64 %2902, %2904
  store i1 %2905, i1* %2897
  br label %sc_and_end537
sc_and_end537:
  %2906 = load i1, i1* %2897
  br i1 %2906, label %then538, label %else539
then538:
  %2907 = load i64, i64* %2753
  %2908 = add i64 %2907, 1
  store i64 %2908, i64* %2753
  %2909 = load { i64, i8* }*, { i64, i8* }** %2749
  %2910 = load i64, i64* %2753
  %2911 = call i64 @nyx_array_get_checked({ i64, i8* }* %2909, i64 %2910, i64 2)
  %2912 = inttoptr i64 %2911 to %nyx_string*
  %2913 = alloca %nyx_string*
  store %nyx_string* %2912, %nyx_string** %2913
  %2914 = load %nyx_string*, %nyx_string** %2811
  %2915 = load %nyx_string*, %nyx_string** %2795
  %2916 = call %nyx_string* @nyx_string_concat(%nyx_string* %2914, %nyx_string* %2915)
  %2917 = load %nyx_string*, %nyx_string** %2913
  %2918 = call %nyx_string* @nyx_string_concat(%nyx_string* %2916, %nyx_string* %2917)
  store %nyx_string* %2918, %nyx_string** %2752
  br label %merge540
else539:
  br label %merge540
merge540:
  br label %merge535
else534:
  %2919 = alloca i1
  store i1 true, i1* %2919
  %2920 = load %nyx_string*, %nyx_string** %2811
  %2921 = load %nyx_string*, %nyx_string** %2756
  %2922 = call i1 @nyx_string_equals(%nyx_string* %2920, %nyx_string* %2921)
  br i1 %2922, label %sc_or_end542, label %sc_or_rhs541
sc_or_rhs541:
  %2923 = load %nyx_string*, %nyx_string** %2811
  %2924 = load %nyx_string*, %nyx_string** %2765
  %2925 = call i1 @nyx_string_equals(%nyx_string* %2923, %nyx_string* %2924)
  store i1 %2925, i1* %2919
  br label %sc_or_end542
sc_or_end542:
  %2926 = load i1, i1* %2919
  br i1 %2926, label %then543, label %else544
then543:
  br label %merge545
else544:
  %2927 = load %nyx_string*, %nyx_string** %2811
  %2928 = load %nyx_string*, %nyx_string** %2798
  %2929 = call i1 @nyx_string_ends_with(%nyx_string* %2927, %nyx_string* %2928)
  br i1 %2929, label %then546, label %else547
then546:
  %2930 = load %nyx_string*, %nyx_string** %2811
  %2931 = getelementptr %TestConfig, %TestConfig* %2747, i32 0, i32 4
  store %nyx_string* %2930, %nyx_string** %2931
  br label %merge548
else547:
  %2932 = load %nyx_string*, %nyx_string** %2811
  %2933 = load %nyx_string*, %nyx_string** %2801
  %2934 = call i1 @nyx_string_starts_with(%nyx_string* %2932, %nyx_string* %2933)
  br i1 %2934, label %then549, label %else550
then549:
  %2935 = load %nyx_string*, %nyx_string** %2783
  %2936 = load %nyx_string*, %nyx_string** %2811
  %2937 = call %nyx_string* @nyx_string_concat(%nyx_string* %2935, %nyx_string* %2936)
  %2938 = call i8* @nyx_string_to_cstr(%nyx_string* %2937)
  call void @nyx_print_string(i8* %2938)
  %2939 = call i64 @print_valid_options()
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
  %2940 = load i64, i64* %2753
  %2941 = add i64 %2940, 1
  store i64 %2941, i64* %2753
  br label %while_cond499
while_end501:
  %2942 = load %nyx_string*, %nyx_string** %2752
  %2943 = getelementptr [1 x i8], [1 x i8]* @.str278, i32 0, i32 0
  %2944 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str278.c, i8* %2943, i64 0)
  %2945 = call i1 @nyx_string_equals(%nyx_string* %2942, %nyx_string* %2944)
  %2946 = xor i1 %2945, true
  br i1 %2946, label %then552, label %else553
then552:
  %2947 = getelementptr %TestConfig, %TestConfig* %2747, i32 0, i32 5
  %2948 = load i1, i1* %2947
  br i1 %2948, label %then555, label %else556
then555:
  %2949 = getelementptr [47 x i8], [47 x i8]* @.str279, i32 0, i32 0
  %2950 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str279.c, i8* %2949, i64 46)
  %2951 = load %nyx_string*, %nyx_string** %2752
  %2952 = call %nyx_string* @nyx_string_concat(%nyx_string* %2950, %nyx_string* %2951)
  %2953 = getelementptr [58 x i8], [58 x i8]* @.str280, i32 0, i32 0
  %2954 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str280.c, i8* %2953, i64 57)
  %2955 = call %nyx_string* @nyx_string_concat(%nyx_string* %2952, %nyx_string* %2954)
  %2956 = call i8* @nyx_string_to_cstr(%nyx_string* %2955)
  call void @nyx_print_string(i8* %2956)
  br label %merge557
else556:
  %2957 = getelementptr [24 x i8], [24 x i8]* @.str281, i32 0, i32 0
  %2958 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str281.c, i8* %2957, i64 23)
  %2959 = load %nyx_string*, %nyx_string** %2752
  %2960 = call %nyx_string* @nyx_string_concat(%nyx_string* %2958, %nyx_string* %2959)
  %2961 = call i8* @nyx_string_to_cstr(%nyx_string* %2960)
  call void @nyx_print_string(i8* %2961)
  br label %merge557
merge557:
  %2962 = call i64 @print_valid_options()
  ret i64 1
else553:
  br label %merge554
merge554:
  %2963 = getelementptr [1 x i8], [1 x i8]* @.str282, i32 0, i32 0
  %2964 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str282.c, i8* %2963, i64 0)
  %2965 = alloca %nyx_string*
  store %nyx_string* %2964, %nyx_string** %2965
  %2966 = getelementptr [1 x i8], [1 x i8]* @.str283, i32 0, i32 0
  %2967 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str283.c, i8* %2966, i64 0)
  %2968 = alloca %nyx_string*
  store %nyx_string* %2967, %nyx_string** %2968
  %2969 = getelementptr %TestConfig, %TestConfig* %2747, i32 0, i32 5
  %2970 = load i1, i1* %2969
  br i1 %2970, label %then558, label %else559
then558:
  %2971 = call %nyx_string* @cov_find_profdata()
  store %nyx_string* %2971, %nyx_string** %2965
  %2972 = load %nyx_string*, %nyx_string** %2965
  %2973 = getelementptr [1 x i8], [1 x i8]* @.str284, i32 0, i32 0
  %2974 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str284.c, i8* %2973, i64 0)
  %2975 = call i1 @nyx_string_equals(%nyx_string* %2972, %nyx_string* %2974)
  br i1 %2975, label %then561, label %else562
then561:
  %2976 = call %nyx_string* @cov_clang_major()
  %2977 = alloca %nyx_string*
  store %nyx_string* %2976, %nyx_string** %2977
  %2978 = getelementptr [5 x i8], [5 x i8]* @.str285, i32 0, i32 0
  %2979 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str285.c, i8* %2978, i64 4)
  %2980 = alloca %nyx_string*
  store %nyx_string* %2979, %nyx_string** %2980
  %2981 = load %nyx_string*, %nyx_string** %2977
  %2982 = getelementptr [1 x i8], [1 x i8]* @.str286, i32 0, i32 0
  %2983 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str286.c, i8* %2982, i64 0)
  %2984 = call i1 @nyx_string_equals(%nyx_string* %2981, %nyx_string* %2983)
  %2985 = xor i1 %2984, true
  br i1 %2985, label %then564, label %else565
then564:
  %2986 = getelementptr [6 x i8], [6 x i8]* @.str287, i32 0, i32 0
  %2987 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str287.c, i8* %2986, i64 5)
  %2988 = load %nyx_string*, %nyx_string** %2977
  %2989 = call %nyx_string* @nyx_string_concat(%nyx_string* %2987, %nyx_string* %2988)
  store %nyx_string* %2989, %nyx_string** %2980
  br label %merge566
else565:
  br label %merge566
merge566:
  %2990 = getelementptr [101 x i8], [101 x i8]* @.str288, i32 0, i32 0
  %2991 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str288.c, i8* %2990, i64 100)
  %2992 = call i8* @nyx_string_to_cstr(%nyx_string* %2991)
  call void @nyx_print_string(i8* %2992)
  %2993 = getelementptr [35 x i8], [35 x i8]* @.str289, i32 0, i32 0
  %2994 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str289.c, i8* %2993, i64 34)
  %2995 = load %nyx_string*, %nyx_string** %2980
  %2996 = call %nyx_string* @nyx_string_concat(%nyx_string* %2994, %nyx_string* %2995)
  %2997 = call i8* @nyx_string_to_cstr(%nyx_string* %2996)
  call void @nyx_print_string(i8* %2997)
  %2998 = getelementptr [82 x i8], [82 x i8]* @.str290, i32 0, i32 0
  %2999 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str290.c, i8* %2998, i64 81)
  %3000 = call i8* @nyx_string_to_cstr(%nyx_string* %2999)
  call void @nyx_print_string(i8* %3000)
  %3001 = getelementptr [82 x i8], [82 x i8]* @.str291, i32 0, i32 0
  %3002 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str291.c, i8* %3001, i64 81)
  %3003 = call i8* @nyx_string_to_cstr(%nyx_string* %3002)
  call void @nyx_print_string(i8* %3003)
  ret i64 1
else562:
  br label %merge563
merge563:
  %3004 = getelementptr [30 x i8], [30 x i8]* @.str292, i32 0, i32 0
  %3005 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str292.c, i8* %3004, i64 29)
  %3006 = call i8* @nyx_string_to_cstr(%nyx_string* %3005)
  %3007 = call %nyx_string* @nyx_exec(i8* %3006)
  %3008 = call %nyx_string* @nyx_string_trim(%nyx_string* %3007)
  store %nyx_string* %3008, %nyx_string** %2968
  %3009 = load %nyx_string*, %nyx_string** %2968
  %3010 = getelementptr [1 x i8], [1 x i8]* @.str293, i32 0, i32 0
  %3011 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str293.c, i8* %3010, i64 0)
  %3012 = call i1 @nyx_string_equals(%nyx_string* %3009, %nyx_string* %3011)
  br i1 %3012, label %then567, label %else568
then567:
  %3013 = getelementptr [55 x i8], [55 x i8]* @.str294, i32 0, i32 0
  %3014 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str294.c, i8* %3013, i64 54)
  %3015 = call i8* @nyx_string_to_cstr(%nyx_string* %3014)
  call void @nyx_print_string(i8* %3015)
  ret i64 1
else568:
  br label %merge569
merge569:
  br label %merge560
else559:
  br label %merge560
merge560:
  %3016 = call { i64, i8* }* @nyx_array_new_ptr()
  %3017 = alloca { i64, i8* }*
  store { i64, i8* }* %3016, { i64, i8* }** %3017
  %3018 = getelementptr %TestConfig, %TestConfig* %2747, i32 0, i32 4
  %3019 = load %nyx_string*, %nyx_string** %3018
  %3020 = getelementptr [1 x i8], [1 x i8]* @.str295, i32 0, i32 0
  %3021 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str295.c, i8* %3020, i64 0)
  %3022 = call i1 @nyx_string_equals(%nyx_string* %3019, %nyx_string* %3021)
  %3023 = xor i1 %3022, true
  br i1 %3023, label %then570, label %else571
then570:
  %3024 = getelementptr %TestConfig, %TestConfig* %2747, i32 0, i32 4
  %3025 = load %nyx_string*, %nyx_string** %3024
  %3026 = call i8* @nyx_string_to_cstr(%nyx_string* %3025)
  %3027 = call i1 @nyx_file_exists(i8* %3026)
  %3028 = xor i1 %3027, true
  br i1 %3028, label %then573, label %else574
then573:
  %3029 = getelementptr [24 x i8], [24 x i8]* @.str296, i32 0, i32 0
  %3030 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str296.c, i8* %3029, i64 23)
  %3031 = getelementptr %TestConfig, %TestConfig* %2747, i32 0, i32 4
  %3032 = load %nyx_string*, %nyx_string** %3031
  %3033 = call %nyx_string* @nyx_string_concat(%nyx_string* %3030, %nyx_string* %3032)
  %3034 = call i8* @nyx_string_to_cstr(%nyx_string* %3033)
  call void @nyx_print_string(i8* %3034)
  ret i64 1
else574:
  br label %merge575
merge575:
  %3035 = load { i64, i8* }*, { i64, i8* }** %3017
  %3036 = getelementptr %TestConfig, %TestConfig* %2747, i32 0, i32 4
  %3037 = load %nyx_string*, %nyx_string** %3036
  %3038 = ptrtoint %nyx_string* %3037 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %3035, i64 %3038, i64 2)
  br label %merge572
else571:
  %3039 = load %TestConfig, %TestConfig* %2747
  %3040 = call { i64, i8* }* @discover_tests(%TestConfig %3039)
  store { i64, i8* }* %3040, { i64, i8* }** %3017
  br label %merge572
merge572:
  %3041 = load { i64, i8* }*, { i64, i8* }** %3017
  %3042 = call i64 @nyx_array_length({ i64, i8* }* %3041)
  %3043 = icmp eq i64 %3042, 0
  br i1 %3043, label %then576, label %else577
then576:
  %3044 = getelementptr [23 x i8], [23 x i8]* @.str297, i32 0, i32 0
  %3045 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str297.c, i8* %3044, i64 22)
  %3046 = call i8* @nyx_string_to_cstr(%nyx_string* %3045)
  call void @nyx_print_string(i8* %3046)
  %3047 = getelementptr %TestConfig, %TestConfig* %2747, i32 0, i32 2
  %3048 = load %nyx_string*, %nyx_string** %3047
  %3049 = getelementptr [1 x i8], [1 x i8]* @.str298, i32 0, i32 0
  %3050 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str298.c, i8* %3049, i64 0)
  %3051 = call i1 @nyx_string_equals(%nyx_string* %3048, %nyx_string* %3050)
  %3052 = xor i1 %3051, true
  br i1 %3052, label %then579, label %else580
then579:
  %3053 = getelementptr [12 x i8], [12 x i8]* @.str299, i32 0, i32 0
  %3054 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str299.c, i8* %3053, i64 11)
  %3055 = getelementptr %TestConfig, %TestConfig* %2747, i32 0, i32 2
  %3056 = load %nyx_string*, %nyx_string** %3055
  %3057 = call %nyx_string* @nyx_string_concat(%nyx_string* %3054, %nyx_string* %3056)
  %3058 = getelementptr [2 x i8], [2 x i8]* @.str300, i32 0, i32 0
  %3059 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str300.c, i8* %3058, i64 1)
  %3060 = call %nyx_string* @nyx_string_concat(%nyx_string* %3057, %nyx_string* %3059)
  %3061 = call i8* @nyx_string_to_cstr(%nyx_string* %3060)
  call void @nyx_print_string(i8* %3061)
  br label %merge581
else580:
  br label %merge581
merge581:
  %3062 = getelementptr [14 x i8], [14 x i8]* @.str301, i32 0, i32 0
  %3063 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str301.c, i8* %3062, i64 13)
  %3064 = getelementptr %TestConfig, %TestConfig* %2747, i32 0, i32 0
  %3065 = load %nyx_string*, %nyx_string** %3064
  %3066 = call %nyx_string* @nyx_string_concat(%nyx_string* %3063, %nyx_string* %3065)
  %3067 = getelementptr [2 x i8], [2 x i8]* @.str302, i32 0, i32 0
  %3068 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str302.c, i8* %3067, i64 1)
  %3069 = call %nyx_string* @nyx_string_concat(%nyx_string* %3066, %nyx_string* %3068)
  %3070 = call i8* @nyx_string_to_cstr(%nyx_string* %3069)
  call void @nyx_print_string(i8* %3070)
  ret i64 0
else577:
  br label %merge578
merge578:
  %3071 = getelementptr [9 x i8], [9 x i8]* @.str303, i32 0, i32 0
  %3072 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str303.c, i8* %3071, i64 8)
  %3073 = load { i64, i8* }*, { i64, i8* }** %3017
  %3074 = call i64 @nyx_array_length({ i64, i8* }* %3073)
  %3075 = call %nyx_string* @nyx_string_from_int(i64 %3074)
  %3076 = call %nyx_string* @nyx_string_concat(%nyx_string* %3072, %nyx_string* %3075)
  %3077 = getelementptr [14 x i8], [14 x i8]* @.str304, i32 0, i32 0
  %3078 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str304.c, i8* %3077, i64 13)
  %3079 = call %nyx_string* @nyx_string_concat(%nyx_string* %3076, %nyx_string* %3078)
  %3080 = call i8* @nyx_string_to_cstr(%nyx_string* %3079)
  call void @nyx_print_string(i8* %3080)
  %3081 = getelementptr %TestConfig, %TestConfig* %2747, i32 0, i32 2
  %3082 = load %nyx_string*, %nyx_string** %3081
  %3083 = getelementptr [1 x i8], [1 x i8]* @.str305, i32 0, i32 0
  %3084 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str305.c, i8* %3083, i64 0)
  %3085 = call i1 @nyx_string_equals(%nyx_string* %3082, %nyx_string* %3084)
  %3086 = xor i1 %3085, true
  br i1 %3086, label %then582, label %else583
then582:
  %3087 = getelementptr [12 x i8], [12 x i8]* @.str306, i32 0, i32 0
  %3088 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str306.c, i8* %3087, i64 11)
  %3089 = getelementptr %TestConfig, %TestConfig* %2747, i32 0, i32 2
  %3090 = load %nyx_string*, %nyx_string** %3089
  %3091 = call %nyx_string* @nyx_string_concat(%nyx_string* %3088, %nyx_string* %3090)
  %3092 = getelementptr [2 x i8], [2 x i8]* @.str307, i32 0, i32 0
  %3093 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str307.c, i8* %3092, i64 1)
  %3094 = call %nyx_string* @nyx_string_concat(%nyx_string* %3091, %nyx_string* %3093)
  %3095 = call i8* @nyx_string_to_cstr(%nyx_string* %3094)
  call void @nyx_print_string(i8* %3095)
  br label %merge584
else583:
  br label %merge584
merge584:
  %3096 = getelementptr [1 x i8], [1 x i8]* @.str308, i32 0, i32 0
  %3097 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str308.c, i8* %3096, i64 0)
  %3098 = call i8* @nyx_string_to_cstr(%nyx_string* %3097)
  call void @nyx_print_string(i8* %3098)
  %3099 = call { i64, i8* }* @nyx_array_new_ptr()
  %3100 = alloca { i64, i8* }*
  store { i64, i8* }* %3099, { i64, i8* }** %3100
  %3101 = call { i64, i8* }* @nyx_array_new_ptr()
  %3102 = alloca { i64, i8* }*
  store { i64, i8* }* %3101, { i64, i8* }** %3102
  %3103 = call { i64, i8* }* @nyx_array_new_ptr()
  %3104 = alloca { i64, i8* }*
  store { i64, i8* }* %3103, { i64, i8* }** %3104
  %3105 = alloca i64
  store i64 0, i64* %3105
  %3106 = alloca i64
  store i64 0, i64* %3106
  %3107 = alloca i64
  store i64 0, i64* %3107
  %3108 = call i8* @llvm.stacksave()
  br label %while_cond585
while_cond585:
  %3109 = load i64, i64* %3107
  %3110 = load { i64, i8* }*, { i64, i8* }** %3017
  %3111 = call i64 @nyx_array_length({ i64, i8* }* %3110)
  %3112 = icmp slt i64 %3109, %3111
  br i1 %3112, label %while_body586, label %while_end587
while_body586:
  call void @llvm.stackrestore(i8* %3108)
  %3113 = load { i64, i8* }*, { i64, i8* }** %3017
  %3114 = load i64, i64* %3107
  %3115 = call i64 @nyx_array_get_checked({ i64, i8* }* %3113, i64 %3114, i64 2)
  %3116 = inttoptr i64 %3115 to %nyx_string*
  %3117 = alloca %nyx_string*
  store %nyx_string* %3116, %nyx_string** %3117
  %3118 = load %nyx_string*, %nyx_string** %3117
  %3119 = call i1 @file_has_test_blocks(%nyx_string* %3118)
  %3120 = xor i1 %3119, true
  br i1 %3120, label %then588, label %else589
then588:
  %3121 = load i64, i64* %3107
  %3122 = add i64 %3121, 1
  store i64 %3122, i64* %3107
  br label %merge590
else589:
  %3123 = load %nyx_string*, %nyx_string** %3117
  %3124 = load %TestConfig, %TestConfig* %2747
  %3125 = load %nyx_string*, %nyx_string** %2968
  %3126 = load i64, i64* %3107
  %3127 = call %TestResult @compile_and_run(%nyx_string* %3123, %TestConfig %3124, %nyx_string* %3125, i64 %3126)
  %3128 = alloca %TestResult
  store %TestResult %3127, %TestResult* %3128
  %3129 = load { i64, i8* }*, { i64, i8* }** %3100
  %3130 = load %TestResult, %TestResult* %3128
  %3131 = getelementptr %TestResult, %TestResult* null, i32 1
  %3132 = ptrtoint %TestResult* %3131 to i64
  %3133 = call i8* @GC_malloc(i64 %3132)
  %3134 = bitcast i8* %3133 to %TestResult*
  store %TestResult %3130, %TestResult* %3134
  %3135 = ptrtoint %TestResult* %3134 to i64
  call void @nyx_array_push({ i64, i8* }* %3129, i64 %3135)
  %3136 = load { i64, i8* }*, { i64, i8* }** %3102
  %3137 = load %nyx_string*, %nyx_string** %3117
  %3138 = ptrtoint %nyx_string* %3137 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %3136, i64 %3138, i64 2)
  %3139 = load { i64, i8* }*, { i64, i8* }** %3104
  %3140 = load i64, i64* %3107
  %3141 = call %nyx_string* @nyx_string_from_int(i64 %3140)
  %3142 = ptrtoint %nyx_string* %3141 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %3139, i64 %3142, i64 2)
  %3143 = load i64, i64* %3105
  %3144 = getelementptr %TestResult, %TestResult* %3128, i32 0, i32 1
  %3145 = load i64, i64* %3144
  %3146 = add i64 %3143, %3145
  store i64 %3146, i64* %3105
  %3147 = load i64, i64* %3106
  %3148 = getelementptr %TestResult, %TestResult* %3128, i32 0, i32 2
  %3149 = load i64, i64* %3148
  %3150 = add i64 %3147, %3149
  store i64 %3150, i64* %3106
  %3151 = load %TestResult, %TestResult* %3128
  %3152 = getelementptr %TestConfig, %TestConfig* %2747, i32 0, i32 3
  %3153 = load i1, i1* %3152
  %3154 = call i64 @print_result(%TestResult %3151, i1 %3153)
  %3155 = load i64, i64* %3107
  %3156 = add i64 %3155, 1
  store i64 %3156, i64* %3107
  br label %merge590
merge590:
  br label %while_cond585
while_end587:
  %3157 = load { i64, i8* }*, { i64, i8* }** %3100
  %3158 = call i64 @nyx_array_length({ i64, i8* }* %3157)
  %3159 = icmp eq i64 %3158, 0
  br i1 %3159, label %then591, label %else592
then591:
  %3160 = getelementptr [35 x i8], [35 x i8]* @.str309, i32 0, i32 0
  %3161 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str309.c, i8* %3160, i64 34)
  %3162 = call i8* @nyx_string_to_cstr(%nyx_string* %3161)
  call void @nyx_print_string(i8* %3162)
  %3163 = load %nyx_string*, %nyx_string** %2968
  %3164 = getelementptr [1 x i8], [1 x i8]* @.str310, i32 0, i32 0
  %3165 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str310.c, i8* %3164, i64 0)
  %3166 = call i1 @nyx_string_equals(%nyx_string* %3163, %nyx_string* %3165)
  %3167 = xor i1 %3166, true
  br i1 %3167, label %then594, label %else595
then594:
  %3168 = getelementptr [8 x i8], [8 x i8]* @.str311, i32 0, i32 0
  %3169 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str311.c, i8* %3168, i64 7)
  %3170 = load %nyx_string*, %nyx_string** %2968
  %3171 = call %nyx_string* @nyx_string_concat(%nyx_string* %3169, %nyx_string* %3170)
  %3172 = call i8* @nyx_string_to_cstr(%nyx_string* %3171)
  %3173 = call %nyx_string* @nyx_exec(i8* %3172)
  br label %merge596
else595:
  br label %merge596
merge596:
  ret i64 0
else592:
  br label %merge593
merge593:
  %3174 = load { i64, i8* }*, { i64, i8* }** %3100
  %3175 = load i64, i64* %3105
  %3176 = load i64, i64* %3106
  %3177 = call i64 @print_summary({ i64, i8* }* %3174, i64 %3175, i64 %3176)
  %3178 = getelementptr %TestConfig, %TestConfig* %2747, i32 0, i32 5
  %3179 = load i1, i1* %3178
  br i1 %3179, label %then597, label %else598
then597:
  %3180 = load %nyx_string*, %nyx_string** %2968
  %3181 = load { i64, i8* }*, { i64, i8* }** %3102
  %3182 = load { i64, i8* }*, { i64, i8* }** %3104
  %3183 = load %nyx_string*, %nyx_string** %2965
  %3184 = getelementptr %TestConfig, %TestConfig* %2747, i32 0, i32 6
  %3185 = load i1, i1* %3184
  %3186 = call i64 @cov_report(%nyx_string* %3180, { i64, i8* }* %3181, { i64, i8* }* %3182, %nyx_string* %3183, i1 %3185)
  %3187 = getelementptr [8 x i8], [8 x i8]* @.str312, i32 0, i32 0
  %3188 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str312.c, i8* %3187, i64 7)
  %3189 = load %nyx_string*, %nyx_string** %2968
  %3190 = call %nyx_string* @nyx_string_concat(%nyx_string* %3188, %nyx_string* %3189)
  %3191 = call i8* @nyx_string_to_cstr(%nyx_string* %3190)
  %3192 = call %nyx_string* @nyx_exec(i8* %3191)
  br label %merge599
else598:
  br label %merge599
merge599:
  %3193 = alloca i64
  store i64 0, i64* %3193
  %3194 = alloca i64
  store i64 0, i64* %3194
  %3195 = call i8* @llvm.stacksave()
  br label %while_cond600
while_cond600:
  %3196 = load i64, i64* %3194
  %3197 = load { i64, i8* }*, { i64, i8* }** %3100
  %3198 = call i64 @nyx_array_length({ i64, i8* }* %3197)
  %3199 = icmp slt i64 %3196, %3198
  br i1 %3199, label %while_body601, label %while_end602
while_body601:
  call void @llvm.stackrestore(i8* %3195)
  %3200 = load { i64, i8* }*, { i64, i8* }** %3100
  %3201 = load i64, i64* %3194
  %3202 = call i64 @nyx_array_get({ i64, i8* }* %3200, i64 %3201)
  %3203 = inttoptr i64 %3202 to %TestResult*
  %3204 = load %TestResult, %TestResult* %3203
  %3205 = alloca %TestResult
  store %TestResult %3204, %TestResult* %3205
  %3206 = getelementptr %TestResult, %TestResult* %3205, i32 0, i32 4
  %3207 = load i1, i1* %3206
  %3208 = xor i1 %3207, true
  br i1 %3208, label %then603, label %else604
then603:
  %3209 = load i64, i64* %3193
  %3210 = add i64 %3209, 1
  store i64 %3210, i64* %3193
  br label %merge605
else604:
  br label %merge605
merge605:
  %3211 = load i64, i64* %3194
  %3212 = add i64 %3211, 1
  store i64 %3212, i64* %3194
  br label %while_cond600
while_end602:
  %3213 = alloca i1
  store i1 true, i1* %3213
  %3214 = load i64, i64* %3106
  %3215 = icmp sgt i64 %3214, 0
  br i1 %3215, label %sc_or_end607, label %sc_or_rhs606
sc_or_rhs606:
  %3216 = load i64, i64* %3193
  %3217 = icmp sgt i64 %3216, 0
  store i1 %3217, i1* %3213
  br label %sc_or_end607
sc_or_end607:
  %3218 = load i1, i1* %3213
  br i1 %3218, label %then608, label %else609
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
  %3219 = sub i64 0, 9223372036854775808
  store i64 %3219, i64* @INT_MIN
  ret void
}

@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @__nyx_init_globals, i8* null }]

attributes #0 = { returns_twice }

