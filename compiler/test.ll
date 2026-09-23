source_filename = "script.nx"
target triple = "x86_64-pc-linux-gnu"

%Error = type { i64, %nyx_string*, %nyx_string* }

%TestConfig = type { %nyx_string*, i64, %nyx_string*, i1, %nyx_string*, i1, i1, i1, %nyx_string*, %nyx_string* }

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
@.str21 = private unnamed_addr constant [1 x i8] c"\00"
@.str21.c = internal global %nyx_string* null
@.str22 = private unnamed_addr constant [1 x i8] c"\00"
@.str22.c = internal global %nyx_string* null
@.str23 = private unnamed_addr constant [9 x i8] c"nyx.toml\00"
@.str23.c = internal global %nyx_string* null
@.str24 = private unnamed_addr constant [9 x i8] c"nyx.toml\00"
@.str24.c = internal global %nyx_string* null
@.str25 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str25.c = internal global %nyx_string* null
@.str26 = private unnamed_addr constant [7 x i8] c"[test]\00"
@.str26.c = internal global %nyx_string* null
@.str27 = private unnamed_addr constant [2 x i8] c"[\00"
@.str27.c = internal global %nyx_string* null
@.str28 = private unnamed_addr constant [6 x i8] c"[lib]\00"
@.str28.c = internal global %nyx_string* null
@.str29 = private unnamed_addr constant [8 x i8] c"modules\00"
@.str29.c = internal global %nyx_string* null
@.str30 = private unnamed_addr constant [2 x i8] c"=\00"
@.str30.c = internal global %nyx_string* null
@.str31 = private unnamed_addr constant [1 x i8] c"\00"
@.str31.c = internal global %nyx_string* null
@.str32 = private unnamed_addr constant [2 x i8] c"]\00"
@.str32.c = internal global %nyx_string* null
@.str33 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str33.c = internal global %nyx_string* null
@.str34 = private unnamed_addr constant [2 x i8] c" \00"
@.str34.c = internal global %nyx_string* null
@.str35 = private unnamed_addr constant [4 x i8] c"dir\00"
@.str35.c = internal global %nyx_string* null
@.str36 = private unnamed_addr constant [8 x i8] c"timeout\00"
@.str36.c = internal global %nyx_string* null
@.str37 = private unnamed_addr constant [4 x i8] c".nx\00"
@.str37.c = internal global %nyx_string* null
@.str38 = private unnamed_addr constant [2 x i8] c"/\00"
@.str38.c = internal global %nyx_string* null
@.str39 = private unnamed_addr constant [1 x i8] c"\00"
@.str39.c = internal global %nyx_string* null
@.str40 = private unnamed_addr constant [4 x i8] c"src\00"
@.str40.c = internal global %nyx_string* null
@.str41 = private unnamed_addr constant [4 x i8] c"src\00"
@.str41.c = internal global %nyx_string* null
@.str42 = private unnamed_addr constant [9 x i8] c"_test.nx\00"
@.str42.c = internal global %nyx_string* null
@.str43 = private unnamed_addr constant [5 x i8] c"src/\00"
@.str43.c = internal global %nyx_string* null
@.str44 = private unnamed_addr constant [1 x i8] c"\00"
@.str44.c = internal global %nyx_string* null
@.str45 = private unnamed_addr constant [7 x i8] c"test \22\00"
@.str45.c = internal global %nyx_string* null
@.str46 = private unnamed_addr constant [3 x i8] c"./\00"
@.str46.c = internal global %nyx_string* null
@.str47 = private unnamed_addr constant [4 x i8] c".nx\00"
@.str47.c = internal global %nyx_string* null
@.str48 = private unnamed_addr constant [9 x i8] c"NYX_HOME\00"
@.str48.c = internal global %nyx_string* null
@.str49 = private unnamed_addr constant [1 x i8] c"\00"
@.str49.c = internal global %nyx_string* null
@.str50 = private unnamed_addr constant [24 x i8] c"ERROR: NYX_HOME not set\00"
@.str50.c = internal global %nyx_string* null
@.str51 = private unnamed_addr constant [4 x i8] c"PWD\00"
@.str51.c = internal global %nyx_string* null
@.str52 = private unnamed_addr constant [31 x i8] c"mktemp -d /tmp/nyx_test_XXXXXX\00"
@.str52.c = internal global %nyx_string* null
@.str53 = private unnamed_addr constant [9 x i8] c"/out.txt\00"
@.str53.c = internal global %nyx_string* null
@.str54 = private unnamed_addr constant [5 x i8] c"/bin\00"
@.str54.c = internal global %nyx_string* null
@.str55 = private unnamed_addr constant [1 x i8] c"\00"
@.str55.c = internal global %nyx_string* null
@.str56 = private unnamed_addr constant [5 x i8] c"-O2 \00"
@.str56.c = internal global %nyx_string* null
@.str57 = private unnamed_addr constant [62 x i8] c"runtime/runtime.c runtime/strings.c runtime/runtime-arrays.c \00"
@.str57.c = internal global %nyx_string* null
@.str58 = private unnamed_addr constant [54 x i8] c"runtime/maps.c runtime/file-io.c runtime/iterators.c \00"
@.str58.c = internal global %nyx_string* null
@.str59 = private unnamed_addr constant [48 x i8] c"runtime/net.c runtime/thread.c runtime/regex.c \00"
@.str59.c = internal global %nyx_string* null
@.str60 = private unnamed_addr constant [47 x i8] c"runtime/time.c runtime/crypto.c runtime/tls.c \00"
@.str60.c = internal global %nyx_string* null
@.str61 = private unnamed_addr constant [67 x i8] c"runtime/scheduler.c runtime/event_loop.c runtime/sqlite_adapter.c \00"
@.str61.c = internal global %nyx_string* null
@.str62 = private unnamed_addr constant [51 x i8] c"runtime/compress.c runtime/random.c runtime/url.c \00"
@.str62.c = internal global %nyx_string* null
@.str63 = private unnamed_addr constant [91 x i8] c"runtime/msgpack.c runtime/websocket.c runtime/persist.c runtime/http2.c runtime/process.c \00"
@.str63.c = internal global %nyx_string* null
@.str64 = private unnamed_addr constant [23 x i8] c"runtime/os/os_posix.c \00"
@.str64.c = internal global %nyx_string* null
@.str65 = private unnamed_addr constant [15 x i8] c"NYX_RT_ARCHIVE\00"
@.str65.c = internal global %nyx_string* null
@.str66 = private unnamed_addr constant [1 x i8] c"\00"
@.str66.c = internal global %nyx_string* null
@.str67 = private unnamed_addr constant [2 x i8] c"/\00"
@.str67.c = internal global %nyx_string* null
@.str68 = private unnamed_addr constant [2 x i8] c"/\00"
@.str68.c = internal global %nyx_string* null
@.str69 = private unnamed_addr constant [1 x i8] c"\00"
@.str69.c = internal global %nyx_string* null
@.str70 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str70.c = internal global %nyx_string* null
@.str71 = private unnamed_addr constant [3 x i8] c"\22 \00"
@.str71.c = internal global %nyx_string* null
@.str72 = private unnamed_addr constant [1 x i8] c"\00"
@.str72.c = internal global %nyx_string* null
@.str73 = private unnamed_addr constant [1 x i8] c"\00"
@.str73.c = internal global %nyx_string* null
@.str74 = private unnamed_addr constant [1 x i8] c"\00"
@.str74.c = internal global %nyx_string* null
@.str75 = private unnamed_addr constant [1 x i8] c"\00"
@.str75.c = internal global %nyx_string* null
@.str76 = private unnamed_addr constant [2 x i8] c"/\00"
@.str76.c = internal global %nyx_string* null
@.str77 = private unnamed_addr constant [20 x i8] c" NYX_COVERAGE_MAP=\22\00"
@.str77.c = internal global %nyx_string* null
@.str78 = private unnamed_addr constant [6 x i8] c".tsv\22\00"
@.str78.c = internal global %nyx_string* null
@.str79 = private unnamed_addr constant [62 x i8] c"-fprofile-generate -Xclang -mllvm -Xclang -disable-preinline \00"
@.str79.c = internal global %nyx_string* null
@.str80 = private unnamed_addr constant [20 x i8] c"LLVM_PROFILE_FILE=\22\00"
@.str80.c = internal global %nyx_string* null
@.str81 = private unnamed_addr constant [11 x i8] c".profraw\22 \00"
@.str81.c = internal global %nyx_string* null
@.str82 = private unnamed_addr constant [20 x i8] c"#!/bin/bash\0aset -e\0a\00"
@.str82.c = internal global %nyx_string* null
@.str83 = private unnamed_addr constant [180 x i8] c"nyx_pila() { local c; c=$(ulimit -s 2>/dev/null) || return 0; [ \22$c\22 = unlimited ] && return 0; [ \22$c\22 -ge 65536 ] 2>/dev/null && return 0; ulimit -s 65536 2>/dev/null || true; }\0a\00"
@.str83.c = internal global %nyx_string* null
@.str84 = private unnamed_addr constant [322 x i8] c"nyx_pista() { [ \22$1\22 -ge 128 ] 2>/dev/null && echo \22nota: el compilador murio por una senal (rc=$1). La causa conocida es quedarse sin pila con una expresion muy larga o muy anidada (cientos de operandos en una sola expresion): conviene partirla en varias. Si no es eso, se puede reportar con 'nyx report'.\22; return 0; }\0a\00"
@.str84.c = internal global %nyx_string* null
@.str85 = private unnamed_addr constant [1 x i8] c"\00"
@.str85.c = internal global %nyx_string* null
@.str86 = private unnamed_addr constant [1 x i8] c"\00"
@.str86.c = internal global %nyx_string* null
@.str87 = private unnamed_addr constant [1 x i8] c"\00"
@.str87.c = internal global %nyx_string* null
@.str88 = private unnamed_addr constant [2 x i8] c",\00"
@.str88.c = internal global %nyx_string* null
@.str89 = private unnamed_addr constant [1 x i8] c"\00"
@.str89.c = internal global %nyx_string* null
@.str90 = private unnamed_addr constant [1 x i8] c"\00"
@.str90.c = internal global %nyx_string* null
@.str91 = private unnamed_addr constant [2 x i8] c",\00"
@.str91.c = internal global %nyx_string* null
@.str92 = private unnamed_addr constant [1 x i8] c"\00"
@.str92.c = internal global %nyx_string* null
@.str93 = private unnamed_addr constant [19 x i8] c" NYX_LIB_MODULES=\22\00"
@.str93.c = internal global %nyx_string* null
@.str94 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str94.c = internal global %nyx_string* null
@.str95 = private unnamed_addr constant [2 x i8] c" \00"
@.str95.c = internal global %nyx_string* null
@.str96 = private unnamed_addr constant [2 x i8] c"=\00"
@.str96.c = internal global %nyx_string* null
@.str97 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str97.c = internal global %nyx_string* null
@.str98 = private unnamed_addr constant [3 x i8] c"\22 \00"
@.str98.c = internal global %nyx_string* null
@.str99 = private unnamed_addr constant [55 x i8] c"( nyx_pila; env -u NYX_SKIP_SEMANTIC NYX_PROJECT_DIR=\22\00"
@.str99.c = internal global %nyx_string* null
@.str100 = private unnamed_addr constant [37 x i8] c"\22 NYX_SRC=\22$SRCNX\22 NYX_SRC_DISPLAY=\22\00"
@.str100.c = internal global %nyx_string* null
@.str101 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str101.c = internal global %nyx_string* null
@.str102 = private unnamed_addr constant [22 x i8] c" ./nyx_bootstrap ) > \00"
@.str102.c = internal global %nyx_string* null
@.str103 = private unnamed_addr constant [36 x i8] c" 2>&1 || { rc=$?; nyx_pista $rc >> \00"
@.str103.c = internal global %nyx_string* null
@.str104 = private unnamed_addr constant [13 x i8] c"; exit 1; }\0a\00"
@.str104.c = internal global %nyx_string* null
@.str105 = private unnamed_addr constant [42 x i8] c"SRC=\22$(mktemp /tmp/nyx_test_src_XXXXXX)\22\0a\00"
@.str105.c = internal global %nyx_string* null
@.str106 = private unnamed_addr constant [17 x i8] c"SRCNX=\22$SRC.nx\22\0a\00"
@.str106.c = internal global %nyx_string* null
@.str107 = private unnamed_addr constant [31 x i8] c"trap 'rm -f \22$SRC\22 \22$SRCNX\22 \22$\00"
@.str107.c = internal global %nyx_string* null
@.str108 = private unnamed_addr constant [17 x i8] c"{SRC}.ll\22' EXIT\0a\00"
@.str108.c = internal global %nyx_string* null
@.str109 = private unnamed_addr constant [5 x i8] c"cp \22\00"
@.str109.c = internal global %nyx_string* null
@.str110 = private unnamed_addr constant [2 x i8] c"/\00"
@.str110.c = internal global %nyx_string* null
@.str111 = private unnamed_addr constant [12 x i8] c"\22 \22$SRCNX\22\0a\00"
@.str111.c = internal global %nyx_string* null
@.str112 = private unnamed_addr constant [5 x i8] c"cd \22\00"
@.str112.c = internal global %nyx_string* null
@.str113 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str113.c = internal global %nyx_string* null
@.str114 = private unnamed_addr constant [51 x i8] c"if command -v flock >/dev/null 2>&1; then exec 9>\22\00"
@.str114.c = internal global %nyx_string* null
@.str115 = private unnamed_addr constant [35 x i8] c"/.toolchain.lock\22; flock -s 9; fi\0a\00"
@.str115.c = internal global %nyx_string* null
@.str116 = private unnamed_addr constant [7 x i8] c"clang \00"
@.str116.c = internal global %nyx_string* null
@.str117 = private unnamed_addr constant [40 x i8] c"-Wno-deprecated-declarations \22$SRC.ll\22 \00"
@.str117.c = internal global %nyx_string* null
@.str118 = private unnamed_addr constant [44 x i8] c"-lgc -lpthread -ldl -lm -lssl -lcrypto -lz \00"
@.str118.c = internal global %nyx_string* null
@.str119 = private unnamed_addr constant [4 x i8] c"-o \00"
@.str119.c = internal global %nyx_string* null
@.str120 = private unnamed_addr constant [6 x i8] c" 2>> \00"
@.str120.c = internal global %nyx_string* null
@.str121 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str121.c = internal global %nyx_string* null
@.str122 = private unnamed_addr constant [57 x i8] c"if command -v flock >/dev/null 2>&1; then exec 9>&-; fi\0a\00"
@.str122.c = internal global %nyx_string* null
@.str123 = private unnamed_addr constant [9 x i8] c"timeout \00"
@.str123.c = internal global %nyx_string* null
@.str124 = private unnamed_addr constant [2 x i8] c" \00"
@.str124.c = internal global %nyx_string* null
@.str125 = private unnamed_addr constant [4 x i8] c" > \00"
@.str125.c = internal global %nyx_string* null
@.str126 = private unnamed_addr constant [7 x i8] c" 2>&1\0a\00"
@.str126.c = internal global %nyx_string* null
@.str127 = private unnamed_addr constant [14 x i8] c"EXIT_CODE=$?\0a\00"
@.str127.c = internal global %nyx_string* null
@.str128 = private unnamed_addr constant [7 x i8] c"rm -f \00"
@.str128.c = internal global %nyx_string* null
@.str129 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str129.c = internal global %nyx_string* null
@.str130 = private unnamed_addr constant [17 x i8] c"exit $EXIT_CODE\0a\00"
@.str130.c = internal global %nyx_string* null
@.str131 = private unnamed_addr constant [8 x i8] c"/run.sh\00"
@.str131.c = internal global %nyx_string* null
@.str132 = private unnamed_addr constant [6 x i8] c"bash \00"
@.str132.c = internal global %nyx_string* null
@.str133 = private unnamed_addr constant [1 x i8] c"\00"
@.str133.c = internal global %nyx_string* null
@.str134 = private unnamed_addr constant [8 x i8] c"rm -rf \00"
@.str134.c = internal global %nyx_string* null
@.str135 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str135.c = internal global %nyx_string* null
@.str136 = private unnamed_addr constant [6 x i8] c"PASS:\00"
@.str136.c = internal global %nyx_string* null
@.str137 = private unnamed_addr constant [6 x i8] c"FAIL:\00"
@.str137.c = internal global %nyx_string* null
@.str138 = private unnamed_addr constant [9 x i8] c"  PASS  \00"
@.str138.c = internal global %nyx_string* null
@.str139 = private unnamed_addr constant [3 x i8] c" (\00"
@.str139.c = internal global %nyx_string* null
@.str140 = private unnamed_addr constant [8 x i8] c" tests)\00"
@.str140.c = internal global %nyx_string* null
@.str141 = private unnamed_addr constant [9 x i8] c"  FAIL  \00"
@.str141.c = internal global %nyx_string* null
@.str142 = private unnamed_addr constant [3 x i8] c" (\00"
@.str142.c = internal global %nyx_string* null
@.str143 = private unnamed_addr constant [10 x i8] c" passed, \00"
@.str143.c = internal global %nyx_string* null
@.str144 = private unnamed_addr constant [9 x i8] c" failed)\00"
@.str144.c = internal global %nyx_string* null
@.str145 = private unnamed_addr constant [1 x i8] c"\00"
@.str145.c = internal global %nyx_string* null
@.str146 = private unnamed_addr constant [36 x i8] c"===================================\00"
@.str146.c = internal global %nyx_string* null
@.str147 = private unnamed_addr constant [11 x i8] c"  Files:  \00"
@.str147.c = internal global %nyx_string* null
@.str148 = private unnamed_addr constant [10 x i8] c" passed, \00"
@.str148.c = internal global %nyx_string* null
@.str149 = private unnamed_addr constant [10 x i8] c" failed (\00"
@.str149.c = internal global %nyx_string* null
@.str150 = private unnamed_addr constant [8 x i8] c" total)\00"
@.str150.c = internal global %nyx_string* null
@.str151 = private unnamed_addr constant [11 x i8] c"  Tests:  \00"
@.str151.c = internal global %nyx_string* null
@.str152 = private unnamed_addr constant [10 x i8] c" passed, \00"
@.str152.c = internal global %nyx_string* null
@.str153 = private unnamed_addr constant [10 x i8] c" failed (\00"
@.str153.c = internal global %nyx_string* null
@.str154 = private unnamed_addr constant [8 x i8] c" total)\00"
@.str154.c = internal global %nyx_string* null
@.str155 = private unnamed_addr constant [27 x i8] c"  Status: ALL TESTS PASSED\00"
@.str155.c = internal global %nyx_string* null
@.str156 = private unnamed_addr constant [28 x i8] c"  Status: SOME TESTS FAILED\00"
@.str156.c = internal global %nyx_string* null
@.str157 = private unnamed_addr constant [36 x i8] c"===================================\00"
@.str157.c = internal global %nyx_string* null
@.str158 = private unnamed_addr constant [28 x i8] c"clang --version 2>/dev/null\00"
@.str158.c = internal global %nyx_string* null
@.str159 = private unnamed_addr constant [9 x i8] c"version \00"
@.str159.c = internal global %nyx_string* null
@.str160 = private unnamed_addr constant [1 x i8] c"\00"
@.str160.c = internal global %nyx_string* null
@.str161 = private unnamed_addr constant [1 x i8] c"\00"
@.str161.c = internal global %nyx_string* null
@.str162 = private unnamed_addr constant [10 x i8] c"test -s \22\00"
@.str162.c = internal global %nyx_string* null
@.str163 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str163.c = internal global %nyx_string* null
@.str164 = private unnamed_addr constant [1 x i8] c"\00"
@.str164.c = internal global %nyx_string* null
@.str165 = private unnamed_addr constant [26 x i8] c"command -v llvm-profdata-\00"
@.str165.c = internal global %nyx_string* null
@.str166 = private unnamed_addr constant [13 x i8] c" 2>/dev/null\00"
@.str166.c = internal global %nyx_string* null
@.str167 = private unnamed_addr constant [1 x i8] c"\00"
@.str167.c = internal global %nyx_string* null
@.str168 = private unnamed_addr constant [37 x i8] c"command -v llvm-profdata 2>/dev/null\00"
@.str168.c = internal global %nyx_string* null
@.str169 = private unnamed_addr constant [2 x i8] c"0\00"
@.str169.c = internal global %nyx_string* null
@.str170 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str170.c = internal global %nyx_string* null
@.str171 = private unnamed_addr constant [1 x i8] c"\00"
@.str171.c = internal global %nyx_string* null
@.str172 = private unnamed_addr constant [3 x i8] c"  \00"
@.str172.c = internal global %nyx_string* null
@.str173 = private unnamed_addr constant [4 x i8] c"   \00"
@.str173.c = internal global %nyx_string* null
@.str174 = private unnamed_addr constant [2 x i8] c":\00"
@.str174.c = internal global %nyx_string* null
@.str175 = private unnamed_addr constant [2 x i8] c";\00"
@.str175.c = internal global %nyx_string* null
@.str176 = private unnamed_addr constant [1 x i8] c"\00"
@.str176.c = internal global %nyx_string* null
@.str177 = private unnamed_addr constant [14 x i8] c"Block counts:\00"
@.str177.c = internal global %nyx_string* null
@.str178 = private unnamed_addr constant [2 x i8] c"[\00"
@.str178.c = internal global %nyx_string* null
@.str179 = private unnamed_addr constant [2 x i8] c"]\00"
@.str179.c = internal global %nyx_string* null
@.str180 = private unnamed_addr constant [2 x i8] c",\00"
@.str180.c = internal global %nyx_string* null
@.str181 = private unnamed_addr constant [2 x i8] c"1\00"
@.str181.c = internal global %nyx_string* null
@.str182 = private unnamed_addr constant [4 x i8] c"src\00"
@.str182.c = internal global %nyx_string* null
@.str183 = private unnamed_addr constant [50 x i8] c"find src -name '*.nx' 2>/dev/null | LC_ALL=C sort\00"
@.str183.c = internal global %nyx_string* null
@.str184 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str184.c = internal global %nyx_string* null
@.str185 = private unnamed_addr constant [4 x i8] c".nx\00"
@.str185.c = internal global %nyx_string* null
@.str186 = private unnamed_addr constant [9 x i8] c"_test.nx\00"
@.str186.c = internal global %nyx_string* null
@.str187 = private unnamed_addr constant [1 x i8] c"\00"
@.str187.c = internal global %nyx_string* null
@.str188 = private unnamed_addr constant [9 x i8] c"import \22\00"
@.str188.c = internal global %nyx_string* null
@.str189 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str189.c = internal global %nyx_string* null
@.str190 = private unnamed_addr constant [36 x i8] c"\0afn main() -> int {\0a    return 0\0a}\0a\00"
@.str190.c = internal global %nyx_string* null
@.str191 = private unnamed_addr constant [13 x i8] c"/universe.nx\00"
@.str191.c = internal global %nyx_string* null
@.str192 = private unnamed_addr constant [14 x i8] c"/universe.tsv\00"
@.str192.c = internal global %nyx_string* null
@.str193 = private unnamed_addr constant [13 x i8] c"#!/bin/bash\0a\00"
@.str193.c = internal global %nyx_string* null
@.str194 = private unnamed_addr constant [8 x i8] c"SRCNX=\22\00"
@.str194.c = internal global %nyx_string* null
@.str195 = private unnamed_addr constant [19 x i8] c"/universe.src.nx\22\0a\00"
@.str195.c = internal global %nyx_string* null
@.str196 = private unnamed_addr constant [5 x i8] c"cp \22\00"
@.str196.c = internal global %nyx_string* null
@.str197 = private unnamed_addr constant [24 x i8] c"/universe.nx\22 \22$SRCNX\22\0a\00"
@.str197.c = internal global %nyx_string* null
@.str198 = private unnamed_addr constant [5 x i8] c"cd \22\00"
@.str198.c = internal global %nyx_string* null
@.str199 = private unnamed_addr constant [3 x i8] c"\22\0a\00"
@.str199.c = internal global %nyx_string* null
@.str200 = private unnamed_addr constant [137 x i8] c"( c=$(ulimit -s 2>/dev/null); if [ \22$c\22 != unlimited ] && [ \22$c\22 -lt 65536 ] 2>/dev/null; then ulimit -s 65536 2>/dev/null || true; fi; \00"
@.str200.c = internal global %nyx_string* null
@.str201 = private unnamed_addr constant [43 x i8] c"env -u NYX_SKIP_SEMANTIC NYX_PROJECT_DIR=\22\00"
@.str201.c = internal global %nyx_string* null
@.str202 = private unnamed_addr constant [38 x i8] c"\22 NYX_SRC=\22$SRCNX\22 NYX_COVERAGE_MAP=\22\00"
@.str202.c = internal global %nyx_string* null
@.str203 = private unnamed_addr constant [24 x i8] c"\22 ./nyx_bootstrap ) > \22\00"
@.str203.c = internal global %nyx_string* null
@.str204 = private unnamed_addr constant [21 x i8] c"/universe.log\22 2>&1\0a\00"
@.str204.c = internal global %nyx_string* null
@.str205 = private unnamed_addr constant [7 x i8] c"RC=$?\0a\00"
@.str205.c = internal global %nyx_string* null
@.str206 = private unnamed_addr constant [17 x i8] c"rm -f \22$SRCNX\22 \22\00"
@.str206.c = internal global %nyx_string* null
@.str207 = private unnamed_addr constant [19 x i8] c"/universe.src.ll\22\0a\00"
@.str207.c = internal global %nyx_string* null
@.str208 = private unnamed_addr constant [10 x i8] c"exit $RC\0a\00"
@.str208.c = internal global %nyx_string* null
@.str209 = private unnamed_addr constant [13 x i8] c"/universe.sh\00"
@.str209.c = internal global %nyx_string* null
@.str210 = private unnamed_addr constant [7 x i8] c"bash \22\00"
@.str210.c = internal global %nyx_string* null
@.str211 = private unnamed_addr constant [14 x i8] c"/universe.sh\22\00"
@.str211.c = internal global %nyx_string* null
@.str212 = private unnamed_addr constant [9 x i8] c"NYX_HOME\00"
@.str212.c = internal global %nyx_string* null
@.str213 = private unnamed_addr constant [4 x i8] c"PWD\00"
@.str213.c = internal global %nyx_string* null
@.str214 = private unnamed_addr constant [1 x i8] c"\00"
@.str214.c = internal global %nyx_string* null
@.str215 = private unnamed_addr constant [36 x i8] c"== Cobertura de funciones (src/) ==\00"
@.str215.c = internal global %nyx_string* null
@.str216 = private unnamed_addr constant [1 x i8] c"\00"
@.str216.c = internal global %nyx_string* null
@.str217 = private unnamed_addr constant [2 x i8] c"/\00"
@.str217.c = internal global %nyx_string* null
@.str218 = private unnamed_addr constant [9 x i8] c".profraw\00"
@.str218.c = internal global %nyx_string* null
@.str219 = private unnamed_addr constant [3 x i8] c" \22\00"
@.str219.c = internal global %nyx_string* null
@.str220 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str220.c = internal global %nyx_string* null
@.str221 = private unnamed_addr constant [2 x i8] c"1\00"
@.str221.c = internal global %nyx_string* null
@.str222 = private unnamed_addr constant [17 x i8] c"/merged.profdata\00"
@.str222.c = internal global %nyx_string* null
@.str223 = private unnamed_addr constant [12 x i8] c" merge -o \22\00"
@.str223.c = internal global %nyx_string* null
@.str224 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str224.c = internal global %nyx_string* null
@.str225 = private unnamed_addr constant [5 x i8] c" > \22\00"
@.str225.c = internal global %nyx_string* null
@.str226 = private unnamed_addr constant [17 x i8] c"/merge.log\22 2>&1\00"
@.str226.c = internal global %nyx_string* null
@.str227 = private unnamed_addr constant [36 x i8] c"  error: llvm-profdata merge fallo:\00"
@.str227.c = internal global %nyx_string* null
@.str228 = private unnamed_addr constant [11 x i8] c"/merge.log\00"
@.str228.c = internal global %nyx_string* null
@.str229 = private unnamed_addr constant [33 x i8] c" show --all-functions --counts \22\00"
@.str229.c = internal global %nyx_string* null
@.str230 = private unnamed_addr constant [6 x i8] c"\22 > \22\00"
@.str230.c = internal global %nyx_string* null
@.str231 = private unnamed_addr constant [16 x i8] c"/show.txt\22 2>&1\00"
@.str231.c = internal global %nyx_string* null
@.str232 = private unnamed_addr constant [10 x i8] c"/show.txt\00"
@.str232.c = internal global %nyx_string* null
@.str233 = private unnamed_addr constant [2 x i8] c"/\00"
@.str233.c = internal global %nyx_string* null
@.str234 = private unnamed_addr constant [5 x i8] c".tsv\00"
@.str234.c = internal global %nyx_string* null
@.str235 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str235.c = internal global %nyx_string* null
@.str236 = private unnamed_addr constant [1 x i8] c"\00"
@.str236.c = internal global %nyx_string* null
@.str237 = private unnamed_addr constant [2 x i8] c"1\00"
@.str237.c = internal global %nyx_string* null
@.str238 = private unnamed_addr constant [5 x i8] c"mono\00"
@.str238.c = internal global %nyx_string* null
@.str239 = private unnamed_addr constant [27 x i8] c"  (no hay modulos en src/)\00"
@.str239.c = internal global %nyx_string* null
@.str240 = private unnamed_addr constant [68 x i8] c"  error: no se pudo listar las funciones de src/ (src/ no compila):\00"
@.str240.c = internal global %nyx_string* null
@.str241 = private unnamed_addr constant [14 x i8] c"/universe.log\00"
@.str241.c = internal global %nyx_string* null
@.str242 = private unnamed_addr constant [14 x i8] c"/universe.log\00"
@.str242.c = internal global %nyx_string* null
@.str243 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str243.c = internal global %nyx_string* null
@.str244 = private unnamed_addr constant [3 x i8] c"fn\00"
@.str244.c = internal global %nyx_string* null
@.str245 = private unnamed_addr constant [7 x i8] c"metodo\00"
@.str245.c = internal global %nyx_string* null
@.str246 = private unnamed_addr constant [6 x i8] c"async\00"
@.str246.c = internal global %nyx_string* null
@.str247 = private unnamed_addr constant [9 x i8] c"generica\00"
@.str247.c = internal global %nyx_string* null
@.str248 = private unnamed_addr constant [5 x i8] c"src/\00"
@.str248.c = internal global %nyx_string* null
@.str249 = private unnamed_addr constant [5 x i8] c"main\00"
@.str249.c = internal global %nyx_string* null
@.str250 = private unnamed_addr constant [3 x i8] c"no\00"
@.str250.c = internal global %nyx_string* null
@.str251 = private unnamed_addr constant [3 x i8] c"si\00"
@.str251.c = internal global %nyx_string* null
@.str252 = private unnamed_addr constant [10 x i8] c"sin_datos\00"
@.str252.c = internal global %nyx_string* null
@.str253 = private unnamed_addr constant [5 x i8] c".nx\09\00"
@.str253.c = internal global %nyx_string* null
@.str254 = private unnamed_addr constant [2 x i8] c"\09\00"
@.str254.c = internal global %nyx_string* null
@.str255 = private unnamed_addr constant [1 x i8] c"\00"
@.str255.c = internal global %nyx_string* null
@.str256 = private unnamed_addr constant [1 x i8] c"\00"
@.str256.c = internal global %nyx_string* null
@.str257 = private unnamed_addr constant [10 x i8] c"sin_datos\00"
@.str257.c = internal global %nyx_string* null
@.str258 = private unnamed_addr constant [2 x i8] c"0\00"
@.str258.c = internal global %nyx_string* null
@.str259 = private unnamed_addr constant [3 x i8] c"si\00"
@.str259.c = internal global %nyx_string* null
@.str260 = private unnamed_addr constant [2 x i8] c"1\00"
@.str260.c = internal global %nyx_string* null
@.str261 = private unnamed_addr constant [5 x i8] c"    \00"
@.str261.c = internal global %nyx_string* null
@.str262 = private unnamed_addr constant [2 x i8] c":\00"
@.str262.c = internal global %nyx_string* null
@.str263 = private unnamed_addr constant [2 x i8] c" \00"
@.str263.c = internal global %nyx_string* null
@.str264 = private unnamed_addr constant [4 x i8] c"FN:\00"
@.str264.c = internal global %nyx_string* null
@.str265 = private unnamed_addr constant [2 x i8] c",\00"
@.str265.c = internal global %nyx_string* null
@.str266 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str266.c = internal global %nyx_string* null
@.str267 = private unnamed_addr constant [6 x i8] c"FNDA:\00"
@.str267.c = internal global %nyx_string* null
@.str268 = private unnamed_addr constant [3 x i8] c"  \00"
@.str268.c = internal global %nyx_string* null
@.str269 = private unnamed_addr constant [3 x i8] c": \00"
@.str269.c = internal global %nyx_string* null
@.str270 = private unnamed_addr constant [2 x i8] c"/\00"
@.str270.c = internal global %nyx_string* null
@.str271 = private unnamed_addr constant [10 x i8] c" llamadas\00"
@.str271.c = internal global %nyx_string* null
@.str272 = private unnamed_addr constant [29 x i8] c" (ninguna prueba lo importa)\00"
@.str272.c = internal global %nyx_string* null
@.str273 = private unnamed_addr constant [3 x i8] c" (\00"
@.str273.c = internal global %nyx_string* null
@.str274 = private unnamed_addr constant [38 x i8] c" sin datos: su prueba no dejo perfil)\00"
@.str274.c = internal global %nyx_string* null
@.str275 = private unnamed_addr constant [4 x i8] c"SF:\00"
@.str275.c = internal global %nyx_string* null
@.str276 = private unnamed_addr constant [5 x i8] c"FNF:\00"
@.str276.c = internal global %nyx_string* null
@.str277 = private unnamed_addr constant [6 x i8] c"\0aFNH:\00"
@.str277.c = internal global %nyx_string* null
@.str278 = private unnamed_addr constant [16 x i8] c"\0aend_of_record\0a\00"
@.str278.c = internal global %nyx_string* null
@.str279 = private unnamed_addr constant [70 x i8] c"  Sin perfil (timeout, crash o no compilo; sus funciones no cuentan):\00"
@.str279.c = internal global %nyx_string* null
@.str280 = private unnamed_addr constant [5 x i8] c"    \00"
@.str280.c = internal global %nyx_string* null
@.str281 = private unnamed_addr constant [10 x i8] c"  Total: \00"
@.str281.c = internal global %nyx_string* null
@.str282 = private unnamed_addr constant [2 x i8] c"/\00"
@.str282.c = internal global %nyx_string* null
@.str283 = private unnamed_addr constant [20 x i8] c" funciones llamadas\00"
@.str283.c = internal global %nyx_string* null
@.str284 = private unnamed_addr constant [11 x i8] c"mkdir -p \22\00"
@.str284.c = internal global %nyx_string* null
@.str285 = private unnamed_addr constant [9 x i8] c"/target\22\00"
@.str285.c = internal global %nyx_string* null
@.str286 = private unnamed_addr constant [22 x i8] c"/target/coverage.lcov\00"
@.str286.c = internal global %nyx_string* null
@.str287 = private unnamed_addr constant [29 x i8] c"  lcov: target/coverage.lcov\00"
@.str287.c = internal global %nyx_string* null
@.str288 = private unnamed_addr constant [115 x i8] c"  Opciones validas: --filter <string>, --verbose (-v), --timeout <seconds>, --release, --coverage, --coverage=lcov\00"
@.str288.c = internal global %nyx_string* null
@.str289 = private unnamed_addr constant [24 x i8] c"=== Nyx Test Runner ===\00"
@.str289.c = internal global %nyx_string* null
@.str290 = private unnamed_addr constant [1 x i8] c"\00"
@.str290.c = internal global %nyx_string* null
@.str291 = private unnamed_addr constant [9 x i8] c"--filter\00"
@.str291.c = internal global %nyx_string* null
@.str292 = private unnamed_addr constant [10 x i8] c"--verbose\00"
@.str292.c = internal global %nyx_string* null
@.str293 = private unnamed_addr constant [3 x i8] c"-v\00"
@.str293.c = internal global %nyx_string* null
@.str294 = private unnamed_addr constant [10 x i8] c"--timeout\00"
@.str294.c = internal global %nyx_string* null
@.str295 = private unnamed_addr constant [10 x i8] c"--release\00"
@.str295.c = internal global %nyx_string* null
@.str296 = private unnamed_addr constant [11 x i8] c"--coverage\00"
@.str296.c = internal global %nyx_string* null
@.str297 = private unnamed_addr constant [16 x i8] c"--coverage=lcov\00"
@.str297.c = internal global %nyx_string* null
@.str298 = private unnamed_addr constant [8 x i8] c"--cover\00"
@.str298.c = internal global %nyx_string* null
@.str299 = private unnamed_addr constant [12 x i8] c"--coverage=\00"
@.str299.c = internal global %nyx_string* null
@.str300 = private unnamed_addr constant [24 x i8] c"error: unknown option: \00"
@.str300.c = internal global %nyx_string* null
@.str301 = private unnamed_addr constant [106 x i8] c"  La cobertura se pide con --coverage (informe de texto) o --coverage=lcov (ademas target/coverage.lcov).\00"
@.str301.c = internal global %nyx_string* null
@.str302 = private unnamed_addr constant [9 x i8] c"--target\00"
@.str302.c = internal global %nyx_string* null
@.str303 = private unnamed_addr constant [10 x i8] c"--target=\00"
@.str303.c = internal global %nyx_string* null
@.str304 = private unnamed_addr constant [2 x i8] c" \00"
@.str304.c = internal global %nyx_string* null
@.str305 = private unnamed_addr constant [4 x i8] c".nx\00"
@.str305.c = internal global %nyx_string* null
@.str306 = private unnamed_addr constant [2 x i8] c"-\00"
@.str306.c = internal global %nyx_string* null
@.str307 = private unnamed_addr constant [1 x i8] c"\00"
@.str307.c = internal global %nyx_string* null
@.str308 = private unnamed_addr constant [47 x i8] c"error: --coverage solo mide el target nativo: \00"
@.str308.c = internal global %nyx_string* null
@.str309 = private unnamed_addr constant [58 x i8] c" no tiene perfiles de LLVM (wasm y Windows quedan fuera).\00"
@.str309.c = internal global %nyx_string* null
@.str310 = private unnamed_addr constant [24 x i8] c"error: unknown option: \00"
@.str310.c = internal global %nyx_string* null
@.str311 = private unnamed_addr constant [1 x i8] c"\00"
@.str311.c = internal global %nyx_string* null
@.str312 = private unnamed_addr constant [1 x i8] c"\00"
@.str312.c = internal global %nyx_string* null
@.str313 = private unnamed_addr constant [1 x i8] c"\00"
@.str313.c = internal global %nyx_string* null
@.str314 = private unnamed_addr constant [5 x i8] c"llvm\00"
@.str314.c = internal global %nyx_string* null
@.str315 = private unnamed_addr constant [1 x i8] c"\00"
@.str315.c = internal global %nyx_string* null
@.str316 = private unnamed_addr constant [6 x i8] c"llvm-\00"
@.str316.c = internal global %nyx_string* null
@.str317 = private unnamed_addr constant [101 x i8] c"error: --coverage necesita llvm-profdata (de la misma version mayor que clang) y no esta en el PATH.\00"
@.str317.c = internal global %nyx_string* null
@.str318 = private unnamed_addr constant [35 x i8] c"  Debian/Ubuntu: sudo apt install \00"
@.str318.c = internal global %nyx_string* null
@.str319 = private unnamed_addr constant [82 x i8] c"  macOS (Homebrew): brew install llvm, y agrega $(brew --prefix llvm)/bin al PATH\00"
@.str319.c = internal global %nyx_string* null
@.str320 = private unnamed_addr constant [82 x i8] c"  Tambien hace falta el runtime de perfiles de compiler-rt (libclang_rt.profile).\00"
@.str320.c = internal global %nyx_string* null
@.str321 = private unnamed_addr constant [30 x i8] c"mktemp -d /tmp/nyx_cov_XXXXXX\00"
@.str321.c = internal global %nyx_string* null
@.str322 = private unnamed_addr constant [1 x i8] c"\00"
@.str322.c = internal global %nyx_string* null
@.str323 = private unnamed_addr constant [55 x i8] c"error: --coverage no pudo crear un directorio temporal\00"
@.str323.c = internal global %nyx_string* null
@.str324 = private unnamed_addr constant [1 x i8] c"\00"
@.str324.c = internal global %nyx_string* null
@.str325 = private unnamed_addr constant [24 x i8] c"error: file not found: \00"
@.str325.c = internal global %nyx_string* null
@.str326 = private unnamed_addr constant [23 x i8] c"  No test files found.\00"
@.str326.c = internal global %nyx_string* null
@.str327 = private unnamed_addr constant [1 x i8] c"\00"
@.str327.c = internal global %nyx_string* null
@.str328 = private unnamed_addr constant [12 x i8] c"  Filter: \22\00"
@.str328.c = internal global %nyx_string* null
@.str329 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str329.c = internal global %nyx_string* null
@.str330 = private unnamed_addr constant [14 x i8] c"  Looked in: \00"
@.str330.c = internal global %nyx_string* null
@.str331 = private unnamed_addr constant [2 x i8] c"/\00"
@.str331.c = internal global %nyx_string* null
@.str332 = private unnamed_addr constant [9 x i8] c"  Found \00"
@.str332.c = internal global %nyx_string* null
@.str333 = private unnamed_addr constant [14 x i8] c" test file(s)\00"
@.str333.c = internal global %nyx_string* null
@.str334 = private unnamed_addr constant [1 x i8] c"\00"
@.str334.c = internal global %nyx_string* null
@.str335 = private unnamed_addr constant [12 x i8] c"  Filter: \22\00"
@.str335.c = internal global %nyx_string* null
@.str336 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str336.c = internal global %nyx_string* null
@.str337 = private unnamed_addr constant [1 x i8] c"\00"
@.str337.c = internal global %nyx_string* null
@.str338 = private unnamed_addr constant [1 x i8] c"\00"
@.str338.c = internal global %nyx_string* null
@.str339 = private unnamed_addr constant [9 x i8] c"NYX_HOME\00"
@.str339.c = internal global %nyx_string* null
@.str340 = private unnamed_addr constant [11 x i8] c"/nyx_build\00"
@.str340.c = internal global %nyx_string* null
@.str341 = private unnamed_addr constant [15 x i8] c"/bin/nyx_build\00"
@.str341.c = internal global %nyx_string* null
@.str342 = private unnamed_addr constant [1 x i8] c"\00"
@.str342.c = internal global %nyx_string* null
@.str343 = private unnamed_addr constant [11 x i8] c" --release\00"
@.str343.c = internal global %nyx_string* null
@.str344 = private unnamed_addr constant [33 x i8] c"mktemp /tmp/nyx_test_libs_XXXXXX\00"
@.str344.c = internal global %nyx_string* null
@.str345 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str345.c = internal global %nyx_string* null
@.str346 = private unnamed_addr constant [7 x i8] c"\22 libs\00"
@.str346.c = internal global %nyx_string* null
@.str347 = private unnamed_addr constant [5 x i8] c" > \22\00"
@.str347.c = internal global %nyx_string* null
@.str348 = private unnamed_addr constant [7 x i8] c"\22 2>&1\00"
@.str348.c = internal global %nyx_string* null
@.str349 = private unnamed_addr constant [8 x i8] c"rm -f \22\00"
@.str349.c = internal global %nyx_string* null
@.str350 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str350.c = internal global %nyx_string* null
@.str351 = private unnamed_addr constant [65 x i8] c"error: no se pudieron compilar las bibliotecas de [lib] modules:\00"
@.str351.c = internal global %nyx_string* null
@.str352 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str352.c = internal global %nyx_string* null
@.str353 = private unnamed_addr constant [13 x i8] c"NYX_LIB_MAP:\00"
@.str353.c = internal global %nyx_string* null
@.str354 = private unnamed_addr constant [6 x i8] c"(lib)\00"
@.str354.c = internal global %nyx_string* null
@.str355 = private unnamed_addr constant [8 x i8] c"reusing\00"
@.str355.c = internal global %nyx_string* null
@.str356 = private unnamed_addr constant [4 x i8] c"⚠\00"
@.str356.c = internal global %nyx_string* null
@.str357 = private unnamed_addr constant [18 x i8] c"  [lib] modules: \00"
@.str357.c = internal global %nyx_string* null
@.str358 = private unnamed_addr constant [16 x i8] c" compilada(s), \00"
@.str358.c = internal global %nyx_string* null
@.str359 = private unnamed_addr constant [16 x i8] c" reutilizada(s)\00"
@.str359.c = internal global %nyx_string* null
@.str360 = private unnamed_addr constant [1 x i8] c"\00"
@.str360.c = internal global %nyx_string* null
@.str361 = private unnamed_addr constant [35 x i8] c"  No files with test blocks found.\00"
@.str361.c = internal global %nyx_string* null
@.str362 = private unnamed_addr constant [1 x i8] c"\00"
@.str362.c = internal global %nyx_string* null
@.str363 = private unnamed_addr constant [8 x i8] c"rm -rf \00"
@.str363.c = internal global %nyx_string* null
@.str364 = private unnamed_addr constant [8 x i8] c"rm -rf \00"
@.str364.c = internal global %nyx_string* null
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
  %772 = getelementptr [1 x i8], [1 x i8]* @.str21, i32 0, i32 0
  %773 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str21.c, i8* %772, i64 0)
  %774 = getelementptr %TestConfig, %TestConfig* %757, i32 0, i32 8
  store %nyx_string* %773, %nyx_string** %774
  %775 = getelementptr [1 x i8], [1 x i8]* @.str22, i32 0, i32 0
  %776 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str22.c, i8* %775, i64 0)
  %777 = getelementptr %TestConfig, %TestConfig* %757, i32 0, i32 9
  store %nyx_string* %776, %nyx_string** %777
  %778 = load %TestConfig, %TestConfig* %757
  %779 = alloca %TestConfig
  store %TestConfig %778, %TestConfig* %779
  %780 = getelementptr [9 x i8], [9 x i8]* @.str23, i32 0, i32 0
  %781 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str23.c, i8* %780, i64 8)
  %782 = call i8* @nyx_string_to_cstr(%nyx_string* %781)
  %783 = call i1 @nyx_file_exists(i8* %782)
  %784 = xor i1 %783, true
  br i1 %784, label %then222, label %else223
then222:
  %785 = load %TestConfig, %TestConfig* %779
  ret %TestConfig %785
else223:
  br label %merge224
merge224:
  %786 = getelementptr [9 x i8], [9 x i8]* @.str24, i32 0, i32 0
  %787 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str24.c, i8* %786, i64 8)
  %788 = call i8* @nyx_string_to_cstr(%nyx_string* %787)
  %789 = call %nyx_string* @nyx_read_file(i8* %788)
  %790 = alloca %nyx_string*
  store %nyx_string* %789, %nyx_string** %790
  %791 = load %nyx_string*, %nyx_string** %790
  %792 = getelementptr [2 x i8], [2 x i8]* @.str25, i32 0, i32 0
  %793 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str25.c, i8* %792, i64 1)
  %794 = call { i64, i8* }* @nyx_string_split(%nyx_string* %791, %nyx_string* %793)
  %795 = alloca { i64, i8* }*
  store { i64, i8* }* %794, { i64, i8* }** %795
  %796 = alloca i1
  store i1 0, i1* %796
  %797 = alloca i1
  store i1 0, i1* %797
  %798 = alloca i64
  store i64 0, i64* %798
  %799 = getelementptr [7 x i8], [7 x i8]* @.str26, i32 0, i32 0
  %800 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str26.c, i8* %799, i64 6)
  %801 = alloca %nyx_string*
  store %nyx_string* %800, %nyx_string** %801
  %802 = getelementptr [2 x i8], [2 x i8]* @.str27, i32 0, i32 0
  %803 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str27.c, i8* %802, i64 1)
  %804 = alloca %nyx_string*
  store %nyx_string* %803, %nyx_string** %804
  %805 = getelementptr [6 x i8], [6 x i8]* @.str28, i32 0, i32 0
  %806 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str28.c, i8* %805, i64 5)
  %807 = alloca %nyx_string*
  store %nyx_string* %806, %nyx_string** %807
  %808 = getelementptr [8 x i8], [8 x i8]* @.str29, i32 0, i32 0
  %809 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str29.c, i8* %808, i64 7)
  %810 = alloca %nyx_string*
  store %nyx_string* %809, %nyx_string** %810
  %811 = getelementptr [2 x i8], [2 x i8]* @.str30, i32 0, i32 0
  %812 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str30.c, i8* %811, i64 1)
  %813 = alloca %nyx_string*
  store %nyx_string* %812, %nyx_string** %813
  %814 = getelementptr [1 x i8], [1 x i8]* @.str31, i32 0, i32 0
  %815 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str31.c, i8* %814, i64 0)
  %816 = alloca %nyx_string*
  store %nyx_string* %815, %nyx_string** %816
  %817 = getelementptr [2 x i8], [2 x i8]* @.str32, i32 0, i32 0
  %818 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str32.c, i8* %817, i64 1)
  %819 = alloca %nyx_string*
  store %nyx_string* %818, %nyx_string** %819
  %820 = getelementptr [2 x i8], [2 x i8]* @.str33, i32 0, i32 0
  %821 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str33.c, i8* %820, i64 1)
  %822 = alloca %nyx_string*
  store %nyx_string* %821, %nyx_string** %822
  %823 = getelementptr [2 x i8], [2 x i8]* @.str34, i32 0, i32 0
  %824 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str34.c, i8* %823, i64 1)
  %825 = alloca %nyx_string*
  store %nyx_string* %824, %nyx_string** %825
  %826 = getelementptr [4 x i8], [4 x i8]* @.str35, i32 0, i32 0
  %827 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str35.c, i8* %826, i64 3)
  %828 = alloca %nyx_string*
  store %nyx_string* %827, %nyx_string** %828
  %829 = getelementptr [8 x i8], [8 x i8]* @.str36, i32 0, i32 0
  %830 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str36.c, i8* %829, i64 7)
  %831 = alloca %nyx_string*
  store %nyx_string* %830, %nyx_string** %831
  %832 = call i8* @llvm.stacksave()
  br label %while_cond225
while_cond225:
  %833 = load i64, i64* %798
  %834 = load { i64, i8* }*, { i64, i8* }** %795
  %835 = call i64 @nyx_array_length({ i64, i8* }* %834)
  %836 = icmp slt i64 %833, %835
  br i1 %836, label %while_body226, label %while_end227
while_body226:
  call void @llvm.stackrestore(i8* %832)
  %837 = load { i64, i8* }*, { i64, i8* }** %795
  %838 = load i64, i64* %798
  %839 = call i64 @nyx_array_get_checked({ i64, i8* }* %837, i64 %838, i64 2)
  %840 = inttoptr i64 %839 to %nyx_string*
  %841 = alloca %nyx_string*
  store %nyx_string* %840, %nyx_string** %841
  %842 = load %nyx_string*, %nyx_string** %841
  %843 = call %nyx_string* @nyx_string_trim(%nyx_string* %842)
  %844 = alloca %nyx_string*
  store %nyx_string* %843, %nyx_string** %844
  %845 = load %nyx_string*, %nyx_string** %844
  %846 = load %nyx_string*, %nyx_string** %801
  %847 = call i1 @nyx_string_equals(%nyx_string* %845, %nyx_string* %846)
  br i1 %847, label %then228, label %else229
then228:
  store i1 1, i1* %796
  br label %merge230
else229:
  %848 = load %nyx_string*, %nyx_string** %844
  %849 = load %nyx_string*, %nyx_string** %804
  %850 = call i1 @nyx_string_starts_with(%nyx_string* %848, %nyx_string* %849)
  br i1 %850, label %then231, label %else232
then231:
  store i1 0, i1* %796
  %851 = load %nyx_string*, %nyx_string** %844
  %852 = load %nyx_string*, %nyx_string** %807
  %853 = call i1 @nyx_string_equals(%nyx_string* %851, %nyx_string* %852)
  store i1 %853, i1* %797
  br label %merge233
else232:
  %854 = alloca i1
  store i1 false, i1* %854
  %855 = load i1, i1* %797
  br i1 %855, label %sc_and_rhs234, label %sc_and_end235
sc_and_rhs234:
  %856 = load %nyx_string*, %nyx_string** %844
  %857 = call %nyx_string* @parse_toml_key(%nyx_string* %856)
  %858 = load %nyx_string*, %nyx_string** %810
  %859 = call i1 @nyx_string_equals(%nyx_string* %857, %nyx_string* %858)
  store i1 %859, i1* %854
  br label %sc_and_end235
sc_and_end235:
  %860 = load i1, i1* %854
  br i1 %860, label %then236, label %else237
then236:
  %861 = load %nyx_string*, %nyx_string** %844
  %862 = load %nyx_string*, %nyx_string** %844
  %863 = load %nyx_string*, %nyx_string** %813
  %864 = call i64 @nyx_string_index_of(%nyx_string* %862, %nyx_string* %863)
  %865 = add i64 %864, 1
  %866 = load %nyx_string*, %nyx_string** %844
  %867 = call i64 @nyx_string_byte_length(%nyx_string* %866)
  %868 = call %nyx_string* @nyx_string_substring(%nyx_string* %861, i64 %865, i64 %867)
  %869 = call %nyx_string* @nyx_string_trim(%nyx_string* %868)
  %870 = alloca %nyx_string*
  store %nyx_string* %869, %nyx_string** %870
  %871 = load %nyx_string*, %nyx_string** %870
  %872 = load %nyx_string*, %nyx_string** %804
  %873 = load %nyx_string*, %nyx_string** %816
  %874 = call %nyx_string* @nyx_string_replace(%nyx_string* %871, %nyx_string* %872, %nyx_string* %873)
  %875 = load %nyx_string*, %nyx_string** %819
  %876 = load %nyx_string*, %nyx_string** %816
  %877 = call %nyx_string* @nyx_string_replace(%nyx_string* %874, %nyx_string* %875, %nyx_string* %876)
  %878 = load %nyx_string*, %nyx_string** %822
  %879 = load %nyx_string*, %nyx_string** %816
  %880 = call %nyx_string* @nyx_string_replace(%nyx_string* %877, %nyx_string* %878, %nyx_string* %879)
  %881 = load %nyx_string*, %nyx_string** %825
  %882 = load %nyx_string*, %nyx_string** %816
  %883 = call %nyx_string* @nyx_string_replace(%nyx_string* %880, %nyx_string* %881, %nyx_string* %882)
  store %nyx_string* %883, %nyx_string** %870
  %884 = load %nyx_string*, %nyx_string** %870
  %885 = getelementptr %TestConfig, %TestConfig* %779, i32 0, i32 8
  store %nyx_string* %884, %nyx_string** %885
  br label %merge238
else237:
  %886 = load i1, i1* %796
  br i1 %886, label %then239, label %else240
then239:
  %887 = load %nyx_string*, %nyx_string** %844
  %888 = call %nyx_string* @parse_toml_key(%nyx_string* %887)
  %889 = alloca %nyx_string*
  store %nyx_string* %888, %nyx_string** %889
  %890 = load %nyx_string*, %nyx_string** %844
  %891 = call %nyx_string* @parse_toml_value(%nyx_string* %890)
  %892 = alloca %nyx_string*
  store %nyx_string* %891, %nyx_string** %892
  %893 = load %nyx_string*, %nyx_string** %889
  %894 = load %nyx_string*, %nyx_string** %828
  %895 = call i1 @nyx_string_equals(%nyx_string* %893, %nyx_string* %894)
  br i1 %895, label %then242, label %else243
then242:
  %896 = load %nyx_string*, %nyx_string** %892
  %897 = getelementptr %TestConfig, %TestConfig* %779, i32 0, i32 0
  store %nyx_string* %896, %nyx_string** %897
  br label %merge244
else243:
  br label %merge244
merge244:
  %898 = load %nyx_string*, %nyx_string** %889
  %899 = load %nyx_string*, %nyx_string** %831
  %900 = call i1 @nyx_string_equals(%nyx_string* %898, %nyx_string* %899)
  br i1 %900, label %then245, label %else246
then245:
  %901 = load %nyx_string*, %nyx_string** %892
  %902 = call i64 @nyx_string_to_int(%nyx_string* %901)
  %903 = getelementptr %TestConfig, %TestConfig* %779, i32 0, i32 1
  store i64 %902, i64* %903
  br label %merge247
else246:
  br label %merge247
merge247:
  br label %merge241
else240:
  br label %merge241
merge241:
  br label %merge238
merge238:
  br label %merge233
merge233:
  br label %merge230
merge230:
  %904 = load i64, i64* %798
  %905 = add i64 %904, 1
  store i64 %905, i64* %798
  br label %while_cond225
while_end227:
  %906 = load %TestConfig, %TestConfig* %779
  ret %TestConfig %906
}

define internal { i64, i8* }* @discover_tests(
%TestConfig %config.param) {
  %config.ptr = alloca %TestConfig
  store %TestConfig %config.param, %TestConfig* %config.ptr
  %907 = call { i64, i8* }* @nyx_array_new_ptr()
  %908 = alloca { i64, i8* }*
  store { i64, i8* }* %907, { i64, i8* }** %908
  %909 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 0
  %910 = load %nyx_string*, %nyx_string** %909
  %911 = call i8* @nyx_string_to_cstr(%nyx_string* %910)
  %912 = call i1 @nyx_file_exists(i8* %911)
  br i1 %912, label %then248, label %else249
then248:
  %913 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 0
  %914 = load %nyx_string*, %nyx_string** %913
  %915 = call i8* @nyx_string_to_cstr(%nyx_string* %914)
  %916 = call { i64, i8* }* @nyx_readdir(i8* %915)
  %917 = alloca { i64, i8* }*
  store { i64, i8* }* %916, { i64, i8* }** %917
  %918 = alloca i64
  store i64 0, i64* %918
  %919 = getelementptr [4 x i8], [4 x i8]* @.str37, i32 0, i32 0
  %920 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str37.c, i8* %919, i64 3)
  %921 = alloca %nyx_string*
  store %nyx_string* %920, %nyx_string** %921
  %922 = getelementptr [2 x i8], [2 x i8]* @.str38, i32 0, i32 0
  %923 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str38.c, i8* %922, i64 1)
  %924 = alloca %nyx_string*
  store %nyx_string* %923, %nyx_string** %924
  %925 = getelementptr [1 x i8], [1 x i8]* @.str39, i32 0, i32 0
  %926 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str39.c, i8* %925, i64 0)
  %927 = alloca %nyx_string*
  store %nyx_string* %926, %nyx_string** %927
  %928 = call i8* @llvm.stacksave()
  br label %while_cond251
while_cond251:
  %929 = load i64, i64* %918
  %930 = load { i64, i8* }*, { i64, i8* }** %917
  %931 = call i64 @nyx_array_length({ i64, i8* }* %930)
  %932 = icmp slt i64 %929, %931
  br i1 %932, label %while_body252, label %while_end253
while_body252:
  call void @llvm.stackrestore(i8* %928)
  %933 = load { i64, i8* }*, { i64, i8* }** %917
  %934 = load i64, i64* %918
  %935 = call i64 @nyx_array_get_checked({ i64, i8* }* %933, i64 %934, i64 2)
  %936 = inttoptr i64 %935 to %nyx_string*
  %937 = alloca %nyx_string*
  store %nyx_string* %936, %nyx_string** %937
  %938 = load %nyx_string*, %nyx_string** %937
  %939 = load %nyx_string*, %nyx_string** %921
  %940 = call i1 @nyx_string_ends_with(%nyx_string* %938, %nyx_string* %939)
  br i1 %940, label %then254, label %else255
then254:
  %941 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 0
  %942 = load %nyx_string*, %nyx_string** %941
  %943 = load %nyx_string*, %nyx_string** %924
  %944 = call %nyx_string* @nyx_string_concat(%nyx_string* %942, %nyx_string* %943)
  %945 = load %nyx_string*, %nyx_string** %937
  %946 = call %nyx_string* @nyx_string_concat(%nyx_string* %944, %nyx_string* %945)
  %947 = alloca %nyx_string*
  store %nyx_string* %946, %nyx_string** %947
  %948 = alloca i1
  store i1 true, i1* %948
  %949 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 2
  %950 = load %nyx_string*, %nyx_string** %949
  %951 = load %nyx_string*, %nyx_string** %927
  %952 = call i1 @nyx_string_equals(%nyx_string* %950, %nyx_string* %951)
  br i1 %952, label %sc_or_end258, label %sc_or_rhs257
sc_or_rhs257:
  %953 = load %nyx_string*, %nyx_string** %937
  %954 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 2
  %955 = load %nyx_string*, %nyx_string** %954
  %956 = call i1 @nyx_string_contains(%nyx_string* %953, %nyx_string* %955)
  store i1 %956, i1* %948
  br label %sc_or_end258
sc_or_end258:
  %957 = load i1, i1* %948
  br i1 %957, label %then259, label %else260
then259:
  %958 = load { i64, i8* }*, { i64, i8* }** %908
  %959 = load %nyx_string*, %nyx_string** %947
  %960 = ptrtoint %nyx_string* %959 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %958, i64 %960, i64 2)
  br label %merge261
else260:
  br label %merge261
merge261:
  br label %merge256
else255:
  br label %merge256
merge256:
  %961 = load i64, i64* %918
  %962 = add i64 %961, 1
  store i64 %962, i64* %918
  br label %while_cond251
while_end253:
  br label %merge250
else249:
  br label %merge250
merge250:
  %963 = getelementptr [4 x i8], [4 x i8]* @.str40, i32 0, i32 0
  %964 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str40.c, i8* %963, i64 3)
  %965 = call i8* @nyx_string_to_cstr(%nyx_string* %964)
  %966 = call i1 @nyx_file_exists(i8* %965)
  br i1 %966, label %then262, label %else263
then262:
  %967 = getelementptr [4 x i8], [4 x i8]* @.str41, i32 0, i32 0
  %968 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str41.c, i8* %967, i64 3)
  %969 = call i8* @nyx_string_to_cstr(%nyx_string* %968)
  %970 = call { i64, i8* }* @nyx_readdir(i8* %969)
  %971 = alloca { i64, i8* }*
  store { i64, i8* }* %970, { i64, i8* }** %971
  %972 = alloca i64
  store i64 0, i64* %972
  %973 = getelementptr [9 x i8], [9 x i8]* @.str42, i32 0, i32 0
  %974 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str42.c, i8* %973, i64 8)
  %975 = alloca %nyx_string*
  store %nyx_string* %974, %nyx_string** %975
  %976 = getelementptr [5 x i8], [5 x i8]* @.str43, i32 0, i32 0
  %977 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str43.c, i8* %976, i64 4)
  %978 = alloca %nyx_string*
  store %nyx_string* %977, %nyx_string** %978
  %979 = getelementptr [1 x i8], [1 x i8]* @.str44, i32 0, i32 0
  %980 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str44.c, i8* %979, i64 0)
  %981 = alloca %nyx_string*
  store %nyx_string* %980, %nyx_string** %981
  %982 = call i8* @llvm.stacksave()
  br label %while_cond265
while_cond265:
  %983 = load i64, i64* %972
  %984 = load { i64, i8* }*, { i64, i8* }** %971
  %985 = call i64 @nyx_array_length({ i64, i8* }* %984)
  %986 = icmp slt i64 %983, %985
  br i1 %986, label %while_body266, label %while_end267
while_body266:
  call void @llvm.stackrestore(i8* %982)
  %987 = load { i64, i8* }*, { i64, i8* }** %971
  %988 = load i64, i64* %972
  %989 = call i64 @nyx_array_get_checked({ i64, i8* }* %987, i64 %988, i64 2)
  %990 = inttoptr i64 %989 to %nyx_string*
  %991 = alloca %nyx_string*
  store %nyx_string* %990, %nyx_string** %991
  %992 = load %nyx_string*, %nyx_string** %991
  %993 = load %nyx_string*, %nyx_string** %975
  %994 = call i1 @nyx_string_ends_with(%nyx_string* %992, %nyx_string* %993)
  br i1 %994, label %then268, label %else269
then268:
  %995 = load %nyx_string*, %nyx_string** %978
  %996 = load %nyx_string*, %nyx_string** %991
  %997 = call %nyx_string* @nyx_string_concat(%nyx_string* %995, %nyx_string* %996)
  %998 = alloca %nyx_string*
  store %nyx_string* %997, %nyx_string** %998
  %999 = alloca i1
  store i1 true, i1* %999
  %1000 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 2
  %1001 = load %nyx_string*, %nyx_string** %1000
  %1002 = load %nyx_string*, %nyx_string** %981
  %1003 = call i1 @nyx_string_equals(%nyx_string* %1001, %nyx_string* %1002)
  br i1 %1003, label %sc_or_end272, label %sc_or_rhs271
sc_or_rhs271:
  %1004 = load %nyx_string*, %nyx_string** %991
  %1005 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 2
  %1006 = load %nyx_string*, %nyx_string** %1005
  %1007 = call i1 @nyx_string_contains(%nyx_string* %1004, %nyx_string* %1006)
  store i1 %1007, i1* %999
  br label %sc_or_end272
sc_or_end272:
  %1008 = load i1, i1* %999
  br i1 %1008, label %then273, label %else274
then273:
  %1009 = load { i64, i8* }*, { i64, i8* }** %908
  %1010 = load %nyx_string*, %nyx_string** %998
  %1011 = ptrtoint %nyx_string* %1010 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1009, i64 %1011, i64 2)
  br label %merge275
else274:
  br label %merge275
merge275:
  br label %merge270
else269:
  br label %merge270
merge270:
  %1012 = load i64, i64* %972
  %1013 = add i64 %1012, 1
  store i64 %1013, i64* %972
  br label %while_cond265
while_end267:
  br label %merge264
else263:
  br label %merge264
merge264:
  %1014 = load { i64, i8* }*, { i64, i8* }** %908
  %1015 = call { i64, i8* }* @sort_str({ i64, i8* }* %1014)
  ret { i64, i8* }* %1015
}

define internal i1 @file_has_test_blocks(
%nyx_string* %path.param) {
  %path.ptr = alloca %nyx_string*
  store %nyx_string* %path.param, %nyx_string** %path.ptr
  %1016 = load %nyx_string*, %nyx_string** %path.ptr
  %1017 = call i8* @nyx_string_to_cstr(%nyx_string* %1016)
  %1018 = call %nyx_string* @nyx_read_file(i8* %1017)
  %1019 = alloca %nyx_string*
  store %nyx_string* %1018, %nyx_string** %1019
  %1020 = load %nyx_string*, %nyx_string** %1019
  %1021 = getelementptr [7 x i8], [7 x i8]* @.str45, i32 0, i32 0
  %1022 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str45.c, i8* %1021, i64 6)
  %1023 = call i1 @nyx_string_contains(%nyx_string* %1020, %nyx_string* %1022)
  ret i1 %1023
}

define internal %nyx_string* @lib_modulo_de(
%nyx_string* %file.param) {
  %file.ptr = alloca %nyx_string*
  store %nyx_string* %file.param, %nyx_string** %file.ptr
  %1024 = load %nyx_string*, %nyx_string** %file.ptr
  %1025 = alloca %nyx_string*
  store %nyx_string* %1024, %nyx_string** %1025
  %1026 = load %nyx_string*, %nyx_string** %1025
  %1027 = getelementptr [3 x i8], [3 x i8]* @.str46, i32 0, i32 0
  %1028 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str46.c, i8* %1027, i64 2)
  %1029 = call i1 @nyx_string_starts_with(%nyx_string* %1026, %nyx_string* %1028)
  br i1 %1029, label %then276, label %else277
then276:
  %1030 = load %nyx_string*, %nyx_string** %1025
  %1031 = load %nyx_string*, %nyx_string** %1025
  %1032 = call i64 @nyx_string_byte_length(%nyx_string* %1031)
  %1033 = call %nyx_string* @nyx_string_substring(%nyx_string* %1030, i64 2, i64 %1032)
  store %nyx_string* %1033, %nyx_string** %1025
  br label %merge278
else277:
  br label %merge278
merge278:
  %1034 = load %nyx_string*, %nyx_string** %1025
  %1035 = getelementptr [4 x i8], [4 x i8]* @.str47, i32 0, i32 0
  %1036 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str47.c, i8* %1035, i64 3)
  %1037 = call i1 @nyx_string_ends_with(%nyx_string* %1034, %nyx_string* %1036)
  br i1 %1037, label %then279, label %else280
then279:
  %1038 = load %nyx_string*, %nyx_string** %1025
  %1039 = load %nyx_string*, %nyx_string** %1025
  %1040 = call i64 @nyx_string_byte_length(%nyx_string* %1039)
  %1041 = sub i64 %1040, 3
  %1042 = call %nyx_string* @nyx_string_substring(%nyx_string* %1038, i64 0, i64 %1041)
  store %nyx_string* %1042, %nyx_string** %1025
  br label %merge281
else280:
  br label %merge281
merge281:
  %1043 = load %nyx_string*, %nyx_string** %1025
  ret %nyx_string* %1043
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
  %1044 = getelementptr [9 x i8], [9 x i8]* @.str48, i32 0, i32 0
  %1045 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str48.c, i8* %1044, i64 8)
  %1046 = call i8* @nyx_string_to_cstr(%nyx_string* %1045)
  %1047 = call %nyx_string* @nyx_getenv(i8* %1046)
  %1048 = alloca %nyx_string*
  store %nyx_string* %1047, %nyx_string** %1048
  %1049 = load %nyx_string*, %nyx_string** %1048
  %1050 = getelementptr [1 x i8], [1 x i8]* @.str49, i32 0, i32 0
  %1051 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str49.c, i8* %1050, i64 0)
  %1052 = call i1 @nyx_string_equals(%nyx_string* %1049, %nyx_string* %1051)
  br i1 %1052, label %then282, label %else283
then282:
  %1053 = getelementptr %TestResult, %TestResult* null, i32 1
  %1054 = ptrtoint %TestResult* %1053 to i64
  %1055 = call i8* @GC_malloc(i64 %1054)
  %1056 = bitcast i8* %1055 to %TestResult*
  %1057 = load %nyx_string*, %nyx_string** %file.ptr
  %1058 = getelementptr %TestResult, %TestResult* %1056, i32 0, i32 0
  store %nyx_string* %1057, %nyx_string** %1058
  %1059 = getelementptr %TestResult, %TestResult* %1056, i32 0, i32 1
  store i64 0, i64* %1059
  %1060 = getelementptr %TestResult, %TestResult* %1056, i32 0, i32 2
  store i64 0, i64* %1060
  %1061 = getelementptr [24 x i8], [24 x i8]* @.str50, i32 0, i32 0
  %1062 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str50.c, i8* %1061, i64 23)
  %1063 = getelementptr %TestResult, %TestResult* %1056, i32 0, i32 3
  store %nyx_string* %1062, %nyx_string** %1063
  %1064 = getelementptr %TestResult, %TestResult* %1056, i32 0, i32 4
  store i1 0, i1* %1064
  %1065 = load %TestResult, %TestResult* %1056
  ret %TestResult %1065
else283:
  br label %merge284
merge284:
  %1066 = getelementptr [4 x i8], [4 x i8]* @.str51, i32 0, i32 0
  %1067 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str51.c, i8* %1066, i64 3)
  %1068 = call i8* @nyx_string_to_cstr(%nyx_string* %1067)
  %1069 = call %nyx_string* @nyx_getenv(i8* %1068)
  %1070 = alloca %nyx_string*
  store %nyx_string* %1069, %nyx_string** %1070
  %1071 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 1
  %1072 = load i64, i64* %1071
  %1073 = call %nyx_string* @nyx_string_from_int(i64 %1072)
  %1074 = alloca %nyx_string*
  store %nyx_string* %1073, %nyx_string** %1074
  %1075 = getelementptr [31 x i8], [31 x i8]* @.str52, i32 0, i32 0
  %1076 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str52.c, i8* %1075, i64 30)
  %1077 = call i8* @nyx_string_to_cstr(%nyx_string* %1076)
  %1078 = call %nyx_string* @nyx_exec(i8* %1077)
  %1079 = call %nyx_string* @nyx_string_trim(%nyx_string* %1078)
  %1080 = alloca %nyx_string*
  store %nyx_string* %1079, %nyx_string** %1080
  %1081 = load %nyx_string*, %nyx_string** %1080
  %1082 = getelementptr [9 x i8], [9 x i8]* @.str53, i32 0, i32 0
  %1083 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str53.c, i8* %1082, i64 8)
  %1084 = call %nyx_string* @nyx_string_concat(%nyx_string* %1081, %nyx_string* %1083)
  %1085 = alloca %nyx_string*
  store %nyx_string* %1084, %nyx_string** %1085
  %1086 = load %nyx_string*, %nyx_string** %1080
  %1087 = getelementptr [5 x i8], [5 x i8]* @.str54, i32 0, i32 0
  %1088 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str54.c, i8* %1087, i64 4)
  %1089 = call %nyx_string* @nyx_string_concat(%nyx_string* %1086, %nyx_string* %1088)
  %1090 = alloca %nyx_string*
  store %nyx_string* %1089, %nyx_string** %1090
  %1091 = getelementptr [1 x i8], [1 x i8]* @.str55, i32 0, i32 0
  %1092 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str55.c, i8* %1091, i64 0)
  %1093 = alloca %nyx_string*
  store %nyx_string* %1092, %nyx_string** %1093
  %1094 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 7
  %1095 = load i1, i1* %1094
  br i1 %1095, label %then285, label %else286
then285:
  %1096 = getelementptr [5 x i8], [5 x i8]* @.str56, i32 0, i32 0
  %1097 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str56.c, i8* %1096, i64 4)
  store %nyx_string* %1097, %nyx_string** %1093
  br label %merge287
else286:
  br label %merge287
merge287:
  %1098 = getelementptr [62 x i8], [62 x i8]* @.str57, i32 0, i32 0
  %1099 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str57.c, i8* %1098, i64 61)
  %1100 = getelementptr [54 x i8], [54 x i8]* @.str58, i32 0, i32 0
  %1101 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str58.c, i8* %1100, i64 53)
  %1102 = call %nyx_string* @nyx_string_concat(%nyx_string* %1099, %nyx_string* %1101)
  %1103 = getelementptr [48 x i8], [48 x i8]* @.str59, i32 0, i32 0
  %1104 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str59.c, i8* %1103, i64 47)
  %1105 = call %nyx_string* @nyx_string_concat(%nyx_string* %1102, %nyx_string* %1104)
  %1106 = getelementptr [47 x i8], [47 x i8]* @.str60, i32 0, i32 0
  %1107 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str60.c, i8* %1106, i64 46)
  %1108 = call %nyx_string* @nyx_string_concat(%nyx_string* %1105, %nyx_string* %1107)
  %1109 = getelementptr [67 x i8], [67 x i8]* @.str61, i32 0, i32 0
  %1110 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str61.c, i8* %1109, i64 66)
  %1111 = call %nyx_string* @nyx_string_concat(%nyx_string* %1108, %nyx_string* %1110)
  %1112 = getelementptr [51 x i8], [51 x i8]* @.str62, i32 0, i32 0
  %1113 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str62.c, i8* %1112, i64 50)
  %1114 = call %nyx_string* @nyx_string_concat(%nyx_string* %1111, %nyx_string* %1113)
  %1115 = getelementptr [91 x i8], [91 x i8]* @.str63, i32 0, i32 0
  %1116 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str63.c, i8* %1115, i64 90)
  %1117 = call %nyx_string* @nyx_string_concat(%nyx_string* %1114, %nyx_string* %1116)
  %1118 = getelementptr [23 x i8], [23 x i8]* @.str64, i32 0, i32 0
  %1119 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str64.c, i8* %1118, i64 22)
  %1120 = call %nyx_string* @nyx_string_concat(%nyx_string* %1117, %nyx_string* %1119)
  %1121 = alloca %nyx_string*
  store %nyx_string* %1120, %nyx_string** %1121
  %1122 = getelementptr [15 x i8], [15 x i8]* @.str65, i32 0, i32 0
  %1123 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str65.c, i8* %1122, i64 14)
  %1124 = call i8* @nyx_string_to_cstr(%nyx_string* %1123)
  %1125 = call %nyx_string* @nyx_getenv(i8* %1124)
  %1126 = alloca %nyx_string*
  store %nyx_string* %1125, %nyx_string** %1126
  %1127 = alloca i1
  store i1 false, i1* %1127
  %1128 = load %nyx_string*, %nyx_string** %1126
  %1129 = getelementptr [1 x i8], [1 x i8]* @.str66, i32 0, i32 0
  %1130 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str66.c, i8* %1129, i64 0)
  %1131 = call i1 @nyx_string_equals(%nyx_string* %1128, %nyx_string* %1130)
  %1132 = xor i1 %1131, true
  br i1 %1132, label %sc_and_rhs288, label %sc_and_end289
sc_and_rhs288:
  %1133 = load %nyx_string*, %nyx_string** %1126
  %1134 = getelementptr [2 x i8], [2 x i8]* @.str67, i32 0, i32 0
  %1135 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str67.c, i8* %1134, i64 1)
  %1136 = call i1 @nyx_string_starts_with(%nyx_string* %1133, %nyx_string* %1135)
  %1137 = xor i1 %1136, true
  store i1 %1137, i1* %1127
  br label %sc_and_end289
sc_and_end289:
  %1138 = load i1, i1* %1127
  br i1 %1138, label %then290, label %else291
then290:
  %1139 = load %nyx_string*, %nyx_string** %1070
  %1140 = getelementptr [2 x i8], [2 x i8]* @.str68, i32 0, i32 0
  %1141 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str68.c, i8* %1140, i64 1)
  %1142 = call %nyx_string* @nyx_string_concat(%nyx_string* %1139, %nyx_string* %1141)
  %1143 = load %nyx_string*, %nyx_string** %1126
  %1144 = call %nyx_string* @nyx_string_concat(%nyx_string* %1142, %nyx_string* %1143)
  store %nyx_string* %1144, %nyx_string** %1126
  br label %merge292
else291:
  br label %merge292
merge292:
  %1145 = alloca i1
  store i1 false, i1* %1145
  %1146 = load %nyx_string*, %nyx_string** %1126
  %1147 = getelementptr [1 x i8], [1 x i8]* @.str69, i32 0, i32 0
  %1148 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str69.c, i8* %1147, i64 0)
  %1149 = call i1 @nyx_string_equals(%nyx_string* %1146, %nyx_string* %1148)
  %1150 = xor i1 %1149, true
  br i1 %1150, label %sc_and_rhs293, label %sc_and_end294
sc_and_rhs293:
  %1151 = load %nyx_string*, %nyx_string** %1126
  %1152 = call i8* @nyx_string_to_cstr(%nyx_string* %1151)
  %1153 = call i1 @nyx_file_exists(i8* %1152)
  store i1 %1153, i1* %1145
  br label %sc_and_end294
sc_and_end294:
  %1154 = load i1, i1* %1145
  br i1 %1154, label %then295, label %else296
then295:
  %1155 = getelementptr [2 x i8], [2 x i8]* @.str70, i32 0, i32 0
  %1156 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str70.c, i8* %1155, i64 1)
  %1157 = load %nyx_string*, %nyx_string** %1126
  %1158 = call %nyx_string* @nyx_string_concat(%nyx_string* %1156, %nyx_string* %1157)
  %1159 = getelementptr [3 x i8], [3 x i8]* @.str71, i32 0, i32 0
  %1160 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str71.c, i8* %1159, i64 2)
  %1161 = call %nyx_string* @nyx_string_concat(%nyx_string* %1158, %nyx_string* %1160)
  store %nyx_string* %1161, %nyx_string** %1121
  br label %merge297
else296:
  br label %merge297
merge297:
  %1162 = getelementptr [1 x i8], [1 x i8]* @.str72, i32 0, i32 0
  %1163 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str72.c, i8* %1162, i64 0)
  %1164 = alloca %nyx_string*
  store %nyx_string* %1163, %nyx_string** %1164
  %1165 = getelementptr [1 x i8], [1 x i8]* @.str73, i32 0, i32 0
  %1166 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str73.c, i8* %1165, i64 0)
  %1167 = alloca %nyx_string*
  store %nyx_string* %1166, %nyx_string** %1167
  %1168 = getelementptr [1 x i8], [1 x i8]* @.str74, i32 0, i32 0
  %1169 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str74.c, i8* %1168, i64 0)
  %1170 = alloca %nyx_string*
  store %nyx_string* %1169, %nyx_string** %1170
  %1171 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %1172 = getelementptr [1 x i8], [1 x i8]* @.str75, i32 0, i32 0
  %1173 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str75.c, i8* %1172, i64 0)
  %1174 = call i1 @nyx_string_equals(%nyx_string* %1171, %nyx_string* %1173)
  %1175 = xor i1 %1174, true
  br i1 %1175, label %then298, label %else299
then298:
  %1176 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %1177 = getelementptr [2 x i8], [2 x i8]* @.str76, i32 0, i32 0
  %1178 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str76.c, i8* %1177, i64 1)
  %1179 = call %nyx_string* @nyx_string_concat(%nyx_string* %1176, %nyx_string* %1178)
  %1180 = load i64, i64* %cov_idx.ptr
  %1181 = call %nyx_string* @nyx_string_from_int(i64 %1180)
  %1182 = call %nyx_string* @nyx_string_concat(%nyx_string* %1179, %nyx_string* %1181)
  %1183 = alloca %nyx_string*
  store %nyx_string* %1182, %nyx_string** %1183
  %1184 = getelementptr [20 x i8], [20 x i8]* @.str77, i32 0, i32 0
  %1185 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str77.c, i8* %1184, i64 19)
  %1186 = load %nyx_string*, %nyx_string** %1183
  %1187 = call %nyx_string* @nyx_string_concat(%nyx_string* %1185, %nyx_string* %1186)
  %1188 = getelementptr [6 x i8], [6 x i8]* @.str78, i32 0, i32 0
  %1189 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str78.c, i8* %1188, i64 5)
  %1190 = call %nyx_string* @nyx_string_concat(%nyx_string* %1187, %nyx_string* %1189)
  store %nyx_string* %1190, %nyx_string** %1164
  %1191 = getelementptr [62 x i8], [62 x i8]* @.str79, i32 0, i32 0
  %1192 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str79.c, i8* %1191, i64 61)
  store %nyx_string* %1192, %nyx_string** %1167
  %1193 = getelementptr [20 x i8], [20 x i8]* @.str80, i32 0, i32 0
  %1194 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str80.c, i8* %1193, i64 19)
  %1195 = load %nyx_string*, %nyx_string** %1183
  %1196 = call %nyx_string* @nyx_string_concat(%nyx_string* %1194, %nyx_string* %1195)
  %1197 = getelementptr [11 x i8], [11 x i8]* @.str81, i32 0, i32 0
  %1198 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str81.c, i8* %1197, i64 10)
  %1199 = call %nyx_string* @nyx_string_concat(%nyx_string* %1196, %nyx_string* %1198)
  store %nyx_string* %1199, %nyx_string** %1170
  br label %merge300
else299:
  br label %merge300
merge300:
  %1200 = getelementptr [20 x i8], [20 x i8]* @.str82, i32 0, i32 0
  %1201 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str82.c, i8* %1200, i64 19)
  %1202 = getelementptr [180 x i8], [180 x i8]* @.str83, i32 0, i32 0
  %1203 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str83.c, i8* %1202, i64 179)
  %1204 = call %nyx_string* @nyx_string_concat(%nyx_string* %1201, %nyx_string* %1203)
  %1205 = getelementptr [322 x i8], [322 x i8]* @.str84, i32 0, i32 0
  %1206 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str84.c, i8* %1205, i64 321)
  %1207 = call %nyx_string* @nyx_string_concat(%nyx_string* %1204, %nyx_string* %1206)
  %1208 = alloca %nyx_string*
  store %nyx_string* %1207, %nyx_string** %1208
  %1209 = load %nyx_string*, %nyx_string** %file.ptr
  %1210 = call %nyx_string* @lib_modulo_de(%nyx_string* %1209)
  %1211 = alloca %nyx_string*
  store %nyx_string* %1210, %nyx_string** %1211
  %1212 = getelementptr [1 x i8], [1 x i8]* @.str85, i32 0, i32 0
  %1213 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str85.c, i8* %1212, i64 0)
  %1214 = alloca %nyx_string*
  store %nyx_string* %1213, %nyx_string** %1214
  %1215 = getelementptr [1 x i8], [1 x i8]* @.str86, i32 0, i32 0
  %1216 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str86.c, i8* %1215, i64 0)
  %1217 = alloca %nyx_string*
  store %nyx_string* %1216, %nyx_string** %1217
  %1218 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 9
  %1219 = load %nyx_string*, %nyx_string** %1218
  %1220 = getelementptr [1 x i8], [1 x i8]* @.str87, i32 0, i32 0
  %1221 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str87.c, i8* %1220, i64 0)
  %1222 = call i1 @nyx_string_equals(%nyx_string* %1219, %nyx_string* %1221)
  %1223 = xor i1 %1222, true
  br i1 %1223, label %then301, label %else302
then301:
  %1224 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 8
  %1225 = load %nyx_string*, %nyx_string** %1224
  %1226 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 8
  %1227 = load %nyx_string*, %nyx_string** %1226
  %1228 = getelementptr [2 x i8], [2 x i8]* @.str88, i32 0, i32 0
  %1229 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str88.c, i8* %1228, i64 1)
  %1230 = call { i64, i8* }* @nyx_string_split(%nyx_string* %1227, %nyx_string* %1229)
  %1231 = alloca { i64, i8* }*
  store { i64, i8* }* %1230, { i64, i8* }** %1231
  %1232 = getelementptr [1 x i8], [1 x i8]* @.str89, i32 0, i32 0
  %1233 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str89.c, i8* %1232, i64 0)
  %1234 = alloca %nyx_string*
  store %nyx_string* %1233, %nyx_string** %1234
  %1235 = alloca i64
  store i64 0, i64* %1235
  %1236 = getelementptr [1 x i8], [1 x i8]* @.str90, i32 0, i32 0
  %1237 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str90.c, i8* %1236, i64 0)
  %1238 = alloca %nyx_string*
  store %nyx_string* %1237, %nyx_string** %1238
  %1239 = getelementptr [2 x i8], [2 x i8]* @.str91, i32 0, i32 0
  %1240 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str91.c, i8* %1239, i64 1)
  %1241 = alloca %nyx_string*
  store %nyx_string* %1240, %nyx_string** %1241
  %1242 = call i8* @llvm.stacksave()
  br label %while_cond304
while_cond304:
  %1243 = load i64, i64* %1235
  %1244 = load { i64, i8* }*, { i64, i8* }** %1231
  %1245 = call i64 @nyx_array_length({ i64, i8* }* %1244)
  %1246 = icmp slt i64 %1243, %1245
  br i1 %1246, label %while_body305, label %while_end306
while_body305:
  call void @llvm.stackrestore(i8* %1242)
  %1247 = load { i64, i8* }*, { i64, i8* }** %1231
  %1248 = load i64, i64* %1235
  %1249 = call i64 @nyx_array_get_checked({ i64, i8* }* %1247, i64 %1248, i64 2)
  %1250 = inttoptr i64 %1249 to %nyx_string*
  %1251 = alloca %nyx_string*
  store %nyx_string* %1250, %nyx_string** %1251
  %1252 = alloca i1
  store i1 false, i1* %1252
  %1253 = load %nyx_string*, %nyx_string** %1251
  %1254 = load %nyx_string*, %nyx_string** %1238
  %1255 = call i1 @nyx_string_equals(%nyx_string* %1253, %nyx_string* %1254)
  %1256 = xor i1 %1255, true
  br i1 %1256, label %sc_and_rhs307, label %sc_and_end308
sc_and_rhs307:
  %1257 = load %nyx_string*, %nyx_string** %1251
  %1258 = load %nyx_string*, %nyx_string** %1211
  %1259 = call i1 @nyx_string_equals(%nyx_string* %1257, %nyx_string* %1258)
  %1260 = xor i1 %1259, true
  store i1 %1260, i1* %1252
  br label %sc_and_end308
sc_and_end308:
  %1261 = load i1, i1* %1252
  br i1 %1261, label %then309, label %else310
then309:
  %1262 = load %nyx_string*, %nyx_string** %1234
  %1263 = load %nyx_string*, %nyx_string** %1238
  %1264 = call i1 @nyx_string_equals(%nyx_string* %1262, %nyx_string* %1263)
  %1265 = xor i1 %1264, true
  br i1 %1265, label %then312, label %else313
then312:
  %1266 = load %nyx_string*, %nyx_string** %1234
  %1267 = load %nyx_string*, %nyx_string** %1241
  %1268 = call %nyx_string* @nyx_string_concat(%nyx_string* %1266, %nyx_string* %1267)
  store %nyx_string* %1268, %nyx_string** %1234
  br label %merge314
else313:
  br label %merge314
merge314:
  %1269 = load %nyx_string*, %nyx_string** %1234
  %1270 = load %nyx_string*, %nyx_string** %1251
  %1271 = call %nyx_string* @nyx_string_concat(%nyx_string* %1269, %nyx_string* %1270)
  store %nyx_string* %1271, %nyx_string** %1234
  br label %merge311
else310:
  br label %merge311
merge311:
  %1272 = load i64, i64* %1235
  %1273 = add i64 %1272, 1
  store i64 %1273, i64* %1235
  br label %while_cond304
while_end306:
  %1274 = load %nyx_string*, %nyx_string** %1234
  %1275 = getelementptr [1 x i8], [1 x i8]* @.str92, i32 0, i32 0
  %1276 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str92.c, i8* %1275, i64 0)
  %1277 = call i1 @nyx_string_equals(%nyx_string* %1274, %nyx_string* %1276)
  %1278 = xor i1 %1277, true
  br i1 %1278, label %then315, label %else316
then315:
  %1279 = getelementptr [19 x i8], [19 x i8]* @.str93, i32 0, i32 0
  %1280 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str93.c, i8* %1279, i64 18)
  %1281 = load %nyx_string*, %nyx_string** %1234
  %1282 = call %nyx_string* @nyx_string_concat(%nyx_string* %1280, %nyx_string* %1281)
  %1283 = getelementptr [2 x i8], [2 x i8]* @.str94, i32 0, i32 0
  %1284 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str94.c, i8* %1283, i64 1)
  %1285 = call %nyx_string* @nyx_string_concat(%nyx_string* %1282, %nyx_string* %1284)
  store %nyx_string* %1285, %nyx_string** %1214
  br label %merge317
else316:
  br label %merge317
merge317:
  %1286 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 9
  %1287 = load %nyx_string*, %nyx_string** %1286
  %1288 = getelementptr %TestConfig, %TestConfig* %config.ptr, i32 0, i32 9
  %1289 = load %nyx_string*, %nyx_string** %1288
  %1290 = getelementptr [2 x i8], [2 x i8]* @.str95, i32 0, i32 0
  %1291 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str95.c, i8* %1290, i64 1)
  %1292 = call { i64, i8* }* @nyx_string_split(%nyx_string* %1289, %nyx_string* %1291)
  %1293 = alloca { i64, i8* }*
  store { i64, i8* }* %1292, { i64, i8* }** %1293
  %1294 = alloca i64
  store i64 0, i64* %1294
  %1295 = getelementptr [2 x i8], [2 x i8]* @.str96, i32 0, i32 0
  %1296 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str96.c, i8* %1295, i64 1)
  %1297 = alloca %nyx_string*
  store %nyx_string* %1296, %nyx_string** %1297
  %1298 = getelementptr [2 x i8], [2 x i8]* @.str97, i32 0, i32 0
  %1299 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str97.c, i8* %1298, i64 1)
  %1300 = alloca %nyx_string*
  store %nyx_string* %1299, %nyx_string** %1300
  %1301 = getelementptr [3 x i8], [3 x i8]* @.str98, i32 0, i32 0
  %1302 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str98.c, i8* %1301, i64 2)
  %1303 = alloca %nyx_string*
  store %nyx_string* %1302, %nyx_string** %1303
  %1304 = call i8* @llvm.stacksave()
  br label %while_cond318
while_cond318:
  %1305 = load i64, i64* %1294
  %1306 = load { i64, i8* }*, { i64, i8* }** %1293
  %1307 = call i64 @nyx_array_length({ i64, i8* }* %1306)
  %1308 = icmp slt i64 %1305, %1307
  br i1 %1308, label %while_body319, label %while_end320
while_body319:
  call void @llvm.stackrestore(i8* %1304)
  %1309 = load { i64, i8* }*, { i64, i8* }** %1293
  %1310 = load i64, i64* %1294
  %1311 = call i64 @nyx_array_get_checked({ i64, i8* }* %1309, i64 %1310, i64 2)
  %1312 = inttoptr i64 %1311 to %nyx_string*
  %1313 = alloca %nyx_string*
  store %nyx_string* %1312, %nyx_string** %1313
  %1314 = load %nyx_string*, %nyx_string** %1313
  %1315 = load %nyx_string*, %nyx_string** %1297
  %1316 = call i64 @nyx_string_index_of(%nyx_string* %1314, %nyx_string* %1315)
  %1317 = alloca i64
  store i64 %1316, i64* %1317
  %1318 = load i64, i64* %1317
  %1319 = icmp sgt i64 %1318, 0
  br i1 %1319, label %then321, label %else322
then321:
  %1320 = load %nyx_string*, %nyx_string** %1313
  %1321 = load i64, i64* %1317
  %1322 = call %nyx_string* @nyx_string_substring(%nyx_string* %1320, i64 0, i64 %1321)
  %1323 = alloca %nyx_string*
  store %nyx_string* %1322, %nyx_string** %1323
  %1324 = load %nyx_string*, %nyx_string** %1323
  %1325 = load %nyx_string*, %nyx_string** %1211
  %1326 = call i1 @nyx_string_equals(%nyx_string* %1324, %nyx_string* %1325)
  %1327 = xor i1 %1326, true
  br i1 %1327, label %then324, label %else325
then324:
  %1328 = load %nyx_string*, %nyx_string** %1217
  %1329 = load %nyx_string*, %nyx_string** %1300
  %1330 = call %nyx_string* @nyx_string_concat(%nyx_string* %1328, %nyx_string* %1329)
  %1331 = load %nyx_string*, %nyx_string** %1313
  %1332 = load i64, i64* %1317
  %1333 = add i64 %1332, 1
  %1334 = load %nyx_string*, %nyx_string** %1313
  %1335 = call i64 @nyx_string_byte_length(%nyx_string* %1334)
  %1336 = call %nyx_string* @nyx_string_substring(%nyx_string* %1331, i64 %1333, i64 %1335)
  %1337 = call %nyx_string* @nyx_string_concat(%nyx_string* %1330, %nyx_string* %1336)
  %1338 = load %nyx_string*, %nyx_string** %1303
  %1339 = call %nyx_string* @nyx_string_concat(%nyx_string* %1337, %nyx_string* %1338)
  store %nyx_string* %1339, %nyx_string** %1217
  br label %merge326
else325:
  br label %merge326
merge326:
  br label %merge323
else322:
  br label %merge323
merge323:
  %1340 = load i64, i64* %1294
  %1341 = add i64 %1340, 1
  store i64 %1341, i64* %1294
  br label %while_cond318
while_end320:
  br label %merge303
else302:
  br label %merge303
merge303:
  %1342 = getelementptr [55 x i8], [55 x i8]* @.str99, i32 0, i32 0
  %1343 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str99.c, i8* %1342, i64 54)
  %1344 = load %nyx_string*, %nyx_string** %1070
  %1345 = call %nyx_string* @nyx_string_concat(%nyx_string* %1343, %nyx_string* %1344)
  %1346 = getelementptr [37 x i8], [37 x i8]* @.str100, i32 0, i32 0
  %1347 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str100.c, i8* %1346, i64 36)
  %1348 = call %nyx_string* @nyx_string_concat(%nyx_string* %1345, %nyx_string* %1347)
  %1349 = load %nyx_string*, %nyx_string** %file.ptr
  %1350 = call %nyx_string* @nyx_string_concat(%nyx_string* %1348, %nyx_string* %1349)
  %1351 = getelementptr [2 x i8], [2 x i8]* @.str101, i32 0, i32 0
  %1352 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str101.c, i8* %1351, i64 1)
  %1353 = call %nyx_string* @nyx_string_concat(%nyx_string* %1350, %nyx_string* %1352)
  %1354 = load %nyx_string*, %nyx_string** %1164
  %1355 = call %nyx_string* @nyx_string_concat(%nyx_string* %1353, %nyx_string* %1354)
  %1356 = load %nyx_string*, %nyx_string** %1214
  %1357 = call %nyx_string* @nyx_string_concat(%nyx_string* %1355, %nyx_string* %1356)
  %1358 = getelementptr [22 x i8], [22 x i8]* @.str102, i32 0, i32 0
  %1359 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str102.c, i8* %1358, i64 21)
  %1360 = call %nyx_string* @nyx_string_concat(%nyx_string* %1357, %nyx_string* %1359)
  %1361 = load %nyx_string*, %nyx_string** %1085
  %1362 = call %nyx_string* @nyx_string_concat(%nyx_string* %1360, %nyx_string* %1361)
  %1363 = getelementptr [36 x i8], [36 x i8]* @.str103, i32 0, i32 0
  %1364 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str103.c, i8* %1363, i64 35)
  %1365 = call %nyx_string* @nyx_string_concat(%nyx_string* %1362, %nyx_string* %1364)
  %1366 = load %nyx_string*, %nyx_string** %1085
  %1367 = call %nyx_string* @nyx_string_concat(%nyx_string* %1365, %nyx_string* %1366)
  %1368 = getelementptr [13 x i8], [13 x i8]* @.str104, i32 0, i32 0
  %1369 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str104.c, i8* %1368, i64 12)
  %1370 = call %nyx_string* @nyx_string_concat(%nyx_string* %1367, %nyx_string* %1369)
  %1371 = alloca %nyx_string*
  store %nyx_string* %1370, %nyx_string** %1371
  %1372 = load %nyx_string*, %nyx_string** %1208
  %1373 = getelementptr [42 x i8], [42 x i8]* @.str105, i32 0, i32 0
  %1374 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str105.c, i8* %1373, i64 41)
  %1375 = call %nyx_string* @nyx_string_concat(%nyx_string* %1372, %nyx_string* %1374)
  %1376 = getelementptr [17 x i8], [17 x i8]* @.str106, i32 0, i32 0
  %1377 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str106.c, i8* %1376, i64 16)
  %1378 = call %nyx_string* @nyx_string_concat(%nyx_string* %1375, %nyx_string* %1377)
  %1379 = getelementptr [31 x i8], [31 x i8]* @.str107, i32 0, i32 0
  %1380 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str107.c, i8* %1379, i64 30)
  %1381 = call %nyx_string* @nyx_string_concat(%nyx_string* %1378, %nyx_string* %1380)
  %1382 = getelementptr [17 x i8], [17 x i8]* @.str108, i32 0, i32 0
  %1383 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str108.c, i8* %1382, i64 16)
  %1384 = call %nyx_string* @nyx_string_concat(%nyx_string* %1381, %nyx_string* %1383)
  %1385 = getelementptr [5 x i8], [5 x i8]* @.str109, i32 0, i32 0
  %1386 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str109.c, i8* %1385, i64 4)
  %1387 = call %nyx_string* @nyx_string_concat(%nyx_string* %1384, %nyx_string* %1386)
  %1388 = load %nyx_string*, %nyx_string** %1070
  %1389 = call %nyx_string* @nyx_string_concat(%nyx_string* %1387, %nyx_string* %1388)
  %1390 = getelementptr [2 x i8], [2 x i8]* @.str110, i32 0, i32 0
  %1391 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str110.c, i8* %1390, i64 1)
  %1392 = call %nyx_string* @nyx_string_concat(%nyx_string* %1389, %nyx_string* %1391)
  %1393 = load %nyx_string*, %nyx_string** %file.ptr
  %1394 = call %nyx_string* @nyx_string_concat(%nyx_string* %1392, %nyx_string* %1393)
  %1395 = getelementptr [12 x i8], [12 x i8]* @.str111, i32 0, i32 0
  %1396 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str111.c, i8* %1395, i64 11)
  %1397 = call %nyx_string* @nyx_string_concat(%nyx_string* %1394, %nyx_string* %1396)
  %1398 = getelementptr [5 x i8], [5 x i8]* @.str112, i32 0, i32 0
  %1399 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str112.c, i8* %1398, i64 4)
  %1400 = call %nyx_string* @nyx_string_concat(%nyx_string* %1397, %nyx_string* %1399)
  %1401 = load %nyx_string*, %nyx_string** %1048
  %1402 = call %nyx_string* @nyx_string_concat(%nyx_string* %1400, %nyx_string* %1401)
  %1403 = getelementptr [3 x i8], [3 x i8]* @.str113, i32 0, i32 0
  %1404 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str113.c, i8* %1403, i64 2)
  %1405 = call %nyx_string* @nyx_string_concat(%nyx_string* %1402, %nyx_string* %1404)
  %1406 = getelementptr [51 x i8], [51 x i8]* @.str114, i32 0, i32 0
  %1407 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str114.c, i8* %1406, i64 50)
  %1408 = call %nyx_string* @nyx_string_concat(%nyx_string* %1405, %nyx_string* %1407)
  %1409 = load %nyx_string*, %nyx_string** %1048
  %1410 = call %nyx_string* @nyx_string_concat(%nyx_string* %1408, %nyx_string* %1409)
  %1411 = getelementptr [35 x i8], [35 x i8]* @.str115, i32 0, i32 0
  %1412 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str115.c, i8* %1411, i64 34)
  %1413 = call %nyx_string* @nyx_string_concat(%nyx_string* %1410, %nyx_string* %1412)
  %1414 = load %nyx_string*, %nyx_string** %1371
  %1415 = call %nyx_string* @nyx_string_concat(%nyx_string* %1413, %nyx_string* %1414)
  %1416 = getelementptr [7 x i8], [7 x i8]* @.str116, i32 0, i32 0
  %1417 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str116.c, i8* %1416, i64 6)
  %1418 = call %nyx_string* @nyx_string_concat(%nyx_string* %1415, %nyx_string* %1417)
  %1419 = load %nyx_string*, %nyx_string** %1093
  %1420 = call %nyx_string* @nyx_string_concat(%nyx_string* %1418, %nyx_string* %1419)
  %1421 = load %nyx_string*, %nyx_string** %1167
  %1422 = call %nyx_string* @nyx_string_concat(%nyx_string* %1420, %nyx_string* %1421)
  %1423 = getelementptr [40 x i8], [40 x i8]* @.str117, i32 0, i32 0
  %1424 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str117.c, i8* %1423, i64 39)
  %1425 = call %nyx_string* @nyx_string_concat(%nyx_string* %1422, %nyx_string* %1424)
  %1426 = load %nyx_string*, %nyx_string** %1217
  %1427 = call %nyx_string* @nyx_string_concat(%nyx_string* %1425, %nyx_string* %1426)
  %1428 = load %nyx_string*, %nyx_string** %1121
  %1429 = call %nyx_string* @nyx_string_concat(%nyx_string* %1427, %nyx_string* %1428)
  %1430 = getelementptr [44 x i8], [44 x i8]* @.str118, i32 0, i32 0
  %1431 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str118.c, i8* %1430, i64 43)
  %1432 = call %nyx_string* @nyx_string_concat(%nyx_string* %1429, %nyx_string* %1431)
  %1433 = getelementptr [4 x i8], [4 x i8]* @.str119, i32 0, i32 0
  %1434 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str119.c, i8* %1433, i64 3)
  %1435 = call %nyx_string* @nyx_string_concat(%nyx_string* %1432, %nyx_string* %1434)
  %1436 = load %nyx_string*, %nyx_string** %1090
  %1437 = call %nyx_string* @nyx_string_concat(%nyx_string* %1435, %nyx_string* %1436)
  %1438 = getelementptr [6 x i8], [6 x i8]* @.str120, i32 0, i32 0
  %1439 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str120.c, i8* %1438, i64 5)
  %1440 = call %nyx_string* @nyx_string_concat(%nyx_string* %1437, %nyx_string* %1439)
  %1441 = load %nyx_string*, %nyx_string** %1085
  %1442 = call %nyx_string* @nyx_string_concat(%nyx_string* %1440, %nyx_string* %1441)
  %1443 = getelementptr [2 x i8], [2 x i8]* @.str121, i32 0, i32 0
  %1444 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str121.c, i8* %1443, i64 1)
  %1445 = call %nyx_string* @nyx_string_concat(%nyx_string* %1442, %nyx_string* %1444)
  %1446 = getelementptr [57 x i8], [57 x i8]* @.str122, i32 0, i32 0
  %1447 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str122.c, i8* %1446, i64 56)
  %1448 = call %nyx_string* @nyx_string_concat(%nyx_string* %1445, %nyx_string* %1447)
  %1449 = load %nyx_string*, %nyx_string** %1170
  %1450 = call %nyx_string* @nyx_string_concat(%nyx_string* %1448, %nyx_string* %1449)
  %1451 = getelementptr [9 x i8], [9 x i8]* @.str123, i32 0, i32 0
  %1452 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str123.c, i8* %1451, i64 8)
  %1453 = call %nyx_string* @nyx_string_concat(%nyx_string* %1450, %nyx_string* %1452)
  %1454 = load %nyx_string*, %nyx_string** %1074
  %1455 = call %nyx_string* @nyx_string_concat(%nyx_string* %1453, %nyx_string* %1454)
  %1456 = getelementptr [2 x i8], [2 x i8]* @.str124, i32 0, i32 0
  %1457 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str124.c, i8* %1456, i64 1)
  %1458 = call %nyx_string* @nyx_string_concat(%nyx_string* %1455, %nyx_string* %1457)
  %1459 = load %nyx_string*, %nyx_string** %1090
  %1460 = call %nyx_string* @nyx_string_concat(%nyx_string* %1458, %nyx_string* %1459)
  %1461 = getelementptr [4 x i8], [4 x i8]* @.str125, i32 0, i32 0
  %1462 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str125.c, i8* %1461, i64 3)
  %1463 = call %nyx_string* @nyx_string_concat(%nyx_string* %1460, %nyx_string* %1462)
  %1464 = load %nyx_string*, %nyx_string** %1085
  %1465 = call %nyx_string* @nyx_string_concat(%nyx_string* %1463, %nyx_string* %1464)
  %1466 = getelementptr [7 x i8], [7 x i8]* @.str126, i32 0, i32 0
  %1467 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str126.c, i8* %1466, i64 6)
  %1468 = call %nyx_string* @nyx_string_concat(%nyx_string* %1465, %nyx_string* %1467)
  %1469 = getelementptr [14 x i8], [14 x i8]* @.str127, i32 0, i32 0
  %1470 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str127.c, i8* %1469, i64 13)
  %1471 = call %nyx_string* @nyx_string_concat(%nyx_string* %1468, %nyx_string* %1470)
  %1472 = getelementptr [7 x i8], [7 x i8]* @.str128, i32 0, i32 0
  %1473 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str128.c, i8* %1472, i64 6)
  %1474 = call %nyx_string* @nyx_string_concat(%nyx_string* %1471, %nyx_string* %1473)
  %1475 = load %nyx_string*, %nyx_string** %1090
  %1476 = call %nyx_string* @nyx_string_concat(%nyx_string* %1474, %nyx_string* %1475)
  %1477 = getelementptr [2 x i8], [2 x i8]* @.str129, i32 0, i32 0
  %1478 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str129.c, i8* %1477, i64 1)
  %1479 = call %nyx_string* @nyx_string_concat(%nyx_string* %1476, %nyx_string* %1478)
  %1480 = getelementptr [17 x i8], [17 x i8]* @.str130, i32 0, i32 0
  %1481 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str130.c, i8* %1480, i64 16)
  %1482 = call %nyx_string* @nyx_string_concat(%nyx_string* %1479, %nyx_string* %1481)
  %1483 = alloca %nyx_string*
  store %nyx_string* %1482, %nyx_string** %1483
  %1484 = load %nyx_string*, %nyx_string** %1080
  %1485 = getelementptr [8 x i8], [8 x i8]* @.str131, i32 0, i32 0
  %1486 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str131.c, i8* %1485, i64 7)
  %1487 = call %nyx_string* @nyx_string_concat(%nyx_string* %1484, %nyx_string* %1486)
  %1488 = alloca %nyx_string*
  store %nyx_string* %1487, %nyx_string** %1488
  %1489 = load %nyx_string*, %nyx_string** %1488
  %1490 = load %nyx_string*, %nyx_string** %1483
  %1491 = call i8* @nyx_string_to_cstr(%nyx_string* %1489)
  %1492 = call i1 @nyx_write_file_safe(i8* %1491, %nyx_string* %1490)
  %1493 = getelementptr [6 x i8], [6 x i8]* @.str132, i32 0, i32 0
  %1494 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str132.c, i8* %1493, i64 5)
  %1495 = load %nyx_string*, %nyx_string** %1488
  %1496 = call %nyx_string* @nyx_string_concat(%nyx_string* %1494, %nyx_string* %1495)
  %1497 = call i8* @nyx_string_to_cstr(%nyx_string* %1496)
  %1498 = call i64 @nyx_exec_code(i8* %1497)
  %1499 = alloca i64
  store i64 %1498, i64* %1499
  %1500 = getelementptr [1 x i8], [1 x i8]* @.str133, i32 0, i32 0
  %1501 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str133.c, i8* %1500, i64 0)
  %1502 = alloca %nyx_string*
  store %nyx_string* %1501, %nyx_string** %1502
  %1503 = load %nyx_string*, %nyx_string** %1085
  %1504 = call i8* @nyx_string_to_cstr(%nyx_string* %1503)
  %1505 = call i1 @nyx_file_exists(i8* %1504)
  br i1 %1505, label %then327, label %else328
then327:
  %1506 = load %nyx_string*, %nyx_string** %1085
  %1507 = call i8* @nyx_string_to_cstr(%nyx_string* %1506)
  %1508 = call %nyx_string* @nyx_read_file(i8* %1507)
  store %nyx_string* %1508, %nyx_string** %1502
  br label %merge329
else328:
  br label %merge329
merge329:
  %1509 = getelementptr [8 x i8], [8 x i8]* @.str134, i32 0, i32 0
  %1510 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str134.c, i8* %1509, i64 7)
  %1511 = load %nyx_string*, %nyx_string** %1080
  %1512 = call %nyx_string* @nyx_string_concat(%nyx_string* %1510, %nyx_string* %1511)
  %1513 = call i8* @nyx_string_to_cstr(%nyx_string* %1512)
  %1514 = call %nyx_string* @nyx_exec(i8* %1513)
  %1515 = alloca i64
  store i64 0, i64* %1515
  %1516 = alloca i64
  store i64 0, i64* %1516
  %1517 = load %nyx_string*, %nyx_string** %1502
  %1518 = getelementptr [2 x i8], [2 x i8]* @.str135, i32 0, i32 0
  %1519 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str135.c, i8* %1518, i64 1)
  %1520 = call { i64, i8* }* @nyx_string_split(%nyx_string* %1517, %nyx_string* %1519)
  %1521 = alloca { i64, i8* }*
  store { i64, i8* }* %1520, { i64, i8* }** %1521
  %1522 = alloca i64
  store i64 0, i64* %1522
  %1523 = getelementptr [6 x i8], [6 x i8]* @.str136, i32 0, i32 0
  %1524 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str136.c, i8* %1523, i64 5)
  %1525 = alloca %nyx_string*
  store %nyx_string* %1524, %nyx_string** %1525
  %1526 = getelementptr [6 x i8], [6 x i8]* @.str137, i32 0, i32 0
  %1527 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str137.c, i8* %1526, i64 5)
  %1528 = alloca %nyx_string*
  store %nyx_string* %1527, %nyx_string** %1528
  %1529 = call i8* @llvm.stacksave()
  br label %while_cond330
while_cond330:
  %1530 = load i64, i64* %1522
  %1531 = load { i64, i8* }*, { i64, i8* }** %1521
  %1532 = call i64 @nyx_array_length({ i64, i8* }* %1531)
  %1533 = icmp slt i64 %1530, %1532
  br i1 %1533, label %while_body331, label %while_end332
while_body331:
  call void @llvm.stackrestore(i8* %1529)
  %1534 = load { i64, i8* }*, { i64, i8* }** %1521
  %1535 = load i64, i64* %1522
  %1536 = call i64 @nyx_array_get_checked({ i64, i8* }* %1534, i64 %1535, i64 2)
  %1537 = inttoptr i64 %1536 to %nyx_string*
  %1538 = alloca %nyx_string*
  store %nyx_string* %1537, %nyx_string** %1538
  %1539 = load %nyx_string*, %nyx_string** %1538
  %1540 = load %nyx_string*, %nyx_string** %1525
  %1541 = call i1 @nyx_string_contains(%nyx_string* %1539, %nyx_string* %1540)
  br i1 %1541, label %then333, label %else334
then333:
  %1542 = load i64, i64* %1515
  %1543 = add i64 %1542, 1
  store i64 %1543, i64* %1515
  br label %merge335
else334:
  %1544 = load %nyx_string*, %nyx_string** %1538
  %1545 = load %nyx_string*, %nyx_string** %1528
  %1546 = call i1 @nyx_string_contains(%nyx_string* %1544, %nyx_string* %1545)
  br i1 %1546, label %then336, label %else337
then336:
  %1547 = load i64, i64* %1516
  %1548 = add i64 %1547, 1
  store i64 %1548, i64* %1516
  br label %merge338
else337:
  br label %merge338
merge338:
  br label %merge335
merge335:
  %1549 = load i64, i64* %1522
  %1550 = add i64 %1549, 1
  store i64 %1550, i64* %1522
  br label %while_cond330
while_end332:
  %1551 = getelementptr %TestResult, %TestResult* null, i32 1
  %1552 = ptrtoint %TestResult* %1551 to i64
  %1553 = call i8* @GC_malloc(i64 %1552)
  %1554 = bitcast i8* %1553 to %TestResult*
  %1555 = load %nyx_string*, %nyx_string** %file.ptr
  %1556 = getelementptr %TestResult, %TestResult* %1554, i32 0, i32 0
  store %nyx_string* %1555, %nyx_string** %1556
  %1557 = load i64, i64* %1515
  %1558 = getelementptr %TestResult, %TestResult* %1554, i32 0, i32 1
  store i64 %1557, i64* %1558
  %1559 = load i64, i64* %1516
  %1560 = getelementptr %TestResult, %TestResult* %1554, i32 0, i32 2
  store i64 %1559, i64* %1560
  %1561 = load %nyx_string*, %nyx_string** %1502
  %1562 = getelementptr %TestResult, %TestResult* %1554, i32 0, i32 3
  store %nyx_string* %1561, %nyx_string** %1562
  %1563 = alloca i1
  store i1 false, i1* %1563
  %1564 = load i64, i64* %1499
  %1565 = icmp eq i64 %1564, 0
  br i1 %1565, label %sc_and_rhs339, label %sc_and_end340
sc_and_rhs339:
  %1566 = load i64, i64* %1516
  %1567 = icmp eq i64 %1566, 0
  store i1 %1567, i1* %1563
  br label %sc_and_end340
sc_and_end340:
  %1568 = load i1, i1* %1563
  %1569 = getelementptr %TestResult, %TestResult* %1554, i32 0, i32 4
  store i1 %1568, i1* %1569
  %1570 = load %TestResult, %TestResult* %1554
  ret %TestResult %1570
}

define internal i64 @print_result(
%TestResult %result.param, i1 %verbose.param) {
  %result.ptr = alloca %TestResult
  store %TestResult %result.param, %TestResult* %result.ptr
  %verbose.ptr = alloca i1
  store i1 %verbose.param, i1* %verbose.ptr
  %1571 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 4
  %1572 = load i1, i1* %1571
  br i1 %1572, label %then341, label %else342
then341:
  %1573 = getelementptr [9 x i8], [9 x i8]* @.str138, i32 0, i32 0
  %1574 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str138.c, i8* %1573, i64 8)
  %1575 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 0
  %1576 = load %nyx_string*, %nyx_string** %1575
  %1577 = call %nyx_string* @nyx_string_concat(%nyx_string* %1574, %nyx_string* %1576)
  %1578 = getelementptr [3 x i8], [3 x i8]* @.str139, i32 0, i32 0
  %1579 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str139.c, i8* %1578, i64 2)
  %1580 = call %nyx_string* @nyx_string_concat(%nyx_string* %1577, %nyx_string* %1579)
  %1581 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 1
  %1582 = load i64, i64* %1581
  %1583 = call %nyx_string* @nyx_string_from_int(i64 %1582)
  %1584 = call %nyx_string* @nyx_string_concat(%nyx_string* %1580, %nyx_string* %1583)
  %1585 = getelementptr [8 x i8], [8 x i8]* @.str140, i32 0, i32 0
  %1586 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str140.c, i8* %1585, i64 7)
  %1587 = call %nyx_string* @nyx_string_concat(%nyx_string* %1584, %nyx_string* %1586)
  %1588 = call i8* @nyx_string_to_cstr(%nyx_string* %1587)
  call void @nyx_print_string(i8* %1588)
  %1589 = load i1, i1* %verbose.ptr
  br i1 %1589, label %then344, label %else345
then344:
  %1590 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 3
  %1591 = load %nyx_string*, %nyx_string** %1590
  %1592 = call i8* @nyx_string_to_cstr(%nyx_string* %1591)
  call void @nyx_print_string(i8* %1592)
  br label %merge346
else345:
  br label %merge346
merge346:
  br label %merge343
else342:
  %1593 = getelementptr [9 x i8], [9 x i8]* @.str141, i32 0, i32 0
  %1594 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str141.c, i8* %1593, i64 8)
  %1595 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 0
  %1596 = load %nyx_string*, %nyx_string** %1595
  %1597 = call %nyx_string* @nyx_string_concat(%nyx_string* %1594, %nyx_string* %1596)
  %1598 = getelementptr [3 x i8], [3 x i8]* @.str142, i32 0, i32 0
  %1599 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str142.c, i8* %1598, i64 2)
  %1600 = call %nyx_string* @nyx_string_concat(%nyx_string* %1597, %nyx_string* %1599)
  %1601 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 1
  %1602 = load i64, i64* %1601
  %1603 = call %nyx_string* @nyx_string_from_int(i64 %1602)
  %1604 = call %nyx_string* @nyx_string_concat(%nyx_string* %1600, %nyx_string* %1603)
  %1605 = getelementptr [10 x i8], [10 x i8]* @.str143, i32 0, i32 0
  %1606 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str143.c, i8* %1605, i64 9)
  %1607 = call %nyx_string* @nyx_string_concat(%nyx_string* %1604, %nyx_string* %1606)
  %1608 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 2
  %1609 = load i64, i64* %1608
  %1610 = call %nyx_string* @nyx_string_from_int(i64 %1609)
  %1611 = call %nyx_string* @nyx_string_concat(%nyx_string* %1607, %nyx_string* %1610)
  %1612 = getelementptr [9 x i8], [9 x i8]* @.str144, i32 0, i32 0
  %1613 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str144.c, i8* %1612, i64 8)
  %1614 = call %nyx_string* @nyx_string_concat(%nyx_string* %1611, %nyx_string* %1613)
  %1615 = call i8* @nyx_string_to_cstr(%nyx_string* %1614)
  call void @nyx_print_string(i8* %1615)
  %1616 = getelementptr %TestResult, %TestResult* %result.ptr, i32 0, i32 3
  %1617 = load %nyx_string*, %nyx_string** %1616
  %1618 = call i8* @nyx_string_to_cstr(%nyx_string* %1617)
  call void @nyx_print_string(i8* %1618)
  br label %merge343
merge343:
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
  %1619 = getelementptr [1 x i8], [1 x i8]* @.str145, i32 0, i32 0
  %1620 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str145.c, i8* %1619, i64 0)
  %1621 = call i8* @nyx_string_to_cstr(%nyx_string* %1620)
  call void @nyx_print_string(i8* %1621)
  %1622 = getelementptr [36 x i8], [36 x i8]* @.str146, i32 0, i32 0
  %1623 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str146.c, i8* %1622, i64 35)
  %1624 = call i8* @nyx_string_to_cstr(%nyx_string* %1623)
  call void @nyx_print_string(i8* %1624)
  %1625 = alloca i64
  store i64 0, i64* %1625
  %1626 = alloca i64
  store i64 0, i64* %1626
  %1627 = alloca i64
  store i64 0, i64* %1627
  %1628 = call i8* @llvm.stacksave()
  br label %while_cond347
while_cond347:
  %1629 = load i64, i64* %1627
  %1630 = load { i64, i8* }*, { i64, i8* }** %results.ptr
  %1631 = call i64 @nyx_array_length({ i64, i8* }* %1630)
  %1632 = icmp slt i64 %1629, %1631
  br i1 %1632, label %while_body348, label %while_end349
while_body348:
  call void @llvm.stackrestore(i8* %1628)
  %1633 = load { i64, i8* }*, { i64, i8* }** %results.ptr
  %1634 = load i64, i64* %1627
  %1635 = call i64 @nyx_array_get({ i64, i8* }* %1633, i64 %1634)
  %1636 = inttoptr i64 %1635 to %TestResult*
  %1637 = load %TestResult, %TestResult* %1636
  %1638 = alloca %TestResult
  store %TestResult %1637, %TestResult* %1638
  %1639 = getelementptr %TestResult, %TestResult* %1638, i32 0, i32 4
  %1640 = load i1, i1* %1639
  br i1 %1640, label %then350, label %else351
then350:
  %1641 = load i64, i64* %1625
  %1642 = add i64 %1641, 1
  store i64 %1642, i64* %1625
  br label %merge352
else351:
  %1643 = load i64, i64* %1626
  %1644 = add i64 %1643, 1
  store i64 %1644, i64* %1626
  br label %merge352
merge352:
  %1645 = load i64, i64* %1627
  %1646 = add i64 %1645, 1
  store i64 %1646, i64* %1627
  br label %while_cond347
while_end349:
  %1647 = getelementptr [11 x i8], [11 x i8]* @.str147, i32 0, i32 0
  %1648 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str147.c, i8* %1647, i64 10)
  %1649 = load i64, i64* %1625
  %1650 = call %nyx_string* @nyx_string_from_int(i64 %1649)
  %1651 = call %nyx_string* @nyx_string_concat(%nyx_string* %1648, %nyx_string* %1650)
  %1652 = getelementptr [10 x i8], [10 x i8]* @.str148, i32 0, i32 0
  %1653 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str148.c, i8* %1652, i64 9)
  %1654 = call %nyx_string* @nyx_string_concat(%nyx_string* %1651, %nyx_string* %1653)
  %1655 = load i64, i64* %1626
  %1656 = call %nyx_string* @nyx_string_from_int(i64 %1655)
  %1657 = call %nyx_string* @nyx_string_concat(%nyx_string* %1654, %nyx_string* %1656)
  %1658 = getelementptr [10 x i8], [10 x i8]* @.str149, i32 0, i32 0
  %1659 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str149.c, i8* %1658, i64 9)
  %1660 = call %nyx_string* @nyx_string_concat(%nyx_string* %1657, %nyx_string* %1659)
  %1661 = load { i64, i8* }*, { i64, i8* }** %results.ptr
  %1662 = call i64 @nyx_array_length({ i64, i8* }* %1661)
  %1663 = call %nyx_string* @nyx_string_from_int(i64 %1662)
  %1664 = call %nyx_string* @nyx_string_concat(%nyx_string* %1660, %nyx_string* %1663)
  %1665 = getelementptr [8 x i8], [8 x i8]* @.str150, i32 0, i32 0
  %1666 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str150.c, i8* %1665, i64 7)
  %1667 = call %nyx_string* @nyx_string_concat(%nyx_string* %1664, %nyx_string* %1666)
  %1668 = call i8* @nyx_string_to_cstr(%nyx_string* %1667)
  call void @nyx_print_string(i8* %1668)
  %1669 = getelementptr [11 x i8], [11 x i8]* @.str151, i32 0, i32 0
  %1670 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str151.c, i8* %1669, i64 10)
  %1671 = load i64, i64* %total_passed.ptr
  %1672 = call %nyx_string* @nyx_string_from_int(i64 %1671)
  %1673 = call %nyx_string* @nyx_string_concat(%nyx_string* %1670, %nyx_string* %1672)
  %1674 = getelementptr [10 x i8], [10 x i8]* @.str152, i32 0, i32 0
  %1675 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str152.c, i8* %1674, i64 9)
  %1676 = call %nyx_string* @nyx_string_concat(%nyx_string* %1673, %nyx_string* %1675)
  %1677 = load i64, i64* %total_failed.ptr
  %1678 = call %nyx_string* @nyx_string_from_int(i64 %1677)
  %1679 = call %nyx_string* @nyx_string_concat(%nyx_string* %1676, %nyx_string* %1678)
  %1680 = getelementptr [10 x i8], [10 x i8]* @.str153, i32 0, i32 0
  %1681 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str153.c, i8* %1680, i64 9)
  %1682 = call %nyx_string* @nyx_string_concat(%nyx_string* %1679, %nyx_string* %1681)
  %1683 = load i64, i64* %total_passed.ptr
  %1684 = load i64, i64* %total_failed.ptr
  %1685 = add i64 %1683, %1684
  %1686 = call %nyx_string* @nyx_string_from_int(i64 %1685)
  %1687 = call %nyx_string* @nyx_string_concat(%nyx_string* %1682, %nyx_string* %1686)
  %1688 = getelementptr [8 x i8], [8 x i8]* @.str154, i32 0, i32 0
  %1689 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str154.c, i8* %1688, i64 7)
  %1690 = call %nyx_string* @nyx_string_concat(%nyx_string* %1687, %nyx_string* %1689)
  %1691 = call i8* @nyx_string_to_cstr(%nyx_string* %1690)
  call void @nyx_print_string(i8* %1691)
  %1692 = alloca i1
  store i1 false, i1* %1692
  %1693 = load i64, i64* %total_failed.ptr
  %1694 = icmp eq i64 %1693, 0
  br i1 %1694, label %sc_and_rhs353, label %sc_and_end354
sc_and_rhs353:
  %1695 = load i64, i64* %1626
  %1696 = icmp eq i64 %1695, 0
  store i1 %1696, i1* %1692
  br label %sc_and_end354
sc_and_end354:
  %1697 = load i1, i1* %1692
  br i1 %1697, label %then355, label %else356
then355:
  %1698 = getelementptr [27 x i8], [27 x i8]* @.str155, i32 0, i32 0
  %1699 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str155.c, i8* %1698, i64 26)
  %1700 = call i8* @nyx_string_to_cstr(%nyx_string* %1699)
  call void @nyx_print_string(i8* %1700)
  br label %merge357
else356:
  %1701 = getelementptr [28 x i8], [28 x i8]* @.str156, i32 0, i32 0
  %1702 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str156.c, i8* %1701, i64 27)
  %1703 = call i8* @nyx_string_to_cstr(%nyx_string* %1702)
  call void @nyx_print_string(i8* %1703)
  br label %merge357
merge357:
  %1704 = getelementptr [36 x i8], [36 x i8]* @.str157, i32 0, i32 0
  %1705 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str157.c, i8* %1704, i64 35)
  %1706 = call i8* @nyx_string_to_cstr(%nyx_string* %1705)
  call void @nyx_print_string(i8* %1706)
  ret i64 0
}

define internal %nyx_string* @cov_clang_major(
) {
  %1707 = getelementptr [28 x i8], [28 x i8]* @.str158, i32 0, i32 0
  %1708 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str158.c, i8* %1707, i64 27)
  %1709 = call i8* @nyx_string_to_cstr(%nyx_string* %1708)
  %1710 = call %nyx_string* @nyx_exec(i8* %1709)
  %1711 = alloca %nyx_string*
  store %nyx_string* %1710, %nyx_string** %1711
  %1712 = load %nyx_string*, %nyx_string** %1711
  %1713 = getelementptr [9 x i8], [9 x i8]* @.str159, i32 0, i32 0
  %1714 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str159.c, i8* %1713, i64 8)
  %1715 = call i64 @nyx_string_index_of(%nyx_string* %1712, %nyx_string* %1714)
  %1716 = alloca i64
  store i64 %1715, i64* %1716
  %1717 = load i64, i64* %1716
  %1718 = icmp slt i64 %1717, 0
  br i1 %1718, label %then358, label %else359
then358:
  %1719 = getelementptr [1 x i8], [1 x i8]* @.str160, i32 0, i32 0
  %1720 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str160.c, i8* %1719, i64 0)
  ret %nyx_string* %1720
else359:
  br label %merge360
merge360:
  %1721 = load i64, i64* %1716
  %1722 = add i64 %1721, 8
  %1723 = alloca i64
  store i64 %1722, i64* %1723
  %1724 = getelementptr [1 x i8], [1 x i8]* @.str161, i32 0, i32 0
  %1725 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str161.c, i8* %1724, i64 0)
  %1726 = alloca %nyx_string*
  store %nyx_string* %1725, %nyx_string** %1726
  %1727 = call i8* @llvm.stacksave()
  br label %while_cond361
while_cond361:
  %1728 = load i64, i64* %1723
  %1729 = load %nyx_string*, %nyx_string** %1711
  %1730 = call i64 @nyx_string_byte_length(%nyx_string* %1729)
  %1731 = icmp slt i64 %1728, %1730
  br i1 %1731, label %while_body362, label %while_end363
while_body362:
  call void @llvm.stackrestore(i8* %1727)
  %1732 = load %nyx_string*, %nyx_string** %1711
  %1733 = load i64, i64* %1723
  %1734 = call i8 @nyx_string_char_at(%nyx_string* %1732, i64 %1733)
  %1735 = zext i8 %1734 to i64
  %1736 = alloca i64
  store i64 %1735, i64* %1736
  %1737 = alloca i1
  store i1 false, i1* %1737
  %1738 = load i64, i64* %1736
  %1739 = icmp sge i64 %1738, 48
  br i1 %1739, label %sc_and_rhs364, label %sc_and_end365
sc_and_rhs364:
  %1740 = load i64, i64* %1736
  %1741 = icmp sle i64 %1740, 57
  store i1 %1741, i1* %1737
  br label %sc_and_end365
sc_and_end365:
  %1742 = load i1, i1* %1737
  br i1 %1742, label %then366, label %else367
then366:
  %1743 = load %nyx_string*, %nyx_string** %1726
  %1744 = load %nyx_string*, %nyx_string** %1711
  %1745 = load i64, i64* %1723
  %1746 = load i64, i64* %1723
  %1747 = add i64 %1746, 1
  %1748 = call %nyx_string* @nyx_string_substring(%nyx_string* %1744, i64 %1745, i64 %1747)
  %1749 = call %nyx_string* @nyx_string_concat(%nyx_string* %1743, %nyx_string* %1748)
  store %nyx_string* %1749, %nyx_string** %1726
  %1750 = load i64, i64* %1723
  %1751 = add i64 %1750, 1
  store i64 %1751, i64* %1723
  br label %merge368
else367:
  %1752 = load %nyx_string*, %nyx_string** %1711
  %1753 = call i64 @nyx_string_byte_length(%nyx_string* %1752)
  store i64 %1753, i64* %1723
  br label %merge368
merge368:
  br label %while_cond361
while_end363:
  %1754 = load %nyx_string*, %nyx_string** %1726
  ret %nyx_string* %1754
}

define internal i1 @cov_profraw_valid(
%nyx_string* %path.param) {
  %path.ptr = alloca %nyx_string*
  store %nyx_string* %path.param, %nyx_string** %path.ptr
  %1755 = getelementptr [10 x i8], [10 x i8]* @.str162, i32 0, i32 0
  %1756 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str162.c, i8* %1755, i64 9)
  %1757 = load %nyx_string*, %nyx_string** %path.ptr
  %1758 = call %nyx_string* @nyx_string_concat(%nyx_string* %1756, %nyx_string* %1757)
  %1759 = getelementptr [2 x i8], [2 x i8]* @.str163, i32 0, i32 0
  %1760 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str163.c, i8* %1759, i64 1)
  %1761 = call %nyx_string* @nyx_string_concat(%nyx_string* %1758, %nyx_string* %1760)
  %1762 = call i8* @nyx_string_to_cstr(%nyx_string* %1761)
  %1763 = call i64 @nyx_exec_code(i8* %1762)
  %1764 = icmp eq i64 %1763, 0
  ret i1 %1764
}

define internal %nyx_string* @cov_find_profdata(
) {
  %1765 = call %nyx_string* @cov_clang_major()
  %1766 = alloca %nyx_string*
  store %nyx_string* %1765, %nyx_string** %1766
  %1767 = load %nyx_string*, %nyx_string** %1766
  %1768 = getelementptr [1 x i8], [1 x i8]* @.str164, i32 0, i32 0
  %1769 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str164.c, i8* %1768, i64 0)
  %1770 = call i1 @nyx_string_equals(%nyx_string* %1767, %nyx_string* %1769)
  %1771 = xor i1 %1770, true
  br i1 %1771, label %then369, label %else370
then369:
  %1772 = getelementptr [26 x i8], [26 x i8]* @.str165, i32 0, i32 0
  %1773 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str165.c, i8* %1772, i64 25)
  %1774 = load %nyx_string*, %nyx_string** %1766
  %1775 = call %nyx_string* @nyx_string_concat(%nyx_string* %1773, %nyx_string* %1774)
  %1776 = getelementptr [13 x i8], [13 x i8]* @.str166, i32 0, i32 0
  %1777 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str166.c, i8* %1776, i64 12)
  %1778 = call %nyx_string* @nyx_string_concat(%nyx_string* %1775, %nyx_string* %1777)
  %1779 = call i8* @nyx_string_to_cstr(%nyx_string* %1778)
  %1780 = call %nyx_string* @nyx_exec(i8* %1779)
  %1781 = call %nyx_string* @nyx_string_trim(%nyx_string* %1780)
  %1782 = alloca %nyx_string*
  store %nyx_string* %1781, %nyx_string** %1782
  %1783 = load %nyx_string*, %nyx_string** %1782
  %1784 = getelementptr [1 x i8], [1 x i8]* @.str167, i32 0, i32 0
  %1785 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str167.c, i8* %1784, i64 0)
  %1786 = call i1 @nyx_string_equals(%nyx_string* %1783, %nyx_string* %1785)
  %1787 = xor i1 %1786, true
  br i1 %1787, label %then372, label %else373
then372:
  %1788 = load %nyx_string*, %nyx_string** %1782
  ret %nyx_string* %1788
else373:
  br label %merge374
merge374:
  br label %merge371
else370:
  br label %merge371
merge371:
  %1789 = getelementptr [37 x i8], [37 x i8]* @.str168, i32 0, i32 0
  %1790 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str168.c, i8* %1789, i64 36)
  %1791 = call i8* @nyx_string_to_cstr(%nyx_string* %1790)
  %1792 = call %nyx_string* @nyx_exec(i8* %1791)
  %1793 = call %nyx_string* @nyx_string_trim(%nyx_string* %1792)
  ret %nyx_string* %1793
}

define internal { i64, i8* }* @cov_fields(
%nyx_string* %line.param) {
  %line.ptr = alloca %nyx_string*
  store %nyx_string* %line.param, %nyx_string** %line.ptr
  %1794 = call { i64, i8* }* @nyx_array_new_ptr()
  %1795 = alloca { i64, i8* }*
  store { i64, i8* }* %1794, { i64, i8* }** %1795
  %1796 = alloca i64
  store i64 0, i64* %1796
  %1797 = alloca i64
  store i64 0, i64* %1797
  %1798 = call i8* @llvm.stacksave()
  br label %while_cond375
while_cond375:
  %1799 = load i64, i64* %1797
  %1800 = load %nyx_string*, %nyx_string** %line.ptr
  %1801 = call i64 @nyx_string_byte_length(%nyx_string* %1800)
  %1802 = icmp slt i64 %1799, %1801
  br i1 %1802, label %while_body376, label %while_end377
while_body376:
  call void @llvm.stackrestore(i8* %1798)
  %1803 = load %nyx_string*, %nyx_string** %line.ptr
  %1804 = load i64, i64* %1797
  %1805 = call i8 @nyx_string_char_at(%nyx_string* %1803, i64 %1804)
  %1806 = zext i8 %1805 to i64
  %1807 = icmp eq i64 %1806, 9
  br i1 %1807, label %then378, label %else379
then378:
  %1808 = load { i64, i8* }*, { i64, i8* }** %1795
  %1809 = load %nyx_string*, %nyx_string** %line.ptr
  %1810 = load i64, i64* %1796
  %1811 = load i64, i64* %1797
  %1812 = call %nyx_string* @nyx_string_substring(%nyx_string* %1809, i64 %1810, i64 %1811)
  %1813 = ptrtoint %nyx_string* %1812 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1808, i64 %1813, i64 2)
  %1814 = load i64, i64* %1797
  %1815 = add i64 %1814, 1
  store i64 %1815, i64* %1796
  br label %merge380
else379:
  br label %merge380
merge380:
  %1816 = load i64, i64* %1797
  %1817 = add i64 %1816, 1
  store i64 %1817, i64* %1797
  br label %while_cond375
while_end377:
  %1818 = load { i64, i8* }*, { i64, i8* }** %1795
  %1819 = load %nyx_string*, %nyx_string** %line.ptr
  %1820 = load i64, i64* %1796
  %1821 = load %nyx_string*, %nyx_string** %line.ptr
  %1822 = call i64 @nyx_string_byte_length(%nyx_string* %1821)
  %1823 = call %nyx_string* @nyx_string_substring(%nyx_string* %1819, i64 %1820, i64 %1822)
  %1824 = ptrtoint %nyx_string* %1823 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1818, i64 %1824, i64 2)
  %1825 = load { i64, i8* }*, { i64, i8* }** %1795
  ret { i64, i8* }* %1825
}

define internal %nyx_string* @cov_pad(
i64 %n.param) {
  %n.ptr = alloca i64
  store i64 %n.param, i64* %n.ptr
  %1826 = load i64, i64* %n.ptr
  %1827 = call %nyx_string* @nyx_string_from_int(i64 %1826)
  %1828 = alloca %nyx_string*
  store %nyx_string* %1827, %nyx_string** %1828
  %1829 = getelementptr [2 x i8], [2 x i8]* @.str169, i32 0, i32 0
  %1830 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str169.c, i8* %1829, i64 1)
  %1831 = alloca %nyx_string*
  store %nyx_string* %1830, %nyx_string** %1831
  %1832 = call i8* @llvm.stacksave()
  br label %while_cond381
while_cond381:
  %1833 = load %nyx_string*, %nyx_string** %1828
  %1834 = call i64 @nyx_string_byte_length(%nyx_string* %1833)
  %1835 = icmp slt i64 %1834, 9
  br i1 %1835, label %while_body382, label %while_end383
while_body382:
  call void @llvm.stackrestore(i8* %1832)
  %1836 = load %nyx_string*, %nyx_string** %1831
  %1837 = load %nyx_string*, %nyx_string** %1828
  %1838 = call %nyx_string* @nyx_string_concat(%nyx_string* %1836, %nyx_string* %1837)
  store %nyx_string* %1838, %nyx_string** %1828
  br label %while_cond381
while_end383:
  %1839 = load %nyx_string*, %nyx_string** %1828
  ret %nyx_string* %1839
}

define internal i8* @cov_called_from_show(
%nyx_string* %show.param) {
  %show.ptr = alloca %nyx_string*
  store %nyx_string* %show.param, %nyx_string** %show.ptr
  %1840 = call i8* @nyx_map_new(i32 0)
  %1841 = alloca i8*
  store i8* %1840, i8** %1841
  %1842 = load %nyx_string*, %nyx_string** %show.ptr
  %1843 = getelementptr [2 x i8], [2 x i8]* @.str170, i32 0, i32 0
  %1844 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str170.c, i8* %1843, i64 1)
  %1845 = call { i64, i8* }* @nyx_string_split(%nyx_string* %1842, %nyx_string* %1844)
  %1846 = alloca { i64, i8* }*
  store { i64, i8* }* %1845, { i64, i8* }** %1846
  %1847 = getelementptr [1 x i8], [1 x i8]* @.str171, i32 0, i32 0
  %1848 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str171.c, i8* %1847, i64 0)
  %1849 = alloca %nyx_string*
  store %nyx_string* %1848, %nyx_string** %1849
  %1850 = alloca i64
  store i64 0, i64* %1850
  %1851 = getelementptr [3 x i8], [3 x i8]* @.str172, i32 0, i32 0
  %1852 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str172.c, i8* %1851, i64 2)
  %1853 = alloca %nyx_string*
  store %nyx_string* %1852, %nyx_string** %1853
  %1854 = getelementptr [4 x i8], [4 x i8]* @.str173, i32 0, i32 0
  %1855 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str173.c, i8* %1854, i64 3)
  %1856 = alloca %nyx_string*
  store %nyx_string* %1855, %nyx_string** %1856
  %1857 = getelementptr [2 x i8], [2 x i8]* @.str174, i32 0, i32 0
  %1858 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str174.c, i8* %1857, i64 1)
  %1859 = alloca %nyx_string*
  store %nyx_string* %1858, %nyx_string** %1859
  %1860 = getelementptr [2 x i8], [2 x i8]* @.str175, i32 0, i32 0
  %1861 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str175.c, i8* %1860, i64 1)
  %1862 = alloca %nyx_string*
  store %nyx_string* %1861, %nyx_string** %1862
  %1863 = getelementptr [1 x i8], [1 x i8]* @.str176, i32 0, i32 0
  %1864 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str176.c, i8* %1863, i64 0)
  %1865 = alloca %nyx_string*
  store %nyx_string* %1864, %nyx_string** %1865
  %1866 = getelementptr [14 x i8], [14 x i8]* @.str177, i32 0, i32 0
  %1867 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str177.c, i8* %1866, i64 13)
  %1868 = alloca %nyx_string*
  store %nyx_string* %1867, %nyx_string** %1868
  %1869 = getelementptr [2 x i8], [2 x i8]* @.str178, i32 0, i32 0
  %1870 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str178.c, i8* %1869, i64 1)
  %1871 = alloca %nyx_string*
  store %nyx_string* %1870, %nyx_string** %1871
  %1872 = getelementptr [2 x i8], [2 x i8]* @.str179, i32 0, i32 0
  %1873 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str179.c, i8* %1872, i64 1)
  %1874 = alloca %nyx_string*
  store %nyx_string* %1873, %nyx_string** %1874
  %1875 = getelementptr [2 x i8], [2 x i8]* @.str180, i32 0, i32 0
  %1876 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str180.c, i8* %1875, i64 1)
  %1877 = alloca %nyx_string*
  store %nyx_string* %1876, %nyx_string** %1877
  %1878 = getelementptr [2 x i8], [2 x i8]* @.str181, i32 0, i32 0
  %1879 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str181.c, i8* %1878, i64 1)
  %1880 = alloca %nyx_string*
  store %nyx_string* %1879, %nyx_string** %1880
  %1881 = call i8* @llvm.stacksave()
  br label %while_cond384
while_cond384:
  %1882 = load i64, i64* %1850
  %1883 = load { i64, i8* }*, { i64, i8* }** %1846
  %1884 = call i64 @nyx_array_length({ i64, i8* }* %1883)
  %1885 = icmp slt i64 %1882, %1884
  br i1 %1885, label %while_body385, label %while_end386
while_body385:
  call void @llvm.stackrestore(i8* %1881)
  %1886 = load { i64, i8* }*, { i64, i8* }** %1846
  %1887 = load i64, i64* %1850
  %1888 = call i64 @nyx_array_get_checked({ i64, i8* }* %1886, i64 %1887, i64 2)
  %1889 = inttoptr i64 %1888 to %nyx_string*
  %1890 = alloca %nyx_string*
  store %nyx_string* %1889, %nyx_string** %1890
  %1891 = alloca i1
  store i1 false, i1* %1891
  %1892 = alloca i1
  store i1 false, i1* %1892
  %1893 = load %nyx_string*, %nyx_string** %1890
  %1894 = load %nyx_string*, %nyx_string** %1853
  %1895 = call i1 @nyx_string_starts_with(%nyx_string* %1893, %nyx_string* %1894)
  br i1 %1895, label %sc_and_rhs387, label %sc_and_end388
sc_and_rhs387:
  %1896 = load %nyx_string*, %nyx_string** %1890
  %1897 = load %nyx_string*, %nyx_string** %1856
  %1898 = call i1 @nyx_string_starts_with(%nyx_string* %1896, %nyx_string* %1897)
  %1899 = xor i1 %1898, true
  store i1 %1899, i1* %1892
  br label %sc_and_end388
sc_and_end388:
  %1900 = load i1, i1* %1892
  br i1 %1900, label %sc_and_rhs389, label %sc_and_end390
sc_and_rhs389:
  %1901 = load %nyx_string*, %nyx_string** %1890
  %1902 = load %nyx_string*, %nyx_string** %1859
  %1903 = call i1 @nyx_string_ends_with(%nyx_string* %1901, %nyx_string* %1902)
  store i1 %1903, i1* %1891
  br label %sc_and_end390
sc_and_end390:
  %1904 = load i1, i1* %1891
  br i1 %1904, label %then391, label %else392
then391:
  %1905 = load %nyx_string*, %nyx_string** %1890
  %1906 = load %nyx_string*, %nyx_string** %1890
  %1907 = call i64 @nyx_string_byte_length(%nyx_string* %1906)
  %1908 = sub i64 %1907, 1
  %1909 = call %nyx_string* @nyx_string_substring(%nyx_string* %1905, i64 2, i64 %1908)
  %1910 = alloca %nyx_string*
  store %nyx_string* %1909, %nyx_string** %1910
  %1911 = load %nyx_string*, %nyx_string** %1910
  %1912 = load %nyx_string*, %nyx_string** %1862
  %1913 = call i64 @nyx_string_index_of(%nyx_string* %1911, %nyx_string* %1912)
  %1914 = alloca i64
  store i64 %1913, i64* %1914
  %1915 = load i64, i64* %1914
  %1916 = icmp sge i64 %1915, 0
  br i1 %1916, label %then394, label %else395
then394:
  %1917 = load %nyx_string*, %nyx_string** %1910
  %1918 = load i64, i64* %1914
  %1919 = add i64 %1918, 1
  %1920 = load %nyx_string*, %nyx_string** %1910
  %1921 = call i64 @nyx_string_byte_length(%nyx_string* %1920)
  %1922 = call %nyx_string* @nyx_string_substring(%nyx_string* %1917, i64 %1919, i64 %1921)
  store %nyx_string* %1922, %nyx_string** %1910
  br label %merge396
else395:
  br label %merge396
merge396:
  %1923 = load %nyx_string*, %nyx_string** %1910
  store %nyx_string* %1923, %nyx_string** %1849
  br label %merge393
else392:
  %1924 = alloca i1
  store i1 false, i1* %1924
  %1925 = load %nyx_string*, %nyx_string** %1849
  %1926 = load %nyx_string*, %nyx_string** %1865
  %1927 = call i1 @nyx_string_equals(%nyx_string* %1925, %nyx_string* %1926)
  %1928 = xor i1 %1927, true
  br i1 %1928, label %sc_and_rhs397, label %sc_and_end398
sc_and_rhs397:
  %1929 = load %nyx_string*, %nyx_string** %1890
  %1930 = load %nyx_string*, %nyx_string** %1868
  %1931 = call i1 @nyx_string_contains(%nyx_string* %1929, %nyx_string* %1930)
  store i1 %1931, i1* %1924
  br label %sc_and_end398
sc_and_end398:
  %1932 = load i1, i1* %1924
  br i1 %1932, label %then399, label %else400
then399:
  %1933 = load %nyx_string*, %nyx_string** %1890
  %1934 = load %nyx_string*, %nyx_string** %1871
  %1935 = call i64 @nyx_string_index_of(%nyx_string* %1933, %nyx_string* %1934)
  %1936 = alloca i64
  store i64 %1935, i64* %1936
  %1937 = load %nyx_string*, %nyx_string** %1890
  %1938 = load %nyx_string*, %nyx_string** %1874
  %1939 = call i64 @nyx_string_index_of(%nyx_string* %1937, %nyx_string* %1938)
  %1940 = alloca i64
  store i64 %1939, i64* %1940
  %1941 = alloca i1
  store i1 false, i1* %1941
  %1942 = load i64, i64* %1936
  %1943 = icmp sge i64 %1942, 0
  br i1 %1943, label %sc_and_rhs402, label %sc_and_end403
sc_and_rhs402:
  %1944 = load i64, i64* %1940
  %1945 = load i64, i64* %1936
  %1946 = icmp sgt i64 %1944, %1945
  store i1 %1946, i1* %1941
  br label %sc_and_end403
sc_and_end403:
  %1947 = load i1, i1* %1941
  br i1 %1947, label %then404, label %else405
then404:
  %1948 = load %nyx_string*, %nyx_string** %1890
  %1949 = load i64, i64* %1936
  %1950 = add i64 %1949, 1
  %1951 = load i64, i64* %1940
  %1952 = call %nyx_string* @nyx_string_substring(%nyx_string* %1948, i64 %1950, i64 %1951)
  %1953 = load %nyx_string*, %nyx_string** %1877
  %1954 = call { i64, i8* }* @nyx_string_split(%nyx_string* %1952, %nyx_string* %1953)
  %1955 = alloca { i64, i8* }*
  store { i64, i8* }* %1954, { i64, i8* }** %1955
  %1956 = alloca i64
  store i64 0, i64* %1956
  %1957 = call i8* @llvm.stacksave()
  br label %while_cond407
while_cond407:
  %1958 = load i64, i64* %1956
  %1959 = load { i64, i8* }*, { i64, i8* }** %1955
  %1960 = call i64 @nyx_array_length({ i64, i8* }* %1959)
  %1961 = icmp slt i64 %1958, %1960
  br i1 %1961, label %while_body408, label %while_end409
while_body408:
  call void @llvm.stackrestore(i8* %1957)
  %1962 = load { i64, i8* }*, { i64, i8* }** %1955
  %1963 = load i64, i64* %1956
  %1964 = call i64 @nyx_array_get_checked({ i64, i8* }* %1962, i64 %1963, i64 2)
  %1965 = inttoptr i64 %1964 to %nyx_string*
  %1966 = alloca %nyx_string*
  store %nyx_string* %1965, %nyx_string** %1966
  %1967 = load %nyx_string*, %nyx_string** %1966
  %1968 = call %nyx_string* @nyx_string_trim(%nyx_string* %1967)
  %1969 = call i64 @nyx_string_to_int(%nyx_string* %1968)
  %1970 = icmp sgt i64 %1969, 0
  br i1 %1970, label %then410, label %else411
then410:
  %1971 = load i8*, i8** %1841
  %1972 = load %nyx_string*, %nyx_string** %1849
  %1973 = load %nyx_string*, %nyx_string** %1880
  %1974 = call i8* @nyx_string_to_cstr(%nyx_string* %1972)
  %1975 = call i8* @nyx_string_to_cstr(%nyx_string* %1973)
  call void @nyx_map_insert_str(i8* %1971, i8* %1974, i8* %1975)
  br label %merge412
else411:
  br label %merge412
merge412:
  %1976 = load i64, i64* %1956
  %1977 = add i64 %1976, 1
  store i64 %1977, i64* %1956
  br label %while_cond407
while_end409:
  br label %merge406
else405:
  br label %merge406
merge406:
  br label %merge401
else400:
  br label %merge401
merge401:
  br label %merge393
merge393:
  %1978 = load i64, i64* %1850
  %1979 = add i64 %1978, 1
  store i64 %1979, i64* %1850
  br label %while_cond384
while_end386:
  %1980 = load i8*, i8** %1841
  ret i8* %1980
}

define internal { i64, i8* }* @cov_src_modules(
) {
  %1981 = call { i64, i8* }* @nyx_array_new_ptr()
  %1982 = alloca { i64, i8* }*
  store { i64, i8* }* %1981, { i64, i8* }** %1982
  %1983 = getelementptr [4 x i8], [4 x i8]* @.str182, i32 0, i32 0
  %1984 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str182.c, i8* %1983, i64 3)
  %1985 = call i8* @nyx_string_to_cstr(%nyx_string* %1984)
  %1986 = call i1 @nyx_file_exists(i8* %1985)
  %1987 = xor i1 %1986, true
  br i1 %1987, label %then413, label %else414
then413:
  %1988 = load { i64, i8* }*, { i64, i8* }** %1982
  ret { i64, i8* }* %1988
else414:
  br label %merge415
merge415:
  %1989 = getelementptr [50 x i8], [50 x i8]* @.str183, i32 0, i32 0
  %1990 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str183.c, i8* %1989, i64 49)
  %1991 = call i8* @nyx_string_to_cstr(%nyx_string* %1990)
  %1992 = call %nyx_string* @nyx_exec(i8* %1991)
  %1993 = alloca %nyx_string*
  store %nyx_string* %1992, %nyx_string** %1993
  %1994 = load %nyx_string*, %nyx_string** %1993
  %1995 = getelementptr [2 x i8], [2 x i8]* @.str184, i32 0, i32 0
  %1996 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str184.c, i8* %1995, i64 1)
  %1997 = call { i64, i8* }* @nyx_string_split(%nyx_string* %1994, %nyx_string* %1996)
  %1998 = alloca { i64, i8* }*
  store { i64, i8* }* %1997, { i64, i8* }** %1998
  %1999 = alloca i64
  store i64 0, i64* %1999
  %2000 = getelementptr [4 x i8], [4 x i8]* @.str185, i32 0, i32 0
  %2001 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str185.c, i8* %2000, i64 3)
  %2002 = alloca %nyx_string*
  store %nyx_string* %2001, %nyx_string** %2002
  %2003 = getelementptr [9 x i8], [9 x i8]* @.str186, i32 0, i32 0
  %2004 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str186.c, i8* %2003, i64 8)
  %2005 = alloca %nyx_string*
  store %nyx_string* %2004, %nyx_string** %2005
  %2006 = call i8* @llvm.stacksave()
  br label %while_cond416
while_cond416:
  %2007 = load i64, i64* %1999
  %2008 = load { i64, i8* }*, { i64, i8* }** %1998
  %2009 = call i64 @nyx_array_length({ i64, i8* }* %2008)
  %2010 = icmp slt i64 %2007, %2009
  br i1 %2010, label %while_body417, label %while_end418
while_body417:
  call void @llvm.stackrestore(i8* %2006)
  %2011 = load { i64, i8* }*, { i64, i8* }** %1998
  %2012 = load i64, i64* %1999
  %2013 = call i64 @nyx_array_get_checked({ i64, i8* }* %2011, i64 %2012, i64 2)
  %2014 = inttoptr i64 %2013 to %nyx_string*
  %2015 = alloca %nyx_string*
  store %nyx_string* %2014, %nyx_string** %2015
  %2016 = load %nyx_string*, %nyx_string** %2015
  %2017 = call %nyx_string* @nyx_string_trim(%nyx_string* %2016)
  %2018 = alloca %nyx_string*
  store %nyx_string* %2017, %nyx_string** %2018
  %2019 = alloca i1
  store i1 false, i1* %2019
  %2020 = load %nyx_string*, %nyx_string** %2018
  %2021 = load %nyx_string*, %nyx_string** %2002
  %2022 = call i1 @nyx_string_ends_with(%nyx_string* %2020, %nyx_string* %2021)
  br i1 %2022, label %sc_and_rhs419, label %sc_and_end420
sc_and_rhs419:
  %2023 = load %nyx_string*, %nyx_string** %2018
  %2024 = load %nyx_string*, %nyx_string** %2005
  %2025 = call i1 @nyx_string_ends_with(%nyx_string* %2023, %nyx_string* %2024)
  %2026 = xor i1 %2025, true
  store i1 %2026, i1* %2019
  br label %sc_and_end420
sc_and_end420:
  %2027 = load i1, i1* %2019
  br i1 %2027, label %then421, label %else422
then421:
  %2028 = load { i64, i8* }*, { i64, i8* }** %1982
  %2029 = load %nyx_string*, %nyx_string** %2018
  %2030 = load %nyx_string*, %nyx_string** %2018
  %2031 = call i64 @nyx_string_byte_length(%nyx_string* %2030)
  %2032 = sub i64 %2031, 3
  %2033 = call %nyx_string* @nyx_string_substring(%nyx_string* %2029, i64 0, i64 %2032)
  %2034 = ptrtoint %nyx_string* %2033 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2028, i64 %2034, i64 2)
  br label %merge423
else422:
  br label %merge423
merge423:
  %2035 = load i64, i64* %1999
  %2036 = add i64 %2035, 1
  store i64 %2036, i64* %1999
  br label %while_cond416
while_end418:
  %2037 = load { i64, i8* }*, { i64, i8* }** %1982
  ret { i64, i8* }* %2037
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
  %2038 = getelementptr [1 x i8], [1 x i8]* @.str187, i32 0, i32 0
  %2039 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str187.c, i8* %2038, i64 0)
  %2040 = alloca %nyx_string*
  store %nyx_string* %2039, %nyx_string** %2040
  %2041 = alloca i64
  store i64 0, i64* %2041
  %2042 = getelementptr [9 x i8], [9 x i8]* @.str188, i32 0, i32 0
  %2043 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str188.c, i8* %2042, i64 8)
  %2044 = alloca %nyx_string*
  store %nyx_string* %2043, %nyx_string** %2044
  %2045 = getelementptr [3 x i8], [3 x i8]* @.str189, i32 0, i32 0
  %2046 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str189.c, i8* %2045, i64 2)
  %2047 = alloca %nyx_string*
  store %nyx_string* %2046, %nyx_string** %2047
  %2048 = call i8* @llvm.stacksave()
  br label %while_cond424
while_cond424:
  %2049 = load i64, i64* %2041
  %2050 = load { i64, i8* }*, { i64, i8* }** %mods.ptr
  %2051 = call i64 @nyx_array_length({ i64, i8* }* %2050)
  %2052 = icmp slt i64 %2049, %2051
  br i1 %2052, label %while_body425, label %while_end426
while_body425:
  call void @llvm.stackrestore(i8* %2048)
  %2053 = load { i64, i8* }*, { i64, i8* }** %mods.ptr
  %2054 = load i64, i64* %2041
  %2055 = call i64 @nyx_array_get_checked({ i64, i8* }* %2053, i64 %2054, i64 2)
  %2056 = inttoptr i64 %2055 to %nyx_string*
  %2057 = alloca %nyx_string*
  store %nyx_string* %2056, %nyx_string** %2057
  %2058 = load %nyx_string*, %nyx_string** %2040
  %2059 = load %nyx_string*, %nyx_string** %2044
  %2060 = call %nyx_string* @nyx_string_concat(%nyx_string* %2058, %nyx_string* %2059)
  %2061 = load %nyx_string*, %nyx_string** %2057
  %2062 = call %nyx_string* @nyx_string_concat(%nyx_string* %2060, %nyx_string* %2061)
  %2063 = load %nyx_string*, %nyx_string** %2047
  %2064 = call %nyx_string* @nyx_string_concat(%nyx_string* %2062, %nyx_string* %2063)
  store %nyx_string* %2064, %nyx_string** %2040
  %2065 = load i64, i64* %2041
  %2066 = add i64 %2065, 1
  store i64 %2066, i64* %2041
  br label %while_cond424
while_end426:
  %2067 = load %nyx_string*, %nyx_string** %2040
  %2068 = getelementptr [36 x i8], [36 x i8]* @.str190, i32 0, i32 0
  %2069 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str190.c, i8* %2068, i64 35)
  %2070 = call %nyx_string* @nyx_string_concat(%nyx_string* %2067, %nyx_string* %2069)
  store %nyx_string* %2070, %nyx_string** %2040
  %2071 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2072 = getelementptr [13 x i8], [13 x i8]* @.str191, i32 0, i32 0
  %2073 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str191.c, i8* %2072, i64 12)
  %2074 = call %nyx_string* @nyx_string_concat(%nyx_string* %2071, %nyx_string* %2073)
  %2075 = load %nyx_string*, %nyx_string** %2040
  %2076 = call i8* @nyx_string_to_cstr(%nyx_string* %2074)
  %2077 = call i1 @nyx_write_file_safe(i8* %2076, %nyx_string* %2075)
  %2078 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2079 = getelementptr [14 x i8], [14 x i8]* @.str192, i32 0, i32 0
  %2080 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str192.c, i8* %2079, i64 13)
  %2081 = call %nyx_string* @nyx_string_concat(%nyx_string* %2078, %nyx_string* %2080)
  %2082 = alloca %nyx_string*
  store %nyx_string* %2081, %nyx_string** %2082
  %2083 = getelementptr [13 x i8], [13 x i8]* @.str193, i32 0, i32 0
  %2084 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str193.c, i8* %2083, i64 12)
  %2085 = getelementptr [8 x i8], [8 x i8]* @.str194, i32 0, i32 0
  %2086 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str194.c, i8* %2085, i64 7)
  %2087 = call %nyx_string* @nyx_string_concat(%nyx_string* %2084, %nyx_string* %2086)
  %2088 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2089 = call %nyx_string* @nyx_string_concat(%nyx_string* %2087, %nyx_string* %2088)
  %2090 = getelementptr [19 x i8], [19 x i8]* @.str195, i32 0, i32 0
  %2091 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str195.c, i8* %2090, i64 18)
  %2092 = call %nyx_string* @nyx_string_concat(%nyx_string* %2089, %nyx_string* %2091)
  %2093 = getelementptr [5 x i8], [5 x i8]* @.str196, i32 0, i32 0
  %2094 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str196.c, i8* %2093, i64 4)
  %2095 = call %nyx_string* @nyx_string_concat(%nyx_string* %2092, %nyx_string* %2094)
  %2096 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2097 = call %nyx_string* @nyx_string_concat(%nyx_string* %2095, %nyx_string* %2096)
  %2098 = getelementptr [24 x i8], [24 x i8]* @.str197, i32 0, i32 0
  %2099 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str197.c, i8* %2098, i64 23)
  %2100 = call %nyx_string* @nyx_string_concat(%nyx_string* %2097, %nyx_string* %2099)
  %2101 = getelementptr [5 x i8], [5 x i8]* @.str198, i32 0, i32 0
  %2102 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str198.c, i8* %2101, i64 4)
  %2103 = call %nyx_string* @nyx_string_concat(%nyx_string* %2100, %nyx_string* %2102)
  %2104 = load %nyx_string*, %nyx_string** %nyx_home.ptr
  %2105 = call %nyx_string* @nyx_string_concat(%nyx_string* %2103, %nyx_string* %2104)
  %2106 = getelementptr [3 x i8], [3 x i8]* @.str199, i32 0, i32 0
  %2107 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str199.c, i8* %2106, i64 2)
  %2108 = call %nyx_string* @nyx_string_concat(%nyx_string* %2105, %nyx_string* %2107)
  %2109 = getelementptr [137 x i8], [137 x i8]* @.str200, i32 0, i32 0
  %2110 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str200.c, i8* %2109, i64 136)
  %2111 = call %nyx_string* @nyx_string_concat(%nyx_string* %2108, %nyx_string* %2110)
  %2112 = getelementptr [43 x i8], [43 x i8]* @.str201, i32 0, i32 0
  %2113 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str201.c, i8* %2112, i64 42)
  %2114 = call %nyx_string* @nyx_string_concat(%nyx_string* %2111, %nyx_string* %2113)
  %2115 = load %nyx_string*, %nyx_string** %orig_dir.ptr
  %2116 = call %nyx_string* @nyx_string_concat(%nyx_string* %2114, %nyx_string* %2115)
  %2117 = getelementptr [38 x i8], [38 x i8]* @.str202, i32 0, i32 0
  %2118 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str202.c, i8* %2117, i64 37)
  %2119 = call %nyx_string* @nyx_string_concat(%nyx_string* %2116, %nyx_string* %2118)
  %2120 = load %nyx_string*, %nyx_string** %2082
  %2121 = call %nyx_string* @nyx_string_concat(%nyx_string* %2119, %nyx_string* %2120)
  %2122 = getelementptr [24 x i8], [24 x i8]* @.str203, i32 0, i32 0
  %2123 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str203.c, i8* %2122, i64 23)
  %2124 = call %nyx_string* @nyx_string_concat(%nyx_string* %2121, %nyx_string* %2123)
  %2125 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2126 = call %nyx_string* @nyx_string_concat(%nyx_string* %2124, %nyx_string* %2125)
  %2127 = getelementptr [21 x i8], [21 x i8]* @.str204, i32 0, i32 0
  %2128 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str204.c, i8* %2127, i64 20)
  %2129 = call %nyx_string* @nyx_string_concat(%nyx_string* %2126, %nyx_string* %2128)
  %2130 = getelementptr [7 x i8], [7 x i8]* @.str205, i32 0, i32 0
  %2131 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str205.c, i8* %2130, i64 6)
  %2132 = call %nyx_string* @nyx_string_concat(%nyx_string* %2129, %nyx_string* %2131)
  %2133 = getelementptr [17 x i8], [17 x i8]* @.str206, i32 0, i32 0
  %2134 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str206.c, i8* %2133, i64 16)
  %2135 = call %nyx_string* @nyx_string_concat(%nyx_string* %2132, %nyx_string* %2134)
  %2136 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2137 = call %nyx_string* @nyx_string_concat(%nyx_string* %2135, %nyx_string* %2136)
  %2138 = getelementptr [19 x i8], [19 x i8]* @.str207, i32 0, i32 0
  %2139 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str207.c, i8* %2138, i64 18)
  %2140 = call %nyx_string* @nyx_string_concat(%nyx_string* %2137, %nyx_string* %2139)
  %2141 = getelementptr [10 x i8], [10 x i8]* @.str208, i32 0, i32 0
  %2142 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str208.c, i8* %2141, i64 9)
  %2143 = call %nyx_string* @nyx_string_concat(%nyx_string* %2140, %nyx_string* %2142)
  %2144 = alloca %nyx_string*
  store %nyx_string* %2143, %nyx_string** %2144
  %2145 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2146 = getelementptr [13 x i8], [13 x i8]* @.str209, i32 0, i32 0
  %2147 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str209.c, i8* %2146, i64 12)
  %2148 = call %nyx_string* @nyx_string_concat(%nyx_string* %2145, %nyx_string* %2147)
  %2149 = load %nyx_string*, %nyx_string** %2144
  %2150 = call i8* @nyx_string_to_cstr(%nyx_string* %2148)
  %2151 = call i1 @nyx_write_file_safe(i8* %2150, %nyx_string* %2149)
  %2152 = getelementptr [7 x i8], [7 x i8]* @.str210, i32 0, i32 0
  %2153 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str210.c, i8* %2152, i64 6)
  %2154 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2155 = call %nyx_string* @nyx_string_concat(%nyx_string* %2153, %nyx_string* %2154)
  %2156 = getelementptr [14 x i8], [14 x i8]* @.str211, i32 0, i32 0
  %2157 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str211.c, i8* %2156, i64 13)
  %2158 = call %nyx_string* @nyx_string_concat(%nyx_string* %2155, %nyx_string* %2157)
  %2159 = call i8* @nyx_string_to_cstr(%nyx_string* %2158)
  %2160 = call i64 @nyx_exec_code(i8* %2159)
  %2161 = load %nyx_string*, %nyx_string** %2082
  ret %nyx_string* %2161
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
  %2162 = getelementptr [9 x i8], [9 x i8]* @.str212, i32 0, i32 0
  %2163 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str212.c, i8* %2162, i64 8)
  %2164 = call i8* @nyx_string_to_cstr(%nyx_string* %2163)
  %2165 = call %nyx_string* @nyx_getenv(i8* %2164)
  %2166 = alloca %nyx_string*
  store %nyx_string* %2165, %nyx_string** %2166
  %2167 = getelementptr [4 x i8], [4 x i8]* @.str213, i32 0, i32 0
  %2168 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str213.c, i8* %2167, i64 3)
  %2169 = call i8* @nyx_string_to_cstr(%nyx_string* %2168)
  %2170 = call %nyx_string* @nyx_getenv(i8* %2169)
  %2171 = alloca %nyx_string*
  store %nyx_string* %2170, %nyx_string** %2171
  %2172 = getelementptr [1 x i8], [1 x i8]* @.str214, i32 0, i32 0
  %2173 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str214.c, i8* %2172, i64 0)
  %2174 = call i8* @nyx_string_to_cstr(%nyx_string* %2173)
  call void @nyx_print_string(i8* %2174)
  %2175 = getelementptr [36 x i8], [36 x i8]* @.str215, i32 0, i32 0
  %2176 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str215.c, i8* %2175, i64 35)
  %2177 = call i8* @nyx_string_to_cstr(%nyx_string* %2176)
  call void @nyx_print_string(i8* %2177)
  %2178 = getelementptr [1 x i8], [1 x i8]* @.str216, i32 0, i32 0
  %2179 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str216.c, i8* %2178, i64 0)
  %2180 = alloca %nyx_string*
  store %nyx_string* %2179, %nyx_string** %2180
  %2181 = alloca i64
  store i64 0, i64* %2181
  %2182 = call i8* @nyx_map_new(i32 0)
  %2183 = alloca i8*
  store i8* %2182, i8** %2183
  %2184 = call { i64, i8* }* @nyx_array_new_ptr()
  %2185 = alloca { i64, i8* }*
  store { i64, i8* }* %2184, { i64, i8* }** %2185
  %2186 = alloca i64
  store i64 0, i64* %2186
  %2187 = getelementptr [2 x i8], [2 x i8]* @.str217, i32 0, i32 0
  %2188 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str217.c, i8* %2187, i64 1)
  %2189 = alloca %nyx_string*
  store %nyx_string* %2188, %nyx_string** %2189
  %2190 = getelementptr [9 x i8], [9 x i8]* @.str218, i32 0, i32 0
  %2191 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str218.c, i8* %2190, i64 8)
  %2192 = alloca %nyx_string*
  store %nyx_string* %2191, %nyx_string** %2192
  %2193 = getelementptr [3 x i8], [3 x i8]* @.str219, i32 0, i32 0
  %2194 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str219.c, i8* %2193, i64 2)
  %2195 = alloca %nyx_string*
  store %nyx_string* %2194, %nyx_string** %2195
  %2196 = getelementptr [2 x i8], [2 x i8]* @.str220, i32 0, i32 0
  %2197 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str220.c, i8* %2196, i64 1)
  %2198 = alloca %nyx_string*
  store %nyx_string* %2197, %nyx_string** %2198
  %2199 = getelementptr [2 x i8], [2 x i8]* @.str221, i32 0, i32 0
  %2200 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str221.c, i8* %2199, i64 1)
  %2201 = alloca %nyx_string*
  store %nyx_string* %2200, %nyx_string** %2201
  %2202 = call i8* @llvm.stacksave()
  br label %while_cond427
while_cond427:
  %2203 = load i64, i64* %2186
  %2204 = load { i64, i8* }*, { i64, i8* }** %run_files.ptr
  %2205 = call i64 @nyx_array_length({ i64, i8* }* %2204)
  %2206 = icmp slt i64 %2203, %2205
  br i1 %2206, label %while_body428, label %while_end429
while_body428:
  call void @llvm.stackrestore(i8* %2202)
  %2207 = load { i64, i8* }*, { i64, i8* }** %run_idx.ptr
  %2208 = load i64, i64* %2186
  %2209 = call i64 @nyx_array_get_checked({ i64, i8* }* %2207, i64 %2208, i64 2)
  %2210 = inttoptr i64 %2209 to %nyx_string*
  %2211 = alloca %nyx_string*
  store %nyx_string* %2210, %nyx_string** %2211
  %2212 = load { i64, i8* }*, { i64, i8* }** %run_files.ptr
  %2213 = load i64, i64* %2186
  %2214 = call i64 @nyx_array_get_checked({ i64, i8* }* %2212, i64 %2213, i64 2)
  %2215 = inttoptr i64 %2214 to %nyx_string*
  %2216 = alloca %nyx_string*
  store %nyx_string* %2215, %nyx_string** %2216
  %2217 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2218 = load %nyx_string*, %nyx_string** %2189
  %2219 = call %nyx_string* @nyx_string_concat(%nyx_string* %2217, %nyx_string* %2218)
  %2220 = load %nyx_string*, %nyx_string** %2211
  %2221 = call %nyx_string* @nyx_string_concat(%nyx_string* %2219, %nyx_string* %2220)
  %2222 = load %nyx_string*, %nyx_string** %2192
  %2223 = call %nyx_string* @nyx_string_concat(%nyx_string* %2221, %nyx_string* %2222)
  %2224 = alloca %nyx_string*
  store %nyx_string* %2223, %nyx_string** %2224
  %2225 = load %nyx_string*, %nyx_string** %2224
  %2226 = call i1 @cov_profraw_valid(%nyx_string* %2225)
  br i1 %2226, label %then430, label %else431
then430:
  %2227 = load %nyx_string*, %nyx_string** %2180
  %2228 = load %nyx_string*, %nyx_string** %2195
  %2229 = call %nyx_string* @nyx_string_concat(%nyx_string* %2227, %nyx_string* %2228)
  %2230 = load %nyx_string*, %nyx_string** %2224
  %2231 = call %nyx_string* @nyx_string_concat(%nyx_string* %2229, %nyx_string* %2230)
  %2232 = load %nyx_string*, %nyx_string** %2198
  %2233 = call %nyx_string* @nyx_string_concat(%nyx_string* %2231, %nyx_string* %2232)
  store %nyx_string* %2233, %nyx_string** %2180
  %2234 = load i64, i64* %2181
  %2235 = add i64 %2234, 1
  store i64 %2235, i64* %2181
  %2236 = load i8*, i8** %2183
  %2237 = load %nyx_string*, %nyx_string** %2211
  %2238 = load %nyx_string*, %nyx_string** %2201
  %2239 = call i8* @nyx_string_to_cstr(%nyx_string* %2237)
  %2240 = call i8* @nyx_string_to_cstr(%nyx_string* %2238)
  call void @nyx_map_insert_str(i8* %2236, i8* %2239, i8* %2240)
  br label %merge432
else431:
  %2241 = load { i64, i8* }*, { i64, i8* }** %2185
  %2242 = load %nyx_string*, %nyx_string** %2216
  %2243 = ptrtoint %nyx_string* %2242 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2241, i64 %2243, i64 2)
  br label %merge432
merge432:
  %2244 = load i64, i64* %2186
  %2245 = add i64 %2244, 1
  store i64 %2245, i64* %2186
  br label %while_cond427
while_end429:
  %2246 = call i8* @nyx_map_new(i32 0)
  %2247 = alloca i8*
  store i8* %2246, i8** %2247
  %2248 = load i64, i64* %2181
  %2249 = icmp sgt i64 %2248, 0
  br i1 %2249, label %then433, label %else434
then433:
  %2250 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2251 = getelementptr [17 x i8], [17 x i8]* @.str222, i32 0, i32 0
  %2252 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str222.c, i8* %2251, i64 16)
  %2253 = call %nyx_string* @nyx_string_concat(%nyx_string* %2250, %nyx_string* %2252)
  %2254 = alloca %nyx_string*
  store %nyx_string* %2253, %nyx_string** %2254
  %2255 = load %nyx_string*, %nyx_string** %profdata.ptr
  %2256 = getelementptr [12 x i8], [12 x i8]* @.str223, i32 0, i32 0
  %2257 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str223.c, i8* %2256, i64 11)
  %2258 = call %nyx_string* @nyx_string_concat(%nyx_string* %2255, %nyx_string* %2257)
  %2259 = load %nyx_string*, %nyx_string** %2254
  %2260 = call %nyx_string* @nyx_string_concat(%nyx_string* %2258, %nyx_string* %2259)
  %2261 = getelementptr [2 x i8], [2 x i8]* @.str224, i32 0, i32 0
  %2262 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str224.c, i8* %2261, i64 1)
  %2263 = call %nyx_string* @nyx_string_concat(%nyx_string* %2260, %nyx_string* %2262)
  %2264 = load %nyx_string*, %nyx_string** %2180
  %2265 = call %nyx_string* @nyx_string_concat(%nyx_string* %2263, %nyx_string* %2264)
  %2266 = getelementptr [5 x i8], [5 x i8]* @.str225, i32 0, i32 0
  %2267 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str225.c, i8* %2266, i64 4)
  %2268 = call %nyx_string* @nyx_string_concat(%nyx_string* %2265, %nyx_string* %2267)
  %2269 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2270 = call %nyx_string* @nyx_string_concat(%nyx_string* %2268, %nyx_string* %2269)
  %2271 = getelementptr [17 x i8], [17 x i8]* @.str226, i32 0, i32 0
  %2272 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str226.c, i8* %2271, i64 16)
  %2273 = call %nyx_string* @nyx_string_concat(%nyx_string* %2270, %nyx_string* %2272)
  %2274 = call i8* @nyx_string_to_cstr(%nyx_string* %2273)
  %2275 = call i64 @nyx_exec_code(i8* %2274)
  %2276 = alloca i64
  store i64 %2275, i64* %2276
  %2277 = load i64, i64* %2276
  %2278 = icmp ne i64 %2277, 0
  br i1 %2278, label %then436, label %else437
then436:
  %2279 = getelementptr [36 x i8], [36 x i8]* @.str227, i32 0, i32 0
  %2280 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str227.c, i8* %2279, i64 35)
  %2281 = call i8* @nyx_string_to_cstr(%nyx_string* %2280)
  call void @nyx_print_string(i8* %2281)
  %2282 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2283 = getelementptr [11 x i8], [11 x i8]* @.str228, i32 0, i32 0
  %2284 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str228.c, i8* %2283, i64 10)
  %2285 = call %nyx_string* @nyx_string_concat(%nyx_string* %2282, %nyx_string* %2284)
  %2286 = call i8* @nyx_string_to_cstr(%nyx_string* %2285)
  %2287 = call %nyx_string* @nyx_read_file(i8* %2286)
  %2288 = call i8* @nyx_string_to_cstr(%nyx_string* %2287)
  call void @nyx_print_string(i8* %2288)
  ret i64 1
else437:
  br label %merge438
merge438:
  %2289 = load %nyx_string*, %nyx_string** %profdata.ptr
  %2290 = getelementptr [33 x i8], [33 x i8]* @.str229, i32 0, i32 0
  %2291 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str229.c, i8* %2290, i64 32)
  %2292 = call %nyx_string* @nyx_string_concat(%nyx_string* %2289, %nyx_string* %2291)
  %2293 = load %nyx_string*, %nyx_string** %2254
  %2294 = call %nyx_string* @nyx_string_concat(%nyx_string* %2292, %nyx_string* %2293)
  %2295 = getelementptr [6 x i8], [6 x i8]* @.str230, i32 0, i32 0
  %2296 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str230.c, i8* %2295, i64 5)
  %2297 = call %nyx_string* @nyx_string_concat(%nyx_string* %2294, %nyx_string* %2296)
  %2298 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2299 = call %nyx_string* @nyx_string_concat(%nyx_string* %2297, %nyx_string* %2298)
  %2300 = getelementptr [16 x i8], [16 x i8]* @.str231, i32 0, i32 0
  %2301 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str231.c, i8* %2300, i64 15)
  %2302 = call %nyx_string* @nyx_string_concat(%nyx_string* %2299, %nyx_string* %2301)
  %2303 = call i8* @nyx_string_to_cstr(%nyx_string* %2302)
  %2304 = call i64 @nyx_exec_code(i8* %2303)
  %2305 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2306 = getelementptr [10 x i8], [10 x i8]* @.str232, i32 0, i32 0
  %2307 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str232.c, i8* %2306, i64 9)
  %2308 = call %nyx_string* @nyx_string_concat(%nyx_string* %2305, %nyx_string* %2307)
  %2309 = call i8* @nyx_string_to_cstr(%nyx_string* %2308)
  %2310 = call %nyx_string* @nyx_read_file(i8* %2309)
  %2311 = call i8* @cov_called_from_show(%nyx_string* %2310)
  store i8* %2311, i8** %2247
  br label %merge435
else434:
  br label %merge435
merge435:
  %2312 = call i8* @nyx_map_new(i32 0)
  %2313 = alloca i8*
  store i8* %2312, i8** %2313
  %2314 = call i8* @nyx_map_new(i32 0)
  %2315 = alloca i8*
  store i8* %2314, i8** %2315
  %2316 = call i8* @nyx_map_new(i32 0)
  %2317 = alloca i8*
  store i8* %2316, i8** %2317
  %2318 = call i8* @nyx_map_new(i32 0)
  %2319 = alloca i8*
  store i8* %2318, i8** %2319
  store i64 0, i64* %2186
  %2320 = getelementptr [2 x i8], [2 x i8]* @.str233, i32 0, i32 0
  %2321 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str233.c, i8* %2320, i64 1)
  %2322 = alloca %nyx_string*
  store %nyx_string* %2321, %nyx_string** %2322
  %2323 = getelementptr [5 x i8], [5 x i8]* @.str234, i32 0, i32 0
  %2324 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str234.c, i8* %2323, i64 4)
  %2325 = alloca %nyx_string*
  store %nyx_string* %2324, %nyx_string** %2325
  %2326 = getelementptr [2 x i8], [2 x i8]* @.str235, i32 0, i32 0
  %2327 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str235.c, i8* %2326, i64 1)
  %2328 = alloca %nyx_string*
  store %nyx_string* %2327, %nyx_string** %2328
  %2329 = getelementptr [1 x i8], [1 x i8]* @.str236, i32 0, i32 0
  %2330 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str236.c, i8* %2329, i64 0)
  %2331 = alloca %nyx_string*
  store %nyx_string* %2330, %nyx_string** %2331
  %2332 = getelementptr [2 x i8], [2 x i8]* @.str237, i32 0, i32 0
  %2333 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str237.c, i8* %2332, i64 1)
  %2334 = alloca %nyx_string*
  store %nyx_string* %2333, %nyx_string** %2334
  %2335 = getelementptr [5 x i8], [5 x i8]* @.str238, i32 0, i32 0
  %2336 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str238.c, i8* %2335, i64 4)
  %2337 = alloca %nyx_string*
  store %nyx_string* %2336, %nyx_string** %2337
  %2338 = call i8* @llvm.stacksave()
  br label %while_cond439
while_cond439:
  %2339 = load i64, i64* %2186
  %2340 = load { i64, i8* }*, { i64, i8* }** %run_files.ptr
  %2341 = call i64 @nyx_array_length({ i64, i8* }* %2340)
  %2342 = icmp slt i64 %2339, %2341
  br i1 %2342, label %while_body440, label %while_end441
while_body440:
  call void @llvm.stackrestore(i8* %2338)
  %2343 = load { i64, i8* }*, { i64, i8* }** %run_idx.ptr
  %2344 = load i64, i64* %2186
  %2345 = call i64 @nyx_array_get_checked({ i64, i8* }* %2343, i64 %2344, i64 2)
  %2346 = inttoptr i64 %2345 to %nyx_string*
  %2347 = alloca %nyx_string*
  store %nyx_string* %2346, %nyx_string** %2347
  %2348 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2349 = load %nyx_string*, %nyx_string** %2322
  %2350 = call %nyx_string* @nyx_string_concat(%nyx_string* %2348, %nyx_string* %2349)
  %2351 = load %nyx_string*, %nyx_string** %2347
  %2352 = call %nyx_string* @nyx_string_concat(%nyx_string* %2350, %nyx_string* %2351)
  %2353 = load %nyx_string*, %nyx_string** %2325
  %2354 = call %nyx_string* @nyx_string_concat(%nyx_string* %2352, %nyx_string* %2353)
  %2355 = alloca %nyx_string*
  store %nyx_string* %2354, %nyx_string** %2355
  %2356 = load %nyx_string*, %nyx_string** %2355
  %2357 = call i8* @nyx_string_to_cstr(%nyx_string* %2356)
  %2358 = call i1 @nyx_file_exists(i8* %2357)
  br i1 %2358, label %then442, label %else443
then442:
  %2359 = load %nyx_string*, %nyx_string** %2355
  %2360 = call i8* @nyx_string_to_cstr(%nyx_string* %2359)
  %2361 = call %nyx_string* @nyx_read_file(i8* %2360)
  %2362 = load %nyx_string*, %nyx_string** %2328
  %2363 = call { i64, i8* }* @nyx_string_split(%nyx_string* %2361, %nyx_string* %2362)
  %2364 = alloca { i64, i8* }*
  store { i64, i8* }* %2363, { i64, i8* }** %2364
  %2365 = alloca i64
  store i64 0, i64* %2365
  %2366 = call i8* @llvm.stacksave()
  br label %while_cond445
while_cond445:
  %2367 = load i64, i64* %2365
  %2368 = load { i64, i8* }*, { i64, i8* }** %2364
  %2369 = call i64 @nyx_array_length({ i64, i8* }* %2368)
  %2370 = icmp slt i64 %2367, %2369
  br i1 %2370, label %while_body446, label %while_end447
while_body446:
  call void @llvm.stackrestore(i8* %2366)
  %2371 = load { i64, i8* }*, { i64, i8* }** %2364
  %2372 = load i64, i64* %2365
  %2373 = call i64 @nyx_array_get_checked({ i64, i8* }* %2371, i64 %2372, i64 2)
  %2374 = inttoptr i64 %2373 to %nyx_string*
  %2375 = alloca %nyx_string*
  store %nyx_string* %2374, %nyx_string** %2375
  %2376 = load %nyx_string*, %nyx_string** %2375
  %2377 = call { i64, i8* }* @cov_fields(%nyx_string* %2376)
  %2378 = alloca { i64, i8* }*
  store { i64, i8* }* %2377, { i64, i8* }** %2378
  %2379 = load { i64, i8* }*, { i64, i8* }** %2378
  %2380 = call i64 @nyx_array_length({ i64, i8* }* %2379)
  %2381 = icmp sge i64 %2380, 5
  br i1 %2381, label %then448, label %else449
then448:
  %2382 = load { i64, i8* }*, { i64, i8* }** %2378
  %2383 = call i64 @nyx_array_get_checked({ i64, i8* }* %2382, i64 0, i64 2)
  %2384 = inttoptr i64 %2383 to %nyx_string*
  %2385 = alloca %nyx_string*
  store %nyx_string* %2384, %nyx_string** %2385
  %2386 = load { i64, i8* }*, { i64, i8* }** %2378
  %2387 = call i64 @nyx_array_get_checked({ i64, i8* }* %2386, i64 1, i64 2)
  %2388 = inttoptr i64 %2387 to %nyx_string*
  %2389 = alloca %nyx_string*
  store %nyx_string* %2388, %nyx_string** %2389
  %2390 = load { i64, i8* }*, { i64, i8* }** %2378
  %2391 = call i64 @nyx_array_get_checked({ i64, i8* }* %2390, i64 3, i64 2)
  %2392 = inttoptr i64 %2391 to %nyx_string*
  %2393 = alloca %nyx_string*
  store %nyx_string* %2392, %nyx_string** %2393
  %2394 = load { i64, i8* }*, { i64, i8* }** %2378
  %2395 = call i64 @nyx_array_get_checked({ i64, i8* }* %2394, i64 4, i64 2)
  %2396 = inttoptr i64 %2395 to %nyx_string*
  %2397 = alloca %nyx_string*
  store %nyx_string* %2396, %nyx_string** %2397
  %2398 = load %nyx_string*, %nyx_string** %2389
  %2399 = load %nyx_string*, %nyx_string** %2331
  %2400 = call i1 @nyx_string_equals(%nyx_string* %2398, %nyx_string* %2399)
  %2401 = xor i1 %2400, true
  br i1 %2401, label %then451, label %else452
then451:
  %2402 = load i8*, i8** %2319
  %2403 = load %nyx_string*, %nyx_string** %2389
  %2404 = load %nyx_string*, %nyx_string** %2334
  %2405 = call i8* @nyx_string_to_cstr(%nyx_string* %2403)
  %2406 = call i8* @nyx_string_to_cstr(%nyx_string* %2404)
  call void @nyx_map_insert_str(i8* %2402, i8* %2405, i8* %2406)
  br label %merge453
else452:
  br label %merge453
merge453:
  %2407 = load i8*, i8** %2183
  %2408 = load %nyx_string*, %nyx_string** %2347
  %2409 = call i8* @nyx_string_to_cstr(%nyx_string* %2408)
  %2410 = call i1 @nyx_map_contains_str(i8* %2407, i8* %2409)
  br i1 %2410, label %then454, label %else455
then454:
  %2411 = load i8*, i8** %2313
  %2412 = load %nyx_string*, %nyx_string** %2385
  %2413 = load %nyx_string*, %nyx_string** %2334
  %2414 = call i8* @nyx_string_to_cstr(%nyx_string* %2412)
  %2415 = call i8* @nyx_string_to_cstr(%nyx_string* %2413)
  call void @nyx_map_insert_str(i8* %2411, i8* %2414, i8* %2415)
  %2416 = alloca i1
  store i1 false, i1* %2416
  %2417 = load %nyx_string*, %nyx_string** %2397
  %2418 = load %nyx_string*, %nyx_string** %2337
  %2419 = call i1 @nyx_string_equals(%nyx_string* %2417, %nyx_string* %2418)
  br i1 %2419, label %sc_and_rhs457, label %sc_and_end458
sc_and_rhs457:
  %2420 = load i8*, i8** %2247
  %2421 = load %nyx_string*, %nyx_string** %2385
  %2422 = call i8* @nyx_string_to_cstr(%nyx_string* %2421)
  %2423 = call i1 @nyx_map_contains_str(i8* %2420, i8* %2422)
  store i1 %2423, i1* %2416
  br label %sc_and_end458
sc_and_end458:
  %2424 = load i1, i1* %2416
  br i1 %2424, label %then459, label %else460
then459:
  %2425 = load i8*, i8** %2317
  %2426 = load %nyx_string*, %nyx_string** %2393
  %2427 = load %nyx_string*, %nyx_string** %2334
  %2428 = call i8* @nyx_string_to_cstr(%nyx_string* %2426)
  %2429 = call i8* @nyx_string_to_cstr(%nyx_string* %2427)
  call void @nyx_map_insert_str(i8* %2425, i8* %2428, i8* %2429)
  br label %merge461
else460:
  br label %merge461
merge461:
  br label %merge456
else455:
  %2430 = load i8*, i8** %2315
  %2431 = load %nyx_string*, %nyx_string** %2385
  %2432 = load %nyx_string*, %nyx_string** %2334
  %2433 = call i8* @nyx_string_to_cstr(%nyx_string* %2431)
  %2434 = call i8* @nyx_string_to_cstr(%nyx_string* %2432)
  call void @nyx_map_insert_str(i8* %2430, i8* %2433, i8* %2434)
  br label %merge456
merge456:
  br label %merge450
else449:
  br label %merge450
merge450:
  %2435 = load i64, i64* %2365
  %2436 = add i64 %2435, 1
  store i64 %2436, i64* %2365
  br label %while_cond445
while_end447:
  br label %merge444
else443:
  br label %merge444
merge444:
  %2437 = load i64, i64* %2186
  %2438 = add i64 %2437, 1
  store i64 %2438, i64* %2186
  br label %while_cond439
while_end441:
  %2439 = call { i64, i8* }* @cov_src_modules()
  %2440 = alloca { i64, i8* }*
  store { i64, i8* }* %2439, { i64, i8* }** %2440
  %2441 = load { i64, i8* }*, { i64, i8* }** %2440
  %2442 = call i64 @nyx_array_length({ i64, i8* }* %2441)
  %2443 = icmp eq i64 %2442, 0
  br i1 %2443, label %then462, label %else463
then462:
  %2444 = getelementptr [27 x i8], [27 x i8]* @.str239, i32 0, i32 0
  %2445 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str239.c, i8* %2444, i64 26)
  %2446 = call i8* @nyx_string_to_cstr(%nyx_string* %2445)
  call void @nyx_print_string(i8* %2446)
  ret i64 0
else463:
  br label %merge464
merge464:
  %2447 = load %nyx_string*, %nyx_string** %2166
  %2448 = load %nyx_string*, %nyx_string** %2171
  %2449 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2450 = load { i64, i8* }*, { i64, i8* }** %2440
  %2451 = call %nyx_string* @cov_universe(%nyx_string* %2447, %nyx_string* %2448, %nyx_string* %2449, { i64, i8* }* %2450)
  %2452 = alloca %nyx_string*
  store %nyx_string* %2451, %nyx_string** %2452
  %2453 = load %nyx_string*, %nyx_string** %2452
  %2454 = call i8* @nyx_string_to_cstr(%nyx_string* %2453)
  %2455 = call i1 @nyx_file_exists(i8* %2454)
  %2456 = xor i1 %2455, true
  br i1 %2456, label %then465, label %else466
then465:
  %2457 = getelementptr [68 x i8], [68 x i8]* @.str240, i32 0, i32 0
  %2458 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str240.c, i8* %2457, i64 67)
  %2459 = call i8* @nyx_string_to_cstr(%nyx_string* %2458)
  call void @nyx_print_string(i8* %2459)
  %2460 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2461 = getelementptr [14 x i8], [14 x i8]* @.str241, i32 0, i32 0
  %2462 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str241.c, i8* %2461, i64 13)
  %2463 = call %nyx_string* @nyx_string_concat(%nyx_string* %2460, %nyx_string* %2462)
  %2464 = call i8* @nyx_string_to_cstr(%nyx_string* %2463)
  %2465 = call i1 @nyx_file_exists(i8* %2464)
  br i1 %2465, label %then468, label %else469
then468:
  %2466 = load %nyx_string*, %nyx_string** %cov_dir.ptr
  %2467 = getelementptr [14 x i8], [14 x i8]* @.str242, i32 0, i32 0
  %2468 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str242.c, i8* %2467, i64 13)
  %2469 = call %nyx_string* @nyx_string_concat(%nyx_string* %2466, %nyx_string* %2468)
  %2470 = call i8* @nyx_string_to_cstr(%nyx_string* %2469)
  %2471 = call %nyx_string* @nyx_read_file(i8* %2470)
  %2472 = call i8* @nyx_string_to_cstr(%nyx_string* %2471)
  call void @nyx_print_string(i8* %2472)
  br label %merge470
else469:
  br label %merge470
merge470:
  ret i64 1
else466:
  br label %merge467
merge467:
  %2473 = load %nyx_string*, %nyx_string** %2452
  %2474 = call i8* @nyx_string_to_cstr(%nyx_string* %2473)
  %2475 = call %nyx_string* @nyx_read_file(i8* %2474)
  %2476 = getelementptr [2 x i8], [2 x i8]* @.str243, i32 0, i32 0
  %2477 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str243.c, i8* %2476, i64 1)
  %2478 = call { i64, i8* }* @nyx_string_split(%nyx_string* %2475, %nyx_string* %2477)
  %2479 = alloca { i64, i8* }*
  store { i64, i8* }* %2478, { i64, i8* }** %2479
  %2480 = call { i64, i8* }* @nyx_array_new_ptr()
  %2481 = alloca { i64, i8* }*
  store { i64, i8* }* %2480, { i64, i8* }** %2481
  %2482 = alloca i64
  store i64 0, i64* %2482
  %2483 = getelementptr [3 x i8], [3 x i8]* @.str244, i32 0, i32 0
  %2484 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str244.c, i8* %2483, i64 2)
  %2485 = alloca %nyx_string*
  store %nyx_string* %2484, %nyx_string** %2485
  %2486 = getelementptr [7 x i8], [7 x i8]* @.str245, i32 0, i32 0
  %2487 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str245.c, i8* %2486, i64 6)
  %2488 = alloca %nyx_string*
  store %nyx_string* %2487, %nyx_string** %2488
  %2489 = getelementptr [6 x i8], [6 x i8]* @.str246, i32 0, i32 0
  %2490 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str246.c, i8* %2489, i64 5)
  %2491 = alloca %nyx_string*
  store %nyx_string* %2490, %nyx_string** %2491
  %2492 = getelementptr [9 x i8], [9 x i8]* @.str247, i32 0, i32 0
  %2493 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str247.c, i8* %2492, i64 8)
  %2494 = alloca %nyx_string*
  store %nyx_string* %2493, %nyx_string** %2494
  %2495 = getelementptr [5 x i8], [5 x i8]* @.str248, i32 0, i32 0
  %2496 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str248.c, i8* %2495, i64 4)
  %2497 = alloca %nyx_string*
  store %nyx_string* %2496, %nyx_string** %2497
  %2498 = getelementptr [5 x i8], [5 x i8]* @.str249, i32 0, i32 0
  %2499 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str249.c, i8* %2498, i64 4)
  %2500 = alloca %nyx_string*
  store %nyx_string* %2499, %nyx_string** %2500
  %2501 = getelementptr [3 x i8], [3 x i8]* @.str250, i32 0, i32 0
  %2502 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str250.c, i8* %2501, i64 2)
  %2503 = alloca %nyx_string*
  store %nyx_string* %2502, %nyx_string** %2503
  %2504 = getelementptr [3 x i8], [3 x i8]* @.str251, i32 0, i32 0
  %2505 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str251.c, i8* %2504, i64 2)
  %2506 = alloca %nyx_string*
  store %nyx_string* %2505, %nyx_string** %2506
  %2507 = getelementptr [10 x i8], [10 x i8]* @.str252, i32 0, i32 0
  %2508 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str252.c, i8* %2507, i64 9)
  %2509 = alloca %nyx_string*
  store %nyx_string* %2508, %nyx_string** %2509
  %2510 = getelementptr [5 x i8], [5 x i8]* @.str253, i32 0, i32 0
  %2511 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str253.c, i8* %2510, i64 4)
  %2512 = alloca %nyx_string*
  store %nyx_string* %2511, %nyx_string** %2512
  %2513 = getelementptr [2 x i8], [2 x i8]* @.str254, i32 0, i32 0
  %2514 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str254.c, i8* %2513, i64 1)
  %2515 = alloca %nyx_string*
  store %nyx_string* %2514, %nyx_string** %2515
  %2516 = call i8* @llvm.stacksave()
  br label %while_cond471
while_cond471:
  %2517 = load i64, i64* %2482
  %2518 = load { i64, i8* }*, { i64, i8* }** %2479
  %2519 = call i64 @nyx_array_length({ i64, i8* }* %2518)
  %2520 = icmp slt i64 %2517, %2519
  br i1 %2520, label %while_body472, label %while_end473
while_body472:
  call void @llvm.stackrestore(i8* %2516)
  %2521 = load { i64, i8* }*, { i64, i8* }** %2479
  %2522 = load i64, i64* %2482
  %2523 = call i64 @nyx_array_get_checked({ i64, i8* }* %2521, i64 %2522, i64 2)
  %2524 = inttoptr i64 %2523 to %nyx_string*
  %2525 = alloca %nyx_string*
  store %nyx_string* %2524, %nyx_string** %2525
  %2526 = load %nyx_string*, %nyx_string** %2525
  %2527 = call { i64, i8* }* @cov_fields(%nyx_string* %2526)
  %2528 = alloca { i64, i8* }*
  store { i64, i8* }* %2527, { i64, i8* }** %2528
  %2529 = load { i64, i8* }*, { i64, i8* }** %2528
  %2530 = call i64 @nyx_array_length({ i64, i8* }* %2529)
  %2531 = icmp sge i64 %2530, 5
  br i1 %2531, label %then474, label %else475
then474:
  %2532 = load { i64, i8* }*, { i64, i8* }** %2528
  %2533 = call i64 @nyx_array_get_checked({ i64, i8* }* %2532, i64 0, i64 2)
  %2534 = inttoptr i64 %2533 to %nyx_string*
  %2535 = alloca %nyx_string*
  store %nyx_string* %2534, %nyx_string** %2535
  %2536 = load { i64, i8* }*, { i64, i8* }** %2528
  %2537 = call i64 @nyx_array_get_checked({ i64, i8* }* %2536, i64 1, i64 2)
  %2538 = inttoptr i64 %2537 to %nyx_string*
  %2539 = alloca %nyx_string*
  store %nyx_string* %2538, %nyx_string** %2539
  %2540 = load { i64, i8* }*, { i64, i8* }** %2528
  %2541 = call i64 @nyx_array_get_checked({ i64, i8* }* %2540, i64 2, i64 2)
  %2542 = inttoptr i64 %2541 to %nyx_string*
  %2543 = alloca %nyx_string*
  store %nyx_string* %2542, %nyx_string** %2543
  %2544 = load { i64, i8* }*, { i64, i8* }** %2528
  %2545 = call i64 @nyx_array_get_checked({ i64, i8* }* %2544, i64 3, i64 2)
  %2546 = inttoptr i64 %2545 to %nyx_string*
  %2547 = alloca %nyx_string*
  store %nyx_string* %2546, %nyx_string** %2547
  %2548 = load { i64, i8* }*, { i64, i8* }** %2528
  %2549 = call i64 @nyx_array_get_checked({ i64, i8* }* %2548, i64 4, i64 2)
  %2550 = inttoptr i64 %2549 to %nyx_string*
  %2551 = alloca %nyx_string*
  store %nyx_string* %2550, %nyx_string** %2551
  %2552 = alloca i1
  store i1 true, i1* %2552
  %2553 = alloca i1
  store i1 true, i1* %2553
  %2554 = alloca i1
  store i1 true, i1* %2554
  %2555 = load %nyx_string*, %nyx_string** %2551
  %2556 = load %nyx_string*, %nyx_string** %2485
  %2557 = call i1 @nyx_string_equals(%nyx_string* %2555, %nyx_string* %2556)
  br i1 %2557, label %sc_or_end478, label %sc_or_rhs477
sc_or_rhs477:
  %2558 = load %nyx_string*, %nyx_string** %2551
  %2559 = load %nyx_string*, %nyx_string** %2488
  %2560 = call i1 @nyx_string_equals(%nyx_string* %2558, %nyx_string* %2559)
  store i1 %2560, i1* %2554
  br label %sc_or_end478
sc_or_end478:
  %2561 = load i1, i1* %2554
  br i1 %2561, label %sc_or_end480, label %sc_or_rhs479
sc_or_rhs479:
  %2562 = load %nyx_string*, %nyx_string** %2551
  %2563 = load %nyx_string*, %nyx_string** %2491
  %2564 = call i1 @nyx_string_equals(%nyx_string* %2562, %nyx_string* %2563)
  store i1 %2564, i1* %2553
  br label %sc_or_end480
sc_or_end480:
  %2565 = load i1, i1* %2553
  br i1 %2565, label %sc_or_end482, label %sc_or_rhs481
sc_or_rhs481:
  %2566 = load %nyx_string*, %nyx_string** %2551
  %2567 = load %nyx_string*, %nyx_string** %2494
  %2568 = call i1 @nyx_string_equals(%nyx_string* %2566, %nyx_string* %2567)
  store i1 %2568, i1* %2552
  br label %sc_or_end482
sc_or_end482:
  %2569 = load i1, i1* %2552
  %2570 = alloca i1
  store i1 %2569, i1* %2570
  %2571 = alloca i1
  store i1 false, i1* %2571
  %2572 = alloca i1
  store i1 false, i1* %2572
  %2573 = load i1, i1* %2570
  br i1 %2573, label %sc_and_rhs483, label %sc_and_end484
sc_and_rhs483:
  %2574 = load %nyx_string*, %nyx_string** %2539
  %2575 = load %nyx_string*, %nyx_string** %2497
  %2576 = call i1 @nyx_string_starts_with(%nyx_string* %2574, %nyx_string* %2575)
  store i1 %2576, i1* %2572
  br label %sc_and_end484
sc_and_end484:
  %2577 = load i1, i1* %2572
  br i1 %2577, label %sc_and_rhs485, label %sc_and_end486
sc_and_rhs485:
  %2578 = load %nyx_string*, %nyx_string** %2547
  %2579 = load %nyx_string*, %nyx_string** %2500
  %2580 = call i1 @nyx_string_equals(%nyx_string* %2578, %nyx_string* %2579)
  %2581 = xor i1 %2580, true
  store i1 %2581, i1* %2571
  br label %sc_and_end486
sc_and_end486:
  %2582 = load i1, i1* %2571
  br i1 %2582, label %then487, label %else488
then487:
  %2583 = load i8*, i8** %2247
  %2584 = load %nyx_string*, %nyx_string** %2535
  %2585 = call i8* @nyx_string_to_cstr(%nyx_string* %2584)
  %2586 = call i1 @nyx_map_contains_str(i8* %2583, i8* %2585)
  %2587 = alloca i1
  store i1 %2586, i1* %2587
  %2588 = load %nyx_string*, %nyx_string** %2551
  %2589 = load %nyx_string*, %nyx_string** %2494
  %2590 = call i1 @nyx_string_equals(%nyx_string* %2588, %nyx_string* %2589)
  br i1 %2590, label %then490, label %else491
then490:
  %2591 = load i8*, i8** %2317
  %2592 = load %nyx_string*, %nyx_string** %2535
  %2593 = call i8* @nyx_string_to_cstr(%nyx_string* %2592)
  %2594 = call i1 @nyx_map_contains_str(i8* %2591, i8* %2593)
  store i1 %2594, i1* %2587
  br label %merge492
else491:
  br label %merge492
merge492:
  %2595 = load %nyx_string*, %nyx_string** %2503
  %2596 = alloca %nyx_string*
  store %nyx_string* %2595, %nyx_string** %2596
  %2597 = load i1, i1* %2587
  br i1 %2597, label %then493, label %else494
then493:
  %2598 = load %nyx_string*, %nyx_string** %2506
  store %nyx_string* %2598, %nyx_string** %2596
  br label %merge495
else494:
  %2599 = alloca i1
  store i1 false, i1* %2599
  %2600 = load i8*, i8** %2313
  %2601 = load %nyx_string*, %nyx_string** %2535
  %2602 = call i8* @nyx_string_to_cstr(%nyx_string* %2601)
  %2603 = call i1 @nyx_map_contains_str(i8* %2600, i8* %2602)
  %2604 = xor i1 %2603, true
  br i1 %2604, label %sc_and_rhs496, label %sc_and_end497
sc_and_rhs496:
  %2605 = load i8*, i8** %2315
  %2606 = load %nyx_string*, %nyx_string** %2535
  %2607 = call i8* @nyx_string_to_cstr(%nyx_string* %2606)
  %2608 = call i1 @nyx_map_contains_str(i8* %2605, i8* %2607)
  store i1 %2608, i1* %2599
  br label %sc_and_end497
sc_and_end497:
  %2609 = load i1, i1* %2599
  br i1 %2609, label %then498, label %else499
then498:
  %2610 = load %nyx_string*, %nyx_string** %2509
  store %nyx_string* %2610, %nyx_string** %2596
  br label %merge500
else499:
  br label %merge500
merge500:
  br label %merge495
merge495:
  %2611 = load { i64, i8* }*, { i64, i8* }** %2481
  %2612 = load %nyx_string*, %nyx_string** %2539
  %2613 = load %nyx_string*, %nyx_string** %2512
  %2614 = call %nyx_string* @nyx_string_concat(%nyx_string* %2612, %nyx_string* %2613)
  %2615 = load %nyx_string*, %nyx_string** %2543
  %2616 = call i64 @nyx_string_to_int(%nyx_string* %2615)
  %2617 = call %nyx_string* @cov_pad(i64 %2616)
  %2618 = call %nyx_string* @nyx_string_concat(%nyx_string* %2614, %nyx_string* %2617)
  %2619 = load %nyx_string*, %nyx_string** %2515
  %2620 = call %nyx_string* @nyx_string_concat(%nyx_string* %2618, %nyx_string* %2619)
  %2621 = load %nyx_string*, %nyx_string** %2547
  %2622 = call %nyx_string* @nyx_string_concat(%nyx_string* %2620, %nyx_string* %2621)
  %2623 = load %nyx_string*, %nyx_string** %2515
  %2624 = call %nyx_string* @nyx_string_concat(%nyx_string* %2622, %nyx_string* %2623)
  %2625 = load %nyx_string*, %nyx_string** %2596
  %2626 = call %nyx_string* @nyx_string_concat(%nyx_string* %2624, %nyx_string* %2625)
  %2627 = load %nyx_string*, %nyx_string** %2515
  %2628 = call %nyx_string* @nyx_string_concat(%nyx_string* %2626, %nyx_string* %2627)
  %2629 = load %nyx_string*, %nyx_string** %2539
  %2630 = call %nyx_string* @nyx_string_concat(%nyx_string* %2628, %nyx_string* %2629)
  %2631 = ptrtoint %nyx_string* %2630 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2611, i64 %2631, i64 2)
  br label %merge489
else488:
  br label %merge489
merge489:
  br label %merge476
else475:
  br label %merge476
merge476:
  %2632 = load i64, i64* %2482
  %2633 = add i64 %2632, 1
  store i64 %2633, i64* %2482
  br label %while_cond471
while_end473:
  %2634 = load { i64, i8* }*, { i64, i8* }** %2481
  %2635 = call { i64, i8* }* @sort_str({ i64, i8* }* %2634)
  %2636 = alloca { i64, i8* }*
  store { i64, i8* }* %2635, { i64, i8* }** %2636
  %2637 = getelementptr [1 x i8], [1 x i8]* @.str255, i32 0, i32 0
  %2638 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str255.c, i8* %2637, i64 0)
  %2639 = alloca %nyx_string*
  store %nyx_string* %2638, %nyx_string** %2639
  %2640 = alloca i64
  store i64 0, i64* %2640
  %2641 = alloca i64
  store i64 0, i64* %2641
  %2642 = alloca i64
  store i64 0, i64* %2642
  %2643 = getelementptr [1 x i8], [1 x i8]* @.str256, i32 0, i32 0
  %2644 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str256.c, i8* %2643, i64 0)
  %2645 = alloca %nyx_string*
  store %nyx_string* %2644, %nyx_string** %2645
  %2646 = getelementptr [10 x i8], [10 x i8]* @.str257, i32 0, i32 0
  %2647 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str257.c, i8* %2646, i64 9)
  %2648 = alloca %nyx_string*
  store %nyx_string* %2647, %nyx_string** %2648
  %2649 = getelementptr [2 x i8], [2 x i8]* @.str258, i32 0, i32 0
  %2650 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str258.c, i8* %2649, i64 1)
  %2651 = alloca %nyx_string*
  store %nyx_string* %2650, %nyx_string** %2651
  %2652 = getelementptr [3 x i8], [3 x i8]* @.str259, i32 0, i32 0
  %2653 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str259.c, i8* %2652, i64 2)
  %2654 = alloca %nyx_string*
  store %nyx_string* %2653, %nyx_string** %2654
  %2655 = getelementptr [2 x i8], [2 x i8]* @.str260, i32 0, i32 0
  %2656 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str260.c, i8* %2655, i64 1)
  %2657 = alloca %nyx_string*
  store %nyx_string* %2656, %nyx_string** %2657
  %2658 = getelementptr [5 x i8], [5 x i8]* @.str261, i32 0, i32 0
  %2659 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str261.c, i8* %2658, i64 4)
  %2660 = alloca %nyx_string*
  store %nyx_string* %2659, %nyx_string** %2660
  %2661 = getelementptr [2 x i8], [2 x i8]* @.str262, i32 0, i32 0
  %2662 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str262.c, i8* %2661, i64 1)
  %2663 = alloca %nyx_string*
  store %nyx_string* %2662, %nyx_string** %2663
  %2664 = getelementptr [2 x i8], [2 x i8]* @.str263, i32 0, i32 0
  %2665 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str263.c, i8* %2664, i64 1)
  %2666 = alloca %nyx_string*
  store %nyx_string* %2665, %nyx_string** %2666
  %2667 = getelementptr [4 x i8], [4 x i8]* @.str264, i32 0, i32 0
  %2668 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str264.c, i8* %2667, i64 3)
  %2669 = alloca %nyx_string*
  store %nyx_string* %2668, %nyx_string** %2669
  %2670 = getelementptr [2 x i8], [2 x i8]* @.str265, i32 0, i32 0
  %2671 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str265.c, i8* %2670, i64 1)
  %2672 = alloca %nyx_string*
  store %nyx_string* %2671, %nyx_string** %2672
  %2673 = getelementptr [2 x i8], [2 x i8]* @.str266, i32 0, i32 0
  %2674 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str266.c, i8* %2673, i64 1)
  %2675 = alloca %nyx_string*
  store %nyx_string* %2674, %nyx_string** %2675
  %2676 = getelementptr [6 x i8], [6 x i8]* @.str267, i32 0, i32 0
  %2677 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str267.c, i8* %2676, i64 5)
  %2678 = alloca %nyx_string*
  store %nyx_string* %2677, %nyx_string** %2678
  %2679 = getelementptr [3 x i8], [3 x i8]* @.str268, i32 0, i32 0
  %2680 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str268.c, i8* %2679, i64 2)
  %2681 = alloca %nyx_string*
  store %nyx_string* %2680, %nyx_string** %2681
  %2682 = getelementptr [3 x i8], [3 x i8]* @.str269, i32 0, i32 0
  %2683 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str269.c, i8* %2682, i64 2)
  %2684 = alloca %nyx_string*
  store %nyx_string* %2683, %nyx_string** %2684
  %2685 = getelementptr [2 x i8], [2 x i8]* @.str270, i32 0, i32 0
  %2686 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str270.c, i8* %2685, i64 1)
  %2687 = alloca %nyx_string*
  store %nyx_string* %2686, %nyx_string** %2687
  %2688 = getelementptr [10 x i8], [10 x i8]* @.str271, i32 0, i32 0
  %2689 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str271.c, i8* %2688, i64 9)
  %2690 = alloca %nyx_string*
  store %nyx_string* %2689, %nyx_string** %2690
  %2691 = getelementptr [29 x i8], [29 x i8]* @.str272, i32 0, i32 0
  %2692 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str272.c, i8* %2691, i64 28)
  %2693 = alloca %nyx_string*
  store %nyx_string* %2692, %nyx_string** %2693
  %2694 = getelementptr [3 x i8], [3 x i8]* @.str273, i32 0, i32 0
  %2695 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str273.c, i8* %2694, i64 2)
  %2696 = alloca %nyx_string*
  store %nyx_string* %2695, %nyx_string** %2696
  %2697 = getelementptr [38 x i8], [38 x i8]* @.str274, i32 0, i32 0
  %2698 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str274.c, i8* %2697, i64 37)
  %2699 = alloca %nyx_string*
  store %nyx_string* %2698, %nyx_string** %2699
  %2700 = getelementptr [4 x i8], [4 x i8]* @.str275, i32 0, i32 0
  %2701 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str275.c, i8* %2700, i64 3)
  %2702 = alloca %nyx_string*
  store %nyx_string* %2701, %nyx_string** %2702
  %2703 = getelementptr [5 x i8], [5 x i8]* @.str276, i32 0, i32 0
  %2704 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str276.c, i8* %2703, i64 4)
  %2705 = alloca %nyx_string*
  store %nyx_string* %2704, %nyx_string** %2705
  %2706 = getelementptr [6 x i8], [6 x i8]* @.str277, i32 0, i32 0
  %2707 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str277.c, i8* %2706, i64 5)
  %2708 = alloca %nyx_string*
  store %nyx_string* %2707, %nyx_string** %2708
  %2709 = getelementptr [16 x i8], [16 x i8]* @.str278, i32 0, i32 0
  %2710 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str278.c, i8* %2709, i64 15)
  %2711 = alloca %nyx_string*
  store %nyx_string* %2710, %nyx_string** %2711
  %2712 = call i8* @llvm.stacksave()
  br label %while_cond501
while_cond501:
  %2713 = load i64, i64* %2642
  %2714 = load { i64, i8* }*, { i64, i8* }** %2636
  %2715 = call i64 @nyx_array_length({ i64, i8* }* %2714)
  %2716 = icmp slt i64 %2713, %2715
  br i1 %2716, label %while_body502, label %while_end503
while_body502:
  call void @llvm.stackrestore(i8* %2712)
  %2717 = load { i64, i8* }*, { i64, i8* }** %2636
  %2718 = load i64, i64* %2642
  %2719 = call i64 @nyx_array_get_checked({ i64, i8* }* %2717, i64 %2718, i64 2)
  %2720 = inttoptr i64 %2719 to %nyx_string*
  %2721 = alloca %nyx_string*
  store %nyx_string* %2720, %nyx_string** %2721
  %2722 = load %nyx_string*, %nyx_string** %2721
  %2723 = call { i64, i8* }* @cov_fields(%nyx_string* %2722)
  %2724 = alloca { i64, i8* }*
  store { i64, i8* }* %2723, { i64, i8* }** %2724
  %2725 = load { i64, i8* }*, { i64, i8* }** %2724
  %2726 = call i64 @nyx_array_get_checked({ i64, i8* }* %2725, i64 0, i64 2)
  %2727 = inttoptr i64 %2726 to %nyx_string*
  %2728 = alloca %nyx_string*
  store %nyx_string* %2727, %nyx_string** %2728
  %2729 = load { i64, i8* }*, { i64, i8* }** %2724
  %2730 = call i64 @nyx_array_get_checked({ i64, i8* }* %2729, i64 4, i64 2)
  %2731 = inttoptr i64 %2730 to %nyx_string*
  %2732 = alloca %nyx_string*
  store %nyx_string* %2731, %nyx_string** %2732
  %2733 = alloca i64
  store i64 0, i64* %2733
  %2734 = alloca i64
  store i64 0, i64* %2734
  %2735 = alloca i64
  store i64 0, i64* %2735
  %2736 = call { i64, i8* }* @nyx_array_new_ptr()
  %2737 = alloca { i64, i8* }*
  store { i64, i8* }* %2736, { i64, i8* }** %2737
  %2738 = load %nyx_string*, %nyx_string** %2645
  %2739 = alloca %nyx_string*
  store %nyx_string* %2738, %nyx_string** %2739
  %2740 = load %nyx_string*, %nyx_string** %2645
  %2741 = alloca %nyx_string*
  store %nyx_string* %2740, %nyx_string** %2741
  %2742 = load i64, i64* %2642
  %2743 = alloca i64
  store i64 %2742, i64* %2743
  %2744 = alloca i1
  store i1 1, i1* %2744
  %2745 = call i8* @llvm.stacksave()
  br label %while_cond504
while_cond504:
  %2746 = alloca i1
  store i1 false, i1* %2746
  %2747 = load i64, i64* %2743
  %2748 = load { i64, i8* }*, { i64, i8* }** %2636
  %2749 = call i64 @nyx_array_length({ i64, i8* }* %2748)
  %2750 = icmp slt i64 %2747, %2749
  br i1 %2750, label %sc_and_rhs507, label %sc_and_end508
sc_and_rhs507:
  %2751 = load i1, i1* %2744
  store i1 %2751, i1* %2746
  br label %sc_and_end508
sc_and_end508:
  %2752 = load i1, i1* %2746
  br i1 %2752, label %while_body505, label %while_end506
while_body505:
  call void @llvm.stackrestore(i8* %2745)
  %2753 = load { i64, i8* }*, { i64, i8* }** %2636
  %2754 = load i64, i64* %2743
  %2755 = call i64 @nyx_array_get_checked({ i64, i8* }* %2753, i64 %2754, i64 2)
  %2756 = inttoptr i64 %2755 to %nyx_string*
  %2757 = alloca %nyx_string*
  store %nyx_string* %2756, %nyx_string** %2757
  %2758 = load %nyx_string*, %nyx_string** %2757
  %2759 = call { i64, i8* }* @cov_fields(%nyx_string* %2758)
  %2760 = alloca { i64, i8* }*
  store { i64, i8* }* %2759, { i64, i8* }** %2760
  %2761 = load { i64, i8* }*, { i64, i8* }** %2760
  %2762 = call i64 @nyx_array_get_checked({ i64, i8* }* %2761, i64 0, i64 2)
  %2763 = inttoptr i64 %2762 to %nyx_string*
  %2764 = alloca %nyx_string*
  store %nyx_string* %2763, %nyx_string** %2764
  %2765 = load %nyx_string*, %nyx_string** %2764
  %2766 = load %nyx_string*, %nyx_string** %2728
  %2767 = call i1 @nyx_string_equals(%nyx_string* %2765, %nyx_string* %2766)
  %2768 = xor i1 %2767, true
  br i1 %2768, label %then509, label %else510
then509:
  store i1 0, i1* %2744
  br label %merge511
else510:
  %2769 = load { i64, i8* }*, { i64, i8* }** %2760
  %2770 = call i64 @nyx_array_get({ i64, i8* }* %2769, i64 1)
  %2771 = inttoptr i64 %2770 to %nyx_string*
  %2772 = call i64 @nyx_string_to_int(%nyx_string* %2771)
  %2773 = alloca i64
  store i64 %2772, i64* %2773
  %2774 = load { i64, i8* }*, { i64, i8* }** %2760
  %2775 = call i64 @nyx_array_get_checked({ i64, i8* }* %2774, i64 2, i64 2)
  %2776 = inttoptr i64 %2775 to %nyx_string*
  %2777 = alloca %nyx_string*
  store %nyx_string* %2776, %nyx_string** %2777
  %2778 = load { i64, i8* }*, { i64, i8* }** %2760
  %2779 = call i64 @nyx_array_get_checked({ i64, i8* }* %2778, i64 3, i64 2)
  %2780 = inttoptr i64 %2779 to %nyx_string*
  %2781 = alloca %nyx_string*
  store %nyx_string* %2780, %nyx_string** %2781
  %2782 = load %nyx_string*, %nyx_string** %2781
  %2783 = load %nyx_string*, %nyx_string** %2648
  %2784 = call i1 @nyx_string_equals(%nyx_string* %2782, %nyx_string* %2783)
  br i1 %2784, label %then512, label %else513
then512:
  %2785 = load i64, i64* %2735
  %2786 = add i64 %2785, 1
  store i64 %2786, i64* %2735
  br label %merge514
else513:
  %2787 = load i64, i64* %2734
  %2788 = add i64 %2787, 1
  store i64 %2788, i64* %2734
  %2789 = load %nyx_string*, %nyx_string** %2651
  %2790 = alloca %nyx_string*
  store %nyx_string* %2789, %nyx_string** %2790
  %2791 = load %nyx_string*, %nyx_string** %2781
  %2792 = load %nyx_string*, %nyx_string** %2654
  %2793 = call i1 @nyx_string_equals(%nyx_string* %2791, %nyx_string* %2792)
  br i1 %2793, label %then515, label %else516
then515:
  %2794 = load i64, i64* %2733
  %2795 = add i64 %2794, 1
  store i64 %2795, i64* %2733
  %2796 = load %nyx_string*, %nyx_string** %2657
  store %nyx_string* %2796, %nyx_string** %2790
  br label %merge517
else516:
  %2797 = load { i64, i8* }*, { i64, i8* }** %2737
  %2798 = load %nyx_string*, %nyx_string** %2660
  %2799 = load %nyx_string*, %nyx_string** %2728
  %2800 = call %nyx_string* @nyx_string_concat(%nyx_string* %2798, %nyx_string* %2799)
  %2801 = load %nyx_string*, %nyx_string** %2663
  %2802 = call %nyx_string* @nyx_string_concat(%nyx_string* %2800, %nyx_string* %2801)
  %2803 = load i64, i64* %2773
  %2804 = call %nyx_string* @nyx_string_from_int(i64 %2803)
  %2805 = call %nyx_string* @nyx_string_concat(%nyx_string* %2802, %nyx_string* %2804)
  %2806 = load %nyx_string*, %nyx_string** %2666
  %2807 = call %nyx_string* @nyx_string_concat(%nyx_string* %2805, %nyx_string* %2806)
  %2808 = load %nyx_string*, %nyx_string** %2777
  %2809 = call %nyx_string* @nyx_string_concat(%nyx_string* %2807, %nyx_string* %2808)
  %2810 = ptrtoint %nyx_string* %2809 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2797, i64 %2810, i64 2)
  br label %merge517
merge517:
  %2811 = load %nyx_string*, %nyx_string** %2739
  %2812 = load %nyx_string*, %nyx_string** %2669
  %2813 = call %nyx_string* @nyx_string_concat(%nyx_string* %2811, %nyx_string* %2812)
  %2814 = load i64, i64* %2773
  %2815 = call %nyx_string* @nyx_string_from_int(i64 %2814)
  %2816 = call %nyx_string* @nyx_string_concat(%nyx_string* %2813, %nyx_string* %2815)
  %2817 = load %nyx_string*, %nyx_string** %2672
  %2818 = call %nyx_string* @nyx_string_concat(%nyx_string* %2816, %nyx_string* %2817)
  %2819 = load %nyx_string*, %nyx_string** %2777
  %2820 = call %nyx_string* @nyx_string_concat(%nyx_string* %2818, %nyx_string* %2819)
  %2821 = load %nyx_string*, %nyx_string** %2675
  %2822 = call %nyx_string* @nyx_string_concat(%nyx_string* %2820, %nyx_string* %2821)
  store %nyx_string* %2822, %nyx_string** %2739
  %2823 = load %nyx_string*, %nyx_string** %2741
  %2824 = load %nyx_string*, %nyx_string** %2678
  %2825 = call %nyx_string* @nyx_string_concat(%nyx_string* %2823, %nyx_string* %2824)
  %2826 = load %nyx_string*, %nyx_string** %2790
  %2827 = call %nyx_string* @nyx_string_concat(%nyx_string* %2825, %nyx_string* %2826)
  %2828 = load %nyx_string*, %nyx_string** %2672
  %2829 = call %nyx_string* @nyx_string_concat(%nyx_string* %2827, %nyx_string* %2828)
  %2830 = load %nyx_string*, %nyx_string** %2777
  %2831 = call %nyx_string* @nyx_string_concat(%nyx_string* %2829, %nyx_string* %2830)
  %2832 = load %nyx_string*, %nyx_string** %2675
  %2833 = call %nyx_string* @nyx_string_concat(%nyx_string* %2831, %nyx_string* %2832)
  store %nyx_string* %2833, %nyx_string** %2741
  br label %merge514
merge514:
  %2834 = load i64, i64* %2743
  %2835 = add i64 %2834, 1
  store i64 %2835, i64* %2743
  br label %merge511
merge511:
  br label %while_cond504
while_end506:
  %2836 = load %nyx_string*, %nyx_string** %2681
  %2837 = load %nyx_string*, %nyx_string** %2728
  %2838 = call %nyx_string* @nyx_string_concat(%nyx_string* %2836, %nyx_string* %2837)
  %2839 = load %nyx_string*, %nyx_string** %2684
  %2840 = call %nyx_string* @nyx_string_concat(%nyx_string* %2838, %nyx_string* %2839)
  %2841 = load i64, i64* %2733
  %2842 = call %nyx_string* @nyx_string_from_int(i64 %2841)
  %2843 = call %nyx_string* @nyx_string_concat(%nyx_string* %2840, %nyx_string* %2842)
  %2844 = load %nyx_string*, %nyx_string** %2687
  %2845 = call %nyx_string* @nyx_string_concat(%nyx_string* %2843, %nyx_string* %2844)
  %2846 = load i64, i64* %2734
  %2847 = call %nyx_string* @nyx_string_from_int(i64 %2846)
  %2848 = call %nyx_string* @nyx_string_concat(%nyx_string* %2845, %nyx_string* %2847)
  %2849 = load %nyx_string*, %nyx_string** %2690
  %2850 = call %nyx_string* @nyx_string_concat(%nyx_string* %2848, %nyx_string* %2849)
  %2851 = alloca %nyx_string*
  store %nyx_string* %2850, %nyx_string** %2851
  %2852 = load i8*, i8** %2319
  %2853 = load %nyx_string*, %nyx_string** %2732
  %2854 = call i8* @nyx_string_to_cstr(%nyx_string* %2853)
  %2855 = call i1 @nyx_map_contains_str(i8* %2852, i8* %2854)
  %2856 = xor i1 %2855, true
  br i1 %2856, label %then518, label %else519
then518:
  %2857 = load %nyx_string*, %nyx_string** %2851
  %2858 = load %nyx_string*, %nyx_string** %2693
  %2859 = call %nyx_string* @nyx_string_concat(%nyx_string* %2857, %nyx_string* %2858)
  store %nyx_string* %2859, %nyx_string** %2851
  br label %merge520
else519:
  br label %merge520
merge520:
  %2860 = load i64, i64* %2735
  %2861 = icmp sgt i64 %2860, 0
  br i1 %2861, label %then521, label %else522
then521:
  %2862 = load %nyx_string*, %nyx_string** %2851
  %2863 = load %nyx_string*, %nyx_string** %2696
  %2864 = call %nyx_string* @nyx_string_concat(%nyx_string* %2862, %nyx_string* %2863)
  %2865 = load i64, i64* %2735
  %2866 = call %nyx_string* @nyx_string_from_int(i64 %2865)
  %2867 = call %nyx_string* @nyx_string_concat(%nyx_string* %2864, %nyx_string* %2866)
  %2868 = load %nyx_string*, %nyx_string** %2699
  %2869 = call %nyx_string* @nyx_string_concat(%nyx_string* %2867, %nyx_string* %2868)
  store %nyx_string* %2869, %nyx_string** %2851
  br label %merge523
else522:
  br label %merge523
merge523:
  %2870 = load %nyx_string*, %nyx_string** %2851
  %2871 = call i8* @nyx_string_to_cstr(%nyx_string* %2870)
  call void @nyx_print_string(i8* %2871)
  %2872 = alloca i64
  store i64 0, i64* %2872
  %2873 = call i8* @llvm.stacksave()
  br label %while_cond524
while_cond524:
  %2874 = load i64, i64* %2872
  %2875 = load { i64, i8* }*, { i64, i8* }** %2737
  %2876 = call i64 @nyx_array_length({ i64, i8* }* %2875)
  %2877 = icmp slt i64 %2874, %2876
  br i1 %2877, label %while_body525, label %while_end526
while_body525:
  call void @llvm.stackrestore(i8* %2873)
  %2878 = load { i64, i8* }*, { i64, i8* }** %2737
  %2879 = load i64, i64* %2872
  %2880 = call i64 @nyx_array_get_checked({ i64, i8* }* %2878, i64 %2879, i64 2)
  %2881 = inttoptr i64 %2880 to %nyx_string*
  %2882 = alloca %nyx_string*
  store %nyx_string* %2881, %nyx_string** %2882
  %2883 = load %nyx_string*, %nyx_string** %2882
  %2884 = call i8* @nyx_string_to_cstr(%nyx_string* %2883)
  call void @nyx_print_string(i8* %2884)
  %2885 = load i64, i64* %2872
  %2886 = add i64 %2885, 1
  store i64 %2886, i64* %2872
  br label %while_cond524
while_end526:
  %2887 = load i64, i64* %2640
  %2888 = load i64, i64* %2733
  %2889 = add i64 %2887, %2888
  store i64 %2889, i64* %2640
  %2890 = load i64, i64* %2641
  %2891 = load i64, i64* %2734
  %2892 = add i64 %2890, %2891
  store i64 %2892, i64* %2641
  %2893 = load %nyx_string*, %nyx_string** %2639
  %2894 = load %nyx_string*, %nyx_string** %2702
  %2895 = call %nyx_string* @nyx_string_concat(%nyx_string* %2893, %nyx_string* %2894)
  %2896 = load %nyx_string*, %nyx_string** %2728
  %2897 = call %nyx_string* @nyx_string_concat(%nyx_string* %2895, %nyx_string* %2896)
  %2898 = load %nyx_string*, %nyx_string** %2675
  %2899 = call %nyx_string* @nyx_string_concat(%nyx_string* %2897, %nyx_string* %2898)
  %2900 = load %nyx_string*, %nyx_string** %2739
  %2901 = call %nyx_string* @nyx_string_concat(%nyx_string* %2899, %nyx_string* %2900)
  %2902 = load %nyx_string*, %nyx_string** %2741
  %2903 = call %nyx_string* @nyx_string_concat(%nyx_string* %2901, %nyx_string* %2902)
  %2904 = load %nyx_string*, %nyx_string** %2705
  %2905 = call %nyx_string* @nyx_string_concat(%nyx_string* %2903, %nyx_string* %2904)
  %2906 = load i64, i64* %2734
  %2907 = call %nyx_string* @nyx_string_from_int(i64 %2906)
  %2908 = call %nyx_string* @nyx_string_concat(%nyx_string* %2905, %nyx_string* %2907)
  %2909 = load %nyx_string*, %nyx_string** %2708
  %2910 = call %nyx_string* @nyx_string_concat(%nyx_string* %2908, %nyx_string* %2909)
  %2911 = load i64, i64* %2733
  %2912 = call %nyx_string* @nyx_string_from_int(i64 %2911)
  %2913 = call %nyx_string* @nyx_string_concat(%nyx_string* %2910, %nyx_string* %2912)
  %2914 = load %nyx_string*, %nyx_string** %2711
  %2915 = call %nyx_string* @nyx_string_concat(%nyx_string* %2913, %nyx_string* %2914)
  store %nyx_string* %2915, %nyx_string** %2639
  %2916 = load i64, i64* %2743
  store i64 %2916, i64* %2642
  br label %while_cond501
while_end503:
  %2917 = load { i64, i8* }*, { i64, i8* }** %2185
  %2918 = call i64 @nyx_array_length({ i64, i8* }* %2917)
  %2919 = icmp sgt i64 %2918, 0
  br i1 %2919, label %then527, label %else528
then527:
  %2920 = getelementptr [70 x i8], [70 x i8]* @.str279, i32 0, i32 0
  %2921 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str279.c, i8* %2920, i64 69)
  %2922 = call i8* @nyx_string_to_cstr(%nyx_string* %2921)
  call void @nyx_print_string(i8* %2922)
  %2923 = alloca i64
  store i64 0, i64* %2923
  %2924 = getelementptr [5 x i8], [5 x i8]* @.str280, i32 0, i32 0
  %2925 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str280.c, i8* %2924, i64 4)
  %2926 = alloca %nyx_string*
  store %nyx_string* %2925, %nyx_string** %2926
  %2927 = call i8* @llvm.stacksave()
  br label %while_cond530
while_cond530:
  %2928 = load i64, i64* %2923
  %2929 = load { i64, i8* }*, { i64, i8* }** %2185
  %2930 = call i64 @nyx_array_length({ i64, i8* }* %2929)
  %2931 = icmp slt i64 %2928, %2930
  br i1 %2931, label %while_body531, label %while_end532
while_body531:
  call void @llvm.stackrestore(i8* %2927)
  %2932 = load { i64, i8* }*, { i64, i8* }** %2185
  %2933 = load i64, i64* %2923
  %2934 = call i64 @nyx_array_get_checked({ i64, i8* }* %2932, i64 %2933, i64 2)
  %2935 = inttoptr i64 %2934 to %nyx_string*
  %2936 = alloca %nyx_string*
  store %nyx_string* %2935, %nyx_string** %2936
  %2937 = load %nyx_string*, %nyx_string** %2926
  %2938 = load %nyx_string*, %nyx_string** %2936
  %2939 = call %nyx_string* @nyx_string_concat(%nyx_string* %2937, %nyx_string* %2938)
  %2940 = call i8* @nyx_string_to_cstr(%nyx_string* %2939)
  call void @nyx_print_string(i8* %2940)
  %2941 = load i64, i64* %2923
  %2942 = add i64 %2941, 1
  store i64 %2942, i64* %2923
  br label %while_cond530
while_end532:
  br label %merge529
else528:
  br label %merge529
merge529:
  %2943 = getelementptr [10 x i8], [10 x i8]* @.str281, i32 0, i32 0
  %2944 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str281.c, i8* %2943, i64 9)
  %2945 = load i64, i64* %2640
  %2946 = call %nyx_string* @nyx_string_from_int(i64 %2945)
  %2947 = call %nyx_string* @nyx_string_concat(%nyx_string* %2944, %nyx_string* %2946)
  %2948 = getelementptr [2 x i8], [2 x i8]* @.str282, i32 0, i32 0
  %2949 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str282.c, i8* %2948, i64 1)
  %2950 = call %nyx_string* @nyx_string_concat(%nyx_string* %2947, %nyx_string* %2949)
  %2951 = load i64, i64* %2641
  %2952 = call %nyx_string* @nyx_string_from_int(i64 %2951)
  %2953 = call %nyx_string* @nyx_string_concat(%nyx_string* %2950, %nyx_string* %2952)
  %2954 = getelementptr [20 x i8], [20 x i8]* @.str283, i32 0, i32 0
  %2955 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str283.c, i8* %2954, i64 19)
  %2956 = call %nyx_string* @nyx_string_concat(%nyx_string* %2953, %nyx_string* %2955)
  %2957 = call i8* @nyx_string_to_cstr(%nyx_string* %2956)
  call void @nyx_print_string(i8* %2957)
  %2958 = load i1, i1* %want_lcov.ptr
  br i1 %2958, label %then533, label %else534
then533:
  %2959 = getelementptr [11 x i8], [11 x i8]* @.str284, i32 0, i32 0
  %2960 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str284.c, i8* %2959, i64 10)
  %2961 = load %nyx_string*, %nyx_string** %2171
  %2962 = call %nyx_string* @nyx_string_concat(%nyx_string* %2960, %nyx_string* %2961)
  %2963 = getelementptr [9 x i8], [9 x i8]* @.str285, i32 0, i32 0
  %2964 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str285.c, i8* %2963, i64 8)
  %2965 = call %nyx_string* @nyx_string_concat(%nyx_string* %2962, %nyx_string* %2964)
  %2966 = call i8* @nyx_string_to_cstr(%nyx_string* %2965)
  %2967 = call i64 @nyx_exec_code(i8* %2966)
  %2968 = load %nyx_string*, %nyx_string** %2171
  %2969 = getelementptr [22 x i8], [22 x i8]* @.str286, i32 0, i32 0
  %2970 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str286.c, i8* %2969, i64 21)
  %2971 = call %nyx_string* @nyx_string_concat(%nyx_string* %2968, %nyx_string* %2970)
  %2972 = load %nyx_string*, %nyx_string** %2639
  %2973 = call i8* @nyx_string_to_cstr(%nyx_string* %2971)
  %2974 = call i1 @nyx_write_file_safe(i8* %2973, %nyx_string* %2972)
  %2975 = getelementptr [29 x i8], [29 x i8]* @.str287, i32 0, i32 0
  %2976 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str287.c, i8* %2975, i64 28)
  %2977 = call i8* @nyx_string_to_cstr(%nyx_string* %2976)
  call void @nyx_print_string(i8* %2977)
  br label %merge535
else534:
  br label %merge535
merge535:
  ret i64 0
}

define internal i64 @print_valid_options(
) {
  %2978 = getelementptr [115 x i8], [115 x i8]* @.str288, i32 0, i32 0
  %2979 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str288.c, i8* %2978, i64 114)
  %2980 = call i8* @nyx_string_to_cstr(%nyx_string* %2979)
  call void @nyx_print_string(i8* %2980)
  ret i64 0
}

define i64 @main(
i32 %argc, i8** %argv) {
  call void @nyx_set_args(i32 %argc, i8** %argv)
  %2981 = getelementptr [24 x i8], [24 x i8]* @.str289, i32 0, i32 0
  %2982 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str289.c, i8* %2981, i64 23)
  %2983 = call i8* @nyx_string_to_cstr(%nyx_string* %2982)
  call void @nyx_print_string(i8* %2983)
  %2984 = call %TestConfig @load_test_config()
  %2985 = alloca %TestConfig
  store %TestConfig %2984, %TestConfig* %2985
  %2986 = call { i64, i8* }* @nyx_get_args()
  %2987 = alloca { i64, i8* }*
  store { i64, i8* }* %2986, { i64, i8* }** %2987
  %2988 = getelementptr [1 x i8], [1 x i8]* @.str290, i32 0, i32 0
  %2989 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str290.c, i8* %2988, i64 0)
  %2990 = alloca %nyx_string*
  store %nyx_string* %2989, %nyx_string** %2990
  %2991 = alloca i64
  store i64 1, i64* %2991
  %2992 = getelementptr [9 x i8], [9 x i8]* @.str291, i32 0, i32 0
  %2993 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str291.c, i8* %2992, i64 8)
  %2994 = alloca %nyx_string*
  store %nyx_string* %2993, %nyx_string** %2994
  %2995 = getelementptr [10 x i8], [10 x i8]* @.str292, i32 0, i32 0
  %2996 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str292.c, i8* %2995, i64 9)
  %2997 = alloca %nyx_string*
  store %nyx_string* %2996, %nyx_string** %2997
  %2998 = getelementptr [3 x i8], [3 x i8]* @.str293, i32 0, i32 0
  %2999 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str293.c, i8* %2998, i64 2)
  %3000 = alloca %nyx_string*
  store %nyx_string* %2999, %nyx_string** %3000
  %3001 = getelementptr [10 x i8], [10 x i8]* @.str294, i32 0, i32 0
  %3002 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str294.c, i8* %3001, i64 9)
  %3003 = alloca %nyx_string*
  store %nyx_string* %3002, %nyx_string** %3003
  %3004 = getelementptr [10 x i8], [10 x i8]* @.str295, i32 0, i32 0
  %3005 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str295.c, i8* %3004, i64 9)
  %3006 = alloca %nyx_string*
  store %nyx_string* %3005, %nyx_string** %3006
  %3007 = getelementptr [11 x i8], [11 x i8]* @.str296, i32 0, i32 0
  %3008 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str296.c, i8* %3007, i64 10)
  %3009 = alloca %nyx_string*
  store %nyx_string* %3008, %nyx_string** %3009
  %3010 = getelementptr [16 x i8], [16 x i8]* @.str297, i32 0, i32 0
  %3011 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str297.c, i8* %3010, i64 15)
  %3012 = alloca %nyx_string*
  store %nyx_string* %3011, %nyx_string** %3012
  %3013 = getelementptr [8 x i8], [8 x i8]* @.str298, i32 0, i32 0
  %3014 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str298.c, i8* %3013, i64 7)
  %3015 = alloca %nyx_string*
  store %nyx_string* %3014, %nyx_string** %3015
  %3016 = getelementptr [12 x i8], [12 x i8]* @.str299, i32 0, i32 0
  %3017 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str299.c, i8* %3016, i64 11)
  %3018 = alloca %nyx_string*
  store %nyx_string* %3017, %nyx_string** %3018
  %3019 = getelementptr [24 x i8], [24 x i8]* @.str300, i32 0, i32 0
  %3020 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str300.c, i8* %3019, i64 23)
  %3021 = alloca %nyx_string*
  store %nyx_string* %3020, %nyx_string** %3021
  %3022 = getelementptr [106 x i8], [106 x i8]* @.str301, i32 0, i32 0
  %3023 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str301.c, i8* %3022, i64 105)
  %3024 = alloca %nyx_string*
  store %nyx_string* %3023, %nyx_string** %3024
  %3025 = getelementptr [9 x i8], [9 x i8]* @.str302, i32 0, i32 0
  %3026 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str302.c, i8* %3025, i64 8)
  %3027 = alloca %nyx_string*
  store %nyx_string* %3026, %nyx_string** %3027
  %3028 = getelementptr [10 x i8], [10 x i8]* @.str303, i32 0, i32 0
  %3029 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str303.c, i8* %3028, i64 9)
  %3030 = alloca %nyx_string*
  store %nyx_string* %3029, %nyx_string** %3030
  %3031 = getelementptr [2 x i8], [2 x i8]* @.str304, i32 0, i32 0
  %3032 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str304.c, i8* %3031, i64 1)
  %3033 = alloca %nyx_string*
  store %nyx_string* %3032, %nyx_string** %3033
  %3034 = getelementptr [4 x i8], [4 x i8]* @.str305, i32 0, i32 0
  %3035 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str305.c, i8* %3034, i64 3)
  %3036 = alloca %nyx_string*
  store %nyx_string* %3035, %nyx_string** %3036
  %3037 = getelementptr [2 x i8], [2 x i8]* @.str306, i32 0, i32 0
  %3038 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str306.c, i8* %3037, i64 1)
  %3039 = alloca %nyx_string*
  store %nyx_string* %3038, %nyx_string** %3039
  %3040 = call i8* @llvm.stacksave()
  br label %while_cond536
while_cond536:
  %3041 = load i64, i64* %2991
  %3042 = load { i64, i8* }*, { i64, i8* }** %2987
  %3043 = call i64 @nyx_array_length({ i64, i8* }* %3042)
  %3044 = icmp slt i64 %3041, %3043
  br i1 %3044, label %while_body537, label %while_end538
while_body537:
  call void @llvm.stackrestore(i8* %3040)
  %3045 = load { i64, i8* }*, { i64, i8* }** %2987
  %3046 = load i64, i64* %2991
  %3047 = call i64 @nyx_array_get_checked({ i64, i8* }* %3045, i64 %3046, i64 2)
  %3048 = inttoptr i64 %3047 to %nyx_string*
  %3049 = alloca %nyx_string*
  store %nyx_string* %3048, %nyx_string** %3049
  %3050 = alloca i1
  store i1 false, i1* %3050
  %3051 = load %nyx_string*, %nyx_string** %3049
  %3052 = load %nyx_string*, %nyx_string** %2994
  %3053 = call i1 @nyx_string_equals(%nyx_string* %3051, %nyx_string* %3052)
  br i1 %3053, label %sc_and_rhs539, label %sc_and_end540
sc_and_rhs539:
  %3054 = load i64, i64* %2991
  %3055 = add i64 %3054, 1
  %3056 = load { i64, i8* }*, { i64, i8* }** %2987
  %3057 = call i64 @nyx_array_length({ i64, i8* }* %3056)
  %3058 = icmp slt i64 %3055, %3057
  store i1 %3058, i1* %3050
  br label %sc_and_end540
sc_and_end540:
  %3059 = load i1, i1* %3050
  br i1 %3059, label %then541, label %else542
then541:
  %3060 = load i64, i64* %2991
  %3061 = add i64 %3060, 1
  store i64 %3061, i64* %2991
  %3062 = load { i64, i8* }*, { i64, i8* }** %2987
  %3063 = load i64, i64* %2991
  %3064 = call i64 @nyx_array_get_checked({ i64, i8* }* %3062, i64 %3063, i64 2)
  %3065 = inttoptr i64 %3064 to %nyx_string*
  %3066 = alloca %nyx_string*
  store %nyx_string* %3065, %nyx_string** %3066
  %3067 = load %nyx_string*, %nyx_string** %3066
  %3068 = getelementptr %TestConfig, %TestConfig* %2985, i32 0, i32 2
  store %nyx_string* %3067, %nyx_string** %3068
  br label %merge543
else542:
  %3069 = alloca i1
  store i1 true, i1* %3069
  %3070 = load %nyx_string*, %nyx_string** %3049
  %3071 = load %nyx_string*, %nyx_string** %2997
  %3072 = call i1 @nyx_string_equals(%nyx_string* %3070, %nyx_string* %3071)
  br i1 %3072, label %sc_or_end545, label %sc_or_rhs544
sc_or_rhs544:
  %3073 = load %nyx_string*, %nyx_string** %3049
  %3074 = load %nyx_string*, %nyx_string** %3000
  %3075 = call i1 @nyx_string_equals(%nyx_string* %3073, %nyx_string* %3074)
  store i1 %3075, i1* %3069
  br label %sc_or_end545
sc_or_end545:
  %3076 = load i1, i1* %3069
  br i1 %3076, label %then546, label %else547
then546:
  %3077 = getelementptr %TestConfig, %TestConfig* %2985, i32 0, i32 3
  store i1 1, i1* %3077
  br label %merge548
else547:
  %3078 = alloca i1
  store i1 false, i1* %3078
  %3079 = load %nyx_string*, %nyx_string** %3049
  %3080 = load %nyx_string*, %nyx_string** %3003
  %3081 = call i1 @nyx_string_equals(%nyx_string* %3079, %nyx_string* %3080)
  br i1 %3081, label %sc_and_rhs549, label %sc_and_end550
sc_and_rhs549:
  %3082 = load i64, i64* %2991
  %3083 = add i64 %3082, 1
  %3084 = load { i64, i8* }*, { i64, i8* }** %2987
  %3085 = call i64 @nyx_array_length({ i64, i8* }* %3084)
  %3086 = icmp slt i64 %3083, %3085
  store i1 %3086, i1* %3078
  br label %sc_and_end550
sc_and_end550:
  %3087 = load i1, i1* %3078
  br i1 %3087, label %then551, label %else552
then551:
  %3088 = load i64, i64* %2991
  %3089 = add i64 %3088, 1
  store i64 %3089, i64* %2991
  %3090 = load { i64, i8* }*, { i64, i8* }** %2987
  %3091 = load i64, i64* %2991
  %3092 = call i64 @nyx_array_get_checked({ i64, i8* }* %3090, i64 %3091, i64 2)
  %3093 = inttoptr i64 %3092 to %nyx_string*
  %3094 = alloca %nyx_string*
  store %nyx_string* %3093, %nyx_string** %3094
  %3095 = load %nyx_string*, %nyx_string** %3094
  %3096 = call i64 @nyx_string_to_int(%nyx_string* %3095)
  %3097 = getelementptr %TestConfig, %TestConfig* %2985, i32 0, i32 1
  store i64 %3096, i64* %3097
  br label %merge553
else552:
  %3098 = load %nyx_string*, %nyx_string** %3049
  %3099 = load %nyx_string*, %nyx_string** %3006
  %3100 = call i1 @nyx_string_equals(%nyx_string* %3098, %nyx_string* %3099)
  br i1 %3100, label %then554, label %else555
then554:
  %3101 = getelementptr %TestConfig, %TestConfig* %2985, i32 0, i32 7
  store i1 1, i1* %3101
  br label %merge556
else555:
  %3102 = load %nyx_string*, %nyx_string** %3049
  %3103 = load %nyx_string*, %nyx_string** %3009
  %3104 = call i1 @nyx_string_equals(%nyx_string* %3102, %nyx_string* %3103)
  br i1 %3104, label %then557, label %else558
then557:
  %3105 = getelementptr %TestConfig, %TestConfig* %2985, i32 0, i32 5
  store i1 1, i1* %3105
  br label %merge559
else558:
  %3106 = load %nyx_string*, %nyx_string** %3049
  %3107 = load %nyx_string*, %nyx_string** %3012
  %3108 = call i1 @nyx_string_equals(%nyx_string* %3106, %nyx_string* %3107)
  br i1 %3108, label %then560, label %else561
then560:
  %3109 = getelementptr %TestConfig, %TestConfig* %2985, i32 0, i32 5
  store i1 1, i1* %3109
  %3110 = getelementptr %TestConfig, %TestConfig* %2985, i32 0, i32 6
  store i1 1, i1* %3110
  br label %merge562
else561:
  %3111 = alloca i1
  store i1 true, i1* %3111
  %3112 = load %nyx_string*, %nyx_string** %3049
  %3113 = load %nyx_string*, %nyx_string** %3015
  %3114 = call i1 @nyx_string_equals(%nyx_string* %3112, %nyx_string* %3113)
  br i1 %3114, label %sc_or_end564, label %sc_or_rhs563
sc_or_rhs563:
  %3115 = load %nyx_string*, %nyx_string** %3049
  %3116 = load %nyx_string*, %nyx_string** %3018
  %3117 = call i1 @nyx_string_starts_with(%nyx_string* %3115, %nyx_string* %3116)
  store i1 %3117, i1* %3111
  br label %sc_or_end564
sc_or_end564:
  %3118 = load i1, i1* %3111
  br i1 %3118, label %then565, label %else566
then565:
  %3119 = load %nyx_string*, %nyx_string** %3021
  %3120 = load %nyx_string*, %nyx_string** %3049
  %3121 = call %nyx_string* @nyx_string_concat(%nyx_string* %3119, %nyx_string* %3120)
  %3122 = call i8* @nyx_string_to_cstr(%nyx_string* %3121)
  call void @nyx_print_string(i8* %3122)
  %3123 = load %nyx_string*, %nyx_string** %3024
  %3124 = call i8* @nyx_string_to_cstr(%nyx_string* %3123)
  call void @nyx_print_string(i8* %3124)
  %3125 = call i64 @print_valid_options()
  ret i64 1
else566:
  %3126 = alloca i1
  store i1 true, i1* %3126
  %3127 = load %nyx_string*, %nyx_string** %3049
  %3128 = load %nyx_string*, %nyx_string** %3027
  %3129 = call i1 @nyx_string_equals(%nyx_string* %3127, %nyx_string* %3128)
  br i1 %3129, label %sc_or_end569, label %sc_or_rhs568
sc_or_rhs568:
  %3130 = load %nyx_string*, %nyx_string** %3049
  %3131 = load %nyx_string*, %nyx_string** %3030
  %3132 = call i1 @nyx_string_starts_with(%nyx_string* %3130, %nyx_string* %3131)
  store i1 %3132, i1* %3126
  br label %sc_or_end569
sc_or_end569:
  %3133 = load i1, i1* %3126
  br i1 %3133, label %then570, label %else571
then570:
  %3134 = load %nyx_string*, %nyx_string** %3049
  store %nyx_string* %3134, %nyx_string** %2990
  %3135 = alloca i1
  store i1 false, i1* %3135
  %3136 = load %nyx_string*, %nyx_string** %3049
  %3137 = load %nyx_string*, %nyx_string** %3027
  %3138 = call i1 @nyx_string_equals(%nyx_string* %3136, %nyx_string* %3137)
  br i1 %3138, label %sc_and_rhs573, label %sc_and_end574
sc_and_rhs573:
  %3139 = load i64, i64* %2991
  %3140 = add i64 %3139, 1
  %3141 = load { i64, i8* }*, { i64, i8* }** %2987
  %3142 = call i64 @nyx_array_length({ i64, i8* }* %3141)
  %3143 = icmp slt i64 %3140, %3142
  store i1 %3143, i1* %3135
  br label %sc_and_end574
sc_and_end574:
  %3144 = load i1, i1* %3135
  br i1 %3144, label %then575, label %else576
then575:
  %3145 = load i64, i64* %2991
  %3146 = add i64 %3145, 1
  store i64 %3146, i64* %2991
  %3147 = load { i64, i8* }*, { i64, i8* }** %2987
  %3148 = load i64, i64* %2991
  %3149 = call i64 @nyx_array_get_checked({ i64, i8* }* %3147, i64 %3148, i64 2)
  %3150 = inttoptr i64 %3149 to %nyx_string*
  %3151 = alloca %nyx_string*
  store %nyx_string* %3150, %nyx_string** %3151
  %3152 = load %nyx_string*, %nyx_string** %3049
  %3153 = load %nyx_string*, %nyx_string** %3033
  %3154 = call %nyx_string* @nyx_string_concat(%nyx_string* %3152, %nyx_string* %3153)
  %3155 = load %nyx_string*, %nyx_string** %3151
  %3156 = call %nyx_string* @nyx_string_concat(%nyx_string* %3154, %nyx_string* %3155)
  store %nyx_string* %3156, %nyx_string** %2990
  br label %merge577
else576:
  br label %merge577
merge577:
  br label %merge572
else571:
  %3157 = alloca i1
  store i1 true, i1* %3157
  %3158 = load %nyx_string*, %nyx_string** %3049
  %3159 = load %nyx_string*, %nyx_string** %2994
  %3160 = call i1 @nyx_string_equals(%nyx_string* %3158, %nyx_string* %3159)
  br i1 %3160, label %sc_or_end579, label %sc_or_rhs578
sc_or_rhs578:
  %3161 = load %nyx_string*, %nyx_string** %3049
  %3162 = load %nyx_string*, %nyx_string** %3003
  %3163 = call i1 @nyx_string_equals(%nyx_string* %3161, %nyx_string* %3162)
  store i1 %3163, i1* %3157
  br label %sc_or_end579
sc_or_end579:
  %3164 = load i1, i1* %3157
  br i1 %3164, label %then580, label %else581
then580:
  br label %merge582
else581:
  %3165 = load %nyx_string*, %nyx_string** %3049
  %3166 = load %nyx_string*, %nyx_string** %3036
  %3167 = call i1 @nyx_string_ends_with(%nyx_string* %3165, %nyx_string* %3166)
  br i1 %3167, label %then583, label %else584
then583:
  %3168 = load %nyx_string*, %nyx_string** %3049
  %3169 = getelementptr %TestConfig, %TestConfig* %2985, i32 0, i32 4
  store %nyx_string* %3168, %nyx_string** %3169
  br label %merge585
else584:
  %3170 = load %nyx_string*, %nyx_string** %3049
  %3171 = load %nyx_string*, %nyx_string** %3039
  %3172 = call i1 @nyx_string_starts_with(%nyx_string* %3170, %nyx_string* %3171)
  br i1 %3172, label %then586, label %else587
then586:
  %3173 = load %nyx_string*, %nyx_string** %3021
  %3174 = load %nyx_string*, %nyx_string** %3049
  %3175 = call %nyx_string* @nyx_string_concat(%nyx_string* %3173, %nyx_string* %3174)
  %3176 = call i8* @nyx_string_to_cstr(%nyx_string* %3175)
  call void @nyx_print_string(i8* %3176)
  %3177 = call i64 @print_valid_options()
  ret i64 1
else587:
  br label %merge588
merge588:
  br label %merge585
merge585:
  br label %merge582
merge582:
  br label %merge572
merge572:
  br label %merge567
merge567:
  br label %merge562
merge562:
  br label %merge559
merge559:
  br label %merge556
merge556:
  br label %merge553
merge553:
  br label %merge548
merge548:
  br label %merge543
merge543:
  %3178 = load i64, i64* %2991
  %3179 = add i64 %3178, 1
  store i64 %3179, i64* %2991
  br label %while_cond536
while_end538:
  %3180 = load %nyx_string*, %nyx_string** %2990
  %3181 = getelementptr [1 x i8], [1 x i8]* @.str307, i32 0, i32 0
  %3182 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str307.c, i8* %3181, i64 0)
  %3183 = call i1 @nyx_string_equals(%nyx_string* %3180, %nyx_string* %3182)
  %3184 = xor i1 %3183, true
  br i1 %3184, label %then589, label %else590
then589:
  %3185 = getelementptr %TestConfig, %TestConfig* %2985, i32 0, i32 5
  %3186 = load i1, i1* %3185
  br i1 %3186, label %then592, label %else593
then592:
  %3187 = getelementptr [47 x i8], [47 x i8]* @.str308, i32 0, i32 0
  %3188 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str308.c, i8* %3187, i64 46)
  %3189 = load %nyx_string*, %nyx_string** %2990
  %3190 = call %nyx_string* @nyx_string_concat(%nyx_string* %3188, %nyx_string* %3189)
  %3191 = getelementptr [58 x i8], [58 x i8]* @.str309, i32 0, i32 0
  %3192 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str309.c, i8* %3191, i64 57)
  %3193 = call %nyx_string* @nyx_string_concat(%nyx_string* %3190, %nyx_string* %3192)
  %3194 = call i8* @nyx_string_to_cstr(%nyx_string* %3193)
  call void @nyx_print_string(i8* %3194)
  br label %merge594
else593:
  %3195 = getelementptr [24 x i8], [24 x i8]* @.str310, i32 0, i32 0
  %3196 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str310.c, i8* %3195, i64 23)
  %3197 = load %nyx_string*, %nyx_string** %2990
  %3198 = call %nyx_string* @nyx_string_concat(%nyx_string* %3196, %nyx_string* %3197)
  %3199 = call i8* @nyx_string_to_cstr(%nyx_string* %3198)
  call void @nyx_print_string(i8* %3199)
  br label %merge594
merge594:
  %3200 = call i64 @print_valid_options()
  ret i64 1
else590:
  br label %merge591
merge591:
  %3201 = getelementptr [1 x i8], [1 x i8]* @.str311, i32 0, i32 0
  %3202 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str311.c, i8* %3201, i64 0)
  %3203 = alloca %nyx_string*
  store %nyx_string* %3202, %nyx_string** %3203
  %3204 = getelementptr [1 x i8], [1 x i8]* @.str312, i32 0, i32 0
  %3205 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str312.c, i8* %3204, i64 0)
  %3206 = alloca %nyx_string*
  store %nyx_string* %3205, %nyx_string** %3206
  %3207 = getelementptr %TestConfig, %TestConfig* %2985, i32 0, i32 5
  %3208 = load i1, i1* %3207
  br i1 %3208, label %then595, label %else596
then595:
  %3209 = call %nyx_string* @cov_find_profdata()
  store %nyx_string* %3209, %nyx_string** %3203
  %3210 = load %nyx_string*, %nyx_string** %3203
  %3211 = getelementptr [1 x i8], [1 x i8]* @.str313, i32 0, i32 0
  %3212 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str313.c, i8* %3211, i64 0)
  %3213 = call i1 @nyx_string_equals(%nyx_string* %3210, %nyx_string* %3212)
  br i1 %3213, label %then598, label %else599
then598:
  %3214 = call %nyx_string* @cov_clang_major()
  %3215 = alloca %nyx_string*
  store %nyx_string* %3214, %nyx_string** %3215
  %3216 = getelementptr [5 x i8], [5 x i8]* @.str314, i32 0, i32 0
  %3217 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str314.c, i8* %3216, i64 4)
  %3218 = alloca %nyx_string*
  store %nyx_string* %3217, %nyx_string** %3218
  %3219 = load %nyx_string*, %nyx_string** %3215
  %3220 = getelementptr [1 x i8], [1 x i8]* @.str315, i32 0, i32 0
  %3221 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str315.c, i8* %3220, i64 0)
  %3222 = call i1 @nyx_string_equals(%nyx_string* %3219, %nyx_string* %3221)
  %3223 = xor i1 %3222, true
  br i1 %3223, label %then601, label %else602
then601:
  %3224 = getelementptr [6 x i8], [6 x i8]* @.str316, i32 0, i32 0
  %3225 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str316.c, i8* %3224, i64 5)
  %3226 = load %nyx_string*, %nyx_string** %3215
  %3227 = call %nyx_string* @nyx_string_concat(%nyx_string* %3225, %nyx_string* %3226)
  store %nyx_string* %3227, %nyx_string** %3218
  br label %merge603
else602:
  br label %merge603
merge603:
  %3228 = getelementptr [101 x i8], [101 x i8]* @.str317, i32 0, i32 0
  %3229 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str317.c, i8* %3228, i64 100)
  %3230 = call i8* @nyx_string_to_cstr(%nyx_string* %3229)
  call void @nyx_print_string(i8* %3230)
  %3231 = getelementptr [35 x i8], [35 x i8]* @.str318, i32 0, i32 0
  %3232 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str318.c, i8* %3231, i64 34)
  %3233 = load %nyx_string*, %nyx_string** %3218
  %3234 = call %nyx_string* @nyx_string_concat(%nyx_string* %3232, %nyx_string* %3233)
  %3235 = call i8* @nyx_string_to_cstr(%nyx_string* %3234)
  call void @nyx_print_string(i8* %3235)
  %3236 = getelementptr [82 x i8], [82 x i8]* @.str319, i32 0, i32 0
  %3237 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str319.c, i8* %3236, i64 81)
  %3238 = call i8* @nyx_string_to_cstr(%nyx_string* %3237)
  call void @nyx_print_string(i8* %3238)
  %3239 = getelementptr [82 x i8], [82 x i8]* @.str320, i32 0, i32 0
  %3240 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str320.c, i8* %3239, i64 81)
  %3241 = call i8* @nyx_string_to_cstr(%nyx_string* %3240)
  call void @nyx_print_string(i8* %3241)
  ret i64 1
else599:
  br label %merge600
merge600:
  %3242 = getelementptr [30 x i8], [30 x i8]* @.str321, i32 0, i32 0
  %3243 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str321.c, i8* %3242, i64 29)
  %3244 = call i8* @nyx_string_to_cstr(%nyx_string* %3243)
  %3245 = call %nyx_string* @nyx_exec(i8* %3244)
  %3246 = call %nyx_string* @nyx_string_trim(%nyx_string* %3245)
  store %nyx_string* %3246, %nyx_string** %3206
  %3247 = load %nyx_string*, %nyx_string** %3206
  %3248 = getelementptr [1 x i8], [1 x i8]* @.str322, i32 0, i32 0
  %3249 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str322.c, i8* %3248, i64 0)
  %3250 = call i1 @nyx_string_equals(%nyx_string* %3247, %nyx_string* %3249)
  br i1 %3250, label %then604, label %else605
then604:
  %3251 = getelementptr [55 x i8], [55 x i8]* @.str323, i32 0, i32 0
  %3252 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str323.c, i8* %3251, i64 54)
  %3253 = call i8* @nyx_string_to_cstr(%nyx_string* %3252)
  call void @nyx_print_string(i8* %3253)
  ret i64 1
else605:
  br label %merge606
merge606:
  br label %merge597
else596:
  br label %merge597
merge597:
  %3254 = call { i64, i8* }* @nyx_array_new_ptr()
  %3255 = alloca { i64, i8* }*
  store { i64, i8* }* %3254, { i64, i8* }** %3255
  %3256 = getelementptr %TestConfig, %TestConfig* %2985, i32 0, i32 4
  %3257 = load %nyx_string*, %nyx_string** %3256
  %3258 = getelementptr [1 x i8], [1 x i8]* @.str324, i32 0, i32 0
  %3259 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str324.c, i8* %3258, i64 0)
  %3260 = call i1 @nyx_string_equals(%nyx_string* %3257, %nyx_string* %3259)
  %3261 = xor i1 %3260, true
  br i1 %3261, label %then607, label %else608
then607:
  %3262 = getelementptr %TestConfig, %TestConfig* %2985, i32 0, i32 4
  %3263 = load %nyx_string*, %nyx_string** %3262
  %3264 = call i8* @nyx_string_to_cstr(%nyx_string* %3263)
  %3265 = call i1 @nyx_file_exists(i8* %3264)
  %3266 = xor i1 %3265, true
  br i1 %3266, label %then610, label %else611
then610:
  %3267 = getelementptr [24 x i8], [24 x i8]* @.str325, i32 0, i32 0
  %3268 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str325.c, i8* %3267, i64 23)
  %3269 = getelementptr %TestConfig, %TestConfig* %2985, i32 0, i32 4
  %3270 = load %nyx_string*, %nyx_string** %3269
  %3271 = call %nyx_string* @nyx_string_concat(%nyx_string* %3268, %nyx_string* %3270)
  %3272 = call i8* @nyx_string_to_cstr(%nyx_string* %3271)
  call void @nyx_print_string(i8* %3272)
  ret i64 1
else611:
  br label %merge612
merge612:
  %3273 = load { i64, i8* }*, { i64, i8* }** %3255
  %3274 = getelementptr %TestConfig, %TestConfig* %2985, i32 0, i32 4
  %3275 = load %nyx_string*, %nyx_string** %3274
  %3276 = ptrtoint %nyx_string* %3275 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %3273, i64 %3276, i64 2)
  br label %merge609
else608:
  %3277 = load %TestConfig, %TestConfig* %2985
  %3278 = call { i64, i8* }* @discover_tests(%TestConfig %3277)
  store { i64, i8* }* %3278, { i64, i8* }** %3255
  br label %merge609
merge609:
  %3279 = load { i64, i8* }*, { i64, i8* }** %3255
  %3280 = call i64 @nyx_array_length({ i64, i8* }* %3279)
  %3281 = icmp eq i64 %3280, 0
  br i1 %3281, label %then613, label %else614
then613:
  %3282 = getelementptr [23 x i8], [23 x i8]* @.str326, i32 0, i32 0
  %3283 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str326.c, i8* %3282, i64 22)
  %3284 = call i8* @nyx_string_to_cstr(%nyx_string* %3283)
  call void @nyx_print_string(i8* %3284)
  %3285 = getelementptr %TestConfig, %TestConfig* %2985, i32 0, i32 2
  %3286 = load %nyx_string*, %nyx_string** %3285
  %3287 = getelementptr [1 x i8], [1 x i8]* @.str327, i32 0, i32 0
  %3288 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str327.c, i8* %3287, i64 0)
  %3289 = call i1 @nyx_string_equals(%nyx_string* %3286, %nyx_string* %3288)
  %3290 = xor i1 %3289, true
  br i1 %3290, label %then616, label %else617
then616:
  %3291 = getelementptr [12 x i8], [12 x i8]* @.str328, i32 0, i32 0
  %3292 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str328.c, i8* %3291, i64 11)
  %3293 = getelementptr %TestConfig, %TestConfig* %2985, i32 0, i32 2
  %3294 = load %nyx_string*, %nyx_string** %3293
  %3295 = call %nyx_string* @nyx_string_concat(%nyx_string* %3292, %nyx_string* %3294)
  %3296 = getelementptr [2 x i8], [2 x i8]* @.str329, i32 0, i32 0
  %3297 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str329.c, i8* %3296, i64 1)
  %3298 = call %nyx_string* @nyx_string_concat(%nyx_string* %3295, %nyx_string* %3297)
  %3299 = call i8* @nyx_string_to_cstr(%nyx_string* %3298)
  call void @nyx_print_string(i8* %3299)
  br label %merge618
else617:
  br label %merge618
merge618:
  %3300 = getelementptr [14 x i8], [14 x i8]* @.str330, i32 0, i32 0
  %3301 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str330.c, i8* %3300, i64 13)
  %3302 = getelementptr %TestConfig, %TestConfig* %2985, i32 0, i32 0
  %3303 = load %nyx_string*, %nyx_string** %3302
  %3304 = call %nyx_string* @nyx_string_concat(%nyx_string* %3301, %nyx_string* %3303)
  %3305 = getelementptr [2 x i8], [2 x i8]* @.str331, i32 0, i32 0
  %3306 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str331.c, i8* %3305, i64 1)
  %3307 = call %nyx_string* @nyx_string_concat(%nyx_string* %3304, %nyx_string* %3306)
  %3308 = call i8* @nyx_string_to_cstr(%nyx_string* %3307)
  call void @nyx_print_string(i8* %3308)
  ret i64 0
else614:
  br label %merge615
merge615:
  %3309 = getelementptr [9 x i8], [9 x i8]* @.str332, i32 0, i32 0
  %3310 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str332.c, i8* %3309, i64 8)
  %3311 = load { i64, i8* }*, { i64, i8* }** %3255
  %3312 = call i64 @nyx_array_length({ i64, i8* }* %3311)
  %3313 = call %nyx_string* @nyx_string_from_int(i64 %3312)
  %3314 = call %nyx_string* @nyx_string_concat(%nyx_string* %3310, %nyx_string* %3313)
  %3315 = getelementptr [14 x i8], [14 x i8]* @.str333, i32 0, i32 0
  %3316 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str333.c, i8* %3315, i64 13)
  %3317 = call %nyx_string* @nyx_string_concat(%nyx_string* %3314, %nyx_string* %3316)
  %3318 = call i8* @nyx_string_to_cstr(%nyx_string* %3317)
  call void @nyx_print_string(i8* %3318)
  %3319 = getelementptr %TestConfig, %TestConfig* %2985, i32 0, i32 2
  %3320 = load %nyx_string*, %nyx_string** %3319
  %3321 = getelementptr [1 x i8], [1 x i8]* @.str334, i32 0, i32 0
  %3322 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str334.c, i8* %3321, i64 0)
  %3323 = call i1 @nyx_string_equals(%nyx_string* %3320, %nyx_string* %3322)
  %3324 = xor i1 %3323, true
  br i1 %3324, label %then619, label %else620
then619:
  %3325 = getelementptr [12 x i8], [12 x i8]* @.str335, i32 0, i32 0
  %3326 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str335.c, i8* %3325, i64 11)
  %3327 = getelementptr %TestConfig, %TestConfig* %2985, i32 0, i32 2
  %3328 = load %nyx_string*, %nyx_string** %3327
  %3329 = call %nyx_string* @nyx_string_concat(%nyx_string* %3326, %nyx_string* %3328)
  %3330 = getelementptr [2 x i8], [2 x i8]* @.str336, i32 0, i32 0
  %3331 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str336.c, i8* %3330, i64 1)
  %3332 = call %nyx_string* @nyx_string_concat(%nyx_string* %3329, %nyx_string* %3331)
  %3333 = call i8* @nyx_string_to_cstr(%nyx_string* %3332)
  call void @nyx_print_string(i8* %3333)
  br label %merge621
else620:
  br label %merge621
merge621:
  %3334 = getelementptr [1 x i8], [1 x i8]* @.str337, i32 0, i32 0
  %3335 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str337.c, i8* %3334, i64 0)
  %3336 = call i8* @nyx_string_to_cstr(%nyx_string* %3335)
  call void @nyx_print_string(i8* %3336)
  %3337 = alloca i1
  store i1 false, i1* %3337
  %3338 = getelementptr %TestConfig, %TestConfig* %2985, i32 0, i32 8
  %3339 = load %nyx_string*, %nyx_string** %3338
  %3340 = getelementptr [1 x i8], [1 x i8]* @.str338, i32 0, i32 0
  %3341 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str338.c, i8* %3340, i64 0)
  %3342 = call i1 @nyx_string_equals(%nyx_string* %3339, %nyx_string* %3341)
  %3343 = xor i1 %3342, true
  br i1 %3343, label %sc_and_rhs622, label %sc_and_end623
sc_and_rhs622:
  %3344 = getelementptr %TestConfig, %TestConfig* %2985, i32 0, i32 5
  %3345 = load i1, i1* %3344
  %3346 = xor i1 %3345, true
  store i1 %3346, i1* %3337
  br label %sc_and_end623
sc_and_end623:
  %3347 = load i1, i1* %3337
  br i1 %3347, label %then624, label %else625
then624:
  %3348 = getelementptr [9 x i8], [9 x i8]* @.str339, i32 0, i32 0
  %3349 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str339.c, i8* %3348, i64 8)
  %3350 = call i8* @nyx_string_to_cstr(%nyx_string* %3349)
  %3351 = call %nyx_string* @nyx_getenv(i8* %3350)
  %3352 = alloca %nyx_string*
  store %nyx_string* %3351, %nyx_string** %3352
  %3353 = load %nyx_string*, %nyx_string** %3352
  %3354 = getelementptr [11 x i8], [11 x i8]* @.str340, i32 0, i32 0
  %3355 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str340.c, i8* %3354, i64 10)
  %3356 = call %nyx_string* @nyx_string_concat(%nyx_string* %3353, %nyx_string* %3355)
  %3357 = alloca %nyx_string*
  store %nyx_string* %3356, %nyx_string** %3357
  %3358 = load %nyx_string*, %nyx_string** %3357
  %3359 = call i8* @nyx_string_to_cstr(%nyx_string* %3358)
  %3360 = call i1 @nyx_file_exists(i8* %3359)
  %3361 = xor i1 %3360, true
  br i1 %3361, label %then627, label %else628
then627:
  %3362 = load %nyx_string*, %nyx_string** %3352
  %3363 = getelementptr [15 x i8], [15 x i8]* @.str341, i32 0, i32 0
  %3364 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str341.c, i8* %3363, i64 14)
  %3365 = call %nyx_string* @nyx_string_concat(%nyx_string* %3362, %nyx_string* %3364)
  store %nyx_string* %3365, %nyx_string** %3357
  br label %merge629
else628:
  br label %merge629
merge629:
  %3366 = getelementptr [1 x i8], [1 x i8]* @.str342, i32 0, i32 0
  %3367 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str342.c, i8* %3366, i64 0)
  %3368 = alloca %nyx_string*
  store %nyx_string* %3367, %nyx_string** %3368
  %3369 = getelementptr %TestConfig, %TestConfig* %2985, i32 0, i32 7
  %3370 = load i1, i1* %3369
  br i1 %3370, label %then630, label %else631
then630:
  %3371 = getelementptr [11 x i8], [11 x i8]* @.str343, i32 0, i32 0
  %3372 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str343.c, i8* %3371, i64 10)
  store %nyx_string* %3372, %nyx_string** %3368
  br label %merge632
else631:
  br label %merge632
merge632:
  %3373 = getelementptr [33 x i8], [33 x i8]* @.str344, i32 0, i32 0
  %3374 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str344.c, i8* %3373, i64 32)
  %3375 = call i8* @nyx_string_to_cstr(%nyx_string* %3374)
  %3376 = call %nyx_string* @nyx_exec(i8* %3375)
  %3377 = call %nyx_string* @nyx_string_trim(%nyx_string* %3376)
  %3378 = alloca %nyx_string*
  store %nyx_string* %3377, %nyx_string** %3378
  %3379 = getelementptr [2 x i8], [2 x i8]* @.str345, i32 0, i32 0
  %3380 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str345.c, i8* %3379, i64 1)
  %3381 = load %nyx_string*, %nyx_string** %3357
  %3382 = call %nyx_string* @nyx_string_concat(%nyx_string* %3380, %nyx_string* %3381)
  %3383 = getelementptr [7 x i8], [7 x i8]* @.str346, i32 0, i32 0
  %3384 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str346.c, i8* %3383, i64 6)
  %3385 = call %nyx_string* @nyx_string_concat(%nyx_string* %3382, %nyx_string* %3384)
  %3386 = load %nyx_string*, %nyx_string** %3368
  %3387 = call %nyx_string* @nyx_string_concat(%nyx_string* %3385, %nyx_string* %3386)
  %3388 = getelementptr [5 x i8], [5 x i8]* @.str347, i32 0, i32 0
  %3389 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str347.c, i8* %3388, i64 4)
  %3390 = call %nyx_string* @nyx_string_concat(%nyx_string* %3387, %nyx_string* %3389)
  %3391 = load %nyx_string*, %nyx_string** %3378
  %3392 = call %nyx_string* @nyx_string_concat(%nyx_string* %3390, %nyx_string* %3391)
  %3393 = getelementptr [7 x i8], [7 x i8]* @.str348, i32 0, i32 0
  %3394 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str348.c, i8* %3393, i64 6)
  %3395 = call %nyx_string* @nyx_string_concat(%nyx_string* %3392, %nyx_string* %3394)
  %3396 = call i8* @nyx_string_to_cstr(%nyx_string* %3395)
  %3397 = call i64 @nyx_exec_code(i8* %3396)
  %3398 = alloca i64
  store i64 %3397, i64* %3398
  %3399 = load %nyx_string*, %nyx_string** %3378
  %3400 = call i8* @nyx_string_to_cstr(%nyx_string* %3399)
  %3401 = call %nyx_string* @nyx_read_file(i8* %3400)
  %3402 = alloca %nyx_string*
  store %nyx_string* %3401, %nyx_string** %3402
  %3403 = getelementptr [8 x i8], [8 x i8]* @.str349, i32 0, i32 0
  %3404 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str349.c, i8* %3403, i64 7)
  %3405 = load %nyx_string*, %nyx_string** %3378
  %3406 = call %nyx_string* @nyx_string_concat(%nyx_string* %3404, %nyx_string* %3405)
  %3407 = getelementptr [2 x i8], [2 x i8]* @.str350, i32 0, i32 0
  %3408 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str350.c, i8* %3407, i64 1)
  %3409 = call %nyx_string* @nyx_string_concat(%nyx_string* %3406, %nyx_string* %3408)
  %3410 = call i8* @nyx_string_to_cstr(%nyx_string* %3409)
  %3411 = call i64 @nyx_exec_code(i8* %3410)
  %3412 = load i64, i64* %3398
  %3413 = icmp ne i64 %3412, 0
  br i1 %3413, label %then633, label %else634
then633:
  %3414 = getelementptr [65 x i8], [65 x i8]* @.str351, i32 0, i32 0
  %3415 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str351.c, i8* %3414, i64 64)
  %3416 = call i8* @nyx_string_to_cstr(%nyx_string* %3415)
  call void @nyx_print_string(i8* %3416)
  %3417 = load %nyx_string*, %nyx_string** %3402
  %3418 = call i8* @nyx_string_to_cstr(%nyx_string* %3417)
  call void @nyx_print_string(i8* %3418)
  ret i64 1
else634:
  br label %merge635
merge635:
  %3419 = load %nyx_string*, %nyx_string** %3402
  %3420 = getelementptr [2 x i8], [2 x i8]* @.str352, i32 0, i32 0
  %3421 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str352.c, i8* %3420, i64 1)
  %3422 = call { i64, i8* }* @nyx_string_split(%nyx_string* %3419, %nyx_string* %3421)
  %3423 = alloca { i64, i8* }*
  store { i64, i8* }* %3422, { i64, i8* }** %3423
  %3424 = alloca i64
  store i64 0, i64* %3424
  %3425 = alloca i64
  store i64 0, i64* %3425
  %3426 = alloca i64
  store i64 0, i64* %3426
  %3427 = getelementptr [13 x i8], [13 x i8]* @.str353, i32 0, i32 0
  %3428 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str353.c, i8* %3427, i64 12)
  %3429 = alloca %nyx_string*
  store %nyx_string* %3428, %nyx_string** %3429
  %3430 = getelementptr [6 x i8], [6 x i8]* @.str354, i32 0, i32 0
  %3431 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str354.c, i8* %3430, i64 5)
  %3432 = alloca %nyx_string*
  store %nyx_string* %3431, %nyx_string** %3432
  %3433 = getelementptr [8 x i8], [8 x i8]* @.str355, i32 0, i32 0
  %3434 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str355.c, i8* %3433, i64 7)
  %3435 = alloca %nyx_string*
  store %nyx_string* %3434, %nyx_string** %3435
  %3436 = getelementptr [4 x i8], [4 x i8]* @.str356, i32 0, i32 0
  %3437 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str356.c, i8* %3436, i64 3)
  %3438 = alloca %nyx_string*
  store %nyx_string* %3437, %nyx_string** %3438
  %3439 = call i8* @llvm.stacksave()
  br label %while_cond636
while_cond636:
  %3440 = load i64, i64* %3424
  %3441 = load { i64, i8* }*, { i64, i8* }** %3423
  %3442 = call i64 @nyx_array_length({ i64, i8* }* %3441)
  %3443 = icmp slt i64 %3440, %3442
  br i1 %3443, label %while_body637, label %while_end638
while_body637:
  call void @llvm.stackrestore(i8* %3439)
  %3444 = load { i64, i8* }*, { i64, i8* }** %3423
  %3445 = load i64, i64* %3424
  %3446 = call i64 @nyx_array_get_checked({ i64, i8* }* %3444, i64 %3445, i64 2)
  %3447 = inttoptr i64 %3446 to %nyx_string*
  %3448 = alloca %nyx_string*
  store %nyx_string* %3447, %nyx_string** %3448
  %3449 = load %nyx_string*, %nyx_string** %3448
  %3450 = load %nyx_string*, %nyx_string** %3429
  %3451 = call i1 @nyx_string_starts_with(%nyx_string* %3449, %nyx_string* %3450)
  br i1 %3451, label %then639, label %else640
then639:
  %3452 = load %nyx_string*, %nyx_string** %3448
  %3453 = load %nyx_string*, %nyx_string** %3448
  %3454 = call i64 @nyx_string_byte_length(%nyx_string* %3453)
  %3455 = call %nyx_string* @nyx_string_substring(%nyx_string* %3452, i64 12, i64 %3454)
  %3456 = call %nyx_string* @nyx_string_trim(%nyx_string* %3455)
  %3457 = getelementptr %TestConfig, %TestConfig* %2985, i32 0, i32 9
  store %nyx_string* %3456, %nyx_string** %3457
  br label %merge641
else640:
  br label %merge641
merge641:
  %3458 = load %nyx_string*, %nyx_string** %3448
  %3459 = load %nyx_string*, %nyx_string** %3432
  %3460 = call i1 @nyx_string_contains(%nyx_string* %3458, %nyx_string* %3459)
  br i1 %3460, label %then642, label %else643
then642:
  %3461 = load i64, i64* %3425
  %3462 = add i64 %3461, 1
  store i64 %3462, i64* %3425
  br label %merge644
else643:
  br label %merge644
merge644:
  %3463 = load %nyx_string*, %nyx_string** %3448
  %3464 = load %nyx_string*, %nyx_string** %3435
  %3465 = call i1 @nyx_string_contains(%nyx_string* %3463, %nyx_string* %3464)
  br i1 %3465, label %then645, label %else646
then645:
  %3466 = load i64, i64* %3426
  %3467 = add i64 %3466, 1
  store i64 %3467, i64* %3426
  br label %merge647
else646:
  br label %merge647
merge647:
  %3468 = load %nyx_string*, %nyx_string** %3448
  %3469 = load %nyx_string*, %nyx_string** %3438
  %3470 = call i1 @nyx_string_contains(%nyx_string* %3468, %nyx_string* %3469)
  br i1 %3470, label %then648, label %else649
then648:
  %3471 = load %nyx_string*, %nyx_string** %3448
  %3472 = call i8* @nyx_string_to_cstr(%nyx_string* %3471)
  call void @nyx_print_string(i8* %3472)
  br label %merge650
else649:
  br label %merge650
merge650:
  %3473 = load i64, i64* %3424
  %3474 = add i64 %3473, 1
  store i64 %3474, i64* %3424
  br label %while_cond636
while_end638:
  %3475 = getelementptr [18 x i8], [18 x i8]* @.str357, i32 0, i32 0
  %3476 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str357.c, i8* %3475, i64 17)
  %3477 = load i64, i64* %3425
  %3478 = call %nyx_string* @nyx_string_from_int(i64 %3477)
  %3479 = call %nyx_string* @nyx_string_concat(%nyx_string* %3476, %nyx_string* %3478)
  %3480 = getelementptr [16 x i8], [16 x i8]* @.str358, i32 0, i32 0
  %3481 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str358.c, i8* %3480, i64 15)
  %3482 = call %nyx_string* @nyx_string_concat(%nyx_string* %3479, %nyx_string* %3481)
  %3483 = load i64, i64* %3426
  %3484 = call %nyx_string* @nyx_string_from_int(i64 %3483)
  %3485 = call %nyx_string* @nyx_string_concat(%nyx_string* %3482, %nyx_string* %3484)
  %3486 = getelementptr [16 x i8], [16 x i8]* @.str359, i32 0, i32 0
  %3487 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str359.c, i8* %3486, i64 15)
  %3488 = call %nyx_string* @nyx_string_concat(%nyx_string* %3485, %nyx_string* %3487)
  %3489 = call i8* @nyx_string_to_cstr(%nyx_string* %3488)
  call void @nyx_print_string(i8* %3489)
  %3490 = getelementptr [1 x i8], [1 x i8]* @.str360, i32 0, i32 0
  %3491 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str360.c, i8* %3490, i64 0)
  %3492 = call i8* @nyx_string_to_cstr(%nyx_string* %3491)
  call void @nyx_print_string(i8* %3492)
  br label %merge626
else625:
  br label %merge626
merge626:
  %3493 = call { i64, i8* }* @nyx_array_new_ptr()
  %3494 = alloca { i64, i8* }*
  store { i64, i8* }* %3493, { i64, i8* }** %3494
  %3495 = call { i64, i8* }* @nyx_array_new_ptr()
  %3496 = alloca { i64, i8* }*
  store { i64, i8* }* %3495, { i64, i8* }** %3496
  %3497 = call { i64, i8* }* @nyx_array_new_ptr()
  %3498 = alloca { i64, i8* }*
  store { i64, i8* }* %3497, { i64, i8* }** %3498
  %3499 = alloca i64
  store i64 0, i64* %3499
  %3500 = alloca i64
  store i64 0, i64* %3500
  %3501 = alloca i64
  store i64 0, i64* %3501
  %3502 = call i8* @llvm.stacksave()
  br label %while_cond651
while_cond651:
  %3503 = load i64, i64* %3501
  %3504 = load { i64, i8* }*, { i64, i8* }** %3255
  %3505 = call i64 @nyx_array_length({ i64, i8* }* %3504)
  %3506 = icmp slt i64 %3503, %3505
  br i1 %3506, label %while_body652, label %while_end653
while_body652:
  call void @llvm.stackrestore(i8* %3502)
  %3507 = load { i64, i8* }*, { i64, i8* }** %3255
  %3508 = load i64, i64* %3501
  %3509 = call i64 @nyx_array_get_checked({ i64, i8* }* %3507, i64 %3508, i64 2)
  %3510 = inttoptr i64 %3509 to %nyx_string*
  %3511 = alloca %nyx_string*
  store %nyx_string* %3510, %nyx_string** %3511
  %3512 = load %nyx_string*, %nyx_string** %3511
  %3513 = call i1 @file_has_test_blocks(%nyx_string* %3512)
  %3514 = xor i1 %3513, true
  br i1 %3514, label %then654, label %else655
then654:
  %3515 = load i64, i64* %3501
  %3516 = add i64 %3515, 1
  store i64 %3516, i64* %3501
  br label %merge656
else655:
  %3517 = load %nyx_string*, %nyx_string** %3511
  %3518 = load %TestConfig, %TestConfig* %2985
  %3519 = load %nyx_string*, %nyx_string** %3206
  %3520 = load i64, i64* %3501
  %3521 = call %TestResult @compile_and_run(%nyx_string* %3517, %TestConfig %3518, %nyx_string* %3519, i64 %3520)
  %3522 = alloca %TestResult
  store %TestResult %3521, %TestResult* %3522
  %3523 = load { i64, i8* }*, { i64, i8* }** %3494
  %3524 = load %TestResult, %TestResult* %3522
  %3525 = getelementptr %TestResult, %TestResult* null, i32 1
  %3526 = ptrtoint %TestResult* %3525 to i64
  %3527 = call i8* @GC_malloc(i64 %3526)
  %3528 = bitcast i8* %3527 to %TestResult*
  store %TestResult %3524, %TestResult* %3528
  %3529 = ptrtoint %TestResult* %3528 to i64
  call void @nyx_array_push({ i64, i8* }* %3523, i64 %3529)
  %3530 = load { i64, i8* }*, { i64, i8* }** %3496
  %3531 = load %nyx_string*, %nyx_string** %3511
  %3532 = ptrtoint %nyx_string* %3531 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %3530, i64 %3532, i64 2)
  %3533 = load { i64, i8* }*, { i64, i8* }** %3498
  %3534 = load i64, i64* %3501
  %3535 = call %nyx_string* @nyx_string_from_int(i64 %3534)
  %3536 = ptrtoint %nyx_string* %3535 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %3533, i64 %3536, i64 2)
  %3537 = load i64, i64* %3499
  %3538 = getelementptr %TestResult, %TestResult* %3522, i32 0, i32 1
  %3539 = load i64, i64* %3538
  %3540 = add i64 %3537, %3539
  store i64 %3540, i64* %3499
  %3541 = load i64, i64* %3500
  %3542 = getelementptr %TestResult, %TestResult* %3522, i32 0, i32 2
  %3543 = load i64, i64* %3542
  %3544 = add i64 %3541, %3543
  store i64 %3544, i64* %3500
  %3545 = load %TestResult, %TestResult* %3522
  %3546 = getelementptr %TestConfig, %TestConfig* %2985, i32 0, i32 3
  %3547 = load i1, i1* %3546
  %3548 = call i64 @print_result(%TestResult %3545, i1 %3547)
  %3549 = load i64, i64* %3501
  %3550 = add i64 %3549, 1
  store i64 %3550, i64* %3501
  br label %merge656
merge656:
  br label %while_cond651
while_end653:
  %3551 = load { i64, i8* }*, { i64, i8* }** %3494
  %3552 = call i64 @nyx_array_length({ i64, i8* }* %3551)
  %3553 = icmp eq i64 %3552, 0
  br i1 %3553, label %then657, label %else658
then657:
  %3554 = getelementptr [35 x i8], [35 x i8]* @.str361, i32 0, i32 0
  %3555 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str361.c, i8* %3554, i64 34)
  %3556 = call i8* @nyx_string_to_cstr(%nyx_string* %3555)
  call void @nyx_print_string(i8* %3556)
  %3557 = load %nyx_string*, %nyx_string** %3206
  %3558 = getelementptr [1 x i8], [1 x i8]* @.str362, i32 0, i32 0
  %3559 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str362.c, i8* %3558, i64 0)
  %3560 = call i1 @nyx_string_equals(%nyx_string* %3557, %nyx_string* %3559)
  %3561 = xor i1 %3560, true
  br i1 %3561, label %then660, label %else661
then660:
  %3562 = getelementptr [8 x i8], [8 x i8]* @.str363, i32 0, i32 0
  %3563 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str363.c, i8* %3562, i64 7)
  %3564 = load %nyx_string*, %nyx_string** %3206
  %3565 = call %nyx_string* @nyx_string_concat(%nyx_string* %3563, %nyx_string* %3564)
  %3566 = call i8* @nyx_string_to_cstr(%nyx_string* %3565)
  %3567 = call %nyx_string* @nyx_exec(i8* %3566)
  br label %merge662
else661:
  br label %merge662
merge662:
  ret i64 0
else658:
  br label %merge659
merge659:
  %3568 = load { i64, i8* }*, { i64, i8* }** %3494
  %3569 = load i64, i64* %3499
  %3570 = load i64, i64* %3500
  %3571 = call i64 @print_summary({ i64, i8* }* %3568, i64 %3569, i64 %3570)
  %3572 = getelementptr %TestConfig, %TestConfig* %2985, i32 0, i32 5
  %3573 = load i1, i1* %3572
  br i1 %3573, label %then663, label %else664
then663:
  %3574 = load %nyx_string*, %nyx_string** %3206
  %3575 = load { i64, i8* }*, { i64, i8* }** %3496
  %3576 = load { i64, i8* }*, { i64, i8* }** %3498
  %3577 = load %nyx_string*, %nyx_string** %3203
  %3578 = getelementptr %TestConfig, %TestConfig* %2985, i32 0, i32 6
  %3579 = load i1, i1* %3578
  %3580 = call i64 @cov_report(%nyx_string* %3574, { i64, i8* }* %3575, { i64, i8* }* %3576, %nyx_string* %3577, i1 %3579)
  %3581 = getelementptr [8 x i8], [8 x i8]* @.str364, i32 0, i32 0
  %3582 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str364.c, i8* %3581, i64 7)
  %3583 = load %nyx_string*, %nyx_string** %3206
  %3584 = call %nyx_string* @nyx_string_concat(%nyx_string* %3582, %nyx_string* %3583)
  %3585 = call i8* @nyx_string_to_cstr(%nyx_string* %3584)
  %3586 = call %nyx_string* @nyx_exec(i8* %3585)
  br label %merge665
else664:
  br label %merge665
merge665:
  %3587 = alloca i64
  store i64 0, i64* %3587
  %3588 = alloca i64
  store i64 0, i64* %3588
  %3589 = call i8* @llvm.stacksave()
  br label %while_cond666
while_cond666:
  %3590 = load i64, i64* %3588
  %3591 = load { i64, i8* }*, { i64, i8* }** %3494
  %3592 = call i64 @nyx_array_length({ i64, i8* }* %3591)
  %3593 = icmp slt i64 %3590, %3592
  br i1 %3593, label %while_body667, label %while_end668
while_body667:
  call void @llvm.stackrestore(i8* %3589)
  %3594 = load { i64, i8* }*, { i64, i8* }** %3494
  %3595 = load i64, i64* %3588
  %3596 = call i64 @nyx_array_get({ i64, i8* }* %3594, i64 %3595)
  %3597 = inttoptr i64 %3596 to %TestResult*
  %3598 = load %TestResult, %TestResult* %3597
  %3599 = alloca %TestResult
  store %TestResult %3598, %TestResult* %3599
  %3600 = getelementptr %TestResult, %TestResult* %3599, i32 0, i32 4
  %3601 = load i1, i1* %3600
  %3602 = xor i1 %3601, true
  br i1 %3602, label %then669, label %else670
then669:
  %3603 = load i64, i64* %3587
  %3604 = add i64 %3603, 1
  store i64 %3604, i64* %3587
  br label %merge671
else670:
  br label %merge671
merge671:
  %3605 = load i64, i64* %3588
  %3606 = add i64 %3605, 1
  store i64 %3606, i64* %3588
  br label %while_cond666
while_end668:
  %3607 = alloca i1
  store i1 true, i1* %3607
  %3608 = load i64, i64* %3500
  %3609 = icmp sgt i64 %3608, 0
  br i1 %3609, label %sc_or_end673, label %sc_or_rhs672
sc_or_rhs672:
  %3610 = load i64, i64* %3587
  %3611 = icmp sgt i64 %3610, 0
  store i1 %3611, i1* %3607
  br label %sc_or_end673
sc_or_end673:
  %3612 = load i1, i1* %3607
  br i1 %3612, label %then674, label %else675
then674:
  ret i64 1
else675:
  br label %merge676
merge676:
  ret i64 0
}

; Inicialización de variables globales (llamada automática vía ctor)
define void @__nyx_init_globals() {
entry:
  %3613 = sub i64 0, 9223372036854775808
  store i64 %3613, i64* @INT_MIN
  ret void
}

@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @__nyx_init_globals, i8* null }]

attributes #0 = { returns_twice }

