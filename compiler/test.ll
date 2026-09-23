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
@.str72 = private unnamed_addr constant [180 x i8] c"nyx_pila() { local c; c=$(ulimit -s 2>/dev/null) || return 0; [ \22$c\22 = unlimited ] && return 0; [ \22$c\22 -ge 65536 ] 2>/dev/null && return 0; ulimit -s 65536 2>/dev/null || true; }\0a\00"
@.str72.c = internal global %nyx_string* null
@.str73 = private unnamed_addr constant [322 x i8] c"nyx_pista() { [ \22$1\22 -ge 128 ] 2>/dev/null && echo \22nota: el compilador murio por una senal (rc=$1). La causa conocida es quedarse sin pila con una expresion muy larga o muy anidada (cientos de operandos en una sola expresion): conviene partirla en varias. Si no es eso, se puede reportar con 'nyx report'.\22; return 0; }\0a\00"
@.str73.c = internal global %nyx_string* null
@.str74 = private unnamed_addr constant [55 x i8] c"( nyx_pila; env -u NYX_SKIP_SEMANTIC NYX_PROJECT_DIR=\22\00"
@.str74.c = internal global %nyx_string* null
@.str75 = private unnamed_addr constant [37 x i8] c"\22 NYX_SRC=\22$SRCNX\22 NYX_SRC_DISPLAY=\22\00"
@.str75.c = internal global %nyx_string* null
@.str76 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str76.c = internal global %nyx_string* null
@.str77 = private unnamed_addr constant [22 x i8] c" ./nyx_bootstrap ) > \00"
@.str77.c = internal global %nyx_string* null
@.str78 = private unnamed_addr constant [36 x i8] c" 2>&1 || { rc=$?; nyx_pista $rc >> \00"
@.str78.c = internal global %nyx_string* null
@.str79 = private unnamed_addr constant [13 x i8] c"; exit 1; }\0a\00"
@.str79.c = internal global %nyx_string* null
@.str80 = private unnamed_addr constant [42 x i8] c"SRC=\22$(mktemp /tmp/nyx_test_src_XXXXXX)\22\0a\00"
@.str80.c = internal global %nyx_string* null
@.str81 = private unnamed_addr constant [17 x i8] c"SRCNX=\22$SRC.nx\22\0a\00"
@.str81.c = internal global %nyx_string* null
@.str82 = private unnamed_addr constant [31 x i8] c"trap 'rm -f \22$SRC\22 \22$SRCNX\22 \22$\00"
@.str82.c = internal global %nyx_string* null
@.str83 = private unnamed_addr constant [17 x i8] c"{SRC}.ll\22' EXIT\0a\00"
@.str83.c = internal global %nyx_string* null
@.str84 = private unnamed_addr constant [5 x i8] c"cp \22\00"
@.str84.c = internal global %nyx_string* null
@.str85 = private unnamed_addr constant [2 x i8] c"/\00"
@.str85.c = internal global %nyx_string* null
@.str86 = private unnamed_addr constant [12 x i8] c"\22 \22$SRCNX\22\0a\00"
@.str86.c = internal global %nyx_string* null
@.str87 = private unnamed_addr constant [5 x i8] c"cd \22\00"
@.str87.c = internal global %nyx_string* null
@.str88 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str88.c = internal global %nyx_string* null
@.str89 = private unnamed_addr constant [51 x i8] c"if command -v flock >/dev/null 2>&1; then exec 9>\22\00"
@.str89.c = internal global %nyx_string* null
@.str90 = private unnamed_addr constant [35 x i8] c"/.toolchain.lock\22; flock -s 9; fi\0a\00"
@.str90.c = internal global %nyx_string* null
@.str91 = private unnamed_addr constant [7 x i8] c"clang \00"
@.str91.c = internal global %nyx_string* null
@.str92 = private unnamed_addr constant [40 x i8] c"-Wno-deprecated-declarations \22$SRC.ll\22 \00"
@.str92.c = internal global %nyx_string* null
@.str93 = private unnamed_addr constant [44 x i8] c"-lgc -lpthread -ldl -lm -lssl -lcrypto -lz \00"
@.str93.c = internal global %nyx_string* null
@.str94 = private unnamed_addr constant [4 x i8] c"-o \00"
@.str94.c = internal global %nyx_string* null
@.str95 = private unnamed_addr constant [6 x i8] c" 2>> \00"
@.str95.c = internal global %nyx_string* null
@.str96 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str96.c = internal global %nyx_string* null
@.str97 = private unnamed_addr constant [57 x i8] c"if command -v flock >/dev/null 2>&1; then exec 9>&-; fi\0a\00"
@.str97.c = internal global %nyx_string* null
@.str98 = private unnamed_addr constant [9 x i8] c"timeout \00"
@.str98.c = internal global %nyx_string* null
@.str99 = private unnamed_addr constant [2 x i8] c" \00"
@.str99.c = internal global %nyx_string* null
@.str100 = private unnamed_addr constant [4 x i8] c" > \00"
@.str100.c = internal global %nyx_string* null
@.str101 = private unnamed_addr constant [7 x i8] c" 2>&1\0a\00"
@.str101.c = internal global %nyx_string* null
@.str102 = private unnamed_addr constant [14 x i8] c"EXIT_CODE=$?\0a\00"
@.str102.c = internal global %nyx_string* null
@.str103 = private unnamed_addr constant [7 x i8] c"rm -f \00"
@.str103.c = internal global %nyx_string* null
@.str104 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str104.c = internal global %nyx_string* null
@.str105 = private unnamed_addr constant [17 x i8] c"exit $EXIT_CODE\0a\00"
@.str105.c = internal global %nyx_string* null
@.str106 = private unnamed_addr constant [8 x i8] c"/run.sh\00"
@.str106.c = internal global %nyx_string* null
@.str107 = private unnamed_addr constant [6 x i8] c"bash \00"
@.str107.c = internal global %nyx_string* null
@.str108 = private unnamed_addr constant [1 x i8] c"\00"
@.str108.c = internal global %nyx_string* null
@.str109 = private unnamed_addr constant [8 x i8] c"rm -rf \00"
@.str109.c = internal global %nyx_string* null
@.str110 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str110.c = internal global %nyx_string* null
@.str111 = private unnamed_addr constant [6 x i8] c"PASS:\00"
@.str111.c = internal global %nyx_string* null
@.str112 = private unnamed_addr constant [6 x i8] c"FAIL:\00"
@.str112.c = internal global %nyx_string* null
@.str113 = private unnamed_addr constant [9 x i8] c"  PASS  \00"
@.str113.c = internal global %nyx_string* null
@.str114 = private unnamed_addr constant [3 x i8] c" (\00"
@.str114.c = internal global %nyx_string* null
@.str115 = private unnamed_addr constant [8 x i8] c" tests)\00"
@.str115.c = internal global %nyx_string* null
@.str116 = private unnamed_addr constant [9 x i8] c"  FAIL  \00"
@.str116.c = internal global %nyx_string* null
@.str117 = private unnamed_addr constant [3 x i8] c" (\00"
@.str117.c = internal global %nyx_string* null
@.str118 = private unnamed_addr constant [10 x i8] c" passed, \00"
@.str118.c = internal global %nyx_string* null
@.str119 = private unnamed_addr constant [9 x i8] c" failed)\00"
@.str119.c = internal global %nyx_string* null
@.str120 = private unnamed_addr constant [1 x i8] c"\00"
@.str120.c = internal global %nyx_string* null
@.str121 = private unnamed_addr constant [36 x i8] c"===================================\00"
@.str121.c = internal global %nyx_string* null
@.str122 = private unnamed_addr constant [11 x i8] c"  Files:  \00"
@.str122.c = internal global %nyx_string* null
@.str123 = private unnamed_addr constant [10 x i8] c" passed, \00"
@.str123.c = internal global %nyx_string* null
@.str124 = private unnamed_addr constant [10 x i8] c" failed (\00"
@.str124.c = internal global %nyx_string* null
@.str125 = private unnamed_addr constant [8 x i8] c" total)\00"
@.str125.c = internal global %nyx_string* null
@.str126 = private unnamed_addr constant [11 x i8] c"  Tests:  \00"
@.str126.c = internal global %nyx_string* null
@.str127 = private unnamed_addr constant [10 x i8] c" passed, \00"
@.str127.c = internal global %nyx_string* null
@.str128 = private unnamed_addr constant [10 x i8] c" failed (\00"
@.str128.c = internal global %nyx_string* null
@.str129 = private unnamed_addr constant [8 x i8] c" total)\00"
@.str129.c = internal global %nyx_string* null
@.str130 = private unnamed_addr constant [27 x i8] c"  Status: ALL TESTS PASSED\00"
@.str130.c = internal global %nyx_string* null
@.str131 = private unnamed_addr constant [28 x i8] c"  Status: SOME TESTS FAILED\00"
@.str131.c = internal global %nyx_string* null
@.str132 = private unnamed_addr constant [36 x i8] c"===================================\00"
@.str132.c = internal global %nyx_string* null
@.str133 = private unnamed_addr constant [28 x i8] c"clang --version 2>/dev/null\00"
@.str133.c = internal global %nyx_string* null
@.str134 = private unnamed_addr constant [9 x i8] c"version \00"
@.str134.c = internal global %nyx_string* null
@.str135 = private unnamed_addr constant [1 x i8] c"\00"
@.str135.c = internal global %nyx_string* null
@.str136 = private unnamed_addr constant [1 x i8] c"\00"
@.str136.c = internal global %nyx_string* null
@.str137 = private unnamed_addr constant [10 x i8] c"test -s \22\00"
@.str137.c = internal global %nyx_string* null
@.str138 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str138.c = internal global %nyx_string* null
@.str139 = private unnamed_addr constant [1 x i8] c"\00"
@.str139.c = internal global %nyx_string* null
@.str140 = private unnamed_addr constant [26 x i8] c"command -v llvm-profdata-\00"
@.str140.c = internal global %nyx_string* null
@.str141 = private unnamed_addr constant [13 x i8] c" 2>/dev/null\00"
@.str141.c = internal global %nyx_string* null
@.str142 = private unnamed_addr constant [1 x i8] c"\00"
@.str142.c = internal global %nyx_string* null
@.str143 = private unnamed_addr constant [37 x i8] c"command -v llvm-profdata 2>/dev/null\00"
@.str143.c = internal global %nyx_string* null
@.str144 = private unnamed_addr constant [2 x i8] c"0\00"
@.str144.c = internal global %nyx_string* null
@.str145 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str145.c = internal global %nyx_string* null
@.str146 = private unnamed_addr constant [1 x i8] c"\00"
@.str146.c = internal global %nyx_string* null
@.str147 = private unnamed_addr constant [3 x i8] c"  \00"
@.str147.c = internal global %nyx_string* null
@.str148 = private unnamed_addr constant [4 x i8] c"   \00"
@.str148.c = internal global %nyx_string* null
@.str149 = private unnamed_addr constant [2 x i8] c":\00"
@.str149.c = internal global %nyx_string* null
@.str150 = private unnamed_addr constant [2 x i8] c";\00"
@.str150.c = internal global %nyx_string* null
@.str151 = private unnamed_addr constant [1 x i8] c"\00"
@.str151.c = internal global %nyx_string* null
@.str152 = private unnamed_addr constant [14 x i8] c"Block counts:\00"
@.str152.c = internal global %nyx_string* null
@.str153 = private unnamed_addr constant [2 x i8] c"[\00"
@.str153.c = internal global %nyx_string* null
@.str154 = private unnamed_addr constant [2 x i8] c"]\00"
@.str154.c = internal global %nyx_string* null
@.str155 = private unnamed_addr constant [2 x i8] c",\00"
@.str155.c = internal global %nyx_string* null
@.str156 = private unnamed_addr constant [2 x i8] c"1\00"
@.str156.c = internal global %nyx_string* null
@.str157 = private unnamed_addr constant [4 x i8] c"src\00"
@.str157.c = internal global %nyx_string* null
@.str158 = private unnamed_addr constant [50 x i8] c"find src -name '*.nx' 2>/dev/null | LC_ALL=C sort\00"
@.str158.c = internal global %nyx_string* null
@.str159 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str159.c = internal global %nyx_string* null
@.str160 = private unnamed_addr constant [4 x i8] c".nx\00"
@.str160.c = internal global %nyx_string* null
@.str161 = private unnamed_addr constant [9 x i8] c"_test.nx\00"
@.str161.c = internal global %nyx_string* null
@.str162 = private unnamed_addr constant [1 x i8] c"\00"
@.str162.c = internal global %nyx_string* null
@.str163 = private unnamed_addr constant [9 x i8] c"import \22\00"
@.str163.c = internal global %nyx_string* null
@.str164 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str164.c = internal global %nyx_string* null
@.str165 = private unnamed_addr constant [36 x i8] c"\0afn main() -> int {\0a    return 0\0a}\0a\00"
@.str165.c = internal global %nyx_string* null
@.str166 = private unnamed_addr constant [13 x i8] c"/universe.nx\00"
@.str166.c = internal global %nyx_string* null
@.str167 = private unnamed_addr constant [14 x i8] c"/universe.tsv\00"
@.str167.c = internal global %nyx_string* null
@.str168 = private unnamed_addr constant [13 x i8] c"#!/bin/bash\0a\00"
@.str168.c = internal global %nyx_string* null
@.str169 = private unnamed_addr constant [8 x i8] c"SRCNX=\22\00"
@.str169.c = internal global %nyx_string* null
@.str170 = private unnamed_addr constant [19 x i8] c"/universe.src.nx\22\0a\00"
@.str170.c = internal global %nyx_string* null
@.str171 = private unnamed_addr constant [5 x i8] c"cp \22\00"
@.str171.c = internal global %nyx_string* null
@.str172 = private unnamed_addr constant [24 x i8] c"/universe.nx\22 \22$SRCNX\22\0a\00"
@.str172.c = internal global %nyx_string* null
@.str173 = private unnamed_addr constant [5 x i8] c"cd \22\00"
@.str173.c = internal global %nyx_string* null
@.str174 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str174.c = internal global %nyx_string* null
@.str175 = private unnamed_addr constant [137 x i8] c"( c=$(ulimit -s 2>/dev/null); if [ \22$c\22 != unlimited ] && [ \22$c\22 -lt 65536 ] 2>/dev/null; then ulimit -s 65536 2>/dev/null || true; fi; \00"
@.str175.c = internal global %nyx_string* null
@.str176 = private unnamed_addr constant [43 x i8] c"env -u NYX_SKIP_SEMANTIC NYX_PROJECT_DIR=\22\00"
@.str176.c = internal global %nyx_string* null
@.str177 = private unnamed_addr constant [38 x i8] c"\22 NYX_SRC=\22$SRCNX\22 NYX_COVERAGE_MAP=\22\00"
@.str177.c = internal global %nyx_string* null
@.str178 = private unnamed_addr constant [24 x i8] c"\22 ./nyx_bootstrap ) > \22\00"
@.str178.c = internal global %nyx_string* null
@.str179 = private unnamed_addr constant [21 x i8] c"/universe.log\22 2>&1\0a\00"
@.str179.c = internal global %nyx_string* null
@.str180 = private unnamed_addr constant [7 x i8] c"RC=$?\0a\00"
@.str180.c = internal global %nyx_string* null
@.str181 = private unnamed_addr constant [17 x i8] c"rm -f \22$SRCNX\22 \22\00"
@.str181.c = internal global %nyx_string* null
@.str182 = private unnamed_addr constant [19 x i8] c"/universe.src.ll\22\0a\00"
@.str182.c = internal global %nyx_string* null
@.str183 = private unnamed_addr constant [10 x i8] c"exit $RC\0a\00"
@.str183.c = internal global %nyx_string* null
@.str184 = private unnamed_addr constant [13 x i8] c"/universe.sh\00"
@.str184.c = internal global %nyx_string* null
@.str185 = private unnamed_addr constant [7 x i8] c"bash \22\00"
@.str185.c = internal global %nyx_string* null
@.str186 = private unnamed_addr constant [14 x i8] c"/universe.sh\22\00"
@.str186.c = internal global %nyx_string* null
@.str187 = private unnamed_addr constant [9 x i8] c"NYX_HOME\00"
@.str187.c = internal global %nyx_string* null
@.str188 = private unnamed_addr constant [4 x i8] c"PWD\00"
@.str188.c = internal global %nyx_string* null
@.str189 = private unnamed_addr constant [1 x i8] c"\00"
@.str189.c = internal global %nyx_string* null
@.str190 = private unnamed_addr constant [36 x i8] c"== Cobertura de funciones (src/) ==\00"
@.str190.c = internal global %nyx_string* null
@.str191 = private unnamed_addr constant [1 x i8] c"\00"
@.str191.c = internal global %nyx_string* null
@.str192 = private unnamed_addr constant [2 x i8] c"/\00"
@.str192.c = internal global %nyx_string* null
@.str193 = private unnamed_addr constant [9 x i8] c".profraw\00"
@.str193.c = internal global %nyx_string* null
@.str194 = private unnamed_addr constant [3 x i8] c" \22\00"
@.str194.c = internal global %nyx_string* null
@.str195 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str195.c = internal global %nyx_string* null
@.str196 = private unnamed_addr constant [2 x i8] c"1\00"
@.str196.c = internal global %nyx_string* null
@.str197 = private unnamed_addr constant [17 x i8] c"/merged.profdata\00"
@.str197.c = internal global %nyx_string* null
@.str198 = private unnamed_addr constant [12 x i8] c" merge -o \22\00"
@.str198.c = internal global %nyx_string* null
@.str199 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str199.c = internal global %nyx_string* null
@.str200 = private unnamed_addr constant [5 x i8] c" > \22\00"
@.str200.c = internal global %nyx_string* null
@.str201 = private unnamed_addr constant [17 x i8] c"/merge.log\22 2>&1\00"
@.str201.c = internal global %nyx_string* null
@.str202 = private unnamed_addr constant [36 x i8] c"  error: llvm-profdata merge fallo:\00"
@.str202.c = internal global %nyx_string* null
@.str203 = private unnamed_addr constant [11 x i8] c"/merge.log\00"
@.str203.c = internal global %nyx_string* null
@.str204 = private unnamed_addr constant [33 x i8] c" show --all-functions --counts \22\00"
@.str204.c = internal global %nyx_string* null
@.str205 = private unnamed_addr constant [6 x i8] c"\22 > \22\00"
@.str205.c = internal global %nyx_string* null
@.str206 = private unnamed_addr constant [16 x i8] c"/show.txt\22 2>&1\00"
@.str206.c = internal global %nyx_string* null
@.str207 = private unnamed_addr constant [10 x i8] c"/show.txt\00"
@.str207.c = internal global %nyx_string* null
@.str208 = private unnamed_addr constant [2 x i8] c"/\00"
@.str208.c = internal global %nyx_string* null
@.str209 = private unnamed_addr constant [5 x i8] c".tsv\00"
@.str209.c = internal global %nyx_string* null
@.str210 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str210.c = internal global %nyx_string* null
@.str211 = private unnamed_addr constant [1 x i8] c"\00"
@.str211.c = internal global %nyx_string* null
@.str212 = private unnamed_addr constant [2 x i8] c"1\00"
@.str212.c = internal global %nyx_string* null
@.str213 = private unnamed_addr constant [5 x i8] c"mono\00"
@.str213.c = internal global %nyx_string* null
@.str214 = private unnamed_addr constant [27 x i8] c"  (no hay modulos en src/)\00"
@.str214.c = internal global %nyx_string* null
@.str215 = private unnamed_addr constant [68 x i8] c"  error: no se pudo listar las funciones de src/ (src/ no compila):\00"
@.str215.c = internal global %nyx_string* null
@.str216 = private unnamed_addr constant [14 x i8] c"/universe.log\00"
@.str216.c = internal global %nyx_string* null
@.str217 = private unnamed_addr constant [14 x i8] c"/universe.log\00"
@.str217.c = internal global %nyx_string* null
@.str218 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str218.c = internal global %nyx_string* null
@.str219 = private unnamed_addr constant [3 x i8] c"fn\00"
@.str219.c = internal global %nyx_string* null
@.str220 = private unnamed_addr constant [7 x i8] c"metodo\00"
@.str220.c = internal global %nyx_string* null
@.str221 = private unnamed_addr constant [6 x i8] c"async\00"
@.str221.c = internal global %nyx_string* null
@.str222 = private unnamed_addr constant [9 x i8] c"generica\00"
@.str222.c = internal global %nyx_string* null
@.str223 = private unnamed_addr constant [5 x i8] c"src/\00"
@.str223.c = internal global %nyx_string* null
@.str224 = private unnamed_addr constant [5 x i8] c"main\00"
@.str224.c = internal global %nyx_string* null
@.str225 = private unnamed_addr constant [3 x i8] c"no\00"
@.str225.c = internal global %nyx_string* null
@.str226 = private unnamed_addr constant [3 x i8] c"si\00"
@.str226.c = internal global %nyx_string* null
@.str227 = private unnamed_addr constant [10 x i8] c"sin_datos\00"
@.str227.c = internal global %nyx_string* null
@.str228 = private unnamed_addr constant [5 x i8] c".nx\09\00"
@.str228.c = internal global %nyx_string* null
@.str229 = private unnamed_addr constant [2 x i8] c"\09\00"
@.str229.c = internal global %nyx_string* null
@.str230 = private unnamed_addr constant [1 x i8] c"\00"
@.str230.c = internal global %nyx_string* null
@.str231 = private unnamed_addr constant [1 x i8] c"\00"
@.str231.c = internal global %nyx_string* null
@.str232 = private unnamed_addr constant [10 x i8] c"sin_datos\00"
@.str232.c = internal global %nyx_string* null
@.str233 = private unnamed_addr constant [2 x i8] c"0\00"
@.str233.c = internal global %nyx_string* null
@.str234 = private unnamed_addr constant [3 x i8] c"si\00"
@.str234.c = internal global %nyx_string* null
@.str235 = private unnamed_addr constant [2 x i8] c"1\00"
@.str235.c = internal global %nyx_string* null
@.str236 = private unnamed_addr constant [5 x i8] c"    \00"
@.str236.c = internal global %nyx_string* null
@.str237 = private unnamed_addr constant [2 x i8] c":\00"
@.str237.c = internal global %nyx_string* null
@.str238 = private unnamed_addr constant [2 x i8] c" \00"
@.str238.c = internal global %nyx_string* null
@.str239 = private unnamed_addr constant [4 x i8] c"FN:\00"
@.str239.c = internal global %nyx_string* null
@.str240 = private unnamed_addr constant [2 x i8] c",\00"
@.str240.c = internal global %nyx_string* null
@.str241 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str241.c = internal global %nyx_string* null
@.str242 = private unnamed_addr constant [6 x i8] c"FNDA:\00"
@.str242.c = internal global %nyx_string* null
@.str243 = private unnamed_addr constant [3 x i8] c"  \00"
@.str243.c = internal global %nyx_string* null
@.str244 = private unnamed_addr constant [3 x i8] c": \00"
@.str244.c = internal global %nyx_string* null
@.str245 = private unnamed_addr constant [2 x i8] c"/\00"
@.str245.c = internal global %nyx_string* null
@.str246 = private unnamed_addr constant [10 x i8] c" llamadas\00"
@.str246.c = internal global %nyx_string* null
@.str247 = private unnamed_addr constant [29 x i8] c" (ninguna prueba lo importa)\00"
@.str247.c = internal global %nyx_string* null
@.str248 = private unnamed_addr constant [3 x i8] c" (\00"
@.str248.c = internal global %nyx_string* null
@.str249 = private unnamed_addr constant [38 x i8] c" sin datos: su prueba no dejo perfil)\00"
@.str249.c = internal global %nyx_string* null
@.str250 = private unnamed_addr constant [4 x i8] c"SF:\00"
@.str250.c = internal global %nyx_string* null
@.str251 = private unnamed_addr constant [5 x i8] c"FNF:\00"
@.str251.c = internal global %nyx_string* null
@.str252 = private unnamed_addr constant [6 x i8] c"\0aFNH:\00"
@.str252.c = internal global %nyx_string* null
@.str253 = private unnamed_addr constant [16 x i8] c"\0aend_of_record\0a\00"
@.str253.c = internal global %nyx_string* null
@.str254 = private unnamed_addr constant [70 x i8] c"  Sin perfil (timeout, crash o no compilo; sus funciones no cuentan):\00"
@.str254.c = internal global %nyx_string* null
@.str255 = private unnamed_addr constant [5 x i8] c"    \00"
@.str255.c = internal global %nyx_string* null
@.str256 = private unnamed_addr constant [10 x i8] c"  Total: \00"
@.str256.c = internal global %nyx_string* null
@.str257 = private unnamed_addr constant [2 x i8] c"/\00"
@.str257.c = internal global %nyx_string* null
@.str258 = private unnamed_addr constant [20 x i8] c" funciones llamadas\00"
@.str258.c = internal global %nyx_string* null
@.str259 = private unnamed_addr constant [11 x i8] c"mkdir -p \22\00"
@.str259.c = internal global %nyx_string* null
@.str260 = private unnamed_addr constant [9 x i8] c"/target\22\00"
@.str260.c = internal global %nyx_string* null
@.str261 = private unnamed_addr constant [22 x i8] c"/target/coverage.lcov\00"
@.str261.c = internal global %nyx_string* null
@.str262 = private unnamed_addr constant [29 x i8] c"  lcov: target/coverage.lcov\00"
@.str262.c = internal global %nyx_string* null
@.str263 = private unnamed_addr constant [115 x i8] c"  Opciones validas: --filter <string>, --verbose (-v), --timeout <seconds>, --release, --coverage, --coverage=lcov\00"
@.str263.c = internal global %nyx_string* null
@.str264 = private unnamed_addr constant [24 x i8] c"=== Nyx Test Runner ===\00"
@.str264.c = internal global %nyx_string* null
@.str265 = private unnamed_addr constant [1 x i8] c"\00"
@.str265.c = internal global %nyx_string* null
@.str266 = private unnamed_addr constant [9 x i8] c"--filter\00"
@.str266.c = internal global %nyx_string* null
@.str267 = private unnamed_addr constant [10 x i8] c"--verbose\00"
@.str267.c = internal global %nyx_string* null
@.str268 = private unnamed_addr constant [3 x i8] c"-v\00"
@.str268.c = internal global %nyx_string* null
@.str269 = private unnamed_addr constant [10 x i8] c"--timeout\00"
@.str269.c = internal global %nyx_string* null
@.str270 = private unnamed_addr constant [10 x i8] c"--release\00"
@.str270.c = internal global %nyx_string* null
@.str271 = private unnamed_addr constant [11 x i8] c"--coverage\00"
@.str271.c = internal global %nyx_string* null
@.str272 = private unnamed_addr constant [16 x i8] c"--coverage=lcov\00"
@.str272.c = internal global %nyx_string* null
@.str273 = private unnamed_addr constant [8 x i8] c"--cover\00"
@.str273.c = internal global %nyx_string* null
@.str274 = private unnamed_addr constant [12 x i8] c"--coverage=\00"
@.str274.c = internal global %nyx_string* null
@.str275 = private unnamed_addr constant [24 x i8] c"error: unknown option: \00"
@.str275.c = internal global %nyx_string* null
@.str276 = private unnamed_addr constant [106 x i8] c"  La cobertura se pide con --coverage (informe de texto) o --coverage=lcov (ademas target/coverage.lcov).\00"
@.str276.c = internal global %nyx_string* null
@.str277 = private unnamed_addr constant [9 x i8] c"--target\00"
@.str277.c = internal global %nyx_string* null
@.str278 = private unnamed_addr constant [10 x i8] c"--target=\00"
@.str278.c = internal global %nyx_string* null
@.str279 = private unnamed_addr constant [2 x i8] c" \00"
@.str279.c = internal global %nyx_string* null
@.str280 = private unnamed_addr constant [4 x i8] c".nx\00"
@.str280.c = internal global %nyx_string* null
@.str281 = private unnamed_addr constant [2 x i8] c"-\00"
@.str281.c = internal global %nyx_string* null
@.str282 = private unnamed_addr constant [1 x i8] c"\00"
@.str282.c = internal global %nyx_string* null
@.str283 = private unnamed_addr constant [47 x i8] c"error: --coverage solo mide el target nativo: \00"
@.str283.c = internal global %nyx_string* null
@.str284 = private unnamed_addr constant [58 x i8] c" no tiene perfiles de LLVM (wasm y Windows quedan fuera).\00"
@.str284.c = internal global %nyx_string* null
@.str285 = private unnamed_addr constant [24 x i8] c"error: unknown option: \00"
@.str285.c = internal global %nyx_string* null
@.str286 = private unnamed_addr constant [1 x i8] c"\00"
@.str286.c = internal global %nyx_string* null
@.str287 = private unnamed_addr constant [1 x i8] c"\00"
@.str287.c = internal global %nyx_string* null
@.str288 = private unnamed_addr constant [1 x i8] c"\00"
@.str288.c = internal global %nyx_string* null
@.str289 = private unnamed_addr constant [5 x i8] c"llvm\00"
@.str289.c = internal global %nyx_string* null
@.str290 = private unnamed_addr constant [1 x i8] c"\00"
@.str290.c = internal global %nyx_string* null
@.str291 = private unnamed_addr constant [6 x i8] c"llvm-\00"
@.str291.c = internal global %nyx_string* null
@.str292 = private unnamed_addr constant [101 x i8] c"error: --coverage necesita llvm-profdata (de la misma version mayor que clang) y no esta en el PATH.\00"
@.str292.c = internal global %nyx_string* null
@.str293 = private unnamed_addr constant [35 x i8] c"  Debian/Ubuntu: sudo apt install \00"
@.str293.c = internal global %nyx_string* null
@.str294 = private unnamed_addr constant [82 x i8] c"  macOS (Homebrew): brew install llvm, y agrega $(brew --prefix llvm)/bin al PATH\00"
@.str294.c = internal global %nyx_string* null
@.str295 = private unnamed_addr constant [82 x i8] c"  Tambien hace falta el runtime de perfiles de compiler-rt (libclang_rt.profile).\00"
@.str295.c = internal global %nyx_string* null
@.str296 = private unnamed_addr constant [30 x i8] c"mktemp -d /tmp/nyx_cov_XXXXXX\00"
@.str296.c = internal global %nyx_string* null
@.str297 = private unnamed_addr constant [1 x i8] c"\00"
@.str297.c = internal global %nyx_string* null
@.str298 = private unnamed_addr constant [55 x i8] c"error: --coverage no pudo crear un directorio temporal\00"
@.str298.c = internal global %nyx_string* null
@.str299 = private unnamed_addr constant [1 x i8] c"\00"
@.str299.c = internal global %nyx_string* null
@.str300 = private unnamed_addr constant [24 x i8] c"error: file not found: \00"
@.str300.c = internal global %nyx_string* null
@.str301 = private unnamed_addr constant [23 x i8] c"  No test files found.\00"
@.str301.c = internal global %nyx_string* null
@.str302 = private unnamed_addr constant [1 x i8] c"\00"
@.str302.c = internal global %nyx_string* null
@.str303 = private unnamed_addr constant [12 x i8] c"  Filter: \22\00"
@.str303.c = internal global %nyx_string* null
@.str304 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str304.c = internal global %nyx_string* null
@.str305 = private unnamed_addr constant [14 x i8] c"  Looked in: \00"
@.str305.c = internal global %nyx_string* null
@.str306 = private unnamed_addr constant [2 x i8] c"/\00"
@.str306.c = internal global %nyx_string* null
@.str307 = private unnamed_addr constant [9 x i8] c"  Found \00"
@.str307.c = internal global %nyx_string* null
@.str308 = private unnamed_addr constant [14 x i8] c" test file(s)\00"
@.str308.c = internal global %nyx_string* null
@.str309 = private unnamed_addr constant [1 x i8] c"\00"
@.str309.c = internal global %nyx_string* null
@.str310 = private unnamed_addr constant [12 x i8] c"  Filter: \22\00"
@.str310.c = internal global %nyx_string* null
@.str311 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str311.c = internal global %nyx_string* null
@.str312 = private unnamed_addr constant [1 x i8] c"\00"
@.str312.c = internal global %nyx_string* null
@.str313 = private unnamed_addr constant [35 x i8] c"  No files with test blocks found.\00"
@.str313.c = internal global %nyx_string* null
@.str314 = private unnamed_addr constant [1 x i8] c"\00"
@.str314.c = internal global %nyx_string* null
@.str315 = private unnamed_addr constant [8 x i8] c"rm -rf \00"
@.str315.c = internal global %nyx_string* null
@.str316 = private unnamed_addr constant [8 x i8] c"rm -rf \00"
@.str316.c = internal global %nyx_string* null
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
declare i64 @nyx_slot_as_array_checked({ i64, i8* }*, i64)
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
  %1119 = getelementptr [180 x i8], [180 x i8]* @.str72, i32 0, i32 0
  %1120 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str72.c, i8* %1119, i64 179)
  %1121 = call %nyx_string* @nyx_string_concat(%nyx_string* %1118, %nyx_string* %1120)
  %1122 = getelementptr [322 x i8], [322 x i8]* @.str73, i32 0, i32 0
  %1123 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str73.c, i8* %1122, i64 321)
  %1124 = call %nyx_string* @nyx_string_concat(%nyx_string* %1121, %nyx_string* %1123)
  %1125 = alloca %nyx_string*
  store %nyx_string* %1124, %nyx_string** %1125
  %1126 = getelementptr [55 x i8], [55 x i8]* @.str74, i32 0, i32 0
  %1127 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str74.c, i8* %1126, i64 54)
  %1128 = load %nyx_string*, %nyx_string** %987
  %1129 = call %nyx_string* @nyx_string_concat(%nyx_string* %1127, %nyx_string* %1128)
  %1130 = getelementptr [37 x i8], [37 x i8]* @.str75, i32 0, i32 0
  %1131 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str75.c, i8* %1130, i64 36)
  %1132 = call %nyx_string* @nyx_string_concat(%nyx_string* %1129, %nyx_string* %1131)
  %1133 = load %nyx_string*, %nyx_string** %file.ptr
  %1134 = call %nyx_string* @nyx_string_concat(%nyx_string* %1132, %nyx_string* %1133)
  %1135 = getelementptr [2 x i8], [2 x i8]* @.str76, i32 0, i32 0
  %1136 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str76.c, i8* %1135, i64 1)
  %1137 = call %nyx_string* @nyx_string_concat(%nyx_string* %1134, %nyx_string* %1136)
  %1138 = load %nyx_string*, %nyx_string** %1081
  %1139 = call %nyx_string* @nyx_string_concat(%nyx_string* %1137, %nyx_string* %1138)
  %1140 = getelementptr [22 x i8], [22 x i8]* @.str77, i32 0, i32 0
  %1141 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str77.c, i8* %1140, i64 21)
  %1142 = call %nyx_string* @nyx_string_concat(%nyx_string* %1139, %nyx_string* %1141)
  %1143 = load %nyx_string*, %nyx_string** %1002
  %1144 = call %nyx_string* @nyx_string_concat(%nyx_string* %1142, %nyx_string* %1143)
  %1145 = getelementptr [36 x i8], [36 x i8]* @.str78, i32 0, i32 0
  %1146 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str78.c, i8* %1145, i64 35)
  %1147 = call %nyx_string* @nyx_string_concat(%nyx_string* %1144, %nyx_string* %1146)
  %1148 = load %nyx_string*, %nyx_string** %1002
  %1149 = call %nyx_string* @nyx_string_concat(%nyx_string* %1147, %nyx_string* %1148)
  %1150 = getelementptr [13 x i8], [13 x i8]* @.str79, i32 0, i32 0
  %1151 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str79.c, i8* %1150, i64 12)
  %1152 = call %nyx_string* @nyx_string_concat(%nyx_string* %1149, %nyx_string* %1151)
  %1153 = alloca %nyx_string*
  store %nyx_string* %1152, %nyx_string** %1153
  %1154 = load %nyx_string*, %nyx_string** %1125
  %1155 = getelementptr [42 x i8], [42 x i8]* @.str80, i32 0, i32 0
  %1156 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str80.c, i8* %1155, i64 41)
  %1157 = call %nyx_string* @nyx_string_concat(%nyx_string* %1154, %nyx_string* %1156)
  %1158 = getelementptr [17 x i8], [17 x i8]* @.str81, i32 0, i32 0
  %1159 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str81.c, i8* %1158, i64 16)
  %1160 = call %nyx_string* @nyx_string_concat(%nyx_string* %1157, %nyx_string* %1159)
  %1161 = getelementptr [31 x i8], [31 x i8]* @.str82, i32 0, i32 0
  %1162 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str82.c, i8* %1161, i64 30)
  %1163 = call %nyx_string* @nyx_string_concat(%nyx_string* %1160, %nyx_string* %1162)
  %1164 = getelementptr [17 x i8], [17 x i8]* @.str83, i32 0, i32 0
  %1165 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str83.c, i8* %1164, i64 16)
  %1166 = call %nyx_string* @nyx_string_concat(%nyx_string* %1163, %nyx_string* %1165)
  %1167 = getelementptr [5 x i8], [5 x i8]* @.str84, i32 0, i32 0
  %1168 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str84.c, i8* %1167, i64 4)
  %1169 = call %nyx_string* @nyx_string_concat(%nyx_string* %1166, %nyx_string* %1168)
  %1170 = load %nyx_string*, %nyx_string** %987
  %1171 = call %nyx_string* @nyx_string_concat(%nyx_string* %1169, %nyx_string* %1170)
  %1172 = getelementptr [2 x i8], [2 x i8]* @.str85, i32 0, i32 0
  %1173 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str85.c, i8* %1172, i64 1)
  %1174 = call %nyx_string* @nyx_string_concat(%nyx_string* %1171, %nyx_string* %1173)
  %1175 = load %nyx_string*, %nyx_string** %file.ptr
  %1176 = call %nyx_string* @nyx_string_concat(%nyx_string* %1174, %nyx_string* %1175)
  %1177 = getelementptr [12 x i8], [12 x i8]* @.str86, i32 0, i32 0
  %1178 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str86.c, i8* %1177, i64 11)
  %1179 = call %nyx_string* @nyx_string_concat(%nyx_string* %1176, %nyx_string* %1178)
  %1180 = getelementptr [5 x i8], [5 x i8]* @.str87, i32 0, i32 0
  %1181 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str87.c, i8* %1180, i64 4)
  %1182 = call %nyx_string* @nyx_string_concat(%nyx_string* %1179, %nyx_string* %1181)
  %1183 = load %nyx_string*, %nyx_string** %965
  %1184 = call %nyx_string* @nyx_string_concat(%nyx_string* %1182, %nyx_string* %1183)
  %1185 = getelementptr [3 x i8], [3 x i8]* @.str88, i32 0, i32 0
  %1186 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str88.c, i8* %1185, i64 2)
  %1187 = call %nyx_string* @nyx_string_concat(%nyx_string* %1184, %nyx_string* %1186)
  %1188 = getelementptr [51 x i8], [51 x i8]* @.str89, i32 0, i32 0
  %1189 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str89.c, i8* %1188, i64 50)
  %1190 = call %nyx_string* @nyx_string_concat(%nyx_string* %1187, %nyx_string* %1189)
  %1191 = load %nyx_string*, %nyx_string** %965
  %1192 = call %nyx_string* @nyx_string_concat(%nyx_string* %1190, %nyx_string* %1191)
  %1193 = getelementptr [35 x i8], [35 x i8]* @.str90, i32 0, i32 0
  %1194 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str90.c, i8* %1193, i64 34)
  %1195 = call %nyx_string* @nyx_string_concat(%nyx_string* %1192, %nyx_string* %1194)
  %1196 = load %nyx_string*, %nyx_string** %1153
  %1197 = call %nyx_string* @nyx_string_concat(%nyx_string* %1195, %nyx_string* %1196)
  %1198 = getelementptr [7 x i8], [7 x i8]* @.str91, i32 0, i32 0
  %1199 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str91.c, i8* %1198, i64 6)
  %1200 = call %nyx_string* @nyx_string_concat(%nyx_string* %1197, %nyx_string* %1199)
  %1201 = load %nyx_string*, %nyx_string** %1010
  %1202 = call %nyx_string* @nyx_string_concat(%nyx_string* %1200, %nyx_string* %1201)
  %1203 = load %nyx_string*, %nyx_string** %1084
  %1204 = call %nyx_string* @nyx_string_concat(%nyx_string* %1202, %nyx_string* %1203)
  %1205 = getelementptr [40 x i8], [40 x i8]* @.str92, i32 0, i32 0
  %1206 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str92.c, i8* %1205, i64 39)
  %1207 = call %nyx_string* @nyx_string_concat(%nyx_string* %1204, %nyx_string* %1206)
  %1208 = load %nyx_string*, %nyx_string** %1038
  %1209 = call %nyx_string* @nyx_string_concat(%nyx_string* %1207, %nyx_string* %1208)
  %1210 = getelementptr [44 x i8], [44 x i8]* @.str93, i32 0, i32 0
  %1211 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str93.c, i8* %1210, i64 43)
  %1212 = call %nyx_string* @nyx_string_concat(%nyx_string* %1209, %nyx_string* %1211)
  %1213 = getelementptr [4 x i8], [4 x i8]* @.str94, i32 0, i32 0
  %1214 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str94.c, i8* %1213, i64 3)
  %1215 = call %nyx_string* @nyx_string_concat(%nyx_string* %1212, %nyx_string* %1214)
  %1216 = load %nyx_string*, %nyx_string** %1007
  %1217 = call %nyx_string* @nyx_string_concat(%nyx_string* %1215, %nyx_string* %1216)
  %1218 = getelementptr [6 x i8], [6 x i8]* @.str95, i32 0, i32 0
  %1219 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str95.c, i8* %1218, i64 5)
  %1220 = call %nyx_string* @nyx_string_concat(%nyx_string* %1217, %nyx_string* %1219)
  %1221 = load %nyx_string*, %nyx_string** %1002
  %1222 = call %nyx_string* @nyx_string_concat(%nyx_string* %1220, %nyx_string* %1221)
  %1223 = getelementptr [2 x i8], [2 x i8]* @.str96, i32 0, i32 0
  %1224 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str96.c, i8* %1223, i64 1)
  %1225 = call %nyx_string* @nyx_string_concat(%nyx_string* %1222, %nyx_string* %1224)
  %1226 = getelementptr [57 x i8], [57 x i8]* @.str97, i32 0, i32 0
  %1227 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str97.c, i8* %1226, i64 56)
  %1228 = call %nyx_string* @nyx_string_concat(%nyx_string* %1225, %nyx_string* %1227)
  %1229 = load %nyx_string*, %nyx_string** %1087
  %1230 = call %nyx_string* @nyx_string_concat(%nyx_string* %1228, %nyx_string* %1229)
  %1231 = getelementptr [9 x i8], [9 x i8]* @.str98, i32 0, i32 0
  %1232 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str98.c, i8* %1231, i64 8)
  %1233 = call %nyx_string* @nyx_string_concat(%nyx_string* %1230, %nyx_string* %1232)
  %1234 = load %nyx_string*, %nyx_string** %991
  %1235 = call %nyx_string* @nyx_string_concat(%nyx_string* %1233, %nyx_string* %1234)
  %1236 = getelementptr [2 x i8], [2 x i8]* @.str99, i32 0, i32 0
  %1237 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str99.c, i8* %1236, i64 1)
  %1238 = call %nyx_string* @nyx_string_concat(%nyx_string* %1235, %nyx_string* %1237)
  %1239 = load %nyx_string*, %nyx_string** %1007
  %1240 = call %nyx_string* @nyx_string_concat(%nyx_string* %1238, %nyx_string* %1239)
  %1241 = getelementptr [4 x i8], [4 x i8]* @.str100, i32 0, i32 0
  %1242 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str100.c, i8* %1241, i64 3)
  %1243 = call %nyx_string* @nyx_string_concat(%nyx_string* %1240, %nyx_string* %1242)
  %1244 = load %nyx_string*, %nyx_string** %1002
  %1245 = call %nyx_string* @nyx_string_concat(%nyx_string* %1243, %nyx_string* %1244)
  %1246 = getelementptr [7 x i8], [7 x i8]* @.str101, i32 0, i32 0
  %1247 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str101.c, i8* %1246, i64 6)
  %1248 = call %nyx_string* @nyx_string_concat(%nyx_string* %1245, %nyx_string* %1247)
  %1249 = getelementptr [14 x i8], [14 x i8]* @.str102, i32 0, i32 0
  %1250 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str102.c, i8* %1249, i64 13)
  %1251 = call %nyx_string* @nyx_string_concat(%nyx_string* %1248, %nyx_string* %1250)
  %1252 = getelementptr [7 x i8], [7 x i8]* @.str103, i32 0, i32 0
  %1253 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str103.c, i8* %1252, i64 6)
  %1254 = call %nyx_string* @nyx_string_concat(%nyx_string* %1251, %nyx_string* %1253)
  %1255 = load %nyx_string*, %nyx_string** %1007
  %1256 = call %nyx_string* @nyx_string_concat(%nyx_string* %1254, %nyx_string* %1255)
  %1257 = getelementptr [2 x i8], [2 x i8]* @.str104, i32 0, i32 0
  %1258 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str104.c, i8* %1257, i64 1)
  %1259 = call %nyx_string* @nyx_string_concat(%nyx_string* %1256, %nyx_string* %1258)
  %1260 = getelementptr [17 x i8], [17 x i8]* @.str105, i32 0, i32 0
  %1261 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str105.c, i8* %1260, i64 16)
  %1262 = call %nyx_string* @nyx_string_concat(%nyx_string* %1259, %nyx_string* %1261)
  %1263 = alloca %nyx_string*
  store %nyx_string* %1262, %nyx_string** %1263
  %1264 = load %nyx_string*, %nyx_string** %997
  %1265 = getelementptr [8 x i8], [8 x i8]* @.str106, i32 0, i32 0
  %1266 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str106.c, i8* %1265, i64 7)
  %1267 = call %nyx_string* @nyx_string_concat(%nyx_string* %1264, %nyx_string* %1266)
  %1268 = alloca %nyx_string*
  store %nyx_string* %1267, %nyx_string** %1268
  %1269 = load %nyx_string*, %nyx_string** %1268
  %1270 = load %nyx_string*, %nyx_string** %1263
  %1271 = call i8* @nyx_string_to_cstr(%nyx_string* %1269)
  %1272 = call i1 @nyx_write_file_safe(i8* %1271, %nyx_string* %1270)
  %1273 = getelementptr [6 x i8], [6 x i8]* @.str107, i32 0, i32 0
  %1274 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str107.c, i8* %1273, i64 5)
  %1275 = load %nyx_string*, %nyx_string** %1268
  %1276 = call %nyx_string* @nyx_string_concat(%nyx_string* %1274, %nyx_string* %1275)
  %1277 = call i8* @nyx_string_to_cstr(%nyx_string* %1276)
  %1278 = call i64 @nyx_exec_code(i8* %1277)
  %1279 = alloca i64
  store i64 %1278, i64* %1279
  %1280 = getelementptr [1 x i8], [1 x i8]* @.str108, i32 0, i32 0
  %1281 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str108.c, i8* %1280, i64 0)
  %1282 = alloca %nyx_string*
  store %nyx_string* %1281, %nyx_string** %1282
  %1283 = load %nyx_string*, %nyx_string** %1002
  %1284 = call i8* @nyx_string_to_cstr(%nyx_string* %1283)
  %1285 = call i1 @nyx_file_exists(i8* %1284)
  br i1 %1285, label %then290, label %else291
then290:
  %1286 = load %nyx_string*, %nyx_string** %1002
  %1287 = call i8* @nyx_string_to_cstr(%nyx_string* %1286)
  %1288 = call %nyx_string* @nyx_read_file(i8* %1287)
  store %nyx_string* %1288, %nyx_string** %1282
  br label %merge292
else291:
  br label %merge292
merge292:
  %1289 = getelementptr [8 x i8], [8 x i8]* @.str109, i32 0, i32 0
  %1290 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str109.c, i8* %1289, i64 7)
  %1291 = load %nyx_string*, %nyx_string** %997
  %1292 = call %nyx_string* @nyx_string_concat(%nyx_string* %1290, %nyx_string* %1291)
  %1293 = call i8* @nyx_string_to_cstr(%nyx_string* %1292)
  %1294 = call %nyx_string* @nyx_exec(i8* %1293)
  %1295 = alloca i64
  store i64 0, i64* %1295
  %1296 = alloca i64
  store i64 0, i64* %1296
  %1297 = load %nyx_string*, %nyx_string** %1282
  %1298 = getelementptr [2 x i8], [2 x i8]* @.str110, i32 0, i32 0
  %1299 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str110.c, i8* %1298, i64 1)
  %1300 = call { i64, i8* }* @nyx_string_split(%nyx_string* %1297, %nyx_string* %1299)
  %1301 = alloca { i64, i8* }*
  store { i64, i8* }* %1300, { i64, i8* }** %1301
  %1302 = alloca i64
  store i64 0, i64* %1302
  %1303 = getelementptr [6 x i8], [6 x i8]* @.str111, i32 0, i32 0
  %1304 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str111.c, i8* %1303, i64 5)
  %1305 = alloca %nyx_string*
  store %nyx_string* %1304, %nyx_string** %1305
  %1306 = getelementptr [6 x i8], [6 x i8]* @.str112, i32 0, i32 0
  %1307 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str112.c, i8* %1306, i64 5)
  %1308 = alloca %nyx_string*
  store %nyx_string* %1307, %nyx_string** %1308
  %1309 = call i8* @llvm.stacksave()
  br label %while_cond293
while_cond293:
  %1310 = load i64, i64* %1302
  %1311 = load { i64, i8* }*, { i64, i8* }** %1301
  %1312 = call i64 @nyx_array_length({ i64, i8* }* %1311)
  %1313 = icmp slt i64 %1310, %1312
  br i1 %1313, label %while_body294, label %while_end295
while_body294:
  call void @llvm.stackrestore(i8* %1309)
  %1314 = load { i64, i8* }*, { i64, i8* }** %1301
  %1315 = load i64, i64* %1302
  %1316 = call i64 @nyx_array_get_checked({ i64, i8* }* %1314, i64 %1315, i64 2)
  %1317 = inttoptr i64 %1316 to %nyx_string*
  %1318 = alloca %nyx_string*
  store %nyx_string* %1317, %nyx_string** %1318
  %1319 = load %nyx_string*, %nyx_string** %1318
  %1320 = load %nyx_string*, %nyx_string** %1305
  %1321 = call i1 @nyx_string_contains(%nyx_string* %1319, %nyx_string* %1320)
  br i1 %1321, label %then296, label %else297
then296:
  %1322 = load i64, i64* %1295
  %1323 = add i64 %1322, 1
  store i64 %1323, i64* %1295
  br label %merge298
else297:
  %1324 = load %nyx_string*, %nyx_string** %1318
  %1325 = load %nyx_string*, %nyx_string** %1308
  %1326 = call i1 @nyx_string_contains(%nyx_string* %1324, %nyx_string* %1325)
  br i1 %1326, label %then299, label %else300
then299:
  %1327 = load i64, i64* %1296
  %1328 = add i64 %1327, 1
  store i64 %1328, i64* %1296
  br label %merge301
else300:
  br label %merge301
merge301:
  br label %merge298
merge298:
  %1329 = load i64, i64* %1302
  %1330 = add i64 %1329, 1
  store i64 %1330, i64* %1302
  br label %while_cond293
while_end295:
  %1331 = getelementptr %TestResult, %TestResult* null, i32 1
  %1332 = ptrtoint %TestResult* %1331 to i64
  %1333 = call i8* @GC_malloc(i64 %1332)
  %1334 = bitcast i8* %1333 to %TestResult*
  %1335 = load %nyx_string*, %nyx_string** %file.ptr
  %1336 = getelementptr %TestResult, %TestResult* %1334, i32 0, i32 0
  store %nyx_string* %1335, %nyx_string** %1336
  %1337 = load i64, i64* %1295
  %1338 = getelementptr %TestResult, %TestResult* %1334, i32 0, i32 1
  store i64 %1337, i64* %1338
  %1339 = load i64, i64* %1296
  %1340 = getelementptr %TestResult, %TestResult* %1334, i32 0, i32 2
  store i64 %1339, i64* %1340
  %1341 = load %nyx_string*, %nyx_string** %1282
  %1342 = getelementptr %TestResult, %TestResult* %1334, i32 0, i32 3
  store %nyx_string* %1341, %nyx_string** %1342
  %1343 = alloca i1
  store i1 false, i1* %1343
  %1344 = load i64, i64* %1279
  %1345 = icmp eq i64 %1344, 0
  br i1 %1345, label %sc_and_rhs302, label %sc_and_end303
sc_and_rhs302:
  %1346 = load i64, i64* %1296
  %1347 = icmp eq i64 %1346, 0
  store i1 %1347, i1* %1343
  br label %sc_and_end303
sc_and_end303:
  %1348 = load i1, i1* %1343
  %1349 = getelementptr %TestResult, %TestResult* %1334, i32 0, i32 4
  store i1 %1348, i1* %1349
  %1350 = load %TestResult, %TestResult* %1334
  ret %TestResult %1350
}

define internal i64 @print_result(
%TestResult %result.param, i1 %verbose.param) {
  %result.ptr = alloca %TestResult
  store %TestResult %result.param, %TestResult* %result.ptr
  %verbose.ptr = alloca i1
  store i1 %verbose.param, i1* %verbose.ptr
  %1351 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 4
  %1352 = load i1, i1* %1351
  br i1 %1352, label %then304, label %else305
then304:
  %1353 = getelementptr [9 x i8], [9 x i8]* @.str113, i32 0, i32 0
  %1354 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str113.c, i8* %1353, i64 8)
  %1355 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 0
  %1356 = load %nyx_string*, %nyx_string** %1355
  %1357 = call %nyx_string* @nyx_string_concat(%nyx_string* %1354, %nyx_string* %1356)
  %1358 = getelementptr [3 x i8], [3 x i8]* @.str114, i32 0, i32 0
  %1359 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str114.c, i8* %1358, i64 2)
  %1360 = call %nyx_string* @nyx_string_concat(%nyx_string* %1357, %nyx_string* %1359)
  %1361 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 1
  %1362 = load i64, i64* %1361
  %1363 = call %nyx_string* @nyx_string_from_int(i64 %1362)
  %1364 = call %nyx_string* @nyx_string_concat(%nyx_string* %1360, %nyx_string* %1363)
  %1365 = getelementptr [8 x i8], [8 x i8]* @.str115, i32 0, i32 0
  %1366 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str115.c, i8* %1365, i64 7)
  %1367 = call %nyx_string* @nyx_string_concat(%nyx_string* %1364, %nyx_string* %1366)
  %1368 = call i8* @nyx_string_to_cstr(%nyx_string* %1367)
  call void @nyx_print_string(i8* %1368)
  %1369 = load i1, i1* %verbose.ptr
  br i1 %1369, label %then307, label %else308
then307:
  %1370 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 3
  %1371 = load %nyx_string*, %nyx_string** %1370
  %1372 = call i8* @nyx_string_to_cstr(%nyx_string* %1371)
  call void @nyx_print_string(i8* %1372)
  br label %merge309
else308:
  br label %merge309
merge309:
  br label %merge306
else305:
  %1373 = getelementptr [9 x i8], [9 x i8]* @.str116, i32 0, i32 0
  %1374 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str116.c, i8* %1373, i64 8)
  %1375 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 0
  %1376 = load %nyx_string*, %nyx_string** %1375
  %1377 = call %nyx_string* @nyx_string_concat(%nyx_string* %1374, %nyx_string* %1376)
  %1378 = getelementptr [3 x i8], [3 x i8]* @.str117, i32 0, i32 0
  %1379 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str117.c, i8* %1378, i64 2)
  %1380 = call %nyx_string* @nyx_string_concat(%nyx_string* %1377, %nyx_string* %1379)
  %1381 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 1
  %1382 = load i64, i64* %1381
  %1383 = call %nyx_string* @nyx_string_from_int(i64 %1382)
  %1384 = call %nyx_string* @nyx_string_concat(%nyx_string* %1380, %nyx_string* %1383)
  %1385 = getelementptr [10 x i8], [10 x i8]* @.str118, i32 0, i32 0
  %1386 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str118.c, i8* %1385, i64 9)
  %1387 = call %nyx_string* @nyx_string_concat(%nyx_string* %1384, %nyx_string* %1386)
  %1388 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 2
  %1389 = load i64, i64* %1388
  %1390 = call %nyx_string* @nyx_string_from_int(i64 %1389)
  %1391 = call %nyx_string* @nyx_string_concat(%nyx_string* %1387, %nyx_string* %1390)
  %1392 = getelementptr [9 x i8], [9 x i8]* @.str119, i32 0, i32 0
  %1393 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str119.c, i8* %1392, i64 8)
  %1394 = call %nyx_string* @nyx_string_concat(%nyx_string* %1391, %nyx_string* %1393)
  %1395 = call i8* @nyx_string_to_cstr(%nyx_string* %1394)
  call void @nyx_print_string(i8* %1395)
  %1396 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 3
  %1397 = load %nyx_string*, %nyx_string** %1396
  %1398 = call i8* @nyx_string_to_cstr(%nyx_string* %1397)
  call void @nyx_print_string(i8* %1398)
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
  %1399 = getelementptr [1 x i8], [1 x i8]* @.str120, i32 0, i32 0
  %1400 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str120.c, i8* %1399, i64 0)
  %1401 = call i8* @nyx_string_to_cstr(%nyx_string* %1400)
  call void @nyx_print_string(i8* %1401)
  %1402 = getelementptr [36 x i8], [36 x i8]* @.str121, i32 0, i32 0
  %1403 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str121.c, i8* %1402, i64 35)
  %1404 = call i8* @nyx_string_to_cstr(%nyx_string* %1403)
  call void @nyx_print_string(i8* %1404)
  %1405 = alloca i64
  store i64 0, i64* %1405
  %1406 = alloca i64
  store i64 0, i64* %1406
  %1407 = alloca i64
  store i64 0, i64* %1407
  %1408 = call i8* @llvm.stacksave()
  br label %while_cond310
while_cond310:
  %1409 = load i64, i64* %1407
  %1410 = load { i64, i8* }*, { i64, i8* }** %results.ptr
  %1411 = call i64 @nyx_array_length({ i64, i8* }* %1410)
  %1412 = icmp slt i64 %1409, %1411
  br i1 %1412, label %while_body311, label %while_end312
while_body311:
  call void @llvm.stackrestore(i8* %1408)
  %1413 = load { i64, i8* }*, { i64, i8* }** %results.ptr
  %1414 = load i64, i64* %1407
  %1415 = call i64 @nyx_array_get({ i64, i8* }* %1413, i64 %1414)
  %1416 = inttoptr i64 %1415 to %TestResult*
  %1417 = load %TestResult, %TestResult* %1416
  %1418 = alloca %TestResult
  store %TestResult %1417, %TestResult* %1418
  %1419 = getelementptr %TestResult, %TestResult* %1418, i32 0, i32 4
  %1420 = load i1, i1* %1419
  br i1 %1420, label %then313, label %else314
then313:
  %1421 = load i64, i64* %1405
  %1422 = add i64 %1421, 1
  store i64 %1422, i64* %1405
  br label %merge315
else314:
  %1423 = load i64, i64* %1406
  %1424 = add i64 %1423, 1
  store i64 %1424, i64* %1406
  br label %merge315
merge315:
  %1425 = load i64, i64* %1407
  %1426 = add i64 %1425, 1
  store i64 %1426, i64* %1407
  br label %while_cond310
while_end312:
  %1427 = getelementptr [11 x i8], [11 x i8]* @.str122, i32 0, i32 0
  %1428 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str122.c, i8* %1427, i64 10)
  %1429 = load i64, i64* %1405
  %1430 = call %nyx_string* @nyx_string_from_int(i64 %1429)
  %1431 = call %nyx_string* @nyx_string_concat(%nyx_string* %1428, %nyx_string* %1430)
  %1432 = getelementptr [10 x i8], [10 x i8]* @.str123, i32 0, i32 0
  %1433 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str123.c, i8* %1432, i64 9)
  %1434 = call %nyx_string* @nyx_string_concat(%nyx_string* %1431, %nyx_string* %1433)
  %1435 = load i64, i64* %1406
  %1436 = call %nyx_string* @nyx_string_from_int(i64 %1435)
  %1437 = call %nyx_string* @nyx_string_concat(%nyx_string* %1434, %nyx_string* %1436)
  %1438 = getelementptr [10 x i8], [10 x i8]* @.str124, i32 0, i32 0
  %1439 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str124.c, i8* %1438, i64 9)
  %1440 = call %nyx_string* @nyx_string_concat(%nyx_string* %1437, %nyx_string* %1439)
  %1441 = load { i64, i8* }*, { i64, i8* }** %results.ptr
  %1442 = call i64 @nyx_array_length({ i64, i8* }* %1441)
  %1443 = call %nyx_string* @nyx_string_from_int(i64 %1442)
  %1444 = call %nyx_string* @nyx_string_concat(%nyx_string* %1440, %nyx_string* %1443)
  %1445 = getelementptr [8 x i8], [8 x i8]* @.str125, i32 0, i32 0
  %1446 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str125.c, i8* %1445, i64 7)
  %1447 = call %nyx_string* @nyx_string_concat(%nyx_string* %1444, %nyx_string* %1446)
  %1448 = call i8* @nyx_string_to_cstr(%nyx_string* %1447)
  call void @nyx_print_string(i8* %1448)
  %1449 = getelementptr [11 x i8], [11 x i8]* @.str126, i32 0, i32 0
  %1450 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str126.c, i8* %1449, i64 10)
  %1451 = load i64, i64* %total_passed.ptr
  %1452 = call %nyx_string* @nyx_string_from_int(i64 %1451)
  %1453 = call %nyx_string* @nyx_string_concat(%nyx_string* %1450, %nyx_string* %1452)
  %1454 = getelementptr [10 x i8], [10 x i8]* @.str127, i32 0, i32 0
  %1455 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str127.c, i8* %1454, i64 9)
  %1456 = call %nyx_string* @nyx_string_concat(%nyx_string* %1453, %nyx_string* %1455)
  %1457 = load i64, i64* %total_failed.ptr
  %1458 = call %nyx_string* @nyx_string_from_int(i64 %1457)
  %1459 = call %nyx_string* @nyx_string_concat(%nyx_string* %1456, %nyx_string* %1458)
  %1460 = getelementptr [10 x i8], [10 x i8]* @.str128, i32 0, i32 0
  %1461 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str128.c, i8* %1460, i64 9)
  %1462 = call %nyx_string* @nyx_string_concat(%nyx_string* %1459, %nyx_string* %1461)
  %1463 = load i64, i64* %total_passed.ptr
  %1464 = load i64, i64* %total_failed.ptr
  %1465 = add i64 %1463, %1464
  %1466 = call %nyx_string* @nyx_string_from_int(i64 %1465)
  %1467 = call %nyx_string* @nyx_string_concat(%nyx_string* %1462, %nyx_string* %1466)
  %1468 = getelementptr [8 x i8], [8 x i8]* @.str129, i32 0, i32 0
  %1469 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str129.c, i8* %1468, i64 7)
  %1470 = call %nyx_string* @nyx_string_concat(%nyx_string* %1467, %nyx_string* %1469)
  %1471 = call i8* @nyx_string_to_cstr(%nyx_string* %1470)
  call void @nyx_print_string(i8* %1471)
  %1472 = alloca i1
  store i1 false, i1* %1472
  %1473 = load i64, i64* %total_failed.ptr
  %1474 = icmp eq i64 %1473, 0
  br i1 %1474, label %sc_and_rhs316, label %sc_and_end317
sc_and_rhs316:
  %1475 = load i64, i64* %1406
  %1476 = icmp eq i64 %1475, 0
  store i1 %1476, i1* %1472
  br label %sc_and_end317
sc_and_end317:
  %1477 = load i1, i1* %1472
  br i1 %1477, label %then318, label %else319
then318:
  %1478 = getelementptr [27 x i8], [27 x i8]* @.str130, i32 0, i32 0
  %1479 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str130.c, i8* %1478, i64 26)
  %1480 = call i8* @nyx_string_to_cstr(%nyx_string* %1479)
  call void @nyx_print_string(i8* %1480)
  br label %merge320
else319:
  %1481 = getelementptr [28 x i8], [28 x i8]* @.str131, i32 0, i32 0
  %1482 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str131.c, i8* %1481, i64 27)
  %1483 = call i8* @nyx_string_to_cstr(%nyx_string* %1482)
  call void @nyx_print_string(i8* %1483)
  br label %merge320
merge320:
  %1484 = getelementptr [36 x i8], [36 x i8]* @.str132, i32 0, i32 0
  %1485 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str132.c, i8* %1484, i64 35)
  %1486 = call i8* @nyx_string_to_cstr(%nyx_string* %1485)
  call void @nyx_print_string(i8* %1486)
  ret i64 0
}

define internal %nyx_string* @cov_clang_major(
) {
  %1487 = getelementptr [28 x i8], [28 x i8]* @.str133, i32 0, i32 0
  %1488 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str133.c, i8* %1487, i64 27)
  %1489 = call i8* @nyx_string_to_cstr(%nyx_string* %1488)
  %1490 = call %nyx_string* @nyx_exec(i8* %1489)
  %1491 = alloca %nyx_string*
  store %nyx_string* %1490, %nyx_string** %1491
  %1492 = load %nyx_string*, %nyx_string** %1491
  %1493 = getelementptr [9 x i8], [9 x i8]* @.str134, i32 0, i32 0
  %1494 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str134.c, i8* %1493, i64 8)
  %1495 = call i64 @nyx_string_index_of(%nyx_string* %1492, %nyx_string* %1494)
  %1496 = alloca i64
  store i64 %1495, i64* %1496
  %1497 = load i64, i64* %1496
  %1498 = icmp slt i64 %1497, 0
  br i1 %1498, label %then321, label %else322
then321:
  %1499 = getelementptr [1 x i8], [1 x i8]* @.str135, i32 0, i32 0
  %1500 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str135.c, i8* %1499, i64 0)
  ret %nyx_string* %1500
else322:
  br label %merge323
merge323:
  %1501 = load i64, i64* %1496
  %1502 = add i64 %1501, 8
  %1503 = alloca i64
  store i64 %1502, i64* %1503
  %1504 = getelementptr [1 x i8], [1 x i8]* @.str136, i32 0, i32 0
  %1505 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str136.c, i8* %1504, i64 0)
  %1506 = alloca %nyx_string*
  store %nyx_string* %1505, %nyx_string** %1506
  %1507 = call i8* @llvm.stacksave()
  br label %while_cond324
while_cond324:
  %1508 = load i64, i64* %1503
  %1509 = load %nyx_string*, %nyx_string** %1491
  %1510 = call i64 @nyx_string_byte_length(%nyx_string* %1509)
  %1511 = icmp slt i64 %1508, %1510
  br i1 %1511, label %while_body325, label %while_end326
while_body325:
  call void @llvm.stackrestore(i8* %1507)
  %1512 = load %nyx_string*, %nyx_string** %1491
  %1513 = load i64, i64* %1503
  %1514 = call i8 @nyx_string_char_at(%nyx_string* %1512, i64 %1513)
  %1515 = zext i8 %1514 to i64
  %1516 = alloca i64
  store i64 %1515, i64* %1516
  %1517 = alloca i1
  store i1 false, i1* %1517
  %1518 = load i64, i64* %1516
  %1519 = icmp sge i64 %1518, 48
  br i1 %1519, label %sc_and_rhs327, label %sc_and_end328
sc_and_rhs327:
  %1520 = load i64, i64* %1516
  %1521 = icmp sle i64 %1520, 57
  store i1 %1521, i1* %1517
  br label %sc_and_end328
sc_and_end328:
  %1522 = load i1, i1* %1517
  br i1 %1522, label %then329, label %else330
then329:
  %1523 = load %nyx_string*, %nyx_string** %1506
  %1524 = load %nyx_string*, %nyx_string** %1491
  %1525 = load i64, i64* %1503
  %1526 = load i64, i64* %1503
  %1527 = add i64 %1526, 1
  %1528 = call %nyx_string* @nyx_string_substring(%nyx_string* %1524, i64 %1525, i64 %1527)
  %1529 = call %nyx_string* @nyx_string_concat(%nyx_string* %1523, %nyx_string* %1528)
  store %nyx_string* %1529, %nyx_string** %1506
  %1530 = load i64, i64* %1503
  %1531 = add i64 %1530, 1
  store i64 %1531, i64* %1503
  br label %merge331
else330:
  %1532 = load %nyx_string*, %nyx_string** %1491
  %1533 = call i64 @nyx_string_byte_length(%nyx_string* %1532)
  store i64 %1533, i64* %1503
  br label %merge331
merge331:
  br label %while_cond324
while_end326:
  %1534 = load %nyx_string*, %nyx_string** %1506
  ret %nyx_string* %1534
}

define internal i1 @cov_profraw_valid(
%nyx_string* %path.param) {
  %path.ptr = alloca %nyx_string*
  store %nyx_string* %path.param, %nyx_string** %path.ptr
  %1535 = getelementptr [10 x i8], [10 x i8]* @.str137, i32 0, i32 0
  %1536 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str137.c, i8* %1535, i64 9)
  %1537 = load %nyx_string*, %nyx_string** %path.ptr
  %1538 = call %nyx_string* @nyx_string_concat(%nyx_string* %1536, %nyx_string* %1537)
  %1539 = getelementptr [2 x i8], [2 x i8]* @.str138, i32 0, i32 0
  %1540 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str138.c, i8* %1539, i64 1)
  %1541 = call %nyx_string* @nyx_string_concat(%nyx_string* %1538, %nyx_string* %1540)
  %1542 = call i8* @nyx_string_to_cstr(%nyx_string* %1541)
  %1543 = call i64 @nyx_exec_code(i8* %1542)
  %1544 = icmp eq i64 %1543, 0
  ret i1 %1544
}

define internal %nyx_string* @cov_find_profdata(
) {
  %1545 = call %nyx_string* @cov_clang_major()
  %1546 = alloca %nyx_string*
  store %nyx_string* %1545, %nyx_string** %1546
  %1547 = load %nyx_string*, %nyx_string** %1546
  %1548 = getelementptr [1 x i8], [1 x i8]* @.str139, i32 0, i32 0
  %1549 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str139.c, i8* %1548, i64 0)
  %1550 = call i1 @nyx_string_equals(%nyx_string* %1547, %nyx_string* %1549)
  %1551 = xor i1 %1550, true
  br i1 %1551, label %then332, label %else333
then332:
  %1552 = getelementptr [26 x i8], [26 x i8]* @.str140, i32 0, i32 0
  %1553 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str140.c, i8* %1552, i64 25)
  %1554 = load %nyx_string*, %nyx_string** %1546
  %1555 = call %nyx_string* @nyx_string_concat(%nyx_string* %1553, %nyx_string* %1554)
  %1556 = getelementptr [13 x i8], [13 x i8]* @.str141, i32 0, i32 0
  %1557 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str141.c, i8* %1556, i64 12)
  %1558 = call %nyx_string* @nyx_string_concat(%nyx_string* %1555, %nyx_string* %1557)
  %1559 = call i8* @nyx_string_to_cstr(%nyx_string* %1558)
  %1560 = call %nyx_string* @nyx_exec(i8* %1559)
  %1561 = call %nyx_string* @nyx_string_trim(%nyx_string* %1560)
  %1562 = alloca %nyx_string*
  store %nyx_string* %1561, %nyx_string** %1562
  %1563 = load %nyx_string*, %nyx_string** %1562
  %1564 = getelementptr [1 x i8], [1 x i8]* @.str142, i32 0, i32 0
  %1565 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str142.c, i8* %1564, i64 0)
  %1566 = call i1 @nyx_string_equals(%nyx_string* %1563, %nyx_string* %1565)
  %1567 = xor i1 %1566, true
  br i1 %1567, label %then335, label %else336
then335:
  %1568 = load %nyx_string*, %nyx_string** %1562
  ret %nyx_string* %1568
else336:
  br label %merge337
merge337:
  br label %merge334
else333:
  br label %merge334
merge334:
  %1569 = getelementptr [37 x i8], [37 x i8]* @.str143, i32 0, i32 0
  %1570 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str143.c, i8* %1569, i64 36)
  %1571 = call i8* @nyx_string_to_cstr(%nyx_string* %1570)
  %1572 = call %nyx_string* @nyx_exec(i8* %1571)
  %1573 = call %nyx_string* @nyx_string_trim(%nyx_string* %1572)
  ret %nyx_string* %1573
}

define internal { i64, i8* }* @cov_fields(
%nyx_string* %line.param) {
  %line.ptr = alloca %nyx_string*
  store %nyx_string* %line.param, %nyx_string** %line.ptr
  %1574 = call { i64, i8* }* @nyx_array_new_ptr()
  %1575 = alloca { i64, i8* }*
  store { i64, i8* }* %1574, { i64, i8* }** %1575
  %1576 = alloca i64
  store i64 0, i64* %1576
  %1577 = alloca i64
  store i64 0, i64* %1577
  %1578 = call i8* @llvm.stacksave()
  br label %while_cond338
while_cond338:
  %1579 = load i64, i64* %1577
  %1580 = load %nyx_string*, %nyx_string** %line.ptr
  %1581 = call i64 @nyx_string_byte_length(%nyx_string* %1580)
  %1582 = icmp slt i64 %1579, %1581
  br i1 %1582, label %while_body339, label %while_end340
while_body339:
  call void @llvm.stackrestore(i8* %1578)
  %1583 = load %nyx_string*, %nyx_string** %line.ptr
  %1584 = load i64, i64* %1577
  %1585 = call i8 @nyx_string_char_at(%nyx_string* %1583, i64 %1584)
  %1586 = zext i8 %1585 to i64
  %1587 = icmp eq i64 %1586, 9
  br i1 %1587, label %then341, label %else342
then341:
  %1588 = load { i64, i8* }*, { i64, i8* }** %1575
  %1589 = load %nyx_string*, %nyx_string** %line.ptr
  %1590 = load i64, i64* %1576
  %1591 = load i64, i64* %1577
  %1592 = call %nyx_string* @nyx_string_substring(%nyx_string* %1589, i64 %1590, i64 %1591)
  %1593 = ptrtoint %nyx_string* %1592 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1588, i64 %1593, i64 2)
  %1594 = load i64, i64* %1577
  %1595 = add i64 %1594, 1
  store i64 %1595, i64* %1576
  br label %merge343
else342:
  br label %merge343
merge343:
  %1596 = load i64, i64* %1577
  %1597 = add i64 %1596, 1
  store i64 %1597, i64* %1577
  br label %while_cond338
while_end340:
  %1598 = load { i64, i8* }*, { i64, i8* }** %1575
  %1599 = load %nyx_string*, %nyx_string** %line.ptr
  %1600 = load i64, i64* %1576
  %1601 = load %nyx_string*, %nyx_string** %line.ptr
  %1602 = call i64 @nyx_string_byte_length(%nyx_string* %1601)
  %1603 = call %nyx_string* @nyx_string_substring(%nyx_string* %1599, i64 %1600, i64 %1602)
  %1604 = ptrtoint %nyx_string* %1603 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1598, i64 %1604, i64 2)
  %1605 = load { i64, i8* }*, { i64, i8* }** %1575
  ret { i64, i8* }* %1605
}

define internal %nyx_string* @cov_pad(
i64 %n.param) {
  %n.ptr = alloca i64
  store i64 %n.param, i64* %n.ptr
  %1606 = load i64, i64* %n.ptr
  %1607 = call %nyx_string* @nyx_string_from_int(i64 %1606)
  %1608 = alloca %nyx_string*
  store %nyx_string* %1607, %nyx_string** %1608
  %1609 = getelementptr [2 x i8], [2 x i8]* @.str144, i32 0, i32 0
  %1610 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str144.c, i8* %1609, i64 1)
  %1611 = alloca %nyx_string*
  store %nyx_string* %1610, %nyx_string** %1611
  %1612 = call i8* @llvm.stacksave()
  br label %while_cond344
while_cond344:
  %1613 = load %nyx_string*, %nyx_string** %1608
  %1614 = call i64 @nyx_string_byte_length(%nyx_string* %1613)
  %1615 = icmp slt i64 %1614, 9
  br i1 %1615, label %while_body345, label %while_end346
while_body345:
  call void @llvm.stackrestore(i8* %1612)
  %1616 = load %nyx_string*, %nyx_string** %1611
  %1617 = load %nyx_string*, %nyx_string** %1608
  %1618 = call %nyx_string* @nyx_string_concat(%nyx_string* %1616, %nyx_string* %1617)
  store %nyx_string* %1618, %nyx_string** %1608
  br label %while_cond344
while_end346:
  %1619 = load %nyx_string*, %nyx_string** %1608
  ret %nyx_string* %1619
}

define internal i8* @cov_called_from_show(
%nyx_string* %show.param) {
  %show.ptr = alloca %nyx_string*
  store %nyx_string* %show.param, %nyx_string** %show.ptr
  %1620 = call i8* @nyx_map_new(i32 0)
  %1621 = alloca i8*
  store i8* %1620, i8** %1621
  %1622 = load %nyx_string*, %nyx_string** %show.ptr
  %1623 = getelementptr [2 x i8], [2 x i8]* @.str145, i32 0, i32 0
  %1624 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str145.c, i8* %1623, i64 1)
  %1625 = call { i64, i8* }* @nyx_string_split(%nyx_string* %1622, %nyx_string* %1624)
  %1626 = alloca { i64, i8* }*
  store { i64, i8* }* %1625, { i64, i8* }** %1626
  %1627 = getelementptr [1 x i8], [1 x i8]* @.str146, i32 0, i32 0
  %1628 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str146.c, i8* %1627, i64 0)
  %1629 = alloca %nyx_string*
  store %nyx_string* %1628, %nyx_string** %1629
  %1630 = alloca i64
  store i64 0, i64* %1630
  %1631 = getelementptr [3 x i8], [3 x i8]* @.str147, i32 0, i32 0
  %1632 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str147.c, i8* %1631, i64 2)
  %1633 = alloca %nyx_string*
  store %nyx_string* %1632, %nyx_string** %1633
  %1634 = getelementptr [4 x i8], [4 x i8]* @.str148, i32 0, i32 0
  %1635 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str148.c, i8* %1634, i64 3)
  %1636 = alloca %nyx_string*
  store %nyx_string* %1635, %nyx_string** %1636
  %1637 = getelementptr [2 x i8], [2 x i8]* @.str149, i32 0, i32 0
  %1638 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str149.c, i8* %1637, i64 1)
  %1639 = alloca %nyx_string*
  store %nyx_string* %1638, %nyx_string** %1639
  %1640 = getelementptr [2 x i8], [2 x i8]* @.str150, i32 0, i32 0
  %1641 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str150.c, i8* %1640, i64 1)
  %1642 = alloca %nyx_string*
  store %nyx_string* %1641, %nyx_string** %1642
  %1643 = getelementptr [1 x i8], [1 x i8]* @.str151, i32 0, i32 0
  %1644 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str151.c, i8* %1643, i64 0)
  %1645 = alloca %nyx_string*
  store %nyx_string* %1644, %nyx_string** %1645
  %1646 = getelementptr [14 x i8], [14 x i8]* @.str152, i32 0, i32 0
  %1647 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str152.c, i8* %1646, i64 13)
  %1648 = alloca %nyx_string*
  store %nyx_string* %1647, %nyx_string** %1648
  %1649 = getelementptr [2 x i8], [2 x i8]* @.str153, i32 0, i32 0
  %1650 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str153.c, i8* %1649, i64 1)
  %1651 = alloca %nyx_string*
  store %nyx_string* %1650, %nyx_string** %1651
  %1652 = getelementptr [2 x i8], [2 x i8]* @.str154, i32 0, i32 0
  %1653 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str154.c, i8* %1652, i64 1)
  %1654 = alloca %nyx_string*
  store %nyx_string* %1653, %nyx_string** %1654
  %1655 = getelementptr [2 x i8], [2 x i8]* @.str155, i32 0, i32 0
  %1656 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str155.c, i8* %1655, i64 1)
  %1657 = alloca %nyx_string*
  store %nyx_string* %1656, %nyx_string** %1657
  %1658 = getelementptr [2 x i8], [2 x i8]* @.str156, i32 0, i32 0
  %1659 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str156.c, i8* %1658, i64 1)
  %1660 = alloca %nyx_string*
  store %nyx_string* %1659, %nyx_string** %1660
  %1661 = call i8* @llvm.stacksave()
  br label %while_cond347
while_cond347:
  %1662 = load i64, i64* %1630
  %1663 = load { i64, i8* }*, { i64, i8* }** %1626
  %1664 = call i64 @nyx_array_length({ i64, i8* }* %1663)
  %1665 = icmp slt i64 %1662, %1664
  br i1 %1665, label %while_body348, label %while_end349
while_body348:
  call void @llvm.stackrestore(i8* %1661)
  %1666 = load { i64, i8* }*, { i64, i8* }** %1626
  %1667 = load i64, i64* %1630
  %1668 = call i64 @nyx_array_get_checked({ i64, i8* }* %1666, i64 %1667, i64 2)
  %1669 = inttoptr i64 %1668 to %nyx_string*
  %1670 = alloca %nyx_string*
  store %nyx_string* %1669, %nyx_string** %1670
  %1671 = alloca i1
  store i1 false, i1* %1671
  %1672 = alloca i1
  store i1 false, i1* %1672
  %1673 = load %nyx_string*, %nyx_string** %1670
  %1674 = load %nyx_string*, %nyx_string** %1633
  %1675 = call i1 @nyx_string_starts_with(%nyx_string* %1673, %nyx_string* %1674)
  br i1 %1675, label %sc_and_rhs350, label %sc_and_end351
sc_and_rhs350:
  %1676 = load %nyx_string*, %nyx_string** %1670
  %1677 = load %nyx_string*, %nyx_string** %1636
  %1678 = call i1 @nyx_string_starts_with(%nyx_string* %1676, %nyx_string* %1677)
  %1679 = xor i1 %1678, true
  store i1 %1679, i1* %1672
  br label %sc_and_end351
sc_and_end351:
  %1680 = load i1, i1* %1672
  br i1 %1680, label %sc_and_rhs352, label %sc_and_end353
sc_and_rhs352:
  %1681 = load %nyx_string*, %nyx_string** %1670
  %1682 = load %nyx_string*, %nyx_string** %1639
  %1683 = call i1 @nyx_string_ends_with(%nyx_string* %1681, %nyx_string* %1682)
  store i1 %1683, i1* %1671
  br label %sc_and_end353
sc_and_end353:
  %1684 = load i1, i1* %1671
  br i1 %1684, label %then354, label %else355
then354:
  %1685 = load %nyx_string*, %nyx_string** %1670
  %1686 = load %nyx_string*, %nyx_string** %1670
  %1687 = call i64 @nyx_string_byte_length(%nyx_string* %1686)
  %1688 = sub i64 %1687, 1
  %1689 = call %nyx_string* @nyx_string_substring(%nyx_string* %1685, i64 2, i64 %1688)
  %1690 = alloca %nyx_string*
  store %nyx_string* %1689, %nyx_string** %1690
  %1691 = load %nyx_string*, %nyx_string** %1690
  %1692 = load %nyx_string*, %nyx_string** %1642
  %1693 = call i64 @nyx_string_index_of(%nyx_string* %1691, %nyx_string* %1692)
  %1694 = alloca i64
  store i64 %1693, i64* %1694
  %1695 = load i64, i64* %1694
  %1696 = icmp sge i64 %1695, 0
  br i1 %1696, label %then357, label %else358
then357:
  %1697 = load %nyx_string*, %nyx_string** %1690
  %1698 = load i64, i64* %1694
  %1699 = add i64 %1698, 1
  %1700 = load %nyx_string*, %nyx_string** %1690
  %1701 = call i64 @nyx_string_byte_length(%nyx_string* %1700)
  %1702 = call %nyx_string* @nyx_string_substring(%nyx_string* %1697, i64 %1699, i64 %1701)
  store %nyx_string* %1702, %nyx_string** %1690
  br label %merge359
else358:
  br label %merge359
merge359:
  %1703 = load %nyx_string*, %nyx_string** %1690
  store %nyx_string* %1703, %nyx_string** %1629
  br label %merge356
else355:
  %1704 = alloca i1
  store i1 false, i1* %1704
  %1705 = load %nyx_string*, %nyx_string** %1629
  %1706 = load %nyx_string*, %nyx_string** %1645
  %1707 = call i1 @nyx_string_equals(%nyx_string* %1705, %nyx_string* %1706)
  %1708 = xor i1 %1707, true
  br i1 %1708, label %sc_and_rhs360, label %sc_and_end361
sc_and_rhs360:
  %1709 = load %nyx_string*, %nyx_string** %1670
  %1710 = load %nyx_string*, %nyx_string** %1648
  %1711 = call i1 @nyx_string_contains(%nyx_string* %1709, %nyx_string* %1710)
  store i1 %1711, i1* %1704
  br label %sc_and_end361
sc_and_end361:
  %1712 = load i1, i1* %1704
  br i1 %1712, label %then362, label %else363
then362:
  %1713 = load %nyx_string*, %nyx_string** %1670
  %1714 = load %nyx_string*, %nyx_string** %1651
  %1715 = call i64 @nyx_string_index_of(%nyx_string* %1713, %nyx_string* %1714)
  %1716 = alloca i64
  store i64 %1715, i64* %1716
  %1717 = load %nyx_string*, %nyx_string** %1670
  %1718 = load %nyx_string*, %nyx_string** %1654
  %1719 = call i64 @nyx_string_index_of(%nyx_string* %1717, %nyx_string* %1718)
  %1720 = alloca i64
  store i64 %1719, i64* %1720
  %1721 = alloca i1
  store i1 false, i1* %1721
  %1722 = load i64, i64* %1716
  %1723 = icmp sge i64 %1722, 0
  br i1 %1723, label %sc_and_rhs365, label %sc_and_end366
sc_and_rhs365:
  %1724 = load i64, i64* %1720
  %1725 = load i64, i64* %1716
  %1726 = icmp sgt i64 %1724, %1725
  store i1 %1726, i1* %1721
  br label %sc_and_end366
sc_and_end366:
  %1727 = load i1, i1* %1721
  br i1 %1727, label %then367, label %else368
then367:
  %1728 = load %nyx_string*, %nyx_string** %1670
  %1729 = load i64, i64* %1716
  %1730 = add i64 %1729, 1
  %1731 = load i64, i64* %1720
  %1732 = call %nyx_string* @nyx_string_substring(%nyx_string* %1728, i64 %1730, i64 %1731)
  %1733 = load %nyx_string*, %nyx_string** %1657
  %1734 = call { i64, i8* }* @nyx_string_split(%nyx_string* %1732, %nyx_string* %1733)
  %1735 = alloca { i64, i8* }*
  store { i64, i8* }* %1734, { i64, i8* }** %1735
  %1736 = alloca i64
  store i64 0, i64* %1736
  %1737 = call i8* @llvm.stacksave()
  br label %while_cond370
while_cond370:
  %1738 = load i64, i64* %1736
  %1739 = load { i64, i8* }*, { i64, i8* }** %1735
  %1740 = call i64 @nyx_array_length({ i64, i8* }* %1739)
  %1741 = icmp slt i64 %1738, %1740
  br i1 %1741, label %while_body371, label %while_end372
while_body371:
  call void @llvm.stackrestore(i8* %1737)
  %1742 = load { i64, i8* }*, { i64, i8* }** %1735
  %1743 = load i64, i64* %1736
  %1744 = call i64 @nyx_array_get_checked({ i64, i8* }* %1742, i64 %1743, i64 2)
  %1745 = inttoptr i64 %1744 to %nyx_string*
  %1746 = alloca %nyx_string*
  store %nyx_string* %1745, %nyx_string** %1746
  %1747 = load %nyx_string*, %nyx_string** %1746
  %1748 = call %nyx_string* @nyx_string_trim(%nyx_string* %1747)
  %1749 = call i64 @nyx_string_to_int(%nyx_string* %1748)
  %1750 = icmp sgt i64 %1749, 0
  br i1 %1750, label %then373, label %else374
then373:
  %1751 = load i8*, i8** %1621
  %1752 = load %nyx_string*, %nyx_string** %1629
  %1753 = load %nyx_string*, %nyx_string** %1660
  %1754 = call i8* @nyx_string_to_cstr(%nyx_string* %1752)
  %1755 = call i8* @nyx_string_to_cstr(%nyx_string* %1753)
  call void @nyx_map_insert_str(i8* %1751, i8* %1754, i8* %1755)
  br label %merge375
else374:
  br label %merge375
merge375:
  %1756 = load i64, i64* %1736
  %1757 = add i64 %1756, 1
  store i64 %1757, i64* %1736
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
  %1758 = load i64, i64* %1630
  %1759 = add i64 %1758, 1
  store i64 %1759, i64* %1630
  br label %while_cond347
while_end349:
  %1760 = load i8*, i8** %1621
  ret i8* %1760
}

define internal { i64, i8* }* @cov_src_modules(
) {
  %1761 = call { i64, i8* }* @nyx_array_new_ptr()
  %1762 = alloca { i64, i8* }*
  store { i64, i8* }* %1761, { i64, i8* }** %1762
  %1763 = getelementptr [4 x i8], [4 x i8]* @.str157, i32 0, i32 0
  %1764 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str157.c, i8* %1763, i64 3)
  %1765 = call i8* @nyx_string_to_cstr(%nyx_string* %1764)
  %1766 = call i1 @nyx_file_exists(i8* %1765)
  %1767 = xor i1 %1766, true
  br i1 %1767, label %then376, label %else377
then376:
  %1768 = load { i64, i8* }*, { i64, i8* }** %1762
  ret { i64, i8* }* %1768
else377:
  br label %merge378
merge378:
  %1769 = getelementptr [50 x i8], [50 x i8]* @.str158, i32 0, i32 0
  %1770 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str158.c, i8* %1769, i64 49)
  %1771 = call i8* @nyx_string_to_cstr(%nyx_string* %1770)
  %1772 = call %nyx_string* @nyx_exec(i8* %1771)
  %1773 = alloca %nyx_string*
  store %nyx_string* %1772, %nyx_string** %1773
  %1774 = load %nyx_string*, %nyx_string** %1773
  %1775 = getelementptr [2 x i8], [2 x i8]* @.str159, i32 0, i32 0
  %1776 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str159.c, i8* %1775, i64 1)
  %1777 = call { i64, i8* }* @nyx_string_split(%nyx_string* %1774, %nyx_string* %1776)
  %1778 = alloca { i64, i8* }*
  store { i64, i8* }* %1777, { i64, i8* }** %1778
  %1779 = alloca i64
  store i64 0, i64* %1779
  %1780 = getelementptr [4 x i8], [4 x i8]* @.str160, i32 0, i32 0
  %1781 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str160.c, i8* %1780, i64 3)
  %1782 = alloca %nyx_string*
  store %nyx_string* %1781, %nyx_string** %1782
  %1783 = getelementptr [9 x i8], [9 x i8]* @.str161, i32 0, i32 0
  %1784 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str161.c, i8* %1783, i64 8)
  %1785 = alloca %nyx_string*
  store %nyx_string* %1784, %nyx_string** %1785
  %1786 = call i8* @llvm.stacksave()
  br label %while_cond379
while_cond379:
  %1787 = load i64, i64* %1779
  %1788 = load { i64, i8* }*, { i64, i8* }** %1778
  %1789 = call i64 @nyx_array_length({ i64, i8* }* %1788)
  %1790 = icmp slt i64 %1787, %1789
  br i1 %1790, label %while_body380, label %while_end381
while_body380:
  call void @llvm.stackrestore(i8* %1786)
  %1791 = load { i64, i8* }*, { i64, i8* }** %1778
  %1792 = load i64, i64* %1779
  %1793 = call i64 @nyx_array_get_checked({ i64, i8* }* %1791, i64 %1792, i64 2)
  %1794 = inttoptr i64 %1793 to %nyx_string*
  %1795 = alloca %nyx_string*
  store %nyx_string* %1794, %nyx_string** %1795
  %1796 = load %nyx_string*, %nyx_string** %1795
  %1797 = call %nyx_string* @nyx_string_trim(%nyx_string* %1796)
  %1798 = alloca %nyx_string*
  store %nyx_string* %1797, %nyx_string** %1798
  %1799 = alloca i1
  store i1 false, i1* %1799
  %1800 = load %nyx_string*, %nyx_string** %1798
  %1801 = load %nyx_string*, %nyx_string** %1782
  %1802 = call i1 @nyx_string_ends_with(%nyx_string* %1800, %nyx_string* %1801)
  br i1 %1802, label %sc_and_rhs382, label %sc_and_end383
sc_and_rhs382:
  %1803 = load %nyx_string*, %nyx_string** %1798
  %1804 = load %nyx_string*, %nyx_string** %1785
  %1805 = call i1 @nyx_string_ends_with(%nyx_string* %1803, %nyx_string* %1804)
  %1806 = xor i1 %1805, true
  store i1 %1806, i1* %1799
  br label %sc_and_end383
sc_and_end383:
  %1807 = load i1, i1* %1799
  br i1 %1807, label %then384, label %else385
then384:
  %1808 = load { i64, i8* }*, { i64, i8* }** %1762
  %1809 = load %nyx_string*, %nyx_string** %1798
  %1810 = load %nyx_string*, %nyx_string** %1798
  %1811 = call i64 @nyx_string_byte_length(%nyx_string* %1810)
  %1812 = sub i64 %1811, 3
  %1813 = call %nyx_string* @nyx_string_substring(%nyx_string* %1809, i64 0, i64 %1812)
  %1814 = ptrtoint %nyx_string* %1813 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1808, i64 %1814, i64 2)
  br label %merge386
else385:
  br label %merge386
merge386:
  %1815 = load i64, i64* %1779
  %1816 = add i64 %1815, 1
  store i64 %1816, i64* %1779
  br label %while_cond379
while_end381:
  %1817 = load { i64, i8* }*, { i64, i8* }** %1762
  ret { i64, i8* }* %1817
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
  %1818 = getelementptr [1 x i8], [1 x i8]* @.str162, i32 0, i32 0
  %1819 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str162.c, i8* %1818, i64 0)
  %1820 = alloca %nyx_string*
  store %nyx_string* %1819, %nyx_string** %1820
  %1821 = alloca i64
  store i64 0, i64* %1821
  %1822 = getelementptr [9 x i8], [9 x i8]* @.str163, i32 0, i32 0
  %1823 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str163.c, i8* %1822, i64 8)
  %1824 = alloca %nyx_string*
  store %nyx_string* %1823, %nyx_string** %1824
  %1825 = getelementptr [3 x i8], [3 x i8]* @.str164, i32 0, i32 0
  %1826 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str164.c, i8* %1825, i64 2)
  %1827 = alloca %nyx_string*
  store %nyx_string* %1826, %nyx_string** %1827
  %1828 = call i8* @llvm.stacksave()
  br label %while_cond387
while_cond387:
  %1829 = load i64, i64* %1821
  %1830 = load { i64, i8* }*, { i64, i8* }** %mods.ptr
  %1831 = call i64 @nyx_array_length({ i64, i8* }* %1830)
  %1832 = icmp slt i64 %1829, %1831
  br i1 %1832, label %while_body388, label %while_end389
while_body388:
  call void @llvm.stackrestore(i8* %1828)
  %1833 = load { i64, i8* }*, { i64, i8* }** %mods.ptr
  %1834 = load i64, i64* %1821
  %1835 = call i64 @nyx_array_get_checked({ i64, i8* }* %1833, i64 %1834, i64 2)
  %1836 = inttoptr i64 %1835 to %nyx_string*
  %1837 = alloca %nyx_string*
  store %nyx_string* %1836, %nyx_string** %1837
  %1838 = load %nyx_string*, %nyx_string** %1820
  %1839 = load %nyx_string*, %nyx_string** %1824
  %1840 = call %nyx_string* @nyx_string_concat(%nyx_string* %1838, %nyx_string* %1839)
  %1841 = load %nyx_string*, %nyx_string** %1837
  %1842 = call %nyx_string* @nyx_string_concat(%nyx_string* %1840, %nyx_string* %1841)
  %1843 = load %nyx_string*, %nyx_string** %1827
  %1844 = call %nyx_string* @nyx_string_concat(%nyx_string* %1842, %nyx_string* %1843)
  store %nyx_string* %1844, %nyx_string** %1820
  %1845 = load i64, i64* %1821
  %1846 = add i64 %1845, 1
  store i64 %1846, i64* %1821
  br label %while_cond387
while_end389:
  %1847 = load %nyx_string*, %nyx_string** %1820
  %1848 = getelementptr [36 x i8], [36 x i8]* @.str165, i32 0, i32 0
  %1849 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str165.c, i8* %1848, i64 35)
  %1850 = call %nyx_string* @nyx_string_concat(%nyx_string* %1847, %nyx_string* %1849)
  store %nyx_string* %1850, %nyx_string** %1820
  %1851 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %1852 = getelementptr [13 x i8], [13 x i8]* @.str166, i32 0, i32 0
  %1853 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str166.c, i8* %1852, i64 12)
  %1854 = call %nyx_string* @nyx_string_concat(%nyx_string* %1851, %nyx_string* %1853)
  %1855 = load %nyx_string*, %nyx_string** %1820
  %1856 = call i8* @nyx_string_to_cstr(%nyx_string* %1854)
  %1857 = call i1 @nyx_write_file_safe(i8* %1856, %nyx_string* %1855)
  %1858 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %1859 = getelementptr [14 x i8], [14 x i8]* @.str167, i32 0, i32 0
  %1860 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str167.c, i8* %1859, i64 13)
  %1861 = call %nyx_string* @nyx_string_concat(%nyx_string* %1858, %nyx_string* %1860)
  %1862 = alloca %nyx_string*
  store %nyx_string* %1861, %nyx_string** %1862
  %1863 = getelementptr [13 x i8], [13 x i8]* @.str168, i32 0, i32 0
  %1864 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str168.c, i8* %1863, i64 12)
  %1865 = getelementptr [8 x i8], [8 x i8]* @.str169, i32 0, i32 0
  %1866 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str169.c, i8* %1865, i64 7)
  %1867 = call %nyx_string* @nyx_string_concat(%nyx_string* %1864, %nyx_string* %1866)
  %1868 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %1869 = call %nyx_string* @nyx_string_concat(%nyx_string* %1867, %nyx_string* %1868)
  %1870 = getelementptr [19 x i8], [19 x i8]* @.str170, i32 0, i32 0
  %1871 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str170.c, i8* %1870, i64 18)
  %1872 = call %nyx_string* @nyx_string_concat(%nyx_string* %1869, %nyx_string* %1871)
  %1873 = getelementptr [5 x i8], [5 x i8]* @.str171, i32 0, i32 0
  %1874 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str171.c, i8* %1873, i64 4)
  %1875 = call %nyx_string* @nyx_string_concat(%nyx_string* %1872, %nyx_string* %1874)
  %1876 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %1877 = call %nyx_string* @nyx_string_concat(%nyx_string* %1875, %nyx_string* %1876)
  %1878 = getelementptr [24 x i8], [24 x i8]* @.str172, i32 0, i32 0
  %1879 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str172.c, i8* %1878, i64 23)
  %1880 = call %nyx_string* @nyx_string_concat(%nyx_string* %1877, %nyx_string* %1879)
  %1881 = getelementptr [5 x i8], [5 x i8]* @.str173, i32 0, i32 0
  %1882 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str173.c, i8* %1881, i64 4)
  %1883 = call %nyx_string* @nyx_string_concat(%nyx_string* %1880, %nyx_string* %1882)
  %1884 = load %nyx_string*, %nyx_string** %nyx_home.ptr
  %1885 = call %nyx_string* @nyx_string_concat(%nyx_string* %1883, %nyx_string* %1884)
  %1886 = getelementptr [3 x i8], [3 x i8]* @.str174, i32 0, i32 0
  %1887 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str174.c, i8* %1886, i64 2)
  %1888 = call %nyx_string* @nyx_string_concat(%nyx_string* %1885, %nyx_string* %1887)
  %1889 = getelementptr [137 x i8], [137 x i8]* @.str175, i32 0, i32 0
  %1890 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str175.c, i8* %1889, i64 136)
  %1891 = call %nyx_string* @nyx_string_concat(%nyx_string* %1888, %nyx_string* %1890)
  %1892 = getelementptr [43 x i8], [43 x i8]* @.str176, i32 0, i32 0
  %1893 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str176.c, i8* %1892, i64 42)
  %1894 = call %nyx_string* @nyx_string_concat(%nyx_string* %1891, %nyx_string* %1893)
  %1895 = load %nyx_string*, %nyx_string** %orig_dir.ptr
  %1896 = call %nyx_string* @nyx_string_concat(%nyx_string* %1894, %nyx_string* %1895)
  %1897 = getelementptr [38 x i8], [38 x i8]* @.str177, i32 0, i32 0
  %1898 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str177.c, i8* %1897, i64 37)
  %1899 = call %nyx_string* @nyx_string_concat(%nyx_string* %1896, %nyx_string* %1898)
  %1900 = load %nyx_string*, %nyx_string** %1862
  %1901 = call %nyx_string* @nyx_string_concat(%nyx_string* %1899, %nyx_string* %1900)
  %1902 = getelementptr [24 x i8], [24 x i8]* @.str178, i32 0, i32 0
  %1903 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str178.c, i8* %1902, i64 23)
  %1904 = call %nyx_string* @nyx_string_concat(%nyx_string* %1901, %nyx_string* %1903)
  %1905 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %1906 = call %nyx_string* @nyx_string_concat(%nyx_string* %1904, %nyx_string* %1905)
  %1907 = getelementptr [21 x i8], [21 x i8]* @.str179, i32 0, i32 0
  %1908 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str179.c, i8* %1907, i64 20)
  %1909 = call %nyx_string* @nyx_string_concat(%nyx_string* %1906, %nyx_string* %1908)
  %1910 = getelementptr [7 x i8], [7 x i8]* @.str180, i32 0, i32 0
  %1911 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str180.c, i8* %1910, i64 6)
  %1912 = call %nyx_string* @nyx_string_concat(%nyx_string* %1909, %nyx_string* %1911)
  %1913 = getelementptr [17 x i8], [17 x i8]* @.str181, i32 0, i32 0
  %1914 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str181.c, i8* %1913, i64 16)
  %1915 = call %nyx_string* @nyx_string_concat(%nyx_string* %1912, %nyx_string* %1914)
  %1916 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %1917 = call %nyx_string* @nyx_string_concat(%nyx_string* %1915, %nyx_string* %1916)
  %1918 = getelementptr [19 x i8], [19 x i8]* @.str182, i32 0, i32 0
  %1919 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str182.c, i8* %1918, i64 18)
  %1920 = call %nyx_string* @nyx_string_concat(%nyx_string* %1917, %nyx_string* %1919)
  %1921 = getelementptr [10 x i8], [10 x i8]* @.str183, i32 0, i32 0
  %1922 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str183.c, i8* %1921, i64 9)
  %1923 = call %nyx_string* @nyx_string_concat(%nyx_string* %1920, %nyx_string* %1922)
  %1924 = alloca %nyx_string*
  store %nyx_string* %1923, %nyx_string** %1924
  %1925 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %1926 = getelementptr [13 x i8], [13 x i8]* @.str184, i32 0, i32 0
  %1927 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str184.c, i8* %1926, i64 12)
  %1928 = call %nyx_string* @nyx_string_concat(%nyx_string* %1925, %nyx_string* %1927)
  %1929 = load %nyx_string*, %nyx_string** %1924
  %1930 = call i8* @nyx_string_to_cstr(%nyx_string* %1928)
  %1931 = call i1 @nyx_write_file_safe(i8* %1930, %nyx_string* %1929)
  %1932 = getelementptr [7 x i8], [7 x i8]* @.str185, i32 0, i32 0
  %1933 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str185.c, i8* %1932, i64 6)
  %1934 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %1935 = call %nyx_string* @nyx_string_concat(%nyx_string* %1933, %nyx_string* %1934)
  %1936 = getelementptr [14 x i8], [14 x i8]* @.str186, i32 0, i32 0
  %1937 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str186.c, i8* %1936, i64 13)
  %1938 = call %nyx_string* @nyx_string_concat(%nyx_string* %1935, %nyx_string* %1937)
  %1939 = call i8* @nyx_string_to_cstr(%nyx_string* %1938)
  %1940 = call i64 @nyx_exec_code(i8* %1939)
  %1941 = load %nyx_string*, %nyx_string** %1862
  ret %nyx_string* %1941
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
  %1942 = getelementptr [9 x i8], [9 x i8]* @.str187, i32 0, i32 0
  %1943 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str187.c, i8* %1942, i64 8)
  %1944 = call i8* @nyx_string_to_cstr(%nyx_string* %1943)
  %1945 = call %nyx_string* @nyx_getenv(i8* %1944)
  %1946 = alloca %nyx_string*
  store %nyx_string* %1945, %nyx_string** %1946
  %1947 = getelementptr [4 x i8], [4 x i8]* @.str188, i32 0, i32 0
  %1948 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str188.c, i8* %1947, i64 3)
  %1949 = call i8* @nyx_string_to_cstr(%nyx_string* %1948)
  %1950 = call %nyx_string* @nyx_getenv(i8* %1949)
  %1951 = alloca %nyx_string*
  store %nyx_string* %1950, %nyx_string** %1951
  %1952 = getelementptr [1 x i8], [1 x i8]* @.str189, i32 0, i32 0
  %1953 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str189.c, i8* %1952, i64 0)
  %1954 = call i8* @nyx_string_to_cstr(%nyx_string* %1953)
  call void @nyx_print_string(i8* %1954)
  %1955 = getelementptr [36 x i8], [36 x i8]* @.str190, i32 0, i32 0
  %1956 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str190.c, i8* %1955, i64 35)
  %1957 = call i8* @nyx_string_to_cstr(%nyx_string* %1956)
  call void @nyx_print_string(i8* %1957)
  %1958 = getelementptr [1 x i8], [1 x i8]* @.str191, i32 0, i32 0
  %1959 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str191.c, i8* %1958, i64 0)
  %1960 = alloca %nyx_string*
  store %nyx_string* %1959, %nyx_string** %1960
  %1961 = alloca i64
  store i64 0, i64* %1961
  %1962 = call i8* @nyx_map_new(i32 0)
  %1963 = alloca i8*
  store i8* %1962, i8** %1963
  %1964 = call { i64, i8* }* @nyx_array_new_ptr()
  %1965 = alloca { i64, i8* }*
  store { i64, i8* }* %1964, { i64, i8* }** %1965
  %1966 = alloca i64
  store i64 0, i64* %1966
  %1967 = getelementptr [2 x i8], [2 x i8]* @.str192, i32 0, i32 0
  %1968 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str192.c, i8* %1967, i64 1)
  %1969 = alloca %nyx_string*
  store %nyx_string* %1968, %nyx_string** %1969
  %1970 = getelementptr [9 x i8], [9 x i8]* @.str193, i32 0, i32 0
  %1971 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str193.c, i8* %1970, i64 8)
  %1972 = alloca %nyx_string*
  store %nyx_string* %1971, %nyx_string** %1972
  %1973 = getelementptr [3 x i8], [3 x i8]* @.str194, i32 0, i32 0
  %1974 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str194.c, i8* %1973, i64 2)
  %1975 = alloca %nyx_string*
  store %nyx_string* %1974, %nyx_string** %1975
  %1976 = getelementptr [2 x i8], [2 x i8]* @.str195, i32 0, i32 0
  %1977 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str195.c, i8* %1976, i64 1)
  %1978 = alloca %nyx_string*
  store %nyx_string* %1977, %nyx_string** %1978
  %1979 = getelementptr [2 x i8], [2 x i8]* @.str196, i32 0, i32 0
  %1980 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str196.c, i8* %1979, i64 1)
  %1981 = alloca %nyx_string*
  store %nyx_string* %1980, %nyx_string** %1981
  %1982 = call i8* @llvm.stacksave()
  br label %while_cond390
while_cond390:
  %1983 = load i64, i64* %1966
  %1984 = load { i64, i8* }*, { i64, i8* }** %run_files.ptr
  %1985 = call i64 @nyx_array_length({ i64, i8* }* %1984)
  %1986 = icmp slt i64 %1983, %1985
  br i1 %1986, label %while_body391, label %while_end392
while_body391:
  call void @llvm.stackrestore(i8* %1982)
  %1987 = load { i64, i8* }*, { i64, i8* }** %run_idx.ptr
  %1988 = load i64, i64* %1966
  %1989 = call i64 @nyx_array_get_checked({ i64, i8* }* %1987, i64 %1988, i64 2)
  %1990 = inttoptr i64 %1989 to %nyx_string*
  %1991 = alloca %nyx_string*
  store %nyx_string* %1990, %nyx_string** %1991
  %1992 = load { i64, i8* }*, { i64, i8* }** %run_files.ptr
  %1993 = load i64, i64* %1966
  %1994 = call i64 @nyx_array_get_checked({ i64, i8* }* %1992, i64 %1993, i64 2)
  %1995 = inttoptr i64 %1994 to %nyx_string*
  %1996 = alloca %nyx_string*
  store %nyx_string* %1995, %nyx_string** %1996
  %1997 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %1998 = load %nyx_string*, %nyx_string** %1969
  %1999 = call %nyx_string* @nyx_string_concat(%nyx_string* %1997, %nyx_string* %1998)
  %2000 = load %nyx_string*, %nyx_string** %1991
  %2001 = call %nyx_string* @nyx_string_concat(%nyx_string* %1999, %nyx_string* %2000)
  %2002 = load %nyx_string*, %nyx_string** %1972
  %2003 = call %nyx_string* @nyx_string_concat(%nyx_string* %2001, %nyx_string* %2002)
  %2004 = alloca %nyx_string*
  store %nyx_string* %2003, %nyx_string** %2004
  %2005 = load %nyx_string*, %nyx_string** %2004
  %2006 = call i1 @cov_profraw_valid(%nyx_string* %2005)
  br i1 %2006, label %then393, label %else394
then393:
  %2007 = load %nyx_string*, %nyx_string** %1960
  %2008 = load %nyx_string*, %nyx_string** %1975
  %2009 = call %nyx_string* @nyx_string_concat(%nyx_string* %2007, %nyx_string* %2008)
  %2010 = load %nyx_string*, %nyx_string** %2004
  %2011 = call %nyx_string* @nyx_string_concat(%nyx_string* %2009, %nyx_string* %2010)
  %2012 = load %nyx_string*, %nyx_string** %1978
  %2013 = call %nyx_string* @nyx_string_concat(%nyx_string* %2011, %nyx_string* %2012)
  store %nyx_string* %2013, %nyx_string** %1960
  %2014 = load i64, i64* %1961
  %2015 = add i64 %2014, 1
  store i64 %2015, i64* %1961
  %2016 = load i8*, i8** %1963
  %2017 = load %nyx_string*, %nyx_string** %1991
  %2018 = load %nyx_string*, %nyx_string** %1981
  %2019 = call i8* @nyx_string_to_cstr(%nyx_string* %2017)
  %2020 = call i8* @nyx_string_to_cstr(%nyx_string* %2018)
  call void @nyx_map_insert_str(i8* %2016, i8* %2019, i8* %2020)
  br label %merge395
else394:
  %2021 = load { i64, i8* }*, { i64, i8* }** %1965
  %2022 = load %nyx_string*, %nyx_string** %1996
  %2023 = ptrtoint %nyx_string* %2022 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2021, i64 %2023, i64 2)
  br label %merge395
merge395:
  %2024 = load i64, i64* %1966
  %2025 = add i64 %2024, 1
  store i64 %2025, i64* %1966
  br label %while_cond390
while_end392:
  %2026 = call i8* @nyx_map_new(i32 0)
  %2027 = alloca i8*
  store i8* %2026, i8** %2027
  %2028 = load i64, i64* %1961
  %2029 = icmp sgt i64 %2028, 0
  br i1 %2029, label %then396, label %else397
then396:
  %2030 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2031 = getelementptr [17 x i8], [17 x i8]* @.str197, i32 0, i32 0
  %2032 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str197.c, i8* %2031, i64 16)
  %2033 = call %nyx_string* @nyx_string_concat(%nyx_string* %2030, %nyx_string* %2032)
  %2034 = alloca %nyx_string*
  store %nyx_string* %2033, %nyx_string** %2034
  %2035 = load %nyx_string*, %nyx_string** %profdata.ptr
  %2036 = getelementptr [12 x i8], [12 x i8]* @.str198, i32 0, i32 0
  %2037 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str198.c, i8* %2036, i64 11)
  %2038 = call %nyx_string* @nyx_string_concat(%nyx_string* %2035, %nyx_string* %2037)
  %2039 = load %nyx_string*, %nyx_string** %2034
  %2040 = call %nyx_string* @nyx_string_concat(%nyx_string* %2038, %nyx_string* %2039)
  %2041 = getelementptr [2 x i8], [2 x i8]* @.str199, i32 0, i32 0
  %2042 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str199.c, i8* %2041, i64 1)
  %2043 = call %nyx_string* @nyx_string_concat(%nyx_string* %2040, %nyx_string* %2042)
  %2044 = load %nyx_string*, %nyx_string** %1960
  %2045 = call %nyx_string* @nyx_string_concat(%nyx_string* %2043, %nyx_string* %2044)
  %2046 = getelementptr [5 x i8], [5 x i8]* @.str200, i32 0, i32 0
  %2047 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str200.c, i8* %2046, i64 4)
  %2048 = call %nyx_string* @nyx_string_concat(%nyx_string* %2045, %nyx_string* %2047)
  %2049 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2050 = call %nyx_string* @nyx_string_concat(%nyx_string* %2048, %nyx_string* %2049)
  %2051 = getelementptr [17 x i8], [17 x i8]* @.str201, i32 0, i32 0
  %2052 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str201.c, i8* %2051, i64 16)
  %2053 = call %nyx_string* @nyx_string_concat(%nyx_string* %2050, %nyx_string* %2052)
  %2054 = call i8* @nyx_string_to_cstr(%nyx_string* %2053)
  %2055 = call i64 @nyx_exec_code(i8* %2054)
  %2056 = alloca i64
  store i64 %2055, i64* %2056
  %2057 = load i64, i64* %2056
  %2058 = icmp ne i64 %2057, 0
  br i1 %2058, label %then399, label %else400
then399:
  %2059 = getelementptr [36 x i8], [36 x i8]* @.str202, i32 0, i32 0
  %2060 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str202.c, i8* %2059, i64 35)
  %2061 = call i8* @nyx_string_to_cstr(%nyx_string* %2060)
  call void @nyx_print_string(i8* %2061)
  %2062 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2063 = getelementptr [11 x i8], [11 x i8]* @.str203, i32 0, i32 0
  %2064 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str203.c, i8* %2063, i64 10)
  %2065 = call %nyx_string* @nyx_string_concat(%nyx_string* %2062, %nyx_string* %2064)
  %2066 = call i8* @nyx_string_to_cstr(%nyx_string* %2065)
  %2067 = call %nyx_string* @nyx_read_file(i8* %2066)
  %2068 = call i8* @nyx_string_to_cstr(%nyx_string* %2067)
  call void @nyx_print_string(i8* %2068)
  ret i64 1
else400:
  br label %merge401
merge401:
  %2069 = load %nyx_string*, %nyx_string** %profdata.ptr
  %2070 = getelementptr [33 x i8], [33 x i8]* @.str204, i32 0, i32 0
  %2071 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str204.c, i8* %2070, i64 32)
  %2072 = call %nyx_string* @nyx_string_concat(%nyx_string* %2069, %nyx_string* %2071)
  %2073 = load %nyx_string*, %nyx_string** %2034
  %2074 = call %nyx_string* @nyx_string_concat(%nyx_string* %2072, %nyx_string* %2073)
  %2075 = getelementptr [6 x i8], [6 x i8]* @.str205, i32 0, i32 0
  %2076 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str205.c, i8* %2075, i64 5)
  %2077 = call %nyx_string* @nyx_string_concat(%nyx_string* %2074, %nyx_string* %2076)
  %2078 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2079 = call %nyx_string* @nyx_string_concat(%nyx_string* %2077, %nyx_string* %2078)
  %2080 = getelementptr [16 x i8], [16 x i8]* @.str206, i32 0, i32 0
  %2081 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str206.c, i8* %2080, i64 15)
  %2082 = call %nyx_string* @nyx_string_concat(%nyx_string* %2079, %nyx_string* %2081)
  %2083 = call i8* @nyx_string_to_cstr(%nyx_string* %2082)
  %2084 = call i64 @nyx_exec_code(i8* %2083)
  %2085 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2086 = getelementptr [10 x i8], [10 x i8]* @.str207, i32 0, i32 0
  %2087 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str207.c, i8* %2086, i64 9)
  %2088 = call %nyx_string* @nyx_string_concat(%nyx_string* %2085, %nyx_string* %2087)
  %2089 = call i8* @nyx_string_to_cstr(%nyx_string* %2088)
  %2090 = call %nyx_string* @nyx_read_file(i8* %2089)
  %2091 = call i8* @cov_called_from_show(%nyx_string* %2090)
  store i8* %2091, i8** %2027
  br label %merge398
else397:
  br label %merge398
merge398:
  %2092 = call i8* @nyx_map_new(i32 0)
  %2093 = alloca i8*
  store i8* %2092, i8** %2093
  %2094 = call i8* @nyx_map_new(i32 0)
  %2095 = alloca i8*
  store i8* %2094, i8** %2095
  %2096 = call i8* @nyx_map_new(i32 0)
  %2097 = alloca i8*
  store i8* %2096, i8** %2097
  %2098 = call i8* @nyx_map_new(i32 0)
  %2099 = alloca i8*
  store i8* %2098, i8** %2099
  store i64 0, i64* %1966
  %2100 = getelementptr [2 x i8], [2 x i8]* @.str208, i32 0, i32 0
  %2101 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str208.c, i8* %2100, i64 1)
  %2102 = alloca %nyx_string*
  store %nyx_string* %2101, %nyx_string** %2102
  %2103 = getelementptr [5 x i8], [5 x i8]* @.str209, i32 0, i32 0
  %2104 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str209.c, i8* %2103, i64 4)
  %2105 = alloca %nyx_string*
  store %nyx_string* %2104, %nyx_string** %2105
  %2106 = getelementptr [2 x i8], [2 x i8]* @.str210, i32 0, i32 0
  %2107 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str210.c, i8* %2106, i64 1)
  %2108 = alloca %nyx_string*
  store %nyx_string* %2107, %nyx_string** %2108
  %2109 = getelementptr [1 x i8], [1 x i8]* @.str211, i32 0, i32 0
  %2110 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str211.c, i8* %2109, i64 0)
  %2111 = alloca %nyx_string*
  store %nyx_string* %2110, %nyx_string** %2111
  %2112 = getelementptr [2 x i8], [2 x i8]* @.str212, i32 0, i32 0
  %2113 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str212.c, i8* %2112, i64 1)
  %2114 = alloca %nyx_string*
  store %nyx_string* %2113, %nyx_string** %2114
  %2115 = getelementptr [5 x i8], [5 x i8]* @.str213, i32 0, i32 0
  %2116 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str213.c, i8* %2115, i64 4)
  %2117 = alloca %nyx_string*
  store %nyx_string* %2116, %nyx_string** %2117
  %2118 = call i8* @llvm.stacksave()
  br label %while_cond402
while_cond402:
  %2119 = load i64, i64* %1966
  %2120 = load { i64, i8* }*, { i64, i8* }** %run_files.ptr
  %2121 = call i64 @nyx_array_length({ i64, i8* }* %2120)
  %2122 = icmp slt i64 %2119, %2121
  br i1 %2122, label %while_body403, label %while_end404
while_body403:
  call void @llvm.stackrestore(i8* %2118)
  %2123 = load { i64, i8* }*, { i64, i8* }** %run_idx.ptr
  %2124 = load i64, i64* %1966
  %2125 = call i64 @nyx_array_get_checked({ i64, i8* }* %2123, i64 %2124, i64 2)
  %2126 = inttoptr i64 %2125 to %nyx_string*
  %2127 = alloca %nyx_string*
  store %nyx_string* %2126, %nyx_string** %2127
  %2128 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2129 = load %nyx_string*, %nyx_string** %2102
  %2130 = call %nyx_string* @nyx_string_concat(%nyx_string* %2128, %nyx_string* %2129)
  %2131 = load %nyx_string*, %nyx_string** %2127
  %2132 = call %nyx_string* @nyx_string_concat(%nyx_string* %2130, %nyx_string* %2131)
  %2133 = load %nyx_string*, %nyx_string** %2105
  %2134 = call %nyx_string* @nyx_string_concat(%nyx_string* %2132, %nyx_string* %2133)
  %2135 = alloca %nyx_string*
  store %nyx_string* %2134, %nyx_string** %2135
  %2136 = load %nyx_string*, %nyx_string** %2135
  %2137 = call i8* @nyx_string_to_cstr(%nyx_string* %2136)
  %2138 = call i1 @nyx_file_exists(i8* %2137)
  br i1 %2138, label %then405, label %else406
then405:
  %2139 = load %nyx_string*, %nyx_string** %2135
  %2140 = call i8* @nyx_string_to_cstr(%nyx_string* %2139)
  %2141 = call %nyx_string* @nyx_read_file(i8* %2140)
  %2142 = load %nyx_string*, %nyx_string** %2108
  %2143 = call { i64, i8* }* @nyx_string_split(%nyx_string* %2141, %nyx_string* %2142)
  %2144 = alloca { i64, i8* }*
  store { i64, i8* }* %2143, { i64, i8* }** %2144
  %2145 = alloca i64
  store i64 0, i64* %2145
  %2146 = call i8* @llvm.stacksave()
  br label %while_cond408
while_cond408:
  %2147 = load i64, i64* %2145
  %2148 = load { i64, i8* }*, { i64, i8* }** %2144
  %2149 = call i64 @nyx_array_length({ i64, i8* }* %2148)
  %2150 = icmp slt i64 %2147, %2149
  br i1 %2150, label %while_body409, label %while_end410
while_body409:
  call void @llvm.stackrestore(i8* %2146)
  %2151 = load { i64, i8* }*, { i64, i8* }** %2144
  %2152 = load i64, i64* %2145
  %2153 = call i64 @nyx_array_get_checked({ i64, i8* }* %2151, i64 %2152, i64 2)
  %2154 = inttoptr i64 %2153 to %nyx_string*
  %2155 = alloca %nyx_string*
  store %nyx_string* %2154, %nyx_string** %2155
  %2156 = load %nyx_string*, %nyx_string** %2155
  %2157 = call { i64, i8* }* @cov_fields(%nyx_string* %2156)
  %2158 = alloca { i64, i8* }*
  store { i64, i8* }* %2157, { i64, i8* }** %2158
  %2159 = load { i64, i8* }*, { i64, i8* }** %2158
  %2160 = call i64 @nyx_array_length({ i64, i8* }* %2159)
  %2161 = icmp sge i64 %2160, 5
  br i1 %2161, label %then411, label %else412
then411:
  %2162 = load { i64, i8* }*, { i64, i8* }** %2158
  %2163 = call i64 @nyx_array_get_checked({ i64, i8* }* %2162, i64 0, i64 2)
  %2164 = inttoptr i64 %2163 to %nyx_string*
  %2165 = alloca %nyx_string*
  store %nyx_string* %2164, %nyx_string** %2165
  %2166 = load { i64, i8* }*, { i64, i8* }** %2158
  %2167 = call i64 @nyx_array_get_checked({ i64, i8* }* %2166, i64 1, i64 2)
  %2168 = inttoptr i64 %2167 to %nyx_string*
  %2169 = alloca %nyx_string*
  store %nyx_string* %2168, %nyx_string** %2169
  %2170 = load { i64, i8* }*, { i64, i8* }** %2158
  %2171 = call i64 @nyx_array_get_checked({ i64, i8* }* %2170, i64 3, i64 2)
  %2172 = inttoptr i64 %2171 to %nyx_string*
  %2173 = alloca %nyx_string*
  store %nyx_string* %2172, %nyx_string** %2173
  %2174 = load { i64, i8* }*, { i64, i8* }** %2158
  %2175 = call i64 @nyx_array_get_checked({ i64, i8* }* %2174, i64 4, i64 2)
  %2176 = inttoptr i64 %2175 to %nyx_string*
  %2177 = alloca %nyx_string*
  store %nyx_string* %2176, %nyx_string** %2177
  %2178 = load %nyx_string*, %nyx_string** %2169
  %2179 = load %nyx_string*, %nyx_string** %2111
  %2180 = call i1 @nyx_string_equals(%nyx_string* %2178, %nyx_string* %2179)
  %2181 = xor i1 %2180, true
  br i1 %2181, label %then414, label %else415
then414:
  %2182 = load i8*, i8** %2099
  %2183 = load %nyx_string*, %nyx_string** %2169
  %2184 = load %nyx_string*, %nyx_string** %2114
  %2185 = call i8* @nyx_string_to_cstr(%nyx_string* %2183)
  %2186 = call i8* @nyx_string_to_cstr(%nyx_string* %2184)
  call void @nyx_map_insert_str(i8* %2182, i8* %2185, i8* %2186)
  br label %merge416
else415:
  br label %merge416
merge416:
  %2187 = load i8*, i8** %1963
  %2188 = load %nyx_string*, %nyx_string** %2127
  %2189 = call i8* @nyx_string_to_cstr(%nyx_string* %2188)
  %2190 = call i1 @nyx_map_contains_str(i8* %2187, i8* %2189)
  br i1 %2190, label %then417, label %else418
then417:
  %2191 = load i8*, i8** %2093
  %2192 = load %nyx_string*, %nyx_string** %2165
  %2193 = load %nyx_string*, %nyx_string** %2114
  %2194 = call i8* @nyx_string_to_cstr(%nyx_string* %2192)
  %2195 = call i8* @nyx_string_to_cstr(%nyx_string* %2193)
  call void @nyx_map_insert_str(i8* %2191, i8* %2194, i8* %2195)
  %2196 = alloca i1
  store i1 false, i1* %2196
  %2197 = load %nyx_string*, %nyx_string** %2177
  %2198 = load %nyx_string*, %nyx_string** %2117
  %2199 = call i1 @nyx_string_equals(%nyx_string* %2197, %nyx_string* %2198)
  br i1 %2199, label %sc_and_rhs420, label %sc_and_end421
sc_and_rhs420:
  %2200 = load i8*, i8** %2027
  %2201 = load %nyx_string*, %nyx_string** %2165
  %2202 = call i8* @nyx_string_to_cstr(%nyx_string* %2201)
  %2203 = call i1 @nyx_map_contains_str(i8* %2200, i8* %2202)
  store i1 %2203, i1* %2196
  br label %sc_and_end421
sc_and_end421:
  %2204 = load i1, i1* %2196
  br i1 %2204, label %then422, label %else423
then422:
  %2205 = load i8*, i8** %2097
  %2206 = load %nyx_string*, %nyx_string** %2173
  %2207 = load %nyx_string*, %nyx_string** %2114
  %2208 = call i8* @nyx_string_to_cstr(%nyx_string* %2206)
  %2209 = call i8* @nyx_string_to_cstr(%nyx_string* %2207)
  call void @nyx_map_insert_str(i8* %2205, i8* %2208, i8* %2209)
  br label %merge424
else423:
  br label %merge424
merge424:
  br label %merge419
else418:
  %2210 = load i8*, i8** %2095
  %2211 = load %nyx_string*, %nyx_string** %2165
  %2212 = load %nyx_string*, %nyx_string** %2114
  %2213 = call i8* @nyx_string_to_cstr(%nyx_string* %2211)
  %2214 = call i8* @nyx_string_to_cstr(%nyx_string* %2212)
  call void @nyx_map_insert_str(i8* %2210, i8* %2213, i8* %2214)
  br label %merge419
merge419:
  br label %merge413
else412:
  br label %merge413
merge413:
  %2215 = load i64, i64* %2145
  %2216 = add i64 %2215, 1
  store i64 %2216, i64* %2145
  br label %while_cond408
while_end410:
  br label %merge407
else406:
  br label %merge407
merge407:
  %2217 = load i64, i64* %1966
  %2218 = add i64 %2217, 1
  store i64 %2218, i64* %1966
  br label %while_cond402
while_end404:
  %2219 = call { i64, i8* }* @cov_src_modules()
  %2220 = alloca { i64, i8* }*
  store { i64, i8* }* %2219, { i64, i8* }** %2220
  %2221 = load { i64, i8* }*, { i64, i8* }** %2220
  %2222 = call i64 @nyx_array_length({ i64, i8* }* %2221)
  %2223 = icmp eq i64 %2222, 0
  br i1 %2223, label %then425, label %else426
then425:
  %2224 = getelementptr [27 x i8], [27 x i8]* @.str214, i32 0, i32 0
  %2225 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str214.c, i8* %2224, i64 26)
  %2226 = call i8* @nyx_string_to_cstr(%nyx_string* %2225)
  call void @nyx_print_string(i8* %2226)
  ret i64 0
else426:
  br label %merge427
merge427:
  %2227 = load %nyx_string*, %nyx_string** %1946
  %2228 = load %nyx_string*, %nyx_string** %1951
  %2229 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2230 = load { i64, i8* }*, { i64, i8* }** %2220
  %2231 = call %nyx_string* @cov_universe(%nyx_string* %2227, %nyx_string* %2228, %nyx_string* %2229, { i64, i8* }* %2230)
  %2232 = alloca %nyx_string*
  store %nyx_string* %2231, %nyx_string** %2232
  %2233 = load %nyx_string*, %nyx_string** %2232
  %2234 = call i8* @nyx_string_to_cstr(%nyx_string* %2233)
  %2235 = call i1 @nyx_file_exists(i8* %2234)
  %2236 = xor i1 %2235, true
  br i1 %2236, label %then428, label %else429
then428:
  %2237 = getelementptr [68 x i8], [68 x i8]* @.str215, i32 0, i32 0
  %2238 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str215.c, i8* %2237, i64 67)
  %2239 = call i8* @nyx_string_to_cstr(%nyx_string* %2238)
  call void @nyx_print_string(i8* %2239)
  %2240 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2241 = getelementptr [14 x i8], [14 x i8]* @.str216, i32 0, i32 0
  %2242 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str216.c, i8* %2241, i64 13)
  %2243 = call %nyx_string* @nyx_string_concat(%nyx_string* %2240, %nyx_string* %2242)
  %2244 = call i8* @nyx_string_to_cstr(%nyx_string* %2243)
  %2245 = call i1 @nyx_file_exists(i8* %2244)
  br i1 %2245, label %then431, label %else432
then431:
  %2246 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2247 = getelementptr [14 x i8], [14 x i8]* @.str217, i32 0, i32 0
  %2248 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str217.c, i8* %2247, i64 13)
  %2249 = call %nyx_string* @nyx_string_concat(%nyx_string* %2246, %nyx_string* %2248)
  %2250 = call i8* @nyx_string_to_cstr(%nyx_string* %2249)
  %2251 = call %nyx_string* @nyx_read_file(i8* %2250)
  %2252 = call i8* @nyx_string_to_cstr(%nyx_string* %2251)
  call void @nyx_print_string(i8* %2252)
  br label %merge433
else432:
  br label %merge433
merge433:
  ret i64 1
else429:
  br label %merge430
merge430:
  %2253 = load %nyx_string*, %nyx_string** %2232
  %2254 = call i8* @nyx_string_to_cstr(%nyx_string* %2253)
  %2255 = call %nyx_string* @nyx_read_file(i8* %2254)
  %2256 = getelementptr [2 x i8], [2 x i8]* @.str218, i32 0, i32 0
  %2257 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str218.c, i8* %2256, i64 1)
  %2258 = call { i64, i8* }* @nyx_string_split(%nyx_string* %2255, %nyx_string* %2257)
  %2259 = alloca { i64, i8* }*
  store { i64, i8* }* %2258, { i64, i8* }** %2259
  %2260 = call { i64, i8* }* @nyx_array_new_ptr()
  %2261 = alloca { i64, i8* }*
  store { i64, i8* }* %2260, { i64, i8* }** %2261
  %2262 = alloca i64
  store i64 0, i64* %2262
  %2263 = getelementptr [3 x i8], [3 x i8]* @.str219, i32 0, i32 0
  %2264 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str219.c, i8* %2263, i64 2)
  %2265 = alloca %nyx_string*
  store %nyx_string* %2264, %nyx_string** %2265
  %2266 = getelementptr [7 x i8], [7 x i8]* @.str220, i32 0, i32 0
  %2267 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str220.c, i8* %2266, i64 6)
  %2268 = alloca %nyx_string*
  store %nyx_string* %2267, %nyx_string** %2268
  %2269 = getelementptr [6 x i8], [6 x i8]* @.str221, i32 0, i32 0
  %2270 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str221.c, i8* %2269, i64 5)
  %2271 = alloca %nyx_string*
  store %nyx_string* %2270, %nyx_string** %2271
  %2272 = getelementptr [9 x i8], [9 x i8]* @.str222, i32 0, i32 0
  %2273 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str222.c, i8* %2272, i64 8)
  %2274 = alloca %nyx_string*
  store %nyx_string* %2273, %nyx_string** %2274
  %2275 = getelementptr [5 x i8], [5 x i8]* @.str223, i32 0, i32 0
  %2276 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str223.c, i8* %2275, i64 4)
  %2277 = alloca %nyx_string*
  store %nyx_string* %2276, %nyx_string** %2277
  %2278 = getelementptr [5 x i8], [5 x i8]* @.str224, i32 0, i32 0
  %2279 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str224.c, i8* %2278, i64 4)
  %2280 = alloca %nyx_string*
  store %nyx_string* %2279, %nyx_string** %2280
  %2281 = getelementptr [3 x i8], [3 x i8]* @.str225, i32 0, i32 0
  %2282 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str225.c, i8* %2281, i64 2)
  %2283 = alloca %nyx_string*
  store %nyx_string* %2282, %nyx_string** %2283
  %2284 = getelementptr [3 x i8], [3 x i8]* @.str226, i32 0, i32 0
  %2285 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str226.c, i8* %2284, i64 2)
  %2286 = alloca %nyx_string*
  store %nyx_string* %2285, %nyx_string** %2286
  %2287 = getelementptr [10 x i8], [10 x i8]* @.str227, i32 0, i32 0
  %2288 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str227.c, i8* %2287, i64 9)
  %2289 = alloca %nyx_string*
  store %nyx_string* %2288, %nyx_string** %2289
  %2290 = getelementptr [5 x i8], [5 x i8]* @.str228, i32 0, i32 0
  %2291 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str228.c, i8* %2290, i64 4)
  %2292 = alloca %nyx_string*
  store %nyx_string* %2291, %nyx_string** %2292
  %2293 = getelementptr [2 x i8], [2 x i8]* @.str229, i32 0, i32 0
  %2294 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str229.c, i8* %2293, i64 1)
  %2295 = alloca %nyx_string*
  store %nyx_string* %2294, %nyx_string** %2295
  %2296 = call i8* @llvm.stacksave()
  br label %while_cond434
while_cond434:
  %2297 = load i64, i64* %2262
  %2298 = load { i64, i8* }*, { i64, i8* }** %2259
  %2299 = call i64 @nyx_array_length({ i64, i8* }* %2298)
  %2300 = icmp slt i64 %2297, %2299
  br i1 %2300, label %while_body435, label %while_end436
while_body435:
  call void @llvm.stackrestore(i8* %2296)
  %2301 = load { i64, i8* }*, { i64, i8* }** %2259
  %2302 = load i64, i64* %2262
  %2303 = call i64 @nyx_array_get_checked({ i64, i8* }* %2301, i64 %2302, i64 2)
  %2304 = inttoptr i64 %2303 to %nyx_string*
  %2305 = alloca %nyx_string*
  store %nyx_string* %2304, %nyx_string** %2305
  %2306 = load %nyx_string*, %nyx_string** %2305
  %2307 = call { i64, i8* }* @cov_fields(%nyx_string* %2306)
  %2308 = alloca { i64, i8* }*
  store { i64, i8* }* %2307, { i64, i8* }** %2308
  %2309 = load { i64, i8* }*, { i64, i8* }** %2308
  %2310 = call i64 @nyx_array_length({ i64, i8* }* %2309)
  %2311 = icmp sge i64 %2310, 5
  br i1 %2311, label %then437, label %else438
then437:
  %2312 = load { i64, i8* }*, { i64, i8* }** %2308
  %2313 = call i64 @nyx_array_get_checked({ i64, i8* }* %2312, i64 0, i64 2)
  %2314 = inttoptr i64 %2313 to %nyx_string*
  %2315 = alloca %nyx_string*
  store %nyx_string* %2314, %nyx_string** %2315
  %2316 = load { i64, i8* }*, { i64, i8* }** %2308
  %2317 = call i64 @nyx_array_get_checked({ i64, i8* }* %2316, i64 1, i64 2)
  %2318 = inttoptr i64 %2317 to %nyx_string*
  %2319 = alloca %nyx_string*
  store %nyx_string* %2318, %nyx_string** %2319
  %2320 = load { i64, i8* }*, { i64, i8* }** %2308
  %2321 = call i64 @nyx_array_get_checked({ i64, i8* }* %2320, i64 2, i64 2)
  %2322 = inttoptr i64 %2321 to %nyx_string*
  %2323 = alloca %nyx_string*
  store %nyx_string* %2322, %nyx_string** %2323
  %2324 = load { i64, i8* }*, { i64, i8* }** %2308
  %2325 = call i64 @nyx_array_get_checked({ i64, i8* }* %2324, i64 3, i64 2)
  %2326 = inttoptr i64 %2325 to %nyx_string*
  %2327 = alloca %nyx_string*
  store %nyx_string* %2326, %nyx_string** %2327
  %2328 = load { i64, i8* }*, { i64, i8* }** %2308
  %2329 = call i64 @nyx_array_get_checked({ i64, i8* }* %2328, i64 4, i64 2)
  %2330 = inttoptr i64 %2329 to %nyx_string*
  %2331 = alloca %nyx_string*
  store %nyx_string* %2330, %nyx_string** %2331
  %2332 = alloca i1
  store i1 true, i1* %2332
  %2333 = alloca i1
  store i1 true, i1* %2333
  %2334 = alloca i1
  store i1 true, i1* %2334
  %2335 = load %nyx_string*, %nyx_string** %2331
  %2336 = load %nyx_string*, %nyx_string** %2265
  %2337 = call i1 @nyx_string_equals(%nyx_string* %2335, %nyx_string* %2336)
  br i1 %2337, label %sc_or_end441, label %sc_or_rhs440
sc_or_rhs440:
  %2338 = load %nyx_string*, %nyx_string** %2331
  %2339 = load %nyx_string*, %nyx_string** %2268
  %2340 = call i1 @nyx_string_equals(%nyx_string* %2338, %nyx_string* %2339)
  store i1 %2340, i1* %2334
  br label %sc_or_end441
sc_or_end441:
  %2341 = load i1, i1* %2334
  br i1 %2341, label %sc_or_end443, label %sc_or_rhs442
sc_or_rhs442:
  %2342 = load %nyx_string*, %nyx_string** %2331
  %2343 = load %nyx_string*, %nyx_string** %2271
  %2344 = call i1 @nyx_string_equals(%nyx_string* %2342, %nyx_string* %2343)
  store i1 %2344, i1* %2333
  br label %sc_or_end443
sc_or_end443:
  %2345 = load i1, i1* %2333
  br i1 %2345, label %sc_or_end445, label %sc_or_rhs444
sc_or_rhs444:
  %2346 = load %nyx_string*, %nyx_string** %2331
  %2347 = load %nyx_string*, %nyx_string** %2274
  %2348 = call i1 @nyx_string_equals(%nyx_string* %2346, %nyx_string* %2347)
  store i1 %2348, i1* %2332
  br label %sc_or_end445
sc_or_end445:
  %2349 = load i1, i1* %2332
  %2350 = alloca i1
  store i1 %2349, i1* %2350
  %2351 = alloca i1
  store i1 false, i1* %2351
  %2352 = alloca i1
  store i1 false, i1* %2352
  %2353 = load i1, i1* %2350
  br i1 %2353, label %sc_and_rhs446, label %sc_and_end447
sc_and_rhs446:
  %2354 = load %nyx_string*, %nyx_string** %2319
  %2355 = load %nyx_string*, %nyx_string** %2277
  %2356 = call i1 @nyx_string_starts_with(%nyx_string* %2354, %nyx_string* %2355)
  store i1 %2356, i1* %2352
  br label %sc_and_end447
sc_and_end447:
  %2357 = load i1, i1* %2352
  br i1 %2357, label %sc_and_rhs448, label %sc_and_end449
sc_and_rhs448:
  %2358 = load %nyx_string*, %nyx_string** %2327
  %2359 = load %nyx_string*, %nyx_string** %2280
  %2360 = call i1 @nyx_string_equals(%nyx_string* %2358, %nyx_string* %2359)
  %2361 = xor i1 %2360, true
  store i1 %2361, i1* %2351
  br label %sc_and_end449
sc_and_end449:
  %2362 = load i1, i1* %2351
  br i1 %2362, label %then450, label %else451
then450:
  %2363 = load i8*, i8** %2027
  %2364 = load %nyx_string*, %nyx_string** %2315
  %2365 = call i8* @nyx_string_to_cstr(%nyx_string* %2364)
  %2366 = call i1 @nyx_map_contains_str(i8* %2363, i8* %2365)
  %2367 = alloca i1
  store i1 %2366, i1* %2367
  %2368 = load %nyx_string*, %nyx_string** %2331
  %2369 = load %nyx_string*, %nyx_string** %2274
  %2370 = call i1 @nyx_string_equals(%nyx_string* %2368, %nyx_string* %2369)
  br i1 %2370, label %then453, label %else454
then453:
  %2371 = load i8*, i8** %2097
  %2372 = load %nyx_string*, %nyx_string** %2315
  %2373 = call i8* @nyx_string_to_cstr(%nyx_string* %2372)
  %2374 = call i1 @nyx_map_contains_str(i8* %2371, i8* %2373)
  store i1 %2374, i1* %2367
  br label %merge455
else454:
  br label %merge455
merge455:
  %2375 = load %nyx_string*, %nyx_string** %2283
  %2376 = alloca %nyx_string*
  store %nyx_string* %2375, %nyx_string** %2376
  %2377 = load i1, i1* %2367
  br i1 %2377, label %then456, label %else457
then456:
  %2378 = load %nyx_string*, %nyx_string** %2286
  store %nyx_string* %2378, %nyx_string** %2376
  br label %merge458
else457:
  %2379 = alloca i1
  store i1 false, i1* %2379
  %2380 = load i8*, i8** %2093
  %2381 = load %nyx_string*, %nyx_string** %2315
  %2382 = call i8* @nyx_string_to_cstr(%nyx_string* %2381)
  %2383 = call i1 @nyx_map_contains_str(i8* %2380, i8* %2382)
  %2384 = xor i1 %2383, true
  br i1 %2384, label %sc_and_rhs459, label %sc_and_end460
sc_and_rhs459:
  %2385 = load i8*, i8** %2095
  %2386 = load %nyx_string*, %nyx_string** %2315
  %2387 = call i8* @nyx_string_to_cstr(%nyx_string* %2386)
  %2388 = call i1 @nyx_map_contains_str(i8* %2385, i8* %2387)
  store i1 %2388, i1* %2379
  br label %sc_and_end460
sc_and_end460:
  %2389 = load i1, i1* %2379
  br i1 %2389, label %then461, label %else462
then461:
  %2390 = load %nyx_string*, %nyx_string** %2289
  store %nyx_string* %2390, %nyx_string** %2376
  br label %merge463
else462:
  br label %merge463
merge463:
  br label %merge458
merge458:
  %2391 = load { i64, i8* }*, { i64, i8* }** %2261
  %2392 = load %nyx_string*, %nyx_string** %2319
  %2393 = load %nyx_string*, %nyx_string** %2292
  %2394 = call %nyx_string* @nyx_string_concat(%nyx_string* %2392, %nyx_string* %2393)
  %2395 = load %nyx_string*, %nyx_string** %2323
  %2396 = call i64 @nyx_string_to_int(%nyx_string* %2395)
  %2397 = call %nyx_string* @cov_pad(i64 %2396)
  %2398 = call %nyx_string* @nyx_string_concat(%nyx_string* %2394, %nyx_string* %2397)
  %2399 = load %nyx_string*, %nyx_string** %2295
  %2400 = call %nyx_string* @nyx_string_concat(%nyx_string* %2398, %nyx_string* %2399)
  %2401 = load %nyx_string*, %nyx_string** %2327
  %2402 = call %nyx_string* @nyx_string_concat(%nyx_string* %2400, %nyx_string* %2401)
  %2403 = load %nyx_string*, %nyx_string** %2295
  %2404 = call %nyx_string* @nyx_string_concat(%nyx_string* %2402, %nyx_string* %2403)
  %2405 = load %nyx_string*, %nyx_string** %2376
  %2406 = call %nyx_string* @nyx_string_concat(%nyx_string* %2404, %nyx_string* %2405)
  %2407 = load %nyx_string*, %nyx_string** %2295
  %2408 = call %nyx_string* @nyx_string_concat(%nyx_string* %2406, %nyx_string* %2407)
  %2409 = load %nyx_string*, %nyx_string** %2319
  %2410 = call %nyx_string* @nyx_string_concat(%nyx_string* %2408, %nyx_string* %2409)
  %2411 = ptrtoint %nyx_string* %2410 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2391, i64 %2411, i64 2)
  br label %merge452
else451:
  br label %merge452
merge452:
  br label %merge439
else438:
  br label %merge439
merge439:
  %2412 = load i64, i64* %2262
  %2413 = add i64 %2412, 1
  store i64 %2413, i64* %2262
  br label %while_cond434
while_end436:
  %2414 = load { i64, i8* }*, { i64, i8* }** %2261
  %2415 = call { i64, i8* }* @sort_str({ i64, i8* }* %2414)
  %2416 = alloca { i64, i8* }*
  store { i64, i8* }* %2415, { i64, i8* }** %2416
  %2417 = getelementptr [1 x i8], [1 x i8]* @.str230, i32 0, i32 0
  %2418 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str230.c, i8* %2417, i64 0)
  %2419 = alloca %nyx_string*
  store %nyx_string* %2418, %nyx_string** %2419
  %2420 = alloca i64
  store i64 0, i64* %2420
  %2421 = alloca i64
  store i64 0, i64* %2421
  %2422 = alloca i64
  store i64 0, i64* %2422
  %2423 = getelementptr [1 x i8], [1 x i8]* @.str231, i32 0, i32 0
  %2424 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str231.c, i8* %2423, i64 0)
  %2425 = alloca %nyx_string*
  store %nyx_string* %2424, %nyx_string** %2425
  %2426 = getelementptr [10 x i8], [10 x i8]* @.str232, i32 0, i32 0
  %2427 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str232.c, i8* %2426, i64 9)
  %2428 = alloca %nyx_string*
  store %nyx_string* %2427, %nyx_string** %2428
  %2429 = getelementptr [2 x i8], [2 x i8]* @.str233, i32 0, i32 0
  %2430 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str233.c, i8* %2429, i64 1)
  %2431 = alloca %nyx_string*
  store %nyx_string* %2430, %nyx_string** %2431
  %2432 = getelementptr [3 x i8], [3 x i8]* @.str234, i32 0, i32 0
  %2433 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str234.c, i8* %2432, i64 2)
  %2434 = alloca %nyx_string*
  store %nyx_string* %2433, %nyx_string** %2434
  %2435 = getelementptr [2 x i8], [2 x i8]* @.str235, i32 0, i32 0
  %2436 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str235.c, i8* %2435, i64 1)
  %2437 = alloca %nyx_string*
  store %nyx_string* %2436, %nyx_string** %2437
  %2438 = getelementptr [5 x i8], [5 x i8]* @.str236, i32 0, i32 0
  %2439 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str236.c, i8* %2438, i64 4)
  %2440 = alloca %nyx_string*
  store %nyx_string* %2439, %nyx_string** %2440
  %2441 = getelementptr [2 x i8], [2 x i8]* @.str237, i32 0, i32 0
  %2442 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str237.c, i8* %2441, i64 1)
  %2443 = alloca %nyx_string*
  store %nyx_string* %2442, %nyx_string** %2443
  %2444 = getelementptr [2 x i8], [2 x i8]* @.str238, i32 0, i32 0
  %2445 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str238.c, i8* %2444, i64 1)
  %2446 = alloca %nyx_string*
  store %nyx_string* %2445, %nyx_string** %2446
  %2447 = getelementptr [4 x i8], [4 x i8]* @.str239, i32 0, i32 0
  %2448 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str239.c, i8* %2447, i64 3)
  %2449 = alloca %nyx_string*
  store %nyx_string* %2448, %nyx_string** %2449
  %2450 = getelementptr [2 x i8], [2 x i8]* @.str240, i32 0, i32 0
  %2451 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str240.c, i8* %2450, i64 1)
  %2452 = alloca %nyx_string*
  store %nyx_string* %2451, %nyx_string** %2452
  %2453 = getelementptr [2 x i8], [2 x i8]* @.str241, i32 0, i32 0
  %2454 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str241.c, i8* %2453, i64 1)
  %2455 = alloca %nyx_string*
  store %nyx_string* %2454, %nyx_string** %2455
  %2456 = getelementptr [6 x i8], [6 x i8]* @.str242, i32 0, i32 0
  %2457 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str242.c, i8* %2456, i64 5)
  %2458 = alloca %nyx_string*
  store %nyx_string* %2457, %nyx_string** %2458
  %2459 = getelementptr [3 x i8], [3 x i8]* @.str243, i32 0, i32 0
  %2460 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str243.c, i8* %2459, i64 2)
  %2461 = alloca %nyx_string*
  store %nyx_string* %2460, %nyx_string** %2461
  %2462 = getelementptr [3 x i8], [3 x i8]* @.str244, i32 0, i32 0
  %2463 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str244.c, i8* %2462, i64 2)
  %2464 = alloca %nyx_string*
  store %nyx_string* %2463, %nyx_string** %2464
  %2465 = getelementptr [2 x i8], [2 x i8]* @.str245, i32 0, i32 0
  %2466 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str245.c, i8* %2465, i64 1)
  %2467 = alloca %nyx_string*
  store %nyx_string* %2466, %nyx_string** %2467
  %2468 = getelementptr [10 x i8], [10 x i8]* @.str246, i32 0, i32 0
  %2469 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str246.c, i8* %2468, i64 9)
  %2470 = alloca %nyx_string*
  store %nyx_string* %2469, %nyx_string** %2470
  %2471 = getelementptr [29 x i8], [29 x i8]* @.str247, i32 0, i32 0
  %2472 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str247.c, i8* %2471, i64 28)
  %2473 = alloca %nyx_string*
  store %nyx_string* %2472, %nyx_string** %2473
  %2474 = getelementptr [3 x i8], [3 x i8]* @.str248, i32 0, i32 0
  %2475 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str248.c, i8* %2474, i64 2)
  %2476 = alloca %nyx_string*
  store %nyx_string* %2475, %nyx_string** %2476
  %2477 = getelementptr [38 x i8], [38 x i8]* @.str249, i32 0, i32 0
  %2478 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str249.c, i8* %2477, i64 37)
  %2479 = alloca %nyx_string*
  store %nyx_string* %2478, %nyx_string** %2479
  %2480 = getelementptr [4 x i8], [4 x i8]* @.str250, i32 0, i32 0
  %2481 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str250.c, i8* %2480, i64 3)
  %2482 = alloca %nyx_string*
  store %nyx_string* %2481, %nyx_string** %2482
  %2483 = getelementptr [5 x i8], [5 x i8]* @.str251, i32 0, i32 0
  %2484 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str251.c, i8* %2483, i64 4)
  %2485 = alloca %nyx_string*
  store %nyx_string* %2484, %nyx_string** %2485
  %2486 = getelementptr [6 x i8], [6 x i8]* @.str252, i32 0, i32 0
  %2487 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str252.c, i8* %2486, i64 5)
  %2488 = alloca %nyx_string*
  store %nyx_string* %2487, %nyx_string** %2488
  %2489 = getelementptr [16 x i8], [16 x i8]* @.str253, i32 0, i32 0
  %2490 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str253.c, i8* %2489, i64 15)
  %2491 = alloca %nyx_string*
  store %nyx_string* %2490, %nyx_string** %2491
  %2492 = call i8* @llvm.stacksave()
  br label %while_cond464
while_cond464:
  %2493 = load i64, i64* %2422
  %2494 = load { i64, i8* }*, { i64, i8* }** %2416
  %2495 = call i64 @nyx_array_length({ i64, i8* }* %2494)
  %2496 = icmp slt i64 %2493, %2495
  br i1 %2496, label %while_body465, label %while_end466
while_body465:
  call void @llvm.stackrestore(i8* %2492)
  %2497 = load { i64, i8* }*, { i64, i8* }** %2416
  %2498 = load i64, i64* %2422
  %2499 = call i64 @nyx_array_get_checked({ i64, i8* }* %2497, i64 %2498, i64 2)
  %2500 = inttoptr i64 %2499 to %nyx_string*
  %2501 = alloca %nyx_string*
  store %nyx_string* %2500, %nyx_string** %2501
  %2502 = load %nyx_string*, %nyx_string** %2501
  %2503 = call { i64, i8* }* @cov_fields(%nyx_string* %2502)
  %2504 = alloca { i64, i8* }*
  store { i64, i8* }* %2503, { i64, i8* }** %2504
  %2505 = load { i64, i8* }*, { i64, i8* }** %2504
  %2506 = call i64 @nyx_array_get_checked({ i64, i8* }* %2505, i64 0, i64 2)
  %2507 = inttoptr i64 %2506 to %nyx_string*
  %2508 = alloca %nyx_string*
  store %nyx_string* %2507, %nyx_string** %2508
  %2509 = load { i64, i8* }*, { i64, i8* }** %2504
  %2510 = call i64 @nyx_array_get_checked({ i64, i8* }* %2509, i64 4, i64 2)
  %2511 = inttoptr i64 %2510 to %nyx_string*
  %2512 = alloca %nyx_string*
  store %nyx_string* %2511, %nyx_string** %2512
  %2513 = alloca i64
  store i64 0, i64* %2513
  %2514 = alloca i64
  store i64 0, i64* %2514
  %2515 = alloca i64
  store i64 0, i64* %2515
  %2516 = call { i64, i8* }* @nyx_array_new_ptr()
  %2517 = alloca { i64, i8* }*
  store { i64, i8* }* %2516, { i64, i8* }** %2517
  %2518 = load %nyx_string*, %nyx_string** %2425
  %2519 = alloca %nyx_string*
  store %nyx_string* %2518, %nyx_string** %2519
  %2520 = load %nyx_string*, %nyx_string** %2425
  %2521 = alloca %nyx_string*
  store %nyx_string* %2520, %nyx_string** %2521
  %2522 = load i64, i64* %2422
  %2523 = alloca i64
  store i64 %2522, i64* %2523
  %2524 = alloca i1
  store i1 1, i1* %2524
  %2525 = call i8* @llvm.stacksave()
  br label %while_cond467
while_cond467:
  %2526 = alloca i1
  store i1 false, i1* %2526
  %2527 = load i64, i64* %2523
  %2528 = load { i64, i8* }*, { i64, i8* }** %2416
  %2529 = call i64 @nyx_array_length({ i64, i8* }* %2528)
  %2530 = icmp slt i64 %2527, %2529
  br i1 %2530, label %sc_and_rhs470, label %sc_and_end471
sc_and_rhs470:
  %2531 = load i1, i1* %2524
  store i1 %2531, i1* %2526
  br label %sc_and_end471
sc_and_end471:
  %2532 = load i1, i1* %2526
  br i1 %2532, label %while_body468, label %while_end469
while_body468:
  call void @llvm.stackrestore(i8* %2525)
  %2533 = load { i64, i8* }*, { i64, i8* }** %2416
  %2534 = load i64, i64* %2523
  %2535 = call i64 @nyx_array_get_checked({ i64, i8* }* %2533, i64 %2534, i64 2)
  %2536 = inttoptr i64 %2535 to %nyx_string*
  %2537 = alloca %nyx_string*
  store %nyx_string* %2536, %nyx_string** %2537
  %2538 = load %nyx_string*, %nyx_string** %2537
  %2539 = call { i64, i8* }* @cov_fields(%nyx_string* %2538)
  %2540 = alloca { i64, i8* }*
  store { i64, i8* }* %2539, { i64, i8* }** %2540
  %2541 = load { i64, i8* }*, { i64, i8* }** %2540
  %2542 = call i64 @nyx_array_get_checked({ i64, i8* }* %2541, i64 0, i64 2)
  %2543 = inttoptr i64 %2542 to %nyx_string*
  %2544 = alloca %nyx_string*
  store %nyx_string* %2543, %nyx_string** %2544
  %2545 = load %nyx_string*, %nyx_string** %2544
  %2546 = load %nyx_string*, %nyx_string** %2508
  %2547 = call i1 @nyx_string_equals(%nyx_string* %2545, %nyx_string* %2546)
  %2548 = xor i1 %2547, true
  br i1 %2548, label %then472, label %else473
then472:
  store i1 0, i1* %2524
  br label %merge474
else473:
  %2549 = load { i64, i8* }*, { i64, i8* }** %2540
  %2550 = call i64 @nyx_array_get({ i64, i8* }* %2549, i64 1)
  %2551 = inttoptr i64 %2550 to %nyx_string*
  %2552 = call i64 @nyx_string_to_int(%nyx_string* %2551)
  %2553 = alloca i64
  store i64 %2552, i64* %2553
  %2554 = load { i64, i8* }*, { i64, i8* }** %2540
  %2555 = call i64 @nyx_array_get_checked({ i64, i8* }* %2554, i64 2, i64 2)
  %2556 = inttoptr i64 %2555 to %nyx_string*
  %2557 = alloca %nyx_string*
  store %nyx_string* %2556, %nyx_string** %2557
  %2558 = load { i64, i8* }*, { i64, i8* }** %2540
  %2559 = call i64 @nyx_array_get_checked({ i64, i8* }* %2558, i64 3, i64 2)
  %2560 = inttoptr i64 %2559 to %nyx_string*
  %2561 = alloca %nyx_string*
  store %nyx_string* %2560, %nyx_string** %2561
  %2562 = load %nyx_string*, %nyx_string** %2561
  %2563 = load %nyx_string*, %nyx_string** %2428
  %2564 = call i1 @nyx_string_equals(%nyx_string* %2562, %nyx_string* %2563)
  br i1 %2564, label %then475, label %else476
then475:
  %2565 = load i64, i64* %2515
  %2566 = add i64 %2565, 1
  store i64 %2566, i64* %2515
  br label %merge477
else476:
  %2567 = load i64, i64* %2514
  %2568 = add i64 %2567, 1
  store i64 %2568, i64* %2514
  %2569 = load %nyx_string*, %nyx_string** %2431
  %2570 = alloca %nyx_string*
  store %nyx_string* %2569, %nyx_string** %2570
  %2571 = load %nyx_string*, %nyx_string** %2561
  %2572 = load %nyx_string*, %nyx_string** %2434
  %2573 = call i1 @nyx_string_equals(%nyx_string* %2571, %nyx_string* %2572)
  br i1 %2573, label %then478, label %else479
then478:
  %2574 = load i64, i64* %2513
  %2575 = add i64 %2574, 1
  store i64 %2575, i64* %2513
  %2576 = load %nyx_string*, %nyx_string** %2437
  store %nyx_string* %2576, %nyx_string** %2570
  br label %merge480
else479:
  %2577 = load { i64, i8* }*, { i64, i8* }** %2517
  %2578 = load %nyx_string*, %nyx_string** %2440
  %2579 = load %nyx_string*, %nyx_string** %2508
  %2580 = call %nyx_string* @nyx_string_concat(%nyx_string* %2578, %nyx_string* %2579)
  %2581 = load %nyx_string*, %nyx_string** %2443
  %2582 = call %nyx_string* @nyx_string_concat(%nyx_string* %2580, %nyx_string* %2581)
  %2583 = load i64, i64* %2553
  %2584 = call %nyx_string* @nyx_string_from_int(i64 %2583)
  %2585 = call %nyx_string* @nyx_string_concat(%nyx_string* %2582, %nyx_string* %2584)
  %2586 = load %nyx_string*, %nyx_string** %2446
  %2587 = call %nyx_string* @nyx_string_concat(%nyx_string* %2585, %nyx_string* %2586)
  %2588 = load %nyx_string*, %nyx_string** %2557
  %2589 = call %nyx_string* @nyx_string_concat(%nyx_string* %2587, %nyx_string* %2588)
  %2590 = ptrtoint %nyx_string* %2589 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2577, i64 %2590, i64 2)
  br label %merge480
merge480:
  %2591 = load %nyx_string*, %nyx_string** %2519
  %2592 = load %nyx_string*, %nyx_string** %2449
  %2593 = call %nyx_string* @nyx_string_concat(%nyx_string* %2591, %nyx_string* %2592)
  %2594 = load i64, i64* %2553
  %2595 = call %nyx_string* @nyx_string_from_int(i64 %2594)
  %2596 = call %nyx_string* @nyx_string_concat(%nyx_string* %2593, %nyx_string* %2595)
  %2597 = load %nyx_string*, %nyx_string** %2452
  %2598 = call %nyx_string* @nyx_string_concat(%nyx_string* %2596, %nyx_string* %2597)
  %2599 = load %nyx_string*, %nyx_string** %2557
  %2600 = call %nyx_string* @nyx_string_concat(%nyx_string* %2598, %nyx_string* %2599)
  %2601 = load %nyx_string*, %nyx_string** %2455
  %2602 = call %nyx_string* @nyx_string_concat(%nyx_string* %2600, %nyx_string* %2601)
  store %nyx_string* %2602, %nyx_string** %2519
  %2603 = load %nyx_string*, %nyx_string** %2521
  %2604 = load %nyx_string*, %nyx_string** %2458
  %2605 = call %nyx_string* @nyx_string_concat(%nyx_string* %2603, %nyx_string* %2604)
  %2606 = load %nyx_string*, %nyx_string** %2570
  %2607 = call %nyx_string* @nyx_string_concat(%nyx_string* %2605, %nyx_string* %2606)
  %2608 = load %nyx_string*, %nyx_string** %2452
  %2609 = call %nyx_string* @nyx_string_concat(%nyx_string* %2607, %nyx_string* %2608)
  %2610 = load %nyx_string*, %nyx_string** %2557
  %2611 = call %nyx_string* @nyx_string_concat(%nyx_string* %2609, %nyx_string* %2610)
  %2612 = load %nyx_string*, %nyx_string** %2455
  %2613 = call %nyx_string* @nyx_string_concat(%nyx_string* %2611, %nyx_string* %2612)
  store %nyx_string* %2613, %nyx_string** %2521
  br label %merge477
merge477:
  %2614 = load i64, i64* %2523
  %2615 = add i64 %2614, 1
  store i64 %2615, i64* %2523
  br label %merge474
merge474:
  br label %while_cond467
while_end469:
  %2616 = load %nyx_string*, %nyx_string** %2461
  %2617 = load %nyx_string*, %nyx_string** %2508
  %2618 = call %nyx_string* @nyx_string_concat(%nyx_string* %2616, %nyx_string* %2617)
  %2619 = load %nyx_string*, %nyx_string** %2464
  %2620 = call %nyx_string* @nyx_string_concat(%nyx_string* %2618, %nyx_string* %2619)
  %2621 = load i64, i64* %2513
  %2622 = call %nyx_string* @nyx_string_from_int(i64 %2621)
  %2623 = call %nyx_string* @nyx_string_concat(%nyx_string* %2620, %nyx_string* %2622)
  %2624 = load %nyx_string*, %nyx_string** %2467
  %2625 = call %nyx_string* @nyx_string_concat(%nyx_string* %2623, %nyx_string* %2624)
  %2626 = load i64, i64* %2514
  %2627 = call %nyx_string* @nyx_string_from_int(i64 %2626)
  %2628 = call %nyx_string* @nyx_string_concat(%nyx_string* %2625, %nyx_string* %2627)
  %2629 = load %nyx_string*, %nyx_string** %2470
  %2630 = call %nyx_string* @nyx_string_concat(%nyx_string* %2628, %nyx_string* %2629)
  %2631 = alloca %nyx_string*
  store %nyx_string* %2630, %nyx_string** %2631
  %2632 = load i8*, i8** %2099
  %2633 = load %nyx_string*, %nyx_string** %2512
  %2634 = call i8* @nyx_string_to_cstr(%nyx_string* %2633)
  %2635 = call i1 @nyx_map_contains_str(i8* %2632, i8* %2634)
  %2636 = xor i1 %2635, true
  br i1 %2636, label %then481, label %else482
then481:
  %2637 = load %nyx_string*, %nyx_string** %2631
  %2638 = load %nyx_string*, %nyx_string** %2473
  %2639 = call %nyx_string* @nyx_string_concat(%nyx_string* %2637, %nyx_string* %2638)
  store %nyx_string* %2639, %nyx_string** %2631
  br label %merge483
else482:
  br label %merge483
merge483:
  %2640 = load i64, i64* %2515
  %2641 = icmp sgt i64 %2640, 0
  br i1 %2641, label %then484, label %else485
then484:
  %2642 = load %nyx_string*, %nyx_string** %2631
  %2643 = load %nyx_string*, %nyx_string** %2476
  %2644 = call %nyx_string* @nyx_string_concat(%nyx_string* %2642, %nyx_string* %2643)
  %2645 = load i64, i64* %2515
  %2646 = call %nyx_string* @nyx_string_from_int(i64 %2645)
  %2647 = call %nyx_string* @nyx_string_concat(%nyx_string* %2644, %nyx_string* %2646)
  %2648 = load %nyx_string*, %nyx_string** %2479
  %2649 = call %nyx_string* @nyx_string_concat(%nyx_string* %2647, %nyx_string* %2648)
  store %nyx_string* %2649, %nyx_string** %2631
  br label %merge486
else485:
  br label %merge486
merge486:
  %2650 = load %nyx_string*, %nyx_string** %2631
  %2651 = call i8* @nyx_string_to_cstr(%nyx_string* %2650)
  call void @nyx_print_string(i8* %2651)
  %2652 = alloca i64
  store i64 0, i64* %2652
  %2653 = call i8* @llvm.stacksave()
  br label %while_cond487
while_cond487:
  %2654 = load i64, i64* %2652
  %2655 = load { i64, i8* }*, { i64, i8* }** %2517
  %2656 = call i64 @nyx_array_length({ i64, i8* }* %2655)
  %2657 = icmp slt i64 %2654, %2656
  br i1 %2657, label %while_body488, label %while_end489
while_body488:
  call void @llvm.stackrestore(i8* %2653)
  %2658 = load { i64, i8* }*, { i64, i8* }** %2517
  %2659 = load i64, i64* %2652
  %2660 = call i64 @nyx_array_get_checked({ i64, i8* }* %2658, i64 %2659, i64 2)
  %2661 = inttoptr i64 %2660 to %nyx_string*
  %2662 = alloca %nyx_string*
  store %nyx_string* %2661, %nyx_string** %2662
  %2663 = load %nyx_string*, %nyx_string** %2662
  %2664 = call i8* @nyx_string_to_cstr(%nyx_string* %2663)
  call void @nyx_print_string(i8* %2664)
  %2665 = load i64, i64* %2652
  %2666 = add i64 %2665, 1
  store i64 %2666, i64* %2652
  br label %while_cond487
while_end489:
  %2667 = load i64, i64* %2420
  %2668 = load i64, i64* %2513
  %2669 = add i64 %2667, %2668
  store i64 %2669, i64* %2420
  %2670 = load i64, i64* %2421
  %2671 = load i64, i64* %2514
  %2672 = add i64 %2670, %2671
  store i64 %2672, i64* %2421
  %2673 = load %nyx_string*, %nyx_string** %2419
  %2674 = load %nyx_string*, %nyx_string** %2482
  %2675 = call %nyx_string* @nyx_string_concat(%nyx_string* %2673, %nyx_string* %2674)
  %2676 = load %nyx_string*, %nyx_string** %2508
  %2677 = call %nyx_string* @nyx_string_concat(%nyx_string* %2675, %nyx_string* %2676)
  %2678 = load %nyx_string*, %nyx_string** %2455
  %2679 = call %nyx_string* @nyx_string_concat(%nyx_string* %2677, %nyx_string* %2678)
  %2680 = load %nyx_string*, %nyx_string** %2519
  %2681 = call %nyx_string* @nyx_string_concat(%nyx_string* %2679, %nyx_string* %2680)
  %2682 = load %nyx_string*, %nyx_string** %2521
  %2683 = call %nyx_string* @nyx_string_concat(%nyx_string* %2681, %nyx_string* %2682)
  %2684 = load %nyx_string*, %nyx_string** %2485
  %2685 = call %nyx_string* @nyx_string_concat(%nyx_string* %2683, %nyx_string* %2684)
  %2686 = load i64, i64* %2514
  %2687 = call %nyx_string* @nyx_string_from_int(i64 %2686)
  %2688 = call %nyx_string* @nyx_string_concat(%nyx_string* %2685, %nyx_string* %2687)
  %2689 = load %nyx_string*, %nyx_string** %2488
  %2690 = call %nyx_string* @nyx_string_concat(%nyx_string* %2688, %nyx_string* %2689)
  %2691 = load i64, i64* %2513
  %2692 = call %nyx_string* @nyx_string_from_int(i64 %2691)
  %2693 = call %nyx_string* @nyx_string_concat(%nyx_string* %2690, %nyx_string* %2692)
  %2694 = load %nyx_string*, %nyx_string** %2491
  %2695 = call %nyx_string* @nyx_string_concat(%nyx_string* %2693, %nyx_string* %2694)
  store %nyx_string* %2695, %nyx_string** %2419
  %2696 = load i64, i64* %2523
  store i64 %2696, i64* %2422
  br label %while_cond464
while_end466:
  %2697 = load { i64, i8* }*, { i64, i8* }** %1965
  %2698 = call i64 @nyx_array_length({ i64, i8* }* %2697)
  %2699 = icmp sgt i64 %2698, 0
  br i1 %2699, label %then490, label %else491
then490:
  %2700 = getelementptr [70 x i8], [70 x i8]* @.str254, i32 0, i32 0
  %2701 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str254.c, i8* %2700, i64 69)
  %2702 = call i8* @nyx_string_to_cstr(%nyx_string* %2701)
  call void @nyx_print_string(i8* %2702)
  %2703 = alloca i64
  store i64 0, i64* %2703
  %2704 = getelementptr [5 x i8], [5 x i8]* @.str255, i32 0, i32 0
  %2705 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str255.c, i8* %2704, i64 4)
  %2706 = alloca %nyx_string*
  store %nyx_string* %2705, %nyx_string** %2706
  %2707 = call i8* @llvm.stacksave()
  br label %while_cond493
while_cond493:
  %2708 = load i64, i64* %2703
  %2709 = load { i64, i8* }*, { i64, i8* }** %1965
  %2710 = call i64 @nyx_array_length({ i64, i8* }* %2709)
  %2711 = icmp slt i64 %2708, %2710
  br i1 %2711, label %while_body494, label %while_end495
while_body494:
  call void @llvm.stackrestore(i8* %2707)
  %2712 = load { i64, i8* }*, { i64, i8* }** %1965
  %2713 = load i64, i64* %2703
  %2714 = call i64 @nyx_array_get_checked({ i64, i8* }* %2712, i64 %2713, i64 2)
  %2715 = inttoptr i64 %2714 to %nyx_string*
  %2716 = alloca %nyx_string*
  store %nyx_string* %2715, %nyx_string** %2716
  %2717 = load %nyx_string*, %nyx_string** %2706
  %2718 = load %nyx_string*, %nyx_string** %2716
  %2719 = call %nyx_string* @nyx_string_concat(%nyx_string* %2717, %nyx_string* %2718)
  %2720 = call i8* @nyx_string_to_cstr(%nyx_string* %2719)
  call void @nyx_print_string(i8* %2720)
  %2721 = load i64, i64* %2703
  %2722 = add i64 %2721, 1
  store i64 %2722, i64* %2703
  br label %while_cond493
while_end495:
  br label %merge492
else491:
  br label %merge492
merge492:
  %2723 = getelementptr [10 x i8], [10 x i8]* @.str256, i32 0, i32 0
  %2724 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str256.c, i8* %2723, i64 9)
  %2725 = load i64, i64* %2420
  %2726 = call %nyx_string* @nyx_string_from_int(i64 %2725)
  %2727 = call %nyx_string* @nyx_string_concat(%nyx_string* %2724, %nyx_string* %2726)
  %2728 = getelementptr [2 x i8], [2 x i8]* @.str257, i32 0, i32 0
  %2729 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str257.c, i8* %2728, i64 1)
  %2730 = call %nyx_string* @nyx_string_concat(%nyx_string* %2727, %nyx_string* %2729)
  %2731 = load i64, i64* %2421
  %2732 = call %nyx_string* @nyx_string_from_int(i64 %2731)
  %2733 = call %nyx_string* @nyx_string_concat(%nyx_string* %2730, %nyx_string* %2732)
  %2734 = getelementptr [20 x i8], [20 x i8]* @.str258, i32 0, i32 0
  %2735 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str258.c, i8* %2734, i64 19)
  %2736 = call %nyx_string* @nyx_string_concat(%nyx_string* %2733, %nyx_string* %2735)
  %2737 = call i8* @nyx_string_to_cstr(%nyx_string* %2736)
  call void @nyx_print_string(i8* %2737)
  %2738 = load i1, i1* %want_lcov.ptr
  br i1 %2738, label %then496, label %else497
then496:
  %2739 = getelementptr [11 x i8], [11 x i8]* @.str259, i32 0, i32 0
  %2740 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str259.c, i8* %2739, i64 10)
  %2741 = load %nyx_string*, %nyx_string** %1951
  %2742 = call %nyx_string* @nyx_string_concat(%nyx_string* %2740, %nyx_string* %2741)
  %2743 = getelementptr [9 x i8], [9 x i8]* @.str260, i32 0, i32 0
  %2744 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str260.c, i8* %2743, i64 8)
  %2745 = call %nyx_string* @nyx_string_concat(%nyx_string* %2742, %nyx_string* %2744)
  %2746 = call i8* @nyx_string_to_cstr(%nyx_string* %2745)
  %2747 = call i64 @nyx_exec_code(i8* %2746)
  %2748 = load %nyx_string*, %nyx_string** %1951
  %2749 = getelementptr [22 x i8], [22 x i8]* @.str261, i32 0, i32 0
  %2750 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str261.c, i8* %2749, i64 21)
  %2751 = call %nyx_string* @nyx_string_concat(%nyx_string* %2748, %nyx_string* %2750)
  %2752 = load %nyx_string*, %nyx_string** %2419
  %2753 = call i8* @nyx_string_to_cstr(%nyx_string* %2751)
  %2754 = call i1 @nyx_write_file_safe(i8* %2753, %nyx_string* %2752)
  %2755 = getelementptr [29 x i8], [29 x i8]* @.str262, i32 0, i32 0
  %2756 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str262.c, i8* %2755, i64 28)
  %2757 = call i8* @nyx_string_to_cstr(%nyx_string* %2756)
  call void @nyx_print_string(i8* %2757)
  br label %merge498
else497:
  br label %merge498
merge498:
  ret i64 0
}

define internal i64 @print_valid_options(
) {
  %2758 = getelementptr [115 x i8], [115 x i8]* @.str263, i32 0, i32 0
  %2759 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str263.c, i8* %2758, i64 114)
  %2760 = call i8* @nyx_string_to_cstr(%nyx_string* %2759)
  call void @nyx_print_string(i8* %2760)
  ret i64 0
}

define i64 @main(
i32 %argc, i8** %argv) {
  call void @nyx_set_args(i32 %argc, i8** %argv)
  %2761 = getelementptr [24 x i8], [24 x i8]* @.str264, i32 0, i32 0
  %2762 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str264.c, i8* %2761, i64 23)
  %2763 = call i8* @nyx_string_to_cstr(%nyx_string* %2762)
  call void @nyx_print_string(i8* %2763)
  %2764 = call %TestConfig @load_test_config()
  %2765 = alloca %TestConfig
  store %TestConfig %2764, %TestConfig* %2765
  %2766 = call { i64, i8* }* @nyx_get_args()
  %2767 = alloca { i64, i8* }*
  store { i64, i8* }* %2766, { i64, i8* }** %2767
  %2768 = getelementptr [1 x i8], [1 x i8]* @.str265, i32 0, i32 0
  %2769 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str265.c, i8* %2768, i64 0)
  %2770 = alloca %nyx_string*
  store %nyx_string* %2769, %nyx_string** %2770
  %2771 = alloca i64
  store i64 1, i64* %2771
  %2772 = getelementptr [9 x i8], [9 x i8]* @.str266, i32 0, i32 0
  %2773 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str266.c, i8* %2772, i64 8)
  %2774 = alloca %nyx_string*
  store %nyx_string* %2773, %nyx_string** %2774
  %2775 = getelementptr [10 x i8], [10 x i8]* @.str267, i32 0, i32 0
  %2776 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str267.c, i8* %2775, i64 9)
  %2777 = alloca %nyx_string*
  store %nyx_string* %2776, %nyx_string** %2777
  %2778 = getelementptr [3 x i8], [3 x i8]* @.str268, i32 0, i32 0
  %2779 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str268.c, i8* %2778, i64 2)
  %2780 = alloca %nyx_string*
  store %nyx_string* %2779, %nyx_string** %2780
  %2781 = getelementptr [10 x i8], [10 x i8]* @.str269, i32 0, i32 0
  %2782 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str269.c, i8* %2781, i64 9)
  %2783 = alloca %nyx_string*
  store %nyx_string* %2782, %nyx_string** %2783
  %2784 = getelementptr [10 x i8], [10 x i8]* @.str270, i32 0, i32 0
  %2785 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str270.c, i8* %2784, i64 9)
  %2786 = alloca %nyx_string*
  store %nyx_string* %2785, %nyx_string** %2786
  %2787 = getelementptr [11 x i8], [11 x i8]* @.str271, i32 0, i32 0
  %2788 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str271.c, i8* %2787, i64 10)
  %2789 = alloca %nyx_string*
  store %nyx_string* %2788, %nyx_string** %2789
  %2790 = getelementptr [16 x i8], [16 x i8]* @.str272, i32 0, i32 0
  %2791 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str272.c, i8* %2790, i64 15)
  %2792 = alloca %nyx_string*
  store %nyx_string* %2791, %nyx_string** %2792
  %2793 = getelementptr [8 x i8], [8 x i8]* @.str273, i32 0, i32 0
  %2794 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str273.c, i8* %2793, i64 7)
  %2795 = alloca %nyx_string*
  store %nyx_string* %2794, %nyx_string** %2795
  %2796 = getelementptr [12 x i8], [12 x i8]* @.str274, i32 0, i32 0
  %2797 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str274.c, i8* %2796, i64 11)
  %2798 = alloca %nyx_string*
  store %nyx_string* %2797, %nyx_string** %2798
  %2799 = getelementptr [24 x i8], [24 x i8]* @.str275, i32 0, i32 0
  %2800 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str275.c, i8* %2799, i64 23)
  %2801 = alloca %nyx_string*
  store %nyx_string* %2800, %nyx_string** %2801
  %2802 = getelementptr [106 x i8], [106 x i8]* @.str276, i32 0, i32 0
  %2803 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str276.c, i8* %2802, i64 105)
  %2804 = alloca %nyx_string*
  store %nyx_string* %2803, %nyx_string** %2804
  %2805 = getelementptr [9 x i8], [9 x i8]* @.str277, i32 0, i32 0
  %2806 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str277.c, i8* %2805, i64 8)
  %2807 = alloca %nyx_string*
  store %nyx_string* %2806, %nyx_string** %2807
  %2808 = getelementptr [10 x i8], [10 x i8]* @.str278, i32 0, i32 0
  %2809 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str278.c, i8* %2808, i64 9)
  %2810 = alloca %nyx_string*
  store %nyx_string* %2809, %nyx_string** %2810
  %2811 = getelementptr [2 x i8], [2 x i8]* @.str279, i32 0, i32 0
  %2812 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str279.c, i8* %2811, i64 1)
  %2813 = alloca %nyx_string*
  store %nyx_string* %2812, %nyx_string** %2813
  %2814 = getelementptr [4 x i8], [4 x i8]* @.str280, i32 0, i32 0
  %2815 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str280.c, i8* %2814, i64 3)
  %2816 = alloca %nyx_string*
  store %nyx_string* %2815, %nyx_string** %2816
  %2817 = getelementptr [2 x i8], [2 x i8]* @.str281, i32 0, i32 0
  %2818 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str281.c, i8* %2817, i64 1)
  %2819 = alloca %nyx_string*
  store %nyx_string* %2818, %nyx_string** %2819
  %2820 = call i8* @llvm.stacksave()
  br label %while_cond499
while_cond499:
  %2821 = load i64, i64* %2771
  %2822 = load { i64, i8* }*, { i64, i8* }** %2767
  %2823 = call i64 @nyx_array_length({ i64, i8* }* %2822)
  %2824 = icmp slt i64 %2821, %2823
  br i1 %2824, label %while_body500, label %while_end501
while_body500:
  call void @llvm.stackrestore(i8* %2820)
  %2825 = load { i64, i8* }*, { i64, i8* }** %2767
  %2826 = load i64, i64* %2771
  %2827 = call i64 @nyx_array_get_checked({ i64, i8* }* %2825, i64 %2826, i64 2)
  %2828 = inttoptr i64 %2827 to %nyx_string*
  %2829 = alloca %nyx_string*
  store %nyx_string* %2828, %nyx_string** %2829
  %2830 = alloca i1
  store i1 false, i1* %2830
  %2831 = load %nyx_string*, %nyx_string** %2829
  %2832 = load %nyx_string*, %nyx_string** %2774
  %2833 = call i1 @nyx_string_equals(%nyx_string* %2831, %nyx_string* %2832)
  br i1 %2833, label %sc_and_rhs502, label %sc_and_end503
sc_and_rhs502:
  %2834 = load i64, i64* %2771
  %2835 = add i64 %2834, 1
  %2836 = load { i64, i8* }*, { i64, i8* }** %2767
  %2837 = call i64 @nyx_array_length({ i64, i8* }* %2836)
  %2838 = icmp slt i64 %2835, %2837
  store i1 %2838, i1* %2830
  br label %sc_and_end503
sc_and_end503:
  %2839 = load i1, i1* %2830
  br i1 %2839, label %then504, label %else505
then504:
  %2840 = load i64, i64* %2771
  %2841 = add i64 %2840, 1
  store i64 %2841, i64* %2771
  %2842 = load { i64, i8* }*, { i64, i8* }** %2767
  %2843 = load i64, i64* %2771
  %2844 = call i64 @nyx_array_get_checked({ i64, i8* }* %2842, i64 %2843, i64 2)
  %2845 = inttoptr i64 %2844 to %nyx_string*
  %2846 = alloca %nyx_string*
  store %nyx_string* %2845, %nyx_string** %2846
  %2847 = load %nyx_string*, %nyx_string** %2846
  %2848 = getelementptr %TestConfig, %TestConfig* %2765, i32 0, i32 2
  store %nyx_string* %2847, %nyx_string** %2848
  br label %merge506
else505:
  %2849 = alloca i1
  store i1 true, i1* %2849
  %2850 = load %nyx_string*, %nyx_string** %2829
  %2851 = load %nyx_string*, %nyx_string** %2777
  %2852 = call i1 @nyx_string_equals(%nyx_string* %2850, %nyx_string* %2851)
  br i1 %2852, label %sc_or_end508, label %sc_or_rhs507
sc_or_rhs507:
  %2853 = load %nyx_string*, %nyx_string** %2829
  %2854 = load %nyx_string*, %nyx_string** %2780
  %2855 = call i1 @nyx_string_equals(%nyx_string* %2853, %nyx_string* %2854)
  store i1 %2855, i1* %2849
  br label %sc_or_end508
sc_or_end508:
  %2856 = load i1, i1* %2849
  br i1 %2856, label %then509, label %else510
then509:
  %2857 = getelementptr %TestConfig, %TestConfig* %2765, i32 0, i32 3
  store i1 1, i1* %2857
  br label %merge511
else510:
  %2858 = alloca i1
  store i1 false, i1* %2858
  %2859 = load %nyx_string*, %nyx_string** %2829
  %2860 = load %nyx_string*, %nyx_string** %2783
  %2861 = call i1 @nyx_string_equals(%nyx_string* %2859, %nyx_string* %2860)
  br i1 %2861, label %sc_and_rhs512, label %sc_and_end513
sc_and_rhs512:
  %2862 = load i64, i64* %2771
  %2863 = add i64 %2862, 1
  %2864 = load { i64, i8* }*, { i64, i8* }** %2767
  %2865 = call i64 @nyx_array_length({ i64, i8* }* %2864)
  %2866 = icmp slt i64 %2863, %2865
  store i1 %2866, i1* %2858
  br label %sc_and_end513
sc_and_end513:
  %2867 = load i1, i1* %2858
  br i1 %2867, label %then514, label %else515
then514:
  %2868 = load i64, i64* %2771
  %2869 = add i64 %2868, 1
  store i64 %2869, i64* %2771
  %2870 = load { i64, i8* }*, { i64, i8* }** %2767
  %2871 = load i64, i64* %2771
  %2872 = call i64 @nyx_array_get_checked({ i64, i8* }* %2870, i64 %2871, i64 2)
  %2873 = inttoptr i64 %2872 to %nyx_string*
  %2874 = alloca %nyx_string*
  store %nyx_string* %2873, %nyx_string** %2874
  %2875 = load %nyx_string*, %nyx_string** %2874
  %2876 = call i64 @nyx_string_to_int(%nyx_string* %2875)
  %2877 = getelementptr %TestConfig, %TestConfig* %2765, i32 0, i32 1
  store i64 %2876, i64* %2877
  br label %merge516
else515:
  %2878 = load %nyx_string*, %nyx_string** %2829
  %2879 = load %nyx_string*, %nyx_string** %2786
  %2880 = call i1 @nyx_string_equals(%nyx_string* %2878, %nyx_string* %2879)
  br i1 %2880, label %then517, label %else518
then517:
  %2881 = getelementptr %TestConfig, %TestConfig* %2765, i32 0, i32 7
  store i1 1, i1* %2881
  br label %merge519
else518:
  %2882 = load %nyx_string*, %nyx_string** %2829
  %2883 = load %nyx_string*, %nyx_string** %2789
  %2884 = call i1 @nyx_string_equals(%nyx_string* %2882, %nyx_string* %2883)
  br i1 %2884, label %then520, label %else521
then520:
  %2885 = getelementptr %TestConfig, %TestConfig* %2765, i32 0, i32 5
  store i1 1, i1* %2885
  br label %merge522
else521:
  %2886 = load %nyx_string*, %nyx_string** %2829
  %2887 = load %nyx_string*, %nyx_string** %2792
  %2888 = call i1 @nyx_string_equals(%nyx_string* %2886, %nyx_string* %2887)
  br i1 %2888, label %then523, label %else524
then523:
  %2889 = getelementptr %TestConfig, %TestConfig* %2765, i32 0, i32 5
  store i1 1, i1* %2889
  %2890 = getelementptr %TestConfig, %TestConfig* %2765, i32 0, i32 6
  store i1 1, i1* %2890
  br label %merge525
else524:
  %2891 = alloca i1
  store i1 true, i1* %2891
  %2892 = load %nyx_string*, %nyx_string** %2829
  %2893 = load %nyx_string*, %nyx_string** %2795
  %2894 = call i1 @nyx_string_equals(%nyx_string* %2892, %nyx_string* %2893)
  br i1 %2894, label %sc_or_end527, label %sc_or_rhs526
sc_or_rhs526:
  %2895 = load %nyx_string*, %nyx_string** %2829
  %2896 = load %nyx_string*, %nyx_string** %2798
  %2897 = call i1 @nyx_string_starts_with(%nyx_string* %2895, %nyx_string* %2896)
  store i1 %2897, i1* %2891
  br label %sc_or_end527
sc_or_end527:
  %2898 = load i1, i1* %2891
  br i1 %2898, label %then528, label %else529
then528:
  %2899 = load %nyx_string*, %nyx_string** %2801
  %2900 = load %nyx_string*, %nyx_string** %2829
  %2901 = call %nyx_string* @nyx_string_concat(%nyx_string* %2899, %nyx_string* %2900)
  %2902 = call i8* @nyx_string_to_cstr(%nyx_string* %2901)
  call void @nyx_print_string(i8* %2902)
  %2903 = load %nyx_string*, %nyx_string** %2804
  %2904 = call i8* @nyx_string_to_cstr(%nyx_string* %2903)
  call void @nyx_print_string(i8* %2904)
  %2905 = call i64 @print_valid_options()
  ret i64 1
else529:
  %2906 = alloca i1
  store i1 true, i1* %2906
  %2907 = load %nyx_string*, %nyx_string** %2829
  %2908 = load %nyx_string*, %nyx_string** %2807
  %2909 = call i1 @nyx_string_equals(%nyx_string* %2907, %nyx_string* %2908)
  br i1 %2909, label %sc_or_end532, label %sc_or_rhs531
sc_or_rhs531:
  %2910 = load %nyx_string*, %nyx_string** %2829
  %2911 = load %nyx_string*, %nyx_string** %2810
  %2912 = call i1 @nyx_string_starts_with(%nyx_string* %2910, %nyx_string* %2911)
  store i1 %2912, i1* %2906
  br label %sc_or_end532
sc_or_end532:
  %2913 = load i1, i1* %2906
  br i1 %2913, label %then533, label %else534
then533:
  %2914 = load %nyx_string*, %nyx_string** %2829
  store %nyx_string* %2914, %nyx_string** %2770
  %2915 = alloca i1
  store i1 false, i1* %2915
  %2916 = load %nyx_string*, %nyx_string** %2829
  %2917 = load %nyx_string*, %nyx_string** %2807
  %2918 = call i1 @nyx_string_equals(%nyx_string* %2916, %nyx_string* %2917)
  br i1 %2918, label %sc_and_rhs536, label %sc_and_end537
sc_and_rhs536:
  %2919 = load i64, i64* %2771
  %2920 = add i64 %2919, 1
  %2921 = load { i64, i8* }*, { i64, i8* }** %2767
  %2922 = call i64 @nyx_array_length({ i64, i8* }* %2921)
  %2923 = icmp slt i64 %2920, %2922
  store i1 %2923, i1* %2915
  br label %sc_and_end537
sc_and_end537:
  %2924 = load i1, i1* %2915
  br i1 %2924, label %then538, label %else539
then538:
  %2925 = load i64, i64* %2771
  %2926 = add i64 %2925, 1
  store i64 %2926, i64* %2771
  %2927 = load { i64, i8* }*, { i64, i8* }** %2767
  %2928 = load i64, i64* %2771
  %2929 = call i64 @nyx_array_get_checked({ i64, i8* }* %2927, i64 %2928, i64 2)
  %2930 = inttoptr i64 %2929 to %nyx_string*
  %2931 = alloca %nyx_string*
  store %nyx_string* %2930, %nyx_string** %2931
  %2932 = load %nyx_string*, %nyx_string** %2829
  %2933 = load %nyx_string*, %nyx_string** %2813
  %2934 = call %nyx_string* @nyx_string_concat(%nyx_string* %2932, %nyx_string* %2933)
  %2935 = load %nyx_string*, %nyx_string** %2931
  %2936 = call %nyx_string* @nyx_string_concat(%nyx_string* %2934, %nyx_string* %2935)
  store %nyx_string* %2936, %nyx_string** %2770
  br label %merge540
else539:
  br label %merge540
merge540:
  br label %merge535
else534:
  %2937 = alloca i1
  store i1 true, i1* %2937
  %2938 = load %nyx_string*, %nyx_string** %2829
  %2939 = load %nyx_string*, %nyx_string** %2774
  %2940 = call i1 @nyx_string_equals(%nyx_string* %2938, %nyx_string* %2939)
  br i1 %2940, label %sc_or_end542, label %sc_or_rhs541
sc_or_rhs541:
  %2941 = load %nyx_string*, %nyx_string** %2829
  %2942 = load %nyx_string*, %nyx_string** %2783
  %2943 = call i1 @nyx_string_equals(%nyx_string* %2941, %nyx_string* %2942)
  store i1 %2943, i1* %2937
  br label %sc_or_end542
sc_or_end542:
  %2944 = load i1, i1* %2937
  br i1 %2944, label %then543, label %else544
then543:
  br label %merge545
else544:
  %2945 = load %nyx_string*, %nyx_string** %2829
  %2946 = load %nyx_string*, %nyx_string** %2816
  %2947 = call i1 @nyx_string_ends_with(%nyx_string* %2945, %nyx_string* %2946)
  br i1 %2947, label %then546, label %else547
then546:
  %2948 = load %nyx_string*, %nyx_string** %2829
  %2949 = getelementptr %TestConfig, %TestConfig* %2765, i32 0, i32 4
  store %nyx_string* %2948, %nyx_string** %2949
  br label %merge548
else547:
  %2950 = load %nyx_string*, %nyx_string** %2829
  %2951 = load %nyx_string*, %nyx_string** %2819
  %2952 = call i1 @nyx_string_starts_with(%nyx_string* %2950, %nyx_string* %2951)
  br i1 %2952, label %then549, label %else550
then549:
  %2953 = load %nyx_string*, %nyx_string** %2801
  %2954 = load %nyx_string*, %nyx_string** %2829
  %2955 = call %nyx_string* @nyx_string_concat(%nyx_string* %2953, %nyx_string* %2954)
  %2956 = call i8* @nyx_string_to_cstr(%nyx_string* %2955)
  call void @nyx_print_string(i8* %2956)
  %2957 = call i64 @print_valid_options()
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
  %2958 = load i64, i64* %2771
  %2959 = add i64 %2958, 1
  store i64 %2959, i64* %2771
  br label %while_cond499
while_end501:
  %2960 = load %nyx_string*, %nyx_string** %2770
  %2961 = getelementptr [1 x i8], [1 x i8]* @.str282, i32 0, i32 0
  %2962 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str282.c, i8* %2961, i64 0)
  %2963 = call i1 @nyx_string_equals(%nyx_string* %2960, %nyx_string* %2962)
  %2964 = xor i1 %2963, true
  br i1 %2964, label %then552, label %else553
then552:
  %2965 = getelementptr %TestConfig, %TestConfig* %2765, i32 0, i32 5
  %2966 = load i1, i1* %2965
  br i1 %2966, label %then555, label %else556
then555:
  %2967 = getelementptr [47 x i8], [47 x i8]* @.str283, i32 0, i32 0
  %2968 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str283.c, i8* %2967, i64 46)
  %2969 = load %nyx_string*, %nyx_string** %2770
  %2970 = call %nyx_string* @nyx_string_concat(%nyx_string* %2968, %nyx_string* %2969)
  %2971 = getelementptr [58 x i8], [58 x i8]* @.str284, i32 0, i32 0
  %2972 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str284.c, i8* %2971, i64 57)
  %2973 = call %nyx_string* @nyx_string_concat(%nyx_string* %2970, %nyx_string* %2972)
  %2974 = call i8* @nyx_string_to_cstr(%nyx_string* %2973)
  call void @nyx_print_string(i8* %2974)
  br label %merge557
else556:
  %2975 = getelementptr [24 x i8], [24 x i8]* @.str285, i32 0, i32 0
  %2976 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str285.c, i8* %2975, i64 23)
  %2977 = load %nyx_string*, %nyx_string** %2770
  %2978 = call %nyx_string* @nyx_string_concat(%nyx_string* %2976, %nyx_string* %2977)
  %2979 = call i8* @nyx_string_to_cstr(%nyx_string* %2978)
  call void @nyx_print_string(i8* %2979)
  br label %merge557
merge557:
  %2980 = call i64 @print_valid_options()
  ret i64 1
else553:
  br label %merge554
merge554:
  %2981 = getelementptr [1 x i8], [1 x i8]* @.str286, i32 0, i32 0
  %2982 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str286.c, i8* %2981, i64 0)
  %2983 = alloca %nyx_string*
  store %nyx_string* %2982, %nyx_string** %2983
  %2984 = getelementptr [1 x i8], [1 x i8]* @.str287, i32 0, i32 0
  %2985 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str287.c, i8* %2984, i64 0)
  %2986 = alloca %nyx_string*
  store %nyx_string* %2985, %nyx_string** %2986
  %2987 = getelementptr %TestConfig, %TestConfig* %2765, i32 0, i32 5
  %2988 = load i1, i1* %2987
  br i1 %2988, label %then558, label %else559
then558:
  %2989 = call %nyx_string* @cov_find_profdata()
  store %nyx_string* %2989, %nyx_string** %2983
  %2990 = load %nyx_string*, %nyx_string** %2983
  %2991 = getelementptr [1 x i8], [1 x i8]* @.str288, i32 0, i32 0
  %2992 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str288.c, i8* %2991, i64 0)
  %2993 = call i1 @nyx_string_equals(%nyx_string* %2990, %nyx_string* %2992)
  br i1 %2993, label %then561, label %else562
then561:
  %2994 = call %nyx_string* @cov_clang_major()
  %2995 = alloca %nyx_string*
  store %nyx_string* %2994, %nyx_string** %2995
  %2996 = getelementptr [5 x i8], [5 x i8]* @.str289, i32 0, i32 0
  %2997 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str289.c, i8* %2996, i64 4)
  %2998 = alloca %nyx_string*
  store %nyx_string* %2997, %nyx_string** %2998
  %2999 = load %nyx_string*, %nyx_string** %2995
  %3000 = getelementptr [1 x i8], [1 x i8]* @.str290, i32 0, i32 0
  %3001 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str290.c, i8* %3000, i64 0)
  %3002 = call i1 @nyx_string_equals(%nyx_string* %2999, %nyx_string* %3001)
  %3003 = xor i1 %3002, true
  br i1 %3003, label %then564, label %else565
then564:
  %3004 = getelementptr [6 x i8], [6 x i8]* @.str291, i32 0, i32 0
  %3005 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str291.c, i8* %3004, i64 5)
  %3006 = load %nyx_string*, %nyx_string** %2995
  %3007 = call %nyx_string* @nyx_string_concat(%nyx_string* %3005, %nyx_string* %3006)
  store %nyx_string* %3007, %nyx_string** %2998
  br label %merge566
else565:
  br label %merge566
merge566:
  %3008 = getelementptr [101 x i8], [101 x i8]* @.str292, i32 0, i32 0
  %3009 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str292.c, i8* %3008, i64 100)
  %3010 = call i8* @nyx_string_to_cstr(%nyx_string* %3009)
  call void @nyx_print_string(i8* %3010)
  %3011 = getelementptr [35 x i8], [35 x i8]* @.str293, i32 0, i32 0
  %3012 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str293.c, i8* %3011, i64 34)
  %3013 = load %nyx_string*, %nyx_string** %2998
  %3014 = call %nyx_string* @nyx_string_concat(%nyx_string* %3012, %nyx_string* %3013)
  %3015 = call i8* @nyx_string_to_cstr(%nyx_string* %3014)
  call void @nyx_print_string(i8* %3015)
  %3016 = getelementptr [82 x i8], [82 x i8]* @.str294, i32 0, i32 0
  %3017 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str294.c, i8* %3016, i64 81)
  %3018 = call i8* @nyx_string_to_cstr(%nyx_string* %3017)
  call void @nyx_print_string(i8* %3018)
  %3019 = getelementptr [82 x i8], [82 x i8]* @.str295, i32 0, i32 0
  %3020 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str295.c, i8* %3019, i64 81)
  %3021 = call i8* @nyx_string_to_cstr(%nyx_string* %3020)
  call void @nyx_print_string(i8* %3021)
  ret i64 1
else562:
  br label %merge563
merge563:
  %3022 = getelementptr [30 x i8], [30 x i8]* @.str296, i32 0, i32 0
  %3023 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str296.c, i8* %3022, i64 29)
  %3024 = call i8* @nyx_string_to_cstr(%nyx_string* %3023)
  %3025 = call %nyx_string* @nyx_exec(i8* %3024)
  %3026 = call %nyx_string* @nyx_string_trim(%nyx_string* %3025)
  store %nyx_string* %3026, %nyx_string** %2986
  %3027 = load %nyx_string*, %nyx_string** %2986
  %3028 = getelementptr [1 x i8], [1 x i8]* @.str297, i32 0, i32 0
  %3029 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str297.c, i8* %3028, i64 0)
  %3030 = call i1 @nyx_string_equals(%nyx_string* %3027, %nyx_string* %3029)
  br i1 %3030, label %then567, label %else568
then567:
  %3031 = getelementptr [55 x i8], [55 x i8]* @.str298, i32 0, i32 0
  %3032 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str298.c, i8* %3031, i64 54)
  %3033 = call i8* @nyx_string_to_cstr(%nyx_string* %3032)
  call void @nyx_print_string(i8* %3033)
  ret i64 1
else568:
  br label %merge569
merge569:
  br label %merge560
else559:
  br label %merge560
merge560:
  %3034 = call { i64, i8* }* @nyx_array_new_ptr()
  %3035 = alloca { i64, i8* }*
  store { i64, i8* }* %3034, { i64, i8* }** %3035
  %3036 = getelementptr %TestConfig, %TestConfig* %2765, i32 0, i32 4
  %3037 = load %nyx_string*, %nyx_string** %3036
  %3038 = getelementptr [1 x i8], [1 x i8]* @.str299, i32 0, i32 0
  %3039 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str299.c, i8* %3038, i64 0)
  %3040 = call i1 @nyx_string_equals(%nyx_string* %3037, %nyx_string* %3039)
  %3041 = xor i1 %3040, true
  br i1 %3041, label %then570, label %else571
then570:
  %3042 = getelementptr %TestConfig, %TestConfig* %2765, i32 0, i32 4
  %3043 = load %nyx_string*, %nyx_string** %3042
  %3044 = call i8* @nyx_string_to_cstr(%nyx_string* %3043)
  %3045 = call i1 @nyx_file_exists(i8* %3044)
  %3046 = xor i1 %3045, true
  br i1 %3046, label %then573, label %else574
then573:
  %3047 = getelementptr [24 x i8], [24 x i8]* @.str300, i32 0, i32 0
  %3048 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str300.c, i8* %3047, i64 23)
  %3049 = getelementptr %TestConfig, %TestConfig* %2765, i32 0, i32 4
  %3050 = load %nyx_string*, %nyx_string** %3049
  %3051 = call %nyx_string* @nyx_string_concat(%nyx_string* %3048, %nyx_string* %3050)
  %3052 = call i8* @nyx_string_to_cstr(%nyx_string* %3051)
  call void @nyx_print_string(i8* %3052)
  ret i64 1
else574:
  br label %merge575
merge575:
  %3053 = load { i64, i8* }*, { i64, i8* }** %3035
  %3054 = getelementptr %TestConfig, %TestConfig* %2765, i32 0, i32 4
  %3055 = load %nyx_string*, %nyx_string** %3054
  %3056 = ptrtoint %nyx_string* %3055 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %3053, i64 %3056, i64 2)
  br label %merge572
else571:
  %3057 = load %TestConfig, %TestConfig* %2765
  %3058 = call { i64, i8* }* @discover_tests(%TestConfig %3057)
  store { i64, i8* }* %3058, { i64, i8* }** %3035
  br label %merge572
merge572:
  %3059 = load { i64, i8* }*, { i64, i8* }** %3035
  %3060 = call i64 @nyx_array_length({ i64, i8* }* %3059)
  %3061 = icmp eq i64 %3060, 0
  br i1 %3061, label %then576, label %else577
then576:
  %3062 = getelementptr [23 x i8], [23 x i8]* @.str301, i32 0, i32 0
  %3063 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str301.c, i8* %3062, i64 22)
  %3064 = call i8* @nyx_string_to_cstr(%nyx_string* %3063)
  call void @nyx_print_string(i8* %3064)
  %3065 = getelementptr %TestConfig, %TestConfig* %2765, i32 0, i32 2
  %3066 = load %nyx_string*, %nyx_string** %3065
  %3067 = getelementptr [1 x i8], [1 x i8]* @.str302, i32 0, i32 0
  %3068 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str302.c, i8* %3067, i64 0)
  %3069 = call i1 @nyx_string_equals(%nyx_string* %3066, %nyx_string* %3068)
  %3070 = xor i1 %3069, true
  br i1 %3070, label %then579, label %else580
then579:
  %3071 = getelementptr [12 x i8], [12 x i8]* @.str303, i32 0, i32 0
  %3072 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str303.c, i8* %3071, i64 11)
  %3073 = getelementptr %TestConfig, %TestConfig* %2765, i32 0, i32 2
  %3074 = load %nyx_string*, %nyx_string** %3073
  %3075 = call %nyx_string* @nyx_string_concat(%nyx_string* %3072, %nyx_string* %3074)
  %3076 = getelementptr [2 x i8], [2 x i8]* @.str304, i32 0, i32 0
  %3077 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str304.c, i8* %3076, i64 1)
  %3078 = call %nyx_string* @nyx_string_concat(%nyx_string* %3075, %nyx_string* %3077)
  %3079 = call i8* @nyx_string_to_cstr(%nyx_string* %3078)
  call void @nyx_print_string(i8* %3079)
  br label %merge581
else580:
  br label %merge581
merge581:
  %3080 = getelementptr [14 x i8], [14 x i8]* @.str305, i32 0, i32 0
  %3081 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str305.c, i8* %3080, i64 13)
  %3082 = getelementptr %TestConfig, %TestConfig* %2765, i32 0, i32 0
  %3083 = load %nyx_string*, %nyx_string** %3082
  %3084 = call %nyx_string* @nyx_string_concat(%nyx_string* %3081, %nyx_string* %3083)
  %3085 = getelementptr [2 x i8], [2 x i8]* @.str306, i32 0, i32 0
  %3086 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str306.c, i8* %3085, i64 1)
  %3087 = call %nyx_string* @nyx_string_concat(%nyx_string* %3084, %nyx_string* %3086)
  %3088 = call i8* @nyx_string_to_cstr(%nyx_string* %3087)
  call void @nyx_print_string(i8* %3088)
  ret i64 0
else577:
  br label %merge578
merge578:
  %3089 = getelementptr [9 x i8], [9 x i8]* @.str307, i32 0, i32 0
  %3090 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str307.c, i8* %3089, i64 8)
  %3091 = load { i64, i8* }*, { i64, i8* }** %3035
  %3092 = call i64 @nyx_array_length({ i64, i8* }* %3091)
  %3093 = call %nyx_string* @nyx_string_from_int(i64 %3092)
  %3094 = call %nyx_string* @nyx_string_concat(%nyx_string* %3090, %nyx_string* %3093)
  %3095 = getelementptr [14 x i8], [14 x i8]* @.str308, i32 0, i32 0
  %3096 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str308.c, i8* %3095, i64 13)
  %3097 = call %nyx_string* @nyx_string_concat(%nyx_string* %3094, %nyx_string* %3096)
  %3098 = call i8* @nyx_string_to_cstr(%nyx_string* %3097)
  call void @nyx_print_string(i8* %3098)
  %3099 = getelementptr %TestConfig, %TestConfig* %2765, i32 0, i32 2
  %3100 = load %nyx_string*, %nyx_string** %3099
  %3101 = getelementptr [1 x i8], [1 x i8]* @.str309, i32 0, i32 0
  %3102 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str309.c, i8* %3101, i64 0)
  %3103 = call i1 @nyx_string_equals(%nyx_string* %3100, %nyx_string* %3102)
  %3104 = xor i1 %3103, true
  br i1 %3104, label %then582, label %else583
then582:
  %3105 = getelementptr [12 x i8], [12 x i8]* @.str310, i32 0, i32 0
  %3106 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str310.c, i8* %3105, i64 11)
  %3107 = getelementptr %TestConfig, %TestConfig* %2765, i32 0, i32 2
  %3108 = load %nyx_string*, %nyx_string** %3107
  %3109 = call %nyx_string* @nyx_string_concat(%nyx_string* %3106, %nyx_string* %3108)
  %3110 = getelementptr [2 x i8], [2 x i8]* @.str311, i32 0, i32 0
  %3111 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str311.c, i8* %3110, i64 1)
  %3112 = call %nyx_string* @nyx_string_concat(%nyx_string* %3109, %nyx_string* %3111)
  %3113 = call i8* @nyx_string_to_cstr(%nyx_string* %3112)
  call void @nyx_print_string(i8* %3113)
  br label %merge584
else583:
  br label %merge584
merge584:
  %3114 = getelementptr [1 x i8], [1 x i8]* @.str312, i32 0, i32 0
  %3115 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str312.c, i8* %3114, i64 0)
  %3116 = call i8* @nyx_string_to_cstr(%nyx_string* %3115)
  call void @nyx_print_string(i8* %3116)
  %3117 = call { i64, i8* }* @nyx_array_new_ptr()
  %3118 = alloca { i64, i8* }*
  store { i64, i8* }* %3117, { i64, i8* }** %3118
  %3119 = call { i64, i8* }* @nyx_array_new_ptr()
  %3120 = alloca { i64, i8* }*
  store { i64, i8* }* %3119, { i64, i8* }** %3120
  %3121 = call { i64, i8* }* @nyx_array_new_ptr()
  %3122 = alloca { i64, i8* }*
  store { i64, i8* }* %3121, { i64, i8* }** %3122
  %3123 = alloca i64
  store i64 0, i64* %3123
  %3124 = alloca i64
  store i64 0, i64* %3124
  %3125 = alloca i64
  store i64 0, i64* %3125
  %3126 = call i8* @llvm.stacksave()
  br label %while_cond585
while_cond585:
  %3127 = load i64, i64* %3125
  %3128 = load { i64, i8* }*, { i64, i8* }** %3035
  %3129 = call i64 @nyx_array_length({ i64, i8* }* %3128)
  %3130 = icmp slt i64 %3127, %3129
  br i1 %3130, label %while_body586, label %while_end587
while_body586:
  call void @llvm.stackrestore(i8* %3126)
  %3131 = load { i64, i8* }*, { i64, i8* }** %3035
  %3132 = load i64, i64* %3125
  %3133 = call i64 @nyx_array_get_checked({ i64, i8* }* %3131, i64 %3132, i64 2)
  %3134 = inttoptr i64 %3133 to %nyx_string*
  %3135 = alloca %nyx_string*
  store %nyx_string* %3134, %nyx_string** %3135
  %3136 = load %nyx_string*, %nyx_string** %3135
  %3137 = call i1 @file_has_test_blocks(%nyx_string* %3136)
  %3138 = xor i1 %3137, true
  br i1 %3138, label %then588, label %else589
then588:
  %3139 = load i64, i64* %3125
  %3140 = add i64 %3139, 1
  store i64 %3140, i64* %3125
  br label %merge590
else589:
  %3141 = load %nyx_string*, %nyx_string** %3135
  %3142 = load %TestConfig, %TestConfig* %2765
  %3143 = load %nyx_string*, %nyx_string** %2986
  %3144 = load i64, i64* %3125
  %3145 = call %TestResult @compile_and_run(%nyx_string* %3141, %TestConfig %3142, %nyx_string* %3143, i64 %3144)
  %3146 = alloca %TestResult
  store %TestResult %3145, %TestResult* %3146
  %3147 = load { i64, i8* }*, { i64, i8* }** %3118
  %3148 = load %TestResult, %TestResult* %3146
  %3149 = getelementptr %TestResult, %TestResult* null, i32 1
  %3150 = ptrtoint %TestResult* %3149 to i64
  %3151 = call i8* @GC_malloc(i64 %3150)
  %3152 = bitcast i8* %3151 to %TestResult*
  store %TestResult %3148, %TestResult* %3152
  %3153 = ptrtoint %TestResult* %3152 to i64
  call void @nyx_array_push({ i64, i8* }* %3147, i64 %3153)
  %3154 = load { i64, i8* }*, { i64, i8* }** %3120
  %3155 = load %nyx_string*, %nyx_string** %3135
  %3156 = ptrtoint %nyx_string* %3155 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %3154, i64 %3156, i64 2)
  %3157 = load { i64, i8* }*, { i64, i8* }** %3122
  %3158 = load i64, i64* %3125
  %3159 = call %nyx_string* @nyx_string_from_int(i64 %3158)
  %3160 = ptrtoint %nyx_string* %3159 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %3157, i64 %3160, i64 2)
  %3161 = load i64, i64* %3123
  %3162 = getelementptr %TestResult, %TestResult* %3146, i32 0, i32 1
  %3163 = load i64, i64* %3162
  %3164 = add i64 %3161, %3163
  store i64 %3164, i64* %3123
  %3165 = load i64, i64* %3124
  %3166 = getelementptr %TestResult, %TestResult* %3146, i32 0, i32 2
  %3167 = load i64, i64* %3166
  %3168 = add i64 %3165, %3167
  store i64 %3168, i64* %3124
  %3169 = load %TestResult, %TestResult* %3146
  %3170 = getelementptr %TestConfig, %TestConfig* %2765, i32 0, i32 3
  %3171 = load i1, i1* %3170
  %3172 = call i64 @print_result(%TestResult %3169, i1 %3171)
  %3173 = load i64, i64* %3125
  %3174 = add i64 %3173, 1
  store i64 %3174, i64* %3125
  br label %merge590
merge590:
  br label %while_cond585
while_end587:
  %3175 = load { i64, i8* }*, { i64, i8* }** %3118
  %3176 = call i64 @nyx_array_length({ i64, i8* }* %3175)
  %3177 = icmp eq i64 %3176, 0
  br i1 %3177, label %then591, label %else592
then591:
  %3178 = getelementptr [35 x i8], [35 x i8]* @.str313, i32 0, i32 0
  %3179 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str313.c, i8* %3178, i64 34)
  %3180 = call i8* @nyx_string_to_cstr(%nyx_string* %3179)
  call void @nyx_print_string(i8* %3180)
  %3181 = load %nyx_string*, %nyx_string** %2986
  %3182 = getelementptr [1 x i8], [1 x i8]* @.str314, i32 0, i32 0
  %3183 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str314.c, i8* %3182, i64 0)
  %3184 = call i1 @nyx_string_equals(%nyx_string* %3181, %nyx_string* %3183)
  %3185 = xor i1 %3184, true
  br i1 %3185, label %then594, label %else595
then594:
  %3186 = getelementptr [8 x i8], [8 x i8]* @.str315, i32 0, i32 0
  %3187 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str315.c, i8* %3186, i64 7)
  %3188 = load %nyx_string*, %nyx_string** %2986
  %3189 = call %nyx_string* @nyx_string_concat(%nyx_string* %3187, %nyx_string* %3188)
  %3190 = call i8* @nyx_string_to_cstr(%nyx_string* %3189)
  %3191 = call %nyx_string* @nyx_exec(i8* %3190)
  br label %merge596
else595:
  br label %merge596
merge596:
  ret i64 0
else592:
  br label %merge593
merge593:
  %3192 = load { i64, i8* }*, { i64, i8* }** %3118
  %3193 = load i64, i64* %3123
  %3194 = load i64, i64* %3124
  %3195 = call i64 @print_summary({ i64, i8* }* %3192, i64 %3193, i64 %3194)
  %3196 = getelementptr %TestConfig, %TestConfig* %2765, i32 0, i32 5
  %3197 = load i1, i1* %3196
  br i1 %3197, label %then597, label %else598
then597:
  %3198 = load %nyx_string*, %nyx_string** %2986
  %3199 = load { i64, i8* }*, { i64, i8* }** %3120
  %3200 = load { i64, i8* }*, { i64, i8* }** %3122
  %3201 = load %nyx_string*, %nyx_string** %2983
  %3202 = getelementptr %TestConfig, %TestConfig* %2765, i32 0, i32 6
  %3203 = load i1, i1* %3202
  %3204 = call i64 @cov_report(%nyx_string* %3198, { i64, i8* }* %3199, { i64, i8* }* %3200, %nyx_string* %3201, i1 %3203)
  %3205 = getelementptr [8 x i8], [8 x i8]* @.str316, i32 0, i32 0
  %3206 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str316.c, i8* %3205, i64 7)
  %3207 = load %nyx_string*, %nyx_string** %2986
  %3208 = call %nyx_string* @nyx_string_concat(%nyx_string* %3206, %nyx_string* %3207)
  %3209 = call i8* @nyx_string_to_cstr(%nyx_string* %3208)
  %3210 = call %nyx_string* @nyx_exec(i8* %3209)
  br label %merge599
else598:
  br label %merge599
merge599:
  %3211 = alloca i64
  store i64 0, i64* %3211
  %3212 = alloca i64
  store i64 0, i64* %3212
  %3213 = call i8* @llvm.stacksave()
  br label %while_cond600
while_cond600:
  %3214 = load i64, i64* %3212
  %3215 = load { i64, i8* }*, { i64, i8* }** %3118
  %3216 = call i64 @nyx_array_length({ i64, i8* }* %3215)
  %3217 = icmp slt i64 %3214, %3216
  br i1 %3217, label %while_body601, label %while_end602
while_body601:
  call void @llvm.stackrestore(i8* %3213)
  %3218 = load { i64, i8* }*, { i64, i8* }** %3118
  %3219 = load i64, i64* %3212
  %3220 = call i64 @nyx_array_get({ i64, i8* }* %3218, i64 %3219)
  %3221 = inttoptr i64 %3220 to %TestResult*
  %3222 = load %TestResult, %TestResult* %3221
  %3223 = alloca %TestResult
  store %TestResult %3222, %TestResult* %3223
  %3224 = getelementptr %TestResult, %TestResult* %3223, i32 0, i32 4
  %3225 = load i1, i1* %3224
  %3226 = xor i1 %3225, true
  br i1 %3226, label %then603, label %else604
then603:
  %3227 = load i64, i64* %3211
  %3228 = add i64 %3227, 1
  store i64 %3228, i64* %3211
  br label %merge605
else604:
  br label %merge605
merge605:
  %3229 = load i64, i64* %3212
  %3230 = add i64 %3229, 1
  store i64 %3230, i64* %3212
  br label %while_cond600
while_end602:
  %3231 = alloca i1
  store i1 true, i1* %3231
  %3232 = load i64, i64* %3124
  %3233 = icmp sgt i64 %3232, 0
  br i1 %3233, label %sc_or_end607, label %sc_or_rhs606
sc_or_rhs606:
  %3234 = load i64, i64* %3211
  %3235 = icmp sgt i64 %3234, 0
  store i1 %3235, i1* %3231
  br label %sc_or_end607
sc_or_end607:
  %3236 = load i1, i1* %3231
  br i1 %3236, label %then608, label %else609
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
  %3237 = sub i64 0, 9223372036854775808
  store i64 %3237, i64* @INT_MIN
  ret void
}

@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @__nyx_init_globals, i8* null }]

attributes #0 = { returns_twice }

